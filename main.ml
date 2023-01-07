open PrintType

let limit = ref 1000
let nocse_flag = ref false
let nologic_flag = ref false
let nocfg_flag = ref false
let printiter_flag = ref false

let rec iter n f e = (* 最適化処理をくりかえす (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
  if !printiter_flag then
    let e_cse = if !nocse_flag then e else Cse.f e in
    let oc = open_out (f ^ string_of_int n ^ ".cse") in
    let _ = print_knormal_t oc 0 e_cse in
    let _ = close_out oc in

    let e_beta = Beta.f e_cse in
    let oc = open_out (f ^ string_of_int n ^ ".beta") in
    let _ = print_knormal_t oc 0 e_beta in
    let _ = close_out oc in

    let e_assoc = Assoc.f e_beta in
    let oc = open_out (f ^ string_of_int n ^ ".assoc") in
    let _ = print_knormal_t oc 0 e_assoc in
    let _ = close_out oc in

    let e_inline = Inline.f e_assoc in
    let oc = open_out (f ^ string_of_int n ^ ".inline") in
    let _ = print_knormal_t oc 0 e_inline in
    let _ = close_out oc in

    let e_cf = ConstFold.f e_inline in
    let oc = open_out (f ^ string_of_int n ^ ".cf") in
    let _ = print_knormal_t oc 0 e_cf in
    let _ = close_out oc in

    let e_elim = Elim.f e_cf in
    let oc = open_out (f ^ string_of_int n ^ ".elim") in
    let _ = print_knormal_t oc 0 e_elim in
    let _ = close_out oc in

    let e_logic = if !nologic_flag then e_elim else LogicOpt.f e_elim in
    let oc = open_out (f ^ string_of_int n ^ ".logic") in
    let _ = print_knormal_t oc 0 e_logic in
    let _ = close_out oc in

    if e = e_logic then e else
    iter (n - 1) f e_logic
  else
    let e' =
      (fun e -> if !nologic_flag then e else LogicOpt.f e)
        (Elim.f (ConstFold.f (Inline.f (Assoc.f (Beta.f (if !nocse_flag then e else Cse.f e)))))) in
    if e = e' then e else
    iter (n - 1) f e'

let closure_opt e = (* タプル平坦化、tace後の最適化 *)
  ElimCls.f (ConstFoldCls.f (AssocCls.f (BetaCls.f e)))

let lexbuf outchan l f outchan_parsed outchan_normalized outchan_alpha outchan_iterated outchan_cfg outchan_closure outchan_cls_opt
                       outchan_virtual outchan_simm outchan_regalloc =
  (* バッファをコンパイルしてチャンネルへ出力する (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing.extenv := M.empty;
  
  let parsed = Parser.exp Lexer.token l in
  print_syntax_t outchan_parsed 0 parsed;

  let normalized = KNormal.f (Typing.f parsed) in
  print_knormal_t outchan_normalized 0 normalized;

  let alpha = Alpha.f normalized in
  print_knormal_t outchan_alpha 0 alpha;

  let iterated = iter !limit f alpha in
  print_knormal_t outchan_iterated 0 iterated;
  
  let cfg = if !nocfg_flag then iterated else Alpha.f (ConstFoldGlobals.f iterated) in
  print_knormal_t outchan_cfg 0 cfg;

  let closure = Closure.f cfg in
  let Closure.Prog(fundefs, e) = closure in
  List.iter (print_closure_fundef outchan_closure 0) fundefs;
  print_closure_t outchan_closure 0 e;

  let cls_opt = closure_opt closure in
  let Closure.Prog(fundefs, e) = cls_opt in
  List.iter (print_closure_fundef outchan_cls_opt 0) fundefs;
  print_closure_t outchan_cls_opt 0 e;

  let vt = Virtual.f cls_opt in
  let Asm.Prog(data, fundefs, e) = vt in
  List.iter (print_asm_data outchan_virtual 0) data;
  List.iter (print_asm_fundef outchan_virtual 0) fundefs;
  print_asm_t outchan_virtual 0 e;

  let simm = Simm.f vt in
  let Asm.Prog(data, fundefs, e) = simm in
  List.iter (print_asm_data outchan_simm 0) data;
  List.iter (print_asm_fundef outchan_simm 0) fundefs;
  print_asm_t outchan_simm 0 e;

  let regalloc = RegAlloc.f simm in
  let Asm.Prog(data, fundefs, e) = regalloc in
  List.iter (print_asm_data outchan_regalloc 0) data;
  List.iter (print_asm_fundef outchan_regalloc 0) fundefs;
  print_asm_t outchan_regalloc 0 e;

  Emit.f outchan regalloc
  (*
  Emit.f outchan
    (RegAlloc.f
       (Simm.f
          (Virtual.f
             (closure_opt
                (Closure.f
                   (ConstFoldGlobals.f
                      (iter !limit
                          (Alpha.f
                              (KNormal.f
                                  (Typing.f
                                      (Parser.exp Lexer.token l)))))))))))
  *)

let string s = lexbuf stdout (Lexing.from_string s) (* 文字列をコンパイルして標準出力に表示する (caml2html: main_string) *)

let file f = (* ファイルをコンパイルしてファイルに出力する (caml2html: main_file) *)
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".s") in
  let outchan_parsed = open_out (f ^ ".parsed") in
  let outchan_normalized = open_out (f ^ ".normalized") in
  let outchan_alpha = open_out (f ^ ".alpha") in
  let outchan_iterated = open_out (f ^ ".iterated") in
  let outchan_cfg = open_out (f ^ ".cfg") in
  let outchan_closure = open_out (f ^ ".closure") in
  let outchan_cls_opt = open_out (f ^ ".cls_opt") in
  let outchan_virtual = open_out (f ^ ".virtual") in
  let outchan_simm = open_out (f ^ ".simm") in
  let outchan_regalloc = open_out (f ^ ".regalloc") in
  try
    lexbuf outchan (Lexing.from_channel inchan) f outchan_parsed outchan_normalized outchan_alpha outchan_iterated outchan_cfg
                                                  outchan_closure outchan_cls_opt outchan_virtual outchan_simm outchan_regalloc;
    close_in inchan;
    close_out outchan;
    close_out outchan_parsed;
    close_out outchan_normalized;
    close_out outchan_alpha;
    close_out outchan_iterated;
    close_out outchan_cfg;
    close_out outchan_closure;
    close_out outchan_cls_opt;
    close_out outchan_virtual;
    close_out outchan_simm;
    close_out outchan_regalloc
  with e -> (close_in inchan; close_out outchan; close_out outchan_parsed; close_out outchan_normalized; close_out outchan_alpha;
             close_out outchan_iterated; close_out outchan_cfg; close_out outchan_closure; close_out outchan_cls_opt;
             close_out outchan_virtual; close_out outchan_simm; close_out outchan_regalloc;
             raise e)

(*
let file f = (* ファイルをコンパイルしてファイルに出力する (caml2html: main_file) *)
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".s") in
  try
    lexbuf outchan (Lexing.from_channel inchan);
    close_in inchan;
    close_out outchan;
  with e -> (close_in inchan; close_out outchan; raise e)
*)

let () = (* ここからコンパイラの実行が開始される (caml2html: main_entry) *)
  let files = ref [] in
  Arg.parse
    [("-inline", Arg.Int(fun i -> Inline.threshold := i)(* fun i j -> Inline.thr_size := i; Inline.thr_num := j *), "maximum size and num of functions inlined");
     ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated");
     ("-printiter", Arg.Unit(fun () -> printiter_flag := true), "printiter flag");
     ("-nocse", Arg.Unit(fun () -> nocse_flag := true), "nocse flag");
     ("-nologic", Arg.Unit(fun () -> nologic_flag := true), "nologic flag");
     ("-nocfg", Arg.Unit(fun () -> nocfg_flag := true), "nocfg flag")]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n] ...filenames without \".ml\"..." Sys.argv.(0));
  List.iter
    (fun f -> ignore (file f))
    !files
