l.13327:	# 1.000000
	.word	1.000000
l.13325:	# 0.000000
	.word	0.000000
l.13339:	# 0.500000
	.word	0.500000
l.13559:	# 0.017453
	.word	0.017453
l.13355:	# 0.200000
	.word	0.200000
l.14875:	# 0.100000
	.word	0.100000
l.13365:	# -1.000000
	.word	-1.000000
l.14411:	# -0.100000
	.word	-0.100000
l.14373:	# 0.010000
	.word	0.010000
l.14715:	# 3.141593
	.word	3.141593
l.14710:	# 15.000000
	.word	15.000000
l.14490:	# 100000000.000000
	.word	100000000.000000
l.14750:	# 10.000000
	.word	10.000000
l.13668:	# 2.000000
	.word	2.000000
l.14713:	# 30.000000
	.word	30.000000
l.15326:	# 0.900000
	.word	0.900000
l.15496:	# 1000000000.000000
	.word	1000000000.000000
l.15491:	# 255.000000
	.word	255.000000
l.14708:	# 0.000100
	.word	0.000100
l.14856:	# 0.003906
	.word	0.003906
l.14861:	# -2.000000
	.word	-2.000000
l.13357:	# 0.142857
	.word	0.142857
l.13359:	# 0.111111
	.word	0.111111
l.13361:	# 0.089764
	.word	0.089764
l.14371:	# -0.200000
	.word	-0.200000
l.13341:	# 0.041664
	.word	0.041664
l.13343:	# 0.001370
	.word	0.001370
l.13336:	# 0.000196
	.word	0.000196
l.13334:	# 0.008333
	.word	0.008333
l.13332:	# 0.166667
	.word	0.166667
l.13348:	# 2.437500
	.word	2.437500
l.13351:	# 0.437500
	.word	0.437500
l.13353:	# 0.333333
	.word	0.333333
l.13566:	# -200.000000
	.word	-200.000000
l.13561:	# 200.000000
	.word	200.000000
l.14730:	# 0.150000
	.word	0.150000
l.14763:	# 0.250000
	.word	0.250000
l.14733:	# 0.300000
	.word	0.300000
l.14780:	# 20.000000
	.word	20.000000
l.14778:	# 0.050000
	.word	0.050000
l.14934:	# 150.000000
	.word	150.000000
l.14929:	# -150.000000
	.word	-150.000000
l.15459:	# 128.000000
	.word	128.000000
l.15470:	# 3.141593
	.word	3.141593
l.15472:	# 6.283185
	.word	6.283185
l.15474:	# 1.570796
	.word	1.570796
l.15476:	# 0.785398
	.word	0.785398
int_of_float.2487.8535:
	fadd	f2, f0, f0	# 10
	fle		x31, f2, f1	# 10
	beq		x31, x0, fle_else.17994	# 10
	fadd	f2, f0, f16	# 11
	fle		x31, f2, f1	# 11
	beq		x31, x0, fle_else.17995	# 11
	fsub	f1, f1, f2	# 11
	sw		x1, 0(x2)	# 11
	addi	x2, x2, -4	# 11
	jal		x1, int_of_float.2487.8535	# 11
	addi	x2, x2, 4	# 11
	lw		x1, 0(x2)	# 11
	addi	x4, x4, 1	# 11
	jalr	x0, x1, 0	# 11
fle_else.17995:
	addi	x4, x0, 0	# 11
	jalr	x0, x1, 0	# 11
fle_else.17994:
	fsub	f1, f0, f1	# 12
	sw		x1, 0(x2)	# 12
	addi	x2, x2, -4	# 12
	jal		x1, int_of_float.2487.8535	# 12
	addi	x2, x2, 4	# 12
	lw		x1, 0(x2)	# 12
	sub		x4, x0, x4	# 12
	jalr	x0, x1, 0	# 12
float_of_int.2489.8537:
	addi	x5, x0, 0	# 14
	ble		x5, x4, ble.17996	# 14
	sub		x4, x0, x4	# 16
	sw		x1, 0(x2)	# 16
	addi	x2, x2, -4	# 16
	jal		x1, float_of_int.2489.8537	# 16
	addi	x2, x2, 4	# 16
	lw		x1, 0(x2)	# 16
	fsub	f1, f0, f1	# 16
	jalr	x0, x1, 0	# 16
ble.17996:
	addi	x5, x0, 1	# 15
	ble		x5, x4, ble.17997	# 15
	fadd	f1, f0, f0	# 15
	jalr	x0, x1, 0	# 15
ble.17997:
	sub		x4, x4, x5	# 15
	sw		x1, 0(x2)	# 15
	addi	x2, x2, -4	# 15
	jal		x1, float_of_int.2489.8537	# 15
	addi	x2, x2, 4	# 15
	lw		x1, 0(x2)	# 15
	fadd	f2, f0, f16	# 15
	fadd	f1, f1, f2	# 15
	jalr	x0, x1, 0	# 15
floor.2491.8539:
	fadd	f2, f0, f0	# 18
	fle		x31, f2, f1	# 18
	beq		x31, x0, fle_else.17998	# 18
	sw		x1, 0(x2)	# 18
	addi	x2, x2, -4	# 18
	jal		x1, int_of_float.2487.8535	# 18
	addi	x2, x2, 4	# 18
	lw		x1, 0(x2)	# 18
	jal		x0, float_of_int.2489.8537	# 18
fle_else.17998:
	sw		x1, 0(x2)	# 19
	addi	x2, x2, -4	# 19
	jal		x1, int_of_float.2487.8535	# 19
	addi	x2, x2, 4	# 19
	lw		x1, 0(x2)	# 19
	addi	x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	jal		x0, float_of_int.2489.8537	# 19
sin_main.2497.8545:
	fmul	f2, f1, f1	# 36
	fmul	f3, f1, f2	# 37
	lui		x4, %hi(l.13332)	# 38
	ori		x4, x0, %lo(l.13332)	# 38
	flw		f4, 0(x4)	# 38
	fmul	f4, f4, f3	# 38
	fsub	f1, f1, f4	# 38
	lui		x4, %hi(l.13334)	# 38
	ori		x4, x0, %lo(l.13334)	# 38
	flw		f4, 0(x4)	# 38
	fmul	f4, f4, f2	# 38
	fmul	f4, f4, f3	# 38
	fadd	f1, f1, f4	# 38
	lui		x4, %hi(l.13336)	# 38
	ori		x4, x0, %lo(l.13336)	# 38
	flw		f4, 0(x4)	# 38
	fmul	f4, f4, f2	# 38
	fmul	f2, f4, f2	# 38
	fmul	f2, f2, f3	# 38
	fsub	f1, f1, f2	# 38
	jalr	x0, x1, 0	# 38
cos_main.2499.8547:
	fmul	f1, f1, f1	# 41
	fmul	f2, f1, f1	# 42
	fadd	f3, f0, f16	# 43
	fadd	f4, f0, f17	# 43
	fmul	f4, f4, f1	# 43
	fsub	f3, f3, f4	# 43
	lui		x4, %hi(l.13341)	# 43
	ori		x4, x0, %lo(l.13341)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f4, f4, f2	# 43
	fadd	f3, f3, f4	# 43
	lui		x4, %hi(l.13343)	# 43
	ori		x4, x0, %lo(l.13343)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f1, f4, f1	# 43
	fmul	f1, f1, f2	# 43
	fsub	f1, f3, f1	# 43
	jalr	x0, x1, 0	# 43
sin.2501.8549:
	flw		f2, 16(x27)	# 46
	flw		f3, 12(x27)	# 46
	flw		f4, 8(x27)	# 46
	flw		f5, 4(x27)	# 46
	fadd	f6, f0, f0	# 46
	fle		x31, f6, f1	# 46
	beq		x31, x0, fle_else.17999	# 46
	fle		x31, f4, f1	# 47
	beq		x31, x0, fle_else.18000	# 47
	fsub	f1, f1, f4	# 47
	lw		x31, 0(x27)	# 47
	jalr	x0, x31, 0	# 47
fle_else.18000:
	fle		x31, f5, f1	# 48
	beq		x31, x0, fle_else.18001	# 48
	fsub	f1, f1, f5	# 48
	sw		x1, 0(x2)	# 48
	addi	x2, x2, -4	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 4	# 48
	lw		x1, 0(x2)	# 48
	fsub	f1, f0, f1	# 48
	jalr	x0, x1, 0	# 48
fle_else.18001:
	fle		x31, f1, f3	# 49
	beq		x31, x0, fle_else.18002	# 49
	fle		x31, f2, f1	# 50
	beq		x31, x0, fle_else.18003	# 50
	fsub	f1, f3, f1	# 50
	jal		x0, cos_main.2499.8547	# 50
fle_else.18003:
	jal		x0, sin_main.2497.8545	# 51
fle_else.18002:
	fsub	f1, f5, f1	# 49
	lw		x31, 0(x27)	# 49
	jalr	x0, x31, 0	# 49
fle_else.17999:
	fsub	f1, f0, f1	# 46
	sw		x1, 0(x2)	# 46
	addi	x2, x2, -4	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 4	# 46
	lw		x1, 0(x2)	# 46
	fsub	f1, f0, f1	# 46
	jalr	x0, x1, 0	# 46
cos.2503.8551:
	lw		x4, 12(x27)	# 54
	flw		f2, 8(x27)	# 54
	flw		f3, 4(x27)	# 54
	fadd	f4, f0, f0	# 54
	fle		x31, f4, f1	# 54
	beq		x31, x0, fle_else.18004	# 54
	fle		x31, f1, f2	# 55
	beq		x31, x0, fle_else.18005	# 55
	jal		x0, cos_main.2499.8547	# 56
fle_else.18005:
	fsub	f1, f3, f1	# 55
	addi	x27, x4, 0
	lw		x31, 0(x27)	# 55
	jalr	x0, x31, 0	# 55
fle_else.18004:
	fsub	f1, f0, f1	# 54
	lw		x31, 0(x27)	# 54
	jalr	x0, x31, 0	# 54
atan.2505.8553:
	flw		f2, 8(x27)	# 59
	flw		f3, 4(x27)	# 59
	fadd	f4, f0, f0	# 59
	fle		x31, f4, f1	# 59
	beq		x31, x0, fle_else.18006	# 59
	lui		x4, %hi(l.13348)	# 60
	ori		x4, x0, %lo(l.13348)	# 60
	flw		f4, 0(x4)	# 60
	fle		x31, f1, f4	# 60
	beq		x31, x0, fle_else.18007	# 60
	lui		x4, %hi(l.13351)	# 61
	ori		x4, x0, %lo(l.13351)	# 61
	flw		f3, 0(x4)	# 61
	fle		x31, f3, f1	# 61
	beq		x31, x0, fle_else.18008	# 61
	fadd	f3, f0, f16	# 61
	fsub	f4, f1, f3	# 61
	fadd	f1, f1, f3	# 61
	fdiv	f1, f4, f1	# 61
	fsw		f2, 0(x2)	# 61
	sw		x1, -4(x2)	# 61
	addi	x2, x2, -8	# 61
	lw		x31, 0(x27)	# 61
	jalr	x1, x31, 0	# 61
	addi	x2, x2, 8	# 61
	lw		x1, -4(x2)	# 61
	flw		f2, 0(x2)	# 61
	fadd	f1, f2, f1	# 61
	jalr	x0, x1, 0	# 61
fle_else.18008:
	fmul	f2, f1, f1	# 63
	fmul	f3, f1, f2	# 64
	fmul	f4, f2, f2	# 65
	lui		x4, %hi(l.13353)	# 66
	ori		x4, x0, %lo(l.13353)	# 66
	flw		f5, 0(x4)	# 66
	fmul	f5, f5, f3	# 66
	fsub	f1, f1, f5	# 66
	fadd	f5, f0, f19	# 66
	fmul	f5, f5, f2	# 66
	fmul	f5, f5, f3	# 66
	fadd	f1, f1, f5	# 66
	lui		x4, %hi(l.13357)	# 66
	ori		x4, x0, %lo(l.13357)	# 66
	flw		f5, 0(x4)	# 66
	fmul	f5, f5, f4	# 66
	fmul	f5, f5, f3	# 66
	fsub	f1, f1, f5	# 66
	lui		x4, %hi(l.13359)	# 67
	ori		x4, x0, %lo(l.13359)	# 67
	flw		f5, 0(x4)	# 67
	fmul	f2, f5, f2	# 67
	fmul	f2, f2, f4	# 67
	fmul	f2, f2, f3	# 67
	fadd	f1, f1, f2	# 66
	lui		x4, %hi(l.13361)	# 67
	ori		x4, x0, %lo(l.13361)	# 67
	flw		f2, 0(x4)	# 67
	fmul	f2, f2, f4	# 67
	fmul	f2, f2, f4	# 67
	fmul	f2, f2, f3	# 67
	fsub	f1, f1, f2	# 66
	jalr	x0, x1, 0	# 66
fle_else.18007:
	fadd	f2, f0, f16	# 60
	fdiv	f1, f2, f1	# 60
	fsw		f3, -4(x2)	# 60
	sw		x1, -8(x2)	# 60
	addi	x2, x2, -12	# 60
	lw		x31, 0(x27)	# 60
	jalr	x1, x31, 0	# 60
	addi	x2, x2, 12	# 60
	lw		x1, -8(x2)	# 60
	flw		f2, -4(x2)	# 60
	fsub	f1, f2, f1	# 60
	jalr	x0, x1, 0	# 60
fle_else.18006:
	fsub	f1, f0, f1	# 59
	sw		x1, -8(x2)	# 59
	addi	x2, x2, -12	# 59
	lw		x31, 0(x27)	# 59
	jalr	x1, x31, 0	# 59
	addi	x2, x2, 12	# 59
	lw		x1, -8(x2)	# 59
	fsub	f1, f0, f1	# 59
	jalr	x0, x1, 0	# 59
sgn.2544.8693:
	lw		x4, 8(x27)	# 212
	flw		f2, 4(x27)	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.18010	# 1
	addi	x5, x0, 1	# 1
	jal		x0, feq_cont.18009	# 1
feq_else.18010:
	addi	x5, x0, 0	# 1
feq_cont.18009:
	beq		x5, x4, beq.18011	# 212
	fadd	f1, f0, f2	# 212
	jalr	x0, x1, 0	# 212
beq.18011:
	fle		x31, f1, f2	# 2
	beq		x31, x0, fle_else.18013	# 2
	addi	x5, x0, 0	# 2
	jal		x0, fle_cont.18012	# 2
fle_else.18013:
	addi	x5, x0, 1	# 2
fle_cont.18012:
	beq		x5, x4, beq.18014	# 213
	fadd	f1, f0, f16	# 213
	jalr	x0, x1, 0	# 213
beq.18014:
	fadd	f1, f0, f21	# 214
	jalr	x0, x1, 0	# 214
veccpy.2562.8695:
	lw		x6, 12(x27)	# 259
	lw		x8, 8(x27)	# 259
	lw		x9, 4(x27)	# 259
	addi	x10, x0, 4	# 259
	mul		x10, x8, x10	# 259
	add		x10, x5, x10	# 259
	flw		f1, 0(x10)	# 259
	addi	x10, x0, 4	# 259
	mul		x8, x8, x10	# 259
	add		x8, x4, x8	# 259
	fsw		f1, 0(x8)	# 259
	addi	x8, x0, 4	# 260
	mul		x8, x9, x8	# 260
	add		x8, x5, x8	# 260
	flw		f1, 0(x8)	# 260
	addi	x8, x0, 4	# 260
	mul		x8, x9, x8	# 260
	add		x8, x4, x8	# 260
	fsw		f1, 0(x8)	# 260
	addi	x8, x0, 4	# 261
	mul		x8, x6, x8	# 261
	add		x5, x5, x8	# 261
	flw		f1, 0(x5)	# 261
	addi	x5, x0, 4	# 261
	mul		x5, x6, x5	# 261
	add		x4, x4, x5	# 261
	fsw		f1, 0(x4)	# 261
	jalr	x0, x1, 0	# 261
vecunit_sgn.2565.8698:
	lw		x6, 16(x27)	# 283
	lw		x8, 12(x27)	# 283
	lw		x9, 8(x27)	# 283
	flw		f1, 4(x27)	# 283
	addi	x10, x0, 4	# 283
	mul		x10, x8, x10	# 283
	add		x10, x4, x10	# 283
	flw		f2, 0(x10)	# 283
	fmul	f2, f2, f2	# 8
	addi	x10, x0, 4	# 283
	mul		x10, x9, x10	# 283
	add		x10, x4, x10	# 283
	flw		f3, 0(x10)	# 283
	fmul	f3, f3, f3	# 8
	fadd	f2, f2, f3	# 283
	addi	x10, x0, 4	# 283
	mul		x10, x6, x10	# 283
	add		x10, x4, x10	# 283
	flw		f3, 0(x10)	# 283
	fmul	f3, f3, f3	# 8
	fadd	f2, f2, f3	# 283
	fsqrt	f2, f2	# 283
	feq		x31, f2, f1	# 1
	beq		x31, x0, feq_else.18017	# 1
	addi	x10, x0, 1	# 1
	jal		x0, feq_cont.18016	# 1
feq_else.18017:
	addi	x10, x0, 0	# 1
feq_cont.18016:
	beq		x10, x8, beq.18019	# 284
	fadd	f1, f0, f16	# 284
	jal		x0, beq_cont.18018	# 284
beq.18019:
	beq		x5, x8, beq.18021	# 284
	fadd	f1, f0, f21	# 284
	fdiv	f1, f1, f2	# 284
	jal		x0, beq_cont.18020	# 284
beq.18021:
	fadd	f1, f0, f16	# 284
	fdiv	f1, f1, f2	# 284
beq_cont.18020:
beq_cont.18018:
	addi	x5, x0, 4	# 285
	mul		x5, x8, x5	# 285
	add		x5, x4, x5	# 285
	flw		f2, 0(x5)	# 285
	fmul	f2, f2, f1	# 285
	addi	x5, x0, 4	# 285
	mul		x5, x8, x5	# 285
	add		x5, x4, x5	# 285
	fsw		f2, 0(x5)	# 285
	addi	x5, x0, 4	# 286
	mul		x5, x9, x5	# 286
	add		x5, x4, x5	# 286
	flw		f2, 0(x5)	# 286
	fmul	f2, f2, f1	# 286
	addi	x5, x0, 4	# 286
	mul		x5, x9, x5	# 286
	add		x5, x4, x5	# 286
	fsw		f2, 0(x5)	# 286
	addi	x5, x0, 4	# 287
	mul		x5, x6, x5	# 287
	add		x5, x4, x5	# 287
	flw		f2, 0(x5)	# 287
	fmul	f1, f2, f1	# 287
	addi	x5, x0, 4	# 287
	mul		x5, x6, x5	# 287
	add		x4, x4, x5	# 287
	fsw		f1, 0(x4)	# 287
	jalr	x0, x1, 0	# 287
veciprod.2568.8701:
	lw		x6, 12(x27)	# 292
	lw		x8, 8(x27)	# 292
	lw		x9, 4(x27)	# 292
	addi	x10, x0, 4	# 292
	mul		x10, x8, x10	# 292
	add		x10, x4, x10	# 292
	flw		f1, 0(x10)	# 292
	addi	x10, x0, 4	# 292
	mul		x8, x8, x10	# 292
	add		x8, x5, x8	# 292
	flw		f2, 0(x8)	# 292
	fmul	f1, f1, f2	# 292
	addi	x8, x0, 4	# 292
	mul		x8, x9, x8	# 292
	add		x8, x4, x8	# 292
	flw		f2, 0(x8)	# 292
	addi	x8, x0, 4	# 292
	mul		x8, x9, x8	# 292
	add		x8, x5, x8	# 292
	flw		f3, 0(x8)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	addi	x8, x0, 4	# 292
	mul		x8, x6, x8	# 292
	add		x4, x4, x8	# 292
	flw		f2, 0(x4)	# 292
	addi	x4, x0, 4	# 292
	mul		x4, x6, x4	# 292
	add		x4, x5, x4	# 292
	flw		f3, 0(x4)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	jalr	x0, x1, 0	# 292
veciprod2.2571.8704:
	lw		x5, 12(x27)	# 297
	lw		x6, 8(x27)	# 297
	lw		x8, 4(x27)	# 297
	addi	x9, x0, 4	# 297
	mul		x6, x6, x9	# 297
	add		x6, x4, x6	# 297
	flw		f4, 0(x6)	# 297
	fmul	f1, f4, f1	# 297
	addi	x6, x0, 4	# 297
	mul		x6, x8, x6	# 297
	add		x6, x4, x6	# 297
	flw		f4, 0(x6)	# 297
	fmul	f2, f4, f2	# 297
	fadd	f1, f1, f2	# 297
	addi	x6, x0, 4	# 297
	mul		x5, x5, x6	# 297
	add		x4, x4, x5	# 297
	flw		f2, 0(x4)	# 297
	fmul	f2, f2, f3	# 297
	fadd	f1, f1, f2	# 297
	jalr	x0, x1, 0	# 297
vecaccum.2576.8709:
	lw		x6, 12(x27)	# 302
	lw		x8, 8(x27)	# 302
	lw		x9, 4(x27)	# 302
	addi	x10, x0, 4	# 302
	mul		x10, x8, x10	# 302
	add		x10, x4, x10	# 302
	flw		f2, 0(x10)	# 302
	addi	x10, x0, 4	# 302
	mul		x10, x8, x10	# 302
	add		x10, x5, x10	# 302
	flw		f3, 0(x10)	# 302
	fmul	f3, f1, f3	# 302
	fadd	f2, f2, f3	# 302
	addi	x10, x0, 4	# 302
	mul		x8, x8, x10	# 302
	add		x8, x4, x8	# 302
	fsw		f2, 0(x8)	# 302
	addi	x8, x0, 4	# 303
	mul		x8, x9, x8	# 303
	add		x8, x4, x8	# 303
	flw		f2, 0(x8)	# 303
	addi	x8, x0, 4	# 303
	mul		x8, x9, x8	# 303
	add		x8, x5, x8	# 303
	flw		f3, 0(x8)	# 303
	fmul	f3, f1, f3	# 303
	fadd	f2, f2, f3	# 303
	addi	x8, x0, 4	# 303
	mul		x8, x9, x8	# 303
	add		x8, x4, x8	# 303
	fsw		f2, 0(x8)	# 303
	addi	x8, x0, 4	# 304
	mul		x8, x6, x8	# 304
	add		x8, x4, x8	# 304
	flw		f2, 0(x8)	# 304
	addi	x8, x0, 4	# 304
	mul		x8, x6, x8	# 304
	add		x5, x5, x8	# 304
	flw		f3, 0(x5)	# 304
	fmul	f1, f1, f3	# 304
	fadd	f1, f2, f1	# 304
	addi	x5, x0, 4	# 304
	mul		x5, x6, x5	# 304
	add		x4, x4, x5	# 304
	fsw		f1, 0(x4)	# 304
	jalr	x0, x1, 0	# 304
vecadd.2580.8713:
	lw		x6, 12(x27)	# 309
	lw		x8, 8(x27)	# 309
	lw		x9, 4(x27)	# 309
	addi	x10, x0, 4	# 309
	mul		x10, x8, x10	# 309
	add		x10, x4, x10	# 309
	flw		f1, 0(x10)	# 309
	addi	x10, x0, 4	# 309
	mul		x10, x8, x10	# 309
	add		x10, x5, x10	# 309
	flw		f2, 0(x10)	# 309
	fadd	f1, f1, f2	# 309
	addi	x10, x0, 4	# 309
	mul		x8, x8, x10	# 309
	add		x8, x4, x8	# 309
	fsw		f1, 0(x8)	# 309
	addi	x8, x0, 4	# 310
	mul		x8, x9, x8	# 310
	add		x8, x4, x8	# 310
	flw		f1, 0(x8)	# 310
	addi	x8, x0, 4	# 310
	mul		x8, x9, x8	# 310
	add		x8, x5, x8	# 310
	flw		f2, 0(x8)	# 310
	fadd	f1, f1, f2	# 310
	addi	x8, x0, 4	# 310
	mul		x8, x9, x8	# 310
	add		x8, x4, x8	# 310
	fsw		f1, 0(x8)	# 310
	addi	x8, x0, 4	# 311
	mul		x8, x6, x8	# 311
	add		x8, x4, x8	# 311
	flw		f1, 0(x8)	# 311
	addi	x8, x0, 4	# 311
	mul		x8, x6, x8	# 311
	add		x5, x5, x8	# 311
	flw		f2, 0(x5)	# 311
	fadd	f1, f1, f2	# 311
	addi	x5, x0, 4	# 311
	mul		x5, x6, x5	# 311
	add		x4, x4, x5	# 311
	fsw		f1, 0(x4)	# 311
	jalr	x0, x1, 0	# 311
vecscale.2583.8716:
	lw		x5, 12(x27)	# 325
	lw		x6, 8(x27)	# 325
	lw		x8, 4(x27)	# 325
	addi	x9, x0, 4	# 325
	mul		x9, x6, x9	# 325
	add		x9, x4, x9	# 325
	flw		f2, 0(x9)	# 325
	fmul	f2, f2, f1	# 325
	addi	x9, x0, 4	# 325
	mul		x6, x6, x9	# 325
	add		x6, x4, x6	# 325
	fsw		f2, 0(x6)	# 325
	addi	x6, x0, 4	# 326
	mul		x6, x8, x6	# 326
	add		x6, x4, x6	# 326
	flw		f2, 0(x6)	# 326
	fmul	f2, f2, f1	# 326
	addi	x6, x0, 4	# 326
	mul		x6, x8, x6	# 326
	add		x6, x4, x6	# 326
	fsw		f2, 0(x6)	# 326
	addi	x6, x0, 4	# 327
	mul		x6, x5, x6	# 327
	add		x6, x4, x6	# 327
	flw		f2, 0(x6)	# 327
	fmul	f1, f2, f1	# 327
	addi	x6, x0, 4	# 327
	mul		x5, x5, x6	# 327
	add		x4, x4, x5	# 327
	fsw		f1, 0(x4)	# 327
	jalr	x0, x1, 0	# 327
vecaccumv.2586.8719:
	lw		x8, 12(x27)	# 332
	lw		x9, 8(x27)	# 332
	lw		x10, 4(x27)	# 332
	addi	x11, x0, 4	# 332
	mul		x11, x9, x11	# 332
	add		x11, x4, x11	# 332
	flw		f1, 0(x11)	# 332
	addi	x11, x0, 4	# 332
	mul		x11, x9, x11	# 332
	add		x11, x5, x11	# 332
	flw		f2, 0(x11)	# 332
	addi	x11, x0, 4	# 332
	mul		x11, x9, x11	# 332
	add		x11, x6, x11	# 332
	flw		f3, 0(x11)	# 332
	fmul	f2, f2, f3	# 332
	fadd	f1, f1, f2	# 332
	addi	x11, x0, 4	# 332
	mul		x9, x9, x11	# 332
	add		x9, x4, x9	# 332
	fsw		f1, 0(x9)	# 332
	addi	x9, x0, 4	# 333
	mul		x9, x10, x9	# 333
	add		x9, x4, x9	# 333
	flw		f1, 0(x9)	# 333
	addi	x9, x0, 4	# 333
	mul		x9, x10, x9	# 333
	add		x9, x5, x9	# 333
	flw		f2, 0(x9)	# 333
	addi	x9, x0, 4	# 333
	mul		x9, x10, x9	# 333
	add		x9, x6, x9	# 333
	flw		f3, 0(x9)	# 333
	fmul	f2, f2, f3	# 333
	fadd	f1, f1, f2	# 333
	addi	x9, x0, 4	# 333
	mul		x9, x10, x9	# 333
	add		x9, x4, x9	# 333
	fsw		f1, 0(x9)	# 333
	addi	x9, x0, 4	# 334
	mul		x9, x8, x9	# 334
	add		x9, x4, x9	# 334
	flw		f1, 0(x9)	# 334
	addi	x9, x0, 4	# 334
	mul		x9, x8, x9	# 334
	add		x5, x5, x9	# 334
	flw		f2, 0(x5)	# 334
	addi	x5, x0, 4	# 334
	mul		x5, x8, x5	# 334
	add		x5, x6, x5	# 334
	flw		f3, 0(x5)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	addi	x5, x0, 4	# 334
	mul		x5, x8, x5	# 334
	add		x4, x4, x5	# 334
	fsw		f1, 0(x4)	# 334
	jalr	x0, x1, 0	# 334
read_screen_settings.2663.8723:
	lw		x4, 24(x27)	# 684
	lw		x5, 20(x27)	# 684
	lw		x6, 16(x27)	# 684
	lw		x8, 12(x27)	# 684
	lw		x9, 8(x27)	# 684
	flw		f1, 4(x27)	# 684
	fsw		f1, 0(x2)	# 684
	sw		x4, -4(x2)	# 684
	sw		x5, -8(x2)	# 684
	sw		x6, -12(x2)	# 684
	sw		x9, -16(x2)	# 684
	sw		x8, -20(x2)	# 684
	sw		x1, -24(x2)	# 684
	addi	x2, x2, -28	# 684
	jal		x1, min_caml_read_float	# 684
	addi	x2, x2, 28	# 684
	lw		x1, -24(x2)	# 684
	addi	x4, x7, 288	# 684
	addi	x5, x0, 4	# 684
	lw		x6, -20(x2)	# 684
	mul		x5, x6, x5	# 684
	add		x4, x4, x5	# 684
	fsw		f1, 0(x4)	# 684
	sw		x1, -24(x2)	# 685
	addi	x2, x2, -28	# 685
	jal		x1, min_caml_read_float	# 685
	addi	x2, x2, 28	# 685
	lw		x1, -24(x2)	# 685
	addi	x4, x7, 288	# 685
	addi	x5, x0, 4	# 685
	lw		x6, -16(x2)	# 685
	mul		x5, x6, x5	# 685
	add		x4, x4, x5	# 685
	fsw		f1, 0(x4)	# 685
	sw		x1, -24(x2)	# 686
	addi	x2, x2, -28	# 686
	jal		x1, min_caml_read_float	# 686
	addi	x2, x2, 28	# 686
	lw		x1, -24(x2)	# 686
	addi	x4, x7, 288	# 686
	addi	x5, x0, 4	# 686
	lw		x6, -12(x2)	# 686
	mul		x5, x6, x5	# 686
	add		x4, x4, x5	# 686
	fsw		f1, 0(x4)	# 686
	sw		x1, -24(x2)	# 688
	addi	x2, x2, -28	# 688
	jal		x1, min_caml_read_float	# 688
	addi	x2, x2, 28	# 688
	lw		x1, -24(x2)	# 688
	fadd	f2, f0, f18	# 677
	fmul	f1, f1, f2	# 677
	lw		x27, -8(x2)	# 689
	fsw		f2, -24(x2)	# 689
	fsw		f1, -28(x2)	# 689
	sw		x1, -32(x2)	# 689
	addi	x2, x2, -36	# 689
	lw		x31, 0(x27)	# 689
	jalr	x1, x31, 0	# 689
	addi	x2, x2, 36	# 689
	lw		x1, -32(x2)	# 689
	flw		f2, -28(x2)	# 690
	lw		x27, -4(x2)	# 690
	fsw		f1, -32(x2)	# 690
	fadd	f1, f0, f2
	sw		x1, -36(x2)	# 690
	addi	x2, x2, -40	# 690
	lw		x31, 0(x27)	# 690
	jalr	x1, x31, 0	# 690
	addi	x2, x2, 40	# 690
	lw		x1, -36(x2)	# 690
	fsw		f1, -36(x2)	# 691
	sw		x1, -40(x2)	# 691
	addi	x2, x2, -44	# 691
	jal		x1, min_caml_read_float	# 691
	addi	x2, x2, 44	# 691
	lw		x1, -40(x2)	# 691
	flw		f2, -24(x2)	# 677
	fmul	f1, f1, f2	# 677
	lw		x27, -8(x2)	# 692
	fsw		f1, -40(x2)	# 692
	sw		x1, -44(x2)	# 692
	addi	x2, x2, -48	# 692
	lw		x31, 0(x27)	# 692
	jalr	x1, x31, 0	# 692
	addi	x2, x2, 48	# 692
	lw		x1, -44(x2)	# 692
	flw		f2, -40(x2)	# 693
	lw		x27, -4(x2)	# 693
	fsw		f1, -44(x2)	# 693
	fadd	f1, f0, f2
	sw		x1, -48(x2)	# 693
	addi	x2, x2, -52	# 693
	lw		x31, 0(x27)	# 693
	jalr	x1, x31, 0	# 693
	addi	x2, x2, 52	# 693
	lw		x1, -48(x2)	# 693
	flw		f2, -32(x2)	# 695
	fmul	f3, f2, f1	# 695
	lui		x4, %hi(l.13561)	# 695
	ori		x4, x0, %lo(l.13561)	# 695
	flw		f4, 0(x4)	# 695
	fmul	f3, f3, f4	# 695
	addi	x4, x7, 684	# 695
	addi	x5, x0, 4	# 695
	lw		x6, -20(x2)	# 695
	mul		x5, x6, x5	# 695
	add		x4, x4, x5	# 695
	fsw		f3, 0(x4)	# 695
	lui		x4, %hi(l.13566)	# 696
	ori		x4, x0, %lo(l.13566)	# 696
	flw		f3, 0(x4)	# 696
	flw		f5, -36(x2)	# 696
	fmul	f3, f5, f3	# 696
	addi	x4, x7, 684	# 696
	addi	x5, x0, 4	# 696
	lw		x8, -16(x2)	# 696
	mul		x5, x8, x5	# 696
	add		x4, x4, x5	# 696
	fsw		f3, 0(x4)	# 696
	flw		f3, -44(x2)	# 697
	fmul	f6, f2, f3	# 697
	fmul	f4, f6, f4	# 697
	addi	x4, x7, 684	# 697
	addi	x5, x0, 4	# 697
	lw		x9, -12(x2)	# 697
	mul		x5, x9, x5	# 697
	add		x4, x4, x5	# 697
	fsw		f4, 0(x4)	# 697
	addi	x4, x7, 660	# 699
	addi	x5, x0, 4	# 699
	mul		x5, x6, x5	# 699
	add		x4, x4, x5	# 699
	fsw		f3, 0(x4)	# 699
	addi	x4, x7, 660	# 700
	addi	x5, x0, 4	# 700
	mul		x5, x8, x5	# 700
	add		x4, x4, x5	# 700
	flw		f4, 0(x2)	# 700
	fsw		f4, 0(x4)	# 700
	fsub	f4, f0, f1	# 4
	addi	x4, x7, 660	# 701
	addi	x5, x0, 4	# 701
	mul		x5, x9, x5	# 701
	add		x4, x4, x5	# 701
	fsw		f4, 0(x4)	# 701
	fsub	f4, f0, f5	# 4
	fmul	f1, f4, f1	# 703
	addi	x4, x7, 672	# 703
	addi	x5, x0, 4	# 703
	mul		x5, x6, x5	# 703
	add		x4, x4, x5	# 703
	fsw		f1, 0(x4)	# 703
	fsub	f1, f0, f2	# 4
	addi	x4, x7, 672	# 704
	addi	x5, x0, 4	# 704
	mul		x5, x8, x5	# 704
	add		x4, x4, x5	# 704
	fsw		f1, 0(x4)	# 704
	fmul	f1, f4, f3	# 705
	addi	x4, x7, 672	# 705
	addi	x5, x0, 4	# 705
	mul		x5, x9, x5	# 705
	add		x4, x4, x5	# 705
	fsw		f1, 0(x4)	# 705
	addi	x4, x7, 288	# 707
	addi	x5, x0, 4	# 707
	mul		x5, x6, x5	# 707
	add		x4, x4, x5	# 707
	flw		f1, 0(x4)	# 707
	addi	x4, x7, 684	# 707
	addi	x5, x0, 4	# 707
	mul		x5, x6, x5	# 707
	add		x4, x4, x5	# 707
	flw		f2, 0(x4)	# 707
	fsub	f1, f1, f2	# 707
	addi	x4, x7, 300	# 707
	addi	x5, x0, 4	# 707
	mul		x5, x6, x5	# 707
	add		x4, x4, x5	# 707
	fsw		f1, 0(x4)	# 707
	addi	x4, x7, 288	# 708
	addi	x5, x0, 4	# 708
	mul		x5, x8, x5	# 708
	add		x4, x4, x5	# 708
	flw		f1, 0(x4)	# 708
	addi	x4, x7, 684	# 708
	addi	x5, x0, 4	# 708
	mul		x5, x8, x5	# 708
	add		x4, x4, x5	# 708
	flw		f2, 0(x4)	# 708
	fsub	f1, f1, f2	# 708
	addi	x4, x7, 300	# 708
	addi	x5, x0, 4	# 708
	mul		x5, x8, x5	# 708
	add		x4, x4, x5	# 708
	fsw		f1, 0(x4)	# 708
	addi	x4, x7, 288	# 709
	addi	x5, x0, 4	# 709
	mul		x5, x9, x5	# 709
	add		x4, x4, x5	# 709
	flw		f1, 0(x4)	# 709
	addi	x4, x7, 684	# 709
	addi	x5, x0, 4	# 709
	mul		x5, x9, x5	# 709
	add		x4, x4, x5	# 709
	flw		f2, 0(x4)	# 709
	fsub	f1, f1, f2	# 709
	addi	x4, x7, 300	# 709
	addi	x5, x0, 4	# 709
	mul		x5, x9, x5	# 709
	add		x4, x4, x5	# 709
	fsw		f1, 0(x4)	# 709
	jalr	x0, x1, 0	# 709
read_light.2665.8725:
	lw		x4, 20(x27)	# 716
	lw		x5, 16(x27)	# 716
	lw		x6, 12(x27)	# 716
	lw		x8, 8(x27)	# 716
	lw		x9, 4(x27)	# 716
	sw		x6, 0(x2)	# 716
	sw		x8, -4(x2)	# 716
	sw		x5, -8(x2)	# 716
	sw		x9, -12(x2)	# 716
	sw		x4, -16(x2)	# 716
	sw		x1, -20(x2)	# 716
	addi	x2, x2, -24	# 716
	jal		x1, min_caml_read_int	# 716
	addi	x2, x2, 24	# 716
	lw		x1, -20(x2)	# 716
	sw		x1, -20(x2)	# 719
	addi	x2, x2, -24	# 719
	jal		x1, min_caml_read_float	# 719
	addi	x2, x2, 24	# 719
	lw		x1, -20(x2)	# 719
	fadd	f2, f0, f18	# 677
	fmul	f1, f1, f2	# 677
	lw		x27, -16(x2)	# 720
	fsw		f1, -20(x2)	# 720
	fsw		f2, -24(x2)	# 720
	sw		x1, -28(x2)	# 720
	addi	x2, x2, -32	# 720
	lw		x31, 0(x27)	# 720
	jalr	x1, x31, 0	# 720
	addi	x2, x2, 32	# 720
	lw		x1, -28(x2)	# 720
	fsub	f1, f0, f1	# 4
	addi	x4, x7, 312	# 721
	addi	x5, x0, 4	# 721
	lw		x6, -12(x2)	# 721
	mul		x5, x6, x5	# 721
	add		x4, x4, x5	# 721
	fsw		f1, 0(x4)	# 721
	sw		x1, -28(x2)	# 722
	addi	x2, x2, -32	# 722
	jal		x1, min_caml_read_float	# 722
	addi	x2, x2, 32	# 722
	lw		x1, -28(x2)	# 722
	flw		f2, -24(x2)	# 677
	fmul	f1, f1, f2	# 677
	flw		f2, -20(x2)	# 723
	lw		x27, -8(x2)	# 723
	fsw		f1, -28(x2)	# 723
	fadd	f1, f0, f2
	sw		x1, -32(x2)	# 723
	addi	x2, x2, -36	# 723
	lw		x31, 0(x27)	# 723
	jalr	x1, x31, 0	# 723
	addi	x2, x2, 36	# 723
	lw		x1, -32(x2)	# 723
	flw		f2, -28(x2)	# 724
	lw		x27, -16(x2)	# 724
	fsw		f1, -32(x2)	# 724
	fadd	f1, f0, f2
	sw		x1, -36(x2)	# 724
	addi	x2, x2, -40	# 724
	lw		x31, 0(x27)	# 724
	jalr	x1, x31, 0	# 724
	addi	x2, x2, 40	# 724
	lw		x1, -36(x2)	# 724
	flw		f2, -32(x2)	# 725
	fmul	f1, f2, f1	# 725
	addi	x4, x7, 312	# 725
	addi	x5, x0, 4	# 725
	lw		x6, -4(x2)	# 725
	mul		x5, x6, x5	# 725
	add		x4, x4, x5	# 725
	fsw		f1, 0(x4)	# 725
	flw		f1, -28(x2)	# 726
	lw		x27, -8(x2)	# 726
	sw		x1, -36(x2)	# 726
	addi	x2, x2, -40	# 726
	lw		x31, 0(x27)	# 726
	jalr	x1, x31, 0	# 726
	addi	x2, x2, 40	# 726
	lw		x1, -36(x2)	# 726
	flw		f2, -32(x2)	# 727
	fmul	f1, f2, f1	# 727
	addi	x4, x7, 312	# 727
	addi	x5, x0, 4	# 727
	lw		x6, 0(x2)	# 727
	mul		x5, x6, x5	# 727
	add		x4, x4, x5	# 727
	fsw		f1, 0(x4)	# 727
	sw		x1, -36(x2)	# 728
	addi	x2, x2, -40	# 728
	jal		x1, min_caml_read_float	# 728
	addi	x2, x2, 40	# 728
	lw		x1, -36(x2)	# 728
	addi	x4, x7, 324	# 728
	addi	x5, x0, 4	# 728
	lw		x6, -4(x2)	# 728
	mul		x5, x6, x5	# 728
	add		x4, x4, x5	# 728
	fsw		f1, 0(x4)	# 728
	jalr	x0, x1, 0	# 728
rotate_quadratic_matrix.2667.8727:
	lw		x6, 20(x27)	# 738
	lw		x8, 16(x27)	# 738
	lw		x9, 12(x27)	# 738
	lw		x10, 8(x27)	# 738
	lw		x11, 4(x27)	# 738
	addi	x12, x0, 4	# 738
	mul		x12, x10, x12	# 738
	add		x12, x5, x12	# 738
	flw		f1, 0(x12)	# 738
	sw		x4, 0(x2)	# 738
	sw		x9, -4(x2)	# 738
	sw		x8, -8(x2)	# 738
	sw		x11, -12(x2)	# 738
	sw		x6, -16(x2)	# 738
	sw		x5, -20(x2)	# 738
	sw		x10, -24(x2)	# 738
	addi	x27, x8, 0
	sw		x1, -28(x2)	# 738
	addi	x2, x2, -32	# 738
	lw		x31, 0(x27)	# 738
	jalr	x1, x31, 0	# 738
	addi	x2, x2, 32	# 738
	lw		x1, -28(x2)	# 738
	addi	x4, x0, 4	# 739
	lw		x5, -24(x2)	# 739
	mul		x4, x5, x4	# 739
	lw		x6, -20(x2)	# 739
	add		x4, x6, x4	# 739
	flw		f2, 0(x4)	# 739
	lw		x27, -16(x2)	# 739
	fsw		f1, -28(x2)	# 739
	fadd	f1, f0, f2
	sw		x1, -32(x2)	# 739
	addi	x2, x2, -36	# 739
	lw		x31, 0(x27)	# 739
	jalr	x1, x31, 0	# 739
	addi	x2, x2, 36	# 739
	lw		x1, -32(x2)	# 739
	addi	x4, x0, 4	# 740
	lw		x5, -12(x2)	# 740
	mul		x4, x5, x4	# 740
	lw		x6, -20(x2)	# 740
	add		x4, x6, x4	# 740
	flw		f2, 0(x4)	# 740
	lw		x27, -8(x2)	# 740
	fsw		f1, -32(x2)	# 740
	fadd	f1, f0, f2
	sw		x1, -36(x2)	# 740
	addi	x2, x2, -40	# 740
	lw		x31, 0(x27)	# 740
	jalr	x1, x31, 0	# 740
	addi	x2, x2, 40	# 740
	lw		x1, -36(x2)	# 740
	addi	x4, x0, 4	# 741
	lw		x5, -12(x2)	# 741
	mul		x4, x5, x4	# 741
	lw		x6, -20(x2)	# 741
	add		x4, x6, x4	# 741
	flw		f2, 0(x4)	# 741
	lw		x27, -16(x2)	# 741
	fsw		f1, -36(x2)	# 741
	fadd	f1, f0, f2
	sw		x1, -40(x2)	# 741
	addi	x2, x2, -44	# 741
	lw		x31, 0(x27)	# 741
	jalr	x1, x31, 0	# 741
	addi	x2, x2, 44	# 741
	lw		x1, -40(x2)	# 741
	addi	x4, x0, 4	# 742
	lw		x5, -4(x2)	# 742
	mul		x4, x5, x4	# 742
	lw		x6, -20(x2)	# 742
	add		x4, x6, x4	# 742
	flw		f2, 0(x4)	# 742
	lw		x27, -8(x2)	# 742
	fsw		f1, -40(x2)	# 742
	fadd	f1, f0, f2
	sw		x1, -44(x2)	# 742
	addi	x2, x2, -48	# 742
	lw		x31, 0(x27)	# 742
	jalr	x1, x31, 0	# 742
	addi	x2, x2, 48	# 742
	lw		x1, -44(x2)	# 742
	addi	x4, x0, 4	# 743
	lw		x5, -4(x2)	# 743
	mul		x4, x5, x4	# 743
	lw		x6, -20(x2)	# 743
	add		x4, x6, x4	# 743
	flw		f2, 0(x4)	# 743
	lw		x27, -16(x2)	# 743
	fsw		f1, -44(x2)	# 743
	fadd	f1, f0, f2
	sw		x1, -48(x2)	# 743
	addi	x2, x2, -52	# 743
	lw		x31, 0(x27)	# 743
	jalr	x1, x31, 0	# 743
	addi	x2, x2, 52	# 743
	lw		x1, -48(x2)	# 743
	flw		f2, -44(x2)	# 745
	flw		f3, -36(x2)	# 745
	fmul	f4, f3, f2	# 745
	flw		f5, -40(x2)	# 746
	flw		f6, -32(x2)	# 746
	fmul	f7, f6, f5	# 746
	fmul	f8, f7, f2	# 746
	flw		f9, -28(x2)	# 746
	fmul	f10, f9, f1	# 746
	fsub	f8, f8, f10	# 746
	fmul	f10, f9, f5	# 747
	fmul	f11, f10, f2	# 747
	fmul	f12, f6, f1	# 747
	fadd	f11, f11, f12	# 747
	fmul	f12, f3, f1	# 749
	fmul	f7, f7, f1	# 750
	fmul	f13, f9, f2	# 750
	fadd	f7, f7, f13	# 750
	fmul	f1, f10, f1	# 751
	fmul	f2, f6, f2	# 751
	fsub	f1, f1, f2	# 751
	fsub	f2, f0, f5	# 4
	fmul	f5, f6, f3	# 754
	fmul	f3, f9, f3	# 755
	addi	x4, x0, 4	# 758
	lw		x5, -24(x2)	# 758
	mul		x4, x5, x4	# 758
	lw		x6, 0(x2)	# 758
	add		x4, x6, x4	# 758
	flw		f6, 0(x4)	# 758
	addi	x4, x0, 4	# 759
	lw		x8, -12(x2)	# 759
	mul		x4, x8, x4	# 759
	add		x4, x6, x4	# 759
	flw		f9, 0(x4)	# 759
	addi	x4, x0, 4	# 760
	lw		x9, -4(x2)	# 760
	mul		x4, x9, x4	# 760
	add		x4, x6, x4	# 760
	flw		f10, 0(x4)	# 760
	fmul	f13, f4, f4	# 8
	fmul	f13, f6, f13	# 765
	fmul	f14, f12, f12	# 8
	fmul	f14, f9, f14	# 765
	fadd	f13, f13, f14	# 765
	fmul	f14, f2, f2	# 8
	fmul	f14, f10, f14	# 765
	fadd	f13, f13, f14	# 765
	addi	x4, x0, 4	# 765
	mul		x4, x5, x4	# 765
	add		x4, x6, x4	# 765
	fsw		f13, 0(x4)	# 765
	fmul	f13, f8, f8	# 8
	fmul	f13, f6, f13	# 766
	fmul	f14, f7, f7	# 8
	fmul	f14, f9, f14	# 766
	fadd	f13, f13, f14	# 766
	fmul	f14, f5, f5	# 8
	fmul	f14, f10, f14	# 766
	fadd	f13, f13, f14	# 766
	addi	x4, x0, 4	# 766
	mul		x4, x8, x4	# 766
	add		x4, x6, x4	# 766
	fsw		f13, 0(x4)	# 766
	fmul	f13, f11, f11	# 8
	fmul	f13, f6, f13	# 767
	fmul	f14, f1, f1	# 8
	fmul	f14, f9, f14	# 767
	fadd	f13, f13, f14	# 767
	fmul	f14, f3, f3	# 8
	fmul	f14, f10, f14	# 767
	fadd	f13, f13, f14	# 767
	addi	x4, x0, 4	# 767
	mul		x4, x9, x4	# 767
	add		x4, x6, x4	# 767
	fsw		f13, 0(x4)	# 767
	fadd	f13, f0, f28	# 770
	fmul	f14, f6, f8	# 770
	fmul	f14, f14, f11	# 770
	fmul	f15, f9, f7	# 770
	fmul	f15, f15, f1	# 770
	fadd	f14, f14, f15	# 770
	fmul	f15, f10, f5	# 770
	fmul	f15, f15, f3	# 770
	fadd	f14, f14, f15	# 770
	fmul	f14, f13, f14	# 770
	addi	x4, x0, 4	# 770
	mul		x4, x5, x4	# 770
	lw		x5, -20(x2)	# 770
	add		x4, x5, x4	# 770
	fsw		f14, 0(x4)	# 770
	fmul	f4, f6, f4	# 771
	fmul	f6, f4, f11	# 771
	fmul	f9, f9, f12	# 771
	fmul	f1, f9, f1	# 771
	fadd	f1, f6, f1	# 771
	fmul	f2, f10, f2	# 771
	fmul	f3, f2, f3	# 771
	fadd	f1, f1, f3	# 771
	fmul	f1, f13, f1	# 771
	addi	x4, x0, 4	# 771
	mul		x4, x8, x4	# 771
	add		x4, x5, x4	# 771
	fsw		f1, 0(x4)	# 771
	fmul	f1, f4, f8	# 772
	fmul	f3, f9, f7	# 772
	fadd	f1, f1, f3	# 772
	fmul	f2, f2, f5	# 772
	fadd	f1, f1, f2	# 772
	fmul	f1, f13, f1	# 772
	addi	x4, x0, 4	# 772
	mul		x4, x9, x4	# 772
	add		x4, x5, x4	# 772
	fsw		f1, 0(x4)	# 772
	jalr	x0, x1, 0	# 772
read_nth_object.2670.8730:
	lw		x5, 36(x27)	# 779
	lw		x6, 32(x27)	# 779
	lw		x8, 28(x27)	# 779
	lw		x9, 24(x27)	# 779
	lw		x10, 20(x27)	# 779
	lw		x11, 16(x27)	# 779
	lw		x12, 12(x27)	# 779
	lw		x13, 8(x27)	# 779
	flw		f1, 4(x27)	# 779
	sw		x8, 0(x2)	# 779
	sw		x5, -4(x2)	# 779
	sw		x6, -8(x2)	# 779
	sw		x4, -12(x2)	# 779
	sw		x9, -16(x2)	# 779
	sw		x13, -20(x2)	# 779
	sw		x12, -24(x2)	# 779
	fsw		f1, -28(x2)	# 779
	sw		x11, -32(x2)	# 779
	sw		x10, -36(x2)	# 779
	sw		x1, -40(x2)	# 779
	addi	x2, x2, -44	# 779
	jal		x1, min_caml_read_int	# 779
	addi	x2, x2, 44	# 779
	lw		x1, -40(x2)	# 779
	lw		x5, -36(x2)	# 780
	beq		x4, x5, beq.18030	# 780
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
	flw		f1, -28(x2)	# 786
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
	addi	x4, x0, 4	# 787
	lw		x5, -24(x2)	# 787
	mul		x4, x5, x4	# 787
	lw		x6, -56(x2)	# 787
	add		x4, x6, x4	# 787
	fsw		f1, 0(x4)	# 787
	sw		x1, -60(x2)	# 788
	addi	x2, x2, -64	# 788
	jal		x1, min_caml_read_float	# 788
	addi	x2, x2, 64	# 788
	lw		x1, -60(x2)	# 788
	addi	x4, x0, 4	# 788
	lw		x5, -20(x2)	# 788
	mul		x4, x5, x4	# 788
	lw		x6, -56(x2)	# 788
	add		x4, x6, x4	# 788
	fsw		f1, 0(x4)	# 788
	sw		x1, -60(x2)	# 789
	addi	x2, x2, -64	# 789
	jal		x1, min_caml_read_float	# 789
	addi	x2, x2, 64	# 789
	lw		x1, -60(x2)	# 789
	addi	x4, x0, 4	# 789
	lw		x5, -16(x2)	# 789
	mul		x4, x5, x4	# 789
	lw		x6, -56(x2)	# 789
	add		x4, x6, x4	# 789
	fsw		f1, 0(x4)	# 789
	flw		f1, -28(x2)	# 791
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
	addi	x4, x0, 4	# 792
	lw		x5, -24(x2)	# 792
	mul		x4, x5, x4	# 792
	lw		x6, -60(x2)	# 792
	add		x4, x6, x4	# 792
	fsw		f1, 0(x4)	# 792
	sw		x1, -64(x2)	# 793
	addi	x2, x2, -68	# 793
	jal		x1, min_caml_read_float	# 793
	addi	x2, x2, 68	# 793
	lw		x1, -64(x2)	# 793
	addi	x4, x0, 4	# 793
	lw		x5, -20(x2)	# 793
	mul		x4, x5, x4	# 793
	lw		x6, -60(x2)	# 793
	add		x4, x6, x4	# 793
	fsw		f1, 0(x4)	# 793
	sw		x1, -64(x2)	# 794
	addi	x2, x2, -68	# 794
	jal		x1, min_caml_read_float	# 794
	addi	x2, x2, 68	# 794
	lw		x1, -64(x2)	# 794
	addi	x4, x0, 4	# 794
	lw		x5, -16(x2)	# 794
	mul		x4, x5, x4	# 794
	lw		x6, -60(x2)	# 794
	add		x4, x6, x4	# 794
	fsw		f1, 0(x4)	# 794
	sw		x1, -64(x2)	# 796
	addi	x2, x2, -68	# 796
	jal		x1, min_caml_read_float	# 796
	addi	x2, x2, 68	# 796
	lw		x1, -64(x2)	# 796
	flw		f2, -28(x2)	# 3
	fle		x31, f2, f1	# 3
	beq		x31, x0, fle_else.18032	# 3
	addi	x4, x0, 0	# 3
	jal		x0, fle_cont.18031	# 3
fle_else.18032:
	addi	x4, x0, 1	# 3
fle_cont.18031:
	lw		x5, -16(x2)	# 798
	sw		x4, -64(x2)	# 798
	addi	x4, x5, 0
	fadd	f1, f0, f2
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
	addi	x4, x0, 4	# 799
	lw		x5, -24(x2)	# 799
	mul		x4, x5, x4	# 799
	lw		x6, -68(x2)	# 799
	add		x4, x6, x4	# 799
	fsw		f1, 0(x4)	# 799
	sw		x1, -72(x2)	# 800
	addi	x2, x2, -76	# 800
	jal		x1, min_caml_read_float	# 800
	addi	x2, x2, 76	# 800
	lw		x1, -72(x2)	# 800
	addi	x4, x0, 4	# 800
	lw		x5, -20(x2)	# 800
	mul		x4, x5, x4	# 800
	lw		x6, -68(x2)	# 800
	add		x4, x6, x4	# 800
	fsw		f1, 0(x4)	# 800
	flw		f1, -28(x2)	# 802
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
	addi	x4, x0, 4	# 803
	lw		x5, -24(x2)	# 803
	mul		x4, x5, x4	# 803
	lw		x6, -72(x2)	# 803
	add		x4, x6, x4	# 803
	fsw		f1, 0(x4)	# 803
	sw		x1, -76(x2)	# 804
	addi	x2, x2, -80	# 804
	jal		x1, min_caml_read_float	# 804
	addi	x2, x2, 80	# 804
	lw		x1, -76(x2)	# 804
	addi	x4, x0, 4	# 804
	lw		x5, -20(x2)	# 804
	mul		x4, x5, x4	# 804
	lw		x5, -72(x2)	# 804
	add		x4, x5, x4	# 804
	fsw		f1, 0(x4)	# 804
	sw		x1, -76(x2)	# 805
	addi	x2, x2, -80	# 805
	jal		x1, min_caml_read_float	# 805
	addi	x2, x2, 80	# 805
	lw		x1, -76(x2)	# 805
	addi	x4, x0, 4	# 805
	lw		x5, -16(x2)	# 805
	mul		x4, x5, x4	# 805
	lw		x6, -72(x2)	# 805
	add		x4, x6, x4	# 805
	fsw		f1, 0(x4)	# 805
	flw		f1, -28(x2)	# 807
	lw		x4, -32(x2)	# 807
	sw		x1, -76(x2)	# 807
	addi	x2, x2, -80	# 807
	jal		x1, min_caml_create_float_array	# 807
	addi	x2, x2, 80	# 807
	lw		x1, -76(x2)	# 807
	lw		x5, -24(x2)	# 808
	lw		x6, -52(x2)	# 808
	sw		x4, -76(x2)	# 808
	beq		x6, x5, beq_cont.18033	# 808
	addi	x8, x0, 0	# 810
	sw		x8, -80(x2)	# 810
	sw		x1, -84(x2)	# 810
	addi	x2, x2, -88	# 810
	jal		x1, min_caml_read_float	# 810
	addi	x2, x2, 88	# 810
	lw		x1, -84(x2)	# 810
	fadd	f2, f0, f18	# 677
	fmul	f1, f1, f2	# 677
	addi	x4, x0, 4	# 810
	lw		x5, -80(x2)	# 810
	mul		x4, x5, x4	# 810
	lw		x5, -76(x2)	# 810
	add		x4, x5, x4	# 810
	fsw		f1, 0(x4)	# 810
	addi	x4, x0, 1	# 811
	sw		x4, -84(x2)	# 811
	sw		x1, -88(x2)	# 811
	addi	x2, x2, -92	# 811
	jal		x1, min_caml_read_float	# 811
	addi	x2, x2, 92	# 811
	lw		x1, -88(x2)	# 811
	fadd	f2, f0, f18	# 677
	fmul	f1, f1, f2	# 677
	addi	x4, x0, 4	# 811
	lw		x5, -84(x2)	# 811
	mul		x4, x5, x4	# 811
	lw		x5, -76(x2)	# 811
	add		x4, x5, x4	# 811
	fsw		f1, 0(x4)	# 811
	addi	x4, x0, 2	# 812
	sw		x4, -88(x2)	# 812
	sw		x1, -92(x2)	# 812
	addi	x2, x2, -96	# 812
	jal		x1, min_caml_read_float	# 812
	addi	x2, x2, 96	# 812
	lw		x1, -92(x2)	# 812
	fadd	f2, f0, f18	# 677
	fmul	f1, f1, f2	# 677
	addi	x4, x0, 4	# 812
	lw		x5, -88(x2)	# 812
	mul		x4, x5, x4	# 812
	lw		x5, -76(x2)	# 812
	add		x4, x5, x4	# 812
	fsw		f1, 0(x4)	# 812
beq_cont.18033:
	lw		x4, -16(x2)	# 819
	lw		x5, -44(x2)	# 819
	beq		x5, x4, beq.18035	# 819
	lw		x4, -64(x2)	# 819
	jal		x0, beq_cont.18034	# 819
beq.18035:
	addi	x4, x0, 1	# 819
beq_cont.18034:
	addi	x6, x0, 4	# 820
	flw		f1, -28(x2)	# 820
	sw		x4, -92(x2)	# 820
	addi	x4, x6, 0
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
	lw		x8, -52(x2)	# 823
	sw		x8, 12(x5)	# 823
	lw		x9, -48(x2)	# 823
	sw		x9, 8(x5)	# 823
	lw		x9, -44(x2)	# 823
	sw		x9, 4(x5)	# 823
	lw		x10, -40(x2)	# 823
	sw		x10, 0(x5)	# 823
	addi	x10, x7, 48	# 831
	addi	x11, x0, 4	# 831
	lw		x12, -12(x2)	# 831
	mul		x11, x12, x11	# 831
	add		x10, x10, x11	# 831
	sw		x5, 0(x10)	# 831
	lw		x5, -32(x2)	# 833
	beq		x9, x5, beq.18037	# 833
	addi	x5, x0, 2	# 843
	beq		x9, x5, beq.18039	# 843
	jal		x0, beq_cont.18038	# 843
beq.18039:
	addi	x5, x0, 0	# 845
	lw		x9, -64(x2)	# 845
	beq		x9, x5, beq.18041	# 845
	addi	x5, x0, 0	# 845
	jal		x0, beq_cont.18040	# 845
beq.18041:
	addi	x5, x0, 1	# 845
beq_cont.18040:
	lw		x27, -4(x2)	# 845
	addi	x4, x6, 0
	sw		x1, -96(x2)	# 845
	addi	x2, x2, -100	# 845
	lw		x31, 0(x27)	# 845
	jalr	x1, x31, 0	# 845
	addi	x2, x2, 100	# 845
	lw		x1, -96(x2)	# 845
beq_cont.18038:
	jal		x0, beq_cont.18036	# 833
beq.18037:
	addi	x5, x0, 0	# 836
	addi	x9, x0, 4	# 836
	mul		x5, x5, x9	# 836
	add		x5, x6, x5	# 836
	flw		f1, 0(x5)	# 836
	addi	x5, x0, 0	# 837
	fadd	f2, f0, f0	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.18043	# 1
	addi	x9, x0, 1	# 1
	jal		x0, feq_cont.18042	# 1
feq_else.18043:
	addi	x9, x0, 0	# 1
feq_cont.18042:
	addi	x10, x0, 0	# 837
	sw		x5, -96(x2)	# 837
	beq		x9, x10, beq.18045	# 837
	fadd	f1, f0, f0	# 837
	jal		x0, beq_cont.18044	# 837
beq.18045:
	lw		x27, -8(x2)	# 837
	fsw		f1, -100(x2)	# 837
	sw		x1, -104(x2)	# 837
	addi	x2, x2, -108	# 837
	lw		x31, 0(x27)	# 837
	jalr	x1, x31, 0	# 837
	addi	x2, x2, 108	# 837
	lw		x1, -104(x2)	# 837
	flw		f2, -100(x2)	# 8
	fmul	f2, f2, f2	# 8
	fdiv	f1, f1, f2	# 837
beq_cont.18044:
	addi	x4, x0, 4	# 837
	lw		x5, -96(x2)	# 837
	mul		x4, x5, x4	# 837
	lw		x5, -56(x2)	# 837
	add		x4, x5, x4	# 837
	fsw		f1, 0(x4)	# 837
	addi	x4, x0, 1	# 838
	addi	x6, x0, 4	# 838
	mul		x4, x4, x6	# 838
	add		x4, x5, x4	# 838
	flw		f1, 0(x4)	# 838
	addi	x4, x0, 1	# 839
	fadd	f2, f0, f0	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.18047	# 1
	addi	x6, x0, 1	# 1
	jal		x0, feq_cont.18046	# 1
feq_else.18047:
	addi	x6, x0, 0	# 1
feq_cont.18046:
	addi	x8, x0, 0	# 839
	sw		x4, -104(x2)	# 839
	beq		x6, x8, beq.18049	# 839
	fadd	f1, f0, f0	# 839
	jal		x0, beq_cont.18048	# 839
beq.18049:
	lw		x27, -8(x2)	# 839
	fsw		f1, -108(x2)	# 839
	sw		x1, -112(x2)	# 839
	addi	x2, x2, -116	# 839
	lw		x31, 0(x27)	# 839
	jalr	x1, x31, 0	# 839
	addi	x2, x2, 116	# 839
	lw		x1, -112(x2)	# 839
	flw		f2, -108(x2)	# 8
	fmul	f2, f2, f2	# 8
	fdiv	f1, f1, f2	# 839
beq_cont.18048:
	addi	x4, x0, 4	# 839
	lw		x5, -104(x2)	# 839
	mul		x4, x5, x4	# 839
	lw		x5, -56(x2)	# 839
	add		x4, x5, x4	# 839
	fsw		f1, 0(x4)	# 839
	addi	x4, x0, 2	# 840
	addi	x6, x0, 4	# 840
	mul		x4, x4, x6	# 840
	add		x4, x5, x4	# 840
	flw		f1, 0(x4)	# 840
	addi	x4, x0, 2	# 841
	fadd	f2, f0, f0	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.18051	# 1
	addi	x6, x0, 1	# 1
	jal		x0, feq_cont.18050	# 1
feq_else.18051:
	addi	x6, x0, 0	# 1
feq_cont.18050:
	addi	x8, x0, 0	# 841
	sw		x4, -112(x2)	# 841
	beq		x6, x8, beq.18053	# 841
	fadd	f1, f0, f0	# 841
	jal		x0, beq_cont.18052	# 841
beq.18053:
	lw		x27, -8(x2)	# 841
	fsw		f1, -116(x2)	# 841
	sw		x1, -120(x2)	# 841
	addi	x2, x2, -124	# 841
	lw		x31, 0(x27)	# 841
	jalr	x1, x31, 0	# 841
	addi	x2, x2, 124	# 841
	lw		x1, -120(x2)	# 841
	flw		f2, -116(x2)	# 8
	fmul	f2, f2, f2	# 8
	fdiv	f1, f1, f2	# 841
beq_cont.18052:
	addi	x4, x0, 4	# 841
	lw		x5, -112(x2)	# 841
	mul		x4, x5, x4	# 841
	lw		x5, -56(x2)	# 841
	add		x4, x5, x4	# 841
	fsw		f1, 0(x4)	# 841
beq_cont.18036:
	lw		x4, -24(x2)	# 849
	lw		x5, -52(x2)	# 849
	beq		x5, x4, beq_cont.18054	# 849
	lw		x4, -56(x2)	# 850
	lw		x5, -76(x2)	# 850
	lw		x27, 0(x2)	# 850
	sw		x1, -120(x2)	# 850
	addi	x2, x2, -124	# 850
	lw		x31, 0(x27)	# 850
	jalr	x1, x31, 0	# 850
	addi	x2, x2, 124	# 850
	lw		x1, -120(x2)	# 850
beq_cont.18054:
	addi	x4, x0, 1	# 853
	jalr	x0, x1, 0	# 853
beq.18030:
	addi	x4, x0, 0	# 856
	jalr	x0, x1, 0	# 856
read_object.2672.8732:
	lw		x5, 16(x27)	# 861
	lw		x6, 12(x27)	# 861
	lw		x8, 8(x27)	# 861
	lw		x9, 4(x27)	# 861
	ble		x6, x4, ble.18055	# 861
	sw		x27, 0(x2)	# 862
	sw		x5, -4(x2)	# 862
	sw		x6, -8(x2)	# 862
	sw		x9, -12(x2)	# 862
	sw		x4, -16(x2)	# 862
	sw		x8, -20(x2)	# 862
	addi	x27, x5, 0
	sw		x1, -24(x2)	# 862
	addi	x2, x2, -28	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 28	# 862
	lw		x1, -24(x2)	# 862
	lw		x5, -20(x2)	# 862
	beq		x4, x5, beq.18056	# 862
	lw		x4, -12(x2)	# 863
	lw		x6, -16(x2)	# 863
	add		x6, x6, x4	# 863
	lw		x8, -8(x2)	# 861
	ble		x8, x6, ble.18057	# 861
	lw		x27, -4(x2)	# 862
	sw		x6, -24(x2)	# 862
	addi	x4, x6, 0
	sw		x1, -28(x2)	# 862
	addi	x2, x2, -32	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 32	# 862
	lw		x1, -28(x2)	# 862
	lw		x5, -20(x2)	# 862
	beq		x4, x5, beq.18058	# 862
	lw		x4, -12(x2)	# 863
	lw		x5, -24(x2)	# 863
	add		x4, x5, x4	# 863
	lw		x27, 0(x2)	# 863
	lw		x31, 0(x27)	# 863
	jalr	x0, x31, 0	# 863
beq.18058:
	addi	x4, x7, 0	# 865
	addi	x6, x0, 4	# 865
	mul		x5, x5, x6	# 865
	add		x4, x4, x5	# 865
	lw		x5, -24(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.18057:
	jalr	x0, x1, 0	# 866
beq.18056:
	addi	x4, x7, 0	# 865
	addi	x6, x0, 4	# 865
	mul		x5, x5, x6	# 865
	add		x4, x4, x5	# 865
	lw		x5, -16(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.18055:
	jalr	x0, x1, 0	# 866
read_net_item.2676.8734:
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
	beq		x4, x5, beq.18063	# 878
	lw		x5, -4(x2)	# 880
	lw		x6, -8(x2)	# 880
	add		x5, x6, x5	# 880
	lw		x27, 0(x2)	# 880
	sw		x4, -16(x2)	# 880
	addi	x4, x5, 0
	sw		x1, -20(x2)	# 880
	addi	x2, x2, -24	# 880
	lw		x31, 0(x27)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 24	# 880
	lw		x1, -20(x2)	# 880
	addi	x5, x0, 4	# 881
	lw		x6, -8(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -16(x2)	# 881
	sw		x6, 0(x5)	# 881
	jalr	x0, x1, 0	# 881
beq.18063:
	lw		x4, -4(x2)	# 878
	lw		x6, -8(x2)	# 878
	add		x4, x6, x4	# 878
	jal		x0, min_caml_create_array	# 878
read_or_network.2678.8736:
	lw		x5, 16(x27)	# 885
	lw		x6, 12(x27)	# 885
	lw		x8, 8(x27)	# 885
	lw		x9, 4(x27)	# 885
	sw		x27, 0(x2)	# 885
	sw		x9, -4(x2)	# 885
	sw		x4, -8(x2)	# 885
	sw		x6, -12(x2)	# 885
	sw		x8, -16(x2)	# 885
	addi	x4, x8, 0
	addi	x27, x5, 0
	sw		x1, -20(x2)	# 885
	addi	x2, x2, -24	# 885
	lw		x31, 0(x27)	# 885
	jalr	x1, x31, 0	# 885
	addi	x2, x2, 24	# 885
	lw		x1, -20(x2)	# 885
	addi	x5, x4, 0	# 885
	addi	x4, x0, 4	# 886
	lw		x6, -16(x2)	# 886
	mul		x4, x6, x4	# 886
	add		x4, x5, x4	# 886
	lw		x4, 0(x4)	# 886
	lw		x6, -12(x2)	# 886
	beq		x4, x6, beq.18064	# 886
	lw		x4, -4(x2)	# 889
	lw		x6, -8(x2)	# 889
	add		x4, x6, x4	# 889
	lw		x27, 0(x2)	# 889
	sw		x5, -20(x2)	# 889
	sw		x1, -24(x2)	# 889
	addi	x2, x2, -28	# 889
	lw		x31, 0(x27)	# 889
	jalr	x1, x31, 0	# 889
	addi	x2, x2, 28	# 889
	lw		x1, -24(x2)	# 889
	addi	x5, x0, 4	# 890
	lw		x6, -8(x2)	# 890
	mul		x5, x6, x5	# 890
	add		x5, x4, x5	# 890
	lw		x6, -20(x2)	# 890
	sw		x6, 0(x5)	# 890
	jalr	x0, x1, 0	# 890
beq.18064:
	lw		x4, -4(x2)	# 887
	lw		x6, -8(x2)	# 887
	add		x4, x6, x4	# 887
	jal		x0, min_caml_create_array	# 887
read_and_network.2680.8738:
	lw		x5, 16(x27)	# 894
	lw		x6, 12(x27)	# 894
	lw		x8, 8(x27)	# 894
	lw		x9, 4(x27)	# 894
	sw		x27, 0(x2)	# 894
	sw		x9, -4(x2)	# 894
	sw		x4, -8(x2)	# 894
	sw		x6, -12(x2)	# 894
	sw		x8, -16(x2)	# 894
	addi	x4, x8, 0
	addi	x27, x5, 0
	sw		x1, -20(x2)	# 894
	addi	x2, x2, -24	# 894
	lw		x31, 0(x27)	# 894
	jalr	x1, x31, 0	# 894
	addi	x2, x2, 24	# 894
	lw		x1, -20(x2)	# 894
	addi	x5, x0, 4	# 895
	lw		x6, -16(x2)	# 895
	mul		x5, x6, x5	# 895
	add		x5, x4, x5	# 895
	lw		x5, 0(x5)	# 895
	lw		x6, -12(x2)	# 895
	beq		x5, x6, beq.18065	# 895
	addi	x5, x7, 332	# 897
	addi	x6, x0, 4	# 897
	lw		x8, -8(x2)	# 897
	mul		x6, x8, x6	# 897
	add		x5, x5, x6	# 897
	sw		x4, 0(x5)	# 897
	lw		x4, -4(x2)	# 898
	add		x4, x8, x4	# 898
	lw		x27, 0(x2)	# 898
	lw		x31, 0(x27)	# 898
	jalr	x0, x31, 0	# 898
beq.18065:
	jalr	x0, x1, 0	# 895
read_parameter.2682.8740:
	lw		x4, 28(x27)	# 904
	lw		x5, 24(x27)	# 904
	lw		x6, 20(x27)	# 904
	lw		x8, 16(x27)	# 904
	lw		x9, 12(x27)	# 904
	lw		x10, 8(x27)	# 904
	lw		x11, 4(x27)	# 904
	sw		x5, 0(x2)	# 904
	sw		x10, -4(x2)	# 904
	sw		x6, -8(x2)	# 904
	sw		x11, -12(x2)	# 904
	sw		x8, -16(x2)	# 904
	sw		x9, -20(x2)	# 904
	addi	x27, x4, 0
	sw		x1, -24(x2)	# 904
	addi	x2, x2, -28	# 904
	lw		x31, 0(x27)	# 904
	jalr	x1, x31, 0	# 904
	addi	x2, x2, 28	# 904
	lw		x1, -24(x2)	# 904
	lw		x27, -20(x2)	# 905
	sw		x1, -24(x2)	# 905
	addi	x2, x2, -28	# 905
	lw		x31, 0(x27)	# 905
	jalr	x1, x31, 0	# 905
	addi	x2, x2, 28	# 905
	lw		x1, -24(x2)	# 905
	lw		x4, -12(x2)	# 862
	lw		x27, -16(x2)	# 862
	sw		x1, -24(x2)	# 862
	addi	x2, x2, -28	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 28	# 862
	lw		x1, -24(x2)	# 862
	lw		x5, -12(x2)	# 862
	beq		x4, x5, beq.18068	# 862
	addi	x4, x0, 1	# 863
	lw		x27, -8(x2)	# 863
	sw		x1, -24(x2)	# 863
	addi	x2, x2, -28	# 863
	lw		x31, 0(x27)	# 863
	jalr	x1, x31, 0	# 863
	addi	x2, x2, 28	# 863
	lw		x1, -24(x2)	# 863
	jal		x0, beq_cont.18067	# 862
beq.18068:
	addi	x4, x7, 0	# 865
	addi	x6, x0, 4	# 865
	mul		x6, x5, x6	# 865
	add		x4, x4, x6	# 865
	sw		x5, 0(x4)	# 865
beq_cont.18067:
	lw		x4, -12(x2)	# 907
	lw		x27, -4(x2)	# 907
	sw		x1, -24(x2)	# 907
	addi	x2, x2, -28	# 907
	lw		x31, 0(x27)	# 907
	jalr	x1, x31, 0	# 907
	addi	x2, x2, 28	# 907
	lw		x1, -24(x2)	# 907
	lw		x4, -12(x2)	# 908
	lw		x27, 0(x2)	# 908
	sw		x1, -24(x2)	# 908
	addi	x2, x2, -28	# 908
	lw		x31, 0(x27)	# 908
	jalr	x1, x31, 0	# 908
	addi	x2, x2, 28	# 908
	lw		x1, -24(x2)	# 908
	addi	x5, x7, 536	# 908
	addi	x6, x0, 4	# 908
	lw		x8, -12(x2)	# 908
	mul		x6, x8, x6	# 908
	add		x5, x5, x6	# 908
	sw		x4, 0(x5)	# 908
	jalr	x0, x1, 0	# 908
solver_rect_surface.2684.8742:
	lw		x10, 8(x27)	# 928
	flw		f4, 4(x27)	# 928
	addi	x11, x0, 4	# 928
	mul		x11, x6, x11	# 928
	add		x11, x5, x11	# 928
	flw		f5, 0(x11)	# 928
	feq		x31, f5, f4	# 1
	beq		x31, x0, feq_else.18071	# 1
	addi	x11, x0, 1	# 1
	jal		x0, feq_cont.18070	# 1
feq_else.18071:
	addi	x11, x0, 0	# 1
feq_cont.18070:
	beq		x11, x10, beq.18072	# 928
	addi	x4, x0, 0	# 928
	jalr	x0, x1, 0	# 928
beq.18072:
	lw		x11, 16(x4)	# 421
	lw		x4, 24(x4)	# 373
	fle		x31, f4, f5	# 3
	beq		x31, x0, fle_else.18074	# 3
	addi	x12, x0, 0	# 3
	jal		x0, fle_cont.18073	# 3
fle_else.18074:
	addi	x12, x0, 1	# 3
fle_cont.18073:
	beq		x4, x10, beq.18076	# 204
	beq		x12, x10, beq.18078	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.18077	# 204
beq.18078:
	addi	x4, x0, 1	# 204
beq_cont.18077:
	jal		x0, beq_cont.18075	# 204
beq.18076:
	addi	x4, x12, 0	# 204
beq_cont.18075:
	addi	x12, x0, 4	# 930
	mul		x6, x6, x12	# 930
	add		x6, x11, x6	# 930
	flw		f6, 0(x6)	# 930
	beq		x4, x10, beq.18080	# 219
	jal		x0, beq_cont.18079	# 219
beq.18080:
	fsub	f6, f0, f6	# 4
beq_cont.18079:
	fsub	f1, f6, f1	# 932
	fdiv	f1, f1, f5	# 932
	addi	x4, x0, 4	# 933
	mul		x4, x8, x4	# 933
	add		x4, x5, x4	# 933
	flw		f5, 0(x4)	# 933
	fmul	f5, f1, f5	# 933
	fadd	f2, f5, f2	# 933
	fle		x31, f2, f4	# 5
	beq		x31, x0, fle_cont.18081	# 5
	fsub	f2, f0, f2	# 5
fle_cont.18081:
	addi	x4, x0, 4	# 933
	mul		x4, x8, x4	# 933
	add		x4, x11, x4	# 933
	flw		f5, 0(x4)	# 933
	fle		x31, f5, f2	# 6
	beq		x31, x0, fle_else.18083	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18082	# 6
fle_else.18083:
	addi	x4, x0, 1	# 6
fle_cont.18082:
	beq		x4, x10, beq.18084	# 933
	addi	x4, x0, 4	# 934
	mul		x4, x9, x4	# 934
	add		x4, x5, x4	# 934
	flw		f2, 0(x4)	# 934
	fmul	f2, f1, f2	# 934
	fadd	f2, f2, f3	# 934
	fle		x31, f2, f4	# 5
	beq		x31, x0, fle_cont.18085	# 5
	fsub	f2, f0, f2	# 5
fle_cont.18085:
	addi	x4, x0, 4	# 934
	mul		x4, x9, x4	# 934
	add		x4, x11, x4	# 934
	flw		f3, 0(x4)	# 934
	fle		x31, f3, f2	# 6
	beq		x31, x0, fle_else.18087	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18086	# 6
fle_else.18087:
	addi	x4, x0, 1	# 6
fle_cont.18086:
	beq		x4, x10, beq.18088	# 934
	addi	x4, x7, 540	# 935
	addi	x5, x0, 4	# 935
	mul		x5, x10, x5	# 935
	add		x4, x4, x5	# 935
	fsw		f1, 0(x4)	# 935
	addi	x4, x0, 1	# 935
	jalr	x0, x1, 0	# 935
beq.18088:
	addi	x4, x0, 0	# 936
	jalr	x0, x1, 0	# 936
beq.18084:
	addi	x4, x0, 0	# 937
	jalr	x0, x1, 0	# 937
solver_rect.2693.8751:
	lw		x6, 16(x27)	# 943
	lw		x9, 12(x27)	# 943
	lw		x8, 8(x27)	# 943
	lw		x10, 4(x27)	# 943
	fsw		f1, 0(x2)	# 943
	fsw		f3, -4(x2)	# 943
	fsw		f2, -8(x2)	# 943
	sw		x9, -12(x2)	# 943
	sw		x10, -16(x2)	# 943
	sw		x5, -20(x2)	# 943
	sw		x4, -24(x2)	# 943
	sw		x6, -28(x2)	# 943
	sw		x8, -32(x2)	# 943
	addi	x27, x6, 0
	addi	x6, x8, 0
	addi	x8, x10, 0
	sw		x1, -36(x2)	# 943
	addi	x2, x2, -40	# 943
	lw		x31, 0(x27)	# 943
	jalr	x1, x31, 0	# 943
	addi	x2, x2, 40	# 943
	lw		x1, -36(x2)	# 943
	lw		x9, -32(x2)	# 943
	beq		x4, x9, beq.18089	# 943
	addi	x4, x0, 1	# 943
	jalr	x0, x1, 0	# 943
beq.18089:
	flw		f1, -8(x2)	# 944
	flw		f2, -4(x2)	# 944
	flw		f3, 0(x2)	# 944
	lw		x4, -24(x2)	# 944
	lw		x5, -20(x2)	# 944
	lw		x6, -16(x2)	# 944
	lw		x8, -12(x2)	# 944
	lw		x27, -28(x2)	# 944
	sw		x1, -36(x2)	# 944
	addi	x2, x2, -40	# 944
	lw		x31, 0(x27)	# 944
	jalr	x1, x31, 0	# 944
	addi	x2, x2, 40	# 944
	lw		x1, -36(x2)	# 944
	lw		x8, -32(x2)	# 944
	beq		x4, x8, beq.18090	# 944
	addi	x4, x0, 2	# 944
	jalr	x0, x1, 0	# 944
beq.18090:
	flw		f1, -4(x2)	# 945
	flw		f2, 0(x2)	# 945
	flw		f3, -8(x2)	# 945
	lw		x4, -24(x2)	# 945
	lw		x5, -20(x2)	# 945
	lw		x6, -12(x2)	# 945
	lw		x9, -16(x2)	# 945
	lw		x27, -28(x2)	# 945
	sw		x1, -36(x2)	# 945
	addi	x2, x2, -40	# 945
	lw		x31, 0(x27)	# 945
	jalr	x1, x31, 0	# 945
	addi	x2, x2, 40	# 945
	lw		x1, -36(x2)	# 945
	lw		x5, -32(x2)	# 945
	beq		x4, x5, beq.18091	# 945
	addi	x4, x0, 3	# 945
	jalr	x0, x1, 0	# 945
beq.18091:
	addi	x4, x0, 0	# 946
	jalr	x0, x1, 0	# 946
solver_surface.2699.8757:
	lw		x6, 16(x27)	# 421
	lw		x8, 12(x27)	# 421
	lw		x9, 8(x27)	# 421
	flw		f4, 4(x27)	# 421
	lw		x4, 16(x4)	# 421
	fsw		f3, 0(x2)	# 955
	fsw		f2, -4(x2)	# 955
	fsw		f1, -8(x2)	# 955
	sw		x4, -12(x2)	# 955
	sw		x6, -16(x2)	# 955
	sw		x9, -20(x2)	# 955
	fsw		f4, -24(x2)	# 955
	addi	x27, x8, 0
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -28(x2)	# 955
	addi	x2, x2, -32	# 955
	lw		x31, 0(x27)	# 955
	jalr	x1, x31, 0	# 955
	addi	x2, x2, 32	# 955
	lw		x1, -28(x2)	# 955
	flw		f2, -24(x2)	# 2
	fle		x31, f1, f2	# 2
	beq		x31, x0, fle_else.18093	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.18092	# 2
fle_else.18093:
	addi	x4, x0, 1	# 2
fle_cont.18092:
	lw		x5, -20(x2)	# 956
	beq		x4, x5, beq.18094	# 956
	flw		f2, -8(x2)	# 957
	flw		f3, -4(x2)	# 957
	flw		f4, 0(x2)	# 957
	lw		x4, -12(x2)	# 957
	lw		x27, -16(x2)	# 957
	fsw		f1, -28(x2)	# 957
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -32(x2)	# 957
	addi	x2, x2, -36	# 957
	lw		x31, 0(x27)	# 957
	jalr	x1, x31, 0	# 957
	addi	x2, x2, 36	# 957
	lw		x1, -32(x2)	# 957
	fsub	f1, f0, f1	# 4
	flw		f2, -28(x2)	# 957
	fdiv	f1, f1, f2	# 957
	addi	x4, x7, 540	# 957
	addi	x5, x0, 4	# 957
	lw		x6, -20(x2)	# 957
	mul		x5, x6, x5	# 957
	add		x4, x4, x5	# 957
	fsw		f1, 0(x4)	# 957
	addi	x4, x0, 1	# 958
	jalr	x0, x1, 0	# 958
beq.18094:
	addi	x4, x0, 0	# 959
	jalr	x0, x1, 0	# 959
quadratic.2705.8763:
	lw		x5, 12(x27)	# 967
	lw		x6, 8(x27)	# 967
	lw		x8, 4(x27)	# 967
	fmul	f4, f1, f1	# 8
	lw		x9, 16(x4)	# 391
	addi	x10, x0, 4	# 396
	mul		x10, x6, x10	# 396
	add		x9, x9, x10	# 396
	flw		f5, 0(x9)	# 396
	fmul	f4, f4, f5	# 967
	fmul	f5, f2, f2	# 8
	lw		x9, 16(x4)	# 401
	addi	x10, x0, 4	# 406
	mul		x10, x8, x10	# 406
	add		x9, x9, x10	# 406
	flw		f6, 0(x9)	# 406
	fmul	f5, f5, f6	# 967
	fadd	f4, f4, f5	# 967
	fmul	f5, f3, f3	# 8
	lw		x9, 16(x4)	# 411
	addi	x10, x0, 4	# 416
	mul		x10, x5, x10	# 416
	add		x9, x9, x10	# 416
	flw		f6, 0(x9)	# 416
	fmul	f5, f5, f6	# 967
	fadd	f4, f4, f5	# 967
	lw		x9, 12(x4)	# 382
	beq		x9, x6, beq.18095	# 969
	fmul	f5, f2, f3	# 973
	lw		x9, 36(x4)	# 511
	addi	x10, x0, 4	# 516
	mul		x6, x6, x10	# 516
	add		x6, x9, x6	# 516
	flw		f6, 0(x6)	# 516
	fmul	f5, f5, f6	# 973
	fadd	f4, f4, f5	# 972
	fmul	f3, f3, f1	# 974
	lw		x6, 36(x4)	# 521
	addi	x9, x0, 4	# 526
	mul		x8, x8, x9	# 526
	add		x6, x6, x8	# 526
	flw		f5, 0(x6)	# 526
	fmul	f3, f3, f5	# 974
	fadd	f3, f4, f3	# 972
	fmul	f1, f1, f2	# 975
	lw		x4, 36(x4)	# 531
	addi	x6, x0, 4	# 536
	mul		x5, x5, x6	# 536
	add		x4, x4, x5	# 536
	flw		f2, 0(x4)	# 536
	fmul	f1, f1, f2	# 975
	fadd	f1, f3, f1	# 972
	jalr	x0, x1, 0	# 972
beq.18095:
	fadd	f1, f0, f4	# 970
	jalr	x0, x1, 0	# 970
bilinear.2710.8768:
	lw		x5, 12(x27)	# 981
	lw		x6, 8(x27)	# 981
	lw		x8, 4(x27)	# 981
	fmul	f7, f1, f4	# 981
	lw		x9, 16(x4)	# 391
	addi	x10, x0, 4	# 396
	mul		x10, x6, x10	# 396
	add		x9, x9, x10	# 396
	flw		f8, 0(x9)	# 396
	fmul	f7, f7, f8	# 981
	fmul	f8, f2, f5	# 982
	lw		x9, 16(x4)	# 401
	addi	x10, x0, 4	# 406
	mul		x10, x8, x10	# 406
	add		x9, x9, x10	# 406
	flw		f9, 0(x9)	# 406
	fmul	f8, f8, f9	# 982
	fadd	f7, f7, f8	# 981
	fmul	f8, f3, f6	# 983
	lw		x9, 16(x4)	# 411
	addi	x10, x0, 4	# 416
	mul		x10, x5, x10	# 416
	add		x9, x9, x10	# 416
	flw		f9, 0(x9)	# 416
	fmul	f8, f8, f9	# 983
	fadd	f7, f7, f8	# 981
	lw		x9, 12(x4)	# 382
	beq		x9, x6, beq.18096	# 985
	fmul	f8, f3, f5	# 989
	fmul	f9, f2, f6	# 989
	fadd	f8, f8, f9	# 989
	lw		x9, 36(x4)	# 511
	addi	x10, x0, 4	# 516
	mul		x6, x6, x10	# 516
	add		x6, x9, x6	# 516
	flw		f9, 0(x6)	# 516
	fmul	f8, f8, f9	# 989
	fmul	f6, f1, f6	# 990
	fmul	f3, f3, f4	# 990
	fadd	f3, f6, f3	# 990
	lw		x6, 36(x4)	# 521
	addi	x9, x0, 4	# 526
	mul		x8, x8, x9	# 526
	add		x6, x6, x8	# 526
	flw		f6, 0(x6)	# 526
	fmul	f3, f3, f6	# 990
	fadd	f3, f8, f3	# 989
	fmul	f1, f1, f5	# 991
	fmul	f2, f2, f4	# 991
	fadd	f1, f1, f2	# 991
	lw		x4, 36(x4)	# 531
	addi	x6, x0, 4	# 536
	mul		x5, x5, x6	# 536
	add		x4, x4, x5	# 536
	flw		f2, 0(x4)	# 536
	fmul	f1, f1, f2	# 991
	fadd	f1, f3, f1	# 989
	fadd	f2, f0, f17	# 7
	fmul	f1, f1, f2	# 7
	fadd	f1, f7, f1	# 988
	jalr	x0, x1, 0	# 988
beq.18096:
	fadd	f1, f0, f7	# 986
	jalr	x0, x1, 0	# 986
solver_second.2718.8776:
	lw		x6, 28(x27)	# 1006
	lw		x8, 24(x27)	# 1006
	lw		x9, 20(x27)	# 1006
	lw		x10, 16(x27)	# 1006
	lw		x11, 12(x27)	# 1006
	lw		x12, 8(x27)	# 1006
	flw		f4, 4(x27)	# 1006
	addi	x13, x0, 4	# 1006
	mul		x13, x11, x13	# 1006
	add		x13, x5, x13	# 1006
	flw		f5, 0(x13)	# 1006
	addi	x13, x0, 4	# 1006
	mul		x13, x12, x13	# 1006
	add		x13, x5, x13	# 1006
	flw		f6, 0(x13)	# 1006
	addi	x13, x0, 4	# 1006
	mul		x13, x9, x13	# 1006
	add		x13, x5, x13	# 1006
	flw		f7, 0(x13)	# 1006
	sw		x10, 0(x2)	# 1006
	sw		x6, -4(x2)	# 1006
	fsw		f3, -8(x2)	# 1006
	fsw		f2, -12(x2)	# 1006
	fsw		f1, -16(x2)	# 1006
	sw		x4, -20(x2)	# 1006
	sw		x8, -24(x2)	# 1006
	sw		x9, -28(x2)	# 1006
	sw		x12, -32(x2)	# 1006
	sw		x5, -36(x2)	# 1006
	sw		x11, -40(x2)	# 1006
	fsw		f4, -44(x2)	# 1006
	addi	x27, x6, 0
	fadd	f3, f0, f7
	fadd	f2, f0, f6
	fadd	f1, f0, f5
	sw		x1, -48(x2)	# 1006
	addi	x2, x2, -52	# 1006
	lw		x31, 0(x27)	# 1006
	jalr	x1, x31, 0	# 1006
	addi	x2, x2, 52	# 1006
	lw		x1, -48(x2)	# 1006
	flw		f2, -44(x2)	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.18098	# 1
	addi	x4, x0, 1	# 1
	jal		x0, feq_cont.18097	# 1
feq_else.18098:
	addi	x4, x0, 0	# 1
feq_cont.18097:
	lw		x5, -40(x2)	# 1008
	beq		x4, x5, beq.18099	# 1008
	addi	x4, x0, 0	# 1009
	jalr	x0, x1, 0	# 1009
beq.18099:
	addi	x4, x0, 4	# 1013
	mul		x4, x5, x4	# 1013
	lw		x6, -36(x2)	# 1013
	add		x4, x6, x4	# 1013
	flw		f3, 0(x4)	# 1013
	addi	x4, x0, 4	# 1013
	lw		x8, -32(x2)	# 1013
	mul		x4, x8, x4	# 1013
	add		x4, x6, x4	# 1013
	flw		f4, 0(x4)	# 1013
	addi	x4, x0, 4	# 1013
	lw		x8, -28(x2)	# 1013
	mul		x4, x8, x4	# 1013
	add		x4, x6, x4	# 1013
	flw		f5, 0(x4)	# 1013
	flw		f6, -16(x2)	# 1013
	flw		f7, -12(x2)	# 1013
	flw		f8, -8(x2)	# 1013
	lw		x4, -20(x2)	# 1013
	lw		x27, -24(x2)	# 1013
	fsw		f1, -48(x2)	# 1013
	fadd	f2, f0, f4
	fadd	f1, f0, f3
	fadd	f4, f0, f6
	fadd	f3, f0, f5
	fadd	f6, f0, f8
	fadd	f5, f0, f7
	sw		x1, -52(x2)	# 1013
	addi	x2, x2, -56	# 1013
	lw		x31, 0(x27)	# 1013
	jalr	x1, x31, 0	# 1013
	addi	x2, x2, 56	# 1013
	lw		x1, -52(x2)	# 1013
	flw		f2, -16(x2)	# 1015
	flw		f3, -12(x2)	# 1015
	flw		f4, -8(x2)	# 1015
	lw		x4, -20(x2)	# 1015
	lw		x27, -4(x2)	# 1015
	fsw		f1, -52(x2)	# 1015
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -56(x2)	# 1015
	addi	x2, x2, -60	# 1015
	lw		x31, 0(x27)	# 1015
	jalr	x1, x31, 0	# 1015
	addi	x2, x2, 60	# 1015
	lw		x1, -56(x2)	# 1015
	lw		x4, -20(x2)	# 353
	lw		x5, 4(x4)	# 353
	lw		x6, 0(x2)	# 1016
	beq		x5, x6, beq.18101	# 1016
	jal		x0, beq_cont.18100	# 1016
beq.18101:
	fadd	f2, f0, f16	# 1016
	fsub	f1, f1, f2	# 1016
beq_cont.18100:
	flw		f2, -52(x2)	# 8
	fmul	f3, f2, f2	# 8
	flw		f4, -48(x2)	# 1018
	fmul	f1, f4, f1	# 1018
	fsub	f1, f3, f1	# 1018
	flw		f3, -44(x2)	# 2
	fle		x31, f1, f3	# 2
	beq		x31, x0, fle_else.18103	# 2
	addi	x5, x0, 0	# 2
	jal		x0, fle_cont.18102	# 2
fle_else.18103:
	addi	x5, x0, 1	# 2
fle_cont.18102:
	lw		x6, -40(x2)	# 1020
	beq		x5, x6, beq.18104	# 1020
	fsqrt	f1, f1	# 1021
	lw		x4, 24(x4)	# 373
	beq		x4, x6, beq.18106	# 1022
	jal		x0, beq_cont.18105	# 1022
beq.18106:
	fsub	f1, f0, f1	# 4
beq_cont.18105:
	fsub	f1, f1, f2	# 1023
	fdiv	f1, f1, f4	# 1023
	addi	x4, x7, 540	# 1023
	addi	x5, x0, 4	# 1023
	mul		x5, x6, x5	# 1023
	add		x4, x4, x5	# 1023
	fsw		f1, 0(x4)	# 1023
	addi	x4, x0, 1	# 1023
	jalr	x0, x1, 0	# 1023
beq.18104:
	addi	x4, x0, 0	# 1026
	jalr	x0, x1, 0	# 1026
solver.2724.8782:
	lw		x8, 24(x27)	# 1032
	lw		x9, 20(x27)	# 1032
	lw		x10, 16(x27)	# 1032
	lw		x11, 12(x27)	# 1032
	lw		x12, 8(x27)	# 1032
	lw		x13, 4(x27)	# 1032
	addi	x14, x7, 48	# 1032
	addi	x15, x0, 4	# 1032
	mul		x4, x4, x15	# 1032
	add		x4, x14, x4	# 1032
	lw		x4, 0(x4)	# 1032
	addi	x14, x0, 4	# 1034
	mul		x14, x12, x14	# 1034
	add		x14, x6, x14	# 1034
	flw		f1, 0(x14)	# 1034
	lw		x14, 20(x4)	# 431
	addi	x15, x0, 4	# 436
	mul		x12, x12, x15	# 436
	add		x12, x14, x12	# 436
	flw		f2, 0(x12)	# 436
	fsub	f1, f1, f2	# 1034
	addi	x12, x0, 4	# 1035
	mul		x12, x13, x12	# 1035
	add		x12, x6, x12	# 1035
	flw		f2, 0(x12)	# 1035
	lw		x12, 20(x4)	# 441
	addi	x14, x0, 4	# 446
	mul		x14, x13, x14	# 446
	add		x12, x12, x14	# 446
	flw		f3, 0(x12)	# 446
	fsub	f2, f2, f3	# 1035
	addi	x12, x0, 4	# 1036
	mul		x12, x11, x12	# 1036
	add		x6, x6, x12	# 1036
	flw		f3, 0(x6)	# 1036
	lw		x6, 20(x4)	# 451
	addi	x12, x0, 4	# 456
	mul		x12, x11, x12	# 456
	add		x6, x6, x12	# 456
	flw		f4, 0(x6)	# 456
	fsub	f3, f3, f4	# 1036
	lw		x6, 4(x4)	# 353
	beq		x6, x13, beq.18107	# 1039
	beq		x6, x11, beq.18108	# 1040
	addi	x27, x9, 0
	lw		x31, 0(x27)	# 1041
	jalr	x0, x31, 0	# 1041
beq.18108:
	addi	x27, x8, 0
	lw		x31, 0(x27)	# 1040
	jalr	x0, x31, 0	# 1040
beq.18107:
	addi	x27, x10, 0
	lw		x31, 0(x27)	# 1039
	jalr	x0, x31, 0	# 1039
solver_rect_fast.2728.8786:
	lw		x8, 24(x27)	# 1064
	lw		x9, 20(x27)	# 1064
	lw		x10, 16(x27)	# 1064
	lw		x11, 12(x27)	# 1064
	lw		x12, 8(x27)	# 1064
	flw		f4, 4(x27)	# 1064
	addi	x13, x0, 4	# 1064
	mul		x13, x11, x13	# 1064
	add		x13, x6, x13	# 1064
	flw		f5, 0(x13)	# 1064
	fsub	f5, f5, f1	# 1064
	addi	x13, x0, 4	# 1064
	mul		x13, x12, x13	# 1064
	add		x13, x6, x13	# 1064
	flw		f6, 0(x13)	# 1064
	fmul	f5, f5, f6	# 1064
	addi	x13, x0, 4	# 1066
	mul		x13, x12, x13	# 1066
	add		x13, x5, x13	# 1066
	flw		f7, 0(x13)	# 1066
	fmul	f8, f5, f7	# 1066
	fadd	f8, f8, f2	# 1066
	fle		x31, f8, f4	# 5
	beq		x31, x0, fle_cont.18109	# 5
	fsub	f8, f0, f8	# 5
fle_cont.18109:
	lw		x13, 16(x4)	# 401
	addi	x14, x0, 4	# 406
	mul		x14, x12, x14	# 406
	add		x13, x13, x14	# 406
	flw		f9, 0(x13)	# 406
	fle		x31, f9, f8	# 6
	beq		x31, x0, fle_else.18111	# 6
	addi	x13, x0, 0	# 6
	jal		x0, fle_cont.18110	# 6
fle_else.18111:
	addi	x13, x0, 1	# 6
fle_cont.18110:
	beq		x13, x11, beq.18113	# 1066
	addi	x13, x0, 4	# 1067
	mul		x13, x9, x13	# 1067
	add		x13, x5, x13	# 1067
	flw		f8, 0(x13)	# 1067
	fmul	f8, f5, f8	# 1067
	fadd	f8, f8, f3	# 1067
	fle		x31, f8, f4	# 5
	beq		x31, x0, fle_cont.18114	# 5
	fsub	f8, f0, f8	# 5
fle_cont.18114:
	lw		x13, 16(x4)	# 411
	addi	x14, x0, 4	# 416
	mul		x14, x9, x14	# 416
	add		x13, x13, x14	# 416
	flw		f9, 0(x13)	# 416
	fle		x31, f9, f8	# 6
	beq		x31, x0, fle_else.18116	# 6
	addi	x13, x0, 0	# 6
	jal		x0, fle_cont.18115	# 6
fle_else.18116:
	addi	x13, x0, 1	# 6
fle_cont.18115:
	beq		x13, x11, beq.18118	# 1067
	feq		x31, f6, f4	# 1
	beq		x31, x0, feq_else.18120	# 1
	addi	x13, x0, 1	# 1
	jal		x0, feq_cont.18119	# 1
feq_else.18120:
	addi	x13, x0, 0	# 1
feq_cont.18119:
	beq		x13, x11, beq.18122	# 1068
	addi	x13, x0, 0	# 1068
	jal		x0, beq_cont.18121	# 1068
beq.18122:
	addi	x13, x0, 1	# 1068
beq_cont.18121:
	jal		x0, beq_cont.18117	# 1067
beq.18118:
	addi	x13, x0, 0	# 1069
beq_cont.18117:
	jal		x0, beq_cont.18112	# 1066
beq.18113:
	addi	x13, x0, 0	# 1070
beq_cont.18112:
	beq		x13, x11, beq.18123	# 1065
	addi	x4, x7, 540	# 1072
	addi	x5, x0, 4	# 1072
	mul		x5, x11, x5	# 1072
	add		x4, x4, x5	# 1072
	fsw		f5, 0(x4)	# 1072
	addi	x4, x0, 1	# 1072
	jalr	x0, x1, 0	# 1072
beq.18123:
	addi	x13, x0, 4	# 1073
	mul		x13, x9, x13	# 1073
	add		x13, x6, x13	# 1073
	flw		f5, 0(x13)	# 1073
	fsub	f5, f5, f2	# 1073
	addi	x13, x0, 4	# 1073
	mul		x10, x10, x13	# 1073
	add		x10, x6, x10	# 1073
	flw		f6, 0(x10)	# 1073
	fmul	f5, f5, f6	# 1073
	addi	x10, x0, 4	# 1075
	mul		x10, x11, x10	# 1075
	add		x10, x5, x10	# 1075
	flw		f8, 0(x10)	# 1075
	fmul	f9, f5, f8	# 1075
	fadd	f9, f9, f1	# 1075
	fle		x31, f9, f4	# 5
	beq		x31, x0, fle_cont.18124	# 5
	fsub	f9, f0, f9	# 5
fle_cont.18124:
	lw		x10, 16(x4)	# 391
	addi	x13, x0, 4	# 396
	mul		x13, x11, x13	# 396
	add		x10, x10, x13	# 396
	flw		f10, 0(x10)	# 396
	fle		x31, f10, f9	# 6
	beq		x31, x0, fle_else.18126	# 6
	addi	x10, x0, 0	# 6
	jal		x0, fle_cont.18125	# 6
fle_else.18126:
	addi	x10, x0, 1	# 6
fle_cont.18125:
	beq		x10, x11, beq.18128	# 1075
	addi	x10, x0, 4	# 1076
	mul		x10, x9, x10	# 1076
	add		x5, x5, x10	# 1076
	flw		f9, 0(x5)	# 1076
	fmul	f9, f5, f9	# 1076
	fadd	f9, f9, f3	# 1076
	fle		x31, f9, f4	# 5
	beq		x31, x0, fle_cont.18129	# 5
	fsub	f9, f0, f9	# 5
fle_cont.18129:
	lw		x5, 16(x4)	# 411
	addi	x10, x0, 4	# 416
	mul		x9, x9, x10	# 416
	add		x5, x5, x9	# 416
	flw		f10, 0(x5)	# 416
	fle		x31, f10, f9	# 6
	beq		x31, x0, fle_else.18131	# 6
	addi	x5, x0, 0	# 6
	jal		x0, fle_cont.18130	# 6
fle_else.18131:
	addi	x5, x0, 1	# 6
fle_cont.18130:
	beq		x5, x11, beq.18133	# 1076
	feq		x31, f6, f4	# 1
	beq		x31, x0, feq_else.18135	# 1
	addi	x5, x0, 1	# 1
	jal		x0, feq_cont.18134	# 1
feq_else.18135:
	addi	x5, x0, 0	# 1
feq_cont.18134:
	beq		x5, x11, beq.18137	# 1077
	addi	x5, x0, 0	# 1077
	jal		x0, beq_cont.18136	# 1077
beq.18137:
	addi	x5, x0, 1	# 1077
beq_cont.18136:
	jal		x0, beq_cont.18132	# 1076
beq.18133:
	addi	x5, x0, 0	# 1078
beq_cont.18132:
	jal		x0, beq_cont.18127	# 1075
beq.18128:
	addi	x5, x0, 0	# 1079
beq_cont.18127:
	beq		x5, x11, beq.18138	# 1074
	addi	x4, x7, 540	# 1081
	addi	x5, x0, 4	# 1081
	mul		x5, x11, x5	# 1081
	add		x4, x4, x5	# 1081
	fsw		f5, 0(x4)	# 1081
	addi	x4, x0, 2	# 1081
	jalr	x0, x1, 0	# 1081
beq.18138:
	addi	x5, x0, 4	# 1082
	addi	x9, x0, 4	# 1082
	mul		x5, x5, x9	# 1082
	add		x5, x6, x5	# 1082
	flw		f5, 0(x5)	# 1082
	fsub	f3, f5, f3	# 1082
	addi	x5, x0, 4	# 1082
	mul		x5, x8, x5	# 1082
	add		x5, x6, x5	# 1082
	flw		f5, 0(x5)	# 1082
	fmul	f3, f3, f5	# 1082
	fmul	f6, f3, f8	# 1084
	fadd	f1, f6, f1	# 1084
	fle		x31, f1, f4	# 5
	beq		x31, x0, fle_cont.18139	# 5
	fsub	f1, f0, f1	# 5
fle_cont.18139:
	lw		x5, 16(x4)	# 391
	addi	x6, x0, 4	# 396
	mul		x6, x11, x6	# 396
	add		x5, x5, x6	# 396
	flw		f6, 0(x5)	# 396
	fle		x31, f6, f1	# 6
	beq		x31, x0, fle_else.18141	# 6
	addi	x5, x0, 0	# 6
	jal		x0, fle_cont.18140	# 6
fle_else.18141:
	addi	x5, x0, 1	# 6
fle_cont.18140:
	beq		x5, x11, beq.18143	# 1084
	fmul	f1, f3, f7	# 1085
	fadd	f1, f1, f2	# 1085
	fle		x31, f1, f4	# 5
	beq		x31, x0, fle_cont.18144	# 5
	fsub	f1, f0, f1	# 5
fle_cont.18144:
	lw		x4, 16(x4)	# 401
	addi	x5, x0, 4	# 406
	mul		x5, x12, x5	# 406
	add		x4, x4, x5	# 406
	flw		f2, 0(x4)	# 406
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.18146	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18145	# 6
fle_else.18146:
	addi	x4, x0, 1	# 6
fle_cont.18145:
	beq		x4, x11, beq.18148	# 1085
	feq		x31, f5, f4	# 1
	beq		x31, x0, feq_else.18150	# 1
	addi	x4, x0, 1	# 1
	jal		x0, feq_cont.18149	# 1
feq_else.18150:
	addi	x4, x0, 0	# 1
feq_cont.18149:
	beq		x4, x11, beq.18152	# 1086
	addi	x4, x0, 0	# 1086
	jal		x0, beq_cont.18151	# 1086
beq.18152:
	addi	x4, x0, 1	# 1086
beq_cont.18151:
	jal		x0, beq_cont.18147	# 1085
beq.18148:
	addi	x4, x0, 0	# 1087
beq_cont.18147:
	jal		x0, beq_cont.18142	# 1084
beq.18143:
	addi	x4, x0, 0	# 1088
beq_cont.18142:
	beq		x4, x11, beq.18153	# 1083
	addi	x4, x7, 540	# 1090
	addi	x5, x0, 4	# 1090
	mul		x5, x11, x5	# 1090
	add		x4, x4, x5	# 1090
	fsw		f3, 0(x4)	# 1090
	addi	x4, x0, 3	# 1090
	jalr	x0, x1, 0	# 1090
beq.18153:
	addi	x4, x0, 0	# 1092
	jalr	x0, x1, 0	# 1092
solver_surface_fast.2735.8793:
	lw		x4, 20(x27)	# 1097
	lw		x6, 16(x27)	# 1097
	lw		x8, 12(x27)	# 1097
	lw		x9, 8(x27)	# 1097
	flw		f4, 4(x27)	# 1097
	addi	x10, x0, 4	# 1097
	mul		x10, x8, x10	# 1097
	add		x10, x5, x10	# 1097
	flw		f5, 0(x10)	# 1097
	fle		x31, f4, f5	# 3
	beq		x31, x0, fle_else.18155	# 3
	addi	x10, x0, 0	# 3
	jal		x0, fle_cont.18154	# 3
fle_else.18155:
	addi	x10, x0, 1	# 3
fle_cont.18154:
	beq		x10, x8, beq.18156	# 1097
	addi	x10, x0, 4	# 1099
	mul		x9, x9, x10	# 1099
	add		x9, x5, x9	# 1099
	flw		f4, 0(x9)	# 1099
	fmul	f1, f4, f1	# 1099
	addi	x9, x0, 4	# 1099
	mul		x4, x4, x9	# 1099
	add		x4, x5, x4	# 1099
	flw		f4, 0(x4)	# 1099
	fmul	f2, f4, f2	# 1099
	fadd	f1, f1, f2	# 1099
	addi	x4, x0, 4	# 1099
	mul		x4, x6, x4	# 1099
	add		x4, x5, x4	# 1099
	flw		f2, 0(x4)	# 1099
	fmul	f2, f2, f3	# 1099
	fadd	f1, f1, f2	# 1099
	addi	x4, x7, 540	# 1098
	addi	x5, x0, 4	# 1098
	mul		x5, x8, x5	# 1098
	add		x4, x4, x5	# 1098
	fsw		f1, 0(x4)	# 1098
	addi	x4, x0, 1	# 1100
	jalr	x0, x1, 0	# 1100
beq.18156:
	addi	x4, x0, 0	# 1101
	jalr	x0, x1, 0	# 1101
solver_second_fast.2741.8799:
	lw		x6, 24(x27)	# 1107
	lw		x8, 20(x27)	# 1107
	lw		x9, 16(x27)	# 1107
	lw		x10, 12(x27)	# 1107
	lw		x11, 8(x27)	# 1107
	flw		f4, 4(x27)	# 1107
	addi	x12, x0, 4	# 1107
	mul		x12, x10, x12	# 1107
	add		x12, x5, x12	# 1107
	flw		f5, 0(x12)	# 1107
	feq		x31, f5, f4	# 1
	beq		x31, x0, feq_else.18158	# 1
	addi	x12, x0, 1	# 1
	jal		x0, feq_cont.18157	# 1
feq_else.18158:
	addi	x12, x0, 0	# 1
feq_cont.18157:
	beq		x12, x10, beq.18159	# 1108
	addi	x4, x0, 0	# 1109
	jalr	x0, x1, 0	# 1109
beq.18159:
	addi	x12, x0, 4	# 1111
	mul		x11, x11, x12	# 1111
	add		x11, x5, x11	# 1111
	flw		f6, 0(x11)	# 1111
	fmul	f6, f6, f1	# 1111
	addi	x11, x0, 4	# 1111
	mul		x8, x8, x11	# 1111
	add		x8, x5, x8	# 1111
	flw		f7, 0(x8)	# 1111
	fmul	f7, f7, f2	# 1111
	fadd	f6, f6, f7	# 1111
	addi	x8, x0, 4	# 1111
	mul		x8, x9, x8	# 1111
	add		x8, x5, x8	# 1111
	flw		f7, 0(x8)	# 1111
	fmul	f7, f7, f3	# 1111
	fadd	f6, f6, f7	# 1111
	sw		x5, 0(x2)	# 1112
	sw		x10, -4(x2)	# 1112
	fsw		f4, -8(x2)	# 1112
	fsw		f5, -12(x2)	# 1112
	fsw		f6, -16(x2)	# 1112
	sw		x9, -20(x2)	# 1112
	sw		x4, -24(x2)	# 1112
	addi	x27, x6, 0
	sw		x1, -28(x2)	# 1112
	addi	x2, x2, -32	# 1112
	lw		x31, 0(x27)	# 1112
	jalr	x1, x31, 0	# 1112
	addi	x2, x2, 32	# 1112
	lw		x1, -28(x2)	# 1112
	lw		x4, -24(x2)	# 353
	lw		x5, 4(x4)	# 353
	lw		x6, -20(x2)	# 1113
	beq		x5, x6, beq.18161	# 1113
	jal		x0, beq_cont.18160	# 1113
beq.18161:
	fadd	f2, f0, f16	# 1113
	fsub	f1, f1, f2	# 1113
beq_cont.18160:
	flw		f2, -16(x2)	# 8
	fmul	f3, f2, f2	# 8
	flw		f4, -12(x2)	# 1114
	fmul	f1, f4, f1	# 1114
	fsub	f1, f3, f1	# 1114
	flw		f3, -8(x2)	# 2
	fle		x31, f1, f3	# 2
	beq		x31, x0, fle_else.18163	# 2
	addi	x5, x0, 0	# 2
	jal		x0, fle_cont.18162	# 2
fle_else.18163:
	addi	x5, x0, 1	# 2
fle_cont.18162:
	lw		x6, -4(x2)	# 1115
	beq		x5, x6, beq.18164	# 1115
	lw		x4, 24(x4)	# 373
	beq		x4, x6, beq.18166	# 1116
	addi	x4, x0, 0	# 1117
	fsqrt	f1, f1	# 1117
	fadd	f1, f2, f1	# 1117
	addi	x5, x0, 4	# 1117
	addi	x6, x0, 4	# 1117
	mul		x5, x5, x6	# 1117
	lw		x6, 0(x2)	# 1117
	add		x5, x6, x5	# 1117
	flw		f2, 0(x5)	# 1117
	fmul	f1, f1, f2	# 1117
	addi	x5, x7, 540	# 1117
	addi	x6, x0, 4	# 1117
	mul		x4, x4, x6	# 1117
	add		x4, x5, x4	# 1117
	fsw		f1, 0(x4)	# 1117
	jal		x0, beq_cont.18165	# 1116
beq.18166:
	addi	x4, x0, 0	# 1119
	fsqrt	f1, f1	# 1119
	fsub	f1, f2, f1	# 1119
	addi	x5, x0, 4	# 1119
	addi	x6, x0, 4	# 1119
	mul		x5, x5, x6	# 1119
	lw		x6, 0(x2)	# 1119
	add		x5, x6, x5	# 1119
	flw		f2, 0(x5)	# 1119
	fmul	f1, f1, f2	# 1119
	addi	x5, x7, 540	# 1119
	addi	x6, x0, 4	# 1119
	mul		x4, x4, x6	# 1119
	add		x4, x5, x4	# 1119
	fsw		f1, 0(x4)	# 1119
beq_cont.18165:
	addi	x4, x0, 1	# 1120
	jalr	x0, x1, 0	# 1120
beq.18164:
	addi	x4, x0, 0	# 1121
	jalr	x0, x1, 0	# 1121
solver_fast.2747.8805:
	lw		x8, 24(x27)	# 1126
	lw		x9, 20(x27)	# 1126
	lw		x10, 16(x27)	# 1126
	lw		x11, 12(x27)	# 1126
	lw		x12, 8(x27)	# 1126
	lw		x13, 4(x27)	# 1126
	addi	x14, x7, 48	# 1126
	addi	x15, x0, 4	# 1126
	mul		x15, x4, x15	# 1126
	add		x14, x14, x15	# 1126
	lw		x14, 0(x14)	# 1126
	addi	x15, x0, 4	# 1127
	mul		x15, x12, x15	# 1127
	add		x15, x6, x15	# 1127
	flw		f1, 0(x15)	# 1127
	lw		x15, 20(x14)	# 431
	addi	x16, x0, 4	# 436
	mul		x12, x12, x16	# 436
	add		x12, x15, x12	# 436
	flw		f2, 0(x12)	# 436
	fsub	f1, f1, f2	# 1127
	addi	x12, x0, 4	# 1128
	mul		x12, x13, x12	# 1128
	add		x12, x6, x12	# 1128
	flw		f2, 0(x12)	# 1128
	lw		x12, 20(x14)	# 441
	addi	x15, x0, 4	# 446
	mul		x15, x13, x15	# 446
	add		x12, x12, x15	# 446
	flw		f3, 0(x12)	# 446
	fsub	f2, f2, f3	# 1128
	addi	x12, x0, 4	# 1129
	mul		x12, x11, x12	# 1129
	add		x6, x6, x12	# 1129
	flw		f3, 0(x6)	# 1129
	lw		x6, 20(x14)	# 451
	addi	x12, x0, 4	# 456
	mul		x12, x11, x12	# 456
	add		x6, x6, x12	# 456
	flw		f4, 0(x6)	# 456
	fsub	f3, f3, f4	# 1129
	lw		x6, 4(x5)	# 645
	addi	x12, x0, 4	# 1131
	mul		x4, x4, x12	# 1131
	add		x4, x6, x4	# 1131
	lw		x6, 0(x4)	# 1131
	lw		x4, 4(x14)	# 353
	beq		x4, x13, beq.18167	# 1133
	beq		x4, x11, beq.18168	# 1135
	addi	x5, x6, 0
	addi	x4, x14, 0
	addi	x27, x9, 0
	lw		x31, 0(x27)	# 1138
	jalr	x0, x31, 0	# 1138
beq.18168:
	addi	x5, x6, 0
	addi	x4, x14, 0
	addi	x27, x8, 0
	lw		x31, 0(x27)	# 1136
	jalr	x0, x31, 0	# 1136
beq.18167:
	lw		x5, 0(x5)	# 639
	addi	x4, x14, 0
	addi	x27, x10, 0
	lw		x31, 0(x27)	# 1134
	jalr	x0, x31, 0	# 1134
solver_surface_fast2.2751.8809:
	lw		x4, 12(x27)	# 1146
	lw		x8, 8(x27)	# 1146
	flw		f1, 4(x27)	# 1146
	addi	x9, x0, 4	# 1146
	mul		x9, x8, x9	# 1146
	add		x5, x5, x9	# 1146
	flw		f2, 0(x5)	# 1146
	fle		x31, f1, f2	# 3
	beq		x31, x0, fle_else.18170	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.18169	# 3
fle_else.18170:
	addi	x5, x0, 1	# 3
fle_cont.18169:
	beq		x5, x8, beq.18171	# 1146
	addi	x5, x0, 4	# 1147
	mul		x4, x4, x5	# 1147
	add		x4, x6, x4	# 1147
	flw		f1, 0(x4)	# 1147
	fmul	f1, f2, f1	# 1147
	addi	x4, x7, 540	# 1147
	addi	x5, x0, 4	# 1147
	mul		x5, x8, x5	# 1147
	add		x4, x4, x5	# 1147
	fsw		f1, 0(x4)	# 1147
	addi	x4, x0, 1	# 1148
	jalr	x0, x1, 0	# 1148
beq.18171:
	addi	x4, x0, 0	# 1149
	jalr	x0, x1, 0	# 1149
solver_second_fast2.2758.8816:
	lw		x8, 20(x27)	# 1155
	lw		x9, 16(x27)	# 1155
	lw		x10, 12(x27)	# 1155
	lw		x11, 8(x27)	# 1155
	flw		f4, 4(x27)	# 1155
	addi	x12, x0, 4	# 1155
	mul		x12, x10, x12	# 1155
	add		x12, x5, x12	# 1155
	flw		f5, 0(x12)	# 1155
	feq		x31, f5, f4	# 1
	beq		x31, x0, feq_else.18173	# 1
	addi	x12, x0, 1	# 1
	jal		x0, feq_cont.18172	# 1
feq_else.18173:
	addi	x12, x0, 0	# 1
feq_cont.18172:
	beq		x12, x10, beq.18174	# 1156
	addi	x4, x0, 0	# 1157
	jalr	x0, x1, 0	# 1157
beq.18174:
	addi	x12, x0, 4	# 1159
	mul		x11, x11, x12	# 1159
	add		x11, x5, x11	# 1159
	flw		f6, 0(x11)	# 1159
	fmul	f1, f6, f1	# 1159
	addi	x11, x0, 4	# 1159
	mul		x8, x8, x11	# 1159
	add		x8, x5, x8	# 1159
	flw		f6, 0(x8)	# 1159
	fmul	f2, f6, f2	# 1159
	fadd	f1, f1, f2	# 1159
	addi	x8, x0, 4	# 1159
	mul		x8, x9, x8	# 1159
	add		x8, x5, x8	# 1159
	flw		f2, 0(x8)	# 1159
	fmul	f2, f2, f3	# 1159
	fadd	f1, f1, f2	# 1159
	addi	x8, x0, 4	# 1160
	mul		x8, x9, x8	# 1160
	add		x6, x6, x8	# 1160
	flw		f2, 0(x6)	# 1160
	fmul	f3, f1, f1	# 8
	fmul	f2, f5, f2	# 1161
	fsub	f2, f3, f2	# 1161
	fle		x31, f2, f4	# 2
	beq		x31, x0, fle_else.18176	# 2
	addi	x6, x0, 0	# 2
	jal		x0, fle_cont.18175	# 2
fle_else.18176:
	addi	x6, x0, 1	# 2
fle_cont.18175:
	beq		x6, x10, beq.18177	# 1162
	lw		x4, 24(x4)	# 373
	beq		x4, x10, beq.18179	# 1163
	addi	x4, x0, 0	# 1164
	fsqrt	f2, f2	# 1164
	fadd	f1, f1, f2	# 1164
	addi	x6, x0, 4	# 1164
	addi	x8, x0, 4	# 1164
	mul		x6, x6, x8	# 1164
	add		x5, x5, x6	# 1164
	flw		f2, 0(x5)	# 1164
	fmul	f1, f1, f2	# 1164
	addi	x5, x7, 540	# 1164
	addi	x6, x0, 4	# 1164
	mul		x4, x4, x6	# 1164
	add		x4, x5, x4	# 1164
	fsw		f1, 0(x4)	# 1164
	jal		x0, beq_cont.18178	# 1163
beq.18179:
	addi	x4, x0, 0	# 1166
	fsqrt	f2, f2	# 1166
	fsub	f1, f1, f2	# 1166
	addi	x6, x0, 4	# 1166
	addi	x8, x0, 4	# 1166
	mul		x6, x6, x8	# 1166
	add		x5, x5, x6	# 1166
	flw		f2, 0(x5)	# 1166
	fmul	f1, f1, f2	# 1166
	addi	x5, x7, 540	# 1166
	addi	x6, x0, 4	# 1166
	mul		x4, x4, x6	# 1166
	add		x4, x5, x4	# 1166
	fsw		f1, 0(x4)	# 1166
beq_cont.18178:
	addi	x4, x0, 1	# 1167
	jalr	x0, x1, 0	# 1167
beq.18177:
	addi	x4, x0, 0	# 1168
	jalr	x0, x1, 0	# 1168
solver_fast2.2765.8823:
	lw		x6, 24(x27)	# 1173
	lw		x8, 20(x27)	# 1173
	lw		x9, 16(x27)	# 1173
	lw		x10, 12(x27)	# 1173
	lw		x11, 8(x27)	# 1173
	lw		x12, 4(x27)	# 1173
	addi	x13, x7, 48	# 1173
	addi	x14, x0, 4	# 1173
	mul		x14, x4, x14	# 1173
	add		x13, x13, x14	# 1173
	lw		x13, 0(x13)	# 1173
	lw		x14, 40(x13)	# 548
	addi	x15, x0, 4	# 1175
	mul		x11, x11, x15	# 1175
	add		x11, x14, x11	# 1175
	flw		f1, 0(x11)	# 1175
	addi	x11, x0, 4	# 1176
	mul		x11, x12, x11	# 1176
	add		x11, x14, x11	# 1176
	flw		f2, 0(x11)	# 1176
	addi	x11, x0, 4	# 1177
	mul		x11, x10, x11	# 1177
	add		x11, x14, x11	# 1177
	flw		f3, 0(x11)	# 1177
	lw		x11, 4(x5)	# 645
	addi	x15, x0, 4	# 1179
	mul		x4, x4, x15	# 1179
	add		x4, x11, x4	# 1179
	lw		x4, 0(x4)	# 1179
	lw		x11, 4(x13)	# 353
	beq		x11, x12, beq.18180	# 1181
	beq		x11, x10, beq.18181	# 1183
	addi	x6, x14, 0
	addi	x5, x4, 0
	addi	x27, x8, 0
	addi	x4, x13, 0
	lw		x31, 0(x27)	# 1186
	jalr	x0, x31, 0	# 1186
beq.18181:
	addi	x5, x4, 0
	addi	x27, x6, 0
	addi	x6, x14, 0
	addi	x4, x13, 0
	lw		x31, 0(x27)	# 1184
	jalr	x0, x31, 0	# 1184
beq.18180:
	lw		x5, 0(x5)	# 639
	addi	x6, x4, 0
	addi	x27, x9, 0
	addi	x4, x13, 0
	lw		x31, 0(x27)	# 1182
	jalr	x0, x31, 0	# 1182
setup_rect_table.2768.8826:
	lw		x6, 16(x27)	# 1195
	lw		x8, 12(x27)	# 1195
	lw		x9, 8(x27)	# 1195
	flw		f1, 4(x27)	# 1195
	addi	x10, x0, 6	# 1195
	sw		x6, 0(x2)	# 1195
	sw		x9, -4(x2)	# 1195
	sw		x5, -8(x2)	# 1195
	fsw		f1, -12(x2)	# 1195
	sw		x4, -16(x2)	# 1195
	sw		x8, -20(x2)	# 1195
	addi	x4, x10, 0
	sw		x1, -24(x2)	# 1195
	addi	x2, x2, -28	# 1195
	jal		x1, min_caml_create_float_array	# 1195
	addi	x2, x2, 28	# 1195
	lw		x1, -24(x2)	# 1195
	addi	x5, x0, 4	# 1197
	lw		x6, -20(x2)	# 1197
	mul		x5, x6, x5	# 1197
	lw		x8, -16(x2)	# 1197
	add		x5, x8, x5	# 1197
	flw		f1, 0(x5)	# 1197
	flw		f2, -12(x2)	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.18183	# 1
	addi	x5, x0, 1	# 1
	jal		x0, feq_cont.18182	# 1
feq_else.18183:
	addi	x5, x0, 0	# 1
feq_cont.18182:
	beq		x5, x6, beq.18185	# 1197
	addi	x5, x0, 1	# 1198
	fadd	f1, f0, f0	# 1198
	addi	x9, x0, 4	# 1198
	mul		x5, x5, x9	# 1198
	add		x5, x4, x5	# 1198
	fsw		f1, 0(x5)	# 1198
	jal		x0, beq_cont.18184	# 1197
beq.18185:
	addi	x5, x0, 0	# 1201
	lw		x9, -8(x2)	# 373
	lw		x10, 24(x9)	# 373
	addi	x11, x0, 0	# 1201
	addi	x12, x0, 4	# 1201
	mul		x11, x11, x12	# 1201
	add		x11, x8, x11	# 1201
	flw		f1, 0(x11)	# 1201
	fadd	f3, f0, f0	# 3
	fle		x31, f3, f1	# 3
	beq		x31, x0, fle_else.18187	# 3
	addi	x11, x0, 0	# 3
	jal		x0, fle_cont.18186	# 3
fle_else.18187:
	addi	x11, x0, 1	# 3
fle_cont.18186:
	addi	x12, x0, 0	# 204
	beq		x10, x12, beq.18189	# 204
	beq		x11, x12, beq.18191	# 204
	addi	x10, x0, 0	# 204
	jal		x0, beq_cont.18190	# 204
beq.18191:
	addi	x10, x0, 1	# 204
beq_cont.18190:
	jal		x0, beq_cont.18188	# 204
beq.18189:
	addi	x10, x11, 0	# 204
beq_cont.18188:
	lw		x11, 16(x9)	# 391
	addi	x12, x0, 0	# 396
	addi	x13, x0, 4	# 396
	mul		x12, x12, x13	# 396
	add		x11, x11, x12	# 396
	flw		f1, 0(x11)	# 396
	addi	x11, x0, 0	# 219
	beq		x10, x11, beq.18193	# 219
	jal		x0, beq_cont.18192	# 219
beq.18193:
	fsub	f1, f0, f1	# 4
beq_cont.18192:
	addi	x10, x0, 4	# 1201
	mul		x5, x5, x10	# 1201
	add		x5, x4, x5	# 1201
	fsw		f1, 0(x5)	# 1201
	addi	x5, x0, 1	# 1203
	fadd	f1, f0, f16	# 1203
	addi	x10, x0, 0	# 1203
	addi	x11, x0, 4	# 1203
	mul		x10, x10, x11	# 1203
	add		x10, x8, x10	# 1203
	flw		f3, 0(x10)	# 1203
	fdiv	f1, f1, f3	# 1203
	addi	x10, x0, 4	# 1203
	mul		x5, x5, x10	# 1203
	add		x5, x4, x5	# 1203
	fsw		f1, 0(x5)	# 1203
beq_cont.18184:
	addi	x5, x0, 4	# 1205
	lw		x9, -4(x2)	# 1205
	mul		x5, x9, x5	# 1205
	add		x5, x8, x5	# 1205
	flw		f1, 0(x5)	# 1205
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.18195	# 1
	addi	x5, x0, 1	# 1
	jal		x0, feq_cont.18194	# 1
feq_else.18195:
	addi	x5, x0, 0	# 1
feq_cont.18194:
	beq		x5, x6, beq.18197	# 1205
	addi	x5, x0, 3	# 1206
	fadd	f1, f0, f0	# 1206
	addi	x9, x0, 4	# 1206
	mul		x5, x5, x9	# 1206
	add		x5, x4, x5	# 1206
	fsw		f1, 0(x5)	# 1206
	jal		x0, beq_cont.18196	# 1205
beq.18197:
	addi	x5, x0, 2	# 1208
	lw		x9, -8(x2)	# 373
	lw		x10, 24(x9)	# 373
	addi	x11, x0, 1	# 1208
	addi	x12, x0, 4	# 1208
	mul		x11, x11, x12	# 1208
	add		x11, x8, x11	# 1208
	flw		f1, 0(x11)	# 1208
	fadd	f3, f0, f0	# 3
	fle		x31, f3, f1	# 3
	beq		x31, x0, fle_else.18199	# 3
	addi	x11, x0, 0	# 3
	jal		x0, fle_cont.18198	# 3
fle_else.18199:
	addi	x11, x0, 1	# 3
fle_cont.18198:
	addi	x12, x0, 0	# 204
	beq		x10, x12, beq.18201	# 204
	beq		x11, x12, beq.18203	# 204
	addi	x10, x0, 0	# 204
	jal		x0, beq_cont.18202	# 204
beq.18203:
	addi	x10, x0, 1	# 204
beq_cont.18202:
	jal		x0, beq_cont.18200	# 204
beq.18201:
	addi	x10, x11, 0	# 204
beq_cont.18200:
	lw		x11, 16(x9)	# 401
	addi	x12, x0, 1	# 406
	addi	x13, x0, 4	# 406
	mul		x12, x12, x13	# 406
	add		x11, x11, x12	# 406
	flw		f1, 0(x11)	# 406
	addi	x11, x0, 0	# 219
	beq		x10, x11, beq.18205	# 219
	jal		x0, beq_cont.18204	# 219
beq.18205:
	fsub	f1, f0, f1	# 4
beq_cont.18204:
	addi	x10, x0, 4	# 1208
	mul		x5, x5, x10	# 1208
	add		x5, x4, x5	# 1208
	fsw		f1, 0(x5)	# 1208
	addi	x5, x0, 3	# 1209
	fadd	f1, f0, f16	# 1209
	addi	x10, x0, 1	# 1209
	addi	x11, x0, 4	# 1209
	mul		x10, x10, x11	# 1209
	add		x10, x8, x10	# 1209
	flw		f3, 0(x10)	# 1209
	fdiv	f1, f1, f3	# 1209
	addi	x10, x0, 4	# 1209
	mul		x5, x5, x10	# 1209
	add		x5, x4, x5	# 1209
	fsw		f1, 0(x5)	# 1209
beq_cont.18196:
	addi	x5, x0, 4	# 1211
	lw		x9, 0(x2)	# 1211
	mul		x5, x9, x5	# 1211
	add		x5, x8, x5	# 1211
	flw		f1, 0(x5)	# 1211
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.18207	# 1
	addi	x5, x0, 1	# 1
	jal		x0, feq_cont.18206	# 1
feq_else.18207:
	addi	x5, x0, 0	# 1
feq_cont.18206:
	beq		x5, x6, beq.18209	# 1211
	addi	x5, x0, 5	# 1212
	fadd	f1, f0, f0	# 1212
	addi	x6, x0, 4	# 1212
	mul		x5, x5, x6	# 1212
	add		x5, x4, x5	# 1212
	fsw		f1, 0(x5)	# 1212
	jal		x0, beq_cont.18208	# 1211
beq.18209:
	addi	x5, x0, 4	# 1214
	lw		x6, -8(x2)	# 373
	lw		x9, 24(x6)	# 373
	addi	x10, x0, 2	# 1214
	addi	x11, x0, 4	# 1214
	mul		x10, x10, x11	# 1214
	add		x10, x8, x10	# 1214
	flw		f1, 0(x10)	# 1214
	fadd	f2, f0, f0	# 3
	fle		x31, f2, f1	# 3
	beq		x31, x0, fle_else.18211	# 3
	addi	x10, x0, 0	# 3
	jal		x0, fle_cont.18210	# 3
fle_else.18211:
	addi	x10, x0, 1	# 3
fle_cont.18210:
	addi	x11, x0, 0	# 204
	beq		x9, x11, beq.18213	# 204
	beq		x10, x11, beq.18215	# 204
	addi	x9, x0, 0	# 204
	jal		x0, beq_cont.18214	# 204
beq.18215:
	addi	x9, x0, 1	# 204
beq_cont.18214:
	jal		x0, beq_cont.18212	# 204
beq.18213:
	addi	x9, x10, 0	# 204
beq_cont.18212:
	lw		x6, 16(x6)	# 411
	addi	x10, x0, 2	# 416
	addi	x11, x0, 4	# 416
	mul		x10, x10, x11	# 416
	add		x6, x6, x10	# 416
	flw		f1, 0(x6)	# 416
	addi	x6, x0, 0	# 219
	beq		x9, x6, beq.18217	# 219
	jal		x0, beq_cont.18216	# 219
beq.18217:
	fsub	f1, f0, f1	# 4
beq_cont.18216:
	addi	x6, x0, 4	# 1214
	mul		x5, x5, x6	# 1214
	add		x5, x4, x5	# 1214
	fsw		f1, 0(x5)	# 1214
	addi	x5, x0, 5	# 1215
	fadd	f1, f0, f16	# 1215
	addi	x6, x0, 2	# 1215
	addi	x9, x0, 4	# 1215
	mul		x6, x6, x9	# 1215
	add		x6, x8, x6	# 1215
	flw		f2, 0(x6)	# 1215
	fdiv	f1, f1, f2	# 1215
	addi	x6, x0, 4	# 1215
	mul		x5, x5, x6	# 1215
	add		x5, x4, x5	# 1215
	fsw		f1, 0(x5)	# 1215
beq_cont.18208:
	jalr	x0, x1, 0	# 1217
setup_surface_table.2771.8829:
	lw		x6, 16(x27)	# 1222
	lw		x8, 12(x27)	# 1222
	lw		x9, 8(x27)	# 1222
	flw		f1, 4(x27)	# 1222
	addi	x10, x0, 4	# 1222
	fsw		f1, 0(x2)	# 1222
	sw		x6, -4(x2)	# 1222
	sw		x9, -8(x2)	# 1222
	sw		x5, -12(x2)	# 1222
	sw		x4, -16(x2)	# 1222
	sw		x8, -20(x2)	# 1222
	addi	x4, x10, 0
	sw		x1, -24(x2)	# 1222
	addi	x2, x2, -28	# 1222
	jal		x1, min_caml_create_float_array	# 1222
	addi	x2, x2, 28	# 1222
	lw		x1, -24(x2)	# 1222
	addi	x5, x0, 4	# 1224
	lw		x6, -20(x2)	# 1224
	mul		x5, x6, x5	# 1224
	lw		x8, -16(x2)	# 1224
	add		x5, x8, x5	# 1224
	flw		f1, 0(x5)	# 1224
	lw		x5, -12(x2)	# 391
	lw		x9, 16(x5)	# 391
	addi	x10, x0, 4	# 396
	mul		x10, x6, x10	# 396
	add		x9, x9, x10	# 396
	flw		f2, 0(x9)	# 396
	fmul	f1, f1, f2	# 1224
	addi	x9, x0, 4	# 1224
	lw		x10, -8(x2)	# 1224
	mul		x9, x10, x9	# 1224
	add		x9, x8, x9	# 1224
	flw		f2, 0(x9)	# 1224
	lw		x9, 16(x5)	# 401
	addi	x11, x0, 4	# 406
	mul		x10, x10, x11	# 406
	add		x9, x9, x10	# 406
	flw		f3, 0(x9)	# 406
	fmul	f2, f2, f3	# 1224
	fadd	f1, f1, f2	# 1224
	addi	x9, x0, 4	# 1224
	lw		x10, -4(x2)	# 1224
	mul		x9, x10, x9	# 1224
	add		x8, x8, x9	# 1224
	flw		f2, 0(x8)	# 1224
	lw		x8, 16(x5)	# 411
	addi	x9, x0, 4	# 416
	mul		x9, x10, x9	# 416
	add		x8, x8, x9	# 416
	flw		f3, 0(x8)	# 416
	fmul	f2, f2, f3	# 1224
	fadd	f1, f1, f2	# 1224
	flw		f2, 0(x2)	# 2
	fle		x31, f1, f2	# 2
	beq		x31, x0, fle_else.18219	# 2
	addi	x8, x0, 0	# 2
	jal		x0, fle_cont.18218	# 2
fle_else.18219:
	addi	x8, x0, 1	# 2
fle_cont.18218:
	beq		x8, x6, beq.18221	# 1226
	addi	x6, x0, 0	# 1228
	fadd	f2, f0, f21	# 1228
	fdiv	f2, f2, f1	# 1228
	addi	x8, x0, 4	# 1228
	mul		x6, x6, x8	# 1228
	add		x6, x4, x6	# 1228
	fsw		f2, 0(x6)	# 1228
	addi	x6, x0, 1	# 1230
	lw		x8, 16(x5)	# 391
	addi	x9, x0, 0	# 396
	addi	x10, x0, 4	# 396
	mul		x9, x9, x10	# 396
	add		x8, x8, x9	# 396
	flw		f2, 0(x8)	# 396
	fdiv	f2, f2, f1	# 1230
	fsub	f2, f0, f2	# 4
	addi	x8, x0, 4	# 1230
	mul		x6, x6, x8	# 1230
	add		x6, x4, x6	# 1230
	fsw		f2, 0(x6)	# 1230
	addi	x6, x0, 2	# 1231
	lw		x8, 16(x5)	# 401
	addi	x9, x0, 1	# 406
	addi	x10, x0, 4	# 406
	mul		x9, x9, x10	# 406
	add		x8, x8, x9	# 406
	flw		f2, 0(x8)	# 406
	fdiv	f2, f2, f1	# 1231
	fsub	f2, f0, f2	# 4
	addi	x8, x0, 4	# 1231
	mul		x6, x6, x8	# 1231
	add		x6, x4, x6	# 1231
	fsw		f2, 0(x6)	# 1231
	addi	x6, x0, 3	# 1232
	lw		x5, 16(x5)	# 411
	addi	x8, x0, 2	# 416
	addi	x9, x0, 4	# 416
	mul		x8, x8, x9	# 416
	add		x5, x5, x8	# 416
	flw		f2, 0(x5)	# 416
	fdiv	f1, f2, f1	# 1232
	fsub	f1, f0, f1	# 4
	addi	x5, x0, 4	# 1232
	mul		x5, x6, x5	# 1232
	add		x5, x4, x5	# 1232
	fsw		f1, 0(x5)	# 1232
	jal		x0, beq_cont.18220	# 1226
beq.18221:
	addi	x5, x0, 0	# 1234
	fadd	f1, f0, f0	# 1234
	addi	x6, x0, 4	# 1234
	mul		x5, x5, x6	# 1234
	add		x5, x4, x5	# 1234
	fsw		f1, 0(x5)	# 1234
beq_cont.18220:
	jalr	x0, x1, 0	# 1235
setup_second_table.2774.8832:
	lw		x6, 24(x27)	# 1241
	lw		x8, 20(x27)	# 1241
	lw		x9, 16(x27)	# 1241
	lw		x10, 12(x27)	# 1241
	lw		x11, 8(x27)	# 1241
	flw		f1, 4(x27)	# 1241
	fsw		f1, 0(x2)	# 1241
	sw		x5, -4(x2)	# 1241
	sw		x6, -8(x2)	# 1241
	sw		x9, -12(x2)	# 1241
	sw		x11, -16(x2)	# 1241
	sw		x4, -20(x2)	# 1241
	sw		x10, -24(x2)	# 1241
	addi	x4, x8, 0
	sw		x1, -28(x2)	# 1241
	addi	x2, x2, -32	# 1241
	jal		x1, min_caml_create_float_array	# 1241
	addi	x2, x2, 32	# 1241
	lw		x1, -28(x2)	# 1241
	addi	x5, x0, 4	# 1243
	lw		x6, -24(x2)	# 1243
	mul		x5, x6, x5	# 1243
	lw		x8, -20(x2)	# 1243
	add		x5, x8, x5	# 1243
	flw		f1, 0(x5)	# 1243
	addi	x5, x0, 4	# 1243
	lw		x9, -16(x2)	# 1243
	mul		x5, x9, x5	# 1243
	add		x5, x8, x5	# 1243
	flw		f2, 0(x5)	# 1243
	addi	x5, x0, 4	# 1243
	lw		x10, -12(x2)	# 1243
	mul		x5, x10, x5	# 1243
	add		x5, x8, x5	# 1243
	flw		f3, 0(x5)	# 1243
	lw		x5, -4(x2)	# 1243
	lw		x27, -8(x2)	# 1243
	sw		x4, -28(x2)	# 1243
	addi	x4, x5, 0
	sw		x1, -32(x2)	# 1243
	addi	x2, x2, -36	# 1243
	lw		x31, 0(x27)	# 1243
	jalr	x1, x31, 0	# 1243
	addi	x2, x2, 36	# 1243
	lw		x1, -32(x2)	# 1243
	addi	x4, x0, 4	# 1244
	lw		x5, -24(x2)	# 1244
	mul		x4, x5, x4	# 1244
	lw		x6, -20(x2)	# 1244
	add		x4, x6, x4	# 1244
	flw		f2, 0(x4)	# 1244
	lw		x4, -4(x2)	# 391
	lw		x8, 16(x4)	# 391
	addi	x9, x0, 4	# 396
	mul		x9, x5, x9	# 396
	add		x8, x8, x9	# 396
	flw		f3, 0(x8)	# 396
	fmul	f2, f2, f3	# 1244
	fsub	f2, f0, f2	# 4
	addi	x8, x0, 4	# 1245
	lw		x9, -16(x2)	# 1245
	mul		x8, x9, x8	# 1245
	add		x8, x6, x8	# 1245
	flw		f3, 0(x8)	# 1245
	lw		x8, 16(x4)	# 401
	addi	x10, x0, 4	# 406
	mul		x9, x9, x10	# 406
	add		x8, x8, x9	# 406
	flw		f4, 0(x8)	# 406
	fmul	f3, f3, f4	# 1245
	fsub	f3, f0, f3	# 4
	addi	x8, x0, 4	# 1246
	lw		x9, -12(x2)	# 1246
	mul		x8, x9, x8	# 1246
	add		x8, x6, x8	# 1246
	flw		f4, 0(x8)	# 1246
	lw		x8, 16(x4)	# 411
	addi	x10, x0, 4	# 416
	mul		x9, x9, x10	# 416
	add		x8, x8, x9	# 416
	flw		f5, 0(x8)	# 416
	fmul	f4, f4, f5	# 1246
	fsub	f4, f0, f4	# 4
	addi	x8, x0, 4	# 1248
	mul		x8, x5, x8	# 1248
	lw		x9, -28(x2)	# 1248
	add		x8, x9, x8	# 1248
	fsw		f1, 0(x8)	# 1248
	lw		x8, 12(x4)	# 382
	beq		x8, x5, beq.18223	# 1252
	addi	x8, x0, 1	# 1253
	addi	x10, x0, 2	# 1253
	addi	x11, x0, 4	# 1253
	mul		x10, x10, x11	# 1253
	add		x10, x6, x10	# 1253
	flw		f5, 0(x10)	# 1253
	lw		x10, 36(x4)	# 521
	addi	x11, x0, 1	# 526
	addi	x12, x0, 4	# 526
	mul		x11, x11, x12	# 526
	add		x10, x10, x11	# 526
	flw		f6, 0(x10)	# 526
	fmul	f5, f5, f6	# 1253
	addi	x10, x0, 1	# 1253
	addi	x11, x0, 4	# 1253
	mul		x10, x10, x11	# 1253
	add		x10, x6, x10	# 1253
	flw		f6, 0(x10)	# 1253
	lw		x10, 36(x4)	# 531
	addi	x11, x0, 2	# 536
	addi	x12, x0, 4	# 536
	mul		x11, x11, x12	# 536
	add		x10, x10, x11	# 536
	flw		f7, 0(x10)	# 536
	fmul	f6, f6, f7	# 1253
	fadd	f5, f5, f6	# 1253
	fadd	f6, f0, f17	# 7
	fmul	f5, f5, f6	# 7
	fsub	f2, f2, f5	# 1253
	addi	x10, x0, 4	# 1253
	mul		x8, x8, x10	# 1253
	add		x8, x9, x8	# 1253
	fsw		f2, 0(x8)	# 1253
	addi	x8, x0, 2	# 1254
	addi	x10, x0, 2	# 1254
	addi	x11, x0, 4	# 1254
	mul		x10, x10, x11	# 1254
	add		x10, x6, x10	# 1254
	flw		f2, 0(x10)	# 1254
	lw		x10, 36(x4)	# 511
	addi	x11, x0, 0	# 516
	addi	x12, x0, 4	# 516
	mul		x11, x11, x12	# 516
	add		x10, x10, x11	# 516
	flw		f5, 0(x10)	# 516
	fmul	f2, f2, f5	# 1254
	addi	x10, x0, 0	# 1254
	addi	x11, x0, 4	# 1254
	mul		x10, x10, x11	# 1254
	add		x10, x6, x10	# 1254
	flw		f5, 0(x10)	# 1254
	lw		x10, 36(x4)	# 531
	addi	x11, x0, 2	# 536
	addi	x12, x0, 4	# 536
	mul		x11, x11, x12	# 536
	add		x10, x10, x11	# 536
	flw		f6, 0(x10)	# 536
	fmul	f5, f5, f6	# 1254
	fadd	f2, f2, f5	# 1254
	fadd	f5, f0, f17	# 7
	fmul	f2, f2, f5	# 7
	fsub	f2, f3, f2	# 1254
	addi	x10, x0, 4	# 1254
	mul		x8, x8, x10	# 1254
	add		x8, x9, x8	# 1254
	fsw		f2, 0(x8)	# 1254
	addi	x8, x0, 3	# 1255
	addi	x10, x0, 1	# 1255
	addi	x11, x0, 4	# 1255
	mul		x10, x10, x11	# 1255
	add		x10, x6, x10	# 1255
	flw		f2, 0(x10)	# 1255
	lw		x10, 36(x4)	# 511
	addi	x11, x0, 0	# 516
	addi	x12, x0, 4	# 516
	mul		x11, x11, x12	# 516
	add		x10, x10, x11	# 516
	flw		f3, 0(x10)	# 516
	fmul	f2, f2, f3	# 1255
	addi	x10, x0, 0	# 1255
	addi	x11, x0, 4	# 1255
	mul		x10, x10, x11	# 1255
	add		x6, x6, x10	# 1255
	flw		f3, 0(x6)	# 1255
	lw		x4, 36(x4)	# 521
	addi	x6, x0, 1	# 526
	addi	x10, x0, 4	# 526
	mul		x6, x6, x10	# 526
	add		x4, x4, x6	# 526
	flw		f5, 0(x4)	# 526
	fmul	f3, f3, f5	# 1255
	fadd	f2, f2, f3	# 1255
	fadd	f3, f0, f17	# 7
	fmul	f2, f2, f3	# 7
	fsub	f2, f4, f2	# 1255
	addi	x4, x0, 4	# 1255
	mul		x4, x8, x4	# 1255
	add		x4, x9, x4	# 1255
	fsw		f2, 0(x4)	# 1255
	jal		x0, beq_cont.18222	# 1252
beq.18223:
	addi	x4, x0, 1	# 1257
	addi	x6, x0, 4	# 1257
	mul		x4, x4, x6	# 1257
	add		x4, x9, x4	# 1257
	fsw		f2, 0(x4)	# 1257
	addi	x4, x0, 2	# 1258
	addi	x6, x0, 4	# 1258
	mul		x4, x4, x6	# 1258
	add		x4, x9, x4	# 1258
	fsw		f3, 0(x4)	# 1258
	addi	x4, x0, 3	# 1259
	addi	x6, x0, 4	# 1259
	mul		x4, x4, x6	# 1259
	add		x4, x9, x4	# 1259
	fsw		f4, 0(x4)	# 1259
beq_cont.18222:
	flw		f2, 0(x2)	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.18225	# 1
	addi	x4, x0, 1	# 1
	jal		x0, feq_cont.18224	# 1
feq_else.18225:
	addi	x4, x0, 0	# 1
feq_cont.18224:
	beq		x4, x5, beq.18227	# 1261
	jal		x0, beq_cont.18226	# 1261
beq.18227:
	addi	x4, x0, 4	# 1262
	fadd	f2, f0, f16	# 1262
	fdiv	f1, f2, f1	# 1262
	addi	x5, x0, 4	# 1262
	mul		x4, x4, x5	# 1262
	add		x4, x9, x4	# 1262
	fsw		f1, 0(x4)	# 1262
beq_cont.18226:
	addi	x4, x9, 0	# 1264
	jalr	x0, x1, 0	# 1264
iter_setup_dirvec_constants.2777.8835:
	lw		x6, 20(x27)	# 1270
	lw		x8, 16(x27)	# 1270
	lw		x9, 12(x27)	# 1270
	lw		x10, 8(x27)	# 1270
	lw		x11, 4(x27)	# 1270
	ble		x10, x5, ble.18228	# 1270
	jalr	x0, x1, 0	# 1283
ble.18228:
	addi	x10, x7, 48	# 1271
	addi	x12, x0, 4	# 1271
	mul		x12, x5, x12	# 1271
	add		x10, x10, x12	# 1271
	lw		x10, 0(x10)	# 1271
	lw		x12, 4(x4)	# 645
	lw		x13, 0(x4)	# 639
	lw		x14, 4(x10)	# 353
	sw		x4, 0(x2)	# 1275
	sw		x27, -4(x2)	# 1275
	sw		x11, -8(x2)	# 1275
	beq		x14, x11, beq.18231	# 1275
	addi	x9, x0, 2	# 1277
	beq		x14, x9, beq.18233	# 1277
	sw		x12, -12(x2)	# 1280
	sw		x5, -16(x2)	# 1280
	addi	x5, x10, 0
	addi	x4, x13, 0
	addi	x27, x8, 0
	sw		x1, -20(x2)	# 1280
	addi	x2, x2, -24	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 24	# 1280
	lw		x1, -20(x2)	# 1280
	addi	x5, x0, 4	# 1280
	lw		x6, -16(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x8, -12(x2)	# 1280
	add		x5, x8, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.18232	# 1277
beq.18233:
	sw		x12, -12(x2)	# 1278
	sw		x5, -16(x2)	# 1278
	addi	x5, x10, 0
	addi	x4, x13, 0
	addi	x27, x6, 0
	sw		x1, -20(x2)	# 1278
	addi	x2, x2, -24	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 24	# 1278
	lw		x1, -20(x2)	# 1278
	addi	x5, x0, 4	# 1278
	lw		x6, -16(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x8, -12(x2)	# 1278
	add		x5, x8, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.18232:
	jal		x0, beq_cont.18230	# 1275
beq.18231:
	sw		x12, -12(x2)	# 1276
	sw		x5, -16(x2)	# 1276
	addi	x5, x10, 0
	addi	x4, x13, 0
	addi	x27, x9, 0
	sw		x1, -20(x2)	# 1276
	addi	x2, x2, -24	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 24	# 1276
	lw		x1, -20(x2)	# 1276
	addi	x5, x0, 4	# 1276
	lw		x6, -16(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x8, -12(x2)	# 1276
	add		x5, x8, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.18230:
	lw		x4, -8(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x4, 0(x2)	# 1282
	lw		x27, -4(x2)	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x0, x31, 0	# 1282
setup_startp_constants.2782.8838:
	lw		x6, 20(x27)	# 1295
	lw		x8, 16(x27)	# 1295
	lw		x9, 12(x27)	# 1295
	lw		x10, 8(x27)	# 1295
	lw		x11, 4(x27)	# 1295
	ble		x10, x5, ble.18234	# 1295
	jalr	x0, x1, 0	# 1310
ble.18234:
	addi	x12, x7, 48	# 1296
	addi	x13, x0, 4	# 1296
	mul		x13, x5, x13	# 1296
	add		x12, x12, x13	# 1296
	lw		x12, 0(x12)	# 1296
	lw		x13, 40(x12)	# 548
	lw		x14, 4(x12)	# 353
	addi	x15, x0, 4	# 1299
	mul		x15, x10, x15	# 1299
	add		x15, x4, x15	# 1299
	flw		f1, 0(x15)	# 1299
	lw		x15, 20(x12)	# 431
	addi	x16, x0, 4	# 436
	mul		x16, x10, x16	# 436
	add		x15, x15, x16	# 436
	flw		f2, 0(x15)	# 436
	fsub	f1, f1, f2	# 1299
	addi	x15, x0, 4	# 1299
	mul		x10, x10, x15	# 1299
	add		x10, x13, x10	# 1299
	fsw		f1, 0(x10)	# 1299
	addi	x10, x0, 4	# 1300
	mul		x10, x11, x10	# 1300
	add		x10, x4, x10	# 1300
	flw		f1, 0(x10)	# 1300
	lw		x10, 20(x12)	# 441
	addi	x15, x0, 4	# 446
	mul		x15, x11, x15	# 446
	add		x10, x10, x15	# 446
	flw		f2, 0(x10)	# 446
	fsub	f1, f1, f2	# 1300
	addi	x10, x0, 4	# 1300
	mul		x10, x11, x10	# 1300
	add		x10, x13, x10	# 1300
	fsw		f1, 0(x10)	# 1300
	addi	x10, x0, 4	# 1301
	mul		x10, x9, x10	# 1301
	add		x10, x4, x10	# 1301
	flw		f1, 0(x10)	# 1301
	lw		x10, 20(x12)	# 451
	addi	x15, x0, 4	# 456
	mul		x15, x9, x15	# 456
	add		x10, x10, x15	# 456
	flw		f2, 0(x10)	# 456
	fsub	f1, f1, f2	# 1301
	addi	x10, x0, 4	# 1301
	mul		x10, x9, x10	# 1301
	add		x10, x13, x10	# 1301
	fsw		f1, 0(x10)	# 1301
	sw		x4, 0(x2)	# 1302
	sw		x27, -4(x2)	# 1302
	sw		x11, -8(x2)	# 1302
	sw		x5, -12(x2)	# 1302
	beq		x14, x9, beq.18237	# 1302
	addi	x6, x0, 2	# 1305
	ble		x14, x6, ble_cont.18238	# 1305
	addi	x6, x0, 0	# 1306
	addi	x9, x0, 4	# 1306
	mul		x6, x6, x9	# 1306
	add		x6, x13, x6	# 1306
	flw		f1, 0(x6)	# 1306
	addi	x6, x0, 1	# 1306
	addi	x9, x0, 4	# 1306
	mul		x6, x6, x9	# 1306
	add		x6, x13, x6	# 1306
	flw		f2, 0(x6)	# 1306
	addi	x6, x0, 2	# 1306
	addi	x9, x0, 4	# 1306
	mul		x6, x6, x9	# 1306
	add		x6, x13, x6	# 1306
	flw		f3, 0(x6)	# 1306
	sw		x13, -16(x2)	# 1306
	sw		x14, -20(x2)	# 1306
	addi	x4, x12, 0
	addi	x27, x8, 0
	sw		x1, -24(x2)	# 1306
	addi	x2, x2, -28	# 1306
	lw		x31, 0(x27)	# 1306
	jalr	x1, x31, 0	# 1306
	addi	x2, x2, 28	# 1306
	lw		x1, -24(x2)	# 1306
	addi	x4, x0, 3	# 1307
	addi	x5, x0, 3	# 1307
	lw		x6, -20(x2)	# 1307
	beq		x6, x5, beq.18240	# 1307
	jal		x0, beq_cont.18239	# 1307
beq.18240:
	fadd	f2, f0, f16	# 1307
	fsub	f1, f1, f2	# 1307
beq_cont.18239:
	addi	x5, x0, 4	# 1307
	mul		x4, x4, x5	# 1307
	lw		x5, -16(x2)	# 1307
	add		x4, x5, x4	# 1307
	fsw		f1, 0(x4)	# 1307
ble_cont.18238:
	jal		x0, beq_cont.18236	# 1302
beq.18237:
	addi	x8, x0, 3	# 1303
	lw		x9, 16(x12)	# 421
	addi	x10, x0, 0	# 1304
	addi	x12, x0, 4	# 1304
	mul		x10, x10, x12	# 1304
	add		x10, x13, x10	# 1304
	flw		f1, 0(x10)	# 1304
	addi	x10, x0, 1	# 1304
	addi	x12, x0, 4	# 1304
	mul		x10, x10, x12	# 1304
	add		x10, x13, x10	# 1304
	flw		f2, 0(x10)	# 1304
	addi	x10, x0, 2	# 1304
	addi	x12, x0, 4	# 1304
	mul		x10, x10, x12	# 1304
	add		x10, x13, x10	# 1304
	flw		f3, 0(x10)	# 1304
	sw		x13, -16(x2)	# 1304
	sw		x8, -24(x2)	# 1304
	addi	x4, x9, 0
	addi	x27, x6, 0
	sw		x1, -28(x2)	# 1304
	addi	x2, x2, -32	# 1304
	lw		x31, 0(x27)	# 1304
	jalr	x1, x31, 0	# 1304
	addi	x2, x2, 32	# 1304
	lw		x1, -28(x2)	# 1304
	addi	x4, x0, 4	# 1303
	lw		x5, -24(x2)	# 1303
	mul		x4, x5, x4	# 1303
	lw		x5, -16(x2)	# 1303
	add		x4, x5, x4	# 1303
	fsw		f1, 0(x4)	# 1303
beq_cont.18236:
	lw		x4, -8(x2)	# 1309
	lw		x5, -12(x2)	# 1309
	sub		x5, x5, x4	# 1309
	lw		x4, 0(x2)	# 1309
	lw		x27, -4(x2)	# 1309
	lw		x31, 0(x27)	# 1309
	jalr	x0, x31, 0	# 1309
is_rect_outside.2787.8841:
	lw		x5, 16(x27)	# 1327
	lw		x6, 12(x27)	# 1327
	lw		x8, 8(x27)	# 1327
	flw		f4, 4(x27)	# 5
	fle		x31, f1, f4	# 5
	beq		x31, x0, fle_cont.18241	# 5
	fsub	f1, f0, f1	# 5
fle_cont.18241:
	lw		x9, 16(x4)	# 391
	addi	x10, x0, 4	# 396
	mul		x10, x6, x10	# 396
	add		x9, x9, x10	# 396
	flw		f5, 0(x9)	# 396
	fle		x31, f5, f1	# 6
	beq		x31, x0, fle_else.18243	# 6
	addi	x9, x0, 0	# 6
	jal		x0, fle_cont.18242	# 6
fle_else.18243:
	addi	x9, x0, 1	# 6
fle_cont.18242:
	beq		x9, x6, beq.18245	# 1327
	fle		x31, f2, f4	# 5
	beq		x31, x0, fle_else.18247	# 5
	fsub	f1, f0, f2	# 5
	jal		x0, fle_cont.18246	# 5
fle_else.18247:
	fadd	f1, f0, f2	# 5
fle_cont.18246:
	lw		x9, 16(x4)	# 401
	addi	x10, x0, 4	# 406
	mul		x8, x8, x10	# 406
	add		x8, x9, x8	# 406
	flw		f2, 0(x8)	# 406
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.18249	# 6
	addi	x8, x0, 0	# 6
	jal		x0, fle_cont.18248	# 6
fle_else.18249:
	addi	x8, x0, 1	# 6
fle_cont.18248:
	beq		x8, x6, beq.18251	# 1328
	fle		x31, f3, f4	# 5
	beq		x31, x0, fle_else.18253	# 5
	fsub	f1, f0, f3	# 5
	jal		x0, fle_cont.18252	# 5
fle_else.18253:
	fadd	f1, f0, f3	# 5
fle_cont.18252:
	lw		x8, 16(x4)	# 411
	addi	x9, x0, 4	# 416
	mul		x5, x5, x9	# 416
	add		x5, x8, x5	# 416
	flw		f2, 0(x5)	# 416
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.18255	# 6
	addi	x5, x0, 0	# 6
	jal		x0, fle_cont.18254	# 6
fle_else.18255:
	addi	x5, x0, 1	# 6
fle_cont.18254:
	jal		x0, beq_cont.18250	# 1328
beq.18251:
	addi	x5, x0, 0	# 1330
beq_cont.18250:
	jal		x0, beq_cont.18244	# 1327
beq.18245:
	addi	x5, x0, 0	# 1331
beq_cont.18244:
	beq		x5, x6, beq.18256	# 1326
	lw		x4, 24(x4)	# 373
	jalr	x0, x1, 0	# 377
beq.18256:
	lw		x4, 24(x4)	# 373
	beq		x4, x6, beq.18257	# 1332
	addi	x4, x0, 0	# 1332
	jalr	x0, x1, 0	# 1332
beq.18257:
	addi	x4, x0, 1	# 1332
	jalr	x0, x1, 0	# 1332
is_plane_outside.2792.8846:
	lw		x5, 12(x27)	# 421
	lw		x6, 8(x27)	# 421
	flw		f4, 4(x27)	# 421
	lw		x8, 16(x4)	# 421
	sw		x6, 0(x2)	# 1337
	fsw		f4, -4(x2)	# 1337
	sw		x4, -8(x2)	# 1337
	addi	x4, x8, 0
	addi	x27, x5, 0
	sw		x1, -12(x2)	# 1337
	addi	x2, x2, -16	# 1337
	lw		x31, 0(x27)	# 1337
	jalr	x1, x31, 0	# 1337
	addi	x2, x2, 16	# 1337
	lw		x1, -12(x2)	# 1337
	lw		x4, -8(x2)	# 373
	lw		x4, 24(x4)	# 373
	flw		f2, -4(x2)	# 3
	fle		x31, f2, f1	# 3
	beq		x31, x0, fle_else.18259	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.18258	# 3
fle_else.18259:
	addi	x5, x0, 1	# 3
fle_cont.18258:
	lw		x6, 0(x2)	# 204
	beq		x4, x6, beq.18261	# 204
	beq		x5, x6, beq.18263	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.18262	# 204
beq.18263:
	addi	x4, x0, 1	# 204
beq_cont.18262:
	jal		x0, beq_cont.18260	# 204
beq.18261:
	addi	x4, x5, 0	# 204
beq_cont.18260:
	beq		x4, x6, beq.18264	# 1338
	addi	x4, x0, 0	# 1338
	jalr	x0, x1, 0	# 1338
beq.18264:
	addi	x4, x0, 1	# 1338
	jalr	x0, x1, 0	# 1338
is_second_outside.2797.8851:
	lw		x5, 16(x27)	# 1343
	lw		x6, 12(x27)	# 1343
	lw		x8, 8(x27)	# 1343
	flw		f4, 4(x27)	# 1343
	sw		x8, 0(x2)	# 1343
	fsw		f4, -4(x2)	# 1343
	sw		x6, -8(x2)	# 1343
	sw		x4, -12(x2)	# 1343
	addi	x27, x5, 0
	sw		x1, -16(x2)	# 1343
	addi	x2, x2, -20	# 1343
	lw		x31, 0(x27)	# 1343
	jalr	x1, x31, 0	# 1343
	addi	x2, x2, 20	# 1343
	lw		x1, -16(x2)	# 1343
	lw		x4, -12(x2)	# 353
	lw		x5, 4(x4)	# 353
	lw		x6, -8(x2)	# 1344
	beq		x5, x6, beq.18266	# 1344
	jal		x0, beq_cont.18265	# 1344
beq.18266:
	fadd	f2, f0, f16	# 1344
	fsub	f1, f1, f2	# 1344
beq_cont.18265:
	lw		x4, 24(x4)	# 373
	flw		f2, -4(x2)	# 3
	fle		x31, f2, f1	# 3
	beq		x31, x0, fle_else.18268	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.18267	# 3
fle_else.18268:
	addi	x5, x0, 1	# 3
fle_cont.18267:
	lw		x6, 0(x2)	# 204
	beq		x4, x6, beq.18270	# 204
	beq		x5, x6, beq.18272	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.18271	# 204
beq.18272:
	addi	x4, x0, 1	# 204
beq_cont.18271:
	jal		x0, beq_cont.18269	# 204
beq.18270:
	addi	x4, x5, 0	# 204
beq_cont.18269:
	beq		x4, x6, beq.18273	# 1345
	addi	x4, x0, 0	# 1345
	jalr	x0, x1, 0	# 1345
beq.18273:
	addi	x4, x0, 1	# 1345
	jalr	x0, x1, 0	# 1345
is_outside.2802.8856:
	lw		x5, 24(x27)	# 431
	lw		x6, 20(x27)	# 431
	lw		x8, 16(x27)	# 431
	lw		x9, 12(x27)	# 431
	lw		x10, 8(x27)	# 431
	lw		x11, 4(x27)	# 431
	lw		x12, 20(x4)	# 431
	addi	x13, x0, 4	# 436
	mul		x10, x10, x13	# 436
	add		x10, x12, x10	# 436
	flw		f4, 0(x10)	# 436
	fsub	f1, f1, f4	# 1350
	lw		x10, 20(x4)	# 441
	addi	x12, x0, 4	# 446
	mul		x12, x11, x12	# 446
	add		x10, x10, x12	# 446
	flw		f4, 0(x10)	# 446
	fsub	f2, f2, f4	# 1351
	lw		x10, 20(x4)	# 451
	addi	x12, x0, 4	# 456
	mul		x12, x9, x12	# 456
	add		x10, x10, x12	# 456
	flw		f4, 0(x10)	# 456
	fsub	f3, f3, f4	# 1352
	lw		x10, 4(x4)	# 353
	beq		x10, x11, beq.18274	# 1354
	beq		x10, x9, beq.18275	# 1356
	addi	x27, x5, 0
	lw		x31, 0(x27)	# 1359
	jalr	x0, x31, 0	# 1359
beq.18275:
	addi	x27, x8, 0
	lw		x31, 0(x27)	# 1357
	jalr	x0, x31, 0	# 1357
beq.18274:
	addi	x27, x6, 0
	lw		x31, 0(x27)	# 1355
	jalr	x0, x31, 0	# 1355
check_all_inside.2807.8861:
	lw		x6, 16(x27)	# 1364
	lw		x8, 12(x27)	# 1364
	lw		x9, 8(x27)	# 1364
	lw		x10, 4(x27)	# 1364
	addi	x11, x0, 4	# 1364
	mul		x11, x4, x11	# 1364
	add		x11, x5, x11	# 1364
	lw		x11, 0(x11)	# 1364
	beq		x11, x8, beq.18276	# 1365
	addi	x8, x7, 48	# 1368
	addi	x12, x0, 4	# 1368
	mul		x11, x11, x12	# 1368
	add		x8, x8, x11	# 1368
	lw		x8, 0(x8)	# 1368
	fsw		f3, 0(x2)	# 1368
	fsw		f2, -4(x2)	# 1368
	fsw		f1, -8(x2)	# 1368
	sw		x5, -12(x2)	# 1368
	sw		x27, -16(x2)	# 1368
	sw		x10, -20(x2)	# 1368
	sw		x4, -24(x2)	# 1368
	sw		x9, -28(x2)	# 1368
	addi	x4, x8, 0
	addi	x27, x6, 0
	sw		x1, -32(x2)	# 1368
	addi	x2, x2, -36	# 1368
	lw		x31, 0(x27)	# 1368
	jalr	x1, x31, 0	# 1368
	addi	x2, x2, 36	# 1368
	lw		x1, -32(x2)	# 1368
	lw		x5, -28(x2)	# 1368
	beq		x4, x5, beq.18277	# 1368
	addi	x4, x0, 0	# 1369
	jalr	x0, x1, 0	# 1369
beq.18277:
	lw		x4, -20(x2)	# 1371
	lw		x5, -24(x2)	# 1371
	add		x4, x5, x4	# 1371
	flw		f1, -8(x2)	# 1371
	flw		f2, -4(x2)	# 1371
	flw		f3, 0(x2)	# 1371
	lw		x5, -12(x2)	# 1371
	lw		x27, -16(x2)	# 1371
	lw		x31, 0(x27)	# 1371
	jalr	x0, x31, 0	# 1371
beq.18276:
	addi	x4, x0, 1	# 1366
	jalr	x0, x1, 0	# 1366
shadow_check_and_group.2813.8867:
	lw		x6, 28(x27)	# 1384
	lw		x8, 24(x27)	# 1384
	lw		x9, 20(x27)	# 1384
	lw		x10, 16(x27)	# 1384
	lw		x11, 12(x27)	# 1384
	lw		x12, 8(x27)	# 1384
	lw		x13, 4(x27)	# 1384
	addi	x14, x0, 4	# 1384
	mul		x14, x4, x14	# 1384
	add		x14, x5, x14	# 1384
	lw		x14, 0(x14)	# 1384
	beq		x14, x11, beq.18278	# 1384
	addi	x11, x7, 552	# 1388
	sw		x9, 0(x2)	# 1388
	sw		x10, -4(x2)	# 1388
	sw		x5, -8(x2)	# 1388
	sw		x27, -12(x2)	# 1388
	sw		x13, -16(x2)	# 1388
	sw		x4, -20(x2)	# 1388
	sw		x14, -24(x2)	# 1388
	sw		x12, -28(x2)	# 1388
	addi	x5, x8, 0
	addi	x4, x14, 0
	addi	x27, x6, 0
	addi	x6, x11, 0
	sw		x1, -32(x2)	# 1388
	addi	x2, x2, -36	# 1388
	lw		x31, 0(x27)	# 1388
	jalr	x1, x31, 0	# 1388
	addi	x2, x2, 36	# 1388
	lw		x1, -32(x2)	# 1388
	addi	x5, x7, 540	# 1389
	addi	x6, x0, 4	# 1389
	lw		x8, -28(x2)	# 1389
	mul		x6, x8, x6	# 1389
	add		x5, x5, x6	# 1389
	flw		f1, 0(x5)	# 1389
	beq		x4, x8, beq.18280	# 1390
	lui		x4, %hi(l.14371)	# 1390
	ori		x4, x0, %lo(l.14371)	# 1390
	flw		f2, 0(x4)	# 1390
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.18282	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18281	# 6
fle_else.18282:
	addi	x4, x0, 1	# 6
fle_cont.18281:
	jal		x0, beq_cont.18279	# 1390
beq.18280:
	addi	x4, x0, 0	# 1390
beq_cont.18279:
	beq		x4, x8, beq.18283	# 1390
	fadd	f2, f0, f23	# 1393
	fadd	f1, f1, f2	# 1393
	addi	x4, x7, 312	# 1394
	addi	x5, x0, 4	# 1394
	mul		x5, x8, x5	# 1394
	add		x4, x4, x5	# 1394
	flw		f2, 0(x4)	# 1394
	fmul	f2, f2, f1	# 1394
	addi	x4, x7, 552	# 1394
	addi	x5, x0, 4	# 1394
	mul		x5, x8, x5	# 1394
	add		x4, x4, x5	# 1394
	flw		f3, 0(x4)	# 1394
	fadd	f2, f2, f3	# 1394
	addi	x4, x7, 312	# 1395
	addi	x5, x0, 4	# 1395
	lw		x6, -16(x2)	# 1395
	mul		x5, x6, x5	# 1395
	add		x4, x4, x5	# 1395
	flw		f3, 0(x4)	# 1395
	fmul	f3, f3, f1	# 1395
	addi	x4, x7, 552	# 1395
	addi	x5, x0, 4	# 1395
	mul		x5, x6, x5	# 1395
	add		x4, x4, x5	# 1395
	flw		f4, 0(x4)	# 1395
	fadd	f3, f3, f4	# 1395
	addi	x4, x7, 312	# 1396
	addi	x5, x0, 4	# 1396
	lw		x9, -4(x2)	# 1396
	mul		x5, x9, x5	# 1396
	add		x4, x4, x5	# 1396
	flw		f4, 0(x4)	# 1396
	fmul	f1, f4, f1	# 1396
	addi	x4, x7, 552	# 1396
	addi	x5, x0, 4	# 1396
	mul		x5, x9, x5	# 1396
	add		x4, x4, x5	# 1396
	flw		f4, 0(x4)	# 1396
	fadd	f1, f1, f4	# 1396
	lw		x5, -8(x2)	# 1397
	lw		x27, 0(x2)	# 1397
	addi	x4, x8, 0
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -32(x2)	# 1397
	addi	x2, x2, -36	# 1397
	lw		x31, 0(x27)	# 1397
	jalr	x1, x31, 0	# 1397
	addi	x2, x2, 36	# 1397
	lw		x1, -32(x2)	# 1397
	lw		x5, -28(x2)	# 1397
	beq		x4, x5, beq.18284	# 1397
	addi	x4, x0, 1	# 1398
	jalr	x0, x1, 0	# 1398
beq.18284:
	lw		x4, -16(x2)	# 1400
	lw		x5, -20(x2)	# 1400
	add		x4, x5, x4	# 1400
	lw		x5, -8(x2)	# 1400
	lw		x27, -12(x2)	# 1400
	lw		x31, 0(x27)	# 1400
	jalr	x0, x31, 0	# 1400
beq.18283:
	addi	x4, x7, 48	# 1406
	addi	x5, x0, 4	# 1406
	lw		x6, -24(x2)	# 1406
	mul		x5, x6, x5	# 1406
	add		x4, x4, x5	# 1406
	lw		x4, 0(x4)	# 1406
	lw		x4, 24(x4)	# 373
	beq		x4, x8, beq.18285	# 1406
	lw		x4, -16(x2)	# 1407
	lw		x5, -20(x2)	# 1407
	add		x4, x5, x4	# 1407
	lw		x5, -8(x2)	# 1407
	lw		x27, -12(x2)	# 1407
	lw		x31, 0(x27)	# 1407
	jalr	x0, x31, 0	# 1407
beq.18285:
	addi	x4, x0, 0	# 1409
	jalr	x0, x1, 0	# 1409
beq.18278:
	addi	x4, x0, 0	# 1385
	jalr	x0, x1, 0	# 1385
shadow_check_one_or_group.2816.8870:
	lw		x6, 16(x27)	# 1414
	lw		x8, 12(x27)	# 1414
	lw		x9, 8(x27)	# 1414
	lw		x10, 4(x27)	# 1414
	addi	x11, x0, 4	# 1414
	mul		x11, x4, x11	# 1414
	add		x11, x5, x11	# 1414
	lw		x11, 0(x11)	# 1414
	beq		x11, x8, beq.18286	# 1415
	addi	x8, x7, 332	# 1418
	addi	x12, x0, 4	# 1418
	mul		x11, x11, x12	# 1418
	add		x8, x8, x11	# 1418
	lw		x8, 0(x8)	# 1418
	sw		x5, 0(x2)	# 1419
	sw		x27, -4(x2)	# 1419
	sw		x10, -8(x2)	# 1419
	sw		x4, -12(x2)	# 1419
	sw		x9, -16(x2)	# 1419
	addi	x5, x8, 0
	addi	x4, x9, 0
	addi	x27, x6, 0
	sw		x1, -20(x2)	# 1419
	addi	x2, x2, -24	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 24	# 1419
	lw		x1, -20(x2)	# 1419
	lw		x5, -16(x2)	# 1420
	beq		x4, x5, beq.18287	# 1420
	addi	x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.18287:
	lw		x4, -8(x2)	# 1423
	lw		x5, -12(x2)	# 1423
	add		x4, x5, x4	# 1423
	lw		x5, 0(x2)	# 1423
	lw		x27, -4(x2)	# 1423
	lw		x31, 0(x27)	# 1423
	jalr	x0, x31, 0	# 1423
beq.18286:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
shadow_check_one_or_matrix.2819.8873:
	lw		x6, 24(x27)	# 1429
	lw		x8, 20(x27)	# 1429
	lw		x9, 16(x27)	# 1429
	lw		x10, 12(x27)	# 1429
	lw		x11, 8(x27)	# 1429
	lw		x12, 4(x27)	# 1429
	addi	x13, x0, 4	# 1429
	mul		x13, x4, x13	# 1429
	add		x13, x5, x13	# 1429
	lw		x13, 0(x13)	# 1429
	addi	x14, x0, 4	# 1430
	mul		x14, x11, x14	# 1430
	add		x14, x13, x14	# 1430
	lw		x14, 0(x14)	# 1430
	beq		x14, x10, beq.18288	# 1431
	addi	x10, x0, 99	# 1435
	sw		x13, 0(x2)	# 1435
	sw		x8, -4(x2)	# 1435
	sw		x5, -8(x2)	# 1435
	sw		x27, -12(x2)	# 1435
	sw		x12, -16(x2)	# 1435
	sw		x4, -20(x2)	# 1435
	sw		x11, -24(x2)	# 1435
	beq		x14, x10, beq.18290	# 1435
	addi	x10, x7, 552	# 1438
	addi	x5, x9, 0
	addi	x4, x14, 0
	addi	x27, x6, 0
	addi	x6, x10, 0
	sw		x1, -28(x2)	# 1438
	addi	x2, x2, -32	# 1438
	lw		x31, 0(x27)	# 1438
	jalr	x1, x31, 0	# 1438
	addi	x2, x2, 32	# 1438
	lw		x1, -28(x2)	# 1438
	addi	x5, x0, 0	# 1441
	beq		x4, x5, beq.18292	# 1441
	addi	x4, x0, 0	# 1442
	addi	x5, x7, 540	# 1442
	addi	x6, x0, 4	# 1442
	mul		x4, x4, x6	# 1442
	add		x4, x5, x4	# 1442
	flw		f1, 0(x4)	# 1442
	fadd	f2, f0, f22	# 1442
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.18294	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18293	# 6
fle_else.18294:
	addi	x4, x0, 1	# 6
fle_cont.18293:
	addi	x5, x0, 0	# 1442
	beq		x4, x5, beq.18296	# 1442
	addi	x4, x0, 1	# 1443
	lw		x5, 0(x2)	# 1443
	lw		x27, -4(x2)	# 1443
	sw		x1, -28(x2)	# 1443
	addi	x2, x2, -32	# 1443
	lw		x31, 0(x27)	# 1443
	jalr	x1, x31, 0	# 1443
	addi	x2, x2, 32	# 1443
	lw		x1, -28(x2)	# 1443
	addi	x5, x0, 0	# 1443
	beq		x4, x5, beq.18298	# 1443
	addi	x4, x0, 1	# 1444
	jal		x0, beq_cont.18297	# 1443
beq.18298:
	addi	x4, x0, 0	# 1445
beq_cont.18297:
	jal		x0, beq_cont.18295	# 1442
beq.18296:
	addi	x4, x0, 0	# 1446
beq_cont.18295:
	jal		x0, beq_cont.18291	# 1441
beq.18292:
	addi	x4, x0, 0	# 1447
beq_cont.18291:
	jal		x0, beq_cont.18289	# 1435
beq.18290:
	addi	x4, x0, 1	# 1436
beq_cont.18289:
	lw		x5, -24(x2)	# 1434
	beq		x4, x5, beq.18299	# 1434
	lw		x4, -16(x2)	# 1449
	lw		x6, 0(x2)	# 1449
	lw		x27, -4(x2)	# 1449
	addi	x5, x6, 0
	sw		x1, -28(x2)	# 1449
	addi	x2, x2, -32	# 1449
	lw		x31, 0(x27)	# 1449
	jalr	x1, x31, 0	# 1449
	addi	x2, x2, 32	# 1449
	lw		x1, -28(x2)	# 1449
	lw		x5, -24(x2)	# 1449
	beq		x4, x5, beq.18300	# 1449
	addi	x4, x0, 1	# 1450
	jalr	x0, x1, 0	# 1450
beq.18300:
	lw		x4, -16(x2)	# 1452
	lw		x5, -20(x2)	# 1452
	add		x4, x5, x4	# 1452
	lw		x5, -8(x2)	# 1452
	lw		x27, -12(x2)	# 1452
	lw		x31, 0(x27)	# 1452
	jalr	x0, x31, 0	# 1452
beq.18299:
	lw		x4, -16(x2)	# 1454
	lw		x5, -20(x2)	# 1454
	add		x4, x5, x4	# 1454
	lw		x5, -8(x2)	# 1454
	lw		x27, -12(x2)	# 1454
	lw		x31, 0(x27)	# 1454
	jalr	x0, x31, 0	# 1454
beq.18288:
	addi	x4, x0, 0	# 1432
	jalr	x0, x1, 0	# 1432
solve_each_element.2822.8876:
	lw		x8, 28(x27)	# 1465
	lw		x9, 24(x27)	# 1465
	lw		x10, 20(x27)	# 1465
	lw		x11, 16(x27)	# 1465
	lw		x12, 12(x27)	# 1465
	lw		x13, 8(x27)	# 1465
	flw		f1, 4(x27)	# 1465
	addi	x14, x0, 4	# 1465
	mul		x14, x4, x14	# 1465
	add		x14, x5, x14	# 1465
	lw		x14, 0(x14)	# 1465
	beq		x14, x11, beq.18301	# 1466
	addi	x11, x7, 636	# 1468
	sw		x10, 0(x2)	# 1468
	sw		x9, -4(x2)	# 1468
	fsw		f1, -8(x2)	# 1468
	sw		x6, -12(x2)	# 1468
	sw		x5, -16(x2)	# 1468
	sw		x27, -20(x2)	# 1468
	sw		x13, -24(x2)	# 1468
	sw		x4, -28(x2)	# 1468
	sw		x14, -32(x2)	# 1468
	sw		x12, -36(x2)	# 1468
	addi	x5, x6, 0
	addi	x4, x14, 0
	addi	x27, x8, 0
	addi	x6, x11, 0
	sw		x1, -40(x2)	# 1468
	addi	x2, x2, -44	# 1468
	lw		x31, 0(x27)	# 1468
	jalr	x1, x31, 0	# 1468
	addi	x2, x2, 44	# 1468
	lw		x1, -40(x2)	# 1468
	lw		x5, -36(x2)	# 1469
	beq		x4, x5, beq.18302	# 1469
	addi	x6, x7, 540	# 1473
	addi	x8, x0, 4	# 1473
	mul		x8, x5, x8	# 1473
	add		x6, x6, x8	# 1473
	flw		f1, 0(x6)	# 1473
	flw		f2, -8(x2)	# 6
	fle		x31, f1, f2	# 6
	beq		x31, x0, fle_else.18304	# 6
	addi	x6, x0, 0	# 6
	jal		x0, fle_cont.18303	# 6
fle_else.18304:
	addi	x6, x0, 1	# 6
fle_cont.18303:
	beq		x6, x5, beq_cont.18305	# 1475
	addi	x6, x0, 0	# 1476
	addi	x8, x7, 548	# 1476
	addi	x9, x0, 4	# 1476
	mul		x6, x6, x9	# 1476
	add		x6, x8, x6	# 1476
	flw		f2, 0(x6)	# 1476
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.18307	# 6
	addi	x6, x0, 0	# 6
	jal		x0, fle_cont.18306	# 6
fle_else.18307:
	addi	x6, x0, 1	# 6
fle_cont.18306:
	addi	x8, x0, 0	# 1476
	beq		x6, x8, beq_cont.18308	# 1476
	fadd	f2, f0, f23	# 1478
	fadd	f1, f1, f2	# 1478
	addi	x6, x0, 0	# 1479
	addi	x8, x0, 4	# 1479
	mul		x6, x6, x8	# 1479
	lw		x8, -12(x2)	# 1479
	add		x6, x8, x6	# 1479
	flw		f2, 0(x6)	# 1479
	fmul	f2, f2, f1	# 1479
	addi	x6, x0, 0	# 1479
	addi	x9, x7, 636	# 1479
	addi	x10, x0, 4	# 1479
	mul		x6, x6, x10	# 1479
	add		x6, x9, x6	# 1479
	flw		f3, 0(x6)	# 1479
	fadd	f2, f2, f3	# 1479
	addi	x6, x0, 1	# 1480
	addi	x9, x0, 4	# 1480
	mul		x6, x6, x9	# 1480
	add		x6, x8, x6	# 1480
	flw		f3, 0(x6)	# 1480
	fmul	f3, f3, f1	# 1480
	addi	x6, x0, 1	# 1480
	addi	x9, x7, 636	# 1480
	addi	x10, x0, 4	# 1480
	mul		x6, x6, x10	# 1480
	add		x6, x9, x6	# 1480
	flw		f4, 0(x6)	# 1480
	fadd	f3, f3, f4	# 1480
	addi	x6, x0, 2	# 1481
	addi	x9, x0, 4	# 1481
	mul		x6, x6, x9	# 1481
	add		x6, x8, x6	# 1481
	flw		f4, 0(x6)	# 1481
	fmul	f4, f4, f1	# 1481
	addi	x6, x0, 2	# 1481
	addi	x9, x7, 636	# 1481
	addi	x10, x0, 4	# 1481
	mul		x6, x6, x10	# 1481
	add		x6, x9, x6	# 1481
	flw		f5, 0(x6)	# 1481
	fadd	f4, f4, f5	# 1481
	addi	x6, x0, 0	# 1482
	lw		x9, -16(x2)	# 1482
	lw		x27, -4(x2)	# 1482
	sw		x4, -40(x2)	# 1482
	fsw		f4, -44(x2)	# 1482
	fsw		f3, -48(x2)	# 1482
	fsw		f2, -52(x2)	# 1482
	fsw		f1, -56(x2)	# 1482
	addi	x5, x9, 0
	addi	x4, x6, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -60(x2)	# 1482
	addi	x2, x2, -64	# 1482
	lw		x31, 0(x27)	# 1482
	jalr	x1, x31, 0	# 1482
	addi	x2, x2, 64	# 1482
	lw		x1, -60(x2)	# 1482
	addi	x5, x0, 0	# 1482
	beq		x4, x5, beq_cont.18309	# 1482
	addi	x4, x0, 0	# 1484
	addi	x5, x7, 548	# 1484
	addi	x6, x0, 4	# 1484
	mul		x4, x4, x6	# 1484
	add		x4, x5, x4	# 1484
	flw		f1, -56(x2)	# 1484
	fsw		f1, 0(x4)	# 1484
	addi	x4, x7, 552	# 240
	addi	x5, x0, 4	# 240
	lw		x6, -36(x2)	# 240
	mul		x5, x6, x5	# 240
	add		x4, x4, x5	# 240
	flw		f1, -52(x2)	# 240
	fsw		f1, 0(x4)	# 240
	addi	x4, x7, 552	# 241
	addi	x5, x0, 4	# 241
	lw		x6, -24(x2)	# 241
	mul		x5, x6, x5	# 241
	add		x4, x4, x5	# 241
	flw		f1, -48(x2)	# 241
	fsw		f1, 0(x4)	# 241
	addi	x4, x7, 552	# 242
	addi	x5, x0, 4	# 242
	lw		x8, 0(x2)	# 242
	mul		x5, x8, x5	# 242
	add		x4, x4, x5	# 242
	flw		f1, -44(x2)	# 242
	fsw		f1, 0(x4)	# 242
	addi	x4, x0, 0	# 1486
	addi	x5, x7, 564	# 1486
	addi	x8, x0, 4	# 1486
	mul		x4, x4, x8	# 1486
	add		x4, x5, x4	# 1486
	lw		x5, -32(x2)	# 1486
	sw		x5, 0(x4)	# 1486
	addi	x4, x0, 0	# 1487
	addi	x5, x7, 544	# 1487
	addi	x8, x0, 4	# 1487
	mul		x4, x4, x8	# 1487
	add		x4, x5, x4	# 1487
	lw		x5, -40(x2)	# 1487
	sw		x5, 0(x4)	# 1487
beq_cont.18309:
beq_cont.18308:
beq_cont.18305:
	lw		x4, -24(x2)	# 1493
	lw		x5, -28(x2)	# 1493
	add		x4, x5, x4	# 1493
	lw		x5, -16(x2)	# 1493
	lw		x6, -12(x2)	# 1493
	lw		x27, -20(x2)	# 1493
	lw		x31, 0(x27)	# 1493
	jalr	x0, x31, 0	# 1493
beq.18302:
	addi	x4, x7, 48	# 1497
	addi	x6, x0, 4	# 1497
	lw		x8, -32(x2)	# 1497
	mul		x6, x8, x6	# 1497
	add		x4, x4, x6	# 1497
	lw		x4, 0(x4)	# 1497
	lw		x4, 24(x4)	# 373
	beq		x4, x5, beq.18310	# 1497
	lw		x4, -24(x2)	# 1498
	lw		x5, -28(x2)	# 1498
	add		x4, x5, x4	# 1498
	lw		x5, -16(x2)	# 1498
	lw		x6, -12(x2)	# 1498
	lw		x27, -20(x2)	# 1498
	lw		x31, 0(x27)	# 1498
	jalr	x0, x31, 0	# 1498
beq.18310:
	jalr	x0, x1, 0	# 1499
beq.18301:
	jalr	x0, x1, 0	# 1466
solve_one_or_network.2826.8880:
	lw		x8, 16(x27)	# 1506
	lw		x9, 12(x27)	# 1506
	lw		x10, 8(x27)	# 1506
	lw		x11, 4(x27)	# 1506
	addi	x12, x0, 4	# 1506
	mul		x12, x4, x12	# 1506
	add		x12, x5, x12	# 1506
	lw		x12, 0(x12)	# 1506
	beq		x12, x9, beq.18313	# 1507
	addi	x9, x7, 332	# 1508
	addi	x13, x0, 4	# 1508
	mul		x12, x12, x13	# 1508
	add		x9, x9, x12	# 1508
	lw		x9, 0(x9)	# 1508
	sw		x6, 0(x2)	# 1509
	sw		x5, -4(x2)	# 1509
	sw		x27, -8(x2)	# 1509
	sw		x11, -12(x2)	# 1509
	sw		x4, -16(x2)	# 1509
	addi	x5, x9, 0
	addi	x4, x10, 0
	addi	x27, x8, 0
	sw		x1, -20(x2)	# 1509
	addi	x2, x2, -24	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 24	# 1509
	lw		x1, -20(x2)	# 1509
	lw		x4, -12(x2)	# 1510
	lw		x5, -16(x2)	# 1510
	add		x4, x5, x4	# 1510
	lw		x5, -4(x2)	# 1510
	lw		x6, 0(x2)	# 1510
	lw		x27, -8(x2)	# 1510
	lw		x31, 0(x27)	# 1510
	jalr	x0, x31, 0	# 1510
beq.18313:
	jalr	x0, x1, 0	# 1511
trace_or_matrix.2830.8884:
	lw		x8, 20(x27)	# 1516
	lw		x9, 16(x27)	# 1516
	lw		x10, 12(x27)	# 1516
	lw		x11, 8(x27)	# 1516
	lw		x12, 4(x27)	# 1516
	addi	x13, x0, 4	# 1516
	mul		x13, x4, x13	# 1516
	add		x13, x5, x13	# 1516
	lw		x13, 0(x13)	# 1516
	addi	x14, x0, 4	# 1517
	mul		x11, x11, x14	# 1517
	add		x11, x13, x11	# 1517
	lw		x11, 0(x11)	# 1517
	beq		x11, x10, beq.18315	# 1518
	addi	x10, x0, 99	# 1521
	sw		x6, 0(x2)	# 1521
	sw		x5, -4(x2)	# 1521
	sw		x27, -8(x2)	# 1521
	sw		x12, -12(x2)	# 1521
	sw		x4, -16(x2)	# 1521
	beq		x11, x10, beq.18317	# 1521
	addi	x10, x7, 636	# 1526
	sw		x13, -20(x2)	# 1526
	sw		x9, -24(x2)	# 1526
	addi	x5, x6, 0
	addi	x4, x11, 0
	addi	x27, x8, 0
	addi	x6, x10, 0
	sw		x1, -28(x2)	# 1526
	addi	x2, x2, -32	# 1526
	lw		x31, 0(x27)	# 1526
	jalr	x1, x31, 0	# 1526
	addi	x2, x2, 32	# 1526
	lw		x1, -28(x2)	# 1526
	addi	x5, x0, 0	# 1527
	beq		x4, x5, beq_cont.18318	# 1527
	addi	x4, x0, 0	# 1528
	addi	x5, x7, 540	# 1528
	addi	x6, x0, 4	# 1528
	mul		x4, x4, x6	# 1528
	add		x4, x5, x4	# 1528
	flw		f1, 0(x4)	# 1528
	addi	x4, x0, 0	# 1529
	addi	x5, x7, 548	# 1529
	addi	x6, x0, 4	# 1529
	mul		x4, x4, x6	# 1529
	add		x4, x5, x4	# 1529
	flw		f2, 0(x4)	# 1529
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.18320	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18319	# 6
fle_else.18320:
	addi	x4, x0, 1	# 6
fle_cont.18319:
	addi	x5, x0, 0	# 1529
	beq		x4, x5, beq_cont.18321	# 1529
	addi	x4, x0, 1	# 1530
	lw		x5, -20(x2)	# 1530
	lw		x6, 0(x2)	# 1530
	lw		x27, -24(x2)	# 1530
	sw		x1, -28(x2)	# 1530
	addi	x2, x2, -32	# 1530
	lw		x31, 0(x27)	# 1530
	jalr	x1, x31, 0	# 1530
	addi	x2, x2, 32	# 1530
	lw		x1, -28(x2)	# 1530
beq_cont.18321:
beq_cont.18318:
	jal		x0, beq_cont.18316	# 1521
beq.18317:
	addi	x8, x0, 1	# 1522
	addi	x5, x13, 0
	addi	x4, x8, 0
	addi	x27, x9, 0
	sw		x1, -28(x2)	# 1522
	addi	x2, x2, -32	# 1522
	lw		x31, 0(x27)	# 1522
	jalr	x1, x31, 0	# 1522
	addi	x2, x2, 32	# 1522
	lw		x1, -28(x2)	# 1522
beq_cont.18316:
	lw		x4, -12(x2)	# 1534
	lw		x5, -16(x2)	# 1534
	add		x4, x5, x4	# 1534
	lw		x5, -4(x2)	# 1534
	lw		x6, 0(x2)	# 1534
	lw		x27, -8(x2)	# 1534
	lw		x31, 0(x27)	# 1534
	jalr	x0, x31, 0	# 1534
beq.18315:
	jalr	x0, x1, 0	# 1519
judge_intersection.2834.8888:
	lw		x5, 12(x27)	# 1543
	lw		x6, 8(x27)	# 1543
	flw		f1, 4(x27)	# 1543
	addi	x8, x7, 548	# 1543
	addi	x9, x0, 4	# 1543
	mul		x9, x6, x9	# 1543
	add		x8, x8, x9	# 1543
	fsw		f1, 0(x8)	# 1543
	addi	x8, x7, 536	# 1544
	addi	x9, x0, 4	# 1544
	mul		x9, x6, x9	# 1544
	add		x8, x8, x9	# 1544
	lw		x8, 0(x8)	# 1544
	sw		x6, 0(x2)	# 1544
	addi	x27, x5, 0
	addi	x5, x8, 0
	addi	x31, x6, 0
	addi	x6, x4, 0
	addi	x4, x31, 0
	sw		x1, -4(x2)	# 1544
	addi	x2, x2, -8	# 1544
	lw		x31, 0(x27)	# 1544
	jalr	x1, x31, 0	# 1544
	addi	x2, x2, 8	# 1544
	lw		x1, -4(x2)	# 1544
	addi	x4, x7, 548	# 1545
	addi	x5, x0, 4	# 1545
	lw		x6, 0(x2)	# 1545
	mul		x5, x6, x5	# 1545
	add		x4, x4, x5	# 1545
	flw		f1, 0(x4)	# 1545
	fadd	f2, f0, f22	# 1547
	fle		x31, f1, f2	# 6
	beq		x31, x0, fle_else.18324	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18323	# 6
fle_else.18324:
	addi	x4, x0, 1	# 6
fle_cont.18323:
	beq		x4, x6, beq.18325	# 1547
	fadd	f2, f0, f26	# 1548
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.18326	# 6
	addi	x4, x0, 0	# 6
	jalr	x0, x1, 0	# 6
fle_else.18326:
	addi	x4, x0, 1	# 6
	jalr	x0, x1, 0	# 6
beq.18325:
	addi	x4, x0, 0	# 1549
	jalr	x0, x1, 0	# 1549
solve_each_element_fast.2836.8890:
	lw		x8, 28(x27)	# 639
	lw		x9, 24(x27)	# 639
	lw		x10, 20(x27)	# 639
	lw		x11, 16(x27)	# 639
	lw		x12, 12(x27)	# 639
	lw		x13, 8(x27)	# 639
	flw		f1, 4(x27)	# 639
	lw		x14, 0(x6)	# 639
	addi	x15, x0, 4	# 1559
	mul		x15, x4, x15	# 1559
	add		x15, x5, x15	# 1559
	lw		x15, 0(x15)	# 1559
	beq		x15, x11, beq.18327	# 1560
	sw		x10, 0(x2)	# 1562
	sw		x9, -4(x2)	# 1562
	sw		x14, -8(x2)	# 1562
	fsw		f1, -12(x2)	# 1562
	sw		x6, -16(x2)	# 1562
	sw		x5, -20(x2)	# 1562
	sw		x27, -24(x2)	# 1562
	sw		x13, -28(x2)	# 1562
	sw		x4, -32(x2)	# 1562
	sw		x15, -36(x2)	# 1562
	sw		x12, -40(x2)	# 1562
	addi	x5, x6, 0
	addi	x4, x15, 0
	addi	x27, x8, 0
	sw		x1, -44(x2)	# 1562
	addi	x2, x2, -48	# 1562
	lw		x31, 0(x27)	# 1562
	jalr	x1, x31, 0	# 1562
	addi	x2, x2, 48	# 1562
	lw		x1, -44(x2)	# 1562
	lw		x5, -40(x2)	# 1563
	beq		x4, x5, beq.18328	# 1563
	addi	x6, x7, 540	# 1567
	addi	x8, x0, 4	# 1567
	mul		x8, x5, x8	# 1567
	add		x6, x6, x8	# 1567
	flw		f1, 0(x6)	# 1567
	flw		f2, -12(x2)	# 6
	fle		x31, f1, f2	# 6
	beq		x31, x0, fle_else.18330	# 6
	addi	x6, x0, 0	# 6
	jal		x0, fle_cont.18329	# 6
fle_else.18330:
	addi	x6, x0, 1	# 6
fle_cont.18329:
	beq		x6, x5, beq_cont.18331	# 1569
	addi	x6, x0, 0	# 1570
	addi	x8, x7, 548	# 1570
	addi	x9, x0, 4	# 1570
	mul		x6, x6, x9	# 1570
	add		x6, x8, x6	# 1570
	flw		f2, 0(x6)	# 1570
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.18333	# 6
	addi	x6, x0, 0	# 6
	jal		x0, fle_cont.18332	# 6
fle_else.18333:
	addi	x6, x0, 1	# 6
fle_cont.18332:
	addi	x8, x0, 0	# 1570
	beq		x6, x8, beq_cont.18334	# 1570
	fadd	f2, f0, f23	# 1572
	fadd	f1, f1, f2	# 1572
	addi	x6, x0, 0	# 1573
	addi	x8, x0, 4	# 1573
	mul		x6, x6, x8	# 1573
	lw		x8, -8(x2)	# 1573
	add		x6, x8, x6	# 1573
	flw		f2, 0(x6)	# 1573
	fmul	f2, f2, f1	# 1573
	addi	x6, x0, 0	# 1573
	addi	x9, x7, 648	# 1573
	addi	x10, x0, 4	# 1573
	mul		x6, x6, x10	# 1573
	add		x6, x9, x6	# 1573
	flw		f3, 0(x6)	# 1573
	fadd	f2, f2, f3	# 1573
	addi	x6, x0, 1	# 1574
	addi	x9, x0, 4	# 1574
	mul		x6, x6, x9	# 1574
	add		x6, x8, x6	# 1574
	flw		f3, 0(x6)	# 1574
	fmul	f3, f3, f1	# 1574
	addi	x6, x0, 1	# 1574
	addi	x9, x7, 648	# 1574
	addi	x10, x0, 4	# 1574
	mul		x6, x6, x10	# 1574
	add		x6, x9, x6	# 1574
	flw		f4, 0(x6)	# 1574
	fadd	f3, f3, f4	# 1574
	addi	x6, x0, 2	# 1575
	addi	x9, x0, 4	# 1575
	mul		x6, x6, x9	# 1575
	add		x6, x8, x6	# 1575
	flw		f4, 0(x6)	# 1575
	fmul	f4, f4, f1	# 1575
	addi	x6, x0, 2	# 1575
	addi	x8, x7, 648	# 1575
	addi	x9, x0, 4	# 1575
	mul		x6, x6, x9	# 1575
	add		x6, x8, x6	# 1575
	flw		f5, 0(x6)	# 1575
	fadd	f4, f4, f5	# 1575
	addi	x6, x0, 0	# 1576
	lw		x8, -20(x2)	# 1576
	lw		x27, -4(x2)	# 1576
	sw		x4, -44(x2)	# 1576
	fsw		f4, -48(x2)	# 1576
	fsw		f3, -52(x2)	# 1576
	fsw		f2, -56(x2)	# 1576
	fsw		f1, -60(x2)	# 1576
	addi	x5, x8, 0
	addi	x4, x6, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -64(x2)	# 1576
	addi	x2, x2, -68	# 1576
	lw		x31, 0(x27)	# 1576
	jalr	x1, x31, 0	# 1576
	addi	x2, x2, 68	# 1576
	lw		x1, -64(x2)	# 1576
	addi	x5, x0, 0	# 1576
	beq		x4, x5, beq_cont.18335	# 1576
	addi	x4, x0, 0	# 1578
	addi	x5, x7, 548	# 1578
	addi	x6, x0, 4	# 1578
	mul		x4, x4, x6	# 1578
	add		x4, x5, x4	# 1578
	flw		f1, -60(x2)	# 1578
	fsw		f1, 0(x4)	# 1578
	addi	x4, x7, 552	# 240
	addi	x5, x0, 4	# 240
	lw		x6, -40(x2)	# 240
	mul		x5, x6, x5	# 240
	add		x4, x4, x5	# 240
	flw		f1, -56(x2)	# 240
	fsw		f1, 0(x4)	# 240
	addi	x4, x7, 552	# 241
	addi	x5, x0, 4	# 241
	lw		x6, -28(x2)	# 241
	mul		x5, x6, x5	# 241
	add		x4, x4, x5	# 241
	flw		f1, -52(x2)	# 241
	fsw		f1, 0(x4)	# 241
	addi	x4, x7, 552	# 242
	addi	x5, x0, 4	# 242
	lw		x8, 0(x2)	# 242
	mul		x5, x8, x5	# 242
	add		x4, x4, x5	# 242
	flw		f1, -48(x2)	# 242
	fsw		f1, 0(x4)	# 242
	addi	x4, x0, 0	# 1580
	addi	x5, x7, 564	# 1580
	addi	x8, x0, 4	# 1580
	mul		x4, x4, x8	# 1580
	add		x4, x5, x4	# 1580
	lw		x5, -36(x2)	# 1580
	sw		x5, 0(x4)	# 1580
	addi	x4, x0, 0	# 1581
	addi	x5, x7, 544	# 1581
	addi	x8, x0, 4	# 1581
	mul		x4, x4, x8	# 1581
	add		x4, x5, x4	# 1581
	lw		x5, -44(x2)	# 1581
	sw		x5, 0(x4)	# 1581
beq_cont.18335:
beq_cont.18334:
beq_cont.18331:
	lw		x4, -28(x2)	# 1587
	lw		x5, -32(x2)	# 1587
	add		x4, x5, x4	# 1587
	lw		x5, -20(x2)	# 1587
	lw		x6, -16(x2)	# 1587
	lw		x27, -24(x2)	# 1587
	lw		x31, 0(x27)	# 1587
	jalr	x0, x31, 0	# 1587
beq.18328:
	addi	x4, x7, 48	# 1591
	addi	x6, x0, 4	# 1591
	lw		x8, -36(x2)	# 1591
	mul		x6, x8, x6	# 1591
	add		x4, x4, x6	# 1591
	lw		x4, 0(x4)	# 1591
	lw		x4, 24(x4)	# 373
	beq		x4, x5, beq.18336	# 1591
	lw		x4, -28(x2)	# 1592
	lw		x5, -32(x2)	# 1592
	add		x4, x5, x4	# 1592
	lw		x5, -20(x2)	# 1592
	lw		x6, -16(x2)	# 1592
	lw		x27, -24(x2)	# 1592
	lw		x31, 0(x27)	# 1592
	jalr	x0, x31, 0	# 1592
beq.18336:
	jalr	x0, x1, 0	# 1593
beq.18327:
	jalr	x0, x1, 0	# 1560
solve_one_or_network_fast.2840.8894:
	lw		x8, 16(x27)	# 1599
	lw		x9, 12(x27)	# 1599
	lw		x10, 8(x27)	# 1599
	lw		x11, 4(x27)	# 1599
	addi	x12, x0, 4	# 1599
	mul		x12, x4, x12	# 1599
	add		x12, x5, x12	# 1599
	lw		x12, 0(x12)	# 1599
	beq		x12, x9, beq.18339	# 1600
	addi	x9, x7, 332	# 1601
	addi	x13, x0, 4	# 1601
	mul		x12, x12, x13	# 1601
	add		x9, x9, x12	# 1601
	lw		x9, 0(x9)	# 1601
	sw		x6, 0(x2)	# 1602
	sw		x5, -4(x2)	# 1602
	sw		x27, -8(x2)	# 1602
	sw		x11, -12(x2)	# 1602
	sw		x4, -16(x2)	# 1602
	addi	x5, x9, 0
	addi	x4, x10, 0
	addi	x27, x8, 0
	sw		x1, -20(x2)	# 1602
	addi	x2, x2, -24	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 24	# 1602
	lw		x1, -20(x2)	# 1602
	lw		x4, -12(x2)	# 1603
	lw		x5, -16(x2)	# 1603
	add		x4, x5, x4	# 1603
	lw		x5, -4(x2)	# 1603
	lw		x6, 0(x2)	# 1603
	lw		x27, -8(x2)	# 1603
	lw		x31, 0(x27)	# 1603
	jalr	x0, x31, 0	# 1603
beq.18339:
	jalr	x0, x1, 0	# 1604
trace_or_matrix_fast.2844.8898:
	lw		x8, 20(x27)	# 1609
	lw		x9, 16(x27)	# 1609
	lw		x10, 12(x27)	# 1609
	lw		x11, 8(x27)	# 1609
	lw		x12, 4(x27)	# 1609
	addi	x13, x0, 4	# 1609
	mul		x13, x4, x13	# 1609
	add		x13, x5, x13	# 1609
	lw		x13, 0(x13)	# 1609
	addi	x14, x0, 4	# 1610
	mul		x11, x11, x14	# 1610
	add		x11, x13, x11	# 1610
	lw		x11, 0(x11)	# 1610
	beq		x11, x10, beq.18341	# 1611
	addi	x10, x0, 99	# 1614
	sw		x6, 0(x2)	# 1614
	sw		x5, -4(x2)	# 1614
	sw		x27, -8(x2)	# 1614
	sw		x12, -12(x2)	# 1614
	sw		x4, -16(x2)	# 1614
	beq		x11, x10, beq.18343	# 1614
	sw		x13, -20(x2)	# 1619
	sw		x9, -24(x2)	# 1619
	addi	x5, x6, 0
	addi	x4, x11, 0
	addi	x27, x8, 0
	sw		x1, -28(x2)	# 1619
	addi	x2, x2, -32	# 1619
	lw		x31, 0(x27)	# 1619
	jalr	x1, x31, 0	# 1619
	addi	x2, x2, 32	# 1619
	lw		x1, -28(x2)	# 1619
	addi	x5, x0, 0	# 1620
	beq		x4, x5, beq_cont.18344	# 1620
	addi	x4, x0, 0	# 1621
	addi	x5, x7, 540	# 1621
	addi	x6, x0, 4	# 1621
	mul		x4, x4, x6	# 1621
	add		x4, x5, x4	# 1621
	flw		f1, 0(x4)	# 1621
	addi	x4, x0, 0	# 1622
	addi	x5, x7, 548	# 1622
	addi	x6, x0, 4	# 1622
	mul		x4, x4, x6	# 1622
	add		x4, x5, x4	# 1622
	flw		f2, 0(x4)	# 1622
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.18346	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18345	# 6
fle_else.18346:
	addi	x4, x0, 1	# 6
fle_cont.18345:
	addi	x5, x0, 0	# 1622
	beq		x4, x5, beq_cont.18347	# 1622
	addi	x4, x0, 1	# 1623
	lw		x5, -20(x2)	# 1623
	lw		x6, 0(x2)	# 1623
	lw		x27, -24(x2)	# 1623
	sw		x1, -28(x2)	# 1623
	addi	x2, x2, -32	# 1623
	lw		x31, 0(x27)	# 1623
	jalr	x1, x31, 0	# 1623
	addi	x2, x2, 32	# 1623
	lw		x1, -28(x2)	# 1623
beq_cont.18347:
beq_cont.18344:
	jal		x0, beq_cont.18342	# 1614
beq.18343:
	addi	x8, x0, 1	# 1615
	addi	x5, x13, 0
	addi	x4, x8, 0
	addi	x27, x9, 0
	sw		x1, -28(x2)	# 1615
	addi	x2, x2, -32	# 1615
	lw		x31, 0(x27)	# 1615
	jalr	x1, x31, 0	# 1615
	addi	x2, x2, 32	# 1615
	lw		x1, -28(x2)	# 1615
beq_cont.18342:
	lw		x4, -12(x2)	# 1627
	lw		x5, -16(x2)	# 1627
	add		x4, x5, x4	# 1627
	lw		x5, -4(x2)	# 1627
	lw		x6, 0(x2)	# 1627
	lw		x27, -8(x2)	# 1627
	lw		x31, 0(x27)	# 1627
	jalr	x0, x31, 0	# 1627
beq.18341:
	jalr	x0, x1, 0	# 1612
judge_intersection_fast.2848.8902:
	lw		x5, 12(x27)	# 1634
	lw		x6, 8(x27)	# 1634
	flw		f1, 4(x27)	# 1634
	addi	x8, x7, 548	# 1634
	addi	x9, x0, 4	# 1634
	mul		x9, x6, x9	# 1634
	add		x8, x8, x9	# 1634
	fsw		f1, 0(x8)	# 1634
	addi	x8, x7, 536	# 1635
	addi	x9, x0, 4	# 1635
	mul		x9, x6, x9	# 1635
	add		x8, x8, x9	# 1635
	lw		x8, 0(x8)	# 1635
	sw		x6, 0(x2)	# 1635
	addi	x27, x5, 0
	addi	x5, x8, 0
	addi	x31, x6, 0
	addi	x6, x4, 0
	addi	x4, x31, 0
	sw		x1, -4(x2)	# 1635
	addi	x2, x2, -8	# 1635
	lw		x31, 0(x27)	# 1635
	jalr	x1, x31, 0	# 1635
	addi	x2, x2, 8	# 1635
	lw		x1, -4(x2)	# 1635
	addi	x4, x7, 548	# 1636
	addi	x5, x0, 4	# 1636
	lw		x6, 0(x2)	# 1636
	mul		x5, x6, x5	# 1636
	add		x4, x4, x5	# 1636
	flw		f1, 0(x4)	# 1636
	fadd	f2, f0, f22	# 1638
	fle		x31, f1, f2	# 6
	beq		x31, x0, fle_else.18350	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18349	# 6
fle_else.18350:
	addi	x4, x0, 1	# 6
fle_cont.18349:
	beq		x4, x6, beq.18351	# 1638
	fadd	f2, f0, f26	# 1639
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.18352	# 6
	addi	x4, x0, 0	# 6
	jalr	x0, x1, 0	# 6
fle_else.18352:
	addi	x4, x0, 1	# 6
	jalr	x0, x1, 0	# 6
beq.18351:
	addi	x4, x0, 0	# 1640
	jalr	x0, x1, 0	# 1640
get_nvector_rect.2850.8904:
	lw		x5, 20(x27)	# 1654
	lw		x6, 16(x27)	# 1654
	lw		x8, 12(x27)	# 1654
	lw		x9, 8(x27)	# 1654
	flw		f1, 4(x27)	# 1654
	addi	x10, x7, 544	# 1654
	addi	x11, x0, 4	# 1654
	mul		x11, x8, x11	# 1654
	add		x10, x10, x11	# 1654
	lw		x10, 0(x10)	# 1654
	addi	x11, x7, 568	# 247
	addi	x12, x0, 4	# 247
	mul		x8, x8, x12	# 247
	add		x8, x11, x8	# 247
	fsw		f1, 0(x8)	# 247
	addi	x8, x7, 568	# 248
	addi	x11, x0, 4	# 248
	mul		x11, x9, x11	# 248
	add		x8, x8, x11	# 248
	fsw		f1, 0(x8)	# 248
	addi	x8, x7, 568	# 249
	addi	x11, x0, 4	# 249
	mul		x6, x6, x11	# 249
	add		x6, x8, x6	# 249
	fsw		f1, 0(x6)	# 249
	sub		x6, x10, x9	# 1657
	addi	x8, x0, 4	# 1657
	mul		x8, x6, x8	# 1657
	add		x4, x4, x8	# 1657
	flw		f1, 0(x4)	# 1657
	sw		x6, 0(x2)	# 1657
	addi	x27, x5, 0
	sw		x1, -4(x2)	# 1657
	addi	x2, x2, -8	# 1657
	lw		x31, 0(x27)	# 1657
	jalr	x1, x31, 0	# 1657
	addi	x2, x2, 8	# 1657
	lw		x1, -4(x2)	# 1657
	fsub	f1, f0, f1	# 4
	addi	x4, x7, 568	# 1657
	addi	x5, x0, 4	# 1657
	lw		x6, 0(x2)	# 1657
	mul		x5, x6, x5	# 1657
	add		x4, x4, x5	# 1657
	fsw		f1, 0(x4)	# 1657
	jalr	x0, x1, 0	# 1657
get_nvector_plane.2852.8906:
	lw		x5, 12(x27)	# 391
	lw		x6, 8(x27)	# 391
	lw		x8, 4(x27)	# 391
	lw		x9, 16(x4)	# 391
	addi	x10, x0, 4	# 396
	mul		x10, x6, x10	# 396
	add		x9, x9, x10	# 396
	flw		f1, 0(x9)	# 396
	fsub	f1, f0, f1	# 4
	addi	x9, x7, 568	# 1663
	addi	x10, x0, 4	# 1663
	mul		x6, x6, x10	# 1663
	add		x6, x9, x6	# 1663
	fsw		f1, 0(x6)	# 1663
	lw		x6, 16(x4)	# 401
	addi	x9, x0, 4	# 406
	mul		x9, x8, x9	# 406
	add		x6, x6, x9	# 406
	flw		f1, 0(x6)	# 406
	fsub	f1, f0, f1	# 4
	addi	x6, x7, 568	# 1664
	addi	x9, x0, 4	# 1664
	mul		x8, x8, x9	# 1664
	add		x6, x6, x8	# 1664
	fsw		f1, 0(x6)	# 1664
	lw		x4, 16(x4)	# 411
	addi	x6, x0, 4	# 416
	mul		x6, x5, x6	# 416
	add		x4, x4, x6	# 416
	flw		f1, 0(x4)	# 416
	fsub	f1, f0, f1	# 4
	addi	x4, x7, 568	# 1665
	addi	x6, x0, 4	# 1665
	mul		x5, x5, x6	# 1665
	add		x4, x4, x5	# 1665
	fsw		f1, 0(x4)	# 1665
	jalr	x0, x1, 0	# 1665
get_nvector_second.2854.8908:
	lw		x5, 16(x27)	# 1670
	lw		x6, 12(x27)	# 1670
	lw		x8, 8(x27)	# 1670
	lw		x9, 4(x27)	# 1670
	addi	x10, x7, 552	# 1670
	addi	x11, x0, 4	# 1670
	mul		x11, x8, x11	# 1670
	add		x10, x10, x11	# 1670
	flw		f1, 0(x10)	# 1670
	lw		x10, 20(x4)	# 431
	addi	x11, x0, 4	# 436
	mul		x11, x8, x11	# 436
	add		x10, x10, x11	# 436
	flw		f2, 0(x10)	# 436
	fsub	f1, f1, f2	# 1670
	addi	x10, x7, 552	# 1671
	addi	x11, x0, 4	# 1671
	mul		x11, x9, x11	# 1671
	add		x10, x10, x11	# 1671
	flw		f2, 0(x10)	# 1671
	lw		x10, 20(x4)	# 441
	addi	x11, x0, 4	# 446
	mul		x11, x9, x11	# 446
	add		x10, x10, x11	# 446
	flw		f3, 0(x10)	# 446
	fsub	f2, f2, f3	# 1671
	addi	x10, x7, 552	# 1672
	addi	x11, x0, 4	# 1672
	mul		x11, x6, x11	# 1672
	add		x10, x10, x11	# 1672
	flw		f3, 0(x10)	# 1672
	lw		x10, 20(x4)	# 451
	addi	x11, x0, 4	# 456
	mul		x11, x6, x11	# 456
	add		x10, x10, x11	# 456
	flw		f4, 0(x10)	# 456
	fsub	f3, f3, f4	# 1672
	lw		x10, 16(x4)	# 391
	addi	x11, x0, 4	# 396
	mul		x11, x8, x11	# 396
	add		x10, x10, x11	# 396
	flw		f4, 0(x10)	# 396
	fmul	f4, f1, f4	# 1674
	lw		x10, 16(x4)	# 401
	addi	x11, x0, 4	# 406
	mul		x9, x9, x11	# 406
	add		x9, x10, x9	# 406
	flw		f5, 0(x9)	# 406
	fmul	f5, f2, f5	# 1675
	lw		x9, 16(x4)	# 411
	addi	x10, x0, 4	# 416
	mul		x6, x6, x10	# 416
	add		x6, x9, x6	# 416
	flw		f6, 0(x6)	# 416
	fmul	f6, f3, f6	# 1676
	lw		x6, 12(x4)	# 382
	beq		x6, x8, beq.18356	# 1678
	addi	x6, x0, 0	# 1683
	lw		x8, 36(x4)	# 531
	addi	x9, x0, 2	# 536
	addi	x10, x0, 4	# 536
	mul		x9, x9, x10	# 536
	add		x8, x8, x9	# 536
	flw		f7, 0(x8)	# 536
	fmul	f7, f2, f7	# 1683
	lw		x8, 36(x4)	# 521
	addi	x9, x0, 1	# 526
	addi	x10, x0, 4	# 526
	mul		x9, x9, x10	# 526
	add		x8, x8, x9	# 526
	flw		f8, 0(x8)	# 526
	fmul	f8, f3, f8	# 1683
	fadd	f7, f7, f8	# 1683
	fadd	f8, f0, f17	# 7
	fmul	f7, f7, f8	# 7
	fadd	f4, f4, f7	# 1683
	addi	x8, x7, 568	# 1683
	addi	x9, x0, 4	# 1683
	mul		x6, x6, x9	# 1683
	add		x6, x8, x6	# 1683
	fsw		f4, 0(x6)	# 1683
	addi	x6, x0, 1	# 1684
	lw		x8, 36(x4)	# 531
	addi	x9, x0, 2	# 536
	addi	x10, x0, 4	# 536
	mul		x9, x9, x10	# 536
	add		x8, x8, x9	# 536
	flw		f4, 0(x8)	# 536
	fmul	f4, f1, f4	# 1684
	lw		x8, 36(x4)	# 511
	addi	x9, x0, 0	# 516
	addi	x10, x0, 4	# 516
	mul		x9, x9, x10	# 516
	add		x8, x8, x9	# 516
	flw		f7, 0(x8)	# 516
	fmul	f3, f3, f7	# 1684
	fadd	f3, f4, f3	# 1684
	fadd	f4, f0, f17	# 7
	fmul	f3, f3, f4	# 7
	fadd	f3, f5, f3	# 1684
	addi	x8, x7, 568	# 1684
	addi	x9, x0, 4	# 1684
	mul		x6, x6, x9	# 1684
	add		x6, x8, x6	# 1684
	fsw		f3, 0(x6)	# 1684
	addi	x6, x0, 2	# 1685
	lw		x8, 36(x4)	# 521
	addi	x9, x0, 1	# 526
	addi	x10, x0, 4	# 526
	mul		x9, x9, x10	# 526
	add		x8, x8, x9	# 526
	flw		f3, 0(x8)	# 526
	fmul	f1, f1, f3	# 1685
	lw		x8, 36(x4)	# 511
	addi	x9, x0, 0	# 516
	addi	x10, x0, 4	# 516
	mul		x9, x9, x10	# 516
	add		x8, x8, x9	# 516
	flw		f3, 0(x8)	# 516
	fmul	f2, f2, f3	# 1685
	fadd	f1, f1, f2	# 1685
	fadd	f2, f0, f17	# 7
	fmul	f1, f1, f2	# 7
	fadd	f1, f6, f1	# 1685
	addi	x8, x7, 568	# 1685
	addi	x9, x0, 4	# 1685
	mul		x6, x6, x9	# 1685
	add		x6, x8, x6	# 1685
	fsw		f1, 0(x6)	# 1685
	jal		x0, beq_cont.18355	# 1678
beq.18356:
	addi	x6, x0, 0	# 1679
	addi	x8, x7, 568	# 1679
	addi	x9, x0, 4	# 1679
	mul		x6, x6, x9	# 1679
	add		x6, x8, x6	# 1679
	fsw		f4, 0(x6)	# 1679
	addi	x6, x0, 1	# 1680
	addi	x8, x7, 568	# 1680
	addi	x9, x0, 4	# 1680
	mul		x6, x6, x9	# 1680
	add		x6, x8, x6	# 1680
	fsw		f5, 0(x6)	# 1680
	addi	x6, x0, 2	# 1681
	addi	x8, x7, 568	# 1681
	addi	x9, x0, 4	# 1681
	mul		x6, x6, x9	# 1681
	add		x6, x8, x6	# 1681
	fsw		f6, 0(x6)	# 1681
beq_cont.18355:
	lw		x4, 24(x4)	# 373
	addi	x6, x7, 568	# 1687
	addi	x27, x5, 0
	addi	x5, x4, 0
	addi	x4, x6, 0
	lw		x31, 0(x27)	# 1687
	jalr	x0, x31, 0	# 1687
utexture.2859.8910:
	lw		x6, 36(x27)	# 343
	lw		x8, 32(x27)	# 343
	lw		x9, 28(x27)	# 343
	lw		x10, 24(x27)	# 343
	lw		x11, 20(x27)	# 343
	lw		x12, 16(x27)	# 343
	lw		x13, 12(x27)	# 343
	flw		f1, 8(x27)	# 343
	flw		f2, 4(x27)	# 343
	lw		x14, 0(x4)	# 343
	lw		x15, 32(x4)	# 481
	addi	x16, x0, 4	# 486
	mul		x16, x12, x16	# 486
	add		x15, x15, x16	# 486
	flw		f3, 0(x15)	# 486
	addi	x15, x7, 580	# 1710
	addi	x16, x0, 4	# 1710
	mul		x16, x12, x16	# 1710
	add		x15, x15, x16	# 1710
	fsw		f3, 0(x15)	# 1710
	lw		x15, 32(x4)	# 491
	addi	x16, x0, 4	# 496
	mul		x16, x13, x16	# 496
	add		x15, x15, x16	# 496
	flw		f3, 0(x15)	# 496
	addi	x15, x7, 580	# 1711
	addi	x16, x0, 4	# 1711
	mul		x16, x13, x16	# 1711
	add		x15, x15, x16	# 1711
	fsw		f3, 0(x15)	# 1711
	lw		x15, 32(x4)	# 501
	addi	x16, x0, 4	# 506
	mul		x16, x10, x16	# 506
	add		x15, x15, x16	# 506
	flw		f3, 0(x15)	# 506
	addi	x15, x7, 580	# 1712
	addi	x16, x0, 4	# 1712
	mul		x16, x10, x16	# 1712
	add		x15, x15, x16	# 1712
	fsw		f3, 0(x15)	# 1712
	beq		x14, x13, beq.18357	# 1713
	beq		x14, x10, beq.18358	# 1731
	beq		x14, x11, beq.18359	# 1738
	addi	x6, x0, 4	# 1749
	beq		x14, x6, beq.18360	# 1749
	jalr	x0, x1, 0	# 1777
beq.18360:
	addi	x6, x0, 4	# 1751
	mul		x6, x12, x6	# 1751
	add		x6, x5, x6	# 1751
	flw		f3, 0(x6)	# 1751
	lw		x6, 20(x4)	# 431
	addi	x8, x0, 4	# 436
	mul		x8, x12, x8	# 436
	add		x6, x6, x8	# 436
	flw		f4, 0(x6)	# 436
	fsub	f3, f3, f4	# 1751
	lw		x6, 16(x4)	# 391
	addi	x8, x0, 4	# 396
	mul		x8, x12, x8	# 396
	add		x6, x6, x8	# 396
	flw		f4, 0(x6)	# 396
	fsqrt	f4, f4	# 1751
	fmul	f3, f3, f4	# 1751
	addi	x6, x0, 4	# 1752
	mul		x6, x10, x6	# 1752
	add		x6, x5, x6	# 1752
	flw		f4, 0(x6)	# 1752
	lw		x6, 20(x4)	# 451
	addi	x8, x0, 4	# 456
	mul		x8, x10, x8	# 456
	add		x6, x6, x8	# 456
	flw		f5, 0(x6)	# 456
	fsub	f4, f4, f5	# 1752
	lw		x6, 16(x4)	# 411
	addi	x8, x0, 4	# 416
	mul		x8, x10, x8	# 416
	add		x6, x6, x8	# 416
	flw		f5, 0(x6)	# 416
	fsqrt	f5, f5	# 1752
	fmul	f4, f4, f5	# 1752
	fmul	f5, f3, f3	# 8
	fmul	f6, f4, f4	# 8
	fadd	f5, f5, f6	# 1753
	fle		x31, f3, f2	# 5
	beq		x31, x0, fle_else.18363	# 5
	fsub	f6, f0, f3	# 5
	jal		x0, fle_cont.18362	# 5
fle_else.18363:
	fadd	f6, f0, f3	# 5
fle_cont.18362:
	lui		x6, %hi(l.14708)	# 1755
	ori		x6, x0, %lo(l.14708)	# 1755
	flw		f7, 0(x6)	# 1755
	fle		x31, f7, f6	# 6
	beq		x31, x0, fle_else.18365	# 6
	addi	x6, x0, 0	# 6
	jal		x0, fle_cont.18364	# 6
fle_else.18365:
	addi	x6, x0, 1	# 6
fle_cont.18364:
	sw		x10, 0(x2)	# 1755
	fsw		f1, -4(x2)	# 1755
	sw		x9, -8(x2)	# 1755
	sw		x12, -12(x2)	# 1755
	fsw		f7, -16(x2)	# 1755
	fsw		f2, -20(x2)	# 1755
	fsw		f5, -24(x2)	# 1755
	sw		x4, -28(x2)	# 1755
	sw		x5, -32(x2)	# 1755
	sw		x13, -36(x2)	# 1755
	beq		x6, x12, beq.18367	# 1755
	fadd	f1, f0, f25	# 1756
	jal		x0, beq_cont.18366	# 1755
beq.18367:
	fdiv	f3, f4, f3	# 1758
	fadd	f4, f0, f0	# 5
	fle		x31, f3, f4	# 5
	beq		x31, x0, fle_cont.18368	# 5
	fsub	f3, f0, f3	# 5
fle_cont.18368:
	addi	x27, x9, 0
	fadd	f1, f0, f3
	sw		x1, -40(x2)	# 1760
	addi	x2, x2, -44	# 1760
	lw		x31, 0(x27)	# 1760
	jalr	x1, x31, 0	# 1760
	addi	x2, x2, 44	# 1760
	lw		x1, -40(x2)	# 1760
	fadd	f2, f0, f29	# 1760
	fmul	f1, f1, f2	# 1760
	fadd	f2, f0, f24	# 1760
	fdiv	f1, f1, f2	# 1760
beq_cont.18366:
	fsw		f1, -40(x2)	# 1762
	sw		x1, -44(x2)	# 1762
	addi	x2, x2, -48	# 1762
	jal		x1, floor.2491.8539	# 1762
	addi	x2, x2, 48	# 1762
	lw		x1, -44(x2)	# 1762
	flw		f2, -40(x2)	# 1762
	fsub	f1, f2, f1	# 1762
	addi	x4, x0, 4	# 1764
	lw		x5, -36(x2)	# 1764
	mul		x4, x5, x4	# 1764
	lw		x6, -32(x2)	# 1764
	add		x4, x6, x4	# 1764
	flw		f2, 0(x4)	# 1764
	lw		x4, -28(x2)	# 441
	lw		x6, 20(x4)	# 441
	addi	x8, x0, 4	# 446
	mul		x8, x5, x8	# 446
	add		x6, x6, x8	# 446
	flw		f3, 0(x6)	# 446
	fsub	f2, f2, f3	# 1764
	lw		x4, 16(x4)	# 401
	addi	x6, x0, 4	# 406
	mul		x5, x5, x6	# 406
	add		x4, x4, x5	# 406
	flw		f3, 0(x4)	# 406
	fsqrt	f3, f3	# 1764
	fmul	f2, f2, f3	# 1764
	flw		f3, -20(x2)	# 5
	flw		f4, -24(x2)	# 5
	fle		x31, f4, f3	# 5
	beq		x31, x0, fle_else.18370	# 5
	fsub	f5, f0, f4	# 5
	jal		x0, fle_cont.18369	# 5
fle_else.18370:
	fadd	f5, f0, f4	# 5
fle_cont.18369:
	flw		f6, -16(x2)	# 6
	fle		x31, f6, f5	# 6
	beq		x31, x0, fle_else.18372	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18371	# 6
fle_else.18372:
	addi	x4, x0, 1	# 6
fle_cont.18371:
	lw		x5, -12(x2)	# 1766
	fsw		f1, -44(x2)	# 1766
	beq		x4, x5, beq.18374	# 1766
	fadd	f1, f0, f25	# 1767
	jal		x0, beq_cont.18373	# 1766
beq.18374:
	fdiv	f2, f2, f4	# 1769
	fadd	f4, f0, f0	# 5
	fle		x31, f2, f4	# 5
	beq		x31, x0, fle_cont.18375	# 5
	fsub	f2, f0, f2	# 5
fle_cont.18375:
	lw		x27, -8(x2)	# 1770
	fadd	f1, f0, f2
	sw		x1, -48(x2)	# 1770
	addi	x2, x2, -52	# 1770
	lw		x31, 0(x27)	# 1770
	jalr	x1, x31, 0	# 1770
	addi	x2, x2, 52	# 1770
	lw		x1, -48(x2)	# 1770
	fadd	f2, f0, f29	# 1770
	fmul	f1, f1, f2	# 1770
	fadd	f2, f0, f24	# 1770
	fdiv	f1, f1, f2	# 1770
beq_cont.18373:
	fsw		f1, -48(x2)	# 1772
	sw		x1, -52(x2)	# 1772
	addi	x2, x2, -56	# 1772
	jal		x1, floor.2491.8539	# 1772
	addi	x2, x2, 56	# 1772
	lw		x1, -52(x2)	# 1772
	flw		f2, -48(x2)	# 1772
	fsub	f1, f2, f1	# 1772
	lui		x4, %hi(l.14730)	# 1773
	ori		x4, x0, %lo(l.14730)	# 1773
	flw		f2, 0(x4)	# 1773
	fadd	f3, f0, f17	# 1773
	flw		f4, -44(x2)	# 1773
	fsub	f4, f3, f4	# 1773
	fmul	f4, f4, f4	# 8
	fsub	f2, f2, f4	# 1773
	fsub	f1, f3, f1	# 1773
	fmul	f1, f1, f1	# 8
	fsub	f1, f2, f1	# 1773
	flw		f2, -20(x2)	# 3
	fle		x31, f2, f1	# 3
	beq		x31, x0, fle_else.18377	# 3
	addi	x4, x0, 0	# 3
	jal		x0, fle_cont.18376	# 3
fle_else.18377:
	addi	x4, x0, 1	# 3
fle_cont.18376:
	lw		x5, -12(x2)	# 1774
	beq		x4, x5, beq_cont.18378	# 1774
	fadd	f1, f0, f2	# 1774
beq_cont.18378:
	flw		f2, -4(x2)	# 1775
	fmul	f1, f2, f1	# 1775
	lui		x4, %hi(l.14733)	# 1775
	ori		x4, x0, %lo(l.14733)	# 1775
	flw		f2, 0(x4)	# 1775
	fdiv	f1, f1, f2	# 1775
	addi	x4, x7, 580	# 1775
	addi	x5, x0, 4	# 1775
	lw		x6, 0(x2)	# 1775
	mul		x5, x6, x5	# 1775
	add		x4, x4, x5	# 1775
	fsw		f1, 0(x4)	# 1775
	jalr	x0, x1, 0	# 1775
beq.18359:
	addi	x6, x0, 4	# 1741
	mul		x6, x12, x6	# 1741
	add		x6, x5, x6	# 1741
	flw		f2, 0(x6)	# 1741
	lw		x6, 20(x4)	# 431
	addi	x9, x0, 4	# 436
	mul		x9, x12, x9	# 436
	add		x6, x6, x9	# 436
	flw		f3, 0(x6)	# 436
	fsub	f2, f2, f3	# 1741
	addi	x6, x0, 4	# 1742
	mul		x6, x10, x6	# 1742
	add		x5, x5, x6	# 1742
	flw		f3, 0(x5)	# 1742
	lw		x4, 20(x4)	# 451
	addi	x5, x0, 4	# 456
	mul		x5, x10, x5	# 456
	add		x4, x4, x5	# 456
	flw		f4, 0(x4)	# 456
	fsub	f3, f3, f4	# 1742
	fmul	f2, f2, f2	# 8
	fmul	f3, f3, f3	# 8
	fadd	f2, f2, f3	# 1743
	fsqrt	f2, f2	# 1743
	fadd	f3, f0, f27	# 1743
	fdiv	f2, f2, f3	# 1743
	sw		x10, 0(x2)	# 1744
	sw		x13, -36(x2)	# 1744
	fsw		f1, -4(x2)	# 1744
	sw		x8, -52(x2)	# 1744
	fsw		f2, -56(x2)	# 1744
	fadd	f1, f0, f2
	sw		x1, -60(x2)	# 1744
	addi	x2, x2, -64	# 1744
	jal		x1, floor.2491.8539	# 1744
	addi	x2, x2, 64	# 1744
	lw		x1, -60(x2)	# 1744
	flw		f2, -56(x2)	# 1744
	fsub	f1, f2, f1	# 1744
	fadd	f2, f0, f24	# 1744
	fmul	f1, f1, f2	# 1744
	lw		x27, -52(x2)	# 1745
	sw		x1, -60(x2)	# 1745
	addi	x2, x2, -64	# 1745
	lw		x31, 0(x27)	# 1745
	jalr	x1, x31, 0	# 1745
	addi	x2, x2, 64	# 1745
	lw		x1, -60(x2)	# 1745
	fmul	f1, f1, f1	# 8
	flw		f2, -4(x2)	# 1746
	fmul	f3, f1, f2	# 1746
	addi	x4, x7, 580	# 1746
	addi	x5, x0, 4	# 1746
	lw		x6, -36(x2)	# 1746
	mul		x5, x6, x5	# 1746
	add		x4, x4, x5	# 1746
	fsw		f3, 0(x4)	# 1746
	fadd	f3, f0, f16	# 1747
	fsub	f1, f3, f1	# 1747
	fmul	f1, f1, f2	# 1747
	addi	x4, x7, 580	# 1747
	addi	x5, x0, 4	# 1747
	lw		x6, 0(x2)	# 1747
	mul		x5, x6, x5	# 1747
	add		x4, x4, x5	# 1747
	fsw		f1, 0(x4)	# 1747
	jalr	x0, x1, 0	# 1747
beq.18358:
	addi	x4, x0, 4	# 1734
	mul		x4, x13, x4	# 1734
	add		x4, x5, x4	# 1734
	flw		f2, 0(x4)	# 1734
	lui		x4, %hi(l.14763)	# 1734
	ori		x4, x0, %lo(l.14763)	# 1734
	flw		f3, 0(x4)	# 1734
	fmul	f2, f2, f3	# 1734
	sw		x13, -36(x2)	# 1734
	sw		x12, -12(x2)	# 1734
	fsw		f1, -4(x2)	# 1734
	addi	x27, x6, 0
	fadd	f1, f0, f2
	sw		x1, -60(x2)	# 1734
	addi	x2, x2, -64	# 1734
	lw		x31, 0(x27)	# 1734
	jalr	x1, x31, 0	# 1734
	addi	x2, x2, 64	# 1734
	lw		x1, -60(x2)	# 1734
	fmul	f1, f1, f1	# 8
	flw		f2, -4(x2)	# 1735
	fmul	f3, f2, f1	# 1735
	addi	x4, x7, 580	# 1735
	addi	x5, x0, 4	# 1735
	lw		x6, -12(x2)	# 1735
	mul		x5, x6, x5	# 1735
	add		x4, x4, x5	# 1735
	fsw		f3, 0(x4)	# 1735
	fadd	f3, f0, f16	# 1736
	fsub	f1, f3, f1	# 1736
	fmul	f1, f2, f1	# 1736
	addi	x4, x7, 580	# 1736
	addi	x5, x0, 4	# 1736
	lw		x6, -36(x2)	# 1736
	mul		x5, x6, x5	# 1736
	add		x4, x4, x5	# 1736
	fsw		f1, 0(x4)	# 1736
	jalr	x0, x1, 0	# 1736
beq.18357:
	addi	x6, x0, 4	# 1716
	mul		x6, x12, x6	# 1716
	add		x6, x5, x6	# 1716
	flw		f3, 0(x6)	# 1716
	lw		x6, 20(x4)	# 431
	addi	x8, x0, 4	# 436
	mul		x8, x12, x8	# 436
	add		x6, x6, x8	# 436
	flw		f4, 0(x6)	# 436
	fsub	f3, f3, f4	# 1716
	lui		x6, %hi(l.14778)	# 1718
	ori		x6, x0, %lo(l.14778)	# 1718
	flw		f4, 0(x6)	# 1718
	fmul	f5, f3, f4	# 1718
	sw		x13, -36(x2)	# 1718
	fsw		f2, -20(x2)	# 1718
	fsw		f1, -4(x2)	# 1718
	sw		x12, -12(x2)	# 1718
	fsw		f4, -60(x2)	# 1718
	sw		x4, -28(x2)	# 1718
	sw		x5, -32(x2)	# 1718
	sw		x10, 0(x2)	# 1718
	fsw		f3, -64(x2)	# 1718
	fadd	f1, f0, f5
	sw		x1, -68(x2)	# 1718
	addi	x2, x2, -72	# 1718
	jal		x1, floor.2491.8539	# 1718
	addi	x2, x2, 72	# 1718
	lw		x1, -68(x2)	# 1718
	lui		x4, %hi(l.14780)	# 1718
	ori		x4, x0, %lo(l.14780)	# 1718
	flw		f2, 0(x4)	# 1718
	fmul	f1, f1, f2	# 1718
	flw		f3, -64(x2)	# 1719
	fsub	f1, f3, f1	# 1719
	fadd	f3, f0, f27	# 1719
	fle		x31, f3, f1	# 6
	beq		x31, x0, fle_else.18383	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18382	# 6
fle_else.18383:
	addi	x4, x0, 1	# 6
fle_cont.18382:
	addi	x5, x0, 4	# 1721
	lw		x6, 0(x2)	# 1721
	mul		x5, x6, x5	# 1721
	lw		x8, -32(x2)	# 1721
	add		x5, x8, x5	# 1721
	flw		f1, 0(x5)	# 1721
	lw		x5, -28(x2)	# 451
	lw		x5, 20(x5)	# 451
	addi	x8, x0, 4	# 456
	mul		x6, x6, x8	# 456
	add		x5, x5, x6	# 456
	flw		f4, 0(x5)	# 456
	fsub	f1, f1, f4	# 1721
	flw		f4, -60(x2)	# 1723
	fmul	f4, f1, f4	# 1723
	sw		x4, -68(x2)	# 1723
	fsw		f3, -72(x2)	# 1723
	fsw		f1, -76(x2)	# 1723
	fsw		f2, -80(x2)	# 1723
	fadd	f1, f0, f4
	sw		x1, -84(x2)	# 1723
	addi	x2, x2, -88	# 1723
	jal		x1, floor.2491.8539	# 1723
	addi	x2, x2, 88	# 1723
	lw		x1, -84(x2)	# 1723
	flw		f2, -80(x2)	# 1723
	fmul	f1, f1, f2	# 1723
	flw		f2, -76(x2)	# 1724
	fsub	f1, f2, f1	# 1724
	flw		f2, -72(x2)	# 6
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.18385	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18384	# 6
fle_else.18385:
	addi	x4, x0, 1	# 6
fle_cont.18384:
	lw		x5, -12(x2)	# 1727
	lw		x6, -68(x2)	# 1727
	beq		x6, x5, beq.18387	# 1727
	beq		x4, x5, beq.18389	# 1728
	flw		f1, -4(x2)	# 1728
	jal		x0, beq_cont.18388	# 1728
beq.18389:
	flw		f1, -20(x2)	# 1728
beq_cont.18388:
	jal		x0, beq_cont.18386	# 1727
beq.18387:
	beq		x4, x5, beq.18391	# 1729
	flw		f1, -20(x2)	# 1729
	jal		x0, beq_cont.18390	# 1729
beq.18391:
	flw		f1, -4(x2)	# 1729
beq_cont.18390:
beq_cont.18386:
	addi	x4, x7, 580	# 1726
	addi	x5, x0, 4	# 1726
	lw		x6, -36(x2)	# 1726
	mul		x5, x6, x5	# 1726
	add		x4, x4, x5	# 1726
	fsw		f1, 0(x4)	# 1726
	jalr	x0, x1, 0	# 1726
add_light.2862.8913:
	lw		x4, 20(x27)	# 1788
	lw		x5, 16(x27)	# 1788
	lw		x6, 12(x27)	# 1788
	lw		x8, 8(x27)	# 1788
	flw		f4, 4(x27)	# 2
	fle		x31, f1, f4	# 2
	beq		x31, x0, fle_else.18394	# 2
	addi	x9, x0, 0	# 2
	jal		x0, fle_cont.18393	# 2
fle_else.18394:
	addi	x9, x0, 1	# 2
fle_cont.18393:
	sw		x5, 0(x2)	# 1788
	sw		x8, -4(x2)	# 1788
	fsw		f3, -8(x2)	# 1788
	sw		x6, -12(x2)	# 1788
	fsw		f4, -16(x2)	# 1788
	fsw		f2, -20(x2)	# 1788
	beq		x9, x6, beq_cont.18395	# 1788
	addi	x9, x7, 580	# 1789
	addi	x10, x7, 604	# 1789
	addi	x5, x9, 0
	addi	x27, x4, 0
	addi	x4, x10, 0
	sw		x1, -24(x2)	# 1789
	addi	x2, x2, -28	# 1789
	lw		x31, 0(x27)	# 1789
	jalr	x1, x31, 0	# 1789
	addi	x2, x2, 28	# 1789
	lw		x1, -24(x2)	# 1789
beq_cont.18395:
	flw		f1, -16(x2)	# 2
	flw		f2, -20(x2)	# 2
	fle		x31, f2, f1	# 2
	beq		x31, x0, fle_else.18397	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.18396	# 2
fle_else.18397:
	addi	x4, x0, 1	# 2
fle_cont.18396:
	lw		x5, -12(x2)	# 1793
	beq		x4, x5, beq.18398	# 1793
	fmul	f1, f2, f2	# 8
	fmul	f1, f1, f1	# 8
	flw		f2, -8(x2)	# 1794
	fmul	f1, f1, f2	# 1794
	addi	x4, x7, 604	# 1795
	addi	x6, x0, 4	# 1795
	mul		x6, x5, x6	# 1795
	add		x4, x4, x6	# 1795
	flw		f2, 0(x4)	# 1795
	fadd	f2, f2, f1	# 1795
	addi	x4, x7, 604	# 1795
	addi	x6, x0, 4	# 1795
	mul		x5, x5, x6	# 1795
	add		x4, x4, x5	# 1795
	fsw		f2, 0(x4)	# 1795
	addi	x4, x7, 604	# 1796
	addi	x5, x0, 4	# 1796
	lw		x6, -4(x2)	# 1796
	mul		x5, x6, x5	# 1796
	add		x4, x4, x5	# 1796
	flw		f2, 0(x4)	# 1796
	fadd	f2, f2, f1	# 1796
	addi	x4, x7, 604	# 1796
	addi	x5, x0, 4	# 1796
	mul		x5, x6, x5	# 1796
	add		x4, x4, x5	# 1796
	fsw		f2, 0(x4)	# 1796
	addi	x4, x7, 604	# 1797
	addi	x5, x0, 4	# 1797
	lw		x6, 0(x2)	# 1797
	mul		x5, x6, x5	# 1797
	add		x4, x4, x5	# 1797
	flw		f2, 0(x4)	# 1797
	fadd	f1, f2, f1	# 1797
	addi	x4, x7, 604	# 1797
	addi	x5, x0, 4	# 1797
	mul		x5, x6, x5	# 1797
	add		x4, x4, x5	# 1797
	fsw		f1, 0(x4)	# 1797
	jalr	x0, x1, 0	# 1797
beq.18398:
	jalr	x0, x1, 0	# 1798
trace_reflections.2866.8917:
	lw		x6, 24(x27)	# 1804
	lw		x8, 20(x27)	# 1804
	lw		x9, 16(x27)	# 1804
	lw		x10, 12(x27)	# 1804
	lw		x11, 8(x27)	# 1804
	lw		x12, 4(x27)	# 1804
	ble		x11, x4, ble.18401	# 1804
	jalr	x0, x1, 0	# 1824
ble.18401:
	addi	x13, x7, 1016	# 1805
	addi	x14, x0, 4	# 1805
	mul		x14, x4, x14	# 1805
	add		x13, x13, x14	# 1805
	lw		x13, 0(x13)	# 1805
	lw		x14, 4(x13)	# 661
	sw		x27, 0(x2)	# 1809
	sw		x12, -4(x2)	# 1809
	sw		x4, -8(x2)	# 1809
	fsw		f2, -12(x2)	# 1809
	sw		x10, -16(x2)	# 1809
	sw		x5, -20(x2)	# 1809
	fsw		f1, -24(x2)	# 1809
	sw		x6, -28(x2)	# 1809
	sw		x14, -32(x2)	# 1809
	sw		x8, -36(x2)	# 1809
	sw		x13, -40(x2)	# 1809
	sw		x11, -44(x2)	# 1809
	addi	x4, x14, 0
	addi	x27, x9, 0
	sw		x1, -48(x2)	# 1809
	addi	x2, x2, -52	# 1809
	lw		x31, 0(x27)	# 1809
	jalr	x1, x31, 0	# 1809
	addi	x2, x2, 52	# 1809
	lw		x1, -48(x2)	# 1809
	lw		x5, -44(x2)	# 1809
	beq		x4, x5, beq_cont.18403	# 1809
	addi	x4, x0, 0	# 1810
	addi	x5, x7, 564	# 1810
	addi	x6, x0, 4	# 1810
	mul		x4, x4, x6	# 1810
	add		x4, x5, x4	# 1810
	lw		x4, 0(x4)	# 1810
	addi	x5, x0, 4	# 1810
	mul		x4, x4, x5	# 1810
	addi	x5, x0, 0	# 1810
	addi	x6, x7, 544	# 1810
	addi	x8, x0, 4	# 1810
	mul		x5, x5, x8	# 1810
	add		x5, x6, x5	# 1810
	lw		x5, 0(x5)	# 1810
	add		x4, x4, x5	# 1810
	lw		x5, -40(x2)	# 655
	lw		x6, 0(x5)	# 655
	beq		x4, x6, beq.18405	# 1811
	jal		x0, beq_cont.18404	# 1811
beq.18405:
	addi	x4, x0, 0	# 1813
	addi	x6, x0, 0	# 1813
	addi	x8, x7, 536	# 1813
	addi	x9, x0, 4	# 1813
	mul		x6, x6, x9	# 1813
	add		x6, x8, x6	# 1813
	lw		x6, 0(x6)	# 1813
	lw		x27, -36(x2)	# 1813
	addi	x5, x6, 0
	sw		x1, -48(x2)	# 1813
	addi	x2, x2, -52	# 1813
	lw		x31, 0(x27)	# 1813
	jalr	x1, x31, 0	# 1813
	addi	x2, x2, 52	# 1813
	lw		x1, -48(x2)	# 1813
	addi	x5, x0, 0	# 1813
	beq		x4, x5, beq.18407	# 1813
	jal		x0, beq_cont.18406	# 1813
beq.18407:
	lw		x4, -32(x2)	# 639
	lw		x5, 0(x4)	# 639
	addi	x6, x7, 568	# 1815
	lw		x27, -28(x2)	# 1815
	addi	x4, x6, 0
	sw		x1, -48(x2)	# 1815
	addi	x2, x2, -52	# 1815
	lw		x31, 0(x27)	# 1815
	jalr	x1, x31, 0	# 1815
	addi	x2, x2, 52	# 1815
	lw		x1, -48(x2)	# 1815
	lw		x4, -40(x2)	# 1817
	flw		f2, 8(x4)	# 1817
	flw		f3, -24(x2)	# 1817
	fmul	f4, f2, f3	# 1817
	fmul	f1, f4, f1	# 1817
	lw		x4, -32(x2)	# 639
	lw		x5, 0(x4)	# 639
	lw		x4, -20(x2)	# 1818
	lw		x27, -28(x2)	# 1818
	fsw		f1, -48(x2)	# 1818
	fsw		f2, -52(x2)	# 1818
	sw		x1, -56(x2)	# 1818
	addi	x2, x2, -60	# 1818
	lw		x31, 0(x27)	# 1818
	jalr	x1, x31, 0	# 1818
	addi	x2, x2, 60	# 1818
	lw		x1, -56(x2)	# 1818
	flw		f2, -52(x2)	# 1818
	fmul	f2, f2, f1	# 1818
	flw		f1, -48(x2)	# 1819
	flw		f3, -12(x2)	# 1819
	lw		x27, -16(x2)	# 1819
	sw		x1, -56(x2)	# 1819
	addi	x2, x2, -60	# 1819
	lw		x31, 0(x27)	# 1819
	jalr	x1, x31, 0	# 1819
	addi	x2, x2, 60	# 1819
	lw		x1, -56(x2)	# 1819
beq_cont.18406:
beq_cont.18404:
beq_cont.18403:
	lw		x4, -4(x2)	# 1823
	lw		x5, -8(x2)	# 1823
	sub		x4, x5, x4	# 1823
	flw		f1, -24(x2)	# 1823
	flw		f2, -12(x2)	# 1823
	lw		x5, -20(x2)	# 1823
	lw		x27, 0(x2)	# 1823
	lw		x31, 0(x27)	# 1823
	jalr	x0, x31, 0	# 1823
trace_ray.2871.8922:
	lw		x8, 72(x27)	# 1832
	lw		x9, 68(x27)	# 1832
	lw		x10, 64(x27)	# 1832
	lw		x11, 60(x27)	# 1832
	lw		x12, 56(x27)	# 1832
	lw		x13, 52(x27)	# 1832
	lw		x14, 48(x27)	# 1832
	lw		x15, 44(x27)	# 1832
	lw		x16, 40(x27)	# 1832
	lw		x17, 36(x27)	# 1832
	lw		x18, 32(x27)	# 1832
	lw		x19, 28(x27)	# 1832
	lw		x20, 24(x27)	# 1832
	lw		x21, 20(x27)	# 1832
	lw		x22, 16(x27)	# 1832
	lw		x23, 12(x27)	# 1832
	lw		x24, 8(x27)	# 1832
	flw		f3, 4(x27)	# 1832
	addi	x25, x0, 4	# 1832
	ble		x4, x25, ble.18408	# 1832
	jalr	x0, x1, 0	# 1913
ble.18408:
	lw		x26, 8(x6)	# 577
	sw		x27, 0(x2)	# 1834
	fsw		f2, -4(x2)	# 1834
	sw		x13, -8(x2)	# 1834
	sw		x15, -12(x2)	# 1834
	sw		x20, -16(x2)	# 1834
	sw		x14, -20(x2)	# 1834
	sw		x11, -24(x2)	# 1834
	sw		x8, -28(x2)	# 1834
	sw		x6, -32(x2)	# 1834
	sw		x25, -36(x2)	# 1834
	sw		x12, -40(x2)	# 1834
	sw		x10, -44(x2)	# 1834
	sw		x17, -48(x2)	# 1834
	sw		x19, -52(x2)	# 1834
	sw		x18, -56(x2)	# 1834
	sw		x21, -60(x2)	# 1834
	sw		x24, -64(x2)	# 1834
	fsw		f1, -68(x2)	# 1834
	fsw		f3, -72(x2)	# 1834
	sw		x5, -76(x2)	# 1834
	sw		x9, -80(x2)	# 1834
	sw		x22, -84(x2)	# 1834
	sw		x26, -88(x2)	# 1834
	sw		x4, -92(x2)	# 1834
	sw		x23, -96(x2)	# 1834
	addi	x4, x5, 0
	addi	x27, x16, 0
	sw		x1, -100(x2)	# 1834
	addi	x2, x2, -104	# 1834
	lw		x31, 0(x27)	# 1834
	jalr	x1, x31, 0	# 1834
	addi	x2, x2, 104	# 1834
	lw		x1, -100(x2)	# 1834
	lw		x5, -96(x2)	# 1834
	beq		x4, x5, beq.18410	# 1834
	addi	x4, x7, 564	# 1836
	addi	x6, x0, 4	# 1836
	mul		x6, x5, x6	# 1836
	add		x4, x4, x6	# 1836
	lw		x4, 0(x4)	# 1836
	addi	x6, x7, 48	# 1837
	addi	x8, x0, 4	# 1837
	mul		x8, x4, x8	# 1837
	add		x6, x6, x8	# 1837
	lw		x6, 0(x6)	# 1837
	lw		x8, 8(x6)	# 363
	lw		x9, 28(x6)	# 461
	addi	x10, x0, 4	# 466
	mul		x10, x5, x10	# 466
	add		x9, x9, x10	# 466
	flw		f1, 0(x9)	# 466
	flw		f2, -68(x2)	# 1839
	fmul	f1, f1, f2	# 1839
	lw		x9, 4(x6)	# 353
	lw		x10, -64(x2)	# 1693
	sw		x8, -100(x2)	# 1693
	fsw		f1, -104(x2)	# 1693
	sw		x4, -108(x2)	# 1693
	sw		x6, -112(x2)	# 1693
	beq		x9, x10, beq.18412	# 1693
	lw		x11, -60(x2)	# 1695
	beq		x9, x11, beq.18414	# 1695
	lw		x27, -48(x2)	# 1698
	addi	x4, x6, 0
	sw		x1, -116(x2)	# 1698
	addi	x2, x2, -120	# 1698
	lw		x31, 0(x27)	# 1698
	jalr	x1, x31, 0	# 1698
	addi	x2, x2, 120	# 1698
	lw		x1, -116(x2)	# 1698
	jal		x0, beq_cont.18413	# 1695
beq.18414:
	lw		x27, -52(x2)	# 1696
	addi	x4, x6, 0
	sw		x1, -116(x2)	# 1696
	addi	x2, x2, -120	# 1696
	lw		x31, 0(x27)	# 1696
	jalr	x1, x31, 0	# 1696
	addi	x2, x2, 120	# 1696
	lw		x1, -116(x2)	# 1696
beq_cont.18413:
	jal		x0, beq_cont.18411	# 1693
beq.18412:
	lw		x9, -76(x2)	# 1694
	lw		x27, -56(x2)	# 1694
	addi	x4, x9, 0
	sw		x1, -116(x2)	# 1694
	addi	x2, x2, -120	# 1694
	lw		x31, 0(x27)	# 1694
	jalr	x1, x31, 0	# 1694
	addi	x2, x2, 120	# 1694
	lw		x1, -116(x2)	# 1694
beq_cont.18411:
	addi	x5, x7, 552	# 1842
	addi	x4, x7, 636	# 1842
	lw		x27, -44(x2)	# 1842
	sw		x1, -116(x2)	# 1842
	addi	x2, x2, -120	# 1842
	lw		x31, 0(x27)	# 1842
	jalr	x1, x31, 0	# 1842
	addi	x2, x2, 120	# 1842
	lw		x1, -116(x2)	# 1842
	addi	x5, x7, 552	# 1843
	lw		x4, -112(x2)	# 1843
	lw		x27, -40(x2)	# 1843
	sw		x1, -116(x2)	# 1843
	addi	x2, x2, -120	# 1843
	lw		x31, 0(x27)	# 1843
	jalr	x1, x31, 0	# 1843
	addi	x2, x2, 120	# 1843
	lw		x1, -116(x2)	# 1843
	lw		x4, -36(x2)	# 1846
	lw		x5, -108(x2)	# 1846
	mul		x5, x5, x4	# 1846
	addi	x6, x7, 544	# 1846
	addi	x8, x0, 4	# 1846
	lw		x9, -96(x2)	# 1846
	mul		x8, x9, x8	# 1846
	add		x6, x6, x8	# 1846
	lw		x6, 0(x6)	# 1846
	add		x5, x5, x6	# 1846
	addi	x6, x0, 4	# 1846
	lw		x8, -92(x2)	# 1846
	mul		x6, x8, x6	# 1846
	lw		x10, -88(x2)	# 1846
	add		x6, x10, x6	# 1846
	sw		x5, 0(x6)	# 1846
	lw		x5, -32(x2)	# 569
	lw		x6, 4(x5)	# 569
	addi	x11, x0, 4	# 1848
	mul		x11, x8, x11	# 1848
	add		x6, x6, x11	# 1848
	lw		x6, 0(x6)	# 1848
	addi	x11, x7, 552	# 1848
	lw		x27, -44(x2)	# 1848
	addi	x5, x11, 0
	addi	x4, x6, 0
	sw		x1, -116(x2)	# 1848
	addi	x2, x2, -120	# 1848
	lw		x31, 0(x27)	# 1848
	jalr	x1, x31, 0	# 1848
	addi	x2, x2, 120	# 1848
	lw		x1, -116(x2)	# 1848
	lw		x4, -32(x2)	# 584
	lw		x5, 12(x4)	# 584
	lw		x6, -112(x2)	# 461
	lw		x8, 28(x6)	# 461
	addi	x9, x0, 4	# 466
	lw		x10, -96(x2)	# 466
	mul		x9, x10, x9	# 466
	add		x8, x8, x9	# 466
	flw		f1, 0(x8)	# 466
	fadd	f2, f0, f17	# 1852
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.18416	# 6
	addi	x8, x0, 0	# 6
	jal		x0, fle_cont.18415	# 6
fle_else.18416:
	addi	x8, x0, 1	# 6
fle_cont.18415:
	beq		x8, x10, beq.18418	# 1852
	addi	x8, x0, 0	# 1853
	addi	x9, x0, 4	# 1853
	lw		x11, -92(x2)	# 1853
	mul		x9, x11, x9	# 1853
	add		x5, x5, x9	# 1853
	sw		x8, 0(x5)	# 1853
	jal		x0, beq_cont.18417	# 1852
beq.18418:
	addi	x8, x0, 1	# 1855
	addi	x9, x0, 4	# 1855
	lw		x11, -92(x2)	# 1855
	mul		x9, x11, x9	# 1855
	add		x5, x5, x9	# 1855
	sw		x8, 0(x5)	# 1855
	lw		x5, 16(x4)	# 591
	addi	x8, x0, 4	# 1857
	mul		x8, x11, x8	# 1857
	add		x8, x5, x8	# 1857
	lw		x8, 0(x8)	# 1857
	addi	x9, x7, 580	# 1857
	lw		x27, -44(x2)	# 1857
	sw		x5, -116(x2)	# 1857
	addi	x5, x9, 0
	addi	x4, x8, 0
	sw		x1, -120(x2)	# 1857
	addi	x2, x2, -124	# 1857
	lw		x31, 0(x27)	# 1857
	jalr	x1, x31, 0	# 1857
	addi	x2, x2, 124	# 1857
	lw		x1, -120(x2)	# 1857
	addi	x4, x0, 4	# 1858
	lw		x5, -92(x2)	# 1858
	mul		x4, x5, x4	# 1858
	lw		x6, -116(x2)	# 1858
	add		x4, x6, x4	# 1858
	lw		x4, 0(x4)	# 1858
	lui		x6, %hi(l.14856)	# 1858
	ori		x6, x0, %lo(l.14856)	# 1858
	flw		f1, 0(x6)	# 1858
	flw		f2, -104(x2)	# 1858
	fmul	f1, f1, f2	# 1858
	lw		x27, -28(x2)	# 1858
	sw		x1, -120(x2)	# 1858
	addi	x2, x2, -124	# 1858
	lw		x31, 0(x27)	# 1858
	jalr	x1, x31, 0	# 1858
	addi	x2, x2, 124	# 1858
	lw		x1, -120(x2)	# 1858
	lw		x4, -32(x2)	# 628
	lw		x5, 28(x4)	# 628
	addi	x6, x0, 4	# 1860
	lw		x8, -92(x2)	# 1860
	mul		x6, x8, x6	# 1860
	add		x5, x5, x6	# 1860
	lw		x5, 0(x5)	# 1860
	addi	x6, x7, 568	# 1860
	lw		x27, -44(x2)	# 1860
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -120(x2)	# 1860
	addi	x2, x2, -124	# 1860
	lw		x31, 0(x27)	# 1860
	jalr	x1, x31, 0	# 1860
	addi	x2, x2, 124	# 1860
	lw		x1, -120(x2)	# 1860
beq_cont.18417:
	lui		x4, %hi(l.14861)	# 1863
	ori		x4, x0, %lo(l.14861)	# 1863
	flw		f1, 0(x4)	# 1863
	addi	x5, x7, 568	# 1863
	lw		x4, -76(x2)	# 1863
	lw		x27, -80(x2)	# 1863
	fsw		f1, -120(x2)	# 1863
	sw		x1, -124(x2)	# 1863
	addi	x2, x2, -128	# 1863
	lw		x31, 0(x27)	# 1863
	jalr	x1, x31, 0	# 1863
	addi	x2, x2, 128	# 1863
	lw		x1, -124(x2)	# 1863
	flw		f2, -120(x2)	# 1863
	fmul	f1, f2, f1	# 1863
	addi	x5, x7, 568	# 1865
	lw		x4, -76(x2)	# 1865
	lw		x27, -24(x2)	# 1865
	sw		x1, -124(x2)	# 1865
	addi	x2, x2, -128	# 1865
	lw		x31, 0(x27)	# 1865
	jalr	x1, x31, 0	# 1865
	addi	x2, x2, 128	# 1865
	lw		x1, -124(x2)	# 1865
	lw		x4, -112(x2)	# 471
	lw		x5, 28(x4)	# 471
	addi	x6, x0, 4	# 476
	lw		x8, -64(x2)	# 476
	mul		x6, x8, x6	# 476
	add		x5, x5, x6	# 476
	flw		f1, 0(x5)	# 476
	flw		f2, -68(x2)	# 1867
	fmul	f1, f2, f1	# 1867
	addi	x5, x7, 536	# 1870
	addi	x6, x0, 4	# 1870
	lw		x9, -96(x2)	# 1870
	mul		x6, x9, x6	# 1870
	add		x5, x5, x6	# 1870
	lw		x5, 0(x5)	# 1870
	lw		x27, -20(x2)	# 1870
	fsw		f1, -124(x2)	# 1870
	addi	x4, x9, 0
	sw		x1, -128(x2)	# 1870
	addi	x2, x2, -132	# 1870
	lw		x31, 0(x27)	# 1870
	jalr	x1, x31, 0	# 1870
	addi	x2, x2, 132	# 1870
	lw		x1, -128(x2)	# 1870
	lw		x5, -96(x2)	# 1870
	beq		x4, x5, beq.18420	# 1870
	jal		x0, beq_cont.18419	# 1870
beq.18420:
	addi	x4, x7, 312	# 1871
	addi	x6, x7, 568	# 1871
	lw		x27, -80(x2)	# 1871
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -128(x2)	# 1871
	addi	x2, x2, -132	# 1871
	lw		x31, 0(x27)	# 1871
	jalr	x1, x31, 0	# 1871
	addi	x2, x2, 132	# 1871
	lw		x1, -128(x2)	# 1871
	fsub	f1, f0, f1	# 4
	flw		f2, -104(x2)	# 1871
	fmul	f1, f1, f2	# 1871
	addi	x5, x7, 312	# 1872
	lw		x4, -76(x2)	# 1872
	lw		x27, -80(x2)	# 1872
	fsw		f1, -128(x2)	# 1872
	sw		x1, -132(x2)	# 1872
	addi	x2, x2, -136	# 1872
	lw		x31, 0(x27)	# 1872
	jalr	x1, x31, 0	# 1872
	addi	x2, x2, 136	# 1872
	lw		x1, -132(x2)	# 1872
	fsub	f2, f0, f1	# 4
	flw		f1, -128(x2)	# 1873
	flw		f3, -124(x2)	# 1873
	lw		x27, -16(x2)	# 1873
	sw		x1, -132(x2)	# 1873
	addi	x2, x2, -136	# 1873
	lw		x31, 0(x27)	# 1873
	jalr	x1, x31, 0	# 1873
	addi	x2, x2, 136	# 1873
	lw		x1, -132(x2)	# 1873
beq_cont.18419:
	addi	x5, x7, 552	# 1314
	addi	x4, x7, 648	# 1314
	lw		x27, -44(x2)	# 1314
	sw		x1, -132(x2)	# 1314
	addi	x2, x2, -136	# 1314
	lw		x31, 0(x27)	# 1314
	jalr	x1, x31, 0	# 1314
	addi	x2, x2, 136	# 1314
	lw		x1, -132(x2)	# 1314
	addi	x4, x7, 0	# 1315
	addi	x5, x0, 4	# 1315
	lw		x6, -96(x2)	# 1315
	mul		x5, x6, x5	# 1315
	add		x4, x4, x5	# 1315
	lw		x4, 0(x4)	# 1315
	lw		x5, -64(x2)	# 1315
	sub		x4, x4, x5	# 1315
	addi	x8, x7, 552	# 1315
	lw		x27, -12(x2)	# 1315
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -132(x2)	# 1315
	addi	x2, x2, -136	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 136	# 1315
	lw		x1, -132(x2)	# 1315
	addi	x4, x7, 1736	# 1878
	addi	x5, x0, 4	# 1878
	lw		x6, -96(x2)	# 1878
	mul		x5, x6, x5	# 1878
	add		x4, x4, x5	# 1878
	lw		x4, 0(x4)	# 1878
	lw		x5, -64(x2)	# 1878
	sub		x4, x4, x5	# 1878
	flw		f1, -104(x2)	# 1878
	flw		f2, -124(x2)	# 1878
	lw		x8, -76(x2)	# 1878
	lw		x27, -8(x2)	# 1878
	addi	x5, x8, 0
	sw		x1, -132(x2)	# 1878
	addi	x2, x2, -136	# 1878
	lw		x31, 0(x27)	# 1878
	jalr	x1, x31, 0	# 1878
	addi	x2, x2, 136	# 1878
	lw		x1, -132(x2)	# 1878
	fadd	f1, f0, f20	# 1881
	flw		f2, -68(x2)	# 6
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.18422	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18421	# 6
fle_else.18422:
	addi	x4, x0, 1	# 6
fle_cont.18421:
	lw		x5, -96(x2)	# 1881
	beq		x4, x5, beq.18423	# 1881
	lw		x4, -92(x2)	# 1883
	lw		x6, -36(x2)	# 1883
	ble		x6, x4, ble_cont.18424	# 1883
	addi	x6, x4, 1	# 1884
	addi	x8, x0, -1	# 1884
	addi	x9, x0, 4	# 1884
	mul		x6, x6, x9	# 1884
	lw		x9, -88(x2)	# 1884
	add		x6, x9, x6	# 1884
	sw		x8, 0(x6)	# 1884
ble_cont.18424:
	lw		x6, -60(x2)	# 1887
	lw		x8, -100(x2)	# 1887
	beq		x8, x6, beq.18425	# 1887
	jalr	x0, x1, 0	# 1890
beq.18425:
	fadd	f1, f0, f16	# 1888
	lw		x6, -112(x2)	# 461
	lw		x6, 28(x6)	# 461
	addi	x8, x0, 4	# 466
	mul		x8, x5, x8	# 466
	add		x6, x6, x8	# 466
	flw		f3, 0(x6)	# 466
	fsub	f1, f1, f3	# 1888
	fmul	f1, f2, f1	# 1888
	lw		x6, -64(x2)	# 1889
	add		x4, x4, x6	# 1889
	addi	x6, x7, 548	# 1889
	addi	x8, x0, 4	# 1889
	mul		x5, x5, x8	# 1889
	add		x5, x6, x5	# 1889
	flw		f2, 0(x5)	# 1889
	flw		f3, -4(x2)	# 1889
	fadd	f2, f3, f2	# 1889
	lw		x5, -76(x2)	# 1889
	lw		x6, -32(x2)	# 1889
	lw		x27, 0(x2)	# 1889
	lw		x31, 0(x27)	# 1889
	jalr	x0, x31, 0	# 1889
beq.18423:
	jalr	x0, x1, 0	# 1892
beq.18410:
	addi	x4, x0, 4	# 1897
	lw		x6, -92(x2)	# 1897
	mul		x4, x6, x4	# 1897
	lw		x8, -88(x2)	# 1897
	add		x4, x8, x4	# 1897
	lw		x8, -84(x2)	# 1897
	sw		x8, 0(x4)	# 1897
	beq		x6, x5, beq.18428	# 1899
	addi	x4, x7, 312	# 1900
	lw		x6, -76(x2)	# 1900
	lw		x27, -80(x2)	# 1900
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -132(x2)	# 1900
	addi	x2, x2, -136	# 1900
	lw		x31, 0(x27)	# 1900
	jalr	x1, x31, 0	# 1900
	addi	x2, x2, 136	# 1900
	lw		x1, -132(x2)	# 1900
	fsub	f1, f0, f1	# 4
	flw		f2, -72(x2)	# 2
	fle		x31, f1, f2	# 2
	beq		x31, x0, fle_else.18430	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.18429	# 2
fle_else.18430:
	addi	x4, x0, 1	# 2
fle_cont.18429:
	lw		x5, -96(x2)	# 1902
	beq		x4, x5, beq.18431	# 1902
	fmul	f2, f1, f1	# 8
	fmul	f1, f2, f1	# 1905
	flw		f2, -68(x2)	# 1905
	fmul	f1, f1, f2	# 1905
	addi	x4, x7, 324	# 1905
	addi	x6, x0, 4	# 1905
	mul		x6, x5, x6	# 1905
	add		x4, x4, x6	# 1905
	flw		f2, 0(x4)	# 1905
	fmul	f1, f1, f2	# 1905
	addi	x4, x7, 604	# 1906
	addi	x6, x0, 4	# 1906
	mul		x6, x5, x6	# 1906
	add		x4, x4, x6	# 1906
	flw		f2, 0(x4)	# 1906
	fadd	f2, f2, f1	# 1906
	addi	x4, x7, 604	# 1906
	addi	x6, x0, 4	# 1906
	mul		x5, x5, x6	# 1906
	add		x4, x4, x5	# 1906
	fsw		f2, 0(x4)	# 1906
	addi	x4, x7, 604	# 1907
	addi	x5, x0, 4	# 1907
	lw		x6, -64(x2)	# 1907
	mul		x5, x6, x5	# 1907
	add		x4, x4, x5	# 1907
	flw		f2, 0(x4)	# 1907
	fadd	f2, f2, f1	# 1907
	addi	x4, x7, 604	# 1907
	addi	x5, x0, 4	# 1907
	mul		x5, x6, x5	# 1907
	add		x4, x4, x5	# 1907
	fsw		f2, 0(x4)	# 1907
	addi	x4, x7, 604	# 1908
	addi	x5, x0, 4	# 1908
	lw		x6, -60(x2)	# 1908
	mul		x5, x6, x5	# 1908
	add		x4, x4, x5	# 1908
	flw		f2, 0(x4)	# 1908
	fadd	f1, f2, f1	# 1908
	addi	x4, x7, 604	# 1908
	addi	x5, x0, 4	# 1908
	mul		x5, x6, x5	# 1908
	add		x4, x4, x5	# 1908
	fsw		f1, 0(x4)	# 1908
	jalr	x0, x1, 0	# 1908
beq.18431:
	jalr	x0, x1, 0	# 1910
beq.18428:
	jalr	x0, x1, 0	# 1911
trace_diffuse_ray.2877.8928:
	lw		x5, 48(x27)	# 1927
	lw		x6, 44(x27)	# 1927
	lw		x8, 40(x27)	# 1927
	lw		x9, 36(x27)	# 1927
	lw		x10, 32(x27)	# 1927
	lw		x11, 28(x27)	# 1927
	lw		x12, 24(x27)	# 1927
	lw		x13, 20(x27)	# 1927
	lw		x14, 16(x27)	# 1927
	lw		x15, 12(x27)	# 1927
	lw		x16, 8(x27)	# 1927
	flw		f2, 4(x27)	# 1927
	sw		x6, 0(x2)	# 1927
	fsw		f1, -4(x2)	# 1927
	fsw		f2, -8(x2)	# 1927
	sw		x5, -12(x2)	# 1927
	sw		x9, -16(x2)	# 1927
	sw		x8, -20(x2)	# 1927
	sw		x11, -24(x2)	# 1927
	sw		x13, -28(x2)	# 1927
	sw		x14, -32(x2)	# 1927
	sw		x12, -36(x2)	# 1927
	sw		x16, -40(x2)	# 1927
	sw		x4, -44(x2)	# 1927
	sw		x15, -48(x2)	# 1927
	addi	x27, x10, 0
	sw		x1, -52(x2)	# 1927
	addi	x2, x2, -56	# 1927
	lw		x31, 0(x27)	# 1927
	jalr	x1, x31, 0	# 1927
	addi	x2, x2, 56	# 1927
	lw		x1, -52(x2)	# 1927
	lw		x5, -48(x2)	# 1927
	beq		x4, x5, beq.18435	# 1927
	addi	x4, x7, 564	# 1928
	addi	x6, x0, 4	# 1928
	mul		x6, x5, x6	# 1928
	add		x4, x4, x6	# 1928
	lw		x4, 0(x4)	# 1928
	addi	x6, x7, 48	# 1928
	addi	x8, x0, 4	# 1928
	mul		x4, x4, x8	# 1928
	add		x4, x6, x4	# 1928
	lw		x4, 0(x4)	# 1928
	lw		x6, -44(x2)	# 639
	lw		x6, 0(x6)	# 639
	lw		x8, 4(x4)	# 353
	lw		x9, -40(x2)	# 1693
	sw		x4, -52(x2)	# 1693
	beq		x8, x9, beq.18437	# 1693
	lw		x6, -32(x2)	# 1695
	beq		x8, x6, beq.18439	# 1695
	lw		x27, -24(x2)	# 1698
	sw		x1, -56(x2)	# 1698
	addi	x2, x2, -60	# 1698
	lw		x31, 0(x27)	# 1698
	jalr	x1, x31, 0	# 1698
	addi	x2, x2, 60	# 1698
	lw		x1, -56(x2)	# 1698
	jal		x0, beq_cont.18438	# 1695
beq.18439:
	lw		x27, -28(x2)	# 1696
	sw		x1, -56(x2)	# 1696
	addi	x2, x2, -60	# 1696
	lw		x31, 0(x27)	# 1696
	jalr	x1, x31, 0	# 1696
	addi	x2, x2, 60	# 1696
	lw		x1, -56(x2)	# 1696
beq_cont.18438:
	jal		x0, beq_cont.18436	# 1693
beq.18437:
	lw		x27, -36(x2)	# 1694
	addi	x4, x6, 0
	sw		x1, -56(x2)	# 1694
	addi	x2, x2, -60	# 1694
	lw		x31, 0(x27)	# 1694
	jalr	x1, x31, 0	# 1694
	addi	x2, x2, 60	# 1694
	lw		x1, -56(x2)	# 1694
beq_cont.18436:
	addi	x5, x7, 552	# 1930
	lw		x4, -52(x2)	# 1930
	lw		x27, -20(x2)	# 1930
	sw		x1, -56(x2)	# 1930
	addi	x2, x2, -60	# 1930
	lw		x31, 0(x27)	# 1930
	jalr	x1, x31, 0	# 1930
	addi	x2, x2, 60	# 1930
	lw		x1, -56(x2)	# 1930
	addi	x4, x7, 536	# 1933
	addi	x5, x0, 4	# 1933
	lw		x6, -48(x2)	# 1933
	mul		x5, x6, x5	# 1933
	add		x4, x4, x5	# 1933
	lw		x5, 0(x4)	# 1933
	lw		x27, -16(x2)	# 1933
	addi	x4, x6, 0
	sw		x1, -56(x2)	# 1933
	addi	x2, x2, -60	# 1933
	lw		x31, 0(x27)	# 1933
	jalr	x1, x31, 0	# 1933
	addi	x2, x2, 60	# 1933
	lw		x1, -56(x2)	# 1933
	lw		x5, -48(x2)	# 1933
	beq		x4, x5, beq.18440	# 1933
	jalr	x0, x1, 0	# 1937
beq.18440:
	addi	x4, x7, 312	# 1934
	addi	x6, x7, 568	# 1934
	lw		x27, -12(x2)	# 1934
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -56(x2)	# 1934
	addi	x2, x2, -60	# 1934
	lw		x31, 0(x27)	# 1934
	jalr	x1, x31, 0	# 1934
	addi	x2, x2, 60	# 1934
	lw		x1, -56(x2)	# 1934
	fsub	f1, f0, f1	# 4
	flw		f2, -8(x2)	# 2
	fle		x31, f1, f2	# 2
	beq		x31, x0, fle_else.18443	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.18442	# 2
fle_else.18443:
	addi	x4, x0, 1	# 2
fle_cont.18442:
	lw		x5, -48(x2)	# 1935
	beq		x4, x5, beq.18445	# 1935
	jal		x0, beq_cont.18444	# 1935
beq.18445:
	fadd	f1, f0, f2	# 1935
beq_cont.18444:
	flw		f2, -4(x2)	# 1936
	fmul	f1, f2, f1	# 1936
	lw		x4, -52(x2)	# 461
	lw		x4, 28(x4)	# 461
	addi	x6, x0, 4	# 466
	mul		x5, x5, x6	# 466
	add		x4, x4, x5	# 466
	flw		f2, 0(x4)	# 466
	fmul	f1, f1, f2	# 1936
	addi	x5, x7, 580	# 1936
	addi	x4, x7, 592	# 1936
	lw		x27, 0(x2)	# 1936
	lw		x31, 0(x27)	# 1936
	jalr	x0, x31, 0	# 1936
beq.18435:
	jalr	x0, x1, 0	# 1938
iter_trace_diffuse_rays.2880.8931:
	lw		x9, 20(x27)	# 1944
	lw		x10, 16(x27)	# 1944
	lw		x11, 12(x27)	# 1944
	lw		x12, 8(x27)	# 1944
	flw		f1, 4(x27)	# 1944
	ble		x12, x8, ble.18447	# 1944
	jalr	x0, x1, 0	# 1955
ble.18447:
	addi	x13, x0, 4	# 1945
	mul		x13, x8, x13	# 1945
	add		x13, x4, x13	# 1945
	lw		x13, 0(x13)	# 1945
	lw		x13, 0(x13)	# 639
	sw		x6, 0(x2)	# 1945
	sw		x5, -4(x2)	# 1945
	sw		x27, -8(x2)	# 1945
	sw		x11, -12(x2)	# 1945
	sw		x10, -16(x2)	# 1945
	sw		x4, -20(x2)	# 1945
	sw		x8, -24(x2)	# 1945
	sw		x12, -28(x2)	# 1945
	fsw		f1, -32(x2)	# 1945
	addi	x4, x13, 0
	addi	x27, x9, 0
	sw		x1, -36(x2)	# 1945
	addi	x2, x2, -40	# 1945
	lw		x31, 0(x27)	# 1945
	jalr	x1, x31, 0	# 1945
	addi	x2, x2, 40	# 1945
	lw		x1, -36(x2)	# 1945
	flw		f2, -32(x2)	# 3
	fle		x31, f2, f1	# 3
	beq		x31, x0, fle_else.18450	# 3
	addi	x4, x0, 0	# 3
	jal		x0, fle_cont.18449	# 3
fle_else.18450:
	addi	x4, x0, 1	# 3
fle_cont.18449:
	lw		x5, -28(x2)	# 1949
	beq		x4, x5, beq.18452	# 1949
	lw		x4, -24(x2)	# 1950
	addi	x5, x4, 1	# 1950
	addi	x6, x0, 4	# 1950
	mul		x5, x5, x6	# 1950
	lw		x6, -20(x2)	# 1950
	add		x5, x6, x5	# 1950
	lw		x5, 0(x5)	# 1950
	lui		x8, %hi(l.14929)	# 1950
	ori		x8, x0, %lo(l.14929)	# 1950
	flw		f2, 0(x8)	# 1950
	fdiv	f1, f1, f2	# 1950
	lw		x27, -16(x2)	# 1950
	addi	x4, x5, 0
	sw		x1, -36(x2)	# 1950
	addi	x2, x2, -40	# 1950
	lw		x31, 0(x27)	# 1950
	jalr	x1, x31, 0	# 1950
	addi	x2, x2, 40	# 1950
	lw		x1, -36(x2)	# 1950
	jal		x0, beq_cont.18451	# 1949
beq.18452:
	addi	x4, x0, 4	# 1952
	lw		x5, -24(x2)	# 1952
	mul		x4, x5, x4	# 1952
	lw		x6, -20(x2)	# 1952
	add		x4, x6, x4	# 1952
	lw		x4, 0(x4)	# 1952
	lui		x8, %hi(l.14934)	# 1952
	ori		x8, x0, %lo(l.14934)	# 1952
	flw		f2, 0(x8)	# 1952
	fdiv	f1, f1, f2	# 1952
	lw		x27, -16(x2)	# 1952
	sw		x1, -36(x2)	# 1952
	addi	x2, x2, -40	# 1952
	lw		x31, 0(x27)	# 1952
	jalr	x1, x31, 0	# 1952
	addi	x2, x2, 40	# 1952
	lw		x1, -36(x2)	# 1952
beq_cont.18451:
	lw		x4, -12(x2)	# 1954
	lw		x5, -24(x2)	# 1954
	sub		x8, x5, x4	# 1954
	lw		x4, -20(x2)	# 1954
	lw		x5, -4(x2)	# 1954
	lw		x6, 0(x2)	# 1954
	lw		x27, -8(x2)	# 1954
	lw		x31, 0(x27)	# 1954
	jalr	x0, x31, 0	# 1954
trace_diffuse_ray_80percent.2889.8936:
	lw		x8, 28(x27)	# 1971
	lw		x9, 24(x27)	# 1971
	lw		x10, 20(x27)	# 1971
	lw		x11, 16(x27)	# 1971
	lw		x12, 12(x27)	# 1971
	lw		x13, 8(x27)	# 1971
	lw		x14, 4(x27)	# 1971
	sw		x12, 0(x2)	# 1971
	sw		x11, -4(x2)	# 1971
	sw		x5, -8(x2)	# 1971
	sw		x10, -12(x2)	# 1971
	sw		x9, -16(x2)	# 1971
	sw		x13, -20(x2)	# 1971
	sw		x6, -24(x2)	# 1971
	sw		x8, -28(x2)	# 1971
	sw		x14, -32(x2)	# 1971
	sw		x4, -36(x2)	# 1971
	beq		x4, x13, beq_cont.18453	# 1971
	addi	x15, x0, 0	# 1972
	addi	x16, x7, 716	# 1972
	addi	x17, x0, 4	# 1972
	mul		x15, x15, x17	# 1972
	add		x15, x16, x15	# 1972
	lw		x15, 0(x15)	# 1972
	addi	x16, x7, 648	# 1314
	sw		x15, -40(x2)	# 1314
	addi	x5, x6, 0
	addi	x4, x16, 0
	addi	x27, x8, 0
	sw		x1, -44(x2)	# 1314
	addi	x2, x2, -48	# 1314
	lw		x31, 0(x27)	# 1314
	jalr	x1, x31, 0	# 1314
	addi	x2, x2, 48	# 1314
	lw		x1, -44(x2)	# 1314
	addi	x4, x7, 0	# 1315
	addi	x5, x0, 4	# 1315
	lw		x6, -20(x2)	# 1315
	mul		x5, x6, x5	# 1315
	add		x4, x4, x5	# 1315
	lw		x4, 0(x4)	# 1315
	lw		x5, -32(x2)	# 1315
	sub		x4, x4, x5	# 1315
	lw		x8, -24(x2)	# 1315
	lw		x27, -16(x2)	# 1315
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -44(x2)	# 1315
	addi	x2, x2, -48	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 48	# 1315
	lw		x1, -44(x2)	# 1315
	addi	x8, x0, 118	# 1964
	lw		x4, -40(x2)	# 1964
	lw		x5, -8(x2)	# 1964
	lw		x6, -24(x2)	# 1964
	lw		x27, -12(x2)	# 1964
	sw		x1, -44(x2)	# 1964
	addi	x2, x2, -48	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 48	# 1964
	lw		x1, -44(x2)	# 1964
beq_cont.18453:
	lw		x4, -32(x2)	# 1975
	lw		x5, -36(x2)	# 1975
	beq		x5, x4, beq_cont.18454	# 1975
	addi	x6, x0, 1	# 1976
	addi	x8, x7, 716	# 1976
	addi	x9, x0, 4	# 1976
	mul		x6, x6, x9	# 1976
	add		x6, x8, x6	# 1976
	lw		x6, 0(x6)	# 1976
	addi	x8, x7, 648	# 1314
	lw		x9, -24(x2)	# 1314
	lw		x27, -28(x2)	# 1314
	sw		x6, -44(x2)	# 1314
	addi	x5, x9, 0
	addi	x4, x8, 0
	sw		x1, -48(x2)	# 1314
	addi	x2, x2, -52	# 1314
	lw		x31, 0(x27)	# 1314
	jalr	x1, x31, 0	# 1314
	addi	x2, x2, 52	# 1314
	lw		x1, -48(x2)	# 1314
	addi	x4, x7, 0	# 1315
	addi	x5, x0, 4	# 1315
	lw		x6, -20(x2)	# 1315
	mul		x5, x6, x5	# 1315
	add		x4, x4, x5	# 1315
	lw		x4, 0(x4)	# 1315
	lw		x5, -32(x2)	# 1315
	sub		x4, x4, x5	# 1315
	lw		x8, -24(x2)	# 1315
	lw		x27, -16(x2)	# 1315
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -48(x2)	# 1315
	addi	x2, x2, -52	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 52	# 1315
	lw		x1, -48(x2)	# 1315
	addi	x8, x0, 118	# 1964
	lw		x4, -44(x2)	# 1964
	lw		x5, -8(x2)	# 1964
	lw		x6, -24(x2)	# 1964
	lw		x27, -12(x2)	# 1964
	sw		x1, -48(x2)	# 1964
	addi	x2, x2, -52	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 52	# 1964
	lw		x1, -48(x2)	# 1964
beq_cont.18454:
	lw		x4, -4(x2)	# 1979
	lw		x5, -36(x2)	# 1979
	beq		x5, x4, beq_cont.18455	# 1979
	addi	x4, x0, 2	# 1980
	addi	x6, x7, 716	# 1980
	addi	x8, x0, 4	# 1980
	mul		x4, x4, x8	# 1980
	add		x4, x6, x4	# 1980
	lw		x4, 0(x4)	# 1980
	addi	x6, x7, 648	# 1314
	lw		x8, -24(x2)	# 1314
	lw		x27, -28(x2)	# 1314
	sw		x4, -48(x2)	# 1314
	addi	x5, x8, 0
	addi	x4, x6, 0
	sw		x1, -52(x2)	# 1314
	addi	x2, x2, -56	# 1314
	lw		x31, 0(x27)	# 1314
	jalr	x1, x31, 0	# 1314
	addi	x2, x2, 56	# 1314
	lw		x1, -52(x2)	# 1314
	addi	x4, x7, 0	# 1315
	addi	x5, x0, 4	# 1315
	lw		x6, -20(x2)	# 1315
	mul		x5, x6, x5	# 1315
	add		x4, x4, x5	# 1315
	lw		x4, 0(x4)	# 1315
	lw		x5, -32(x2)	# 1315
	sub		x4, x4, x5	# 1315
	lw		x8, -24(x2)	# 1315
	lw		x27, -16(x2)	# 1315
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -52(x2)	# 1315
	addi	x2, x2, -56	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 56	# 1315
	lw		x1, -52(x2)	# 1315
	addi	x8, x0, 118	# 1964
	lw		x4, -48(x2)	# 1964
	lw		x5, -8(x2)	# 1964
	lw		x6, -24(x2)	# 1964
	lw		x27, -12(x2)	# 1964
	sw		x1, -52(x2)	# 1964
	addi	x2, x2, -56	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 56	# 1964
	lw		x1, -52(x2)	# 1964
beq_cont.18455:
	lw		x4, 0(x2)	# 1983
	lw		x5, -36(x2)	# 1983
	beq		x5, x4, beq_cont.18456	# 1983
	addi	x4, x0, 3	# 1984
	addi	x6, x7, 716	# 1984
	addi	x8, x0, 4	# 1984
	mul		x4, x4, x8	# 1984
	add		x4, x6, x4	# 1984
	lw		x4, 0(x4)	# 1984
	addi	x6, x7, 648	# 1314
	lw		x8, -24(x2)	# 1314
	lw		x27, -28(x2)	# 1314
	sw		x4, -52(x2)	# 1314
	addi	x5, x8, 0
	addi	x4, x6, 0
	sw		x1, -56(x2)	# 1314
	addi	x2, x2, -60	# 1314
	lw		x31, 0(x27)	# 1314
	jalr	x1, x31, 0	# 1314
	addi	x2, x2, 60	# 1314
	lw		x1, -56(x2)	# 1314
	addi	x4, x7, 0	# 1315
	addi	x5, x0, 4	# 1315
	lw		x6, -20(x2)	# 1315
	mul		x5, x6, x5	# 1315
	add		x4, x4, x5	# 1315
	lw		x4, 0(x4)	# 1315
	lw		x5, -32(x2)	# 1315
	sub		x4, x4, x5	# 1315
	lw		x8, -24(x2)	# 1315
	lw		x27, -16(x2)	# 1315
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -56(x2)	# 1315
	addi	x2, x2, -60	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 60	# 1315
	lw		x1, -56(x2)	# 1315
	addi	x8, x0, 118	# 1964
	lw		x4, -52(x2)	# 1964
	lw		x5, -8(x2)	# 1964
	lw		x6, -24(x2)	# 1964
	lw		x27, -12(x2)	# 1964
	sw		x1, -56(x2)	# 1964
	addi	x2, x2, -60	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 60	# 1964
	lw		x1, -56(x2)	# 1964
beq_cont.18456:
	addi	x4, x0, 4	# 1987
	lw		x5, -36(x2)	# 1987
	beq		x5, x4, beq.18457	# 1987
	addi	x5, x7, 716	# 1988
	addi	x6, x0, 4	# 1988
	mul		x4, x4, x6	# 1988
	add		x4, x5, x4	# 1988
	lw		x4, 0(x4)	# 1988
	addi	x5, x7, 648	# 1314
	lw		x6, -24(x2)	# 1314
	lw		x27, -28(x2)	# 1314
	sw		x4, -56(x2)	# 1314
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -60(x2)	# 1314
	addi	x2, x2, -64	# 1314
	lw		x31, 0(x27)	# 1314
	jalr	x1, x31, 0	# 1314
	addi	x2, x2, 64	# 1314
	lw		x1, -60(x2)	# 1314
	addi	x4, x7, 0	# 1315
	addi	x5, x0, 4	# 1315
	lw		x6, -20(x2)	# 1315
	mul		x5, x6, x5	# 1315
	add		x4, x4, x5	# 1315
	lw		x4, 0(x4)	# 1315
	lw		x5, -32(x2)	# 1315
	sub		x5, x4, x5	# 1315
	lw		x4, -24(x2)	# 1315
	lw		x27, -16(x2)	# 1315
	sw		x1, -60(x2)	# 1315
	addi	x2, x2, -64	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 64	# 1315
	lw		x1, -60(x2)	# 1315
	addi	x8, x0, 118	# 1964
	lw		x4, -56(x2)	# 1964
	lw		x5, -8(x2)	# 1964
	lw		x6, -24(x2)	# 1964
	lw		x27, -12(x2)	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x0, x31, 0	# 1964
beq.18457:
	jalr	x0, x1, 0	# 1989
calc_diffuse_using_1point.2893.8940:
	lw		x6, 16(x27)	# 598
	lw		x8, 12(x27)	# 598
	lw		x9, 8(x27)	# 598
	lw		x10, 4(x27)	# 598
	lw		x11, 20(x4)	# 598
	lw		x12, 28(x4)	# 628
	lw		x13, 4(x4)	# 569
	lw		x14, 16(x4)	# 591
	addi	x15, x0, 4	# 2002
	mul		x15, x5, x15	# 2002
	add		x11, x11, x15	# 2002
	lw		x11, 0(x11)	# 2002
	addi	x15, x7, 592	# 2002
	sw		x8, 0(x2)	# 2002
	sw		x14, -4(x2)	# 2002
	sw		x9, -8(x2)	# 2002
	sw		x13, -12(x2)	# 2002
	sw		x12, -16(x2)	# 2002
	sw		x5, -20(x2)	# 2002
	sw		x10, -24(x2)	# 2002
	sw		x4, -28(x2)	# 2002
	addi	x5, x11, 0
	addi	x4, x15, 0
	addi	x27, x6, 0
	sw		x1, -32(x2)	# 2002
	addi	x2, x2, -36	# 2002
	lw		x31, 0(x27)	# 2002
	jalr	x1, x31, 0	# 2002
	addi	x2, x2, 36	# 2002
	lw		x1, -32(x2)	# 2002
	lw		x4, -28(x2)	# 614
	lw		x4, 24(x4)	# 614
	addi	x5, x0, 4	# 616
	lw		x6, -24(x2)	# 616
	mul		x5, x6, x5	# 616
	add		x4, x4, x5	# 616
	lw		x4, 0(x4)	# 616
	addi	x5, x0, 4	# 2005
	lw		x6, -20(x2)	# 2005
	mul		x5, x6, x5	# 2005
	lw		x8, -16(x2)	# 2005
	add		x5, x8, x5	# 2005
	lw		x5, 0(x5)	# 2005
	addi	x8, x0, 4	# 2006
	mul		x8, x6, x8	# 2006
	lw		x9, -12(x2)	# 2006
	add		x8, x9, x8	# 2006
	lw		x8, 0(x8)	# 2006
	lw		x27, -8(x2)	# 2003
	addi	x6, x8, 0
	sw		x1, -32(x2)	# 2003
	addi	x2, x2, -36	# 2003
	lw		x31, 0(x27)	# 2003
	jalr	x1, x31, 0	# 2003
	addi	x2, x2, 36	# 2003
	lw		x1, -32(x2)	# 2003
	addi	x4, x0, 4	# 2007
	lw		x5, -20(x2)	# 2007
	mul		x4, x5, x4	# 2007
	lw		x5, -4(x2)	# 2007
	add		x4, x5, x4	# 2007
	lw		x5, 0(x4)	# 2007
	addi	x6, x7, 592	# 2007
	addi	x4, x7, 604	# 2007
	lw		x27, 0(x2)	# 2007
	lw		x31, 0(x27)	# 2007
	jalr	x0, x31, 0	# 2007
calc_diffuse_using_5points.2896.8943:
	lw		x10, 16(x27)	# 2016
	lw		x11, 12(x27)	# 2016
	lw		x12, 8(x27)	# 2016
	lw		x13, 4(x27)	# 2016
	addi	x14, x0, 4	# 2016
	mul		x14, x4, x14	# 2016
	add		x5, x5, x14	# 2016
	lw		x5, 0(x5)	# 2016
	lw		x5, 20(x5)	# 598
	sub		x14, x4, x13	# 2017
	addi	x15, x0, 4	# 2017
	mul		x14, x14, x15	# 2017
	add		x14, x6, x14	# 2017
	lw		x14, 0(x14)	# 2017
	lw		x14, 20(x14)	# 598
	addi	x15, x0, 4	# 2018
	mul		x15, x4, x15	# 2018
	add		x15, x6, x15	# 2018
	lw		x15, 0(x15)	# 2018
	lw		x15, 20(x15)	# 598
	add		x13, x4, x13	# 2019
	addi	x16, x0, 4	# 2019
	mul		x13, x13, x16	# 2019
	add		x13, x6, x13	# 2019
	lw		x13, 0(x13)	# 2019
	lw		x13, 20(x13)	# 598
	addi	x16, x0, 4	# 2020
	mul		x16, x4, x16	# 2020
	add		x8, x8, x16	# 2020
	lw		x8, 0(x8)	# 2020
	lw		x8, 20(x8)	# 598
	addi	x16, x0, 4	# 2022
	mul		x16, x9, x16	# 2022
	add		x5, x5, x16	# 2022
	lw		x5, 0(x5)	# 2022
	addi	x16, x7, 592	# 2022
	sw		x12, 0(x2)	# 2022
	sw		x6, -4(x2)	# 2022
	sw		x4, -8(x2)	# 2022
	sw		x8, -12(x2)	# 2022
	sw		x13, -16(x2)	# 2022
	sw		x15, -20(x2)	# 2022
	sw		x11, -24(x2)	# 2022
	sw		x14, -28(x2)	# 2022
	sw		x9, -32(x2)	# 2022
	addi	x4, x16, 0
	addi	x27, x10, 0
	sw		x1, -36(x2)	# 2022
	addi	x2, x2, -40	# 2022
	lw		x31, 0(x27)	# 2022
	jalr	x1, x31, 0	# 2022
	addi	x2, x2, 40	# 2022
	lw		x1, -36(x2)	# 2022
	addi	x4, x0, 4	# 2023
	lw		x5, -32(x2)	# 2023
	mul		x4, x5, x4	# 2023
	lw		x6, -28(x2)	# 2023
	add		x4, x6, x4	# 2023
	lw		x4, 0(x4)	# 2023
	addi	x6, x7, 592	# 2023
	lw		x27, -24(x2)	# 2023
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -36(x2)	# 2023
	addi	x2, x2, -40	# 2023
	lw		x31, 0(x27)	# 2023
	jalr	x1, x31, 0	# 2023
	addi	x2, x2, 40	# 2023
	lw		x1, -36(x2)	# 2023
	addi	x4, x0, 4	# 2024
	lw		x5, -32(x2)	# 2024
	mul		x4, x5, x4	# 2024
	lw		x6, -20(x2)	# 2024
	add		x4, x6, x4	# 2024
	lw		x4, 0(x4)	# 2024
	addi	x6, x7, 592	# 2024
	lw		x27, -24(x2)	# 2024
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -36(x2)	# 2024
	addi	x2, x2, -40	# 2024
	lw		x31, 0(x27)	# 2024
	jalr	x1, x31, 0	# 2024
	addi	x2, x2, 40	# 2024
	lw		x1, -36(x2)	# 2024
	addi	x4, x0, 4	# 2025
	lw		x5, -32(x2)	# 2025
	mul		x4, x5, x4	# 2025
	lw		x6, -16(x2)	# 2025
	add		x4, x6, x4	# 2025
	lw		x4, 0(x4)	# 2025
	addi	x6, x7, 592	# 2025
	lw		x27, -24(x2)	# 2025
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -36(x2)	# 2025
	addi	x2, x2, -40	# 2025
	lw		x31, 0(x27)	# 2025
	jalr	x1, x31, 0	# 2025
	addi	x2, x2, 40	# 2025
	lw		x1, -36(x2)	# 2025
	addi	x4, x0, 4	# 2026
	lw		x5, -32(x2)	# 2026
	mul		x4, x5, x4	# 2026
	lw		x6, -12(x2)	# 2026
	add		x4, x6, x4	# 2026
	lw		x4, 0(x4)	# 2026
	addi	x6, x7, 592	# 2026
	lw		x27, -24(x2)	# 2026
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -36(x2)	# 2026
	addi	x2, x2, -40	# 2026
	lw		x31, 0(x27)	# 2026
	jalr	x1, x31, 0	# 2026
	addi	x2, x2, 40	# 2026
	lw		x1, -36(x2)	# 2026
	addi	x4, x0, 4	# 2028
	lw		x5, -8(x2)	# 2028
	mul		x4, x5, x4	# 2028
	lw		x5, -4(x2)	# 2028
	add		x4, x5, x4	# 2028
	lw		x4, 0(x4)	# 2028
	lw		x4, 16(x4)	# 591
	addi	x5, x0, 4	# 2029
	lw		x6, -32(x2)	# 2029
	mul		x5, x6, x5	# 2029
	add		x4, x4, x5	# 2029
	lw		x5, 0(x4)	# 2029
	addi	x6, x7, 592	# 2029
	addi	x4, x7, 604	# 2029
	lw		x27, 0(x2)	# 2029
	lw		x31, 0(x27)	# 2029
	jalr	x0, x31, 0	# 2029
do_without_neighbors.2902.8949:
	lw		x6, 12(x27)	# 2035
	lw		x8, 8(x27)	# 2035
	lw		x9, 4(x27)	# 2035
	addi	x10, x0, 4	# 2035
	ble		x5, x10, ble.18459	# 2035
	jalr	x0, x1, 0	# 2045
ble.18459:
	lw		x10, 8(x4)	# 577
	addi	x11, x0, 4	# 2038
	mul		x11, x5, x11	# 2038
	add		x10, x10, x11	# 2038
	lw		x10, 0(x10)	# 2038
	ble		x8, x10, ble.18461	# 2038
	jalr	x0, x1, 0	# 2044
ble.18461:
	lw		x10, 12(x4)	# 584
	addi	x11, x0, 4	# 2040
	mul		x11, x5, x11	# 2040
	add		x10, x10, x11	# 2040
	lw		x10, 0(x10)	# 2040
	sw		x4, 0(x2)	# 2040
	sw		x27, -4(x2)	# 2040
	sw		x9, -8(x2)	# 2040
	sw		x5, -12(x2)	# 2040
	beq		x10, x8, beq_cont.18463	# 2040
	addi	x27, x6, 0
	sw		x1, -16(x2)	# 2041
	addi	x2, x2, -20	# 2041
	lw		x31, 0(x27)	# 2041
	jalr	x1, x31, 0	# 2041
	addi	x2, x2, 20	# 2041
	lw		x1, -16(x2)	# 2041
beq_cont.18463:
	lw		x4, -8(x2)	# 2043
	lw		x5, -12(x2)	# 2043
	add		x5, x5, x4	# 2043
	lw		x4, 0(x2)	# 2043
	lw		x27, -4(x2)	# 2043
	lw		x31, 0(x27)	# 2043
	jalr	x0, x31, 0	# 2043
neighbors_exist.2905.8952:
	lw		x6, 8(x27)	# 2050
	lw		x8, 4(x27)	# 2050
	addi	x9, x7, 616	# 2050
	addi	x10, x0, 4	# 2050
	mul		x10, x8, x10	# 2050
	add		x9, x9, x10	# 2050
	lw		x9, 0(x9)	# 2050
	add		x10, x5, x8	# 2050
	ble		x9, x10, ble.18464	# 2050
	ble		x5, x6, ble.18465	# 2051
	addi	x5, x7, 616	# 2052
	addi	x9, x0, 4	# 2052
	mul		x9, x6, x9	# 2052
	add		x5, x5, x9	# 2052
	lw		x5, 0(x5)	# 2052
	add		x8, x4, x8	# 2052
	ble		x5, x8, ble.18466	# 2052
	ble		x4, x6, ble.18467	# 2053
	addi	x4, x0, 1	# 2054
	jalr	x0, x1, 0	# 2054
ble.18467:
	addi	x4, x0, 0	# 2055
	jalr	x0, x1, 0	# 2055
ble.18466:
	addi	x4, x0, 0	# 2056
	jalr	x0, x1, 0	# 2056
ble.18465:
	addi	x4, x0, 0	# 2057
	jalr	x0, x1, 0	# 2057
ble.18464:
	addi	x4, x0, 0	# 2058
	jalr	x0, x1, 0	# 2058
neighbors_are_available.2912.8956:
	lw		x10, 4(x27)	# 2069
	addi	x11, x0, 4	# 2069
	mul		x11, x4, x11	# 2069
	add		x11, x6, x11	# 2069
	lw		x11, 0(x11)	# 2069
	lw		x11, 8(x11)	# 577
	addi	x12, x0, 4	# 2063
	mul		x12, x9, x12	# 2063
	add		x11, x11, x12	# 2063
	lw		x11, 0(x11)	# 2063
	addi	x12, x0, 4	# 2071
	mul		x12, x4, x12	# 2071
	add		x5, x5, x12	# 2071
	lw		x5, 0(x5)	# 2071
	lw		x5, 8(x5)	# 577
	addi	x12, x0, 4	# 2063
	mul		x12, x9, x12	# 2063
	add		x5, x5, x12	# 2063
	lw		x5, 0(x5)	# 2063
	beq		x5, x11, beq.18468	# 2071
	addi	x4, x0, 0	# 2079
	jalr	x0, x1, 0	# 2079
beq.18468:
	addi	x5, x0, 4	# 2072
	mul		x5, x4, x5	# 2072
	add		x5, x8, x5	# 2072
	lw		x5, 0(x5)	# 2072
	lw		x5, 8(x5)	# 577
	addi	x8, x0, 4	# 2063
	mul		x8, x9, x8	# 2063
	add		x5, x5, x8	# 2063
	lw		x5, 0(x5)	# 2063
	beq		x5, x11, beq.18469	# 2072
	addi	x4, x0, 0	# 2078
	jalr	x0, x1, 0	# 2078
beq.18469:
	sub		x5, x4, x10	# 2073
	addi	x8, x0, 4	# 2073
	mul		x5, x5, x8	# 2073
	add		x5, x6, x5	# 2073
	lw		x5, 0(x5)	# 2073
	lw		x5, 8(x5)	# 577
	addi	x8, x0, 4	# 2063
	mul		x8, x9, x8	# 2063
	add		x5, x5, x8	# 2063
	lw		x5, 0(x5)	# 2063
	beq		x5, x11, beq.18470	# 2073
	addi	x4, x0, 0	# 2077
	jalr	x0, x1, 0	# 2077
beq.18470:
	add		x4, x4, x10	# 2074
	addi	x5, x0, 4	# 2074
	mul		x4, x4, x5	# 2074
	add		x4, x6, x4	# 2074
	lw		x4, 0(x4)	# 2074
	lw		x4, 8(x4)	# 577
	addi	x5, x0, 4	# 2063
	mul		x5, x9, x5	# 2063
	add		x4, x4, x5	# 2063
	lw		x4, 0(x4)	# 2063
	beq		x4, x11, beq.18471	# 2074
	addi	x4, x0, 0	# 2076
	jalr	x0, x1, 0	# 2076
beq.18471:
	addi	x4, x0, 1	# 2075
	jalr	x0, x1, 0	# 2075
try_exploit_neighbors.2918.8962:
	lw		x11, 20(x27)	# 2087
	lw		x12, 16(x27)	# 2087
	lw		x13, 12(x27)	# 2087
	lw		x14, 8(x27)	# 2087
	lw		x15, 4(x27)	# 2087
	addi	x16, x0, 4	# 2087
	mul		x16, x4, x16	# 2087
	add		x16, x8, x16	# 2087
	lw		x16, 0(x16)	# 2087
	addi	x17, x0, 4	# 2088
	ble		x10, x17, ble.18472	# 2088
	jalr	x0, x1, 0	# 2107
ble.18472:
	lw		x17, 8(x16)	# 577
	addi	x18, x0, 4	# 2063
	mul		x18, x10, x18	# 2063
	add		x17, x17, x18	# 2063
	lw		x17, 0(x17)	# 2063
	ble		x14, x17, ble.18474	# 2091
	jalr	x0, x1, 0	# 2106
ble.18474:
	sw		x5, 0(x2)	# 2093
	sw		x27, -4(x2)	# 2093
	sw		x15, -8(x2)	# 2093
	sw		x9, -12(x2)	# 2093
	sw		x6, -16(x2)	# 2093
	sw		x13, -20(x2)	# 2093
	sw		x16, -24(x2)	# 2093
	sw		x10, -28(x2)	# 2093
	sw		x12, -32(x2)	# 2093
	sw		x8, -36(x2)	# 2093
	sw		x4, -40(x2)	# 2093
	sw		x14, -44(x2)	# 2093
	addi	x5, x6, 0
	addi	x27, x11, 0
	addi	x6, x8, 0
	addi	x8, x9, 0
	addi	x9, x10, 0
	sw		x1, -48(x2)	# 2093
	addi	x2, x2, -52	# 2093
	lw		x31, 0(x27)	# 2093
	jalr	x1, x31, 0	# 2093
	addi	x2, x2, 52	# 2093
	lw		x1, -48(x2)	# 2093
	lw		x5, -44(x2)	# 2093
	beq		x4, x5, beq.18476	# 2093
	lw		x4, -24(x2)	# 584
	lw		x4, 12(x4)	# 584
	addi	x6, x0, 4	# 2097
	lw		x9, -28(x2)	# 2097
	mul		x6, x9, x6	# 2097
	add		x4, x4, x6	# 2097
	lw		x4, 0(x4)	# 2097
	beq		x4, x5, beq_cont.18477	# 2097
	lw		x4, -40(x2)	# 2098
	lw		x5, -16(x2)	# 2098
	lw		x6, -36(x2)	# 2098
	lw		x8, -12(x2)	# 2098
	lw		x27, -20(x2)	# 2098
	sw		x1, -48(x2)	# 2098
	addi	x2, x2, -52	# 2098
	lw		x31, 0(x27)	# 2098
	jalr	x1, x31, 0	# 2098
	addi	x2, x2, 52	# 2098
	lw		x1, -48(x2)	# 2098
beq_cont.18477:
	lw		x4, -8(x2)	# 2102
	lw		x5, -28(x2)	# 2102
	add		x10, x5, x4	# 2102
	lw		x4, -40(x2)	# 2102
	lw		x5, 0(x2)	# 2102
	lw		x6, -16(x2)	# 2102
	lw		x8, -36(x2)	# 2102
	lw		x9, -12(x2)	# 2102
	lw		x27, -4(x2)	# 2102
	lw		x31, 0(x27)	# 2102
	jalr	x0, x31, 0	# 2102
beq.18476:
	addi	x4, x0, 4	# 2105
	lw		x5, -40(x2)	# 2105
	mul		x4, x5, x4	# 2105
	lw		x5, -36(x2)	# 2105
	add		x4, x5, x4	# 2105
	lw		x4, 0(x4)	# 2105
	lw		x5, -28(x2)	# 2105
	lw		x27, -32(x2)	# 2105
	lw		x31, 0(x27)	# 2105
	jalr	x0, x31, 0	# 2105
write_ppm_header.2925.8969:
	lw		x5, 8(x27)	# 2115
	lw		x6, 4(x27)	# 2115
	addi	x8, x0, 80	# 2115
	sw		x6, 0(x2)	# 2115
	sw		x5, -4(x2)	# 2115
	sw		x4, -8(x2)	# 2115
	addi	x4, x8, 0
	sw		x1, -12(x2)	# 2115
	addi	x2, x2, -16	# 2115
	jal		x1, min_caml_print_char	# 2115
	addi	x2, x2, 16	# 2115
	lw		x1, -12(x2)	# 2115
	lw		x4, -8(x2)	# 2116
	addi	x4, x4, 48	# 2116
	sw		x1, -12(x2)	# 2116
	addi	x2, x2, -16	# 2116
	jal		x1, min_caml_print_char	# 2116
	addi	x2, x2, 16	# 2116
	lw		x1, -12(x2)	# 2116
	addi	x4, x0, 10	# 2117
	sw		x4, -12(x2)	# 2117
	sw		x1, -16(x2)	# 2117
	addi	x2, x2, -20	# 2117
	jal		x1, min_caml_print_char	# 2117
	addi	x2, x2, 20	# 2117
	lw		x1, -16(x2)	# 2117
	addi	x4, x7, 616	# 2118
	addi	x5, x0, 4	# 2118
	lw		x6, -4(x2)	# 2118
	mul		x5, x6, x5	# 2118
	add		x4, x4, x5	# 2118
	lw		x4, 0(x4)	# 2118
	sw		x1, -16(x2)	# 2118
	addi	x2, x2, -20	# 2118
	jal		x1, min_caml_print_int	# 2118
	addi	x2, x2, 20	# 2118
	lw		x1, -16(x2)	# 2118
	addi	x4, x0, 32	# 2119
	sw		x4, -16(x2)	# 2119
	sw		x1, -20(x2)	# 2119
	addi	x2, x2, -24	# 2119
	jal		x1, min_caml_print_char	# 2119
	addi	x2, x2, 24	# 2119
	lw		x1, -20(x2)	# 2119
	addi	x4, x7, 616	# 2120
	addi	x5, x0, 4	# 2120
	lw		x6, 0(x2)	# 2120
	mul		x5, x6, x5	# 2120
	add		x4, x4, x5	# 2120
	lw		x4, 0(x4)	# 2120
	sw		x1, -20(x2)	# 2120
	addi	x2, x2, -24	# 2120
	jal		x1, min_caml_print_int	# 2120
	addi	x2, x2, 24	# 2120
	lw		x1, -20(x2)	# 2120
	lw		x4, -16(x2)	# 2121
	sw		x1, -20(x2)	# 2121
	addi	x2, x2, -24	# 2121
	jal		x1, min_caml_print_char	# 2121
	addi	x2, x2, 24	# 2121
	lw		x1, -20(x2)	# 2121
	addi	x4, x0, 255	# 2122
	sw		x1, -20(x2)	# 2122
	addi	x2, x2, -24	# 2122
	jal		x1, min_caml_print_int	# 2122
	addi	x2, x2, 24	# 2122
	lw		x1, -20(x2)	# 2122
	lw		x4, -12(x2)	# 2123
	jal		x0, min_caml_print_char	# 2123
write_rgb_element_int.2927.8971:
	lw		x4, 4(x27)	# 2128
	sw		x4, 0(x2)	# 2128
	sw		x1, -4(x2)	# 2128
	addi	x2, x2, -8	# 2128
	jal		x1, int_of_float.2487.8535	# 2128
	addi	x2, x2, 8	# 2128
	lw		x1, -4(x2)	# 2128
	addi	x5, x0, 255	# 2129
	ble		x4, x5, ble.18479	# 2129
	addi	x4, x0, 255	# 2129
	jal		x0, ble_cont.18478	# 2129
ble.18479:
	lw		x5, 0(x2)	# 2129
	ble		x5, x4, ble_cont.18480	# 2129
	addi	x4, x0, 0	# 2129
ble_cont.18480:
ble_cont.18478:
	jal		x0, min_caml_print_int	# 2130
write_rgb_element_char.2929.8973:
	lw		x4, 4(x27)	# 2134
	sw		x4, 0(x2)	# 2134
	sw		x1, -4(x2)	# 2134
	addi	x2, x2, -8	# 2134
	jal		x1, int_of_float.2487.8535	# 2134
	addi	x2, x2, 8	# 2134
	lw		x1, -4(x2)	# 2134
	addi	x5, x0, 255	# 2135
	ble		x4, x5, ble.18482	# 2135
	addi	x4, x0, 255	# 2135
	jal		x0, ble_cont.18481	# 2135
ble.18482:
	lw		x5, 0(x2)	# 2135
	ble		x5, x4, ble_cont.18483	# 2135
	addi	x4, x0, 0	# 2135
ble_cont.18483:
ble_cont.18481:
	jal		x0, min_caml_print_char	# 2136
write_rgb.2931.8975:
	lw		x5, 24(x27)	# 2140
	lw		x6, 20(x27)	# 2140
	lw		x8, 16(x27)	# 2140
	lw		x9, 12(x27)	# 2140
	lw		x10, 8(x27)	# 2140
	lw		x11, 4(x27)	# 2140
	beq		x4, x9, beq.18484	# 2140
	addi	x4, x7, 604	# 2148
	addi	x5, x0, 4	# 2148
	mul		x5, x10, x5	# 2148
	add		x4, x4, x5	# 2148
	flw		f1, 0(x4)	# 2148
	sw		x8, 0(x2)	# 2148
	sw		x6, -4(x2)	# 2148
	sw		x11, -8(x2)	# 2148
	addi	x27, x6, 0
	sw		x1, -12(x2)	# 2148
	addi	x2, x2, -16	# 2148
	lw		x31, 0(x27)	# 2148
	jalr	x1, x31, 0	# 2148
	addi	x2, x2, 16	# 2148
	lw		x1, -12(x2)	# 2148
	addi	x4, x7, 604	# 2149
	addi	x5, x0, 4	# 2149
	lw		x6, -8(x2)	# 2149
	mul		x5, x6, x5	# 2149
	add		x4, x4, x5	# 2149
	flw		f1, 0(x4)	# 2149
	lw		x27, -4(x2)	# 2149
	sw		x1, -12(x2)	# 2149
	addi	x2, x2, -16	# 2149
	lw		x31, 0(x27)	# 2149
	jalr	x1, x31, 0	# 2149
	addi	x2, x2, 16	# 2149
	lw		x1, -12(x2)	# 2149
	addi	x4, x7, 604	# 2150
	addi	x5, x0, 4	# 2150
	lw		x6, 0(x2)	# 2150
	mul		x5, x6, x5	# 2150
	add		x4, x4, x5	# 2150
	flw		f1, 0(x4)	# 2150
	lw		x27, -4(x2)	# 2150
	lw		x31, 0(x27)	# 2150
	jalr	x0, x31, 0	# 2150
beq.18484:
	addi	x4, x7, 604	# 2141
	addi	x6, x0, 4	# 2141
	mul		x6, x10, x6	# 2141
	add		x4, x4, x6	# 2141
	flw		f1, 0(x4)	# 2141
	sw		x8, 0(x2)	# 2141
	sw		x5, -12(x2)	# 2141
	sw		x11, -8(x2)	# 2141
	addi	x27, x5, 0
	sw		x1, -16(x2)	# 2141
	addi	x2, x2, -20	# 2141
	lw		x31, 0(x27)	# 2141
	jalr	x1, x31, 0	# 2141
	addi	x2, x2, 20	# 2141
	lw		x1, -16(x2)	# 2141
	addi	x4, x0, 32	# 2142
	sw		x4, -16(x2)	# 2142
	sw		x1, -20(x2)	# 2142
	addi	x2, x2, -24	# 2142
	jal		x1, min_caml_print_char	# 2142
	addi	x2, x2, 24	# 2142
	lw		x1, -20(x2)	# 2142
	addi	x4, x7, 604	# 2143
	addi	x5, x0, 4	# 2143
	lw		x6, -8(x2)	# 2143
	mul		x5, x6, x5	# 2143
	add		x4, x4, x5	# 2143
	flw		f1, 0(x4)	# 2143
	lw		x27, -12(x2)	# 2143
	sw		x1, -20(x2)	# 2143
	addi	x2, x2, -24	# 2143
	lw		x31, 0(x27)	# 2143
	jalr	x1, x31, 0	# 2143
	addi	x2, x2, 24	# 2143
	lw		x1, -20(x2)	# 2143
	lw		x4, -16(x2)	# 2144
	sw		x1, -20(x2)	# 2144
	addi	x2, x2, -24	# 2144
	jal		x1, min_caml_print_char	# 2144
	addi	x2, x2, 24	# 2144
	lw		x1, -20(x2)	# 2144
	addi	x4, x7, 604	# 2145
	addi	x5, x0, 4	# 2145
	lw		x6, 0(x2)	# 2145
	mul		x5, x6, x5	# 2145
	add		x4, x4, x5	# 2145
	flw		f1, 0(x4)	# 2145
	lw		x27, -12(x2)	# 2145
	sw		x1, -20(x2)	# 2145
	addi	x2, x2, -24	# 2145
	lw		x31, 0(x27)	# 2145
	jalr	x1, x31, 0	# 2145
	addi	x2, x2, 24	# 2145
	lw		x1, -20(x2)	# 2145
	addi	x4, x0, 10	# 2146
	jal		x0, min_caml_print_char	# 2146
pretrace_diffuse_rays.2933.8977:
	lw		x6, 24(x27)	# 2163
	lw		x8, 20(x27)	# 2163
	lw		x9, 16(x27)	# 2163
	lw		x10, 12(x27)	# 2163
	lw		x11, 8(x27)	# 2163
	lw		x12, 4(x27)	# 2163
	addi	x13, x0, 4	# 2163
	ble		x5, x13, ble.18485	# 2163
	jalr	x0, x1, 0	# 2187
ble.18485:
	lw		x13, 8(x4)	# 577
	addi	x14, x0, 4	# 2063
	mul		x14, x5, x14	# 2063
	add		x13, x13, x14	# 2063
	lw		x13, 0(x13)	# 2063
	ble		x11, x13, ble.18487	# 2167
	jalr	x0, x1, 0	# 2186
ble.18487:
	lw		x13, 12(x4)	# 584
	addi	x14, x0, 4	# 2170
	mul		x14, x5, x14	# 2170
	add		x13, x13, x14	# 2170
	lw		x13, 0(x13)	# 2170
	sw		x4, 0(x2)	# 2170
	sw		x27, -4(x2)	# 2170
	sw		x12, -8(x2)	# 2170
	sw		x5, -12(x2)	# 2170
	beq		x13, x11, beq_cont.18489	# 2170
	lw		x13, 24(x4)	# 614
	addi	x14, x0, 0	# 616
	addi	x15, x0, 4	# 616
	mul		x14, x14, x15	# 616
	add		x13, x13, x14	# 616
	lw		x13, 0(x13)	# 616
	fadd	f1, f0, f0	# 254
	addi	x14, x7, 592	# 247
	addi	x15, x0, 4	# 247
	mul		x15, x11, x15	# 247
	add		x14, x14, x15	# 247
	fsw		f1, 0(x14)	# 247
	addi	x14, x7, 592	# 248
	addi	x15, x0, 4	# 248
	mul		x15, x12, x15	# 248
	add		x14, x14, x15	# 248
	fsw		f1, 0(x14)	# 248
	addi	x14, x7, 592	# 249
	addi	x15, x0, 4	# 249
	mul		x10, x10, x15	# 249
	add		x10, x14, x10	# 249
	fsw		f1, 0(x10)	# 249
	lw		x10, 28(x4)	# 628
	lw		x14, 4(x4)	# 569
	addi	x15, x7, 716	# 2179
	addi	x16, x0, 4	# 2179
	mul		x13, x13, x16	# 2179
	add		x13, x15, x13	# 2179
	lw		x13, 0(x13)	# 2179
	addi	x15, x0, 4	# 2180
	mul		x15, x5, x15	# 2180
	add		x10, x10, x15	# 2180
	lw		x10, 0(x10)	# 2180
	addi	x15, x0, 4	# 2181
	mul		x15, x5, x15	# 2181
	add		x14, x14, x15	# 2181
	lw		x14, 0(x14)	# 2181
	addi	x15, x7, 648	# 1314
	sw		x6, -16(x2)	# 1314
	sw		x10, -20(x2)	# 1314
	sw		x13, -24(x2)	# 1314
	sw		x9, -28(x2)	# 1314
	sw		x14, -32(x2)	# 1314
	sw		x8, -36(x2)	# 1314
	sw		x11, -40(x2)	# 1314
	addi	x5, x14, 0
	addi	x4, x15, 0
	addi	x27, x6, 0
	sw		x1, -44(x2)	# 1314
	addi	x2, x2, -48	# 1314
	lw		x31, 0(x27)	# 1314
	jalr	x1, x31, 0	# 1314
	addi	x2, x2, 48	# 1314
	lw		x1, -44(x2)	# 1314
	addi	x4, x7, 0	# 1315
	addi	x5, x0, 4	# 1315
	lw		x6, -40(x2)	# 1315
	mul		x5, x6, x5	# 1315
	add		x4, x4, x5	# 1315
	lw		x4, 0(x4)	# 1315
	lw		x5, -8(x2)	# 1315
	sub		x4, x4, x5	# 1315
	lw		x6, -32(x2)	# 1315
	lw		x27, -36(x2)	# 1315
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -44(x2)	# 1315
	addi	x2, x2, -48	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 48	# 1315
	lw		x1, -44(x2)	# 1315
	addi	x8, x0, 118	# 1964
	lw		x4, -24(x2)	# 1964
	lw		x5, -20(x2)	# 1964
	lw		x6, -32(x2)	# 1964
	lw		x27, -28(x2)	# 1964
	sw		x1, -44(x2)	# 1964
	addi	x2, x2, -48	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 48	# 1964
	lw		x1, -44(x2)	# 1964
	lw		x4, 0(x2)	# 598
	lw		x5, 20(x4)	# 598
	addi	x6, x0, 4	# 2183
	lw		x8, -12(x2)	# 2183
	mul		x6, x8, x6	# 2183
	add		x5, x5, x6	# 2183
	lw		x5, 0(x5)	# 2183
	addi	x6, x7, 592	# 2183
	lw		x27, -16(x2)	# 2183
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -44(x2)	# 2183
	addi	x2, x2, -48	# 2183
	lw		x31, 0(x27)	# 2183
	jalr	x1, x31, 0	# 2183
	addi	x2, x2, 48	# 2183
	lw		x1, -44(x2)	# 2183
beq_cont.18489:
	lw		x4, -8(x2)	# 2185
	lw		x5, -12(x2)	# 2185
	add		x5, x5, x4	# 2185
	lw		x4, 0(x2)	# 2185
	lw		x27, -4(x2)	# 2185
	lw		x31, 0(x27)	# 2185
	jalr	x0, x31, 0	# 2185
pretrace_pixels.2936.8980:
	lw		x8, 36(x27)	# 2193
	lw		x9, 32(x27)	# 2193
	lw		x10, 28(x27)	# 2193
	lw		x11, 24(x27)	# 2193
	lw		x12, 20(x27)	# 2193
	lw		x13, 16(x27)	# 2193
	lw		x14, 12(x27)	# 2193
	lw		x15, 8(x27)	# 2193
	flw		f4, 4(x27)	# 2193
	ble		x14, x5, ble.18490	# 2193
	jalr	x0, x1, 0	# 2213
ble.18490:
	addi	x16, x7, 632	# 2195
	addi	x17, x0, 4	# 2195
	mul		x17, x14, x17	# 2195
	add		x16, x16, x17	# 2195
	flw		f5, 0(x16)	# 2195
	addi	x16, x7, 624	# 2195
	addi	x17, x0, 4	# 2195
	mul		x17, x14, x17	# 2195
	add		x16, x16, x17	# 2195
	lw		x16, 0(x16)	# 2195
	sub		x16, x5, x16	# 2195
	sw		x27, 0(x2)	# 2195
	sw		x12, -4(x2)	# 2195
	sw		x11, -8(x2)	# 2195
	sw		x6, -12(x2)	# 2195
	sw		x10, -16(x2)	# 2195
	sw		x4, -20(x2)	# 2195
	sw		x5, -24(x2)	# 2195
	sw		x9, -28(x2)	# 2195
	fsw		f4, -32(x2)	# 2195
	sw		x8, -36(x2)	# 2195
	fsw		f3, -40(x2)	# 2195
	sw		x13, -44(x2)	# 2195
	fsw		f2, -48(x2)	# 2195
	sw		x15, -52(x2)	# 2195
	fsw		f1, -56(x2)	# 2195
	sw		x14, -60(x2)	# 2195
	fsw		f5, -64(x2)	# 2195
	addi	x4, x16, 0
	sw		x1, -68(x2)	# 2195
	addi	x2, x2, -72	# 2195
	jal		x1, float_of_int.2489.8537	# 2195
	addi	x2, x2, 72	# 2195
	lw		x1, -68(x2)	# 2195
	flw		f2, -64(x2)	# 2195
	fmul	f1, f2, f1	# 2195
	addi	x4, x7, 660	# 2196
	addi	x5, x0, 4	# 2196
	lw		x6, -60(x2)	# 2196
	mul		x5, x6, x5	# 2196
	add		x4, x4, x5	# 2196
	flw		f2, 0(x4)	# 2196
	fmul	f2, f1, f2	# 2196
	flw		f3, -56(x2)	# 2196
	fadd	f2, f2, f3	# 2196
	addi	x4, x7, 696	# 2196
	addi	x5, x0, 4	# 2196
	mul		x5, x6, x5	# 2196
	add		x4, x4, x5	# 2196
	fsw		f2, 0(x4)	# 2196
	addi	x4, x7, 660	# 2197
	addi	x5, x0, 4	# 2197
	lw		x8, -52(x2)	# 2197
	mul		x5, x8, x5	# 2197
	add		x4, x4, x5	# 2197
	flw		f2, 0(x4)	# 2197
	fmul	f2, f1, f2	# 2197
	flw		f4, -48(x2)	# 2197
	fadd	f2, f2, f4	# 2197
	addi	x4, x7, 696	# 2197
	addi	x5, x0, 4	# 2197
	mul		x5, x8, x5	# 2197
	add		x4, x4, x5	# 2197
	fsw		f2, 0(x4)	# 2197
	addi	x4, x7, 660	# 2198
	addi	x5, x0, 4	# 2198
	lw		x9, -44(x2)	# 2198
	mul		x5, x9, x5	# 2198
	add		x4, x4, x5	# 2198
	flw		f2, 0(x4)	# 2198
	fmul	f1, f1, f2	# 2198
	flw		f2, -40(x2)	# 2198
	fadd	f1, f1, f2	# 2198
	addi	x4, x7, 696	# 2198
	addi	x5, x0, 4	# 2198
	mul		x5, x9, x5	# 2198
	add		x4, x4, x5	# 2198
	fsw		f1, 0(x4)	# 2198
	addi	x4, x7, 696	# 2199
	lw		x27, -36(x2)	# 2199
	addi	x5, x6, 0
	sw		x1, -68(x2)	# 2199
	addi	x2, x2, -72	# 2199
	lw		x31, 0(x27)	# 2199
	jalr	x1, x31, 0	# 2199
	addi	x2, x2, 72	# 2199
	lw		x1, -68(x2)	# 2199
	addi	x4, x7, 604	# 247
	addi	x5, x0, 4	# 247
	lw		x6, -60(x2)	# 247
	mul		x5, x6, x5	# 247
	add		x4, x4, x5	# 247
	flw		f1, -32(x2)	# 247
	fsw		f1, 0(x4)	# 247
	addi	x4, x7, 604	# 248
	addi	x5, x0, 4	# 248
	lw		x8, -52(x2)	# 248
	mul		x5, x8, x5	# 248
	add		x4, x4, x5	# 248
	fsw		f1, 0(x4)	# 248
	addi	x4, x7, 604	# 249
	addi	x5, x0, 4	# 249
	lw		x9, -44(x2)	# 249
	mul		x5, x9, x5	# 249
	add		x4, x4, x5	# 249
	fsw		f1, 0(x4)	# 249
	addi	x5, x7, 300	# 2201
	addi	x4, x7, 636	# 2201
	lw		x27, -28(x2)	# 2201
	sw		x1, -68(x2)	# 2201
	addi	x2, x2, -72	# 2201
	lw		x31, 0(x27)	# 2201
	jalr	x1, x31, 0	# 2201
	addi	x2, x2, 72	# 2201
	lw		x1, -68(x2)	# 2201
	fadd	f1, f0, f16	# 2204
	addi	x4, x0, 4	# 2204
	lw		x5, -24(x2)	# 2204
	mul		x4, x5, x4	# 2204
	lw		x6, -20(x2)	# 2204
	add		x4, x6, x4	# 2204
	lw		x4, 0(x4)	# 2204
	addi	x8, x7, 696	# 2204
	flw		f2, -32(x2)	# 2204
	lw		x9, -60(x2)	# 2204
	lw		x27, -16(x2)	# 2204
	addi	x6, x4, 0
	addi	x5, x8, 0
	addi	x4, x9, 0
	sw		x1, -68(x2)	# 2204
	addi	x2, x2, -72	# 2204
	lw		x31, 0(x27)	# 2204
	jalr	x1, x31, 0	# 2204
	addi	x2, x2, 72	# 2204
	lw		x1, -68(x2)	# 2204
	addi	x4, x0, 4	# 2205
	lw		x5, -24(x2)	# 2205
	mul		x4, x5, x4	# 2205
	lw		x6, -20(x2)	# 2205
	add		x4, x6, x4	# 2205
	lw		x4, 0(x4)	# 2205
	lw		x4, 0(x4)	# 562
	addi	x8, x7, 604	# 2205
	lw		x27, -28(x2)	# 2205
	addi	x5, x8, 0
	sw		x1, -68(x2)	# 2205
	addi	x2, x2, -72	# 2205
	lw		x31, 0(x27)	# 2205
	jalr	x1, x31, 0	# 2205
	addi	x2, x2, 72	# 2205
	lw		x1, -68(x2)	# 2205
	addi	x4, x0, 4	# 2206
	lw		x5, -24(x2)	# 2206
	mul		x4, x5, x4	# 2206
	lw		x6, -20(x2)	# 2206
	add		x4, x6, x4	# 2206
	lw		x4, 0(x4)	# 2206
	lw		x4, 24(x4)	# 621
	addi	x8, x0, 4	# 623
	lw		x9, -60(x2)	# 623
	mul		x8, x9, x8	# 623
	add		x4, x4, x8	# 623
	lw		x8, -12(x2)	# 623
	sw		x8, 0(x4)	# 623
	addi	x4, x0, 4	# 2209
	mul		x4, x5, x4	# 2209
	add		x4, x6, x4	# 2209
	lw		x4, 0(x4)	# 2209
	lw		x27, -8(x2)	# 2209
	addi	x5, x9, 0
	sw		x1, -68(x2)	# 2209
	addi	x2, x2, -72	# 2209
	lw		x31, 0(x27)	# 2209
	jalr	x1, x31, 0	# 2209
	addi	x2, x2, 72	# 2209
	lw		x1, -68(x2)	# 2209
	lw		x4, -52(x2)	# 2211
	lw		x5, -24(x2)	# 2211
	sub		x5, x5, x4	# 2211
	lw		x6, -12(x2)	# 224
	add		x4, x6, x4	# 224
	lw		x6, -4(x2)	# 225
	ble		x6, x4, ble.18493	# 225
	addi	x6, x4, 0	# 225
	jal		x0, ble_cont.18492	# 225
ble.18493:
	sub		x6, x4, x6	# 225
ble_cont.18492:
	flw		f1, -56(x2)	# 2211
	flw		f2, -48(x2)	# 2211
	flw		f3, -40(x2)	# 2211
	lw		x4, -20(x2)	# 2211
	lw		x27, 0(x2)	# 2211
	lw		x31, 0(x27)	# 2211
	jalr	x0, x31, 0	# 2211
pretrace_line.2943.8987:
	lw		x8, 16(x27)	# 2218
	lw		x9, 12(x27)	# 2218
	lw		x10, 8(x27)	# 2218
	lw		x11, 4(x27)	# 2218
	addi	x12, x7, 632	# 2218
	addi	x13, x0, 4	# 2218
	mul		x13, x10, x13	# 2218
	add		x12, x12, x13	# 2218
	flw		f1, 0(x12)	# 2218
	addi	x12, x7, 624	# 2218
	addi	x13, x0, 4	# 2218
	mul		x13, x11, x13	# 2218
	add		x12, x12, x13	# 2218
	lw		x12, 0(x12)	# 2218
	sub		x5, x5, x12	# 2218
	sw		x6, 0(x2)	# 2218
	sw		x4, -4(x2)	# 2218
	sw		x8, -8(x2)	# 2218
	sw		x9, -12(x2)	# 2218
	sw		x11, -16(x2)	# 2218
	sw		x10, -20(x2)	# 2218
	fsw		f1, -24(x2)	# 2218
	addi	x4, x5, 0
	sw		x1, -28(x2)	# 2218
	addi	x2, x2, -32	# 2218
	jal		x1, float_of_int.2489.8537	# 2218
	addi	x2, x2, 32	# 2218
	lw		x1, -28(x2)	# 2218
	flw		f2, -24(x2)	# 2218
	fmul	f1, f2, f1	# 2218
	addi	x4, x7, 672	# 2221
	addi	x5, x0, 4	# 2221
	lw		x6, -20(x2)	# 2221
	mul		x5, x6, x5	# 2221
	add		x4, x4, x5	# 2221
	flw		f2, 0(x4)	# 2221
	fmul	f2, f1, f2	# 2221
	addi	x4, x7, 684	# 2221
	addi	x5, x0, 4	# 2221
	mul		x5, x6, x5	# 2221
	add		x4, x4, x5	# 2221
	flw		f3, 0(x4)	# 2221
	fadd	f2, f2, f3	# 2221
	addi	x4, x7, 672	# 2222
	addi	x5, x0, 4	# 2222
	lw		x8, -16(x2)	# 2222
	mul		x5, x8, x5	# 2222
	add		x4, x4, x5	# 2222
	flw		f3, 0(x4)	# 2222
	fmul	f3, f1, f3	# 2222
	addi	x4, x7, 684	# 2222
	addi	x5, x0, 4	# 2222
	mul		x5, x8, x5	# 2222
	add		x4, x4, x5	# 2222
	flw		f4, 0(x4)	# 2222
	fadd	f3, f3, f4	# 2222
	addi	x4, x7, 672	# 2223
	addi	x5, x0, 4	# 2223
	lw		x9, -12(x2)	# 2223
	mul		x5, x9, x5	# 2223
	add		x4, x4, x5	# 2223
	flw		f4, 0(x4)	# 2223
	fmul	f1, f1, f4	# 2223
	addi	x4, x7, 684	# 2223
	addi	x5, x0, 4	# 2223
	mul		x5, x9, x5	# 2223
	add		x4, x4, x5	# 2223
	flw		f4, 0(x4)	# 2223
	fadd	f1, f1, f4	# 2223
	addi	x4, x7, 616	# 2224
	addi	x5, x0, 4	# 2224
	mul		x5, x6, x5	# 2224
	add		x4, x4, x5	# 2224
	lw		x4, 0(x4)	# 2224
	sub		x5, x4, x8	# 2224
	lw		x4, -4(x2)	# 2224
	lw		x6, 0(x2)	# 2224
	lw		x27, -8(x2)	# 2224
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	lw		x31, 0(x27)	# 2224
	jalr	x0, x31, 0	# 2224
scan_pixel.2947.8991:
	lw		x11, 28(x27)	# 2234
	lw		x12, 24(x27)	# 2234
	lw		x13, 20(x27)	# 2234
	lw		x14, 16(x27)	# 2234
	lw		x15, 12(x27)	# 2234
	lw		x16, 8(x27)	# 2234
	lw		x17, 4(x27)	# 2234
	addi	x18, x7, 616	# 2234
	addi	x19, x0, 4	# 2234
	mul		x19, x16, x19	# 2234
	add		x18, x18, x19	# 2234
	lw		x18, 0(x18)	# 2234
	ble		x18, x4, ble.18494	# 2234
	addi	x18, x0, 4	# 2237
	mul		x18, x4, x18	# 2237
	add		x18, x8, x18	# 2237
	lw		x18, 0(x18)	# 2237
	lw		x18, 0(x18)	# 562
	addi	x19, x7, 604	# 2237
	sw		x27, 0(x2)	# 2237
	sw		x17, -4(x2)	# 2237
	sw		x10, -8(x2)	# 2237
	sw		x11, -12(x2)	# 2237
	sw		x6, -16(x2)	# 2237
	sw		x13, -20(x2)	# 2237
	sw		x15, -24(x2)	# 2237
	sw		x8, -28(x2)	# 2237
	sw		x16, -32(x2)	# 2237
	sw		x9, -36(x2)	# 2237
	sw		x5, -40(x2)	# 2237
	sw		x4, -44(x2)	# 2237
	sw		x14, -48(x2)	# 2237
	addi	x5, x18, 0
	addi	x4, x19, 0
	addi	x27, x12, 0
	sw		x1, -52(x2)	# 2237
	addi	x2, x2, -56	# 2237
	lw		x31, 0(x27)	# 2237
	jalr	x1, x31, 0	# 2237
	addi	x2, x2, 56	# 2237
	lw		x1, -52(x2)	# 2237
	lw		x4, -44(x2)	# 2240
	lw		x5, -40(x2)	# 2240
	lw		x6, -36(x2)	# 2240
	lw		x27, -48(x2)	# 2240
	sw		x1, -52(x2)	# 2240
	addi	x2, x2, -56	# 2240
	lw		x31, 0(x27)	# 2240
	jalr	x1, x31, 0	# 2240
	addi	x2, x2, 56	# 2240
	lw		x1, -52(x2)	# 2240
	lw		x5, -32(x2)	# 2240
	beq		x4, x5, beq.18496	# 2240
	addi	x10, x0, 0	# 2241
	lw		x4, -44(x2)	# 2241
	lw		x5, -40(x2)	# 2241
	lw		x6, -16(x2)	# 2241
	lw		x8, -28(x2)	# 2241
	lw		x9, -36(x2)	# 2241
	lw		x27, -20(x2)	# 2241
	sw		x1, -52(x2)	# 2241
	addi	x2, x2, -56	# 2241
	lw		x31, 0(x27)	# 2241
	jalr	x1, x31, 0	# 2241
	addi	x2, x2, 56	# 2241
	lw		x1, -52(x2)	# 2241
	jal		x0, beq_cont.18495	# 2240
beq.18496:
	addi	x4, x0, 4	# 2243
	lw		x5, -44(x2)	# 2243
	mul		x4, x5, x4	# 2243
	lw		x6, -28(x2)	# 2243
	add		x4, x6, x4	# 2243
	lw		x4, 0(x4)	# 2243
	addi	x8, x0, 0	# 2243
	lw		x27, -24(x2)	# 2243
	addi	x5, x8, 0
	sw		x1, -52(x2)	# 2243
	addi	x2, x2, -56	# 2243
	lw		x31, 0(x27)	# 2243
	jalr	x1, x31, 0	# 2243
	addi	x2, x2, 56	# 2243
	lw		x1, -52(x2)	# 2243
beq_cont.18495:
	lw		x4, -8(x2)	# 2246
	lw		x27, -12(x2)	# 2246
	sw		x1, -52(x2)	# 2246
	addi	x2, x2, -56	# 2246
	lw		x31, 0(x27)	# 2246
	jalr	x1, x31, 0	# 2246
	addi	x2, x2, 56	# 2246
	lw		x1, -52(x2)	# 2246
	lw		x4, -4(x2)	# 2248
	lw		x5, -44(x2)	# 2248
	add		x4, x5, x4	# 2248
	lw		x5, -40(x2)	# 2248
	lw		x6, -16(x2)	# 2248
	lw		x8, -28(x2)	# 2248
	lw		x9, -36(x2)	# 2248
	lw		x10, -8(x2)	# 2248
	lw		x27, 0(x2)	# 2248
	lw		x31, 0(x27)	# 2248
	jalr	x0, x31, 0	# 2248
ble.18494:
	jalr	x0, x1, 0	# 2249
scan_line.2954.8998:
	lw		x11, 24(x27)	# 2255
	lw		x12, 20(x27)	# 2255
	lw		x13, 16(x27)	# 2255
	lw		x14, 12(x27)	# 2255
	lw		x15, 8(x27)	# 2255
	lw		x16, 4(x27)	# 2255
	addi	x17, x7, 616	# 2255
	addi	x18, x0, 4	# 2255
	mul		x18, x16, x18	# 2255
	add		x17, x17, x18	# 2255
	lw		x17, 0(x17)	# 2255
	ble		x17, x4, ble.18498	# 2255
	sub		x17, x17, x16	# 2257
	sw		x27, 0(x2)	# 2257
	sw		x13, -4(x2)	# 2257
	sw		x14, -8(x2)	# 2257
	sw		x9, -12(x2)	# 2257
	sw		x16, -16(x2)	# 2257
	sw		x10, -20(x2)	# 2257
	sw		x8, -24(x2)	# 2257
	sw		x6, -28(x2)	# 2257
	sw		x5, -32(x2)	# 2257
	sw		x4, -36(x2)	# 2257
	sw		x15, -40(x2)	# 2257
	sw		x11, -44(x2)	# 2257
	ble		x17, x4, ble_cont.18499	# 2257
	addi	x17, x4, 1	# 2258
	addi	x6, x9, 0
	addi	x5, x17, 0
	addi	x4, x8, 0
	addi	x27, x12, 0
	sw		x1, -48(x2)	# 2258
	addi	x2, x2, -52	# 2258
	lw		x31, 0(x27)	# 2258
	jalr	x1, x31, 0	# 2258
	addi	x2, x2, 52	# 2258
	lw		x1, -48(x2)	# 2258
ble_cont.18499:
	lw		x4, -40(x2)	# 2260
	lw		x5, -36(x2)	# 2260
	lw		x6, -32(x2)	# 2260
	lw		x8, -28(x2)	# 2260
	lw		x9, -24(x2)	# 2260
	lw		x10, -20(x2)	# 2260
	lw		x27, -44(x2)	# 2260
	sw		x1, -48(x2)	# 2260
	addi	x2, x2, -52	# 2260
	lw		x31, 0(x27)	# 2260
	jalr	x1, x31, 0	# 2260
	addi	x2, x2, 52	# 2260
	lw		x1, -48(x2)	# 2260
	lw		x4, -16(x2)	# 2261
	lw		x5, -36(x2)	# 2261
	add		x4, x5, x4	# 2261
	lw		x5, -8(x2)	# 224
	lw		x6, -12(x2)	# 224
	add		x5, x6, x5	# 224
	lw		x6, -4(x2)	# 225
	ble		x6, x5, ble.18501	# 225
	addi	x9, x5, 0	# 225
	jal		x0, ble_cont.18500	# 225
ble.18501:
	sub		x9, x5, x6	# 225
ble_cont.18500:
	lw		x5, -28(x2)	# 2261
	lw		x6, -24(x2)	# 2261
	lw		x8, -32(x2)	# 2261
	lw		x10, -20(x2)	# 2261
	lw		x27, 0(x2)	# 2261
	lw		x31, 0(x27)	# 2261
	jalr	x0, x31, 0	# 2261
ble.18498:
	jalr	x0, x1, 0	# 2262
create_float5x3array.2961.9005:
	lw		x4, 20(x27)	# 2272
	lw		x5, 16(x27)	# 2272
	lw		x6, 12(x27)	# 2272
	lw		x8, 8(x27)	# 2272
	flw		f1, 4(x27)	# 2272
	sw		x5, 0(x2)	# 2272
	sw		x8, -4(x2)	# 2272
	fsw		f1, -8(x2)	# 2272
	sw		x6, -12(x2)	# 2272
	sw		x4, -16(x2)	# 2272
	addi	x4, x6, 0
	sw		x1, -20(x2)	# 2272
	addi	x2, x2, -24	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 24	# 2272
	lw		x1, -20(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -16(x2)	# 2273
	sw		x1, -20(x2)	# 2273
	addi	x2, x2, -24	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 24	# 2273
	lw		x1, -20(x2)	# 2273
	flw		f1, -8(x2)	# 2274
	lw		x5, -12(x2)	# 2274
	sw		x4, -20(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -24(x2)	# 2274
	addi	x2, x2, -28	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 28	# 2274
	lw		x1, -24(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -4(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x6, -20(x2)	# 2274
	add		x5, x6, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -8(x2)	# 2275
	lw		x4, -12(x2)	# 2275
	sw		x1, -24(x2)	# 2275
	addi	x2, x2, -28	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 28	# 2275
	lw		x1, -24(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, 0(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x6, -20(x2)	# 2275
	add		x5, x6, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x4, -12(x2)	# 2276
	sw		x1, -24(x2)	# 2276
	addi	x2, x2, -28	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 28	# 2276
	lw		x1, -24(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -12(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x8, -20(x2)	# 2276
	add		x5, x8, x5	# 2276
	sw		x4, 0(x5)	# 2276
	addi	x4, x0, 4	# 2277
	flw		f1, -8(x2)	# 2277
	sw		x4, -24(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -28(x2)	# 2277
	addi	x2, x2, -32	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 32	# 2277
	lw		x1, -28(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -24(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x6, -20(x2)	# 2277
	add		x5, x6, x5	# 2277
	sw		x4, 0(x5)	# 2277
	addi	x4, x6, 0	# 2278
	jalr	x0, x1, 0	# 2278
create_pixel.2963.9007:
	lw		x4, 24(x27)	# 2284
	lw		x5, 20(x27)	# 2284
	lw		x6, 16(x27)	# 2284
	lw		x8, 12(x27)	# 2284
	lw		x9, 8(x27)	# 2284
	flw		f1, 4(x27)	# 2284
	sw		x9, 0(x2)	# 2284
	sw		x8, -4(x2)	# 2284
	sw		x5, -8(x2)	# 2284
	sw		x4, -12(x2)	# 2284
	addi	x4, x6, 0
	sw		x1, -16(x2)	# 2284
	addi	x2, x2, -20	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 20	# 2284
	lw		x1, -16(x2)	# 2284
	lw		x27, -12(x2)	# 2285
	sw		x4, -16(x2)	# 2285
	sw		x1, -20(x2)	# 2285
	addi	x2, x2, -24	# 2285
	lw		x31, 0(x27)	# 2285
	jalr	x1, x31, 0	# 2285
	addi	x2, x2, 24	# 2285
	lw		x1, -20(x2)	# 2285
	lw		x5, -8(x2)	# 2286
	lw		x6, -4(x2)	# 2286
	sw		x4, -20(x2)	# 2286
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -24(x2)	# 2286
	addi	x2, x2, -28	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 28	# 2286
	lw		x1, -24(x2)	# 2286
	lw		x5, -8(x2)	# 2287
	lw		x6, -4(x2)	# 2287
	sw		x4, -24(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -28(x2)	# 2287
	addi	x2, x2, -32	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 32	# 2287
	lw		x1, -28(x2)	# 2287
	lw		x27, -12(x2)	# 2288
	sw		x4, -28(x2)	# 2288
	sw		x1, -32(x2)	# 2288
	addi	x2, x2, -36	# 2288
	lw		x31, 0(x27)	# 2288
	jalr	x1, x31, 0	# 2288
	addi	x2, x2, 36	# 2288
	lw		x1, -32(x2)	# 2288
	lw		x27, -12(x2)	# 2289
	sw		x4, -32(x2)	# 2289
	sw		x1, -36(x2)	# 2289
	addi	x2, x2, -40	# 2289
	lw		x31, 0(x27)	# 2289
	jalr	x1, x31, 0	# 2289
	addi	x2, x2, 40	# 2289
	lw		x1, -36(x2)	# 2289
	lw		x5, 0(x2)	# 2290
	lw		x6, -4(x2)	# 2290
	sw		x4, -36(x2)	# 2290
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -40(x2)	# 2290
	addi	x2, x2, -44	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 44	# 2290
	lw		x1, -40(x2)	# 2290
	lw		x27, -12(x2)	# 2291
	sw		x4, -40(x2)	# 2291
	sw		x1, -44(x2)	# 2291
	addi	x2, x2, -48	# 2291
	lw		x31, 0(x27)	# 2291
	jalr	x1, x31, 0	# 2291
	addi	x2, x2, 48	# 2291
	lw		x1, -44(x2)	# 2291
	addi	x5, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x4, 28(x5)	# 2292
	lw		x4, -40(x2)	# 2292
	sw		x4, 24(x5)	# 2292
	lw		x4, -36(x2)	# 2292
	sw		x4, 20(x5)	# 2292
	lw		x4, -32(x2)	# 2292
	sw		x4, 16(x5)	# 2292
	lw		x4, -28(x2)	# 2292
	sw		x4, 12(x5)	# 2292
	lw		x4, -24(x2)	# 2292
	sw		x4, 8(x5)	# 2292
	lw		x4, -20(x2)	# 2292
	sw		x4, 4(x5)	# 2292
	lw		x4, -16(x2)	# 2292
	sw		x4, 0(x5)	# 2292
	addi	x4, x5, 0	# 2292
	jalr	x0, x1, 0	# 2292
init_line_elements.2965.9009:
	lw		x6, 12(x27)	# 2297
	lw		x8, 8(x27)	# 2297
	lw		x9, 4(x27)	# 2297
	ble		x8, x5, ble.18503	# 2297
	jalr	x0, x1, 0	# 2301
ble.18503:
	sw		x27, 0(x2)	# 2298
	sw		x9, -4(x2)	# 2298
	sw		x4, -8(x2)	# 2298
	sw		x5, -12(x2)	# 2298
	addi	x27, x6, 0
	sw		x1, -16(x2)	# 2298
	addi	x2, x2, -20	# 2298
	lw		x31, 0(x27)	# 2298
	jalr	x1, x31, 0	# 2298
	addi	x2, x2, 20	# 2298
	lw		x1, -16(x2)	# 2298
	addi	x5, x0, 4	# 2298
	lw		x6, -12(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x8, -8(x2)	# 2298
	add		x5, x8, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -4(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x27, 0(x2)	# 2299
	addi	x4, x8, 0
	lw		x31, 0(x27)	# 2299
	jalr	x0, x31, 0	# 2299
create_pixelline.2968.9012:
	lw		x4, 16(x27)	# 2306
	lw		x5, 12(x27)	# 2306
	lw		x6, 8(x27)	# 2306
	lw		x8, 4(x27)	# 2306
	addi	x9, x7, 616	# 2306
	addi	x10, x0, 4	# 2306
	mul		x10, x8, x10	# 2306
	add		x9, x9, x10	# 2306
	lw		x9, 0(x9)	# 2306
	sw		x4, 0(x2)	# 2306
	sw		x6, -4(x2)	# 2306
	sw		x8, -8(x2)	# 2306
	sw		x9, -12(x2)	# 2306
	addi	x27, x5, 0
	sw		x1, -16(x2)	# 2306
	addi	x2, x2, -20	# 2306
	lw		x31, 0(x27)	# 2306
	jalr	x1, x31, 0	# 2306
	addi	x2, x2, 20	# 2306
	lw		x1, -16(x2)	# 2306
	addi	x5, x4, 0	# 2306
	lw		x4, -12(x2)	# 2306
	sw		x1, -16(x2)	# 2306
	addi	x2, x2, -20	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 20	# 2306
	lw		x1, -16(x2)	# 2306
	addi	x5, x7, 616	# 2307
	addi	x6, x0, 4	# 2307
	lw		x8, -8(x2)	# 2307
	mul		x6, x8, x6	# 2307
	add		x5, x5, x6	# 2307
	lw		x5, 0(x5)	# 2307
	lw		x6, -4(x2)	# 2307
	sub		x5, x5, x6	# 2307
	lw		x27, 0(x2)	# 2307
	lw		x31, 0(x27)	# 2307
	jalr	x0, x31, 0	# 2307
adjust_position.2972.9014:
	lw		x4, 12(x27)	# 2325
	lw		x5, 8(x27)	# 2325
	lw		x27, 4(x27)	# 2325
	fmul	f1, f1, f1	# 2325
	fadd	f3, f0, f20	# 2325
	fadd	f1, f1, f3	# 2325
	fsqrt	f1, f1	# 2325
	fadd	f3, f0, f16	# 2326
	fdiv	f3, f3, f1	# 2326
	fsw		f1, 0(x2)	# 2327
	sw		x5, -4(x2)	# 2327
	sw		x4, -8(x2)	# 2327
	fsw		f2, -12(x2)	# 2327
	fadd	f1, f0, f3
	sw		x1, -16(x2)	# 2327
	addi	x2, x2, -20	# 2327
	lw		x31, 0(x27)	# 2327
	jalr	x1, x31, 0	# 2327
	addi	x2, x2, 20	# 2327
	lw		x1, -16(x2)	# 2327
	flw		f2, -12(x2)	# 2328
	fmul	f1, f1, f2	# 2328
	lw		x27, -8(x2)	# 2320
	fsw		f1, -16(x2)	# 2320
	sw		x1, -20(x2)	# 2320
	addi	x2, x2, -24	# 2320
	lw		x31, 0(x27)	# 2320
	jalr	x1, x31, 0	# 2320
	addi	x2, x2, 24	# 2320
	lw		x1, -20(x2)	# 2320
	flw		f2, -16(x2)	# 2320
	lw		x27, -4(x2)	# 2320
	fsw		f1, -20(x2)	# 2320
	fadd	f1, f0, f2
	sw		x1, -24(x2)	# 2320
	addi	x2, x2, -28	# 2320
	lw		x31, 0(x27)	# 2320
	jalr	x1, x31, 0	# 2320
	addi	x2, x2, 28	# 2320
	lw		x1, -24(x2)	# 2320
	flw		f2, -20(x2)	# 2320
	fdiv	f1, f2, f1	# 2320
	flw		f2, 0(x2)	# 2329
	fmul	f1, f1, f2	# 2329
	jalr	x0, x1, 0	# 2329
calc_dirvec.2975.9017:
	lw		x8, 20(x27)	# 2334
	lw		x9, 16(x27)	# 2334
	lw		x10, 12(x27)	# 2334
	lw		x11, 8(x27)	# 2334
	lw		x12, 4(x27)	# 2334
	ble		x9, x4, ble.18504	# 2334
	fsw		f3, 0(x2)	# 2349
	sw		x6, -4(x2)	# 2349
	sw		x5, -8(x2)	# 2349
	sw		x27, -12(x2)	# 2349
	fsw		f4, -16(x2)	# 2349
	sw		x8, -20(x2)	# 2349
	sw		x12, -24(x2)	# 2349
	sw		x4, -28(x2)	# 2349
	addi	x27, x8, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	sw		x1, -32(x2)	# 2349
	addi	x2, x2, -36	# 2349
	lw		x31, 0(x27)	# 2349
	jalr	x1, x31, 0	# 2349
	addi	x2, x2, 36	# 2349
	lw		x1, -32(x2)	# 2349
	lw		x4, -24(x2)	# 2350
	lw		x5, -28(x2)	# 2350
	add		x4, x5, x4	# 2350
	flw		f2, -16(x2)	# 2350
	lw		x27, -20(x2)	# 2350
	fsw		f1, -32(x2)	# 2350
	sw		x4, -36(x2)	# 2350
	sw		x1, -40(x2)	# 2350
	addi	x2, x2, -44	# 2350
	lw		x31, 0(x27)	# 2350
	jalr	x1, x31, 0	# 2350
	addi	x2, x2, 44	# 2350
	lw		x1, -40(x2)	# 2350
	fadd	f2, f0, f1	# 2350
	flw		f1, -32(x2)	# 2350
	flw		f3, 0(x2)	# 2350
	flw		f4, -16(x2)	# 2350
	lw		x4, -36(x2)	# 2350
	lw		x5, -8(x2)	# 2350
	lw		x6, -4(x2)	# 2350
	lw		x27, -12(x2)	# 2350
	lw		x31, 0(x27)	# 2350
	jalr	x0, x31, 0	# 2350
ble.18504:
	fmul	f3, f1, f1	# 8
	fmul	f4, f2, f2	# 8
	fadd	f3, f3, f4	# 2335
	fadd	f4, f0, f16	# 2335
	fadd	f3, f3, f4	# 2335
	fsqrt	f3, f3	# 2335
	fdiv	f1, f1, f3	# 2336
	fdiv	f2, f2, f3	# 2337
	fdiv	f3, f4, f3	# 2338
	addi	x4, x7, 716	# 2341
	addi	x8, x0, 4	# 2341
	mul		x5, x5, x8	# 2341
	add		x4, x4, x5	# 2341
	lw		x4, 0(x4)	# 2341
	addi	x5, x0, 4	# 2342
	mul		x5, x6, x5	# 2342
	add		x5, x4, x5	# 2342
	lw		x5, 0(x5)	# 2342
	lw		x5, 0(x5)	# 639
	addi	x8, x0, 4	# 240
	mul		x8, x11, x8	# 240
	add		x8, x5, x8	# 240
	fsw		f1, 0(x8)	# 240
	addi	x8, x0, 4	# 241
	mul		x8, x12, x8	# 241
	add		x8, x5, x8	# 241
	fsw		f2, 0(x8)	# 241
	addi	x8, x0, 4	# 242
	mul		x8, x10, x8	# 242
	add		x5, x5, x8	# 242
	fsw		f3, 0(x5)	# 242
	addi	x5, x6, 40	# 2343
	addi	x8, x0, 4	# 2343
	mul		x5, x5, x8	# 2343
	add		x5, x4, x5	# 2343
	lw		x5, 0(x5)	# 2343
	lw		x5, 0(x5)	# 639
	fsub	f4, f0, f2	# 4
	addi	x8, x0, 4	# 240
	mul		x8, x11, x8	# 240
	add		x8, x5, x8	# 240
	fsw		f1, 0(x8)	# 240
	addi	x8, x0, 4	# 241
	mul		x8, x12, x8	# 241
	add		x8, x5, x8	# 241
	fsw		f3, 0(x8)	# 241
	addi	x8, x0, 4	# 242
	mul		x8, x10, x8	# 242
	add		x5, x5, x8	# 242
	fsw		f4, 0(x5)	# 242
	addi	x5, x6, 80	# 2344
	addi	x8, x0, 4	# 2344
	mul		x5, x5, x8	# 2344
	add		x5, x4, x5	# 2344
	lw		x5, 0(x5)	# 2344
	lw		x5, 0(x5)	# 639
	fsub	f5, f0, f1	# 4
	addi	x8, x0, 4	# 240
	mul		x8, x11, x8	# 240
	add		x8, x5, x8	# 240
	fsw		f3, 0(x8)	# 240
	addi	x8, x0, 4	# 241
	mul		x8, x12, x8	# 241
	add		x8, x5, x8	# 241
	fsw		f5, 0(x8)	# 241
	addi	x8, x0, 4	# 242
	mul		x8, x10, x8	# 242
	add		x5, x5, x8	# 242
	fsw		f4, 0(x5)	# 242
	add		x5, x6, x12	# 2345
	addi	x8, x0, 4	# 2345
	mul		x5, x5, x8	# 2345
	add		x5, x4, x5	# 2345
	lw		x5, 0(x5)	# 2345
	lw		x5, 0(x5)	# 639
	fsub	f3, f0, f3	# 4
	addi	x8, x0, 4	# 240
	mul		x8, x11, x8	# 240
	add		x8, x5, x8	# 240
	fsw		f5, 0(x8)	# 240
	addi	x8, x0, 4	# 241
	mul		x8, x12, x8	# 241
	add		x8, x5, x8	# 241
	fsw		f4, 0(x8)	# 241
	addi	x8, x0, 4	# 242
	mul		x8, x10, x8	# 242
	add		x5, x5, x8	# 242
	fsw		f3, 0(x5)	# 242
	addi	x5, x6, 41	# 2346
	addi	x8, x0, 4	# 2346
	mul		x5, x5, x8	# 2346
	add		x5, x4, x5	# 2346
	lw		x5, 0(x5)	# 2346
	lw		x5, 0(x5)	# 639
	addi	x8, x0, 4	# 240
	mul		x8, x11, x8	# 240
	add		x8, x5, x8	# 240
	fsw		f5, 0(x8)	# 240
	addi	x8, x0, 4	# 241
	mul		x8, x12, x8	# 241
	add		x8, x5, x8	# 241
	fsw		f3, 0(x8)	# 241
	addi	x8, x0, 4	# 242
	mul		x8, x10, x8	# 242
	add		x5, x5, x8	# 242
	fsw		f2, 0(x5)	# 242
	addi	x5, x6, 81	# 2347
	addi	x6, x0, 4	# 2347
	mul		x5, x5, x6	# 2347
	add		x4, x4, x5	# 2347
	lw		x4, 0(x4)	# 2347
	lw		x4, 0(x4)	# 639
	addi	x5, x0, 4	# 240
	mul		x5, x11, x5	# 240
	add		x5, x4, x5	# 240
	fsw		f3, 0(x5)	# 240
	addi	x5, x0, 4	# 241
	mul		x5, x12, x5	# 241
	add		x5, x4, x5	# 241
	fsw		f1, 0(x5)	# 241
	addi	x5, x0, 4	# 242
	mul		x5, x10, x5	# 242
	add		x4, x4, x5	# 242
	fsw		f2, 0(x4)	# 242
	jalr	x0, x1, 0	# 242
calc_dirvecs.2983.9025:
	lw		x8, 24(x27)	# 2355
	lw		x9, 20(x27)	# 2355
	lw		x10, 16(x27)	# 2355
	lw		x11, 12(x27)	# 2355
	lw		x12, 8(x27)	# 2355
	flw		f2, 4(x27)	# 2355
	ble		x11, x4, ble.18506	# 2355
	jalr	x0, x1, 0	# 2364
ble.18506:
	sw		x27, 0(x2)	# 2357
	sw		x9, -4(x2)	# 2357
	sw		x12, -8(x2)	# 2357
	sw		x10, -12(x2)	# 2357
	sw		x4, -16(x2)	# 2357
	fsw		f1, -20(x2)	# 2357
	fsw		f2, -24(x2)	# 2357
	sw		x6, -28(x2)	# 2357
	sw		x5, -32(x2)	# 2357
	sw		x11, -36(x2)	# 2357
	sw		x8, -40(x2)	# 2357
	sw		x1, -44(x2)	# 2357
	addi	x2, x2, -48	# 2357
	jal		x1, float_of_int.2489.8537	# 2357
	addi	x2, x2, 48	# 2357
	lw		x1, -44(x2)	# 2357
	fadd	f2, f0, f19	# 2357
	fmul	f1, f1, f2	# 2357
	fadd	f3, f0, f30	# 2357
	fsub	f3, f1, f3	# 2357
	flw		f1, -24(x2)	# 2358
	flw		f4, -20(x2)	# 2358
	lw		x4, -36(x2)	# 2358
	lw		x5, -32(x2)	# 2358
	lw		x6, -28(x2)	# 2358
	lw		x27, -40(x2)	# 2358
	fsw		f2, -44(x2)	# 2358
	fadd	f2, f0, f1
	sw		x1, -48(x2)	# 2358
	addi	x2, x2, -52	# 2358
	lw		x31, 0(x27)	# 2358
	jalr	x1, x31, 0	# 2358
	addi	x2, x2, 52	# 2358
	lw		x1, -48(x2)	# 2358
	lw		x4, -16(x2)	# 2360
	sw		x1, -48(x2)	# 2360
	addi	x2, x2, -52	# 2360
	jal		x1, float_of_int.2489.8537	# 2360
	addi	x2, x2, 52	# 2360
	lw		x1, -48(x2)	# 2360
	flw		f2, -44(x2)	# 2360
	fmul	f1, f1, f2	# 2360
	fadd	f2, f0, f20	# 2360
	fadd	f3, f1, f2	# 2360
	lw		x4, -12(x2)	# 2361
	lw		x5, -28(x2)	# 2361
	add		x6, x5, x4	# 2361
	flw		f1, -24(x2)	# 2361
	flw		f4, -20(x2)	# 2361
	lw		x4, -36(x2)	# 2361
	lw		x8, -32(x2)	# 2361
	lw		x27, -40(x2)	# 2361
	addi	x5, x8, 0
	fadd	f2, f0, f1
	sw		x1, -48(x2)	# 2361
	addi	x2, x2, -52	# 2361
	lw		x31, 0(x27)	# 2361
	jalr	x1, x31, 0	# 2361
	addi	x2, x2, 52	# 2361
	lw		x1, -48(x2)	# 2361
	lw		x4, -8(x2)	# 2363
	lw		x5, -16(x2)	# 2363
	sub		x5, x5, x4	# 2363
	lw		x6, -32(x2)	# 224
	add		x4, x6, x4	# 224
	lw		x6, -4(x2)	# 225
	ble		x6, x4, ble.18509	# 225
	jal		x0, ble_cont.18508	# 225
ble.18509:
	sub		x4, x4, x6	# 225
ble_cont.18508:
	flw		f1, -20(x2)	# 2363
	lw		x6, -28(x2)	# 2363
	lw		x27, 0(x2)	# 2363
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	lw		x31, 0(x27)	# 2363
	jalr	x0, x31, 0	# 2363
calc_dirvec_rows.2988.9030:
	lw		x8, 20(x27)	# 2369
	lw		x9, 16(x27)	# 2369
	lw		x10, 12(x27)	# 2369
	lw		x11, 8(x27)	# 2369
	lw		x12, 4(x27)	# 2369
	ble		x11, x4, ble.18510	# 2369
	jalr	x0, x1, 0	# 2373
ble.18510:
	sw		x27, 0(x2)	# 2370
	sw		x9, -4(x2)	# 2370
	sw		x10, -8(x2)	# 2370
	sw		x12, -12(x2)	# 2370
	sw		x4, -16(x2)	# 2370
	sw		x6, -20(x2)	# 2370
	sw		x5, -24(x2)	# 2370
	sw		x8, -28(x2)	# 2370
	sw		x1, -32(x2)	# 2370
	addi	x2, x2, -36	# 2370
	jal		x1, float_of_int.2489.8537	# 2370
	addi	x2, x2, 36	# 2370
	lw		x1, -32(x2)	# 2370
	fadd	f2, f0, f19	# 2370
	fmul	f1, f1, f2	# 2370
	fadd	f2, f0, f30	# 2370
	fsub	f1, f1, f2	# 2370
	addi	x4, x0, 4	# 2371
	lw		x5, -24(x2)	# 2371
	lw		x6, -20(x2)	# 2371
	lw		x27, -28(x2)	# 2371
	sw		x1, -32(x2)	# 2371
	addi	x2, x2, -36	# 2371
	lw		x31, 0(x27)	# 2371
	jalr	x1, x31, 0	# 2371
	addi	x2, x2, 36	# 2371
	lw		x1, -32(x2)	# 2371
	lw		x4, -12(x2)	# 2372
	lw		x5, -16(x2)	# 2372
	sub		x4, x5, x4	# 2372
	lw		x5, -8(x2)	# 224
	lw		x6, -24(x2)	# 224
	add		x5, x6, x5	# 224
	lw		x6, -4(x2)	# 225
	ble		x6, x5, ble.18513	# 225
	jal		x0, ble_cont.18512	# 225
ble.18513:
	sub		x5, x5, x6	# 225
ble_cont.18512:
	lw		x6, -20(x2)	# 2372
	addi	x6, x6, 4	# 2372
	lw		x27, 0(x2)	# 2372
	lw		x31, 0(x27)	# 2372
	jalr	x0, x31, 0	# 2372
create_dirvec_elements.2994.9034:
	lw		x6, 16(x27)	# 2388
	lw		x8, 12(x27)	# 2388
	lw		x9, 8(x27)	# 2388
	flw		f1, 4(x27)	# 2388
	ble		x8, x5, ble.18514	# 2388
	jalr	x0, x1, 0	# 2391
ble.18514:
	sw		x27, 0(x2)	# 2382
	sw		x9, -4(x2)	# 2382
	sw		x4, -8(x2)	# 2382
	sw		x5, -12(x2)	# 2382
	sw		x8, -16(x2)	# 2382
	addi	x4, x6, 0
	sw		x1, -20(x2)	# 2382
	addi	x2, x2, -24	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 24	# 2382
	lw		x1, -20(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x7, 0	# 2383
	addi	x6, x0, 4	# 2383
	lw		x8, -16(x2)	# 2383
	mul		x6, x8, x6	# 2383
	add		x4, x4, x6	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -20(x2)	# 2383
	sw		x1, -24(x2)	# 2383
	addi	x2, x2, -28	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 28	# 2383
	lw		x1, -24(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -20(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	addi	x5, x0, 4	# 2389
	lw		x6, -12(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x8, -8(x2)	# 2389
	add		x5, x8, x5	# 2389
	sw		x4, 0(x5)	# 2389
	lw		x4, -4(x2)	# 2390
	sub		x5, x6, x4	# 2390
	lw		x27, 0(x2)	# 2390
	addi	x4, x8, 0
	lw		x31, 0(x27)	# 2390
	jalr	x0, x31, 0	# 2390
create_dirvecs.2997.9037:
	lw		x5, 20(x27)	# 2395
	lw		x6, 16(x27)	# 2395
	lw		x8, 12(x27)	# 2395
	lw		x9, 8(x27)	# 2395
	flw		f1, 4(x27)	# 2395
	ble		x8, x4, ble.18516	# 2395
	jalr	x0, x1, 0	# 2399
ble.18516:
	addi	x10, x0, 120	# 2396
	sw		x27, 0(x2)	# 2382
	sw		x9, -4(x2)	# 2382
	sw		x5, -8(x2)	# 2382
	sw		x4, -12(x2)	# 2382
	sw		x10, -16(x2)	# 2382
	sw		x8, -20(x2)	# 2382
	addi	x4, x6, 0
	sw		x1, -24(x2)	# 2382
	addi	x2, x2, -28	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 28	# 2382
	lw		x1, -24(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x7, 0	# 2383
	addi	x6, x0, 4	# 2383
	lw		x8, -20(x2)	# 2383
	mul		x6, x8, x6	# 2383
	add		x4, x4, x6	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -24(x2)	# 2383
	sw		x1, -28(x2)	# 2383
	addi	x2, x2, -32	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 32	# 2383
	lw		x1, -28(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -24(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	lw		x4, -16(x2)	# 2396
	sw		x1, -28(x2)	# 2396
	addi	x2, x2, -32	# 2396
	jal		x1, min_caml_create_array	# 2396
	addi	x2, x2, 32	# 2396
	lw		x1, -28(x2)	# 2396
	addi	x5, x7, 716	# 2396
	addi	x6, x0, 4	# 2396
	lw		x8, -12(x2)	# 2396
	mul		x6, x8, x6	# 2396
	add		x5, x5, x6	# 2396
	sw		x4, 0(x5)	# 2396
	addi	x4, x7, 716	# 2397
	addi	x5, x0, 4	# 2397
	mul		x5, x8, x5	# 2397
	add		x4, x4, x5	# 2397
	lw		x4, 0(x4)	# 2397
	addi	x5, x0, 118	# 2397
	lw		x27, -8(x2)	# 2397
	sw		x1, -28(x2)	# 2397
	addi	x2, x2, -32	# 2397
	lw		x31, 0(x27)	# 2397
	jalr	x1, x31, 0	# 2397
	addi	x2, x2, 32	# 2397
	lw		x1, -28(x2)	# 2397
	lw		x4, -4(x2)	# 2398
	lw		x5, -12(x2)	# 2398
	sub		x4, x5, x4	# 2398
	lw		x27, 0(x2)	# 2398
	lw		x31, 0(x27)	# 2398
	jalr	x0, x31, 0	# 2398
init_dirvec_constants.2999.9039:
	lw		x6, 12(x27)	# 2407
	lw		x8, 8(x27)	# 2407
	lw		x9, 4(x27)	# 2407
	ble		x8, x5, ble.18518	# 2407
	jalr	x0, x1, 0	# 2410
ble.18518:
	addi	x10, x0, 4	# 2408
	mul		x10, x5, x10	# 2408
	add		x10, x4, x10	# 2408
	lw		x10, 0(x10)	# 2408
	addi	x11, x7, 0	# 1287
	addi	x12, x0, 4	# 1287
	mul		x8, x8, x12	# 1287
	add		x8, x11, x8	# 1287
	lw		x8, 0(x8)	# 1287
	sub		x8, x8, x9	# 1287
	sw		x4, 0(x2)	# 1287
	sw		x27, -4(x2)	# 1287
	sw		x9, -8(x2)	# 1287
	sw		x5, -12(x2)	# 1287
	addi	x5, x8, 0
	addi	x4, x10, 0
	addi	x27, x6, 0
	sw		x1, -16(x2)	# 1287
	addi	x2, x2, -20	# 1287
	lw		x31, 0(x27)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 20	# 1287
	lw		x1, -16(x2)	# 1287
	lw		x4, -8(x2)	# 2409
	lw		x5, -12(x2)	# 2409
	sub		x5, x5, x4	# 2409
	lw		x4, 0(x2)	# 2409
	lw		x27, -4(x2)	# 2409
	lw		x31, 0(x27)	# 2409
	jalr	x0, x31, 0	# 2409
init_vecset_constants.3002.9042:
	lw		x5, 12(x27)	# 2414
	lw		x6, 8(x27)	# 2414
	lw		x8, 4(x27)	# 2414
	ble		x6, x4, ble.18520	# 2414
	jalr	x0, x1, 0	# 2417
ble.18520:
	addi	x6, x7, 716	# 2415
	addi	x9, x0, 4	# 2415
	mul		x9, x4, x9	# 2415
	add		x6, x6, x9	# 2415
	lw		x6, 0(x6)	# 2415
	addi	x9, x0, 119	# 2415
	sw		x27, 0(x2)	# 2415
	sw		x8, -4(x2)	# 2415
	sw		x4, -8(x2)	# 2415
	addi	x4, x6, 0
	addi	x27, x5, 0
	addi	x5, x9, 0
	sw		x1, -12(x2)	# 2415
	addi	x2, x2, -16	# 2415
	lw		x31, 0(x27)	# 2415
	jalr	x1, x31, 0	# 2415
	addi	x2, x2, 16	# 2415
	lw		x1, -12(x2)	# 2415
	lw		x4, -4(x2)	# 2416
	lw		x5, -8(x2)	# 2416
	sub		x4, x5, x4	# 2416
	lw		x27, 0(x2)	# 2416
	lw		x31, 0(x27)	# 2416
	jalr	x0, x31, 0	# 2416
add_reflection.3006.9044:
	lw		x6, 24(x27)	# 2382
	lw		x8, 20(x27)	# 2382
	lw		x9, 16(x27)	# 2382
	lw		x10, 12(x27)	# 2382
	lw		x11, 8(x27)	# 2382
	flw		f5, 4(x27)	# 2382
	sw		x4, 0(x2)	# 2382
	sw		x5, -4(x2)	# 2382
	fsw		f1, -8(x2)	# 2382
	sw		x6, -12(x2)	# 2382
	fsw		f4, -16(x2)	# 2382
	sw		x8, -20(x2)	# 2382
	fsw		f3, -24(x2)	# 2382
	sw		x11, -28(x2)	# 2382
	fsw		f2, -32(x2)	# 2382
	sw		x10, -36(x2)	# 2382
	addi	x4, x9, 0
	fadd	f1, f0, f5
	sw		x1, -40(x2)	# 2382
	addi	x2, x2, -44	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 44	# 2382
	lw		x1, -40(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x7, 0	# 2383
	addi	x6, x0, 4	# 2383
	lw		x8, -36(x2)	# 2383
	mul		x6, x8, x6	# 2383
	add		x4, x4, x6	# 2383
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
	addi	x6, x0, 4	# 240
	lw		x8, -36(x2)	# 240
	mul		x6, x8, x6	# 240
	add		x6, x4, x6	# 240
	flw		f1, -32(x2)	# 240
	fsw		f1, 0(x6)	# 240
	addi	x6, x0, 4	# 241
	lw		x9, -28(x2)	# 241
	mul		x6, x9, x6	# 241
	add		x6, x4, x6	# 241
	flw		f1, -24(x2)	# 241
	fsw		f1, 0(x6)	# 241
	addi	x6, x0, 4	# 242
	lw		x10, -20(x2)	# 242
	mul		x6, x10, x6	# 242
	add		x4, x4, x6	# 242
	flw		f1, -16(x2)	# 242
	fsw		f1, 0(x4)	# 242
	addi	x4, x7, 0	# 1287
	addi	x6, x0, 4	# 1287
	mul		x6, x8, x6	# 1287
	add		x4, x4, x6	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x4, x4, x9	# 1287
	lw		x27, -12(x2)	# 1287
	sw		x5, -44(x2)	# 1287
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -48(x2)	# 1287
	addi	x2, x2, -52	# 1287
	lw		x31, 0(x27)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 52	# 1287
	lw		x1, -48(x2)	# 1287
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f1, -8(x2)	# 2436
	fsw		f1, 8(x4)	# 2436
	lw		x5, -44(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -4(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	addi	x5, x7, 1016	# 2436
	addi	x6, x0, 4	# 2436
	lw		x8, 0(x2)	# 2436
	mul		x6, x8, x6	# 2436
	add		x5, x5, x6	# 2436
	sw		x4, 0(x5)	# 2436
	jalr	x0, x1, 0	# 2436
setup_rect_reflection.3013.9051:
	lw		x6, 20(x27)	# 2441
	lw		x8, 16(x27)	# 2441
	lw		x9, 12(x27)	# 2441
	lw		x10, 8(x27)	# 2441
	lw		x11, 4(x27)	# 2441
	addi	x12, x0, 4	# 2441
	mul		x4, x4, x12	# 2441
	addi	x12, x7, 1736	# 2442
	addi	x13, x0, 4	# 2442
	mul		x13, x10, x13	# 2442
	add		x12, x12, x13	# 2442
	lw		x12, 0(x12)	# 2442
	fadd	f1, f0, f16	# 2443
	lw		x5, 28(x5)	# 461
	addi	x13, x0, 4	# 466
	mul		x13, x10, x13	# 466
	add		x5, x5, x13	# 466
	flw		f2, 0(x5)	# 466
	fsub	f1, f1, f2	# 2443
	addi	x5, x7, 312	# 2444
	addi	x13, x0, 4	# 2444
	mul		x13, x10, x13	# 2444
	add		x5, x5, x13	# 2444
	flw		f2, 0(x5)	# 2444
	fsub	f3, f0, f2	# 4
	addi	x5, x7, 312	# 2445
	addi	x13, x0, 4	# 2445
	mul		x13, x11, x13	# 2445
	add		x5, x5, x13	# 2445
	flw		f4, 0(x5)	# 2445
	fsub	f4, f0, f4	# 4
	addi	x5, x7, 312	# 2446
	addi	x13, x0, 4	# 2446
	mul		x13, x8, x13	# 2446
	add		x5, x5, x13	# 2446
	flw		f5, 0(x5)	# 2446
	fsub	f5, f0, f5	# 4
	add		x5, x4, x11	# 2447
	sw		x10, 0(x2)	# 2447
	fsw		f4, -4(x2)	# 2447
	sw		x9, -8(x2)	# 2447
	fsw		f5, -12(x2)	# 2447
	fsw		f3, -16(x2)	# 2447
	fsw		f1, -20(x2)	# 2447
	sw		x6, -24(x2)	# 2447
	sw		x8, -28(x2)	# 2447
	sw		x4, -32(x2)	# 2447
	sw		x11, -36(x2)	# 2447
	sw		x12, -40(x2)	# 2447
	addi	x4, x12, 0
	addi	x27, x6, 0
	fadd	f3, f0, f4
	fadd	f4, f0, f5
	sw		x1, -44(x2)	# 2447
	addi	x2, x2, -48	# 2447
	lw		x31, 0(x27)	# 2447
	jalr	x1, x31, 0	# 2447
	addi	x2, x2, 48	# 2447
	lw		x1, -44(x2)	# 2447
	lw		x4, -36(x2)	# 2448
	lw		x5, -40(x2)	# 2448
	add		x6, x5, x4	# 2448
	lw		x8, -28(x2)	# 2448
	lw		x9, -32(x2)	# 2448
	add		x10, x9, x8	# 2448
	addi	x11, x7, 312	# 2448
	addi	x12, x0, 4	# 2448
	mul		x4, x4, x12	# 2448
	add		x4, x11, x4	# 2448
	flw		f3, 0(x4)	# 2448
	flw		f1, -20(x2)	# 2448
	flw		f2, -16(x2)	# 2448
	flw		f4, -12(x2)	# 2448
	lw		x27, -24(x2)	# 2448
	addi	x5, x10, 0
	addi	x4, x6, 0
	sw		x1, -44(x2)	# 2448
	addi	x2, x2, -48	# 2448
	lw		x31, 0(x27)	# 2448
	jalr	x1, x31, 0	# 2448
	addi	x2, x2, 48	# 2448
	lw		x1, -44(x2)	# 2448
	lw		x4, -28(x2)	# 2449
	lw		x5, -40(x2)	# 2449
	add		x6, x5, x4	# 2449
	lw		x8, -8(x2)	# 2449
	lw		x9, -32(x2)	# 2449
	add		x9, x9, x8	# 2449
	addi	x10, x7, 312	# 2449
	addi	x11, x0, 4	# 2449
	mul		x4, x4, x11	# 2449
	add		x4, x10, x4	# 2449
	flw		f4, 0(x4)	# 2449
	flw		f1, -20(x2)	# 2449
	flw		f2, -16(x2)	# 2449
	flw		f3, -4(x2)	# 2449
	lw		x27, -24(x2)	# 2449
	addi	x5, x9, 0
	addi	x4, x6, 0
	sw		x1, -44(x2)	# 2449
	addi	x2, x2, -48	# 2449
	lw		x31, 0(x27)	# 2449
	jalr	x1, x31, 0	# 2449
	addi	x2, x2, 48	# 2449
	lw		x1, -44(x2)	# 2449
	lw		x4, -8(x2)	# 2450
	lw		x5, -40(x2)	# 2450
	add		x4, x5, x4	# 2450
	addi	x5, x7, 1736	# 2450
	addi	x6, x0, 4	# 2450
	lw		x8, 0(x2)	# 2450
	mul		x6, x8, x6	# 2450
	add		x5, x5, x6	# 2450
	sw		x4, 0(x5)	# 2450
	jalr	x0, x1, 0	# 2450
setup_surface_reflection.3016.9054:
	lw		x6, 20(x27)	# 2455
	lw		x8, 16(x27)	# 2455
	lw		x9, 12(x27)	# 2455
	lw		x10, 8(x27)	# 2455
	lw		x11, 4(x27)	# 2455
	addi	x12, x0, 4	# 2455
	mul		x4, x4, x12	# 2455
	add		x4, x4, x11	# 2455
	addi	x12, x7, 1736	# 2456
	addi	x13, x0, 4	# 2456
	mul		x13, x10, x13	# 2456
	add		x12, x12, x13	# 2456
	lw		x12, 0(x12)	# 2456
	fadd	f1, f0, f16	# 2457
	lw		x13, 28(x5)	# 461
	addi	x14, x0, 4	# 466
	mul		x14, x10, x14	# 466
	add		x13, x13, x14	# 466
	flw		f2, 0(x13)	# 466
	fsub	f1, f1, f2	# 2457
	lw		x13, 16(x5)	# 421
	addi	x14, x7, 312	# 2458
	fsw		f1, 0(x2)	# 2458
	sw		x4, -4(x2)	# 2458
	sw		x12, -8(x2)	# 2458
	sw		x8, -12(x2)	# 2458
	sw		x9, -16(x2)	# 2458
	sw		x11, -20(x2)	# 2458
	sw		x10, -24(x2)	# 2458
	sw		x5, -28(x2)	# 2458
	addi	x5, x13, 0
	addi	x4, x14, 0
	addi	x27, x6, 0
	sw		x1, -32(x2)	# 2458
	addi	x2, x2, -36	# 2458
	lw		x31, 0(x27)	# 2458
	jalr	x1, x31, 0	# 2458
	addi	x2, x2, 36	# 2458
	lw		x1, -32(x2)	# 2458
	fadd	f2, f0, f28	# 2461
	lw		x4, -28(x2)	# 391
	lw		x5, 16(x4)	# 391
	addi	x6, x0, 4	# 396
	lw		x8, -24(x2)	# 396
	mul		x6, x8, x6	# 396
	add		x5, x5, x6	# 396
	flw		f3, 0(x5)	# 396
	fmul	f3, f2, f3	# 2461
	fmul	f3, f3, f1	# 2461
	addi	x5, x7, 312	# 2461
	addi	x6, x0, 4	# 2461
	mul		x6, x8, x6	# 2461
	add		x5, x5, x6	# 2461
	flw		f4, 0(x5)	# 2461
	fsub	f3, f3, f4	# 2461
	lw		x5, 16(x4)	# 401
	addi	x6, x0, 4	# 406
	lw		x9, -20(x2)	# 406
	mul		x6, x9, x6	# 406
	add		x5, x5, x6	# 406
	flw		f4, 0(x5)	# 406
	fmul	f4, f2, f4	# 2462
	fmul	f4, f4, f1	# 2462
	addi	x5, x7, 312	# 2462
	addi	x6, x0, 4	# 2462
	mul		x6, x9, x6	# 2462
	add		x5, x5, x6	# 2462
	flw		f5, 0(x5)	# 2462
	fsub	f4, f4, f5	# 2462
	lw		x4, 16(x4)	# 411
	addi	x5, x0, 4	# 416
	lw		x6, -16(x2)	# 416
	mul		x5, x6, x5	# 416
	add		x4, x4, x5	# 416
	flw		f5, 0(x4)	# 416
	fmul	f2, f2, f5	# 2463
	fmul	f1, f2, f1	# 2463
	addi	x4, x7, 312	# 2463
	addi	x5, x0, 4	# 2463
	mul		x5, x6, x5	# 2463
	add		x4, x4, x5	# 2463
	flw		f2, 0(x4)	# 2463
	fsub	f1, f1, f2	# 2463
	flw		f2, 0(x2)	# 2460
	lw		x4, -8(x2)	# 2460
	lw		x5, -4(x2)	# 2460
	lw		x27, -12(x2)	# 2460
	fadd	f31, f0, f4
	fadd	f4, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f31
	sw		x1, -32(x2)	# 2460
	addi	x2, x2, -36	# 2460
	lw		x31, 0(x27)	# 2460
	jalr	x1, x31, 0	# 2460
	addi	x2, x2, 36	# 2460
	lw		x1, -32(x2)	# 2460
	lw		x4, -20(x2)	# 2464
	lw		x5, -8(x2)	# 2464
	add		x4, x5, x4	# 2464
	addi	x5, x7, 1736	# 2464
	addi	x6, x0, 4	# 2464
	lw		x8, -24(x2)	# 2464
	mul		x6, x8, x6	# 2464
	add		x5, x5, x6	# 2464
	sw		x4, 0(x5)	# 2464
	jalr	x0, x1, 0	# 2464
setup_reflections.3019.9057:
	lw		x5, 20(x27)	# 2470
	lw		x6, 16(x27)	# 2470
	lw		x8, 12(x27)	# 2470
	lw		x9, 8(x27)	# 2470
	lw		x10, 4(x27)	# 2470
	ble		x9, x4, ble.18525	# 2470
	jalr	x0, x1, 0	# 2483
ble.18525:
	addi	x11, x7, 48	# 2471
	addi	x12, x0, 4	# 2471
	mul		x12, x4, x12	# 2471
	add		x11, x11, x12	# 2471
	lw		x11, 0(x11)	# 2471
	lw		x12, 8(x11)	# 363
	beq		x12, x8, beq.18527	# 2472
	jalr	x0, x1, 0	# 2482
beq.18527:
	lw		x12, 28(x11)	# 461
	addi	x13, x0, 4	# 466
	mul		x13, x9, x13	# 466
	add		x12, x12, x13	# 466
	flw		f1, 0(x12)	# 466
	fadd	f2, f0, f16	# 2473
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.18530	# 6
	addi	x12, x0, 0	# 6
	jal		x0, fle_cont.18529	# 6
fle_else.18530:
	addi	x12, x0, 1	# 6
fle_cont.18529:
	beq		x12, x9, beq.18531	# 2473
	lw		x9, 4(x11)	# 353
	beq		x9, x10, beq.18532	# 2476
	beq		x9, x8, beq.18533	# 2478
	jalr	x0, x1, 0	# 2480
beq.18533:
	addi	x27, x5, 0
	addi	x5, x11, 0
	lw		x31, 0(x27)	# 2479
	jalr	x0, x31, 0	# 2479
beq.18532:
	addi	x5, x11, 0
	addi	x27, x6, 0
	lw		x31, 0(x27)	# 2477
	jalr	x0, x31, 0	# 2477
beq.18531:
	jalr	x0, x1, 0	# 2481
rt.3021.9059:
	lw		x8, 60(x27)	# 2492
	lw		x9, 56(x27)	# 2492
	lw		x10, 52(x27)	# 2492
	lw		x11, 48(x27)	# 2492
	lw		x12, 44(x27)	# 2492
	lw		x13, 40(x27)	# 2492
	lw		x14, 36(x27)	# 2492
	lw		x15, 32(x27)	# 2492
	lw		x16, 28(x27)	# 2492
	lw		x17, 24(x27)	# 2492
	lw		x18, 20(x27)	# 2492
	lw		x19, 16(x27)	# 2492
	lw		x20, 12(x27)	# 2492
	lw		x21, 8(x27)	# 2492
	lw		x22, 4(x27)	# 2492
	addi	x23, x7, 616	# 2492
	addi	x24, x0, 4	# 2492
	mul		x24, x21, x24	# 2492
	add		x23, x23, x24	# 2492
	sw		x4, 0(x23)	# 2492
	addi	x23, x7, 616	# 2493
	addi	x24, x0, 4	# 2493
	mul		x24, x22, x24	# 2493
	add		x23, x23, x24	# 2493
	sw		x5, 0(x23)	# 2493
	div		x23, x4, x20	# 2494
	addi	x24, x7, 624	# 2494
	addi	x25, x0, 4	# 2494
	mul		x25, x21, x25	# 2494
	add		x24, x24, x25	# 2494
	sw		x23, 0(x24)	# 2494
	div		x5, x5, x20	# 2495
	addi	x23, x7, 624	# 2495
	addi	x24, x0, 4	# 2495
	mul		x24, x22, x24	# 2495
	add		x23, x23, x24	# 2495
	sw		x5, 0(x23)	# 2495
	lui		x5, %hi(l.15459)	# 2496
	ori		x5, x0, %lo(l.15459)	# 2496
	flw		f1, 0(x5)	# 2496
	sw		x20, 0(x2)	# 2496
	sw		x11, -4(x2)	# 2496
	sw		x13, -8(x2)	# 2496
	sw		x10, -12(x2)	# 2496
	sw		x14, -16(x2)	# 2496
	sw		x15, -20(x2)	# 2496
	sw		x22, -24(x2)	# 2496
	sw		x9, -28(x2)	# 2496
	sw		x16, -32(x2)	# 2496
	sw		x19, -36(x2)	# 2496
	sw		x18, -40(x2)	# 2496
	sw		x6, -44(x2)	# 2496
	sw		x8, -48(x2)	# 2496
	sw		x12, -52(x2)	# 2496
	sw		x17, -56(x2)	# 2496
	sw		x21, -60(x2)	# 2496
	fsw		f1, -64(x2)	# 2496
	sw		x1, -68(x2)	# 2496
	addi	x2, x2, -72	# 2496
	jal		x1, float_of_int.2489.8537	# 2496
	addi	x2, x2, 72	# 2496
	lw		x1, -68(x2)	# 2496
	flw		f2, -64(x2)	# 2496
	fdiv	f1, f2, f1	# 2496
	addi	x4, x7, 632	# 2496
	addi	x5, x0, 4	# 2496
	lw		x6, -60(x2)	# 2496
	mul		x5, x6, x5	# 2496
	add		x4, x4, x5	# 2496
	fsw		f1, 0(x4)	# 2496
	lw		x27, -56(x2)	# 2497
	sw		x1, -68(x2)	# 2497
	addi	x2, x2, -72	# 2497
	lw		x31, 0(x27)	# 2497
	jalr	x1, x31, 0	# 2497
	addi	x2, x2, 72	# 2497
	lw		x1, -68(x2)	# 2497
	lw		x27, -56(x2)	# 2498
	sw		x4, -68(x2)	# 2498
	sw		x1, -72(x2)	# 2498
	addi	x2, x2, -76	# 2498
	lw		x31, 0(x27)	# 2498
	jalr	x1, x31, 0	# 2498
	addi	x2, x2, 76	# 2498
	lw		x1, -72(x2)	# 2498
	lw		x27, -56(x2)	# 2499
	sw		x4, -72(x2)	# 2499
	sw		x1, -76(x2)	# 2499
	addi	x2, x2, -80	# 2499
	lw		x31, 0(x27)	# 2499
	jalr	x1, x31, 0	# 2499
	addi	x2, x2, 80	# 2499
	lw		x1, -76(x2)	# 2499
	lw		x27, -52(x2)	# 2500
	sw		x4, -76(x2)	# 2500
	sw		x1, -80(x2)	# 2500
	addi	x2, x2, -84	# 2500
	lw		x31, 0(x27)	# 2500
	jalr	x1, x31, 0	# 2500
	addi	x2, x2, 84	# 2500
	lw		x1, -80(x2)	# 2500
	lw		x4, -44(x2)	# 2501
	lw		x27, -48(x2)	# 2501
	sw		x1, -80(x2)	# 2501
	addi	x2, x2, -84	# 2501
	lw		x31, 0(x27)	# 2501
	jalr	x1, x31, 0	# 2501
	addi	x2, x2, 84	# 2501
	lw		x1, -80(x2)	# 2501
	addi	x4, x0, 4	# 2421
	lw		x27, -40(x2)	# 2421
	sw		x4, -80(x2)	# 2421
	sw		x1, -84(x2)	# 2421
	addi	x2, x2, -88	# 2421
	lw		x31, 0(x27)	# 2421
	jalr	x1, x31, 0	# 2421
	addi	x2, x2, 88	# 2421
	lw		x1, -84(x2)	# 2421
	addi	x4, x0, 9	# 2422
	lw		x5, -60(x2)	# 2422
	lw		x27, -36(x2)	# 2422
	addi	x6, x5, 0
	sw		x1, -84(x2)	# 2422
	addi	x2, x2, -88	# 2422
	lw		x31, 0(x27)	# 2422
	jalr	x1, x31, 0	# 2422
	addi	x2, x2, 88	# 2422
	lw		x1, -84(x2)	# 2422
	lw		x4, -80(x2)	# 2423
	lw		x27, -32(x2)	# 2423
	sw		x1, -84(x2)	# 2423
	addi	x2, x2, -88	# 2423
	lw		x31, 0(x27)	# 2423
	jalr	x1, x31, 0	# 2423
	addi	x2, x2, 88	# 2423
	lw		x1, -84(x2)	# 2423
	addi	x5, x7, 312	# 2503
	addi	x4, x7, 736	# 2503
	lw		x27, -28(x2)	# 2503
	sw		x1, -84(x2)	# 2503
	addi	x2, x2, -88	# 2503
	lw		x31, 0(x27)	# 2503
	jalr	x1, x31, 0	# 2503
	addi	x2, x2, 88	# 2503
	lw		x1, -84(x2)	# 2503
	addi	x4, x7, 0	# 1287
	addi	x5, x0, 4	# 1287
	lw		x6, -60(x2)	# 1287
	mul		x5, x6, x5	# 1287
	add		x4, x4, x5	# 1287
	lw		x4, 0(x4)	# 1287
	lw		x5, -24(x2)	# 1287
	sub		x4, x4, x5	# 1287
	lw		x8, -16(x2)	# 1287
	lw		x27, -20(x2)	# 1287
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -84(x2)	# 1287
	addi	x2, x2, -88	# 1287
	lw		x31, 0(x27)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 88	# 1287
	lw		x1, -84(x2)	# 1287
	addi	x4, x7, 0	# 2505
	addi	x5, x0, 4	# 2505
	lw		x6, -60(x2)	# 2505
	mul		x5, x6, x5	# 2505
	add		x4, x4, x5	# 2505
	lw		x4, 0(x4)	# 2505
	lw		x5, -24(x2)	# 2505
	sub		x4, x4, x5	# 2505
	lw		x27, -12(x2)	# 2505
	sw		x1, -84(x2)	# 2505
	addi	x2, x2, -88	# 2505
	lw		x31, 0(x27)	# 2505
	jalr	x1, x31, 0	# 2505
	addi	x2, x2, 88	# 2505
	lw		x1, -84(x2)	# 2505
	lw		x4, -72(x2)	# 2506
	lw		x5, -60(x2)	# 2506
	lw		x27, -8(x2)	# 2506
	addi	x6, x5, 0
	sw		x1, -84(x2)	# 2506
	addi	x2, x2, -88	# 2506
	lw		x31, 0(x27)	# 2506
	jalr	x1, x31, 0	# 2506
	addi	x2, x2, 88	# 2506
	lw		x1, -84(x2)	# 2506
	lw		x4, -60(x2)	# 2507
	lw		x5, -68(x2)	# 2507
	lw		x6, -72(x2)	# 2507
	lw		x8, -76(x2)	# 2507
	lw		x9, 0(x2)	# 2507
	lw		x10, -44(x2)	# 2507
	lw		x27, -4(x2)	# 2507
	lw		x31, 0(x27)	# 2507
	jalr	x0, x31, 0	# 2507
min_caml_start:
	addi	x2, x2, -4
	addi	x30, x0, 0
	lui		x4, %hi(l.13325)
	ori		x4, x0, %lo(l.13325)
	flw		f0, 0(x4)
	lui		x4, %hi(l.13327)
	ori		x4, x0, %lo(l.13327)
	flw		f16, 0(x4)
	lui		x4, %hi(l.13339)
	ori		x4, x0, %lo(l.13339)
	flw		f17, 0(x4)
	lui		x4, %hi(l.13559)
	ori		x4, x0, %lo(l.13559)
	flw		f18, 0(x4)
	lui		x4, %hi(l.13355)
	ori		x4, x0, %lo(l.13355)
	flw		f19, 0(x4)
	lui		x4, %hi(l.14875)
	ori		x4, x0, %lo(l.14875)
	flw		f20, 0(x4)
	lui		x4, %hi(l.13365)
	ori		x4, x0, %lo(l.13365)
	flw		f21, 0(x4)
	lui		x4, %hi(l.14411)
	ori		x4, x0, %lo(l.14411)
	flw		f22, 0(x4)
	lui		x4, %hi(l.14373)
	ori		x4, x0, %lo(l.14373)
	flw		f23, 0(x4)
	lui		x4, %hi(l.14715)
	ori		x4, x0, %lo(l.14715)
	flw		f24, 0(x4)
	lui		x4, %hi(l.14710)
	ori		x4, x0, %lo(l.14710)
	flw		f25, 0(x4)
	lui		x4, %hi(l.14490)
	ori		x4, x0, %lo(l.14490)
	flw		f26, 0(x4)
	lui		x4, %hi(l.14750)
	ori		x4, x0, %lo(l.14750)
	flw		f27, 0(x4)
	lui		x4, %hi(l.13668)
	ori		x4, x0, %lo(l.13668)
	flw		f28, 0(x4)
	lui		x4, %hi(l.14713)
	ori		x4, x0, %lo(l.14713)
	flw		f29, 0(x4)
	lui		x4, %hi(l.15326)
	ori		x4, x0, %lo(l.15326)
	flw		f30, 0(x4)
	lui		x4, %hi(l.15470)	# 20
	ori		x4, x0, %lo(l.15470)	# 20
	flw		f1, 0(x4)	# 20
	lui		x4, %hi(l.15472)	# 21
	ori		x4, x0, %lo(l.15472)	# 21
	flw		f2, 0(x4)	# 21
	lui		x4, %hi(l.15474)	# 22
	ori		x4, x0, %lo(l.15474)	# 22
	flw		f3, 0(x4)	# 22
	lui		x4, %hi(l.15476)	# 23
	ori		x4, x0, %lo(l.15476)	# 23
	flw		f4, 0(x4)	# 23
	addi	x4, x3, 0	# 45
	addi	x3, x3, 20	# 45
	lui		x5, %hi(sin.2501.8549)	# 45
	ori		x5, x0, %lo(sin.2501.8549)	# 45
	sw		x5, 0(x4)	# 53
	fsw		f4, 16(x4)	# 53
	fsw		f3, 12(x4)	# 53
	fsw		f2, 8(x4)	# 53
	fsw		f1, 4(x4)	# 53
	addi	x5, x3, 0	# 53
	addi	x3, x3, 16	# 53
	lui		x6, %hi(cos.2503.8551)	# 53
	ori		x6, x0, %lo(cos.2503.8551)	# 53
	sw		x6, 0(x5)	# 58
	sw		x4, 12(x5)	# 58
	fsw		f4, 8(x5)	# 58
	fsw		f3, 4(x5)	# 58
	addi	x6, x3, 0	# 58
	addi	x3, x3, 12	# 58
	lui		x8, %hi(atan.2505.8553)	# 58
	ori		x8, x0, %lo(atan.2505.8553)	# 58
	sw		x8, 0(x6)	# 76
	fsw		f4, 8(x6)	# 76
	fsw		f3, 4(x6)	# 76
	addi	x8, x0, 1	# 76
	addi	x9, x0, 0	# 76
	addi	x7, x3, 0	# 76
	sw		x6, 0(x2)	# 76
	sw		x5, -4(x2)	# 76
	sw		x4, -8(x2)	# 76
	sw		x8, -12(x2)	# 76
	sw		x9, -16(x2)	# 76
	addi	x5, x9, 0
	addi	x4, x8, 0
	sw		x1, -20(x2)	# 76
	addi	x2, x2, -24	# 76
	jal		x1, min_caml_create_array	# 76
	addi	x2, x2, 24	# 76
	lw		x1, -20(x2)	# 76
	fadd	f1, f0, f0	# 81
	addi	x4, x7, 4	# 81
	lw		x5, -16(x2)	# 81
	fsw		f1, -20(x2)	# 81
	sw		x4, -24(x2)	# 81
	addi	x4, x5, 0
	sw		x1, -28(x2)	# 81
	addi	x2, x2, -32	# 81
	jal		x1, min_caml_create_float_array	# 81
	addi	x2, x2, 32	# 81
	lw		x1, -28(x2)	# 81
	addi	x4, x0, 60	# 82
	addi	x5, x3, 0	# 82
	addi	x3, x3, 44	# 82
	lw		x6, -24(x2)	# 82
	sw		x6, 40(x5)	# 82
	sw		x6, 36(x5)	# 82
	sw		x6, 32(x5)	# 82
	sw		x6, 28(x5)	# 82
	lw		x8, -16(x2)	# 82
	sw		x8, 24(x5)	# 82
	sw		x6, 20(x5)	# 82
	sw		x6, 16(x5)	# 82
	sw		x8, 12(x5)	# 82
	sw		x8, 8(x5)	# 82
	sw		x8, 4(x5)	# 82
	sw		x8, 0(x5)	# 82
	sw		x4, -28(x2)	# 82
	sw		x1, -32(x2)	# 82
	addi	x2, x2, -36	# 82
	jal		x1, min_caml_create_array	# 82
	addi	x2, x2, 36	# 82
	lw		x1, -32(x2)	# 82
	addi	x4, x0, 3	# 86
	flw		f1, -20(x2)	# 86
	sw		x4, -32(x2)	# 86
	sw		x1, -36(x2)	# 86
	addi	x2, x2, -40	# 86
	jal		x1, min_caml_create_float_array	# 86
	addi	x2, x2, 40	# 86
	lw		x1, -36(x2)	# 86
	flw		f1, -20(x2)	# 89
	lw		x4, -32(x2)	# 89
	sw		x1, -36(x2)	# 89
	addi	x2, x2, -40	# 89
	jal		x1, min_caml_create_float_array	# 89
	addi	x2, x2, 40	# 89
	lw		x1, -36(x2)	# 89
	flw		f1, -20(x2)	# 92
	lw		x4, -32(x2)	# 92
	sw		x1, -36(x2)	# 92
	addi	x2, x2, -40	# 92
	jal		x1, min_caml_create_float_array	# 92
	addi	x2, x2, 40	# 92
	lw		x1, -36(x2)	# 92
	lui		x4, %hi(l.15491)	# 95
	ori		x4, x0, %lo(l.15491)	# 95
	flw		f1, 0(x4)	# 95
	lw		x4, -12(x2)	# 95
	fsw		f1, -36(x2)	# 95
	sw		x1, -40(x2)	# 95
	addi	x2, x2, -44	# 95
	jal		x1, min_caml_create_float_array	# 95
	addi	x2, x2, 44	# 95
	lw		x1, -40(x2)	# 95
	addi	x4, x0, 50	# 98
	addi	x5, x0, -1	# 98
	addi	x6, x7, 328	# 98
	lw		x8, -12(x2)	# 98
	sw		x5, -40(x2)	# 98
	sw		x6, -44(x2)	# 98
	sw		x4, -48(x2)	# 98
	addi	x4, x8, 0
	sw		x1, -52(x2)	# 98
	addi	x2, x2, -56	# 98
	jal		x1, min_caml_create_array	# 98
	addi	x2, x2, 56	# 98
	lw		x1, -52(x2)	# 98
	addi	x4, x7, 332	# 98
	lw		x5, -48(x2)	# 98
	lw		x6, -44(x2)	# 98
	sw		x4, -52(x2)	# 98
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -56(x2)	# 98
	addi	x2, x2, -60	# 98
	jal		x1, min_caml_create_array	# 98
	addi	x2, x2, 60	# 98
	lw		x1, -56(x2)	# 98
	addi	x4, x0, 4	# 101
	lw		x5, -16(x2)	# 101
	mul		x4, x5, x4	# 101
	lw		x6, -52(x2)	# 101
	add		x4, x6, x4	# 101
	lw		x4, 0(x4)	# 101
	addi	x6, x7, 532	# 101
	lw		x8, -12(x2)	# 101
	sw		x6, -56(x2)	# 101
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -60(x2)	# 101
	addi	x2, x2, -64	# 101
	jal		x1, min_caml_create_array	# 101
	addi	x2, x2, 64	# 101
	lw		x1, -60(x2)	# 101
	lw		x4, -12(x2)	# 101
	lw		x5, -56(x2)	# 101
	sw		x1, -60(x2)	# 101
	addi	x2, x2, -64	# 101
	jal		x1, min_caml_create_array	# 101
	addi	x2, x2, 64	# 101
	lw		x1, -60(x2)	# 101
	flw		f1, -20(x2)	# 106
	lw		x4, -12(x2)	# 106
	sw		x1, -60(x2)	# 106
	addi	x2, x2, -64	# 106
	jal		x1, min_caml_create_float_array	# 106
	addi	x2, x2, 64	# 106
	lw		x1, -60(x2)	# 106
	lw		x4, -12(x2)	# 109
	lw		x5, -16(x2)	# 109
	sw		x1, -60(x2)	# 109
	addi	x2, x2, -64	# 109
	jal		x1, min_caml_create_array	# 109
	addi	x2, x2, 64	# 109
	lw		x1, -60(x2)	# 109
	lui		x4, %hi(l.15496)	# 112
	ori		x4, x0, %lo(l.15496)	# 112
	flw		f1, 0(x4)	# 112
	lw		x4, -12(x2)	# 112
	fsw		f1, -60(x2)	# 112
	sw		x1, -64(x2)	# 112
	addi	x2, x2, -68	# 112
	jal		x1, min_caml_create_float_array	# 112
	addi	x2, x2, 68	# 112
	lw		x1, -64(x2)	# 112
	flw		f1, -20(x2)	# 115
	lw		x4, -32(x2)	# 115
	sw		x1, -64(x2)	# 115
	addi	x2, x2, -68	# 115
	jal		x1, min_caml_create_float_array	# 115
	addi	x2, x2, 68	# 115
	lw		x1, -64(x2)	# 115
	lw		x4, -12(x2)	# 118
	lw		x5, -16(x2)	# 118
	sw		x1, -64(x2)	# 118
	addi	x2, x2, -68	# 118
	jal		x1, min_caml_create_array	# 118
	addi	x2, x2, 68	# 118
	lw		x1, -64(x2)	# 118
	flw		f1, -20(x2)	# 121
	lw		x4, -32(x2)	# 121
	sw		x1, -64(x2)	# 121
	addi	x2, x2, -68	# 121
	jal		x1, min_caml_create_float_array	# 121
	addi	x2, x2, 68	# 121
	lw		x1, -64(x2)	# 121
	flw		f1, -20(x2)	# 124
	lw		x4, -32(x2)	# 124
	sw		x1, -64(x2)	# 124
	addi	x2, x2, -68	# 124
	jal		x1, min_caml_create_float_array	# 124
	addi	x2, x2, 68	# 124
	lw		x1, -64(x2)	# 124
	flw		f1, -20(x2)	# 128
	lw		x4, -32(x2)	# 128
	sw		x1, -64(x2)	# 128
	addi	x2, x2, -68	# 128
	jal		x1, min_caml_create_float_array	# 128
	addi	x2, x2, 68	# 128
	lw		x1, -64(x2)	# 128
	flw		f1, -20(x2)	# 131
	lw		x4, -32(x2)	# 131
	sw		x1, -64(x2)	# 131
	addi	x2, x2, -68	# 131
	jal		x1, min_caml_create_float_array	# 131
	addi	x2, x2, 68	# 131
	lw		x1, -64(x2)	# 131
	addi	x4, x0, 2	# 135
	lw		x5, -16(x2)	# 135
	sw		x4, -64(x2)	# 135
	sw		x1, -68(x2)	# 135
	addi	x2, x2, -72	# 135
	jal		x1, min_caml_create_array	# 135
	addi	x2, x2, 72	# 135
	lw		x1, -68(x2)	# 135
	lw		x4, -64(x2)	# 138
	lw		x5, -16(x2)	# 138
	sw		x1, -68(x2)	# 138
	addi	x2, x2, -72	# 138
	jal		x1, min_caml_create_array	# 138
	addi	x2, x2, 72	# 138
	lw		x1, -68(x2)	# 138
	flw		f1, -20(x2)	# 141
	lw		x4, -12(x2)	# 141
	sw		x1, -68(x2)	# 141
	addi	x2, x2, -72	# 141
	jal		x1, min_caml_create_float_array	# 141
	addi	x2, x2, 72	# 141
	lw		x1, -68(x2)	# 141
	flw		f1, -20(x2)	# 145
	lw		x4, -32(x2)	# 145
	sw		x1, -68(x2)	# 145
	addi	x2, x2, -72	# 145
	jal		x1, min_caml_create_float_array	# 145
	addi	x2, x2, 72	# 145
	lw		x1, -68(x2)	# 145
	flw		f1, -20(x2)	# 148
	lw		x4, -32(x2)	# 148
	sw		x1, -68(x2)	# 148
	addi	x2, x2, -72	# 148
	jal		x1, min_caml_create_float_array	# 148
	addi	x2, x2, 72	# 148
	lw		x1, -68(x2)	# 148
	flw		f1, -20(x2)	# 152
	lw		x4, -32(x2)	# 152
	sw		x1, -68(x2)	# 152
	addi	x2, x2, -72	# 152
	jal		x1, min_caml_create_float_array	# 152
	addi	x2, x2, 72	# 152
	lw		x1, -68(x2)	# 152
	flw		f1, -20(x2)	# 154
	lw		x4, -32(x2)	# 154
	sw		x1, -68(x2)	# 154
	addi	x2, x2, -72	# 154
	jal		x1, min_caml_create_float_array	# 154
	addi	x2, x2, 72	# 154
	lw		x1, -68(x2)	# 154
	flw		f1, -20(x2)	# 156
	lw		x4, -32(x2)	# 156
	sw		x1, -68(x2)	# 156
	addi	x2, x2, -72	# 156
	jal		x1, min_caml_create_float_array	# 156
	addi	x2, x2, 72	# 156
	lw		x1, -68(x2)	# 156
	flw		f1, -20(x2)	# 160
	lw		x4, -32(x2)	# 160
	sw		x1, -68(x2)	# 160
	addi	x2, x2, -72	# 160
	jal		x1, min_caml_create_float_array	# 160
	addi	x2, x2, 72	# 160
	lw		x1, -68(x2)	# 160
	addi	x4, x7, 708	# 165
	flw		f1, -20(x2)	# 165
	lw		x5, -16(x2)	# 165
	sw		x4, -68(x2)	# 165
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 165
	addi	x2, x2, -76	# 165
	jal		x1, min_caml_create_float_array	# 165
	addi	x2, x2, 76	# 165
	lw		x1, -72(x2)	# 165
	addi	x4, x7, 708	# 166
	lw		x5, -16(x2)	# 166
	lw		x6, -68(x2)	# 166
	sw		x4, -72(x2)	# 166
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -76(x2)	# 166
	addi	x2, x2, -80	# 166
	jal		x1, min_caml_create_array	# 166
	addi	x2, x2, 80	# 166
	lw		x1, -76(x2)	# 166
	addi	x4, x3, 0	# 167
	addi	x3, x3, 8	# 167
	lw		x5, -72(x2)	# 167
	sw		x5, 4(x4)	# 167
	lw		x5, -68(x2)	# 167
	sw		x5, 0(x4)	# 167
	addi	x5, x4, 0	# 167
	addi	x4, x7, 716	# 167
	lw		x6, -16(x2)	# 167
	sw		x4, -76(x2)	# 167
	addi	x4, x6, 0
	sw		x1, -80(x2)	# 167
	addi	x2, x2, -84	# 167
	jal		x1, min_caml_create_array	# 167
	addi	x2, x2, 84	# 167
	lw		x1, -80(x2)	# 167
	addi	x4, x0, 5	# 168
	lw		x5, -76(x2)	# 168
	sw		x4, -80(x2)	# 168
	sw		x1, -84(x2)	# 168
	addi	x2, x2, -88	# 168
	jal		x1, min_caml_create_array	# 168
	addi	x2, x2, 88	# 168
	lw		x1, -84(x2)	# 168
	addi	x4, x7, 736	# 173
	flw		f1, -20(x2)	# 173
	lw		x5, -16(x2)	# 173
	sw		x4, -84(x2)	# 173
	addi	x4, x5, 0
	sw		x1, -88(x2)	# 173
	addi	x2, x2, -92	# 173
	jal		x1, min_caml_create_float_array	# 173
	addi	x2, x2, 92	# 173
	lw		x1, -88(x2)	# 173
	addi	x4, x7, 736	# 174
	flw		f1, -20(x2)	# 174
	lw		x5, -32(x2)	# 174
	sw		x4, -88(x2)	# 174
	addi	x4, x5, 0
	sw		x1, -92(x2)	# 174
	addi	x2, x2, -96	# 174
	jal		x1, min_caml_create_float_array	# 174
	addi	x2, x2, 96	# 174
	lw		x1, -92(x2)	# 174
	addi	x4, x7, 748	# 175
	lw		x5, -28(x2)	# 175
	lw		x6, -84(x2)	# 175
	sw		x4, -92(x2)	# 175
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -96(x2)	# 175
	addi	x2, x2, -100	# 175
	jal		x1, min_caml_create_array	# 175
	addi	x2, x2, 100	# 175
	lw		x1, -96(x2)	# 175
	addi	x4, x3, 0	# 176
	addi	x3, x3, 8	# 176
	lw		x5, -92(x2)	# 176
	sw		x5, 4(x4)	# 176
	lw		x5, -88(x2)	# 176
	sw		x5, 0(x4)	# 176
	addi	x5, x7, 996	# 181
	flw		f1, -20(x2)	# 181
	lw		x6, -16(x2)	# 181
	sw		x4, -96(x2)	# 181
	sw		x5, -100(x2)	# 181
	addi	x4, x6, 0
	sw		x1, -104(x2)	# 181
	addi	x2, x2, -108	# 181
	jal		x1, min_caml_create_float_array	# 181
	addi	x2, x2, 108	# 181
	lw		x1, -104(x2)	# 181
	addi	x4, x7, 996	# 182
	lw		x5, -16(x2)	# 182
	lw		x6, -100(x2)	# 182
	sw		x4, -104(x2)	# 182
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -108(x2)	# 182
	addi	x2, x2, -112	# 182
	jal		x1, min_caml_create_array	# 182
	addi	x2, x2, 112	# 182
	lw		x1, -108(x2)	# 182
	addi	x4, x3, 0	# 183
	addi	x3, x3, 8	# 183
	lw		x5, -104(x2)	# 183
	sw		x5, 4(x4)	# 183
	lw		x5, -100(x2)	# 183
	sw		x5, 0(x4)	# 183
	addi	x5, x0, 180	# 184
	addi	x6, x3, 0	# 184
	addi	x3, x3, 12	# 184
	flw		f1, -20(x2)	# 184
	fsw		f1, 8(x6)	# 184
	sw		x4, 4(x6)	# 184
	lw		x4, -16(x2)	# 184
	sw		x4, 0(x6)	# 184
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -108(x2)	# 184
	addi	x2, x2, -112	# 184
	jal		x1, min_caml_create_array	# 184
	addi	x2, x2, 112	# 184
	lw		x1, -108(x2)	# 184
	lw		x4, -12(x2)	# 188
	lw		x5, -16(x2)	# 188
	sw		x1, -108(x2)	# 188
	addi	x2, x2, -112	# 188
	jal		x1, min_caml_create_array	# 188
	addi	x2, x2, 112	# 188
	lw		x1, -108(x2)	# 188
	addi	x4, x3, 0	# 211
	addi	x3, x3, 12	# 211
	lui		x5, %hi(sgn.2544.8693)	# 211
	ori		x5, x0, %lo(sgn.2544.8693)	# 211
	sw		x5, 0(x4)	# 258
	lw		x5, -16(x2)	# 258
	sw		x5, 8(x4)	# 258
	flw		f1, -20(x2)	# 258
	fsw		f1, 4(x4)	# 258
	addi	x6, x3, 0	# 258
	addi	x3, x3, 16	# 258
	lui		x8, %hi(veccpy.2562.8695)	# 258
	ori		x8, x0, %lo(veccpy.2562.8695)	# 258
	sw		x8, 0(x6)	# 282
	lw		x8, -64(x2)	# 282
	sw		x8, 12(x6)	# 282
	sw		x5, 8(x6)	# 282
	lw		x9, -12(x2)	# 282
	sw		x9, 4(x6)	# 282
	addi	x10, x3, 0	# 282
	addi	x3, x3, 20	# 282
	lui		x11, %hi(vecunit_sgn.2565.8698)	# 282
	ori		x11, x0, %lo(vecunit_sgn.2565.8698)	# 282
	sw		x11, 0(x10)	# 291
	sw		x8, 16(x10)	# 291
	sw		x5, 12(x10)	# 291
	sw		x9, 8(x10)	# 291
	fsw		f1, 4(x10)	# 291
	addi	x11, x3, 0	# 291
	addi	x3, x3, 16	# 291
	lui		x12, %hi(veciprod.2568.8701)	# 291
	ori		x12, x0, %lo(veciprod.2568.8701)	# 291
	sw		x12, 0(x11)	# 296
	sw		x8, 12(x11)	# 296
	sw		x5, 8(x11)	# 296
	sw		x9, 4(x11)	# 296
	addi	x12, x3, 0	# 296
	addi	x3, x3, 16	# 296
	lui		x13, %hi(veciprod2.2571.8704)	# 296
	ori		x13, x0, %lo(veciprod2.2571.8704)	# 296
	sw		x13, 0(x12)	# 301
	sw		x8, 12(x12)	# 301
	sw		x5, 8(x12)	# 301
	sw		x9, 4(x12)	# 301
	addi	x13, x3, 0	# 301
	addi	x3, x3, 16	# 301
	lui		x14, %hi(vecaccum.2576.8709)	# 301
	ori		x14, x0, %lo(vecaccum.2576.8709)	# 301
	sw		x14, 0(x13)	# 308
	sw		x8, 12(x13)	# 308
	sw		x5, 8(x13)	# 308
	sw		x9, 4(x13)	# 308
	addi	x14, x3, 0	# 308
	addi	x3, x3, 16	# 308
	lui		x15, %hi(vecadd.2580.8713)	# 308
	ori		x15, x0, %lo(vecadd.2580.8713)	# 308
	sw		x15, 0(x14)	# 324
	sw		x8, 12(x14)	# 324
	sw		x5, 8(x14)	# 324
	sw		x9, 4(x14)	# 324
	addi	x15, x3, 0	# 324
	addi	x3, x3, 16	# 324
	lui		x16, %hi(vecscale.2583.8716)	# 324
	ori		x16, x0, %lo(vecscale.2583.8716)	# 324
	sw		x16, 0(x15)	# 331
	sw		x8, 12(x15)	# 331
	sw		x5, 8(x15)	# 331
	sw		x9, 4(x15)	# 331
	addi	x16, x3, 0	# 331
	addi	x3, x3, 16	# 331
	lui		x17, %hi(vecaccumv.2586.8719)	# 331
	ori		x17, x0, %lo(vecaccumv.2586.8719)	# 331
	sw		x17, 0(x16)	# 681
	sw		x8, 12(x16)	# 681
	sw		x5, 8(x16)	# 681
	sw		x9, 4(x16)	# 681
	addi	x17, x3, 0	# 681
	addi	x3, x3, 28	# 681
	lui		x18, %hi(read_screen_settings.2663.8723)	# 681
	ori		x18, x0, %lo(read_screen_settings.2663.8723)	# 681
	sw		x18, 0(x17)	# 714
	lw		x18, -8(x2)	# 714
	sw		x18, 24(x17)	# 714
	lw		x19, -4(x2)	# 714
	sw		x19, 20(x17)	# 714
	sw		x8, 16(x17)	# 714
	sw		x5, 12(x17)	# 714
	sw		x9, 8(x17)	# 714
	fsw		f1, 4(x17)	# 714
	addi	x20, x3, 0	# 714
	addi	x3, x3, 24	# 714
	lui		x21, %hi(read_light.2665.8725)	# 714
	ori		x21, x0, %lo(read_light.2665.8725)	# 714
	sw		x21, 0(x20)	# 736
	sw		x18, 20(x20)	# 736
	sw		x19, 16(x20)	# 736
	sw		x8, 12(x20)	# 736
	sw		x5, 8(x20)	# 736
	sw		x9, 4(x20)	# 736
	addi	x21, x3, 0	# 736
	addi	x3, x3, 24	# 736
	lui		x22, %hi(rotate_quadratic_matrix.2667.8727)	# 736
	ori		x22, x0, %lo(rotate_quadratic_matrix.2667.8727)	# 736
	sw		x22, 0(x21)	# 777
	sw		x18, 20(x21)	# 777
	sw		x19, 16(x21)	# 777
	sw		x8, 12(x21)	# 777
	sw		x5, 8(x21)	# 777
	sw		x9, 4(x21)	# 777
	addi	x22, x3, 0	# 777
	addi	x3, x3, 40	# 777
	lui		x23, %hi(read_nth_object.2670.8730)	# 777
	ori		x23, x0, %lo(read_nth_object.2670.8730)	# 777
	sw		x23, 0(x22)	# 860
	sw		x10, 36(x22)	# 860
	sw		x4, 32(x22)	# 860
	sw		x21, 28(x22)	# 860
	sw		x8, 24(x22)	# 860
	lw		x21, -40(x2)	# 860
	sw		x21, 20(x22)	# 860
	lw		x23, -32(x2)	# 860
	sw		x23, 16(x22)	# 860
	sw		x5, 12(x22)	# 860
	sw		x9, 8(x22)	# 860
	fsw		f1, 4(x22)	# 860
	addi	x24, x3, 0	# 860
	addi	x3, x3, 20	# 860
	lui		x25, %hi(read_object.2672.8732)	# 860
	ori		x25, x0, %lo(read_object.2672.8732)	# 860
	sw		x25, 0(x24)	# 876
	sw		x22, 16(x24)	# 876
	lw		x25, -28(x2)	# 876
	sw		x25, 12(x24)	# 876
	sw		x5, 8(x24)	# 876
	sw		x9, 4(x24)	# 876
	addi	x25, x3, 0	# 876
	addi	x3, x3, 12	# 876
	lui		x26, %hi(read_net_item.2676.8734)	# 876
	ori		x26, x0, %lo(read_net_item.2676.8734)	# 876
	sw		x26, 0(x25)	# 884
	sw		x21, 8(x25)	# 884
	sw		x9, 4(x25)	# 884
	addi	x26, x3, 0	# 884
	addi	x3, x3, 20	# 884
	lui		x27, %hi(read_or_network.2678.8736)	# 884
	ori		x27, x0, %lo(read_or_network.2678.8736)	# 884
	sw		x27, 0(x26)	# 893
	sw		x25, 16(x26)	# 893
	sw		x21, 12(x26)	# 893
	sw		x5, 8(x26)	# 893
	sw		x9, 4(x26)	# 893
	addi	x27, x3, 0	# 893
	addi	x3, x3, 20	# 893
	lui		x31, %hi(read_and_network.2680.8738)	# 893
	ori		x31, x0, %lo(read_and_network.2680.8738)	# 893
	sw		x31, 0(x27)	# 902
	sw		x25, 16(x27)	# 902
	sw		x21, 12(x27)	# 902
	sw		x5, 8(x27)	# 902
	sw		x9, 4(x27)	# 902
	addi	x25, x3, 0	# 902
	addi	x3, x3, 32	# 902
	lui		x31, %hi(read_parameter.2682.8740)	# 902
	ori		x31, x0, %lo(read_parameter.2682.8740)	# 902
	sw		x31, 0(x25)	# 927
	sw		x17, 28(x25)	# 927
	sw		x26, 24(x25)	# 927
	sw		x24, 20(x25)	# 927
	sw		x22, 16(x25)	# 927
	sw		x20, 12(x25)	# 927
	sw		x27, 8(x25)	# 927
	sw		x5, 4(x25)	# 927
	addi	x17, x3, 0	# 927
	addi	x3, x3, 12	# 927
	lui		x20, %hi(solver_rect_surface.2684.8742)	# 927
	ori		x20, x0, %lo(solver_rect_surface.2684.8742)	# 927
	sw		x20, 0(x17)	# 942
	sw		x5, 8(x17)	# 942
	fsw		f1, 4(x17)	# 942
	addi	x20, x3, 0	# 942
	addi	x3, x3, 20	# 942
	lui		x22, %hi(solver_rect.2693.8751)	# 942
	ori		x22, x0, %lo(solver_rect.2693.8751)	# 942
	sw		x22, 0(x20)	# 951
	sw		x17, 16(x20)	# 951
	sw		x8, 12(x20)	# 951
	sw		x5, 8(x20)	# 951
	sw		x9, 4(x20)	# 951
	addi	x17, x3, 0	# 951
	addi	x3, x3, 20	# 951
	lui		x22, %hi(solver_surface.2699.8757)	# 951
	ori		x22, x0, %lo(solver_surface.2699.8757)	# 951
	sw		x22, 0(x17)	# 965
	sw		x12, 16(x17)	# 965
	sw		x11, 12(x17)	# 965
	sw		x5, 8(x17)	# 965
	fsw		f1, 4(x17)	# 965
	addi	x22, x3, 0	# 965
	addi	x3, x3, 16	# 965
	lui		x24, %hi(quadratic.2705.8763)	# 965
	ori		x24, x0, %lo(quadratic.2705.8763)	# 965
	sw		x24, 0(x22)	# 980
	sw		x8, 12(x22)	# 980
	sw		x5, 8(x22)	# 980
	sw		x9, 4(x22)	# 980
	addi	x24, x3, 0	# 980
	addi	x3, x3, 16	# 980
	lui		x26, %hi(bilinear.2710.8768)	# 980
	ori		x26, x0, %lo(bilinear.2710.8768)	# 980
	sw		x26, 0(x24)	# 1002
	sw		x8, 12(x24)	# 1002
	sw		x5, 8(x24)	# 1002
	sw		x9, 4(x24)	# 1002
	addi	x26, x3, 0	# 1002
	addi	x3, x3, 32	# 1002
	lui		x27, %hi(solver_second.2718.8776)	# 1002
	ori		x27, x0, %lo(solver_second.2718.8776)	# 1002
	sw		x27, 0(x26)	# 1031
	sw		x22, 28(x26)	# 1031
	sw		x24, 24(x26)	# 1031
	sw		x8, 20(x26)	# 1031
	sw		x23, 16(x26)	# 1031
	sw		x5, 12(x26)	# 1031
	sw		x9, 8(x26)	# 1031
	fsw		f1, 4(x26)	# 1031
	addi	x24, x3, 0	# 1031
	addi	x3, x3, 28	# 1031
	lui		x27, %hi(solver.2724.8782)	# 1031
	ori		x27, x0, %lo(solver.2724.8782)	# 1031
	sw		x27, 0(x24)	# 1063
	sw		x17, 24(x24)	# 1063
	sw		x26, 20(x24)	# 1063
	sw		x20, 16(x24)	# 1063
	sw		x8, 12(x24)	# 1063
	sw		x5, 8(x24)	# 1063
	sw		x9, 4(x24)	# 1063
	addi	x17, x3, 0	# 1063
	addi	x3, x3, 28	# 1063
	lui		x20, %hi(solver_rect_fast.2728.8786)	# 1063
	ori		x20, x0, %lo(solver_rect_fast.2728.8786)	# 1063
	sw		x20, 0(x17)	# 1096
	lw		x20, -80(x2)	# 1096
	sw		x20, 24(x17)	# 1096
	sw		x8, 20(x17)	# 1096
	sw		x23, 16(x17)	# 1096
	sw		x5, 12(x17)	# 1096
	sw		x9, 8(x17)	# 1096
	fsw		f1, 4(x17)	# 1096
	addi	x26, x3, 0	# 1096
	addi	x3, x3, 24	# 1096
	lui		x27, %hi(solver_surface_fast.2735.8793)	# 1096
	ori		x27, x0, %lo(solver_surface_fast.2735.8793)	# 1096
	sw		x27, 0(x26)	# 1105
	sw		x8, 20(x26)	# 1105
	sw		x23, 16(x26)	# 1105
	sw		x5, 12(x26)	# 1105
	sw		x9, 8(x26)	# 1105
	fsw		f1, 4(x26)	# 1105
	addi	x27, x3, 0	# 1105
	addi	x3, x3, 28	# 1105
	lui		x31, %hi(solver_second_fast.2741.8799)	# 1105
	ori		x31, x0, %lo(solver_second_fast.2741.8799)	# 1105
	sw		x31, 0(x27)	# 1125
	sw		x22, 24(x27)	# 1125
	sw		x8, 20(x27)	# 1125
	sw		x23, 16(x27)	# 1125
	sw		x5, 12(x27)	# 1125
	sw		x9, 8(x27)	# 1125
	fsw		f1, 4(x27)	# 1125
	addi	x31, x3, 0	# 1125
	addi	x3, x3, 28	# 1125
	sw		x25, -108(x2)	# 1125
	lui		x25, %hi(solver_fast.2747.8805)	# 1125
	ori		x25, x0, %lo(solver_fast.2747.8805)	# 1125
	sw		x25, 0(x31)	# 1145
	sw		x26, 24(x31)	# 1145
	sw		x27, 20(x31)	# 1145
	sw		x17, 16(x31)	# 1145
	sw		x8, 12(x31)	# 1145
	sw		x5, 8(x31)	# 1145
	sw		x9, 4(x31)	# 1145
	addi	x25, x3, 0	# 1145
	addi	x3, x3, 16	# 1145
	lui		x26, %hi(solver_surface_fast2.2751.8809)	# 1145
	ori		x26, x0, %lo(solver_surface_fast2.2751.8809)	# 1145
	sw		x26, 0(x25)	# 1153
	sw		x23, 12(x25)	# 1153
	sw		x5, 8(x25)	# 1153
	fsw		f1, 4(x25)	# 1153
	addi	x26, x3, 0	# 1153
	addi	x3, x3, 24	# 1153
	lui		x27, %hi(solver_second_fast2.2758.8816)	# 1153
	ori		x27, x0, %lo(solver_second_fast2.2758.8816)	# 1153
	sw		x27, 0(x26)	# 1172
	sw		x8, 20(x26)	# 1172
	sw		x23, 16(x26)	# 1172
	sw		x5, 12(x26)	# 1172
	sw		x9, 8(x26)	# 1172
	fsw		f1, 4(x26)	# 1172
	addi	x27, x3, 0	# 1172
	addi	x3, x3, 28	# 1172
	sw		x14, -112(x2)	# 1172
	lui		x14, %hi(solver_fast2.2765.8823)	# 1172
	ori		x14, x0, %lo(solver_fast2.2765.8823)	# 1172
	sw		x14, 0(x27)	# 1194
	sw		x25, 24(x27)	# 1194
	sw		x26, 20(x27)	# 1194
	sw		x17, 16(x27)	# 1194
	sw		x8, 12(x27)	# 1194
	sw		x5, 8(x27)	# 1194
	sw		x9, 4(x27)	# 1194
	addi	x14, x3, 0	# 1194
	addi	x3, x3, 20	# 1194
	lui		x17, %hi(setup_rect_table.2768.8826)	# 1194
	ori		x17, x0, %lo(setup_rect_table.2768.8826)	# 1194
	sw		x17, 0(x14)	# 1221
	sw		x8, 16(x14)	# 1221
	sw		x5, 12(x14)	# 1221
	sw		x9, 8(x14)	# 1221
	fsw		f1, 4(x14)	# 1221
	addi	x17, x3, 0	# 1221
	addi	x3, x3, 20	# 1221
	lui		x25, %hi(setup_surface_table.2771.8829)	# 1221
	ori		x25, x0, %lo(setup_surface_table.2771.8829)	# 1221
	sw		x25, 0(x17)	# 1240
	sw		x8, 16(x17)	# 1240
	sw		x5, 12(x17)	# 1240
	sw		x9, 8(x17)	# 1240
	fsw		f1, 4(x17)	# 1240
	addi	x25, x3, 0	# 1240
	addi	x3, x3, 28	# 1240
	lui		x26, %hi(setup_second_table.2774.8832)	# 1240
	ori		x26, x0, %lo(setup_second_table.2774.8832)	# 1240
	sw		x26, 0(x25)	# 1269
	sw		x22, 24(x25)	# 1269
	sw		x20, 20(x25)	# 1269
	sw		x8, 16(x25)	# 1269
	sw		x5, 12(x25)	# 1269
	sw		x9, 8(x25)	# 1269
	fsw		f1, 4(x25)	# 1269
	addi	x26, x3, 0	# 1269
	addi	x3, x3, 24	# 1269
	lui		x20, %hi(iter_setup_dirvec_constants.2777.8835)	# 1269
	ori		x20, x0, %lo(iter_setup_dirvec_constants.2777.8835)	# 1269
	sw		x20, 0(x26)	# 1294
	sw		x17, 20(x26)	# 1294
	sw		x25, 16(x26)	# 1294
	sw		x14, 12(x26)	# 1294
	sw		x5, 8(x26)	# 1294
	sw		x9, 4(x26)	# 1294
	addi	x14, x3, 0	# 1294
	addi	x3, x3, 24	# 1294
	lui		x17, %hi(setup_startp_constants.2782.8838)	# 1294
	ori		x17, x0, %lo(setup_startp_constants.2782.8838)	# 1294
	sw		x17, 0(x14)	# 1325
	sw		x12, 20(x14)	# 1325
	sw		x22, 16(x14)	# 1325
	sw		x8, 12(x14)	# 1325
	sw		x5, 8(x14)	# 1325
	sw		x9, 4(x14)	# 1325
	addi	x17, x3, 0	# 1325
	addi	x3, x3, 20	# 1325
	lui		x20, %hi(is_rect_outside.2787.8841)	# 1325
	ori		x20, x0, %lo(is_rect_outside.2787.8841)	# 1325
	sw		x20, 0(x17)	# 1336
	sw		x8, 16(x17)	# 1336
	sw		x5, 12(x17)	# 1336
	sw		x9, 8(x17)	# 1336
	fsw		f1, 4(x17)	# 1336
	addi	x20, x3, 0	# 1336
	addi	x3, x3, 16	# 1336
	lui		x25, %hi(is_plane_outside.2792.8846)	# 1336
	ori		x25, x0, %lo(is_plane_outside.2792.8846)	# 1336
	sw		x25, 0(x20)	# 1342
	sw		x12, 12(x20)	# 1342
	sw		x5, 8(x20)	# 1342
	fsw		f1, 4(x20)	# 1342
	addi	x12, x3, 0	# 1342
	addi	x3, x3, 20	# 1342
	lui		x25, %hi(is_second_outside.2797.8851)	# 1342
	ori		x25, x0, %lo(is_second_outside.2797.8851)	# 1342
	sw		x25, 0(x12)	# 1349
	sw		x22, 16(x12)	# 1349
	sw		x23, 12(x12)	# 1349
	sw		x5, 8(x12)	# 1349
	fsw		f1, 4(x12)	# 1349
	addi	x22, x3, 0	# 1349
	addi	x3, x3, 28	# 1349
	lui		x25, %hi(is_outside.2802.8856)	# 1349
	ori		x25, x0, %lo(is_outside.2802.8856)	# 1349
	sw		x25, 0(x22)	# 1363
	sw		x12, 24(x22)	# 1363
	sw		x17, 20(x22)	# 1363
	sw		x20, 16(x22)	# 1363
	sw		x8, 12(x22)	# 1363
	sw		x5, 8(x22)	# 1363
	sw		x9, 4(x22)	# 1363
	addi	x12, x3, 0	# 1363
	addi	x3, x3, 20	# 1363
	lui		x17, %hi(check_all_inside.2807.8861)	# 1363
	ori		x17, x0, %lo(check_all_inside.2807.8861)	# 1363
	sw		x17, 0(x12)	# 1383
	sw		x22, 16(x12)	# 1383
	sw		x21, 12(x12)	# 1383
	sw		x5, 8(x12)	# 1383
	sw		x9, 4(x12)	# 1383
	addi	x17, x3, 0	# 1383
	addi	x3, x3, 32	# 1383
	lui		x20, %hi(shadow_check_and_group.2813.8867)	# 1383
	ori		x20, x0, %lo(shadow_check_and_group.2813.8867)	# 1383
	sw		x20, 0(x17)	# 1413
	sw		x31, 28(x17)	# 1413
	lw		x20, -96(x2)	# 1413
	sw		x20, 24(x17)	# 1413
	sw		x12, 20(x17)	# 1413
	sw		x8, 16(x17)	# 1413
	sw		x21, 12(x17)	# 1413
	sw		x5, 8(x17)	# 1413
	sw		x9, 4(x17)	# 1413
	addi	x22, x3, 0	# 1413
	addi	x3, x3, 20	# 1413
	lui		x25, %hi(shadow_check_one_or_group.2816.8870)	# 1413
	ori		x25, x0, %lo(shadow_check_one_or_group.2816.8870)	# 1413
	sw		x25, 0(x22)	# 1428
	sw		x17, 16(x22)	# 1428
	sw		x21, 12(x22)	# 1428
	sw		x5, 8(x22)	# 1428
	sw		x9, 4(x22)	# 1428
	addi	x17, x3, 0	# 1428
	addi	x3, x3, 28	# 1428
	lui		x25, %hi(shadow_check_one_or_matrix.2819.8873)	# 1428
	ori		x25, x0, %lo(shadow_check_one_or_matrix.2819.8873)	# 1428
	sw		x25, 0(x17)	# 1464
	sw		x31, 24(x17)	# 1464
	sw		x22, 20(x17)	# 1464
	sw		x20, 16(x17)	# 1464
	sw		x21, 12(x17)	# 1464
	sw		x5, 8(x17)	# 1464
	sw		x9, 4(x17)	# 1464
	addi	x22, x3, 0	# 1464
	addi	x3, x3, 32	# 1464
	lui		x25, %hi(solve_each_element.2822.8876)	# 1464
	ori		x25, x0, %lo(solve_each_element.2822.8876)	# 1464
	sw		x25, 0(x22)	# 1505
	sw		x24, 28(x22)	# 1505
	sw		x12, 24(x22)	# 1505
	sw		x8, 20(x22)	# 1505
	sw		x21, 16(x22)	# 1505
	sw		x5, 12(x22)	# 1505
	sw		x9, 8(x22)	# 1505
	fsw		f1, 4(x22)	# 1505
	addi	x25, x3, 0	# 1505
	addi	x3, x3, 20	# 1505
	lui		x31, %hi(solve_one_or_network.2826.8880)	# 1505
	ori		x31, x0, %lo(solve_one_or_network.2826.8880)	# 1505
	sw		x31, 0(x25)	# 1515
	sw		x22, 16(x25)	# 1515
	sw		x21, 12(x25)	# 1515
	sw		x5, 8(x25)	# 1515
	sw		x9, 4(x25)	# 1515
	addi	x22, x3, 0	# 1515
	addi	x3, x3, 24	# 1515
	lui		x31, %hi(trace_or_matrix.2830.8884)	# 1515
	ori		x31, x0, %lo(trace_or_matrix.2830.8884)	# 1515
	sw		x31, 0(x22)	# 1542
	sw		x24, 20(x22)	# 1542
	sw		x25, 16(x22)	# 1542
	sw		x21, 12(x22)	# 1542
	sw		x5, 8(x22)	# 1542
	sw		x9, 4(x22)	# 1542
	addi	x24, x3, 0	# 1542
	addi	x3, x3, 16	# 1542
	lui		x25, %hi(judge_intersection.2834.8888)	# 1542
	ori		x25, x0, %lo(judge_intersection.2834.8888)	# 1542
	sw		x25, 0(x24)	# 1557
	sw		x22, 12(x24)	# 1557
	sw		x5, 8(x24)	# 1557
	flw		f2, -60(x2)	# 1557
	fsw		f2, 4(x24)	# 1557
	addi	x22, x3, 0	# 1557
	addi	x3, x3, 32	# 1557
	lui		x25, %hi(solve_each_element_fast.2836.8890)	# 1557
	ori		x25, x0, %lo(solve_each_element_fast.2836.8890)	# 1557
	sw		x25, 0(x22)	# 1598
	sw		x27, 28(x22)	# 1598
	sw		x12, 24(x22)	# 1598
	sw		x8, 20(x22)	# 1598
	sw		x21, 16(x22)	# 1598
	sw		x5, 12(x22)	# 1598
	sw		x9, 8(x22)	# 1598
	fsw		f1, 4(x22)	# 1598
	addi	x12, x3, 0	# 1598
	addi	x3, x3, 20	# 1598
	lui		x25, %hi(solve_one_or_network_fast.2840.8894)	# 1598
	ori		x25, x0, %lo(solve_one_or_network_fast.2840.8894)	# 1598
	sw		x25, 0(x12)	# 1608
	sw		x22, 16(x12)	# 1608
	sw		x21, 12(x12)	# 1608
	sw		x5, 8(x12)	# 1608
	sw		x9, 4(x12)	# 1608
	addi	x22, x3, 0	# 1608
	addi	x3, x3, 24	# 1608
	lui		x25, %hi(trace_or_matrix_fast.2844.8898)	# 1608
	ori		x25, x0, %lo(trace_or_matrix_fast.2844.8898)	# 1608
	sw		x25, 0(x22)	# 1632
	sw		x27, 20(x22)	# 1632
	sw		x12, 16(x22)	# 1632
	sw		x21, 12(x22)	# 1632
	sw		x5, 8(x22)	# 1632
	sw		x9, 4(x22)	# 1632
	addi	x12, x3, 0	# 1632
	addi	x3, x3, 16	# 1632
	lui		x25, %hi(judge_intersection_fast.2848.8902)	# 1632
	ori		x25, x0, %lo(judge_intersection_fast.2848.8902)	# 1632
	sw		x25, 0(x12)	# 1653
	sw		x22, 12(x12)	# 1653
	sw		x5, 8(x12)	# 1653
	fsw		f2, 4(x12)	# 1653
	addi	x22, x3, 0	# 1653
	addi	x3, x3, 24	# 1653
	lui		x25, %hi(get_nvector_rect.2850.8904)	# 1653
	ori		x25, x0, %lo(get_nvector_rect.2850.8904)	# 1653
	sw		x25, 0(x22)	# 1661
	sw		x4, 20(x22)	# 1661
	sw		x8, 16(x22)	# 1661
	sw		x5, 12(x22)	# 1661
	sw		x9, 8(x22)	# 1661
	fsw		f1, 4(x22)	# 1661
	addi	x4, x3, 0	# 1661
	addi	x3, x3, 16	# 1661
	lui		x25, %hi(get_nvector_plane.2852.8906)	# 1661
	ori		x25, x0, %lo(get_nvector_plane.2852.8906)	# 1661
	sw		x25, 0(x4)	# 1669
	sw		x8, 12(x4)	# 1669
	sw		x5, 8(x4)	# 1669
	sw		x9, 4(x4)	# 1669
	addi	x25, x3, 0	# 1669
	addi	x3, x3, 20	# 1669
	lui		x27, %hi(get_nvector_second.2854.8908)	# 1669
	ori		x27, x0, %lo(get_nvector_second.2854.8908)	# 1669
	sw		x27, 0(x25)	# 1707
	sw		x10, 16(x25)	# 1707
	sw		x8, 12(x25)	# 1707
	sw		x5, 8(x25)	# 1707
	sw		x9, 4(x25)	# 1707
	addi	x27, x3, 0	# 1707
	addi	x3, x3, 40	# 1707
	lui		x31, %hi(utexture.2859.8910)	# 1707
	ori		x31, x0, %lo(utexture.2859.8910)	# 1707
	sw		x31, 0(x27)	# 1785
	sw		x18, 36(x27)	# 1785
	sw		x19, 32(x27)	# 1785
	lw		x31, 0(x2)	# 1785
	sw		x31, 28(x27)	# 1785
	sw		x8, 24(x27)	# 1785
	sw		x23, 20(x27)	# 1785
	sw		x5, 16(x27)	# 1785
	sw		x9, 12(x27)	# 1785
	flw		f2, -36(x2)	# 1785
	fsw		f2, 8(x27)	# 1785
	fsw		f1, 4(x27)	# 1785
	addi	x20, x3, 0	# 1785
	addi	x3, x3, 24	# 1785
	sw		x26, -116(x2)	# 1785
	lui		x26, %hi(add_light.2862.8913)	# 1785
	ori		x26, x0, %lo(add_light.2862.8913)	# 1785
	sw		x26, 0(x20)	# 1802
	sw		x13, 20(x20)	# 1802
	sw		x8, 16(x20)	# 1802
	sw		x5, 12(x20)	# 1802
	sw		x9, 8(x20)	# 1802
	fsw		f1, 4(x20)	# 1802
	addi	x26, x3, 0	# 1802
	addi	x3, x3, 28	# 1802
	lui		x31, %hi(trace_reflections.2866.8917)	# 1802
	ori		x31, x0, %lo(trace_reflections.2866.8917)	# 1802
	sw		x31, 0(x26)	# 1831
	sw		x11, 24(x26)	# 1831
	sw		x17, 20(x26)	# 1831
	sw		x12, 16(x26)	# 1831
	sw		x20, 12(x26)	# 1831
	sw		x5, 8(x26)	# 1831
	sw		x9, 4(x26)	# 1831
	addi	x31, x3, 0	# 1831
	addi	x3, x3, 76	# 1831
	lui		x19, %hi(trace_ray.2871.8922)	# 1831
	ori		x19, x0, %lo(trace_ray.2871.8922)	# 1831
	sw		x19, 0(x31)	# 1924
	sw		x15, 72(x31)	# 1924
	sw		x11, 68(x31)	# 1924
	sw		x6, 64(x31)	# 1924
	sw		x13, 60(x31)	# 1924
	sw		x27, 56(x31)	# 1924
	sw		x26, 52(x31)	# 1924
	sw		x17, 48(x31)	# 1924
	sw		x14, 44(x31)	# 1924
	sw		x24, 40(x31)	# 1924
	sw		x25, 36(x31)	# 1924
	sw		x22, 32(x31)	# 1924
	sw		x4, 28(x31)	# 1924
	sw		x20, 24(x31)	# 1924
	sw		x8, 20(x31)	# 1924
	sw		x21, 16(x31)	# 1924
	sw		x5, 12(x31)	# 1924
	sw		x9, 8(x31)	# 1924
	fsw		f1, 4(x31)	# 1924
	addi	x15, x3, 0	# 1924
	addi	x3, x3, 52	# 1924
	lui		x19, %hi(trace_diffuse_ray.2877.8928)	# 1924
	ori		x19, x0, %lo(trace_diffuse_ray.2877.8928)	# 1924
	sw		x19, 0(x15)	# 1943
	sw		x11, 48(x15)	# 1943
	sw		x13, 44(x15)	# 1943
	sw		x27, 40(x15)	# 1943
	sw		x17, 36(x15)	# 1943
	sw		x12, 32(x15)	# 1943
	sw		x25, 28(x15)	# 1943
	sw		x22, 24(x15)	# 1943
	sw		x4, 20(x15)	# 1943
	sw		x8, 16(x15)	# 1943
	sw		x5, 12(x15)	# 1943
	sw		x9, 8(x15)	# 1943
	fsw		f1, 4(x15)	# 1943
	addi	x4, x3, 0	# 1943
	addi	x3, x3, 24	# 1943
	lui		x12, %hi(iter_trace_diffuse_rays.2880.8931)	# 1943
	ori		x12, x0, %lo(iter_trace_diffuse_rays.2880.8931)	# 1943
	sw		x12, 0(x4)	# 1969
	sw		x11, 20(x4)	# 1969
	sw		x15, 16(x4)	# 1969
	sw		x8, 12(x4)	# 1969
	sw		x5, 8(x4)	# 1969
	fsw		f1, 4(x4)	# 1969
	addi	x12, x3, 0	# 1969
	addi	x3, x3, 32	# 1969
	lui		x13, %hi(trace_diffuse_ray_80percent.2889.8936)	# 1969
	ori		x13, x0, %lo(trace_diffuse_ray_80percent.2889.8936)	# 1969
	sw		x13, 0(x12)	# 1995
	sw		x6, 28(x12)	# 1995
	sw		x14, 24(x12)	# 1995
	sw		x4, 20(x12)	# 1995
	sw		x8, 16(x12)	# 1995
	sw		x23, 12(x12)	# 1995
	sw		x5, 8(x12)	# 1995
	sw		x9, 4(x12)	# 1995
	addi	x13, x3, 0	# 1995
	addi	x3, x3, 20	# 1995
	lui		x15, %hi(calc_diffuse_using_1point.2893.8940)	# 1995
	ori		x15, x0, %lo(calc_diffuse_using_1point.2893.8940)	# 1995
	sw		x15, 0(x13)	# 2014
	sw		x6, 16(x13)	# 2014
	sw		x16, 12(x13)	# 2014
	sw		x12, 8(x13)	# 2014
	sw		x5, 4(x13)	# 2014
	addi	x12, x3, 0	# 2014
	addi	x3, x3, 20	# 2014
	lui		x15, %hi(calc_diffuse_using_5points.2896.8943)	# 2014
	ori		x15, x0, %lo(calc_diffuse_using_5points.2896.8943)	# 2014
	sw		x15, 0(x12)	# 2034
	sw		x6, 16(x12)	# 2034
	lw		x15, -112(x2)	# 2034
	sw		x15, 12(x12)	# 2034
	sw		x16, 8(x12)	# 2034
	sw		x9, 4(x12)	# 2034
	addi	x15, x3, 0	# 2034
	addi	x3, x3, 16	# 2034
	lui		x16, %hi(do_without_neighbors.2902.8949)	# 2034
	ori		x16, x0, %lo(do_without_neighbors.2902.8949)	# 2034
	sw		x16, 0(x15)	# 2049
	sw		x13, 12(x15)	# 2049
	sw		x5, 8(x15)	# 2049
	sw		x9, 4(x15)	# 2049
	addi	x13, x3, 0	# 2049
	addi	x3, x3, 12	# 2049
	lui		x16, %hi(neighbors_exist.2905.8952)	# 2049
	ori		x16, x0, %lo(neighbors_exist.2905.8952)	# 2049
	sw		x16, 0(x13)	# 2068
	sw		x5, 8(x13)	# 2068
	sw		x9, 4(x13)	# 2068
	addi	x16, x3, 0	# 2068
	addi	x3, x3, 8	# 2068
	lui		x17, %hi(neighbors_are_available.2912.8956)	# 2068
	ori		x17, x0, %lo(neighbors_are_available.2912.8956)	# 2068
	sw		x17, 0(x16)	# 2086
	sw		x9, 4(x16)	# 2086
	addi	x17, x3, 0	# 2086
	addi	x3, x3, 24	# 2086
	lui		x19, %hi(try_exploit_neighbors.2918.8962)	# 2086
	ori		x19, x0, %lo(try_exploit_neighbors.2918.8962)	# 2086
	sw		x19, 0(x17)	# 2113
	sw		x16, 20(x17)	# 2113
	sw		x15, 16(x17)	# 2113
	sw		x12, 12(x17)	# 2113
	sw		x5, 8(x17)	# 2113
	sw		x9, 4(x17)	# 2113
	addi	x12, x3, 0	# 2113
	addi	x3, x3, 12	# 2113
	lui		x16, %hi(write_ppm_header.2925.8969)	# 2113
	ori		x16, x0, %lo(write_ppm_header.2925.8969)	# 2113
	sw		x16, 0(x12)	# 2127
	sw		x5, 8(x12)	# 2127
	sw		x9, 4(x12)	# 2127
	addi	x16, x3, 0	# 2127
	addi	x3, x3, 8	# 2127
	lui		x19, %hi(write_rgb_element_int.2927.8971)	# 2127
	ori		x19, x0, %lo(write_rgb_element_int.2927.8971)	# 2127
	sw		x19, 0(x16)	# 2133
	sw		x5, 4(x16)	# 2133
	addi	x19, x3, 0	# 2133
	addi	x3, x3, 8	# 2133
	lui		x20, %hi(write_rgb_element_char.2929.8973)	# 2133
	ori		x20, x0, %lo(write_rgb_element_char.2929.8973)	# 2133
	sw		x20, 0(x19)	# 2139
	sw		x5, 4(x19)	# 2139
	addi	x20, x3, 0	# 2139
	addi	x3, x3, 28	# 2139
	lui		x21, %hi(write_rgb.2931.8975)	# 2139
	ori		x21, x0, %lo(write_rgb.2931.8975)	# 2139
	sw		x21, 0(x20)	# 2162
	sw		x16, 24(x20)	# 2162
	sw		x19, 20(x20)	# 2162
	sw		x8, 16(x20)	# 2162
	sw		x23, 12(x20)	# 2162
	sw		x5, 8(x20)	# 2162
	sw		x9, 4(x20)	# 2162
	addi	x16, x3, 0	# 2162
	addi	x3, x3, 28	# 2162
	lui		x19, %hi(pretrace_diffuse_rays.2933.8977)	# 2162
	ori		x19, x0, %lo(pretrace_diffuse_rays.2933.8977)	# 2162
	sw		x19, 0(x16)	# 2192
	sw		x6, 24(x16)	# 2192
	sw		x14, 20(x16)	# 2192
	sw		x4, 16(x16)	# 2192
	sw		x8, 12(x16)	# 2192
	sw		x5, 8(x16)	# 2192
	sw		x9, 4(x16)	# 2192
	addi	x4, x3, 0	# 2192
	addi	x3, x3, 40	# 2192
	lui		x14, %hi(pretrace_pixels.2936.8980)	# 2192
	ori		x14, x0, %lo(pretrace_pixels.2936.8980)	# 2192
	sw		x14, 0(x4)	# 2217
	sw		x10, 36(x4)	# 2217
	sw		x6, 32(x4)	# 2217
	sw		x31, 28(x4)	# 2217
	sw		x16, 24(x4)	# 2217
	lw		x10, -80(x2)	# 2217
	sw		x10, 20(x4)	# 2217
	sw		x8, 16(x4)	# 2217
	sw		x5, 12(x4)	# 2217
	sw		x9, 8(x4)	# 2217
	fsw		f1, 4(x4)	# 2217
	addi	x14, x3, 0	# 2217
	addi	x3, x3, 20	# 2217
	lui		x16, %hi(pretrace_line.2943.8987)	# 2217
	ori		x16, x0, %lo(pretrace_line.2943.8987)	# 2217
	sw		x16, 0(x14)	# 2233
	sw		x4, 16(x14)	# 2233
	sw		x8, 12(x14)	# 2233
	sw		x5, 8(x14)	# 2233
	sw		x9, 4(x14)	# 2233
	addi	x4, x3, 0	# 2233
	addi	x3, x3, 32	# 2233
	lui		x16, %hi(scan_pixel.2947.8991)	# 2233
	ori		x16, x0, %lo(scan_pixel.2947.8991)	# 2233
	sw		x16, 0(x4)	# 2253
	sw		x20, 28(x4)	# 2253
	sw		x6, 24(x4)	# 2253
	sw		x17, 20(x4)	# 2253
	sw		x13, 16(x4)	# 2253
	sw		x15, 12(x4)	# 2253
	sw		x5, 8(x4)	# 2253
	sw		x9, 4(x4)	# 2253
	addi	x13, x3, 0	# 2253
	addi	x3, x3, 28	# 2253
	lui		x15, %hi(scan_line.2954.8998)	# 2253
	ori		x15, x0, %lo(scan_line.2954.8998)	# 2253
	sw		x15, 0(x13)	# 2271
	sw		x4, 24(x13)	# 2271
	sw		x14, 20(x13)	# 2271
	sw		x10, 16(x13)	# 2271
	sw		x8, 12(x13)	# 2271
	sw		x5, 8(x13)	# 2271
	sw		x9, 4(x13)	# 2271
	addi	x4, x3, 0	# 2271
	addi	x3, x3, 24	# 2271
	lui		x15, %hi(create_float5x3array.2961.9005)	# 2271
	ori		x15, x0, %lo(create_float5x3array.2961.9005)	# 2271
	sw		x15, 0(x4)	# 2283
	sw		x10, 20(x4)	# 2283
	sw		x8, 16(x4)	# 2283
	sw		x23, 12(x4)	# 2283
	sw		x9, 8(x4)	# 2283
	fsw		f1, 4(x4)	# 2283
	addi	x15, x3, 0	# 2283
	addi	x3, x3, 28	# 2283
	lui		x16, %hi(create_pixel.2963.9007)	# 2283
	ori		x16, x0, %lo(create_pixel.2963.9007)	# 2283
	sw		x16, 0(x15)	# 2296
	sw		x4, 24(x15)	# 2296
	sw		x10, 20(x15)	# 2296
	sw		x23, 16(x15)	# 2296
	sw		x5, 12(x15)	# 2296
	sw		x9, 8(x15)	# 2296
	fsw		f1, 4(x15)	# 2296
	addi	x4, x3, 0	# 2296
	addi	x3, x3, 16	# 2296
	lui		x16, %hi(init_line_elements.2965.9009)	# 2296
	ori		x16, x0, %lo(init_line_elements.2965.9009)	# 2296
	sw		x16, 0(x4)	# 2305
	sw		x15, 12(x4)	# 2305
	sw		x5, 8(x4)	# 2305
	sw		x9, 4(x4)	# 2305
	addi	x16, x3, 0	# 2305
	addi	x3, x3, 20	# 2305
	lui		x17, %hi(create_pixelline.2968.9012)	# 2305
	ori		x17, x0, %lo(create_pixelline.2968.9012)	# 2305
	sw		x17, 0(x16)	# 2324
	sw		x4, 16(x16)	# 2324
	sw		x15, 12(x16)	# 2324
	sw		x8, 8(x16)	# 2324
	sw		x5, 4(x16)	# 2324
	addi	x4, x3, 0	# 2324
	addi	x3, x3, 16	# 2324
	lui		x15, %hi(adjust_position.2972.9014)	# 2324
	ori		x15, x0, %lo(adjust_position.2972.9014)	# 2324
	sw		x15, 0(x4)	# 2333
	sw		x18, 12(x4)	# 2333
	lw		x15, -4(x2)	# 2333
	sw		x15, 8(x4)	# 2333
	lw		x15, 0(x2)	# 2333
	sw		x15, 4(x4)	# 2333
	addi	x15, x3, 0	# 2333
	addi	x3, x3, 24	# 2333
	lui		x17, %hi(calc_dirvec.2975.9017)	# 2333
	ori		x17, x0, %lo(calc_dirvec.2975.9017)	# 2333
	sw		x17, 0(x15)	# 2354
	sw		x4, 20(x15)	# 2354
	sw		x10, 16(x15)	# 2354
	sw		x8, 12(x15)	# 2354
	sw		x5, 8(x15)	# 2354
	sw		x9, 4(x15)	# 2354
	addi	x4, x3, 0	# 2354
	addi	x3, x3, 28	# 2354
	lui		x17, %hi(calc_dirvecs.2983.9025)	# 2354
	ori		x17, x0, %lo(calc_dirvecs.2983.9025)	# 2354
	sw		x17, 0(x4)	# 2368
	sw		x15, 24(x4)	# 2368
	sw		x10, 20(x4)	# 2368
	sw		x8, 16(x4)	# 2368
	sw		x5, 12(x4)	# 2368
	sw		x9, 8(x4)	# 2368
	fsw		f1, 4(x4)	# 2368
	addi	x15, x3, 0	# 2368
	addi	x3, x3, 24	# 2368
	lui		x17, %hi(calc_dirvec_rows.2988.9030)	# 2368
	ori		x17, x0, %lo(calc_dirvec_rows.2988.9030)	# 2368
	sw		x17, 0(x15)	# 2387
	sw		x4, 20(x15)	# 2387
	sw		x10, 16(x15)	# 2387
	sw		x8, 12(x15)	# 2387
	sw		x5, 8(x15)	# 2387
	sw		x9, 4(x15)	# 2387
	addi	x4, x3, 0	# 2387
	addi	x3, x3, 20	# 2387
	lui		x10, %hi(create_dirvec_elements.2994.9034)	# 2387
	ori		x10, x0, %lo(create_dirvec_elements.2994.9034)	# 2387
	sw		x10, 0(x4)	# 2394
	sw		x23, 16(x4)	# 2394
	sw		x5, 12(x4)	# 2394
	sw		x9, 8(x4)	# 2394
	fsw		f1, 4(x4)	# 2394
	addi	x10, x3, 0	# 2394
	addi	x3, x3, 24	# 2394
	lui		x17, %hi(create_dirvecs.2997.9037)	# 2394
	ori		x17, x0, %lo(create_dirvecs.2997.9037)	# 2394
	sw		x17, 0(x10)	# 2406
	sw		x4, 20(x10)	# 2406
	sw		x23, 16(x10)	# 2406
	sw		x5, 12(x10)	# 2406
	sw		x9, 8(x10)	# 2406
	fsw		f1, 4(x10)	# 2406
	addi	x4, x3, 0	# 2406
	addi	x3, x3, 16	# 2406
	lui		x17, %hi(init_dirvec_constants.2999.9039)	# 2406
	ori		x17, x0, %lo(init_dirvec_constants.2999.9039)	# 2406
	sw		x17, 0(x4)	# 2413
	lw		x17, -116(x2)	# 2413
	sw		x17, 12(x4)	# 2413
	sw		x5, 8(x4)	# 2413
	sw		x9, 4(x4)	# 2413
	addi	x18, x3, 0	# 2413
	addi	x3, x3, 16	# 2413
	lui		x19, %hi(init_vecset_constants.3002.9042)	# 2413
	ori		x19, x0, %lo(init_vecset_constants.3002.9042)	# 2413
	sw		x19, 0(x18)	# 2431
	sw		x4, 12(x18)	# 2431
	sw		x5, 8(x18)	# 2431
	sw		x9, 4(x18)	# 2431
	addi	x4, x3, 0	# 2431
	addi	x3, x3, 28	# 2431
	lui		x19, %hi(add_reflection.3006.9044)	# 2431
	ori		x19, x0, %lo(add_reflection.3006.9044)	# 2431
	sw		x19, 0(x4)	# 2440
	sw		x17, 24(x4)	# 2440
	sw		x8, 20(x4)	# 2440
	sw		x23, 16(x4)	# 2440
	sw		x5, 12(x4)	# 2440
	sw		x9, 8(x4)	# 2440
	fsw		f1, 4(x4)	# 2440
	addi	x19, x3, 0	# 2440
	addi	x3, x3, 24	# 2440
	lui		x20, %hi(setup_rect_reflection.3013.9051)	# 2440
	ori		x20, x0, %lo(setup_rect_reflection.3013.9051)	# 2440
	sw		x20, 0(x19)	# 2454
	sw		x4, 20(x19)	# 2454
	sw		x8, 16(x19)	# 2454
	sw		x23, 12(x19)	# 2454
	sw		x5, 8(x19)	# 2454
	sw		x9, 4(x19)	# 2454
	addi	x20, x3, 0	# 2454
	addi	x3, x3, 24	# 2454
	lui		x21, %hi(setup_surface_reflection.3016.9054)	# 2454
	ori		x21, x0, %lo(setup_surface_reflection.3016.9054)	# 2454
	sw		x21, 0(x20)	# 2469
	sw		x11, 20(x20)	# 2469
	sw		x4, 16(x20)	# 2469
	sw		x8, 12(x20)	# 2469
	sw		x5, 8(x20)	# 2469
	sw		x9, 4(x20)	# 2469
	addi	x4, x3, 0	# 2469
	addi	x3, x3, 24	# 2469
	lui		x11, %hi(setup_reflections.3019.9057)	# 2469
	ori		x11, x0, %lo(setup_reflections.3019.9057)	# 2469
	sw		x11, 0(x4)	# 2491
	sw		x20, 20(x4)	# 2491
	sw		x19, 16(x4)	# 2491
	sw		x8, 12(x4)	# 2491
	sw		x5, 8(x4)	# 2491
	sw		x9, 4(x4)	# 2491
	addi	x27, x3, 0	# 2491
	addi	x3, x3, 64	# 2491
	lui		x11, %hi(rt.3021.9059)	# 2491
	ori		x11, x0, %lo(rt.3021.9059)	# 2491
	sw		x11, 0(x27)	# 2512
	sw		x12, 60(x27)	# 2512
	sw		x6, 56(x27)	# 2512
	sw		x4, 52(x27)	# 2512
	sw		x13, 48(x27)	# 2512
	lw		x4, -108(x2)	# 2512
	sw		x4, 44(x27)	# 2512
	sw		x14, 40(x27)	# 2512
	lw		x4, -96(x2)	# 2512
	sw		x4, 36(x27)	# 2512
	sw		x17, 32(x27)	# 2512
	sw		x18, 28(x27)	# 2512
	sw		x16, 24(x27)	# 2512
	sw		x10, 20(x27)	# 2512
	sw		x15, 16(x27)	# 2512
	sw		x8, 12(x27)	# 2512
	sw		x5, 8(x27)	# 2512
	sw		x9, 4(x27)	# 2512
	addi	x4, x0, 128	# 2512
	addi	x6, x23, 0
	addi	x5, x4, 0
	sw		x1, -120(x2)	# 2512
	addi	x2, x2, -124	# 2512
	lw		x31, 0(x27)	# 2512
	jalr	x1, x31, 0	# 2512
	addi	x2, x2, 124	# 2512
	lw		x1, -120(x2)	# 2512
	EXIT	
