type block = { mutable src : string list; mutable dst : string list }
val f : Asm.prog -> unit
val graph : block M.t ref
