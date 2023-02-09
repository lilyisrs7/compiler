open Asm

let env_fun = ref M.empty (* 関数ごとに副作用の有無を持っておく *)

let rec effect = function
| Ans(exp, _) -> effect' exp
| Let(_, exp, e, _) -> effect' exp || effect e

and effect' = function (* 副作用の有無 *)
| IfEq(x, y, e1, e2, _) | IfLE(x, y, e1, e2, _) | IfFEq(x, y, e1, e2, _) | IfFLE(x, y, e1, e2, _) ->
    x = reg_hp || y = reg_hp || effect e1 || effect e2
| CallCls(x, ys, zs, _) | CallDir(Id.L(x), ys, zs, _) ->
    (try
       List.exists (fun y -> y = reg_hp) ys || List.exists (fun z -> z = reg_hp) zs || M.find x !env_fun
     with Not_found -> List.exists (fun y -> y = reg_hp) ys || List.exists (fun z -> z = reg_hp) zs (* 関数内で再帰的に呼ばれた場合 *))
| St _ | StDF _ | Save _ -> true
| Mov(x, _) | Neg(x, _) | FMovD(x, _) | FNegD(x, _) | Sqrt(x, _)
| Add(x, C(_), _) | Ld(x, C(_), _) | LdDF(x, C(_), _) -> x = reg_hp
| Add(x, V(y), _) | Ld(x, V(y), _) | LdDF(x, V(y), _)
| Sub(x, y, _) | Mul(x, y, _) | Div(x, y, _)
| FAddD(x, y, _) | FSubD(x, y, _) | FMulD(x, y, _) | FDivD(x, y, _) -> x = reg_hp || y = reg_hp
| _ -> false

let rec g = function
| Ans(exp, pos) -> Ans(g' exp, pos)
| Let((x, t), exp, e, pos) ->
    let exp' = g' exp in
    let e' = g e in
    if effect' exp' || List.mem x (fv e') || x = reg_hp then Let((x, t), exp', e', pos) else
    (Format.eprintf "eliminating variable %s@." x;
     e')

and g' = function
| IfEq(x, y, e1, e2, id) -> IfEq(x, y, g e1, g e2, id)
| IfLE(x, y, e1, e2, id) -> IfLE(x, y, g e1, g e2, id)
| IfFEq(x, y, e1, e2, id) -> IfFEq(x, y, g e1, g e2, id)
| IfFLE(x, y, e1, e2, id) -> IfFLE(x, y, g e1, g e2, id)
| e -> e

let h { name = Id.L(x); args = ys; fargs = zs; body = e; ret = t } =
  let e' = g e in
  let eff = effect e' in
  env_fun := M.add x eff !env_fun;
  { name = Id.L(x); args = ys; fargs = zs; body = e'; ret = t }

let f (Prog(data, fundefs, e)) =
  env_fun := M.add_list [("min_caml_print_char", true); ("min_caml_print_int", true);
                         ("min_caml_read_int", true); ("min_caml_read_float", true);
                         ("min_caml_create_array", true); ("min_caml_create_float_array", true);
                         ("min_caml_int_of_float", false); ("min_caml_float_of_int", false); ("min_caml_floor", false)] M.empty;
  let fundefs' = List.map h fundefs in
  let e' = g e in
  Prog(data, fundefs', e')