open Asm
open RegAlloc
open AddId

let stackset = ref S.empty (* すでにSaveされた変数の集合 (caml2html: emit_stackset) *)
let stackmap = ref [] (* Saveされた変数の、スタックにおける位置 (caml2html: emit_stackmap) *)
let save x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]
let locate x =
  let rec loc = function
    | [] -> []
    | y :: zs when x = y -> 0 :: List.map succ (loc zs)
    | y :: zs -> List.map succ (loc zs) in
  loc !stackmap
let offset x = 4 * List.hd (locate x)
let stacksize () = (List.length !stackmap + 1) * 4
let loaded_labels = ref M.empty

let pp_id_or_imm = function
  | V(x) -> x
  | C(i) -> string_of_int i

(* 関数呼び出しのために引数を並べ替える(register shuffling) (caml2html: emit_shuffle) *)
let rec shuffle sw xys =
  (* remove identical moves *)
  let _, xys = List.partition (fun (x, y) -> x = y) xys in
  (* find acyclic moves *)
  match List.partition (fun (_, y) -> List.mem_assoc y xys) xys with
  | [], [] -> []
  | (x, y) :: xys, [] -> (* no acyclic moves; resolve a cyclic move *)
      (y, sw) :: (x, y) :: shuffle sw (List.map
                                         (function
                                           | (y', z) when y = y' -> (sw, z)
                                           | yz -> yz)
                                         xys)
  | xys, acyc -> acyc @ shuffle sw xys

let content = ref []

let find x map = if M.mem x map then M.find x map else x

type dest = Tail | NonTail of Id.t (* 末尾かどうかを表すデータ型 (caml2html: emit_dest) *)
let rec g repl = function (* 命令列のアセンブリ生成 (caml2html: emit_g) *)
  | dest, Ans(exp, pos) -> g' repl pos (dest, exp)
  (* 既に定数レジスタにロードされたfloatの処理 *)
  | NonTail(w), Let((x, Type.Int), SetL(Id.L(y), _), Ans(LdDF(z, C(0), _), pos1), pos2) when x = z && M.mem y !loaded_labels ->
      content := !content @ [RiscV.FAdd(w, reg_fzero, M.find y !loaded_labels, pos2)]
  | Tail, Let((x, Type.Int), SetL(Id.L(y), _), Ans(LdDF(z, C(0), _), pos1), pos2) when x = z && M.mem y !loaded_labels ->
      content := !content @ [RiscV.FAdd(fregs.(0), reg_fzero, M.find y !loaded_labels, pos2); RiscV.Jalr(reg_zero, reg_ra, 0, pos2)]
  | dest, Let((x, Type.Int), SetL(Id.L(y), _), Let((x_, _), LdDF(z, C(0), id), e, pos1), pos2) when x = z && M.mem y !loaded_labels ->
      let yreg = M.find y !loaded_labels in
      if List.mem id !func_arg_id then content := !content @ [RiscV.FAdd(x_, reg_fzero, yreg, pos2)]
      else Format.eprintf "deleted fadd %s %s %s %d\n" x_ reg_fzero yreg pos2;
      g (M.add x_ yreg (M.remove x repl)) (dest, e)
  (* set(0)の処理 *)
  | dest, Let((x, Type.Int), Set(0, id), e, pos) ->
      if List.mem id !func_arg_id then content := !content @ [RiscV.Addi(x, reg_zero, 0, pos)]
      else Format.eprintf "deleted addi %s %s 0 %d\n" x reg_zero pos;
      g (M.add x reg_zero repl) (dest, e)
  | dest, Let((x, t), exp, e, pos) ->
      g' repl pos (NonTail(x), exp);
      g (M.remove x repl) (dest, e)
and g' repl pos = function (* 各命令のアセンブリ生成 (caml2html: emit_gprime) *)
  (* 末尾でなかったら計算結果をdestにセット (caml2html: emit_nontail) *)
  | NonTail(_), Nop(_) -> ()
  | NonTail(x), Set(i, _) ->
      if -65536 <= i && i <= 65535 then content := !content @ [RiscV.Addi(x, reg_zero, i, pos)] (* 即値をレジスタに入れる *)
      else
        content := !content @ [RiscV.Lui(x, i, pos); RiscV.Ori(x, reg_zero, i, pos)]
  | NonTail(x), SetL(Id.L(y), _) -> (* ラベルからレジスタに値を移す *)
      content := !content @ [RiscV.LuiLb(x, y, pos); RiscV.OriLb(x, reg_zero, y, pos)]
  | NonTail(x), Mov(y, _) -> if x <> y then content := !content @ [RiscV.Addi(x, find y repl, 0, pos)]
  | NonTail(x), Neg(y, _) -> content := !content @ [RiscV.Sub(x, reg_zero, find y repl, pos)] (* 符号反転 *)
  | NonTail(x), Add(y, V(z), _) -> content := !content @ [RiscV.Add(x, find y repl, find z repl, pos)]
  | NonTail(x), Add(y, C(z), _) -> content := !content @ [RiscV.Addi(x, find y repl, z, pos)]
  | NonTail(x), Sub(y, z, _) -> content := !content @ [RiscV.Sub(x, find y repl, find z repl, pos)]
  | NonTail(x), Mul(y, z, _) -> content := !content @ [RiscV.Mul(x, find y repl, find z repl, pos)]
  | NonTail(x), Div(y, z, _) -> content := !content @ [RiscV.Div(x, find y repl, find z repl, pos)]
  | NonTail(x), Ld(y, z', _) ->
      (match z' with
       | C(z) -> content := !content @ [RiscV.Lw(x, z, find y repl, pos)]
       | _ -> failwith "second arg of Ld is not int")
  | NonTail(_), St(x, y, z', _) ->
      (match z' with
       | C(z) -> content := !content @ [RiscV.Sw(find x repl, z, find y repl, pos)]
       | _ -> failwith "second arg of St is not int")
  | NonTail(x), FMovD(y, _) -> if x <> y then content := !content @ [RiscV.FAdd(x, reg_fzero, find y repl, pos)]
  | NonTail(x), FNegD(y, _) -> content := !content @ [RiscV.FSub(x, reg_fzero, find y repl, pos)] (* 符号反転 *)
  | NonTail(x), FAddD(y, z, _) -> content := !content @ [RiscV.FAdd(x, find y repl, find z repl, pos)]
  | NonTail(x), FSubD(y, z, _) -> content := !content @ [RiscV.FSub(x, find y repl, find z repl, pos)]
  | NonTail(x), FMulD(y, z, _) -> content := !content @ [RiscV.FMul(x, find y repl, find z repl, pos)]
  | NonTail(x), FDivD(y, z, _) -> content := !content @ [RiscV.FDiv(x, find y repl, find z repl, pos)]
  | NonTail(x), Sqrt(y, _) -> content := !content @ [RiscV.FSqrt(x, find y repl, pos)]
  | NonTail(x), LdDF(y, z', _) ->
      (match z' with
       | C(z) -> content := !content @ [RiscV.FLw(x, z, find y repl, pos)]
       | _ -> failwith "second arg of LdDF is not int")
  | NonTail(_), StDF(x, y, z', _) ->
      (match z' with
       | C(z) -> content := !content @ [RiscV.FSw(find x repl, z, find y repl, pos)]
       | _ -> failwith "second arg of StDF is not int")
  | NonTail(_), Comment(s, _) -> content := !content @ [RiscV.Comment(s, pos)]
  (* 退避の仮想命令の実装 (caml2html: emit_save) *)
  | NonTail(_), Save(x, y, _) when List.mem x allregs && not (S.mem y !stackset) ->
      save y; content := !content @ [RiscV.Sw(find x repl, - (offset y), reg_sp, pos)]
  | NonTail(_), Save(x, y, _) when List.mem x allfregs && not (S.mem y !stackset) ->
      save y; content := !content @ [RiscV.FSw(find x repl, - (offset y), reg_sp, pos)]
  | NonTail(_), Save(x, y, _) -> assert (S.mem y !stackset); ()
  (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y, _) when List.mem x allregs -> content := !content @ [RiscV.Lw(x, - (offset y), reg_sp, pos)]
  | NonTail(x), Restore(y, _) ->
      assert (List.mem x allfregs);
      content := !content @ [RiscV.FLw(x, - (offset y), reg_sp, pos)]
  (* 末尾だったら計算結果を第一レジスタにセットしてret (caml2html: emit_tailret) *)
  | Tail, (Nop _ | St _ | StDF _ | Comment _ | Save _ as exp) ->
      g' repl pos (NonTail(Id.gentmp Type.Unit), exp);
      content := !content @ [RiscV.Jalr(reg_zero, reg_ra, 0, pos)]
  | Tail, (Set _ | SetL _ | Mov _ | Neg _ | Add _ | Sub _ | Mul _ | Div _ | Ld _ as exp) ->
      g' repl pos (NonTail(regs.(0)), exp);
      content := !content @ [RiscV.Jalr(reg_zero, reg_ra, 0, pos)]
  | Tail, (FMovD _ | FNegD _ | FAddD _ | FSubD _ | FMulD _ | FDivD _ | Sqrt _ | LdDF _  as exp) ->
      g' repl pos (NonTail(fregs.(0)), exp);
      content := !content @ [RiscV.Jalr(reg_zero, reg_ra, 0, pos)]
  | Tail, (Restore(x, _) as exp) ->
      (match locate x with
      | [i] -> g' repl pos (NonTail(regs.(0)), exp)
      | [i; j] when i + 1 = j -> g' repl pos (NonTail(fregs.(0)), exp)
      | _ -> assert false);
      content := !content @ [RiscV.Jalr(reg_zero, reg_ra, 0, pos)]
  | Tail, IfEq(x, y, e1, e2, _) ->
      g'_tail_if x y e1 e2 "beq" repl pos
  | Tail, IfLE(x, y, e1, e2, _) ->
      g'_tail_if x y e1 e2 "ble" repl pos
  | Tail, IfGE(x, y, e1, e2, _) ->
      g'_tail_if x y e1 e2 "bge" repl pos
  | Tail, IfFEq(x, y, e1, e2, _) ->
      g'_tail_if x y e1 e2 "feq" repl pos
  | Tail, IfFLE(x, y, e1, e2, _) ->
      g'_tail_if x y e1 e2 "fle" repl pos
  | NonTail(z), IfEq(x, y, e1, e2, _) ->
      g'_non_tail_if (NonTail(z)) x y e1 e2 "beq" repl pos
  | NonTail(z), IfLE(x, y, e1, e2, _) ->
      g'_non_tail_if (NonTail(z)) x y e1 e2 "ble" repl pos
  | NonTail(z), IfGE(x, y, e1, e2, _) ->
      g'_non_tail_if (NonTail(z)) x y e1 e2 "bge" repl pos
  | NonTail(z), IfFEq(x, y, e1, e2, _) ->
      g'_non_tail_if (NonTail(z)) x y e1 e2 "feq" repl pos
  | NonTail(z), IfFLE(x, y, e1, e2, _) ->
      g'_non_tail_if (NonTail(z)) x y e1 e2 "fle" repl pos
  (* 関数呼び出しの仮想命令の実装 (caml2html: emit_call) *)
  | Tail, CallCls(x, ys, zs, _) -> (* 末尾呼び出し (caml2html: emit_tailcall) *)
      g'_args [(x, reg_cl)] ys zs repl pos;
      content := !content @ [RiscV.Lw(reg_sw, 0, reg_cl, pos); RiscV.Jalr(reg_zero, reg_sw, 0, pos)]
  | Tail, CallDir(Id.L(x), ys, zs, _) -> (* 末尾呼び出し *)
      g'_args [] ys zs repl pos; content := !content @ [RiscV.Jal(reg_zero, x, pos)]
  | NonTail(a), CallCls(x, ys, zs, _) ->
      g'_args [(x, reg_cl)] ys zs repl pos;
      let ss = stacksize () in
      content := !content @ [RiscV.Sw(reg_ra, 4 - ss, reg_sp, pos);
                             RiscV.Addi(reg_sp, reg_sp, -ss, pos);
                             RiscV.Lw(reg_sw, 0, reg_cl, pos);
                             RiscV.Jalr(reg_ra, reg_sw, 0, pos);
                             RiscV.Addi(reg_sp, reg_sp, ss, pos);
                             RiscV.Lw(reg_ra, 4 - ss, reg_sp, pos)];
      if List.mem a allregs && a <> regs.(0) then content := !content @ [RiscV.Addi(a, regs.(0), 0, pos)]
      else if List.mem a allfregs && a <> fregs.(0) then content := !content @ [RiscV.FAdd(a, reg_fzero, fregs.(0), pos)]
  | NonTail(a), CallDir(Id.L(x), ys, zs, _) ->
      g'_args [] ys zs repl pos;
      let ss = stacksize () in
      content := !content @ [RiscV.Sw(reg_ra, 4 - ss, reg_sp, pos);
                             RiscV.Addi(reg_sp, reg_sp, -ss, pos);
                             RiscV.Jal(reg_ra, x, pos);
                             RiscV.Addi(reg_sp, reg_sp, ss, pos);
                             RiscV.Lw(reg_ra, 4 - ss, reg_sp, pos)];
      if List.mem a allregs && a <> regs.(0) then content := !content @ [RiscV.Addi(a, regs.(0), 0, pos)]
      else if List.mem a allfregs && a <> fregs.(0) then content := !content @ [RiscV.FAdd(a, reg_fzero, fregs.(0), pos)]
and g'_tail_if x y e1 e2 b repl pos =
  let b_id = Id.genid b in
  content := !content @ [if b = "beq" then RiscV.Beq(find x repl, find y repl, b_id, pos)
                         else if b = "ble" then RiscV.Ble(find x repl, find y repl, b_id, pos)
                         else if b = "bge" then RiscV.Bge(find x repl, find y repl, b_id, pos)
                         else if b = "feq" then RiscV.Feq(find x repl, find y repl, b_id, pos)
                         else RiscV.Fle(find x repl, find y repl, b_id, pos)];
  let stackset_back = !stackset in
  g repl (Tail, e2);
  content := !content @ [RiscV.Label(b_id)];
  stackset := stackset_back;
  g repl (Tail, e1)
and g'_non_tail_if dest x y e1 e2 b repl pos =
  let b_cont = Id.genid (b ^ "_cont") in
  let b_id = Id.genid b in
  content := !content @ [if b = "beq" then RiscV.Beq(find x repl, find y repl, b_id, pos)
                         else if b = "ble" then RiscV.Ble(find x repl, find y repl, b_id, pos)
                         else if b = "bge" then RiscV.Bge(find x repl, find y repl, b_id, pos)
                         else if b = "feq" then RiscV.Feq(find x repl, find y repl, b_id, pos)
                         else RiscV.Fle(find x repl, find y repl, b_id, pos)];
  let stackset_back = !stackset in
  g repl (dest, e2);
  let stackset1 = !stackset in
  content := !content @ [RiscV.Jal(reg_zero, b_cont, pos); RiscV.Label(b_id)];
  stackset := stackset_back;
  g repl (dest, e1);
  content := !content @ [RiscV.Label(b_cont)];
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
and g'_args x_reg_cl ys zs repl pos =
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
  List.iter
    (fun (y, r) -> content := !content @ [RiscV.Addi(r, find y repl, 0, pos)])
    (shuffle reg_sw yrs);
  let (d, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      zs in
  List.iter
    (fun (z, fr) -> content := !content @ [RiscV.FAdd(fr, reg_fzero, find z repl, pos)])
    (shuffle reg_fsw zfrs)

let h { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  content := !content @ [RiscV.Label(x)];
  stackset := S.empty;
  stackmap := [];
  g M.empty (Tail, e)

let f (Prog(data, fundefs, e)) =
  (* Format.eprintf "func_arg_id : ";
  List.iter (Format.eprintf "%d ") !AddId.func_arg_id;
  Format.eprintf "\n"; *)
  let label_zero = ref "" in
  let cmp_dict = [(1.0, 1); (4.0, 2); (4.5, 3); (0.01, 4); (-0.2, 5); (-0.1, 6); (100000000.0, 7); (-0.5, 8); (150.0, 9); (-150.0, 10);
                  (0.5, 11); (-4.5, 12)] in (* lui/oriによりロードされる回数の多い順 *)
  let cmp (Id.L(_), d1, _) (Id.L(_), d2, _) =
    compare (try List.assoc d1 cmp_dict with Not_found -> 40) (try List.assoc d2 cmp_dict with Not_found -> 40) in
  let data = List.sort cmp data in
  List.iter
    (fun (Id.L(x), d, _) ->
      if d = 0.0 then label_zero := x)
    data;
  let data =
    if !label_zero = "" then
      (let x = Id.genid "l" in
       label_zero := x;
       (Id.L(x), 0.0, 0) :: data)
    else data in
  loaded_labels := M.add !label_zero reg_fzero !loaded_labels;
  let reg_for_label = S.elements (S.diff (S.diff (S.of_list allfregs) (S.singleton reg_fsw)) !used_regs) in
  Format.eprintf "reg_for_label : ";
  List.iter (Format.eprintf "%s ") reg_for_label;
  Format.eprintf "\n";
  let rec ld_label_noprint reg_for_label data =
    match reg_for_label, data with
    | [], [] -> ()
    | [], hd :: tl | hd :: tl, [] -> ()
    | reg :: tl1, label :: tl2 -> if label <> !label_zero then
                                    (loaded_labels := M.add label reg !loaded_labels;
                                     ld_label_noprint tl1 tl2)
                                  else ld_label_noprint reg_for_label tl2 in
  ld_label_noprint reg_for_label (List.map (fun (Id.L(x), _, _) -> x) data);
  List.iter h fundefs;
  content := !content @ [RiscV.Label("min_caml_start");
                         RiscV.Addi(reg_sp, reg_sp, -4, 0); RiscV.Addi(reg_four, reg_zero, 4, 0);
                         RiscV.Addi(reg_hp, reg_zero, ConstFoldGlobals.addr_init, 0);
                         RiscV.LuiLb(regs.(0), !label_zero, 0); RiscV.OriLb(regs.(0), reg_zero, !label_zero, 0);
                         RiscV.FLw(reg_fzero, 0, regs.(0), 0)];
  let rec ld_label reg_for_label data =
    match reg_for_label, data with
    | [], [] -> ()
    | [], hd :: tl | hd :: tl, [] -> ()
    | reg :: tl1, label :: tl2 -> if label <> !label_zero then
                                    (content := !content @ [RiscV.LuiLb(regs.(0), label, 0); RiscV.OriLb(regs.(0), reg_zero, label, 0);
                                                            RiscV.FLw(reg, 0, regs.(0), 0)];
                                     ld_label tl1 tl2)
                                  else ld_label reg_for_label tl2 in
  ld_label reg_for_label (List.map (fun (Id.L(x), _, _) -> x) data);
  stackset := S.empty;
  stackmap := [];
  g M.empty (NonTail(regs.(0)), e);
  (data, !content)
