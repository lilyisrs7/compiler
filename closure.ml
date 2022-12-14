type closure = { entry : Id.l; actual_fv : Id.t list }
type t = (* クロージャ変換後の式 (caml2html: closure_t) *)
  | Unit of int
  | Int of int * int
  | Float of float * int
  | Neg of Id.t * int
  | Add of Id.t * Id.t * int
  | Sub of Id.t * Id.t * int
  | Mul of Id.t * Id.t * int
  | Div of Id.t * Id.t * int
  | FNeg of Id.t * int
  | FAdd of Id.t * Id.t * int
  | FSub of Id.t * Id.t * int
  | FMul of Id.t * Id.t * int
  | FDiv of Id.t * Id.t * int
  | IfEq of Id.t * Id.t * t * t * int
  | IfLE of Id.t * Id.t * t * t * int
  | Let of (Id.t * Type.t) * t * t * int
  | Var of Id.t * int
  | MakeCls of (Id.t * Type.t) * closure * t * int
  | AppCls of Id.t * Id.t list * int
  | AppDir of Id.l * Id.t list * int
  | Tuple of Id.t list * int
  | LetTuple of (Id.t * Type.t) list * Id.t * t * int
  | Get of Id.t * Id.t * int
  | Put of Id.t * Id.t * Id.t * int
  | ExtArray of Id.l * int
type fundef = { name : Id.l * Type.t;
                args : (Id.t * Type.t) list;
                formal_fv : (Id.t * Type.t) list;
                body : t }
type prog = Prog of fundef list * t

let rec fv = function
  | Unit(_) | Int(_) | Float(_) | ExtArray(_) -> S.empty
  | Neg(x, pos) | FNeg(x, pos) -> S.singleton x
  | Add(x, y, pos) | Sub(x, y, pos) | Mul(x, y, pos) | Div(x, y, pos) | FAdd(x, y, pos) | FSub(x, y, pos) | FMul(x, y, pos) | FDiv(x, y, pos) | Get(x, y, pos) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2, pos)| IfLE(x, y, e1, e2, pos) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2, pos) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x, pos) -> S.singleton x
  | MakeCls((x, t), { entry = l; actual_fv = ys }, e, pos) -> S.remove x (S.union (S.of_list ys) (fv e))
  | AppCls(x, ys, pos) -> S.of_list (x :: ys)
  | AppDir(_, xs, pos) | Tuple(xs, pos) -> S.of_list xs
  | LetTuple(xts, y, e, pos) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xts)))
  | Put(x, y, z, pos) -> S.of_list [x; y; z]

let toplevel : fundef list ref = ref []

let rec g env known = function (* クロージャ変換ルーチン本体 (caml2html: closure_g) *)
  | KNormal.Unit(pos) -> Unit(pos)
  | KNormal.Int(i, pos) -> Int(i, pos)
  | KNormal.Float(d, pos) -> Float(d, pos)
  | KNormal.Neg(x, pos) -> Neg(x, pos)
  | KNormal.Add(x, y, pos) -> Add(x, y, pos)
  | KNormal.Sub(x, y, pos) -> Sub(x, y, pos)
  | KNormal.Mul(x, y, pos) -> Mul(x, y, pos)
  | KNormal.Div(x, y, pos) -> Div(x, y, pos)
  | KNormal.FNeg(x, pos) -> FNeg(x, pos)
  | KNormal.FAdd(x, y, pos) -> FAdd(x, y, pos)
  | KNormal.FSub(x, y, pos) -> FSub(x, y, pos)
  | KNormal.FMul(x, y, pos) -> FMul(x, y, pos)
  | KNormal.FDiv(x, y, pos) -> FDiv(x, y, pos)
  | KNormal.IfEq(x, y, e1, e2, pos) -> IfEq(x, y, g env known e1, g env known e2, pos)
  | KNormal.IfLE(x, y, e1, e2, pos) -> IfLE(x, y, g env known e1, g env known e2, pos)
  | KNormal.Let((x, t), e1, e2, pos) -> Let((x, t), g env known e1, g (M.add x t env) known e2, pos)
  | KNormal.Var(x, pos) -> Var(x, pos)
  | KNormal.LetRec({ KNormal.name = (x, t); KNormal.args = yts; KNormal.body = e1 }, e2, pos) -> (* 関数定義の場合 (caml2html: closure_letrec) *)
      (* 関数定義let rec x y1 ... yn = e1 in e2の場合は、
         xに自由変数がない(closureを介さずdirectに呼び出せる)
         と仮定し、knownに追加してe1をクロージャ変換してみる *)
      let toplevel_backup = !toplevel in
      let env' = M.add x t env in
      let known' = S.add x known in
      let e1' = g (M.add_list yts env') known' e1 in
      (* 本当に自由変数がなかったか、変換結果e1'を確認する *)
      (* 注意: e1'にx自身が変数として出現する場合はclosureが必要!
         (thanks to nuevo-namasute and azounoman; test/cls-bug2.ml参照) *)
      let zs = S.diff (S.diff (fv e1') (S.of_list (List.map fst yts))) (S.of_list ["reg_hp"; "reg_hp_init"]) in
      let known', e1' =
        if S.is_empty zs then known', e1' else
        (* 駄目だったら状態(toplevelの値)を戻して、クロージャ変換をやり直す *)
        (Format.eprintf "free variable(s) %s found in function %s@." (Id.pp_list (S.elements zs)) x;
         Format.eprintf "function %s cannot be directly applied in fact@." x;
         toplevel := toplevel_backup;
         let e1' = g (M.add_list yts env') known e1 in
         known, e1') in
      let zs = S.elements (S.diff (S.diff (fv e1') (S.add x (S.of_list (List.map fst yts)))) (S.of_list ["reg_hp"; "reg_hp_init"])) in (* 自由変数のリスト *) (* S.diff s1 s2 = s1/s2 *)
      (* S.iter (Format.eprintf "%s ") (fv e1');
      Format.eprintf "\n";
      S.iter (Format.eprintf "%s ") (S.add x (S.of_list (List.map fst yts)));
      Format.eprintf "\n";
      List.iter (Format.eprintf "%s ") zs;
      Format.eprintf "\n"; *)
      let zts = List.map (fun z -> (z, M.find z env')) zs in (* ここで自由変数zの型を引くために引数envが必要 *)
      toplevel := { name = (Id.L(x), t); args = yts; formal_fv = zts; body = e1' } :: !toplevel; (* トップレベル関数を追加 *)
      let e2' = g env' known' e2 in
      if S.mem x (fv e2') then (* xが変数としてe2'に出現するか *)
        MakeCls((x, t), { entry = Id.L(x); actual_fv = zs }, e2', pos) (* 出現していたら削除しない *)
      else
        (Format.eprintf "eliminating closure(s) %s@." x;
         e2') (* 出現しなければMakeClsを削除 *)
  | KNormal.App(x, ys, pos) when S.mem x known -> (* 関数適用の場合 (caml2html: closure_app) *)
      Format.eprintf "directly applying %s@." x;
      AppDir(Id.L(x), ys, pos)
  | KNormal.App(f, xs, pos) -> AppCls(f, xs, pos)
  | KNormal.Tuple(xs, pos) -> Tuple(xs, pos)
  | KNormal.LetTuple(xts, y, e, pos) -> LetTuple(xts, y, g (M.add_list xts env) known e, pos)
  | KNormal.Get(x, y, pos) -> Get(x, y, pos)
  | KNormal.Put(x, y, z, pos) -> Put(x, y, z, pos)
  | KNormal.ExtArray(x, pos) -> ExtArray(Id.L(x), pos)
  | KNormal.ExtFunApp(x, ys, pos) -> AppDir(Id.L("min_caml_" ^ x), ys, pos)

let f e =
  Format.eprintf "global array(s):\n";
  List.iter (fun (x, (t, i)) -> Format.eprintf "%s %d\n" x i) (M.bindings !ConstFoldGlobals.globals);
  toplevel := [];
  let e' = g M.empty S.empty e in
  Prog(List.rev !toplevel, e')
