(* rename identifiers to make them unique (alpha-conversion) *)

open KNormal

let find x env = try M.find x env with Not_found -> x

let rec g env = function (* α変換ルーチン本体 (caml2html: alpha_g) *)
  | Unit(pos) -> Unit(pos)
  | Int(i, pos) -> Int(i, pos)
  | Float(d, pos) -> Float(d, pos)
  | Neg(x, pos) -> Neg(find x env, pos)
  | Add(x, y, pos) -> Add(find x env, find y env, pos)
  | Sub(x, y, pos) -> Sub(find x env, find y env, pos)
  | FNeg(x, pos) -> FNeg(find x env, pos)
  | FAdd(x, y, pos) -> FAdd(find x env, find y env, pos)
  | FSub(x, y, pos) -> FSub(find x env, find y env, pos)
  | FMul(x, y, pos) -> FMul(find x env, find y env, pos)
  | FDiv(x, y, pos) -> FDiv(find x env, find y env, pos)
  | IfEq(x, y, e1, e2, pos) -> IfEq(find x env, find y env, g env e1, g env e2, pos)
  | IfLE(x, y, e1, e2, pos) -> IfLE(find x env, find y env, g env e1, g env e2, pos)
  | Let((x, t), e1, e2, pos) -> (* letのα変換 (caml2html: alpha_let) *)
      let x' = Id.genid x in
      Let((x', t), g env e1, g (M.add x x' env) e2, pos)
  | Var(x, pos) -> Var(find x env, pos)
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2, pos) -> (* let recのα変換 (caml2html: alpha_letrec) *)
      let env = M.add x (Id.genid x) env in
      let ys = List.map fst yts in
      let env' = M.add_list2 ys (List.map Id.genid ys) env in
      LetRec({ name = (find x env, t);
               args = List.map (fun (y, t) -> (find y env', t)) yts;
               body = g env' e1 },
             g env e2, pos)
  | App(x, ys, pos) -> App(find x env, List.map (fun y -> find y env) ys, pos)
  | Tuple(xs, pos) -> Tuple(List.map (fun x -> find x env) xs, pos)
  | LetTuple(xts, y, e, pos) -> (* LetTupleのα変換 (caml2html: alpha_lettuple) *)
      let xs = List.map fst xts in
      let env' = M.add_list2 xs (List.map Id.genid xs) env in
      LetTuple(List.map (fun (x, t) -> (find x env', t)) xts,
               find y env,
               g env' e, pos)
  | Get(x, y, pos) -> Get(find x env, find y env, pos)
  | Put(x, y, z, pos) -> Put(find x env, find y env, find z env, pos)
  | ExtArray(x, pos) -> ExtArray(x, pos)
  | ExtFunApp(x, ys, pos) -> ExtFunApp(x, List.map (fun y -> find y env) ys, pos)

let f = g M.empty
