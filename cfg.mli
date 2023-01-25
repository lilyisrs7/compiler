type block = { mutable src : string list; mutable dst : string list }
val g : Closure.fundef -> unit
val f : Closure.prog -> unit
val graph : block M.t ref
