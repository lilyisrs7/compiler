open Closure

let rec g' xts ye env' = (* タプルの定義yeがTuple(...)の形で定義されていればLetTupleの第一引数とTupleの第一引数の対応を環境に追加 *)
  match ye with
  | Tuple(ys, _) -> M.add_list2 (List.map fst xts) ys env'
  | Let(_, _, e2, _) -> g' xts e2 env'
  | IfEq(_, _, e1, e2, _) | IfLE(_, _, e1, e2, _) ->
    let env1' = g' xts e1 env' in
    if M.is_empty env1' then env'
    else
      let env2' = g' xts e2 env' in
      if M.is_empty env2' then env'
      else
        M.add_list2 (List.map (fun xt -> (fst xt) ^ "_2") xts) (List.map (fun xt -> M.find (fst xt) env2') xts)
        (M.add_list2 (List.map (fun xt -> (fst xt) ^ "_1") xts) (List.map (fun xt -> M.find (fst xt) env1') xts) env')
  | MakeCls(_, _, e, _) -> g' xts e env'
  | LetTuple(_, _, e, _) -> g' xts e env'
  | _ -> env'

let rec g env e = (* 不要な組や配列を要素ごとに変数に代入 *)
  match e with
  | IfEq(x, y, e1, e2, pos) -> IfEq(x, y, g env e1, g env e2, pos)
  | IfLE(x, y, e1, e2, pos) -> IfLE(x, y, g env e1, g env e2, pos)
  | Let((x, Type.Tuple(ts)), e1, e2, pos) ->
    let e1' = ElimTuple.f (g env e1) in
    let env' = (x, e1') :: env in
    Let((x, Type.Tuple(ts)), e1', g env' e2, pos)
  | Let((x, t), e1, e2, pos) -> Let((x, t), g env e1, g env e2, pos)
  | MakeCls((x, t), { entry = l; actual_fv = ys }, e, pos) -> MakeCls((x, t), { entry = l; actual_fv = ys }, g env e, pos)
  | LetTuple(xts, y, e, pos) ->
    (try
      let ye = List.assoc y env in
      let env' = g' xts ye M.empty in
      if M.is_empty env' then LetTuple(xts, y, g env e, pos)
      else
        let rec g'' ye env'' i =
          match ye with
          | Tuple(ys, pos) ->
            List.fold_right
              (fun (x, t) e ->
                let a =
                  if i == 1 || i == 2 then
                    M.find (x ^ "_" ^ string_of_int i) env''
                  else
                    M.find x env'' in
                if M.mem a env'' then Let((x, t), Var(M.find a env'', pos), e, pos)
                else Let((x, t), Var(a, pos), e, pos))
              xts (g env e)
          | Let((x, t), e1, e2, pos) ->
            let x_new = Id.genid (x ^ "_tace") in
            let env'' = M.add x x_new env'' in
            (match e1 with
            | Var(z, _) ->
              let e1' = if M.mem z env'' then Var(M.find z env'', pos) else e1 in
              Let((x_new, t), e1', g'' e2 env'' i, pos)
            | _ -> Let((x_new, t), e1, g'' e2 env'' i, pos))
          | IfEq(x, y, e1, e2, pos) ->
            let x_ = if M.mem x env'' then M.find x env'' else x in
            let y_ = if M.mem y env'' then M.find y env'' else y in
            IfEq(x_, y_, g'' e1 env'' 1, g'' e2 env'' 2, pos)
          | IfLE(x, y, e1, e2, pos) ->
            let x_ = if M.mem x env'' then M.find x env'' else x in
            let y_ = if M.mem y env'' then M.find y env'' else y in
            IfLE(x_, y_, g'' e1 env'' 1, g'' e2 env'' 2, pos)
          | MakeCls((x, t), cls, e, pos) -> MakeCls((x, t), cls, g'' e env'' i, pos)
          | LetTuple(xts, y, e, pos) -> LetTuple(xts, y, g'' e env'' i, pos)
          | _ -> LetTuple(xts, y, g env e, pos) in
        g'' ye env' 0
    with Not_found -> LetTuple(xts, y, g env e, pos))
  | e -> e

let h env { name = (Id.L(x), t); args = xts; formal_fv = yts; body = e } =
  { name = (Id.L(x), t); args = xts; formal_fv = yts; body = ElimTuple.f (g env e) }

let f (Prog(fundefs, e)) =
  let fundefs' = List.map (h []) fundefs in
  let e' = ElimTuple.f (g [] e) in
  Prog(fundefs', e')
  (* env: Id.t * Closure.t *)