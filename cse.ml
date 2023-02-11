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

let env_fun = ref M.empty (* 関数ごとに副作用の有無を持っておく *)

let rec effect env_get env_int = function (* 副作用の有無 *)
  | Let(_, e1, e2, _) | IfEq(_, _, e1, e2, _) | IfLE(_, _, e1, e2, _) ->
      let b1, env_get1 = effect env_get env_int e1 in
      let b2, env_get2 = effect env_get env_int e2 in
      b1 || b2, List.filter (fun v -> List.mem v env_get2) env_get1 (* 共通部分 *)
  | LetRec(_, e, _) | LetTuple(_, _, e, _) -> effect env_get env_int e
  | App(x, _, _) ->
      (try
         M.find x !env_fun, env_get
       with Not_found -> false, env_get (* 関数内で再帰的に呼ばれた場合はfalseとしておく *))
  | ExtFunApp(x, _, _) when x = "float_of_int" || x = "int_of_float" || x = "floor" || x = "sqrt" -> false, env_get
  | Put (x, y, _, _) ->
      let check (get, var) =
        match get with
        | NPGet(x', y') when x' = x -> (* 同じ配列なら *)
            if M.mem y' env_int && M.mem y env_int then M.find y' env_int <> M.find y env_int (* indexが違えば残す *)
            else false (* indexが定義されていなければ（引数などの場合）残さない *)
        | _ -> true in
      true, List.filter check env_get
  | ExtFunApp _ -> true, env_get
  | _ -> false, env_get

let rec g env env_get env_int e = (* 共通部分式削除ルーチン本体 *)
  try
    let e', pos = separate_pos e in
    Var(List.assoc e' env, pos)
  with
    Not_found ->
      try
        let e', pos = separate_pos e in
        Var(List.assoc e' env_get, pos)
      with
        Not_found ->
          (match e with
          | IfEq(x, y, e1, e2, pos) ->
              let e1' = g env env_get env_int e1 in
              let e2' = g env env_get env_int e2 in
              IfEq(x, y, e1', e2', pos)
          | IfLE(x, y, e1, e2, pos) ->
              let e1' = g env env_get env_int e1 in
              let e2' = g env env_get env_int e2 in
              IfLE(x, y, e1', e2', pos)
          | Let((x, t), e1, e2, pos) ->
              let e1' = g env env_get env_int e1 in
              let b, env_get' = effect env_get env_int e1' in
              if b then
                let e2' = g env env_get' env_int e2 in
                Let((x, t), e1', e2', pos)
              else
                (try
                  let v = List.assoc (fst (separate_pos e1')) env in
                  let e2' = g env env_get env_int e2 in (* b = falseのときenv_getは変わらない *)
                  Let((x, t), Var(v, pos), e2', pos)
                with
                  Not_found ->
                    try
                      let v = List.assoc (fst (separate_pos e1')) env_get in
                      let e2' = g env env_get env_int e2 in
                      Let((x, t), Var(v, pos), e2', pos)
                    with
                      Not_found ->
                        match fst(separate_pos e1') with
                        | NPGet(x_, y_) ->
                            let e2' = g env ((NPGet(x_, y_), x) :: env_get) env_int e2 in
                            Let((x, t), e1', e2', pos)
                        | e_->
                            let e2' = g ((e_, x) :: env) env_get env_int e2 in
                            Let((x, t), e1', e2', pos))
          | LetRec({ name = (x, t); args = yts; body = e1 }, e2, pos) ->
              let e1' = g env env_get env_int e1 in
              let eff = fst (effect env_get env_int e1') in
              env_fun := M.add x eff !env_fun;
              let e2' = g env env_get env_int e2 in
              LetRec({ name = (x, t); args = yts; body = e1' }, e2', pos)
          | LetTuple(xts, y, e, pos) ->
              let e' = g env env_get env_int e in
              LetTuple(xts, y, e', pos)
          | e -> e)

let f env_int e = g [] [] env_int e