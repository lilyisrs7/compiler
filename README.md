# compiler
## make
```
./to_ISA5
make
```
## generate assembly
### arguments
 - -inline: maximum size of recursive functions inlined (default 0)
 - -iter: maximum number of optimizations iterated (default 1000)
 - -itercls: maximum number of optimizations iterated (closure_opt; default 1000)
 - -iterasm: maximum number of optimizations iterated (asm_opt; default 1000)
 - -printiter: print result per iteration (default false)
 - -printiterasm: print result per iteration (asm_opt; default false)
 - -nocse: disable cse optimization (default false)
 - -nocseasm: disable cse optimization (asm_opt; default false)
 - -nologic: disable logic optimization (default false)
 - -nocfg: disable constfoldglobals optimization (default false)
 - -debug: print index of each label (default false)
 - -debugall: print index of each instruction (default false)
 - -arrinst: use arrlw, arrsw, arrflw, arrfsw (default false)
### example
```
./min-caml -inline 10 -printiterasm minrt
```
