open KNormal

(* boolがintに変換されることで生成する項の最適化 *)
(* 今は連続したものしか消せないので改良予定 *)
let rec g env01 = function
| Let((x, t), IfEq(x1, y1, Int(a, pos5), Int(b, pos4), pos3), IfEq(x2, y2, e1, e2, pos2), pos1) ->
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
      Let((x, t), IfLE(x1, y1, Int(a, pos5), Int(b, pos4), pos3), IfEq(x2, y2, e1, e2, pos2), pos1)
| IfEq(x, y, e1, e2, pos) -> IfEq(x, y, g env01 e1, g env01 e2, pos)
| IfLE(x, y, e1, e2, pos) -> IfLE(x, y, g env01 e1, g env01 e2, pos)
| Let((x, t), Int(y, pos2), e, pos1) when y = 0 || y = 1 -> Let((x, t), Int(y, pos2), g (M.add x y env01) e, pos1)
| Let((x, t), e1, e2, pos) -> Let((x, t), g env01 e1, g env01 e2, pos)
| LetRec({ name = xt; args = yts; body = e1 }, e2, pos) -> LetRec({ name = xt; args = yts; body = g env01 e1 }, g env01 e2, pos)
| LetTuple(xts, y, e, pos) -> LetTuple(xts, y, g env01 e, pos)
| e -> e

let f = g M.empty