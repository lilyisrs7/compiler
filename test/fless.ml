let a = Array.make 2 0 in
a.(1) <- 0;
let x = a.(0) in
let y = a.(1) in
if fless x y then print_int x else print_int y