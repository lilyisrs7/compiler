open KNormal

(* ����饤��Ÿ������ؿ��κ��祵���� (caml2html: inline_threshold) *)
let threshold = ref 0 (* Main��-inline���ץ����ˤ�ꥻ�åȤ���� *)
let inline_rec = ref false (* Main��iter�ؿ���ǥ��åȤ���� *)

let rec size = function
  | IfEq(_, _, e1, e2, pos) | IfLE(_, _, e1, e2, pos)
  | Let(_, e1, e2, pos) | LetRec({ body = e1 }, e2, pos) -> 1 + size e1 + size e2
  | LetTuple(_, _, e, pos) -> 1 + size e
  | _ -> 1

let rec g env = function (* ����饤��Ÿ���롼�������� (caml2html: inline_g) *)
  | IfEq(x, y, e1, e2, pos) -> IfEq(x, y, g env e1, g env e2, pos)
  | IfLE(x, y, e1, e2, pos) -> IfLE(x, y, g env e1, g env e2, pos)
  | Let(xt, e1, e2, pos) -> Let(xt, g env e1, g env e2, pos)
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2, pos) -> (* �ؿ�����ξ�� (caml2html: inline_letrec) *)
      if S.mem x (fv e1) then (* �Ƶ��ؿ� *)
        let size_e1 = size e1 in
        let env =
          if !inline_rec = true &&
             (String.starts_with ~prefix:"solve_each_element_fast" x || String.starts_with ~prefix:"solve_one_or_network_fast" x
              || size_e1 <= 10) then M.add x (yts, e1) env
          else env in
        (* let _ = Format.eprintf "%s %d\n" x size_e1 in *)
        LetRec({ name = (x, t); args = yts; body = g env e1}, g env e2, pos)
      else
        (* let size_e1 = size e1 in *)
        (* let _ = Format.eprintf "%s %d\n" x size_e1 in *)
        let env = (* if size_e1 > !threshold then env else *)M.add x (yts, e1) env in (* �Ƶ��ؿ��ʳ��ϥ������˴ط��ʤ�����Ÿ�� *)
        LetRec({ name = (x, t); args = yts; body = g env e1}, g env e2, pos)
  | App(x, ys, pos) when M.mem x env -> (* �ؿ�Ŭ�Ѥξ�� (caml2html: inline_app) *)
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
