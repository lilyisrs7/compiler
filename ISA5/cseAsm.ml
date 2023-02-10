(* アドレス計算が減らせる *)
open Asm

type exp =
| NPNop
| NPSet of int
| NPSetL of Id.l
| NPMov of Id.t
| NPNeg of Id.t
| NPAdd of Id.t * id_or_imm
| NPSub of Id.t * Id.t
| NPMul of Id.t * Id.t
| NPDiv of Id.t * Id.t
| NPLd of Id.t * id_or_imm
| NPSt of Id.t * Id.t * id_or_imm
| NPFMovD of Id.t
| NPFNegD of Id.t
| NPFAddD of Id.t * Id.t
| NPFSubD of Id.t * Id.t
| NPFMulD of Id.t * Id.t
| NPFDivD of Id.t * Id.t
| NPSqrt of Id.t
| NPLdDF of Id.t * id_or_imm
| NPStDF of Id.t * Id.t * id_or_imm
| NPComment of string
| NPIfEq of Id.t * Id.t * t * t
| NPIfLE of Id.t * Id.t * t * t
| NPIfFEq of Id.t * Id.t * t * t
| NPIfFLE of Id.t * Id.t * t * t
| NPCallCls of Id.t * Id.t list * Id.t list
| NPCallDir of Id.l * Id.t list * Id.t list
| NPSave of Id.t * Id.t
| NPRestore of Id.t

let separate_id = function
| Nop(id) -> NPNop, id
| Set(i, id) -> NPSet(i), id
| SetL(l, id) -> NPSetL(l), id
| Mov(x, id) -> NPMov(x), id
| Neg(x, id) -> NPNeg(x), id
| Add(x, y, id) -> NPAdd(x, y), id
| Sub(x, y, id) -> NPSub(x, y), id
| Mul(x, y, id) -> NPMul(x, y), id
| Div(x, y, id) -> NPDiv(x, y), id
| Ld(x, y, id) -> NPLd(x, y), id
| St(x, y, z, id) -> NPSt(x, y, z), id
| FMovD(x, id) -> NPFMovD(x), id
| FNegD(x, id) -> NPFNegD(x), id
| FAddD(x, y, id) -> NPFAddD(x, y), id
| FSubD(x, y, id) -> NPFSubD(x, y), id
| FMulD(x, y, id) -> NPFMulD(x, y), id
| FDivD(x, y, id) -> NPFDivD(x, y), id
| Sqrt(x, id) -> NPSqrt(x), id
| LdDF(x, y, id) -> NPLdDF(x, y), id
| StDF(x, y, z, id) -> NPStDF(x, y, z), id
| Comment(s, id) -> NPComment(s), id
| IfEq(x, y, e1, e2, id) -> NPIfEq(x, y, e1, e2), id
| IfLE(x, y, e1, e2, id) -> NPIfLE(x, y, e1, e2), id
| IfFEq(x, y, e1, e2, id) -> NPIfFEq(x, y, e1, e2), id
| IfFLE(x, y, e1, e2, id) -> NPIfFLE(x, y, e1, e2), id
| CallCls(x, ys, zs, id) -> NPCallCls(x, ys, zs), id
| CallDir(x, ys, zs, id) -> NPCallDir(x, ys, zs), id
| Save(x, y, id) -> NPSave(x, y), id
| Restore(x, id) -> NPRestore(x), id

let env_fun = ref M.empty (* 関数ごとに副作用の有無を持っておく *)

let rec effect = function
| Ans(exp, _) -> effect' exp
| Let((x, t), exp, e, _) -> x = reg_hp || effect' exp || effect e

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

let rec g env env_ld = function (* env, env_ld : t * Id.t *)
| Ans(exp, pos) -> Ans(g' env env_ld exp, pos)
| Let((x, t), exp, e, pos) ->
    let npexp, pos' = separate_id exp in
    try
      let exp' = Mov(List.assoc npexp env, pos') in Let((x, t), exp', g env env_ld e, pos)
    with Not_found ->
      try
        let exp' = Mov(List.assoc npexp env_ld, pos') in Let((x, t), exp', g env env_ld e, pos)
      with Not_found ->
        let exp' = g' env env_ld exp in
        if effect' exp' then Let((x, t), exp', g env [] e, pos)
        else
          let npexp', pos'' = separate_id exp' in
          try
            let exp'' = Mov(List.assoc npexp' env, pos'') in Let((x, t), exp'', g env env_ld e, pos)
          with Not_found ->
            try
              let exp'' = Mov(List.assoc npexp' env_ld, pos') in Let((x, t), exp'', g env env_ld e, pos)
            with Not_found ->
              match npexp' with
              | NPLd _ | NPLdDF _ | NPRestore _ -> Let((x, t), exp', g env ((npexp', x) :: env_ld) e, pos)
              | _ -> Let((x, t), exp', g ((npexp', x) :: env) env_ld e, pos)

and g' env env_ld = function
| IfEq(x, y, e1, e2, id) ->
    let e1' = g env env_ld e1 in
    let e2' = g env env_ld e2 in
    IfEq(x, y, e1', e2', id)
| IfLE(x, y, e1, e2, id) ->
    let e1' = g env env_ld e1 in
    let e2' = g env env_ld e2 in
    IfLE(x, y, e1', e2', id)
| IfFEq(x, y, e1, e2, id) ->
    let e1' = g env env_ld e1 in
    let e2' = g env env_ld e2 in
    IfFEq(x, y, e1', e2', id)
| IfFLE(x, y, e1, e2, id) ->
    let e1' = g env env_ld e1 in
    let e2' = g env env_ld e2 in
    IfFLE(x, y, e1', e2', id)
| e -> e

let h { name = Id.L(x); args = ys; fargs = zs; body = e; ret = t} =
  let e' = g [] [] e in
  let eff = effect e' in
  (* Format.eprintf "%s %b\n" x eff; *)
  env_fun := M.add x eff !env_fun;
  { name = Id.L(x); args = ys; fargs = zs; body = e'; ret = t }

let f (Prog(data, fundefs, e)) =
  env_fun := M.add_list [("min_caml_print_char", true); ("min_caml_print_int", true);
                         ("min_caml_read_int", true); ("min_caml_read_float", true);
                         ("min_caml_create_array", true); ("min_caml_create_float_array", true);
                         ("min_caml_int_of_float", false); ("min_caml_float_of_int", false); ("min_caml_floor", false)] M.empty;
  let fundefs' = List.map h fundefs in
  let e' = g [] [] e in
  Prog(data, fundefs', e')
