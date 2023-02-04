open Asm

let rec g env = function (* 命令列の即値最適化 (caml2html: simm13_g) *)
  | Ans(exp, pos) -> Ans(g' env exp, pos)
  | Let((x, t), Set(i, id), e, pos) ->
      (* Format.eprintf "found simm %s = %d@." x i; *)
      let e' = g (if -65536 <= i && i <= 65535 then M.add x i env else env) e in
      if List.mem x (fv e') then Let((x, t), Set(i, id), e', pos) else
      ((* Format.eprintf "erased redundant Set to %s@." x; *)
       e')
  | Let(xt, exp, e, pos) -> Let(xt, g' env exp, g env e, pos)
and g' env = function (* 各命令の即値最適化 (caml2html: simm13_gprime) *)
  | Add(x, V(y), id) when M.mem y env -> Add(x, C(M.find y env), id)
  | Add(x, V(y), id) when M.mem x env -> Add(y, C(M.find x env), id)
  (*| Ld(x, V(y)) when M.mem y env -> Ld(x, C(M.find y env))
  | Ld(x, V(y)) -> assert false
  | St(x, y, V(z)) when M.mem z env -> St(x, y, C(M.find z env))
  | St(x, y, V(z)) -> assert false
  | LdDF(x, V(y)) when M.mem y env -> LdDF(x, C(M.find y env))
  | LdDF(x, V(y)) -> assert false
  | StDF(x, y, V(z)) when M.mem z env -> StDF(x, y, C(M.find z env))
  | StDF(x, y, V(z)) -> assert false*)
  | IfEq(x, y, e1, e2, id) -> IfEq(x, y, g env e1, g env e2, id)
  | IfLE(x, y, e1, e2, id) -> IfLE(x, y, g env e1, g env e2, id)
  | IfGE(x, y, e1, e2, id) -> IfGE(x, y, g env e1, g env e2, id)
  | IfFEq(x, y, e1, e2, id) -> IfFEq(x, y, g env e1, g env e2, id)
  | IfFLE(x, y, e1, e2, id) -> IfFLE(x, y, g env e1, g env e2, id)
  | e -> e

let h { name = l; args = xs; fargs = ys; body = e; ret = t } = (* トップレベル関数の即値最適化 *)
  { name = l; args = xs; fargs = ys; body = g M.empty e; ret = t }

let f (Prog(data, fundefs, e)) = (* プログラム全体の即値最適化 *)
  Prog(data, List.map h fundefs, g M.empty e)
