let limit = ref 1000

let rec iter n e = (* 最適化処理をくりかえす (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
  let e' = Elim.f (ConstFold.f (Inline.f (Assoc.f (Beta.f e)))) in
  if e = e' then e else
  iter (n - 1) e'

  let rec print_tab oc n = (* 問1 *)
  if n == 0 then ()
  else (Printf.fprintf oc "\t"; print_tab oc (n - 1))

let rec print_list_for_parsed oc list tab_num = (* 問1 *)
  match list with
  | hd :: [] -> print_parsed oc tab_num hd
  | hd :: tl -> (print_parsed oc tab_num hd; Printf.fprintf oc ",\n"; print_list_for_parsed oc tl tab_num)

and print_parsed oc tab_num p = (* 問1 *)
  print_tab oc tab_num;
  match p with
  | Syntax.Unit                  -> Printf.fprintf oc "Unit"
  | Syntax.Bool(b)               -> Printf.fprintf oc "Bool ("; Printf.fprintf oc "%B" b ; Printf.fprintf oc ")"
  | Syntax.Int(i)                -> Printf.fprintf oc "Int ("; Printf.fprintf oc "%d" i; Printf.fprintf oc ")"
  | Syntax.Float(d)              -> Printf.fprintf oc "Float ("; Printf.fprintf oc "%f" d; Printf.fprintf oc ")"
  | Syntax.Not(e)                -> Printf.fprintf oc "Not (\n"; print_parsed oc (tab_num + 1) e; Printf.fprintf oc "\n";
                                    print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.Neg(e)                -> Printf.fprintf oc "Neg (\n"; print_parsed oc (tab_num + 1) e; Printf.fprintf oc "\n";
                                    print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.Add(e1, e2)           -> Printf.fprintf oc "Add (\n"; print_parsed oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                    print_parsed oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;Printf.fprintf oc ")"
  | Syntax.Sub(e1, e2)           -> Printf.fprintf oc "Sub (\n"; print_parsed oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                    print_parsed oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.FNeg(e)               -> Printf.fprintf oc "FNeg (\n"; print_parsed oc (tab_num + 1) e; Printf.fprintf oc ")"
  | Syntax.FAdd(e1, e2)          -> Printf.fprintf oc "FAdd (\n"; print_parsed oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                    print_parsed oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.FSub(e1, e2)          -> Printf.fprintf oc "FSub (\n"; print_parsed oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                    print_parsed oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.FMul(e1, e2)          -> Printf.fprintf oc "FMul (\n"; print_parsed oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                    print_parsed oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.FDiv(e1, e2)          -> Printf.fprintf oc "FDiv (\n"; print_parsed oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                    print_parsed oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.Eq(e1, e2)            -> Printf.fprintf oc "Eq (\n"; print_parsed oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                    print_parsed oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.LE(e1, e2)            -> Printf.fprintf oc "LE (\n"; print_parsed oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                    print_parsed oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.If(e1, e2, e3)        -> Printf.fprintf oc "If (\n"; print_parsed oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                    print_parsed oc (tab_num + 1) e2; Printf.fprintf oc ",\n"; print_parsed oc (tab_num + 1) e3;
                                    Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.Let((x, _), e1, e2)   -> Printf.fprintf oc "Let (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" x;
                                    Printf.fprintf oc ",\n"; print_parsed oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                    print_parsed oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.Var(x)                -> Printf.fprintf oc "Var ("; Printf.fprintf oc "%s" x; Printf.fprintf oc ")"
  | Syntax.LetRec({ name = (x, _); args = yts; body = e1 }, e2) -> Printf.fprintf oc "LetRec ("; Printf.fprintf oc "%s" x;
                                                                   Printf.fprintf oc ",\n"; print_tab oc (tab_num + 1);
                                                                   Printf.fprintf oc "[";
                                                                   List.iter (Printf.fprintf oc "%s, ") (List.map fst yts);
                                                                   Printf.fprintf oc "],\n"; print_parsed oc (tab_num + 1) e1;
                                                                   Printf.fprintf oc ",\n"; print_parsed oc (tab_num + 1) e2;
                                                                   Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.App(e, es)            -> Printf.fprintf oc "App (\n"; print_parsed oc (tab_num + 1) e; Printf.fprintf oc ",\n";
                                    print_tab oc (tab_num + 1); Printf.fprintf oc "[\n"; print_list_for_parsed oc es (tab_num + 1);
                                    Printf.fprintf oc "\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "]\n"; print_tab oc tab_num;
                                    Printf.fprintf oc ")"
  | Syntax.Tuple(es)             -> Printf.fprintf oc "Tuple (\n"; print_list_for_parsed oc es (tab_num + 1); Printf.fprintf oc "\n";
                                    print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.LetTuple(xts, e1, e2) -> Printf.fprintf oc "LetTuple (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "(";
                                    List.iter (Printf.fprintf oc "%s, ") (List.map fst xts); Printf.fprintf oc "),\n";
                                    print_parsed oc (tab_num + 1) e1; Printf.fprintf oc ",\n"; print_parsed oc (tab_num + 1) e2;
                                    Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.Array(e1, e2)         -> Printf.fprintf oc "Array (\n"; print_parsed oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                    print_parsed oc (tab_num + 1) e2; Printf.fprintf oc ")"
  | Syntax.Get(e1, e2)           -> Printf.fprintf oc "Get (\n"; print_parsed oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                    print_parsed oc (tab_num + 1) e2; Printf.fprintf oc ")"
  | Syntax.Put(e1, e2, e3)       -> Printf.fprintf oc "Put (\n"; print_parsed oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                    print_parsed oc (tab_num + 1) e2; Printf.fprintf oc ",\n"; print_parsed oc (tab_num + 1) e3;
                                    Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"

let rec print_normalized oc tab_num n = (* 問1 *)
  print_tab oc tab_num;
  match n with
  | KNormal.Unit                -> Printf.fprintf oc "Unit"
  | KNormal.Int(i)              -> Printf.fprintf oc "Int ("; Printf.fprintf oc "%d" i; Printf.fprintf oc ")"
  | KNormal.Float(d)            -> Printf.fprintf oc "Float ("; Printf.fprintf oc "%f" d; Printf.fprintf oc ")"
  | KNormal.Neg(x)              -> Printf.fprintf oc "Neg (\n"; print_tab oc tab_num; Printf.fprintf oc "%s" x; Printf.fprintf oc "\n";
                                   print_tab oc tab_num; Printf.fprintf oc ")"
  | KNormal.Add(x, y)           -> Printf.fprintf oc "Add (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" x;
                                   Printf.fprintf oc ",\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" y;
                                   Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | KNormal.Sub(x, y)           -> Printf.fprintf oc "Sub (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" x;
                                   Printf.fprintf oc ",\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" y;
                                   Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | KNormal.FNeg(x)             -> Printf.fprintf oc "FNeg (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" x;
                                   Printf.fprintf oc ")"
  | KNormal.FAdd(x, y)          -> Printf.fprintf oc "FAdd (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" x;
                                   Printf.fprintf oc ",\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" y;
                                   Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | KNormal.FSub(x, y)          -> Printf.fprintf oc "FSub (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" x;
                                   Printf.fprintf oc ",\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" y;
                                   Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | KNormal.FMul(x, y)          -> Printf.fprintf oc "FMul (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" x;
                                   Printf.fprintf oc ",\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" y;
                                   Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | KNormal.FDiv(x, y)          -> Printf.fprintf oc "FDiv (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" x;
                                   Printf.fprintf oc ",\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" y;
                                   Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | KNormal.IfEq(x, y, e1, e2)  -> Printf.fprintf oc "IfEq (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" x;
                                   Printf.fprintf oc ",\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" y;
                                   Printf.fprintf oc ",\n"; print_normalized oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                   print_normalized oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                   Printf.fprintf oc ")"
  | KNormal.IfLE(x, y, e1, e2)  -> Printf.fprintf oc "IfLE (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" x;
                                   Printf.fprintf oc ",\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" y;
                                   Printf.fprintf oc ",\n"; print_normalized oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                   print_normalized oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                   Printf.fprintf oc ")"
  | KNormal.Let((x, _), e1, e2) -> Printf.fprintf oc "Let (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" x;
                                   Printf.fprintf oc ",\n"; print_normalized oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                   print_normalized oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                   Printf.fprintf oc ")"
  | KNormal.Var(x)              -> Printf.fprintf oc "Var ("; Printf.fprintf oc "%s" x; Printf.fprintf oc ")"
  | KNormal.LetRec({ name = (x, _); args = yts; body = e1 }, e2) -> Printf.fprintf oc "LetRec ("; Printf.fprintf oc "%s" x;
                                                                    Printf.fprintf oc ",\n"; print_tab oc (tab_num + 1);
                                                                    Printf.fprintf oc "[";
                                                                    List.iter (Printf.fprintf oc "%s, ") (List.map fst yts);
                                                                    Printf.fprintf oc "],\n"; print_normalized oc (tab_num + 1) e1;
                                                                    Printf.fprintf oc ",\n"; print_normalized oc (tab_num + 1) e2;
                                                                    Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | KNormal.App(x, ys)          -> Printf.fprintf oc "App (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" x;
                                   Printf.fprintf oc ",\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "[";
                                   List.iter (Printf.fprintf oc "%s, ") ys; Printf.fprintf oc "]\n"; print_tab oc tab_num;
                                   Printf.fprintf oc ")"
  | KNormal.Tuple(xs)           -> Printf.fprintf oc "Tuple (\n"; print_tab oc (tab_num + 1); List.iter (Printf.fprintf oc "%s, ") xs;
                                   Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | KNormal.LetTuple(xts, y, e) -> Printf.fprintf oc "LetTuple (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "(";
                                   List.iter (Printf.fprintf oc "%s, ") (List.map fst xts); Printf.fprintf oc "),\n";
                                   print_tab oc (tab_num + 1); Printf.fprintf oc "%s" y; Printf.fprintf oc ",\n";
                                   print_normalized oc (tab_num + 1) e; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                   Printf.fprintf oc ")"
  | KNormal.Get(x, y)           -> Printf.fprintf oc "Get (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" x;
                                   Printf.fprintf oc ",\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" y; Printf.fprintf oc ")"
  | KNormal.Put(x, y, z)        -> Printf.fprintf oc "Put (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" x;
                                   Printf.fprintf oc ",\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" y;
                                   Printf.fprintf oc ",\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" z; Printf.fprintf oc "\n";
                                   print_tab oc tab_num; Printf.fprintf oc ")"
  | KNormal.ExtArray(x)         -> Printf.fprintf oc "ExtArray ("; Printf.fprintf oc "%s" x; Printf.fprintf oc ")"
  | KNormal.ExtFunApp(x, ys)    -> Printf.fprintf oc "ExtFunApp (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s" x;
                                   Printf.fprintf oc ",\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "[";
                                   List.iter (Printf.fprintf oc "%s, ") ys; Printf.fprintf oc "]\n"; print_tab oc tab_num;
                                   Printf.fprintf oc ")"

let lexbuf outchan l outchan_parsed outchan_normalized = (* バッファをコンパイルしてチャンネルへ出力する (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing.extenv := M.empty;
  let parsed = Parser.exp Lexer.token l in
  print_parsed outchan_parsed 0 parsed;
  let normalized = KNormal.f (Typing.f parsed) in
  print_normalized outchan_normalized 0 normalized;
  Emit.f outchan
    (RegAlloc.f
       (Simm.f
          (Virtual.f
             (Closure.f
                (iter !limit
                   (Alpha.f normalized))))))

(*
let lexbuf outchan l = (* バッファをコンパイルしてチャンネルへ出力する (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing.extenv := M.empty;
  Emit.f outchan
    (RegAlloc.f
       (Simm.f
          (Virtual.f
             (Closure.f
                (iter !limit
                   (Alpha.f
                      (KNormal.f
                         (Typing.f
                            (Parser.exp Lexer.token l)))))))))
*)

let string s = lexbuf stdout (Lexing.from_string s) (* 文字列をコンパイルして標準出力に表示する (caml2html: main_string) *)

let file f = (* ファイルをコンパイルしてファイルに出力する (caml2html: main_file) *)
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".s") in
  let outchan_parsed = open_out (f ^ ".parsed") in
  let outchan_normalized = open_out (f ^ ".normalized") in
  try
    lexbuf outchan (Lexing.from_channel inchan) outchan_parsed outchan_normalized;
    close_in inchan;
    close_out outchan;
    close_out outchan_parsed;
    close_out outchan_normalized;
  with e -> (close_in inchan; close_out outchan; close_out outchan_parsed; close_out outchan_normalized; raise e)

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
    [("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
     ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated")]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n] ...filenames without \".ml\"..." Sys.argv.(0));
  List.iter
    (fun f -> ignore (file f))
    !files
