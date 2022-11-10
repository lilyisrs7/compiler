let rec fiszero x = (x = 0.0) in
let rec fispos x = (x > 0.0) in
let rec fisneg x = (x < 0.0) in
let rec fneg x = -.x in
let rec fabs x = if x > 0.0 then x else -.x in
let rec fless x y = (x < y) in
let rec fhalf x = x *. 0.5 in
let rec fsqr x = x *. x in
let rec floor x = float_of_int (int_of_float x) in
let rec int_of_float x = if x >= 1.0 then int_of_float (x -. 1.0) + 1 else 0 in
let rec float_of_int x = if x >= 1 then float_of_int (x - 1) +. 1.0 else 0.0 in
let pi = 3.14159265358979323846264 in
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
let rec sin x =
  if x < 0.0 then sin (x +. pi2)
  else if x > pi2 then sin (x -. pi2)
  else if x > pi then -. 1.0 *. (sin (x -. pi))
  else if x > pihalf then sin (pi -. x)
  else if x > piquat then cos (pihalf -. x)
  else
    let x2 = x *. x in
    let x3 = x *. x2 in
    x -. 0.16666666666666666666666 *. x3 +. 0.00833333333333333333333 *. x2 *. x3 -. 0.00019841269841269841269 *. x2 *. x2 *. x3 in

let rec cos x =
  if x < 0.0 then sin (x +. pihalf)
  else if x > piquat then sin (pihalf -. x)
  else
    let x2 = x *. x in
    let x4 = x2 *. x2 in
    1.0 -. 0.5 *. x2 +. 0.04166666666666666666666 *. x4 -. 0.00138888888888888888888 *. x2 *. x4 in

let rec atan x =
  if x < 0.0 then -. atan (-. x)
  else if x > 1.0 then pihalf -. atan (1.0 /. x)
  else
    let x2 = x *. x in
    let x3 = x *. x2 in
    x -. 0.33333333333333333333333 *. x3 +. 0.2 *. x2 *. x3 -. 0.14285714285714285714285 *. x2 *. x2 *. x3

  in ()