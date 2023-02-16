open Asm

let used_regs = ref S.empty
let func_use_reg = ref M.empty (* �ƴؿ���ǻ��Ѥ����쥸���� *)

(* for register coalescing *)
(* [XXX] Call�����ä��顢�����������̵��̣�Ȥ������ո��̤ʤΤ��ɤ�ʤ���
				 ���Τ���ˡ�Call�����ä����ɤ����פ��֤��ͤ���1���Ǥ˴ޤ�롣 *)
let rec target' src (dest, t) = function
	| Mov(x, _) when x = src && is_reg dest ->
			assert (t <> Type.Unit);
			assert (t <> Type.Float);
			false, [dest]
	| FMovD(x, _) when x = src && is_reg dest ->
			assert (t = Type.Float);
			false, [dest]
	| IfEq(_, _, e1, e2, _) | IfLE(_, _, e1, e2, _)	| IfFEq(_, _, e1, e2, _) | IfFLE(_, _, e1, e2, _) ->
			let c1, rs1 = target src (dest, t) e1 in
			let c2, rs2 = target src (dest, t) e2 in
			c1 && c2, rs1 @ rs2
	| CallCls(x, ys, zs, _) ->
			true, (target_args src regs 0 ys @
						 target_args src fregs 0 zs @
						 if x = src then [reg_cl] else [])
	| CallDir(_, ys, zs, _) ->
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
(* ��x86��2���ڥ���̿��Τ����register coalescing�� *)
(*let rec source t = function
	| Ans(exp) -> source' t exp
	| Let(_, _, e) -> source t e
and source' t = function
	| Mov(x) | Neg(x) | Add(x, C _) | Sub(x, _) | FMovD(x) | FNegD(x) | FSubD(x, _) | FDivD(x, _) -> [x]
	| Add(x, V y) | FAddD(x, y) | FMulD(x, y) -> [x; y]
	| IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) | IfFEq(_, _, e1, e2) | IfFLE(_, _, e1, e2) ->
			source t e1 @ source t e2
	| CallCls _ | CallDir _ -> (match t with Type.Unit -> [] | Type.Float -> [fregs.(0)] | _ -> [regs.(0)])
	| _ -> []*)

type alloc_result = (* alloc�ˤ�����spilling�����ä����ɤ�����ɽ���ǡ����� *)
	| Alloc of Id.t (* allocated register *)
	| Spill of Id.t (* spilled variable *)
(*let rec alloc cont regenv x t prefer =
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
	try*)
let rec alloc dest cont regenv x t =
	(* allocate a register or spill a variable *)
	(* Format.eprintf "%s\n" x; *)
	assert (not (M.mem x regenv));
	let all =
		match t with
		| Type.Unit -> ["%g0"] (* dummy *)
		| Type.Float -> allfregs
		| _ -> allregs in
	if all = ["%g0"] then Alloc("%g0") else (* [XX] ad hoc optimization *)
	if is_reg x then Alloc(x) else
	let free = fv cont in
	try
		let (c, prefer) = target x dest cont in
		let live = (* �����Ƥ���쥸���� *)
			List.fold_left
				(fun live y ->
					if is_reg y then S.add y live else
					try S.add (M.find y regenv) live
					with Not_found -> live)
				S.empty
				free in
		let r = (* �����Ǥʤ��쥸������õ�� *)
			List.find
				(fun r -> not (S.mem r live))
				(prefer @ all) in
		(* Format.eprintf "allocated %s to %s@." x r; *)
		Alloc(r)
	with Not_found ->
		Format.eprintf "register allocation failed for %s@." x;
		let y = (* ���ι礦�쥸�����ѿ���õ�� *)
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
	(* (if r.[0] = 'x' && String.length r = 2 && int_of_string (String.sub r 1 1) > !reg_max then reg_max := int_of_string (String.sub r 1 1)
	 else if r.[0] = 'x' && String.length r = 3 && int_of_string (String.sub r 1 2) < 27 && int_of_string (String.sub r 1 2) > !reg_max then reg_max := int_of_string (String.sub r 1 2)
	 else if r.[0] = 'f' && String.length r = 2 && int_of_string (String.sub r 1 1) > !freg_max then freg_max := int_of_string (String.sub r 1 1)
	 else if r.[0] = 'f' && String.length r = 3 && int_of_string (String.sub r 1 2) < 31 && int_of_string (String.sub r 1 2) > !freg_max then freg_max := int_of_string (String.sub r 1 2); *)
	(used_regs := S.add r !used_regs;
	 M.add x r regenv)

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

let rec g dest cont regenv = function (* ̿����Υ쥸����������� (caml2html: regalloc_g) *)
	| Ans(exp, pos) -> g'_and_restore dest cont regenv exp pos
	| Let((x, t) as xt, exp, e, pos) ->
			(* Format.eprintf "%s\n" x; *)
			assert (not (M.mem x regenv));
			let cont' = concat e dest cont in
			let (e1', regenv1, use_reg1) = g'_and_restore xt cont' regenv exp pos in
			(*let (_call, targets) = target x dest cont' in
			let sources = source t e1' in*)
			(* �쥸�����֤�mov�������𤹤�swap�Τۤ�������ʤΤǡ�sources���targets��ͥ�� *)
			(*(match alloc cont' regenv1 x t (targets @ sources) with*)
			(match alloc dest cont' regenv1 x t with
			| Spill(y) ->
					let r = M.find y regenv1 in
					let (e2', regenv2, use_reg2) = g dest cont (add x r (M.remove y regenv1)) e in
					let save =
						try Save(M.find y regenv, y, -1)
						with Not_found -> Nop(-1) in            
					(seq(save, concat e1' (r, t) e2'), regenv2, S.union use_reg1 use_reg2)
			| Alloc(r) ->
					let (e2', regenv2, use_reg2) = g dest cont (add x r regenv1) e in
					(concat e1' (r, t) e2', regenv2, S.add r (S.union use_reg1 use_reg2)))
and g'_and_restore dest cont regenv exp pos = (* ���Ѥ�����ѿ��򥹥��å�����쥸������Restore (caml2html: regalloc_unspill) *)
	try g' dest cont regenv pos exp
	with NoReg(x, t) ->
		((* Format.eprintf "restoring %s@." x; *)
		 g dest cont regenv (Let((x, t), Restore(x, -1), Ans(exp, pos), pos)))
and g' dest cont regenv pos = function (* ��̿��Υ쥸����������� (caml2html: regalloc_gprime) *)
	| Nop _ | Set _ | SetL _ | Comment _ | Restore _ as exp -> (Ans(exp, pos), regenv, S.empty)
	| Mov(x, id) -> let xr = find x Type.Int regenv in (Ans(Mov(xr, id), pos), regenv, S.singleton xr)
	| Neg(x, id) -> let xr = find x Type.Int regenv in (Ans(Neg(xr, id), pos), regenv, S.singleton xr)
	| Add(x, V(y), id) ->
			let xr = find x Type.Int regenv in
			let yr = find y Type.Int regenv in
			(Ans(Add(xr, V(yr), id), pos), regenv, S.of_list [xr; yr])
	| Add(x, C(y), id) ->
			let xr = find x Type.Int regenv in
			(Ans(Add(xr, C(y), id), pos), regenv, S.singleton xr)
	| Sub(x, y, id) ->
			let xr = find x Type.Int regenv in
			let yr = find y Type.Int regenv in
			(Ans(Sub(xr, yr, id), pos), regenv, S.of_list [xr; yr])
	| Mul(x, y, id) ->
			let xr = find x Type.Int regenv in
			let yr = find y Type.Int regenv in
			(Ans(Mul(xr, yr, id), pos), regenv, S.of_list [xr; yr])
	| Div(x, y, id) ->
			let xr = find x Type.Int regenv in
			let yr = find y Type.Int regenv in
			(Ans(Div(xr, yr, id), pos), regenv, S.of_list [xr; yr])
	| Ld(x, y', id) -> let xr = find x Type.Int regenv in (Ans(Ld(xr, find' y' regenv, id), pos), regenv, S.singleton xr)
	| St(x, y, z', id) ->
			let xr = find x Type.Int regenv in
			let yr = find y Type.Int regenv in
			(Ans(St(xr, yr, find' z' regenv, id), pos), regenv, S.of_list [xr; yr])
	| FMovD(x, id) -> let xr = find x Type.Float regenv in (Ans(FMovD(xr, id), pos), regenv, S.singleton xr)
	| FNegD(x, id) -> let xr = find x Type.Float regenv in (Ans(FNegD(xr, id), pos), regenv, S.singleton xr)
	| FAddD(x, y, id) ->
			let xr = find x Type.Float regenv in
			let yr = find y Type.Float regenv in
			(Ans(FAddD(xr, yr, id), pos), regenv, S.of_list [xr; yr])
	| FSubD(x, y, id) ->
			let xr = find x Type.Float regenv in
			let yr = find y Type.Float regenv in
			(Ans(FSubD(xr, yr, id), pos), regenv, S.of_list [xr; yr])
	| FMulD(x, y, id) ->
			let xr = find x Type.Float regenv in
			let yr = find y Type.Float regenv in
			(Ans(FMulD(xr, yr, id), pos), regenv, S.of_list [xr; yr])
	| FDivD(x, y, id) ->
			let xr = find x Type.Float regenv in
			let yr = find y Type.Float regenv in
			(Ans(FDivD(xr, yr, id), pos), regenv, S.of_list [xr; yr])
	| Sqrt(x, id) -> let xr = find x Type.Float regenv in (Ans(Sqrt(xr, id), pos), regenv, S.singleton xr)
	| LdDF(x, y', id) -> let xr = find x Type.Int regenv in (Ans(LdDF(xr, find' y' regenv, id), pos), regenv, S.singleton xr)
	| StDF(x, y, z', id) ->
			let xr = find x Type.Float regenv in
			let yr = find y Type.Int regenv in
			(Ans(StDF(xr, yr, find' z' regenv, id), pos), regenv, S.of_list [xr; yr])
	| IfEq(x, y, e1, e2, id) as exp -> g'_if dest cont regenv exp (fun e1' e2' -> IfEq(find x Type.Int regenv, find y Type.Int regenv, e1', e2', id)) e1 e2 pos
	| IfLE(x, y, e1, e2, id) as exp -> g'_if dest cont regenv exp (fun e1' e2' -> IfLE(find x Type.Int regenv, find y Type.Int regenv, e1', e2', id)) e1 e2 pos
	| IfFEq(x, y, e1, e2, id) as exp -> g'_if dest cont regenv exp (fun e1' e2' -> IfFEq(find x Type.Float regenv, find y Type.Float regenv, e1', e2', id)) e1 e2 pos
	| IfFLE(x, y, e1, e2, id) as exp -> g'_if dest cont regenv exp (fun e1' e2' -> IfFLE(find x Type.Float regenv, find y Type.Float regenv, e1', e2', id)) e1 e2 pos
	| CallCls(x, ys, zs, id) ->
			if List.length ys > Array.length regs - 2 || List.length zs > Array.length fregs - 1 then
				failwith (Format.sprintf "cannot allocate registers for arguments to %s" x)
			else
				g'_call dest cont regenv (fun ys zs -> CallCls(find x Type.Int regenv, ys, zs, id)) x ys zs id pos
	| CallDir(Id.L(x), ys, zs, id) ->
			if List.length ys > Array.length regs - 1 || List.length zs > Array.length fregs - 1 then
				failwith (Format.sprintf "cannot allocate registers for arguments to %s" x)
			else
				g'_call dest cont regenv (fun ys zs -> CallDir(Id.L(x), ys, zs, id)) x ys zs id pos
	| Save(x, y, id) -> assert false
and g'_if dest cont regenv exp constr e1 e2 pos = (* if�Υ쥸����������� (caml2html: regalloc_if) *)
	let (e1', regenv1, use_reg1) = g dest cont regenv e1 in
	let (e2', regenv2, use_reg2) = g dest cont regenv e2 in
	let regenv' = (* ξ���˶��̤Υ쥸�����ѿ��������� *)
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
	(* (List.fold_left
		 (fun e x ->
			 if x = fst dest || not (M.mem x regenv) || M.mem x regenv' then e else
			 seq(Save(M.find x regenv, x, -1), e)) (* �����Ǥʤ��ѿ���ʬ��ľ���˥����� *)
		 (Ans(constr e1' e2', pos))
		 (fv cont),
	 regenv', S.union use_reg1 use_reg2) *)
	List.fold_left
	 	(fun (e, regenv', use_reg) x ->
		 	if x = fst dest || not (M.mem x regenv) || M.mem x regenv' then (e, regenv', use_reg) else
			(* if not (S.mem (M.find x regenv) use_reg) then (e, M.add x (M.find x regenv) regenv', use_reg) else *)
		 	seq(Save(M.find x regenv, x, -1), e), regenv', use_reg) (* �����Ǥʤ��ѿ���ʬ��ľ���˥����� *)
	 	(Ans(constr e1' e2', pos), regenv', S.union (S.of_list [reg_cl; reg_sw; reg_fsw]) (S.union use_reg1 use_reg2))
	 	(fv cont)
and g'_call dest cont regenv constr x ys zs id pos = (* �ؿ��ƤӽФ��Υ쥸����������� (caml2html: regalloc_call) *)
	let yrs = List.map (fun y -> find y Type.Int regenv) ys in
	let zrs = List.map (fun z -> find z Type.Float regenv) zs in
	let use_reg =
		if String.starts_with ~prefix:"min_caml_" x then S.of_list (yrs @ zrs)
		else S.union (S.of_list [reg_cl; reg_sw; reg_fsw]) (S.of_list (yrs @ zrs)) in
	if M.mem x !func_use_reg then
		let use_reg = S.union use_reg (M.find x !func_use_reg) in
		List.fold_left
	 		(fun (e, regenv', use_reg) y ->
				 if y = fst dest || not (M.mem y regenv) then (e, regenv', use_reg) else
				 (* if not (S.mem (M.find y regenv) use_reg) then (e, M.add y (M.find y regenv) regenv', use_reg) else *)
				 (seq(Save(M.find y regenv, y, id), e), regenv', use_reg))
	 		(Ans(constr yrs zrs, pos), M.empty, use_reg)
	 		(fv cont)
	else (* �Ƶ��ؿ�����Ȥξ�� *)
		List.fold_left
	 		(fun (e, regenv', use_reg) y ->
				 if y = fst dest || not (M.mem y regenv) then (e, regenv', use_reg) else
				 (seq(Save(M.find y regenv, y, id), e), regenv', use_reg))
	 		(Ans(constr yrs zrs, pos), M.empty, use_reg)
	 		(fv cont)
	(* (List.fold_left
		 (fun e r ->
			 (* Format.eprintf "%s %s\n" x r; *)
			 if r = fst dest || not (M.mem r regenv) then e else
			 seq(Save(M.find r regenv, r), e))
		 (Ans(constr
						(List.map (fun y -> find y Type.Int regenv) ys)
						(List.map (fun z -> find z Type.Float regenv) zs), pos))
		 (fv cont),
	 M.empty
	 ) *)

let h { name = Id.L(x); args = ys; fargs = zs; body = e; ret = t } = (* �ؿ��Υ쥸����������� (caml2html: regalloc_h) *)
	(*if List.length ys > Array.length regs || List.length zs > Array.length fregs then
		Format.eprintf "too many arguments for function %s@." x;*)
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
		| Ans(_, pos) | Let(_, _, _, pos) ->
				let e', regenv', use_reg = g (a, t) (Ans(Mov(a, -1), pos)) regenv e in
				(func_use_reg := M.add x use_reg !func_use_reg;
				 Format.eprintf "use_reg : %s " x;
				 S.iter (Format.eprintf "%s ") use_reg;
				 Format.eprintf "\n";
				 { name = Id.L(x); args = arg_regs; fargs = farg_regs; body = e'; ret = t })

let f (Prog(data, fundefs, e)) = (* �ץ�������ΤΥ쥸����������� (caml2html: regalloc_f) *)
	Format.eprintf "register allocation: may take some time (up to a few minutes, depending on the size of functions)@.";
	func_use_reg := M.add "min_caml_print_char" (S.singleton "x4")
									(M.add "min_caml_print_int" (S.singleton "x4")
									(M.add "min_caml_read_int" (S.singleton "x4")
									(M.add "min_caml_read_float" (S.singleton "f1") 
									(M.add "min_caml_create_array" (S.of_list ["x4"; "x5"; "x6"])
									(M.add "min_caml_create_float_array" (S.of_list ["x4"; "x5"; "f1"])
									(M.add "min_caml_int_of_float" (S.of_list ["x4"; "x5"; "x6"; "x7"; "f1"])
									(M.add "min_caml_float_of_int" (S.of_list ["x4"; "x5"; "x6"; "f1"; "f2"])
									(M.add "min_caml_floor" (S.of_list ["x4"; "x5"; "x6"; "x7"; "f1"; "f2"]) !func_use_reg))))))));
	let fundefs' = List.map h fundefs in
	match e with
	| Ans(_, pos) | Let(_, _, _, pos) -> let e', regenv', use_reg = g (Id.gentmp Type.Unit, Type.Unit) (Ans(Nop(-1), pos)) M.empty e in
																			 Prog(data, fundefs', e')
