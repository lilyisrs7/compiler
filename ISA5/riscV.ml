type label = string
type pos = int
type t =
  | Label of label
  | Addi of Id.t * Id.t * int * pos
  | Add of Id.t * Id.t * Id.t * pos
  | Sub of Id.t * Id.t * Id.t * pos
  | Mul of Id.t * Id.t * Id.t * pos
  | Div of Id.t * Id.t * Id.t * pos
  | Lui of Id.t * int * pos
  | Ori of Id.t * Id.t * int * pos
  | LuiLb of Id.t * label * pos
  | OriLb of Id.t * Id.t * label * pos
  | Lw of Id.t * int * Id.t * pos
  | Sw of Id.t * int * Id.t * pos
  | FAdd of Id.t * Id.t * Id.t * pos
  | FSub of Id.t * Id.t * Id.t * pos
  | FMul of Id.t * Id.t * Id.t * pos
  | FDiv of Id.t * Id.t * Id.t * pos
  | FSqrt of Id.t * Id.t * pos
  | FLw of Id.t * int * Id.t * pos
  | FSw of Id.t * int * Id.t * pos
  | Comment of string * pos
  | Jal of Id.t * label * pos
  | Jalr of Id.t * Id.t * int * pos
  | Beq of Id.t * Id.t * label * pos
  | Ble of Id.t * Id.t * label * pos
  | Feq of Id.t * Id.t * label * pos
  | Fle of Id.t * Id.t * label * pos
