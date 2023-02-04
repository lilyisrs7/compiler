l.18237:	# 1.000000
	.word	1.000000
l.18422:	# 0.000000
	.word	0.000000
l.18247:	# 0.500000
	.word	0.500000
l.18405:	# -1.000000
	.word	-1.000000
l.18958:	# -0.100000
	.word	-0.100000
l.18279:	# 0.017453
	.word	0.017453
l.19355:	# 100000000.000000
	.word	100000000.000000
l.18906:	# 0.010000
	.word	0.010000
l.19642:	# 0.100000
	.word	0.100000
l.18264:	# 0.200000
	.word	0.200000
l.19287:	# 3.141593
	.word	3.141593
l.19285:	# 30.000000
	.word	30.000000
l.18249:	# 0.041664
	.word	0.041664
l.18251:	# 0.001370
	.word	0.001370
l.19282:	# 15.000000
	.word	15.000000
l.19314:	# 10.000000
	.word	10.000000
l.18345:	# 2.000000
	.word	2.000000
l.20449:	# 0.900000
	.word	0.900000
l.20711:	# 0.785398
	.word	0.785398
l.20709:	# 1.570796
	.word	1.570796
l.20707:	# 6.283185
	.word	6.283185
l.20705:	# 3.141593
	.word	3.141593
l.20690:	# 1000000000.000000
	.word	1000000000.000000
l.20686:	# 255.000000
	.word	255.000000
l.19337:	# 20.000000
	.word	20.000000
l.19335:	# 0.050000
	.word	0.050000
l.18904:	# -0.200000
	.word	-0.200000
l.18240:	# 0.166667
	.word	0.166667
l.18242:	# 0.008333
	.word	0.008333
l.18244:	# 0.000196
	.word	0.000196
l.18257:	# 2.437500
	.word	2.437500
l.18260:	# 0.437500
	.word	0.437500
l.18262:	# 0.333333
	.word	0.333333
l.19280:	# 0.000100
	.word	0.000100
l.19695:	# -150.000000
	.word	-150.000000
l.19299:	# 0.150000
	.word	0.150000
l.19324:	# 0.250000
	.word	0.250000
l.19302:	# 0.300000
	.word	0.300000
l.19540:	# -2.000000
	.word	-2.000000
l.19512:	# 0.003906
	.word	0.003906
l.19772:	# 150.000000
	.word	150.000000
l.20603:	# 128.000000
	.word	128.000000
l.18285:	# -200.000000
	.word	-200.000000
l.18281:	# 200.000000
	.word	200.000000
l.18270:	# 0.089764
	.word	0.089764
l.18268:	# 0.111111
	.word	0.111111
l.18266:	# 0.142857
	.word	0.142857
int_of_float.2517.12307:
	lw		x4, 8(x29)	# 129
	flw		f2, 4(x29)	# 129
	fle		x31, f2, f1	# 129
	beq		x31, x0, fle_else.22741	# 129
	fadd	f2, f0, f16	# 130
	fle		x31, f2, f1	# 130
	beq		x31, x0, fle_else.22742	# 130
	fsub	f1, f1, f2	# 130
	sw		x4, 0(x2)	# 130
	sw		x1, -4(x2)	# 130
	addi	x2, x2, -8	# 130
	lw		x31, 0(x29)	# 130
	jalr	x1, x31, 0	# 130
	addi	x2, x2, 8	# 130
	lw		x1, -4(x2)	# 130
	lw		x5, 0(x2)	# 130
	add		x4, x4, x5	# 130
	jalr	x0, x1, 0	# 130
fle_else.22742:
	addi	x4, x0, 0	# 130
	jalr	x0, x1, 0	# 130
fle_else.22741:
	fsub	f1, f0, f1	# 131
	sw		x1, -4(x2)	# 131
	addi	x2, x2, -8	# 131
	lw		x31, 0(x29)	# 131
	jalr	x1, x31, 0	# 131
	addi	x2, x2, 8	# 131
	lw		x1, -4(x2)	# 131
	sub		x4, x0, x4	# 131
	jalr	x0, x1, 0	# 131
float_of_int.2519.12309:
	lw		x5, 12(x29)	# 133
	lw		x6, 8(x29)	# 133
	flw		f1, 4(x29)	# 133
	ble		x5, x4, ble.22743	# 133
	sub		x4, x0, x4	# 135
	sw		x1, 0(x2)	# 135
	addi	x2, x2, -4	# 135
	lw		x31, 0(x29)	# 135
	jalr	x1, x31, 0	# 135
	addi	x2, x2, 4	# 135
	lw		x1, 0(x2)	# 135
	fsub	f1, f0, f1	# 135
	jalr	x0, x1, 0	# 135
ble.22743:
	ble		x6, x4, ble.22744	# 134
	jalr	x0, x1, 0	# 134
ble.22744:
	sub		x4, x4, x6	# 134
	sw		x1, 0(x2)	# 134
	addi	x2, x2, -4	# 134
	lw		x31, 0(x29)	# 134
	jalr	x1, x31, 0	# 134
	addi	x2, x2, 4	# 134
	lw		x1, 0(x2)	# 134
	fadd	f2, f0, f16	# 134
	fadd	f1, f1, f2	# 134
	jalr	x0, x1, 0	# 134
sin.2531.12315:
	flw		f2, 20(x29)	# 165
	flw		f3, 16(x29)	# 165
	flw		f4, 12(x29)	# 165
	flw		f5, 8(x29)	# 165
	flw		f6, 4(x29)	# 165
	fle		x31, f6, f1	# 165
	beq		x31, x0, fle_else.22745	# 165
	fle		x31, f4, f1	# 166
	beq		x31, x0, fle_else.22746	# 166
	fsub	f1, f1, f4	# 166
	lw		x31, 0(x29)	# 166
	jalr	x0, x31, 0	# 166
fle_else.22746:
	fle		x31, f5, f1	# 167
	beq		x31, x0, fle_else.22747	# 167
	fsub	f1, f1, f5	# 167
	sw		x1, 0(x2)	# 167
	addi	x2, x2, -4	# 167
	lw		x31, 0(x29)	# 167
	jalr	x1, x31, 0	# 167
	addi	x2, x2, 4	# 167
	lw		x1, 0(x2)	# 167
	fsub	f1, f0, f1	# 167
	jalr	x0, x1, 0	# 167
fle_else.22747:
	fle		x31, f1, f3	# 168
	beq		x31, x0, fle_else.22748	# 168
	fle		x31, f2, f1	# 169
	beq		x31, x0, fle_else.22749	# 169
	fsub	f1, f3, f1	# 169
	fmul	f1, f1, f1	# 160
	fmul	f2, f1, f1	# 161
	fadd	f3, f0, f16	# 162
	fadd	f4, f0, f17	# 162
	fmul	f4, f4, f1	# 162
	fsub	f3, f3, f4	# 162
	fadd	f4, f0, f27	# 162
	fmul	f4, f4, f2	# 162
	fadd	f3, f3, f4	# 162
	fadd	f4, f0, f28	# 162
	fmul	f1, f4, f1	# 162
	fmul	f1, f1, f2	# 162
	fsub	f1, f3, f1	# 162
	jalr	x0, x1, 0	# 162
fle_else.22749:
	fmul	f2, f1, f1	# 155
	fmul	f3, f1, f2	# 156
	lui		x4, %hi(l.18240)	# 157
	ori		x4, x0, %lo(l.18240)	# 157
	flw		f4, 0(x4)	# 157
	fmul	f4, f4, f3	# 157
	fsub	f1, f1, f4	# 157
	lui		x4, %hi(l.18242)	# 157
	ori		x4, x0, %lo(l.18242)	# 157
	flw		f4, 0(x4)	# 157
	fmul	f4, f4, f2	# 157
	fmul	f4, f4, f3	# 157
	fadd	f1, f1, f4	# 157
	lui		x4, %hi(l.18244)	# 157
	ori		x4, x0, %lo(l.18244)	# 157
	flw		f4, 0(x4)	# 157
	fmul	f4, f4, f2	# 157
	fmul	f2, f4, f2	# 157
	fmul	f2, f2, f3	# 157
	fsub	f1, f1, f2	# 157
	jalr	x0, x1, 0	# 157
fle_else.22748:
	fsub	f1, f5, f1	# 168
	lw		x31, 0(x29)	# 168
	jalr	x0, x31, 0	# 168
fle_else.22745:
	fsub	f1, f0, f1	# 165
	sw		x1, 0(x2)	# 165
	addi	x2, x2, -4	# 165
	lw		x31, 0(x29)	# 165
	jalr	x1, x31, 0	# 165
	addi	x2, x2, 4	# 165
	lw		x1, 0(x2)	# 165
	fsub	f1, f0, f1	# 165
	jalr	x0, x1, 0	# 165
cos.2533.12317:
	lw		x4, 16(x29)	# 173
	flw		f2, 12(x29)	# 173
	flw		f3, 8(x29)	# 173
	flw		f4, 4(x29)	# 173
	fle		x31, f4, f1	# 173
	beq		x31, x0, fle_else.22750	# 173
	fle		x31, f1, f2	# 174
	beq		x31, x0, fle_else.22751	# 174
	fmul	f1, f1, f1	# 160
	fmul	f2, f1, f1	# 161
	fadd	f3, f0, f16	# 162
	fadd	f4, f0, f17	# 162
	fmul	f4, f4, f1	# 162
	fsub	f3, f3, f4	# 162
	fadd	f4, f0, f27	# 162
	fmul	f4, f4, f2	# 162
	fadd	f3, f3, f4	# 162
	fadd	f4, f0, f28	# 162
	fmul	f1, f4, f1	# 162
	fmul	f1, f1, f2	# 162
	fsub	f1, f3, f1	# 162
	jalr	x0, x1, 0	# 162
fle_else.22751:
	fsub	f1, f3, f1	# 174
	addi	x29, x4, 0
	lw		x31, 0(x29)	# 174
	jalr	x0, x31, 0	# 174
fle_else.22750:
	fsub	f1, f0, f1	# 173
	lw		x31, 0(x29)	# 173
	jalr	x0, x31, 0	# 173
atan.2535.12319:
	flw		f2, 12(x29)	# 178
	flw		f3, 8(x29)	# 178
	flw		f4, 4(x29)	# 178
	fle		x31, f4, f1	# 178
	beq		x31, x0, fle_else.22752	# 178
	lui		x4, %hi(l.18257)	# 179
	ori		x4, x0, %lo(l.18257)	# 179
	flw		f4, 0(x4)	# 179
	fle		x31, f1, f4	# 179
	beq		x31, x0, fle_else.22753	# 179
	lui		x4, %hi(l.18260)	# 180
	ori		x4, x0, %lo(l.18260)	# 180
	flw		f3, 0(x4)	# 180
	fle		x31, f3, f1	# 180
	beq		x31, x0, fle_else.22754	# 180
	fadd	f3, f0, f16	# 180
	fsub	f4, f1, f3	# 180
	fadd	f1, f1, f3	# 180
	fdiv	f1, f4, f1	# 180
	fsw		f2, 0(x2)	# 180
	sw		x1, -4(x2)	# 180
	addi	x2, x2, -8	# 180
	lw		x31, 0(x29)	# 180
	jalr	x1, x31, 0	# 180
	addi	x2, x2, 8	# 180
	lw		x1, -4(x2)	# 180
	flw		f2, 0(x2)	# 180
	fadd	f1, f2, f1	# 180
	jalr	x0, x1, 0	# 180
fle_else.22754:
	fmul	f2, f1, f1	# 182
	fmul	f3, f1, f2	# 183
	fmul	f4, f2, f2	# 184
	lui		x4, %hi(l.18262)	# 185
	ori		x4, x0, %lo(l.18262)	# 185
	flw		f5, 0(x4)	# 185
	fmul	f5, f5, f3	# 185
	fsub	f1, f1, f5	# 185
	fadd	f5, f0, f24	# 185
	fmul	f5, f5, f2	# 185
	fmul	f5, f5, f3	# 185
	fadd	f1, f1, f5	# 185
	lui		x4, %hi(l.18266)	# 185
	ori		x4, x0, %lo(l.18266)	# 185
	flw		f5, 0(x4)	# 185
	fmul	f5, f5, f4	# 185
	fmul	f5, f5, f3	# 185
	fsub	f1, f1, f5	# 185
	lui		x4, %hi(l.18268)	# 186
	ori		x4, x0, %lo(l.18268)	# 186
	flw		f5, 0(x4)	# 186
	fmul	f2, f5, f2	# 186
	fmul	f2, f2, f4	# 186
	fmul	f2, f2, f3	# 186
	fadd	f1, f1, f2	# 185
	lui		x4, %hi(l.18270)	# 186
	ori		x4, x0, %lo(l.18270)	# 186
	flw		f2, 0(x4)	# 186
	fmul	f2, f2, f4	# 186
	fmul	f2, f2, f4	# 186
	fmul	f2, f2, f3	# 186
	fsub	f1, f1, f2	# 185
	jalr	x0, x1, 0	# 185
fle_else.22753:
	fadd	f2, f0, f16	# 179
	fdiv	f1, f2, f1	# 179
	fsw		f3, -4(x2)	# 179
	sw		x1, -8(x2)	# 179
	addi	x2, x2, -12	# 179
	lw		x31, 0(x29)	# 179
	jalr	x1, x31, 0	# 179
	addi	x2, x2, 12	# 179
	lw		x1, -8(x2)	# 179
	flw		f2, -4(x2)	# 179
	fsub	f1, f2, f1	# 179
	jalr	x0, x1, 0	# 179
fle_else.22752:
	fsub	f1, f0, f1	# 178
	sw		x1, -8(x2)	# 178
	addi	x2, x2, -12	# 178
	lw		x31, 0(x29)	# 178
	jalr	x1, x31, 0	# 178
	addi	x2, x2, 12	# 178
	lw		x1, -8(x2)	# 178
	fsub	f1, f0, f1	# 178
	jalr	x0, x1, 0	# 178
read_screen_settings.2663.12321:
	lw		x4, 24(x29)	# 684
	lw		x5, 20(x29)	# 684
	lw		x6, 16(x29)	# 684
	lw		x7, 12(x29)	# 684
	lw		x8, 8(x29)	# 684
	flw		f1, 4(x29)	# 684
	fsw		f1, 0(x2)	# 684
	sw		x4, -4(x2)	# 684
	sw		x5, -8(x2)	# 684
	sw		x6, -12(x2)	# 684
	sw		x8, -16(x2)	# 684
	sw		x7, -20(x2)	# 684
	sw		x1, -24(x2)	# 684
	addi	x2, x2, -28	# 684
	jal		x1, min_caml_read_float	# 684
	addi	x2, x2, 28	# 684
	lw		x1, -24(x2)	# 684
	lw		x4, -20(x2)	# 684
	mul		x5, x30, x4	# 684
	addi	x5, x5, 50288	# 684
	fsw		f1, 0(x5)	# 684
	sw		x1, -24(x2)	# 685
	addi	x2, x2, -28	# 685
	jal		x1, min_caml_read_float	# 685
	addi	x2, x2, 28	# 685
	lw		x1, -24(x2)	# 685
	lw		x4, -16(x2)	# 685
	mul		x5, x30, x4	# 685
	addi	x5, x5, 50288	# 685
	fsw		f1, 0(x5)	# 685
	sw		x1, -24(x2)	# 686
	addi	x2, x2, -28	# 686
	jal		x1, min_caml_read_float	# 686
	addi	x2, x2, 28	# 686
	lw		x1, -24(x2)	# 686
	lw		x4, -12(x2)	# 686
	mul		x5, x30, x4	# 686
	addi	x5, x5, 50288	# 686
	fsw		f1, 0(x5)	# 686
	sw		x1, -24(x2)	# 688
	addi	x2, x2, -28	# 688
	jal		x1, min_caml_read_float	# 688
	addi	x2, x2, 28	# 688
	lw		x1, -24(x2)	# 688
	fadd	f2, f0, f20	# 677
	fmul	f1, f1, f2	# 677
	lw		x29, -8(x2)	# 689
	fsw		f2, -24(x2)	# 689
	fsw		f1, -28(x2)	# 689
	sw		x1, -32(x2)	# 689
	addi	x2, x2, -36	# 689
	lw		x31, 0(x29)	# 689
	jalr	x1, x31, 0	# 689
	addi	x2, x2, 36	# 689
	lw		x1, -32(x2)	# 689
	flw		f2, -28(x2)	# 690
	lw		x29, -4(x2)	# 690
	fsw		f1, -32(x2)	# 690
	fadd	f1, f0, f2
	sw		x1, -36(x2)	# 690
	addi	x2, x2, -40	# 690
	lw		x31, 0(x29)	# 690
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
	lw		x29, -8(x2)	# 692
	fsw		f1, -40(x2)	# 692
	sw		x1, -44(x2)	# 692
	addi	x2, x2, -48	# 692
	lw		x31, 0(x29)	# 692
	jalr	x1, x31, 0	# 692
	addi	x2, x2, 48	# 692
	lw		x1, -44(x2)	# 692
	flw		f2, -40(x2)	# 693
	lw		x29, -4(x2)	# 693
	fsw		f1, -44(x2)	# 693
	fadd	f1, f0, f2
	sw		x1, -48(x2)	# 693
	addi	x2, x2, -52	# 693
	lw		x31, 0(x29)	# 693
	jalr	x1, x31, 0	# 693
	addi	x2, x2, 52	# 693
	lw		x1, -48(x2)	# 693
	flw		f2, -32(x2)	# 695
	fmul	f3, f2, f1	# 695
	lui		x4, %hi(l.18281)	# 695
	ori		x4, x0, %lo(l.18281)	# 695
	flw		f4, 0(x4)	# 695
	fmul	f3, f3, f4	# 695
	lw		x4, -20(x2)	# 695
	mul		x5, x30, x4	# 695
	addi	x5, x5, 50684	# 695
	fsw		f3, 0(x5)	# 695
	lui		x5, %hi(l.18285)	# 696
	ori		x5, x0, %lo(l.18285)	# 696
	flw		f3, 0(x5)	# 696
	flw		f5, -36(x2)	# 696
	fmul	f3, f5, f3	# 696
	lw		x5, -16(x2)	# 696
	mul		x6, x30, x5	# 696
	addi	x6, x6, 50684	# 696
	fsw		f3, 0(x6)	# 696
	flw		f3, -44(x2)	# 697
	fmul	f6, f2, f3	# 697
	fmul	f4, f6, f4	# 697
	lw		x6, -12(x2)	# 697
	mul		x7, x30, x6	# 697
	addi	x7, x7, 50684	# 697
	fsw		f4, 0(x7)	# 697
	mul		x7, x30, x4	# 699
	addi	x7, x7, 50660	# 699
	fsw		f3, 0(x7)	# 699
	mul		x7, x30, x5	# 700
	addi	x7, x7, 50660	# 700
	flw		f4, 0(x2)	# 700
	fsw		f4, 0(x7)	# 700
	fsub	f4, f0, f1	# 123
	mul		x7, x30, x6	# 701
	addi	x7, x7, 50660	# 701
	fsw		f4, 0(x7)	# 701
	fsub	f4, f0, f5	# 123
	fmul	f1, f4, f1	# 703
	mul		x7, x30, x4	# 703
	addi	x7, x7, 50672	# 703
	fsw		f1, 0(x7)	# 703
	fsub	f1, f0, f2	# 123
	mul		x7, x30, x5	# 704
	addi	x7, x7, 50672	# 704
	fsw		f1, 0(x7)	# 704
	fmul	f1, f4, f3	# 705
	mul		x7, x30, x6	# 705
	addi	x7, x7, 50672	# 705
	fsw		f1, 0(x7)	# 705
	mul		x7, x30, x4	# 707
	addi	x7, x7, 50288	# 707
	flw		f1, 0(x7)	# 707
	mul		x7, x30, x4	# 707
	addi	x7, x7, 50684	# 707
	flw		f2, 0(x7)	# 707
	fsub	f1, f1, f2	# 707
	mul		x4, x30, x4	# 707
	addi	x4, x4, 50300	# 707
	fsw		f1, 0(x4)	# 707
	mul		x4, x30, x5	# 708
	addi	x4, x4, 50288	# 708
	flw		f1, 0(x4)	# 708
	mul		x4, x30, x5	# 708
	addi	x4, x4, 50684	# 708
	flw		f2, 0(x4)	# 708
	fsub	f1, f1, f2	# 708
	mul		x4, x30, x5	# 708
	addi	x4, x4, 50300	# 708
	fsw		f1, 0(x4)	# 708
	mul		x4, x30, x6	# 709
	addi	x4, x4, 50288	# 709
	flw		f1, 0(x4)	# 709
	mul		x4, x30, x6	# 709
	addi	x4, x4, 50684	# 709
	flw		f2, 0(x4)	# 709
	fsub	f1, f1, f2	# 709
	mul		x4, x30, x6	# 709
	addi	x4, x4, 50300	# 709
	fsw		f1, 0(x4)	# 709
	jalr	x0, x1, 0	# 709
rotate_quadratic_matrix.2667.12323:
	lw		x6, 20(x29)	# 738
	lw		x7, 16(x29)	# 738
	lw		x8, 12(x29)	# 738
	lw		x9, 8(x29)	# 738
	lw		x10, 4(x29)	# 738
	mul		x11, x30, x9	# 738
	add		x11, x5, x11	# 738
	flw		f1, 0(x11)	# 738
	sw		x4, 0(x2)	# 738
	sw		x8, -4(x2)	# 738
	sw		x7, -8(x2)	# 738
	sw		x10, -12(x2)	# 738
	sw		x6, -16(x2)	# 738
	sw		x5, -20(x2)	# 738
	sw		x9, -24(x2)	# 738
	addi	x29, x7, 0
	sw		x1, -28(x2)	# 738
	addi	x2, x2, -32	# 738
	lw		x31, 0(x29)	# 738
	jalr	x1, x31, 0	# 738
	addi	x2, x2, 32	# 738
	lw		x1, -28(x2)	# 738
	lw		x4, -24(x2)	# 739
	mul		x5, x30, x4	# 739
	lw		x6, -20(x2)	# 739
	add		x5, x6, x5	# 739
	flw		f2, 0(x5)	# 739
	lw		x29, -16(x2)	# 739
	fsw		f1, -28(x2)	# 739
	fadd	f1, f0, f2
	sw		x1, -32(x2)	# 739
	addi	x2, x2, -36	# 739
	lw		x31, 0(x29)	# 739
	jalr	x1, x31, 0	# 739
	addi	x2, x2, 36	# 739
	lw		x1, -32(x2)	# 739
	lw		x4, -12(x2)	# 740
	mul		x5, x30, x4	# 740
	lw		x6, -20(x2)	# 740
	add		x5, x6, x5	# 740
	flw		f2, 0(x5)	# 740
	lw		x29, -8(x2)	# 740
	fsw		f1, -32(x2)	# 740
	fadd	f1, f0, f2
	sw		x1, -36(x2)	# 740
	addi	x2, x2, -40	# 740
	lw		x31, 0(x29)	# 740
	jalr	x1, x31, 0	# 740
	addi	x2, x2, 40	# 740
	lw		x1, -36(x2)	# 740
	lw		x4, -12(x2)	# 741
	mul		x5, x30, x4	# 741
	lw		x6, -20(x2)	# 741
	add		x5, x6, x5	# 741
	flw		f2, 0(x5)	# 741
	lw		x29, -16(x2)	# 741
	fsw		f1, -36(x2)	# 741
	fadd	f1, f0, f2
	sw		x1, -40(x2)	# 741
	addi	x2, x2, -44	# 741
	lw		x31, 0(x29)	# 741
	jalr	x1, x31, 0	# 741
	addi	x2, x2, 44	# 741
	lw		x1, -40(x2)	# 741
	lw		x4, -4(x2)	# 742
	mul		x5, x30, x4	# 742
	lw		x6, -20(x2)	# 742
	add		x5, x6, x5	# 742
	flw		f2, 0(x5)	# 742
	lw		x29, -8(x2)	# 742
	fsw		f1, -40(x2)	# 742
	fadd	f1, f0, f2
	sw		x1, -44(x2)	# 742
	addi	x2, x2, -48	# 742
	lw		x31, 0(x29)	# 742
	jalr	x1, x31, 0	# 742
	addi	x2, x2, 48	# 742
	lw		x1, -44(x2)	# 742
	lw		x4, -4(x2)	# 743
	mul		x5, x30, x4	# 743
	lw		x6, -20(x2)	# 743
	add		x5, x6, x5	# 743
	flw		f2, 0(x5)	# 743
	lw		x29, -16(x2)	# 743
	fsw		f1, -44(x2)	# 743
	fadd	f1, f0, f2
	sw		x1, -48(x2)	# 743
	addi	x2, x2, -52	# 743
	lw		x31, 0(x29)	# 743
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
	fsub	f2, f0, f5	# 123
	fmul	f5, f6, f3	# 754
	fmul	f3, f9, f3	# 755
	lw		x4, -24(x2)	# 758
	mul		x5, x30, x4	# 758
	lw		x6, 0(x2)	# 758
	add		x5, x6, x5	# 758
	flw		f6, 0(x5)	# 758
	lw		x5, -12(x2)	# 759
	mul		x7, x30, x5	# 759
	add		x7, x6, x7	# 759
	flw		f9, 0(x7)	# 759
	lw		x7, -4(x2)	# 760
	mul		x8, x30, x7	# 760
	add		x8, x6, x8	# 760
	flw		f10, 0(x8)	# 760
	fmul	f13, f4, f4	# 127
	fmul	f13, f6, f13	# 765
	fmul	f14, f12, f12	# 127
	fmul	f14, f9, f14	# 765
	fadd	f13, f13, f14	# 765
	fmul	f14, f2, f2	# 127
	fmul	f14, f10, f14	# 765
	fadd	f13, f13, f14	# 765
	mul		x8, x30, x4	# 765
	add		x8, x6, x8	# 765
	fsw		f13, 0(x8)	# 765
	fmul	f13, f8, f8	# 127
	fmul	f13, f6, f13	# 766
	fmul	f14, f7, f7	# 127
	fmul	f14, f9, f14	# 766
	fadd	f13, f13, f14	# 766
	fmul	f14, f5, f5	# 127
	fmul	f14, f10, f14	# 766
	fadd	f13, f13, f14	# 766
	mul		x8, x30, x5	# 766
	add		x8, x6, x8	# 766
	fsw		f13, 0(x8)	# 766
	fmul	f13, f11, f11	# 127
	fmul	f13, f6, f13	# 767
	fmul	f14, f1, f1	# 127
	fmul	f14, f9, f14	# 767
	fadd	f13, f13, f14	# 767
	fmul	f14, f3, f3	# 127
	fmul	f14, f10, f14	# 767
	fadd	f13, f13, f14	# 767
	mul		x8, x30, x7	# 767
	add		x6, x6, x8	# 767
	fsw		f13, 0(x6)	# 767
	lui		x6, %hi(l.18345)	# 770
	ori		x6, x0, %lo(l.18345)	# 770
	flw		f13, 0(x6)	# 770
	fmul	f14, f6, f8	# 770
	fmul	f14, f14, f11	# 770
	fmul	f15, f9, f7	# 770
	fmul	f15, f15, f1	# 770
	fadd	f14, f14, f15	# 770
	fmul	f15, f10, f5	# 770
	fmul	f15, f15, f3	# 770
	fadd	f14, f14, f15	# 770
	fmul	f14, f13, f14	# 770
	mul		x4, x30, x4	# 770
	lw		x6, -20(x2)	# 770
	add		x4, x6, x4	# 770
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
	mul		x4, x30, x5	# 771
	add		x4, x6, x4	# 771
	fsw		f1, 0(x4)	# 771
	fmul	f1, f4, f8	# 772
	fmul	f3, f9, f7	# 772
	fadd	f1, f1, f3	# 772
	fmul	f2, f2, f5	# 772
	fadd	f1, f1, f2	# 772
	fmul	f1, f13, f1	# 772
	mul		x4, x30, x7	# 772
	add		x4, x6, x4	# 772
	fsw		f1, 0(x4)	# 772
	jalr	x0, x1, 0	# 772
read_nth_object.2670.12326:
	lw		x5, 28(x29)	# 779
	lw		x6, 24(x29)	# 779
	lw		x7, 20(x29)	# 779
	lw		x8, 16(x29)	# 779
	lw		x9, 12(x29)	# 779
	lw		x10, 8(x29)	# 779
	flw		f1, 4(x29)	# 779
	sw		x5, 0(x2)	# 779
	sw		x4, -4(x2)	# 779
	sw		x6, -8(x2)	# 779
	sw		x10, -12(x2)	# 779
	sw		x9, -16(x2)	# 779
	fsw		f1, -20(x2)	# 779
	sw		x8, -24(x2)	# 779
	sw		x7, -28(x2)	# 779
	sw		x1, -32(x2)	# 779
	addi	x2, x2, -36	# 779
	jal		x1, min_caml_read_int	# 779
	addi	x2, x2, 36	# 779
	lw		x1, -32(x2)	# 779
	lw		x5, -28(x2)	# 780
	beq		x4, x5, beq.22757	# 780
	sw		x4, -32(x2)	# 782
	sw		x1, -36(x2)	# 782
	addi	x2, x2, -40	# 782
	jal		x1, min_caml_read_int	# 782
	addi	x2, x2, 40	# 782
	lw		x1, -36(x2)	# 782
	sw		x4, -36(x2)	# 783
	sw		x1, -40(x2)	# 783
	addi	x2, x2, -44	# 783
	jal		x1, min_caml_read_int	# 783
	addi	x2, x2, 44	# 783
	lw		x1, -40(x2)	# 783
	sw		x4, -40(x2)	# 784
	sw		x1, -44(x2)	# 784
	addi	x2, x2, -48	# 784
	jal		x1, min_caml_read_int	# 784
	addi	x2, x2, 48	# 784
	lw		x1, -44(x2)	# 784
	flw		f1, -20(x2)	# 786
	lw		x5, -24(x2)	# 786
	sw		x4, -44(x2)	# 786
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 786
	addi	x2, x2, -52	# 786
	jal		x1, min_caml_create_float_array	# 786
	addi	x2, x2, 52	# 786
	lw		x1, -48(x2)	# 786
	sw		x4, -48(x2)	# 787
	sw		x1, -52(x2)	# 787
	addi	x2, x2, -56	# 787
	jal		x1, min_caml_read_float	# 787
	addi	x2, x2, 56	# 787
	lw		x1, -52(x2)	# 787
	lw		x4, -16(x2)	# 787
	mul		x5, x30, x4	# 787
	lw		x6, -48(x2)	# 787
	add		x5, x6, x5	# 787
	fsw		f1, 0(x5)	# 787
	sw		x1, -52(x2)	# 788
	addi	x2, x2, -56	# 788
	jal		x1, min_caml_read_float	# 788
	addi	x2, x2, 56	# 788
	lw		x1, -52(x2)	# 788
	lw		x4, -12(x2)	# 788
	mul		x5, x30, x4	# 788
	lw		x6, -48(x2)	# 788
	add		x5, x6, x5	# 788
	fsw		f1, 0(x5)	# 788
	sw		x1, -52(x2)	# 789
	addi	x2, x2, -56	# 789
	jal		x1, min_caml_read_float	# 789
	addi	x2, x2, 56	# 789
	lw		x1, -52(x2)	# 789
	lw		x4, -8(x2)	# 789
	mul		x5, x30, x4	# 789
	lw		x6, -48(x2)	# 789
	add		x5, x6, x5	# 789
	fsw		f1, 0(x5)	# 789
	flw		f1, -20(x2)	# 791
	lw		x5, -24(x2)	# 791
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 791
	addi	x2, x2, -56	# 791
	jal		x1, min_caml_create_float_array	# 791
	addi	x2, x2, 56	# 791
	lw		x1, -52(x2)	# 791
	sw		x4, -52(x2)	# 792
	sw		x1, -56(x2)	# 792
	addi	x2, x2, -60	# 792
	jal		x1, min_caml_read_float	# 792
	addi	x2, x2, 60	# 792
	lw		x1, -56(x2)	# 792
	lw		x4, -16(x2)	# 792
	mul		x5, x30, x4	# 792
	lw		x6, -52(x2)	# 792
	add		x5, x6, x5	# 792
	fsw		f1, 0(x5)	# 792
	sw		x1, -56(x2)	# 793
	addi	x2, x2, -60	# 793
	jal		x1, min_caml_read_float	# 793
	addi	x2, x2, 60	# 793
	lw		x1, -56(x2)	# 793
	lw		x4, -12(x2)	# 793
	mul		x5, x30, x4	# 793
	lw		x6, -52(x2)	# 793
	add		x5, x6, x5	# 793
	fsw		f1, 0(x5)	# 793
	sw		x1, -56(x2)	# 794
	addi	x2, x2, -60	# 794
	jal		x1, min_caml_read_float	# 794
	addi	x2, x2, 60	# 794
	lw		x1, -56(x2)	# 794
	lw		x4, -8(x2)	# 794
	mul		x5, x30, x4	# 794
	lw		x6, -52(x2)	# 794
	add		x5, x6, x5	# 794
	fsw		f1, 0(x5)	# 794
	sw		x1, -56(x2)	# 796
	addi	x2, x2, -60	# 796
	jal		x1, min_caml_read_float	# 796
	addi	x2, x2, 60	# 796
	lw		x1, -56(x2)	# 796
	flw		f2, -20(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.22759	# 122
	addi	x4, x0, 0	# 122
	jal		x0, fle_cont.22758	# 122
fle_else.22759:
	addi	x4, x0, 1	# 122
fle_cont.22758:
	lw		x5, -8(x2)	# 798
	fsw		f1, -56(x2)	# 798
	sw		x4, -60(x2)	# 798
	addi	x4, x5, 0
	fadd	f1, f0, f2
	sw		x1, -64(x2)	# 798
	addi	x2, x2, -68	# 798
	jal		x1, min_caml_create_float_array	# 798
	addi	x2, x2, 68	# 798
	lw		x1, -64(x2)	# 798
	sw		x4, -64(x2)	# 799
	sw		x1, -68(x2)	# 799
	addi	x2, x2, -72	# 799
	jal		x1, min_caml_read_float	# 799
	addi	x2, x2, 72	# 799
	lw		x1, -68(x2)	# 799
	lw		x4, -16(x2)	# 799
	mul		x5, x30, x4	# 799
	lw		x6, -64(x2)	# 799
	add		x5, x6, x5	# 799
	fsw		f1, 0(x5)	# 799
	sw		x1, -68(x2)	# 800
	addi	x2, x2, -72	# 800
	jal		x1, min_caml_read_float	# 800
	addi	x2, x2, 72	# 800
	lw		x1, -68(x2)	# 800
	lw		x4, -12(x2)	# 800
	mul		x5, x30, x4	# 800
	lw		x6, -64(x2)	# 800
	add		x5, x6, x5	# 800
	fsw		f1, 0(x5)	# 800
	flw		f1, -20(x2)	# 802
	lw		x5, -24(x2)	# 802
	addi	x4, x5, 0
	sw		x1, -68(x2)	# 802
	addi	x2, x2, -72	# 802
	jal		x1, min_caml_create_float_array	# 802
	addi	x2, x2, 72	# 802
	lw		x1, -68(x2)	# 802
	sw		x4, -68(x2)	# 803
	sw		x1, -72(x2)	# 803
	addi	x2, x2, -76	# 803
	jal		x1, min_caml_read_float	# 803
	addi	x2, x2, 76	# 803
	lw		x1, -72(x2)	# 803
	lw		x4, -16(x2)	# 803
	mul		x5, x30, x4	# 803
	lw		x6, -68(x2)	# 803
	add		x5, x6, x5	# 803
	fsw		f1, 0(x5)	# 803
	sw		x1, -72(x2)	# 804
	addi	x2, x2, -76	# 804
	jal		x1, min_caml_read_float	# 804
	addi	x2, x2, 76	# 804
	lw		x1, -72(x2)	# 804
	lw		x4, -12(x2)	# 804
	mul		x4, x30, x4	# 804
	lw		x5, -68(x2)	# 804
	add		x4, x5, x4	# 804
	fsw		f1, 0(x4)	# 804
	sw		x1, -72(x2)	# 805
	addi	x2, x2, -76	# 805
	jal		x1, min_caml_read_float	# 805
	addi	x2, x2, 76	# 805
	lw		x1, -72(x2)	# 805
	lw		x4, -8(x2)	# 805
	mul		x5, x30, x4	# 805
	lw		x6, -68(x2)	# 805
	add		x5, x6, x5	# 805
	fsw		f1, 0(x5)	# 805
	flw		f1, -20(x2)	# 807
	lw		x5, -24(x2)	# 807
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 807
	addi	x2, x2, -76	# 807
	jal		x1, min_caml_create_float_array	# 807
	addi	x2, x2, 76	# 807
	lw		x1, -72(x2)	# 807
	lw		x5, -16(x2)	# 808
	lw		x6, -44(x2)	# 808
	sw		x4, -72(x2)	# 808
	beq		x6, x5, beq_cont.22760	# 808
	addi	x7, x0, 0	# 810
	sw		x7, -76(x2)	# 810
	sw		x1, -80(x2)	# 810
	addi	x2, x2, -84	# 810
	jal		x1, min_caml_read_float	# 810
	addi	x2, x2, 84	# 810
	lw		x1, -80(x2)	# 810
	fadd	f2, f0, f20	# 677
	fmul	f1, f1, f2	# 677
	lw		x4, -76(x2)	# 810
	mul		x4, x30, x4	# 810
	lw		x5, -72(x2)	# 810
	add		x4, x5, x4	# 810
	fsw		f1, 0(x4)	# 810
	addi	x4, x0, 1	# 811
	sw		x4, -80(x2)	# 811
	sw		x1, -84(x2)	# 811
	addi	x2, x2, -88	# 811
	jal		x1, min_caml_read_float	# 811
	addi	x2, x2, 88	# 811
	lw		x1, -84(x2)	# 811
	fadd	f2, f0, f20	# 677
	fmul	f1, f1, f2	# 677
	lw		x4, -80(x2)	# 811
	mul		x4, x30, x4	# 811
	lw		x5, -72(x2)	# 811
	add		x4, x5, x4	# 811
	fsw		f1, 0(x4)	# 811
	addi	x4, x0, 2	# 812
	sw		x4, -84(x2)	# 812
	sw		x1, -88(x2)	# 812
	addi	x2, x2, -92	# 812
	jal		x1, min_caml_read_float	# 812
	addi	x2, x2, 92	# 812
	lw		x1, -88(x2)	# 812
	fadd	f2, f0, f20	# 677
	fmul	f1, f1, f2	# 677
	lw		x4, -84(x2)	# 812
	mul		x4, x30, x4	# 812
	lw		x5, -72(x2)	# 812
	add		x4, x5, x4	# 812
	fsw		f1, 0(x4)	# 812
beq_cont.22760:
	lw		x4, -8(x2)	# 819
	lw		x5, -36(x2)	# 819
	beq		x5, x4, beq.22762	# 819
	lw		x4, -60(x2)	# 819
	jal		x0, beq_cont.22761	# 819
beq.22762:
	addi	x4, x0, 1	# 819
beq_cont.22761:
	addi	x6, x0, 4	# 820
	flw		f1, -20(x2)	# 820
	sw		x4, -88(x2)	# 820
	addi	x4, x6, 0
	sw		x1, -92(x2)	# 820
	addi	x2, x2, -96	# 820
	jal		x1, min_caml_create_float_array	# 820
	addi	x2, x2, 96	# 820
	lw		x1, -92(x2)	# 820
	addi	x5, x3, 0	# 823
	addi	x3, x3, 44	# 823
	sw		x4, 40(x5)	# 823
	lw		x4, -72(x2)	# 823
	sw		x4, 36(x5)	# 823
	lw		x6, -68(x2)	# 823
	sw		x6, 32(x5)	# 823
	lw		x6, -64(x2)	# 823
	sw		x6, 28(x5)	# 823
	lw		x6, -88(x2)	# 823
	sw		x6, 24(x5)	# 823
	lw		x6, -52(x2)	# 823
	sw		x6, 20(x5)	# 823
	lw		x6, -48(x2)	# 823
	sw		x6, 16(x5)	# 823
	lw		x7, -44(x2)	# 823
	sw		x7, 12(x5)	# 823
	lw		x8, -40(x2)	# 823
	sw		x8, 8(x5)	# 823
	lw		x8, -36(x2)	# 823
	sw		x8, 4(x5)	# 823
	lw		x9, -32(x2)	# 823
	sw		x9, 0(x5)	# 823
	lw		x9, -4(x2)	# 831
	mul		x9, x30, x9	# 831
	addi	x9, x9, 50048	# 831
	sw		x5, 0(x9)	# 831
	lw		x5, -24(x2)	# 833
	beq		x8, x5, beq.22764	# 833
	addi	x5, x0, 2	# 843
	beq		x8, x5, beq.22766	# 843
	jal		x0, beq_cont.22765	# 843
beq.22766:
	addi	x5, x0, 0	# 283
	mul		x5, x30, x5	# 283
	add		x5, x6, x5	# 283
	flw		f1, 0(x5)	# 283
	fmul	f1, f1, f1	# 127
	addi	x5, x0, 1	# 283
	mul		x5, x30, x5	# 283
	add		x5, x6, x5	# 283
	flw		f2, 0(x5)	# 283
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 283
	addi	x5, x0, 2	# 283
	mul		x5, x30, x5	# 283
	add		x5, x6, x5	# 283
	flw		f2, 0(x5)	# 283
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 283
	fsqrt	f1, f1	# 283
	flw		f2, -20(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.22768	# 120
	fadd	f1, f0, f16	# 284
	jal		x0, feq_cont.22767	# 120
feq_else.22768:
	flw		f3, -56(x2)	# 122
	fle		x31, f2, f3	# 122
	beq		x31, x0, fle_else.22770	# 122
	fadd	f2, f0, f18	# 284
	fdiv	f1, f2, f1	# 284
	jal		x0, fle_cont.22769	# 122
fle_else.22770:
	fadd	f2, f0, f16	# 284
	fdiv	f1, f2, f1	# 284
fle_cont.22769:
feq_cont.22767:
	addi	x5, x0, 0	# 285
	addi	x8, x0, 0	# 285
	mul		x8, x30, x8	# 285
	add		x8, x6, x8	# 285
	flw		f2, 0(x8)	# 285
	fmul	f2, f2, f1	# 285
	mul		x5, x30, x5	# 285
	add		x5, x6, x5	# 285
	fsw		f2, 0(x5)	# 285
	addi	x5, x0, 1	# 286
	addi	x8, x0, 1	# 286
	mul		x8, x30, x8	# 286
	add		x8, x6, x8	# 286
	flw		f2, 0(x8)	# 286
	fmul	f2, f2, f1	# 286
	mul		x5, x30, x5	# 286
	add		x5, x6, x5	# 286
	fsw		f2, 0(x5)	# 286
	addi	x5, x0, 2	# 287
	mul		x8, x30, x5	# 287
	add		x8, x6, x8	# 287
	flw		f2, 0(x8)	# 287
	fmul	f1, f2, f1	# 287
	mul		x5, x30, x5	# 287
	add		x5, x6, x5	# 287
	fsw		f1, 0(x5)	# 287
beq_cont.22765:
	jal		x0, beq_cont.22763	# 833
beq.22764:
	addi	x5, x0, 0	# 836
	mul		x5, x30, x5	# 836
	add		x5, x6, x5	# 836
	flw		f1, 0(x5)	# 836
	addi	x5, x0, 0	# 837
	fadd	f2, f0, f0	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.22772	# 120
	fadd	f1, f0, f0	# 837
	jal		x0, feq_cont.22771	# 120
feq_else.22772:
	flw		f2, -20(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.22774	# 120
	fadd	f3, f0, f0	# 212
	jal		x0, feq_cont.22773	# 120
feq_else.22774:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.22776	# 121
	fadd	f3, f0, f18	# 214
	jal		x0, fle_cont.22775	# 121
fle_else.22776:
	fadd	f3, f0, f16	# 213
fle_cont.22775:
feq_cont.22773:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 837
feq_cont.22771:
	mul		x5, x30, x5	# 837
	add		x5, x6, x5	# 837
	fsw		f1, 0(x5)	# 837
	addi	x5, x0, 1	# 838
	mul		x5, x30, x5	# 838
	add		x5, x6, x5	# 838
	flw		f1, 0(x5)	# 838
	addi	x5, x0, 1	# 839
	fadd	f2, f0, f0	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.22778	# 120
	fadd	f1, f0, f0	# 839
	jal		x0, feq_cont.22777	# 120
feq_else.22778:
	flw		f2, -20(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.22780	# 120
	fadd	f3, f0, f0	# 212
	jal		x0, feq_cont.22779	# 120
feq_else.22780:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.22782	# 121
	fadd	f3, f0, f18	# 214
	jal		x0, fle_cont.22781	# 121
fle_else.22782:
	fadd	f3, f0, f16	# 213
fle_cont.22781:
feq_cont.22779:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 839
feq_cont.22777:
	mul		x5, x30, x5	# 839
	add		x5, x6, x5	# 839
	fsw		f1, 0(x5)	# 839
	addi	x5, x0, 2	# 840
	mul		x5, x30, x5	# 840
	add		x5, x6, x5	# 840
	flw		f1, 0(x5)	# 840
	addi	x5, x0, 2	# 841
	fadd	f2, f0, f0	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.22784	# 120
	fadd	f1, f0, f0	# 841
	jal		x0, feq_cont.22783	# 120
feq_else.22784:
	flw		f2, -20(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.22786	# 120
	fadd	f2, f0, f0	# 212
	jal		x0, feq_cont.22785	# 120
feq_else.22786:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.22788	# 121
	fadd	f2, f0, f18	# 214
	jal		x0, fle_cont.22787	# 121
fle_else.22788:
	fadd	f2, f0, f16	# 213
fle_cont.22787:
feq_cont.22785:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f2, f1	# 841
feq_cont.22783:
	mul		x5, x30, x5	# 841
	add		x5, x6, x5	# 841
	fsw		f1, 0(x5)	# 841
beq_cont.22763:
	lw		x5, -16(x2)	# 849
	beq		x7, x5, beq_cont.22789	# 849
	lw		x29, 0(x2)	# 850
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -92(x2)	# 850
	addi	x2, x2, -96	# 850
	lw		x31, 0(x29)	# 850
	jalr	x1, x31, 0	# 850
	addi	x2, x2, 96	# 850
	lw		x1, -92(x2)	# 850
beq_cont.22789:
	addi	x4, x0, 1	# 853
	jalr	x0, x1, 0	# 853
beq.22757:
	addi	x4, x0, 0	# 856
	jalr	x0, x1, 0	# 856
read_object.2672.12328:
	lw		x5, 16(x29)	# 861
	lw		x6, 12(x29)	# 861
	lw		x7, 8(x29)	# 861
	lw		x8, 4(x29)	# 861
	ble		x6, x4, ble.22790	# 861
	sw		x29, 0(x2)	# 862
	sw		x8, -4(x2)	# 862
	sw		x4, -8(x2)	# 862
	sw		x7, -12(x2)	# 862
	addi	x29, x5, 0
	sw		x1, -16(x2)	# 862
	addi	x2, x2, -20	# 862
	lw		x31, 0(x29)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 20	# 862
	lw		x1, -16(x2)	# 862
	lw		x5, -12(x2)	# 862
	beq		x4, x5, beq.22791	# 862
	lw		x4, -4(x2)	# 863
	lw		x5, -8(x2)	# 863
	add		x4, x5, x4	# 863
	lw		x29, 0(x2)	# 863
	lw		x31, 0(x29)	# 863
	jalr	x0, x31, 0	# 863
beq.22791:
	mul		x4, x30, x5	# 865
	addi	x4, x4, 50000	# 865
	lw		x5, -8(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.22790:
	jalr	x0, x1, 0	# 866
read_net_item.2676.12330:
	lw		x5, 8(x29)	# 877
	lw		x6, 4(x29)	# 877
	sw		x29, 0(x2)	# 877
	sw		x6, -4(x2)	# 877
	sw		x4, -8(x2)	# 877
	sw		x5, -12(x2)	# 877
	sw		x1, -16(x2)	# 877
	addi	x2, x2, -20	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 20	# 877
	lw		x1, -16(x2)	# 877
	lw		x5, -12(x2)	# 878
	beq		x4, x5, beq.22794	# 878
	lw		x5, -4(x2)	# 880
	lw		x6, -8(x2)	# 880
	add		x5, x6, x5	# 880
	lw		x29, 0(x2)	# 880
	sw		x4, -16(x2)	# 880
	addi	x4, x5, 0
	sw		x1, -20(x2)	# 880
	addi	x2, x2, -24	# 880
	lw		x31, 0(x29)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 24	# 880
	lw		x1, -20(x2)	# 880
	lw		x5, -8(x2)	# 881
	mul		x5, x30, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -16(x2)	# 881
	sw		x6, 0(x5)	# 881
	jalr	x0, x1, 0	# 881
beq.22794:
	lw		x4, -4(x2)	# 878
	lw		x6, -8(x2)	# 878
	add		x4, x6, x4	# 878
	jal		x0, min_caml_create_array	# 878
read_or_network.2678.12332:
	lw		x5, 16(x29)	# 885
	lw		x6, 12(x29)	# 885
	lw		x7, 8(x29)	# 885
	lw		x8, 4(x29)	# 885
	sw		x29, 0(x2)	# 885
	sw		x8, -4(x2)	# 885
	sw		x4, -8(x2)	# 885
	sw		x6, -12(x2)	# 885
	sw		x7, -16(x2)	# 885
	addi	x4, x7, 0
	addi	x29, x5, 0
	sw		x1, -20(x2)	# 885
	addi	x2, x2, -24	# 885
	lw		x31, 0(x29)	# 885
	jalr	x1, x31, 0	# 885
	addi	x2, x2, 24	# 885
	lw		x1, -20(x2)	# 885
	addi	x5, x4, 0	# 885
	lw		x4, -16(x2)	# 886
	mul		x4, x30, x4	# 886
	add		x4, x5, x4	# 886
	lw		x4, 0(x4)	# 886
	lw		x6, -12(x2)	# 886
	beq		x4, x6, beq.22795	# 886
	lw		x4, -4(x2)	# 889
	lw		x6, -8(x2)	# 889
	add		x4, x6, x4	# 889
	lw		x29, 0(x2)	# 889
	sw		x5, -20(x2)	# 889
	sw		x1, -24(x2)	# 889
	addi	x2, x2, -28	# 889
	lw		x31, 0(x29)	# 889
	jalr	x1, x31, 0	# 889
	addi	x2, x2, 28	# 889
	lw		x1, -24(x2)	# 889
	lw		x5, -8(x2)	# 890
	mul		x5, x30, x5	# 890
	add		x5, x4, x5	# 890
	lw		x6, -20(x2)	# 890
	sw		x6, 0(x5)	# 890
	jalr	x0, x1, 0	# 890
beq.22795:
	lw		x4, -4(x2)	# 887
	lw		x6, -8(x2)	# 887
	add		x4, x6, x4	# 887
	jal		x0, min_caml_create_array	# 887
read_and_network.2680.12334:
	lw		x5, 16(x29)	# 894
	lw		x6, 12(x29)	# 894
	lw		x7, 8(x29)	# 894
	lw		x8, 4(x29)	# 894
	sw		x29, 0(x2)	# 894
	sw		x8, -4(x2)	# 894
	sw		x4, -8(x2)	# 894
	sw		x6, -12(x2)	# 894
	sw		x7, -16(x2)	# 894
	addi	x4, x7, 0
	addi	x29, x5, 0
	sw		x1, -20(x2)	# 894
	addi	x2, x2, -24	# 894
	lw		x31, 0(x29)	# 894
	jalr	x1, x31, 0	# 894
	addi	x2, x2, 24	# 894
	lw		x1, -20(x2)	# 894
	lw		x5, -16(x2)	# 895
	mul		x5, x30, x5	# 895
	add		x5, x4, x5	# 895
	lw		x5, 0(x5)	# 895
	lw		x6, -12(x2)	# 895
	beq		x5, x6, beq.22796	# 895
	lw		x5, -8(x2)	# 897
	mul		x6, x30, x5	# 897
	addi	x6, x6, 50332	# 897
	sw		x4, 0(x6)	# 897
	lw		x4, -4(x2)	# 898
	add		x4, x5, x4	# 898
	lw		x29, 0(x2)	# 898
	lw		x31, 0(x29)	# 898
	jalr	x0, x31, 0	# 898
beq.22796:
	jalr	x0, x1, 0	# 895
solver_rect.2693.12336:
	lw		x6, 16(x29)	# 928
	lw		x7, 12(x29)	# 928
	lw		x8, 8(x29)	# 928
	flw		f4, 4(x29)	# 928
	mul		x9, x30, x7	# 928
	add		x9, x5, x9	# 928
	flw		f5, 0(x9)	# 928
	feq		x31, f5, f4	# 120
	beq		x31, x0, feq_else.22799	# 120
	addi	x9, x0, 0	# 928
	jal		x0, feq_cont.22798	# 120
feq_else.22799:
	lw		x9, 16(x4)	# 421
	lw		x10, 24(x4)	# 373
	mul		x11, x30, x7	# 930
	add		x11, x5, x11	# 930
	flw		f5, 0(x11)	# 930
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.22801	# 122
	addi	x11, x0, 0	# 122
	jal		x0, fle_cont.22800	# 122
fle_else.22801:
	addi	x11, x0, 1	# 122
fle_cont.22800:
	beq		x10, x7, beq.22803	# 204
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.22805	# 122
	addi	x10, x0, 1	# 204
	jal		x0, fle_cont.22804	# 122
fle_else.22805:
	addi	x10, x0, 0	# 204
fle_cont.22804:
	jal		x0, beq_cont.22802	# 204
beq.22803:
	addi	x10, x11, 0	# 204
beq_cont.22802:
	mul		x11, x30, x7	# 930
	add		x11, x9, x11	# 930
	flw		f5, 0(x11)	# 930
	beq		x10, x7, beq.22807	# 219
	jal		x0, beq_cont.22806	# 219
beq.22807:
	fsub	f5, f0, f5	# 123
beq_cont.22806:
	fsub	f5, f5, f1	# 932
	mul		x10, x30, x7	# 932
	add		x10, x5, x10	# 932
	flw		f6, 0(x10)	# 932
	fdiv	f5, f5, f6	# 932
	mul		x10, x30, x8	# 933
	add		x10, x5, x10	# 933
	flw		f6, 0(x10)	# 933
	fmul	f6, f5, f6	# 933
	fadd	f6, f6, f2	# 933
	fle		x31, f6, f4	# 124
	beq		x31, x0, fle_cont.22808	# 124
	fsub	f6, f0, f6	# 124
fle_cont.22808:
	mul		x10, x30, x8	# 933
	add		x10, x9, x10	# 933
	flw		f7, 0(x10)	# 933
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.22810	# 125
	addi	x9, x0, 0	# 937
	jal		x0, fle_cont.22809	# 125
fle_else.22810:
	mul		x10, x30, x6	# 934
	add		x10, x5, x10	# 934
	flw		f6, 0(x10)	# 934
	fmul	f6, f5, f6	# 934
	fadd	f6, f6, f3	# 934
	fle		x31, f6, f4	# 124
	beq		x31, x0, fle_cont.22811	# 124
	fsub	f6, f0, f6	# 124
fle_cont.22811:
	mul		x10, x30, x6	# 934
	add		x9, x9, x10	# 934
	flw		f7, 0(x9)	# 934
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.22813	# 125
	addi	x9, x0, 0	# 936
	jal		x0, fle_cont.22812	# 125
fle_else.22813:
	addi	x9, x0, 0	# 935
	mul		x9, x30, x9	# 935
	addi	x9, x9, 50540	# 935
	fsw		f5, 0(x9)	# 935
	addi	x9, x0, 1	# 935
fle_cont.22812:
fle_cont.22809:
feq_cont.22798:
	beq		x9, x7, beq.22814	# 943
	addi	x4, x0, 1	# 943
	jalr	x0, x1, 0	# 943
beq.22814:
	mul		x9, x30, x8	# 928
	add		x9, x5, x9	# 928
	flw		f5, 0(x9)	# 928
	feq		x31, f5, f4	# 120
	beq		x31, x0, feq_else.22816	# 120
	addi	x9, x0, 0	# 928
	jal		x0, feq_cont.22815	# 120
feq_else.22816:
	lw		x9, 16(x4)	# 421
	lw		x10, 24(x4)	# 373
	mul		x11, x30, x8	# 930
	add		x11, x5, x11	# 930
	flw		f5, 0(x11)	# 930
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.22818	# 122
	addi	x11, x0, 0	# 122
	jal		x0, fle_cont.22817	# 122
fle_else.22818:
	addi	x11, x0, 1	# 122
fle_cont.22817:
	beq		x10, x7, beq.22820	# 204
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.22822	# 122
	addi	x10, x0, 1	# 204
	jal		x0, fle_cont.22821	# 122
fle_else.22822:
	addi	x10, x0, 0	# 204
fle_cont.22821:
	jal		x0, beq_cont.22819	# 204
beq.22820:
	addi	x10, x11, 0	# 204
beq_cont.22819:
	mul		x11, x30, x8	# 930
	add		x11, x9, x11	# 930
	flw		f5, 0(x11)	# 930
	beq		x10, x7, beq.22824	# 219
	jal		x0, beq_cont.22823	# 219
beq.22824:
	fsub	f5, f0, f5	# 123
beq_cont.22823:
	fsub	f5, f5, f2	# 932
	mul		x10, x30, x8	# 932
	add		x10, x5, x10	# 932
	flw		f6, 0(x10)	# 932
	fdiv	f5, f5, f6	# 932
	mul		x10, x30, x6	# 933
	add		x10, x5, x10	# 933
	flw		f6, 0(x10)	# 933
	fmul	f6, f5, f6	# 933
	fadd	f6, f6, f3	# 933
	fle		x31, f6, f4	# 124
	beq		x31, x0, fle_cont.22825	# 124
	fsub	f6, f0, f6	# 124
fle_cont.22825:
	mul		x10, x30, x6	# 933
	add		x10, x9, x10	# 933
	flw		f7, 0(x10)	# 933
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.22827	# 125
	addi	x9, x0, 0	# 937
	jal		x0, fle_cont.22826	# 125
fle_else.22827:
	mul		x10, x30, x7	# 934
	add		x10, x5, x10	# 934
	flw		f6, 0(x10)	# 934
	fmul	f6, f5, f6	# 934
	fadd	f6, f6, f1	# 934
	fle		x31, f6, f4	# 124
	beq		x31, x0, fle_cont.22828	# 124
	fsub	f6, f0, f6	# 124
fle_cont.22828:
	mul		x10, x30, x7	# 934
	add		x9, x9, x10	# 934
	flw		f7, 0(x9)	# 934
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.22830	# 125
	addi	x9, x0, 0	# 936
	jal		x0, fle_cont.22829	# 125
fle_else.22830:
	addi	x9, x0, 0	# 935
	mul		x9, x30, x9	# 935
	addi	x9, x9, 50540	# 935
	fsw		f5, 0(x9)	# 935
	addi	x9, x0, 1	# 935
fle_cont.22829:
fle_cont.22826:
feq_cont.22815:
	beq		x9, x7, beq.22831	# 944
	addi	x4, x0, 2	# 944
	jalr	x0, x1, 0	# 944
beq.22831:
	mul		x9, x30, x6	# 928
	add		x9, x5, x9	# 928
	flw		f5, 0(x9)	# 928
	feq		x31, f5, f4	# 120
	beq		x31, x0, feq_else.22833	# 120
	addi	x4, x0, 0	# 928
	jal		x0, feq_cont.22832	# 120
feq_else.22833:
	lw		x9, 16(x4)	# 421
	lw		x4, 24(x4)	# 373
	mul		x10, x30, x6	# 930
	add		x10, x5, x10	# 930
	flw		f5, 0(x10)	# 930
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.22835	# 122
	addi	x10, x0, 0	# 122
	jal		x0, fle_cont.22834	# 122
fle_else.22835:
	addi	x10, x0, 1	# 122
fle_cont.22834:
	beq		x4, x7, beq.22837	# 204
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.22839	# 122
	addi	x4, x0, 1	# 204
	jal		x0, fle_cont.22838	# 122
fle_else.22839:
	addi	x4, x0, 0	# 204
fle_cont.22838:
	jal		x0, beq_cont.22836	# 204
beq.22837:
	addi	x4, x10, 0	# 204
beq_cont.22836:
	mul		x10, x30, x6	# 930
	add		x10, x9, x10	# 930
	flw		f5, 0(x10)	# 930
	beq		x4, x7, beq.22841	# 219
	jal		x0, beq_cont.22840	# 219
beq.22841:
	fsub	f5, f0, f5	# 123
beq_cont.22840:
	fsub	f3, f5, f3	# 932
	mul		x4, x30, x6	# 932
	add		x4, x5, x4	# 932
	flw		f5, 0(x4)	# 932
	fdiv	f3, f3, f5	# 932
	mul		x4, x30, x7	# 933
	add		x4, x5, x4	# 933
	flw		f5, 0(x4)	# 933
	fmul	f5, f3, f5	# 933
	fadd	f1, f5, f1	# 933
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_cont.22842	# 124
	fsub	f1, f0, f1	# 124
fle_cont.22842:
	mul		x4, x30, x7	# 933
	add		x4, x9, x4	# 933
	flw		f5, 0(x4)	# 933
	fle		x31, f5, f1	# 125
	beq		x31, x0, fle_else.22844	# 125
	addi	x4, x0, 0	# 937
	jal		x0, fle_cont.22843	# 125
fle_else.22844:
	mul		x4, x30, x8	# 934
	add		x4, x5, x4	# 934
	flw		f1, 0(x4)	# 934
	fmul	f1, f3, f1	# 934
	fadd	f1, f1, f2	# 934
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_cont.22845	# 124
	fsub	f1, f0, f1	# 124
fle_cont.22845:
	mul		x4, x30, x8	# 934
	add		x4, x9, x4	# 934
	flw		f2, 0(x4)	# 934
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.22847	# 125
	addi	x4, x0, 0	# 936
	jal		x0, fle_cont.22846	# 125
fle_else.22847:
	addi	x4, x0, 0	# 935
	mul		x4, x30, x4	# 935
	addi	x4, x4, 50540	# 935
	fsw		f3, 0(x4)	# 935
	addi	x4, x0, 1	# 935
fle_cont.22846:
fle_cont.22843:
feq_cont.22832:
	beq		x4, x7, beq.22848	# 945
	addi	x4, x0, 3	# 945
	jalr	x0, x1, 0	# 945
beq.22848:
	addi	x4, x0, 0	# 946
	jalr	x0, x1, 0	# 946
solver_second.2718.12342:
	lw		x6, 20(x29)	# 1006
	lw		x7, 16(x29)	# 1006
	lw		x8, 12(x29)	# 1006
	lw		x9, 8(x29)	# 1006
	flw		f4, 4(x29)	# 1006
	mul		x10, x30, x8	# 1006
	add		x10, x5, x10	# 1006
	flw		f5, 0(x10)	# 1006
	mul		x10, x30, x9	# 1006
	add		x10, x5, x10	# 1006
	flw		f6, 0(x10)	# 1006
	mul		x10, x30, x6	# 1006
	add		x5, x5, x10	# 1006
	flw		f7, 0(x5)	# 1006
	fmul	f8, f5, f5	# 127
	lw		x5, 16(x4)	# 391
	mul		x10, x30, x8	# 396
	add		x5, x5, x10	# 396
	flw		f9, 0(x5)	# 396
	fmul	f8, f8, f9	# 967
	fmul	f9, f6, f6	# 127
	lw		x5, 16(x4)	# 401
	mul		x10, x30, x9	# 406
	add		x5, x5, x10	# 406
	flw		f10, 0(x5)	# 406
	fmul	f9, f9, f10	# 967
	fadd	f8, f8, f9	# 967
	fmul	f9, f7, f7	# 127
	lw		x5, 16(x4)	# 411
	mul		x10, x30, x6	# 416
	add		x5, x5, x10	# 416
	flw		f10, 0(x5)	# 416
	fmul	f9, f9, f10	# 967
	fadd	f8, f8, f9	# 967
	lw		x5, 12(x4)	# 382
	beq		x5, x8, beq_cont.22849	# 969
	fmul	f9, f6, f7	# 973
	lw		x5, 36(x4)	# 511
	mul		x10, x30, x8	# 516
	add		x5, x5, x10	# 516
	flw		f10, 0(x5)	# 516
	fmul	f9, f9, f10	# 973
	fadd	f8, f8, f9	# 972
	fmul	f9, f7, f5	# 974
	lw		x5, 36(x4)	# 521
	mul		x10, x30, x9	# 526
	add		x5, x5, x10	# 526
	flw		f10, 0(x5)	# 526
	fmul	f9, f9, f10	# 974
	fadd	f8, f8, f9	# 972
	fmul	f9, f5, f6	# 975
	lw		x5, 36(x4)	# 531
	mul		x10, x30, x6	# 536
	add		x5, x5, x10	# 536
	flw		f10, 0(x5)	# 536
	fmul	f9, f9, f10	# 975
	fadd	f8, f8, f9	# 972
beq_cont.22849:
	feq		x31, f8, f4	# 120
	beq		x31, x0, feq_else.22850	# 120
	addi	x4, x0, 0	# 1009
	jalr	x0, x1, 0	# 1009
feq_else.22850:
	fmul	f9, f5, f1	# 981
	lw		x5, 16(x4)	# 391
	mul		x10, x30, x8	# 396
	add		x5, x5, x10	# 396
	flw		f10, 0(x5)	# 396
	fmul	f9, f9, f10	# 981
	fmul	f10, f6, f2	# 982
	lw		x5, 16(x4)	# 401
	mul		x10, x30, x9	# 406
	add		x5, x5, x10	# 406
	flw		f11, 0(x5)	# 406
	fmul	f10, f10, f11	# 982
	fadd	f9, f9, f10	# 981
	fmul	f10, f7, f3	# 983
	lw		x5, 16(x4)	# 411
	mul		x10, x30, x6	# 416
	add		x5, x5, x10	# 416
	flw		f11, 0(x5)	# 416
	fmul	f10, f10, f11	# 983
	fadd	f9, f9, f10	# 981
	lw		x5, 12(x4)	# 382
	beq		x5, x8, beq.22852	# 985
	fmul	f10, f7, f2	# 989
	fmul	f11, f6, f3	# 989
	fadd	f10, f10, f11	# 989
	lw		x5, 36(x4)	# 511
	mul		x10, x30, x8	# 516
	add		x5, x5, x10	# 516
	flw		f11, 0(x5)	# 516
	fmul	f10, f10, f11	# 989
	fmul	f11, f5, f3	# 990
	fmul	f7, f7, f1	# 990
	fadd	f7, f11, f7	# 990
	lw		x5, 36(x4)	# 521
	mul		x10, x30, x9	# 526
	add		x5, x5, x10	# 526
	flw		f11, 0(x5)	# 526
	fmul	f7, f7, f11	# 990
	fadd	f7, f10, f7	# 989
	fmul	f5, f5, f2	# 991
	fmul	f6, f6, f1	# 991
	fadd	f5, f5, f6	# 991
	lw		x5, 36(x4)	# 531
	mul		x10, x30, x6	# 536
	add		x5, x5, x10	# 536
	flw		f6, 0(x5)	# 536
	fmul	f5, f5, f6	# 991
	fadd	f5, f7, f5	# 989
	fadd	f6, f0, f17	# 126
	fmul	f5, f5, f6	# 126
	fadd	f5, f9, f5	# 988
	jal		x0, beq_cont.22851	# 985
beq.22852:
	fadd	f5, f0, f9	# 986
beq_cont.22851:
	fmul	f6, f1, f1	# 127
	lw		x5, 16(x4)	# 391
	mul		x10, x30, x8	# 396
	add		x5, x5, x10	# 396
	flw		f7, 0(x5)	# 396
	fmul	f6, f6, f7	# 967
	fmul	f7, f2, f2	# 127
	lw		x5, 16(x4)	# 401
	mul		x10, x30, x9	# 406
	add		x5, x5, x10	# 406
	flw		f9, 0(x5)	# 406
	fmul	f7, f7, f9	# 967
	fadd	f6, f6, f7	# 967
	fmul	f7, f3, f3	# 127
	lw		x5, 16(x4)	# 411
	mul		x10, x30, x6	# 416
	add		x5, x5, x10	# 416
	flw		f9, 0(x5)	# 416
	fmul	f7, f7, f9	# 967
	fadd	f6, f6, f7	# 967
	lw		x5, 12(x4)	# 382
	beq		x5, x8, beq.22854	# 969
	fmul	f7, f2, f3	# 973
	lw		x5, 36(x4)	# 511
	mul		x10, x30, x8	# 516
	add		x5, x5, x10	# 516
	flw		f9, 0(x5)	# 516
	fmul	f7, f7, f9	# 973
	fadd	f6, f6, f7	# 972
	fmul	f3, f3, f1	# 974
	lw		x5, 36(x4)	# 521
	mul		x9, x30, x9	# 526
	add		x5, x5, x9	# 526
	flw		f7, 0(x5)	# 526
	fmul	f3, f3, f7	# 974
	fadd	f3, f6, f3	# 972
	fmul	f1, f1, f2	# 975
	lw		x5, 36(x4)	# 531
	mul		x6, x30, x6	# 536
	add		x5, x5, x6	# 536
	flw		f2, 0(x5)	# 536
	fmul	f1, f1, f2	# 975
	fadd	f1, f3, f1	# 972
	jal		x0, beq_cont.22853	# 969
beq.22854:
	fadd	f1, f0, f6	# 970
beq_cont.22853:
	lw		x5, 4(x4)	# 353
	beq		x5, x7, beq.22856	# 1016
	jal		x0, beq_cont.22855	# 1016
beq.22856:
	fadd	f2, f0, f16	# 1016
	fsub	f1, f1, f2	# 1016
beq_cont.22855:
	fmul	f2, f5, f5	# 127
	fmul	f1, f8, f1	# 1018
	fsub	f1, f2, f1	# 1018
	fle		x31, f1, f4	# 121
	beq		x31, x0, fle_else.22857	# 121
	addi	x4, x0, 0	# 1026
	jalr	x0, x1, 0	# 1026
fle_else.22857:
	fsqrt	f1, f1	# 1021
	lw		x4, 24(x4)	# 373
	beq		x4, x8, beq.22859	# 1022
	jal		x0, beq_cont.22858	# 1022
beq.22859:
	fsub	f1, f0, f1	# 123
beq_cont.22858:
	fsub	f1, f1, f5	# 1023
	fdiv	f1, f1, f8	# 1023
	mul		x4, x30, x8	# 1023
	addi	x4, x4, 50540	# 1023
	fsw		f1, 0(x4)	# 1023
	addi	x4, x0, 1	# 1023
	jalr	x0, x1, 0	# 1023
solver_rect_fast.2728.12348:
	lw		x7, 24(x29)	# 1064
	lw		x8, 20(x29)	# 1064
	lw		x9, 16(x29)	# 1064
	lw		x10, 12(x29)	# 1064
	lw		x11, 8(x29)	# 1064
	flw		f4, 4(x29)	# 1064
	mul		x12, x30, x10	# 1064
	add		x12, x6, x12	# 1064
	flw		f5, 0(x12)	# 1064
	fsub	f5, f5, f1	# 1064
	mul		x12, x30, x11	# 1064
	add		x12, x6, x12	# 1064
	flw		f6, 0(x12)	# 1064
	fmul	f5, f5, f6	# 1064
	mul		x12, x30, x11	# 1066
	add		x12, x5, x12	# 1066
	flw		f7, 0(x12)	# 1066
	fmul	f8, f5, f7	# 1066
	fadd	f8, f8, f2	# 1066
	fle		x31, f8, f4	# 124
	beq		x31, x0, fle_cont.22860	# 124
	fsub	f8, f0, f8	# 124
fle_cont.22860:
	lw		x12, 16(x4)	# 401
	mul		x13, x30, x11	# 406
	add		x12, x12, x13	# 406
	flw		f9, 0(x12)	# 406
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.22862	# 125
	addi	x12, x0, 0	# 1070
	jal		x0, fle_cont.22861	# 125
fle_else.22862:
	mul		x12, x30, x8	# 1067
	add		x12, x5, x12	# 1067
	flw		f8, 0(x12)	# 1067
	fmul	f8, f5, f8	# 1067
	fadd	f8, f8, f3	# 1067
	fle		x31, f8, f4	# 124
	beq		x31, x0, fle_cont.22863	# 124
	fsub	f8, f0, f8	# 124
fle_cont.22863:
	lw		x12, 16(x4)	# 411
	mul		x13, x30, x8	# 416
	add		x12, x12, x13	# 416
	flw		f9, 0(x12)	# 416
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.22865	# 125
	addi	x12, x0, 0	# 1069
	jal		x0, fle_cont.22864	# 125
fle_else.22865:
	feq		x31, f6, f4	# 120
	beq		x31, x0, feq_else.22867	# 120
	addi	x12, x0, 0	# 1068
	jal		x0, feq_cont.22866	# 120
feq_else.22867:
	addi	x12, x0, 1	# 1068
feq_cont.22866:
fle_cont.22864:
fle_cont.22861:
	beq		x12, x10, beq.22868	# 1065
	mul		x4, x30, x10	# 1072
	addi	x4, x4, 50540	# 1072
	fsw		f5, 0(x4)	# 1072
	addi	x4, x0, 1	# 1072
	jalr	x0, x1, 0	# 1072
beq.22868:
	mul		x12, x30, x8	# 1073
	add		x12, x6, x12	# 1073
	flw		f5, 0(x12)	# 1073
	fsub	f5, f5, f2	# 1073
	mul		x9, x30, x9	# 1073
	add		x9, x6, x9	# 1073
	flw		f6, 0(x9)	# 1073
	fmul	f5, f5, f6	# 1073
	mul		x9, x30, x10	# 1075
	add		x9, x5, x9	# 1075
	flw		f8, 0(x9)	# 1075
	fmul	f9, f5, f8	# 1075
	fadd	f9, f9, f1	# 1075
	fle		x31, f9, f4	# 124
	beq		x31, x0, fle_cont.22869	# 124
	fsub	f9, f0, f9	# 124
fle_cont.22869:
	lw		x9, 16(x4)	# 391
	mul		x12, x30, x10	# 396
	add		x9, x9, x12	# 396
	flw		f10, 0(x9)	# 396
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.22871	# 125
	addi	x5, x0, 0	# 1079
	jal		x0, fle_cont.22870	# 125
fle_else.22871:
	mul		x9, x30, x8	# 1076
	add		x5, x5, x9	# 1076
	flw		f9, 0(x5)	# 1076
	fmul	f9, f5, f9	# 1076
	fadd	f9, f9, f3	# 1076
	fle		x31, f9, f4	# 124
	beq		x31, x0, fle_cont.22872	# 124
	fsub	f9, f0, f9	# 124
fle_cont.22872:
	lw		x5, 16(x4)	# 411
	mul		x8, x30, x8	# 416
	add		x5, x5, x8	# 416
	flw		f10, 0(x5)	# 416
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.22874	# 125
	addi	x5, x0, 0	# 1078
	jal		x0, fle_cont.22873	# 125
fle_else.22874:
	feq		x31, f6, f4	# 120
	beq		x31, x0, feq_else.22876	# 120
	addi	x5, x0, 0	# 1077
	jal		x0, feq_cont.22875	# 120
feq_else.22876:
	addi	x5, x0, 1	# 1077
feq_cont.22875:
fle_cont.22873:
fle_cont.22870:
	beq		x5, x10, beq.22877	# 1074
	mul		x4, x30, x10	# 1081
	addi	x4, x4, 50540	# 1081
	fsw		f5, 0(x4)	# 1081
	addi	x4, x0, 2	# 1081
	jalr	x0, x1, 0	# 1081
beq.22877:
	addi	x5, x0, 4	# 1082
	mul		x5, x30, x5	# 1082
	add		x5, x6, x5	# 1082
	flw		f5, 0(x5)	# 1082
	fsub	f3, f5, f3	# 1082
	mul		x5, x30, x7	# 1082
	add		x5, x6, x5	# 1082
	flw		f5, 0(x5)	# 1082
	fmul	f3, f3, f5	# 1082
	fmul	f6, f3, f8	# 1084
	fadd	f1, f6, f1	# 1084
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_cont.22878	# 124
	fsub	f1, f0, f1	# 124
fle_cont.22878:
	lw		x5, 16(x4)	# 391
	mul		x6, x30, x10	# 396
	add		x5, x5, x6	# 396
	flw		f6, 0(x5)	# 396
	fle		x31, f6, f1	# 125
	beq		x31, x0, fle_else.22880	# 125
	addi	x4, x0, 0	# 1088
	jal		x0, fle_cont.22879	# 125
fle_else.22880:
	fmul	f1, f3, f7	# 1085
	fadd	f1, f1, f2	# 1085
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_cont.22881	# 124
	fsub	f1, f0, f1	# 124
fle_cont.22881:
	lw		x4, 16(x4)	# 401
	mul		x5, x30, x11	# 406
	add		x4, x4, x5	# 406
	flw		f2, 0(x4)	# 406
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.22883	# 125
	addi	x4, x0, 0	# 1087
	jal		x0, fle_cont.22882	# 125
fle_else.22883:
	feq		x31, f5, f4	# 120
	beq		x31, x0, feq_else.22885	# 120
	addi	x4, x0, 0	# 1086
	jal		x0, feq_cont.22884	# 120
feq_else.22885:
	addi	x4, x0, 1	# 1086
feq_cont.22884:
fle_cont.22882:
fle_cont.22879:
	beq		x4, x10, beq.22886	# 1083
	mul		x4, x30, x10	# 1090
	addi	x4, x4, 50540	# 1090
	fsw		f3, 0(x4)	# 1090
	addi	x4, x0, 3	# 1090
	jalr	x0, x1, 0	# 1090
beq.22886:
	addi	x4, x0, 0	# 1092
	jalr	x0, x1, 0	# 1092
solver_second_fast.2741.12355:
	lw		x6, 20(x29)	# 1107
	lw		x7, 16(x29)	# 1107
	lw		x8, 12(x29)	# 1107
	lw		x9, 8(x29)	# 1107
	flw		f4, 4(x29)	# 1107
	mul		x10, x30, x8	# 1107
	add		x10, x5, x10	# 1107
	flw		f5, 0(x10)	# 1107
	feq		x31, f5, f4	# 120
	beq		x31, x0, feq_else.22887	# 120
	addi	x4, x0, 0	# 1109
	jalr	x0, x1, 0	# 1109
feq_else.22887:
	mul		x10, x30, x9	# 1111
	add		x10, x5, x10	# 1111
	flw		f6, 0(x10)	# 1111
	fmul	f6, f6, f1	# 1111
	mul		x10, x30, x6	# 1111
	add		x10, x5, x10	# 1111
	flw		f7, 0(x10)	# 1111
	fmul	f7, f7, f2	# 1111
	fadd	f6, f6, f7	# 1111
	mul		x10, x30, x7	# 1111
	add		x10, x5, x10	# 1111
	flw		f7, 0(x10)	# 1111
	fmul	f7, f7, f3	# 1111
	fadd	f6, f6, f7	# 1111
	fmul	f7, f1, f1	# 127
	lw		x10, 16(x4)	# 391
	mul		x11, x30, x8	# 396
	add		x10, x10, x11	# 396
	flw		f8, 0(x10)	# 396
	fmul	f7, f7, f8	# 967
	fmul	f8, f2, f2	# 127
	lw		x10, 16(x4)	# 401
	mul		x11, x30, x9	# 406
	add		x10, x10, x11	# 406
	flw		f9, 0(x10)	# 406
	fmul	f8, f8, f9	# 967
	fadd	f7, f7, f8	# 967
	fmul	f8, f3, f3	# 127
	lw		x10, 16(x4)	# 411
	mul		x11, x30, x6	# 416
	add		x10, x10, x11	# 416
	flw		f9, 0(x10)	# 416
	fmul	f8, f8, f9	# 967
	fadd	f7, f7, f8	# 967
	lw		x10, 12(x4)	# 382
	beq		x10, x8, beq.22889	# 969
	fmul	f8, f2, f3	# 973
	lw		x10, 36(x4)	# 511
	mul		x11, x30, x8	# 516
	add		x10, x10, x11	# 516
	flw		f9, 0(x10)	# 516
	fmul	f8, f8, f9	# 973
	fadd	f7, f7, f8	# 972
	fmul	f3, f3, f1	# 974
	lw		x10, 36(x4)	# 521
	mul		x9, x30, x9	# 526
	add		x9, x10, x9	# 526
	flw		f8, 0(x9)	# 526
	fmul	f3, f3, f8	# 974
	fadd	f3, f7, f3	# 972
	fmul	f1, f1, f2	# 975
	lw		x9, 36(x4)	# 531
	mul		x6, x30, x6	# 536
	add		x6, x9, x6	# 536
	flw		f2, 0(x6)	# 536
	fmul	f1, f1, f2	# 975
	fadd	f1, f3, f1	# 972
	jal		x0, beq_cont.22888	# 969
beq.22889:
	fadd	f1, f0, f7	# 970
beq_cont.22888:
	lw		x6, 4(x4)	# 353
	beq		x6, x7, beq.22891	# 1113
	jal		x0, beq_cont.22890	# 1113
beq.22891:
	fadd	f2, f0, f16	# 1113
	fsub	f1, f1, f2	# 1113
beq_cont.22890:
	fmul	f2, f6, f6	# 127
	fmul	f1, f5, f1	# 1114
	fsub	f1, f2, f1	# 1114
	fle		x31, f1, f4	# 121
	beq		x31, x0, fle_else.22892	# 121
	addi	x4, x0, 0	# 1121
	jalr	x0, x1, 0	# 1121
fle_else.22892:
	lw		x4, 24(x4)	# 373
	beq		x4, x8, beq.22894	# 1116
	addi	x4, x0, 0	# 1117
	fsqrt	f1, f1	# 1117
	fadd	f1, f6, f1	# 1117
	addi	x6, x0, 4	# 1117
	mul		x6, x30, x6	# 1117
	add		x5, x5, x6	# 1117
	flw		f2, 0(x5)	# 1117
	fmul	f1, f1, f2	# 1117
	mul		x4, x30, x4	# 1117
	addi	x4, x4, 50540	# 1117
	fsw		f1, 0(x4)	# 1117
	jal		x0, beq_cont.22893	# 1116
beq.22894:
	addi	x4, x0, 0	# 1119
	fsqrt	f1, f1	# 1119
	fsub	f1, f6, f1	# 1119
	addi	x6, x0, 4	# 1119
	mul		x6, x30, x6	# 1119
	add		x5, x5, x6	# 1119
	flw		f2, 0(x5)	# 1119
	fmul	f1, f1, f2	# 1119
	mul		x4, x30, x4	# 1119
	addi	x4, x4, 50540	# 1119
	fsw		f1, 0(x4)	# 1119
beq_cont.22893:
	addi	x4, x0, 1	# 1120
	jalr	x0, x1, 0	# 1120
setup_rect_table.2768.12361:
	lw		x6, 16(x29)	# 1195
	lw		x7, 12(x29)	# 1195
	lw		x8, 8(x29)	# 1195
	flw		f1, 4(x29)	# 1195
	addi	x9, x0, 6	# 1195
	sw		x6, 0(x2)	# 1195
	sw		x8, -4(x2)	# 1195
	sw		x5, -8(x2)	# 1195
	fsw		f1, -12(x2)	# 1195
	sw		x4, -16(x2)	# 1195
	sw		x7, -20(x2)	# 1195
	addi	x4, x9, 0
	sw		x1, -24(x2)	# 1195
	addi	x2, x2, -28	# 1195
	jal		x1, min_caml_create_float_array	# 1195
	addi	x2, x2, 28	# 1195
	lw		x1, -24(x2)	# 1195
	lw		x5, -20(x2)	# 1197
	mul		x5, x30, x5	# 1197
	lw		x6, -16(x2)	# 1197
	add		x5, x6, x5	# 1197
	flw		f1, 0(x5)	# 1197
	flw		f2, -12(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.22896	# 120
	addi	x5, x0, 1	# 1198
	fadd	f1, f0, f0	# 1198
	mul		x5, x30, x5	# 1198
	add		x5, x4, x5	# 1198
	fsw		f1, 0(x5)	# 1198
	jal		x0, feq_cont.22895	# 120
feq_else.22896:
	addi	x5, x0, 0	# 1201
	lw		x7, -8(x2)	# 373
	lw		x8, 24(x7)	# 373
	addi	x9, x0, 0	# 1201
	mul		x9, x30, x9	# 1201
	add		x9, x6, x9	# 1201
	flw		f1, 0(x9)	# 1201
	fadd	f3, f0, f0	# 122
	fle		x31, f3, f1	# 122
	beq		x31, x0, fle_else.22898	# 122
	addi	x9, x0, 0	# 122
	jal		x0, fle_cont.22897	# 122
fle_else.22898:
	addi	x9, x0, 1	# 122
fle_cont.22897:
	addi	x10, x0, 0	# 204
	beq		x8, x10, beq.22900	# 204
	fle		x31, f3, f1	# 122
	beq		x31, x0, fle_else.22902	# 122
	addi	x8, x0, 1	# 204
	jal		x0, fle_cont.22901	# 122
fle_else.22902:
	addi	x8, x0, 0	# 204
fle_cont.22901:
	jal		x0, beq_cont.22899	# 204
beq.22900:
	addi	x8, x9, 0	# 204
beq_cont.22899:
	lw		x9, 16(x7)	# 391
	addi	x10, x0, 0	# 396
	mul		x10, x30, x10	# 396
	add		x9, x9, x10	# 396
	flw		f1, 0(x9)	# 396
	addi	x9, x0, 0	# 219
	beq		x8, x9, beq.22904	# 219
	jal		x0, beq_cont.22903	# 219
beq.22904:
	fsub	f1, f0, f1	# 123
beq_cont.22903:
	mul		x5, x30, x5	# 1201
	add		x5, x4, x5	# 1201
	fsw		f1, 0(x5)	# 1201
	addi	x5, x0, 1	# 1203
	fadd	f1, f0, f16	# 1203
	addi	x8, x0, 0	# 1203
	mul		x8, x30, x8	# 1203
	add		x8, x6, x8	# 1203
	flw		f3, 0(x8)	# 1203
	fdiv	f1, f1, f3	# 1203
	mul		x5, x30, x5	# 1203
	add		x5, x4, x5	# 1203
	fsw		f1, 0(x5)	# 1203
feq_cont.22895:
	lw		x5, -4(x2)	# 1205
	mul		x5, x30, x5	# 1205
	add		x5, x6, x5	# 1205
	flw		f1, 0(x5)	# 1205
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.22906	# 120
	addi	x5, x0, 3	# 1206
	fadd	f1, f0, f0	# 1206
	mul		x5, x30, x5	# 1206
	add		x5, x4, x5	# 1206
	fsw		f1, 0(x5)	# 1206
	jal		x0, feq_cont.22905	# 120
feq_else.22906:
	addi	x5, x0, 2	# 1208
	lw		x7, -8(x2)	# 373
	lw		x8, 24(x7)	# 373
	addi	x9, x0, 1	# 1208
	mul		x9, x30, x9	# 1208
	add		x9, x6, x9	# 1208
	flw		f1, 0(x9)	# 1208
	fadd	f3, f0, f0	# 122
	fle		x31, f3, f1	# 122
	beq		x31, x0, fle_else.22908	# 122
	addi	x9, x0, 0	# 122
	jal		x0, fle_cont.22907	# 122
fle_else.22908:
	addi	x9, x0, 1	# 122
fle_cont.22907:
	addi	x10, x0, 0	# 204
	beq		x8, x10, beq.22910	# 204
	fle		x31, f3, f1	# 122
	beq		x31, x0, fle_else.22912	# 122
	addi	x8, x0, 1	# 204
	jal		x0, fle_cont.22911	# 122
fle_else.22912:
	addi	x8, x0, 0	# 204
fle_cont.22911:
	jal		x0, beq_cont.22909	# 204
beq.22910:
	addi	x8, x9, 0	# 204
beq_cont.22909:
	lw		x9, 16(x7)	# 401
	addi	x10, x0, 1	# 406
	mul		x10, x30, x10	# 406
	add		x9, x9, x10	# 406
	flw		f1, 0(x9)	# 406
	addi	x9, x0, 0	# 219
	beq		x8, x9, beq.22914	# 219
	jal		x0, beq_cont.22913	# 219
beq.22914:
	fsub	f1, f0, f1	# 123
beq_cont.22913:
	mul		x5, x30, x5	# 1208
	add		x5, x4, x5	# 1208
	fsw		f1, 0(x5)	# 1208
	addi	x5, x0, 3	# 1209
	fadd	f1, f0, f16	# 1209
	addi	x8, x0, 1	# 1209
	mul		x8, x30, x8	# 1209
	add		x8, x6, x8	# 1209
	flw		f3, 0(x8)	# 1209
	fdiv	f1, f1, f3	# 1209
	mul		x5, x30, x5	# 1209
	add		x5, x4, x5	# 1209
	fsw		f1, 0(x5)	# 1209
feq_cont.22905:
	lw		x5, 0(x2)	# 1211
	mul		x5, x30, x5	# 1211
	add		x5, x6, x5	# 1211
	flw		f1, 0(x5)	# 1211
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.22916	# 120
	addi	x5, x0, 5	# 1212
	fadd	f1, f0, f0	# 1212
	mul		x5, x30, x5	# 1212
	add		x5, x4, x5	# 1212
	fsw		f1, 0(x5)	# 1212
	jal		x0, feq_cont.22915	# 120
feq_else.22916:
	addi	x5, x0, 4	# 1214
	lw		x7, -8(x2)	# 373
	lw		x8, 24(x7)	# 373
	addi	x9, x0, 2	# 1214
	mul		x9, x30, x9	# 1214
	add		x9, x6, x9	# 1214
	flw		f1, 0(x9)	# 1214
	fadd	f2, f0, f0	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.22918	# 122
	addi	x9, x0, 0	# 122
	jal		x0, fle_cont.22917	# 122
fle_else.22918:
	addi	x9, x0, 1	# 122
fle_cont.22917:
	addi	x10, x0, 0	# 204
	beq		x8, x10, beq.22920	# 204
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.22922	# 122
	addi	x8, x0, 1	# 204
	jal		x0, fle_cont.22921	# 122
fle_else.22922:
	addi	x8, x0, 0	# 204
fle_cont.22921:
	jal		x0, beq_cont.22919	# 204
beq.22920:
	addi	x8, x9, 0	# 204
beq_cont.22919:
	lw		x7, 16(x7)	# 411
	addi	x9, x0, 2	# 416
	mul		x9, x30, x9	# 416
	add		x7, x7, x9	# 416
	flw		f1, 0(x7)	# 416
	addi	x7, x0, 0	# 219
	beq		x8, x7, beq.22924	# 219
	jal		x0, beq_cont.22923	# 219
beq.22924:
	fsub	f1, f0, f1	# 123
beq_cont.22923:
	mul		x5, x30, x5	# 1214
	add		x5, x4, x5	# 1214
	fsw		f1, 0(x5)	# 1214
	addi	x5, x0, 5	# 1215
	fadd	f1, f0, f16	# 1215
	addi	x7, x0, 2	# 1215
	mul		x7, x30, x7	# 1215
	add		x6, x6, x7	# 1215
	flw		f2, 0(x6)	# 1215
	fdiv	f1, f1, f2	# 1215
	mul		x5, x30, x5	# 1215
	add		x5, x4, x5	# 1215
	fsw		f1, 0(x5)	# 1215
feq_cont.22915:
	jalr	x0, x1, 0	# 1217
setup_surface_table.2771.12364:
	lw		x6, 16(x29)	# 1222
	lw		x7, 12(x29)	# 1222
	lw		x8, 8(x29)	# 1222
	flw		f1, 4(x29)	# 1222
	addi	x9, x0, 4	# 1222
	fsw		f1, 0(x2)	# 1222
	sw		x6, -4(x2)	# 1222
	sw		x8, -8(x2)	# 1222
	sw		x5, -12(x2)	# 1222
	sw		x4, -16(x2)	# 1222
	sw		x7, -20(x2)	# 1222
	addi	x4, x9, 0
	sw		x1, -24(x2)	# 1222
	addi	x2, x2, -28	# 1222
	jal		x1, min_caml_create_float_array	# 1222
	addi	x2, x2, 28	# 1222
	lw		x1, -24(x2)	# 1222
	lw		x5, -20(x2)	# 1224
	mul		x6, x30, x5	# 1224
	lw		x7, -16(x2)	# 1224
	add		x6, x7, x6	# 1224
	flw		f1, 0(x6)	# 1224
	lw		x6, -12(x2)	# 391
	lw		x8, 16(x6)	# 391
	mul		x5, x30, x5	# 396
	add		x5, x8, x5	# 396
	flw		f2, 0(x5)	# 396
	fmul	f1, f1, f2	# 1224
	lw		x5, -8(x2)	# 1224
	mul		x8, x30, x5	# 1224
	add		x8, x7, x8	# 1224
	flw		f2, 0(x8)	# 1224
	lw		x8, 16(x6)	# 401
	mul		x5, x30, x5	# 406
	add		x5, x8, x5	# 406
	flw		f3, 0(x5)	# 406
	fmul	f2, f2, f3	# 1224
	fadd	f1, f1, f2	# 1224
	lw		x5, -4(x2)	# 1224
	mul		x8, x30, x5	# 1224
	add		x7, x7, x8	# 1224
	flw		f2, 0(x7)	# 1224
	lw		x7, 16(x6)	# 411
	mul		x5, x30, x5	# 416
	add		x5, x7, x5	# 416
	flw		f3, 0(x5)	# 416
	fmul	f2, f2, f3	# 1224
	fadd	f1, f1, f2	# 1224
	flw		f2, 0(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.22926	# 121
	addi	x5, x0, 0	# 1234
	fadd	f1, f0, f0	# 1234
	mul		x5, x30, x5	# 1234
	add		x5, x4, x5	# 1234
	fsw		f1, 0(x5)	# 1234
	jal		x0, fle_cont.22925	# 121
fle_else.22926:
	addi	x5, x0, 0	# 1228
	fadd	f2, f0, f18	# 1228
	fdiv	f2, f2, f1	# 1228
	mul		x5, x30, x5	# 1228
	add		x5, x4, x5	# 1228
	fsw		f2, 0(x5)	# 1228
	addi	x5, x0, 1	# 1230
	lw		x7, 16(x6)	# 391
	addi	x8, x0, 0	# 396
	mul		x8, x30, x8	# 396
	add		x7, x7, x8	# 396
	flw		f2, 0(x7)	# 396
	fdiv	f2, f2, f1	# 1230
	fsub	f2, f0, f2	# 123
	mul		x5, x30, x5	# 1230
	add		x5, x4, x5	# 1230
	fsw		f2, 0(x5)	# 1230
	addi	x5, x0, 2	# 1231
	lw		x7, 16(x6)	# 401
	addi	x8, x0, 1	# 406
	mul		x8, x30, x8	# 406
	add		x7, x7, x8	# 406
	flw		f2, 0(x7)	# 406
	fdiv	f2, f2, f1	# 1231
	fsub	f2, f0, f2	# 123
	mul		x5, x30, x5	# 1231
	add		x5, x4, x5	# 1231
	fsw		f2, 0(x5)	# 1231
	addi	x5, x0, 3	# 1232
	lw		x6, 16(x6)	# 411
	addi	x7, x0, 2	# 416
	mul		x7, x30, x7	# 416
	add		x6, x6, x7	# 416
	flw		f2, 0(x6)	# 416
	fdiv	f1, f2, f1	# 1232
	fsub	f1, f0, f1	# 123
	mul		x5, x30, x5	# 1232
	add		x5, x4, x5	# 1232
	fsw		f1, 0(x5)	# 1232
fle_cont.22925:
	jalr	x0, x1, 0	# 1235
setup_second_table.2774.12367:
	lw		x6, 20(x29)	# 1241
	lw		x7, 16(x29)	# 1241
	lw		x8, 12(x29)	# 1241
	lw		x9, 8(x29)	# 1241
	flw		f1, 4(x29)	# 1241
	fsw		f1, 0(x2)	# 1241
	sw		x5, -4(x2)	# 1241
	sw		x7, -8(x2)	# 1241
	sw		x9, -12(x2)	# 1241
	sw		x4, -16(x2)	# 1241
	sw		x8, -20(x2)	# 1241
	addi	x4, x6, 0
	sw		x1, -24(x2)	# 1241
	addi	x2, x2, -28	# 1241
	jal		x1, min_caml_create_float_array	# 1241
	addi	x2, x2, 28	# 1241
	lw		x1, -24(x2)	# 1241
	lw		x5, -20(x2)	# 1243
	mul		x6, x30, x5	# 1243
	lw		x7, -16(x2)	# 1243
	add		x6, x7, x6	# 1243
	flw		f1, 0(x6)	# 1243
	lw		x6, -12(x2)	# 1243
	mul		x8, x30, x6	# 1243
	add		x8, x7, x8	# 1243
	flw		f2, 0(x8)	# 1243
	lw		x8, -8(x2)	# 1243
	mul		x9, x30, x8	# 1243
	add		x9, x7, x9	# 1243
	flw		f3, 0(x9)	# 1243
	fmul	f4, f1, f1	# 127
	lw		x9, -4(x2)	# 391
	lw		x10, 16(x9)	# 391
	mul		x11, x30, x5	# 396
	add		x10, x10, x11	# 396
	flw		f5, 0(x10)	# 396
	fmul	f4, f4, f5	# 967
	fmul	f5, f2, f2	# 127
	lw		x10, 16(x9)	# 401
	mul		x11, x30, x6	# 406
	add		x10, x10, x11	# 406
	flw		f6, 0(x10)	# 406
	fmul	f5, f5, f6	# 967
	fadd	f4, f4, f5	# 967
	fmul	f5, f3, f3	# 127
	lw		x10, 16(x9)	# 411
	mul		x11, x30, x8	# 416
	add		x10, x10, x11	# 416
	flw		f6, 0(x10)	# 416
	fmul	f5, f5, f6	# 967
	fadd	f4, f4, f5	# 967
	lw		x10, 12(x9)	# 382
	beq		x10, x5, beq_cont.22927	# 969
	fmul	f5, f2, f3	# 973
	lw		x10, 36(x9)	# 511
	mul		x11, x30, x5	# 516
	add		x10, x10, x11	# 516
	flw		f6, 0(x10)	# 516
	fmul	f5, f5, f6	# 973
	fadd	f4, f4, f5	# 972
	fmul	f5, f3, f1	# 974
	lw		x10, 36(x9)	# 521
	mul		x11, x30, x6	# 526
	add		x10, x10, x11	# 526
	flw		f6, 0(x10)	# 526
	fmul	f5, f5, f6	# 974
	fadd	f4, f4, f5	# 972
	fmul	f5, f1, f2	# 975
	lw		x10, 36(x9)	# 531
	mul		x11, x30, x8	# 536
	add		x10, x10, x11	# 536
	flw		f6, 0(x10)	# 536
	fmul	f5, f5, f6	# 975
	fadd	f4, f4, f5	# 972
beq_cont.22927:
	lw		x10, 16(x9)	# 391
	mul		x11, x30, x5	# 396
	add		x10, x10, x11	# 396
	flw		f5, 0(x10)	# 396
	fmul	f1, f1, f5	# 1244
	fsub	f1, f0, f1	# 123
	lw		x10, 16(x9)	# 401
	mul		x6, x30, x6	# 406
	add		x6, x10, x6	# 406
	flw		f5, 0(x6)	# 406
	fmul	f2, f2, f5	# 1245
	fsub	f2, f0, f2	# 123
	lw		x6, 16(x9)	# 411
	mul		x8, x30, x8	# 416
	add		x6, x6, x8	# 416
	flw		f5, 0(x6)	# 416
	fmul	f3, f3, f5	# 1246
	fsub	f3, f0, f3	# 123
	mul		x6, x30, x5	# 1248
	add		x6, x4, x6	# 1248
	fsw		f4, 0(x6)	# 1248
	lw		x6, 12(x9)	# 382
	beq		x6, x5, beq.22929	# 1252
	addi	x5, x0, 1	# 1253
	addi	x6, x0, 2	# 1253
	mul		x6, x30, x6	# 1253
	add		x6, x7, x6	# 1253
	flw		f5, 0(x6)	# 1253
	lw		x6, 36(x9)	# 521
	addi	x8, x0, 1	# 526
	mul		x8, x30, x8	# 526
	add		x6, x6, x8	# 526
	flw		f6, 0(x6)	# 526
	fmul	f5, f5, f6	# 1253
	addi	x6, x0, 1	# 1253
	mul		x6, x30, x6	# 1253
	add		x6, x7, x6	# 1253
	flw		f6, 0(x6)	# 1253
	lw		x6, 36(x9)	# 531
	addi	x8, x0, 2	# 536
	mul		x8, x30, x8	# 536
	add		x6, x6, x8	# 536
	flw		f7, 0(x6)	# 536
	fmul	f6, f6, f7	# 1253
	fadd	f5, f5, f6	# 1253
	fadd	f6, f0, f17	# 126
	fmul	f5, f5, f6	# 126
	fsub	f1, f1, f5	# 1253
	mul		x5, x30, x5	# 1253
	add		x5, x4, x5	# 1253
	fsw		f1, 0(x5)	# 1253
	addi	x5, x0, 2	# 1254
	addi	x6, x0, 2	# 1254
	mul		x6, x30, x6	# 1254
	add		x6, x7, x6	# 1254
	flw		f1, 0(x6)	# 1254
	lw		x6, 36(x9)	# 511
	addi	x8, x0, 0	# 516
	mul		x8, x30, x8	# 516
	add		x6, x6, x8	# 516
	flw		f5, 0(x6)	# 516
	fmul	f1, f1, f5	# 1254
	addi	x6, x0, 0	# 1254
	mul		x6, x30, x6	# 1254
	add		x6, x7, x6	# 1254
	flw		f5, 0(x6)	# 1254
	lw		x6, 36(x9)	# 531
	addi	x8, x0, 2	# 536
	mul		x8, x30, x8	# 536
	add		x6, x6, x8	# 536
	flw		f6, 0(x6)	# 536
	fmul	f5, f5, f6	# 1254
	fadd	f1, f1, f5	# 1254
	fadd	f5, f0, f17	# 126
	fmul	f1, f1, f5	# 126
	fsub	f1, f2, f1	# 1254
	mul		x5, x30, x5	# 1254
	add		x5, x4, x5	# 1254
	fsw		f1, 0(x5)	# 1254
	addi	x5, x0, 3	# 1255
	addi	x6, x0, 1	# 1255
	mul		x6, x30, x6	# 1255
	add		x6, x7, x6	# 1255
	flw		f1, 0(x6)	# 1255
	lw		x6, 36(x9)	# 511
	addi	x8, x0, 0	# 516
	mul		x8, x30, x8	# 516
	add		x6, x6, x8	# 516
	flw		f2, 0(x6)	# 516
	fmul	f1, f1, f2	# 1255
	addi	x6, x0, 0	# 1255
	mul		x6, x30, x6	# 1255
	add		x6, x7, x6	# 1255
	flw		f2, 0(x6)	# 1255
	lw		x6, 36(x9)	# 521
	addi	x7, x0, 1	# 526
	mul		x7, x30, x7	# 526
	add		x6, x6, x7	# 526
	flw		f5, 0(x6)	# 526
	fmul	f2, f2, f5	# 1255
	fadd	f1, f1, f2	# 1255
	fadd	f2, f0, f17	# 126
	fmul	f1, f1, f2	# 126
	fsub	f1, f3, f1	# 1255
	mul		x5, x30, x5	# 1255
	add		x5, x4, x5	# 1255
	fsw		f1, 0(x5)	# 1255
	jal		x0, beq_cont.22928	# 1252
beq.22929:
	addi	x5, x0, 1	# 1257
	mul		x5, x30, x5	# 1257
	add		x5, x4, x5	# 1257
	fsw		f1, 0(x5)	# 1257
	addi	x5, x0, 2	# 1258
	mul		x5, x30, x5	# 1258
	add		x5, x4, x5	# 1258
	fsw		f2, 0(x5)	# 1258
	addi	x5, x0, 3	# 1259
	mul		x5, x30, x5	# 1259
	add		x5, x4, x5	# 1259
	fsw		f3, 0(x5)	# 1259
beq_cont.22928:
	flw		f1, 0(x2)	# 120
	feq		x31, f4, f1	# 120
	beq		x31, x0, feq_else.22931	# 120
	jal		x0, feq_cont.22930	# 120
feq_else.22931:
	addi	x5, x0, 4	# 1262
	fadd	f1, f0, f16	# 1262
	fdiv	f1, f1, f4	# 1262
	mul		x5, x30, x5	# 1262
	add		x5, x4, x5	# 1262
	fsw		f1, 0(x5)	# 1262
feq_cont.22930:
	jalr	x0, x1, 0	# 1264
iter_setup_dirvec_constants.2777.12370:
	lw		x6, 20(x29)	# 1270
	lw		x7, 16(x29)	# 1270
	lw		x8, 12(x29)	# 1270
	lw		x9, 8(x29)	# 1270
	lw		x10, 4(x29)	# 1270
	ble		x9, x5, ble.22932	# 1270
	jalr	x0, x1, 0	# 1283
ble.22932:
	mul		x9, x30, x5	# 1271
	addi	x9, x9, 50048	# 1271
	lw		x9, 0(x9)	# 1271
	lw		x11, 4(x4)	# 645
	lw		x12, 0(x4)	# 639
	lw		x13, 4(x9)	# 353
	sw		x4, 0(x2)	# 1275
	sw		x29, -4(x2)	# 1275
	sw		x10, -8(x2)	# 1275
	beq		x13, x10, beq.22935	# 1275
	addi	x8, x0, 2	# 1277
	beq		x13, x8, beq.22937	# 1277
	sw		x11, -12(x2)	# 1280
	sw		x5, -16(x2)	# 1280
	addi	x5, x9, 0
	addi	x4, x12, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1280
	addi	x2, x2, -24	# 1280
	lw		x31, 0(x29)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 24	# 1280
	lw		x1, -20(x2)	# 1280
	lw		x5, -16(x2)	# 1280
	mul		x6, x30, x5	# 1280
	lw		x7, -12(x2)	# 1280
	add		x6, x7, x6	# 1280
	sw		x4, 0(x6)	# 1280
	jal		x0, beq_cont.22936	# 1277
beq.22937:
	sw		x11, -12(x2)	# 1278
	sw		x5, -16(x2)	# 1278
	addi	x5, x9, 0
	addi	x4, x12, 0
	addi	x29, x6, 0
	sw		x1, -20(x2)	# 1278
	addi	x2, x2, -24	# 1278
	lw		x31, 0(x29)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 24	# 1278
	lw		x1, -20(x2)	# 1278
	lw		x5, -16(x2)	# 1278
	mul		x6, x30, x5	# 1278
	lw		x7, -12(x2)	# 1278
	add		x6, x7, x6	# 1278
	sw		x4, 0(x6)	# 1278
beq_cont.22936:
	jal		x0, beq_cont.22934	# 1275
beq.22935:
	sw		x11, -12(x2)	# 1276
	sw		x5, -16(x2)	# 1276
	addi	x5, x9, 0
	addi	x4, x12, 0
	addi	x29, x8, 0
	sw		x1, -20(x2)	# 1276
	addi	x2, x2, -24	# 1276
	lw		x31, 0(x29)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 24	# 1276
	lw		x1, -20(x2)	# 1276
	lw		x5, -16(x2)	# 1276
	mul		x6, x30, x5	# 1276
	lw		x7, -12(x2)	# 1276
	add		x6, x7, x6	# 1276
	sw		x4, 0(x6)	# 1276
beq_cont.22934:
	lw		x4, -8(x2)	# 1282
	sub		x5, x5, x4	# 1282
	lw		x4, 0(x2)	# 1282
	lw		x29, -4(x2)	# 1282
	lw		x31, 0(x29)	# 1282
	jalr	x0, x31, 0	# 1282
setup_startp_constants.2782.12373:
	lw		x6, 12(x29)	# 1295
	lw		x7, 8(x29)	# 1295
	lw		x8, 4(x29)	# 1295
	ble		x7, x5, ble.22938	# 1295
	jalr	x0, x1, 0	# 1310
ble.22938:
	mul		x9, x30, x5	# 1296
	addi	x9, x9, 50048	# 1296
	lw		x9, 0(x9)	# 1296
	lw		x10, 40(x9)	# 548
	lw		x11, 4(x9)	# 353
	mul		x12, x30, x7	# 1299
	add		x12, x4, x12	# 1299
	flw		f1, 0(x12)	# 1299
	lw		x12, 20(x9)	# 431
	mul		x13, x30, x7	# 436
	add		x12, x12, x13	# 436
	flw		f2, 0(x12)	# 436
	fsub	f1, f1, f2	# 1299
	mul		x12, x30, x7	# 1299
	add		x12, x10, x12	# 1299
	fsw		f1, 0(x12)	# 1299
	mul		x12, x30, x8	# 1300
	add		x12, x4, x12	# 1300
	flw		f1, 0(x12)	# 1300
	lw		x12, 20(x9)	# 441
	mul		x13, x30, x8	# 446
	add		x12, x12, x13	# 446
	flw		f2, 0(x12)	# 446
	fsub	f1, f1, f2	# 1300
	mul		x12, x30, x8	# 1300
	add		x12, x10, x12	# 1300
	fsw		f1, 0(x12)	# 1300
	mul		x12, x30, x6	# 1301
	add		x12, x4, x12	# 1301
	flw		f1, 0(x12)	# 1301
	lw		x12, 20(x9)	# 451
	mul		x13, x30, x6	# 456
	add		x12, x12, x13	# 456
	flw		f2, 0(x12)	# 456
	fsub	f1, f1, f2	# 1301
	mul		x12, x30, x6	# 1301
	add		x12, x10, x12	# 1301
	fsw		f1, 0(x12)	# 1301
	beq		x11, x6, beq.22941	# 1302
	addi	x12, x0, 2	# 1305
	ble		x11, x12, ble_cont.22942	# 1305
	addi	x12, x0, 0	# 1306
	mul		x12, x30, x12	# 1306
	add		x12, x10, x12	# 1306
	flw		f1, 0(x12)	# 1306
	addi	x12, x0, 1	# 1306
	mul		x12, x30, x12	# 1306
	add		x12, x10, x12	# 1306
	flw		f2, 0(x12)	# 1306
	addi	x12, x0, 2	# 1306
	mul		x12, x30, x12	# 1306
	add		x12, x10, x12	# 1306
	flw		f3, 0(x12)	# 1306
	fmul	f4, f1, f1	# 127
	lw		x12, 16(x9)	# 391
	mul		x13, x30, x7	# 396
	add		x12, x12, x13	# 396
	flw		f5, 0(x12)	# 396
	fmul	f4, f4, f5	# 967
	fmul	f5, f2, f2	# 127
	lw		x12, 16(x9)	# 401
	mul		x13, x30, x8	# 406
	add		x12, x12, x13	# 406
	flw		f6, 0(x12)	# 406
	fmul	f5, f5, f6	# 967
	fadd	f4, f4, f5	# 967
	fmul	f5, f3, f3	# 127
	lw		x12, 16(x9)	# 411
	mul		x13, x30, x6	# 416
	add		x12, x12, x13	# 416
	flw		f6, 0(x12)	# 416
	fmul	f5, f5, f6	# 967
	fadd	f4, f4, f5	# 967
	lw		x12, 12(x9)	# 382
	addi	x13, x0, 0	# 969
	beq		x12, x13, beq.22944	# 969
	fmul	f5, f2, f3	# 973
	lw		x12, 36(x9)	# 511
	mul		x7, x30, x7	# 516
	add		x7, x12, x7	# 516
	flw		f6, 0(x7)	# 516
	fmul	f5, f5, f6	# 973
	fadd	f4, f4, f5	# 972
	fmul	f3, f3, f1	# 974
	lw		x7, 36(x9)	# 521
	mul		x12, x30, x8	# 526
	add		x7, x7, x12	# 526
	flw		f5, 0(x7)	# 526
	fmul	f3, f3, f5	# 974
	fadd	f3, f4, f3	# 972
	fmul	f1, f1, f2	# 975
	lw		x7, 36(x9)	# 531
	mul		x6, x30, x6	# 536
	add		x6, x7, x6	# 536
	flw		f2, 0(x6)	# 536
	fmul	f1, f1, f2	# 975
	fadd	f1, f3, f1	# 972
	jal		x0, beq_cont.22943	# 969
beq.22944:
	fadd	f1, f0, f4	# 970
beq_cont.22943:
	addi	x6, x0, 3	# 1307
	addi	x7, x0, 3	# 1307
	beq		x11, x7, beq.22946	# 1307
	jal		x0, beq_cont.22945	# 1307
beq.22946:
	fadd	f2, f0, f16	# 1307
	fsub	f1, f1, f2	# 1307
beq_cont.22945:
	mul		x6, x30, x6	# 1307
	add		x6, x10, x6	# 1307
	fsw		f1, 0(x6)	# 1307
ble_cont.22942:
	jal		x0, beq_cont.22940	# 1302
beq.22941:
	addi	x6, x0, 3	# 1303
	lw		x7, 16(x9)	# 421
	addi	x9, x0, 0	# 1304
	mul		x9, x30, x9	# 1304
	add		x9, x10, x9	# 1304
	flw		f1, 0(x9)	# 1304
	addi	x9, x0, 1	# 1304
	mul		x9, x30, x9	# 1304
	add		x9, x10, x9	# 1304
	flw		f2, 0(x9)	# 1304
	addi	x9, x0, 2	# 1304
	mul		x9, x30, x9	# 1304
	add		x9, x10, x9	# 1304
	flw		f3, 0(x9)	# 1304
	addi	x9, x0, 0	# 297
	mul		x9, x30, x9	# 297
	add		x9, x7, x9	# 297
	flw		f4, 0(x9)	# 297
	fmul	f1, f4, f1	# 297
	addi	x9, x0, 1	# 297
	mul		x9, x30, x9	# 297
	add		x9, x7, x9	# 297
	flw		f4, 0(x9)	# 297
	fmul	f2, f4, f2	# 297
	fadd	f1, f1, f2	# 297
	addi	x9, x0, 2	# 297
	mul		x9, x30, x9	# 297
	add		x7, x7, x9	# 297
	flw		f2, 0(x7)	# 297
	fmul	f2, f2, f3	# 297
	fadd	f1, f1, f2	# 297
	mul		x6, x30, x6	# 1303
	add		x6, x10, x6	# 1303
	fsw		f1, 0(x6)	# 1303
beq_cont.22940:
	sub		x5, x5, x8	# 1309
	lw		x31, 0(x29)	# 1309
	jalr	x0, x31, 0	# 1309
check_all_inside.2807.12376:
	lw		x6, 24(x29)	# 1364
	lw		x7, 20(x29)	# 1364
	lw		x8, 16(x29)	# 1364
	lw		x9, 12(x29)	# 1364
	lw		x10, 8(x29)	# 1364
	flw		f4, 4(x29)	# 1364
	mul		x11, x30, x4	# 1364
	add		x11, x5, x11	# 1364
	lw		x11, 0(x11)	# 1364
	beq		x11, x7, beq.22947	# 1365
	mul		x7, x30, x11	# 1368
	addi	x7, x7, 50048	# 1368
	lw		x7, 0(x7)	# 1368
	lw		x11, 20(x7)	# 431
	mul		x12, x30, x9	# 436
	add		x11, x11, x12	# 436
	flw		f5, 0(x11)	# 436
	fsub	f5, f1, f5	# 1350
	lw		x11, 20(x7)	# 441
	mul		x12, x30, x10	# 446
	add		x11, x11, x12	# 446
	flw		f6, 0(x11)	# 446
	fsub	f6, f2, f6	# 1351
	lw		x11, 20(x7)	# 451
	mul		x12, x30, x6	# 456
	add		x11, x11, x12	# 456
	flw		f7, 0(x11)	# 456
	fsub	f7, f3, f7	# 1352
	lw		x11, 4(x7)	# 353
	beq		x11, x10, beq.22949	# 1354
	beq		x11, x6, beq.22951	# 1356
	fmul	f8, f5, f5	# 127
	lw		x11, 16(x7)	# 391
	mul		x12, x30, x9	# 396
	add		x11, x11, x12	# 396
	flw		f9, 0(x11)	# 396
	fmul	f8, f8, f9	# 967
	fmul	f9, f6, f6	# 127
	lw		x11, 16(x7)	# 401
	mul		x12, x30, x10	# 406
	add		x11, x11, x12	# 406
	flw		f10, 0(x11)	# 406
	fmul	f9, f9, f10	# 967
	fadd	f8, f8, f9	# 967
	fmul	f9, f7, f7	# 127
	lw		x11, 16(x7)	# 411
	mul		x12, x30, x6	# 416
	add		x11, x11, x12	# 416
	flw		f10, 0(x11)	# 416
	fmul	f9, f9, f10	# 967
	fadd	f8, f8, f9	# 967
	lw		x11, 12(x7)	# 382
	beq		x11, x9, beq.22953	# 969
	fmul	f9, f6, f7	# 973
	lw		x11, 36(x7)	# 511
	mul		x12, x30, x9	# 516
	add		x11, x11, x12	# 516
	flw		f10, 0(x11)	# 516
	fmul	f9, f9, f10	# 973
	fadd	f8, f8, f9	# 972
	fmul	f7, f7, f5	# 974
	lw		x11, 36(x7)	# 521
	mul		x12, x30, x10	# 526
	add		x11, x11, x12	# 526
	flw		f9, 0(x11)	# 526
	fmul	f7, f7, f9	# 974
	fadd	f7, f8, f7	# 972
	fmul	f5, f5, f6	# 975
	lw		x11, 36(x7)	# 531
	mul		x6, x30, x6	# 536
	add		x6, x11, x6	# 536
	flw		f6, 0(x6)	# 536
	fmul	f5, f5, f6	# 975
	fadd	f5, f7, f5	# 972
	jal		x0, beq_cont.22952	# 969
beq.22953:
	fadd	f5, f0, f8	# 970
beq_cont.22952:
	lw		x6, 4(x7)	# 353
	beq		x6, x8, beq.22955	# 1344
	jal		x0, beq_cont.22954	# 1344
beq.22955:
	fadd	f6, f0, f16	# 1344
	fsub	f5, f5, f6	# 1344
beq_cont.22954:
	lw		x6, 24(x7)	# 373
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.22957	# 122
	addi	x7, x0, 0	# 122
	jal		x0, fle_cont.22956	# 122
fle_else.22957:
	addi	x7, x0, 1	# 122
fle_cont.22956:
	beq		x6, x9, beq.22959	# 204
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.22961	# 122
	addi	x6, x0, 1	# 204
	jal		x0, fle_cont.22960	# 122
fle_else.22961:
	addi	x6, x0, 0	# 204
fle_cont.22960:
	jal		x0, beq_cont.22958	# 204
beq.22959:
	addi	x6, x7, 0	# 204
beq_cont.22958:
	beq		x6, x9, beq.22963	# 1345
	addi	x6, x0, 0	# 1345
	jal		x0, beq_cont.22962	# 1345
beq.22963:
	addi	x6, x0, 1	# 1345
beq_cont.22962:
	jal		x0, beq_cont.22950	# 1356
beq.22951:
	lw		x8, 16(x7)	# 421
	mul		x11, x30, x9	# 297
	add		x11, x8, x11	# 297
	flw		f8, 0(x11)	# 297
	fmul	f5, f8, f5	# 297
	mul		x11, x30, x10	# 297
	add		x11, x8, x11	# 297
	flw		f8, 0(x11)	# 297
	fmul	f6, f8, f6	# 297
	fadd	f5, f5, f6	# 297
	mul		x6, x30, x6	# 297
	add		x6, x8, x6	# 297
	flw		f6, 0(x6)	# 297
	fmul	f6, f6, f7	# 297
	fadd	f5, f5, f6	# 297
	lw		x6, 24(x7)	# 373
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.22965	# 122
	addi	x7, x0, 0	# 122
	jal		x0, fle_cont.22964	# 122
fle_else.22965:
	addi	x7, x0, 1	# 122
fle_cont.22964:
	beq		x6, x9, beq.22967	# 204
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.22969	# 122
	addi	x6, x0, 1	# 204
	jal		x0, fle_cont.22968	# 122
fle_else.22969:
	addi	x6, x0, 0	# 204
fle_cont.22968:
	jal		x0, beq_cont.22966	# 204
beq.22967:
	addi	x6, x7, 0	# 204
beq_cont.22966:
	beq		x6, x9, beq.22971	# 1338
	addi	x6, x0, 0	# 1338
	jal		x0, beq_cont.22970	# 1338
beq.22971:
	addi	x6, x0, 1	# 1338
beq_cont.22970:
beq_cont.22950:
	jal		x0, beq_cont.22948	# 1354
beq.22949:
	fle		x31, f5, f4	# 124
	beq		x31, x0, fle_cont.22972	# 124
	fsub	f5, f0, f5	# 124
fle_cont.22972:
	lw		x8, 16(x7)	# 391
	mul		x11, x30, x9	# 396
	add		x8, x8, x11	# 396
	flw		f8, 0(x8)	# 396
	fle		x31, f8, f5	# 125
	beq		x31, x0, fle_else.22974	# 125
	addi	x6, x0, 0	# 1331
	jal		x0, fle_cont.22973	# 125
fle_else.22974:
	fle		x31, f6, f4	# 124
	beq		x31, x0, fle_else.22976	# 124
	fsub	f5, f0, f6	# 124
	jal		x0, fle_cont.22975	# 124
fle_else.22976:
	fadd	f5, f0, f6	# 124
fle_cont.22975:
	lw		x8, 16(x7)	# 401
	mul		x11, x30, x10	# 406
	add		x8, x8, x11	# 406
	flw		f6, 0(x8)	# 406
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.22978	# 125
	addi	x6, x0, 0	# 1330
	jal		x0, fle_cont.22977	# 125
fle_else.22978:
	fle		x31, f7, f4	# 124
	beq		x31, x0, fle_else.22980	# 124
	fsub	f4, f0, f7	# 124
	jal		x0, fle_cont.22979	# 124
fle_else.22980:
	fadd	f4, f0, f7	# 124
fle_cont.22979:
	lw		x8, 16(x7)	# 411
	mul		x6, x30, x6	# 416
	add		x6, x8, x6	# 416
	flw		f5, 0(x6)	# 416
	fle		x31, f5, f4	# 125
	beq		x31, x0, fle_else.22982	# 125
	addi	x6, x0, 0	# 125
	jal		x0, fle_cont.22981	# 125
fle_else.22982:
	addi	x6, x0, 1	# 125
fle_cont.22981:
fle_cont.22977:
fle_cont.22973:
	beq		x6, x9, beq.22984	# 1326
	lw		x6, 24(x7)	# 373
	jal		x0, beq_cont.22983	# 1326
beq.22984:
	lw		x6, 24(x7)	# 373
	beq		x6, x9, beq.22986	# 1332
	addi	x6, x0, 0	# 1332
	jal		x0, beq_cont.22985	# 1332
beq.22986:
	addi	x6, x0, 1	# 1332
beq_cont.22985:
beq_cont.22983:
beq_cont.22948:
	beq		x6, x9, beq.22987	# 1368
	addi	x4, x0, 0	# 1369
	jalr	x0, x1, 0	# 1369
beq.22987:
	add		x4, x4, x10	# 1371
	lw		x31, 0(x29)	# 1371
	jalr	x0, x31, 0	# 1371
beq.22947:
	addi	x4, x0, 1	# 1366
	jalr	x0, x1, 0	# 1366
shadow_check_and_group.2813.12382:
	lw		x6, 36(x29)	# 1384
	lw		x7, 32(x29)	# 1384
	lw		x8, 28(x29)	# 1384
	lw		x9, 24(x29)	# 1384
	lw		x10, 20(x29)	# 1384
	lw		x11, 16(x29)	# 1384
	lw		x12, 12(x29)	# 1384
	lw		x13, 8(x29)	# 1384
	flw		f1, 4(x29)	# 1384
	mul		x14, x30, x4	# 1384
	add		x14, x5, x14	# 1384
	lw		x14, 0(x14)	# 1384
	beq		x14, x10, beq.22988	# 1384
	mul		x10, x30, x14	# 1126
	addi	x10, x10, 50048	# 1126
	lw		x10, 0(x10)	# 1126
	mul		x15, x30, x12	# 1127
	addi	x15, x15, 50552	# 1127
	flw		f2, 0(x15)	# 1127
	lw		x15, 20(x10)	# 431
	mul		x16, x30, x12	# 436
	add		x15, x15, x16	# 436
	flw		f3, 0(x15)	# 436
	fsub	f2, f2, f3	# 1127
	mul		x15, x30, x13	# 1128
	addi	x15, x15, 50552	# 1128
	flw		f3, 0(x15)	# 1128
	lw		x15, 20(x10)	# 441
	mul		x16, x30, x13	# 446
	add		x15, x15, x16	# 446
	flw		f4, 0(x15)	# 446
	fsub	f3, f3, f4	# 1128
	mul		x15, x30, x9	# 1129
	addi	x15, x15, 50552	# 1129
	flw		f4, 0(x15)	# 1129
	lw		x15, 20(x10)	# 451
	mul		x16, x30, x9	# 456
	add		x15, x15, x16	# 456
	flw		f5, 0(x15)	# 456
	fsub	f4, f4, f5	# 1129
	mul		x15, x30, x14	# 1131
	addi	x15, x15, 50748	# 1131
	lw		x15, 0(x15)	# 1131
	lw		x16, 4(x10)	# 353
	sw		x8, 0(x2)	# 1133
	sw		x9, -4(x2)	# 1133
	sw		x5, -8(x2)	# 1133
	sw		x29, -12(x2)	# 1133
	sw		x13, -16(x2)	# 1133
	sw		x4, -20(x2)	# 1133
	sw		x14, -24(x2)	# 1133
	sw		x12, -28(x2)	# 1133
	beq		x16, x13, beq.22990	# 1133
	addi	x7, x0, 2	# 1135
	beq		x16, x7, beq.22992	# 1135
	addi	x5, x15, 0
	addi	x4, x10, 0
	addi	x29, x6, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -32(x2)	# 1138
	addi	x2, x2, -36	# 1138
	lw		x31, 0(x29)	# 1138
	jalr	x1, x31, 0	# 1138
	addi	x2, x2, 36	# 1138
	lw		x1, -32(x2)	# 1138
	jal		x0, beq_cont.22991	# 1135
beq.22992:
	mul		x6, x30, x12	# 1097
	add		x6, x15, x6	# 1097
	flw		f5, 0(x6)	# 1097
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.22994	# 122
	addi	x4, x0, 0	# 1101
	jal		x0, fle_cont.22993	# 122
fle_else.22994:
	mul		x6, x30, x13	# 1099
	add		x6, x15, x6	# 1099
	flw		f1, 0(x6)	# 1099
	fmul	f1, f1, f2	# 1099
	mul		x6, x30, x9	# 1099
	add		x6, x15, x6	# 1099
	flw		f2, 0(x6)	# 1099
	fmul	f2, f2, f3	# 1099
	fadd	f1, f1, f2	# 1099
	mul		x6, x30, x11	# 1099
	add		x6, x15, x6	# 1099
	flw		f2, 0(x6)	# 1099
	fmul	f2, f2, f4	# 1099
	fadd	f1, f1, f2	# 1099
	mul		x6, x30, x12	# 1098
	addi	x6, x6, 50540	# 1098
	fsw		f1, 0(x6)	# 1098
	addi	x4, x0, 1	# 1100
fle_cont.22993:
beq_cont.22991:
	jal		x0, beq_cont.22989	# 1133
beq.22990:
	addi	x6, x0, 50736	# 1134
	addi	x5, x6, 0
	addi	x4, x10, 0
	addi	x29, x7, 0
	addi	x6, x15, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -32(x2)	# 1134
	addi	x2, x2, -36	# 1134
	lw		x31, 0(x29)	# 1134
	jalr	x1, x31, 0	# 1134
	addi	x2, x2, 36	# 1134
	lw		x1, -32(x2)	# 1134
beq_cont.22989:
	lw		x5, -28(x2)	# 1389
	mul		x6, x30, x5	# 1389
	addi	x6, x6, 50540	# 1389
	flw		f1, 0(x6)	# 1389
	beq		x4, x5, beq.22996	# 1390
	lui		x4, %hi(l.18904)	# 1390
	ori		x4, x0, %lo(l.18904)	# 1390
	flw		f2, 0(x4)	# 1390
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.22998	# 125
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.22997	# 125
fle_else.22998:
	addi	x4, x0, 1	# 125
fle_cont.22997:
	jal		x0, beq_cont.22995	# 1390
beq.22996:
	addi	x4, x0, 0	# 1390
beq_cont.22995:
	beq		x4, x5, beq.22999	# 1390
	fadd	f2, f0, f22	# 1393
	fadd	f1, f1, f2	# 1393
	mul		x4, x30, x5	# 1394
	addi	x4, x4, 50312	# 1394
	flw		f2, 0(x4)	# 1394
	fmul	f2, f2, f1	# 1394
	mul		x4, x30, x5	# 1394
	addi	x4, x4, 50552	# 1394
	flw		f3, 0(x4)	# 1394
	fadd	f2, f2, f3	# 1394
	lw		x4, -16(x2)	# 1395
	mul		x6, x30, x4	# 1395
	addi	x6, x6, 50312	# 1395
	flw		f3, 0(x6)	# 1395
	fmul	f3, f3, f1	# 1395
	mul		x6, x30, x4	# 1395
	addi	x6, x6, 50552	# 1395
	flw		f4, 0(x6)	# 1395
	fadd	f3, f3, f4	# 1395
	lw		x6, -4(x2)	# 1396
	mul		x7, x30, x6	# 1396
	addi	x7, x7, 50312	# 1396
	flw		f4, 0(x7)	# 1396
	fmul	f1, f4, f1	# 1396
	mul		x6, x30, x6	# 1396
	addi	x6, x6, 50552	# 1396
	flw		f4, 0(x6)	# 1396
	fadd	f1, f1, f4	# 1396
	lw		x6, -8(x2)	# 1397
	lw		x29, 0(x2)	# 1397
	addi	x4, x5, 0
	addi	x5, x6, 0
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -32(x2)	# 1397
	addi	x2, x2, -36	# 1397
	lw		x31, 0(x29)	# 1397
	jalr	x1, x31, 0	# 1397
	addi	x2, x2, 36	# 1397
	lw		x1, -32(x2)	# 1397
	lw		x5, -28(x2)	# 1397
	beq		x4, x5, beq.23000	# 1397
	addi	x4, x0, 1	# 1398
	jalr	x0, x1, 0	# 1398
beq.23000:
	lw		x4, -16(x2)	# 1400
	lw		x5, -20(x2)	# 1400
	add		x4, x5, x4	# 1400
	lw		x5, -8(x2)	# 1400
	lw		x29, -12(x2)	# 1400
	lw		x31, 0(x29)	# 1400
	jalr	x0, x31, 0	# 1400
beq.22999:
	lw		x4, -24(x2)	# 1406
	mul		x4, x30, x4	# 1406
	addi	x4, x4, 50048	# 1406
	lw		x4, 0(x4)	# 1406
	lw		x4, 24(x4)	# 373
	beq		x4, x5, beq.23001	# 1406
	lw		x4, -16(x2)	# 1407
	lw		x5, -20(x2)	# 1407
	add		x4, x5, x4	# 1407
	lw		x5, -8(x2)	# 1407
	lw		x29, -12(x2)	# 1407
	lw		x31, 0(x29)	# 1407
	jalr	x0, x31, 0	# 1407
beq.23001:
	addi	x4, x0, 0	# 1409
	jalr	x0, x1, 0	# 1409
beq.22988:
	addi	x4, x0, 0	# 1385
	jalr	x0, x1, 0	# 1385
shadow_check_one_or_group.2816.12385:
	lw		x6, 16(x29)	# 1414
	lw		x7, 12(x29)	# 1414
	lw		x8, 8(x29)	# 1414
	lw		x9, 4(x29)	# 1414
	mul		x10, x30, x4	# 1414
	add		x10, x5, x10	# 1414
	lw		x10, 0(x10)	# 1414
	beq		x10, x7, beq.23002	# 1415
	mul		x7, x30, x10	# 1418
	addi	x7, x7, 50332	# 1418
	lw		x7, 0(x7)	# 1418
	sw		x5, 0(x2)	# 1419
	sw		x29, -4(x2)	# 1419
	sw		x9, -8(x2)	# 1419
	sw		x4, -12(x2)	# 1419
	sw		x8, -16(x2)	# 1419
	addi	x5, x7, 0
	addi	x4, x8, 0
	addi	x29, x6, 0
	sw		x1, -20(x2)	# 1419
	addi	x2, x2, -24	# 1419
	lw		x31, 0(x29)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 24	# 1419
	lw		x1, -20(x2)	# 1419
	lw		x5, -16(x2)	# 1420
	beq		x4, x5, beq.23003	# 1420
	addi	x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.23003:
	lw		x4, -8(x2)	# 1423
	lw		x5, -12(x2)	# 1423
	add		x4, x5, x4	# 1423
	lw		x5, 0(x2)	# 1423
	lw		x29, -4(x2)	# 1423
	lw		x31, 0(x29)	# 1423
	jalr	x0, x31, 0	# 1423
beq.23002:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
shadow_check_one_or_matrix.2819.12388:
	lw		x6, 36(x29)	# 1429
	lw		x7, 32(x29)	# 1429
	lw		x8, 28(x29)	# 1429
	lw		x9, 24(x29)	# 1429
	lw		x10, 20(x29)	# 1429
	lw		x11, 16(x29)	# 1429
	lw		x12, 12(x29)	# 1429
	lw		x13, 8(x29)	# 1429
	flw		f1, 4(x29)	# 1429
	mul		x14, x30, x4	# 1429
	add		x14, x5, x14	# 1429
	lw		x14, 0(x14)	# 1429
	mul		x15, x30, x12	# 1430
	add		x15, x14, x15	# 1430
	lw		x15, 0(x15)	# 1430
	beq		x15, x10, beq.23004	# 1431
	addi	x10, x0, 99	# 1435
	sw		x14, 0(x2)	# 1435
	sw		x8, -4(x2)	# 1435
	sw		x5, -8(x2)	# 1435
	sw		x29, -12(x2)	# 1435
	sw		x13, -16(x2)	# 1435
	sw		x4, -20(x2)	# 1435
	sw		x12, -24(x2)	# 1435
	beq		x15, x10, beq.23006	# 1435
	mul		x10, x30, x15	# 1126
	addi	x10, x10, 50048	# 1126
	lw		x10, 0(x10)	# 1126
	addi	x16, x0, 0	# 1127
	mul		x16, x30, x16	# 1127
	addi	x16, x16, 50552	# 1127
	flw		f2, 0(x16)	# 1127
	lw		x16, 20(x10)	# 431
	mul		x17, x30, x12	# 436
	add		x16, x16, x17	# 436
	flw		f3, 0(x16)	# 436
	fsub	f2, f2, f3	# 1127
	addi	x16, x0, 1	# 1128
	mul		x16, x30, x16	# 1128
	addi	x16, x16, 50552	# 1128
	flw		f3, 0(x16)	# 1128
	lw		x16, 20(x10)	# 441
	mul		x17, x30, x13	# 446
	add		x16, x16, x17	# 446
	flw		f4, 0(x16)	# 446
	fsub	f3, f3, f4	# 1128
	addi	x16, x0, 2	# 1129
	mul		x16, x30, x16	# 1129
	addi	x16, x16, 50552	# 1129
	flw		f4, 0(x16)	# 1129
	lw		x16, 20(x10)	# 451
	mul		x17, x30, x9	# 456
	add		x16, x16, x17	# 456
	flw		f5, 0(x16)	# 456
	fsub	f4, f4, f5	# 1129
	mul		x15, x30, x15	# 1131
	addi	x15, x15, 50748	# 1131
	lw		x15, 0(x15)	# 1131
	lw		x16, 4(x10)	# 353
	addi	x17, x0, 1	# 1133
	beq		x16, x17, beq.23008	# 1133
	addi	x7, x0, 2	# 1135
	beq		x16, x7, beq.23010	# 1135
	addi	x5, x15, 0
	addi	x4, x10, 0
	addi	x29, x6, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -28(x2)	# 1138
	addi	x2, x2, -32	# 1138
	lw		x31, 0(x29)	# 1138
	jalr	x1, x31, 0	# 1138
	addi	x2, x2, 32	# 1138
	lw		x1, -28(x2)	# 1138
	jal		x0, beq_cont.23009	# 1135
beq.23010:
	mul		x6, x30, x12	# 1097
	add		x6, x15, x6	# 1097
	flw		f5, 0(x6)	# 1097
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.23012	# 122
	addi	x4, x0, 0	# 1101
	jal		x0, fle_cont.23011	# 122
fle_else.23012:
	mul		x6, x30, x13	# 1099
	add		x6, x15, x6	# 1099
	flw		f1, 0(x6)	# 1099
	fmul	f1, f1, f2	# 1099
	mul		x6, x30, x9	# 1099
	add		x6, x15, x6	# 1099
	flw		f2, 0(x6)	# 1099
	fmul	f2, f2, f3	# 1099
	fadd	f1, f1, f2	# 1099
	mul		x6, x30, x11	# 1099
	add		x6, x15, x6	# 1099
	flw		f2, 0(x6)	# 1099
	fmul	f2, f2, f4	# 1099
	fadd	f1, f1, f2	# 1099
	mul		x6, x30, x12	# 1098
	addi	x6, x6, 50540	# 1098
	fsw		f1, 0(x6)	# 1098
	addi	x4, x0, 1	# 1100
fle_cont.23011:
beq_cont.23009:
	jal		x0, beq_cont.23007	# 1133
beq.23008:
	addi	x6, x0, 50736	# 1134
	addi	x5, x6, 0
	addi	x4, x10, 0
	addi	x29, x7, 0
	addi	x6, x15, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -28(x2)	# 1134
	addi	x2, x2, -32	# 1134
	lw		x31, 0(x29)	# 1134
	jalr	x1, x31, 0	# 1134
	addi	x2, x2, 32	# 1134
	lw		x1, -28(x2)	# 1134
beq_cont.23007:
	addi	x5, x0, 0	# 1441
	beq		x4, x5, beq.23014	# 1441
	addi	x4, x0, 0	# 1442
	mul		x4, x30, x4	# 1442
	addi	x4, x4, 50540	# 1442
	flw		f1, 0(x4)	# 1442
	fadd	f2, f0, f19	# 1442
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.23016	# 125
	addi	x4, x0, 0	# 1446
	jal		x0, fle_cont.23015	# 125
fle_else.23016:
	addi	x4, x0, 1	# 1443
	lw		x5, 0(x2)	# 1443
	lw		x29, -4(x2)	# 1443
	sw		x1, -28(x2)	# 1443
	addi	x2, x2, -32	# 1443
	lw		x31, 0(x29)	# 1443
	jalr	x1, x31, 0	# 1443
	addi	x2, x2, 32	# 1443
	lw		x1, -28(x2)	# 1443
	addi	x5, x0, 0	# 1443
	beq		x4, x5, beq.23018	# 1443
	addi	x4, x0, 1	# 1444
	jal		x0, beq_cont.23017	# 1443
beq.23018:
	addi	x4, x0, 0	# 1445
beq_cont.23017:
fle_cont.23015:
	jal		x0, beq_cont.23013	# 1441
beq.23014:
	addi	x4, x0, 0	# 1447
beq_cont.23013:
	jal		x0, beq_cont.23005	# 1435
beq.23006:
	addi	x4, x0, 1	# 1436
beq_cont.23005:
	lw		x5, -24(x2)	# 1434
	beq		x4, x5, beq.23019	# 1434
	lw		x4, -16(x2)	# 1449
	lw		x6, 0(x2)	# 1449
	lw		x29, -4(x2)	# 1449
	addi	x5, x6, 0
	sw		x1, -28(x2)	# 1449
	addi	x2, x2, -32	# 1449
	lw		x31, 0(x29)	# 1449
	jalr	x1, x31, 0	# 1449
	addi	x2, x2, 32	# 1449
	lw		x1, -28(x2)	# 1449
	lw		x5, -24(x2)	# 1449
	beq		x4, x5, beq.23020	# 1449
	addi	x4, x0, 1	# 1450
	jalr	x0, x1, 0	# 1450
beq.23020:
	lw		x4, -16(x2)	# 1452
	lw		x5, -20(x2)	# 1452
	add		x4, x5, x4	# 1452
	lw		x5, -8(x2)	# 1452
	lw		x29, -12(x2)	# 1452
	lw		x31, 0(x29)	# 1452
	jalr	x0, x31, 0	# 1452
beq.23019:
	lw		x4, -16(x2)	# 1454
	lw		x5, -20(x2)	# 1454
	add		x4, x5, x4	# 1454
	lw		x5, -8(x2)	# 1454
	lw		x29, -12(x2)	# 1454
	lw		x31, 0(x29)	# 1454
	jalr	x0, x31, 0	# 1454
beq.23004:
	addi	x4, x0, 0	# 1432
	jalr	x0, x1, 0	# 1432
solve_each_element.2822.12391:
	lw		x7, 32(x29)	# 1465
	lw		x8, 28(x29)	# 1465
	lw		x9, 24(x29)	# 1465
	lw		x10, 20(x29)	# 1465
	lw		x11, 16(x29)	# 1465
	lw		x12, 12(x29)	# 1465
	lw		x13, 8(x29)	# 1465
	flw		f1, 4(x29)	# 1465
	mul		x14, x30, x4	# 1465
	add		x14, x5, x14	# 1465
	lw		x14, 0(x14)	# 1465
	beq		x14, x11, beq.23021	# 1466
	mul		x11, x30, x14	# 1032
	addi	x11, x11, 50048	# 1032
	lw		x11, 0(x11)	# 1032
	mul		x15, x30, x12	# 1034
	addi	x15, x15, 50636	# 1034
	flw		f2, 0(x15)	# 1034
	lw		x15, 20(x11)	# 431
	mul		x16, x30, x12	# 436
	add		x15, x15, x16	# 436
	flw		f3, 0(x15)	# 436
	fsub	f2, f2, f3	# 1034
	mul		x15, x30, x13	# 1035
	addi	x15, x15, 50636	# 1035
	flw		f3, 0(x15)	# 1035
	lw		x15, 20(x11)	# 441
	mul		x16, x30, x13	# 446
	add		x15, x15, x16	# 446
	flw		f4, 0(x15)	# 446
	fsub	f3, f3, f4	# 1035
	mul		x15, x30, x10	# 1036
	addi	x15, x15, 50636	# 1036
	flw		f4, 0(x15)	# 1036
	lw		x15, 20(x11)	# 451
	mul		x16, x30, x10	# 456
	add		x15, x15, x16	# 456
	flw		f5, 0(x15)	# 456
	fsub	f4, f4, f5	# 1036
	lw		x15, 4(x11)	# 353
	sw		x9, 0(x2)	# 1039
	fsw		f1, -4(x2)	# 1039
	sw		x6, -8(x2)	# 1039
	sw		x5, -12(x2)	# 1039
	sw		x29, -16(x2)	# 1039
	sw		x13, -20(x2)	# 1039
	sw		x4, -24(x2)	# 1039
	sw		x14, -28(x2)	# 1039
	sw		x12, -32(x2)	# 1039
	beq		x15, x13, beq.23023	# 1039
	addi	x8, x0, 2	# 1040
	beq		x15, x8, beq.23025	# 1040
	addi	x5, x6, 0
	addi	x4, x11, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -36(x2)	# 1041
	addi	x2, x2, -40	# 1041
	lw		x31, 0(x29)	# 1041
	jalr	x1, x31, 0	# 1041
	addi	x2, x2, 40	# 1041
	lw		x1, -36(x2)	# 1041
	jal		x0, beq_cont.23024	# 1040
beq.23025:
	lw		x7, 16(x11)	# 421
	mul		x8, x30, x12	# 292
	add		x8, x6, x8	# 292
	flw		f5, 0(x8)	# 292
	mul		x8, x30, x12	# 292
	add		x8, x7, x8	# 292
	flw		f6, 0(x8)	# 292
	fmul	f5, f5, f6	# 292
	mul		x8, x30, x13	# 292
	add		x8, x6, x8	# 292
	flw		f6, 0(x8)	# 292
	mul		x8, x30, x13	# 292
	add		x8, x7, x8	# 292
	flw		f7, 0(x8)	# 292
	fmul	f6, f6, f7	# 292
	fadd	f5, f5, f6	# 292
	mul		x8, x30, x10	# 292
	add		x8, x6, x8	# 292
	flw		f6, 0(x8)	# 292
	mul		x8, x30, x10	# 292
	add		x8, x7, x8	# 292
	flw		f7, 0(x8)	# 292
	fmul	f6, f6, f7	# 292
	fadd	f5, f5, f6	# 292
	fle		x31, f5, f1	# 121
	beq		x31, x0, fle_else.23027	# 121
	addi	x4, x0, 0	# 959
	jal		x0, fle_cont.23026	# 121
fle_else.23027:
	mul		x8, x30, x12	# 297
	add		x8, x7, x8	# 297
	flw		f6, 0(x8)	# 297
	fmul	f2, f6, f2	# 297
	mul		x8, x30, x13	# 297
	add		x8, x7, x8	# 297
	flw		f6, 0(x8)	# 297
	fmul	f3, f6, f3	# 297
	fadd	f2, f2, f3	# 297
	mul		x8, x30, x10	# 297
	add		x7, x7, x8	# 297
	flw		f3, 0(x7)	# 297
	fmul	f3, f3, f4	# 297
	fadd	f2, f2, f3	# 297
	fsub	f2, f0, f2	# 123
	fdiv	f2, f2, f5	# 957
	mul		x7, x30, x12	# 957
	addi	x7, x7, 50540	# 957
	fsw		f2, 0(x7)	# 957
	addi	x4, x0, 1	# 958
fle_cont.23026:
beq_cont.23024:
	jal		x0, beq_cont.23022	# 1039
beq.23023:
	addi	x5, x6, 0
	addi	x4, x11, 0
	addi	x29, x8, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -36(x2)	# 1039
	addi	x2, x2, -40	# 1039
	lw		x31, 0(x29)	# 1039
	jalr	x1, x31, 0	# 1039
	addi	x2, x2, 40	# 1039
	lw		x1, -36(x2)	# 1039
beq_cont.23022:
	lw		x5, -32(x2)	# 1469
	beq		x4, x5, beq.23028	# 1469
	mul		x5, x30, x5	# 1473
	addi	x5, x5, 50540	# 1473
	flw		f1, 0(x5)	# 1473
	flw		f2, -4(x2)	# 125
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.23030	# 125
	jal		x0, fle_cont.23029	# 125
fle_else.23030:
	addi	x5, x0, 0	# 1476
	mul		x5, x30, x5	# 1476
	addi	x5, x5, 50548	# 1476
	flw		f2, 0(x5)	# 1476
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.23032	# 125
	jal		x0, fle_cont.23031	# 125
fle_else.23032:
	fadd	f2, f0, f22	# 1478
	fadd	f1, f1, f2	# 1478
	addi	x5, x0, 0	# 1479
	mul		x5, x30, x5	# 1479
	lw		x6, -8(x2)	# 1479
	add		x5, x6, x5	# 1479
	flw		f2, 0(x5)	# 1479
	fmul	f2, f2, f1	# 1479
	addi	x5, x0, 0	# 1479
	mul		x5, x30, x5	# 1479
	addi	x5, x5, 50636	# 1479
	flw		f3, 0(x5)	# 1479
	fadd	f2, f2, f3	# 1479
	addi	x5, x0, 1	# 1480
	mul		x5, x30, x5	# 1480
	add		x5, x6, x5	# 1480
	flw		f3, 0(x5)	# 1480
	fmul	f3, f3, f1	# 1480
	addi	x5, x0, 1	# 1480
	mul		x5, x30, x5	# 1480
	addi	x5, x5, 50636	# 1480
	flw		f4, 0(x5)	# 1480
	fadd	f3, f3, f4	# 1480
	addi	x5, x0, 2	# 1481
	mul		x5, x30, x5	# 1481
	add		x5, x6, x5	# 1481
	flw		f4, 0(x5)	# 1481
	fmul	f4, f4, f1	# 1481
	addi	x5, x0, 2	# 1481
	mul		x5, x30, x5	# 1481
	addi	x5, x5, 50636	# 1481
	flw		f5, 0(x5)	# 1481
	fadd	f4, f4, f5	# 1481
	addi	x5, x0, 0	# 1482
	lw		x7, -12(x2)	# 1482
	lw		x29, 0(x2)	# 1482
	sw		x4, -36(x2)	# 1482
	fsw		f4, -40(x2)	# 1482
	fsw		f3, -44(x2)	# 1482
	fsw		f2, -48(x2)	# 1482
	fsw		f1, -52(x2)	# 1482
	addi	x4, x5, 0
	addi	x5, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -56(x2)	# 1482
	addi	x2, x2, -60	# 1482
	lw		x31, 0(x29)	# 1482
	jalr	x1, x31, 0	# 1482
	addi	x2, x2, 60	# 1482
	lw		x1, -56(x2)	# 1482
	addi	x5, x0, 0	# 1482
	beq		x4, x5, beq_cont.23033	# 1482
	addi	x4, x0, 0	# 1484
	mul		x4, x30, x4	# 1484
	addi	x4, x4, 50548	# 1484
	flw		f1, -52(x2)	# 1484
	fsw		f1, 0(x4)	# 1484
	addi	x4, x0, 0	# 240
	mul		x4, x30, x4	# 240
	addi	x4, x4, 50552	# 240
	flw		f1, -48(x2)	# 240
	fsw		f1, 0(x4)	# 240
	addi	x4, x0, 1	# 241
	mul		x4, x30, x4	# 241
	addi	x4, x4, 50552	# 241
	flw		f1, -44(x2)	# 241
	fsw		f1, 0(x4)	# 241
	addi	x4, x0, 2	# 242
	mul		x4, x30, x4	# 242
	addi	x4, x4, 50552	# 242
	flw		f1, -40(x2)	# 242
	fsw		f1, 0(x4)	# 242
	addi	x4, x0, 0	# 1486
	mul		x4, x30, x4	# 1486
	addi	x4, x4, 50564	# 1486
	lw		x5, -28(x2)	# 1486
	sw		x5, 0(x4)	# 1486
	addi	x4, x0, 0	# 1487
	mul		x4, x30, x4	# 1487
	addi	x4, x4, 50544	# 1487
	lw		x5, -36(x2)	# 1487
	sw		x5, 0(x4)	# 1487
beq_cont.23033:
fle_cont.23031:
fle_cont.23029:
	lw		x4, -20(x2)	# 1493
	lw		x5, -24(x2)	# 1493
	add		x4, x5, x4	# 1493
	lw		x5, -12(x2)	# 1493
	lw		x6, -8(x2)	# 1493
	lw		x29, -16(x2)	# 1493
	lw		x31, 0(x29)	# 1493
	jalr	x0, x31, 0	# 1493
beq.23028:
	lw		x4, -28(x2)	# 1497
	mul		x4, x30, x4	# 1497
	addi	x4, x4, 50048	# 1497
	lw		x4, 0(x4)	# 1497
	lw		x4, 24(x4)	# 373
	beq		x4, x5, beq.23034	# 1497
	lw		x4, -20(x2)	# 1498
	lw		x5, -24(x2)	# 1498
	add		x4, x5, x4	# 1498
	lw		x5, -12(x2)	# 1498
	lw		x6, -8(x2)	# 1498
	lw		x29, -16(x2)	# 1498
	lw		x31, 0(x29)	# 1498
	jalr	x0, x31, 0	# 1498
beq.23034:
	jalr	x0, x1, 0	# 1499
beq.23021:
	jalr	x0, x1, 0	# 1466
solve_one_or_network.2826.12395:
	lw		x7, 16(x29)	# 1506
	lw		x8, 12(x29)	# 1506
	lw		x9, 8(x29)	# 1506
	lw		x10, 4(x29)	# 1506
	mul		x11, x30, x4	# 1506
	add		x11, x5, x11	# 1506
	lw		x11, 0(x11)	# 1506
	beq		x11, x8, beq.23037	# 1507
	mul		x8, x30, x11	# 1508
	addi	x8, x8, 50332	# 1508
	lw		x8, 0(x8)	# 1508
	sw		x6, 0(x2)	# 1509
	sw		x5, -4(x2)	# 1509
	sw		x29, -8(x2)	# 1509
	sw		x10, -12(x2)	# 1509
	sw		x4, -16(x2)	# 1509
	addi	x5, x8, 0
	addi	x4, x9, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1509
	addi	x2, x2, -24	# 1509
	lw		x31, 0(x29)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 24	# 1509
	lw		x1, -20(x2)	# 1509
	lw		x4, -12(x2)	# 1510
	lw		x5, -16(x2)	# 1510
	add		x4, x5, x4	# 1510
	lw		x5, -4(x2)	# 1510
	lw		x6, 0(x2)	# 1510
	lw		x29, -8(x2)	# 1510
	lw		x31, 0(x29)	# 1510
	jalr	x0, x31, 0	# 1510
beq.23037:
	jalr	x0, x1, 0	# 1511
trace_or_matrix.2830.12399:
	lw		x7, 32(x29)	# 1516
	lw		x8, 28(x29)	# 1516
	lw		x9, 24(x29)	# 1516
	lw		x10, 20(x29)	# 1516
	lw		x11, 16(x29)	# 1516
	lw		x12, 12(x29)	# 1516
	lw		x13, 8(x29)	# 1516
	flw		f1, 4(x29)	# 1516
	mul		x14, x30, x4	# 1516
	add		x14, x5, x14	# 1516
	lw		x14, 0(x14)	# 1516
	mul		x15, x30, x12	# 1517
	add		x15, x14, x15	# 1517
	lw		x15, 0(x15)	# 1517
	beq		x15, x11, beq.23039	# 1518
	addi	x11, x0, 99	# 1521
	sw		x6, 0(x2)	# 1521
	sw		x5, -4(x2)	# 1521
	sw		x29, -8(x2)	# 1521
	sw		x13, -12(x2)	# 1521
	sw		x4, -16(x2)	# 1521
	beq		x15, x11, beq.23041	# 1521
	mul		x11, x30, x15	# 1032
	addi	x11, x11, 50048	# 1032
	lw		x11, 0(x11)	# 1032
	addi	x15, x0, 0	# 1034
	mul		x15, x30, x15	# 1034
	addi	x15, x15, 50636	# 1034
	flw		f2, 0(x15)	# 1034
	lw		x15, 20(x11)	# 431
	mul		x16, x30, x12	# 436
	add		x15, x15, x16	# 436
	flw		f3, 0(x15)	# 436
	fsub	f2, f2, f3	# 1034
	addi	x15, x0, 1	# 1035
	mul		x15, x30, x15	# 1035
	addi	x15, x15, 50636	# 1035
	flw		f3, 0(x15)	# 1035
	lw		x15, 20(x11)	# 441
	mul		x16, x30, x13	# 446
	add		x15, x15, x16	# 446
	flw		f4, 0(x15)	# 446
	fsub	f3, f3, f4	# 1035
	addi	x15, x0, 2	# 1036
	mul		x15, x30, x15	# 1036
	addi	x15, x15, 50636	# 1036
	flw		f4, 0(x15)	# 1036
	lw		x15, 20(x11)	# 451
	mul		x16, x30, x10	# 456
	add		x15, x15, x16	# 456
	flw		f5, 0(x15)	# 456
	fsub	f4, f4, f5	# 1036
	lw		x15, 4(x11)	# 353
	addi	x16, x0, 1	# 1039
	sw		x14, -20(x2)	# 1039
	sw		x9, -24(x2)	# 1039
	beq		x15, x16, beq.23043	# 1039
	addi	x8, x0, 2	# 1040
	beq		x15, x8, beq.23045	# 1040
	addi	x5, x6, 0
	addi	x4, x11, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -28(x2)	# 1041
	addi	x2, x2, -32	# 1041
	lw		x31, 0(x29)	# 1041
	jalr	x1, x31, 0	# 1041
	addi	x2, x2, 32	# 1041
	lw		x1, -28(x2)	# 1041
	jal		x0, beq_cont.23044	# 1040
beq.23045:
	lw		x7, 16(x11)	# 421
	mul		x8, x30, x12	# 292
	add		x8, x6, x8	# 292
	flw		f5, 0(x8)	# 292
	mul		x8, x30, x12	# 292
	add		x8, x7, x8	# 292
	flw		f6, 0(x8)	# 292
	fmul	f5, f5, f6	# 292
	mul		x8, x30, x13	# 292
	add		x8, x6, x8	# 292
	flw		f6, 0(x8)	# 292
	mul		x8, x30, x13	# 292
	add		x8, x7, x8	# 292
	flw		f7, 0(x8)	# 292
	fmul	f6, f6, f7	# 292
	fadd	f5, f5, f6	# 292
	mul		x8, x30, x10	# 292
	add		x8, x6, x8	# 292
	flw		f6, 0(x8)	# 292
	mul		x8, x30, x10	# 292
	add		x8, x7, x8	# 292
	flw		f7, 0(x8)	# 292
	fmul	f6, f6, f7	# 292
	fadd	f5, f5, f6	# 292
	fle		x31, f5, f1	# 121
	beq		x31, x0, fle_else.23047	# 121
	addi	x4, x0, 0	# 959
	jal		x0, fle_cont.23046	# 121
fle_else.23047:
	mul		x8, x30, x12	# 297
	add		x8, x7, x8	# 297
	flw		f1, 0(x8)	# 297
	fmul	f1, f1, f2	# 297
	mul		x8, x30, x13	# 297
	add		x8, x7, x8	# 297
	flw		f2, 0(x8)	# 297
	fmul	f2, f2, f3	# 297
	fadd	f1, f1, f2	# 297
	mul		x8, x30, x10	# 297
	add		x7, x7, x8	# 297
	flw		f2, 0(x7)	# 297
	fmul	f2, f2, f4	# 297
	fadd	f1, f1, f2	# 297
	fsub	f1, f0, f1	# 123
	fdiv	f1, f1, f5	# 957
	mul		x7, x30, x12	# 957
	addi	x7, x7, 50540	# 957
	fsw		f1, 0(x7)	# 957
	addi	x4, x0, 1	# 958
fle_cont.23046:
beq_cont.23044:
	jal		x0, beq_cont.23042	# 1039
beq.23043:
	addi	x5, x6, 0
	addi	x4, x11, 0
	addi	x29, x8, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -28(x2)	# 1039
	addi	x2, x2, -32	# 1039
	lw		x31, 0(x29)	# 1039
	jalr	x1, x31, 0	# 1039
	addi	x2, x2, 32	# 1039
	lw		x1, -28(x2)	# 1039
beq_cont.23042:
	addi	x5, x0, 0	# 1527
	beq		x4, x5, beq_cont.23048	# 1527
	addi	x4, x0, 0	# 1528
	mul		x4, x30, x4	# 1528
	addi	x4, x4, 50540	# 1528
	flw		f1, 0(x4)	# 1528
	addi	x4, x0, 0	# 1529
	mul		x4, x30, x4	# 1529
	addi	x4, x4, 50548	# 1529
	flw		f2, 0(x4)	# 1529
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.23050	# 125
	jal		x0, fle_cont.23049	# 125
fle_else.23050:
	addi	x4, x0, 1	# 1530
	lw		x5, -20(x2)	# 1530
	lw		x6, 0(x2)	# 1530
	lw		x29, -24(x2)	# 1530
	sw		x1, -28(x2)	# 1530
	addi	x2, x2, -32	# 1530
	lw		x31, 0(x29)	# 1530
	jalr	x1, x31, 0	# 1530
	addi	x2, x2, 32	# 1530
	lw		x1, -28(x2)	# 1530
fle_cont.23049:
beq_cont.23048:
	jal		x0, beq_cont.23040	# 1521
beq.23041:
	addi	x7, x0, 1	# 1522
	addi	x5, x14, 0
	addi	x4, x7, 0
	addi	x29, x9, 0
	sw		x1, -28(x2)	# 1522
	addi	x2, x2, -32	# 1522
	lw		x31, 0(x29)	# 1522
	jalr	x1, x31, 0	# 1522
	addi	x2, x2, 32	# 1522
	lw		x1, -28(x2)	# 1522
beq_cont.23040:
	lw		x4, -12(x2)	# 1534
	lw		x5, -16(x2)	# 1534
	add		x4, x5, x4	# 1534
	lw		x5, -4(x2)	# 1534
	lw		x6, 0(x2)	# 1534
	lw		x29, -8(x2)	# 1534
	lw		x31, 0(x29)	# 1534
	jalr	x0, x31, 0	# 1534
beq.23039:
	jalr	x0, x1, 0	# 1519
solve_each_element_fast.2836.12403:
	lw		x7, 32(x29)	# 639
	lw		x8, 28(x29)	# 639
	lw		x9, 24(x29)	# 639
	lw		x10, 20(x29)	# 639
	lw		x11, 16(x29)	# 639
	lw		x12, 12(x29)	# 639
	lw		x13, 8(x29)	# 639
	flw		f1, 4(x29)	# 639
	lw		x14, 0(x6)	# 639
	mul		x15, x30, x4	# 1559
	add		x15, x5, x15	# 1559
	lw		x15, 0(x15)	# 1559
	beq		x15, x10, beq.23052	# 1560
	mul		x10, x30, x15	# 1173
	addi	x10, x10, 50048	# 1173
	lw		x10, 0(x10)	# 1173
	lw		x16, 40(x10)	# 548
	mul		x17, x30, x12	# 1175
	add		x17, x16, x17	# 1175
	flw		f2, 0(x17)	# 1175
	mul		x17, x30, x13	# 1176
	add		x17, x16, x17	# 1176
	flw		f3, 0(x17)	# 1176
	mul		x17, x30, x9	# 1177
	add		x17, x16, x17	# 1177
	flw		f4, 0(x17)	# 1177
	lw		x17, 4(x6)	# 645
	mul		x18, x30, x15	# 1179
	add		x17, x17, x18	# 1179
	lw		x17, 0(x17)	# 1179
	lw		x18, 4(x10)	# 353
	sw		x8, 0(x2)	# 1181
	sw		x14, -4(x2)	# 1181
	fsw		f1, -8(x2)	# 1181
	sw		x6, -12(x2)	# 1181
	sw		x5, -16(x2)	# 1181
	sw		x29, -20(x2)	# 1181
	sw		x13, -24(x2)	# 1181
	sw		x4, -28(x2)	# 1181
	sw		x15, -32(x2)	# 1181
	sw		x12, -36(x2)	# 1181
	beq		x18, x13, beq.23054	# 1181
	addi	x7, x0, 2	# 1183
	beq		x18, x7, beq.23056	# 1183
	mul		x7, x30, x12	# 1155
	add		x7, x17, x7	# 1155
	flw		f5, 0(x7)	# 1155
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.23058	# 120
	addi	x4, x0, 0	# 1157
	jal		x0, feq_cont.23057	# 120
feq_else.23058:
	mul		x7, x30, x13	# 1159
	add		x7, x17, x7	# 1159
	flw		f6, 0(x7)	# 1159
	fmul	f2, f6, f2	# 1159
	mul		x7, x30, x9	# 1159
	add		x7, x17, x7	# 1159
	flw		f6, 0(x7)	# 1159
	fmul	f3, f6, f3	# 1159
	fadd	f2, f2, f3	# 1159
	mul		x7, x30, x11	# 1159
	add		x7, x17, x7	# 1159
	flw		f3, 0(x7)	# 1159
	fmul	f3, f3, f4	# 1159
	fadd	f2, f2, f3	# 1159
	mul		x7, x30, x11	# 1160
	add		x7, x16, x7	# 1160
	flw		f3, 0(x7)	# 1160
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1161
	fsub	f3, f4, f3	# 1161
	fle		x31, f3, f1	# 121
	beq		x31, x0, fle_else.23060	# 121
	addi	x4, x0, 0	# 1168
	jal		x0, fle_cont.23059	# 121
fle_else.23060:
	lw		x7, 24(x10)	# 373
	beq		x7, x12, beq.23062	# 1163
	addi	x7, x0, 0	# 1164
	fsqrt	f3, f3	# 1164
	fadd	f2, f2, f3	# 1164
	addi	x9, x0, 4	# 1164
	mul		x9, x30, x9	# 1164
	add		x9, x17, x9	# 1164
	flw		f3, 0(x9)	# 1164
	fmul	f2, f2, f3	# 1164
	mul		x7, x30, x7	# 1164
	addi	x7, x7, 50540	# 1164
	fsw		f2, 0(x7)	# 1164
	jal		x0, beq_cont.23061	# 1163
beq.23062:
	addi	x7, x0, 0	# 1166
	fsqrt	f3, f3	# 1166
	fsub	f2, f2, f3	# 1166
	addi	x9, x0, 4	# 1166
	mul		x9, x30, x9	# 1166
	add		x9, x17, x9	# 1166
	flw		f3, 0(x9)	# 1166
	fmul	f2, f2, f3	# 1166
	mul		x7, x30, x7	# 1166
	addi	x7, x7, 50540	# 1166
	fsw		f2, 0(x7)	# 1166
beq_cont.23061:
	addi	x4, x0, 1	# 1167
fle_cont.23059:
feq_cont.23057:
	jal		x0, beq_cont.23055	# 1183
beq.23056:
	mul		x7, x30, x12	# 1146
	add		x7, x17, x7	# 1146
	flw		f2, 0(x7)	# 1146
	fle		x31, f1, f2	# 122
	beq		x31, x0, fle_else.23064	# 122
	addi	x4, x0, 0	# 1149
	jal		x0, fle_cont.23063	# 122
fle_else.23064:
	mul		x7, x30, x12	# 1147
	add		x7, x17, x7	# 1147
	flw		f2, 0(x7)	# 1147
	mul		x7, x30, x11	# 1147
	add		x7, x16, x7	# 1147
	flw		f3, 0(x7)	# 1147
	fmul	f2, f2, f3	# 1147
	mul		x7, x30, x12	# 1147
	addi	x7, x7, 50540	# 1147
	fsw		f2, 0(x7)	# 1147
	addi	x4, x0, 1	# 1148
fle_cont.23063:
beq_cont.23055:
	jal		x0, beq_cont.23053	# 1181
beq.23054:
	lw		x9, 0(x6)	# 639
	addi	x6, x17, 0
	addi	x5, x9, 0
	addi	x4, x10, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -40(x2)	# 1182
	addi	x2, x2, -44	# 1182
	lw		x31, 0(x29)	# 1182
	jalr	x1, x31, 0	# 1182
	addi	x2, x2, 44	# 1182
	lw		x1, -40(x2)	# 1182
beq_cont.23053:
	lw		x5, -36(x2)	# 1563
	beq		x4, x5, beq.23065	# 1563
	mul		x5, x30, x5	# 1567
	addi	x5, x5, 50540	# 1567
	flw		f1, 0(x5)	# 1567
	flw		f2, -8(x2)	# 125
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.23067	# 125
	jal		x0, fle_cont.23066	# 125
fle_else.23067:
	addi	x5, x0, 0	# 1570
	mul		x5, x30, x5	# 1570
	addi	x5, x5, 50548	# 1570
	flw		f2, 0(x5)	# 1570
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.23069	# 125
	jal		x0, fle_cont.23068	# 125
fle_else.23069:
	fadd	f2, f0, f22	# 1572
	fadd	f1, f1, f2	# 1572
	addi	x5, x0, 0	# 1573
	mul		x5, x30, x5	# 1573
	lw		x6, -4(x2)	# 1573
	add		x5, x6, x5	# 1573
	flw		f2, 0(x5)	# 1573
	fmul	f2, f2, f1	# 1573
	addi	x5, x0, 0	# 1573
	mul		x5, x30, x5	# 1573
	addi	x5, x5, 50648	# 1573
	flw		f3, 0(x5)	# 1573
	fadd	f2, f2, f3	# 1573
	addi	x5, x0, 1	# 1574
	mul		x5, x30, x5	# 1574
	add		x5, x6, x5	# 1574
	flw		f3, 0(x5)	# 1574
	fmul	f3, f3, f1	# 1574
	addi	x5, x0, 1	# 1574
	mul		x5, x30, x5	# 1574
	addi	x5, x5, 50648	# 1574
	flw		f4, 0(x5)	# 1574
	fadd	f3, f3, f4	# 1574
	addi	x5, x0, 2	# 1575
	mul		x5, x30, x5	# 1575
	add		x5, x6, x5	# 1575
	flw		f4, 0(x5)	# 1575
	fmul	f4, f4, f1	# 1575
	addi	x5, x0, 2	# 1575
	mul		x5, x30, x5	# 1575
	addi	x5, x5, 50648	# 1575
	flw		f5, 0(x5)	# 1575
	fadd	f4, f4, f5	# 1575
	addi	x5, x0, 0	# 1576
	lw		x6, -16(x2)	# 1576
	lw		x29, 0(x2)	# 1576
	sw		x4, -40(x2)	# 1576
	fsw		f4, -44(x2)	# 1576
	fsw		f3, -48(x2)	# 1576
	fsw		f2, -52(x2)	# 1576
	fsw		f1, -56(x2)	# 1576
	addi	x4, x5, 0
	addi	x5, x6, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -60(x2)	# 1576
	addi	x2, x2, -64	# 1576
	lw		x31, 0(x29)	# 1576
	jalr	x1, x31, 0	# 1576
	addi	x2, x2, 64	# 1576
	lw		x1, -60(x2)	# 1576
	addi	x5, x0, 0	# 1576
	beq		x4, x5, beq_cont.23070	# 1576
	addi	x4, x0, 0	# 1578
	mul		x4, x30, x4	# 1578
	addi	x4, x4, 50548	# 1578
	flw		f1, -56(x2)	# 1578
	fsw		f1, 0(x4)	# 1578
	addi	x4, x0, 0	# 240
	mul		x4, x30, x4	# 240
	addi	x4, x4, 50552	# 240
	flw		f1, -52(x2)	# 240
	fsw		f1, 0(x4)	# 240
	addi	x4, x0, 1	# 241
	mul		x4, x30, x4	# 241
	addi	x4, x4, 50552	# 241
	flw		f1, -48(x2)	# 241
	fsw		f1, 0(x4)	# 241
	addi	x4, x0, 2	# 242
	mul		x4, x30, x4	# 242
	addi	x4, x4, 50552	# 242
	flw		f1, -44(x2)	# 242
	fsw		f1, 0(x4)	# 242
	addi	x4, x0, 0	# 1580
	mul		x4, x30, x4	# 1580
	addi	x4, x4, 50564	# 1580
	lw		x5, -32(x2)	# 1580
	sw		x5, 0(x4)	# 1580
	addi	x4, x0, 0	# 1581
	mul		x4, x30, x4	# 1581
	addi	x4, x4, 50544	# 1581
	lw		x5, -40(x2)	# 1581
	sw		x5, 0(x4)	# 1581
beq_cont.23070:
fle_cont.23068:
fle_cont.23066:
	lw		x4, -24(x2)	# 1587
	lw		x5, -28(x2)	# 1587
	add		x4, x5, x4	# 1587
	lw		x5, -16(x2)	# 1587
	lw		x6, -12(x2)	# 1587
	lw		x29, -20(x2)	# 1587
	lw		x31, 0(x29)	# 1587
	jalr	x0, x31, 0	# 1587
beq.23065:
	lw		x4, -32(x2)	# 1591
	mul		x4, x30, x4	# 1591
	addi	x4, x4, 50048	# 1591
	lw		x4, 0(x4)	# 1591
	lw		x4, 24(x4)	# 373
	beq		x4, x5, beq.23071	# 1591
	lw		x4, -24(x2)	# 1592
	lw		x5, -28(x2)	# 1592
	add		x4, x5, x4	# 1592
	lw		x5, -16(x2)	# 1592
	lw		x6, -12(x2)	# 1592
	lw		x29, -20(x2)	# 1592
	lw		x31, 0(x29)	# 1592
	jalr	x0, x31, 0	# 1592
beq.23071:
	jalr	x0, x1, 0	# 1593
beq.23052:
	jalr	x0, x1, 0	# 1560
solve_one_or_network_fast.2840.12407:
	lw		x7, 16(x29)	# 1599
	lw		x8, 12(x29)	# 1599
	lw		x9, 8(x29)	# 1599
	lw		x10, 4(x29)	# 1599
	mul		x11, x30, x4	# 1599
	add		x11, x5, x11	# 1599
	lw		x11, 0(x11)	# 1599
	beq		x11, x8, beq.23074	# 1600
	mul		x8, x30, x11	# 1601
	addi	x8, x8, 50332	# 1601
	lw		x8, 0(x8)	# 1601
	sw		x6, 0(x2)	# 1602
	sw		x5, -4(x2)	# 1602
	sw		x29, -8(x2)	# 1602
	sw		x10, -12(x2)	# 1602
	sw		x4, -16(x2)	# 1602
	addi	x5, x8, 0
	addi	x4, x9, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1602
	addi	x2, x2, -24	# 1602
	lw		x31, 0(x29)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 24	# 1602
	lw		x1, -20(x2)	# 1602
	lw		x4, -12(x2)	# 1603
	lw		x5, -16(x2)	# 1603
	add		x4, x5, x4	# 1603
	lw		x5, -4(x2)	# 1603
	lw		x6, 0(x2)	# 1603
	lw		x29, -8(x2)	# 1603
	lw		x31, 0(x29)	# 1603
	jalr	x0, x31, 0	# 1603
beq.23074:
	jalr	x0, x1, 0	# 1604
trace_or_matrix_fast.2844.12411:
	lw		x7, 32(x29)	# 1609
	lw		x8, 28(x29)	# 1609
	lw		x9, 24(x29)	# 1609
	lw		x10, 20(x29)	# 1609
	lw		x11, 16(x29)	# 1609
	lw		x12, 12(x29)	# 1609
	lw		x13, 8(x29)	# 1609
	flw		f1, 4(x29)	# 1609
	mul		x14, x30, x4	# 1609
	add		x14, x5, x14	# 1609
	lw		x14, 0(x14)	# 1609
	mul		x15, x30, x12	# 1610
	add		x15, x14, x15	# 1610
	lw		x15, 0(x15)	# 1610
	beq		x15, x10, beq.23076	# 1611
	addi	x10, x0, 99	# 1614
	sw		x6, 0(x2)	# 1614
	sw		x5, -4(x2)	# 1614
	sw		x29, -8(x2)	# 1614
	sw		x13, -12(x2)	# 1614
	sw		x4, -16(x2)	# 1614
	beq		x15, x10, beq.23078	# 1614
	mul		x10, x30, x15	# 1173
	addi	x10, x10, 50048	# 1173
	lw		x10, 0(x10)	# 1173
	lw		x16, 40(x10)	# 548
	addi	x17, x0, 0	# 1175
	mul		x17, x30, x17	# 1175
	add		x17, x16, x17	# 1175
	flw		f2, 0(x17)	# 1175
	addi	x17, x0, 1	# 1176
	mul		x17, x30, x17	# 1176
	add		x17, x16, x17	# 1176
	flw		f3, 0(x17)	# 1176
	addi	x17, x0, 2	# 1177
	mul		x17, x30, x17	# 1177
	add		x17, x16, x17	# 1177
	flw		f4, 0(x17)	# 1177
	lw		x17, 4(x6)	# 645
	mul		x15, x30, x15	# 1179
	add		x15, x17, x15	# 1179
	lw		x15, 0(x15)	# 1179
	lw		x17, 4(x10)	# 353
	addi	x18, x0, 1	# 1181
	sw		x14, -20(x2)	# 1181
	sw		x8, -24(x2)	# 1181
	beq		x17, x18, beq.23080	# 1181
	addi	x7, x0, 2	# 1183
	beq		x17, x7, beq.23082	# 1183
	mul		x7, x30, x12	# 1155
	add		x7, x15, x7	# 1155
	flw		f5, 0(x7)	# 1155
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.23084	# 120
	addi	x4, x0, 0	# 1157
	jal		x0, feq_cont.23083	# 120
feq_else.23084:
	mul		x7, x30, x13	# 1159
	add		x7, x15, x7	# 1159
	flw		f6, 0(x7)	# 1159
	fmul	f2, f6, f2	# 1159
	mul		x7, x30, x9	# 1159
	add		x7, x15, x7	# 1159
	flw		f6, 0(x7)	# 1159
	fmul	f3, f6, f3	# 1159
	fadd	f2, f2, f3	# 1159
	mul		x7, x30, x11	# 1159
	add		x7, x15, x7	# 1159
	flw		f3, 0(x7)	# 1159
	fmul	f3, f3, f4	# 1159
	fadd	f2, f2, f3	# 1159
	mul		x7, x30, x11	# 1160
	add		x7, x16, x7	# 1160
	flw		f3, 0(x7)	# 1160
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1161
	fsub	f3, f4, f3	# 1161
	fle		x31, f3, f1	# 121
	beq		x31, x0, fle_else.23086	# 121
	addi	x4, x0, 0	# 1168
	jal		x0, fle_cont.23085	# 121
fle_else.23086:
	lw		x7, 24(x10)	# 373
	beq		x7, x12, beq.23088	# 1163
	addi	x7, x0, 0	# 1164
	fsqrt	f1, f3	# 1164
	fadd	f1, f2, f1	# 1164
	addi	x9, x0, 4	# 1164
	mul		x9, x30, x9	# 1164
	add		x9, x15, x9	# 1164
	flw		f2, 0(x9)	# 1164
	fmul	f1, f1, f2	# 1164
	mul		x7, x30, x7	# 1164
	addi	x7, x7, 50540	# 1164
	fsw		f1, 0(x7)	# 1164
	jal		x0, beq_cont.23087	# 1163
beq.23088:
	addi	x7, x0, 0	# 1166
	fsqrt	f1, f3	# 1166
	fsub	f1, f2, f1	# 1166
	addi	x9, x0, 4	# 1166
	mul		x9, x30, x9	# 1166
	add		x9, x15, x9	# 1166
	flw		f2, 0(x9)	# 1166
	fmul	f1, f1, f2	# 1166
	mul		x7, x30, x7	# 1166
	addi	x7, x7, 50540	# 1166
	fsw		f1, 0(x7)	# 1166
beq_cont.23087:
	addi	x4, x0, 1	# 1167
fle_cont.23085:
feq_cont.23083:
	jal		x0, beq_cont.23081	# 1183
beq.23082:
	mul		x7, x30, x12	# 1146
	add		x7, x15, x7	# 1146
	flw		f2, 0(x7)	# 1146
	fle		x31, f1, f2	# 122
	beq		x31, x0, fle_else.23090	# 122
	addi	x4, x0, 0	# 1149
	jal		x0, fle_cont.23089	# 122
fle_else.23090:
	mul		x7, x30, x12	# 1147
	add		x7, x15, x7	# 1147
	flw		f1, 0(x7)	# 1147
	mul		x7, x30, x11	# 1147
	add		x7, x16, x7	# 1147
	flw		f2, 0(x7)	# 1147
	fmul	f1, f1, f2	# 1147
	mul		x7, x30, x12	# 1147
	addi	x7, x7, 50540	# 1147
	fsw		f1, 0(x7)	# 1147
	addi	x4, x0, 1	# 1148
fle_cont.23089:
beq_cont.23081:
	jal		x0, beq_cont.23079	# 1181
beq.23080:
	lw		x9, 0(x6)	# 639
	addi	x6, x15, 0
	addi	x5, x9, 0
	addi	x4, x10, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -28(x2)	# 1182
	addi	x2, x2, -32	# 1182
	lw		x31, 0(x29)	# 1182
	jalr	x1, x31, 0	# 1182
	addi	x2, x2, 32	# 1182
	lw		x1, -28(x2)	# 1182
beq_cont.23079:
	addi	x5, x0, 0	# 1620
	beq		x4, x5, beq_cont.23091	# 1620
	addi	x4, x0, 0	# 1621
	mul		x4, x30, x4	# 1621
	addi	x4, x4, 50540	# 1621
	flw		f1, 0(x4)	# 1621
	addi	x4, x0, 0	# 1622
	mul		x4, x30, x4	# 1622
	addi	x4, x4, 50548	# 1622
	flw		f2, 0(x4)	# 1622
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.23093	# 125
	jal		x0, fle_cont.23092	# 125
fle_else.23093:
	addi	x4, x0, 1	# 1623
	lw		x5, -20(x2)	# 1623
	lw		x6, 0(x2)	# 1623
	lw		x29, -24(x2)	# 1623
	sw		x1, -28(x2)	# 1623
	addi	x2, x2, -32	# 1623
	lw		x31, 0(x29)	# 1623
	jalr	x1, x31, 0	# 1623
	addi	x2, x2, 32	# 1623
	lw		x1, -28(x2)	# 1623
fle_cont.23092:
beq_cont.23091:
	jal		x0, beq_cont.23077	# 1614
beq.23078:
	addi	x7, x0, 1	# 1615
	addi	x5, x14, 0
	addi	x4, x7, 0
	addi	x29, x8, 0
	sw		x1, -28(x2)	# 1615
	addi	x2, x2, -32	# 1615
	lw		x31, 0(x29)	# 1615
	jalr	x1, x31, 0	# 1615
	addi	x2, x2, 32	# 1615
	lw		x1, -28(x2)	# 1615
beq_cont.23077:
	lw		x4, -12(x2)	# 1627
	lw		x5, -16(x2)	# 1627
	add		x4, x5, x4	# 1627
	lw		x5, -4(x2)	# 1627
	lw		x6, 0(x2)	# 1627
	lw		x29, -8(x2)	# 1627
	lw		x31, 0(x29)	# 1627
	jalr	x0, x31, 0	# 1627
beq.23076:
	jalr	x0, x1, 0	# 1612
get_nvector_second.2854.12415:
	lw		x5, 16(x29)	# 1670
	lw		x6, 12(x29)	# 1670
	lw		x7, 8(x29)	# 1670
	flw		f1, 4(x29)	# 1670
	mul		x8, x30, x6	# 1670
	addi	x8, x8, 50552	# 1670
	flw		f2, 0(x8)	# 1670
	lw		x8, 20(x4)	# 431
	mul		x9, x30, x6	# 436
	add		x8, x8, x9	# 436
	flw		f3, 0(x8)	# 436
	fsub	f2, f2, f3	# 1670
	mul		x8, x30, x7	# 1671
	addi	x8, x8, 50552	# 1671
	flw		f3, 0(x8)	# 1671
	lw		x8, 20(x4)	# 441
	mul		x9, x30, x7	# 446
	add		x8, x8, x9	# 446
	flw		f4, 0(x8)	# 446
	fsub	f3, f3, f4	# 1671
	mul		x8, x30, x5	# 1672
	addi	x8, x8, 50552	# 1672
	flw		f4, 0(x8)	# 1672
	lw		x8, 20(x4)	# 451
	mul		x9, x30, x5	# 456
	add		x8, x8, x9	# 456
	flw		f5, 0(x8)	# 456
	fsub	f4, f4, f5	# 1672
	lw		x8, 16(x4)	# 391
	mul		x9, x30, x6	# 396
	add		x8, x8, x9	# 396
	flw		f5, 0(x8)	# 396
	fmul	f5, f2, f5	# 1674
	lw		x8, 16(x4)	# 401
	mul		x9, x30, x7	# 406
	add		x8, x8, x9	# 406
	flw		f6, 0(x8)	# 406
	fmul	f6, f3, f6	# 1675
	lw		x8, 16(x4)	# 411
	mul		x9, x30, x5	# 416
	add		x8, x8, x9	# 416
	flw		f7, 0(x8)	# 416
	fmul	f7, f4, f7	# 1676
	lw		x8, 12(x4)	# 382
	beq		x8, x6, beq.23096	# 1678
	addi	x8, x0, 0	# 1683
	lw		x9, 36(x4)	# 531
	addi	x10, x0, 2	# 536
	mul		x10, x30, x10	# 536
	add		x9, x9, x10	# 536
	flw		f8, 0(x9)	# 536
	fmul	f8, f3, f8	# 1683
	lw		x9, 36(x4)	# 521
	addi	x10, x0, 1	# 526
	mul		x10, x30, x10	# 526
	add		x9, x9, x10	# 526
	flw		f9, 0(x9)	# 526
	fmul	f9, f4, f9	# 1683
	fadd	f8, f8, f9	# 1683
	fadd	f9, f0, f17	# 126
	fmul	f8, f8, f9	# 126
	fadd	f5, f5, f8	# 1683
	mul		x8, x30, x8	# 1683
	addi	x8, x8, 50568	# 1683
	fsw		f5, 0(x8)	# 1683
	addi	x8, x0, 1	# 1684
	lw		x9, 36(x4)	# 531
	addi	x10, x0, 2	# 536
	mul		x10, x30, x10	# 536
	add		x9, x9, x10	# 536
	flw		f5, 0(x9)	# 536
	fmul	f5, f2, f5	# 1684
	lw		x9, 36(x4)	# 511
	addi	x10, x0, 0	# 516
	mul		x10, x30, x10	# 516
	add		x9, x9, x10	# 516
	flw		f8, 0(x9)	# 516
	fmul	f4, f4, f8	# 1684
	fadd	f4, f5, f4	# 1684
	fadd	f5, f0, f17	# 126
	fmul	f4, f4, f5	# 126
	fadd	f4, f6, f4	# 1684
	mul		x8, x30, x8	# 1684
	addi	x8, x8, 50568	# 1684
	fsw		f4, 0(x8)	# 1684
	addi	x8, x0, 2	# 1685
	lw		x9, 36(x4)	# 521
	addi	x10, x0, 1	# 526
	mul		x10, x30, x10	# 526
	add		x9, x9, x10	# 526
	flw		f4, 0(x9)	# 526
	fmul	f2, f2, f4	# 1685
	lw		x9, 36(x4)	# 511
	addi	x10, x0, 0	# 516
	mul		x10, x30, x10	# 516
	add		x9, x9, x10	# 516
	flw		f4, 0(x9)	# 516
	fmul	f3, f3, f4	# 1685
	fadd	f2, f2, f3	# 1685
	fadd	f3, f0, f17	# 126
	fmul	f2, f2, f3	# 126
	fadd	f2, f7, f2	# 1685
	mul		x8, x30, x8	# 1685
	addi	x8, x8, 50568	# 1685
	fsw		f2, 0(x8)	# 1685
	jal		x0, beq_cont.23095	# 1678
beq.23096:
	addi	x8, x0, 0	# 1679
	mul		x8, x30, x8	# 1679
	addi	x8, x8, 50568	# 1679
	fsw		f5, 0(x8)	# 1679
	addi	x8, x0, 1	# 1680
	mul		x8, x30, x8	# 1680
	addi	x8, x8, 50568	# 1680
	fsw		f6, 0(x8)	# 1680
	addi	x8, x0, 2	# 1681
	mul		x8, x30, x8	# 1681
	addi	x8, x8, 50568	# 1681
	fsw		f7, 0(x8)	# 1681
beq_cont.23095:
	lw		x4, 24(x4)	# 373
	mul		x8, x30, x6	# 283
	addi	x8, x8, 50568	# 283
	flw		f2, 0(x8)	# 283
	fmul	f2, f2, f2	# 127
	mul		x8, x30, x7	# 283
	addi	x8, x8, 50568	# 283
	flw		f3, 0(x8)	# 283
	fmul	f3, f3, f3	# 127
	fadd	f2, f2, f3	# 283
	mul		x8, x30, x5	# 283
	addi	x8, x8, 50568	# 283
	flw		f3, 0(x8)	# 283
	fmul	f3, f3, f3	# 127
	fadd	f2, f2, f3	# 283
	fsqrt	f2, f2	# 283
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.23098	# 120
	fadd	f1, f0, f16	# 284
	jal		x0, feq_cont.23097	# 120
feq_else.23098:
	beq		x4, x6, beq.23100	# 284
	fadd	f1, f0, f18	# 284
	fdiv	f1, f1, f2	# 284
	jal		x0, beq_cont.23099	# 284
beq.23100:
	fadd	f1, f0, f16	# 284
	fdiv	f1, f1, f2	# 284
beq_cont.23099:
feq_cont.23097:
	mul		x4, x30, x6	# 285
	addi	x4, x4, 50568	# 285
	flw		f2, 0(x4)	# 285
	fmul	f2, f2, f1	# 285
	mul		x4, x30, x6	# 285
	addi	x4, x4, 50568	# 285
	fsw		f2, 0(x4)	# 285
	mul		x4, x30, x7	# 286
	addi	x4, x4, 50568	# 286
	flw		f2, 0(x4)	# 286
	fmul	f2, f2, f1	# 286
	mul		x4, x30, x7	# 286
	addi	x4, x4, 50568	# 286
	fsw		f2, 0(x4)	# 286
	mul		x4, x30, x5	# 287
	addi	x4, x4, 50568	# 287
	flw		f2, 0(x4)	# 287
	fmul	f1, f2, f1	# 287
	mul		x4, x30, x5	# 287
	addi	x4, x4, 50568	# 287
	fsw		f1, 0(x4)	# 287
	jalr	x0, x1, 0	# 287
utexture.2859.12417:
	lw		x6, 44(x29)	# 343
	lw		x7, 40(x29)	# 343
	lw		x8, 36(x29)	# 343
	lw		x9, 32(x29)	# 343
	lw		x10, 28(x29)	# 343
	lw		x11, 24(x29)	# 343
	lw		x12, 20(x29)	# 343
	lw		x13, 16(x29)	# 343
	lw		x14, 12(x29)	# 343
	flw		f1, 8(x29)	# 343
	flw		f2, 4(x29)	# 343
	lw		x15, 0(x4)	# 343
	lw		x16, 32(x4)	# 481
	mul		x17, x30, x13	# 486
	add		x16, x16, x17	# 486
	flw		f3, 0(x16)	# 486
	mul		x16, x30, x13	# 1710
	addi	x16, x16, 50580	# 1710
	fsw		f3, 0(x16)	# 1710
	lw		x16, 32(x4)	# 491
	mul		x17, x30, x14	# 496
	add		x16, x16, x17	# 496
	flw		f3, 0(x16)	# 496
	mul		x16, x30, x14	# 1711
	addi	x16, x16, 50580	# 1711
	fsw		f3, 0(x16)	# 1711
	lw		x16, 32(x4)	# 501
	mul		x17, x30, x11	# 506
	add		x16, x16, x17	# 506
	flw		f3, 0(x16)	# 506
	mul		x16, x30, x11	# 1712
	addi	x16, x16, 50580	# 1712
	fsw		f3, 0(x16)	# 1712
	beq		x15, x14, beq.23102	# 1713
	beq		x15, x11, beq.23103	# 1731
	beq		x15, x12, beq.23104	# 1738
	addi	x6, x0, 4	# 1749
	beq		x15, x6, beq.23105	# 1749
	jalr	x0, x1, 0	# 1777
beq.23105:
	mul		x6, x30, x13	# 1751
	add		x6, x5, x6	# 1751
	flw		f3, 0(x6)	# 1751
	lw		x6, 20(x4)	# 431
	mul		x9, x30, x13	# 436
	add		x6, x6, x9	# 436
	flw		f4, 0(x6)	# 436
	fsub	f3, f3, f4	# 1751
	lw		x6, 16(x4)	# 391
	mul		x9, x30, x13	# 396
	add		x6, x6, x9	# 396
	flw		f4, 0(x6)	# 396
	fsqrt	f4, f4	# 1751
	fmul	f3, f3, f4	# 1751
	mul		x6, x30, x11	# 1752
	add		x6, x5, x6	# 1752
	flw		f4, 0(x6)	# 1752
	lw		x6, 20(x4)	# 451
	mul		x9, x30, x11	# 456
	add		x6, x6, x9	# 456
	flw		f5, 0(x6)	# 456
	fsub	f4, f4, f5	# 1752
	lw		x6, 16(x4)	# 411
	mul		x9, x30, x11	# 416
	add		x6, x6, x9	# 416
	flw		f5, 0(x6)	# 416
	fsqrt	f5, f5	# 1752
	fmul	f4, f4, f5	# 1752
	fmul	f5, f3, f3	# 127
	fmul	f6, f4, f4	# 127
	fadd	f5, f5, f6	# 1753
	fle		x31, f3, f2	# 124
	beq		x31, x0, fle_else.23108	# 124
	fsub	f6, f0, f3	# 124
	jal		x0, fle_cont.23107	# 124
fle_else.23108:
	fadd	f6, f0, f3	# 124
fle_cont.23107:
	lui		x6, %hi(l.19280)	# 1755
	ori		x6, x0, %lo(l.19280)	# 1755
	flw		f7, 0(x6)	# 1755
	sw		x11, 0(x2)	# 125
	fsw		f1, -4(x2)	# 125
	sw		x10, -8(x2)	# 125
	fsw		f7, -12(x2)	# 125
	fsw		f5, -16(x2)	# 125
	sw		x4, -20(x2)	# 125
	sw		x5, -24(x2)	# 125
	sw		x14, -28(x2)	# 125
	sw		x8, -32(x2)	# 125
	sw		x7, -36(x2)	# 125
	fsw		f2, -40(x2)	# 125
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.23110	# 125
	fdiv	f3, f4, f3	# 1758
	fadd	f4, f0, f0	# 124
	fle		x31, f3, f4	# 124
	beq		x31, x0, fle_cont.23111	# 124
	fsub	f3, f0, f3	# 124
fle_cont.23111:
	addi	x29, x10, 0
	fadd	f1, f0, f3
	sw		x1, -44(x2)	# 1760
	addi	x2, x2, -48	# 1760
	lw		x31, 0(x29)	# 1760
	jalr	x1, x31, 0	# 1760
	addi	x2, x2, 48	# 1760
	lw		x1, -44(x2)	# 1760
	fadd	f2, f0, f26	# 1760
	fmul	f1, f1, f2	# 1760
	fadd	f2, f0, f25	# 1760
	fdiv	f1, f1, f2	# 1760
	jal		x0, fle_cont.23109	# 125
fle_else.23110:
	fadd	f1, f0, f29	# 1756
fle_cont.23109:
	flw		f2, -40(x2)	# 137
	fsw		f1, -44(x2)	# 137
	fle		x31, f2, f1	# 137
	beq		x31, x0, fle_else.23113	# 137
	lw		x29, -36(x2)	# 137
	sw		x1, -48(x2)	# 137
	addi	x2, x2, -52	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 52	# 137
	lw		x1, -48(x2)	# 137
	lw		x29, -32(x2)	# 137
	sw		x1, -48(x2)	# 137
	addi	x2, x2, -52	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 52	# 137
	lw		x1, -48(x2)	# 137
	jal		x0, fle_cont.23112	# 137
fle_else.23113:
	lw		x29, -36(x2)	# 138
	sw		x1, -48(x2)	# 138
	addi	x2, x2, -52	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 52	# 138
	lw		x1, -48(x2)	# 138
	addi	x5, x0, 1	# 138
	sub		x4, x4, x5	# 138
	lw		x29, -32(x2)	# 138
	sw		x1, -48(x2)	# 138
	addi	x2, x2, -52	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 52	# 138
	lw		x1, -48(x2)	# 138
fle_cont.23112:
	flw		f2, -44(x2)	# 1762
	fsub	f1, f2, f1	# 1762
	lw		x4, -28(x2)	# 1764
	mul		x5, x30, x4	# 1764
	lw		x6, -24(x2)	# 1764
	add		x5, x6, x5	# 1764
	flw		f2, 0(x5)	# 1764
	lw		x5, -20(x2)	# 441
	lw		x6, 20(x5)	# 441
	mul		x7, x30, x4	# 446
	add		x6, x6, x7	# 446
	flw		f3, 0(x6)	# 446
	fsub	f2, f2, f3	# 1764
	lw		x5, 16(x5)	# 401
	mul		x4, x30, x4	# 406
	add		x4, x5, x4	# 406
	flw		f3, 0(x4)	# 406
	fsqrt	f3, f3	# 1764
	fmul	f2, f2, f3	# 1764
	flw		f3, -40(x2)	# 124
	flw		f4, -16(x2)	# 124
	fle		x31, f4, f3	# 124
	beq		x31, x0, fle_else.23115	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.23114	# 124
fle_else.23115:
	fadd	f5, f0, f4	# 124
fle_cont.23114:
	flw		f6, -12(x2)	# 125
	fsw		f1, -48(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.23117	# 125
	fdiv	f2, f2, f4	# 1769
	fadd	f4, f0, f0	# 124
	fle		x31, f2, f4	# 124
	beq		x31, x0, fle_cont.23118	# 124
	fsub	f2, f0, f2	# 124
fle_cont.23118:
	lw		x29, -8(x2)	# 1770
	fadd	f1, f0, f2
	sw		x1, -52(x2)	# 1770
	addi	x2, x2, -56	# 1770
	lw		x31, 0(x29)	# 1770
	jalr	x1, x31, 0	# 1770
	addi	x2, x2, 56	# 1770
	lw		x1, -52(x2)	# 1770
	fadd	f2, f0, f26	# 1770
	fmul	f1, f1, f2	# 1770
	fadd	f2, f0, f25	# 1770
	fdiv	f1, f1, f2	# 1770
	jal		x0, fle_cont.23116	# 125
fle_else.23117:
	fadd	f1, f0, f29	# 1767
fle_cont.23116:
	flw		f2, -40(x2)	# 137
	fsw		f1, -52(x2)	# 137
	fle		x31, f2, f1	# 137
	beq		x31, x0, fle_else.23120	# 137
	lw		x29, -36(x2)	# 137
	sw		x1, -56(x2)	# 137
	addi	x2, x2, -60	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 60	# 137
	lw		x1, -56(x2)	# 137
	lw		x29, -32(x2)	# 137
	sw		x1, -56(x2)	# 137
	addi	x2, x2, -60	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 60	# 137
	lw		x1, -56(x2)	# 137
	jal		x0, fle_cont.23119	# 137
fle_else.23120:
	lw		x29, -36(x2)	# 138
	sw		x1, -56(x2)	# 138
	addi	x2, x2, -60	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 60	# 138
	lw		x1, -56(x2)	# 138
	addi	x5, x0, 1	# 138
	sub		x4, x4, x5	# 138
	lw		x29, -32(x2)	# 138
	sw		x1, -56(x2)	# 138
	addi	x2, x2, -60	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 60	# 138
	lw		x1, -56(x2)	# 138
fle_cont.23119:
	flw		f2, -52(x2)	# 1772
	fsub	f1, f2, f1	# 1772
	lui		x4, %hi(l.19299)	# 1773
	ori		x4, x0, %lo(l.19299)	# 1773
	flw		f2, 0(x4)	# 1773
	fadd	f3, f0, f17	# 1773
	flw		f4, -48(x2)	# 1773
	fsub	f4, f3, f4	# 1773
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1773
	fsub	f1, f3, f1	# 1773
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1773
	flw		f2, -40(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.23122	# 122
	jal		x0, fle_cont.23121	# 122
fle_else.23122:
	fadd	f1, f0, f2	# 1774
fle_cont.23121:
	flw		f2, -4(x2)	# 1775
	fmul	f1, f2, f1	# 1775
	lui		x4, %hi(l.19302)	# 1775
	ori		x4, x0, %lo(l.19302)	# 1775
	flw		f2, 0(x4)	# 1775
	fdiv	f1, f1, f2	# 1775
	lw		x4, 0(x2)	# 1775
	mul		x4, x30, x4	# 1775
	addi	x4, x4, 50580	# 1775
	fsw		f1, 0(x4)	# 1775
	jalr	x0, x1, 0	# 1775
beq.23104:
	mul		x6, x30, x13	# 1741
	add		x6, x5, x6	# 1741
	flw		f3, 0(x6)	# 1741
	lw		x6, 20(x4)	# 431
	mul		x10, x30, x13	# 436
	add		x6, x6, x10	# 436
	flw		f4, 0(x6)	# 436
	fsub	f3, f3, f4	# 1741
	mul		x6, x30, x11	# 1742
	add		x5, x5, x6	# 1742
	flw		f4, 0(x5)	# 1742
	lw		x4, 20(x4)	# 451
	mul		x5, x30, x11	# 456
	add		x4, x4, x5	# 456
	flw		f5, 0(x4)	# 456
	fsub	f4, f4, f5	# 1742
	fmul	f3, f3, f3	# 127
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 1743
	fsqrt	f3, f3	# 1743
	fadd	f4, f0, f30	# 1743
	fdiv	f3, f3, f4	# 1743
	sw		x11, 0(x2)	# 137
	sw		x14, -28(x2)	# 137
	fsw		f1, -4(x2)	# 137
	sw		x9, -56(x2)	# 137
	fsw		f3, -60(x2)	# 137
	fle		x31, f2, f3	# 137
	beq		x31, x0, fle_else.23125	# 137
	sw		x8, -32(x2)	# 137
	addi	x29, x7, 0
	fadd	f1, f0, f3
	sw		x1, -64(x2)	# 137
	addi	x2, x2, -68	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 68	# 137
	lw		x1, -64(x2)	# 137
	lw		x29, -32(x2)	# 137
	sw		x1, -64(x2)	# 137
	addi	x2, x2, -68	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 68	# 137
	lw		x1, -64(x2)	# 137
	jal		x0, fle_cont.23124	# 137
fle_else.23125:
	sw		x8, -32(x2)	# 138
	addi	x29, x7, 0
	fadd	f1, f0, f3
	sw		x1, -64(x2)	# 138
	addi	x2, x2, -68	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 68	# 138
	lw		x1, -64(x2)	# 138
	addi	x5, x0, 1	# 138
	sub		x4, x4, x5	# 138
	lw		x29, -32(x2)	# 138
	sw		x1, -64(x2)	# 138
	addi	x2, x2, -68	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 68	# 138
	lw		x1, -64(x2)	# 138
fle_cont.23124:
	flw		f2, -60(x2)	# 1744
	fsub	f1, f2, f1	# 1744
	fadd	f2, f0, f25	# 1744
	fmul	f1, f1, f2	# 1744
	lw		x29, -56(x2)	# 1745
	sw		x1, -64(x2)	# 1745
	addi	x2, x2, -68	# 1745
	lw		x31, 0(x29)	# 1745
	jalr	x1, x31, 0	# 1745
	addi	x2, x2, 68	# 1745
	lw		x1, -64(x2)	# 1745
	fmul	f1, f1, f1	# 127
	flw		f2, -4(x2)	# 1746
	fmul	f3, f1, f2	# 1746
	lw		x4, -28(x2)	# 1746
	mul		x4, x30, x4	# 1746
	addi	x4, x4, 50580	# 1746
	fsw		f3, 0(x4)	# 1746
	fadd	f3, f0, f16	# 1747
	fsub	f1, f3, f1	# 1747
	fmul	f1, f1, f2	# 1747
	lw		x4, 0(x2)	# 1747
	mul		x4, x30, x4	# 1747
	addi	x4, x4, 50580	# 1747
	fsw		f1, 0(x4)	# 1747
	jalr	x0, x1, 0	# 1747
beq.23103:
	mul		x4, x30, x14	# 1734
	add		x4, x5, x4	# 1734
	flw		f2, 0(x4)	# 1734
	lui		x4, %hi(l.19324)	# 1734
	ori		x4, x0, %lo(l.19324)	# 1734
	flw		f3, 0(x4)	# 1734
	fmul	f2, f2, f3	# 1734
	sw		x14, -28(x2)	# 1734
	sw		x13, -64(x2)	# 1734
	fsw		f1, -4(x2)	# 1734
	addi	x29, x6, 0
	fadd	f1, f0, f2
	sw		x1, -68(x2)	# 1734
	addi	x2, x2, -72	# 1734
	lw		x31, 0(x29)	# 1734
	jalr	x1, x31, 0	# 1734
	addi	x2, x2, 72	# 1734
	lw		x1, -68(x2)	# 1734
	fmul	f1, f1, f1	# 127
	flw		f2, -4(x2)	# 1735
	fmul	f3, f2, f1	# 1735
	lw		x4, -64(x2)	# 1735
	mul		x4, x30, x4	# 1735
	addi	x4, x4, 50580	# 1735
	fsw		f3, 0(x4)	# 1735
	fadd	f3, f0, f16	# 1736
	fsub	f1, f3, f1	# 1736
	fmul	f1, f2, f1	# 1736
	lw		x4, -28(x2)	# 1736
	mul		x4, x30, x4	# 1736
	addi	x4, x4, 50580	# 1736
	fsw		f1, 0(x4)	# 1736
	jalr	x0, x1, 0	# 1736
beq.23102:
	mul		x6, x30, x13	# 1716
	add		x6, x5, x6	# 1716
	flw		f3, 0(x6)	# 1716
	lw		x6, 20(x4)	# 431
	mul		x9, x30, x13	# 436
	add		x6, x6, x9	# 436
	flw		f4, 0(x6)	# 436
	fsub	f3, f3, f4	# 1716
	lui		x6, %hi(l.19335)	# 1718
	ori		x6, x0, %lo(l.19335)	# 1718
	flw		f4, 0(x6)	# 1718
	fmul	f5, f3, f4	# 1718
	sw		x14, -28(x2)	# 137
	fsw		f1, -4(x2)	# 137
	sw		x8, -32(x2)	# 137
	sw		x7, -36(x2)	# 137
	fsw		f2, -40(x2)	# 137
	fsw		f4, -68(x2)	# 137
	sw		x4, -20(x2)	# 137
	sw		x5, -24(x2)	# 137
	sw		x11, 0(x2)	# 137
	fsw		f3, -72(x2)	# 137
	fle		x31, f2, f5	# 137
	beq		x31, x0, fle_else.23129	# 137
	addi	x29, x7, 0
	fadd	f1, f0, f5
	sw		x1, -76(x2)	# 137
	addi	x2, x2, -80	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 80	# 137
	lw		x1, -76(x2)	# 137
	lw		x29, -32(x2)	# 137
	sw		x1, -76(x2)	# 137
	addi	x2, x2, -80	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 80	# 137
	lw		x1, -76(x2)	# 137
	jal		x0, fle_cont.23128	# 137
fle_else.23129:
	addi	x29, x7, 0
	fadd	f1, f0, f5
	sw		x1, -76(x2)	# 138
	addi	x2, x2, -80	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 80	# 138
	lw		x1, -76(x2)	# 138
	addi	x5, x0, 1	# 138
	sub		x4, x4, x5	# 138
	lw		x29, -32(x2)	# 138
	sw		x1, -76(x2)	# 138
	addi	x2, x2, -80	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 80	# 138
	lw		x1, -76(x2)	# 138
fle_cont.23128:
	lui		x4, %hi(l.19337)	# 1718
	ori		x4, x0, %lo(l.19337)	# 1718
	flw		f2, 0(x4)	# 1718
	fmul	f1, f1, f2	# 1718
	flw		f3, -72(x2)	# 1719
	fsub	f1, f3, f1	# 1719
	fadd	f3, f0, f30	# 1719
	lw		x4, 0(x2)	# 1721
	mul		x5, x30, x4	# 1721
	lw		x6, -24(x2)	# 1721
	add		x5, x6, x5	# 1721
	flw		f4, 0(x5)	# 1721
	lw		x5, -20(x2)	# 451
	lw		x5, 20(x5)	# 451
	mul		x4, x30, x4	# 456
	add		x4, x5, x4	# 456
	flw		f5, 0(x4)	# 456
	fsub	f4, f4, f5	# 1721
	flw		f5, -68(x2)	# 1723
	fmul	f5, f4, f5	# 1723
	flw		f6, -40(x2)	# 137
	fsw		f1, -76(x2)	# 137
	fsw		f3, -80(x2)	# 137
	fsw		f4, -84(x2)	# 137
	fsw		f2, -88(x2)	# 137
	fle		x31, f6, f5	# 137
	beq		x31, x0, fle_else.23131	# 137
	lw		x29, -36(x2)	# 137
	fadd	f1, f0, f5
	sw		x1, -92(x2)	# 137
	addi	x2, x2, -96	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 96	# 137
	lw		x1, -92(x2)	# 137
	lw		x29, -32(x2)	# 137
	sw		x1, -92(x2)	# 137
	addi	x2, x2, -96	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 96	# 137
	lw		x1, -92(x2)	# 137
	jal		x0, fle_cont.23130	# 137
fle_else.23131:
	lw		x29, -36(x2)	# 138
	fadd	f1, f0, f5
	sw		x1, -92(x2)	# 138
	addi	x2, x2, -96	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 96	# 138
	lw		x1, -92(x2)	# 138
	addi	x5, x0, 1	# 138
	sub		x4, x4, x5	# 138
	lw		x29, -32(x2)	# 138
	sw		x1, -92(x2)	# 138
	addi	x2, x2, -96	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 96	# 138
	lw		x1, -92(x2)	# 138
fle_cont.23130:
	flw		f2, -88(x2)	# 1723
	fmul	f1, f1, f2	# 1723
	flw		f2, -84(x2)	# 1724
	fsub	f1, f2, f1	# 1724
	flw		f2, -76(x2)	# 125
	flw		f3, -80(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.23133	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.23135	# 125
	flw		f1, -4(x2)	# 1729
	jal		x0, fle_cont.23134	# 125
fle_else.23135:
	flw		f1, -40(x2)	# 1729
fle_cont.23134:
	jal		x0, fle_cont.23132	# 125
fle_else.23133:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.23137	# 125
	flw		f1, -40(x2)	# 1728
	jal		x0, fle_cont.23136	# 125
fle_else.23137:
	flw		f1, -4(x2)	# 1728
fle_cont.23136:
fle_cont.23132:
	lw		x4, -28(x2)	# 1726
	mul		x4, x30, x4	# 1726
	addi	x4, x4, 50580	# 1726
	fsw		f1, 0(x4)	# 1726
	jalr	x0, x1, 0	# 1726
trace_reflections.2866.12420:
	lw		x6, 28(x29)	# 1804
	lw		x7, 24(x29)	# 1804
	lw		x8, 20(x29)	# 1804
	lw		x9, 16(x29)	# 1804
	lw		x10, 12(x29)	# 1804
	flw		f3, 8(x29)	# 1804
	flw		f4, 4(x29)	# 1804
	ble		x9, x4, ble.23139	# 1804
	jalr	x0, x1, 0	# 1824
ble.23139:
	mul		x11, x30, x4	# 1805
	addi	x11, x11, 51016	# 1805
	lw		x11, 0(x11)	# 1805
	lw		x12, 4(x11)	# 661
	mul		x13, x30, x9	# 1634
	addi	x13, x13, 50548	# 1634
	fsw		f3, 0(x13)	# 1634
	mul		x13, x30, x9	# 1635
	addi	x13, x13, 50536	# 1635
	lw		x13, 0(x13)	# 1635
	sw		x29, 0(x2)	# 1635
	sw		x4, -4(x2)	# 1635
	fsw		f2, -8(x2)	# 1635
	sw		x8, -12(x2)	# 1635
	sw		x10, -16(x2)	# 1635
	fsw		f4, -20(x2)	# 1635
	sw		x5, -24(x2)	# 1635
	fsw		f1, -28(x2)	# 1635
	sw		x12, -32(x2)	# 1635
	sw		x7, -36(x2)	# 1635
	sw		x11, -40(x2)	# 1635
	sw		x9, -44(x2)	# 1635
	addi	x5, x13, 0
	addi	x4, x9, 0
	addi	x29, x6, 0
	addi	x6, x12, 0
	sw		x1, -48(x2)	# 1635
	addi	x2, x2, -52	# 1635
	lw		x31, 0(x29)	# 1635
	jalr	x1, x31, 0	# 1635
	addi	x2, x2, 52	# 1635
	lw		x1, -48(x2)	# 1635
	lw		x4, -44(x2)	# 1636
	mul		x5, x30, x4	# 1636
	addi	x5, x5, 50548	# 1636
	flw		f1, 0(x5)	# 1636
	fadd	f2, f0, f19	# 1638
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.23142	# 125
	addi	x5, x0, 0	# 1640
	jal		x0, fle_cont.23141	# 125
fle_else.23142:
	fadd	f2, f0, f21	# 1639
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.23144	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.23143	# 125
fle_else.23144:
	addi	x5, x0, 1	# 125
fle_cont.23143:
fle_cont.23141:
	beq		x5, x4, beq_cont.23145	# 1809
	addi	x5, x0, 0	# 1810
	mul		x5, x30, x5	# 1810
	addi	x5, x5, 50564	# 1810
	lw		x5, 0(x5)	# 1810
	addi	x6, x0, 4	# 1810
	mul		x5, x5, x6	# 1810
	addi	x6, x0, 0	# 1810
	mul		x6, x30, x6	# 1810
	addi	x6, x6, 50544	# 1810
	lw		x6, 0(x6)	# 1810
	add		x5, x5, x6	# 1810
	lw		x6, -40(x2)	# 655
	lw		x7, 0(x6)	# 655
	beq		x5, x7, beq.23147	# 1811
	jal		x0, beq_cont.23146	# 1811
beq.23147:
	addi	x5, x0, 0	# 1813
	addi	x7, x0, 0	# 1813
	mul		x7, x30, x7	# 1813
	addi	x7, x7, 50536	# 1813
	lw		x7, 0(x7)	# 1813
	lw		x29, -36(x2)	# 1813
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -48(x2)	# 1813
	addi	x2, x2, -52	# 1813
	lw		x31, 0(x29)	# 1813
	jalr	x1, x31, 0	# 1813
	addi	x2, x2, 52	# 1813
	lw		x1, -48(x2)	# 1813
	addi	x5, x0, 0	# 1813
	beq		x4, x5, beq.23149	# 1813
	jal		x0, beq_cont.23148	# 1813
beq.23149:
	lw		x4, -32(x2)	# 639
	lw		x5, 0(x4)	# 639
	addi	x6, x0, 0	# 292
	mul		x6, x30, x6	# 292
	addi	x6, x6, 50568	# 292
	flw		f1, 0(x6)	# 292
	addi	x6, x0, 0	# 292
	mul		x6, x30, x6	# 292
	add		x6, x5, x6	# 292
	flw		f2, 0(x6)	# 292
	fmul	f1, f1, f2	# 292
	addi	x6, x0, 1	# 292
	mul		x6, x30, x6	# 292
	addi	x6, x6, 50568	# 292
	flw		f2, 0(x6)	# 292
	addi	x6, x0, 1	# 292
	mul		x6, x30, x6	# 292
	add		x6, x5, x6	# 292
	flw		f3, 0(x6)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	addi	x6, x0, 2	# 292
	mul		x6, x30, x6	# 292
	addi	x6, x6, 50568	# 292
	flw		f2, 0(x6)	# 292
	addi	x6, x0, 2	# 292
	mul		x6, x30, x6	# 292
	add		x5, x5, x6	# 292
	flw		f3, 0(x5)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	lw		x5, -40(x2)	# 1817
	flw		f2, 8(x5)	# 1817
	flw		f3, -28(x2)	# 1817
	fmul	f4, f2, f3	# 1817
	fmul	f1, f4, f1	# 1817
	lw		x4, 0(x4)	# 639
	addi	x5, x0, 0	# 292
	mul		x5, x30, x5	# 292
	lw		x6, -24(x2)	# 292
	add		x5, x6, x5	# 292
	flw		f4, 0(x5)	# 292
	addi	x5, x0, 0	# 292
	mul		x5, x30, x5	# 292
	add		x5, x4, x5	# 292
	flw		f5, 0(x5)	# 292
	fmul	f4, f4, f5	# 292
	addi	x5, x0, 1	# 292
	mul		x5, x30, x5	# 292
	add		x5, x6, x5	# 292
	flw		f5, 0(x5)	# 292
	addi	x5, x0, 1	# 292
	mul		x5, x30, x5	# 292
	add		x5, x4, x5	# 292
	flw		f6, 0(x5)	# 292
	fmul	f5, f5, f6	# 292
	fadd	f4, f4, f5	# 292
	addi	x5, x0, 2	# 292
	mul		x5, x30, x5	# 292
	add		x5, x6, x5	# 292
	flw		f5, 0(x5)	# 292
	addi	x5, x0, 2	# 292
	mul		x5, x30, x5	# 292
	add		x4, x4, x5	# 292
	flw		f6, 0(x4)	# 292
	fmul	f5, f5, f6	# 292
	fadd	f4, f4, f5	# 292
	fmul	f2, f2, f4	# 1818
	flw		f4, -20(x2)	# 121
	fle		x31, f1, f4	# 121
	beq		x31, x0, fle_else.23151	# 121
	jal		x0, fle_cont.23150	# 121
fle_else.23151:
	lw		x4, -44(x2)	# 302
	mul		x5, x30, x4	# 302
	addi	x5, x5, 50604	# 302
	flw		f5, 0(x5)	# 302
	mul		x5, x30, x4	# 302
	addi	x5, x5, 50580	# 302
	flw		f6, 0(x5)	# 302
	fmul	f6, f1, f6	# 302
	fadd	f5, f5, f6	# 302
	mul		x4, x30, x4	# 302
	addi	x4, x4, 50604	# 302
	fsw		f5, 0(x4)	# 302
	lw		x4, -16(x2)	# 303
	mul		x5, x30, x4	# 303
	addi	x5, x5, 50604	# 303
	flw		f5, 0(x5)	# 303
	mul		x5, x30, x4	# 303
	addi	x5, x5, 50580	# 303
	flw		f6, 0(x5)	# 303
	fmul	f6, f1, f6	# 303
	fadd	f5, f5, f6	# 303
	mul		x5, x30, x4	# 303
	addi	x5, x5, 50604	# 303
	fsw		f5, 0(x5)	# 303
	lw		x5, -12(x2)	# 304
	mul		x7, x30, x5	# 304
	addi	x7, x7, 50604	# 304
	flw		f5, 0(x7)	# 304
	mul		x7, x30, x5	# 304
	addi	x7, x7, 50580	# 304
	flw		f6, 0(x7)	# 304
	fmul	f1, f1, f6	# 304
	fadd	f1, f5, f1	# 304
	mul		x5, x30, x5	# 304
	addi	x5, x5, 50604	# 304
	fsw		f1, 0(x5)	# 304
fle_cont.23150:
	fle		x31, f2, f4	# 121
	beq		x31, x0, fle_else.23153	# 121
	jal		x0, fle_cont.23152	# 121
fle_else.23153:
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -8(x2)	# 1794
	fmul	f1, f1, f2	# 1794
	addi	x4, x0, 0	# 1795
	addi	x5, x0, 0	# 1795
	mul		x5, x30, x5	# 1795
	addi	x5, x5, 50604	# 1795
	flw		f4, 0(x5)	# 1795
	fadd	f4, f4, f1	# 1795
	mul		x4, x30, x4	# 1795
	addi	x4, x4, 50604	# 1795
	fsw		f4, 0(x4)	# 1795
	addi	x4, x0, 1	# 1796
	addi	x5, x0, 1	# 1796
	mul		x5, x30, x5	# 1796
	addi	x5, x5, 50604	# 1796
	flw		f4, 0(x5)	# 1796
	fadd	f4, f4, f1	# 1796
	mul		x4, x30, x4	# 1796
	addi	x4, x4, 50604	# 1796
	fsw		f4, 0(x4)	# 1796
	addi	x4, x0, 2	# 1797
	mul		x5, x30, x4	# 1797
	addi	x5, x5, 50604	# 1797
	flw		f4, 0(x5)	# 1797
	fadd	f1, f4, f1	# 1797
	mul		x4, x30, x4	# 1797
	addi	x4, x4, 50604	# 1797
	fsw		f1, 0(x4)	# 1797
fle_cont.23152:
beq_cont.23148:
beq_cont.23146:
beq_cont.23145:
	lw		x4, -16(x2)	# 1823
	lw		x5, -4(x2)	# 1823
	sub		x4, x5, x4	# 1823
	flw		f1, -28(x2)	# 1823
	flw		f2, -8(x2)	# 1823
	lw		x5, -24(x2)	# 1823
	lw		x29, 0(x2)	# 1823
	lw		x31, 0(x29)	# 1823
	jalr	x0, x31, 0	# 1823
trace_ray.2871.12425:
	lw		x7, 48(x29)	# 1832
	lw		x8, 44(x29)	# 1832
	lw		x9, 40(x29)	# 1832
	lw		x10, 36(x29)	# 1832
	lw		x11, 32(x29)	# 1832
	lw		x12, 28(x29)	# 1832
	lw		x13, 24(x29)	# 1832
	lw		x14, 20(x29)	# 1832
	lw		x15, 16(x29)	# 1832
	lw		x16, 12(x29)	# 1832
	flw		f3, 8(x29)	# 1832
	flw		f4, 4(x29)	# 1832
	addi	x17, x0, 4	# 1832
	ble		x4, x17, ble.23154	# 1832
	jalr	x0, x1, 0	# 1913
ble.23154:
	lw		x18, 8(x6)	# 577
	mul		x19, x30, x15	# 1543
	addi	x19, x19, 50548	# 1543
	fsw		f3, 0(x19)	# 1543
	mul		x19, x30, x15	# 1544
	addi	x19, x19, 50536	# 1544
	lw		x19, 0(x19)	# 1544
	sw		x29, 0(x2)	# 1544
	fsw		f2, -4(x2)	# 1544
	sw		x8, -8(x2)	# 1544
	sw		x11, -12(x2)	# 1544
	sw		x10, -16(x2)	# 1544
	sw		x6, -20(x2)	# 1544
	sw		x17, -24(x2)	# 1544
	sw		x7, -28(x2)	# 1544
	sw		x12, -32(x2)	# 1544
	fsw		f1, -36(x2)	# 1544
	fsw		f4, -40(x2)	# 1544
	sw		x13, -44(x2)	# 1544
	sw		x16, -48(x2)	# 1544
	sw		x5, -52(x2)	# 1544
	sw		x14, -56(x2)	# 1544
	sw		x18, -60(x2)	# 1544
	sw		x4, -64(x2)	# 1544
	sw		x15, -68(x2)	# 1544
	addi	x6, x5, 0
	addi	x4, x15, 0
	addi	x29, x9, 0
	addi	x5, x19, 0
	sw		x1, -72(x2)	# 1544
	addi	x2, x2, -76	# 1544
	lw		x31, 0(x29)	# 1544
	jalr	x1, x31, 0	# 1544
	addi	x2, x2, 76	# 1544
	lw		x1, -72(x2)	# 1544
	lw		x4, -68(x2)	# 1545
	mul		x5, x30, x4	# 1545
	addi	x5, x5, 50548	# 1545
	flw		f1, 0(x5)	# 1545
	fadd	f2, f0, f19	# 1547
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.23157	# 125
	addi	x5, x0, 0	# 1549
	jal		x0, fle_cont.23156	# 125
fle_else.23157:
	fadd	f2, f0, f21	# 1548
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.23159	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.23158	# 125
fle_else.23159:
	addi	x5, x0, 1	# 125
fle_cont.23158:
fle_cont.23156:
	beq		x5, x4, beq.23160	# 1834
	mul		x5, x30, x4	# 1836
	addi	x5, x5, 50564	# 1836
	lw		x5, 0(x5)	# 1836
	mul		x6, x30, x5	# 1837
	addi	x6, x6, 50048	# 1837
	lw		x6, 0(x6)	# 1837
	lw		x7, 8(x6)	# 363
	lw		x8, 28(x6)	# 461
	mul		x9, x30, x4	# 466
	add		x8, x8, x9	# 466
	flw		f1, 0(x8)	# 466
	flw		f2, -36(x2)	# 1839
	fmul	f1, f1, f2	# 1839
	lw		x8, 4(x6)	# 353
	lw		x9, -48(x2)	# 1693
	sw		x7, -72(x2)	# 1693
	fsw		f1, -76(x2)	# 1693
	sw		x5, -80(x2)	# 1693
	sw		x6, -84(x2)	# 1693
	beq		x8, x9, beq.23162	# 1693
	addi	x10, x0, 2	# 1695
	beq		x8, x10, beq.23164	# 1695
	lw		x29, -32(x2)	# 1698
	addi	x4, x6, 0
	sw		x1, -88(x2)	# 1698
	addi	x2, x2, -92	# 1698
	lw		x31, 0(x29)	# 1698
	jalr	x1, x31, 0	# 1698
	addi	x2, x2, 92	# 1698
	lw		x1, -88(x2)	# 1698
	jal		x0, beq_cont.23163	# 1695
beq.23164:
	lw		x8, 16(x6)	# 391
	mul		x10, x30, x4	# 396
	add		x8, x8, x10	# 396
	flw		f3, 0(x8)	# 396
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x4	# 1663
	addi	x8, x8, 50568	# 1663
	fsw		f3, 0(x8)	# 1663
	lw		x8, 16(x6)	# 401
	mul		x10, x30, x9	# 406
	add		x8, x8, x10	# 406
	flw		f3, 0(x8)	# 406
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x9	# 1664
	addi	x8, x8, 50568	# 1664
	fsw		f3, 0(x8)	# 1664
	lw		x8, 16(x6)	# 411
	lw		x10, -44(x2)	# 416
	mul		x11, x30, x10	# 416
	add		x8, x8, x11	# 416
	flw		f3, 0(x8)	# 416
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x10	# 1665
	addi	x8, x8, 50568	# 1665
	fsw		f3, 0(x8)	# 1665
beq_cont.23163:
	jal		x0, beq_cont.23161	# 1693
beq.23162:
	mul		x8, x30, x4	# 1654
	addi	x8, x8, 50544	# 1654
	lw		x8, 0(x8)	# 1654
	fadd	f3, f0, f0	# 254
	mul		x10, x30, x4	# 247
	addi	x10, x10, 50568	# 247
	fsw		f3, 0(x10)	# 247
	mul		x10, x30, x9	# 248
	addi	x10, x10, 50568	# 248
	fsw		f3, 0(x10)	# 248
	lw		x10, -44(x2)	# 249
	mul		x11, x30, x10	# 249
	addi	x11, x11, 50568	# 249
	fsw		f3, 0(x11)	# 249
	sub		x11, x8, x9	# 1657
	sub		x8, x8, x9	# 1657
	mul		x8, x30, x8	# 1657
	lw		x12, -52(x2)	# 1657
	add		x8, x12, x8	# 1657
	flw		f3, 0(x8)	# 1657
	flw		f4, -40(x2)	# 120
	feq		x31, f3, f4	# 120
	beq		x31, x0, feq_else.23166	# 120
	fadd	f3, f0, f0	# 212
	jal		x0, feq_cont.23165	# 120
feq_else.23166:
	fle		x31, f3, f4	# 121
	beq		x31, x0, fle_else.23168	# 121
	fadd	f3, f0, f18	# 214
	jal		x0, fle_cont.23167	# 121
fle_else.23168:
	fadd	f3, f0, f16	# 213
fle_cont.23167:
feq_cont.23165:
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x11	# 1657
	addi	x8, x8, 50568	# 1657
	fsw		f3, 0(x8)	# 1657
beq_cont.23161:
	lw		x4, -68(x2)	# 259
	mul		x5, x30, x4	# 259
	addi	x5, x5, 50552	# 259
	flw		f1, 0(x5)	# 259
	mul		x5, x30, x4	# 259
	addi	x5, x5, 50636	# 259
	fsw		f1, 0(x5)	# 259
	lw		x5, -48(x2)	# 260
	mul		x6, x30, x5	# 260
	addi	x6, x6, 50552	# 260
	flw		f1, 0(x6)	# 260
	mul		x6, x30, x5	# 260
	addi	x6, x6, 50636	# 260
	fsw		f1, 0(x6)	# 260
	lw		x6, -44(x2)	# 261
	mul		x7, x30, x6	# 261
	addi	x7, x7, 50552	# 261
	flw		f1, 0(x7)	# 261
	mul		x7, x30, x6	# 261
	addi	x7, x7, 50636	# 261
	fsw		f1, 0(x7)	# 261
	addi	x7, x0, 50552	# 1843
	lw		x8, -84(x2)	# 1843
	lw		x29, -28(x2)	# 1843
	addi	x5, x7, 0
	addi	x4, x8, 0
	sw		x1, -88(x2)	# 1843
	addi	x2, x2, -92	# 1843
	lw		x31, 0(x29)	# 1843
	jalr	x1, x31, 0	# 1843
	addi	x2, x2, 92	# 1843
	lw		x1, -88(x2)	# 1843
	lw		x4, -24(x2)	# 1846
	lw		x5, -80(x2)	# 1846
	mul		x5, x5, x4	# 1846
	lw		x6, -68(x2)	# 1846
	mul		x7, x30, x6	# 1846
	addi	x7, x7, 50544	# 1846
	lw		x7, 0(x7)	# 1846
	add		x5, x5, x7	# 1846
	lw		x7, -64(x2)	# 1846
	mul		x8, x30, x7	# 1846
	lw		x9, -60(x2)	# 1846
	add		x8, x9, x8	# 1846
	sw		x5, 0(x8)	# 1846
	lw		x5, -20(x2)	# 569
	lw		x8, 4(x5)	# 569
	mul		x10, x30, x7	# 1848
	add		x8, x8, x10	# 1848
	lw		x8, 0(x8)	# 1848
	mul		x10, x30, x6	# 259
	addi	x10, x10, 50552	# 259
	flw		f1, 0(x10)	# 259
	mul		x10, x30, x6	# 259
	add		x10, x8, x10	# 259
	fsw		f1, 0(x10)	# 259
	lw		x10, -48(x2)	# 260
	mul		x11, x30, x10	# 260
	addi	x11, x11, 50552	# 260
	flw		f1, 0(x11)	# 260
	mul		x11, x30, x10	# 260
	add		x11, x8, x11	# 260
	fsw		f1, 0(x11)	# 260
	lw		x11, -44(x2)	# 261
	mul		x12, x30, x11	# 261
	addi	x12, x12, 50552	# 261
	flw		f1, 0(x12)	# 261
	mul		x12, x30, x11	# 261
	add		x8, x8, x12	# 261
	fsw		f1, 0(x8)	# 261
	lw		x8, 12(x5)	# 584
	lw		x12, -84(x2)	# 461
	lw		x13, 28(x12)	# 461
	mul		x14, x30, x6	# 466
	add		x13, x13, x14	# 466
	flw		f1, 0(x13)	# 466
	fadd	f2, f0, f17	# 1852
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.23170	# 125
	addi	x13, x0, 1	# 1855
	mul		x14, x30, x7	# 1855
	add		x8, x8, x14	# 1855
	sw		x13, 0(x8)	# 1855
	lw		x8, 16(x5)	# 591
	mul		x13, x30, x7	# 1857
	add		x13, x8, x13	# 1857
	lw		x13, 0(x13)	# 1857
	addi	x14, x0, 0	# 259
	addi	x15, x0, 0	# 259
	mul		x15, x30, x15	# 259
	addi	x15, x15, 50580	# 259
	flw		f1, 0(x15)	# 259
	mul		x14, x30, x14	# 259
	add		x14, x13, x14	# 259
	fsw		f1, 0(x14)	# 259
	addi	x14, x0, 1	# 260
	addi	x15, x0, 1	# 260
	mul		x15, x30, x15	# 260
	addi	x15, x15, 50580	# 260
	flw		f1, 0(x15)	# 260
	mul		x14, x30, x14	# 260
	add		x14, x13, x14	# 260
	fsw		f1, 0(x14)	# 260
	addi	x14, x0, 2	# 261
	mul		x15, x30, x14	# 261
	addi	x15, x15, 50580	# 261
	flw		f1, 0(x15)	# 261
	mul		x14, x30, x14	# 261
	add		x13, x13, x14	# 261
	fsw		f1, 0(x13)	# 261
	mul		x13, x30, x7	# 1858
	add		x8, x8, x13	# 1858
	lw		x8, 0(x8)	# 1858
	lui		x13, %hi(l.19512)	# 1858
	ori		x13, x0, %lo(l.19512)	# 1858
	flw		f1, 0(x13)	# 1858
	flw		f2, -76(x2)	# 1858
	fmul	f1, f1, f2	# 1858
	addi	x13, x0, 0	# 325
	addi	x14, x0, 0	# 325
	mul		x14, x30, x14	# 325
	add		x14, x8, x14	# 325
	flw		f3, 0(x14)	# 325
	fmul	f3, f3, f1	# 325
	mul		x13, x30, x13	# 325
	add		x13, x8, x13	# 325
	fsw		f3, 0(x13)	# 325
	addi	x13, x0, 1	# 326
	addi	x14, x0, 1	# 326
	mul		x14, x30, x14	# 326
	add		x14, x8, x14	# 326
	flw		f3, 0(x14)	# 326
	fmul	f3, f3, f1	# 326
	mul		x13, x30, x13	# 326
	add		x13, x8, x13	# 326
	fsw		f3, 0(x13)	# 326
	addi	x13, x0, 2	# 327
	mul		x14, x30, x13	# 327
	add		x14, x8, x14	# 327
	flw		f3, 0(x14)	# 327
	fmul	f1, f3, f1	# 327
	mul		x13, x30, x13	# 327
	add		x8, x8, x13	# 327
	fsw		f1, 0(x8)	# 327
	lw		x8, 28(x5)	# 628
	mul		x13, x30, x7	# 1860
	add		x8, x8, x13	# 1860
	lw		x8, 0(x8)	# 1860
	addi	x13, x0, 0	# 259
	addi	x14, x0, 0	# 259
	mul		x14, x30, x14	# 259
	addi	x14, x14, 50568	# 259
	flw		f1, 0(x14)	# 259
	mul		x13, x30, x13	# 259
	add		x13, x8, x13	# 259
	fsw		f1, 0(x13)	# 259
	addi	x13, x0, 1	# 260
	addi	x14, x0, 1	# 260
	mul		x14, x30, x14	# 260
	addi	x14, x14, 50568	# 260
	flw		f1, 0(x14)	# 260
	mul		x13, x30, x13	# 260
	add		x13, x8, x13	# 260
	fsw		f1, 0(x13)	# 260
	addi	x13, x0, 2	# 261
	mul		x14, x30, x13	# 261
	addi	x14, x14, 50568	# 261
	flw		f1, 0(x14)	# 261
	mul		x13, x30, x13	# 261
	add		x8, x8, x13	# 261
	fsw		f1, 0(x8)	# 261
	jal		x0, fle_cont.23169	# 125
fle_else.23170:
	addi	x13, x0, 0	# 1853
	mul		x14, x30, x7	# 1853
	add		x8, x8, x14	# 1853
	sw		x13, 0(x8)	# 1853
fle_cont.23169:
	lui		x8, %hi(l.19540)	# 1863
	ori		x8, x0, %lo(l.19540)	# 1863
	flw		f1, 0(x8)	# 1863
	mul		x8, x30, x6	# 292
	lw		x13, -52(x2)	# 292
	add		x8, x13, x8	# 292
	flw		f2, 0(x8)	# 292
	mul		x8, x30, x6	# 292
	addi	x8, x8, 50568	# 292
	flw		f3, 0(x8)	# 292
	fmul	f4, f2, f3	# 292
	mul		x8, x30, x10	# 292
	add		x8, x13, x8	# 292
	flw		f5, 0(x8)	# 292
	mul		x8, x30, x10	# 292
	addi	x8, x8, 50568	# 292
	flw		f6, 0(x8)	# 292
	fmul	f5, f5, f6	# 292
	fadd	f4, f4, f5	# 292
	mul		x8, x30, x11	# 292
	add		x8, x13, x8	# 292
	flw		f5, 0(x8)	# 292
	mul		x8, x30, x11	# 292
	addi	x8, x8, 50568	# 292
	flw		f6, 0(x8)	# 292
	fmul	f5, f5, f6	# 292
	fadd	f4, f4, f5	# 292
	fmul	f1, f1, f4	# 1863
	fmul	f3, f1, f3	# 302
	fadd	f2, f2, f3	# 302
	mul		x8, x30, x6	# 302
	add		x8, x13, x8	# 302
	fsw		f2, 0(x8)	# 302
	mul		x8, x30, x10	# 303
	add		x8, x13, x8	# 303
	flw		f2, 0(x8)	# 303
	mul		x8, x30, x10	# 303
	addi	x8, x8, 50568	# 303
	flw		f3, 0(x8)	# 303
	fmul	f3, f1, f3	# 303
	fadd	f2, f2, f3	# 303
	mul		x8, x30, x10	# 303
	add		x8, x13, x8	# 303
	fsw		f2, 0(x8)	# 303
	mul		x8, x30, x11	# 304
	add		x8, x13, x8	# 304
	flw		f2, 0(x8)	# 304
	mul		x8, x30, x11	# 304
	addi	x8, x8, 50568	# 304
	flw		f3, 0(x8)	# 304
	fmul	f1, f1, f3	# 304
	fadd	f1, f2, f1	# 304
	mul		x8, x30, x11	# 304
	add		x8, x13, x8	# 304
	fsw		f1, 0(x8)	# 304
	lw		x8, 28(x12)	# 471
	mul		x14, x30, x10	# 476
	add		x8, x8, x14	# 476
	flw		f1, 0(x8)	# 476
	flw		f2, -36(x2)	# 1867
	fmul	f1, f2, f1	# 1867
	mul		x8, x30, x6	# 1870
	addi	x8, x8, 50536	# 1870
	lw		x8, 0(x8)	# 1870
	lw		x29, -16(x2)	# 1870
	fsw		f1, -88(x2)	# 1870
	addi	x5, x8, 0
	addi	x4, x6, 0
	sw		x1, -92(x2)	# 1870
	addi	x2, x2, -96	# 1870
	lw		x31, 0(x29)	# 1870
	jalr	x1, x31, 0	# 1870
	addi	x2, x2, 96	# 1870
	lw		x1, -92(x2)	# 1870
	lw		x5, -68(x2)	# 1870
	beq		x4, x5, beq.23172	# 1870
	jal		x0, beq_cont.23171	# 1870
beq.23172:
	addi	x4, x0, 0	# 292
	mul		x4, x30, x4	# 292
	addi	x4, x4, 50568	# 292
	flw		f1, 0(x4)	# 292
	addi	x4, x0, 0	# 292
	mul		x4, x30, x4	# 292
	addi	x4, x4, 50312	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	addi	x4, x0, 1	# 292
	mul		x4, x30, x4	# 292
	addi	x4, x4, 50568	# 292
	flw		f2, 0(x4)	# 292
	addi	x4, x0, 1	# 292
	mul		x4, x30, x4	# 292
	addi	x4, x4, 50312	# 292
	flw		f3, 0(x4)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	addi	x4, x0, 2	# 292
	mul		x4, x30, x4	# 292
	addi	x4, x4, 50568	# 292
	flw		f2, 0(x4)	# 292
	addi	x4, x0, 2	# 292
	mul		x4, x30, x4	# 292
	addi	x4, x4, 50312	# 292
	flw		f3, 0(x4)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	fsub	f1, f0, f1	# 123
	flw		f2, -76(x2)	# 1871
	fmul	f1, f1, f2	# 1871
	addi	x4, x0, 0	# 292
	mul		x4, x30, x4	# 292
	lw		x6, -52(x2)	# 292
	add		x4, x6, x4	# 292
	flw		f3, 0(x4)	# 292
	addi	x4, x0, 0	# 292
	mul		x4, x30, x4	# 292
	addi	x4, x4, 50312	# 292
	flw		f4, 0(x4)	# 292
	fmul	f3, f3, f4	# 292
	addi	x4, x0, 1	# 292
	mul		x4, x30, x4	# 292
	add		x4, x6, x4	# 292
	flw		f4, 0(x4)	# 292
	addi	x4, x0, 1	# 292
	mul		x4, x30, x4	# 292
	addi	x4, x4, 50312	# 292
	flw		f5, 0(x4)	# 292
	fmul	f4, f4, f5	# 292
	fadd	f3, f3, f4	# 292
	addi	x4, x0, 2	# 292
	mul		x4, x30, x4	# 292
	add		x4, x6, x4	# 292
	flw		f4, 0(x4)	# 292
	addi	x4, x0, 2	# 292
	mul		x4, x30, x4	# 292
	addi	x4, x4, 50312	# 292
	flw		f5, 0(x4)	# 292
	fmul	f4, f4, f5	# 292
	fadd	f3, f3, f4	# 292
	fsub	f3, f0, f3	# 123
	flw		f4, -40(x2)	# 121
	fle		x31, f1, f4	# 121
	beq		x31, x0, fle_else.23174	# 121
	jal		x0, fle_cont.23173	# 121
fle_else.23174:
	mul		x4, x30, x5	# 302
	addi	x4, x4, 50604	# 302
	flw		f5, 0(x4)	# 302
	mul		x4, x30, x5	# 302
	addi	x4, x4, 50580	# 302
	flw		f6, 0(x4)	# 302
	fmul	f6, f1, f6	# 302
	fadd	f5, f5, f6	# 302
	mul		x4, x30, x5	# 302
	addi	x4, x4, 50604	# 302
	fsw		f5, 0(x4)	# 302
	lw		x4, -48(x2)	# 303
	mul		x7, x30, x4	# 303
	addi	x7, x7, 50604	# 303
	flw		f5, 0(x7)	# 303
	mul		x7, x30, x4	# 303
	addi	x7, x7, 50580	# 303
	flw		f6, 0(x7)	# 303
	fmul	f6, f1, f6	# 303
	fadd	f5, f5, f6	# 303
	mul		x7, x30, x4	# 303
	addi	x7, x7, 50604	# 303
	fsw		f5, 0(x7)	# 303
	lw		x7, -44(x2)	# 304
	mul		x8, x30, x7	# 304
	addi	x8, x8, 50604	# 304
	flw		f5, 0(x8)	# 304
	mul		x8, x30, x7	# 304
	addi	x8, x8, 50580	# 304
	flw		f6, 0(x8)	# 304
	fmul	f1, f1, f6	# 304
	fadd	f1, f5, f1	# 304
	mul		x8, x30, x7	# 304
	addi	x8, x8, 50604	# 304
	fsw		f1, 0(x8)	# 304
fle_cont.23173:
	fle		x31, f3, f4	# 121
	beq		x31, x0, fle_else.23176	# 121
	jal		x0, fle_cont.23175	# 121
fle_else.23176:
	fmul	f1, f3, f3	# 127
	fmul	f1, f1, f1	# 127
	flw		f3, -88(x2)	# 1794
	fmul	f1, f1, f3	# 1794
	addi	x4, x0, 0	# 1795
	addi	x7, x0, 0	# 1795
	mul		x7, x30, x7	# 1795
	addi	x7, x7, 50604	# 1795
	flw		f4, 0(x7)	# 1795
	fadd	f4, f4, f1	# 1795
	mul		x4, x30, x4	# 1795
	addi	x4, x4, 50604	# 1795
	fsw		f4, 0(x4)	# 1795
	addi	x4, x0, 1	# 1796
	addi	x7, x0, 1	# 1796
	mul		x7, x30, x7	# 1796
	addi	x7, x7, 50604	# 1796
	flw		f4, 0(x7)	# 1796
	fadd	f4, f4, f1	# 1796
	mul		x4, x30, x4	# 1796
	addi	x4, x4, 50604	# 1796
	fsw		f4, 0(x4)	# 1796
	addi	x4, x0, 2	# 1797
	mul		x7, x30, x4	# 1797
	addi	x7, x7, 50604	# 1797
	flw		f4, 0(x7)	# 1797
	fadd	f1, f4, f1	# 1797
	mul		x4, x30, x4	# 1797
	addi	x4, x4, 50604	# 1797
	fsw		f1, 0(x4)	# 1797
fle_cont.23175:
beq_cont.23171:
	mul		x4, x30, x5	# 259
	addi	x4, x4, 50552	# 259
	flw		f1, 0(x4)	# 259
	mul		x4, x30, x5	# 259
	addi	x4, x4, 50648	# 259
	fsw		f1, 0(x4)	# 259
	lw		x4, -48(x2)	# 260
	mul		x6, x30, x4	# 260
	addi	x6, x6, 50552	# 260
	flw		f1, 0(x6)	# 260
	mul		x6, x30, x4	# 260
	addi	x6, x6, 50648	# 260
	fsw		f1, 0(x6)	# 260
	lw		x6, -44(x2)	# 261
	mul		x7, x30, x6	# 261
	addi	x7, x7, 50552	# 261
	flw		f1, 0(x7)	# 261
	mul		x7, x30, x6	# 261
	addi	x7, x7, 50648	# 261
	fsw		f1, 0(x7)	# 261
	mul		x7, x30, x5	# 1315
	addi	x7, x7, 50000	# 1315
	lw		x7, 0(x7)	# 1315
	sub		x7, x7, x4	# 1315
	addi	x8, x0, 50552	# 1315
	lw		x29, -12(x2)	# 1315
	addi	x5, x7, 0
	addi	x4, x8, 0
	sw		x1, -92(x2)	# 1315
	addi	x2, x2, -96	# 1315
	lw		x31, 0(x29)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 96	# 1315
	lw		x1, -92(x2)	# 1315
	lw		x4, -68(x2)	# 1878
	mul		x5, x30, x4	# 1878
	addi	x5, x5, 51736	# 1878
	lw		x5, 0(x5)	# 1878
	lw		x6, -48(x2)	# 1878
	sub		x5, x5, x6	# 1878
	flw		f1, -76(x2)	# 1878
	flw		f2, -88(x2)	# 1878
	lw		x7, -52(x2)	# 1878
	lw		x29, -8(x2)	# 1878
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -92(x2)	# 1878
	addi	x2, x2, -96	# 1878
	lw		x31, 0(x29)	# 1878
	jalr	x1, x31, 0	# 1878
	addi	x2, x2, 96	# 1878
	lw		x1, -92(x2)	# 1878
	fadd	f1, f0, f23	# 1881
	flw		f2, -36(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.23177	# 125
	jalr	x0, x1, 0	# 1892
fle_else.23177:
	lw		x4, -64(x2)	# 1883
	lw		x5, -24(x2)	# 1883
	ble		x5, x4, ble_cont.23179	# 1883
	addi	x5, x4, 1	# 1884
	addi	x6, x0, -1	# 1884
	mul		x5, x30, x5	# 1884
	lw		x7, -60(x2)	# 1884
	add		x5, x7, x5	# 1884
	sw		x6, 0(x5)	# 1884
ble_cont.23179:
	lw		x5, -44(x2)	# 1887
	lw		x6, -72(x2)	# 1887
	beq		x6, x5, beq.23180	# 1887
	jalr	x0, x1, 0	# 1890
beq.23180:
	fadd	f1, f0, f16	# 1888
	lw		x5, -84(x2)	# 461
	lw		x5, 28(x5)	# 461
	lw		x6, -68(x2)	# 466
	mul		x7, x30, x6	# 466
	add		x5, x5, x7	# 466
	flw		f3, 0(x5)	# 466
	fsub	f1, f1, f3	# 1888
	fmul	f1, f2, f1	# 1888
	lw		x5, -48(x2)	# 1889
	add		x4, x4, x5	# 1889
	mul		x5, x30, x6	# 1889
	addi	x5, x5, 50548	# 1889
	flw		f2, 0(x5)	# 1889
	flw		f3, -4(x2)	# 1889
	fadd	f2, f3, f2	# 1889
	lw		x5, -52(x2)	# 1889
	lw		x6, -20(x2)	# 1889
	lw		x29, 0(x2)	# 1889
	lw		x31, 0(x29)	# 1889
	jalr	x0, x31, 0	# 1889
beq.23160:
	lw		x5, -64(x2)	# 1897
	mul		x6, x30, x5	# 1897
	lw		x7, -60(x2)	# 1897
	add		x6, x7, x6	# 1897
	lw		x7, -56(x2)	# 1897
	sw		x7, 0(x6)	# 1897
	beq		x5, x4, beq.23182	# 1899
	mul		x5, x30, x4	# 292
	lw		x6, -52(x2)	# 292
	add		x5, x6, x5	# 292
	flw		f1, 0(x5)	# 292
	mul		x5, x30, x4	# 292
	addi	x5, x5, 50312	# 292
	flw		f2, 0(x5)	# 292
	fmul	f1, f1, f2	# 292
	lw		x5, -48(x2)	# 292
	mul		x7, x30, x5	# 292
	add		x7, x6, x7	# 292
	flw		f2, 0(x7)	# 292
	mul		x7, x30, x5	# 292
	addi	x7, x7, 50312	# 292
	flw		f3, 0(x7)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	lw		x7, -44(x2)	# 292
	mul		x8, x30, x7	# 292
	add		x6, x6, x8	# 292
	flw		f2, 0(x6)	# 292
	mul		x6, x30, x7	# 292
	addi	x6, x6, 50312	# 292
	flw		f3, 0(x6)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	fsub	f1, f0, f1	# 123
	flw		f2, -40(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.23183	# 121
	jalr	x0, x1, 0	# 1910
fle_else.23183:
	fmul	f2, f1, f1	# 127
	fmul	f1, f2, f1	# 1905
	flw		f2, -36(x2)	# 1905
	fmul	f1, f1, f2	# 1905
	mul		x6, x30, x4	# 1905
	addi	x6, x6, 50324	# 1905
	flw		f2, 0(x6)	# 1905
	fmul	f1, f1, f2	# 1905
	mul		x6, x30, x4	# 1906
	addi	x6, x6, 50604	# 1906
	flw		f2, 0(x6)	# 1906
	fadd	f2, f2, f1	# 1906
	mul		x4, x30, x4	# 1906
	addi	x4, x4, 50604	# 1906
	fsw		f2, 0(x4)	# 1906
	mul		x4, x30, x5	# 1907
	addi	x4, x4, 50604	# 1907
	flw		f2, 0(x4)	# 1907
	fadd	f2, f2, f1	# 1907
	mul		x4, x30, x5	# 1907
	addi	x4, x4, 50604	# 1907
	fsw		f2, 0(x4)	# 1907
	mul		x4, x30, x7	# 1908
	addi	x4, x4, 50604	# 1908
	flw		f2, 0(x4)	# 1908
	fadd	f1, f2, f1	# 1908
	mul		x4, x30, x7	# 1908
	addi	x4, x4, 50604	# 1908
	fsw		f1, 0(x4)	# 1908
	jalr	x0, x1, 0	# 1908
beq.23182:
	jalr	x0, x1, 0	# 1911
iter_trace_diffuse_rays.2880.12431:
	lw		x8, 36(x29)	# 1944
	lw		x9, 32(x29)	# 1944
	lw		x10, 28(x29)	# 1944
	lw		x11, 24(x29)	# 1944
	lw		x12, 20(x29)	# 1944
	lw		x13, 16(x29)	# 1944
	lw		x14, 12(x29)	# 1944
	flw		f1, 8(x29)	# 1944
	flw		f2, 4(x29)	# 1944
	ble		x13, x7, ble.23187	# 1944
	jalr	x0, x1, 0	# 1955
ble.23187:
	mul		x15, x30, x7	# 1945
	add		x15, x4, x15	# 1945
	lw		x15, 0(x15)	# 1945
	lw		x15, 0(x15)	# 639
	mul		x16, x30, x13	# 292
	add		x16, x15, x16	# 292
	flw		f3, 0(x16)	# 292
	mul		x16, x30, x13	# 292
	add		x16, x5, x16	# 292
	flw		f4, 0(x16)	# 292
	fmul	f3, f3, f4	# 292
	mul		x16, x30, x14	# 292
	add		x16, x15, x16	# 292
	flw		f4, 0(x16)	# 292
	mul		x16, x30, x14	# 292
	add		x16, x5, x16	# 292
	flw		f5, 0(x16)	# 292
	fmul	f4, f4, f5	# 292
	fadd	f3, f3, f4	# 292
	mul		x16, x30, x12	# 292
	add		x15, x15, x16	# 292
	flw		f4, 0(x15)	# 292
	mul		x15, x30, x12	# 292
	add		x15, x5, x15	# 292
	flw		f5, 0(x15)	# 292
	fmul	f4, f4, f5	# 292
	fadd	f3, f3, f4	# 292
	sw		x6, 0(x2)	# 122
	sw		x5, -4(x2)	# 122
	sw		x4, -8(x2)	# 122
	sw		x29, -12(x2)	# 122
	sw		x12, -16(x2)	# 122
	sw		x7, -20(x2)	# 122
	fle		x31, f2, f3	# 122
	beq		x31, x0, fle_else.23190	# 122
	mul		x15, x30, x7	# 1952
	add		x15, x4, x15	# 1952
	lw		x15, 0(x15)	# 1952
	lui		x16, %hi(l.19772)	# 1952
	ori		x16, x0, %lo(l.19772)	# 1952
	flw		f4, 0(x16)	# 1952
	fdiv	f3, f3, f4	# 1952
	mul		x16, x30, x13	# 1634
	addi	x16, x16, 50548	# 1634
	fsw		f1, 0(x16)	# 1634
	mul		x16, x30, x13	# 1635
	addi	x16, x16, 50536	# 1635
	lw		x16, 0(x16)	# 1635
	fsw		f3, -24(x2)	# 1635
	sw		x10, -28(x2)	# 1635
	sw		x8, -32(x2)	# 1635
	sw		x11, -36(x2)	# 1635
	fsw		f2, -40(x2)	# 1635
	sw		x14, -44(x2)	# 1635
	sw		x15, -48(x2)	# 1635
	sw		x13, -52(x2)	# 1635
	addi	x6, x15, 0
	addi	x5, x16, 0
	addi	x4, x13, 0
	addi	x29, x9, 0
	sw		x1, -56(x2)	# 1635
	addi	x2, x2, -60	# 1635
	lw		x31, 0(x29)	# 1635
	jalr	x1, x31, 0	# 1635
	addi	x2, x2, 60	# 1635
	lw		x1, -56(x2)	# 1635
	lw		x4, -52(x2)	# 1636
	mul		x5, x30, x4	# 1636
	addi	x5, x5, 50548	# 1636
	flw		f1, 0(x5)	# 1636
	fadd	f2, f0, f19	# 1638
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.23192	# 125
	addi	x5, x0, 0	# 1640
	jal		x0, fle_cont.23191	# 125
fle_else.23192:
	fadd	f2, f0, f21	# 1639
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.23194	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.23193	# 125
fle_else.23194:
	addi	x5, x0, 1	# 125
fle_cont.23193:
fle_cont.23191:
	addi	x6, x0, 0	# 1927
	beq		x5, x6, beq_cont.23195	# 1927
	mul		x5, x30, x6	# 1928
	addi	x5, x5, 50564	# 1928
	lw		x5, 0(x5)	# 1928
	mul		x5, x30, x5	# 1928
	addi	x5, x5, 50048	# 1928
	lw		x5, 0(x5)	# 1928
	lw		x7, -48(x2)	# 639
	lw		x7, 0(x7)	# 639
	lw		x8, 4(x5)	# 353
	lw		x9, -44(x2)	# 1693
	sw		x6, -56(x2)	# 1693
	sw		x5, -60(x2)	# 1693
	beq		x8, x9, beq.23197	# 1693
	lw		x7, -16(x2)	# 1695
	beq		x8, x7, beq.23199	# 1695
	lw		x29, -36(x2)	# 1698
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 1698
	addi	x2, x2, -68	# 1698
	lw		x31, 0(x29)	# 1698
	jalr	x1, x31, 0	# 1698
	addi	x2, x2, 68	# 1698
	lw		x1, -64(x2)	# 1698
	jal		x0, beq_cont.23198	# 1695
beq.23199:
	lw		x8, 16(x5)	# 391
	mul		x10, x30, x4	# 396
	add		x8, x8, x10	# 396
	flw		f1, 0(x8)	# 396
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x4	# 1663
	addi	x8, x8, 50568	# 1663
	fsw		f1, 0(x8)	# 1663
	lw		x8, 16(x5)	# 401
	mul		x10, x30, x9	# 406
	add		x8, x8, x10	# 406
	flw		f1, 0(x8)	# 406
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x9	# 1664
	addi	x8, x8, 50568	# 1664
	fsw		f1, 0(x8)	# 1664
	lw		x8, 16(x5)	# 411
	mul		x10, x30, x7	# 416
	add		x8, x8, x10	# 416
	flw		f1, 0(x8)	# 416
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x7	# 1665
	addi	x8, x8, 50568	# 1665
	fsw		f1, 0(x8)	# 1665
beq_cont.23198:
	jal		x0, beq_cont.23196	# 1693
beq.23197:
	mul		x8, x30, x4	# 1654
	addi	x8, x8, 50544	# 1654
	lw		x8, 0(x8)	# 1654
	mul		x10, x30, x4	# 247
	addi	x10, x10, 50568	# 247
	flw		f1, -40(x2)	# 247
	fsw		f1, 0(x10)	# 247
	mul		x10, x30, x9	# 248
	addi	x10, x10, 50568	# 248
	fsw		f1, 0(x10)	# 248
	lw		x10, -16(x2)	# 249
	mul		x11, x30, x10	# 249
	addi	x11, x11, 50568	# 249
	fsw		f1, 0(x11)	# 249
	sub		x11, x8, x9	# 1657
	sub		x8, x8, x9	# 1657
	mul		x8, x30, x8	# 1657
	add		x7, x7, x8	# 1657
	flw		f2, 0(x7)	# 1657
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.23201	# 120
	fadd	f2, f0, f1	# 212
	jal		x0, feq_cont.23200	# 120
feq_else.23201:
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.23203	# 121
	fadd	f2, f0, f18	# 214
	jal		x0, fle_cont.23202	# 121
fle_else.23203:
	fadd	f2, f0, f16	# 213
fle_cont.23202:
feq_cont.23200:
	fsub	f2, f0, f2	# 123
	mul		x7, x30, x11	# 1657
	addi	x7, x7, 50568	# 1657
	fsw		f2, 0(x7)	# 1657
beq_cont.23196:
	addi	x5, x0, 50552	# 1930
	lw		x4, -60(x2)	# 1930
	lw		x29, -32(x2)	# 1930
	sw		x1, -64(x2)	# 1930
	addi	x2, x2, -68	# 1930
	lw		x31, 0(x29)	# 1930
	jalr	x1, x31, 0	# 1930
	addi	x2, x2, 68	# 1930
	lw		x1, -64(x2)	# 1930
	addi	x4, x0, 0	# 1933
	addi	x5, x0, 0	# 1933
	mul		x5, x30, x5	# 1933
	addi	x5, x5, 50536	# 1933
	lw		x5, 0(x5)	# 1933
	lw		x29, -28(x2)	# 1933
	sw		x1, -64(x2)	# 1933
	addi	x2, x2, -68	# 1933
	lw		x31, 0(x29)	# 1933
	jalr	x1, x31, 0	# 1933
	addi	x2, x2, 68	# 1933
	lw		x1, -64(x2)	# 1933
	lw		x5, -56(x2)	# 1933
	beq		x4, x5, beq.23205	# 1933
	jal		x0, beq_cont.23204	# 1933
beq.23205:
	lw		x4, -52(x2)	# 292
	mul		x5, x30, x4	# 292
	addi	x5, x5, 50568	# 292
	flw		f1, 0(x5)	# 292
	mul		x5, x30, x4	# 292
	addi	x5, x5, 50312	# 292
	flw		f2, 0(x5)	# 292
	fmul	f1, f1, f2	# 292
	lw		x5, -44(x2)	# 292
	mul		x6, x30, x5	# 292
	addi	x6, x6, 50568	# 292
	flw		f2, 0(x6)	# 292
	mul		x6, x30, x5	# 292
	addi	x6, x6, 50312	# 292
	flw		f3, 0(x6)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	lw		x6, -16(x2)	# 292
	mul		x7, x30, x6	# 292
	addi	x7, x7, 50568	# 292
	flw		f2, 0(x7)	# 292
	mul		x7, x30, x6	# 292
	addi	x7, x7, 50312	# 292
	flw		f3, 0(x7)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	fsub	f1, f0, f1	# 123
	flw		f2, -40(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_cont.23206	# 121
	fadd	f1, f0, f0	# 1935
fle_cont.23206:
	flw		f2, -24(x2)	# 1936
	fmul	f1, f2, f1	# 1936
	lw		x7, -60(x2)	# 461
	lw		x7, 28(x7)	# 461
	mul		x8, x30, x4	# 466
	add		x7, x7, x8	# 466
	flw		f2, 0(x7)	# 466
	fmul	f1, f1, f2	# 1936
	mul		x7, x30, x4	# 302
	addi	x7, x7, 50592	# 302
	flw		f2, 0(x7)	# 302
	mul		x7, x30, x4	# 302
	addi	x7, x7, 50580	# 302
	flw		f3, 0(x7)	# 302
	fmul	f3, f1, f3	# 302
	fadd	f2, f2, f3	# 302
	mul		x4, x30, x4	# 302
	addi	x4, x4, 50592	# 302
	fsw		f2, 0(x4)	# 302
	mul		x4, x30, x5	# 303
	addi	x4, x4, 50592	# 303
	flw		f2, 0(x4)	# 303
	mul		x4, x30, x5	# 303
	addi	x4, x4, 50580	# 303
	flw		f3, 0(x4)	# 303
	fmul	f3, f1, f3	# 303
	fadd	f2, f2, f3	# 303
	mul		x4, x30, x5	# 303
	addi	x4, x4, 50592	# 303
	fsw		f2, 0(x4)	# 303
	mul		x4, x30, x6	# 304
	addi	x4, x4, 50592	# 304
	flw		f2, 0(x4)	# 304
	mul		x4, x30, x6	# 304
	addi	x4, x4, 50580	# 304
	flw		f3, 0(x4)	# 304
	fmul	f1, f1, f3	# 304
	fadd	f1, f2, f1	# 304
	mul		x4, x30, x6	# 304
	addi	x4, x4, 50592	# 304
	fsw		f1, 0(x4)	# 304
beq_cont.23204:
beq_cont.23195:
	jal		x0, fle_cont.23189	# 122
fle_else.23190:
	addi	x15, x7, 1	# 1950
	mul		x15, x30, x15	# 1950
	add		x15, x4, x15	# 1950
	lw		x15, 0(x15)	# 1950
	lui		x16, %hi(l.19695)	# 1950
	ori		x16, x0, %lo(l.19695)	# 1950
	flw		f4, 0(x16)	# 1950
	fdiv	f3, f3, f4	# 1950
	mul		x16, x30, x13	# 1634
	addi	x16, x16, 50548	# 1634
	fsw		f1, 0(x16)	# 1634
	mul		x16, x30, x13	# 1635
	addi	x16, x16, 50536	# 1635
	lw		x16, 0(x16)	# 1635
	fsw		f3, -64(x2)	# 1635
	sw		x10, -28(x2)	# 1635
	sw		x8, -32(x2)	# 1635
	sw		x11, -36(x2)	# 1635
	fsw		f2, -40(x2)	# 1635
	sw		x14, -44(x2)	# 1635
	sw		x15, -68(x2)	# 1635
	sw		x13, -52(x2)	# 1635
	addi	x6, x15, 0
	addi	x5, x16, 0
	addi	x4, x13, 0
	addi	x29, x9, 0
	sw		x1, -72(x2)	# 1635
	addi	x2, x2, -76	# 1635
	lw		x31, 0(x29)	# 1635
	jalr	x1, x31, 0	# 1635
	addi	x2, x2, 76	# 1635
	lw		x1, -72(x2)	# 1635
	lw		x4, -52(x2)	# 1636
	mul		x5, x30, x4	# 1636
	addi	x5, x5, 50548	# 1636
	flw		f1, 0(x5)	# 1636
	fadd	f2, f0, f19	# 1638
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.23208	# 125
	addi	x5, x0, 0	# 1640
	jal		x0, fle_cont.23207	# 125
fle_else.23208:
	fadd	f2, f0, f21	# 1639
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.23210	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.23209	# 125
fle_else.23210:
	addi	x5, x0, 1	# 125
fle_cont.23209:
fle_cont.23207:
	addi	x6, x0, 0	# 1927
	beq		x5, x6, beq_cont.23211	# 1927
	mul		x5, x30, x6	# 1928
	addi	x5, x5, 50564	# 1928
	lw		x5, 0(x5)	# 1928
	mul		x5, x30, x5	# 1928
	addi	x5, x5, 50048	# 1928
	lw		x5, 0(x5)	# 1928
	lw		x7, -68(x2)	# 639
	lw		x7, 0(x7)	# 639
	lw		x8, 4(x5)	# 353
	lw		x9, -44(x2)	# 1693
	sw		x6, -72(x2)	# 1693
	sw		x5, -76(x2)	# 1693
	beq		x8, x9, beq.23213	# 1693
	lw		x7, -16(x2)	# 1695
	beq		x8, x7, beq.23215	# 1695
	lw		x29, -36(x2)	# 1698
	addi	x4, x5, 0
	sw		x1, -80(x2)	# 1698
	addi	x2, x2, -84	# 1698
	lw		x31, 0(x29)	# 1698
	jalr	x1, x31, 0	# 1698
	addi	x2, x2, 84	# 1698
	lw		x1, -80(x2)	# 1698
	jal		x0, beq_cont.23214	# 1695
beq.23215:
	lw		x8, 16(x5)	# 391
	mul		x10, x30, x4	# 396
	add		x8, x8, x10	# 396
	flw		f1, 0(x8)	# 396
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x4	# 1663
	addi	x8, x8, 50568	# 1663
	fsw		f1, 0(x8)	# 1663
	lw		x8, 16(x5)	# 401
	mul		x10, x30, x9	# 406
	add		x8, x8, x10	# 406
	flw		f1, 0(x8)	# 406
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x9	# 1664
	addi	x8, x8, 50568	# 1664
	fsw		f1, 0(x8)	# 1664
	lw		x8, 16(x5)	# 411
	mul		x10, x30, x7	# 416
	add		x8, x8, x10	# 416
	flw		f1, 0(x8)	# 416
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x7	# 1665
	addi	x8, x8, 50568	# 1665
	fsw		f1, 0(x8)	# 1665
beq_cont.23214:
	jal		x0, beq_cont.23212	# 1693
beq.23213:
	mul		x8, x30, x4	# 1654
	addi	x8, x8, 50544	# 1654
	lw		x8, 0(x8)	# 1654
	mul		x10, x30, x4	# 247
	addi	x10, x10, 50568	# 247
	flw		f1, -40(x2)	# 247
	fsw		f1, 0(x10)	# 247
	mul		x10, x30, x9	# 248
	addi	x10, x10, 50568	# 248
	fsw		f1, 0(x10)	# 248
	lw		x10, -16(x2)	# 249
	mul		x11, x30, x10	# 249
	addi	x11, x11, 50568	# 249
	fsw		f1, 0(x11)	# 249
	sub		x11, x8, x9	# 1657
	sub		x8, x8, x9	# 1657
	mul		x8, x30, x8	# 1657
	add		x7, x7, x8	# 1657
	flw		f2, 0(x7)	# 1657
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.23217	# 120
	fadd	f2, f0, f1	# 212
	jal		x0, feq_cont.23216	# 120
feq_else.23217:
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.23219	# 121
	fadd	f2, f0, f18	# 214
	jal		x0, fle_cont.23218	# 121
fle_else.23219:
	fadd	f2, f0, f16	# 213
fle_cont.23218:
feq_cont.23216:
	fsub	f2, f0, f2	# 123
	mul		x7, x30, x11	# 1657
	addi	x7, x7, 50568	# 1657
	fsw		f2, 0(x7)	# 1657
beq_cont.23212:
	addi	x5, x0, 50552	# 1930
	lw		x4, -76(x2)	# 1930
	lw		x29, -32(x2)	# 1930
	sw		x1, -80(x2)	# 1930
	addi	x2, x2, -84	# 1930
	lw		x31, 0(x29)	# 1930
	jalr	x1, x31, 0	# 1930
	addi	x2, x2, 84	# 1930
	lw		x1, -80(x2)	# 1930
	addi	x4, x0, 0	# 1933
	addi	x5, x0, 0	# 1933
	mul		x5, x30, x5	# 1933
	addi	x5, x5, 50536	# 1933
	lw		x5, 0(x5)	# 1933
	lw		x29, -28(x2)	# 1933
	sw		x1, -80(x2)	# 1933
	addi	x2, x2, -84	# 1933
	lw		x31, 0(x29)	# 1933
	jalr	x1, x31, 0	# 1933
	addi	x2, x2, 84	# 1933
	lw		x1, -80(x2)	# 1933
	lw		x5, -72(x2)	# 1933
	beq		x4, x5, beq.23221	# 1933
	jal		x0, beq_cont.23220	# 1933
beq.23221:
	lw		x4, -52(x2)	# 292
	mul		x5, x30, x4	# 292
	addi	x5, x5, 50568	# 292
	flw		f1, 0(x5)	# 292
	mul		x5, x30, x4	# 292
	addi	x5, x5, 50312	# 292
	flw		f2, 0(x5)	# 292
	fmul	f1, f1, f2	# 292
	lw		x5, -44(x2)	# 292
	mul		x6, x30, x5	# 292
	addi	x6, x6, 50568	# 292
	flw		f2, 0(x6)	# 292
	mul		x6, x30, x5	# 292
	addi	x6, x6, 50312	# 292
	flw		f3, 0(x6)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	lw		x6, -16(x2)	# 292
	mul		x7, x30, x6	# 292
	addi	x7, x7, 50568	# 292
	flw		f2, 0(x7)	# 292
	mul		x7, x30, x6	# 292
	addi	x7, x7, 50312	# 292
	flw		f3, 0(x7)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	fsub	f1, f0, f1	# 123
	flw		f2, -40(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_cont.23222	# 121
	fadd	f1, f0, f0	# 1935
fle_cont.23222:
	flw		f2, -64(x2)	# 1936
	fmul	f1, f2, f1	# 1936
	lw		x7, -76(x2)	# 461
	lw		x7, 28(x7)	# 461
	mul		x8, x30, x4	# 466
	add		x7, x7, x8	# 466
	flw		f2, 0(x7)	# 466
	fmul	f1, f1, f2	# 1936
	mul		x7, x30, x4	# 302
	addi	x7, x7, 50592	# 302
	flw		f2, 0(x7)	# 302
	mul		x7, x30, x4	# 302
	addi	x7, x7, 50580	# 302
	flw		f3, 0(x7)	# 302
	fmul	f3, f1, f3	# 302
	fadd	f2, f2, f3	# 302
	mul		x4, x30, x4	# 302
	addi	x4, x4, 50592	# 302
	fsw		f2, 0(x4)	# 302
	mul		x4, x30, x5	# 303
	addi	x4, x4, 50592	# 303
	flw		f2, 0(x4)	# 303
	mul		x4, x30, x5	# 303
	addi	x4, x4, 50580	# 303
	flw		f3, 0(x4)	# 303
	fmul	f3, f1, f3	# 303
	fadd	f2, f2, f3	# 303
	mul		x4, x30, x5	# 303
	addi	x4, x4, 50592	# 303
	fsw		f2, 0(x4)	# 303
	mul		x4, x30, x6	# 304
	addi	x4, x4, 50592	# 304
	flw		f2, 0(x4)	# 304
	mul		x4, x30, x6	# 304
	addi	x4, x4, 50580	# 304
	flw		f3, 0(x4)	# 304
	fmul	f1, f1, f3	# 304
	fadd	f1, f2, f1	# 304
	mul		x4, x30, x6	# 304
	addi	x4, x4, 50592	# 304
	fsw		f1, 0(x4)	# 304
beq_cont.23220:
beq_cont.23211:
fle_cont.23189:
	lw		x4, -16(x2)	# 1954
	lw		x5, -20(x2)	# 1954
	sub		x7, x5, x4	# 1954
	lw		x4, -8(x2)	# 1954
	lw		x5, -4(x2)	# 1954
	lw		x6, 0(x2)	# 1954
	lw		x29, -12(x2)	# 1954
	lw		x31, 0(x29)	# 1954
	jalr	x0, x31, 0	# 1954
do_without_neighbors.2902.12436:
	lw		x6, 24(x29)	# 2035
	lw		x7, 20(x29)	# 2035
	lw		x8, 16(x29)	# 2035
	lw		x9, 12(x29)	# 2035
	lw		x10, 8(x29)	# 2035
	lw		x11, 4(x29)	# 2035
	addi	x12, x0, 4	# 2035
	ble		x5, x12, ble.23223	# 2035
	jalr	x0, x1, 0	# 2045
ble.23223:
	lw		x12, 8(x4)	# 577
	mul		x13, x30, x5	# 2038
	add		x12, x12, x13	# 2038
	lw		x12, 0(x12)	# 2038
	ble		x10, x12, ble.23225	# 2038
	jalr	x0, x1, 0	# 2044
ble.23225:
	lw		x12, 12(x4)	# 584
	mul		x13, x30, x5	# 2040
	add		x12, x12, x13	# 2040
	lw		x12, 0(x12)	# 2040
	sw		x4, 0(x2)	# 2040
	sw		x29, -4(x2)	# 2040
	sw		x11, -8(x2)	# 2040
	sw		x5, -12(x2)	# 2040
	beq		x12, x10, beq_cont.23227	# 2040
	lw		x12, 20(x4)	# 598
	lw		x13, 28(x4)	# 628
	lw		x14, 4(x4)	# 569
	lw		x15, 16(x4)	# 591
	mul		x16, x30, x5	# 2002
	add		x12, x12, x16	# 2002
	lw		x12, 0(x12)	# 2002
	mul		x16, x30, x10	# 259
	add		x16, x12, x16	# 259
	flw		f1, 0(x16)	# 259
	mul		x16, x30, x10	# 259
	addi	x16, x16, 50592	# 259
	fsw		f1, 0(x16)	# 259
	mul		x16, x30, x11	# 260
	add		x16, x12, x16	# 260
	flw		f1, 0(x16)	# 260
	mul		x16, x30, x11	# 260
	addi	x16, x16, 50592	# 260
	fsw		f1, 0(x16)	# 260
	mul		x16, x30, x8	# 261
	add		x12, x12, x16	# 261
	flw		f1, 0(x12)	# 261
	mul		x12, x30, x8	# 261
	addi	x12, x12, 50592	# 261
	fsw		f1, 0(x12)	# 261
	lw		x12, 24(x4)	# 614
	mul		x16, x30, x10	# 616
	add		x12, x12, x16	# 616
	lw		x12, 0(x12)	# 616
	mul		x16, x30, x5	# 2005
	add		x13, x13, x16	# 2005
	lw		x13, 0(x13)	# 2005
	mul		x16, x30, x5	# 2006
	add		x14, x14, x16	# 2006
	lw		x14, 0(x14)	# 2006
	sw		x15, -16(x2)	# 1971
	sw		x9, -20(x2)	# 1971
	sw		x13, -24(x2)	# 1971
	sw		x7, -28(x2)	# 1971
	sw		x6, -32(x2)	# 1971
	sw		x8, -36(x2)	# 1971
	sw		x14, -40(x2)	# 1971
	sw		x10, -44(x2)	# 1971
	sw		x12, -48(x2)	# 1971
	beq		x12, x10, beq_cont.23228	# 1971
	addi	x16, x0, 0	# 1972
	mul		x16, x30, x16	# 1972
	addi	x16, x16, 50716	# 1972
	lw		x16, 0(x16)	# 1972
	mul		x17, x30, x10	# 259
	add		x17, x14, x17	# 259
	flw		f1, 0(x17)	# 259
	mul		x17, x30, x10	# 259
	addi	x17, x17, 50648	# 259
	fsw		f1, 0(x17)	# 259
	mul		x17, x30, x11	# 260
	add		x17, x14, x17	# 260
	flw		f1, 0(x17)	# 260
	mul		x17, x30, x11	# 260
	addi	x17, x17, 50648	# 260
	fsw		f1, 0(x17)	# 260
	mul		x17, x30, x8	# 261
	add		x17, x14, x17	# 261
	flw		f1, 0(x17)	# 261
	mul		x17, x30, x8	# 261
	addi	x17, x17, 50648	# 261
	fsw		f1, 0(x17)	# 261
	mul		x17, x30, x10	# 1315
	addi	x17, x17, 50000	# 1315
	lw		x17, 0(x17)	# 1315
	sub		x17, x17, x11	# 1315
	sw		x16, -52(x2)	# 1315
	addi	x5, x17, 0
	addi	x4, x14, 0
	addi	x29, x6, 0
	sw		x1, -56(x2)	# 1315
	addi	x2, x2, -60	# 1315
	lw		x31, 0(x29)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 60	# 1315
	lw		x1, -56(x2)	# 1315
	addi	x7, x0, 118	# 1964
	lw		x4, -52(x2)	# 1964
	lw		x5, -24(x2)	# 1964
	lw		x6, -40(x2)	# 1964
	lw		x29, -28(x2)	# 1964
	sw		x1, -56(x2)	# 1964
	addi	x2, x2, -60	# 1964
	lw		x31, 0(x29)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 60	# 1964
	lw		x1, -56(x2)	# 1964
beq_cont.23228:
	lw		x4, -8(x2)	# 1975
	lw		x5, -48(x2)	# 1975
	beq		x5, x4, beq_cont.23229	# 1975
	addi	x6, x0, 1	# 1976
	mul		x6, x30, x6	# 1976
	addi	x6, x6, 50716	# 1976
	lw		x6, 0(x6)	# 1976
	lw		x7, -44(x2)	# 259
	mul		x8, x30, x7	# 259
	lw		x9, -40(x2)	# 259
	add		x8, x9, x8	# 259
	flw		f1, 0(x8)	# 259
	mul		x8, x30, x7	# 259
	addi	x8, x8, 50648	# 259
	fsw		f1, 0(x8)	# 259
	mul		x8, x30, x4	# 260
	add		x8, x9, x8	# 260
	flw		f1, 0(x8)	# 260
	mul		x8, x30, x4	# 260
	addi	x8, x8, 50648	# 260
	fsw		f1, 0(x8)	# 260
	lw		x8, -36(x2)	# 261
	mul		x10, x30, x8	# 261
	add		x10, x9, x10	# 261
	flw		f1, 0(x10)	# 261
	mul		x10, x30, x8	# 261
	addi	x10, x10, 50648	# 261
	fsw		f1, 0(x10)	# 261
	mul		x10, x30, x7	# 1315
	addi	x10, x10, 50000	# 1315
	lw		x10, 0(x10)	# 1315
	sub		x10, x10, x4	# 1315
	lw		x29, -32(x2)	# 1315
	sw		x6, -56(x2)	# 1315
	addi	x5, x10, 0
	addi	x4, x9, 0
	sw		x1, -60(x2)	# 1315
	addi	x2, x2, -64	# 1315
	lw		x31, 0(x29)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 64	# 1315
	lw		x1, -60(x2)	# 1315
	addi	x7, x0, 118	# 1964
	lw		x4, -56(x2)	# 1964
	lw		x5, -24(x2)	# 1964
	lw		x6, -40(x2)	# 1964
	lw		x29, -28(x2)	# 1964
	sw		x1, -60(x2)	# 1964
	addi	x2, x2, -64	# 1964
	lw		x31, 0(x29)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 64	# 1964
	lw		x1, -60(x2)	# 1964
beq_cont.23229:
	lw		x4, -36(x2)	# 1979
	lw		x5, -48(x2)	# 1979
	beq		x5, x4, beq_cont.23230	# 1979
	addi	x6, x0, 2	# 1980
	mul		x6, x30, x6	# 1980
	addi	x6, x6, 50716	# 1980
	lw		x6, 0(x6)	# 1980
	lw		x7, -44(x2)	# 259
	mul		x8, x30, x7	# 259
	lw		x9, -40(x2)	# 259
	add		x8, x9, x8	# 259
	flw		f1, 0(x8)	# 259
	mul		x8, x30, x7	# 259
	addi	x8, x8, 50648	# 259
	fsw		f1, 0(x8)	# 259
	lw		x8, -8(x2)	# 260
	mul		x10, x30, x8	# 260
	add		x10, x9, x10	# 260
	flw		f1, 0(x10)	# 260
	mul		x10, x30, x8	# 260
	addi	x10, x10, 50648	# 260
	fsw		f1, 0(x10)	# 260
	mul		x10, x30, x4	# 261
	add		x10, x9, x10	# 261
	flw		f1, 0(x10)	# 261
	mul		x10, x30, x4	# 261
	addi	x10, x10, 50648	# 261
	fsw		f1, 0(x10)	# 261
	mul		x10, x30, x7	# 1315
	addi	x10, x10, 50000	# 1315
	lw		x10, 0(x10)	# 1315
	sub		x10, x10, x8	# 1315
	lw		x29, -32(x2)	# 1315
	sw		x6, -60(x2)	# 1315
	addi	x5, x10, 0
	addi	x4, x9, 0
	sw		x1, -64(x2)	# 1315
	addi	x2, x2, -68	# 1315
	lw		x31, 0(x29)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 68	# 1315
	lw		x1, -64(x2)	# 1315
	addi	x7, x0, 118	# 1964
	lw		x4, -60(x2)	# 1964
	lw		x5, -24(x2)	# 1964
	lw		x6, -40(x2)	# 1964
	lw		x29, -28(x2)	# 1964
	sw		x1, -64(x2)	# 1964
	addi	x2, x2, -68	# 1964
	lw		x31, 0(x29)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 68	# 1964
	lw		x1, -64(x2)	# 1964
beq_cont.23230:
	lw		x4, -20(x2)	# 1983
	lw		x5, -48(x2)	# 1983
	beq		x5, x4, beq_cont.23231	# 1983
	addi	x4, x0, 3	# 1984
	mul		x4, x30, x4	# 1984
	addi	x4, x4, 50716	# 1984
	lw		x4, 0(x4)	# 1984
	lw		x6, -44(x2)	# 259
	mul		x7, x30, x6	# 259
	lw		x8, -40(x2)	# 259
	add		x7, x8, x7	# 259
	flw		f1, 0(x7)	# 259
	mul		x7, x30, x6	# 259
	addi	x7, x7, 50648	# 259
	fsw		f1, 0(x7)	# 259
	lw		x7, -8(x2)	# 260
	mul		x9, x30, x7	# 260
	add		x9, x8, x9	# 260
	flw		f1, 0(x9)	# 260
	mul		x9, x30, x7	# 260
	addi	x9, x9, 50648	# 260
	fsw		f1, 0(x9)	# 260
	lw		x9, -36(x2)	# 261
	mul		x10, x30, x9	# 261
	add		x10, x8, x10	# 261
	flw		f1, 0(x10)	# 261
	mul		x10, x30, x9	# 261
	addi	x10, x10, 50648	# 261
	fsw		f1, 0(x10)	# 261
	mul		x10, x30, x6	# 1315
	addi	x10, x10, 50000	# 1315
	lw		x10, 0(x10)	# 1315
	sub		x10, x10, x7	# 1315
	lw		x29, -32(x2)	# 1315
	sw		x4, -64(x2)	# 1315
	addi	x5, x10, 0
	addi	x4, x8, 0
	sw		x1, -68(x2)	# 1315
	addi	x2, x2, -72	# 1315
	lw		x31, 0(x29)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 72	# 1315
	lw		x1, -68(x2)	# 1315
	addi	x7, x0, 118	# 1964
	lw		x4, -64(x2)	# 1964
	lw		x5, -24(x2)	# 1964
	lw		x6, -40(x2)	# 1964
	lw		x29, -28(x2)	# 1964
	sw		x1, -68(x2)	# 1964
	addi	x2, x2, -72	# 1964
	lw		x31, 0(x29)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 72	# 1964
	lw		x1, -68(x2)	# 1964
beq_cont.23231:
	addi	x4, x0, 4	# 1987
	lw		x5, -48(x2)	# 1987
	beq		x5, x4, beq_cont.23232	# 1987
	mul		x4, x30, x4	# 1988
	addi	x4, x4, 50716	# 1988
	lw		x4, 0(x4)	# 1988
	lw		x5, -44(x2)	# 259
	mul		x6, x30, x5	# 259
	lw		x7, -40(x2)	# 259
	add		x6, x7, x6	# 259
	flw		f1, 0(x6)	# 259
	mul		x6, x30, x5	# 259
	addi	x6, x6, 50648	# 259
	fsw		f1, 0(x6)	# 259
	lw		x6, -8(x2)	# 260
	mul		x8, x30, x6	# 260
	add		x8, x7, x8	# 260
	flw		f1, 0(x8)	# 260
	mul		x8, x30, x6	# 260
	addi	x8, x8, 50648	# 260
	fsw		f1, 0(x8)	# 260
	lw		x8, -36(x2)	# 261
	mul		x9, x30, x8	# 261
	add		x9, x7, x9	# 261
	flw		f1, 0(x9)	# 261
	mul		x9, x30, x8	# 261
	addi	x9, x9, 50648	# 261
	fsw		f1, 0(x9)	# 261
	mul		x9, x30, x5	# 1315
	addi	x9, x9, 50000	# 1315
	lw		x9, 0(x9)	# 1315
	sub		x9, x9, x6	# 1315
	lw		x29, -32(x2)	# 1315
	sw		x4, -68(x2)	# 1315
	addi	x5, x9, 0
	addi	x4, x7, 0
	sw		x1, -72(x2)	# 1315
	addi	x2, x2, -76	# 1315
	lw		x31, 0(x29)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 76	# 1315
	lw		x1, -72(x2)	# 1315
	addi	x7, x0, 118	# 1964
	lw		x4, -68(x2)	# 1964
	lw		x5, -24(x2)	# 1964
	lw		x6, -40(x2)	# 1964
	lw		x29, -28(x2)	# 1964
	sw		x1, -72(x2)	# 1964
	addi	x2, x2, -76	# 1964
	lw		x31, 0(x29)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 76	# 1964
	lw		x1, -72(x2)	# 1964
beq_cont.23232:
	lw		x4, -12(x2)	# 2007
	mul		x5, x30, x4	# 2007
	lw		x6, -16(x2)	# 2007
	add		x5, x6, x5	# 2007
	lw		x5, 0(x5)	# 2007
	lw		x6, -44(x2)	# 332
	mul		x7, x30, x6	# 332
	addi	x7, x7, 50604	# 332
	flw		f1, 0(x7)	# 332
	mul		x7, x30, x6	# 332
	add		x7, x5, x7	# 332
	flw		f2, 0(x7)	# 332
	mul		x7, x30, x6	# 332
	addi	x7, x7, 50592	# 332
	flw		f3, 0(x7)	# 332
	fmul	f2, f2, f3	# 332
	fadd	f1, f1, f2	# 332
	mul		x6, x30, x6	# 332
	addi	x6, x6, 50604	# 332
	fsw		f1, 0(x6)	# 332
	lw		x6, -8(x2)	# 333
	mul		x7, x30, x6	# 333
	addi	x7, x7, 50604	# 333
	flw		f1, 0(x7)	# 333
	mul		x7, x30, x6	# 333
	add		x7, x5, x7	# 333
	flw		f2, 0(x7)	# 333
	mul		x7, x30, x6	# 333
	addi	x7, x7, 50592	# 333
	flw		f3, 0(x7)	# 333
	fmul	f2, f2, f3	# 333
	fadd	f1, f1, f2	# 333
	mul		x7, x30, x6	# 333
	addi	x7, x7, 50604	# 333
	fsw		f1, 0(x7)	# 333
	lw		x7, -36(x2)	# 334
	mul		x8, x30, x7	# 334
	addi	x8, x8, 50604	# 334
	flw		f1, 0(x8)	# 334
	mul		x8, x30, x7	# 334
	add		x5, x5, x8	# 334
	flw		f2, 0(x5)	# 334
	mul		x5, x30, x7	# 334
	addi	x5, x5, 50592	# 334
	flw		f3, 0(x5)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	mul		x5, x30, x7	# 334
	addi	x5, x5, 50604	# 334
	fsw		f1, 0(x5)	# 334
beq_cont.23227:
	lw		x4, -8(x2)	# 2043
	lw		x5, -12(x2)	# 2043
	add		x5, x5, x4	# 2043
	lw		x4, 0(x2)	# 2043
	lw		x29, -4(x2)	# 2043
	lw		x31, 0(x29)	# 2043
	jalr	x0, x31, 0	# 2043
try_exploit_neighbors.2918.12439:
	lw		x10, 16(x29)	# 2087
	lw		x11, 12(x29)	# 2087
	lw		x12, 8(x29)	# 2087
	lw		x13, 4(x29)	# 2087
	mul		x14, x30, x4	# 2087
	add		x14, x7, x14	# 2087
	lw		x14, 0(x14)	# 2087
	addi	x15, x0, 4	# 2088
	ble		x9, x15, ble.23233	# 2088
	jalr	x0, x1, 0	# 2107
ble.23233:
	lw		x15, 8(x14)	# 577
	mul		x16, x30, x9	# 2063
	add		x15, x15, x16	# 2063
	lw		x15, 0(x15)	# 2063
	ble		x12, x15, ble.23235	# 2091
	jalr	x0, x1, 0	# 2106
ble.23235:
	lw		x15, 8(x14)	# 577
	mul		x16, x30, x9	# 2063
	add		x15, x15, x16	# 2063
	lw		x15, 0(x15)	# 2063
	mul		x16, x30, x4	# 2071
	add		x16, x6, x16	# 2071
	lw		x16, 0(x16)	# 2071
	lw		x16, 8(x16)	# 577
	mul		x17, x30, x9	# 2063
	add		x16, x16, x17	# 2063
	lw		x16, 0(x16)	# 2063
	beq		x16, x15, beq.23238	# 2071
	addi	x15, x0, 0	# 2079
	jal		x0, beq_cont.23237	# 2071
beq.23238:
	mul		x16, x30, x4	# 2072
	add		x16, x8, x16	# 2072
	lw		x16, 0(x16)	# 2072
	lw		x16, 8(x16)	# 577
	mul		x17, x30, x9	# 2063
	add		x16, x16, x17	# 2063
	lw		x16, 0(x16)	# 2063
	beq		x16, x15, beq.23240	# 2072
	addi	x15, x0, 0	# 2078
	jal		x0, beq_cont.23239	# 2072
beq.23240:
	sub		x16, x4, x13	# 2073
	mul		x16, x30, x16	# 2073
	add		x16, x7, x16	# 2073
	lw		x16, 0(x16)	# 2073
	lw		x16, 8(x16)	# 577
	mul		x17, x30, x9	# 2063
	add		x16, x16, x17	# 2063
	lw		x16, 0(x16)	# 2063
	beq		x16, x15, beq.23242	# 2073
	addi	x15, x0, 0	# 2077
	jal		x0, beq_cont.23241	# 2073
beq.23242:
	add		x16, x4, x13	# 2074
	mul		x16, x30, x16	# 2074
	add		x16, x7, x16	# 2074
	lw		x16, 0(x16)	# 2074
	lw		x16, 8(x16)	# 577
	mul		x17, x30, x9	# 2063
	add		x16, x16, x17	# 2063
	lw		x16, 0(x16)	# 2063
	beq		x16, x15, beq.23244	# 2074
	addi	x15, x0, 0	# 2076
	jal		x0, beq_cont.23243	# 2074
beq.23244:
	addi	x15, x0, 1	# 2075
beq_cont.23243:
beq_cont.23241:
beq_cont.23239:
beq_cont.23237:
	beq		x15, x12, beq.23245	# 2093
	lw		x10, 12(x14)	# 584
	mul		x14, x30, x9	# 2097
	add		x10, x10, x14	# 2097
	lw		x10, 0(x10)	# 2097
	beq		x10, x12, beq_cont.23246	# 2097
	mul		x10, x30, x4	# 2016
	add		x10, x6, x10	# 2016
	lw		x10, 0(x10)	# 2016
	lw		x10, 20(x10)	# 598
	addi	x14, x0, 1	# 2017
	sub		x14, x4, x14	# 2017
	mul		x14, x30, x14	# 2017
	add		x14, x7, x14	# 2017
	lw		x14, 0(x14)	# 2017
	lw		x14, 20(x14)	# 598
	mul		x15, x30, x4	# 2018
	add		x15, x7, x15	# 2018
	lw		x15, 0(x15)	# 2018
	lw		x15, 20(x15)	# 598
	addi	x16, x4, 1	# 2019
	mul		x16, x30, x16	# 2019
	add		x16, x7, x16	# 2019
	lw		x16, 0(x16)	# 2019
	lw		x16, 20(x16)	# 598
	mul		x17, x30, x4	# 2020
	add		x17, x8, x17	# 2020
	lw		x17, 0(x17)	# 2020
	lw		x17, 20(x17)	# 598
	mul		x18, x30, x9	# 2022
	add		x10, x10, x18	# 2022
	lw		x10, 0(x10)	# 2022
	mul		x18, x30, x12	# 259
	add		x18, x10, x18	# 259
	flw		f1, 0(x18)	# 259
	mul		x18, x30, x12	# 259
	addi	x18, x18, 50592	# 259
	fsw		f1, 0(x18)	# 259
	mul		x18, x30, x13	# 260
	add		x18, x10, x18	# 260
	flw		f1, 0(x18)	# 260
	mul		x18, x30, x13	# 260
	addi	x18, x18, 50592	# 260
	fsw		f1, 0(x18)	# 260
	mul		x18, x30, x11	# 261
	add		x10, x10, x18	# 261
	flw		f1, 0(x10)	# 261
	mul		x10, x30, x11	# 261
	addi	x10, x10, 50592	# 261
	fsw		f1, 0(x10)	# 261
	mul		x10, x30, x9	# 2023
	add		x10, x14, x10	# 2023
	lw		x10, 0(x10)	# 2023
	mul		x14, x30, x12	# 309
	addi	x14, x14, 50592	# 309
	flw		f1, 0(x14)	# 309
	mul		x14, x30, x12	# 309
	add		x14, x10, x14	# 309
	flw		f2, 0(x14)	# 309
	fadd	f1, f1, f2	# 309
	mul		x14, x30, x12	# 309
	addi	x14, x14, 50592	# 309
	fsw		f1, 0(x14)	# 309
	mul		x14, x30, x13	# 310
	addi	x14, x14, 50592	# 310
	flw		f1, 0(x14)	# 310
	mul		x14, x30, x13	# 310
	add		x14, x10, x14	# 310
	flw		f2, 0(x14)	# 310
	fadd	f1, f1, f2	# 310
	mul		x14, x30, x13	# 310
	addi	x14, x14, 50592	# 310
	fsw		f1, 0(x14)	# 310
	mul		x14, x30, x11	# 311
	addi	x14, x14, 50592	# 311
	flw		f1, 0(x14)	# 311
	mul		x14, x30, x11	# 311
	add		x10, x10, x14	# 311
	flw		f2, 0(x10)	# 311
	fadd	f1, f1, f2	# 311
	mul		x10, x30, x11	# 311
	addi	x10, x10, 50592	# 311
	fsw		f1, 0(x10)	# 311
	mul		x10, x30, x9	# 2024
	add		x10, x15, x10	# 2024
	lw		x10, 0(x10)	# 2024
	mul		x14, x30, x12	# 309
	addi	x14, x14, 50592	# 309
	flw		f1, 0(x14)	# 309
	mul		x14, x30, x12	# 309
	add		x14, x10, x14	# 309
	flw		f2, 0(x14)	# 309
	fadd	f1, f1, f2	# 309
	mul		x14, x30, x12	# 309
	addi	x14, x14, 50592	# 309
	fsw		f1, 0(x14)	# 309
	mul		x14, x30, x13	# 310
	addi	x14, x14, 50592	# 310
	flw		f1, 0(x14)	# 310
	mul		x14, x30, x13	# 310
	add		x14, x10, x14	# 310
	flw		f2, 0(x14)	# 310
	fadd	f1, f1, f2	# 310
	mul		x14, x30, x13	# 310
	addi	x14, x14, 50592	# 310
	fsw		f1, 0(x14)	# 310
	mul		x14, x30, x11	# 311
	addi	x14, x14, 50592	# 311
	flw		f1, 0(x14)	# 311
	mul		x14, x30, x11	# 311
	add		x10, x10, x14	# 311
	flw		f2, 0(x10)	# 311
	fadd	f1, f1, f2	# 311
	mul		x10, x30, x11	# 311
	addi	x10, x10, 50592	# 311
	fsw		f1, 0(x10)	# 311
	mul		x10, x30, x9	# 2025
	add		x10, x16, x10	# 2025
	lw		x10, 0(x10)	# 2025
	mul		x14, x30, x12	# 309
	addi	x14, x14, 50592	# 309
	flw		f1, 0(x14)	# 309
	mul		x14, x30, x12	# 309
	add		x14, x10, x14	# 309
	flw		f2, 0(x14)	# 309
	fadd	f1, f1, f2	# 309
	mul		x14, x30, x12	# 309
	addi	x14, x14, 50592	# 309
	fsw		f1, 0(x14)	# 309
	mul		x14, x30, x13	# 310
	addi	x14, x14, 50592	# 310
	flw		f1, 0(x14)	# 310
	mul		x14, x30, x13	# 310
	add		x14, x10, x14	# 310
	flw		f2, 0(x14)	# 310
	fadd	f1, f1, f2	# 310
	mul		x14, x30, x13	# 310
	addi	x14, x14, 50592	# 310
	fsw		f1, 0(x14)	# 310
	mul		x14, x30, x11	# 311
	addi	x14, x14, 50592	# 311
	flw		f1, 0(x14)	# 311
	mul		x14, x30, x11	# 311
	add		x10, x10, x14	# 311
	flw		f2, 0(x10)	# 311
	fadd	f1, f1, f2	# 311
	mul		x10, x30, x11	# 311
	addi	x10, x10, 50592	# 311
	fsw		f1, 0(x10)	# 311
	mul		x10, x30, x9	# 2026
	add		x10, x17, x10	# 2026
	lw		x10, 0(x10)	# 2026
	mul		x14, x30, x12	# 309
	addi	x14, x14, 50592	# 309
	flw		f1, 0(x14)	# 309
	mul		x14, x30, x12	# 309
	add		x14, x10, x14	# 309
	flw		f2, 0(x14)	# 309
	fadd	f1, f1, f2	# 309
	mul		x14, x30, x12	# 309
	addi	x14, x14, 50592	# 309
	fsw		f1, 0(x14)	# 309
	mul		x14, x30, x13	# 310
	addi	x14, x14, 50592	# 310
	flw		f1, 0(x14)	# 310
	mul		x14, x30, x13	# 310
	add		x14, x10, x14	# 310
	flw		f2, 0(x14)	# 310
	fadd	f1, f1, f2	# 310
	mul		x14, x30, x13	# 310
	addi	x14, x14, 50592	# 310
	fsw		f1, 0(x14)	# 310
	mul		x14, x30, x11	# 311
	addi	x14, x14, 50592	# 311
	flw		f1, 0(x14)	# 311
	mul		x14, x30, x11	# 311
	add		x10, x10, x14	# 311
	flw		f2, 0(x10)	# 311
	fadd	f1, f1, f2	# 311
	mul		x10, x30, x11	# 311
	addi	x10, x10, 50592	# 311
	fsw		f1, 0(x10)	# 311
	mul		x10, x30, x4	# 2028
	add		x10, x7, x10	# 2028
	lw		x10, 0(x10)	# 2028
	lw		x10, 16(x10)	# 591
	mul		x14, x30, x9	# 2029
	add		x10, x10, x14	# 2029
	lw		x10, 0(x10)	# 2029
	mul		x14, x30, x12	# 332
	addi	x14, x14, 50604	# 332
	flw		f1, 0(x14)	# 332
	mul		x14, x30, x12	# 332
	add		x14, x10, x14	# 332
	flw		f2, 0(x14)	# 332
	mul		x14, x30, x12	# 332
	addi	x14, x14, 50592	# 332
	flw		f3, 0(x14)	# 332
	fmul	f2, f2, f3	# 332
	fadd	f1, f1, f2	# 332
	mul		x12, x30, x12	# 332
	addi	x12, x12, 50604	# 332
	fsw		f1, 0(x12)	# 332
	mul		x12, x30, x13	# 333
	addi	x12, x12, 50604	# 333
	flw		f1, 0(x12)	# 333
	mul		x12, x30, x13	# 333
	add		x12, x10, x12	# 333
	flw		f2, 0(x12)	# 333
	mul		x12, x30, x13	# 333
	addi	x12, x12, 50592	# 333
	flw		f3, 0(x12)	# 333
	fmul	f2, f2, f3	# 333
	fadd	f1, f1, f2	# 333
	mul		x12, x30, x13	# 333
	addi	x12, x12, 50604	# 333
	fsw		f1, 0(x12)	# 333
	mul		x12, x30, x11	# 334
	addi	x12, x12, 50604	# 334
	flw		f1, 0(x12)	# 334
	mul		x12, x30, x11	# 334
	add		x10, x10, x12	# 334
	flw		f2, 0(x10)	# 334
	mul		x10, x30, x11	# 334
	addi	x10, x10, 50592	# 334
	flw		f3, 0(x10)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	mul		x10, x30, x11	# 334
	addi	x10, x10, 50604	# 334
	fsw		f1, 0(x10)	# 334
beq_cont.23246:
	add		x9, x9, x13	# 2102
	lw		x31, 0(x29)	# 2102
	jalr	x0, x31, 0	# 2102
beq.23245:
	addi	x5, x9, 0
	addi	x4, x14, 0
	addi	x29, x10, 0
	lw		x31, 0(x29)	# 2105
	jalr	x0, x31, 0	# 2105
pretrace_diffuse_rays.2933.12446:
	lw		x6, 20(x29)	# 2163
	lw		x7, 16(x29)	# 2163
	lw		x8, 12(x29)	# 2163
	lw		x9, 8(x29)	# 2163
	lw		x10, 4(x29)	# 2163
	addi	x11, x0, 4	# 2163
	ble		x5, x11, ble.23247	# 2163
	jalr	x0, x1, 0	# 2187
ble.23247:
	lw		x11, 8(x4)	# 577
	mul		x12, x30, x5	# 2063
	add		x11, x11, x12	# 2063
	lw		x11, 0(x11)	# 2063
	ble		x9, x11, ble.23249	# 2167
	jalr	x0, x1, 0	# 2186
ble.23249:
	lw		x11, 12(x4)	# 584
	mul		x12, x30, x5	# 2170
	add		x11, x11, x12	# 2170
	lw		x11, 0(x11)	# 2170
	sw		x29, 0(x2)	# 2170
	sw		x10, -4(x2)	# 2170
	sw		x5, -8(x2)	# 2170
	beq		x11, x9, beq_cont.23251	# 2170
	lw		x11, 24(x4)	# 614
	addi	x12, x0, 0	# 616
	mul		x12, x30, x12	# 616
	add		x11, x11, x12	# 616
	lw		x11, 0(x11)	# 616
	fadd	f1, f0, f0	# 254
	mul		x12, x30, x9	# 247
	addi	x12, x12, 50592	# 247
	fsw		f1, 0(x12)	# 247
	mul		x12, x30, x10	# 248
	addi	x12, x12, 50592	# 248
	fsw		f1, 0(x12)	# 248
	mul		x8, x30, x8	# 249
	addi	x8, x8, 50592	# 249
	fsw		f1, 0(x8)	# 249
	lw		x8, 28(x4)	# 628
	lw		x12, 4(x4)	# 569
	mul		x11, x30, x11	# 2179
	addi	x11, x11, 50716	# 2179
	lw		x11, 0(x11)	# 2179
	mul		x13, x30, x5	# 2180
	add		x8, x8, x13	# 2180
	lw		x8, 0(x8)	# 2180
	mul		x13, x30, x5	# 2181
	add		x12, x12, x13	# 2181
	lw		x12, 0(x12)	# 2181
	addi	x13, x0, 0	# 259
	addi	x14, x0, 0	# 259
	mul		x14, x30, x14	# 259
	add		x14, x12, x14	# 259
	flw		f1, 0(x14)	# 259
	mul		x13, x30, x13	# 259
	addi	x13, x13, 50648	# 259
	fsw		f1, 0(x13)	# 259
	addi	x13, x0, 1	# 260
	addi	x14, x0, 1	# 260
	mul		x14, x30, x14	# 260
	add		x14, x12, x14	# 260
	flw		f1, 0(x14)	# 260
	mul		x13, x30, x13	# 260
	addi	x13, x13, 50648	# 260
	fsw		f1, 0(x13)	# 260
	addi	x13, x0, 2	# 261
	mul		x14, x30, x13	# 261
	add		x14, x12, x14	# 261
	flw		f1, 0(x14)	# 261
	mul		x13, x30, x13	# 261
	addi	x13, x13, 50648	# 261
	fsw		f1, 0(x13)	# 261
	mul		x9, x30, x9	# 1315
	addi	x9, x9, 50000	# 1315
	lw		x9, 0(x9)	# 1315
	sub		x9, x9, x10	# 1315
	sw		x4, -12(x2)	# 1315
	sw		x12, -16(x2)	# 1315
	sw		x8, -20(x2)	# 1315
	sw		x11, -24(x2)	# 1315
	sw		x7, -28(x2)	# 1315
	addi	x5, x9, 0
	addi	x4, x12, 0
	addi	x29, x6, 0
	sw		x1, -32(x2)	# 1315
	addi	x2, x2, -36	# 1315
	lw		x31, 0(x29)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 36	# 1315
	lw		x1, -32(x2)	# 1315
	addi	x7, x0, 118	# 1964
	lw		x4, -24(x2)	# 1964
	lw		x5, -20(x2)	# 1964
	lw		x6, -16(x2)	# 1964
	lw		x29, -28(x2)	# 1964
	sw		x1, -32(x2)	# 1964
	addi	x2, x2, -36	# 1964
	lw		x31, 0(x29)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 36	# 1964
	lw		x1, -32(x2)	# 1964
	lw		x4, -12(x2)	# 598
	lw		x5, 20(x4)	# 598
	lw		x6, -8(x2)	# 2183
	mul		x7, x30, x6	# 2183
	add		x5, x5, x7	# 2183
	lw		x5, 0(x5)	# 2183
	addi	x7, x0, 0	# 259
	addi	x8, x0, 0	# 259
	mul		x8, x30, x8	# 259
	addi	x8, x8, 50592	# 259
	flw		f1, 0(x8)	# 259
	mul		x7, x30, x7	# 259
	add		x7, x5, x7	# 259
	fsw		f1, 0(x7)	# 259
	addi	x7, x0, 1	# 260
	addi	x8, x0, 1	# 260
	mul		x8, x30, x8	# 260
	addi	x8, x8, 50592	# 260
	flw		f1, 0(x8)	# 260
	mul		x7, x30, x7	# 260
	add		x7, x5, x7	# 260
	fsw		f1, 0(x7)	# 260
	addi	x7, x0, 2	# 261
	mul		x8, x30, x7	# 261
	addi	x8, x8, 50592	# 261
	flw		f1, 0(x8)	# 261
	mul		x7, x30, x7	# 261
	add		x5, x5, x7	# 261
	fsw		f1, 0(x5)	# 261
beq_cont.23251:
	lw		x5, -4(x2)	# 2185
	lw		x6, -8(x2)	# 2185
	add		x5, x6, x5	# 2185
	lw		x29, 0(x2)	# 2185
	lw		x31, 0(x29)	# 2185
	jalr	x0, x31, 0	# 2185
pretrace_pixels.2936.12449:
	lw		x7, 32(x29)	# 2193
	lw		x8, 28(x29)	# 2193
	lw		x9, 24(x29)	# 2193
	lw		x10, 20(x29)	# 2193
	lw		x11, 16(x29)	# 2193
	lw		x12, 12(x29)	# 2193
	lw		x13, 8(x29)	# 2193
	flw		f4, 4(x29)	# 2193
	ble		x12, x5, ble.23252	# 2193
	jalr	x0, x1, 0	# 2213
ble.23252:
	mul		x14, x30, x12	# 2195
	addi	x14, x14, 50632	# 2195
	flw		f5, 0(x14)	# 2195
	mul		x14, x30, x12	# 2195
	addi	x14, x14, 50624	# 2195
	lw		x14, 0(x14)	# 2195
	sub		x14, x5, x14	# 2195
	sw		x29, 0(x2)	# 2195
	sw		x10, -4(x2)	# 2195
	sw		x8, -8(x2)	# 2195
	sw		x6, -12(x2)	# 2195
	sw		x7, -16(x2)	# 2195
	sw		x4, -20(x2)	# 2195
	sw		x5, -24(x2)	# 2195
	fsw		f4, -28(x2)	# 2195
	fsw		f3, -32(x2)	# 2195
	sw		x11, -36(x2)	# 2195
	fsw		f2, -40(x2)	# 2195
	sw		x13, -44(x2)	# 2195
	fsw		f1, -48(x2)	# 2195
	sw		x12, -52(x2)	# 2195
	fsw		f5, -56(x2)	# 2195
	addi	x4, x14, 0
	addi	x29, x9, 0
	sw		x1, -60(x2)	# 2195
	addi	x2, x2, -64	# 2195
	lw		x31, 0(x29)	# 2195
	jalr	x1, x31, 0	# 2195
	addi	x2, x2, 64	# 2195
	lw		x1, -60(x2)	# 2195
	flw		f2, -56(x2)	# 2195
	fmul	f1, f2, f1	# 2195
	lw		x4, -52(x2)	# 2196
	mul		x5, x30, x4	# 2196
	addi	x5, x5, 50660	# 2196
	flw		f2, 0(x5)	# 2196
	fmul	f2, f1, f2	# 2196
	flw		f3, -48(x2)	# 2196
	fadd	f2, f2, f3	# 2196
	mul		x5, x30, x4	# 2196
	addi	x5, x5, 50696	# 2196
	fsw		f2, 0(x5)	# 2196
	lw		x5, -44(x2)	# 2197
	mul		x6, x30, x5	# 2197
	addi	x6, x6, 50660	# 2197
	flw		f2, 0(x6)	# 2197
	fmul	f2, f1, f2	# 2197
	flw		f4, -40(x2)	# 2197
	fadd	f2, f2, f4	# 2197
	mul		x6, x30, x5	# 2197
	addi	x6, x6, 50696	# 2197
	fsw		f2, 0(x6)	# 2197
	lw		x6, -36(x2)	# 2198
	mul		x7, x30, x6	# 2198
	addi	x7, x7, 50660	# 2198
	flw		f2, 0(x7)	# 2198
	fmul	f1, f1, f2	# 2198
	flw		f2, -32(x2)	# 2198
	fadd	f1, f1, f2	# 2198
	mul		x7, x30, x6	# 2198
	addi	x7, x7, 50696	# 2198
	fsw		f1, 0(x7)	# 2198
	mul		x7, x30, x4	# 283
	addi	x7, x7, 50696	# 283
	flw		f1, 0(x7)	# 283
	fmul	f1, f1, f1	# 127
	mul		x7, x30, x5	# 283
	addi	x7, x7, 50696	# 283
	flw		f5, 0(x7)	# 283
	fmul	f5, f5, f5	# 127
	fadd	f1, f1, f5	# 283
	mul		x7, x30, x6	# 283
	addi	x7, x7, 50696	# 283
	flw		f5, 0(x7)	# 283
	fmul	f5, f5, f5	# 127
	fadd	f1, f1, f5	# 283
	fsqrt	f1, f1	# 283
	flw		f5, -28(x2)	# 120
	feq		x31, f1, f5	# 120
	beq		x31, x0, feq_else.23255	# 120
	fadd	f1, f0, f16	# 284
	jal		x0, feq_cont.23254	# 120
feq_else.23255:
	fadd	f6, f0, f16	# 284
	fdiv	f1, f6, f1	# 284
feq_cont.23254:
	mul		x7, x30, x4	# 285
	addi	x7, x7, 50696	# 285
	flw		f6, 0(x7)	# 285
	fmul	f6, f6, f1	# 285
	mul		x7, x30, x4	# 285
	addi	x7, x7, 50696	# 285
	fsw		f6, 0(x7)	# 285
	mul		x7, x30, x5	# 286
	addi	x7, x7, 50696	# 286
	flw		f6, 0(x7)	# 286
	fmul	f6, f6, f1	# 286
	mul		x7, x30, x5	# 286
	addi	x7, x7, 50696	# 286
	fsw		f6, 0(x7)	# 286
	mul		x7, x30, x6	# 287
	addi	x7, x7, 50696	# 287
	flw		f6, 0(x7)	# 287
	fmul	f1, f6, f1	# 287
	mul		x7, x30, x6	# 287
	addi	x7, x7, 50696	# 287
	fsw		f1, 0(x7)	# 287
	mul		x7, x30, x4	# 247
	addi	x7, x7, 50604	# 247
	fsw		f5, 0(x7)	# 247
	mul		x7, x30, x5	# 248
	addi	x7, x7, 50604	# 248
	fsw		f5, 0(x7)	# 248
	mul		x7, x30, x6	# 249
	addi	x7, x7, 50604	# 249
	fsw		f5, 0(x7)	# 249
	mul		x7, x30, x4	# 259
	addi	x7, x7, 50300	# 259
	flw		f1, 0(x7)	# 259
	mul		x7, x30, x4	# 259
	addi	x7, x7, 50636	# 259
	fsw		f1, 0(x7)	# 259
	mul		x7, x30, x5	# 260
	addi	x7, x7, 50300	# 260
	flw		f1, 0(x7)	# 260
	mul		x7, x30, x5	# 260
	addi	x7, x7, 50636	# 260
	fsw		f1, 0(x7)	# 260
	mul		x7, x30, x6	# 261
	addi	x7, x7, 50300	# 261
	flw		f1, 0(x7)	# 261
	mul		x7, x30, x6	# 261
	addi	x7, x7, 50636	# 261
	fsw		f1, 0(x7)	# 261
	fadd	f1, f0, f16	# 2204
	lw		x7, -24(x2)	# 2204
	mul		x8, x30, x7	# 2204
	lw		x9, -20(x2)	# 2204
	add		x8, x9, x8	# 2204
	lw		x8, 0(x8)	# 2204
	addi	x10, x0, 50696	# 2204
	lw		x29, -16(x2)	# 2204
	addi	x6, x8, 0
	addi	x5, x10, 0
	fadd	f2, f0, f5
	sw		x1, -60(x2)	# 2204
	addi	x2, x2, -64	# 2204
	lw		x31, 0(x29)	# 2204
	jalr	x1, x31, 0	# 2204
	addi	x2, x2, 64	# 2204
	lw		x1, -60(x2)	# 2204
	lw		x4, -24(x2)	# 2205
	mul		x5, x30, x4	# 2205
	lw		x6, -20(x2)	# 2205
	add		x5, x6, x5	# 2205
	lw		x5, 0(x5)	# 2205
	lw		x5, 0(x5)	# 562
	lw		x7, -52(x2)	# 259
	mul		x8, x30, x7	# 259
	addi	x8, x8, 50604	# 259
	flw		f1, 0(x8)	# 259
	mul		x8, x30, x7	# 259
	add		x8, x5, x8	# 259
	fsw		f1, 0(x8)	# 259
	lw		x8, -44(x2)	# 260
	mul		x9, x30, x8	# 260
	addi	x9, x9, 50604	# 260
	flw		f1, 0(x9)	# 260
	mul		x9, x30, x8	# 260
	add		x9, x5, x9	# 260
	fsw		f1, 0(x9)	# 260
	lw		x9, -36(x2)	# 261
	mul		x10, x30, x9	# 261
	addi	x10, x10, 50604	# 261
	flw		f1, 0(x10)	# 261
	mul		x9, x30, x9	# 261
	add		x5, x5, x9	# 261
	fsw		f1, 0(x5)	# 261
	mul		x5, x30, x4	# 2206
	add		x5, x6, x5	# 2206
	lw		x5, 0(x5)	# 2206
	lw		x5, 24(x5)	# 621
	mul		x9, x30, x7	# 623
	add		x5, x5, x9	# 623
	lw		x9, -12(x2)	# 623
	sw		x9, 0(x5)	# 623
	mul		x5, x30, x4	# 2209
	add		x5, x6, x5	# 2209
	lw		x5, 0(x5)	# 2209
	lw		x29, -8(x2)	# 2209
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -60(x2)	# 2209
	addi	x2, x2, -64	# 2209
	lw		x31, 0(x29)	# 2209
	jalr	x1, x31, 0	# 2209
	addi	x2, x2, 64	# 2209
	lw		x1, -60(x2)	# 2209
	lw		x4, -44(x2)	# 2211
	lw		x5, -24(x2)	# 2211
	sub		x5, x5, x4	# 2211
	lw		x6, -12(x2)	# 224
	add		x4, x6, x4	# 224
	lw		x6, -4(x2)	# 225
	ble		x6, x4, ble.23257	# 225
	addi	x6, x4, 0	# 225
	jal		x0, ble_cont.23256	# 225
ble.23257:
	sub		x6, x4, x6	# 225
ble_cont.23256:
	flw		f1, -48(x2)	# 2211
	flw		f2, -40(x2)	# 2211
	flw		f3, -32(x2)	# 2211
	lw		x4, -20(x2)	# 2211
	lw		x29, 0(x2)	# 2211
	lw		x31, 0(x29)	# 2211
	jalr	x0, x31, 0	# 2211
scan_pixel.2947.12456:
	lw		x10, 28(x29)	# 2234
	lw		x11, 24(x29)	# 2234
	lw		x12, 20(x29)	# 2234
	lw		x13, 16(x29)	# 2234
	lw		x14, 12(x29)	# 2234
	lw		x15, 8(x29)	# 2234
	lw		x16, 4(x29)	# 2234
	mul		x17, x30, x15	# 2234
	addi	x17, x17, 50616	# 2234
	lw		x17, 0(x17)	# 2234
	ble		x17, x4, ble.23258	# 2234
	mul		x17, x30, x4	# 2237
	add		x17, x7, x17	# 2237
	lw		x17, 0(x17)	# 2237
	lw		x17, 0(x17)	# 562
	mul		x18, x30, x15	# 259
	add		x18, x17, x18	# 259
	flw		f1, 0(x18)	# 259
	mul		x18, x30, x15	# 259
	addi	x18, x18, 50604	# 259
	fsw		f1, 0(x18)	# 259
	mul		x18, x30, x16	# 260
	add		x18, x17, x18	# 260
	flw		f1, 0(x18)	# 260
	mul		x18, x30, x16	# 260
	addi	x18, x18, 50604	# 260
	fsw		f1, 0(x18)	# 260
	mul		x18, x30, x13	# 261
	add		x17, x17, x18	# 261
	flw		f1, 0(x17)	# 261
	mul		x13, x30, x13	# 261
	addi	x13, x13, 50604	# 261
	fsw		f1, 0(x13)	# 261
	mul		x13, x30, x16	# 2050
	addi	x13, x13, 50616	# 2050
	lw		x13, 0(x13)	# 2050
	add		x17, x5, x16	# 2050
	ble		x13, x17, ble.23260	# 2050
	ble		x5, x15, ble.23262	# 2051
	mul		x13, x30, x15	# 2052
	addi	x13, x13, 50616	# 2052
	lw		x13, 0(x13)	# 2052
	add		x17, x4, x16	# 2052
	ble		x13, x17, ble.23264	# 2052
	ble		x4, x15, ble.23266	# 2053
	addi	x13, x0, 1	# 2054
	jal		x0, ble_cont.23265	# 2053
ble.23266:
	addi	x13, x0, 0	# 2055
ble_cont.23265:
	jal		x0, ble_cont.23263	# 2052
ble.23264:
	addi	x13, x0, 0	# 2056
ble_cont.23263:
	jal		x0, ble_cont.23261	# 2051
ble.23262:
	addi	x13, x0, 0	# 2057
ble_cont.23261:
	jal		x0, ble_cont.23259	# 2050
ble.23260:
	addi	x13, x0, 0	# 2058
ble_cont.23259:
	sw		x8, 0(x2)	# 2240
	sw		x7, -4(x2)	# 2240
	sw		x6, -8(x2)	# 2240
	sw		x5, -12(x2)	# 2240
	sw		x29, -16(x2)	# 2240
	sw		x16, -20(x2)	# 2240
	sw		x4, -24(x2)	# 2240
	sw		x15, -28(x2)	# 2240
	sw		x11, -32(x2)	# 2240
	sw		x14, -36(x2)	# 2240
	sw		x9, -40(x2)	# 2240
	beq		x13, x15, beq.23268	# 2240
	addi	x12, x0, 0	# 2241
	addi	x9, x12, 0
	addi	x29, x10, 0
	sw		x1, -44(x2)	# 2241
	addi	x2, x2, -48	# 2241
	lw		x31, 0(x29)	# 2241
	jalr	x1, x31, 0	# 2241
	addi	x2, x2, 48	# 2241
	lw		x1, -44(x2)	# 2241
	jal		x0, beq_cont.23267	# 2240
beq.23268:
	mul		x10, x30, x4	# 2243
	add		x10, x7, x10	# 2243
	lw		x10, 0(x10)	# 2243
	addi	x13, x0, 0	# 2243
	addi	x5, x13, 0
	addi	x4, x10, 0
	addi	x29, x12, 0
	sw		x1, -44(x2)	# 2243
	addi	x2, x2, -48	# 2243
	lw		x31, 0(x29)	# 2243
	jalr	x1, x31, 0	# 2243
	addi	x2, x2, 48	# 2243
	lw		x1, -44(x2)	# 2243
beq_cont.23267:
	lw		x4, -36(x2)	# 2140
	lw		x5, -40(x2)	# 2140
	beq		x5, x4, beq.23270	# 2140
	addi	x4, x0, 0	# 2148
	mul		x4, x30, x4	# 2148
	addi	x4, x4, 50604	# 2148
	flw		f1, 0(x4)	# 2148
	lw		x29, -32(x2)	# 2134
	sw		x1, -44(x2)	# 2134
	addi	x2, x2, -48	# 2134
	lw		x31, 0(x29)	# 2134
	jalr	x1, x31, 0	# 2134
	addi	x2, x2, 48	# 2134
	lw		x1, -44(x2)	# 2134
	addi	x5, x0, 255	# 2135
	ble		x4, x5, ble.23272	# 2135
	addi	x4, x0, 255	# 2135
	jal		x0, ble_cont.23271	# 2135
ble.23272:
	lw		x5, -28(x2)	# 2135
	ble		x5, x4, ble_cont.23273	# 2135
	addi	x4, x0, 0	# 2135
ble_cont.23273:
ble_cont.23271:
	sw		x1, -44(x2)	# 2136
	addi	x2, x2, -48	# 2136
	jal		x1, min_caml_print_char	# 2136
	addi	x2, x2, 48	# 2136
	lw		x1, -44(x2)	# 2136
	addi	x4, x0, 1	# 2149
	mul		x4, x30, x4	# 2149
	addi	x4, x4, 50604	# 2149
	flw		f1, 0(x4)	# 2149
	lw		x29, -32(x2)	# 2134
	sw		x1, -44(x2)	# 2134
	addi	x2, x2, -48	# 2134
	lw		x31, 0(x29)	# 2134
	jalr	x1, x31, 0	# 2134
	addi	x2, x2, 48	# 2134
	lw		x1, -44(x2)	# 2134
	addi	x5, x0, 255	# 2135
	ble		x4, x5, ble.23275	# 2135
	addi	x4, x0, 255	# 2135
	jal		x0, ble_cont.23274	# 2135
ble.23275:
	lw		x5, -28(x2)	# 2135
	ble		x5, x4, ble_cont.23276	# 2135
	addi	x4, x0, 0	# 2135
ble_cont.23276:
ble_cont.23274:
	sw		x1, -44(x2)	# 2136
	addi	x2, x2, -48	# 2136
	jal		x1, min_caml_print_char	# 2136
	addi	x2, x2, 48	# 2136
	lw		x1, -44(x2)	# 2136
	addi	x4, x0, 2	# 2150
	mul		x4, x30, x4	# 2150
	addi	x4, x4, 50604	# 2150
	flw		f1, 0(x4)	# 2150
	lw		x29, -32(x2)	# 2134
	sw		x1, -44(x2)	# 2134
	addi	x2, x2, -48	# 2134
	lw		x31, 0(x29)	# 2134
	jalr	x1, x31, 0	# 2134
	addi	x2, x2, 48	# 2134
	lw		x1, -44(x2)	# 2134
	addi	x5, x0, 255	# 2135
	ble		x4, x5, ble.23278	# 2135
	addi	x4, x0, 255	# 2135
	jal		x0, ble_cont.23277	# 2135
ble.23278:
	lw		x5, -28(x2)	# 2135
	ble		x5, x4, ble_cont.23279	# 2135
	addi	x4, x0, 0	# 2135
ble_cont.23279:
ble_cont.23277:
	sw		x1, -44(x2)	# 2136
	addi	x2, x2, -48	# 2136
	jal		x1, min_caml_print_char	# 2136
	addi	x2, x2, 48	# 2136
	lw		x1, -44(x2)	# 2136
	jal		x0, beq_cont.23269	# 2140
beq.23270:
	addi	x4, x0, 0	# 2141
	mul		x4, x30, x4	# 2141
	addi	x4, x4, 50604	# 2141
	flw		f1, 0(x4)	# 2141
	lw		x29, -32(x2)	# 2128
	sw		x1, -44(x2)	# 2128
	addi	x2, x2, -48	# 2128
	lw		x31, 0(x29)	# 2128
	jalr	x1, x31, 0	# 2128
	addi	x2, x2, 48	# 2128
	lw		x1, -44(x2)	# 2128
	addi	x5, x0, 255	# 2129
	ble		x4, x5, ble.23281	# 2129
	addi	x4, x0, 255	# 2129
	jal		x0, ble_cont.23280	# 2129
ble.23281:
	lw		x5, -28(x2)	# 2129
	ble		x5, x4, ble_cont.23282	# 2129
	addi	x4, x0, 0	# 2129
ble_cont.23282:
ble_cont.23280:
	sw		x1, -44(x2)	# 2130
	addi	x2, x2, -48	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 48	# 2130
	lw		x1, -44(x2)	# 2130
	addi	x4, x0, 32	# 2142
	sw		x1, -44(x2)	# 2142
	addi	x2, x2, -48	# 2142
	jal		x1, min_caml_print_char	# 2142
	addi	x2, x2, 48	# 2142
	lw		x1, -44(x2)	# 2142
	addi	x4, x0, 1	# 2143
	mul		x4, x30, x4	# 2143
	addi	x4, x4, 50604	# 2143
	flw		f1, 0(x4)	# 2143
	lw		x29, -32(x2)	# 2128
	sw		x1, -44(x2)	# 2128
	addi	x2, x2, -48	# 2128
	lw		x31, 0(x29)	# 2128
	jalr	x1, x31, 0	# 2128
	addi	x2, x2, 48	# 2128
	lw		x1, -44(x2)	# 2128
	addi	x5, x0, 255	# 2129
	ble		x4, x5, ble.23284	# 2129
	addi	x4, x0, 255	# 2129
	jal		x0, ble_cont.23283	# 2129
ble.23284:
	lw		x5, -28(x2)	# 2129
	ble		x5, x4, ble_cont.23285	# 2129
	addi	x4, x0, 0	# 2129
ble_cont.23285:
ble_cont.23283:
	sw		x1, -44(x2)	# 2130
	addi	x2, x2, -48	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 48	# 2130
	lw		x1, -44(x2)	# 2130
	addi	x4, x0, 32	# 2144
	sw		x1, -44(x2)	# 2144
	addi	x2, x2, -48	# 2144
	jal		x1, min_caml_print_char	# 2144
	addi	x2, x2, 48	# 2144
	lw		x1, -44(x2)	# 2144
	addi	x4, x0, 2	# 2145
	mul		x4, x30, x4	# 2145
	addi	x4, x4, 50604	# 2145
	flw		f1, 0(x4)	# 2145
	lw		x29, -32(x2)	# 2128
	sw		x1, -44(x2)	# 2128
	addi	x2, x2, -48	# 2128
	lw		x31, 0(x29)	# 2128
	jalr	x1, x31, 0	# 2128
	addi	x2, x2, 48	# 2128
	lw		x1, -44(x2)	# 2128
	addi	x5, x0, 255	# 2129
	ble		x4, x5, ble.23287	# 2129
	addi	x4, x0, 255	# 2129
	jal		x0, ble_cont.23286	# 2129
ble.23287:
	lw		x5, -28(x2)	# 2129
	ble		x5, x4, ble_cont.23288	# 2129
	addi	x4, x0, 0	# 2129
ble_cont.23288:
ble_cont.23286:
	sw		x1, -44(x2)	# 2130
	addi	x2, x2, -48	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 48	# 2130
	lw		x1, -44(x2)	# 2130
	addi	x4, x0, 10	# 2146
	sw		x1, -44(x2)	# 2146
	addi	x2, x2, -48	# 2146
	jal		x1, min_caml_print_char	# 2146
	addi	x2, x2, 48	# 2146
	lw		x1, -44(x2)	# 2146
beq_cont.23269:
	lw		x4, -20(x2)	# 2248
	lw		x5, -24(x2)	# 2248
	add		x4, x5, x4	# 2248
	lw		x5, -12(x2)	# 2248
	lw		x6, -8(x2)	# 2248
	lw		x7, -4(x2)	# 2248
	lw		x8, 0(x2)	# 2248
	lw		x9, -40(x2)	# 2248
	lw		x29, -16(x2)	# 2248
	lw		x31, 0(x29)	# 2248
	jalr	x0, x31, 0	# 2248
ble.23258:
	jalr	x0, x1, 0	# 2249
scan_line.2954.12463:
	lw		x10, 28(x29)	# 2255
	lw		x11, 24(x29)	# 2255
	lw		x12, 20(x29)	# 2255
	lw		x13, 16(x29)	# 2255
	lw		x14, 12(x29)	# 2255
	lw		x15, 8(x29)	# 2255
	lw		x16, 4(x29)	# 2255
	mul		x17, x30, x16	# 2255
	addi	x17, x17, 50616	# 2255
	lw		x17, 0(x17)	# 2255
	ble		x17, x4, ble.23290	# 2255
	sub		x17, x17, x16	# 2257
	sw		x29, 0(x2)	# 2257
	sw		x13, -4(x2)	# 2257
	sw		x14, -8(x2)	# 2257
	sw		x8, -12(x2)	# 2257
	sw		x16, -16(x2)	# 2257
	sw		x9, -20(x2)	# 2257
	sw		x7, -24(x2)	# 2257
	sw		x6, -28(x2)	# 2257
	sw		x5, -32(x2)	# 2257
	sw		x4, -36(x2)	# 2257
	sw		x15, -40(x2)	# 2257
	sw		x10, -44(x2)	# 2257
	ble		x17, x4, ble_cont.23291	# 2257
	addi	x17, x4, 1	# 2258
	addi	x18, x0, 0	# 2218
	mul		x18, x30, x18	# 2218
	addi	x18, x18, 50632	# 2218
	flw		f1, 0(x18)	# 2218
	addi	x18, x0, 1	# 2218
	mul		x18, x30, x18	# 2218
	addi	x18, x18, 50624	# 2218
	lw		x18, 0(x18)	# 2218
	sub		x17, x17, x18	# 2218
	sw		x11, -48(x2)	# 2218
	fsw		f1, -52(x2)	# 2218
	addi	x4, x17, 0
	addi	x29, x12, 0
	sw		x1, -56(x2)	# 2218
	addi	x2, x2, -60	# 2218
	lw		x31, 0(x29)	# 2218
	jalr	x1, x31, 0	# 2218
	addi	x2, x2, 60	# 2218
	lw		x1, -56(x2)	# 2218
	flw		f2, -52(x2)	# 2218
	fmul	f1, f2, f1	# 2218
	addi	x4, x0, 0	# 2221
	mul		x4, x30, x4	# 2221
	addi	x4, x4, 50672	# 2221
	flw		f2, 0(x4)	# 2221
	fmul	f2, f1, f2	# 2221
	addi	x4, x0, 0	# 2221
	mul		x4, x30, x4	# 2221
	addi	x4, x4, 50684	# 2221
	flw		f3, 0(x4)	# 2221
	fadd	f2, f2, f3	# 2221
	addi	x4, x0, 1	# 2222
	mul		x4, x30, x4	# 2222
	addi	x4, x4, 50672	# 2222
	flw		f3, 0(x4)	# 2222
	fmul	f3, f1, f3	# 2222
	addi	x4, x0, 1	# 2222
	mul		x4, x30, x4	# 2222
	addi	x4, x4, 50684	# 2222
	flw		f4, 0(x4)	# 2222
	fadd	f3, f3, f4	# 2222
	addi	x4, x0, 2	# 2223
	mul		x4, x30, x4	# 2223
	addi	x4, x4, 50672	# 2223
	flw		f4, 0(x4)	# 2223
	fmul	f1, f1, f4	# 2223
	addi	x4, x0, 2	# 2223
	mul		x4, x30, x4	# 2223
	addi	x4, x4, 50684	# 2223
	flw		f4, 0(x4)	# 2223
	fadd	f1, f1, f4	# 2223
	addi	x4, x0, 0	# 2224
	mul		x4, x30, x4	# 2224
	addi	x4, x4, 50616	# 2224
	lw		x4, 0(x4)	# 2224
	addi	x5, x0, 1	# 2224
	sub		x5, x4, x5	# 2224
	lw		x4, -24(x2)	# 2224
	lw		x6, -12(x2)	# 2224
	lw		x29, -48(x2)	# 2224
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -56(x2)	# 2224
	addi	x2, x2, -60	# 2224
	lw		x31, 0(x29)	# 2224
	jalr	x1, x31, 0	# 2224
	addi	x2, x2, 60	# 2224
	lw		x1, -56(x2)	# 2224
ble_cont.23291:
	lw		x4, -40(x2)	# 2260
	lw		x5, -36(x2)	# 2260
	lw		x6, -32(x2)	# 2260
	lw		x7, -28(x2)	# 2260
	lw		x8, -24(x2)	# 2260
	lw		x9, -20(x2)	# 2260
	lw		x29, -44(x2)	# 2260
	sw		x1, -56(x2)	# 2260
	addi	x2, x2, -60	# 2260
	lw		x31, 0(x29)	# 2260
	jalr	x1, x31, 0	# 2260
	addi	x2, x2, 60	# 2260
	lw		x1, -56(x2)	# 2260
	lw		x4, -16(x2)	# 2261
	lw		x5, -36(x2)	# 2261
	add		x4, x5, x4	# 2261
	lw		x5, -8(x2)	# 224
	lw		x6, -12(x2)	# 224
	add		x5, x6, x5	# 224
	lw		x6, -4(x2)	# 225
	ble		x6, x5, ble.23293	# 225
	addi	x8, x5, 0	# 225
	jal		x0, ble_cont.23292	# 225
ble.23293:
	sub		x8, x5, x6	# 225
ble_cont.23292:
	lw		x5, -28(x2)	# 2261
	lw		x6, -24(x2)	# 2261
	lw		x7, -32(x2)	# 2261
	lw		x9, -20(x2)	# 2261
	lw		x29, 0(x2)	# 2261
	lw		x31, 0(x29)	# 2261
	jalr	x0, x31, 0	# 2261
ble.23290:
	jalr	x0, x1, 0	# 2262
create_pixel.2963.12470:
	lw		x4, 24(x29)	# 2284
	lw		x5, 20(x29)	# 2284
	lw		x6, 16(x29)	# 2284
	lw		x7, 12(x29)	# 2284
	lw		x8, 8(x29)	# 2284
	flw		f1, 4(x29)	# 2284
	sw		x7, 0(x2)	# 2284
	sw		x5, -4(x2)	# 2284
	sw		x8, -8(x2)	# 2284
	sw		x4, -12(x2)	# 2284
	fsw		f1, -16(x2)	# 2284
	sw		x6, -20(x2)	# 2284
	addi	x4, x6, 0
	sw		x1, -24(x2)	# 2284
	addi	x2, x2, -28	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 28	# 2284
	lw		x1, -24(x2)	# 2284
	flw		f1, -16(x2)	# 2272
	lw		x5, -20(x2)	# 2272
	sw		x4, -24(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -28(x2)	# 2272
	addi	x2, x2, -32	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 32	# 2272
	lw		x1, -28(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -12(x2)	# 2273
	sw		x1, -28(x2)	# 2273
	addi	x2, x2, -32	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 32	# 2273
	lw		x1, -28(x2)	# 2273
	flw		f1, -16(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -28(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -32(x2)	# 2274
	addi	x2, x2, -36	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 36	# 2274
	lw		x1, -32(x2)	# 2274
	lw		x5, -8(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -28(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -16(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -32(x2)	# 2275
	addi	x2, x2, -36	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 36	# 2275
	lw		x1, -32(x2)	# 2275
	lw		x5, -4(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -28(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -16(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -32(x2)	# 2276
	addi	x2, x2, -36	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 36	# 2276
	lw		x1, -32(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -28(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	addi	x4, x0, 4	# 2277
	flw		f1, -16(x2)	# 2277
	sw		x4, -32(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -36(x2)	# 2277
	addi	x2, x2, -40	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 40	# 2277
	lw		x1, -36(x2)	# 2277
	lw		x5, -32(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -28(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	lw		x4, -12(x2)	# 2286
	lw		x6, 0(x2)	# 2286
	addi	x5, x6, 0
	sw		x1, -36(x2)	# 2286
	addi	x2, x2, -40	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 40	# 2286
	lw		x1, -36(x2)	# 2286
	lw		x5, -12(x2)	# 2287
	lw		x6, 0(x2)	# 2287
	sw		x4, -36(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -40(x2)	# 2287
	addi	x2, x2, -44	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 44	# 2287
	lw		x1, -40(x2)	# 2287
	flw		f1, -16(x2)	# 2272
	lw		x5, -20(x2)	# 2272
	sw		x4, -40(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -44(x2)	# 2272
	addi	x2, x2, -48	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 48	# 2272
	lw		x1, -44(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -12(x2)	# 2273
	sw		x1, -44(x2)	# 2273
	addi	x2, x2, -48	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 48	# 2273
	lw		x1, -44(x2)	# 2273
	flw		f1, -16(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -44(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 2274
	addi	x2, x2, -52	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 52	# 2274
	lw		x1, -48(x2)	# 2274
	lw		x5, -8(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -44(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -16(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -48(x2)	# 2275
	addi	x2, x2, -52	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 52	# 2275
	lw		x1, -48(x2)	# 2275
	lw		x5, -4(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -44(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -16(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -48(x2)	# 2276
	addi	x2, x2, -52	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 52	# 2276
	lw		x1, -48(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -44(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -16(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 2277
	addi	x2, x2, -52	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 52	# 2277
	lw		x1, -48(x2)	# 2277
	lw		x5, -32(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -44(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -16(x2)	# 2272
	lw		x4, -20(x2)	# 2272
	sw		x1, -48(x2)	# 2272
	addi	x2, x2, -52	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 52	# 2272
	lw		x1, -48(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -12(x2)	# 2273
	sw		x1, -48(x2)	# 2273
	addi	x2, x2, -52	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 52	# 2273
	lw		x1, -48(x2)	# 2273
	flw		f1, -16(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -48(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 2274
	addi	x2, x2, -56	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 56	# 2274
	lw		x1, -52(x2)	# 2274
	lw		x5, -8(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -48(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -16(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -52(x2)	# 2275
	addi	x2, x2, -56	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 56	# 2275
	lw		x1, -52(x2)	# 2275
	lw		x5, -4(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -48(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -16(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -52(x2)	# 2276
	addi	x2, x2, -56	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 56	# 2276
	lw		x1, -52(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -48(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -16(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 2277
	addi	x2, x2, -56	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 56	# 2277
	lw		x1, -52(x2)	# 2277
	lw		x5, -32(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -48(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	lw		x4, -8(x2)	# 2290
	lw		x6, 0(x2)	# 2290
	addi	x5, x6, 0
	sw		x1, -52(x2)	# 2290
	addi	x2, x2, -56	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 56	# 2290
	lw		x1, -52(x2)	# 2290
	flw		f1, -16(x2)	# 2272
	lw		x5, -20(x2)	# 2272
	sw		x4, -52(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -56(x2)	# 2272
	addi	x2, x2, -60	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 60	# 2272
	lw		x1, -56(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -12(x2)	# 2273
	sw		x1, -56(x2)	# 2273
	addi	x2, x2, -60	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 60	# 2273
	lw		x1, -56(x2)	# 2273
	flw		f1, -16(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -56(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 2274
	addi	x2, x2, -64	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 64	# 2274
	lw		x1, -60(x2)	# 2274
	lw		x5, -8(x2)	# 2274
	mul		x5, x30, x5	# 2274
	lw		x6, -56(x2)	# 2274
	add		x5, x6, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -16(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -60(x2)	# 2275
	addi	x2, x2, -64	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 64	# 2275
	lw		x1, -60(x2)	# 2275
	lw		x5, -4(x2)	# 2275
	mul		x5, x30, x5	# 2275
	lw		x6, -56(x2)	# 2275
	add		x5, x6, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -16(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -60(x2)	# 2276
	addi	x2, x2, -64	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 64	# 2276
	lw		x1, -60(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -56(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -16(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 2277
	addi	x2, x2, -64	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 64	# 2277
	lw		x1, -60(x2)	# 2277
	lw		x5, -32(x2)	# 2277
	mul		x5, x30, x5	# 2277
	lw		x6, -56(x2)	# 2277
	add		x5, x6, x5	# 2277
	sw		x4, 0(x5)	# 2277
	addi	x4, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x6, 28(x4)	# 2292
	lw		x5, -52(x2)	# 2292
	sw		x5, 24(x4)	# 2292
	lw		x5, -48(x2)	# 2292
	sw		x5, 20(x4)	# 2292
	lw		x5, -44(x2)	# 2292
	sw		x5, 16(x4)	# 2292
	lw		x5, -40(x2)	# 2292
	sw		x5, 12(x4)	# 2292
	lw		x5, -36(x2)	# 2292
	sw		x5, 8(x4)	# 2292
	lw		x5, -28(x2)	# 2292
	sw		x5, 4(x4)	# 2292
	lw		x5, -24(x2)	# 2292
	sw		x5, 0(x4)	# 2292
	jalr	x0, x1, 0	# 2292
init_line_elements.2965.12472:
	lw		x6, 24(x29)	# 2297
	lw		x7, 20(x29)	# 2297
	lw		x8, 16(x29)	# 2297
	lw		x9, 12(x29)	# 2297
	lw		x10, 8(x29)	# 2297
	flw		f1, 4(x29)	# 2297
	ble		x9, x5, ble.23295	# 2297
	jalr	x0, x1, 0	# 2301
ble.23295:
	sw		x29, 0(x2)	# 2284
	sw		x4, -4(x2)	# 2284
	sw		x5, -8(x2)	# 2284
	sw		x9, -12(x2)	# 2284
	sw		x7, -16(x2)	# 2284
	sw		x10, -20(x2)	# 2284
	sw		x6, -24(x2)	# 2284
	fsw		f1, -28(x2)	# 2284
	sw		x8, -32(x2)	# 2284
	addi	x4, x8, 0
	sw		x1, -36(x2)	# 2284
	addi	x2, x2, -40	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 40	# 2284
	lw		x1, -36(x2)	# 2284
	flw		f1, -28(x2)	# 2272
	lw		x5, -32(x2)	# 2272
	sw		x4, -36(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -40(x2)	# 2272
	addi	x2, x2, -44	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 44	# 2272
	lw		x1, -40(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -24(x2)	# 2273
	sw		x1, -40(x2)	# 2273
	addi	x2, x2, -44	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 44	# 2273
	lw		x1, -40(x2)	# 2273
	flw		f1, -28(x2)	# 2274
	lw		x5, -32(x2)	# 2274
	sw		x4, -40(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -44(x2)	# 2274
	addi	x2, x2, -48	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 48	# 2274
	lw		x1, -44(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -40(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -28(x2)	# 2275
	lw		x4, -32(x2)	# 2275
	sw		x1, -44(x2)	# 2275
	addi	x2, x2, -48	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 48	# 2275
	lw		x1, -44(x2)	# 2275
	lw		x5, -16(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -40(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -28(x2)	# 2276
	lw		x4, -32(x2)	# 2276
	sw		x1, -44(x2)	# 2276
	addi	x2, x2, -48	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 48	# 2276
	lw		x1, -44(x2)	# 2276
	lw		x5, -32(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -40(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	addi	x4, x0, 4	# 2277
	flw		f1, -28(x2)	# 2277
	sw		x4, -44(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 2277
	addi	x2, x2, -52	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 52	# 2277
	lw		x1, -48(x2)	# 2277
	lw		x5, -44(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -40(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	lw		x4, -24(x2)	# 2286
	lw		x6, -12(x2)	# 2286
	addi	x5, x6, 0
	sw		x1, -48(x2)	# 2286
	addi	x2, x2, -52	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 52	# 2286
	lw		x1, -48(x2)	# 2286
	lw		x5, -24(x2)	# 2287
	lw		x6, -12(x2)	# 2287
	sw		x4, -48(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -52(x2)	# 2287
	addi	x2, x2, -56	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 56	# 2287
	lw		x1, -52(x2)	# 2287
	flw		f1, -28(x2)	# 2272
	lw		x5, -32(x2)	# 2272
	sw		x4, -52(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -56(x2)	# 2272
	addi	x2, x2, -60	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 60	# 2272
	lw		x1, -56(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -24(x2)	# 2273
	sw		x1, -56(x2)	# 2273
	addi	x2, x2, -60	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 60	# 2273
	lw		x1, -56(x2)	# 2273
	flw		f1, -28(x2)	# 2274
	lw		x5, -32(x2)	# 2274
	sw		x4, -56(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 2274
	addi	x2, x2, -64	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 64	# 2274
	lw		x1, -60(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -56(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -28(x2)	# 2275
	lw		x4, -32(x2)	# 2275
	sw		x1, -60(x2)	# 2275
	addi	x2, x2, -64	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 64	# 2275
	lw		x1, -60(x2)	# 2275
	lw		x5, -16(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -56(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -28(x2)	# 2276
	lw		x4, -32(x2)	# 2276
	sw		x1, -60(x2)	# 2276
	addi	x2, x2, -64	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 64	# 2276
	lw		x1, -60(x2)	# 2276
	lw		x5, -32(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -56(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -28(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 2277
	addi	x2, x2, -64	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 64	# 2277
	lw		x1, -60(x2)	# 2277
	lw		x5, -44(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -56(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -28(x2)	# 2272
	lw		x4, -32(x2)	# 2272
	sw		x1, -60(x2)	# 2272
	addi	x2, x2, -64	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 64	# 2272
	lw		x1, -60(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -24(x2)	# 2273
	sw		x1, -60(x2)	# 2273
	addi	x2, x2, -64	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 64	# 2273
	lw		x1, -60(x2)	# 2273
	flw		f1, -28(x2)	# 2274
	lw		x5, -32(x2)	# 2274
	sw		x4, -60(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 2274
	addi	x2, x2, -68	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 68	# 2274
	lw		x1, -64(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -60(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -28(x2)	# 2275
	lw		x4, -32(x2)	# 2275
	sw		x1, -64(x2)	# 2275
	addi	x2, x2, -68	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 68	# 2275
	lw		x1, -64(x2)	# 2275
	lw		x5, -16(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -60(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -28(x2)	# 2276
	lw		x4, -32(x2)	# 2276
	sw		x1, -64(x2)	# 2276
	addi	x2, x2, -68	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 68	# 2276
	lw		x1, -64(x2)	# 2276
	lw		x5, -32(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -60(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -28(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 2277
	addi	x2, x2, -68	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 68	# 2277
	lw		x1, -64(x2)	# 2277
	lw		x5, -44(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -60(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	lw		x4, -20(x2)	# 2290
	lw		x6, -12(x2)	# 2290
	addi	x5, x6, 0
	sw		x1, -64(x2)	# 2290
	addi	x2, x2, -68	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 68	# 2290
	lw		x1, -64(x2)	# 2290
	flw		f1, -28(x2)	# 2272
	lw		x5, -32(x2)	# 2272
	sw		x4, -64(x2)	# 2272
	addi	x4, x5, 0
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
	flw		f1, -28(x2)	# 2274
	lw		x5, -32(x2)	# 2274
	sw		x4, -68(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 2274
	addi	x2, x2, -76	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 76	# 2274
	lw		x1, -72(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -68(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -28(x2)	# 2275
	lw		x4, -32(x2)	# 2275
	sw		x1, -72(x2)	# 2275
	addi	x2, x2, -76	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 76	# 2275
	lw		x1, -72(x2)	# 2275
	lw		x5, -16(x2)	# 2275
	mul		x5, x30, x5	# 2275
	lw		x6, -68(x2)	# 2275
	add		x5, x6, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -28(x2)	# 2276
	lw		x4, -32(x2)	# 2276
	sw		x1, -72(x2)	# 2276
	addi	x2, x2, -76	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 76	# 2276
	lw		x1, -72(x2)	# 2276
	lw		x5, -32(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -68(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -28(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 2277
	addi	x2, x2, -76	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 76	# 2277
	lw		x1, -72(x2)	# 2277
	lw		x5, -44(x2)	# 2277
	mul		x5, x30, x5	# 2277
	lw		x6, -68(x2)	# 2277
	add		x5, x6, x5	# 2277
	sw		x4, 0(x5)	# 2277
	addi	x4, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x6, 28(x4)	# 2292
	lw		x5, -64(x2)	# 2292
	sw		x5, 24(x4)	# 2292
	lw		x5, -60(x2)	# 2292
	sw		x5, 20(x4)	# 2292
	lw		x5, -56(x2)	# 2292
	sw		x5, 16(x4)	# 2292
	lw		x5, -52(x2)	# 2292
	sw		x5, 12(x4)	# 2292
	lw		x5, -48(x2)	# 2292
	sw		x5, 8(x4)	# 2292
	lw		x5, -40(x2)	# 2292
	sw		x5, 4(x4)	# 2292
	lw		x5, -36(x2)	# 2292
	sw		x5, 0(x4)	# 2292
	lw		x5, -8(x2)	# 2298
	mul		x6, x30, x5	# 2298
	lw		x7, -4(x2)	# 2298
	add		x6, x7, x6	# 2298
	sw		x4, 0(x6)	# 2298
	lw		x4, -20(x2)	# 2299
	sub		x5, x5, x4	# 2299
	lw		x29, 0(x2)	# 2299
	addi	x4, x7, 0
	lw		x31, 0(x29)	# 2299
	jalr	x0, x31, 0	# 2299
calc_dirvec.2975.12475:
	lw		x7, 28(x29)	# 2334
	lw		x8, 24(x29)	# 2334
	lw		x9, 20(x29)	# 2334
	lw		x10, 16(x29)	# 2334
	lw		x11, 12(x29)	# 2334
	lw		x12, 8(x29)	# 2334
	lw		x13, 4(x29)	# 2334
	ble		x10, x4, ble.23296	# 2334
	fmul	f1, f2, f2	# 2325
	fadd	f2, f0, f23	# 2325
	fadd	f1, f1, f2	# 2325
	fsqrt	f1, f1	# 2325
	fadd	f5, f0, f16	# 2326
	fdiv	f6, f5, f1	# 2326
	sw		x6, 0(x2)	# 2327
	sw		x5, -4(x2)	# 2327
	sw		x29, -8(x2)	# 2327
	fsw		f4, -12(x2)	# 2327
	sw		x9, -16(x2)	# 2327
	fsw		f5, -20(x2)	# 2327
	fsw		f2, -24(x2)	# 2327
	sw		x13, -28(x2)	# 2327
	sw		x4, -32(x2)	# 2327
	fsw		f1, -36(x2)	# 2327
	sw		x8, -40(x2)	# 2327
	sw		x7, -44(x2)	# 2327
	fsw		f3, -48(x2)	# 2327
	addi	x29, x9, 0
	fadd	f1, f0, f6
	sw		x1, -52(x2)	# 2327
	addi	x2, x2, -56	# 2327
	lw		x31, 0(x29)	# 2327
	jalr	x1, x31, 0	# 2327
	addi	x2, x2, 56	# 2327
	lw		x1, -52(x2)	# 2327
	flw		f2, -48(x2)	# 2328
	fmul	f1, f1, f2	# 2328
	lw		x29, -44(x2)	# 2320
	fsw		f1, -52(x2)	# 2320
	sw		x1, -56(x2)	# 2320
	addi	x2, x2, -60	# 2320
	lw		x31, 0(x29)	# 2320
	jalr	x1, x31, 0	# 2320
	addi	x2, x2, 60	# 2320
	lw		x1, -56(x2)	# 2320
	flw		f2, -52(x2)	# 2320
	lw		x29, -40(x2)	# 2320
	fsw		f1, -56(x2)	# 2320
	fadd	f1, f0, f2
	sw		x1, -60(x2)	# 2320
	addi	x2, x2, -64	# 2320
	lw		x31, 0(x29)	# 2320
	jalr	x1, x31, 0	# 2320
	addi	x2, x2, 64	# 2320
	lw		x1, -60(x2)	# 2320
	flw		f2, -56(x2)	# 2320
	fdiv	f1, f2, f1	# 2320
	flw		f2, -36(x2)	# 2329
	fmul	f1, f1, f2	# 2329
	lw		x4, -28(x2)	# 2350
	lw		x5, -32(x2)	# 2350
	add		x4, x5, x4	# 2350
	fmul	f2, f1, f1	# 2325
	flw		f3, -24(x2)	# 2325
	fadd	f2, f2, f3	# 2325
	fsqrt	f2, f2	# 2325
	flw		f3, -20(x2)	# 2326
	fdiv	f3, f3, f2	# 2326
	lw		x29, -16(x2)	# 2327
	fsw		f1, -60(x2)	# 2327
	sw		x4, -64(x2)	# 2327
	fsw		f2, -68(x2)	# 2327
	fadd	f1, f0, f3
	sw		x1, -72(x2)	# 2327
	addi	x2, x2, -76	# 2327
	lw		x31, 0(x29)	# 2327
	jalr	x1, x31, 0	# 2327
	addi	x2, x2, 76	# 2327
	lw		x1, -72(x2)	# 2327
	flw		f2, -12(x2)	# 2328
	fmul	f1, f1, f2	# 2328
	lw		x29, -44(x2)	# 2320
	fsw		f1, -72(x2)	# 2320
	sw		x1, -76(x2)	# 2320
	addi	x2, x2, -80	# 2320
	lw		x31, 0(x29)	# 2320
	jalr	x1, x31, 0	# 2320
	addi	x2, x2, 80	# 2320
	lw		x1, -76(x2)	# 2320
	flw		f2, -72(x2)	# 2320
	lw		x29, -40(x2)	# 2320
	fsw		f1, -76(x2)	# 2320
	fadd	f1, f0, f2
	sw		x1, -80(x2)	# 2320
	addi	x2, x2, -84	# 2320
	lw		x31, 0(x29)	# 2320
	jalr	x1, x31, 0	# 2320
	addi	x2, x2, 84	# 2320
	lw		x1, -80(x2)	# 2320
	flw		f2, -76(x2)	# 2320
	fdiv	f1, f2, f1	# 2320
	flw		f2, -68(x2)	# 2329
	fmul	f2, f1, f2	# 2329
	flw		f1, -60(x2)	# 2350
	flw		f3, -48(x2)	# 2350
	flw		f4, -12(x2)	# 2350
	lw		x4, -64(x2)	# 2350
	lw		x5, -4(x2)	# 2350
	lw		x6, 0(x2)	# 2350
	lw		x29, -8(x2)	# 2350
	lw		x31, 0(x29)	# 2350
	jalr	x0, x31, 0	# 2350
ble.23296:
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 2335
	fadd	f4, f0, f16	# 2335
	fadd	f3, f3, f4	# 2335
	fsqrt	f3, f3	# 2335
	fdiv	f1, f1, f3	# 2336
	fdiv	f2, f2, f3	# 2337
	fdiv	f3, f4, f3	# 2338
	mul		x4, x30, x5	# 2341
	addi	x4, x4, 50716	# 2341
	lw		x4, 0(x4)	# 2341
	mul		x5, x30, x6	# 2342
	add		x5, x4, x5	# 2342
	lw		x5, 0(x5)	# 2342
	lw		x5, 0(x5)	# 639
	mul		x7, x30, x12	# 240
	add		x7, x5, x7	# 240
	fsw		f1, 0(x7)	# 240
	mul		x7, x30, x13	# 241
	add		x7, x5, x7	# 241
	fsw		f2, 0(x7)	# 241
	mul		x7, x30, x11	# 242
	add		x5, x5, x7	# 242
	fsw		f3, 0(x5)	# 242
	addi	x5, x6, 40	# 2343
	mul		x5, x30, x5	# 2343
	add		x5, x4, x5	# 2343
	lw		x5, 0(x5)	# 2343
	lw		x5, 0(x5)	# 639
	fsub	f4, f0, f2	# 123
	mul		x7, x30, x12	# 240
	add		x7, x5, x7	# 240
	fsw		f1, 0(x7)	# 240
	mul		x7, x30, x13	# 241
	add		x7, x5, x7	# 241
	fsw		f3, 0(x7)	# 241
	mul		x7, x30, x11	# 242
	add		x5, x5, x7	# 242
	fsw		f4, 0(x5)	# 242
	addi	x5, x6, 80	# 2344
	mul		x5, x30, x5	# 2344
	add		x5, x4, x5	# 2344
	lw		x5, 0(x5)	# 2344
	lw		x5, 0(x5)	# 639
	fsub	f5, f0, f1	# 123
	mul		x7, x30, x12	# 240
	add		x7, x5, x7	# 240
	fsw		f3, 0(x7)	# 240
	mul		x7, x30, x13	# 241
	add		x7, x5, x7	# 241
	fsw		f5, 0(x7)	# 241
	mul		x7, x30, x11	# 242
	add		x5, x5, x7	# 242
	fsw		f4, 0(x5)	# 242
	add		x5, x6, x13	# 2345
	mul		x5, x30, x5	# 2345
	add		x5, x4, x5	# 2345
	lw		x5, 0(x5)	# 2345
	lw		x5, 0(x5)	# 639
	fsub	f3, f0, f3	# 123
	mul		x7, x30, x12	# 240
	add		x7, x5, x7	# 240
	fsw		f5, 0(x7)	# 240
	mul		x7, x30, x13	# 241
	add		x7, x5, x7	# 241
	fsw		f4, 0(x7)	# 241
	mul		x7, x30, x11	# 242
	add		x5, x5, x7	# 242
	fsw		f3, 0(x5)	# 242
	addi	x5, x6, 41	# 2346
	mul		x5, x30, x5	# 2346
	add		x5, x4, x5	# 2346
	lw		x5, 0(x5)	# 2346
	lw		x5, 0(x5)	# 639
	mul		x7, x30, x12	# 240
	add		x7, x5, x7	# 240
	fsw		f5, 0(x7)	# 240
	mul		x7, x30, x13	# 241
	add		x7, x5, x7	# 241
	fsw		f3, 0(x7)	# 241
	mul		x7, x30, x11	# 242
	add		x5, x5, x7	# 242
	fsw		f2, 0(x5)	# 242
	addi	x5, x6, 81	# 2347
	mul		x5, x30, x5	# 2347
	add		x4, x4, x5	# 2347
	lw		x4, 0(x4)	# 2347
	lw		x4, 0(x4)	# 639
	mul		x5, x30, x12	# 240
	add		x5, x4, x5	# 240
	fsw		f3, 0(x5)	# 240
	mul		x5, x30, x13	# 241
	add		x5, x4, x5	# 241
	fsw		f1, 0(x5)	# 241
	mul		x5, x30, x11	# 242
	add		x4, x4, x5	# 242
	fsw		f2, 0(x4)	# 242
	jalr	x0, x1, 0	# 242
calc_dirvecs.2983.12483:
	lw		x7, 28(x29)	# 2355
	lw		x8, 24(x29)	# 2355
	lw		x9, 20(x29)	# 2355
	lw		x10, 16(x29)	# 2355
	lw		x11, 12(x29)	# 2355
	lw		x12, 8(x29)	# 2355
	flw		f2, 4(x29)	# 2355
	ble		x11, x4, ble.23298	# 2355
	jalr	x0, x1, 0	# 2364
ble.23298:
	sw		x29, 0(x2)	# 2357
	sw		x9, -4(x2)	# 2357
	sw		x12, -8(x2)	# 2357
	sw		x10, -12(x2)	# 2357
	sw		x4, -16(x2)	# 2357
	sw		x7, -20(x2)	# 2357
	fsw		f1, -24(x2)	# 2357
	fsw		f2, -28(x2)	# 2357
	sw		x6, -32(x2)	# 2357
	sw		x5, -36(x2)	# 2357
	sw		x11, -40(x2)	# 2357
	sw		x8, -44(x2)	# 2357
	addi	x29, x7, 0
	sw		x1, -48(x2)	# 2357
	addi	x2, x2, -52	# 2357
	lw		x31, 0(x29)	# 2357
	jalr	x1, x31, 0	# 2357
	addi	x2, x2, 52	# 2357
	lw		x1, -48(x2)	# 2357
	fadd	f2, f0, f24	# 2357
	fmul	f1, f1, f2	# 2357
	lui		x4, %hi(l.20449)	# 2357
	ori		x4, x0, %lo(l.20449)	# 2357
	flw		f3, 0(x4)	# 2357
	fsub	f3, f1, f3	# 2357
	flw		f1, -28(x2)	# 2358
	flw		f4, -24(x2)	# 2358
	lw		x4, -40(x2)	# 2358
	lw		x5, -36(x2)	# 2358
	lw		x6, -32(x2)	# 2358
	lw		x29, -44(x2)	# 2358
	fsw		f2, -48(x2)	# 2358
	fadd	f2, f0, f1
	sw		x1, -52(x2)	# 2358
	addi	x2, x2, -56	# 2358
	lw		x31, 0(x29)	# 2358
	jalr	x1, x31, 0	# 2358
	addi	x2, x2, 56	# 2358
	lw		x1, -52(x2)	# 2358
	lw		x4, -16(x2)	# 2360
	lw		x29, -20(x2)	# 2360
	sw		x1, -52(x2)	# 2360
	addi	x2, x2, -56	# 2360
	lw		x31, 0(x29)	# 2360
	jalr	x1, x31, 0	# 2360
	addi	x2, x2, 56	# 2360
	lw		x1, -52(x2)	# 2360
	flw		f2, -48(x2)	# 2360
	fmul	f1, f1, f2	# 2360
	fadd	f2, f0, f23	# 2360
	fadd	f3, f1, f2	# 2360
	lw		x4, -12(x2)	# 2361
	lw		x5, -32(x2)	# 2361
	add		x6, x5, x4	# 2361
	flw		f1, -28(x2)	# 2361
	flw		f4, -24(x2)	# 2361
	lw		x4, -40(x2)	# 2361
	lw		x7, -36(x2)	# 2361
	lw		x29, -44(x2)	# 2361
	addi	x5, x7, 0
	fadd	f2, f0, f1
	sw		x1, -52(x2)	# 2361
	addi	x2, x2, -56	# 2361
	lw		x31, 0(x29)	# 2361
	jalr	x1, x31, 0	# 2361
	addi	x2, x2, 56	# 2361
	lw		x1, -52(x2)	# 2361
	lw		x4, -8(x2)	# 2363
	lw		x5, -16(x2)	# 2363
	sub		x5, x5, x4	# 2363
	lw		x6, -36(x2)	# 224
	add		x4, x6, x4	# 224
	lw		x6, -4(x2)	# 225
	ble		x6, x4, ble.23301	# 225
	jal		x0, ble_cont.23300	# 225
ble.23301:
	sub		x4, x4, x6	# 225
ble_cont.23300:
	flw		f1, -24(x2)	# 2363
	lw		x6, -32(x2)	# 2363
	lw		x29, 0(x2)	# 2363
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	lw		x31, 0(x29)	# 2363
	jalr	x0, x31, 0	# 2363
calc_dirvec_rows.2988.12488:
	lw		x7, 24(x29)	# 2369
	lw		x8, 20(x29)	# 2369
	lw		x9, 16(x29)	# 2369
	lw		x10, 12(x29)	# 2369
	lw		x11, 8(x29)	# 2369
	lw		x12, 4(x29)	# 2369
	ble		x11, x4, ble.23302	# 2369
	jalr	x0, x1, 0	# 2373
ble.23302:
	sw		x29, 0(x2)	# 2370
	sw		x9, -4(x2)	# 2370
	sw		x10, -8(x2)	# 2370
	sw		x12, -12(x2)	# 2370
	sw		x4, -16(x2)	# 2370
	sw		x6, -20(x2)	# 2370
	sw		x5, -24(x2)	# 2370
	sw		x8, -28(x2)	# 2370
	addi	x29, x7, 0
	sw		x1, -32(x2)	# 2370
	addi	x2, x2, -36	# 2370
	lw		x31, 0(x29)	# 2370
	jalr	x1, x31, 0	# 2370
	addi	x2, x2, 36	# 2370
	lw		x1, -32(x2)	# 2370
	fadd	f2, f0, f24	# 2370
	fmul	f1, f1, f2	# 2370
	lui		x4, %hi(l.20449)	# 2370
	ori		x4, x0, %lo(l.20449)	# 2370
	flw		f2, 0(x4)	# 2370
	fsub	f1, f1, f2	# 2370
	addi	x4, x0, 4	# 2371
	lw		x5, -24(x2)	# 2371
	lw		x6, -20(x2)	# 2371
	lw		x29, -28(x2)	# 2371
	sw		x1, -32(x2)	# 2371
	addi	x2, x2, -36	# 2371
	lw		x31, 0(x29)	# 2371
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
	ble		x6, x5, ble.23305	# 225
	jal		x0, ble_cont.23304	# 225
ble.23305:
	sub		x5, x5, x6	# 225
ble_cont.23304:
	lw		x6, -20(x2)	# 2372
	addi	x6, x6, 4	# 2372
	lw		x29, 0(x2)	# 2372
	lw		x31, 0(x29)	# 2372
	jalr	x0, x31, 0	# 2372
create_dirvec_elements.2994.12492:
	lw		x6, 16(x29)	# 2388
	lw		x7, 12(x29)	# 2388
	lw		x8, 8(x29)	# 2388
	flw		f1, 4(x29)	# 2388
	ble		x7, x5, ble.23306	# 2388
	jalr	x0, x1, 0	# 2391
ble.23306:
	sw		x29, 0(x2)	# 2382
	sw		x8, -4(x2)	# 2382
	sw		x4, -8(x2)	# 2382
	sw		x5, -12(x2)	# 2382
	sw		x7, -16(x2)	# 2382
	addi	x4, x6, 0
	sw		x1, -20(x2)	# 2382
	addi	x2, x2, -24	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 24	# 2382
	lw		x1, -20(x2)	# 2382
	addi	x5, x4, 0	# 2382
	lw		x4, -16(x2)	# 2383
	mul		x4, x30, x4	# 2383
	addi	x4, x4, 50000	# 2383
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
	lw		x5, -12(x2)	# 2389
	mul		x6, x30, x5	# 2389
	lw		x7, -8(x2)	# 2389
	add		x6, x7, x6	# 2389
	sw		x4, 0(x6)	# 2389
	lw		x4, -4(x2)	# 2390
	sub		x5, x5, x4	# 2390
	lw		x29, 0(x2)	# 2390
	addi	x4, x7, 0
	lw		x31, 0(x29)	# 2390
	jalr	x0, x31, 0	# 2390
create_dirvecs.2997.12495:
	lw		x5, 20(x29)	# 2395
	lw		x6, 16(x29)	# 2395
	lw		x7, 12(x29)	# 2395
	lw		x8, 8(x29)	# 2395
	flw		f1, 4(x29)	# 2395
	ble		x7, x4, ble.23308	# 2395
	jalr	x0, x1, 0	# 2399
ble.23308:
	addi	x9, x0, 120	# 2396
	sw		x29, 0(x2)	# 2382
	sw		x8, -4(x2)	# 2382
	sw		x5, -8(x2)	# 2382
	sw		x4, -12(x2)	# 2382
	sw		x9, -16(x2)	# 2382
	sw		x7, -20(x2)	# 2382
	addi	x4, x6, 0
	sw		x1, -24(x2)	# 2382
	addi	x2, x2, -28	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 28	# 2382
	lw		x1, -24(x2)	# 2382
	addi	x5, x4, 0	# 2382
	lw		x4, -20(x2)	# 2383
	mul		x4, x30, x4	# 2383
	addi	x4, x4, 50000	# 2383
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
	lw		x5, -12(x2)	# 2396
	mul		x6, x30, x5	# 2396
	addi	x6, x6, 50716	# 2396
	sw		x4, 0(x6)	# 2396
	mul		x4, x30, x5	# 2397
	addi	x4, x4, 50716	# 2397
	lw		x4, 0(x4)	# 2397
	addi	x6, x0, 118	# 2397
	lw		x29, -8(x2)	# 2397
	addi	x5, x6, 0
	sw		x1, -28(x2)	# 2397
	addi	x2, x2, -32	# 2397
	lw		x31, 0(x29)	# 2397
	jalr	x1, x31, 0	# 2397
	addi	x2, x2, 32	# 2397
	lw		x1, -28(x2)	# 2397
	lw		x4, -4(x2)	# 2398
	lw		x5, -12(x2)	# 2398
	sub		x4, x5, x4	# 2398
	lw		x29, 0(x2)	# 2398
	lw		x31, 0(x29)	# 2398
	jalr	x0, x31, 0	# 2398
init_dirvec_constants.2999.12497:
	lw		x6, 12(x29)	# 2407
	lw		x7, 8(x29)	# 2407
	lw		x8, 4(x29)	# 2407
	ble		x7, x5, ble.23310	# 2407
	jalr	x0, x1, 0	# 2410
ble.23310:
	mul		x9, x30, x5	# 2408
	add		x9, x4, x9	# 2408
	lw		x9, 0(x9)	# 2408
	mul		x7, x30, x7	# 1287
	addi	x7, x7, 50000	# 1287
	lw		x7, 0(x7)	# 1287
	sub		x7, x7, x8	# 1287
	sw		x4, 0(x2)	# 1287
	sw		x29, -4(x2)	# 1287
	sw		x8, -8(x2)	# 1287
	sw		x5, -12(x2)	# 1287
	addi	x5, x7, 0
	addi	x4, x9, 0
	addi	x29, x6, 0
	sw		x1, -16(x2)	# 1287
	addi	x2, x2, -20	# 1287
	lw		x31, 0(x29)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 20	# 1287
	lw		x1, -16(x2)	# 1287
	lw		x4, -8(x2)	# 2409
	lw		x5, -12(x2)	# 2409
	sub		x5, x5, x4	# 2409
	lw		x4, 0(x2)	# 2409
	lw		x29, -4(x2)	# 2409
	lw		x31, 0(x29)	# 2409
	jalr	x0, x31, 0	# 2409
init_vecset_constants.3002.12500:
	lw		x5, 12(x29)	# 2414
	lw		x6, 8(x29)	# 2414
	lw		x7, 4(x29)	# 2414
	ble		x6, x4, ble.23312	# 2414
	jalr	x0, x1, 0	# 2417
ble.23312:
	mul		x6, x30, x4	# 2415
	addi	x6, x6, 50716	# 2415
	lw		x6, 0(x6)	# 2415
	addi	x8, x0, 119	# 2415
	sw		x29, 0(x2)	# 2415
	sw		x7, -4(x2)	# 2415
	sw		x4, -8(x2)	# 2415
	addi	x4, x6, 0
	addi	x29, x5, 0
	addi	x5, x8, 0
	sw		x1, -12(x2)	# 2415
	addi	x2, x2, -16	# 2415
	lw		x31, 0(x29)	# 2415
	jalr	x1, x31, 0	# 2415
	addi	x2, x2, 16	# 2415
	lw		x1, -12(x2)	# 2415
	lw		x4, -4(x2)	# 2416
	lw		x5, -8(x2)	# 2416
	sub		x4, x5, x4	# 2416
	lw		x29, 0(x2)	# 2416
	lw		x31, 0(x29)	# 2416
	jalr	x0, x31, 0	# 2416
setup_rect_reflection.3013.12502:
	lw		x6, 24(x29)	# 2441
	lw		x7, 20(x29)	# 2441
	lw		x8, 16(x29)	# 2441
	lw		x9, 12(x29)	# 2441
	lw		x10, 8(x29)	# 2441
	flw		f1, 4(x29)	# 2441
	addi	x11, x0, 4	# 2441
	mul		x4, x4, x11	# 2441
	mul		x11, x30, x9	# 2442
	addi	x11, x11, 51736	# 2442
	lw		x11, 0(x11)	# 2442
	fadd	f2, f0, f16	# 2443
	lw		x5, 28(x5)	# 461
	mul		x12, x30, x9	# 466
	add		x5, x5, x12	# 466
	flw		f3, 0(x5)	# 466
	fsub	f2, f2, f3	# 2443
	mul		x5, x30, x9	# 2444
	addi	x5, x5, 50312	# 2444
	flw		f3, 0(x5)	# 2444
	fsub	f4, f0, f3	# 123
	mul		x5, x30, x10	# 2445
	addi	x5, x5, 50312	# 2445
	flw		f5, 0(x5)	# 2445
	fsub	f5, f0, f5	# 123
	mul		x5, x30, x7	# 2446
	addi	x5, x5, 50312	# 2446
	flw		f6, 0(x5)	# 2446
	fsub	f6, f0, f6	# 123
	add		x5, x4, x10	# 2447
	fsw		f4, 0(x2)	# 2382
	fsw		f1, -4(x2)	# 2382
	sw		x8, -8(x2)	# 2382
	sw		x4, -12(x2)	# 2382
	sw		x11, -16(x2)	# 2382
	sw		x5, -20(x2)	# 2382
	fsw		f2, -24(x2)	# 2382
	sw		x6, -28(x2)	# 2382
	fsw		f6, -32(x2)	# 2382
	sw		x7, -36(x2)	# 2382
	fsw		f5, -40(x2)	# 2382
	sw		x10, -44(x2)	# 2382
	fsw		f3, -48(x2)	# 2382
	sw		x9, -52(x2)	# 2382
	addi	x4, x8, 0
	sw		x1, -56(x2)	# 2382
	addi	x2, x2, -60	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 60	# 2382
	lw		x1, -56(x2)	# 2382
	addi	x5, x4, 0	# 2382
	lw		x4, -52(x2)	# 2383
	mul		x6, x30, x4	# 2383
	addi	x6, x6, 50000	# 2383
	lw		x6, 0(x6)	# 2383
	sw		x5, -56(x2)	# 2383
	addi	x4, x6, 0
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
	lw		x6, -52(x2)	# 240
	mul		x7, x30, x6	# 240
	add		x7, x4, x7	# 240
	flw		f1, -48(x2)	# 240
	fsw		f1, 0(x7)	# 240
	lw		x7, -44(x2)	# 241
	mul		x8, x30, x7	# 241
	add		x8, x4, x8	# 241
	flw		f1, -40(x2)	# 241
	fsw		f1, 0(x8)	# 241
	lw		x8, -36(x2)	# 242
	mul		x9, x30, x8	# 242
	add		x4, x4, x9	# 242
	flw		f2, -32(x2)	# 242
	fsw		f2, 0(x4)	# 242
	mul		x4, x30, x6	# 1287
	addi	x4, x4, 50000	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x4, x4, x7	# 1287
	lw		x29, -28(x2)	# 1287
	sw		x5, -60(x2)	# 1287
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -64(x2)	# 1287
	addi	x2, x2, -68	# 1287
	lw		x31, 0(x29)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 68	# 1287
	lw		x1, -64(x2)	# 1287
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f1, -24(x2)	# 2436
	fsw		f1, 8(x4)	# 2436
	lw		x5, -60(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -20(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	lw		x5, -16(x2)	# 2436
	mul		x6, x30, x5	# 2436
	addi	x6, x6, 51016	# 2436
	sw		x4, 0(x6)	# 2436
	lw		x4, -44(x2)	# 2448
	add		x6, x5, x4	# 2448
	lw		x7, -36(x2)	# 2448
	lw		x8, -12(x2)	# 2448
	add		x9, x8, x7	# 2448
	mul		x10, x30, x4	# 2448
	addi	x10, x10, 50312	# 2448
	flw		f2, 0(x10)	# 2448
	flw		f3, -4(x2)	# 2382
	lw		x10, -8(x2)	# 2382
	sw		x6, -64(x2)	# 2382
	sw		x9, -68(x2)	# 2382
	fsw		f2, -72(x2)	# 2382
	addi	x4, x10, 0
	fadd	f1, f0, f3
	sw		x1, -76(x2)	# 2382
	addi	x2, x2, -80	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 80	# 2382
	lw		x1, -76(x2)	# 2382
	addi	x5, x4, 0	# 2382
	lw		x4, -52(x2)	# 2383
	mul		x6, x30, x4	# 2383
	addi	x6, x6, 50000	# 2383
	lw		x6, 0(x6)	# 2383
	sw		x5, -76(x2)	# 2383
	addi	x4, x6, 0
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
	lw		x6, -52(x2)	# 240
	mul		x7, x30, x6	# 240
	add		x7, x4, x7	# 240
	flw		f1, 0(x2)	# 240
	fsw		f1, 0(x7)	# 240
	lw		x7, -44(x2)	# 241
	mul		x8, x30, x7	# 241
	add		x8, x4, x8	# 241
	flw		f2, -72(x2)	# 241
	fsw		f2, 0(x8)	# 241
	lw		x8, -36(x2)	# 242
	mul		x9, x30, x8	# 242
	add		x4, x4, x9	# 242
	flw		f2, -32(x2)	# 242
	fsw		f2, 0(x4)	# 242
	mul		x4, x30, x6	# 1287
	addi	x4, x4, 50000	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x4, x4, x7	# 1287
	lw		x29, -28(x2)	# 1287
	sw		x5, -80(x2)	# 1287
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -84(x2)	# 1287
	addi	x2, x2, -88	# 1287
	lw		x31, 0(x29)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 88	# 1287
	lw		x1, -84(x2)	# 1287
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f1, -24(x2)	# 2436
	fsw		f1, 8(x4)	# 2436
	lw		x5, -80(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -68(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	lw		x5, -64(x2)	# 2436
	mul		x5, x30, x5	# 2436
	addi	x5, x5, 51016	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -36(x2)	# 2449
	lw		x5, -16(x2)	# 2449
	add		x6, x5, x4	# 2449
	lw		x7, -8(x2)	# 2449
	lw		x8, -12(x2)	# 2449
	add		x8, x8, x7	# 2449
	mul		x9, x30, x4	# 2449
	addi	x9, x9, 50312	# 2449
	flw		f2, 0(x9)	# 2449
	flw		f3, -4(x2)	# 2382
	sw		x6, -84(x2)	# 2382
	sw		x8, -88(x2)	# 2382
	fsw		f2, -92(x2)	# 2382
	addi	x4, x7, 0
	fadd	f1, f0, f3
	sw		x1, -96(x2)	# 2382
	addi	x2, x2, -100	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 100	# 2382
	lw		x1, -96(x2)	# 2382
	addi	x5, x4, 0	# 2382
	lw		x4, -52(x2)	# 2383
	mul		x6, x30, x4	# 2383
	addi	x6, x6, 50000	# 2383
	lw		x6, 0(x6)	# 2383
	sw		x5, -96(x2)	# 2383
	addi	x4, x6, 0
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
	lw		x6, -52(x2)	# 240
	mul		x7, x30, x6	# 240
	add		x7, x4, x7	# 240
	flw		f1, 0(x2)	# 240
	fsw		f1, 0(x7)	# 240
	lw		x7, -44(x2)	# 241
	mul		x8, x30, x7	# 241
	add		x8, x4, x8	# 241
	flw		f1, -40(x2)	# 241
	fsw		f1, 0(x8)	# 241
	lw		x8, -36(x2)	# 242
	mul		x8, x30, x8	# 242
	add		x4, x4, x8	# 242
	flw		f1, -92(x2)	# 242
	fsw		f1, 0(x4)	# 242
	mul		x4, x30, x6	# 1287
	addi	x4, x4, 50000	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x4, x4, x7	# 1287
	lw		x29, -28(x2)	# 1287
	sw		x5, -100(x2)	# 1287
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -104(x2)	# 1287
	addi	x2, x2, -108	# 1287
	lw		x31, 0(x29)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 108	# 1287
	lw		x1, -104(x2)	# 1287
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f1, -24(x2)	# 2436
	fsw		f1, 8(x4)	# 2436
	lw		x5, -100(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -88(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	lw		x5, -84(x2)	# 2436
	mul		x5, x30, x5	# 2436
	addi	x5, x5, 51016	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -8(x2)	# 2450
	lw		x5, -16(x2)	# 2450
	add		x4, x5, x4	# 2450
	lw		x5, -52(x2)	# 2450
	mul		x5, x30, x5	# 2450
	addi	x5, x5, 51736	# 2450
	sw		x4, 0(x5)	# 2450
	jalr	x0, x1, 0	# 2450
setup_surface_reflection.3016.12505:
	lw		x6, 24(x29)	# 2455
	lw		x7, 20(x29)	# 2455
	lw		x8, 16(x29)	# 2455
	lw		x9, 12(x29)	# 2455
	lw		x10, 8(x29)	# 2455
	flw		f1, 4(x29)	# 2455
	addi	x11, x0, 4	# 2455
	mul		x4, x4, x11	# 2455
	add		x4, x4, x10	# 2455
	mul		x11, x30, x9	# 2456
	addi	x11, x11, 51736	# 2456
	lw		x11, 0(x11)	# 2456
	fadd	f2, f0, f16	# 2457
	lw		x12, 28(x5)	# 461
	mul		x13, x30, x9	# 466
	add		x12, x12, x13	# 466
	flw		f3, 0(x12)	# 466
	fsub	f2, f2, f3	# 2457
	lw		x12, 16(x5)	# 421
	mul		x13, x30, x9	# 292
	addi	x13, x13, 50312	# 292
	flw		f3, 0(x13)	# 292
	mul		x13, x30, x9	# 292
	add		x13, x12, x13	# 292
	flw		f4, 0(x13)	# 292
	fmul	f4, f3, f4	# 292
	mul		x13, x30, x10	# 292
	addi	x13, x13, 50312	# 292
	flw		f5, 0(x13)	# 292
	mul		x13, x30, x10	# 292
	add		x13, x12, x13	# 292
	flw		f6, 0(x13)	# 292
	fmul	f6, f5, f6	# 292
	fadd	f4, f4, f6	# 292
	mul		x13, x30, x7	# 292
	addi	x13, x13, 50312	# 292
	flw		f6, 0(x13)	# 292
	mul		x13, x30, x7	# 292
	add		x12, x12, x13	# 292
	flw		f7, 0(x12)	# 292
	fmul	f7, f6, f7	# 292
	fadd	f4, f4, f7	# 292
	lui		x12, %hi(l.18345)	# 2461
	ori		x12, x0, %lo(l.18345)	# 2461
	flw		f7, 0(x12)	# 2461
	lw		x12, 16(x5)	# 391
	mul		x13, x30, x9	# 396
	add		x12, x12, x13	# 396
	flw		f8, 0(x12)	# 396
	fmul	f8, f7, f8	# 2461
	fmul	f8, f8, f4	# 2461
	fsub	f3, f8, f3	# 2461
	lw		x12, 16(x5)	# 401
	mul		x13, x30, x10	# 406
	add		x12, x12, x13	# 406
	flw		f8, 0(x12)	# 406
	fmul	f8, f7, f8	# 2462
	fmul	f8, f8, f4	# 2462
	fsub	f5, f8, f5	# 2462
	lw		x5, 16(x5)	# 411
	mul		x12, x30, x7	# 416
	add		x5, x5, x12	# 416
	flw		f8, 0(x5)	# 416
	fmul	f7, f7, f8	# 2463
	fmul	f4, f7, f4	# 2463
	fsub	f4, f4, f6	# 2463
	sw		x11, 0(x2)	# 2382
	sw		x4, -4(x2)	# 2382
	fsw		f2, -8(x2)	# 2382
	sw		x6, -12(x2)	# 2382
	fsw		f4, -16(x2)	# 2382
	sw		x7, -20(x2)	# 2382
	fsw		f5, -24(x2)	# 2382
	sw		x10, -28(x2)	# 2382
	fsw		f3, -32(x2)	# 2382
	sw		x9, -36(x2)	# 2382
	addi	x4, x8, 0
	sw		x1, -40(x2)	# 2382
	addi	x2, x2, -44	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 44	# 2382
	lw		x1, -40(x2)	# 2382
	addi	x5, x4, 0	# 2382
	lw		x4, -36(x2)	# 2383
	mul		x6, x30, x4	# 2383
	addi	x6, x6, 50000	# 2383
	lw		x6, 0(x6)	# 2383
	sw		x5, -40(x2)	# 2383
	addi	x4, x6, 0
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
	lw		x6, -36(x2)	# 240
	mul		x7, x30, x6	# 240
	add		x7, x4, x7	# 240
	flw		f1, -32(x2)	# 240
	fsw		f1, 0(x7)	# 240
	lw		x7, -28(x2)	# 241
	mul		x8, x30, x7	# 241
	add		x8, x4, x8	# 241
	flw		f1, -24(x2)	# 241
	fsw		f1, 0(x8)	# 241
	lw		x8, -20(x2)	# 242
	mul		x8, x30, x8	# 242
	add		x4, x4, x8	# 242
	flw		f1, -16(x2)	# 242
	fsw		f1, 0(x4)	# 242
	mul		x4, x30, x6	# 1287
	addi	x4, x4, 50000	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x4, x4, x7	# 1287
	lw		x29, -12(x2)	# 1287
	sw		x5, -44(x2)	# 1287
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -48(x2)	# 1287
	addi	x2, x2, -52	# 1287
	lw		x31, 0(x29)	# 1287
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
	lw		x5, 0(x2)	# 2436
	mul		x6, x30, x5	# 2436
	addi	x6, x6, 51016	# 2436
	sw		x4, 0(x6)	# 2436
	lw		x4, -28(x2)	# 2464
	add		x4, x5, x4	# 2464
	lw		x5, -36(x2)	# 2464
	mul		x5, x30, x5	# 2464
	addi	x5, x5, 51736	# 2464
	sw		x4, 0(x5)	# 2464
	jalr	x0, x1, 0	# 2464
rt.3021.12508:
	lw		x7, 84(x29)	# 2492
	lw		x8, 80(x29)	# 2492
	lw		x9, 76(x29)	# 2492
	lw		x10, 72(x29)	# 2492
	lw		x11, 68(x29)	# 2492
	lw		x12, 64(x29)	# 2492
	lw		x13, 60(x29)	# 2492
	lw		x14, 56(x29)	# 2492
	lw		x15, 52(x29)	# 2492
	lw		x16, 48(x29)	# 2492
	lw		x17, 44(x29)	# 2492
	lw		x18, 40(x29)	# 2492
	lw		x19, 36(x29)	# 2492
	lw		x20, 32(x29)	# 2492
	lw		x21, 28(x29)	# 2492
	lw		x22, 24(x29)	# 2492
	lw		x23, 20(x29)	# 2492
	lw		x24, 16(x29)	# 2492
	lw		x25, 12(x29)	# 2492
	lw		x26, 8(x29)	# 2492
	lw		x27, 4(x29)	# 2492
	mul		x29, x30, x26	# 2492
	addi	x29, x29, 50616	# 2492
	sw		x4, 0(x29)	# 2492
	mul		x29, x30, x27	# 2493
	addi	x29, x29, 50616	# 2493
	sw		x5, 0(x29)	# 2493
	div		x29, x4, x25	# 2494
	mul		x31, x30, x26	# 2494
	addi	x31, x31, 50624	# 2494
	sw		x29, 0(x31)	# 2494
	div		x5, x5, x25	# 2495
	mul		x29, x30, x27	# 2495
	addi	x29, x29, 50624	# 2495
	sw		x5, 0(x29)	# 2495
	lui		x5, %hi(l.20603)	# 2496
	ori		x5, x0, %lo(l.20603)	# 2496
	flw		f1, 0(x5)	# 2496
	sw		x10, 0(x2)	# 2496
	sw		x15, -4(x2)	# 2496
	sw		x20, -8(x2)	# 2496
	sw		x8, -12(x2)	# 2496
	sw		x9, -16(x2)	# 2496
	sw		x16, -20(x2)	# 2496
	sw		x17, -24(x2)	# 2496
	sw		x18, -28(x2)	# 2496
	sw		x24, -32(x2)	# 2496
	sw		x22, -36(x2)	# 2496
	sw		x6, -40(x2)	# 2496
	sw		x12, -44(x2)	# 2496
	sw		x14, -48(x2)	# 2496
	sw		x13, -52(x2)	# 2496
	sw		x23, -56(x2)	# 2496
	sw		x27, -60(x2)	# 2496
	sw		x7, -64(x2)	# 2496
	sw		x11, -68(x2)	# 2496
	sw		x19, -72(x2)	# 2496
	sw		x25, -76(x2)	# 2496
	sw		x21, -80(x2)	# 2496
	sw		x26, -84(x2)	# 2496
	fsw		f1, -88(x2)	# 2496
	addi	x29, x20, 0
	sw		x1, -92(x2)	# 2496
	addi	x2, x2, -96	# 2496
	lw		x31, 0(x29)	# 2496
	jalr	x1, x31, 0	# 2496
	addi	x2, x2, 96	# 2496
	lw		x1, -92(x2)	# 2496
	flw		f2, -88(x2)	# 2496
	fdiv	f1, f2, f1	# 2496
	lw		x4, -84(x2)	# 2496
	mul		x5, x30, x4	# 2496
	addi	x5, x5, 50632	# 2496
	fsw		f1, 0(x5)	# 2496
	mul		x5, x30, x4	# 2306
	addi	x5, x5, 50616	# 2306
	lw		x5, 0(x5)	# 2306
	lw		x29, -80(x2)	# 2306
	sw		x5, -92(x2)	# 2306
	sw		x1, -96(x2)	# 2306
	addi	x2, x2, -100	# 2306
	lw		x31, 0(x29)	# 2306
	jalr	x1, x31, 0	# 2306
	addi	x2, x2, 100	# 2306
	lw		x1, -96(x2)	# 2306
	addi	x5, x4, 0	# 2306
	lw		x4, -92(x2)	# 2306
	sw		x1, -96(x2)	# 2306
	addi	x2, x2, -100	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 100	# 2306
	lw		x1, -96(x2)	# 2306
	lw		x5, -84(x2)	# 2307
	mul		x6, x30, x5	# 2307
	addi	x6, x6, 50616	# 2307
	lw		x6, 0(x6)	# 2307
	lw		x7, -76(x2)	# 2307
	sub		x6, x6, x7	# 2307
	lw		x29, -72(x2)	# 2307
	addi	x5, x6, 0
	sw		x1, -96(x2)	# 2307
	addi	x2, x2, -100	# 2307
	lw		x31, 0(x29)	# 2307
	jalr	x1, x31, 0	# 2307
	addi	x2, x2, 100	# 2307
	lw		x1, -96(x2)	# 2307
	lw		x5, -84(x2)	# 2306
	mul		x6, x30, x5	# 2306
	addi	x6, x6, 50616	# 2306
	lw		x6, 0(x6)	# 2306
	lw		x29, -80(x2)	# 2306
	sw		x4, -96(x2)	# 2306
	sw		x6, -100(x2)	# 2306
	sw		x1, -104(x2)	# 2306
	addi	x2, x2, -108	# 2306
	lw		x31, 0(x29)	# 2306
	jalr	x1, x31, 0	# 2306
	addi	x2, x2, 108	# 2306
	lw		x1, -104(x2)	# 2306
	addi	x5, x4, 0	# 2306
	lw		x4, -100(x2)	# 2306
	sw		x1, -104(x2)	# 2306
	addi	x2, x2, -108	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 108	# 2306
	lw		x1, -104(x2)	# 2306
	lw		x5, -84(x2)	# 2307
	mul		x6, x30, x5	# 2307
	addi	x6, x6, 50616	# 2307
	lw		x6, 0(x6)	# 2307
	lw		x7, -76(x2)	# 2307
	sub		x6, x6, x7	# 2307
	lw		x29, -72(x2)	# 2307
	addi	x5, x6, 0
	sw		x1, -104(x2)	# 2307
	addi	x2, x2, -108	# 2307
	lw		x31, 0(x29)	# 2307
	jalr	x1, x31, 0	# 2307
	addi	x2, x2, 108	# 2307
	lw		x1, -104(x2)	# 2307
	lw		x5, -84(x2)	# 2306
	mul		x6, x30, x5	# 2306
	addi	x6, x6, 50616	# 2306
	lw		x6, 0(x6)	# 2306
	lw		x29, -80(x2)	# 2306
	sw		x4, -104(x2)	# 2306
	sw		x6, -108(x2)	# 2306
	sw		x1, -112(x2)	# 2306
	addi	x2, x2, -116	# 2306
	lw		x31, 0(x29)	# 2306
	jalr	x1, x31, 0	# 2306
	addi	x2, x2, 116	# 2306
	lw		x1, -112(x2)	# 2306
	addi	x5, x4, 0	# 2306
	lw		x4, -108(x2)	# 2306
	sw		x1, -112(x2)	# 2306
	addi	x2, x2, -116	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 116	# 2306
	lw		x1, -112(x2)	# 2306
	lw		x5, -84(x2)	# 2307
	mul		x6, x30, x5	# 2307
	addi	x6, x6, 50616	# 2307
	lw		x6, 0(x6)	# 2307
	lw		x7, -76(x2)	# 2307
	sub		x6, x6, x7	# 2307
	lw		x29, -72(x2)	# 2307
	addi	x5, x6, 0
	sw		x1, -112(x2)	# 2307
	addi	x2, x2, -116	# 2307
	lw		x31, 0(x29)	# 2307
	jalr	x1, x31, 0	# 2307
	addi	x2, x2, 116	# 2307
	lw		x1, -112(x2)	# 2307
	lw		x29, -68(x2)	# 904
	sw		x4, -112(x2)	# 904
	sw		x1, -116(x2)	# 904
	addi	x2, x2, -120	# 904
	lw		x31, 0(x29)	# 904
	jalr	x1, x31, 0	# 904
	addi	x2, x2, 120	# 904
	lw		x1, -116(x2)	# 904
	sw		x1, -116(x2)	# 716
	addi	x2, x2, -120	# 716
	jal		x1, min_caml_read_int	# 716
	addi	x2, x2, 120	# 716
	lw		x1, -116(x2)	# 716
	sw		x1, -116(x2)	# 719
	addi	x2, x2, -120	# 719
	jal		x1, min_caml_read_float	# 719
	addi	x2, x2, 120	# 719
	lw		x1, -116(x2)	# 719
	fadd	f2, f0, f20	# 677
	fmul	f1, f1, f2	# 677
	lw		x29, -64(x2)	# 720
	fsw		f1, -116(x2)	# 720
	fsw		f2, -120(x2)	# 720
	sw		x1, -124(x2)	# 720
	addi	x2, x2, -128	# 720
	lw		x31, 0(x29)	# 720
	jalr	x1, x31, 0	# 720
	addi	x2, x2, 128	# 720
	lw		x1, -124(x2)	# 720
	fsub	f1, f0, f1	# 123
	lw		x4, -60(x2)	# 721
	mul		x5, x30, x4	# 721
	addi	x5, x5, 50312	# 721
	fsw		f1, 0(x5)	# 721
	sw		x1, -124(x2)	# 722
	addi	x2, x2, -128	# 722
	jal		x1, min_caml_read_float	# 722
	addi	x2, x2, 128	# 722
	lw		x1, -124(x2)	# 722
	flw		f2, -120(x2)	# 677
	fmul	f1, f1, f2	# 677
	flw		f2, -116(x2)	# 723
	lw		x29, -56(x2)	# 723
	fsw		f1, -124(x2)	# 723
	fadd	f1, f0, f2
	sw		x1, -128(x2)	# 723
	addi	x2, x2, -132	# 723
	lw		x31, 0(x29)	# 723
	jalr	x1, x31, 0	# 723
	addi	x2, x2, 132	# 723
	lw		x1, -128(x2)	# 723
	flw		f2, -124(x2)	# 724
	lw		x29, -64(x2)	# 724
	fsw		f1, -128(x2)	# 724
	fadd	f1, f0, f2
	sw		x1, -132(x2)	# 724
	addi	x2, x2, -136	# 724
	lw		x31, 0(x29)	# 724
	jalr	x1, x31, 0	# 724
	addi	x2, x2, 136	# 724
	lw		x1, -132(x2)	# 724
	flw		f2, -128(x2)	# 725
	fmul	f1, f2, f1	# 725
	lw		x4, -84(x2)	# 725
	mul		x5, x30, x4	# 725
	addi	x5, x5, 50312	# 725
	fsw		f1, 0(x5)	# 725
	flw		f1, -124(x2)	# 726
	lw		x29, -56(x2)	# 726
	sw		x1, -132(x2)	# 726
	addi	x2, x2, -136	# 726
	lw		x31, 0(x29)	# 726
	jalr	x1, x31, 0	# 726
	addi	x2, x2, 136	# 726
	lw		x1, -132(x2)	# 726
	flw		f2, -128(x2)	# 727
	fmul	f1, f2, f1	# 727
	lw		x4, -76(x2)	# 727
	mul		x5, x30, x4	# 727
	addi	x5, x5, 50312	# 727
	fsw		f1, 0(x5)	# 727
	sw		x1, -132(x2)	# 728
	addi	x2, x2, -136	# 728
	jal		x1, min_caml_read_float	# 728
	addi	x2, x2, 136	# 728
	lw		x1, -132(x2)	# 728
	lw		x4, -84(x2)	# 728
	mul		x5, x30, x4	# 728
	addi	x5, x5, 50324	# 728
	fsw		f1, 0(x5)	# 728
	lw		x29, -52(x2)	# 870
	sw		x1, -132(x2)	# 870
	addi	x2, x2, -136	# 870
	lw		x31, 0(x29)	# 870
	jalr	x1, x31, 0	# 870
	addi	x2, x2, 136	# 870
	lw		x1, -132(x2)	# 870
	lw		x4, -84(x2)	# 907
	lw		x29, -48(x2)	# 907
	sw		x1, -132(x2)	# 907
	addi	x2, x2, -136	# 907
	lw		x31, 0(x29)	# 907
	jalr	x1, x31, 0	# 907
	addi	x2, x2, 136	# 907
	lw		x1, -132(x2)	# 907
	lw		x4, -84(x2)	# 908
	lw		x29, -44(x2)	# 908
	sw		x1, -132(x2)	# 908
	addi	x2, x2, -136	# 908
	lw		x31, 0(x29)	# 908
	jalr	x1, x31, 0	# 908
	addi	x2, x2, 136	# 908
	lw		x1, -132(x2)	# 908
	lw		x5, -84(x2)	# 908
	mul		x6, x30, x5	# 908
	addi	x6, x6, 50536	# 908
	sw		x4, 0(x6)	# 908
	addi	x4, x0, 80	# 2115
	sw		x1, -132(x2)	# 2115
	addi	x2, x2, -136	# 2115
	jal		x1, min_caml_print_char	# 2115
	addi	x2, x2, 136	# 2115
	lw		x1, -132(x2)	# 2115
	lw		x4, -40(x2)	# 2116
	addi	x5, x4, 48	# 2116
	addi	x4, x5, 0
	sw		x1, -132(x2)	# 2116
	addi	x2, x2, -136	# 2116
	jal		x1, min_caml_print_char	# 2116
	addi	x2, x2, 136	# 2116
	lw		x1, -132(x2)	# 2116
	addi	x4, x0, 10	# 2117
	sw		x4, -132(x2)	# 2117
	sw		x1, -136(x2)	# 2117
	addi	x2, x2, -140	# 2117
	jal		x1, min_caml_print_char	# 2117
	addi	x2, x2, 140	# 2117
	lw		x1, -136(x2)	# 2117
	lw		x4, -84(x2)	# 2118
	mul		x5, x30, x4	# 2118
	addi	x5, x5, 50616	# 2118
	lw		x5, 0(x5)	# 2118
	addi	x4, x5, 0
	sw		x1, -136(x2)	# 2118
	addi	x2, x2, -140	# 2118
	jal		x1, min_caml_print_int	# 2118
	addi	x2, x2, 140	# 2118
	lw		x1, -136(x2)	# 2118
	addi	x4, x0, 32	# 2119
	sw		x4, -136(x2)	# 2119
	sw		x1, -140(x2)	# 2119
	addi	x2, x2, -144	# 2119
	jal		x1, min_caml_print_char	# 2119
	addi	x2, x2, 144	# 2119
	lw		x1, -140(x2)	# 2119
	lw		x4, -60(x2)	# 2120
	mul		x5, x30, x4	# 2120
	addi	x5, x5, 50616	# 2120
	lw		x5, 0(x5)	# 2120
	addi	x4, x5, 0
	sw		x1, -140(x2)	# 2120
	addi	x2, x2, -144	# 2120
	jal		x1, min_caml_print_int	# 2120
	addi	x2, x2, 144	# 2120
	lw		x1, -140(x2)	# 2120
	lw		x4, -136(x2)	# 2121
	sw		x1, -140(x2)	# 2121
	addi	x2, x2, -144	# 2121
	jal		x1, min_caml_print_char	# 2121
	addi	x2, x2, 144	# 2121
	lw		x1, -140(x2)	# 2121
	addi	x4, x0, 255	# 2122
	sw		x1, -140(x2)	# 2122
	addi	x2, x2, -144	# 2122
	jal		x1, min_caml_print_int	# 2122
	addi	x2, x2, 144	# 2122
	lw		x1, -140(x2)	# 2122
	lw		x4, -132(x2)	# 2123
	sw		x1, -140(x2)	# 2123
	addi	x2, x2, -144	# 2123
	jal		x1, min_caml_print_char	# 2123
	addi	x2, x2, 144	# 2123
	lw		x1, -140(x2)	# 2123
	addi	x4, x0, 4	# 2421
	lw		x29, -36(x2)	# 2421
	sw		x4, -140(x2)	# 2421
	sw		x1, -144(x2)	# 2421
	addi	x2, x2, -148	# 2421
	lw		x31, 0(x29)	# 2421
	jalr	x1, x31, 0	# 2421
	addi	x2, x2, 148	# 2421
	lw		x1, -144(x2)	# 2421
	addi	x4, x0, 9	# 2422
	lw		x5, -84(x2)	# 2422
	lw		x29, -32(x2)	# 2422
	addi	x6, x5, 0
	sw		x1, -144(x2)	# 2422
	addi	x2, x2, -148	# 2422
	lw		x31, 0(x29)	# 2422
	jalr	x1, x31, 0	# 2422
	addi	x2, x2, 148	# 2422
	lw		x1, -144(x2)	# 2422
	lw		x4, -140(x2)	# 2423
	lw		x29, -28(x2)	# 2423
	sw		x1, -144(x2)	# 2423
	addi	x2, x2, -148	# 2423
	lw		x31, 0(x29)	# 2423
	jalr	x1, x31, 0	# 2423
	addi	x2, x2, 148	# 2423
	lw		x1, -144(x2)	# 2423
	lw		x4, -84(x2)	# 259
	mul		x5, x30, x4	# 259
	addi	x5, x5, 50312	# 259
	flw		f1, 0(x5)	# 259
	mul		x5, x30, x4	# 259
	addi	x5, x5, 50736	# 259
	fsw		f1, 0(x5)	# 259
	lw		x5, -60(x2)	# 260
	mul		x6, x30, x5	# 260
	addi	x6, x6, 50312	# 260
	flw		f1, 0(x6)	# 260
	mul		x6, x30, x5	# 260
	addi	x6, x6, 50736	# 260
	fsw		f1, 0(x6)	# 260
	lw		x6, -76(x2)	# 261
	mul		x7, x30, x6	# 261
	addi	x7, x7, 50312	# 261
	flw		f1, 0(x7)	# 261
	mul		x7, x30, x6	# 261
	addi	x7, x7, 50736	# 261
	fsw		f1, 0(x7)	# 261
	mul		x7, x30, x4	# 1287
	addi	x7, x7, 50000	# 1287
	lw		x7, 0(x7)	# 1287
	sub		x7, x7, x5	# 1287
	lw		x8, -20(x2)	# 1287
	lw		x29, -24(x2)	# 1287
	addi	x5, x7, 0
	addi	x4, x8, 0
	sw		x1, -144(x2)	# 1287
	addi	x2, x2, -148	# 1287
	lw		x31, 0(x29)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 148	# 1287
	lw		x1, -144(x2)	# 1287
	lw		x4, -84(x2)	# 2505
	mul		x5, x30, x4	# 2505
	addi	x5, x5, 50000	# 2505
	lw		x5, 0(x5)	# 2505
	lw		x6, -60(x2)	# 2505
	sub		x5, x5, x6	# 2505
	ble		x4, x5, ble.23317	# 2470
	jal		x0, ble_cont.23316	# 2470
ble.23317:
	mul		x7, x30, x5	# 2471
	addi	x7, x7, 50048	# 2471
	lw		x7, 0(x7)	# 2471
	lw		x8, 8(x7)	# 363
	addi	x9, x0, 2	# 2472
	beq		x8, x9, beq.23319	# 2472
	jal		x0, beq_cont.23318	# 2472
beq.23319:
	lw		x8, 28(x7)	# 461
	mul		x10, x30, x4	# 466
	add		x8, x8, x10	# 466
	flw		f1, 0(x8)	# 466
	fadd	f2, f0, f16	# 2473
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.23321	# 125
	jal		x0, fle_cont.23320	# 125
fle_else.23321:
	lw		x8, 4(x7)	# 353
	addi	x10, x0, 1	# 2476
	beq		x8, x10, beq.23323	# 2476
	beq		x8, x9, beq.23325	# 2478
	jal		x0, beq_cont.23324	# 2478
beq.23325:
	lw		x29, -12(x2)	# 2479
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -144(x2)	# 2479
	addi	x2, x2, -148	# 2479
	lw		x31, 0(x29)	# 2479
	jalr	x1, x31, 0	# 2479
	addi	x2, x2, 148	# 2479
	lw		x1, -144(x2)	# 2479
beq_cont.23324:
	jal		x0, beq_cont.23322	# 2476
beq.23323:
	lw		x29, -16(x2)	# 2477
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -144(x2)	# 2477
	addi	x2, x2, -148	# 2477
	lw		x31, 0(x29)	# 2477
	jalr	x1, x31, 0	# 2477
	addi	x2, x2, 148	# 2477
	lw		x1, -144(x2)	# 2477
beq_cont.23322:
fle_cont.23320:
beq_cont.23318:
ble_cont.23316:
	lw		x4, -84(x2)	# 2218
	mul		x5, x30, x4	# 2218
	addi	x5, x5, 50632	# 2218
	flw		f1, 0(x5)	# 2218
	lw		x5, -60(x2)	# 2218
	mul		x6, x30, x5	# 2218
	addi	x6, x6, 50624	# 2218
	lw		x6, 0(x6)	# 2218
	sub		x6, x4, x6	# 2218
	lw		x29, -8(x2)	# 2218
	fsw		f1, -144(x2)	# 2218
	addi	x4, x6, 0
	sw		x1, -148(x2)	# 2218
	addi	x2, x2, -152	# 2218
	lw		x31, 0(x29)	# 2218
	jalr	x1, x31, 0	# 2218
	addi	x2, x2, 152	# 2218
	lw		x1, -148(x2)	# 2218
	flw		f2, -144(x2)	# 2218
	fmul	f1, f2, f1	# 2218
	lw		x6, -84(x2)	# 2221
	mul		x4, x30, x6	# 2221
	addi	x4, x4, 50672	# 2221
	flw		f2, 0(x4)	# 2221
	fmul	f2, f1, f2	# 2221
	mul		x4, x30, x6	# 2221
	addi	x4, x4, 50684	# 2221
	flw		f3, 0(x4)	# 2221
	fadd	f2, f2, f3	# 2221
	lw		x4, -60(x2)	# 2222
	mul		x5, x30, x4	# 2222
	addi	x5, x5, 50672	# 2222
	flw		f3, 0(x5)	# 2222
	fmul	f3, f1, f3	# 2222
	mul		x5, x30, x4	# 2222
	addi	x5, x5, 50684	# 2222
	flw		f4, 0(x5)	# 2222
	fadd	f3, f3, f4	# 2222
	lw		x5, -76(x2)	# 2223
	mul		x7, x30, x5	# 2223
	addi	x7, x7, 50672	# 2223
	flw		f4, 0(x7)	# 2223
	fmul	f1, f1, f4	# 2223
	mul		x7, x30, x5	# 2223
	addi	x7, x7, 50684	# 2223
	flw		f4, 0(x7)	# 2223
	fadd	f1, f1, f4	# 2223
	mul		x7, x30, x6	# 2224
	addi	x7, x7, 50616	# 2224
	lw		x7, 0(x7)	# 2224
	sub		x4, x7, x4	# 2224
	lw		x7, -104(x2)	# 2224
	lw		x29, -4(x2)	# 2224
	addi	x5, x4, 0
	addi	x4, x7, 0
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -148(x2)	# 2224
	addi	x2, x2, -152	# 2224
	lw		x31, 0(x29)	# 2224
	jalr	x1, x31, 0	# 2224
	addi	x2, x2, 152	# 2224
	lw		x1, -148(x2)	# 2224
	lw		x4, -84(x2)	# 2507
	lw		x5, -96(x2)	# 2507
	lw		x6, -104(x2)	# 2507
	lw		x7, -112(x2)	# 2507
	lw		x8, -76(x2)	# 2507
	lw		x9, -40(x2)	# 2507
	lw		x29, 0(x2)	# 2507
	lw		x31, 0(x29)	# 2507
	jalr	x0, x31, 0	# 2507
min_caml_start:
	addi	x2, x2, -4
	addi	x30, x0, 4
	addi	x3, x0, 50000
	lui		x4, %hi(l.18422)
	ori		x4, x0, %lo(l.18422)
	flw		f0, 0(x4)
	lui		x4, %hi(l.18237)
	ori		x4, x0, %lo(l.18237)
	flw		f16, 0(x4)
	lui		x4, %hi(l.18247)
	ori		x4, x0, %lo(l.18247)
	flw		f17, 0(x4)
	lui		x4, %hi(l.18405)
	ori		x4, x0, %lo(l.18405)
	flw		f18, 0(x4)
	lui		x4, %hi(l.18958)
	ori		x4, x0, %lo(l.18958)
	flw		f19, 0(x4)
	lui		x4, %hi(l.18279)
	ori		x4, x0, %lo(l.18279)
	flw		f20, 0(x4)
	lui		x4, %hi(l.19355)
	ori		x4, x0, %lo(l.19355)
	flw		f21, 0(x4)
	lui		x4, %hi(l.18906)
	ori		x4, x0, %lo(l.18906)
	flw		f22, 0(x4)
	lui		x4, %hi(l.19642)
	ori		x4, x0, %lo(l.19642)
	flw		f23, 0(x4)
	lui		x4, %hi(l.18264)
	ori		x4, x0, %lo(l.18264)
	flw		f24, 0(x4)
	lui		x4, %hi(l.19287)
	ori		x4, x0, %lo(l.19287)
	flw		f25, 0(x4)
	lui		x4, %hi(l.19285)
	ori		x4, x0, %lo(l.19285)
	flw		f26, 0(x4)
	lui		x4, %hi(l.18249)
	ori		x4, x0, %lo(l.18249)
	flw		f27, 0(x4)
	lui		x4, %hi(l.18251)
	ori		x4, x0, %lo(l.18251)
	flw		f28, 0(x4)
	lui		x4, %hi(l.19282)
	ori		x4, x0, %lo(l.19282)
	flw		f29, 0(x4)
	lui		x4, %hi(l.19314)
	ori		x4, x0, %lo(l.19314)
	flw		f30, 0(x4)
	addi	x4, x0, 1	# 6
	addi	x5, x0, 0	# 6
	sw		x4, 0(x2)	# 6
	sw		x5, -4(x2)	# 6
	sw		x1, -8(x2)	# 6
	addi	x2, x2, -12	# 6
	jal		x1, min_caml_create_array	# 6
	addi	x2, x2, 12	# 6
	lw		x1, -8(x2)	# 6
	fadd	f1, f0, f0	# 11
	addi	x4, x0, 50004	# 11
	lw		x5, -4(x2)	# 11
	fsw		f1, -8(x2)	# 11
	sw		x4, -12(x2)	# 11
	addi	x4, x5, 0
	sw		x1, -16(x2)	# 11
	addi	x2, x2, -20	# 11
	jal		x1, min_caml_create_float_array	# 11
	addi	x2, x2, 20	# 11
	lw		x1, -16(x2)	# 11
	addi	x4, x0, 60	# 12
	addi	x5, x3, 0	# 12
	addi	x3, x3, 44	# 12
	lw		x6, -12(x2)	# 12
	sw		x6, 40(x5)	# 12
	sw		x6, 36(x5)	# 12
	sw		x6, 32(x5)	# 12
	sw		x6, 28(x5)	# 12
	lw		x7, -4(x2)	# 12
	sw		x7, 24(x5)	# 12
	sw		x6, 20(x5)	# 12
	sw		x6, 16(x5)	# 12
	sw		x7, 12(x5)	# 12
	sw		x7, 8(x5)	# 12
	sw		x7, 4(x5)	# 12
	sw		x7, 0(x5)	# 12
	sw		x4, -16(x2)	# 12
	sw		x1, -20(x2)	# 12
	addi	x2, x2, -24	# 12
	jal		x1, min_caml_create_array	# 12
	addi	x2, x2, 24	# 12
	lw		x1, -20(x2)	# 12
	addi	x4, x0, 3	# 16
	flw		f1, -8(x2)	# 16
	sw		x4, -20(x2)	# 16
	sw		x1, -24(x2)	# 16
	addi	x2, x2, -28	# 16
	jal		x1, min_caml_create_float_array	# 16
	addi	x2, x2, 28	# 16
	lw		x1, -24(x2)	# 16
	flw		f1, -8(x2)	# 19
	lw		x4, -20(x2)	# 19
	sw		x1, -24(x2)	# 19
	addi	x2, x2, -28	# 19
	jal		x1, min_caml_create_float_array	# 19
	addi	x2, x2, 28	# 19
	lw		x1, -24(x2)	# 19
	flw		f1, -8(x2)	# 22
	lw		x4, -20(x2)	# 22
	sw		x1, -24(x2)	# 22
	addi	x2, x2, -28	# 22
	jal		x1, min_caml_create_float_array	# 22
	addi	x2, x2, 28	# 22
	lw		x1, -24(x2)	# 22
	lui		x4, %hi(l.20686)	# 25
	ori		x4, x0, %lo(l.20686)	# 25
	flw		f1, 0(x4)	# 25
	lw		x4, 0(x2)	# 25
	fsw		f1, -24(x2)	# 25
	sw		x1, -28(x2)	# 25
	addi	x2, x2, -32	# 25
	jal		x1, min_caml_create_float_array	# 25
	addi	x2, x2, 32	# 25
	lw		x1, -28(x2)	# 25
	addi	x4, x0, 50	# 28
	addi	x5, x0, -1	# 28
	addi	x6, x0, 50328	# 28
	lw		x7, 0(x2)	# 28
	sw		x5, -28(x2)	# 28
	sw		x6, -32(x2)	# 28
	sw		x4, -36(x2)	# 28
	addi	x4, x7, 0
	sw		x1, -40(x2)	# 28
	addi	x2, x2, -44	# 28
	jal		x1, min_caml_create_array	# 28
	addi	x2, x2, 44	# 28
	lw		x1, -40(x2)	# 28
	lw		x4, -36(x2)	# 28
	lw		x5, -32(x2)	# 28
	sw		x1, -40(x2)	# 28
	addi	x2, x2, -44	# 28
	jal		x1, min_caml_create_array	# 28
	addi	x2, x2, 44	# 28
	lw		x1, -40(x2)	# 28
	lw		x4, -4(x2)	# 31
	mul		x5, x30, x4	# 31
	addi	x5, x5, 50332	# 31
	lw		x5, 0(x5)	# 31
	addi	x6, x0, 50532	# 31
	lw		x7, 0(x2)	# 31
	sw		x6, -40(x2)	# 31
	addi	x4, x7, 0
	sw		x1, -44(x2)	# 31
	addi	x2, x2, -48	# 31
	jal		x1, min_caml_create_array	# 31
	addi	x2, x2, 48	# 31
	lw		x1, -44(x2)	# 31
	lw		x4, 0(x2)	# 31
	lw		x5, -40(x2)	# 31
	sw		x1, -44(x2)	# 31
	addi	x2, x2, -48	# 31
	jal		x1, min_caml_create_array	# 31
	addi	x2, x2, 48	# 31
	lw		x1, -44(x2)	# 31
	flw		f1, -8(x2)	# 36
	lw		x4, 0(x2)	# 36
	sw		x1, -44(x2)	# 36
	addi	x2, x2, -48	# 36
	jal		x1, min_caml_create_float_array	# 36
	addi	x2, x2, 48	# 36
	lw		x1, -44(x2)	# 36
	lw		x4, 0(x2)	# 39
	lw		x5, -4(x2)	# 39
	sw		x1, -44(x2)	# 39
	addi	x2, x2, -48	# 39
	jal		x1, min_caml_create_array	# 39
	addi	x2, x2, 48	# 39
	lw		x1, -44(x2)	# 39
	lui		x4, %hi(l.20690)	# 42
	ori		x4, x0, %lo(l.20690)	# 42
	flw		f1, 0(x4)	# 42
	lw		x4, 0(x2)	# 42
	fsw		f1, -44(x2)	# 42
	sw		x1, -48(x2)	# 42
	addi	x2, x2, -52	# 42
	jal		x1, min_caml_create_float_array	# 42
	addi	x2, x2, 52	# 42
	lw		x1, -48(x2)	# 42
	flw		f1, -8(x2)	# 45
	lw		x4, -20(x2)	# 45
	sw		x1, -48(x2)	# 45
	addi	x2, x2, -52	# 45
	jal		x1, min_caml_create_float_array	# 45
	addi	x2, x2, 52	# 45
	lw		x1, -48(x2)	# 45
	lw		x4, 0(x2)	# 48
	lw		x5, -4(x2)	# 48
	sw		x1, -48(x2)	# 48
	addi	x2, x2, -52	# 48
	jal		x1, min_caml_create_array	# 48
	addi	x2, x2, 52	# 48
	lw		x1, -48(x2)	# 48
	flw		f1, -8(x2)	# 51
	lw		x4, -20(x2)	# 51
	sw		x1, -48(x2)	# 51
	addi	x2, x2, -52	# 51
	jal		x1, min_caml_create_float_array	# 51
	addi	x2, x2, 52	# 51
	lw		x1, -48(x2)	# 51
	flw		f1, -8(x2)	# 54
	lw		x4, -20(x2)	# 54
	sw		x1, -48(x2)	# 54
	addi	x2, x2, -52	# 54
	jal		x1, min_caml_create_float_array	# 54
	addi	x2, x2, 52	# 54
	lw		x1, -48(x2)	# 54
	flw		f1, -8(x2)	# 58
	lw		x4, -20(x2)	# 58
	sw		x1, -48(x2)	# 58
	addi	x2, x2, -52	# 58
	jal		x1, min_caml_create_float_array	# 58
	addi	x2, x2, 52	# 58
	lw		x1, -48(x2)	# 58
	flw		f1, -8(x2)	# 61
	lw		x4, -20(x2)	# 61
	sw		x1, -48(x2)	# 61
	addi	x2, x2, -52	# 61
	jal		x1, min_caml_create_float_array	# 61
	addi	x2, x2, 52	# 61
	lw		x1, -48(x2)	# 61
	addi	x4, x0, 2	# 65
	lw		x5, -4(x2)	# 65
	sw		x4, -48(x2)	# 65
	sw		x1, -52(x2)	# 65
	addi	x2, x2, -56	# 65
	jal		x1, min_caml_create_array	# 65
	addi	x2, x2, 56	# 65
	lw		x1, -52(x2)	# 65
	lw		x4, -48(x2)	# 68
	lw		x5, -4(x2)	# 68
	sw		x1, -52(x2)	# 68
	addi	x2, x2, -56	# 68
	jal		x1, min_caml_create_array	# 68
	addi	x2, x2, 56	# 68
	lw		x1, -52(x2)	# 68
	flw		f1, -8(x2)	# 71
	lw		x4, 0(x2)	# 71
	sw		x1, -52(x2)	# 71
	addi	x2, x2, -56	# 71
	jal		x1, min_caml_create_float_array	# 71
	addi	x2, x2, 56	# 71
	lw		x1, -52(x2)	# 71
	flw		f1, -8(x2)	# 75
	lw		x4, -20(x2)	# 75
	sw		x1, -52(x2)	# 75
	addi	x2, x2, -56	# 75
	jal		x1, min_caml_create_float_array	# 75
	addi	x2, x2, 56	# 75
	lw		x1, -52(x2)	# 75
	flw		f1, -8(x2)	# 78
	lw		x4, -20(x2)	# 78
	sw		x1, -52(x2)	# 78
	addi	x2, x2, -56	# 78
	jal		x1, min_caml_create_float_array	# 78
	addi	x2, x2, 56	# 78
	lw		x1, -52(x2)	# 78
	flw		f1, -8(x2)	# 82
	lw		x4, -20(x2)	# 82
	sw		x1, -52(x2)	# 82
	addi	x2, x2, -56	# 82
	jal		x1, min_caml_create_float_array	# 82
	addi	x2, x2, 56	# 82
	lw		x1, -52(x2)	# 82
	flw		f1, -8(x2)	# 84
	lw		x4, -20(x2)	# 84
	sw		x1, -52(x2)	# 84
	addi	x2, x2, -56	# 84
	jal		x1, min_caml_create_float_array	# 84
	addi	x2, x2, 56	# 84
	lw		x1, -52(x2)	# 84
	flw		f1, -8(x2)	# 86
	lw		x4, -20(x2)	# 86
	sw		x1, -52(x2)	# 86
	addi	x2, x2, -56	# 86
	jal		x1, min_caml_create_float_array	# 86
	addi	x2, x2, 56	# 86
	lw		x1, -52(x2)	# 86
	flw		f1, -8(x2)	# 90
	lw		x4, -20(x2)	# 90
	sw		x1, -52(x2)	# 90
	addi	x2, x2, -56	# 90
	jal		x1, min_caml_create_float_array	# 90
	addi	x2, x2, 56	# 90
	lw		x1, -52(x2)	# 90
	addi	x4, x0, 50708	# 95
	flw		f1, -8(x2)	# 95
	lw		x5, -4(x2)	# 95
	sw		x4, -52(x2)	# 95
	addi	x4, x5, 0
	sw		x1, -56(x2)	# 95
	addi	x2, x2, -60	# 95
	jal		x1, min_caml_create_float_array	# 95
	addi	x2, x2, 60	# 95
	lw		x1, -56(x2)	# 95
	addi	x4, x0, 50708	# 96
	lw		x5, -4(x2)	# 96
	lw		x6, -52(x2)	# 96
	sw		x4, -56(x2)	# 96
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -60(x2)	# 96
	addi	x2, x2, -64	# 96
	jal		x1, min_caml_create_array	# 96
	addi	x2, x2, 64	# 96
	lw		x1, -60(x2)	# 96
	addi	x4, x3, 0	# 97
	addi	x3, x3, 8	# 97
	lw		x5, -56(x2)	# 97
	sw		x5, 4(x4)	# 97
	lw		x5, -52(x2)	# 97
	sw		x5, 0(x4)	# 97
	addi	x5, x4, 0	# 97
	addi	x4, x0, 50716	# 97
	lw		x6, -4(x2)	# 97
	sw		x4, -60(x2)	# 97
	addi	x4, x6, 0
	sw		x1, -64(x2)	# 97
	addi	x2, x2, -68	# 97
	jal		x1, min_caml_create_array	# 97
	addi	x2, x2, 68	# 97
	lw		x1, -64(x2)	# 97
	addi	x4, x0, 5	# 98
	lw		x5, -60(x2)	# 98
	sw		x4, -64(x2)	# 98
	sw		x1, -68(x2)	# 98
	addi	x2, x2, -72	# 98
	jal		x1, min_caml_create_array	# 98
	addi	x2, x2, 72	# 98
	lw		x1, -68(x2)	# 98
	addi	x4, x0, 50736	# 103
	flw		f1, -8(x2)	# 103
	lw		x5, -4(x2)	# 103
	sw		x4, -68(x2)	# 103
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 103
	addi	x2, x2, -76	# 103
	jal		x1, min_caml_create_float_array	# 103
	addi	x2, x2, 76	# 103
	lw		x1, -72(x2)	# 103
	addi	x4, x0, 50736	# 104
	flw		f1, -8(x2)	# 104
	lw		x5, -20(x2)	# 104
	sw		x4, -72(x2)	# 104
	addi	x4, x5, 0
	sw		x1, -76(x2)	# 104
	addi	x2, x2, -80	# 104
	jal		x1, min_caml_create_float_array	# 104
	addi	x2, x2, 80	# 104
	lw		x1, -76(x2)	# 104
	addi	x4, x0, 50748	# 105
	lw		x5, -16(x2)	# 105
	lw		x6, -68(x2)	# 105
	sw		x4, -76(x2)	# 105
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -80(x2)	# 105
	addi	x2, x2, -84	# 105
	jal		x1, min_caml_create_array	# 105
	addi	x2, x2, 84	# 105
	lw		x1, -80(x2)	# 105
	addi	x4, x3, 0	# 106
	addi	x3, x3, 8	# 106
	lw		x5, -76(x2)	# 106
	sw		x5, 4(x4)	# 106
	lw		x5, -72(x2)	# 106
	sw		x5, 0(x4)	# 106
	addi	x5, x0, 50996	# 111
	flw		f1, -8(x2)	# 111
	lw		x6, -4(x2)	# 111
	sw		x4, -80(x2)	# 111
	sw		x5, -84(x2)	# 111
	addi	x4, x6, 0
	sw		x1, -88(x2)	# 111
	addi	x2, x2, -92	# 111
	jal		x1, min_caml_create_float_array	# 111
	addi	x2, x2, 92	# 111
	lw		x1, -88(x2)	# 111
	addi	x4, x0, 50996	# 112
	lw		x5, -4(x2)	# 112
	lw		x6, -84(x2)	# 112
	sw		x4, -88(x2)	# 112
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -92(x2)	# 112
	addi	x2, x2, -96	# 112
	jal		x1, min_caml_create_array	# 112
	addi	x2, x2, 96	# 112
	lw		x1, -92(x2)	# 112
	addi	x4, x3, 0	# 113
	addi	x3, x3, 8	# 113
	lw		x5, -88(x2)	# 113
	sw		x5, 4(x4)	# 113
	lw		x5, -84(x2)	# 113
	sw		x5, 0(x4)	# 113
	addi	x5, x0, 180	# 114
	addi	x6, x3, 0	# 114
	addi	x3, x3, 12	# 114
	flw		f1, -8(x2)	# 114
	fsw		f1, 8(x6)	# 114
	sw		x4, 4(x6)	# 114
	lw		x4, -4(x2)	# 114
	sw		x4, 0(x6)	# 114
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -92(x2)	# 114
	addi	x2, x2, -96	# 114
	jal		x1, min_caml_create_array	# 114
	addi	x2, x2, 96	# 114
	lw		x1, -92(x2)	# 114
	lw		x4, 0(x2)	# 118
	lw		x5, -4(x2)	# 118
	sw		x1, -92(x2)	# 118
	addi	x2, x2, -96	# 118
	jal		x1, min_caml_create_array	# 118
	addi	x2, x2, 96	# 118
	lw		x1, -92(x2)	# 118
	addi	x4, x3, 0	# 128
	addi	x3, x3, 12	# 128
	lui		x5, %hi(int_of_float.2517.12307)	# 128
	ori		x5, x0, %lo(int_of_float.2517.12307)	# 128
	sw		x5, 0(x4)	# 132
	lw		x5, 0(x2)	# 132
	sw		x5, 8(x4)	# 132
	flw		f1, -8(x2)	# 132
	fsw		f1, 4(x4)	# 132
	addi	x6, x3, 0	# 132
	addi	x3, x3, 16	# 132
	lui		x7, %hi(float_of_int.2519.12309)	# 132
	ori		x7, x0, %lo(float_of_int.2519.12309)	# 132
	sw		x7, 0(x6)	# 139
	lw		x7, -4(x2)	# 139
	sw		x7, 12(x6)	# 139
	sw		x5, 8(x6)	# 139
	fsw		f1, 4(x6)	# 139
	lui		x8, %hi(l.20705)	# 139
	ori		x8, x0, %lo(l.20705)	# 139
	flw		f2, 0(x8)	# 139
	lui		x8, %hi(l.20707)	# 140
	ori		x8, x0, %lo(l.20707)	# 140
	flw		f3, 0(x8)	# 140
	lui		x8, %hi(l.20709)	# 141
	ori		x8, x0, %lo(l.20709)	# 141
	flw		f4, 0(x8)	# 141
	lui		x8, %hi(l.20711)	# 142
	ori		x8, x0, %lo(l.20711)	# 142
	flw		f5, 0(x8)	# 142
	addi	x8, x3, 0	# 164
	addi	x3, x3, 24	# 164
	lui		x9, %hi(sin.2531.12315)	# 164
	ori		x9, x0, %lo(sin.2531.12315)	# 164
	sw		x9, 0(x8)	# 172
	fsw		f5, 20(x8)	# 172
	fsw		f4, 16(x8)	# 172
	fsw		f3, 12(x8)	# 172
	fsw		f2, 8(x8)	# 172
	fsw		f1, 4(x8)	# 172
	addi	x9, x3, 0	# 172
	addi	x3, x3, 20	# 172
	lui		x10, %hi(cos.2533.12317)	# 172
	ori		x10, x0, %lo(cos.2533.12317)	# 172
	sw		x10, 0(x9)	# 177
	sw		x8, 16(x9)	# 177
	fsw		f5, 12(x9)	# 177
	fsw		f4, 8(x9)	# 177
	fsw		f1, 4(x9)	# 177
	addi	x10, x3, 0	# 177
	addi	x3, x3, 16	# 177
	lui		x11, %hi(atan.2535.12319)	# 177
	ori		x11, x0, %lo(atan.2535.12319)	# 177
	sw		x11, 0(x10)	# 681
	fsw		f5, 12(x10)	# 681
	fsw		f4, 8(x10)	# 681
	fsw		f1, 4(x10)	# 681
	addi	x11, x3, 0	# 681
	addi	x3, x3, 28	# 681
	lui		x12, %hi(read_screen_settings.2663.12321)	# 681
	ori		x12, x0, %lo(read_screen_settings.2663.12321)	# 681
	sw		x12, 0(x11)	# 736
	sw		x8, 24(x11)	# 736
	sw		x9, 20(x11)	# 736
	lw		x12, -48(x2)	# 736
	sw		x12, 16(x11)	# 736
	sw		x7, 12(x11)	# 736
	sw		x5, 8(x11)	# 736
	fsw		f1, 4(x11)	# 736
	addi	x13, x3, 0	# 736
	addi	x3, x3, 24	# 736
	lui		x14, %hi(rotate_quadratic_matrix.2667.12323)	# 736
	ori		x14, x0, %lo(rotate_quadratic_matrix.2667.12323)	# 736
	sw		x14, 0(x13)	# 777
	sw		x8, 20(x13)	# 777
	sw		x9, 16(x13)	# 777
	sw		x12, 12(x13)	# 777
	sw		x7, 8(x13)	# 777
	sw		x5, 4(x13)	# 777
	addi	x14, x3, 0	# 777
	addi	x3, x3, 32	# 777
	lui		x15, %hi(read_nth_object.2670.12326)	# 777
	ori		x15, x0, %lo(read_nth_object.2670.12326)	# 777
	sw		x15, 0(x14)	# 860
	sw		x13, 28(x14)	# 860
	sw		x12, 24(x14)	# 860
	lw		x13, -28(x2)	# 860
	sw		x13, 20(x14)	# 860
	lw		x15, -20(x2)	# 860
	sw		x15, 16(x14)	# 860
	sw		x7, 12(x14)	# 860
	sw		x5, 8(x14)	# 860
	fsw		f1, 4(x14)	# 860
	addi	x16, x3, 0	# 860
	addi	x3, x3, 20	# 860
	lui		x17, %hi(read_object.2672.12328)	# 860
	ori		x17, x0, %lo(read_object.2672.12328)	# 860
	sw		x17, 0(x16)	# 876
	sw		x14, 16(x16)	# 876
	lw		x14, -16(x2)	# 876
	sw		x14, 12(x16)	# 876
	sw		x7, 8(x16)	# 876
	sw		x5, 4(x16)	# 876
	addi	x14, x3, 0	# 876
	addi	x3, x3, 12	# 876
	lui		x17, %hi(read_net_item.2676.12330)	# 876
	ori		x17, x0, %lo(read_net_item.2676.12330)	# 876
	sw		x17, 0(x14)	# 884
	sw		x13, 8(x14)	# 884
	sw		x5, 4(x14)	# 884
	addi	x17, x3, 0	# 884
	addi	x3, x3, 20	# 884
	lui		x18, %hi(read_or_network.2678.12332)	# 884
	ori		x18, x0, %lo(read_or_network.2678.12332)	# 884
	sw		x18, 0(x17)	# 893
	sw		x14, 16(x17)	# 893
	sw		x13, 12(x17)	# 893
	sw		x7, 8(x17)	# 893
	sw		x5, 4(x17)	# 893
	addi	x18, x3, 0	# 893
	addi	x3, x3, 20	# 893
	lui		x19, %hi(read_and_network.2680.12334)	# 893
	ori		x19, x0, %lo(read_and_network.2680.12334)	# 893
	sw		x19, 0(x18)	# 942
	sw		x14, 16(x18)	# 942
	sw		x13, 12(x18)	# 942
	sw		x7, 8(x18)	# 942
	sw		x5, 4(x18)	# 942
	addi	x14, x3, 0	# 942
	addi	x3, x3, 20	# 942
	lui		x19, %hi(solver_rect.2693.12336)	# 942
	ori		x19, x0, %lo(solver_rect.2693.12336)	# 942
	sw		x19, 0(x14)	# 1002
	sw		x12, 16(x14)	# 1002
	sw		x7, 12(x14)	# 1002
	sw		x5, 8(x14)	# 1002
	fsw		f1, 4(x14)	# 1002
	addi	x19, x3, 0	# 1002
	addi	x3, x3, 24	# 1002
	lui		x20, %hi(solver_second.2718.12342)	# 1002
	ori		x20, x0, %lo(solver_second.2718.12342)	# 1002
	sw		x20, 0(x19)	# 1063
	sw		x12, 20(x19)	# 1063
	sw		x15, 16(x19)	# 1063
	sw		x7, 12(x19)	# 1063
	sw		x5, 8(x19)	# 1063
	fsw		f1, 4(x19)	# 1063
	addi	x20, x3, 0	# 1063
	addi	x3, x3, 28	# 1063
	lui		x21, %hi(solver_rect_fast.2728.12348)	# 1063
	ori		x21, x0, %lo(solver_rect_fast.2728.12348)	# 1063
	sw		x21, 0(x20)	# 1105
	lw		x21, -64(x2)	# 1105
	sw		x21, 24(x20)	# 1105
	sw		x12, 20(x20)	# 1105
	sw		x15, 16(x20)	# 1105
	sw		x7, 12(x20)	# 1105
	sw		x5, 8(x20)	# 1105
	fsw		f1, 4(x20)	# 1105
	addi	x22, x3, 0	# 1105
	addi	x3, x3, 24	# 1105
	lui		x23, %hi(solver_second_fast.2741.12355)	# 1105
	ori		x23, x0, %lo(solver_second_fast.2741.12355)	# 1105
	sw		x23, 0(x22)	# 1194
	sw		x12, 20(x22)	# 1194
	sw		x15, 16(x22)	# 1194
	sw		x7, 12(x22)	# 1194
	sw		x5, 8(x22)	# 1194
	fsw		f1, 4(x22)	# 1194
	addi	x23, x3, 0	# 1194
	addi	x3, x3, 20	# 1194
	lui		x24, %hi(setup_rect_table.2768.12361)	# 1194
	ori		x24, x0, %lo(setup_rect_table.2768.12361)	# 1194
	sw		x24, 0(x23)	# 1221
	sw		x12, 16(x23)	# 1221
	sw		x7, 12(x23)	# 1221
	sw		x5, 8(x23)	# 1221
	fsw		f1, 4(x23)	# 1221
	addi	x24, x3, 0	# 1221
	addi	x3, x3, 20	# 1221
	lui		x25, %hi(setup_surface_table.2771.12364)	# 1221
	ori		x25, x0, %lo(setup_surface_table.2771.12364)	# 1221
	sw		x25, 0(x24)	# 1240
	sw		x12, 16(x24)	# 1240
	sw		x7, 12(x24)	# 1240
	sw		x5, 8(x24)	# 1240
	fsw		f1, 4(x24)	# 1240
	addi	x25, x3, 0	# 1240
	addi	x3, x3, 24	# 1240
	lui		x26, %hi(setup_second_table.2774.12367)	# 1240
	ori		x26, x0, %lo(setup_second_table.2774.12367)	# 1240
	sw		x26, 0(x25)	# 1269
	sw		x21, 20(x25)	# 1269
	sw		x12, 16(x25)	# 1269
	sw		x7, 12(x25)	# 1269
	sw		x5, 8(x25)	# 1269
	fsw		f1, 4(x25)	# 1269
	addi	x26, x3, 0	# 1269
	addi	x3, x3, 24	# 1269
	lui		x27, %hi(iter_setup_dirvec_constants.2777.12370)	# 1269
	ori		x27, x0, %lo(iter_setup_dirvec_constants.2777.12370)	# 1269
	sw		x27, 0(x26)	# 1294
	sw		x24, 20(x26)	# 1294
	sw		x25, 16(x26)	# 1294
	sw		x23, 12(x26)	# 1294
	sw		x7, 8(x26)	# 1294
	sw		x5, 4(x26)	# 1294
	addi	x23, x3, 0	# 1294
	addi	x3, x3, 16	# 1294
	lui		x24, %hi(setup_startp_constants.2782.12373)	# 1294
	ori		x24, x0, %lo(setup_startp_constants.2782.12373)	# 1294
	sw		x24, 0(x23)	# 1363
	sw		x12, 12(x23)	# 1363
	sw		x7, 8(x23)	# 1363
	sw		x5, 4(x23)	# 1363
	addi	x24, x3, 0	# 1363
	addi	x3, x3, 28	# 1363
	lui		x25, %hi(check_all_inside.2807.12376)	# 1363
	ori		x25, x0, %lo(check_all_inside.2807.12376)	# 1363
	sw		x25, 0(x24)	# 1383
	sw		x12, 24(x24)	# 1383
	sw		x13, 20(x24)	# 1383
	sw		x15, 16(x24)	# 1383
	sw		x7, 12(x24)	# 1383
	sw		x5, 8(x24)	# 1383
	fsw		f1, 4(x24)	# 1383
	addi	x25, x3, 0	# 1383
	addi	x3, x3, 40	# 1383
	lui		x27, %hi(shadow_check_and_group.2813.12382)	# 1383
	ori		x27, x0, %lo(shadow_check_and_group.2813.12382)	# 1383
	sw		x27, 0(x25)	# 1413
	sw		x22, 36(x25)	# 1413
	sw		x20, 32(x25)	# 1413
	sw		x24, 28(x25)	# 1413
	sw		x12, 24(x25)	# 1413
	sw		x13, 20(x25)	# 1413
	sw		x15, 16(x25)	# 1413
	sw		x7, 12(x25)	# 1413
	sw		x5, 8(x25)	# 1413
	fsw		f1, 4(x25)	# 1413
	addi	x27, x3, 0	# 1413
	addi	x3, x3, 20	# 1413
	lui		x29, %hi(shadow_check_one_or_group.2816.12385)	# 1413
	ori		x29, x0, %lo(shadow_check_one_or_group.2816.12385)	# 1413
	sw		x29, 0(x27)	# 1428
	sw		x25, 16(x27)	# 1428
	sw		x13, 12(x27)	# 1428
	sw		x7, 8(x27)	# 1428
	sw		x5, 4(x27)	# 1428
	addi	x25, x3, 0	# 1428
	addi	x3, x3, 40	# 1428
	lui		x29, %hi(shadow_check_one_or_matrix.2819.12388)	# 1428
	ori		x29, x0, %lo(shadow_check_one_or_matrix.2819.12388)	# 1428
	sw		x29, 0(x25)	# 1464
	sw		x22, 36(x25)	# 1464
	sw		x20, 32(x25)	# 1464
	sw		x27, 28(x25)	# 1464
	sw		x12, 24(x25)	# 1464
	sw		x13, 20(x25)	# 1464
	sw		x15, 16(x25)	# 1464
	sw		x7, 12(x25)	# 1464
	sw		x5, 8(x25)	# 1464
	fsw		f1, 4(x25)	# 1464
	addi	x22, x3, 0	# 1464
	addi	x3, x3, 36	# 1464
	lui		x27, %hi(solve_each_element.2822.12391)	# 1464
	ori		x27, x0, %lo(solve_each_element.2822.12391)	# 1464
	sw		x27, 0(x22)	# 1505
	sw		x19, 32(x22)	# 1505
	sw		x14, 28(x22)	# 1505
	sw		x24, 24(x22)	# 1505
	sw		x12, 20(x22)	# 1505
	sw		x13, 16(x22)	# 1505
	sw		x7, 12(x22)	# 1505
	sw		x5, 8(x22)	# 1505
	fsw		f1, 4(x22)	# 1505
	addi	x27, x3, 0	# 1505
	addi	x3, x3, 20	# 1505
	lui		x29, %hi(solve_one_or_network.2826.12395)	# 1505
	ori		x29, x0, %lo(solve_one_or_network.2826.12395)	# 1505
	sw		x29, 0(x27)	# 1515
	sw		x22, 16(x27)	# 1515
	sw		x13, 12(x27)	# 1515
	sw		x7, 8(x27)	# 1515
	sw		x5, 4(x27)	# 1515
	addi	x22, x3, 0	# 1515
	addi	x3, x3, 36	# 1515
	lui		x29, %hi(trace_or_matrix.2830.12399)	# 1515
	ori		x29, x0, %lo(trace_or_matrix.2830.12399)	# 1515
	sw		x29, 0(x22)	# 1557
	sw		x19, 32(x22)	# 1557
	sw		x14, 28(x22)	# 1557
	sw		x27, 24(x22)	# 1557
	sw		x12, 20(x22)	# 1557
	sw		x13, 16(x22)	# 1557
	sw		x7, 12(x22)	# 1557
	sw		x5, 8(x22)	# 1557
	fsw		f1, 4(x22)	# 1557
	addi	x14, x3, 0	# 1557
	addi	x3, x3, 36	# 1557
	lui		x19, %hi(solve_each_element_fast.2836.12403)	# 1557
	ori		x19, x0, %lo(solve_each_element_fast.2836.12403)	# 1557
	sw		x19, 0(x14)	# 1598
	sw		x20, 32(x14)	# 1598
	sw		x24, 28(x14)	# 1598
	sw		x12, 24(x14)	# 1598
	sw		x13, 20(x14)	# 1598
	sw		x15, 16(x14)	# 1598
	sw		x7, 12(x14)	# 1598
	sw		x5, 8(x14)	# 1598
	fsw		f1, 4(x14)	# 1598
	addi	x19, x3, 0	# 1598
	addi	x3, x3, 20	# 1598
	lui		x24, %hi(solve_one_or_network_fast.2840.12407)	# 1598
	ori		x24, x0, %lo(solve_one_or_network_fast.2840.12407)	# 1598
	sw		x24, 0(x19)	# 1608
	sw		x14, 16(x19)	# 1608
	sw		x13, 12(x19)	# 1608
	sw		x7, 8(x19)	# 1608
	sw		x5, 4(x19)	# 1608
	addi	x14, x3, 0	# 1608
	addi	x3, x3, 36	# 1608
	lui		x24, %hi(trace_or_matrix_fast.2844.12411)	# 1608
	ori		x24, x0, %lo(trace_or_matrix_fast.2844.12411)	# 1608
	sw		x24, 0(x14)	# 1669
	sw		x20, 32(x14)	# 1669
	sw		x19, 28(x14)	# 1669
	sw		x12, 24(x14)	# 1669
	sw		x13, 20(x14)	# 1669
	sw		x15, 16(x14)	# 1669
	sw		x7, 12(x14)	# 1669
	sw		x5, 8(x14)	# 1669
	fsw		f1, 4(x14)	# 1669
	addi	x19, x3, 0	# 1669
	addi	x3, x3, 20	# 1669
	lui		x20, %hi(get_nvector_second.2854.12415)	# 1669
	ori		x20, x0, %lo(get_nvector_second.2854.12415)	# 1669
	sw		x20, 0(x19)	# 1707
	sw		x12, 16(x19)	# 1707
	sw		x7, 12(x19)	# 1707
	sw		x5, 8(x19)	# 1707
	fsw		f1, 4(x19)	# 1707
	addi	x20, x3, 0	# 1707
	addi	x3, x3, 48	# 1707
	lui		x24, %hi(utexture.2859.12417)	# 1707
	ori		x24, x0, %lo(utexture.2859.12417)	# 1707
	sw		x24, 0(x20)	# 1802
	sw		x8, 44(x20)	# 1802
	sw		x4, 40(x20)	# 1802
	sw		x6, 36(x20)	# 1802
	sw		x9, 32(x20)	# 1802
	sw		x10, 28(x20)	# 1802
	sw		x12, 24(x20)	# 1802
	sw		x15, 20(x20)	# 1802
	sw		x7, 16(x20)	# 1802
	sw		x5, 12(x20)	# 1802
	flw		f2, -24(x2)	# 1802
	fsw		f2, 8(x20)	# 1802
	fsw		f1, 4(x20)	# 1802
	addi	x24, x3, 0	# 1802
	addi	x3, x3, 32	# 1802
	lui		x27, %hi(trace_reflections.2866.12420)	# 1802
	ori		x27, x0, %lo(trace_reflections.2866.12420)	# 1802
	sw		x27, 0(x24)	# 1831
	sw		x14, 28(x24)	# 1831
	sw		x25, 24(x24)	# 1831
	sw		x12, 20(x24)	# 1831
	sw		x7, 16(x24)	# 1831
	sw		x5, 12(x24)	# 1831
	flw		f2, -44(x2)	# 1831
	fsw		f2, 8(x24)	# 1831
	fsw		f1, 4(x24)	# 1831
	addi	x27, x3, 0	# 1831
	addi	x3, x3, 52	# 1831
	lui		x29, %hi(trace_ray.2871.12425)	# 1831
	ori		x29, x0, %lo(trace_ray.2871.12425)	# 1831
	sw		x29, 0(x27)	# 1943
	sw		x20, 48(x27)	# 1943
	sw		x24, 44(x27)	# 1943
	sw		x22, 40(x27)	# 1943
	sw		x25, 36(x27)	# 1943
	sw		x23, 32(x27)	# 1943
	sw		x19, 28(x27)	# 1943
	sw		x12, 24(x27)	# 1943
	sw		x13, 20(x27)	# 1943
	sw		x7, 16(x27)	# 1943
	sw		x5, 12(x27)	# 1943
	fsw		f2, 8(x27)	# 1943
	fsw		f1, 4(x27)	# 1943
	addi	x13, x3, 0	# 1943
	addi	x3, x3, 40	# 1943
	lui		x22, %hi(iter_trace_diffuse_rays.2880.12431)	# 1943
	ori		x22, x0, %lo(iter_trace_diffuse_rays.2880.12431)	# 1943
	sw		x22, 0(x13)	# 2034
	sw		x20, 36(x13)	# 2034
	sw		x14, 32(x13)	# 2034
	sw		x25, 28(x13)	# 2034
	sw		x19, 24(x13)	# 2034
	sw		x12, 20(x13)	# 2034
	sw		x7, 16(x13)	# 2034
	sw		x5, 12(x13)	# 2034
	fsw		f2, 8(x13)	# 2034
	fsw		f1, 4(x13)	# 2034
	addi	x14, x3, 0	# 2034
	addi	x3, x3, 28	# 2034
	lui		x19, %hi(do_without_neighbors.2902.12436)	# 2034
	ori		x19, x0, %lo(do_without_neighbors.2902.12436)	# 2034
	sw		x19, 0(x14)	# 2086
	sw		x23, 24(x14)	# 2086
	sw		x13, 20(x14)	# 2086
	sw		x12, 16(x14)	# 2086
	sw		x15, 12(x14)	# 2086
	sw		x7, 8(x14)	# 2086
	sw		x5, 4(x14)	# 2086
	addi	x19, x3, 0	# 2086
	addi	x3, x3, 20	# 2086
	lui		x20, %hi(try_exploit_neighbors.2918.12439)	# 2086
	ori		x20, x0, %lo(try_exploit_neighbors.2918.12439)	# 2086
	sw		x20, 0(x19)	# 2162
	sw		x14, 16(x19)	# 2162
	sw		x12, 12(x19)	# 2162
	sw		x7, 8(x19)	# 2162
	sw		x5, 4(x19)	# 2162
	addi	x20, x3, 0	# 2162
	addi	x3, x3, 24	# 2162
	lui		x22, %hi(pretrace_diffuse_rays.2933.12446)	# 2162
	ori		x22, x0, %lo(pretrace_diffuse_rays.2933.12446)	# 2162
	sw		x22, 0(x20)	# 2192
	sw		x23, 20(x20)	# 2192
	sw		x13, 16(x20)	# 2192
	sw		x12, 12(x20)	# 2192
	sw		x7, 8(x20)	# 2192
	sw		x5, 4(x20)	# 2192
	addi	x13, x3, 0	# 2192
	addi	x3, x3, 36	# 2192
	lui		x22, %hi(pretrace_pixels.2936.12449)	# 2192
	ori		x22, x0, %lo(pretrace_pixels.2936.12449)	# 2192
	sw		x22, 0(x13)	# 2233
	sw		x27, 32(x13)	# 2233
	sw		x20, 28(x13)	# 2233
	sw		x6, 24(x13)	# 2233
	sw		x21, 20(x13)	# 2233
	sw		x12, 16(x13)	# 2233
	sw		x7, 12(x13)	# 2233
	sw		x5, 8(x13)	# 2233
	fsw		f1, 4(x13)	# 2233
	addi	x20, x3, 0	# 2233
	addi	x3, x3, 32	# 2233
	lui		x22, %hi(scan_pixel.2947.12456)	# 2233
	ori		x22, x0, %lo(scan_pixel.2947.12456)	# 2233
	sw		x22, 0(x20)	# 2253
	sw		x19, 28(x20)	# 2253
	sw		x4, 24(x20)	# 2253
	sw		x14, 20(x20)	# 2253
	sw		x12, 16(x20)	# 2253
	sw		x15, 12(x20)	# 2253
	sw		x7, 8(x20)	# 2253
	sw		x5, 4(x20)	# 2253
	addi	x4, x3, 0	# 2253
	addi	x3, x3, 32	# 2253
	lui		x14, %hi(scan_line.2954.12463)	# 2253
	ori		x14, x0, %lo(scan_line.2954.12463)	# 2253
	sw		x14, 0(x4)	# 2283
	sw		x20, 28(x4)	# 2283
	sw		x13, 24(x4)	# 2283
	sw		x6, 20(x4)	# 2283
	sw		x21, 16(x4)	# 2283
	sw		x12, 12(x4)	# 2283
	sw		x7, 8(x4)	# 2283
	sw		x5, 4(x4)	# 2283
	addi	x14, x3, 0	# 2283
	addi	x3, x3, 28	# 2283
	lui		x19, %hi(create_pixel.2963.12470)	# 2283
	ori		x19, x0, %lo(create_pixel.2963.12470)	# 2283
	sw		x19, 0(x14)	# 2296
	sw		x21, 24(x14)	# 2296
	sw		x12, 20(x14)	# 2296
	sw		x15, 16(x14)	# 2296
	sw		x7, 12(x14)	# 2296
	sw		x5, 8(x14)	# 2296
	fsw		f1, 4(x14)	# 2296
	addi	x19, x3, 0	# 2296
	addi	x3, x3, 28	# 2296
	lui		x20, %hi(init_line_elements.2965.12472)	# 2296
	ori		x20, x0, %lo(init_line_elements.2965.12472)	# 2296
	sw		x20, 0(x19)	# 2333
	sw		x21, 24(x19)	# 2333
	sw		x12, 20(x19)	# 2333
	sw		x15, 16(x19)	# 2333
	sw		x7, 12(x19)	# 2333
	sw		x5, 8(x19)	# 2333
	fsw		f1, 4(x19)	# 2333
	addi	x20, x3, 0	# 2333
	addi	x3, x3, 32	# 2333
	lui		x22, %hi(calc_dirvec.2975.12475)	# 2333
	ori		x22, x0, %lo(calc_dirvec.2975.12475)	# 2333
	sw		x22, 0(x20)	# 2354
	sw		x8, 28(x20)	# 2354
	sw		x9, 24(x20)	# 2354
	sw		x10, 20(x20)	# 2354
	sw		x21, 16(x20)	# 2354
	sw		x12, 12(x20)	# 2354
	sw		x7, 8(x20)	# 2354
	sw		x5, 4(x20)	# 2354
	addi	x10, x3, 0	# 2354
	addi	x3, x3, 32	# 2354
	lui		x22, %hi(calc_dirvecs.2983.12483)	# 2354
	ori		x22, x0, %lo(calc_dirvecs.2983.12483)	# 2354
	sw		x22, 0(x10)	# 2368
	sw		x6, 28(x10)	# 2368
	sw		x20, 24(x10)	# 2368
	sw		x21, 20(x10)	# 2368
	sw		x12, 16(x10)	# 2368
	sw		x7, 12(x10)	# 2368
	sw		x5, 8(x10)	# 2368
	fsw		f1, 4(x10)	# 2368
	addi	x20, x3, 0	# 2368
	addi	x3, x3, 28	# 2368
	lui		x22, %hi(calc_dirvec_rows.2988.12488)	# 2368
	ori		x22, x0, %lo(calc_dirvec_rows.2988.12488)	# 2368
	sw		x22, 0(x20)	# 2387
	sw		x6, 24(x20)	# 2387
	sw		x10, 20(x20)	# 2387
	sw		x21, 16(x20)	# 2387
	sw		x12, 12(x20)	# 2387
	sw		x7, 8(x20)	# 2387
	sw		x5, 4(x20)	# 2387
	addi	x10, x3, 0	# 2387
	addi	x3, x3, 20	# 2387
	lui		x21, %hi(create_dirvec_elements.2994.12492)	# 2387
	ori		x21, x0, %lo(create_dirvec_elements.2994.12492)	# 2387
	sw		x21, 0(x10)	# 2394
	sw		x15, 16(x10)	# 2394
	sw		x7, 12(x10)	# 2394
	sw		x5, 8(x10)	# 2394
	fsw		f1, 4(x10)	# 2394
	addi	x21, x3, 0	# 2394
	addi	x3, x3, 24	# 2394
	lui		x22, %hi(create_dirvecs.2997.12495)	# 2394
	ori		x22, x0, %lo(create_dirvecs.2997.12495)	# 2394
	sw		x22, 0(x21)	# 2406
	sw		x10, 20(x21)	# 2406
	sw		x15, 16(x21)	# 2406
	sw		x7, 12(x21)	# 2406
	sw		x5, 8(x21)	# 2406
	fsw		f1, 4(x21)	# 2406
	addi	x10, x3, 0	# 2406
	addi	x3, x3, 16	# 2406
	lui		x22, %hi(init_dirvec_constants.2999.12497)	# 2406
	ori		x22, x0, %lo(init_dirvec_constants.2999.12497)	# 2406
	sw		x22, 0(x10)	# 2413
	sw		x26, 12(x10)	# 2413
	sw		x7, 8(x10)	# 2413
	sw		x5, 4(x10)	# 2413
	addi	x22, x3, 0	# 2413
	addi	x3, x3, 16	# 2413
	lui		x23, %hi(init_vecset_constants.3002.12500)	# 2413
	ori		x23, x0, %lo(init_vecset_constants.3002.12500)	# 2413
	sw		x23, 0(x22)	# 2440
	sw		x10, 12(x22)	# 2440
	sw		x7, 8(x22)	# 2440
	sw		x5, 4(x22)	# 2440
	addi	x10, x3, 0	# 2440
	addi	x3, x3, 28	# 2440
	lui		x23, %hi(setup_rect_reflection.3013.12502)	# 2440
	ori		x23, x0, %lo(setup_rect_reflection.3013.12502)	# 2440
	sw		x23, 0(x10)	# 2454
	sw		x26, 24(x10)	# 2454
	sw		x12, 20(x10)	# 2454
	sw		x15, 16(x10)	# 2454
	sw		x7, 12(x10)	# 2454
	sw		x5, 8(x10)	# 2454
	fsw		f1, 4(x10)	# 2454
	addi	x23, x3, 0	# 2454
	addi	x3, x3, 28	# 2454
	lui		x24, %hi(setup_surface_reflection.3016.12505)	# 2454
	ori		x24, x0, %lo(setup_surface_reflection.3016.12505)	# 2454
	sw		x24, 0(x23)	# 2491
	sw		x26, 24(x23)	# 2491
	sw		x12, 20(x23)	# 2491
	sw		x15, 16(x23)	# 2491
	sw		x7, 12(x23)	# 2491
	sw		x5, 8(x23)	# 2491
	fsw		f1, 4(x23)	# 2491
	addi	x29, x3, 0	# 2491
	addi	x3, x3, 88	# 2491
	lui		x24, %hi(rt.3021.12508)	# 2491
	ori		x24, x0, %lo(rt.3021.12508)	# 2491
	sw		x24, 0(x29)	# 2512
	sw		x8, 84(x29)	# 2512
	sw		x23, 80(x29)	# 2512
	sw		x10, 76(x29)	# 2512
	sw		x4, 72(x29)	# 2512
	sw		x11, 68(x29)	# 2512
	sw		x17, 64(x29)	# 2512
	sw		x16, 60(x29)	# 2512
	sw		x18, 56(x29)	# 2512
	sw		x13, 52(x29)	# 2512
	lw		x4, -80(x2)	# 2512
	sw		x4, 48(x29)	# 2512
	sw		x26, 44(x29)	# 2512
	sw		x22, 40(x29)	# 2512
	sw		x19, 36(x29)	# 2512
	sw		x6, 32(x29)	# 2512
	sw		x14, 28(x29)	# 2512
	sw		x21, 24(x29)	# 2512
	sw		x9, 20(x29)	# 2512
	sw		x20, 16(x29)	# 2512
	sw		x12, 12(x29)	# 2512
	sw		x7, 8(x29)	# 2512
	sw		x5, 4(x29)	# 2512
	addi	x4, x0, 128	# 2512
	addi	x6, x15, 0
	addi	x5, x4, 0
	sw		x1, -92(x2)	# 2512
	addi	x2, x2, -96	# 2512
	lw		x31, 0(x29)	# 2512
	jalr	x1, x31, 0	# 2512
	addi	x2, x2, 96	# 2512
	lw		x1, -92(x2)	# 2512
	EXIT	
