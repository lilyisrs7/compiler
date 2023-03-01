# Sumii's Makefile for Min-Caml (for GNU Make)
# 
# ack.mlなどのテストプログラムをtest/に用意してmake do_testを実行すると、
# min-camlとocamlでコンパイル・実行した結果を自動で比較します。

RESULT = min-caml
NCSUFFIX = .opt
CC = gcc
CFLAGS = -g -O2 -Wall
OCAMLLDFLAGS=-warn-error -31

default: debug-code top $(RESULT) do_test
$(RESULT): debug-code top minrt.ml
## [自分（住井）用の注]
## ・OCamlMakefileや古いGNU Makeのバグ(?)で上のような定義が必要(??)
## ・OCamlMakefileではdebug-codeとnative-codeのそれぞれで
##   .mliがコンパイルされてしまうので、両方ともdefault:の右辺に入れると
##   再make時に（.mliが変更されているので）.mlも再コンパイルされる
clean:: nobackup

minrt.ml: min-rt/minrt.ml library.ml min-rt/globals.ml
	cp /dev/null minrt.ml
	cat min-rt/globals.ml >> minrt.ml
	cat library.ml >> minrt.ml
	cat min-rt/minrt.ml >> minrt.ml

# ↓もし実装を改造したら、それに合わせて変える
SOURCES = float.c type.ml id.ml m.ml s.ml \
syntax.ml parser.mly lexer.mll typing.mli typing.ml kNormal.mli kNormal.ml \
alpha.mli alpha.ml cse.mli cse.ml beta.mli beta.ml assoc.mli assoc.ml \
inline.mli inline.ml logicOpt.mli logicOpt.ml constFold.mli constFold.ml elim.mli elim.ml constFoldGlobals.mli constFoldGlobals.ml \
closure.mli closure.ml flatten.mli flatten.ml elimTuple.mli elimTuple.ml tace.mli tace.ml betaCls.ml betaCls.mli \
assocCls.ml assocCls.mli constFoldCls.ml constFoldCls.mli elimCls.ml elimCls.mli asm.mli asm.ml virtual.mli virtual.ml \
cseAsm.mli cseAsm.ml betaAsm.mli betaAsm.ml constFoldAsm.mli constFoldAsm.ml elimAsm.mli elimAsm.ml simm.mli simm.ml \
addId.mli addId.ml regAlloc.mli regAlloc.ml riscV.mli riscV.ml preEmit.mli preEmit.ml emit.mli emit.ml printType.ml \
main.mli main.ml

# ↓テストプログラムが増えたら、これも増やす
TESTS = print sum-tail gcd sum fib ack even-odd \
adder funcomp cls-rec cls-bug cls-bug2 cls-reg-bug \
shuffle spill spill2 spill3 join-stack join-stack2 join-stack3 \
join-reg join-reg2 non-tail-if non-tail-if2 \
inprod inprod-rec inprod-loop matmul matmul-flat \
manyargs fiszero fib2 ack2 adder2 global print_int

do_test: $(TESTS:%=test/%.s) # do_test: $(TESTS:%=test/%.cmp)

.PRECIOUS: test/%.s test/% test/%.res test/%.ans test/%.cmp test/%.parsed test/%.normalized test/%.alpha test/%.iterated \
test/%.cfg test/%.closure test/%.flatten test/%.tace test/%.cls_opt test/%.block test/%.virtual test/%.simm test/%.asm_opt test/%.addid \
test/%.regalloc test/%.preemit test/%main.ml test/%main.s test/%main test/%main.res test/%main.ans test/%main.cmp \
test/%main.parsed test/%main.normalized test/%main.alpha test/%main.iterated test/%main.cfg test/%main.closure test/%main.flatten \
test/%main.tace test/%main.cls_opt test/%main.block test/%main.virtual test/%main.simm test/%main.asm_opt test/%main.addid \
test/%main.regalloc test/%main.preemit \
minrt.* test/*.cse test/*.beta test/*.assoc test/*.inline test/*.cf test/*.elim test/*.logic \
test/*.cseasm test/*.betaasm test/*.cfasm test/*.elimasm \
*.cse *.beta *.assoc *.inline *.cf *.elim *.logic *.cseasm *.betaasm *.cfasm *.elimasm
TRASH = $(TESTS:%=test/%.s) $(TESTS:%=test/%) $(TESTS:%=test/%.res) $(TESTS:%=test/%.ans) $(TESTS:%=test/%.cmp) \
$(TESTS:%=test/%.parsed) $(TESTS:%=test/%.normalized) $(TESTS:%=test/%.alpha) $(TESTS:%=test/%.iterated) $(TESTS:%=test/%.cfg) \
$(TESTS:%=test/%.closure) $(TESTS:%=test/%.flatten) $(TESTS:%=test/%.tace) $(TESTS:%=test/%.cls_opt) $(TESTS:%=test/%.block) \
$(TESTS:%=test/%.virtual) $(TESTS:%=test/%.simm) $(TESTS:%=test/%.asm_opt) $(TESTS:%=test/%.addid) $(TESTS:%=test/%.regalloc) \
$(TESTS:%=test/%.preemit) \
$(TESTS:%=test/%main.ml) $(TESTS:%=test/%main.s) $(TESTS:%=test/%main) $(TESTS:%=test/%main.res) $(TESTS:%=test/%main.ans) \
$(TESTS:%=test/%main.cmp) $(TESTS:%=test/%main.parsed) $(TESTS:%=test/%main.normalized) $(TESTS:%=test/%main.alpha) \
$(TESTS:%=test/%main.iterated) $(TESTS:%=test/%main.cfg) $(TESTS:%=test/%main.closure) $(TESTS:%=test/%main.flatten) \
$(TESTS:%=test/%main.tace) $(TESTS:%=test/%main.cls_opt) $(TESTS:%=test/%main.block) \
$(TESTS:%=test/%main.virtual) $(TESTS:%=test/%main.simm) $(TESTS:%=test/%main.asm_opt) $(TESTS:%=test/%main.addid) \
$(TESTS:%=test/%main.regalloc) $(TESTS:%=test/%main.preemit) \
minrt.* test/*.cse test/*.beta test/*.assoc test/*.inline test/*.cf test/*.elim test/*.logic \
test/*.cseasm test/*.betaasm test/*.cfasm test/*.elimasm \
*.cse *.beta *.assoc *.inline *.cf *.elim *.logic *.cseasm *.betaasm *.cfasm *.elimasm

test/%main.ml: library.ml test/%.ml
	cp /dev/null $@
	cat library.ml >> $@
	cat test/$*.ml >> $@
test/%.s: $(RESULT) test/%main.ml
	./$(RESULT) -inline 10 -nocfg -printiterasm test/$*main
test/%: test/%.s libmincaml.S stub.c
	$(CC) $(CFLAGS) -m32 $^ -lm -o $@
test/%.res: test/%
	$< > $@
test/%.ans: test/%.ml
	ocaml $< > $@
test/%.cmp: test/%.res test/%.ans
	diff $^ > $@

min-caml.html: main.mli main.ml id.ml m.ml s.ml \
		syntax.ml type.ml parser.mly lexer.mll typing.mli typing.ml kNormal.mli kNormal.ml \
		alpha.mli alpha.ml cse.mli cse.ml beta.mli beta.ml assoc.mli assoc.ml \
		inline.mli inline.ml logicOpt.mli logicOpt.ml constFold.mli constFold.ml elim.mli elim.ml \
		constFoldGlobals.mli constFoldGlobals.ml closure.mli closure.ml flatten.mli flatten.ml elimTuple.mli elimTuple.ml \
		tace.mli tace.mli betaCls.ml betaCls.mli assocCls.ml assocCls.mli constFoldCls.ml constFoldCls.mli elimCls.ml elimCls.mli \
		asm.mli asm.ml virtual.mli virtual.ml cseAsm.mli cseAsm.ml betaAsm.mli betaAsm.ml constFoldAsm.mli constFoldAsm.ml \
		elimAsm.mli elimAsm.ml simm.mli simm.ml addId.mli addId.ml regAlloc.mli regAlloc.ml \
		riscV.mli riscV.ml preEmit.mli preEmit.ml emit.mli emit.ml printType.ml 
	./to_sparc
	caml2html -o min-caml.html $^
	sed 's/.*<\/title>/MinCaml Source Code<\/title>/g' < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html
	sed 's/charset=iso-8859-1/charset=euc-jp/g' < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html
	ocaml str.cma anchor.ml < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html

release: min-caml.html
	rm -fr tmp ; mkdir tmp ; cd tmp ; cvs -d:ext:sumii@min-caml.cvs.sf.net://cvsroot/min-caml export -Dtomorrow min-caml ; tar cvzf ../min-caml.tar.gz min-caml ; cd .. ; rm -fr tmp
	cp Makefile stub.c SPARC/libmincaml.S min-caml.html min-caml.tar.gz ../htdocs/

include OCamlMakefile
