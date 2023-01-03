type id_or_imm = V of Id.t | C of int
type t =
  | Ans of exp * int
  | Let of (Id.t * Type.t) * exp * t * int
and exp =
  | Nop
  | Set of int
  | SetL of Id.l
  | Mov of Id.t
  | Neg of Id.t
  | Add of Id.t * id_or_imm
  | Sub of Id.t * Id.t
  | Mul of Id.t * id_or_imm (*最終的にはレジスタに*)
  | Div of Id.t * Id.t
  | Ld of Id.t * id_or_imm (*最終的には即値に*)
  | St of Id.t * Id.t * id_or_imm (*最終的には即値に*)
  | FMovD of Id.t
  | FNegD of Id.t
  | FAddD of Id.t * Id.t
  | FSubD of Id.t * Id.t
  | FMulD of Id.t * Id.t
  | FDivD of Id.t * Id.t
  | Sqrt of Id.t
  | LdDF of Id.t * id_or_imm (*最終的には即値に*)
  | StDF of Id.t * Id.t * id_or_imm (*最終的には即値に*)
  | Comment of string
  (* virtual instructions *)
  | IfEq of Id.t * Id.t * t * t
  | IfLE of Id.t * Id.t * t * t
  | IfGE of Id.t * Id.t * t * t
  | IfFEq of Id.t * Id.t * t * t
  | IfFLE of Id.t * Id.t * t * t
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* レジスタ変数の値をスタック変数へ保存 *)
  | Restore of Id.t (* スタック変数から値を復元 *)
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
type prog = Prog of (Id.l * float * int) list * fundef list * t

val fletd : Id.t * exp * t -> t (* shorthand of Let for float *)
val seq : exp * t -> t (* shorthand of Let for unit *)

val regs : Id.t array
val fregs : Id.t array
val allregs : Id.t list
val allfregs : Id.t list
val reg_cl : Id.t
val reg_sw : Id.t
val reg_fsw : Id.t
val reg_ra : Id.t
val reg_hp : Id.t
(* val reg_hp_init : Id.t *)
val reg_sp : Id.t
val reg_zero : Id.t
val reg_fzero : Id.t
val reg_four : Id.t
val reg_ffour : Id.t
(* val reg_rv : Id.t
val reg_frv : Id.t *)
val reg_size_program_section : Id.t
(* val reg_read_num_hard : Id.t
val reg_read_num_soft : Id.t *)
val is_reg : Id.t -> bool
(*val co_freg : Id.t -> Id.t*)

val fv : t -> Id.t list
val concat : t -> Id.t * Type.t -> t -> t

val align : int -> int
