open Closure

let env_fun = ref M.empty (* 関数ごとに副作用の有無を持っておく *)

let rec effect = function
  | Let(_, e1, e2, _) | IfEq(_, _, e1, e2, _) | IfLE(_, _, e1, e2, _) -> effect e1 || effect e2
  | MakeCls(_, _, e, _) | LetTuple(_, _, e, _) -> effect e
  | AppCls(x, _, _) | AppDir(Id.L(x), _, _) ->
      if String.starts_with ~prefix:"min_caml_" x then true
      else
        (try
           M.find x !env_fun
         with Not_found -> false (* 関数内で再帰的に呼ばれた場合はfalseとしておく *))
  | Put _ -> true
  | _ -> false

let rec f = function (* 不要タプル削除ルーチン本体 *)
  | IfEq(x, y, e1, e2, pos) -> IfEq(x, y, f e1, f e2, pos)
  | IfLE(x, y, e1, e2, pos) -> IfLE(x, y, f e1, f e2, pos)
  | Let((x, Type.Tuple(ts)), e1, e2, pos) ->
      let e1' = f e1 in
      let e2' = f e2 in
      if effect e1' || S.mem x (fv e2') then Let((x, Type.Tuple(ts)), e1', e2', pos)
      else
        (Format.eprintf "eliminating tuple %s@." x;
         e2')
  | Let((x, t), e1, e2, pos) -> Let((x, t), f e1, f e2, pos)
  | MakeCls((x, t), { entry = l; actual_fv = ys }, e, pos) ->
      MakeCls((x, t), { entry = l; actual_fv = ys }, f e, pos)
  | LetTuple(xts, y, e, pos) -> LetTuple(xts, y, f e, pos)
  | e -> e