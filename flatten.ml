open Closure
open Printf

(* Type.Tupleを平坦化: Type.t list -> Type.t list *)
let rec flattenTypeTuple = function
  | hd::tl ->
    (match hd with
    | Type.Tuple(ts) -> List.append ts (flattenTypeTuple tl)
    | _ -> hd::(flattenTypeTuple tl))
  | [] -> []

(* 型を平坦化: Type.t -> Type.t *)
let rec flattenType t_ =
  match t_ with
  | Type.Fun(ts, t) -> Type.Fun(List.map flattenType ts, flattenType t)
  | Type.Tuple(ts) -> 
    Type.Tuple(flattenTypeTuple (List.map flattenType ts))
  | Type.Array(t) -> Type.Array(flattenType t)
  | t -> t

(* タプルを平坦化: (Id.t * (Id.t list)) list -> (Id.t list) -> (Id.t list) *)
let rec flattenTuple env xs = 
  let rec flattenVar x = 
    if List.mem_assoc x env then List.assoc x env else [x] 
  in
  List.flatten (List.map flattenVar xs)
  
(* 平坦化された型の情報をもとに新たに変数を作成: int -> Id.t list *)
let rec newVars num = 
  if num = 0 then []
  else 
    let newid = Id.genid "flt" in
    newid::(newVars (num - 1))
      
(* xsを前からnum個と残りのList.length xs - num個に分割 *)
let rec fetchNewVars num xs = 
  if num = 0 then [], xs else 
    (match xs with
    | hd::tl -> 
      let ret1, ret2 = fetchNewVars (num - 1) tl in
      hd::ret1, ret2
    | [] -> failwith "fetchNewVars Error1")

(* 
g: (Id.t * (Id.t list)) list -> Closure.t -> Cosure.t
env(タプルの変数 * 新しい変数のリスト): (Id.t * (Id.t list)) list 
*)
let rec g env = function
  | Closure.IfEq(x, y, e1, e2, pos) -> Closure.IfEq(x, y, g env e1, g env e2, pos)
  | Closure.IfLE(x, y, e1, e2, pos) -> Closure.IfLE(x, y, g env e1, g env e2, pos)
  
  (* `Closure.Let of (Id.t * Type.t) * t * t * int` *)
  | Closure.Let((x, t), e1, e2, pos) ->
    let t' = flattenType t in
    (match t' with
    | Tuple(ts) ->
      let xs = newVars (List.length ts) in 
      let env' = (x, xs)::env in
      let e2' = Closure.LetTuple(List.combine xs ts, x, g env' e2, pos)
      in
      Closure.Let((x, t'), g env e1, e2', pos)
    | _ -> Closure.Let((x, flattenType t), g env e1, g env e2, pos))

  | Closure.MakeCls((x, t), closure, e2, pos) ->
    Closure.MakeCls((x, flattenType t), closure, g env e2, pos)

  (* `Closure.Tuple of Id.t list * int` *)
  | Closure.Tuple(xs, pos) ->
    Closure.Tuple(flattenTuple env xs, pos)
  
  (* `Closure.LetTuple of (Id.t * Type.t) list * Id.t * t * int` *)
  | Closure.LetTuple(xts, y, e2, pos) -> 
    let xvars, xtypes = List.split xts in
    let xtypes' = List.map flattenType xtypes in
    let xvars' = List.assoc y env in

    let rec makeNewLet env xvs xts' xvs' = 
      (match xvs, xts' with
      | hd1::tl1, hd2::tl2 -> 
        (match hd2 with
        | Type.Tuple(ts) -> 
          let newxs, remxs = fetchNewVars (List.length ts) xvs' in
          let env' = (hd1, newxs)::env in
          Closure.Let((hd1, hd2), Closure.Tuple(newxs, pos), makeNewLet env' tl1 tl2 remxs, pos)
        | _ -> 
          (match xvs' with
          | hd::tl -> 
            Closure.Let((hd1, hd2), Closure.Var(hd, pos), makeNewLet env tl1 tl2 tl, pos)
          | [] -> failwith "fetchNewVars Error2"))
      | [], [] -> g env e2
      | _, _ -> failwith "makeNewLet Error")
      in 

    makeNewLet env xvars xtypes' xvars'

  | t -> t

(*
type fundef = { name : Id.l * Type.t;
                args : (Id.t * Type.t) list;
                formal_fv : (Id.t * Type.t) list;
                body : t }
*)
(* fundefの型、引数、自由変数、関数本体について平坦化: Closure.fundef -> Closure.fundef*)
let rec h { name = (Id.L(x), t); args = xts; formal_fv = yts; body = e } = 
  let xvars, xtypes = List.split xts in
  let xtypes' = List.map flattenType xtypes in
  let xts' = List.combine xvars xtypes' in
  let yvars, ytypes = List.split yts in
  let ytypes' = List.map flattenType ytypes in
  let yts' = List.combine yvars ytypes' in
  let rec makeFunBody xvs xts env e =
    (match xvs, xts with
    | hd1::tl1, hd2::tl2 ->
      (match hd2 with
      | Type.Tuple(ts) -> 
          let newvars = newVars (List.length ts) in
          Closure.LetTuple(List.combine newvars ts, hd1, makeFunBody tl1 tl2 ((hd1, newvars)::env) e, 0)
      | _ -> makeFunBody tl1 tl2 env e)
    | [], [] -> g env e
    | _ -> failwith "makeFunBody Error") in
  let e' = makeFunBody (List.append xvars yvars) (List.append xtypes' ytypes') [] e in 
  { name = (Id.L(x), flattenType t); args = xts'; formal_fv = yts'; body = e' }

let f (Closure.Prog(fundefs, e)) =
  let fundefs' = List.map h fundefs in
  let e' = g [] e in
  Prog(fundefs', e')