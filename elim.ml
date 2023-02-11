open KNormal

let env_fun = ref M.empty (* �ؿ����Ȥ������Ѥ�̵ͭ����äƤ��� *)

(* let rec effect = function (* �����Ѥ�̵ͭ (caml2html: elim_effect) *)
  | Let(_, e1, e2, pos) | IfEq(_, _, e1, e2, pos) | IfLE(_, _, e1, e2, pos) -> effect e1 || effect e2
  | LetRec(_, e, pos) | LetTuple(_, _, e, pos) -> effect e
  | App _ | Put _ | ExtFunApp _ -> true
  | _ -> false *)

let rec effect = function (* �����Ѥ�̵ͭ *)
  | Let(_, e1, e2, _) | IfEq(_, _, e1, e2, _) | IfLE(_, _, e1, e2, _) -> effect e1 || effect e2
  | LetRec(_, e, _) | LetTuple(_, _, e, _) -> effect e
  | App(x, _, _) ->
      (try
         M.find x !env_fun
       with Not_found -> false (* �ؿ���ǺƵ�Ū�˸ƤФ줿����false�Ȥ��Ƥ��� *))
  | ExtFunApp(x, _, _) when x = "float_of_int" || x = "int_of_float" || x = "floor" || x = "sqrt" -> false
  | Put _ | ExtFunApp _ -> true
  | _ -> false

let rec f = function (* �����������롼�������� (caml2html: elim_f) *)
  | IfEq(x, y, e1, e2, pos) -> IfEq(x, y, f e1, f e2, pos)
  | IfLE(x, y, e1, e2, pos) -> IfLE(x, y, f e1, f e2, pos)
  | Let((x, t), e1, e2, pos) -> (* let�ξ�� (caml2html: elim_let) *)
      let e1' = f e1 in
      let e2' = f e2 in
      if effect e1' || S.mem x (fv e2') then Let((x, t), e1', e2', pos) else
      (Format.eprintf "eliminating variable %s@." x;
       e2')
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2, pos) -> (* let rec�ξ�� (caml2html: elim_letrec) *)
      let e1' = f e1 in
      let eff = effect e1' in
      env_fun := M.add x eff !env_fun;
      let e2' = f e2 in
      if S.mem x (fv e2') then
        LetRec({ name = (x, t); args = yts; body = e1' }, e2', pos)
      else
        (Format.eprintf "eliminating function %s@." x;
         e2')
  | LetTuple(xts, y, e, pos) ->
      let xs = List.map fst xts in
      let e' = f e in
      let live = fv e' in
      if List.exists (fun x -> S.mem x live) xs then LetTuple(xts, y, e', pos) else
      (Format.eprintf "eliminating variables %s@." (Id.pp_list xs);
       e')
  | e -> e
