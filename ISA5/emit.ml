open Asm

external gethi : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo"

let stackset = ref S.empty (* すでにSaveされた変数の集合 (caml2html: emit_stackset) *)
let stackmap = ref [] (* Saveされた変数の、スタックにおける位置 (caml2html: emit_stackmap) *)
let save x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]
let savef x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    (let pad =
      if List.length !stackmap mod 2 = 0 then [] else [Id.gentmp Type.Int] in
    stackmap := !stackmap @ pad @ [x; x])
let locate x =
  let rec loc = function
    | [] -> []
    | y :: zs when x = y -> 0 :: List.map succ (loc zs)
    | y :: zs -> List.map succ (loc zs) in
  loc !stackmap
let offset x = 4 * List.hd (locate x)
let stacksize () = align ((List.length !stackmap + 1) * 4)

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

type dest = Tail | NonTail of Id.t (* 末尾かどうかを表すデータ型 (caml2html: emit_dest) *)
let rec g oc = function (* 命令列のアセンブリ生成 (caml2html: emit_g) *) (* ここをISA5に対応 PowerPCに寄せるかも *)
  | dest, Ans(exp, pos) -> g' oc pos (dest, exp)
  | dest, Let((x, t), exp, e, pos) ->
      g' oc pos (NonTail(x), exp);
      g oc (dest, e)
and g' oc pos = function (* 各命令のアセンブリ生成 (caml2html: emit_gprime) *)
  (* 末尾でなかったら計算結果をdestにセット (caml2html: emit_nontail) *)
  | NonTail(_), Nop -> ()
  | NonTail(x), Set(i) -> Printf.fprintf oc "\tlui\t\t%s, %d\t# %d\n" x i pos (* 即値を変数に入れる *)
  | NonTail(x), SetL(Id.L(y)) -> Printf.fprintf oc "\taddi\t%s, %s, 0\t# %d\n" x y pos
                                 (* トップレベル関数やグローバル配列のラベルから変数に値を移す *)
  | NonTail(x), Mov(y) ->
      if x <> y then Printf.fprintf oc "\taddi\t%s, %s, 0\t# %d\n" x y pos (* 変数から変数に値を移す *)
  | NonTail(x), Neg(y) -> Printf.fprintf oc "\tsub\t\t%s, %s, %s\t# %d\n" x reg_zero y pos (* 符号反転  *)
  | NonTail(x), Add(y, V(z)) -> Printf.fprintf oc "\tadd\t\t%s, %s, %s\t# %d\n" x y z pos
  | NonTail(x), Add(y, C(z)) -> Printf.fprintf oc "\taddi\t%s, %s, %d\t# %d\n" x y z pos
  | NonTail(x), Sub(y, z) -> Printf.fprintf oc "\tsub\t\t%s, %s, %s\t# %d\n" x y z pos
  | NonTail(x), Mul(y, z') -> Printf.fprintf oc "\tmul\t\t%s, %s, %s\t# %d\n" x y (pp_id_or_imm z') pos
  | NonTail(x), Div(y, z) -> Printf.fprintf oc "\tdiv\t\t%s, %s, %s\t# %d\n" x y z pos
  | NonTail(x), Ld(y, z') -> Printf.fprintf oc "\tlw\t\t%s, %s(%s)\t# %d\n" x (pp_id_or_imm z') y pos
  | NonTail(_), St(x, y, z') -> Printf.fprintf oc "\tsw\t\t%s, %s(%s)\t# %d\n" x (pp_id_or_imm z') y pos
  | NonTail(x), FMovD(y) ->
      if x <> y then (Printf.fprintf oc "\tfsub\t%s, %s, %s\t# %d\n" x x x pos;
                      Printf.fprintf oc "\tfadd\t%s, %s, %s\t# %d\n" x x y pos; (* 変数から変数に値を移す *)
                      (*Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg y) (co_freg x)*))
  | NonTail(x), FNegD(y) ->
      Printf.fprintf oc "\tsub\t%s, %s, %s\t# %d\n" x x x pos;
      Printf.fprintf oc "\tsub\t%s, %s, %s\t# %d\n" x x y pos (* 符号反転 *)
      (*if x <> y then Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg y) (co_freg x)*)
  | NonTail(x), FAddD(y, z) -> Printf.fprintf oc "\tfadd\t%s, %s, %s\t# %d\n" x y z pos
  | NonTail(x), FSubD(y, z) -> Printf.fprintf oc "\tfsub\t%s, %s, %s\t# %d\n" x y z pos
  | NonTail(x), FMulD(y, z) -> Printf.fprintf oc "\tfmul\t%s, %s, %s\t# %d\n" x y z pos
  | NonTail(x), FDivD(y, z) -> Printf.fprintf oc "\tfdiv\t%s, %s, %s\t# %d\n" x y z pos
  | NonTail(x), LdDF(y, z') -> Printf.fprintf oc "\tflw\t\t%s, %s(%s)\t# %d\n" x (pp_id_or_imm z') y pos
  | NonTail(_), StDF(x, y, z') -> Printf.fprintf oc "\tfsw\t\t%s, %s(%s)\t# %d\n" x (pp_id_or_imm z') y pos
  | NonTail(_), Comment(s) -> Printf.fprintf oc "\t# %s\t# %d\n" s pos
  (* 退避の仮想命令の実装 (caml2html: emit_save) *) (* ？ *)
  | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem y !stackset) ->
      save y;
      Printf.fprintf oc "\tsw\t\t%s, %d(%s)\t# %d\n" x (offset y) reg_sp pos
  | NonTail(_), Save(x, y) when List.mem x allfregs && not (S.mem y !stackset) ->
      savef y;
      Printf.fprintf oc "\tfsw\t\t%s, %d(%s)\t# %d\n" x (offset y) reg_sp pos
  | NonTail(_), Save(x, y) -> assert (S.mem y !stackset); ()
  (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
      Printf.fprintf oc "\tlw\t\t%s, %d(%s)\t# %d\n" x (offset y) reg_sp pos
  | NonTail(x), Restore(y) ->
      assert (List.mem x allfregs);
      Printf.fprintf oc "\tflw\t\t%s, %d(%s)\t# %d\n" x (offset y) reg_sp pos
  (* 末尾だったら計算結果を第一レジスタにセットしてret (caml2html: emit_tailret) *)
  | Tail, (Nop | St _ | StDF _ | Comment _ | Save _ as exp) ->
      g' oc pos (NonTail(Id.gentmp Type.Unit), exp);
      Printf.fprintf oc "\tjalr\t%s, %s, 0\n" reg_zero reg_ra;
  | Tail, (Set _ | SetL _ | Mov _ | Neg _ | Add _ | Sub _ | Mul _ | Div _ | Ld _ as exp) ->
      g' oc pos (NonTail(regs.(0)), exp);
      Printf.fprintf oc "\tjalr\t%s, %s, 0\n" reg_zero reg_ra;
  | Tail, (FMovD _ | FNegD _ | FAddD _ | FSubD _ | FMulD _ | FDivD _ | LdDF _  as exp) ->
      g' oc pos (NonTail(fregs.(0)), exp);
      Printf.fprintf oc "\tjalr\t%s, %s, 0\n" reg_zero reg_ra;
  | Tail, (Restore(x) as exp) ->
      (match locate x with
      | [i] -> g' oc pos (NonTail(regs.(0)), exp)
      | [i; j] when i + 1 = j -> g' oc pos (NonTail(fregs.(0)), exp)
      | _ -> assert false);
      Printf.fprintf oc "\tjalr\t%s, %s, 0\n" reg_zero reg_ra;
  | Tail, IfEq(x, y, e1, e2) ->
      (*Printf.fprintf oc "\tcmpl\t%s, %s, \n" (pp_id_or_imm y') x;
        g'_tail_if oc e1 e2 "je" "jne"*)
      g'_tail_if oc x (V(y)) e1 e2 "beq" pos
  | Tail, IfLE(x, y, e1, e2) ->
      (*Printf.fprintf oc "\tcmpl\t%s, %s\n" (pp_id_or_imm y') x;
      g'_tail_if oc e1 e2 "jle" "jg"*)
      g'_tail_if oc x (V(y)) e1 e2 "ble" pos
  | Tail, IfGE(x, y, e1, e2) ->
      (*Printf.fprintf oc "\tcmpl\t%s, %s\n" (pp_id_or_imm y') x;
      g'_tail_if oc e1 e2 "jge" "jl"*)
      g'_tail_if oc x (V(y)) e1 e2 "bge" pos
  | Tail, IfFEq(x, y, e1, e2) ->
      (*Printf.fprintf oc "\tcomisd\t%s, %s\n" y x;
      g'_tail_if oc e1 e2 "je" "jne"*)
      g'_tail_if oc x (V(y)) e1 e2 "feq" pos
  | Tail, IfFLE(x, y, e1, e2) ->
      (*Printf.fprintf oc "\tcomisd\t%s, %s\n" y x;
      g'_tail_if oc e1 e2 "jbe" "ja"*)
      g'_tail_if oc x (V(y)) e1 e2 "fle" pos
  | NonTail(z), IfEq(x, y, e1, e2) ->
      (*Printf.fprintf oc "\tcmpl\t%s, %s\n" (pp_id_or_imm y') x;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "je" "jne"*)
      g'_non_tail_if oc (NonTail(z)) x (V(y)) e1 e2 "beq" pos
  | NonTail(z), IfLE(x, y, e1, e2) ->
      (*Printf.fprintf oc "\tcmpl\t%s, %s\n" (pp_id_or_imm y') x;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "jle" "jg"*)
      g'_non_tail_if oc (NonTail(z)) x (V(y)) e1 e2 "ble" pos
  | NonTail(z), IfGE(x, y, e1, e2) ->
      (*Printf.fprintf oc "\tcmpl\t%s, %s\n" (pp_id_or_imm y') x;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "jge" "jl"*)
      g'_non_tail_if oc (NonTail(z)) x (V(y)) e1 e2 "bge" pos
  | NonTail(z), IfFEq(x, y, e1, e2) ->
      (*Printf.fprintf oc "\tcomisd\t%s, %s\n" y x;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "je" "jne"*)
      g'_non_tail_if oc (NonTail(z)) x (V(y)) e1 e2 "feq" pos
  | NonTail(z), IfFLE(x, y, e1, e2) ->
      (*Printf.fprintf oc "\tcomisd\t%s, %s\n" y x;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "jbe" "ja"*)
      g'_non_tail_if oc (NonTail(z)) x (V(y)) e1 e2 "fle" pos
  (* 関数呼び出しの仮想命令の実装 (caml2html: emit_call) *)
  | Tail, CallCls(x, ys, zs) -> (* 末尾呼び出し (caml2html: emit_tailcall) *)
      g'_args oc [(x, reg_cl)] ys zs;
      Printf.fprintf oc "\tlw\t\t%s, 0(%s)\t# %d\n" reg_sw reg_cl pos;
      Printf.fprintf oc "\tjalr\t%s, %s, 0\t# %d\n" reg_zero reg_sw pos;
  | Tail, CallDir(Id.L(x), ys, zs) -> (* 末尾呼び出し *)
      g'_args oc [] ys zs;
      Printf.fprintf oc "\tjal\t%s, %s\t# %d\n" reg_zero x pos;
  | NonTail(a), CallCls(x, ys, zs) ->
      g'_args oc [(x, reg_cl)] ys zs;
      let ss = stacksize () in
      (*Printf.fprintf oc "\tst\t%s, [%s + %d]\n" reg_ra reg_sp (ss - 4);
      Printf.fprintf oc "\tld\t[%s + 0], %s\n" reg_cl reg_sw;
      Printf.fprintf oc "\tcall\t%s\n" reg_sw;
      Printf.fprintf oc "\tadd\t%s, %d, %s\t! delay slot\n" reg_sp ss reg_sp;
      Printf.fprintf oc "\tsub\t%s, %d, %s\n" reg_sp ss reg_sp;
      Printf.fprintf oc "\tld\t[%s + %d], %s\n" reg_sp (ss - 4) reg_ra;
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmov\t%s, %s\n" regs.(0) a
      else if List.mem a allfregs && a <> fregs.(0) then
        (Printf.fprintf oc "\tfmovs\t%s, %s\n" fregs.(0) a;
         Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg fregs.(0)) (co_freg a))*)
      Printf.fprintf oc "\tsw\t\t%s, %d(%s)\n" reg_ra (ss - 4) reg_sp;
      Printf.fprintf oc "\tlw\t\t%s, 0(%s)\n" reg_sw reg_cl;
      Printf.fprintf oc "\tjalr\tx0, %s, 0\n" reg_sw;
      Printf.fprintf oc "\taddi\t%s, %s, %d\t\n" reg_sp reg_sp ss;
      Printf.fprintf oc "\tsub\t\t%s, x0, %s\t# %d\n" reg_sp reg_sp pos;
      Printf.fprintf oc "\taddi\t%s, %s, %d\t# %d\n" reg_sp reg_sp ss pos;
      Printf.fprintf oc "\tsub\t\t%s, x0, %s\t# %d\n" reg_sp reg_sp pos;
      Printf.fprintf oc "\tlw\t\t%s, %d(%s)\n" reg_ra (ss - 4) reg_sp;
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\taddi\t%s, %s, 0\t# %d\n" a regs.(0) pos
      else if List.mem a allfregs && a <> fregs.(0) then
        (Printf.fprintf oc "\taddi\t%s, %s, 0\t# %d\n" a fregs.(0) pos; (* fなのでaddiは無理 *)
        (*Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg fregs.(0)) (co_freg a)*))
  | NonTail(a), CallDir(Id.L(x), ys, zs) ->
      g'_args oc [] ys zs;
      let ss = stacksize () in
      (*Printf.fprintf oc "\tst\t%s, [%s + %d]\n" reg_ra reg_sp (ss - 4);
      Printf.fprintf oc "\tcall\t%s\n" x;
      Printf.fprintf oc "\tadd\t%s, %d, %s\t! delay slot\n" reg_sp ss reg_sp;
      Printf.fprintf oc "\tsub\t%s, %d, %s\n" reg_sp ss reg_sp;
      Printf.fprintf oc "\tld\t[%s + %d], %s\n" reg_sp (ss - 4) reg_ra;
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmov\t%s, %s\n" regs.(0) a
      else if List.mem a allfregs && a <> fregs.(0) then
        (Printf.fprintf oc "\tfmovs\t%s, %s\n" fregs.(0) a;
         Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg fregs.(0)) (co_freg a))*)
      Printf.fprintf oc "\tsw\t\t%s, %d(%s)\n" reg_ra (ss - 4) reg_sp;
      Printf.fprintf oc "\tjalr\tx0, %s, 0\n" x;
      Printf.fprintf oc "\taddi\t%s, %s, %d\t\n" reg_sp reg_sp ss;
      Printf.fprintf oc "\tsub\t\t%s, x0, %s\t# %d\n" reg_sp reg_sp pos;
      Printf.fprintf oc "\taddi\t%s, %s, %d\t# %d\n" reg_sp reg_sp ss pos;
      Printf.fprintf oc "\tsub\t\t%s, x0, %s\t# %d\n" reg_sp reg_sp pos;
      Printf.fprintf oc "\tlw\t\t%s, %d(%s)\n" reg_ra (ss - 4) reg_sp;
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\taddi\t%s, %s, 0\t# %d\n" a regs.(0) pos
      else if List.mem a allfregs && a <> fregs.(0) then
        (Printf.fprintf oc "\taddi\t%s, %s, 0\t# %d\n" a fregs.(0) pos; (* fなのでaddiは無理 *)
        (*Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg fregs.(0)) (co_freg a)*))
and g'_tail_if oc x y e1 e2 b pos =
  (*let b_else = Id.genid (b ^ "_else") in
  Printf.fprintf oc "\t%s\t%s\n" bn b_else;
  let stackset_back = !stackset in
  g oc (Tail, e1);
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (Tail, e2)*)
  let b_id = Id.genid b in
  Printf.fprintf oc "\t%s\t\t%s, %s, %s\t# %d\n" b x (pp_id_or_imm y) b_id pos;
  let stackset_back = !stackset in
  g oc (Tail, e2);
  Printf.fprintf oc "%s:\n" b_id;
  stackset := stackset_back;
  g oc (Tail, e1)
and g'_non_tail_if oc dest x y e1 e2 b pos =
  (*let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in
  Printf.fprintf oc "\t%s\t%s\n" bn b_else;
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  Printf.fprintf oc "\tb\t%s\n" b_cont;
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (dest, e2);
  Printf.fprintf oc "%s:\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2*)
  let b_id = Id.genid b in
  let b_cont = Id.genid (b ^ "_cont") in
  Printf.fprintf oc "\t%s\t\t%s, %s, %s\t# %d\n" b x (pp_id_or_imm y) b_id pos;
  let stackset_back = !stackset in
  g oc (dest, e2);
  let stackset1 = !stackset in
  Printf.fprintf oc "\tjal\t\t%s, %s\t# %d\n" reg_zero b_cont pos;
  Printf.fprintf oc "%s:\n" b_id;
  stackset := stackset_back;
  g oc (dest, e1);
  Printf.fprintf oc "%s:\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
and g'_args oc x_reg_cl ys zs =
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
  List.iter
    (fun (y, r) -> Printf.fprintf oc "\taddi\t%s, %s, 0\n" r y)
    (shuffle reg_sw yrs);
  let (d, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      zs in
  List.iter
    (fun (z, fr) -> Printf.fprintf oc "\taddi\t%s, %s, 0\n" fr z;
    (*Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg z) (co_freg fr)*)) (* fなのでaddiは無理 *)
    (shuffle reg_fsw zfrs)

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e)

let f oc (Prog(data, fundefs, e)) =
  Format.eprintf "generating assembly...@.";
  (*Printf.fprintf oc ".section\t\".rodata\"\n";
  Printf.fprintf oc ".align\t8\n";*)
  (*Printf.fprintf oc "\tjalr x0, min_caml_start, 0\n";*)
  List.iter
    (fun (Id.L(x), d) ->
      Printf.fprintf oc "%s:\t! %f\n" x d;
      Printf.fprintf oc "\t.long\t0x%lx\n" (gethi d);
      Printf.fprintf oc "\t.long\t0x%lx\n" (getlo d))
    data;
  (*Printf.fprintf oc ".section\t\".text\"\n";*)
  List.iter (fun fundef -> h oc fundef) fundefs;
  (*Printf.fprintf oc ".globl\tmin_caml_start\n";*)
  Printf.fprintf oc "min_caml_start:\n";
  Printf.fprintf oc "\taddi\t%s, %s, -112\n" reg_sp reg_sp;(*Printf.fprintf oc "\tsave\tsp, -112, sp\n";*) (* from gcc; why 112? *)
  stackset := S.empty;
  stackmap := [];
  g oc (NonTail(regs.(0)), e);
  Printf.fprintf oc "\taddi\t%s, %s, 112\n" reg_sp reg_sp;
  Printf.fprintf oc "\tjalr\t%s, %s, 0\n" reg_zero reg_ra
  (*Printf.fprintf oc "\tret\n";
    Printf.fprintf oc "\trestore\n"*)
