open KNormal

type t = (* KNormal.tから最も外側の位置情報を除いたもの *)
| NPUnit
| NPInt of int
| NPFloat of float
| NPNeg of Id.t
| NPAdd of Id.t * Id.t
| NPSub of Id.t * Id.t
| NPMul of Id.t * Id.t
| NPDiv of Id.t * Id.t
| NPFNeg of Id.t
| NPFAdd of Id.t * Id.t
| NPFSub of Id.t * Id.t
| NPFMul of Id.t * Id.t
| NPFDiv of Id.t * Id.t
| NPIfEq of Id.t * Id.t * KNormal.t * KNormal.t
| NPIfLE of Id.t * Id.t * KNormal.t * KNormal.t
| NPLet of (Id.t * Type.t) * KNormal.t * KNormal.t
| NPVar of Id.t
| NPLetRec of KNormal.fundef * KNormal.t
| NPApp of Id.t * Id.t list
| NPTuple of Id.t list
| NPLetTuple of (Id.t * Type.t) list * Id.t * KNormal.t
| NPGet of Id.t * Id.t
| NPPut of Id.t * Id.t * Id.t
| NPExtArray of Id.t
| NPExtFunApp of Id.t * Id.t list

let separate_pos e =
  match e with
  | Unit(pos) -> NPUnit, pos
  | Int(i, pos) -> NPInt(i), pos
  | Float(f, pos) -> NPFloat(f), pos
  | Neg(x, pos) -> NPNeg(x), pos
  | Add(x, y, pos) -> NPAdd(x, y), pos
  | Sub(x, y, pos) -> NPSub(x, y), pos
  | Mul(x, y, pos) -> NPMul(x, y), pos
  | Div(x, y, pos) -> NPDiv(x, y), pos
  | FNeg(x, pos) -> NPFNeg(x), pos
  | FAdd(x, y, pos) -> NPFAdd(x, y), pos
  | FSub(x, y, pos) -> NPFSub(x, y), pos
  | FMul(x, y, pos) -> NPFMul(x, y), pos
  | FDiv(x, y, pos) -> NPFDiv(x, y), pos
  | IfEq(x, y, e1, e2, pos) -> NPIfEq(x, y, e1, e2), pos
  | IfLE(x, y, e1, e2, pos) -> NPIfLE(x, y, e1, e2), pos
  | Let((x, t), e1, e2, pos) -> NPLet((x, t), e1, e2), pos
  | Var(x, pos) -> NPVar(x), pos
  | LetRec(fundef, e, pos) -> NPLetRec(fundef, e), pos
  | App(x, ys, pos) -> NPApp(x, ys), pos
  | Tuple(xs, pos) -> NPTuple(xs), pos
  | LetTuple(xts, y, e, pos) -> NPLetTuple(xts, y, e), pos
  | Get(x, y, pos) -> NPGet(x, y), pos
  | Put(x, y, z, pos) -> NPPut(x, y, z), pos
  | ExtArray(x, pos) -> NPExtArray(x), pos
  | ExtFunApp(x, ys, pos) -> NPExtFunApp(x, ys), pos

(* let rec effect = function (* 副作用の有無 *)
  | Let(_, e1, e2, pos) | IfEq(_, _, e1, e2, pos) | IfLE(_, _, e1, e2, pos) -> effect e1 || effect e2
  | LetRec(_, e, pos) | LetTuple(_, _, e, pos) -> effect e
  | App _ | Put _ | ExtFunApp _ -> true
  | _ -> false *)

let rec effect env_fun = function (* 副作用の有無 *) (* 関数ごとに副作用の有無を持っておく *)
  | Let(_, e1, e2, pos) | IfEq(_, _, e1, e2, pos) | IfLE(_, _, e1, e2, pos) -> effect env_fun e1 || effect env_fun e2
  | LetRec(_, e, pos) | LetTuple(_, _, e, pos) -> effect env_fun e
  | App(x, ys, pos) ->
      (try
         M.find x env_fun
       with Not_found -> false (* 関数内で再帰的に呼ばれた場合はfalseとしておく *))
  | Put _ | ExtFunApp _ -> true
  | _ -> false

let rec g env env_get env_fun e = (* 共通部分式削除ルーチン本体 *)
  try
    let e', pos = separate_pos e in
    (Var(List.assoc e' env, pos), env_fun)
  with
    Not_found ->
      try
        let e', pos = separate_pos e in
        (Var(List.assoc e' env_get, pos), env_fun)
      with
        Not_found ->
          (match e with
          | IfEq(x, y, e1, e2, pos) ->
              let e1', env_fun' = g env env_get env_fun e1 in
              let e2', env_fun' = g env env_get env_fun' e2 in
              (IfEq(x, y, e1', e2', pos), env_fun')
          | IfLE(x, y, e1, e2, pos) ->
              let e1', env_fun' = g env env_get env_fun e1 in
              let e2', env_fun' = g env env_get env_fun' e2 in
              (IfLE(x, y, e1', e2', pos), env_fun')
          | Let((x, t), e1, e2, pos) ->
              if effect env_fun e1 then
                let e2', env_fun' = g env [] env_fun e2 in
                (Let((x, t), e1, e2', pos), env_fun')
              else
                let e1', env_fun' = g env env_get env_fun e1 in
                (try
                  let v = List.assoc (fst (separate_pos e1')) env in
                  let e2', env_fun' = g env env_get env_fun' e2 in
                  (Let((x, t), Var(v, pos), e2', pos), env_fun')
                with
                  Not_found ->
                    try
                      let v = List.assoc (fst (separate_pos e1')) env_get in
                      let e2', env_fun' = g env env_get env_fun' e2 in
                      (Let((x, t), Var(v, pos), e2', pos), env_fun')
                    with
                      Not_found ->
                        match fst(separate_pos e1') with
                        | NPGet(x_, y_) ->
                            let e2', env_fun' = g env ((NPGet(x_, y_), x) :: env_get) env_fun' e2 in
                            (Let((x, t), e1', e2', pos), env_fun')
                        | e_->
                            let e2', env_fun' = g ((e_, x) :: env) env_get env_fun' e2 in
                            (Let((x, t), e1', e2', pos), env_fun'))
          | LetRec({ name = (x, t); args = yts; body = e1 }, e2, pos) ->
              let e1', env_fun' = g env env_get env_fun e1 in
              let eff = effect env_fun' e1 in
              Format.eprintf "%s %b\n" x eff;
              let env_fun' = M.add x eff env_fun in
              let e2', env_fun' = g env env_get env_fun' e2 in
              (LetRec({ name = (x, t); args = yts; body = e1' }, e2', pos), env_fun')
          | LetTuple(xts, y, e, pos) ->
              let e', env_fun' = g env env_get env_fun e in
              (LetTuple(xts, y, e', pos), env_fun')
          | e -> (e, env_fun))

let f e = fst (g [] [] M.empty e)