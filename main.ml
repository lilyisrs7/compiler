open PrintType

let limit = ref 1000
let limit_cls = ref 1000
let limit_asm = ref 1000
let nocse_flag = ref false
let nocseasm_flag = ref false
let nologic_flag = ref false
let nocfg_flag = ref false
let printiter_flag = ref false
let printiterasm_flag = ref false

let rec iter n f e env_int = (* 最適化処理をくりかえす (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  Inline.inline_rec := if n = !limit then true else false;
  if n = 0 then e, env_int else
  if !printiter_flag then
    let e_cse = if !nocse_flag then e else Cse.f env_int e in
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

    let e_elim, env_int = Elim.f e_cf in
    let oc = open_out (f ^ string_of_int n ^ ".elim") in
    let _ = print_knormal_t oc 0 e_elim in
    let _ = close_out oc in

    let e_logic = if !nologic_flag then e_elim else LogicOpt.f e_elim in
    let oc = open_out (f ^ string_of_int n ^ ".logic") in
    let _ = print_knormal_t oc 0 e_logic in
    let _ = close_out oc in

    if e = e_logic then e, env_int else
    iter (n - 1) f e_logic env_int
  else
    let e', env_int =
      (fun (e, env) -> if !nologic_flag then e, env else LogicOpt.f e, env)
        (Elim.f (ConstFold.f (Inline.f (Assoc.f (Beta.f (if !nocse_flag then e else Cse.f env_int e)))))) in
    if e = e' then e, env_int else
    iter (n - 1) f e' env_int

let rec closure_opt n e = (* タプル平坦化、tace後の最適化 *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e
  else
    let e' = ElimCls.f (ConstFoldCls.f (AssocCls.f (BetaCls.f e))) in
    if e = e' then e
    else
      closure_opt (n - 1) e'

let rec asm_opt n f e = (* simm後の最適化 *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e
  else if !printiterasm_flag then
    let e_cse = if !nocseasm_flag then e else CseAsm.f e in
    let oc = open_out (f ^ string_of_int n ^ ".cseasm") in
    let Asm.Prog(data, fundefs, e') = e_cse in
    let _ = List.iter (print_asm_data oc 0) data in
    let _ = List.iter (print_asm_fundef oc 0) fundefs in
    let _ = print_asm_t oc 0 e' in
    let _ = close_out oc in

    let e_beta = BetaAsm.f e_cse in
    let oc = open_out (f ^ string_of_int n ^ ".betaasm") in
    let Asm.Prog(data, fundefs, e') = e_beta in
    let _ = List.iter (print_asm_data oc 0) data in
    let _ = List.iter (print_asm_fundef oc 0) fundefs in
    let _ = print_asm_t oc 0 e' in
    let _ = close_out oc in

    let e_cf = ConstFoldAsm.f e_beta in
    let oc = open_out (f ^ string_of_int n ^ ".cfasm") in
    let Asm.Prog(data, fundefs, e') = e_cf in
    let _ = List.iter (print_asm_data oc 0) data in
    let _ = List.iter (print_asm_fundef oc 0) fundefs in
    let _ = print_asm_t oc 0 e' in
    let _ = close_out oc in

    let e_elim = ElimAsm.f e_cf in
    let oc = open_out (f ^ string_of_int n ^ ".elimasm") in
    let Asm.Prog(data, fundefs, e') = e_elim in
    let _ = List.iter (print_asm_data oc 0) data in
    let _ = List.iter (print_asm_fundef oc 0) fundefs in
    let _ = print_asm_t oc 0 e' in
    let _ = close_out oc in

    if e = e_elim then e else
    asm_opt (n - 1) f e_elim
  else
    let e' = ElimAsm.f (ConstFoldAsm.f (BetaAsm.f (if !nocseasm_flag then e else CseAsm.f e))) in
    if e = e' then e
    else
      asm_opt (n - 1) f e'

let lexbuf outchan l f outchan_parsed outchan_normalized outchan_alpha outchan_iterated outchan_cfg outchan_closure
                       outchan_flatten outchan_tace outchan_cls_opt outchan_block outchan_virtual outchan_simm outchan_asm_opt
                       outchan_addid outchan_regalloc outchan_preemit =
  (* バッファをコンパイルしてチャンネルへ出力する (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing.extenv := M.empty;
  
  let parsed = Parser.exp Lexer.token l in
  print_syntax_t outchan_parsed 0 parsed;

  let normalized = KNormal.f (Typing.f parsed) in
  print_knormal_t outchan_normalized 0 normalized;

  let alpha, env_int = Alpha.f normalized in
  print_knormal_t outchan_alpha 0 alpha;

  let iterated, env_int = iter !limit f alpha env_int in
  print_knormal_t outchan_iterated 0 iterated;
  
  let cfg = if !nocfg_flag then iterated else fst (Alpha.f (ConstFoldGlobals.f env_int iterated)) in
  print_knormal_t outchan_cfg 0 cfg;

  let closure = Closure.f cfg in
  let Closure.Prog(fundefs, e) = closure in
  List.iter (print_closure_fundef outchan_closure 0) fundefs;
  print_closure_t outchan_closure 0 e;

  let flatten = Flatten.f closure in
  let Closure.Prog(fundefs, e) = flatten in
  List.iter (print_closure_fundef outchan_flatten 0) fundefs;
  print_closure_t outchan_flatten 0 e;

  let tace = Tace.f flatten in
  let Closure.Prog(fundefs, e) = tace in
  List.iter (print_closure_fundef outchan_tace 0) fundefs;
  print_closure_t outchan_tace 0 e;

  let cls_opt = closure_opt !limit_cls closure in
  let Closure.Prog(fundefs, e) = cls_opt in
  List.iter (print_closure_fundef outchan_cls_opt 0) fundefs;
  print_closure_t outchan_cls_opt 0 e;

  (* Cfg_closure.f closure;
  print_block outchan_block !Cfg_closure.graph; *)

  let vt = Virtual.f cls_opt in
  let Asm.Prog(data, fundefs, e) = vt in
  List.iter (print_asm_data outchan_virtual 0) data;
  List.iter (print_asm_fundef outchan_virtual 0) fundefs;
  print_asm_t outchan_virtual 0 e;

  let asm_opt = asm_opt !limit_asm f vt in
  let Asm.Prog(data, fundefs, e) = asm_opt in
  List.iter (print_asm_data outchan_asm_opt 0) data;
  List.iter (print_asm_fundef outchan_asm_opt 0) fundefs;
  print_asm_t outchan_asm_opt 0 e;

  let simm = Simm.f asm_opt in
  let Asm.Prog(data, fundefs, e) = simm in
  List.iter (print_asm_data outchan_simm 0) data;
  List.iter (print_asm_fundef outchan_simm 0) fundefs;
  print_asm_t outchan_simm 0 e;

  let addid = AddId.f simm in
  let Asm.Prog(data, fundefs, e) = addid in
  List.iter (print_asm_data outchan_addid 0) data;
  List.iter (print_asm_fundef outchan_addid 0) fundefs;
  print_asm_t outchan_addid 0 e;

  let regalloc = RegAlloc.f addid in
  let Asm.Prog(data, fundefs, e) = regalloc in
  List.iter (print_asm_data outchan_regalloc 0) data;
  List.iter (print_asm_fundef outchan_regalloc 0) fundefs;
  print_asm_t outchan_regalloc 0 e;

  let preemit = PreEmit.f regalloc in
  List.iter (print_riscv_t outchan_preemit) (snd preemit);

  Emit.f outchan preemit
  (*
  Emit.f outchan
    (PreEmit.f
       (RegAlloc.f
          (Simm.f
             (AddId.f
                (Virtual.f
                   (closure_opt
                      (Tace.f
                         (Flatten.f
                            (Closure.f
                               (Alpha.f
                                  (ConstFoldGlobals.f
                                     (iter !limit
                                        (Alpha.f
                                           (KNormal.f
                                              (Typing.f
                                                 (Parser.exp Lexer.token l))))))))))))))))
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
  let outchan_flatten = open_out (f ^ ".flatten") in
  let outchan_tace = open_out (f ^ ".tace") in
  let outchan_cls_opt = open_out (f ^ ".cls_opt") in
  let outchan_block = open_out (f ^ ".block") in
  let outchan_virtual = open_out (f ^ ".virtual") in
  let outchan_simm = open_out (f ^ ".simm") in
  let outchan_asm_opt = open_out (f ^ ".asm_opt") in
  let outchan_addid = open_out (f ^ ".addid") in
  let outchan_regalloc = open_out (f ^ ".regalloc") in
  let outchan_preemit = open_out (f ^ ".preemit") in
  try
    lexbuf outchan (Lexing.from_channel inchan) f outchan_parsed outchan_normalized outchan_alpha outchan_iterated outchan_cfg
                                                  outchan_closure outchan_flatten outchan_tace outchan_cls_opt outchan_block
                                                  outchan_virtual outchan_simm outchan_asm_opt outchan_addid outchan_regalloc
                                                  outchan_preemit;
    close_in inchan;
    close_out outchan;
    close_out outchan_parsed;
    close_out outchan_normalized;
    close_out outchan_alpha;
    close_out outchan_iterated;
    close_out outchan_cfg;
    close_out outchan_closure;
    close_out outchan_flatten;
    close_out outchan_tace;
    close_out outchan_cls_opt;
    close_out outchan_block;
    close_out outchan_virtual;
    close_out outchan_simm;
    close_out outchan_asm_opt;
    close_out outchan_addid;
    close_out outchan_regalloc;
    close_out outchan_preemit
  with e -> (close_in inchan; close_out outchan; close_out outchan_parsed; close_out outchan_normalized; close_out outchan_alpha;
             close_out outchan_iterated; close_out outchan_cfg; close_out outchan_closure;
             close_out outchan_flatten; close_out outchan_tace; close_out outchan_cls_opt; close_out outchan_block;
             close_out outchan_virtual; close_out outchan_simm; close_out outchan_asm_opt; close_out outchan_addid;
             close_out outchan_regalloc; close_out outchan_preemit;
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
    [("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of recursive functions inlined");
     ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated");
     ("-itercls", Arg.Int(fun i -> limit_cls := i), "maximum number of optimizations iterated (closure_opt)");
     ("-iterasm", Arg.Int(fun i -> limit_asm := i), "maximum number of optimizations iterated (asm_opt)");
     ("-printiter", Arg.Unit(fun () -> printiter_flag := true), "printiter flag");
     ("-printiterasm", Arg.Unit(fun () -> printiterasm_flag := true), "printiterasm flag");
     ("-nocse", Arg.Unit(fun () -> nocse_flag := true), "nocse flag");
     ("-nocseasm", Arg.Unit(fun () -> nocseasm_flag := true), "nocseasm flag");
     ("-nologic", Arg.Unit(fun () -> nologic_flag := true), "nologic flag");
     ("-nocfg", Arg.Unit(fun () -> nocfg_flag := true), "nocfg flag")]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n1] [-itercls n2] [-iterasm n3] [-printiter] [-printiterasm] \
                     [-nocse] [-nocseasm] [-nologic] [-nocfg] ...filenames without \".ml\"..." Sys.argv.(0));
  List.iter
    (fun f -> ignore (file f))
    !files
