open Asm

(* for register coalescing *)
(* [XXX] Callがあったら、そこから先は無意味というか逆効果なので追わない。
         そのために「Callがあったかどうか」を返り値の第1要素に含める。 *)
let rec target' src (dest, t) = function
  | Mov(x) when x = src && is_reg dest ->
      assert (t <> Type.Unit);
      assert (t <> Type.Float);
      false, [dest]
  | FMovD(x) when x = src && is_reg dest ->
      assert (t = Type.Float);
      false, [dest]
  | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) | IfGE(_, _, e1, e2)
  | IfFEq(_, _, e1, e2) | IfFLE(_, _, e1, e2) ->
      let c1, rs1 = target src (dest, t) e1 in
      let c2, rs2 = target src (dest, t) e2 in
      c1 && c2, rs1 @ rs2
  | CallCls(x, ys, zs) ->
      true, (target_args src regs 0 ys @
             target_args src fregs 0 zs @
             if x = src then [reg_cl] else [])
  | CallDir(_, ys, zs) ->
      true, (target_args src regs 0 ys @
             target_args src fregs 0 zs)
  | _ -> false, []
and target src dest = function (* register targeting (caml2html: regalloc_target) *)
  | Ans(exp, pos) -> target' src dest exp
  | Let(xt, exp, e, pos) ->
      let c1, rs1 = target' src xt exp in
      if c1 then true, rs1 else
      let c2, rs2 = target src dest e in
      c2, rs1 @ rs2
and target_args src all n = function (* auxiliary function for Call *)
  | [] -> []
  | y :: ys when src = y (* && n <= List.length all - 2 *) ->
      all.(n) :: target_args src all (n + 1) ys
  | _ :: ys -> target_args src all (n + 1) ys
(* "register sourcing" (?) as opposed to register targeting *)
(* （x86の2オペランド命令のためのregister coalescing） *)
let rec source t = function
  | Ans(exp, pos) -> source' t exp
  | Let(_, _, e, pos) -> source t e
and source' t = function
  | Mov(x) | Neg(x) | Add(x, C _) | Sub(x, _) | FMovD(x) | FNegD(x) | FSubD(x, _) | FDivD(x, _) -> [x] (*Mul, Div?*)
  | Add(x, V y) | FAddD(x, y) | FMulD(x, y) -> [x; y]
  | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) | IfGE(_, _, e1, e2) | IfFEq(_, _, e1, e2) | IfFLE(_, _, e1, e2) ->
      source t e1 @ source t e2
  | CallCls _ | CallDir _ -> (match t with Type.Unit -> [] | Type.Float -> [fregs.(0)] | _ -> [regs.(0)])
  | _ -> []

type alloc_result = (* allocにおいてspillingがあったかどうかを表すデータ型 *)
  | Alloc of Id.t (* allocated register *)
  | Spill of Id.t (* spilled variable *)
let rec alloc cont regenv x t prefer =
  (* allocate a register or spill a variable *)
  assert (not (M.mem x regenv));
  let all =
    match t with
    | Type.Unit -> [] (* dummy *)
    | Type.Float -> allfregs
    | _ -> allregs in
  if all = [] then Alloc("%unit") else (* [XX] ad hoc *)
  if is_reg x then Alloc(x) else
  let free = fv cont in
  try
    let live = (* 生きているレジスタ *)
      List.fold_left
        (fun live y ->
          if is_reg y then S.add y live else
          try S.add (M.find y regenv) live
          with Not_found -> live)
        S.empty
        free in
    let r = (* そうでないレジスタを探す *)
      List.find
        (fun r -> not (S.mem r live))
        (prefer @ all) in
    (* Format.eprintf "allocated %s to %s@." x r; *)
    Alloc(r)
  with Not_found ->
    Format.eprintf "register allocation failed for %s@." x;
    let y = (* 型の合うレジスタ変数を探す *)
      List.find
        (fun y ->
          not (is_reg y) &&
          try List.mem (M.find y regenv) all
          with Not_found -> false)
        (List.rev free) in
    Format.eprintf "spilling %s from %s@." y (M.find y regenv);
    Spill(y)

(* auxiliary function for g and g'_and_restore *)
let add x r regenv =
  if is_reg x then (assert (x = r); regenv) else
  M.add x r regenv

(* auxiliary functions for g' *)
exception NoReg of Id.t * Type.t
let find x t regenv =
  if is_reg x then x else
  try M.find x regenv
  with Not_found -> raise (NoReg(x, t))
let find' x' regenv =
  match x' with
  | V(x) -> V(find x Type.Int regenv)
  | c -> c

  let rec g dest cont regenv = function (* 命令列のレジスタ割り当て (caml2html: regalloc_g) *)
  | Ans(exp, pos) -> g'_and_restore dest cont regenv exp pos
  | Let((x, t) as xt, exp, e, pos) ->
      assert (not (M.mem x regenv));
      let cont' = concat e dest cont in
      let (e1', regenv1) = g'_and_restore xt cont' regenv exp pos in
      let (_call, targets) = target x dest cont' in
      let sources = source t e1' in
      (* レジスタ間のmovよりメモリを介するswapのほうが問題なので、sourcesよりtargetsを優先 *)
      (match alloc cont' regenv1 x t (targets @ sources) with
      | Spill(y) ->
          let r = M.find y regenv1 in
          let (e2', regenv2) = g dest cont (add x r (M.remove y regenv1)) e in
          let save =
            try Save(M.find y regenv, y)
            with Not_found -> Nop in            
          (seq(save, concat e1' (r, t) e2'), regenv2)
      | Alloc(r) ->
          let (e2', regenv2) = g dest cont (add x r regenv1) e in
          (concat e1' (r, t) e2', regenv2))
and g'_and_restore dest cont regenv exp pos = (* 使用される変数をスタックからレジスタへRestore (caml2html: regalloc_unspill) *)
  (*match cont with
  | Ans(_, pos) | Let(_, _, _, pos) -> try g' dest cont regenv pos exp
                                       with NoReg(x, t) ->
                                       ((* Format.eprintf "restoring %s@." x; *)
                                        g dest cont regenv (Let((x, t), Restore(x), Ans(exp, pos), pos)))*)
  try g' dest cont regenv pos exp
  with NoReg(x, t) ->
    ((* Format.eprintf "restoring %s@." x; *)
     g dest cont regenv (Let((x, t), Restore(x), Ans(exp, pos), pos)))
and g' dest cont regenv pos = function (* 各命令のレジスタ割り当て (caml2html: regalloc_gprime) *)
  | Nop | Set _ | SetL _ | Comment _ | Restore _ as exp -> (Ans(exp, pos), regenv)
  | Mov(x) -> (Ans(Mov(find x Type.Int regenv), pos), regenv)
  | Neg(x) -> (Ans(Neg(find x Type.Int regenv), pos), regenv)
  | Add(x, y') -> (Ans(Add(find x Type.Int regenv, find' y' regenv), pos), regenv)
  | Sub(x, y') -> (Ans(Sub(find x Type.Int regenv, find' y' regenv), pos), regenv)
  | Mul(x, y') -> (Ans(Mul(find x Type.Int regenv, find' y' regenv), pos), regenv)
  | Div(x, y') -> (Ans(Div(find x Type.Int regenv, find' y' regenv), pos), regenv)
  | Ld(x, y', i) -> (Ans(Ld(find x Type.Int regenv, find' y' regenv, i), pos), regenv)
  | St(x, y, z', i) -> (Ans(St(find x Type.Int regenv, find y Type.Int regenv, find' z' regenv, i), pos), regenv)
  | FMovD(x) -> (Ans(FMovD(find x Type.Float regenv), pos), regenv)
  | FNegD(x) -> (Ans(FNegD(find x Type.Float regenv), pos), regenv)
  | FAddD(x, y) -> (Ans(FAddD(find x Type.Float regenv, find y Type.Float regenv), pos), regenv)
  | FSubD(x, y) -> (Ans(FSubD(find x Type.Float regenv, find y Type.Float regenv), pos), regenv)
  | FMulD(x, y) -> (Ans(FMulD(find x Type.Float regenv, find y Type.Float regenv), pos), regenv)
  | FDivD(x, y) -> (Ans(FDivD(find x Type.Float regenv, find y Type.Float regenv), pos), regenv)
  | LdDF(x, y', i) -> (Ans(LdDF(find x Type.Int regenv, find' y' regenv, i), pos), regenv)
  | StDF(x, y, z', i) -> (Ans(StDF(find x Type.Float regenv, find y Type.Int regenv, find' z' regenv, i), pos), regenv)
  | IfEq(x, y', e1, e2) as exp -> g'_if dest cont regenv exp (fun e1' e2' -> IfEq(find x Type.Int regenv, find' y' regenv, e1', e2')) e1 e2 pos
  | IfLE(x, y', e1, e2) as exp -> g'_if dest cont regenv exp (fun e1' e2' -> IfLE(find x Type.Int regenv, find' y' regenv, e1', e2')) e1 e2 pos
  | IfGE(x, y', e1, e2) as exp -> g'_if dest cont regenv exp (fun e1' e2' -> IfGE(find x Type.Int regenv, find' y' regenv, e1', e2')) e1 e2 pos
  | IfFEq(x, y, e1, e2) as exp -> g'_if dest cont regenv exp (fun e1' e2' -> IfFEq(find x Type.Float regenv, find y Type.Float regenv, e1', e2')) e1 e2 pos
  | IfFLE(x, y, e1, e2) as exp -> g'_if dest cont regenv exp (fun e1' e2' -> IfFLE(find x Type.Float regenv, find y Type.Float regenv, e1', e2')) e1 e2 pos
  | CallCls(x, ys, zs) as exp ->
      if List.length ys > Array.length regs - 1 || List.length zs > Array.length fregs then
        failwith (Format.sprintf "cannot allocate registers for arugments to %s" x)
      else
        g'_call dest cont regenv exp (fun ys zs -> CallCls(find x Type.Int regenv, ys, zs)) ys zs pos
  | CallDir(Id.L(x), ys, zs) as exp ->
      if List.length ys > Array.length regs || List.length zs > Array.length fregs then
        failwith (Format.sprintf "cannot allocate registers for arugments to %s" x)
      else
        g'_call dest cont regenv exp (fun ys zs -> CallDir(Id.L(x), ys, zs)) ys zs pos
  | Save(x, y) -> assert false
and g'_if dest cont regenv exp constr e1 e2 pos = (* ifのレジスタ割り当て (caml2html: regalloc_if) *)
  let (e1', regenv1) = g dest cont regenv e1 in
  let (e2', regenv2) = g dest cont regenv e2 in
  let regenv' = (* 両方に共通のレジスタ変数だけ利用 *)
    List.fold_left
      (fun regenv' x ->
        try
          if is_reg x then regenv' else
          let r1 = M.find x regenv1 in
          let r2 = M.find x regenv2 in
          if r1 <> r2 then regenv' else
          M.add x r1 regenv'
        with Not_found -> regenv')
      M.empty
      (fv cont) in
  (List.fold_left
     (fun e x ->
       if x = fst dest || not (M.mem x regenv) || M.mem x regenv' then e else
       seq(Save(M.find x regenv, x), e)) (* そうでない変数は分岐直前にセーブ *)
     (Ans(constr e1' e2', pos))
     (fv cont),
   regenv')
and g'_call dest cont regenv exp constr ys zs pos = (* 関数呼び出しのレジスタ割り当て (caml2html: regalloc_call) *)
  (List.fold_left
     (fun e x ->
       if x = fst dest || not (M.mem x regenv) then e else
       seq(Save(M.find x regenv, x), e))
     (Ans(constr
            (List.map (fun y -> find y Type.Int regenv) ys)
            (List.map (fun z -> find z Type.Float regenv) zs), pos))
     (fv cont),
   M.empty)

let h { name = Id.L(x); args = ys; fargs = zs; body = e; ret = t } = (* 関数のレジスタ割り当て (caml2html: regalloc_h) *)
  if List.length ys > Array.length regs || List.length zs > Array.length fregs then
    Format.eprintf "too many arguments for function %s@." x;
  let regenv = M.add x reg_cl M.empty in
  let (i, arg_regs, regenv) =
    List.fold_left
      (fun (i, arg_regs, regenv) y ->
        let r = regs.(i) in
        (i + 1,
         arg_regs @ [r],
         (assert (not (is_reg y));
          M.add y r regenv)))
      (0, [], regenv)
      ys in
  let (d, farg_regs, regenv) =
    List.fold_left
      (fun (d, farg_regs, regenv) z ->
        let fr = fregs.(d) in
        (d + 1,
         farg_regs @ [fr],
         (assert (not (is_reg z));
          M.add z fr regenv)))
      (0, [], regenv)
      zs in
  let a =
    match t with
    | Type.Unit -> Id.gentmp Type.Unit
    | Type.Float -> fregs.(0)
    | _ -> regs.(0) in
    match e with
    | Ans(_, pos) | Let(_, _, _, pos) -> let (e', regenv') = g (a, t) (Ans(Mov(a), pos)) regenv e in
                                         { name = Id.L(x); args = arg_regs; fargs = farg_regs; body = e'; ret = t }

let f (Prog(data, fundefs, e)) = (* プログラム全体のレジスタ割り当て (caml2html: regalloc_f) *)
  Format.eprintf "register allocation: may take some time (up to a few minutes, depending on the size of functions)@.";
  let fundefs' = List.map h fundefs in
  match e with
  | Ans(_, pos) | Let(_, _, _, pos) -> let e', regenv' = g (Id.gentmp Type.Unit, Type.Unit) (Ans(Nop, pos)) M.empty e in
                                       Prog(data, fundefs', e')
