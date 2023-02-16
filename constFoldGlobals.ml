open KNormal

let globals = ref M.empty
let addr_init = 44260
let addr = ref addr_init
let last = ref false

let rec h = function (* fundef中のグローバル配列のアドレス、グローバル変数を書き換え *)
| Neg(x, pos) ->
    List.fold_left
      (fun e x ->
        if M.mem x !globals then
          let t, v = M.find x !globals in
          let _ = Format.eprintf "neg %s %d\n" x pos in
          Let((x, t), v, e, pos)
        else e)
      (Neg(x, pos))
      [x]
| Add(x, y, pos) ->
    List.fold_left
      (fun e x ->
        if M.mem x !globals then
          let t, v = M.find x !globals in
          let _ = Format.eprintf "add %s %d\n" x pos in
          Let((x, t), v, e, pos)
        else e)
      (Add(x, y, pos))
      [y; x]
| Sub(x, y, pos) ->
    List.fold_left
      (fun e x ->
        if M.mem x !globals then
          let t, v = M.find x !globals in
          let _ = Format.eprintf "sub %s %d\n" x pos in
          Let((x, t), v, e, pos)
        else e)
      (Sub(x, y, pos))
      [y; x]
| Mul(x, y, pos) ->
    List.fold_left
      (fun e x ->
        if M.mem x !globals then
          let t, v = M.find x !globals in
          let _ = Format.eprintf "mul %s %d\n" x pos in
          Let((x, t), v, e, pos)
        else e)
      (Mul(x, y, pos))
      [y; x]
| Div(x, y, pos) ->
    List.fold_left
      (fun e x ->
        if M.mem x !globals then
          let t, v = M.find x !globals in
          let _ = Format.eprintf "div %s %d\n" x pos in
          Let((x, t), v, e, pos)
        else e)
      (Div(x, y, pos))
      [y; x]
| FNeg(x, pos) ->
    List.fold_left
      (fun e x ->
        if M.mem x !globals then
          let t, v = M.find x !globals in
          let _ = Format.eprintf "fneg %s %d\n" x pos in
          Let((x, t), v, e, pos)
        else e)
      (FNeg(x, pos))
      [x]
| FAdd(x, y, pos) ->
    List.fold_left
      (fun e x ->
        if M.mem x !globals then
          let t, v = M.find x !globals in
          let _ = Format.eprintf "fadd %s %d\n" x pos in
          Let((x, t), v, e, pos)
        else e)
      (FAdd(x, y, pos))
      [y; x]
| FSub(x, y, pos) ->
    List.fold_left
      (fun e x ->
        if M.mem x !globals then
          let t, v = M.find x !globals in
          let _ = Format.eprintf "fsub %s %d\n" x pos in
          Let((x, t), v, e, pos)
        else e)
      (FSub(x, y, pos))
      [y; x]
| FMul(x, y, pos) ->
    List.fold_left
      (fun e x ->
        if M.mem x !globals then
          let t, v = M.find x !globals in
          let _ = Format.eprintf "fmul %s %d\n" x pos in
          Let((x, t), v, e, pos)
        else e)
      (FMul(x, y, pos))
      [y; x]
| FDiv(x, y, pos) ->
    List.fold_left
      (fun e x ->
        if M.mem x !globals then
          let t, v = M.find x !globals in
          let _ = Format.eprintf "fdiv %s %d\n" x pos in
          Let((x, t), v, e, pos)
        else e)
      (FDiv(x, y, pos))
      [y; x]
| IfEq(x, y, e1, e2, pos) ->
    List.fold_left
      (fun e x ->
        if M.mem x !globals then
          let t, v = M.find x !globals in
          let _ = Format.eprintf "ifeq %s %d\n" x pos in
          Let((x, t), v, e, pos)
        else e)
      (IfEq(x, y, h e1, h e2, pos))
      [y; x]
| IfLE(x, y, e1, e2, pos) ->
    List.fold_left
      (fun e x ->
        if M.mem x !globals then
          let t, v = M.find x !globals in
          let _ = Format.eprintf "ifle %s %d\n" x pos in
          Let((x, t), v, e, pos)
        else e)
      (IfLE(x, y, h e1, h e2, pos))
      [y; x]
| Let(xt, e1, e2, pos) -> Let(xt, h e1, h e2, pos)
| Var(x, pos) ->
    List.fold_left
      (fun e x ->
        if M.mem x !globals then
          let t, v = M.find x !globals in
          let _ = Format.eprintf "var %s %d\n" x pos in
          Let((x, t), v, e, pos)
        else e)
      (Var(x, pos))
      [x]
| LetRec({ name = xt; args = yts; body = e1 }, e2, pos) ->
    LetRec({ name = xt; args = yts; body = h e1 }, h e2, pos)
| App(x, ys, pos) ->
    List.fold_left
      (fun e x ->
        if M.mem x !globals then
          let t, v = M.find x !globals in
          let _ = Format.eprintf "app %s %d\n" x pos in
          Let((x, t), v, e, pos)
        else e)
      (App(x, ys, pos))
      ys
| Tuple(xs, pos) ->
    List.fold_left
      (fun e x ->
        if M.mem x !globals then
          let t, v = M.find x !globals in
          let _ = Format.eprintf "tuple %s %d\n" x pos in
          Let((x, t), v, e, pos)
        else e)
      (Tuple(xs, pos))
      xs
| LetTuple(xts, y, e, pos) ->
    List.fold_left
      (fun e x ->
        if M.mem x !globals then
          let t, v = M.find x !globals in
          let _ = Format.eprintf "lettuple %s %d\n" x pos in
          Let((x, t), v, e, pos)
        else e)
      (LetTuple(xts, y, h e, pos))
      [y]
| Get(x, y, pos) ->
    List.fold_left
      (fun e x ->
        if M.mem x !globals then
          let t, v = M.find x !globals in
          let _ = Format.eprintf "get %s %d\n" x pos in
          Let((x, t), v, e, pos)
        else e)
      (Get(x, y, pos))
      [y; x]
| Put(x, y, z, pos) ->
    List.fold_left
      (fun e x ->
        if M.mem x !globals then
          let t, v = M.find x !globals in
          let _ = Format.eprintf "put %s %d\n" x pos in
          Let((x, t), v, e, pos)
        else e)
      (Put(x, y, z, pos))
      [z; y; x]
| ExtFunApp(x, ys, pos) ->
    List.fold_left
      (fun e x ->
        if M.mem x !globals then
          let t, v = M.find x !globals in
          let _ = Format.eprintf "extfunapp %s %d\n" x pos in
          Let((x, t), v, e, pos)
        else e)
      (ExtFunApp(x, ys, pos))
      ys
| e -> e

let rec g env_int = function (* 初めに定義されるグローバル配列のアドレスを決定 *)
| IfEq(x, y, e1, e2, pos) ->
    let e1' = g env_int e1 in
    let e2' = g env_int e2 in 
    IfEq(x, y, e1', e2', pos)
| IfLE(x, y, e1, e2, pos) ->
    let e1' = g env_int e1 in
    let e2' = g env_int e2 in
    IfLE(x, y, e1', e2', pos)
| Let((x, t), ExtFunApp(i, [y; z], pos2), e, pos1) when i = "create_array" || i = "create_float_array" ->
    if !last then
      Let((x, t), ExtFunApp(i, [y; z], pos2), e, pos1)
    else
      let arr_size = M.find y env_int * 4 in
      let addr_backup = !addr in
      let _ = globals := M.add x (t, Int(addr_backup, pos2)) !globals in
      let _ = addr := addr_backup + arr_size in
      let x_ = Id.genid x in
      Let((x, t),
          Int(addr_backup, pos2),
          Let((x_, t), ExtFunApp(i, [y; z], pos2), g env_int e, pos1), pos1)
    (* let v = Id.genid "addr" in
    if !first then
      (first := false;
       Let(("reg_hp_init", Type.Int),
           Var("reg_hp", pos2),
           Let((v, Type.Int),
               Int(addr_backup, pos2),
               Let((x, t),
                   Add("reg_hp_init", v, pos2),
                   Let((x_, t), ExtFunApp(i, [y; z], pos2), g env_int e, pos1), pos1), pos1), pos1))
    else
      Let((v, Type.Int),
          Int(addr_backup, pos2),
          Let((x, t),
              Add("reg_hp_init", v, pos2),
              Let((x_, t), ExtFunApp(i, [y; z], pos2), g env_int e, pos1), pos1), pos1) *)
    (* with Not_found -> Format.eprintf "%s\n" x; Let((x, t), ExtFunApp(i, [y; z], pos2), e, pos1)) *)
(* | Let((x, t), Int(y, pos2), e, pos1) -> Let((x, t), Int(y, pos2), g (M.add x y env_int) e, pos1) *)
| Let((x, t), e1, e2, pos) ->
    let e1' = g env_int e1 in
    let _ = if !last then () else globals := M.add x (t, e1') !globals in
    let e2' = g env_int e2 in
    Let((x, t), e1', e2', pos)
(* fundef中のcreate(_float)_arrayはアドレスが定まらないのでグローバル変数でない *)
| LetRec({ name = xt; args = yts; body = e1 }, e2, pos) ->
    last := true;
    LetRec({ name = xt; args = yts; body = h e1 }, g env_int e2, pos)
| Tuple(xs, pos) ->
    addr := !addr + List.length xs * 4;
    Tuple(xs, pos)
| LetTuple(xts, y, e, pos) -> LetTuple(xts, y, g env_int e, pos)
| e -> e

let f env_int = g env_int
