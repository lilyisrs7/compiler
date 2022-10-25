let rec print_tab oc n = (* 問1 *)
  if n == 0 then ()
  else (Printf.fprintf oc "\t"; print_tab oc (n - 1))

let rec print_list_for_parsed oc list tab_num = (* 問1 *)
  match list with
  | hd :: [] -> print_syntax_t oc tab_num hd
  | hd :: tl -> (print_syntax_t oc tab_num hd; Printf.fprintf oc ",\n"; print_list_for_parsed oc tl tab_num)
  | _ -> assert false

and print_syntax_t oc tab_num e = (* 問1, 3 *)
  print_tab oc tab_num;
  match e with
  | Syntax.Unit(pos)                  -> Printf.fprintf oc "%d Unit" pos
  | Syntax.Bool(b, pos)               -> Printf.fprintf oc "%d Bool (%B)" pos b
  | Syntax.Int(i, pos)                -> Printf.fprintf oc "%d Int (%d)" pos i
  | Syntax.Float(d, pos)              -> Printf.fprintf oc "%d Float (%f)" pos d
  | Syntax.Not(e1, pos)               -> Printf.fprintf oc "%d Not (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc "\n";
                                         print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.Neg(e1, pos)               -> Printf.fprintf oc "%d Neg (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc "\n";
                                         print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.Add(e1, e2, pos)           -> Printf.fprintf oc "%d Add (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                         print_syntax_t oc (tab_num + 1) e2; Printf.fprintf oc "\n";
                                         print_tab oc tab_num;Printf.fprintf oc ")"
  | Syntax.Sub(e1, e2, pos)           -> Printf.fprintf oc "%d Sub (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                         print_syntax_t oc (tab_num + 1) e2; Printf.fprintf oc "\n";
                                         print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.Mul(e1, e2, pos)           -> Printf.fprintf oc "%d Mul (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                         print_syntax_t oc (tab_num + 1) e2; Printf.fprintf oc "\n";
                                         print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.Div(e1, e2, pos)           -> Printf.fprintf oc "%d Div (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                         print_syntax_t oc (tab_num + 1) e2; Printf.fprintf oc "\n";
                                         print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.FNeg(e1, pos)              -> Printf.fprintf oc "%d FNeg (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ")"
  | Syntax.FAdd(e1, e2, pos)          -> Printf.fprintf oc "%d FAdd (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                         print_syntax_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                         Printf.fprintf oc ")"
  | Syntax.FSub(e1, e2, pos)          -> Printf.fprintf oc "%d FSub (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                         print_syntax_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                         Printf.fprintf oc ")"
  | Syntax.FMul(e1, e2, pos)          -> Printf.fprintf oc "%d FMul (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                         print_syntax_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                         Printf.fprintf oc ")"
  | Syntax.FDiv(e1, e2, pos)          -> Printf.fprintf oc "%d FDiv (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                         print_syntax_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                         Printf.fprintf oc ")"
  | Syntax.Eq(e1, e2, pos)            -> Printf.fprintf oc "%d Eq (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                         print_syntax_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                         Printf.fprintf oc ")"
  | Syntax.LE(e1, e2, pos)            -> Printf.fprintf oc "%d LE (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                         print_syntax_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                         Printf.fprintf oc ")"
  | Syntax.If(e1, e2, e3, pos)        -> Printf.fprintf oc "%d If (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                         print_syntax_t oc (tab_num + 1) e2; Printf.fprintf oc ",\n"; print_syntax_t oc (tab_num + 1) e3;
                                         Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.Let((x, _), e1, e2, pos)   -> Printf.fprintf oc "%d Let (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                         print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n"; print_syntax_t oc (tab_num + 1) e2;
                                         Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.Var(x, pos)                -> Printf.fprintf oc "%d Var (%s)" pos x
  | Syntax.LetRec({ name = (x, _); args = yts; body = e1 }, e2, pos) -> Printf.fprintf oc "%d LetRec (%s,\n" pos x;
                                                                        print_tab oc (tab_num + 1); Printf.fprintf oc "[";
                                                                        List.iter (Printf.fprintf oc "%s, ") (List.map fst yts);
                                                                        Printf.fprintf oc "],\n"; print_syntax_t oc (tab_num + 1) e1;
                                                                        Printf.fprintf oc ",\n"; print_syntax_t oc (tab_num + 1) e2;
                                                                        Printf.fprintf oc "\n"; print_tab oc tab_num;
                                                                        Printf.fprintf oc ")"
  | Syntax.App(e1, es, pos)           -> Printf.fprintf oc "%d App (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                         print_tab oc (tab_num + 1); Printf.fprintf oc "[\n"; print_list_for_parsed oc es (tab_num + 1);
                                         Printf.fprintf oc "\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "]\n";
                                         print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.Tuple(es, pos)             -> Printf.fprintf oc "%d Tuple (\n" pos; print_list_for_parsed oc es (tab_num + 1);
                                         Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.LetTuple(xts, e1, e2, pos) -> Printf.fprintf oc "%d LetTuple (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "(";
                                         List.iter (Printf.fprintf oc "%s, ") (List.map fst xts); Printf.fprintf oc "),\n";
                                         print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n"; print_syntax_t oc (tab_num + 1) e2;
                                         Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.Array(e1, e2, pos)         -> Printf.fprintf oc "%d Array (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                         print_syntax_t oc (tab_num + 1) e2; Printf.fprintf oc ")"
  | Syntax.Get(e1, e2, pos)           -> Printf.fprintf oc "%d Get (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                         print_syntax_t oc (tab_num + 1) e2; Printf.fprintf oc ")"
  | Syntax.Put(e1, e2, e3, pos)       -> Printf.fprintf oc "%d Put (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                         print_syntax_t oc (tab_num + 1) e2; Printf.fprintf oc ",\n"; print_syntax_t oc (tab_num + 1) e3;
                                         Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"

let rec print_knormal_t oc tab_num e = (* 問1, 3 *)
  print_tab oc tab_num;
  match e with
  | KNormal.Unit(pos)                -> Printf.fprintf oc "%d Unit" pos
  | KNormal.Int(i, pos)              -> Printf.fprintf oc "%d Int (%d)" pos i
  | KNormal.Float(d, pos)            -> Printf.fprintf oc "%d Float (%f)" pos d
  | KNormal.Neg(x, pos)              -> Printf.fprintf oc "%d Neg (%s)" pos x;
  | KNormal.Add(x, y, pos)           -> Printf.fprintf oc "%d Add (%s, %s)" pos x y
  | KNormal.Sub(x, y, pos)           -> Printf.fprintf oc "%d Sub (%s, %s)" pos x y
  | KNormal.Mul(x, y, pos)           -> Printf.fprintf oc "%d Mul (%s, %s)" pos x y
  | KNormal.Div(x, y, pos)           -> Printf.fprintf oc "%d Div (%s, %s)" pos x y
  | KNormal.FNeg(x, pos)             -> Printf.fprintf oc "%d FNeg (%s)" pos x
  | KNormal.FAdd(x, y, pos)          -> Printf.fprintf oc "%d FAdd (%s, %s)" pos x y
  | KNormal.FSub(x, y, pos)          -> Printf.fprintf oc "%d FSub (%s, %s)" pos x y
  | KNormal.FMul(x, y, pos)          -> Printf.fprintf oc "%d FMul (%s, %s)" pos x y
  | KNormal.FDiv(x, y, pos)          -> Printf.fprintf oc "%d FDiv (%s, %s)" pos x y
  | KNormal.IfEq(x, y, e1, e2, pos)  -> Printf.fprintf oc "%d IfEq (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                        print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" y; print_knormal_t oc (tab_num + 1) e1;
                                        Printf.fprintf oc ",\n"; print_knormal_t oc (tab_num + 1) e2; Printf.fprintf oc "\n";
                                        print_tab oc tab_num; Printf.fprintf oc ")"
  | KNormal.IfLE(x, y, e1, e2, pos)  -> Printf.fprintf oc "%d IfLE (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                        print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" y; print_knormal_t oc (tab_num + 1) e1;
                                        Printf.fprintf oc ",\n"; print_knormal_t oc (tab_num + 1) e2; Printf.fprintf oc "\n";
                                        print_tab oc tab_num; Printf.fprintf oc ")"
  | KNormal.Let((x, _), e1, e2, pos) -> Printf.fprintf oc "%d Let (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                        print_knormal_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n"; print_knormal_t oc (tab_num + 1) e2;
                                        Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | KNormal.Var(x, pos)              -> Printf.fprintf oc "%d Var (%s)" pos x
  | KNormal.LetRec({ name = (x, _); args = yts; body = e1 }, e2, pos) -> Printf.fprintf oc "%d LetRec (%s,\n" pos x;
                                                                         print_tab oc (tab_num + 1); Printf.fprintf oc "[";
                                                                         List.iter (Printf.fprintf oc "%s, ") (List.map fst yts);
                                                                         Printf.fprintf oc "],\n"; print_knormal_t oc (tab_num + 1) e1;
                                                                         Printf.fprintf oc ",\n"; print_knormal_t oc (tab_num + 1) e2;
                                                                         Printf.fprintf oc "\n"; print_tab oc tab_num;
                                                                         Printf.fprintf oc ")"
  | KNormal.App(x, ys, pos)           -> Printf.fprintf oc "%d App (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                         print_tab oc (tab_num + 1); Printf.fprintf oc "["; List.iter (Printf.fprintf oc "%s, ") ys;
                                         Printf.fprintf oc "]\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | KNormal.Tuple(xs, pos)            -> Printf.fprintf oc "%d Tuple (\n" pos; print_tab oc (tab_num + 1); List.iter (Printf.fprintf oc "%s, ") xs;
                                         Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | KNormal.LetTuple(xts, y, e1, pos) -> Printf.fprintf oc "%d LetTuple (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "(";
                                         List.iter (Printf.fprintf oc "%s, ") (List.map fst xts); Printf.fprintf oc "),\n";
                                         print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" y; print_knormal_t oc (tab_num + 1) e1;
                                         Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | KNormal.Get(x, y, pos)            -> Printf.fprintf oc "%d Get (%s, %s)" pos x y
  | KNormal.Put(x, y, z, pos)         -> Printf.fprintf oc "%d Put (%s, %s, %s)" pos x y z
  | KNormal.ExtArray(x, pos)          -> Printf.fprintf oc "%d ExtArray (%s)" pos x
  | KNormal.ExtFunApp(x, ys, pos)     -> Printf.fprintf oc "%d ExtFunApp (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                         print_tab oc (tab_num + 1); Printf.fprintf oc "["; List.iter (Printf.fprintf oc "%s, ") ys;
                                         Printf.fprintf oc "]\n"; print_tab oc tab_num; Printf.fprintf oc ")"

let rec print_closure_t oc tab_num e =
  print_tab oc tab_num;
  match e with
  | Closure.Unit(pos)       -> Printf.fprintf oc "%d Unit" pos
  | Closure.Int(i, pos)     -> Printf.fprintf oc "%d Int (%d)" pos i
  | Closure.Float(d, pos)   -> Printf.fprintf oc "%d Float (%f)" pos d
  | Closure.Neg(x, pos)     -> Printf.fprintf oc "%d Neg (%s)" pos x
  | Closure.Add(x, y, pos)  -> Printf.fprintf oc "%d Add (%s, %s)" pos x y
  | Closure.Sub(x, y, pos)  -> Printf.fprintf oc "%d Sub (%s, %s)" pos x y
  | Closure.Mul(x, y, pos)  -> Printf.fprintf oc "%d Mul (%s, %s)" pos x y
  | Closure.Div(x, y, pos)  -> Printf.fprintf oc "%d Div (%s, %s)" pos x y
  | Closure.FNeg(x, pos)    -> Printf.fprintf oc "%d FNeg (%s)" pos x
  | Closure.FAdd(x, y, pos) -> Printf.fprintf oc "%d FAdd (%s, %s)" pos x y
  | Closure.FSub(x, y, pos) -> Printf.fprintf oc "%d FSub (%s, %s)" pos x y
  | Closure.FMul(x, y, pos) -> Printf.fprintf oc "%d FMul (%s, %s)" pos x y
  | Closure.FDiv(x, y, pos) -> Printf.fprintf oc "%d FDiv (%s, %s)" pos x y
  | Closure.IfEq(x, y, e1, e2, pos) -> Printf.fprintf oc "%d IfEq (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                       print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" y; print_closure_t oc (tab_num + 1) e1;
                                       Printf.fprintf oc ",\n"; print_closure_t oc (tab_num + 1) e2; Printf.fprintf oc "\n";
                                       print_tab oc tab_num; Printf.fprintf oc ")"
  | Closure.IfLE(x, y, e1, e2, pos) -> Printf.fprintf oc "%d IfLE (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                       print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" y; print_closure_t oc (tab_num + 1) e1;
                                       Printf.fprintf oc ",\n"; print_closure_t oc (tab_num + 1) e2; Printf.fprintf oc "\n";
                                       print_tab oc tab_num; Printf.fprintf oc ")"
  | Closure.Let((x, _), e1, e2, pos) -> Printf.fprintf oc "%d Let (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                        print_closure_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                        print_closure_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                        Printf.fprintf oc ")"
  | Closure.Var(x, pos)              -> Printf.fprintf oc "%d Var (%s)" pos x
  | Closure.MakeCls((x, _), { Closure.entry = Id.L(l); Closure.actual_fv = ys }, e2, pos) ->
      Printf.fprintf oc "%d MakeCls (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x; print_tab oc (tab_num + 1);
      Printf.fprintf oc "%s,\n" l; print_tab oc (tab_num + 1); Printf.fprintf oc "["; List.iter (Printf.fprintf oc "%s, ") ys;
      Printf.fprintf oc "],\n"; print_closure_t oc (tab_num + 1) e2; Printf.fprintf oc ",\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Closure.AppCls(x, ys, pos)       -> Printf.fprintf oc "%d AppCls (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                        print_tab oc (tab_num + 1); Printf.fprintf oc "["; List.iter (Printf.fprintf oc "%s, ") ys;
                                        Printf.fprintf oc "]\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Closure.AppDir(Id.L(x), ys, pos) -> Printf.fprintf oc "%d AppDir (\n" pos; print_tab oc (tab_num + 1);
                                        Printf.fprintf oc "Id.L (%s),\n" x; print_tab oc (tab_num + 1); Printf.fprintf oc "[";
                                        List.iter (Printf.fprintf oc "%s, ") ys; Printf.fprintf oc "]\n"; print_tab oc tab_num;
                                        Printf.fprintf oc ")"
  | Closure.Tuple(xs, pos)           -> Printf.fprintf oc "%d Tuple (\n" pos; print_tab oc (tab_num + 1);
                                        List.iter (Printf.fprintf oc "%s, ") xs; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                        Printf.fprintf oc ")"
  | Closure.LetTuple(xts, y, e1, pos) -> Printf.fprintf oc "%d LetTuple (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "(";
                                        List.iter (Printf.fprintf oc "%s, ") (List.map fst xts); Printf.fprintf oc "),\n";
                                        print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" y; print_closure_t oc (tab_num + 1) e1;
                                        Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Closure.Get(x, y, pos)    -> Printf.fprintf oc "%d Get (%s, %s)" pos x y
  | Closure.Put(x, y, z, pos) -> Printf.fprintf oc "%d Put (%s, %s, %s)" pos x y z
  | Closure.ExtArray(Id.L(x), pos) -> Printf.fprintf oc "%d ExtArray (Id.L (%s))" pos x

let print_closure_fundef oc tab_num ({ Closure.name = (Id.L(x), _); Closure.args = yts; Closure.formal_fv = zts;
                                       Closure.body = e }) =
  print_tab oc tab_num;
  Printf.fprintf oc "fundef (\n";
  print_tab oc (tab_num + 1); Printf.fprintf oc "name: %s\n" x;
  print_tab oc (tab_num + 1); Printf.fprintf oc "args: "; List.iter (Printf.fprintf oc "%s, ") (List.map fst yts); Printf.fprintf oc "\n";
  print_tab oc (tab_num + 1); Printf.fprintf oc "formal_fv: "; List.iter (Printf.fprintf oc "%s, ") (List.map fst zts);
  Printf.fprintf oc "\n";
  print_tab oc (tab_num + 1); Printf.fprintf oc "body:\n";
  print_closure_t oc (tab_num + 1) e; Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")\n"

let rec print_asm_exp oc tab_num e =
  print_tab oc tab_num;
  match e with
  | Asm.Nop -> Printf.fprintf oc "Nop"
  | Asm.Set(i) -> Printf.fprintf oc "Set (%d)" i
  | Asm.SetL(L(x)) -> Printf.fprintf oc "SetL (%s)" x
  | Asm.Mov(x) -> Printf.fprintf oc "Mov (%s)" x
  | Asm.Neg(x) -> Printf.fprintf oc "Neg (%s)" x
  | Asm.Add(x, V(y)) -> Printf.fprintf oc "Add (%s, %s)" x y
  | Asm.Add(x, C(y)) -> Printf.fprintf oc "Add (%s, %d)" x y
  | Asm.Sub(x, V(y)) -> Printf.fprintf oc "Sub (%s, %s)" x y
  | Asm.Sub(x, C(y)) -> Printf.fprintf oc "Sub (%s, %d)" x y
  | Asm.Mul(x, V(y)) -> Printf.fprintf oc "Mul (%s, %s)" x y
  | Asm.Mul(x, C(y)) -> Printf.fprintf oc "Mul (%s, %d)" x y
  | Asm.Div(x, V(y)) -> Printf.fprintf oc "Div (%s, %s)" x y
  | Asm.Div(x, C(y)) -> Printf.fprintf oc "Div (%s, %d)" x y
  | Asm.Ld(x, V(y), z) -> Printf.fprintf oc "Ld (%s, %s, %d)" x y z
  | Asm.Ld(x, C(y), z) -> Printf.fprintf oc "Ld (%s, %d, %d)" x y z
  | Asm.St(x, y, V(z), w) -> Printf.fprintf oc "St (%s, %s, %s, %d)" x y z w
  | Asm.St(x, y, C(z), w) -> Printf.fprintf oc "St (%s, %s, %d, %d)" x y z w
  | Asm.FMovD(x) -> Printf.fprintf oc "FMovD (%s)" x
  | Asm.FNegD(x) -> Printf.fprintf oc "FNegD (%s)" x
  | Asm.FAddD(x, y) -> Printf.fprintf oc "FAddD (%s, %s)" x y
  | Asm.FSubD(x, y) -> Printf.fprintf oc "FSubD (%s, %s)" x y
  | Asm.FMulD(x, y) -> Printf.fprintf oc "FMulD (%s, %s)" x y
  | Asm.FDivD(x, y) -> Printf.fprintf oc "FDivD (%s, %s)" x y
  | Asm.LdDF(x, V(y), z) -> Printf.fprintf oc "LdDF (%s, %s, %d)" x y z
  | Asm.LdDF(x, C(y), z) -> Printf.fprintf oc "LdDF (%s, %d, %d)" x y z
  | Asm.StDF(x, y, V(z), w) -> Printf.fprintf oc "StDF (%s, %s, %s, %d)" x y z w
  | Asm.StDF(x, y, C(z), w) -> Printf.fprintf oc "StDF (%s, %s, %d, %d)" x y z w
  | Asm.Comment(x) -> Printf.fprintf oc "Comment (%s)" x
  | Asm.IfEq(x, V(y), e1, e2) -> Printf.fprintf oc "IfEq (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                 print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" y; print_asm_t oc (tab_num + 1) e1;
                                 Printf.fprintf oc ",\n"; print_asm_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                 Printf.fprintf oc ")"
  | Asm.IfEq(x, C(y), e1, e2) -> Printf.fprintf oc "IfEq (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                 print_tab oc (tab_num + 1); Printf.fprintf oc "%d,\n" y; print_asm_t oc (tab_num + 1) e1;
                                 Printf.fprintf oc ",\n"; print_asm_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                 Printf.fprintf oc ")"
  | Asm.IfLE(x, V(y), e1, e2) -> Printf.fprintf oc "IfLE (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                 print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" y; print_asm_t oc (tab_num + 1) e1;
                                 Printf.fprintf oc ",\n"; print_asm_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                 Printf.fprintf oc ")"
  | Asm.IfLE(x, C(y), e1, e2) -> Printf.fprintf oc "IfLE (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                 print_tab oc (tab_num + 1); Printf.fprintf oc "%d,\n" y; print_asm_t oc (tab_num + 1) e1;
                                 Printf.fprintf oc ",\n"; print_asm_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                 Printf.fprintf oc ")"
  | Asm.IfGE(x, V(y), e1, e2) -> Printf.fprintf oc "IfGE (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                 print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" y; print_asm_t oc (tab_num + 1) e1;
                                 Printf.fprintf oc ",\n"; print_asm_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                 Printf.fprintf oc ")"
  | Asm.IfGE(x, C(y), e1, e2) -> Printf.fprintf oc "IfGE (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                 print_tab oc (tab_num + 1); Printf.fprintf oc "%d,\n" y; print_asm_t oc (tab_num + 1) e1;
                                 Printf.fprintf oc ",\n"; print_asm_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                 Printf.fprintf oc ")"
  | Asm.IfFEq(x, y, e1, e2) -> Printf.fprintf oc "IfFEq (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                               print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" y; print_asm_t oc (tab_num + 1) e1;
                               Printf.fprintf oc ",\n"; print_asm_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                               Printf.fprintf oc ")"
  | Asm.IfFLE(x, y, e1, e2) -> Printf.fprintf oc "IfFLE (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                               print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" y; print_asm_t oc (tab_num + 1) e1;
                               Printf.fprintf oc ",\n"; print_asm_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                               Printf.fprintf oc ")"
  | Asm.CallCls(x, ys, zs) -> Printf.fprintf oc "CallCls (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                              print_tab oc (tab_num + 1); Printf.fprintf oc "["; List.iter (Printf.fprintf oc "%s, ") ys;
                              Printf.fprintf oc "]\n"; Printf.fprintf oc "["; List.iter (Printf.fprintf oc "%s, ") zs;
                              Printf.fprintf oc "]\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Asm.CallDir(Id.L(x), ys, zs) -> Printf.fprintf oc "CallDir (\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "Id.L (%s),\n" x;
                                    print_tab oc (tab_num + 1); Printf.fprintf oc "["; List.iter (Printf.fprintf oc "%s, ") ys;
                                    Printf.fprintf oc "]\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "[";
                                    List.iter (Printf.fprintf oc "%s, ") zs; Printf.fprintf oc "]\n"; print_tab oc tab_num;
                                    Printf.fprintf oc ")"
  | Asm.Save(x, y) -> Printf.fprintf oc "Save (%s, %s)" x y
  | Asm.Restore(x) -> Printf.fprintf oc "Restore (%s)" x

and print_asm_t oc tab_num e =
  print_tab oc tab_num;
  match e with
  | Ans(exp, pos) -> Printf.fprintf oc "%d Ans (\n" pos; print_asm_exp oc (tab_num + 1) exp; Printf.fprintf oc "\n";
                     print_tab oc tab_num; Printf.fprintf oc ")"
  | Let((x, _), exp, e1, pos) -> Printf.fprintf oc "%d Let (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                 print_asm_exp oc (tab_num + 1) exp; Printf.fprintf oc ",\n"; print_asm_t oc (tab_num + 1) e1;
                                 Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"

let print_asm_data oc tab_num (Id.L(x), f) =
  print_tab oc tab_num;
  Printf.fprintf oc "data (Id.L (%s), %f)\n" x f

let print_asm_fundef oc tab_num ({ Asm.name = Id.L(l); Asm.args = xs; Asm.fargs = ys; Asm.body = e; Asm.ret = _ }) =
  print_tab oc tab_num;
  Printf.fprintf oc "fundef (\n";
  print_tab oc (tab_num + 1); Printf.fprintf oc "name: Id.L(%s)\n" l;
  print_tab oc (tab_num + 1); Printf.fprintf oc "args: "; List.iter (Printf.fprintf oc "%s, ") xs; Printf.fprintf oc "\n";
  print_tab oc (tab_num + 1); Printf.fprintf oc "fargs: "; List.iter (Printf.fprintf oc "%s, ") ys; Printf.fprintf oc "\n";
  print_tab oc (tab_num + 1); Printf.fprintf oc "body:\n"; print_asm_t oc (tab_num + 1) e; Printf.fprintf oc "\n";
  print_tab oc tab_num; Printf.fprintf oc ")\n"