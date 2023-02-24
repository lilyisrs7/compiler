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
| NPArrLd of Id.t * Id.t
| NPArrSt of Id.t * Id.t * Id.t
| NPFMovD of Id.t
| NPFNegD of Id.t
| NPFAddD of Id.t * Id.t
| NPFSubD of Id.t * Id.t
| NPFMulD of Id.t * Id.t
| NPFDivD of Id.t * Id.t
| NPSqrt of Id.t
| NPLdDF of Id.t * id_or_imm
| NPStDF of Id.t * Id.t * id_or_imm
| NPArrLdDF of Id.t * Id.t
| NPArrStDF of Id.t * Id.t * Id.t
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
| ArrLd(x, y, id) -> NPArrLd(x, y), id
| ArrSt(x, y, z, id) -> NPArrSt(x, y, z), id
| FMovD(x, id) -> NPFMovD(x), id
| FNegD(x, id) -> NPFNegD(x), id
| FAddD(x, y, id) -> NPFAddD(x, y), id
| FSubD(x, y, id) -> NPFSubD(x, y), id
| FMulD(x, y, id) -> NPFMulD(x, y), id
| FDivD(x, y, id) -> NPFDivD(x, y), id
| Sqrt(x, id) -> NPSqrt(x), id
| LdDF(x, y, id) -> NPLdDF(x, y), id
| StDF(x, y, z, id) -> NPStDF(x, y, z), id
| ArrLdDF(x, y, id) -> NPArrLdDF(x, y), id
| ArrStDF(x, y, z, id) -> NPArrStDF(x, y, z), id
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
let mem x env =
  match x with
  | V(x') -> M.mem x' env
  | C(y') -> true
let find x env =
  match x with
  | V(x') -> M.find x' env
  | C(x') -> x'

let rec effect env_ld env_int = function
| Ans(exp, _) -> effect' env_ld env_int exp
| Let((x, t), exp, e, _) ->
    let b1, env_ld1 = effect' env_ld env_int exp in
    let b2, env_ld2 = effect env_ld env_int e in
    x = reg_hp || b1 || b2, List.filter (fun v -> List.mem v env_ld2) env_ld1 (* 共通部分 *)

and effect' env_ld env_int = function (* 副作用の有無 *)
| IfEq(x, y, e1, e2, _) | IfLE(x, y, e1, e2, _) | IfFEq(x, y, e1, e2, _) | IfFLE(x, y, e1, e2, _) ->
    let b1, env_ld1 = effect env_ld env_int e1 in
    let b2, env_ld2 = effect env_ld env_int e2 in
    x = reg_hp || y = reg_hp || b1 || b2, List.filter (fun v -> List.mem v env_ld2) env_ld1 (* 共通部分 *)
| CallCls(x, ys, zs, _) | CallDir(Id.L(x), ys, zs, _) ->
    (try
       List.exists (fun y -> y = reg_hp) ys || List.exists (fun z -> z = reg_hp) zs || M.find x !env_fun, env_ld
     with Not_found -> List.exists (fun y -> y = reg_hp) ys || List.exists (fun z -> z = reg_hp) zs, env_ld (* 関数内で再帰的に呼ばれた場合 *))
| St(_, x, y, _) | StDF(_, x, y, _) ->
    let check (ld, var) =
      match ld with
      | NPLd(x', y') | NPLdDF(x', y') when x' = x ->
          if mem y' env_int && mem y env_int then find y' env_int <> find y env_int (* indexが違えば残す *)
          else false (* indexが定義されていなければ（引数などの場合）残さない *)
      | NPArrLd(x', y') | NPArrLdDF(x', y') when x' = x ->
          if M.mem y' env_int && mem y env_int then M.find y' env_int * 4 <> find y env_int (* indexが違えば残す *)
          else false (* indexが定義されていなければ（引数などの場合）残さない *)
      | _ -> true in
    true, List.filter check env_ld
| ArrSt(_, x, y, _) | ArrStDF(_, x, y, _) ->
    let check (ld, var) =
      match ld with
      | NPLd(x', y') | NPLdDF(x', y') when x' = x ->
          if mem y' env_int && M.mem y env_int then find y' env_int <> M.find y env_int * 4 (* indexが違えば残す *)
          else false (* indexが定義されていなければ（引数などの場合）残さない *)
      | NPArrLd(x', y') | NPArrLdDF(x', y') when x' = x ->
          if M.mem y' env_int && M.mem y env_int then M.find y' env_int <> M.find y env_int (* indexが違えば残す *)
          else false (* indexが定義されていなければ（引数などの場合）残さない *)
      | _ -> true in
    true, List.filter check env_ld
(* | Save(x, y, _) -> true, env_ld *)
| Mov(x, _) | Neg(x, _) | FMovD(x, _) | FNegD(x, _) | Sqrt(x, _)
| Add(x, C(_), _) | Ld(x, C(_), _) | LdDF(x, C(_), _) -> x = reg_hp, env_ld
| Add(x, V(y), _) | Ld(x, V(y), _) | LdDF(x, V(y), _) | ArrLd(x, y, _) | ArrLdDF(x, y, _)
| Sub(x, y, _) | Mul(x, y, _) | Div(x, y, _)
| FAddD(x, y, _) | FSubD(x, y, _) | FMulD(x, y, _) | FDivD(x, y, _) -> x = reg_hp || y = reg_hp, env_ld
| _ -> false, env_ld

let rec g env env_ld env_int = function (* env, env_ld : t * Id.t *)
| Ans(exp, pos) -> Ans(g' env env_ld env_int exp, pos)
| Let((x, t), exp, e, pos) ->
    let npexp, pos' = separate_id exp in
    try
      let exp' = Mov(List.assoc npexp env, pos') in Let((x, t), exp', g env env_ld env_int e, pos)
    with Not_found ->
      try
        let exp' = Mov(List.assoc npexp env_ld, pos') in Let((x, t), exp', g env env_ld env_int e, pos)
      with Not_found ->
        let exp' = g' env env_ld env_int exp in
        let b, env_ld' = effect' env_ld env_int exp' in
        if b then
          let e' = g env env_ld' env_int e in
          Let((x, t), exp', e', pos)
        else
          let npexp', pos'' = separate_id exp' in
          try
            let exp'' = Mov(List.assoc npexp' env, pos'') in Let((x, t), exp'', g env env_ld env_int e, pos)
          with Not_found ->
            try
              let exp'' = Mov(List.assoc npexp' env_ld, pos') in Let((x, t), exp'', g env env_ld env_int e, pos)
            with Not_found ->
              match npexp' with
              | NPLd _ | NPLdDF _ | NPArrLd _ | NPArrLdDF _ -> Let((x, t), exp', g env ((npexp', x) :: env_ld) env_int e, pos)
              | _ -> Let((x, t), exp', g ((npexp', x) :: env) env_ld env_int e, pos)

and g' env env_ld env_int = function
| IfEq(x, y, e1, e2, id) ->
    let e1' = g env env_ld env_int e1 in
    let e2' = g env env_ld env_int e2 in
    IfEq(x, y, e1', e2', id)
| IfLE(x, y, e1, e2, id) ->
    let e1' = g env env_ld env_int e1 in
    let e2' = g env env_ld env_int e2 in
    IfLE(x, y, e1', e2', id)
| IfFEq(x, y, e1, e2, id) ->
    let e1' = g env env_ld env_int e1 in
    let e2' = g env env_ld env_int e2 in
    IfFEq(x, y, e1', e2', id)
| IfFLE(x, y, e1, e2, id) ->
    let e1' = g env env_ld env_int e1 in
    let e2' = g env env_ld env_int e2 in
    IfFLE(x, y, e1', e2', id)
| e -> e

let h env_int { name = Id.L(x); args = ys; fargs = zs; body = e; ret = t} =
  let e' = g [] [] env_int e in
  let eff = fst (effect [] env_int e') in
  (* Format.eprintf "%s %b\n" x eff; *)
  env_fun := M.add x eff !env_fun;
  { name = Id.L(x); args = ys; fargs = zs; body = e'; ret = t }

let f env_int (Prog(data, fundefs, e)) =
  env_fun := M.add_list [("min_caml_print_char", true); ("min_caml_print_int", true);
                         ("min_caml_read_int", true); ("min_caml_read_float", true);
                         ("min_caml_create_array", true); ("min_caml_create_float_array", true);
                         ("min_caml_int_of_float", false); ("min_caml_float_of_int", false); ("min_caml_floor", false)] M.empty;
  let fundefs' = List.map (h env_int) fundefs in
  let e' = g [] [] env_int e in
  Prog(data, fundefs', e')
