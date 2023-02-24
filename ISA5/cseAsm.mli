type exp =
| NPNop
| NPSet of int
| NPSetL of Id.l
| NPMov of Id.t
| NPNeg of Id.t
| NPAdd of Id.t * Asm.id_or_imm
| NPSub of Id.t * Id.t
| NPMul of Id.t * Id.t
| NPDiv of Id.t * Id.t
| NPLd of Id.t * Asm.id_or_imm
| NPSt of Id.t * Id.t * Asm.id_or_imm
| NPArrLd of Id.t * Id.t
| NPArrSt of Id.t * Id.t * Id.t
| NPFMovD of Id.t
| NPFNegD of Id.t
| NPFAddD of Id.t * Id.t
| NPFSubD of Id.t * Id.t
| NPFMulD of Id.t * Id.t
| NPFDivD of Id.t * Id.t
| NPSqrt of Id.t
| NPLdDF of Id.t * Asm.id_or_imm
| NPStDF of Id.t * Id.t * Asm.id_or_imm
| NPArrLdDF of Id.t * Id.t
| NPArrStDF of Id.t * Id.t * Id.t
| NPComment of string
| NPIfEq of Id.t * Id.t * Asm.t * Asm.t
| NPIfLE of Id.t * Id.t * Asm.t * Asm.t
| NPIfFEq of Id.t * Id.t * Asm.t * Asm.t
| NPIfFLE of Id.t * Id.t * Asm.t * Asm.t
| NPCallCls of Id.t * Id.t list * Id.t list
| NPCallDir of Id.l * Id.t list * Id.t list
| NPSave of Id.t * Id.t
| NPRestore of Id.t

val g : (exp * Id.t) list -> (exp * Id.t) list -> int M.t -> Asm.t -> Asm.t
val f : int M.t -> Asm.prog -> Asm.prog