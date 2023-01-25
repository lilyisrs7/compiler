open Closure

type block = { mutable src : string list; mutable dst : string list }

let cnt = ref 1
let graph = ref M.empty

let rec make_cfg e id = (* いまidのノードを見ていて、そのノードからの分岐の終点の集合を返す *)
  match e with
  | IfEq(_, _, e1, e2, pos) | IfLE(_, _, e1, e2, pos) ->
      let cur_cnt = !cnt in
      let id_then = (string_of_int pos) ^ "_then_" ^ (string_of_int cur_cnt) in
      let id_else = (string_of_int pos) ^ "_else_" ^ (string_of_int cur_cnt) in
      ((M.find id !graph).dst <- [id_then; id_else];
       graph := M.add id_then { src = [id]; dst = [] } (M.add id_else { src = [id]; dst = [] } !graph);
       cnt := cur_cnt + 2;
       let then_ids = make_cfg e1 id_then in
       let else_ids = make_cfg e2 id_else in
       then_ids @ else_ids)
  | Let(_, e1, e2, pos) ->
      let ids = make_cfg e1 id in
      if ids = [id] then make_cfg e2 id
      else
        let cur_cnt = !cnt in
        let id_join = (string_of_int pos) ^ "_join_" ^ (string_of_int cur_cnt) in
        (graph := M.add id_join { src = ids; dst = [] } !graph;
         cnt := cur_cnt + 1;
         make_cfg e2 id_join)
  | MakeCls(_, _, e, pos) | LetTuple(_, _, e, pos) -> make_cfg e id
  | e -> [id]

let g { name = (Id.L(x), t); args = xts; formal_fv = yts; body = e } =
  let id_entry = x ^ "_entry" in
  graph := M.add id_entry { src = []; dst = [] } !graph;
  let ids = make_cfg e id_entry in
  let id_exit = x ^ "_exit" in
  graph := M.add id_exit { src = ids; dst = [] } !graph

let f (Prog(fundefs, e)) =
  List.iter g fundefs;
  let id_entry = "0_entry" in
  graph := M.add id_entry { src = []; dst = [] } !graph;
  let ids = make_cfg e id_entry in
  let id_exit = "0_exit" in
  graph := M.add id_exit { src = ids; dst = [] } !graph
