open Closure

let memi x env =
  try (match M.find x env with Int(_) -> true | _ -> false)
  with Not_found -> false
let memf x env =
  try (match M.find x env with Float(_) -> true | _ -> false)
  with Not_found -> false
let memt x env =
  try (match M.find x env with Tuple(_) -> true | _ -> false)
  with Not_found -> false

let findi x env = (match M.find x env with Int(i, pos) -> i | _ -> raise Not_found)
let findf x env = (match M.find x env with Float(d, pos) -> d | _ -> raise Not_found)
let findt x env = (match M.find x env with Tuple(ys, pos) -> ys | _ -> raise Not_found)

let rec g env = function (* 定数畳み込みルーチン本体 (caml2html: constfold_g) *)
  | Var(x, pos) when memi x env -> Int(findi x env, pos)
  (* | Var(x) when memf x env -> Float(findf x env) *)
  (* | Var(x) when memt x env -> Tuple(findt x env) *)
  | Neg(x, pos) when memi x env -> Int(-(findi x env), pos)
  | Add(x, y, pos) when memi x env && memi y env -> Int(findi x env + findi y env, pos) (* 足し算のケース (caml2html: constfold_add) *)
  | Sub(x, y, pos) when memi x env && memi y env -> Int(findi x env - findi y env, pos)
  | Mul(x, y, pos) when memi x env && memi y env -> Int(findi x env * findi y env, pos)
  | Div(x, y, pos) when memi x env && memi y env -> Int(findi x env / findi y env, pos)
  | FNeg(x, pos) when memf x env -> Float(-.(findf x env), pos)
  | FAdd(x, y, pos) when memf x env && memf y env -> Float(findf x env +. findf y env, pos)
  | FSub(x, y, pos) when memf x env && memf y env -> Float(findf x env -. findf y env, pos)
  | FMul(x, y, pos) when memf x env && memf y env -> Float(findf x env *. findf y env, pos)
  | FDiv(x, y, pos) when memf x env && memf y env -> Float(findf x env /. findf y env, pos)
  | IfEq(x, y, e1, e2, pos) when memi x env && memi y env -> if findi x env = findi y env then g env e1 else g env e2
  | IfEq(x, y, e1, e2, pos) when memf x env && memf y env -> if findf x env = findf y env then g env e1 else g env e2
  | IfEq(x, y, e1, e2, pos) -> IfEq(x, y, g env e1, g env e2, pos)
  | IfLE(x, y, e1, e2, pos) when memi x env && memi y env -> if findi x env <= findi y env then g env e1 else g env e2
  | IfLE(x, y, e1, e2, pos) when memf x env && memf y env -> if findf x env <= findf y env then g env e1 else g env e2
  | IfLE(x, y, e1, e2, pos) -> IfLE(x, y, g env e1, g env e2, pos)
  | Let((x, t), e1, e2, pos) -> (* letのケース (caml2html: constfold_let) *)
      let e1' = g env e1 in
      let e2' = g (M.add x e1' env) e2 in
      Let((x, t), e1', e2', pos)
  | MakeCls((x, t), cls, e, pos) -> MakeCls((x, t), cls, g env e, pos)
  | LetTuple(xts, y, e, pos) when memt y env ->
      List.fold_left2
        (fun e' xt z -> Let(xt, Var(z, pos), e', pos))
        (g env e)
        xts
        (findt y env)
  | LetTuple(xts, y, e, pos) -> LetTuple(xts, y, g env e, pos)
  | e -> e

let h { name = lt; args = yts; formal_fv = zts; body = e } =
  { name = lt; args = yts; formal_fv = zts; body = g M.empty e }

let f (Prog(fundefs, e)) =
  let fundefs' = List.map h fundefs in
  let e' = g M.empty e in
  Prog(fundefs', e')
