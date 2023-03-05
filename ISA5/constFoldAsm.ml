(* 配列アドレスが定数に *)
open Asm

let datamap = ref []

let memi x env =
  try (match M.find x env with Set(_) -> true | _ -> false)
  with Not_found -> false
let memf x env =
  try (match M.find x env with SetL(_) -> true | _ -> false)
  with Not_found -> false
let memadd x env =
  try (match M.find x env with Add(_, C(y), _) -> if y mod 4 = 0 then true else false | _ -> false)
  with Not_found -> false

let memi' x env =
  match x with
  | V(x') -> memi x' env
  | C(_) -> true

let findi x env = (match M.find x env with Set(i, _) -> i | _ -> raise Not_found)
let findf x env = (match M.find x env with SetL(Id.L(x), _) -> x | _ -> raise Not_found)
let findadd x env = (match M.find x env with Add(x, C(y), _) -> x, y | _ -> raise Not_found)

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

and g' env = function
  | Mov(x, id) when memi x env -> Ans(Set(findi x env, id), -1)
  | Neg(x, id) when memi x env -> Ans(Set(-(findi x env), id), -1)
  | Add(x, y, id) when memi x env && memi' y env -> Ans(Set(findi x env + findi' y env, id), -1)
  | Add(x, y, id) when memi' y env ->
      let y' = findi' y env in
      if -65536 <= y' && y' <= 65535 then Ans(Add(x, C(y'), id), -1)
      else Ans(Add(x, y, id), -1)
  | Sub(x, y, id) when memi x env && memi y env -> Ans(Set(findi x env - findi y env, id), -1)
  | Mul(x, y, id) when memi x env && memi y env -> Ans(Set(findi x env * findi y env, id), -1)
  | Div(x, y, id) when memi x env && memi y env -> Ans(Set(findi x env / findi y env, id), -1)
  | Ld(x, C(y), id) when memadd x env ->
      let x', y' = findadd x env in
      if -2048 <= y + y' && y + y' <= 2047 then Ans(Ld(x', C(y + y'), id), -1)
      else Ans(Ld(x, C(y), id), -1)
  | St(x, y, C(z), id) when memadd y env ->
      let y', z' = findadd y env in
      if -2048 <= z + z' && z + z' <= 2047 then Ans(St(x, y', C(z + z'), id), -1)
      else Ans(St(x, y, C(z), id), -1)
  | FMovD(x, id) when memf x env -> Ans(SetL(Id.L(findf x env), id), -1)
  | FNegD(x, id) when memf x env ->
      let v = -.(List.assoc (findf x env) !datamap) in
      let l =
        try
          let (l, _) = List.find (fun (_, d) -> v = d) !datamap in l
        with Not_found ->
          let l = Id.genid "l" in
          datamap := (l, v) :: !datamap;
          l in
      Ans(SetL(Id.L(l), id), -1)
  | LdDF(x, C(y), id) when memadd x env ->
      let x', y' = findadd x env in
      if -2048 <= y + y' && y + y' <= 2047 then Ans(LdDF(x', C(y + y'), id), -1)
      else Ans(LdDF(x, C(y), id), -1)
  | StDF(x, y, C(z), id) when memadd y env ->
      let y', z' = findadd y env in
      if -2048 <= z + z' && z + z' <= 2047 then Ans(StDF(x, y', C(z + z'), id), -1)
      else Ans(StDF(x, y, C(z), id), -1)
  (* | FAddD(x, y, id) when memf x env && memf y env ->
      Format.eprintf "faddd %s %s\n" x y;
      let v = List.assoc (findf x env) !datamap +. List.assoc (findf y env) !datamap in
      let l =
        try
          let (l, _) = List.find (fun (_, d) -> v = d) !datamap in l
        with Not_found ->
          let l = Id.genid "l" in
          datamap := (l, v) :: !datamap;
          l in
      Ans(SetL(Id.L(l), id), -1)
  | FSubD(x, y, id) when memf x env && memf y env ->
      Format.eprintf "fsubd %s %s\n" x y;
      let v = List.assoc (findf x env) !datamap -. List.assoc (findf y env) !datamap in
      let l =
        try
          let (l, _) = List.find (fun (_, d) -> v = d) !datamap in l
        with Not_found ->
          let l = Id.genid "l" in
          datamap := (l, v) :: !datamap;
          l in
      Ans(SetL(Id.L(l), id), -1)
  | FMulD(x, y, id) when memf x env && memf y env ->
      Format.eprintf "fmuld %s %s\n" x y;
      let v = List.assoc (findf x env) !datamap *. List.assoc (findf y env) !datamap in
      let l =
        try
          let (l, _) = List.find (fun (_, d) -> v = d) !datamap in l
        with Not_found ->
          let l = Id.genid "l" in
          datamap := (l, v) :: !datamap;
          l in
      Ans(SetL(Id.L(l), id), -1)
  | FDivD(x, y, id) when memf x env && memf y env ->
      Format.eprintf "fdivd %s %s\n" x y;
      let v = List.assoc (findf x env) !datamap /. List.assoc (findf y env) !datamap in
      let l =
        try
          let (l, _) = List.find (fun (_, d) -> v = d) !datamap in l
        with Not_found ->
          let l = Id.genid "l" in
          datamap := (l, v) :: !datamap;
          l in
      Ans(SetL(Id.L(l), id), -1)
  | Sqrt(x, id) when memf x env ->
      Format.eprintf "sqrt %s\n" x;
      let v = sqrt (List.assoc (findf x env) !datamap) in
      let l =
        try
          let (l, _) = List.find (fun (_, d) -> v = d) !datamap in l
        with Not_found ->
          let l = Id.genid "l" in
          datamap := (l, v) :: !datamap;
          l in
      Ans(SetL(Id.L(l), id), -1) *)
  | IfEq(x, y, e1, e2, id) when memi x env && memi y env -> if findi x env = findi y env then g env e1 else g env e2
  | IfEq(x, y, e1, e2, id) -> Ans(IfEq(x, y, g env e1, g env e2, id), -1)
  | IfLE(x, y, e1, e2, id) when memi x env && memi y env -> if findi x env <= findi y env then g env e1 else g env e2
  | IfLE(x, y, e1, e2, id) -> Ans(IfLE(x, y, g env e1, g env e2, id), -1)
  | IfFEq(x, y, e1, e2, id) when memf x env && memf y env ->
      if List.assoc (findf x env) !datamap = List.assoc (findf y env) !datamap then g env e1 else g env e2
  | IfFEq(x, y, e1, e2, id) -> Ans(IfFEq(x, y, g env e1, g env e2, id), -1)
  | IfFLE(x, y, e1, e2, id) when memf x env && memf y env ->
      if List.assoc (findf x env) !datamap <= List.assoc (findf y env) !datamap then g env e1 else g env e2
  | IfFLE(x, y, e1, e2, id) -> Ans(IfFLE(x, y, g env e1, g env e2, id), -1)
  | e -> Ans(e, -1)

let h { name = l; args = ys; fargs = zs; body = e; ret = t } =
  { name = l; args = ys; fargs = zs; body = g (M.add "x30" (Set(4, -1)) M.empty) e; ret = t }

let f (Prog(data, fundefs, e)) =
  datamap := List.map (fun (Id.L(x), f) -> (x, f)) data;
  let fundefs' = List.map h fundefs in
  let e' = g (M.add "x30" (Set(4, -1)) M.empty) e in
  let data' = List.map (fun (x, f) -> (Id.L(x), f)) !datamap in
  Prog(data', fundefs', e')
