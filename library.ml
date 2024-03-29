let rec fiszero x = (x = 0.0) in
let rec fispos x = (x > 0.0) in
let rec fisneg x = (x < 0.0) in
let rec fneg x = -.x in
let rec fabs x = if x > 0.0 then x else -.x in
let rec fless x y = (x < y) in
let rec fhalf x = x *. 0.5 in
let rec fsqr x = x *. x in
(* let rec int_of_float x =
  if x >= 0.0 then
    if x >= 1.0 then int_of_float (x -. 1.0) + 1 else 0
  else - int_of_float (-.x) in *)
(* let rec int_of_float_rem x acc =
  if x >= 1.0 then int_of_float_rem (x -. 1.0) (acc + 1) else acc in
let rec int_of_float_four x acc =
  if x >= 4.0 then int_of_float_four (x -. 4.0) (acc + 4) else int_of_float_rem x acc in
let rec int_of_float x =
  if x >= 0.0 then int_of_float_four (x +. 0.5) 0 (* if x >= 4.0 then int_of_float (x -. 4.0) + 4 else int_of_float_rem x *)
  else - int_of_float (-.x) in *)
(* let rec int_of_float x =
  if x >= -. 0.5 then
    if x < 0.5 then 0
    else int_of_float (x -. 1.0) + 1
  else int_of_float (x +. 1.0) - 1 in *)
(* let rec int_of_float_rem x acc =
  if x >= -. 0.5 then
    if x < 0.5 then acc
    else int_of_float_rem (x -. 1.0) (acc + 1)
  else int_of_float_rem (x +. 1.0) (acc - 1) in
let rec int_of_float_four x acc =
  if x >= 4.5 then int_of_float_four (x -. 4.0) (acc + 4)
  else if x < -. 4.5 then int_of_float_four (x +. 4.0) (acc - 4)
  else int_of_float_rem x acc in
let rec int_of_float x = int_of_float_four x 0 in *)
(* let rec float_of_int x =
  if x >= 0 then
    if x >= 1 then float_of_int (x - 1) +. 1.0 else 0.0
  else -. float_of_int (-x) in *)
(* let rec float_of_int_rem x acc =
  if x >= 1 then float_of_int_rem (x - 1) (acc +. 1.0) else acc in
let rec float_of_int_four x acc =
  if x >= 4 then float_of_int_four (x - 4) (acc +. 4.0) else float_of_int_rem x acc in
let rec float_of_int x =
  if x >= 0 then float_of_int_four x 0.0
  else -. float_of_int (-x) in *)
(* let rec floor x =
  float_of_int (int_of_float (x -. 0.5)) in *)
  (* float_of_int (truncate x) in *)
  (* if x >= 0.0 then float_of_int (truncate x)
  else float_of_int (truncate x - 1) in *)
  (* float_of_int (int_of_float (x -. 0.5)) in *)
  (* if x >= 0.0 then float_of_int (int_of_float (x -. 0.5))
  else float_of_int (int_of_float (x +. 0.5) - 1) in *)
(* let rec floor x =
  if x >= 0.0 then
    if x >= 1.0 then floor (x -. 1.0) +. 1.0 else 0.0
  else
    floor (x +. 1.0) -. 1.0 in *)
let pi = 3.1415927410125732421875 in
let pi2 = pi *. 2.0 in
let pihalf = pi *. 0.5 in
let piquat = pi *. 0.25 in
(*let rec sin x =
  let pi2 = pi *. 2.0 in
  let pihalf = pi *. 0.5 in
  if x < 0 then sin (x +. pi2)
  else if x > pi2 then sin (x -. pi2)
  else if x > pi then -. 1.0 * (sin (x -. pi))
  else if x > pihalf then sin (pi -. x)
  else
    let t = tan (x *. 0.5) in
    (2.0 * t) / (1.0 +.)*)

let rec sin_main x =
  let x2 = x *. x in
  let x3 = x *. x2 in
  x -. 0.16666668 *. x3 +. 0.008332824 *. x2 *. x3 -. 0.00019587841 *. x2 *. x2 *. x3 in

let rec cos_main x =
  let x2 = x *. x in
  let x4 = x2 *. x2 in
  1.0 -. 0.5 *. x2 +. 0.04166368 *. x4 -. 0.0013695068 *. x2 *. x4 in

let rec sin x =
  if x < 0.0 then -. sin (-.x)
  else if x >= pi2 then sin (x -. pi2)
  else if x >= pi then -. sin (x -. pi)
  else if x > pihalf then sin (pi -. x)
  else if x >= piquat then cos_main (pihalf -. x)
  else sin_main x in

let rec cos x =
  if x < 0.0 then cos (-.x)
  else if x > piquat then sin (pihalf -. x)
  else cos_main x in

let rec atan x =
  if x < 0.0 then -. atan (-.x)
  else if x > 2.4375 then pihalf -. atan (1.0 /. x)
  else if x >= 0.4375 then piquat +. atan ((x -. 1.0) /. (x +. 1.0))
  else
    let x2 = x *. x in
    let x3 = x *. x2 in
    let x4 = x2 *. x2 in
    x -. 0.3333333 *. x3 +. 0.2 *. x2 *. x3 -. 0.142857142 *. x4 *. x3
    +. 0.111111104 *. x2 *. x4 *. x3 -. 0.08976446 *. x4 *. x4 *. x3 in

let rec div_rem x acc =
  if x >= 10 then div_rem (x - 10) (acc + 1) else acc in
let rec div_fifty x acc =
  if x >= 50 then div_fifty (x - 50) (acc + 5) else div_rem x acc in
let rec print_int_main x =
  if x < 10 then print_char (x + 48)
  else
    let y = div_fifty x 0 in
    (print_int_main y; print_char (x - y * 10 + 48)) in

let rec print_int x =
  let _ = if x < 100 then print_char 48 else () in
  let _ = if x < 10 then print_char 48 else () in
  print_int_main x in

let rec print_newline _ = print_char 10 in
let rec truncate x =
  if x >= 0.0 then
    if x >= 1.0 then truncate (x -. 1.0) + 1 else 0
  else - truncate (-.x) in
