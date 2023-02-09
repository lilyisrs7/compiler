(* constFoldGlobalsで定数化した部分が消える *)
open Asm

let datamap = ref M.empty

let memi x env =
  try (match M.find x env with Set(_) -> true | _ -> false)
  with Not_found -> false
let memf x env =
  try (match M.find x env with SetL(_) -> true | _ -> false)
  with Not_found -> false

let memi' x env =
  match x with
  | V(x') -> memi x' env
  | C(_) -> true

let findi x env = (match M.find x env with Set(i, _) -> i | _ -> raise Not_found)
let findf x env = (match M.find x env with SetL(Id.L(x), _) -> M.find x !datamap | _ -> raise Not_found)

let findi' x env =
  match x with
  | V(x') -> findi x' env
  | C(x') -> x'

let rec concat' e1 (x, t) e2 g env =
  match e1 with
  | Ans(exp, pos) -> Let((x, t), exp, g (M.add x exp env) e2, pos)
  | Let(yt, exp, e1', pos) -> Let(yt, exp, concat' e1' (x, t) e2 g env, pos)

let rec g env = function
| Ans(exp, pos) ->
    let exp' = g' env exp in
    (match exp' with
     | Ans(exp_, _) -> Ans(exp_, pos)
     | Let _ -> exp')
| Let((x, t), exp, e, pos) ->
    let exp' = g' env exp in
    (match exp' with
     | Ans(exp_, _) -> let e' = g (M.add x exp_ env) e in Let((x, t), exp_, e', pos)
     | Let _ -> concat' exp' (x, t) e g env)

(* intがaddiできる範囲を超えるなら元の方が良い？floatで定数レジスタに入らないなら元の方が良い？ *)
and g' env = function
  | Mov(x, id) when memi x env -> Format.eprintf "mov %s\n" x; Ans(Set(findi x env, id), -1)
  | Neg(x, id) when memi x env -> Format.eprintf "neg %s\n" x; Ans(Set(-(findi x env), id), -1)
  | Add(x, y, id) when memi x env && memi' y env -> Format.eprintf "add %s %s\n" x (match y with V(y) -> y | C(y) -> string_of_int y); Ans(Set(findi x env + findi' y env, id), -1) (* 足し算のケース (caml2html: constfold_add) *)
  | Sub(x, y, id) when memi x env && memi y env -> Format.eprintf "sub %s %s\n" x y; Ans(Set(findi x env - findi y env, id), -1)
  | Mul(x, y, id) when memi x env && memi y env -> Format.eprintf "mul %s %s\n" x y; Ans(Set(findi x env * findi y env, id), -1)
  | Div(x, y, id) when memi x env && memi y env -> Format.eprintf "div %s %s\n" x y; Ans(Set(findi x env / findi y env, id), -1)
  (* | FMov(x, id) when memf x env -> SetL(findf x env, id)
  | FNeg(x, id) when memf x env -> SetL(-.(findf x env), id)
  | FAdd(x, y, id) when memf x env && memf y env -> Float(findf x env +. findf y env, id)
  | FSub(x, y, id) when memf x env && memf y env -> Float(findf x env -. findf y env, id)
  | FMul(x, y, id) when memf x env && memf y env -> Float(findf x env *. findf y env, id)
  | FDiv(x, y, id) when memf x env && memf y env -> Float(findf x env /. findf y env, id) *)
  | IfEq(x, y, e1, e2, id) when memi x env && memi y env -> Format.eprintf "ifeq %s %s\n" x y; if findi x env = findi y env then g env e1 else g env e2
  | IfEq(x, y, e1, e2, id) -> Ans(IfEq(x, y, g env e1, g env e2, id), -1)
  | IfLE(x, y, e1, e2, id) when memi x env && memi y env -> Format.eprintf "ifle %s %s\n" x y; if findi x env <= findi y env then g env e1 else g env e2
  | IfLE(x, y, e1, e2, id) -> Ans(IfLE(x, y, g env e1, g env e2, id), -1)
  | IfFEq(x, y, e1, e2, id) when memf x env && memf y env -> Format.eprintf "iffeq %s %s\n" x y; if findf x env = findf y env then g env e1 else g env e2
  | IfFEq(x, y, e1, e2, id) -> Ans(IfFEq(x, y, g env e1, g env e2, id), -1)
  | IfFLE(x, y, e1, e2, id) when memf x env && memf y env -> Format.eprintf "iffle %s %s\n" x y; if findf x env <= findf y env then g env e1 else g env e2
  | IfFLE(x, y, e1, e2, id) -> Ans(IfFLE(x, y, g env e1, g env e2, id), -1)
  | e -> Ans(e, -1)

let h { name = l; args = ys; fargs = zs; body = e; ret = t } =
  { name = l; args = ys; fargs = zs; body = g (M.add "x30" (Set(4, -1)) M.empty) e; ret = t }

let f (Prog(data, fundefs, e)) =
  List.iter (fun (Id.L(x), f, _) -> datamap := M.add x f !datamap) data;
  let fundefs' = List.map h fundefs in
  let e' = g (M.add "x30" (Set(4, -1)) M.empty) e in
  Prog(data, fundefs', e')
