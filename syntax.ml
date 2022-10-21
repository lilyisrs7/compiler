type t = (* MinCamlの構文を表現するデータ型 (caml2html: syntax_t) *)
  | Unit of int
  | Bool of bool * int
  | Int of int * int
  | Float of float * int
  | Not of t * int
  | Neg of t * int
  | Add of t * t * int
  | Sub of t * t * int
  | FNeg of t * int
  | FAdd of t * t * int
  | FSub of t * t * int
  | FMul of t * t * int
  | FDiv of t * t * int
  | Eq of t * t * int
  | LE of t * t * int
  | If of t * t * t * int
  | Let of (Id.t * Type.t) * t * t * int
  | Var of Id.t * int
  | LetRec of fundef * t * int
  | App of t * t list * int
  | Tuple of t list * int
  | LetTuple of (Id.t * Type.t) list * t * t * int
  | Array of t * t * int
  | Get of t * t * int
  | Put of t * t * t * int
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }
