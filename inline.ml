open KNormal

(* インライン展開する再帰関数の最大サイズ (caml2html: inline_threshold) *)
let threshold = ref 0 (* Mainで-inlineオプションによりセットされる *)
let inline_rec = ref false (* Mainのiter関数内でセットされる *)

let rec size = function
  | IfEq(_, _, e1, e2, pos) | IfLE(_, _, e1, e2, pos)
  | Let(_, e1, e2, pos) | LetRec({ body = e1 }, e2, pos) -> 1 + size e1 + size e2
  | LetTuple(_, _, e, pos) -> 1 + size e
  | _ -> 1

let rec g env = function (* インライン展開ルーチン本体 (caml2html: inline_g) *)
  | IfEq(x, y, e1, e2, pos) -> IfEq(x, y, g env e1, g env e2, pos)
  | IfLE(x, y, e1, e2, pos) -> IfLE(x, y, g env e1, g env e2, pos)
  | Let(xt, e1, e2, pos) -> Let(xt, g env e1, g env e2, pos)
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2, pos) -> (* 関数定義の場合 (caml2html: inline_letrec) *)
      if S.mem x (fv e1) then (* 再帰関数 *)
        let env =
          if !inline_rec = true &&
             (String.starts_with ~prefix:"solve_each_element_fast" x || String.starts_with ~prefix:"solve_one_or_network_fast" x
              || size e1 <= !threshold)
          then M.add x (yts, e1) env
          else env in
        (* let _ = Format.eprintf "%s %d\n" x size_e1 in *)
        LetRec({ name = (x, t); args = yts; body = g env e1}, g env e2, pos)
      else
        (* let size_e1 = size e1 in *)
        (* let _ = Format.eprintf "%s %d\n" x size_e1 in *)
        let env = (* if size_e1 > !threshold then env else *)M.add x (yts, e1) env in (* 再帰関数以外はサイズに関係なく全て展開 *)
        LetRec({ name = (x, t); args = yts; body = g env e1}, g env e2, pos)
  | App(x, ys, pos) when M.mem x env -> (* 関数適用の場合 (caml2html: inline_app) *)
      let (zs, e) = M.find x env in
      Format.eprintf "inlining %s@." x;
      let env' =
        List.fold_left2
          (fun env' (z, t) y -> M.add z y env')
          M.empty
          zs
          ys in
      Alpha.g env' e
  | LetTuple(xts, y, e, pos) -> LetTuple(xts, y, g env e, pos)
  | e -> e

let f e = g M.empty e
