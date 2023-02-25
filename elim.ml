open KNormal

let env_fun = ref M.empty (* 関数ごとに副作用の有無を持っておく *)
let env_int = ref M.empty

(* let rec effect = function (* 副作用の有無 (caml2html: elim_effect) *)
  | Let(_, e1, e2, pos) | IfEq(_, _, e1, e2, pos) | IfLE(_, _, e1, e2, pos) -> effect e1 || effect e2
  | LetRec(_, e, pos) | LetTuple(_, _, e, pos) -> effect e
  | App _ | Put _ | ExtFunApp _ -> true
  | _ -> false *)

let rec effect = function (* 副作用の有無 *)
  | Let(_, e1, e2, _) | IfEq(_, _, e1, e2, _) | IfLE(_, _, e1, e2, _) -> effect e1 || effect e2
  | LetRec(_, e, _) | LetTuple(_, _, e, _) -> effect e
  | App(x, _, _) ->
      (try
         M.find x !env_fun
       with Not_found -> false (* 関数内で再帰的に呼ばれた場合はfalseとしておく *))
  | ExtFunApp(x, _, _) when x = "float_of_int" || x = "int_of_float" || x = "floor" || x = "sqrt" -> false
  | Put _ | ExtFunApp _ -> true
  | _ -> false

let rec g = function (* 不要定義削除ルーチン本体 (caml2html: elim_f) *)
  | IfEq(x, y, e1, e2, pos) -> IfEq(x, y, g e1, g e2, pos)
  | IfLE(x, y, e1, e2, pos) -> IfLE(x, y, g e1, g e2, pos)
  | Let((x, t), e1, e2, pos) -> (* letの場合 (caml2html: elim_let) *)
      let e1' = g e1 in
      let _ = match e1' with Int(i, _) -> env_int := M.add x i !env_int | _ -> () in
      let e2' = g e2 in
      if effect e1' || S.mem x (fv e2') then Let((x, t), e1', e2', pos) else
      (Format.eprintf "eliminating variable %s@." x;
       e2')
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2, pos) -> (* let recの場合 (caml2html: elim_letrec) *)
      let eff = effect e1 in
      env_fun := M.add x eff !env_fun;
      let e1' = g e1 in
      let e2' = g e2 in
      if S.mem x (fv e2') then
        LetRec({ name = (x, t); args = yts; body = e1' }, e2', pos)
      else
        (Format.eprintf "eliminating function %s@." x;
         e2')
  | LetTuple(xts, y, e, pos) ->
      let xs = List.map fst xts in
      let e' = g e in
      let live = fv e' in
      if List.exists (fun x -> S.mem x live) xs then LetTuple(xts, y, e', pos) else
      (Format.eprintf "eliminating variables %s@." (Id.pp_list xs);
       e')
  | e -> e

let f e =
  let e' = g e in
  e', !env_int