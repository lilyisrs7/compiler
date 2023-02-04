# compiler
## make
```
./to_ISA5
make
```
## generate assembly
### arguments
 - -inline: maximum size of functions inlined (default 0)
 - -iter: maximum number of optimizations iterated (default 1000)
 - -printiter: print result per iteration (default false)
 - -nocse: disable cse optimization (default false)
 - -nologic: disable logic optimization (default false)
 - -nocfg: disable constfoldglobals optimization (default false)
### example
```
./min-caml -inline 10 -printiter minrt
```
