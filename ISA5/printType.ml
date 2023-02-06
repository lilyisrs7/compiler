let rec print_tab oc n =
  if n == 0 then ()
  else (Printf.fprintf oc "\t"; print_tab oc (n - 1))

let rec print_list oc list =
  match list with
  | [] -> ()
  | hd :: [] -> Printf.fprintf oc "%s" hd
  | hd :: tl -> (Printf.fprintf oc "%s" hd; Printf.fprintf oc ", "; print_list oc tl)

let rec print_list_for_type oc list =
  match list with
  | [] -> ()
  | hd :: [] -> print_type_t oc hd
  | hd :: tl -> (print_type_t oc hd; Printf.fprintf oc ", "; print_list_for_type oc tl)

and print_type_t oc ty =
  match ty with
  | Type.Unit  -> Printf.fprintf oc "Unit"
  | Type.Bool  -> Printf.fprintf oc "Bool"
  | Type.Int   -> Printf.fprintf oc "Int"
  | Type.Float -> Printf.fprintf oc "Float"
  | Type.Fun(ts, t) -> Printf.fprintf oc "Fun (["; print_list_for_type oc ts; Printf.fprintf oc "], "; print_type_t oc t; Printf.fprintf oc ")"
  | Type.Tuple(ts)  -> Printf.fprintf oc "Tuple (["; print_list_for_type oc ts; Printf.fprintf oc "])"
  | Type.Array(t)   -> Printf.fprintf oc "Array ("; print_type_t oc t; Printf.fprintf oc ")"
  | Type.Var(t_option)     ->
    (match !t_option with
    | Some(t) -> Printf.fprintf oc "Var ("; print_type_t oc t; Printf.fprintf oc ")"
    | None -> Printf.fprintf oc "Var (None)")

let rec print_list_for_syntax oc list tab_num =
  match list with
  | [] -> ()
  | hd :: [] -> print_syntax_t oc tab_num hd
  | hd :: tl -> (print_syntax_t oc tab_num hd; Printf.fprintf oc ",\n"; print_list_for_syntax oc tl tab_num)

and print_syntax_t oc tab_num e =
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
  | Syntax.Let((x, t), e1, e2, pos)   -> Printf.fprintf oc "%d Let (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "(%s, " x;
                                         print_type_t oc t; Printf.fprintf oc "),\n";
                                         print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n"; print_syntax_t oc (tab_num + 1) e2;
                                         Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.Var(x, pos)                -> Printf.fprintf oc "%d Var (%s)" pos x
  | Syntax.LetRec({ name = (x, t); args = yts; body = e1 }, e2, pos) -> Printf.fprintf oc "%d LetRec ((%s, " pos x;
                                                                        print_type_t oc t; Printf.fprintf oc "),\n";
                                                                        print_tab oc (tab_num + 1); Printf.fprintf oc "[[";
                                                                        print_list oc (List.map fst yts);
                                                                        Printf.fprintf oc "], [";
                                                                        print_list_for_type oc (List.map snd yts);
                                                                        Printf.fprintf oc "]],\n"; print_syntax_t oc (tab_num + 1) e1;
                                                                        Printf.fprintf oc ",\n"; print_syntax_t oc (tab_num + 1) e2;
                                                                        Printf.fprintf oc "\n"; print_tab oc tab_num;
                                                                        Printf.fprintf oc ")"
  | Syntax.App(e1, es, pos)           -> Printf.fprintf oc "%d App (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                         print_tab oc (tab_num + 1); Printf.fprintf oc "[\n"; print_list_for_syntax oc es (tab_num + 1);
                                         Printf.fprintf oc "\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "]\n";
                                         print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.Tuple(es, pos)             -> Printf.fprintf oc "%d Tuple (\n" pos; print_list_for_syntax oc es (tab_num + 1);
                                         Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.LetTuple(xts, e1, e2, pos) -> Printf.fprintf oc "%d LetTuple (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "([";
                                         print_list oc (List.map fst xts); Printf.fprintf oc "], [";
                                         print_list_for_type oc (List.map snd xts); Printf.fprintf oc "]),\n";
                                         print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n"; print_syntax_t oc (tab_num + 1) e2;
                                         Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Syntax.Array(e1, e2, pos)         -> Printf.fprintf oc "%d Array (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                         print_syntax_t oc (tab_num + 1) e2; Printf.fprintf oc ")"
  | Syntax.Get(e1, e2, pos)           -> Printf.fprintf oc "%d Get (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                         print_syntax_t oc (tab_num + 1) e2; Printf.fprintf oc ")"
  | Syntax.Put(e1, e2, e3, pos)       -> Printf.fprintf oc "%d Put (\n" pos; print_syntax_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                         print_syntax_t oc (tab_num + 1) e2; Printf.fprintf oc ",\n"; print_syntax_t oc (tab_num + 1) e3;
                                         Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"

let rec print_knormal_t oc tab_num e =
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
  | KNormal.Let((x, t), e1, e2, pos) -> Printf.fprintf oc "%d Let (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "(%s, " x;
                                        print_type_t oc t; Printf.fprintf oc "),\n";
                                        print_knormal_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                        print_knormal_t oc (tab_num + 1) e2;
                                        Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | KNormal.Var(x, pos)              -> Printf.fprintf oc "%d Var (%s)" pos x
  | KNormal.LetRec({ name = (x, t); args = yts; body = e1 }, e2, pos) -> Printf.fprintf oc "%d LetRec ((%s, " pos x;
                                                                         print_type_t oc t; Printf.fprintf oc "),\n";
                                                                         print_tab oc (tab_num + 1); Printf.fprintf oc "[[";
                                                                         print_list oc (List.map fst yts);
                                                                         Printf.fprintf oc "], [";
                                                                         print_list_for_type oc (List.map snd yts);
                                                                         Printf.fprintf oc "]],\n"; print_knormal_t oc (tab_num + 1) e1;
                                                                         Printf.fprintf oc ",\n"; print_knormal_t oc (tab_num + 1) e2;
                                                                         Printf.fprintf oc "\n"; print_tab oc tab_num;
                                                                         Printf.fprintf oc ")"
  | KNormal.App(x, ys, pos)           -> Printf.fprintf oc "%d App (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                         print_tab oc (tab_num + 1); Printf.fprintf oc "["; print_list oc ys;
                                         Printf.fprintf oc "]\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | KNormal.Tuple(xs, pos)            -> Printf.fprintf oc "%d Tuple (\n" pos; print_tab oc (tab_num + 1); print_list oc xs;
                                         Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | KNormal.LetTuple(xts, y, e1, pos) -> Printf.fprintf oc "%d LetTuple (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "([";
                                         print_list oc (List.map fst xts); Printf.fprintf oc "], [";
                                         print_list_for_type oc (List.map snd xts); Printf.fprintf oc "]),\n";
                                         print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" y; print_knormal_t oc (tab_num + 1) e1;
                                         Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | KNormal.Get(x, y, pos)            -> Printf.fprintf oc "%d Get (%s, %s)" pos x y
  | KNormal.Put(x, y, z, pos)         -> Printf.fprintf oc "%d Put (%s, %s, %s)" pos x y z
  | KNormal.ExtArray(x, pos)          -> Printf.fprintf oc "%d ExtArray (%s)" pos x
  | KNormal.ExtFunApp(x, ys, pos)     -> Printf.fprintf oc "%d ExtFunApp (\n" pos; print_tab oc (tab_num + 1);
                                         Printf.fprintf oc "%s,\n" x; print_tab oc (tab_num + 1); Printf.fprintf oc "[";
                                         print_list oc ys; Printf.fprintf oc "]\n"; print_tab oc tab_num; Printf.fprintf oc ")"

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
  | Closure.Let((x, t), e1, e2, pos) -> Printf.fprintf oc "%d Let (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "(%s, " x;
                                        print_type_t oc t; Printf.fprintf oc "),\n";
                                        print_closure_t oc (tab_num + 1) e1; Printf.fprintf oc ",\n";
                                        print_closure_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                        Printf.fprintf oc ")"
  | Closure.Var(x, pos)              -> Printf.fprintf oc "%d Var (%s)" pos x
  | Closure.MakeCls((x, t), { Closure.entry = Id.L(l); Closure.actual_fv = ys }, e2, pos) ->
      Printf.fprintf oc "%d MakeCls (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "(%s, " x;
      print_type_t oc t; Printf.fprintf oc "),\n"; print_tab oc (tab_num + 1);
      Printf.fprintf oc "%s,\n" l; print_tab oc (tab_num + 1); Printf.fprintf oc "["; print_list oc ys;
      Printf.fprintf oc "],\n"; print_closure_t oc (tab_num + 1) e2; Printf.fprintf oc ",\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Closure.AppCls(x, ys, pos)       -> Printf.fprintf oc "%d AppCls (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                        print_tab oc (tab_num + 1); Printf.fprintf oc "["; print_list oc ys;
                                        Printf.fprintf oc "]\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Closure.AppDir(Id.L(x), ys, pos) -> Printf.fprintf oc "%d AppDir (\n" pos; print_tab oc (tab_num + 1);
                                        Printf.fprintf oc "Id.L (%s),\n" x; print_tab oc (tab_num + 1); Printf.fprintf oc "[";
                                        print_list oc ys; Printf.fprintf oc "]\n"; print_tab oc tab_num;
                                        Printf.fprintf oc ")"
  | Closure.Tuple(xs, pos)           -> Printf.fprintf oc "%d Tuple (\n" pos; print_tab oc (tab_num + 1);
                                        print_list oc xs; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                        Printf.fprintf oc ")"
  | Closure.LetTuple(xts, y, e1, pos) -> Printf.fprintf oc "%d LetTuple (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "([";
                                         print_list oc (List.map fst xts); Printf.fprintf oc "], [";
                                         print_list_for_type oc (List.map snd xts); Printf.fprintf oc "]),\n";
                                         print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" y; print_closure_t oc (tab_num + 1) e1;
                                         Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Closure.Get(x, y, pos)    -> Printf.fprintf oc "%d Get (%s, %s)" pos x y
  | Closure.Put(x, y, z, pos) -> Printf.fprintf oc "%d Put (%s, %s, %s)" pos x y z
  | Closure.ExtArray(Id.L(x), pos) -> Printf.fprintf oc "%d ExtArray (Id.L (%s))" pos x

let print_closure_fundef oc tab_num ({ Closure.name = (Id.L(x), t); Closure.args = yts; Closure.formal_fv = zts;
                                       Closure.body = e }) =
  print_tab oc tab_num;
  Printf.fprintf oc "fundef (\n";
  print_tab oc (tab_num + 1); Printf.fprintf oc "name: (%s, " x; print_type_t oc t; Printf.fprintf oc ")\n";
  print_tab oc (tab_num + 1); Printf.fprintf oc "args: ["; print_list oc (List.map fst yts);
  Printf.fprintf oc "], ["; print_list_for_type oc (List.map snd yts); Printf.fprintf oc "]\n";
  print_tab oc (tab_num + 1); Printf.fprintf oc "formal_fv: ["; print_list oc (List.map fst zts);
  Printf.fprintf oc "], ["; print_list_for_type oc (List.map snd zts); Printf.fprintf oc "]\n";
  print_tab oc (tab_num + 1); Printf.fprintf oc "body:\n";
  print_closure_t oc (tab_num + 1) e; Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")\n"

let rec print_asm_exp oc tab_num e =
  print_tab oc tab_num;
  match e with
  | Asm.Nop(id) -> Printf.fprintf oc "%d Nop" id
  | Asm.Set(i, id) -> Printf.fprintf oc "%d Set (%d)" id i
  | Asm.SetL(L(x), id) -> Printf.fprintf oc "%d SetL (%s)" id x
  | Asm.Mov(x, id) -> Printf.fprintf oc "%d Mov (%s)" id x
  | Asm.Neg(x, id) -> Printf.fprintf oc "%d Neg (%s)" id x
  | Asm.Add(x, V(y), id) -> Printf.fprintf oc "%d Add (%s, %s)" id x y
  | Asm.Add(x, C(y), id) -> Printf.fprintf oc "%d Add (%s, %d)" id x y
  | Asm.Sub(x, y, id) -> Printf.fprintf oc "%d Sub (%s, %s)" id x y
  | Asm.Mul(x, y, id) -> Printf.fprintf oc "%d Mul (%s, %s)" id x y
  | Asm.Div(x, y, id) -> Printf.fprintf oc "%d Div (%s, %s)" id x y
  | Asm.Ld(x, V(y), id) -> Printf.fprintf oc "%d Ld (%s, %s)" id x y
  | Asm.Ld(x, C(y), id) -> Printf.fprintf oc "%d Ld (%s, %d)" id x y
  | Asm.St(x, y, V(z), id) -> Printf.fprintf oc "%d St (%s, %s, %s)" id x y z
  | Asm.St(x, y, C(z), id) -> Printf.fprintf oc "%d St (%s, %s, %d)" id x y z
  | Asm.FMovD(x, id) -> Printf.fprintf oc "%d FMovD (%s)" id x
  | Asm.FNegD(x, id) -> Printf.fprintf oc "%d FNegD (%s)" id x
  | Asm.FAddD(x, y, id) -> Printf.fprintf oc "%d FAddD (%s, %s)" id x y
  | Asm.FSubD(x, y, id) -> Printf.fprintf oc "%d FSubD (%s, %s)" id x y
  | Asm.FMulD(x, y, id) -> Printf.fprintf oc "%d FMulD (%s, %s)" id x y
  | Asm.FDivD(x, y, id) -> Printf.fprintf oc "%d FDivD (%s, %s)" id x y
  | Asm.Sqrt(x, id) -> Printf.fprintf oc "%d Sqrt (%s)" id x
  | Asm.LdDF(x, V(y), id) -> Printf.fprintf oc "%d LdDF (%s, %s)" id x y
  | Asm.LdDF(x, C(y), id) -> Printf.fprintf oc "%d LdDF (%s, %d)" id x y
  | Asm.StDF(x, y, V(z), id) -> Printf.fprintf oc "%d StDF (%s, %s, %s)" id x y z
  | Asm.StDF(x, y, C(z), id) -> Printf.fprintf oc "%d StDF (%s, %s, %d)" id x y z
  | Asm.Comment(x, id) -> Printf.fprintf oc "%d Comment (%s)" id x
  | Asm.IfEq(x, y, e1, e2, id) -> Printf.fprintf oc "%d IfEq (\n" id; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                  print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" y; print_asm_t oc (tab_num + 1) e1;
                                  Printf.fprintf oc ",\n"; print_asm_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                  Printf.fprintf oc ")"
  | Asm.IfLE(x, y, e1, e2, id) -> Printf.fprintf oc "%d IfLE (\n" id; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                  print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" y; print_asm_t oc (tab_num + 1) e1;
                                  Printf.fprintf oc ",\n"; print_asm_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                  Printf.fprintf oc ")"
  | Asm.IfGE(x, y, e1, e2, id) -> Printf.fprintf oc "%d IfGE (\n" id; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                  print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" y; print_asm_t oc (tab_num + 1) e1;
                                  Printf.fprintf oc ",\n"; print_asm_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                  Printf.fprintf oc ")"
  | Asm.IfFEq(x, y, e1, e2, id) -> Printf.fprintf oc "%d IfFEq (\n" id; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                  print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" y; print_asm_t oc (tab_num + 1) e1;
                                  Printf.fprintf oc ",\n"; print_asm_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                  Printf.fprintf oc ")"
  | Asm.IfFLE(x, y, e1, e2, id) -> Printf.fprintf oc "%d IfFLE (\n" id; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                  print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" y; print_asm_t oc (tab_num + 1) e1;
                                  Printf.fprintf oc ",\n"; print_asm_t oc (tab_num + 1) e2; Printf.fprintf oc "\n"; print_tab oc tab_num;
                                  Printf.fprintf oc ")"
  | Asm.CallCls(x, ys, zs, id) -> Printf.fprintf oc "%d CallCls (\n" id; print_tab oc (tab_num + 1); Printf.fprintf oc "%s,\n" x;
                                  print_tab oc (tab_num + 1); Printf.fprintf oc "["; print_list oc ys;
                                  Printf.fprintf oc "]\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "["; print_list oc zs;
                                  Printf.fprintf oc "]\n"; print_tab oc tab_num; Printf.fprintf oc ")"
  | Asm.CallDir(Id.L(x), ys, zs, id) -> Printf.fprintf oc "%d CallDir (\n" id; print_tab oc (tab_num + 1); Printf.fprintf oc "Id.L (%s),\n" x;
                                        print_tab oc (tab_num + 1); Printf.fprintf oc "["; print_list oc ys;
                                        Printf.fprintf oc "]\n"; print_tab oc (tab_num + 1); Printf.fprintf oc "["; print_list oc zs;
                                        Printf.fprintf oc "]\n"; print_tab oc tab_num;
                                        Printf.fprintf oc ")"
  | Asm.Save(x, y, id) -> Printf.fprintf oc "%d Save (%s, %s)" id x y
  | Asm.Restore(x, id) -> Printf.fprintf oc "%d Restore (%s)" id x

and print_asm_t oc tab_num e =
  print_tab oc tab_num;
  match e with
  | Asm.Ans(exp, pos) -> Printf.fprintf oc "%d Ans (\n" pos; print_asm_exp oc (tab_num + 1) exp; Printf.fprintf oc "\n";
                         print_tab oc tab_num; Printf.fprintf oc ")"
  | Asm.Let((x, t), exp, e1, pos) -> Printf.fprintf oc "%d Let (\n" pos; print_tab oc (tab_num + 1); Printf.fprintf oc "(%s, " x;
                                     print_type_t oc t; Printf.fprintf oc "),\n";
                                     print_asm_exp oc (tab_num + 1) exp; Printf.fprintf oc ",\n"; print_asm_t oc (tab_num + 1) e1;
                                     Printf.fprintf oc "\n"; print_tab oc tab_num; Printf.fprintf oc ")"

let print_asm_data oc tab_num (Id.L(x), f, num) =
  print_tab oc tab_num;
  Printf.fprintf oc "data (Id.L (%s), %f, %d)\n" x f num

let print_asm_fundef oc tab_num ({ Asm.name = Id.L(l); Asm.args = xs; Asm.fargs = ys; Asm.body = e; Asm.ret = t }) =
  print_tab oc tab_num;
  Printf.fprintf oc "fundef (\n";
  print_tab oc (tab_num + 1); Printf.fprintf oc "name: Id.L(%s)\n" l;
  print_tab oc (tab_num + 1); Printf.fprintf oc "args: "; List.iter (Printf.fprintf oc "%s, ") xs; Printf.fprintf oc "\n";
  print_tab oc (tab_num + 1); Printf.fprintf oc "fargs: "; List.iter (Printf.fprintf oc "%s, ") ys; Printf.fprintf oc "\n";
  print_tab oc (tab_num + 1); Printf.fprintf oc "ret: "; print_type_t oc t; Printf.fprintf oc "\n";
  print_tab oc (tab_num + 1); Printf.fprintf oc "body:\n"; print_asm_t oc (tab_num + 1) e; Printf.fprintf oc "\n";
  print_tab oc tab_num; Printf.fprintf oc ")\n"

let print_riscv_t oc e =
  match e with
  | RiscV.Label(s) -> Printf.fprintf oc "%s:\n" s
  | RiscV.Addi(x, y, i, p) -> Printf.fprintf oc "\taddi\t%s, %s, %d\t# %d\n" x y i p
  | RiscV.Add(x, y, z, p) -> Printf.fprintf oc "\tadd\t\t%s, %s, %s\t# %d\n" x y z p
  | RiscV.Sub(x, y, z, p) -> Printf.fprintf oc "\tsub\t\t%s, %s, %s\t# %d\n" x y z p
  | RiscV.Mul(x, y, z, p) -> Printf.fprintf oc "\tmul\t\t%s, %s, %s\t# %d\n" x y z p
  | RiscV.Div(x, y, z, p) -> Printf.fprintf oc "\tdiv\t\t%s, %s, %s\t# %d\n" x y z p
  | RiscV.Lui(x, i, p) ->    Printf.fprintf oc "\tlui\t\t%s, %d\t# %d\n" x i p
  | RiscV.Ori(x, y, i, p) -> Printf.fprintf oc "\tori\t\t%s, %s, %d\t# %d\n" x y i p
  | RiscV.LuiLb(x, l, p) ->  Printf.fprintf oc "\tlui\t\t%s, %%hi(%s)\t# %d\n" x l p
  | RiscV.OriLb(x, y, l, p) -> Printf.fprintf oc "\tori\t\t%s, %s, %%lo(%s)\t# %d\n" x y l p
  | RiscV.Lw(x, i, y, p) ->   Printf.fprintf oc "\tlw\t\t%s, %d(%s)\t# %d\n" x i y p
  | RiscV.Sw(x, i, y, p) ->   Printf.fprintf oc "\tsw\t\t%s, %d(%s)\t# %d\n" x i y p
  | RiscV.FAdd(x, y, z, p) -> Printf.fprintf oc "\tfadd\t%s, %s, %s\t# %d\n" x y z p
  | RiscV.FSub(x, y, z, p) -> Printf.fprintf oc "\tfsub\t%s, %s, %s\t# %d\n" x y z p
  | RiscV.FMul(x, y, z, p) -> Printf.fprintf oc "\tfmul\t%s, %s, %s\t# %d\n" x y z p
  | RiscV.FDiv(x, y, z, p) -> Printf.fprintf oc "\tfdiv\t%s, %s, %s\t# %d\n" x y z p
  | RiscV.FSqrt(x, y, p) ->   Printf.fprintf oc "\tfsqrt\t%s, %s\t# %d\n" x y p
  | RiscV.FLw(x, i, y, p) -> Printf.fprintf oc "\tflw\t\t%s, %d(%s)\t# %d\n" x i y p
  | RiscV.FSw(x, i, y, p) -> Printf.fprintf oc "\tfsw\t\t%s, %d(%s)\t# %d\n" x i y p
  | RiscV.Comment(s, p) ->   Printf.fprintf oc "\t# %s\t# %d\n" s p
  | RiscV.Jal(x, l, p) ->    Printf.fprintf oc "\tjal\t\t%s, %s\t# %d\n" x l p
  | RiscV.Jalr(x, y, i, p) -> Printf.fprintf oc "\tjalr\t%s, %s, %d\t# %d\n" x y i p
  | RiscV.Beq(x, y, l, p) -> Printf.fprintf oc "\tbeq\t\t%s, %s, %s\t# %d\n" x y l p
  | RiscV.Ble(x, y, l, p) -> Printf.fprintf oc "\tble\t\t%s, %s, %s\t# %d\n" x y l p
  | RiscV.Bge(x, y, l, p) -> Printf.fprintf oc "\tbge\t\t%s, %s, %s\t# %d\n" x y l p
  | RiscV.Feq(x, y, l, p) -> Printf.fprintf oc "\tfeq\t\t%s, %s, %s\t# %d\n" x y l p
  | RiscV.Fle(x, y, l, p) -> Printf.fprintf oc "\tfle\t\t%s, %s, %s\t# %d\n" x y l p

let print_block oc graph =
  let node_list = M.bindings graph in
  List.iter
  (fun (id, { Cfg.src = src_lst; Cfg.dst = dst_lst }) -> Printf.fprintf oc "%s" id; Printf.fprintf oc "\n["; print_list oc src_lst;
                                                         Printf.fprintf oc "]\n["; print_list oc dst_lst; Printf.fprintf oc "]\n\n")
  node_list