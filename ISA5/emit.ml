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
let stacksize () = align (List.length !stackmap * 4)

(*let pp_id_or_imm = function
  | V(x) -> x
  | C(i) -> "$" ^ string_of_int i*)

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
  | dest, Ans(exp) -> g' oc (dest, exp)
  | dest, Let((x, t), exp, e) ->
      g' oc (NonTail(x), exp);
      g oc (dest, e)
and g' oc = function (* 各命令のアセンブリ生成 (caml2html: emit_gprime) *)
  (* 末尾でなかったら計算結果をdestにセット (caml2html: emit_nontail) *)
  | NonTail(_), Nop -> ()
  | NonTail(x), Set(i) -> Printf.fprintf oc "\tli\t$%s, %d\n" x i (* 即値を変数に入れる liとか使っていいのか…？ *)
  | NonTail(x), SetL(Id.L(y)) -> Printf.fprintf oc "\tmv\t$%s, %s\n" x y
                                 (* トップレベル関数やグローバル配列のラベルから変数に値を移す よく分からない mv使ってよい？ *)
  | NonTail(x), Mov(y) ->
      if x <> y then Printf.fprintf oc "\tmv\t%s, %s\n" x y (* 変数から変数に値を移す mv使ってよい？ *)
  | NonTail(x), Neg(y) ->
      if x <> y then Printf.fprintf oc "\tmovl\t%s, %s\n" y x;
      Printf.fprintf oc "\tnegl\t%s\n" x (* 符号反転 どう実装する？ *)
  | NonTail(x), Add(y, V(z)) -> Printf.fprintf oc "\tadd\t%s, %s, %s\n" x y z
  | NonTail(x), Add(y, C(z)) -> Printf.fprintf oc "\taddi\t%s, %s, %d\n" x y z
  | NonTail(x), Sub(y, z') -> (Printf.fprintf oc "\tsub\t%s, %s, %s\n" x y z'
  | NonTail(x), Mul(y, z') -> Printf.fprintf oc "\tmul\t%s, %s, %s\n" x y z'
  | NonTail(x), Div(y, z') -> (Printf.fprintf oc "\tdiv\t%s, %s, %s\n" x y z'
  | NonTail(x), Ld(y, i) -> Printf.fprintf oc "\tlw\t%s, %d(%s)\n" x i y
  | NonTail(_), St(x, y, i) -> Printf.fprintf oc "\tsw\t%s, %d(%s)\n" x i y
  | NonTail(x), FMovD(y) ->
      if x <> y then Printf.fprintf oc "\tmv\t%s, %s\n" x y (* 変数から変数に値を移す mv使ってよい？ *)
  | NonTail(x), FNegD(y) ->
      if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s\n" y x;
      Printf.fprintf oc "\txorpd\tmin_caml_fnegd, %s\n" x (* 符号反転 どう実装する？ *)
  | NonTail(x), FAddD(y, z) -> Printf.fprintf oc "\tfadd\t%s, %s, %s\n" x y z
  | NonTail(x), FSubD(y, z) -> Printf.fprintf oc "\tfsub\t%s, %s, %s\n" x y z
  | NonTail(x), FMulD(y, z) -> Printf.fprintf oc "\tfmul\t%s, %s, %s\n" x y z
  | NonTail(x), FDivD(y, z) -> Printf.fprintf oc "\tfdiv\t%s, %s, %s\n" x y z
  | NonTail(x), LdDF(y, i) -> Printf.fprintf oc "\tflw\t%s, %d(%s)\n" x i y
  | NonTail(_), StDF(x, y, i) -> Printf.fprintf oc "\tfsw\t%s, %d(%s)\n" x i y
  | NonTail(_), Comment(s) -> Printf.fprintf oc "\t# %s\n" s
  (* 退避の仮想命令の実装 (caml2html: emit_save) *) (* ？ *)
  | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem y !stackset) ->
      save y;
      Printf.fprintf oc "\tsw\t%s, %d(%s)\n" x (offset y) reg_sp
  | NonTail(_), Save(x, y) when List.mem x allfregs && not (S.mem y !stackset) ->
      savef y;
      Printf.fprintf oc "\tfsw\t%s, %d(%s)\n" x (offset y) reg_sp
  | NonTail(_), Save(x, y) -> assert (S.mem y !stackset); ()
  (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
      Printf.fprintf oc "\tlw\t%s, %d(%s)\n" x (offset y) reg_sp
  | NonTail(x), Restore(y) ->
      assert (List.mem x allfregs);
      Printf.fprintf oc "\tflw\t%s, %d(%s)\n" x (offset y) reg_sp
  (* 末尾だったら計算結果を第一レジスタにセットしてret (caml2html: emit_tailret) *)
  | Tail, (Nop | St _ | StDF _ | Comment _ | Save _ as exp) ->
      g' oc (NonTail(Id.gentmp Type.Unit), exp);
      Printf.fprintf oc "\tjalr\tx0, x1, 0\n";
  | Tail, (Set _ | SetL _ | Mov _ | Neg _ | Add _ | Sub _ | Ld _ as exp) ->
      g' oc (NonTail(regs.(0)), exp);
      Printf.fprintf oc "\tjalr\tx0, x1, 0\n";
  | Tail, (FMovD _ | FNegD _ | FAddD _ | FSubD _ | FMulD _ | FDivD _ | LdDF _  as exp) ->
      g' oc (NonTail(fregs.(0)), exp);
      Printf.fprintf oc "\tjalr\tx0, x1, 0\n";
  | Tail, (Restore(x) as exp) ->
      (match locate x with
      | [i] -> g' oc (NonTail(regs.(0)), exp)
      | [i; j] when i + 1 = j -> g' oc (NonTail(fregs.(0)), exp)
      | _ -> assert false);
      Printf.fprintf oc "\tjalr\tx0, x1, 0\n";
  | Tail, IfEq(x, y', e1, e2) ->
      (*Printf.fprintf oc "\tcmpl\t%s, %s, \n" (pp_id_or_imm y') x;
        g'_tail_if oc e1 e2 "je" "jne"*)
      g'_tail_if oc x y' e1 e2 "beq"
  | Tail, IfLE(x, y', e1, e2) ->
      (*Printf.fprintf oc "\tcmpl\t%s, %s\n" (pp_id_or_imm y') x;
      g'_tail_if oc e1 e2 "jle" "jg"*)
      g'_tail_if oc x y' e1 e2 "blt"
  | Tail, IfGE(x, y', e1, e2) ->
      (*Printf.fprintf oc "\tcmpl\t%s, %s\n" (pp_id_or_imm y') x;
      g'_tail_if oc e1 e2 "jge" "jl"*)
      g'_tail_if oc x y' e1 e2 "bge"
  | Tail, IfFEq(x, y, e1, e2) ->
      (*Printf.fprintf oc "\tcomisd\t%s, %s\n" y x;
      g'_tail_if oc e1 e2 "je" "jne"*)
      g'_tail_if oc x y' e1 e2 "feq"
  | Tail, IfFLE(x, y, e1, e2) ->
      (*Printf.fprintf oc "\tcomisd\t%s, %s\n" y x;
      g'_tail_if oc e1 e2 "jbe" "ja"*)
      g'_tail_if oc x y' e1 e2 "flt"
  | NonTail(z), IfEq(x, y', e1, e2) ->
      (*Printf.fprintf oc "\tcmpl\t%s, %s\n" (pp_id_or_imm y') x;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "je" "jne"*)
      g'_non_tail_if oc (NonTail(z)) x y' e1 e2 "beq"
  | NonTail(z), IfLE(x, y', e1, e2) ->
      (*Printf.fprintf oc "\tcmpl\t%s, %s\n" (pp_id_or_imm y') x;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "jle" "jg"*)
      g'_non_tail_if oc (NonTail(z)) x y' e1 e2 "blt"
  | NonTail(z), IfGE(x, y', e1, e2) ->
      (*Printf.fprintf oc "\tcmpl\t%s, %s\n" (pp_id_or_imm y') x;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "jge" "jl"*)
      g'_non_tail_if oc (NonTail(z)) x y' e1 e2 "bge"
  | NonTail(z), IfFEq(x, y, e1, e2) ->
      (*Printf.fprintf oc "\tcomisd\t%s, %s\n" y x;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "je" "jne"*)
      g'_non_tail_if oc (NonTail(z)) x y' e1 e2 "feq"
  | NonTail(z), IfFLE(x, y, e1, e2) ->
      (*Printf.fprintf oc "\tcomisd\t%s, %s\n" y x;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "jbe" "ja"*)
      g'_non_tail_if oc (NonTail(z)) x y' e1 e2 "flt"
  (* 関数呼び出しの仮想命令の実装 (caml2html: emit_call) *)
  | Tail, CallCls(x, ys, zs) -> (* 末尾呼び出し (caml2html: emit_tailcall) *)
      g'_args oc [(x, reg_cl)] ys zs;
      Printf.fprintf oc "\tjmp\t*(%s)\n" reg_cl;
  | Tail, CallDir(Id.L(x), ys, zs) -> (* 末尾呼び出し *)
      g'_args oc [] ys zs;
      Printf.fprintf oc "\tjmp\t%s\n" x;
  | NonTail(a), CallCls(x, ys, zs) ->
      g'_args oc [(x, reg_cl)] ys zs;
      let ss = stacksize () in
      if ss > 0 then Printf.fprintf oc "\taddl\t$%d, %s\n" ss reg_sp;
      Printf.fprintf oc "\tcall\t*(%s)\n" reg_cl;
      if ss > 0 then Printf.fprintf oc "\tsubl\t$%d, %s\n" ss reg_sp;
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmovl\t%s, %s\n" regs.(0) a
      else if List.mem a allfregs && a <> fregs.(0) then
        Printf.fprintf oc "\tmovsd\t%s, %s\n" fregs.(0) a
  | NonTail(a), CallDir(Id.L(x), ys, zs) ->
      g'_args oc [] ys zs;
      let ss = stacksize () in
      if ss > 0 then Printf.fprintf oc "\taddl\t$%d, %s\n" ss reg_sp;
      Printf.fprintf oc "\tcall\t%s\n" x;
      if ss > 0 then Printf.fprintf oc "\tsubl\t$%d, %s\n" ss reg_sp;
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmovl\t%s, %s\n" regs.(0) a
      else if List.mem a allfregs && a <> fregs.(0) then
        Printf.fprintf oc "\tmovsd\t%s, %s\n" fregs.(0) a
and g'_tail_if oc x y e1 e2 b =
  (*let b_else = Id.genid (b ^ "_else") in
  Printf.fprintf oc "\t%s\t%s\n" bn b_else;
  let stackset_back = !stackset in
  g oc (Tail, e1);
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (Tail, e2)*)
  let b_id = Id.genid b in
  Printf.fprintf oc "\t%s\t%s, %s, %s\n" b x y b_id;
  let stackset_back = !stackset in
  g oc (Tail, e2);
  Printf.fprintf oc "%s:\n" b_id;
  stackset := stackset_back;
  g oc (Tail, e1)
and g'_non_tail_if oc dest x y e1 e2 b =
  (*let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in
  Printf.fprintf oc "\t%s\t%s\n" bn b_else;
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  Printf.fprintf oc "\tjmp\t%s\n" b_cont;
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (dest, e2);
  Printf.fprintf oc "%s:\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2*)
  let b_id = Id.genid b in
  let b_cont = Id.genid (b ^ "_cont") in
  Printf.fprintf oc "\t%s\t%s, %s, %s\n" b x y b_id;
  let stackset_back = !stackset in
  g oc (dest, e2);
  let stackset1 = !stackset in
  Printf.fprintf oc "\tjal\tx0, %s\n" b_cont;
  Printf.fprintf oc "%s:\n" b_id;
  stackset := stackset_back;
  g oc (dest, e1);
  Printf.fprintf oc "%s:\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
and g'_args oc x_reg_cl ys zs =
  assert (List.length ys <= Array.length regs - List.length x_reg_cl);
  assert (List.length zs <= Array.length fregs);
  let sw = Printf.sprintf "%d(%s)" (stacksize ()) reg_sp in
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
  List.iter
    (fun (y, r) -> Printf.fprintf oc "\tmovl\t%s, %s\n" y r)
    (shuffle sw yrs);
  let (d, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      zs in
  List.iter
    (fun (z, fr) -> Printf.fprintf oc "\tmovsd\t%s, %s\n" z fr)
    (shuffle sw zfrs)

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e)

let f oc (Prog(data, fundefs, e)) =
  Format.eprintf "generating assembly...@.";
  Printf.fprintf oc ".data\n";
  Printf.fprintf oc ".balign\t8\n";
  List.iter
    (fun (Id.L(x), d) ->
      Printf.fprintf oc "%s:\t# %f\n" x d;
      Printf.fprintf oc "\t.long\t0x%lx\n" (gethi d);
      Printf.fprintf oc "\t.long\t0x%lx\n" (getlo d))
    data;
  Printf.fprintf oc ".text\n";
  List.iter (fun fundef -> h oc fundef) fundefs;
  Printf.fprintf oc ".globl\tmin_caml_start\n";
  Printf.fprintf oc "min_caml_start:\n";
  Printf.fprintf oc ".globl\t_min_caml_start\n";
  Printf.fprintf oc "_min_caml_start: # for cygwin\n";
  Printf.fprintf oc "\tpushl\t%%eax\n";
  Printf.fprintf oc "\tpushl\t%%ebx\n";
  Printf.fprintf oc "\tpushl\t%%ecx\n";
  Printf.fprintf oc "\tpushl\t%%edx\n";
  Printf.fprintf oc "\tpushl\t%%esi\n";
  Printf.fprintf oc "\tpushl\t%%edi\n";
  Printf.fprintf oc "\tpushl\t%%ebp\n";
  Printf.fprintf oc "\tmovl\t32(%%esp),%s\n" reg_sp;
  Printf.fprintf oc "\tmovl\t36(%%esp),%s\n" regs.(0);
  Printf.fprintf oc "\tmovl\t%s,%s\n" regs.(0) reg_hp;
  stackset := S.empty;
  stackmap := [];
  g oc (NonTail(regs.(0)), e);
  Printf.fprintf oc "\tpopl\t%%ebp\n";
  Printf.fprintf oc "\tpopl\t%%edi\n";
  Printf.fprintf oc "\tpopl\t%%esi\n";
  Printf.fprintf oc "\tpopl\t%%edx\n";
  Printf.fprintf oc "\tpopl\t%%ecx\n";
  Printf.fprintf oc "\tpopl\t%%ebx\n";
  Printf.fprintf oc "\tpopl\t%%eax\n";
  Printf.fprintf oc "\tret\n";
