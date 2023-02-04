l.0:	# 8388608.000000
	.word	8388608.000000
l.1:	# 0.000000
	.word	0.000000
l.2:	# 1.000000
	.word	1.000000
l.22011:	# 1000000000.000000
	.word	1000000000.000000
l.22006:	# 255.000000
	.word	255.000000
l.21991:	# 0.785398
	.word	0.785398
l.21989:	# 1.570796
	.word	1.570796
l.21987:	# 6.283185
	.word	6.283185
l.21985:	# 3.141593
	.word	3.141593
l.21644:	# 128.000000
	.word	128.000000
l.20827:	# 0.900000
	.word	0.900000
l.19040:	# 150.000000
	.word	150.000000
l.18938:	# -150.000000
	.word	-150.000000
l.18750:	# 0.100000
	.word	0.100000
l.18596:	# -2.000000
	.word	-2.000000
l.18555:	# 0.003906
	.word	0.003906
l.18296:	# 20.000000
	.word	20.000000
l.18294:	# 0.050000
	.word	0.050000
l.18272:	# 0.250000
	.word	0.250000
l.18255:	# 10.000000
	.word	10.000000
l.18238:	# 0.300000
	.word	0.300000
l.18235:	# 0.150000
	.word	0.150000
l.18220:	# 3.141593
	.word	3.141593
l.18218:	# 30.000000
	.word	30.000000
l.18215:	# 15.000000
	.word	15.000000
l.18213:	# 0.000100
	.word	0.000100
l.18079:	# 100000000.000000
	.word	100000000.000000
l.17059:	# -0.100000
	.word	-0.100000
l.16894:	# 0.010000
	.word	0.010000
l.16892:	# -0.200000
	.word	-0.200000
l.16024:	# -1.000000
	.word	-1.000000
l.15943:	# 2.000000
	.word	2.000000
l.15786:	# -200.000000
	.word	-200.000000
l.15781:	# 200.000000
	.word	200.000000
l.15757:	# 0.017453
	.word	0.017453
l.15745:	# 0.089764
	.word	0.089764
l.15743:	# 0.111111
	.word	0.111111
l.15741:	# 0.142857
	.word	0.142857
l.15739:	# 0.200000
	.word	0.200000
l.15737:	# 0.333333
	.word	0.333333
l.15735:	# 0.437500
	.word	0.437500
l.15732:	# 2.437500
	.word	2.437500
l.15685:	# 0.001370
	.word	0.001370
l.15683:	# 0.041664
	.word	0.041664
l.15681:	# 0.500000
	.word	0.500000
l.15678:	# 0.000196
	.word	0.000196
l.15676:	# 0.008333
	.word	0.008333
l.15674:	# 0.166667
	.word	0.166667
l.15661:	# 1.000000
	.word	1.000000
l.15659:	# 0.000000
	.word	0.000000
int_of_float.2487:
	lui		x4, %hi(l.15659)	# 10
	ori		x4, x0, %lo(l.15659)	# 10
	flw		f1, 0(x4)	# 10
	fle		x31, f1, f0	# 10
	beq		x31, x0, fle_else.295371	# 10
	lui		x4, %hi(l.15661)	# 11
	ori		x4, x0, %lo(l.15661)	# 11
	flw		f2, 0(x4)	# 11
	fle		x31, f2, f0	# 11
	beq		x31, x0, fle_else.295372	# 11
	fsub	f0, f0, f2	# 11
	fle		x31, f1, f0	# 10
	beq		x31, x0, fle_else.295374	# 10
	lui		x4, %hi(l.15661)	# 11
	ori		x4, x0, %lo(l.15661)	# 11
	flw		f1, 0(x4)	# 11
	fle		x31, f1, f0	# 11
	beq		x31, x0, fle_else.295376	# 11
	lui		x4, %hi(l.15661)	# 11
	ori		x4, x0, %lo(l.15661)	# 11
	flw		f1, 0(x4)	# 11
	fsub	f0, f0, f1	# 11
	sw		x1, 0(x2)	# 11
	addi	x2, x2, -4	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 4	# 11
	lw		x1, 0(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.295375	# 11
fle_else.295376:
	addi	x4, x0, 0	# 11
fle_cont.295375:
	jal		x0, fle_cont.295373	# 10
fle_else.295374:
	fsub	x31, x31, x31	# 12
	fsub	f0, x31, f0	# 12
	sw		x1, 0(x2)	# 12
	addi	x2, x2, -4	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 4	# 12
	lw		x1, 0(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.295373:
	addi	x4, x4, 1	# 11
	jalr	x0, x1, 0	# 11
fle_else.295372:
	addi	x4, x0, 0	# 11
	jalr	x0, x1, 0	# 11
fle_else.295371:
	fsub	x31, x31, x31	# 12
	fsub	f0, x31, f0	# 12
	fle		x31, f1, f0	# 10
	beq		x31, x0, fle_else.295378	# 10
	lui		x4, %hi(l.15661)	# 11
	ori		x4, x0, %lo(l.15661)	# 11
	flw		f1, 0(x4)	# 11
	fle		x31, f1, f0	# 11
	beq		x31, x0, fle_else.295380	# 11
	lui		x4, %hi(l.15661)	# 11
	ori		x4, x0, %lo(l.15661)	# 11
	flw		f1, 0(x4)	# 11
	fsub	f0, f0, f1	# 11
	sw		x1, 0(x2)	# 11
	addi	x2, x2, -4	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 4	# 11
	lw		x1, 0(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.295379	# 11
fle_else.295380:
	addi	x4, x0, 0	# 11
fle_cont.295379:
	jal		x0, fle_cont.295377	# 10
fle_else.295378:
	fsub	x31, x31, x31	# 12
	fsub	f0, x31, f0	# 12
	sw		x1, 0(x2)	# 12
	addi	x2, x2, -4	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 4	# 12
	lw		x1, 0(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.295377:
	sub		x4, x0, x4	# 12
	jalr	x0, x1, 0	# 12
float_of_int.2489:
	addi	x5, x0, 0	# 14
	ble		x5, x4, ble.295381	# 14
	sub		x4, x0, x4	# 16
	ble		x5, x4, ble.295383	# 14
	sub		x4, x0, x4	# 16
	sw		x1, 0(x2)	# 16
	addi	x2, x2, -4	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 4	# 16
	lw		x1, 0(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.295382	# 14
ble.295383:
	ori		x5, x0, 1	# 15
	ble		x5, x4, ble.295385	# 15
	lui		x4, %hi(l.15659)	# 15
	ori		x4, x0, %lo(l.15659)	# 15
	flw		f0, 0(x4)	# 15
	jal		x0, ble_cont.295384	# 15
ble.295385:
	ori		x5, x0, 1	# 15
	sub		x4, x4, x5	# 15
	sw		x1, 0(x2)	# 15
	addi	x2, x2, -4	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 4	# 15
	lw		x1, 0(x2)	# 15
	lui		x4, %hi(l.15661)	# 15
	ori		x4, x0, %lo(l.15661)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.295384:
ble_cont.295382:
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jalr	x0, x1, 0	# 16
ble.295381:
	ori		x6, x0, 1	# 15
	ble		x6, x4, ble.295386	# 15
	lui		x4, %hi(l.15659)	# 15
	ori		x4, x0, %lo(l.15659)	# 15
	flw		f0, 0(x4)	# 15
	jalr	x0, x1, 0	# 15
ble.295386:
	sub		x4, x4, x6	# 15
	ble		x5, x4, ble.295388	# 14
	sub		x4, x0, x4	# 16
	sw		x1, 0(x2)	# 16
	addi	x2, x2, -4	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 4	# 16
	lw		x1, 0(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.295387	# 14
ble.295388:
	ori		x5, x0, 1	# 15
	ble		x5, x4, ble.295390	# 15
	lui		x4, %hi(l.15659)	# 15
	ori		x4, x0, %lo(l.15659)	# 15
	flw		f0, 0(x4)	# 15
	jal		x0, ble_cont.295389	# 15
ble.295390:
	ori		x5, x0, 1	# 15
	sub		x4, x4, x5	# 15
	sw		x1, 0(x2)	# 15
	addi	x2, x2, -4	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 4	# 15
	lw		x1, 0(x2)	# 15
	lui		x4, %hi(l.15661)	# 15
	ori		x4, x0, %lo(l.15661)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.295389:
ble_cont.295387:
	lui		x4, %hi(l.15661)	# 15
	ori		x4, x0, %lo(l.15661)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
	jalr	x0, x1, 0	# 15
sin.2501:
	flw		f1, 16(x27)	# 46
	flw		f2, 12(x27)	# 46
	flw		f3, 8(x27)	# 46
	flw		f4, 4(x27)	# 46
	lui		x4, %hi(l.15659)	# 46
	ori		x4, x0, %lo(l.15659)	# 46
	flw		f5, 0(x4)	# 46
	fle		x31, f5, f0	# 46
	beq		x31, x0, fle_else.295391	# 46
	fle		x31, f3, f0	# 47
	beq		x31, x0, fle_else.295392	# 47
	fsub	f0, f0, f3	# 47
	fle		x31, f5, f0	# 46
	beq		x31, x0, fle_else.295393	# 46
	fle		x31, f3, f0	# 47
	beq		x31, x0, fle_else.295394	# 47
	fsub	f0, f0, f3	# 47
	lw		x31, 0(x27)	# 47
	jalr	x0, x31, 0	# 47
fle_else.295394:
	fle		x31, f4, f0	# 48
	beq		x31, x0, fle_else.295395	# 48
	fsub	f0, f0, f4	# 48
	sw		x1, 0(x2)	# 48
	addi	x2, x2, -4	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 4	# 48
	lw		x1, 0(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jalr	x0, x1, 0	# 48
fle_else.295395:
	fle		x31, f0, f2	# 49
	beq		x31, x0, fle_else.295396	# 49
	fle		x31, f1, f0	# 50
	beq		x31, x0, fle_else.295397	# 50
	fsub	f0, f2, f0	# 50
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jalr	x0, x1, 0	# 43
fle_else.295397:
	fmul	f1, f0, f0	# 36
	fmul	f2, f0, f1	# 37
	lui		x4, %hi(l.15674)	# 38
	ori		x4, x0, %lo(l.15674)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f2	# 38
	fsub	f0, f0, f3	# 38
	lui		x4, %hi(l.15676)	# 38
	ori		x4, x0, %lo(l.15676)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f3, f3, f2	# 38
	fadd	f0, f0, f3	# 38
	lui		x4, %hi(l.15678)	# 38
	ori		x4, x0, %lo(l.15678)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f1, f3, f1	# 38
	fmul	f1, f1, f2	# 38
	fsub	f0, f0, f1	# 38
	jalr	x0, x1, 0	# 38
fle_else.295396:
	fsub	f0, f4, f0	# 49
	lw		x31, 0(x27)	# 49
	jalr	x0, x31, 0	# 49
fle_else.295393:
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
	sw		x1, 0(x2)	# 46
	addi	x2, x2, -4	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 4	# 46
	lw		x1, 0(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
	jalr	x0, x1, 0	# 46
fle_else.295392:
	fle		x31, f4, f0	# 48
	beq		x31, x0, fle_else.295398	# 48
	fsub	f0, f0, f4	# 48
	fle		x31, f5, f0	# 46
	beq		x31, x0, fle_else.295400	# 46
	fle		x31, f3, f0	# 47
	beq		x31, x0, fle_else.295402	# 47
	fsub	f0, f0, f3	# 47
	sw		x1, 0(x2)	# 47
	addi	x2, x2, -4	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 4	# 47
	lw		x1, 0(x2)	# 47
	jal		x0, fle_cont.295401	# 47
fle_else.295402:
	fle		x31, f4, f0	# 48
	beq		x31, x0, fle_else.295404	# 48
	fsub	f0, f0, f4	# 48
	sw		x1, 0(x2)	# 48
	addi	x2, x2, -4	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 4	# 48
	lw		x1, 0(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.295403	# 48
fle_else.295404:
	fle		x31, f0, f2	# 49
	beq		x31, x0, fle_else.295406	# 49
	fle		x31, f1, f0	# 50
	beq		x31, x0, fle_else.295408	# 50
	fsub	f0, f2, f0	# 50
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jal		x0, fle_cont.295407	# 50
fle_else.295408:
	fmul	f1, f0, f0	# 36
	fmul	f2, f0, f1	# 37
	lui		x4, %hi(l.15674)	# 38
	ori		x4, x0, %lo(l.15674)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f2	# 38
	fsub	f0, f0, f3	# 38
	lui		x4, %hi(l.15676)	# 38
	ori		x4, x0, %lo(l.15676)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f3, f3, f2	# 38
	fadd	f0, f0, f3	# 38
	lui		x4, %hi(l.15678)	# 38
	ori		x4, x0, %lo(l.15678)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f1, f3, f1	# 38
	fmul	f1, f1, f2	# 38
	fsub	f0, f0, f1	# 38
fle_cont.295407:
	jal		x0, fle_cont.295405	# 49
fle_else.295406:
	fsub	f0, f4, f0	# 49
	sw		x1, 0(x2)	# 49
	addi	x2, x2, -4	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 4	# 49
	lw		x1, 0(x2)	# 49
fle_cont.295405:
fle_cont.295403:
fle_cont.295401:
	jal		x0, fle_cont.295399	# 46
fle_else.295400:
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
	sw		x1, 0(x2)	# 46
	addi	x2, x2, -4	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 4	# 46
	lw		x1, 0(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.295399:
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jalr	x0, x1, 0	# 48
fle_else.295398:
	fle		x31, f0, f2	# 49
	beq		x31, x0, fle_else.295409	# 49
	fle		x31, f1, f0	# 50
	beq		x31, x0, fle_else.295410	# 50
	fsub	f0, f2, f0	# 50
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jalr	x0, x1, 0	# 43
fle_else.295410:
	fmul	f1, f0, f0	# 36
	fmul	f2, f0, f1	# 37
	lui		x4, %hi(l.15674)	# 38
	ori		x4, x0, %lo(l.15674)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f2	# 38
	fsub	f0, f0, f3	# 38
	lui		x4, %hi(l.15676)	# 38
	ori		x4, x0, %lo(l.15676)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f3, f3, f2	# 38
	fadd	f0, f0, f3	# 38
	lui		x4, %hi(l.15678)	# 38
	ori		x4, x0, %lo(l.15678)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f1, f3, f1	# 38
	fmul	f1, f1, f2	# 38
	fsub	f0, f0, f1	# 38
	jalr	x0, x1, 0	# 38
fle_else.295409:
	fsub	f0, f4, f0	# 49
	fle		x31, f5, f0	# 46
	beq		x31, x0, fle_else.295411	# 46
	fle		x31, f3, f0	# 47
	beq		x31, x0, fle_else.295412	# 47
	fsub	f0, f0, f3	# 47
	lw		x31, 0(x27)	# 47
	jalr	x0, x31, 0	# 47
fle_else.295412:
	fle		x31, f4, f0	# 48
	beq		x31, x0, fle_else.295413	# 48
	fsub	f0, f0, f4	# 48
	sw		x1, 0(x2)	# 48
	addi	x2, x2, -4	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 4	# 48
	lw		x1, 0(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jalr	x0, x1, 0	# 48
fle_else.295413:
	fle		x31, f0, f2	# 49
	beq		x31, x0, fle_else.295414	# 49
	fle		x31, f1, f0	# 50
	beq		x31, x0, fle_else.295415	# 50
	fsub	f0, f2, f0	# 50
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jalr	x0, x1, 0	# 43
fle_else.295415:
	fmul	f1, f0, f0	# 36
	fmul	f2, f0, f1	# 37
	lui		x4, %hi(l.15674)	# 38
	ori		x4, x0, %lo(l.15674)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f2	# 38
	fsub	f0, f0, f3	# 38
	lui		x4, %hi(l.15676)	# 38
	ori		x4, x0, %lo(l.15676)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f3, f3, f2	# 38
	fadd	f0, f0, f3	# 38
	lui		x4, %hi(l.15678)	# 38
	ori		x4, x0, %lo(l.15678)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f1, f3, f1	# 38
	fmul	f1, f1, f2	# 38
	fsub	f0, f0, f1	# 38
	jalr	x0, x1, 0	# 38
fle_else.295414:
	fsub	f0, f4, f0	# 49
	lw		x31, 0(x27)	# 49
	jalr	x0, x31, 0	# 49
fle_else.295411:
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
	sw		x1, 0(x2)	# 46
	addi	x2, x2, -4	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 4	# 46
	lw		x1, 0(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
	jalr	x0, x1, 0	# 46
fle_else.295391:
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
	fle		x31, f5, f0	# 46
	beq		x31, x0, fle_else.295417	# 46
	fle		x31, f3, f0	# 47
	beq		x31, x0, fle_else.295419	# 47
	fsub	f0, f0, f3	# 47
	sw		x1, 0(x2)	# 47
	addi	x2, x2, -4	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 4	# 47
	lw		x1, 0(x2)	# 47
	jal		x0, fle_cont.295418	# 47
fle_else.295419:
	fle		x31, f4, f0	# 48
	beq		x31, x0, fle_else.295421	# 48
	fsub	f0, f0, f4	# 48
	sw		x1, 0(x2)	# 48
	addi	x2, x2, -4	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 4	# 48
	lw		x1, 0(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.295420	# 48
fle_else.295421:
	fle		x31, f0, f2	# 49
	beq		x31, x0, fle_else.295423	# 49
	fle		x31, f1, f0	# 50
	beq		x31, x0, fle_else.295425	# 50
	fsub	f0, f2, f0	# 50
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jal		x0, fle_cont.295424	# 50
fle_else.295425:
	fmul	f1, f0, f0	# 36
	fmul	f2, f0, f1	# 37
	lui		x4, %hi(l.15674)	# 38
	ori		x4, x0, %lo(l.15674)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f2	# 38
	fsub	f0, f0, f3	# 38
	lui		x4, %hi(l.15676)	# 38
	ori		x4, x0, %lo(l.15676)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f3, f3, f2	# 38
	fadd	f0, f0, f3	# 38
	lui		x4, %hi(l.15678)	# 38
	ori		x4, x0, %lo(l.15678)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f1, f3, f1	# 38
	fmul	f1, f1, f2	# 38
	fsub	f0, f0, f1	# 38
fle_cont.295424:
	jal		x0, fle_cont.295422	# 49
fle_else.295423:
	fsub	f0, f4, f0	# 49
	sw		x1, 0(x2)	# 49
	addi	x2, x2, -4	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 4	# 49
	lw		x1, 0(x2)	# 49
fle_cont.295422:
fle_cont.295420:
fle_cont.295418:
	jal		x0, fle_cont.295416	# 46
fle_else.295417:
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
	sw		x1, 0(x2)	# 46
	addi	x2, x2, -4	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 4	# 46
	lw		x1, 0(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.295416:
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
	jalr	x0, x1, 0	# 46
cos.2503:
	lw		x4, 20(x27)	# 54
	flw		f1, 16(x27)	# 54
	flw		f2, 12(x27)	# 54
	flw		f3, 8(x27)	# 54
	flw		f4, 4(x27)	# 54
	lui		x5, %hi(l.15659)	# 54
	ori		x5, x0, %lo(l.15659)	# 54
	flw		f5, 0(x5)	# 54
	fle		x31, f5, f0	# 54
	beq		x31, x0, fle_else.295426	# 54
	fle		x31, f0, f1	# 55
	beq		x31, x0, fle_else.295427	# 55
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jalr	x0, x1, 0	# 43
fle_else.295427:
	fsub	f0, f2, f0	# 55
	fle		x31, f5, f0	# 46
	beq		x31, x0, fle_else.295428	# 46
	fle		x31, f3, f0	# 47
	beq		x31, x0, fle_else.295429	# 47
	fsub	f0, f0, f3	# 47
	addi	x27, x4, 0
	lw		x31, 0(x27)	# 47
	jalr	x0, x31, 0	# 47
fle_else.295429:
	fle		x31, f4, f0	# 48
	beq		x31, x0, fle_else.295430	# 48
	fsub	f0, f0, f4	# 48
	addi	x27, x4, 0
	sw		x1, 0(x2)	# 48
	addi	x2, x2, -4	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 4	# 48
	lw		x1, 0(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jalr	x0, x1, 0	# 48
fle_else.295430:
	fle		x31, f0, f2	# 49
	beq		x31, x0, fle_else.295431	# 49
	fle		x31, f1, f0	# 50
	beq		x31, x0, fle_else.295432	# 50
	fsub	f0, f2, f0	# 50
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jalr	x0, x1, 0	# 43
fle_else.295432:
	fmul	f1, f0, f0	# 36
	fmul	f2, f0, f1	# 37
	lui		x4, %hi(l.15674)	# 38
	ori		x4, x0, %lo(l.15674)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f2	# 38
	fsub	f0, f0, f3	# 38
	lui		x4, %hi(l.15676)	# 38
	ori		x4, x0, %lo(l.15676)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f3, f3, f2	# 38
	fadd	f0, f0, f3	# 38
	lui		x4, %hi(l.15678)	# 38
	ori		x4, x0, %lo(l.15678)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f1, f3, f1	# 38
	fmul	f1, f1, f2	# 38
	fsub	f0, f0, f1	# 38
	jalr	x0, x1, 0	# 38
fle_else.295431:
	fsub	f0, f4, f0	# 49
	addi	x27, x4, 0
	lw		x31, 0(x27)	# 49
	jalr	x0, x31, 0	# 49
fle_else.295428:
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
	addi	x27, x4, 0
	sw		x1, 0(x2)	# 46
	addi	x2, x2, -4	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 4	# 46
	lw		x1, 0(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
	jalr	x0, x1, 0	# 46
fle_else.295426:
	fsub	x31, x31, x31	# 54
	fsub	f0, x31, f0	# 54
	fle		x31, f5, f0	# 54
	beq		x31, x0, fle_else.295433	# 54
	fle		x31, f0, f1	# 55
	beq		x31, x0, fle_else.295434	# 55
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jalr	x0, x1, 0	# 43
fle_else.295434:
	fsub	f0, f2, f0	# 55
	addi	x27, x4, 0
	lw		x31, 0(x27)	# 55
	jalr	x0, x31, 0	# 55
fle_else.295433:
	fsub	x31, x31, x31	# 54
	fsub	f0, x31, f0	# 54
	lw		x31, 0(x27)	# 54
	jalr	x0, x31, 0	# 54
atan.2505:
	flw		f1, 8(x27)	# 59
	flw		f2, 4(x27)	# 59
	lui		x4, %hi(l.15659)	# 59
	ori		x4, x0, %lo(l.15659)	# 59
	flw		f3, 0(x4)	# 59
	fle		x31, f3, f0	# 59
	beq		x31, x0, fle_else.295435	# 59
	lui		x4, %hi(l.15732)	# 60
	ori		x4, x0, %lo(l.15732)	# 60
	flw		f3, 0(x4)	# 60
	fle		x31, f0, f3	# 60
	beq		x31, x0, fle_else.295436	# 60
	lui		x4, %hi(l.15735)	# 61
	ori		x4, x0, %lo(l.15735)	# 61
	flw		f2, 0(x4)	# 61
	fle		x31, f2, f0	# 61
	beq		x31, x0, fle_else.295437	# 61
	lui		x4, %hi(l.15661)	# 61
	ori		x4, x0, %lo(l.15661)	# 61
	flw		f2, 0(x4)	# 61
	fsub	f3, f0, f2	# 61
	fadd	f0, f0, f2	# 61
	fdiv	f0, f3, f0	# 61
	fsw		f1, 0(x2)	# 61
	sw		x1, -8(x2)	# 61
	addi	x2, x2, -12	# 61
	lw		x31, 0(x27)	# 61
	jalr	x1, x31, 0	# 61
	addi	x2, x2, 12	# 61
	lw		x1, -8(x2)	# 61
	flw		f1, 0(x2)	# 61
	fadd	f0, f1, f0	# 61
	jalr	x0, x1, 0	# 61
fle_else.295437:
	fmul	f1, f0, f0	# 63
	fmul	f2, f0, f1	# 64
	fmul	f3, f1, f1	# 65
	lui		x4, %hi(l.15737)	# 66
	ori		x4, x0, %lo(l.15737)	# 66
	flw		f4, 0(x4)	# 66
	fmul	f4, f4, f2	# 66
	fsub	f0, f0, f4	# 66
	lui		x4, %hi(l.15739)	# 66
	ori		x4, x0, %lo(l.15739)	# 66
	flw		f4, 0(x4)	# 66
	fmul	f4, f4, f1	# 66
	fmul	f4, f4, f2	# 66
	fadd	f0, f0, f4	# 66
	lui		x4, %hi(l.15741)	# 66
	ori		x4, x0, %lo(l.15741)	# 66
	flw		f4, 0(x4)	# 66
	fmul	f4, f4, f3	# 66
	fmul	f4, f4, f2	# 66
	fsub	f0, f0, f4	# 66
	lui		x4, %hi(l.15743)	# 67
	ori		x4, x0, %lo(l.15743)	# 67
	flw		f4, 0(x4)	# 67
	fmul	f1, f4, f1	# 67
	fmul	f1, f1, f3	# 67
	fmul	f1, f1, f2	# 67
	fadd	f0, f0, f1	# 66
	lui		x4, %hi(l.15745)	# 67
	ori		x4, x0, %lo(l.15745)	# 67
	flw		f1, 0(x4)	# 67
	fmul	f1, f1, f3	# 67
	fmul	f1, f1, f3	# 67
	fmul	f1, f1, f2	# 67
	fsub	f0, f0, f1	# 66
	jalr	x0, x1, 0	# 66
fle_else.295436:
	lui		x4, %hi(l.15661)	# 60
	ori		x4, x0, %lo(l.15661)	# 60
	flw		f1, 0(x4)	# 60
	fdiv	f0, f1, f0	# 60
	fsw		f2, -8(x2)	# 60
	sw		x1, -16(x2)	# 60
	addi	x2, x2, -20	# 60
	lw		x31, 0(x27)	# 60
	jalr	x1, x31, 0	# 60
	addi	x2, x2, 20	# 60
	lw		x1, -16(x2)	# 60
	flw		f1, -8(x2)	# 60
	fsub	f0, f1, f0	# 60
	jalr	x0, x1, 0	# 60
fle_else.295435:
	fsub	x31, x31, x31	# 59
	fsub	f0, x31, f0	# 59
	sw		x1, -16(x2)	# 59
	addi	x2, x2, -20	# 59
	lw		x31, 0(x27)	# 59
	jalr	x1, x31, 0	# 59
	addi	x2, x2, 20	# 59
	lw		x1, -16(x2)	# 59
	fsub	x31, x31, x31	# 59
	fsub	f0, x31, f0	# 59
	jalr	x0, x1, 0	# 59
read_screen_settings.2663:
	lw		x4, 60(x27)	# 684
	lw		x5, 56(x27)	# 684
	lw		x6, 52(x27)	# 684
	lw		x7, 48(x27)	# 684
	lw		x8, 44(x27)	# 684
	lw		x9, 40(x27)	# 684
	flw		f0, 36(x27)	# 684
	flw		f1, 32(x27)	# 684
	flw		f2, 28(x27)	# 684
	flw		f3, 24(x27)	# 684
	lw		x10, 20(x27)	# 684
	lw		x11, 16(x27)	# 684
	lw		x12, 12(x27)	# 684
	lw		x13, 8(x27)	# 684
	flw		f4, 4(x27)	# 684
	sw		x4, 0(x2)	# 684
	sw		x7, -4(x2)	# 684
	sw		x8, -8(x2)	# 684
	sw		x6, -12(x2)	# 684
	fsw		f3, -16(x2)	# 684
	fsw		f2, -24(x2)	# 684
	sw		x10, -32(x2)	# 684
	sw		x5, -36(x2)	# 684
	fsw		f1, -40(x2)	# 684
	fsw		f0, -48(x2)	# 684
	fsw		f4, -56(x2)	# 684
	sw		x11, -64(x2)	# 684
	sw		x13, -68(x2)	# 684
	sw		x9, -72(x2)	# 684
	sw		x12, -76(x2)	# 684
	sw		x1, -80(x2)	# 684
	addi	x2, x2, -84	# 684
	jal		x1, min_caml_read_float	# 684
	addi	x2, x2, 84	# 684
	lw		x1, -80(x2)	# 684
	ori		x4, x0, 4	# 684
	lw		x5, -76(x2)	# 684
	mul		x4, x5, x4	# 684
	lw		x6, -72(x2)	# 684
	add		x4, x6, x4	# 684
	fsw		f0, 0(x4)	# 684
	sw		x1, -80(x2)	# 685
	addi	x2, x2, -84	# 685
	jal		x1, min_caml_read_float	# 685
	addi	x2, x2, 84	# 685
	lw		x1, -80(x2)	# 685
	ori		x4, x0, 4	# 685
	lw		x5, -68(x2)	# 685
	mul		x4, x5, x4	# 685
	lw		x6, -72(x2)	# 685
	add		x4, x6, x4	# 685
	fsw		f0, 0(x4)	# 685
	sw		x1, -80(x2)	# 686
	addi	x2, x2, -84	# 686
	jal		x1, min_caml_read_float	# 686
	addi	x2, x2, 84	# 686
	lw		x1, -80(x2)	# 686
	ori		x4, x0, 4	# 686
	lw		x5, -64(x2)	# 686
	mul		x4, x5, x4	# 686
	lw		x6, -72(x2)	# 686
	add		x4, x6, x4	# 686
	fsw		f0, 0(x4)	# 686
	sw		x1, -80(x2)	# 688
	addi	x2, x2, -84	# 688
	jal		x1, min_caml_read_float	# 688
	addi	x2, x2, 84	# 688
	lw		x1, -80(x2)	# 688
	lui		x4, %hi(l.15757)	# 677
	ori		x4, x0, %lo(l.15757)	# 677
	flw		f1, 0(x4)	# 677
	fmul	f0, f0, f1	# 677
	flw		f2, -56(x2)	# 54
	fsw		f1, -80(x2)	# 54
	fsw		f0, -88(x2)	# 54
	fle		x31, f2, f0	# 54
	beq		x31, x0, fle_else.295439	# 54
	flw		f3, -48(x2)	# 55
	fle		x31, f0, f3	# 55
	beq		x31, x0, fle_else.295441	# 55
	fmul	f4, f0, f0	# 41
	fmul	f5, f4, f4	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f6, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f7, 0(x4)	# 43
	fmul	f7, f7, f4	# 43
	fsub	f6, f6, f7	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f7, 0(x4)	# 43
	fmul	f7, f7, f5	# 43
	fadd	f6, f6, f7	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f7, 0(x4)	# 43
	fmul	f4, f7, f4	# 43
	fmul	f4, f4, f5	# 43
	fsub	f0, f6, f4	# 43
	jal		x0, fle_cont.295440	# 55
fle_else.295441:
	flw		f4, -40(x2)	# 55
	fsub	f5, f4, f0	# 55
	lw		x27, -36(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f5
	sw		x1, -96(x2)	# 55
	addi	x2, x2, -100	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 100	# 55
	lw		x1, -96(x2)	# 55
fle_cont.295440:
	jal		x0, fle_cont.295438	# 54
fle_else.295439:
	fsub	f3, f3, f3	# 54
	fsub	f3, f3, f0	# 54
	lw		x27, -32(x2)	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -96(x2)	# 54
	addi	x2, x2, -100	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 100	# 54
	lw		x1, -96(x2)	# 54
fle_cont.295438:
	flw		f1, -88(x2)	# 46
	flw		f2, -56(x2)	# 46
	fsw		f0, -96(x2)	# 46
	fle		x31, f2, f1	# 46
	beq		x31, x0, fle_else.295443	# 46
	flw		f3, -24(x2)	# 47
	fle		x31, f3, f1	# 47
	beq		x31, x0, fle_else.295445	# 47
	fsub	f1, f1, f3	# 47
	lw		x27, -36(x2)	# 47
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -104(x2)	# 47
	addi	x2, x2, -108	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 108	# 47
	lw		x1, -104(x2)	# 47
	jal		x0, fle_cont.295444	# 47
fle_else.295445:
	flw		f4, -16(x2)	# 48
	fle		x31, f4, f1	# 48
	beq		x31, x0, fle_else.295447	# 48
	fsub	f1, f1, f4	# 48
	lw		x27, -36(x2)	# 48
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -104(x2)	# 48
	addi	x2, x2, -108	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 108	# 48
	lw		x1, -104(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.295446	# 48
fle_else.295447:
	flw		f5, -40(x2)	# 49
	fle		x31, f1, f5	# 49
	beq		x31, x0, fle_else.295449	# 49
	flw		f6, -48(x2)	# 50
	fle		x31, f6, f1	# 50
	beq		x31, x0, fle_else.295451	# 50
	fsub	f1, f5, f1	# 50
	fmul	f1, f1, f1	# 41
	fmul	f7, f1, f1	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f8, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f9, 0(x4)	# 43
	fmul	f9, f9, f1	# 43
	fsub	f8, f8, f9	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f9, 0(x4)	# 43
	fmul	f9, f9, f7	# 43
	fadd	f8, f8, f9	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f9, 0(x4)	# 43
	fmul	f1, f9, f1	# 43
	fmul	f1, f1, f7	# 43
	fsub	f0, f8, f1	# 43
	jal		x0, fle_cont.295450	# 50
fle_else.295451:
	fmul	f7, f1, f1	# 36
	fmul	f8, f1, f7	# 37
	lui		x4, %hi(l.15674)	# 38
	ori		x4, x0, %lo(l.15674)	# 38
	flw		f9, 0(x4)	# 38
	fmul	f9, f9, f8	# 38
	fsub	f1, f1, f9	# 38
	lui		x4, %hi(l.15676)	# 38
	ori		x4, x0, %lo(l.15676)	# 38
	flw		f9, 0(x4)	# 38
	fmul	f9, f9, f7	# 38
	fmul	f9, f9, f8	# 38
	fadd	f1, f1, f9	# 38
	lui		x4, %hi(l.15678)	# 38
	ori		x4, x0, %lo(l.15678)	# 38
	flw		f9, 0(x4)	# 38
	fmul	f9, f9, f7	# 38
	fmul	f7, f9, f7	# 38
	fmul	f7, f7, f8	# 38
	fsub	f0, f1, f7	# 38
fle_cont.295450:
	jal		x0, fle_cont.295448	# 49
fle_else.295449:
	fsub	f1, f4, f1	# 49
	lw		x27, -36(x2)	# 49
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -104(x2)	# 49
	addi	x2, x2, -108	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 108	# 49
	lw		x1, -104(x2)	# 49
fle_cont.295448:
fle_cont.295446:
fle_cont.295444:
	jal		x0, fle_cont.295442	# 46
fle_else.295443:
	fsub	x31, x31, x31	# 46
	fsub	f1, x31, f1	# 46
	lw		x27, -36(x2)	# 46
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -104(x2)	# 46
	addi	x2, x2, -108	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 108	# 46
	lw		x1, -104(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.295442:
	fsw		f0, -104(x2)	# 691
	sw		x1, -112(x2)	# 691
	addi	x2, x2, -116	# 691
	jal		x1, min_caml_read_float	# 691
	addi	x2, x2, 116	# 691
	lw		x1, -112(x2)	# 691
	flw		f1, -80(x2)	# 677
	fmul	f0, f0, f1	# 677
	flw		f1, -56(x2)	# 54
	fsw		f0, -112(x2)	# 54
	fle		x31, f1, f0	# 54
	beq		x31, x0, fle_else.295453	# 54
	flw		f2, -48(x2)	# 55
	fle		x31, f0, f2	# 55
	beq		x31, x0, fle_else.295455	# 55
	fmul	f3, f0, f0	# 41
	fmul	f4, f3, f3	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f5, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f6, 0(x4)	# 43
	fmul	f6, f6, f3	# 43
	fsub	f5, f5, f6	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f6, 0(x4)	# 43
	fmul	f6, f6, f4	# 43
	fadd	f5, f5, f6	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f6, 0(x4)	# 43
	fmul	f3, f6, f3	# 43
	fmul	f3, f3, f4	# 43
	fsub	f0, f5, f3	# 43
	jal		x0, fle_cont.295454	# 55
fle_else.295455:
	flw		f3, -40(x2)	# 55
	fsub	f4, f3, f0	# 55
	lw		x27, -36(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f4
	sw		x1, -120(x2)	# 55
	addi	x2, x2, -124	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 124	# 55
	lw		x1, -120(x2)	# 55
fle_cont.295454:
	jal		x0, fle_cont.295452	# 54
fle_else.295453:
	fsub	f2, f2, f2	# 54
	fsub	f2, f2, f0	# 54
	lw		x27, -32(x2)	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -120(x2)	# 54
	addi	x2, x2, -124	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 124	# 54
	lw		x1, -120(x2)	# 54
fle_cont.295452:
	flw		f1, -112(x2)	# 46
	flw		f2, -56(x2)	# 46
	fsw		f0, -120(x2)	# 46
	fle		x31, f2, f1	# 46
	beq		x31, x0, fle_else.295457	# 46
	flw		f3, -24(x2)	# 47
	fle		x31, f3, f1	# 47
	beq		x31, x0, fle_else.295459	# 47
	fsub	f1, f1, f3	# 47
	lw		x27, -36(x2)	# 47
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -128(x2)	# 47
	addi	x2, x2, -132	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 132	# 47
	lw		x1, -128(x2)	# 47
	jal		x0, fle_cont.295458	# 47
fle_else.295459:
	flw		f3, -16(x2)	# 48
	fle		x31, f3, f1	# 48
	beq		x31, x0, fle_else.295461	# 48
	fsub	f1, f1, f3	# 48
	lw		x27, -36(x2)	# 48
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -128(x2)	# 48
	addi	x2, x2, -132	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 132	# 48
	lw		x1, -128(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.295460	# 48
fle_else.295461:
	flw		f4, -40(x2)	# 49
	fle		x31, f1, f4	# 49
	beq		x31, x0, fle_else.295463	# 49
	flw		f3, -48(x2)	# 50
	fle		x31, f3, f1	# 50
	beq		x31, x0, fle_else.295465	# 50
	fsub	f1, f4, f1	# 50
	fmul	f1, f1, f1	# 41
	fmul	f3, f1, f1	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f4, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f5, 0(x4)	# 43
	fmul	f5, f5, f1	# 43
	fsub	f4, f4, f5	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f5, 0(x4)	# 43
	fmul	f5, f5, f3	# 43
	fadd	f4, f4, f5	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f5, 0(x4)	# 43
	fmul	f1, f5, f1	# 43
	fmul	f1, f1, f3	# 43
	fsub	f0, f4, f1	# 43
	jal		x0, fle_cont.295464	# 50
fle_else.295465:
	fmul	f3, f1, f1	# 36
	fmul	f4, f1, f3	# 37
	lui		x4, %hi(l.15674)	# 38
	ori		x4, x0, %lo(l.15674)	# 38
	flw		f5, 0(x4)	# 38
	fmul	f5, f5, f4	# 38
	fsub	f1, f1, f5	# 38
	lui		x4, %hi(l.15676)	# 38
	ori		x4, x0, %lo(l.15676)	# 38
	flw		f5, 0(x4)	# 38
	fmul	f5, f5, f3	# 38
	fmul	f5, f5, f4	# 38
	fadd	f1, f1, f5	# 38
	lui		x4, %hi(l.15678)	# 38
	ori		x4, x0, %lo(l.15678)	# 38
	flw		f5, 0(x4)	# 38
	fmul	f5, f5, f3	# 38
	fmul	f3, f5, f3	# 38
	fmul	f3, f3, f4	# 38
	fsub	f0, f1, f3	# 38
fle_cont.295464:
	jal		x0, fle_cont.295462	# 49
fle_else.295463:
	fsub	f1, f3, f1	# 49
	lw		x27, -36(x2)	# 49
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -128(x2)	# 49
	addi	x2, x2, -132	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 132	# 49
	lw		x1, -128(x2)	# 49
fle_cont.295462:
fle_cont.295460:
fle_cont.295458:
	jal		x0, fle_cont.295456	# 46
fle_else.295457:
	fsub	x31, x31, x31	# 46
	fsub	f1, x31, f1	# 46
	lw		x27, -36(x2)	# 46
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -128(x2)	# 46
	addi	x2, x2, -132	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 132	# 46
	lw		x1, -128(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.295456:
	flw		f1, -96(x2)	# 695
	fmul	f2, f1, f0	# 695
	lui		x4, %hi(l.15781)	# 695
	ori		x4, x0, %lo(l.15781)	# 695
	flw		f3, 0(x4)	# 695
	fmul	f2, f2, f3	# 695
	ori		x4, x0, 4	# 695
	lw		x5, -76(x2)	# 695
	mul		x4, x5, x4	# 695
	lw		x6, -12(x2)	# 695
	add		x4, x6, x4	# 695
	fsw		f2, 0(x4)	# 695
	lui		x4, %hi(l.15786)	# 696
	ori		x4, x0, %lo(l.15786)	# 696
	flw		f2, 0(x4)	# 696
	flw		f4, -104(x2)	# 696
	fmul	f2, f4, f2	# 696
	ori		x4, x0, 4	# 696
	lw		x7, -68(x2)	# 696
	mul		x4, x7, x4	# 696
	add		x4, x6, x4	# 696
	fsw		f2, 0(x4)	# 696
	flw		f2, -120(x2)	# 697
	fmul	f5, f1, f2	# 697
	fmul	f3, f5, f3	# 697
	ori		x4, x0, 4	# 697
	lw		x8, -64(x2)	# 697
	mul		x4, x8, x4	# 697
	add		x4, x6, x4	# 697
	fsw		f3, 0(x4)	# 697
	ori		x4, x0, 4	# 699
	mul		x4, x5, x4	# 699
	lw		x9, -8(x2)	# 699
	add		x4, x9, x4	# 699
	fsw		f2, 0(x4)	# 699
	ori		x4, x0, 4	# 700
	mul		x4, x7, x4	# 700
	add		x4, x9, x4	# 700
	flw		f3, -56(x2)	# 700
	fsw		f3, 0(x4)	# 700
	fsub	f3, f3, f3	# 4
	fsub	f3, f3, f0	# 4
	ori		x4, x0, 4	# 701
	mul		x4, x8, x4	# 701
	add		x4, x9, x4	# 701
	fsw		f3, 0(x4)	# 701
	fsub	f3, f3, f3	# 4
	fsub	f3, f3, f4	# 4
	fmul	f0, f3, f0	# 703
	ori		x4, x0, 4	# 703
	mul		x4, x5, x4	# 703
	lw		x9, -4(x2)	# 703
	add		x4, x9, x4	# 703
	fsw		f0, 0(x4)	# 703
	fsub	f0, f0, f0	# 4
	fsub	f0, f0, f1	# 4
	ori		x4, x0, 4	# 704
	mul		x4, x7, x4	# 704
	add		x4, x9, x4	# 704
	fsw		f0, 0(x4)	# 704
	fmul	f0, f3, f2	# 705
	ori		x4, x0, 4	# 705
	mul		x4, x8, x4	# 705
	add		x4, x9, x4	# 705
	fsw		f0, 0(x4)	# 705
	ori		x4, x0, 4	# 707
	mul		x4, x5, x4	# 707
	lw		x9, -72(x2)	# 707
	add		x4, x9, x4	# 707
	flw		f0, 0(x4)	# 707
	ori		x4, x0, 4	# 707
	mul		x4, x5, x4	# 707
	add		x4, x6, x4	# 707
	flw		f1, 0(x4)	# 707
	fsub	f0, f0, f1	# 707
	ori		x4, x0, 4	# 707
	mul		x4, x5, x4	# 707
	lw		x5, 0(x2)	# 707
	add		x4, x5, x4	# 707
	fsw		f0, 0(x4)	# 707
	ori		x4, x0, 4	# 708
	mul		x4, x7, x4	# 708
	add		x4, x9, x4	# 708
	flw		f0, 0(x4)	# 708
	ori		x4, x0, 4	# 708
	mul		x4, x7, x4	# 708
	add		x4, x6, x4	# 708
	flw		f1, 0(x4)	# 708
	fsub	f0, f0, f1	# 708
	ori		x4, x0, 4	# 708
	mul		x4, x7, x4	# 708
	add		x4, x5, x4	# 708
	fsw		f0, 0(x4)	# 708
	ori		x4, x0, 4	# 709
	mul		x4, x8, x4	# 709
	add		x4, x9, x4	# 709
	flw		f0, 0(x4)	# 709
	ori		x4, x0, 4	# 709
	mul		x4, x8, x4	# 709
	add		x4, x6, x4	# 709
	flw		f1, 0(x4)	# 709
	fsub	f0, f0, f1	# 709
	ori		x4, x0, 4	# 709
	mul		x4, x8, x4	# 709
	add		x4, x5, x4	# 709
	fsw		f0, 0(x4)	# 709
	jalr	x0, x1, 0	# 709
read_light.2665:
	lw		x4, 48(x27)	# 716
	flw		f0, 44(x27)	# 716
	flw		f1, 40(x27)	# 716
	flw		f2, 36(x27)	# 716
	flw		f3, 32(x27)	# 716
	lw		x5, 28(x27)	# 716
	lw		x6, 24(x27)	# 716
	lw		x7, 20(x27)	# 716
	lw		x8, 16(x27)	# 716
	lw		x9, 12(x27)	# 716
	lw		x10, 8(x27)	# 716
	flw		f4, 4(x27)	# 716
	sw		x7, 0(x2)	# 716
	sw		x8, -4(x2)	# 716
	sw		x9, -8(x2)	# 716
	sw		x6, -12(x2)	# 716
	sw		x5, -16(x2)	# 716
	sw		x10, -20(x2)	# 716
	fsw		f0, -24(x2)	# 716
	fsw		f1, -32(x2)	# 716
	fsw		f3, -40(x2)	# 716
	sw		x4, -48(x2)	# 716
	fsw		f2, -56(x2)	# 716
	fsw		f4, -64(x2)	# 716
	sw		x1, -72(x2)	# 716
	addi	x2, x2, -76	# 716
	jal		x1, min_caml_read_int	# 716
	addi	x2, x2, 76	# 716
	lw		x1, -72(x2)	# 716
	sw		x1, -72(x2)	# 719
	addi	x2, x2, -76	# 719
	jal		x1, min_caml_read_float	# 719
	addi	x2, x2, 76	# 719
	lw		x1, -72(x2)	# 719
	lui		x4, %hi(l.15757)	# 677
	ori		x4, x0, %lo(l.15757)	# 677
	flw		f1, 0(x4)	# 677
	fmul	f0, f0, f1	# 677
	flw		f2, -64(x2)	# 46
	fsw		f0, -72(x2)	# 46
	fsw		f1, -80(x2)	# 46
	fle		x31, f2, f0	# 46
	beq		x31, x0, fle_else.295469	# 46
	flw		f3, -56(x2)	# 47
	fle		x31, f3, f0	# 47
	beq		x31, x0, fle_else.295471	# 47
	fsub	f4, f0, f3	# 47
	lw		x27, -48(x2)	# 47
	fsub	f0, f0, f0
	fadd	f0, f0, f4
	sw		x1, -88(x2)	# 47
	addi	x2, x2, -92	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 92	# 47
	lw		x1, -88(x2)	# 47
	jal		x0, fle_cont.295470	# 47
fle_else.295471:
	flw		f4, -40(x2)	# 48
	fle		x31, f4, f0	# 48
	beq		x31, x0, fle_else.295473	# 48
	fsub	f5, f0, f4	# 48
	lw		x27, -48(x2)	# 48
	fsub	f0, f0, f0
	fadd	f0, f0, f5
	sw		x1, -88(x2)	# 48
	addi	x2, x2, -92	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 92	# 48
	lw		x1, -88(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.295472	# 48
fle_else.295473:
	flw		f5, -32(x2)	# 49
	fle		x31, f0, f5	# 49
	beq		x31, x0, fle_else.295475	# 49
	flw		f6, -24(x2)	# 50
	fle		x31, f6, f0	# 50
	beq		x31, x0, fle_else.295477	# 50
	fsub	f7, f5, f0	# 50
	fmul	f7, f7, f7	# 41
	fmul	f8, f7, f7	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f9, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f10, 0(x4)	# 43
	fmul	f10, f10, f7	# 43
	fsub	f9, f9, f10	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f10, 0(x4)	# 43
	fmul	f10, f10, f8	# 43
	fadd	f9, f9, f10	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f10, 0(x4)	# 43
	fmul	f7, f10, f7	# 43
	fmul	f7, f7, f8	# 43
	fsub	f0, f9, f7	# 43
	jal		x0, fle_cont.295476	# 50
fle_else.295477:
	fmul	f7, f0, f0	# 36
	fmul	f8, f0, f7	# 37
	lui		x4, %hi(l.15674)	# 38
	ori		x4, x0, %lo(l.15674)	# 38
	flw		f9, 0(x4)	# 38
	fmul	f9, f9, f8	# 38
	fsub	f9, f0, f9	# 38
	lui		x4, %hi(l.15676)	# 38
	ori		x4, x0, %lo(l.15676)	# 38
	flw		f10, 0(x4)	# 38
	fmul	f10, f10, f7	# 38
	fmul	f10, f10, f8	# 38
	fadd	f9, f9, f10	# 38
	lui		x4, %hi(l.15678)	# 38
	ori		x4, x0, %lo(l.15678)	# 38
	flw		f10, 0(x4)	# 38
	fmul	f10, f10, f7	# 38
	fmul	f7, f10, f7	# 38
	fmul	f7, f7, f8	# 38
	fsub	f0, f9, f7	# 38
fle_cont.295476:
	jal		x0, fle_cont.295474	# 49
fle_else.295475:
	fsub	f6, f4, f0	# 49
	lw		x27, -48(x2)	# 49
	fsub	f0, f0, f0
	fadd	f0, f0, f6
	sw		x1, -88(x2)	# 49
	addi	x2, x2, -92	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 92	# 49
	lw		x1, -88(x2)	# 49
fle_cont.295474:
fle_cont.295472:
fle_cont.295470:
	jal		x0, fle_cont.295468	# 46
fle_else.295469:
	fsub	f3, f3, f3	# 46
	fsub	f3, f3, f0	# 46
	lw		x27, -48(x2)	# 46
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -88(x2)	# 46
	addi	x2, x2, -92	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 92	# 46
	lw		x1, -88(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.295468:
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x4, x0, 4	# 721
	lw		x5, -20(x2)	# 721
	mul		x4, x5, x4	# 721
	lw		x5, -16(x2)	# 721
	add		x4, x5, x4	# 721
	fsw		f0, 0(x4)	# 721
	sw		x1, -88(x2)	# 722
	addi	x2, x2, -92	# 722
	jal		x1, min_caml_read_float	# 722
	addi	x2, x2, 92	# 722
	lw		x1, -88(x2)	# 722
	flw		f1, -80(x2)	# 677
	fmul	f0, f0, f1	# 677
	flw		f1, -72(x2)	# 54
	flw		f2, -64(x2)	# 54
	fsw		f0, -88(x2)	# 54
	fle		x31, f2, f1	# 54
	beq		x31, x0, fle_else.295479	# 54
	flw		f3, -24(x2)	# 55
	fle		x31, f1, f3	# 55
	beq		x31, x0, fle_else.295481	# 55
	fmul	f1, f1, f1	# 41
	fmul	f4, f1, f1	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f5, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f6, 0(x4)	# 43
	fmul	f6, f6, f1	# 43
	fsub	f5, f5, f6	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f6, 0(x4)	# 43
	fmul	f6, f6, f4	# 43
	fadd	f5, f5, f6	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f6, 0(x4)	# 43
	fmul	f1, f6, f1	# 43
	fmul	f1, f1, f4	# 43
	fsub	f0, f5, f1	# 43
	jal		x0, fle_cont.295480	# 55
fle_else.295481:
	flw		f4, -32(x2)	# 55
	fsub	f1, f4, f1	# 55
	lw		x27, -48(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -96(x2)	# 55
	addi	x2, x2, -100	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 100	# 55
	lw		x1, -96(x2)	# 55
fle_cont.295480:
	jal		x0, fle_cont.295478	# 54
fle_else.295479:
	fsub	x31, x31, x31	# 54
	fsub	f1, x31, f1	# 54
	lw		x27, -12(x2)	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -96(x2)	# 54
	addi	x2, x2, -100	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 100	# 54
	lw		x1, -96(x2)	# 54
fle_cont.295478:
	flw		f1, -88(x2)	# 46
	flw		f2, -64(x2)	# 46
	fsw		f0, -96(x2)	# 46
	fle		x31, f2, f1	# 46
	beq		x31, x0, fle_else.295483	# 46
	flw		f3, -56(x2)	# 47
	fle		x31, f3, f1	# 47
	beq		x31, x0, fle_else.295485	# 47
	fsub	f3, f1, f3	# 47
	lw		x27, -48(x2)	# 47
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -104(x2)	# 47
	addi	x2, x2, -108	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 108	# 47
	lw		x1, -104(x2)	# 47
	jal		x0, fle_cont.295484	# 47
fle_else.295485:
	flw		f3, -40(x2)	# 48
	fle		x31, f3, f1	# 48
	beq		x31, x0, fle_else.295487	# 48
	fsub	f3, f1, f3	# 48
	lw		x27, -48(x2)	# 48
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -104(x2)	# 48
	addi	x2, x2, -108	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 108	# 48
	lw		x1, -104(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.295486	# 48
fle_else.295487:
	flw		f4, -32(x2)	# 49
	fle		x31, f1, f4	# 49
	beq		x31, x0, fle_else.295489	# 49
	flw		f3, -24(x2)	# 50
	fle		x31, f3, f1	# 50
	beq		x31, x0, fle_else.295491	# 50
	fsub	f5, f4, f1	# 50
	fmul	f5, f5, f5	# 41
	fmul	f6, f5, f5	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f7, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f8, 0(x4)	# 43
	fmul	f8, f8, f5	# 43
	fsub	f7, f7, f8	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f8, 0(x4)	# 43
	fmul	f8, f8, f6	# 43
	fadd	f7, f7, f8	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f8, 0(x4)	# 43
	fmul	f5, f8, f5	# 43
	fmul	f5, f5, f6	# 43
	fsub	f0, f7, f5	# 43
	jal		x0, fle_cont.295490	# 50
fle_else.295491:
	fmul	f5, f1, f1	# 36
	fmul	f6, f1, f5	# 37
	lui		x4, %hi(l.15674)	# 38
	ori		x4, x0, %lo(l.15674)	# 38
	flw		f7, 0(x4)	# 38
	fmul	f7, f7, f6	# 38
	fsub	f7, f1, f7	# 38
	lui		x4, %hi(l.15676)	# 38
	ori		x4, x0, %lo(l.15676)	# 38
	flw		f8, 0(x4)	# 38
	fmul	f8, f8, f5	# 38
	fmul	f8, f8, f6	# 38
	fadd	f7, f7, f8	# 38
	lui		x4, %hi(l.15678)	# 38
	ori		x4, x0, %lo(l.15678)	# 38
	flw		f8, 0(x4)	# 38
	fmul	f8, f8, f5	# 38
	fmul	f5, f8, f5	# 38
	fmul	f5, f5, f6	# 38
	fsub	f0, f7, f5	# 38
fle_cont.295490:
	jal		x0, fle_cont.295488	# 49
fle_else.295489:
	fsub	f3, f3, f1	# 49
	lw		x27, -48(x2)	# 49
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -104(x2)	# 49
	addi	x2, x2, -108	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 108	# 49
	lw		x1, -104(x2)	# 49
fle_cont.295488:
fle_cont.295486:
fle_cont.295484:
	jal		x0, fle_cont.295482	# 46
fle_else.295483:
	fsub	f3, f3, f3	# 46
	fsub	f3, f3, f1	# 46
	lw		x27, -48(x2)	# 46
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -104(x2)	# 46
	addi	x2, x2, -108	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 108	# 46
	lw		x1, -104(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.295482:
	flw		f1, -96(x2)	# 725
	fmul	f0, f1, f0	# 725
	ori		x4, x0, 4	# 725
	lw		x5, -8(x2)	# 725
	mul		x4, x5, x4	# 725
	lw		x6, -16(x2)	# 725
	add		x4, x6, x4	# 725
	fsw		f0, 0(x4)	# 725
	flw		f0, -88(x2)	# 54
	flw		f2, -64(x2)	# 54
	fle		x31, f2, f0	# 54
	beq		x31, x0, fle_else.295493	# 54
	flw		f2, -24(x2)	# 55
	fle		x31, f0, f2	# 55
	beq		x31, x0, fle_else.295495	# 55
	fmul	f0, f0, f0	# 41
	fmul	f2, f0, f0	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f3, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f4, f4, f0	# 43
	fsub	f3, f3, f4	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f4, f4, f2	# 43
	fadd	f3, f3, f4	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f0, f4, f0	# 43
	fmul	f0, f0, f2	# 43
	fsub	f0, f3, f0	# 43
	jal		x0, fle_cont.295494	# 55
fle_else.295495:
	flw		f2, -32(x2)	# 55
	fsub	f0, f2, f0	# 55
	lw		x27, -48(x2)	# 55
	sw		x1, -104(x2)	# 55
	addi	x2, x2, -108	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 108	# 55
	lw		x1, -104(x2)	# 55
fle_cont.295494:
	jal		x0, fle_cont.295492	# 54
fle_else.295493:
	fsub	x31, x31, x31	# 54
	fsub	f0, x31, f0	# 54
	lw		x27, -12(x2)	# 54
	sw		x1, -104(x2)	# 54
	addi	x2, x2, -108	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 108	# 54
	lw		x1, -104(x2)	# 54
fle_cont.295492:
	flw		f1, -96(x2)	# 727
	fmul	f0, f1, f0	# 727
	ori		x4, x0, 4	# 727
	lw		x5, -4(x2)	# 727
	mul		x4, x5, x4	# 727
	lw		x5, -16(x2)	# 727
	add		x4, x5, x4	# 727
	fsw		f0, 0(x4)	# 727
	sw		x1, -104(x2)	# 728
	addi	x2, x2, -108	# 728
	jal		x1, min_caml_read_float	# 728
	addi	x2, x2, 108	# 728
	lw		x1, -104(x2)	# 728
	ori		x4, x0, 4	# 728
	lw		x5, -8(x2)	# 728
	mul		x4, x5, x4	# 728
	lw		x5, 0(x2)	# 728
	add		x4, x5, x4	# 728
	fsw		f0, 0(x4)	# 728
	jalr	x0, x1, 0	# 728
rotate_quadratic_matrix.2667:
	lw		x6, 40(x27)	# 738
	flw		f0, 36(x27)	# 738
	flw		f1, 32(x27)	# 738
	flw		f2, 28(x27)	# 738
	flw		f3, 24(x27)	# 738
	lw		x7, 20(x27)	# 738
	lw		x8, 16(x27)	# 738
	lw		x9, 12(x27)	# 738
	lw		x10, 8(x27)	# 738
	flw		f4, 4(x27)	# 738
	ori		x11, x0, 4	# 738
	mul		x11, x9, x11	# 738
	add		x11, x5, x11	# 738
	flw		f5, 0(x11)	# 738
	sw		x4, 0(x2)	# 54
	sw		x8, -4(x2)	# 54
	sw		x7, -8(x2)	# 54
	sw		x10, -12(x2)	# 54
	fsw		f0, -16(x2)	# 54
	fsw		f1, -24(x2)	# 54
	fsw		f3, -32(x2)	# 54
	sw		x6, -40(x2)	# 54
	fsw		f2, -48(x2)	# 54
	fsw		f4, -56(x2)	# 54
	sw		x5, -64(x2)	# 54
	sw		x9, -68(x2)	# 54
	fle		x31, f4, f5	# 54
	beq		x31, x0, fle_else.295499	# 54
	fle		x31, f5, f0	# 55
	beq		x31, x0, fle_else.295501	# 55
	fmul	f5, f5, f5	# 41
	fmul	f6, f5, f5	# 42
	lui		x11, %hi(l.15661)	# 43
	ori		x11, x0, %lo(l.15661)	# 43
	flw		f7, 0(x11)	# 43
	lui		x11, %hi(l.15681)	# 43
	ori		x11, x0, %lo(l.15681)	# 43
	flw		f8, 0(x11)	# 43
	fmul	f8, f8, f5	# 43
	fsub	f7, f7, f8	# 43
	lui		x11, %hi(l.15683)	# 43
	ori		x11, x0, %lo(l.15683)	# 43
	flw		f8, 0(x11)	# 43
	fmul	f8, f8, f6	# 43
	fadd	f7, f7, f8	# 43
	lui		x11, %hi(l.15685)	# 43
	ori		x11, x0, %lo(l.15685)	# 43
	flw		f8, 0(x11)	# 43
	fmul	f5, f8, f5	# 43
	fmul	f5, f5, f6	# 43
	fsub	f0, f7, f5	# 43
	jal		x0, fle_cont.295500	# 55
fle_else.295501:
	fsub	f5, f1, f5	# 55
	addi	x27, x6, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f5
	sw		x1, -72(x2)	# 55
	addi	x2, x2, -76	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 76	# 55
	lw		x1, -72(x2)	# 55
fle_cont.295500:
	jal		x0, fle_cont.295498	# 54
fle_else.295499:
	fsub	x31, x31, x31	# 54
	fsub	f5, x31, f5	# 54
	addi	x27, x7, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f5
	sw		x1, -72(x2)	# 54
	addi	x2, x2, -76	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 76	# 54
	lw		x1, -72(x2)	# 54
fle_cont.295498:
	ori		x4, x0, 4	# 739
	lw		x5, -68(x2)	# 739
	mul		x4, x5, x4	# 739
	lw		x6, -64(x2)	# 739
	add		x4, x6, x4	# 739
	flw		f1, 0(x4)	# 739
	flw		f2, -56(x2)	# 46
	fsw		f0, -72(x2)	# 46
	fle		x31, f2, f1	# 46
	beq		x31, x0, fle_else.295503	# 46
	flw		f3, -48(x2)	# 47
	fle		x31, f3, f1	# 47
	beq		x31, x0, fle_else.295505	# 47
	fsub	f1, f1, f3	# 47
	lw		x27, -40(x2)	# 47
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 47
	addi	x2, x2, -84	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 84	# 47
	lw		x1, -80(x2)	# 47
	jal		x0, fle_cont.295504	# 47
fle_else.295505:
	flw		f4, -32(x2)	# 48
	fle		x31, f4, f1	# 48
	beq		x31, x0, fle_else.295507	# 48
	fsub	f1, f1, f4	# 48
	lw		x27, -40(x2)	# 48
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 48
	addi	x2, x2, -84	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 84	# 48
	lw		x1, -80(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.295506	# 48
fle_else.295507:
	flw		f5, -24(x2)	# 49
	fle		x31, f1, f5	# 49
	beq		x31, x0, fle_else.295509	# 49
	flw		f6, -16(x2)	# 50
	fle		x31, f6, f1	# 50
	beq		x31, x0, fle_else.295511	# 50
	fsub	f1, f5, f1	# 50
	fmul	f1, f1, f1	# 41
	fmul	f7, f1, f1	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f8, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f9, 0(x4)	# 43
	fmul	f9, f9, f1	# 43
	fsub	f8, f8, f9	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f9, 0(x4)	# 43
	fmul	f9, f9, f7	# 43
	fadd	f8, f8, f9	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f9, 0(x4)	# 43
	fmul	f1, f9, f1	# 43
	fmul	f1, f1, f7	# 43
	fsub	f0, f8, f1	# 43
	jal		x0, fle_cont.295510	# 50
fle_else.295511:
	fmul	f7, f1, f1	# 36
	fmul	f8, f1, f7	# 37
	lui		x4, %hi(l.15674)	# 38
	ori		x4, x0, %lo(l.15674)	# 38
	flw		f9, 0(x4)	# 38
	fmul	f9, f9, f8	# 38
	fsub	f1, f1, f9	# 38
	lui		x4, %hi(l.15676)	# 38
	ori		x4, x0, %lo(l.15676)	# 38
	flw		f9, 0(x4)	# 38
	fmul	f9, f9, f7	# 38
	fmul	f9, f9, f8	# 38
	fadd	f1, f1, f9	# 38
	lui		x4, %hi(l.15678)	# 38
	ori		x4, x0, %lo(l.15678)	# 38
	flw		f9, 0(x4)	# 38
	fmul	f9, f9, f7	# 38
	fmul	f7, f9, f7	# 38
	fmul	f7, f7, f8	# 38
	fsub	f0, f1, f7	# 38
fle_cont.295510:
	jal		x0, fle_cont.295508	# 49
fle_else.295509:
	fsub	f1, f4, f1	# 49
	lw		x27, -40(x2)	# 49
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 49
	addi	x2, x2, -84	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 84	# 49
	lw		x1, -80(x2)	# 49
fle_cont.295508:
fle_cont.295506:
fle_cont.295504:
	jal		x0, fle_cont.295502	# 46
fle_else.295503:
	fsub	x31, x31, x31	# 46
	fsub	f1, x31, f1	# 46
	lw		x27, -40(x2)	# 46
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 46
	addi	x2, x2, -84	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 84	# 46
	lw		x1, -80(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.295502:
	ori		x4, x0, 4	# 740
	lw		x5, -12(x2)	# 740
	mul		x4, x5, x4	# 740
	lw		x6, -64(x2)	# 740
	add		x4, x6, x4	# 740
	flw		f1, 0(x4)	# 740
	flw		f2, -56(x2)	# 54
	fsw		f0, -80(x2)	# 54
	fle		x31, f2, f1	# 54
	beq		x31, x0, fle_else.295513	# 54
	flw		f3, -16(x2)	# 55
	fle		x31, f1, f3	# 55
	beq		x31, x0, fle_else.295515	# 55
	fmul	f1, f1, f1	# 41
	fmul	f4, f1, f1	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f5, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f6, 0(x4)	# 43
	fmul	f6, f6, f1	# 43
	fsub	f5, f5, f6	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f6, 0(x4)	# 43
	fmul	f6, f6, f4	# 43
	fadd	f5, f5, f6	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f6, 0(x4)	# 43
	fmul	f1, f6, f1	# 43
	fmul	f1, f1, f4	# 43
	fsub	f0, f5, f1	# 43
	jal		x0, fle_cont.295514	# 55
fle_else.295515:
	flw		f4, -24(x2)	# 55
	fsub	f1, f4, f1	# 55
	lw		x27, -40(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -88(x2)	# 55
	addi	x2, x2, -92	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 92	# 55
	lw		x1, -88(x2)	# 55
fle_cont.295514:
	jal		x0, fle_cont.295512	# 54
fle_else.295513:
	fsub	x31, x31, x31	# 54
	fsub	f1, x31, f1	# 54
	lw		x27, -8(x2)	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -88(x2)	# 54
	addi	x2, x2, -92	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 92	# 54
	lw		x1, -88(x2)	# 54
fle_cont.295512:
	ori		x4, x0, 4	# 741
	lw		x5, -12(x2)	# 741
	mul		x4, x5, x4	# 741
	lw		x6, -64(x2)	# 741
	add		x4, x6, x4	# 741
	flw		f1, 0(x4)	# 741
	flw		f2, -56(x2)	# 46
	fsw		f0, -88(x2)	# 46
	fle		x31, f2, f1	# 46
	beq		x31, x0, fle_else.295517	# 46
	flw		f3, -48(x2)	# 47
	fle		x31, f3, f1	# 47
	beq		x31, x0, fle_else.295519	# 47
	fsub	f1, f1, f3	# 47
	lw		x27, -40(x2)	# 47
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -96(x2)	# 47
	addi	x2, x2, -100	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 100	# 47
	lw		x1, -96(x2)	# 47
	jal		x0, fle_cont.295518	# 47
fle_else.295519:
	flw		f4, -32(x2)	# 48
	fle		x31, f4, f1	# 48
	beq		x31, x0, fle_else.295521	# 48
	fsub	f1, f1, f4	# 48
	lw		x27, -40(x2)	# 48
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -96(x2)	# 48
	addi	x2, x2, -100	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 100	# 48
	lw		x1, -96(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.295520	# 48
fle_else.295521:
	flw		f5, -24(x2)	# 49
	fle		x31, f1, f5	# 49
	beq		x31, x0, fle_else.295523	# 49
	flw		f6, -16(x2)	# 50
	fle		x31, f6, f1	# 50
	beq		x31, x0, fle_else.295525	# 50
	fsub	f1, f5, f1	# 50
	fmul	f1, f1, f1	# 41
	fmul	f7, f1, f1	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f8, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f9, 0(x4)	# 43
	fmul	f9, f9, f1	# 43
	fsub	f8, f8, f9	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f9, 0(x4)	# 43
	fmul	f9, f9, f7	# 43
	fadd	f8, f8, f9	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f9, 0(x4)	# 43
	fmul	f1, f9, f1	# 43
	fmul	f1, f1, f7	# 43
	fsub	f0, f8, f1	# 43
	jal		x0, fle_cont.295524	# 50
fle_else.295525:
	fmul	f7, f1, f1	# 36
	fmul	f8, f1, f7	# 37
	lui		x4, %hi(l.15674)	# 38
	ori		x4, x0, %lo(l.15674)	# 38
	flw		f9, 0(x4)	# 38
	fmul	f9, f9, f8	# 38
	fsub	f1, f1, f9	# 38
	lui		x4, %hi(l.15676)	# 38
	ori		x4, x0, %lo(l.15676)	# 38
	flw		f9, 0(x4)	# 38
	fmul	f9, f9, f7	# 38
	fmul	f9, f9, f8	# 38
	fadd	f1, f1, f9	# 38
	lui		x4, %hi(l.15678)	# 38
	ori		x4, x0, %lo(l.15678)	# 38
	flw		f9, 0(x4)	# 38
	fmul	f9, f9, f7	# 38
	fmul	f7, f9, f7	# 38
	fmul	f7, f7, f8	# 38
	fsub	f0, f1, f7	# 38
fle_cont.295524:
	jal		x0, fle_cont.295522	# 49
fle_else.295523:
	fsub	f1, f4, f1	# 49
	lw		x27, -40(x2)	# 49
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -96(x2)	# 49
	addi	x2, x2, -100	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 100	# 49
	lw		x1, -96(x2)	# 49
fle_cont.295522:
fle_cont.295520:
fle_cont.295518:
	jal		x0, fle_cont.295516	# 46
fle_else.295517:
	fsub	x31, x31, x31	# 46
	fsub	f1, x31, f1	# 46
	lw		x27, -40(x2)	# 46
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -96(x2)	# 46
	addi	x2, x2, -100	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 100	# 46
	lw		x1, -96(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.295516:
	ori		x4, x0, 4	# 742
	lw		x5, -4(x2)	# 742
	mul		x4, x5, x4	# 742
	lw		x6, -64(x2)	# 742
	add		x4, x6, x4	# 742
	flw		f1, 0(x4)	# 742
	flw		f2, -56(x2)	# 54
	fsw		f0, -96(x2)	# 54
	fle		x31, f2, f1	# 54
	beq		x31, x0, fle_else.295527	# 54
	flw		f3, -16(x2)	# 55
	fle		x31, f1, f3	# 55
	beq		x31, x0, fle_else.295529	# 55
	fmul	f1, f1, f1	# 41
	fmul	f4, f1, f1	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f5, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f6, 0(x4)	# 43
	fmul	f6, f6, f1	# 43
	fsub	f5, f5, f6	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f6, 0(x4)	# 43
	fmul	f6, f6, f4	# 43
	fadd	f5, f5, f6	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f6, 0(x4)	# 43
	fmul	f1, f6, f1	# 43
	fmul	f1, f1, f4	# 43
	fsub	f0, f5, f1	# 43
	jal		x0, fle_cont.295528	# 55
fle_else.295529:
	flw		f4, -24(x2)	# 55
	fsub	f1, f4, f1	# 55
	lw		x27, -40(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -104(x2)	# 55
	addi	x2, x2, -108	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 108	# 55
	lw		x1, -104(x2)	# 55
fle_cont.295528:
	jal		x0, fle_cont.295526	# 54
fle_else.295527:
	fsub	x31, x31, x31	# 54
	fsub	f1, x31, f1	# 54
	lw		x27, -8(x2)	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -104(x2)	# 54
	addi	x2, x2, -108	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 108	# 54
	lw		x1, -104(x2)	# 54
fle_cont.295526:
	ori		x4, x0, 4	# 743
	lw		x5, -4(x2)	# 743
	mul		x4, x5, x4	# 743
	lw		x6, -64(x2)	# 743
	add		x4, x6, x4	# 743
	flw		f1, 0(x4)	# 743
	flw		f2, -56(x2)	# 46
	fsw		f0, -104(x2)	# 46
	fle		x31, f2, f1	# 46
	beq		x31, x0, fle_else.295531	# 46
	flw		f2, -48(x2)	# 47
	fle		x31, f2, f1	# 47
	beq		x31, x0, fle_else.295533	# 47
	fsub	f1, f1, f2	# 47
	lw		x27, -40(x2)	# 47
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -112(x2)	# 47
	addi	x2, x2, -116	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 116	# 47
	lw		x1, -112(x2)	# 47
	jal		x0, fle_cont.295532	# 47
fle_else.295533:
	flw		f2, -32(x2)	# 48
	fle		x31, f2, f1	# 48
	beq		x31, x0, fle_else.295535	# 48
	fsub	f1, f1, f2	# 48
	lw		x27, -40(x2)	# 48
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -112(x2)	# 48
	addi	x2, x2, -116	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 116	# 48
	lw		x1, -112(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.295534	# 48
fle_else.295535:
	flw		f3, -24(x2)	# 49
	fle		x31, f1, f3	# 49
	beq		x31, x0, fle_else.295537	# 49
	flw		f2, -16(x2)	# 50
	fle		x31, f2, f1	# 50
	beq		x31, x0, fle_else.295539	# 50
	fsub	f1, f3, f1	# 50
	fmul	f1, f1, f1	# 41
	fmul	f2, f1, f1	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f3, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f4, f4, f1	# 43
	fsub	f3, f3, f4	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f4, f4, f2	# 43
	fadd	f3, f3, f4	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f1, f4, f1	# 43
	fmul	f1, f1, f2	# 43
	fsub	f0, f3, f1	# 43
	jal		x0, fle_cont.295538	# 50
fle_else.295539:
	fmul	f2, f1, f1	# 36
	fmul	f3, f1, f2	# 37
	lui		x4, %hi(l.15674)	# 38
	ori		x4, x0, %lo(l.15674)	# 38
	flw		f4, 0(x4)	# 38
	fmul	f4, f4, f3	# 38
	fsub	f1, f1, f4	# 38
	lui		x4, %hi(l.15676)	# 38
	ori		x4, x0, %lo(l.15676)	# 38
	flw		f4, 0(x4)	# 38
	fmul	f4, f4, f2	# 38
	fmul	f4, f4, f3	# 38
	fadd	f1, f1, f4	# 38
	lui		x4, %hi(l.15678)	# 38
	ori		x4, x0, %lo(l.15678)	# 38
	flw		f4, 0(x4)	# 38
	fmul	f4, f4, f2	# 38
	fmul	f2, f4, f2	# 38
	fmul	f2, f2, f3	# 38
	fsub	f0, f1, f2	# 38
fle_cont.295538:
	jal		x0, fle_cont.295536	# 49
fle_else.295537:
	fsub	f1, f2, f1	# 49
	lw		x27, -40(x2)	# 49
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -112(x2)	# 49
	addi	x2, x2, -116	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 116	# 49
	lw		x1, -112(x2)	# 49
fle_cont.295536:
fle_cont.295534:
fle_cont.295532:
	jal		x0, fle_cont.295530	# 46
fle_else.295531:
	fsub	x31, x31, x31	# 46
	fsub	f1, x31, f1	# 46
	lw		x27, -40(x2)	# 46
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -112(x2)	# 46
	addi	x2, x2, -116	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 116	# 46
	lw		x1, -112(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.295530:
	flw		f1, -104(x2)	# 745
	flw		f2, -88(x2)	# 745
	fmul	f3, f2, f1	# 745
	flw		f4, -96(x2)	# 746
	flw		f5, -80(x2)	# 746
	fmul	f6, f5, f4	# 746
	fmul	f7, f6, f1	# 746
	flw		f8, -72(x2)	# 746
	fmul	f9, f8, f0	# 746
	fsub	f7, f7, f9	# 746
	fmul	f9, f8, f4	# 747
	fmul	f10, f9, f1	# 747
	fmul	f11, f5, f0	# 747
	fadd	f10, f10, f11	# 747
	fmul	f11, f2, f0	# 749
	fmul	f6, f6, f0	# 750
	fmul	f12, f8, f1	# 750
	fadd	f6, f6, f12	# 750
	fmul	f0, f9, f0	# 751
	fmul	f1, f5, f1	# 751
	fsub	f0, f0, f1	# 751
	fsub	f1, f1, f1	# 4
	fsub	f1, f1, f4	# 4
	fmul	f4, f5, f2	# 754
	fmul	f2, f8, f2	# 755
	ori		x4, x0, 4	# 758
	lw		x5, -68(x2)	# 758
	mul		x4, x5, x4	# 758
	lw		x6, 0(x2)	# 758
	add		x4, x6, x4	# 758
	flw		f5, 0(x4)	# 758
	ori		x4, x0, 4	# 759
	lw		x7, -12(x2)	# 759
	mul		x4, x7, x4	# 759
	add		x4, x6, x4	# 759
	flw		f8, 0(x4)	# 759
	ori		x4, x0, 4	# 760
	lw		x8, -4(x2)	# 760
	mul		x4, x8, x4	# 760
	add		x4, x6, x4	# 760
	flw		f9, 0(x4)	# 760
	fmul	f12, f3, f3	# 8
	fmul	f12, f5, f12	# 765
	fmul	f13, f11, f11	# 8
	fmul	f13, f8, f13	# 765
	fadd	f12, f12, f13	# 765
	fmul	f13, f1, f1	# 8
	fmul	f13, f9, f13	# 765
	fadd	f12, f12, f13	# 765
	ori		x4, x0, 4	# 765
	mul		x4, x5, x4	# 765
	add		x4, x6, x4	# 765
	fsw		f12, 0(x4)	# 765
	fmul	f12, f7, f7	# 8
	fmul	f12, f5, f12	# 766
	fmul	f13, f6, f6	# 8
	fmul	f13, f8, f13	# 766
	fadd	f12, f12, f13	# 766
	fmul	f13, f4, f4	# 8
	fmul	f13, f9, f13	# 766
	fadd	f12, f12, f13	# 766
	ori		x4, x0, 4	# 766
	mul		x4, x7, x4	# 766
	add		x4, x6, x4	# 766
	fsw		f12, 0(x4)	# 766
	fmul	f12, f10, f10	# 8
	fmul	f12, f5, f12	# 767
	fmul	f13, f0, f0	# 8
	fmul	f13, f8, f13	# 767
	fadd	f12, f12, f13	# 767
	fmul	f13, f2, f2	# 8
	fmul	f13, f9, f13	# 767
	fadd	f12, f12, f13	# 767
	ori		x4, x0, 4	# 767
	mul		x4, x8, x4	# 767
	add		x4, x6, x4	# 767
	fsw		f12, 0(x4)	# 767
	lui		x4, %hi(l.15943)	# 770
	ori		x4, x0, %lo(l.15943)	# 770
	flw		f12, 0(x4)	# 770
	fmul	f13, f5, f7	# 770
	fmul	f13, f13, f10	# 770
	fmul	f14, f8, f6	# 770
	fmul	f14, f14, f0	# 770
	fadd	f13, f13, f14	# 770
	fmul	f14, f9, f4	# 770
	fmul	f14, f14, f2	# 770
	fadd	f13, f13, f14	# 770
	fmul	f13, f12, f13	# 770
	ori		x4, x0, 4	# 770
	mul		x4, x5, x4	# 770
	lw		x5, -64(x2)	# 770
	add		x4, x5, x4	# 770
	fsw		f13, 0(x4)	# 770
	fmul	f3, f5, f3	# 771
	fmul	f5, f3, f10	# 771
	fmul	f8, f8, f11	# 771
	fmul	f0, f8, f0	# 771
	fadd	f0, f5, f0	# 771
	fmul	f1, f9, f1	# 771
	fmul	f2, f1, f2	# 771
	fadd	f0, f0, f2	# 771
	fmul	f0, f12, f0	# 771
	ori		x4, x0, 4	# 771
	mul		x4, x7, x4	# 771
	add		x4, x5, x4	# 771
	fsw		f0, 0(x4)	# 771
	fmul	f0, f3, f7	# 772
	fmul	f2, f8, f6	# 772
	fadd	f0, f0, f2	# 772
	fmul	f1, f1, f4	# 772
	fadd	f0, f0, f1	# 772
	fmul	f0, f12, f0	# 772
	ori		x4, x0, 4	# 772
	mul		x4, x8, x4	# 772
	add		x4, x5, x4	# 772
	fsw		f0, 0(x4)	# 772
	jalr	x0, x1, 0	# 772
read_nth_object.2670:
	lw		x5, 32(x27)	# 779
	lw		x6, 28(x27)	# 779
	lw		x7, 24(x27)	# 779
	lw		x8, 20(x27)	# 779
	lw		x9, 16(x27)	# 779
	lw		x10, 12(x27)	# 779
	lw		x11, 8(x27)	# 779
	flw		f0, 4(x27)	# 779
	sw		x5, 0(x2)	# 779
	sw		x6, -4(x2)	# 779
	sw		x4, -8(x2)	# 779
	sw		x7, -12(x2)	# 779
	sw		x11, -16(x2)	# 779
	sw		x10, -20(x2)	# 779
	fsw		f0, -24(x2)	# 779
	sw		x9, -32(x2)	# 779
	sw		x8, -36(x2)	# 779
	sw		x1, -40(x2)	# 779
	addi	x2, x2, -44	# 779
	jal		x1, min_caml_read_int	# 779
	addi	x2, x2, 44	# 779
	lw		x1, -40(x2)	# 779
	lw		x5, -36(x2)	# 780
	beq		x4, x5, beq.295541	# 780
	sw		x4, -40(x2)	# 782
	sw		x1, -44(x2)	# 782
	addi	x2, x2, -48	# 782
	jal		x1, min_caml_read_int	# 782
	addi	x2, x2, 48	# 782
	lw		x1, -44(x2)	# 782
	sw		x4, -44(x2)	# 783
	sw		x1, -48(x2)	# 783
	addi	x2, x2, -52	# 783
	jal		x1, min_caml_read_int	# 783
	addi	x2, x2, 52	# 783
	lw		x1, -48(x2)	# 783
	sw		x4, -48(x2)	# 784
	sw		x1, -52(x2)	# 784
	addi	x2, x2, -56	# 784
	jal		x1, min_caml_read_int	# 784
	addi	x2, x2, 56	# 784
	lw		x1, -52(x2)	# 784
	flw		f0, -24(x2)	# 786
	lw		x5, -32(x2)	# 786
	sw		x4, -52(x2)	# 786
	addi	x4, x5, 0
	sw		x1, -56(x2)	# 786
	addi	x2, x2, -60	# 786
	jal		x1, min_caml_create_float_array	# 786
	addi	x2, x2, 60	# 786
	lw		x1, -56(x2)	# 786
	sw		x4, -56(x2)	# 787
	sw		x1, -60(x2)	# 787
	addi	x2, x2, -64	# 787
	jal		x1, min_caml_read_float	# 787
	addi	x2, x2, 64	# 787
	lw		x1, -60(x2)	# 787
	ori		x4, x0, 4	# 787
	lw		x5, -20(x2)	# 787
	mul		x4, x5, x4	# 787
	lw		x6, -56(x2)	# 787
	add		x4, x6, x4	# 787
	fsw		f0, 0(x4)	# 787
	sw		x1, -60(x2)	# 788
	addi	x2, x2, -64	# 788
	jal		x1, min_caml_read_float	# 788
	addi	x2, x2, 64	# 788
	lw		x1, -60(x2)	# 788
	ori		x4, x0, 4	# 788
	lw		x5, -16(x2)	# 788
	mul		x4, x5, x4	# 788
	lw		x6, -56(x2)	# 788
	add		x4, x6, x4	# 788
	fsw		f0, 0(x4)	# 788
	sw		x1, -60(x2)	# 789
	addi	x2, x2, -64	# 789
	jal		x1, min_caml_read_float	# 789
	addi	x2, x2, 64	# 789
	lw		x1, -60(x2)	# 789
	ori		x4, x0, 4	# 789
	lw		x5, -12(x2)	# 789
	mul		x4, x5, x4	# 789
	lw		x6, -56(x2)	# 789
	add		x4, x6, x4	# 789
	fsw		f0, 0(x4)	# 789
	flw		f0, -24(x2)	# 791
	lw		x4, -32(x2)	# 791
	sw		x1, -60(x2)	# 791
	addi	x2, x2, -64	# 791
	jal		x1, min_caml_create_float_array	# 791
	addi	x2, x2, 64	# 791
	lw		x1, -60(x2)	# 791
	sw		x4, -60(x2)	# 792
	sw		x1, -64(x2)	# 792
	addi	x2, x2, -68	# 792
	jal		x1, min_caml_read_float	# 792
	addi	x2, x2, 68	# 792
	lw		x1, -64(x2)	# 792
	ori		x4, x0, 4	# 792
	lw		x5, -20(x2)	# 792
	mul		x4, x5, x4	# 792
	lw		x6, -60(x2)	# 792
	add		x4, x6, x4	# 792
	fsw		f0, 0(x4)	# 792
	sw		x1, -64(x2)	# 793
	addi	x2, x2, -68	# 793
	jal		x1, min_caml_read_float	# 793
	addi	x2, x2, 68	# 793
	lw		x1, -64(x2)	# 793
	ori		x4, x0, 4	# 793
	lw		x5, -16(x2)	# 793
	mul		x4, x5, x4	# 793
	lw		x6, -60(x2)	# 793
	add		x4, x6, x4	# 793
	fsw		f0, 0(x4)	# 793
	sw		x1, -64(x2)	# 794
	addi	x2, x2, -68	# 794
	jal		x1, min_caml_read_float	# 794
	addi	x2, x2, 68	# 794
	lw		x1, -64(x2)	# 794
	ori		x4, x0, 4	# 794
	lw		x5, -12(x2)	# 794
	mul		x4, x5, x4	# 794
	lw		x6, -60(x2)	# 794
	add		x4, x6, x4	# 794
	fsw		f0, 0(x4)	# 794
	sw		x1, -64(x2)	# 796
	addi	x2, x2, -68	# 796
	jal		x1, min_caml_read_float	# 796
	addi	x2, x2, 68	# 796
	lw		x1, -64(x2)	# 796
	flw		f1, -24(x2)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.295543	# 3
	addi	x4, x0, 0	# 3
	jal		x0, fle_cont.295542	# 3
fle_else.295543:
	ori		x4, x0, 1	# 3
fle_cont.295542:
	lw		x5, -12(x2)	# 798
	sw		x4, -64(x2)	# 798
	addi	x4, x5, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -68(x2)	# 798
	addi	x2, x2, -72	# 798
	jal		x1, min_caml_create_float_array	# 798
	addi	x2, x2, 72	# 798
	lw		x1, -68(x2)	# 798
	sw		x4, -68(x2)	# 799
	sw		x1, -72(x2)	# 799
	addi	x2, x2, -76	# 799
	jal		x1, min_caml_read_float	# 799
	addi	x2, x2, 76	# 799
	lw		x1, -72(x2)	# 799
	ori		x4, x0, 4	# 799
	lw		x5, -20(x2)	# 799
	mul		x4, x5, x4	# 799
	lw		x6, -68(x2)	# 799
	add		x4, x6, x4	# 799
	fsw		f0, 0(x4)	# 799
	sw		x1, -72(x2)	# 800
	addi	x2, x2, -76	# 800
	jal		x1, min_caml_read_float	# 800
	addi	x2, x2, 76	# 800
	lw		x1, -72(x2)	# 800
	ori		x4, x0, 4	# 800
	lw		x5, -16(x2)	# 800
	mul		x4, x5, x4	# 800
	lw		x6, -68(x2)	# 800
	add		x4, x6, x4	# 800
	fsw		f0, 0(x4)	# 800
	flw		f0, -24(x2)	# 802
	lw		x4, -32(x2)	# 802
	sw		x1, -72(x2)	# 802
	addi	x2, x2, -76	# 802
	jal		x1, min_caml_create_float_array	# 802
	addi	x2, x2, 76	# 802
	lw		x1, -72(x2)	# 802
	sw		x4, -72(x2)	# 803
	sw		x1, -76(x2)	# 803
	addi	x2, x2, -80	# 803
	jal		x1, min_caml_read_float	# 803
	addi	x2, x2, 80	# 803
	lw		x1, -76(x2)	# 803
	ori		x4, x0, 4	# 803
	lw		x5, -20(x2)	# 803
	mul		x4, x5, x4	# 803
	lw		x6, -72(x2)	# 803
	add		x4, x6, x4	# 803
	fsw		f0, 0(x4)	# 803
	sw		x1, -76(x2)	# 804
	addi	x2, x2, -80	# 804
	jal		x1, min_caml_read_float	# 804
	addi	x2, x2, 80	# 804
	lw		x1, -76(x2)	# 804
	ori		x4, x0, 4	# 804
	lw		x5, -16(x2)	# 804
	mul		x4, x5, x4	# 804
	lw		x6, -72(x2)	# 804
	add		x4, x6, x4	# 804
	fsw		f0, 0(x4)	# 804
	sw		x1, -76(x2)	# 805
	addi	x2, x2, -80	# 805
	jal		x1, min_caml_read_float	# 805
	addi	x2, x2, 80	# 805
	lw		x1, -76(x2)	# 805
	ori		x4, x0, 4	# 805
	lw		x5, -12(x2)	# 805
	mul		x4, x5, x4	# 805
	lw		x6, -72(x2)	# 805
	add		x4, x6, x4	# 805
	fsw		f0, 0(x4)	# 805
	flw		f0, -24(x2)	# 807
	lw		x4, -32(x2)	# 807
	sw		x1, -76(x2)	# 807
	addi	x2, x2, -80	# 807
	jal		x1, min_caml_create_float_array	# 807
	addi	x2, x2, 80	# 807
	lw		x1, -76(x2)	# 807
	lw		x5, -20(x2)	# 808
	lw		x6, -52(x2)	# 808
	sw		x4, -76(x2)	# 808
	beq		x6, x5, beq.295545	# 808
	addi	x7, x0, 0	# 810
	sw		x7, -80(x2)	# 810
	sw		x1, -84(x2)	# 810
	addi	x2, x2, -88	# 810
	jal		x1, min_caml_read_float	# 810
	addi	x2, x2, 88	# 810
	lw		x1, -84(x2)	# 810
	lui		x4, %hi(l.15757)	# 677
	ori		x4, x0, %lo(l.15757)	# 677
	flw		f1, 0(x4)	# 677
	fmul	f0, f0, f1	# 677
	ori		x4, x0, 4	# 810
	lw		x5, -80(x2)	# 810
	mul		x4, x5, x4	# 810
	lw		x5, -76(x2)	# 810
	add		x4, x5, x4	# 810
	fsw		f0, 0(x4)	# 810
	ori		x4, x0, 1	# 811
	sw		x4, -84(x2)	# 811
	sw		x1, -88(x2)	# 811
	addi	x2, x2, -92	# 811
	jal		x1, min_caml_read_float	# 811
	addi	x2, x2, 92	# 811
	lw		x1, -88(x2)	# 811
	lui		x4, %hi(l.15757)	# 677
	ori		x4, x0, %lo(l.15757)	# 677
	flw		f1, 0(x4)	# 677
	fmul	f0, f0, f1	# 677
	ori		x4, x0, 4	# 811
	lw		x5, -84(x2)	# 811
	mul		x4, x5, x4	# 811
	lw		x5, -76(x2)	# 811
	add		x4, x5, x4	# 811
	fsw		f0, 0(x4)	# 811
	ori		x4, x0, 2	# 812
	sw		x4, -88(x2)	# 812
	sw		x1, -92(x2)	# 812
	addi	x2, x2, -96	# 812
	jal		x1, min_caml_read_float	# 812
	addi	x2, x2, 96	# 812
	lw		x1, -92(x2)	# 812
	lui		x4, %hi(l.15757)	# 677
	ori		x4, x0, %lo(l.15757)	# 677
	flw		f1, 0(x4)	# 677
	fmul	f0, f0, f1	# 677
	ori		x4, x0, 4	# 812
	lw		x5, -88(x2)	# 812
	mul		x4, x5, x4	# 812
	lw		x5, -76(x2)	# 812
	add		x4, x5, x4	# 812
	fsw		f0, 0(x4)	# 812
	jal		x0, beq_cont.295544	# 808
beq.295545:
beq_cont.295544:
	lw		x4, -12(x2)	# 819
	lw		x5, -44(x2)	# 819
	beq		x5, x4, beq.295547	# 819
	lw		x6, -64(x2)	# 819
	jal		x0, beq_cont.295546	# 819
beq.295547:
	ori		x6, x0, 1	# 819
beq_cont.295546:
	ori		x7, x0, 4	# 820
	flw		f0, -24(x2)	# 820
	sw		x6, -92(x2)	# 820
	addi	x4, x7, 0
	sw		x1, -96(x2)	# 820
	addi	x2, x2, -100	# 820
	jal		x1, min_caml_create_float_array	# 820
	addi	x2, x2, 100	# 820
	lw		x1, -96(x2)	# 820
	addi	x5, x3, 0	# 823
	addi	x3, x3, 44	# 823
	sw		x4, 40(x5)	# 823
	lw		x4, -76(x2)	# 823
	sw		x4, 36(x5)	# 823
	lw		x6, -72(x2)	# 823
	sw		x6, 32(x5)	# 823
	lw		x6, -68(x2)	# 823
	sw		x6, 28(x5)	# 823
	lw		x6, -92(x2)	# 823
	sw		x6, 24(x5)	# 823
	lw		x6, -60(x2)	# 823
	sw		x6, 20(x5)	# 823
	lw		x6, -56(x2)	# 823
	sw		x6, 16(x5)	# 823
	lw		x7, -52(x2)	# 823
	sw		x7, 12(x5)	# 823
	lw		x8, -48(x2)	# 823
	sw		x8, 8(x5)	# 823
	lw		x8, -44(x2)	# 823
	sw		x8, 4(x5)	# 823
	lw		x9, -40(x2)	# 823
	sw		x9, 0(x5)	# 823
	ori		x9, x0, 4	# 831
	lw		x10, -8(x2)	# 831
	mul		x9, x10, x9	# 831
	lw		x10, -4(x2)	# 831
	add		x9, x10, x9	# 831
	sw		x5, 0(x9)	# 831
	lw		x5, -32(x2)	# 833
	beq		x8, x5, beq.295549	# 833
	ori		x5, x0, 2	# 843
	beq		x8, x5, beq.295551	# 843
	jal		x0, beq_cont.295550	# 843
beq.295551:
	addi	x5, x0, 0	# 845
	lw		x8, -64(x2)	# 845
	beq		x8, x5, beq.295553	# 845
	addi	x5, x0, 0	# 845
	jal		x0, beq_cont.295552	# 845
beq.295553:
	ori		x5, x0, 1	# 845
beq_cont.295552:
	ori		x8, x0, 4	# 283
	lw		x9, -20(x2)	# 283
	mul		x8, x9, x8	# 283
	add		x8, x6, x8	# 283
	flw		f0, 0(x8)	# 283
	fmul	f0, f0, f0	# 8
	ori		x8, x0, 4	# 283
	lw		x10, -16(x2)	# 283
	mul		x8, x10, x8	# 283
	add		x8, x6, x8	# 283
	flw		f1, 0(x8)	# 283
	fmul	f1, f1, f1	# 8
	fadd	f0, f0, f1	# 283
	ori		x8, x0, 4	# 283
	lw		x11, -12(x2)	# 283
	mul		x8, x11, x8	# 283
	add		x8, x6, x8	# 283
	flw		f1, 0(x8)	# 283
	fmul	f1, f1, f1	# 8
	fadd	f0, f0, f1	# 283
	sw		x5, -96(x2)	# 283
	sw		x1, -100(x2)	# 283
	addi	x2, x2, -104	# 283
	jal		x1, min_caml_sqrt	# 283
	addi	x2, x2, 104	# 283
	lw		x1, -100(x2)	# 283
	flw		f1, -24(x2)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.295555	# 1
	ori		x4, x0, 1	# 1
	jal		x0, feq_cont.295554	# 1
feq_else.295555:
	addi	x4, x0, 0	# 1
feq_cont.295554:
	lw		x5, -20(x2)	# 284
	beq		x4, x5, beq.295557	# 284
	lui		x4, %hi(l.15661)	# 284
	ori		x4, x0, %lo(l.15661)	# 284
	flw		f0, 0(x4)	# 284
	jal		x0, beq_cont.295556	# 284
beq.295557:
	lw		x4, -96(x2)	# 284
	beq		x4, x5, beq.295559	# 284
	lui		x4, %hi(l.16024)	# 284
	ori		x4, x0, %lo(l.16024)	# 284
	flw		f1, 0(x4)	# 284
	fdiv	f0, f1, f0	# 284
	jal		x0, beq_cont.295558	# 284
beq.295559:
	lui		x4, %hi(l.15661)	# 284
	ori		x4, x0, %lo(l.15661)	# 284
	flw		f1, 0(x4)	# 284
	fdiv	f0, f1, f0	# 284
beq_cont.295558:
beq_cont.295556:
	ori		x4, x0, 4	# 285
	mul		x4, x5, x4	# 285
	lw		x6, -56(x2)	# 285
	add		x4, x6, x4	# 285
	flw		f1, 0(x4)	# 285
	fmul	f1, f1, f0	# 285
	ori		x4, x0, 4	# 285
	mul		x4, x5, x4	# 285
	add		x4, x6, x4	# 285
	fsw		f1, 0(x4)	# 285
	ori		x4, x0, 4	# 286
	lw		x7, -16(x2)	# 286
	mul		x4, x7, x4	# 286
	add		x4, x6, x4	# 286
	flw		f1, 0(x4)	# 286
	fmul	f1, f1, f0	# 286
	ori		x4, x0, 4	# 286
	mul		x4, x7, x4	# 286
	add		x4, x6, x4	# 286
	fsw		f1, 0(x4)	# 286
	ori		x4, x0, 4	# 287
	lw		x7, -12(x2)	# 287
	mul		x4, x7, x4	# 287
	add		x4, x6, x4	# 287
	flw		f1, 0(x4)	# 287
	fmul	f0, f1, f0	# 287
	ori		x4, x0, 4	# 287
	mul		x4, x7, x4	# 287
	add		x4, x6, x4	# 287
	fsw		f0, 0(x4)	# 287
beq_cont.295550:
	jal		x0, beq_cont.295548	# 833
beq.295549:
	addi	x5, x0, 0	# 836
	ori		x8, x0, 4	# 836
	mul		x5, x5, x8	# 836
	add		x5, x6, x5	# 836
	flw		f0, 0(x5)	# 836
	addi	x5, x0, 0	# 837
	lui		x8, %hi(l.15659)	# 1
	ori		x8, x0, %lo(l.15659)	# 1
	flw		f1, 0(x8)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.295561	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.295560	# 1
feq_else.295561:
	addi	x8, x0, 0	# 1
feq_cont.295560:
	addi	x9, x0, 0	# 837
	beq		x8, x9, beq.295563	# 837
	lui		x8, %hi(l.15659)	# 837
	ori		x8, x0, %lo(l.15659)	# 837
	flw		f0, 0(x8)	# 837
	jal		x0, beq_cont.295562	# 837
beq.295563:
	lui		x8, %hi(l.15659)	# 1
	ori		x8, x0, %lo(l.15659)	# 1
	flw		f1, 0(x8)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.295565	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.295564	# 1
feq_else.295565:
	addi	x8, x0, 0	# 1
feq_cont.295564:
	addi	x9, x0, 0	# 212
	beq		x8, x9, beq.295567	# 212
	lui		x8, %hi(l.15659)	# 212
	ori		x8, x0, %lo(l.15659)	# 212
	flw		f1, 0(x8)	# 212
	jal		x0, beq_cont.295566	# 212
beq.295567:
	lui		x8, %hi(l.15659)	# 2
	ori		x8, x0, %lo(l.15659)	# 2
	flw		f1, 0(x8)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.295569	# 2
	addi	x8, x0, 0	# 2
	jal		x0, fle_cont.295568	# 2
fle_else.295569:
	ori		x8, x0, 1	# 2
fle_cont.295568:
	beq		x8, x9, beq.295571	# 213
	lui		x8, %hi(l.15661)	# 213
	ori		x8, x0, %lo(l.15661)	# 213
	flw		f1, 0(x8)	# 213
	jal		x0, beq_cont.295570	# 213
beq.295571:
	lui		x8, %hi(l.16024)	# 214
	ori		x8, x0, %lo(l.16024)	# 214
	flw		f1, 0(x8)	# 214
beq_cont.295570:
beq_cont.295566:
	fmul	f0, f0, f0	# 8
	fdiv	f0, f1, f0	# 837
beq_cont.295562:
	ori		x8, x0, 4	# 837
	mul		x5, x5, x8	# 837
	add		x5, x6, x5	# 837
	fsw		f0, 0(x5)	# 837
	ori		x5, x0, 1	# 838
	ori		x8, x0, 4	# 838
	mul		x5, x5, x8	# 838
	add		x5, x6, x5	# 838
	flw		f0, 0(x5)	# 838
	ori		x5, x0, 1	# 839
	lui		x8, %hi(l.15659)	# 1
	ori		x8, x0, %lo(l.15659)	# 1
	flw		f1, 0(x8)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.295573	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.295572	# 1
feq_else.295573:
	addi	x8, x0, 0	# 1
feq_cont.295572:
	addi	x9, x0, 0	# 839
	beq		x8, x9, beq.295575	# 839
	lui		x8, %hi(l.15659)	# 839
	ori		x8, x0, %lo(l.15659)	# 839
	flw		f0, 0(x8)	# 839
	jal		x0, beq_cont.295574	# 839
beq.295575:
	lui		x8, %hi(l.15659)	# 1
	ori		x8, x0, %lo(l.15659)	# 1
	flw		f1, 0(x8)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.295577	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.295576	# 1
feq_else.295577:
	addi	x8, x0, 0	# 1
feq_cont.295576:
	addi	x9, x0, 0	# 212
	beq		x8, x9, beq.295579	# 212
	lui		x8, %hi(l.15659)	# 212
	ori		x8, x0, %lo(l.15659)	# 212
	flw		f1, 0(x8)	# 212
	jal		x0, beq_cont.295578	# 212
beq.295579:
	lui		x8, %hi(l.15659)	# 2
	ori		x8, x0, %lo(l.15659)	# 2
	flw		f1, 0(x8)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.295581	# 2
	addi	x8, x0, 0	# 2
	jal		x0, fle_cont.295580	# 2
fle_else.295581:
	ori		x8, x0, 1	# 2
fle_cont.295580:
	beq		x8, x9, beq.295583	# 213
	lui		x8, %hi(l.15661)	# 213
	ori		x8, x0, %lo(l.15661)	# 213
	flw		f1, 0(x8)	# 213
	jal		x0, beq_cont.295582	# 213
beq.295583:
	lui		x8, %hi(l.16024)	# 214
	ori		x8, x0, %lo(l.16024)	# 214
	flw		f1, 0(x8)	# 214
beq_cont.295582:
beq_cont.295578:
	fmul	f0, f0, f0	# 8
	fdiv	f0, f1, f0	# 839
beq_cont.295574:
	ori		x8, x0, 4	# 839
	mul		x5, x5, x8	# 839
	add		x5, x6, x5	# 839
	fsw		f0, 0(x5)	# 839
	ori		x5, x0, 2	# 840
	ori		x8, x0, 4	# 840
	mul		x5, x5, x8	# 840
	add		x5, x6, x5	# 840
	flw		f0, 0(x5)	# 840
	ori		x5, x0, 2	# 841
	lui		x8, %hi(l.15659)	# 1
	ori		x8, x0, %lo(l.15659)	# 1
	flw		f1, 0(x8)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.295585	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.295584	# 1
feq_else.295585:
	addi	x8, x0, 0	# 1
feq_cont.295584:
	addi	x9, x0, 0	# 841
	beq		x8, x9, beq.295587	# 841
	lui		x8, %hi(l.15659)	# 841
	ori		x8, x0, %lo(l.15659)	# 841
	flw		f0, 0(x8)	# 841
	jal		x0, beq_cont.295586	# 841
beq.295587:
	lui		x8, %hi(l.15659)	# 1
	ori		x8, x0, %lo(l.15659)	# 1
	flw		f1, 0(x8)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.295589	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.295588	# 1
feq_else.295589:
	addi	x8, x0, 0	# 1
feq_cont.295588:
	addi	x9, x0, 0	# 212
	beq		x8, x9, beq.295591	# 212
	lui		x8, %hi(l.15659)	# 212
	ori		x8, x0, %lo(l.15659)	# 212
	flw		f1, 0(x8)	# 212
	jal		x0, beq_cont.295590	# 212
beq.295591:
	lui		x8, %hi(l.15659)	# 2
	ori		x8, x0, %lo(l.15659)	# 2
	flw		f1, 0(x8)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.295593	# 2
	addi	x8, x0, 0	# 2
	jal		x0, fle_cont.295592	# 2
fle_else.295593:
	ori		x8, x0, 1	# 2
fle_cont.295592:
	beq		x8, x9, beq.295595	# 213
	lui		x8, %hi(l.15661)	# 213
	ori		x8, x0, %lo(l.15661)	# 213
	flw		f1, 0(x8)	# 213
	jal		x0, beq_cont.295594	# 213
beq.295595:
	lui		x8, %hi(l.16024)	# 214
	ori		x8, x0, %lo(l.16024)	# 214
	flw		f1, 0(x8)	# 214
beq_cont.295594:
beq_cont.295590:
	fmul	f0, f0, f0	# 8
	fdiv	f0, f1, f0	# 841
beq_cont.295586:
	ori		x8, x0, 4	# 841
	mul		x5, x5, x8	# 841
	add		x5, x6, x5	# 841
	fsw		f0, 0(x5)	# 841
beq_cont.295548:
	lw		x4, -20(x2)	# 849
	lw		x5, -52(x2)	# 849
	beq		x5, x4, beq.295597	# 849
	lw		x5, -76(x2)	# 850
	lw		x27, 0(x2)	# 850
	addi	x4, x6, 0
	sw		x1, -100(x2)	# 850
	addi	x2, x2, -104	# 850
	lw		x31, 0(x27)	# 850
	jalr	x1, x31, 0	# 850
	addi	x2, x2, 104	# 850
	lw		x1, -100(x2)	# 850
	jal		x0, beq_cont.295596	# 849
beq.295597:
beq_cont.295596:
	ori		x4, x0, 1	# 853
	jalr	x0, x1, 0	# 853
beq.295541:
	addi	x4, x0, 0	# 856
	jalr	x0, x1, 0	# 856
read_object.2672:
	lw		x5, 20(x27)	# 861
	lw		x6, 16(x27)	# 861
	lw		x7, 12(x27)	# 861
	lw		x8, 8(x27)	# 861
	lw		x9, 4(x27)	# 861
	ble		x7, x4, ble.295598	# 861
	sw		x27, 0(x2)	# 862
	sw		x5, -4(x2)	# 862
	sw		x7, -8(x2)	# 862
	sw		x9, -12(x2)	# 862
	sw		x4, -16(x2)	# 862
	sw		x6, -20(x2)	# 862
	sw		x8, -24(x2)	# 862
	addi	x27, x5, 0
	sw		x1, -28(x2)	# 862
	addi	x2, x2, -32	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 32	# 862
	lw		x1, -28(x2)	# 862
	lw		x5, -24(x2)	# 862
	beq		x4, x5, beq.295599	# 862
	lw		x4, -12(x2)	# 863
	lw		x6, -16(x2)	# 863
	add		x6, x6, x4	# 863
	lw		x7, -8(x2)	# 861
	ble		x7, x6, ble.295600	# 861
	lw		x27, -4(x2)	# 862
	sw		x6, -28(x2)	# 862
	addi	x4, x6, 0
	sw		x1, -32(x2)	# 862
	addi	x2, x2, -36	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 36	# 862
	lw		x1, -32(x2)	# 862
	lw		x5, -24(x2)	# 862
	beq		x4, x5, beq.295601	# 862
	lw		x4, -12(x2)	# 863
	lw		x6, -28(x2)	# 863
	add		x6, x6, x4	# 863
	lw		x7, -8(x2)	# 861
	ble		x7, x6, ble.295602	# 861
	lw		x27, -4(x2)	# 862
	sw		x6, -32(x2)	# 862
	addi	x4, x6, 0
	sw		x1, -36(x2)	# 862
	addi	x2, x2, -40	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 40	# 862
	lw		x1, -36(x2)	# 862
	lw		x5, -24(x2)	# 862
	beq		x4, x5, beq.295603	# 862
	lw		x4, -12(x2)	# 863
	lw		x6, -32(x2)	# 863
	add		x6, x6, x4	# 863
	lw		x7, -8(x2)	# 861
	ble		x7, x6, ble.295604	# 861
	lw		x27, -4(x2)	# 862
	sw		x6, -36(x2)	# 862
	addi	x4, x6, 0
	sw		x1, -40(x2)	# 862
	addi	x2, x2, -44	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 44	# 862
	lw		x1, -40(x2)	# 862
	lw		x5, -24(x2)	# 862
	beq		x4, x5, beq.295605	# 862
	lw		x4, -12(x2)	# 863
	lw		x6, -36(x2)	# 863
	add		x6, x6, x4	# 863
	lw		x7, -8(x2)	# 861
	ble		x7, x6, ble.295606	# 861
	lw		x27, -4(x2)	# 862
	sw		x6, -40(x2)	# 862
	addi	x4, x6, 0
	sw		x1, -44(x2)	# 862
	addi	x2, x2, -48	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 48	# 862
	lw		x1, -44(x2)	# 862
	lw		x5, -24(x2)	# 862
	beq		x4, x5, beq.295607	# 862
	lw		x4, -12(x2)	# 863
	lw		x6, -40(x2)	# 863
	add		x6, x6, x4	# 863
	lw		x7, -8(x2)	# 861
	ble		x7, x6, ble.295608	# 861
	lw		x27, -4(x2)	# 862
	sw		x6, -44(x2)	# 862
	addi	x4, x6, 0
	sw		x1, -48(x2)	# 862
	addi	x2, x2, -52	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 52	# 862
	lw		x1, -48(x2)	# 862
	lw		x5, -24(x2)	# 862
	beq		x4, x5, beq.295609	# 862
	lw		x4, -12(x2)	# 863
	lw		x6, -44(x2)	# 863
	add		x6, x6, x4	# 863
	lw		x7, -8(x2)	# 861
	ble		x7, x6, ble.295610	# 861
	lw		x27, -4(x2)	# 862
	sw		x6, -48(x2)	# 862
	addi	x4, x6, 0
	sw		x1, -52(x2)	# 862
	addi	x2, x2, -56	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 56	# 862
	lw		x1, -52(x2)	# 862
	lw		x5, -24(x2)	# 862
	beq		x4, x5, beq.295611	# 862
	lw		x4, -12(x2)	# 863
	lw		x6, -48(x2)	# 863
	add		x6, x6, x4	# 863
	lw		x7, -8(x2)	# 861
	ble		x7, x6, ble.295612	# 861
	lw		x27, -4(x2)	# 862
	sw		x6, -52(x2)	# 862
	addi	x4, x6, 0
	sw		x1, -56(x2)	# 862
	addi	x2, x2, -60	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 60	# 862
	lw		x1, -56(x2)	# 862
	lw		x5, -24(x2)	# 862
	beq		x4, x5, beq.295613	# 862
	lw		x4, -12(x2)	# 863
	lw		x5, -52(x2)	# 863
	add		x4, x5, x4	# 863
	lw		x27, 0(x2)	# 863
	lw		x31, 0(x27)	# 863
	jalr	x0, x31, 0	# 863
beq.295613:
	ori		x4, x0, 4	# 865
	mul		x4, x5, x4	# 865
	lw		x5, -20(x2)	# 865
	add		x4, x5, x4	# 865
	lw		x5, -52(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.295612:
	jalr	x0, x1, 0	# 866
beq.295611:
	ori		x4, x0, 4	# 865
	mul		x4, x5, x4	# 865
	lw		x5, -20(x2)	# 865
	add		x4, x5, x4	# 865
	lw		x5, -48(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.295610:
	jalr	x0, x1, 0	# 866
beq.295609:
	ori		x4, x0, 4	# 865
	mul		x4, x5, x4	# 865
	lw		x5, -20(x2)	# 865
	add		x4, x5, x4	# 865
	lw		x5, -44(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.295608:
	jalr	x0, x1, 0	# 866
beq.295607:
	ori		x4, x0, 4	# 865
	mul		x4, x5, x4	# 865
	lw		x5, -20(x2)	# 865
	add		x4, x5, x4	# 865
	lw		x5, -40(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.295606:
	jalr	x0, x1, 0	# 866
beq.295605:
	ori		x4, x0, 4	# 865
	mul		x4, x5, x4	# 865
	lw		x5, -20(x2)	# 865
	add		x4, x5, x4	# 865
	lw		x5, -36(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.295604:
	jalr	x0, x1, 0	# 866
beq.295603:
	ori		x4, x0, 4	# 865
	mul		x4, x5, x4	# 865
	lw		x5, -20(x2)	# 865
	add		x4, x5, x4	# 865
	lw		x5, -32(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.295602:
	jalr	x0, x1, 0	# 866
beq.295601:
	ori		x4, x0, 4	# 865
	mul		x4, x5, x4	# 865
	lw		x5, -20(x2)	# 865
	add		x4, x5, x4	# 865
	lw		x5, -28(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.295600:
	jalr	x0, x1, 0	# 866
beq.295599:
	ori		x4, x0, 4	# 865
	mul		x4, x5, x4	# 865
	lw		x5, -20(x2)	# 865
	add		x4, x5, x4	# 865
	lw		x5, -16(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.295598:
	jalr	x0, x1, 0	# 866
read_net_item.2676:
	lw		x5, 8(x27)	# 877
	lw		x6, 4(x27)	# 877
	sw		x27, 0(x2)	# 877
	sw		x6, -4(x2)	# 877
	sw		x4, -8(x2)	# 877
	sw		x5, -12(x2)	# 877
	sw		x1, -16(x2)	# 877
	addi	x2, x2, -20	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 20	# 877
	lw		x1, -16(x2)	# 877
	lw		x5, -12(x2)	# 878
	beq		x4, x5, beq.295630	# 878
	lw		x6, -4(x2)	# 880
	lw		x7, -8(x2)	# 880
	add		x8, x7, x6	# 880
	sw		x4, -16(x2)	# 877
	sw		x8, -20(x2)	# 877
	sw		x1, -24(x2)	# 877
	addi	x2, x2, -28	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 28	# 877
	lw		x1, -24(x2)	# 877
	lw		x5, -12(x2)	# 878
	beq		x4, x5, beq.295632	# 878
	lw		x6, -20(x2)	# 880
	addi	x7, x6, 1	# 880
	sw		x4, -24(x2)	# 877
	sw		x7, -28(x2)	# 877
	sw		x1, -32(x2)	# 877
	addi	x2, x2, -36	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 36	# 877
	lw		x1, -32(x2)	# 877
	lw		x5, -12(x2)	# 878
	beq		x4, x5, beq.295634	# 878
	lw		x5, -4(x2)	# 880
	lw		x6, -28(x2)	# 880
	add		x5, x6, x5	# 880
	sw		x4, -32(x2)	# 877
	sw		x5, -36(x2)	# 877
	sw		x1, -40(x2)	# 877
	addi	x2, x2, -44	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 44	# 877
	lw		x1, -40(x2)	# 877
	lui		x5, -1	# 878
	ori		x5, x0, -1	# 878
	beq		x4, x5, beq.295636	# 878
	lw		x5, -36(x2)	# 880
	addi	x6, x5, 1	# 880
	lw		x27, 0(x2)	# 880
	sw		x4, -40(x2)	# 880
	addi	x4, x6, 0
	sw		x1, -44(x2)	# 880
	addi	x2, x2, -48	# 880
	lw		x31, 0(x27)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 48	# 880
	lw		x1, -44(x2)	# 880
	ori		x5, x0, 4	# 881
	lw		x6, -36(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -40(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.295635	# 878
beq.295636:
	lw		x4, -36(x2)	# 878
	addi	x4, x4, 1	# 878
	lui		x5, -1	# 878
	ori		x5, x0, -1	# 878
	sw		x1, -44(x2)	# 878
	addi	x2, x2, -48	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 48	# 878
	lw		x1, -44(x2)	# 878
beq_cont.295635:
	ori		x5, x0, 4	# 881
	lw		x6, -28(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -32(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.295633	# 878
beq.295634:
	lw		x4, -4(x2)	# 878
	lw		x6, -28(x2)	# 878
	add		x4, x6, x4	# 878
	sw		x1, -44(x2)	# 878
	addi	x2, x2, -48	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 48	# 878
	lw		x1, -44(x2)	# 878
beq_cont.295633:
	ori		x5, x0, 4	# 881
	lw		x6, -20(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -24(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.295631	# 878
beq.295632:
	lw		x4, -20(x2)	# 878
	addi	x4, x4, 1	# 878
	lui		x5, -1	# 878
	ori		x5, x0, -1	# 878
	sw		x1, -44(x2)	# 878
	addi	x2, x2, -48	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 48	# 878
	lw		x1, -44(x2)	# 878
beq_cont.295631:
	ori		x5, x0, 4	# 881
	lw		x6, -8(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -16(x2)	# 881
	sw		x6, 0(x5)	# 881
	jalr	x0, x1, 0	# 881
beq.295630:
	lw		x4, -4(x2)	# 878
	lw		x6, -8(x2)	# 878
	add		x4, x6, x4	# 878
	jal		x0, min_caml_create_array	# 878
read_or_network.2678:
	lw		x5, 16(x27)	# 877
	lw		x6, 12(x27)	# 877
	lw		x7, 8(x27)	# 877
	lw		x8, 4(x27)	# 877
	sw		x27, 0(x2)	# 877
	sw		x8, -4(x2)	# 877
	sw		x4, -8(x2)	# 877
	sw		x7, -12(x2)	# 877
	sw		x5, -16(x2)	# 877
	sw		x6, -20(x2)	# 877
	sw		x1, -24(x2)	# 877
	addi	x2, x2, -28	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 28	# 877
	lw		x1, -24(x2)	# 877
	lw		x5, -20(x2)	# 878
	beq		x4, x5, beq.295638	# 878
	ori		x6, x0, 1	# 880
	sw		x4, -24(x2)	# 877
	sw		x6, -28(x2)	# 877
	sw		x1, -32(x2)	# 877
	addi	x2, x2, -36	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 36	# 877
	lw		x1, -32(x2)	# 877
	lw		x5, -20(x2)	# 878
	beq		x4, x5, beq.295640	# 878
	ori		x6, x0, 2	# 880
	sw		x4, -32(x2)	# 877
	sw		x6, -36(x2)	# 877
	sw		x1, -40(x2)	# 877
	addi	x2, x2, -44	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 44	# 877
	lw		x1, -40(x2)	# 877
	lui		x5, -1	# 878
	ori		x5, x0, -1	# 878
	beq		x4, x5, beq.295642	# 878
	ori		x5, x0, 3	# 880
	lw		x27, -16(x2)	# 880
	sw		x4, -40(x2)	# 880
	addi	x4, x5, 0
	sw		x1, -44(x2)	# 880
	addi	x2, x2, -48	# 880
	lw		x31, 0(x27)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 48	# 880
	lw		x1, -44(x2)	# 880
	ori		x5, x0, 4	# 881
	lw		x6, -36(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -40(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.295641	# 878
beq.295642:
	ori		x4, x0, 3	# 878
	lui		x5, -1	# 878
	ori		x5, x0, -1	# 878
	sw		x1, -44(x2)	# 878
	addi	x2, x2, -48	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 48	# 878
	lw		x1, -44(x2)	# 878
beq_cont.295641:
	ori		x5, x0, 4	# 881
	lw		x6, -28(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -32(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.295639	# 878
beq.295640:
	ori		x4, x0, 2	# 878
	sw		x1, -44(x2)	# 878
	addi	x2, x2, -48	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 48	# 878
	lw		x1, -44(x2)	# 878
beq_cont.295639:
	ori		x5, x0, 4	# 881
	lw		x6, -12(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x7, -24(x2)	# 881
	sw		x7, 0(x5)	# 881
	addi	x5, x4, 0	# 881
	jal		x0, beq_cont.295637	# 878
beq.295638:
	ori		x4, x0, 1	# 878
	lui		x6, -1	# 878
	ori		x6, x0, -1	# 878
	addi	x5, x6, 0
	sw		x1, -44(x2)	# 878
	addi	x2, x2, -48	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 48	# 878
	lw		x1, -44(x2)	# 878
	addi	x5, x4, 0	# 878
beq_cont.295637:
	ori		x4, x0, 4	# 886
	lw		x6, -12(x2)	# 886
	mul		x4, x6, x4	# 886
	add		x4, x5, x4	# 886
	lw		x4, 0(x4)	# 886
	lw		x7, -20(x2)	# 886
	beq		x4, x7, beq.295643	# 886
	lw		x4, -4(x2)	# 889
	lw		x8, -8(x2)	# 889
	add		x4, x8, x4	# 889
	sw		x5, -44(x2)	# 877
	sw		x4, -48(x2)	# 877
	sw		x1, -52(x2)	# 877
	addi	x2, x2, -56	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 56	# 877
	lw		x1, -52(x2)	# 877
	lw		x5, -20(x2)	# 878
	beq		x4, x5, beq.295645	# 878
	ori		x6, x0, 1	# 880
	sw		x4, -52(x2)	# 877
	sw		x6, -56(x2)	# 877
	sw		x1, -60(x2)	# 877
	addi	x2, x2, -64	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 64	# 877
	lw		x1, -60(x2)	# 877
	lui		x5, -1	# 878
	ori		x5, x0, -1	# 878
	beq		x4, x5, beq.295647	# 878
	ori		x5, x0, 2	# 880
	lw		x27, -16(x2)	# 880
	sw		x4, -60(x2)	# 880
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 880
	addi	x2, x2, -68	# 880
	lw		x31, 0(x27)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 68	# 880
	lw		x1, -64(x2)	# 880
	ori		x5, x0, 4	# 881
	lw		x6, -56(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -60(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.295646	# 878
beq.295647:
	ori		x4, x0, 2	# 878
	lui		x5, -1	# 878
	ori		x5, x0, -1	# 878
	sw		x1, -64(x2)	# 878
	addi	x2, x2, -68	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 68	# 878
	lw		x1, -64(x2)	# 878
beq_cont.295646:
	ori		x5, x0, 4	# 881
	lw		x6, -12(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x7, -52(x2)	# 881
	sw		x7, 0(x5)	# 881
	addi	x5, x4, 0	# 881
	jal		x0, beq_cont.295644	# 878
beq.295645:
	ori		x4, x0, 1	# 878
	sw		x1, -64(x2)	# 878
	addi	x2, x2, -68	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 68	# 878
	lw		x1, -64(x2)	# 878
	addi	x5, x4, 0	# 878
beq_cont.295644:
	ori		x4, x0, 4	# 886
	lw		x6, -12(x2)	# 886
	mul		x4, x6, x4	# 886
	add		x4, x5, x4	# 886
	lw		x4, 0(x4)	# 886
	lw		x6, -20(x2)	# 886
	beq		x4, x6, beq.295649	# 886
	lw		x4, -48(x2)	# 889
	addi	x6, x4, 1	# 889
	lw		x27, 0(x2)	# 889
	sw		x5, -64(x2)	# 889
	addi	x4, x6, 0
	sw		x1, -68(x2)	# 889
	addi	x2, x2, -72	# 889
	lw		x31, 0(x27)	# 889
	jalr	x1, x31, 0	# 889
	addi	x2, x2, 72	# 889
	lw		x1, -68(x2)	# 889
	ori		x5, x0, 4	# 890
	lw		x6, -48(x2)	# 890
	mul		x5, x6, x5	# 890
	add		x5, x4, x5	# 890
	lw		x6, -64(x2)	# 890
	sw		x6, 0(x5)	# 890
	jal		x0, beq_cont.295648	# 886
beq.295649:
	lw		x4, -48(x2)	# 887
	addi	x4, x4, 1	# 887
	sw		x1, -68(x2)	# 887
	addi	x2, x2, -72	# 887
	jal		x1, min_caml_create_array	# 887
	addi	x2, x2, 72	# 887
	lw		x1, -68(x2)	# 887
beq_cont.295648:
	ori		x5, x0, 4	# 890
	lw		x6, -8(x2)	# 890
	mul		x5, x6, x5	# 890
	add		x5, x4, x5	# 890
	lw		x6, -44(x2)	# 890
	sw		x6, 0(x5)	# 890
	jalr	x0, x1, 0	# 890
beq.295643:
	lw		x4, -4(x2)	# 887
	lw		x6, -8(x2)	# 887
	add		x4, x6, x4	# 887
	jal		x0, min_caml_create_array	# 887
read_and_network.2680:
	lw		x5, 20(x27)	# 877
	lw		x6, 16(x27)	# 877
	lw		x7, 12(x27)	# 877
	lw		x8, 8(x27)	# 877
	lw		x9, 4(x27)	# 877
	sw		x27, 0(x2)	# 877
	sw		x9, -4(x2)	# 877
	sw		x6, -8(x2)	# 877
	sw		x4, -12(x2)	# 877
	sw		x8, -16(x2)	# 877
	sw		x5, -20(x2)	# 877
	sw		x7, -24(x2)	# 877
	sw		x1, -28(x2)	# 877
	addi	x2, x2, -32	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 32	# 877
	lw		x1, -28(x2)	# 877
	lw		x5, -24(x2)	# 878
	beq		x4, x5, beq.295651	# 878
	ori		x6, x0, 1	# 880
	sw		x4, -28(x2)	# 877
	sw		x6, -32(x2)	# 877
	sw		x1, -36(x2)	# 877
	addi	x2, x2, -40	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 40	# 877
	lw		x1, -36(x2)	# 877
	lw		x5, -24(x2)	# 878
	beq		x4, x5, beq.295653	# 878
	ori		x6, x0, 2	# 880
	sw		x4, -36(x2)	# 877
	sw		x6, -40(x2)	# 877
	sw		x1, -44(x2)	# 877
	addi	x2, x2, -48	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 48	# 877
	lw		x1, -44(x2)	# 877
	lui		x5, -1	# 878
	ori		x5, x0, -1	# 878
	beq		x4, x5, beq.295655	# 878
	ori		x5, x0, 3	# 880
	lw		x27, -20(x2)	# 880
	sw		x4, -44(x2)	# 880
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 880
	addi	x2, x2, -52	# 880
	lw		x31, 0(x27)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 52	# 880
	lw		x1, -48(x2)	# 880
	ori		x5, x0, 4	# 881
	lw		x6, -40(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -44(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.295654	# 878
beq.295655:
	ori		x4, x0, 3	# 878
	lui		x5, -1	# 878
	ori		x5, x0, -1	# 878
	sw		x1, -48(x2)	# 878
	addi	x2, x2, -52	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 52	# 878
	lw		x1, -48(x2)	# 878
beq_cont.295654:
	ori		x5, x0, 4	# 881
	lw		x6, -32(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -36(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.295652	# 878
beq.295653:
	ori		x4, x0, 2	# 878
	sw		x1, -48(x2)	# 878
	addi	x2, x2, -52	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 52	# 878
	lw		x1, -48(x2)	# 878
beq_cont.295652:
	ori		x5, x0, 4	# 881
	lw		x6, -16(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x7, -28(x2)	# 881
	sw		x7, 0(x5)	# 881
	jal		x0, beq_cont.295650	# 878
beq.295651:
	ori		x4, x0, 1	# 878
	lui		x6, -1	# 878
	ori		x6, x0, -1	# 878
	addi	x5, x6, 0
	sw		x1, -48(x2)	# 878
	addi	x2, x2, -52	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 52	# 878
	lw		x1, -48(x2)	# 878
beq_cont.295650:
	ori		x5, x0, 4	# 895
	lw		x6, -16(x2)	# 895
	mul		x5, x6, x5	# 895
	add		x5, x4, x5	# 895
	lw		x5, 0(x5)	# 895
	lw		x7, -24(x2)	# 895
	beq		x5, x7, beq.295656	# 895
	ori		x5, x0, 4	# 897
	lw		x8, -12(x2)	# 897
	mul		x5, x8, x5	# 897
	lw		x9, -8(x2)	# 897
	add		x5, x9, x5	# 897
	sw		x4, 0(x5)	# 897
	lw		x4, -4(x2)	# 898
	add		x5, x8, x4	# 898
	sw		x5, -48(x2)	# 877
	sw		x1, -52(x2)	# 877
	addi	x2, x2, -56	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 56	# 877
	lw		x1, -52(x2)	# 877
	lw		x5, -24(x2)	# 878
	beq		x4, x5, beq.295658	# 878
	ori		x6, x0, 1	# 880
	sw		x4, -52(x2)	# 877
	sw		x6, -56(x2)	# 877
	sw		x1, -60(x2)	# 877
	addi	x2, x2, -64	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 64	# 877
	lw		x1, -60(x2)	# 877
	lui		x5, -1	# 878
	ori		x5, x0, -1	# 878
	beq		x4, x5, beq.295660	# 878
	ori		x5, x0, 2	# 880
	lw		x27, -20(x2)	# 880
	sw		x4, -60(x2)	# 880
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 880
	addi	x2, x2, -68	# 880
	lw		x31, 0(x27)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 68	# 880
	lw		x1, -64(x2)	# 880
	ori		x5, x0, 4	# 881
	lw		x6, -56(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -60(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.295659	# 878
beq.295660:
	ori		x4, x0, 2	# 878
	lui		x5, -1	# 878
	ori		x5, x0, -1	# 878
	sw		x1, -64(x2)	# 878
	addi	x2, x2, -68	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 68	# 878
	lw		x1, -64(x2)	# 878
beq_cont.295659:
	ori		x5, x0, 4	# 881
	lw		x6, -16(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x7, -52(x2)	# 881
	sw		x7, 0(x5)	# 881
	jal		x0, beq_cont.295657	# 878
beq.295658:
	ori		x4, x0, 1	# 878
	sw		x1, -64(x2)	# 878
	addi	x2, x2, -68	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 68	# 878
	lw		x1, -64(x2)	# 878
beq_cont.295657:
	ori		x5, x0, 4	# 895
	lw		x6, -16(x2)	# 895
	mul		x5, x6, x5	# 895
	add		x5, x4, x5	# 895
	lw		x5, 0(x5)	# 895
	lw		x7, -24(x2)	# 895
	beq		x5, x7, beq.295661	# 895
	ori		x5, x0, 4	# 897
	lw		x8, -48(x2)	# 897
	mul		x5, x8, x5	# 897
	lw		x9, -8(x2)	# 897
	add		x5, x9, x5	# 897
	sw		x4, 0(x5)	# 897
	lw		x4, -4(x2)	# 898
	add		x5, x8, x4	# 898
	sw		x5, -64(x2)	# 877
	sw		x1, -68(x2)	# 877
	addi	x2, x2, -72	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 72	# 877
	lw		x1, -68(x2)	# 877
	lw		x5, -24(x2)	# 878
	beq		x4, x5, beq.295663	# 878
	ori		x6, x0, 1	# 880
	lw		x27, -20(x2)	# 880
	sw		x4, -68(x2)	# 880
	addi	x4, x6, 0
	sw		x1, -72(x2)	# 880
	addi	x2, x2, -76	# 880
	lw		x31, 0(x27)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 76	# 880
	lw		x1, -72(x2)	# 880
	ori		x5, x0, 4	# 881
	lw		x6, -16(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x7, -68(x2)	# 881
	sw		x7, 0(x5)	# 881
	jal		x0, beq_cont.295662	# 878
beq.295663:
	ori		x4, x0, 1	# 878
	lui		x6, -1	# 878
	ori		x6, x0, -1	# 878
	addi	x5, x6, 0
	sw		x1, -72(x2)	# 878
	addi	x2, x2, -76	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 76	# 878
	lw		x1, -72(x2)	# 878
beq_cont.295662:
	ori		x5, x0, 4	# 895
	lw		x6, -16(x2)	# 895
	mul		x5, x6, x5	# 895
	add		x5, x4, x5	# 895
	lw		x5, 0(x5)	# 895
	lw		x7, -24(x2)	# 895
	beq		x5, x7, beq.295664	# 895
	ori		x5, x0, 4	# 897
	lw		x8, -64(x2)	# 897
	mul		x5, x8, x5	# 897
	lw		x9, -8(x2)	# 897
	add		x5, x9, x5	# 897
	sw		x4, 0(x5)	# 897
	lw		x4, -4(x2)	# 898
	add		x5, x8, x4	# 898
	lw		x27, -20(x2)	# 894
	sw		x5, -72(x2)	# 894
	addi	x4, x6, 0
	sw		x1, -76(x2)	# 894
	addi	x2, x2, -80	# 894
	lw		x31, 0(x27)	# 894
	jalr	x1, x31, 0	# 894
	addi	x2, x2, 80	# 894
	lw		x1, -76(x2)	# 894
	ori		x5, x0, 4	# 895
	lw		x6, -16(x2)	# 895
	mul		x5, x6, x5	# 895
	add		x5, x4, x5	# 895
	lw		x5, 0(x5)	# 895
	lw		x6, -24(x2)	# 895
	beq		x5, x6, beq.295665	# 895
	ori		x5, x0, 4	# 897
	lw		x6, -72(x2)	# 897
	mul		x5, x6, x5	# 897
	lw		x7, -8(x2)	# 897
	add		x5, x7, x5	# 897
	sw		x4, 0(x5)	# 897
	lw		x4, -4(x2)	# 898
	add		x4, x6, x4	# 898
	lw		x27, 0(x2)	# 898
	lw		x31, 0(x27)	# 898
	jalr	x0, x31, 0	# 898
beq.295665:
	jalr	x0, x1, 0	# 895
beq.295664:
	jalr	x0, x1, 0	# 895
beq.295661:
	jalr	x0, x1, 0	# 895
beq.295656:
	jalr	x0, x1, 0	# 895
solver_rect_surface.2684:
	lw		x9, 12(x27)	# 928
	lw		x10, 8(x27)	# 928
	flw		f3, 4(x27)	# 928
	ori		x11, x0, 4	# 928
	mul		x11, x6, x11	# 928
	add		x11, x5, x11	# 928
	flw		f4, 0(x11)	# 928
	feq		x31, f4, f3	# 1
	beq		x31, x0, feq_else.295671	# 1
	ori		x11, x0, 1	# 1
	jal		x0, feq_cont.295670	# 1
feq_else.295671:
	addi	x11, x0, 0	# 1
feq_cont.295670:
	beq		x11, x10, beq.295672	# 928
	addi	x4, x0, 0	# 928
	jalr	x0, x1, 0	# 928
beq.295672:
	lw		x11, 16(x4)	# 421
	lw		x4, 24(x4)	# 373
	fle		x31, f3, f4	# 3
	beq		x31, x0, fle_else.295674	# 3
	addi	x12, x0, 0	# 3
	jal		x0, fle_cont.295673	# 3
fle_else.295674:
	ori		x12, x0, 1	# 3
fle_cont.295673:
	beq		x4, x10, beq.295676	# 204
	beq		x12, x10, beq.295678	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.295677	# 204
beq.295678:
	ori		x4, x0, 1	# 204
beq_cont.295677:
	jal		x0, beq_cont.295675	# 204
beq.295676:
	addi	x4, x12, 0	# 204
beq_cont.295675:
	ori		x12, x0, 4	# 930
	mul		x6, x6, x12	# 930
	add		x6, x11, x6	# 930
	flw		f5, 0(x6)	# 930
	beq		x4, x10, beq.295680	# 219
	jal		x0, beq_cont.295679	# 219
beq.295680:
	fsub	x31, x31, x31	# 4
	fsub	f5, x31, f5	# 4
beq_cont.295679:
	fsub	f0, f5, f0	# 932
	fdiv	f0, f0, f4	# 932
	ori		x4, x0, 4	# 933
	mul		x4, x7, x4	# 933
	add		x4, x5, x4	# 933
	flw		f4, 0(x4)	# 933
	fmul	f4, f0, f4	# 933
	fadd	f1, f4, f1	# 933
	fle		x31, f1, f3	# 5
	beq		x31, x0, fle_else.295682	# 5
	fsub	x31, x31, x31	# 5
	fsub	f1, x31, f1	# 5
	jal		x0, fle_cont.295681	# 5
fle_else.295682:
fle_cont.295681:
	ori		x4, x0, 4	# 933
	mul		x4, x7, x4	# 933
	add		x4, x11, x4	# 933
	flw		f4, 0(x4)	# 933
	fle		x31, f4, f1	# 6
	beq		x31, x0, fle_else.295684	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.295683	# 6
fle_else.295684:
	ori		x4, x0, 1	# 6
fle_cont.295683:
	beq		x4, x10, beq.295685	# 933
	ori		x4, x0, 4	# 934
	mul		x4, x8, x4	# 934
	add		x4, x5, x4	# 934
	flw		f1, 0(x4)	# 934
	fmul	f1, f0, f1	# 934
	fadd	f1, f1, f2	# 934
	fle		x31, f1, f3	# 5
	beq		x31, x0, fle_else.295687	# 5
	fsub	x31, x31, x31	# 5
	fsub	f1, x31, f1	# 5
	jal		x0, fle_cont.295686	# 5
fle_else.295687:
fle_cont.295686:
	ori		x4, x0, 4	# 934
	mul		x4, x8, x4	# 934
	add		x4, x11, x4	# 934
	flw		f2, 0(x4)	# 934
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.295689	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.295688	# 6
fle_else.295689:
	ori		x4, x0, 1	# 6
fle_cont.295688:
	beq		x4, x10, beq.295690	# 934
	ori		x4, x0, 4	# 935
	mul		x4, x10, x4	# 935
	add		x4, x9, x4	# 935
	fsw		f0, 0(x4)	# 935
	ori		x4, x0, 1	# 935
	jalr	x0, x1, 0	# 935
beq.295690:
	addi	x4, x0, 0	# 936
	jalr	x0, x1, 0	# 936
beq.295685:
	addi	x4, x0, 0	# 937
	jalr	x0, x1, 0	# 937
quadratic.2705:
	lw		x5, 12(x27)	# 967
	lw		x6, 8(x27)	# 967
	lw		x7, 4(x27)	# 967
	fmul	f3, f0, f0	# 8
	lw		x8, 16(x4)	# 391
	ori		x9, x0, 4	# 396
	mul		x9, x6, x9	# 396
	add		x8, x8, x9	# 396
	flw		f4, 0(x8)	# 396
	fmul	f3, f3, f4	# 967
	fmul	f4, f1, f1	# 8
	lw		x8, 16(x4)	# 401
	ori		x9, x0, 4	# 406
	mul		x9, x7, x9	# 406
	add		x8, x8, x9	# 406
	flw		f5, 0(x8)	# 406
	fmul	f4, f4, f5	# 967
	fadd	f3, f3, f4	# 967
	fmul	f4, f2, f2	# 8
	lw		x8, 16(x4)	# 411
	ori		x9, x0, 4	# 416
	mul		x9, x5, x9	# 416
	add		x8, x8, x9	# 416
	flw		f5, 0(x8)	# 416
	fmul	f4, f4, f5	# 967
	fadd	f3, f3, f4	# 967
	lw		x8, 12(x4)	# 382
	beq		x8, x6, beq.295691	# 969
	fmul	f4, f1, f2	# 973
	lw		x8, 36(x4)	# 511
	ori		x9, x0, 4	# 516
	mul		x6, x6, x9	# 516
	add		x6, x8, x6	# 516
	flw		f5, 0(x6)	# 516
	fmul	f4, f4, f5	# 973
	fadd	f3, f3, f4	# 972
	fmul	f2, f2, f0	# 974
	lw		x6, 36(x4)	# 521
	ori		x8, x0, 4	# 526
	mul		x7, x7, x8	# 526
	add		x6, x6, x7	# 526
	flw		f4, 0(x6)	# 526
	fmul	f2, f2, f4	# 974
	fadd	f2, f3, f2	# 972
	fmul	f0, f0, f1	# 975
	lw		x4, 36(x4)	# 531
	ori		x6, x0, 4	# 536
	mul		x5, x5, x6	# 536
	add		x4, x4, x5	# 536
	flw		f1, 0(x4)	# 536
	fmul	f0, f0, f1	# 975
	fadd	f0, f2, f0	# 972
	jalr	x0, x1, 0	# 972
beq.295691:
	fsub	f0, f0, f0	# 970
	fadd	f0, f0, f3	# 970
	jalr	x0, x1, 0	# 970
bilinear.2710:
	lw		x5, 12(x27)	# 981
	lw		x6, 8(x27)	# 981
	lw		x7, 4(x27)	# 981
	fmul	f6, f0, f3	# 981
	lw		x8, 16(x4)	# 391
	ori		x9, x0, 4	# 396
	mul		x9, x6, x9	# 396
	add		x8, x8, x9	# 396
	flw		f7, 0(x8)	# 396
	fmul	f6, f6, f7	# 981
	fmul	f7, f1, f4	# 982
	lw		x8, 16(x4)	# 401
	ori		x9, x0, 4	# 406
	mul		x9, x7, x9	# 406
	add		x8, x8, x9	# 406
	flw		f8, 0(x8)	# 406
	fmul	f7, f7, f8	# 982
	fadd	f6, f6, f7	# 981
	fmul	f7, f2, f5	# 983
	lw		x8, 16(x4)	# 411
	ori		x9, x0, 4	# 416
	mul		x9, x5, x9	# 416
	add		x8, x8, x9	# 416
	flw		f8, 0(x8)	# 416
	fmul	f7, f7, f8	# 983
	fadd	f6, f6, f7	# 981
	lw		x8, 12(x4)	# 382
	beq		x8, x6, beq.295692	# 985
	fmul	f7, f2, f4	# 989
	fmul	f8, f1, f5	# 989
	fadd	f7, f7, f8	# 989
	lw		x8, 36(x4)	# 511
	ori		x9, x0, 4	# 516
	mul		x6, x6, x9	# 516
	add		x6, x8, x6	# 516
	flw		f8, 0(x6)	# 516
	fmul	f7, f7, f8	# 989
	fmul	f5, f0, f5	# 990
	fmul	f2, f2, f3	# 990
	fadd	f2, f5, f2	# 990
	lw		x6, 36(x4)	# 521
	ori		x8, x0, 4	# 526
	mul		x7, x7, x8	# 526
	add		x6, x6, x7	# 526
	flw		f5, 0(x6)	# 526
	fmul	f2, f2, f5	# 990
	fadd	f2, f7, f2	# 989
	fmul	f0, f0, f4	# 991
	fmul	f1, f1, f3	# 991
	fadd	f0, f0, f1	# 991
	lw		x4, 36(x4)	# 531
	ori		x6, x0, 4	# 536
	mul		x5, x5, x6	# 536
	add		x4, x4, x5	# 536
	flw		f1, 0(x4)	# 536
	fmul	f0, f0, f1	# 991
	fadd	f0, f2, f0	# 989
	lui		x4, %hi(l.15681)	# 7
	ori		x4, x0, %lo(l.15681)	# 7
	flw		f1, 0(x4)	# 7
	fmul	f0, f0, f1	# 7
	fadd	f0, f6, f0	# 988
	jalr	x0, x1, 0	# 988
beq.295692:
	fsub	f0, f0, f0	# 986
	fadd	f0, f0, f6	# 986
	jalr	x0, x1, 0	# 986
solver_second.2718:
	lw		x6, 32(x27)	# 1006
	lw		x7, 28(x27)	# 1006
	lw		x8, 24(x27)	# 1006
	lw		x9, 20(x27)	# 1006
	lw		x10, 16(x27)	# 1006
	lw		x11, 12(x27)	# 1006
	lw		x12, 8(x27)	# 1006
	flw		f3, 4(x27)	# 1006
	ori		x13, x0, 4	# 1006
	mul		x13, x11, x13	# 1006
	add		x13, x5, x13	# 1006
	flw		f4, 0(x13)	# 1006
	ori		x13, x0, 4	# 1006
	mul		x13, x12, x13	# 1006
	add		x13, x5, x13	# 1006
	flw		f5, 0(x13)	# 1006
	ori		x13, x0, 4	# 1006
	mul		x13, x9, x13	# 1006
	add		x13, x5, x13	# 1006
	flw		f6, 0(x13)	# 1006
	sw		x6, 0(x2)	# 1006
	sw		x10, -4(x2)	# 1006
	sw		x7, -8(x2)	# 1006
	fsw		f2, -16(x2)	# 1006
	fsw		f1, -24(x2)	# 1006
	fsw		f0, -32(x2)	# 1006
	sw		x4, -40(x2)	# 1006
	sw		x8, -44(x2)	# 1006
	sw		x9, -48(x2)	# 1006
	sw		x12, -52(x2)	# 1006
	sw		x5, -56(x2)	# 1006
	sw		x11, -60(x2)	# 1006
	fsw		f3, -64(x2)	# 1006
	addi	x27, x7, 0
	fsub	f2, f2, f2
	fadd	f2, f2, f6
	fsub	f1, f1, f1
	fadd	f1, f1, f5
	fsub	f0, f0, f0
	fadd	f0, f0, f4
	sw		x1, -72(x2)	# 1006
	addi	x2, x2, -76	# 1006
	lw		x31, 0(x27)	# 1006
	jalr	x1, x31, 0	# 1006
	addi	x2, x2, 76	# 1006
	lw		x1, -72(x2)	# 1006
	flw		f1, -64(x2)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.295695	# 1
	ori		x4, x0, 1	# 1
	jal		x0, feq_cont.295694	# 1
feq_else.295695:
	addi	x4, x0, 0	# 1
feq_cont.295694:
	lw		x5, -60(x2)	# 1008
	beq		x4, x5, beq.295696	# 1008
	addi	x4, x0, 0	# 1009
	jalr	x0, x1, 0	# 1009
beq.295696:
	ori		x4, x0, 4	# 1013
	mul		x4, x5, x4	# 1013
	lw		x6, -56(x2)	# 1013
	add		x4, x6, x4	# 1013
	flw		f2, 0(x4)	# 1013
	ori		x4, x0, 4	# 1013
	lw		x7, -52(x2)	# 1013
	mul		x4, x7, x4	# 1013
	add		x4, x6, x4	# 1013
	flw		f3, 0(x4)	# 1013
	ori		x4, x0, 4	# 1013
	lw		x7, -48(x2)	# 1013
	mul		x4, x7, x4	# 1013
	add		x4, x6, x4	# 1013
	flw		f4, 0(x4)	# 1013
	flw		f5, -32(x2)	# 1013
	flw		f6, -24(x2)	# 1013
	flw		f7, -16(x2)	# 1013
	lw		x4, -40(x2)	# 1013
	lw		x27, -44(x2)	# 1013
	fsw		f0, -72(x2)	# 1013
	fsub	f1, f1, f1
	fadd	f1, f1, f3
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	fsub	f3, f3, f3
	fadd	f3, f3, f5
	fsub	f2, f2, f2
	fadd	f2, f2, f4
	fsub	f5, f5, f5
	fadd	f5, f5, f7
	fsub	f4, f4, f4
	fadd	f4, f4, f6
	sw		x1, -80(x2)	# 1013
	addi	x2, x2, -84	# 1013
	lw		x31, 0(x27)	# 1013
	jalr	x1, x31, 0	# 1013
	addi	x2, x2, 84	# 1013
	lw		x1, -80(x2)	# 1013
	flw		f1, -32(x2)	# 1015
	flw		f2, -24(x2)	# 1015
	flw		f3, -16(x2)	# 1015
	lw		x4, -40(x2)	# 1015
	lw		x27, -8(x2)	# 1015
	fsw		f0, -80(x2)	# 1015
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -88(x2)	# 1015
	addi	x2, x2, -92	# 1015
	lw		x31, 0(x27)	# 1015
	jalr	x1, x31, 0	# 1015
	addi	x2, x2, 92	# 1015
	lw		x1, -88(x2)	# 1015
	lw		x4, -40(x2)	# 353
	lw		x5, 4(x4)	# 353
	lw		x6, -4(x2)	# 1016
	beq		x5, x6, beq.295698	# 1016
	jal		x0, beq_cont.295697	# 1016
beq.295698:
	lui		x5, %hi(l.15661)	# 1016
	ori		x5, x0, %lo(l.15661)	# 1016
	flw		f1, 0(x5)	# 1016
	fsub	f0, f0, f1	# 1016
beq_cont.295697:
	flw		f1, -80(x2)	# 8
	fmul	f2, f1, f1	# 8
	flw		f3, -72(x2)	# 1018
	fmul	f0, f3, f0	# 1018
	fsub	f0, f2, f0	# 1018
	flw		f2, -64(x2)	# 2
	fle		x31, f0, f2	# 2
	beq		x31, x0, fle_else.295700	# 2
	addi	x5, x0, 0	# 2
	jal		x0, fle_cont.295699	# 2
fle_else.295700:
	ori		x5, x0, 1	# 2
fle_cont.295699:
	lw		x6, -60(x2)	# 1020
	beq		x5, x6, beq.295701	# 1020
	sw		x1, -88(x2)	# 1021
	addi	x2, x2, -92	# 1021
	jal		x1, min_caml_sqrt	# 1021
	addi	x2, x2, 92	# 1021
	lw		x1, -88(x2)	# 1021
	lw		x4, -40(x2)	# 373
	lw		x4, 24(x4)	# 373
	lw		x5, -60(x2)	# 1022
	beq		x4, x5, beq.295703	# 1022
	jal		x0, beq_cont.295702	# 1022
beq.295703:
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
beq_cont.295702:
	flw		f1, -80(x2)	# 1023
	fsub	f0, f0, f1	# 1023
	flw		f1, -72(x2)	# 1023
	fdiv	f0, f0, f1	# 1023
	ori		x4, x0, 4	# 1023
	mul		x4, x5, x4	# 1023
	lw		x5, 0(x2)	# 1023
	add		x4, x5, x4	# 1023
	fsw		f0, 0(x4)	# 1023
	ori		x4, x0, 1	# 1023
	jalr	x0, x1, 0	# 1023
beq.295701:
	addi	x4, x0, 0	# 1026
	jalr	x0, x1, 0	# 1026
solver.2724:
	lw		x7, 32(x27)	# 1032
	lw		x8, 28(x27)	# 1032
	lw		x9, 24(x27)	# 1032
	lw		x10, 20(x27)	# 1032
	lw		x11, 16(x27)	# 1032
	lw		x12, 12(x27)	# 1032
	lw		x13, 8(x27)	# 1032
	flw		f0, 4(x27)	# 1032
	ori		x14, x0, 4	# 1032
	mul		x4, x4, x14	# 1032
	add		x4, x10, x4	# 1032
	lw		x4, 0(x4)	# 1032
	ori		x10, x0, 4	# 1034
	mul		x10, x12, x10	# 1034
	add		x10, x6, x10	# 1034
	flw		f1, 0(x10)	# 1034
	lw		x10, 20(x4)	# 431
	ori		x14, x0, 4	# 436
	mul		x14, x12, x14	# 436
	add		x10, x10, x14	# 436
	flw		f2, 0(x10)	# 436
	fsub	f1, f1, f2	# 1034
	ori		x10, x0, 4	# 1035
	mul		x10, x13, x10	# 1035
	add		x10, x6, x10	# 1035
	flw		f2, 0(x10)	# 1035
	lw		x10, 20(x4)	# 441
	ori		x14, x0, 4	# 446
	mul		x14, x13, x14	# 446
	add		x10, x10, x14	# 446
	flw		f3, 0(x10)	# 446
	fsub	f2, f2, f3	# 1035
	ori		x10, x0, 4	# 1036
	mul		x10, x11, x10	# 1036
	add		x6, x6, x10	# 1036
	flw		f3, 0(x6)	# 1036
	lw		x6, 20(x4)	# 451
	ori		x10, x0, 4	# 456
	mul		x10, x11, x10	# 456
	add		x6, x6, x10	# 456
	flw		f4, 0(x6)	# 456
	fsub	f3, f3, f4	# 1036
	lw		x6, 4(x4)	# 353
	beq		x6, x13, beq.295704	# 1039
	beq		x6, x11, beq.295705	# 1040
	addi	x27, x7, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	lw		x31, 0(x27)	# 1041
	jalr	x0, x31, 0	# 1041
beq.295705:
	lw		x4, 16(x4)	# 421
	ori		x6, x0, 4	# 292
	mul		x6, x12, x6	# 292
	add		x6, x5, x6	# 292
	flw		f4, 0(x6)	# 292
	ori		x6, x0, 4	# 292
	mul		x6, x12, x6	# 292
	add		x6, x4, x6	# 292
	flw		f5, 0(x6)	# 292
	fmul	f4, f4, f5	# 292
	ori		x6, x0, 4	# 292
	mul		x6, x13, x6	# 292
	add		x6, x5, x6	# 292
	flw		f6, 0(x6)	# 292
	ori		x6, x0, 4	# 292
	mul		x6, x13, x6	# 292
	add		x6, x4, x6	# 292
	flw		f7, 0(x6)	# 292
	fmul	f6, f6, f7	# 292
	fadd	f4, f4, f6	# 292
	ori		x6, x0, 4	# 292
	mul		x6, x11, x6	# 292
	add		x5, x5, x6	# 292
	flw		f6, 0(x5)	# 292
	ori		x5, x0, 4	# 292
	mul		x5, x11, x5	# 292
	add		x4, x4, x5	# 292
	flw		f8, 0(x4)	# 292
	fmul	f6, f6, f8	# 292
	fadd	f4, f4, f6	# 292
	fle		x31, f4, f0	# 2
	beq		x31, x0, fle_else.295707	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.295706	# 2
fle_else.295707:
	ori		x4, x0, 1	# 2
fle_cont.295706:
	beq		x4, x12, beq.295708	# 956
	fmul	f0, f5, f1	# 297
	fmul	f1, f7, f2	# 297
	fadd	f0, f0, f1	# 297
	fmul	f1, f8, f3	# 297
	fadd	f0, f0, f1	# 297
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	fdiv	f0, f0, f4	# 957
	ori		x4, x0, 4	# 957
	mul		x4, x12, x4	# 957
	add		x4, x9, x4	# 957
	fsw		f0, 0(x4)	# 957
	ori		x4, x0, 1	# 958
	jalr	x0, x1, 0	# 958
beq.295708:
	addi	x4, x0, 0	# 959
	jalr	x0, x1, 0	# 959
beq.295704:
	fsw		f1, 0(x2)	# 943
	fsw		f3, -8(x2)	# 943
	fsw		f2, -16(x2)	# 943
	sw		x11, -24(x2)	# 943
	sw		x13, -28(x2)	# 943
	sw		x5, -32(x2)	# 943
	sw		x4, -36(x2)	# 943
	sw		x8, -40(x2)	# 943
	sw		x12, -44(x2)	# 943
	addi	x7, x13, 0
	addi	x6, x12, 0
	addi	x27, x8, 0
	addi	x8, x11, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -48(x2)	# 943
	addi	x2, x2, -52	# 943
	lw		x31, 0(x27)	# 943
	jalr	x1, x31, 0	# 943
	addi	x2, x2, 52	# 943
	lw		x1, -48(x2)	# 943
	lw		x8, -44(x2)	# 943
	beq		x4, x8, beq.295709	# 943
	ori		x4, x0, 1	# 943
	jalr	x0, x1, 0	# 943
beq.295709:
	flw		f0, -16(x2)	# 944
	flw		f1, -8(x2)	# 944
	flw		f2, 0(x2)	# 944
	lw		x4, -36(x2)	# 944
	lw		x5, -32(x2)	# 944
	lw		x6, -28(x2)	# 944
	lw		x7, -24(x2)	# 944
	lw		x27, -40(x2)	# 944
	sw		x1, -48(x2)	# 944
	addi	x2, x2, -52	# 944
	lw		x31, 0(x27)	# 944
	jalr	x1, x31, 0	# 944
	addi	x2, x2, 52	# 944
	lw		x1, -48(x2)	# 944
	lw		x7, -44(x2)	# 944
	beq		x4, x7, beq.295710	# 944
	ori		x4, x0, 2	# 944
	jalr	x0, x1, 0	# 944
beq.295710:
	flw		f0, -8(x2)	# 945
	flw		f1, 0(x2)	# 945
	flw		f2, -16(x2)	# 945
	lw		x4, -36(x2)	# 945
	lw		x5, -32(x2)	# 945
	lw		x6, -24(x2)	# 945
	lw		x8, -28(x2)	# 945
	lw		x27, -40(x2)	# 945
	sw		x1, -48(x2)	# 945
	addi	x2, x2, -52	# 945
	lw		x31, 0(x27)	# 945
	jalr	x1, x31, 0	# 945
	addi	x2, x2, 52	# 945
	lw		x1, -48(x2)	# 945
	lw		x5, -44(x2)	# 945
	beq		x4, x5, beq.295711	# 945
	ori		x4, x0, 3	# 945
	jalr	x0, x1, 0	# 945
beq.295711:
	addi	x4, x0, 0	# 946
	jalr	x0, x1, 0	# 946
solver_rect_fast.2728:
	lw		x7, 28(x27)	# 1064
	lw		x8, 24(x27)	# 1064
	lw		x9, 20(x27)	# 1064
	lw		x10, 16(x27)	# 1064
	lw		x11, 12(x27)	# 1064
	lw		x12, 8(x27)	# 1064
	flw		f3, 4(x27)	# 1064
	ori		x13, x0, 4	# 1064
	mul		x13, x11, x13	# 1064
	add		x13, x6, x13	# 1064
	flw		f4, 0(x13)	# 1064
	fsub	f4, f4, f0	# 1064
	ori		x13, x0, 4	# 1064
	mul		x13, x12, x13	# 1064
	add		x13, x6, x13	# 1064
	flw		f5, 0(x13)	# 1064
	fmul	f4, f4, f5	# 1064
	ori		x13, x0, 4	# 1066
	mul		x13, x12, x13	# 1066
	add		x13, x5, x13	# 1066
	flw		f6, 0(x13)	# 1066
	fmul	f7, f4, f6	# 1066
	fadd	f7, f7, f1	# 1066
	fle		x31, f7, f3	# 5
	beq		x31, x0, fle_else.295713	# 5
	fsub	x31, x31, x31	# 5
	fsub	f7, x31, f7	# 5
	jal		x0, fle_cont.295712	# 5
fle_else.295713:
fle_cont.295712:
	lw		x13, 16(x4)	# 401
	ori		x14, x0, 4	# 406
	mul		x14, x12, x14	# 406
	add		x13, x13, x14	# 406
	flw		f8, 0(x13)	# 406
	fle		x31, f8, f7	# 6
	beq		x31, x0, fle_else.295715	# 6
	addi	x13, x0, 0	# 6
	jal		x0, fle_cont.295714	# 6
fle_else.295715:
	ori		x13, x0, 1	# 6
fle_cont.295714:
	beq		x13, x11, beq.295717	# 1066
	ori		x13, x0, 4	# 1067
	mul		x13, x9, x13	# 1067
	add		x13, x5, x13	# 1067
	flw		f7, 0(x13)	# 1067
	fmul	f7, f4, f7	# 1067
	fadd	f7, f7, f2	# 1067
	fle		x31, f7, f3	# 5
	beq		x31, x0, fle_else.295719	# 5
	fsub	x31, x31, x31	# 5
	fsub	f7, x31, f7	# 5
	jal		x0, fle_cont.295718	# 5
fle_else.295719:
fle_cont.295718:
	lw		x13, 16(x4)	# 411
	ori		x14, x0, 4	# 416
	mul		x14, x9, x14	# 416
	add		x13, x13, x14	# 416
	flw		f8, 0(x13)	# 416
	fle		x31, f8, f7	# 6
	beq		x31, x0, fle_else.295721	# 6
	addi	x13, x0, 0	# 6
	jal		x0, fle_cont.295720	# 6
fle_else.295721:
	ori		x13, x0, 1	# 6
fle_cont.295720:
	beq		x13, x11, beq.295723	# 1067
	feq		x31, f5, f3	# 1
	beq		x31, x0, feq_else.295725	# 1
	ori		x13, x0, 1	# 1
	jal		x0, feq_cont.295724	# 1
feq_else.295725:
	addi	x13, x0, 0	# 1
feq_cont.295724:
	beq		x13, x11, beq.295727	# 1068
	addi	x13, x0, 0	# 1068
	jal		x0, beq_cont.295726	# 1068
beq.295727:
	ori		x13, x0, 1	# 1068
beq_cont.295726:
	jal		x0, beq_cont.295722	# 1067
beq.295723:
	addi	x13, x0, 0	# 1069
beq_cont.295722:
	jal		x0, beq_cont.295716	# 1066
beq.295717:
	addi	x13, x0, 0	# 1070
beq_cont.295716:
	beq		x13, x11, beq.295728	# 1065
	ori		x4, x0, 4	# 1072
	mul		x4, x11, x4	# 1072
	add		x4, x7, x4	# 1072
	fsw		f4, 0(x4)	# 1072
	ori		x4, x0, 1	# 1072
	jalr	x0, x1, 0	# 1072
beq.295728:
	ori		x13, x0, 4	# 1073
	mul		x13, x9, x13	# 1073
	add		x13, x6, x13	# 1073
	flw		f4, 0(x13)	# 1073
	fsub	f4, f4, f1	# 1073
	ori		x13, x0, 4	# 1073
	mul		x10, x10, x13	# 1073
	add		x10, x6, x10	# 1073
	flw		f5, 0(x10)	# 1073
	fmul	f4, f4, f5	# 1073
	ori		x10, x0, 4	# 1075
	mul		x10, x11, x10	# 1075
	add		x10, x5, x10	# 1075
	flw		f7, 0(x10)	# 1075
	fmul	f8, f4, f7	# 1075
	fadd	f8, f8, f0	# 1075
	fle		x31, f8, f3	# 5
	beq		x31, x0, fle_else.295730	# 5
	fsub	x31, x31, x31	# 5
	fsub	f8, x31, f8	# 5
	jal		x0, fle_cont.295729	# 5
fle_else.295730:
fle_cont.295729:
	lw		x10, 16(x4)	# 391
	ori		x13, x0, 4	# 396
	mul		x13, x11, x13	# 396
	add		x10, x10, x13	# 396
	flw		f9, 0(x10)	# 396
	fle		x31, f9, f8	# 6
	beq		x31, x0, fle_else.295732	# 6
	addi	x10, x0, 0	# 6
	jal		x0, fle_cont.295731	# 6
fle_else.295732:
	ori		x10, x0, 1	# 6
fle_cont.295731:
	beq		x10, x11, beq.295734	# 1075
	ori		x10, x0, 4	# 1076
	mul		x10, x9, x10	# 1076
	add		x5, x5, x10	# 1076
	flw		f8, 0(x5)	# 1076
	fmul	f8, f4, f8	# 1076
	fadd	f8, f8, f2	# 1076
	fle		x31, f8, f3	# 5
	beq		x31, x0, fle_else.295736	# 5
	fsub	x31, x31, x31	# 5
	fsub	f8, x31, f8	# 5
	jal		x0, fle_cont.295735	# 5
fle_else.295736:
fle_cont.295735:
	lw		x5, 16(x4)	# 411
	ori		x10, x0, 4	# 416
	mul		x9, x9, x10	# 416
	add		x5, x5, x9	# 416
	flw		f9, 0(x5)	# 416
	fle		x31, f9, f8	# 6
	beq		x31, x0, fle_else.295738	# 6
	addi	x5, x0, 0	# 6
	jal		x0, fle_cont.295737	# 6
fle_else.295738:
	ori		x5, x0, 1	# 6
fle_cont.295737:
	beq		x5, x11, beq.295740	# 1076
	feq		x31, f5, f3	# 1
	beq		x31, x0, feq_else.295742	# 1
	ori		x5, x0, 1	# 1
	jal		x0, feq_cont.295741	# 1
feq_else.295742:
	addi	x5, x0, 0	# 1
feq_cont.295741:
	beq		x5, x11, beq.295744	# 1077
	addi	x5, x0, 0	# 1077
	jal		x0, beq_cont.295743	# 1077
beq.295744:
	ori		x5, x0, 1	# 1077
beq_cont.295743:
	jal		x0, beq_cont.295739	# 1076
beq.295740:
	addi	x5, x0, 0	# 1078
beq_cont.295739:
	jal		x0, beq_cont.295733	# 1075
beq.295734:
	addi	x5, x0, 0	# 1079
beq_cont.295733:
	beq		x5, x11, beq.295745	# 1074
	ori		x4, x0, 4	# 1081
	mul		x4, x11, x4	# 1081
	add		x4, x7, x4	# 1081
	fsw		f4, 0(x4)	# 1081
	ori		x4, x0, 2	# 1081
	jalr	x0, x1, 0	# 1081
beq.295745:
	ori		x5, x0, 4	# 1082
	ori		x9, x0, 4	# 1082
	mul		x5, x5, x9	# 1082
	add		x5, x6, x5	# 1082
	flw		f4, 0(x5)	# 1082
	fsub	f2, f4, f2	# 1082
	ori		x5, x0, 4	# 1082
	mul		x5, x8, x5	# 1082
	add		x5, x6, x5	# 1082
	flw		f4, 0(x5)	# 1082
	fmul	f2, f2, f4	# 1082
	fmul	f5, f2, f7	# 1084
	fadd	f0, f5, f0	# 1084
	fle		x31, f0, f3	# 5
	beq		x31, x0, fle_else.295747	# 5
	fsub	x31, x31, x31	# 5
	fsub	f0, x31, f0	# 5
	jal		x0, fle_cont.295746	# 5
fle_else.295747:
fle_cont.295746:
	lw		x5, 16(x4)	# 391
	ori		x6, x0, 4	# 396
	mul		x6, x11, x6	# 396
	add		x5, x5, x6	# 396
	flw		f5, 0(x5)	# 396
	fle		x31, f5, f0	# 6
	beq		x31, x0, fle_else.295749	# 6
	addi	x5, x0, 0	# 6
	jal		x0, fle_cont.295748	# 6
fle_else.295749:
	ori		x5, x0, 1	# 6
fle_cont.295748:
	beq		x5, x11, beq.295751	# 1084
	fmul	f0, f2, f6	# 1085
	fadd	f0, f0, f1	# 1085
	fle		x31, f0, f3	# 5
	beq		x31, x0, fle_else.295753	# 5
	fsub	x31, x31, x31	# 5
	fsub	f0, x31, f0	# 5
	jal		x0, fle_cont.295752	# 5
fle_else.295753:
fle_cont.295752:
	lw		x4, 16(x4)	# 401
	ori		x5, x0, 4	# 406
	mul		x5, x12, x5	# 406
	add		x4, x4, x5	# 406
	flw		f1, 0(x4)	# 406
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.295755	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.295754	# 6
fle_else.295755:
	ori		x4, x0, 1	# 6
fle_cont.295754:
	beq		x4, x11, beq.295757	# 1085
	feq		x31, f4, f3	# 1
	beq		x31, x0, feq_else.295759	# 1
	ori		x4, x0, 1	# 1
	jal		x0, feq_cont.295758	# 1
feq_else.295759:
	addi	x4, x0, 0	# 1
feq_cont.295758:
	beq		x4, x11, beq.295761	# 1086
	addi	x4, x0, 0	# 1086
	jal		x0, beq_cont.295760	# 1086
beq.295761:
	ori		x4, x0, 1	# 1086
beq_cont.295760:
	jal		x0, beq_cont.295756	# 1085
beq.295757:
	addi	x4, x0, 0	# 1087
beq_cont.295756:
	jal		x0, beq_cont.295750	# 1084
beq.295751:
	addi	x4, x0, 0	# 1088
beq_cont.295750:
	beq		x4, x11, beq.295762	# 1083
	ori		x4, x0, 4	# 1090
	mul		x4, x11, x4	# 1090
	add		x4, x7, x4	# 1090
	fsw		f2, 0(x4)	# 1090
	ori		x4, x0, 3	# 1090
	jalr	x0, x1, 0	# 1090
beq.295762:
	addi	x4, x0, 0	# 1092
	jalr	x0, x1, 0	# 1092
solver_second_fast.2741:
	lw		x6, 28(x27)	# 1107
	lw		x7, 24(x27)	# 1107
	lw		x8, 20(x27)	# 1107
	lw		x9, 16(x27)	# 1107
	lw		x10, 12(x27)	# 1107
	lw		x11, 8(x27)	# 1107
	flw		f3, 4(x27)	# 1107
	ori		x12, x0, 4	# 1107
	mul		x12, x10, x12	# 1107
	add		x12, x5, x12	# 1107
	flw		f4, 0(x12)	# 1107
	feq		x31, f4, f3	# 1
	beq		x31, x0, feq_else.295764	# 1
	ori		x12, x0, 1	# 1
	jal		x0, feq_cont.295763	# 1
feq_else.295764:
	addi	x12, x0, 0	# 1
feq_cont.295763:
	beq		x12, x10, beq.295765	# 1108
	addi	x4, x0, 0	# 1109
	jalr	x0, x1, 0	# 1109
beq.295765:
	ori		x12, x0, 4	# 1111
	mul		x11, x11, x12	# 1111
	add		x11, x5, x11	# 1111
	flw		f5, 0(x11)	# 1111
	fmul	f5, f5, f0	# 1111
	ori		x11, x0, 4	# 1111
	mul		x8, x8, x11	# 1111
	add		x8, x5, x8	# 1111
	flw		f6, 0(x8)	# 1111
	fmul	f6, f6, f1	# 1111
	fadd	f5, f5, f6	# 1111
	ori		x8, x0, 4	# 1111
	mul		x8, x9, x8	# 1111
	add		x8, x5, x8	# 1111
	flw		f6, 0(x8)	# 1111
	fmul	f6, f6, f2	# 1111
	fadd	f5, f5, f6	# 1111
	sw		x6, 0(x2)	# 1112
	sw		x5, -4(x2)	# 1112
	sw		x10, -8(x2)	# 1112
	fsw		f3, -16(x2)	# 1112
	fsw		f4, -24(x2)	# 1112
	fsw		f5, -32(x2)	# 1112
	sw		x9, -40(x2)	# 1112
	sw		x4, -44(x2)	# 1112
	addi	x27, x7, 0
	sw		x1, -48(x2)	# 1112
	addi	x2, x2, -52	# 1112
	lw		x31, 0(x27)	# 1112
	jalr	x1, x31, 0	# 1112
	addi	x2, x2, 52	# 1112
	lw		x1, -48(x2)	# 1112
	lw		x4, -44(x2)	# 353
	lw		x5, 4(x4)	# 353
	lw		x6, -40(x2)	# 1113
	beq		x5, x6, beq.295768	# 1113
	jal		x0, beq_cont.295767	# 1113
beq.295768:
	lui		x5, %hi(l.15661)	# 1113
	ori		x5, x0, %lo(l.15661)	# 1113
	flw		f1, 0(x5)	# 1113
	fsub	f0, f0, f1	# 1113
beq_cont.295767:
	flw		f1, -32(x2)	# 8
	fmul	f2, f1, f1	# 8
	flw		f3, -24(x2)	# 1114
	fmul	f0, f3, f0	# 1114
	fsub	f0, f2, f0	# 1114
	flw		f2, -16(x2)	# 2
	fle		x31, f0, f2	# 2
	beq		x31, x0, fle_else.295770	# 2
	addi	x5, x0, 0	# 2
	jal		x0, fle_cont.295769	# 2
fle_else.295770:
	ori		x5, x0, 1	# 2
fle_cont.295769:
	lw		x6, -8(x2)	# 1115
	beq		x5, x6, beq.295771	# 1115
	lw		x4, 24(x4)	# 373
	beq		x4, x6, beq.295773	# 1116
	addi	x4, x0, 0	# 1117
	sw		x4, -48(x2)	# 1117
	sw		x1, -52(x2)	# 1117
	addi	x2, x2, -56	# 1117
	jal		x1, min_caml_sqrt	# 1117
	addi	x2, x2, 56	# 1117
	lw		x1, -52(x2)	# 1117
	flw		f1, -32(x2)	# 1117
	fadd	f0, f1, f0	# 1117
	ori		x4, x0, 4	# 1117
	ori		x5, x0, 4	# 1117
	mul		x4, x4, x5	# 1117
	lw		x5, -4(x2)	# 1117
	add		x4, x5, x4	# 1117
	flw		f1, 0(x4)	# 1117
	fmul	f0, f0, f1	# 1117
	ori		x4, x0, 4	# 1117
	lw		x5, -48(x2)	# 1117
	mul		x4, x5, x4	# 1117
	lw		x5, 0(x2)	# 1117
	add		x4, x5, x4	# 1117
	fsw		f0, 0(x4)	# 1117
	jal		x0, beq_cont.295772	# 1116
beq.295773:
	addi	x4, x0, 0	# 1119
	sw		x4, -52(x2)	# 1119
	sw		x1, -56(x2)	# 1119
	addi	x2, x2, -60	# 1119
	jal		x1, min_caml_sqrt	# 1119
	addi	x2, x2, 60	# 1119
	lw		x1, -56(x2)	# 1119
	flw		f1, -32(x2)	# 1119
	fsub	f0, f1, f0	# 1119
	ori		x4, x0, 4	# 1119
	ori		x5, x0, 4	# 1119
	mul		x4, x4, x5	# 1119
	lw		x5, -4(x2)	# 1119
	add		x4, x5, x4	# 1119
	flw		f1, 0(x4)	# 1119
	fmul	f0, f0, f1	# 1119
	ori		x4, x0, 4	# 1119
	lw		x5, -52(x2)	# 1119
	mul		x4, x5, x4	# 1119
	lw		x5, 0(x2)	# 1119
	add		x4, x5, x4	# 1119
	fsw		f0, 0(x4)	# 1119
beq_cont.295772:
	ori		x4, x0, 1	# 1120
	jalr	x0, x1, 0	# 1120
beq.295771:
	addi	x4, x0, 0	# 1121
	jalr	x0, x1, 0	# 1121
solver_second_fast2.2758:
	lw		x7, 24(x27)	# 1155
	lw		x8, 20(x27)	# 1155
	lw		x9, 16(x27)	# 1155
	lw		x10, 12(x27)	# 1155
	lw		x11, 8(x27)	# 1155
	flw		f3, 4(x27)	# 1155
	ori		x12, x0, 4	# 1155
	mul		x12, x10, x12	# 1155
	add		x12, x5, x12	# 1155
	flw		f4, 0(x12)	# 1155
	feq		x31, f4, f3	# 1
	beq		x31, x0, feq_else.295775	# 1
	ori		x12, x0, 1	# 1
	jal		x0, feq_cont.295774	# 1
feq_else.295775:
	addi	x12, x0, 0	# 1
feq_cont.295774:
	beq		x12, x10, beq.295776	# 1156
	addi	x4, x0, 0	# 1157
	jalr	x0, x1, 0	# 1157
beq.295776:
	ori		x12, x0, 4	# 1159
	mul		x11, x11, x12	# 1159
	add		x11, x5, x11	# 1159
	flw		f5, 0(x11)	# 1159
	fmul	f0, f5, f0	# 1159
	ori		x11, x0, 4	# 1159
	mul		x8, x8, x11	# 1159
	add		x8, x5, x8	# 1159
	flw		f5, 0(x8)	# 1159
	fmul	f1, f5, f1	# 1159
	fadd	f0, f0, f1	# 1159
	ori		x8, x0, 4	# 1159
	mul		x8, x9, x8	# 1159
	add		x8, x5, x8	# 1159
	flw		f1, 0(x8)	# 1159
	fmul	f1, f1, f2	# 1159
	fadd	f0, f0, f1	# 1159
	ori		x8, x0, 4	# 1160
	mul		x8, x9, x8	# 1160
	add		x6, x6, x8	# 1160
	flw		f1, 0(x6)	# 1160
	fmul	f2, f0, f0	# 8
	fmul	f1, f4, f1	# 1161
	fsub	f1, f2, f1	# 1161
	fle		x31, f1, f3	# 2
	beq		x31, x0, fle_else.295778	# 2
	addi	x6, x0, 0	# 2
	jal		x0, fle_cont.295777	# 2
fle_else.295778:
	ori		x6, x0, 1	# 2
fle_cont.295777:
	beq		x6, x10, beq.295779	# 1162
	lw		x4, 24(x4)	# 373
	beq		x4, x10, beq.295781	# 1163
	addi	x4, x0, 0	# 1164
	sw		x7, 0(x2)	# 1164
	sw		x4, -4(x2)	# 1164
	sw		x5, -8(x2)	# 1164
	fsw		f0, -16(x2)	# 1164
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -24(x2)	# 1164
	addi	x2, x2, -28	# 1164
	jal		x1, min_caml_sqrt	# 1164
	addi	x2, x2, 28	# 1164
	lw		x1, -24(x2)	# 1164
	flw		f1, -16(x2)	# 1164
	fadd	f0, f1, f0	# 1164
	ori		x4, x0, 4	# 1164
	ori		x5, x0, 4	# 1164
	mul		x4, x4, x5	# 1164
	lw		x5, -8(x2)	# 1164
	add		x4, x5, x4	# 1164
	flw		f1, 0(x4)	# 1164
	fmul	f0, f0, f1	# 1164
	ori		x4, x0, 4	# 1164
	lw		x5, -4(x2)	# 1164
	mul		x4, x5, x4	# 1164
	lw		x5, 0(x2)	# 1164
	add		x4, x5, x4	# 1164
	fsw		f0, 0(x4)	# 1164
	jal		x0, beq_cont.295780	# 1163
beq.295781:
	addi	x4, x0, 0	# 1166
	sw		x7, 0(x2)	# 1166
	sw		x4, -24(x2)	# 1166
	sw		x5, -8(x2)	# 1166
	fsw		f0, -16(x2)	# 1166
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -28(x2)	# 1166
	addi	x2, x2, -32	# 1166
	jal		x1, min_caml_sqrt	# 1166
	addi	x2, x2, 32	# 1166
	lw		x1, -28(x2)	# 1166
	flw		f1, -16(x2)	# 1166
	fsub	f0, f1, f0	# 1166
	ori		x4, x0, 4	# 1166
	ori		x5, x0, 4	# 1166
	mul		x4, x4, x5	# 1166
	lw		x5, -8(x2)	# 1166
	add		x4, x5, x4	# 1166
	flw		f1, 0(x4)	# 1166
	fmul	f0, f0, f1	# 1166
	ori		x4, x0, 4	# 1166
	lw		x5, -24(x2)	# 1166
	mul		x4, x5, x4	# 1166
	lw		x5, 0(x2)	# 1166
	add		x4, x5, x4	# 1166
	fsw		f0, 0(x4)	# 1166
beq_cont.295780:
	ori		x4, x0, 1	# 1167
	jalr	x0, x1, 0	# 1167
beq.295779:
	addi	x4, x0, 0	# 1168
	jalr	x0, x1, 0	# 1168
setup_rect_table.2768:
	lw		x6, 16(x27)	# 1195
	lw		x7, 12(x27)	# 1195
	lw		x8, 8(x27)	# 1195
	flw		f0, 4(x27)	# 1195
	ori		x9, x0, 6	# 1195
	sw		x6, 0(x2)	# 1195
	sw		x8, -4(x2)	# 1195
	sw		x5, -8(x2)	# 1195
	fsw		f0, -16(x2)	# 1195
	sw		x4, -24(x2)	# 1195
	sw		x7, -28(x2)	# 1195
	addi	x4, x9, 0
	sw		x1, -32(x2)	# 1195
	addi	x2, x2, -36	# 1195
	jal		x1, min_caml_create_float_array	# 1195
	addi	x2, x2, 36	# 1195
	lw		x1, -32(x2)	# 1195
	ori		x5, x0, 4	# 1197
	lw		x6, -28(x2)	# 1197
	mul		x5, x6, x5	# 1197
	lw		x7, -24(x2)	# 1197
	add		x5, x7, x5	# 1197
	flw		f0, 0(x5)	# 1197
	flw		f1, -16(x2)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.295785	# 1
	ori		x5, x0, 1	# 1
	jal		x0, feq_cont.295784	# 1
feq_else.295785:
	addi	x5, x0, 0	# 1
feq_cont.295784:
	beq		x5, x6, beq.295787	# 1197
	ori		x5, x0, 1	# 1198
	lui		x8, %hi(l.15659)	# 1198
	ori		x8, x0, %lo(l.15659)	# 1198
	flw		f0, 0(x8)	# 1198
	ori		x8, x0, 4	# 1198
	mul		x5, x5, x8	# 1198
	add		x5, x4, x5	# 1198
	fsw		f0, 0(x5)	# 1198
	jal		x0, beq_cont.295786	# 1197
beq.295787:
	addi	x5, x0, 0	# 1201
	lw		x8, -8(x2)	# 373
	lw		x9, 24(x8)	# 373
	addi	x10, x0, 0	# 1201
	ori		x11, x0, 4	# 1201
	mul		x10, x10, x11	# 1201
	add		x10, x7, x10	# 1201
	flw		f0, 0(x10)	# 1201
	lui		x10, %hi(l.15659)	# 3
	ori		x10, x0, %lo(l.15659)	# 3
	flw		f2, 0(x10)	# 3
	fle		x31, f2, f0	# 3
	beq		x31, x0, fle_else.295789	# 3
	addi	x10, x0, 0	# 3
	jal		x0, fle_cont.295788	# 3
fle_else.295789:
	ori		x10, x0, 1	# 3
fle_cont.295788:
	addi	x11, x0, 0	# 204
	beq		x9, x11, beq.295791	# 204
	beq		x10, x11, beq.295793	# 204
	addi	x9, x0, 0	# 204
	jal		x0, beq_cont.295792	# 204
beq.295793:
	ori		x9, x0, 1	# 204
beq_cont.295792:
	jal		x0, beq_cont.295790	# 204
beq.295791:
	addi	x9, x10, 0	# 204
beq_cont.295790:
	lw		x10, 16(x8)	# 391
	addi	x11, x0, 0	# 396
	ori		x12, x0, 4	# 396
	mul		x11, x11, x12	# 396
	add		x10, x10, x11	# 396
	flw		f0, 0(x10)	# 396
	addi	x10, x0, 0	# 219
	beq		x9, x10, beq.295795	# 219
	jal		x0, beq_cont.295794	# 219
beq.295795:
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
beq_cont.295794:
	ori		x9, x0, 4	# 1201
	mul		x5, x5, x9	# 1201
	add		x5, x4, x5	# 1201
	fsw		f0, 0(x5)	# 1201
	ori		x5, x0, 1	# 1203
	lui		x9, %hi(l.15661)	# 1203
	ori		x9, x0, %lo(l.15661)	# 1203
	flw		f0, 0(x9)	# 1203
	addi	x9, x0, 0	# 1203
	ori		x10, x0, 4	# 1203
	mul		x9, x9, x10	# 1203
	add		x9, x7, x9	# 1203
	flw		f2, 0(x9)	# 1203
	fdiv	f0, f0, f2	# 1203
	ori		x9, x0, 4	# 1203
	mul		x5, x5, x9	# 1203
	add		x5, x4, x5	# 1203
	fsw		f0, 0(x5)	# 1203
beq_cont.295786:
	ori		x5, x0, 4	# 1205
	lw		x8, -4(x2)	# 1205
	mul		x5, x8, x5	# 1205
	add		x5, x7, x5	# 1205
	flw		f0, 0(x5)	# 1205
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.295797	# 1
	ori		x5, x0, 1	# 1
	jal		x0, feq_cont.295796	# 1
feq_else.295797:
	addi	x5, x0, 0	# 1
feq_cont.295796:
	beq		x5, x6, beq.295799	# 1205
	ori		x5, x0, 3	# 1206
	lui		x8, %hi(l.15659)	# 1206
	ori		x8, x0, %lo(l.15659)	# 1206
	flw		f0, 0(x8)	# 1206
	ori		x8, x0, 4	# 1206
	mul		x5, x5, x8	# 1206
	add		x5, x4, x5	# 1206
	fsw		f0, 0(x5)	# 1206
	jal		x0, beq_cont.295798	# 1205
beq.295799:
	ori		x5, x0, 2	# 1208
	lw		x8, -8(x2)	# 373
	lw		x9, 24(x8)	# 373
	ori		x10, x0, 1	# 1208
	ori		x11, x0, 4	# 1208
	mul		x10, x10, x11	# 1208
	add		x10, x7, x10	# 1208
	flw		f0, 0(x10)	# 1208
	lui		x10, %hi(l.15659)	# 3
	ori		x10, x0, %lo(l.15659)	# 3
	flw		f2, 0(x10)	# 3
	fle		x31, f2, f0	# 3
	beq		x31, x0, fle_else.295801	# 3
	addi	x10, x0, 0	# 3
	jal		x0, fle_cont.295800	# 3
fle_else.295801:
	ori		x10, x0, 1	# 3
fle_cont.295800:
	addi	x11, x0, 0	# 204
	beq		x9, x11, beq.295803	# 204
	beq		x10, x11, beq.295805	# 204
	addi	x9, x0, 0	# 204
	jal		x0, beq_cont.295804	# 204
beq.295805:
	ori		x9, x0, 1	# 204
beq_cont.295804:
	jal		x0, beq_cont.295802	# 204
beq.295803:
	addi	x9, x10, 0	# 204
beq_cont.295802:
	lw		x10, 16(x8)	# 401
	ori		x11, x0, 1	# 406
	ori		x12, x0, 4	# 406
	mul		x11, x11, x12	# 406
	add		x10, x10, x11	# 406
	flw		f0, 0(x10)	# 406
	addi	x10, x0, 0	# 219
	beq		x9, x10, beq.295807	# 219
	jal		x0, beq_cont.295806	# 219
beq.295807:
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
beq_cont.295806:
	ori		x9, x0, 4	# 1208
	mul		x5, x5, x9	# 1208
	add		x5, x4, x5	# 1208
	fsw		f0, 0(x5)	# 1208
	ori		x5, x0, 3	# 1209
	lui		x9, %hi(l.15661)	# 1209
	ori		x9, x0, %lo(l.15661)	# 1209
	flw		f0, 0(x9)	# 1209
	ori		x9, x0, 1	# 1209
	ori		x10, x0, 4	# 1209
	mul		x9, x9, x10	# 1209
	add		x9, x7, x9	# 1209
	flw		f2, 0(x9)	# 1209
	fdiv	f0, f0, f2	# 1209
	ori		x9, x0, 4	# 1209
	mul		x5, x5, x9	# 1209
	add		x5, x4, x5	# 1209
	fsw		f0, 0(x5)	# 1209
beq_cont.295798:
	ori		x5, x0, 4	# 1211
	lw		x8, 0(x2)	# 1211
	mul		x5, x8, x5	# 1211
	add		x5, x7, x5	# 1211
	flw		f0, 0(x5)	# 1211
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.295809	# 1
	ori		x5, x0, 1	# 1
	jal		x0, feq_cont.295808	# 1
feq_else.295809:
	addi	x5, x0, 0	# 1
feq_cont.295808:
	beq		x5, x6, beq.295811	# 1211
	ori		x5, x0, 5	# 1212
	lui		x6, %hi(l.15659)	# 1212
	ori		x6, x0, %lo(l.15659)	# 1212
	flw		f0, 0(x6)	# 1212
	ori		x6, x0, 4	# 1212
	mul		x5, x5, x6	# 1212
	add		x5, x4, x5	# 1212
	fsw		f0, 0(x5)	# 1212
	jal		x0, beq_cont.295810	# 1211
beq.295811:
	ori		x5, x0, 4	# 1214
	lw		x6, -8(x2)	# 373
	lw		x8, 24(x6)	# 373
	ori		x9, x0, 2	# 1214
	ori		x10, x0, 4	# 1214
	mul		x9, x9, x10	# 1214
	add		x9, x7, x9	# 1214
	flw		f0, 0(x9)	# 1214
	lui		x9, %hi(l.15659)	# 3
	ori		x9, x0, %lo(l.15659)	# 3
	flw		f1, 0(x9)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.295813	# 3
	addi	x9, x0, 0	# 3
	jal		x0, fle_cont.295812	# 3
fle_else.295813:
	ori		x9, x0, 1	# 3
fle_cont.295812:
	addi	x10, x0, 0	# 204
	beq		x8, x10, beq.295815	# 204
	beq		x9, x10, beq.295817	# 204
	addi	x8, x0, 0	# 204
	jal		x0, beq_cont.295816	# 204
beq.295817:
	ori		x8, x0, 1	# 204
beq_cont.295816:
	jal		x0, beq_cont.295814	# 204
beq.295815:
	addi	x8, x9, 0	# 204
beq_cont.295814:
	lw		x6, 16(x6)	# 411
	ori		x9, x0, 2	# 416
	ori		x10, x0, 4	# 416
	mul		x9, x9, x10	# 416
	add		x6, x6, x9	# 416
	flw		f0, 0(x6)	# 416
	addi	x6, x0, 0	# 219
	beq		x8, x6, beq.295819	# 219
	jal		x0, beq_cont.295818	# 219
beq.295819:
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
beq_cont.295818:
	ori		x6, x0, 4	# 1214
	mul		x5, x5, x6	# 1214
	add		x5, x4, x5	# 1214
	fsw		f0, 0(x5)	# 1214
	ori		x5, x0, 5	# 1215
	lui		x6, %hi(l.15661)	# 1215
	ori		x6, x0, %lo(l.15661)	# 1215
	flw		f0, 0(x6)	# 1215
	ori		x6, x0, 2	# 1215
	ori		x8, x0, 4	# 1215
	mul		x6, x6, x8	# 1215
	add		x6, x7, x6	# 1215
	flw		f1, 0(x6)	# 1215
	fdiv	f0, f0, f1	# 1215
	ori		x6, x0, 4	# 1215
	mul		x5, x5, x6	# 1215
	add		x5, x4, x5	# 1215
	fsw		f0, 0(x5)	# 1215
beq_cont.295810:
	jalr	x0, x1, 0	# 1217
setup_surface_table.2771:
	lw		x6, 16(x27)	# 1222
	lw		x7, 12(x27)	# 1222
	lw		x8, 8(x27)	# 1222
	flw		f0, 4(x27)	# 1222
	ori		x9, x0, 4	# 1222
	fsw		f0, 0(x2)	# 1222
	sw		x6, -8(x2)	# 1222
	sw		x8, -12(x2)	# 1222
	sw		x5, -16(x2)	# 1222
	sw		x4, -20(x2)	# 1222
	sw		x7, -24(x2)	# 1222
	addi	x4, x9, 0
	sw		x1, -28(x2)	# 1222
	addi	x2, x2, -32	# 1222
	jal		x1, min_caml_create_float_array	# 1222
	addi	x2, x2, 32	# 1222
	lw		x1, -28(x2)	# 1222
	ori		x5, x0, 4	# 1224
	lw		x6, -24(x2)	# 1224
	mul		x5, x6, x5	# 1224
	lw		x7, -20(x2)	# 1224
	add		x5, x7, x5	# 1224
	flw		f0, 0(x5)	# 1224
	lw		x5, -16(x2)	# 391
	lw		x8, 16(x5)	# 391
	ori		x9, x0, 4	# 396
	mul		x9, x6, x9	# 396
	add		x8, x8, x9	# 396
	flw		f1, 0(x8)	# 396
	fmul	f0, f0, f1	# 1224
	ori		x8, x0, 4	# 1224
	lw		x9, -12(x2)	# 1224
	mul		x8, x9, x8	# 1224
	add		x8, x7, x8	# 1224
	flw		f1, 0(x8)	# 1224
	lw		x8, 16(x5)	# 401
	ori		x10, x0, 4	# 406
	mul		x9, x9, x10	# 406
	add		x8, x8, x9	# 406
	flw		f2, 0(x8)	# 406
	fmul	f1, f1, f2	# 1224
	fadd	f0, f0, f1	# 1224
	ori		x8, x0, 4	# 1224
	lw		x9, -8(x2)	# 1224
	mul		x8, x9, x8	# 1224
	add		x7, x7, x8	# 1224
	flw		f1, 0(x7)	# 1224
	lw		x7, 16(x5)	# 411
	ori		x8, x0, 4	# 416
	mul		x8, x9, x8	# 416
	add		x7, x7, x8	# 416
	flw		f2, 0(x7)	# 416
	fmul	f1, f1, f2	# 1224
	fadd	f0, f0, f1	# 1224
	flw		f1, 0(x2)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.295821	# 2
	addi	x7, x0, 0	# 2
	jal		x0, fle_cont.295820	# 2
fle_else.295821:
	ori		x7, x0, 1	# 2
fle_cont.295820:
	beq		x7, x6, beq.295823	# 1226
	addi	x6, x0, 0	# 1228
	lui		x7, %hi(l.16024)	# 1228
	ori		x7, x0, %lo(l.16024)	# 1228
	flw		f1, 0(x7)	# 1228
	fdiv	f1, f1, f0	# 1228
	ori		x7, x0, 4	# 1228
	mul		x6, x6, x7	# 1228
	add		x6, x4, x6	# 1228
	fsw		f1, 0(x6)	# 1228
	ori		x6, x0, 1	# 1230
	lw		x7, 16(x5)	# 391
	addi	x8, x0, 0	# 396
	ori		x9, x0, 4	# 396
	mul		x8, x8, x9	# 396
	add		x7, x7, x8	# 396
	flw		f1, 0(x7)	# 396
	fdiv	f1, f1, f0	# 1230
	fsub	x31, x31, x31	# 4
	fsub	f1, x31, f1	# 4
	ori		x7, x0, 4	# 1230
	mul		x6, x6, x7	# 1230
	add		x6, x4, x6	# 1230
	fsw		f1, 0(x6)	# 1230
	ori		x6, x0, 2	# 1231
	lw		x7, 16(x5)	# 401
	ori		x8, x0, 1	# 406
	ori		x9, x0, 4	# 406
	mul		x8, x8, x9	# 406
	add		x7, x7, x8	# 406
	flw		f1, 0(x7)	# 406
	fdiv	f1, f1, f0	# 1231
	fsub	x31, x31, x31	# 4
	fsub	f1, x31, f1	# 4
	ori		x7, x0, 4	# 1231
	mul		x6, x6, x7	# 1231
	add		x6, x4, x6	# 1231
	fsw		f1, 0(x6)	# 1231
	ori		x6, x0, 3	# 1232
	lw		x5, 16(x5)	# 411
	ori		x7, x0, 2	# 416
	ori		x8, x0, 4	# 416
	mul		x7, x7, x8	# 416
	add		x5, x5, x7	# 416
	flw		f1, 0(x5)	# 416
	fdiv	f0, f1, f0	# 1232
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x5, x0, 4	# 1232
	mul		x5, x6, x5	# 1232
	add		x5, x4, x5	# 1232
	fsw		f0, 0(x5)	# 1232
	jal		x0, beq_cont.295822	# 1226
beq.295823:
	addi	x5, x0, 0	# 1234
	lui		x6, %hi(l.15659)	# 1234
	ori		x6, x0, %lo(l.15659)	# 1234
	flw		f0, 0(x6)	# 1234
	ori		x6, x0, 4	# 1234
	mul		x5, x5, x6	# 1234
	add		x5, x4, x5	# 1234
	fsw		f0, 0(x5)	# 1234
beq_cont.295822:
	jalr	x0, x1, 0	# 1235
setup_second_table.2774:
	lw		x6, 24(x27)	# 1241
	lw		x7, 20(x27)	# 1241
	lw		x8, 16(x27)	# 1241
	lw		x9, 12(x27)	# 1241
	lw		x10, 8(x27)	# 1241
	flw		f0, 4(x27)	# 1241
	fsw		f0, 0(x2)	# 1241
	sw		x5, -8(x2)	# 1241
	sw		x6, -12(x2)	# 1241
	sw		x8, -16(x2)	# 1241
	sw		x10, -20(x2)	# 1241
	sw		x4, -24(x2)	# 1241
	sw		x9, -28(x2)	# 1241
	addi	x4, x7, 0
	sw		x1, -32(x2)	# 1241
	addi	x2, x2, -36	# 1241
	jal		x1, min_caml_create_float_array	# 1241
	addi	x2, x2, 36	# 1241
	lw		x1, -32(x2)	# 1241
	ori		x5, x0, 4	# 1243
	lw		x6, -28(x2)	# 1243
	mul		x5, x6, x5	# 1243
	lw		x7, -24(x2)	# 1243
	add		x5, x7, x5	# 1243
	flw		f0, 0(x5)	# 1243
	ori		x5, x0, 4	# 1243
	lw		x8, -20(x2)	# 1243
	mul		x5, x8, x5	# 1243
	add		x5, x7, x5	# 1243
	flw		f1, 0(x5)	# 1243
	ori		x5, x0, 4	# 1243
	lw		x9, -16(x2)	# 1243
	mul		x5, x9, x5	# 1243
	add		x5, x7, x5	# 1243
	flw		f2, 0(x5)	# 1243
	lw		x5, -8(x2)	# 1243
	lw		x27, -12(x2)	# 1243
	sw		x4, -32(x2)	# 1243
	addi	x4, x5, 0
	sw		x1, -36(x2)	# 1243
	addi	x2, x2, -40	# 1243
	lw		x31, 0(x27)	# 1243
	jalr	x1, x31, 0	# 1243
	addi	x2, x2, 40	# 1243
	lw		x1, -36(x2)	# 1243
	ori		x4, x0, 4	# 1244
	lw		x5, -28(x2)	# 1244
	mul		x4, x5, x4	# 1244
	lw		x6, -24(x2)	# 1244
	add		x4, x6, x4	# 1244
	flw		f1, 0(x4)	# 1244
	lw		x4, -8(x2)	# 391
	lw		x7, 16(x4)	# 391
	ori		x8, x0, 4	# 396
	mul		x8, x5, x8	# 396
	add		x7, x7, x8	# 396
	flw		f2, 0(x7)	# 396
	fmul	f1, f1, f2	# 1244
	fsub	x31, x31, x31	# 4
	fsub	f1, x31, f1	# 4
	ori		x7, x0, 4	# 1245
	lw		x8, -20(x2)	# 1245
	mul		x7, x8, x7	# 1245
	add		x7, x6, x7	# 1245
	flw		f2, 0(x7)	# 1245
	lw		x7, 16(x4)	# 401
	ori		x9, x0, 4	# 406
	mul		x8, x8, x9	# 406
	add		x7, x7, x8	# 406
	flw		f3, 0(x7)	# 406
	fmul	f2, f2, f3	# 1245
	fsub	x31, x31, x31	# 4
	fsub	f2, x31, f2	# 4
	ori		x7, x0, 4	# 1246
	lw		x8, -16(x2)	# 1246
	mul		x7, x8, x7	# 1246
	add		x7, x6, x7	# 1246
	flw		f3, 0(x7)	# 1246
	lw		x7, 16(x4)	# 411
	ori		x9, x0, 4	# 416
	mul		x8, x8, x9	# 416
	add		x7, x7, x8	# 416
	flw		f4, 0(x7)	# 416
	fmul	f3, f3, f4	# 1246
	fsub	x31, x31, x31	# 4
	fsub	f3, x31, f3	# 4
	ori		x7, x0, 4	# 1248
	mul		x7, x5, x7	# 1248
	lw		x8, -32(x2)	# 1248
	add		x7, x8, x7	# 1248
	fsw		f0, 0(x7)	# 1248
	lw		x7, 12(x4)	# 382
	beq		x7, x5, beq.295825	# 1252
	ori		x7, x0, 1	# 1253
	ori		x9, x0, 2	# 1253
	ori		x10, x0, 4	# 1253
	mul		x9, x9, x10	# 1253
	add		x9, x6, x9	# 1253
	flw		f4, 0(x9)	# 1253
	lw		x9, 36(x4)	# 521
	ori		x10, x0, 1	# 526
	ori		x11, x0, 4	# 526
	mul		x10, x10, x11	# 526
	add		x9, x9, x10	# 526
	flw		f5, 0(x9)	# 526
	fmul	f4, f4, f5	# 1253
	ori		x9, x0, 1	# 1253
	ori		x10, x0, 4	# 1253
	mul		x9, x9, x10	# 1253
	add		x9, x6, x9	# 1253
	flw		f5, 0(x9)	# 1253
	lw		x9, 36(x4)	# 531
	ori		x10, x0, 2	# 536
	ori		x11, x0, 4	# 536
	mul		x10, x10, x11	# 536
	add		x9, x9, x10	# 536
	flw		f6, 0(x9)	# 536
	fmul	f5, f5, f6	# 1253
	fadd	f4, f4, f5	# 1253
	lui		x9, %hi(l.15681)	# 7
	ori		x9, x0, %lo(l.15681)	# 7
	flw		f5, 0(x9)	# 7
	fmul	f4, f4, f5	# 7
	fsub	f1, f1, f4	# 1253
	ori		x9, x0, 4	# 1253
	mul		x7, x7, x9	# 1253
	add		x7, x8, x7	# 1253
	fsw		f1, 0(x7)	# 1253
	ori		x7, x0, 2	# 1254
	ori		x9, x0, 2	# 1254
	ori		x10, x0, 4	# 1254
	mul		x9, x9, x10	# 1254
	add		x9, x6, x9	# 1254
	flw		f1, 0(x9)	# 1254
	lw		x9, 36(x4)	# 511
	addi	x10, x0, 0	# 516
	ori		x11, x0, 4	# 516
	mul		x10, x10, x11	# 516
	add		x9, x9, x10	# 516
	flw		f4, 0(x9)	# 516
	fmul	f1, f1, f4	# 1254
	addi	x9, x0, 0	# 1254
	ori		x10, x0, 4	# 1254
	mul		x9, x9, x10	# 1254
	add		x9, x6, x9	# 1254
	flw		f4, 0(x9)	# 1254
	lw		x9, 36(x4)	# 531
	ori		x10, x0, 2	# 536
	ori		x11, x0, 4	# 536
	mul		x10, x10, x11	# 536
	add		x9, x9, x10	# 536
	flw		f5, 0(x9)	# 536
	fmul	f4, f4, f5	# 1254
	fadd	f1, f1, f4	# 1254
	lui		x9, %hi(l.15681)	# 7
	ori		x9, x0, %lo(l.15681)	# 7
	flw		f4, 0(x9)	# 7
	fmul	f1, f1, f4	# 7
	fsub	f1, f2, f1	# 1254
	ori		x9, x0, 4	# 1254
	mul		x7, x7, x9	# 1254
	add		x7, x8, x7	# 1254
	fsw		f1, 0(x7)	# 1254
	ori		x7, x0, 3	# 1255
	ori		x9, x0, 1	# 1255
	ori		x10, x0, 4	# 1255
	mul		x9, x9, x10	# 1255
	add		x9, x6, x9	# 1255
	flw		f1, 0(x9)	# 1255
	lw		x9, 36(x4)	# 511
	addi	x10, x0, 0	# 516
	ori		x11, x0, 4	# 516
	mul		x10, x10, x11	# 516
	add		x9, x9, x10	# 516
	flw		f2, 0(x9)	# 516
	fmul	f1, f1, f2	# 1255
	addi	x9, x0, 0	# 1255
	ori		x10, x0, 4	# 1255
	mul		x9, x9, x10	# 1255
	add		x6, x6, x9	# 1255
	flw		f2, 0(x6)	# 1255
	lw		x4, 36(x4)	# 521
	ori		x6, x0, 1	# 526
	ori		x9, x0, 4	# 526
	mul		x6, x6, x9	# 526
	add		x4, x4, x6	# 526
	flw		f4, 0(x4)	# 526
	fmul	f2, f2, f4	# 1255
	fadd	f1, f1, f2	# 1255
	lui		x4, %hi(l.15681)	# 7
	ori		x4, x0, %lo(l.15681)	# 7
	flw		f2, 0(x4)	# 7
	fmul	f1, f1, f2	# 7
	fsub	f1, f3, f1	# 1255
	ori		x4, x0, 4	# 1255
	mul		x4, x7, x4	# 1255
	add		x4, x8, x4	# 1255
	fsw		f1, 0(x4)	# 1255
	jal		x0, beq_cont.295824	# 1252
beq.295825:
	ori		x4, x0, 1	# 1257
	ori		x6, x0, 4	# 1257
	mul		x4, x4, x6	# 1257
	add		x4, x8, x4	# 1257
	fsw		f1, 0(x4)	# 1257
	ori		x4, x0, 2	# 1258
	ori		x6, x0, 4	# 1258
	mul		x4, x4, x6	# 1258
	add		x4, x8, x4	# 1258
	fsw		f2, 0(x4)	# 1258
	ori		x4, x0, 3	# 1259
	ori		x6, x0, 4	# 1259
	mul		x4, x4, x6	# 1259
	add		x4, x8, x4	# 1259
	fsw		f3, 0(x4)	# 1259
beq_cont.295824:
	flw		f1, 0(x2)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.295827	# 1
	ori		x4, x0, 1	# 1
	jal		x0, feq_cont.295826	# 1
feq_else.295827:
	addi	x4, x0, 0	# 1
feq_cont.295826:
	beq		x4, x5, beq.295829	# 1261
	jal		x0, beq_cont.295828	# 1261
beq.295829:
	ori		x4, x0, 4	# 1262
	lui		x5, %hi(l.15661)	# 1262
	ori		x5, x0, %lo(l.15661)	# 1262
	flw		f1, 0(x5)	# 1262
	fdiv	f0, f1, f0	# 1262
	ori		x5, x0, 4	# 1262
	mul		x4, x4, x5	# 1262
	add		x4, x8, x4	# 1262
	fsw		f0, 0(x4)	# 1262
beq_cont.295828:
	addi	x4, x8, 0	# 1264
	jalr	x0, x1, 0	# 1264
iter_setup_dirvec_constants.2777:
	lw		x6, 24(x27)	# 1270
	lw		x7, 20(x27)	# 1270
	lw		x8, 16(x27)	# 1270
	lw		x9, 12(x27)	# 1270
	lw		x10, 8(x27)	# 1270
	lw		x11, 4(x27)	# 1270
	ble		x10, x5, ble.295830	# 1270
	jalr	x0, x1, 0	# 1283
ble.295830:
	ori		x12, x0, 4	# 1271
	mul		x12, x5, x12	# 1271
	add		x12, x9, x12	# 1271
	lw		x12, 0(x12)	# 1271
	lw		x13, 4(x4)	# 645
	lw		x14, 0(x4)	# 639
	lw		x15, 4(x12)	# 353
	sw		x27, 0(x2)	# 1275
	sw		x7, -4(x2)	# 1275
	sw		x6, -8(x2)	# 1275
	sw		x8, -12(x2)	# 1275
	sw		x4, -16(x2)	# 1275
	sw		x9, -20(x2)	# 1275
	sw		x10, -24(x2)	# 1275
	sw		x11, -28(x2)	# 1275
	beq		x15, x11, beq.295833	# 1275
	ori		x16, x0, 2	# 1277
	beq		x15, x16, beq.295835	# 1277
	sw		x13, -32(x2)	# 1280
	sw		x5, -36(x2)	# 1280
	addi	x5, x12, 0
	addi	x4, x14, 0
	addi	x27, x7, 0
	sw		x1, -40(x2)	# 1280
	addi	x2, x2, -44	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 44	# 1280
	lw		x1, -40(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -36(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -32(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.295834	# 1277
beq.295835:
	sw		x13, -32(x2)	# 1278
	sw		x5, -36(x2)	# 1278
	addi	x5, x12, 0
	addi	x4, x14, 0
	addi	x27, x6, 0
	sw		x1, -40(x2)	# 1278
	addi	x2, x2, -44	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 44	# 1278
	lw		x1, -40(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -36(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -32(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.295834:
	jal		x0, beq_cont.295832	# 1275
beq.295833:
	sw		x13, -32(x2)	# 1276
	sw		x5, -36(x2)	# 1276
	addi	x5, x12, 0
	addi	x4, x14, 0
	addi	x27, x8, 0
	sw		x1, -40(x2)	# 1276
	addi	x2, x2, -44	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 44	# 1276
	lw		x1, -40(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -36(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -32(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.295832:
	lw		x4, -28(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -24(x2)	# 1270
	ble		x6, x5, ble.295836	# 1270
	jalr	x0, x1, 0	# 1283
ble.295836:
	ori		x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	lw		x8, -20(x2)	# 1271
	add		x7, x8, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x9, -16(x2)	# 645
	lw		x10, 4(x9)	# 645
	lw		x11, 0(x9)	# 639
	lw		x12, 4(x7)	# 353
	beq		x12, x4, beq.295839	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.295841	# 1277
	lw		x27, -4(x2)	# 1280
	sw		x10, -40(x2)	# 1280
	sw		x5, -44(x2)	# 1280
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -48(x2)	# 1280
	addi	x2, x2, -52	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 52	# 1280
	lw		x1, -48(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -44(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -40(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.295840	# 1277
beq.295841:
	lw		x27, -8(x2)	# 1278
	sw		x10, -40(x2)	# 1278
	sw		x5, -44(x2)	# 1278
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -48(x2)	# 1278
	addi	x2, x2, -52	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 52	# 1278
	lw		x1, -48(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -44(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -40(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.295840:
	jal		x0, beq_cont.295838	# 1275
beq.295839:
	lw		x27, -12(x2)	# 1276
	sw		x10, -40(x2)	# 1276
	sw		x5, -44(x2)	# 1276
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -48(x2)	# 1276
	addi	x2, x2, -52	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 52	# 1276
	lw		x1, -48(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -44(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -40(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.295838:
	lw		x4, -28(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -24(x2)	# 1270
	ble		x6, x5, ble.295842	# 1270
	jalr	x0, x1, 0	# 1283
ble.295842:
	ori		x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	lw		x8, -20(x2)	# 1271
	add		x7, x8, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x9, -16(x2)	# 645
	lw		x10, 4(x9)	# 645
	lw		x11, 0(x9)	# 639
	lw		x12, 4(x7)	# 353
	beq		x12, x4, beq.295845	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.295847	# 1277
	lw		x27, -4(x2)	# 1280
	sw		x10, -48(x2)	# 1280
	sw		x5, -52(x2)	# 1280
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -56(x2)	# 1280
	addi	x2, x2, -60	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 60	# 1280
	lw		x1, -56(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -52(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -48(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.295846	# 1277
beq.295847:
	lw		x27, -8(x2)	# 1278
	sw		x10, -48(x2)	# 1278
	sw		x5, -52(x2)	# 1278
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -56(x2)	# 1278
	addi	x2, x2, -60	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 60	# 1278
	lw		x1, -56(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -52(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -48(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.295846:
	jal		x0, beq_cont.295844	# 1275
beq.295845:
	lw		x27, -12(x2)	# 1276
	sw		x10, -48(x2)	# 1276
	sw		x5, -52(x2)	# 1276
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -56(x2)	# 1276
	addi	x2, x2, -60	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 60	# 1276
	lw		x1, -56(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -52(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -48(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.295844:
	lw		x4, -28(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -24(x2)	# 1270
	ble		x6, x5, ble.295848	# 1270
	jalr	x0, x1, 0	# 1283
ble.295848:
	ori		x6, x0, 4	# 1271
	mul		x6, x5, x6	# 1271
	lw		x7, -20(x2)	# 1271
	add		x6, x7, x6	# 1271
	lw		x6, 0(x6)	# 1271
	lw		x7, -16(x2)	# 645
	lw		x8, 4(x7)	# 645
	lw		x9, 0(x7)	# 639
	lw		x10, 4(x6)	# 353
	beq		x10, x4, beq.295851	# 1275
	ori		x11, x0, 2	# 1277
	beq		x10, x11, beq.295853	# 1277
	lw		x27, -4(x2)	# 1280
	sw		x8, -56(x2)	# 1280
	sw		x5, -60(x2)	# 1280
	addi	x5, x6, 0
	addi	x4, x9, 0
	sw		x1, -64(x2)	# 1280
	addi	x2, x2, -68	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 68	# 1280
	lw		x1, -64(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -60(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -56(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.295852	# 1277
beq.295853:
	lw		x27, -8(x2)	# 1278
	sw		x8, -56(x2)	# 1278
	sw		x5, -60(x2)	# 1278
	addi	x5, x6, 0
	addi	x4, x9, 0
	sw		x1, -64(x2)	# 1278
	addi	x2, x2, -68	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 68	# 1278
	lw		x1, -64(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -60(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -56(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.295852:
	jal		x0, beq_cont.295850	# 1275
beq.295851:
	lw		x27, -12(x2)	# 1276
	sw		x8, -56(x2)	# 1276
	sw		x5, -60(x2)	# 1276
	addi	x5, x6, 0
	addi	x4, x9, 0
	sw		x1, -64(x2)	# 1276
	addi	x2, x2, -68	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 68	# 1276
	lw		x1, -64(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -60(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -56(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.295850:
	lw		x4, -28(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x4, -16(x2)	# 1282
	lw		x27, 0(x2)	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x0, x31, 0	# 1282
setup_startp_constants.2782:
	lw		x6, 20(x27)	# 1295
	lw		x7, 16(x27)	# 1295
	lw		x8, 12(x27)	# 1295
	lw		x9, 8(x27)	# 1295
	lw		x10, 4(x27)	# 1295
	ble		x9, x5, ble.295854	# 1295
	jalr	x0, x1, 0	# 1310
ble.295854:
	ori		x11, x0, 4	# 1296
	mul		x11, x5, x11	# 1296
	add		x7, x7, x11	# 1296
	lw		x7, 0(x7)	# 1296
	lw		x11, 40(x7)	# 548
	lw		x12, 4(x7)	# 353
	ori		x13, x0, 4	# 1299
	mul		x13, x9, x13	# 1299
	add		x13, x4, x13	# 1299
	flw		f0, 0(x13)	# 1299
	lw		x13, 20(x7)	# 431
	ori		x14, x0, 4	# 436
	mul		x14, x9, x14	# 436
	add		x13, x13, x14	# 436
	flw		f1, 0(x13)	# 436
	fsub	f0, f0, f1	# 1299
	ori		x13, x0, 4	# 1299
	mul		x9, x9, x13	# 1299
	add		x9, x11, x9	# 1299
	fsw		f0, 0(x9)	# 1299
	ori		x9, x0, 4	# 1300
	mul		x9, x10, x9	# 1300
	add		x9, x4, x9	# 1300
	flw		f0, 0(x9)	# 1300
	lw		x9, 20(x7)	# 441
	ori		x13, x0, 4	# 446
	mul		x13, x10, x13	# 446
	add		x9, x9, x13	# 446
	flw		f1, 0(x9)	# 446
	fsub	f0, f0, f1	# 1300
	ori		x9, x0, 4	# 1300
	mul		x9, x10, x9	# 1300
	add		x9, x11, x9	# 1300
	fsw		f0, 0(x9)	# 1300
	ori		x9, x0, 4	# 1301
	mul		x9, x8, x9	# 1301
	add		x9, x4, x9	# 1301
	flw		f0, 0(x9)	# 1301
	lw		x9, 20(x7)	# 451
	ori		x13, x0, 4	# 456
	mul		x13, x8, x13	# 456
	add		x9, x9, x13	# 456
	flw		f1, 0(x9)	# 456
	fsub	f0, f0, f1	# 1301
	ori		x9, x0, 4	# 1301
	mul		x9, x8, x9	# 1301
	add		x9, x11, x9	# 1301
	fsw		f0, 0(x9)	# 1301
	sw		x4, 0(x2)	# 1302
	sw		x27, -4(x2)	# 1302
	sw		x10, -8(x2)	# 1302
	sw		x5, -12(x2)	# 1302
	beq		x12, x8, beq.295857	# 1302
	ori		x8, x0, 2	# 1305
	ble		x12, x8, ble.295859	# 1305
	addi	x8, x0, 0	# 1306
	ori		x9, x0, 4	# 1306
	mul		x8, x8, x9	# 1306
	add		x8, x11, x8	# 1306
	flw		f0, 0(x8)	# 1306
	ori		x8, x0, 1	# 1306
	ori		x9, x0, 4	# 1306
	mul		x8, x8, x9	# 1306
	add		x8, x11, x8	# 1306
	flw		f1, 0(x8)	# 1306
	ori		x8, x0, 2	# 1306
	ori		x9, x0, 4	# 1306
	mul		x8, x8, x9	# 1306
	add		x8, x11, x8	# 1306
	flw		f2, 0(x8)	# 1306
	sw		x11, -16(x2)	# 1306
	sw		x12, -20(x2)	# 1306
	addi	x4, x7, 0
	addi	x27, x6, 0
	sw		x1, -24(x2)	# 1306
	addi	x2, x2, -28	# 1306
	lw		x31, 0(x27)	# 1306
	jalr	x1, x31, 0	# 1306
	addi	x2, x2, 28	# 1306
	lw		x1, -24(x2)	# 1306
	ori		x4, x0, 3	# 1307
	ori		x5, x0, 3	# 1307
	lw		x6, -20(x2)	# 1307
	beq		x6, x5, beq.295861	# 1307
	jal		x0, beq_cont.295860	# 1307
beq.295861:
	lui		x5, %hi(l.15661)	# 1307
	ori		x5, x0, %lo(l.15661)	# 1307
	flw		f1, 0(x5)	# 1307
	fsub	f0, f0, f1	# 1307
beq_cont.295860:
	ori		x5, x0, 4	# 1307
	mul		x4, x4, x5	# 1307
	lw		x5, -16(x2)	# 1307
	add		x4, x5, x4	# 1307
	fsw		f0, 0(x4)	# 1307
	jal		x0, ble_cont.295858	# 1305
ble.295859:
ble_cont.295858:
	jal		x0, beq_cont.295856	# 1302
beq.295857:
	ori		x6, x0, 3	# 1303
	lw		x7, 16(x7)	# 421
	addi	x8, x0, 0	# 1304
	ori		x9, x0, 4	# 1304
	mul		x8, x8, x9	# 1304
	add		x8, x11, x8	# 1304
	flw		f0, 0(x8)	# 1304
	ori		x8, x0, 1	# 1304
	ori		x9, x0, 4	# 1304
	mul		x8, x8, x9	# 1304
	add		x8, x11, x8	# 1304
	flw		f1, 0(x8)	# 1304
	ori		x8, x0, 2	# 1304
	ori		x9, x0, 4	# 1304
	mul		x8, x8, x9	# 1304
	add		x8, x11, x8	# 1304
	flw		f2, 0(x8)	# 1304
	addi	x8, x0, 0	# 297
	ori		x9, x0, 4	# 297
	mul		x8, x8, x9	# 297
	add		x8, x7, x8	# 297
	flw		f3, 0(x8)	# 297
	fmul	f0, f3, f0	# 297
	ori		x8, x0, 1	# 297
	ori		x9, x0, 4	# 297
	mul		x8, x8, x9	# 297
	add		x8, x7, x8	# 297
	flw		f3, 0(x8)	# 297
	fmul	f1, f3, f1	# 297
	fadd	f0, f0, f1	# 297
	ori		x8, x0, 2	# 297
	ori		x9, x0, 4	# 297
	mul		x8, x8, x9	# 297
	add		x7, x7, x8	# 297
	flw		f1, 0(x7)	# 297
	fmul	f1, f1, f2	# 297
	fadd	f0, f0, f1	# 297
	ori		x7, x0, 4	# 1303
	mul		x6, x6, x7	# 1303
	add		x6, x11, x6	# 1303
	fsw		f0, 0(x6)	# 1303
beq_cont.295856:
	lw		x4, -8(x2)	# 1309
	lw		x5, -12(x2)	# 1309
	sub		x5, x5, x4	# 1309
	lw		x4, 0(x2)	# 1309
	lw		x27, -4(x2)	# 1309
	lw		x31, 0(x27)	# 1309
	jalr	x0, x31, 0	# 1309
is_outside.2802:
	lw		x5, 24(x27)	# 431
	lw		x6, 20(x27)	# 431
	lw		x7, 16(x27)	# 431
	lw		x8, 12(x27)	# 431
	lw		x9, 8(x27)	# 431
	flw		f3, 4(x27)	# 431
	lw		x10, 20(x4)	# 431
	ori		x11, x0, 4	# 436
	mul		x11, x8, x11	# 436
	add		x10, x10, x11	# 436
	flw		f4, 0(x10)	# 436
	fsub	f0, f0, f4	# 1350
	lw		x10, 20(x4)	# 441
	ori		x11, x0, 4	# 446
	mul		x11, x9, x11	# 446
	add		x10, x10, x11	# 446
	flw		f4, 0(x10)	# 446
	fsub	f1, f1, f4	# 1351
	lw		x10, 20(x4)	# 451
	ori		x11, x0, 4	# 456
	mul		x11, x6, x11	# 456
	add		x10, x10, x11	# 456
	flw		f4, 0(x10)	# 456
	fsub	f2, f2, f4	# 1352
	lw		x10, 4(x4)	# 353
	beq		x10, x9, beq.295862	# 1354
	beq		x10, x6, beq.295863	# 1356
	sw		x8, 0(x2)	# 1343
	fsw		f3, -8(x2)	# 1343
	sw		x7, -16(x2)	# 1343
	sw		x4, -20(x2)	# 1343
	addi	x27, x5, 0
	sw		x1, -24(x2)	# 1343
	addi	x2, x2, -28	# 1343
	lw		x31, 0(x27)	# 1343
	jalr	x1, x31, 0	# 1343
	addi	x2, x2, 28	# 1343
	lw		x1, -24(x2)	# 1343
	lw		x4, -20(x2)	# 353
	lw		x5, 4(x4)	# 353
	lw		x6, -16(x2)	# 1344
	beq		x5, x6, beq.295866	# 1344
	jal		x0, beq_cont.295865	# 1344
beq.295866:
	lui		x5, %hi(l.15661)	# 1344
	ori		x5, x0, %lo(l.15661)	# 1344
	flw		f1, 0(x5)	# 1344
	fsub	f0, f0, f1	# 1344
beq_cont.295865:
	lw		x4, 24(x4)	# 373
	flw		f1, -8(x2)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.295868	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.295867	# 3
fle_else.295868:
	ori		x5, x0, 1	# 3
fle_cont.295867:
	lw		x6, 0(x2)	# 204
	beq		x4, x6, beq.295870	# 204
	beq		x5, x6, beq.295872	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.295871	# 204
beq.295872:
	ori		x4, x0, 1	# 204
beq_cont.295871:
	jal		x0, beq_cont.295869	# 204
beq.295870:
	addi	x4, x5, 0	# 204
beq_cont.295869:
	beq		x4, x6, beq.295873	# 1345
	addi	x4, x0, 0	# 1345
	jalr	x0, x1, 0	# 1345
beq.295873:
	ori		x4, x0, 1	# 1345
	jalr	x0, x1, 0	# 1345
beq.295863:
	lw		x5, 16(x4)	# 421
	ori		x7, x0, 4	# 297
	mul		x7, x8, x7	# 297
	add		x7, x5, x7	# 297
	flw		f4, 0(x7)	# 297
	fmul	f0, f4, f0	# 297
	ori		x7, x0, 4	# 297
	mul		x7, x9, x7	# 297
	add		x7, x5, x7	# 297
	flw		f4, 0(x7)	# 297
	fmul	f1, f4, f1	# 297
	fadd	f0, f0, f1	# 297
	ori		x7, x0, 4	# 297
	mul		x6, x6, x7	# 297
	add		x5, x5, x6	# 297
	flw		f1, 0(x5)	# 297
	fmul	f1, f1, f2	# 297
	fadd	f0, f0, f1	# 297
	lw		x4, 24(x4)	# 373
	fle		x31, f3, f0	# 3
	beq		x31, x0, fle_else.295875	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.295874	# 3
fle_else.295875:
	ori		x5, x0, 1	# 3
fle_cont.295874:
	beq		x4, x8, beq.295877	# 204
	beq		x5, x8, beq.295879	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.295878	# 204
beq.295879:
	ori		x4, x0, 1	# 204
beq_cont.295878:
	jal		x0, beq_cont.295876	# 204
beq.295877:
	addi	x4, x5, 0	# 204
beq_cont.295876:
	beq		x4, x8, beq.295880	# 1338
	addi	x4, x0, 0	# 1338
	jalr	x0, x1, 0	# 1338
beq.295880:
	ori		x4, x0, 1	# 1338
	jalr	x0, x1, 0	# 1338
beq.295862:
	fle		x31, f0, f3	# 5
	beq		x31, x0, fle_else.295882	# 5
	fsub	x31, x31, x31	# 5
	fsub	f0, x31, f0	# 5
	jal		x0, fle_cont.295881	# 5
fle_else.295882:
fle_cont.295881:
	lw		x5, 16(x4)	# 391
	ori		x7, x0, 4	# 396
	mul		x7, x8, x7	# 396
	add		x5, x5, x7	# 396
	flw		f4, 0(x5)	# 396
	fle		x31, f4, f0	# 6
	beq		x31, x0, fle_else.295884	# 6
	addi	x5, x0, 0	# 6
	jal		x0, fle_cont.295883	# 6
fle_else.295884:
	ori		x5, x0, 1	# 6
fle_cont.295883:
	beq		x5, x8, beq.295886	# 1327
	fle		x31, f1, f3	# 5
	beq		x31, x0, fle_else.295888	# 5
	fsub	f0, f0, f0	# 5
	fsub	f0, f0, f1	# 5
	jal		x0, fle_cont.295887	# 5
fle_else.295888:
	fsub	f0, f0, f0	# 5
	fadd	f0, f0, f1	# 5
fle_cont.295887:
	lw		x5, 16(x4)	# 401
	ori		x7, x0, 4	# 406
	mul		x7, x9, x7	# 406
	add		x5, x5, x7	# 406
	flw		f1, 0(x5)	# 406
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.295890	# 6
	addi	x5, x0, 0	# 6
	jal		x0, fle_cont.295889	# 6
fle_else.295890:
	ori		x5, x0, 1	# 6
fle_cont.295889:
	beq		x5, x8, beq.295892	# 1328
	fle		x31, f2, f3	# 5
	beq		x31, x0, fle_else.295894	# 5
	fsub	f0, f0, f0	# 5
	fsub	f0, f0, f2	# 5
	jal		x0, fle_cont.295893	# 5
fle_else.295894:
	fsub	f0, f0, f0	# 5
	fadd	f0, f0, f2	# 5
fle_cont.295893:
	lw		x5, 16(x4)	# 411
	ori		x7, x0, 4	# 416
	mul		x6, x6, x7	# 416
	add		x5, x5, x6	# 416
	flw		f1, 0(x5)	# 416
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.295896	# 6
	addi	x5, x0, 0	# 6
	jal		x0, fle_cont.295895	# 6
fle_else.295896:
	ori		x5, x0, 1	# 6
fle_cont.295895:
	jal		x0, beq_cont.295891	# 1328
beq.295892:
	addi	x5, x0, 0	# 1330
beq_cont.295891:
	jal		x0, beq_cont.295885	# 1327
beq.295886:
	addi	x5, x0, 0	# 1331
beq_cont.295885:
	beq		x5, x8, beq.295897	# 1326
	lw		x4, 24(x4)	# 373
	jalr	x0, x1, 0	# 377
beq.295897:
	lw		x4, 24(x4)	# 373
	beq		x4, x8, beq.295898	# 1332
	addi	x4, x0, 0	# 1332
	jalr	x0, x1, 0	# 1332
beq.295898:
	ori		x4, x0, 1	# 1332
	jalr	x0, x1, 0	# 1332
check_all_inside.2807:
	lw		x6, 36(x27)	# 1364
	lw		x7, 32(x27)	# 1364
	lw		x8, 28(x27)	# 1364
	lw		x9, 24(x27)	# 1364
	lw		x10, 20(x27)	# 1364
	lw		x11, 16(x27)	# 1364
	lw		x12, 12(x27)	# 1364
	lw		x13, 8(x27)	# 1364
	flw		f3, 4(x27)	# 1364
	ori		x14, x0, 4	# 1364
	mul		x14, x4, x14	# 1364
	add		x14, x5, x14	# 1364
	lw		x14, 0(x14)	# 1364
	beq		x14, x10, beq.295899	# 1365
	ori		x15, x0, 4	# 1368
	mul		x14, x14, x15	# 1368
	add		x14, x7, x14	# 1368
	lw		x14, 0(x14)	# 1368
	lw		x15, 20(x14)	# 431
	ori		x16, x0, 4	# 436
	mul		x16, x12, x16	# 436
	add		x15, x15, x16	# 436
	flw		f4, 0(x15)	# 436
	fsub	f4, f0, f4	# 1350
	lw		x15, 20(x14)	# 441
	ori		x16, x0, 4	# 446
	mul		x16, x13, x16	# 446
	add		x15, x15, x16	# 446
	flw		f5, 0(x15)	# 446
	fsub	f5, f1, f5	# 1351
	lw		x15, 20(x14)	# 451
	ori		x16, x0, 4	# 456
	mul		x16, x9, x16	# 456
	add		x15, x15, x16	# 456
	flw		f6, 0(x15)	# 456
	fsub	f6, f2, f6	# 1352
	lw		x15, 4(x14)	# 353
	sw		x27, 0(x2)	# 1354
	sw		x11, -4(x2)	# 1354
	sw		x6, -8(x2)	# 1354
	fsw		f3, -16(x2)	# 1354
	sw		x9, -24(x2)	# 1354
	fsw		f2, -32(x2)	# 1354
	fsw		f1, -40(x2)	# 1354
	fsw		f0, -48(x2)	# 1354
	sw		x8, -56(x2)	# 1354
	sw		x7, -60(x2)	# 1354
	sw		x10, -64(x2)	# 1354
	sw		x5, -68(x2)	# 1354
	sw		x13, -72(x2)	# 1354
	sw		x4, -76(x2)	# 1354
	sw		x12, -80(x2)	# 1354
	beq		x15, x13, beq.295903	# 1354
	ori		x16, x0, 2	# 1356
	beq		x15, x16, beq.295905	# 1356
	sw		x14, -84(x2)	# 1343
	addi	x4, x14, 0
	addi	x27, x6, 0
	fsub	f2, f2, f2
	fadd	f2, f2, f6
	fsub	f1, f1, f1
	fadd	f1, f1, f5
	fsub	f0, f0, f0
	fadd	f0, f0, f4
	sw		x1, -88(x2)	# 1343
	addi	x2, x2, -92	# 1343
	lw		x31, 0(x27)	# 1343
	jalr	x1, x31, 0	# 1343
	addi	x2, x2, 92	# 1343
	lw		x1, -88(x2)	# 1343
	lw		x4, -84(x2)	# 353
	lw		x5, 4(x4)	# 353
	lw		x6, -4(x2)	# 1344
	beq		x5, x6, beq.295907	# 1344
	jal		x0, beq_cont.295906	# 1344
beq.295907:
	lui		x5, %hi(l.15661)	# 1344
	ori		x5, x0, %lo(l.15661)	# 1344
	flw		f1, 0(x5)	# 1344
	fsub	f0, f0, f1	# 1344
beq_cont.295906:
	lw		x4, 24(x4)	# 373
	flw		f1, -16(x2)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.295909	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.295908	# 3
fle_else.295909:
	ori		x5, x0, 1	# 3
fle_cont.295908:
	lw		x7, -80(x2)	# 204
	beq		x4, x7, beq.295911	# 204
	beq		x5, x7, beq.295913	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.295912	# 204
beq.295913:
	ori		x4, x0, 1	# 204
beq_cont.295912:
	jal		x0, beq_cont.295910	# 204
beq.295911:
	addi	x4, x5, 0	# 204
beq_cont.295910:
	beq		x4, x7, beq.295915	# 1345
	addi	x4, x0, 0	# 1345
	jal		x0, beq_cont.295914	# 1345
beq.295915:
	ori		x4, x0, 1	# 1345
beq_cont.295914:
	jal		x0, beq_cont.295904	# 1356
beq.295905:
	lw		x15, 16(x14)	# 421
	ori		x16, x0, 4	# 297
	mul		x16, x12, x16	# 297
	add		x16, x15, x16	# 297
	flw		f7, 0(x16)	# 297
	fmul	f4, f7, f4	# 297
	ori		x16, x0, 4	# 297
	mul		x16, x13, x16	# 297
	add		x16, x15, x16	# 297
	flw		f7, 0(x16)	# 297
	fmul	f5, f7, f5	# 297
	fadd	f4, f4, f5	# 297
	ori		x16, x0, 4	# 297
	mul		x16, x9, x16	# 297
	add		x15, x15, x16	# 297
	flw		f5, 0(x15)	# 297
	fmul	f5, f5, f6	# 297
	fadd	f4, f4, f5	# 297
	lw		x14, 24(x14)	# 373
	fle		x31, f3, f4	# 3
	beq		x31, x0, fle_else.295917	# 3
	addi	x15, x0, 0	# 3
	jal		x0, fle_cont.295916	# 3
fle_else.295917:
	ori		x15, x0, 1	# 3
fle_cont.295916:
	beq		x14, x12, beq.295919	# 204
	beq		x15, x12, beq.295921	# 204
	addi	x14, x0, 0	# 204
	jal		x0, beq_cont.295920	# 204
beq.295921:
	ori		x14, x0, 1	# 204
beq_cont.295920:
	jal		x0, beq_cont.295918	# 204
beq.295919:
	addi	x14, x15, 0	# 204
beq_cont.295918:
	beq		x14, x12, beq.295923	# 1338
	addi	x4, x0, 0	# 1338
	jal		x0, beq_cont.295922	# 1338
beq.295923:
	ori		x4, x0, 1	# 1338
beq_cont.295922:
beq_cont.295904:
	jal		x0, beq_cont.295902	# 1354
beq.295903:
	fle		x31, f4, f3	# 5
	beq		x31, x0, fle_else.295925	# 5
	fsub	x31, x31, x31	# 5
	fsub	f4, x31, f4	# 5
	jal		x0, fle_cont.295924	# 5
fle_else.295925:
fle_cont.295924:
	lw		x15, 16(x14)	# 391
	ori		x16, x0, 4	# 396
	mul		x16, x12, x16	# 396
	add		x15, x15, x16	# 396
	flw		f7, 0(x15)	# 396
	fle		x31, f7, f4	# 6
	beq		x31, x0, fle_else.295927	# 6
	addi	x15, x0, 0	# 6
	jal		x0, fle_cont.295926	# 6
fle_else.295927:
	ori		x15, x0, 1	# 6
fle_cont.295926:
	beq		x15, x12, beq.295929	# 1327
	fle		x31, f5, f3	# 5
	beq		x31, x0, fle_else.295931	# 5
	fsub	f4, f4, f4	# 5
	fsub	f4, f4, f5	# 5
	jal		x0, fle_cont.295930	# 5
fle_else.295931:
	fsub	f4, f4, f4	# 5
	fadd	f4, f4, f5	# 5
fle_cont.295930:
	lw		x15, 16(x14)	# 401
	ori		x16, x0, 4	# 406
	mul		x16, x13, x16	# 406
	add		x15, x15, x16	# 406
	flw		f5, 0(x15)	# 406
	fle		x31, f5, f4	# 6
	beq		x31, x0, fle_else.295933	# 6
	addi	x15, x0, 0	# 6
	jal		x0, fle_cont.295932	# 6
fle_else.295933:
	ori		x15, x0, 1	# 6
fle_cont.295932:
	beq		x15, x12, beq.295935	# 1328
	fle		x31, f6, f3	# 5
	beq		x31, x0, fle_else.295937	# 5
	fsub	f4, f4, f4	# 5
	fsub	f4, f4, f6	# 5
	jal		x0, fle_cont.295936	# 5
fle_else.295937:
	fsub	f4, f4, f4	# 5
	fadd	f4, f4, f6	# 5
fle_cont.295936:
	lw		x15, 16(x14)	# 411
	ori		x16, x0, 4	# 416
	mul		x16, x9, x16	# 416
	add		x15, x15, x16	# 416
	flw		f5, 0(x15)	# 416
	fle		x31, f5, f4	# 6
	beq		x31, x0, fle_else.295939	# 6
	addi	x15, x0, 0	# 6
	jal		x0, fle_cont.295938	# 6
fle_else.295939:
	ori		x15, x0, 1	# 6
fle_cont.295938:
	jal		x0, beq_cont.295934	# 1328
beq.295935:
	addi	x15, x0, 0	# 1330
beq_cont.295934:
	jal		x0, beq_cont.295928	# 1327
beq.295929:
	addi	x15, x0, 0	# 1331
beq_cont.295928:
	beq		x15, x12, beq.295941	# 1326
	lw		x14, 24(x14)	# 373
	addi	x4, x14, 0	# 377
	jal		x0, beq_cont.295940	# 1326
beq.295941:
	lw		x14, 24(x14)	# 373
	beq		x14, x12, beq.295943	# 1332
	addi	x4, x0, 0	# 1332
	jal		x0, beq_cont.295942	# 1332
beq.295943:
	ori		x4, x0, 1	# 1332
beq_cont.295942:
beq_cont.295940:
beq_cont.295902:
	lw		x5, -80(x2)	# 1368
	beq		x4, x5, beq.295944	# 1368
	addi	x4, x0, 0	# 1369
	jalr	x0, x1, 0	# 1369
beq.295944:
	lw		x4, -72(x2)	# 1371
	lw		x6, -76(x2)	# 1371
	add		x6, x6, x4	# 1371
	ori		x7, x0, 4	# 1364
	mul		x7, x6, x7	# 1364
	lw		x8, -68(x2)	# 1364
	add		x7, x8, x7	# 1364
	lw		x7, 0(x7)	# 1364
	lw		x9, -64(x2)	# 1365
	beq		x7, x9, beq.295945	# 1365
	ori		x10, x0, 4	# 1368
	mul		x7, x7, x10	# 1368
	lw		x10, -60(x2)	# 1368
	add		x7, x10, x7	# 1368
	lw		x7, 0(x7)	# 1368
	flw		f0, -48(x2)	# 1368
	flw		f1, -40(x2)	# 1368
	flw		f2, -32(x2)	# 1368
	lw		x27, -56(x2)	# 1368
	sw		x6, -88(x2)	# 1368
	addi	x4, x7, 0
	sw		x1, -92(x2)	# 1368
	addi	x2, x2, -96	# 1368
	lw		x31, 0(x27)	# 1368
	jalr	x1, x31, 0	# 1368
	addi	x2, x2, 96	# 1368
	lw		x1, -92(x2)	# 1368
	lw		x5, -80(x2)	# 1368
	beq		x4, x5, beq.295946	# 1368
	addi	x4, x0, 0	# 1369
	jalr	x0, x1, 0	# 1369
beq.295946:
	lw		x4, -72(x2)	# 1371
	lw		x6, -88(x2)	# 1371
	add		x6, x6, x4	# 1371
	ori		x7, x0, 4	# 1364
	mul		x7, x6, x7	# 1364
	lw		x8, -68(x2)	# 1364
	add		x7, x8, x7	# 1364
	lw		x7, 0(x7)	# 1364
	lw		x9, -64(x2)	# 1365
	beq		x7, x9, beq.295947	# 1365
	ori		x10, x0, 4	# 1368
	mul		x7, x7, x10	# 1368
	lw		x10, -60(x2)	# 1368
	add		x7, x10, x7	# 1368
	lw		x7, 0(x7)	# 1368
	lw		x11, 20(x7)	# 431
	ori		x12, x0, 4	# 436
	mul		x12, x5, x12	# 436
	add		x11, x11, x12	# 436
	flw		f0, 0(x11)	# 436
	flw		f1, -48(x2)	# 1350
	fsub	f0, f1, f0	# 1350
	lw		x11, 20(x7)	# 441
	ori		x12, x0, 4	# 446
	mul		x12, x4, x12	# 446
	add		x11, x11, x12	# 446
	flw		f2, 0(x11)	# 446
	flw		f3, -40(x2)	# 1351
	fsub	f2, f3, f2	# 1351
	lw		x11, 20(x7)	# 451
	ori		x12, x0, 4	# 456
	lw		x13, -24(x2)	# 456
	mul		x12, x13, x12	# 456
	add		x11, x11, x12	# 456
	flw		f4, 0(x11)	# 456
	flw		f5, -32(x2)	# 1352
	fsub	f4, f5, f4	# 1352
	lw		x11, 4(x7)	# 353
	sw		x6, -92(x2)	# 1354
	beq		x11, x4, beq.295949	# 1354
	ori		x12, x0, 2	# 1356
	beq		x11, x12, beq.295951	# 1356
	lw		x27, -8(x2)	# 1343
	sw		x7, -96(x2)	# 1343
	addi	x4, x7, 0
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f4
	sw		x1, -100(x2)	# 1343
	addi	x2, x2, -104	# 1343
	lw		x31, 0(x27)	# 1343
	jalr	x1, x31, 0	# 1343
	addi	x2, x2, 104	# 1343
	lw		x1, -100(x2)	# 1343
	lw		x4, -96(x2)	# 353
	lw		x5, 4(x4)	# 353
	lw		x6, -4(x2)	# 1344
	beq		x5, x6, beq.295953	# 1344
	jal		x0, beq_cont.295952	# 1344
beq.295953:
	lui		x5, %hi(l.15661)	# 1344
	ori		x5, x0, %lo(l.15661)	# 1344
	flw		f1, 0(x5)	# 1344
	fsub	f0, f0, f1	# 1344
beq_cont.295952:
	lw		x4, 24(x4)	# 373
	flw		f1, -16(x2)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.295955	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.295954	# 3
fle_else.295955:
	ori		x5, x0, 1	# 3
fle_cont.295954:
	lw		x6, -80(x2)	# 204
	beq		x4, x6, beq.295957	# 204
	beq		x5, x6, beq.295959	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.295958	# 204
beq.295959:
	ori		x4, x0, 1	# 204
beq_cont.295958:
	jal		x0, beq_cont.295956	# 204
beq.295957:
	addi	x4, x5, 0	# 204
beq_cont.295956:
	beq		x4, x6, beq.295961	# 1345
	addi	x4, x0, 0	# 1345
	jal		x0, beq_cont.295960	# 1345
beq.295961:
	ori		x4, x0, 1	# 1345
beq_cont.295960:
	jal		x0, beq_cont.295950	# 1356
beq.295951:
	lw		x11, 16(x7)	# 421
	ori		x12, x0, 4	# 297
	mul		x12, x5, x12	# 297
	add		x12, x11, x12	# 297
	flw		f6, 0(x12)	# 297
	fmul	f0, f6, f0	# 297
	ori		x12, x0, 4	# 297
	mul		x12, x4, x12	# 297
	add		x12, x11, x12	# 297
	flw		f6, 0(x12)	# 297
	fmul	f2, f6, f2	# 297
	fadd	f0, f0, f2	# 297
	ori		x12, x0, 4	# 297
	mul		x12, x13, x12	# 297
	add		x11, x11, x12	# 297
	flw		f2, 0(x11)	# 297
	fmul	f2, f2, f4	# 297
	fadd	f0, f0, f2	# 297
	lw		x7, 24(x7)	# 373
	flw		f2, -16(x2)	# 3
	fle		x31, f2, f0	# 3
	beq		x31, x0, fle_else.295963	# 3
	addi	x11, x0, 0	# 3
	jal		x0, fle_cont.295962	# 3
fle_else.295963:
	ori		x11, x0, 1	# 3
fle_cont.295962:
	beq		x7, x5, beq.295965	# 204
	beq		x11, x5, beq.295967	# 204
	addi	x7, x0, 0	# 204
	jal		x0, beq_cont.295966	# 204
beq.295967:
	ori		x7, x0, 1	# 204
beq_cont.295966:
	jal		x0, beq_cont.295964	# 204
beq.295965:
	addi	x7, x11, 0	# 204
beq_cont.295964:
	beq		x7, x5, beq.295969	# 1338
	addi	x4, x0, 0	# 1338
	jal		x0, beq_cont.295968	# 1338
beq.295969:
	ori		x4, x0, 1	# 1338
beq_cont.295968:
beq_cont.295950:
	jal		x0, beq_cont.295948	# 1354
beq.295949:
	flw		f6, -16(x2)	# 5
	fle		x31, f0, f6	# 5
	beq		x31, x0, fle_else.295971	# 5
	fsub	x31, x31, x31	# 5
	fsub	f0, x31, f0	# 5
	jal		x0, fle_cont.295970	# 5
fle_else.295971:
fle_cont.295970:
	lw		x11, 16(x7)	# 391
	ori		x12, x0, 4	# 396
	mul		x12, x5, x12	# 396
	add		x11, x11, x12	# 396
	flw		f7, 0(x11)	# 396
	fle		x31, f7, f0	# 6
	beq		x31, x0, fle_else.295973	# 6
	addi	x11, x0, 0	# 6
	jal		x0, fle_cont.295972	# 6
fle_else.295973:
	ori		x11, x0, 1	# 6
fle_cont.295972:
	beq		x11, x5, beq.295975	# 1327
	fle		x31, f2, f6	# 5
	beq		x31, x0, fle_else.295977	# 5
	fsub	f0, f0, f0	# 5
	fsub	f0, f0, f2	# 5
	jal		x0, fle_cont.295976	# 5
fle_else.295977:
	fsub	f0, f0, f0	# 5
	fadd	f0, f0, f2	# 5
fle_cont.295976:
	lw		x11, 16(x7)	# 401
	ori		x12, x0, 4	# 406
	mul		x12, x4, x12	# 406
	add		x11, x11, x12	# 406
	flw		f2, 0(x11)	# 406
	fle		x31, f2, f0	# 6
	beq		x31, x0, fle_else.295979	# 6
	addi	x11, x0, 0	# 6
	jal		x0, fle_cont.295978	# 6
fle_else.295979:
	ori		x11, x0, 1	# 6
fle_cont.295978:
	beq		x11, x5, beq.295981	# 1328
	fle		x31, f4, f6	# 5
	beq		x31, x0, fle_else.295983	# 5
	fsub	f0, f0, f0	# 5
	fsub	f0, f0, f4	# 5
	jal		x0, fle_cont.295982	# 5
fle_else.295983:
	fsub	f0, f0, f0	# 5
	fadd	f0, f0, f4	# 5
fle_cont.295982:
	lw		x11, 16(x7)	# 411
	ori		x12, x0, 4	# 416
	mul		x12, x13, x12	# 416
	add		x11, x11, x12	# 416
	flw		f2, 0(x11)	# 416
	fle		x31, f2, f0	# 6
	beq		x31, x0, fle_else.295985	# 6
	addi	x11, x0, 0	# 6
	jal		x0, fle_cont.295984	# 6
fle_else.295985:
	ori		x11, x0, 1	# 6
fle_cont.295984:
	jal		x0, beq_cont.295980	# 1328
beq.295981:
	addi	x11, x0, 0	# 1330
beq_cont.295980:
	jal		x0, beq_cont.295974	# 1327
beq.295975:
	addi	x11, x0, 0	# 1331
beq_cont.295974:
	beq		x11, x5, beq.295987	# 1326
	lw		x7, 24(x7)	# 373
	addi	x4, x7, 0	# 377
	jal		x0, beq_cont.295986	# 1326
beq.295987:
	lw		x7, 24(x7)	# 373
	beq		x7, x5, beq.295989	# 1332
	addi	x4, x0, 0	# 1332
	jal		x0, beq_cont.295988	# 1332
beq.295989:
	ori		x4, x0, 1	# 1332
beq_cont.295988:
beq_cont.295986:
beq_cont.295948:
	lw		x5, -80(x2)	# 1368
	beq		x4, x5, beq.295990	# 1368
	addi	x4, x0, 0	# 1369
	jalr	x0, x1, 0	# 1369
beq.295990:
	lw		x4, -72(x2)	# 1371
	lw		x6, -92(x2)	# 1371
	add		x6, x6, x4	# 1371
	ori		x7, x0, 4	# 1364
	mul		x7, x6, x7	# 1364
	lw		x8, -68(x2)	# 1364
	add		x7, x8, x7	# 1364
	lw		x7, 0(x7)	# 1364
	lw		x9, -64(x2)	# 1365
	beq		x7, x9, beq.295991	# 1365
	ori		x9, x0, 4	# 1368
	mul		x7, x7, x9	# 1368
	lw		x9, -60(x2)	# 1368
	add		x7, x9, x7	# 1368
	lw		x7, 0(x7)	# 1368
	flw		f0, -48(x2)	# 1368
	flw		f1, -40(x2)	# 1368
	flw		f2, -32(x2)	# 1368
	lw		x27, -56(x2)	# 1368
	sw		x6, -100(x2)	# 1368
	addi	x4, x7, 0
	sw		x1, -104(x2)	# 1368
	addi	x2, x2, -108	# 1368
	lw		x31, 0(x27)	# 1368
	jalr	x1, x31, 0	# 1368
	addi	x2, x2, 108	# 1368
	lw		x1, -104(x2)	# 1368
	lw		x5, -80(x2)	# 1368
	beq		x4, x5, beq.295992	# 1368
	addi	x4, x0, 0	# 1369
	jalr	x0, x1, 0	# 1369
beq.295992:
	lw		x4, -72(x2)	# 1371
	lw		x5, -100(x2)	# 1371
	add		x4, x5, x4	# 1371
	flw		f0, -48(x2)	# 1371
	flw		f1, -40(x2)	# 1371
	flw		f2, -32(x2)	# 1371
	lw		x5, -68(x2)	# 1371
	lw		x27, 0(x2)	# 1371
	lw		x31, 0(x27)	# 1371
	jalr	x0, x31, 0	# 1371
beq.295991:
	ori		x4, x0, 1	# 1366
	jalr	x0, x1, 0	# 1366
beq.295947:
	ori		x4, x0, 1	# 1366
	jalr	x0, x1, 0	# 1366
beq.295945:
	ori		x4, x0, 1	# 1366
	jalr	x0, x1, 0	# 1366
beq.295899:
	ori		x4, x0, 1	# 1366
	jalr	x0, x1, 0	# 1366
shadow_check_and_group.2813:
	lw		x6, 68(x27)	# 1384
	lw		x7, 64(x27)	# 1384
	lw		x8, 60(x27)	# 1384
	lw		x9, 56(x27)	# 1384
	lw		x10, 52(x27)	# 1384
	lw		x11, 48(x27)	# 1384
	lw		x12, 44(x27)	# 1384
	lw		x13, 40(x27)	# 1384
	lw		x14, 36(x27)	# 1384
	lw		x15, 32(x27)	# 1384
	lw		x16, 28(x27)	# 1384
	lw		x17, 24(x27)	# 1384
	lw		x18, 20(x27)	# 1384
	lw		x19, 16(x27)	# 1384
	lw		x20, 12(x27)	# 1384
	lw		x21, 8(x27)	# 1384
	flw		f0, 4(x27)	# 1384
	ori		x22, x0, 4	# 1384
	mul		x22, x4, x22	# 1384
	add		x22, x5, x22	# 1384
	lw		x22, 0(x22)	# 1384
	beq		x22, x18, beq.295993	# 1384
	ori		x23, x0, 4	# 1126
	mul		x23, x22, x23	# 1126
	add		x23, x11, x23	# 1126
	lw		x23, 0(x23)	# 1126
	ori		x24, x0, 4	# 1127
	mul		x24, x20, x24	# 1127
	add		x24, x14, x24	# 1127
	flw		f1, 0(x24)	# 1127
	lw		x24, 20(x23)	# 431
	ori		x25, x0, 4	# 436
	mul		x25, x20, x25	# 436
	add		x24, x24, x25	# 436
	flw		f2, 0(x24)	# 436
	fsub	f1, f1, f2	# 1127
	ori		x24, x0, 4	# 1128
	mul		x24, x21, x24	# 1128
	add		x24, x14, x24	# 1128
	flw		f2, 0(x24)	# 1128
	lw		x24, 20(x23)	# 441
	ori		x25, x0, 4	# 446
	mul		x25, x21, x25	# 446
	add		x24, x24, x25	# 446
	flw		f3, 0(x24)	# 446
	fsub	f2, f2, f3	# 1128
	ori		x24, x0, 4	# 1129
	mul		x24, x17, x24	# 1129
	add		x24, x14, x24	# 1129
	flw		f3, 0(x24)	# 1129
	lw		x24, 20(x23)	# 451
	ori		x25, x0, 4	# 456
	mul		x25, x17, x25	# 456
	add		x24, x24, x25	# 456
	flw		f4, 0(x24)	# 456
	fsub	f3, f3, f4	# 1129
	ori		x24, x0, 4	# 1131
	mul		x24, x22, x24	# 1131
	add		x15, x15, x24	# 1131
	lw		x15, 0(x15)	# 1131
	lw		x24, 4(x23)	# 353
	sw		x16, 0(x2)	# 1133
	sw		x19, -4(x2)	# 1133
	sw		x10, -8(x2)	# 1133
	fsw		f0, -16(x2)	# 1133
	sw		x13, -24(x2)	# 1133
	sw		x18, -28(x2)	# 1133
	sw		x17, -32(x2)	# 1133
	sw		x14, -36(x2)	# 1133
	sw		x12, -40(x2)	# 1133
	sw		x5, -44(x2)	# 1133
	sw		x27, -48(x2)	# 1133
	sw		x21, -52(x2)	# 1133
	sw		x4, -56(x2)	# 1133
	sw		x11, -60(x2)	# 1133
	sw		x22, -64(x2)	# 1133
	sw		x9, -68(x2)	# 1133
	sw		x20, -72(x2)	# 1133
	beq		x24, x21, beq.295996	# 1133
	ori		x6, x0, 2	# 1135
	beq		x24, x6, beq.295998	# 1135
	addi	x5, x15, 0
	addi	x4, x23, 0
	addi	x27, x7, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -76(x2)	# 1138
	addi	x2, x2, -80	# 1138
	lw		x31, 0(x27)	# 1138
	jalr	x1, x31, 0	# 1138
	addi	x2, x2, 80	# 1138
	lw		x1, -76(x2)	# 1138
	jal		x0, beq_cont.295997	# 1135
beq.295998:
	ori		x6, x0, 4	# 1097
	mul		x6, x20, x6	# 1097
	add		x6, x15, x6	# 1097
	flw		f4, 0(x6)	# 1097
	fle		x31, f0, f4	# 3
	beq		x31, x0, fle_else.296000	# 3
	addi	x6, x0, 0	# 3
	jal		x0, fle_cont.295999	# 3
fle_else.296000:
	ori		x6, x0, 1	# 3
fle_cont.295999:
	beq		x6, x20, beq.296002	# 1097
	ori		x6, x0, 4	# 1099
	mul		x6, x21, x6	# 1099
	add		x6, x15, x6	# 1099
	flw		f4, 0(x6)	# 1099
	fmul	f1, f4, f1	# 1099
	ori		x6, x0, 4	# 1099
	mul		x6, x17, x6	# 1099
	add		x6, x15, x6	# 1099
	flw		f4, 0(x6)	# 1099
	fmul	f2, f4, f2	# 1099
	fadd	f1, f1, f2	# 1099
	ori		x6, x0, 4	# 1099
	mul		x6, x19, x6	# 1099
	add		x6, x15, x6	# 1099
	flw		f2, 0(x6)	# 1099
	fmul	f2, f2, f3	# 1099
	fadd	f1, f1, f2	# 1099
	ori		x6, x0, 4	# 1098
	mul		x6, x20, x6	# 1098
	add		x6, x9, x6	# 1098
	fsw		f1, 0(x6)	# 1098
	ori		x4, x0, 1	# 1100
	jal		x0, beq_cont.296001	# 1097
beq.296002:
	addi	x4, x0, 0	# 1101
beq_cont.296001:
beq_cont.295997:
	jal		x0, beq_cont.295995	# 1133
beq.295996:
	addi	x5, x6, 0
	addi	x4, x23, 0
	addi	x27, x8, 0
	addi	x6, x15, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -76(x2)	# 1134
	addi	x2, x2, -80	# 1134
	lw		x31, 0(x27)	# 1134
	jalr	x1, x31, 0	# 1134
	addi	x2, x2, 80	# 1134
	lw		x1, -76(x2)	# 1134
beq_cont.295995:
	ori		x5, x0, 4	# 1389
	lw		x6, -72(x2)	# 1389
	mul		x5, x6, x5	# 1389
	lw		x7, -68(x2)	# 1389
	add		x5, x7, x5	# 1389
	flw		f0, 0(x5)	# 1389
	beq		x4, x6, beq.296004	# 1390
	lui		x4, %hi(l.16892)	# 1390
	ori		x4, x0, %lo(l.16892)	# 1390
	flw		f1, 0(x4)	# 1390
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.296006	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.296005	# 6
fle_else.296006:
	ori		x4, x0, 1	# 6
fle_cont.296005:
	jal		x0, beq_cont.296003	# 1390
beq.296004:
	addi	x4, x0, 0	# 1390
beq_cont.296003:
	beq		x4, x6, beq.296007	# 1390
	lui		x4, %hi(l.16894)	# 1393
	ori		x4, x0, %lo(l.16894)	# 1393
	flw		f1, 0(x4)	# 1393
	fadd	f0, f0, f1	# 1393
	ori		x4, x0, 4	# 1394
	mul		x4, x6, x4	# 1394
	lw		x5, -40(x2)	# 1394
	add		x4, x5, x4	# 1394
	flw		f1, 0(x4)	# 1394
	fmul	f1, f1, f0	# 1394
	ori		x4, x0, 4	# 1394
	mul		x4, x6, x4	# 1394
	lw		x7, -36(x2)	# 1394
	add		x4, x7, x4	# 1394
	flw		f2, 0(x4)	# 1394
	fadd	f1, f1, f2	# 1394
	ori		x4, x0, 4	# 1395
	lw		x8, -52(x2)	# 1395
	mul		x4, x8, x4	# 1395
	add		x4, x5, x4	# 1395
	flw		f2, 0(x4)	# 1395
	fmul	f2, f2, f0	# 1395
	ori		x4, x0, 4	# 1395
	mul		x4, x8, x4	# 1395
	add		x4, x7, x4	# 1395
	flw		f3, 0(x4)	# 1395
	fadd	f2, f2, f3	# 1395
	ori		x4, x0, 4	# 1396
	lw		x9, -32(x2)	# 1396
	mul		x4, x9, x4	# 1396
	add		x4, x5, x4	# 1396
	flw		f3, 0(x4)	# 1396
	fmul	f0, f3, f0	# 1396
	ori		x4, x0, 4	# 1396
	mul		x4, x9, x4	# 1396
	add		x4, x7, x4	# 1396
	flw		f3, 0(x4)	# 1396
	fadd	f0, f0, f3	# 1396
	ori		x4, x0, 4	# 1364
	mul		x4, x6, x4	# 1364
	lw		x5, -44(x2)	# 1364
	add		x4, x5, x4	# 1364
	lw		x4, 0(x4)	# 1364
	lw		x7, -28(x2)	# 1365
	beq		x4, x7, beq.296009	# 1365
	ori		x10, x0, 4	# 1368
	mul		x4, x4, x10	# 1368
	lw		x10, -60(x2)	# 1368
	add		x4, x10, x4	# 1368
	lw		x4, 0(x4)	# 1368
	lw		x27, -24(x2)	# 1368
	fsw		f0, -80(x2)	# 1368
	fsw		f2, -88(x2)	# 1368
	fsw		f1, -96(x2)	# 1368
	fsub	f31, f31, f31
	fadd	f31, f31, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f31
	sw		x1, -104(x2)	# 1368
	addi	x2, x2, -108	# 1368
	lw		x31, 0(x27)	# 1368
	jalr	x1, x31, 0	# 1368
	addi	x2, x2, 108	# 1368
	lw		x1, -104(x2)	# 1368
	addi	x5, x0, 0	# 1368
	beq		x4, x5, beq.296012	# 1368
	addi	x4, x0, 0	# 1369
	jal		x0, beq_cont.296011	# 1368
beq.296012:
	ori		x4, x0, 1	# 1371
	ori		x5, x0, 4	# 1364
	mul		x4, x4, x5	# 1364
	lw		x5, -44(x2)	# 1364
	add		x4, x5, x4	# 1364
	lw		x4, 0(x4)	# 1364
	lw		x6, -28(x2)	# 1365
	beq		x4, x6, beq.296014	# 1365
	ori		x7, x0, 4	# 1368
	mul		x4, x4, x7	# 1368
	lw		x7, -60(x2)	# 1368
	add		x4, x7, x4	# 1368
	lw		x4, 0(x4)	# 1368
	lw		x8, 20(x4)	# 431
	ori		x9, x0, 4	# 436
	lw		x10, -72(x2)	# 436
	mul		x9, x10, x9	# 436
	add		x8, x8, x9	# 436
	flw		f0, 0(x8)	# 436
	flw		f1, -96(x2)	# 1350
	fsub	f0, f1, f0	# 1350
	lw		x8, 20(x4)	# 441
	ori		x9, x0, 4	# 446
	lw		x11, -52(x2)	# 446
	mul		x9, x11, x9	# 446
	add		x8, x8, x9	# 446
	flw		f2, 0(x8)	# 446
	flw		f3, -88(x2)	# 1351
	fsub	f2, f3, f2	# 1351
	lw		x8, 20(x4)	# 451
	ori		x9, x0, 4	# 456
	lw		x12, -32(x2)	# 456
	mul		x9, x12, x9	# 456
	add		x8, x8, x9	# 456
	flw		f4, 0(x8)	# 456
	flw		f5, -80(x2)	# 1352
	fsub	f4, f5, f4	# 1352
	lw		x8, 4(x4)	# 353
	ori		x9, x0, 1	# 1354
	beq		x8, x9, beq.296016	# 1354
	ori		x9, x0, 2	# 1356
	beq		x8, x9, beq.296018	# 1356
	lw		x27, -8(x2)	# 1343
	sw		x4, -104(x2)	# 1343
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f4
	sw		x1, -108(x2)	# 1343
	addi	x2, x2, -112	# 1343
	lw		x31, 0(x27)	# 1343
	jalr	x1, x31, 0	# 1343
	addi	x2, x2, 112	# 1343
	lw		x1, -108(x2)	# 1343
	lw		x4, -104(x2)	# 353
	lw		x5, 4(x4)	# 353
	lw		x6, -4(x2)	# 1344
	beq		x5, x6, beq.296020	# 1344
	jal		x0, beq_cont.296019	# 1344
beq.296020:
	lui		x5, %hi(l.15661)	# 1344
	ori		x5, x0, %lo(l.15661)	# 1344
	flw		f1, 0(x5)	# 1344
	fsub	f0, f0, f1	# 1344
beq_cont.296019:
	lw		x4, 24(x4)	# 373
	flw		f1, -16(x2)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.296022	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.296021	# 3
fle_else.296022:
	ori		x5, x0, 1	# 3
fle_cont.296021:
	lw		x6, -72(x2)	# 204
	beq		x4, x6, beq.296024	# 204
	beq		x5, x6, beq.296026	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.296025	# 204
beq.296026:
	ori		x4, x0, 1	# 204
beq_cont.296025:
	jal		x0, beq_cont.296023	# 204
beq.296024:
	addi	x4, x5, 0	# 204
beq_cont.296023:
	beq		x4, x6, beq.296028	# 1345
	addi	x4, x0, 0	# 1345
	jal		x0, beq_cont.296027	# 1345
beq.296028:
	ori		x4, x0, 1	# 1345
beq_cont.296027:
	jal		x0, beq_cont.296017	# 1356
beq.296018:
	lw		x8, 16(x4)	# 421
	ori		x9, x0, 4	# 297
	mul		x9, x10, x9	# 297
	add		x9, x8, x9	# 297
	flw		f6, 0(x9)	# 297
	fmul	f0, f6, f0	# 297
	ori		x9, x0, 4	# 297
	mul		x9, x11, x9	# 297
	add		x9, x8, x9	# 297
	flw		f6, 0(x9)	# 297
	fmul	f2, f6, f2	# 297
	fadd	f0, f0, f2	# 297
	ori		x9, x0, 4	# 297
	mul		x9, x12, x9	# 297
	add		x8, x8, x9	# 297
	flw		f2, 0(x8)	# 297
	fmul	f2, f2, f4	# 297
	fadd	f0, f0, f2	# 297
	lw		x4, 24(x4)	# 373
	flw		f2, -16(x2)	# 3
	fle		x31, f2, f0	# 3
	beq		x31, x0, fle_else.296030	# 3
	addi	x8, x0, 0	# 3
	jal		x0, fle_cont.296029	# 3
fle_else.296030:
	ori		x8, x0, 1	# 3
fle_cont.296029:
	beq		x4, x10, beq.296032	# 204
	beq		x8, x10, beq.296034	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.296033	# 204
beq.296034:
	ori		x4, x0, 1	# 204
beq_cont.296033:
	jal		x0, beq_cont.296031	# 204
beq.296032:
	addi	x4, x8, 0	# 204
beq_cont.296031:
	beq		x4, x10, beq.296036	# 1338
	addi	x4, x0, 0	# 1338
	jal		x0, beq_cont.296035	# 1338
beq.296036:
	ori		x4, x0, 1	# 1338
beq_cont.296035:
beq_cont.296017:
	jal		x0, beq_cont.296015	# 1354
beq.296016:
	flw		f6, -16(x2)	# 5
	fle		x31, f0, f6	# 5
	beq		x31, x0, fle_else.296038	# 5
	fsub	x31, x31, x31	# 5
	fsub	f0, x31, f0	# 5
	jal		x0, fle_cont.296037	# 5
fle_else.296038:
fle_cont.296037:
	lw		x8, 16(x4)	# 391
	ori		x9, x0, 4	# 396
	mul		x9, x10, x9	# 396
	add		x8, x8, x9	# 396
	flw		f7, 0(x8)	# 396
	fle		x31, f7, f0	# 6
	beq		x31, x0, fle_else.296040	# 6
	addi	x8, x0, 0	# 6
	jal		x0, fle_cont.296039	# 6
fle_else.296040:
	ori		x8, x0, 1	# 6
fle_cont.296039:
	beq		x8, x10, beq.296042	# 1327
	fle		x31, f2, f6	# 5
	beq		x31, x0, fle_else.296044	# 5
	fsub	f0, f0, f0	# 5
	fsub	f0, f0, f2	# 5
	jal		x0, fle_cont.296043	# 5
fle_else.296044:
	fsub	f0, f0, f0	# 5
	fadd	f0, f0, f2	# 5
fle_cont.296043:
	lw		x8, 16(x4)	# 401
	ori		x9, x0, 4	# 406
	mul		x9, x11, x9	# 406
	add		x8, x8, x9	# 406
	flw		f2, 0(x8)	# 406
	fle		x31, f2, f0	# 6
	beq		x31, x0, fle_else.296046	# 6
	addi	x8, x0, 0	# 6
	jal		x0, fle_cont.296045	# 6
fle_else.296046:
	ori		x8, x0, 1	# 6
fle_cont.296045:
	beq		x8, x10, beq.296048	# 1328
	fle		x31, f4, f6	# 5
	beq		x31, x0, fle_else.296050	# 5
	fsub	f0, f0, f0	# 5
	fsub	f0, f0, f4	# 5
	jal		x0, fle_cont.296049	# 5
fle_else.296050:
	fsub	f0, f0, f0	# 5
	fadd	f0, f0, f4	# 5
fle_cont.296049:
	lw		x8, 16(x4)	# 411
	ori		x9, x0, 4	# 416
	mul		x9, x12, x9	# 416
	add		x8, x8, x9	# 416
	flw		f2, 0(x8)	# 416
	fle		x31, f2, f0	# 6
	beq		x31, x0, fle_else.296052	# 6
	addi	x8, x0, 0	# 6
	jal		x0, fle_cont.296051	# 6
fle_else.296052:
	ori		x8, x0, 1	# 6
fle_cont.296051:
	jal		x0, beq_cont.296047	# 1328
beq.296048:
	addi	x8, x0, 0	# 1330
beq_cont.296047:
	jal		x0, beq_cont.296041	# 1327
beq.296042:
	addi	x8, x0, 0	# 1331
beq_cont.296041:
	beq		x8, x10, beq.296054	# 1326
	lw		x4, 24(x4)	# 373
	jal		x0, beq_cont.296053	# 1326
beq.296054:
	lw		x4, 24(x4)	# 373
	beq		x4, x10, beq.296056	# 1332
	addi	x4, x0, 0	# 1332
	jal		x0, beq_cont.296055	# 1332
beq.296056:
	ori		x4, x0, 1	# 1332
beq_cont.296055:
beq_cont.296053:
beq_cont.296015:
	lw		x5, -72(x2)	# 1368
	beq		x4, x5, beq.296058	# 1368
	addi	x4, x0, 0	# 1369
	jal		x0, beq_cont.296057	# 1368
beq.296058:
	ori		x4, x0, 2	# 1371
	ori		x6, x0, 4	# 1364
	mul		x4, x4, x6	# 1364
	lw		x6, -44(x2)	# 1364
	add		x4, x6, x4	# 1364
	lw		x4, 0(x4)	# 1364
	lw		x7, -28(x2)	# 1365
	beq		x4, x7, beq.296060	# 1365
	ori		x7, x0, 4	# 1368
	mul		x4, x4, x7	# 1368
	lw		x7, -60(x2)	# 1368
	add		x4, x7, x4	# 1368
	lw		x4, 0(x4)	# 1368
	flw		f0, -96(x2)	# 1368
	flw		f1, -88(x2)	# 1368
	flw		f2, -80(x2)	# 1368
	lw		x27, -24(x2)	# 1368
	sw		x1, -108(x2)	# 1368
	addi	x2, x2, -112	# 1368
	lw		x31, 0(x27)	# 1368
	jalr	x1, x31, 0	# 1368
	addi	x2, x2, 112	# 1368
	lw		x1, -108(x2)	# 1368
	lw		x5, -72(x2)	# 1368
	beq		x4, x5, beq.296062	# 1368
	addi	x4, x0, 0	# 1369
	jal		x0, beq_cont.296061	# 1368
beq.296062:
	ori		x4, x0, 3	# 1371
	flw		f0, -96(x2)	# 1371
	flw		f1, -88(x2)	# 1371
	flw		f2, -80(x2)	# 1371
	lw		x6, -44(x2)	# 1371
	lw		x27, 0(x2)	# 1371
	addi	x5, x6, 0
	sw		x1, -108(x2)	# 1371
	addi	x2, x2, -112	# 1371
	lw		x31, 0(x27)	# 1371
	jalr	x1, x31, 0	# 1371
	addi	x2, x2, 112	# 1371
	lw		x1, -108(x2)	# 1371
beq_cont.296061:
	jal		x0, beq_cont.296059	# 1365
beq.296060:
	ori		x4, x0, 1	# 1366
beq_cont.296059:
beq_cont.296057:
	jal		x0, beq_cont.296013	# 1365
beq.296014:
	ori		x4, x0, 1	# 1366
beq_cont.296013:
beq_cont.296011:
	jal		x0, beq_cont.296008	# 1365
beq.296009:
	ori		x4, x0, 1	# 1366
beq_cont.296008:
	lw		x5, -72(x2)	# 1397
	beq		x4, x5, beq.296063	# 1397
	ori		x4, x0, 1	# 1398
	jalr	x0, x1, 0	# 1398
beq.296063:
	lw		x4, -52(x2)	# 1400
	lw		x5, -56(x2)	# 1400
	add		x4, x5, x4	# 1400
	lw		x5, -44(x2)	# 1400
	lw		x27, -48(x2)	# 1400
	lw		x31, 0(x27)	# 1400
	jalr	x0, x31, 0	# 1400
beq.296007:
	ori		x4, x0, 4	# 1406
	lw		x5, -64(x2)	# 1406
	mul		x4, x5, x4	# 1406
	lw		x5, -60(x2)	# 1406
	add		x4, x5, x4	# 1406
	lw		x4, 0(x4)	# 1406
	lw		x4, 24(x4)	# 373
	beq		x4, x6, beq.296064	# 1406
	lw		x4, -52(x2)	# 1407
	lw		x5, -56(x2)	# 1407
	add		x4, x5, x4	# 1407
	lw		x5, -44(x2)	# 1407
	lw		x27, -48(x2)	# 1407
	lw		x31, 0(x27)	# 1407
	jalr	x0, x31, 0	# 1407
beq.296064:
	addi	x4, x0, 0	# 1409
	jalr	x0, x1, 0	# 1409
beq.295993:
	addi	x4, x0, 0	# 1385
	jalr	x0, x1, 0	# 1385
shadow_check_one_or_group.2816:
	lw		x6, 20(x27)	# 1414
	lw		x7, 16(x27)	# 1414
	lw		x8, 12(x27)	# 1414
	lw		x9, 8(x27)	# 1414
	lw		x10, 4(x27)	# 1414
	ori		x11, x0, 4	# 1414
	mul		x11, x4, x11	# 1414
	add		x11, x5, x11	# 1414
	lw		x11, 0(x11)	# 1414
	beq		x11, x8, beq.296065	# 1415
	ori		x12, x0, 4	# 1418
	mul		x11, x11, x12	# 1418
	add		x11, x7, x11	# 1418
	lw		x11, 0(x11)	# 1418
	sw		x27, 0(x2)	# 1419
	sw		x6, -4(x2)	# 1419
	sw		x7, -8(x2)	# 1419
	sw		x8, -12(x2)	# 1419
	sw		x5, -16(x2)	# 1419
	sw		x10, -20(x2)	# 1419
	sw		x4, -24(x2)	# 1419
	sw		x9, -28(x2)	# 1419
	addi	x5, x11, 0
	addi	x4, x9, 0
	addi	x27, x6, 0
	sw		x1, -32(x2)	# 1419
	addi	x2, x2, -36	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 36	# 1419
	lw		x1, -32(x2)	# 1419
	lw		x5, -28(x2)	# 1420
	beq		x4, x5, beq.296066	# 1420
	ori		x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.296066:
	lw		x4, -20(x2)	# 1423
	lw		x6, -24(x2)	# 1423
	add		x6, x6, x4	# 1423
	ori		x7, x0, 4	# 1414
	mul		x7, x6, x7	# 1414
	lw		x8, -16(x2)	# 1414
	add		x7, x8, x7	# 1414
	lw		x7, 0(x7)	# 1414
	lw		x9, -12(x2)	# 1415
	beq		x7, x9, beq.296067	# 1415
	ori		x10, x0, 4	# 1418
	mul		x7, x7, x10	# 1418
	lw		x10, -8(x2)	# 1418
	add		x7, x10, x7	# 1418
	lw		x7, 0(x7)	# 1418
	lw		x27, -4(x2)	# 1419
	sw		x6, -32(x2)	# 1419
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -36(x2)	# 1419
	addi	x2, x2, -40	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 40	# 1419
	lw		x1, -36(x2)	# 1419
	lw		x5, -28(x2)	# 1420
	beq		x4, x5, beq.296068	# 1420
	ori		x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.296068:
	lw		x4, -20(x2)	# 1423
	lw		x6, -32(x2)	# 1423
	add		x6, x6, x4	# 1423
	ori		x7, x0, 4	# 1414
	mul		x7, x6, x7	# 1414
	lw		x8, -16(x2)	# 1414
	add		x7, x8, x7	# 1414
	lw		x7, 0(x7)	# 1414
	lw		x9, -12(x2)	# 1415
	beq		x7, x9, beq.296069	# 1415
	ori		x10, x0, 4	# 1418
	mul		x7, x7, x10	# 1418
	lw		x10, -8(x2)	# 1418
	add		x7, x10, x7	# 1418
	lw		x7, 0(x7)	# 1418
	lw		x27, -4(x2)	# 1419
	sw		x6, -36(x2)	# 1419
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -40(x2)	# 1419
	addi	x2, x2, -44	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 44	# 1419
	lw		x1, -40(x2)	# 1419
	lw		x5, -28(x2)	# 1420
	beq		x4, x5, beq.296070	# 1420
	ori		x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.296070:
	lw		x4, -20(x2)	# 1423
	lw		x6, -36(x2)	# 1423
	add		x6, x6, x4	# 1423
	ori		x7, x0, 4	# 1414
	mul		x7, x6, x7	# 1414
	lw		x8, -16(x2)	# 1414
	add		x7, x8, x7	# 1414
	lw		x7, 0(x7)	# 1414
	lw		x9, -12(x2)	# 1415
	beq		x7, x9, beq.296071	# 1415
	ori		x10, x0, 4	# 1418
	mul		x7, x7, x10	# 1418
	lw		x10, -8(x2)	# 1418
	add		x7, x10, x7	# 1418
	lw		x7, 0(x7)	# 1418
	lw		x27, -4(x2)	# 1419
	sw		x6, -40(x2)	# 1419
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -44(x2)	# 1419
	addi	x2, x2, -48	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 48	# 1419
	lw		x1, -44(x2)	# 1419
	lw		x5, -28(x2)	# 1420
	beq		x4, x5, beq.296072	# 1420
	ori		x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.296072:
	lw		x4, -20(x2)	# 1423
	lw		x6, -40(x2)	# 1423
	add		x6, x6, x4	# 1423
	ori		x7, x0, 4	# 1414
	mul		x7, x6, x7	# 1414
	lw		x8, -16(x2)	# 1414
	add		x7, x8, x7	# 1414
	lw		x7, 0(x7)	# 1414
	lw		x9, -12(x2)	# 1415
	beq		x7, x9, beq.296073	# 1415
	ori		x10, x0, 4	# 1418
	mul		x7, x7, x10	# 1418
	lw		x10, -8(x2)	# 1418
	add		x7, x10, x7	# 1418
	lw		x7, 0(x7)	# 1418
	lw		x27, -4(x2)	# 1419
	sw		x6, -44(x2)	# 1419
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -48(x2)	# 1419
	addi	x2, x2, -52	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 52	# 1419
	lw		x1, -48(x2)	# 1419
	lw		x5, -28(x2)	# 1420
	beq		x4, x5, beq.296074	# 1420
	ori		x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.296074:
	lw		x4, -20(x2)	# 1423
	lw		x6, -44(x2)	# 1423
	add		x6, x6, x4	# 1423
	ori		x7, x0, 4	# 1414
	mul		x7, x6, x7	# 1414
	lw		x8, -16(x2)	# 1414
	add		x7, x8, x7	# 1414
	lw		x7, 0(x7)	# 1414
	lw		x9, -12(x2)	# 1415
	beq		x7, x9, beq.296075	# 1415
	ori		x10, x0, 4	# 1418
	mul		x7, x7, x10	# 1418
	lw		x10, -8(x2)	# 1418
	add		x7, x10, x7	# 1418
	lw		x7, 0(x7)	# 1418
	lw		x27, -4(x2)	# 1419
	sw		x6, -48(x2)	# 1419
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -52(x2)	# 1419
	addi	x2, x2, -56	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 56	# 1419
	lw		x1, -52(x2)	# 1419
	lw		x5, -28(x2)	# 1420
	beq		x4, x5, beq.296076	# 1420
	ori		x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.296076:
	lw		x4, -20(x2)	# 1423
	lw		x6, -48(x2)	# 1423
	add		x6, x6, x4	# 1423
	ori		x7, x0, 4	# 1414
	mul		x7, x6, x7	# 1414
	lw		x8, -16(x2)	# 1414
	add		x7, x8, x7	# 1414
	lw		x7, 0(x7)	# 1414
	lw		x9, -12(x2)	# 1415
	beq		x7, x9, beq.296077	# 1415
	ori		x10, x0, 4	# 1418
	mul		x7, x7, x10	# 1418
	lw		x10, -8(x2)	# 1418
	add		x7, x10, x7	# 1418
	lw		x7, 0(x7)	# 1418
	lw		x27, -4(x2)	# 1419
	sw		x6, -52(x2)	# 1419
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -56(x2)	# 1419
	addi	x2, x2, -60	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 60	# 1419
	lw		x1, -56(x2)	# 1419
	lw		x5, -28(x2)	# 1420
	beq		x4, x5, beq.296078	# 1420
	ori		x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.296078:
	lw		x4, -20(x2)	# 1423
	lw		x6, -52(x2)	# 1423
	add		x6, x6, x4	# 1423
	ori		x7, x0, 4	# 1414
	mul		x7, x6, x7	# 1414
	lw		x8, -16(x2)	# 1414
	add		x7, x8, x7	# 1414
	lw		x7, 0(x7)	# 1414
	lw		x9, -12(x2)	# 1415
	beq		x7, x9, beq.296079	# 1415
	ori		x9, x0, 4	# 1418
	mul		x7, x7, x9	# 1418
	lw		x9, -8(x2)	# 1418
	add		x7, x9, x7	# 1418
	lw		x7, 0(x7)	# 1418
	lw		x27, -4(x2)	# 1419
	sw		x6, -56(x2)	# 1419
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -60(x2)	# 1419
	addi	x2, x2, -64	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 64	# 1419
	lw		x1, -60(x2)	# 1419
	lw		x5, -28(x2)	# 1420
	beq		x4, x5, beq.296080	# 1420
	ori		x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.296080:
	lw		x4, -20(x2)	# 1423
	lw		x5, -56(x2)	# 1423
	add		x4, x5, x4	# 1423
	lw		x5, -16(x2)	# 1423
	lw		x27, 0(x2)	# 1423
	lw		x31, 0(x27)	# 1423
	jalr	x0, x31, 0	# 1423
beq.296079:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
beq.296077:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
beq.296075:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
beq.296073:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
beq.296071:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
beq.296069:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
beq.296067:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
beq.296065:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
shadow_check_one_or_matrix.2819:
	lw		x6, 64(x27)	# 1429
	lw		x7, 60(x27)	# 1429
	lw		x8, 56(x27)	# 1429
	lw		x9, 52(x27)	# 1429
	lw		x10, 48(x27)	# 1429
	lw		x11, 44(x27)	# 1429
	lw		x12, 40(x27)	# 1429
	lw		x13, 36(x27)	# 1429
	lw		x14, 32(x27)	# 1429
	lw		x15, 28(x27)	# 1429
	lw		x16, 24(x27)	# 1429
	lw		x17, 20(x27)	# 1429
	lw		x18, 16(x27)	# 1429
	lw		x19, 12(x27)	# 1429
	lw		x20, 8(x27)	# 1429
	flw		f0, 4(x27)	# 1429
	ori		x21, x0, 4	# 1429
	mul		x21, x4, x21	# 1429
	add		x21, x5, x21	# 1429
	lw		x21, 0(x21)	# 1429
	ori		x22, x0, 4	# 1430
	mul		x22, x19, x22	# 1430
	add		x22, x21, x22	# 1430
	lw		x22, 0(x22)	# 1430
	beq		x22, x17, beq.296081	# 1431
	ori		x23, x0, 99	# 1435
	sw		x10, 0(x2)	# 1435
	sw		x11, -4(x2)	# 1435
	sw		x15, -8(x2)	# 1435
	sw		x17, -12(x2)	# 1435
	sw		x21, -16(x2)	# 1435
	sw		x5, -20(x2)	# 1435
	sw		x27, -24(x2)	# 1435
	sw		x20, -28(x2)	# 1435
	sw		x4, -32(x2)	# 1435
	sw		x19, -36(x2)	# 1435
	beq		x22, x23, beq.296083	# 1435
	ori		x23, x0, 4	# 1126
	mul		x23, x22, x23	# 1126
	add		x12, x12, x23	# 1126
	lw		x12, 0(x12)	# 1126
	addi	x23, x0, 0	# 1127
	ori		x24, x0, 4	# 1127
	mul		x23, x23, x24	# 1127
	add		x23, x13, x23	# 1127
	flw		f1, 0(x23)	# 1127
	lw		x23, 20(x12)	# 431
	ori		x24, x0, 4	# 436
	mul		x24, x19, x24	# 436
	add		x23, x23, x24	# 436
	flw		f2, 0(x23)	# 436
	fsub	f1, f1, f2	# 1127
	ori		x23, x0, 1	# 1128
	ori		x24, x0, 4	# 1128
	mul		x23, x23, x24	# 1128
	add		x23, x13, x23	# 1128
	flw		f2, 0(x23)	# 1128
	lw		x23, 20(x12)	# 441
	ori		x24, x0, 4	# 446
	mul		x24, x20, x24	# 446
	add		x23, x23, x24	# 446
	flw		f3, 0(x23)	# 446
	fsub	f2, f2, f3	# 1128
	ori		x23, x0, 2	# 1129
	ori		x24, x0, 4	# 1129
	mul		x23, x23, x24	# 1129
	add		x13, x13, x23	# 1129
	flw		f3, 0(x13)	# 1129
	lw		x13, 20(x12)	# 451
	ori		x23, x0, 4	# 456
	mul		x23, x16, x23	# 456
	add		x13, x13, x23	# 456
	flw		f4, 0(x13)	# 456
	fsub	f3, f3, f4	# 1129
	ori		x13, x0, 4	# 1131
	mul		x13, x22, x13	# 1131
	add		x13, x14, x13	# 1131
	lw		x13, 0(x13)	# 1131
	lw		x14, 4(x12)	# 353
	ori		x22, x0, 1	# 1133
	sw		x9, -40(x2)	# 1133
	beq		x14, x22, beq.296085	# 1133
	ori		x6, x0, 2	# 1135
	beq		x14, x6, beq.296087	# 1135
	addi	x5, x13, 0
	addi	x4, x12, 0
	addi	x27, x7, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -44(x2)	# 1138
	addi	x2, x2, -48	# 1138
	lw		x31, 0(x27)	# 1138
	jalr	x1, x31, 0	# 1138
	addi	x2, x2, 48	# 1138
	lw		x1, -44(x2)	# 1138
	jal		x0, beq_cont.296086	# 1135
beq.296087:
	ori		x6, x0, 4	# 1097
	mul		x6, x19, x6	# 1097
	add		x6, x13, x6	# 1097
	flw		f4, 0(x6)	# 1097
	fle		x31, f0, f4	# 3
	beq		x31, x0, fle_else.296089	# 3
	addi	x6, x0, 0	# 3
	jal		x0, fle_cont.296088	# 3
fle_else.296089:
	ori		x6, x0, 1	# 3
fle_cont.296088:
	beq		x6, x19, beq.296091	# 1097
	ori		x6, x0, 4	# 1099
	mul		x6, x20, x6	# 1099
	add		x6, x13, x6	# 1099
	flw		f0, 0(x6)	# 1099
	fmul	f0, f0, f1	# 1099
	ori		x6, x0, 4	# 1099
	mul		x6, x16, x6	# 1099
	add		x6, x13, x6	# 1099
	flw		f1, 0(x6)	# 1099
	fmul	f1, f1, f2	# 1099
	fadd	f0, f0, f1	# 1099
	ori		x6, x0, 4	# 1099
	mul		x6, x18, x6	# 1099
	add		x6, x13, x6	# 1099
	flw		f1, 0(x6)	# 1099
	fmul	f1, f1, f3	# 1099
	fadd	f0, f0, f1	# 1099
	ori		x6, x0, 4	# 1098
	mul		x6, x19, x6	# 1098
	add		x6, x9, x6	# 1098
	fsw		f0, 0(x6)	# 1098
	ori		x4, x0, 1	# 1100
	jal		x0, beq_cont.296090	# 1097
beq.296091:
	addi	x4, x0, 0	# 1101
beq_cont.296090:
beq_cont.296086:
	jal		x0, beq_cont.296084	# 1133
beq.296085:
	addi	x5, x6, 0
	addi	x4, x12, 0
	addi	x27, x8, 0
	addi	x6, x13, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -44(x2)	# 1134
	addi	x2, x2, -48	# 1134
	lw		x31, 0(x27)	# 1134
	jalr	x1, x31, 0	# 1134
	addi	x2, x2, 48	# 1134
	lw		x1, -44(x2)	# 1134
beq_cont.296084:
	addi	x5, x0, 0	# 1441
	beq		x4, x5, beq.296093	# 1441
	addi	x4, x0, 0	# 1442
	ori		x5, x0, 4	# 1442
	mul		x4, x4, x5	# 1442
	lw		x5, -40(x2)	# 1442
	add		x4, x5, x4	# 1442
	flw		f0, 0(x4)	# 1442
	lui		x4, %hi(l.17059)	# 1442
	ori		x4, x0, %lo(l.17059)	# 1442
	flw		f1, 0(x4)	# 1442
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.296095	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.296094	# 6
fle_else.296095:
	ori		x4, x0, 1	# 6
fle_cont.296094:
	addi	x5, x0, 0	# 1442
	beq		x4, x5, beq.296097	# 1442
	ori		x4, x0, 1	# 1443
	ori		x5, x0, 4	# 1414
	mul		x4, x4, x5	# 1414
	lw		x5, -16(x2)	# 1414
	add		x4, x5, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lui		x6, -1	# 1415
	ori		x6, x0, -1	# 1415
	beq		x4, x6, beq.296099	# 1415
	ori		x6, x0, 4	# 1418
	mul		x4, x4, x6	# 1418
	lw		x6, -8(x2)	# 1418
	add		x4, x6, x4	# 1418
	lw		x4, 0(x4)	# 1418
	addi	x7, x0, 0	# 1419
	lw		x27, -4(x2)	# 1419
	addi	x5, x4, 0
	addi	x4, x7, 0
	sw		x1, -44(x2)	# 1419
	addi	x2, x2, -48	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 48	# 1419
	lw		x1, -44(x2)	# 1419
	addi	x5, x0, 0	# 1420
	beq		x4, x5, beq.296101	# 1420
	ori		x4, x0, 1	# 1421
	jal		x0, beq_cont.296100	# 1420
beq.296101:
	ori		x4, x0, 2	# 1423
	ori		x5, x0, 4	# 1414
	mul		x4, x4, x5	# 1414
	lw		x5, -16(x2)	# 1414
	add		x4, x5, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lw		x6, -12(x2)	# 1415
	beq		x4, x6, beq.296103	# 1415
	ori		x7, x0, 4	# 1418
	mul		x4, x4, x7	# 1418
	lw		x7, -8(x2)	# 1418
	add		x4, x7, x4	# 1418
	lw		x4, 0(x4)	# 1418
	lw		x8, -36(x2)	# 1419
	lw		x27, -4(x2)	# 1419
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -44(x2)	# 1419
	addi	x2, x2, -48	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 48	# 1419
	lw		x1, -44(x2)	# 1419
	lw		x5, -36(x2)	# 1420
	beq		x4, x5, beq.296105	# 1420
	ori		x4, x0, 1	# 1421
	jal		x0, beq_cont.296104	# 1420
beq.296105:
	ori		x4, x0, 3	# 1423
	ori		x6, x0, 4	# 1414
	mul		x4, x4, x6	# 1414
	lw		x6, -16(x2)	# 1414
	add		x4, x6, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lw		x7, -12(x2)	# 1415
	beq		x4, x7, beq.296107	# 1415
	ori		x8, x0, 4	# 1418
	mul		x4, x4, x8	# 1418
	lw		x8, -8(x2)	# 1418
	add		x4, x8, x4	# 1418
	lw		x4, 0(x4)	# 1418
	lw		x27, -4(x2)	# 1419
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -44(x2)	# 1419
	addi	x2, x2, -48	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 48	# 1419
	lw		x1, -44(x2)	# 1419
	lw		x5, -36(x2)	# 1420
	beq		x4, x5, beq.296109	# 1420
	ori		x4, x0, 1	# 1421
	jal		x0, beq_cont.296108	# 1420
beq.296109:
	ori		x4, x0, 4	# 1423
	ori		x6, x0, 4	# 1414
	mul		x4, x4, x6	# 1414
	lw		x6, -16(x2)	# 1414
	add		x4, x6, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lw		x7, -12(x2)	# 1415
	beq		x4, x7, beq.296111	# 1415
	ori		x8, x0, 4	# 1418
	mul		x4, x4, x8	# 1418
	lw		x8, -8(x2)	# 1418
	add		x4, x8, x4	# 1418
	lw		x4, 0(x4)	# 1418
	lw		x27, -4(x2)	# 1419
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -44(x2)	# 1419
	addi	x2, x2, -48	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 48	# 1419
	lw		x1, -44(x2)	# 1419
	lw		x5, -36(x2)	# 1420
	beq		x4, x5, beq.296113	# 1420
	ori		x4, x0, 1	# 1421
	jal		x0, beq_cont.296112	# 1420
beq.296113:
	ori		x4, x0, 5	# 1423
	ori		x6, x0, 4	# 1414
	mul		x4, x4, x6	# 1414
	lw		x6, -16(x2)	# 1414
	add		x4, x6, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lw		x7, -12(x2)	# 1415
	beq		x4, x7, beq.296115	# 1415
	ori		x8, x0, 4	# 1418
	mul		x4, x4, x8	# 1418
	lw		x8, -8(x2)	# 1418
	add		x4, x8, x4	# 1418
	lw		x4, 0(x4)	# 1418
	lw		x27, -4(x2)	# 1419
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -44(x2)	# 1419
	addi	x2, x2, -48	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 48	# 1419
	lw		x1, -44(x2)	# 1419
	lw		x5, -36(x2)	# 1420
	beq		x4, x5, beq.296117	# 1420
	ori		x4, x0, 1	# 1421
	jal		x0, beq_cont.296116	# 1420
beq.296117:
	ori		x4, x0, 6	# 1423
	ori		x6, x0, 4	# 1414
	mul		x4, x4, x6	# 1414
	lw		x6, -16(x2)	# 1414
	add		x4, x6, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lw		x7, -12(x2)	# 1415
	beq		x4, x7, beq.296119	# 1415
	ori		x8, x0, 4	# 1418
	mul		x4, x4, x8	# 1418
	lw		x8, -8(x2)	# 1418
	add		x4, x8, x4	# 1418
	lw		x4, 0(x4)	# 1418
	lw		x27, -4(x2)	# 1419
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -44(x2)	# 1419
	addi	x2, x2, -48	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 48	# 1419
	lw		x1, -44(x2)	# 1419
	lw		x5, -36(x2)	# 1420
	beq		x4, x5, beq.296121	# 1420
	ori		x4, x0, 1	# 1421
	jal		x0, beq_cont.296120	# 1420
beq.296121:
	ori		x4, x0, 7	# 1423
	ori		x6, x0, 4	# 1414
	mul		x4, x4, x6	# 1414
	lw		x6, -16(x2)	# 1414
	add		x4, x6, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lw		x7, -12(x2)	# 1415
	beq		x4, x7, beq.296123	# 1415
	ori		x8, x0, 4	# 1418
	mul		x4, x4, x8	# 1418
	lw		x8, -8(x2)	# 1418
	add		x4, x8, x4	# 1418
	lw		x4, 0(x4)	# 1418
	lw		x27, -4(x2)	# 1419
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -44(x2)	# 1419
	addi	x2, x2, -48	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 48	# 1419
	lw		x1, -44(x2)	# 1419
	lw		x5, -36(x2)	# 1420
	beq		x4, x5, beq.296125	# 1420
	ori		x4, x0, 1	# 1421
	jal		x0, beq_cont.296124	# 1420
beq.296125:
	ori		x4, x0, 8	# 1423
	lw		x6, -16(x2)	# 1423
	lw		x27, 0(x2)	# 1423
	addi	x5, x6, 0
	sw		x1, -44(x2)	# 1423
	addi	x2, x2, -48	# 1423
	lw		x31, 0(x27)	# 1423
	jalr	x1, x31, 0	# 1423
	addi	x2, x2, 48	# 1423
	lw		x1, -44(x2)	# 1423
beq_cont.296124:
	jal		x0, beq_cont.296122	# 1415
beq.296123:
	addi	x4, x0, 0	# 1416
beq_cont.296122:
beq_cont.296120:
	jal		x0, beq_cont.296118	# 1415
beq.296119:
	addi	x4, x0, 0	# 1416
beq_cont.296118:
beq_cont.296116:
	jal		x0, beq_cont.296114	# 1415
beq.296115:
	addi	x4, x0, 0	# 1416
beq_cont.296114:
beq_cont.296112:
	jal		x0, beq_cont.296110	# 1415
beq.296111:
	addi	x4, x0, 0	# 1416
beq_cont.296110:
beq_cont.296108:
	jal		x0, beq_cont.296106	# 1415
beq.296107:
	addi	x4, x0, 0	# 1416
beq_cont.296106:
beq_cont.296104:
	jal		x0, beq_cont.296102	# 1415
beq.296103:
	addi	x4, x0, 0	# 1416
beq_cont.296102:
beq_cont.296100:
	jal		x0, beq_cont.296098	# 1415
beq.296099:
	addi	x4, x0, 0	# 1416
beq_cont.296098:
	addi	x5, x0, 0	# 1443
	beq		x4, x5, beq.296127	# 1443
	ori		x4, x0, 1	# 1444
	jal		x0, beq_cont.296126	# 1443
beq.296127:
	addi	x4, x0, 0	# 1445
beq_cont.296126:
	jal		x0, beq_cont.296096	# 1442
beq.296097:
	addi	x4, x0, 0	# 1446
beq_cont.296096:
	jal		x0, beq_cont.296092	# 1441
beq.296093:
	addi	x4, x0, 0	# 1447
beq_cont.296092:
	jal		x0, beq_cont.296082	# 1435
beq.296083:
	ori		x4, x0, 1	# 1436
beq_cont.296082:
	lw		x5, -36(x2)	# 1434
	beq		x4, x5, beq.296128	# 1434
	ori		x4, x0, 4	# 1414
	lw		x6, -28(x2)	# 1414
	mul		x4, x6, x4	# 1414
	lw		x7, -16(x2)	# 1414
	add		x4, x7, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lw		x8, -12(x2)	# 1415
	beq		x4, x8, beq.296130	# 1415
	ori		x9, x0, 4	# 1418
	mul		x4, x4, x9	# 1418
	lw		x9, -8(x2)	# 1418
	add		x4, x9, x4	# 1418
	lw		x4, 0(x4)	# 1418
	addi	x10, x0, 0	# 1419
	lw		x27, -4(x2)	# 1419
	addi	x5, x4, 0
	addi	x4, x10, 0
	sw		x1, -44(x2)	# 1419
	addi	x2, x2, -48	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 48	# 1419
	lw		x1, -44(x2)	# 1419
	addi	x5, x0, 0	# 1420
	beq		x4, x5, beq.296132	# 1420
	ori		x4, x0, 1	# 1421
	jal		x0, beq_cont.296131	# 1420
beq.296132:
	ori		x4, x0, 2	# 1423
	ori		x5, x0, 4	# 1414
	mul		x4, x4, x5	# 1414
	lw		x5, -16(x2)	# 1414
	add		x4, x5, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lw		x6, -12(x2)	# 1415
	beq		x4, x6, beq.296134	# 1415
	ori		x7, x0, 4	# 1418
	mul		x4, x4, x7	# 1418
	lw		x7, -8(x2)	# 1418
	add		x4, x7, x4	# 1418
	lw		x4, 0(x4)	# 1418
	lw		x8, -36(x2)	# 1419
	lw		x27, -4(x2)	# 1419
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -44(x2)	# 1419
	addi	x2, x2, -48	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 48	# 1419
	lw		x1, -44(x2)	# 1419
	lw		x5, -36(x2)	# 1420
	beq		x4, x5, beq.296136	# 1420
	ori		x4, x0, 1	# 1421
	jal		x0, beq_cont.296135	# 1420
beq.296136:
	ori		x4, x0, 3	# 1423
	ori		x6, x0, 4	# 1414
	mul		x4, x4, x6	# 1414
	lw		x6, -16(x2)	# 1414
	add		x4, x6, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lw		x7, -12(x2)	# 1415
	beq		x4, x7, beq.296138	# 1415
	ori		x8, x0, 4	# 1418
	mul		x4, x4, x8	# 1418
	lw		x8, -8(x2)	# 1418
	add		x4, x8, x4	# 1418
	lw		x4, 0(x4)	# 1418
	lw		x27, -4(x2)	# 1419
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -44(x2)	# 1419
	addi	x2, x2, -48	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 48	# 1419
	lw		x1, -44(x2)	# 1419
	lw		x5, -36(x2)	# 1420
	beq		x4, x5, beq.296140	# 1420
	ori		x4, x0, 1	# 1421
	jal		x0, beq_cont.296139	# 1420
beq.296140:
	ori		x4, x0, 4	# 1423
	ori		x6, x0, 4	# 1414
	mul		x4, x4, x6	# 1414
	lw		x6, -16(x2)	# 1414
	add		x4, x6, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lw		x7, -12(x2)	# 1415
	beq		x4, x7, beq.296142	# 1415
	ori		x8, x0, 4	# 1418
	mul		x4, x4, x8	# 1418
	lw		x8, -8(x2)	# 1418
	add		x4, x8, x4	# 1418
	lw		x4, 0(x4)	# 1418
	lw		x27, -4(x2)	# 1419
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -44(x2)	# 1419
	addi	x2, x2, -48	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 48	# 1419
	lw		x1, -44(x2)	# 1419
	lw		x5, -36(x2)	# 1420
	beq		x4, x5, beq.296144	# 1420
	ori		x4, x0, 1	# 1421
	jal		x0, beq_cont.296143	# 1420
beq.296144:
	ori		x4, x0, 5	# 1423
	ori		x6, x0, 4	# 1414
	mul		x4, x4, x6	# 1414
	lw		x6, -16(x2)	# 1414
	add		x4, x6, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lw		x7, -12(x2)	# 1415
	beq		x4, x7, beq.296146	# 1415
	ori		x8, x0, 4	# 1418
	mul		x4, x4, x8	# 1418
	lw		x8, -8(x2)	# 1418
	add		x4, x8, x4	# 1418
	lw		x4, 0(x4)	# 1418
	lw		x27, -4(x2)	# 1419
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -44(x2)	# 1419
	addi	x2, x2, -48	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 48	# 1419
	lw		x1, -44(x2)	# 1419
	lw		x5, -36(x2)	# 1420
	beq		x4, x5, beq.296148	# 1420
	ori		x4, x0, 1	# 1421
	jal		x0, beq_cont.296147	# 1420
beq.296148:
	ori		x4, x0, 6	# 1423
	ori		x6, x0, 4	# 1414
	mul		x4, x4, x6	# 1414
	lw		x6, -16(x2)	# 1414
	add		x4, x6, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lw		x7, -12(x2)	# 1415
	beq		x4, x7, beq.296150	# 1415
	ori		x8, x0, 4	# 1418
	mul		x4, x4, x8	# 1418
	lw		x8, -8(x2)	# 1418
	add		x4, x8, x4	# 1418
	lw		x4, 0(x4)	# 1418
	lw		x27, -4(x2)	# 1419
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -44(x2)	# 1419
	addi	x2, x2, -48	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 48	# 1419
	lw		x1, -44(x2)	# 1419
	lw		x5, -36(x2)	# 1420
	beq		x4, x5, beq.296152	# 1420
	ori		x4, x0, 1	# 1421
	jal		x0, beq_cont.296151	# 1420
beq.296152:
	ori		x4, x0, 7	# 1423
	ori		x6, x0, 4	# 1414
	mul		x4, x4, x6	# 1414
	lw		x6, -16(x2)	# 1414
	add		x4, x6, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lw		x7, -12(x2)	# 1415
	beq		x4, x7, beq.296154	# 1415
	ori		x7, x0, 4	# 1418
	mul		x4, x4, x7	# 1418
	lw		x7, -8(x2)	# 1418
	add		x4, x7, x4	# 1418
	lw		x4, 0(x4)	# 1418
	lw		x27, -4(x2)	# 1419
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -44(x2)	# 1419
	addi	x2, x2, -48	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 48	# 1419
	lw		x1, -44(x2)	# 1419
	lw		x5, -36(x2)	# 1420
	beq		x4, x5, beq.296156	# 1420
	ori		x4, x0, 1	# 1421
	jal		x0, beq_cont.296155	# 1420
beq.296156:
	ori		x4, x0, 8	# 1423
	lw		x6, -16(x2)	# 1423
	lw		x27, 0(x2)	# 1423
	addi	x5, x6, 0
	sw		x1, -44(x2)	# 1423
	addi	x2, x2, -48	# 1423
	lw		x31, 0(x27)	# 1423
	jalr	x1, x31, 0	# 1423
	addi	x2, x2, 48	# 1423
	lw		x1, -44(x2)	# 1423
beq_cont.296155:
	jal		x0, beq_cont.296153	# 1415
beq.296154:
	addi	x4, x0, 0	# 1416
beq_cont.296153:
beq_cont.296151:
	jal		x0, beq_cont.296149	# 1415
beq.296150:
	addi	x4, x0, 0	# 1416
beq_cont.296149:
beq_cont.296147:
	jal		x0, beq_cont.296145	# 1415
beq.296146:
	addi	x4, x0, 0	# 1416
beq_cont.296145:
beq_cont.296143:
	jal		x0, beq_cont.296141	# 1415
beq.296142:
	addi	x4, x0, 0	# 1416
beq_cont.296141:
beq_cont.296139:
	jal		x0, beq_cont.296137	# 1415
beq.296138:
	addi	x4, x0, 0	# 1416
beq_cont.296137:
beq_cont.296135:
	jal		x0, beq_cont.296133	# 1415
beq.296134:
	addi	x4, x0, 0	# 1416
beq_cont.296133:
beq_cont.296131:
	jal		x0, beq_cont.296129	# 1415
beq.296130:
	addi	x4, x0, 0	# 1416
beq_cont.296129:
	lw		x5, -36(x2)	# 1449
	beq		x4, x5, beq.296157	# 1449
	ori		x4, x0, 1	# 1450
	jalr	x0, x1, 0	# 1450
beq.296157:
	lw		x4, -28(x2)	# 1452
	lw		x5, -32(x2)	# 1452
	add		x4, x5, x4	# 1452
	lw		x5, -20(x2)	# 1452
	lw		x27, -24(x2)	# 1452
	lw		x31, 0(x27)	# 1452
	jalr	x0, x31, 0	# 1452
beq.296128:
	lw		x4, -28(x2)	# 1454
	lw		x5, -32(x2)	# 1454
	add		x4, x5, x4	# 1454
	lw		x5, -20(x2)	# 1454
	lw		x27, -24(x2)	# 1454
	lw		x31, 0(x27)	# 1454
	jalr	x0, x31, 0	# 1454
beq.296081:
	addi	x4, x0, 0	# 1432
	jalr	x0, x1, 0	# 1432
solve_each_element.2822:
	lw		x7, 72(x27)	# 1465
	lw		x8, 68(x27)	# 1465
	lw		x9, 64(x27)	# 1465
	lw		x10, 60(x27)	# 1465
	lw		x11, 56(x27)	# 1465
	lw		x12, 52(x27)	# 1465
	lw		x13, 48(x27)	# 1465
	lw		x14, 44(x27)	# 1465
	lw		x15, 40(x27)	# 1465
	lw		x16, 36(x27)	# 1465
	lw		x17, 32(x27)	# 1465
	lw		x18, 28(x27)	# 1465
	lw		x19, 24(x27)	# 1465
	lw		x20, 20(x27)	# 1465
	lw		x21, 16(x27)	# 1465
	lw		x22, 12(x27)	# 1465
	lw		x23, 8(x27)	# 1465
	flw		f0, 4(x27)	# 1465
	ori		x24, x0, 4	# 1465
	mul		x24, x4, x24	# 1465
	add		x24, x5, x24	# 1465
	lw		x24, 0(x24)	# 1465
	beq		x24, x20, beq.296158	# 1466
	ori		x25, x0, 4	# 1032
	mul		x25, x24, x25	# 1032
	add		x25, x13, x25	# 1032
	lw		x25, 0(x25)	# 1032
	ori		x26, x0, 4	# 1034
	mul		x26, x22, x26	# 1034
	add		x26, x8, x26	# 1034
	flw		f1, 0(x26)	# 1034
	lw		x26, 20(x25)	# 431
	ori		x31, x0, 4	# 436
	mul		x31, x22, x31	# 436
	add		x26, x26, x31	# 436
	flw		f2, 0(x26)	# 436
	fsub	f1, f1, f2	# 1034
	ori		x26, x0, 4	# 1035
	mul		x26, x23, x26	# 1035
	add		x26, x8, x26	# 1035
	flw		f2, 0(x26)	# 1035
	lw		x26, 20(x25)	# 441
	ori		x31, x0, 4	# 446
	mul		x31, x23, x31	# 446
	add		x26, x26, x31	# 446
	flw		f3, 0(x26)	# 446
	fsub	f2, f2, f3	# 1035
	ori		x26, x0, 4	# 1036
	mul		x26, x19, x26	# 1036
	add		x26, x8, x26	# 1036
	flw		f3, 0(x26)	# 1036
	lw		x26, 20(x25)	# 451
	ori		x31, x0, 4	# 456
	mul		x31, x19, x31	# 456
	add		x26, x26, x31	# 456
	flw		f4, 0(x26)	# 456
	fsub	f3, f3, f4	# 1036
	lw		x26, 4(x25)	# 353
	sw		x15, 0(x2)	# 1039
	sw		x17, -4(x2)	# 1039
	sw		x16, -8(x2)	# 1039
	sw		x18, -12(x2)	# 1039
	sw		x21, -16(x2)	# 1039
	sw		x12, -20(x2)	# 1039
	sw		x19, -24(x2)	# 1039
	sw		x20, -28(x2)	# 1039
	sw		x14, -32(x2)	# 1039
	sw		x8, -36(x2)	# 1039
	sw		x7, -40(x2)	# 1039
	fsw		f0, -48(x2)	# 1039
	sw		x11, -56(x2)	# 1039
	sw		x6, -60(x2)	# 1039
	sw		x5, -64(x2)	# 1039
	sw		x27, -68(x2)	# 1039
	sw		x23, -72(x2)	# 1039
	sw		x4, -76(x2)	# 1039
	sw		x13, -80(x2)	# 1039
	sw		x24, -84(x2)	# 1039
	sw		x22, -88(x2)	# 1039
	beq		x26, x23, beq.296161	# 1039
	ori		x10, x0, 2	# 1040
	beq		x26, x10, beq.296163	# 1040
	addi	x5, x6, 0
	addi	x4, x25, 0
	addi	x27, x9, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -92(x2)	# 1041
	addi	x2, x2, -96	# 1041
	lw		x31, 0(x27)	# 1041
	jalr	x1, x31, 0	# 1041
	addi	x2, x2, 96	# 1041
	lw		x1, -92(x2)	# 1041
	jal		x0, beq_cont.296162	# 1040
beq.296163:
	lw		x9, 16(x25)	# 421
	ori		x10, x0, 4	# 292
	mul		x10, x22, x10	# 292
	add		x10, x6, x10	# 292
	flw		f4, 0(x10)	# 292
	ori		x10, x0, 4	# 292
	mul		x10, x22, x10	# 292
	add		x10, x9, x10	# 292
	flw		f5, 0(x10)	# 292
	fmul	f4, f4, f5	# 292
	ori		x10, x0, 4	# 292
	mul		x10, x23, x10	# 292
	add		x10, x6, x10	# 292
	flw		f6, 0(x10)	# 292
	ori		x10, x0, 4	# 292
	mul		x10, x23, x10	# 292
	add		x10, x9, x10	# 292
	flw		f7, 0(x10)	# 292
	fmul	f6, f6, f7	# 292
	fadd	f4, f4, f6	# 292
	ori		x10, x0, 4	# 292
	mul		x10, x19, x10	# 292
	add		x10, x6, x10	# 292
	flw		f6, 0(x10)	# 292
	ori		x10, x0, 4	# 292
	mul		x10, x19, x10	# 292
	add		x9, x9, x10	# 292
	flw		f8, 0(x9)	# 292
	fmul	f6, f6, f8	# 292
	fadd	f4, f4, f6	# 292
	fle		x31, f4, f0	# 2
	beq		x31, x0, fle_else.296165	# 2
	addi	x9, x0, 0	# 2
	jal		x0, fle_cont.296164	# 2
fle_else.296165:
	ori		x9, x0, 1	# 2
fle_cont.296164:
	beq		x9, x22, beq.296167	# 956
	fmul	f1, f5, f1	# 297
	fmul	f2, f7, f2	# 297
	fadd	f1, f1, f2	# 297
	fmul	f2, f8, f3	# 297
	fadd	f1, f1, f2	# 297
	fsub	x31, x31, x31	# 4
	fsub	f1, x31, f1	# 4
	fdiv	f1, f1, f4	# 957
	ori		x9, x0, 4	# 957
	mul		x9, x22, x9	# 957
	add		x9, x11, x9	# 957
	fsw		f1, 0(x9)	# 957
	ori		x4, x0, 1	# 958
	jal		x0, beq_cont.296166	# 956
beq.296167:
	addi	x4, x0, 0	# 959
beq_cont.296166:
beq_cont.296162:
	jal		x0, beq_cont.296160	# 1039
beq.296161:
	fsw		f1, -96(x2)	# 943
	fsw		f3, -104(x2)	# 943
	fsw		f2, -112(x2)	# 943
	sw		x25, -120(x2)	# 943
	sw		x10, -124(x2)	# 943
	addi	x8, x19, 0
	addi	x7, x23, 0
	addi	x5, x6, 0
	addi	x4, x25, 0
	addi	x27, x10, 0
	addi	x6, x22, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -128(x2)	# 943
	addi	x2, x2, -132	# 943
	lw		x31, 0(x27)	# 943
	jalr	x1, x31, 0	# 943
	addi	x2, x2, 132	# 943
	lw		x1, -128(x2)	# 943
	lw		x8, -88(x2)	# 943
	beq		x4, x8, beq.296170	# 943
	ori		x4, x0, 1	# 943
	jal		x0, beq_cont.296169	# 943
beq.296170:
	flw		f0, -112(x2)	# 944
	flw		f1, -104(x2)	# 944
	flw		f2, -96(x2)	# 944
	lw		x4, -120(x2)	# 944
	lw		x5, -60(x2)	# 944
	lw		x6, -72(x2)	# 944
	lw		x7, -24(x2)	# 944
	lw		x27, -124(x2)	# 944
	sw		x1, -128(x2)	# 944
	addi	x2, x2, -132	# 944
	lw		x31, 0(x27)	# 944
	jalr	x1, x31, 0	# 944
	addi	x2, x2, 132	# 944
	lw		x1, -128(x2)	# 944
	lw		x7, -88(x2)	# 944
	beq		x4, x7, beq.296172	# 944
	ori		x4, x0, 2	# 944
	jal		x0, beq_cont.296171	# 944
beq.296172:
	flw		f0, -104(x2)	# 945
	flw		f1, -96(x2)	# 945
	flw		f2, -112(x2)	# 945
	lw		x4, -120(x2)	# 945
	lw		x5, -60(x2)	# 945
	lw		x6, -24(x2)	# 945
	lw		x8, -72(x2)	# 945
	lw		x27, -124(x2)	# 945
	sw		x1, -128(x2)	# 945
	addi	x2, x2, -132	# 945
	lw		x31, 0(x27)	# 945
	jalr	x1, x31, 0	# 945
	addi	x2, x2, 132	# 945
	lw		x1, -128(x2)	# 945
	lw		x5, -88(x2)	# 945
	beq		x4, x5, beq.296174	# 945
	ori		x4, x0, 3	# 945
	jal		x0, beq_cont.296173	# 945
beq.296174:
	addi	x4, x0, 0	# 946
beq_cont.296173:
beq_cont.296171:
beq_cont.296169:
beq_cont.296160:
	lw		x5, -88(x2)	# 1469
	beq		x4, x5, beq.296175	# 1469
	ori		x6, x0, 4	# 1473
	mul		x6, x5, x6	# 1473
	lw		x7, -56(x2)	# 1473
	add		x6, x7, x6	# 1473
	flw		f0, 0(x6)	# 1473
	flw		f1, -48(x2)	# 6
	fle		x31, f0, f1	# 6
	beq		x31, x0, fle_else.296177	# 6
	addi	x6, x0, 0	# 6
	jal		x0, fle_cont.296176	# 6
fle_else.296177:
	ori		x6, x0, 1	# 6
fle_cont.296176:
	beq		x6, x5, beq.296179	# 1475
	addi	x6, x0, 0	# 1476
	ori		x7, x0, 4	# 1476
	mul		x6, x6, x7	# 1476
	lw		x7, -40(x2)	# 1476
	add		x6, x7, x6	# 1476
	flw		f2, 0(x6)	# 1476
	fle		x31, f2, f0	# 6
	beq		x31, x0, fle_else.296181	# 6
	addi	x6, x0, 0	# 6
	jal		x0, fle_cont.296180	# 6
fle_else.296181:
	ori		x6, x0, 1	# 6
fle_cont.296180:
	addi	x8, x0, 0	# 1476
	beq		x6, x8, beq.296183	# 1476
	lui		x6, %hi(l.16894)	# 1478
	ori		x6, x0, %lo(l.16894)	# 1478
	flw		f2, 0(x6)	# 1478
	fadd	f0, f0, f2	# 1478
	addi	x6, x0, 0	# 1479
	ori		x8, x0, 4	# 1479
	mul		x6, x6, x8	# 1479
	lw		x8, -60(x2)	# 1479
	add		x6, x8, x6	# 1479
	flw		f2, 0(x6)	# 1479
	fmul	f2, f2, f0	# 1479
	addi	x6, x0, 0	# 1479
	ori		x9, x0, 4	# 1479
	mul		x6, x6, x9	# 1479
	lw		x9, -36(x2)	# 1479
	add		x6, x9, x6	# 1479
	flw		f3, 0(x6)	# 1479
	fadd	f2, f2, f3	# 1479
	ori		x6, x0, 1	# 1480
	ori		x10, x0, 4	# 1480
	mul		x6, x6, x10	# 1480
	add		x6, x8, x6	# 1480
	flw		f3, 0(x6)	# 1480
	fmul	f3, f3, f0	# 1480
	ori		x6, x0, 1	# 1480
	ori		x10, x0, 4	# 1480
	mul		x6, x6, x10	# 1480
	add		x6, x9, x6	# 1480
	flw		f4, 0(x6)	# 1480
	fadd	f3, f3, f4	# 1480
	ori		x6, x0, 2	# 1481
	ori		x10, x0, 4	# 1481
	mul		x6, x6, x10	# 1481
	add		x6, x8, x6	# 1481
	flw		f4, 0(x6)	# 1481
	fmul	f4, f4, f0	# 1481
	ori		x6, x0, 2	# 1481
	ori		x10, x0, 4	# 1481
	mul		x6, x6, x10	# 1481
	add		x6, x9, x6	# 1481
	flw		f5, 0(x6)	# 1481
	fadd	f4, f4, f5	# 1481
	addi	x6, x0, 0	# 1482
	ori		x9, x0, 4	# 1364
	mul		x6, x6, x9	# 1364
	lw		x9, -64(x2)	# 1364
	add		x6, x9, x6	# 1364
	lw		x6, 0(x6)	# 1364
	lui		x10, -1	# 1365
	ori		x10, x0, -1	# 1365
	sw		x4, -128(x2)	# 1365
	fsw		f4, -136(x2)	# 1365
	fsw		f3, -144(x2)	# 1365
	fsw		f2, -152(x2)	# 1365
	fsw		f0, -160(x2)	# 1365
	beq		x6, x10, beq.296186	# 1365
	ori		x10, x0, 4	# 1368
	mul		x6, x6, x10	# 1368
	lw		x10, -80(x2)	# 1368
	add		x6, x10, x6	# 1368
	lw		x6, 0(x6)	# 1368
	lw		x27, -32(x2)	# 1368
	addi	x4, x6, 0
	fsub	f1, f1, f1
	fadd	f1, f1, f3
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f4
	sw		x1, -168(x2)	# 1368
	addi	x2, x2, -172	# 1368
	lw		x31, 0(x27)	# 1368
	jalr	x1, x31, 0	# 1368
	addi	x2, x2, 172	# 1368
	lw		x1, -168(x2)	# 1368
	addi	x5, x0, 0	# 1368
	beq		x4, x5, beq.296188	# 1368
	addi	x4, x0, 0	# 1369
	jal		x0, beq_cont.296187	# 1368
beq.296188:
	ori		x4, x0, 1	# 1371
	ori		x5, x0, 4	# 1364
	mul		x4, x4, x5	# 1364
	lw		x5, -64(x2)	# 1364
	add		x4, x5, x4	# 1364
	lw		x4, 0(x4)	# 1364
	lw		x6, -28(x2)	# 1365
	beq		x4, x6, beq.296190	# 1365
	ori		x7, x0, 4	# 1368
	mul		x4, x4, x7	# 1368
	lw		x7, -80(x2)	# 1368
	add		x4, x7, x4	# 1368
	lw		x4, 0(x4)	# 1368
	lw		x8, 20(x4)	# 431
	ori		x9, x0, 4	# 436
	lw		x10, -88(x2)	# 436
	mul		x9, x10, x9	# 436
	add		x8, x8, x9	# 436
	flw		f0, 0(x8)	# 436
	flw		f1, -152(x2)	# 1350
	fsub	f0, f1, f0	# 1350
	lw		x8, 20(x4)	# 441
	ori		x9, x0, 4	# 446
	lw		x11, -72(x2)	# 446
	mul		x9, x11, x9	# 446
	add		x8, x8, x9	# 446
	flw		f2, 0(x8)	# 446
	flw		f3, -144(x2)	# 1351
	fsub	f2, f3, f2	# 1351
	lw		x8, 20(x4)	# 451
	ori		x9, x0, 4	# 456
	lw		x12, -24(x2)	# 456
	mul		x9, x12, x9	# 456
	add		x8, x8, x9	# 456
	flw		f4, 0(x8)	# 456
	flw		f5, -136(x2)	# 1352
	fsub	f4, f5, f4	# 1352
	lw		x8, 4(x4)	# 353
	ori		x9, x0, 1	# 1354
	beq		x8, x9, beq.296192	# 1354
	ori		x9, x0, 2	# 1356
	beq		x8, x9, beq.296194	# 1356
	lw		x27, -20(x2)	# 1343
	sw		x4, -168(x2)	# 1343
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f4
	sw		x1, -172(x2)	# 1343
	addi	x2, x2, -176	# 1343
	lw		x31, 0(x27)	# 1343
	jalr	x1, x31, 0	# 1343
	addi	x2, x2, 176	# 1343
	lw		x1, -172(x2)	# 1343
	lw		x4, -168(x2)	# 353
	lw		x5, 4(x4)	# 353
	lw		x6, -16(x2)	# 1344
	beq		x5, x6, beq.296196	# 1344
	jal		x0, beq_cont.296195	# 1344
beq.296196:
	lui		x5, %hi(l.15661)	# 1344
	ori		x5, x0, %lo(l.15661)	# 1344
	flw		f1, 0(x5)	# 1344
	fsub	f0, f0, f1	# 1344
beq_cont.296195:
	lw		x4, 24(x4)	# 373
	flw		f1, -48(x2)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.296198	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.296197	# 3
fle_else.296198:
	ori		x5, x0, 1	# 3
fle_cont.296197:
	lw		x6, -88(x2)	# 204
	beq		x4, x6, beq.296200	# 204
	beq		x5, x6, beq.296202	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.296201	# 204
beq.296202:
	ori		x4, x0, 1	# 204
beq_cont.296201:
	jal		x0, beq_cont.296199	# 204
beq.296200:
	addi	x4, x5, 0	# 204
beq_cont.296199:
	beq		x4, x6, beq.296204	# 1345
	addi	x4, x0, 0	# 1345
	jal		x0, beq_cont.296203	# 1345
beq.296204:
	ori		x4, x0, 1	# 1345
beq_cont.296203:
	jal		x0, beq_cont.296193	# 1356
beq.296194:
	lw		x8, 16(x4)	# 421
	ori		x9, x0, 4	# 297
	mul		x9, x10, x9	# 297
	add		x9, x8, x9	# 297
	flw		f6, 0(x9)	# 297
	fmul	f0, f6, f0	# 297
	ori		x9, x0, 4	# 297
	mul		x9, x11, x9	# 297
	add		x9, x8, x9	# 297
	flw		f6, 0(x9)	# 297
	fmul	f2, f6, f2	# 297
	fadd	f0, f0, f2	# 297
	ori		x9, x0, 4	# 297
	mul		x9, x12, x9	# 297
	add		x8, x8, x9	# 297
	flw		f2, 0(x8)	# 297
	fmul	f2, f2, f4	# 297
	fadd	f0, f0, f2	# 297
	lw		x4, 24(x4)	# 373
	flw		f2, -48(x2)	# 3
	fle		x31, f2, f0	# 3
	beq		x31, x0, fle_else.296206	# 3
	addi	x8, x0, 0	# 3
	jal		x0, fle_cont.296205	# 3
fle_else.296206:
	ori		x8, x0, 1	# 3
fle_cont.296205:
	beq		x4, x10, beq.296208	# 204
	beq		x8, x10, beq.296210	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.296209	# 204
beq.296210:
	ori		x4, x0, 1	# 204
beq_cont.296209:
	jal		x0, beq_cont.296207	# 204
beq.296208:
	addi	x4, x8, 0	# 204
beq_cont.296207:
	beq		x4, x10, beq.296212	# 1338
	addi	x4, x0, 0	# 1338
	jal		x0, beq_cont.296211	# 1338
beq.296212:
	ori		x4, x0, 1	# 1338
beq_cont.296211:
beq_cont.296193:
	jal		x0, beq_cont.296191	# 1354
beq.296192:
	flw		f6, -48(x2)	# 5
	fle		x31, f0, f6	# 5
	beq		x31, x0, fle_else.296214	# 5
	fsub	x31, x31, x31	# 5
	fsub	f0, x31, f0	# 5
	jal		x0, fle_cont.296213	# 5
fle_else.296214:
fle_cont.296213:
	lw		x8, 16(x4)	# 391
	ori		x9, x0, 4	# 396
	mul		x9, x10, x9	# 396
	add		x8, x8, x9	# 396
	flw		f7, 0(x8)	# 396
	fle		x31, f7, f0	# 6
	beq		x31, x0, fle_else.296216	# 6
	addi	x8, x0, 0	# 6
	jal		x0, fle_cont.296215	# 6
fle_else.296216:
	ori		x8, x0, 1	# 6
fle_cont.296215:
	beq		x8, x10, beq.296218	# 1327
	fle		x31, f2, f6	# 5
	beq		x31, x0, fle_else.296220	# 5
	fsub	f0, f0, f0	# 5
	fsub	f0, f0, f2	# 5
	jal		x0, fle_cont.296219	# 5
fle_else.296220:
	fsub	f0, f0, f0	# 5
	fadd	f0, f0, f2	# 5
fle_cont.296219:
	lw		x8, 16(x4)	# 401
	ori		x9, x0, 4	# 406
	mul		x9, x11, x9	# 406
	add		x8, x8, x9	# 406
	flw		f2, 0(x8)	# 406
	fle		x31, f2, f0	# 6
	beq		x31, x0, fle_else.296222	# 6
	addi	x8, x0, 0	# 6
	jal		x0, fle_cont.296221	# 6
fle_else.296222:
	ori		x8, x0, 1	# 6
fle_cont.296221:
	beq		x8, x10, beq.296224	# 1328
	fle		x31, f4, f6	# 5
	beq		x31, x0, fle_else.296226	# 5
	fsub	f0, f0, f0	# 5
	fsub	f0, f0, f4	# 5
	jal		x0, fle_cont.296225	# 5
fle_else.296226:
	fsub	f0, f0, f0	# 5
	fadd	f0, f0, f4	# 5
fle_cont.296225:
	lw		x8, 16(x4)	# 411
	ori		x9, x0, 4	# 416
	mul		x9, x12, x9	# 416
	add		x8, x8, x9	# 416
	flw		f2, 0(x8)	# 416
	fle		x31, f2, f0	# 6
	beq		x31, x0, fle_else.296228	# 6
	addi	x8, x0, 0	# 6
	jal		x0, fle_cont.296227	# 6
fle_else.296228:
	ori		x8, x0, 1	# 6
fle_cont.296227:
	jal		x0, beq_cont.296223	# 1328
beq.296224:
	addi	x8, x0, 0	# 1330
beq_cont.296223:
	jal		x0, beq_cont.296217	# 1327
beq.296218:
	addi	x8, x0, 0	# 1331
beq_cont.296217:
	beq		x8, x10, beq.296230	# 1326
	lw		x4, 24(x4)	# 373
	jal		x0, beq_cont.296229	# 1326
beq.296230:
	lw		x4, 24(x4)	# 373
	beq		x4, x10, beq.296232	# 1332
	addi	x4, x0, 0	# 1332
	jal		x0, beq_cont.296231	# 1332
beq.296232:
	ori		x4, x0, 1	# 1332
beq_cont.296231:
beq_cont.296229:
beq_cont.296191:
	lw		x5, -88(x2)	# 1368
	beq		x4, x5, beq.296234	# 1368
	addi	x4, x0, 0	# 1369
	jal		x0, beq_cont.296233	# 1368
beq.296234:
	ori		x4, x0, 2	# 1371
	ori		x6, x0, 4	# 1364
	mul		x4, x4, x6	# 1364
	lw		x6, -64(x2)	# 1364
	add		x4, x6, x4	# 1364
	lw		x4, 0(x4)	# 1364
	lw		x7, -28(x2)	# 1365
	beq		x4, x7, beq.296236	# 1365
	ori		x7, x0, 4	# 1368
	mul		x4, x4, x7	# 1368
	lw		x7, -80(x2)	# 1368
	add		x4, x7, x4	# 1368
	lw		x4, 0(x4)	# 1368
	flw		f0, -152(x2)	# 1368
	flw		f1, -144(x2)	# 1368
	flw		f2, -136(x2)	# 1368
	lw		x27, -32(x2)	# 1368
	sw		x1, -172(x2)	# 1368
	addi	x2, x2, -176	# 1368
	lw		x31, 0(x27)	# 1368
	jalr	x1, x31, 0	# 1368
	addi	x2, x2, 176	# 1368
	lw		x1, -172(x2)	# 1368
	lw		x5, -88(x2)	# 1368
	beq		x4, x5, beq.296238	# 1368
	addi	x4, x0, 0	# 1369
	jal		x0, beq_cont.296237	# 1368
beq.296238:
	ori		x4, x0, 3	# 1371
	flw		f0, -152(x2)	# 1371
	flw		f1, -144(x2)	# 1371
	flw		f2, -136(x2)	# 1371
	lw		x5, -64(x2)	# 1371
	lw		x27, -12(x2)	# 1371
	sw		x1, -172(x2)	# 1371
	addi	x2, x2, -176	# 1371
	lw		x31, 0(x27)	# 1371
	jalr	x1, x31, 0	# 1371
	addi	x2, x2, 176	# 1371
	lw		x1, -172(x2)	# 1371
beq_cont.296237:
	jal		x0, beq_cont.296235	# 1365
beq.296236:
	ori		x4, x0, 1	# 1366
beq_cont.296235:
beq_cont.296233:
	jal		x0, beq_cont.296189	# 1365
beq.296190:
	ori		x4, x0, 1	# 1366
beq_cont.296189:
beq_cont.296187:
	jal		x0, beq_cont.296185	# 1365
beq.296186:
	ori		x4, x0, 1	# 1366
beq_cont.296185:
	addi	x5, x0, 0	# 1482
	beq		x4, x5, beq.296240	# 1482
	addi	x4, x0, 0	# 1484
	ori		x5, x0, 4	# 1484
	mul		x4, x4, x5	# 1484
	lw		x5, -40(x2)	# 1484
	add		x4, x5, x4	# 1484
	flw		f0, -160(x2)	# 1484
	fsw		f0, 0(x4)	# 1484
	addi	x4, x0, 0	# 240
	ori		x5, x0, 4	# 240
	mul		x4, x4, x5	# 240
	lw		x5, -8(x2)	# 240
	add		x4, x5, x4	# 240
	flw		f0, -152(x2)	# 240
	fsw		f0, 0(x4)	# 240
	ori		x4, x0, 1	# 241
	ori		x6, x0, 4	# 241
	mul		x4, x4, x6	# 241
	add		x4, x5, x4	# 241
	flw		f0, -144(x2)	# 241
	fsw		f0, 0(x4)	# 241
	ori		x4, x0, 2	# 242
	ori		x6, x0, 4	# 242
	mul		x4, x4, x6	# 242
	add		x4, x5, x4	# 242
	flw		f0, -136(x2)	# 242
	fsw		f0, 0(x4)	# 242
	addi	x4, x0, 0	# 1486
	ori		x5, x0, 4	# 1486
	mul		x4, x4, x5	# 1486
	lw		x5, -4(x2)	# 1486
	add		x4, x5, x4	# 1486
	lw		x5, -84(x2)	# 1486
	sw		x5, 0(x4)	# 1486
	addi	x4, x0, 0	# 1487
	ori		x5, x0, 4	# 1487
	mul		x4, x4, x5	# 1487
	lw		x5, 0(x2)	# 1487
	add		x4, x5, x4	# 1487
	lw		x5, -128(x2)	# 1487
	sw		x5, 0(x4)	# 1487
	jal		x0, beq_cont.296239	# 1482
beq.296240:
beq_cont.296239:
	jal		x0, beq_cont.296182	# 1476
beq.296183:
beq_cont.296182:
	jal		x0, beq_cont.296178	# 1475
beq.296179:
beq_cont.296178:
	lw		x4, -72(x2)	# 1493
	lw		x5, -76(x2)	# 1493
	add		x4, x5, x4	# 1493
	lw		x5, -64(x2)	# 1493
	lw		x6, -60(x2)	# 1493
	lw		x27, -68(x2)	# 1493
	lw		x31, 0(x27)	# 1493
	jalr	x0, x31, 0	# 1493
beq.296175:
	ori		x4, x0, 4	# 1497
	lw		x6, -84(x2)	# 1497
	mul		x4, x6, x4	# 1497
	lw		x6, -80(x2)	# 1497
	add		x4, x6, x4	# 1497
	lw		x4, 0(x4)	# 1497
	lw		x4, 24(x4)	# 373
	beq		x4, x5, beq.296241	# 1497
	lw		x4, -72(x2)	# 1498
	lw		x5, -76(x2)	# 1498
	add		x4, x5, x4	# 1498
	lw		x5, -64(x2)	# 1498
	lw		x6, -60(x2)	# 1498
	lw		x27, -68(x2)	# 1498
	lw		x31, 0(x27)	# 1498
	jalr	x0, x31, 0	# 1498
beq.296241:
	jalr	x0, x1, 0	# 1499
beq.296158:
	jalr	x0, x1, 0	# 1466
solve_one_or_network.2826:
	lw		x7, 20(x27)	# 1506
	lw		x8, 16(x27)	# 1506
	lw		x9, 12(x27)	# 1506
	lw		x10, 8(x27)	# 1506
	lw		x11, 4(x27)	# 1506
	ori		x12, x0, 4	# 1506
	mul		x12, x4, x12	# 1506
	add		x12, x5, x12	# 1506
	lw		x12, 0(x12)	# 1506
	beq		x12, x9, beq.296244	# 1507
	ori		x13, x0, 4	# 1508
	mul		x12, x12, x13	# 1508
	add		x12, x8, x12	# 1508
	lw		x12, 0(x12)	# 1508
	sw		x27, 0(x2)	# 1509
	sw		x6, -4(x2)	# 1509
	sw		x10, -8(x2)	# 1509
	sw		x7, -12(x2)	# 1509
	sw		x8, -16(x2)	# 1509
	sw		x9, -20(x2)	# 1509
	sw		x5, -24(x2)	# 1509
	sw		x11, -28(x2)	# 1509
	sw		x4, -32(x2)	# 1509
	addi	x5, x12, 0
	addi	x4, x10, 0
	addi	x27, x7, 0
	sw		x1, -36(x2)	# 1509
	addi	x2, x2, -40	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 40	# 1509
	lw		x1, -36(x2)	# 1509
	lw		x4, -28(x2)	# 1510
	lw		x5, -32(x2)	# 1510
	add		x5, x5, x4	# 1510
	ori		x6, x0, 4	# 1506
	mul		x6, x5, x6	# 1506
	lw		x7, -24(x2)	# 1506
	add		x6, x7, x6	# 1506
	lw		x6, 0(x6)	# 1506
	lw		x8, -20(x2)	# 1507
	beq		x6, x8, beq.296245	# 1507
	ori		x9, x0, 4	# 1508
	mul		x6, x6, x9	# 1508
	lw		x9, -16(x2)	# 1508
	add		x6, x9, x6	# 1508
	lw		x6, 0(x6)	# 1508
	lw		x10, -8(x2)	# 1509
	lw		x11, -4(x2)	# 1509
	lw		x27, -12(x2)	# 1509
	sw		x5, -36(x2)	# 1509
	addi	x5, x6, 0
	addi	x4, x10, 0
	addi	x6, x11, 0
	sw		x1, -40(x2)	# 1509
	addi	x2, x2, -44	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 44	# 1509
	lw		x1, -40(x2)	# 1509
	lw		x4, -28(x2)	# 1510
	lw		x5, -36(x2)	# 1510
	add		x5, x5, x4	# 1510
	ori		x6, x0, 4	# 1506
	mul		x6, x5, x6	# 1506
	lw		x7, -24(x2)	# 1506
	add		x6, x7, x6	# 1506
	lw		x6, 0(x6)	# 1506
	lw		x8, -20(x2)	# 1507
	beq		x6, x8, beq.296246	# 1507
	ori		x9, x0, 4	# 1508
	mul		x6, x6, x9	# 1508
	lw		x9, -16(x2)	# 1508
	add		x6, x9, x6	# 1508
	lw		x6, 0(x6)	# 1508
	lw		x10, -8(x2)	# 1509
	lw		x11, -4(x2)	# 1509
	lw		x27, -12(x2)	# 1509
	sw		x5, -40(x2)	# 1509
	addi	x5, x6, 0
	addi	x4, x10, 0
	addi	x6, x11, 0
	sw		x1, -44(x2)	# 1509
	addi	x2, x2, -48	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 48	# 1509
	lw		x1, -44(x2)	# 1509
	lw		x4, -28(x2)	# 1510
	lw		x5, -40(x2)	# 1510
	add		x5, x5, x4	# 1510
	ori		x6, x0, 4	# 1506
	mul		x6, x5, x6	# 1506
	lw		x7, -24(x2)	# 1506
	add		x6, x7, x6	# 1506
	lw		x6, 0(x6)	# 1506
	lw		x8, -20(x2)	# 1507
	beq		x6, x8, beq.296247	# 1507
	ori		x9, x0, 4	# 1508
	mul		x6, x6, x9	# 1508
	lw		x9, -16(x2)	# 1508
	add		x6, x9, x6	# 1508
	lw		x6, 0(x6)	# 1508
	lw		x10, -8(x2)	# 1509
	lw		x11, -4(x2)	# 1509
	lw		x27, -12(x2)	# 1509
	sw		x5, -44(x2)	# 1509
	addi	x5, x6, 0
	addi	x4, x10, 0
	addi	x6, x11, 0
	sw		x1, -48(x2)	# 1509
	addi	x2, x2, -52	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 52	# 1509
	lw		x1, -48(x2)	# 1509
	lw		x4, -28(x2)	# 1510
	lw		x5, -44(x2)	# 1510
	add		x5, x5, x4	# 1510
	ori		x6, x0, 4	# 1506
	mul		x6, x5, x6	# 1506
	lw		x7, -24(x2)	# 1506
	add		x6, x7, x6	# 1506
	lw		x6, 0(x6)	# 1506
	lw		x8, -20(x2)	# 1507
	beq		x6, x8, beq.296248	# 1507
	ori		x9, x0, 4	# 1508
	mul		x6, x6, x9	# 1508
	lw		x9, -16(x2)	# 1508
	add		x6, x9, x6	# 1508
	lw		x6, 0(x6)	# 1508
	lw		x10, -8(x2)	# 1509
	lw		x11, -4(x2)	# 1509
	lw		x27, -12(x2)	# 1509
	sw		x5, -48(x2)	# 1509
	addi	x5, x6, 0
	addi	x4, x10, 0
	addi	x6, x11, 0
	sw		x1, -52(x2)	# 1509
	addi	x2, x2, -56	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 56	# 1509
	lw		x1, -52(x2)	# 1509
	lw		x4, -28(x2)	# 1510
	lw		x5, -48(x2)	# 1510
	add		x5, x5, x4	# 1510
	ori		x6, x0, 4	# 1506
	mul		x6, x5, x6	# 1506
	lw		x7, -24(x2)	# 1506
	add		x6, x7, x6	# 1506
	lw		x6, 0(x6)	# 1506
	lw		x8, -20(x2)	# 1507
	beq		x6, x8, beq.296249	# 1507
	ori		x9, x0, 4	# 1508
	mul		x6, x6, x9	# 1508
	lw		x9, -16(x2)	# 1508
	add		x6, x9, x6	# 1508
	lw		x6, 0(x6)	# 1508
	lw		x10, -8(x2)	# 1509
	lw		x11, -4(x2)	# 1509
	lw		x27, -12(x2)	# 1509
	sw		x5, -52(x2)	# 1509
	addi	x5, x6, 0
	addi	x4, x10, 0
	addi	x6, x11, 0
	sw		x1, -56(x2)	# 1509
	addi	x2, x2, -60	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 60	# 1509
	lw		x1, -56(x2)	# 1509
	lw		x4, -28(x2)	# 1510
	lw		x5, -52(x2)	# 1510
	add		x5, x5, x4	# 1510
	ori		x6, x0, 4	# 1506
	mul		x6, x5, x6	# 1506
	lw		x7, -24(x2)	# 1506
	add		x6, x7, x6	# 1506
	lw		x6, 0(x6)	# 1506
	lw		x8, -20(x2)	# 1507
	beq		x6, x8, beq.296250	# 1507
	ori		x9, x0, 4	# 1508
	mul		x6, x6, x9	# 1508
	lw		x9, -16(x2)	# 1508
	add		x6, x9, x6	# 1508
	lw		x6, 0(x6)	# 1508
	lw		x10, -8(x2)	# 1509
	lw		x11, -4(x2)	# 1509
	lw		x27, -12(x2)	# 1509
	sw		x5, -56(x2)	# 1509
	addi	x5, x6, 0
	addi	x4, x10, 0
	addi	x6, x11, 0
	sw		x1, -60(x2)	# 1509
	addi	x2, x2, -64	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 64	# 1509
	lw		x1, -60(x2)	# 1509
	lw		x4, -28(x2)	# 1510
	lw		x5, -56(x2)	# 1510
	add		x5, x5, x4	# 1510
	ori		x6, x0, 4	# 1506
	mul		x6, x5, x6	# 1506
	lw		x7, -24(x2)	# 1506
	add		x6, x7, x6	# 1506
	lw		x6, 0(x6)	# 1506
	lw		x8, -20(x2)	# 1507
	beq		x6, x8, beq.296251	# 1507
	ori		x8, x0, 4	# 1508
	mul		x6, x6, x8	# 1508
	lw		x8, -16(x2)	# 1508
	add		x6, x8, x6	# 1508
	lw		x6, 0(x6)	# 1508
	lw		x8, -8(x2)	# 1509
	lw		x9, -4(x2)	# 1509
	lw		x27, -12(x2)	# 1509
	sw		x5, -60(x2)	# 1509
	addi	x5, x6, 0
	addi	x4, x8, 0
	addi	x6, x9, 0
	sw		x1, -64(x2)	# 1509
	addi	x2, x2, -68	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 68	# 1509
	lw		x1, -64(x2)	# 1509
	lw		x4, -28(x2)	# 1510
	lw		x5, -60(x2)	# 1510
	add		x4, x5, x4	# 1510
	lw		x5, -24(x2)	# 1510
	lw		x6, -4(x2)	# 1510
	lw		x27, 0(x2)	# 1510
	lw		x31, 0(x27)	# 1510
	jalr	x0, x31, 0	# 1510
beq.296251:
	jalr	x0, x1, 0	# 1511
beq.296250:
	jalr	x0, x1, 0	# 1511
beq.296249:
	jalr	x0, x1, 0	# 1511
beq.296248:
	jalr	x0, x1, 0	# 1511
beq.296247:
	jalr	x0, x1, 0	# 1511
beq.296246:
	jalr	x0, x1, 0	# 1511
beq.296245:
	jalr	x0, x1, 0	# 1511
beq.296244:
	jalr	x0, x1, 0	# 1511
trace_or_matrix.2830:
	lw		x7, 60(x27)	# 1516
	lw		x8, 56(x27)	# 1516
	lw		x9, 52(x27)	# 1516
	lw		x10, 48(x27)	# 1516
	lw		x11, 44(x27)	# 1516
	lw		x12, 40(x27)	# 1516
	lw		x13, 36(x27)	# 1516
	lw		x14, 32(x27)	# 1516
	lw		x15, 28(x27)	# 1516
	lw		x16, 24(x27)	# 1516
	lw		x17, 20(x27)	# 1516
	lw		x18, 16(x27)	# 1516
	lw		x19, 12(x27)	# 1516
	lw		x20, 8(x27)	# 1516
	flw		f0, 4(x27)	# 1516
	ori		x21, x0, 4	# 1516
	mul		x21, x4, x21	# 1516
	add		x21, x5, x21	# 1516
	lw		x21, 0(x21)	# 1516
	ori		x22, x0, 4	# 1517
	mul		x22, x19, x22	# 1517
	add		x22, x21, x22	# 1517
	lw		x22, 0(x22)	# 1517
	beq		x22, x18, beq.296260	# 1518
	ori		x23, x0, 99	# 1521
	sw		x27, 0(x2)	# 1521
	sw		x7, -4(x2)	# 1521
	sw		x11, -8(x2)	# 1521
	sw		x8, -12(x2)	# 1521
	sw		x12, -16(x2)	# 1521
	sw		x13, -20(x2)	# 1521
	sw		x6, -24(x2)	# 1521
	sw		x14, -28(x2)	# 1521
	sw		x16, -32(x2)	# 1521
	sw		x23, -36(x2)	# 1521
	sw		x18, -40(x2)	# 1521
	sw		x19, -44(x2)	# 1521
	sw		x5, -48(x2)	# 1521
	sw		x20, -52(x2)	# 1521
	sw		x4, -56(x2)	# 1521
	beq		x22, x23, beq.296262	# 1521
	ori		x24, x0, 4	# 1032
	mul		x22, x22, x24	# 1032
	add		x15, x15, x22	# 1032
	lw		x15, 0(x15)	# 1032
	addi	x22, x0, 0	# 1034
	ori		x24, x0, 4	# 1034
	mul		x22, x22, x24	# 1034
	add		x22, x8, x22	# 1034
	flw		f1, 0(x22)	# 1034
	lw		x22, 20(x15)	# 431
	ori		x24, x0, 4	# 436
	mul		x24, x19, x24	# 436
	add		x22, x22, x24	# 436
	flw		f2, 0(x22)	# 436
	fsub	f1, f1, f2	# 1034
	ori		x22, x0, 1	# 1035
	ori		x24, x0, 4	# 1035
	mul		x22, x22, x24	# 1035
	add		x22, x8, x22	# 1035
	flw		f2, 0(x22)	# 1035
	lw		x22, 20(x15)	# 441
	ori		x24, x0, 4	# 446
	mul		x24, x20, x24	# 446
	add		x22, x22, x24	# 446
	flw		f3, 0(x22)	# 446
	fsub	f2, f2, f3	# 1035
	ori		x22, x0, 2	# 1036
	ori		x24, x0, 4	# 1036
	mul		x22, x22, x24	# 1036
	add		x22, x8, x22	# 1036
	flw		f3, 0(x22)	# 1036
	lw		x22, 20(x15)	# 451
	ori		x24, x0, 4	# 456
	mul		x24, x17, x24	# 456
	add		x22, x22, x24	# 456
	flw		f4, 0(x22)	# 456
	fsub	f3, f3, f4	# 1036
	lw		x22, 4(x15)	# 353
	ori		x24, x0, 1	# 1039
	sw		x21, -60(x2)	# 1039
	beq		x22, x24, beq.296264	# 1039
	ori		x10, x0, 2	# 1040
	beq		x22, x10, beq.296266	# 1040
	addi	x5, x6, 0
	addi	x4, x15, 0
	addi	x27, x9, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -64(x2)	# 1041
	addi	x2, x2, -68	# 1041
	lw		x31, 0(x27)	# 1041
	jalr	x1, x31, 0	# 1041
	addi	x2, x2, 68	# 1041
	lw		x1, -64(x2)	# 1041
	jal		x0, beq_cont.296265	# 1040
beq.296266:
	lw		x9, 16(x15)	# 421
	ori		x10, x0, 4	# 292
	mul		x10, x19, x10	# 292
	add		x10, x6, x10	# 292
	flw		f4, 0(x10)	# 292
	ori		x10, x0, 4	# 292
	mul		x10, x19, x10	# 292
	add		x10, x9, x10	# 292
	flw		f5, 0(x10)	# 292
	fmul	f4, f4, f5	# 292
	ori		x10, x0, 4	# 292
	mul		x10, x20, x10	# 292
	add		x10, x6, x10	# 292
	flw		f6, 0(x10)	# 292
	ori		x10, x0, 4	# 292
	mul		x10, x20, x10	# 292
	add		x10, x9, x10	# 292
	flw		f7, 0(x10)	# 292
	fmul	f6, f6, f7	# 292
	fadd	f4, f4, f6	# 292
	ori		x10, x0, 4	# 292
	mul		x10, x17, x10	# 292
	add		x10, x6, x10	# 292
	flw		f6, 0(x10)	# 292
	ori		x10, x0, 4	# 292
	mul		x10, x17, x10	# 292
	add		x9, x9, x10	# 292
	flw		f8, 0(x9)	# 292
	fmul	f6, f6, f8	# 292
	fadd	f4, f4, f6	# 292
	fle		x31, f4, f0	# 2
	beq		x31, x0, fle_else.296268	# 2
	addi	x9, x0, 0	# 2
	jal		x0, fle_cont.296267	# 2
fle_else.296268:
	ori		x9, x0, 1	# 2
fle_cont.296267:
	beq		x9, x19, beq.296270	# 956
	fmul	f0, f5, f1	# 297
	fmul	f1, f7, f2	# 297
	fadd	f0, f0, f1	# 297
	fmul	f1, f8, f3	# 297
	fadd	f0, f0, f1	# 297
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	fdiv	f0, f0, f4	# 957
	ori		x9, x0, 4	# 957
	mul		x9, x19, x9	# 957
	add		x9, x11, x9	# 957
	fsw		f0, 0(x9)	# 957
	ori		x4, x0, 1	# 958
	jal		x0, beq_cont.296269	# 956
beq.296270:
	addi	x4, x0, 0	# 959
beq_cont.296269:
beq_cont.296265:
	jal		x0, beq_cont.296263	# 1039
beq.296264:
	fsw		f1, -64(x2)	# 943
	fsw		f3, -72(x2)	# 943
	fsw		f2, -80(x2)	# 943
	sw		x17, -88(x2)	# 943
	sw		x15, -92(x2)	# 943
	sw		x10, -96(x2)	# 943
	addi	x8, x17, 0
	addi	x7, x20, 0
	addi	x5, x6, 0
	addi	x4, x15, 0
	addi	x27, x10, 0
	addi	x6, x19, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -100(x2)	# 943
	addi	x2, x2, -104	# 943
	lw		x31, 0(x27)	# 943
	jalr	x1, x31, 0	# 943
	addi	x2, x2, 104	# 943
	lw		x1, -100(x2)	# 943
	lw		x8, -44(x2)	# 943
	beq		x4, x8, beq.296272	# 943
	ori		x4, x0, 1	# 943
	jal		x0, beq_cont.296271	# 943
beq.296272:
	flw		f0, -80(x2)	# 944
	flw		f1, -72(x2)	# 944
	flw		f2, -64(x2)	# 944
	lw		x4, -92(x2)	# 944
	lw		x5, -24(x2)	# 944
	lw		x6, -52(x2)	# 944
	lw		x7, -88(x2)	# 944
	lw		x27, -96(x2)	# 944
	sw		x1, -100(x2)	# 944
	addi	x2, x2, -104	# 944
	lw		x31, 0(x27)	# 944
	jalr	x1, x31, 0	# 944
	addi	x2, x2, 104	# 944
	lw		x1, -100(x2)	# 944
	lw		x7, -44(x2)	# 944
	beq		x4, x7, beq.296274	# 944
	ori		x4, x0, 2	# 944
	jal		x0, beq_cont.296273	# 944
beq.296274:
	flw		f0, -72(x2)	# 945
	flw		f1, -64(x2)	# 945
	flw		f2, -80(x2)	# 945
	lw		x4, -92(x2)	# 945
	lw		x5, -24(x2)	# 945
	lw		x6, -88(x2)	# 945
	lw		x8, -52(x2)	# 945
	lw		x27, -96(x2)	# 945
	sw		x1, -100(x2)	# 945
	addi	x2, x2, -104	# 945
	lw		x31, 0(x27)	# 945
	jalr	x1, x31, 0	# 945
	addi	x2, x2, 104	# 945
	lw		x1, -100(x2)	# 945
	lw		x5, -44(x2)	# 945
	beq		x4, x5, beq.296276	# 945
	ori		x4, x0, 3	# 945
	jal		x0, beq_cont.296275	# 945
beq.296276:
	addi	x4, x0, 0	# 946
beq_cont.296275:
beq_cont.296273:
beq_cont.296271:
beq_cont.296263:
	addi	x5, x0, 0	# 1527
	beq		x4, x5, beq.296278	# 1527
	addi	x4, x0, 0	# 1528
	ori		x5, x0, 4	# 1528
	mul		x4, x4, x5	# 1528
	lw		x5, -8(x2)	# 1528
	add		x4, x5, x4	# 1528
	flw		f0, 0(x4)	# 1528
	addi	x4, x0, 0	# 1529
	ori		x6, x0, 4	# 1529
	mul		x4, x4, x6	# 1529
	lw		x6, -4(x2)	# 1529
	add		x4, x6, x4	# 1529
	flw		f1, 0(x4)	# 1529
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.296280	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.296279	# 6
fle_else.296280:
	ori		x4, x0, 1	# 6
fle_cont.296279:
	addi	x7, x0, 0	# 1529
	beq		x4, x7, beq.296282	# 1529
	ori		x4, x0, 1	# 1530
	ori		x7, x0, 4	# 1506
	mul		x4, x4, x7	# 1506
	lw		x7, -60(x2)	# 1506
	add		x4, x7, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lui		x8, -1	# 1507
	ori		x8, x0, -1	# 1507
	beq		x4, x8, beq.296284	# 1507
	ori		x8, x0, 4	# 1508
	mul		x4, x4, x8	# 1508
	lw		x8, -32(x2)	# 1508
	add		x4, x8, x4	# 1508
	lw		x4, 0(x4)	# 1508
	addi	x9, x0, 0	# 1509
	lw		x10, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x10, 0
	addi	x5, x4, 0
	addi	x4, x9, 0
	sw		x1, -100(x2)	# 1509
	addi	x2, x2, -104	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 104	# 1509
	lw		x1, -100(x2)	# 1509
	ori		x4, x0, 2	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -60(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296286	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -100(x2)	# 1509
	addi	x2, x2, -104	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 104	# 1509
	lw		x1, -100(x2)	# 1509
	ori		x4, x0, 3	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -60(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296288	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -100(x2)	# 1509
	addi	x2, x2, -104	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 104	# 1509
	lw		x1, -100(x2)	# 1509
	ori		x4, x0, 4	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -60(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296290	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -100(x2)	# 1509
	addi	x2, x2, -104	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 104	# 1509
	lw		x1, -100(x2)	# 1509
	ori		x4, x0, 5	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -60(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296292	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -100(x2)	# 1509
	addi	x2, x2, -104	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 104	# 1509
	lw		x1, -100(x2)	# 1509
	ori		x4, x0, 6	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -60(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296294	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -100(x2)	# 1509
	addi	x2, x2, -104	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 104	# 1509
	lw		x1, -100(x2)	# 1509
	ori		x4, x0, 7	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -60(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296296	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -100(x2)	# 1509
	addi	x2, x2, -104	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 104	# 1509
	lw		x1, -100(x2)	# 1509
	ori		x4, x0, 8	# 1510
	lw		x5, -60(x2)	# 1510
	lw		x6, -24(x2)	# 1510
	lw		x27, -20(x2)	# 1510
	sw		x1, -100(x2)	# 1510
	addi	x2, x2, -104	# 1510
	lw		x31, 0(x27)	# 1510
	jalr	x1, x31, 0	# 1510
	addi	x2, x2, 104	# 1510
	lw		x1, -100(x2)	# 1510
	jal		x0, beq_cont.296295	# 1507
beq.296296:
beq_cont.296295:
	jal		x0, beq_cont.296293	# 1507
beq.296294:
beq_cont.296293:
	jal		x0, beq_cont.296291	# 1507
beq.296292:
beq_cont.296291:
	jal		x0, beq_cont.296289	# 1507
beq.296290:
beq_cont.296289:
	jal		x0, beq_cont.296287	# 1507
beq.296288:
beq_cont.296287:
	jal		x0, beq_cont.296285	# 1507
beq.296286:
beq_cont.296285:
	jal		x0, beq_cont.296283	# 1507
beq.296284:
beq_cont.296283:
	jal		x0, beq_cont.296281	# 1529
beq.296282:
beq_cont.296281:
	jal		x0, beq_cont.296277	# 1527
beq.296278:
beq_cont.296277:
	jal		x0, beq_cont.296261	# 1521
beq.296262:
	ori		x9, x0, 1	# 1522
	ori		x10, x0, 4	# 1506
	mul		x9, x9, x10	# 1506
	add		x9, x21, x9	# 1506
	lw		x9, 0(x9)	# 1506
	lui		x10, -1	# 1507
	ori		x10, x0, -1	# 1507
	beq		x9, x10, beq.296298	# 1507
	ori		x10, x0, 4	# 1508
	mul		x9, x9, x10	# 1508
	add		x9, x16, x9	# 1508
	lw		x9, 0(x9)	# 1508
	addi	x10, x0, 0	# 1509
	sw		x21, -60(x2)	# 1509
	addi	x5, x9, 0
	addi	x4, x10, 0
	addi	x27, x14, 0
	sw		x1, -100(x2)	# 1509
	addi	x2, x2, -104	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 104	# 1509
	lw		x1, -100(x2)	# 1509
	ori		x4, x0, 2	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -60(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296300	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -100(x2)	# 1509
	addi	x2, x2, -104	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 104	# 1509
	lw		x1, -100(x2)	# 1509
	ori		x4, x0, 3	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -60(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296302	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -100(x2)	# 1509
	addi	x2, x2, -104	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 104	# 1509
	lw		x1, -100(x2)	# 1509
	ori		x4, x0, 4	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -60(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296304	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -100(x2)	# 1509
	addi	x2, x2, -104	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 104	# 1509
	lw		x1, -100(x2)	# 1509
	ori		x4, x0, 5	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -60(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296306	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -100(x2)	# 1509
	addi	x2, x2, -104	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 104	# 1509
	lw		x1, -100(x2)	# 1509
	ori		x4, x0, 6	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -60(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296308	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -100(x2)	# 1509
	addi	x2, x2, -104	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 104	# 1509
	lw		x1, -100(x2)	# 1509
	ori		x4, x0, 7	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -60(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296310	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -100(x2)	# 1509
	addi	x2, x2, -104	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 104	# 1509
	lw		x1, -100(x2)	# 1509
	ori		x4, x0, 8	# 1510
	lw		x5, -60(x2)	# 1510
	lw		x6, -24(x2)	# 1510
	lw		x27, -20(x2)	# 1510
	sw		x1, -100(x2)	# 1510
	addi	x2, x2, -104	# 1510
	lw		x31, 0(x27)	# 1510
	jalr	x1, x31, 0	# 1510
	addi	x2, x2, 104	# 1510
	lw		x1, -100(x2)	# 1510
	jal		x0, beq_cont.296309	# 1507
beq.296310:
beq_cont.296309:
	jal		x0, beq_cont.296307	# 1507
beq.296308:
beq_cont.296307:
	jal		x0, beq_cont.296305	# 1507
beq.296306:
beq_cont.296305:
	jal		x0, beq_cont.296303	# 1507
beq.296304:
beq_cont.296303:
	jal		x0, beq_cont.296301	# 1507
beq.296302:
beq_cont.296301:
	jal		x0, beq_cont.296299	# 1507
beq.296300:
beq_cont.296299:
	jal		x0, beq_cont.296297	# 1507
beq.296298:
beq_cont.296297:
beq_cont.296261:
	lw		x4, -52(x2)	# 1534
	lw		x5, -56(x2)	# 1534
	add		x5, x5, x4	# 1534
	ori		x6, x0, 4	# 1516
	mul		x6, x5, x6	# 1516
	lw		x7, -48(x2)	# 1516
	add		x6, x7, x6	# 1516
	lw		x6, 0(x6)	# 1516
	ori		x8, x0, 4	# 1517
	lw		x9, -44(x2)	# 1517
	mul		x8, x9, x8	# 1517
	add		x8, x6, x8	# 1517
	lw		x8, 0(x8)	# 1517
	lw		x10, -40(x2)	# 1518
	beq		x8, x10, beq.296311	# 1518
	lw		x11, -36(x2)	# 1521
	sw		x5, -100(x2)	# 1521
	beq		x8, x11, beq.296313	# 1521
	lw		x11, -24(x2)	# 1526
	lw		x12, -12(x2)	# 1526
	lw		x27, -16(x2)	# 1526
	sw		x6, -104(x2)	# 1526
	addi	x6, x12, 0
	addi	x5, x11, 0
	addi	x4, x8, 0
	sw		x1, -108(x2)	# 1526
	addi	x2, x2, -112	# 1526
	lw		x31, 0(x27)	# 1526
	jalr	x1, x31, 0	# 1526
	addi	x2, x2, 112	# 1526
	lw		x1, -108(x2)	# 1526
	addi	x5, x0, 0	# 1527
	beq		x4, x5, beq.296315	# 1527
	addi	x4, x0, 0	# 1528
	ori		x5, x0, 4	# 1528
	mul		x4, x4, x5	# 1528
	lw		x5, -8(x2)	# 1528
	add		x4, x5, x4	# 1528
	flw		f0, 0(x4)	# 1528
	addi	x4, x0, 0	# 1529
	ori		x5, x0, 4	# 1529
	mul		x4, x4, x5	# 1529
	lw		x5, -4(x2)	# 1529
	add		x4, x5, x4	# 1529
	flw		f1, 0(x4)	# 1529
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.296317	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.296316	# 6
fle_else.296317:
	ori		x4, x0, 1	# 6
fle_cont.296316:
	addi	x5, x0, 0	# 1529
	beq		x4, x5, beq.296319	# 1529
	ori		x4, x0, 1	# 1530
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -104(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296321	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -108(x2)	# 1509
	addi	x2, x2, -112	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 112	# 1509
	lw		x1, -108(x2)	# 1509
	ori		x4, x0, 2	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -104(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296323	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -108(x2)	# 1509
	addi	x2, x2, -112	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 112	# 1509
	lw		x1, -108(x2)	# 1509
	ori		x4, x0, 3	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -104(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296325	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -108(x2)	# 1509
	addi	x2, x2, -112	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 112	# 1509
	lw		x1, -108(x2)	# 1509
	ori		x4, x0, 4	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -104(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296327	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -108(x2)	# 1509
	addi	x2, x2, -112	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 112	# 1509
	lw		x1, -108(x2)	# 1509
	ori		x4, x0, 5	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -104(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296329	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -108(x2)	# 1509
	addi	x2, x2, -112	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 112	# 1509
	lw		x1, -108(x2)	# 1509
	ori		x4, x0, 6	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -104(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296331	# 1507
	ori		x6, x0, 4	# 1508
	mul		x4, x4, x6	# 1508
	lw		x6, -32(x2)	# 1508
	add		x4, x6, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x6, -44(x2)	# 1509
	lw		x7, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x5, x4, 0
	addi	x4, x6, 0
	addi	x6, x7, 0
	sw		x1, -108(x2)	# 1509
	addi	x2, x2, -112	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 112	# 1509
	lw		x1, -108(x2)	# 1509
	ori		x4, x0, 7	# 1510
	lw		x5, -104(x2)	# 1510
	lw		x6, -24(x2)	# 1510
	lw		x27, -20(x2)	# 1510
	sw		x1, -108(x2)	# 1510
	addi	x2, x2, -112	# 1510
	lw		x31, 0(x27)	# 1510
	jalr	x1, x31, 0	# 1510
	addi	x2, x2, 112	# 1510
	lw		x1, -108(x2)	# 1510
	jal		x0, beq_cont.296330	# 1507
beq.296331:
beq_cont.296330:
	jal		x0, beq_cont.296328	# 1507
beq.296329:
beq_cont.296328:
	jal		x0, beq_cont.296326	# 1507
beq.296327:
beq_cont.296326:
	jal		x0, beq_cont.296324	# 1507
beq.296325:
beq_cont.296324:
	jal		x0, beq_cont.296322	# 1507
beq.296323:
beq_cont.296322:
	jal		x0, beq_cont.296320	# 1507
beq.296321:
beq_cont.296320:
	jal		x0, beq_cont.296318	# 1529
beq.296319:
beq_cont.296318:
	jal		x0, beq_cont.296314	# 1527
beq.296315:
beq_cont.296314:
	jal		x0, beq_cont.296312	# 1521
beq.296313:
	ori		x8, x0, 1	# 1522
	ori		x11, x0, 4	# 1506
	mul		x8, x8, x11	# 1506
	add		x8, x6, x8	# 1506
	lw		x8, 0(x8)	# 1506
	beq		x8, x10, beq.296333	# 1507
	ori		x11, x0, 4	# 1508
	mul		x8, x8, x11	# 1508
	lw		x11, -32(x2)	# 1508
	add		x8, x11, x8	# 1508
	lw		x8, 0(x8)	# 1508
	lw		x12, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	sw		x6, -104(x2)	# 1509
	addi	x6, x12, 0
	addi	x5, x8, 0
	addi	x4, x9, 0
	sw		x1, -108(x2)	# 1509
	addi	x2, x2, -112	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 112	# 1509
	lw		x1, -108(x2)	# 1509
	ori		x4, x0, 2	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -104(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296335	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -108(x2)	# 1509
	addi	x2, x2, -112	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 112	# 1509
	lw		x1, -108(x2)	# 1509
	ori		x4, x0, 3	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -104(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296337	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -108(x2)	# 1509
	addi	x2, x2, -112	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 112	# 1509
	lw		x1, -108(x2)	# 1509
	ori		x4, x0, 4	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -104(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296339	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -108(x2)	# 1509
	addi	x2, x2, -112	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 112	# 1509
	lw		x1, -108(x2)	# 1509
	ori		x4, x0, 5	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -104(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296341	# 1507
	ori		x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	lw		x7, -32(x2)	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x8, -44(x2)	# 1509
	lw		x9, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -108(x2)	# 1509
	addi	x2, x2, -112	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 112	# 1509
	lw		x1, -108(x2)	# 1509
	ori		x4, x0, 6	# 1510
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -104(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -40(x2)	# 1507
	beq		x4, x6, beq.296343	# 1507
	ori		x6, x0, 4	# 1508
	mul		x4, x4, x6	# 1508
	lw		x6, -32(x2)	# 1508
	add		x4, x6, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x6, -44(x2)	# 1509
	lw		x7, -24(x2)	# 1509
	lw		x27, -28(x2)	# 1509
	addi	x5, x4, 0
	addi	x4, x6, 0
	addi	x6, x7, 0
	sw		x1, -108(x2)	# 1509
	addi	x2, x2, -112	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 112	# 1509
	lw		x1, -108(x2)	# 1509
	ori		x4, x0, 7	# 1510
	lw		x5, -104(x2)	# 1510
	lw		x6, -24(x2)	# 1510
	lw		x27, -20(x2)	# 1510
	sw		x1, -108(x2)	# 1510
	addi	x2, x2, -112	# 1510
	lw		x31, 0(x27)	# 1510
	jalr	x1, x31, 0	# 1510
	addi	x2, x2, 112	# 1510
	lw		x1, -108(x2)	# 1510
	jal		x0, beq_cont.296342	# 1507
beq.296343:
beq_cont.296342:
	jal		x0, beq_cont.296340	# 1507
beq.296341:
beq_cont.296340:
	jal		x0, beq_cont.296338	# 1507
beq.296339:
beq_cont.296338:
	jal		x0, beq_cont.296336	# 1507
beq.296337:
beq_cont.296336:
	jal		x0, beq_cont.296334	# 1507
beq.296335:
beq_cont.296334:
	jal		x0, beq_cont.296332	# 1507
beq.296333:
beq_cont.296332:
beq_cont.296312:
	lw		x4, -52(x2)	# 1534
	lw		x5, -100(x2)	# 1534
	add		x4, x5, x4	# 1534
	lw		x5, -48(x2)	# 1534
	lw		x6, -24(x2)	# 1534
	lw		x27, 0(x2)	# 1534
	lw		x31, 0(x27)	# 1534
	jalr	x0, x31, 0	# 1534
beq.296311:
	jalr	x0, x1, 0	# 1519
beq.296260:
	jalr	x0, x1, 0	# 1519
solve_each_element_fast.2836:
	lw		x7, 72(x27)	# 639
	lw		x8, 68(x27)	# 639
	lw		x9, 64(x27)	# 639
	lw		x10, 60(x27)	# 639
	lw		x11, 56(x27)	# 639
	lw		x12, 52(x27)	# 639
	lw		x13, 48(x27)	# 639
	lw		x14, 44(x27)	# 639
	lw		x15, 40(x27)	# 639
	lw		x16, 36(x27)	# 639
	lw		x17, 32(x27)	# 639
	lw		x18, 28(x27)	# 639
	lw		x19, 24(x27)	# 639
	lw		x20, 20(x27)	# 639
	lw		x21, 16(x27)	# 639
	lw		x22, 12(x27)	# 639
	lw		x23, 8(x27)	# 639
	flw		f0, 4(x27)	# 639
	lw		x24, 0(x6)	# 639
	ori		x25, x0, 4	# 1559
	mul		x25, x4, x25	# 1559
	add		x25, x5, x25	# 1559
	lw		x25, 0(x25)	# 1559
	beq		x25, x20, beq.296346	# 1560
	ori		x26, x0, 4	# 1173
	mul		x26, x25, x26	# 1173
	add		x26, x13, x26	# 1173
	lw		x26, 0(x26)	# 1173
	lw		x31, 40(x26)	# 548
	sw		x15, 0(x2)	# 1175
	ori		x15, x0, 4	# 1175
	mul		x15, x22, x15	# 1175
	add		x15, x31, x15	# 1175
	flw		f1, 0(x15)	# 1175
	ori		x15, x0, 4	# 1176
	mul		x15, x23, x15	# 1176
	add		x15, x31, x15	# 1176
	flw		f2, 0(x15)	# 1176
	ori		x15, x0, 4	# 1177
	mul		x15, x19, x15	# 1177
	add		x15, x31, x15	# 1177
	flw		f3, 0(x15)	# 1177
	lw		x15, 4(x6)	# 645
	sw		x17, -4(x2)	# 1179
	ori		x17, x0, 4	# 1179
	mul		x17, x25, x17	# 1179
	add		x15, x15, x17	# 1179
	lw		x15, 0(x15)	# 1179
	lw		x17, 4(x26)	# 353
	sw		x16, -8(x2)	# 1181
	sw		x18, -12(x2)	# 1181
	sw		x21, -16(x2)	# 1181
	sw		x12, -20(x2)	# 1181
	sw		x19, -24(x2)	# 1181
	sw		x20, -28(x2)	# 1181
	sw		x14, -32(x2)	# 1181
	sw		x8, -36(x2)	# 1181
	sw		x24, -40(x2)	# 1181
	sw		x7, -44(x2)	# 1181
	fsw		f0, -48(x2)	# 1181
	sw		x11, -56(x2)	# 1181
	sw		x6, -60(x2)	# 1181
	sw		x5, -64(x2)	# 1181
	sw		x27, -68(x2)	# 1181
	sw		x23, -72(x2)	# 1181
	sw		x4, -76(x2)	# 1181
	sw		x13, -80(x2)	# 1181
	sw		x25, -84(x2)	# 1181
	sw		x22, -88(x2)	# 1181
	beq		x17, x23, beq.296348	# 1181
	ori		x10, x0, 2	# 1183
	beq		x17, x10, beq.296350	# 1183
	addi	x6, x31, 0
	addi	x5, x15, 0
	addi	x4, x26, 0
	addi	x27, x9, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -92(x2)	# 1186
	addi	x2, x2, -96	# 1186
	lw		x31, 0(x27)	# 1186
	jalr	x1, x31, 0	# 1186
	addi	x2, x2, 96	# 1186
	lw		x1, -92(x2)	# 1186
	jal		x0, beq_cont.296349	# 1183
beq.296350:
	ori		x9, x0, 4	# 1146
	mul		x9, x22, x9	# 1146
	add		x9, x15, x9	# 1146
	flw		f1, 0(x9)	# 1146
	fle		x31, f0, f1	# 3
	beq		x31, x0, fle_else.296352	# 3
	addi	x9, x0, 0	# 3
	jal		x0, fle_cont.296351	# 3
fle_else.296352:
	ori		x9, x0, 1	# 3
fle_cont.296351:
	beq		x9, x22, beq.296354	# 1146
	ori		x9, x0, 4	# 1147
	mul		x9, x22, x9	# 1147
	add		x9, x15, x9	# 1147
	flw		f1, 0(x9)	# 1147
	ori		x9, x0, 4	# 1147
	mul		x9, x21, x9	# 1147
	add		x9, x31, x9	# 1147
	flw		f2, 0(x9)	# 1147
	fmul	f1, f1, f2	# 1147
	ori		x9, x0, 4	# 1147
	mul		x9, x22, x9	# 1147
	add		x9, x11, x9	# 1147
	fsw		f1, 0(x9)	# 1147
	ori		x4, x0, 1	# 1148
	jal		x0, beq_cont.296353	# 1146
beq.296354:
	addi	x4, x0, 0	# 1149
beq_cont.296353:
beq_cont.296349:
	jal		x0, beq_cont.296347	# 1181
beq.296348:
	lw		x9, 0(x6)	# 639
	addi	x6, x15, 0
	addi	x5, x9, 0
	addi	x4, x26, 0
	addi	x27, x10, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -92(x2)	# 1182
	addi	x2, x2, -96	# 1182
	lw		x31, 0(x27)	# 1182
	jalr	x1, x31, 0	# 1182
	addi	x2, x2, 96	# 1182
	lw		x1, -92(x2)	# 1182
beq_cont.296347:
	lw		x5, -88(x2)	# 1563
	beq		x4, x5, beq.296355	# 1563
	ori		x6, x0, 4	# 1567
	mul		x6, x5, x6	# 1567
	lw		x7, -56(x2)	# 1567
	add		x6, x7, x6	# 1567
	flw		f0, 0(x6)	# 1567
	flw		f1, -48(x2)	# 6
	fle		x31, f0, f1	# 6
	beq		x31, x0, fle_else.296357	# 6
	addi	x6, x0, 0	# 6
	jal		x0, fle_cont.296356	# 6
fle_else.296357:
	ori		x6, x0, 1	# 6
fle_cont.296356:
	beq		x6, x5, beq.296359	# 1569
	addi	x6, x0, 0	# 1570
	ori		x7, x0, 4	# 1570
	mul		x6, x6, x7	# 1570
	lw		x7, -44(x2)	# 1570
	add		x6, x7, x6	# 1570
	flw		f2, 0(x6)	# 1570
	fle		x31, f2, f0	# 6
	beq		x31, x0, fle_else.296361	# 6
	addi	x6, x0, 0	# 6
	jal		x0, fle_cont.296360	# 6
fle_else.296361:
	ori		x6, x0, 1	# 6
fle_cont.296360:
	addi	x8, x0, 0	# 1570
	beq		x6, x8, beq.296363	# 1570
	lui		x6, %hi(l.16894)	# 1572
	ori		x6, x0, %lo(l.16894)	# 1572
	flw		f2, 0(x6)	# 1572
	fadd	f0, f0, f2	# 1572
	addi	x6, x0, 0	# 1573
	ori		x8, x0, 4	# 1573
	mul		x6, x6, x8	# 1573
	lw		x8, -40(x2)	# 1573
	add		x6, x8, x6	# 1573
	flw		f2, 0(x6)	# 1573
	fmul	f2, f2, f0	# 1573
	addi	x6, x0, 0	# 1573
	ori		x9, x0, 4	# 1573
	mul		x6, x6, x9	# 1573
	lw		x9, -36(x2)	# 1573
	add		x6, x9, x6	# 1573
	flw		f3, 0(x6)	# 1573
	fadd	f2, f2, f3	# 1573
	ori		x6, x0, 1	# 1574
	ori		x10, x0, 4	# 1574
	mul		x6, x6, x10	# 1574
	add		x6, x8, x6	# 1574
	flw		f3, 0(x6)	# 1574
	fmul	f3, f3, f0	# 1574
	ori		x6, x0, 1	# 1574
	ori		x10, x0, 4	# 1574
	mul		x6, x6, x10	# 1574
	add		x6, x9, x6	# 1574
	flw		f4, 0(x6)	# 1574
	fadd	f3, f3, f4	# 1574
	ori		x6, x0, 2	# 1575
	ori		x10, x0, 4	# 1575
	mul		x6, x6, x10	# 1575
	add		x6, x8, x6	# 1575
	flw		f4, 0(x6)	# 1575
	fmul	f4, f4, f0	# 1575
	ori		x6, x0, 2	# 1575
	ori		x8, x0, 4	# 1575
	mul		x6, x6, x8	# 1575
	add		x6, x9, x6	# 1575
	flw		f5, 0(x6)	# 1575
	fadd	f4, f4, f5	# 1575
	addi	x6, x0, 0	# 1576
	ori		x8, x0, 4	# 1364
	mul		x6, x6, x8	# 1364
	lw		x8, -64(x2)	# 1364
	add		x6, x8, x6	# 1364
	lw		x6, 0(x6)	# 1364
	lui		x9, -1	# 1365
	ori		x9, x0, -1	# 1365
	sw		x4, -92(x2)	# 1365
	fsw		f4, -96(x2)	# 1365
	fsw		f3, -104(x2)	# 1365
	fsw		f2, -112(x2)	# 1365
	fsw		f0, -120(x2)	# 1365
	beq		x6, x9, beq.296365	# 1365
	ori		x9, x0, 4	# 1368
	mul		x6, x6, x9	# 1368
	lw		x9, -80(x2)	# 1368
	add		x6, x9, x6	# 1368
	lw		x6, 0(x6)	# 1368
	lw		x27, -32(x2)	# 1368
	addi	x4, x6, 0
	fsub	f1, f1, f1
	fadd	f1, f1, f3
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f4
	sw		x1, -128(x2)	# 1368
	addi	x2, x2, -132	# 1368
	lw		x31, 0(x27)	# 1368
	jalr	x1, x31, 0	# 1368
	addi	x2, x2, 132	# 1368
	lw		x1, -128(x2)	# 1368
	addi	x5, x0, 0	# 1368
	beq		x4, x5, beq.296367	# 1368
	addi	x4, x0, 0	# 1369
	jal		x0, beq_cont.296366	# 1368
beq.296367:
	ori		x4, x0, 1	# 1371
	ori		x5, x0, 4	# 1364
	mul		x4, x4, x5	# 1364
	lw		x5, -64(x2)	# 1364
	add		x4, x5, x4	# 1364
	lw		x4, 0(x4)	# 1364
	lw		x6, -28(x2)	# 1365
	beq		x4, x6, beq.296369	# 1365
	ori		x7, x0, 4	# 1368
	mul		x4, x4, x7	# 1368
	lw		x7, -80(x2)	# 1368
	add		x4, x7, x4	# 1368
	lw		x4, 0(x4)	# 1368
	lw		x8, 20(x4)	# 431
	ori		x9, x0, 4	# 436
	lw		x10, -88(x2)	# 436
	mul		x9, x10, x9	# 436
	add		x8, x8, x9	# 436
	flw		f0, 0(x8)	# 436
	flw		f1, -112(x2)	# 1350
	fsub	f0, f1, f0	# 1350
	lw		x8, 20(x4)	# 441
	ori		x9, x0, 4	# 446
	lw		x11, -72(x2)	# 446
	mul		x9, x11, x9	# 446
	add		x8, x8, x9	# 446
	flw		f2, 0(x8)	# 446
	flw		f3, -104(x2)	# 1351
	fsub	f2, f3, f2	# 1351
	lw		x8, 20(x4)	# 451
	ori		x9, x0, 4	# 456
	lw		x12, -24(x2)	# 456
	mul		x9, x12, x9	# 456
	add		x8, x8, x9	# 456
	flw		f4, 0(x8)	# 456
	flw		f5, -96(x2)	# 1352
	fsub	f4, f5, f4	# 1352
	lw		x8, 4(x4)	# 353
	ori		x9, x0, 1	# 1354
	beq		x8, x9, beq.296371	# 1354
	ori		x9, x0, 2	# 1356
	beq		x8, x9, beq.296373	# 1356
	lw		x27, -20(x2)	# 1343
	sw		x4, -128(x2)	# 1343
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f4
	sw		x1, -132(x2)	# 1343
	addi	x2, x2, -136	# 1343
	lw		x31, 0(x27)	# 1343
	jalr	x1, x31, 0	# 1343
	addi	x2, x2, 136	# 1343
	lw		x1, -132(x2)	# 1343
	lw		x4, -128(x2)	# 353
	lw		x5, 4(x4)	# 353
	lw		x6, -16(x2)	# 1344
	beq		x5, x6, beq.296375	# 1344
	jal		x0, beq_cont.296374	# 1344
beq.296375:
	lui		x5, %hi(l.15661)	# 1344
	ori		x5, x0, %lo(l.15661)	# 1344
	flw		f1, 0(x5)	# 1344
	fsub	f0, f0, f1	# 1344
beq_cont.296374:
	lw		x4, 24(x4)	# 373
	flw		f1, -48(x2)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.296377	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.296376	# 3
fle_else.296377:
	ori		x5, x0, 1	# 3
fle_cont.296376:
	lw		x6, -88(x2)	# 204
	beq		x4, x6, beq.296379	# 204
	beq		x5, x6, beq.296381	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.296380	# 204
beq.296381:
	ori		x4, x0, 1	# 204
beq_cont.296380:
	jal		x0, beq_cont.296378	# 204
beq.296379:
	addi	x4, x5, 0	# 204
beq_cont.296378:
	beq		x4, x6, beq.296383	# 1345
	addi	x4, x0, 0	# 1345
	jal		x0, beq_cont.296382	# 1345
beq.296383:
	ori		x4, x0, 1	# 1345
beq_cont.296382:
	jal		x0, beq_cont.296372	# 1356
beq.296373:
	lw		x8, 16(x4)	# 421
	ori		x9, x0, 4	# 297
	mul		x9, x10, x9	# 297
	add		x9, x8, x9	# 297
	flw		f6, 0(x9)	# 297
	fmul	f0, f6, f0	# 297
	ori		x9, x0, 4	# 297
	mul		x9, x11, x9	# 297
	add		x9, x8, x9	# 297
	flw		f6, 0(x9)	# 297
	fmul	f2, f6, f2	# 297
	fadd	f0, f0, f2	# 297
	ori		x9, x0, 4	# 297
	mul		x9, x12, x9	# 297
	add		x8, x8, x9	# 297
	flw		f2, 0(x8)	# 297
	fmul	f2, f2, f4	# 297
	fadd	f0, f0, f2	# 297
	lw		x4, 24(x4)	# 373
	flw		f2, -48(x2)	# 3
	fle		x31, f2, f0	# 3
	beq		x31, x0, fle_else.296385	# 3
	addi	x8, x0, 0	# 3
	jal		x0, fle_cont.296384	# 3
fle_else.296385:
	ori		x8, x0, 1	# 3
fle_cont.296384:
	beq		x4, x10, beq.296387	# 204
	beq		x8, x10, beq.296389	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.296388	# 204
beq.296389:
	ori		x4, x0, 1	# 204
beq_cont.296388:
	jal		x0, beq_cont.296386	# 204
beq.296387:
	addi	x4, x8, 0	# 204
beq_cont.296386:
	beq		x4, x10, beq.296391	# 1338
	addi	x4, x0, 0	# 1338
	jal		x0, beq_cont.296390	# 1338
beq.296391:
	ori		x4, x0, 1	# 1338
beq_cont.296390:
beq_cont.296372:
	jal		x0, beq_cont.296370	# 1354
beq.296371:
	flw		f6, -48(x2)	# 5
	fle		x31, f0, f6	# 5
	beq		x31, x0, fle_else.296393	# 5
	fsub	x31, x31, x31	# 5
	fsub	f0, x31, f0	# 5
	jal		x0, fle_cont.296392	# 5
fle_else.296393:
fle_cont.296392:
	lw		x8, 16(x4)	# 391
	ori		x9, x0, 4	# 396
	mul		x9, x10, x9	# 396
	add		x8, x8, x9	# 396
	flw		f7, 0(x8)	# 396
	fle		x31, f7, f0	# 6
	beq		x31, x0, fle_else.296395	# 6
	addi	x8, x0, 0	# 6
	jal		x0, fle_cont.296394	# 6
fle_else.296395:
	ori		x8, x0, 1	# 6
fle_cont.296394:
	beq		x8, x10, beq.296397	# 1327
	fle		x31, f2, f6	# 5
	beq		x31, x0, fle_else.296399	# 5
	fsub	f0, f0, f0	# 5
	fsub	f0, f0, f2	# 5
	jal		x0, fle_cont.296398	# 5
fle_else.296399:
	fsub	f0, f0, f0	# 5
	fadd	f0, f0, f2	# 5
fle_cont.296398:
	lw		x8, 16(x4)	# 401
	ori		x9, x0, 4	# 406
	mul		x9, x11, x9	# 406
	add		x8, x8, x9	# 406
	flw		f2, 0(x8)	# 406
	fle		x31, f2, f0	# 6
	beq		x31, x0, fle_else.296401	# 6
	addi	x8, x0, 0	# 6
	jal		x0, fle_cont.296400	# 6
fle_else.296401:
	ori		x8, x0, 1	# 6
fle_cont.296400:
	beq		x8, x10, beq.296403	# 1328
	fle		x31, f4, f6	# 5
	beq		x31, x0, fle_else.296405	# 5
	fsub	f0, f0, f0	# 5
	fsub	f0, f0, f4	# 5
	jal		x0, fle_cont.296404	# 5
fle_else.296405:
	fsub	f0, f0, f0	# 5
	fadd	f0, f0, f4	# 5
fle_cont.296404:
	lw		x8, 16(x4)	# 411
	ori		x9, x0, 4	# 416
	mul		x9, x12, x9	# 416
	add		x8, x8, x9	# 416
	flw		f2, 0(x8)	# 416
	fle		x31, f2, f0	# 6
	beq		x31, x0, fle_else.296407	# 6
	addi	x8, x0, 0	# 6
	jal		x0, fle_cont.296406	# 6
fle_else.296407:
	ori		x8, x0, 1	# 6
fle_cont.296406:
	jal		x0, beq_cont.296402	# 1328
beq.296403:
	addi	x8, x0, 0	# 1330
beq_cont.296402:
	jal		x0, beq_cont.296396	# 1327
beq.296397:
	addi	x8, x0, 0	# 1331
beq_cont.296396:
	beq		x8, x10, beq.296409	# 1326
	lw		x4, 24(x4)	# 373
	jal		x0, beq_cont.296408	# 1326
beq.296409:
	lw		x4, 24(x4)	# 373
	beq		x4, x10, beq.296411	# 1332
	addi	x4, x0, 0	# 1332
	jal		x0, beq_cont.296410	# 1332
beq.296411:
	ori		x4, x0, 1	# 1332
beq_cont.296410:
beq_cont.296408:
beq_cont.296370:
	lw		x5, -88(x2)	# 1368
	beq		x4, x5, beq.296413	# 1368
	addi	x4, x0, 0	# 1369
	jal		x0, beq_cont.296412	# 1368
beq.296413:
	ori		x4, x0, 2	# 1371
	ori		x6, x0, 4	# 1364
	mul		x4, x4, x6	# 1364
	lw		x6, -64(x2)	# 1364
	add		x4, x6, x4	# 1364
	lw		x4, 0(x4)	# 1364
	lw		x7, -28(x2)	# 1365
	beq		x4, x7, beq.296415	# 1365
	ori		x7, x0, 4	# 1368
	mul		x4, x4, x7	# 1368
	lw		x7, -80(x2)	# 1368
	add		x4, x7, x4	# 1368
	lw		x4, 0(x4)	# 1368
	flw		f0, -112(x2)	# 1368
	flw		f1, -104(x2)	# 1368
	flw		f2, -96(x2)	# 1368
	lw		x27, -32(x2)	# 1368
	sw		x1, -132(x2)	# 1368
	addi	x2, x2, -136	# 1368
	lw		x31, 0(x27)	# 1368
	jalr	x1, x31, 0	# 1368
	addi	x2, x2, 136	# 1368
	lw		x1, -132(x2)	# 1368
	lw		x5, -88(x2)	# 1368
	beq		x4, x5, beq.296417	# 1368
	addi	x4, x0, 0	# 1369
	jal		x0, beq_cont.296416	# 1368
beq.296417:
	ori		x4, x0, 3	# 1371
	flw		f0, -112(x2)	# 1371
	flw		f1, -104(x2)	# 1371
	flw		f2, -96(x2)	# 1371
	lw		x5, -64(x2)	# 1371
	lw		x27, -12(x2)	# 1371
	sw		x1, -132(x2)	# 1371
	addi	x2, x2, -136	# 1371
	lw		x31, 0(x27)	# 1371
	jalr	x1, x31, 0	# 1371
	addi	x2, x2, 136	# 1371
	lw		x1, -132(x2)	# 1371
beq_cont.296416:
	jal		x0, beq_cont.296414	# 1365
beq.296415:
	ori		x4, x0, 1	# 1366
beq_cont.296414:
beq_cont.296412:
	jal		x0, beq_cont.296368	# 1365
beq.296369:
	ori		x4, x0, 1	# 1366
beq_cont.296368:
beq_cont.296366:
	jal		x0, beq_cont.296364	# 1365
beq.296365:
	ori		x4, x0, 1	# 1366
beq_cont.296364:
	addi	x5, x0, 0	# 1576
	beq		x4, x5, beq.296419	# 1576
	addi	x4, x0, 0	# 1578
	ori		x5, x0, 4	# 1578
	mul		x4, x4, x5	# 1578
	lw		x5, -44(x2)	# 1578
	add		x4, x5, x4	# 1578
	flw		f0, -120(x2)	# 1578
	fsw		f0, 0(x4)	# 1578
	addi	x4, x0, 0	# 240
	ori		x5, x0, 4	# 240
	mul		x4, x4, x5	# 240
	lw		x5, -8(x2)	# 240
	add		x4, x5, x4	# 240
	flw		f0, -112(x2)	# 240
	fsw		f0, 0(x4)	# 240
	ori		x4, x0, 1	# 241
	ori		x6, x0, 4	# 241
	mul		x4, x4, x6	# 241
	add		x4, x5, x4	# 241
	flw		f0, -104(x2)	# 241
	fsw		f0, 0(x4)	# 241
	ori		x4, x0, 2	# 242
	ori		x6, x0, 4	# 242
	mul		x4, x4, x6	# 242
	add		x4, x5, x4	# 242
	flw		f0, -96(x2)	# 242
	fsw		f0, 0(x4)	# 242
	addi	x4, x0, 0	# 1580
	ori		x5, x0, 4	# 1580
	mul		x4, x4, x5	# 1580
	lw		x5, -4(x2)	# 1580
	add		x4, x5, x4	# 1580
	lw		x5, -84(x2)	# 1580
	sw		x5, 0(x4)	# 1580
	addi	x4, x0, 0	# 1581
	ori		x5, x0, 4	# 1581
	mul		x4, x4, x5	# 1581
	lw		x5, 0(x2)	# 1581
	add		x4, x5, x4	# 1581
	lw		x5, -92(x2)	# 1581
	sw		x5, 0(x4)	# 1581
	jal		x0, beq_cont.296418	# 1576
beq.296419:
beq_cont.296418:
	jal		x0, beq_cont.296362	# 1570
beq.296363:
beq_cont.296362:
	jal		x0, beq_cont.296358	# 1569
beq.296359:
beq_cont.296358:
	lw		x4, -72(x2)	# 1587
	lw		x5, -76(x2)	# 1587
	add		x4, x5, x4	# 1587
	lw		x5, -64(x2)	# 1587
	lw		x6, -60(x2)	# 1587
	lw		x27, -68(x2)	# 1587
	lw		x31, 0(x27)	# 1587
	jalr	x0, x31, 0	# 1587
beq.296355:
	ori		x4, x0, 4	# 1591
	lw		x6, -84(x2)	# 1591
	mul		x4, x6, x4	# 1591
	lw		x6, -80(x2)	# 1591
	add		x4, x6, x4	# 1591
	lw		x4, 0(x4)	# 1591
	lw		x4, 24(x4)	# 373
	beq		x4, x5, beq.296420	# 1591
	lw		x4, -72(x2)	# 1592
	lw		x5, -76(x2)	# 1592
	add		x4, x5, x4	# 1592
	lw		x5, -64(x2)	# 1592
	lw		x6, -60(x2)	# 1592
	lw		x27, -68(x2)	# 1592
	lw		x31, 0(x27)	# 1592
	jalr	x0, x31, 0	# 1592
beq.296420:
	jalr	x0, x1, 0	# 1593
beq.296346:
	jalr	x0, x1, 0	# 1560
solve_one_or_network_fast.2840:
	lw		x7, 20(x27)	# 1599
	lw		x8, 16(x27)	# 1599
	lw		x9, 12(x27)	# 1599
	lw		x10, 8(x27)	# 1599
	lw		x11, 4(x27)	# 1599
	ori		x12, x0, 4	# 1599
	mul		x12, x4, x12	# 1599
	add		x12, x5, x12	# 1599
	lw		x12, 0(x12)	# 1599
	beq		x12, x9, beq.296423	# 1600
	ori		x13, x0, 4	# 1601
	mul		x12, x12, x13	# 1601
	add		x12, x8, x12	# 1601
	lw		x12, 0(x12)	# 1601
	sw		x27, 0(x2)	# 1602
	sw		x6, -4(x2)	# 1602
	sw		x10, -8(x2)	# 1602
	sw		x7, -12(x2)	# 1602
	sw		x8, -16(x2)	# 1602
	sw		x9, -20(x2)	# 1602
	sw		x5, -24(x2)	# 1602
	sw		x11, -28(x2)	# 1602
	sw		x4, -32(x2)	# 1602
	addi	x5, x12, 0
	addi	x4, x10, 0
	addi	x27, x7, 0
	sw		x1, -36(x2)	# 1602
	addi	x2, x2, -40	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 40	# 1602
	lw		x1, -36(x2)	# 1602
	lw		x4, -28(x2)	# 1603
	lw		x5, -32(x2)	# 1603
	add		x5, x5, x4	# 1603
	ori		x6, x0, 4	# 1599
	mul		x6, x5, x6	# 1599
	lw		x7, -24(x2)	# 1599
	add		x6, x7, x6	# 1599
	lw		x6, 0(x6)	# 1599
	lw		x8, -20(x2)	# 1600
	beq		x6, x8, beq.296424	# 1600
	ori		x9, x0, 4	# 1601
	mul		x6, x6, x9	# 1601
	lw		x9, -16(x2)	# 1601
	add		x6, x9, x6	# 1601
	lw		x6, 0(x6)	# 1601
	lw		x10, -8(x2)	# 1602
	lw		x11, -4(x2)	# 1602
	lw		x27, -12(x2)	# 1602
	sw		x5, -36(x2)	# 1602
	addi	x5, x6, 0
	addi	x4, x10, 0
	addi	x6, x11, 0
	sw		x1, -40(x2)	# 1602
	addi	x2, x2, -44	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 44	# 1602
	lw		x1, -40(x2)	# 1602
	lw		x4, -28(x2)	# 1603
	lw		x5, -36(x2)	# 1603
	add		x5, x5, x4	# 1603
	ori		x6, x0, 4	# 1599
	mul		x6, x5, x6	# 1599
	lw		x7, -24(x2)	# 1599
	add		x6, x7, x6	# 1599
	lw		x6, 0(x6)	# 1599
	lw		x8, -20(x2)	# 1600
	beq		x6, x8, beq.296425	# 1600
	ori		x9, x0, 4	# 1601
	mul		x6, x6, x9	# 1601
	lw		x9, -16(x2)	# 1601
	add		x6, x9, x6	# 1601
	lw		x6, 0(x6)	# 1601
	lw		x10, -8(x2)	# 1602
	lw		x11, -4(x2)	# 1602
	lw		x27, -12(x2)	# 1602
	sw		x5, -40(x2)	# 1602
	addi	x5, x6, 0
	addi	x4, x10, 0
	addi	x6, x11, 0
	sw		x1, -44(x2)	# 1602
	addi	x2, x2, -48	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 48	# 1602
	lw		x1, -44(x2)	# 1602
	lw		x4, -28(x2)	# 1603
	lw		x5, -40(x2)	# 1603
	add		x5, x5, x4	# 1603
	ori		x6, x0, 4	# 1599
	mul		x6, x5, x6	# 1599
	lw		x7, -24(x2)	# 1599
	add		x6, x7, x6	# 1599
	lw		x6, 0(x6)	# 1599
	lw		x8, -20(x2)	# 1600
	beq		x6, x8, beq.296426	# 1600
	ori		x9, x0, 4	# 1601
	mul		x6, x6, x9	# 1601
	lw		x9, -16(x2)	# 1601
	add		x6, x9, x6	# 1601
	lw		x6, 0(x6)	# 1601
	lw		x10, -8(x2)	# 1602
	lw		x11, -4(x2)	# 1602
	lw		x27, -12(x2)	# 1602
	sw		x5, -44(x2)	# 1602
	addi	x5, x6, 0
	addi	x4, x10, 0
	addi	x6, x11, 0
	sw		x1, -48(x2)	# 1602
	addi	x2, x2, -52	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 52	# 1602
	lw		x1, -48(x2)	# 1602
	lw		x4, -28(x2)	# 1603
	lw		x5, -44(x2)	# 1603
	add		x5, x5, x4	# 1603
	ori		x6, x0, 4	# 1599
	mul		x6, x5, x6	# 1599
	lw		x7, -24(x2)	# 1599
	add		x6, x7, x6	# 1599
	lw		x6, 0(x6)	# 1599
	lw		x8, -20(x2)	# 1600
	beq		x6, x8, beq.296427	# 1600
	ori		x9, x0, 4	# 1601
	mul		x6, x6, x9	# 1601
	lw		x9, -16(x2)	# 1601
	add		x6, x9, x6	# 1601
	lw		x6, 0(x6)	# 1601
	lw		x10, -8(x2)	# 1602
	lw		x11, -4(x2)	# 1602
	lw		x27, -12(x2)	# 1602
	sw		x5, -48(x2)	# 1602
	addi	x5, x6, 0
	addi	x4, x10, 0
	addi	x6, x11, 0
	sw		x1, -52(x2)	# 1602
	addi	x2, x2, -56	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 56	# 1602
	lw		x1, -52(x2)	# 1602
	lw		x4, -28(x2)	# 1603
	lw		x5, -48(x2)	# 1603
	add		x5, x5, x4	# 1603
	ori		x6, x0, 4	# 1599
	mul		x6, x5, x6	# 1599
	lw		x7, -24(x2)	# 1599
	add		x6, x7, x6	# 1599
	lw		x6, 0(x6)	# 1599
	lw		x8, -20(x2)	# 1600
	beq		x6, x8, beq.296428	# 1600
	ori		x9, x0, 4	# 1601
	mul		x6, x6, x9	# 1601
	lw		x9, -16(x2)	# 1601
	add		x6, x9, x6	# 1601
	lw		x6, 0(x6)	# 1601
	lw		x10, -8(x2)	# 1602
	lw		x11, -4(x2)	# 1602
	lw		x27, -12(x2)	# 1602
	sw		x5, -52(x2)	# 1602
	addi	x5, x6, 0
	addi	x4, x10, 0
	addi	x6, x11, 0
	sw		x1, -56(x2)	# 1602
	addi	x2, x2, -60	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 60	# 1602
	lw		x1, -56(x2)	# 1602
	lw		x4, -28(x2)	# 1603
	lw		x5, -52(x2)	# 1603
	add		x5, x5, x4	# 1603
	ori		x6, x0, 4	# 1599
	mul		x6, x5, x6	# 1599
	lw		x7, -24(x2)	# 1599
	add		x6, x7, x6	# 1599
	lw		x6, 0(x6)	# 1599
	lw		x8, -20(x2)	# 1600
	beq		x6, x8, beq.296429	# 1600
	ori		x9, x0, 4	# 1601
	mul		x6, x6, x9	# 1601
	lw		x9, -16(x2)	# 1601
	add		x6, x9, x6	# 1601
	lw		x6, 0(x6)	# 1601
	lw		x10, -8(x2)	# 1602
	lw		x11, -4(x2)	# 1602
	lw		x27, -12(x2)	# 1602
	sw		x5, -56(x2)	# 1602
	addi	x5, x6, 0
	addi	x4, x10, 0
	addi	x6, x11, 0
	sw		x1, -60(x2)	# 1602
	addi	x2, x2, -64	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 64	# 1602
	lw		x1, -60(x2)	# 1602
	lw		x4, -28(x2)	# 1603
	lw		x5, -56(x2)	# 1603
	add		x5, x5, x4	# 1603
	ori		x6, x0, 4	# 1599
	mul		x6, x5, x6	# 1599
	lw		x7, -24(x2)	# 1599
	add		x6, x7, x6	# 1599
	lw		x6, 0(x6)	# 1599
	lw		x8, -20(x2)	# 1600
	beq		x6, x8, beq.296430	# 1600
	ori		x8, x0, 4	# 1601
	mul		x6, x6, x8	# 1601
	lw		x8, -16(x2)	# 1601
	add		x6, x8, x6	# 1601
	lw		x6, 0(x6)	# 1601
	lw		x8, -8(x2)	# 1602
	lw		x9, -4(x2)	# 1602
	lw		x27, -12(x2)	# 1602
	sw		x5, -60(x2)	# 1602
	addi	x5, x6, 0
	addi	x4, x8, 0
	addi	x6, x9, 0
	sw		x1, -64(x2)	# 1602
	addi	x2, x2, -68	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 68	# 1602
	lw		x1, -64(x2)	# 1602
	lw		x4, -28(x2)	# 1603
	lw		x5, -60(x2)	# 1603
	add		x4, x5, x4	# 1603
	lw		x5, -24(x2)	# 1603
	lw		x6, -4(x2)	# 1603
	lw		x27, 0(x2)	# 1603
	lw		x31, 0(x27)	# 1603
	jalr	x0, x31, 0	# 1603
beq.296430:
	jalr	x0, x1, 0	# 1604
beq.296429:
	jalr	x0, x1, 0	# 1604
beq.296428:
	jalr	x0, x1, 0	# 1604
beq.296427:
	jalr	x0, x1, 0	# 1604
beq.296426:
	jalr	x0, x1, 0	# 1604
beq.296425:
	jalr	x0, x1, 0	# 1604
beq.296424:
	jalr	x0, x1, 0	# 1604
beq.296423:
	jalr	x0, x1, 0	# 1604
trace_or_matrix_fast.2844:
	lw		x7, 56(x27)	# 1609
	lw		x8, 52(x27)	# 1609
	lw		x9, 48(x27)	# 1609
	lw		x10, 44(x27)	# 1609
	lw		x11, 40(x27)	# 1609
	lw		x12, 36(x27)	# 1609
	lw		x13, 32(x27)	# 1609
	lw		x14, 28(x27)	# 1609
	lw		x15, 24(x27)	# 1609
	lw		x16, 20(x27)	# 1609
	lw		x17, 16(x27)	# 1609
	lw		x18, 12(x27)	# 1609
	lw		x19, 8(x27)	# 1609
	flw		f0, 4(x27)	# 1609
	ori		x20, x0, 4	# 1609
	mul		x20, x4, x20	# 1609
	add		x20, x5, x20	# 1609
	lw		x20, 0(x20)	# 1609
	ori		x21, x0, 4	# 1610
	mul		x21, x18, x21	# 1610
	add		x21, x20, x21	# 1610
	lw		x21, 0(x21)	# 1610
	beq		x21, x16, beq.296439	# 1611
	ori		x22, x0, 99	# 1614
	sw		x27, 0(x2)	# 1614
	sw		x7, -4(x2)	# 1614
	sw		x8, -8(x2)	# 1614
	sw		x10, -12(x2)	# 1614
	sw		x17, -16(x2)	# 1614
	sw		x9, -20(x2)	# 1614
	sw		x15, -24(x2)	# 1614
	sw		x13, -28(x2)	# 1614
	sw		x11, -32(x2)	# 1614
	sw		x6, -36(x2)	# 1614
	sw		x12, -40(x2)	# 1614
	sw		x14, -44(x2)	# 1614
	sw		x22, -48(x2)	# 1614
	sw		x16, -52(x2)	# 1614
	sw		x18, -56(x2)	# 1614
	sw		x5, -60(x2)	# 1614
	sw		x19, -64(x2)	# 1614
	sw		x4, -68(x2)	# 1614
	beq		x21, x22, beq.296441	# 1614
	ori		x23, x0, 4	# 1173
	mul		x23, x21, x23	# 1173
	add		x23, x13, x23	# 1173
	lw		x23, 0(x23)	# 1173
	lw		x24, 40(x23)	# 548
	addi	x25, x0, 0	# 1175
	ori		x26, x0, 4	# 1175
	mul		x25, x25, x26	# 1175
	add		x25, x24, x25	# 1175
	flw		f1, 0(x25)	# 1175
	ori		x25, x0, 1	# 1176
	ori		x26, x0, 4	# 1176
	mul		x25, x25, x26	# 1176
	add		x25, x24, x25	# 1176
	flw		f2, 0(x25)	# 1176
	ori		x25, x0, 2	# 1177
	ori		x26, x0, 4	# 1177
	mul		x25, x25, x26	# 1177
	add		x25, x24, x25	# 1177
	flw		f3, 0(x25)	# 1177
	lw		x25, 4(x6)	# 645
	ori		x26, x0, 4	# 1179
	mul		x21, x21, x26	# 1179
	add		x21, x25, x21	# 1179
	lw		x21, 0(x21)	# 1179
	lw		x25, 4(x23)	# 353
	ori		x26, x0, 1	# 1181
	sw		x20, -72(x2)	# 1181
	beq		x25, x26, beq.296443	# 1181
	ori		x26, x0, 2	# 1183
	beq		x25, x26, beq.296445	# 1183
	addi	x6, x24, 0
	addi	x5, x21, 0
	addi	x4, x23, 0
	addi	x27, x8, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -76(x2)	# 1186
	addi	x2, x2, -80	# 1186
	lw		x31, 0(x27)	# 1186
	jalr	x1, x31, 0	# 1186
	addi	x2, x2, 80	# 1186
	lw		x1, -76(x2)	# 1186
	jal		x0, beq_cont.296444	# 1183
beq.296445:
	ori		x23, x0, 4	# 1146
	mul		x23, x18, x23	# 1146
	add		x23, x21, x23	# 1146
	flw		f1, 0(x23)	# 1146
	fle		x31, f0, f1	# 3
	beq		x31, x0, fle_else.296447	# 3
	addi	x23, x0, 0	# 3
	jal		x0, fle_cont.296446	# 3
fle_else.296447:
	ori		x23, x0, 1	# 3
fle_cont.296446:
	beq		x23, x18, beq.296449	# 1146
	ori		x23, x0, 4	# 1147
	mul		x23, x18, x23	# 1147
	add		x21, x21, x23	# 1147
	flw		f0, 0(x21)	# 1147
	ori		x21, x0, 4	# 1147
	mul		x21, x17, x21	# 1147
	add		x21, x24, x21	# 1147
	flw		f1, 0(x21)	# 1147
	fmul	f0, f0, f1	# 1147
	ori		x21, x0, 4	# 1147
	mul		x21, x18, x21	# 1147
	add		x21, x10, x21	# 1147
	fsw		f0, 0(x21)	# 1147
	ori		x4, x0, 1	# 1148
	jal		x0, beq_cont.296448	# 1146
beq.296449:
	addi	x4, x0, 0	# 1149
beq_cont.296448:
beq_cont.296444:
	jal		x0, beq_cont.296442	# 1181
beq.296443:
	lw		x24, 0(x6)	# 639
	addi	x6, x21, 0
	addi	x5, x24, 0
	addi	x4, x23, 0
	addi	x27, x9, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -76(x2)	# 1182
	addi	x2, x2, -80	# 1182
	lw		x31, 0(x27)	# 1182
	jalr	x1, x31, 0	# 1182
	addi	x2, x2, 80	# 1182
	lw		x1, -76(x2)	# 1182
beq_cont.296442:
	addi	x5, x0, 0	# 1620
	beq		x4, x5, beq.296451	# 1620
	addi	x4, x0, 0	# 1621
	ori		x5, x0, 4	# 1621
	mul		x4, x4, x5	# 1621
	lw		x5, -12(x2)	# 1621
	add		x4, x5, x4	# 1621
	flw		f0, 0(x4)	# 1621
	addi	x4, x0, 0	# 1622
	ori		x6, x0, 4	# 1622
	mul		x4, x4, x6	# 1622
	lw		x6, -4(x2)	# 1622
	add		x4, x6, x4	# 1622
	flw		f1, 0(x4)	# 1622
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.296453	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.296452	# 6
fle_else.296453:
	ori		x4, x0, 1	# 6
fle_cont.296452:
	addi	x7, x0, 0	# 1622
	beq		x4, x7, beq.296455	# 1622
	ori		x4, x0, 1	# 1623
	ori		x7, x0, 4	# 1599
	mul		x4, x4, x7	# 1599
	lw		x7, -72(x2)	# 1599
	add		x4, x7, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lui		x8, -1	# 1600
	ori		x8, x0, -1	# 1600
	beq		x4, x8, beq.296457	# 1600
	ori		x8, x0, 4	# 1601
	mul		x4, x4, x8	# 1601
	lw		x8, -44(x2)	# 1601
	add		x4, x8, x4	# 1601
	lw		x4, 0(x4)	# 1601
	addi	x9, x0, 0	# 1602
	lw		x10, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x10, 0
	addi	x5, x4, 0
	addi	x4, x9, 0
	sw		x1, -76(x2)	# 1602
	addi	x2, x2, -80	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 80	# 1602
	lw		x1, -76(x2)	# 1602
	ori		x4, x0, 2	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -72(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296459	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -76(x2)	# 1602
	addi	x2, x2, -80	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 80	# 1602
	lw		x1, -76(x2)	# 1602
	ori		x4, x0, 3	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -72(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296461	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -76(x2)	# 1602
	addi	x2, x2, -80	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 80	# 1602
	lw		x1, -76(x2)	# 1602
	ori		x4, x0, 4	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -72(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296463	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -76(x2)	# 1602
	addi	x2, x2, -80	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 80	# 1602
	lw		x1, -76(x2)	# 1602
	ori		x4, x0, 5	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -72(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296465	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -76(x2)	# 1602
	addi	x2, x2, -80	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 80	# 1602
	lw		x1, -76(x2)	# 1602
	ori		x4, x0, 6	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -72(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296467	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -76(x2)	# 1602
	addi	x2, x2, -80	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 80	# 1602
	lw		x1, -76(x2)	# 1602
	ori		x4, x0, 7	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -72(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296469	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -76(x2)	# 1602
	addi	x2, x2, -80	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 80	# 1602
	lw		x1, -76(x2)	# 1602
	ori		x4, x0, 8	# 1603
	lw		x5, -72(x2)	# 1603
	lw		x6, -36(x2)	# 1603
	lw		x27, -32(x2)	# 1603
	sw		x1, -76(x2)	# 1603
	addi	x2, x2, -80	# 1603
	lw		x31, 0(x27)	# 1603
	jalr	x1, x31, 0	# 1603
	addi	x2, x2, 80	# 1603
	lw		x1, -76(x2)	# 1603
	jal		x0, beq_cont.296468	# 1600
beq.296469:
beq_cont.296468:
	jal		x0, beq_cont.296466	# 1600
beq.296467:
beq_cont.296466:
	jal		x0, beq_cont.296464	# 1600
beq.296465:
beq_cont.296464:
	jal		x0, beq_cont.296462	# 1600
beq.296463:
beq_cont.296462:
	jal		x0, beq_cont.296460	# 1600
beq.296461:
beq_cont.296460:
	jal		x0, beq_cont.296458	# 1600
beq.296459:
beq_cont.296458:
	jal		x0, beq_cont.296456	# 1600
beq.296457:
beq_cont.296456:
	jal		x0, beq_cont.296454	# 1622
beq.296455:
beq_cont.296454:
	jal		x0, beq_cont.296450	# 1620
beq.296451:
beq_cont.296450:
	jal		x0, beq_cont.296440	# 1614
beq.296441:
	ori		x21, x0, 1	# 1615
	ori		x23, x0, 4	# 1599
	mul		x21, x21, x23	# 1599
	add		x21, x20, x21	# 1599
	lw		x21, 0(x21)	# 1599
	lui		x23, -1	# 1600
	ori		x23, x0, -1	# 1600
	beq		x21, x23, beq.296471	# 1600
	ori		x23, x0, 4	# 1601
	mul		x21, x21, x23	# 1601
	add		x21, x14, x21	# 1601
	lw		x21, 0(x21)	# 1601
	addi	x23, x0, 0	# 1602
	sw		x20, -72(x2)	# 1602
	addi	x5, x21, 0
	addi	x4, x23, 0
	addi	x27, x12, 0
	sw		x1, -76(x2)	# 1602
	addi	x2, x2, -80	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 80	# 1602
	lw		x1, -76(x2)	# 1602
	ori		x4, x0, 2	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -72(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296473	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -76(x2)	# 1602
	addi	x2, x2, -80	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 80	# 1602
	lw		x1, -76(x2)	# 1602
	ori		x4, x0, 3	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -72(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296475	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -76(x2)	# 1602
	addi	x2, x2, -80	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 80	# 1602
	lw		x1, -76(x2)	# 1602
	ori		x4, x0, 4	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -72(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296477	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -76(x2)	# 1602
	addi	x2, x2, -80	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 80	# 1602
	lw		x1, -76(x2)	# 1602
	ori		x4, x0, 5	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -72(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296479	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -76(x2)	# 1602
	addi	x2, x2, -80	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 80	# 1602
	lw		x1, -76(x2)	# 1602
	ori		x4, x0, 6	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -72(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296481	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -76(x2)	# 1602
	addi	x2, x2, -80	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 80	# 1602
	lw		x1, -76(x2)	# 1602
	ori		x4, x0, 7	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -72(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296483	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -76(x2)	# 1602
	addi	x2, x2, -80	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 80	# 1602
	lw		x1, -76(x2)	# 1602
	ori		x4, x0, 8	# 1603
	lw		x5, -72(x2)	# 1603
	lw		x6, -36(x2)	# 1603
	lw		x27, -32(x2)	# 1603
	sw		x1, -76(x2)	# 1603
	addi	x2, x2, -80	# 1603
	lw		x31, 0(x27)	# 1603
	jalr	x1, x31, 0	# 1603
	addi	x2, x2, 80	# 1603
	lw		x1, -76(x2)	# 1603
	jal		x0, beq_cont.296482	# 1600
beq.296483:
beq_cont.296482:
	jal		x0, beq_cont.296480	# 1600
beq.296481:
beq_cont.296480:
	jal		x0, beq_cont.296478	# 1600
beq.296479:
beq_cont.296478:
	jal		x0, beq_cont.296476	# 1600
beq.296477:
beq_cont.296476:
	jal		x0, beq_cont.296474	# 1600
beq.296475:
beq_cont.296474:
	jal		x0, beq_cont.296472	# 1600
beq.296473:
beq_cont.296472:
	jal		x0, beq_cont.296470	# 1600
beq.296471:
beq_cont.296470:
beq_cont.296440:
	lw		x4, -64(x2)	# 1627
	lw		x5, -68(x2)	# 1627
	add		x5, x5, x4	# 1627
	ori		x6, x0, 4	# 1609
	mul		x6, x5, x6	# 1609
	lw		x7, -60(x2)	# 1609
	add		x6, x7, x6	# 1609
	lw		x6, 0(x6)	# 1609
	ori		x8, x0, 4	# 1610
	lw		x9, -56(x2)	# 1610
	mul		x8, x9, x8	# 1610
	add		x8, x6, x8	# 1610
	lw		x8, 0(x8)	# 1610
	lw		x10, -52(x2)	# 1611
	beq		x8, x10, beq.296484	# 1611
	lw		x11, -48(x2)	# 1614
	sw		x5, -76(x2)	# 1614
	beq		x8, x11, beq.296486	# 1614
	ori		x11, x0, 4	# 1173
	mul		x11, x8, x11	# 1173
	lw		x12, -28(x2)	# 1173
	add		x11, x12, x11	# 1173
	lw		x11, 0(x11)	# 1173
	lw		x12, 40(x11)	# 548
	ori		x13, x0, 4	# 1175
	mul		x13, x9, x13	# 1175
	add		x13, x12, x13	# 1175
	flw		f0, 0(x13)	# 1175
	ori		x13, x0, 4	# 1176
	mul		x13, x4, x13	# 1176
	add		x13, x12, x13	# 1176
	flw		f1, 0(x13)	# 1176
	ori		x13, x0, 4	# 1177
	lw		x14, -24(x2)	# 1177
	mul		x13, x14, x13	# 1177
	add		x13, x12, x13	# 1177
	flw		f2, 0(x13)	# 1177
	lw		x13, -36(x2)	# 645
	lw		x15, 4(x13)	# 645
	ori		x16, x0, 4	# 1179
	mul		x8, x8, x16	# 1179
	add		x8, x15, x8	# 1179
	lw		x8, 0(x8)	# 1179
	lw		x15, 4(x11)	# 353
	sw		x6, -80(x2)	# 1181
	beq		x15, x4, beq.296488	# 1181
	beq		x15, x14, beq.296490	# 1183
	lw		x27, -8(x2)	# 1186
	addi	x6, x12, 0
	addi	x5, x8, 0
	addi	x4, x11, 0
	sw		x1, -84(x2)	# 1186
	addi	x2, x2, -88	# 1186
	lw		x31, 0(x27)	# 1186
	jalr	x1, x31, 0	# 1186
	addi	x2, x2, 88	# 1186
	lw		x1, -84(x2)	# 1186
	jal		x0, beq_cont.296489	# 1183
beq.296490:
	ori		x11, x0, 4	# 1146
	mul		x11, x9, x11	# 1146
	add		x11, x8, x11	# 1146
	flw		f0, 0(x11)	# 1146
	lui		x11, %hi(l.15659)	# 3
	ori		x11, x0, %lo(l.15659)	# 3
	flw		f1, 0(x11)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.296492	# 3
	addi	x11, x0, 0	# 3
	jal		x0, fle_cont.296491	# 3
fle_else.296492:
	ori		x11, x0, 1	# 3
fle_cont.296491:
	beq		x11, x9, beq.296494	# 1146
	ori		x11, x0, 4	# 1147
	mul		x11, x9, x11	# 1147
	add		x8, x8, x11	# 1147
	flw		f0, 0(x8)	# 1147
	ori		x8, x0, 4	# 1147
	lw		x11, -16(x2)	# 1147
	mul		x8, x11, x8	# 1147
	add		x8, x12, x8	# 1147
	flw		f1, 0(x8)	# 1147
	fmul	f0, f0, f1	# 1147
	ori		x8, x0, 4	# 1147
	mul		x8, x9, x8	# 1147
	lw		x11, -12(x2)	# 1147
	add		x8, x11, x8	# 1147
	fsw		f0, 0(x8)	# 1147
	ori		x4, x0, 1	# 1148
	jal		x0, beq_cont.296493	# 1146
beq.296494:
	addi	x4, x0, 0	# 1149
beq_cont.296493:
beq_cont.296489:
	jal		x0, beq_cont.296487	# 1181
beq.296488:
	lw		x12, 0(x13)	# 639
	lw		x27, -20(x2)	# 1182
	addi	x6, x8, 0
	addi	x5, x12, 0
	addi	x4, x11, 0
	sw		x1, -84(x2)	# 1182
	addi	x2, x2, -88	# 1182
	lw		x31, 0(x27)	# 1182
	jalr	x1, x31, 0	# 1182
	addi	x2, x2, 88	# 1182
	lw		x1, -84(x2)	# 1182
beq_cont.296487:
	addi	x5, x0, 0	# 1620
	beq		x4, x5, beq.296496	# 1620
	addi	x4, x0, 0	# 1621
	ori		x5, x0, 4	# 1621
	mul		x4, x4, x5	# 1621
	lw		x5, -12(x2)	# 1621
	add		x4, x5, x4	# 1621
	flw		f0, 0(x4)	# 1621
	addi	x4, x0, 0	# 1622
	ori		x5, x0, 4	# 1622
	mul		x4, x4, x5	# 1622
	lw		x5, -4(x2)	# 1622
	add		x4, x5, x4	# 1622
	flw		f1, 0(x4)	# 1622
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.296498	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.296497	# 6
fle_else.296498:
	ori		x4, x0, 1	# 6
fle_cont.296497:
	addi	x5, x0, 0	# 1622
	beq		x4, x5, beq.296500	# 1622
	ori		x4, x0, 1	# 1623
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -80(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296502	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -84(x2)	# 1602
	addi	x2, x2, -88	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 88	# 1602
	lw		x1, -84(x2)	# 1602
	ori		x4, x0, 2	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -80(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296504	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -84(x2)	# 1602
	addi	x2, x2, -88	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 88	# 1602
	lw		x1, -84(x2)	# 1602
	ori		x4, x0, 3	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -80(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296506	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -84(x2)	# 1602
	addi	x2, x2, -88	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 88	# 1602
	lw		x1, -84(x2)	# 1602
	ori		x4, x0, 4	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -80(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296508	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -84(x2)	# 1602
	addi	x2, x2, -88	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 88	# 1602
	lw		x1, -84(x2)	# 1602
	ori		x4, x0, 5	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -80(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296510	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -84(x2)	# 1602
	addi	x2, x2, -88	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 88	# 1602
	lw		x1, -84(x2)	# 1602
	ori		x4, x0, 6	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -80(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296512	# 1600
	ori		x6, x0, 4	# 1601
	mul		x4, x4, x6	# 1601
	lw		x6, -44(x2)	# 1601
	add		x4, x6, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x6, -56(x2)	# 1602
	lw		x7, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x5, x4, 0
	addi	x4, x6, 0
	addi	x6, x7, 0
	sw		x1, -84(x2)	# 1602
	addi	x2, x2, -88	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 88	# 1602
	lw		x1, -84(x2)	# 1602
	ori		x4, x0, 7	# 1603
	lw		x5, -80(x2)	# 1603
	lw		x6, -36(x2)	# 1603
	lw		x27, -32(x2)	# 1603
	sw		x1, -84(x2)	# 1603
	addi	x2, x2, -88	# 1603
	lw		x31, 0(x27)	# 1603
	jalr	x1, x31, 0	# 1603
	addi	x2, x2, 88	# 1603
	lw		x1, -84(x2)	# 1603
	jal		x0, beq_cont.296511	# 1600
beq.296512:
beq_cont.296511:
	jal		x0, beq_cont.296509	# 1600
beq.296510:
beq_cont.296509:
	jal		x0, beq_cont.296507	# 1600
beq.296508:
beq_cont.296507:
	jal		x0, beq_cont.296505	# 1600
beq.296506:
beq_cont.296505:
	jal		x0, beq_cont.296503	# 1600
beq.296504:
beq_cont.296503:
	jal		x0, beq_cont.296501	# 1600
beq.296502:
beq_cont.296501:
	jal		x0, beq_cont.296499	# 1622
beq.296500:
beq_cont.296499:
	jal		x0, beq_cont.296495	# 1620
beq.296496:
beq_cont.296495:
	jal		x0, beq_cont.296485	# 1614
beq.296486:
	ori		x8, x0, 1	# 1615
	ori		x11, x0, 4	# 1599
	mul		x8, x8, x11	# 1599
	add		x8, x6, x8	# 1599
	lw		x8, 0(x8)	# 1599
	beq		x8, x10, beq.296514	# 1600
	ori		x11, x0, 4	# 1601
	mul		x8, x8, x11	# 1601
	lw		x11, -44(x2)	# 1601
	add		x8, x11, x8	# 1601
	lw		x8, 0(x8)	# 1601
	lw		x12, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	sw		x6, -80(x2)	# 1602
	addi	x6, x12, 0
	addi	x5, x8, 0
	addi	x4, x9, 0
	sw		x1, -84(x2)	# 1602
	addi	x2, x2, -88	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 88	# 1602
	lw		x1, -84(x2)	# 1602
	ori		x4, x0, 2	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -80(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296516	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -84(x2)	# 1602
	addi	x2, x2, -88	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 88	# 1602
	lw		x1, -84(x2)	# 1602
	ori		x4, x0, 3	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -80(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296518	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -84(x2)	# 1602
	addi	x2, x2, -88	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 88	# 1602
	lw		x1, -84(x2)	# 1602
	ori		x4, x0, 4	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -80(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296520	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -84(x2)	# 1602
	addi	x2, x2, -88	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 88	# 1602
	lw		x1, -84(x2)	# 1602
	ori		x4, x0, 5	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -80(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296522	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -44(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -56(x2)	# 1602
	lw		x9, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -84(x2)	# 1602
	addi	x2, x2, -88	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 88	# 1602
	lw		x1, -84(x2)	# 1602
	ori		x4, x0, 6	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -80(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -52(x2)	# 1600
	beq		x4, x6, beq.296524	# 1600
	ori		x6, x0, 4	# 1601
	mul		x4, x4, x6	# 1601
	lw		x6, -44(x2)	# 1601
	add		x4, x6, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x6, -56(x2)	# 1602
	lw		x7, -36(x2)	# 1602
	lw		x27, -40(x2)	# 1602
	addi	x5, x4, 0
	addi	x4, x6, 0
	addi	x6, x7, 0
	sw		x1, -84(x2)	# 1602
	addi	x2, x2, -88	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 88	# 1602
	lw		x1, -84(x2)	# 1602
	ori		x4, x0, 7	# 1603
	lw		x5, -80(x2)	# 1603
	lw		x6, -36(x2)	# 1603
	lw		x27, -32(x2)	# 1603
	sw		x1, -84(x2)	# 1603
	addi	x2, x2, -88	# 1603
	lw		x31, 0(x27)	# 1603
	jalr	x1, x31, 0	# 1603
	addi	x2, x2, 88	# 1603
	lw		x1, -84(x2)	# 1603
	jal		x0, beq_cont.296523	# 1600
beq.296524:
beq_cont.296523:
	jal		x0, beq_cont.296521	# 1600
beq.296522:
beq_cont.296521:
	jal		x0, beq_cont.296519	# 1600
beq.296520:
beq_cont.296519:
	jal		x0, beq_cont.296517	# 1600
beq.296518:
beq_cont.296517:
	jal		x0, beq_cont.296515	# 1600
beq.296516:
beq_cont.296515:
	jal		x0, beq_cont.296513	# 1600
beq.296514:
beq_cont.296513:
beq_cont.296485:
	lw		x4, -64(x2)	# 1627
	lw		x5, -76(x2)	# 1627
	add		x4, x5, x4	# 1627
	lw		x5, -60(x2)	# 1627
	lw		x6, -36(x2)	# 1627
	lw		x27, 0(x2)	# 1627
	lw		x31, 0(x27)	# 1627
	jalr	x0, x31, 0	# 1627
beq.296484:
	jalr	x0, x1, 0	# 1612
beq.296439:
	jalr	x0, x1, 0	# 1612
judge_intersection_fast.2848:
	lw		x5, 64(x27)	# 1634
	lw		x6, 60(x27)	# 1634
	lw		x7, 56(x27)	# 1634
	lw		x8, 52(x27)	# 1634
	lw		x9, 48(x27)	# 1634
	lw		x10, 44(x27)	# 1634
	lw		x11, 40(x27)	# 1634
	lw		x12, 36(x27)	# 1634
	lw		x13, 32(x27)	# 1634
	lw		x14, 28(x27)	# 1634
	lw		x15, 24(x27)	# 1634
	lw		x16, 20(x27)	# 1634
	lw		x17, 16(x27)	# 1634
	lw		x18, 12(x27)	# 1634
	lw		x19, 8(x27)	# 1634
	flw		f0, 4(x27)	# 1634
	ori		x20, x0, 4	# 1634
	mul		x20, x18, x20	# 1634
	add		x20, x6, x20	# 1634
	fsw		f0, 0(x20)	# 1634
	ori		x20, x0, 4	# 1635
	mul		x20, x18, x20	# 1635
	add		x12, x12, x20	# 1635
	lw		x12, 0(x12)	# 1635
	ori		x20, x0, 4	# 1609
	mul		x20, x18, x20	# 1609
	add		x20, x12, x20	# 1609
	lw		x20, 0(x20)	# 1609
	ori		x21, x0, 4	# 1610
	mul		x21, x18, x21	# 1610
	add		x21, x20, x21	# 1610
	lw		x21, 0(x21)	# 1610
	sw		x6, 0(x2)	# 1611
	sw		x18, -4(x2)	# 1611
	beq		x21, x16, beq.296528	# 1611
	ori		x22, x0, 99	# 1614
	sw		x4, -8(x2)	# 1614
	sw		x12, -12(x2)	# 1614
	sw		x5, -16(x2)	# 1614
	beq		x21, x22, beq.296530	# 1614
	ori		x22, x0, 4	# 1173
	mul		x22, x21, x22	# 1173
	add		x13, x13, x22	# 1173
	lw		x13, 0(x13)	# 1173
	lw		x22, 40(x13)	# 548
	ori		x23, x0, 4	# 1175
	mul		x23, x18, x23	# 1175
	add		x23, x22, x23	# 1175
	flw		f0, 0(x23)	# 1175
	ori		x23, x0, 4	# 1176
	mul		x23, x19, x23	# 1176
	add		x23, x22, x23	# 1176
	flw		f1, 0(x23)	# 1176
	ori		x23, x0, 4	# 1177
	mul		x23, x15, x23	# 1177
	add		x23, x22, x23	# 1177
	flw		f2, 0(x23)	# 1177
	lw		x23, 4(x4)	# 645
	ori		x24, x0, 4	# 1179
	mul		x21, x21, x24	# 1179
	add		x21, x23, x21	# 1179
	lw		x21, 0(x21)	# 1179
	lw		x23, 4(x13)	# 353
	sw		x10, -20(x2)	# 1181
	sw		x11, -24(x2)	# 1181
	sw		x14, -28(x2)	# 1181
	sw		x16, -32(x2)	# 1181
	sw		x20, -36(x2)	# 1181
	sw		x9, -40(x2)	# 1181
	beq		x23, x19, beq.296532	# 1181
	beq		x23, x15, beq.296534	# 1183
	addi	x6, x22, 0
	addi	x5, x21, 0
	addi	x4, x13, 0
	addi	x27, x7, 0
	sw		x1, -44(x2)	# 1186
	addi	x2, x2, -48	# 1186
	lw		x31, 0(x27)	# 1186
	jalr	x1, x31, 0	# 1186
	addi	x2, x2, 48	# 1186
	lw		x1, -44(x2)	# 1186
	jal		x0, beq_cont.296533	# 1183
beq.296534:
	ori		x7, x0, 4	# 1146
	mul		x7, x18, x7	# 1146
	add		x7, x21, x7	# 1146
	flw		f0, 0(x7)	# 1146
	lui		x7, %hi(l.15659)	# 3
	ori		x7, x0, %lo(l.15659)	# 3
	flw		f1, 0(x7)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.296536	# 3
	addi	x7, x0, 0	# 3
	jal		x0, fle_cont.296535	# 3
fle_else.296536:
	ori		x7, x0, 1	# 3
fle_cont.296535:
	beq		x7, x18, beq.296538	# 1146
	ori		x7, x0, 4	# 1147
	mul		x7, x18, x7	# 1147
	add		x7, x21, x7	# 1147
	flw		f0, 0(x7)	# 1147
	ori		x7, x0, 4	# 1147
	mul		x7, x17, x7	# 1147
	add		x7, x22, x7	# 1147
	flw		f1, 0(x7)	# 1147
	fmul	f0, f0, f1	# 1147
	ori		x7, x0, 4	# 1147
	mul		x7, x18, x7	# 1147
	add		x7, x9, x7	# 1147
	fsw		f0, 0(x7)	# 1147
	ori		x4, x0, 1	# 1148
	jal		x0, beq_cont.296537	# 1146
beq.296538:
	addi	x4, x0, 0	# 1149
beq_cont.296537:
beq_cont.296533:
	jal		x0, beq_cont.296531	# 1181
beq.296532:
	lw		x7, 0(x4)	# 639
	addi	x6, x21, 0
	addi	x5, x7, 0
	addi	x4, x13, 0
	addi	x27, x8, 0
	sw		x1, -44(x2)	# 1182
	addi	x2, x2, -48	# 1182
	lw		x31, 0(x27)	# 1182
	jalr	x1, x31, 0	# 1182
	addi	x2, x2, 48	# 1182
	lw		x1, -44(x2)	# 1182
beq_cont.296531:
	addi	x5, x0, 0	# 1620
	beq		x4, x5, beq.296540	# 1620
	addi	x4, x0, 0	# 1621
	ori		x5, x0, 4	# 1621
	mul		x4, x4, x5	# 1621
	lw		x5, -40(x2)	# 1621
	add		x4, x5, x4	# 1621
	flw		f0, 0(x4)	# 1621
	addi	x4, x0, 0	# 1622
	ori		x5, x0, 4	# 1622
	mul		x4, x4, x5	# 1622
	lw		x5, 0(x2)	# 1622
	add		x4, x5, x4	# 1622
	flw		f1, 0(x4)	# 1622
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.296542	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.296541	# 6
fle_else.296542:
	ori		x4, x0, 1	# 6
fle_cont.296541:
	addi	x6, x0, 0	# 1622
	beq		x4, x6, beq.296544	# 1622
	ori		x4, x0, 1	# 1623
	ori		x6, x0, 4	# 1599
	mul		x4, x4, x6	# 1599
	lw		x6, -36(x2)	# 1599
	add		x4, x6, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x7, -32(x2)	# 1600
	beq		x4, x7, beq.296546	# 1600
	ori		x8, x0, 4	# 1601
	mul		x4, x4, x8	# 1601
	lw		x8, -28(x2)	# 1601
	add		x4, x8, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x9, -4(x2)	# 1602
	lw		x10, -8(x2)	# 1602
	lw		x27, -24(x2)	# 1602
	addi	x6, x10, 0
	addi	x5, x4, 0
	addi	x4, x9, 0
	sw		x1, -44(x2)	# 1602
	addi	x2, x2, -48	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 48	# 1602
	lw		x1, -44(x2)	# 1602
	ori		x4, x0, 2	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -36(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -32(x2)	# 1600
	beq		x4, x6, beq.296548	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -28(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -4(x2)	# 1602
	lw		x9, -8(x2)	# 1602
	lw		x27, -24(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -44(x2)	# 1602
	addi	x2, x2, -48	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 48	# 1602
	lw		x1, -44(x2)	# 1602
	ori		x4, x0, 3	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -36(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -32(x2)	# 1600
	beq		x4, x6, beq.296550	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -28(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -4(x2)	# 1602
	lw		x9, -8(x2)	# 1602
	lw		x27, -24(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -44(x2)	# 1602
	addi	x2, x2, -48	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 48	# 1602
	lw		x1, -44(x2)	# 1602
	ori		x4, x0, 4	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -36(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -32(x2)	# 1600
	beq		x4, x6, beq.296552	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -28(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -4(x2)	# 1602
	lw		x9, -8(x2)	# 1602
	lw		x27, -24(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -44(x2)	# 1602
	addi	x2, x2, -48	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 48	# 1602
	lw		x1, -44(x2)	# 1602
	ori		x4, x0, 5	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -36(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -32(x2)	# 1600
	beq		x4, x6, beq.296554	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -28(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -4(x2)	# 1602
	lw		x9, -8(x2)	# 1602
	lw		x27, -24(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -44(x2)	# 1602
	addi	x2, x2, -48	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 48	# 1602
	lw		x1, -44(x2)	# 1602
	ori		x4, x0, 6	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -36(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -32(x2)	# 1600
	beq		x4, x6, beq.296556	# 1600
	ori		x6, x0, 4	# 1601
	mul		x4, x4, x6	# 1601
	lw		x6, -28(x2)	# 1601
	add		x4, x6, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x6, -4(x2)	# 1602
	lw		x7, -8(x2)	# 1602
	lw		x27, -24(x2)	# 1602
	addi	x5, x4, 0
	addi	x4, x6, 0
	addi	x6, x7, 0
	sw		x1, -44(x2)	# 1602
	addi	x2, x2, -48	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 48	# 1602
	lw		x1, -44(x2)	# 1602
	ori		x4, x0, 7	# 1603
	lw		x5, -36(x2)	# 1603
	lw		x6, -8(x2)	# 1603
	lw		x27, -20(x2)	# 1603
	sw		x1, -44(x2)	# 1603
	addi	x2, x2, -48	# 1603
	lw		x31, 0(x27)	# 1603
	jalr	x1, x31, 0	# 1603
	addi	x2, x2, 48	# 1603
	lw		x1, -44(x2)	# 1603
	jal		x0, beq_cont.296555	# 1600
beq.296556:
beq_cont.296555:
	jal		x0, beq_cont.296553	# 1600
beq.296554:
beq_cont.296553:
	jal		x0, beq_cont.296551	# 1600
beq.296552:
beq_cont.296551:
	jal		x0, beq_cont.296549	# 1600
beq.296550:
beq_cont.296549:
	jal		x0, beq_cont.296547	# 1600
beq.296548:
beq_cont.296547:
	jal		x0, beq_cont.296545	# 1600
beq.296546:
beq_cont.296545:
	jal		x0, beq_cont.296543	# 1622
beq.296544:
beq_cont.296543:
	jal		x0, beq_cont.296539	# 1620
beq.296540:
beq_cont.296539:
	jal		x0, beq_cont.296529	# 1614
beq.296530:
	ori		x7, x0, 1	# 1615
	ori		x8, x0, 4	# 1599
	mul		x7, x7, x8	# 1599
	add		x7, x20, x7	# 1599
	lw		x7, 0(x7)	# 1599
	beq		x7, x16, beq.296558	# 1600
	ori		x8, x0, 4	# 1601
	mul		x7, x7, x8	# 1601
	add		x7, x14, x7	# 1601
	lw		x7, 0(x7)	# 1601
	sw		x10, -20(x2)	# 1602
	sw		x11, -24(x2)	# 1602
	sw		x14, -28(x2)	# 1602
	sw		x16, -32(x2)	# 1602
	sw		x20, -36(x2)	# 1602
	addi	x6, x4, 0
	addi	x5, x7, 0
	addi	x27, x11, 0
	addi	x4, x18, 0
	sw		x1, -44(x2)	# 1602
	addi	x2, x2, -48	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 48	# 1602
	lw		x1, -44(x2)	# 1602
	ori		x4, x0, 2	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -36(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -32(x2)	# 1600
	beq		x4, x6, beq.296560	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -28(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -4(x2)	# 1602
	lw		x9, -8(x2)	# 1602
	lw		x27, -24(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -44(x2)	# 1602
	addi	x2, x2, -48	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 48	# 1602
	lw		x1, -44(x2)	# 1602
	ori		x4, x0, 3	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -36(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -32(x2)	# 1600
	beq		x4, x6, beq.296562	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -28(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -4(x2)	# 1602
	lw		x9, -8(x2)	# 1602
	lw		x27, -24(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -44(x2)	# 1602
	addi	x2, x2, -48	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 48	# 1602
	lw		x1, -44(x2)	# 1602
	ori		x4, x0, 4	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -36(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -32(x2)	# 1600
	beq		x4, x6, beq.296564	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -28(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -4(x2)	# 1602
	lw		x9, -8(x2)	# 1602
	lw		x27, -24(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -44(x2)	# 1602
	addi	x2, x2, -48	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 48	# 1602
	lw		x1, -44(x2)	# 1602
	ori		x4, x0, 5	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -36(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -32(x2)	# 1600
	beq		x4, x6, beq.296566	# 1600
	ori		x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	lw		x7, -28(x2)	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x8, -4(x2)	# 1602
	lw		x9, -8(x2)	# 1602
	lw		x27, -24(x2)	# 1602
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -44(x2)	# 1602
	addi	x2, x2, -48	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 48	# 1602
	lw		x1, -44(x2)	# 1602
	ori		x4, x0, 6	# 1603
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -36(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -32(x2)	# 1600
	beq		x4, x6, beq.296568	# 1600
	ori		x6, x0, 4	# 1601
	mul		x4, x4, x6	# 1601
	lw		x6, -28(x2)	# 1601
	add		x4, x6, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x6, -4(x2)	# 1602
	lw		x7, -8(x2)	# 1602
	lw		x27, -24(x2)	# 1602
	addi	x5, x4, 0
	addi	x4, x6, 0
	addi	x6, x7, 0
	sw		x1, -44(x2)	# 1602
	addi	x2, x2, -48	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 48	# 1602
	lw		x1, -44(x2)	# 1602
	ori		x4, x0, 7	# 1603
	lw		x5, -36(x2)	# 1603
	lw		x6, -8(x2)	# 1603
	lw		x27, -20(x2)	# 1603
	sw		x1, -44(x2)	# 1603
	addi	x2, x2, -48	# 1603
	lw		x31, 0(x27)	# 1603
	jalr	x1, x31, 0	# 1603
	addi	x2, x2, 48	# 1603
	lw		x1, -44(x2)	# 1603
	jal		x0, beq_cont.296567	# 1600
beq.296568:
beq_cont.296567:
	jal		x0, beq_cont.296565	# 1600
beq.296566:
beq_cont.296565:
	jal		x0, beq_cont.296563	# 1600
beq.296564:
beq_cont.296563:
	jal		x0, beq_cont.296561	# 1600
beq.296562:
beq_cont.296561:
	jal		x0, beq_cont.296559	# 1600
beq.296560:
beq_cont.296559:
	jal		x0, beq_cont.296557	# 1600
beq.296558:
beq_cont.296557:
beq_cont.296529:
	ori		x4, x0, 1	# 1627
	lw		x5, -12(x2)	# 1627
	lw		x6, -8(x2)	# 1627
	lw		x27, -16(x2)	# 1627
	sw		x1, -44(x2)	# 1627
	addi	x2, x2, -48	# 1627
	lw		x31, 0(x27)	# 1627
	jalr	x1, x31, 0	# 1627
	addi	x2, x2, 48	# 1627
	lw		x1, -44(x2)	# 1627
	jal		x0, beq_cont.296527	# 1611
beq.296528:
beq_cont.296527:
	ori		x4, x0, 4	# 1636
	lw		x5, -4(x2)	# 1636
	mul		x4, x5, x4	# 1636
	lw		x6, 0(x2)	# 1636
	add		x4, x6, x4	# 1636
	flw		f0, 0(x4)	# 1636
	lui		x4, %hi(l.17059)	# 1638
	ori		x4, x0, %lo(l.17059)	# 1638
	flw		f1, 0(x4)	# 1638
	fle		x31, f0, f1	# 6
	beq		x31, x0, fle_else.296570	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.296569	# 6
fle_else.296570:
	ori		x4, x0, 1	# 6
fle_cont.296569:
	beq		x4, x5, beq.296571	# 1638
	lui		x4, %hi(l.18079)	# 1639
	ori		x4, x0, %lo(l.18079)	# 1639
	flw		f1, 0(x4)	# 1639
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.296572	# 6
	addi	x4, x0, 0	# 6
	jalr	x0, x1, 0	# 6
fle_else.296572:
	ori		x4, x0, 1	# 6
	jalr	x0, x1, 0	# 6
beq.296571:
	addi	x4, x0, 0	# 1640
	jalr	x0, x1, 0	# 1640
get_nvector_second.2854:
	lw		x5, 24(x27)	# 1670
	lw		x6, 20(x27)	# 1670
	lw		x7, 16(x27)	# 1670
	lw		x8, 12(x27)	# 1670
	lw		x9, 8(x27)	# 1670
	flw		f0, 4(x27)	# 1670
	ori		x10, x0, 4	# 1670
	mul		x10, x8, x10	# 1670
	add		x10, x6, x10	# 1670
	flw		f1, 0(x10)	# 1670
	lw		x10, 20(x4)	# 431
	ori		x11, x0, 4	# 436
	mul		x11, x8, x11	# 436
	add		x10, x10, x11	# 436
	flw		f2, 0(x10)	# 436
	fsub	f1, f1, f2	# 1670
	ori		x10, x0, 4	# 1671
	mul		x10, x9, x10	# 1671
	add		x10, x6, x10	# 1671
	flw		f2, 0(x10)	# 1671
	lw		x10, 20(x4)	# 441
	ori		x11, x0, 4	# 446
	mul		x11, x9, x11	# 446
	add		x10, x10, x11	# 446
	flw		f3, 0(x10)	# 446
	fsub	f2, f2, f3	# 1671
	ori		x10, x0, 4	# 1672
	mul		x10, x7, x10	# 1672
	add		x6, x6, x10	# 1672
	flw		f3, 0(x6)	# 1672
	lw		x6, 20(x4)	# 451
	ori		x10, x0, 4	# 456
	mul		x10, x7, x10	# 456
	add		x6, x6, x10	# 456
	flw		f4, 0(x6)	# 456
	fsub	f3, f3, f4	# 1672
	lw		x6, 16(x4)	# 391
	ori		x10, x0, 4	# 396
	mul		x10, x8, x10	# 396
	add		x6, x6, x10	# 396
	flw		f4, 0(x6)	# 396
	fmul	f4, f1, f4	# 1674
	lw		x6, 16(x4)	# 401
	ori		x10, x0, 4	# 406
	mul		x10, x9, x10	# 406
	add		x6, x6, x10	# 406
	flw		f5, 0(x6)	# 406
	fmul	f5, f2, f5	# 1675
	lw		x6, 16(x4)	# 411
	ori		x10, x0, 4	# 416
	mul		x10, x7, x10	# 416
	add		x6, x6, x10	# 416
	flw		f6, 0(x6)	# 416
	fmul	f6, f3, f6	# 1676
	lw		x6, 12(x4)	# 382
	beq		x6, x8, beq.296574	# 1678
	addi	x6, x0, 0	# 1683
	lw		x10, 36(x4)	# 531
	ori		x11, x0, 2	# 536
	ori		x12, x0, 4	# 536
	mul		x11, x11, x12	# 536
	add		x10, x10, x11	# 536
	flw		f7, 0(x10)	# 536
	fmul	f7, f2, f7	# 1683
	lw		x10, 36(x4)	# 521
	ori		x11, x0, 1	# 526
	ori		x12, x0, 4	# 526
	mul		x11, x11, x12	# 526
	add		x10, x10, x11	# 526
	flw		f8, 0(x10)	# 526
	fmul	f8, f3, f8	# 1683
	fadd	f7, f7, f8	# 1683
	lui		x10, %hi(l.15681)	# 7
	ori		x10, x0, %lo(l.15681)	# 7
	flw		f8, 0(x10)	# 7
	fmul	f7, f7, f8	# 7
	fadd	f4, f4, f7	# 1683
	ori		x10, x0, 4	# 1683
	mul		x6, x6, x10	# 1683
	add		x6, x5, x6	# 1683
	fsw		f4, 0(x6)	# 1683
	ori		x6, x0, 1	# 1684
	lw		x10, 36(x4)	# 531
	ori		x11, x0, 2	# 536
	ori		x12, x0, 4	# 536
	mul		x11, x11, x12	# 536
	add		x10, x10, x11	# 536
	flw		f4, 0(x10)	# 536
	fmul	f4, f1, f4	# 1684
	lw		x10, 36(x4)	# 511
	addi	x11, x0, 0	# 516
	ori		x12, x0, 4	# 516
	mul		x11, x11, x12	# 516
	add		x10, x10, x11	# 516
	flw		f7, 0(x10)	# 516
	fmul	f3, f3, f7	# 1684
	fadd	f3, f4, f3	# 1684
	lui		x10, %hi(l.15681)	# 7
	ori		x10, x0, %lo(l.15681)	# 7
	flw		f4, 0(x10)	# 7
	fmul	f3, f3, f4	# 7
	fadd	f3, f5, f3	# 1684
	ori		x10, x0, 4	# 1684
	mul		x6, x6, x10	# 1684
	add		x6, x5, x6	# 1684
	fsw		f3, 0(x6)	# 1684
	ori		x6, x0, 2	# 1685
	lw		x10, 36(x4)	# 521
	ori		x11, x0, 1	# 526
	ori		x12, x0, 4	# 526
	mul		x11, x11, x12	# 526
	add		x10, x10, x11	# 526
	flw		f3, 0(x10)	# 526
	fmul	f1, f1, f3	# 1685
	lw		x10, 36(x4)	# 511
	addi	x11, x0, 0	# 516
	ori		x12, x0, 4	# 516
	mul		x11, x11, x12	# 516
	add		x10, x10, x11	# 516
	flw		f3, 0(x10)	# 516
	fmul	f2, f2, f3	# 1685
	fadd	f1, f1, f2	# 1685
	lui		x10, %hi(l.15681)	# 7
	ori		x10, x0, %lo(l.15681)	# 7
	flw		f2, 0(x10)	# 7
	fmul	f1, f1, f2	# 7
	fadd	f1, f6, f1	# 1685
	ori		x10, x0, 4	# 1685
	mul		x6, x6, x10	# 1685
	add		x6, x5, x6	# 1685
	fsw		f1, 0(x6)	# 1685
	jal		x0, beq_cont.296573	# 1678
beq.296574:
	addi	x6, x0, 0	# 1679
	ori		x10, x0, 4	# 1679
	mul		x6, x6, x10	# 1679
	add		x6, x5, x6	# 1679
	fsw		f4, 0(x6)	# 1679
	ori		x6, x0, 1	# 1680
	ori		x10, x0, 4	# 1680
	mul		x6, x6, x10	# 1680
	add		x6, x5, x6	# 1680
	fsw		f5, 0(x6)	# 1680
	ori		x6, x0, 2	# 1681
	ori		x10, x0, 4	# 1681
	mul		x6, x6, x10	# 1681
	add		x6, x5, x6	# 1681
	fsw		f6, 0(x6)	# 1681
beq_cont.296573:
	lw		x4, 24(x4)	# 373
	ori		x6, x0, 4	# 283
	mul		x6, x8, x6	# 283
	add		x6, x5, x6	# 283
	flw		f1, 0(x6)	# 283
	fmul	f1, f1, f1	# 8
	ori		x6, x0, 4	# 283
	mul		x6, x9, x6	# 283
	add		x6, x5, x6	# 283
	flw		f2, 0(x6)	# 283
	fmul	f2, f2, f2	# 8
	fadd	f1, f1, f2	# 283
	ori		x6, x0, 4	# 283
	mul		x6, x7, x6	# 283
	add		x6, x5, x6	# 283
	flw		f2, 0(x6)	# 283
	fmul	f2, f2, f2	# 8
	fadd	f1, f1, f2	# 283
	sw		x7, 0(x2)	# 283
	sw		x9, -4(x2)	# 283
	sw		x5, -8(x2)	# 283
	sw		x4, -12(x2)	# 283
	sw		x8, -16(x2)	# 283
	fsw		f0, -24(x2)	# 283
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -32(x2)	# 283
	addi	x2, x2, -36	# 283
	jal		x1, min_caml_sqrt	# 283
	addi	x2, x2, 36	# 283
	lw		x1, -32(x2)	# 283
	flw		f1, -24(x2)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.296577	# 1
	ori		x4, x0, 1	# 1
	jal		x0, feq_cont.296576	# 1
feq_else.296577:
	addi	x4, x0, 0	# 1
feq_cont.296576:
	lw		x5, -16(x2)	# 284
	beq		x4, x5, beq.296579	# 284
	lui		x4, %hi(l.15661)	# 284
	ori		x4, x0, %lo(l.15661)	# 284
	flw		f0, 0(x4)	# 284
	jal		x0, beq_cont.296578	# 284
beq.296579:
	lw		x4, -12(x2)	# 284
	beq		x4, x5, beq.296581	# 284
	lui		x4, %hi(l.16024)	# 284
	ori		x4, x0, %lo(l.16024)	# 284
	flw		f1, 0(x4)	# 284
	fdiv	f0, f1, f0	# 284
	jal		x0, beq_cont.296580	# 284
beq.296581:
	lui		x4, %hi(l.15661)	# 284
	ori		x4, x0, %lo(l.15661)	# 284
	flw		f1, 0(x4)	# 284
	fdiv	f0, f1, f0	# 284
beq_cont.296580:
beq_cont.296578:
	ori		x4, x0, 4	# 285
	mul		x4, x5, x4	# 285
	lw		x6, -8(x2)	# 285
	add		x4, x6, x4	# 285
	flw		f1, 0(x4)	# 285
	fmul	f1, f1, f0	# 285
	ori		x4, x0, 4	# 285
	mul		x4, x5, x4	# 285
	add		x4, x6, x4	# 285
	fsw		f1, 0(x4)	# 285
	ori		x4, x0, 4	# 286
	lw		x5, -4(x2)	# 286
	mul		x4, x5, x4	# 286
	add		x4, x6, x4	# 286
	flw		f1, 0(x4)	# 286
	fmul	f1, f1, f0	# 286
	ori		x4, x0, 4	# 286
	mul		x4, x5, x4	# 286
	add		x4, x6, x4	# 286
	fsw		f1, 0(x4)	# 286
	ori		x4, x0, 4	# 287
	lw		x5, 0(x2)	# 287
	mul		x4, x5, x4	# 287
	add		x4, x6, x4	# 287
	flw		f1, 0(x4)	# 287
	fmul	f0, f1, f0	# 287
	ori		x4, x0, 4	# 287
	mul		x4, x5, x4	# 287
	add		x4, x6, x4	# 287
	fsw		f0, 0(x4)	# 287
	jalr	x0, x1, 0	# 287
utexture.2859:
	lw		x6, 56(x27)	# 343
	lw		x7, 52(x27)	# 343
	flw		f0, 48(x27)	# 343
	flw		f1, 44(x27)	# 343
	flw		f2, 40(x27)	# 343
	flw		f3, 36(x27)	# 343
	lw		x8, 32(x27)	# 343
	lw		x9, 28(x27)	# 343
	lw		x10, 24(x27)	# 343
	lw		x11, 20(x27)	# 343
	lw		x12, 16(x27)	# 343
	lw		x13, 12(x27)	# 343
	flw		f4, 8(x27)	# 343
	flw		f5, 4(x27)	# 343
	lw		x14, 0(x4)	# 343
	lw		x15, 32(x4)	# 481
	ori		x16, x0, 4	# 486
	mul		x16, x12, x16	# 486
	add		x15, x15, x16	# 486
	flw		f6, 0(x15)	# 486
	ori		x15, x0, 4	# 1710
	mul		x15, x12, x15	# 1710
	add		x15, x6, x15	# 1710
	fsw		f6, 0(x15)	# 1710
	lw		x15, 32(x4)	# 491
	ori		x16, x0, 4	# 496
	mul		x16, x13, x16	# 496
	add		x15, x15, x16	# 496
	flw		f6, 0(x15)	# 496
	ori		x15, x0, 4	# 1711
	mul		x15, x13, x15	# 1711
	add		x15, x6, x15	# 1711
	fsw		f6, 0(x15)	# 1711
	lw		x15, 32(x4)	# 501
	ori		x16, x0, 4	# 506
	mul		x16, x10, x16	# 506
	add		x15, x15, x16	# 506
	flw		f6, 0(x15)	# 506
	ori		x15, x0, 4	# 1712
	mul		x15, x10, x15	# 1712
	add		x15, x6, x15	# 1712
	fsw		f6, 0(x15)	# 1712
	beq		x14, x13, beq.296583	# 1713
	beq		x14, x10, beq.296584	# 1731
	beq		x14, x11, beq.296585	# 1738
	ori		x7, x0, 4	# 1749
	beq		x14, x7, beq.296586	# 1749
	jalr	x0, x1, 0	# 1777
beq.296586:
	ori		x7, x0, 4	# 1751
	mul		x7, x12, x7	# 1751
	add		x7, x5, x7	# 1751
	flw		f0, 0(x7)	# 1751
	lw		x7, 20(x4)	# 431
	ori		x8, x0, 4	# 436
	mul		x8, x12, x8	# 436
	add		x7, x7, x8	# 436
	flw		f1, 0(x7)	# 436
	fsub	f0, f0, f1	# 1751
	lw		x7, 16(x4)	# 391
	ori		x8, x0, 4	# 396
	mul		x8, x12, x8	# 396
	add		x7, x7, x8	# 396
	flw		f1, 0(x7)	# 396
	sw		x6, 0(x2)	# 1751
	fsw		f4, -8(x2)	# 1751
	sw		x13, -16(x2)	# 1751
	sw		x9, -20(x2)	# 1751
	sw		x12, -24(x2)	# 1751
	fsw		f5, -32(x2)	# 1751
	sw		x4, -40(x2)	# 1751
	sw		x5, -44(x2)	# 1751
	sw		x10, -48(x2)	# 1751
	fsw		f0, -56(x2)	# 1751
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -64(x2)	# 1751
	addi	x2, x2, -68	# 1751
	jal		x1, min_caml_sqrt	# 1751
	addi	x2, x2, 68	# 1751
	lw		x1, -64(x2)	# 1751
	flw		f1, -56(x2)	# 1751
	fmul	f0, f1, f0	# 1751
	ori		x4, x0, 4	# 1752
	lw		x5, -48(x2)	# 1752
	mul		x4, x5, x4	# 1752
	lw		x6, -44(x2)	# 1752
	add		x4, x6, x4	# 1752
	flw		f1, 0(x4)	# 1752
	lw		x4, -40(x2)	# 451
	lw		x7, 20(x4)	# 451
	ori		x8, x0, 4	# 456
	mul		x8, x5, x8	# 456
	add		x7, x7, x8	# 456
	flw		f2, 0(x7)	# 456
	fsub	f1, f1, f2	# 1752
	lw		x7, 16(x4)	# 411
	ori		x8, x0, 4	# 416
	mul		x8, x5, x8	# 416
	add		x7, x7, x8	# 416
	flw		f2, 0(x7)	# 416
	fsw		f0, -64(x2)	# 1752
	fsw		f1, -72(x2)	# 1752
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -80(x2)	# 1752
	addi	x2, x2, -84	# 1752
	jal		x1, min_caml_sqrt	# 1752
	addi	x2, x2, 84	# 1752
	lw		x1, -80(x2)	# 1752
	flw		f1, -72(x2)	# 1752
	fmul	f0, f1, f0	# 1752
	flw		f1, -64(x2)	# 8
	fmul	f2, f1, f1	# 8
	fmul	f3, f0, f0	# 8
	fadd	f2, f2, f3	# 1753
	flw		f3, -32(x2)	# 5
	fle		x31, f1, f3	# 5
	beq		x31, x0, fle_else.296592	# 5
	fsub	f4, f4, f4	# 5
	fsub	f4, f4, f1	# 5
	jal		x0, fle_cont.296591	# 5
fle_else.296592:
	fsub	f4, f4, f4	# 5
	fadd	f4, f4, f1	# 5
fle_cont.296591:
	lui		x4, %hi(l.18213)	# 1755
	ori		x4, x0, %lo(l.18213)	# 1755
	flw		f5, 0(x4)	# 1755
	fle		x31, f5, f4	# 6
	beq		x31, x0, fle_else.296594	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.296593	# 6
fle_else.296594:
	ori		x4, x0, 1	# 6
fle_cont.296593:
	lw		x5, -24(x2)	# 1755
	fsw		f5, -80(x2)	# 1755
	fsw		f2, -88(x2)	# 1755
	beq		x4, x5, beq.296596	# 1755
	lui		x4, %hi(l.18215)	# 1756
	ori		x4, x0, %lo(l.18215)	# 1756
	flw		f0, 0(x4)	# 1756
	jal		x0, beq_cont.296595	# 1755
beq.296596:
	fdiv	f0, f0, f1	# 1758
	lui		x4, %hi(l.15659)	# 5
	ori		x4, x0, %lo(l.15659)	# 5
	flw		f1, 0(x4)	# 5
	fle		x31, f0, f1	# 5
	beq		x31, x0, fle_else.296598	# 5
	fsub	x31, x31, x31	# 5
	fsub	f0, x31, f0	# 5
	jal		x0, fle_cont.296597	# 5
fle_else.296598:
fle_cont.296597:
	lw		x27, -20(x2)	# 1760
	sw		x1, -96(x2)	# 1760
	addi	x2, x2, -100	# 1760
	lw		x31, 0(x27)	# 1760
	jalr	x1, x31, 0	# 1760
	addi	x2, x2, 100	# 1760
	lw		x1, -96(x2)	# 1760
	lui		x4, %hi(l.18218)	# 1760
	ori		x4, x0, %lo(l.18218)	# 1760
	flw		f1, 0(x4)	# 1760
	fmul	f0, f0, f1	# 1760
	lui		x4, %hi(l.18220)	# 1760
	ori		x4, x0, %lo(l.18220)	# 1760
	flw		f1, 0(x4)	# 1760
	fdiv	f0, f0, f1	# 1760
beq_cont.296595:
	flw		f1, -32(x2)	# 18
	fsw		f0, -96(x2)	# 18
	fle		x31, f1, f0	# 18
	beq		x31, x0, fle_else.296600	# 18
	sw		x1, -104(x2)	# 18
	addi	x2, x2, -108	# 18
	jal		x1, int_of_float.2487	# 18
	addi	x2, x2, 108	# 18
	lw		x1, -104(x2)	# 18
	sw		x1, -104(x2)	# 18
	addi	x2, x2, -108	# 18
	jal		x1, float_of_int.2489	# 18
	addi	x2, x2, 108	# 18
	lw		x1, -104(x2)	# 18
	jal		x0, fle_cont.296599	# 18
fle_else.296600:
	sw		x1, -104(x2)	# 19
	addi	x2, x2, -108	# 19
	jal		x1, int_of_float.2487	# 19
	addi	x2, x2, 108	# 19
	lw		x1, -104(x2)	# 19
	ori		x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	sw		x1, -104(x2)	# 19
	addi	x2, x2, -108	# 19
	jal		x1, float_of_int.2489	# 19
	addi	x2, x2, 108	# 19
	lw		x1, -104(x2)	# 19
fle_cont.296599:
	flw		f1, -96(x2)	# 1762
	fsub	f0, f1, f0	# 1762
	ori		x4, x0, 4	# 1764
	lw		x5, -16(x2)	# 1764
	mul		x4, x5, x4	# 1764
	lw		x6, -44(x2)	# 1764
	add		x4, x6, x4	# 1764
	flw		f1, 0(x4)	# 1764
	lw		x4, -40(x2)	# 441
	lw		x6, 20(x4)	# 441
	ori		x7, x0, 4	# 446
	mul		x7, x5, x7	# 446
	add		x6, x6, x7	# 446
	flw		f2, 0(x6)	# 446
	fsub	f1, f1, f2	# 1764
	lw		x4, 16(x4)	# 401
	ori		x6, x0, 4	# 406
	mul		x5, x5, x6	# 406
	add		x4, x4, x5	# 406
	flw		f2, 0(x4)	# 406
	fsw		f0, -104(x2)	# 1764
	fsw		f1, -112(x2)	# 1764
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -120(x2)	# 1764
	addi	x2, x2, -124	# 1764
	jal		x1, min_caml_sqrt	# 1764
	addi	x2, x2, 124	# 1764
	lw		x1, -120(x2)	# 1764
	flw		f1, -112(x2)	# 1764
	fmul	f0, f1, f0	# 1764
	flw		f1, -32(x2)	# 5
	flw		f2, -88(x2)	# 5
	fle		x31, f2, f1	# 5
	beq		x31, x0, fle_else.296602	# 5
	fsub	f3, f3, f3	# 5
	fsub	f3, f3, f2	# 5
	jal		x0, fle_cont.296601	# 5
fle_else.296602:
	fsub	f3, f3, f3	# 5
	fadd	f3, f3, f2	# 5
fle_cont.296601:
	flw		f4, -80(x2)	# 6
	fle		x31, f4, f3	# 6
	beq		x31, x0, fle_else.296604	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.296603	# 6
fle_else.296604:
	ori		x4, x0, 1	# 6
fle_cont.296603:
	lw		x5, -24(x2)	# 1766
	beq		x4, x5, beq.296606	# 1766
	lui		x4, %hi(l.18215)	# 1767
	ori		x4, x0, %lo(l.18215)	# 1767
	flw		f0, 0(x4)	# 1767
	jal		x0, beq_cont.296605	# 1766
beq.296606:
	fdiv	f0, f0, f2	# 1769
	lui		x4, %hi(l.15659)	# 5
	ori		x4, x0, %lo(l.15659)	# 5
	flw		f2, 0(x4)	# 5
	fle		x31, f0, f2	# 5
	beq		x31, x0, fle_else.296608	# 5
	fsub	x31, x31, x31	# 5
	fsub	f0, x31, f0	# 5
	jal		x0, fle_cont.296607	# 5
fle_else.296608:
fle_cont.296607:
	lw		x27, -20(x2)	# 1770
	sw		x1, -120(x2)	# 1770
	addi	x2, x2, -124	# 1770
	lw		x31, 0(x27)	# 1770
	jalr	x1, x31, 0	# 1770
	addi	x2, x2, 124	# 1770
	lw		x1, -120(x2)	# 1770
	lui		x4, %hi(l.18218)	# 1770
	ori		x4, x0, %lo(l.18218)	# 1770
	flw		f1, 0(x4)	# 1770
	fmul	f0, f0, f1	# 1770
	lui		x4, %hi(l.18220)	# 1770
	ori		x4, x0, %lo(l.18220)	# 1770
	flw		f1, 0(x4)	# 1770
	fdiv	f0, f0, f1	# 1770
beq_cont.296605:
	flw		f1, -32(x2)	# 18
	fsw		f0, -120(x2)	# 18
	fle		x31, f1, f0	# 18
	beq		x31, x0, fle_else.296610	# 18
	sw		x1, -128(x2)	# 18
	addi	x2, x2, -132	# 18
	jal		x1, int_of_float.2487	# 18
	addi	x2, x2, 132	# 18
	lw		x1, -128(x2)	# 18
	sw		x1, -128(x2)	# 18
	addi	x2, x2, -132	# 18
	jal		x1, float_of_int.2489	# 18
	addi	x2, x2, 132	# 18
	lw		x1, -128(x2)	# 18
	jal		x0, fle_cont.296609	# 18
fle_else.296610:
	sw		x1, -128(x2)	# 19
	addi	x2, x2, -132	# 19
	jal		x1, int_of_float.2487	# 19
	addi	x2, x2, 132	# 19
	lw		x1, -128(x2)	# 19
	ori		x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	sw		x1, -128(x2)	# 19
	addi	x2, x2, -132	# 19
	jal		x1, float_of_int.2489	# 19
	addi	x2, x2, 132	# 19
	lw		x1, -128(x2)	# 19
fle_cont.296609:
	flw		f1, -120(x2)	# 1772
	fsub	f0, f1, f0	# 1772
	lui		x4, %hi(l.18235)	# 1773
	ori		x4, x0, %lo(l.18235)	# 1773
	flw		f1, 0(x4)	# 1773
	lui		x4, %hi(l.15681)	# 1773
	ori		x4, x0, %lo(l.15681)	# 1773
	flw		f2, 0(x4)	# 1773
	flw		f3, -104(x2)	# 1773
	fsub	f3, f2, f3	# 1773
	fmul	f3, f3, f3	# 8
	fsub	f1, f1, f3	# 1773
	fsub	f0, f2, f0	# 1773
	fmul	f0, f0, f0	# 8
	fsub	f0, f1, f0	# 1773
	flw		f1, -32(x2)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.296612	# 3
	addi	x4, x0, 0	# 3
	jal		x0, fle_cont.296611	# 3
fle_else.296612:
	ori		x4, x0, 1	# 3
fle_cont.296611:
	lw		x5, -24(x2)	# 1774
	beq		x4, x5, beq.296614	# 1774
	fsub	f0, f0, f0	# 1774
	fadd	f0, f0, f1	# 1774
	jal		x0, beq_cont.296613	# 1774
beq.296614:
beq_cont.296613:
	flw		f1, -8(x2)	# 1775
	fmul	f0, f1, f0	# 1775
	lui		x4, %hi(l.18238)	# 1775
	ori		x4, x0, %lo(l.18238)	# 1775
	flw		f1, 0(x4)	# 1775
	fdiv	f0, f0, f1	# 1775
	ori		x4, x0, 4	# 1775
	lw		x5, -48(x2)	# 1775
	mul		x4, x5, x4	# 1775
	lw		x5, 0(x2)	# 1775
	add		x4, x5, x4	# 1775
	fsw		f0, 0(x4)	# 1775
	jalr	x0, x1, 0	# 1775
beq.296585:
	ori		x9, x0, 4	# 1741
	mul		x9, x12, x9	# 1741
	add		x9, x5, x9	# 1741
	flw		f2, 0(x9)	# 1741
	lw		x9, 20(x4)	# 431
	ori		x11, x0, 4	# 436
	mul		x11, x12, x11	# 436
	add		x9, x9, x11	# 436
	flw		f3, 0(x9)	# 436
	fsub	f2, f2, f3	# 1741
	ori		x9, x0, 4	# 1742
	mul		x9, x10, x9	# 1742
	add		x5, x5, x9	# 1742
	flw		f3, 0(x5)	# 1742
	lw		x4, 20(x4)	# 451
	ori		x5, x0, 4	# 456
	mul		x5, x10, x5	# 456
	add		x4, x4, x5	# 456
	flw		f6, 0(x4)	# 456
	fsub	f3, f3, f6	# 1742
	fmul	f2, f2, f2	# 8
	fmul	f3, f3, f3	# 8
	fadd	f2, f2, f3	# 1743
	sw		x10, -48(x2)	# 1743
	sw		x6, 0(x2)	# 1743
	sw		x13, -16(x2)	# 1743
	fsw		f4, -8(x2)	# 1743
	sw		x8, -128(x2)	# 1743
	sw		x7, -132(x2)	# 1743
	fsw		f1, -136(x2)	# 1743
	fsw		f0, -144(x2)	# 1743
	fsw		f5, -32(x2)	# 1743
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -152(x2)	# 1743
	addi	x2, x2, -156	# 1743
	jal		x1, min_caml_sqrt	# 1743
	addi	x2, x2, 156	# 1743
	lw		x1, -152(x2)	# 1743
	lui		x4, %hi(l.18255)	# 1743
	ori		x4, x0, %lo(l.18255)	# 1743
	flw		f1, 0(x4)	# 1743
	fdiv	f0, f0, f1	# 1743
	flw		f1, -32(x2)	# 18
	fsw		f0, -152(x2)	# 18
	fle		x31, f1, f0	# 18
	beq		x31, x0, fle_else.296617	# 18
	sw		x1, -160(x2)	# 18
	addi	x2, x2, -164	# 18
	jal		x1, int_of_float.2487	# 18
	addi	x2, x2, 164	# 18
	lw		x1, -160(x2)	# 18
	sw		x1, -160(x2)	# 18
	addi	x2, x2, -164	# 18
	jal		x1, float_of_int.2489	# 18
	addi	x2, x2, 164	# 18
	lw		x1, -160(x2)	# 18
	jal		x0, fle_cont.296616	# 18
fle_else.296617:
	sw		x1, -160(x2)	# 19
	addi	x2, x2, -164	# 19
	jal		x1, int_of_float.2487	# 19
	addi	x2, x2, 164	# 19
	lw		x1, -160(x2)	# 19
	ori		x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	sw		x1, -160(x2)	# 19
	addi	x2, x2, -164	# 19
	jal		x1, float_of_int.2489	# 19
	addi	x2, x2, 164	# 19
	lw		x1, -160(x2)	# 19
fle_cont.296616:
	flw		f1, -152(x2)	# 1744
	fsub	f0, f1, f0	# 1744
	lui		x4, %hi(l.18220)	# 1744
	ori		x4, x0, %lo(l.18220)	# 1744
	flw		f1, 0(x4)	# 1744
	fmul	f0, f0, f1	# 1744
	flw		f1, -32(x2)	# 54
	fle		x31, f1, f0	# 54
	beq		x31, x0, fle_else.296619	# 54
	flw		f1, -144(x2)	# 55
	fle		x31, f0, f1	# 55
	beq		x31, x0, fle_else.296621	# 55
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jal		x0, fle_cont.296620	# 55
fle_else.296621:
	flw		f1, -136(x2)	# 55
	fsub	f0, f1, f0	# 55
	lw		x27, -132(x2)	# 55
	sw		x1, -160(x2)	# 55
	addi	x2, x2, -164	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 164	# 55
	lw		x1, -160(x2)	# 55
fle_cont.296620:
	jal		x0, fle_cont.296618	# 54
fle_else.296619:
	fsub	x31, x31, x31	# 54
	fsub	f0, x31, f0	# 54
	lw		x27, -128(x2)	# 54
	sw		x1, -160(x2)	# 54
	addi	x2, x2, -164	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 164	# 54
	lw		x1, -160(x2)	# 54
fle_cont.296618:
	fmul	f0, f0, f0	# 8
	flw		f1, -8(x2)	# 1746
	fmul	f2, f0, f1	# 1746
	ori		x4, x0, 4	# 1746
	lw		x5, -16(x2)	# 1746
	mul		x4, x5, x4	# 1746
	lw		x5, 0(x2)	# 1746
	add		x4, x5, x4	# 1746
	fsw		f2, 0(x4)	# 1746
	lui		x4, %hi(l.15661)	# 1747
	ori		x4, x0, %lo(l.15661)	# 1747
	flw		f2, 0(x4)	# 1747
	fsub	f0, f2, f0	# 1747
	fmul	f0, f0, f1	# 1747
	ori		x4, x0, 4	# 1747
	lw		x6, -48(x2)	# 1747
	mul		x4, x6, x4	# 1747
	add		x4, x5, x4	# 1747
	fsw		f0, 0(x4)	# 1747
	jalr	x0, x1, 0	# 1747
beq.296584:
	ori		x4, x0, 4	# 1734
	mul		x4, x13, x4	# 1734
	add		x4, x5, x4	# 1734
	flw		f6, 0(x4)	# 1734
	lui		x4, %hi(l.18272)	# 1734
	ori		x4, x0, %lo(l.18272)	# 1734
	flw		f7, 0(x4)	# 1734
	fmul	f6, f6, f7	# 1734
	sw		x13, -16(x2)	# 46
	sw		x6, 0(x2)	# 46
	sw		x12, -24(x2)	# 46
	fsw		f4, -8(x2)	# 46
	fle		x31, f5, f6	# 46
	beq		x31, x0, fle_else.296624	# 46
	fle		x31, f2, f6	# 47
	beq		x31, x0, fle_else.296626	# 47
	fsub	f0, f6, f2	# 47
	addi	x27, x7, 0
	sw		x1, -160(x2)	# 47
	addi	x2, x2, -164	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 164	# 47
	lw		x1, -160(x2)	# 47
	jal		x0, fle_cont.296625	# 47
fle_else.296626:
	fle		x31, f3, f6	# 48
	beq		x31, x0, fle_else.296628	# 48
	fsub	f0, f6, f3	# 48
	addi	x27, x7, 0
	sw		x1, -160(x2)	# 48
	addi	x2, x2, -164	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 164	# 48
	lw		x1, -160(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.296627	# 48
fle_else.296628:
	fle		x31, f6, f1	# 49
	beq		x31, x0, fle_else.296630	# 49
	fle		x31, f0, f6	# 50
	beq		x31, x0, fle_else.296632	# 50
	fsub	f0, f1, f6	# 50
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jal		x0, fle_cont.296631	# 50
fle_else.296632:
	fmul	f0, f6, f6	# 36
	fmul	f1, f6, f0	# 37
	lui		x4, %hi(l.15674)	# 38
	ori		x4, x0, %lo(l.15674)	# 38
	flw		f2, 0(x4)	# 38
	fmul	f2, f2, f1	# 38
	fsub	f2, f6, f2	# 38
	lui		x4, %hi(l.15676)	# 38
	ori		x4, x0, %lo(l.15676)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f0	# 38
	fmul	f3, f3, f1	# 38
	fadd	f2, f2, f3	# 38
	lui		x4, %hi(l.15678)	# 38
	ori		x4, x0, %lo(l.15678)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f0	# 38
	fmul	f0, f3, f0	# 38
	fmul	f0, f0, f1	# 38
	fsub	f0, f2, f0	# 38
fle_cont.296631:
	jal		x0, fle_cont.296629	# 49
fle_else.296630:
	fsub	f0, f3, f6	# 49
	addi	x27, x7, 0
	sw		x1, -160(x2)	# 49
	addi	x2, x2, -164	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 164	# 49
	lw		x1, -160(x2)	# 49
fle_cont.296629:
fle_cont.296627:
fle_cont.296625:
	jal		x0, fle_cont.296623	# 46
fle_else.296624:
	fsub	f0, f0, f0	# 46
	fsub	f0, f0, f6	# 46
	addi	x27, x7, 0
	sw		x1, -160(x2)	# 46
	addi	x2, x2, -164	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 164	# 46
	lw		x1, -160(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.296623:
	fmul	f0, f0, f0	# 8
	flw		f1, -8(x2)	# 1735
	fmul	f2, f1, f0	# 1735
	ori		x4, x0, 4	# 1735
	lw		x5, -24(x2)	# 1735
	mul		x4, x5, x4	# 1735
	lw		x5, 0(x2)	# 1735
	add		x4, x5, x4	# 1735
	fsw		f2, 0(x4)	# 1735
	lui		x4, %hi(l.15661)	# 1736
	ori		x4, x0, %lo(l.15661)	# 1736
	flw		f2, 0(x4)	# 1736
	fsub	f0, f2, f0	# 1736
	fmul	f0, f1, f0	# 1736
	ori		x4, x0, 4	# 1736
	lw		x6, -16(x2)	# 1736
	mul		x4, x6, x4	# 1736
	add		x4, x5, x4	# 1736
	fsw		f0, 0(x4)	# 1736
	jalr	x0, x1, 0	# 1736
beq.296583:
	ori		x7, x0, 4	# 1716
	mul		x7, x12, x7	# 1716
	add		x7, x5, x7	# 1716
	flw		f0, 0(x7)	# 1716
	lw		x7, 20(x4)	# 431
	ori		x8, x0, 4	# 436
	mul		x8, x12, x8	# 436
	add		x7, x7, x8	# 436
	flw		f1, 0(x7)	# 436
	fsub	f0, f0, f1	# 1716
	lui		x7, %hi(l.18294)	# 1718
	ori		x7, x0, %lo(l.18294)	# 1718
	flw		f1, 0(x7)	# 1718
	fmul	f2, f0, f1	# 1718
	sw		x6, 0(x2)	# 18
	sw		x13, -16(x2)	# 18
	fsw		f4, -8(x2)	# 18
	sw		x12, -24(x2)	# 18
	fsw		f5, -32(x2)	# 18
	fsw		f1, -160(x2)	# 18
	sw		x4, -40(x2)	# 18
	sw		x5, -44(x2)	# 18
	sw		x10, -48(x2)	# 18
	fsw		f0, -168(x2)	# 18
	fle		x31, f5, f2	# 18
	beq		x31, x0, fle_else.296635	# 18
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -176(x2)	# 18
	addi	x2, x2, -180	# 18
	jal		x1, int_of_float.2487	# 18
	addi	x2, x2, 180	# 18
	lw		x1, -176(x2)	# 18
	sw		x1, -176(x2)	# 18
	addi	x2, x2, -180	# 18
	jal		x1, float_of_int.2489	# 18
	addi	x2, x2, 180	# 18
	lw		x1, -176(x2)	# 18
	jal		x0, fle_cont.296634	# 18
fle_else.296635:
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -176(x2)	# 19
	addi	x2, x2, -180	# 19
	jal		x1, int_of_float.2487	# 19
	addi	x2, x2, 180	# 19
	lw		x1, -176(x2)	# 19
	ori		x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	sw		x1, -176(x2)	# 19
	addi	x2, x2, -180	# 19
	jal		x1, float_of_int.2489	# 19
	addi	x2, x2, 180	# 19
	lw		x1, -176(x2)	# 19
fle_cont.296634:
	lui		x4, %hi(l.18296)	# 1718
	ori		x4, x0, %lo(l.18296)	# 1718
	flw		f1, 0(x4)	# 1718
	fmul	f0, f0, f1	# 1718
	flw		f2, -168(x2)	# 1719
	fsub	f0, f2, f0	# 1719
	lui		x4, %hi(l.18255)	# 1719
	ori		x4, x0, %lo(l.18255)	# 1719
	flw		f2, 0(x4)	# 1719
	fle		x31, f2, f0	# 6
	beq		x31, x0, fle_else.296637	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.296636	# 6
fle_else.296637:
	ori		x4, x0, 1	# 6
fle_cont.296636:
	ori		x5, x0, 4	# 1721
	lw		x6, -48(x2)	# 1721
	mul		x5, x6, x5	# 1721
	lw		x7, -44(x2)	# 1721
	add		x5, x7, x5	# 1721
	flw		f0, 0(x5)	# 1721
	lw		x5, -40(x2)	# 451
	lw		x5, 20(x5)	# 451
	ori		x7, x0, 4	# 456
	mul		x6, x6, x7	# 456
	add		x5, x5, x6	# 456
	flw		f3, 0(x5)	# 456
	fsub	f0, f0, f3	# 1721
	flw		f3, -160(x2)	# 1723
	fmul	f3, f0, f3	# 1723
	flw		f4, -32(x2)	# 18
	sw		x4, -176(x2)	# 18
	fsw		f2, -184(x2)	# 18
	fsw		f0, -192(x2)	# 18
	fsw		f1, -200(x2)	# 18
	fle		x31, f4, f3	# 18
	beq		x31, x0, fle_else.296640	# 18
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -208(x2)	# 18
	addi	x2, x2, -212	# 18
	jal		x1, int_of_float.2487	# 18
	addi	x2, x2, 212	# 18
	lw		x1, -208(x2)	# 18
	sw		x1, -208(x2)	# 18
	addi	x2, x2, -212	# 18
	jal		x1, float_of_int.2489	# 18
	addi	x2, x2, 212	# 18
	lw		x1, -208(x2)	# 18
	jal		x0, fle_cont.296639	# 18
fle_else.296640:
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -208(x2)	# 19
	addi	x2, x2, -212	# 19
	jal		x1, int_of_float.2487	# 19
	addi	x2, x2, 212	# 19
	lw		x1, -208(x2)	# 19
	ori		x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	sw		x1, -208(x2)	# 19
	addi	x2, x2, -212	# 19
	jal		x1, float_of_int.2489	# 19
	addi	x2, x2, 212	# 19
	lw		x1, -208(x2)	# 19
fle_cont.296639:
	flw		f1, -200(x2)	# 1723
	fmul	f0, f0, f1	# 1723
	flw		f1, -192(x2)	# 1724
	fsub	f0, f1, f0	# 1724
	flw		f1, -184(x2)	# 6
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.296642	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.296641	# 6
fle_else.296642:
	ori		x4, x0, 1	# 6
fle_cont.296641:
	lw		x5, -24(x2)	# 1727
	lw		x6, -176(x2)	# 1727
	beq		x6, x5, beq.296644	# 1727
	beq		x4, x5, beq.296646	# 1728
	flw		f0, -8(x2)	# 1728
	jal		x0, beq_cont.296645	# 1728
beq.296646:
	flw		f0, -32(x2)	# 1728
beq_cont.296645:
	jal		x0, beq_cont.296643	# 1727
beq.296644:
	beq		x4, x5, beq.296648	# 1729
	flw		f0, -32(x2)	# 1729
	jal		x0, beq_cont.296647	# 1729
beq.296648:
	flw		f0, -8(x2)	# 1729
beq_cont.296647:
beq_cont.296643:
	ori		x4, x0, 4	# 1726
	lw		x5, -16(x2)	# 1726
	mul		x4, x5, x4	# 1726
	lw		x5, 0(x2)	# 1726
	add		x4, x5, x4	# 1726
	fsw		f0, 0(x4)	# 1726
	jalr	x0, x1, 0	# 1726
trace_reflections.2866:
	lw		x6, 56(x27)	# 1804
	lw		x7, 52(x27)	# 1804
	lw		x8, 48(x27)	# 1804
	lw		x9, 44(x27)	# 1804
	lw		x10, 40(x27)	# 1804
	lw		x11, 36(x27)	# 1804
	lw		x12, 32(x27)	# 1804
	lw		x13, 28(x27)	# 1804
	lw		x14, 24(x27)	# 1804
	lw		x15, 20(x27)	# 1804
	lw		x16, 16(x27)	# 1804
	lw		x17, 12(x27)	# 1804
	lw		x18, 8(x27)	# 1804
	flw		f2, 4(x27)	# 1804
	ble		x17, x4, ble.296650	# 1804
	jalr	x0, x1, 0	# 1824
ble.296650:
	ori		x19, x0, 4	# 1805
	mul		x19, x4, x19	# 1805
	add		x11, x11, x19	# 1805
	lw		x11, 0(x11)	# 1805
	lw		x19, 4(x11)	# 661
	ori		x20, x0, 4	# 1634
	mul		x20, x17, x20	# 1634
	add		x20, x7, x20	# 1634
	fsw		f2, 0(x20)	# 1634
	ori		x20, x0, 4	# 1635
	mul		x20, x17, x20	# 1635
	add		x20, x12, x20	# 1635
	lw		x20, 0(x20)	# 1635
	sw		x27, 0(x2)	# 1635
	sw		x4, -4(x2)	# 1635
	fsw		f1, -8(x2)	# 1635
	sw		x16, -16(x2)	# 1635
	sw		x18, -20(x2)	# 1635
	sw		x8, -24(x2)	# 1635
	sw		x10, -28(x2)	# 1635
	sw		x5, -32(x2)	# 1635
	fsw		f0, -40(x2)	# 1635
	sw		x13, -48(x2)	# 1635
	sw		x19, -52(x2)	# 1635
	sw		x9, -56(x2)	# 1635
	sw		x12, -60(x2)	# 1635
	sw		x11, -64(x2)	# 1635
	sw		x14, -68(x2)	# 1635
	sw		x15, -72(x2)	# 1635
	sw		x7, -76(x2)	# 1635
	sw		x17, -80(x2)	# 1635
	addi	x5, x20, 0
	addi	x4, x17, 0
	addi	x27, x6, 0
	addi	x6, x19, 0
	sw		x1, -84(x2)	# 1635
	addi	x2, x2, -88	# 1635
	lw		x31, 0(x27)	# 1635
	jalr	x1, x31, 0	# 1635
	addi	x2, x2, 88	# 1635
	lw		x1, -84(x2)	# 1635
	ori		x4, x0, 4	# 1636
	lw		x5, -80(x2)	# 1636
	mul		x4, x5, x4	# 1636
	lw		x6, -76(x2)	# 1636
	add		x4, x6, x4	# 1636
	flw		f0, 0(x4)	# 1636
	lui		x4, %hi(l.17059)	# 1638
	ori		x4, x0, %lo(l.17059)	# 1638
	flw		f1, 0(x4)	# 1638
	fle		x31, f0, f1	# 6
	beq		x31, x0, fle_else.296654	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.296653	# 6
fle_else.296654:
	ori		x4, x0, 1	# 6
fle_cont.296653:
	beq		x4, x5, beq.296656	# 1638
	lui		x4, %hi(l.18079)	# 1639
	ori		x4, x0, %lo(l.18079)	# 1639
	flw		f1, 0(x4)	# 1639
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.296658	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.296657	# 6
fle_else.296658:
	ori		x4, x0, 1	# 6
fle_cont.296657:
	jal		x0, beq_cont.296655	# 1638
beq.296656:
	addi	x4, x0, 0	# 1640
beq_cont.296655:
	beq		x4, x5, beq.296660	# 1809
	addi	x4, x0, 0	# 1810
	ori		x6, x0, 4	# 1810
	mul		x4, x4, x6	# 1810
	lw		x6, -72(x2)	# 1810
	add		x4, x6, x4	# 1810
	lw		x4, 0(x4)	# 1810
	ori		x6, x0, 4	# 1810
	mul		x4, x4, x6	# 1810
	addi	x6, x0, 0	# 1810
	ori		x7, x0, 4	# 1810
	mul		x6, x6, x7	# 1810
	lw		x7, -68(x2)	# 1810
	add		x6, x7, x6	# 1810
	lw		x6, 0(x6)	# 1810
	add		x4, x4, x6	# 1810
	lw		x6, -64(x2)	# 655
	lw		x7, 0(x6)	# 655
	beq		x4, x7, beq.296662	# 1811
	jal		x0, beq_cont.296661	# 1811
beq.296662:
	addi	x4, x0, 0	# 1813
	addi	x7, x0, 0	# 1813
	ori		x8, x0, 4	# 1813
	mul		x7, x7, x8	# 1813
	lw		x8, -60(x2)	# 1813
	add		x7, x8, x7	# 1813
	lw		x7, 0(x7)	# 1813
	lw		x27, -56(x2)	# 1813
	addi	x5, x7, 0
	sw		x1, -84(x2)	# 1813
	addi	x2, x2, -88	# 1813
	lw		x31, 0(x27)	# 1813
	jalr	x1, x31, 0	# 1813
	addi	x2, x2, 88	# 1813
	lw		x1, -84(x2)	# 1813
	addi	x5, x0, 0	# 1813
	beq		x4, x5, beq.296664	# 1813
	jal		x0, beq_cont.296663	# 1813
beq.296664:
	lw		x4, -52(x2)	# 639
	lw		x5, 0(x4)	# 639
	addi	x6, x0, 0	# 292
	ori		x7, x0, 4	# 292
	mul		x6, x6, x7	# 292
	lw		x7, -48(x2)	# 292
	add		x6, x7, x6	# 292
	flw		f0, 0(x6)	# 292
	addi	x6, x0, 0	# 292
	ori		x8, x0, 4	# 292
	mul		x6, x6, x8	# 292
	add		x6, x5, x6	# 292
	flw		f1, 0(x6)	# 292
	fmul	f0, f0, f1	# 292
	ori		x6, x0, 1	# 292
	ori		x8, x0, 4	# 292
	mul		x6, x6, x8	# 292
	add		x6, x7, x6	# 292
	flw		f1, 0(x6)	# 292
	ori		x6, x0, 1	# 292
	ori		x8, x0, 4	# 292
	mul		x6, x6, x8	# 292
	add		x6, x5, x6	# 292
	flw		f2, 0(x6)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	ori		x6, x0, 2	# 292
	ori		x8, x0, 4	# 292
	mul		x6, x6, x8	# 292
	add		x6, x7, x6	# 292
	flw		f1, 0(x6)	# 292
	ori		x6, x0, 2	# 292
	ori		x7, x0, 4	# 292
	mul		x6, x6, x7	# 292
	add		x5, x5, x6	# 292
	flw		f2, 0(x5)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	lw		x5, -64(x2)	# 1817
	flw		f1, 8(x5)	# 1817
	flw		f2, -40(x2)	# 1817
	fmul	f3, f1, f2	# 1817
	fmul	f0, f3, f0	# 1817
	lw		x4, 0(x4)	# 639
	addi	x5, x0, 0	# 292
	ori		x6, x0, 4	# 292
	mul		x5, x5, x6	# 292
	lw		x6, -32(x2)	# 292
	add		x5, x6, x5	# 292
	flw		f3, 0(x5)	# 292
	addi	x5, x0, 0	# 292
	ori		x7, x0, 4	# 292
	mul		x5, x5, x7	# 292
	add		x5, x4, x5	# 292
	flw		f4, 0(x5)	# 292
	fmul	f3, f3, f4	# 292
	ori		x5, x0, 1	# 292
	ori		x7, x0, 4	# 292
	mul		x5, x5, x7	# 292
	add		x5, x6, x5	# 292
	flw		f4, 0(x5)	# 292
	ori		x5, x0, 1	# 292
	ori		x7, x0, 4	# 292
	mul		x5, x5, x7	# 292
	add		x5, x4, x5	# 292
	flw		f5, 0(x5)	# 292
	fmul	f4, f4, f5	# 292
	fadd	f3, f3, f4	# 292
	ori		x5, x0, 2	# 292
	ori		x7, x0, 4	# 292
	mul		x5, x5, x7	# 292
	add		x5, x6, x5	# 292
	flw		f4, 0(x5)	# 292
	ori		x5, x0, 2	# 292
	ori		x7, x0, 4	# 292
	mul		x5, x5, x7	# 292
	add		x4, x4, x5	# 292
	flw		f5, 0(x4)	# 292
	fmul	f4, f4, f5	# 292
	fadd	f3, f3, f4	# 292
	fmul	f1, f1, f3	# 1818
	lui		x4, %hi(l.15659)	# 2
	ori		x4, x0, %lo(l.15659)	# 2
	flw		f3, 0(x4)	# 2
	fle		x31, f0, f3	# 2
	beq		x31, x0, fle_else.296666	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.296665	# 2
fle_else.296666:
	ori		x4, x0, 1	# 2
fle_cont.296665:
	addi	x5, x0, 0	# 1788
	beq		x4, x5, beq.296668	# 1788
	ori		x4, x0, 4	# 302
	lw		x5, -80(x2)	# 302
	mul		x4, x5, x4	# 302
	lw		x7, -28(x2)	# 302
	add		x4, x7, x4	# 302
	flw		f3, 0(x4)	# 302
	ori		x4, x0, 4	# 302
	mul		x4, x5, x4	# 302
	lw		x8, -24(x2)	# 302
	add		x4, x8, x4	# 302
	flw		f4, 0(x4)	# 302
	fmul	f4, f0, f4	# 302
	fadd	f3, f3, f4	# 302
	ori		x4, x0, 4	# 302
	mul		x4, x5, x4	# 302
	add		x4, x7, x4	# 302
	fsw		f3, 0(x4)	# 302
	ori		x4, x0, 4	# 303
	lw		x5, -20(x2)	# 303
	mul		x4, x5, x4	# 303
	add		x4, x7, x4	# 303
	flw		f3, 0(x4)	# 303
	ori		x4, x0, 4	# 303
	mul		x4, x5, x4	# 303
	add		x4, x8, x4	# 303
	flw		f4, 0(x4)	# 303
	fmul	f4, f0, f4	# 303
	fadd	f3, f3, f4	# 303
	ori		x4, x0, 4	# 303
	mul		x4, x5, x4	# 303
	add		x4, x7, x4	# 303
	fsw		f3, 0(x4)	# 303
	ori		x4, x0, 4	# 304
	lw		x9, -16(x2)	# 304
	mul		x4, x9, x4	# 304
	add		x4, x7, x4	# 304
	flw		f3, 0(x4)	# 304
	ori		x4, x0, 4	# 304
	mul		x4, x9, x4	# 304
	add		x4, x8, x4	# 304
	flw		f4, 0(x4)	# 304
	fmul	f0, f0, f4	# 304
	fadd	f0, f3, f0	# 304
	ori		x4, x0, 4	# 304
	mul		x4, x9, x4	# 304
	add		x4, x7, x4	# 304
	fsw		f0, 0(x4)	# 304
	jal		x0, beq_cont.296667	# 1788
beq.296668:
beq_cont.296667:
	lui		x4, %hi(l.15659)	# 2
	ori		x4, x0, %lo(l.15659)	# 2
	flw		f0, 0(x4)	# 2
	fle		x31, f1, f0	# 2
	beq		x31, x0, fle_else.296670	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.296669	# 2
fle_else.296670:
	ori		x4, x0, 1	# 2
fle_cont.296669:
	addi	x5, x0, 0	# 1793
	beq		x4, x5, beq.296672	# 1793
	fmul	f0, f1, f1	# 8
	fmul	f0, f0, f0	# 8
	flw		f1, -8(x2)	# 1794
	fmul	f0, f0, f1	# 1794
	addi	x4, x0, 0	# 1795
	addi	x5, x0, 0	# 1795
	ori		x7, x0, 4	# 1795
	mul		x5, x5, x7	# 1795
	lw		x7, -28(x2)	# 1795
	add		x5, x7, x5	# 1795
	flw		f3, 0(x5)	# 1795
	fadd	f3, f3, f0	# 1795
	ori		x5, x0, 4	# 1795
	mul		x4, x4, x5	# 1795
	add		x4, x7, x4	# 1795
	fsw		f3, 0(x4)	# 1795
	ori		x4, x0, 1	# 1796
	ori		x5, x0, 1	# 1796
	ori		x8, x0, 4	# 1796
	mul		x5, x5, x8	# 1796
	add		x5, x7, x5	# 1796
	flw		f3, 0(x5)	# 1796
	fadd	f3, f3, f0	# 1796
	ori		x5, x0, 4	# 1796
	mul		x4, x4, x5	# 1796
	add		x4, x7, x4	# 1796
	fsw		f3, 0(x4)	# 1796
	ori		x4, x0, 2	# 1797
	ori		x5, x0, 4	# 1797
	mul		x5, x4, x5	# 1797
	add		x5, x7, x5	# 1797
	flw		f3, 0(x5)	# 1797
	fadd	f0, f3, f0	# 1797
	ori		x5, x0, 4	# 1797
	mul		x4, x4, x5	# 1797
	add		x4, x7, x4	# 1797
	fsw		f0, 0(x4)	# 1797
	jal		x0, beq_cont.296671	# 1793
beq.296672:
beq_cont.296671:
beq_cont.296663:
beq_cont.296661:
	jal		x0, beq_cont.296659	# 1809
beq.296660:
beq_cont.296659:
	lw		x4, -20(x2)	# 1823
	lw		x5, -4(x2)	# 1823
	sub		x4, x5, x4	# 1823
	flw		f0, -40(x2)	# 1823
	flw		f1, -8(x2)	# 1823
	lw		x5, -32(x2)	# 1823
	lw		x27, 0(x2)	# 1823
	lw		x31, 0(x27)	# 1823
	jalr	x0, x31, 0	# 1823
trace_ray.2871:
	lw		x7, 108(x27)	# 1832
	lw		x8, 104(x27)	# 1832
	lw		x9, 100(x27)	# 1832
	lw		x10, 96(x27)	# 1832
	lw		x11, 92(x27)	# 1832
	lw		x12, 88(x27)	# 1832
	lw		x13, 84(x27)	# 1832
	lw		x14, 80(x27)	# 1832
	lw		x15, 76(x27)	# 1832
	lw		x16, 72(x27)	# 1832
	lw		x17, 68(x27)	# 1832
	lw		x18, 64(x27)	# 1832
	lw		x19, 60(x27)	# 1832
	lw		x20, 56(x27)	# 1832
	lw		x21, 52(x27)	# 1832
	lw		x22, 48(x27)	# 1832
	lw		x23, 44(x27)	# 1832
	lw		x24, 40(x27)	# 1832
	lw		x25, 36(x27)	# 1832
	lw		x26, 32(x27)	# 1832
	lw		x31, 28(x27)	# 1832
	sw		x8, 0(x2)	# 1832
	lw		x8, 24(x27)	# 1832
	sw		x20, -4(x2)	# 1832
	lw		x20, 20(x27)	# 1832
	sw		x15, -8(x2)	# 1832
	lw		x15, 16(x27)	# 1832
	sw		x21, -12(x2)	# 1832
	lw		x21, 12(x27)	# 1832
	flw		f2, 8(x27)	# 1832
	flw		f3, 4(x27)	# 1832
	sw		x27, -16(x2)	# 1832
	ori		x27, x0, 4	# 1832
	ble		x4, x27, ble.296673	# 1832
	jalr	x0, x1, 0	# 1913
ble.296673:
	sw		x12, -20(x2)	# 577
	lw		x12, 8(x6)	# 577
	sw		x14, -24(x2)	# 1543
	ori		x14, x0, 4	# 1543
	mul		x14, x15, x14	# 1543
	add		x14, x10, x14	# 1543
	fsw		f2, 0(x14)	# 1543
	ori		x14, x0, 4	# 1544
	mul		x14, x15, x14	# 1544
	add		x14, x17, x14	# 1544
	lw		x14, 0(x14)	# 1544
	fsw		f1, -32(x2)	# 1544
	sw		x17, -40(x2)	# 1544
	sw		x11, -44(x2)	# 1544
	sw		x6, -48(x2)	# 1544
	sw		x27, -52(x2)	# 1544
	sw		x7, -56(x2)	# 1544
	sw		x13, -60(x2)	# 1544
	sw		x24, -64(x2)	# 1544
	sw		x26, -68(x2)	# 1544
	sw		x19, -72(x2)	# 1544
	sw		x23, -76(x2)	# 1544
	sw		x18, -80(x2)	# 1544
	sw		x25, -84(x2)	# 1544
	sw		x16, -88(x2)	# 1544
	sw		x31, -92(x2)	# 1544
	fsw		f0, -96(x2)	# 1544
	fsw		f3, -104(x2)	# 1544
	sw		x8, -112(x2)	# 1544
	sw		x21, -116(x2)	# 1544
	sw		x22, -120(x2)	# 1544
	sw		x5, -124(x2)	# 1544
	sw		x20, -128(x2)	# 1544
	sw		x12, -132(x2)	# 1544
	sw		x4, -136(x2)	# 1544
	sw		x10, -140(x2)	# 1544
	sw		x15, -144(x2)	# 1544
	addi	x6, x5, 0
	addi	x4, x15, 0
	addi	x27, x9, 0
	addi	x5, x14, 0
	sw		x1, -148(x2)	# 1544
	addi	x2, x2, -152	# 1544
	lw		x31, 0(x27)	# 1544
	jalr	x1, x31, 0	# 1544
	addi	x2, x2, 152	# 1544
	lw		x1, -148(x2)	# 1544
	ori		x4, x0, 4	# 1545
	lw		x5, -144(x2)	# 1545
	mul		x4, x5, x4	# 1545
	lw		x6, -140(x2)	# 1545
	add		x4, x6, x4	# 1545
	flw		f0, 0(x4)	# 1545
	lui		x4, %hi(l.17059)	# 1547
	ori		x4, x0, %lo(l.17059)	# 1547
	flw		f1, 0(x4)	# 1547
	fle		x31, f0, f1	# 6
	beq		x31, x0, fle_else.296677	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.296676	# 6
fle_else.296677:
	ori		x4, x0, 1	# 6
fle_cont.296676:
	beq		x4, x5, beq.296679	# 1547
	lui		x4, %hi(l.18079)	# 1548
	ori		x4, x0, %lo(l.18079)	# 1548
	flw		f1, 0(x4)	# 1548
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.296681	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.296680	# 6
fle_else.296681:
	ori		x4, x0, 1	# 6
fle_cont.296680:
	jal		x0, beq_cont.296678	# 1547
beq.296679:
	addi	x4, x0, 0	# 1549
beq_cont.296678:
	beq		x4, x5, beq.296682	# 1834
	ori		x4, x0, 4	# 1836
	mul		x4, x5, x4	# 1836
	lw		x7, -84(x2)	# 1836
	add		x4, x7, x4	# 1836
	lw		x4, 0(x4)	# 1836
	ori		x7, x0, 4	# 1837
	mul		x7, x4, x7	# 1837
	lw		x8, -80(x2)	# 1837
	add		x7, x8, x7	# 1837
	lw		x7, 0(x7)	# 1837
	lw		x8, 8(x7)	# 363
	lw		x9, 28(x7)	# 461
	ori		x10, x0, 4	# 466
	mul		x10, x5, x10	# 466
	add		x9, x9, x10	# 466
	flw		f0, 0(x9)	# 466
	flw		f1, -96(x2)	# 1839
	fmul	f0, f0, f1	# 1839
	lw		x9, 4(x7)	# 353
	lw		x10, -116(x2)	# 1693
	sw		x8, -148(x2)	# 1693
	fsw		f0, -152(x2)	# 1693
	sw		x4, -160(x2)	# 1693
	sw		x7, -164(x2)	# 1693
	beq		x9, x10, beq.296684	# 1693
	ori		x11, x0, 2	# 1695
	beq		x9, x11, beq.296686	# 1695
	lw		x27, -68(x2)	# 1698
	addi	x4, x7, 0
	sw		x1, -168(x2)	# 1698
	addi	x2, x2, -172	# 1698
	lw		x31, 0(x27)	# 1698
	jalr	x1, x31, 0	# 1698
	addi	x2, x2, 172	# 1698
	lw		x1, -168(x2)	# 1698
	jal		x0, beq_cont.296685	# 1695
beq.296686:
	lw		x9, 16(x7)	# 391
	ori		x11, x0, 4	# 396
	mul		x11, x5, x11	# 396
	add		x9, x9, x11	# 396
	flw		f2, 0(x9)	# 396
	fsub	x31, x31, x31	# 4
	fsub	f2, x31, f2	# 4
	ori		x9, x0, 4	# 1663
	mul		x9, x5, x9	# 1663
	lw		x11, -72(x2)	# 1663
	add		x9, x11, x9	# 1663
	fsw		f2, 0(x9)	# 1663
	lw		x9, 16(x7)	# 401
	ori		x12, x0, 4	# 406
	mul		x12, x10, x12	# 406
	add		x9, x9, x12	# 406
	flw		f2, 0(x9)	# 406
	fsub	x31, x31, x31	# 4
	fsub	f2, x31, f2	# 4
	ori		x9, x0, 4	# 1664
	mul		x9, x10, x9	# 1664
	add		x9, x11, x9	# 1664
	fsw		f2, 0(x9)	# 1664
	lw		x9, 16(x7)	# 411
	ori		x12, x0, 4	# 416
	lw		x13, -112(x2)	# 416
	mul		x12, x13, x12	# 416
	add		x9, x9, x12	# 416
	flw		f2, 0(x9)	# 416
	fsub	x31, x31, x31	# 4
	fsub	f2, x31, f2	# 4
	ori		x9, x0, 4	# 1665
	mul		x9, x13, x9	# 1665
	add		x9, x11, x9	# 1665
	fsw		f2, 0(x9)	# 1665
beq_cont.296685:
	jal		x0, beq_cont.296683	# 1693
beq.296684:
	ori		x9, x0, 4	# 1654
	mul		x9, x5, x9	# 1654
	lw		x11, -76(x2)	# 1654
	add		x9, x11, x9	# 1654
	lw		x9, 0(x9)	# 1654
	lui		x12, %hi(l.15659)	# 254
	ori		x12, x0, %lo(l.15659)	# 254
	flw		f2, 0(x12)	# 254
	ori		x12, x0, 4	# 247
	mul		x12, x5, x12	# 247
	lw		x13, -72(x2)	# 247
	add		x12, x13, x12	# 247
	fsw		f2, 0(x12)	# 247
	ori		x12, x0, 4	# 248
	mul		x12, x10, x12	# 248
	add		x12, x13, x12	# 248
	fsw		f2, 0(x12)	# 248
	ori		x12, x0, 4	# 249
	lw		x14, -112(x2)	# 249
	mul		x12, x14, x12	# 249
	add		x12, x13, x12	# 249
	fsw		f2, 0(x12)	# 249
	sub		x12, x9, x10	# 1657
	sub		x9, x9, x10	# 1657
	ori		x15, x0, 4	# 1657
	mul		x9, x9, x15	# 1657
	lw		x15, -124(x2)	# 1657
	add		x9, x15, x9	# 1657
	flw		f2, 0(x9)	# 1657
	lui		x9, %hi(l.15659)	# 1
	ori		x9, x0, %lo(l.15659)	# 1
	flw		f3, 0(x9)	# 1
	feq		x31, f2, f3	# 1
	beq		x31, x0, feq_else.296688	# 1
	ori		x9, x0, 1	# 1
	jal		x0, feq_cont.296687	# 1
feq_else.296688:
	addi	x9, x0, 0	# 1
feq_cont.296687:
	addi	x16, x0, 0	# 212
	beq		x9, x16, beq.296690	# 212
	lui		x9, %hi(l.15659)	# 212
	ori		x9, x0, %lo(l.15659)	# 212
	flw		f2, 0(x9)	# 212
	jal		x0, beq_cont.296689	# 212
beq.296690:
	lui		x9, %hi(l.15659)	# 2
	ori		x9, x0, %lo(l.15659)	# 2
	flw		f3, 0(x9)	# 2
	fle		x31, f2, f3	# 2
	beq		x31, x0, fle_else.296692	# 2
	addi	x9, x0, 0	# 2
	jal		x0, fle_cont.296691	# 2
fle_else.296692:
	ori		x9, x0, 1	# 2
fle_cont.296691:
	beq		x9, x16, beq.296694	# 213
	lui		x9, %hi(l.15661)	# 213
	ori		x9, x0, %lo(l.15661)	# 213
	flw		f2, 0(x9)	# 213
	jal		x0, beq_cont.296693	# 213
beq.296694:
	lui		x9, %hi(l.16024)	# 214
	ori		x9, x0, %lo(l.16024)	# 214
	flw		f2, 0(x9)	# 214
beq_cont.296693:
beq_cont.296689:
	fsub	x31, x31, x31	# 4
	fsub	f2, x31, f2	# 4
	ori		x9, x0, 4	# 1657
	mul		x9, x12, x9	# 1657
	add		x9, x13, x9	# 1657
	fsw		f2, 0(x9)	# 1657
beq_cont.296683:
	ori		x4, x0, 4	# 259
	lw		x5, -144(x2)	# 259
	mul		x4, x5, x4	# 259
	lw		x6, -64(x2)	# 259
	add		x4, x6, x4	# 259
	flw		f0, 0(x4)	# 259
	ori		x4, x0, 4	# 259
	mul		x4, x5, x4	# 259
	lw		x7, -60(x2)	# 259
	add		x4, x7, x4	# 259
	fsw		f0, 0(x4)	# 259
	ori		x4, x0, 4	# 260
	lw		x8, -116(x2)	# 260
	mul		x4, x8, x4	# 260
	add		x4, x6, x4	# 260
	flw		f0, 0(x4)	# 260
	ori		x4, x0, 4	# 260
	mul		x4, x8, x4	# 260
	add		x4, x7, x4	# 260
	fsw		f0, 0(x4)	# 260
	ori		x4, x0, 4	# 261
	lw		x9, -112(x2)	# 261
	mul		x4, x9, x4	# 261
	add		x4, x6, x4	# 261
	flw		f0, 0(x4)	# 261
	ori		x4, x0, 4	# 261
	mul		x4, x9, x4	# 261
	add		x4, x7, x4	# 261
	fsw		f0, 0(x4)	# 261
	lw		x4, -164(x2)	# 1843
	lw		x27, -56(x2)	# 1843
	addi	x5, x6, 0
	sw		x1, -168(x2)	# 1843
	addi	x2, x2, -172	# 1843
	lw		x31, 0(x27)	# 1843
	jalr	x1, x31, 0	# 1843
	addi	x2, x2, 172	# 1843
	lw		x1, -168(x2)	# 1843
	lw		x4, -52(x2)	# 1846
	lw		x5, -160(x2)	# 1846
	mul		x5, x5, x4	# 1846
	ori		x6, x0, 4	# 1846
	lw		x7, -144(x2)	# 1846
	mul		x6, x7, x6	# 1846
	lw		x8, -76(x2)	# 1846
	add		x6, x8, x6	# 1846
	lw		x6, 0(x6)	# 1846
	add		x5, x5, x6	# 1846
	ori		x6, x0, 4	# 1846
	lw		x8, -136(x2)	# 1846
	mul		x6, x8, x6	# 1846
	lw		x9, -132(x2)	# 1846
	add		x6, x9, x6	# 1846
	sw		x5, 0(x6)	# 1846
	lw		x5, -48(x2)	# 569
	lw		x6, 4(x5)	# 569
	ori		x10, x0, 4	# 1848
	mul		x10, x8, x10	# 1848
	add		x6, x6, x10	# 1848
	lw		x6, 0(x6)	# 1848
	ori		x10, x0, 4	# 259
	mul		x10, x7, x10	# 259
	lw		x11, -64(x2)	# 259
	add		x10, x11, x10	# 259
	flw		f0, 0(x10)	# 259
	ori		x10, x0, 4	# 259
	mul		x10, x7, x10	# 259
	add		x10, x6, x10	# 259
	fsw		f0, 0(x10)	# 259
	ori		x10, x0, 4	# 260
	lw		x12, -116(x2)	# 260
	mul		x10, x12, x10	# 260
	add		x10, x11, x10	# 260
	flw		f0, 0(x10)	# 260
	ori		x10, x0, 4	# 260
	mul		x10, x12, x10	# 260
	add		x10, x6, x10	# 260
	fsw		f0, 0(x10)	# 260
	ori		x10, x0, 4	# 261
	lw		x13, -112(x2)	# 261
	mul		x10, x13, x10	# 261
	add		x10, x11, x10	# 261
	flw		f0, 0(x10)	# 261
	ori		x10, x0, 4	# 261
	mul		x10, x13, x10	# 261
	add		x6, x6, x10	# 261
	fsw		f0, 0(x6)	# 261
	lw		x6, 12(x5)	# 584
	lw		x10, -164(x2)	# 461
	lw		x14, 28(x10)	# 461
	ori		x15, x0, 4	# 466
	mul		x15, x7, x15	# 466
	add		x14, x14, x15	# 466
	flw		f0, 0(x14)	# 466
	lui		x14, %hi(l.15681)	# 1852
	ori		x14, x0, %lo(l.15681)	# 1852
	flw		f1, 0(x14)	# 1852
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.296696	# 6
	addi	x14, x0, 0	# 6
	jal		x0, fle_cont.296695	# 6
fle_else.296696:
	ori		x14, x0, 1	# 6
fle_cont.296695:
	beq		x14, x7, beq.296698	# 1852
	addi	x14, x0, 0	# 1853
	ori		x15, x0, 4	# 1853
	mul		x15, x8, x15	# 1853
	add		x6, x6, x15	# 1853
	sw		x14, 0(x6)	# 1853
	jal		x0, beq_cont.296697	# 1852
beq.296698:
	ori		x14, x0, 1	# 1855
	ori		x15, x0, 4	# 1855
	mul		x15, x8, x15	# 1855
	add		x6, x6, x15	# 1855
	sw		x14, 0(x6)	# 1855
	lw		x6, 16(x5)	# 591
	ori		x14, x0, 4	# 1857
	mul		x14, x8, x14	# 1857
	add		x14, x6, x14	# 1857
	lw		x14, 0(x14)	# 1857
	addi	x15, x0, 0	# 259
	addi	x16, x0, 0	# 259
	ori		x17, x0, 4	# 259
	mul		x16, x16, x17	# 259
	lw		x17, -44(x2)	# 259
	add		x16, x17, x16	# 259
	flw		f0, 0(x16)	# 259
	ori		x16, x0, 4	# 259
	mul		x15, x15, x16	# 259
	add		x15, x14, x15	# 259
	fsw		f0, 0(x15)	# 259
	ori		x15, x0, 1	# 260
	ori		x16, x0, 1	# 260
	ori		x18, x0, 4	# 260
	mul		x16, x16, x18	# 260
	add		x16, x17, x16	# 260
	flw		f0, 0(x16)	# 260
	ori		x16, x0, 4	# 260
	mul		x15, x15, x16	# 260
	add		x15, x14, x15	# 260
	fsw		f0, 0(x15)	# 260
	ori		x15, x0, 2	# 261
	ori		x16, x0, 4	# 261
	mul		x16, x15, x16	# 261
	add		x16, x17, x16	# 261
	flw		f0, 0(x16)	# 261
	ori		x16, x0, 4	# 261
	mul		x15, x15, x16	# 261
	add		x14, x14, x15	# 261
	fsw		f0, 0(x14)	# 261
	ori		x14, x0, 4	# 1858
	mul		x14, x8, x14	# 1858
	add		x6, x6, x14	# 1858
	lw		x6, 0(x6)	# 1858
	lui		x14, %hi(l.18555)	# 1858
	ori		x14, x0, %lo(l.18555)	# 1858
	flw		f0, 0(x14)	# 1858
	flw		f1, -152(x2)	# 1858
	fmul	f0, f0, f1	# 1858
	addi	x14, x0, 0	# 325
	addi	x15, x0, 0	# 325
	ori		x16, x0, 4	# 325
	mul		x15, x15, x16	# 325
	add		x15, x6, x15	# 325
	flw		f2, 0(x15)	# 325
	fmul	f2, f2, f0	# 325
	ori		x15, x0, 4	# 325
	mul		x14, x14, x15	# 325
	add		x14, x6, x14	# 325
	fsw		f2, 0(x14)	# 325
	ori		x14, x0, 1	# 326
	ori		x15, x0, 1	# 326
	ori		x16, x0, 4	# 326
	mul		x15, x15, x16	# 326
	add		x15, x6, x15	# 326
	flw		f2, 0(x15)	# 326
	fmul	f2, f2, f0	# 326
	ori		x15, x0, 4	# 326
	mul		x14, x14, x15	# 326
	add		x14, x6, x14	# 326
	fsw		f2, 0(x14)	# 326
	ori		x14, x0, 2	# 327
	ori		x15, x0, 4	# 327
	mul		x15, x14, x15	# 327
	add		x15, x6, x15	# 327
	flw		f2, 0(x15)	# 327
	fmul	f0, f2, f0	# 327
	ori		x15, x0, 4	# 327
	mul		x14, x14, x15	# 327
	add		x6, x6, x14	# 327
	fsw		f0, 0(x6)	# 327
	lw		x6, 28(x5)	# 628
	ori		x14, x0, 4	# 1860
	mul		x14, x8, x14	# 1860
	add		x6, x6, x14	# 1860
	lw		x6, 0(x6)	# 1860
	addi	x14, x0, 0	# 259
	addi	x15, x0, 0	# 259
	ori		x16, x0, 4	# 259
	mul		x15, x15, x16	# 259
	lw		x16, -72(x2)	# 259
	add		x15, x16, x15	# 259
	flw		f0, 0(x15)	# 259
	ori		x15, x0, 4	# 259
	mul		x14, x14, x15	# 259
	add		x14, x6, x14	# 259
	fsw		f0, 0(x14)	# 259
	ori		x14, x0, 1	# 260
	ori		x15, x0, 1	# 260
	ori		x18, x0, 4	# 260
	mul		x15, x15, x18	# 260
	add		x15, x16, x15	# 260
	flw		f0, 0(x15)	# 260
	ori		x15, x0, 4	# 260
	mul		x14, x14, x15	# 260
	add		x14, x6, x14	# 260
	fsw		f0, 0(x14)	# 260
	ori		x14, x0, 2	# 261
	ori		x15, x0, 4	# 261
	mul		x15, x14, x15	# 261
	add		x15, x16, x15	# 261
	flw		f0, 0(x15)	# 261
	ori		x15, x0, 4	# 261
	mul		x14, x14, x15	# 261
	add		x6, x6, x14	# 261
	fsw		f0, 0(x6)	# 261
beq_cont.296697:
	lui		x6, %hi(l.18596)	# 1863
	ori		x6, x0, %lo(l.18596)	# 1863
	flw		f0, 0(x6)	# 1863
	ori		x6, x0, 4	# 292
	mul		x6, x7, x6	# 292
	lw		x14, -124(x2)	# 292
	add		x6, x14, x6	# 292
	flw		f1, 0(x6)	# 292
	ori		x6, x0, 4	# 292
	mul		x6, x7, x6	# 292
	lw		x15, -72(x2)	# 292
	add		x6, x15, x6	# 292
	flw		f2, 0(x6)	# 292
	fmul	f3, f1, f2	# 292
	ori		x6, x0, 4	# 292
	mul		x6, x12, x6	# 292
	add		x6, x14, x6	# 292
	flw		f4, 0(x6)	# 292
	ori		x6, x0, 4	# 292
	mul		x6, x12, x6	# 292
	add		x6, x15, x6	# 292
	flw		f5, 0(x6)	# 292
	fmul	f4, f4, f5	# 292
	fadd	f3, f3, f4	# 292
	ori		x6, x0, 4	# 292
	mul		x6, x13, x6	# 292
	add		x6, x14, x6	# 292
	flw		f4, 0(x6)	# 292
	ori		x6, x0, 4	# 292
	mul		x6, x13, x6	# 292
	add		x6, x15, x6	# 292
	flw		f5, 0(x6)	# 292
	fmul	f4, f4, f5	# 292
	fadd	f3, f3, f4	# 292
	fmul	f0, f0, f3	# 1863
	fmul	f2, f0, f2	# 302
	fadd	f1, f1, f2	# 302
	ori		x6, x0, 4	# 302
	mul		x6, x7, x6	# 302
	add		x6, x14, x6	# 302
	fsw		f1, 0(x6)	# 302
	ori		x6, x0, 4	# 303
	mul		x6, x12, x6	# 303
	add		x6, x14, x6	# 303
	flw		f1, 0(x6)	# 303
	ori		x6, x0, 4	# 303
	mul		x6, x12, x6	# 303
	add		x6, x15, x6	# 303
	flw		f2, 0(x6)	# 303
	fmul	f2, f0, f2	# 303
	fadd	f1, f1, f2	# 303
	ori		x6, x0, 4	# 303
	mul		x6, x12, x6	# 303
	add		x6, x14, x6	# 303
	fsw		f1, 0(x6)	# 303
	ori		x6, x0, 4	# 304
	mul		x6, x13, x6	# 304
	add		x6, x14, x6	# 304
	flw		f1, 0(x6)	# 304
	ori		x6, x0, 4	# 304
	mul		x6, x13, x6	# 304
	add		x6, x15, x6	# 304
	flw		f2, 0(x6)	# 304
	fmul	f0, f0, f2	# 304
	fadd	f0, f1, f0	# 304
	ori		x6, x0, 4	# 304
	mul		x6, x13, x6	# 304
	add		x6, x14, x6	# 304
	fsw		f0, 0(x6)	# 304
	lw		x6, 28(x10)	# 471
	ori		x16, x0, 4	# 476
	mul		x16, x12, x16	# 476
	add		x6, x6, x16	# 476
	flw		f0, 0(x6)	# 476
	flw		f1, -96(x2)	# 1867
	fmul	f0, f1, f0	# 1867
	ori		x6, x0, 4	# 1870
	mul		x6, x7, x6	# 1870
	lw		x16, -40(x2)	# 1870
	add		x6, x16, x6	# 1870
	lw		x6, 0(x6)	# 1870
	lw		x27, -24(x2)	# 1870
	fsw		f0, -168(x2)	# 1870
	addi	x5, x6, 0
	addi	x4, x7, 0
	sw		x1, -176(x2)	# 1870
	addi	x2, x2, -180	# 1870
	lw		x31, 0(x27)	# 1870
	jalr	x1, x31, 0	# 1870
	addi	x2, x2, 180	# 1870
	lw		x1, -176(x2)	# 1870
	lw		x5, -144(x2)	# 1870
	beq		x4, x5, beq.296700	# 1870
	jal		x0, beq_cont.296699	# 1870
beq.296700:
	addi	x4, x0, 0	# 292
	ori		x6, x0, 4	# 292
	mul		x4, x4, x6	# 292
	lw		x6, -72(x2)	# 292
	add		x4, x6, x4	# 292
	flw		f0, 0(x4)	# 292
	addi	x4, x0, 0	# 292
	ori		x7, x0, 4	# 292
	mul		x4, x4, x7	# 292
	lw		x7, -120(x2)	# 292
	add		x4, x7, x4	# 292
	flw		f1, 0(x4)	# 292
	fmul	f0, f0, f1	# 292
	ori		x4, x0, 1	# 292
	ori		x8, x0, 4	# 292
	mul		x4, x4, x8	# 292
	add		x4, x6, x4	# 292
	flw		f1, 0(x4)	# 292
	ori		x4, x0, 1	# 292
	ori		x8, x0, 4	# 292
	mul		x4, x4, x8	# 292
	add		x4, x7, x4	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	ori		x4, x0, 2	# 292
	ori		x8, x0, 4	# 292
	mul		x4, x4, x8	# 292
	add		x4, x6, x4	# 292
	flw		f1, 0(x4)	# 292
	ori		x4, x0, 2	# 292
	ori		x6, x0, 4	# 292
	mul		x4, x4, x6	# 292
	add		x4, x7, x4	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	flw		f1, -152(x2)	# 1871
	fmul	f0, f0, f1	# 1871
	addi	x4, x0, 0	# 292
	ori		x6, x0, 4	# 292
	mul		x4, x4, x6	# 292
	lw		x6, -124(x2)	# 292
	add		x4, x6, x4	# 292
	flw		f2, 0(x4)	# 292
	addi	x4, x0, 0	# 292
	ori		x8, x0, 4	# 292
	mul		x4, x4, x8	# 292
	add		x4, x7, x4	# 292
	flw		f3, 0(x4)	# 292
	fmul	f2, f2, f3	# 292
	ori		x4, x0, 1	# 292
	ori		x8, x0, 4	# 292
	mul		x4, x4, x8	# 292
	add		x4, x6, x4	# 292
	flw		f3, 0(x4)	# 292
	ori		x4, x0, 1	# 292
	ori		x8, x0, 4	# 292
	mul		x4, x4, x8	# 292
	add		x4, x7, x4	# 292
	flw		f4, 0(x4)	# 292
	fmul	f3, f3, f4	# 292
	fadd	f2, f2, f3	# 292
	ori		x4, x0, 2	# 292
	ori		x8, x0, 4	# 292
	mul		x4, x4, x8	# 292
	add		x4, x6, x4	# 292
	flw		f3, 0(x4)	# 292
	ori		x4, x0, 2	# 292
	ori		x8, x0, 4	# 292
	mul		x4, x4, x8	# 292
	add		x4, x7, x4	# 292
	flw		f4, 0(x4)	# 292
	fmul	f3, f3, f4	# 292
	fadd	f2, f2, f3	# 292
	fsub	x31, x31, x31	# 4
	fsub	f2, x31, f2	# 4
	lui		x4, %hi(l.15659)	# 2
	ori		x4, x0, %lo(l.15659)	# 2
	flw		f3, 0(x4)	# 2
	fle		x31, f0, f3	# 2
	beq		x31, x0, fle_else.296702	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.296701	# 2
fle_else.296702:
	ori		x4, x0, 1	# 2
fle_cont.296701:
	addi	x7, x0, 0	# 1788
	beq		x4, x7, beq.296704	# 1788
	ori		x4, x0, 4	# 302
	mul		x4, x5, x4	# 302
	lw		x7, -88(x2)	# 302
	add		x4, x7, x4	# 302
	flw		f3, 0(x4)	# 302
	ori		x4, x0, 4	# 302
	mul		x4, x5, x4	# 302
	lw		x8, -44(x2)	# 302
	add		x4, x8, x4	# 302
	flw		f4, 0(x4)	# 302
	fmul	f4, f0, f4	# 302
	fadd	f3, f3, f4	# 302
	ori		x4, x0, 4	# 302
	mul		x4, x5, x4	# 302
	add		x4, x7, x4	# 302
	fsw		f3, 0(x4)	# 302
	ori		x4, x0, 4	# 303
	lw		x9, -116(x2)	# 303
	mul		x4, x9, x4	# 303
	add		x4, x7, x4	# 303
	flw		f3, 0(x4)	# 303
	ori		x4, x0, 4	# 303
	mul		x4, x9, x4	# 303
	add		x4, x8, x4	# 303
	flw		f4, 0(x4)	# 303
	fmul	f4, f0, f4	# 303
	fadd	f3, f3, f4	# 303
	ori		x4, x0, 4	# 303
	mul		x4, x9, x4	# 303
	add		x4, x7, x4	# 303
	fsw		f3, 0(x4)	# 303
	ori		x4, x0, 4	# 304
	lw		x10, -112(x2)	# 304
	mul		x4, x10, x4	# 304
	add		x4, x7, x4	# 304
	flw		f3, 0(x4)	# 304
	ori		x4, x0, 4	# 304
	mul		x4, x10, x4	# 304
	add		x4, x8, x4	# 304
	flw		f4, 0(x4)	# 304
	fmul	f0, f0, f4	# 304
	fadd	f0, f3, f0	# 304
	ori		x4, x0, 4	# 304
	mul		x4, x10, x4	# 304
	add		x4, x7, x4	# 304
	fsw		f0, 0(x4)	# 304
	jal		x0, beq_cont.296703	# 1788
beq.296704:
beq_cont.296703:
	lui		x4, %hi(l.15659)	# 2
	ori		x4, x0, %lo(l.15659)	# 2
	flw		f0, 0(x4)	# 2
	fle		x31, f2, f0	# 2
	beq		x31, x0, fle_else.296706	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.296705	# 2
fle_else.296706:
	ori		x4, x0, 1	# 2
fle_cont.296705:
	addi	x7, x0, 0	# 1793
	beq		x4, x7, beq.296708	# 1793
	fmul	f0, f2, f2	# 8
	fmul	f0, f0, f0	# 8
	flw		f2, -168(x2)	# 1794
	fmul	f0, f0, f2	# 1794
	addi	x4, x0, 0	# 1795
	addi	x7, x0, 0	# 1795
	ori		x8, x0, 4	# 1795
	mul		x7, x7, x8	# 1795
	lw		x8, -88(x2)	# 1795
	add		x7, x8, x7	# 1795
	flw		f3, 0(x7)	# 1795
	fadd	f3, f3, f0	# 1795
	ori		x7, x0, 4	# 1795
	mul		x4, x4, x7	# 1795
	add		x4, x8, x4	# 1795
	fsw		f3, 0(x4)	# 1795
	ori		x4, x0, 1	# 1796
	ori		x7, x0, 1	# 1796
	ori		x9, x0, 4	# 1796
	mul		x7, x7, x9	# 1796
	add		x7, x8, x7	# 1796
	flw		f3, 0(x7)	# 1796
	fadd	f3, f3, f0	# 1796
	ori		x7, x0, 4	# 1796
	mul		x4, x4, x7	# 1796
	add		x4, x8, x4	# 1796
	fsw		f3, 0(x4)	# 1796
	ori		x4, x0, 2	# 1797
	ori		x7, x0, 4	# 1797
	mul		x7, x4, x7	# 1797
	add		x7, x8, x7	# 1797
	flw		f3, 0(x7)	# 1797
	fadd	f0, f3, f0	# 1797
	ori		x7, x0, 4	# 1797
	mul		x4, x4, x7	# 1797
	add		x4, x8, x4	# 1797
	fsw		f0, 0(x4)	# 1797
	jal		x0, beq_cont.296707	# 1793
beq.296708:
beq_cont.296707:
beq_cont.296699:
	ori		x4, x0, 4	# 259
	mul		x4, x5, x4	# 259
	lw		x6, -64(x2)	# 259
	add		x4, x6, x4	# 259
	flw		f0, 0(x4)	# 259
	ori		x4, x0, 4	# 259
	mul		x4, x5, x4	# 259
	lw		x7, -20(x2)	# 259
	add		x4, x7, x4	# 259
	fsw		f0, 0(x4)	# 259
	ori		x4, x0, 4	# 260
	lw		x8, -116(x2)	# 260
	mul		x4, x8, x4	# 260
	add		x4, x6, x4	# 260
	flw		f0, 0(x4)	# 260
	ori		x4, x0, 4	# 260
	mul		x4, x8, x4	# 260
	add		x4, x7, x4	# 260
	fsw		f0, 0(x4)	# 260
	ori		x4, x0, 4	# 261
	lw		x9, -112(x2)	# 261
	mul		x4, x9, x4	# 261
	add		x4, x6, x4	# 261
	flw		f0, 0(x4)	# 261
	ori		x4, x0, 4	# 261
	mul		x4, x9, x4	# 261
	add		x4, x7, x4	# 261
	fsw		f0, 0(x4)	# 261
	ori		x4, x0, 4	# 1315
	mul		x4, x5, x4	# 1315
	lw		x7, -12(x2)	# 1315
	add		x4, x7, x4	# 1315
	lw		x4, 0(x4)	# 1315
	sub		x4, x4, x8	# 1315
	lw		x27, -8(x2)	# 1315
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -176(x2)	# 1315
	addi	x2, x2, -180	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 180	# 1315
	lw		x1, -176(x2)	# 1315
	ori		x4, x0, 4	# 1878
	lw		x5, -144(x2)	# 1878
	mul		x4, x5, x4	# 1878
	lw		x6, -4(x2)	# 1878
	add		x4, x6, x4	# 1878
	lw		x4, 0(x4)	# 1878
	lw		x6, -116(x2)	# 1878
	sub		x4, x4, x6	# 1878
	flw		f0, -152(x2)	# 1878
	flw		f1, -168(x2)	# 1878
	lw		x7, -124(x2)	# 1878
	lw		x27, 0(x2)	# 1878
	addi	x5, x7, 0
	sw		x1, -176(x2)	# 1878
	addi	x2, x2, -180	# 1878
	lw		x31, 0(x27)	# 1878
	jalr	x1, x31, 0	# 1878
	addi	x2, x2, 180	# 1878
	lw		x1, -176(x2)	# 1878
	lui		x4, %hi(l.18750)	# 1881
	ori		x4, x0, %lo(l.18750)	# 1881
	flw		f0, 0(x4)	# 1881
	flw		f1, -96(x2)	# 6
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.296710	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.296709	# 6
fle_else.296710:
	ori		x4, x0, 1	# 6
fle_cont.296709:
	lw		x5, -144(x2)	# 1881
	beq		x4, x5, beq.296711	# 1881
	lw		x4, -136(x2)	# 1883
	lw		x6, -52(x2)	# 1883
	ble		x6, x4, ble.296713	# 1883
	addi	x6, x4, 1	# 1884
	lui		x7, -1	# 1884
	ori		x7, x0, -1	# 1884
	ori		x8, x0, 4	# 1884
	mul		x6, x6, x8	# 1884
	lw		x8, -132(x2)	# 1884
	add		x6, x8, x6	# 1884
	sw		x7, 0(x6)	# 1884
	jal		x0, ble_cont.296712	# 1883
ble.296713:
ble_cont.296712:
	lw		x6, -112(x2)	# 1887
	lw		x7, -148(x2)	# 1887
	beq		x7, x6, beq.296714	# 1887
	jalr	x0, x1, 0	# 1890
beq.296714:
	lui		x6, %hi(l.15661)	# 1888
	ori		x6, x0, %lo(l.15661)	# 1888
	flw		f0, 0(x6)	# 1888
	lw		x6, -164(x2)	# 461
	lw		x6, 28(x6)	# 461
	ori		x7, x0, 4	# 466
	mul		x7, x5, x7	# 466
	add		x6, x6, x7	# 466
	flw		f2, 0(x6)	# 466
	fsub	f0, f0, f2	# 1888
	fmul	f0, f1, f0	# 1888
	lw		x6, -116(x2)	# 1889
	add		x4, x4, x6	# 1889
	ori		x6, x0, 4	# 1889
	mul		x5, x5, x6	# 1889
	lw		x6, -140(x2)	# 1889
	add		x5, x6, x5	# 1889
	flw		f1, 0(x5)	# 1889
	flw		f2, -32(x2)	# 1889
	fadd	f1, f2, f1	# 1889
	lw		x5, -124(x2)	# 1889
	lw		x6, -48(x2)	# 1889
	lw		x27, -16(x2)	# 1889
	lw		x31, 0(x27)	# 1889
	jalr	x0, x31, 0	# 1889
beq.296711:
	jalr	x0, x1, 0	# 1892
beq.296682:
	ori		x4, x0, 4	# 1897
	lw		x6, -136(x2)	# 1897
	mul		x4, x6, x4	# 1897
	lw		x7, -132(x2)	# 1897
	add		x4, x7, x4	# 1897
	lw		x7, -128(x2)	# 1897
	sw		x7, 0(x4)	# 1897
	beq		x6, x5, beq.296717	# 1899
	ori		x4, x0, 4	# 292
	mul		x4, x5, x4	# 292
	lw		x6, -124(x2)	# 292
	add		x4, x6, x4	# 292
	flw		f0, 0(x4)	# 292
	ori		x4, x0, 4	# 292
	mul		x4, x5, x4	# 292
	lw		x7, -120(x2)	# 292
	add		x4, x7, x4	# 292
	flw		f1, 0(x4)	# 292
	fmul	f0, f0, f1	# 292
	ori		x4, x0, 4	# 292
	lw		x8, -116(x2)	# 292
	mul		x4, x8, x4	# 292
	add		x4, x6, x4	# 292
	flw		f1, 0(x4)	# 292
	ori		x4, x0, 4	# 292
	mul		x4, x8, x4	# 292
	add		x4, x7, x4	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	ori		x4, x0, 4	# 292
	lw		x9, -112(x2)	# 292
	mul		x4, x9, x4	# 292
	add		x4, x6, x4	# 292
	flw		f1, 0(x4)	# 292
	ori		x4, x0, 4	# 292
	mul		x4, x9, x4	# 292
	add		x4, x7, x4	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	flw		f1, -104(x2)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.296719	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.296718	# 2
fle_else.296719:
	ori		x4, x0, 1	# 2
fle_cont.296718:
	beq		x4, x5, beq.296720	# 1902
	fmul	f1, f0, f0	# 8
	fmul	f0, f1, f0	# 1905
	flw		f1, -96(x2)	# 1905
	fmul	f0, f0, f1	# 1905
	ori		x4, x0, 4	# 1905
	mul		x4, x5, x4	# 1905
	lw		x6, -92(x2)	# 1905
	add		x4, x6, x4	# 1905
	flw		f1, 0(x4)	# 1905
	fmul	f0, f0, f1	# 1905
	ori		x4, x0, 4	# 1906
	mul		x4, x5, x4	# 1906
	lw		x6, -88(x2)	# 1906
	add		x4, x6, x4	# 1906
	flw		f1, 0(x4)	# 1906
	fadd	f1, f1, f0	# 1906
	ori		x4, x0, 4	# 1906
	mul		x4, x5, x4	# 1906
	add		x4, x6, x4	# 1906
	fsw		f1, 0(x4)	# 1906
	ori		x4, x0, 4	# 1907
	mul		x4, x8, x4	# 1907
	add		x4, x6, x4	# 1907
	flw		f1, 0(x4)	# 1907
	fadd	f1, f1, f0	# 1907
	ori		x4, x0, 4	# 1907
	mul		x4, x8, x4	# 1907
	add		x4, x6, x4	# 1907
	fsw		f1, 0(x4)	# 1907
	ori		x4, x0, 4	# 1908
	mul		x4, x9, x4	# 1908
	add		x4, x6, x4	# 1908
	flw		f1, 0(x4)	# 1908
	fadd	f0, f1, f0	# 1908
	ori		x4, x0, 4	# 1908
	mul		x4, x9, x4	# 1908
	add		x4, x6, x4	# 1908
	fsw		f0, 0(x4)	# 1908
	jalr	x0, x1, 0	# 1908
beq.296720:
	jalr	x0, x1, 0	# 1910
beq.296717:
	jalr	x0, x1, 0	# 1911
trace_diffuse_ray.2877:
	lw		x5, 76(x27)	# 1634
	lw		x6, 72(x27)	# 1634
	lw		x7, 68(x27)	# 1634
	lw		x8, 64(x27)	# 1634
	lw		x9, 60(x27)	# 1634
	lw		x10, 56(x27)	# 1634
	lw		x11, 52(x27)	# 1634
	lw		x12, 48(x27)	# 1634
	lw		x13, 44(x27)	# 1634
	lw		x14, 40(x27)	# 1634
	lw		x15, 36(x27)	# 1634
	lw		x16, 32(x27)	# 1634
	lw		x17, 28(x27)	# 1634
	lw		x18, 24(x27)	# 1634
	lw		x19, 20(x27)	# 1634
	lw		x20, 16(x27)	# 1634
	lw		x21, 12(x27)	# 1634
	flw		f1, 8(x27)	# 1634
	flw		f2, 4(x27)	# 1634
	ori		x22, x0, 4	# 1634
	mul		x22, x20, x22	# 1634
	add		x22, x7, x22	# 1634
	fsw		f1, 0(x22)	# 1634
	ori		x22, x0, 4	# 1635
	mul		x22, x20, x22	# 1635
	add		x22, x10, x22	# 1635
	lw		x22, 0(x22)	# 1635
	sw		x8, 0(x2)	# 1635
	sw		x18, -4(x2)	# 1635
	fsw		f0, -8(x2)	# 1635
	fsw		f2, -16(x2)	# 1635
	sw		x13, -24(x2)	# 1635
	sw		x9, -28(x2)	# 1635
	sw		x10, -32(x2)	# 1635
	sw		x15, -36(x2)	# 1635
	sw		x5, -40(x2)	# 1635
	sw		x17, -44(x2)	# 1635
	sw		x19, -48(x2)	# 1635
	sw		x12, -52(x2)	# 1635
	sw		x14, -56(x2)	# 1635
	sw		x21, -60(x2)	# 1635
	sw		x4, -64(x2)	# 1635
	sw		x11, -68(x2)	# 1635
	sw		x16, -72(x2)	# 1635
	sw		x7, -76(x2)	# 1635
	sw		x20, -80(x2)	# 1635
	addi	x5, x22, 0
	addi	x27, x6, 0
	addi	x6, x4, 0
	addi	x4, x20, 0
	sw		x1, -84(x2)	# 1635
	addi	x2, x2, -88	# 1635
	lw		x31, 0(x27)	# 1635
	jalr	x1, x31, 0	# 1635
	addi	x2, x2, 88	# 1635
	lw		x1, -84(x2)	# 1635
	ori		x4, x0, 4	# 1636
	lw		x5, -80(x2)	# 1636
	mul		x4, x5, x4	# 1636
	lw		x6, -76(x2)	# 1636
	add		x4, x6, x4	# 1636
	flw		f0, 0(x4)	# 1636
	lui		x4, %hi(l.17059)	# 1638
	ori		x4, x0, %lo(l.17059)	# 1638
	flw		f1, 0(x4)	# 1638
	fle		x31, f0, f1	# 6
	beq		x31, x0, fle_else.296725	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.296724	# 6
fle_else.296725:
	ori		x4, x0, 1	# 6
fle_cont.296724:
	beq		x4, x5, beq.296727	# 1638
	lui		x4, %hi(l.18079)	# 1639
	ori		x4, x0, %lo(l.18079)	# 1639
	flw		f1, 0(x4)	# 1639
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.296729	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.296728	# 6
fle_else.296729:
	ori		x4, x0, 1	# 6
fle_cont.296728:
	jal		x0, beq_cont.296726	# 1638
beq.296727:
	addi	x4, x0, 0	# 1640
beq_cont.296726:
	beq		x4, x5, beq.296730	# 1927
	ori		x4, x0, 4	# 1928
	mul		x4, x5, x4	# 1928
	lw		x6, -72(x2)	# 1928
	add		x4, x6, x4	# 1928
	lw		x4, 0(x4)	# 1928
	ori		x6, x0, 4	# 1928
	mul		x4, x4, x6	# 1928
	lw		x6, -68(x2)	# 1928
	add		x4, x6, x4	# 1928
	lw		x4, 0(x4)	# 1928
	lw		x6, -64(x2)	# 639
	lw		x6, 0(x6)	# 639
	lw		x7, 4(x4)	# 353
	lw		x8, -60(x2)	# 1693
	sw		x4, -84(x2)	# 1693
	beq		x7, x8, beq.296732	# 1693
	ori		x6, x0, 2	# 1695
	beq		x7, x6, beq.296734	# 1695
	lw		x27, -44(x2)	# 1698
	sw		x1, -88(x2)	# 1698
	addi	x2, x2, -92	# 1698
	lw		x31, 0(x27)	# 1698
	jalr	x1, x31, 0	# 1698
	addi	x2, x2, 92	# 1698
	lw		x1, -88(x2)	# 1698
	jal		x0, beq_cont.296733	# 1695
beq.296734:
	lw		x6, 16(x4)	# 391
	ori		x7, x0, 4	# 396
	mul		x7, x5, x7	# 396
	add		x6, x6, x7	# 396
	flw		f0, 0(x6)	# 396
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x6, x0, 4	# 1663
	mul		x6, x5, x6	# 1663
	lw		x7, -52(x2)	# 1663
	add		x6, x7, x6	# 1663
	fsw		f0, 0(x6)	# 1663
	lw		x6, 16(x4)	# 401
	ori		x9, x0, 4	# 406
	mul		x9, x8, x9	# 406
	add		x6, x6, x9	# 406
	flw		f0, 0(x6)	# 406
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x6, x0, 4	# 1664
	mul		x6, x8, x6	# 1664
	add		x6, x7, x6	# 1664
	fsw		f0, 0(x6)	# 1664
	lw		x6, 16(x4)	# 411
	ori		x9, x0, 4	# 416
	lw		x10, -48(x2)	# 416
	mul		x9, x10, x9	# 416
	add		x6, x6, x9	# 416
	flw		f0, 0(x6)	# 416
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x6, x0, 4	# 1665
	mul		x6, x10, x6	# 1665
	add		x6, x7, x6	# 1665
	fsw		f0, 0(x6)	# 1665
beq_cont.296733:
	jal		x0, beq_cont.296731	# 1693
beq.296732:
	ori		x7, x0, 4	# 1654
	mul		x7, x5, x7	# 1654
	lw		x9, -56(x2)	# 1654
	add		x7, x9, x7	# 1654
	lw		x7, 0(x7)	# 1654
	lui		x9, %hi(l.15659)	# 254
	ori		x9, x0, %lo(l.15659)	# 254
	flw		f0, 0(x9)	# 254
	ori		x9, x0, 4	# 247
	mul		x9, x5, x9	# 247
	lw		x10, -52(x2)	# 247
	add		x9, x10, x9	# 247
	fsw		f0, 0(x9)	# 247
	ori		x9, x0, 4	# 248
	mul		x9, x8, x9	# 248
	add		x9, x10, x9	# 248
	fsw		f0, 0(x9)	# 248
	ori		x9, x0, 4	# 249
	lw		x11, -48(x2)	# 249
	mul		x9, x11, x9	# 249
	add		x9, x10, x9	# 249
	fsw		f0, 0(x9)	# 249
	sub		x9, x7, x8	# 1657
	sub		x7, x7, x8	# 1657
	ori		x12, x0, 4	# 1657
	mul		x7, x7, x12	# 1657
	add		x6, x6, x7	# 1657
	flw		f0, 0(x6)	# 1657
	lui		x6, %hi(l.15659)	# 1
	ori		x6, x0, %lo(l.15659)	# 1
	flw		f1, 0(x6)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.296736	# 1
	ori		x6, x0, 1	# 1
	jal		x0, feq_cont.296735	# 1
feq_else.296736:
	addi	x6, x0, 0	# 1
feq_cont.296735:
	addi	x7, x0, 0	# 212
	beq		x6, x7, beq.296738	# 212
	lui		x6, %hi(l.15659)	# 212
	ori		x6, x0, %lo(l.15659)	# 212
	flw		f0, 0(x6)	# 212
	jal		x0, beq_cont.296737	# 212
beq.296738:
	lui		x6, %hi(l.15659)	# 2
	ori		x6, x0, %lo(l.15659)	# 2
	flw		f1, 0(x6)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.296740	# 2
	addi	x6, x0, 0	# 2
	jal		x0, fle_cont.296739	# 2
fle_else.296740:
	ori		x6, x0, 1	# 2
fle_cont.296739:
	beq		x6, x7, beq.296742	# 213
	lui		x6, %hi(l.15661)	# 213
	ori		x6, x0, %lo(l.15661)	# 213
	flw		f0, 0(x6)	# 213
	jal		x0, beq_cont.296741	# 213
beq.296742:
	lui		x6, %hi(l.16024)	# 214
	ori		x6, x0, %lo(l.16024)	# 214
	flw		f0, 0(x6)	# 214
beq_cont.296741:
beq_cont.296737:
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x6, x0, 4	# 1657
	mul		x6, x9, x6	# 1657
	add		x6, x10, x6	# 1657
	fsw		f0, 0(x6)	# 1657
beq_cont.296731:
	lw		x4, -84(x2)	# 1930
	lw		x5, -36(x2)	# 1930
	lw		x27, -40(x2)	# 1930
	sw		x1, -88(x2)	# 1930
	addi	x2, x2, -92	# 1930
	lw		x31, 0(x27)	# 1930
	jalr	x1, x31, 0	# 1930
	addi	x2, x2, 92	# 1930
	lw		x1, -88(x2)	# 1930
	ori		x4, x0, 4	# 1933
	lw		x5, -80(x2)	# 1933
	mul		x4, x5, x4	# 1933
	lw		x6, -32(x2)	# 1933
	add		x4, x6, x4	# 1933
	lw		x4, 0(x4)	# 1933
	lw		x27, -28(x2)	# 1933
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -88(x2)	# 1933
	addi	x2, x2, -92	# 1933
	lw		x31, 0(x27)	# 1933
	jalr	x1, x31, 0	# 1933
	addi	x2, x2, 92	# 1933
	lw		x1, -88(x2)	# 1933
	lw		x5, -80(x2)	# 1933
	beq		x4, x5, beq.296743	# 1933
	jalr	x0, x1, 0	# 1937
beq.296743:
	ori		x4, x0, 4	# 292
	mul		x4, x5, x4	# 292
	lw		x6, -52(x2)	# 292
	add		x4, x6, x4	# 292
	flw		f0, 0(x4)	# 292
	ori		x4, x0, 4	# 292
	mul		x4, x5, x4	# 292
	lw		x7, -24(x2)	# 292
	add		x4, x7, x4	# 292
	flw		f1, 0(x4)	# 292
	fmul	f0, f0, f1	# 292
	ori		x4, x0, 4	# 292
	lw		x8, -60(x2)	# 292
	mul		x4, x8, x4	# 292
	add		x4, x6, x4	# 292
	flw		f1, 0(x4)	# 292
	ori		x4, x0, 4	# 292
	mul		x4, x8, x4	# 292
	add		x4, x7, x4	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	ori		x4, x0, 4	# 292
	lw		x9, -48(x2)	# 292
	mul		x4, x9, x4	# 292
	add		x4, x6, x4	# 292
	flw		f1, 0(x4)	# 292
	ori		x4, x0, 4	# 292
	mul		x4, x9, x4	# 292
	add		x4, x7, x4	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	flw		f1, -16(x2)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.296746	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.296745	# 2
fle_else.296746:
	ori		x4, x0, 1	# 2
fle_cont.296745:
	beq		x4, x5, beq.296748	# 1935
	jal		x0, beq_cont.296747	# 1935
beq.296748:
	fsub	f0, f0, f0	# 1935
	fadd	f0, f0, f1	# 1935
beq_cont.296747:
	flw		f1, -8(x2)	# 1936
	fmul	f0, f1, f0	# 1936
	lw		x4, -84(x2)	# 461
	lw		x4, 28(x4)	# 461
	ori		x6, x0, 4	# 466
	mul		x6, x5, x6	# 466
	add		x4, x4, x6	# 466
	flw		f1, 0(x4)	# 466
	fmul	f0, f0, f1	# 1936
	ori		x4, x0, 4	# 302
	mul		x4, x5, x4	# 302
	lw		x6, -4(x2)	# 302
	add		x4, x6, x4	# 302
	flw		f1, 0(x4)	# 302
	ori		x4, x0, 4	# 302
	mul		x4, x5, x4	# 302
	lw		x7, 0(x2)	# 302
	add		x4, x7, x4	# 302
	flw		f2, 0(x4)	# 302
	fmul	f2, f0, f2	# 302
	fadd	f1, f1, f2	# 302
	ori		x4, x0, 4	# 302
	mul		x4, x5, x4	# 302
	add		x4, x6, x4	# 302
	fsw		f1, 0(x4)	# 302
	ori		x4, x0, 4	# 303
	mul		x4, x8, x4	# 303
	add		x4, x6, x4	# 303
	flw		f1, 0(x4)	# 303
	ori		x4, x0, 4	# 303
	mul		x4, x8, x4	# 303
	add		x4, x7, x4	# 303
	flw		f2, 0(x4)	# 303
	fmul	f2, f0, f2	# 303
	fadd	f1, f1, f2	# 303
	ori		x4, x0, 4	# 303
	mul		x4, x8, x4	# 303
	add		x4, x6, x4	# 303
	fsw		f1, 0(x4)	# 303
	ori		x4, x0, 4	# 304
	mul		x4, x9, x4	# 304
	add		x4, x6, x4	# 304
	flw		f1, 0(x4)	# 304
	ori		x4, x0, 4	# 304
	mul		x4, x9, x4	# 304
	add		x4, x7, x4	# 304
	flw		f2, 0(x4)	# 304
	fmul	f0, f0, f2	# 304
	fadd	f0, f1, f0	# 304
	ori		x4, x0, 4	# 304
	mul		x4, x9, x4	# 304
	add		x4, x6, x4	# 304
	fsw		f0, 0(x4)	# 304
	jalr	x0, x1, 0	# 304
beq.296730:
	jalr	x0, x1, 0	# 1938
iter_trace_diffuse_rays.2880:
	lw		x8, 72(x27)	# 1944
	lw		x9, 68(x27)	# 1944
	lw		x10, 64(x27)	# 1944
	lw		x11, 60(x27)	# 1944
	lw		x12, 56(x27)	# 1944
	lw		x13, 52(x27)	# 1944
	lw		x14, 48(x27)	# 1944
	lw		x15, 44(x27)	# 1944
	lw		x16, 40(x27)	# 1944
	lw		x17, 36(x27)	# 1944
	lw		x18, 32(x27)	# 1944
	lw		x19, 28(x27)	# 1944
	lw		x20, 24(x27)	# 1944
	lw		x21, 20(x27)	# 1944
	lw		x22, 16(x27)	# 1944
	lw		x23, 12(x27)	# 1944
	lw		x24, 8(x27)	# 1944
	flw		f0, 4(x27)	# 1944
	ble		x23, x7, ble.296751	# 1944
	jalr	x0, x1, 0	# 1955
ble.296751:
	ori		x25, x0, 4	# 1945
	mul		x25, x7, x25	# 1945
	add		x25, x4, x25	# 1945
	lw		x25, 0(x25)	# 1945
	lw		x25, 0(x25)	# 639
	ori		x26, x0, 4	# 292
	mul		x26, x23, x26	# 292
	add		x26, x25, x26	# 292
	flw		f1, 0(x26)	# 292
	ori		x26, x0, 4	# 292
	mul		x26, x23, x26	# 292
	add		x26, x5, x26	# 292
	flw		f2, 0(x26)	# 292
	fmul	f1, f1, f2	# 292
	ori		x26, x0, 4	# 292
	mul		x26, x24, x26	# 292
	add		x26, x25, x26	# 292
	flw		f2, 0(x26)	# 292
	ori		x26, x0, 4	# 292
	mul		x26, x24, x26	# 292
	add		x26, x5, x26	# 292
	flw		f3, 0(x26)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	ori		x26, x0, 4	# 292
	mul		x26, x22, x26	# 292
	add		x25, x25, x26	# 292
	flw		f2, 0(x25)	# 292
	ori		x25, x0, 4	# 292
	mul		x25, x22, x25	# 292
	add		x25, x5, x25	# 292
	flw		f3, 0(x25)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	fle		x31, f0, f1	# 3
	beq		x31, x0, fle_else.296754	# 3
	addi	x25, x0, 0	# 3
	jal		x0, fle_cont.296753	# 3
fle_else.296754:
	ori		x25, x0, 1	# 3
fle_cont.296753:
	sw		x6, 0(x2)	# 1949
	sw		x27, -4(x2)	# 1949
	sw		x9, -8(x2)	# 1949
	fsw		f0, -16(x2)	# 1949
	sw		x24, -24(x2)	# 1949
	sw		x5, -28(x2)	# 1949
	sw		x4, -32(x2)	# 1949
	sw		x23, -36(x2)	# 1949
	sw		x22, -40(x2)	# 1949
	sw		x7, -44(x2)	# 1949
	beq		x25, x23, beq.296757	# 1949
	addi	x25, x7, 1	# 1950
	ori		x26, x0, 4	# 1950
	mul		x25, x25, x26	# 1950
	add		x25, x4, x25	# 1950
	lw		x25, 0(x25)	# 1950
	lui		x26, %hi(l.18938)	# 1950
	ori		x26, x0, %lo(l.18938)	# 1950
	flw		f2, 0(x26)	# 1950
	fdiv	f1, f1, f2	# 1950
	sw		x10, -48(x2)	# 1927
	sw		x21, -52(x2)	# 1927
	fsw		f1, -56(x2)	# 1927
	sw		x15, -64(x2)	# 1927
	sw		x11, -68(x2)	# 1927
	sw		x12, -72(x2)	# 1927
	sw		x18, -76(x2)	# 1927
	sw		x8, -80(x2)	# 1927
	sw		x20, -84(x2)	# 1927
	sw		x14, -88(x2)	# 1927
	sw		x17, -92(x2)	# 1927
	sw		x25, -96(x2)	# 1927
	sw		x13, -100(x2)	# 1927
	sw		x19, -104(x2)	# 1927
	addi	x4, x25, 0
	addi	x27, x16, 0
	sw		x1, -108(x2)	# 1927
	addi	x2, x2, -112	# 1927
	lw		x31, 0(x27)	# 1927
	jalr	x1, x31, 0	# 1927
	addi	x2, x2, 112	# 1927
	lw		x1, -108(x2)	# 1927
	addi	x5, x0, 0	# 1927
	beq		x4, x5, beq.296759	# 1927
	ori		x4, x0, 4	# 1928
	mul		x4, x5, x4	# 1928
	lw		x6, -104(x2)	# 1928
	add		x4, x6, x4	# 1928
	lw		x4, 0(x4)	# 1928
	ori		x6, x0, 4	# 1928
	mul		x4, x4, x6	# 1928
	lw		x6, -100(x2)	# 1928
	add		x4, x6, x4	# 1928
	lw		x4, 0(x4)	# 1928
	lw		x6, -96(x2)	# 639
	lw		x6, 0(x6)	# 639
	lw		x7, 4(x4)	# 353
	lw		x8, -24(x2)	# 1693
	sw		x5, -108(x2)	# 1693
	sw		x4, -112(x2)	# 1693
	beq		x7, x8, beq.296761	# 1693
	lw		x6, -40(x2)	# 1695
	beq		x7, x6, beq.296763	# 1695
	lw		x27, -84(x2)	# 1698
	sw		x1, -116(x2)	# 1698
	addi	x2, x2, -120	# 1698
	lw		x31, 0(x27)	# 1698
	jalr	x1, x31, 0	# 1698
	addi	x2, x2, 120	# 1698
	lw		x1, -116(x2)	# 1698
	jal		x0, beq_cont.296762	# 1695
beq.296763:
	lw		x7, 16(x4)	# 391
	ori		x9, x0, 4	# 396
	lw		x10, -36(x2)	# 396
	mul		x9, x10, x9	# 396
	add		x7, x7, x9	# 396
	flw		f0, 0(x7)	# 396
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x7, x0, 4	# 1663
	mul		x7, x10, x7	# 1663
	lw		x9, -88(x2)	# 1663
	add		x7, x9, x7	# 1663
	fsw		f0, 0(x7)	# 1663
	lw		x7, 16(x4)	# 401
	ori		x11, x0, 4	# 406
	mul		x11, x8, x11	# 406
	add		x7, x7, x11	# 406
	flw		f0, 0(x7)	# 406
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x7, x0, 4	# 1664
	mul		x7, x8, x7	# 1664
	add		x7, x9, x7	# 1664
	fsw		f0, 0(x7)	# 1664
	lw		x7, 16(x4)	# 411
	ori		x11, x0, 4	# 416
	mul		x11, x6, x11	# 416
	add		x7, x7, x11	# 416
	flw		f0, 0(x7)	# 416
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x7, x0, 4	# 1665
	mul		x7, x6, x7	# 1665
	add		x7, x9, x7	# 1665
	fsw		f0, 0(x7)	# 1665
beq_cont.296762:
	jal		x0, beq_cont.296760	# 1693
beq.296761:
	ori		x7, x0, 4	# 1654
	lw		x9, -36(x2)	# 1654
	mul		x7, x9, x7	# 1654
	lw		x10, -92(x2)	# 1654
	add		x7, x10, x7	# 1654
	lw		x7, 0(x7)	# 1654
	ori		x10, x0, 4	# 247
	mul		x10, x9, x10	# 247
	lw		x11, -88(x2)	# 247
	add		x10, x11, x10	# 247
	flw		f0, -16(x2)	# 247
	fsw		f0, 0(x10)	# 247
	ori		x10, x0, 4	# 248
	mul		x10, x8, x10	# 248
	add		x10, x11, x10	# 248
	fsw		f0, 0(x10)	# 248
	ori		x10, x0, 4	# 249
	lw		x12, -40(x2)	# 249
	mul		x10, x12, x10	# 249
	add		x10, x11, x10	# 249
	fsw		f0, 0(x10)	# 249
	sub		x10, x7, x8	# 1657
	sub		x7, x7, x8	# 1657
	ori		x13, x0, 4	# 1657
	mul		x7, x7, x13	# 1657
	add		x6, x6, x7	# 1657
	flw		f1, 0(x6)	# 1657
	feq		x31, f1, f0	# 1
	beq		x31, x0, feq_else.296765	# 1
	ori		x6, x0, 1	# 1
	jal		x0, feq_cont.296764	# 1
feq_else.296765:
	addi	x6, x0, 0	# 1
feq_cont.296764:
	beq		x6, x9, beq.296767	# 212
	fsub	f1, f1, f1	# 212
	fadd	f1, f1, f0	# 212
	jal		x0, beq_cont.296766	# 212
beq.296767:
	fle		x31, f1, f0	# 2
	beq		x31, x0, fle_else.296769	# 2
	addi	x6, x0, 0	# 2
	jal		x0, fle_cont.296768	# 2
fle_else.296769:
	ori		x6, x0, 1	# 2
fle_cont.296768:
	beq		x6, x9, beq.296771	# 213
	lui		x6, %hi(l.15661)	# 213
	ori		x6, x0, %lo(l.15661)	# 213
	flw		f1, 0(x6)	# 213
	jal		x0, beq_cont.296770	# 213
beq.296771:
	lui		x6, %hi(l.16024)	# 214
	ori		x6, x0, %lo(l.16024)	# 214
	flw		f1, 0(x6)	# 214
beq_cont.296770:
beq_cont.296766:
	fsub	x31, x31, x31	# 4
	fsub	f1, x31, f1	# 4
	ori		x6, x0, 4	# 1657
	mul		x6, x10, x6	# 1657
	add		x6, x11, x6	# 1657
	fsw		f1, 0(x6)	# 1657
beq_cont.296760:
	lw		x4, -112(x2)	# 1930
	lw		x5, -76(x2)	# 1930
	lw		x27, -80(x2)	# 1930
	sw		x1, -116(x2)	# 1930
	addi	x2, x2, -120	# 1930
	lw		x31, 0(x27)	# 1930
	jalr	x1, x31, 0	# 1930
	addi	x2, x2, 120	# 1930
	lw		x1, -116(x2)	# 1930
	addi	x4, x0, 0	# 1933
	addi	x5, x0, 0	# 1933
	ori		x6, x0, 4	# 1933
	mul		x5, x5, x6	# 1933
	lw		x6, -72(x2)	# 1933
	add		x5, x6, x5	# 1933
	lw		x5, 0(x5)	# 1933
	lw		x27, -68(x2)	# 1933
	sw		x1, -116(x2)	# 1933
	addi	x2, x2, -120	# 1933
	lw		x31, 0(x27)	# 1933
	jalr	x1, x31, 0	# 1933
	addi	x2, x2, 120	# 1933
	lw		x1, -116(x2)	# 1933
	lw		x5, -108(x2)	# 1933
	beq		x4, x5, beq.296773	# 1933
	jal		x0, beq_cont.296772	# 1933
beq.296773:
	ori		x4, x0, 4	# 292
	lw		x5, -36(x2)	# 292
	mul		x4, x5, x4	# 292
	lw		x6, -88(x2)	# 292
	add		x4, x6, x4	# 292
	flw		f0, 0(x4)	# 292
	ori		x4, x0, 4	# 292
	mul		x4, x5, x4	# 292
	lw		x7, -64(x2)	# 292
	add		x4, x7, x4	# 292
	flw		f1, 0(x4)	# 292
	fmul	f0, f0, f1	# 292
	ori		x4, x0, 4	# 292
	lw		x8, -24(x2)	# 292
	mul		x4, x8, x4	# 292
	add		x4, x6, x4	# 292
	flw		f1, 0(x4)	# 292
	ori		x4, x0, 4	# 292
	mul		x4, x8, x4	# 292
	add		x4, x7, x4	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	ori		x4, x0, 4	# 292
	lw		x9, -40(x2)	# 292
	mul		x4, x9, x4	# 292
	add		x4, x6, x4	# 292
	flw		f1, 0(x4)	# 292
	ori		x4, x0, 4	# 292
	mul		x4, x9, x4	# 292
	add		x4, x7, x4	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	lui		x4, %hi(l.15659)	# 2
	ori		x4, x0, %lo(l.15659)	# 2
	flw		f1, 0(x4)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.296775	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.296774	# 2
fle_else.296775:
	ori		x4, x0, 1	# 2
fle_cont.296774:
	addi	x6, x0, 0	# 1935
	beq		x4, x6, beq.296777	# 1935
	jal		x0, beq_cont.296776	# 1935
beq.296777:
	lui		x4, %hi(l.15659)	# 1935
	ori		x4, x0, %lo(l.15659)	# 1935
	flw		f0, 0(x4)	# 1935
beq_cont.296776:
	flw		f1, -56(x2)	# 1936
	fmul	f0, f1, f0	# 1936
	lw		x4, -112(x2)	# 461
	lw		x4, 28(x4)	# 461
	ori		x6, x0, 4	# 466
	mul		x6, x5, x6	# 466
	add		x4, x4, x6	# 466
	flw		f1, 0(x4)	# 466
	fmul	f0, f0, f1	# 1936
	ori		x4, x0, 4	# 302
	mul		x4, x5, x4	# 302
	lw		x6, -52(x2)	# 302
	add		x4, x6, x4	# 302
	flw		f1, 0(x4)	# 302
	ori		x4, x0, 4	# 302
	mul		x4, x5, x4	# 302
	lw		x7, -48(x2)	# 302
	add		x4, x7, x4	# 302
	flw		f2, 0(x4)	# 302
	fmul	f2, f0, f2	# 302
	fadd	f1, f1, f2	# 302
	ori		x4, x0, 4	# 302
	mul		x4, x5, x4	# 302
	add		x4, x6, x4	# 302
	fsw		f1, 0(x4)	# 302
	ori		x4, x0, 4	# 303
	mul		x4, x8, x4	# 303
	add		x4, x6, x4	# 303
	flw		f1, 0(x4)	# 303
	ori		x4, x0, 4	# 303
	mul		x4, x8, x4	# 303
	add		x4, x7, x4	# 303
	flw		f2, 0(x4)	# 303
	fmul	f2, f0, f2	# 303
	fadd	f1, f1, f2	# 303
	ori		x4, x0, 4	# 303
	mul		x4, x8, x4	# 303
	add		x4, x6, x4	# 303
	fsw		f1, 0(x4)	# 303
	ori		x4, x0, 4	# 304
	mul		x4, x9, x4	# 304
	add		x4, x6, x4	# 304
	flw		f1, 0(x4)	# 304
	ori		x4, x0, 4	# 304
	mul		x4, x9, x4	# 304
	add		x4, x7, x4	# 304
	flw		f2, 0(x4)	# 304
	fmul	f0, f0, f2	# 304
	fadd	f0, f1, f0	# 304
	ori		x4, x0, 4	# 304
	mul		x4, x9, x4	# 304
	add		x4, x6, x4	# 304
	fsw		f0, 0(x4)	# 304
beq_cont.296772:
	jal		x0, beq_cont.296758	# 1927
beq.296759:
beq_cont.296758:
	jal		x0, beq_cont.296756	# 1949
beq.296757:
	ori		x25, x0, 4	# 1952
	mul		x25, x7, x25	# 1952
	add		x25, x4, x25	# 1952
	lw		x25, 0(x25)	# 1952
	lui		x26, %hi(l.19040)	# 1952
	ori		x26, x0, %lo(l.19040)	# 1952
	flw		f2, 0(x26)	# 1952
	fdiv	f1, f1, f2	# 1952
	sw		x10, -48(x2)	# 1927
	sw		x21, -52(x2)	# 1927
	fsw		f1, -120(x2)	# 1927
	sw		x15, -64(x2)	# 1927
	sw		x11, -68(x2)	# 1927
	sw		x12, -72(x2)	# 1927
	sw		x18, -76(x2)	# 1927
	sw		x8, -80(x2)	# 1927
	sw		x20, -84(x2)	# 1927
	sw		x14, -88(x2)	# 1927
	sw		x17, -92(x2)	# 1927
	sw		x25, -128(x2)	# 1927
	sw		x13, -100(x2)	# 1927
	sw		x19, -104(x2)	# 1927
	addi	x4, x25, 0
	addi	x27, x16, 0
	sw		x1, -132(x2)	# 1927
	addi	x2, x2, -136	# 1927
	lw		x31, 0(x27)	# 1927
	jalr	x1, x31, 0	# 1927
	addi	x2, x2, 136	# 1927
	lw		x1, -132(x2)	# 1927
	addi	x5, x0, 0	# 1927
	beq		x4, x5, beq.296780	# 1927
	ori		x4, x0, 4	# 1928
	mul		x4, x5, x4	# 1928
	lw		x6, -104(x2)	# 1928
	add		x4, x6, x4	# 1928
	lw		x4, 0(x4)	# 1928
	ori		x6, x0, 4	# 1928
	mul		x4, x4, x6	# 1928
	lw		x6, -100(x2)	# 1928
	add		x4, x6, x4	# 1928
	lw		x4, 0(x4)	# 1928
	lw		x6, -128(x2)	# 639
	lw		x6, 0(x6)	# 639
	lw		x7, 4(x4)	# 353
	lw		x8, -24(x2)	# 1693
	sw		x5, -132(x2)	# 1693
	sw		x4, -136(x2)	# 1693
	beq		x7, x8, beq.296782	# 1693
	lw		x6, -40(x2)	# 1695
	beq		x7, x6, beq.296784	# 1695
	lw		x27, -84(x2)	# 1698
	sw		x1, -140(x2)	# 1698
	addi	x2, x2, -144	# 1698
	lw		x31, 0(x27)	# 1698
	jalr	x1, x31, 0	# 1698
	addi	x2, x2, 144	# 1698
	lw		x1, -140(x2)	# 1698
	jal		x0, beq_cont.296783	# 1695
beq.296784:
	lw		x7, 16(x4)	# 391
	ori		x9, x0, 4	# 396
	lw		x10, -36(x2)	# 396
	mul		x9, x10, x9	# 396
	add		x7, x7, x9	# 396
	flw		f0, 0(x7)	# 396
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x7, x0, 4	# 1663
	mul		x7, x10, x7	# 1663
	lw		x9, -88(x2)	# 1663
	add		x7, x9, x7	# 1663
	fsw		f0, 0(x7)	# 1663
	lw		x7, 16(x4)	# 401
	ori		x11, x0, 4	# 406
	mul		x11, x8, x11	# 406
	add		x7, x7, x11	# 406
	flw		f0, 0(x7)	# 406
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x7, x0, 4	# 1664
	mul		x7, x8, x7	# 1664
	add		x7, x9, x7	# 1664
	fsw		f0, 0(x7)	# 1664
	lw		x7, 16(x4)	# 411
	ori		x11, x0, 4	# 416
	mul		x11, x6, x11	# 416
	add		x7, x7, x11	# 416
	flw		f0, 0(x7)	# 416
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x7, x0, 4	# 1665
	mul		x7, x6, x7	# 1665
	add		x7, x9, x7	# 1665
	fsw		f0, 0(x7)	# 1665
beq_cont.296783:
	jal		x0, beq_cont.296781	# 1693
beq.296782:
	ori		x7, x0, 4	# 1654
	lw		x9, -36(x2)	# 1654
	mul		x7, x9, x7	# 1654
	lw		x10, -92(x2)	# 1654
	add		x7, x10, x7	# 1654
	lw		x7, 0(x7)	# 1654
	ori		x10, x0, 4	# 247
	mul		x10, x9, x10	# 247
	lw		x11, -88(x2)	# 247
	add		x10, x11, x10	# 247
	flw		f0, -16(x2)	# 247
	fsw		f0, 0(x10)	# 247
	ori		x10, x0, 4	# 248
	mul		x10, x8, x10	# 248
	add		x10, x11, x10	# 248
	fsw		f0, 0(x10)	# 248
	ori		x10, x0, 4	# 249
	lw		x12, -40(x2)	# 249
	mul		x10, x12, x10	# 249
	add		x10, x11, x10	# 249
	fsw		f0, 0(x10)	# 249
	sub		x10, x7, x8	# 1657
	sub		x7, x7, x8	# 1657
	ori		x13, x0, 4	# 1657
	mul		x7, x7, x13	# 1657
	add		x6, x6, x7	# 1657
	flw		f1, 0(x6)	# 1657
	feq		x31, f1, f0	# 1
	beq		x31, x0, feq_else.296786	# 1
	ori		x6, x0, 1	# 1
	jal		x0, feq_cont.296785	# 1
feq_else.296786:
	addi	x6, x0, 0	# 1
feq_cont.296785:
	beq		x6, x9, beq.296788	# 212
	fsub	f1, f1, f1	# 212
	fadd	f1, f1, f0	# 212
	jal		x0, beq_cont.296787	# 212
beq.296788:
	fle		x31, f1, f0	# 2
	beq		x31, x0, fle_else.296790	# 2
	addi	x6, x0, 0	# 2
	jal		x0, fle_cont.296789	# 2
fle_else.296790:
	ori		x6, x0, 1	# 2
fle_cont.296789:
	beq		x6, x9, beq.296792	# 213
	lui		x6, %hi(l.15661)	# 213
	ori		x6, x0, %lo(l.15661)	# 213
	flw		f1, 0(x6)	# 213
	jal		x0, beq_cont.296791	# 213
beq.296792:
	lui		x6, %hi(l.16024)	# 214
	ori		x6, x0, %lo(l.16024)	# 214
	flw		f1, 0(x6)	# 214
beq_cont.296791:
beq_cont.296787:
	fsub	x31, x31, x31	# 4
	fsub	f1, x31, f1	# 4
	ori		x6, x0, 4	# 1657
	mul		x6, x10, x6	# 1657
	add		x6, x11, x6	# 1657
	fsw		f1, 0(x6)	# 1657
beq_cont.296781:
	lw		x4, -136(x2)	# 1930
	lw		x5, -76(x2)	# 1930
	lw		x27, -80(x2)	# 1930
	sw		x1, -140(x2)	# 1930
	addi	x2, x2, -144	# 1930
	lw		x31, 0(x27)	# 1930
	jalr	x1, x31, 0	# 1930
	addi	x2, x2, 144	# 1930
	lw		x1, -140(x2)	# 1930
	addi	x4, x0, 0	# 1933
	addi	x5, x0, 0	# 1933
	ori		x6, x0, 4	# 1933
	mul		x5, x5, x6	# 1933
	lw		x6, -72(x2)	# 1933
	add		x5, x6, x5	# 1933
	lw		x5, 0(x5)	# 1933
	lw		x27, -68(x2)	# 1933
	sw		x1, -140(x2)	# 1933
	addi	x2, x2, -144	# 1933
	lw		x31, 0(x27)	# 1933
	jalr	x1, x31, 0	# 1933
	addi	x2, x2, 144	# 1933
	lw		x1, -140(x2)	# 1933
	lw		x5, -132(x2)	# 1933
	beq		x4, x5, beq.296794	# 1933
	jal		x0, beq_cont.296793	# 1933
beq.296794:
	ori		x4, x0, 4	# 292
	lw		x5, -36(x2)	# 292
	mul		x4, x5, x4	# 292
	lw		x6, -88(x2)	# 292
	add		x4, x6, x4	# 292
	flw		f0, 0(x4)	# 292
	ori		x4, x0, 4	# 292
	mul		x4, x5, x4	# 292
	lw		x7, -64(x2)	# 292
	add		x4, x7, x4	# 292
	flw		f1, 0(x4)	# 292
	fmul	f0, f0, f1	# 292
	ori		x4, x0, 4	# 292
	lw		x8, -24(x2)	# 292
	mul		x4, x8, x4	# 292
	add		x4, x6, x4	# 292
	flw		f1, 0(x4)	# 292
	ori		x4, x0, 4	# 292
	mul		x4, x8, x4	# 292
	add		x4, x7, x4	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	ori		x4, x0, 4	# 292
	lw		x9, -40(x2)	# 292
	mul		x4, x9, x4	# 292
	add		x4, x6, x4	# 292
	flw		f1, 0(x4)	# 292
	ori		x4, x0, 4	# 292
	mul		x4, x9, x4	# 292
	add		x4, x7, x4	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	lui		x4, %hi(l.15659)	# 2
	ori		x4, x0, %lo(l.15659)	# 2
	flw		f1, 0(x4)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.296796	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.296795	# 2
fle_else.296796:
	ori		x4, x0, 1	# 2
fle_cont.296795:
	addi	x6, x0, 0	# 1935
	beq		x4, x6, beq.296798	# 1935
	jal		x0, beq_cont.296797	# 1935
beq.296798:
	lui		x4, %hi(l.15659)	# 1935
	ori		x4, x0, %lo(l.15659)	# 1935
	flw		f0, 0(x4)	# 1935
beq_cont.296797:
	flw		f1, -120(x2)	# 1936
	fmul	f0, f1, f0	# 1936
	lw		x4, -136(x2)	# 461
	lw		x4, 28(x4)	# 461
	ori		x6, x0, 4	# 466
	mul		x6, x5, x6	# 466
	add		x4, x4, x6	# 466
	flw		f1, 0(x4)	# 466
	fmul	f0, f0, f1	# 1936
	ori		x4, x0, 4	# 302
	mul		x4, x5, x4	# 302
	lw		x6, -52(x2)	# 302
	add		x4, x6, x4	# 302
	flw		f1, 0(x4)	# 302
	ori		x4, x0, 4	# 302
	mul		x4, x5, x4	# 302
	lw		x7, -48(x2)	# 302
	add		x4, x7, x4	# 302
	flw		f2, 0(x4)	# 302
	fmul	f2, f0, f2	# 302
	fadd	f1, f1, f2	# 302
	ori		x4, x0, 4	# 302
	mul		x4, x5, x4	# 302
	add		x4, x6, x4	# 302
	fsw		f1, 0(x4)	# 302
	ori		x4, x0, 4	# 303
	mul		x4, x8, x4	# 303
	add		x4, x6, x4	# 303
	flw		f1, 0(x4)	# 303
	ori		x4, x0, 4	# 303
	mul		x4, x8, x4	# 303
	add		x4, x7, x4	# 303
	flw		f2, 0(x4)	# 303
	fmul	f2, f0, f2	# 303
	fadd	f1, f1, f2	# 303
	ori		x4, x0, 4	# 303
	mul		x4, x8, x4	# 303
	add		x4, x6, x4	# 303
	fsw		f1, 0(x4)	# 303
	ori		x4, x0, 4	# 304
	mul		x4, x9, x4	# 304
	add		x4, x6, x4	# 304
	flw		f1, 0(x4)	# 304
	ori		x4, x0, 4	# 304
	mul		x4, x9, x4	# 304
	add		x4, x7, x4	# 304
	flw		f2, 0(x4)	# 304
	fmul	f0, f0, f2	# 304
	fadd	f0, f1, f0	# 304
	ori		x4, x0, 4	# 304
	mul		x4, x9, x4	# 304
	add		x4, x6, x4	# 304
	fsw		f0, 0(x4)	# 304
beq_cont.296793:
	jal		x0, beq_cont.296779	# 1927
beq.296780:
beq_cont.296779:
beq_cont.296756:
	lw		x4, -40(x2)	# 1954
	lw		x5, -44(x2)	# 1954
	sub		x5, x5, x4	# 1954
	lw		x6, -36(x2)	# 1944
	ble		x6, x5, ble.296799	# 1944
	jalr	x0, x1, 0	# 1955
ble.296799:
	ori		x7, x0, 4	# 1945
	mul		x7, x5, x7	# 1945
	lw		x8, -32(x2)	# 1945
	add		x7, x8, x7	# 1945
	lw		x7, 0(x7)	# 1945
	lw		x7, 0(x7)	# 639
	ori		x9, x0, 4	# 292
	mul		x9, x6, x9	# 292
	add		x9, x7, x9	# 292
	flw		f0, 0(x9)	# 292
	ori		x9, x0, 4	# 292
	mul		x9, x6, x9	# 292
	lw		x10, -28(x2)	# 292
	add		x9, x10, x9	# 292
	flw		f1, 0(x9)	# 292
	fmul	f0, f0, f1	# 292
	ori		x9, x0, 4	# 292
	lw		x11, -24(x2)	# 292
	mul		x9, x11, x9	# 292
	add		x9, x7, x9	# 292
	flw		f1, 0(x9)	# 292
	ori		x9, x0, 4	# 292
	mul		x9, x11, x9	# 292
	add		x9, x10, x9	# 292
	flw		f2, 0(x9)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	ori		x9, x0, 4	# 292
	mul		x9, x4, x9	# 292
	add		x7, x7, x9	# 292
	flw		f1, 0(x7)	# 292
	ori		x7, x0, 4	# 292
	mul		x7, x4, x7	# 292
	add		x7, x10, x7	# 292
	flw		f2, 0(x7)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	flw		f1, -16(x2)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.296802	# 3
	addi	x7, x0, 0	# 3
	jal		x0, fle_cont.296801	# 3
fle_else.296802:
	ori		x7, x0, 1	# 3
fle_cont.296801:
	sw		x5, -140(x2)	# 1949
	beq		x7, x6, beq.296804	# 1949
	addi	x6, x5, 1	# 1950
	ori		x7, x0, 4	# 1950
	mul		x6, x6, x7	# 1950
	add		x6, x8, x6	# 1950
	lw		x6, 0(x6)	# 1950
	lui		x7, %hi(l.18938)	# 1950
	ori		x7, x0, %lo(l.18938)	# 1950
	flw		f1, 0(x7)	# 1950
	fdiv	f0, f0, f1	# 1950
	lw		x27, -8(x2)	# 1950
	addi	x4, x6, 0
	sw		x1, -144(x2)	# 1950
	addi	x2, x2, -148	# 1950
	lw		x31, 0(x27)	# 1950
	jalr	x1, x31, 0	# 1950
	addi	x2, x2, 148	# 1950
	lw		x1, -144(x2)	# 1950
	jal		x0, beq_cont.296803	# 1949
beq.296804:
	ori		x6, x0, 4	# 1952
	mul		x6, x5, x6	# 1952
	add		x6, x8, x6	# 1952
	lw		x6, 0(x6)	# 1952
	lui		x7, %hi(l.19040)	# 1952
	ori		x7, x0, %lo(l.19040)	# 1952
	flw		f1, 0(x7)	# 1952
	fdiv	f0, f0, f1	# 1952
	lw		x27, -8(x2)	# 1952
	addi	x4, x6, 0
	sw		x1, -144(x2)	# 1952
	addi	x2, x2, -148	# 1952
	lw		x31, 0(x27)	# 1952
	jalr	x1, x31, 0	# 1952
	addi	x2, x2, 148	# 1952
	lw		x1, -144(x2)	# 1952
beq_cont.296803:
	lw		x4, -40(x2)	# 1954
	lw		x5, -140(x2)	# 1954
	sub		x7, x5, x4	# 1954
	lw		x4, -32(x2)	# 1954
	lw		x5, -28(x2)	# 1954
	lw		x6, 0(x2)	# 1954
	lw		x27, -4(x2)	# 1954
	lw		x31, 0(x27)	# 1954
	jalr	x0, x31, 0	# 1954
trace_diffuse_ray_80percent.2889:
	lw		x7, 36(x27)	# 1971
	lw		x8, 32(x27)	# 1971
	lw		x9, 28(x27)	# 1971
	lw		x10, 24(x27)	# 1971
	lw		x11, 20(x27)	# 1971
	lw		x12, 16(x27)	# 1971
	lw		x13, 12(x27)	# 1971
	lw		x14, 8(x27)	# 1971
	lw		x15, 4(x27)	# 1971
	sw		x13, 0(x2)	# 1971
	sw		x12, -4(x2)	# 1971
	sw		x5, -8(x2)	# 1971
	sw		x10, -12(x2)	# 1971
	sw		x8, -16(x2)	# 1971
	sw		x9, -20(x2)	# 1971
	sw		x14, -24(x2)	# 1971
	sw		x7, -28(x2)	# 1971
	sw		x6, -32(x2)	# 1971
	sw		x11, -36(x2)	# 1971
	sw		x15, -40(x2)	# 1971
	sw		x4, -44(x2)	# 1971
	beq		x4, x14, beq.296806	# 1971
	addi	x16, x0, 0	# 1972
	ori		x17, x0, 4	# 1972
	mul		x16, x16, x17	# 1972
	add		x16, x11, x16	# 1972
	lw		x16, 0(x16)	# 1972
	addi	x17, x0, 0	# 259
	addi	x18, x0, 0	# 259
	ori		x19, x0, 4	# 259
	mul		x18, x18, x19	# 259
	add		x18, x6, x18	# 259
	flw		f0, 0(x18)	# 259
	ori		x18, x0, 4	# 259
	mul		x17, x17, x18	# 259
	add		x17, x7, x17	# 259
	fsw		f0, 0(x17)	# 259
	ori		x17, x0, 1	# 260
	ori		x18, x0, 1	# 260
	ori		x19, x0, 4	# 260
	mul		x18, x18, x19	# 260
	add		x18, x6, x18	# 260
	flw		f0, 0(x18)	# 260
	ori		x18, x0, 4	# 260
	mul		x17, x17, x18	# 260
	add		x17, x7, x17	# 260
	fsw		f0, 0(x17)	# 260
	ori		x17, x0, 2	# 261
	ori		x18, x0, 4	# 261
	mul		x18, x17, x18	# 261
	add		x18, x6, x18	# 261
	flw		f0, 0(x18)	# 261
	ori		x18, x0, 4	# 261
	mul		x17, x17, x18	# 261
	add		x17, x7, x17	# 261
	fsw		f0, 0(x17)	# 261
	ori		x17, x0, 4	# 1315
	mul		x17, x14, x17	# 1315
	add		x17, x9, x17	# 1315
	lw		x17, 0(x17)	# 1315
	sub		x17, x17, x15	# 1315
	sw		x16, -48(x2)	# 1315
	addi	x5, x17, 0
	addi	x4, x6, 0
	addi	x27, x8, 0
	sw		x1, -52(x2)	# 1315
	addi	x2, x2, -56	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 56	# 1315
	lw		x1, -52(x2)	# 1315
	ori		x7, x0, 118	# 1964
	lw		x4, -48(x2)	# 1964
	lw		x5, -8(x2)	# 1964
	lw		x6, -32(x2)	# 1964
	lw		x27, -12(x2)	# 1964
	sw		x1, -52(x2)	# 1964
	addi	x2, x2, -56	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 56	# 1964
	lw		x1, -52(x2)	# 1964
	jal		x0, beq_cont.296805	# 1971
beq.296806:
beq_cont.296805:
	lw		x4, -40(x2)	# 1975
	lw		x5, -44(x2)	# 1975
	beq		x5, x4, beq.296808	# 1975
	ori		x6, x0, 1	# 1976
	ori		x7, x0, 4	# 1976
	mul		x6, x6, x7	# 1976
	lw		x7, -36(x2)	# 1976
	add		x6, x7, x6	# 1976
	lw		x6, 0(x6)	# 1976
	addi	x8, x0, 0	# 259
	addi	x9, x0, 0	# 259
	ori		x10, x0, 4	# 259
	mul		x9, x9, x10	# 259
	lw		x10, -32(x2)	# 259
	add		x9, x10, x9	# 259
	flw		f0, 0(x9)	# 259
	ori		x9, x0, 4	# 259
	mul		x8, x8, x9	# 259
	lw		x9, -28(x2)	# 259
	add		x8, x9, x8	# 259
	fsw		f0, 0(x8)	# 259
	ori		x8, x0, 1	# 260
	ori		x11, x0, 1	# 260
	ori		x12, x0, 4	# 260
	mul		x11, x11, x12	# 260
	add		x11, x10, x11	# 260
	flw		f0, 0(x11)	# 260
	ori		x11, x0, 4	# 260
	mul		x8, x8, x11	# 260
	add		x8, x9, x8	# 260
	fsw		f0, 0(x8)	# 260
	ori		x8, x0, 2	# 261
	ori		x11, x0, 4	# 261
	mul		x11, x8, x11	# 261
	add		x11, x10, x11	# 261
	flw		f0, 0(x11)	# 261
	ori		x11, x0, 4	# 261
	mul		x8, x8, x11	# 261
	add		x8, x9, x8	# 261
	fsw		f0, 0(x8)	# 261
	ori		x8, x0, 4	# 1315
	lw		x11, -24(x2)	# 1315
	mul		x8, x11, x8	# 1315
	lw		x12, -20(x2)	# 1315
	add		x8, x12, x8	# 1315
	lw		x8, 0(x8)	# 1315
	sub		x8, x8, x4	# 1315
	lw		x27, -16(x2)	# 1315
	sw		x6, -52(x2)	# 1315
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -56(x2)	# 1315
	addi	x2, x2, -60	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 60	# 1315
	lw		x1, -56(x2)	# 1315
	ori		x7, x0, 118	# 1964
	lw		x4, -52(x2)	# 1964
	lw		x5, -8(x2)	# 1964
	lw		x6, -32(x2)	# 1964
	lw		x27, -12(x2)	# 1964
	sw		x1, -56(x2)	# 1964
	addi	x2, x2, -60	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 60	# 1964
	lw		x1, -56(x2)	# 1964
	jal		x0, beq_cont.296807	# 1975
beq.296808:
beq_cont.296807:
	lw		x4, -4(x2)	# 1979
	lw		x5, -44(x2)	# 1979
	beq		x5, x4, beq.296810	# 1979
	ori		x6, x0, 2	# 1980
	ori		x7, x0, 4	# 1980
	mul		x6, x6, x7	# 1980
	lw		x7, -36(x2)	# 1980
	add		x6, x7, x6	# 1980
	lw		x6, 0(x6)	# 1980
	addi	x8, x0, 0	# 259
	addi	x9, x0, 0	# 259
	ori		x10, x0, 4	# 259
	mul		x9, x9, x10	# 259
	lw		x10, -32(x2)	# 259
	add		x9, x10, x9	# 259
	flw		f0, 0(x9)	# 259
	ori		x9, x0, 4	# 259
	mul		x8, x8, x9	# 259
	lw		x9, -28(x2)	# 259
	add		x8, x9, x8	# 259
	fsw		f0, 0(x8)	# 259
	ori		x8, x0, 1	# 260
	ori		x11, x0, 1	# 260
	ori		x12, x0, 4	# 260
	mul		x11, x11, x12	# 260
	add		x11, x10, x11	# 260
	flw		f0, 0(x11)	# 260
	ori		x11, x0, 4	# 260
	mul		x8, x8, x11	# 260
	add		x8, x9, x8	# 260
	fsw		f0, 0(x8)	# 260
	ori		x8, x0, 2	# 261
	ori		x11, x0, 4	# 261
	mul		x11, x8, x11	# 261
	add		x11, x10, x11	# 261
	flw		f0, 0(x11)	# 261
	ori		x11, x0, 4	# 261
	mul		x8, x8, x11	# 261
	add		x8, x9, x8	# 261
	fsw		f0, 0(x8)	# 261
	ori		x8, x0, 4	# 1315
	lw		x11, -24(x2)	# 1315
	mul		x8, x11, x8	# 1315
	lw		x12, -20(x2)	# 1315
	add		x8, x12, x8	# 1315
	lw		x8, 0(x8)	# 1315
	lw		x13, -40(x2)	# 1315
	sub		x8, x8, x13	# 1315
	lw		x27, -16(x2)	# 1315
	sw		x6, -56(x2)	# 1315
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -60(x2)	# 1315
	addi	x2, x2, -64	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 64	# 1315
	lw		x1, -60(x2)	# 1315
	ori		x7, x0, 118	# 1964
	lw		x4, -56(x2)	# 1964
	lw		x5, -8(x2)	# 1964
	lw		x6, -32(x2)	# 1964
	lw		x27, -12(x2)	# 1964
	sw		x1, -60(x2)	# 1964
	addi	x2, x2, -64	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 64	# 1964
	lw		x1, -60(x2)	# 1964
	jal		x0, beq_cont.296809	# 1979
beq.296810:
beq_cont.296809:
	lw		x4, 0(x2)	# 1983
	lw		x5, -44(x2)	# 1983
	beq		x5, x4, beq.296812	# 1983
	ori		x4, x0, 3	# 1984
	ori		x6, x0, 4	# 1984
	mul		x4, x4, x6	# 1984
	lw		x6, -36(x2)	# 1984
	add		x4, x6, x4	# 1984
	lw		x4, 0(x4)	# 1984
	addi	x7, x0, 0	# 259
	addi	x8, x0, 0	# 259
	ori		x9, x0, 4	# 259
	mul		x8, x8, x9	# 259
	lw		x9, -32(x2)	# 259
	add		x8, x9, x8	# 259
	flw		f0, 0(x8)	# 259
	ori		x8, x0, 4	# 259
	mul		x7, x7, x8	# 259
	lw		x8, -28(x2)	# 259
	add		x7, x8, x7	# 259
	fsw		f0, 0(x7)	# 259
	ori		x7, x0, 1	# 260
	ori		x10, x0, 1	# 260
	ori		x11, x0, 4	# 260
	mul		x10, x10, x11	# 260
	add		x10, x9, x10	# 260
	flw		f0, 0(x10)	# 260
	ori		x10, x0, 4	# 260
	mul		x7, x7, x10	# 260
	add		x7, x8, x7	# 260
	fsw		f0, 0(x7)	# 260
	ori		x7, x0, 2	# 261
	ori		x10, x0, 4	# 261
	mul		x10, x7, x10	# 261
	add		x10, x9, x10	# 261
	flw		f0, 0(x10)	# 261
	ori		x10, x0, 4	# 261
	mul		x7, x7, x10	# 261
	add		x7, x8, x7	# 261
	fsw		f0, 0(x7)	# 261
	ori		x7, x0, 4	# 1315
	lw		x10, -24(x2)	# 1315
	mul		x7, x10, x7	# 1315
	lw		x11, -20(x2)	# 1315
	add		x7, x11, x7	# 1315
	lw		x7, 0(x7)	# 1315
	lw		x12, -40(x2)	# 1315
	sub		x7, x7, x12	# 1315
	lw		x27, -16(x2)	# 1315
	sw		x4, -60(x2)	# 1315
	addi	x5, x7, 0
	addi	x4, x9, 0
	sw		x1, -64(x2)	# 1315
	addi	x2, x2, -68	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 68	# 1315
	lw		x1, -64(x2)	# 1315
	ori		x7, x0, 118	# 1964
	lw		x4, -60(x2)	# 1964
	lw		x5, -8(x2)	# 1964
	lw		x6, -32(x2)	# 1964
	lw		x27, -12(x2)	# 1964
	sw		x1, -64(x2)	# 1964
	addi	x2, x2, -68	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 68	# 1964
	lw		x1, -64(x2)	# 1964
	jal		x0, beq_cont.296811	# 1983
beq.296812:
beq_cont.296811:
	ori		x4, x0, 4	# 1987
	lw		x5, -44(x2)	# 1987
	beq		x5, x4, beq.296813	# 1987
	ori		x5, x0, 4	# 1988
	mul		x4, x4, x5	# 1988
	lw		x5, -36(x2)	# 1988
	add		x4, x5, x4	# 1988
	lw		x4, 0(x4)	# 1988
	ori		x5, x0, 4	# 259
	lw		x6, -24(x2)	# 259
	mul		x5, x6, x5	# 259
	lw		x7, -32(x2)	# 259
	add		x5, x7, x5	# 259
	flw		f0, 0(x5)	# 259
	ori		x5, x0, 4	# 259
	mul		x5, x6, x5	# 259
	lw		x8, -28(x2)	# 259
	add		x5, x8, x5	# 259
	fsw		f0, 0(x5)	# 259
	ori		x5, x0, 4	# 260
	lw		x9, -40(x2)	# 260
	mul		x5, x9, x5	# 260
	add		x5, x7, x5	# 260
	flw		f0, 0(x5)	# 260
	ori		x5, x0, 4	# 260
	mul		x5, x9, x5	# 260
	add		x5, x8, x5	# 260
	fsw		f0, 0(x5)	# 260
	ori		x5, x0, 4	# 261
	lw		x10, -4(x2)	# 261
	mul		x5, x10, x5	# 261
	add		x5, x7, x5	# 261
	flw		f0, 0(x5)	# 261
	ori		x5, x0, 4	# 261
	mul		x5, x10, x5	# 261
	add		x5, x8, x5	# 261
	fsw		f0, 0(x5)	# 261
	ori		x5, x0, 4	# 1315
	mul		x5, x6, x5	# 1315
	lw		x6, -20(x2)	# 1315
	add		x5, x6, x5	# 1315
	lw		x5, 0(x5)	# 1315
	sub		x5, x5, x9	# 1315
	lw		x27, -16(x2)	# 1315
	sw		x4, -64(x2)	# 1315
	addi	x4, x7, 0
	sw		x1, -68(x2)	# 1315
	addi	x2, x2, -72	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 72	# 1315
	lw		x1, -68(x2)	# 1315
	ori		x7, x0, 118	# 1964
	lw		x4, -64(x2)	# 1964
	lw		x5, -8(x2)	# 1964
	lw		x6, -32(x2)	# 1964
	lw		x27, -12(x2)	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x0, x31, 0	# 1964
beq.296813:
	jalr	x0, x1, 0	# 1989
calc_diffuse_using_1point.2893:
	lw		x6, 48(x27)	# 598
	lw		x7, 44(x27)	# 598
	lw		x8, 40(x27)	# 598
	lw		x9, 36(x27)	# 598
	lw		x10, 32(x27)	# 598
	lw		x11, 28(x27)	# 598
	lw		x12, 24(x27)	# 598
	lw		x13, 20(x27)	# 598
	lw		x14, 16(x27)	# 598
	lw		x15, 12(x27)	# 598
	lw		x16, 8(x27)	# 598
	lw		x17, 4(x27)	# 598
	lw		x18, 20(x4)	# 598
	lw		x19, 28(x4)	# 628
	lw		x20, 4(x4)	# 569
	lw		x21, 16(x4)	# 591
	ori		x22, x0, 4	# 2002
	mul		x22, x5, x22	# 2002
	add		x18, x18, x22	# 2002
	lw		x18, 0(x18)	# 2002
	ori		x22, x0, 4	# 259
	mul		x22, x16, x22	# 259
	add		x22, x18, x22	# 259
	flw		f0, 0(x22)	# 259
	ori		x22, x0, 4	# 259
	mul		x22, x16, x22	# 259
	add		x22, x13, x22	# 259
	fsw		f0, 0(x22)	# 259
	ori		x22, x0, 4	# 260
	mul		x22, x17, x22	# 260
	add		x22, x18, x22	# 260
	flw		f0, 0(x22)	# 260
	ori		x22, x0, 4	# 260
	mul		x22, x17, x22	# 260
	add		x22, x13, x22	# 260
	fsw		f0, 0(x22)	# 260
	ori		x22, x0, 4	# 261
	mul		x22, x14, x22	# 261
	add		x18, x18, x22	# 261
	flw		f0, 0(x18)	# 261
	ori		x18, x0, 4	# 261
	mul		x18, x14, x18	# 261
	add		x18, x13, x18	# 261
	fsw		f0, 0(x18)	# 261
	lw		x4, 24(x4)	# 614
	ori		x18, x0, 4	# 616
	mul		x18, x16, x18	# 616
	add		x4, x4, x18	# 616
	lw		x4, 0(x4)	# 616
	ori		x18, x0, 4	# 2005
	mul		x18, x5, x18	# 2005
	add		x18, x19, x18	# 2005
	lw		x18, 0(x18)	# 2005
	ori		x19, x0, 4	# 2006
	mul		x19, x5, x19	# 2006
	add		x19, x20, x19	# 2006
	lw		x19, 0(x19)	# 2006
	sw		x13, 0(x2)	# 1971
	sw		x9, -4(x2)	# 1971
	sw		x21, -8(x2)	# 1971
	sw		x5, -12(x2)	# 1971
	sw		x15, -16(x2)	# 1971
	sw		x11, -20(x2)	# 1971
	sw		x6, -24(x2)	# 1971
	sw		x18, -28(x2)	# 1971
	sw		x8, -32(x2)	# 1971
	sw		x10, -36(x2)	# 1971
	sw		x14, -40(x2)	# 1971
	sw		x7, -44(x2)	# 1971
	sw		x19, -48(x2)	# 1971
	sw		x16, -52(x2)	# 1971
	sw		x12, -56(x2)	# 1971
	sw		x17, -60(x2)	# 1971
	sw		x4, -64(x2)	# 1971
	beq		x4, x16, beq.296816	# 1971
	addi	x20, x0, 0	# 1972
	ori		x22, x0, 4	# 1972
	mul		x20, x20, x22	# 1972
	add		x20, x12, x20	# 1972
	lw		x20, 0(x20)	# 1972
	ori		x22, x0, 4	# 259
	mul		x22, x16, x22	# 259
	add		x22, x19, x22	# 259
	flw		f0, 0(x22)	# 259
	ori		x22, x0, 4	# 259
	mul		x22, x16, x22	# 259
	add		x22, x7, x22	# 259
	fsw		f0, 0(x22)	# 259
	ori		x22, x0, 4	# 260
	mul		x22, x17, x22	# 260
	add		x22, x19, x22	# 260
	flw		f0, 0(x22)	# 260
	ori		x22, x0, 4	# 260
	mul		x22, x17, x22	# 260
	add		x22, x7, x22	# 260
	fsw		f0, 0(x22)	# 260
	ori		x22, x0, 4	# 261
	mul		x22, x14, x22	# 261
	add		x22, x19, x22	# 261
	flw		f0, 0(x22)	# 261
	ori		x22, x0, 4	# 261
	mul		x22, x14, x22	# 261
	add		x22, x7, x22	# 261
	fsw		f0, 0(x22)	# 261
	addi	x22, x0, 0	# 1315
	ori		x23, x0, 4	# 1315
	mul		x22, x22, x23	# 1315
	add		x22, x10, x22	# 1315
	lw		x22, 0(x22)	# 1315
	ori		x23, x0, 1	# 1315
	sub		x22, x22, x23	# 1315
	sw		x20, -68(x2)	# 1315
	addi	x5, x22, 0
	addi	x4, x19, 0
	addi	x27, x8, 0
	sw		x1, -72(x2)	# 1315
	addi	x2, x2, -76	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 76	# 1315
	lw		x1, -72(x2)	# 1315
	ori		x4, x0, 118	# 1964
	ori		x5, x0, 4	# 1945
	mul		x5, x4, x5	# 1945
	lw		x6, -68(x2)	# 1945
	add		x5, x6, x5	# 1945
	lw		x5, 0(x5)	# 1945
	lw		x5, 0(x5)	# 639
	ori		x7, x0, 4	# 292
	lw		x8, -52(x2)	# 292
	mul		x7, x8, x7	# 292
	add		x7, x5, x7	# 292
	flw		f0, 0(x7)	# 292
	ori		x7, x0, 4	# 292
	mul		x7, x8, x7	# 292
	lw		x9, -28(x2)	# 292
	add		x7, x9, x7	# 292
	flw		f1, 0(x7)	# 292
	fmul	f0, f0, f1	# 292
	ori		x7, x0, 4	# 292
	lw		x10, -60(x2)	# 292
	mul		x7, x10, x7	# 292
	add		x7, x5, x7	# 292
	flw		f1, 0(x7)	# 292
	ori		x7, x0, 4	# 292
	mul		x7, x10, x7	# 292
	add		x7, x9, x7	# 292
	flw		f2, 0(x7)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	ori		x7, x0, 4	# 292
	lw		x11, -40(x2)	# 292
	mul		x7, x11, x7	# 292
	add		x5, x5, x7	# 292
	flw		f1, 0(x5)	# 292
	ori		x5, x0, 4	# 292
	mul		x5, x11, x5	# 292
	add		x5, x9, x5	# 292
	flw		f2, 0(x5)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	lui		x5, %hi(l.15659)	# 3
	ori		x5, x0, %lo(l.15659)	# 3
	flw		f1, 0(x5)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.296818	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.296817	# 3
fle_else.296818:
	ori		x5, x0, 1	# 3
fle_cont.296817:
	beq		x5, x8, beq.296820	# 1949
	ori		x4, x0, 119	# 1950
	ori		x5, x0, 4	# 1950
	mul		x4, x4, x5	# 1950
	add		x4, x6, x4	# 1950
	lw		x4, 0(x4)	# 1950
	lui		x5, %hi(l.18938)	# 1950
	ori		x5, x0, %lo(l.18938)	# 1950
	flw		f1, 0(x5)	# 1950
	fdiv	f0, f0, f1	# 1950
	lw		x27, -24(x2)	# 1950
	sw		x1, -72(x2)	# 1950
	addi	x2, x2, -76	# 1950
	lw		x31, 0(x27)	# 1950
	jalr	x1, x31, 0	# 1950
	addi	x2, x2, 76	# 1950
	lw		x1, -72(x2)	# 1950
	jal		x0, beq_cont.296819	# 1949
beq.296820:
	ori		x5, x0, 4	# 1952
	mul		x4, x4, x5	# 1952
	add		x4, x6, x4	# 1952
	lw		x4, 0(x4)	# 1952
	lui		x5, %hi(l.19040)	# 1952
	ori		x5, x0, %lo(l.19040)	# 1952
	flw		f1, 0(x5)	# 1952
	fdiv	f0, f0, f1	# 1952
	lw		x27, -24(x2)	# 1952
	sw		x1, -72(x2)	# 1952
	addi	x2, x2, -76	# 1952
	lw		x31, 0(x27)	# 1952
	jalr	x1, x31, 0	# 1952
	addi	x2, x2, 76	# 1952
	lw		x1, -72(x2)	# 1952
beq_cont.296819:
	ori		x7, x0, 116	# 1954
	lw		x4, -68(x2)	# 1954
	lw		x5, -28(x2)	# 1954
	lw		x6, -48(x2)	# 1954
	lw		x27, -20(x2)	# 1954
	sw		x1, -72(x2)	# 1954
	addi	x2, x2, -76	# 1954
	lw		x31, 0(x27)	# 1954
	jalr	x1, x31, 0	# 1954
	addi	x2, x2, 76	# 1954
	lw		x1, -72(x2)	# 1954
	jal		x0, beq_cont.296815	# 1971
beq.296816:
beq_cont.296815:
	lw		x4, -60(x2)	# 1975
	lw		x5, -64(x2)	# 1975
	beq		x5, x4, beq.296822	# 1975
	ori		x6, x0, 1	# 1976
	ori		x7, x0, 4	# 1976
	mul		x6, x6, x7	# 1976
	lw		x7, -56(x2)	# 1976
	add		x6, x7, x6	# 1976
	lw		x6, 0(x6)	# 1976
	ori		x8, x0, 4	# 259
	lw		x9, -52(x2)	# 259
	mul		x8, x9, x8	# 259
	lw		x10, -48(x2)	# 259
	add		x8, x10, x8	# 259
	flw		f0, 0(x8)	# 259
	ori		x8, x0, 4	# 259
	mul		x8, x9, x8	# 259
	lw		x11, -44(x2)	# 259
	add		x8, x11, x8	# 259
	fsw		f0, 0(x8)	# 259
	ori		x8, x0, 4	# 260
	mul		x8, x4, x8	# 260
	add		x8, x10, x8	# 260
	flw		f0, 0(x8)	# 260
	ori		x8, x0, 4	# 260
	mul		x8, x4, x8	# 260
	add		x8, x11, x8	# 260
	fsw		f0, 0(x8)	# 260
	ori		x8, x0, 4	# 261
	lw		x12, -40(x2)	# 261
	mul		x8, x12, x8	# 261
	add		x8, x10, x8	# 261
	flw		f0, 0(x8)	# 261
	ori		x8, x0, 4	# 261
	mul		x8, x12, x8	# 261
	add		x8, x11, x8	# 261
	fsw		f0, 0(x8)	# 261
	addi	x8, x0, 0	# 1315
	ori		x13, x0, 4	# 1315
	mul		x8, x8, x13	# 1315
	lw		x13, -36(x2)	# 1315
	add		x8, x13, x8	# 1315
	lw		x8, 0(x8)	# 1315
	ori		x14, x0, 1	# 1315
	sub		x8, x8, x14	# 1315
	lw		x27, -32(x2)	# 1315
	sw		x6, -72(x2)	# 1315
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -76(x2)	# 1315
	addi	x2, x2, -80	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 80	# 1315
	lw		x1, -76(x2)	# 1315
	ori		x4, x0, 118	# 1964
	ori		x5, x0, 4	# 1945
	mul		x5, x4, x5	# 1945
	lw		x6, -72(x2)	# 1945
	add		x5, x6, x5	# 1945
	lw		x5, 0(x5)	# 1945
	lw		x5, 0(x5)	# 639
	ori		x7, x0, 4	# 292
	lw		x8, -52(x2)	# 292
	mul		x7, x8, x7	# 292
	add		x7, x5, x7	# 292
	flw		f0, 0(x7)	# 292
	ori		x7, x0, 4	# 292
	mul		x7, x8, x7	# 292
	lw		x9, -28(x2)	# 292
	add		x7, x9, x7	# 292
	flw		f1, 0(x7)	# 292
	fmul	f0, f0, f1	# 292
	ori		x7, x0, 4	# 292
	lw		x10, -60(x2)	# 292
	mul		x7, x10, x7	# 292
	add		x7, x5, x7	# 292
	flw		f1, 0(x7)	# 292
	ori		x7, x0, 4	# 292
	mul		x7, x10, x7	# 292
	add		x7, x9, x7	# 292
	flw		f2, 0(x7)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	ori		x7, x0, 4	# 292
	lw		x11, -40(x2)	# 292
	mul		x7, x11, x7	# 292
	add		x5, x5, x7	# 292
	flw		f1, 0(x5)	# 292
	ori		x5, x0, 4	# 292
	mul		x5, x11, x5	# 292
	add		x5, x9, x5	# 292
	flw		f2, 0(x5)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	lui		x5, %hi(l.15659)	# 3
	ori		x5, x0, %lo(l.15659)	# 3
	flw		f1, 0(x5)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.296824	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.296823	# 3
fle_else.296824:
	ori		x5, x0, 1	# 3
fle_cont.296823:
	beq		x5, x8, beq.296826	# 1949
	ori		x4, x0, 119	# 1950
	ori		x5, x0, 4	# 1950
	mul		x4, x4, x5	# 1950
	add		x4, x6, x4	# 1950
	lw		x4, 0(x4)	# 1950
	lui		x5, %hi(l.18938)	# 1950
	ori		x5, x0, %lo(l.18938)	# 1950
	flw		f1, 0(x5)	# 1950
	fdiv	f0, f0, f1	# 1950
	lw		x27, -24(x2)	# 1950
	sw		x1, -76(x2)	# 1950
	addi	x2, x2, -80	# 1950
	lw		x31, 0(x27)	# 1950
	jalr	x1, x31, 0	# 1950
	addi	x2, x2, 80	# 1950
	lw		x1, -76(x2)	# 1950
	jal		x0, beq_cont.296825	# 1949
beq.296826:
	ori		x5, x0, 4	# 1952
	mul		x4, x4, x5	# 1952
	add		x4, x6, x4	# 1952
	lw		x4, 0(x4)	# 1952
	lui		x5, %hi(l.19040)	# 1952
	ori		x5, x0, %lo(l.19040)	# 1952
	flw		f1, 0(x5)	# 1952
	fdiv	f0, f0, f1	# 1952
	lw		x27, -24(x2)	# 1952
	sw		x1, -76(x2)	# 1952
	addi	x2, x2, -80	# 1952
	lw		x31, 0(x27)	# 1952
	jalr	x1, x31, 0	# 1952
	addi	x2, x2, 80	# 1952
	lw		x1, -76(x2)	# 1952
beq_cont.296825:
	ori		x7, x0, 116	# 1954
	lw		x4, -72(x2)	# 1954
	lw		x5, -28(x2)	# 1954
	lw		x6, -48(x2)	# 1954
	lw		x27, -20(x2)	# 1954
	sw		x1, -76(x2)	# 1954
	addi	x2, x2, -80	# 1954
	lw		x31, 0(x27)	# 1954
	jalr	x1, x31, 0	# 1954
	addi	x2, x2, 80	# 1954
	lw		x1, -76(x2)	# 1954
	jal		x0, beq_cont.296821	# 1975
beq.296822:
beq_cont.296821:
	lw		x4, -40(x2)	# 1979
	lw		x5, -64(x2)	# 1979
	beq		x5, x4, beq.296828	# 1979
	ori		x6, x0, 2	# 1980
	ori		x7, x0, 4	# 1980
	mul		x6, x6, x7	# 1980
	lw		x7, -56(x2)	# 1980
	add		x6, x7, x6	# 1980
	lw		x6, 0(x6)	# 1980
	ori		x8, x0, 4	# 259
	lw		x9, -52(x2)	# 259
	mul		x8, x9, x8	# 259
	lw		x10, -48(x2)	# 259
	add		x8, x10, x8	# 259
	flw		f0, 0(x8)	# 259
	ori		x8, x0, 4	# 259
	mul		x8, x9, x8	# 259
	lw		x11, -44(x2)	# 259
	add		x8, x11, x8	# 259
	fsw		f0, 0(x8)	# 259
	ori		x8, x0, 4	# 260
	lw		x12, -60(x2)	# 260
	mul		x8, x12, x8	# 260
	add		x8, x10, x8	# 260
	flw		f0, 0(x8)	# 260
	ori		x8, x0, 4	# 260
	mul		x8, x12, x8	# 260
	add		x8, x11, x8	# 260
	fsw		f0, 0(x8)	# 260
	ori		x8, x0, 4	# 261
	mul		x8, x4, x8	# 261
	add		x8, x10, x8	# 261
	flw		f0, 0(x8)	# 261
	ori		x8, x0, 4	# 261
	mul		x8, x4, x8	# 261
	add		x8, x11, x8	# 261
	fsw		f0, 0(x8)	# 261
	addi	x8, x0, 0	# 1315
	ori		x13, x0, 4	# 1315
	mul		x8, x8, x13	# 1315
	lw		x13, -36(x2)	# 1315
	add		x8, x13, x8	# 1315
	lw		x8, 0(x8)	# 1315
	ori		x14, x0, 1	# 1315
	sub		x8, x8, x14	# 1315
	lw		x27, -32(x2)	# 1315
	sw		x6, -76(x2)	# 1315
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -80(x2)	# 1315
	addi	x2, x2, -84	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 84	# 1315
	lw		x1, -80(x2)	# 1315
	ori		x4, x0, 118	# 1964
	ori		x5, x0, 4	# 1945
	mul		x5, x4, x5	# 1945
	lw		x6, -76(x2)	# 1945
	add		x5, x6, x5	# 1945
	lw		x5, 0(x5)	# 1945
	lw		x5, 0(x5)	# 639
	ori		x7, x0, 4	# 292
	lw		x8, -52(x2)	# 292
	mul		x7, x8, x7	# 292
	add		x7, x5, x7	# 292
	flw		f0, 0(x7)	# 292
	ori		x7, x0, 4	# 292
	mul		x7, x8, x7	# 292
	lw		x9, -28(x2)	# 292
	add		x7, x9, x7	# 292
	flw		f1, 0(x7)	# 292
	fmul	f0, f0, f1	# 292
	ori		x7, x0, 4	# 292
	lw		x10, -60(x2)	# 292
	mul		x7, x10, x7	# 292
	add		x7, x5, x7	# 292
	flw		f1, 0(x7)	# 292
	ori		x7, x0, 4	# 292
	mul		x7, x10, x7	# 292
	add		x7, x9, x7	# 292
	flw		f2, 0(x7)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	ori		x7, x0, 4	# 292
	lw		x11, -40(x2)	# 292
	mul		x7, x11, x7	# 292
	add		x5, x5, x7	# 292
	flw		f1, 0(x5)	# 292
	ori		x5, x0, 4	# 292
	mul		x5, x11, x5	# 292
	add		x5, x9, x5	# 292
	flw		f2, 0(x5)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	lui		x5, %hi(l.15659)	# 3
	ori		x5, x0, %lo(l.15659)	# 3
	flw		f1, 0(x5)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.296830	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.296829	# 3
fle_else.296830:
	ori		x5, x0, 1	# 3
fle_cont.296829:
	beq		x5, x8, beq.296832	# 1949
	ori		x4, x0, 119	# 1950
	ori		x5, x0, 4	# 1950
	mul		x4, x4, x5	# 1950
	add		x4, x6, x4	# 1950
	lw		x4, 0(x4)	# 1950
	lui		x5, %hi(l.18938)	# 1950
	ori		x5, x0, %lo(l.18938)	# 1950
	flw		f1, 0(x5)	# 1950
	fdiv	f0, f0, f1	# 1950
	lw		x27, -24(x2)	# 1950
	sw		x1, -80(x2)	# 1950
	addi	x2, x2, -84	# 1950
	lw		x31, 0(x27)	# 1950
	jalr	x1, x31, 0	# 1950
	addi	x2, x2, 84	# 1950
	lw		x1, -80(x2)	# 1950
	jal		x0, beq_cont.296831	# 1949
beq.296832:
	ori		x5, x0, 4	# 1952
	mul		x4, x4, x5	# 1952
	add		x4, x6, x4	# 1952
	lw		x4, 0(x4)	# 1952
	lui		x5, %hi(l.19040)	# 1952
	ori		x5, x0, %lo(l.19040)	# 1952
	flw		f1, 0(x5)	# 1952
	fdiv	f0, f0, f1	# 1952
	lw		x27, -24(x2)	# 1952
	sw		x1, -80(x2)	# 1952
	addi	x2, x2, -84	# 1952
	lw		x31, 0(x27)	# 1952
	jalr	x1, x31, 0	# 1952
	addi	x2, x2, 84	# 1952
	lw		x1, -80(x2)	# 1952
beq_cont.296831:
	ori		x7, x0, 116	# 1954
	lw		x4, -76(x2)	# 1954
	lw		x5, -28(x2)	# 1954
	lw		x6, -48(x2)	# 1954
	lw		x27, -20(x2)	# 1954
	sw		x1, -80(x2)	# 1954
	addi	x2, x2, -84	# 1954
	lw		x31, 0(x27)	# 1954
	jalr	x1, x31, 0	# 1954
	addi	x2, x2, 84	# 1954
	lw		x1, -80(x2)	# 1954
	jal		x0, beq_cont.296827	# 1979
beq.296828:
beq_cont.296827:
	lw		x4, -16(x2)	# 1983
	lw		x5, -64(x2)	# 1983
	beq		x5, x4, beq.296834	# 1983
	ori		x4, x0, 3	# 1984
	ori		x6, x0, 4	# 1984
	mul		x4, x4, x6	# 1984
	lw		x6, -56(x2)	# 1984
	add		x4, x6, x4	# 1984
	lw		x4, 0(x4)	# 1984
	ori		x7, x0, 4	# 259
	lw		x8, -52(x2)	# 259
	mul		x7, x8, x7	# 259
	lw		x9, -48(x2)	# 259
	add		x7, x9, x7	# 259
	flw		f0, 0(x7)	# 259
	ori		x7, x0, 4	# 259
	mul		x7, x8, x7	# 259
	lw		x10, -44(x2)	# 259
	add		x7, x10, x7	# 259
	fsw		f0, 0(x7)	# 259
	ori		x7, x0, 4	# 260
	lw		x11, -60(x2)	# 260
	mul		x7, x11, x7	# 260
	add		x7, x9, x7	# 260
	flw		f0, 0(x7)	# 260
	ori		x7, x0, 4	# 260
	mul		x7, x11, x7	# 260
	add		x7, x10, x7	# 260
	fsw		f0, 0(x7)	# 260
	ori		x7, x0, 4	# 261
	lw		x12, -40(x2)	# 261
	mul		x7, x12, x7	# 261
	add		x7, x9, x7	# 261
	flw		f0, 0(x7)	# 261
	ori		x7, x0, 4	# 261
	mul		x7, x12, x7	# 261
	add		x7, x10, x7	# 261
	fsw		f0, 0(x7)	# 261
	addi	x7, x0, 0	# 1315
	ori		x13, x0, 4	# 1315
	mul		x7, x7, x13	# 1315
	lw		x13, -36(x2)	# 1315
	add		x7, x13, x7	# 1315
	lw		x7, 0(x7)	# 1315
	ori		x14, x0, 1	# 1315
	sub		x7, x7, x14	# 1315
	lw		x27, -32(x2)	# 1315
	sw		x4, -80(x2)	# 1315
	addi	x5, x7, 0
	addi	x4, x9, 0
	sw		x1, -84(x2)	# 1315
	addi	x2, x2, -88	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 88	# 1315
	lw		x1, -84(x2)	# 1315
	ori		x4, x0, 118	# 1964
	ori		x5, x0, 4	# 1945
	mul		x5, x4, x5	# 1945
	lw		x6, -80(x2)	# 1945
	add		x5, x6, x5	# 1945
	lw		x5, 0(x5)	# 1945
	lw		x5, 0(x5)	# 639
	ori		x7, x0, 4	# 292
	lw		x8, -52(x2)	# 292
	mul		x7, x8, x7	# 292
	add		x7, x5, x7	# 292
	flw		f0, 0(x7)	# 292
	ori		x7, x0, 4	# 292
	mul		x7, x8, x7	# 292
	lw		x9, -28(x2)	# 292
	add		x7, x9, x7	# 292
	flw		f1, 0(x7)	# 292
	fmul	f0, f0, f1	# 292
	ori		x7, x0, 4	# 292
	lw		x10, -60(x2)	# 292
	mul		x7, x10, x7	# 292
	add		x7, x5, x7	# 292
	flw		f1, 0(x7)	# 292
	ori		x7, x0, 4	# 292
	mul		x7, x10, x7	# 292
	add		x7, x9, x7	# 292
	flw		f2, 0(x7)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	ori		x7, x0, 4	# 292
	lw		x11, -40(x2)	# 292
	mul		x7, x11, x7	# 292
	add		x5, x5, x7	# 292
	flw		f1, 0(x5)	# 292
	ori		x5, x0, 4	# 292
	mul		x5, x11, x5	# 292
	add		x5, x9, x5	# 292
	flw		f2, 0(x5)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	lui		x5, %hi(l.15659)	# 3
	ori		x5, x0, %lo(l.15659)	# 3
	flw		f1, 0(x5)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.296836	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.296835	# 3
fle_else.296836:
	ori		x5, x0, 1	# 3
fle_cont.296835:
	beq		x5, x8, beq.296838	# 1949
	ori		x4, x0, 119	# 1950
	ori		x5, x0, 4	# 1950
	mul		x4, x4, x5	# 1950
	add		x4, x6, x4	# 1950
	lw		x4, 0(x4)	# 1950
	lui		x5, %hi(l.18938)	# 1950
	ori		x5, x0, %lo(l.18938)	# 1950
	flw		f1, 0(x5)	# 1950
	fdiv	f0, f0, f1	# 1950
	lw		x27, -24(x2)	# 1950
	sw		x1, -84(x2)	# 1950
	addi	x2, x2, -88	# 1950
	lw		x31, 0(x27)	# 1950
	jalr	x1, x31, 0	# 1950
	addi	x2, x2, 88	# 1950
	lw		x1, -84(x2)	# 1950
	jal		x0, beq_cont.296837	# 1949
beq.296838:
	ori		x5, x0, 4	# 1952
	mul		x4, x4, x5	# 1952
	add		x4, x6, x4	# 1952
	lw		x4, 0(x4)	# 1952
	lui		x5, %hi(l.19040)	# 1952
	ori		x5, x0, %lo(l.19040)	# 1952
	flw		f1, 0(x5)	# 1952
	fdiv	f0, f0, f1	# 1952
	lw		x27, -24(x2)	# 1952
	sw		x1, -84(x2)	# 1952
	addi	x2, x2, -88	# 1952
	lw		x31, 0(x27)	# 1952
	jalr	x1, x31, 0	# 1952
	addi	x2, x2, 88	# 1952
	lw		x1, -84(x2)	# 1952
beq_cont.296837:
	ori		x7, x0, 116	# 1954
	lw		x4, -80(x2)	# 1954
	lw		x5, -28(x2)	# 1954
	lw		x6, -48(x2)	# 1954
	lw		x27, -20(x2)	# 1954
	sw		x1, -84(x2)	# 1954
	addi	x2, x2, -88	# 1954
	lw		x31, 0(x27)	# 1954
	jalr	x1, x31, 0	# 1954
	addi	x2, x2, 88	# 1954
	lw		x1, -84(x2)	# 1954
	jal		x0, beq_cont.296833	# 1983
beq.296834:
beq_cont.296833:
	ori		x4, x0, 4	# 1987
	lw		x5, -64(x2)	# 1987
	beq		x5, x4, beq.296840	# 1987
	ori		x5, x0, 4	# 1988
	mul		x4, x4, x5	# 1988
	lw		x5, -56(x2)	# 1988
	add		x4, x5, x4	# 1988
	lw		x4, 0(x4)	# 1988
	ori		x5, x0, 4	# 259
	lw		x6, -52(x2)	# 259
	mul		x5, x6, x5	# 259
	lw		x7, -48(x2)	# 259
	add		x5, x7, x5	# 259
	flw		f0, 0(x5)	# 259
	ori		x5, x0, 4	# 259
	mul		x5, x6, x5	# 259
	lw		x8, -44(x2)	# 259
	add		x5, x8, x5	# 259
	fsw		f0, 0(x5)	# 259
	ori		x5, x0, 4	# 260
	lw		x9, -60(x2)	# 260
	mul		x5, x9, x5	# 260
	add		x5, x7, x5	# 260
	flw		f0, 0(x5)	# 260
	ori		x5, x0, 4	# 260
	mul		x5, x9, x5	# 260
	add		x5, x8, x5	# 260
	fsw		f0, 0(x5)	# 260
	ori		x5, x0, 4	# 261
	lw		x10, -40(x2)	# 261
	mul		x5, x10, x5	# 261
	add		x5, x7, x5	# 261
	flw		f0, 0(x5)	# 261
	ori		x5, x0, 4	# 261
	mul		x5, x10, x5	# 261
	add		x5, x8, x5	# 261
	fsw		f0, 0(x5)	# 261
	addi	x5, x0, 0	# 1315
	ori		x8, x0, 4	# 1315
	mul		x5, x5, x8	# 1315
	lw		x8, -36(x2)	# 1315
	add		x5, x8, x5	# 1315
	lw		x5, 0(x5)	# 1315
	ori		x8, x0, 1	# 1315
	sub		x5, x5, x8	# 1315
	lw		x27, -32(x2)	# 1315
	sw		x4, -84(x2)	# 1315
	addi	x4, x7, 0
	sw		x1, -88(x2)	# 1315
	addi	x2, x2, -92	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 92	# 1315
	lw		x1, -88(x2)	# 1315
	ori		x4, x0, 118	# 1964
	ori		x5, x0, 4	# 1945
	mul		x5, x4, x5	# 1945
	lw		x6, -84(x2)	# 1945
	add		x5, x6, x5	# 1945
	lw		x5, 0(x5)	# 1945
	lw		x5, 0(x5)	# 639
	ori		x7, x0, 4	# 292
	lw		x8, -52(x2)	# 292
	mul		x7, x8, x7	# 292
	add		x7, x5, x7	# 292
	flw		f0, 0(x7)	# 292
	ori		x7, x0, 4	# 292
	mul		x7, x8, x7	# 292
	lw		x9, -28(x2)	# 292
	add		x7, x9, x7	# 292
	flw		f1, 0(x7)	# 292
	fmul	f0, f0, f1	# 292
	ori		x7, x0, 4	# 292
	lw		x10, -60(x2)	# 292
	mul		x7, x10, x7	# 292
	add		x7, x5, x7	# 292
	flw		f1, 0(x7)	# 292
	ori		x7, x0, 4	# 292
	mul		x7, x10, x7	# 292
	add		x7, x9, x7	# 292
	flw		f2, 0(x7)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	ori		x7, x0, 4	# 292
	lw		x11, -40(x2)	# 292
	mul		x7, x11, x7	# 292
	add		x5, x5, x7	# 292
	flw		f1, 0(x5)	# 292
	ori		x5, x0, 4	# 292
	mul		x5, x11, x5	# 292
	add		x5, x9, x5	# 292
	flw		f2, 0(x5)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	lui		x5, %hi(l.15659)	# 3
	ori		x5, x0, %lo(l.15659)	# 3
	flw		f1, 0(x5)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.296842	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.296841	# 3
fle_else.296842:
	ori		x5, x0, 1	# 3
fle_cont.296841:
	beq		x5, x8, beq.296844	# 1949
	ori		x4, x0, 119	# 1950
	ori		x5, x0, 4	# 1950
	mul		x4, x4, x5	# 1950
	add		x4, x6, x4	# 1950
	lw		x4, 0(x4)	# 1950
	lui		x5, %hi(l.18938)	# 1950
	ori		x5, x0, %lo(l.18938)	# 1950
	flw		f1, 0(x5)	# 1950
	fdiv	f0, f0, f1	# 1950
	lw		x27, -24(x2)	# 1950
	sw		x1, -88(x2)	# 1950
	addi	x2, x2, -92	# 1950
	lw		x31, 0(x27)	# 1950
	jalr	x1, x31, 0	# 1950
	addi	x2, x2, 92	# 1950
	lw		x1, -88(x2)	# 1950
	jal		x0, beq_cont.296843	# 1949
beq.296844:
	ori		x5, x0, 4	# 1952
	mul		x4, x4, x5	# 1952
	add		x4, x6, x4	# 1952
	lw		x4, 0(x4)	# 1952
	lui		x5, %hi(l.19040)	# 1952
	ori		x5, x0, %lo(l.19040)	# 1952
	flw		f1, 0(x5)	# 1952
	fdiv	f0, f0, f1	# 1952
	lw		x27, -24(x2)	# 1952
	sw		x1, -88(x2)	# 1952
	addi	x2, x2, -92	# 1952
	lw		x31, 0(x27)	# 1952
	jalr	x1, x31, 0	# 1952
	addi	x2, x2, 92	# 1952
	lw		x1, -88(x2)	# 1952
beq_cont.296843:
	ori		x7, x0, 116	# 1954
	lw		x4, -84(x2)	# 1954
	lw		x5, -28(x2)	# 1954
	lw		x6, -48(x2)	# 1954
	lw		x27, -20(x2)	# 1954
	sw		x1, -88(x2)	# 1954
	addi	x2, x2, -92	# 1954
	lw		x31, 0(x27)	# 1954
	jalr	x1, x31, 0	# 1954
	addi	x2, x2, 92	# 1954
	lw		x1, -88(x2)	# 1954
	jal		x0, beq_cont.296839	# 1987
beq.296840:
beq_cont.296839:
	ori		x4, x0, 4	# 2007
	lw		x5, -12(x2)	# 2007
	mul		x4, x5, x4	# 2007
	lw		x5, -8(x2)	# 2007
	add		x4, x5, x4	# 2007
	lw		x4, 0(x4)	# 2007
	ori		x5, x0, 4	# 332
	lw		x6, -52(x2)	# 332
	mul		x5, x6, x5	# 332
	lw		x7, -4(x2)	# 332
	add		x5, x7, x5	# 332
	flw		f0, 0(x5)	# 332
	ori		x5, x0, 4	# 332
	mul		x5, x6, x5	# 332
	add		x5, x4, x5	# 332
	flw		f1, 0(x5)	# 332
	ori		x5, x0, 4	# 332
	mul		x5, x6, x5	# 332
	lw		x8, 0(x2)	# 332
	add		x5, x8, x5	# 332
	flw		f2, 0(x5)	# 332
	fmul	f1, f1, f2	# 332
	fadd	f0, f0, f1	# 332
	ori		x5, x0, 4	# 332
	mul		x5, x6, x5	# 332
	add		x5, x7, x5	# 332
	fsw		f0, 0(x5)	# 332
	ori		x5, x0, 4	# 333
	lw		x6, -60(x2)	# 333
	mul		x5, x6, x5	# 333
	add		x5, x7, x5	# 333
	flw		f0, 0(x5)	# 333
	ori		x5, x0, 4	# 333
	mul		x5, x6, x5	# 333
	add		x5, x4, x5	# 333
	flw		f1, 0(x5)	# 333
	ori		x5, x0, 4	# 333
	mul		x5, x6, x5	# 333
	add		x5, x8, x5	# 333
	flw		f2, 0(x5)	# 333
	fmul	f1, f1, f2	# 333
	fadd	f0, f0, f1	# 333
	ori		x5, x0, 4	# 333
	mul		x5, x6, x5	# 333
	add		x5, x7, x5	# 333
	fsw		f0, 0(x5)	# 333
	ori		x5, x0, 4	# 334
	lw		x6, -40(x2)	# 334
	mul		x5, x6, x5	# 334
	add		x5, x7, x5	# 334
	flw		f0, 0(x5)	# 334
	ori		x5, x0, 4	# 334
	mul		x5, x6, x5	# 334
	add		x4, x4, x5	# 334
	flw		f1, 0(x4)	# 334
	ori		x4, x0, 4	# 334
	mul		x4, x6, x4	# 334
	add		x4, x8, x4	# 334
	flw		f2, 0(x4)	# 334
	fmul	f1, f1, f2	# 334
	fadd	f0, f0, f1	# 334
	ori		x4, x0, 4	# 334
	mul		x4, x6, x4	# 334
	add		x4, x7, x4	# 334
	fsw		f0, 0(x4)	# 334
	jalr	x0, x1, 0	# 334
calc_diffuse_using_5points.2896:
	lw		x9, 20(x27)	# 2016
	lw		x10, 16(x27)	# 2016
	lw		x11, 12(x27)	# 2016
	lw		x12, 8(x27)	# 2016
	lw		x13, 4(x27)	# 2016
	ori		x14, x0, 4	# 2016
	mul		x14, x4, x14	# 2016
	add		x5, x5, x14	# 2016
	lw		x5, 0(x5)	# 2016
	lw		x5, 20(x5)	# 598
	sub		x14, x4, x13	# 2017
	ori		x15, x0, 4	# 2017
	mul		x14, x14, x15	# 2017
	add		x14, x6, x14	# 2017
	lw		x14, 0(x14)	# 2017
	lw		x14, 20(x14)	# 598
	ori		x15, x0, 4	# 2018
	mul		x15, x4, x15	# 2018
	add		x15, x6, x15	# 2018
	lw		x15, 0(x15)	# 2018
	lw		x15, 20(x15)	# 598
	add		x16, x4, x13	# 2019
	ori		x17, x0, 4	# 2019
	mul		x16, x16, x17	# 2019
	add		x16, x6, x16	# 2019
	lw		x16, 0(x16)	# 2019
	lw		x16, 20(x16)	# 598
	ori		x17, x0, 4	# 2020
	mul		x17, x4, x17	# 2020
	add		x7, x7, x17	# 2020
	lw		x7, 0(x7)	# 2020
	lw		x7, 20(x7)	# 598
	ori		x17, x0, 4	# 2022
	mul		x17, x8, x17	# 2022
	add		x5, x5, x17	# 2022
	lw		x5, 0(x5)	# 2022
	ori		x17, x0, 4	# 259
	mul		x17, x12, x17	# 259
	add		x17, x5, x17	# 259
	flw		f0, 0(x17)	# 259
	ori		x17, x0, 4	# 259
	mul		x17, x12, x17	# 259
	add		x17, x10, x17	# 259
	fsw		f0, 0(x17)	# 259
	ori		x17, x0, 4	# 260
	mul		x17, x13, x17	# 260
	add		x17, x5, x17	# 260
	flw		f0, 0(x17)	# 260
	ori		x17, x0, 4	# 260
	mul		x17, x13, x17	# 260
	add		x17, x10, x17	# 260
	fsw		f0, 0(x17)	# 260
	ori		x17, x0, 4	# 261
	mul		x17, x11, x17	# 261
	add		x5, x5, x17	# 261
	flw		f0, 0(x5)	# 261
	ori		x5, x0, 4	# 261
	mul		x5, x11, x5	# 261
	add		x5, x10, x5	# 261
	fsw		f0, 0(x5)	# 261
	ori		x5, x0, 4	# 2023
	mul		x5, x8, x5	# 2023
	add		x5, x14, x5	# 2023
	lw		x5, 0(x5)	# 2023
	ori		x14, x0, 4	# 309
	mul		x14, x12, x14	# 309
	add		x14, x10, x14	# 309
	flw		f0, 0(x14)	# 309
	ori		x14, x0, 4	# 309
	mul		x14, x12, x14	# 309
	add		x14, x5, x14	# 309
	flw		f1, 0(x14)	# 309
	fadd	f0, f0, f1	# 309
	ori		x14, x0, 4	# 309
	mul		x14, x12, x14	# 309
	add		x14, x10, x14	# 309
	fsw		f0, 0(x14)	# 309
	ori		x14, x0, 4	# 310
	mul		x14, x13, x14	# 310
	add		x14, x10, x14	# 310
	flw		f0, 0(x14)	# 310
	ori		x14, x0, 4	# 310
	mul		x14, x13, x14	# 310
	add		x14, x5, x14	# 310
	flw		f1, 0(x14)	# 310
	fadd	f0, f0, f1	# 310
	ori		x14, x0, 4	# 310
	mul		x14, x13, x14	# 310
	add		x14, x10, x14	# 310
	fsw		f0, 0(x14)	# 310
	ori		x14, x0, 4	# 311
	mul		x14, x11, x14	# 311
	add		x14, x10, x14	# 311
	flw		f0, 0(x14)	# 311
	ori		x14, x0, 4	# 311
	mul		x14, x11, x14	# 311
	add		x5, x5, x14	# 311
	flw		f1, 0(x5)	# 311
	fadd	f0, f0, f1	# 311
	ori		x5, x0, 4	# 311
	mul		x5, x11, x5	# 311
	add		x5, x10, x5	# 311
	fsw		f0, 0(x5)	# 311
	ori		x5, x0, 4	# 2024
	mul		x5, x8, x5	# 2024
	add		x5, x15, x5	# 2024
	lw		x5, 0(x5)	# 2024
	ori		x14, x0, 4	# 309
	mul		x14, x12, x14	# 309
	add		x14, x10, x14	# 309
	flw		f0, 0(x14)	# 309
	ori		x14, x0, 4	# 309
	mul		x14, x12, x14	# 309
	add		x14, x5, x14	# 309
	flw		f1, 0(x14)	# 309
	fadd	f0, f0, f1	# 309
	ori		x14, x0, 4	# 309
	mul		x14, x12, x14	# 309
	add		x14, x10, x14	# 309
	fsw		f0, 0(x14)	# 309
	ori		x14, x0, 4	# 310
	mul		x14, x13, x14	# 310
	add		x14, x10, x14	# 310
	flw		f0, 0(x14)	# 310
	ori		x14, x0, 4	# 310
	mul		x14, x13, x14	# 310
	add		x14, x5, x14	# 310
	flw		f1, 0(x14)	# 310
	fadd	f0, f0, f1	# 310
	ori		x14, x0, 4	# 310
	mul		x14, x13, x14	# 310
	add		x14, x10, x14	# 310
	fsw		f0, 0(x14)	# 310
	ori		x14, x0, 4	# 311
	mul		x14, x11, x14	# 311
	add		x14, x10, x14	# 311
	flw		f0, 0(x14)	# 311
	ori		x14, x0, 4	# 311
	mul		x14, x11, x14	# 311
	add		x5, x5, x14	# 311
	flw		f1, 0(x5)	# 311
	fadd	f0, f0, f1	# 311
	ori		x5, x0, 4	# 311
	mul		x5, x11, x5	# 311
	add		x5, x10, x5	# 311
	fsw		f0, 0(x5)	# 311
	ori		x5, x0, 4	# 2025
	mul		x5, x8, x5	# 2025
	add		x5, x16, x5	# 2025
	lw		x5, 0(x5)	# 2025
	ori		x14, x0, 4	# 309
	mul		x14, x12, x14	# 309
	add		x14, x10, x14	# 309
	flw		f0, 0(x14)	# 309
	ori		x14, x0, 4	# 309
	mul		x14, x12, x14	# 309
	add		x14, x5, x14	# 309
	flw		f1, 0(x14)	# 309
	fadd	f0, f0, f1	# 309
	ori		x14, x0, 4	# 309
	mul		x14, x12, x14	# 309
	add		x14, x10, x14	# 309
	fsw		f0, 0(x14)	# 309
	ori		x14, x0, 4	# 310
	mul		x14, x13, x14	# 310
	add		x14, x10, x14	# 310
	flw		f0, 0(x14)	# 310
	ori		x14, x0, 4	# 310
	mul		x14, x13, x14	# 310
	add		x14, x5, x14	# 310
	flw		f1, 0(x14)	# 310
	fadd	f0, f0, f1	# 310
	ori		x14, x0, 4	# 310
	mul		x14, x13, x14	# 310
	add		x14, x10, x14	# 310
	fsw		f0, 0(x14)	# 310
	ori		x14, x0, 4	# 311
	mul		x14, x11, x14	# 311
	add		x14, x10, x14	# 311
	flw		f0, 0(x14)	# 311
	ori		x14, x0, 4	# 311
	mul		x14, x11, x14	# 311
	add		x5, x5, x14	# 311
	flw		f1, 0(x5)	# 311
	fadd	f0, f0, f1	# 311
	ori		x5, x0, 4	# 311
	mul		x5, x11, x5	# 311
	add		x5, x10, x5	# 311
	fsw		f0, 0(x5)	# 311
	ori		x5, x0, 4	# 2026
	mul		x5, x8, x5	# 2026
	add		x5, x7, x5	# 2026
	lw		x5, 0(x5)	# 2026
	ori		x7, x0, 4	# 309
	mul		x7, x12, x7	# 309
	add		x7, x10, x7	# 309
	flw		f0, 0(x7)	# 309
	ori		x7, x0, 4	# 309
	mul		x7, x12, x7	# 309
	add		x7, x5, x7	# 309
	flw		f1, 0(x7)	# 309
	fadd	f0, f0, f1	# 309
	ori		x7, x0, 4	# 309
	mul		x7, x12, x7	# 309
	add		x7, x10, x7	# 309
	fsw		f0, 0(x7)	# 309
	ori		x7, x0, 4	# 310
	mul		x7, x13, x7	# 310
	add		x7, x10, x7	# 310
	flw		f0, 0(x7)	# 310
	ori		x7, x0, 4	# 310
	mul		x7, x13, x7	# 310
	add		x7, x5, x7	# 310
	flw		f1, 0(x7)	# 310
	fadd	f0, f0, f1	# 310
	ori		x7, x0, 4	# 310
	mul		x7, x13, x7	# 310
	add		x7, x10, x7	# 310
	fsw		f0, 0(x7)	# 310
	ori		x7, x0, 4	# 311
	mul		x7, x11, x7	# 311
	add		x7, x10, x7	# 311
	flw		f0, 0(x7)	# 311
	ori		x7, x0, 4	# 311
	mul		x7, x11, x7	# 311
	add		x5, x5, x7	# 311
	flw		f1, 0(x5)	# 311
	fadd	f0, f0, f1	# 311
	ori		x5, x0, 4	# 311
	mul		x5, x11, x5	# 311
	add		x5, x10, x5	# 311
	fsw		f0, 0(x5)	# 311
	ori		x5, x0, 4	# 2028
	mul		x4, x4, x5	# 2028
	add		x4, x6, x4	# 2028
	lw		x4, 0(x4)	# 2028
	lw		x4, 16(x4)	# 591
	ori		x5, x0, 4	# 2029
	mul		x5, x8, x5	# 2029
	add		x4, x4, x5	# 2029
	lw		x4, 0(x4)	# 2029
	ori		x5, x0, 4	# 332
	mul		x5, x12, x5	# 332
	add		x5, x9, x5	# 332
	flw		f0, 0(x5)	# 332
	ori		x5, x0, 4	# 332
	mul		x5, x12, x5	# 332
	add		x5, x4, x5	# 332
	flw		f1, 0(x5)	# 332
	ori		x5, x0, 4	# 332
	mul		x5, x12, x5	# 332
	add		x5, x10, x5	# 332
	flw		f2, 0(x5)	# 332
	fmul	f1, f1, f2	# 332
	fadd	f0, f0, f1	# 332
	ori		x5, x0, 4	# 332
	mul		x5, x12, x5	# 332
	add		x5, x9, x5	# 332
	fsw		f0, 0(x5)	# 332
	ori		x5, x0, 4	# 333
	mul		x5, x13, x5	# 333
	add		x5, x9, x5	# 333
	flw		f0, 0(x5)	# 333
	ori		x5, x0, 4	# 333
	mul		x5, x13, x5	# 333
	add		x5, x4, x5	# 333
	flw		f1, 0(x5)	# 333
	ori		x5, x0, 4	# 333
	mul		x5, x13, x5	# 333
	add		x5, x10, x5	# 333
	flw		f2, 0(x5)	# 333
	fmul	f1, f1, f2	# 333
	fadd	f0, f0, f1	# 333
	ori		x5, x0, 4	# 333
	mul		x5, x13, x5	# 333
	add		x5, x9, x5	# 333
	fsw		f0, 0(x5)	# 333
	ori		x5, x0, 4	# 334
	mul		x5, x11, x5	# 334
	add		x5, x9, x5	# 334
	flw		f0, 0(x5)	# 334
	ori		x5, x0, 4	# 334
	mul		x5, x11, x5	# 334
	add		x4, x4, x5	# 334
	flw		f1, 0(x4)	# 334
	ori		x4, x0, 4	# 334
	mul		x4, x11, x4	# 334
	add		x4, x10, x4	# 334
	flw		f2, 0(x4)	# 334
	fmul	f1, f1, f2	# 334
	fadd	f0, f0, f1	# 334
	ori		x4, x0, 4	# 334
	mul		x4, x11, x4	# 334
	add		x4, x9, x4	# 334
	fsw		f0, 0(x4)	# 334
	jalr	x0, x1, 0	# 334
do_without_neighbors.2902:
	lw		x6, 28(x27)	# 2035
	lw		x7, 24(x27)	# 2035
	lw		x8, 20(x27)	# 2035
	lw		x9, 16(x27)	# 2035
	lw		x10, 12(x27)	# 2035
	lw		x11, 8(x27)	# 2035
	lw		x12, 4(x27)	# 2035
	ori		x13, x0, 4	# 2035
	ble		x5, x13, ble.296847	# 2035
	jalr	x0, x1, 0	# 2045
ble.296847:
	lw		x14, 8(x4)	# 577
	ori		x15, x0, 4	# 2038
	mul		x15, x5, x15	# 2038
	add		x14, x14, x15	# 2038
	lw		x14, 0(x14)	# 2038
	ble		x11, x14, ble.296849	# 2038
	jalr	x0, x1, 0	# 2044
ble.296849:
	lw		x14, 12(x4)	# 584
	ori		x15, x0, 4	# 2040
	mul		x15, x5, x15	# 2040
	add		x14, x14, x15	# 2040
	lw		x14, 0(x14)	# 2040
	sw		x27, 0(x2)	# 2040
	sw		x9, -4(x2)	# 2040
	sw		x11, -8(x2)	# 2040
	sw		x4, -12(x2)	# 2040
	sw		x13, -16(x2)	# 2040
	sw		x12, -20(x2)	# 2040
	beq		x14, x11, beq.296852	# 2040
	lw		x14, 20(x4)	# 598
	lw		x15, 28(x4)	# 628
	lw		x16, 4(x4)	# 569
	lw		x17, 16(x4)	# 591
	ori		x18, x0, 4	# 2002
	mul		x18, x5, x18	# 2002
	add		x14, x14, x18	# 2002
	lw		x14, 0(x14)	# 2002
	ori		x18, x0, 4	# 259
	mul		x18, x11, x18	# 259
	add		x18, x14, x18	# 259
	flw		f0, 0(x18)	# 259
	ori		x18, x0, 4	# 259
	mul		x18, x11, x18	# 259
	add		x18, x8, x18	# 259
	fsw		f0, 0(x18)	# 259
	ori		x18, x0, 4	# 260
	mul		x18, x12, x18	# 260
	add		x18, x14, x18	# 260
	flw		f0, 0(x18)	# 260
	ori		x18, x0, 4	# 260
	mul		x18, x12, x18	# 260
	add		x18, x8, x18	# 260
	fsw		f0, 0(x18)	# 260
	ori		x18, x0, 4	# 261
	mul		x18, x10, x18	# 261
	add		x14, x14, x18	# 261
	flw		f0, 0(x14)	# 261
	ori		x14, x0, 4	# 261
	mul		x14, x10, x14	# 261
	add		x14, x8, x14	# 261
	fsw		f0, 0(x14)	# 261
	lw		x14, 24(x4)	# 614
	ori		x18, x0, 4	# 616
	mul		x18, x11, x18	# 616
	add		x14, x14, x18	# 616
	lw		x14, 0(x14)	# 616
	ori		x18, x0, 4	# 2005
	mul		x18, x5, x18	# 2005
	add		x15, x15, x18	# 2005
	lw		x15, 0(x15)	# 2005
	ori		x18, x0, 4	# 2006
	mul		x18, x5, x18	# 2006
	add		x16, x16, x18	# 2006
	lw		x16, 0(x16)	# 2006
	sw		x10, -24(x2)	# 2003
	sw		x8, -28(x2)	# 2003
	sw		x7, -32(x2)	# 2003
	sw		x17, -36(x2)	# 2003
	sw		x5, -40(x2)	# 2003
	addi	x5, x15, 0
	addi	x4, x14, 0
	addi	x27, x6, 0
	addi	x6, x16, 0
	sw		x1, -44(x2)	# 2003
	addi	x2, x2, -48	# 2003
	lw		x31, 0(x27)	# 2003
	jalr	x1, x31, 0	# 2003
	addi	x2, x2, 48	# 2003
	lw		x1, -44(x2)	# 2003
	ori		x4, x0, 4	# 2007
	lw		x5, -40(x2)	# 2007
	mul		x4, x5, x4	# 2007
	lw		x6, -36(x2)	# 2007
	add		x4, x6, x4	# 2007
	lw		x4, 0(x4)	# 2007
	ori		x6, x0, 4	# 332
	lw		x7, -8(x2)	# 332
	mul		x6, x7, x6	# 332
	lw		x8, -32(x2)	# 332
	add		x6, x8, x6	# 332
	flw		f0, 0(x6)	# 332
	ori		x6, x0, 4	# 332
	mul		x6, x7, x6	# 332
	add		x6, x4, x6	# 332
	flw		f1, 0(x6)	# 332
	ori		x6, x0, 4	# 332
	mul		x6, x7, x6	# 332
	lw		x9, -28(x2)	# 332
	add		x6, x9, x6	# 332
	flw		f2, 0(x6)	# 332
	fmul	f1, f1, f2	# 332
	fadd	f0, f0, f1	# 332
	ori		x6, x0, 4	# 332
	mul		x6, x7, x6	# 332
	add		x6, x8, x6	# 332
	fsw		f0, 0(x6)	# 332
	ori		x6, x0, 4	# 333
	lw		x10, -20(x2)	# 333
	mul		x6, x10, x6	# 333
	add		x6, x8, x6	# 333
	flw		f0, 0(x6)	# 333
	ori		x6, x0, 4	# 333
	mul		x6, x10, x6	# 333
	add		x6, x4, x6	# 333
	flw		f1, 0(x6)	# 333
	ori		x6, x0, 4	# 333
	mul		x6, x10, x6	# 333
	add		x6, x9, x6	# 333
	flw		f2, 0(x6)	# 333
	fmul	f1, f1, f2	# 333
	fadd	f0, f0, f1	# 333
	ori		x6, x0, 4	# 333
	mul		x6, x10, x6	# 333
	add		x6, x8, x6	# 333
	fsw		f0, 0(x6)	# 333
	ori		x6, x0, 4	# 334
	lw		x11, -24(x2)	# 334
	mul		x6, x11, x6	# 334
	add		x6, x8, x6	# 334
	flw		f0, 0(x6)	# 334
	ori		x6, x0, 4	# 334
	mul		x6, x11, x6	# 334
	add		x4, x4, x6	# 334
	flw		f1, 0(x4)	# 334
	ori		x4, x0, 4	# 334
	mul		x4, x11, x4	# 334
	add		x4, x9, x4	# 334
	flw		f2, 0(x4)	# 334
	fmul	f1, f1, f2	# 334
	fadd	f0, f0, f1	# 334
	ori		x4, x0, 4	# 334
	mul		x4, x11, x4	# 334
	add		x4, x8, x4	# 334
	fsw		f0, 0(x4)	# 334
	jal		x0, beq_cont.296851	# 2040
beq.296852:
beq_cont.296851:
	lw		x4, -20(x2)	# 2043
	add		x5, x5, x4	# 2043
	lw		x6, -16(x2)	# 2035
	ble		x5, x6, ble.296853	# 2035
	jalr	x0, x1, 0	# 2045
ble.296853:
	lw		x6, -12(x2)	# 577
	lw		x7, 8(x6)	# 577
	ori		x8, x0, 4	# 2038
	mul		x8, x5, x8	# 2038
	add		x7, x7, x8	# 2038
	lw		x7, 0(x7)	# 2038
	lw		x8, -8(x2)	# 2038
	ble		x8, x7, ble.296855	# 2038
	jalr	x0, x1, 0	# 2044
ble.296855:
	lw		x7, 12(x6)	# 584
	ori		x9, x0, 4	# 2040
	mul		x9, x5, x9	# 2040
	add		x7, x7, x9	# 2040
	lw		x7, 0(x7)	# 2040
	sw		x5, -44(x2)	# 2040
	beq		x7, x8, beq.296858	# 2040
	lw		x27, -4(x2)	# 2041
	addi	x4, x6, 0
	sw		x1, -48(x2)	# 2041
	addi	x2, x2, -52	# 2041
	lw		x31, 0(x27)	# 2041
	jalr	x1, x31, 0	# 2041
	addi	x2, x2, 52	# 2041
	lw		x1, -48(x2)	# 2041
	jal		x0, beq_cont.296857	# 2040
beq.296858:
beq_cont.296857:
	lw		x4, -20(x2)	# 2043
	lw		x5, -44(x2)	# 2043
	add		x5, x5, x4	# 2043
	lw		x4, -12(x2)	# 2043
	lw		x27, 0(x2)	# 2043
	lw		x31, 0(x27)	# 2043
	jalr	x0, x31, 0	# 2043
try_exploit_neighbors.2918:
	lw		x10, 20(x27)	# 2087
	lw		x11, 16(x27)	# 2087
	lw		x12, 12(x27)	# 2087
	lw		x13, 8(x27)	# 2087
	lw		x14, 4(x27)	# 2087
	ori		x15, x0, 4	# 2087
	mul		x15, x4, x15	# 2087
	add		x15, x7, x15	# 2087
	lw		x15, 0(x15)	# 2087
	ori		x16, x0, 4	# 2088
	ble		x9, x16, ble.296859	# 2088
	jalr	x0, x1, 0	# 2107
ble.296859:
	lw		x17, 8(x15)	# 577
	ori		x18, x0, 4	# 2063
	mul		x18, x9, x18	# 2063
	add		x17, x17, x18	# 2063
	lw		x17, 0(x17)	# 2063
	ble		x13, x17, ble.296861	# 2091
	jalr	x0, x1, 0	# 2106
ble.296861:
	lw		x17, 8(x15)	# 577
	ori		x18, x0, 4	# 2063
	mul		x18, x9, x18	# 2063
	add		x17, x17, x18	# 2063
	lw		x17, 0(x17)	# 2063
	ori		x18, x0, 4	# 2071
	mul		x18, x4, x18	# 2071
	add		x18, x6, x18	# 2071
	lw		x18, 0(x18)	# 2071
	lw		x18, 8(x18)	# 577
	ori		x19, x0, 4	# 2063
	mul		x19, x9, x19	# 2063
	add		x18, x18, x19	# 2063
	lw		x18, 0(x18)	# 2063
	beq		x18, x17, beq.296864	# 2071
	addi	x17, x0, 0	# 2079
	jal		x0, beq_cont.296863	# 2071
beq.296864:
	ori		x18, x0, 4	# 2072
	mul		x18, x4, x18	# 2072
	add		x18, x8, x18	# 2072
	lw		x18, 0(x18)	# 2072
	lw		x18, 8(x18)	# 577
	ori		x19, x0, 4	# 2063
	mul		x19, x9, x19	# 2063
	add		x18, x18, x19	# 2063
	lw		x18, 0(x18)	# 2063
	beq		x18, x17, beq.296866	# 2072
	addi	x17, x0, 0	# 2078
	jal		x0, beq_cont.296865	# 2072
beq.296866:
	sub		x18, x4, x14	# 2073
	ori		x19, x0, 4	# 2073
	mul		x18, x18, x19	# 2073
	add		x18, x7, x18	# 2073
	lw		x18, 0(x18)	# 2073
	lw		x18, 8(x18)	# 577
	ori		x19, x0, 4	# 2063
	mul		x19, x9, x19	# 2063
	add		x18, x18, x19	# 2063
	lw		x18, 0(x18)	# 2063
	beq		x18, x17, beq.296868	# 2073
	addi	x17, x0, 0	# 2077
	jal		x0, beq_cont.296867	# 2073
beq.296868:
	add		x18, x4, x14	# 2074
	ori		x19, x0, 4	# 2074
	mul		x18, x18, x19	# 2074
	add		x18, x7, x18	# 2074
	lw		x18, 0(x18)	# 2074
	lw		x18, 8(x18)	# 577
	ori		x19, x0, 4	# 2063
	mul		x19, x9, x19	# 2063
	add		x18, x18, x19	# 2063
	lw		x18, 0(x18)	# 2063
	beq		x18, x17, beq.296870	# 2074
	addi	x17, x0, 0	# 2076
	jal		x0, beq_cont.296869	# 2074
beq.296870:
	ori		x17, x0, 1	# 2075
beq_cont.296869:
beq_cont.296867:
beq_cont.296865:
beq_cont.296863:
	beq		x17, x13, beq.296871	# 2093
	lw		x12, 12(x15)	# 584
	ori		x15, x0, 4	# 2097
	mul		x15, x9, x15	# 2097
	add		x12, x12, x15	# 2097
	lw		x12, 0(x12)	# 2097
	sw		x5, 0(x2)	# 2097
	sw		x27, -4(x2)	# 2097
	sw		x11, -8(x2)	# 2097
	sw		x10, -12(x2)	# 2097
	sw		x8, -16(x2)	# 2097
	sw		x6, -20(x2)	# 2097
	sw		x13, -24(x2)	# 2097
	sw		x16, -28(x2)	# 2097
	sw		x7, -32(x2)	# 2097
	sw		x4, -36(x2)	# 2097
	sw		x14, -40(x2)	# 2097
	sw		x9, -44(x2)	# 2097
	beq		x12, x13, beq.296873	# 2097
	addi	x5, x6, 0
	addi	x27, x11, 0
	addi	x6, x7, 0
	addi	x7, x8, 0
	addi	x8, x9, 0
	sw		x1, -48(x2)	# 2098
	addi	x2, x2, -52	# 2098
	lw		x31, 0(x27)	# 2098
	jalr	x1, x31, 0	# 2098
	addi	x2, x2, 52	# 2098
	lw		x1, -48(x2)	# 2098
	jal		x0, beq_cont.296872	# 2097
beq.296873:
beq_cont.296872:
	lw		x4, -40(x2)	# 2102
	lw		x5, -44(x2)	# 2102
	add		x5, x5, x4	# 2102
	ori		x6, x0, 4	# 2087
	lw		x7, -36(x2)	# 2087
	mul		x6, x7, x6	# 2087
	lw		x8, -32(x2)	# 2087
	add		x6, x8, x6	# 2087
	lw		x6, 0(x6)	# 2087
	lw		x9, -28(x2)	# 2088
	ble		x5, x9, ble.296874	# 2088
	jalr	x0, x1, 0	# 2107
ble.296874:
	lw		x9, 8(x6)	# 577
	ori		x10, x0, 4	# 2063
	mul		x10, x5, x10	# 2063
	add		x9, x9, x10	# 2063
	lw		x9, 0(x9)	# 2063
	lw		x10, -24(x2)	# 2091
	ble		x10, x9, ble.296876	# 2091
	jalr	x0, x1, 0	# 2106
ble.296876:
	lw		x9, 8(x6)	# 577
	ori		x11, x0, 4	# 2063
	mul		x11, x5, x11	# 2063
	add		x9, x9, x11	# 2063
	lw		x9, 0(x9)	# 2063
	ori		x11, x0, 4	# 2071
	mul		x11, x7, x11	# 2071
	lw		x12, -20(x2)	# 2071
	add		x11, x12, x11	# 2071
	lw		x11, 0(x11)	# 2071
	lw		x11, 8(x11)	# 577
	ori		x13, x0, 4	# 2063
	mul		x13, x5, x13	# 2063
	add		x11, x11, x13	# 2063
	lw		x11, 0(x11)	# 2063
	beq		x11, x9, beq.296879	# 2071
	addi	x9, x0, 0	# 2079
	jal		x0, beq_cont.296878	# 2071
beq.296879:
	ori		x11, x0, 4	# 2072
	mul		x11, x7, x11	# 2072
	lw		x13, -16(x2)	# 2072
	add		x11, x13, x11	# 2072
	lw		x11, 0(x11)	# 2072
	lw		x11, 8(x11)	# 577
	ori		x14, x0, 4	# 2063
	mul		x14, x5, x14	# 2063
	add		x11, x11, x14	# 2063
	lw		x11, 0(x11)	# 2063
	beq		x11, x9, beq.296881	# 2072
	addi	x9, x0, 0	# 2078
	jal		x0, beq_cont.296880	# 2072
beq.296881:
	sub		x11, x7, x4	# 2073
	ori		x14, x0, 4	# 2073
	mul		x11, x11, x14	# 2073
	add		x11, x8, x11	# 2073
	lw		x11, 0(x11)	# 2073
	lw		x11, 8(x11)	# 577
	ori		x14, x0, 4	# 2063
	mul		x14, x5, x14	# 2063
	add		x11, x11, x14	# 2063
	lw		x11, 0(x11)	# 2063
	beq		x11, x9, beq.296883	# 2073
	addi	x9, x0, 0	# 2077
	jal		x0, beq_cont.296882	# 2073
beq.296883:
	add		x11, x7, x4	# 2074
	ori		x14, x0, 4	# 2074
	mul		x11, x11, x14	# 2074
	add		x11, x8, x11	# 2074
	lw		x11, 0(x11)	# 2074
	lw		x11, 8(x11)	# 577
	ori		x14, x0, 4	# 2063
	mul		x14, x5, x14	# 2063
	add		x11, x11, x14	# 2063
	lw		x11, 0(x11)	# 2063
	beq		x11, x9, beq.296885	# 2074
	addi	x9, x0, 0	# 2076
	jal		x0, beq_cont.296884	# 2074
beq.296885:
	ori		x9, x0, 1	# 2075
beq_cont.296884:
beq_cont.296882:
beq_cont.296880:
beq_cont.296878:
	beq		x9, x10, beq.296886	# 2093
	lw		x6, 12(x6)	# 584
	ori		x9, x0, 4	# 2097
	mul		x9, x5, x9	# 2097
	add		x6, x6, x9	# 2097
	lw		x6, 0(x6)	# 2097
	sw		x5, -48(x2)	# 2097
	beq		x6, x10, beq.296888	# 2097
	lw		x6, -16(x2)	# 2098
	lw		x27, -8(x2)	# 2098
	addi	x4, x7, 0
	addi	x7, x6, 0
	addi	x6, x8, 0
	addi	x8, x5, 0
	addi	x5, x12, 0
	sw		x1, -52(x2)	# 2098
	addi	x2, x2, -56	# 2098
	lw		x31, 0(x27)	# 2098
	jalr	x1, x31, 0	# 2098
	addi	x2, x2, 56	# 2098
	lw		x1, -52(x2)	# 2098
	jal		x0, beq_cont.296887	# 2097
beq.296888:
beq_cont.296887:
	lw		x4, -40(x2)	# 2102
	lw		x5, -48(x2)	# 2102
	add		x9, x5, x4	# 2102
	lw		x4, -36(x2)	# 2102
	lw		x5, 0(x2)	# 2102
	lw		x6, -20(x2)	# 2102
	lw		x7, -32(x2)	# 2102
	lw		x8, -16(x2)	# 2102
	lw		x27, -4(x2)	# 2102
	lw		x31, 0(x27)	# 2102
	jalr	x0, x31, 0	# 2102
beq.296886:
	lw		x27, -12(x2)	# 2105
	addi	x4, x6, 0
	lw		x31, 0(x27)	# 2105
	jalr	x0, x31, 0	# 2105
beq.296871:
	ble		x9, x16, ble.296889	# 2035
	jalr	x0, x1, 0	# 2045
ble.296889:
	lw		x4, 8(x15)	# 577
	ori		x5, x0, 4	# 2038
	mul		x5, x9, x5	# 2038
	add		x4, x4, x5	# 2038
	lw		x4, 0(x4)	# 2038
	ble		x13, x4, ble.296891	# 2038
	jalr	x0, x1, 0	# 2044
ble.296891:
	lw		x4, 12(x15)	# 584
	ori		x5, x0, 4	# 2040
	mul		x5, x9, x5	# 2040
	add		x4, x4, x5	# 2040
	lw		x4, 0(x4)	# 2040
	sw		x15, -52(x2)	# 2040
	sw		x10, -12(x2)	# 2040
	sw		x14, -40(x2)	# 2040
	sw		x9, -44(x2)	# 2040
	beq		x4, x13, beq.296894	# 2040
	addi	x5, x9, 0
	addi	x4, x15, 0
	addi	x27, x12, 0
	sw		x1, -56(x2)	# 2041
	addi	x2, x2, -60	# 2041
	lw		x31, 0(x27)	# 2041
	jalr	x1, x31, 0	# 2041
	addi	x2, x2, 60	# 2041
	lw		x1, -56(x2)	# 2041
	jal		x0, beq_cont.296893	# 2040
beq.296894:
beq_cont.296893:
	lw		x4, -40(x2)	# 2043
	lw		x5, -44(x2)	# 2043
	add		x5, x5, x4	# 2043
	lw		x4, -52(x2)	# 2043
	lw		x27, -12(x2)	# 2043
	lw		x31, 0(x27)	# 2043
	jalr	x0, x31, 0	# 2043
write_rgb.2931:
	lw		x5, 20(x27)	# 2140
	lw		x6, 16(x27)	# 2140
	lw		x7, 12(x27)	# 2140
	lw		x8, 8(x27)	# 2140
	lw		x9, 4(x27)	# 2140
	beq		x4, x7, beq.296895	# 2140
	ori		x4, x0, 4	# 2148
	mul		x4, x8, x4	# 2148
	add		x4, x5, x4	# 2148
	flw		f0, 0(x4)	# 2148
	sw		x6, 0(x2)	# 2134
	sw		x5, -4(x2)	# 2134
	sw		x9, -8(x2)	# 2134
	sw		x8, -12(x2)	# 2134
	sw		x1, -16(x2)	# 2134
	addi	x2, x2, -20	# 2134
	jal		x1, int_of_float.2487	# 2134
	addi	x2, x2, 20	# 2134
	lw		x1, -16(x2)	# 2134
	ori		x5, x0, 255	# 2135
	ble		x4, x5, ble.296897	# 2135
	ori		x4, x0, 255	# 2135
	jal		x0, ble_cont.296896	# 2135
ble.296897:
	lw		x6, -12(x2)	# 2135
	ble		x6, x4, ble.296899	# 2135
	addi	x4, x0, 0	# 2135
	jal		x0, ble_cont.296898	# 2135
ble.296899:
ble_cont.296898:
ble_cont.296896:
	sw		x5, -16(x2)	# 2136
	sw		x1, -20(x2)	# 2136
	addi	x2, x2, -24	# 2136
	jal		x1, min_caml_print_char	# 2136
	addi	x2, x2, 24	# 2136
	lw		x1, -20(x2)	# 2136
	ori		x4, x0, 4	# 2149
	lw		x5, -8(x2)	# 2149
	mul		x4, x5, x4	# 2149
	lw		x5, -4(x2)	# 2149
	add		x4, x5, x4	# 2149
	flw		f0, 0(x4)	# 2149
	sw		x1, -20(x2)	# 2134
	addi	x2, x2, -24	# 2134
	jal		x1, int_of_float.2487	# 2134
	addi	x2, x2, 24	# 2134
	lw		x1, -20(x2)	# 2134
	lw		x5, -16(x2)	# 2135
	ble		x4, x5, ble.296901	# 2135
	ori		x4, x0, 255	# 2135
	jal		x0, ble_cont.296900	# 2135
ble.296901:
	lw		x6, -12(x2)	# 2135
	ble		x6, x4, ble.296903	# 2135
	addi	x4, x0, 0	# 2135
	jal		x0, ble_cont.296902	# 2135
ble.296903:
ble_cont.296902:
ble_cont.296900:
	sw		x1, -20(x2)	# 2136
	addi	x2, x2, -24	# 2136
	jal		x1, min_caml_print_char	# 2136
	addi	x2, x2, 24	# 2136
	lw		x1, -20(x2)	# 2136
	ori		x4, x0, 4	# 2150
	lw		x5, 0(x2)	# 2150
	mul		x4, x5, x4	# 2150
	lw		x5, -4(x2)	# 2150
	add		x4, x5, x4	# 2150
	flw		f0, 0(x4)	# 2150
	sw		x1, -20(x2)	# 2134
	addi	x2, x2, -24	# 2134
	jal		x1, int_of_float.2487	# 2134
	addi	x2, x2, 24	# 2134
	lw		x1, -20(x2)	# 2134
	lw		x5, -16(x2)	# 2135
	ble		x4, x5, ble.296905	# 2135
	ori		x4, x0, 255	# 2135
	jal		x0, ble_cont.296904	# 2135
ble.296905:
	lw		x5, -12(x2)	# 2135
	ble		x5, x4, ble.296907	# 2135
	addi	x4, x0, 0	# 2135
	jal		x0, ble_cont.296906	# 2135
ble.296907:
ble_cont.296906:
ble_cont.296904:
	jal		x0, min_caml_print_char	# 2136
beq.296895:
	ori		x4, x0, 4	# 2141
	mul		x4, x8, x4	# 2141
	add		x4, x5, x4	# 2141
	flw		f0, 0(x4)	# 2141
	sw		x6, 0(x2)	# 2128
	sw		x5, -4(x2)	# 2128
	sw		x9, -8(x2)	# 2128
	sw		x8, -12(x2)	# 2128
	sw		x1, -20(x2)	# 2128
	addi	x2, x2, -24	# 2128
	jal		x1, int_of_float.2487	# 2128
	addi	x2, x2, 24	# 2128
	lw		x1, -20(x2)	# 2128
	ori		x5, x0, 255	# 2129
	ble		x4, x5, ble.296909	# 2129
	ori		x4, x0, 255	# 2129
	jal		x0, ble_cont.296908	# 2129
ble.296909:
	lw		x6, -12(x2)	# 2129
	ble		x6, x4, ble.296911	# 2129
	addi	x4, x0, 0	# 2129
	jal		x0, ble_cont.296910	# 2129
ble.296911:
ble_cont.296910:
ble_cont.296908:
	sw		x5, -20(x2)	# 2130
	sw		x1, -24(x2)	# 2130
	addi	x2, x2, -28	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 28	# 2130
	lw		x1, -24(x2)	# 2130
	ori		x4, x0, 32	# 2142
	sw		x4, -24(x2)	# 2142
	sw		x1, -28(x2)	# 2142
	addi	x2, x2, -32	# 2142
	jal		x1, min_caml_print_char	# 2142
	addi	x2, x2, 32	# 2142
	lw		x1, -28(x2)	# 2142
	ori		x4, x0, 4	# 2143
	lw		x5, -8(x2)	# 2143
	mul		x4, x5, x4	# 2143
	lw		x5, -4(x2)	# 2143
	add		x4, x5, x4	# 2143
	flw		f0, 0(x4)	# 2143
	sw		x1, -28(x2)	# 2128
	addi	x2, x2, -32	# 2128
	jal		x1, int_of_float.2487	# 2128
	addi	x2, x2, 32	# 2128
	lw		x1, -28(x2)	# 2128
	lw		x5, -20(x2)	# 2129
	ble		x4, x5, ble.296913	# 2129
	ori		x4, x0, 255	# 2129
	jal		x0, ble_cont.296912	# 2129
ble.296913:
	lw		x6, -12(x2)	# 2129
	ble		x6, x4, ble.296915	# 2129
	addi	x4, x0, 0	# 2129
	jal		x0, ble_cont.296914	# 2129
ble.296915:
ble_cont.296914:
ble_cont.296912:
	sw		x1, -28(x2)	# 2130
	addi	x2, x2, -32	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 32	# 2130
	lw		x1, -28(x2)	# 2130
	lw		x4, -24(x2)	# 2144
	sw		x1, -28(x2)	# 2144
	addi	x2, x2, -32	# 2144
	jal		x1, min_caml_print_char	# 2144
	addi	x2, x2, 32	# 2144
	lw		x1, -28(x2)	# 2144
	ori		x4, x0, 4	# 2145
	lw		x5, 0(x2)	# 2145
	mul		x4, x5, x4	# 2145
	lw		x5, -4(x2)	# 2145
	add		x4, x5, x4	# 2145
	flw		f0, 0(x4)	# 2145
	sw		x1, -28(x2)	# 2128
	addi	x2, x2, -32	# 2128
	jal		x1, int_of_float.2487	# 2128
	addi	x2, x2, 32	# 2128
	lw		x1, -28(x2)	# 2128
	lw		x5, -20(x2)	# 2129
	ble		x4, x5, ble.296917	# 2129
	ori		x4, x0, 255	# 2129
	jal		x0, ble_cont.296916	# 2129
ble.296917:
	lw		x5, -12(x2)	# 2129
	ble		x5, x4, ble.296919	# 2129
	addi	x4, x0, 0	# 2129
	jal		x0, ble_cont.296918	# 2129
ble.296919:
ble_cont.296918:
ble_cont.296916:
	sw		x1, -28(x2)	# 2130
	addi	x2, x2, -32	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 32	# 2130
	lw		x1, -28(x2)	# 2130
	ori		x4, x0, 10	# 2146
	jal		x0, min_caml_print_char	# 2146
pretrace_diffuse_rays.2933:
	lw		x6, 44(x27)	# 2163
	lw		x7, 40(x27)	# 2163
	lw		x8, 36(x27)	# 2163
	lw		x9, 32(x27)	# 2163
	lw		x10, 28(x27)	# 2163
	lw		x11, 24(x27)	# 2163
	lw		x12, 20(x27)	# 2163
	lw		x13, 16(x27)	# 2163
	lw		x14, 12(x27)	# 2163
	lw		x15, 8(x27)	# 2163
	flw		f0, 4(x27)	# 2163
	ori		x16, x0, 4	# 2163
	ble		x5, x16, ble.296920	# 2163
	jalr	x0, x1, 0	# 2187
ble.296920:
	lw		x17, 8(x4)	# 577
	ori		x18, x0, 4	# 2063
	mul		x18, x5, x18	# 2063
	add		x17, x17, x18	# 2063
	lw		x17, 0(x17)	# 2063
	ble		x14, x17, ble.296922	# 2167
	jalr	x0, x1, 0	# 2186
ble.296922:
	lw		x17, 12(x4)	# 584
	ori		x18, x0, 4	# 2170
	mul		x18, x5, x18	# 2170
	add		x17, x17, x18	# 2170
	lw		x17, 0(x17)	# 2170
	sw		x27, 0(x2)	# 2170
	sw		x10, -4(x2)	# 2170
	sw		x6, -8(x2)	# 2170
	sw		x8, -12(x2)	# 2170
	sw		x9, -16(x2)	# 2170
	sw		x7, -20(x2)	# 2170
	sw		x11, -24(x2)	# 2170
	sw		x13, -28(x2)	# 2170
	fsw		f0, -32(x2)	# 2170
	sw		x12, -40(x2)	# 2170
	sw		x14, -44(x2)	# 2170
	sw		x16, -48(x2)	# 2170
	sw		x15, -52(x2)	# 2170
	sw		x5, -56(x2)	# 2170
	beq		x17, x14, beq.296925	# 2170
	lw		x17, 24(x4)	# 614
	addi	x18, x0, 0	# 616
	ori		x19, x0, 4	# 616
	mul		x18, x18, x19	# 616
	add		x17, x17, x18	# 616
	lw		x17, 0(x17)	# 616
	lui		x18, %hi(l.15659)	# 254
	ori		x18, x0, %lo(l.15659)	# 254
	flw		f1, 0(x18)	# 254
	ori		x18, x0, 4	# 247
	mul		x18, x14, x18	# 247
	add		x18, x12, x18	# 247
	fsw		f1, 0(x18)	# 247
	ori		x18, x0, 4	# 248
	mul		x18, x15, x18	# 248
	add		x18, x12, x18	# 248
	fsw		f1, 0(x18)	# 248
	ori		x18, x0, 4	# 249
	mul		x18, x13, x18	# 249
	add		x18, x12, x18	# 249
	fsw		f1, 0(x18)	# 249
	lw		x18, 28(x4)	# 628
	lw		x19, 4(x4)	# 569
	ori		x20, x0, 4	# 2179
	mul		x17, x17, x20	# 2179
	add		x17, x11, x17	# 2179
	lw		x17, 0(x17)	# 2179
	ori		x20, x0, 4	# 2180
	mul		x20, x5, x20	# 2180
	add		x18, x18, x20	# 2180
	lw		x18, 0(x18)	# 2180
	ori		x20, x0, 4	# 2181
	mul		x20, x5, x20	# 2181
	add		x19, x19, x20	# 2181
	lw		x19, 0(x19)	# 2181
	addi	x20, x0, 0	# 259
	addi	x21, x0, 0	# 259
	ori		x22, x0, 4	# 259
	mul		x21, x21, x22	# 259
	add		x21, x19, x21	# 259
	flw		f1, 0(x21)	# 259
	ori		x21, x0, 4	# 259
	mul		x20, x20, x21	# 259
	add		x20, x7, x20	# 259
	fsw		f1, 0(x20)	# 259
	ori		x20, x0, 1	# 260
	ori		x21, x0, 1	# 260
	ori		x22, x0, 4	# 260
	mul		x21, x21, x22	# 260
	add		x21, x19, x21	# 260
	flw		f1, 0(x21)	# 260
	ori		x21, x0, 4	# 260
	mul		x20, x20, x21	# 260
	add		x20, x7, x20	# 260
	fsw		f1, 0(x20)	# 260
	ori		x20, x0, 2	# 261
	ori		x21, x0, 4	# 261
	mul		x21, x20, x21	# 261
	add		x21, x19, x21	# 261
	flw		f1, 0(x21)	# 261
	ori		x21, x0, 4	# 261
	mul		x20, x20, x21	# 261
	add		x20, x7, x20	# 261
	fsw		f1, 0(x20)	# 261
	ori		x20, x0, 4	# 1315
	mul		x20, x14, x20	# 1315
	add		x20, x9, x20	# 1315
	lw		x20, 0(x20)	# 1315
	sub		x20, x20, x15	# 1315
	sw		x4, -60(x2)	# 1315
	sw		x19, -64(x2)	# 1315
	sw		x18, -68(x2)	# 1315
	sw		x17, -72(x2)	# 1315
	addi	x5, x20, 0
	addi	x4, x19, 0
	addi	x27, x8, 0
	sw		x1, -76(x2)	# 1315
	addi	x2, x2, -80	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 80	# 1315
	lw		x1, -76(x2)	# 1315
	ori		x7, x0, 118	# 1964
	lw		x4, -72(x2)	# 1964
	lw		x5, -68(x2)	# 1964
	lw		x6, -64(x2)	# 1964
	lw		x27, -4(x2)	# 1964
	sw		x1, -76(x2)	# 1964
	addi	x2, x2, -80	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 80	# 1964
	lw		x1, -76(x2)	# 1964
	lw		x4, -60(x2)	# 598
	lw		x5, 20(x4)	# 598
	ori		x6, x0, 4	# 2183
	lw		x7, -56(x2)	# 2183
	mul		x6, x7, x6	# 2183
	add		x5, x5, x6	# 2183
	lw		x5, 0(x5)	# 2183
	addi	x6, x0, 0	# 259
	addi	x8, x0, 0	# 259
	ori		x9, x0, 4	# 259
	mul		x8, x8, x9	# 259
	lw		x9, -40(x2)	# 259
	add		x8, x9, x8	# 259
	flw		f0, 0(x8)	# 259
	ori		x8, x0, 4	# 259
	mul		x6, x6, x8	# 259
	add		x6, x5, x6	# 259
	fsw		f0, 0(x6)	# 259
	ori		x6, x0, 1	# 260
	ori		x8, x0, 1	# 260
	ori		x10, x0, 4	# 260
	mul		x8, x8, x10	# 260
	add		x8, x9, x8	# 260
	flw		f0, 0(x8)	# 260
	ori		x8, x0, 4	# 260
	mul		x6, x6, x8	# 260
	add		x6, x5, x6	# 260
	fsw		f0, 0(x6)	# 260
	ori		x6, x0, 2	# 261
	ori		x8, x0, 4	# 261
	mul		x8, x6, x8	# 261
	add		x8, x9, x8	# 261
	flw		f0, 0(x8)	# 261
	ori		x8, x0, 4	# 261
	mul		x6, x6, x8	# 261
	add		x5, x5, x6	# 261
	fsw		f0, 0(x5)	# 261
	jal		x0, beq_cont.296924	# 2170
beq.296925:
beq_cont.296924:
	lw		x5, -52(x2)	# 2185
	lw		x6, -56(x2)	# 2185
	add		x6, x6, x5	# 2185
	lw		x7, -48(x2)	# 2163
	ble		x6, x7, ble.296926	# 2163
	jalr	x0, x1, 0	# 2187
ble.296926:
	lw		x7, 8(x4)	# 577
	ori		x8, x0, 4	# 2063
	mul		x8, x6, x8	# 2063
	add		x7, x7, x8	# 2063
	lw		x7, 0(x7)	# 2063
	lw		x8, -44(x2)	# 2167
	ble		x8, x7, ble.296928	# 2167
	jalr	x0, x1, 0	# 2186
ble.296928:
	lw		x7, 12(x4)	# 584
	ori		x9, x0, 4	# 2170
	mul		x9, x6, x9	# 2170
	add		x7, x7, x9	# 2170
	lw		x7, 0(x7)	# 2170
	sw		x6, -76(x2)	# 2170
	beq		x7, x8, beq.296931	# 2170
	lw		x7, 24(x4)	# 614
	ori		x9, x0, 4	# 616
	mul		x9, x8, x9	# 616
	add		x7, x7, x9	# 616
	lw		x7, 0(x7)	# 616
	ori		x9, x0, 4	# 247
	mul		x9, x8, x9	# 247
	lw		x10, -40(x2)	# 247
	add		x9, x10, x9	# 247
	flw		f0, -32(x2)	# 247
	fsw		f0, 0(x9)	# 247
	ori		x9, x0, 4	# 248
	mul		x9, x5, x9	# 248
	add		x9, x10, x9	# 248
	fsw		f0, 0(x9)	# 248
	ori		x9, x0, 4	# 249
	lw		x11, -28(x2)	# 249
	mul		x9, x11, x9	# 249
	add		x9, x10, x9	# 249
	fsw		f0, 0(x9)	# 249
	lw		x9, 28(x4)	# 628
	lw		x12, 4(x4)	# 569
	ori		x13, x0, 4	# 2179
	mul		x7, x7, x13	# 2179
	lw		x13, -24(x2)	# 2179
	add		x7, x13, x7	# 2179
	lw		x7, 0(x7)	# 2179
	ori		x13, x0, 4	# 2180
	mul		x13, x6, x13	# 2180
	add		x9, x9, x13	# 2180
	lw		x9, 0(x9)	# 2180
	ori		x13, x0, 4	# 2181
	mul		x13, x6, x13	# 2181
	add		x12, x12, x13	# 2181
	lw		x12, 0(x12)	# 2181
	ori		x13, x0, 4	# 259
	mul		x13, x8, x13	# 259
	add		x13, x12, x13	# 259
	flw		f0, 0(x13)	# 259
	ori		x13, x0, 4	# 259
	mul		x13, x8, x13	# 259
	lw		x14, -20(x2)	# 259
	add		x13, x14, x13	# 259
	fsw		f0, 0(x13)	# 259
	ori		x13, x0, 4	# 260
	mul		x13, x5, x13	# 260
	add		x13, x12, x13	# 260
	flw		f0, 0(x13)	# 260
	ori		x13, x0, 4	# 260
	mul		x13, x5, x13	# 260
	add		x13, x14, x13	# 260
	fsw		f0, 0(x13)	# 260
	ori		x13, x0, 4	# 261
	mul		x13, x11, x13	# 261
	add		x13, x12, x13	# 261
	flw		f0, 0(x13)	# 261
	ori		x13, x0, 4	# 261
	mul		x13, x11, x13	# 261
	add		x13, x14, x13	# 261
	fsw		f0, 0(x13)	# 261
	addi	x13, x0, 0	# 1315
	ori		x14, x0, 4	# 1315
	mul		x13, x13, x14	# 1315
	lw		x14, -16(x2)	# 1315
	add		x13, x14, x13	# 1315
	lw		x13, 0(x13)	# 1315
	ori		x14, x0, 1	# 1315
	sub		x13, x13, x14	# 1315
	lw		x27, -12(x2)	# 1315
	sw		x4, -60(x2)	# 1315
	sw		x12, -80(x2)	# 1315
	sw		x9, -84(x2)	# 1315
	sw		x7, -88(x2)	# 1315
	addi	x5, x13, 0
	addi	x4, x12, 0
	sw		x1, -92(x2)	# 1315
	addi	x2, x2, -96	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 96	# 1315
	lw		x1, -92(x2)	# 1315
	ori		x4, x0, 118	# 1964
	ori		x5, x0, 4	# 1945
	mul		x5, x4, x5	# 1945
	lw		x6, -88(x2)	# 1945
	add		x5, x6, x5	# 1945
	lw		x5, 0(x5)	# 1945
	lw		x5, 0(x5)	# 639
	ori		x7, x0, 4	# 292
	lw		x8, -44(x2)	# 292
	mul		x7, x8, x7	# 292
	add		x7, x5, x7	# 292
	flw		f0, 0(x7)	# 292
	ori		x7, x0, 4	# 292
	mul		x7, x8, x7	# 292
	lw		x9, -84(x2)	# 292
	add		x7, x9, x7	# 292
	flw		f1, 0(x7)	# 292
	fmul	f0, f0, f1	# 292
	ori		x7, x0, 4	# 292
	lw		x10, -52(x2)	# 292
	mul		x7, x10, x7	# 292
	add		x7, x5, x7	# 292
	flw		f1, 0(x7)	# 292
	ori		x7, x0, 4	# 292
	mul		x7, x10, x7	# 292
	add		x7, x9, x7	# 292
	flw		f2, 0(x7)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	ori		x7, x0, 4	# 292
	lw		x11, -28(x2)	# 292
	mul		x7, x11, x7	# 292
	add		x5, x5, x7	# 292
	flw		f1, 0(x5)	# 292
	ori		x5, x0, 4	# 292
	mul		x5, x11, x5	# 292
	add		x5, x9, x5	# 292
	flw		f2, 0(x5)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	lui		x5, %hi(l.15659)	# 3
	ori		x5, x0, %lo(l.15659)	# 3
	flw		f1, 0(x5)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.296933	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.296932	# 3
fle_else.296933:
	ori		x5, x0, 1	# 3
fle_cont.296932:
	beq		x5, x8, beq.296935	# 1949
	ori		x4, x0, 119	# 1950
	ori		x5, x0, 4	# 1950
	mul		x4, x4, x5	# 1950
	add		x4, x6, x4	# 1950
	lw		x4, 0(x4)	# 1950
	lui		x5, %hi(l.18938)	# 1950
	ori		x5, x0, %lo(l.18938)	# 1950
	flw		f1, 0(x5)	# 1950
	fdiv	f0, f0, f1	# 1950
	lw		x27, -8(x2)	# 1950
	sw		x1, -92(x2)	# 1950
	addi	x2, x2, -96	# 1950
	lw		x31, 0(x27)	# 1950
	jalr	x1, x31, 0	# 1950
	addi	x2, x2, 96	# 1950
	lw		x1, -92(x2)	# 1950
	jal		x0, beq_cont.296934	# 1949
beq.296935:
	ori		x5, x0, 4	# 1952
	mul		x4, x4, x5	# 1952
	add		x4, x6, x4	# 1952
	lw		x4, 0(x4)	# 1952
	lui		x5, %hi(l.19040)	# 1952
	ori		x5, x0, %lo(l.19040)	# 1952
	flw		f1, 0(x5)	# 1952
	fdiv	f0, f0, f1	# 1952
	lw		x27, -8(x2)	# 1952
	sw		x1, -92(x2)	# 1952
	addi	x2, x2, -96	# 1952
	lw		x31, 0(x27)	# 1952
	jalr	x1, x31, 0	# 1952
	addi	x2, x2, 96	# 1952
	lw		x1, -92(x2)	# 1952
beq_cont.296934:
	ori		x7, x0, 116	# 1954
	lw		x4, -88(x2)	# 1954
	lw		x5, -84(x2)	# 1954
	lw		x6, -80(x2)	# 1954
	lw		x27, -4(x2)	# 1954
	sw		x1, -92(x2)	# 1954
	addi	x2, x2, -96	# 1954
	lw		x31, 0(x27)	# 1954
	jalr	x1, x31, 0	# 1954
	addi	x2, x2, 96	# 1954
	lw		x1, -92(x2)	# 1954
	lw		x4, -60(x2)	# 598
	lw		x5, 20(x4)	# 598
	ori		x6, x0, 4	# 2183
	lw		x7, -76(x2)	# 2183
	mul		x6, x7, x6	# 2183
	add		x5, x5, x6	# 2183
	lw		x5, 0(x5)	# 2183
	ori		x6, x0, 4	# 259
	lw		x8, -44(x2)	# 259
	mul		x6, x8, x6	# 259
	lw		x9, -40(x2)	# 259
	add		x6, x9, x6	# 259
	flw		f0, 0(x6)	# 259
	ori		x6, x0, 4	# 259
	mul		x6, x8, x6	# 259
	add		x6, x5, x6	# 259
	fsw		f0, 0(x6)	# 259
	ori		x6, x0, 4	# 260
	lw		x8, -52(x2)	# 260
	mul		x6, x8, x6	# 260
	add		x6, x9, x6	# 260
	flw		f0, 0(x6)	# 260
	ori		x6, x0, 4	# 260
	mul		x6, x8, x6	# 260
	add		x6, x5, x6	# 260
	fsw		f0, 0(x6)	# 260
	ori		x6, x0, 4	# 261
	lw		x10, -28(x2)	# 261
	mul		x6, x10, x6	# 261
	add		x6, x9, x6	# 261
	flw		f0, 0(x6)	# 261
	ori		x6, x0, 4	# 261
	mul		x6, x10, x6	# 261
	add		x5, x5, x6	# 261
	fsw		f0, 0(x5)	# 261
	jal		x0, beq_cont.296930	# 2170
beq.296931:
beq_cont.296930:
	lw		x5, -52(x2)	# 2185
	lw		x6, -76(x2)	# 2185
	add		x5, x6, x5	# 2185
	lw		x27, 0(x2)	# 2185
	lw		x31, 0(x27)	# 2185
	jalr	x0, x31, 0	# 2185
pretrace_pixels.2936:
	lw		x7, 84(x27)	# 2193
	lw		x8, 80(x27)	# 2193
	lw		x9, 76(x27)	# 2193
	lw		x10, 72(x27)	# 2193
	lw		x11, 68(x27)	# 2193
	lw		x12, 64(x27)	# 2193
	lw		x13, 60(x27)	# 2193
	lw		x14, 56(x27)	# 2193
	lw		x15, 52(x27)	# 2193
	lw		x16, 48(x27)	# 2193
	lw		x17, 44(x27)	# 2193
	lw		x18, 40(x27)	# 2193
	lw		x19, 36(x27)	# 2193
	lw		x20, 32(x27)	# 2193
	lw		x21, 28(x27)	# 2193
	lw		x22, 24(x27)	# 2193
	lw		x23, 20(x27)	# 2193
	lw		x24, 16(x27)	# 2193
	lw		x25, 12(x27)	# 2193
	lw		x26, 8(x27)	# 2193
	flw		f3, 4(x27)	# 2193
	ble		x25, x5, ble.296936	# 2193
	jalr	x0, x1, 0	# 2213
ble.296936:
	ori		x31, x0, 4	# 2195
	mul		x31, x25, x31	# 2195
	add		x14, x14, x31	# 2195
	flw		f4, 0(x14)	# 2195
	ori		x14, x0, 4	# 2195
	mul		x14, x25, x14	# 2195
	add		x14, x20, x14	# 2195
	lw		x14, 0(x14)	# 2195
	sub		x14, x5, x14	# 2195
	sw		x27, 0(x2)	# 14
	sw		x23, -4(x2)	# 14
	sw		x17, -8(x2)	# 14
	sw		x19, -12(x2)	# 14
	sw		x9, -16(x2)	# 14
	sw		x12, -20(x2)	# 14
	sw		x18, -24(x2)	# 14
	sw		x10, -28(x2)	# 14
	sw		x21, -32(x2)	# 14
	sw		x22, -36(x2)	# 14
	sw		x6, -40(x2)	# 14
	sw		x8, -44(x2)	# 14
	sw		x4, -48(x2)	# 14
	sw		x5, -52(x2)	# 14
	sw		x11, -56(x2)	# 14
	sw		x7, -60(x2)	# 14
	sw		x15, -64(x2)	# 14
	fsw		f3, -72(x2)	# 14
	fsw		f2, -80(x2)	# 14
	sw		x24, -88(x2)	# 14
	fsw		f1, -96(x2)	# 14
	sw		x26, -104(x2)	# 14
	sw		x16, -108(x2)	# 14
	fsw		f0, -112(x2)	# 14
	sw		x13, -120(x2)	# 14
	sw		x25, -124(x2)	# 14
	fsw		f4, -128(x2)	# 14
	ble		x25, x14, ble.296941	# 14
	sub		x14, x0, x14	# 16
	addi	x4, x14, 0
	sw		x1, -136(x2)	# 16
	addi	x2, x2, -140	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 140	# 16
	lw		x1, -136(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.296940	# 14
ble.296941:
	ori		x20, x0, 1	# 15
	ble		x20, x14, ble.296943	# 15
	lui		x14, %hi(l.15659)	# 15
	ori		x14, x0, %lo(l.15659)	# 15
	flw		f0, 0(x14)	# 15
	jal		x0, ble_cont.296942	# 15
ble.296943:
	ori		x20, x0, 1	# 15
	sub		x14, x14, x20	# 15
	addi	x4, x14, 0
	sw		x1, -136(x2)	# 15
	addi	x2, x2, -140	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 140	# 15
	lw		x1, -136(x2)	# 15
	lui		x4, %hi(l.15661)	# 15
	ori		x4, x0, %lo(l.15661)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.296942:
ble_cont.296940:
	flw		f1, -128(x2)	# 2195
	fmul	f0, f1, f0	# 2195
	ori		x4, x0, 4	# 2196
	lw		x5, -124(x2)	# 2196
	mul		x4, x5, x4	# 2196
	lw		x6, -120(x2)	# 2196
	add		x4, x6, x4	# 2196
	flw		f1, 0(x4)	# 2196
	fmul	f1, f0, f1	# 2196
	flw		f2, -112(x2)	# 2196
	fadd	f1, f1, f2	# 2196
	ori		x4, x0, 4	# 2196
	mul		x4, x5, x4	# 2196
	lw		x7, -108(x2)	# 2196
	add		x4, x7, x4	# 2196
	fsw		f1, 0(x4)	# 2196
	ori		x4, x0, 4	# 2197
	lw		x8, -104(x2)	# 2197
	mul		x4, x8, x4	# 2197
	add		x4, x6, x4	# 2197
	flw		f1, 0(x4)	# 2197
	fmul	f1, f0, f1	# 2197
	flw		f3, -96(x2)	# 2197
	fadd	f1, f1, f3	# 2197
	ori		x4, x0, 4	# 2197
	mul		x4, x8, x4	# 2197
	add		x4, x7, x4	# 2197
	fsw		f1, 0(x4)	# 2197
	ori		x4, x0, 4	# 2198
	lw		x9, -88(x2)	# 2198
	mul		x4, x9, x4	# 2198
	add		x4, x6, x4	# 2198
	flw		f1, 0(x4)	# 2198
	fmul	f0, f0, f1	# 2198
	flw		f1, -80(x2)	# 2198
	fadd	f0, f0, f1	# 2198
	ori		x4, x0, 4	# 2198
	mul		x4, x9, x4	# 2198
	add		x4, x7, x4	# 2198
	fsw		f0, 0(x4)	# 2198
	ori		x4, x0, 4	# 283
	mul		x4, x5, x4	# 283
	add		x4, x7, x4	# 283
	flw		f0, 0(x4)	# 283
	fmul	f0, f0, f0	# 8
	ori		x4, x0, 4	# 283
	mul		x4, x8, x4	# 283
	add		x4, x7, x4	# 283
	flw		f4, 0(x4)	# 283
	fmul	f4, f4, f4	# 8
	fadd	f0, f0, f4	# 283
	ori		x4, x0, 4	# 283
	mul		x4, x9, x4	# 283
	add		x4, x7, x4	# 283
	flw		f4, 0(x4)	# 283
	fmul	f4, f4, f4	# 8
	fadd	f0, f0, f4	# 283
	sw		x1, -136(x2)	# 283
	addi	x2, x2, -140	# 283
	jal		x1, min_caml_sqrt	# 283
	addi	x2, x2, 140	# 283
	lw		x1, -136(x2)	# 283
	flw		f1, -72(x2)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.296945	# 1
	ori		x4, x0, 1	# 1
	jal		x0, feq_cont.296944	# 1
feq_else.296945:
	addi	x4, x0, 0	# 1
feq_cont.296944:
	lw		x5, -124(x2)	# 284
	beq		x4, x5, beq.296947	# 284
	lui		x4, %hi(l.15661)	# 284
	ori		x4, x0, %lo(l.15661)	# 284
	flw		f0, 0(x4)	# 284
	jal		x0, beq_cont.296946	# 284
beq.296947:
	lui		x4, %hi(l.15661)	# 284
	ori		x4, x0, %lo(l.15661)	# 284
	flw		f2, 0(x4)	# 284
	fdiv	f0, f2, f0	# 284
beq_cont.296946:
	ori		x4, x0, 4	# 285
	mul		x4, x5, x4	# 285
	lw		x6, -108(x2)	# 285
	add		x4, x6, x4	# 285
	flw		f2, 0(x4)	# 285
	fmul	f2, f2, f0	# 285
	ori		x4, x0, 4	# 285
	mul		x4, x5, x4	# 285
	add		x4, x6, x4	# 285
	fsw		f2, 0(x4)	# 285
	ori		x4, x0, 4	# 286
	lw		x7, -104(x2)	# 286
	mul		x4, x7, x4	# 286
	add		x4, x6, x4	# 286
	flw		f2, 0(x4)	# 286
	fmul	f2, f2, f0	# 286
	ori		x4, x0, 4	# 286
	mul		x4, x7, x4	# 286
	add		x4, x6, x4	# 286
	fsw		f2, 0(x4)	# 286
	ori		x4, x0, 4	# 287
	lw		x8, -88(x2)	# 287
	mul		x4, x8, x4	# 287
	add		x4, x6, x4	# 287
	flw		f2, 0(x4)	# 287
	fmul	f0, f2, f0	# 287
	ori		x4, x0, 4	# 287
	mul		x4, x8, x4	# 287
	add		x4, x6, x4	# 287
	fsw		f0, 0(x4)	# 287
	ori		x4, x0, 4	# 247
	mul		x4, x5, x4	# 247
	lw		x9, -64(x2)	# 247
	add		x4, x9, x4	# 247
	fsw		f1, 0(x4)	# 247
	ori		x4, x0, 4	# 248
	mul		x4, x7, x4	# 248
	add		x4, x9, x4	# 248
	fsw		f1, 0(x4)	# 248
	ori		x4, x0, 4	# 249
	mul		x4, x8, x4	# 249
	add		x4, x9, x4	# 249
	fsw		f1, 0(x4)	# 249
	ori		x4, x0, 4	# 259
	mul		x4, x5, x4	# 259
	lw		x10, -60(x2)	# 259
	add		x4, x10, x4	# 259
	flw		f0, 0(x4)	# 259
	ori		x4, x0, 4	# 259
	mul		x4, x5, x4	# 259
	lw		x11, -56(x2)	# 259
	add		x4, x11, x4	# 259
	fsw		f0, 0(x4)	# 259
	ori		x4, x0, 4	# 260
	mul		x4, x7, x4	# 260
	add		x4, x10, x4	# 260
	flw		f0, 0(x4)	# 260
	ori		x4, x0, 4	# 260
	mul		x4, x7, x4	# 260
	add		x4, x11, x4	# 260
	fsw		f0, 0(x4)	# 260
	ori		x4, x0, 4	# 261
	mul		x4, x8, x4	# 261
	add		x4, x10, x4	# 261
	flw		f0, 0(x4)	# 261
	ori		x4, x0, 4	# 261
	mul		x4, x8, x4	# 261
	add		x4, x11, x4	# 261
	fsw		f0, 0(x4)	# 261
	lui		x4, %hi(l.15661)	# 2204
	ori		x4, x0, %lo(l.15661)	# 2204
	flw		f0, 0(x4)	# 2204
	ori		x4, x0, 4	# 2204
	lw		x10, -52(x2)	# 2204
	mul		x4, x10, x4	# 2204
	lw		x11, -48(x2)	# 2204
	add		x4, x11, x4	# 2204
	lw		x4, 0(x4)	# 2204
	lw		x27, -44(x2)	# 2204
	addi	x31, x6, 0
	addi	x6, x4, 0
	addi	x4, x5, 0
	addi	x5, x31, 0
	sw		x1, -136(x2)	# 2204
	addi	x2, x2, -140	# 2204
	lw		x31, 0(x27)	# 2204
	jalr	x1, x31, 0	# 2204
	addi	x2, x2, 140	# 2204
	lw		x1, -136(x2)	# 2204
	ori		x4, x0, 4	# 2205
	lw		x5, -52(x2)	# 2205
	mul		x4, x5, x4	# 2205
	lw		x6, -48(x2)	# 2205
	add		x4, x6, x4	# 2205
	lw		x4, 0(x4)	# 2205
	lw		x4, 0(x4)	# 562
	ori		x7, x0, 4	# 259
	lw		x8, -124(x2)	# 259
	mul		x7, x8, x7	# 259
	lw		x9, -64(x2)	# 259
	add		x7, x9, x7	# 259
	flw		f0, 0(x7)	# 259
	ori		x7, x0, 4	# 259
	mul		x7, x8, x7	# 259
	add		x7, x4, x7	# 259
	fsw		f0, 0(x7)	# 259
	ori		x7, x0, 4	# 260
	lw		x10, -104(x2)	# 260
	mul		x7, x10, x7	# 260
	add		x7, x9, x7	# 260
	flw		f0, 0(x7)	# 260
	ori		x7, x0, 4	# 260
	mul		x7, x10, x7	# 260
	add		x7, x4, x7	# 260
	fsw		f0, 0(x7)	# 260
	ori		x7, x0, 4	# 261
	lw		x11, -88(x2)	# 261
	mul		x7, x11, x7	# 261
	add		x7, x9, x7	# 261
	flw		f0, 0(x7)	# 261
	ori		x7, x0, 4	# 261
	mul		x7, x11, x7	# 261
	add		x4, x4, x7	# 261
	fsw		f0, 0(x4)	# 261
	ori		x4, x0, 4	# 2206
	mul		x4, x5, x4	# 2206
	add		x4, x6, x4	# 2206
	lw		x4, 0(x4)	# 2206
	lw		x4, 24(x4)	# 621
	ori		x7, x0, 4	# 623
	mul		x7, x8, x7	# 623
	add		x4, x4, x7	# 623
	lw		x7, -40(x2)	# 623
	sw		x7, 0(x4)	# 623
	ori		x4, x0, 4	# 2209
	mul		x4, x5, x4	# 2209
	add		x4, x6, x4	# 2209
	lw		x4, 0(x4)	# 2209
	lw		x9, 8(x4)	# 577
	ori		x12, x0, 4	# 2063
	mul		x12, x8, x12	# 2063
	add		x9, x9, x12	# 2063
	lw		x9, 0(x9)	# 2063
	ble		x8, x9, ble.296949	# 2167
	jal		x0, ble_cont.296948	# 2167
ble.296949:
	lw		x9, 12(x4)	# 584
	ori		x12, x0, 4	# 2170
	mul		x12, x8, x12	# 2170
	add		x9, x9, x12	# 2170
	lw		x9, 0(x9)	# 2170
	addi	x12, x0, 0	# 2170
	beq		x9, x12, beq.296951	# 2170
	lw		x9, 24(x4)	# 614
	ori		x12, x0, 4	# 616
	mul		x12, x8, x12	# 616
	add		x9, x9, x12	# 616
	lw		x9, 0(x9)	# 616
	ori		x12, x0, 4	# 247
	mul		x12, x8, x12	# 247
	lw		x13, -36(x2)	# 247
	add		x12, x13, x12	# 247
	flw		f0, -72(x2)	# 247
	fsw		f0, 0(x12)	# 247
	ori		x12, x0, 4	# 248
	mul		x12, x10, x12	# 248
	add		x12, x13, x12	# 248
	fsw		f0, 0(x12)	# 248
	ori		x12, x0, 4	# 249
	mul		x12, x11, x12	# 249
	add		x12, x13, x12	# 249
	fsw		f0, 0(x12)	# 249
	lw		x12, 28(x4)	# 628
	lw		x14, 4(x4)	# 569
	ori		x15, x0, 4	# 2179
	mul		x9, x9, x15	# 2179
	lw		x15, -32(x2)	# 2179
	add		x9, x15, x9	# 2179
	lw		x9, 0(x9)	# 2179
	ori		x15, x0, 4	# 2180
	mul		x15, x8, x15	# 2180
	add		x12, x12, x15	# 2180
	lw		x12, 0(x12)	# 2180
	ori		x15, x0, 4	# 2181
	mul		x15, x8, x15	# 2181
	add		x14, x14, x15	# 2181
	lw		x14, 0(x14)	# 2181
	ori		x15, x0, 4	# 259
	mul		x15, x8, x15	# 259
	add		x15, x14, x15	# 259
	flw		f0, 0(x15)	# 259
	ori		x15, x0, 4	# 259
	mul		x15, x8, x15	# 259
	lw		x16, -28(x2)	# 259
	add		x15, x16, x15	# 259
	fsw		f0, 0(x15)	# 259
	ori		x15, x0, 4	# 260
	mul		x15, x10, x15	# 260
	add		x15, x14, x15	# 260
	flw		f0, 0(x15)	# 260
	ori		x15, x0, 4	# 260
	mul		x15, x10, x15	# 260
	add		x15, x16, x15	# 260
	fsw		f0, 0(x15)	# 260
	ori		x15, x0, 4	# 261
	mul		x15, x11, x15	# 261
	add		x15, x14, x15	# 261
	flw		f0, 0(x15)	# 261
	ori		x15, x0, 4	# 261
	mul		x15, x11, x15	# 261
	add		x15, x16, x15	# 261
	fsw		f0, 0(x15)	# 261
	addi	x15, x0, 0	# 1315
	ori		x16, x0, 4	# 1315
	mul		x15, x15, x16	# 1315
	lw		x16, -24(x2)	# 1315
	add		x15, x16, x15	# 1315
	lw		x15, 0(x15)	# 1315
	ori		x16, x0, 1	# 1315
	sub		x15, x15, x16	# 1315
	lw		x27, -20(x2)	# 1315
	sw		x4, -136(x2)	# 1315
	sw		x14, -140(x2)	# 1315
	sw		x12, -144(x2)	# 1315
	sw		x9, -148(x2)	# 1315
	addi	x5, x15, 0
	addi	x4, x14, 0
	sw		x1, -152(x2)	# 1315
	addi	x2, x2, -156	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 156	# 1315
	lw		x1, -152(x2)	# 1315
	ori		x4, x0, 118	# 1964
	ori		x5, x0, 4	# 1945
	mul		x5, x4, x5	# 1945
	lw		x6, -148(x2)	# 1945
	add		x5, x6, x5	# 1945
	lw		x5, 0(x5)	# 1945
	lw		x5, 0(x5)	# 639
	ori		x7, x0, 4	# 292
	lw		x8, -124(x2)	# 292
	mul		x7, x8, x7	# 292
	add		x7, x5, x7	# 292
	flw		f0, 0(x7)	# 292
	ori		x7, x0, 4	# 292
	mul		x7, x8, x7	# 292
	lw		x9, -144(x2)	# 292
	add		x7, x9, x7	# 292
	flw		f1, 0(x7)	# 292
	fmul	f0, f0, f1	# 292
	ori		x7, x0, 4	# 292
	lw		x10, -104(x2)	# 292
	mul		x7, x10, x7	# 292
	add		x7, x5, x7	# 292
	flw		f1, 0(x7)	# 292
	ori		x7, x0, 4	# 292
	mul		x7, x10, x7	# 292
	add		x7, x9, x7	# 292
	flw		f2, 0(x7)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	ori		x7, x0, 4	# 292
	lw		x11, -88(x2)	# 292
	mul		x7, x11, x7	# 292
	add		x5, x5, x7	# 292
	flw		f1, 0(x5)	# 292
	ori		x5, x0, 4	# 292
	mul		x5, x11, x5	# 292
	add		x5, x9, x5	# 292
	flw		f2, 0(x5)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	lui		x5, %hi(l.15659)	# 3
	ori		x5, x0, %lo(l.15659)	# 3
	flw		f1, 0(x5)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.296953	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.296952	# 3
fle_else.296953:
	ori		x5, x0, 1	# 3
fle_cont.296952:
	beq		x5, x8, beq.296955	# 1949
	ori		x4, x0, 119	# 1950
	ori		x5, x0, 4	# 1950
	mul		x4, x4, x5	# 1950
	add		x4, x6, x4	# 1950
	lw		x4, 0(x4)	# 1950
	lui		x5, %hi(l.18938)	# 1950
	ori		x5, x0, %lo(l.18938)	# 1950
	flw		f1, 0(x5)	# 1950
	fdiv	f0, f0, f1	# 1950
	lw		x27, -16(x2)	# 1950
	sw		x1, -152(x2)	# 1950
	addi	x2, x2, -156	# 1950
	lw		x31, 0(x27)	# 1950
	jalr	x1, x31, 0	# 1950
	addi	x2, x2, 156	# 1950
	lw		x1, -152(x2)	# 1950
	jal		x0, beq_cont.296954	# 1949
beq.296955:
	ori		x5, x0, 4	# 1952
	mul		x4, x4, x5	# 1952
	add		x4, x6, x4	# 1952
	lw		x4, 0(x4)	# 1952
	lui		x5, %hi(l.19040)	# 1952
	ori		x5, x0, %lo(l.19040)	# 1952
	flw		f1, 0(x5)	# 1952
	fdiv	f0, f0, f1	# 1952
	lw		x27, -16(x2)	# 1952
	sw		x1, -152(x2)	# 1952
	addi	x2, x2, -156	# 1952
	lw		x31, 0(x27)	# 1952
	jalr	x1, x31, 0	# 1952
	addi	x2, x2, 156	# 1952
	lw		x1, -152(x2)	# 1952
beq_cont.296954:
	ori		x7, x0, 116	# 1954
	lw		x4, -148(x2)	# 1954
	lw		x5, -144(x2)	# 1954
	lw		x6, -140(x2)	# 1954
	lw		x27, -12(x2)	# 1954
	sw		x1, -152(x2)	# 1954
	addi	x2, x2, -156	# 1954
	lw		x31, 0(x27)	# 1954
	jalr	x1, x31, 0	# 1954
	addi	x2, x2, 156	# 1954
	lw		x1, -152(x2)	# 1954
	lw		x4, -136(x2)	# 598
	lw		x5, 20(x4)	# 598
	ori		x6, x0, 4	# 2183
	lw		x7, -124(x2)	# 2183
	mul		x6, x7, x6	# 2183
	add		x5, x5, x6	# 2183
	lw		x5, 0(x5)	# 2183
	ori		x6, x0, 4	# 259
	mul		x6, x7, x6	# 259
	lw		x8, -36(x2)	# 259
	add		x6, x8, x6	# 259
	flw		f0, 0(x6)	# 259
	ori		x6, x0, 4	# 259
	mul		x6, x7, x6	# 259
	add		x6, x5, x6	# 259
	fsw		f0, 0(x6)	# 259
	ori		x6, x0, 4	# 260
	lw		x7, -104(x2)	# 260
	mul		x6, x7, x6	# 260
	add		x6, x8, x6	# 260
	flw		f0, 0(x6)	# 260
	ori		x6, x0, 4	# 260
	mul		x6, x7, x6	# 260
	add		x6, x5, x6	# 260
	fsw		f0, 0(x6)	# 260
	ori		x6, x0, 4	# 261
	lw		x9, -88(x2)	# 261
	mul		x6, x9, x6	# 261
	add		x6, x8, x6	# 261
	flw		f0, 0(x6)	# 261
	ori		x6, x0, 4	# 261
	mul		x6, x9, x6	# 261
	add		x5, x5, x6	# 261
	fsw		f0, 0(x5)	# 261
	jal		x0, beq_cont.296950	# 2170
beq.296951:
beq_cont.296950:
	ori		x5, x0, 1	# 2185
	lw		x27, -8(x2)	# 2185
	sw		x1, -152(x2)	# 2185
	addi	x2, x2, -156	# 2185
	lw		x31, 0(x27)	# 2185
	jalr	x1, x31, 0	# 2185
	addi	x2, x2, 156	# 2185
	lw		x1, -152(x2)	# 2185
ble_cont.296948:
	lw		x4, -104(x2)	# 2211
	lw		x5, -52(x2)	# 2211
	sub		x5, x5, x4	# 2211
	lw		x6, -40(x2)	# 224
	add		x4, x6, x4	# 224
	lw		x6, -4(x2)	# 225
	ble		x6, x4, ble.296957	# 225
	addi	x6, x4, 0	# 225
	jal		x0, ble_cont.296956	# 225
ble.296957:
	sub		x6, x4, x6	# 225
ble_cont.296956:
	flw		f0, -112(x2)	# 2211
	flw		f1, -96(x2)	# 2211
	flw		f2, -80(x2)	# 2211
	lw		x4, -48(x2)	# 2211
	lw		x27, 0(x2)	# 2211
	lw		x31, 0(x27)	# 2211
	jalr	x0, x31, 0	# 2211
pretrace_line.2943:
	lw		x7, 36(x27)	# 2218
	lw		x8, 32(x27)	# 2218
	lw		x9, 28(x27)	# 2218
	lw		x10, 24(x27)	# 2218
	lw		x11, 20(x27)	# 2218
	lw		x12, 16(x27)	# 2218
	lw		x13, 12(x27)	# 2218
	lw		x14, 8(x27)	# 2218
	lw		x15, 4(x27)	# 2218
	ori		x16, x0, 4	# 2218
	mul		x16, x14, x16	# 2218
	add		x9, x9, x16	# 2218
	flw		f0, 0(x9)	# 2218
	ori		x9, x0, 4	# 2218
	mul		x9, x15, x9	# 2218
	add		x9, x12, x9	# 2218
	lw		x9, 0(x9)	# 2218
	sub		x5, x5, x9	# 2218
	sw		x6, 0(x2)	# 14
	sw		x4, -4(x2)	# 14
	sw		x10, -8(x2)	# 14
	sw		x11, -12(x2)	# 14
	sw		x13, -16(x2)	# 14
	sw		x15, -20(x2)	# 14
	sw		x7, -24(x2)	# 14
	sw		x8, -28(x2)	# 14
	sw		x14, -32(x2)	# 14
	fsw		f0, -40(x2)	# 14
	ble		x14, x5, ble.296960	# 14
	sub		x5, x0, x5	# 16
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 16
	addi	x2, x2, -52	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 52	# 16
	lw		x1, -48(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.296959	# 14
ble.296960:
	ori		x9, x0, 1	# 15
	ble		x9, x5, ble.296962	# 15
	lui		x5, %hi(l.15659)	# 15
	ori		x5, x0, %lo(l.15659)	# 15
	flw		f0, 0(x5)	# 15
	jal		x0, ble_cont.296961	# 15
ble.296962:
	ori		x9, x0, 1	# 15
	sub		x5, x5, x9	# 15
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 15
	addi	x2, x2, -52	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 52	# 15
	lw		x1, -48(x2)	# 15
	lui		x4, %hi(l.15661)	# 15
	ori		x4, x0, %lo(l.15661)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.296961:
ble_cont.296959:
	flw		f1, -40(x2)	# 2218
	fmul	f0, f1, f0	# 2218
	ori		x4, x0, 4	# 2221
	lw		x5, -32(x2)	# 2221
	mul		x4, x5, x4	# 2221
	lw		x6, -28(x2)	# 2221
	add		x4, x6, x4	# 2221
	flw		f1, 0(x4)	# 2221
	fmul	f1, f0, f1	# 2221
	ori		x4, x0, 4	# 2221
	mul		x4, x5, x4	# 2221
	lw		x7, -24(x2)	# 2221
	add		x4, x7, x4	# 2221
	flw		f2, 0(x4)	# 2221
	fadd	f1, f1, f2	# 2221
	ori		x4, x0, 4	# 2222
	lw		x8, -20(x2)	# 2222
	mul		x4, x8, x4	# 2222
	add		x4, x6, x4	# 2222
	flw		f2, 0(x4)	# 2222
	fmul	f2, f0, f2	# 2222
	ori		x4, x0, 4	# 2222
	mul		x4, x8, x4	# 2222
	add		x4, x7, x4	# 2222
	flw		f3, 0(x4)	# 2222
	fadd	f2, f2, f3	# 2222
	ori		x4, x0, 4	# 2223
	lw		x9, -16(x2)	# 2223
	mul		x4, x9, x4	# 2223
	add		x4, x6, x4	# 2223
	flw		f3, 0(x4)	# 2223
	fmul	f0, f0, f3	# 2223
	ori		x4, x0, 4	# 2223
	mul		x4, x9, x4	# 2223
	add		x4, x7, x4	# 2223
	flw		f3, 0(x4)	# 2223
	fadd	f0, f0, f3	# 2223
	ori		x4, x0, 4	# 2224
	mul		x4, x5, x4	# 2224
	lw		x5, -12(x2)	# 2224
	add		x4, x5, x4	# 2224
	lw		x4, 0(x4)	# 2224
	sub		x5, x4, x8	# 2224
	lw		x4, -4(x2)	# 2224
	lw		x6, 0(x2)	# 2224
	lw		x27, -8(x2)	# 2224
	fsub	f31, f31, f31
	fadd	f31, f31, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f31
	lw		x31, 0(x27)	# 2224
	jalr	x0, x31, 0	# 2224
scan_pixel.2947:
	lw		x10, 44(x27)	# 2234
	lw		x11, 40(x27)	# 2234
	lw		x12, 36(x27)	# 2234
	lw		x13, 32(x27)	# 2234
	lw		x14, 28(x27)	# 2234
	lw		x15, 24(x27)	# 2234
	lw		x16, 20(x27)	# 2234
	lw		x17, 16(x27)	# 2234
	lw		x18, 12(x27)	# 2234
	lw		x19, 8(x27)	# 2234
	lw		x20, 4(x27)	# 2234
	ori		x21, x0, 4	# 2234
	mul		x21, x19, x21	# 2234
	add		x21, x13, x21	# 2234
	lw		x21, 0(x21)	# 2234
	ble		x21, x4, ble.296963	# 2234
	ori		x21, x0, 4	# 2237
	mul		x21, x4, x21	# 2237
	add		x21, x7, x21	# 2237
	lw		x21, 0(x21)	# 2237
	lw		x21, 0(x21)	# 562
	ori		x22, x0, 4	# 259
	mul		x22, x19, x22	# 259
	add		x22, x21, x22	# 259
	flw		f0, 0(x22)	# 259
	ori		x22, x0, 4	# 259
	mul		x22, x19, x22	# 259
	add		x22, x12, x22	# 259
	fsw		f0, 0(x22)	# 259
	ori		x22, x0, 4	# 260
	mul		x22, x20, x22	# 260
	add		x22, x21, x22	# 260
	flw		f0, 0(x22)	# 260
	ori		x22, x0, 4	# 260
	mul		x22, x20, x22	# 260
	add		x22, x12, x22	# 260
	fsw		f0, 0(x22)	# 260
	ori		x22, x0, 4	# 261
	mul		x22, x17, x22	# 261
	add		x21, x21, x22	# 261
	flw		f0, 0(x21)	# 261
	ori		x21, x0, 4	# 261
	mul		x21, x17, x21	# 261
	add		x21, x12, x21	# 261
	fsw		f0, 0(x21)	# 261
	ori		x21, x0, 4	# 2050
	mul		x21, x20, x21	# 2050
	add		x21, x13, x21	# 2050
	lw		x21, 0(x21)	# 2050
	add		x22, x5, x20	# 2050
	ble		x21, x22, ble.296965	# 2050
	ble		x5, x19, ble.296967	# 2051
	ori		x21, x0, 4	# 2052
	mul		x21, x19, x21	# 2052
	add		x21, x13, x21	# 2052
	lw		x21, 0(x21)	# 2052
	add		x23, x4, x20	# 2052
	ble		x21, x23, ble.296969	# 2052
	ble		x4, x19, ble.296971	# 2053
	ori		x21, x0, 1	# 2054
	jal		x0, ble_cont.296970	# 2053
ble.296971:
	addi	x21, x0, 0	# 2055
ble_cont.296970:
	jal		x0, ble_cont.296968	# 2052
ble.296969:
	addi	x21, x0, 0	# 2056
ble_cont.296968:
	jal		x0, ble_cont.296966	# 2051
ble.296967:
	addi	x21, x0, 0	# 2057
ble_cont.296966:
	jal		x0, ble_cont.296964	# 2050
ble.296965:
	addi	x21, x0, 0	# 2058
ble_cont.296964:
	sw		x27, 0(x2)	# 2240
	sw		x10, -4(x2)	# 2240
	sw		x8, -8(x2)	# 2240
	sw		x6, -12(x2)	# 2240
	sw		x11, -16(x2)	# 2240
	sw		x14, -20(x2)	# 2240
	sw		x5, -24(x2)	# 2240
	sw		x22, -28(x2)	# 2240
	sw		x17, -32(x2)	# 2240
	sw		x7, -36(x2)	# 2240
	sw		x13, -40(x2)	# 2240
	sw		x20, -44(x2)	# 2240
	sw		x4, -48(x2)	# 2240
	sw		x19, -52(x2)	# 2240
	sw		x12, -56(x2)	# 2240
	sw		x18, -60(x2)	# 2240
	sw		x9, -64(x2)	# 2240
	beq		x21, x19, beq.296973	# 2240
	addi	x16, x0, 0	# 2241
	ori		x21, x0, 4	# 2087
	mul		x21, x4, x21	# 2087
	add		x21, x7, x21	# 2087
	lw		x21, 0(x21)	# 2087
	addi	x23, x0, 0	# 2091
	lw		x24, 8(x21)	# 577
	ori		x25, x0, 4	# 2063
	mul		x25, x16, x25	# 2063
	add		x24, x24, x25	# 2063
	lw		x24, 0(x24)	# 2063
	ble		x23, x24, ble.296975	# 2091
	jal		x0, ble_cont.296974	# 2091
ble.296975:
	ori		x24, x0, 4	# 2069
	mul		x24, x4, x24	# 2069
	add		x24, x7, x24	# 2069
	lw		x24, 0(x24)	# 2069
	lw		x24, 8(x24)	# 577
	ori		x25, x0, 4	# 2063
	mul		x25, x16, x25	# 2063
	add		x24, x24, x25	# 2063
	lw		x24, 0(x24)	# 2063
	ori		x25, x0, 4	# 2071
	mul		x25, x4, x25	# 2071
	add		x25, x6, x25	# 2071
	lw		x25, 0(x25)	# 2071
	lw		x25, 8(x25)	# 577
	ori		x26, x0, 4	# 2063
	mul		x26, x16, x26	# 2063
	add		x25, x25, x26	# 2063
	lw		x25, 0(x25)	# 2063
	beq		x25, x24, beq.296977	# 2071
	addi	x24, x0, 0	# 2079
	jal		x0, beq_cont.296976	# 2071
beq.296977:
	ori		x25, x0, 4	# 2072
	mul		x25, x4, x25	# 2072
	add		x25, x8, x25	# 2072
	lw		x25, 0(x25)	# 2072
	lw		x25, 8(x25)	# 577
	ori		x26, x0, 4	# 2063
	mul		x26, x16, x26	# 2063
	add		x25, x25, x26	# 2063
	lw		x25, 0(x25)	# 2063
	beq		x25, x24, beq.296979	# 2072
	addi	x24, x0, 0	# 2078
	jal		x0, beq_cont.296978	# 2072
beq.296979:
	sub		x25, x4, x20	# 2073
	ori		x26, x0, 4	# 2073
	mul		x25, x25, x26	# 2073
	add		x25, x7, x25	# 2073
	lw		x25, 0(x25)	# 2073
	lw		x25, 8(x25)	# 577
	ori		x26, x0, 4	# 2063
	mul		x26, x16, x26	# 2063
	add		x25, x25, x26	# 2063
	lw		x25, 0(x25)	# 2063
	beq		x25, x24, beq.296981	# 2073
	addi	x24, x0, 0	# 2077
	jal		x0, beq_cont.296980	# 2073
beq.296981:
	add		x25, x4, x20	# 2074
	ori		x26, x0, 4	# 2074
	mul		x25, x25, x26	# 2074
	add		x25, x7, x25	# 2074
	lw		x25, 0(x25)	# 2074
	lw		x25, 8(x25)	# 577
	ori		x26, x0, 4	# 2063
	mul		x26, x16, x26	# 2063
	add		x25, x25, x26	# 2063
	lw		x25, 0(x25)	# 2063
	beq		x25, x24, beq.296983	# 2074
	addi	x24, x0, 0	# 2076
	jal		x0, beq_cont.296982	# 2074
beq.296983:
	ori		x24, x0, 1	# 2075
beq_cont.296982:
beq_cont.296980:
beq_cont.296978:
beq_cont.296976:
	beq		x24, x23, beq.296985	# 2093
	lw		x21, 12(x21)	# 584
	ori		x23, x0, 4	# 2097
	mul		x23, x16, x23	# 2097
	add		x21, x21, x23	# 2097
	lw		x21, 0(x21)	# 2097
	addi	x23, x0, 0	# 2097
	beq		x21, x23, beq.296987	# 2097
	addi	x5, x6, 0
	addi	x27, x15, 0
	addi	x6, x7, 0
	addi	x7, x8, 0
	addi	x8, x16, 0
	sw		x1, -68(x2)	# 2098
	addi	x2, x2, -72	# 2098
	lw		x31, 0(x27)	# 2098
	jalr	x1, x31, 0	# 2098
	addi	x2, x2, 72	# 2098
	lw		x1, -68(x2)	# 2098
	jal		x0, beq_cont.296986	# 2097
beq.296987:
beq_cont.296986:
	ori		x9, x0, 1	# 2102
	lw		x4, -48(x2)	# 2102
	lw		x5, -24(x2)	# 2102
	lw		x6, -12(x2)	# 2102
	lw		x7, -36(x2)	# 2102
	lw		x8, -8(x2)	# 2102
	lw		x27, -16(x2)	# 2102
	sw		x1, -68(x2)	# 2102
	addi	x2, x2, -72	# 2102
	lw		x31, 0(x27)	# 2102
	jalr	x1, x31, 0	# 2102
	addi	x2, x2, 72	# 2102
	lw		x1, -68(x2)	# 2102
	jal		x0, beq_cont.296984	# 2093
beq.296985:
	ori		x15, x0, 4	# 2105
	mul		x15, x4, x15	# 2105
	add		x15, x7, x15	# 2105
	lw		x15, 0(x15)	# 2105
	addi	x5, x16, 0
	addi	x4, x15, 0
	addi	x27, x14, 0
	sw		x1, -68(x2)	# 2105
	addi	x2, x2, -72	# 2105
	lw		x31, 0(x27)	# 2105
	jalr	x1, x31, 0	# 2105
	addi	x2, x2, 72	# 2105
	lw		x1, -68(x2)	# 2105
beq_cont.296984:
ble_cont.296974:
	jal		x0, beq_cont.296972	# 2240
beq.296973:
	ori		x15, x0, 4	# 2243
	mul		x15, x4, x15	# 2243
	add		x15, x7, x15	# 2243
	lw		x15, 0(x15)	# 2243
	addi	x21, x0, 0	# 2243
	lw		x23, 8(x15)	# 577
	addi	x24, x0, 0	# 2038
	ori		x25, x0, 4	# 2038
	mul		x25, x21, x25	# 2038
	add		x23, x23, x25	# 2038
	lw		x23, 0(x23)	# 2038
	ble		x24, x23, ble.296989	# 2038
	jal		x0, ble_cont.296988	# 2038
ble.296989:
	lw		x23, 12(x15)	# 584
	ori		x24, x0, 4	# 2040
	mul		x24, x21, x24	# 2040
	add		x23, x23, x24	# 2040
	lw		x23, 0(x23)	# 2040
	addi	x24, x0, 0	# 2040
	sw		x15, -68(x2)	# 2040
	beq		x23, x24, beq.296991	# 2040
	addi	x5, x21, 0
	addi	x4, x15, 0
	addi	x27, x16, 0
	sw		x1, -72(x2)	# 2041
	addi	x2, x2, -76	# 2041
	lw		x31, 0(x27)	# 2041
	jalr	x1, x31, 0	# 2041
	addi	x2, x2, 76	# 2041
	lw		x1, -72(x2)	# 2041
	jal		x0, beq_cont.296990	# 2040
beq.296991:
beq_cont.296990:
	ori		x5, x0, 1	# 2043
	lw		x4, -68(x2)	# 2043
	lw		x27, -20(x2)	# 2043
	sw		x1, -72(x2)	# 2043
	addi	x2, x2, -76	# 2043
	lw		x31, 0(x27)	# 2043
	jalr	x1, x31, 0	# 2043
	addi	x2, x2, 76	# 2043
	lw		x1, -72(x2)	# 2043
ble_cont.296988:
beq_cont.296972:
	lw		x4, -60(x2)	# 2140
	lw		x5, -64(x2)	# 2140
	beq		x5, x4, beq.296993	# 2140
	addi	x4, x0, 0	# 2148
	ori		x6, x0, 4	# 2148
	mul		x4, x4, x6	# 2148
	lw		x6, -56(x2)	# 2148
	add		x4, x6, x4	# 2148
	flw		f0, 0(x4)	# 2148
	lui		x4, %hi(l.15659)	# 10
	ori		x4, x0, %lo(l.15659)	# 10
	flw		f1, 0(x4)	# 10
	fle		x31, f1, f0	# 10
	beq		x31, x0, fle_else.296995	# 10
	lui		x4, %hi(l.15661)	# 11
	ori		x4, x0, %lo(l.15661)	# 11
	flw		f1, 0(x4)	# 11
	fle		x31, f1, f0	# 11
	beq		x31, x0, fle_else.296997	# 11
	lui		x4, %hi(l.15661)	# 11
	ori		x4, x0, %lo(l.15661)	# 11
	flw		f1, 0(x4)	# 11
	fsub	f0, f0, f1	# 11
	sw		x1, -72(x2)	# 11
	addi	x2, x2, -76	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 76	# 11
	lw		x1, -72(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.296996	# 11
fle_else.296997:
	addi	x4, x0, 0	# 11
fle_cont.296996:
	jal		x0, fle_cont.296994	# 10
fle_else.296995:
	fsub	x31, x31, x31	# 12
	fsub	f0, x31, f0	# 12
	sw		x1, -72(x2)	# 12
	addi	x2, x2, -76	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 76	# 12
	lw		x1, -72(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.296994:
	ori		x5, x0, 255	# 2135
	ble		x4, x5, ble.296999	# 2135
	ori		x4, x0, 255	# 2135
	jal		x0, ble_cont.296998	# 2135
ble.296999:
	lw		x5, -52(x2)	# 2135
	ble		x5, x4, ble.297001	# 2135
	addi	x4, x0, 0	# 2135
	jal		x0, ble_cont.297000	# 2135
ble.297001:
ble_cont.297000:
ble_cont.296998:
	sw		x1, -72(x2)	# 2136
	addi	x2, x2, -76	# 2136
	jal		x1, min_caml_print_char	# 2136
	addi	x2, x2, 76	# 2136
	lw		x1, -72(x2)	# 2136
	ori		x4, x0, 1	# 2149
	ori		x5, x0, 4	# 2149
	mul		x4, x4, x5	# 2149
	lw		x5, -56(x2)	# 2149
	add		x4, x5, x4	# 2149
	flw		f0, 0(x4)	# 2149
	lui		x4, %hi(l.15659)	# 10
	ori		x4, x0, %lo(l.15659)	# 10
	flw		f1, 0(x4)	# 10
	fle		x31, f1, f0	# 10
	beq		x31, x0, fle_else.297003	# 10
	lui		x4, %hi(l.15661)	# 11
	ori		x4, x0, %lo(l.15661)	# 11
	flw		f1, 0(x4)	# 11
	fle		x31, f1, f0	# 11
	beq		x31, x0, fle_else.297005	# 11
	lui		x4, %hi(l.15661)	# 11
	ori		x4, x0, %lo(l.15661)	# 11
	flw		f1, 0(x4)	# 11
	fsub	f0, f0, f1	# 11
	sw		x1, -72(x2)	# 11
	addi	x2, x2, -76	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 76	# 11
	lw		x1, -72(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.297004	# 11
fle_else.297005:
	addi	x4, x0, 0	# 11
fle_cont.297004:
	jal		x0, fle_cont.297002	# 10
fle_else.297003:
	fsub	x31, x31, x31	# 12
	fsub	f0, x31, f0	# 12
	sw		x1, -72(x2)	# 12
	addi	x2, x2, -76	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 76	# 12
	lw		x1, -72(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.297002:
	ori		x5, x0, 255	# 2135
	ble		x4, x5, ble.297007	# 2135
	ori		x4, x0, 255	# 2135
	jal		x0, ble_cont.297006	# 2135
ble.297007:
	lw		x5, -52(x2)	# 2135
	ble		x5, x4, ble.297009	# 2135
	addi	x4, x0, 0	# 2135
	jal		x0, ble_cont.297008	# 2135
ble.297009:
ble_cont.297008:
ble_cont.297006:
	sw		x1, -72(x2)	# 2136
	addi	x2, x2, -76	# 2136
	jal		x1, min_caml_print_char	# 2136
	addi	x2, x2, 76	# 2136
	lw		x1, -72(x2)	# 2136
	ori		x4, x0, 2	# 2150
	ori		x5, x0, 4	# 2150
	mul		x4, x4, x5	# 2150
	lw		x5, -56(x2)	# 2150
	add		x4, x5, x4	# 2150
	flw		f0, 0(x4)	# 2150
	lui		x4, %hi(l.15659)	# 10
	ori		x4, x0, %lo(l.15659)	# 10
	flw		f1, 0(x4)	# 10
	fle		x31, f1, f0	# 10
	beq		x31, x0, fle_else.297011	# 10
	lui		x4, %hi(l.15661)	# 11
	ori		x4, x0, %lo(l.15661)	# 11
	flw		f1, 0(x4)	# 11
	fle		x31, f1, f0	# 11
	beq		x31, x0, fle_else.297013	# 11
	lui		x4, %hi(l.15661)	# 11
	ori		x4, x0, %lo(l.15661)	# 11
	flw		f1, 0(x4)	# 11
	fsub	f0, f0, f1	# 11
	sw		x1, -72(x2)	# 11
	addi	x2, x2, -76	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 76	# 11
	lw		x1, -72(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.297012	# 11
fle_else.297013:
	addi	x4, x0, 0	# 11
fle_cont.297012:
	jal		x0, fle_cont.297010	# 10
fle_else.297011:
	fsub	x31, x31, x31	# 12
	fsub	f0, x31, f0	# 12
	sw		x1, -72(x2)	# 12
	addi	x2, x2, -76	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 76	# 12
	lw		x1, -72(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.297010:
	ori		x5, x0, 255	# 2135
	ble		x4, x5, ble.297015	# 2135
	ori		x4, x0, 255	# 2135
	jal		x0, ble_cont.297014	# 2135
ble.297015:
	lw		x5, -52(x2)	# 2135
	ble		x5, x4, ble.297017	# 2135
	addi	x4, x0, 0	# 2135
	jal		x0, ble_cont.297016	# 2135
ble.297017:
ble_cont.297016:
ble_cont.297014:
	sw		x1, -72(x2)	# 2136
	addi	x2, x2, -76	# 2136
	jal		x1, min_caml_print_char	# 2136
	addi	x2, x2, 76	# 2136
	lw		x1, -72(x2)	# 2136
	jal		x0, beq_cont.296992	# 2140
beq.296993:
	addi	x4, x0, 0	# 2141
	ori		x6, x0, 4	# 2141
	mul		x4, x4, x6	# 2141
	lw		x6, -56(x2)	# 2141
	add		x4, x6, x4	# 2141
	flw		f0, 0(x4)	# 2141
	lui		x4, %hi(l.15659)	# 10
	ori		x4, x0, %lo(l.15659)	# 10
	flw		f1, 0(x4)	# 10
	fle		x31, f1, f0	# 10
	beq		x31, x0, fle_else.297019	# 10
	lui		x4, %hi(l.15661)	# 11
	ori		x4, x0, %lo(l.15661)	# 11
	flw		f1, 0(x4)	# 11
	fle		x31, f1, f0	# 11
	beq		x31, x0, fle_else.297021	# 11
	lui		x4, %hi(l.15661)	# 11
	ori		x4, x0, %lo(l.15661)	# 11
	flw		f1, 0(x4)	# 11
	fsub	f0, f0, f1	# 11
	sw		x1, -72(x2)	# 11
	addi	x2, x2, -76	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 76	# 11
	lw		x1, -72(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.297020	# 11
fle_else.297021:
	addi	x4, x0, 0	# 11
fle_cont.297020:
	jal		x0, fle_cont.297018	# 10
fle_else.297019:
	fsub	x31, x31, x31	# 12
	fsub	f0, x31, f0	# 12
	sw		x1, -72(x2)	# 12
	addi	x2, x2, -76	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 76	# 12
	lw		x1, -72(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.297018:
	ori		x5, x0, 255	# 2129
	ble		x4, x5, ble.297023	# 2129
	ori		x4, x0, 255	# 2129
	jal		x0, ble_cont.297022	# 2129
ble.297023:
	lw		x5, -52(x2)	# 2129
	ble		x5, x4, ble.297025	# 2129
	addi	x4, x0, 0	# 2129
	jal		x0, ble_cont.297024	# 2129
ble.297025:
ble_cont.297024:
ble_cont.297022:
	sw		x1, -72(x2)	# 2130
	addi	x2, x2, -76	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 76	# 2130
	lw		x1, -72(x2)	# 2130
	ori		x4, x0, 32	# 2142
	sw		x1, -72(x2)	# 2142
	addi	x2, x2, -76	# 2142
	jal		x1, min_caml_print_char	# 2142
	addi	x2, x2, 76	# 2142
	lw		x1, -72(x2)	# 2142
	ori		x4, x0, 1	# 2143
	ori		x5, x0, 4	# 2143
	mul		x4, x4, x5	# 2143
	lw		x5, -56(x2)	# 2143
	add		x4, x5, x4	# 2143
	flw		f0, 0(x4)	# 2143
	lui		x4, %hi(l.15659)	# 10
	ori		x4, x0, %lo(l.15659)	# 10
	flw		f1, 0(x4)	# 10
	fle		x31, f1, f0	# 10
	beq		x31, x0, fle_else.297027	# 10
	lui		x4, %hi(l.15661)	# 11
	ori		x4, x0, %lo(l.15661)	# 11
	flw		f1, 0(x4)	# 11
	fle		x31, f1, f0	# 11
	beq		x31, x0, fle_else.297029	# 11
	lui		x4, %hi(l.15661)	# 11
	ori		x4, x0, %lo(l.15661)	# 11
	flw		f1, 0(x4)	# 11
	fsub	f0, f0, f1	# 11
	sw		x1, -72(x2)	# 11
	addi	x2, x2, -76	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 76	# 11
	lw		x1, -72(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.297028	# 11
fle_else.297029:
	addi	x4, x0, 0	# 11
fle_cont.297028:
	jal		x0, fle_cont.297026	# 10
fle_else.297027:
	fsub	x31, x31, x31	# 12
	fsub	f0, x31, f0	# 12
	sw		x1, -72(x2)	# 12
	addi	x2, x2, -76	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 76	# 12
	lw		x1, -72(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.297026:
	ori		x5, x0, 255	# 2129
	ble		x4, x5, ble.297031	# 2129
	ori		x4, x0, 255	# 2129
	jal		x0, ble_cont.297030	# 2129
ble.297031:
	lw		x5, -52(x2)	# 2129
	ble		x5, x4, ble.297033	# 2129
	addi	x4, x0, 0	# 2129
	jal		x0, ble_cont.297032	# 2129
ble.297033:
ble_cont.297032:
ble_cont.297030:
	sw		x1, -72(x2)	# 2130
	addi	x2, x2, -76	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 76	# 2130
	lw		x1, -72(x2)	# 2130
	ori		x4, x0, 32	# 2144
	sw		x1, -72(x2)	# 2144
	addi	x2, x2, -76	# 2144
	jal		x1, min_caml_print_char	# 2144
	addi	x2, x2, 76	# 2144
	lw		x1, -72(x2)	# 2144
	ori		x4, x0, 2	# 2145
	ori		x5, x0, 4	# 2145
	mul		x4, x4, x5	# 2145
	lw		x5, -56(x2)	# 2145
	add		x4, x5, x4	# 2145
	flw		f0, 0(x4)	# 2145
	lui		x4, %hi(l.15659)	# 10
	ori		x4, x0, %lo(l.15659)	# 10
	flw		f1, 0(x4)	# 10
	fle		x31, f1, f0	# 10
	beq		x31, x0, fle_else.297035	# 10
	lui		x4, %hi(l.15661)	# 11
	ori		x4, x0, %lo(l.15661)	# 11
	flw		f1, 0(x4)	# 11
	fle		x31, f1, f0	# 11
	beq		x31, x0, fle_else.297037	# 11
	lui		x4, %hi(l.15661)	# 11
	ori		x4, x0, %lo(l.15661)	# 11
	flw		f1, 0(x4)	# 11
	fsub	f0, f0, f1	# 11
	sw		x1, -72(x2)	# 11
	addi	x2, x2, -76	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 76	# 11
	lw		x1, -72(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.297036	# 11
fle_else.297037:
	addi	x4, x0, 0	# 11
fle_cont.297036:
	jal		x0, fle_cont.297034	# 10
fle_else.297035:
	fsub	x31, x31, x31	# 12
	fsub	f0, x31, f0	# 12
	sw		x1, -72(x2)	# 12
	addi	x2, x2, -76	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 76	# 12
	lw		x1, -72(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.297034:
	ori		x5, x0, 255	# 2129
	ble		x4, x5, ble.297039	# 2129
	ori		x4, x0, 255	# 2129
	jal		x0, ble_cont.297038	# 2129
ble.297039:
	lw		x5, -52(x2)	# 2129
	ble		x5, x4, ble.297041	# 2129
	addi	x4, x0, 0	# 2129
	jal		x0, ble_cont.297040	# 2129
ble.297041:
ble_cont.297040:
ble_cont.297038:
	sw		x1, -72(x2)	# 2130
	addi	x2, x2, -76	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 76	# 2130
	lw		x1, -72(x2)	# 2130
	ori		x4, x0, 10	# 2146
	sw		x1, -72(x2)	# 2146
	addi	x2, x2, -76	# 2146
	jal		x1, min_caml_print_char	# 2146
	addi	x2, x2, 76	# 2146
	lw		x1, -72(x2)	# 2146
beq_cont.296992:
	lw		x4, -44(x2)	# 2248
	lw		x5, -48(x2)	# 2248
	add		x5, x5, x4	# 2248
	ori		x6, x0, 4	# 2234
	lw		x7, -52(x2)	# 2234
	mul		x6, x7, x6	# 2234
	lw		x8, -40(x2)	# 2234
	add		x6, x8, x6	# 2234
	lw		x6, 0(x6)	# 2234
	ble		x6, x5, ble.297042	# 2234
	ori		x6, x0, 4	# 2237
	mul		x6, x5, x6	# 2237
	lw		x9, -36(x2)	# 2237
	add		x6, x9, x6	# 2237
	lw		x6, 0(x6)	# 2237
	lw		x6, 0(x6)	# 562
	ori		x10, x0, 4	# 259
	mul		x10, x7, x10	# 259
	add		x10, x6, x10	# 259
	flw		f0, 0(x10)	# 259
	ori		x10, x0, 4	# 259
	mul		x10, x7, x10	# 259
	lw		x11, -56(x2)	# 259
	add		x10, x11, x10	# 259
	fsw		f0, 0(x10)	# 259
	ori		x10, x0, 4	# 260
	mul		x10, x4, x10	# 260
	add		x10, x6, x10	# 260
	flw		f0, 0(x10)	# 260
	ori		x10, x0, 4	# 260
	mul		x10, x4, x10	# 260
	add		x10, x11, x10	# 260
	fsw		f0, 0(x10)	# 260
	ori		x10, x0, 4	# 261
	lw		x12, -32(x2)	# 261
	mul		x10, x12, x10	# 261
	add		x6, x6, x10	# 261
	flw		f0, 0(x6)	# 261
	ori		x6, x0, 4	# 261
	mul		x6, x12, x6	# 261
	add		x6, x11, x6	# 261
	fsw		f0, 0(x6)	# 261
	ori		x6, x0, 4	# 2050
	mul		x6, x4, x6	# 2050
	add		x6, x8, x6	# 2050
	lw		x6, 0(x6)	# 2050
	lw		x10, -28(x2)	# 2050
	ble		x6, x10, ble.297044	# 2050
	lw		x6, -24(x2)	# 2051
	ble		x6, x7, ble.297046	# 2051
	ori		x10, x0, 4	# 2052
	mul		x10, x7, x10	# 2052
	add		x8, x8, x10	# 2052
	lw		x8, 0(x8)	# 2052
	add		x10, x5, x4	# 2052
	ble		x8, x10, ble.297048	# 2052
	ble		x5, x7, ble.297050	# 2053
	ori		x6, x0, 1	# 2054
	jal		x0, ble_cont.297049	# 2053
ble.297050:
	addi	x6, x0, 0	# 2055
ble_cont.297049:
	jal		x0, ble_cont.297047	# 2052
ble.297048:
	addi	x6, x0, 0	# 2056
ble_cont.297047:
	jal		x0, ble_cont.297045	# 2051
ble.297046:
	addi	x6, x0, 0	# 2057
ble_cont.297045:
	jal		x0, ble_cont.297043	# 2050
ble.297044:
	addi	x6, x0, 0	# 2058
ble_cont.297043:
	sw		x5, -72(x2)	# 2240
	beq		x6, x7, beq.297052	# 2240
	addi	x6, x0, 0	# 2241
	lw		x7, -24(x2)	# 2241
	lw		x8, -12(x2)	# 2241
	lw		x10, -8(x2)	# 2241
	lw		x27, -16(x2)	# 2241
	addi	x4, x5, 0
	addi	x5, x7, 0
	addi	x7, x9, 0
	addi	x9, x6, 0
	addi	x6, x8, 0
	addi	x8, x10, 0
	sw		x1, -76(x2)	# 2241
	addi	x2, x2, -80	# 2241
	lw		x31, 0(x27)	# 2241
	jalr	x1, x31, 0	# 2241
	addi	x2, x2, 80	# 2241
	lw		x1, -76(x2)	# 2241
	jal		x0, beq_cont.297051	# 2240
beq.297052:
	ori		x6, x0, 4	# 2243
	mul		x6, x5, x6	# 2243
	add		x6, x9, x6	# 2243
	lw		x6, 0(x6)	# 2243
	addi	x7, x0, 0	# 2243
	lw		x27, -20(x2)	# 2243
	addi	x5, x7, 0
	addi	x4, x6, 0
	sw		x1, -76(x2)	# 2243
	addi	x2, x2, -80	# 2243
	lw		x31, 0(x27)	# 2243
	jalr	x1, x31, 0	# 2243
	addi	x2, x2, 80	# 2243
	lw		x1, -76(x2)	# 2243
beq_cont.297051:
	lw		x4, -64(x2)	# 2246
	lw		x27, -4(x2)	# 2246
	sw		x1, -76(x2)	# 2246
	addi	x2, x2, -80	# 2246
	lw		x31, 0(x27)	# 2246
	jalr	x1, x31, 0	# 2246
	addi	x2, x2, 80	# 2246
	lw		x1, -76(x2)	# 2246
	lw		x4, -44(x2)	# 2248
	lw		x5, -72(x2)	# 2248
	add		x4, x5, x4	# 2248
	lw		x5, -24(x2)	# 2248
	lw		x6, -12(x2)	# 2248
	lw		x7, -36(x2)	# 2248
	lw		x8, -8(x2)	# 2248
	lw		x9, -64(x2)	# 2248
	lw		x27, 0(x2)	# 2248
	lw		x31, 0(x27)	# 2248
	jalr	x0, x31, 0	# 2248
ble.297042:
	jalr	x0, x1, 0	# 2249
ble.296963:
	jalr	x0, x1, 0	# 2249
scan_line.2954:
	lw		x10, 44(x27)	# 2255
	lw		x11, 40(x27)	# 2255
	lw		x12, 36(x27)	# 2255
	lw		x13, 32(x27)	# 2255
	lw		x14, 28(x27)	# 2255
	lw		x15, 24(x27)	# 2255
	lw		x16, 20(x27)	# 2255
	lw		x17, 16(x27)	# 2255
	lw		x18, 12(x27)	# 2255
	lw		x19, 8(x27)	# 2255
	lw		x20, 4(x27)	# 2255
	ori		x21, x0, 4	# 2255
	mul		x21, x20, x21	# 2255
	add		x21, x15, x21	# 2255
	lw		x21, 0(x21)	# 2255
	ble		x21, x4, ble.297055	# 2255
	sub		x21, x21, x20	# 2257
	sw		x27, 0(x2)	# 2257
	sw		x14, -4(x2)	# 2257
	sw		x17, -8(x2)	# 2257
	sw		x8, -12(x2)	# 2257
	sw		x12, -16(x2)	# 2257
	sw		x9, -20(x2)	# 2257
	sw		x10, -24(x2)	# 2257
	sw		x7, -28(x2)	# 2257
	sw		x5, -32(x2)	# 2257
	sw		x11, -36(x2)	# 2257
	sw		x16, -40(x2)	# 2257
	sw		x4, -44(x2)	# 2257
	sw		x18, -48(x2)	# 2257
	sw		x20, -52(x2)	# 2257
	sw		x13, -56(x2)	# 2257
	sw		x6, -60(x2)	# 2257
	sw		x15, -64(x2)	# 2257
	sw		x19, -68(x2)	# 2257
	ble		x21, x4, ble.297057	# 2257
	addi	x21, x4, 1	# 2258
	addi	x6, x8, 0
	addi	x5, x21, 0
	addi	x4, x7, 0
	addi	x27, x14, 0
	sw		x1, -72(x2)	# 2258
	addi	x2, x2, -76	# 2258
	lw		x31, 0(x27)	# 2258
	jalr	x1, x31, 0	# 2258
	addi	x2, x2, 76	# 2258
	lw		x1, -72(x2)	# 2258
	jal		x0, ble_cont.297056	# 2257
ble.297057:
ble_cont.297056:
	ori		x4, x0, 4	# 2234
	lw		x5, -68(x2)	# 2234
	mul		x4, x5, x4	# 2234
	lw		x6, -64(x2)	# 2234
	add		x4, x6, x4	# 2234
	lw		x4, 0(x4)	# 2234
	ble		x4, x5, ble.297059	# 2234
	ori		x4, x0, 4	# 2237
	mul		x4, x5, x4	# 2237
	lw		x7, -60(x2)	# 2237
	add		x4, x7, x4	# 2237
	lw		x4, 0(x4)	# 2237
	lw		x4, 0(x4)	# 562
	ori		x8, x0, 4	# 259
	mul		x8, x5, x8	# 259
	add		x8, x4, x8	# 259
	flw		f0, 0(x8)	# 259
	ori		x8, x0, 4	# 259
	mul		x8, x5, x8	# 259
	lw		x9, -56(x2)	# 259
	add		x8, x9, x8	# 259
	fsw		f0, 0(x8)	# 259
	ori		x8, x0, 4	# 260
	lw		x10, -52(x2)	# 260
	mul		x8, x10, x8	# 260
	add		x8, x4, x8	# 260
	flw		f0, 0(x8)	# 260
	ori		x8, x0, 4	# 260
	mul		x8, x10, x8	# 260
	add		x8, x9, x8	# 260
	fsw		f0, 0(x8)	# 260
	ori		x8, x0, 4	# 261
	lw		x11, -48(x2)	# 261
	mul		x8, x11, x8	# 261
	add		x4, x4, x8	# 261
	flw		f0, 0(x4)	# 261
	ori		x4, x0, 4	# 261
	mul		x4, x11, x4	# 261
	add		x4, x9, x4	# 261
	fsw		f0, 0(x4)	# 261
	ori		x4, x0, 4	# 2050
	mul		x4, x10, x4	# 2050
	add		x4, x6, x4	# 2050
	lw		x4, 0(x4)	# 2050
	lw		x8, -44(x2)	# 2050
	add		x9, x8, x10	# 2050
	ble		x4, x9, ble.297061	# 2050
	ble		x8, x5, ble.297063	# 2051
	ori		x4, x0, 4	# 2052
	mul		x4, x5, x4	# 2052
	add		x4, x6, x4	# 2052
	lw		x4, 0(x4)	# 2052
	ori		x9, x0, 1	# 2052
	ble		x4, x9, ble.297065	# 2052
	addi	x4, x0, 0	# 2055
	jal		x0, ble_cont.297064	# 2052
ble.297065:
	addi	x4, x0, 0	# 2056
ble_cont.297064:
	jal		x0, ble_cont.297062	# 2051
ble.297063:
	addi	x4, x0, 0	# 2057
ble_cont.297062:
	jal		x0, ble_cont.297060	# 2050
ble.297061:
	addi	x4, x0, 0	# 2058
ble_cont.297060:
	addi	x9, x0, 0	# 2240
	beq		x4, x9, beq.297067	# 2240
	addi	x9, x0, 0	# 2241
	lw		x4, -32(x2)	# 2241
	lw		x12, -28(x2)	# 2241
	lw		x27, -36(x2)	# 2241
	addi	x6, x4, 0
	addi	x4, x5, 0
	addi	x5, x8, 0
	addi	x8, x12, 0
	sw		x1, -72(x2)	# 2241
	addi	x2, x2, -76	# 2241
	lw		x31, 0(x27)	# 2241
	jalr	x1, x31, 0	# 2241
	addi	x2, x2, 76	# 2241
	lw		x1, -72(x2)	# 2241
	jal		x0, beq_cont.297066	# 2240
beq.297067:
	ori		x4, x0, 4	# 2243
	mul		x4, x5, x4	# 2243
	add		x4, x7, x4	# 2243
	lw		x4, 0(x4)	# 2243
	addi	x9, x0, 0	# 2243
	lw		x27, -40(x2)	# 2243
	addi	x5, x9, 0
	sw		x1, -72(x2)	# 2243
	addi	x2, x2, -76	# 2243
	lw		x31, 0(x27)	# 2243
	jalr	x1, x31, 0	# 2243
	addi	x2, x2, 76	# 2243
	lw		x1, -72(x2)	# 2243
beq_cont.297066:
	lw		x4, -20(x2)	# 2246
	lw		x27, -24(x2)	# 2246
	sw		x1, -72(x2)	# 2246
	addi	x2, x2, -76	# 2246
	lw		x31, 0(x27)	# 2246
	jalr	x1, x31, 0	# 2246
	addi	x2, x2, 76	# 2246
	lw		x1, -72(x2)	# 2246
	ori		x4, x0, 1	# 2248
	lw		x5, -44(x2)	# 2248
	lw		x6, -32(x2)	# 2248
	lw		x7, -60(x2)	# 2248
	lw		x8, -28(x2)	# 2248
	lw		x9, -20(x2)	# 2248
	lw		x27, -16(x2)	# 2248
	sw		x1, -72(x2)	# 2248
	addi	x2, x2, -76	# 2248
	lw		x31, 0(x27)	# 2248
	jalr	x1, x31, 0	# 2248
	addi	x2, x2, 76	# 2248
	lw		x1, -72(x2)	# 2248
	jal		x0, ble_cont.297058	# 2234
ble.297059:
ble_cont.297058:
	lw		x4, -52(x2)	# 2261
	lw		x5, -44(x2)	# 2261
	add		x5, x5, x4	# 2261
	lw		x6, -48(x2)	# 224
	lw		x7, -12(x2)	# 224
	add		x7, x7, x6	# 224
	lw		x8, -8(x2)	# 225
	ble		x8, x7, ble.297069	# 225
	jal		x0, ble_cont.297068	# 225
ble.297069:
	sub		x7, x7, x8	# 225
ble_cont.297068:
	ori		x9, x0, 4	# 2255
	mul		x9, x4, x9	# 2255
	lw		x10, -64(x2)	# 2255
	add		x9, x10, x9	# 2255
	lw		x9, 0(x9)	# 2255
	ble		x9, x5, ble.297070	# 2255
	sub		x9, x9, x4	# 2257
	sw		x7, -72(x2)	# 2257
	sw		x5, -76(x2)	# 2257
	ble		x9, x5, ble.297072	# 2257
	addi	x9, x5, 1	# 2258
	lw		x10, -32(x2)	# 2258
	lw		x27, -4(x2)	# 2258
	addi	x6, x7, 0
	addi	x5, x9, 0
	addi	x4, x10, 0
	sw		x1, -80(x2)	# 2258
	addi	x2, x2, -84	# 2258
	lw		x31, 0(x27)	# 2258
	jalr	x1, x31, 0	# 2258
	addi	x2, x2, 84	# 2258
	lw		x1, -80(x2)	# 2258
	jal		x0, ble_cont.297071	# 2257
ble.297072:
ble_cont.297071:
	lw		x4, -68(x2)	# 2260
	lw		x5, -76(x2)	# 2260
	lw		x6, -60(x2)	# 2260
	lw		x7, -28(x2)	# 2260
	lw		x8, -32(x2)	# 2260
	lw		x9, -20(x2)	# 2260
	lw		x27, -16(x2)	# 2260
	sw		x1, -80(x2)	# 2260
	addi	x2, x2, -84	# 2260
	lw		x31, 0(x27)	# 2260
	jalr	x1, x31, 0	# 2260
	addi	x2, x2, 84	# 2260
	lw		x1, -80(x2)	# 2260
	lw		x4, -52(x2)	# 2261
	lw		x5, -76(x2)	# 2261
	add		x4, x5, x4	# 2261
	lw		x5, -48(x2)	# 224
	lw		x6, -72(x2)	# 224
	add		x5, x6, x5	# 224
	lw		x6, -8(x2)	# 225
	ble		x6, x5, ble.297074	# 225
	addi	x8, x5, 0	# 225
	jal		x0, ble_cont.297073	# 225
ble.297074:
	sub		x8, x5, x6	# 225
ble_cont.297073:
	lw		x5, -28(x2)	# 2261
	lw		x6, -32(x2)	# 2261
	lw		x7, -60(x2)	# 2261
	lw		x9, -20(x2)	# 2261
	lw		x27, 0(x2)	# 2261
	lw		x31, 0(x27)	# 2261
	jalr	x0, x31, 0	# 2261
ble.297070:
	jalr	x0, x1, 0	# 2262
ble.297055:
	jalr	x0, x1, 0	# 2262
init_line_elements.2965:
	lw		x6, 24(x27)	# 2297
	lw		x7, 20(x27)	# 2297
	lw		x8, 16(x27)	# 2297
	lw		x9, 12(x27)	# 2297
	lw		x10, 8(x27)	# 2297
	flw		f0, 4(x27)	# 2297
	ble		x9, x5, ble.297077	# 2297
	jalr	x0, x1, 0	# 2301
ble.297077:
	sw		x27, 0(x2)	# 2284
	sw		x4, -4(x2)	# 2284
	sw		x5, -8(x2)	# 2284
	sw		x9, -12(x2)	# 2284
	sw		x7, -16(x2)	# 2284
	sw		x10, -20(x2)	# 2284
	sw		x6, -24(x2)	# 2284
	fsw		f0, -32(x2)	# 2284
	sw		x8, -40(x2)	# 2284
	addi	x4, x8, 0
	sw		x1, -44(x2)	# 2284
	addi	x2, x2, -48	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 48	# 2284
	lw		x1, -44(x2)	# 2284
	flw		f0, -32(x2)	# 2272
	lw		x5, -40(x2)	# 2272
	sw		x4, -44(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 2272
	addi	x2, x2, -52	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 52	# 2272
	lw		x1, -48(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -24(x2)	# 2273
	sw		x1, -48(x2)	# 2273
	addi	x2, x2, -52	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 52	# 2273
	lw		x1, -48(x2)	# 2273
	flw		f0, -32(x2)	# 2274
	lw		x5, -40(x2)	# 2274
	sw		x4, -48(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 2274
	addi	x2, x2, -56	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 56	# 2274
	lw		x1, -52(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -20(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -48(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -32(x2)	# 2275
	lw		x4, -40(x2)	# 2275
	sw		x1, -52(x2)	# 2275
	addi	x2, x2, -56	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 56	# 2275
	lw		x1, -52(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -16(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -48(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -32(x2)	# 2276
	lw		x4, -40(x2)	# 2276
	sw		x1, -52(x2)	# 2276
	addi	x2, x2, -56	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 56	# 2276
	lw		x1, -52(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -40(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -48(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	ori		x4, x0, 4	# 2277
	flw		f0, -32(x2)	# 2277
	sw		x4, -52(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -56(x2)	# 2277
	addi	x2, x2, -60	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 60	# 2277
	lw		x1, -56(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -52(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -48(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -24(x2)	# 2286
	lw		x5, -12(x2)	# 2286
	sw		x1, -56(x2)	# 2286
	addi	x2, x2, -60	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 60	# 2286
	lw		x1, -56(x2)	# 2286
	lw		x5, -24(x2)	# 2287
	lw		x6, -12(x2)	# 2287
	sw		x4, -56(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -60(x2)	# 2287
	addi	x2, x2, -64	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 64	# 2287
	lw		x1, -60(x2)	# 2287
	flw		f0, -32(x2)	# 2272
	lw		x5, -40(x2)	# 2272
	sw		x4, -60(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 2272
	addi	x2, x2, -68	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 68	# 2272
	lw		x1, -64(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -24(x2)	# 2273
	sw		x1, -64(x2)	# 2273
	addi	x2, x2, -68	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 68	# 2273
	lw		x1, -64(x2)	# 2273
	flw		f0, -32(x2)	# 2274
	lw		x5, -40(x2)	# 2274
	sw		x4, -64(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -68(x2)	# 2274
	addi	x2, x2, -72	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 72	# 2274
	lw		x1, -68(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -20(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -64(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -32(x2)	# 2275
	lw		x4, -40(x2)	# 2275
	sw		x1, -68(x2)	# 2275
	addi	x2, x2, -72	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 72	# 2275
	lw		x1, -68(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -16(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -64(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -32(x2)	# 2276
	lw		x4, -40(x2)	# 2276
	sw		x1, -68(x2)	# 2276
	addi	x2, x2, -72	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 72	# 2276
	lw		x1, -68(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -40(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -64(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f0, -32(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -68(x2)	# 2277
	addi	x2, x2, -72	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 72	# 2277
	lw		x1, -68(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -52(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -64(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	flw		f0, -32(x2)	# 2272
	lw		x4, -40(x2)	# 2272
	sw		x1, -68(x2)	# 2272
	addi	x2, x2, -72	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 72	# 2272
	lw		x1, -68(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -24(x2)	# 2273
	sw		x1, -68(x2)	# 2273
	addi	x2, x2, -72	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 72	# 2273
	lw		x1, -68(x2)	# 2273
	flw		f0, -32(x2)	# 2274
	lw		x5, -40(x2)	# 2274
	sw		x4, -68(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 2274
	addi	x2, x2, -76	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 76	# 2274
	lw		x1, -72(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -20(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -68(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -32(x2)	# 2275
	lw		x4, -40(x2)	# 2275
	sw		x1, -72(x2)	# 2275
	addi	x2, x2, -76	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 76	# 2275
	lw		x1, -72(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -16(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -68(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -32(x2)	# 2276
	lw		x4, -40(x2)	# 2276
	sw		x1, -72(x2)	# 2276
	addi	x2, x2, -76	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 76	# 2276
	lw		x1, -72(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -40(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -68(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f0, -32(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -72(x2)	# 2277
	addi	x2, x2, -76	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 76	# 2277
	lw		x1, -72(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -52(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -68(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -20(x2)	# 2290
	lw		x5, -12(x2)	# 2290
	sw		x1, -72(x2)	# 2290
	addi	x2, x2, -76	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 76	# 2290
	lw		x1, -72(x2)	# 2290
	flw		f0, -32(x2)	# 2272
	lw		x5, -40(x2)	# 2272
	sw		x4, -72(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -76(x2)	# 2272
	addi	x2, x2, -80	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 80	# 2272
	lw		x1, -76(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -24(x2)	# 2273
	sw		x1, -76(x2)	# 2273
	addi	x2, x2, -80	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 80	# 2273
	lw		x1, -76(x2)	# 2273
	flw		f0, -32(x2)	# 2274
	lw		x5, -40(x2)	# 2274
	sw		x4, -76(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -80(x2)	# 2274
	addi	x2, x2, -84	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 84	# 2274
	lw		x1, -80(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -20(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -76(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -32(x2)	# 2275
	lw		x4, -40(x2)	# 2275
	sw		x1, -80(x2)	# 2275
	addi	x2, x2, -84	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 84	# 2275
	lw		x1, -80(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -16(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -76(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -32(x2)	# 2276
	lw		x4, -40(x2)	# 2276
	sw		x1, -80(x2)	# 2276
	addi	x2, x2, -84	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 84	# 2276
	lw		x1, -80(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -40(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -76(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f0, -32(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -80(x2)	# 2277
	addi	x2, x2, -84	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 84	# 2277
	lw		x1, -80(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -52(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -76(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	addi	x4, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x7, 28(x4)	# 2292
	lw		x5, -72(x2)	# 2292
	sw		x5, 24(x4)	# 2292
	lw		x5, -68(x2)	# 2292
	sw		x5, 20(x4)	# 2292
	lw		x5, -64(x2)	# 2292
	sw		x5, 16(x4)	# 2292
	lw		x5, -60(x2)	# 2292
	sw		x5, 12(x4)	# 2292
	lw		x5, -56(x2)	# 2292
	sw		x5, 8(x4)	# 2292
	lw		x5, -48(x2)	# 2292
	sw		x5, 4(x4)	# 2292
	lw		x5, -44(x2)	# 2292
	sw		x5, 0(x4)	# 2292
	ori		x5, x0, 4	# 2298
	lw		x7, -8(x2)	# 2298
	mul		x5, x7, x5	# 2298
	lw		x8, -4(x2)	# 2298
	add		x5, x8, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -20(x2)	# 2299
	sub		x5, x7, x4	# 2299
	lw		x7, -12(x2)	# 2297
	ble		x7, x5, ble.297079	# 2297
	addi	x4, x8, 0	# 2301
	jalr	x0, x1, 0	# 2301
ble.297079:
	flw		f0, -32(x2)	# 2284
	lw		x9, -40(x2)	# 2284
	sw		x5, -80(x2)	# 2284
	addi	x4, x9, 0
	sw		x1, -84(x2)	# 2284
	addi	x2, x2, -88	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 88	# 2284
	lw		x1, -84(x2)	# 2284
	flw		f0, -32(x2)	# 2272
	lw		x5, -40(x2)	# 2272
	sw		x4, -84(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -88(x2)	# 2272
	addi	x2, x2, -92	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 92	# 2272
	lw		x1, -88(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -24(x2)	# 2273
	sw		x1, -88(x2)	# 2273
	addi	x2, x2, -92	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 92	# 2273
	lw		x1, -88(x2)	# 2273
	flw		f0, -32(x2)	# 2274
	lw		x5, -40(x2)	# 2274
	sw		x4, -88(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -92(x2)	# 2274
	addi	x2, x2, -96	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 96	# 2274
	lw		x1, -92(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -20(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -88(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -32(x2)	# 2275
	lw		x4, -40(x2)	# 2275
	sw		x1, -92(x2)	# 2275
	addi	x2, x2, -96	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 96	# 2275
	lw		x1, -92(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -16(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -88(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -32(x2)	# 2276
	lw		x4, -40(x2)	# 2276
	sw		x1, -92(x2)	# 2276
	addi	x2, x2, -96	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 96	# 2276
	lw		x1, -92(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -40(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -88(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f0, -32(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -92(x2)	# 2277
	addi	x2, x2, -96	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 96	# 2277
	lw		x1, -92(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -52(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -88(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -24(x2)	# 2286
	lw		x5, -12(x2)	# 2286
	sw		x1, -92(x2)	# 2286
	addi	x2, x2, -96	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 96	# 2286
	lw		x1, -92(x2)	# 2286
	lw		x5, -24(x2)	# 2287
	lw		x6, -12(x2)	# 2287
	sw		x4, -92(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -96(x2)	# 2287
	addi	x2, x2, -100	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 100	# 2287
	lw		x1, -96(x2)	# 2287
	flw		f0, -32(x2)	# 2272
	lw		x5, -40(x2)	# 2272
	sw		x4, -96(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -100(x2)	# 2272
	addi	x2, x2, -104	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 104	# 2272
	lw		x1, -100(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -24(x2)	# 2273
	sw		x1, -100(x2)	# 2273
	addi	x2, x2, -104	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 104	# 2273
	lw		x1, -100(x2)	# 2273
	flw		f0, -32(x2)	# 2274
	lw		x5, -40(x2)	# 2274
	sw		x4, -100(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -104(x2)	# 2274
	addi	x2, x2, -108	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 108	# 2274
	lw		x1, -104(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -20(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -100(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -32(x2)	# 2275
	lw		x4, -40(x2)	# 2275
	sw		x1, -104(x2)	# 2275
	addi	x2, x2, -108	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 108	# 2275
	lw		x1, -104(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -16(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -100(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -32(x2)	# 2276
	lw		x4, -40(x2)	# 2276
	sw		x1, -104(x2)	# 2276
	addi	x2, x2, -108	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 108	# 2276
	lw		x1, -104(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -40(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -100(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f0, -32(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -104(x2)	# 2277
	addi	x2, x2, -108	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 108	# 2277
	lw		x1, -104(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -52(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -100(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	flw		f0, -32(x2)	# 2272
	lw		x4, -40(x2)	# 2272
	sw		x1, -104(x2)	# 2272
	addi	x2, x2, -108	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 108	# 2272
	lw		x1, -104(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -24(x2)	# 2273
	sw		x1, -104(x2)	# 2273
	addi	x2, x2, -108	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 108	# 2273
	lw		x1, -104(x2)	# 2273
	flw		f0, -32(x2)	# 2274
	lw		x5, -40(x2)	# 2274
	sw		x4, -104(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -108(x2)	# 2274
	addi	x2, x2, -112	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 112	# 2274
	lw		x1, -108(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -20(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -104(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -32(x2)	# 2275
	lw		x4, -40(x2)	# 2275
	sw		x1, -108(x2)	# 2275
	addi	x2, x2, -112	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 112	# 2275
	lw		x1, -108(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -16(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -104(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -32(x2)	# 2276
	lw		x4, -40(x2)	# 2276
	sw		x1, -108(x2)	# 2276
	addi	x2, x2, -112	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 112	# 2276
	lw		x1, -108(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -40(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -104(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f0, -32(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -108(x2)	# 2277
	addi	x2, x2, -112	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 112	# 2277
	lw		x1, -108(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -52(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -104(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -20(x2)	# 2290
	lw		x5, -12(x2)	# 2290
	sw		x1, -108(x2)	# 2290
	addi	x2, x2, -112	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 112	# 2290
	lw		x1, -108(x2)	# 2290
	flw		f0, -32(x2)	# 2272
	lw		x5, -40(x2)	# 2272
	sw		x4, -108(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -112(x2)	# 2272
	addi	x2, x2, -116	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 116	# 2272
	lw		x1, -112(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -24(x2)	# 2273
	sw		x1, -112(x2)	# 2273
	addi	x2, x2, -116	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 116	# 2273
	lw		x1, -112(x2)	# 2273
	flw		f0, -32(x2)	# 2274
	lw		x5, -40(x2)	# 2274
	sw		x4, -112(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -116(x2)	# 2274
	addi	x2, x2, -120	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 120	# 2274
	lw		x1, -116(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -20(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -112(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -32(x2)	# 2275
	lw		x4, -40(x2)	# 2275
	sw		x1, -116(x2)	# 2275
	addi	x2, x2, -120	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 120	# 2275
	lw		x1, -116(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -16(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x6, -112(x2)	# 2275
	add		x5, x6, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -32(x2)	# 2276
	lw		x4, -40(x2)	# 2276
	sw		x1, -116(x2)	# 2276
	addi	x2, x2, -120	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 120	# 2276
	lw		x1, -116(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -40(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -112(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f0, -32(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -116(x2)	# 2277
	addi	x2, x2, -120	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 120	# 2277
	lw		x1, -116(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -52(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x6, -112(x2)	# 2277
	add		x5, x6, x5	# 2277
	sw		x4, 0(x5)	# 2277
	addi	x4, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x6, 28(x4)	# 2292
	lw		x5, -108(x2)	# 2292
	sw		x5, 24(x4)	# 2292
	lw		x5, -104(x2)	# 2292
	sw		x5, 20(x4)	# 2292
	lw		x5, -100(x2)	# 2292
	sw		x5, 16(x4)	# 2292
	lw		x5, -96(x2)	# 2292
	sw		x5, 12(x4)	# 2292
	lw		x5, -92(x2)	# 2292
	sw		x5, 8(x4)	# 2292
	lw		x5, -88(x2)	# 2292
	sw		x5, 4(x4)	# 2292
	lw		x5, -84(x2)	# 2292
	sw		x5, 0(x4)	# 2292
	ori		x5, x0, 4	# 2298
	lw		x6, -80(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -4(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -20(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x27, 0(x2)	# 2299
	addi	x4, x7, 0
	lw		x31, 0(x27)	# 2299
	jalr	x0, x31, 0	# 2299
calc_dirvec.2975:
	lw		x7, 52(x27)	# 2334
	flw		f4, 48(x27)	# 2334
	flw		f5, 44(x27)	# 2334
	flw		f6, 40(x27)	# 2334
	flw		f7, 36(x27)	# 2334
	lw		x8, 32(x27)	# 2334
	lw		x9, 28(x27)	# 2334
	lw		x10, 24(x27)	# 2334
	lw		x11, 20(x27)	# 2334
	lw		x12, 16(x27)	# 2334
	lw		x13, 12(x27)	# 2334
	lw		x14, 8(x27)	# 2334
	flw		f8, 4(x27)	# 2334
	ble		x11, x4, ble.297080	# 2334
	fmul	f0, f1, f1	# 2325
	lui		x8, %hi(l.18750)	# 2325
	ori		x8, x0, %lo(l.18750)	# 2325
	flw		f1, 0(x8)	# 2325
	fadd	f0, f0, f1	# 2325
	sw		x6, 0(x2)	# 2325
	sw		x5, -4(x2)	# 2325
	sw		x27, -8(x2)	# 2325
	fsw		f3, -16(x2)	# 2325
	fsw		f1, -24(x2)	# 2325
	sw		x14, -32(x2)	# 2325
	sw		x4, -36(x2)	# 2325
	sw		x9, -40(x2)	# 2325
	fsw		f4, -48(x2)	# 2325
	fsw		f5, -56(x2)	# 2325
	fsw		f7, -64(x2)	# 2325
	sw		x7, -72(x2)	# 2325
	fsw		f6, -80(x2)	# 2325
	fsw		f8, -88(x2)	# 2325
	fsw		f2, -96(x2)	# 2325
	sw		x10, -104(x2)	# 2325
	sw		x1, -108(x2)	# 2325
	addi	x2, x2, -112	# 2325
	jal		x1, min_caml_sqrt	# 2325
	addi	x2, x2, 112	# 2325
	lw		x1, -108(x2)	# 2325
	lui		x4, %hi(l.15661)	# 2326
	ori		x4, x0, %lo(l.15661)	# 2326
	flw		f1, 0(x4)	# 2326
	fdiv	f2, f1, f0	# 2326
	lw		x27, -104(x2)	# 2327
	fsw		f1, -112(x2)	# 2327
	fsw		f0, -120(x2)	# 2327
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -128(x2)	# 2327
	addi	x2, x2, -132	# 2327
	lw		x31, 0(x27)	# 2327
	jalr	x1, x31, 0	# 2327
	addi	x2, x2, 132	# 2327
	lw		x1, -128(x2)	# 2327
	flw		f1, -96(x2)	# 2328
	fmul	f0, f0, f1	# 2328
	flw		f2, -88(x2)	# 46
	fsw		f0, -128(x2)	# 46
	fle		x31, f2, f0	# 46
	beq		x31, x0, fle_else.297086	# 46
	flw		f3, -80(x2)	# 47
	fle		x31, f3, f0	# 47
	beq		x31, x0, fle_else.297088	# 47
	fsub	f4, f0, f3	# 47
	lw		x27, -72(x2)	# 47
	fsub	f0, f0, f0
	fadd	f0, f0, f4
	sw		x1, -136(x2)	# 47
	addi	x2, x2, -140	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 140	# 47
	lw		x1, -136(x2)	# 47
	jal		x0, fle_cont.297087	# 47
fle_else.297088:
	flw		f4, -64(x2)	# 48
	fle		x31, f4, f0	# 48
	beq		x31, x0, fle_else.297090	# 48
	fsub	f5, f0, f4	# 48
	lw		x27, -72(x2)	# 48
	fsub	f0, f0, f0
	fadd	f0, f0, f5
	sw		x1, -136(x2)	# 48
	addi	x2, x2, -140	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 140	# 48
	lw		x1, -136(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.297089	# 48
fle_else.297090:
	flw		f5, -56(x2)	# 49
	fle		x31, f0, f5	# 49
	beq		x31, x0, fle_else.297092	# 49
	flw		f6, -48(x2)	# 50
	fle		x31, f6, f0	# 50
	beq		x31, x0, fle_else.297094	# 50
	fsub	f7, f5, f0	# 50
	fmul	f7, f7, f7	# 41
	fmul	f8, f7, f7	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f9, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f10, 0(x4)	# 43
	fmul	f10, f10, f7	# 43
	fsub	f9, f9, f10	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f10, 0(x4)	# 43
	fmul	f10, f10, f8	# 43
	fadd	f9, f9, f10	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f10, 0(x4)	# 43
	fmul	f7, f10, f7	# 43
	fmul	f7, f7, f8	# 43
	fsub	f0, f9, f7	# 43
	jal		x0, fle_cont.297093	# 50
fle_else.297094:
	fmul	f7, f0, f0	# 36
	fmul	f8, f0, f7	# 37
	lui		x4, %hi(l.15674)	# 38
	ori		x4, x0, %lo(l.15674)	# 38
	flw		f9, 0(x4)	# 38
	fmul	f9, f9, f8	# 38
	fsub	f9, f0, f9	# 38
	lui		x4, %hi(l.15676)	# 38
	ori		x4, x0, %lo(l.15676)	# 38
	flw		f10, 0(x4)	# 38
	fmul	f10, f10, f7	# 38
	fmul	f10, f10, f8	# 38
	fadd	f9, f9, f10	# 38
	lui		x4, %hi(l.15678)	# 38
	ori		x4, x0, %lo(l.15678)	# 38
	flw		f10, 0(x4)	# 38
	fmul	f10, f10, f7	# 38
	fmul	f7, f10, f7	# 38
	fmul	f7, f7, f8	# 38
	fsub	f0, f9, f7	# 38
fle_cont.297093:
	jal		x0, fle_cont.297091	# 49
fle_else.297092:
	fsub	f6, f4, f0	# 49
	lw		x27, -72(x2)	# 49
	fsub	f0, f0, f0
	fadd	f0, f0, f6
	sw		x1, -136(x2)	# 49
	addi	x2, x2, -140	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 140	# 49
	lw		x1, -136(x2)	# 49
fle_cont.297091:
fle_cont.297089:
fle_cont.297087:
	jal		x0, fle_cont.297085	# 46
fle_else.297086:
	fsub	f3, f3, f3	# 46
	fsub	f3, f3, f0	# 46
	lw		x27, -72(x2)	# 46
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -136(x2)	# 46
	addi	x2, x2, -140	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 140	# 46
	lw		x1, -136(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.297085:
	flw		f1, -128(x2)	# 54
	flw		f2, -88(x2)	# 54
	fsw		f0, -136(x2)	# 54
	fle		x31, f2, f1	# 54
	beq		x31, x0, fle_else.297096	# 54
	flw		f3, -48(x2)	# 55
	fle		x31, f1, f3	# 55
	beq		x31, x0, fle_else.297098	# 55
	fmul	f1, f1, f1	# 41
	fmul	f4, f1, f1	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f5, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f6, 0(x4)	# 43
	fmul	f6, f6, f1	# 43
	fsub	f5, f5, f6	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f6, 0(x4)	# 43
	fmul	f6, f6, f4	# 43
	fadd	f5, f5, f6	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f6, 0(x4)	# 43
	fmul	f1, f6, f1	# 43
	fmul	f1, f1, f4	# 43
	fsub	f0, f5, f1	# 43
	jal		x0, fle_cont.297097	# 55
fle_else.297098:
	flw		f4, -56(x2)	# 55
	fsub	f1, f4, f1	# 55
	lw		x27, -72(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -144(x2)	# 55
	addi	x2, x2, -148	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 148	# 55
	lw		x1, -144(x2)	# 55
fle_cont.297097:
	jal		x0, fle_cont.297095	# 54
fle_else.297096:
	fsub	x31, x31, x31	# 54
	fsub	f1, x31, f1	# 54
	lw		x27, -40(x2)	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -144(x2)	# 54
	addi	x2, x2, -148	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 148	# 54
	lw		x1, -144(x2)	# 54
fle_cont.297095:
	flw		f1, -136(x2)	# 2320
	fdiv	f0, f1, f0	# 2320
	flw		f1, -120(x2)	# 2329
	fmul	f0, f0, f1	# 2329
	lw		x4, -32(x2)	# 2350
	lw		x5, -36(x2)	# 2350
	add		x4, x5, x4	# 2350
	fmul	f1, f0, f0	# 2325
	flw		f2, -24(x2)	# 2325
	fadd	f1, f1, f2	# 2325
	fsw		f0, -144(x2)	# 2325
	sw		x4, -152(x2)	# 2325
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -156(x2)	# 2325
	addi	x2, x2, -160	# 2325
	jal		x1, min_caml_sqrt	# 2325
	addi	x2, x2, 160	# 2325
	lw		x1, -156(x2)	# 2325
	flw		f1, -112(x2)	# 2326
	fdiv	f1, f1, f0	# 2326
	lw		x27, -104(x2)	# 2327
	fsw		f0, -160(x2)	# 2327
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -168(x2)	# 2327
	addi	x2, x2, -172	# 2327
	lw		x31, 0(x27)	# 2327
	jalr	x1, x31, 0	# 2327
	addi	x2, x2, 172	# 2327
	lw		x1, -168(x2)	# 2327
	flw		f3, -16(x2)	# 2328
	fmul	f0, f0, f3	# 2328
	flw		f1, -88(x2)	# 46
	fsw		f0, -168(x2)	# 46
	fle		x31, f1, f0	# 46
	beq		x31, x0, fle_else.297101	# 46
	flw		f2, -80(x2)	# 47
	fle		x31, f2, f0	# 47
	beq		x31, x0, fle_else.297103	# 47
	fsub	f2, f0, f2	# 47
	lw		x27, -72(x2)	# 47
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -176(x2)	# 47
	addi	x2, x2, -180	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 180	# 47
	lw		x1, -176(x2)	# 47
	jal		x0, fle_cont.297102	# 47
fle_else.297103:
	flw		f2, -64(x2)	# 48
	fle		x31, f2, f0	# 48
	beq		x31, x0, fle_else.297105	# 48
	fsub	f2, f0, f2	# 48
	lw		x27, -72(x2)	# 48
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -176(x2)	# 48
	addi	x2, x2, -180	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 180	# 48
	lw		x1, -176(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.297104	# 48
fle_else.297105:
	flw		f4, -56(x2)	# 49
	fle		x31, f0, f4	# 49
	beq		x31, x0, fle_else.297107	# 49
	flw		f2, -48(x2)	# 50
	fle		x31, f2, f0	# 50
	beq		x31, x0, fle_else.297109	# 50
	fsub	f5, f4, f0	# 50
	fmul	f5, f5, f5	# 41
	fmul	f6, f5, f5	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f7, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f8, 0(x4)	# 43
	fmul	f8, f8, f5	# 43
	fsub	f7, f7, f8	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f8, 0(x4)	# 43
	fmul	f8, f8, f6	# 43
	fadd	f7, f7, f8	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f8, 0(x4)	# 43
	fmul	f5, f8, f5	# 43
	fmul	f5, f5, f6	# 43
	fsub	f0, f7, f5	# 43
	jal		x0, fle_cont.297108	# 50
fle_else.297109:
	fmul	f5, f0, f0	# 36
	fmul	f6, f0, f5	# 37
	lui		x4, %hi(l.15674)	# 38
	ori		x4, x0, %lo(l.15674)	# 38
	flw		f7, 0(x4)	# 38
	fmul	f7, f7, f6	# 38
	fsub	f7, f0, f7	# 38
	lui		x4, %hi(l.15676)	# 38
	ori		x4, x0, %lo(l.15676)	# 38
	flw		f8, 0(x4)	# 38
	fmul	f8, f8, f5	# 38
	fmul	f8, f8, f6	# 38
	fadd	f7, f7, f8	# 38
	lui		x4, %hi(l.15678)	# 38
	ori		x4, x0, %lo(l.15678)	# 38
	flw		f8, 0(x4)	# 38
	fmul	f8, f8, f5	# 38
	fmul	f5, f8, f5	# 38
	fmul	f5, f5, f6	# 38
	fsub	f0, f7, f5	# 38
fle_cont.297108:
	jal		x0, fle_cont.297106	# 49
fle_else.297107:
	fsub	f2, f2, f0	# 49
	lw		x27, -72(x2)	# 49
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -176(x2)	# 49
	addi	x2, x2, -180	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 180	# 49
	lw		x1, -176(x2)	# 49
fle_cont.297106:
fle_cont.297104:
fle_cont.297102:
	jal		x0, fle_cont.297100	# 46
fle_else.297101:
	fsub	f2, f2, f2	# 46
	fsub	f2, f2, f0	# 46
	lw		x27, -72(x2)	# 46
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -176(x2)	# 46
	addi	x2, x2, -180	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 180	# 46
	lw		x1, -176(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.297100:
	flw		f1, -168(x2)	# 54
	flw		f2, -88(x2)	# 54
	fsw		f0, -176(x2)	# 54
	fle		x31, f2, f1	# 54
	beq		x31, x0, fle_else.297111	# 54
	flw		f2, -48(x2)	# 55
	fle		x31, f1, f2	# 55
	beq		x31, x0, fle_else.297113	# 55
	fmul	f1, f1, f1	# 41
	fmul	f2, f1, f1	# 42
	lui		x4, %hi(l.15661)	# 43
	ori		x4, x0, %lo(l.15661)	# 43
	flw		f3, 0(x4)	# 43
	lui		x4, %hi(l.15681)	# 43
	ori		x4, x0, %lo(l.15681)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f4, f4, f1	# 43
	fsub	f3, f3, f4	# 43
	lui		x4, %hi(l.15683)	# 43
	ori		x4, x0, %lo(l.15683)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f4, f4, f2	# 43
	fadd	f3, f3, f4	# 43
	lui		x4, %hi(l.15685)	# 43
	ori		x4, x0, %lo(l.15685)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f1, f4, f1	# 43
	fmul	f1, f1, f2	# 43
	fsub	f0, f3, f1	# 43
	jal		x0, fle_cont.297112	# 55
fle_else.297113:
	flw		f2, -56(x2)	# 55
	fsub	f1, f2, f1	# 55
	lw		x27, -72(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -184(x2)	# 55
	addi	x2, x2, -188	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 188	# 55
	lw		x1, -184(x2)	# 55
fle_cont.297112:
	jal		x0, fle_cont.297110	# 54
fle_else.297111:
	fsub	x31, x31, x31	# 54
	fsub	f1, x31, f1	# 54
	lw		x27, -40(x2)	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -184(x2)	# 54
	addi	x2, x2, -188	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 188	# 54
	lw		x1, -184(x2)	# 54
fle_cont.297110:
	flw		f1, -176(x2)	# 2320
	fdiv	f0, f1, f0	# 2320
	flw		f1, -160(x2)	# 2329
	fmul	f1, f0, f1	# 2329
	flw		f0, -144(x2)	# 2350
	flw		f2, -96(x2)	# 2350
	flw		f3, -16(x2)	# 2350
	lw		x4, -152(x2)	# 2350
	lw		x5, -4(x2)	# 2350
	lw		x6, 0(x2)	# 2350
	lw		x27, -8(x2)	# 2350
	lw		x31, 0(x27)	# 2350
	jalr	x0, x31, 0	# 2350
ble.297080:
	fmul	f2, f0, f0	# 8
	fmul	f3, f1, f1	# 8
	fadd	f2, f2, f3	# 2335
	lui		x4, %hi(l.15661)	# 2335
	ori		x4, x0, %lo(l.15661)	# 2335
	flw		f3, 0(x4)	# 2335
	fadd	f2, f2, f3	# 2335
	sw		x12, -184(x2)	# 2335
	sw		x14, -32(x2)	# 2335
	sw		x13, -188(x2)	# 2335
	sw		x6, 0(x2)	# 2335
	sw		x8, -192(x2)	# 2335
	sw		x5, -4(x2)	# 2335
	fsw		f3, -200(x2)	# 2335
	fsw		f1, -208(x2)	# 2335
	fsw		f0, -216(x2)	# 2335
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -224(x2)	# 2335
	addi	x2, x2, -228	# 2335
	jal		x1, min_caml_sqrt	# 2335
	addi	x2, x2, 228	# 2335
	lw		x1, -224(x2)	# 2335
	flw		f1, -216(x2)	# 2336
	fdiv	f1, f1, f0	# 2336
	flw		f2, -208(x2)	# 2337
	fdiv	f2, f2, f0	# 2337
	flw		f3, -200(x2)	# 2338
	fdiv	f0, f3, f0	# 2338
	ori		x4, x0, 4	# 2341
	lw		x5, -4(x2)	# 2341
	mul		x4, x5, x4	# 2341
	lw		x5, -192(x2)	# 2341
	add		x4, x5, x4	# 2341
	lw		x4, 0(x4)	# 2341
	ori		x5, x0, 4	# 2342
	lw		x6, 0(x2)	# 2342
	mul		x5, x6, x5	# 2342
	add		x5, x4, x5	# 2342
	lw		x5, 0(x5)	# 2342
	lw		x5, 0(x5)	# 639
	ori		x7, x0, 4	# 240
	lw		x8, -188(x2)	# 240
	mul		x7, x8, x7	# 240
	add		x7, x5, x7	# 240
	fsw		f1, 0(x7)	# 240
	ori		x7, x0, 4	# 241
	lw		x9, -32(x2)	# 241
	mul		x7, x9, x7	# 241
	add		x7, x5, x7	# 241
	fsw		f2, 0(x7)	# 241
	ori		x7, x0, 4	# 242
	lw		x10, -184(x2)	# 242
	mul		x7, x10, x7	# 242
	add		x5, x5, x7	# 242
	fsw		f0, 0(x5)	# 242
	addi	x5, x6, 40	# 2343
	ori		x7, x0, 4	# 2343
	mul		x5, x5, x7	# 2343
	add		x5, x4, x5	# 2343
	lw		x5, 0(x5)	# 2343
	lw		x5, 0(x5)	# 639
	fsub	f3, f3, f3	# 4
	fsub	f3, f3, f2	# 4
	ori		x7, x0, 4	# 240
	mul		x7, x8, x7	# 240
	add		x7, x5, x7	# 240
	fsw		f1, 0(x7)	# 240
	ori		x7, x0, 4	# 241
	mul		x7, x9, x7	# 241
	add		x7, x5, x7	# 241
	fsw		f0, 0(x7)	# 241
	ori		x7, x0, 4	# 242
	mul		x7, x10, x7	# 242
	add		x5, x5, x7	# 242
	fsw		f3, 0(x5)	# 242
	addi	x5, x6, 80	# 2344
	ori		x7, x0, 4	# 2344
	mul		x5, x5, x7	# 2344
	add		x5, x4, x5	# 2344
	lw		x5, 0(x5)	# 2344
	lw		x5, 0(x5)	# 639
	fsub	f4, f4, f4	# 4
	fsub	f4, f4, f1	# 4
	ori		x7, x0, 4	# 240
	mul		x7, x8, x7	# 240
	add		x7, x5, x7	# 240
	fsw		f0, 0(x7)	# 240
	ori		x7, x0, 4	# 241
	mul		x7, x9, x7	# 241
	add		x7, x5, x7	# 241
	fsw		f4, 0(x7)	# 241
	ori		x7, x0, 4	# 242
	mul		x7, x10, x7	# 242
	add		x5, x5, x7	# 242
	fsw		f3, 0(x5)	# 242
	add		x5, x6, x9	# 2345
	ori		x7, x0, 4	# 2345
	mul		x5, x5, x7	# 2345
	add		x5, x4, x5	# 2345
	lw		x5, 0(x5)	# 2345
	lw		x5, 0(x5)	# 639
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x7, x0, 4	# 240
	mul		x7, x8, x7	# 240
	add		x7, x5, x7	# 240
	fsw		f4, 0(x7)	# 240
	ori		x7, x0, 4	# 241
	mul		x7, x9, x7	# 241
	add		x7, x5, x7	# 241
	fsw		f3, 0(x7)	# 241
	ori		x7, x0, 4	# 242
	mul		x7, x10, x7	# 242
	add		x5, x5, x7	# 242
	fsw		f0, 0(x5)	# 242
	addi	x5, x6, 41	# 2346
	ori		x7, x0, 4	# 2346
	mul		x5, x5, x7	# 2346
	add		x5, x4, x5	# 2346
	lw		x5, 0(x5)	# 2346
	lw		x5, 0(x5)	# 639
	ori		x7, x0, 4	# 240
	mul		x7, x8, x7	# 240
	add		x7, x5, x7	# 240
	fsw		f4, 0(x7)	# 240
	ori		x7, x0, 4	# 241
	mul		x7, x9, x7	# 241
	add		x7, x5, x7	# 241
	fsw		f0, 0(x7)	# 241
	ori		x7, x0, 4	# 242
	mul		x7, x10, x7	# 242
	add		x5, x5, x7	# 242
	fsw		f2, 0(x5)	# 242
	addi	x5, x6, 81	# 2347
	ori		x6, x0, 4	# 2347
	mul		x5, x5, x6	# 2347
	add		x4, x4, x5	# 2347
	lw		x4, 0(x4)	# 2347
	lw		x4, 0(x4)	# 639
	ori		x5, x0, 4	# 240
	mul		x5, x8, x5	# 240
	add		x5, x4, x5	# 240
	fsw		f0, 0(x5)	# 240
	ori		x5, x0, 4	# 241
	mul		x5, x9, x5	# 241
	add		x5, x4, x5	# 241
	fsw		f1, 0(x5)	# 241
	ori		x5, x0, 4	# 242
	mul		x5, x10, x5	# 242
	add		x4, x4, x5	# 242
	fsw		f2, 0(x4)	# 242
	jalr	x0, x1, 0	# 242
calc_dirvecs.2983:
	lw		x7, 24(x27)	# 2355
	lw		x8, 20(x27)	# 2355
	lw		x9, 16(x27)	# 2355
	lw		x10, 12(x27)	# 2355
	lw		x11, 8(x27)	# 2355
	flw		f1, 4(x27)	# 2355
	ble		x10, x4, ble.297116	# 2355
	jalr	x0, x1, 0	# 2364
ble.297116:
	sw		x27, 0(x2)	# 14
	sw		x8, -4(x2)	# 14
	sw		x11, -8(x2)	# 14
	sw		x9, -12(x2)	# 14
	sw		x4, -16(x2)	# 14
	fsw		f0, -24(x2)	# 14
	fsw		f1, -32(x2)	# 14
	sw		x6, -40(x2)	# 14
	sw		x5, -44(x2)	# 14
	sw		x10, -48(x2)	# 14
	sw		x7, -52(x2)	# 14
	ble		x10, x4, ble.297120	# 14
	sub		x12, x0, x4	# 16
	addi	x4, x12, 0
	sw		x1, -56(x2)	# 16
	addi	x2, x2, -60	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 60	# 16
	lw		x1, -56(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.297119	# 14
ble.297120:
	ori		x12, x0, 1	# 15
	ble		x12, x4, ble.297122	# 15
	lui		x12, %hi(l.15659)	# 15
	ori		x12, x0, %lo(l.15659)	# 15
	flw		f0, 0(x12)	# 15
	jal		x0, ble_cont.297121	# 15
ble.297122:
	ori		x12, x0, 1	# 15
	sub		x12, x4, x12	# 15
	addi	x4, x12, 0
	sw		x1, -56(x2)	# 15
	addi	x2, x2, -60	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 60	# 15
	lw		x1, -56(x2)	# 15
	lui		x4, %hi(l.15661)	# 15
	ori		x4, x0, %lo(l.15661)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.297121:
ble_cont.297119:
	lui		x4, %hi(l.15739)	# 2357
	ori		x4, x0, %lo(l.15739)	# 2357
	flw		f1, 0(x4)	# 2357
	fmul	f0, f0, f1	# 2357
	lui		x4, %hi(l.20827)	# 2357
	ori		x4, x0, %lo(l.20827)	# 2357
	flw		f2, 0(x4)	# 2357
	fsub	f2, f0, f2	# 2357
	flw		f0, -32(x2)	# 2358
	flw		f3, -24(x2)	# 2358
	lw		x4, -48(x2)	# 2358
	lw		x5, -44(x2)	# 2358
	lw		x6, -40(x2)	# 2358
	lw		x27, -52(x2)	# 2358
	fsw		f1, -56(x2)	# 2358
	fsub	f1, f1, f1
	fadd	f1, f1, f0
	sw		x1, -64(x2)	# 2358
	addi	x2, x2, -68	# 2358
	lw		x31, 0(x27)	# 2358
	jalr	x1, x31, 0	# 2358
	addi	x2, x2, 68	# 2358
	lw		x1, -64(x2)	# 2358
	lw		x4, -16(x2)	# 14
	lw		x5, -48(x2)	# 14
	ble		x5, x4, ble.297124	# 14
	sub		x6, x0, x4	# 16
	addi	x4, x6, 0
	sw		x1, -64(x2)	# 16
	addi	x2, x2, -68	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 68	# 16
	lw		x1, -64(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.297123	# 14
ble.297124:
	ori		x6, x0, 1	# 15
	ble		x6, x4, ble.297126	# 15
	lui		x6, %hi(l.15659)	# 15
	ori		x6, x0, %lo(l.15659)	# 15
	flw		f0, 0(x6)	# 15
	jal		x0, ble_cont.297125	# 15
ble.297126:
	ori		x6, x0, 1	# 15
	sub		x6, x4, x6	# 15
	addi	x4, x6, 0
	sw		x1, -64(x2)	# 15
	addi	x2, x2, -68	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 68	# 15
	lw		x1, -64(x2)	# 15
	lui		x4, %hi(l.15661)	# 15
	ori		x4, x0, %lo(l.15661)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.297125:
ble_cont.297123:
	flw		f1, -56(x2)	# 2360
	fmul	f0, f0, f1	# 2360
	lui		x4, %hi(l.18750)	# 2360
	ori		x4, x0, %lo(l.18750)	# 2360
	flw		f1, 0(x4)	# 2360
	fadd	f2, f0, f1	# 2360
	lw		x4, -12(x2)	# 2361
	lw		x5, -40(x2)	# 2361
	add		x6, x5, x4	# 2361
	flw		f0, -32(x2)	# 2361
	flw		f3, -24(x2)	# 2361
	lw		x4, -48(x2)	# 2361
	lw		x7, -44(x2)	# 2361
	lw		x27, -52(x2)	# 2361
	addi	x5, x7, 0
	fsub	f1, f1, f1
	fadd	f1, f1, f0
	sw		x1, -64(x2)	# 2361
	addi	x2, x2, -68	# 2361
	lw		x31, 0(x27)	# 2361
	jalr	x1, x31, 0	# 2361
	addi	x2, x2, 68	# 2361
	lw		x1, -64(x2)	# 2361
	lw		x4, -8(x2)	# 2363
	lw		x5, -16(x2)	# 2363
	sub		x5, x5, x4	# 2363
	lw		x6, -44(x2)	# 224
	add		x4, x6, x4	# 224
	lw		x6, -4(x2)	# 225
	ble		x6, x4, ble.297128	# 225
	jal		x0, ble_cont.297127	# 225
ble.297128:
	sub		x4, x4, x6	# 225
ble_cont.297127:
	flw		f0, -24(x2)	# 2363
	lw		x6, -40(x2)	# 2363
	lw		x27, 0(x2)	# 2363
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	lw		x31, 0(x27)	# 2363
	jalr	x0, x31, 0	# 2363
calc_dirvec_rows.2988:
	lw		x7, 20(x27)	# 2369
	lw		x8, 16(x27)	# 2369
	lw		x9, 12(x27)	# 2369
	lw		x10, 8(x27)	# 2369
	lw		x11, 4(x27)	# 2369
	ble		x10, x4, ble.297129	# 2369
	jalr	x0, x1, 0	# 2373
ble.297129:
	sw		x27, 0(x2)	# 14
	sw		x10, -4(x2)	# 14
	sw		x8, -8(x2)	# 14
	sw		x9, -12(x2)	# 14
	sw		x11, -16(x2)	# 14
	sw		x4, -20(x2)	# 14
	sw		x6, -24(x2)	# 14
	sw		x5, -28(x2)	# 14
	sw		x7, -32(x2)	# 14
	ble		x10, x4, ble.297132	# 14
	sub		x12, x0, x4	# 16
	addi	x4, x12, 0
	sw		x1, -36(x2)	# 16
	addi	x2, x2, -40	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 40	# 16
	lw		x1, -36(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.297131	# 14
ble.297132:
	ori		x12, x0, 1	# 15
	ble		x12, x4, ble.297134	# 15
	lui		x12, %hi(l.15659)	# 15
	ori		x12, x0, %lo(l.15659)	# 15
	flw		f0, 0(x12)	# 15
	jal		x0, ble_cont.297133	# 15
ble.297134:
	ori		x12, x0, 1	# 15
	sub		x12, x4, x12	# 15
	addi	x4, x12, 0
	sw		x1, -36(x2)	# 15
	addi	x2, x2, -40	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 40	# 15
	lw		x1, -36(x2)	# 15
	lui		x4, %hi(l.15661)	# 15
	ori		x4, x0, %lo(l.15661)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.297133:
ble_cont.297131:
	lui		x4, %hi(l.15739)	# 2370
	ori		x4, x0, %lo(l.15739)	# 2370
	flw		f1, 0(x4)	# 2370
	fmul	f0, f0, f1	# 2370
	lui		x4, %hi(l.20827)	# 2370
	ori		x4, x0, %lo(l.20827)	# 2370
	flw		f2, 0(x4)	# 2370
	fsub	f0, f0, f2	# 2370
	ori		x4, x0, 4	# 2371
	lw		x5, -28(x2)	# 2371
	lw		x6, -24(x2)	# 2371
	lw		x27, -32(x2)	# 2371
	sw		x4, -36(x2)	# 2371
	fsw		f2, -40(x2)	# 2371
	fsw		f1, -48(x2)	# 2371
	sw		x1, -56(x2)	# 2371
	addi	x2, x2, -60	# 2371
	lw		x31, 0(x27)	# 2371
	jalr	x1, x31, 0	# 2371
	addi	x2, x2, 60	# 2371
	lw		x1, -56(x2)	# 2371
	lw		x4, -16(x2)	# 2372
	lw		x5, -20(x2)	# 2372
	sub		x5, x5, x4	# 2372
	lw		x6, -12(x2)	# 224
	lw		x7, -28(x2)	# 224
	add		x7, x7, x6	# 224
	lw		x8, -8(x2)	# 225
	ble		x8, x7, ble.297136	# 225
	jal		x0, ble_cont.297135	# 225
ble.297136:
	sub		x7, x7, x8	# 225
ble_cont.297135:
	lw		x9, -24(x2)	# 2372
	addi	x9, x9, 4	# 2372
	lw		x10, -4(x2)	# 2369
	ble		x10, x5, ble.297137	# 2369
	jalr	x0, x1, 0	# 2373
ble.297137:
	sw		x5, -56(x2)	# 2370
	sw		x9, -60(x2)	# 2370
	sw		x7, -64(x2)	# 2370
	addi	x4, x5, 0
	sw		x1, -68(x2)	# 2370
	addi	x2, x2, -72	# 2370
	jal		x1, float_of_int.2489	# 2370
	addi	x2, x2, 72	# 2370
	lw		x1, -68(x2)	# 2370
	flw		f1, -48(x2)	# 2370
	fmul	f0, f0, f1	# 2370
	flw		f1, -40(x2)	# 2370
	fsub	f0, f0, f1	# 2370
	lw		x4, -36(x2)	# 2371
	lw		x5, -64(x2)	# 2371
	lw		x6, -60(x2)	# 2371
	lw		x27, -32(x2)	# 2371
	sw		x1, -68(x2)	# 2371
	addi	x2, x2, -72	# 2371
	lw		x31, 0(x27)	# 2371
	jalr	x1, x31, 0	# 2371
	addi	x2, x2, 72	# 2371
	lw		x1, -68(x2)	# 2371
	lw		x4, -16(x2)	# 2372
	lw		x5, -56(x2)	# 2372
	sub		x4, x5, x4	# 2372
	lw		x5, -12(x2)	# 224
	lw		x6, -64(x2)	# 224
	add		x5, x6, x5	# 224
	lw		x6, -8(x2)	# 225
	ble		x6, x5, ble.297140	# 225
	jal		x0, ble_cont.297139	# 225
ble.297140:
	sub		x5, x5, x6	# 225
ble_cont.297139:
	lw		x6, -60(x2)	# 2372
	addi	x6, x6, 4	# 2372
	lw		x27, 0(x2)	# 2372
	lw		x31, 0(x27)	# 2372
	jalr	x0, x31, 0	# 2372
create_dirvec_elements.2994:
	lw		x6, 20(x27)	# 2388
	lw		x7, 16(x27)	# 2388
	lw		x8, 12(x27)	# 2388
	lw		x9, 8(x27)	# 2388
	flw		f0, 4(x27)	# 2388
	ble		x8, x5, ble.297141	# 2388
	jalr	x0, x1, 0	# 2391
ble.297141:
	sw		x27, 0(x2)	# 2382
	fsw		f0, -8(x2)	# 2382
	sw		x7, -16(x2)	# 2382
	sw		x9, -20(x2)	# 2382
	sw		x4, -24(x2)	# 2382
	sw		x5, -28(x2)	# 2382
	sw		x6, -32(x2)	# 2382
	sw		x8, -36(x2)	# 2382
	addi	x4, x7, 0
	sw		x1, -40(x2)	# 2382
	addi	x2, x2, -44	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 44	# 2382
	lw		x1, -40(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -36(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x7, -32(x2)	# 2383
	add		x4, x7, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -40(x2)	# 2383
	sw		x1, -44(x2)	# 2383
	addi	x2, x2, -48	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 48	# 2383
	lw		x1, -44(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -40(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	ori		x5, x0, 4	# 2389
	lw		x6, -28(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x7, -24(x2)	# 2389
	add		x5, x7, x5	# 2389
	sw		x4, 0(x5)	# 2389
	lw		x4, -20(x2)	# 2390
	sub		x5, x6, x4	# 2390
	lw		x6, -36(x2)	# 2388
	ble		x6, x5, ble.297144	# 2388
	jalr	x0, x1, 0	# 2391
ble.297144:
	flw		f0, -8(x2)	# 2382
	lw		x8, -16(x2)	# 2382
	sw		x5, -44(x2)	# 2382
	addi	x4, x8, 0
	sw		x1, -48(x2)	# 2382
	addi	x2, x2, -52	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 52	# 2382
	lw		x1, -48(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -36(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x7, -32(x2)	# 2383
	add		x4, x7, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -48(x2)	# 2383
	sw		x1, -52(x2)	# 2383
	addi	x2, x2, -56	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 56	# 2383
	lw		x1, -52(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -48(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	ori		x5, x0, 4	# 2389
	lw		x6, -44(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x7, -24(x2)	# 2389
	add		x5, x7, x5	# 2389
	sw		x4, 0(x5)	# 2389
	lw		x4, -20(x2)	# 2390
	sub		x5, x6, x4	# 2390
	lw		x6, -36(x2)	# 2388
	ble		x6, x5, ble.297146	# 2388
	jalr	x0, x1, 0	# 2391
ble.297146:
	flw		f0, -8(x2)	# 2382
	lw		x8, -16(x2)	# 2382
	sw		x5, -52(x2)	# 2382
	addi	x4, x8, 0
	sw		x1, -56(x2)	# 2382
	addi	x2, x2, -60	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 60	# 2382
	lw		x1, -56(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -36(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x7, -32(x2)	# 2383
	add		x4, x7, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -56(x2)	# 2383
	sw		x1, -60(x2)	# 2383
	addi	x2, x2, -64	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 64	# 2383
	lw		x1, -60(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -56(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	ori		x5, x0, 4	# 2389
	lw		x6, -52(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x7, -24(x2)	# 2389
	add		x5, x7, x5	# 2389
	sw		x4, 0(x5)	# 2389
	lw		x4, -20(x2)	# 2390
	sub		x5, x6, x4	# 2390
	lw		x6, -36(x2)	# 2388
	ble		x6, x5, ble.297148	# 2388
	jalr	x0, x1, 0	# 2391
ble.297148:
	flw		f0, -8(x2)	# 2382
	lw		x8, -16(x2)	# 2382
	sw		x5, -60(x2)	# 2382
	addi	x4, x8, 0
	sw		x1, -64(x2)	# 2382
	addi	x2, x2, -68	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 68	# 2382
	lw		x1, -64(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -36(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x6, -32(x2)	# 2383
	add		x4, x6, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -64(x2)	# 2383
	sw		x1, -68(x2)	# 2383
	addi	x2, x2, -72	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 72	# 2383
	lw		x1, -68(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -64(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	ori		x5, x0, 4	# 2389
	lw		x6, -60(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x7, -24(x2)	# 2389
	add		x5, x7, x5	# 2389
	sw		x4, 0(x5)	# 2389
	lw		x4, -20(x2)	# 2390
	sub		x5, x6, x4	# 2390
	lw		x27, 0(x2)	# 2390
	addi	x4, x7, 0
	lw		x31, 0(x27)	# 2390
	jalr	x0, x31, 0	# 2390
create_dirvecs.2997:
	lw		x5, 28(x27)	# 2395
	lw		x6, 24(x27)	# 2395
	lw		x7, 20(x27)	# 2395
	lw		x8, 16(x27)	# 2395
	lw		x9, 12(x27)	# 2395
	lw		x10, 8(x27)	# 2395
	flw		f0, 4(x27)	# 2395
	ble		x9, x4, ble.297150	# 2395
	jalr	x0, x1, 0	# 2399
ble.297150:
	ori		x11, x0, 120	# 2396
	sw		x27, 0(x2)	# 2382
	sw		x10, -4(x2)	# 2382
	sw		x7, -8(x2)	# 2382
	fsw		f0, -16(x2)	# 2382
	sw		x8, -24(x2)	# 2382
	sw		x6, -28(x2)	# 2382
	sw		x4, -32(x2)	# 2382
	sw		x11, -36(x2)	# 2382
	sw		x5, -40(x2)	# 2382
	sw		x9, -44(x2)	# 2382
	addi	x4, x8, 0
	sw		x1, -48(x2)	# 2382
	addi	x2, x2, -52	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 52	# 2382
	lw		x1, -48(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -44(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x7, -40(x2)	# 2383
	add		x4, x7, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -48(x2)	# 2383
	sw		x1, -52(x2)	# 2383
	addi	x2, x2, -56	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 56	# 2383
	lw		x1, -52(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -48(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	lw		x4, -36(x2)	# 2396
	sw		x1, -52(x2)	# 2396
	addi	x2, x2, -56	# 2396
	jal		x1, min_caml_create_array	# 2396
	addi	x2, x2, 56	# 2396
	lw		x1, -52(x2)	# 2396
	ori		x5, x0, 4	# 2396
	lw		x6, -32(x2)	# 2396
	mul		x5, x6, x5	# 2396
	lw		x7, -28(x2)	# 2396
	add		x5, x7, x5	# 2396
	sw		x4, 0(x5)	# 2396
	ori		x4, x0, 4	# 2397
	mul		x4, x6, x4	# 2397
	add		x4, x7, x4	# 2397
	lw		x4, 0(x4)	# 2397
	ori		x5, x0, 118	# 2397
	flw		f0, -16(x2)	# 2382
	lw		x8, -24(x2)	# 2382
	sw		x4, -52(x2)	# 2382
	sw		x5, -56(x2)	# 2382
	addi	x4, x8, 0
	sw		x1, -60(x2)	# 2382
	addi	x2, x2, -64	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 64	# 2382
	lw		x1, -60(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -44(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x7, -40(x2)	# 2383
	add		x4, x7, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -60(x2)	# 2383
	sw		x1, -64(x2)	# 2383
	addi	x2, x2, -68	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 68	# 2383
	lw		x1, -64(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -60(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	ori		x5, x0, 4	# 2389
	lw		x6, -56(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x7, -52(x2)	# 2389
	add		x5, x7, x5	# 2389
	sw		x4, 0(x5)	# 2389
	ori		x4, x0, 117	# 2390
	flw		f0, -16(x2)	# 2382
	lw		x5, -24(x2)	# 2382
	sw		x4, -64(x2)	# 2382
	addi	x4, x5, 0
	sw		x1, -68(x2)	# 2382
	addi	x2, x2, -72	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 72	# 2382
	lw		x1, -68(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -44(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x7, -40(x2)	# 2383
	add		x4, x7, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -68(x2)	# 2383
	sw		x1, -72(x2)	# 2383
	addi	x2, x2, -76	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 76	# 2383
	lw		x1, -72(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -68(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	ori		x5, x0, 4	# 2389
	lw		x6, -64(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x7, -52(x2)	# 2389
	add		x5, x7, x5	# 2389
	sw		x4, 0(x5)	# 2389
	ori		x4, x0, 116	# 2390
	flw		f0, -16(x2)	# 2382
	lw		x5, -24(x2)	# 2382
	sw		x4, -72(x2)	# 2382
	addi	x4, x5, 0
	sw		x1, -76(x2)	# 2382
	addi	x2, x2, -80	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 80	# 2382
	lw		x1, -76(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -44(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x7, -40(x2)	# 2383
	add		x4, x7, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -76(x2)	# 2383
	sw		x1, -80(x2)	# 2383
	addi	x2, x2, -84	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 84	# 2383
	lw		x1, -80(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -76(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	ori		x5, x0, 4	# 2389
	lw		x6, -72(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x7, -52(x2)	# 2389
	add		x5, x7, x5	# 2389
	sw		x4, 0(x5)	# 2389
	ori		x5, x0, 115	# 2390
	lw		x27, -8(x2)	# 2390
	addi	x4, x7, 0
	sw		x1, -80(x2)	# 2390
	addi	x2, x2, -84	# 2390
	lw		x31, 0(x27)	# 2390
	jalr	x1, x31, 0	# 2390
	addi	x2, x2, 84	# 2390
	lw		x1, -80(x2)	# 2390
	lw		x4, -4(x2)	# 2398
	lw		x5, -32(x2)	# 2398
	sub		x5, x5, x4	# 2398
	lw		x6, -44(x2)	# 2395
	ble		x6, x5, ble.297153	# 2395
	jalr	x0, x1, 0	# 2399
ble.297153:
	flw		f0, -16(x2)	# 2382
	lw		x7, -24(x2)	# 2382
	sw		x5, -80(x2)	# 2382
	addi	x4, x7, 0
	sw		x1, -84(x2)	# 2382
	addi	x2, x2, -88	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 88	# 2382
	lw		x1, -84(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -44(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x7, -40(x2)	# 2383
	add		x4, x7, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -84(x2)	# 2383
	sw		x1, -88(x2)	# 2383
	addi	x2, x2, -92	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 92	# 2383
	lw		x1, -88(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -84(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	lw		x4, -36(x2)	# 2396
	sw		x1, -88(x2)	# 2396
	addi	x2, x2, -92	# 2396
	jal		x1, min_caml_create_array	# 2396
	addi	x2, x2, 92	# 2396
	lw		x1, -88(x2)	# 2396
	ori		x5, x0, 4	# 2396
	lw		x6, -80(x2)	# 2396
	mul		x5, x6, x5	# 2396
	lw		x7, -28(x2)	# 2396
	add		x5, x7, x5	# 2396
	sw		x4, 0(x5)	# 2396
	ori		x4, x0, 4	# 2397
	mul		x4, x6, x4	# 2397
	add		x4, x7, x4	# 2397
	lw		x4, 0(x4)	# 2397
	flw		f0, -16(x2)	# 2382
	lw		x5, -24(x2)	# 2382
	sw		x4, -88(x2)	# 2382
	addi	x4, x5, 0
	sw		x1, -92(x2)	# 2382
	addi	x2, x2, -96	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 96	# 2382
	lw		x1, -92(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -44(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x7, -40(x2)	# 2383
	add		x4, x7, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -92(x2)	# 2383
	sw		x1, -96(x2)	# 2383
	addi	x2, x2, -100	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 100	# 2383
	lw		x1, -96(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -92(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	ori		x5, x0, 4	# 2389
	lw		x6, -56(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x6, -88(x2)	# 2389
	add		x5, x6, x5	# 2389
	sw		x4, 0(x5)	# 2389
	flw		f0, -16(x2)	# 2382
	lw		x4, -24(x2)	# 2382
	sw		x1, -96(x2)	# 2382
	addi	x2, x2, -100	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 100	# 2382
	lw		x1, -96(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -44(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x6, -40(x2)	# 2383
	add		x4, x6, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -96(x2)	# 2383
	sw		x1, -100(x2)	# 2383
	addi	x2, x2, -104	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 104	# 2383
	lw		x1, -100(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -96(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	ori		x5, x0, 4	# 2389
	lw		x6, -64(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x6, -88(x2)	# 2389
	add		x5, x6, x5	# 2389
	sw		x4, 0(x5)	# 2389
	lw		x5, -72(x2)	# 2390
	lw		x27, -8(x2)	# 2390
	addi	x4, x6, 0
	sw		x1, -100(x2)	# 2390
	addi	x2, x2, -104	# 2390
	lw		x31, 0(x27)	# 2390
	jalr	x1, x31, 0	# 2390
	addi	x2, x2, 104	# 2390
	lw		x1, -100(x2)	# 2390
	lw		x4, -4(x2)	# 2398
	lw		x5, -80(x2)	# 2398
	sub		x4, x5, x4	# 2398
	lw		x27, 0(x2)	# 2398
	lw		x31, 0(x27)	# 2398
	jalr	x0, x31, 0	# 2398
init_dirvec_constants.2999:
	lw		x6, 32(x27)	# 2407
	lw		x7, 28(x27)	# 2407
	lw		x8, 24(x27)	# 2407
	lw		x9, 20(x27)	# 2407
	lw		x10, 16(x27)	# 2407
	lw		x11, 12(x27)	# 2407
	lw		x12, 8(x27)	# 2407
	lw		x13, 4(x27)	# 2407
	ble		x12, x5, ble.297155	# 2407
	jalr	x0, x1, 0	# 2410
ble.297155:
	ori		x14, x0, 4	# 2408
	mul		x14, x5, x14	# 2408
	add		x14, x4, x14	# 2408
	lw		x14, 0(x14)	# 2408
	ori		x15, x0, 4	# 1287
	mul		x15, x12, x15	# 1287
	add		x15, x10, x15	# 1287
	lw		x15, 0(x15)	# 1287
	sub		x15, x15, x13	# 1287
	sw		x27, 0(x2)	# 1270
	sw		x11, -4(x2)	# 1270
	sw		x7, -8(x2)	# 1270
	sw		x6, -12(x2)	# 1270
	sw		x8, -16(x2)	# 1270
	sw		x9, -20(x2)	# 1270
	sw		x10, -24(x2)	# 1270
	sw		x4, -28(x2)	# 1270
	sw		x12, -32(x2)	# 1270
	sw		x13, -36(x2)	# 1270
	sw		x5, -40(x2)	# 1270
	ble		x12, x15, ble.297158	# 1270
	jal		x0, ble_cont.297157	# 1270
ble.297158:
	ori		x16, x0, 4	# 1271
	mul		x16, x15, x16	# 1271
	add		x16, x9, x16	# 1271
	lw		x16, 0(x16)	# 1271
	lw		x17, 4(x14)	# 645
	lw		x18, 0(x14)	# 639
	lw		x19, 4(x16)	# 353
	sw		x14, -44(x2)	# 1275
	beq		x19, x13, beq.297160	# 1275
	ori		x20, x0, 2	# 1277
	beq		x19, x20, beq.297162	# 1277
	sw		x17, -48(x2)	# 1280
	sw		x15, -52(x2)	# 1280
	addi	x5, x16, 0
	addi	x4, x18, 0
	addi	x27, x7, 0
	sw		x1, -56(x2)	# 1280
	addi	x2, x2, -60	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 60	# 1280
	lw		x1, -56(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -52(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -48(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297161	# 1277
beq.297162:
	sw		x17, -48(x2)	# 1278
	sw		x15, -52(x2)	# 1278
	addi	x5, x16, 0
	addi	x4, x18, 0
	addi	x27, x6, 0
	sw		x1, -56(x2)	# 1278
	addi	x2, x2, -60	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 60	# 1278
	lw		x1, -56(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -52(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -48(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297161:
	jal		x0, beq_cont.297159	# 1275
beq.297160:
	sw		x17, -48(x2)	# 1276
	sw		x15, -52(x2)	# 1276
	addi	x5, x16, 0
	addi	x4, x18, 0
	addi	x27, x8, 0
	sw		x1, -56(x2)	# 1276
	addi	x2, x2, -60	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 60	# 1276
	lw		x1, -56(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -52(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -48(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297159:
	lw		x4, -36(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -32(x2)	# 1270
	ble		x6, x5, ble.297164	# 1270
	jal		x0, ble_cont.297163	# 1270
ble.297164:
	ori		x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	lw		x8, -20(x2)	# 1271
	add		x7, x8, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x9, -44(x2)	# 645
	lw		x10, 4(x9)	# 645
	lw		x11, 0(x9)	# 639
	lw		x12, 4(x7)	# 353
	beq		x12, x4, beq.297166	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.297168	# 1277
	lw		x27, -8(x2)	# 1280
	sw		x10, -56(x2)	# 1280
	sw		x5, -60(x2)	# 1280
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -64(x2)	# 1280
	addi	x2, x2, -68	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 68	# 1280
	lw		x1, -64(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -60(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -56(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297167	# 1277
beq.297168:
	lw		x27, -12(x2)	# 1278
	sw		x10, -56(x2)	# 1278
	sw		x5, -60(x2)	# 1278
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -64(x2)	# 1278
	addi	x2, x2, -68	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 68	# 1278
	lw		x1, -64(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -60(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -56(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297167:
	jal		x0, beq_cont.297165	# 1275
beq.297166:
	lw		x27, -16(x2)	# 1276
	sw		x10, -56(x2)	# 1276
	sw		x5, -60(x2)	# 1276
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -64(x2)	# 1276
	addi	x2, x2, -68	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 68	# 1276
	lw		x1, -64(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -60(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -56(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297165:
	lw		x4, -36(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -44(x2)	# 1282
	lw		x27, -4(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -64(x2)	# 1282
	addi	x2, x2, -68	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 68	# 1282
	lw		x1, -64(x2)	# 1282
ble_cont.297163:
ble_cont.297157:
	lw		x4, -36(x2)	# 2409
	lw		x5, -40(x2)	# 2409
	sub		x5, x5, x4	# 2409
	lw		x6, -32(x2)	# 2407
	ble		x6, x5, ble.297169	# 2407
	jalr	x0, x1, 0	# 2410
ble.297169:
	ori		x7, x0, 4	# 2408
	mul		x7, x5, x7	# 2408
	lw		x8, -28(x2)	# 2408
	add		x7, x8, x7	# 2408
	lw		x7, 0(x7)	# 2408
	ori		x9, x0, 4	# 1287
	mul		x9, x6, x9	# 1287
	lw		x10, -24(x2)	# 1287
	add		x9, x10, x9	# 1287
	lw		x9, 0(x9)	# 1287
	sub		x9, x9, x4	# 1287
	sw		x5, -64(x2)	# 1270
	ble		x6, x9, ble.297172	# 1270
	jal		x0, ble_cont.297171	# 1270
ble.297172:
	ori		x11, x0, 4	# 1271
	mul		x11, x9, x11	# 1271
	lw		x12, -20(x2)	# 1271
	add		x11, x12, x11	# 1271
	lw		x11, 0(x11)	# 1271
	lw		x13, 4(x7)	# 645
	lw		x14, 0(x7)	# 639
	lw		x15, 4(x11)	# 353
	sw		x7, -68(x2)	# 1275
	beq		x15, x4, beq.297174	# 1275
	ori		x16, x0, 2	# 1277
	beq		x15, x16, beq.297176	# 1277
	lw		x27, -8(x2)	# 1280
	sw		x13, -72(x2)	# 1280
	sw		x9, -76(x2)	# 1280
	addi	x5, x11, 0
	addi	x4, x14, 0
	sw		x1, -80(x2)	# 1280
	addi	x2, x2, -84	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 84	# 1280
	lw		x1, -80(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -76(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -72(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297175	# 1277
beq.297176:
	lw		x27, -12(x2)	# 1278
	sw		x13, -72(x2)	# 1278
	sw		x9, -76(x2)	# 1278
	addi	x5, x11, 0
	addi	x4, x14, 0
	sw		x1, -80(x2)	# 1278
	addi	x2, x2, -84	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 84	# 1278
	lw		x1, -80(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -76(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -72(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297175:
	jal		x0, beq_cont.297173	# 1275
beq.297174:
	lw		x27, -16(x2)	# 1276
	sw		x13, -72(x2)	# 1276
	sw		x9, -76(x2)	# 1276
	addi	x5, x11, 0
	addi	x4, x14, 0
	sw		x1, -80(x2)	# 1276
	addi	x2, x2, -84	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 84	# 1276
	lw		x1, -80(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -76(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -72(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297173:
	lw		x4, -36(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -32(x2)	# 1270
	ble		x6, x5, ble.297178	# 1270
	jal		x0, ble_cont.297177	# 1270
ble.297178:
	ori		x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	lw		x8, -20(x2)	# 1271
	add		x7, x8, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x9, -68(x2)	# 645
	lw		x10, 4(x9)	# 645
	lw		x11, 0(x9)	# 639
	lw		x12, 4(x7)	# 353
	beq		x12, x4, beq.297180	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.297182	# 1277
	lw		x27, -8(x2)	# 1280
	sw		x10, -80(x2)	# 1280
	sw		x5, -84(x2)	# 1280
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -88(x2)	# 1280
	addi	x2, x2, -92	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 92	# 1280
	lw		x1, -88(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -84(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -80(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297181	# 1277
beq.297182:
	lw		x27, -12(x2)	# 1278
	sw		x10, -80(x2)	# 1278
	sw		x5, -84(x2)	# 1278
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -88(x2)	# 1278
	addi	x2, x2, -92	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 92	# 1278
	lw		x1, -88(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -84(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -80(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297181:
	jal		x0, beq_cont.297179	# 1275
beq.297180:
	lw		x27, -16(x2)	# 1276
	sw		x10, -80(x2)	# 1276
	sw		x5, -84(x2)	# 1276
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -88(x2)	# 1276
	addi	x2, x2, -92	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 92	# 1276
	lw		x1, -88(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -84(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -80(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297179:
	lw		x4, -36(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -32(x2)	# 1270
	ble		x6, x5, ble.297184	# 1270
	jal		x0, ble_cont.297183	# 1270
ble.297184:
	ori		x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	lw		x8, -20(x2)	# 1271
	add		x7, x8, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x9, -68(x2)	# 645
	lw		x10, 4(x9)	# 645
	lw		x11, 0(x9)	# 639
	lw		x12, 4(x7)	# 353
	beq		x12, x4, beq.297186	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.297188	# 1277
	lw		x27, -8(x2)	# 1280
	sw		x10, -88(x2)	# 1280
	sw		x5, -92(x2)	# 1280
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -96(x2)	# 1280
	addi	x2, x2, -100	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 100	# 1280
	lw		x1, -96(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -92(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -88(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297187	# 1277
beq.297188:
	lw		x27, -12(x2)	# 1278
	sw		x10, -88(x2)	# 1278
	sw		x5, -92(x2)	# 1278
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -96(x2)	# 1278
	addi	x2, x2, -100	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 100	# 1278
	lw		x1, -96(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -92(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -88(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297187:
	jal		x0, beq_cont.297185	# 1275
beq.297186:
	lw		x27, -16(x2)	# 1276
	sw		x10, -88(x2)	# 1276
	sw		x5, -92(x2)	# 1276
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -96(x2)	# 1276
	addi	x2, x2, -100	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 100	# 1276
	lw		x1, -96(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -92(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -88(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297185:
	lw		x4, -36(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -68(x2)	# 1282
	lw		x27, -4(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -96(x2)	# 1282
	addi	x2, x2, -100	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 100	# 1282
	lw		x1, -96(x2)	# 1282
ble_cont.297183:
ble_cont.297177:
ble_cont.297171:
	lw		x4, -36(x2)	# 2409
	lw		x5, -64(x2)	# 2409
	sub		x5, x5, x4	# 2409
	lw		x6, -32(x2)	# 2407
	ble		x6, x5, ble.297189	# 2407
	jalr	x0, x1, 0	# 2410
ble.297189:
	ori		x7, x0, 4	# 2408
	mul		x7, x5, x7	# 2408
	lw		x8, -28(x2)	# 2408
	add		x7, x8, x7	# 2408
	lw		x7, 0(x7)	# 2408
	ori		x9, x0, 4	# 1287
	mul		x9, x6, x9	# 1287
	lw		x10, -24(x2)	# 1287
	add		x9, x10, x9	# 1287
	lw		x9, 0(x9)	# 1287
	sub		x9, x9, x4	# 1287
	sw		x5, -96(x2)	# 1270
	ble		x6, x9, ble.297192	# 1270
	jal		x0, ble_cont.297191	# 1270
ble.297192:
	ori		x11, x0, 4	# 1271
	mul		x11, x9, x11	# 1271
	lw		x12, -20(x2)	# 1271
	add		x11, x12, x11	# 1271
	lw		x11, 0(x11)	# 1271
	lw		x13, 4(x7)	# 645
	lw		x14, 0(x7)	# 639
	lw		x15, 4(x11)	# 353
	sw		x7, -100(x2)	# 1275
	beq		x15, x4, beq.297194	# 1275
	ori		x16, x0, 2	# 1277
	beq		x15, x16, beq.297196	# 1277
	lw		x27, -8(x2)	# 1280
	sw		x13, -104(x2)	# 1280
	sw		x9, -108(x2)	# 1280
	addi	x5, x11, 0
	addi	x4, x14, 0
	sw		x1, -112(x2)	# 1280
	addi	x2, x2, -116	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 116	# 1280
	lw		x1, -112(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -108(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -104(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297195	# 1277
beq.297196:
	lw		x27, -12(x2)	# 1278
	sw		x13, -104(x2)	# 1278
	sw		x9, -108(x2)	# 1278
	addi	x5, x11, 0
	addi	x4, x14, 0
	sw		x1, -112(x2)	# 1278
	addi	x2, x2, -116	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 116	# 1278
	lw		x1, -112(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -108(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -104(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297195:
	jal		x0, beq_cont.297193	# 1275
beq.297194:
	lw		x27, -16(x2)	# 1276
	sw		x13, -104(x2)	# 1276
	sw		x9, -108(x2)	# 1276
	addi	x5, x11, 0
	addi	x4, x14, 0
	sw		x1, -112(x2)	# 1276
	addi	x2, x2, -116	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 116	# 1276
	lw		x1, -112(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -108(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -104(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297193:
	lw		x4, -36(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -32(x2)	# 1270
	ble		x6, x5, ble.297198	# 1270
	jal		x0, ble_cont.297197	# 1270
ble.297198:
	ori		x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	lw		x8, -20(x2)	# 1271
	add		x7, x8, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x9, -100(x2)	# 645
	lw		x10, 4(x9)	# 645
	lw		x11, 0(x9)	# 639
	lw		x12, 4(x7)	# 353
	beq		x12, x4, beq.297200	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.297202	# 1277
	lw		x27, -8(x2)	# 1280
	sw		x10, -112(x2)	# 1280
	sw		x5, -116(x2)	# 1280
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -120(x2)	# 1280
	addi	x2, x2, -124	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 124	# 1280
	lw		x1, -120(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -116(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -112(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297201	# 1277
beq.297202:
	lw		x27, -12(x2)	# 1278
	sw		x10, -112(x2)	# 1278
	sw		x5, -116(x2)	# 1278
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -120(x2)	# 1278
	addi	x2, x2, -124	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 124	# 1278
	lw		x1, -120(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -116(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -112(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297201:
	jal		x0, beq_cont.297199	# 1275
beq.297200:
	lw		x27, -16(x2)	# 1276
	sw		x10, -112(x2)	# 1276
	sw		x5, -116(x2)	# 1276
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -120(x2)	# 1276
	addi	x2, x2, -124	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 124	# 1276
	lw		x1, -120(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -116(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -112(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297199:
	lw		x4, -36(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -100(x2)	# 1282
	lw		x27, -4(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -120(x2)	# 1282
	addi	x2, x2, -124	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 124	# 1282
	lw		x1, -120(x2)	# 1282
ble_cont.297197:
ble_cont.297191:
	lw		x4, -36(x2)	# 2409
	lw		x5, -96(x2)	# 2409
	sub		x5, x5, x4	# 2409
	lw		x6, -32(x2)	# 2407
	ble		x6, x5, ble.297203	# 2407
	jalr	x0, x1, 0	# 2410
ble.297203:
	ori		x7, x0, 4	# 2408
	mul		x7, x5, x7	# 2408
	lw		x8, -28(x2)	# 2408
	add		x7, x8, x7	# 2408
	lw		x7, 0(x7)	# 2408
	ori		x9, x0, 4	# 1287
	mul		x9, x6, x9	# 1287
	lw		x10, -24(x2)	# 1287
	add		x9, x10, x9	# 1287
	lw		x9, 0(x9)	# 1287
	sub		x9, x9, x4	# 1287
	sw		x5, -120(x2)	# 1270
	ble		x6, x9, ble.297206	# 1270
	jal		x0, ble_cont.297205	# 1270
ble.297206:
	ori		x10, x0, 4	# 1271
	mul		x10, x9, x10	# 1271
	lw		x11, -20(x2)	# 1271
	add		x10, x11, x10	# 1271
	lw		x10, 0(x10)	# 1271
	lw		x12, 4(x7)	# 645
	lw		x13, 0(x7)	# 639
	lw		x14, 4(x10)	# 353
	sw		x7, -124(x2)	# 1275
	beq		x14, x4, beq.297208	# 1275
	ori		x15, x0, 2	# 1277
	beq		x14, x15, beq.297210	# 1277
	lw		x27, -8(x2)	# 1280
	sw		x12, -128(x2)	# 1280
	sw		x9, -132(x2)	# 1280
	addi	x5, x10, 0
	addi	x4, x13, 0
	sw		x1, -136(x2)	# 1280
	addi	x2, x2, -140	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 140	# 1280
	lw		x1, -136(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -132(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -128(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297209	# 1277
beq.297210:
	lw		x27, -12(x2)	# 1278
	sw		x12, -128(x2)	# 1278
	sw		x9, -132(x2)	# 1278
	addi	x5, x10, 0
	addi	x4, x13, 0
	sw		x1, -136(x2)	# 1278
	addi	x2, x2, -140	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 140	# 1278
	lw		x1, -136(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -132(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -128(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297209:
	jal		x0, beq_cont.297207	# 1275
beq.297208:
	lw		x27, -16(x2)	# 1276
	sw		x12, -128(x2)	# 1276
	sw		x9, -132(x2)	# 1276
	addi	x5, x10, 0
	addi	x4, x13, 0
	sw		x1, -136(x2)	# 1276
	addi	x2, x2, -140	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 140	# 1276
	lw		x1, -136(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -132(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -128(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297207:
	lw		x4, -36(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -32(x2)	# 1270
	ble		x6, x5, ble.297212	# 1270
	jal		x0, ble_cont.297211	# 1270
ble.297212:
	ori		x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	lw		x8, -20(x2)	# 1271
	add		x7, x8, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x9, -124(x2)	# 645
	lw		x10, 4(x9)	# 645
	lw		x11, 0(x9)	# 639
	lw		x12, 4(x7)	# 353
	beq		x12, x4, beq.297214	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.297216	# 1277
	lw		x27, -8(x2)	# 1280
	sw		x10, -136(x2)	# 1280
	sw		x5, -140(x2)	# 1280
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -144(x2)	# 1280
	addi	x2, x2, -148	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 148	# 1280
	lw		x1, -144(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -140(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -136(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297215	# 1277
beq.297216:
	lw		x27, -12(x2)	# 1278
	sw		x10, -136(x2)	# 1278
	sw		x5, -140(x2)	# 1278
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -144(x2)	# 1278
	addi	x2, x2, -148	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 148	# 1278
	lw		x1, -144(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -140(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -136(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297215:
	jal		x0, beq_cont.297213	# 1275
beq.297214:
	lw		x27, -16(x2)	# 1276
	sw		x10, -136(x2)	# 1276
	sw		x5, -140(x2)	# 1276
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -144(x2)	# 1276
	addi	x2, x2, -148	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 148	# 1276
	lw		x1, -144(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -140(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -136(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297213:
	lw		x4, -36(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -32(x2)	# 1270
	ble		x6, x5, ble.297218	# 1270
	jal		x0, ble_cont.297217	# 1270
ble.297218:
	ori		x6, x0, 4	# 1271
	mul		x6, x5, x6	# 1271
	lw		x7, -20(x2)	# 1271
	add		x6, x7, x6	# 1271
	lw		x6, 0(x6)	# 1271
	lw		x7, -124(x2)	# 645
	lw		x8, 4(x7)	# 645
	lw		x9, 0(x7)	# 639
	lw		x10, 4(x6)	# 353
	beq		x10, x4, beq.297220	# 1275
	ori		x11, x0, 2	# 1277
	beq		x10, x11, beq.297222	# 1277
	lw		x27, -8(x2)	# 1280
	sw		x8, -144(x2)	# 1280
	sw		x5, -148(x2)	# 1280
	addi	x5, x6, 0
	addi	x4, x9, 0
	sw		x1, -152(x2)	# 1280
	addi	x2, x2, -156	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 156	# 1280
	lw		x1, -152(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -148(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -144(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297221	# 1277
beq.297222:
	lw		x27, -12(x2)	# 1278
	sw		x8, -144(x2)	# 1278
	sw		x5, -148(x2)	# 1278
	addi	x5, x6, 0
	addi	x4, x9, 0
	sw		x1, -152(x2)	# 1278
	addi	x2, x2, -156	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 156	# 1278
	lw		x1, -152(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -148(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -144(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297221:
	jal		x0, beq_cont.297219	# 1275
beq.297220:
	lw		x27, -16(x2)	# 1276
	sw		x8, -144(x2)	# 1276
	sw		x5, -148(x2)	# 1276
	addi	x5, x6, 0
	addi	x4, x9, 0
	sw		x1, -152(x2)	# 1276
	addi	x2, x2, -156	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 156	# 1276
	lw		x1, -152(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -148(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -144(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297219:
	lw		x4, -36(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -124(x2)	# 1282
	lw		x27, -4(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -152(x2)	# 1282
	addi	x2, x2, -156	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 156	# 1282
	lw		x1, -152(x2)	# 1282
ble_cont.297217:
ble_cont.297211:
ble_cont.297205:
	lw		x4, -36(x2)	# 2409
	lw		x5, -120(x2)	# 2409
	sub		x5, x5, x4	# 2409
	lw		x4, -28(x2)	# 2409
	lw		x27, 0(x2)	# 2409
	lw		x31, 0(x27)	# 2409
	jalr	x0, x31, 0	# 2409
init_vecset_constants.3002:
	lw		x5, 40(x27)	# 2414
	lw		x6, 36(x27)	# 2414
	lw		x7, 32(x27)	# 2414
	lw		x8, 28(x27)	# 2414
	lw		x9, 24(x27)	# 2414
	lw		x10, 20(x27)	# 2414
	lw		x11, 16(x27)	# 2414
	lw		x12, 12(x27)	# 2414
	lw		x13, 8(x27)	# 2414
	lw		x14, 4(x27)	# 2414
	ble		x13, x4, ble.297223	# 2414
	jalr	x0, x1, 0	# 2417
ble.297223:
	ori		x15, x0, 4	# 2415
	mul		x15, x4, x15	# 2415
	add		x15, x12, x15	# 2415
	lw		x15, 0(x15)	# 2415
	ori		x16, x0, 119	# 2415
	ori		x17, x0, 4	# 2408
	mul		x17, x16, x17	# 2408
	add		x17, x15, x17	# 2408
	lw		x17, 0(x17)	# 2408
	ori		x18, x0, 4	# 1287
	mul		x18, x13, x18	# 1287
	add		x18, x9, x18	# 1287
	lw		x18, 0(x18)	# 1287
	sub		x18, x18, x14	# 1287
	sw		x27, 0(x2)	# 1270
	sw		x16, -4(x2)	# 1270
	sw		x12, -8(x2)	# 1270
	sw		x4, -12(x2)	# 1270
	sw		x11, -16(x2)	# 1270
	sw		x10, -20(x2)	# 1270
	sw		x6, -24(x2)	# 1270
	sw		x5, -28(x2)	# 1270
	sw		x7, -32(x2)	# 1270
	sw		x8, -36(x2)	# 1270
	sw		x14, -40(x2)	# 1270
	sw		x9, -44(x2)	# 1270
	sw		x13, -48(x2)	# 1270
	sw		x15, -52(x2)	# 1270
	ble		x13, x18, ble.297226	# 1270
	jal		x0, ble_cont.297225	# 1270
ble.297226:
	ori		x19, x0, 4	# 1271
	mul		x19, x18, x19	# 1271
	add		x19, x8, x19	# 1271
	lw		x19, 0(x19)	# 1271
	lw		x20, 4(x17)	# 645
	lw		x21, 0(x17)	# 639
	lw		x22, 4(x19)	# 353
	sw		x17, -56(x2)	# 1275
	beq		x22, x14, beq.297228	# 1275
	ori		x23, x0, 2	# 1277
	beq		x22, x23, beq.297230	# 1277
	sw		x20, -60(x2)	# 1280
	sw		x18, -64(x2)	# 1280
	addi	x5, x19, 0
	addi	x4, x21, 0
	addi	x27, x6, 0
	sw		x1, -68(x2)	# 1280
	addi	x2, x2, -72	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 72	# 1280
	lw		x1, -68(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -64(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -60(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297229	# 1277
beq.297230:
	sw		x20, -60(x2)	# 1278
	sw		x18, -64(x2)	# 1278
	addi	x4, x21, 0
	addi	x27, x5, 0
	addi	x5, x19, 0
	sw		x1, -68(x2)	# 1278
	addi	x2, x2, -72	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 72	# 1278
	lw		x1, -68(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -64(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -60(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297229:
	jal		x0, beq_cont.297227	# 1275
beq.297228:
	sw		x20, -60(x2)	# 1276
	sw		x18, -64(x2)	# 1276
	addi	x5, x19, 0
	addi	x4, x21, 0
	addi	x27, x7, 0
	sw		x1, -68(x2)	# 1276
	addi	x2, x2, -72	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 72	# 1276
	lw		x1, -68(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -64(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -60(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297227:
	lw		x4, -40(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -48(x2)	# 1270
	ble		x6, x5, ble.297232	# 1270
	jal		x0, ble_cont.297231	# 1270
ble.297232:
	ori		x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	lw		x8, -36(x2)	# 1271
	add		x7, x8, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x9, -56(x2)	# 645
	lw		x10, 4(x9)	# 645
	lw		x11, 0(x9)	# 639
	lw		x12, 4(x7)	# 353
	beq		x12, x4, beq.297234	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.297236	# 1277
	lw		x27, -24(x2)	# 1280
	sw		x10, -68(x2)	# 1280
	sw		x5, -72(x2)	# 1280
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -76(x2)	# 1280
	addi	x2, x2, -80	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 80	# 1280
	lw		x1, -76(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -72(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -68(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297235	# 1277
beq.297236:
	lw		x27, -28(x2)	# 1278
	sw		x10, -68(x2)	# 1278
	sw		x5, -72(x2)	# 1278
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -76(x2)	# 1278
	addi	x2, x2, -80	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 80	# 1278
	lw		x1, -76(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -72(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -68(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297235:
	jal		x0, beq_cont.297233	# 1275
beq.297234:
	lw		x27, -32(x2)	# 1276
	sw		x10, -68(x2)	# 1276
	sw		x5, -72(x2)	# 1276
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -76(x2)	# 1276
	addi	x2, x2, -80	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 80	# 1276
	lw		x1, -76(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -72(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -68(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297233:
	lw		x4, -40(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -48(x2)	# 1270
	ble		x6, x5, ble.297238	# 1270
	jal		x0, ble_cont.297237	# 1270
ble.297238:
	ori		x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	lw		x8, -36(x2)	# 1271
	add		x7, x8, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x9, -56(x2)	# 645
	lw		x10, 4(x9)	# 645
	lw		x11, 0(x9)	# 639
	lw		x12, 4(x7)	# 353
	beq		x12, x4, beq.297240	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.297242	# 1277
	lw		x27, -24(x2)	# 1280
	sw		x10, -76(x2)	# 1280
	sw		x5, -80(x2)	# 1280
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -84(x2)	# 1280
	addi	x2, x2, -88	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 88	# 1280
	lw		x1, -84(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -80(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -76(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297241	# 1277
beq.297242:
	lw		x27, -28(x2)	# 1278
	sw		x10, -76(x2)	# 1278
	sw		x5, -80(x2)	# 1278
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -84(x2)	# 1278
	addi	x2, x2, -88	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 88	# 1278
	lw		x1, -84(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -80(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -76(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297241:
	jal		x0, beq_cont.297239	# 1275
beq.297240:
	lw		x27, -32(x2)	# 1276
	sw		x10, -76(x2)	# 1276
	sw		x5, -80(x2)	# 1276
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -84(x2)	# 1276
	addi	x2, x2, -88	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 88	# 1276
	lw		x1, -84(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -80(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -76(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297239:
	lw		x4, -40(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -56(x2)	# 1282
	lw		x27, -20(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -84(x2)	# 1282
	addi	x2, x2, -88	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 88	# 1282
	lw		x1, -84(x2)	# 1282
ble_cont.297237:
ble_cont.297231:
ble_cont.297225:
	ori		x4, x0, 118	# 2409
	ori		x5, x0, 4	# 2408
	mul		x5, x4, x5	# 2408
	lw		x6, -52(x2)	# 2408
	add		x5, x6, x5	# 2408
	lw		x5, 0(x5)	# 2408
	ori		x7, x0, 4	# 1287
	lw		x8, -48(x2)	# 1287
	mul		x7, x8, x7	# 1287
	lw		x9, -44(x2)	# 1287
	add		x7, x9, x7	# 1287
	lw		x7, 0(x7)	# 1287
	lw		x10, -40(x2)	# 1287
	sub		x7, x7, x10	# 1287
	sw		x4, -84(x2)	# 1270
	ble		x8, x7, ble.297244	# 1270
	jal		x0, ble_cont.297243	# 1270
ble.297244:
	ori		x11, x0, 4	# 1271
	mul		x11, x7, x11	# 1271
	lw		x12, -36(x2)	# 1271
	add		x11, x12, x11	# 1271
	lw		x11, 0(x11)	# 1271
	lw		x13, 4(x5)	# 645
	lw		x14, 0(x5)	# 639
	lw		x15, 4(x11)	# 353
	sw		x5, -88(x2)	# 1275
	beq		x15, x10, beq.297246	# 1275
	ori		x16, x0, 2	# 1277
	beq		x15, x16, beq.297248	# 1277
	lw		x27, -24(x2)	# 1280
	sw		x13, -92(x2)	# 1280
	sw		x7, -96(x2)	# 1280
	addi	x5, x11, 0
	addi	x4, x14, 0
	sw		x1, -100(x2)	# 1280
	addi	x2, x2, -104	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 104	# 1280
	lw		x1, -100(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -96(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -92(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297247	# 1277
beq.297248:
	lw		x27, -28(x2)	# 1278
	sw		x13, -92(x2)	# 1278
	sw		x7, -96(x2)	# 1278
	addi	x5, x11, 0
	addi	x4, x14, 0
	sw		x1, -100(x2)	# 1278
	addi	x2, x2, -104	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 104	# 1278
	lw		x1, -100(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -96(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -92(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297247:
	jal		x0, beq_cont.297245	# 1275
beq.297246:
	lw		x27, -32(x2)	# 1276
	sw		x13, -92(x2)	# 1276
	sw		x7, -96(x2)	# 1276
	addi	x5, x11, 0
	addi	x4, x14, 0
	sw		x1, -100(x2)	# 1276
	addi	x2, x2, -104	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 104	# 1276
	lw		x1, -100(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -96(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -92(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297245:
	lw		x4, -40(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -48(x2)	# 1270
	ble		x6, x5, ble.297250	# 1270
	jal		x0, ble_cont.297249	# 1270
ble.297250:
	ori		x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	lw		x8, -36(x2)	# 1271
	add		x7, x8, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x9, -88(x2)	# 645
	lw		x10, 4(x9)	# 645
	lw		x11, 0(x9)	# 639
	lw		x12, 4(x7)	# 353
	beq		x12, x4, beq.297252	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.297254	# 1277
	lw		x27, -24(x2)	# 1280
	sw		x10, -100(x2)	# 1280
	sw		x5, -104(x2)	# 1280
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -108(x2)	# 1280
	addi	x2, x2, -112	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 112	# 1280
	lw		x1, -108(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -104(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -100(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297253	# 1277
beq.297254:
	lw		x27, -28(x2)	# 1278
	sw		x10, -100(x2)	# 1278
	sw		x5, -104(x2)	# 1278
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -108(x2)	# 1278
	addi	x2, x2, -112	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 112	# 1278
	lw		x1, -108(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -104(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -100(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297253:
	jal		x0, beq_cont.297251	# 1275
beq.297252:
	lw		x27, -32(x2)	# 1276
	sw		x10, -100(x2)	# 1276
	sw		x5, -104(x2)	# 1276
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -108(x2)	# 1276
	addi	x2, x2, -112	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 112	# 1276
	lw		x1, -108(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -104(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -100(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297251:
	lw		x4, -40(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -88(x2)	# 1282
	lw		x27, -20(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -108(x2)	# 1282
	addi	x2, x2, -112	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 112	# 1282
	lw		x1, -108(x2)	# 1282
ble_cont.297249:
ble_cont.297243:
	ori		x4, x0, 117	# 2409
	ori		x5, x0, 4	# 2408
	mul		x5, x4, x5	# 2408
	lw		x6, -52(x2)	# 2408
	add		x5, x6, x5	# 2408
	lw		x5, 0(x5)	# 2408
	ori		x7, x0, 4	# 1287
	lw		x8, -48(x2)	# 1287
	mul		x7, x8, x7	# 1287
	lw		x9, -44(x2)	# 1287
	add		x7, x9, x7	# 1287
	lw		x7, 0(x7)	# 1287
	lw		x10, -40(x2)	# 1287
	sub		x7, x7, x10	# 1287
	sw		x4, -108(x2)	# 1270
	ble		x8, x7, ble.297256	# 1270
	jal		x0, ble_cont.297255	# 1270
ble.297256:
	ori		x11, x0, 4	# 1271
	mul		x11, x7, x11	# 1271
	lw		x12, -36(x2)	# 1271
	add		x11, x12, x11	# 1271
	lw		x11, 0(x11)	# 1271
	lw		x13, 4(x5)	# 645
	lw		x14, 0(x5)	# 639
	lw		x15, 4(x11)	# 353
	sw		x5, -112(x2)	# 1275
	beq		x15, x10, beq.297258	# 1275
	ori		x16, x0, 2	# 1277
	beq		x15, x16, beq.297260	# 1277
	lw		x27, -24(x2)	# 1280
	sw		x13, -116(x2)	# 1280
	sw		x7, -120(x2)	# 1280
	addi	x5, x11, 0
	addi	x4, x14, 0
	sw		x1, -124(x2)	# 1280
	addi	x2, x2, -128	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 128	# 1280
	lw		x1, -124(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -120(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -116(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297259	# 1277
beq.297260:
	lw		x27, -28(x2)	# 1278
	sw		x13, -116(x2)	# 1278
	sw		x7, -120(x2)	# 1278
	addi	x5, x11, 0
	addi	x4, x14, 0
	sw		x1, -124(x2)	# 1278
	addi	x2, x2, -128	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 128	# 1278
	lw		x1, -124(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -120(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -116(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297259:
	jal		x0, beq_cont.297257	# 1275
beq.297258:
	lw		x27, -32(x2)	# 1276
	sw		x13, -116(x2)	# 1276
	sw		x7, -120(x2)	# 1276
	addi	x5, x11, 0
	addi	x4, x14, 0
	sw		x1, -124(x2)	# 1276
	addi	x2, x2, -128	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 128	# 1276
	lw		x1, -124(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -120(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -116(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297257:
	lw		x4, -40(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -48(x2)	# 1270
	ble		x6, x5, ble.297262	# 1270
	jal		x0, ble_cont.297261	# 1270
ble.297262:
	ori		x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	lw		x8, -36(x2)	# 1271
	add		x7, x8, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x9, -112(x2)	# 645
	lw		x10, 4(x9)	# 645
	lw		x11, 0(x9)	# 639
	lw		x12, 4(x7)	# 353
	beq		x12, x4, beq.297264	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.297266	# 1277
	lw		x27, -24(x2)	# 1280
	sw		x10, -124(x2)	# 1280
	sw		x5, -128(x2)	# 1280
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -132(x2)	# 1280
	addi	x2, x2, -136	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 136	# 1280
	lw		x1, -132(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -128(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -124(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297265	# 1277
beq.297266:
	lw		x27, -28(x2)	# 1278
	sw		x10, -124(x2)	# 1278
	sw		x5, -128(x2)	# 1278
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -132(x2)	# 1278
	addi	x2, x2, -136	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 136	# 1278
	lw		x1, -132(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -128(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -124(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297265:
	jal		x0, beq_cont.297263	# 1275
beq.297264:
	lw		x27, -32(x2)	# 1276
	sw		x10, -124(x2)	# 1276
	sw		x5, -128(x2)	# 1276
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -132(x2)	# 1276
	addi	x2, x2, -136	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 136	# 1276
	lw		x1, -132(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -128(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -124(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297263:
	lw		x4, -40(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -48(x2)	# 1270
	ble		x6, x5, ble.297268	# 1270
	jal		x0, ble_cont.297267	# 1270
ble.297268:
	ori		x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	lw		x8, -36(x2)	# 1271
	add		x7, x8, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x9, -112(x2)	# 645
	lw		x10, 4(x9)	# 645
	lw		x11, 0(x9)	# 639
	lw		x12, 4(x7)	# 353
	beq		x12, x4, beq.297270	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.297272	# 1277
	lw		x27, -24(x2)	# 1280
	sw		x10, -132(x2)	# 1280
	sw		x5, -136(x2)	# 1280
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -140(x2)	# 1280
	addi	x2, x2, -144	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 144	# 1280
	lw		x1, -140(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -136(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -132(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297271	# 1277
beq.297272:
	lw		x27, -28(x2)	# 1278
	sw		x10, -132(x2)	# 1278
	sw		x5, -136(x2)	# 1278
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -140(x2)	# 1278
	addi	x2, x2, -144	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 144	# 1278
	lw		x1, -140(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -136(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -132(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297271:
	jal		x0, beq_cont.297269	# 1275
beq.297270:
	lw		x27, -32(x2)	# 1276
	sw		x10, -132(x2)	# 1276
	sw		x5, -136(x2)	# 1276
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -140(x2)	# 1276
	addi	x2, x2, -144	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 144	# 1276
	lw		x1, -140(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -136(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -132(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297269:
	lw		x4, -40(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -112(x2)	# 1282
	lw		x27, -20(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -140(x2)	# 1282
	addi	x2, x2, -144	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 144	# 1282
	lw		x1, -140(x2)	# 1282
ble_cont.297267:
ble_cont.297261:
ble_cont.297255:
	ori		x5, x0, 116	# 2409
	lw		x4, -52(x2)	# 2409
	lw		x27, -16(x2)	# 2409
	sw		x1, -140(x2)	# 2409
	addi	x2, x2, -144	# 2409
	lw		x31, 0(x27)	# 2409
	jalr	x1, x31, 0	# 2409
	addi	x2, x2, 144	# 2409
	lw		x1, -140(x2)	# 2409
	lw		x4, -40(x2)	# 2416
	lw		x5, -12(x2)	# 2416
	sub		x5, x5, x4	# 2416
	lw		x6, -48(x2)	# 2414
	ble		x6, x5, ble.297273	# 2414
	jalr	x0, x1, 0	# 2417
ble.297273:
	ori		x7, x0, 4	# 2415
	mul		x7, x5, x7	# 2415
	lw		x8, -8(x2)	# 2415
	add		x7, x8, x7	# 2415
	lw		x7, 0(x7)	# 2415
	ori		x9, x0, 4	# 2408
	lw		x10, -4(x2)	# 2408
	mul		x9, x10, x9	# 2408
	add		x9, x7, x9	# 2408
	lw		x9, 0(x9)	# 2408
	ori		x11, x0, 4	# 1287
	mul		x11, x6, x11	# 1287
	lw		x12, -44(x2)	# 1287
	add		x11, x12, x11	# 1287
	lw		x11, 0(x11)	# 1287
	sub		x11, x11, x4	# 1287
	sw		x5, -140(x2)	# 1270
	sw		x7, -144(x2)	# 1270
	ble		x6, x11, ble.297276	# 1270
	jal		x0, ble_cont.297275	# 1270
ble.297276:
	ori		x13, x0, 4	# 1271
	mul		x13, x11, x13	# 1271
	lw		x14, -36(x2)	# 1271
	add		x13, x14, x13	# 1271
	lw		x13, 0(x13)	# 1271
	lw		x15, 4(x9)	# 645
	lw		x16, 0(x9)	# 639
	lw		x17, 4(x13)	# 353
	sw		x9, -148(x2)	# 1275
	beq		x17, x4, beq.297278	# 1275
	ori		x18, x0, 2	# 1277
	beq		x17, x18, beq.297280	# 1277
	lw		x27, -24(x2)	# 1280
	sw		x15, -152(x2)	# 1280
	sw		x11, -156(x2)	# 1280
	addi	x5, x13, 0
	addi	x4, x16, 0
	sw		x1, -160(x2)	# 1280
	addi	x2, x2, -164	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 164	# 1280
	lw		x1, -160(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -156(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -152(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297279	# 1277
beq.297280:
	lw		x27, -28(x2)	# 1278
	sw		x15, -152(x2)	# 1278
	sw		x11, -156(x2)	# 1278
	addi	x5, x13, 0
	addi	x4, x16, 0
	sw		x1, -160(x2)	# 1278
	addi	x2, x2, -164	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 164	# 1278
	lw		x1, -160(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -156(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -152(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297279:
	jal		x0, beq_cont.297277	# 1275
beq.297278:
	lw		x27, -32(x2)	# 1276
	sw		x15, -152(x2)	# 1276
	sw		x11, -156(x2)	# 1276
	addi	x5, x13, 0
	addi	x4, x16, 0
	sw		x1, -160(x2)	# 1276
	addi	x2, x2, -164	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 164	# 1276
	lw		x1, -160(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -156(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -152(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297277:
	lw		x4, -40(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -48(x2)	# 1270
	ble		x6, x5, ble.297282	# 1270
	jal		x0, ble_cont.297281	# 1270
ble.297282:
	ori		x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	lw		x8, -36(x2)	# 1271
	add		x7, x8, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x9, -148(x2)	# 645
	lw		x10, 4(x9)	# 645
	lw		x11, 0(x9)	# 639
	lw		x12, 4(x7)	# 353
	beq		x12, x4, beq.297284	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.297286	# 1277
	lw		x27, -24(x2)	# 1280
	sw		x10, -160(x2)	# 1280
	sw		x5, -164(x2)	# 1280
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -168(x2)	# 1280
	addi	x2, x2, -172	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 172	# 1280
	lw		x1, -168(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -164(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -160(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297285	# 1277
beq.297286:
	lw		x27, -28(x2)	# 1278
	sw		x10, -160(x2)	# 1278
	sw		x5, -164(x2)	# 1278
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -168(x2)	# 1278
	addi	x2, x2, -172	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 172	# 1278
	lw		x1, -168(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -164(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -160(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297285:
	jal		x0, beq_cont.297283	# 1275
beq.297284:
	lw		x27, -32(x2)	# 1276
	sw		x10, -160(x2)	# 1276
	sw		x5, -164(x2)	# 1276
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -168(x2)	# 1276
	addi	x2, x2, -172	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 172	# 1276
	lw		x1, -168(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -164(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -160(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297283:
	lw		x4, -40(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -148(x2)	# 1282
	lw		x27, -20(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -168(x2)	# 1282
	addi	x2, x2, -172	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 172	# 1282
	lw		x1, -168(x2)	# 1282
ble_cont.297281:
ble_cont.297275:
	ori		x4, x0, 4	# 2408
	lw		x5, -84(x2)	# 2408
	mul		x4, x5, x4	# 2408
	lw		x6, -144(x2)	# 2408
	add		x4, x6, x4	# 2408
	lw		x4, 0(x4)	# 2408
	ori		x7, x0, 4	# 1287
	lw		x8, -48(x2)	# 1287
	mul		x7, x8, x7	# 1287
	lw		x9, -44(x2)	# 1287
	add		x7, x9, x7	# 1287
	lw		x7, 0(x7)	# 1287
	lw		x10, -40(x2)	# 1287
	sub		x7, x7, x10	# 1287
	ble		x8, x7, ble.297288	# 1270
	jal		x0, ble_cont.297287	# 1270
ble.297288:
	ori		x11, x0, 4	# 1271
	mul		x11, x7, x11	# 1271
	lw		x12, -36(x2)	# 1271
	add		x11, x12, x11	# 1271
	lw		x11, 0(x11)	# 1271
	lw		x13, 4(x4)	# 645
	lw		x14, 0(x4)	# 639
	lw		x15, 4(x11)	# 353
	sw		x4, -168(x2)	# 1275
	beq		x15, x10, beq.297290	# 1275
	ori		x16, x0, 2	# 1277
	beq		x15, x16, beq.297292	# 1277
	lw		x27, -24(x2)	# 1280
	sw		x13, -172(x2)	# 1280
	sw		x7, -176(x2)	# 1280
	addi	x5, x11, 0
	addi	x4, x14, 0
	sw		x1, -180(x2)	# 1280
	addi	x2, x2, -184	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 184	# 1280
	lw		x1, -180(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -176(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -172(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297291	# 1277
beq.297292:
	lw		x27, -28(x2)	# 1278
	sw		x13, -172(x2)	# 1278
	sw		x7, -176(x2)	# 1278
	addi	x5, x11, 0
	addi	x4, x14, 0
	sw		x1, -180(x2)	# 1278
	addi	x2, x2, -184	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 184	# 1278
	lw		x1, -180(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -176(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -172(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297291:
	jal		x0, beq_cont.297289	# 1275
beq.297290:
	lw		x27, -32(x2)	# 1276
	sw		x13, -172(x2)	# 1276
	sw		x7, -176(x2)	# 1276
	addi	x5, x11, 0
	addi	x4, x14, 0
	sw		x1, -180(x2)	# 1276
	addi	x2, x2, -184	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 184	# 1276
	lw		x1, -180(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -176(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -172(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297289:
	lw		x4, -40(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -48(x2)	# 1270
	ble		x6, x5, ble.297294	# 1270
	jal		x0, ble_cont.297293	# 1270
ble.297294:
	ori		x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	lw		x8, -36(x2)	# 1271
	add		x7, x8, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x9, -168(x2)	# 645
	lw		x10, 4(x9)	# 645
	lw		x11, 0(x9)	# 639
	lw		x12, 4(x7)	# 353
	beq		x12, x4, beq.297296	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.297298	# 1277
	lw		x27, -24(x2)	# 1280
	sw		x10, -180(x2)	# 1280
	sw		x5, -184(x2)	# 1280
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -188(x2)	# 1280
	addi	x2, x2, -192	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 192	# 1280
	lw		x1, -188(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -184(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -180(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297297	# 1277
beq.297298:
	lw		x27, -28(x2)	# 1278
	sw		x10, -180(x2)	# 1278
	sw		x5, -184(x2)	# 1278
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -188(x2)	# 1278
	addi	x2, x2, -192	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 192	# 1278
	lw		x1, -188(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -184(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -180(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297297:
	jal		x0, beq_cont.297295	# 1275
beq.297296:
	lw		x27, -32(x2)	# 1276
	sw		x10, -180(x2)	# 1276
	sw		x5, -184(x2)	# 1276
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -188(x2)	# 1276
	addi	x2, x2, -192	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 192	# 1276
	lw		x1, -188(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -184(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -180(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297295:
	lw		x4, -40(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -48(x2)	# 1270
	ble		x6, x5, ble.297300	# 1270
	jal		x0, ble_cont.297299	# 1270
ble.297300:
	ori		x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	lw		x8, -36(x2)	# 1271
	add		x7, x8, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x9, -168(x2)	# 645
	lw		x10, 4(x9)	# 645
	lw		x11, 0(x9)	# 639
	lw		x12, 4(x7)	# 353
	beq		x12, x4, beq.297302	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.297304	# 1277
	lw		x27, -24(x2)	# 1280
	sw		x10, -188(x2)	# 1280
	sw		x5, -192(x2)	# 1280
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -196(x2)	# 1280
	addi	x2, x2, -200	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 200	# 1280
	lw		x1, -196(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -192(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -188(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297303	# 1277
beq.297304:
	lw		x27, -28(x2)	# 1278
	sw		x10, -188(x2)	# 1278
	sw		x5, -192(x2)	# 1278
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -196(x2)	# 1278
	addi	x2, x2, -200	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 200	# 1278
	lw		x1, -196(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -192(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -188(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297303:
	jal		x0, beq_cont.297301	# 1275
beq.297302:
	lw		x27, -32(x2)	# 1276
	sw		x10, -188(x2)	# 1276
	sw		x5, -192(x2)	# 1276
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -196(x2)	# 1276
	addi	x2, x2, -200	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 200	# 1276
	lw		x1, -196(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -192(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -188(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297301:
	lw		x4, -40(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -168(x2)	# 1282
	lw		x27, -20(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -196(x2)	# 1282
	addi	x2, x2, -200	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 200	# 1282
	lw		x1, -196(x2)	# 1282
ble_cont.297299:
ble_cont.297293:
ble_cont.297287:
	lw		x4, -144(x2)	# 2409
	lw		x5, -108(x2)	# 2409
	lw		x27, -16(x2)	# 2409
	sw		x1, -196(x2)	# 2409
	addi	x2, x2, -200	# 2409
	lw		x31, 0(x27)	# 2409
	jalr	x1, x31, 0	# 2409
	addi	x2, x2, 200	# 2409
	lw		x1, -196(x2)	# 2409
	lw		x4, -40(x2)	# 2416
	lw		x5, -140(x2)	# 2416
	sub		x5, x5, x4	# 2416
	lw		x6, -48(x2)	# 2414
	ble		x6, x5, ble.297305	# 2414
	jalr	x0, x1, 0	# 2417
ble.297305:
	ori		x7, x0, 4	# 2415
	mul		x7, x5, x7	# 2415
	lw		x8, -8(x2)	# 2415
	add		x7, x8, x7	# 2415
	lw		x7, 0(x7)	# 2415
	ori		x9, x0, 4	# 2408
	lw		x10, -4(x2)	# 2408
	mul		x9, x10, x9	# 2408
	add		x9, x7, x9	# 2408
	lw		x9, 0(x9)	# 2408
	ori		x11, x0, 4	# 1287
	mul		x11, x6, x11	# 1287
	lw		x12, -44(x2)	# 1287
	add		x11, x12, x11	# 1287
	lw		x11, 0(x11)	# 1287
	sub		x11, x11, x4	# 1287
	sw		x5, -196(x2)	# 1270
	sw		x7, -200(x2)	# 1270
	ble		x6, x11, ble.297308	# 1270
	jal		x0, ble_cont.297307	# 1270
ble.297308:
	ori		x12, x0, 4	# 1271
	mul		x12, x11, x12	# 1271
	lw		x13, -36(x2)	# 1271
	add		x12, x13, x12	# 1271
	lw		x12, 0(x12)	# 1271
	lw		x14, 4(x9)	# 645
	lw		x15, 0(x9)	# 639
	lw		x16, 4(x12)	# 353
	sw		x9, -204(x2)	# 1275
	beq		x16, x4, beq.297310	# 1275
	ori		x17, x0, 2	# 1277
	beq		x16, x17, beq.297312	# 1277
	lw		x27, -24(x2)	# 1280
	sw		x14, -208(x2)	# 1280
	sw		x11, -212(x2)	# 1280
	addi	x5, x12, 0
	addi	x4, x15, 0
	sw		x1, -216(x2)	# 1280
	addi	x2, x2, -220	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 220	# 1280
	lw		x1, -216(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -212(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -208(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297311	# 1277
beq.297312:
	lw		x27, -28(x2)	# 1278
	sw		x14, -208(x2)	# 1278
	sw		x11, -212(x2)	# 1278
	addi	x5, x12, 0
	addi	x4, x15, 0
	sw		x1, -216(x2)	# 1278
	addi	x2, x2, -220	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 220	# 1278
	lw		x1, -216(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -212(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -208(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297311:
	jal		x0, beq_cont.297309	# 1275
beq.297310:
	lw		x27, -32(x2)	# 1276
	sw		x14, -208(x2)	# 1276
	sw		x11, -212(x2)	# 1276
	addi	x5, x12, 0
	addi	x4, x15, 0
	sw		x1, -216(x2)	# 1276
	addi	x2, x2, -220	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 220	# 1276
	lw		x1, -216(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -212(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -208(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297309:
	lw		x4, -40(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -48(x2)	# 1270
	ble		x6, x5, ble.297314	# 1270
	jal		x0, ble_cont.297313	# 1270
ble.297314:
	ori		x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	lw		x8, -36(x2)	# 1271
	add		x7, x8, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x9, -204(x2)	# 645
	lw		x10, 4(x9)	# 645
	lw		x11, 0(x9)	# 639
	lw		x12, 4(x7)	# 353
	beq		x12, x4, beq.297316	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.297318	# 1277
	lw		x27, -24(x2)	# 1280
	sw		x10, -216(x2)	# 1280
	sw		x5, -220(x2)	# 1280
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -224(x2)	# 1280
	addi	x2, x2, -228	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 228	# 1280
	lw		x1, -224(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -220(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -216(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297317	# 1277
beq.297318:
	lw		x27, -28(x2)	# 1278
	sw		x10, -216(x2)	# 1278
	sw		x5, -220(x2)	# 1278
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -224(x2)	# 1278
	addi	x2, x2, -228	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 228	# 1278
	lw		x1, -224(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -220(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -216(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297317:
	jal		x0, beq_cont.297315	# 1275
beq.297316:
	lw		x27, -32(x2)	# 1276
	sw		x10, -216(x2)	# 1276
	sw		x5, -220(x2)	# 1276
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -224(x2)	# 1276
	addi	x2, x2, -228	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 228	# 1276
	lw		x1, -224(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -220(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -216(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297315:
	lw		x4, -40(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -48(x2)	# 1270
	ble		x6, x5, ble.297320	# 1270
	jal		x0, ble_cont.297319	# 1270
ble.297320:
	ori		x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	lw		x8, -36(x2)	# 1271
	add		x7, x8, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x8, -204(x2)	# 645
	lw		x9, 4(x8)	# 645
	lw		x10, 0(x8)	# 639
	lw		x11, 4(x7)	# 353
	beq		x11, x4, beq.297322	# 1275
	ori		x12, x0, 2	# 1277
	beq		x11, x12, beq.297324	# 1277
	lw		x27, -24(x2)	# 1280
	sw		x9, -224(x2)	# 1280
	sw		x5, -228(x2)	# 1280
	addi	x5, x7, 0
	addi	x4, x10, 0
	sw		x1, -232(x2)	# 1280
	addi	x2, x2, -236	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 236	# 1280
	lw		x1, -232(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -228(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -224(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297323	# 1277
beq.297324:
	lw		x27, -28(x2)	# 1278
	sw		x9, -224(x2)	# 1278
	sw		x5, -228(x2)	# 1278
	addi	x5, x7, 0
	addi	x4, x10, 0
	sw		x1, -232(x2)	# 1278
	addi	x2, x2, -236	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 236	# 1278
	lw		x1, -232(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -228(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -224(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297323:
	jal		x0, beq_cont.297321	# 1275
beq.297322:
	lw		x27, -32(x2)	# 1276
	sw		x9, -224(x2)	# 1276
	sw		x5, -228(x2)	# 1276
	addi	x5, x7, 0
	addi	x4, x10, 0
	sw		x1, -232(x2)	# 1276
	addi	x2, x2, -236	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 236	# 1276
	lw		x1, -232(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -228(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -224(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297321:
	lw		x4, -40(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -204(x2)	# 1282
	lw		x27, -20(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -232(x2)	# 1282
	addi	x2, x2, -236	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 236	# 1282
	lw		x1, -232(x2)	# 1282
ble_cont.297319:
ble_cont.297313:
ble_cont.297307:
	lw		x4, -200(x2)	# 2409
	lw		x5, -84(x2)	# 2409
	lw		x27, -16(x2)	# 2409
	sw		x1, -232(x2)	# 2409
	addi	x2, x2, -236	# 2409
	lw		x31, 0(x27)	# 2409
	jalr	x1, x31, 0	# 2409
	addi	x2, x2, 236	# 2409
	lw		x1, -232(x2)	# 2409
	lw		x4, -40(x2)	# 2416
	lw		x5, -196(x2)	# 2416
	sub		x5, x5, x4	# 2416
	lw		x6, -48(x2)	# 2414
	ble		x6, x5, ble.297325	# 2414
	jalr	x0, x1, 0	# 2417
ble.297325:
	ori		x6, x0, 4	# 2415
	mul		x6, x5, x6	# 2415
	lw		x7, -8(x2)	# 2415
	add		x6, x7, x6	# 2415
	lw		x6, 0(x6)	# 2415
	lw		x7, -4(x2)	# 2415
	lw		x27, -16(x2)	# 2415
	sw		x5, -232(x2)	# 2415
	addi	x5, x7, 0
	addi	x4, x6, 0
	sw		x1, -236(x2)	# 2415
	addi	x2, x2, -240	# 2415
	lw		x31, 0(x27)	# 2415
	jalr	x1, x31, 0	# 2415
	addi	x2, x2, 240	# 2415
	lw		x1, -236(x2)	# 2415
	lw		x4, -40(x2)	# 2416
	lw		x5, -232(x2)	# 2416
	sub		x4, x5, x4	# 2416
	lw		x27, 0(x2)	# 2416
	lw		x31, 0(x27)	# 2416
	jalr	x0, x31, 0	# 2416
setup_rect_reflection.3013:
	lw		x6, 56(x27)	# 2441
	lw		x7, 52(x27)	# 2441
	lw		x8, 48(x27)	# 2441
	lw		x9, 44(x27)	# 2441
	lw		x10, 40(x27)	# 2441
	lw		x11, 36(x27)	# 2441
	lw		x12, 32(x27)	# 2441
	lw		x13, 28(x27)	# 2441
	lw		x14, 24(x27)	# 2441
	lw		x15, 20(x27)	# 2441
	lw		x16, 16(x27)	# 2441
	lw		x17, 12(x27)	# 2441
	lw		x18, 8(x27)	# 2441
	flw		f0, 4(x27)	# 2441
	ori		x19, x0, 4	# 2441
	mul		x4, x4, x19	# 2441
	ori		x19, x0, 4	# 2442
	mul		x19, x17, x19	# 2442
	add		x19, x11, x19	# 2442
	lw		x19, 0(x19)	# 2442
	lui		x20, %hi(l.15661)	# 2443
	ori		x20, x0, %lo(l.15661)	# 2443
	flw		f1, 0(x20)	# 2443
	lw		x5, 28(x5)	# 461
	ori		x20, x0, 4	# 466
	mul		x20, x17, x20	# 466
	add		x5, x5, x20	# 466
	flw		f2, 0(x5)	# 466
	fsub	f1, f1, f2	# 2443
	ori		x5, x0, 4	# 2444
	mul		x5, x17, x5	# 2444
	add		x5, x13, x5	# 2444
	flw		f2, 0(x5)	# 2444
	fsub	f3, f3, f3	# 4
	fsub	f3, f3, f2	# 4
	ori		x5, x0, 4	# 2445
	mul		x5, x18, x5	# 2445
	add		x5, x13, x5	# 2445
	flw		f4, 0(x5)	# 2445
	fsub	x31, x31, x31	# 4
	fsub	f4, x31, f4	# 4
	ori		x5, x0, 4	# 2446
	mul		x5, x15, x5	# 2446
	add		x5, x13, x5	# 2446
	flw		f5, 0(x5)	# 2446
	fsub	x31, x31, x31	# 4
	fsub	f5, x31, f5	# 4
	add		x5, x4, x18	# 2447
	sw		x11, 0(x2)	# 2382
	fsw		f3, -8(x2)	# 2382
	fsw		f0, -16(x2)	# 2382
	sw		x16, -24(x2)	# 2382
	sw		x13, -28(x2)	# 2382
	sw		x4, -32(x2)	# 2382
	sw		x9, -36(x2)	# 2382
	sw		x19, -40(x2)	# 2382
	sw		x5, -44(x2)	# 2382
	fsw		f1, -48(x2)	# 2382
	sw		x14, -56(x2)	# 2382
	sw		x7, -60(x2)	# 2382
	sw		x6, -64(x2)	# 2382
	sw		x8, -68(x2)	# 2382
	sw		x10, -72(x2)	# 2382
	fsw		f5, -80(x2)	# 2382
	sw		x15, -88(x2)	# 2382
	fsw		f4, -96(x2)	# 2382
	sw		x18, -104(x2)	# 2382
	fsw		f2, -112(x2)	# 2382
	sw		x12, -120(x2)	# 2382
	sw		x17, -124(x2)	# 2382
	addi	x4, x16, 0
	sw		x1, -128(x2)	# 2382
	addi	x2, x2, -132	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 132	# 2382
	lw		x1, -128(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -124(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x7, -120(x2)	# 2383
	add		x4, x7, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -128(x2)	# 2383
	sw		x1, -132(x2)	# 2383
	addi	x2, x2, -136	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 136	# 2383
	lw		x1, -132(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x6, -128(x2)	# 2384
	sw		x6, 0(x5)	# 2384
	ori		x7, x0, 4	# 240
	lw		x8, -124(x2)	# 240
	mul		x7, x8, x7	# 240
	add		x7, x6, x7	# 240
	flw		f0, -112(x2)	# 240
	fsw		f0, 0(x7)	# 240
	ori		x7, x0, 4	# 241
	lw		x9, -104(x2)	# 241
	mul		x7, x9, x7	# 241
	add		x7, x6, x7	# 241
	flw		f0, -96(x2)	# 241
	fsw		f0, 0(x7)	# 241
	ori		x7, x0, 4	# 242
	lw		x10, -88(x2)	# 242
	mul		x7, x10, x7	# 242
	add		x7, x6, x7	# 242
	flw		f1, -80(x2)	# 242
	fsw		f1, 0(x7)	# 242
	ori		x7, x0, 4	# 1287
	mul		x7, x8, x7	# 1287
	lw		x11, -120(x2)	# 1287
	add		x7, x11, x7	# 1287
	lw		x7, 0(x7)	# 1287
	sub		x7, x7, x9	# 1287
	sw		x5, -132(x2)	# 1270
	ble		x8, x7, ble.297332	# 1270
	jal		x0, ble_cont.297331	# 1270
ble.297332:
	ori		x12, x0, 4	# 1271
	mul		x12, x7, x12	# 1271
	lw		x13, -72(x2)	# 1271
	add		x12, x13, x12	# 1271
	lw		x12, 0(x12)	# 1271
	lw		x14, 4(x12)	# 353
	beq		x14, x9, beq.297334	# 1275
	ori		x15, x0, 2	# 1277
	beq		x14, x15, beq.297336	# 1277
	lw		x27, -60(x2)	# 1280
	sw		x4, -136(x2)	# 1280
	sw		x7, -140(x2)	# 1280
	addi	x5, x12, 0
	addi	x4, x6, 0
	sw		x1, -144(x2)	# 1280
	addi	x2, x2, -148	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 148	# 1280
	lw		x1, -144(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -140(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -136(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297335	# 1277
beq.297336:
	lw		x27, -64(x2)	# 1278
	sw		x4, -136(x2)	# 1278
	sw		x7, -140(x2)	# 1278
	addi	x5, x12, 0
	addi	x4, x6, 0
	sw		x1, -144(x2)	# 1278
	addi	x2, x2, -148	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 148	# 1278
	lw		x1, -144(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -140(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -136(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297335:
	jal		x0, beq_cont.297333	# 1275
beq.297334:
	lw		x27, -68(x2)	# 1276
	sw		x4, -136(x2)	# 1276
	sw		x7, -140(x2)	# 1276
	addi	x5, x12, 0
	addi	x4, x6, 0
	sw		x1, -144(x2)	# 1276
	addi	x2, x2, -148	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 148	# 1276
	lw		x1, -144(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -140(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -136(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297333:
	lw		x4, -104(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -124(x2)	# 1270
	ble		x6, x5, ble.297338	# 1270
	jal		x0, ble_cont.297337	# 1270
ble.297338:
	ori		x8, x0, 4	# 1271
	mul		x8, x5, x8	# 1271
	lw		x9, -72(x2)	# 1271
	add		x8, x9, x8	# 1271
	lw		x8, 0(x8)	# 1271
	lw		x10, 4(x8)	# 353
	beq		x10, x4, beq.297340	# 1275
	ori		x11, x0, 2	# 1277
	beq		x10, x11, beq.297342	# 1277
	lw		x10, -128(x2)	# 1280
	lw		x27, -60(x2)	# 1280
	sw		x5, -144(x2)	# 1280
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -148(x2)	# 1280
	addi	x2, x2, -152	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 152	# 1280
	lw		x1, -148(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -144(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -136(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297341	# 1277
beq.297342:
	lw		x10, -128(x2)	# 1278
	lw		x27, -64(x2)	# 1278
	sw		x5, -144(x2)	# 1278
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -148(x2)	# 1278
	addi	x2, x2, -152	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 152	# 1278
	lw		x1, -148(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -144(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -136(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297341:
	jal		x0, beq_cont.297339	# 1275
beq.297340:
	lw		x10, -128(x2)	# 1276
	lw		x27, -68(x2)	# 1276
	sw		x5, -144(x2)	# 1276
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -148(x2)	# 1276
	addi	x2, x2, -152	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 152	# 1276
	lw		x1, -148(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -144(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -136(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297339:
	lw		x4, -104(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -124(x2)	# 1270
	ble		x6, x5, ble.297344	# 1270
	jal		x0, ble_cont.297343	# 1270
ble.297344:
	ori		x8, x0, 4	# 1271
	mul		x8, x5, x8	# 1271
	lw		x9, -72(x2)	# 1271
	add		x8, x9, x8	# 1271
	lw		x8, 0(x8)	# 1271
	lw		x10, 4(x8)	# 353
	beq		x10, x4, beq.297346	# 1275
	ori		x11, x0, 2	# 1277
	beq		x10, x11, beq.297348	# 1277
	lw		x10, -128(x2)	# 1280
	lw		x27, -60(x2)	# 1280
	sw		x5, -148(x2)	# 1280
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -152(x2)	# 1280
	addi	x2, x2, -156	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 156	# 1280
	lw		x1, -152(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -148(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -136(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297347	# 1277
beq.297348:
	lw		x10, -128(x2)	# 1278
	lw		x27, -64(x2)	# 1278
	sw		x5, -148(x2)	# 1278
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -152(x2)	# 1278
	addi	x2, x2, -156	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 156	# 1278
	lw		x1, -152(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -148(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -136(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297347:
	jal		x0, beq_cont.297345	# 1275
beq.297346:
	lw		x10, -128(x2)	# 1276
	lw		x27, -68(x2)	# 1276
	sw		x5, -148(x2)	# 1276
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -152(x2)	# 1276
	addi	x2, x2, -156	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 156	# 1276
	lw		x1, -152(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -148(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -136(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297345:
	lw		x4, -104(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -132(x2)	# 1282
	lw		x27, -56(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -152(x2)	# 1282
	addi	x2, x2, -156	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 156	# 1282
	lw		x1, -152(x2)	# 1282
ble_cont.297343:
ble_cont.297337:
ble_cont.297331:
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f0, -48(x2)	# 2436
	fsw		f0, 8(x4)	# 2436
	lw		x5, -132(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -44(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	ori		x5, x0, 4	# 2436
	lw		x6, -40(x2)	# 2436
	mul		x5, x6, x5	# 2436
	lw		x7, -36(x2)	# 2436
	add		x5, x7, x5	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -104(x2)	# 2448
	add		x5, x6, x4	# 2448
	lw		x8, -88(x2)	# 2448
	lw		x9, -32(x2)	# 2448
	add		x10, x9, x8	# 2448
	ori		x11, x0, 4	# 2448
	mul		x11, x4, x11	# 2448
	lw		x12, -28(x2)	# 2448
	add		x11, x12, x11	# 2448
	flw		f1, 0(x11)	# 2448
	flw		f2, -16(x2)	# 2382
	lw		x11, -24(x2)	# 2382
	sw		x5, -152(x2)	# 2382
	sw		x10, -156(x2)	# 2382
	fsw		f1, -160(x2)	# 2382
	addi	x4, x11, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -168(x2)	# 2382
	addi	x2, x2, -172	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 172	# 2382
	lw		x1, -168(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -124(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x7, -120(x2)	# 2383
	add		x4, x7, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -168(x2)	# 2383
	sw		x1, -172(x2)	# 2383
	addi	x2, x2, -176	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 176	# 2383
	lw		x1, -172(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x6, -168(x2)	# 2384
	sw		x6, 0(x5)	# 2384
	ori		x7, x0, 4	# 240
	lw		x8, -124(x2)	# 240
	mul		x7, x8, x7	# 240
	add		x7, x6, x7	# 240
	flw		f0, -8(x2)	# 240
	fsw		f0, 0(x7)	# 240
	ori		x7, x0, 4	# 241
	lw		x9, -104(x2)	# 241
	mul		x7, x9, x7	# 241
	add		x7, x6, x7	# 241
	flw		f1, -160(x2)	# 241
	fsw		f1, 0(x7)	# 241
	ori		x7, x0, 4	# 242
	lw		x10, -88(x2)	# 242
	mul		x7, x10, x7	# 242
	add		x7, x6, x7	# 242
	flw		f1, -80(x2)	# 242
	fsw		f1, 0(x7)	# 242
	ori		x7, x0, 4	# 1287
	mul		x7, x8, x7	# 1287
	lw		x11, -120(x2)	# 1287
	add		x7, x11, x7	# 1287
	lw		x7, 0(x7)	# 1287
	sub		x7, x7, x9	# 1287
	sw		x5, -172(x2)	# 1270
	ble		x8, x7, ble.297350	# 1270
	jal		x0, ble_cont.297349	# 1270
ble.297350:
	ori		x12, x0, 4	# 1271
	mul		x12, x7, x12	# 1271
	lw		x13, -72(x2)	# 1271
	add		x12, x13, x12	# 1271
	lw		x12, 0(x12)	# 1271
	lw		x14, 4(x12)	# 353
	beq		x14, x9, beq.297352	# 1275
	ori		x15, x0, 2	# 1277
	beq		x14, x15, beq.297354	# 1277
	lw		x27, -60(x2)	# 1280
	sw		x4, -176(x2)	# 1280
	sw		x7, -180(x2)	# 1280
	addi	x5, x12, 0
	addi	x4, x6, 0
	sw		x1, -184(x2)	# 1280
	addi	x2, x2, -188	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 188	# 1280
	lw		x1, -184(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -180(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -176(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297353	# 1277
beq.297354:
	lw		x27, -64(x2)	# 1278
	sw		x4, -176(x2)	# 1278
	sw		x7, -180(x2)	# 1278
	addi	x5, x12, 0
	addi	x4, x6, 0
	sw		x1, -184(x2)	# 1278
	addi	x2, x2, -188	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 188	# 1278
	lw		x1, -184(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -180(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -176(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297353:
	jal		x0, beq_cont.297351	# 1275
beq.297352:
	lw		x27, -68(x2)	# 1276
	sw		x4, -176(x2)	# 1276
	sw		x7, -180(x2)	# 1276
	addi	x5, x12, 0
	addi	x4, x6, 0
	sw		x1, -184(x2)	# 1276
	addi	x2, x2, -188	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 188	# 1276
	lw		x1, -184(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -180(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -176(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297351:
	lw		x4, -104(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -124(x2)	# 1270
	ble		x6, x5, ble.297356	# 1270
	jal		x0, ble_cont.297355	# 1270
ble.297356:
	ori		x8, x0, 4	# 1271
	mul		x8, x5, x8	# 1271
	lw		x9, -72(x2)	# 1271
	add		x8, x9, x8	# 1271
	lw		x8, 0(x8)	# 1271
	lw		x10, 4(x8)	# 353
	beq		x10, x4, beq.297358	# 1275
	ori		x11, x0, 2	# 1277
	beq		x10, x11, beq.297360	# 1277
	lw		x10, -168(x2)	# 1280
	lw		x27, -60(x2)	# 1280
	sw		x5, -184(x2)	# 1280
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -188(x2)	# 1280
	addi	x2, x2, -192	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 192	# 1280
	lw		x1, -188(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -184(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -176(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297359	# 1277
beq.297360:
	lw		x10, -168(x2)	# 1278
	lw		x27, -64(x2)	# 1278
	sw		x5, -184(x2)	# 1278
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -188(x2)	# 1278
	addi	x2, x2, -192	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 192	# 1278
	lw		x1, -188(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -184(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -176(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297359:
	jal		x0, beq_cont.297357	# 1275
beq.297358:
	lw		x10, -168(x2)	# 1276
	lw		x27, -68(x2)	# 1276
	sw		x5, -184(x2)	# 1276
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -188(x2)	# 1276
	addi	x2, x2, -192	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 192	# 1276
	lw		x1, -188(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -184(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -176(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297357:
	lw		x4, -104(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -124(x2)	# 1270
	ble		x6, x5, ble.297362	# 1270
	jal		x0, ble_cont.297361	# 1270
ble.297362:
	ori		x8, x0, 4	# 1271
	mul		x8, x5, x8	# 1271
	lw		x9, -72(x2)	# 1271
	add		x8, x9, x8	# 1271
	lw		x8, 0(x8)	# 1271
	lw		x10, 4(x8)	# 353
	beq		x10, x4, beq.297364	# 1275
	ori		x11, x0, 2	# 1277
	beq		x10, x11, beq.297366	# 1277
	lw		x10, -168(x2)	# 1280
	lw		x27, -60(x2)	# 1280
	sw		x5, -188(x2)	# 1280
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -192(x2)	# 1280
	addi	x2, x2, -196	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 196	# 1280
	lw		x1, -192(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -188(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -176(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297365	# 1277
beq.297366:
	lw		x10, -168(x2)	# 1278
	lw		x27, -64(x2)	# 1278
	sw		x5, -188(x2)	# 1278
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -192(x2)	# 1278
	addi	x2, x2, -196	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 196	# 1278
	lw		x1, -192(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -188(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -176(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297365:
	jal		x0, beq_cont.297363	# 1275
beq.297364:
	lw		x10, -168(x2)	# 1276
	lw		x27, -68(x2)	# 1276
	sw		x5, -188(x2)	# 1276
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -192(x2)	# 1276
	addi	x2, x2, -196	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 196	# 1276
	lw		x1, -192(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -188(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -176(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297363:
	lw		x4, -104(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -172(x2)	# 1282
	lw		x27, -56(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -192(x2)	# 1282
	addi	x2, x2, -196	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 196	# 1282
	lw		x1, -192(x2)	# 1282
ble_cont.297361:
ble_cont.297355:
ble_cont.297349:
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f0, -48(x2)	# 2436
	fsw		f0, 8(x4)	# 2436
	lw		x5, -172(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -156(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	ori		x5, x0, 4	# 2436
	lw		x6, -152(x2)	# 2436
	mul		x5, x6, x5	# 2436
	lw		x6, -36(x2)	# 2436
	add		x5, x6, x5	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -88(x2)	# 2449
	lw		x5, -40(x2)	# 2449
	add		x7, x5, x4	# 2449
	lw		x8, -24(x2)	# 2449
	lw		x9, -32(x2)	# 2449
	add		x9, x9, x8	# 2449
	ori		x10, x0, 4	# 2449
	mul		x10, x4, x10	# 2449
	lw		x11, -28(x2)	# 2449
	add		x10, x11, x10	# 2449
	flw		f1, 0(x10)	# 2449
	flw		f2, -16(x2)	# 2382
	sw		x7, -192(x2)	# 2382
	sw		x9, -196(x2)	# 2382
	fsw		f1, -200(x2)	# 2382
	addi	x4, x8, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -208(x2)	# 2382
	addi	x2, x2, -212	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 212	# 2382
	lw		x1, -208(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -124(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x7, -120(x2)	# 2383
	add		x4, x7, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -208(x2)	# 2383
	sw		x1, -212(x2)	# 2383
	addi	x2, x2, -216	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 216	# 2383
	lw		x1, -212(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x6, -208(x2)	# 2384
	sw		x6, 0(x5)	# 2384
	ori		x7, x0, 4	# 240
	lw		x8, -124(x2)	# 240
	mul		x7, x8, x7	# 240
	add		x7, x6, x7	# 240
	flw		f0, -8(x2)	# 240
	fsw		f0, 0(x7)	# 240
	ori		x7, x0, 4	# 241
	lw		x9, -104(x2)	# 241
	mul		x7, x9, x7	# 241
	add		x7, x6, x7	# 241
	flw		f0, -96(x2)	# 241
	fsw		f0, 0(x7)	# 241
	ori		x7, x0, 4	# 242
	lw		x10, -88(x2)	# 242
	mul		x7, x10, x7	# 242
	add		x7, x6, x7	# 242
	flw		f0, -200(x2)	# 242
	fsw		f0, 0(x7)	# 242
	ori		x7, x0, 4	# 1287
	mul		x7, x8, x7	# 1287
	lw		x10, -120(x2)	# 1287
	add		x7, x10, x7	# 1287
	lw		x7, 0(x7)	# 1287
	sub		x7, x7, x9	# 1287
	sw		x5, -212(x2)	# 1270
	ble		x8, x7, ble.297368	# 1270
	jal		x0, ble_cont.297367	# 1270
ble.297368:
	ori		x10, x0, 4	# 1271
	mul		x10, x7, x10	# 1271
	lw		x11, -72(x2)	# 1271
	add		x10, x11, x10	# 1271
	lw		x10, 0(x10)	# 1271
	lw		x12, 4(x10)	# 353
	beq		x12, x9, beq.297370	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.297372	# 1277
	lw		x27, -60(x2)	# 1280
	sw		x4, -216(x2)	# 1280
	sw		x7, -220(x2)	# 1280
	addi	x5, x10, 0
	addi	x4, x6, 0
	sw		x1, -224(x2)	# 1280
	addi	x2, x2, -228	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 228	# 1280
	lw		x1, -224(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -220(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -216(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297371	# 1277
beq.297372:
	lw		x27, -64(x2)	# 1278
	sw		x4, -216(x2)	# 1278
	sw		x7, -220(x2)	# 1278
	addi	x5, x10, 0
	addi	x4, x6, 0
	sw		x1, -224(x2)	# 1278
	addi	x2, x2, -228	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 228	# 1278
	lw		x1, -224(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -220(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -216(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297371:
	jal		x0, beq_cont.297369	# 1275
beq.297370:
	lw		x27, -68(x2)	# 1276
	sw		x4, -216(x2)	# 1276
	sw		x7, -220(x2)	# 1276
	addi	x5, x10, 0
	addi	x4, x6, 0
	sw		x1, -224(x2)	# 1276
	addi	x2, x2, -228	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 228	# 1276
	lw		x1, -224(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -220(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -216(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297369:
	lw		x4, -104(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -124(x2)	# 1270
	ble		x6, x5, ble.297374	# 1270
	jal		x0, ble_cont.297373	# 1270
ble.297374:
	ori		x8, x0, 4	# 1271
	mul		x8, x5, x8	# 1271
	lw		x9, -72(x2)	# 1271
	add		x8, x9, x8	# 1271
	lw		x8, 0(x8)	# 1271
	lw		x10, 4(x8)	# 353
	beq		x10, x4, beq.297376	# 1275
	ori		x11, x0, 2	# 1277
	beq		x10, x11, beq.297378	# 1277
	lw		x10, -208(x2)	# 1280
	lw		x27, -60(x2)	# 1280
	sw		x5, -224(x2)	# 1280
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -228(x2)	# 1280
	addi	x2, x2, -232	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 232	# 1280
	lw		x1, -228(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -224(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -216(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297377	# 1277
beq.297378:
	lw		x10, -208(x2)	# 1278
	lw		x27, -64(x2)	# 1278
	sw		x5, -224(x2)	# 1278
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -228(x2)	# 1278
	addi	x2, x2, -232	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 232	# 1278
	lw		x1, -228(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -224(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -216(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297377:
	jal		x0, beq_cont.297375	# 1275
beq.297376:
	lw		x10, -208(x2)	# 1276
	lw		x27, -68(x2)	# 1276
	sw		x5, -224(x2)	# 1276
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -228(x2)	# 1276
	addi	x2, x2, -232	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 232	# 1276
	lw		x1, -228(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -224(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -216(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297375:
	lw		x4, -104(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -124(x2)	# 1270
	ble		x6, x5, ble.297380	# 1270
	jal		x0, ble_cont.297379	# 1270
ble.297380:
	ori		x8, x0, 4	# 1271
	mul		x8, x5, x8	# 1271
	lw		x9, -72(x2)	# 1271
	add		x8, x9, x8	# 1271
	lw		x8, 0(x8)	# 1271
	lw		x9, 4(x8)	# 353
	beq		x9, x4, beq.297382	# 1275
	ori		x10, x0, 2	# 1277
	beq		x9, x10, beq.297384	# 1277
	lw		x9, -208(x2)	# 1280
	lw		x27, -60(x2)	# 1280
	sw		x5, -228(x2)	# 1280
	addi	x5, x8, 0
	addi	x4, x9, 0
	sw		x1, -232(x2)	# 1280
	addi	x2, x2, -236	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 236	# 1280
	lw		x1, -232(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -228(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -216(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297383	# 1277
beq.297384:
	lw		x9, -208(x2)	# 1278
	lw		x27, -64(x2)	# 1278
	sw		x5, -228(x2)	# 1278
	addi	x5, x8, 0
	addi	x4, x9, 0
	sw		x1, -232(x2)	# 1278
	addi	x2, x2, -236	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 236	# 1278
	lw		x1, -232(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -228(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -216(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297383:
	jal		x0, beq_cont.297381	# 1275
beq.297382:
	lw		x9, -208(x2)	# 1276
	lw		x27, -68(x2)	# 1276
	sw		x5, -228(x2)	# 1276
	addi	x5, x8, 0
	addi	x4, x9, 0
	sw		x1, -232(x2)	# 1276
	addi	x2, x2, -236	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 236	# 1276
	lw		x1, -232(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -228(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -216(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297381:
	lw		x4, -104(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x4, -212(x2)	# 1282
	lw		x27, -56(x2)	# 1282
	sw		x1, -232(x2)	# 1282
	addi	x2, x2, -236	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 236	# 1282
	lw		x1, -232(x2)	# 1282
ble_cont.297379:
ble_cont.297373:
ble_cont.297367:
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f0, -48(x2)	# 2436
	fsw		f0, 8(x4)	# 2436
	lw		x5, -212(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -196(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	ori		x5, x0, 4	# 2436
	lw		x6, -192(x2)	# 2436
	mul		x5, x6, x5	# 2436
	lw		x6, -36(x2)	# 2436
	add		x5, x6, x5	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -24(x2)	# 2450
	lw		x5, -40(x2)	# 2450
	add		x4, x5, x4	# 2450
	ori		x5, x0, 4	# 2450
	lw		x6, -124(x2)	# 2450
	mul		x5, x6, x5	# 2450
	lw		x6, 0(x2)	# 2450
	add		x5, x6, x5	# 2450
	sw		x4, 0(x5)	# 2450
	jalr	x0, x1, 0	# 2450
setup_surface_reflection.3016:
	lw		x6, 56(x27)	# 2455
	lw		x7, 52(x27)	# 2455
	lw		x8, 48(x27)	# 2455
	lw		x9, 44(x27)	# 2455
	lw		x10, 40(x27)	# 2455
	lw		x11, 36(x27)	# 2455
	lw		x12, 32(x27)	# 2455
	lw		x13, 28(x27)	# 2455
	lw		x14, 24(x27)	# 2455
	lw		x15, 20(x27)	# 2455
	lw		x16, 16(x27)	# 2455
	lw		x17, 12(x27)	# 2455
	lw		x18, 8(x27)	# 2455
	flw		f0, 4(x27)	# 2455
	ori		x19, x0, 4	# 2455
	mul		x4, x4, x19	# 2455
	add		x4, x4, x18	# 2455
	ori		x19, x0, 4	# 2456
	mul		x19, x17, x19	# 2456
	add		x19, x11, x19	# 2456
	lw		x19, 0(x19)	# 2456
	lui		x20, %hi(l.15661)	# 2457
	ori		x20, x0, %lo(l.15661)	# 2457
	flw		f1, 0(x20)	# 2457
	lw		x20, 28(x5)	# 461
	ori		x21, x0, 4	# 466
	mul		x21, x17, x21	# 466
	add		x20, x20, x21	# 466
	flw		f2, 0(x20)	# 466
	fsub	f1, f1, f2	# 2457
	lw		x20, 16(x5)	# 421
	ori		x21, x0, 4	# 292
	mul		x21, x17, x21	# 292
	add		x21, x13, x21	# 292
	flw		f2, 0(x21)	# 292
	ori		x21, x0, 4	# 292
	mul		x21, x17, x21	# 292
	add		x21, x20, x21	# 292
	flw		f3, 0(x21)	# 292
	fmul	f3, f2, f3	# 292
	ori		x21, x0, 4	# 292
	mul		x21, x18, x21	# 292
	add		x21, x13, x21	# 292
	flw		f4, 0(x21)	# 292
	ori		x21, x0, 4	# 292
	mul		x21, x18, x21	# 292
	add		x21, x20, x21	# 292
	flw		f5, 0(x21)	# 292
	fmul	f5, f4, f5	# 292
	fadd	f3, f3, f5	# 292
	ori		x21, x0, 4	# 292
	mul		x21, x15, x21	# 292
	add		x13, x13, x21	# 292
	flw		f5, 0(x13)	# 292
	ori		x13, x0, 4	# 292
	mul		x13, x15, x13	# 292
	add		x13, x20, x13	# 292
	flw		f6, 0(x13)	# 292
	fmul	f6, f5, f6	# 292
	fadd	f3, f3, f6	# 292
	lui		x13, %hi(l.15943)	# 2461
	ori		x13, x0, %lo(l.15943)	# 2461
	flw		f6, 0(x13)	# 2461
	lw		x13, 16(x5)	# 391
	ori		x20, x0, 4	# 396
	mul		x20, x17, x20	# 396
	add		x13, x13, x20	# 396
	flw		f7, 0(x13)	# 396
	fmul	f7, f6, f7	# 2461
	fmul	f7, f7, f3	# 2461
	fsub	f2, f7, f2	# 2461
	lw		x13, 16(x5)	# 401
	ori		x20, x0, 4	# 406
	mul		x20, x18, x20	# 406
	add		x13, x13, x20	# 406
	flw		f7, 0(x13)	# 406
	fmul	f7, f6, f7	# 2462
	fmul	f7, f7, f3	# 2462
	fsub	f4, f7, f4	# 2462
	lw		x5, 16(x5)	# 411
	ori		x13, x0, 4	# 416
	mul		x13, x15, x13	# 416
	add		x5, x5, x13	# 416
	flw		f7, 0(x5)	# 416
	fmul	f6, f6, f7	# 2463
	fmul	f3, f6, f3	# 2463
	fsub	f3, f3, f5	# 2463
	sw		x11, 0(x2)	# 2382
	sw		x9, -4(x2)	# 2382
	sw		x19, -8(x2)	# 2382
	sw		x4, -12(x2)	# 2382
	fsw		f1, -16(x2)	# 2382
	sw		x14, -24(x2)	# 2382
	sw		x7, -28(x2)	# 2382
	sw		x6, -32(x2)	# 2382
	sw		x8, -36(x2)	# 2382
	sw		x10, -40(x2)	# 2382
	fsw		f3, -48(x2)	# 2382
	sw		x15, -56(x2)	# 2382
	fsw		f4, -64(x2)	# 2382
	sw		x18, -72(x2)	# 2382
	fsw		f2, -80(x2)	# 2382
	sw		x12, -88(x2)	# 2382
	sw		x17, -92(x2)	# 2382
	addi	x4, x16, 0
	sw		x1, -96(x2)	# 2382
	addi	x2, x2, -100	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 100	# 2382
	lw		x1, -96(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -92(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x7, -88(x2)	# 2383
	add		x4, x7, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -96(x2)	# 2383
	sw		x1, -100(x2)	# 2383
	addi	x2, x2, -104	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 104	# 2383
	lw		x1, -100(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x6, -96(x2)	# 2384
	sw		x6, 0(x5)	# 2384
	ori		x7, x0, 4	# 240
	lw		x8, -92(x2)	# 240
	mul		x7, x8, x7	# 240
	add		x7, x6, x7	# 240
	flw		f0, -80(x2)	# 240
	fsw		f0, 0(x7)	# 240
	ori		x7, x0, 4	# 241
	lw		x9, -72(x2)	# 241
	mul		x7, x9, x7	# 241
	add		x7, x6, x7	# 241
	flw		f0, -64(x2)	# 241
	fsw		f0, 0(x7)	# 241
	ori		x7, x0, 4	# 242
	lw		x10, -56(x2)	# 242
	mul		x7, x10, x7	# 242
	add		x7, x6, x7	# 242
	flw		f0, -48(x2)	# 242
	fsw		f0, 0(x7)	# 242
	ori		x7, x0, 4	# 1287
	mul		x7, x8, x7	# 1287
	lw		x10, -88(x2)	# 1287
	add		x7, x10, x7	# 1287
	lw		x7, 0(x7)	# 1287
	sub		x7, x7, x9	# 1287
	sw		x5, -100(x2)	# 1270
	ble		x8, x7, ble.297390	# 1270
	jal		x0, ble_cont.297389	# 1270
ble.297390:
	ori		x10, x0, 4	# 1271
	mul		x10, x7, x10	# 1271
	lw		x11, -40(x2)	# 1271
	add		x10, x11, x10	# 1271
	lw		x10, 0(x10)	# 1271
	lw		x12, 4(x10)	# 353
	beq		x12, x9, beq.297392	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.297394	# 1277
	lw		x27, -28(x2)	# 1280
	sw		x4, -104(x2)	# 1280
	sw		x7, -108(x2)	# 1280
	addi	x5, x10, 0
	addi	x4, x6, 0
	sw		x1, -112(x2)	# 1280
	addi	x2, x2, -116	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 116	# 1280
	lw		x1, -112(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -108(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -104(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297393	# 1277
beq.297394:
	lw		x27, -32(x2)	# 1278
	sw		x4, -104(x2)	# 1278
	sw		x7, -108(x2)	# 1278
	addi	x5, x10, 0
	addi	x4, x6, 0
	sw		x1, -112(x2)	# 1278
	addi	x2, x2, -116	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 116	# 1278
	lw		x1, -112(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -108(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -104(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297393:
	jal		x0, beq_cont.297391	# 1275
beq.297392:
	lw		x27, -36(x2)	# 1276
	sw		x4, -104(x2)	# 1276
	sw		x7, -108(x2)	# 1276
	addi	x5, x10, 0
	addi	x4, x6, 0
	sw		x1, -112(x2)	# 1276
	addi	x2, x2, -116	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 116	# 1276
	lw		x1, -112(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -108(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -104(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297391:
	lw		x4, -72(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -92(x2)	# 1270
	ble		x6, x5, ble.297396	# 1270
	jal		x0, ble_cont.297395	# 1270
ble.297396:
	ori		x8, x0, 4	# 1271
	mul		x8, x5, x8	# 1271
	lw		x9, -40(x2)	# 1271
	add		x8, x9, x8	# 1271
	lw		x8, 0(x8)	# 1271
	lw		x10, 4(x8)	# 353
	beq		x10, x4, beq.297398	# 1275
	ori		x11, x0, 2	# 1277
	beq		x10, x11, beq.297400	# 1277
	lw		x10, -96(x2)	# 1280
	lw		x27, -28(x2)	# 1280
	sw		x5, -112(x2)	# 1280
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -116(x2)	# 1280
	addi	x2, x2, -120	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 120	# 1280
	lw		x1, -116(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -112(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -104(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297399	# 1277
beq.297400:
	lw		x10, -96(x2)	# 1278
	lw		x27, -32(x2)	# 1278
	sw		x5, -112(x2)	# 1278
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -116(x2)	# 1278
	addi	x2, x2, -120	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 120	# 1278
	lw		x1, -116(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -112(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -104(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297399:
	jal		x0, beq_cont.297397	# 1275
beq.297398:
	lw		x10, -96(x2)	# 1276
	lw		x27, -36(x2)	# 1276
	sw		x5, -112(x2)	# 1276
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -116(x2)	# 1276
	addi	x2, x2, -120	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 120	# 1276
	lw		x1, -116(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -112(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -104(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297397:
	lw		x4, -72(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -92(x2)	# 1270
	ble		x6, x5, ble.297402	# 1270
	jal		x0, ble_cont.297401	# 1270
ble.297402:
	ori		x8, x0, 4	# 1271
	mul		x8, x5, x8	# 1271
	lw		x9, -40(x2)	# 1271
	add		x8, x9, x8	# 1271
	lw		x8, 0(x8)	# 1271
	lw		x9, 4(x8)	# 353
	beq		x9, x4, beq.297404	# 1275
	ori		x10, x0, 2	# 1277
	beq		x9, x10, beq.297406	# 1277
	lw		x9, -96(x2)	# 1280
	lw		x27, -28(x2)	# 1280
	sw		x5, -116(x2)	# 1280
	addi	x5, x8, 0
	addi	x4, x9, 0
	sw		x1, -120(x2)	# 1280
	addi	x2, x2, -124	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 124	# 1280
	lw		x1, -120(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -116(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -104(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297405	# 1277
beq.297406:
	lw		x9, -96(x2)	# 1278
	lw		x27, -32(x2)	# 1278
	sw		x5, -116(x2)	# 1278
	addi	x5, x8, 0
	addi	x4, x9, 0
	sw		x1, -120(x2)	# 1278
	addi	x2, x2, -124	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 124	# 1278
	lw		x1, -120(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -116(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -104(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297405:
	jal		x0, beq_cont.297403	# 1275
beq.297404:
	lw		x9, -96(x2)	# 1276
	lw		x27, -36(x2)	# 1276
	sw		x5, -116(x2)	# 1276
	addi	x5, x8, 0
	addi	x4, x9, 0
	sw		x1, -120(x2)	# 1276
	addi	x2, x2, -124	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 124	# 1276
	lw		x1, -120(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -116(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -104(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297403:
	lw		x4, -72(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -100(x2)	# 1282
	lw		x27, -24(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -120(x2)	# 1282
	addi	x2, x2, -124	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 124	# 1282
	lw		x1, -120(x2)	# 1282
ble_cont.297401:
ble_cont.297395:
ble_cont.297389:
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f0, -16(x2)	# 2436
	fsw		f0, 8(x4)	# 2436
	lw		x5, -100(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -12(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	ori		x5, x0, 4	# 2436
	lw		x6, -8(x2)	# 2436
	mul		x5, x6, x5	# 2436
	lw		x7, -4(x2)	# 2436
	add		x5, x7, x5	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -72(x2)	# 2464
	add		x4, x6, x4	# 2464
	ori		x5, x0, 4	# 2464
	lw		x6, -92(x2)	# 2464
	mul		x5, x6, x5	# 2464
	lw		x6, 0(x2)	# 2464
	add		x5, x6, x5	# 2464
	sw		x4, 0(x5)	# 2464
	jalr	x0, x1, 0	# 2464
rt.3021:
	lw		x7, 160(x27)	# 2492
	lw		x8, 156(x27)	# 2492
	lw		x9, 152(x27)	# 2492
	lw		x10, 148(x27)	# 2492
	lw		x11, 144(x27)	# 2492
	lw		x12, 140(x27)	# 2492
	lw		x13, 136(x27)	# 2492
	lw		x14, 132(x27)	# 2492
	lw		x15, 128(x27)	# 2492
	lw		x16, 124(x27)	# 2492
	lw		x17, 120(x27)	# 2492
	lw		x18, 116(x27)	# 2492
	lw		x19, 112(x27)	# 2492
	lw		x20, 108(x27)	# 2492
	lw		x21, 104(x27)	# 2492
	lw		x22, 100(x27)	# 2492
	lw		x23, 96(x27)	# 2492
	lw		x24, 92(x27)	# 2492
	lw		x25, 88(x27)	# 2492
	lw		x26, 84(x27)	# 2492
	lw		x31, 80(x27)	# 2492
	sw		x15, 0(x2)	# 2492
	lw		x15, 76(x27)	# 2492
	sw		x13, -4(x2)	# 2492
	lw		x13, 72(x27)	# 2492
	sw		x23, -8(x2)	# 2492
	lw		x23, 68(x27)	# 2492
	sw		x9, -12(x2)	# 2492
	lw		x9, 64(x27)	# 2492
	sw		x12, -16(x2)	# 2492
	lw		x12, 60(x27)	# 2492
	sw		x31, -20(x2)	# 2492
	lw		x31, 56(x27)	# 2492
	sw		x7, -24(x2)	# 2492
	lw		x7, 52(x27)	# 2492
	sw		x15, -28(x2)	# 2492
	lw		x15, 48(x27)	# 2492
	sw		x23, -32(x2)	# 2492
	lw		x23, 44(x27)	# 2492
	sw		x12, -36(x2)	# 2492
	lw		x12, 40(x27)	# 2492
	sw		x12, -40(x2)	# 2492
	lw		x12, 36(x27)	# 2492
	sw		x13, -44(x2)	# 2492
	lw		x13, 32(x27)	# 2492
	sw		x10, -48(x2)	# 2492
	lw		x10, 28(x27)	# 2492
	sw		x8, -52(x2)	# 2492
	lw		x8, 24(x27)	# 2492
	sw		x11, -56(x2)	# 2492
	lw		x11, 20(x27)	# 2492
	sw		x25, -60(x2)	# 2492
	lw		x25, 16(x27)	# 2492
	sw		x15, -64(x2)	# 2492
	lw		x15, 12(x27)	# 2492
	sw		x12, -68(x2)	# 2492
	lw		x12, 8(x27)	# 2492
	flw		f0, 4(x27)	# 2492
	ori		x27, x0, 4	# 2492
	mul		x27, x15, x27	# 2492
	add		x27, x31, x27	# 2492
	sw		x4, 0(x27)	# 2492
	ori		x27, x0, 4	# 2493
	mul		x27, x12, x27	# 2493
	add		x27, x31, x27	# 2493
	sw		x5, 0(x27)	# 2493
	div		x27, x4, x8	# 2494
	sw		x23, -72(x2)	# 2494
	ori		x23, x0, 4	# 2494
	mul		x23, x15, x23	# 2494
	add		x23, x7, x23	# 2494
	sw		x27, 0(x23)	# 2494
	div		x5, x5, x8	# 2495
	ori		x23, x0, 4	# 2495
	mul		x23, x12, x23	# 2495
	add		x7, x7, x23	# 2495
	sw		x5, 0(x7)	# 2495
	lui		x5, %hi(l.21644)	# 2496
	ori		x5, x0, %lo(l.21644)	# 2496
	flw		f1, 0(x5)	# 2496
	sw		x6, -76(x2)	# 14
	sw		x24, -80(x2)	# 14
	sw		x17, -84(x2)	# 14
	sw		x22, -88(x2)	# 14
	sw		x13, -92(x2)	# 14
	sw		x20, -96(x2)	# 14
	sw		x11, -100(x2)	# 14
	sw		x18, -104(x2)	# 14
	sw		x26, -108(x2)	# 14
	sw		x19, -112(x2)	# 14
	sw		x21, -116(x2)	# 14
	sw		x16, -120(x2)	# 14
	sw		x9, -124(x2)	# 14
	sw		x8, -128(x2)	# 14
	sw		x12, -132(x2)	# 14
	sw		x10, -136(x2)	# 14
	fsw		f0, -144(x2)	# 14
	sw		x25, -152(x2)	# 14
	sw		x31, -156(x2)	# 14
	sw		x14, -160(x2)	# 14
	sw		x15, -164(x2)	# 14
	fsw		f1, -168(x2)	# 14
	ble		x15, x4, ble.297410	# 14
	sub		x4, x0, x4	# 16
	sw		x1, -176(x2)	# 16
	addi	x2, x2, -180	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 180	# 16
	lw		x1, -176(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.297409	# 14
ble.297410:
	ori		x5, x0, 1	# 15
	ble		x5, x4, ble.297412	# 15
	lui		x4, %hi(l.15659)	# 15
	ori		x4, x0, %lo(l.15659)	# 15
	flw		f0, 0(x4)	# 15
	jal		x0, ble_cont.297411	# 15
ble.297412:
	ori		x5, x0, 1	# 15
	sub		x4, x4, x5	# 15
	sw		x1, -176(x2)	# 15
	addi	x2, x2, -180	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 180	# 15
	lw		x1, -176(x2)	# 15
	lui		x4, %hi(l.15661)	# 15
	ori		x4, x0, %lo(l.15661)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.297411:
ble_cont.297409:
	flw		f1, -168(x2)	# 2496
	fdiv	f0, f1, f0	# 2496
	ori		x4, x0, 4	# 2496
	lw		x5, -164(x2)	# 2496
	mul		x4, x5, x4	# 2496
	lw		x6, -160(x2)	# 2496
	add		x4, x6, x4	# 2496
	fsw		f0, 0(x4)	# 2496
	ori		x4, x0, 4	# 2306
	mul		x4, x5, x4	# 2306
	lw		x6, -156(x2)	# 2306
	add		x4, x6, x4	# 2306
	lw		x4, 0(x4)	# 2306
	flw		f0, -144(x2)	# 2284
	lw		x7, -152(x2)	# 2284
	sw		x4, -176(x2)	# 2284
	addi	x4, x7, 0
	sw		x1, -180(x2)	# 2284
	addi	x2, x2, -184	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 184	# 2284
	lw		x1, -180(x2)	# 2284
	flw		f0, -144(x2)	# 2272
	lw		x5, -152(x2)	# 2272
	sw		x4, -180(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -184(x2)	# 2272
	addi	x2, x2, -188	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 188	# 2272
	lw		x1, -184(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -136(x2)	# 2273
	sw		x1, -184(x2)	# 2273
	addi	x2, x2, -188	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 188	# 2273
	lw		x1, -184(x2)	# 2273
	flw		f0, -144(x2)	# 2274
	lw		x5, -152(x2)	# 2274
	sw		x4, -184(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -188(x2)	# 2274
	addi	x2, x2, -192	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 192	# 2274
	lw		x1, -188(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -132(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -184(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -144(x2)	# 2275
	lw		x4, -152(x2)	# 2275
	sw		x1, -188(x2)	# 2275
	addi	x2, x2, -192	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 192	# 2275
	lw		x1, -188(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -128(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -184(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -144(x2)	# 2276
	lw		x4, -152(x2)	# 2276
	sw		x1, -188(x2)	# 2276
	addi	x2, x2, -192	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 192	# 2276
	lw		x1, -188(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -152(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -184(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	ori		x4, x0, 4	# 2277
	flw		f0, -144(x2)	# 2277
	sw		x4, -188(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -192(x2)	# 2277
	addi	x2, x2, -196	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 196	# 2277
	lw		x1, -192(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -188(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -184(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -136(x2)	# 2286
	lw		x5, -164(x2)	# 2286
	sw		x1, -192(x2)	# 2286
	addi	x2, x2, -196	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 196	# 2286
	lw		x1, -192(x2)	# 2286
	lw		x5, -136(x2)	# 2287
	lw		x6, -164(x2)	# 2287
	sw		x4, -192(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -196(x2)	# 2287
	addi	x2, x2, -200	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 200	# 2287
	lw		x1, -196(x2)	# 2287
	flw		f0, -144(x2)	# 2272
	lw		x5, -152(x2)	# 2272
	sw		x4, -196(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -200(x2)	# 2272
	addi	x2, x2, -204	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 204	# 2272
	lw		x1, -200(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -136(x2)	# 2273
	sw		x1, -200(x2)	# 2273
	addi	x2, x2, -204	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 204	# 2273
	lw		x1, -200(x2)	# 2273
	flw		f0, -144(x2)	# 2274
	lw		x5, -152(x2)	# 2274
	sw		x4, -200(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -204(x2)	# 2274
	addi	x2, x2, -208	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 208	# 2274
	lw		x1, -204(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -132(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -200(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -144(x2)	# 2275
	lw		x4, -152(x2)	# 2275
	sw		x1, -204(x2)	# 2275
	addi	x2, x2, -208	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 208	# 2275
	lw		x1, -204(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -128(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -200(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -144(x2)	# 2276
	lw		x4, -152(x2)	# 2276
	sw		x1, -204(x2)	# 2276
	addi	x2, x2, -208	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 208	# 2276
	lw		x1, -204(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -152(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -200(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f0, -144(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -204(x2)	# 2277
	addi	x2, x2, -208	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 208	# 2277
	lw		x1, -204(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -188(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -200(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	flw		f0, -144(x2)	# 2272
	lw		x4, -152(x2)	# 2272
	sw		x1, -204(x2)	# 2272
	addi	x2, x2, -208	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 208	# 2272
	lw		x1, -204(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -136(x2)	# 2273
	sw		x1, -204(x2)	# 2273
	addi	x2, x2, -208	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 208	# 2273
	lw		x1, -204(x2)	# 2273
	flw		f0, -144(x2)	# 2274
	lw		x5, -152(x2)	# 2274
	sw		x4, -204(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -208(x2)	# 2274
	addi	x2, x2, -212	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 212	# 2274
	lw		x1, -208(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -132(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -204(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -144(x2)	# 2275
	lw		x4, -152(x2)	# 2275
	sw		x1, -208(x2)	# 2275
	addi	x2, x2, -212	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 212	# 2275
	lw		x1, -208(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -128(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -204(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -144(x2)	# 2276
	lw		x4, -152(x2)	# 2276
	sw		x1, -208(x2)	# 2276
	addi	x2, x2, -212	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 212	# 2276
	lw		x1, -208(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -152(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -204(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f0, -144(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -208(x2)	# 2277
	addi	x2, x2, -212	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 212	# 2277
	lw		x1, -208(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -188(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -204(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -132(x2)	# 2290
	lw		x5, -164(x2)	# 2290
	sw		x1, -208(x2)	# 2290
	addi	x2, x2, -212	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 212	# 2290
	lw		x1, -208(x2)	# 2290
	flw		f0, -144(x2)	# 2272
	lw		x5, -152(x2)	# 2272
	sw		x4, -208(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -212(x2)	# 2272
	addi	x2, x2, -216	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 216	# 2272
	lw		x1, -212(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -136(x2)	# 2273
	sw		x1, -212(x2)	# 2273
	addi	x2, x2, -216	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 216	# 2273
	lw		x1, -212(x2)	# 2273
	flw		f0, -144(x2)	# 2274
	lw		x5, -152(x2)	# 2274
	sw		x4, -212(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -216(x2)	# 2274
	addi	x2, x2, -220	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 220	# 2274
	lw		x1, -216(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -132(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -212(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -144(x2)	# 2275
	lw		x4, -152(x2)	# 2275
	sw		x1, -216(x2)	# 2275
	addi	x2, x2, -220	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 220	# 2275
	lw		x1, -216(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -128(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -212(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -144(x2)	# 2276
	lw		x4, -152(x2)	# 2276
	sw		x1, -216(x2)	# 2276
	addi	x2, x2, -220	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 220	# 2276
	lw		x1, -216(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -152(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -212(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f0, -144(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -216(x2)	# 2277
	addi	x2, x2, -220	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 220	# 2277
	lw		x1, -216(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -188(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -212(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	addi	x4, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x7, 28(x4)	# 2292
	lw		x5, -208(x2)	# 2292
	sw		x5, 24(x4)	# 2292
	lw		x5, -204(x2)	# 2292
	sw		x5, 20(x4)	# 2292
	lw		x5, -200(x2)	# 2292
	sw		x5, 16(x4)	# 2292
	lw		x5, -196(x2)	# 2292
	sw		x5, 12(x4)	# 2292
	lw		x5, -192(x2)	# 2292
	sw		x5, 8(x4)	# 2292
	lw		x5, -184(x2)	# 2292
	sw		x5, 4(x4)	# 2292
	lw		x5, -180(x2)	# 2292
	sw		x5, 0(x4)	# 2292
	addi	x5, x4, 0	# 2292
	lw		x4, -176(x2)	# 2306
	sw		x1, -216(x2)	# 2306
	addi	x2, x2, -220	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 220	# 2306
	lw		x1, -216(x2)	# 2306
	ori		x5, x0, 4	# 2307
	lw		x6, -164(x2)	# 2307
	mul		x5, x6, x5	# 2307
	lw		x7, -156(x2)	# 2307
	add		x5, x7, x5	# 2307
	lw		x5, 0(x5)	# 2307
	lw		x8, -128(x2)	# 2307
	sub		x5, x5, x8	# 2307
	lw		x27, -124(x2)	# 2307
	sw		x1, -216(x2)	# 2307
	addi	x2, x2, -220	# 2307
	lw		x31, 0(x27)	# 2307
	jalr	x1, x31, 0	# 2307
	addi	x2, x2, 220	# 2307
	lw		x1, -216(x2)	# 2307
	ori		x5, x0, 4	# 2306
	lw		x6, -164(x2)	# 2306
	mul		x5, x6, x5	# 2306
	lw		x7, -156(x2)	# 2306
	add		x5, x7, x5	# 2306
	lw		x5, 0(x5)	# 2306
	flw		f0, -144(x2)	# 2284
	lw		x8, -152(x2)	# 2284
	sw		x4, -216(x2)	# 2284
	sw		x5, -220(x2)	# 2284
	addi	x4, x8, 0
	sw		x1, -224(x2)	# 2284
	addi	x2, x2, -228	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 228	# 2284
	lw		x1, -224(x2)	# 2284
	flw		f0, -144(x2)	# 2272
	lw		x5, -152(x2)	# 2272
	sw		x4, -224(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -228(x2)	# 2272
	addi	x2, x2, -232	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 232	# 2272
	lw		x1, -228(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -136(x2)	# 2273
	sw		x1, -228(x2)	# 2273
	addi	x2, x2, -232	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 232	# 2273
	lw		x1, -228(x2)	# 2273
	flw		f0, -144(x2)	# 2274
	lw		x5, -152(x2)	# 2274
	sw		x4, -228(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -232(x2)	# 2274
	addi	x2, x2, -236	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 236	# 2274
	lw		x1, -232(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -132(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -228(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -144(x2)	# 2275
	lw		x4, -152(x2)	# 2275
	sw		x1, -232(x2)	# 2275
	addi	x2, x2, -236	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 236	# 2275
	lw		x1, -232(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -128(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -228(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -144(x2)	# 2276
	lw		x4, -152(x2)	# 2276
	sw		x1, -232(x2)	# 2276
	addi	x2, x2, -236	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 236	# 2276
	lw		x1, -232(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -152(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -228(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f0, -144(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -232(x2)	# 2277
	addi	x2, x2, -236	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 236	# 2277
	lw		x1, -232(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -188(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -228(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -136(x2)	# 2286
	lw		x5, -164(x2)	# 2286
	sw		x1, -232(x2)	# 2286
	addi	x2, x2, -236	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 236	# 2286
	lw		x1, -232(x2)	# 2286
	lw		x5, -136(x2)	# 2287
	lw		x6, -164(x2)	# 2287
	sw		x4, -232(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -236(x2)	# 2287
	addi	x2, x2, -240	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 240	# 2287
	lw		x1, -236(x2)	# 2287
	flw		f0, -144(x2)	# 2272
	lw		x5, -152(x2)	# 2272
	sw		x4, -236(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -240(x2)	# 2272
	addi	x2, x2, -244	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 244	# 2272
	lw		x1, -240(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -136(x2)	# 2273
	sw		x1, -240(x2)	# 2273
	addi	x2, x2, -244	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 244	# 2273
	lw		x1, -240(x2)	# 2273
	flw		f0, -144(x2)	# 2274
	lw		x5, -152(x2)	# 2274
	sw		x4, -240(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -244(x2)	# 2274
	addi	x2, x2, -248	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 248	# 2274
	lw		x1, -244(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -132(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -240(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -144(x2)	# 2275
	lw		x4, -152(x2)	# 2275
	sw		x1, -244(x2)	# 2275
	addi	x2, x2, -248	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 248	# 2275
	lw		x1, -244(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -128(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -240(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -144(x2)	# 2276
	lw		x4, -152(x2)	# 2276
	sw		x1, -244(x2)	# 2276
	addi	x2, x2, -248	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 248	# 2276
	lw		x1, -244(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -152(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -240(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f0, -144(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -244(x2)	# 2277
	addi	x2, x2, -248	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 248	# 2277
	lw		x1, -244(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -188(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -240(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	flw		f0, -144(x2)	# 2272
	lw		x4, -152(x2)	# 2272
	sw		x1, -244(x2)	# 2272
	addi	x2, x2, -248	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 248	# 2272
	lw		x1, -244(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -136(x2)	# 2273
	sw		x1, -244(x2)	# 2273
	addi	x2, x2, -248	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 248	# 2273
	lw		x1, -244(x2)	# 2273
	flw		f0, -144(x2)	# 2274
	lw		x5, -152(x2)	# 2274
	sw		x4, -244(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -248(x2)	# 2274
	addi	x2, x2, -252	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 252	# 2274
	lw		x1, -248(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -132(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -244(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -144(x2)	# 2275
	lw		x4, -152(x2)	# 2275
	sw		x1, -248(x2)	# 2275
	addi	x2, x2, -252	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 252	# 2275
	lw		x1, -248(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -128(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -244(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -144(x2)	# 2276
	lw		x4, -152(x2)	# 2276
	sw		x1, -248(x2)	# 2276
	addi	x2, x2, -252	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 252	# 2276
	lw		x1, -248(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -152(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -244(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f0, -144(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -248(x2)	# 2277
	addi	x2, x2, -252	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 252	# 2277
	lw		x1, -248(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -188(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -244(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -132(x2)	# 2290
	lw		x5, -164(x2)	# 2290
	sw		x1, -248(x2)	# 2290
	addi	x2, x2, -252	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 252	# 2290
	lw		x1, -248(x2)	# 2290
	flw		f0, -144(x2)	# 2272
	lw		x5, -152(x2)	# 2272
	sw		x4, -248(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -252(x2)	# 2272
	addi	x2, x2, -256	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 256	# 2272
	lw		x1, -252(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -136(x2)	# 2273
	sw		x1, -252(x2)	# 2273
	addi	x2, x2, -256	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 256	# 2273
	lw		x1, -252(x2)	# 2273
	flw		f0, -144(x2)	# 2274
	lw		x5, -152(x2)	# 2274
	sw		x4, -252(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -256(x2)	# 2274
	addi	x2, x2, -260	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 260	# 2274
	lw		x1, -256(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -132(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -252(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -144(x2)	# 2275
	lw		x4, -152(x2)	# 2275
	sw		x1, -256(x2)	# 2275
	addi	x2, x2, -260	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 260	# 2275
	lw		x1, -256(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -128(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -252(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -144(x2)	# 2276
	lw		x4, -152(x2)	# 2276
	sw		x1, -256(x2)	# 2276
	addi	x2, x2, -260	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 260	# 2276
	lw		x1, -256(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -152(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -252(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f0, -144(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -256(x2)	# 2277
	addi	x2, x2, -260	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 260	# 2277
	lw		x1, -256(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -188(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -252(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	addi	x4, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x7, 28(x4)	# 2292
	lw		x5, -248(x2)	# 2292
	sw		x5, 24(x4)	# 2292
	lw		x5, -244(x2)	# 2292
	sw		x5, 20(x4)	# 2292
	lw		x5, -240(x2)	# 2292
	sw		x5, 16(x4)	# 2292
	lw		x5, -236(x2)	# 2292
	sw		x5, 12(x4)	# 2292
	lw		x5, -232(x2)	# 2292
	sw		x5, 8(x4)	# 2292
	lw		x5, -228(x2)	# 2292
	sw		x5, 4(x4)	# 2292
	lw		x5, -224(x2)	# 2292
	sw		x5, 0(x4)	# 2292
	addi	x5, x4, 0	# 2292
	lw		x4, -220(x2)	# 2306
	sw		x1, -256(x2)	# 2306
	addi	x2, x2, -260	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 260	# 2306
	lw		x1, -256(x2)	# 2306
	ori		x5, x0, 4	# 2307
	lw		x6, -164(x2)	# 2307
	mul		x5, x6, x5	# 2307
	lw		x7, -156(x2)	# 2307
	add		x5, x7, x5	# 2307
	lw		x5, 0(x5)	# 2307
	lw		x8, -128(x2)	# 2307
	sub		x5, x5, x8	# 2307
	lw		x27, -124(x2)	# 2307
	sw		x1, -256(x2)	# 2307
	addi	x2, x2, -260	# 2307
	lw		x31, 0(x27)	# 2307
	jalr	x1, x31, 0	# 2307
	addi	x2, x2, 260	# 2307
	lw		x1, -256(x2)	# 2307
	ori		x5, x0, 4	# 2306
	lw		x6, -164(x2)	# 2306
	mul		x5, x6, x5	# 2306
	lw		x7, -156(x2)	# 2306
	add		x5, x7, x5	# 2306
	lw		x5, 0(x5)	# 2306
	flw		f0, -144(x2)	# 2284
	lw		x8, -152(x2)	# 2284
	sw		x4, -256(x2)	# 2284
	sw		x5, -260(x2)	# 2284
	addi	x4, x8, 0
	sw		x1, -264(x2)	# 2284
	addi	x2, x2, -268	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 268	# 2284
	lw		x1, -264(x2)	# 2284
	flw		f0, -144(x2)	# 2272
	lw		x5, -152(x2)	# 2272
	sw		x4, -264(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -268(x2)	# 2272
	addi	x2, x2, -272	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 272	# 2272
	lw		x1, -268(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -136(x2)	# 2273
	sw		x1, -268(x2)	# 2273
	addi	x2, x2, -272	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 272	# 2273
	lw		x1, -268(x2)	# 2273
	flw		f0, -144(x2)	# 2274
	lw		x5, -152(x2)	# 2274
	sw		x4, -268(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -272(x2)	# 2274
	addi	x2, x2, -276	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 276	# 2274
	lw		x1, -272(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -132(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -268(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -144(x2)	# 2275
	lw		x4, -152(x2)	# 2275
	sw		x1, -272(x2)	# 2275
	addi	x2, x2, -276	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 276	# 2275
	lw		x1, -272(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -128(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -268(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -144(x2)	# 2276
	lw		x4, -152(x2)	# 2276
	sw		x1, -272(x2)	# 2276
	addi	x2, x2, -276	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 276	# 2276
	lw		x1, -272(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -152(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -268(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f0, -144(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -272(x2)	# 2277
	addi	x2, x2, -276	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 276	# 2277
	lw		x1, -272(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -188(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -268(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -136(x2)	# 2286
	lw		x5, -164(x2)	# 2286
	sw		x1, -272(x2)	# 2286
	addi	x2, x2, -276	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 276	# 2286
	lw		x1, -272(x2)	# 2286
	lw		x5, -136(x2)	# 2287
	lw		x6, -164(x2)	# 2287
	sw		x4, -272(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -276(x2)	# 2287
	addi	x2, x2, -280	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 280	# 2287
	lw		x1, -276(x2)	# 2287
	flw		f0, -144(x2)	# 2272
	lw		x5, -152(x2)	# 2272
	sw		x4, -276(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -280(x2)	# 2272
	addi	x2, x2, -284	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 284	# 2272
	lw		x1, -280(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -136(x2)	# 2273
	sw		x1, -280(x2)	# 2273
	addi	x2, x2, -284	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 284	# 2273
	lw		x1, -280(x2)	# 2273
	flw		f0, -144(x2)	# 2274
	lw		x5, -152(x2)	# 2274
	sw		x4, -280(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -284(x2)	# 2274
	addi	x2, x2, -288	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 288	# 2274
	lw		x1, -284(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -132(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -280(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -144(x2)	# 2275
	lw		x4, -152(x2)	# 2275
	sw		x1, -284(x2)	# 2275
	addi	x2, x2, -288	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 288	# 2275
	lw		x1, -284(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -128(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -280(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -144(x2)	# 2276
	lw		x4, -152(x2)	# 2276
	sw		x1, -284(x2)	# 2276
	addi	x2, x2, -288	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 288	# 2276
	lw		x1, -284(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -152(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -280(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f0, -144(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -284(x2)	# 2277
	addi	x2, x2, -288	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 288	# 2277
	lw		x1, -284(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -188(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -280(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	flw		f0, -144(x2)	# 2272
	lw		x4, -152(x2)	# 2272
	sw		x1, -284(x2)	# 2272
	addi	x2, x2, -288	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 288	# 2272
	lw		x1, -284(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -136(x2)	# 2273
	sw		x1, -284(x2)	# 2273
	addi	x2, x2, -288	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 288	# 2273
	lw		x1, -284(x2)	# 2273
	flw		f0, -144(x2)	# 2274
	lw		x5, -152(x2)	# 2274
	sw		x4, -284(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -288(x2)	# 2274
	addi	x2, x2, -292	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 292	# 2274
	lw		x1, -288(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -132(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -284(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -144(x2)	# 2275
	lw		x4, -152(x2)	# 2275
	sw		x1, -288(x2)	# 2275
	addi	x2, x2, -292	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 292	# 2275
	lw		x1, -288(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -128(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -284(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -144(x2)	# 2276
	lw		x4, -152(x2)	# 2276
	sw		x1, -288(x2)	# 2276
	addi	x2, x2, -292	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 292	# 2276
	lw		x1, -288(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -152(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -284(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f0, -144(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -288(x2)	# 2277
	addi	x2, x2, -292	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 292	# 2277
	lw		x1, -288(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -188(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -284(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -132(x2)	# 2290
	lw		x5, -164(x2)	# 2290
	sw		x1, -288(x2)	# 2290
	addi	x2, x2, -292	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 292	# 2290
	lw		x1, -288(x2)	# 2290
	flw		f0, -144(x2)	# 2272
	lw		x5, -152(x2)	# 2272
	sw		x4, -288(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -292(x2)	# 2272
	addi	x2, x2, -296	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 296	# 2272
	lw		x1, -292(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -136(x2)	# 2273
	sw		x1, -292(x2)	# 2273
	addi	x2, x2, -296	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 296	# 2273
	lw		x1, -292(x2)	# 2273
	flw		f0, -144(x2)	# 2274
	lw		x5, -152(x2)	# 2274
	sw		x4, -292(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -296(x2)	# 2274
	addi	x2, x2, -300	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 300	# 2274
	lw		x1, -296(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -132(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -292(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -144(x2)	# 2275
	lw		x4, -152(x2)	# 2275
	sw		x1, -296(x2)	# 2275
	addi	x2, x2, -300	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 300	# 2275
	lw		x1, -296(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -128(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -292(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -144(x2)	# 2276
	lw		x4, -152(x2)	# 2276
	sw		x1, -296(x2)	# 2276
	addi	x2, x2, -300	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 300	# 2276
	lw		x1, -296(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -152(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -292(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f0, -144(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -296(x2)	# 2277
	addi	x2, x2, -300	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 300	# 2277
	lw		x1, -296(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -188(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -292(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	addi	x4, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x7, 28(x4)	# 2292
	lw		x5, -288(x2)	# 2292
	sw		x5, 24(x4)	# 2292
	lw		x5, -284(x2)	# 2292
	sw		x5, 20(x4)	# 2292
	lw		x5, -280(x2)	# 2292
	sw		x5, 16(x4)	# 2292
	lw		x5, -276(x2)	# 2292
	sw		x5, 12(x4)	# 2292
	lw		x5, -272(x2)	# 2292
	sw		x5, 8(x4)	# 2292
	lw		x5, -268(x2)	# 2292
	sw		x5, 4(x4)	# 2292
	lw		x5, -264(x2)	# 2292
	sw		x5, 0(x4)	# 2292
	addi	x5, x4, 0	# 2292
	lw		x4, -260(x2)	# 2306
	sw		x1, -296(x2)	# 2306
	addi	x2, x2, -300	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 300	# 2306
	lw		x1, -296(x2)	# 2306
	ori		x5, x0, 4	# 2307
	lw		x6, -164(x2)	# 2307
	mul		x5, x6, x5	# 2307
	lw		x7, -156(x2)	# 2307
	add		x5, x7, x5	# 2307
	lw		x5, 0(x5)	# 2307
	lw		x8, -128(x2)	# 2307
	sub		x5, x5, x8	# 2307
	lw		x27, -124(x2)	# 2307
	sw		x1, -296(x2)	# 2307
	addi	x2, x2, -300	# 2307
	lw		x31, 0(x27)	# 2307
	jalr	x1, x31, 0	# 2307
	addi	x2, x2, 300	# 2307
	lw		x1, -296(x2)	# 2307
	lw		x27, -120(x2)	# 904
	sw		x4, -296(x2)	# 904
	sw		x1, -300(x2)	# 904
	addi	x2, x2, -304	# 904
	lw		x31, 0(x27)	# 904
	jalr	x1, x31, 0	# 904
	addi	x2, x2, 304	# 904
	lw		x1, -300(x2)	# 904
	lw		x27, -116(x2)	# 905
	sw		x1, -300(x2)	# 905
	addi	x2, x2, -304	# 905
	lw		x31, 0(x27)	# 905
	jalr	x1, x31, 0	# 905
	addi	x2, x2, 304	# 905
	lw		x1, -300(x2)	# 905
	lw		x4, -164(x2)	# 862
	lw		x27, -112(x2)	# 862
	sw		x1, -300(x2)	# 862
	addi	x2, x2, -304	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 304	# 862
	lw		x1, -300(x2)	# 862
	lw		x5, -164(x2)	# 862
	beq		x4, x5, beq.297414	# 862
	lw		x4, -132(x2)	# 862
	lw		x27, -112(x2)	# 862
	sw		x1, -300(x2)	# 862
	addi	x2, x2, -304	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 304	# 862
	lw		x1, -300(x2)	# 862
	lw		x5, -164(x2)	# 862
	beq		x4, x5, beq.297416	# 862
	ori		x4, x0, 2	# 863
	lw		x27, -112(x2)	# 862
	sw		x4, -300(x2)	# 862
	sw		x1, -304(x2)	# 862
	addi	x2, x2, -308	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 308	# 862
	lw		x1, -304(x2)	# 862
	lw		x5, -164(x2)	# 862
	beq		x4, x5, beq.297418	# 862
	ori		x4, x0, 3	# 863
	lw		x27, -112(x2)	# 862
	sw		x4, -304(x2)	# 862
	sw		x1, -308(x2)	# 862
	addi	x2, x2, -312	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 312	# 862
	lw		x1, -308(x2)	# 862
	lw		x5, -164(x2)	# 862
	beq		x4, x5, beq.297420	# 862
	ori		x4, x0, 4	# 863
	lw		x27, -112(x2)	# 862
	sw		x4, -308(x2)	# 862
	sw		x1, -312(x2)	# 862
	addi	x2, x2, -316	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 316	# 862
	lw		x1, -312(x2)	# 862
	lw		x5, -164(x2)	# 862
	beq		x4, x5, beq.297422	# 862
	ori		x4, x0, 5	# 863
	lw		x27, -104(x2)	# 863
	sw		x1, -312(x2)	# 863
	addi	x2, x2, -316	# 863
	lw		x31, 0(x27)	# 863
	jalr	x1, x31, 0	# 863
	addi	x2, x2, 316	# 863
	lw		x1, -312(x2)	# 863
	jal		x0, beq_cont.297421	# 862
beq.297422:
	ori		x4, x0, 4	# 865
	mul		x4, x5, x4	# 865
	lw		x6, -108(x2)	# 865
	add		x4, x6, x4	# 865
	lw		x7, -308(x2)	# 865
	sw		x7, 0(x4)	# 865
beq_cont.297421:
	jal		x0, beq_cont.297419	# 862
beq.297420:
	ori		x4, x0, 4	# 865
	mul		x4, x5, x4	# 865
	lw		x6, -108(x2)	# 865
	add		x4, x6, x4	# 865
	lw		x7, -304(x2)	# 865
	sw		x7, 0(x4)	# 865
beq_cont.297419:
	jal		x0, beq_cont.297417	# 862
beq.297418:
	ori		x4, x0, 4	# 865
	mul		x4, x5, x4	# 865
	lw		x6, -108(x2)	# 865
	add		x4, x6, x4	# 865
	lw		x7, -300(x2)	# 865
	sw		x7, 0(x4)	# 865
beq_cont.297417:
	jal		x0, beq_cont.297415	# 862
beq.297416:
	ori		x4, x0, 4	# 865
	mul		x4, x5, x4	# 865
	lw		x6, -108(x2)	# 865
	add		x4, x6, x4	# 865
	lw		x7, -132(x2)	# 865
	sw		x7, 0(x4)	# 865
beq_cont.297415:
	jal		x0, beq_cont.297413	# 862
beq.297414:
	ori		x4, x0, 4	# 865
	mul		x4, x5, x4	# 865
	lw		x6, -108(x2)	# 865
	add		x4, x6, x4	# 865
	sw		x5, 0(x4)	# 865
beq_cont.297413:
	sw		x1, -312(x2)	# 877
	addi	x2, x2, -316	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 316	# 877
	lw		x1, -312(x2)	# 877
	lw		x5, -100(x2)	# 878
	beq		x4, x5, beq.297424	# 878
	ori		x6, x0, 1	# 880
	lw		x27, -96(x2)	# 880
	sw		x4, -312(x2)	# 880
	addi	x4, x6, 0
	sw		x1, -316(x2)	# 880
	addi	x2, x2, -320	# 880
	lw		x31, 0(x27)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 320	# 880
	lw		x1, -316(x2)	# 880
	ori		x5, x0, 4	# 881
	lw		x6, -164(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x7, -312(x2)	# 881
	sw		x7, 0(x5)	# 881
	jal		x0, beq_cont.297423	# 878
beq.297424:
	ori		x4, x0, 1	# 878
	lui		x6, -1	# 878
	ori		x6, x0, -1	# 878
	addi	x5, x6, 0
	sw		x1, -316(x2)	# 878
	addi	x2, x2, -320	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 320	# 878
	lw		x1, -316(x2)	# 878
beq_cont.297423:
	ori		x5, x0, 4	# 895
	lw		x6, -164(x2)	# 895
	mul		x5, x6, x5	# 895
	add		x5, x4, x5	# 895
	lw		x5, 0(x5)	# 895
	lw		x7, -100(x2)	# 895
	beq		x5, x7, beq.297426	# 895
	ori		x5, x0, 4	# 897
	mul		x5, x6, x5	# 897
	lw		x8, -92(x2)	# 897
	add		x5, x8, x5	# 897
	sw		x4, 0(x5)	# 897
	ori		x4, x0, 1	# 898
	lw		x27, -96(x2)	# 894
	sw		x4, -316(x2)	# 894
	addi	x4, x6, 0
	sw		x1, -320(x2)	# 894
	addi	x2, x2, -324	# 894
	lw		x31, 0(x27)	# 894
	jalr	x1, x31, 0	# 894
	addi	x2, x2, 324	# 894
	lw		x1, -320(x2)	# 894
	ori		x5, x0, 4	# 895
	lw		x6, -164(x2)	# 895
	mul		x5, x6, x5	# 895
	add		x5, x4, x5	# 895
	lw		x5, 0(x5)	# 895
	lw		x7, -100(x2)	# 895
	beq		x5, x7, beq.297428	# 895
	ori		x5, x0, 4	# 897
	lw		x7, -316(x2)	# 897
	mul		x5, x7, x5	# 897
	lw		x7, -92(x2)	# 897
	add		x5, x7, x5	# 897
	sw		x4, 0(x5)	# 897
	ori		x4, x0, 2	# 898
	lw		x27, -88(x2)	# 898
	sw		x1, -320(x2)	# 898
	addi	x2, x2, -324	# 898
	lw		x31, 0(x27)	# 898
	jalr	x1, x31, 0	# 898
	addi	x2, x2, 324	# 898
	lw		x1, -320(x2)	# 898
	jal		x0, beq_cont.297427	# 895
beq.297428:
beq_cont.297427:
	jal		x0, beq_cont.297425	# 895
beq.297426:
beq_cont.297425:
	lw		x4, -164(x2)	# 908
	lw		x27, -84(x2)	# 908
	sw		x1, -320(x2)	# 908
	addi	x2, x2, -324	# 908
	lw		x31, 0(x27)	# 908
	jalr	x1, x31, 0	# 908
	addi	x2, x2, 324	# 908
	lw		x1, -320(x2)	# 908
	ori		x5, x0, 4	# 908
	lw		x6, -164(x2)	# 908
	mul		x5, x6, x5	# 908
	lw		x7, -80(x2)	# 908
	add		x5, x7, x5	# 908
	sw		x4, 0(x5)	# 908
	ori		x4, x0, 80	# 2115
	sw		x1, -320(x2)	# 2115
	addi	x2, x2, -324	# 2115
	jal		x1, min_caml_print_char	# 2115
	addi	x2, x2, 324	# 2115
	lw		x1, -320(x2)	# 2115
	lw		x4, -76(x2)	# 2116
	addi	x5, x4, 48	# 2116
	addi	x4, x5, 0
	sw		x1, -320(x2)	# 2116
	addi	x2, x2, -324	# 2116
	jal		x1, min_caml_print_char	# 2116
	addi	x2, x2, 324	# 2116
	lw		x1, -320(x2)	# 2116
	ori		x4, x0, 10	# 2117
	sw		x4, -320(x2)	# 2117
	sw		x1, -324(x2)	# 2117
	addi	x2, x2, -328	# 2117
	jal		x1, min_caml_print_char	# 2117
	addi	x2, x2, 328	# 2117
	lw		x1, -324(x2)	# 2117
	ori		x4, x0, 4	# 2118
	lw		x5, -164(x2)	# 2118
	mul		x4, x5, x4	# 2118
	lw		x6, -156(x2)	# 2118
	add		x4, x6, x4	# 2118
	lw		x4, 0(x4)	# 2118
	sw		x1, -324(x2)	# 2118
	addi	x2, x2, -328	# 2118
	jal		x1, min_caml_print_int	# 2118
	addi	x2, x2, 328	# 2118
	lw		x1, -324(x2)	# 2118
	ori		x4, x0, 32	# 2119
	sw		x4, -324(x2)	# 2119
	sw		x1, -328(x2)	# 2119
	addi	x2, x2, -332	# 2119
	jal		x1, min_caml_print_char	# 2119
	addi	x2, x2, 332	# 2119
	lw		x1, -328(x2)	# 2119
	ori		x4, x0, 4	# 2120
	lw		x5, -132(x2)	# 2120
	mul		x4, x5, x4	# 2120
	lw		x6, -156(x2)	# 2120
	add		x4, x6, x4	# 2120
	lw		x4, 0(x4)	# 2120
	sw		x1, -328(x2)	# 2120
	addi	x2, x2, -332	# 2120
	jal		x1, min_caml_print_int	# 2120
	addi	x2, x2, 332	# 2120
	lw		x1, -328(x2)	# 2120
	lw		x4, -324(x2)	# 2121
	sw		x1, -328(x2)	# 2121
	addi	x2, x2, -332	# 2121
	jal		x1, min_caml_print_char	# 2121
	addi	x2, x2, 332	# 2121
	lw		x1, -328(x2)	# 2121
	ori		x4, x0, 255	# 2122
	sw		x1, -328(x2)	# 2122
	addi	x2, x2, -332	# 2122
	jal		x1, min_caml_print_int	# 2122
	addi	x2, x2, 332	# 2122
	lw		x1, -328(x2)	# 2122
	lw		x4, -320(x2)	# 2123
	sw		x1, -328(x2)	# 2123
	addi	x2, x2, -332	# 2123
	jal		x1, min_caml_print_char	# 2123
	addi	x2, x2, 332	# 2123
	lw		x1, -328(x2)	# 2123
	lw		x4, -188(x2)	# 2421
	lw		x27, -72(x2)	# 2421
	sw		x1, -328(x2)	# 2421
	addi	x2, x2, -332	# 2421
	lw		x31, 0(x27)	# 2421
	jalr	x1, x31, 0	# 2421
	addi	x2, x2, 332	# 2421
	lw		x1, -328(x2)	# 2421
	ori		x4, x0, 9	# 2422
	lw		x5, -164(x2)	# 2422
	lw		x27, -68(x2)	# 2422
	addi	x6, x5, 0
	sw		x1, -328(x2)	# 2422
	addi	x2, x2, -332	# 2422
	lw		x31, 0(x27)	# 2422
	jalr	x1, x31, 0	# 2422
	addi	x2, x2, 332	# 2422
	lw		x1, -328(x2)	# 2422
	ori		x4, x0, 4	# 2415
	lw		x5, -188(x2)	# 2415
	mul		x4, x5, x4	# 2415
	lw		x6, -64(x2)	# 2415
	add		x4, x6, x4	# 2415
	lw		x4, 0(x4)	# 2415
	ori		x7, x0, 119	# 2415
	ori		x8, x0, 4	# 2408
	mul		x8, x7, x8	# 2408
	add		x8, x4, x8	# 2408
	lw		x8, 0(x8)	# 2408
	ori		x9, x0, 4	# 1287
	lw		x10, -164(x2)	# 1287
	mul		x9, x10, x9	# 1287
	lw		x11, -108(x2)	# 1287
	add		x9, x11, x9	# 1287
	lw		x9, 0(x9)	# 1287
	lw		x12, -132(x2)	# 1287
	sub		x9, x9, x12	# 1287
	sw		x7, -328(x2)	# 1270
	sw		x4, -332(x2)	# 1270
	ble		x10, x9, ble.297430	# 1270
	jal		x0, ble_cont.297429	# 1270
ble.297430:
	ori		x13, x0, 4	# 1271
	mul		x13, x9, x13	# 1271
	lw		x14, -60(x2)	# 1271
	add		x13, x14, x13	# 1271
	lw		x13, 0(x13)	# 1271
	lw		x15, 4(x8)	# 645
	lw		x16, 0(x8)	# 639
	lw		x17, 4(x13)	# 353
	sw		x8, -336(x2)	# 1275
	beq		x17, x12, beq.297432	# 1275
	ori		x18, x0, 2	# 1277
	beq		x17, x18, beq.297434	# 1277
	lw		x27, -48(x2)	# 1280
	sw		x15, -340(x2)	# 1280
	sw		x9, -344(x2)	# 1280
	addi	x5, x13, 0
	addi	x4, x16, 0
	sw		x1, -348(x2)	# 1280
	addi	x2, x2, -352	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 352	# 1280
	lw		x1, -348(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -344(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -340(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297433	# 1277
beq.297434:
	lw		x27, -52(x2)	# 1278
	sw		x15, -340(x2)	# 1278
	sw		x9, -344(x2)	# 1278
	addi	x5, x13, 0
	addi	x4, x16, 0
	sw		x1, -348(x2)	# 1278
	addi	x2, x2, -352	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 352	# 1278
	lw		x1, -348(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -344(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -340(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297433:
	jal		x0, beq_cont.297431	# 1275
beq.297432:
	lw		x27, -56(x2)	# 1276
	sw		x15, -340(x2)	# 1276
	sw		x9, -344(x2)	# 1276
	addi	x5, x13, 0
	addi	x4, x16, 0
	sw		x1, -348(x2)	# 1276
	addi	x2, x2, -352	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 352	# 1276
	lw		x1, -348(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -344(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -340(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297431:
	lw		x4, -132(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -164(x2)	# 1270
	ble		x6, x5, ble.297436	# 1270
	jal		x0, ble_cont.297435	# 1270
ble.297436:
	ori		x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	lw		x8, -60(x2)	# 1271
	add		x7, x8, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x9, -336(x2)	# 645
	lw		x10, 4(x9)	# 645
	lw		x11, 0(x9)	# 639
	lw		x12, 4(x7)	# 353
	beq		x12, x4, beq.297438	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.297440	# 1277
	lw		x27, -48(x2)	# 1280
	sw		x10, -348(x2)	# 1280
	sw		x5, -352(x2)	# 1280
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -356(x2)	# 1280
	addi	x2, x2, -360	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 360	# 1280
	lw		x1, -356(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -352(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -348(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297439	# 1277
beq.297440:
	lw		x27, -52(x2)	# 1278
	sw		x10, -348(x2)	# 1278
	sw		x5, -352(x2)	# 1278
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -356(x2)	# 1278
	addi	x2, x2, -360	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 360	# 1278
	lw		x1, -356(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -352(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -348(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297439:
	jal		x0, beq_cont.297437	# 1275
beq.297438:
	lw		x27, -56(x2)	# 1276
	sw		x10, -348(x2)	# 1276
	sw		x5, -352(x2)	# 1276
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -356(x2)	# 1276
	addi	x2, x2, -360	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 360	# 1276
	lw		x1, -356(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -352(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -348(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297437:
	lw		x4, -132(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -164(x2)	# 1270
	ble		x6, x5, ble.297442	# 1270
	jal		x0, ble_cont.297441	# 1270
ble.297442:
	ori		x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	lw		x8, -60(x2)	# 1271
	add		x7, x8, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x9, -336(x2)	# 645
	lw		x10, 4(x9)	# 645
	lw		x11, 0(x9)	# 639
	lw		x12, 4(x7)	# 353
	beq		x12, x4, beq.297444	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.297446	# 1277
	lw		x27, -48(x2)	# 1280
	sw		x10, -356(x2)	# 1280
	sw		x5, -360(x2)	# 1280
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -364(x2)	# 1280
	addi	x2, x2, -368	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 368	# 1280
	lw		x1, -364(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -360(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -356(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297445	# 1277
beq.297446:
	lw		x27, -52(x2)	# 1278
	sw		x10, -356(x2)	# 1278
	sw		x5, -360(x2)	# 1278
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -364(x2)	# 1278
	addi	x2, x2, -368	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 368	# 1278
	lw		x1, -364(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -360(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -356(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297445:
	jal		x0, beq_cont.297443	# 1275
beq.297444:
	lw		x27, -56(x2)	# 1276
	sw		x10, -356(x2)	# 1276
	sw		x5, -360(x2)	# 1276
	addi	x5, x7, 0
	addi	x4, x11, 0
	sw		x1, -364(x2)	# 1276
	addi	x2, x2, -368	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 368	# 1276
	lw		x1, -364(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -360(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -356(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297443:
	lw		x4, -132(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -336(x2)	# 1282
	lw		x27, -44(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -364(x2)	# 1282
	addi	x2, x2, -368	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 368	# 1282
	lw		x1, -364(x2)	# 1282
ble_cont.297441:
ble_cont.297435:
ble_cont.297429:
	ori		x5, x0, 118	# 2409
	lw		x4, -332(x2)	# 2409
	lw		x27, -36(x2)	# 2409
	sw		x1, -364(x2)	# 2409
	addi	x2, x2, -368	# 2409
	lw		x31, 0(x27)	# 2409
	jalr	x1, x31, 0	# 2409
	addi	x2, x2, 368	# 2409
	lw		x1, -364(x2)	# 2409
	ori		x4, x0, 4	# 2415
	lw		x5, -152(x2)	# 2415
	mul		x4, x5, x4	# 2415
	lw		x5, -64(x2)	# 2415
	add		x4, x5, x4	# 2415
	lw		x4, 0(x4)	# 2415
	lw		x5, -328(x2)	# 2415
	lw		x27, -36(x2)	# 2415
	sw		x1, -364(x2)	# 2415
	addi	x2, x2, -368	# 2415
	lw		x31, 0(x27)	# 2415
	jalr	x1, x31, 0	# 2415
	addi	x2, x2, 368	# 2415
	lw		x1, -364(x2)	# 2415
	lw		x4, -128(x2)	# 2416
	lw		x27, -32(x2)	# 2416
	sw		x1, -364(x2)	# 2416
	addi	x2, x2, -368	# 2416
	lw		x31, 0(x27)	# 2416
	jalr	x1, x31, 0	# 2416
	addi	x2, x2, 368	# 2416
	lw		x1, -364(x2)	# 2416
	ori		x4, x0, 4	# 259
	lw		x5, -164(x2)	# 259
	mul		x4, x5, x4	# 259
	lw		x6, -28(x2)	# 259
	add		x4, x6, x4	# 259
	flw		f0, 0(x4)	# 259
	ori		x4, x0, 4	# 259
	mul		x4, x5, x4	# 259
	lw		x7, -24(x2)	# 259
	add		x4, x7, x4	# 259
	fsw		f0, 0(x4)	# 259
	ori		x4, x0, 4	# 260
	lw		x8, -132(x2)	# 260
	mul		x4, x8, x4	# 260
	add		x4, x6, x4	# 260
	flw		f0, 0(x4)	# 260
	ori		x4, x0, 4	# 260
	mul		x4, x8, x4	# 260
	add		x4, x7, x4	# 260
	fsw		f0, 0(x4)	# 260
	ori		x4, x0, 4	# 261
	lw		x9, -128(x2)	# 261
	mul		x4, x9, x4	# 261
	add		x4, x6, x4	# 261
	flw		f0, 0(x4)	# 261
	ori		x4, x0, 4	# 261
	mul		x4, x9, x4	# 261
	add		x4, x7, x4	# 261
	fsw		f0, 0(x4)	# 261
	ori		x4, x0, 4	# 1287
	mul		x4, x5, x4	# 1287
	lw		x6, -108(x2)	# 1287
	add		x4, x6, x4	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x4, x4, x8	# 1287
	ble		x5, x4, ble.297448	# 1270
	jal		x0, ble_cont.297447	# 1270
ble.297448:
	ori		x10, x0, 4	# 1271
	mul		x10, x4, x10	# 1271
	lw		x11, -60(x2)	# 1271
	add		x10, x11, x10	# 1271
	lw		x10, 0(x10)	# 1271
	lw		x12, 4(x10)	# 353
	beq		x12, x8, beq.297450	# 1275
	ori		x13, x0, 2	# 1277
	beq		x12, x13, beq.297452	# 1277
	lw		x27, -48(x2)	# 1280
	sw		x4, -364(x2)	# 1280
	addi	x5, x10, 0
	addi	x4, x7, 0
	sw		x1, -368(x2)	# 1280
	addi	x2, x2, -372	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 372	# 1280
	lw		x1, -368(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -364(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -40(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297451	# 1277
beq.297452:
	lw		x27, -52(x2)	# 1278
	sw		x4, -364(x2)	# 1278
	addi	x5, x10, 0
	addi	x4, x7, 0
	sw		x1, -368(x2)	# 1278
	addi	x2, x2, -372	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 372	# 1278
	lw		x1, -368(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -364(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -40(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297451:
	jal		x0, beq_cont.297449	# 1275
beq.297450:
	lw		x27, -56(x2)	# 1276
	sw		x4, -364(x2)	# 1276
	addi	x5, x10, 0
	addi	x4, x7, 0
	sw		x1, -368(x2)	# 1276
	addi	x2, x2, -372	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 372	# 1276
	lw		x1, -368(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -364(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -40(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297449:
	lw		x4, -132(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -164(x2)	# 1270
	ble		x6, x5, ble.297454	# 1270
	jal		x0, ble_cont.297453	# 1270
ble.297454:
	ori		x8, x0, 4	# 1271
	mul		x8, x5, x8	# 1271
	lw		x9, -60(x2)	# 1271
	add		x8, x9, x8	# 1271
	lw		x8, 0(x8)	# 1271
	lw		x10, 4(x8)	# 353
	beq		x10, x4, beq.297456	# 1275
	ori		x11, x0, 2	# 1277
	beq		x10, x11, beq.297458	# 1277
	lw		x10, -24(x2)	# 1280
	lw		x27, -48(x2)	# 1280
	sw		x5, -368(x2)	# 1280
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -372(x2)	# 1280
	addi	x2, x2, -376	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 376	# 1280
	lw		x1, -372(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -368(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -40(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.297457	# 1277
beq.297458:
	lw		x10, -24(x2)	# 1278
	lw		x27, -52(x2)	# 1278
	sw		x5, -368(x2)	# 1278
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -372(x2)	# 1278
	addi	x2, x2, -376	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 376	# 1278
	lw		x1, -372(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -368(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -40(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.297457:
	jal		x0, beq_cont.297455	# 1275
beq.297456:
	lw		x10, -24(x2)	# 1276
	lw		x27, -56(x2)	# 1276
	sw		x5, -368(x2)	# 1276
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -372(x2)	# 1276
	addi	x2, x2, -376	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 376	# 1276
	lw		x1, -372(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -368(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -40(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.297455:
	lw		x4, -132(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -20(x2)	# 1282
	lw		x27, -44(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -372(x2)	# 1282
	addi	x2, x2, -376	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 376	# 1282
	lw		x1, -372(x2)	# 1282
ble_cont.297453:
ble_cont.297447:
	ori		x4, x0, 4	# 2505
	lw		x5, -164(x2)	# 2505
	mul		x4, x5, x4	# 2505
	lw		x6, -108(x2)	# 2505
	add		x4, x6, x4	# 2505
	lw		x4, 0(x4)	# 2505
	lw		x6, -132(x2)	# 2505
	sub		x4, x4, x6	# 2505
	ble		x5, x4, ble.297460	# 2470
	jal		x0, ble_cont.297459	# 2470
ble.297460:
	ori		x7, x0, 4	# 2471
	mul		x7, x4, x7	# 2471
	lw		x8, -60(x2)	# 2471
	add		x7, x8, x7	# 2471
	lw		x7, 0(x7)	# 2471
	lw		x8, 8(x7)	# 363
	ori		x9, x0, 2	# 2472
	beq		x8, x9, beq.297462	# 2472
	jal		x0, beq_cont.297461	# 2472
beq.297462:
	lw		x8, 28(x7)	# 461
	ori		x10, x0, 4	# 466
	mul		x10, x5, x10	# 466
	add		x8, x8, x10	# 466
	flw		f0, 0(x8)	# 466
	lui		x8, %hi(l.15661)	# 2473
	ori		x8, x0, %lo(l.15661)	# 2473
	flw		f1, 0(x8)	# 2473
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.297464	# 6
	addi	x8, x0, 0	# 6
	jal		x0, fle_cont.297463	# 6
fle_else.297464:
	ori		x8, x0, 1	# 6
fle_cont.297463:
	beq		x8, x5, beq.297466	# 2473
	lw		x8, 4(x7)	# 353
	ori		x10, x0, 1	# 2476
	beq		x8, x10, beq.297468	# 2476
	beq		x8, x9, beq.297470	# 2478
	jal		x0, beq_cont.297469	# 2478
beq.297470:
	lw		x27, -12(x2)	# 2479
	addi	x5, x7, 0
	sw		x1, -372(x2)	# 2479
	addi	x2, x2, -376	# 2479
	lw		x31, 0(x27)	# 2479
	jalr	x1, x31, 0	# 2479
	addi	x2, x2, 376	# 2479
	lw		x1, -372(x2)	# 2479
beq_cont.297469:
	jal		x0, beq_cont.297467	# 2476
beq.297468:
	lw		x27, -16(x2)	# 2477
	addi	x5, x7, 0
	sw		x1, -372(x2)	# 2477
	addi	x2, x2, -376	# 2477
	lw		x31, 0(x27)	# 2477
	jalr	x1, x31, 0	# 2477
	addi	x2, x2, 376	# 2477
	lw		x1, -372(x2)	# 2477
beq_cont.297467:
	jal		x0, beq_cont.297465	# 2473
beq.297466:
beq_cont.297465:
beq_cont.297461:
ble_cont.297459:
	lw		x4, -256(x2)	# 2506
	lw		x5, -164(x2)	# 2506
	lw		x27, -8(x2)	# 2506
	addi	x6, x5, 0
	sw		x1, -372(x2)	# 2506
	addi	x2, x2, -376	# 2506
	lw		x31, 0(x27)	# 2506
	jalr	x1, x31, 0	# 2506
	addi	x2, x2, 376	# 2506
	lw		x1, -372(x2)	# 2506
	ori		x4, x0, 4	# 2255
	lw		x5, -132(x2)	# 2255
	mul		x4, x5, x4	# 2255
	lw		x6, -156(x2)	# 2255
	add		x4, x6, x4	# 2255
	lw		x4, 0(x4)	# 2255
	lw		x6, -164(x2)	# 2255
	ble		x4, x6, ble.297471	# 2255
	sub		x4, x4, x5	# 2257
	ble		x4, x6, ble.297473	# 2257
	ori		x4, x0, 1	# 2258
	lw		x7, -296(x2)	# 2258
	lw		x8, -128(x2)	# 2258
	lw		x27, -8(x2)	# 2258
	addi	x6, x8, 0
	addi	x5, x4, 0
	addi	x4, x7, 0
	sw		x1, -372(x2)	# 2258
	addi	x2, x2, -376	# 2258
	lw		x31, 0(x27)	# 2258
	jalr	x1, x31, 0	# 2258
	addi	x2, x2, 376	# 2258
	lw		x1, -372(x2)	# 2258
	jal		x0, ble_cont.297472	# 2257
ble.297473:
ble_cont.297472:
	lw		x4, -164(x2)	# 2260
	lw		x6, -216(x2)	# 2260
	lw		x7, -256(x2)	# 2260
	lw		x8, -296(x2)	# 2260
	lw		x9, -76(x2)	# 2260
	lw		x27, -4(x2)	# 2260
	addi	x5, x4, 0
	sw		x1, -372(x2)	# 2260
	addi	x2, x2, -376	# 2260
	lw		x31, 0(x27)	# 2260
	jalr	x1, x31, 0	# 2260
	addi	x2, x2, 376	# 2260
	lw		x1, -372(x2)	# 2260
	lw		x4, -132(x2)	# 2261
	lw		x5, -256(x2)	# 2261
	lw		x6, -296(x2)	# 2261
	lw		x7, -216(x2)	# 2261
	lw		x8, -188(x2)	# 2261
	lw		x9, -76(x2)	# 2261
	lw		x27, 0(x2)	# 2261
	lw		x31, 0(x27)	# 2261
	jalr	x0, x31, 0	# 2261
ble.297471:
	jalr	x0, x1, 0	# 2262
min_caml_start:
	addi	x2, x2, -4
	addi	x30, x0, 0
	lui		x4, %hi(l.21985)	# 20
	ori		x4, x0, %lo(l.21985)	# 20
	flw		f0, 0(x4)	# 20
	lui		x4, %hi(l.21987)	# 21
	ori		x4, x0, %lo(l.21987)	# 21
	flw		f1, 0(x4)	# 21
	lui		x4, %hi(l.21989)	# 22
	ori		x4, x0, %lo(l.21989)	# 22
	flw		f2, 0(x4)	# 22
	lui		x4, %hi(l.21991)	# 23
	ori		x4, x0, %lo(l.21991)	# 23
	flw		f3, 0(x4)	# 23
	addi	x4, x3, 0	# 45
	addi	x3, x3, 20	# 45
	lui		x5, %hi(sin.2501)	# 45
	ori		x5, x0, %lo(sin.2501)	# 45
	sw		x5, 0(x4)	# 53
	fsw		f3, 16(x4)	# 53
	fsw		f2, 12(x4)	# 53
	fsw		f1, 8(x4)	# 53
	fsw		f0, 4(x4)	# 53
	addi	x5, x3, 0	# 53
	addi	x3, x3, 24	# 53
	lui		x6, %hi(cos.2503)	# 53
	ori		x6, x0, %lo(cos.2503)	# 53
	sw		x6, 0(x5)	# 58
	sw		x4, 20(x5)	# 58
	fsw		f3, 16(x5)	# 58
	fsw		f2, 12(x5)	# 58
	fsw		f1, 8(x5)	# 58
	fsw		f0, 4(x5)	# 58
	addi	x6, x3, 0	# 58
	addi	x3, x3, 12	# 58
	lui		x7, %hi(atan.2505)	# 58
	ori		x7, x0, %lo(atan.2505)	# 58
	sw		x7, 0(x6)	# 76
	fsw		f3, 8(x6)	# 76
	fsw		f2, 4(x6)	# 76
	ori		x7, x0, 1	# 76
	addi	x8, x0, 0	# 76
	sw		x6, 0(x2)	# 76
	sw		x5, -4(x2)	# 76
	fsw		f0, -8(x2)	# 76
	fsw		f1, -16(x2)	# 76
	fsw		f2, -24(x2)	# 76
	fsw		f3, -32(x2)	# 76
	sw		x4, -40(x2)	# 76
	sw		x7, -44(x2)	# 76
	sw		x8, -48(x2)	# 76
	addi	x5, x8, 0
	addi	x4, x7, 0
	sw		x1, -52(x2)	# 76
	addi	x2, x2, -56	# 76
	jal		x1, min_caml_create_array	# 76
	addi	x2, x2, 56	# 76
	lw		x1, -52(x2)	# 76
	lui		x5, %hi(l.15659)	# 81
	ori		x5, x0, %lo(l.15659)	# 81
	flw		f0, 0(x5)	# 81
	lw		x5, -48(x2)	# 81
	sw		x4, -52(x2)	# 81
	fsw		f0, -56(x2)	# 81
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 81
	addi	x2, x2, -68	# 81
	jal		x1, min_caml_create_float_array	# 81
	addi	x2, x2, 68	# 81
	lw		x1, -64(x2)	# 81
	ori		x5, x0, 60	# 82
	addi	x6, x3, 0	# 82
	addi	x3, x3, 44	# 82
	sw		x4, 40(x6)	# 82
	sw		x4, 36(x6)	# 82
	sw		x4, 32(x6)	# 82
	sw		x4, 28(x6)	# 82
	lw		x7, -48(x2)	# 82
	sw		x7, 24(x6)	# 82
	sw		x4, 20(x6)	# 82
	sw		x4, 16(x6)	# 82
	sw		x7, 12(x6)	# 82
	sw		x7, 8(x6)	# 82
	sw		x7, 4(x6)	# 82
	sw		x7, 0(x6)	# 82
	addi	x4, x6, 0	# 82
	sw		x5, -64(x2)	# 82
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -68(x2)	# 82
	addi	x2, x2, -72	# 82
	jal		x1, min_caml_create_array	# 82
	addi	x2, x2, 72	# 82
	lw		x1, -68(x2)	# 82
	ori		x5, x0, 3	# 86
	flw		f0, -56(x2)	# 86
	sw		x4, -68(x2)	# 86
	sw		x5, -72(x2)	# 86
	addi	x4, x5, 0
	sw		x1, -76(x2)	# 86
	addi	x2, x2, -80	# 86
	jal		x1, min_caml_create_float_array	# 86
	addi	x2, x2, 80	# 86
	lw		x1, -76(x2)	# 86
	flw		f0, -56(x2)	# 89
	lw		x5, -72(x2)	# 89
	sw		x4, -76(x2)	# 89
	addi	x4, x5, 0
	sw		x1, -80(x2)	# 89
	addi	x2, x2, -84	# 89
	jal		x1, min_caml_create_float_array	# 89
	addi	x2, x2, 84	# 89
	lw		x1, -80(x2)	# 89
	flw		f0, -56(x2)	# 92
	lw		x5, -72(x2)	# 92
	sw		x4, -80(x2)	# 92
	addi	x4, x5, 0
	sw		x1, -84(x2)	# 92
	addi	x2, x2, -88	# 92
	jal		x1, min_caml_create_float_array	# 92
	addi	x2, x2, 88	# 92
	lw		x1, -84(x2)	# 92
	lui		x5, %hi(l.22006)	# 95
	ori		x5, x0, %lo(l.22006)	# 95
	flw		f0, 0(x5)	# 95
	lw		x5, -44(x2)	# 95
	fsw		f0, -88(x2)	# 95
	sw		x4, -96(x2)	# 95
	addi	x4, x5, 0
	sw		x1, -100(x2)	# 95
	addi	x2, x2, -104	# 95
	jal		x1, min_caml_create_float_array	# 95
	addi	x2, x2, 104	# 95
	lw		x1, -100(x2)	# 95
	ori		x5, x0, 50	# 98
	lui		x6, -1	# 98
	ori		x6, x0, -1	# 98
	lw		x7, -44(x2)	# 98
	sw		x6, -100(x2)	# 98
	sw		x4, -104(x2)	# 98
	sw		x5, -108(x2)	# 98
	addi	x5, x6, 0
	addi	x4, x7, 0
	sw		x1, -112(x2)	# 98
	addi	x2, x2, -116	# 98
	jal		x1, min_caml_create_array	# 98
	addi	x2, x2, 116	# 98
	lw		x1, -112(x2)	# 98
	addi	x5, x4, 0	# 98
	lw		x4, -108(x2)	# 98
	sw		x1, -112(x2)	# 98
	addi	x2, x2, -116	# 98
	jal		x1, min_caml_create_array	# 98
	addi	x2, x2, 116	# 98
	lw		x1, -112(x2)	# 98
	ori		x5, x0, 4	# 101
	lw		x6, -48(x2)	# 101
	mul		x5, x6, x5	# 101
	add		x5, x4, x5	# 101
	lw		x5, 0(x5)	# 101
	lw		x7, -44(x2)	# 101
	sw		x4, -112(x2)	# 101
	addi	x4, x7, 0
	sw		x1, -116(x2)	# 101
	addi	x2, x2, -120	# 101
	jal		x1, min_caml_create_array	# 101
	addi	x2, x2, 120	# 101
	lw		x1, -116(x2)	# 101
	addi	x5, x4, 0	# 101
	lw		x4, -44(x2)	# 101
	sw		x1, -116(x2)	# 101
	addi	x2, x2, -120	# 101
	jal		x1, min_caml_create_array	# 101
	addi	x2, x2, 120	# 101
	lw		x1, -116(x2)	# 101
	flw		f0, -56(x2)	# 106
	lw		x5, -44(x2)	# 106
	sw		x4, -116(x2)	# 106
	addi	x4, x5, 0
	sw		x1, -120(x2)	# 106
	addi	x2, x2, -124	# 106
	jal		x1, min_caml_create_float_array	# 106
	addi	x2, x2, 124	# 106
	lw		x1, -120(x2)	# 106
	lw		x5, -44(x2)	# 109
	lw		x6, -48(x2)	# 109
	sw		x4, -120(x2)	# 109
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -124(x2)	# 109
	addi	x2, x2, -128	# 109
	jal		x1, min_caml_create_array	# 109
	addi	x2, x2, 128	# 109
	lw		x1, -124(x2)	# 109
	lui		x5, %hi(l.22011)	# 112
	ori		x5, x0, %lo(l.22011)	# 112
	flw		f0, 0(x5)	# 112
	lw		x5, -44(x2)	# 112
	fsw		f0, -128(x2)	# 112
	sw		x4, -136(x2)	# 112
	addi	x4, x5, 0
	sw		x1, -140(x2)	# 112
	addi	x2, x2, -144	# 112
	jal		x1, min_caml_create_float_array	# 112
	addi	x2, x2, 144	# 112
	lw		x1, -140(x2)	# 112
	flw		f0, -56(x2)	# 115
	lw		x5, -72(x2)	# 115
	sw		x4, -140(x2)	# 115
	addi	x4, x5, 0
	sw		x1, -144(x2)	# 115
	addi	x2, x2, -148	# 115
	jal		x1, min_caml_create_float_array	# 115
	addi	x2, x2, 148	# 115
	lw		x1, -144(x2)	# 115
	lw		x5, -44(x2)	# 118
	lw		x6, -48(x2)	# 118
	sw		x4, -144(x2)	# 118
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -148(x2)	# 118
	addi	x2, x2, -152	# 118
	jal		x1, min_caml_create_array	# 118
	addi	x2, x2, 152	# 118
	lw		x1, -148(x2)	# 118
	flw		f0, -56(x2)	# 121
	lw		x5, -72(x2)	# 121
	sw		x4, -148(x2)	# 121
	addi	x4, x5, 0
	sw		x1, -152(x2)	# 121
	addi	x2, x2, -156	# 121
	jal		x1, min_caml_create_float_array	# 121
	addi	x2, x2, 156	# 121
	lw		x1, -152(x2)	# 121
	flw		f0, -56(x2)	# 124
	lw		x5, -72(x2)	# 124
	sw		x4, -152(x2)	# 124
	addi	x4, x5, 0
	sw		x1, -156(x2)	# 124
	addi	x2, x2, -160	# 124
	jal		x1, min_caml_create_float_array	# 124
	addi	x2, x2, 160	# 124
	lw		x1, -156(x2)	# 124
	flw		f0, -56(x2)	# 128
	lw		x5, -72(x2)	# 128
	sw		x4, -156(x2)	# 128
	addi	x4, x5, 0
	sw		x1, -160(x2)	# 128
	addi	x2, x2, -164	# 128
	jal		x1, min_caml_create_float_array	# 128
	addi	x2, x2, 164	# 128
	lw		x1, -160(x2)	# 128
	flw		f0, -56(x2)	# 131
	lw		x5, -72(x2)	# 131
	sw		x4, -160(x2)	# 131
	addi	x4, x5, 0
	sw		x1, -164(x2)	# 131
	addi	x2, x2, -168	# 131
	jal		x1, min_caml_create_float_array	# 131
	addi	x2, x2, 168	# 131
	lw		x1, -164(x2)	# 131
	ori		x5, x0, 2	# 135
	lw		x6, -48(x2)	# 135
	sw		x4, -164(x2)	# 135
	sw		x5, -168(x2)	# 135
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -172(x2)	# 135
	addi	x2, x2, -176	# 135
	jal		x1, min_caml_create_array	# 135
	addi	x2, x2, 176	# 135
	lw		x1, -172(x2)	# 135
	lw		x5, -168(x2)	# 138
	lw		x6, -48(x2)	# 138
	sw		x4, -172(x2)	# 138
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -176(x2)	# 138
	addi	x2, x2, -180	# 138
	jal		x1, min_caml_create_array	# 138
	addi	x2, x2, 180	# 138
	lw		x1, -176(x2)	# 138
	flw		f0, -56(x2)	# 141
	lw		x5, -44(x2)	# 141
	sw		x4, -176(x2)	# 141
	addi	x4, x5, 0
	sw		x1, -180(x2)	# 141
	addi	x2, x2, -184	# 141
	jal		x1, min_caml_create_float_array	# 141
	addi	x2, x2, 184	# 141
	lw		x1, -180(x2)	# 141
	flw		f0, -56(x2)	# 145
	lw		x5, -72(x2)	# 145
	sw		x4, -180(x2)	# 145
	addi	x4, x5, 0
	sw		x1, -184(x2)	# 145
	addi	x2, x2, -188	# 145
	jal		x1, min_caml_create_float_array	# 145
	addi	x2, x2, 188	# 145
	lw		x1, -184(x2)	# 145
	flw		f0, -56(x2)	# 148
	lw		x5, -72(x2)	# 148
	sw		x4, -184(x2)	# 148
	addi	x4, x5, 0
	sw		x1, -188(x2)	# 148
	addi	x2, x2, -192	# 148
	jal		x1, min_caml_create_float_array	# 148
	addi	x2, x2, 192	# 148
	lw		x1, -188(x2)	# 148
	flw		f0, -56(x2)	# 152
	lw		x5, -72(x2)	# 152
	sw		x4, -188(x2)	# 152
	addi	x4, x5, 0
	sw		x1, -192(x2)	# 152
	addi	x2, x2, -196	# 152
	jal		x1, min_caml_create_float_array	# 152
	addi	x2, x2, 196	# 152
	lw		x1, -192(x2)	# 152
	flw		f0, -56(x2)	# 154
	lw		x5, -72(x2)	# 154
	sw		x4, -192(x2)	# 154
	addi	x4, x5, 0
	sw		x1, -196(x2)	# 154
	addi	x2, x2, -200	# 154
	jal		x1, min_caml_create_float_array	# 154
	addi	x2, x2, 200	# 154
	lw		x1, -196(x2)	# 154
	flw		f0, -56(x2)	# 156
	lw		x5, -72(x2)	# 156
	sw		x4, -196(x2)	# 156
	addi	x4, x5, 0
	sw		x1, -200(x2)	# 156
	addi	x2, x2, -204	# 156
	jal		x1, min_caml_create_float_array	# 156
	addi	x2, x2, 204	# 156
	lw		x1, -200(x2)	# 156
	flw		f0, -56(x2)	# 160
	lw		x5, -72(x2)	# 160
	sw		x4, -200(x2)	# 160
	addi	x4, x5, 0
	sw		x1, -204(x2)	# 160
	addi	x2, x2, -208	# 160
	jal		x1, min_caml_create_float_array	# 160
	addi	x2, x2, 208	# 160
	lw		x1, -204(x2)	# 160
	flw		f0, -56(x2)	# 165
	lw		x5, -48(x2)	# 165
	sw		x4, -204(x2)	# 165
	addi	x4, x5, 0
	sw		x1, -208(x2)	# 165
	addi	x2, x2, -212	# 165
	jal		x1, min_caml_create_float_array	# 165
	addi	x2, x2, 212	# 165
	lw		x1, -208(x2)	# 165
	addi	x5, x4, 0	# 165
	lw		x4, -48(x2)	# 166
	sw		x5, -208(x2)	# 166
	sw		x1, -212(x2)	# 166
	addi	x2, x2, -216	# 166
	jal		x1, min_caml_create_array	# 166
	addi	x2, x2, 216	# 166
	lw		x1, -212(x2)	# 166
	addi	x5, x3, 0	# 167
	addi	x3, x3, 8	# 167
	sw		x4, 4(x5)	# 167
	lw		x4, -208(x2)	# 167
	sw		x4, 0(x5)	# 167
	lw		x4, -48(x2)	# 167
	sw		x1, -212(x2)	# 167
	addi	x2, x2, -216	# 167
	jal		x1, min_caml_create_array	# 167
	addi	x2, x2, 216	# 167
	lw		x1, -212(x2)	# 167
	addi	x5, x4, 0	# 167
	ori		x4, x0, 5	# 168
	sw		x4, -212(x2)	# 168
	sw		x1, -216(x2)	# 168
	addi	x2, x2, -220	# 168
	jal		x1, min_caml_create_array	# 168
	addi	x2, x2, 220	# 168
	lw		x1, -216(x2)	# 168
	flw		f0, -56(x2)	# 173
	lw		x5, -48(x2)	# 173
	sw		x4, -216(x2)	# 173
	addi	x4, x5, 0
	sw		x1, -220(x2)	# 173
	addi	x2, x2, -224	# 173
	jal		x1, min_caml_create_float_array	# 173
	addi	x2, x2, 224	# 173
	lw		x1, -220(x2)	# 173
	flw		f0, -56(x2)	# 174
	lw		x5, -72(x2)	# 174
	sw		x4, -220(x2)	# 174
	addi	x4, x5, 0
	sw		x1, -224(x2)	# 174
	addi	x2, x2, -228	# 174
	jal		x1, min_caml_create_float_array	# 174
	addi	x2, x2, 228	# 174
	lw		x1, -224(x2)	# 174
	lw		x5, -64(x2)	# 175
	lw		x6, -220(x2)	# 175
	sw		x4, -224(x2)	# 175
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -228(x2)	# 175
	addi	x2, x2, -232	# 175
	jal		x1, min_caml_create_array	# 175
	addi	x2, x2, 232	# 175
	lw		x1, -228(x2)	# 175
	addi	x5, x3, 0	# 176
	addi	x3, x3, 8	# 176
	sw		x4, 4(x5)	# 176
	lw		x6, -224(x2)	# 176
	sw		x6, 0(x5)	# 176
	flw		f0, -56(x2)	# 181
	lw		x7, -48(x2)	# 181
	sw		x5, -228(x2)	# 181
	sw		x4, -232(x2)	# 181
	addi	x4, x7, 0
	sw		x1, -236(x2)	# 181
	addi	x2, x2, -240	# 181
	jal		x1, min_caml_create_float_array	# 181
	addi	x2, x2, 240	# 181
	lw		x1, -236(x2)	# 181
	addi	x5, x4, 0	# 181
	lw		x4, -48(x2)	# 182
	sw		x5, -236(x2)	# 182
	sw		x1, -240(x2)	# 182
	addi	x2, x2, -244	# 182
	jal		x1, min_caml_create_array	# 182
	addi	x2, x2, 244	# 182
	lw		x1, -240(x2)	# 182
	addi	x5, x3, 0	# 183
	addi	x3, x3, 8	# 183
	sw		x4, 4(x5)	# 183
	lw		x4, -236(x2)	# 183
	sw		x4, 0(x5)	# 183
	addi	x4, x5, 0	# 183
	ori		x5, x0, 180	# 184
	addi	x6, x3, 0	# 184
	addi	x3, x3, 12	# 184
	flw		f0, -56(x2)	# 184
	fsw		f0, 8(x6)	# 184
	sw		x4, 4(x6)	# 184
	lw		x4, -48(x2)	# 184
	sw		x4, 0(x6)	# 184
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -240(x2)	# 184
	addi	x2, x2, -244	# 184
	jal		x1, min_caml_create_array	# 184
	addi	x2, x2, 244	# 184
	lw		x1, -240(x2)	# 184
	lw		x5, -44(x2)	# 188
	lw		x6, -48(x2)	# 188
	sw		x4, -240(x2)	# 188
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -244(x2)	# 188
	addi	x2, x2, -248	# 188
	jal		x1, min_caml_create_array	# 188
	addi	x2, x2, 248	# 188
	lw		x1, -244(x2)	# 188
	addi	x5, x3, 0	# 681
	addi	x3, x3, 64	# 681
	lui		x6, %hi(read_screen_settings.2663)	# 681
	ori		x6, x0, %lo(read_screen_settings.2663)	# 681
	sw		x6, 0(x5)	# 714
	lw		x6, -80(x2)	# 714
	sw		x6, 60(x5)	# 714
	lw		x7, -40(x2)	# 714
	sw		x7, 56(x5)	# 714
	lw		x8, -200(x2)	# 714
	sw		x8, 52(x5)	# 714
	lw		x9, -196(x2)	# 714
	sw		x9, 48(x5)	# 714
	lw		x10, -192(x2)	# 714
	sw		x10, 44(x5)	# 714
	lw		x11, -76(x2)	# 714
	sw		x11, 40(x5)	# 714
	flw		f0, -32(x2)	# 714
	fsw		f0, 36(x5)	# 714
	flw		f1, -24(x2)	# 714
	fsw		f1, 32(x5)	# 714
	flw		f2, -16(x2)	# 714
	fsw		f2, 28(x5)	# 714
	flw		f3, -8(x2)	# 714
	fsw		f3, 24(x5)	# 714
	lw		x11, -4(x2)	# 714
	sw		x11, 20(x5)	# 714
	lw		x12, -168(x2)	# 714
	sw		x12, 16(x5)	# 714
	lw		x13, -48(x2)	# 714
	sw		x13, 12(x5)	# 714
	lw		x14, -44(x2)	# 714
	sw		x14, 8(x5)	# 714
	flw		f4, -56(x2)	# 714
	fsw		f4, 4(x5)	# 714
	addi	x15, x3, 0	# 714
	addi	x3, x3, 52	# 714
	lui		x16, %hi(read_light.2665)	# 714
	ori		x16, x0, %lo(read_light.2665)	# 714
	sw		x16, 0(x15)	# 736
	sw		x7, 48(x15)	# 736
	fsw		f0, 44(x15)	# 736
	fsw		f1, 40(x15)	# 736
	fsw		f2, 36(x15)	# 736
	fsw		f3, 32(x15)	# 736
	lw		x16, -96(x2)	# 736
	sw		x16, 28(x15)	# 736
	sw		x11, 24(x15)	# 736
	lw		x17, -104(x2)	# 736
	sw		x17, 20(x15)	# 736
	sw		x12, 16(x15)	# 736
	sw		x13, 12(x15)	# 736
	sw		x14, 8(x15)	# 736
	fsw		f4, 4(x15)	# 736
	addi	x18, x3, 0	# 736
	addi	x3, x3, 44	# 736
	lui		x19, %hi(rotate_quadratic_matrix.2667)	# 736
	ori		x19, x0, %lo(rotate_quadratic_matrix.2667)	# 736
	sw		x19, 0(x18)	# 777
	sw		x7, 40(x18)	# 777
	fsw		f0, 36(x18)	# 777
	fsw		f1, 32(x18)	# 777
	fsw		f2, 28(x18)	# 777
	fsw		f3, 24(x18)	# 777
	sw		x11, 20(x18)	# 777
	sw		x12, 16(x18)	# 777
	sw		x13, 12(x18)	# 777
	sw		x14, 8(x18)	# 777
	fsw		f4, 4(x18)	# 777
	addi	x19, x3, 0	# 777
	addi	x3, x3, 36	# 777
	lui		x20, %hi(read_nth_object.2670)	# 777
	ori		x20, x0, %lo(read_nth_object.2670)	# 777
	sw		x20, 0(x19)	# 860
	sw		x18, 32(x19)	# 860
	lw		x18, -68(x2)	# 860
	sw		x18, 28(x19)	# 860
	sw		x12, 24(x19)	# 860
	lw		x20, -100(x2)	# 860
	sw		x20, 20(x19)	# 860
	lw		x21, -72(x2)	# 860
	sw		x21, 16(x19)	# 860
	sw		x13, 12(x19)	# 860
	sw		x14, 8(x19)	# 860
	fsw		f4, 4(x19)	# 860
	addi	x22, x3, 0	# 860
	addi	x3, x3, 24	# 860
	lui		x23, %hi(read_object.2672)	# 860
	ori		x23, x0, %lo(read_object.2672)	# 860
	sw		x23, 0(x22)	# 876
	sw		x19, 20(x22)	# 876
	lw		x23, -52(x2)	# 876
	sw		x23, 16(x22)	# 876
	lw		x24, -64(x2)	# 876
	sw		x24, 12(x22)	# 876
	sw		x13, 8(x22)	# 876
	sw		x14, 4(x22)	# 876
	addi	x24, x3, 0	# 876
	addi	x3, x3, 12	# 876
	lui		x25, %hi(read_net_item.2676)	# 876
	ori		x25, x0, %lo(read_net_item.2676)	# 876
	sw		x25, 0(x24)	# 884
	sw		x20, 8(x24)	# 884
	sw		x14, 4(x24)	# 884
	addi	x25, x3, 0	# 884
	addi	x3, x3, 20	# 884
	lui		x26, %hi(read_or_network.2678)	# 884
	ori		x26, x0, %lo(read_or_network.2678)	# 884
	sw		x26, 0(x25)	# 893
	sw		x24, 16(x25)	# 893
	sw		x20, 12(x25)	# 893
	sw		x13, 8(x25)	# 893
	sw		x14, 4(x25)	# 893
	addi	x26, x3, 0	# 893
	addi	x3, x3, 24	# 893
	lui		x27, %hi(read_and_network.2680)	# 893
	ori		x27, x0, %lo(read_and_network.2680)	# 893
	sw		x27, 0(x26)	# 927
	sw		x24, 20(x26)	# 927
	lw		x27, -112(x2)	# 927
	sw		x27, 16(x26)	# 927
	sw		x20, 12(x26)	# 927
	sw		x13, 8(x26)	# 927
	sw		x14, 4(x26)	# 927
	addi	x31, x3, 0	# 927
	addi	x3, x3, 16	# 927
	sw		x26, -244(x2)	# 927
	lui		x26, %hi(solver_rect_surface.2684)	# 927
	ori		x26, x0, %lo(solver_rect_surface.2684)	# 927
	sw		x26, 0(x31)	# 965
	lw		x26, -120(x2)	# 965
	sw		x26, 12(x31)	# 965
	sw		x13, 8(x31)	# 965
	fsw		f4, 4(x31)	# 965
	sw		x15, -248(x2)	# 965
	addi	x15, x3, 0	# 965
	addi	x3, x3, 16	# 965
	sw		x24, -252(x2)	# 965
	lui		x24, %hi(quadratic.2705)	# 965
	ori		x24, x0, %lo(quadratic.2705)	# 965
	sw		x24, 0(x15)	# 980
	sw		x12, 12(x15)	# 980
	sw		x13, 8(x15)	# 980
	sw		x14, 4(x15)	# 980
	addi	x24, x3, 0	# 980
	addi	x3, x3, 16	# 980
	sw		x19, -256(x2)	# 980
	lui		x19, %hi(bilinear.2710)	# 980
	ori		x19, x0, %lo(bilinear.2710)	# 980
	sw		x19, 0(x24)	# 1002
	sw		x12, 12(x24)	# 1002
	sw		x13, 8(x24)	# 1002
	sw		x14, 4(x24)	# 1002
	addi	x19, x3, 0	# 1002
	addi	x3, x3, 36	# 1002
	sw		x22, -260(x2)	# 1002
	lui		x22, %hi(solver_second.2718)	# 1002
	ori		x22, x0, %lo(solver_second.2718)	# 1002
	sw		x22, 0(x19)	# 1031
	sw		x26, 32(x19)	# 1031
	sw		x15, 28(x19)	# 1031
	sw		x24, 24(x19)	# 1031
	sw		x12, 20(x19)	# 1031
	sw		x21, 16(x19)	# 1031
	sw		x13, 12(x19)	# 1031
	sw		x14, 8(x19)	# 1031
	fsw		f4, 4(x19)	# 1031
	addi	x22, x3, 0	# 1031
	addi	x3, x3, 36	# 1031
	lui		x24, %hi(solver.2724)	# 1031
	ori		x24, x0, %lo(solver.2724)	# 1031
	sw		x24, 0(x22)	# 1063
	sw		x19, 32(x22)	# 1063
	sw		x31, 28(x22)	# 1063
	sw		x26, 24(x22)	# 1063
	sw		x18, 20(x22)	# 1063
	sw		x12, 16(x22)	# 1063
	sw		x13, 12(x22)	# 1063
	sw		x14, 8(x22)	# 1063
	fsw		f4, 4(x22)	# 1063
	addi	x24, x3, 0	# 1063
	addi	x3, x3, 32	# 1063
	sw		x25, -264(x2)	# 1063
	lui		x25, %hi(solver_rect_fast.2728)	# 1063
	ori		x25, x0, %lo(solver_rect_fast.2728)	# 1063
	sw		x25, 0(x24)	# 1105
	sw		x26, 28(x24)	# 1105
	lw		x25, -212(x2)	# 1105
	sw		x25, 24(x24)	# 1105
	sw		x12, 20(x24)	# 1105
	sw		x21, 16(x24)	# 1105
	sw		x13, 12(x24)	# 1105
	sw		x14, 8(x24)	# 1105
	fsw		f4, 4(x24)	# 1105
	sw		x5, -268(x2)	# 1105
	addi	x5, x3, 0	# 1105
	addi	x3, x3, 32	# 1105
	lui		x9, %hi(solver_second_fast.2741)	# 1105
	ori		x9, x0, %lo(solver_second_fast.2741)	# 1105
	sw		x9, 0(x5)	# 1153
	sw		x26, 28(x5)	# 1153
	sw		x15, 24(x5)	# 1153
	sw		x12, 20(x5)	# 1153
	sw		x21, 16(x5)	# 1153
	sw		x13, 12(x5)	# 1153
	sw		x14, 8(x5)	# 1153
	fsw		f4, 4(x5)	# 1153
	addi	x9, x3, 0	# 1153
	addi	x3, x3, 28	# 1153
	lui		x8, %hi(solver_second_fast2.2758)	# 1153
	ori		x8, x0, %lo(solver_second_fast2.2758)	# 1153
	sw		x8, 0(x9)	# 1194
	sw		x26, 24(x9)	# 1194
	sw		x12, 20(x9)	# 1194
	sw		x21, 16(x9)	# 1194
	sw		x13, 12(x9)	# 1194
	sw		x14, 8(x9)	# 1194
	fsw		f4, 4(x9)	# 1194
	addi	x8, x3, 0	# 1194
	addi	x3, x3, 20	# 1194
	lui		x10, %hi(setup_rect_table.2768)	# 1194
	ori		x10, x0, %lo(setup_rect_table.2768)	# 1194
	sw		x10, 0(x8)	# 1221
	sw		x12, 16(x8)	# 1221
	sw		x13, 12(x8)	# 1221
	sw		x14, 8(x8)	# 1221
	fsw		f4, 4(x8)	# 1221
	addi	x10, x3, 0	# 1221
	addi	x3, x3, 20	# 1221
	lui		x6, %hi(setup_surface_table.2771)	# 1221
	ori		x6, x0, %lo(setup_surface_table.2771)	# 1221
	sw		x6, 0(x10)	# 1240
	sw		x12, 16(x10)	# 1240
	sw		x13, 12(x10)	# 1240
	sw		x14, 8(x10)	# 1240
	fsw		f4, 4(x10)	# 1240
	addi	x6, x3, 0	# 1240
	addi	x3, x3, 28	# 1240
	lui		x17, %hi(setup_second_table.2774)	# 1240
	ori		x17, x0, %lo(setup_second_table.2774)	# 1240
	sw		x17, 0(x6)	# 1269
	sw		x15, 24(x6)	# 1269
	sw		x25, 20(x6)	# 1269
	sw		x12, 16(x6)	# 1269
	sw		x13, 12(x6)	# 1269
	sw		x14, 8(x6)	# 1269
	fsw		f4, 4(x6)	# 1269
	addi	x17, x3, 0	# 1269
	addi	x3, x3, 28	# 1269
	lui		x25, %hi(iter_setup_dirvec_constants.2777)	# 1269
	ori		x25, x0, %lo(iter_setup_dirvec_constants.2777)	# 1269
	sw		x25, 0(x17)	# 1294
	sw		x10, 24(x17)	# 1294
	sw		x6, 20(x17)	# 1294
	sw		x8, 16(x17)	# 1294
	sw		x18, 12(x17)	# 1294
	sw		x13, 8(x17)	# 1294
	sw		x14, 4(x17)	# 1294
	addi	x25, x3, 0	# 1294
	addi	x3, x3, 24	# 1294
	sw		x17, -272(x2)	# 1294
	lui		x17, %hi(setup_startp_constants.2782)	# 1294
	ori		x17, x0, %lo(setup_startp_constants.2782)	# 1294
	sw		x17, 0(x25)	# 1349
	sw		x15, 20(x25)	# 1349
	sw		x18, 16(x25)	# 1349
	sw		x12, 12(x25)	# 1349
	sw		x13, 8(x25)	# 1349
	sw		x14, 4(x25)	# 1349
	addi	x17, x3, 0	# 1349
	addi	x3, x3, 28	# 1349
	sw		x8, -276(x2)	# 1349
	lui		x8, %hi(is_outside.2802)	# 1349
	ori		x8, x0, %lo(is_outside.2802)	# 1349
	sw		x8, 0(x17)	# 1363
	sw		x15, 24(x17)	# 1363
	sw		x12, 20(x17)	# 1363
	sw		x21, 16(x17)	# 1363
	sw		x13, 12(x17)	# 1363
	sw		x14, 8(x17)	# 1363
	fsw		f4, 4(x17)	# 1363
	addi	x8, x3, 0	# 1363
	addi	x3, x3, 40	# 1363
	sw		x6, -280(x2)	# 1363
	lui		x6, %hi(check_all_inside.2807)	# 1363
	ori		x6, x0, %lo(check_all_inside.2807)	# 1363
	sw		x6, 0(x8)	# 1383
	sw		x15, 36(x8)	# 1383
	sw		x18, 32(x8)	# 1383
	sw		x17, 28(x8)	# 1383
	sw		x12, 24(x8)	# 1383
	sw		x20, 20(x8)	# 1383
	sw		x21, 16(x8)	# 1383
	sw		x13, 12(x8)	# 1383
	sw		x14, 8(x8)	# 1383
	fsw		f4, 4(x8)	# 1383
	addi	x6, x3, 0	# 1383
	addi	x3, x3, 72	# 1383
	sw		x10, -284(x2)	# 1383
	lui		x10, %hi(shadow_check_and_group.2813)	# 1383
	ori		x10, x0, %lo(shadow_check_and_group.2813)	# 1383
	sw		x10, 0(x6)	# 1413
	lw		x10, -224(x2)	# 1413
	sw		x10, 68(x6)	# 1413
	sw		x5, 64(x6)	# 1413
	sw		x24, 60(x6)	# 1413
	sw		x26, 56(x6)	# 1413
	sw		x15, 52(x6)	# 1413
	sw		x18, 48(x6)	# 1413
	sw		x16, 44(x6)	# 1413
	sw		x17, 40(x6)	# 1413
	lw		x16, -144(x2)	# 1413
	sw		x16, 36(x6)	# 1413
	lw		x23, -232(x2)	# 1413
	sw		x23, 32(x6)	# 1413
	sw		x8, 28(x6)	# 1413
	sw		x12, 24(x6)	# 1413
	sw		x20, 20(x6)	# 1413
	sw		x21, 16(x6)	# 1413
	sw		x13, 12(x6)	# 1413
	sw		x14, 8(x6)	# 1413
	fsw		f4, 4(x6)	# 1413
	sw		x4, -288(x2)	# 1413
	addi	x4, x3, 0	# 1413
	addi	x3, x3, 24	# 1413
	sw		x25, -292(x2)	# 1413
	lui		x25, %hi(shadow_check_one_or_group.2816)	# 1413
	ori		x25, x0, %lo(shadow_check_one_or_group.2816)	# 1413
	sw		x25, 0(x4)	# 1428
	sw		x6, 20(x4)	# 1428
	sw		x27, 16(x4)	# 1428
	sw		x20, 12(x4)	# 1428
	sw		x13, 8(x4)	# 1428
	sw		x14, 4(x4)	# 1428
	addi	x25, x3, 0	# 1428
	addi	x3, x3, 68	# 1428
	lui		x11, %hi(shadow_check_one_or_matrix.2819)	# 1428
	ori		x11, x0, %lo(shadow_check_one_or_matrix.2819)	# 1428
	sw		x11, 0(x25)	# 1464
	sw		x10, 64(x25)	# 1464
	sw		x5, 60(x25)	# 1464
	sw		x24, 56(x25)	# 1464
	sw		x26, 52(x25)	# 1464
	sw		x4, 48(x25)	# 1464
	sw		x6, 44(x25)	# 1464
	sw		x18, 40(x25)	# 1464
	sw		x16, 36(x25)	# 1464
	sw		x23, 32(x25)	# 1464
	sw		x27, 28(x25)	# 1464
	sw		x12, 24(x25)	# 1464
	sw		x20, 20(x25)	# 1464
	sw		x21, 16(x25)	# 1464
	sw		x13, 12(x25)	# 1464
	sw		x14, 8(x25)	# 1464
	fsw		f4, 4(x25)	# 1464
	addi	x4, x3, 0	# 1464
	addi	x3, x3, 76	# 1464
	lui		x5, %hi(solve_each_element.2822)	# 1464
	ori		x5, x0, %lo(solve_each_element.2822)	# 1464
	sw		x5, 0(x4)	# 1505
	lw		x5, -140(x2)	# 1505
	sw		x5, 72(x4)	# 1505
	lw		x6, -184(x2)	# 1505
	sw		x6, 68(x4)	# 1505
	sw		x19, 64(x4)	# 1505
	sw		x31, 60(x4)	# 1505
	sw		x26, 56(x4)	# 1505
	sw		x15, 52(x4)	# 1505
	sw		x18, 48(x4)	# 1505
	sw		x17, 44(x4)	# 1505
	lw		x11, -136(x2)	# 1505
	sw		x11, 40(x4)	# 1505
	sw		x16, 36(x4)	# 1505
	lw		x23, -148(x2)	# 1505
	sw		x23, 32(x4)	# 1505
	sw		x8, 28(x4)	# 1505
	sw		x12, 24(x4)	# 1505
	sw		x20, 20(x4)	# 1505
	sw		x21, 16(x4)	# 1505
	sw		x13, 12(x4)	# 1505
	sw		x14, 8(x4)	# 1505
	fsw		f4, 4(x4)	# 1505
	addi	x10, x3, 0	# 1505
	addi	x3, x3, 24	# 1505
	sw		x25, -296(x2)	# 1505
	lui		x25, %hi(solve_one_or_network.2826)	# 1505
	ori		x25, x0, %lo(solve_one_or_network.2826)	# 1505
	sw		x25, 0(x10)	# 1515
	sw		x4, 20(x10)	# 1515
	sw		x27, 16(x10)	# 1515
	sw		x20, 12(x10)	# 1515
	sw		x13, 8(x10)	# 1515
	sw		x14, 4(x10)	# 1515
	addi	x25, x3, 0	# 1515
	addi	x3, x3, 64	# 1515
	lui		x7, %hi(trace_or_matrix.2830)	# 1515
	ori		x7, x0, %lo(trace_or_matrix.2830)	# 1515
	sw		x7, 0(x25)	# 1557
	sw		x5, 60(x25)	# 1557
	sw		x6, 56(x25)	# 1557
	sw		x19, 52(x25)	# 1557
	sw		x31, 48(x25)	# 1557
	sw		x26, 44(x25)	# 1557
	sw		x22, 40(x25)	# 1557
	sw		x10, 36(x25)	# 1557
	sw		x4, 32(x25)	# 1557
	sw		x18, 28(x25)	# 1557
	sw		x27, 24(x25)	# 1557
	sw		x12, 20(x25)	# 1557
	sw		x20, 16(x25)	# 1557
	sw		x13, 12(x25)	# 1557
	sw		x14, 8(x25)	# 1557
	fsw		f4, 4(x25)	# 1557
	addi	x4, x3, 0	# 1557
	addi	x3, x3, 76	# 1557
	lui		x7, %hi(solve_each_element_fast.2836)	# 1557
	ori		x7, x0, %lo(solve_each_element_fast.2836)	# 1557
	sw		x7, 0(x4)	# 1598
	sw		x5, 72(x4)	# 1598
	lw		x7, -188(x2)	# 1598
	sw		x7, 68(x4)	# 1598
	sw		x9, 64(x4)	# 1598
	sw		x24, 60(x4)	# 1598
	sw		x26, 56(x4)	# 1598
	sw		x15, 52(x4)	# 1598
	sw		x18, 48(x4)	# 1598
	sw		x17, 44(x4)	# 1598
	sw		x11, 40(x4)	# 1598
	sw		x16, 36(x4)	# 1598
	sw		x23, 32(x4)	# 1598
	sw		x8, 28(x4)	# 1598
	sw		x12, 24(x4)	# 1598
	sw		x20, 20(x4)	# 1598
	sw		x21, 16(x4)	# 1598
	sw		x13, 12(x4)	# 1598
	sw		x14, 8(x4)	# 1598
	fsw		f4, 4(x4)	# 1598
	addi	x8, x3, 0	# 1598
	addi	x3, x3, 24	# 1598
	lui		x10, %hi(solve_one_or_network_fast.2840)	# 1598
	ori		x10, x0, %lo(solve_one_or_network_fast.2840)	# 1598
	sw		x10, 0(x8)	# 1608
	sw		x4, 20(x8)	# 1608
	sw		x27, 16(x8)	# 1608
	sw		x20, 12(x8)	# 1608
	sw		x13, 8(x8)	# 1608
	sw		x14, 4(x8)	# 1608
	addi	x10, x3, 0	# 1608
	addi	x3, x3, 60	# 1608
	lui		x15, %hi(trace_or_matrix_fast.2844)	# 1608
	ori		x15, x0, %lo(trace_or_matrix_fast.2844)	# 1608
	sw		x15, 0(x10)	# 1632
	sw		x5, 56(x10)	# 1632
	sw		x9, 52(x10)	# 1632
	sw		x24, 48(x10)	# 1632
	sw		x26, 44(x10)	# 1632
	sw		x8, 40(x10)	# 1632
	sw		x4, 36(x10)	# 1632
	sw		x18, 32(x10)	# 1632
	sw		x27, 28(x10)	# 1632
	sw		x12, 24(x10)	# 1632
	sw		x20, 20(x10)	# 1632
	sw		x21, 16(x10)	# 1632
	sw		x13, 12(x10)	# 1632
	sw		x14, 8(x10)	# 1632
	fsw		f4, 4(x10)	# 1632
	addi	x15, x3, 0	# 1632
	addi	x3, x3, 68	# 1632
	lui		x17, %hi(judge_intersection_fast.2848)	# 1632
	ori		x17, x0, %lo(judge_intersection_fast.2848)	# 1632
	sw		x17, 0(x15)	# 1669
	sw		x10, 64(x15)	# 1669
	sw		x5, 60(x15)	# 1669
	sw		x9, 56(x15)	# 1669
	sw		x24, 52(x15)	# 1669
	sw		x26, 48(x15)	# 1669
	sw		x8, 44(x15)	# 1669
	sw		x4, 40(x15)	# 1669
	lw		x4, -116(x2)	# 1669
	sw		x4, 36(x15)	# 1669
	sw		x18, 32(x15)	# 1669
	sw		x27, 28(x15)	# 1669
	sw		x12, 24(x15)	# 1669
	sw		x20, 20(x15)	# 1669
	sw		x21, 16(x15)	# 1669
	sw		x13, 12(x15)	# 1669
	sw		x14, 8(x15)	# 1669
	flw		f5, -128(x2)	# 1669
	fsw		f5, 4(x15)	# 1669
	addi	x8, x3, 0	# 1669
	addi	x3, x3, 28	# 1669
	lui		x9, %hi(get_nvector_second.2854)	# 1669
	ori		x9, x0, %lo(get_nvector_second.2854)	# 1669
	sw		x9, 0(x8)	# 1707
	lw		x9, -152(x2)	# 1707
	sw		x9, 24(x8)	# 1707
	sw		x16, 20(x8)	# 1707
	sw		x12, 16(x8)	# 1707
	sw		x13, 12(x8)	# 1707
	sw		x14, 8(x8)	# 1707
	fsw		f4, 4(x8)	# 1707
	addi	x17, x3, 0	# 1707
	addi	x3, x3, 60	# 1707
	lui		x19, %hi(utexture.2859)	# 1707
	ori		x19, x0, %lo(utexture.2859)	# 1707
	sw		x19, 0(x17)	# 1802
	lw		x19, -156(x2)	# 1802
	sw		x19, 56(x17)	# 1802
	lw		x22, -40(x2)	# 1802
	sw		x22, 52(x17)	# 1802
	fsw		f0, 48(x17)	# 1802
	fsw		f1, 44(x17)	# 1802
	fsw		f2, 40(x17)	# 1802
	fsw		f3, 36(x17)	# 1802
	lw		x24, -4(x2)	# 1802
	sw		x24, 32(x17)	# 1802
	lw		x26, 0(x2)	# 1802
	sw		x26, 28(x17)	# 1802
	sw		x12, 24(x17)	# 1802
	sw		x21, 20(x17)	# 1802
	sw		x13, 16(x17)	# 1802
	sw		x14, 12(x17)	# 1802
	flw		f6, -88(x2)	# 1802
	fsw		f6, 8(x17)	# 1802
	fsw		f4, 4(x17)	# 1802
	addi	x31, x3, 0	# 1802
	addi	x3, x3, 60	# 1802
	lui		x27, %hi(trace_reflections.2866)	# 1802
	ori		x27, x0, %lo(trace_reflections.2866)	# 1802
	sw		x27, 0(x31)	# 1831
	sw		x10, 56(x31)	# 1831
	sw		x5, 52(x31)	# 1831
	sw		x19, 48(x31)	# 1831
	lw		x27, -296(x2)	# 1831
	sw		x27, 44(x31)	# 1831
	lw		x26, -164(x2)	# 1831
	sw		x26, 40(x31)	# 1831
	lw		x24, -240(x2)	# 1831
	sw		x24, 36(x31)	# 1831
	sw		x4, 32(x31)	# 1831
	sw		x9, 28(x31)	# 1831
	sw		x11, 24(x31)	# 1831
	sw		x23, 20(x31)	# 1831
	sw		x12, 16(x31)	# 1831
	sw		x13, 12(x31)	# 1831
	sw		x14, 8(x31)	# 1831
	fsw		f5, 4(x31)	# 1831
	addi	x24, x3, 0	# 1831
	addi	x3, x3, 112	# 1831
	lui		x22, %hi(trace_ray.2871)	# 1831
	ori		x22, x0, %lo(trace_ray.2871)	# 1831
	sw		x22, 0(x24)	# 1924
	sw		x17, 108(x24)	# 1924
	sw		x31, 104(x24)	# 1924
	sw		x25, 100(x24)	# 1924
	sw		x5, 96(x24)	# 1924
	sw		x19, 92(x24)	# 1924
	sw		x7, 88(x24)	# 1924
	sw		x6, 84(x24)	# 1924
	sw		x27, 80(x24)	# 1924
	lw		x22, -292(x2)	# 1924
	sw		x22, 76(x24)	# 1924
	sw		x26, 72(x24)	# 1924
	sw		x4, 68(x24)	# 1924
	sw		x18, 64(x24)	# 1924
	sw		x9, 60(x24)	# 1924
	lw		x25, -288(x2)	# 1924
	sw		x25, 56(x24)	# 1924
	lw		x31, -52(x2)	# 1924
	sw		x31, 52(x24)	# 1924
	lw		x25, -96(x2)	# 1924
	sw		x25, 48(x24)	# 1924
	sw		x11, 44(x24)	# 1924
	sw		x16, 40(x24)	# 1924
	sw		x23, 36(x24)	# 1924
	sw		x8, 32(x24)	# 1924
	lw		x6, -104(x2)	# 1924
	sw		x6, 28(x24)	# 1924
	sw		x12, 24(x24)	# 1924
	sw		x20, 20(x24)	# 1924
	sw		x13, 16(x24)	# 1924
	sw		x14, 12(x24)	# 1924
	fsw		f5, 8(x24)	# 1924
	fsw		f4, 4(x24)	# 1924
	addi	x6, x3, 0	# 1924
	addi	x3, x3, 80	# 1924
	lui		x20, %hi(trace_diffuse_ray.2877)	# 1924
	ori		x20, x0, %lo(trace_diffuse_ray.2877)	# 1924
	sw		x20, 0(x6)	# 1943
	sw		x17, 76(x6)	# 1943
	sw		x10, 72(x6)	# 1943
	sw		x5, 68(x6)	# 1943
	sw		x19, 64(x6)	# 1943
	sw		x27, 60(x6)	# 1943
	sw		x4, 56(x6)	# 1943
	sw		x18, 52(x6)	# 1943
	sw		x9, 48(x6)	# 1943
	sw		x25, 44(x6)	# 1943
	sw		x11, 40(x6)	# 1943
	sw		x16, 36(x6)	# 1943
	sw		x23, 32(x6)	# 1943
	sw		x8, 28(x6)	# 1943
	lw		x5, -160(x2)	# 1943
	sw		x5, 24(x6)	# 1943
	sw		x12, 20(x6)	# 1943
	sw		x13, 16(x6)	# 1943
	sw		x14, 12(x6)	# 1943
	fsw		f5, 8(x6)	# 1943
	fsw		f4, 4(x6)	# 1943
	addi	x10, x3, 0	# 1943
	addi	x3, x3, 76	# 1943
	lui		x20, %hi(iter_trace_diffuse_rays.2880)	# 1943
	ori		x20, x0, %lo(iter_trace_diffuse_rays.2880)	# 1943
	sw		x20, 0(x10)	# 1969
	sw		x17, 72(x10)	# 1969
	sw		x6, 68(x10)	# 1969
	sw		x19, 64(x10)	# 1969
	sw		x27, 60(x10)	# 1969
	sw		x4, 56(x10)	# 1969
	sw		x18, 52(x10)	# 1969
	sw		x9, 48(x10)	# 1969
	sw		x25, 44(x10)	# 1969
	sw		x15, 40(x10)	# 1969
	sw		x11, 36(x10)	# 1969
	sw		x16, 32(x10)	# 1969
	sw		x23, 28(x10)	# 1969
	sw		x8, 24(x10)	# 1969
	sw		x5, 20(x10)	# 1969
	sw		x12, 16(x10)	# 1969
	sw		x13, 12(x10)	# 1969
	sw		x14, 8(x10)	# 1969
	fsw		f4, 4(x10)	# 1969
	addi	x8, x3, 0	# 1969
	addi	x3, x3, 40	# 1969
	lui		x9, %hi(trace_diffuse_ray_80percent.2889)	# 1969
	ori		x9, x0, %lo(trace_diffuse_ray_80percent.2889)	# 1969
	sw		x9, 0(x8)	# 1995
	sw		x7, 36(x8)	# 1995
	sw		x22, 32(x8)	# 1995
	sw		x31, 28(x8)	# 1995
	sw		x10, 24(x8)	# 1995
	lw		x9, -216(x2)	# 1995
	sw		x9, 20(x8)	# 1995
	sw		x12, 16(x8)	# 1995
	sw		x21, 12(x8)	# 1995
	sw		x13, 8(x8)	# 1995
	sw		x14, 4(x8)	# 1995
	addi	x11, x3, 0	# 1995
	addi	x3, x3, 52	# 1995
	lui		x15, %hi(calc_diffuse_using_1point.2893)	# 1995
	ori		x15, x0, %lo(calc_diffuse_using_1point.2893)	# 1995
	sw		x15, 0(x11)	# 2014
	sw		x6, 48(x11)	# 2014
	sw		x7, 44(x11)	# 2014
	sw		x22, 40(x11)	# 2014
	sw		x26, 36(x11)	# 2014
	sw		x31, 32(x11)	# 2014
	sw		x10, 28(x11)	# 2014
	sw		x9, 24(x11)	# 2014
	sw		x5, 20(x11)	# 2014
	sw		x12, 16(x11)	# 2014
	sw		x21, 12(x11)	# 2014
	sw		x13, 8(x11)	# 2014
	sw		x14, 4(x11)	# 2014
	addi	x15, x3, 0	# 2014
	addi	x3, x3, 24	# 2014
	lui		x16, %hi(calc_diffuse_using_5points.2896)	# 2014
	ori		x16, x0, %lo(calc_diffuse_using_5points.2896)	# 2014
	sw		x16, 0(x15)	# 2034
	sw		x26, 20(x15)	# 2034
	sw		x5, 16(x15)	# 2034
	sw		x12, 12(x15)	# 2034
	sw		x13, 8(x15)	# 2034
	sw		x14, 4(x15)	# 2034
	addi	x16, x3, 0	# 2034
	addi	x3, x3, 32	# 2034
	lui		x17, %hi(do_without_neighbors.2902)	# 2034
	ori		x17, x0, %lo(do_without_neighbors.2902)	# 2034
	sw		x17, 0(x16)	# 2086
	sw		x8, 28(x16)	# 2086
	sw		x26, 24(x16)	# 2086
	sw		x5, 20(x16)	# 2086
	sw		x11, 16(x16)	# 2086
	sw		x12, 12(x16)	# 2086
	sw		x13, 8(x16)	# 2086
	sw		x14, 4(x16)	# 2086
	addi	x8, x3, 0	# 2086
	addi	x3, x3, 24	# 2086
	lui		x17, %hi(try_exploit_neighbors.2918)	# 2086
	ori		x17, x0, %lo(try_exploit_neighbors.2918)	# 2086
	sw		x17, 0(x8)	# 2139
	sw		x16, 20(x8)	# 2139
	sw		x15, 16(x8)	# 2139
	sw		x11, 12(x8)	# 2139
	sw		x13, 8(x8)	# 2139
	sw		x14, 4(x8)	# 2139
	addi	x17, x3, 0	# 2139
	addi	x3, x3, 24	# 2139
	lui		x19, %hi(write_rgb.2931)	# 2139
	ori		x19, x0, %lo(write_rgb.2931)	# 2139
	sw		x19, 0(x17)	# 2162
	sw		x26, 20(x17)	# 2162
	sw		x12, 16(x17)	# 2162
	sw		x21, 12(x17)	# 2162
	sw		x13, 8(x17)	# 2162
	sw		x14, 4(x17)	# 2162
	addi	x19, x3, 0	# 2162
	addi	x3, x3, 48	# 2162
	lui		x20, %hi(pretrace_diffuse_rays.2933)	# 2162
	ori		x20, x0, %lo(pretrace_diffuse_rays.2933)	# 2162
	sw		x20, 0(x19)	# 2192
	sw		x6, 44(x19)	# 2192
	sw		x7, 40(x19)	# 2192
	sw		x22, 36(x19)	# 2192
	sw		x31, 32(x19)	# 2192
	sw		x10, 28(x19)	# 2192
	sw		x9, 24(x19)	# 2192
	sw		x5, 20(x19)	# 2192
	sw		x12, 16(x19)	# 2192
	sw		x13, 12(x19)	# 2192
	sw		x14, 8(x19)	# 2192
	fsw		f4, 4(x19)	# 2192
	addi	x20, x3, 0	# 2192
	addi	x3, x3, 88	# 2192
	lui		x23, %hi(pretrace_pixels.2936)	# 2192
	ori		x23, x0, %lo(pretrace_pixels.2936)	# 2192
	sw		x23, 0(x20)	# 2217
	lw		x23, -80(x2)	# 2217
	sw		x23, 84(x20)	# 2217
	sw		x24, 80(x20)	# 2217
	sw		x6, 76(x20)	# 2217
	sw		x7, 72(x20)	# 2217
	lw		x6, -184(x2)	# 2217
	sw		x6, 68(x20)	# 2217
	sw		x22, 64(x20)	# 2217
	lw		x6, -192(x2)	# 2217
	sw		x6, 60(x20)	# 2217
	lw		x6, -180(x2)	# 2217
	sw		x6, 56(x20)	# 2217
	sw		x26, 52(x20)	# 2217
	lw		x7, -204(x2)	# 2217
	sw		x7, 48(x20)	# 2217
	sw		x19, 44(x20)	# 2217
	sw		x31, 40(x20)	# 2217
	sw		x10, 36(x20)	# 2217
	lw		x7, -176(x2)	# 2217
	sw		x7, 32(x20)	# 2217
	sw		x9, 28(x20)	# 2217
	sw		x5, 24(x20)	# 2217
	lw		x5, -212(x2)	# 2217
	sw		x5, 20(x20)	# 2217
	sw		x12, 16(x20)	# 2217
	sw		x13, 12(x20)	# 2217
	sw		x14, 8(x20)	# 2217
	fsw		f4, 4(x20)	# 2217
	addi	x10, x3, 0	# 2217
	addi	x3, x3, 40	# 2217
	lui		x19, %hi(pretrace_line.2943)	# 2217
	ori		x19, x0, %lo(pretrace_line.2943)	# 2217
	sw		x19, 0(x10)	# 2233
	lw		x19, -200(x2)	# 2233
	sw		x19, 36(x10)	# 2233
	lw		x19, -196(x2)	# 2233
	sw		x19, 32(x10)	# 2233
	sw		x6, 28(x10)	# 2233
	sw		x20, 24(x10)	# 2233
	lw		x19, -172(x2)	# 2233
	sw		x19, 20(x10)	# 2233
	sw		x7, 16(x10)	# 2233
	sw		x12, 12(x10)	# 2233
	sw		x13, 8(x10)	# 2233
	sw		x14, 4(x10)	# 2233
	addi	x20, x3, 0	# 2233
	addi	x3, x3, 48	# 2233
	lui		x22, %hi(scan_pixel.2947)	# 2233
	ori		x22, x0, %lo(scan_pixel.2947)	# 2233
	sw		x22, 0(x20)	# 2253
	sw		x17, 44(x20)	# 2253
	sw		x8, 40(x20)	# 2253
	sw		x26, 36(x20)	# 2253
	sw		x19, 32(x20)	# 2253
	sw		x16, 28(x20)	# 2253
	sw		x15, 24(x20)	# 2253
	sw		x11, 20(x20)	# 2253
	sw		x12, 16(x20)	# 2253
	sw		x21, 12(x20)	# 2253
	sw		x13, 8(x20)	# 2253
	sw		x14, 4(x20)	# 2253
	addi	x11, x3, 0	# 2253
	addi	x3, x3, 48	# 2253
	lui		x15, %hi(scan_line.2954)	# 2253
	ori		x15, x0, %lo(scan_line.2954)	# 2253
	sw		x15, 0(x11)	# 2296
	sw		x17, 44(x11)	# 2296
	sw		x8, 40(x11)	# 2296
	sw		x20, 36(x11)	# 2296
	sw		x26, 32(x11)	# 2296
	sw		x10, 28(x11)	# 2296
	sw		x19, 24(x11)	# 2296
	sw		x16, 20(x11)	# 2296
	sw		x5, 16(x11)	# 2296
	sw		x12, 12(x11)	# 2296
	sw		x13, 8(x11)	# 2296
	sw		x14, 4(x11)	# 2296
	addi	x8, x3, 0	# 2296
	addi	x3, x3, 28	# 2296
	lui		x15, %hi(init_line_elements.2965)	# 2296
	ori		x15, x0, %lo(init_line_elements.2965)	# 2296
	sw		x15, 0(x8)	# 2333
	sw		x5, 24(x8)	# 2333
	sw		x12, 20(x8)	# 2333
	sw		x21, 16(x8)	# 2333
	sw		x13, 12(x8)	# 2333
	sw		x14, 8(x8)	# 2333
	fsw		f4, 4(x8)	# 2333
	addi	x15, x3, 0	# 2333
	addi	x3, x3, 56	# 2333
	lui		x16, %hi(calc_dirvec.2975)	# 2333
	ori		x16, x0, %lo(calc_dirvec.2975)	# 2333
	sw		x16, 0(x15)	# 2354
	lw		x16, -40(x2)	# 2354
	sw		x16, 52(x15)	# 2354
	fsw		f0, 48(x15)	# 2354
	fsw		f1, 44(x15)	# 2354
	fsw		f2, 40(x15)	# 2354
	fsw		f3, 36(x15)	# 2354
	sw		x9, 32(x15)	# 2354
	lw		x16, -4(x2)	# 2354
	sw		x16, 28(x15)	# 2354
	lw		x16, 0(x2)	# 2354
	sw		x16, 24(x15)	# 2354
	sw		x5, 20(x15)	# 2354
	sw		x12, 16(x15)	# 2354
	sw		x13, 12(x15)	# 2354
	sw		x14, 8(x15)	# 2354
	fsw		f4, 4(x15)	# 2354
	addi	x16, x3, 0	# 2354
	addi	x3, x3, 28	# 2354
	lui		x17, %hi(calc_dirvecs.2983)	# 2354
	ori		x17, x0, %lo(calc_dirvecs.2983)	# 2354
	sw		x17, 0(x16)	# 2368
	sw		x15, 24(x16)	# 2368
	sw		x5, 20(x16)	# 2368
	sw		x12, 16(x16)	# 2368
	sw		x13, 12(x16)	# 2368
	sw		x14, 8(x16)	# 2368
	fsw		f4, 4(x16)	# 2368
	addi	x15, x3, 0	# 2368
	addi	x3, x3, 24	# 2368
	lui		x17, %hi(calc_dirvec_rows.2988)	# 2368
	ori		x17, x0, %lo(calc_dirvec_rows.2988)	# 2368
	sw		x17, 0(x15)	# 2387
	sw		x16, 20(x15)	# 2387
	sw		x5, 16(x15)	# 2387
	sw		x12, 12(x15)	# 2387
	sw		x13, 8(x15)	# 2387
	sw		x14, 4(x15)	# 2387
	addi	x16, x3, 0	# 2387
	addi	x3, x3, 24	# 2387
	lui		x17, %hi(create_dirvec_elements.2994)	# 2387
	ori		x17, x0, %lo(create_dirvec_elements.2994)	# 2387
	sw		x17, 0(x16)	# 2394
	sw		x31, 20(x16)	# 2394
	sw		x21, 16(x16)	# 2394
	sw		x13, 12(x16)	# 2394
	sw		x14, 8(x16)	# 2394
	fsw		f4, 4(x16)	# 2394
	addi	x17, x3, 0	# 2394
	addi	x3, x3, 32	# 2394
	lui		x22, %hi(create_dirvecs.2997)	# 2394
	ori		x22, x0, %lo(create_dirvecs.2997)	# 2394
	sw		x22, 0(x17)	# 2406
	sw		x31, 28(x17)	# 2406
	sw		x9, 24(x17)	# 2406
	sw		x16, 20(x17)	# 2406
	sw		x21, 16(x17)	# 2406
	sw		x13, 12(x17)	# 2406
	sw		x14, 8(x17)	# 2406
	fsw		f4, 4(x17)	# 2406
	addi	x16, x3, 0	# 2406
	addi	x3, x3, 36	# 2406
	lui		x22, %hi(init_dirvec_constants.2999)	# 2406
	ori		x22, x0, %lo(init_dirvec_constants.2999)	# 2406
	sw		x22, 0(x16)	# 2413
	lw		x22, -284(x2)	# 2413
	sw		x22, 32(x16)	# 2413
	lw		x23, -280(x2)	# 2413
	sw		x23, 28(x16)	# 2413
	lw		x24, -276(x2)	# 2413
	sw		x24, 24(x16)	# 2413
	sw		x18, 20(x16)	# 2413
	sw		x31, 16(x16)	# 2413
	lw		x26, -272(x2)	# 2413
	sw		x26, 12(x16)	# 2413
	sw		x13, 8(x16)	# 2413
	sw		x14, 4(x16)	# 2413
	addi	x27, x3, 0	# 2413
	addi	x3, x3, 44	# 2413
	lui		x5, %hi(init_vecset_constants.3002)	# 2413
	ori		x5, x0, %lo(init_vecset_constants.3002)	# 2413
	sw		x5, 0(x27)	# 2440
	sw		x22, 40(x27)	# 2440
	sw		x23, 36(x27)	# 2440
	sw		x24, 32(x27)	# 2440
	sw		x18, 28(x27)	# 2440
	sw		x31, 24(x27)	# 2440
	sw		x26, 20(x27)	# 2440
	sw		x16, 16(x27)	# 2440
	sw		x9, 12(x27)	# 2440
	sw		x13, 8(x27)	# 2440
	sw		x14, 4(x27)	# 2440
	addi	x5, x3, 0	# 2440
	addi	x3, x3, 60	# 2440
	sw		x15, -300(x2)	# 2440
	lui		x15, %hi(setup_rect_reflection.3013)	# 2440
	ori		x15, x0, %lo(setup_rect_reflection.3013)	# 2440
	sw		x15, 0(x5)	# 2454
	sw		x22, 56(x5)	# 2454
	sw		x23, 52(x5)	# 2454
	sw		x24, 48(x5)	# 2454
	lw		x15, -240(x2)	# 2454
	sw		x15, 44(x5)	# 2454
	sw		x18, 40(x5)	# 2454
	sw		x17, -304(x2)	# 2454
	lw		x17, -288(x2)	# 2454
	sw		x17, 36(x5)	# 2454
	sw		x31, 32(x5)	# 2454
	sw		x25, 28(x5)	# 2454
	sw		x26, 24(x5)	# 2454
	sw		x12, 20(x5)	# 2454
	sw		x21, 16(x5)	# 2454
	sw		x13, 12(x5)	# 2454
	sw		x14, 8(x5)	# 2454
	fsw		f4, 4(x5)	# 2454
	addi	x9, x3, 0	# 2454
	addi	x3, x3, 60	# 2454
	lui		x7, %hi(setup_surface_reflection.3016)	# 2454
	ori		x7, x0, %lo(setup_surface_reflection.3016)	# 2454
	sw		x7, 0(x9)	# 2491
	sw		x22, 56(x9)	# 2491
	sw		x23, 52(x9)	# 2491
	sw		x24, 48(x9)	# 2491
	sw		x15, 44(x9)	# 2491
	sw		x18, 40(x9)	# 2491
	sw		x17, 36(x9)	# 2491
	sw		x31, 32(x9)	# 2491
	sw		x25, 28(x9)	# 2491
	sw		x26, 24(x9)	# 2491
	sw		x12, 20(x9)	# 2491
	sw		x21, 16(x9)	# 2491
	sw		x13, 12(x9)	# 2491
	sw		x14, 8(x9)	# 2491
	fsw		f4, 4(x9)	# 2491
	addi	x7, x3, 0	# 2491
	addi	x3, x3, 164	# 2491
	lui		x15, %hi(rt.3021)	# 2491
	ori		x15, x0, %lo(rt.3021)	# 2491
	sw		x15, 0(x7)	# 2512
	lw		x15, -224(x2)	# 2512
	sw		x15, 160(x7)	# 2512
	sw		x22, 156(x7)	# 2512
	sw		x9, 152(x7)	# 2512
	sw		x23, 148(x7)	# 2512
	sw		x24, 144(x7)	# 2512
	sw		x5, 140(x7)	# 2512
	sw		x20, 136(x7)	# 2512
	sw		x6, 132(x7)	# 2512
	sw		x11, 128(x7)	# 2512
	lw		x5, -268(x2)	# 2512
	sw		x5, 124(x7)	# 2512
	lw		x5, -264(x2)	# 2512
	sw		x5, 120(x7)	# 2512
	lw		x5, -260(x2)	# 2512
	sw		x5, 116(x7)	# 2512
	lw		x5, -256(x2)	# 2512
	sw		x5, 112(x7)	# 2512
	lw		x5, -252(x2)	# 2512
	sw		x5, 108(x7)	# 2512
	lw		x5, -248(x2)	# 2512
	sw		x5, 104(x7)	# 2512
	lw		x5, -244(x2)	# 2512
	sw		x5, 100(x7)	# 2512
	sw		x10, 96(x7)	# 2512
	sw		x4, 92(x7)	# 2512
	sw		x18, 88(x7)	# 2512
	sw		x31, 84(x7)	# 2512
	lw		x4, -228(x2)	# 2512
	sw		x4, 80(x7)	# 2512
	sw		x25, 76(x7)	# 2512
	sw		x26, 72(x7)	# 2512
	sw		x27, 68(x7)	# 2512
	sw		x8, 64(x7)	# 2512
	sw		x16, 60(x7)	# 2512
	sw		x19, 56(x7)	# 2512
	lw		x4, -176(x2)	# 2512
	sw		x4, 52(x7)	# 2512
	lw		x4, -216(x2)	# 2512
	sw		x4, 48(x7)	# 2512
	lw		x4, -304(x2)	# 2512
	sw		x4, 44(x7)	# 2512
	lw		x4, -232(x2)	# 2512
	sw		x4, 40(x7)	# 2512
	lw		x4, -300(x2)	# 2512
	sw		x4, 36(x7)	# 2512
	lw		x4, -112(x2)	# 2512
	sw		x4, 32(x7)	# 2512
	lw		x4, -212(x2)	# 2512
	sw		x4, 28(x7)	# 2512
	sw		x12, 24(x7)	# 2512
	lw		x4, -100(x2)	# 2512
	sw		x4, 20(x7)	# 2512
	sw		x21, 16(x7)	# 2512
	sw		x13, 12(x7)	# 2512
	sw		x14, 8(x7)	# 2512
	fsw		f4, 4(x7)	# 2512
	ori		x4, x0, 128	# 2512
	addi	x6, x21, 0
	addi	x5, x4, 0
	addi	x27, x7, 0
	sw		x1, -308(x2)	# 2512
	addi	x2, x2, -312	# 2512
	lw		x31, 0(x27)	# 2512
	jalr	x1, x31, 0	# 2512
	addi	x2, x2, 312	# 2512
	lw		x1, -308(x2)	# 2512
	EXIT	
