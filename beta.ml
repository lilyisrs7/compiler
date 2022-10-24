open KNormal

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
  | Let((x, t), e1, e2, pos) -> (* letのβ簡約 (caml2html: beta_let) *)
      (match g env e1 with
      | Var(y, pos) ->
          Format.eprintf "beta-reducing %s = %s@." x y;
          g (M.add x y env) e2
      | e1' ->
          let e2' = g env e2 in
          Let((x, t), e1', e2', pos))
  | LetRec({ name = xt; args = yts; body = e1 }, e2, pos) ->
      LetRec({ name = xt; args = yts; body = g env e1 }, g env e2, pos)
  | Var(x, pos) -> Var(find x env, pos) (* 変数を置換 (caml2html: beta_var) *)
  | Tuple(xs, pos) -> Tuple(List.map (fun x -> find x env) xs, pos)
  | LetTuple(xts, y, e, pos) -> LetTuple(xts, find y env, g env e, pos)
  | Get(x, y, pos) -> Get(find x env, find y env, pos)
  | Put(x, y, z, pos) -> Put(find x env, find y env, find z env, pos)
  | App(g, xs, pos) -> App(find g env, List.map (fun x -> find x env) xs, pos)
  | ExtArray(x, pos) -> ExtArray(x, pos)
  | ExtFunApp(x, ys, pos) -> ExtFunApp(x, List.map (fun y -> find y env) ys, pos)

let f = g M.empty
