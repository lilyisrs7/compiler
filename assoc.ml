(* flatten let-bindings (just for prettier printing) *)

open KNormal

let rec f = function (* ネストしたletの簡約 (caml2html: assoc_f) *)
  | IfEq(x, y, e1, e2, pos) -> IfEq(x, y, f e1, f e2, pos)
  | IfLE(x, y, e1, e2, pos) -> IfLE(x, y, f e1, f e2, pos)
  | Let(xt, e1, e2, pos) -> (* letの場合 (caml2html: assoc_let) *)
      let rec insert = function
        | Let(yt, e3, e4, pos) -> Let(yt, e3, insert e4, pos)
        | LetRec(fundefs, e, pos) -> LetRec(fundefs, insert e, pos)
        | LetTuple(yts, z, e, pos) -> LetTuple(yts, z, insert e, pos)
        | e -> Let(xt, e, f e2, pos) in
      insert (f e1)
  | LetRec({ name = xt; args = yts; body = e1 }, e2, pos) ->
      LetRec({ name = xt; args = yts; body = f e1 }, f e2, pos)
  | LetTuple(xts, y, e, pos) -> LetTuple(xts, y, f e, pos)
  | e -> e
