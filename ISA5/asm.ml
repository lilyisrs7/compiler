(* 2オペランドではなく3オペランドのx86アセンブリもどき *)

type id_or_imm = V of Id.t | C of int
type t = (* 命令の列 (caml2html: sparcasm_t) *)
  | Ans of exp * int
  | Let of (Id.t * Type.t) * exp * t * int
and exp = (* 一つ一つの命令に対応する式 (caml2html: sparcasm_exp) *)
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
  | IfGE of Id.t * Id.t * t * t (* 左右対称ではないので必要 *)
  | IfFEq of Id.t * Id.t * t * t
  | IfFLE of Id.t * Id.t * t * t
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* レジスタ変数の値をスタック変数へ保存 (caml2html: sparcasm_save) *)
  | Restore of Id.t (* スタック変数から値を復元 (caml2html: sparcasm_restore) *)
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
(* プログラム全体 = 浮動小数点数テーブル + トップレベル関数 + メインの式 (caml2html: sparcasm_prog) *)
type prog = Prog of (Id.l * float * int) list * fundef list * t

let fletd(x, e1, e2) =
  match e2 with
  | Ans(_, pos) -> Let((x, Type.Float), e1, e2, pos)
  | Let(_, _, _, pos) -> Let((x, Type.Float), e1, e2, pos)
let seq(e1, e2) =
  match e2 with
  | Ans(_, pos) -> Let((Id.gentmp Type.Unit, Type.Unit), e1, e2, pos)
  | Let(_, _, _, pos) -> Let((Id.gentmp Type.Unit, Type.Unit), e1, e2, pos)

let regs = (* Array.init 16 (fun i -> Printf.sprintf "%%r%d" i) *)
  [| "x4"; "x5"; "x6"; "x7"; "x8"; "x9"; "x10"; "x11"; "x12"; "x13"; "x14"; "x15"; "x16"; "x17";
     "x18"; "x19"; "x20"; "x21"; "x22"; "x23"; "x24"; "x25"; "x26"; "x27"; "x29"; "x31" |]
let fregs = (*Array.init 32 (fun i -> Printf.sprintf "f%d" i)*)
  [| "f1"; "f2"; "f3"; "f4"; "f5"; "f6"; "f7"; "f8"; "f9"; "f10"; "f11"; "f12"; "f13"; "f14"; "f15"; "f16"; "f17";
     "f18"; "f19"; "f20"; "f21"; "f22"; "f23"; "f24"; "f25"; "f26"; "f27"; "f28"; "f29"; "f30"; "f31" |]
let allregs = Array.to_list regs
let allfregs = Array.to_list fregs
let reg_cl = regs.(Array.length regs - 2) (* closure address (caml2html: sparcasm_regcl) *)
let reg_sw = regs.(Array.length regs - 1) (* temporary for swap *)
let reg_fsw = fregs.(Array.length fregs - 1) (* temporary for swap *)
let reg_sp = "x2" (* stack pointer *)
let reg_hp = "x3" (* heap pointer (caml2html: sparcasm_reghp) *)
(* let reg_hp_init = "x26" *)
let reg_ra = "x1" (* return address *)
let reg_zero = "x0"
let reg_fzero = "f0"
let reg_four = "x30"
(* let reg_rv = "x10"
let reg_frv = "f10" *)
let reg_size_program_section = "x28"
(* let reg_read_num_hard = "x29"
let reg_read_num_soft = "x30" *)
let is_reg x = (((x.[0] = 'x') || (x.[0] = 'f')) && (Bool.not (String.contains x '.')))

(*let co_freg_table =
  let ht = Hashtbl.create 16 in
  for i = 0 to 15 do
    Hashtbl.add
      ht
      (Printf.sprintf "f%d" (i * 2))
      (Printf.sprintf "f%d" (i * 2 + 1))
  done;
  ht
let co_freg freg = Hashtbl.find co_freg_table freg (* "companion" freg *)*)

let rec remove_and_uniq xs = function
  | [] -> []
  | x :: ys when S.mem x xs -> remove_and_uniq xs ys
  | x :: ys -> x :: remove_and_uniq (S.add x xs) ys

(* free variables in the order of use (for spilling) (caml2html: sparcasm_fv) *)
let fv_id_or_imm = function V(x) -> [x] | _ -> []
let rec fv_exp = function
  | Nop | Set(_) | SetL(_) | Comment(_) | Restore(_) -> []
  | Mov(x) | Neg(x) | FMovD(x) | FNegD(x) | Sqrt(x) | Save(x, _) -> [x]
  | Add(x, y') | Mul(x, y') | Ld(x, y') | LdDF(x, y') -> x :: fv_id_or_imm y'
  | St(x, y, _) | StDF(x, y, _) | Sub(x, y) | Div(x, y) | FAddD(x, y) | FSubD(x, y) | FMulD(x, y) | FDivD(x, y) -> [x; y]
  | IfEq(x, y, e1, e2) | IfLE(x, y, e1, e2) | IfGE(x, y, e1, e2) -> x :: y :: remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *)
  | IfFEq(x, y, e1, e2) | IfFLE(x, y, e1, e2) -> x :: y :: remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *)
  | CallCls(x, ys, zs) -> x :: ys @ zs
  | CallDir(_, ys, zs) -> ys @ zs
and fv = function
  | Ans(exp, pos) -> fv_exp exp
  | Let((x, t), exp, e, pos) ->
      fv_exp exp @ remove_and_uniq (S.singleton x) (fv e)
let fv e = remove_and_uniq S.empty (fv e)

let rec concat e1 xt e2 =
  match e1 with
  | Ans(exp, pos) -> Let(xt, exp, e2, pos)
  | Let(yt, exp, e1', pos) -> Let(yt, exp, concat e1' xt e2, pos)

let align i = (if i mod 8 = 0 then i else i + 4)
