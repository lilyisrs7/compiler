open Closure

let rec effect = function (* 副作用の有無 (caml2html: elim_effect) *)
  | Let(_, e1, e2, _) | IfEq(_, _, e1, e2, _) | IfLE(_, _, e1, e2, _) -> effect e1 || effect e2
  | MakeCls(_, _, e, _) | LetTuple(_, _, e, _) -> effect e
  | AppCls _ | AppDir _ | Put _ -> true
  | _ -> false

let rec g = function (* 不要定義削除ルーチン本体 (caml2html: elim_f) *)
  | IfEq(x, y, e1, e2, pos) -> IfEq(x, y, g e1, g e2, pos)
  | IfLE(x, y, e1, e2, pos) -> IfLE(x, y, g e1, g e2, pos)
  | Let((x, t), e1, e2, pos) -> (* letの場合 (caml2html: elim_let) *)
      let e1' = g e1 in
      let e2' = g e2 in
      (* if effect e1' || S.mem x (fv e2') || x = "reg_hp_init" then Let((x, t), e1', e2', pos) else *)
      if effect e1' || S.mem x (fv e2') then Let((x, t), e1', e2', pos) else
      (Format.eprintf "eliminating variable %s@." x;
       e2')
  | MakeCls((x, t), cls, e, pos) -> MakeCls((x, t), cls, g e, pos)
  | LetTuple(xts, y, e, pos) ->
      let xs = List.map fst xts in
      let e' = g e in
      let live = fv e' in
      if List.exists (fun x -> S.mem x live) xs then LetTuple(xts, y, e', pos) else
      (Format.eprintf "eliminating variables %s@." (Id.pp_list xs);
       e')
  | e -> e

let h { name = lt; args = yts; formal_fv = zts; body = e } =
  { name = lt; args = yts; formal_fv = zts; body = g e }

let f (Prog(fundefs, e)) =
  let fundefs' = List.map h fundefs in
  let e' = g e in
  Prog(fundefs', e')