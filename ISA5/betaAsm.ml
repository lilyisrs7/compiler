open Asm

let find x env = try M.find x env with Not_found -> x (* 置換のための関数 (caml2html: beta_find) *)

let find' x env =
  match x with
  | V(x') -> V(find x' env)
  | C(_) -> x

let rec g env = function
| Ans(exp, pos) -> Ans(g' env exp, pos)
| Let((x, t), exp, e, pos) ->
    let exp' = g' env exp in
    if x = reg_hp then Let((x, t), exp', g env e, pos)
    else
      match exp' with
      | Mov(y, id) when y <> reg_hp ->
          Format.eprintf "beta-reducing %s = %s@." x y;
          g (M.add x y env) e
      | exp' -> Let((x, t), exp', g env e, pos)

and g' env = function
| Nop(id) -> Nop(id)
| Set(i, id) -> Set(i, id)
| SetL(l, id) -> SetL(l, id)
| Mov(x, id) -> Mov(find x env, id)
| Neg(x, id) -> Neg(find x env, id)
| Add(x, y, id) -> Add(find x env, find' y env, id)
| Sub(x, y, id) -> Sub(find x env, find y env, id)
| Mul(x, y, id) -> Mul(find x env, find y env, id)
| Div(x, y, id) -> Div(find x env, find y env, id)
| Ld(x, y, id) -> Ld(find x env, find' y env, id)
| St(x, y, z, id) -> St(find x env, find y env, find' z env, id)
| ArrLd(x, y, id) -> ArrLd(find x env, find y env, id)
| ArrSt(x, y, z, id) -> ArrSt(find x env, find y env, find z env, id)
| FMovD(x, id) -> FMovD(find x env, id)
| FNegD(x, id) -> FNegD(find x env, id)
| FAddD(x, y, id) -> FAddD(find x env, find y env, id)
| FSubD(x, y, id) -> FSubD(find x env, find y env, id)
| FMulD(x, y, id) -> FMulD(find x env, find y env, id)
| FDivD(x, y, id) -> FDivD(find x env, find y env, id)
| Sqrt(x, id) -> Sqrt(find x env, id)
| LdDF(x, y, id) -> LdDF(find x env, find' y env, id)
| StDF(x, y, z, id) -> StDF(find x env, find y env, find' z env, id)
| ArrLdDF(x, y, id) -> ArrLdDF(find x env, find y env, id)
| ArrStDF(x, y, z, id) -> ArrStDF(find x env, find y env, find z env, id)
| Comment(s, id) -> Comment(s, id)
| IfEq(x, y, e1, e2, id) -> IfEq(find x env, find y env, g env e1, g env e2, id)
| IfLE(x, y, e1, e2, id) -> IfLE(find x env, find y env, g env e1, g env e2, id)
| IfFEq(x, y, e1, e2, id) -> IfFEq(find x env, find y env, g env e1, g env e2, id)
| IfFLE(x, y, e1, e2, id) -> IfFLE(find x env, find y env, g env e1, g env e2, id)
| CallCls(x, ys, zs, id) -> CallCls(find x env, List.map (fun y -> find y env) ys, List.map (fun z -> find z env) zs, id)
| CallDir(Id.L(x), ys, zs, id) -> CallDir(Id.L(find x env), List.map (fun y -> find y env) ys, List.map (fun z -> find z env) zs, id)
| Save(x, y, id) -> Save(find x env, find y env, id)
| Restore(x, id) -> Restore(find x env, id)

let h { name = l; args = ys; fargs = zs; body = e; ret = t } =
  { name = l; args = ys; fargs = zs; body = g M.empty e; ret = t }

let f (Prog(data, fundefs, e)) =
  let fundefs' = List.map h fundefs in
  let e' = g M.empty e in
  Prog(data, fundefs', e')
