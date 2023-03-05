open Asm

let id = ref (-1)
let func_arg_id = ref M.empty (* 各関数引数について、定義式idをkey, その関数の引数のうち注目している引数と型が同じものの数をvalとするmap *)

let rec g env = function (* 各命令にidを付加 *)
  | Ans(exp, pos) -> Ans(fst (g' env exp), pos)
  | Let((x, t), exp, e, pos) -> let exp', id' = g' env exp in Let((x, t), exp', g (M.add x id' env) e, pos)
and g' env = function
  | Nop(_) -> id := !id + 1; (Nop(!id), !id)
  | Set(i, _) -> id := !id + 1; (Set(i, !id), !id)
  | SetL(l, _) -> id := !id + 1; (SetL(l, !id), !id)
  | Mov(x, _) -> id := !id + 1; (Mov(x, !id), !id)
  | Neg(x, _) -> id := !id + 1; (Neg(x, !id), !id)
  | Add(x, V(y), _) -> id := !id + 1; (Add(x, V(y), !id), !id)
  | Add(x, C(y), _) -> id := !id + 1; (Add(x, C(y), !id), !id)
  | Sub(x, y, _) -> id := !id + 1; (Sub(x, y, !id), !id)
  | Mul(x, y, _) -> id := !id + 1; (Mul(x, y, !id), !id)
  | Div(x, y, _) -> id := !id + 1; (Div(x, y, !id), !id)
  | Ld(x, V(y), _) -> id := !id + 1; (Ld(x, V(y), !id), !id)
  | Ld(x, C(y), _) -> id := !id + 1; (Ld(x, C(y), !id), !id)
  | St(x, y, V(z), _) -> id := !id + 1; (St(x, y, V(z), !id), !id)
  | St(x, y, C(z), _) -> id := !id + 1; (St(x, y, C(z), !id), !id)
  | ArrLd(x, y, _) -> id := !id + 1; (ArrLd(x, y, !id), !id)
  | ArrSt(x, y, z, _) -> id := !id + 1; (ArrSt(x, y, z, !id), !id)
  | FMovD(x, _) -> id := !id + 1; (FMovD(x, !id), !id)
  | FNegD(x, _) -> id := !id + 1; (FNegD(x, !id), !id)
  | FAddD(x, y, _) -> id := !id + 1; (FAddD(x, y, !id), !id)
  | FSubD(x, y, _) -> id := !id + 1; (FSubD(x, y, !id), !id)
  | FMulD(x, y, _) -> id := !id + 1; (FMulD(x, y, !id), !id)
  | FDivD(x, y, _) -> id := !id + 1; (FDivD(x, y, !id), !id)
  | Sqrt(x, _) -> id := !id + 1; (Sqrt(x, !id), !id)
  | LdDF(x, V(y), _) -> id := !id + 1; (LdDF(x, V(y), !id), !id)
  | LdDF(x, C(y), _) -> id := !id + 1; (LdDF(x, C(y), !id), !id)
  | StDF(x, y, V(z), _) -> id := !id + 1; (StDF(x, y, V(z), !id), !id)
  | StDF(x, y, C(z), _) -> id := !id + 1; (StDF(x, y, C(z), !id), !id)
  | ArrLdDF(x, y, _) -> id := !id + 1; (ArrLdDF(x, y, !id), !id)
  | ArrStDF(x, y, z, _) -> id := !id + 1; (ArrStDF(x, y, z, !id), !id)
  | Comment(x, _) -> id := !id + 1; (Comment(x, !id), !id)
  | IfEq(x, y, e1, e2, _) ->
      let id' = !id + 1 in
      id := id';
      let e1' = g env e1 in
      let e2' = g env e2 in
      (IfEq(x, y, e1', e2', id'), id')
  | IfLE(x, y, e1, e2, _) ->
      let id' = !id + 1 in
      id := id';
      let e1' = g env e1 in
      let e2' = g env e2 in
      (IfLE(x, y, e1', e2', id'), id')
  | IfFEq(x, y, e1, e2, _) ->
      let id' = !id + 1 in
      id := id';
      let e1' = g env e1 in
      let e2' = g env e2 in
      (IfFEq(x, y, e1', e2', id'), id')
  | IfFLE(x, y, e1, e2, _) ->
      let id' = !id + 1 in
      id := id';
      let e1' = g env e1 in
      let e2' = g env e2 in
      (IfFLE(x, y, e1', e2', id'), id')
  | CallCls(x, ys, zs, _) ->
      List.iter (fun y -> if M.mem y env then func_arg_id := M.add (string_of_int (M.find y env)) (List.length ys) !func_arg_id) ys;
      List.iter (fun z -> if M.mem z env then func_arg_id := M.add (string_of_int (M.find z env)) (List.length zs) !func_arg_id) zs;
      id := !id + 1; (CallCls(x, ys, zs, !id), !id)
  | CallDir(x, ys, zs, _) ->
      List.iter (fun y -> if M.mem y env then func_arg_id := M.add (string_of_int (M.find y env)) (List.length ys) !func_arg_id) ys;
      List.iter (fun z -> if M.mem z env then func_arg_id := M.add (string_of_int (M.find z env)) (List.length zs) !func_arg_id) zs;
      id := !id + 1; (CallDir(x, ys, zs, !id), !id)
  | Save(x, y, _) -> id := !id + 1; (Save(x, y, !id), !id)
  | Restore(x, _) -> id := !id + 1; (Restore(x, !id), !id)

let h { name = l; args = xs; fargs = ys; body = e; ret = t } =
  { name = l; args = xs; fargs = ys; body = g M.empty e; ret = t }

let f (Prog(data, fundefs, e)) =
  Prog(data, List.map h fundefs, g M.empty e)
