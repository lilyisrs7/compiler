(* translation into assembly with infinite number of virtual registers *)

open Asm

let data = ref [] (* 浮動小数点数の定数テーブル (caml2html: virtual_data) *)

let classify xts ini addf addi =
  List.fold_left
    (fun acc (x, t) ->
      match t with
      | Type.Unit -> acc
      | Type.Float -> addf acc x
      | _ -> addi acc x t)
    ini
    xts

let separate xts =
  classify
    xts
    ([], [])
    (fun (int, float) x -> (int, float @ [x]))
    (fun (int, float) x _ -> (int @ [x], float))

let expand xts ini addf addi =
  classify
    xts
    ini
    (fun (offset, acc) x ->
      let offset = align offset in
      (offset + 8, addf x offset acc))
    (fun (offset, acc) x t ->
      (offset + 4, addi x t offset acc))

let rec g env = function (* 式の仮想マシンコード生成 (caml2html: virtual_g) *)
  | Closure.Unit(pos) -> Ans(Nop, pos)
  | Closure.Int(i, pos) -> Ans(Set(i), pos)
  | Closure.Float(d, pos) ->
      let l =
        try
          (* すでに定数テーブルにあったら再利用 Cf. https://github.com/esumii/min-caml/issues/13 *)
          let (l, _) = List.find (fun (_, d') -> d = d') !data in
          l
        with Not_found ->
          let l = Id.L(Id.genid "l") in
          data := (l, d) :: !data;
          l in
      let x = Id.genid "l" in
      Let((x, Type.Int), SetL(l), Ans(LdDF(x, C(0), 1), pos), pos)
  | Closure.Neg(x, pos) -> Ans(Neg(x), pos)
  | Closure.Add(x, y, pos) -> Ans(Add(x, V(y)), pos)
  | Closure.Sub(x, y, pos) -> Ans(Sub(x, V(y)), pos)
  | Closure.Mul(x, y, pos) -> Ans(Mul(x, V(y)), pos)
  | Closure.Div(x, y, pos) -> Ans(Div(x, V(y)), pos)
  | Closure.FNeg(x, pos) -> Ans(FNegD(x), pos)
  | Closure.FAdd(x, y, pos) -> Ans(FAddD(x, y), pos)
  | Closure.FSub(x, y, pos) -> Ans(FSubD(x, y), pos)
  | Closure.FMul(x, y, pos) -> Ans(FMulD(x, y), pos)
  | Closure.FDiv(x, y, pos) -> Ans(FDivD(x, y), pos)
  | Closure.IfEq(x, y, e1, e2, pos) ->
      (match M.find x env with
      | Type.Bool | Type.Int -> Ans(IfEq(x, V(y), g env e1, g env e2), pos)
      | Type.Float -> Ans(IfFEq(x, y, g env e1, g env e2), pos)
      | _ -> failwith "equality supported only for bool, int, and float")
  | Closure.IfLE(x, y, e1, e2, pos) ->
      (match M.find x env with
      | Type.Bool | Type.Int -> Ans(IfLE(x, V(y), g env e1, g env e2), pos)
      | Type.Float -> Ans(IfFLE(x, y, g env e1, g env e2), pos)
      | _ -> failwith "inequality supported only for bool, int, and float")
  | Closure.Let((x, t1), e1, e2, pos) ->
      let e1' = g env e1 in
      let e2' = g (M.add x t1 env) e2 in
      concat e1' (x, t1) e2'
  | Closure.Var(x, pos) ->
      (match M.find x env with
      | Type.Unit -> Ans(Nop, pos)
      | Type.Float -> Ans(FMovD(x), pos)
      | _ -> Ans(Mov(x), pos))
  | Closure.MakeCls((x, t), { Closure.entry = l; Closure.actual_fv = ys }, e2, pos) -> (* クロージャの生成 (caml2html: virtual_makecls) *)
      (* Closureのアドレスをセットしてから、自由変数の値をストア *)
      let e2' = g (M.add x t env) e2 in
      let offset, store_fv =
        expand
          (List.map (fun y -> (y, M.find y env)) ys)
          (4, e2')
          (fun y offset store_fv -> seq(StDF(y, x, C(offset), 1), store_fv))
          (fun y _ offset store_fv -> seq(St(y, x, C(offset), 1), store_fv)) in
      Let((x, t), Mov(reg_hp),
          Let((reg_hp, Type.Int), Add(reg_hp, C(align offset)),
              (let z = Id.genid "l" in
              Let((z, Type.Int), SetL(l),
                  seq(St(z, x, C(0), 1),
                      store_fv), pos)), pos), pos)
  | Closure.AppCls(x, ys, pos) ->
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans(CallCls(x, int, float), pos)
  | Closure.AppDir(Id.L(x), ys, pos) ->
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans(CallDir(Id.L(x), int, float), pos)
  | Closure.Tuple(xs, pos) -> (* 組の生成 (caml2html: virtual_tuple) *)
      let y = Id.genid "t" in
      let (offset, store) =
        expand
          (List.map (fun x -> (x, M.find x env)) xs)
          (0, Ans(Mov(y), pos))
          (fun x offset store -> seq(StDF(x, y, C(offset), 1), store))
          (fun x _ offset store -> seq(St(x, y, C(offset), 1), store)) in
      Let((y, Type.Tuple(List.map (fun x -> M.find x env) xs)), Mov(reg_hp),
          Let((reg_hp, Type.Int), Add(reg_hp, C(align offset)),
              store, pos), pos)
  | Closure.LetTuple(xts, y, e2, pos) ->
      let s = Closure.fv e2 in
      let (offset, load) =
        expand
          xts
          (0, g (M.add_list xts env) e2)
          (fun x offset load ->
            if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
            fletd(x, LdDF(y, C(offset), 1), load))
          (fun x t offset load ->
            if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
            Let((x, t), Ld(y, C(offset), 1), load, pos)) in
      load
  | Closure.Get(x, y, pos) -> (* 配列の読み出し (caml2html: virtual_get) *)
      (match M.find x env with
      | Type.Array(Type.Unit) -> Ans(Nop, pos)
      | Type.Array(Type.Float) -> Ans(LdDF(x, V(y), 8), pos)
      | Type.Array(_) -> Ans(Ld(x, V(y), 4), pos)
      | _ -> assert false)
  | Closure.Put(x, y, z, pos) ->
      (match M.find x env with
      | Type.Array(Type.Unit) -> Ans(Nop, pos)
      | Type.Array(Type.Float) -> Ans(StDF(z, x, V(y), 8), pos)
      | Type.Array(_) -> Ans(St(z, x, V(y), 4), pos)
      | _ -> assert false)
  | Closure.ExtArray(Id.L(x), pos) -> Ans(SetL(Id.L("min_caml_" ^ x)), pos)

(* 関数の仮想マシンコード生成 (caml2html: virtual_h) *)
let h { Closure.name = (Id.L(x), t); Closure.args = yts; Closure.formal_fv = zts; Closure.body = e } =
  let (int, float) = separate yts in
  let (offset, load) =
    expand
      zts
      (4, g (M.add x t (M.add_list yts (M.add_list zts M.empty))) e)
      (fun z offset load -> fletd(z, LdDF(x, C(offset), 1), load))
      (fun z t offset load ->
        match e with
        | Closure.Unit(pos) | Closure.Int(_, pos) | Closure.Float(_, pos) | Neg(_, pos) | Add(_, _, pos) | Sub(_, _, pos)
        | Mul(_, _, pos) | Div(_, _, pos) | FNeg(_, pos) | FAdd(_, _, pos) | FSub(_, _, pos) | FMul(_, _, pos) | FDiv(_, _, pos)
        | IfEq(_, _, _, _, pos)| IfLE(_, _, _, _, pos) | Let(_, _, _, pos) | Var(_, pos)
        | MakeCls(_, _, _, pos) | AppCls(_, _, pos) | AppDir(_, _, pos) | Tuple(_, pos) | LetTuple(_, _, _, pos)
        | Get(_, _, pos) | Put(_, _, _, pos) | ExtArray(_, pos) -> Let((z, t), Ld(x, C(offset), 1), load, pos)) in
  (*let oc = open_out ("h_" ^ x ^ ".vt") in
  PrintType.print_knormal_t oc 0 (KNormal.Int(offset, 0));
  close_out oc;*)
  match t with
  | Type.Fun(_, t2) ->
      { name = Id.L(x); args = int; fargs = float; body = load; ret = t2 }
  | _ -> assert false

(* プログラム全体の仮想マシンコード生成 (caml2html: virtual_f) *)
let f (Closure.Prog(fundefs, e)) =
  data := [];
  let fundefs = List.map h fundefs in
  let e = g M.empty e in
  Prog(!data, fundefs, e)
