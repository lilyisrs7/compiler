open Asm

type block = { mutable src : string list; mutable dst : string list }

let cnt = ref 1
let graph = ref M.empty

let rec g id pos = function (* いまidのノードを見ていて、そのノードからの分岐の終点の集合を返す *)
| IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) | IfGE(_, _, e1, e2) | IfFEq(_, _, e1, e2) | IfFLE(_, _, e1, e2) ->
    let cur_cnt = !cnt in
    let id_then = (string_of_int pos) ^ "_then_" ^ (string_of_int cur_cnt) in
    let id_else = (string_of_int pos) ^ "_else_" ^ (string_of_int (cur_cnt + 1)) in
    ((M.find id !graph).dst <- [id_then; id_else];
     graph := M.add id_then { src = [id]; dst = [] } (M.add id_else { src = [id]; dst = [] } !graph);
     cnt := cur_cnt + 2;
     let then_ids = make_cfg id_then e1 in
     let else_ids = make_cfg id_else e2 in
     then_ids @ else_ids)
| CallCls(x, _, _) | CallDir(Id.L(x), _, _) ->
    (M.find id !graph).dst <- [x ^ "_entry"];
    (M.find (x ^ "_entry") !graph).src <- (M.find (x ^ "_entry") !graph).src @ [id];
    [x ^ "_exit"]
| e -> [id]

and make_cfg id = function
| Ans(exp, pos) -> g id pos exp
| Let((x, t), exp, e, pos) ->
    let ids = g id pos exp in
    if ids = [id] then make_cfg id e
    else
      let cur_cnt = !cnt in
      let id_join = (string_of_int pos) ^ "_join_" ^ (string_of_int cur_cnt) in
      let _ = List.iter (fun id -> (M.find id !graph).dst <- [id_join]) ids in
      (graph := M.add id_join { src = ids; dst = [] } !graph;
       cnt := cur_cnt + 1;
       make_cfg id_join e)

let h { name = Id.L(x); args = xts; fargs = yts; body = e; ret = t } =
  let id_entry = x ^ "_entry" in
  graph := M.add id_entry { src = []; dst = [] } !graph;
  let ids = make_cfg id_entry e in
  let id_exit = x ^ "_exit" in
  let _ = List.iter (fun id -> (M.find id !graph).dst <- [id_exit]) ids in
  graph := M.add id_exit { src = ids; dst = [] } !graph

let f (Prog(_, fundefs, e)) =
  List.iter h fundefs;
  let id_entry = "0_entry" in
  graph := M.add id_entry { src = []; dst = [] } !graph;
  let ids = make_cfg id_entry e in
  let id_exit = "0_exit" in
  let _ = List.iter (fun id -> (M.find id !graph).dst <- [id_exit]) ids in
  graph := M.add id_exit { src = ids; dst = [] } !graph
