let fiszero x = (x = 0.0)
let fispos x = (x > 0.0)
let fisneg x = (x < 0.0)
let fneg x = -.x
let fabs x = if x > 0.0 then x else -.x
let fless x y = (x < y)
let fhalf x = x *. 0.5
(*
let fsqr x =
let sqrt x =
let int_of_float x =?
let float_of_int x =?
let sin x =
let cos x =
let atan x =
let floor x =
*)
let pi = 3.14159265358979323846264 in
let rec sin x =
  let pi2 = pi *. 2.0 in
  let pihalf = pi *. 0.5 in
  if x < 0 then sin (x +. pi2)
  else if x > pi2 then sin (x -. pi2)
  else if x > pi then -. 1.0 * (sin (x -. pi))
  else if x > pihalf then sin (pi -. x)
  else
    let t = tan (x *. 0.5) in
    (2.0 * t) / (1.0 +.)