open Closure

let rec effect = function
  | Let(_, e1, e2, pos) | IfEq(_, _, e1, e2, pos) | IfLE(_, _, e1, e2, pos) -> effect e1 || effect e2
  | MakeCls(_, _, e, pos) | LetTuple(_, _, e, pos) -> effect e
  | AppCls _ | AppDir _ | Put _ -> true
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