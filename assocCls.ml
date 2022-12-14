(* flatten let-bindings (just for prettier printing) *)

open Closure

let rec g = function (* ネストしたletの簡約 (caml2html: assoc_f) *)
  | IfEq(x, y, e1, e2, pos) -> IfEq(x, y, g e1, g e2, pos)
  | IfLE(x, y, e1, e2, pos) -> IfLE(x, y, g e1, g e2, pos)
  | Let(xt, e1, e2, pos) -> (* letの場合 (caml2html: assoc_let) *)
      let rec insert = function
        | Let(yt, e3, e4, pos) -> Let(yt, e3, insert e4, pos)
        | LetTuple(yts, z, e, pos) -> LetTuple(yts, z, insert e, pos)
        | e -> Let(xt, e, g e2, pos) in
      insert (g e1)
  | MakeCls(xt, cls, e, pos) -> MakeCls(xt, cls, g e, pos)
  | LetTuple(xts, y, e, pos) -> LetTuple(xts, y, g e, pos)
  | e -> e

let h { name = lt; args = yts; formal_fv = zts; body = e } =
  { name = lt; args = yts; formal_fv = zts; body = g e }

let f (Prog(fundefs, e)) =
  let fundefs' = List.map h fundefs in
  let e' = g e in
  Prog(fundefs', e')
