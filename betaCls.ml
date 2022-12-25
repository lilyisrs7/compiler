open Closure

let find x env = try M.find x env with Not_found -> x (* 置換のための関数 (caml2html: beta_find) *)

let rec g env = function (* β簡約ルーチン本体 (caml2html: beta_g) *)
  | Unit(pos) -> Unit(pos)
  | Int(i, pos) -> Int(i, pos)
  | Float(d, pos) -> Float(d, pos)
  | Neg(x, pos) -> Neg(find x env, pos)
  | Add(x, y, pos) -> Add(find x env, find y env, pos)
  | Sub(x, y, pos) -> Sub(find x env, find y env, pos)
  | Mul(x, y, pos) -> Mul(find x env, find y env, pos)
  | Div(x, y, pos) -> Div(find x env, find y env, pos)
  | FNeg(x, pos) -> FNeg(find x env, pos)
  | FAdd(x, y, pos) -> FAdd(find x env, find y env, pos)
  | FSub(x, y, pos) -> FSub(find x env, find y env, pos)
  | FMul(x, y, pos) -> FMul(find x env, find y env, pos)
  | FDiv(x, y, pos) -> FDiv(find x env, find y env, pos)
  | IfEq(x, y, e1, e2, pos) -> IfEq(find x env, find y env, g env e1, g env e2, pos)
  | IfLE(x, y, e1, e2, pos) -> IfLE(find x env, find y env, g env e1, g env e2, pos)
  (* | Let(("reg_hp_init", t), Var("reg_hp", pos2), e, pos1) -> Let(("reg_hp_init", t), Var("reg_hp", pos2), g env e, pos1) *)
  | Let((x, t), e1, e2, pos) -> (* letのβ簡約 (caml2html: beta_let) *)
      (match g env e1 with
      | Var(y, pos) ->
          Format.eprintf "beta-reducing %s = %s@." x y;
          g (M.add x y env) e2
      | e1' ->
          let e2' = g env e2 in
          Let((x, t), e1', e2', pos))
  | Var(x, pos) -> Var(find x env, pos) (* 変数を置換 (caml2html: beta_var) *)
  | MakeCls((x, t), { entry = Id.L(y); actual_fv = ys }, e, pos) ->
      MakeCls((x, t), { entry = Id.L(y); actual_fv = List.map (fun y -> find y env) ys }, g env e, pos)
  | AppCls(x, ys, pos) -> AppCls(find x env, List.map (fun y -> find y env) ys, pos)
  | AppDir(Id.L(x), ys, pos) -> AppDir(Id.L(find x env), List.map (fun y -> find y env) ys, pos)
  | Tuple(xs, pos) -> Tuple(List.map (fun x -> find x env) xs, pos)
  | LetTuple(xts, y, e, pos) -> LetTuple(xts, find y env, g env e, pos)
  | Get(x, y, pos) -> Get(find x env, find y env, pos)
  | Put(x, y, z, pos) -> Put(find x env, find y env, find z env, pos)
  | ExtArray(l, pos) -> ExtArray(l, pos)

let h { name = lt; args = yts; formal_fv = zts; body = e } =
  { name = lt; args = yts; formal_fv = zts; body = g M.empty e }

let f (Prog(fundefs, e)) =
  let fundefs' = List.map h fundefs in
  let e' = g M.empty e in
  Prog(fundefs', e')
