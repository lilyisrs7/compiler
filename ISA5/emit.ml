open RiscV

let print oc = function
| Label(s) -> Printf.fprintf oc "%s:\n" s
| Addi(x, y, i, p) -> Printf.fprintf oc "\taddi\t%s, %s, %d\t# %d\n" x y i p
| Add(x, y, z, p) -> Printf.fprintf oc "\tadd\t\t%s, %s, %s\t# %d\n" x y z p
| Sub(x, y, z, p) -> Printf.fprintf oc "\tsub\t\t%s, %s, %s\t# %d\n" x y z p
| Mul(x, y, z, p) -> Printf.fprintf oc "\tmul\t\t%s, %s, %s\t# %d\n" x y z p
| Div(x, y, z, p) -> Printf.fprintf oc "\tdiv\t\t%s, %s, %s\t# %d\n" x y z p
| Lui(x, i, p) ->    Printf.fprintf oc "\tlui\t\t%s, %d\t# %d\n" x i p
| Ori(x, y, i, p) -> Printf.fprintf oc "\tori\t\t%s, %s, %d\t# %d\n" x y i p
| LuiLb(x, l, p) ->  Printf.fprintf oc "\tlui\t\t%s, %%hi(%s)\t# %d\n" x l p
| OriLb(x, y, l, p) -> Printf.fprintf oc "\tori\t\t%s, %s, %%lo(%s)\t# %d\n" x y l p
| Lw(x, i, y, p) ->   Printf.fprintf oc "\tlw\t\t%s, %d(%s)\t# %d\n" x i y p
| Sw(x, i, y, p) ->   Printf.fprintf oc "\tsw\t\t%s, %d(%s)\t# %d\n" x i y p
| FAdd(x, y, z, p) -> Printf.fprintf oc "\tfadd\t%s, %s, %s\t# %d\n" x y z p
| FSub(x, y, z, p) -> Printf.fprintf oc "\tfsub\t%s, %s, %s\t# %d\n" x y z p
| FMul(x, y, z, p) -> Printf.fprintf oc "\tfmul\t%s, %s, %s\t# %d\n" x y z p
| FDiv(x, y, z, p) -> Printf.fprintf oc "\tfdiv\t%s, %s, %s\t# %d\n" x y z p
| FSqrt(x, y, p) ->   Printf.fprintf oc "\tfsqrt\t%s, %s\t# %d\n" x y p
| FLw(x, i, y, p) -> Printf.fprintf oc "\tflw\t\t%s, %d(%s)\t# %d\n" x i y p
| FSw(x, i, y, p) -> Printf.fprintf oc "\tfsw\t\t%s, %d(%s)\t# %d\n" x i y p
| Comment(s, p) ->   Printf.fprintf oc "\t# %s\t# %d\n" s p
| Jal(x, l, p) ->    Printf.fprintf oc "\tjal\t\t%s, %s\t# %d\n" x l p
| Jalr(x, y, i, p) -> Printf.fprintf oc "\tjalr\t%s, %s, %d\t# %d\n" x y i p
| Beq(x, y, l, p) -> Printf.fprintf oc "\tbeq\t\t%s, %s, %s\t# %d\n" x y l p
| Ble(x, y, l, p) -> Printf.fprintf oc "\tble\t\t%s, %s, %s\t# %d\n" x y l p
| Feq(x, y, l, p) -> Printf.fprintf oc "\tfeq\t\t%s, %s, %s\t# %d\n" x y l p
| Fle(x, y, l, p) -> Printf.fprintf oc "\tfle\t\t%s, %s, %s\t# %d\n" x y l p

let rec elim_jump remove repl content acc remove_flg = (* ジャンプ連鎖除去 *)
  match content with
  | Label(s) :: tl ->
      if List.mem s remove then elim_jump remove repl tl acc false
      else elim_jump remove repl tl (Label(s) :: acc) false
  | Jal(x, l, p) :: tl when x = Asm.reg_zero ->
      if remove_flg then elim_jump remove repl tl acc true
      else
        let e = if M.mem l repl then Jal(x, M.find l repl, p) else Jal(x, l, p) in
        elim_jump remove repl tl (e :: acc) false
  | Beq(x, y, l, p) :: tl ->
      if remove_flg then elim_jump remove repl tl acc true
      else
        let e = if M.mem l repl then Beq(x, y, M.find l repl, p) else Beq(x, y, l, p) in
        elim_jump remove repl tl (e :: acc) false
  | Ble(x, y, l, p) :: tl ->
      if remove_flg then elim_jump remove repl tl acc true
      else
        let e = if M.mem l repl then Ble(x, y, M.find l repl, p) else Ble(x, y, l, p) in
        elim_jump remove repl tl (e :: acc) false
  | Feq(x, y, l, p) :: tl ->
      if remove_flg then elim_jump remove repl tl acc true
      else
        let e = if M.mem l repl then Feq(x, y, M.find l repl, p) else Feq(x, y, l, p) in
        elim_jump remove repl tl (e :: acc) false
  | Fle(x, y, l, p) :: tl ->
      if remove_flg then elim_jump remove repl tl acc true
      else
        let e = if M.mem l repl then Fle(x, y, M.find l repl, p) else Fle(x, y, l, p) in
        elim_jump remove repl tl (e :: acc) false
  | [] -> List.rev acc
  | hd :: tl ->
      if remove_flg then elim_jump remove repl tl acc true
      else
        elim_jump remove repl tl (hd :: acc) false

let rec separate_label e remove lb ct repl =
  match e with
  | Label(s) :: tl ->
      (match ct with
       | [] ->
          ((* Format.eprintf "remove label %s\n" lb; Format.eprintf "replace label %s with %s\n" lb s; *)
           separate_label tl (lb :: remove) s [] (M.add lb s repl))
       | [Jal(x, l, p)] ->
          ((* Format.eprintf "remove label %s\n" lb; Format.eprintf "replace label %s with %s\n" lb s; *)
           separate_label tl (lb :: remove) s [] (M.add lb l repl))
       | _ -> separate_label tl remove s [] repl)
  | [] -> remove, repl
  | hd :: tl -> separate_label tl remove lb (hd :: ct) repl

let rec repl_assoc repl key =
  if M.mem key repl then repl_assoc repl (M.find key repl)
  else key

let rec elim_jump_seq = function
| Jal(x, l, pos) :: Jal _ :: tl when x = Asm.reg_zero ->
    elim_jump_seq (Jal(x, l, pos) :: tl)
| Beq(x1, x2, lb, pos) :: Beq(x3, x4, _, _) :: tl when (x1 = x3 && x2 = x4) || (x1 = x4 && x2 = x3) ->
    elim_jump_seq (Beq(x1, x2, lb, pos) :: tl)
| Ble(x1, x2, lb, pos) :: Ble(x3, x4, _, _) :: tl when x1 = x3 && x2 = x4 ->
    elim_jump_seq (Ble(x1, x2, lb, pos) :: tl)
| Feq(x1, x2, lb, pos) :: Feq(x3, x4, _, _) :: tl when (x1 = x3 && x2 = x4) || (x1 = x4 && x2 = x3) ->
    elim_jump_seq (Feq(x1, x2, lb, pos) :: tl)
| Fle(x1, x2, lb, pos) :: Fle(x3, x4, _, _) :: tl when x1 = x3 && x2 = x4 ->
    elim_jump_seq (Fle(x1, x2, lb, pos) :: tl)
| [] -> []
| hd :: tl -> hd :: (elim_jump_seq tl)

let rec elim_jump2 = function
| Jal(x, l1, p) :: Label(l2) :: tl when x = Asm.reg_zero && l1 = l2 ->
    elim_jump2 (Label(l2) :: tl)
| [] -> []
| hd :: tl -> hd :: (elim_jump2 tl)

let f oc (data, content) =
  let remove, repl =
    match content with
    | Label(s) :: tl -> separate_label tl [] s [] M.empty
    | _ -> failwith "no label in the first line\n" in
  let repl = M.map (repl_assoc repl) repl in
  let content' = elim_jump remove repl content [] false in
  let content'' = elim_jump_seq content' in
  let asm = elim_jump2 content'' in

  Format.eprintf "generating assembly...@.";
  List.iter
    (fun (Id.L(x), d) ->
      Printf.fprintf oc "%s:\t# %f\n" x d;
      Printf.fprintf oc "\t.word\t%f\n" d)
    data;
  List.iter (print oc) asm;
  Printf.fprintf oc "\tEXIT\t\n"
