(* give names to intermediate values (K-normalization) *)

let debug = ref false
let debugall = ref false

type t = (* K正規化後の式 (caml2html: knormal_t) *)
  | Unit of int
  | Int of int * int
  | Float of float * int
  | Neg of Id.t * int
  | Add of Id.t * Id.t * int
  | Sub of Id.t * Id.t * int
  | Mul of Id.t * Id.t * int
  | Div of Id.t * Id.t * int
  | FNeg of Id.t * int
  | FAdd of Id.t * Id.t * int
  | FSub of Id.t * Id.t * int
  | FMul of Id.t * Id.t * int
  | FDiv of Id.t * Id.t * int
  | IfEq of Id.t * Id.t * t * t * int (* 比較 + 分岐 (caml2html: knormal_branch) *)
  | IfLE of Id.t * Id.t * t * t * int (* 比較 + 分岐 *)
  | Let of (Id.t * Type.t) * t * t * int
  | Var of Id.t * int
  | LetRec of fundef * t * int
  | App of Id.t * Id.t list * int
  | Tuple of Id.t list * int
  | LetTuple of (Id.t * Type.t) list * Id.t * t * int
  | Get of Id.t * Id.t * int
  | Put of Id.t * Id.t * Id.t * int
  | ExtArray of Id.t * int
  | ExtFunApp of Id.t * Id.t list * int
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

let rec fv = function (* 式に出現する（自由な）変数 (caml2html: knormal_fv) *)
  | Unit(_) | Int(_) | Float(_) | ExtArray(_) -> S.empty (*?*)
  | Neg(x, pos) | FNeg(x, pos) -> S.singleton x
  | Add(x, y, pos) | Sub(x, y, pos) | Mul(x, y, pos) | Div(x, y, pos) | FAdd(x, y, pos) | FSub(x, y, pos) | FMul(x, y, pos) | FDiv(x, y, pos) | Get(x, y, pos) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2, pos) | IfLE(x, y, e1, e2, pos) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2, pos) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x, pos) -> S.singleton x
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2, pos) ->
      let zs = S.diff (fv e1) (S.of_list (List.map fst yts)) in
      S.diff (S.union zs (fv e2)) (S.singleton x)
  | App(x, ys, pos) -> S.of_list (x :: ys)
  | Tuple(xs, pos) | ExtFunApp(_, xs, pos) -> S.of_list xs
  | Put(x, y, z, pos) -> S.of_list [x; y; z]
  | LetTuple(xs, y, e, pos) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xs)))

let insert_let (e, t) k pos = (* letを挿入する補助関数 (caml2html: knormal_insert) *)
  match e with
  | Var(x, _) -> k x
  | _ ->
      let x = Id.gentmp t in
      let e', t' = k x in
      Let((x, t), e, e', pos), t'

let rec g env = function (* K正規化ルーチン本体 (caml2html: knormal_g) *)
  | Syntax.Unit(pos) -> Unit(pos), Type.Unit
  | Syntax.Bool(b, pos) -> let i = if b then 1 else 0 in Int(i, pos), Type.Int (* 論理値true, falseを整数1, 0に変換 (caml2html: knormal_bool) *)
  | Syntax.Int(i, pos) -> Int(i, pos), Type.Int
  | Syntax.Float(d, pos) -> Float(d, pos), Type.Float
  | Syntax.Not(e, pos) -> g env (Syntax.If(e, Syntax.Bool(false, pos), Syntax.Bool(true, pos), pos))
  | Syntax.Neg(e, pos) ->
      insert_let (g env e)
        (fun x -> Neg(x, pos), Type.Int) pos
  | Syntax.Add(e1, e2, pos) -> (* 足し算のK正規化 (caml2html: knormal_add) *)
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> Add(x, y, pos), Type.Int) pos) pos
  | Syntax.Sub(e1, e2, pos) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> Sub(x, y, pos), Type.Int) pos) pos
  | Syntax.Mul(e1, e2, pos) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> Mul(x, y, pos), Type.Int) pos) pos
  | Syntax.Div(e1, e2, pos) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> Div(x, y, pos), Type.Int) pos) pos
  | Syntax.FNeg(e, pos) ->
      insert_let (g env e)
        (fun x -> FNeg(x, pos), Type.Float) pos
  | Syntax.FAdd(e1, e2, pos) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> FAdd(x, y, pos), Type.Float) pos) pos
  | Syntax.FSub(e1, e2, pos) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> FSub(x, y, pos), Type.Float) pos) pos
  | Syntax.FMul(e1, e2, pos) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> FMul(x, y, pos), Type.Float) pos) pos
  | Syntax.FDiv(e1, e2, pos) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> FDiv(x, y, pos), Type.Float) pos) pos
  | Syntax.Eq (_, _, pos) | Syntax.LE (_, _, pos) as cmp ->
      g env (Syntax.If(cmp, Syntax.Bool(true, pos), Syntax.Bool(false, pos), pos))
  | Syntax.If(Syntax.Not(e1, pos1), e2, e3, pos2) -> g env (Syntax.If(e1, e3, e2, pos2)) (* notによる分岐を変換 (caml2html: knormal_not) *)
  | Syntax.If(Syntax.Eq(e1, e2, pos1), e3, e4, pos2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y ->
              let e3', t3 = g env e3 in
              let e4', t4 = g env e4 in
              IfEq(x, y, e3', e4', pos2), t3) pos2) pos2
  | Syntax.If(Syntax.LE(e1, e2, pos1), e3, e4, pos2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y ->
              let e3', t3 = g env e3 in
              let e4', t4 = g env e4 in
              IfLE(x, y, e3', e4', pos2), t3) pos2) pos2
  | Syntax.If(e1, e2, e3, pos) -> g env (Syntax.If(Syntax.Eq(e1, Syntax.Bool(false, pos), pos), e3, e2, pos)) (* 比較のない分岐を変換 (caml2html: knormal_if) *)
  | Syntax.Let((x, t), e1, e2, pos) ->
      let e1', t1 = g env e1 in
      let e2', t2 = g (M.add x t env) e2 in
      Let((x, t), e1', e2', pos), t2
  | Syntax.Var(x, pos) when M.mem x env -> Var(x, pos), M.find x env
  | Syntax.Var(x, pos) -> (* 外部配列の参照 (caml2html: knormal_extarray) *)
      (match M.find x !Typing.extenv with
      | Type.Array(_) | Type.Tuple(_) as t -> ExtArray(x, pos), t (*?*)
      | _ -> failwith (Printf.sprintf "external variable %s does not have an array type or a tuple type" x))
  | Syntax.LetRec({ Syntax.name = (x, t); Syntax.args = yts; Syntax.body = e1 }, e2, pos) ->
      let env' = M.add x t env in
      let e2', t2 = g env' e2 in
      let e1', t1 = g (M.add_list yts env') e1 in
      LetRec({ name = (x, t); args = yts; body = e1' }, e2', pos), t2
  | Syntax.App(Syntax.Var(f, pos1), e2s, pos2) when not (M.mem f env) -> (* 外部関数の呼び出し (caml2html: knormal_extfunapp) *)
      (match M.find f !Typing.extenv with
      | Type.Fun(_, t) ->
          let rec bind xs = function (* "xs" are identifiers for the arguments *)
            | [] -> ExtFunApp(f, xs, pos2), t
            | e2 :: e2s ->
                insert_let (g env e2)
                  (fun x -> bind (xs @ [x]) e2s) pos2 in
          bind [] e2s (* left-to-right evaluation *)
      | _ -> assert false)
  | Syntax.App(e1, e2s, pos) ->
      (match g env e1 with
      | _, Type.Fun(_, t) as g_e1 ->
          insert_let g_e1
            (fun f ->
              let rec bind xs = function (* "xs" are identifiers for the arguments *)
                | [] -> App(f, xs, pos), t
                | e2 :: e2s ->
                    insert_let (g env e2)
                      (fun x -> bind (xs @ [x]) e2s) pos in
              bind [] e2s) pos (* left-to-right evaluation *)
      | _ -> assert false)
  | Syntax.Tuple(es, pos) ->
      let rec bind xs ts = function (* "xs" and "ts" are identifiers and types for the elements *)
        | [] -> Tuple(xs, pos), Type.Tuple(ts)
        | e :: es ->
            let _, t as g_e = g env e in
            insert_let g_e
              (fun x -> bind (xs @ [x]) (ts @ [t]) es) pos in
      bind [] [] es
  | Syntax.LetTuple(xts, e1, e2, pos) ->
      insert_let (g env e1)
        (fun y ->
          let e2', t2 = g (M.add_list xts env) e2 in
          LetTuple(xts, y, e2', pos), t2) pos
  | Syntax.Array(e1, e2, pos) ->
      insert_let (g env e1)
        (fun x ->
          let _, t2 as g_e2 = g env e2 in
          insert_let g_e2
            (fun y ->
              let l =
                match t2 with
                | Type.Float -> "create_float_array"
                | _ -> "create_array" in
              ExtFunApp(l, [x; y], pos), Type.Array(t2)) pos) pos
  | Syntax.Get(e1, e2, pos) ->
      (match g env e1 with
      |        _, Type.Array(t) as g_e1 ->
          insert_let g_e1
            (fun x -> insert_let (g env e2)
                (fun y -> Get(x, y, pos), t) pos) pos
      | _ -> assert false)
  | Syntax.Put(e1, e2, e3, pos) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> insert_let (g env e3)
                (fun z -> Put(x, y, z, pos), Type.Unit) pos) pos) pos

let f e = fst (g M.empty e)
