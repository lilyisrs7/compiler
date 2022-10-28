(*typing.mlのtop level does not have type unit warningを消す必要がある*)
let rec fib n =
  if n <= 1 then n else
  fib (n - 1) + fib (n - 2) in
(fib 1)
