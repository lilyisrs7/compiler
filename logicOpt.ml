open KNormal

(* boolがintに変換されることで生成する項の最適化 *)
(* 消えない部分があるので改良予定 *)
let rec g env01 env = function
| Let((x, t), IfEq(x1, y1, Int(a, pos4), Int(b, pos3), pos2), e, pos1) ->
    (* Format.eprintf "logic %s\n" x; *)
    let env' = M.add x (IfEq(x1, y1, Int(a, pos4), Int(b, pos3), pos2)) env in
    Let((x, t), IfEq(x1, y1, Int(a, pos4), Int(b, pos3), pos2), g env01 env' e, pos1)
| Let((x, t), IfLE(x1, y1, Int(a, pos4), Int(b, pos3), pos2), e, pos1) ->
    (* Format.eprintf "logic %s\n" x; *)
    let env' = M.add x (IfLE(x1, y1, Int(a, pos4), Int(b, pos3), pos2)) env in
    Let((x, t), IfLE(x1, y1, Int(a, pos4), Int(b, pos3), pos2), g env01 env' e, pos1)
(* | Let((x, t), IfEq(x1, y1, Int(a, pos5), Int(b, pos4), pos3), IfEq(x2, y2, e1, e2, pos2), pos1) ->
    if (x = x2 && M.mem y2 env01 && M.find y2 env01 = a) || (x = y2 && M.mem x2 env01 && M.find x2 env01 = a) then
      IfEq(x1, y1, g env01 e1, g env01 e2, pos2)
    else if (x = x2 && M.mem y2 env01 && M.find y2 env01 = b) || (x = y2 && M.mem x2 env01 && M.find x2 env01 = b) then
      IfEq(x1, y1, g env01 e2, g env01 e1, pos2)
    else
      Let((x, t), IfEq(x1, y1, Int(a, pos5), Int(b, pos4), pos3), IfEq(x2, y2, e1, e2, pos2), pos1)
| Let((x, t), IfLE(x1, y1, Int(a, pos5), Int(b, pos4), pos3), IfEq(x2, y2, e1, e2, pos2), pos1) ->
    if (x = x2 && M.mem y2 env01 && M.find y2 env01 = a) || (x = y2 && M.mem x2 env01 && M.find x2 env01 = a) then
      IfLE(x1, y1, g env01 e1, g env01 e2, pos2)
    else if (x = x2 && M.mem y2 env01 && M.find y2 env01 = b) || (x = y2 && M.mem x2 env01 && M.find x2 env01 = b) then
      IfLE(x1, y1, g env01 e2, g env01 e1, pos2)
    else
      Let((x, t), IfLE(x1, y1, Int(a, pos5), Int(b, pos4), pos3), IfEq(x2, y2, e1, e2, pos2), pos1) *)
| IfEq(x, y, e1, e2, pos) ->
    if M.mem x env then
      match M.find x env with
      | IfEq(x_, y_, Int(a, _), Int(b, _), pos_) ->
          if M.mem y env01 && M.find y env01 = a then
            IfEq(x_, y_, g env01 env e1, g env01 env e2, pos_)
          else if M.mem y env01 && M.find y env01 = b then
            IfEq(x_, y_, g env01 env e2, g env01 env e1, pos_)
          else IfEq(x, y, g env01 env e1, g env01 env e2, pos)
      | IfLE(x_, y_, Int(a, _), Int(b, _), pos_) ->
          (* (if x = "m_invert.5086" then Format.eprintf "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\n"; *)
          if M.mem y env01 && M.find y env01 = a then
            IfLE(x_, y_, g env01 env e1, g env01 env e2, pos_)
          else if M.mem y env01 && M.find y env01 = b then
            IfLE(x_, y_, g env01 env e2, g env01 env e1, pos_)
          else IfLE(x, y, g env01 env e1, g env01 env e2, pos)
      | _ -> assert false
    else if M.mem y env then
      match M.find y env with
      | IfEq(x_, y_, Int(a, _), Int(b, _), pos_) ->
          if M.mem x env01 && M.find x env01 = a then
            IfEq(x_, y_, g env01 env e1, g env01 env e2, pos_)
          else if M.mem x env01 && M.find x env01 = b then
            IfEq(x_, y_, g env01 env e2, g env01 env e1, pos_)
          else IfEq(x, y, g env01 env e1, g env01 env e2, pos)
      | IfLE(x_, y_, Int(a, _), Int(b, _), pos_) ->
          if M.mem x env01 && M.find x env01 = a then
            IfLE(x_, y_, g env01 env e1, g env01 env e2, pos_)
          else if M.mem x env01 && M.find x env01 = b then
            IfLE(x_, y_, g env01 env e2, g env01 env e1, pos_)
          else IfLE(x, y, g env01 env e1, g env01 env e2, pos)
      | _ -> assert false
    else
      IfEq(x, y, g env01 env e1, g env01 env e2, pos)
| IfLE(x, y, e1, e2, pos) -> IfLE(x, y, g env01 env e1, g env01 env e2, pos)
| Let((x, t), Int(y, pos2), e, pos1) when y = 0 || y = 1 -> Let((x, t), Int(y, pos2), g (M.add x y env01) env e, pos1)
| Let((x, t), e1, e2, pos) ->
    let e1' = g env01 env e1 in
    let e2' = g env01 env e2 in
    Let((x, t), e1', e2', pos)
| LetRec({ name = xt; args = yts; body = e1 }, e2, pos) ->
    let e1' = g env01 env e1 in
    let e2' = g env01 env e2 in
    LetRec({ name = xt; args = yts; body = e1' }, e2', pos)
| LetTuple(xts, y, e, pos) -> LetTuple(xts, y, g env01 env e, pos)
| e -> e

let f = g M.empty M.empty