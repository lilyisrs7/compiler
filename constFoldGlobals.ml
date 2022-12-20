open KNormal

let globals = ref M.empty
let addr = ref 0
let first = ref true

let rec h = function (* fundef中のグローバル配列のアドレスを書き換え *)
| Neg(x, pos) when M.mem x !globals ->
    let t, v = M.find x !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((x, t), Add("reg_hp_init", v_, pos), Neg(x, pos), pos), pos)
| Add(x, y, pos) when M.mem x !globals && M.mem y !globals ->
    let tx, vx = M.find x !globals in
    let ty, vy = M.find y !globals in
    let vx_ = Id.genid "addr" in
    let vy_ = Id.genid "addr" in
    Let((vx_, Type.Int), Int(vx, pos),
        Let((vy_, Type.Int), Int(vy, pos),
            Let((x, tx), Add("reg_hp_init", vx_, pos),
                Let((y, ty), Add("reg_hp_init", vy_, pos),
                    Add(x, y, pos), pos), pos), pos), pos)
| Add(x, y, pos) when M.mem x !globals ->
    let t, v = M.find x !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((x, t), Add("reg_hp_init", v_, pos), Add(x, y, pos), pos), pos)
| Add(x, y, pos) when M.mem y !globals ->
    let t, v = M.find y !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((y, t), Add("reg_hp_init", v_, pos), Add(x, y, pos), pos), pos)
| Sub(x, y, pos) when M.mem x !globals && M.mem y !globals ->
    let tx, vx = M.find x !globals in
    let ty, vy = M.find y !globals in
    let vx_ = Id.genid "addr" in
    let vy_ = Id.genid "addr" in
    Let((vx_, Type.Int), Int(vx, pos),
        Let((vy_, Type.Int), Int(vy, pos),
            Let((x, tx), Add("reg_hp_init", vx_, pos),
                Let((y, ty), Add("reg_hp_init", vy_, pos),
                    Sub(x, y, pos), pos), pos), pos), pos)
| Sub(x, y, pos) when M.mem x !globals ->
    let t, v = M.find x !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((x, t), Add("reg_hp_init", v_, pos), Sub(x, y, pos), pos), pos)
| Sub(x, y, pos) when M.mem y !globals ->
    let t, v = M.find y !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((y, t), Add("reg_hp_init", v_, pos), Sub(x, y, pos), pos), pos)
| Mul(x, y, pos) when M.mem x !globals && M.mem y !globals ->
    let tx, vx = M.find x !globals in
    let ty, vy = M.find y !globals in
    let vx_ = Id.genid "addr" in
    let vy_ = Id.genid "addr" in
    Let((vx_, Type.Int), Int(vx, pos),
        Let((vy_, Type.Int), Int(vy, pos),
            Let((x, tx), Add("reg_hp_init", vx_, pos),
                Let((y, ty), Add("reg_hp_init", vy_, pos),
                    Mul(x, y, pos), pos), pos), pos), pos)
| Mul(x, y, pos) when M.mem x !globals ->
    let t, v = M.find x !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((x, t), Add("reg_hp_init", v_, pos), Mul(x, y, pos), pos), pos)
| Mul(x, y, pos) when M.mem y !globals ->
    let t, v = M.find y !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((y, t), Add("reg_hp_init", v_, pos), Mul(x, y, pos), pos), pos)
| Div(x, y, pos) when M.mem x !globals && M.mem y !globals ->
    let tx, vx = M.find x !globals in
    let ty, vy = M.find y !globals in
    let vx_ = Id.genid "addr" in
    let vy_ = Id.genid "addr" in
    Let((vx_, Type.Int), Int(vx, pos),
        Let((vy_, Type.Int), Int(vy, pos),
            Let((x, tx), Add("reg_hp_init", vx_, pos),
                Let((y, ty), Add("reg_hp_init", vy_, pos),
                    Div(x, y, pos), pos), pos), pos), pos)
| Div(x, y, pos) when M.mem x !globals ->
    let t, v = M.find x !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((x, t), Add("reg_hp_init", v_, pos), Div(x, y, pos), pos), pos)
| Div(x, y, pos) when M.mem y !globals ->
    let t, v = M.find y !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((y, t), Add("reg_hp_init", v_, pos), Div(x, y, pos), pos), pos)
| FNeg(x, pos) when M.mem x !globals ->
    let t, v = M.find x !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((x, t), Add("reg_hp_init", v_, pos), FNeg(x, pos), pos), pos)
| FAdd(x, y, pos) when M.mem x !globals && M.mem y !globals ->
    let tx, vx = M.find x !globals in
    let ty, vy = M.find y !globals in
    let vx_ = Id.genid "addr" in
    let vy_ = Id.genid "addr" in
    Let((vx_, Type.Int), Int(vx, pos),
        Let((vy_, Type.Int), Int(vy, pos),
            Let((x, tx), Add("reg_hp_init", vx_, pos),
                Let((y, ty), Add("reg_hp_init", vy_, pos),
                    FAdd(x, y, pos), pos), pos), pos), pos)
| FAdd(x, y, pos) when M.mem x !globals ->
    let t, v = M.find x !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((x, t), Add("reg_hp_init", v_, pos), FAdd(x, y, pos), pos), pos)
| FAdd(x, y, pos) when M.mem y !globals ->
    let t, v = M.find y !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((y, t), Add("reg_hp_init", v_, pos), FAdd(x, y, pos), pos), pos)
| FSub(x, y, pos) when M.mem x !globals && M.mem y !globals ->
    let tx, vx = M.find x !globals in
    let ty, vy = M.find y !globals in
    let vx_ = Id.genid "addr" in
    let vy_ = Id.genid "addr" in
    Let((vx_, Type.Int), Int(vx, pos),
        Let((vy_, Type.Int), Int(vy, pos),
            Let((x, tx), Add("reg_hp_init", vx_, pos),
                Let((y, ty), Add("reg_hp_init", vy_, pos),
                    FSub(x, y, pos), pos), pos), pos), pos)
| FSub(x, y, pos) when M.mem x !globals ->
    let t, v = M.find x !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((x, t), Add("reg_hp_init", v_, pos), FSub(x, y, pos), pos), pos)
| FSub(x, y, pos) when M.mem y !globals ->
    let t, v = M.find y !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((y, t), Add("reg_hp_init", v_, pos), FSub(x, y, pos), pos), pos)
| FMul(x, y, pos) when M.mem x !globals && M.mem y !globals ->
    let tx, vx = M.find x !globals in
    let ty, vy = M.find y !globals in
    let vx_ = Id.genid "addr" in
    let vy_ = Id.genid "addr" in
    Let((vx_, Type.Int), Int(vx, pos),
        Let((vy_, Type.Int), Int(vy, pos),
            Let((x, tx), Add("reg_hp_init", vx_, pos),
                Let((y, ty), Add("reg_hp_init", vy_, pos),
                    FMul(x, y, pos), pos), pos), pos), pos)
| FMul(x, y, pos) when M.mem x !globals ->
    let t, v = M.find x !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((x, t), Add("reg_hp_init", v_, pos), FMul(x, y, pos), pos), pos)
| FMul(x, y, pos) when M.mem y !globals ->
    let t, v = M.find y !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((y, t), Add("reg_hp_init", v_, pos), FMul(x, y, pos), pos), pos)
| FDiv(x, y, pos) when M.mem x !globals && M.mem y !globals ->
    let tx, vx = M.find x !globals in
    let ty, vy = M.find y !globals in
    let vx_ = Id.genid "addr" in
    let vy_ = Id.genid "addr" in
    Let((vx_, Type.Int), Int(vx, pos),
        Let((vy_, Type.Int), Int(vy, pos),
            Let((x, tx), Add("reg_hp_init", vx_, pos),
                Let((y, ty), Add("reg_hp_init", vy_, pos),
                    FDiv(x, y, pos), pos), pos), pos), pos)
| FDiv(x, y, pos) when M.mem x !globals ->
    let t, v = M.find x !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((x, t), Add("reg_hp_init", v_, pos), FDiv(x, y, pos), pos), pos)
| FDiv(x, y, pos) when M.mem y !globals ->
    let t, v = M.find y !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((y, t), Add("reg_hp_init", v_, pos), FDiv(x, y, pos), pos), pos)
| IfEq(x, y, e1, e2, pos) when M.mem x !globals && M.mem y !globals ->
    let tx, vx = M.find x !globals in
    let ty, vy = M.find y !globals in
    let vx_ = Id.genid "addr" in
    let vy_ = Id.genid "addr" in
    Let((vx_, Type.Int), Int(vx, pos),
        Let((vy_, Type.Int), Int(vy, pos),
            Let((x, tx), Add("reg_hp_init", vx_, pos),
                Let((y, ty), Add("reg_hp_init", vy_, pos),
                    IfEq(x, y, h e1, h e2, pos), pos), pos), pos), pos)
| IfEq(x, y, e1, e2, pos) when M.mem x !globals ->
    let t, v = M.find x !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((x, t), Add("reg_hp_init", v_, pos), IfEq(x, y, h e1, h e2, pos), pos), pos)
| IfEq(x, y, e1, e2, pos) when M.mem y !globals ->
    let t, v = M.find y !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((y, t), Add("reg_hp_init", v_, pos), IfEq(x, y, h e1, h e2, pos), pos), pos)
| IfEq(x, y, e1, e2, pos) -> IfEq(x, y, h e1, h e2, pos)
| IfLE(x, y, e1, e2, pos) when M.mem x !globals && M.mem y !globals ->
    let tx, vx = M.find x !globals in
    let ty, vy = M.find y !globals in
    let vx_ = Id.genid "addr" in
    let vy_ = Id.genid "addr" in
    Let((vx_, Type.Int), Int(vx, pos),
        Let((vy_, Type.Int), Int(vy, pos),
            Let((x, tx), Add("reg_hp_init", vx_, pos),
                Let((y, ty), Add("reg_hp_init", vy_, pos),
                    IfLE(x, y, h e1, h e2, pos), pos), pos), pos), pos)
| IfLE(x, y, e1, e2, pos) when M.mem x !globals ->
    let t, v = M.find x !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((x, t), Add("reg_hp_init", v_, pos), IfLE(x, y, h e1, h e2, pos), pos), pos)
| IfLE(x, y, e1, e2, pos) when M.mem y !globals ->
    let t, v = M.find y !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((y, t), Add("reg_hp_init", v_, pos), IfLE(x, y, h e1, h e2, pos), pos), pos)
| IfLE(x, y, e1, e2, pos) -> IfLE(x, y, h e1, h e2, pos)
| Let(xt, e1, e2, pos) -> Let(xt, h e1, h e2, pos)
| Var(x, pos) when M.mem x !globals ->
    let t, v = M.find x !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((x, t), Add("reg_hp_init", v_, pos), Var(x, pos), pos), pos)
| LetRec({ name = xt; args = yts; body = e1 }, e2, pos) ->
    LetRec({ name = xt; args = yts; body = h e1 }, h e2, pos)
| App(x, ys, pos) ->
    let h' e y =
      if M.mem y !globals then
        let t, v = M.find y !globals in
        let v_ = Id.genid "addr" in
        Let((v_, Type.Int), Int(v, pos), Let((y, t), Add("reg_hp_init", v_, pos), e, pos), pos)
      else e in
    List.fold_left h' (App(x, ys, pos)) ys
| Tuple(xs, pos) ->
    let h' e x =
      if M.mem x !globals then
        let t, v = M.find x !globals in
        let v_ = Id.genid "addr" in
        Let((v_, Type.Int), Int(v, pos), Let((x, t), Add("reg_hp_init", v_, pos), e, pos), pos)
      else e in
    List.fold_left h' (Tuple(xs, pos)) xs
| LetTuple(xts, y, e, pos) when M.mem y !globals ->
    let t, v = M.find y !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((y, t), Add("reg_hp_init", v_, pos), LetTuple(xts, y, h e, pos), pos), pos)
| LetTuple(xts, y, e, pos) -> LetTuple(xts, y, h e, pos)
| Get(x, y, pos) when M.mem x !globals ->
    let t, v = M.find x !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((x, t), Add("reg_hp_init", v_, pos), Get(x, y, pos), pos), pos)
| Put(x, y, z, pos) when M.mem x !globals ->
    let t, v = M.find x !globals in
    let v_ = Id.genid "addr" in
    Let((v_, Type.Int), Int(v, pos), Let((x, t), Add("reg_hp_init", v_, pos), Put(x, y, z, pos), pos), pos)
| ExtFunApp(x, ys, pos) ->
    let h' e y =
      if M.mem y !globals then
        let t, v = M.find y !globals in
        let v_ = Id.genid "addr" in
        Let((v_, Type.Int), Int(v, pos), Let((y, t), Add("reg_hp_init", v_, pos), e, pos), pos)
      else e in
    List.fold_left h' (ExtFunApp(x, ys, pos)) ys
| e -> e

let rec g int_env = function (* 初めに定義されるグローバル配列のアドレスを決定 *)
| IfEq(x, y, e1, e2, pos) ->
    let e1' = g int_env e1 in
    let e2' = g int_env e2 in 
    IfEq(x, y, e1', e2', pos)
| IfLE(x, y, e1, e2, pos) ->
    let e1' = g int_env e1 in
    let e2' = g int_env e2 in
    IfLE(x, y, e1', e2', pos)
| Let((x, t), ExtFunApp(i, [y; z], pos2), e, pos1) when i = "create_array" || i = "create_float_array" ->
    let arr_size = M.find y int_env * 4 in
    let addr_backup = !addr in
    globals := M.add x (t, addr_backup) !globals;
    addr := addr_backup + arr_size;
    let x_ = Id.genid x in
    let v = Id.genid "addr" in
    if !first then
      (first := false;
       Let(("reg_hp_init", Type.Int),
           Var("reg_hp", pos2),
           Let((v, Type.Int),
               Int(addr_backup, pos2),
               Let((x, t),
                   Add("reg_hp_init", v, pos2),
                   Let((x_, t), ExtFunApp(i, [y; z], pos2), g int_env e, pos1), pos1), pos1), pos1))
    else
      Let((v, Type.Int),
          Int(addr_backup, pos2),
          Let((x, t),
              Add("reg_hp_init", v, pos2),
              Let((x_, t), ExtFunApp(i, [y; z], pos2), g int_env e, pos1), pos1), pos1)
    (* with Not_found -> Let((x, t), ExtFunApp(i, [y; z], pos2), e, pos1)) *)
| Let((x, t), Int(y, pos2), e, pos1) -> Let((x, t), Int(y, pos2), g (M.add x y int_env) e, pos1)
| Let(xt, e1, e2, pos) ->
    let e1' = g int_env e1 in
    let e2' = g int_env e2 in
    Let(xt, e1', e2', pos)
(* fundef中のcreate(_float)_arrayはアドレスが定まらないのでグローバル変数でない *)
| LetRec({ name = xt; args = yts; body = e1 }, e2, pos) -> LetRec({ name = xt; args = yts; body = h e1 }, g int_env e2, pos)
| Tuple(xs, pos) ->
    addr := !addr + List.length xs * 4;
    Tuple(xs, pos)
| LetTuple(xts, y, e, pos) -> LetTuple(xts, y, g int_env e, pos)
| e -> e

let f = g M.empty
