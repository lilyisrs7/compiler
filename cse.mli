type t =
| NPUnit
| NPInt of int
| NPFloat of float
| NPNeg of Id.t
| NPAdd of Id.t * Id.t
| NPSub of Id.t * Id.t
| NPMul of Id.t * Id.t
| NPDiv of Id.t * Id.t
| NPFNeg of Id.t
| NPFAdd of Id.t * Id.t
| NPFSub of Id.t * Id.t
| NPFMul of Id.t * Id.t
| NPFDiv of Id.t * Id.t
| NPIfEq of Id.t * Id.t * KNormal.t * KNormal.t
| NPIfLE of Id.t * Id.t * KNormal.t * KNormal.t
| NPLet of (Id.t * Type.t) * KNormal.t * KNormal.t
| NPVar of Id.t
| NPLetRec of KNormal.fundef * KNormal.t
| NPApp of Id.t * Id.t list
| NPTuple of Id.t list
| NPLetTuple of (Id.t * Type.t) list * Id.t * KNormal.t
| NPGet of Id.t * Id.t
| NPPut of Id.t * Id.t * Id.t
| NPExtArray of Id.t
| NPExtFunApp of Id.t * Id.t list

val g : (t * Id.t) list -> (t * Id.t) list -> KNormal.t -> KNormal.t
val f : KNormal.t -> KNormal.t