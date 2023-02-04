type id_or_imm = V of Id.t | C of int
type t =
  | Ans of exp * int
  | Let of (Id.t * Type.t) * exp * t * int
and exp =
  | Nop of int
  | Set of int * int
  | SetL of Id.l * int
  | Mov of Id.t * int
  | Neg of Id.t * int
  | Add of Id.t * id_or_imm * int
  | Sub of Id.t * Id.t * int
  | Mul of Id.t * Id.t * int
  | Div of Id.t * Id.t * int
  | Ld of Id.t * id_or_imm * int (*最終的には即値に*)
  | St of Id.t * Id.t * id_or_imm * int (*最終的には即値に*)
  | FMovD of Id.t * int
  | FNegD of Id.t * int
  | FAddD of Id.t * Id.t * int
  | FSubD of Id.t * Id.t * int
  | FMulD of Id.t * Id.t * int
  | FDivD of Id.t * Id.t * int
  | Sqrt of Id.t * int
  | LdDF of Id.t * id_or_imm * int (*最終的には即値に*)
  | StDF of Id.t * Id.t * id_or_imm * int (*最終的には即値に*)
  | Comment of string * int
  (* virtual instructions *)
  | IfEq of Id.t * Id.t * t * t * int
  | IfLE of Id.t * Id.t * t * t * int
  | IfGE of Id.t * Id.t * t * t * int
  | IfFEq of Id.t * Id.t * t * t * int
  | IfFLE of Id.t * Id.t * t * t * int
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list * int
  | CallDir of Id.l * Id.t list * Id.t list * int
  | Save of Id.t * Id.t * int (* レジスタ変数の値をスタック変数へ保存 *)
  | Restore of Id.t * int (* スタック変数から値を復元 *)
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
(* val reg_rv : Id.t
val reg_frv : Id.t *)
(* val reg_size_program_section : Id.t
val reg_read_num_hard : Id.t
val reg_read_num_soft : Id.t *)
val is_reg : Id.t -> bool
(*val co_freg : Id.t -> Id.t*)

val fv : t -> Id.t list
val concat : t -> Id.t * Type.t -> t -> t

val align : int -> int
