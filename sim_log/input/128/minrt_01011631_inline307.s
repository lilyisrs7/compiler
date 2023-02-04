l.25673:	# 1.000000
	.word	1.000000
l.25709:	# 0.000000
	.word	0.000000
l.25683:	# 0.500000
	.word	0.500000
l.25769:	# -1.000000
	.word	-1.000000
l.27092:	# 3.141593
	.word	3.141593
l.27088:	# 15.000000
	.word	15.000000
l.27090:	# 30.000000
	.word	30.000000
l.27118:	# 10.000000
	.word	10.000000
l.26336:	# -0.100000
	.word	-0.100000
l.25737:	# 0.017453
	.word	0.017453
l.26881:	# 100000000.000000
	.word	100000000.000000
l.27128:	# 0.250000
	.word	0.250000
l.27106:	# 0.300000
	.word	0.300000
l.27139:	# 0.050000
	.word	0.050000
l.27141:	# 20.000000
	.word	20.000000
l.25700:	# 0.200000
	.word	0.200000
l.27321:	# 0.100000
	.word	0.100000
l.27103:	# 0.150000
	.word	0.150000
l.27086:	# 0.000100
	.word	0.000100
l.26209:	# 0.010000
	.word	0.010000
l.25829:	# 2.000000
	.word	2.000000
l.28375:	# 0.900000
	.word	0.900000
l.25687:	# 0.001370
	.word	0.001370
l.25685:	# 0.041664
	.word	0.041664
l.26207:	# -0.200000
	.word	-0.200000
l.25702:	# 0.142857
	.word	0.142857
l.25704:	# 0.111111
	.word	0.111111
l.25706:	# 0.089764
	.word	0.089764
l.28596:	# 200.000000
	.word	200.000000
l.28600:	# -200.000000
	.word	-200.000000
l.27374:	# -150.000000
	.word	-150.000000
l.27191:	# 0.003906
	.word	0.003906
l.27219:	# -2.000000
	.word	-2.000000
l.25698:	# 0.333333
	.word	0.333333
l.25696:	# 0.437500
	.word	0.437500
l.25693:	# 2.437500
	.word	2.437500
l.25680:	# 0.000196
	.word	0.000196
l.25678:	# 0.008333
	.word	0.008333
l.25676:	# 0.166667
	.word	0.166667
l.28450:	# 128.000000
	.word	128.000000
l.28440:	# 0.785398
	.word	0.785398
l.28438:	# 1.570796
	.word	1.570796
l.28436:	# 6.283185
	.word	6.283185
l.28434:	# 3.141593
	.word	3.141593
l.28419:	# 1000000000.000000
	.word	1000000000.000000
l.28415:	# 255.000000
	.word	255.000000
l.27595:	# 150.000000
	.word	150.000000
int_of_float.2517.17688:
	lw		x4, 8(x29)	# 129
	flw		f2, 4(x29)	# 129
	fle		x31, f2, f1	# 129
	beq		x31, x0, fle_else.31587	# 129
	fadd	f2, f0, f16	# 130
	fle		x31, f2, f1	# 130
	beq		x31, x0, fle_else.31588	# 130
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
fle_else.31588:
	addi	x4, x0, 0	# 130
	jalr	x0, x1, 0	# 130
fle_else.31587:
	fsub	f1, f0, f1	# 131
	sw		x1, -4(x2)	# 131
	addi	x2, x2, -8	# 131
	lw		x31, 0(x29)	# 131
	jalr	x1, x31, 0	# 131
	addi	x2, x2, 8	# 131
	lw		x1, -4(x2)	# 131
	sub		x4, x0, x4	# 131
	jalr	x0, x1, 0	# 131
float_of_int.2519.17690:
	lw		x5, 12(x29)	# 133
	lw		x6, 8(x29)	# 133
	flw		f1, 4(x29)	# 133
	ble		x5, x4, ble.31589	# 133
	sub		x4, x0, x4	# 135
	sw		x1, 0(x2)	# 135
	addi	x2, x2, -4	# 135
	lw		x31, 0(x29)	# 135
	jalr	x1, x31, 0	# 135
	addi	x2, x2, 4	# 135
	lw		x1, 0(x2)	# 135
	fsub	f1, f0, f1	# 135
	jalr	x0, x1, 0	# 135
ble.31589:
	ble		x6, x4, ble.31590	# 134
	jalr	x0, x1, 0	# 134
ble.31590:
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
sin.2531.17696:
	flw		f2, 20(x29)	# 165
	flw		f3, 16(x29)	# 165
	flw		f4, 12(x29)	# 165
	flw		f5, 8(x29)	# 165
	flw		f6, 4(x29)	# 165
	fle		x31, f6, f1	# 165
	beq		x31, x0, fle_else.31591	# 165
	fle		x31, f4, f1	# 166
	beq		x31, x0, fle_else.31592	# 166
	fsub	f1, f1, f4	# 166
	lw		x31, 0(x29)	# 166
	jalr	x0, x31, 0	# 166
fle_else.31592:
	fle		x31, f5, f1	# 167
	beq		x31, x0, fle_else.31593	# 167
	fsub	f1, f1, f5	# 167
	sw		x1, 0(x2)	# 167
	addi	x2, x2, -4	# 167
	lw		x31, 0(x29)	# 167
	jalr	x1, x31, 0	# 167
	addi	x2, x2, 4	# 167
	lw		x1, 0(x2)	# 167
	fsub	f1, f0, f1	# 167
	jalr	x0, x1, 0	# 167
fle_else.31593:
	fle		x31, f1, f3	# 168
	beq		x31, x0, fle_else.31594	# 168
	fle		x31, f2, f1	# 169
	beq		x31, x0, fle_else.31595	# 169
	fsub	f1, f3, f1	# 169
	fmul	f1, f1, f1	# 160
	fmul	f2, f1, f1	# 161
	fadd	f3, f0, f16	# 162
	fadd	f4, f0, f17	# 162
	fmul	f4, f4, f1	# 162
	fsub	f3, f3, f4	# 162
	lui		x4, %hi(l.25685)	# 162
	ori		x4, x0, %lo(l.25685)	# 162
	flw		f4, 0(x4)	# 162
	fmul	f4, f4, f2	# 162
	fadd	f3, f3, f4	# 162
	lui		x4, %hi(l.25687)	# 162
	ori		x4, x0, %lo(l.25687)	# 162
	flw		f4, 0(x4)	# 162
	fmul	f1, f4, f1	# 162
	fmul	f1, f1, f2	# 162
	fsub	f1, f3, f1	# 162
	jalr	x0, x1, 0	# 162
fle_else.31595:
	fmul	f2, f1, f1	# 155
	fmul	f3, f1, f2	# 156
	lui		x4, %hi(l.25676)	# 157
	ori		x4, x0, %lo(l.25676)	# 157
	flw		f4, 0(x4)	# 157
	fmul	f4, f4, f3	# 157
	fsub	f1, f1, f4	# 157
	lui		x4, %hi(l.25678)	# 157
	ori		x4, x0, %lo(l.25678)	# 157
	flw		f4, 0(x4)	# 157
	fmul	f4, f4, f2	# 157
	fmul	f4, f4, f3	# 157
	fadd	f1, f1, f4	# 157
	lui		x4, %hi(l.25680)	# 157
	ori		x4, x0, %lo(l.25680)	# 157
	flw		f4, 0(x4)	# 157
	fmul	f4, f4, f2	# 157
	fmul	f2, f4, f2	# 157
	fmul	f2, f2, f3	# 157
	fsub	f1, f1, f2	# 157
	jalr	x0, x1, 0	# 157
fle_else.31594:
	fsub	f1, f5, f1	# 168
	lw		x31, 0(x29)	# 168
	jalr	x0, x31, 0	# 168
fle_else.31591:
	fsub	f1, f0, f1	# 165
	sw		x1, 0(x2)	# 165
	addi	x2, x2, -4	# 165
	lw		x31, 0(x29)	# 165
	jalr	x1, x31, 0	# 165
	addi	x2, x2, 4	# 165
	lw		x1, 0(x2)	# 165
	fsub	f1, f0, f1	# 165
	jalr	x0, x1, 0	# 165
cos.2533.17698:
	lw		x4, 16(x29)	# 173
	flw		f2, 12(x29)	# 173
	flw		f3, 8(x29)	# 173
	flw		f4, 4(x29)	# 173
	fle		x31, f4, f1	# 173
	beq		x31, x0, fle_else.31596	# 173
	fle		x31, f1, f2	# 174
	beq		x31, x0, fle_else.31597	# 174
	fmul	f1, f1, f1	# 160
	fmul	f2, f1, f1	# 161
	fadd	f3, f0, f16	# 162
	fadd	f4, f0, f17	# 162
	fmul	f4, f4, f1	# 162
	fsub	f3, f3, f4	# 162
	lui		x4, %hi(l.25685)	# 162
	ori		x4, x0, %lo(l.25685)	# 162
	flw		f4, 0(x4)	# 162
	fmul	f4, f4, f2	# 162
	fadd	f3, f3, f4	# 162
	lui		x4, %hi(l.25687)	# 162
	ori		x4, x0, %lo(l.25687)	# 162
	flw		f4, 0(x4)	# 162
	fmul	f1, f4, f1	# 162
	fmul	f1, f1, f2	# 162
	fsub	f1, f3, f1	# 162
	jalr	x0, x1, 0	# 162
fle_else.31597:
	fsub	f1, f3, f1	# 174
	addi	x29, x4, 0
	lw		x31, 0(x29)	# 174
	jalr	x0, x31, 0	# 174
fle_else.31596:
	fsub	f1, f0, f1	# 173
	lw		x31, 0(x29)	# 173
	jalr	x0, x31, 0	# 173
atan.2535.17700:
	flw		f2, 12(x29)	# 178
	flw		f3, 8(x29)	# 178
	flw		f4, 4(x29)	# 178
	fle		x31, f4, f1	# 178
	beq		x31, x0, fle_else.31598	# 178
	lui		x4, %hi(l.25693)	# 179
	ori		x4, x0, %lo(l.25693)	# 179
	flw		f4, 0(x4)	# 179
	fle		x31, f1, f4	# 179
	beq		x31, x0, fle_else.31599	# 179
	lui		x4, %hi(l.25696)	# 180
	ori		x4, x0, %lo(l.25696)	# 180
	flw		f3, 0(x4)	# 180
	fle		x31, f3, f1	# 180
	beq		x31, x0, fle_else.31600	# 180
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
fle_else.31600:
	fmul	f2, f1, f1	# 182
	fmul	f3, f1, f2	# 183
	fmul	f4, f2, f2	# 184
	lui		x4, %hi(l.25698)	# 185
	ori		x4, x0, %lo(l.25698)	# 185
	flw		f5, 0(x4)	# 185
	fmul	f5, f5, f3	# 185
	fsub	f1, f1, f5	# 185
	fadd	f5, f0, f30	# 185
	fmul	f5, f5, f2	# 185
	fmul	f5, f5, f3	# 185
	fadd	f1, f1, f5	# 185
	lui		x4, %hi(l.25702)	# 185
	ori		x4, x0, %lo(l.25702)	# 185
	flw		f5, 0(x4)	# 185
	fmul	f5, f5, f4	# 185
	fmul	f5, f5, f3	# 185
	fsub	f1, f1, f5	# 185
	lui		x4, %hi(l.25704)	# 186
	ori		x4, x0, %lo(l.25704)	# 186
	flw		f5, 0(x4)	# 186
	fmul	f2, f5, f2	# 186
	fmul	f2, f2, f4	# 186
	fmul	f2, f2, f3	# 186
	fadd	f1, f1, f2	# 185
	lui		x4, %hi(l.25706)	# 186
	ori		x4, x0, %lo(l.25706)	# 186
	flw		f2, 0(x4)	# 186
	fmul	f2, f2, f4	# 186
	fmul	f2, f2, f4	# 186
	fmul	f2, f2, f3	# 186
	fsub	f1, f1, f2	# 185
	jalr	x0, x1, 0	# 185
fle_else.31599:
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
fle_else.31598:
	fsub	f1, f0, f1	# 178
	sw		x1, -8(x2)	# 178
	addi	x2, x2, -12	# 178
	lw		x31, 0(x29)	# 178
	jalr	x1, x31, 0	# 178
	addi	x2, x2, 12	# 178
	lw		x1, -8(x2)	# 178
	fsub	f1, f0, f1	# 178
	jalr	x0, x1, 0	# 178
read_object.2672.17702:
	lw		x5, 32(x29)	# 861
	lw		x6, 28(x29)	# 861
	lw		x7, 24(x29)	# 861
	lw		x8, 20(x29)	# 861
	lw		x9, 16(x29)	# 861
	lw		x10, 12(x29)	# 861
	lw		x11, 8(x29)	# 861
	flw		f1, 4(x29)	# 861
	ble		x9, x4, ble.31601	# 861
	sw		x29, 0(x2)	# 779
	sw		x5, -4(x2)	# 779
	sw		x6, -8(x2)	# 779
	sw		x7, -12(x2)	# 779
	sw		x11, -16(x2)	# 779
	sw		x10, -20(x2)	# 779
	sw		x4, -24(x2)	# 779
	fsw		f1, -28(x2)	# 779
	sw		x8, -32(x2)	# 779
	sw		x1, -36(x2)	# 779
	addi	x2, x2, -40	# 779
	jal		x1, min_caml_read_int	# 779
	addi	x2, x2, 40	# 779
	lw		x1, -36(x2)	# 779
	lw		x5, -32(x2)	# 780
	beq		x4, x5, beq.31603	# 780
	sw		x4, -36(x2)	# 782
	sw		x1, -40(x2)	# 782
	addi	x2, x2, -44	# 782
	jal		x1, min_caml_read_int	# 782
	addi	x2, x2, 44	# 782
	lw		x1, -40(x2)	# 782
	sw		x4, -40(x2)	# 783
	sw		x1, -44(x2)	# 783
	addi	x2, x2, -48	# 783
	jal		x1, min_caml_read_int	# 783
	addi	x2, x2, 48	# 783
	lw		x1, -44(x2)	# 783
	sw		x4, -44(x2)	# 784
	sw		x1, -48(x2)	# 784
	addi	x2, x2, -52	# 784
	jal		x1, min_caml_read_int	# 784
	addi	x2, x2, 52	# 784
	lw		x1, -48(x2)	# 784
	addi	x5, x0, 3	# 786
	fadd	f1, f0, f0	# 786
	sw		x4, -48(x2)	# 786
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 786
	addi	x2, x2, -56	# 786
	jal		x1, min_caml_create_float_array	# 786
	addi	x2, x2, 56	# 786
	lw		x1, -52(x2)	# 786
	addi	x5, x0, 0	# 787
	sw		x4, -52(x2)	# 787
	sw		x5, -56(x2)	# 787
	sw		x1, -60(x2)	# 787
	addi	x2, x2, -64	# 787
	jal		x1, min_caml_read_float	# 787
	addi	x2, x2, 64	# 787
	lw		x1, -60(x2)	# 787
	lw		x4, -56(x2)	# 787
	mul		x4, x30, x4	# 787
	lw		x5, -52(x2)	# 787
	add		x4, x5, x4	# 787
	fsw		f1, 0(x4)	# 787
	addi	x4, x0, 1	# 788
	sw		x4, -60(x2)	# 788
	sw		x1, -64(x2)	# 788
	addi	x2, x2, -68	# 788
	jal		x1, min_caml_read_float	# 788
	addi	x2, x2, 68	# 788
	lw		x1, -64(x2)	# 788
	lw		x4, -60(x2)	# 788
	mul		x4, x30, x4	# 788
	lw		x5, -52(x2)	# 788
	add		x4, x5, x4	# 788
	fsw		f1, 0(x4)	# 788
	addi	x4, x0, 2	# 789
	sw		x4, -64(x2)	# 789
	sw		x1, -68(x2)	# 789
	addi	x2, x2, -72	# 789
	jal		x1, min_caml_read_float	# 789
	addi	x2, x2, 72	# 789
	lw		x1, -68(x2)	# 789
	lw		x4, -64(x2)	# 789
	mul		x4, x30, x4	# 789
	lw		x5, -52(x2)	# 789
	add		x4, x5, x4	# 789
	fsw		f1, 0(x4)	# 789
	addi	x4, x0, 3	# 791
	fadd	f1, f0, f0	# 791
	sw		x1, -68(x2)	# 791
	addi	x2, x2, -72	# 791
	jal		x1, min_caml_create_float_array	# 791
	addi	x2, x2, 72	# 791
	lw		x1, -68(x2)	# 791
	addi	x5, x0, 0	# 792
	sw		x4, -68(x2)	# 792
	sw		x5, -72(x2)	# 792
	sw		x1, -76(x2)	# 792
	addi	x2, x2, -80	# 792
	jal		x1, min_caml_read_float	# 792
	addi	x2, x2, 80	# 792
	lw		x1, -76(x2)	# 792
	lw		x4, -72(x2)	# 792
	mul		x4, x30, x4	# 792
	lw		x5, -68(x2)	# 792
	add		x4, x5, x4	# 792
	fsw		f1, 0(x4)	# 792
	addi	x4, x0, 1	# 793
	sw		x4, -76(x2)	# 793
	sw		x1, -80(x2)	# 793
	addi	x2, x2, -84	# 793
	jal		x1, min_caml_read_float	# 793
	addi	x2, x2, 84	# 793
	lw		x1, -80(x2)	# 793
	lw		x4, -76(x2)	# 793
	mul		x4, x30, x4	# 793
	lw		x5, -68(x2)	# 793
	add		x4, x5, x4	# 793
	fsw		f1, 0(x4)	# 793
	addi	x4, x0, 2	# 794
	sw		x4, -80(x2)	# 794
	sw		x1, -84(x2)	# 794
	addi	x2, x2, -88	# 794
	jal		x1, min_caml_read_float	# 794
	addi	x2, x2, 88	# 794
	lw		x1, -84(x2)	# 794
	lw		x4, -80(x2)	# 794
	mul		x4, x30, x4	# 794
	lw		x5, -68(x2)	# 794
	add		x4, x5, x4	# 794
	fsw		f1, 0(x4)	# 794
	sw		x1, -84(x2)	# 796
	addi	x2, x2, -88	# 796
	jal		x1, min_caml_read_float	# 796
	addi	x2, x2, 88	# 796
	lw		x1, -84(x2)	# 796
	flw		f2, -28(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31605	# 122
	addi	x4, x0, 0	# 122
	jal		x0, fle_cont.31604	# 122
fle_else.31605:
	addi	x4, x0, 1	# 122
fle_cont.31604:
	addi	x5, x0, 2	# 798
	fadd	f3, f0, f0	# 798
	fsw		f1, -84(x2)	# 798
	sw		x4, -88(x2)	# 798
	addi	x4, x5, 0
	fadd	f1, f0, f3
	sw		x1, -92(x2)	# 798
	addi	x2, x2, -96	# 798
	jal		x1, min_caml_create_float_array	# 798
	addi	x2, x2, 96	# 798
	lw		x1, -92(x2)	# 798
	addi	x5, x0, 0	# 799
	sw		x4, -92(x2)	# 799
	sw		x5, -96(x2)	# 799
	sw		x1, -100(x2)	# 799
	addi	x2, x2, -104	# 799
	jal		x1, min_caml_read_float	# 799
	addi	x2, x2, 104	# 799
	lw		x1, -100(x2)	# 799
	lw		x4, -96(x2)	# 799
	mul		x4, x30, x4	# 799
	lw		x5, -92(x2)	# 799
	add		x4, x5, x4	# 799
	fsw		f1, 0(x4)	# 799
	addi	x4, x0, 1	# 800
	sw		x4, -100(x2)	# 800
	sw		x1, -104(x2)	# 800
	addi	x2, x2, -108	# 800
	jal		x1, min_caml_read_float	# 800
	addi	x2, x2, 108	# 800
	lw		x1, -104(x2)	# 800
	lw		x4, -100(x2)	# 800
	mul		x4, x30, x4	# 800
	lw		x5, -92(x2)	# 800
	add		x4, x5, x4	# 800
	fsw		f1, 0(x4)	# 800
	addi	x4, x0, 3	# 802
	fadd	f1, f0, f0	# 802
	sw		x1, -104(x2)	# 802
	addi	x2, x2, -108	# 802
	jal		x1, min_caml_create_float_array	# 802
	addi	x2, x2, 108	# 802
	lw		x1, -104(x2)	# 802
	addi	x5, x0, 0	# 803
	sw		x4, -104(x2)	# 803
	sw		x5, -108(x2)	# 803
	sw		x1, -112(x2)	# 803
	addi	x2, x2, -116	# 803
	jal		x1, min_caml_read_float	# 803
	addi	x2, x2, 116	# 803
	lw		x1, -112(x2)	# 803
	lw		x4, -108(x2)	# 803
	mul		x4, x30, x4	# 803
	lw		x5, -104(x2)	# 803
	add		x4, x5, x4	# 803
	fsw		f1, 0(x4)	# 803
	addi	x4, x0, 1	# 804
	sw		x4, -112(x2)	# 804
	sw		x1, -116(x2)	# 804
	addi	x2, x2, -120	# 804
	jal		x1, min_caml_read_float	# 804
	addi	x2, x2, 120	# 804
	lw		x1, -116(x2)	# 804
	lw		x4, -112(x2)	# 804
	mul		x4, x30, x4	# 804
	lw		x5, -104(x2)	# 804
	add		x4, x5, x4	# 804
	fsw		f1, 0(x4)	# 804
	addi	x4, x0, 2	# 805
	sw		x4, -116(x2)	# 805
	sw		x1, -120(x2)	# 805
	addi	x2, x2, -124	# 805
	jal		x1, min_caml_read_float	# 805
	addi	x2, x2, 124	# 805
	lw		x1, -120(x2)	# 805
	lw		x4, -116(x2)	# 805
	mul		x4, x30, x4	# 805
	lw		x5, -104(x2)	# 805
	add		x4, x5, x4	# 805
	fsw		f1, 0(x4)	# 805
	addi	x4, x0, 3	# 807
	fadd	f1, f0, f0	# 807
	sw		x1, -120(x2)	# 807
	addi	x2, x2, -124	# 807
	jal		x1, min_caml_create_float_array	# 807
	addi	x2, x2, 124	# 807
	lw		x1, -120(x2)	# 807
	addi	x5, x0, 0	# 808
	lw		x6, -48(x2)	# 808
	sw		x4, -120(x2)	# 808
	beq		x6, x5, beq_cont.31606	# 808
	addi	x5, x0, 0	# 810
	sw		x5, -124(x2)	# 810
	sw		x1, -128(x2)	# 810
	addi	x2, x2, -132	# 810
	jal		x1, min_caml_read_float	# 810
	addi	x2, x2, 132	# 810
	lw		x1, -128(x2)	# 810
	fadd	f2, f0, f24	# 677
	fmul	f1, f1, f2	# 677
	lw		x4, -124(x2)	# 810
	mul		x4, x30, x4	# 810
	lw		x5, -120(x2)	# 810
	add		x4, x5, x4	# 810
	fsw		f1, 0(x4)	# 810
	addi	x4, x0, 1	# 811
	sw		x4, -128(x2)	# 811
	sw		x1, -132(x2)	# 811
	addi	x2, x2, -136	# 811
	jal		x1, min_caml_read_float	# 811
	addi	x2, x2, 136	# 811
	lw		x1, -132(x2)	# 811
	fadd	f2, f0, f24	# 677
	fmul	f1, f1, f2	# 677
	lw		x4, -128(x2)	# 811
	mul		x4, x30, x4	# 811
	lw		x5, -120(x2)	# 811
	add		x4, x5, x4	# 811
	fsw		f1, 0(x4)	# 811
	addi	x4, x0, 2	# 812
	sw		x4, -132(x2)	# 812
	sw		x1, -136(x2)	# 812
	addi	x2, x2, -140	# 812
	jal		x1, min_caml_read_float	# 812
	addi	x2, x2, 140	# 812
	lw		x1, -136(x2)	# 812
	fadd	f2, f0, f24	# 677
	fmul	f1, f1, f2	# 677
	lw		x4, -132(x2)	# 812
	mul		x4, x30, x4	# 812
	lw		x5, -120(x2)	# 812
	add		x4, x5, x4	# 812
	fsw		f1, 0(x4)	# 812
beq_cont.31606:
	addi	x4, x0, 2	# 819
	lw		x5, -40(x2)	# 819
	beq		x5, x4, beq.31608	# 819
	lw		x4, -88(x2)	# 819
	jal		x0, beq_cont.31607	# 819
beq.31608:
	addi	x4, x0, 1	# 819
beq_cont.31607:
	addi	x6, x0, 4	# 820
	fadd	f1, f0, f0	# 820
	sw		x4, -136(x2)	# 820
	addi	x4, x6, 0
	sw		x1, -140(x2)	# 820
	addi	x2, x2, -144	# 820
	jal		x1, min_caml_create_float_array	# 820
	addi	x2, x2, 144	# 820
	lw		x1, -140(x2)	# 820
	addi	x5, x3, 0	# 823
	addi	x3, x3, 44	# 823
	sw		x4, 40(x5)	# 823
	lw		x4, -120(x2)	# 823
	sw		x4, 36(x5)	# 823
	lw		x6, -104(x2)	# 823
	sw		x6, 32(x5)	# 823
	lw		x6, -92(x2)	# 823
	sw		x6, 28(x5)	# 823
	lw		x6, -136(x2)	# 823
	sw		x6, 24(x5)	# 823
	lw		x6, -68(x2)	# 823
	sw		x6, 20(x5)	# 823
	lw		x6, -52(x2)	# 823
	sw		x6, 16(x5)	# 823
	lw		x7, -48(x2)	# 823
	sw		x7, 12(x5)	# 823
	lw		x8, -44(x2)	# 823
	sw		x8, 8(x5)	# 823
	lw		x8, -40(x2)	# 823
	sw		x8, 4(x5)	# 823
	lw		x9, -36(x2)	# 823
	sw		x9, 0(x5)	# 823
	lw		x9, -24(x2)	# 831
	mul		x10, x30, x9	# 831
	addi	x10, x10, 60048	# 831
	sw		x5, 0(x10)	# 831
	addi	x5, x0, 3	# 833
	beq		x8, x5, beq.31610	# 833
	addi	x5, x0, 2	# 843
	beq		x8, x5, beq.31612	# 843
	jal		x0, beq_cont.31611	# 843
beq.31612:
	lw		x5, -20(x2)	# 283
	mul		x8, x30, x5	# 283
	add		x8, x6, x8	# 283
	flw		f1, 0(x8)	# 283
	fmul	f1, f1, f1	# 127
	lw		x8, -16(x2)	# 283
	mul		x10, x30, x8	# 283
	add		x10, x6, x10	# 283
	flw		f2, 0(x10)	# 283
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 283
	lw		x10, -12(x2)	# 283
	mul		x11, x30, x10	# 283
	add		x11, x6, x11	# 283
	flw		f2, 0(x11)	# 283
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 283
	fsqrt	f1, f1	# 283
	flw		f2, -28(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31614	# 120
	fadd	f1, f0, f16	# 284
	jal		x0, feq_cont.31613	# 120
feq_else.31614:
	flw		f3, -84(x2)	# 122
	fle		x31, f2, f3	# 122
	beq		x31, x0, fle_else.31616	# 122
	fadd	f2, f0, f18	# 284
	fdiv	f1, f2, f1	# 284
	jal		x0, fle_cont.31615	# 122
fle_else.31616:
	fadd	f2, f0, f16	# 284
	fdiv	f1, f2, f1	# 284
fle_cont.31615:
feq_cont.31613:
	mul		x11, x30, x5	# 285
	add		x11, x6, x11	# 285
	flw		f2, 0(x11)	# 285
	fmul	f2, f2, f1	# 285
	mul		x11, x30, x5	# 285
	add		x11, x6, x11	# 285
	fsw		f2, 0(x11)	# 285
	mul		x11, x30, x8	# 286
	add		x11, x6, x11	# 286
	flw		f2, 0(x11)	# 286
	fmul	f2, f2, f1	# 286
	mul		x11, x30, x8	# 286
	add		x11, x6, x11	# 286
	fsw		f2, 0(x11)	# 286
	mul		x11, x30, x10	# 287
	add		x11, x6, x11	# 287
	flw		f2, 0(x11)	# 287
	fmul	f1, f2, f1	# 287
	mul		x11, x30, x10	# 287
	add		x11, x6, x11	# 287
	fsw		f1, 0(x11)	# 287
beq_cont.31611:
	jal		x0, beq_cont.31609	# 833
beq.31610:
	addi	x5, x0, 0	# 836
	mul		x5, x30, x5	# 836
	add		x5, x6, x5	# 836
	flw		f1, 0(x5)	# 836
	addi	x5, x0, 0	# 837
	flw		f2, -28(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31618	# 120
	fadd	f1, f0, f0	# 837
	jal		x0, feq_cont.31617	# 120
feq_else.31618:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31620	# 120
	fadd	f3, f0, f2	# 212
	jal		x0, feq_cont.31619	# 120
feq_else.31620:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.31622	# 121
	fadd	f3, f0, f18	# 214
	jal		x0, fle_cont.31621	# 121
fle_else.31622:
	fadd	f3, f0, f16	# 213
fle_cont.31621:
feq_cont.31619:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 837
feq_cont.31617:
	mul		x5, x30, x5	# 837
	add		x5, x6, x5	# 837
	fsw		f1, 0(x5)	# 837
	addi	x5, x0, 1	# 838
	mul		x5, x30, x5	# 838
	add		x5, x6, x5	# 838
	flw		f1, 0(x5)	# 838
	addi	x5, x0, 1	# 839
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31624	# 120
	fadd	f1, f0, f0	# 839
	jal		x0, feq_cont.31623	# 120
feq_else.31624:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31626	# 120
	fadd	f3, f0, f2	# 212
	jal		x0, feq_cont.31625	# 120
feq_else.31626:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.31628	# 121
	fadd	f3, f0, f18	# 214
	jal		x0, fle_cont.31627	# 121
fle_else.31628:
	fadd	f3, f0, f16	# 213
fle_cont.31627:
feq_cont.31625:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 839
feq_cont.31623:
	mul		x5, x30, x5	# 839
	add		x5, x6, x5	# 839
	fsw		f1, 0(x5)	# 839
	addi	x5, x0, 2	# 840
	mul		x5, x30, x5	# 840
	add		x5, x6, x5	# 840
	flw		f1, 0(x5)	# 840
	addi	x5, x0, 2	# 841
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31630	# 120
	fadd	f1, f0, f0	# 841
	jal		x0, feq_cont.31629	# 120
feq_else.31630:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31632	# 120
	jal		x0, feq_cont.31631	# 120
feq_else.31632:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.31634	# 121
	fadd	f2, f0, f18	# 214
	jal		x0, fle_cont.31633	# 121
fle_else.31634:
	fadd	f2, f0, f16	# 213
fle_cont.31633:
feq_cont.31631:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f2, f1	# 841
feq_cont.31629:
	mul		x5, x30, x5	# 841
	add		x5, x6, x5	# 841
	fsw		f1, 0(x5)	# 841
beq_cont.31609:
	addi	x5, x0, 0	# 849
	beq		x7, x5, beq_cont.31635	# 849
	lw		x5, -20(x2)	# 738
	mul		x7, x30, x5	# 738
	add		x7, x4, x7	# 738
	flw		f1, 0(x7)	# 738
	lw		x29, -8(x2)	# 738
	sw		x1, -140(x2)	# 738
	addi	x2, x2, -144	# 738
	lw		x31, 0(x29)	# 738
	jalr	x1, x31, 0	# 738
	addi	x2, x2, 144	# 738
	lw		x1, -140(x2)	# 738
	lw		x4, -20(x2)	# 739
	mul		x5, x30, x4	# 739
	lw		x6, -120(x2)	# 739
	add		x5, x6, x5	# 739
	flw		f2, 0(x5)	# 739
	lw		x29, -4(x2)	# 739
	fsw		f1, -140(x2)	# 739
	fadd	f1, f0, f2
	sw		x1, -144(x2)	# 739
	addi	x2, x2, -148	# 739
	lw		x31, 0(x29)	# 739
	jalr	x1, x31, 0	# 739
	addi	x2, x2, 148	# 739
	lw		x1, -144(x2)	# 739
	lw		x4, -16(x2)	# 740
	mul		x5, x30, x4	# 740
	lw		x6, -120(x2)	# 740
	add		x5, x6, x5	# 740
	flw		f2, 0(x5)	# 740
	lw		x29, -8(x2)	# 740
	fsw		f1, -144(x2)	# 740
	fadd	f1, f0, f2
	sw		x1, -148(x2)	# 740
	addi	x2, x2, -152	# 740
	lw		x31, 0(x29)	# 740
	jalr	x1, x31, 0	# 740
	addi	x2, x2, 152	# 740
	lw		x1, -148(x2)	# 740
	lw		x4, -16(x2)	# 741
	mul		x5, x30, x4	# 741
	lw		x6, -120(x2)	# 741
	add		x5, x6, x5	# 741
	flw		f2, 0(x5)	# 741
	lw		x29, -4(x2)	# 741
	fsw		f1, -148(x2)	# 741
	fadd	f1, f0, f2
	sw		x1, -152(x2)	# 741
	addi	x2, x2, -156	# 741
	lw		x31, 0(x29)	# 741
	jalr	x1, x31, 0	# 741
	addi	x2, x2, 156	# 741
	lw		x1, -152(x2)	# 741
	lw		x4, -12(x2)	# 742
	mul		x5, x30, x4	# 742
	lw		x6, -120(x2)	# 742
	add		x5, x6, x5	# 742
	flw		f2, 0(x5)	# 742
	lw		x29, -8(x2)	# 742
	fsw		f1, -152(x2)	# 742
	fadd	f1, f0, f2
	sw		x1, -156(x2)	# 742
	addi	x2, x2, -160	# 742
	lw		x31, 0(x29)	# 742
	jalr	x1, x31, 0	# 742
	addi	x2, x2, 160	# 742
	lw		x1, -156(x2)	# 742
	lw		x4, -12(x2)	# 743
	mul		x5, x30, x4	# 743
	lw		x6, -120(x2)	# 743
	add		x5, x6, x5	# 743
	flw		f2, 0(x5)	# 743
	lw		x29, -4(x2)	# 743
	fsw		f1, -156(x2)	# 743
	fadd	f1, f0, f2
	sw		x1, -160(x2)	# 743
	addi	x2, x2, -164	# 743
	lw		x31, 0(x29)	# 743
	jalr	x1, x31, 0	# 743
	addi	x2, x2, 164	# 743
	lw		x1, -160(x2)	# 743
	flw		f2, -156(x2)	# 745
	flw		f3, -148(x2)	# 745
	fmul	f4, f3, f2	# 745
	flw		f5, -152(x2)	# 746
	flw		f6, -144(x2)	# 746
	fmul	f7, f6, f5	# 746
	fmul	f8, f7, f2	# 746
	flw		f9, -140(x2)	# 746
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
	lw		x4, -20(x2)	# 758
	mul		x5, x30, x4	# 758
	lw		x6, -52(x2)	# 758
	add		x5, x6, x5	# 758
	flw		f6, 0(x5)	# 758
	lw		x5, -16(x2)	# 759
	mul		x7, x30, x5	# 759
	add		x7, x6, x7	# 759
	flw		f9, 0(x7)	# 759
	lw		x7, -12(x2)	# 760
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
	lui		x6, %hi(l.25829)	# 770
	ori		x6, x0, %lo(l.25829)	# 770
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
	mul		x6, x30, x4	# 770
	lw		x8, -120(x2)	# 770
	add		x6, x8, x6	# 770
	fsw		f14, 0(x6)	# 770
	fmul	f4, f6, f4	# 771
	fmul	f6, f4, f11	# 771
	fmul	f9, f9, f12	# 771
	fmul	f1, f9, f1	# 771
	fadd	f1, f6, f1	# 771
	fmul	f2, f10, f2	# 771
	fmul	f3, f2, f3	# 771
	fadd	f1, f1, f3	# 771
	fmul	f1, f13, f1	# 771
	mul		x6, x30, x5	# 771
	add		x6, x8, x6	# 771
	fsw		f1, 0(x6)	# 771
	fmul	f1, f4, f8	# 772
	fmul	f3, f9, f7	# 772
	fadd	f1, f1, f3	# 772
	fmul	f2, f2, f5	# 772
	fadd	f1, f1, f2	# 772
	fmul	f1, f13, f1	# 772
	mul		x6, x30, x7	# 772
	add		x6, x8, x6	# 772
	fsw		f1, 0(x6)	# 772
beq_cont.31635:
	addi	x4, x0, 1	# 853
	jal		x0, beq_cont.31602	# 780
beq.31603:
	addi	x4, x0, 0	# 856
beq_cont.31602:
	lw		x5, -20(x2)	# 862
	beq		x4, x5, beq.31636	# 862
	lw		x4, -16(x2)	# 863
	lw		x5, -24(x2)	# 863
	add		x4, x5, x4	# 863
	lw		x29, 0(x2)	# 863
	lw		x31, 0(x29)	# 863
	jalr	x0, x31, 0	# 863
beq.31636:
	mul		x4, x30, x5	# 865
	addi	x4, x4, 60000	# 865
	lw		x5, -24(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.31601:
	jalr	x0, x1, 0	# 866
read_net_item.2676.17704:
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
	beq		x4, x5, beq.31639	# 878
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
beq.31639:
	lw		x4, -4(x2)	# 878
	lw		x6, -8(x2)	# 878
	add		x4, x6, x4	# 878
	jal		x0, min_caml_create_array	# 878
read_or_network.2678.17706:
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
	beq		x4, x6, beq.31640	# 886
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
beq.31640:
	lw		x4, -4(x2)	# 887
	lw		x6, -8(x2)	# 887
	add		x4, x6, x4	# 887
	jal		x0, min_caml_create_array	# 887
read_and_network.2680.17708:
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
	beq		x5, x6, beq.31641	# 895
	lw		x5, -8(x2)	# 897
	mul		x6, x30, x5	# 897
	addi	x6, x6, 60332	# 897
	sw		x4, 0(x6)	# 897
	lw		x4, -4(x2)	# 898
	add		x4, x5, x4	# 898
	lw		x29, 0(x2)	# 898
	lw		x31, 0(x29)	# 898
	jalr	x0, x31, 0	# 898
beq.31641:
	jalr	x0, x1, 0	# 895
iter_setup_dirvec_constants.2777.17710:
	lw		x6, 16(x29)	# 1270
	lw		x7, 12(x29)	# 1270
	lw		x8, 8(x29)	# 1270
	flw		f1, 4(x29)	# 1270
	ble		x7, x5, ble.31643	# 1270
	jalr	x0, x1, 0	# 1283
ble.31643:
	mul		x9, x30, x5	# 1271
	addi	x9, x9, 60048	# 1271
	lw		x9, 0(x9)	# 1271
	lw		x10, 4(x4)	# 645
	lw		x11, 0(x4)	# 639
	lw		x12, 4(x9)	# 353
	sw		x4, 0(x2)	# 1275
	sw		x29, -4(x2)	# 1275
	sw		x8, -8(x2)	# 1275
	beq		x12, x8, beq.31646	# 1275
	addi	x13, x0, 2	# 1277
	beq		x12, x13, beq.31648	# 1277
	addi	x12, x0, 5	# 1241
	fadd	f2, f0, f0	# 1241
	sw		x10, -12(x2)	# 1241
	sw		x5, -16(x2)	# 1241
	fsw		f1, -20(x2)	# 1241
	sw		x6, -24(x2)	# 1241
	sw		x7, -28(x2)	# 1241
	sw		x9, -32(x2)	# 1241
	sw		x11, -36(x2)	# 1241
	addi	x4, x12, 0
	fadd	f1, f0, f2
	sw		x1, -40(x2)	# 1241
	addi	x2, x2, -44	# 1241
	jal		x1, min_caml_create_float_array	# 1241
	addi	x2, x2, 44	# 1241
	lw		x1, -40(x2)	# 1241
	addi	x5, x0, 0	# 1243
	mul		x5, x30, x5	# 1243
	lw		x6, -36(x2)	# 1243
	add		x5, x6, x5	# 1243
	flw		f1, 0(x5)	# 1243
	addi	x5, x0, 1	# 1243
	mul		x5, x30, x5	# 1243
	add		x5, x6, x5	# 1243
	flw		f2, 0(x5)	# 1243
	addi	x5, x0, 2	# 1243
	mul		x5, x30, x5	# 1243
	add		x5, x6, x5	# 1243
	flw		f3, 0(x5)	# 1243
	fmul	f4, f1, f1	# 127
	lw		x5, -32(x2)	# 391
	lw		x7, 16(x5)	# 391
	lw		x8, -28(x2)	# 396
	mul		x9, x30, x8	# 396
	add		x7, x7, x9	# 396
	flw		f5, 0(x7)	# 396
	fmul	f4, f4, f5	# 967
	fmul	f5, f2, f2	# 127
	lw		x7, 16(x5)	# 401
	lw		x9, -8(x2)	# 406
	mul		x10, x30, x9	# 406
	add		x7, x7, x10	# 406
	flw		f6, 0(x7)	# 406
	fmul	f5, f5, f6	# 967
	fadd	f4, f4, f5	# 967
	fmul	f5, f3, f3	# 127
	lw		x7, 16(x5)	# 411
	lw		x10, -24(x2)	# 416
	mul		x11, x30, x10	# 416
	add		x7, x7, x11	# 416
	flw		f6, 0(x7)	# 416
	fmul	f5, f5, f6	# 967
	fadd	f4, f4, f5	# 967
	lw		x7, 12(x5)	# 382
	beq		x7, x8, beq.31650	# 969
	fmul	f5, f2, f3	# 973
	lw		x7, 36(x5)	# 511
	mul		x11, x30, x8	# 516
	add		x7, x7, x11	# 516
	flw		f6, 0(x7)	# 516
	fmul	f5, f5, f6	# 973
	fadd	f4, f4, f5	# 972
	fmul	f3, f3, f1	# 974
	lw		x7, 36(x5)	# 521
	mul		x11, x30, x9	# 526
	add		x7, x7, x11	# 526
	flw		f5, 0(x7)	# 526
	fmul	f3, f3, f5	# 974
	fadd	f3, f4, f3	# 972
	fmul	f1, f1, f2	# 975
	lw		x7, 36(x5)	# 531
	mul		x11, x30, x10	# 536
	add		x7, x7, x11	# 536
	flw		f2, 0(x7)	# 536
	fmul	f1, f1, f2	# 975
	fadd	f1, f3, f1	# 972
	jal		x0, beq_cont.31649	# 969
beq.31650:
	fadd	f1, f0, f4	# 970
beq_cont.31649:
	addi	x7, x0, 0	# 1244
	mul		x7, x30, x7	# 1244
	add		x7, x6, x7	# 1244
	flw		f2, 0(x7)	# 1244
	lw		x7, 16(x5)	# 391
	mul		x11, x30, x8	# 396
	add		x7, x7, x11	# 396
	flw		f3, 0(x7)	# 396
	fmul	f2, f2, f3	# 1244
	fsub	f2, f0, f2	# 123
	addi	x7, x0, 1	# 1245
	mul		x7, x30, x7	# 1245
	add		x7, x6, x7	# 1245
	flw		f3, 0(x7)	# 1245
	lw		x7, 16(x5)	# 401
	mul		x11, x30, x9	# 406
	add		x7, x7, x11	# 406
	flw		f4, 0(x7)	# 406
	fmul	f3, f3, f4	# 1245
	fsub	f3, f0, f3	# 123
	addi	x7, x0, 2	# 1246
	mul		x7, x30, x7	# 1246
	add		x7, x6, x7	# 1246
	flw		f4, 0(x7)	# 1246
	lw		x7, 16(x5)	# 411
	mul		x11, x30, x10	# 416
	add		x7, x7, x11	# 416
	flw		f5, 0(x7)	# 416
	fmul	f4, f4, f5	# 1246
	fsub	f4, f0, f4	# 123
	addi	x7, x0, 0	# 1248
	mul		x7, x30, x7	# 1248
	add		x7, x4, x7	# 1248
	fsw		f1, 0(x7)	# 1248
	lw		x7, 12(x5)	# 382
	addi	x11, x0, 0	# 1252
	beq		x7, x11, beq.31652	# 1252
	addi	x7, x0, 1	# 1253
	addi	x11, x0, 2	# 1253
	mul		x11, x30, x11	# 1253
	add		x11, x6, x11	# 1253
	flw		f5, 0(x11)	# 1253
	lw		x11, 36(x5)	# 521
	mul		x12, x30, x9	# 526
	add		x11, x11, x12	# 526
	flw		f6, 0(x11)	# 526
	fmul	f5, f5, f6	# 1253
	addi	x11, x0, 1	# 1253
	mul		x11, x30, x11	# 1253
	add		x11, x6, x11	# 1253
	flw		f6, 0(x11)	# 1253
	lw		x11, 36(x5)	# 531
	mul		x12, x30, x10	# 536
	add		x11, x11, x12	# 536
	flw		f7, 0(x11)	# 536
	fmul	f6, f6, f7	# 1253
	fadd	f5, f5, f6	# 1253
	fadd	f6, f0, f17	# 126
	fmul	f5, f5, f6	# 126
	fsub	f2, f2, f5	# 1253
	mul		x7, x30, x7	# 1253
	add		x7, x4, x7	# 1253
	fsw		f2, 0(x7)	# 1253
	addi	x7, x0, 2	# 1254
	addi	x11, x0, 2	# 1254
	mul		x11, x30, x11	# 1254
	add		x11, x6, x11	# 1254
	flw		f2, 0(x11)	# 1254
	lw		x11, 36(x5)	# 511
	mul		x12, x30, x8	# 516
	add		x11, x11, x12	# 516
	flw		f5, 0(x11)	# 516
	fmul	f2, f2, f5	# 1254
	addi	x11, x0, 0	# 1254
	mul		x11, x30, x11	# 1254
	add		x11, x6, x11	# 1254
	flw		f5, 0(x11)	# 1254
	lw		x11, 36(x5)	# 531
	mul		x10, x30, x10	# 536
	add		x10, x11, x10	# 536
	flw		f6, 0(x10)	# 536
	fmul	f5, f5, f6	# 1254
	fadd	f2, f2, f5	# 1254
	fadd	f5, f0, f17	# 126
	fmul	f2, f2, f5	# 126
	fsub	f2, f3, f2	# 1254
	mul		x7, x30, x7	# 1254
	add		x7, x4, x7	# 1254
	fsw		f2, 0(x7)	# 1254
	addi	x7, x0, 3	# 1255
	addi	x10, x0, 1	# 1255
	mul		x10, x30, x10	# 1255
	add		x10, x6, x10	# 1255
	flw		f2, 0(x10)	# 1255
	lw		x10, 36(x5)	# 511
	mul		x8, x30, x8	# 516
	add		x8, x10, x8	# 516
	flw		f3, 0(x8)	# 516
	fmul	f2, f2, f3	# 1255
	addi	x8, x0, 0	# 1255
	mul		x8, x30, x8	# 1255
	add		x6, x6, x8	# 1255
	flw		f3, 0(x6)	# 1255
	lw		x5, 36(x5)	# 521
	mul		x6, x30, x9	# 526
	add		x5, x5, x6	# 526
	flw		f5, 0(x5)	# 526
	fmul	f3, f3, f5	# 1255
	fadd	f2, f2, f3	# 1255
	fadd	f3, f0, f17	# 126
	fmul	f2, f2, f3	# 126
	fsub	f2, f4, f2	# 1255
	mul		x5, x30, x7	# 1255
	add		x5, x4, x5	# 1255
	fsw		f2, 0(x5)	# 1255
	jal		x0, beq_cont.31651	# 1252
beq.31652:
	addi	x5, x0, 1	# 1257
	mul		x5, x30, x5	# 1257
	add		x5, x4, x5	# 1257
	fsw		f2, 0(x5)	# 1257
	addi	x5, x0, 2	# 1258
	mul		x5, x30, x5	# 1258
	add		x5, x4, x5	# 1258
	fsw		f3, 0(x5)	# 1258
	addi	x5, x0, 3	# 1259
	mul		x5, x30, x5	# 1259
	add		x5, x4, x5	# 1259
	fsw		f4, 0(x5)	# 1259
beq_cont.31651:
	flw		f2, -20(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31654	# 120
	jal		x0, feq_cont.31653	# 120
feq_else.31654:
	addi	x5, x0, 4	# 1262
	fadd	f2, f0, f16	# 1262
	fdiv	f1, f2, f1	# 1262
	mul		x5, x30, x5	# 1262
	add		x5, x4, x5	# 1262
	fsw		f1, 0(x5)	# 1262
feq_cont.31653:
	lw		x5, -16(x2)	# 1280
	mul		x6, x30, x5	# 1280
	lw		x7, -12(x2)	# 1280
	add		x6, x7, x6	# 1280
	sw		x4, 0(x6)	# 1280
	jal		x0, beq_cont.31647	# 1277
beq.31648:
	addi	x12, x0, 4	# 1222
	fadd	f2, f0, f0	# 1222
	sw		x10, -12(x2)	# 1222
	sw		x5, -16(x2)	# 1222
	fsw		f1, -20(x2)	# 1222
	sw		x6, -24(x2)	# 1222
	sw		x7, -28(x2)	# 1222
	sw		x9, -32(x2)	# 1222
	sw		x11, -36(x2)	# 1222
	addi	x4, x12, 0
	fadd	f1, f0, f2
	sw		x1, -40(x2)	# 1222
	addi	x2, x2, -44	# 1222
	jal		x1, min_caml_create_float_array	# 1222
	addi	x2, x2, 44	# 1222
	lw		x1, -40(x2)	# 1222
	addi	x5, x0, 0	# 1224
	mul		x5, x30, x5	# 1224
	lw		x6, -36(x2)	# 1224
	add		x5, x6, x5	# 1224
	flw		f1, 0(x5)	# 1224
	lw		x5, -32(x2)	# 391
	lw		x7, 16(x5)	# 391
	lw		x8, -28(x2)	# 396
	mul		x9, x30, x8	# 396
	add		x7, x7, x9	# 396
	flw		f2, 0(x7)	# 396
	fmul	f1, f1, f2	# 1224
	addi	x7, x0, 1	# 1224
	mul		x7, x30, x7	# 1224
	add		x7, x6, x7	# 1224
	flw		f2, 0(x7)	# 1224
	lw		x7, 16(x5)	# 401
	lw		x9, -8(x2)	# 406
	mul		x10, x30, x9	# 406
	add		x7, x7, x10	# 406
	flw		f3, 0(x7)	# 406
	fmul	f2, f2, f3	# 1224
	fadd	f1, f1, f2	# 1224
	addi	x7, x0, 2	# 1224
	mul		x7, x30, x7	# 1224
	add		x6, x6, x7	# 1224
	flw		f2, 0(x6)	# 1224
	lw		x6, 16(x5)	# 411
	lw		x7, -24(x2)	# 416
	mul		x10, x30, x7	# 416
	add		x6, x6, x10	# 416
	flw		f3, 0(x6)	# 416
	fmul	f2, f2, f3	# 1224
	fadd	f1, f1, f2	# 1224
	flw		f2, -20(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.31656	# 121
	addi	x5, x0, 0	# 1234
	fadd	f1, f0, f0	# 1234
	mul		x5, x30, x5	# 1234
	add		x5, x4, x5	# 1234
	fsw		f1, 0(x5)	# 1234
	jal		x0, fle_cont.31655	# 121
fle_else.31656:
	addi	x6, x0, 0	# 1228
	fadd	f2, f0, f18	# 1228
	fdiv	f2, f2, f1	# 1228
	mul		x6, x30, x6	# 1228
	add		x6, x4, x6	# 1228
	fsw		f2, 0(x6)	# 1228
	addi	x6, x0, 1	# 1230
	lw		x10, 16(x5)	# 391
	mul		x8, x30, x8	# 396
	add		x8, x10, x8	# 396
	flw		f2, 0(x8)	# 396
	fdiv	f2, f2, f1	# 1230
	fsub	f2, f0, f2	# 123
	mul		x6, x30, x6	# 1230
	add		x6, x4, x6	# 1230
	fsw		f2, 0(x6)	# 1230
	addi	x6, x0, 2	# 1231
	lw		x8, 16(x5)	# 401
	mul		x10, x30, x9	# 406
	add		x8, x8, x10	# 406
	flw		f2, 0(x8)	# 406
	fdiv	f2, f2, f1	# 1231
	fsub	f2, f0, f2	# 123
	mul		x6, x30, x6	# 1231
	add		x6, x4, x6	# 1231
	fsw		f2, 0(x6)	# 1231
	addi	x6, x0, 3	# 1232
	lw		x5, 16(x5)	# 411
	mul		x7, x30, x7	# 416
	add		x5, x5, x7	# 416
	flw		f2, 0(x5)	# 416
	fdiv	f1, f2, f1	# 1232
	fsub	f1, f0, f1	# 123
	mul		x5, x30, x6	# 1232
	add		x5, x4, x5	# 1232
	fsw		f1, 0(x5)	# 1232
fle_cont.31655:
	lw		x5, -16(x2)	# 1278
	mul		x6, x30, x5	# 1278
	lw		x7, -12(x2)	# 1278
	add		x6, x7, x6	# 1278
	sw		x4, 0(x6)	# 1278
beq_cont.31647:
	jal		x0, beq_cont.31645	# 1275
beq.31646:
	addi	x12, x0, 6	# 1195
	fadd	f2, f0, f0	# 1195
	sw		x10, -12(x2)	# 1195
	sw		x5, -16(x2)	# 1195
	sw		x6, -24(x2)	# 1195
	sw		x7, -28(x2)	# 1195
	sw		x9, -32(x2)	# 1195
	fsw		f1, -20(x2)	# 1195
	sw		x11, -36(x2)	# 1195
	addi	x4, x12, 0
	fadd	f1, f0, f2
	sw		x1, -40(x2)	# 1195
	addi	x2, x2, -44	# 1195
	jal		x1, min_caml_create_float_array	# 1195
	addi	x2, x2, 44	# 1195
	lw		x1, -40(x2)	# 1195
	addi	x5, x0, 0	# 1197
	mul		x5, x30, x5	# 1197
	lw		x6, -36(x2)	# 1197
	add		x5, x6, x5	# 1197
	flw		f1, 0(x5)	# 1197
	flw		f2, -20(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31658	# 120
	addi	x5, x0, 1	# 1198
	fadd	f1, f0, f0	# 1198
	mul		x5, x30, x5	# 1198
	add		x5, x4, x5	# 1198
	fsw		f1, 0(x5)	# 1198
	jal		x0, feq_cont.31657	# 120
feq_else.31658:
	addi	x5, x0, 0	# 1201
	lw		x7, -32(x2)	# 373
	lw		x8, 24(x7)	# 373
	addi	x9, x0, 0	# 1201
	mul		x9, x30, x9	# 1201
	add		x9, x6, x9	# 1201
	flw		f1, 0(x9)	# 1201
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31660	# 122
	addi	x9, x0, 0	# 122
	jal		x0, fle_cont.31659	# 122
fle_else.31660:
	addi	x9, x0, 1	# 122
fle_cont.31659:
	lw		x10, -28(x2)	# 204
	beq		x8, x10, beq.31662	# 204
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31664	# 122
	addi	x8, x0, 1	# 204
	jal		x0, fle_cont.31663	# 122
fle_else.31664:
	addi	x8, x0, 0	# 204
fle_cont.31663:
	jal		x0, beq_cont.31661	# 204
beq.31662:
	addi	x8, x9, 0	# 204
beq_cont.31661:
	lw		x9, 16(x7)	# 391
	mul		x11, x30, x10	# 396
	add		x9, x9, x11	# 396
	flw		f1, 0(x9)	# 396
	beq		x8, x10, beq.31666	# 219
	jal		x0, beq_cont.31665	# 219
beq.31666:
	fsub	f1, f0, f1	# 123
beq_cont.31665:
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
feq_cont.31657:
	addi	x5, x0, 1	# 1205
	mul		x5, x30, x5	# 1205
	add		x5, x6, x5	# 1205
	flw		f1, 0(x5)	# 1205
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31668	# 120
	addi	x5, x0, 3	# 1206
	fadd	f1, f0, f0	# 1206
	mul		x5, x30, x5	# 1206
	add		x5, x4, x5	# 1206
	fsw		f1, 0(x5)	# 1206
	jal		x0, feq_cont.31667	# 120
feq_else.31668:
	addi	x5, x0, 2	# 1208
	lw		x7, -32(x2)	# 373
	lw		x8, 24(x7)	# 373
	addi	x9, x0, 1	# 1208
	mul		x9, x30, x9	# 1208
	add		x9, x6, x9	# 1208
	flw		f1, 0(x9)	# 1208
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31670	# 122
	addi	x9, x0, 0	# 122
	jal		x0, fle_cont.31669	# 122
fle_else.31670:
	addi	x9, x0, 1	# 122
fle_cont.31669:
	lw		x10, -28(x2)	# 204
	beq		x8, x10, beq.31672	# 204
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31674	# 122
	addi	x8, x0, 1	# 204
	jal		x0, fle_cont.31673	# 122
fle_else.31674:
	addi	x8, x0, 0	# 204
fle_cont.31673:
	jal		x0, beq_cont.31671	# 204
beq.31672:
	addi	x8, x9, 0	# 204
beq_cont.31671:
	lw		x9, 16(x7)	# 401
	lw		x11, -8(x2)	# 406
	mul		x12, x30, x11	# 406
	add		x9, x9, x12	# 406
	flw		f1, 0(x9)	# 406
	beq		x8, x10, beq.31676	# 219
	jal		x0, beq_cont.31675	# 219
beq.31676:
	fsub	f1, f0, f1	# 123
beq_cont.31675:
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
feq_cont.31667:
	addi	x5, x0, 2	# 1211
	mul		x5, x30, x5	# 1211
	add		x5, x6, x5	# 1211
	flw		f1, 0(x5)	# 1211
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31678	# 120
	addi	x5, x0, 5	# 1212
	fadd	f1, f0, f0	# 1212
	mul		x5, x30, x5	# 1212
	add		x5, x4, x5	# 1212
	fsw		f1, 0(x5)	# 1212
	jal		x0, feq_cont.31677	# 120
feq_else.31678:
	addi	x5, x0, 4	# 1214
	lw		x7, -32(x2)	# 373
	lw		x8, 24(x7)	# 373
	addi	x9, x0, 2	# 1214
	mul		x9, x30, x9	# 1214
	add		x9, x6, x9	# 1214
	flw		f1, 0(x9)	# 1214
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31680	# 122
	addi	x9, x0, 0	# 122
	jal		x0, fle_cont.31679	# 122
fle_else.31680:
	addi	x9, x0, 1	# 122
fle_cont.31679:
	lw		x10, -28(x2)	# 204
	beq		x8, x10, beq.31682	# 204
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31684	# 122
	addi	x8, x0, 1	# 204
	jal		x0, fle_cont.31683	# 122
fle_else.31684:
	addi	x8, x0, 0	# 204
fle_cont.31683:
	jal		x0, beq_cont.31681	# 204
beq.31682:
	addi	x8, x9, 0	# 204
beq_cont.31681:
	lw		x7, 16(x7)	# 411
	lw		x9, -24(x2)	# 416
	mul		x9, x30, x9	# 416
	add		x7, x7, x9	# 416
	flw		f1, 0(x7)	# 416
	beq		x8, x10, beq.31686	# 219
	jal		x0, beq_cont.31685	# 219
beq.31686:
	fsub	f1, f0, f1	# 123
beq_cont.31685:
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
feq_cont.31677:
	lw		x5, -16(x2)	# 1276
	mul		x6, x30, x5	# 1276
	lw		x7, -12(x2)	# 1276
	add		x6, x7, x6	# 1276
	sw		x4, 0(x6)	# 1276
beq_cont.31645:
	lw		x4, -8(x2)	# 1282
	sub		x5, x5, x4	# 1282
	lw		x4, 0(x2)	# 1282
	lw		x29, -4(x2)	# 1282
	lw		x31, 0(x29)	# 1282
	jalr	x0, x31, 0	# 1282
setup_startp_constants.2782.17713:
	lw		x6, 12(x29)	# 1295
	lw		x7, 8(x29)	# 1295
	lw		x8, 4(x29)	# 1295
	ble		x7, x5, ble.31687	# 1295
	jalr	x0, x1, 0	# 1310
ble.31687:
	mul		x9, x30, x5	# 1296
	addi	x9, x9, 60048	# 1296
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
	beq		x11, x6, beq.31690	# 1302
	addi	x12, x0, 2	# 1305
	ble		x11, x12, ble_cont.31691	# 1305
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
	beq		x12, x13, beq.31693	# 969
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
	jal		x0, beq_cont.31692	# 969
beq.31693:
	fadd	f1, f0, f4	# 970
beq_cont.31692:
	addi	x6, x0, 3	# 1307
	addi	x7, x0, 3	# 1307
	beq		x11, x7, beq.31695	# 1307
	jal		x0, beq_cont.31694	# 1307
beq.31695:
	fadd	f2, f0, f16	# 1307
	fsub	f1, f1, f2	# 1307
beq_cont.31694:
	mul		x6, x30, x6	# 1307
	add		x6, x10, x6	# 1307
	fsw		f1, 0(x6)	# 1307
ble_cont.31691:
	jal		x0, beq_cont.31689	# 1302
beq.31690:
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
beq_cont.31689:
	sub		x5, x5, x8	# 1309
	lw		x31, 0(x29)	# 1309
	jalr	x0, x31, 0	# 1309
check_all_inside.2807.17716:
	lw		x6, 24(x29)	# 1364
	lw		x7, 20(x29)	# 1364
	lw		x8, 16(x29)	# 1364
	lw		x9, 12(x29)	# 1364
	lw		x10, 8(x29)	# 1364
	flw		f4, 4(x29)	# 1364
	mul		x11, x30, x4	# 1364
	add		x11, x5, x11	# 1364
	lw		x11, 0(x11)	# 1364
	beq		x11, x7, beq.31696	# 1365
	mul		x7, x30, x11	# 1368
	addi	x7, x7, 60048	# 1368
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
	beq		x11, x10, beq.31698	# 1354
	beq		x11, x6, beq.31700	# 1356
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
	beq		x11, x9, beq.31702	# 969
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
	jal		x0, beq_cont.31701	# 969
beq.31702:
	fadd	f5, f0, f8	# 970
beq_cont.31701:
	lw		x6, 4(x7)	# 353
	beq		x6, x8, beq.31704	# 1344
	jal		x0, beq_cont.31703	# 1344
beq.31704:
	fadd	f6, f0, f16	# 1344
	fsub	f5, f5, f6	# 1344
beq_cont.31703:
	lw		x6, 24(x7)	# 373
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.31706	# 122
	addi	x7, x0, 0	# 122
	jal		x0, fle_cont.31705	# 122
fle_else.31706:
	addi	x7, x0, 1	# 122
fle_cont.31705:
	beq		x6, x9, beq.31708	# 204
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.31710	# 122
	addi	x6, x0, 1	# 204
	jal		x0, fle_cont.31709	# 122
fle_else.31710:
	addi	x6, x0, 0	# 204
fle_cont.31709:
	jal		x0, beq_cont.31707	# 204
beq.31708:
	addi	x6, x7, 0	# 204
beq_cont.31707:
	beq		x6, x9, beq.31712	# 1345
	addi	x6, x0, 0	# 1345
	jal		x0, beq_cont.31711	# 1345
beq.31712:
	addi	x6, x0, 1	# 1345
beq_cont.31711:
	jal		x0, beq_cont.31699	# 1356
beq.31700:
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
	beq		x31, x0, fle_else.31714	# 122
	addi	x7, x0, 0	# 122
	jal		x0, fle_cont.31713	# 122
fle_else.31714:
	addi	x7, x0, 1	# 122
fle_cont.31713:
	beq		x6, x9, beq.31716	# 204
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.31718	# 122
	addi	x6, x0, 1	# 204
	jal		x0, fle_cont.31717	# 122
fle_else.31718:
	addi	x6, x0, 0	# 204
fle_cont.31717:
	jal		x0, beq_cont.31715	# 204
beq.31716:
	addi	x6, x7, 0	# 204
beq_cont.31715:
	beq		x6, x9, beq.31720	# 1338
	addi	x6, x0, 0	# 1338
	jal		x0, beq_cont.31719	# 1338
beq.31720:
	addi	x6, x0, 1	# 1338
beq_cont.31719:
beq_cont.31699:
	jal		x0, beq_cont.31697	# 1354
beq.31698:
	fle		x31, f5, f4	# 124
	beq		x31, x0, fle_cont.31721	# 124
	fsub	f5, f0, f5	# 124
fle_cont.31721:
	lw		x8, 16(x7)	# 391
	mul		x11, x30, x9	# 396
	add		x8, x8, x11	# 396
	flw		f8, 0(x8)	# 396
	fle		x31, f8, f5	# 125
	beq		x31, x0, fle_else.31723	# 125
	addi	x6, x0, 0	# 1331
	jal		x0, fle_cont.31722	# 125
fle_else.31723:
	fle		x31, f6, f4	# 124
	beq		x31, x0, fle_else.31725	# 124
	fsub	f5, f0, f6	# 124
	jal		x0, fle_cont.31724	# 124
fle_else.31725:
	fadd	f5, f0, f6	# 124
fle_cont.31724:
	lw		x8, 16(x7)	# 401
	mul		x11, x30, x10	# 406
	add		x8, x8, x11	# 406
	flw		f6, 0(x8)	# 406
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.31727	# 125
	addi	x6, x0, 0	# 1330
	jal		x0, fle_cont.31726	# 125
fle_else.31727:
	fle		x31, f7, f4	# 124
	beq		x31, x0, fle_else.31729	# 124
	fsub	f4, f0, f7	# 124
	jal		x0, fle_cont.31728	# 124
fle_else.31729:
	fadd	f4, f0, f7	# 124
fle_cont.31728:
	lw		x8, 16(x7)	# 411
	mul		x6, x30, x6	# 416
	add		x6, x8, x6	# 416
	flw		f5, 0(x6)	# 416
	fle		x31, f5, f4	# 125
	beq		x31, x0, fle_else.31731	# 125
	addi	x6, x0, 0	# 125
	jal		x0, fle_cont.31730	# 125
fle_else.31731:
	addi	x6, x0, 1	# 125
fle_cont.31730:
fle_cont.31726:
fle_cont.31722:
	beq		x6, x9, beq.31733	# 1326
	lw		x6, 24(x7)	# 373
	jal		x0, beq_cont.31732	# 1326
beq.31733:
	lw		x6, 24(x7)	# 373
	beq		x6, x9, beq.31735	# 1332
	addi	x6, x0, 0	# 1332
	jal		x0, beq_cont.31734	# 1332
beq.31735:
	addi	x6, x0, 1	# 1332
beq_cont.31734:
beq_cont.31732:
beq_cont.31697:
	beq		x6, x9, beq.31736	# 1368
	addi	x4, x0, 0	# 1369
	jalr	x0, x1, 0	# 1369
beq.31736:
	add		x4, x4, x10	# 1371
	lw		x31, 0(x29)	# 1371
	jalr	x0, x31, 0	# 1371
beq.31696:
	addi	x4, x0, 1	# 1366
	jalr	x0, x1, 0	# 1366
shadow_check_and_group.2813.17722:
	lw		x6, 32(x29)	# 1384
	lw		x7, 28(x29)	# 1384
	lw		x8, 24(x29)	# 1384
	lw		x9, 20(x29)	# 1384
	lw		x10, 16(x29)	# 1384
	lw		x11, 12(x29)	# 1384
	lw		x12, 8(x29)	# 1384
	flw		f1, 4(x29)	# 1384
	mul		x13, x30, x4	# 1384
	add		x13, x5, x13	# 1384
	lw		x13, 0(x13)	# 1384
	beq		x13, x9, beq.31737	# 1384
	mul		x9, x30, x13	# 1126
	addi	x9, x9, 60048	# 1126
	lw		x9, 0(x9)	# 1126
	mul		x14, x30, x11	# 1127
	addi	x14, x14, 60552	# 1127
	flw		f2, 0(x14)	# 1127
	lw		x14, 20(x9)	# 431
	mul		x15, x30, x11	# 436
	add		x14, x14, x15	# 436
	flw		f3, 0(x14)	# 436
	fsub	f2, f2, f3	# 1127
	mul		x14, x30, x12	# 1128
	addi	x14, x14, 60552	# 1128
	flw		f3, 0(x14)	# 1128
	lw		x14, 20(x9)	# 441
	mul		x15, x30, x12	# 446
	add		x14, x14, x15	# 446
	flw		f4, 0(x14)	# 446
	fsub	f3, f3, f4	# 1128
	mul		x14, x30, x8	# 1129
	addi	x14, x14, 60552	# 1129
	flw		f4, 0(x14)	# 1129
	lw		x14, 20(x9)	# 451
	mul		x15, x30, x8	# 456
	add		x14, x14, x15	# 456
	flw		f5, 0(x14)	# 456
	fsub	f4, f4, f5	# 1129
	mul		x14, x30, x13	# 1131
	addi	x14, x14, 60748	# 1131
	lw		x14, 0(x14)	# 1131
	lw		x15, 4(x9)	# 353
	beq		x15, x12, beq.31739	# 1133
	addi	x7, x0, 2	# 1135
	beq		x15, x7, beq.31741	# 1135
	mul		x7, x30, x11	# 1107
	add		x7, x14, x7	# 1107
	flw		f5, 0(x7)	# 1107
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31743	# 120
	addi	x7, x0, 0	# 1109
	jal		x0, feq_cont.31742	# 120
feq_else.31743:
	mul		x7, x30, x12	# 1111
	add		x7, x14, x7	# 1111
	flw		f6, 0(x7)	# 1111
	fmul	f6, f6, f2	# 1111
	mul		x7, x30, x8	# 1111
	add		x7, x14, x7	# 1111
	flw		f7, 0(x7)	# 1111
	fmul	f7, f7, f3	# 1111
	fadd	f6, f6, f7	# 1111
	mul		x7, x30, x10	# 1111
	add		x7, x14, x7	# 1111
	flw		f7, 0(x7)	# 1111
	fmul	f7, f7, f4	# 1111
	fadd	f6, f6, f7	# 1111
	fmul	f7, f2, f2	# 127
	lw		x7, 16(x9)	# 391
	mul		x15, x30, x11	# 396
	add		x7, x7, x15	# 396
	flw		f8, 0(x7)	# 396
	fmul	f7, f7, f8	# 967
	fmul	f8, f3, f3	# 127
	lw		x7, 16(x9)	# 401
	mul		x15, x30, x12	# 406
	add		x7, x7, x15	# 406
	flw		f9, 0(x7)	# 406
	fmul	f8, f8, f9	# 967
	fadd	f7, f7, f8	# 967
	fmul	f8, f4, f4	# 127
	lw		x7, 16(x9)	# 411
	mul		x15, x30, x8	# 416
	add		x7, x7, x15	# 416
	flw		f9, 0(x7)	# 416
	fmul	f8, f8, f9	# 967
	fadd	f7, f7, f8	# 967
	lw		x7, 12(x9)	# 382
	beq		x7, x11, beq.31745	# 969
	fmul	f8, f3, f4	# 973
	lw		x7, 36(x9)	# 511
	mul		x15, x30, x11	# 516
	add		x7, x7, x15	# 516
	flw		f9, 0(x7)	# 516
	fmul	f8, f8, f9	# 973
	fadd	f7, f7, f8	# 972
	fmul	f4, f4, f2	# 974
	lw		x7, 36(x9)	# 521
	mul		x15, x30, x12	# 526
	add		x7, x7, x15	# 526
	flw		f8, 0(x7)	# 526
	fmul	f4, f4, f8	# 974
	fadd	f4, f7, f4	# 972
	fmul	f2, f2, f3	# 975
	lw		x7, 36(x9)	# 531
	mul		x15, x30, x8	# 536
	add		x7, x7, x15	# 536
	flw		f3, 0(x7)	# 536
	fmul	f2, f2, f3	# 975
	fadd	f2, f4, f2	# 972
	jal		x0, beq_cont.31744	# 969
beq.31745:
	fadd	f2, f0, f7	# 970
beq_cont.31744:
	lw		x7, 4(x9)	# 353
	beq		x7, x10, beq.31747	# 1113
	jal		x0, beq_cont.31746	# 1113
beq.31747:
	fadd	f3, f0, f16	# 1113
	fsub	f2, f2, f3	# 1113
beq_cont.31746:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1114
	fsub	f2, f3, f2	# 1114
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.31749	# 121
	addi	x7, x0, 0	# 1121
	jal		x0, fle_cont.31748	# 121
fle_else.31749:
	lw		x7, 24(x9)	# 373
	beq		x7, x11, beq.31751	# 1116
	addi	x7, x0, 0	# 1117
	fsqrt	f1, f2	# 1117
	fadd	f1, f6, f1	# 1117
	addi	x9, x0, 4	# 1117
	mul		x9, x30, x9	# 1117
	add		x9, x14, x9	# 1117
	flw		f2, 0(x9)	# 1117
	fmul	f1, f1, f2	# 1117
	mul		x7, x30, x7	# 1117
	addi	x7, x7, 60540	# 1117
	fsw		f1, 0(x7)	# 1117
	jal		x0, beq_cont.31750	# 1116
beq.31751:
	addi	x7, x0, 0	# 1119
	fsqrt	f1, f2	# 1119
	fsub	f1, f6, f1	# 1119
	addi	x9, x0, 4	# 1119
	mul		x9, x30, x9	# 1119
	add		x9, x14, x9	# 1119
	flw		f2, 0(x9)	# 1119
	fmul	f1, f1, f2	# 1119
	mul		x7, x30, x7	# 1119
	addi	x7, x7, 60540	# 1119
	fsw		f1, 0(x7)	# 1119
beq_cont.31750:
	addi	x7, x0, 1	# 1120
fle_cont.31748:
feq_cont.31742:
	jal		x0, beq_cont.31740	# 1135
beq.31741:
	mul		x7, x30, x11	# 1097
	add		x7, x14, x7	# 1097
	flw		f5, 0(x7)	# 1097
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31753	# 122
	addi	x7, x0, 0	# 1101
	jal		x0, fle_cont.31752	# 122
fle_else.31753:
	mul		x7, x30, x12	# 1099
	add		x7, x14, x7	# 1099
	flw		f1, 0(x7)	# 1099
	fmul	f1, f1, f2	# 1099
	mul		x7, x30, x8	# 1099
	add		x7, x14, x7	# 1099
	flw		f2, 0(x7)	# 1099
	fmul	f2, f2, f3	# 1099
	fadd	f1, f1, f2	# 1099
	mul		x7, x30, x10	# 1099
	add		x7, x14, x7	# 1099
	flw		f2, 0(x7)	# 1099
	fmul	f2, f2, f4	# 1099
	fadd	f1, f1, f2	# 1099
	mul		x7, x30, x11	# 1098
	addi	x7, x7, 60540	# 1098
	fsw		f1, 0(x7)	# 1098
	addi	x7, x0, 1	# 1100
fle_cont.31752:
beq_cont.31740:
	jal		x0, beq_cont.31738	# 1133
beq.31739:
	mul		x15, x30, x11	# 1064
	add		x15, x14, x15	# 1064
	flw		f5, 0(x15)	# 1064
	fsub	f5, f5, f2	# 1064
	mul		x15, x30, x12	# 1064
	add		x15, x14, x15	# 1064
	flw		f6, 0(x15)	# 1064
	fmul	f5, f5, f6	# 1064
	mul		x15, x30, x12	# 1066
	addi	x15, x15, 60736	# 1066
	flw		f6, 0(x15)	# 1066
	fmul	f6, f5, f6	# 1066
	fadd	f6, f6, f3	# 1066
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31754	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31754:
	lw		x15, 16(x9)	# 401
	mul		x16, x30, x12	# 406
	add		x15, x15, x16	# 406
	flw		f7, 0(x15)	# 406
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31756	# 125
	addi	x15, x0, 0	# 1070
	jal		x0, fle_cont.31755	# 125
fle_else.31756:
	mul		x15, x30, x8	# 1067
	addi	x15, x15, 60736	# 1067
	flw		f6, 0(x15)	# 1067
	fmul	f6, f5, f6	# 1067
	fadd	f6, f6, f4	# 1067
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31757	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31757:
	lw		x15, 16(x9)	# 411
	mul		x16, x30, x8	# 416
	add		x15, x15, x16	# 416
	flw		f7, 0(x15)	# 416
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31759	# 125
	addi	x15, x0, 0	# 1069
	jal		x0, fle_cont.31758	# 125
fle_else.31759:
	mul		x15, x30, x12	# 1068
	add		x15, x14, x15	# 1068
	flw		f6, 0(x15)	# 1068
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.31761	# 120
	addi	x15, x0, 0	# 1068
	jal		x0, feq_cont.31760	# 120
feq_else.31761:
	addi	x15, x0, 1	# 1068
feq_cont.31760:
fle_cont.31758:
fle_cont.31755:
	beq		x15, x11, beq.31763	# 1065
	mul		x7, x30, x11	# 1072
	addi	x7, x7, 60540	# 1072
	fsw		f5, 0(x7)	# 1072
	addi	x7, x0, 1	# 1072
	jal		x0, beq_cont.31762	# 1065
beq.31763:
	mul		x15, x30, x8	# 1073
	add		x15, x14, x15	# 1073
	flw		f5, 0(x15)	# 1073
	fsub	f5, f5, f3	# 1073
	mul		x15, x30, x10	# 1073
	add		x15, x14, x15	# 1073
	flw		f6, 0(x15)	# 1073
	fmul	f5, f5, f6	# 1073
	mul		x15, x30, x11	# 1075
	addi	x15, x15, 60736	# 1075
	flw		f6, 0(x15)	# 1075
	fmul	f7, f5, f6	# 1075
	fadd	f7, f7, f2	# 1075
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.31764	# 124
	fsub	f7, f0, f7	# 124
fle_cont.31764:
	lw		x15, 16(x9)	# 391
	mul		x16, x30, x11	# 396
	add		x15, x15, x16	# 396
	flw		f8, 0(x15)	# 396
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.31766	# 125
	addi	x10, x0, 0	# 1079
	jal		x0, fle_cont.31765	# 125
fle_else.31766:
	mul		x15, x30, x8	# 1076
	addi	x15, x15, 60736	# 1076
	flw		f7, 0(x15)	# 1076
	fmul	f7, f5, f7	# 1076
	fadd	f7, f7, f4	# 1076
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.31767	# 124
	fsub	f7, f0, f7	# 124
fle_cont.31767:
	lw		x15, 16(x9)	# 411
	mul		x16, x30, x8	# 416
	add		x15, x15, x16	# 416
	flw		f8, 0(x15)	# 416
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.31769	# 125
	addi	x10, x0, 0	# 1078
	jal		x0, fle_cont.31768	# 125
fle_else.31769:
	mul		x10, x30, x10	# 1077
	add		x10, x14, x10	# 1077
	flw		f7, 0(x10)	# 1077
	feq		x31, f7, f1	# 120
	beq		x31, x0, feq_else.31771	# 120
	addi	x10, x0, 0	# 1077
	jal		x0, feq_cont.31770	# 120
feq_else.31771:
	addi	x10, x0, 1	# 1077
feq_cont.31770:
fle_cont.31768:
fle_cont.31765:
	beq		x10, x11, beq.31773	# 1074
	mul		x7, x30, x11	# 1081
	addi	x7, x7, 60540	# 1081
	fsw		f5, 0(x7)	# 1081
	addi	x7, x0, 2	# 1081
	jal		x0, beq_cont.31772	# 1074
beq.31773:
	addi	x10, x0, 4	# 1082
	mul		x10, x30, x10	# 1082
	add		x10, x14, x10	# 1082
	flw		f5, 0(x10)	# 1082
	fsub	f4, f5, f4	# 1082
	mul		x10, x30, x7	# 1082
	add		x10, x14, x10	# 1082
	flw		f5, 0(x10)	# 1082
	fmul	f4, f4, f5	# 1082
	fmul	f5, f4, f6	# 1084
	fadd	f2, f5, f2	# 1084
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.31774	# 124
	fsub	f2, f0, f2	# 124
fle_cont.31774:
	lw		x10, 16(x9)	# 391
	mul		x15, x30, x11	# 396
	add		x10, x10, x15	# 396
	flw		f5, 0(x10)	# 396
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.31776	# 125
	addi	x7, x0, 0	# 1088
	jal		x0, fle_cont.31775	# 125
fle_else.31776:
	mul		x10, x30, x12	# 1085
	addi	x10, x10, 60736	# 1085
	flw		f2, 0(x10)	# 1085
	fmul	f2, f4, f2	# 1085
	fadd	f2, f2, f3	# 1085
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.31777	# 124
	fsub	f2, f0, f2	# 124
fle_cont.31777:
	lw		x9, 16(x9)	# 401
	mul		x10, x30, x12	# 406
	add		x9, x9, x10	# 406
	flw		f3, 0(x9)	# 406
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.31779	# 125
	addi	x7, x0, 0	# 1087
	jal		x0, fle_cont.31778	# 125
fle_else.31779:
	mul		x7, x30, x7	# 1086
	add		x7, x14, x7	# 1086
	flw		f2, 0(x7)	# 1086
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.31781	# 120
	addi	x7, x0, 0	# 1086
	jal		x0, feq_cont.31780	# 120
feq_else.31781:
	addi	x7, x0, 1	# 1086
feq_cont.31780:
fle_cont.31778:
fle_cont.31775:
	beq		x7, x11, beq.31783	# 1083
	mul		x7, x30, x11	# 1090
	addi	x7, x7, 60540	# 1090
	fsw		f4, 0(x7)	# 1090
	addi	x7, x0, 3	# 1090
	jal		x0, beq_cont.31782	# 1083
beq.31783:
	addi	x7, x0, 0	# 1092
beq_cont.31782:
beq_cont.31772:
beq_cont.31762:
beq_cont.31738:
	mul		x9, x30, x11	# 1389
	addi	x9, x9, 60540	# 1389
	flw		f1, 0(x9)	# 1389
	beq		x7, x11, beq.31785	# 1390
	lui		x7, %hi(l.26207)	# 1390
	ori		x7, x0, %lo(l.26207)	# 1390
	flw		f2, 0(x7)	# 1390
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.31787	# 125
	addi	x7, x0, 0	# 125
	jal		x0, fle_cont.31786	# 125
fle_else.31787:
	addi	x7, x0, 1	# 125
fle_cont.31786:
	jal		x0, beq_cont.31784	# 1390
beq.31785:
	addi	x7, x0, 0	# 1390
beq_cont.31784:
	beq		x7, x11, beq.31788	# 1390
	lui		x7, %hi(l.26209)	# 1393
	ori		x7, x0, %lo(l.26209)	# 1393
	flw		f2, 0(x7)	# 1393
	fadd	f1, f1, f2	# 1393
	mul		x7, x30, x11	# 1394
	addi	x7, x7, 60312	# 1394
	flw		f2, 0(x7)	# 1394
	fmul	f2, f2, f1	# 1394
	mul		x7, x30, x11	# 1394
	addi	x7, x7, 60552	# 1394
	flw		f3, 0(x7)	# 1394
	fadd	f2, f2, f3	# 1394
	mul		x7, x30, x12	# 1395
	addi	x7, x7, 60312	# 1395
	flw		f3, 0(x7)	# 1395
	fmul	f3, f3, f1	# 1395
	mul		x7, x30, x12	# 1395
	addi	x7, x7, 60552	# 1395
	flw		f4, 0(x7)	# 1395
	fadd	f3, f3, f4	# 1395
	mul		x7, x30, x8	# 1396
	addi	x7, x7, 60312	# 1396
	flw		f4, 0(x7)	# 1396
	fmul	f1, f4, f1	# 1396
	mul		x7, x30, x8	# 1396
	addi	x7, x7, 60552	# 1396
	flw		f4, 0(x7)	# 1396
	fadd	f1, f1, f4	# 1396
	sw		x5, 0(x2)	# 1397
	sw		x29, -4(x2)	# 1397
	sw		x12, -8(x2)	# 1397
	sw		x4, -12(x2)	# 1397
	sw		x11, -16(x2)	# 1397
	addi	x4, x11, 0
	addi	x29, x6, 0
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -20(x2)	# 1397
	addi	x2, x2, -24	# 1397
	lw		x31, 0(x29)	# 1397
	jalr	x1, x31, 0	# 1397
	addi	x2, x2, 24	# 1397
	lw		x1, -20(x2)	# 1397
	lw		x5, -16(x2)	# 1397
	beq		x4, x5, beq.31789	# 1397
	addi	x4, x0, 1	# 1398
	jalr	x0, x1, 0	# 1398
beq.31789:
	lw		x4, -8(x2)	# 1400
	lw		x5, -12(x2)	# 1400
	add		x4, x5, x4	# 1400
	lw		x5, 0(x2)	# 1400
	lw		x29, -4(x2)	# 1400
	lw		x31, 0(x29)	# 1400
	jalr	x0, x31, 0	# 1400
beq.31788:
	mul		x6, x30, x13	# 1406
	addi	x6, x6, 60048	# 1406
	lw		x6, 0(x6)	# 1406
	lw		x6, 24(x6)	# 373
	beq		x6, x11, beq.31790	# 1406
	add		x4, x4, x12	# 1407
	lw		x31, 0(x29)	# 1407
	jalr	x0, x31, 0	# 1407
beq.31790:
	addi	x4, x0, 0	# 1409
	jalr	x0, x1, 0	# 1409
beq.31737:
	addi	x4, x0, 0	# 1385
	jalr	x0, x1, 0	# 1385
shadow_check_one_or_group.2816.17725:
	lw		x6, 16(x29)	# 1414
	lw		x7, 12(x29)	# 1414
	lw		x8, 8(x29)	# 1414
	lw		x9, 4(x29)	# 1414
	mul		x10, x30, x4	# 1414
	add		x10, x5, x10	# 1414
	lw		x10, 0(x10)	# 1414
	beq		x10, x7, beq.31791	# 1415
	mul		x7, x30, x10	# 1418
	addi	x7, x7, 60332	# 1418
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
	beq		x4, x5, beq.31792	# 1420
	addi	x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.31792:
	lw		x4, -8(x2)	# 1423
	lw		x5, -12(x2)	# 1423
	add		x4, x5, x4	# 1423
	lw		x5, 0(x2)	# 1423
	lw		x29, -4(x2)	# 1423
	lw		x31, 0(x29)	# 1423
	jalr	x0, x31, 0	# 1423
beq.31791:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
shadow_check_one_or_matrix.2819.17728:
	lw		x6, 32(x29)	# 1429
	lw		x7, 28(x29)	# 1429
	lw		x8, 24(x29)	# 1429
	lw		x9, 20(x29)	# 1429
	lw		x10, 16(x29)	# 1429
	lw		x11, 12(x29)	# 1429
	lw		x12, 8(x29)	# 1429
	flw		f1, 4(x29)	# 1429
	mul		x13, x30, x4	# 1429
	add		x13, x5, x13	# 1429
	lw		x13, 0(x13)	# 1429
	mul		x14, x30, x11	# 1430
	add		x14, x13, x14	# 1430
	lw		x14, 0(x14)	# 1430
	beq		x14, x9, beq.31793	# 1431
	addi	x9, x0, 99	# 1435
	sw		x13, 0(x2)	# 1435
	sw		x6, -4(x2)	# 1435
	sw		x5, -8(x2)	# 1435
	sw		x29, -12(x2)	# 1435
	sw		x12, -16(x2)	# 1435
	sw		x4, -20(x2)	# 1435
	sw		x11, -24(x2)	# 1435
	beq		x14, x9, beq.31795	# 1435
	mul		x9, x30, x14	# 1126
	addi	x9, x9, 60048	# 1126
	lw		x9, 0(x9)	# 1126
	addi	x15, x0, 0	# 1127
	mul		x15, x30, x15	# 1127
	addi	x15, x15, 60552	# 1127
	flw		f2, 0(x15)	# 1127
	lw		x15, 20(x9)	# 431
	mul		x16, x30, x11	# 436
	add		x15, x15, x16	# 436
	flw		f3, 0(x15)	# 436
	fsub	f2, f2, f3	# 1127
	addi	x15, x0, 1	# 1128
	mul		x15, x30, x15	# 1128
	addi	x15, x15, 60552	# 1128
	flw		f3, 0(x15)	# 1128
	lw		x15, 20(x9)	# 441
	mul		x16, x30, x12	# 446
	add		x15, x15, x16	# 446
	flw		f4, 0(x15)	# 446
	fsub	f3, f3, f4	# 1128
	addi	x15, x0, 2	# 1129
	mul		x15, x30, x15	# 1129
	addi	x15, x15, 60552	# 1129
	flw		f4, 0(x15)	# 1129
	lw		x15, 20(x9)	# 451
	mul		x16, x30, x8	# 456
	add		x15, x15, x16	# 456
	flw		f5, 0(x15)	# 456
	fsub	f4, f4, f5	# 1129
	mul		x14, x30, x14	# 1131
	addi	x14, x14, 60748	# 1131
	lw		x14, 0(x14)	# 1131
	lw		x15, 4(x9)	# 353
	addi	x16, x0, 1	# 1133
	beq		x15, x16, beq.31797	# 1133
	addi	x7, x0, 2	# 1135
	beq		x15, x7, beq.31799	# 1135
	mul		x7, x30, x11	# 1107
	add		x7, x14, x7	# 1107
	flw		f5, 0(x7)	# 1107
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31801	# 120
	addi	x7, x0, 0	# 1109
	jal		x0, feq_cont.31800	# 120
feq_else.31801:
	mul		x7, x30, x12	# 1111
	add		x7, x14, x7	# 1111
	flw		f6, 0(x7)	# 1111
	fmul	f6, f6, f2	# 1111
	mul		x7, x30, x8	# 1111
	add		x7, x14, x7	# 1111
	flw		f7, 0(x7)	# 1111
	fmul	f7, f7, f3	# 1111
	fadd	f6, f6, f7	# 1111
	mul		x7, x30, x10	# 1111
	add		x7, x14, x7	# 1111
	flw		f7, 0(x7)	# 1111
	fmul	f7, f7, f4	# 1111
	fadd	f6, f6, f7	# 1111
	fmul	f7, f2, f2	# 127
	lw		x7, 16(x9)	# 391
	mul		x15, x30, x11	# 396
	add		x7, x7, x15	# 396
	flw		f8, 0(x7)	# 396
	fmul	f7, f7, f8	# 967
	fmul	f8, f3, f3	# 127
	lw		x7, 16(x9)	# 401
	mul		x15, x30, x12	# 406
	add		x7, x7, x15	# 406
	flw		f9, 0(x7)	# 406
	fmul	f8, f8, f9	# 967
	fadd	f7, f7, f8	# 967
	fmul	f8, f4, f4	# 127
	lw		x7, 16(x9)	# 411
	mul		x15, x30, x8	# 416
	add		x7, x7, x15	# 416
	flw		f9, 0(x7)	# 416
	fmul	f8, f8, f9	# 967
	fadd	f7, f7, f8	# 967
	lw		x7, 12(x9)	# 382
	beq		x7, x11, beq.31803	# 969
	fmul	f8, f3, f4	# 973
	lw		x7, 36(x9)	# 511
	mul		x15, x30, x11	# 516
	add		x7, x7, x15	# 516
	flw		f9, 0(x7)	# 516
	fmul	f8, f8, f9	# 973
	fadd	f7, f7, f8	# 972
	fmul	f4, f4, f2	# 974
	lw		x7, 36(x9)	# 521
	mul		x15, x30, x12	# 526
	add		x7, x7, x15	# 526
	flw		f8, 0(x7)	# 526
	fmul	f4, f4, f8	# 974
	fadd	f4, f7, f4	# 972
	fmul	f2, f2, f3	# 975
	lw		x7, 36(x9)	# 531
	mul		x8, x30, x8	# 536
	add		x7, x7, x8	# 536
	flw		f3, 0(x7)	# 536
	fmul	f2, f2, f3	# 975
	fadd	f2, f4, f2	# 972
	jal		x0, beq_cont.31802	# 969
beq.31803:
	fadd	f2, f0, f7	# 970
beq_cont.31802:
	lw		x7, 4(x9)	# 353
	beq		x7, x10, beq.31805	# 1113
	jal		x0, beq_cont.31804	# 1113
beq.31805:
	fadd	f3, f0, f16	# 1113
	fsub	f2, f2, f3	# 1113
beq_cont.31804:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1114
	fsub	f2, f3, f2	# 1114
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.31807	# 121
	addi	x7, x0, 0	# 1121
	jal		x0, fle_cont.31806	# 121
fle_else.31807:
	lw		x7, 24(x9)	# 373
	beq		x7, x11, beq.31809	# 1116
	addi	x7, x0, 0	# 1117
	fsqrt	f1, f2	# 1117
	fadd	f1, f6, f1	# 1117
	addi	x8, x0, 4	# 1117
	mul		x8, x30, x8	# 1117
	add		x8, x14, x8	# 1117
	flw		f2, 0(x8)	# 1117
	fmul	f1, f1, f2	# 1117
	mul		x7, x30, x7	# 1117
	addi	x7, x7, 60540	# 1117
	fsw		f1, 0(x7)	# 1117
	jal		x0, beq_cont.31808	# 1116
beq.31809:
	addi	x7, x0, 0	# 1119
	fsqrt	f1, f2	# 1119
	fsub	f1, f6, f1	# 1119
	addi	x8, x0, 4	# 1119
	mul		x8, x30, x8	# 1119
	add		x8, x14, x8	# 1119
	flw		f2, 0(x8)	# 1119
	fmul	f1, f1, f2	# 1119
	mul		x7, x30, x7	# 1119
	addi	x7, x7, 60540	# 1119
	fsw		f1, 0(x7)	# 1119
beq_cont.31808:
	addi	x7, x0, 1	# 1120
fle_cont.31806:
feq_cont.31800:
	jal		x0, beq_cont.31798	# 1135
beq.31799:
	mul		x7, x30, x11	# 1097
	add		x7, x14, x7	# 1097
	flw		f5, 0(x7)	# 1097
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31811	# 122
	addi	x7, x0, 0	# 1101
	jal		x0, fle_cont.31810	# 122
fle_else.31811:
	mul		x7, x30, x12	# 1099
	add		x7, x14, x7	# 1099
	flw		f1, 0(x7)	# 1099
	fmul	f1, f1, f2	# 1099
	mul		x7, x30, x8	# 1099
	add		x7, x14, x7	# 1099
	flw		f2, 0(x7)	# 1099
	fmul	f2, f2, f3	# 1099
	fadd	f1, f1, f2	# 1099
	mul		x7, x30, x10	# 1099
	add		x7, x14, x7	# 1099
	flw		f2, 0(x7)	# 1099
	fmul	f2, f2, f4	# 1099
	fadd	f1, f1, f2	# 1099
	mul		x7, x30, x11	# 1098
	addi	x7, x7, 60540	# 1098
	fsw		f1, 0(x7)	# 1098
	addi	x7, x0, 1	# 1100
fle_cont.31810:
beq_cont.31798:
	jal		x0, beq_cont.31796	# 1133
beq.31797:
	mul		x15, x30, x11	# 1064
	add		x15, x14, x15	# 1064
	flw		f5, 0(x15)	# 1064
	fsub	f5, f5, f2	# 1064
	mul		x15, x30, x12	# 1064
	add		x15, x14, x15	# 1064
	flw		f6, 0(x15)	# 1064
	fmul	f5, f5, f6	# 1064
	mul		x15, x30, x12	# 1066
	addi	x15, x15, 60736	# 1066
	flw		f6, 0(x15)	# 1066
	fmul	f6, f5, f6	# 1066
	fadd	f6, f6, f3	# 1066
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31812	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31812:
	lw		x15, 16(x9)	# 401
	mul		x16, x30, x12	# 406
	add		x15, x15, x16	# 406
	flw		f7, 0(x15)	# 406
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31814	# 125
	addi	x15, x0, 0	# 1070
	jal		x0, fle_cont.31813	# 125
fle_else.31814:
	mul		x15, x30, x8	# 1067
	addi	x15, x15, 60736	# 1067
	flw		f6, 0(x15)	# 1067
	fmul	f6, f5, f6	# 1067
	fadd	f6, f6, f4	# 1067
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31815	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31815:
	lw		x15, 16(x9)	# 411
	mul		x16, x30, x8	# 416
	add		x15, x15, x16	# 416
	flw		f7, 0(x15)	# 416
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31817	# 125
	addi	x15, x0, 0	# 1069
	jal		x0, fle_cont.31816	# 125
fle_else.31817:
	mul		x15, x30, x12	# 1068
	add		x15, x14, x15	# 1068
	flw		f6, 0(x15)	# 1068
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.31819	# 120
	addi	x15, x0, 0	# 1068
	jal		x0, feq_cont.31818	# 120
feq_else.31819:
	addi	x15, x0, 1	# 1068
feq_cont.31818:
fle_cont.31816:
fle_cont.31813:
	beq		x15, x11, beq.31821	# 1065
	mul		x7, x30, x11	# 1072
	addi	x7, x7, 60540	# 1072
	fsw		f5, 0(x7)	# 1072
	addi	x7, x0, 1	# 1072
	jal		x0, beq_cont.31820	# 1065
beq.31821:
	mul		x15, x30, x8	# 1073
	add		x15, x14, x15	# 1073
	flw		f5, 0(x15)	# 1073
	fsub	f5, f5, f3	# 1073
	mul		x15, x30, x10	# 1073
	add		x15, x14, x15	# 1073
	flw		f6, 0(x15)	# 1073
	fmul	f5, f5, f6	# 1073
	mul		x15, x30, x11	# 1075
	addi	x15, x15, 60736	# 1075
	flw		f6, 0(x15)	# 1075
	fmul	f7, f5, f6	# 1075
	fadd	f7, f7, f2	# 1075
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.31822	# 124
	fsub	f7, f0, f7	# 124
fle_cont.31822:
	lw		x15, 16(x9)	# 391
	mul		x16, x30, x11	# 396
	add		x15, x15, x16	# 396
	flw		f8, 0(x15)	# 396
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.31824	# 125
	addi	x8, x0, 0	# 1079
	jal		x0, fle_cont.31823	# 125
fle_else.31824:
	mul		x15, x30, x8	# 1076
	addi	x15, x15, 60736	# 1076
	flw		f7, 0(x15)	# 1076
	fmul	f7, f5, f7	# 1076
	fadd	f7, f7, f4	# 1076
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.31825	# 124
	fsub	f7, f0, f7	# 124
fle_cont.31825:
	lw		x15, 16(x9)	# 411
	mul		x8, x30, x8	# 416
	add		x8, x15, x8	# 416
	flw		f8, 0(x8)	# 416
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.31827	# 125
	addi	x8, x0, 0	# 1078
	jal		x0, fle_cont.31826	# 125
fle_else.31827:
	mul		x8, x30, x10	# 1077
	add		x8, x14, x8	# 1077
	flw		f7, 0(x8)	# 1077
	feq		x31, f7, f1	# 120
	beq		x31, x0, feq_else.31829	# 120
	addi	x8, x0, 0	# 1077
	jal		x0, feq_cont.31828	# 120
feq_else.31829:
	addi	x8, x0, 1	# 1077
feq_cont.31828:
fle_cont.31826:
fle_cont.31823:
	beq		x8, x11, beq.31831	# 1074
	mul		x7, x30, x11	# 1081
	addi	x7, x7, 60540	# 1081
	fsw		f5, 0(x7)	# 1081
	addi	x7, x0, 2	# 1081
	jal		x0, beq_cont.31830	# 1074
beq.31831:
	addi	x8, x0, 4	# 1082
	mul		x8, x30, x8	# 1082
	add		x8, x14, x8	# 1082
	flw		f5, 0(x8)	# 1082
	fsub	f4, f5, f4	# 1082
	mul		x8, x30, x7	# 1082
	add		x8, x14, x8	# 1082
	flw		f5, 0(x8)	# 1082
	fmul	f4, f4, f5	# 1082
	fmul	f5, f4, f6	# 1084
	fadd	f2, f5, f2	# 1084
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.31832	# 124
	fsub	f2, f0, f2	# 124
fle_cont.31832:
	lw		x8, 16(x9)	# 391
	mul		x10, x30, x11	# 396
	add		x8, x8, x10	# 396
	flw		f5, 0(x8)	# 396
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.31834	# 125
	addi	x7, x0, 0	# 1088
	jal		x0, fle_cont.31833	# 125
fle_else.31834:
	mul		x8, x30, x12	# 1085
	addi	x8, x8, 60736	# 1085
	flw		f2, 0(x8)	# 1085
	fmul	f2, f4, f2	# 1085
	fadd	f2, f2, f3	# 1085
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.31835	# 124
	fsub	f2, f0, f2	# 124
fle_cont.31835:
	lw		x8, 16(x9)	# 401
	mul		x9, x30, x12	# 406
	add		x8, x8, x9	# 406
	flw		f3, 0(x8)	# 406
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.31837	# 125
	addi	x7, x0, 0	# 1087
	jal		x0, fle_cont.31836	# 125
fle_else.31837:
	mul		x7, x30, x7	# 1086
	add		x7, x14, x7	# 1086
	flw		f2, 0(x7)	# 1086
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.31839	# 120
	addi	x7, x0, 0	# 1086
	jal		x0, feq_cont.31838	# 120
feq_else.31839:
	addi	x7, x0, 1	# 1086
feq_cont.31838:
fle_cont.31836:
fle_cont.31833:
	beq		x7, x11, beq.31841	# 1083
	mul		x7, x30, x11	# 1090
	addi	x7, x7, 60540	# 1090
	fsw		f4, 0(x7)	# 1090
	addi	x7, x0, 3	# 1090
	jal		x0, beq_cont.31840	# 1083
beq.31841:
	addi	x7, x0, 0	# 1092
beq_cont.31840:
beq_cont.31830:
beq_cont.31820:
beq_cont.31796:
	addi	x8, x0, 0	# 1441
	beq		x7, x8, beq.31843	# 1441
	addi	x7, x0, 0	# 1442
	mul		x7, x30, x7	# 1442
	addi	x7, x7, 60540	# 1442
	flw		f1, 0(x7)	# 1442
	fadd	f2, f0, f23	# 1442
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.31845	# 125
	addi	x4, x0, 0	# 1446
	jal		x0, fle_cont.31844	# 125
fle_else.31845:
	addi	x7, x0, 1	# 1443
	addi	x5, x13, 0
	addi	x4, x7, 0
	addi	x29, x6, 0
	sw		x1, -28(x2)	# 1443
	addi	x2, x2, -32	# 1443
	lw		x31, 0(x29)	# 1443
	jalr	x1, x31, 0	# 1443
	addi	x2, x2, 32	# 1443
	lw		x1, -28(x2)	# 1443
	addi	x5, x0, 0	# 1443
	beq		x4, x5, beq.31847	# 1443
	addi	x4, x0, 1	# 1444
	jal		x0, beq_cont.31846	# 1443
beq.31847:
	addi	x4, x0, 0	# 1445
beq_cont.31846:
fle_cont.31844:
	jal		x0, beq_cont.31842	# 1441
beq.31843:
	addi	x4, x0, 0	# 1447
beq_cont.31842:
	jal		x0, beq_cont.31794	# 1435
beq.31795:
	addi	x4, x0, 1	# 1436
beq_cont.31794:
	lw		x5, -24(x2)	# 1434
	beq		x4, x5, beq.31848	# 1434
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
	beq		x4, x5, beq.31849	# 1449
	addi	x4, x0, 1	# 1450
	jalr	x0, x1, 0	# 1450
beq.31849:
	lw		x4, -16(x2)	# 1452
	lw		x5, -20(x2)	# 1452
	add		x4, x5, x4	# 1452
	lw		x5, -8(x2)	# 1452
	lw		x29, -12(x2)	# 1452
	lw		x31, 0(x29)	# 1452
	jalr	x0, x31, 0	# 1452
beq.31848:
	lw		x4, -16(x2)	# 1454
	lw		x5, -20(x2)	# 1454
	add		x4, x5, x4	# 1454
	lw		x5, -8(x2)	# 1454
	lw		x29, -12(x2)	# 1454
	lw		x31, 0(x29)	# 1454
	jalr	x0, x31, 0	# 1454
beq.31793:
	addi	x4, x0, 0	# 1432
	jalr	x0, x1, 0	# 1432
solve_each_element.2822.17731:
	lw		x7, 28(x29)	# 1465
	lw		x8, 24(x29)	# 1465
	lw		x9, 20(x29)	# 1465
	lw		x10, 16(x29)	# 1465
	lw		x11, 12(x29)	# 1465
	lw		x12, 8(x29)	# 1465
	flw		f1, 4(x29)	# 1465
	mul		x13, x30, x4	# 1465
	add		x13, x5, x13	# 1465
	lw		x13, 0(x13)	# 1465
	beq		x13, x9, beq.31850	# 1466
	mul		x9, x30, x13	# 1032
	addi	x9, x9, 60048	# 1032
	lw		x9, 0(x9)	# 1032
	mul		x14, x30, x11	# 1034
	addi	x14, x14, 60636	# 1034
	flw		f2, 0(x14)	# 1034
	lw		x14, 20(x9)	# 431
	mul		x15, x30, x11	# 436
	add		x14, x14, x15	# 436
	flw		f3, 0(x14)	# 436
	fsub	f2, f2, f3	# 1034
	mul		x14, x30, x12	# 1035
	addi	x14, x14, 60636	# 1035
	flw		f3, 0(x14)	# 1035
	lw		x14, 20(x9)	# 441
	mul		x15, x30, x12	# 446
	add		x14, x14, x15	# 446
	flw		f4, 0(x14)	# 446
	fsub	f3, f3, f4	# 1035
	mul		x14, x30, x8	# 1036
	addi	x14, x14, 60636	# 1036
	flw		f4, 0(x14)	# 1036
	lw		x14, 20(x9)	# 451
	mul		x15, x30, x8	# 456
	add		x14, x14, x15	# 456
	flw		f5, 0(x14)	# 456
	fsub	f4, f4, f5	# 1036
	lw		x14, 4(x9)	# 353
	beq		x14, x12, beq.31852	# 1039
	addi	x15, x0, 2	# 1040
	beq		x14, x15, beq.31854	# 1040
	mul		x14, x30, x11	# 1006
	add		x14, x6, x14	# 1006
	flw		f5, 0(x14)	# 1006
	mul		x14, x30, x12	# 1006
	add		x14, x6, x14	# 1006
	flw		f6, 0(x14)	# 1006
	mul		x14, x30, x8	# 1006
	add		x14, x6, x14	# 1006
	flw		f7, 0(x14)	# 1006
	fmul	f8, f5, f5	# 127
	lw		x14, 16(x9)	# 391
	mul		x15, x30, x11	# 396
	add		x14, x14, x15	# 396
	flw		f9, 0(x14)	# 396
	fmul	f8, f8, f9	# 967
	fmul	f9, f6, f6	# 127
	lw		x14, 16(x9)	# 401
	mul		x15, x30, x12	# 406
	add		x14, x14, x15	# 406
	flw		f10, 0(x14)	# 406
	fmul	f9, f9, f10	# 967
	fadd	f8, f8, f9	# 967
	fmul	f9, f7, f7	# 127
	lw		x14, 16(x9)	# 411
	mul		x15, x30, x8	# 416
	add		x14, x14, x15	# 416
	flw		f10, 0(x14)	# 416
	fmul	f9, f9, f10	# 967
	fadd	f8, f8, f9	# 967
	lw		x14, 12(x9)	# 382
	beq		x14, x11, beq.31856	# 969
	fmul	f9, f6, f7	# 973
	lw		x14, 36(x9)	# 511
	mul		x15, x30, x11	# 516
	add		x14, x14, x15	# 516
	flw		f10, 0(x14)	# 516
	fmul	f9, f9, f10	# 973
	fadd	f8, f8, f9	# 972
	fmul	f7, f7, f5	# 974
	lw		x14, 36(x9)	# 521
	mul		x15, x30, x12	# 526
	add		x14, x14, x15	# 526
	flw		f9, 0(x14)	# 526
	fmul	f7, f7, f9	# 974
	fadd	f7, f8, f7	# 972
	fmul	f5, f5, f6	# 975
	lw		x14, 36(x9)	# 531
	mul		x15, x30, x8	# 536
	add		x14, x14, x15	# 536
	flw		f6, 0(x14)	# 536
	fmul	f5, f5, f6	# 975
	fadd	f5, f7, f5	# 972
	jal		x0, beq_cont.31855	# 969
beq.31856:
	fadd	f5, f0, f8	# 970
beq_cont.31855:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31858	# 120
	addi	x8, x0, 0	# 1009
	jal		x0, feq_cont.31857	# 120
feq_else.31858:
	mul		x14, x30, x11	# 1013
	add		x14, x6, x14	# 1013
	flw		f6, 0(x14)	# 1013
	mul		x14, x30, x12	# 1013
	add		x14, x6, x14	# 1013
	flw		f7, 0(x14)	# 1013
	mul		x14, x30, x8	# 1013
	add		x14, x6, x14	# 1013
	flw		f8, 0(x14)	# 1013
	fmul	f9, f6, f2	# 981
	lw		x14, 16(x9)	# 391
	mul		x15, x30, x11	# 396
	add		x14, x14, x15	# 396
	flw		f10, 0(x14)	# 396
	fmul	f9, f9, f10	# 981
	fmul	f10, f7, f3	# 982
	lw		x14, 16(x9)	# 401
	mul		x15, x30, x12	# 406
	add		x14, x14, x15	# 406
	flw		f11, 0(x14)	# 406
	fmul	f10, f10, f11	# 982
	fadd	f9, f9, f10	# 981
	fmul	f10, f8, f4	# 983
	lw		x14, 16(x9)	# 411
	mul		x15, x30, x8	# 416
	add		x14, x14, x15	# 416
	flw		f11, 0(x14)	# 416
	fmul	f10, f10, f11	# 983
	fadd	f9, f9, f10	# 981
	lw		x14, 12(x9)	# 382
	beq		x14, x11, beq.31860	# 985
	fmul	f10, f8, f3	# 989
	fmul	f11, f7, f4	# 989
	fadd	f10, f10, f11	# 989
	lw		x14, 36(x9)	# 511
	mul		x15, x30, x11	# 516
	add		x14, x14, x15	# 516
	flw		f11, 0(x14)	# 516
	fmul	f10, f10, f11	# 989
	fmul	f11, f6, f4	# 990
	fmul	f8, f8, f2	# 990
	fadd	f8, f11, f8	# 990
	lw		x14, 36(x9)	# 521
	mul		x15, x30, x12	# 526
	add		x14, x14, x15	# 526
	flw		f11, 0(x14)	# 526
	fmul	f8, f8, f11	# 990
	fadd	f8, f10, f8	# 989
	fmul	f6, f6, f3	# 991
	fmul	f7, f7, f2	# 991
	fadd	f6, f6, f7	# 991
	lw		x14, 36(x9)	# 531
	mul		x15, x30, x8	# 536
	add		x14, x14, x15	# 536
	flw		f7, 0(x14)	# 536
	fmul	f6, f6, f7	# 991
	fadd	f6, f8, f6	# 989
	fadd	f7, f0, f17	# 126
	fmul	f6, f6, f7	# 126
	fadd	f6, f9, f6	# 988
	jal		x0, beq_cont.31859	# 985
beq.31860:
	fadd	f6, f0, f9	# 986
beq_cont.31859:
	fmul	f7, f2, f2	# 127
	lw		x14, 16(x9)	# 391
	mul		x15, x30, x11	# 396
	add		x14, x14, x15	# 396
	flw		f8, 0(x14)	# 396
	fmul	f7, f7, f8	# 967
	fmul	f8, f3, f3	# 127
	lw		x14, 16(x9)	# 401
	mul		x15, x30, x12	# 406
	add		x14, x14, x15	# 406
	flw		f9, 0(x14)	# 406
	fmul	f8, f8, f9	# 967
	fadd	f7, f7, f8	# 967
	fmul	f8, f4, f4	# 127
	lw		x14, 16(x9)	# 411
	mul		x15, x30, x8	# 416
	add		x14, x14, x15	# 416
	flw		f9, 0(x14)	# 416
	fmul	f8, f8, f9	# 967
	fadd	f7, f7, f8	# 967
	lw		x14, 12(x9)	# 382
	beq		x14, x11, beq.31862	# 969
	fmul	f8, f3, f4	# 973
	lw		x14, 36(x9)	# 511
	mul		x15, x30, x11	# 516
	add		x14, x14, x15	# 516
	flw		f9, 0(x14)	# 516
	fmul	f8, f8, f9	# 973
	fadd	f7, f7, f8	# 972
	fmul	f4, f4, f2	# 974
	lw		x14, 36(x9)	# 521
	mul		x15, x30, x12	# 526
	add		x14, x14, x15	# 526
	flw		f8, 0(x14)	# 526
	fmul	f4, f4, f8	# 974
	fadd	f4, f7, f4	# 972
	fmul	f2, f2, f3	# 975
	lw		x14, 36(x9)	# 531
	mul		x8, x30, x8	# 536
	add		x8, x14, x8	# 536
	flw		f3, 0(x8)	# 536
	fmul	f2, f2, f3	# 975
	fadd	f2, f4, f2	# 972
	jal		x0, beq_cont.31861	# 969
beq.31862:
	fadd	f2, f0, f7	# 970
beq_cont.31861:
	lw		x8, 4(x9)	# 353
	beq		x8, x10, beq.31864	# 1016
	jal		x0, beq_cont.31863	# 1016
beq.31864:
	fadd	f3, f0, f16	# 1016
	fsub	f2, f2, f3	# 1016
beq_cont.31863:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1018
	fsub	f2, f3, f2	# 1018
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.31866	# 121
	addi	x8, x0, 0	# 1026
	jal		x0, fle_cont.31865	# 121
fle_else.31866:
	fsqrt	f2, f2	# 1021
	lw		x8, 24(x9)	# 373
	beq		x8, x11, beq.31868	# 1022
	jal		x0, beq_cont.31867	# 1022
beq.31868:
	fsub	f2, f0, f2	# 123
beq_cont.31867:
	fsub	f2, f2, f6	# 1023
	fdiv	f2, f2, f5	# 1023
	mul		x8, x30, x11	# 1023
	addi	x8, x8, 60540	# 1023
	fsw		f2, 0(x8)	# 1023
	addi	x8, x0, 1	# 1023
fle_cont.31865:
feq_cont.31857:
	jal		x0, beq_cont.31853	# 1040
beq.31854:
	lw		x9, 16(x9)	# 421
	mul		x10, x30, x11	# 292
	add		x10, x6, x10	# 292
	flw		f5, 0(x10)	# 292
	mul		x10, x30, x11	# 292
	add		x10, x9, x10	# 292
	flw		f6, 0(x10)	# 292
	fmul	f5, f5, f6	# 292
	mul		x10, x30, x12	# 292
	add		x10, x6, x10	# 292
	flw		f6, 0(x10)	# 292
	mul		x10, x30, x12	# 292
	add		x10, x9, x10	# 292
	flw		f7, 0(x10)	# 292
	fmul	f6, f6, f7	# 292
	fadd	f5, f5, f6	# 292
	mul		x10, x30, x8	# 292
	add		x10, x6, x10	# 292
	flw		f6, 0(x10)	# 292
	mul		x10, x30, x8	# 292
	add		x10, x9, x10	# 292
	flw		f7, 0(x10)	# 292
	fmul	f6, f6, f7	# 292
	fadd	f5, f5, f6	# 292
	fle		x31, f5, f1	# 121
	beq		x31, x0, fle_else.31870	# 121
	addi	x8, x0, 0	# 959
	jal		x0, fle_cont.31869	# 121
fle_else.31870:
	mul		x10, x30, x11	# 297
	add		x10, x9, x10	# 297
	flw		f6, 0(x10)	# 297
	fmul	f2, f6, f2	# 297
	mul		x10, x30, x12	# 297
	add		x10, x9, x10	# 297
	flw		f6, 0(x10)	# 297
	fmul	f3, f6, f3	# 297
	fadd	f2, f2, f3	# 297
	mul		x8, x30, x8	# 297
	add		x8, x9, x8	# 297
	flw		f3, 0(x8)	# 297
	fmul	f3, f3, f4	# 297
	fadd	f2, f2, f3	# 297
	fsub	f2, f0, f2	# 123
	fdiv	f2, f2, f5	# 957
	mul		x8, x30, x11	# 957
	addi	x8, x8, 60540	# 957
	fsw		f2, 0(x8)	# 957
	addi	x8, x0, 1	# 958
fle_cont.31869:
beq_cont.31853:
	jal		x0, beq_cont.31851	# 1039
beq.31852:
	mul		x10, x30, x11	# 928
	add		x10, x6, x10	# 928
	flw		f5, 0(x10)	# 928
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31872	# 120
	addi	x10, x0, 0	# 928
	jal		x0, feq_cont.31871	# 120
feq_else.31872:
	lw		x10, 16(x9)	# 421
	lw		x14, 24(x9)	# 373
	mul		x15, x30, x11	# 930
	add		x15, x6, x15	# 930
	flw		f5, 0(x15)	# 930
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31874	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.31873	# 122
fle_else.31874:
	addi	x15, x0, 1	# 122
fle_cont.31873:
	beq		x14, x11, beq.31876	# 204
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31878	# 122
	addi	x14, x0, 1	# 204
	jal		x0, fle_cont.31877	# 122
fle_else.31878:
	addi	x14, x0, 0	# 204
fle_cont.31877:
	jal		x0, beq_cont.31875	# 204
beq.31876:
	addi	x14, x15, 0	# 204
beq_cont.31875:
	mul		x15, x30, x11	# 930
	add		x15, x10, x15	# 930
	flw		f5, 0(x15)	# 930
	beq		x14, x11, beq.31880	# 219
	jal		x0, beq_cont.31879	# 219
beq.31880:
	fsub	f5, f0, f5	# 123
beq_cont.31879:
	fsub	f5, f5, f2	# 932
	mul		x14, x30, x11	# 932
	add		x14, x6, x14	# 932
	flw		f6, 0(x14)	# 932
	fdiv	f5, f5, f6	# 932
	mul		x14, x30, x12	# 933
	add		x14, x6, x14	# 933
	flw		f6, 0(x14)	# 933
	fmul	f6, f5, f6	# 933
	fadd	f6, f6, f3	# 933
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31881	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31881:
	mul		x14, x30, x12	# 933
	add		x14, x10, x14	# 933
	flw		f7, 0(x14)	# 933
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31883	# 125
	addi	x10, x0, 0	# 937
	jal		x0, fle_cont.31882	# 125
fle_else.31883:
	mul		x14, x30, x8	# 934
	add		x14, x6, x14	# 934
	flw		f6, 0(x14)	# 934
	fmul	f6, f5, f6	# 934
	fadd	f6, f6, f4	# 934
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31884	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31884:
	mul		x14, x30, x8	# 934
	add		x10, x10, x14	# 934
	flw		f7, 0(x10)	# 934
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31886	# 125
	addi	x10, x0, 0	# 936
	jal		x0, fle_cont.31885	# 125
fle_else.31886:
	addi	x10, x0, 0	# 935
	mul		x10, x30, x10	# 935
	addi	x10, x10, 60540	# 935
	fsw		f5, 0(x10)	# 935
	addi	x10, x0, 1	# 935
fle_cont.31885:
fle_cont.31882:
feq_cont.31871:
	beq		x10, x11, beq.31888	# 943
	addi	x8, x0, 1	# 943
	jal		x0, beq_cont.31887	# 943
beq.31888:
	mul		x10, x30, x12	# 928
	add		x10, x6, x10	# 928
	flw		f5, 0(x10)	# 928
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31890	# 120
	addi	x10, x0, 0	# 928
	jal		x0, feq_cont.31889	# 120
feq_else.31890:
	lw		x10, 16(x9)	# 421
	lw		x14, 24(x9)	# 373
	mul		x15, x30, x12	# 930
	add		x15, x6, x15	# 930
	flw		f5, 0(x15)	# 930
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31892	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.31891	# 122
fle_else.31892:
	addi	x15, x0, 1	# 122
fle_cont.31891:
	beq		x14, x11, beq.31894	# 204
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31896	# 122
	addi	x14, x0, 1	# 204
	jal		x0, fle_cont.31895	# 122
fle_else.31896:
	addi	x14, x0, 0	# 204
fle_cont.31895:
	jal		x0, beq_cont.31893	# 204
beq.31894:
	addi	x14, x15, 0	# 204
beq_cont.31893:
	mul		x15, x30, x12	# 930
	add		x15, x10, x15	# 930
	flw		f5, 0(x15)	# 930
	beq		x14, x11, beq.31898	# 219
	jal		x0, beq_cont.31897	# 219
beq.31898:
	fsub	f5, f0, f5	# 123
beq_cont.31897:
	fsub	f5, f5, f3	# 932
	mul		x14, x30, x12	# 932
	add		x14, x6, x14	# 932
	flw		f6, 0(x14)	# 932
	fdiv	f5, f5, f6	# 932
	mul		x14, x30, x8	# 933
	add		x14, x6, x14	# 933
	flw		f6, 0(x14)	# 933
	fmul	f6, f5, f6	# 933
	fadd	f6, f6, f4	# 933
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31899	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31899:
	mul		x14, x30, x8	# 933
	add		x14, x10, x14	# 933
	flw		f7, 0(x14)	# 933
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31901	# 125
	addi	x10, x0, 0	# 937
	jal		x0, fle_cont.31900	# 125
fle_else.31901:
	mul		x14, x30, x11	# 934
	add		x14, x6, x14	# 934
	flw		f6, 0(x14)	# 934
	fmul	f6, f5, f6	# 934
	fadd	f6, f6, f2	# 934
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31902	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31902:
	mul		x14, x30, x11	# 934
	add		x10, x10, x14	# 934
	flw		f7, 0(x10)	# 934
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31904	# 125
	addi	x10, x0, 0	# 936
	jal		x0, fle_cont.31903	# 125
fle_else.31904:
	addi	x10, x0, 0	# 935
	mul		x10, x30, x10	# 935
	addi	x10, x10, 60540	# 935
	fsw		f5, 0(x10)	# 935
	addi	x10, x0, 1	# 935
fle_cont.31903:
fle_cont.31900:
feq_cont.31889:
	beq		x10, x11, beq.31906	# 944
	addi	x8, x0, 2	# 944
	jal		x0, beq_cont.31905	# 944
beq.31906:
	mul		x10, x30, x8	# 928
	add		x10, x6, x10	# 928
	flw		f5, 0(x10)	# 928
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31908	# 120
	addi	x8, x0, 0	# 928
	jal		x0, feq_cont.31907	# 120
feq_else.31908:
	lw		x10, 16(x9)	# 421
	lw		x9, 24(x9)	# 373
	mul		x14, x30, x8	# 930
	add		x14, x6, x14	# 930
	flw		f5, 0(x14)	# 930
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31910	# 122
	addi	x14, x0, 0	# 122
	jal		x0, fle_cont.31909	# 122
fle_else.31910:
	addi	x14, x0, 1	# 122
fle_cont.31909:
	beq		x9, x11, beq.31912	# 204
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31914	# 122
	addi	x9, x0, 1	# 204
	jal		x0, fle_cont.31913	# 122
fle_else.31914:
	addi	x9, x0, 0	# 204
fle_cont.31913:
	jal		x0, beq_cont.31911	# 204
beq.31912:
	addi	x9, x14, 0	# 204
beq_cont.31911:
	mul		x14, x30, x8	# 930
	add		x14, x10, x14	# 930
	flw		f5, 0(x14)	# 930
	beq		x9, x11, beq.31916	# 219
	jal		x0, beq_cont.31915	# 219
beq.31916:
	fsub	f5, f0, f5	# 123
beq_cont.31915:
	fsub	f4, f5, f4	# 932
	mul		x8, x30, x8	# 932
	add		x8, x6, x8	# 932
	flw		f5, 0(x8)	# 932
	fdiv	f4, f4, f5	# 932
	mul		x8, x30, x11	# 933
	add		x8, x6, x8	# 933
	flw		f5, 0(x8)	# 933
	fmul	f5, f4, f5	# 933
	fadd	f2, f5, f2	# 933
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.31917	# 124
	fsub	f2, f0, f2	# 124
fle_cont.31917:
	mul		x8, x30, x11	# 933
	add		x8, x10, x8	# 933
	flw		f5, 0(x8)	# 933
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.31919	# 125
	addi	x8, x0, 0	# 937
	jal		x0, fle_cont.31918	# 125
fle_else.31919:
	mul		x8, x30, x12	# 934
	add		x8, x6, x8	# 934
	flw		f2, 0(x8)	# 934
	fmul	f2, f4, f2	# 934
	fadd	f2, f2, f3	# 934
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.31920	# 124
	fsub	f2, f0, f2	# 124
fle_cont.31920:
	mul		x8, x30, x12	# 934
	add		x8, x10, x8	# 934
	flw		f3, 0(x8)	# 934
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.31922	# 125
	addi	x8, x0, 0	# 936
	jal		x0, fle_cont.31921	# 125
fle_else.31922:
	addi	x8, x0, 0	# 935
	mul		x8, x30, x8	# 935
	addi	x8, x8, 60540	# 935
	fsw		f4, 0(x8)	# 935
	addi	x8, x0, 1	# 935
fle_cont.31921:
fle_cont.31918:
feq_cont.31907:
	beq		x8, x11, beq.31924	# 945
	addi	x8, x0, 3	# 945
	jal		x0, beq_cont.31923	# 945
beq.31924:
	addi	x8, x0, 0	# 946
beq_cont.31923:
beq_cont.31905:
beq_cont.31887:
beq_cont.31851:
	beq		x8, x11, beq.31925	# 1469
	mul		x9, x30, x11	# 1473
	addi	x9, x9, 60540	# 1473
	flw		f2, 0(x9)	# 1473
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x29, -8(x2)	# 125
	sw		x12, -12(x2)	# 125
	sw		x4, -16(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.31927	# 125
	jal		x0, fle_cont.31926	# 125
fle_else.31927:
	addi	x9, x0, 0	# 1476
	mul		x9, x30, x9	# 1476
	addi	x9, x9, 60548	# 1476
	flw		f1, 0(x9)	# 1476
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.31929	# 125
	jal		x0, fle_cont.31928	# 125
fle_else.31929:
	lui		x9, %hi(l.26209)	# 1478
	ori		x9, x0, %lo(l.26209)	# 1478
	flw		f1, 0(x9)	# 1478
	fadd	f1, f2, f1	# 1478
	addi	x9, x0, 0	# 1479
	mul		x9, x30, x9	# 1479
	add		x9, x6, x9	# 1479
	flw		f2, 0(x9)	# 1479
	fmul	f2, f2, f1	# 1479
	addi	x9, x0, 0	# 1479
	mul		x9, x30, x9	# 1479
	addi	x9, x9, 60636	# 1479
	flw		f3, 0(x9)	# 1479
	fadd	f2, f2, f3	# 1479
	addi	x9, x0, 1	# 1480
	mul		x9, x30, x9	# 1480
	add		x9, x6, x9	# 1480
	flw		f3, 0(x9)	# 1480
	fmul	f3, f3, f1	# 1480
	addi	x9, x0, 1	# 1480
	mul		x9, x30, x9	# 1480
	addi	x9, x9, 60636	# 1480
	flw		f4, 0(x9)	# 1480
	fadd	f3, f3, f4	# 1480
	addi	x9, x0, 2	# 1481
	mul		x9, x30, x9	# 1481
	add		x9, x6, x9	# 1481
	flw		f4, 0(x9)	# 1481
	fmul	f4, f4, f1	# 1481
	addi	x9, x0, 2	# 1481
	mul		x9, x30, x9	# 1481
	addi	x9, x9, 60636	# 1481
	flw		f5, 0(x9)	# 1481
	fadd	f4, f4, f5	# 1481
	addi	x9, x0, 0	# 1482
	sw		x8, -20(x2)	# 1482
	sw		x13, -24(x2)	# 1482
	fsw		f4, -28(x2)	# 1482
	fsw		f3, -32(x2)	# 1482
	fsw		f2, -36(x2)	# 1482
	fsw		f1, -40(x2)	# 1482
	addi	x4, x9, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -44(x2)	# 1482
	addi	x2, x2, -48	# 1482
	lw		x31, 0(x29)	# 1482
	jalr	x1, x31, 0	# 1482
	addi	x2, x2, 48	# 1482
	lw		x1, -44(x2)	# 1482
	addi	x5, x0, 0	# 1482
	beq		x4, x5, beq_cont.31930	# 1482
	addi	x4, x0, 0	# 1484
	mul		x4, x30, x4	# 1484
	addi	x4, x4, 60548	# 1484
	flw		f1, -40(x2)	# 1484
	fsw		f1, 0(x4)	# 1484
	addi	x4, x0, 0	# 240
	mul		x4, x30, x4	# 240
	addi	x4, x4, 60552	# 240
	flw		f1, -36(x2)	# 240
	fsw		f1, 0(x4)	# 240
	addi	x4, x0, 1	# 241
	mul		x4, x30, x4	# 241
	addi	x4, x4, 60552	# 241
	flw		f1, -32(x2)	# 241
	fsw		f1, 0(x4)	# 241
	addi	x4, x0, 2	# 242
	mul		x4, x30, x4	# 242
	addi	x4, x4, 60552	# 242
	flw		f1, -28(x2)	# 242
	fsw		f1, 0(x4)	# 242
	addi	x4, x0, 0	# 1486
	mul		x4, x30, x4	# 1486
	addi	x4, x4, 60564	# 1486
	lw		x5, -24(x2)	# 1486
	sw		x5, 0(x4)	# 1486
	addi	x4, x0, 0	# 1487
	mul		x4, x30, x4	# 1487
	addi	x4, x4, 60544	# 1487
	lw		x5, -20(x2)	# 1487
	sw		x5, 0(x4)	# 1487
beq_cont.31930:
fle_cont.31928:
fle_cont.31926:
	lw		x4, -12(x2)	# 1493
	lw		x5, -16(x2)	# 1493
	add		x4, x5, x4	# 1493
	lw		x5, -4(x2)	# 1493
	lw		x6, 0(x2)	# 1493
	lw		x29, -8(x2)	# 1493
	lw		x31, 0(x29)	# 1493
	jalr	x0, x31, 0	# 1493
beq.31925:
	mul		x7, x30, x13	# 1497
	addi	x7, x7, 60048	# 1497
	lw		x7, 0(x7)	# 1497
	lw		x7, 24(x7)	# 373
	beq		x7, x11, beq.31931	# 1497
	add		x4, x4, x12	# 1498
	lw		x31, 0(x29)	# 1498
	jalr	x0, x31, 0	# 1498
beq.31931:
	jalr	x0, x1, 0	# 1499
beq.31850:
	jalr	x0, x1, 0	# 1466
solve_one_or_network.2826.17735:
	lw		x7, 16(x29)	# 1506
	lw		x8, 12(x29)	# 1506
	lw		x9, 8(x29)	# 1506
	lw		x10, 4(x29)	# 1506
	mul		x11, x30, x4	# 1506
	add		x11, x5, x11	# 1506
	lw		x11, 0(x11)	# 1506
	beq		x11, x8, beq.31934	# 1507
	mul		x8, x30, x11	# 1508
	addi	x8, x8, 60332	# 1508
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
beq.31934:
	jalr	x0, x1, 0	# 1511
trace_or_matrix.2830.17739:
	lw		x7, 28(x29)	# 1516
	lw		x8, 24(x29)	# 1516
	lw		x9, 20(x29)	# 1516
	lw		x10, 16(x29)	# 1516
	lw		x11, 12(x29)	# 1516
	lw		x12, 8(x29)	# 1516
	flw		f1, 4(x29)	# 1516
	mul		x13, x30, x4	# 1516
	add		x13, x5, x13	# 1516
	lw		x13, 0(x13)	# 1516
	mul		x14, x30, x11	# 1517
	add		x14, x13, x14	# 1517
	lw		x14, 0(x14)	# 1517
	beq		x14, x9, beq.31936	# 1518
	addi	x9, x0, 99	# 1521
	sw		x6, 0(x2)	# 1521
	sw		x5, -4(x2)	# 1521
	sw		x29, -8(x2)	# 1521
	sw		x12, -12(x2)	# 1521
	sw		x4, -16(x2)	# 1521
	beq		x14, x9, beq.31938	# 1521
	mul		x9, x30, x14	# 1032
	addi	x9, x9, 60048	# 1032
	lw		x9, 0(x9)	# 1032
	addi	x14, x0, 0	# 1034
	mul		x14, x30, x14	# 1034
	addi	x14, x14, 60636	# 1034
	flw		f2, 0(x14)	# 1034
	lw		x14, 20(x9)	# 431
	mul		x15, x30, x11	# 436
	add		x14, x14, x15	# 436
	flw		f3, 0(x14)	# 436
	fsub	f2, f2, f3	# 1034
	addi	x14, x0, 1	# 1035
	mul		x14, x30, x14	# 1035
	addi	x14, x14, 60636	# 1035
	flw		f3, 0(x14)	# 1035
	lw		x14, 20(x9)	# 441
	mul		x15, x30, x12	# 446
	add		x14, x14, x15	# 446
	flw		f4, 0(x14)	# 446
	fsub	f3, f3, f4	# 1035
	addi	x14, x0, 2	# 1036
	mul		x14, x30, x14	# 1036
	addi	x14, x14, 60636	# 1036
	flw		f4, 0(x14)	# 1036
	lw		x14, 20(x9)	# 451
	mul		x15, x30, x8	# 456
	add		x14, x14, x15	# 456
	flw		f5, 0(x14)	# 456
	fsub	f4, f4, f5	# 1036
	lw		x14, 4(x9)	# 353
	addi	x15, x0, 1	# 1039
	beq		x14, x15, beq.31940	# 1039
	addi	x15, x0, 2	# 1040
	beq		x14, x15, beq.31942	# 1040
	mul		x14, x30, x11	# 1006
	add		x14, x6, x14	# 1006
	flw		f5, 0(x14)	# 1006
	mul		x14, x30, x12	# 1006
	add		x14, x6, x14	# 1006
	flw		f6, 0(x14)	# 1006
	mul		x14, x30, x8	# 1006
	add		x14, x6, x14	# 1006
	flw		f7, 0(x14)	# 1006
	fmul	f8, f5, f5	# 127
	lw		x14, 16(x9)	# 391
	mul		x15, x30, x11	# 396
	add		x14, x14, x15	# 396
	flw		f9, 0(x14)	# 396
	fmul	f8, f8, f9	# 967
	fmul	f9, f6, f6	# 127
	lw		x14, 16(x9)	# 401
	mul		x15, x30, x12	# 406
	add		x14, x14, x15	# 406
	flw		f10, 0(x14)	# 406
	fmul	f9, f9, f10	# 967
	fadd	f8, f8, f9	# 967
	fmul	f9, f7, f7	# 127
	lw		x14, 16(x9)	# 411
	mul		x15, x30, x8	# 416
	add		x14, x14, x15	# 416
	flw		f10, 0(x14)	# 416
	fmul	f9, f9, f10	# 967
	fadd	f8, f8, f9	# 967
	lw		x14, 12(x9)	# 382
	beq		x14, x11, beq.31944	# 969
	fmul	f9, f6, f7	# 973
	lw		x14, 36(x9)	# 511
	mul		x15, x30, x11	# 516
	add		x14, x14, x15	# 516
	flw		f10, 0(x14)	# 516
	fmul	f9, f9, f10	# 973
	fadd	f8, f8, f9	# 972
	fmul	f7, f7, f5	# 974
	lw		x14, 36(x9)	# 521
	mul		x15, x30, x12	# 526
	add		x14, x14, x15	# 526
	flw		f9, 0(x14)	# 526
	fmul	f7, f7, f9	# 974
	fadd	f7, f8, f7	# 972
	fmul	f5, f5, f6	# 975
	lw		x14, 36(x9)	# 531
	mul		x15, x30, x8	# 536
	add		x14, x14, x15	# 536
	flw		f6, 0(x14)	# 536
	fmul	f5, f5, f6	# 975
	fadd	f5, f7, f5	# 972
	jal		x0, beq_cont.31943	# 969
beq.31944:
	fadd	f5, f0, f8	# 970
beq_cont.31943:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31946	# 120
	addi	x8, x0, 0	# 1009
	jal		x0, feq_cont.31945	# 120
feq_else.31946:
	mul		x14, x30, x11	# 1013
	add		x14, x6, x14	# 1013
	flw		f6, 0(x14)	# 1013
	mul		x14, x30, x12	# 1013
	add		x14, x6, x14	# 1013
	flw		f7, 0(x14)	# 1013
	mul		x14, x30, x8	# 1013
	add		x14, x6, x14	# 1013
	flw		f8, 0(x14)	# 1013
	fmul	f9, f6, f2	# 981
	lw		x14, 16(x9)	# 391
	mul		x15, x30, x11	# 396
	add		x14, x14, x15	# 396
	flw		f10, 0(x14)	# 396
	fmul	f9, f9, f10	# 981
	fmul	f10, f7, f3	# 982
	lw		x14, 16(x9)	# 401
	mul		x15, x30, x12	# 406
	add		x14, x14, x15	# 406
	flw		f11, 0(x14)	# 406
	fmul	f10, f10, f11	# 982
	fadd	f9, f9, f10	# 981
	fmul	f10, f8, f4	# 983
	lw		x14, 16(x9)	# 411
	mul		x15, x30, x8	# 416
	add		x14, x14, x15	# 416
	flw		f11, 0(x14)	# 416
	fmul	f10, f10, f11	# 983
	fadd	f9, f9, f10	# 981
	lw		x14, 12(x9)	# 382
	beq		x14, x11, beq.31948	# 985
	fmul	f10, f8, f3	# 989
	fmul	f11, f7, f4	# 989
	fadd	f10, f10, f11	# 989
	lw		x14, 36(x9)	# 511
	mul		x15, x30, x11	# 516
	add		x14, x14, x15	# 516
	flw		f11, 0(x14)	# 516
	fmul	f10, f10, f11	# 989
	fmul	f11, f6, f4	# 990
	fmul	f8, f8, f2	# 990
	fadd	f8, f11, f8	# 990
	lw		x14, 36(x9)	# 521
	mul		x15, x30, x12	# 526
	add		x14, x14, x15	# 526
	flw		f11, 0(x14)	# 526
	fmul	f8, f8, f11	# 990
	fadd	f8, f10, f8	# 989
	fmul	f6, f6, f3	# 991
	fmul	f7, f7, f2	# 991
	fadd	f6, f6, f7	# 991
	lw		x14, 36(x9)	# 531
	mul		x15, x30, x8	# 536
	add		x14, x14, x15	# 536
	flw		f7, 0(x14)	# 536
	fmul	f6, f6, f7	# 991
	fadd	f6, f8, f6	# 989
	fadd	f7, f0, f17	# 126
	fmul	f6, f6, f7	# 126
	fadd	f6, f9, f6	# 988
	jal		x0, beq_cont.31947	# 985
beq.31948:
	fadd	f6, f0, f9	# 986
beq_cont.31947:
	fmul	f7, f2, f2	# 127
	lw		x14, 16(x9)	# 391
	mul		x15, x30, x11	# 396
	add		x14, x14, x15	# 396
	flw		f8, 0(x14)	# 396
	fmul	f7, f7, f8	# 967
	fmul	f8, f3, f3	# 127
	lw		x14, 16(x9)	# 401
	mul		x15, x30, x12	# 406
	add		x14, x14, x15	# 406
	flw		f9, 0(x14)	# 406
	fmul	f8, f8, f9	# 967
	fadd	f7, f7, f8	# 967
	fmul	f8, f4, f4	# 127
	lw		x14, 16(x9)	# 411
	mul		x15, x30, x8	# 416
	add		x14, x14, x15	# 416
	flw		f9, 0(x14)	# 416
	fmul	f8, f8, f9	# 967
	fadd	f7, f7, f8	# 967
	lw		x14, 12(x9)	# 382
	beq		x14, x11, beq.31950	# 969
	fmul	f8, f3, f4	# 973
	lw		x14, 36(x9)	# 511
	mul		x15, x30, x11	# 516
	add		x14, x14, x15	# 516
	flw		f9, 0(x14)	# 516
	fmul	f8, f8, f9	# 973
	fadd	f7, f7, f8	# 972
	fmul	f4, f4, f2	# 974
	lw		x14, 36(x9)	# 521
	mul		x15, x30, x12	# 526
	add		x14, x14, x15	# 526
	flw		f8, 0(x14)	# 526
	fmul	f4, f4, f8	# 974
	fadd	f4, f7, f4	# 972
	fmul	f2, f2, f3	# 975
	lw		x14, 36(x9)	# 531
	mul		x8, x30, x8	# 536
	add		x8, x14, x8	# 536
	flw		f3, 0(x8)	# 536
	fmul	f2, f2, f3	# 975
	fadd	f2, f4, f2	# 972
	jal		x0, beq_cont.31949	# 969
beq.31950:
	fadd	f2, f0, f7	# 970
beq_cont.31949:
	lw		x8, 4(x9)	# 353
	beq		x8, x10, beq.31952	# 1016
	jal		x0, beq_cont.31951	# 1016
beq.31952:
	fadd	f3, f0, f16	# 1016
	fsub	f2, f2, f3	# 1016
beq_cont.31951:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1018
	fsub	f2, f3, f2	# 1018
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.31954	# 121
	addi	x8, x0, 0	# 1026
	jal		x0, fle_cont.31953	# 121
fle_else.31954:
	fsqrt	f1, f2	# 1021
	lw		x8, 24(x9)	# 373
	beq		x8, x11, beq.31956	# 1022
	jal		x0, beq_cont.31955	# 1022
beq.31956:
	fsub	f1, f0, f1	# 123
beq_cont.31955:
	fsub	f1, f1, f6	# 1023
	fdiv	f1, f1, f5	# 1023
	mul		x8, x30, x11	# 1023
	addi	x8, x8, 60540	# 1023
	fsw		f1, 0(x8)	# 1023
	addi	x8, x0, 1	# 1023
fle_cont.31953:
feq_cont.31945:
	jal		x0, beq_cont.31941	# 1040
beq.31942:
	lw		x9, 16(x9)	# 421
	mul		x10, x30, x11	# 292
	add		x10, x6, x10	# 292
	flw		f5, 0(x10)	# 292
	mul		x10, x30, x11	# 292
	add		x10, x9, x10	# 292
	flw		f6, 0(x10)	# 292
	fmul	f5, f5, f6	# 292
	mul		x10, x30, x12	# 292
	add		x10, x6, x10	# 292
	flw		f6, 0(x10)	# 292
	mul		x10, x30, x12	# 292
	add		x10, x9, x10	# 292
	flw		f7, 0(x10)	# 292
	fmul	f6, f6, f7	# 292
	fadd	f5, f5, f6	# 292
	mul		x10, x30, x8	# 292
	add		x10, x6, x10	# 292
	flw		f6, 0(x10)	# 292
	mul		x10, x30, x8	# 292
	add		x10, x9, x10	# 292
	flw		f7, 0(x10)	# 292
	fmul	f6, f6, f7	# 292
	fadd	f5, f5, f6	# 292
	fle		x31, f5, f1	# 121
	beq		x31, x0, fle_else.31958	# 121
	addi	x8, x0, 0	# 959
	jal		x0, fle_cont.31957	# 121
fle_else.31958:
	mul		x10, x30, x11	# 297
	add		x10, x9, x10	# 297
	flw		f1, 0(x10)	# 297
	fmul	f1, f1, f2	# 297
	mul		x10, x30, x12	# 297
	add		x10, x9, x10	# 297
	flw		f2, 0(x10)	# 297
	fmul	f2, f2, f3	# 297
	fadd	f1, f1, f2	# 297
	mul		x8, x30, x8	# 297
	add		x8, x9, x8	# 297
	flw		f2, 0(x8)	# 297
	fmul	f2, f2, f4	# 297
	fadd	f1, f1, f2	# 297
	fsub	f1, f0, f1	# 123
	fdiv	f1, f1, f5	# 957
	mul		x8, x30, x11	# 957
	addi	x8, x8, 60540	# 957
	fsw		f1, 0(x8)	# 957
	addi	x8, x0, 1	# 958
fle_cont.31957:
beq_cont.31941:
	jal		x0, beq_cont.31939	# 1039
beq.31940:
	mul		x10, x30, x11	# 928
	add		x10, x6, x10	# 928
	flw		f5, 0(x10)	# 928
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31960	# 120
	addi	x10, x0, 0	# 928
	jal		x0, feq_cont.31959	# 120
feq_else.31960:
	lw		x10, 16(x9)	# 421
	lw		x14, 24(x9)	# 373
	mul		x15, x30, x11	# 930
	add		x15, x6, x15	# 930
	flw		f5, 0(x15)	# 930
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31962	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.31961	# 122
fle_else.31962:
	addi	x15, x0, 1	# 122
fle_cont.31961:
	beq		x14, x11, beq.31964	# 204
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31966	# 122
	addi	x14, x0, 1	# 204
	jal		x0, fle_cont.31965	# 122
fle_else.31966:
	addi	x14, x0, 0	# 204
fle_cont.31965:
	jal		x0, beq_cont.31963	# 204
beq.31964:
	addi	x14, x15, 0	# 204
beq_cont.31963:
	mul		x15, x30, x11	# 930
	add		x15, x10, x15	# 930
	flw		f5, 0(x15)	# 930
	beq		x14, x11, beq.31968	# 219
	jal		x0, beq_cont.31967	# 219
beq.31968:
	fsub	f5, f0, f5	# 123
beq_cont.31967:
	fsub	f5, f5, f2	# 932
	mul		x14, x30, x11	# 932
	add		x14, x6, x14	# 932
	flw		f6, 0(x14)	# 932
	fdiv	f5, f5, f6	# 932
	mul		x14, x30, x12	# 933
	add		x14, x6, x14	# 933
	flw		f6, 0(x14)	# 933
	fmul	f6, f5, f6	# 933
	fadd	f6, f6, f3	# 933
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31969	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31969:
	mul		x14, x30, x12	# 933
	add		x14, x10, x14	# 933
	flw		f7, 0(x14)	# 933
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31971	# 125
	addi	x10, x0, 0	# 937
	jal		x0, fle_cont.31970	# 125
fle_else.31971:
	mul		x14, x30, x8	# 934
	add		x14, x6, x14	# 934
	flw		f6, 0(x14)	# 934
	fmul	f6, f5, f6	# 934
	fadd	f6, f6, f4	# 934
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31972	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31972:
	mul		x14, x30, x8	# 934
	add		x10, x10, x14	# 934
	flw		f7, 0(x10)	# 934
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31974	# 125
	addi	x10, x0, 0	# 936
	jal		x0, fle_cont.31973	# 125
fle_else.31974:
	addi	x10, x0, 0	# 935
	mul		x10, x30, x10	# 935
	addi	x10, x10, 60540	# 935
	fsw		f5, 0(x10)	# 935
	addi	x10, x0, 1	# 935
fle_cont.31973:
fle_cont.31970:
feq_cont.31959:
	beq		x10, x11, beq.31976	# 943
	addi	x8, x0, 1	# 943
	jal		x0, beq_cont.31975	# 943
beq.31976:
	mul		x10, x30, x12	# 928
	add		x10, x6, x10	# 928
	flw		f5, 0(x10)	# 928
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31978	# 120
	addi	x10, x0, 0	# 928
	jal		x0, feq_cont.31977	# 120
feq_else.31978:
	lw		x10, 16(x9)	# 421
	lw		x14, 24(x9)	# 373
	mul		x15, x30, x12	# 930
	add		x15, x6, x15	# 930
	flw		f5, 0(x15)	# 930
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31980	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.31979	# 122
fle_else.31980:
	addi	x15, x0, 1	# 122
fle_cont.31979:
	beq		x14, x11, beq.31982	# 204
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31984	# 122
	addi	x14, x0, 1	# 204
	jal		x0, fle_cont.31983	# 122
fle_else.31984:
	addi	x14, x0, 0	# 204
fle_cont.31983:
	jal		x0, beq_cont.31981	# 204
beq.31982:
	addi	x14, x15, 0	# 204
beq_cont.31981:
	mul		x15, x30, x12	# 930
	add		x15, x10, x15	# 930
	flw		f5, 0(x15)	# 930
	beq		x14, x11, beq.31986	# 219
	jal		x0, beq_cont.31985	# 219
beq.31986:
	fsub	f5, f0, f5	# 123
beq_cont.31985:
	fsub	f5, f5, f3	# 932
	mul		x14, x30, x12	# 932
	add		x14, x6, x14	# 932
	flw		f6, 0(x14)	# 932
	fdiv	f5, f5, f6	# 932
	mul		x14, x30, x8	# 933
	add		x14, x6, x14	# 933
	flw		f6, 0(x14)	# 933
	fmul	f6, f5, f6	# 933
	fadd	f6, f6, f4	# 933
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31987	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31987:
	mul		x14, x30, x8	# 933
	add		x14, x10, x14	# 933
	flw		f7, 0(x14)	# 933
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31989	# 125
	addi	x10, x0, 0	# 937
	jal		x0, fle_cont.31988	# 125
fle_else.31989:
	mul		x14, x30, x11	# 934
	add		x14, x6, x14	# 934
	flw		f6, 0(x14)	# 934
	fmul	f6, f5, f6	# 934
	fadd	f6, f6, f2	# 934
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31990	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31990:
	mul		x14, x30, x11	# 934
	add		x10, x10, x14	# 934
	flw		f7, 0(x10)	# 934
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31992	# 125
	addi	x10, x0, 0	# 936
	jal		x0, fle_cont.31991	# 125
fle_else.31992:
	addi	x10, x0, 0	# 935
	mul		x10, x30, x10	# 935
	addi	x10, x10, 60540	# 935
	fsw		f5, 0(x10)	# 935
	addi	x10, x0, 1	# 935
fle_cont.31991:
fle_cont.31988:
feq_cont.31977:
	beq		x10, x11, beq.31994	# 944
	addi	x8, x0, 2	# 944
	jal		x0, beq_cont.31993	# 944
beq.31994:
	mul		x10, x30, x8	# 928
	add		x10, x6, x10	# 928
	flw		f5, 0(x10)	# 928
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31996	# 120
	addi	x8, x0, 0	# 928
	jal		x0, feq_cont.31995	# 120
feq_else.31996:
	lw		x10, 16(x9)	# 421
	lw		x9, 24(x9)	# 373
	mul		x14, x30, x8	# 930
	add		x14, x6, x14	# 930
	flw		f5, 0(x14)	# 930
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31998	# 122
	addi	x14, x0, 0	# 122
	jal		x0, fle_cont.31997	# 122
fle_else.31998:
	addi	x14, x0, 1	# 122
fle_cont.31997:
	beq		x9, x11, beq.32000	# 204
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32002	# 122
	addi	x9, x0, 1	# 204
	jal		x0, fle_cont.32001	# 122
fle_else.32002:
	addi	x9, x0, 0	# 204
fle_cont.32001:
	jal		x0, beq_cont.31999	# 204
beq.32000:
	addi	x9, x14, 0	# 204
beq_cont.31999:
	mul		x14, x30, x8	# 930
	add		x14, x10, x14	# 930
	flw		f5, 0(x14)	# 930
	beq		x9, x11, beq.32004	# 219
	jal		x0, beq_cont.32003	# 219
beq.32004:
	fsub	f5, f0, f5	# 123
beq_cont.32003:
	fsub	f4, f5, f4	# 932
	mul		x8, x30, x8	# 932
	add		x8, x6, x8	# 932
	flw		f5, 0(x8)	# 932
	fdiv	f4, f4, f5	# 932
	mul		x8, x30, x11	# 933
	add		x8, x6, x8	# 933
	flw		f5, 0(x8)	# 933
	fmul	f5, f4, f5	# 933
	fadd	f2, f5, f2	# 933
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32005	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32005:
	mul		x8, x30, x11	# 933
	add		x8, x10, x8	# 933
	flw		f5, 0(x8)	# 933
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.32007	# 125
	addi	x8, x0, 0	# 937
	jal		x0, fle_cont.32006	# 125
fle_else.32007:
	mul		x8, x30, x12	# 934
	add		x8, x6, x8	# 934
	flw		f2, 0(x8)	# 934
	fmul	f2, f4, f2	# 934
	fadd	f2, f2, f3	# 934
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_else.32009	# 124
	fsub	f1, f0, f2	# 124
	jal		x0, fle_cont.32008	# 124
fle_else.32009:
	fadd	f1, f0, f2	# 124
fle_cont.32008:
	mul		x8, x30, x12	# 934
	add		x8, x10, x8	# 934
	flw		f2, 0(x8)	# 934
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32011	# 125
	addi	x8, x0, 0	# 936
	jal		x0, fle_cont.32010	# 125
fle_else.32011:
	addi	x8, x0, 0	# 935
	mul		x8, x30, x8	# 935
	addi	x8, x8, 60540	# 935
	fsw		f4, 0(x8)	# 935
	addi	x8, x0, 1	# 935
fle_cont.32010:
fle_cont.32006:
feq_cont.31995:
	beq		x8, x11, beq.32013	# 945
	addi	x8, x0, 3	# 945
	jal		x0, beq_cont.32012	# 945
beq.32013:
	addi	x8, x0, 0	# 946
beq_cont.32012:
beq_cont.31993:
beq_cont.31975:
beq_cont.31939:
	addi	x9, x0, 0	# 1527
	beq		x8, x9, beq_cont.32014	# 1527
	addi	x8, x0, 0	# 1528
	mul		x8, x30, x8	# 1528
	addi	x8, x8, 60540	# 1528
	flw		f1, 0(x8)	# 1528
	addi	x8, x0, 0	# 1529
	mul		x8, x30, x8	# 1529
	addi	x8, x8, 60548	# 1529
	flw		f2, 0(x8)	# 1529
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32016	# 125
	jal		x0, fle_cont.32015	# 125
fle_else.32016:
	addi	x8, x0, 1	# 1530
	addi	x5, x13, 0
	addi	x4, x8, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1530
	addi	x2, x2, -24	# 1530
	lw		x31, 0(x29)	# 1530
	jalr	x1, x31, 0	# 1530
	addi	x2, x2, 24	# 1530
	lw		x1, -20(x2)	# 1530
fle_cont.32015:
beq_cont.32014:
	jal		x0, beq_cont.31937	# 1521
beq.31938:
	addi	x8, x0, 1	# 1522
	addi	x5, x13, 0
	addi	x4, x8, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1522
	addi	x2, x2, -24	# 1522
	lw		x31, 0(x29)	# 1522
	jalr	x1, x31, 0	# 1522
	addi	x2, x2, 24	# 1522
	lw		x1, -20(x2)	# 1522
beq_cont.31937:
	lw		x4, -12(x2)	# 1534
	lw		x5, -16(x2)	# 1534
	add		x4, x5, x4	# 1534
	lw		x5, -4(x2)	# 1534
	lw		x6, 0(x2)	# 1534
	lw		x29, -8(x2)	# 1534
	lw		x31, 0(x29)	# 1534
	jalr	x0, x31, 0	# 1534
beq.31936:
	jalr	x0, x1, 0	# 1519
solve_each_element_fast.2836.17743:
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
	beq		x15, x10, beq.32018	# 1560
	mul		x10, x30, x15	# 1173
	addi	x10, x10, 60048	# 1173
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
	beq		x18, x13, beq.32020	# 1181
	addi	x8, x0, 2	# 1183
	beq		x18, x8, beq.32022	# 1183
	mul		x8, x30, x12	# 1155
	add		x8, x17, x8	# 1155
	flw		f5, 0(x8)	# 1155
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32024	# 120
	addi	x8, x0, 0	# 1157
	jal		x0, feq_cont.32023	# 120
feq_else.32024:
	mul		x8, x30, x13	# 1159
	add		x8, x17, x8	# 1159
	flw		f6, 0(x8)	# 1159
	fmul	f2, f6, f2	# 1159
	mul		x8, x30, x9	# 1159
	add		x8, x17, x8	# 1159
	flw		f6, 0(x8)	# 1159
	fmul	f3, f6, f3	# 1159
	fadd	f2, f2, f3	# 1159
	mul		x8, x30, x11	# 1159
	add		x8, x17, x8	# 1159
	flw		f3, 0(x8)	# 1159
	fmul	f3, f3, f4	# 1159
	fadd	f2, f2, f3	# 1159
	mul		x8, x30, x11	# 1160
	add		x8, x16, x8	# 1160
	flw		f3, 0(x8)	# 1160
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1161
	fsub	f3, f4, f3	# 1161
	fle		x31, f3, f1	# 121
	beq		x31, x0, fle_else.32026	# 121
	addi	x8, x0, 0	# 1168
	jal		x0, fle_cont.32025	# 121
fle_else.32026:
	lw		x8, 24(x10)	# 373
	beq		x8, x12, beq.32028	# 1163
	addi	x8, x0, 0	# 1164
	fsqrt	f3, f3	# 1164
	fadd	f2, f2, f3	# 1164
	addi	x9, x0, 4	# 1164
	mul		x9, x30, x9	# 1164
	add		x9, x17, x9	# 1164
	flw		f3, 0(x9)	# 1164
	fmul	f2, f2, f3	# 1164
	mul		x8, x30, x8	# 1164
	addi	x8, x8, 60540	# 1164
	fsw		f2, 0(x8)	# 1164
	jal		x0, beq_cont.32027	# 1163
beq.32028:
	addi	x8, x0, 0	# 1166
	fsqrt	f3, f3	# 1166
	fsub	f2, f2, f3	# 1166
	addi	x9, x0, 4	# 1166
	mul		x9, x30, x9	# 1166
	add		x9, x17, x9	# 1166
	flw		f3, 0(x9)	# 1166
	fmul	f2, f2, f3	# 1166
	mul		x8, x30, x8	# 1166
	addi	x8, x8, 60540	# 1166
	fsw		f2, 0(x8)	# 1166
beq_cont.32027:
	addi	x8, x0, 1	# 1167
fle_cont.32025:
feq_cont.32023:
	jal		x0, beq_cont.32021	# 1183
beq.32022:
	mul		x8, x30, x12	# 1146
	add		x8, x17, x8	# 1146
	flw		f2, 0(x8)	# 1146
	fle		x31, f1, f2	# 122
	beq		x31, x0, fle_else.32030	# 122
	addi	x8, x0, 0	# 1149
	jal		x0, fle_cont.32029	# 122
fle_else.32030:
	mul		x8, x30, x12	# 1147
	add		x8, x17, x8	# 1147
	flw		f2, 0(x8)	# 1147
	mul		x8, x30, x11	# 1147
	add		x8, x16, x8	# 1147
	flw		f3, 0(x8)	# 1147
	fmul	f2, f2, f3	# 1147
	mul		x8, x30, x12	# 1147
	addi	x8, x8, 60540	# 1147
	fsw		f2, 0(x8)	# 1147
	addi	x8, x0, 1	# 1148
fle_cont.32029:
beq_cont.32021:
	jal		x0, beq_cont.32019	# 1181
beq.32020:
	lw		x16, 0(x6)	# 639
	mul		x18, x30, x12	# 1064
	add		x18, x17, x18	# 1064
	flw		f5, 0(x18)	# 1064
	fsub	f5, f5, f2	# 1064
	mul		x18, x30, x13	# 1064
	add		x18, x17, x18	# 1064
	flw		f6, 0(x18)	# 1064
	fmul	f5, f5, f6	# 1064
	mul		x18, x30, x13	# 1066
	add		x18, x16, x18	# 1066
	flw		f6, 0(x18)	# 1066
	fmul	f6, f5, f6	# 1066
	fadd	f6, f6, f3	# 1066
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32031	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32031:
	lw		x18, 16(x10)	# 401
	mul		x19, x30, x13	# 406
	add		x18, x18, x19	# 406
	flw		f7, 0(x18)	# 406
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32033	# 125
	addi	x18, x0, 0	# 1070
	jal		x0, fle_cont.32032	# 125
fle_else.32033:
	mul		x18, x30, x9	# 1067
	add		x18, x16, x18	# 1067
	flw		f6, 0(x18)	# 1067
	fmul	f6, f5, f6	# 1067
	fadd	f6, f6, f4	# 1067
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32034	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32034:
	lw		x18, 16(x10)	# 411
	mul		x19, x30, x9	# 416
	add		x18, x18, x19	# 416
	flw		f7, 0(x18)	# 416
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32036	# 125
	addi	x18, x0, 0	# 1069
	jal		x0, fle_cont.32035	# 125
fle_else.32036:
	mul		x18, x30, x13	# 1068
	add		x18, x17, x18	# 1068
	flw		f6, 0(x18)	# 1068
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.32038	# 120
	addi	x18, x0, 0	# 1068
	jal		x0, feq_cont.32037	# 120
feq_else.32038:
	addi	x18, x0, 1	# 1068
feq_cont.32037:
fle_cont.32035:
fle_cont.32032:
	beq		x18, x12, beq.32040	# 1065
	mul		x8, x30, x12	# 1072
	addi	x8, x8, 60540	# 1072
	fsw		f5, 0(x8)	# 1072
	addi	x8, x0, 1	# 1072
	jal		x0, beq_cont.32039	# 1065
beq.32040:
	mul		x18, x30, x9	# 1073
	add		x18, x17, x18	# 1073
	flw		f5, 0(x18)	# 1073
	fsub	f5, f5, f3	# 1073
	mul		x18, x30, x11	# 1073
	add		x18, x17, x18	# 1073
	flw		f6, 0(x18)	# 1073
	fmul	f5, f5, f6	# 1073
	mul		x18, x30, x12	# 1075
	add		x18, x16, x18	# 1075
	flw		f6, 0(x18)	# 1075
	fmul	f7, f5, f6	# 1075
	fadd	f7, f7, f2	# 1075
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.32041	# 124
	fsub	f7, f0, f7	# 124
fle_cont.32041:
	lw		x18, 16(x10)	# 391
	mul		x19, x30, x12	# 396
	add		x18, x18, x19	# 396
	flw		f8, 0(x18)	# 396
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32043	# 125
	addi	x9, x0, 0	# 1079
	jal		x0, fle_cont.32042	# 125
fle_else.32043:
	mul		x18, x30, x9	# 1076
	add		x18, x16, x18	# 1076
	flw		f7, 0(x18)	# 1076
	fmul	f7, f5, f7	# 1076
	fadd	f7, f7, f4	# 1076
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.32044	# 124
	fsub	f7, f0, f7	# 124
fle_cont.32044:
	lw		x18, 16(x10)	# 411
	mul		x9, x30, x9	# 416
	add		x9, x18, x9	# 416
	flw		f8, 0(x9)	# 416
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32046	# 125
	addi	x9, x0, 0	# 1078
	jal		x0, fle_cont.32045	# 125
fle_else.32046:
	mul		x9, x30, x11	# 1077
	add		x9, x17, x9	# 1077
	flw		f7, 0(x9)	# 1077
	feq		x31, f7, f1	# 120
	beq		x31, x0, feq_else.32048	# 120
	addi	x9, x0, 0	# 1077
	jal		x0, feq_cont.32047	# 120
feq_else.32048:
	addi	x9, x0, 1	# 1077
feq_cont.32047:
fle_cont.32045:
fle_cont.32042:
	beq		x9, x12, beq.32050	# 1074
	mul		x8, x30, x12	# 1081
	addi	x8, x8, 60540	# 1081
	fsw		f5, 0(x8)	# 1081
	addi	x8, x0, 2	# 1081
	jal		x0, beq_cont.32049	# 1074
beq.32050:
	addi	x9, x0, 4	# 1082
	mul		x9, x30, x9	# 1082
	add		x9, x17, x9	# 1082
	flw		f5, 0(x9)	# 1082
	fsub	f4, f5, f4	# 1082
	mul		x9, x30, x8	# 1082
	add		x9, x17, x9	# 1082
	flw		f5, 0(x9)	# 1082
	fmul	f4, f4, f5	# 1082
	fmul	f5, f4, f6	# 1084
	fadd	f2, f5, f2	# 1084
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32051	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32051:
	lw		x9, 16(x10)	# 391
	mul		x11, x30, x12	# 396
	add		x9, x9, x11	# 396
	flw		f5, 0(x9)	# 396
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.32053	# 125
	addi	x8, x0, 0	# 1088
	jal		x0, fle_cont.32052	# 125
fle_else.32053:
	mul		x9, x30, x13	# 1085
	add		x9, x16, x9	# 1085
	flw		f2, 0(x9)	# 1085
	fmul	f2, f4, f2	# 1085
	fadd	f2, f2, f3	# 1085
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32054	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32054:
	lw		x9, 16(x10)	# 401
	mul		x10, x30, x13	# 406
	add		x9, x9, x10	# 406
	flw		f3, 0(x9)	# 406
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32056	# 125
	addi	x8, x0, 0	# 1087
	jal		x0, fle_cont.32055	# 125
fle_else.32056:
	mul		x8, x30, x8	# 1086
	add		x8, x17, x8	# 1086
	flw		f2, 0(x8)	# 1086
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.32058	# 120
	addi	x8, x0, 0	# 1086
	jal		x0, feq_cont.32057	# 120
feq_else.32058:
	addi	x8, x0, 1	# 1086
feq_cont.32057:
fle_cont.32055:
fle_cont.32052:
	beq		x8, x12, beq.32060	# 1083
	mul		x8, x30, x12	# 1090
	addi	x8, x8, 60540	# 1090
	fsw		f4, 0(x8)	# 1090
	addi	x8, x0, 3	# 1090
	jal		x0, beq_cont.32059	# 1083
beq.32060:
	addi	x8, x0, 0	# 1092
beq_cont.32059:
beq_cont.32049:
beq_cont.32039:
beq_cont.32019:
	beq		x8, x12, beq.32061	# 1563
	mul		x9, x30, x12	# 1567
	addi	x9, x9, 60540	# 1567
	flw		f2, 0(x9)	# 1567
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x29, -8(x2)	# 125
	sw		x13, -12(x2)	# 125
	sw		x4, -16(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32063	# 125
	jal		x0, fle_cont.32062	# 125
fle_else.32063:
	addi	x9, x0, 0	# 1570
	mul		x9, x30, x9	# 1570
	addi	x9, x9, 60548	# 1570
	flw		f1, 0(x9)	# 1570
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32065	# 125
	jal		x0, fle_cont.32064	# 125
fle_else.32065:
	lui		x9, %hi(l.26209)	# 1572
	ori		x9, x0, %lo(l.26209)	# 1572
	flw		f1, 0(x9)	# 1572
	fadd	f1, f2, f1	# 1572
	addi	x9, x0, 0	# 1573
	mul		x9, x30, x9	# 1573
	add		x9, x14, x9	# 1573
	flw		f2, 0(x9)	# 1573
	fmul	f2, f2, f1	# 1573
	addi	x9, x0, 0	# 1573
	mul		x9, x30, x9	# 1573
	addi	x9, x9, 60648	# 1573
	flw		f3, 0(x9)	# 1573
	fadd	f2, f2, f3	# 1573
	addi	x9, x0, 1	# 1574
	mul		x9, x30, x9	# 1574
	add		x9, x14, x9	# 1574
	flw		f3, 0(x9)	# 1574
	fmul	f3, f3, f1	# 1574
	addi	x9, x0, 1	# 1574
	mul		x9, x30, x9	# 1574
	addi	x9, x9, 60648	# 1574
	flw		f4, 0(x9)	# 1574
	fadd	f3, f3, f4	# 1574
	addi	x9, x0, 2	# 1575
	mul		x9, x30, x9	# 1575
	add		x9, x14, x9	# 1575
	flw		f4, 0(x9)	# 1575
	fmul	f4, f4, f1	# 1575
	addi	x9, x0, 2	# 1575
	mul		x9, x30, x9	# 1575
	addi	x9, x9, 60648	# 1575
	flw		f5, 0(x9)	# 1575
	fadd	f4, f4, f5	# 1575
	addi	x9, x0, 0	# 1576
	sw		x8, -20(x2)	# 1576
	sw		x15, -24(x2)	# 1576
	fsw		f4, -28(x2)	# 1576
	fsw		f3, -32(x2)	# 1576
	fsw		f2, -36(x2)	# 1576
	fsw		f1, -40(x2)	# 1576
	addi	x4, x9, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -44(x2)	# 1576
	addi	x2, x2, -48	# 1576
	lw		x31, 0(x29)	# 1576
	jalr	x1, x31, 0	# 1576
	addi	x2, x2, 48	# 1576
	lw		x1, -44(x2)	# 1576
	addi	x5, x0, 0	# 1576
	beq		x4, x5, beq_cont.32066	# 1576
	addi	x4, x0, 0	# 1578
	mul		x4, x30, x4	# 1578
	addi	x4, x4, 60548	# 1578
	flw		f1, -40(x2)	# 1578
	fsw		f1, 0(x4)	# 1578
	addi	x4, x0, 0	# 240
	mul		x4, x30, x4	# 240
	addi	x4, x4, 60552	# 240
	flw		f1, -36(x2)	# 240
	fsw		f1, 0(x4)	# 240
	addi	x4, x0, 1	# 241
	mul		x4, x30, x4	# 241
	addi	x4, x4, 60552	# 241
	flw		f1, -32(x2)	# 241
	fsw		f1, 0(x4)	# 241
	addi	x4, x0, 2	# 242
	mul		x4, x30, x4	# 242
	addi	x4, x4, 60552	# 242
	flw		f1, -28(x2)	# 242
	fsw		f1, 0(x4)	# 242
	addi	x4, x0, 0	# 1580
	mul		x4, x30, x4	# 1580
	addi	x4, x4, 60564	# 1580
	lw		x5, -24(x2)	# 1580
	sw		x5, 0(x4)	# 1580
	addi	x4, x0, 0	# 1581
	mul		x4, x30, x4	# 1581
	addi	x4, x4, 60544	# 1581
	lw		x5, -20(x2)	# 1581
	sw		x5, 0(x4)	# 1581
beq_cont.32066:
fle_cont.32064:
fle_cont.32062:
	lw		x4, -12(x2)	# 1587
	lw		x5, -16(x2)	# 1587
	add		x4, x5, x4	# 1587
	lw		x5, -4(x2)	# 1587
	lw		x6, 0(x2)	# 1587
	lw		x29, -8(x2)	# 1587
	lw		x31, 0(x29)	# 1587
	jalr	x0, x31, 0	# 1587
beq.32061:
	mul		x7, x30, x15	# 1591
	addi	x7, x7, 60048	# 1591
	lw		x7, 0(x7)	# 1591
	lw		x7, 24(x7)	# 373
	beq		x7, x12, beq.32067	# 1591
	add		x4, x4, x13	# 1592
	lw		x31, 0(x29)	# 1592
	jalr	x0, x31, 0	# 1592
beq.32067:
	jalr	x0, x1, 0	# 1593
beq.32018:
	jalr	x0, x1, 0	# 1560
solve_one_or_network_fast.2840.17747:
	lw		x7, 16(x29)	# 1599
	lw		x8, 12(x29)	# 1599
	lw		x9, 8(x29)	# 1599
	lw		x10, 4(x29)	# 1599
	mul		x11, x30, x4	# 1599
	add		x11, x5, x11	# 1599
	lw		x11, 0(x11)	# 1599
	beq		x11, x8, beq.32070	# 1600
	mul		x8, x30, x11	# 1601
	addi	x8, x8, 60332	# 1601
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
beq.32070:
	jalr	x0, x1, 0	# 1604
trace_or_matrix_fast.2844.17751:
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
	beq		x15, x10, beq.32072	# 1611
	addi	x10, x0, 99	# 1614
	sw		x6, 0(x2)	# 1614
	sw		x5, -4(x2)	# 1614
	sw		x29, -8(x2)	# 1614
	sw		x13, -12(x2)	# 1614
	sw		x4, -16(x2)	# 1614
	beq		x15, x10, beq.32074	# 1614
	mul		x10, x30, x15	# 1173
	addi	x10, x10, 60048	# 1173
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
	beq		x17, x18, beq.32076	# 1181
	addi	x8, x0, 2	# 1183
	beq		x17, x8, beq.32078	# 1183
	mul		x8, x30, x12	# 1155
	add		x8, x15, x8	# 1155
	flw		f5, 0(x8)	# 1155
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32080	# 120
	addi	x8, x0, 0	# 1157
	jal		x0, feq_cont.32079	# 120
feq_else.32080:
	mul		x8, x30, x13	# 1159
	add		x8, x15, x8	# 1159
	flw		f6, 0(x8)	# 1159
	fmul	f2, f6, f2	# 1159
	mul		x8, x30, x9	# 1159
	add		x8, x15, x8	# 1159
	flw		f6, 0(x8)	# 1159
	fmul	f3, f6, f3	# 1159
	fadd	f2, f2, f3	# 1159
	mul		x8, x30, x11	# 1159
	add		x8, x15, x8	# 1159
	flw		f3, 0(x8)	# 1159
	fmul	f3, f3, f4	# 1159
	fadd	f2, f2, f3	# 1159
	mul		x8, x30, x11	# 1160
	add		x8, x16, x8	# 1160
	flw		f3, 0(x8)	# 1160
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1161
	fsub	f3, f4, f3	# 1161
	fle		x31, f3, f1	# 121
	beq		x31, x0, fle_else.32082	# 121
	addi	x8, x0, 0	# 1168
	jal		x0, fle_cont.32081	# 121
fle_else.32082:
	lw		x8, 24(x10)	# 373
	beq		x8, x12, beq.32084	# 1163
	addi	x8, x0, 0	# 1164
	fsqrt	f1, f3	# 1164
	fadd	f1, f2, f1	# 1164
	addi	x9, x0, 4	# 1164
	mul		x9, x30, x9	# 1164
	add		x9, x15, x9	# 1164
	flw		f2, 0(x9)	# 1164
	fmul	f1, f1, f2	# 1164
	mul		x8, x30, x8	# 1164
	addi	x8, x8, 60540	# 1164
	fsw		f1, 0(x8)	# 1164
	jal		x0, beq_cont.32083	# 1163
beq.32084:
	addi	x8, x0, 0	# 1166
	fsqrt	f1, f3	# 1166
	fsub	f1, f2, f1	# 1166
	addi	x9, x0, 4	# 1166
	mul		x9, x30, x9	# 1166
	add		x9, x15, x9	# 1166
	flw		f2, 0(x9)	# 1166
	fmul	f1, f1, f2	# 1166
	mul		x8, x30, x8	# 1166
	addi	x8, x8, 60540	# 1166
	fsw		f1, 0(x8)	# 1166
beq_cont.32083:
	addi	x8, x0, 1	# 1167
fle_cont.32081:
feq_cont.32079:
	jal		x0, beq_cont.32077	# 1183
beq.32078:
	mul		x8, x30, x12	# 1146
	add		x8, x15, x8	# 1146
	flw		f2, 0(x8)	# 1146
	fle		x31, f1, f2	# 122
	beq		x31, x0, fle_else.32086	# 122
	addi	x8, x0, 0	# 1149
	jal		x0, fle_cont.32085	# 122
fle_else.32086:
	mul		x8, x30, x12	# 1147
	add		x8, x15, x8	# 1147
	flw		f1, 0(x8)	# 1147
	mul		x8, x30, x11	# 1147
	add		x8, x16, x8	# 1147
	flw		f2, 0(x8)	# 1147
	fmul	f1, f1, f2	# 1147
	mul		x8, x30, x12	# 1147
	addi	x8, x8, 60540	# 1147
	fsw		f1, 0(x8)	# 1147
	addi	x8, x0, 1	# 1148
fle_cont.32085:
beq_cont.32077:
	jal		x0, beq_cont.32075	# 1181
beq.32076:
	lw		x16, 0(x6)	# 639
	mul		x17, x30, x12	# 1064
	add		x17, x15, x17	# 1064
	flw		f5, 0(x17)	# 1064
	fsub	f5, f5, f2	# 1064
	mul		x17, x30, x13	# 1064
	add		x17, x15, x17	# 1064
	flw		f6, 0(x17)	# 1064
	fmul	f5, f5, f6	# 1064
	mul		x17, x30, x13	# 1066
	add		x17, x16, x17	# 1066
	flw		f6, 0(x17)	# 1066
	fmul	f6, f5, f6	# 1066
	fadd	f6, f6, f3	# 1066
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32087	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32087:
	lw		x17, 16(x10)	# 401
	mul		x18, x30, x13	# 406
	add		x17, x17, x18	# 406
	flw		f7, 0(x17)	# 406
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32089	# 125
	addi	x17, x0, 0	# 1070
	jal		x0, fle_cont.32088	# 125
fle_else.32089:
	mul		x17, x30, x9	# 1067
	add		x17, x16, x17	# 1067
	flw		f6, 0(x17)	# 1067
	fmul	f6, f5, f6	# 1067
	fadd	f6, f6, f4	# 1067
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32090	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32090:
	lw		x17, 16(x10)	# 411
	mul		x18, x30, x9	# 416
	add		x17, x17, x18	# 416
	flw		f7, 0(x17)	# 416
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32092	# 125
	addi	x17, x0, 0	# 1069
	jal		x0, fle_cont.32091	# 125
fle_else.32092:
	mul		x17, x30, x13	# 1068
	add		x17, x15, x17	# 1068
	flw		f6, 0(x17)	# 1068
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.32094	# 120
	addi	x17, x0, 0	# 1068
	jal		x0, feq_cont.32093	# 120
feq_else.32094:
	addi	x17, x0, 1	# 1068
feq_cont.32093:
fle_cont.32091:
fle_cont.32088:
	beq		x17, x12, beq.32096	# 1065
	mul		x8, x30, x12	# 1072
	addi	x8, x8, 60540	# 1072
	fsw		f5, 0(x8)	# 1072
	addi	x8, x0, 1	# 1072
	jal		x0, beq_cont.32095	# 1065
beq.32096:
	mul		x17, x30, x9	# 1073
	add		x17, x15, x17	# 1073
	flw		f5, 0(x17)	# 1073
	fsub	f5, f5, f3	# 1073
	mul		x17, x30, x11	# 1073
	add		x17, x15, x17	# 1073
	flw		f6, 0(x17)	# 1073
	fmul	f5, f5, f6	# 1073
	mul		x17, x30, x12	# 1075
	add		x17, x16, x17	# 1075
	flw		f6, 0(x17)	# 1075
	fmul	f7, f5, f6	# 1075
	fadd	f7, f7, f2	# 1075
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.32097	# 124
	fsub	f7, f0, f7	# 124
fle_cont.32097:
	lw		x17, 16(x10)	# 391
	mul		x18, x30, x12	# 396
	add		x17, x17, x18	# 396
	flw		f8, 0(x17)	# 396
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32099	# 125
	addi	x9, x0, 0	# 1079
	jal		x0, fle_cont.32098	# 125
fle_else.32099:
	mul		x17, x30, x9	# 1076
	add		x17, x16, x17	# 1076
	flw		f7, 0(x17)	# 1076
	fmul	f7, f5, f7	# 1076
	fadd	f7, f7, f4	# 1076
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.32100	# 124
	fsub	f7, f0, f7	# 124
fle_cont.32100:
	lw		x17, 16(x10)	# 411
	mul		x9, x30, x9	# 416
	add		x9, x17, x9	# 416
	flw		f8, 0(x9)	# 416
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32102	# 125
	addi	x9, x0, 0	# 1078
	jal		x0, fle_cont.32101	# 125
fle_else.32102:
	mul		x9, x30, x11	# 1077
	add		x9, x15, x9	# 1077
	flw		f7, 0(x9)	# 1077
	feq		x31, f7, f1	# 120
	beq		x31, x0, feq_else.32104	# 120
	addi	x9, x0, 0	# 1077
	jal		x0, feq_cont.32103	# 120
feq_else.32104:
	addi	x9, x0, 1	# 1077
feq_cont.32103:
fle_cont.32101:
fle_cont.32098:
	beq		x9, x12, beq.32106	# 1074
	mul		x8, x30, x12	# 1081
	addi	x8, x8, 60540	# 1081
	fsw		f5, 0(x8)	# 1081
	addi	x8, x0, 2	# 1081
	jal		x0, beq_cont.32105	# 1074
beq.32106:
	addi	x9, x0, 4	# 1082
	mul		x9, x30, x9	# 1082
	add		x9, x15, x9	# 1082
	flw		f5, 0(x9)	# 1082
	fsub	f4, f5, f4	# 1082
	mul		x9, x30, x8	# 1082
	add		x9, x15, x9	# 1082
	flw		f5, 0(x9)	# 1082
	fmul	f4, f4, f5	# 1082
	fmul	f5, f4, f6	# 1084
	fadd	f2, f5, f2	# 1084
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32107	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32107:
	lw		x9, 16(x10)	# 391
	mul		x11, x30, x12	# 396
	add		x9, x9, x11	# 396
	flw		f5, 0(x9)	# 396
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.32109	# 125
	addi	x8, x0, 0	# 1088
	jal		x0, fle_cont.32108	# 125
fle_else.32109:
	mul		x9, x30, x13	# 1085
	add		x9, x16, x9	# 1085
	flw		f2, 0(x9)	# 1085
	fmul	f2, f4, f2	# 1085
	fadd	f2, f2, f3	# 1085
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32110	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32110:
	lw		x9, 16(x10)	# 401
	mul		x10, x30, x13	# 406
	add		x9, x9, x10	# 406
	flw		f3, 0(x9)	# 406
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32112	# 125
	addi	x8, x0, 0	# 1087
	jal		x0, fle_cont.32111	# 125
fle_else.32112:
	mul		x8, x30, x8	# 1086
	add		x8, x15, x8	# 1086
	flw		f2, 0(x8)	# 1086
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.32114	# 120
	addi	x8, x0, 0	# 1086
	jal		x0, feq_cont.32113	# 120
feq_else.32114:
	addi	x8, x0, 1	# 1086
feq_cont.32113:
fle_cont.32111:
fle_cont.32108:
	beq		x8, x12, beq.32116	# 1083
	mul		x8, x30, x12	# 1090
	addi	x8, x8, 60540	# 1090
	fsw		f4, 0(x8)	# 1090
	addi	x8, x0, 3	# 1090
	jal		x0, beq_cont.32115	# 1083
beq.32116:
	addi	x8, x0, 0	# 1092
beq_cont.32115:
beq_cont.32105:
beq_cont.32095:
beq_cont.32075:
	addi	x9, x0, 0	# 1620
	beq		x8, x9, beq_cont.32117	# 1620
	addi	x8, x0, 0	# 1621
	mul		x8, x30, x8	# 1621
	addi	x8, x8, 60540	# 1621
	flw		f1, 0(x8)	# 1621
	addi	x8, x0, 0	# 1622
	mul		x8, x30, x8	# 1622
	addi	x8, x8, 60548	# 1622
	flw		f2, 0(x8)	# 1622
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32119	# 125
	jal		x0, fle_cont.32118	# 125
fle_else.32119:
	addi	x8, x0, 1	# 1623
	addi	x5, x14, 0
	addi	x4, x8, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1623
	addi	x2, x2, -24	# 1623
	lw		x31, 0(x29)	# 1623
	jalr	x1, x31, 0	# 1623
	addi	x2, x2, 24	# 1623
	lw		x1, -20(x2)	# 1623
fle_cont.32118:
beq_cont.32117:
	jal		x0, beq_cont.32073	# 1614
beq.32074:
	addi	x8, x0, 1	# 1615
	addi	x5, x14, 0
	addi	x4, x8, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1615
	addi	x2, x2, -24	# 1615
	lw		x31, 0(x29)	# 1615
	jalr	x1, x31, 0	# 1615
	addi	x2, x2, 24	# 1615
	lw		x1, -20(x2)	# 1615
beq_cont.32073:
	lw		x4, -12(x2)	# 1627
	lw		x5, -16(x2)	# 1627
	add		x4, x5, x4	# 1627
	lw		x5, -4(x2)	# 1627
	lw		x6, 0(x2)	# 1627
	lw		x29, -8(x2)	# 1627
	lw		x31, 0(x29)	# 1627
	jalr	x0, x31, 0	# 1627
beq.32072:
	jalr	x0, x1, 0	# 1612
trace_reflections.2866.17755:
	lw		x6, 28(x29)	# 1804
	lw		x7, 24(x29)	# 1804
	lw		x8, 20(x29)	# 1804
	lw		x9, 16(x29)	# 1804
	lw		x10, 12(x29)	# 1804
	flw		f3, 8(x29)	# 1804
	flw		f4, 4(x29)	# 1804
	ble		x9, x4, ble.32121	# 1804
	jalr	x0, x1, 0	# 1824
ble.32121:
	mul		x11, x30, x4	# 1805
	addi	x11, x11, 61016	# 1805
	lw		x11, 0(x11)	# 1805
	lw		x12, 4(x11)	# 661
	mul		x13, x30, x9	# 1634
	addi	x13, x13, 60548	# 1634
	fsw		f3, 0(x13)	# 1634
	mul		x13, x30, x9	# 1635
	addi	x13, x13, 60536	# 1635
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
	addi	x5, x5, 60548	# 1636
	flw		f1, 0(x5)	# 1636
	fadd	f2, f0, f23	# 1638
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32124	# 125
	addi	x5, x0, 0	# 1640
	jal		x0, fle_cont.32123	# 125
fle_else.32124:
	fadd	f2, f0, f25	# 1639
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32126	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32125	# 125
fle_else.32126:
	addi	x5, x0, 1	# 125
fle_cont.32125:
fle_cont.32123:
	beq		x5, x4, beq_cont.32127	# 1809
	addi	x5, x0, 0	# 1810
	mul		x5, x30, x5	# 1810
	addi	x5, x5, 60564	# 1810
	lw		x5, 0(x5)	# 1810
	addi	x6, x0, 4	# 1810
	mul		x5, x5, x6	# 1810
	addi	x6, x0, 0	# 1810
	mul		x6, x30, x6	# 1810
	addi	x6, x6, 60544	# 1810
	lw		x6, 0(x6)	# 1810
	add		x5, x5, x6	# 1810
	lw		x6, -40(x2)	# 655
	lw		x7, 0(x6)	# 655
	beq		x5, x7, beq.32129	# 1811
	jal		x0, beq_cont.32128	# 1811
beq.32129:
	addi	x5, x0, 0	# 1813
	addi	x7, x0, 0	# 1813
	mul		x7, x30, x7	# 1813
	addi	x7, x7, 60536	# 1813
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
	beq		x4, x5, beq.32131	# 1813
	jal		x0, beq_cont.32130	# 1813
beq.32131:
	lw		x4, -32(x2)	# 639
	lw		x5, 0(x4)	# 639
	addi	x6, x0, 0	# 292
	mul		x6, x30, x6	# 292
	addi	x6, x6, 60568	# 292
	flw		f1, 0(x6)	# 292
	addi	x6, x0, 0	# 292
	mul		x6, x30, x6	# 292
	add		x6, x5, x6	# 292
	flw		f2, 0(x6)	# 292
	fmul	f1, f1, f2	# 292
	addi	x6, x0, 1	# 292
	mul		x6, x30, x6	# 292
	addi	x6, x6, 60568	# 292
	flw		f2, 0(x6)	# 292
	addi	x6, x0, 1	# 292
	mul		x6, x30, x6	# 292
	add		x6, x5, x6	# 292
	flw		f3, 0(x6)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	addi	x6, x0, 2	# 292
	mul		x6, x30, x6	# 292
	addi	x6, x6, 60568	# 292
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
	beq		x31, x0, fle_else.32133	# 121
	jal		x0, fle_cont.32132	# 121
fle_else.32133:
	lw		x4, -44(x2)	# 302
	mul		x5, x30, x4	# 302
	addi	x5, x5, 60604	# 302
	flw		f5, 0(x5)	# 302
	mul		x5, x30, x4	# 302
	addi	x5, x5, 60580	# 302
	flw		f6, 0(x5)	# 302
	fmul	f6, f1, f6	# 302
	fadd	f5, f5, f6	# 302
	mul		x4, x30, x4	# 302
	addi	x4, x4, 60604	# 302
	fsw		f5, 0(x4)	# 302
	lw		x4, -16(x2)	# 303
	mul		x5, x30, x4	# 303
	addi	x5, x5, 60604	# 303
	flw		f5, 0(x5)	# 303
	mul		x5, x30, x4	# 303
	addi	x5, x5, 60580	# 303
	flw		f6, 0(x5)	# 303
	fmul	f6, f1, f6	# 303
	fadd	f5, f5, f6	# 303
	mul		x5, x30, x4	# 303
	addi	x5, x5, 60604	# 303
	fsw		f5, 0(x5)	# 303
	lw		x5, -12(x2)	# 304
	mul		x7, x30, x5	# 304
	addi	x7, x7, 60604	# 304
	flw		f5, 0(x7)	# 304
	mul		x7, x30, x5	# 304
	addi	x7, x7, 60580	# 304
	flw		f6, 0(x7)	# 304
	fmul	f1, f1, f6	# 304
	fadd	f1, f5, f1	# 304
	mul		x5, x30, x5	# 304
	addi	x5, x5, 60604	# 304
	fsw		f1, 0(x5)	# 304
fle_cont.32132:
	fle		x31, f2, f4	# 121
	beq		x31, x0, fle_else.32135	# 121
	jal		x0, fle_cont.32134	# 121
fle_else.32135:
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -8(x2)	# 1794
	fmul	f1, f1, f2	# 1794
	addi	x4, x0, 0	# 1795
	addi	x5, x0, 0	# 1795
	mul		x5, x30, x5	# 1795
	addi	x5, x5, 60604	# 1795
	flw		f4, 0(x5)	# 1795
	fadd	f4, f4, f1	# 1795
	mul		x4, x30, x4	# 1795
	addi	x4, x4, 60604	# 1795
	fsw		f4, 0(x4)	# 1795
	addi	x4, x0, 1	# 1796
	addi	x5, x0, 1	# 1796
	mul		x5, x30, x5	# 1796
	addi	x5, x5, 60604	# 1796
	flw		f4, 0(x5)	# 1796
	fadd	f4, f4, f1	# 1796
	mul		x4, x30, x4	# 1796
	addi	x4, x4, 60604	# 1796
	fsw		f4, 0(x4)	# 1796
	addi	x4, x0, 2	# 1797
	mul		x5, x30, x4	# 1797
	addi	x5, x5, 60604	# 1797
	flw		f4, 0(x5)	# 1797
	fadd	f1, f4, f1	# 1797
	mul		x4, x30, x4	# 1797
	addi	x4, x4, 60604	# 1797
	fsw		f1, 0(x4)	# 1797
fle_cont.32134:
beq_cont.32130:
beq_cont.32128:
beq_cont.32127:
	lw		x4, -16(x2)	# 1823
	lw		x5, -4(x2)	# 1823
	sub		x4, x5, x4	# 1823
	flw		f1, -28(x2)	# 1823
	flw		f2, -8(x2)	# 1823
	lw		x5, -24(x2)	# 1823
	lw		x29, 0(x2)	# 1823
	lw		x31, 0(x29)	# 1823
	jalr	x0, x31, 0	# 1823
trace_ray.2871.17760:
	lw		x7, 68(x29)	# 1832
	lw		x8, 64(x29)	# 1832
	lw		x9, 60(x29)	# 1832
	lw		x10, 56(x29)	# 1832
	lw		x11, 52(x29)	# 1832
	lw		x12, 48(x29)	# 1832
	lw		x13, 44(x29)	# 1832
	lw		x14, 40(x29)	# 1832
	lw		x15, 36(x29)	# 1832
	lw		x16, 32(x29)	# 1832
	lw		x17, 28(x29)	# 1832
	lw		x18, 24(x29)	# 1832
	lw		x19, 20(x29)	# 1832
	lw		x20, 16(x29)	# 1832
	flw		f3, 12(x29)	# 1832
	flw		f4, 8(x29)	# 1832
	flw		f5, 4(x29)	# 1832
	addi	x21, x0, 4	# 1832
	ble		x4, x21, ble.32136	# 1832
	jalr	x0, x1, 0	# 1913
ble.32136:
	lw		x22, 8(x6)	# 577
	mul		x23, x30, x19	# 1543
	addi	x23, x23, 60548	# 1543
	fsw		f3, 0(x23)	# 1543
	mul		x23, x30, x19	# 1544
	addi	x23, x23, 60536	# 1544
	lw		x23, 0(x23)	# 1544
	sw		x29, 0(x2)	# 1544
	fsw		f2, -4(x2)	# 1544
	sw		x7, -8(x2)	# 1544
	sw		x11, -12(x2)	# 1544
	sw		x10, -16(x2)	# 1544
	sw		x6, -20(x2)	# 1544
	sw		x21, -24(x2)	# 1544
	sw		x15, -28(x2)	# 1544
	sw		x14, -32(x2)	# 1544
	sw		x18, -36(x2)	# 1544
	sw		x9, -40(x2)	# 1544
	fsw		f4, -44(x2)	# 1544
	sw		x13, -48(x2)	# 1544
	sw		x12, -52(x2)	# 1544
	fsw		f1, -56(x2)	# 1544
	fsw		f5, -60(x2)	# 1544
	sw		x16, -64(x2)	# 1544
	sw		x20, -68(x2)	# 1544
	sw		x5, -72(x2)	# 1544
	sw		x17, -76(x2)	# 1544
	sw		x22, -80(x2)	# 1544
	sw		x4, -84(x2)	# 1544
	sw		x19, -88(x2)	# 1544
	addi	x6, x5, 0
	addi	x4, x19, 0
	addi	x29, x8, 0
	addi	x5, x23, 0
	sw		x1, -92(x2)	# 1544
	addi	x2, x2, -96	# 1544
	lw		x31, 0(x29)	# 1544
	jalr	x1, x31, 0	# 1544
	addi	x2, x2, 96	# 1544
	lw		x1, -92(x2)	# 1544
	lw		x4, -88(x2)	# 1545
	mul		x5, x30, x4	# 1545
	addi	x5, x5, 60548	# 1545
	flw		f1, 0(x5)	# 1545
	fadd	f2, f0, f23	# 1547
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32139	# 125
	addi	x5, x0, 0	# 1549
	jal		x0, fle_cont.32138	# 125
fle_else.32139:
	fadd	f2, f0, f25	# 1548
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32141	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32140	# 125
fle_else.32141:
	addi	x5, x0, 1	# 125
fle_cont.32140:
fle_cont.32138:
	beq		x5, x4, beq.32142	# 1834
	mul		x5, x30, x4	# 1836
	addi	x5, x5, 60564	# 1836
	lw		x5, 0(x5)	# 1836
	mul		x6, x30, x5	# 1837
	addi	x6, x6, 60048	# 1837
	lw		x6, 0(x6)	# 1837
	lw		x7, 8(x6)	# 363
	lw		x8, 28(x6)	# 461
	mul		x9, x30, x4	# 466
	add		x8, x8, x9	# 466
	flw		f1, 0(x8)	# 466
	flw		f2, -56(x2)	# 1839
	fmul	f1, f1, f2	# 1839
	lw		x8, 4(x6)	# 353
	lw		x9, -68(x2)	# 1693
	beq		x8, x9, beq.32144	# 1693
	addi	x10, x0, 2	# 1695
	beq		x8, x10, beq.32146	# 1695
	mul		x8, x30, x4	# 1670
	addi	x8, x8, 60552	# 1670
	flw		f3, 0(x8)	# 1670
	lw		x8, 20(x6)	# 431
	mul		x10, x30, x4	# 436
	add		x8, x8, x10	# 436
	flw		f4, 0(x8)	# 436
	fsub	f3, f3, f4	# 1670
	mul		x8, x30, x9	# 1671
	addi	x8, x8, 60552	# 1671
	flw		f4, 0(x8)	# 1671
	lw		x8, 20(x6)	# 441
	mul		x10, x30, x9	# 446
	add		x8, x8, x10	# 446
	flw		f5, 0(x8)	# 446
	fsub	f4, f4, f5	# 1671
	lw		x8, -64(x2)	# 1672
	mul		x10, x30, x8	# 1672
	addi	x10, x10, 60552	# 1672
	flw		f5, 0(x10)	# 1672
	lw		x10, 20(x6)	# 451
	mul		x11, x30, x8	# 456
	add		x10, x10, x11	# 456
	flw		f6, 0(x10)	# 456
	fsub	f5, f5, f6	# 1672
	lw		x10, 16(x6)	# 391
	mul		x11, x30, x4	# 396
	add		x10, x10, x11	# 396
	flw		f6, 0(x10)	# 396
	fmul	f6, f3, f6	# 1674
	lw		x10, 16(x6)	# 401
	mul		x11, x30, x9	# 406
	add		x10, x10, x11	# 406
	flw		f7, 0(x10)	# 406
	fmul	f7, f4, f7	# 1675
	lw		x10, 16(x6)	# 411
	mul		x11, x30, x8	# 416
	add		x10, x10, x11	# 416
	flw		f8, 0(x10)	# 416
	fmul	f8, f5, f8	# 1676
	lw		x10, 12(x6)	# 382
	beq		x10, x4, beq.32148	# 1678
	addi	x10, x0, 0	# 1683
	lw		x11, 36(x6)	# 531
	addi	x12, x0, 2	# 536
	mul		x12, x30, x12	# 536
	add		x11, x11, x12	# 536
	flw		f9, 0(x11)	# 536
	fmul	f9, f4, f9	# 1683
	lw		x11, 36(x6)	# 521
	addi	x12, x0, 1	# 526
	mul		x12, x30, x12	# 526
	add		x11, x11, x12	# 526
	flw		f10, 0(x11)	# 526
	fmul	f10, f5, f10	# 1683
	fadd	f9, f9, f10	# 1683
	fadd	f10, f0, f17	# 126
	fmul	f9, f9, f10	# 126
	fadd	f6, f6, f9	# 1683
	mul		x10, x30, x10	# 1683
	addi	x10, x10, 60568	# 1683
	fsw		f6, 0(x10)	# 1683
	addi	x10, x0, 1	# 1684
	lw		x11, 36(x6)	# 531
	addi	x12, x0, 2	# 536
	mul		x12, x30, x12	# 536
	add		x11, x11, x12	# 536
	flw		f6, 0(x11)	# 536
	fmul	f6, f3, f6	# 1684
	lw		x11, 36(x6)	# 511
	addi	x12, x0, 0	# 516
	mul		x12, x30, x12	# 516
	add		x11, x11, x12	# 516
	flw		f9, 0(x11)	# 516
	fmul	f5, f5, f9	# 1684
	fadd	f5, f6, f5	# 1684
	fadd	f6, f0, f17	# 126
	fmul	f5, f5, f6	# 126
	fadd	f5, f7, f5	# 1684
	mul		x10, x30, x10	# 1684
	addi	x10, x10, 60568	# 1684
	fsw		f5, 0(x10)	# 1684
	addi	x10, x0, 2	# 1685
	lw		x11, 36(x6)	# 521
	addi	x12, x0, 1	# 526
	mul		x12, x30, x12	# 526
	add		x11, x11, x12	# 526
	flw		f5, 0(x11)	# 526
	fmul	f3, f3, f5	# 1685
	lw		x11, 36(x6)	# 511
	addi	x12, x0, 0	# 516
	mul		x12, x30, x12	# 516
	add		x11, x11, x12	# 516
	flw		f5, 0(x11)	# 516
	fmul	f4, f4, f5	# 1685
	fadd	f3, f3, f4	# 1685
	fadd	f4, f0, f17	# 126
	fmul	f3, f3, f4	# 126
	fadd	f3, f8, f3	# 1685
	mul		x10, x30, x10	# 1685
	addi	x10, x10, 60568	# 1685
	fsw		f3, 0(x10)	# 1685
	jal		x0, beq_cont.32147	# 1678
beq.32148:
	addi	x10, x0, 0	# 1679
	mul		x10, x30, x10	# 1679
	addi	x10, x10, 60568	# 1679
	fsw		f6, 0(x10)	# 1679
	addi	x10, x0, 1	# 1680
	mul		x10, x30, x10	# 1680
	addi	x10, x10, 60568	# 1680
	fsw		f7, 0(x10)	# 1680
	addi	x10, x0, 2	# 1681
	mul		x10, x30, x10	# 1681
	addi	x10, x10, 60568	# 1681
	fsw		f8, 0(x10)	# 1681
beq_cont.32147:
	lw		x10, 24(x6)	# 373
	mul		x11, x30, x4	# 283
	addi	x11, x11, 60568	# 283
	flw		f3, 0(x11)	# 283
	fmul	f3, f3, f3	# 127
	mul		x11, x30, x9	# 283
	addi	x11, x11, 60568	# 283
	flw		f4, 0(x11)	# 283
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 283
	mul		x11, x30, x8	# 283
	addi	x11, x11, 60568	# 283
	flw		f4, 0(x11)	# 283
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 283
	fsqrt	f3, f3	# 283
	flw		f4, -60(x2)	# 120
	feq		x31, f3, f4	# 120
	beq		x31, x0, feq_else.32150	# 120
	fadd	f3, f0, f16	# 284
	jal		x0, feq_cont.32149	# 120
feq_else.32150:
	beq		x10, x4, beq.32152	# 284
	fadd	f5, f0, f18	# 284
	fdiv	f3, f5, f3	# 284
	jal		x0, beq_cont.32151	# 284
beq.32152:
	fadd	f5, f0, f16	# 284
	fdiv	f3, f5, f3	# 284
beq_cont.32151:
feq_cont.32149:
	mul		x10, x30, x4	# 285
	addi	x10, x10, 60568	# 285
	flw		f5, 0(x10)	# 285
	fmul	f5, f5, f3	# 285
	mul		x10, x30, x4	# 285
	addi	x10, x10, 60568	# 285
	fsw		f5, 0(x10)	# 285
	mul		x10, x30, x9	# 286
	addi	x10, x10, 60568	# 286
	flw		f5, 0(x10)	# 286
	fmul	f5, f5, f3	# 286
	mul		x10, x30, x9	# 286
	addi	x10, x10, 60568	# 286
	fsw		f5, 0(x10)	# 286
	mul		x10, x30, x8	# 287
	addi	x10, x10, 60568	# 287
	flw		f5, 0(x10)	# 287
	fmul	f3, f5, f3	# 287
	mul		x10, x30, x8	# 287
	addi	x10, x10, 60568	# 287
	fsw		f3, 0(x10)	# 287
	jal		x0, beq_cont.32145	# 1695
beq.32146:
	lw		x8, 16(x6)	# 391
	mul		x10, x30, x4	# 396
	add		x8, x8, x10	# 396
	flw		f3, 0(x8)	# 396
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x4	# 1663
	addi	x8, x8, 60568	# 1663
	fsw		f3, 0(x8)	# 1663
	lw		x8, 16(x6)	# 401
	mul		x10, x30, x9	# 406
	add		x8, x8, x10	# 406
	flw		f3, 0(x8)	# 406
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x9	# 1664
	addi	x8, x8, 60568	# 1664
	fsw		f3, 0(x8)	# 1664
	lw		x8, 16(x6)	# 411
	lw		x10, -64(x2)	# 416
	mul		x11, x30, x10	# 416
	add		x8, x8, x11	# 416
	flw		f3, 0(x8)	# 416
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x10	# 1665
	addi	x8, x8, 60568	# 1665
	fsw		f3, 0(x8)	# 1665
beq_cont.32145:
	jal		x0, beq_cont.32143	# 1693
beq.32144:
	mul		x8, x30, x4	# 1654
	addi	x8, x8, 60544	# 1654
	lw		x8, 0(x8)	# 1654
	fadd	f3, f0, f0	# 254
	mul		x10, x30, x4	# 247
	addi	x10, x10, 60568	# 247
	fsw		f3, 0(x10)	# 247
	mul		x10, x30, x9	# 248
	addi	x10, x10, 60568	# 248
	fsw		f3, 0(x10)	# 248
	lw		x10, -64(x2)	# 249
	mul		x11, x30, x10	# 249
	addi	x11, x11, 60568	# 249
	fsw		f3, 0(x11)	# 249
	sub		x11, x8, x9	# 1657
	sub		x8, x8, x9	# 1657
	mul		x8, x30, x8	# 1657
	lw		x12, -72(x2)	# 1657
	add		x8, x12, x8	# 1657
	flw		f3, 0(x8)	# 1657
	flw		f4, -60(x2)	# 120
	feq		x31, f3, f4	# 120
	beq		x31, x0, feq_else.32154	# 120
	fadd	f3, f0, f4	# 212
	jal		x0, feq_cont.32153	# 120
feq_else.32154:
	fle		x31, f3, f4	# 121
	beq		x31, x0, fle_else.32156	# 121
	fadd	f3, f0, f18	# 214
	jal		x0, fle_cont.32155	# 121
fle_else.32156:
	fadd	f3, f0, f16	# 213
fle_cont.32155:
feq_cont.32153:
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x11	# 1657
	addi	x8, x8, 60568	# 1657
	fsw		f3, 0(x8)	# 1657
beq_cont.32143:
	mul		x8, x30, x4	# 259
	addi	x8, x8, 60552	# 259
	flw		f3, 0(x8)	# 259
	mul		x8, x30, x4	# 259
	addi	x8, x8, 60636	# 259
	fsw		f3, 0(x8)	# 259
	mul		x8, x30, x9	# 260
	addi	x8, x8, 60552	# 260
	flw		f3, 0(x8)	# 260
	mul		x8, x30, x9	# 260
	addi	x8, x8, 60636	# 260
	fsw		f3, 0(x8)	# 260
	lw		x8, -64(x2)	# 261
	mul		x10, x30, x8	# 261
	addi	x10, x10, 60552	# 261
	flw		f3, 0(x10)	# 261
	mul		x10, x30, x8	# 261
	addi	x10, x10, 60636	# 261
	fsw		f3, 0(x10)	# 261
	lw		x10, 0(x6)	# 343
	lw		x11, 32(x6)	# 481
	mul		x12, x30, x4	# 486
	add		x11, x11, x12	# 486
	flw		f3, 0(x11)	# 486
	mul		x11, x30, x4	# 1710
	addi	x11, x11, 60580	# 1710
	fsw		f3, 0(x11)	# 1710
	lw		x11, 32(x6)	# 491
	mul		x12, x30, x9	# 496
	add		x11, x11, x12	# 496
	flw		f3, 0(x11)	# 496
	mul		x11, x30, x9	# 1711
	addi	x11, x11, 60580	# 1711
	fsw		f3, 0(x11)	# 1711
	lw		x11, 32(x6)	# 501
	mul		x12, x30, x8	# 506
	add		x11, x11, x12	# 506
	flw		f3, 0(x11)	# 506
	mul		x11, x30, x8	# 1712
	addi	x11, x11, 60580	# 1712
	fsw		f3, 0(x11)	# 1712
	sw		x7, -92(x2)	# 1713
	fsw		f1, -96(x2)	# 1713
	sw		x6, -100(x2)	# 1713
	sw		x5, -104(x2)	# 1713
	beq		x10, x9, beq.32158	# 1713
	beq		x10, x8, beq.32160	# 1731
	lw		x11, -36(x2)	# 1738
	beq		x10, x11, beq.32162	# 1738
	addi	x11, x0, 4	# 1749
	beq		x10, x11, beq.32164	# 1749
	jal		x0, beq_cont.32163	# 1749
beq.32164:
	mul		x10, x30, x4	# 1751
	addi	x10, x10, 60552	# 1751
	flw		f3, 0(x10)	# 1751
	lw		x10, 20(x6)	# 431
	mul		x11, x30, x4	# 436
	add		x10, x10, x11	# 436
	flw		f4, 0(x10)	# 436
	fsub	f3, f3, f4	# 1751
	lw		x10, 16(x6)	# 391
	mul		x11, x30, x4	# 396
	add		x10, x10, x11	# 396
	flw		f4, 0(x10)	# 396
	fsqrt	f4, f4	# 1751
	fmul	f3, f3, f4	# 1751
	mul		x10, x30, x8	# 1752
	addi	x10, x10, 60552	# 1752
	flw		f4, 0(x10)	# 1752
	lw		x10, 20(x6)	# 451
	mul		x11, x30, x8	# 456
	add		x10, x10, x11	# 456
	flw		f5, 0(x10)	# 456
	fsub	f4, f4, f5	# 1752
	lw		x10, 16(x6)	# 411
	mul		x11, x30, x8	# 416
	add		x10, x10, x11	# 416
	flw		f5, 0(x10)	# 416
	fsqrt	f5, f5	# 1752
	fmul	f4, f4, f5	# 1752
	fmul	f5, f3, f3	# 127
	fmul	f6, f4, f4	# 127
	fadd	f5, f5, f6	# 1753
	flw		f6, -60(x2)	# 124
	fle		x31, f3, f6	# 124
	beq		x31, x0, fle_else.32166	# 124
	fsub	f7, f0, f3	# 124
	jal		x0, fle_cont.32165	# 124
fle_else.32166:
	fadd	f7, f0, f3	# 124
fle_cont.32165:
	lui		x10, %hi(l.27086)	# 1755
	ori		x10, x0, %lo(l.27086)	# 1755
	flw		f8, 0(x10)	# 1755
	fsw		f8, -108(x2)	# 125
	fsw		f5, -112(x2)	# 125
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32168	# 125
	fdiv	f3, f4, f3	# 1758
	fle		x31, f3, f6	# 124
	beq		x31, x0, fle_cont.32169	# 124
	fsub	f3, f0, f3	# 124
fle_cont.32169:
	lw		x29, -28(x2)	# 1760
	fadd	f1, f0, f3
	sw		x1, -116(x2)	# 1760
	addi	x2, x2, -120	# 1760
	lw		x31, 0(x29)	# 1760
	jalr	x1, x31, 0	# 1760
	addi	x2, x2, 120	# 1760
	lw		x1, -116(x2)	# 1760
	fadd	f2, f0, f21	# 1760
	fmul	f1, f1, f2	# 1760
	fadd	f2, f0, f19	# 1760
	fdiv	f1, f1, f2	# 1760
	jal		x0, fle_cont.32167	# 125
fle_else.32168:
	fadd	f1, f0, f20	# 1756
fle_cont.32167:
	flw		f2, -60(x2)	# 137
	fsw		f1, -116(x2)	# 137
	fle		x31, f2, f1	# 137
	beq		x31, x0, fle_else.32171	# 137
	lw		x29, -52(x2)	# 137
	sw		x1, -120(x2)	# 137
	addi	x2, x2, -124	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 124	# 137
	lw		x1, -120(x2)	# 137
	lw		x29, -48(x2)	# 137
	sw		x1, -120(x2)	# 137
	addi	x2, x2, -124	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 124	# 137
	lw		x1, -120(x2)	# 137
	jal		x0, fle_cont.32170	# 137
fle_else.32171:
	lw		x29, -52(x2)	# 138
	sw		x1, -120(x2)	# 138
	addi	x2, x2, -124	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 124	# 138
	lw		x1, -120(x2)	# 138
	lw		x5, -68(x2)	# 138
	sub		x4, x4, x5	# 138
	lw		x29, -48(x2)	# 138
	sw		x1, -120(x2)	# 138
	addi	x2, x2, -124	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 124	# 138
	lw		x1, -120(x2)	# 138
fle_cont.32170:
	flw		f2, -116(x2)	# 1762
	fsub	f1, f2, f1	# 1762
	lw		x4, -68(x2)	# 1764
	mul		x5, x30, x4	# 1764
	addi	x5, x5, 60552	# 1764
	flw		f2, 0(x5)	# 1764
	lw		x5, -100(x2)	# 441
	lw		x6, 20(x5)	# 441
	mul		x7, x30, x4	# 446
	add		x6, x6, x7	# 446
	flw		f3, 0(x6)	# 446
	fsub	f2, f2, f3	# 1764
	lw		x6, 16(x5)	# 401
	mul		x7, x30, x4	# 406
	add		x6, x6, x7	# 406
	flw		f3, 0(x6)	# 406
	fsqrt	f3, f3	# 1764
	fmul	f2, f2, f3	# 1764
	flw		f3, -60(x2)	# 124
	flw		f4, -112(x2)	# 124
	fle		x31, f4, f3	# 124
	beq		x31, x0, fle_else.32173	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.32172	# 124
fle_else.32173:
	fadd	f5, f0, f4	# 124
fle_cont.32172:
	flw		f6, -108(x2)	# 125
	fsw		f1, -120(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32175	# 125
	fdiv	f2, f2, f4	# 1769
	fle		x31, f2, f3	# 124
	beq		x31, x0, fle_cont.32176	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32176:
	lw		x29, -28(x2)	# 1770
	fadd	f1, f0, f2
	sw		x1, -124(x2)	# 1770
	addi	x2, x2, -128	# 1770
	lw		x31, 0(x29)	# 1770
	jalr	x1, x31, 0	# 1770
	addi	x2, x2, 128	# 1770
	lw		x1, -124(x2)	# 1770
	fadd	f2, f0, f21	# 1770
	fmul	f1, f1, f2	# 1770
	fadd	f2, f0, f19	# 1770
	fdiv	f1, f1, f2	# 1770
	jal		x0, fle_cont.32174	# 125
fle_else.32175:
	fadd	f1, f0, f20	# 1767
fle_cont.32174:
	flw		f2, -60(x2)	# 137
	fsw		f1, -124(x2)	# 137
	fle		x31, f2, f1	# 137
	beq		x31, x0, fle_else.32178	# 137
	lw		x29, -52(x2)	# 137
	sw		x1, -128(x2)	# 137
	addi	x2, x2, -132	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 132	# 137
	lw		x1, -128(x2)	# 137
	lw		x29, -48(x2)	# 137
	sw		x1, -128(x2)	# 137
	addi	x2, x2, -132	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 132	# 137
	lw		x1, -128(x2)	# 137
	jal		x0, fle_cont.32177	# 137
fle_else.32178:
	lw		x29, -52(x2)	# 138
	sw		x1, -128(x2)	# 138
	addi	x2, x2, -132	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 132	# 138
	lw		x1, -128(x2)	# 138
	lw		x5, -68(x2)	# 138
	sub		x4, x4, x5	# 138
	lw		x29, -48(x2)	# 138
	sw		x1, -128(x2)	# 138
	addi	x2, x2, -132	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 132	# 138
	lw		x1, -128(x2)	# 138
fle_cont.32177:
	flw		f2, -124(x2)	# 1772
	fsub	f1, f2, f1	# 1772
	lui		x4, %hi(l.27103)	# 1773
	ori		x4, x0, %lo(l.27103)	# 1773
	flw		f2, 0(x4)	# 1773
	fadd	f3, f0, f17	# 1773
	flw		f4, -120(x2)	# 1773
	fsub	f4, f3, f4	# 1773
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1773
	fsub	f1, f3, f1	# 1773
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1773
	flw		f2, -60(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.32180	# 122
	jal		x0, fle_cont.32179	# 122
fle_else.32180:
	fadd	f1, f0, f2	# 1774
fle_cont.32179:
	flw		f3, -44(x2)	# 1775
	fmul	f1, f3, f1	# 1775
	fadd	f3, f0, f27	# 1775
	fdiv	f1, f1, f3	# 1775
	lw		x4, -64(x2)	# 1775
	mul		x5, x30, x4	# 1775
	addi	x5, x5, 60580	# 1775
	fsw		f1, 0(x5)	# 1775
beq_cont.32163:
	jal		x0, beq_cont.32161	# 1738
beq.32162:
	mul		x10, x30, x4	# 1741
	addi	x10, x10, 60552	# 1741
	flw		f3, 0(x10)	# 1741
	lw		x10, 20(x6)	# 431
	mul		x11, x30, x4	# 436
	add		x10, x10, x11	# 436
	flw		f4, 0(x10)	# 436
	fsub	f3, f3, f4	# 1741
	mul		x10, x30, x8	# 1742
	addi	x10, x10, 60552	# 1742
	flw		f4, 0(x10)	# 1742
	lw		x10, 20(x6)	# 451
	mul		x11, x30, x8	# 456
	add		x10, x10, x11	# 456
	flw		f5, 0(x10)	# 456
	fsub	f4, f4, f5	# 1742
	fmul	f3, f3, f3	# 127
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 1743
	fsqrt	f3, f3	# 1743
	fadd	f4, f0, f22	# 1743
	fdiv	f3, f3, f4	# 1743
	flw		f4, -60(x2)	# 137
	fsw		f3, -128(x2)	# 137
	fle		x31, f4, f3	# 137
	beq		x31, x0, fle_else.32182	# 137
	lw		x29, -52(x2)	# 137
	fadd	f1, f0, f3
	sw		x1, -132(x2)	# 137
	addi	x2, x2, -136	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 136	# 137
	lw		x1, -132(x2)	# 137
	lw		x29, -48(x2)	# 137
	sw		x1, -132(x2)	# 137
	addi	x2, x2, -136	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 136	# 137
	lw		x1, -132(x2)	# 137
	jal		x0, fle_cont.32181	# 137
fle_else.32182:
	lw		x29, -52(x2)	# 138
	fadd	f1, f0, f3
	sw		x1, -132(x2)	# 138
	addi	x2, x2, -136	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 136	# 138
	lw		x1, -132(x2)	# 138
	lw		x5, -68(x2)	# 138
	sub		x4, x4, x5	# 138
	lw		x29, -48(x2)	# 138
	sw		x1, -132(x2)	# 138
	addi	x2, x2, -136	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 136	# 138
	lw		x1, -132(x2)	# 138
fle_cont.32181:
	flw		f2, -128(x2)	# 1744
	fsub	f1, f2, f1	# 1744
	fadd	f2, f0, f19	# 1744
	fmul	f1, f1, f2	# 1744
	lw		x29, -32(x2)	# 1745
	sw		x1, -132(x2)	# 1745
	addi	x2, x2, -136	# 1745
	lw		x31, 0(x29)	# 1745
	jalr	x1, x31, 0	# 1745
	addi	x2, x2, 136	# 1745
	lw		x1, -132(x2)	# 1745
	fmul	f1, f1, f1	# 127
	flw		f2, -44(x2)	# 1746
	fmul	f3, f1, f2	# 1746
	lw		x4, -68(x2)	# 1746
	mul		x5, x30, x4	# 1746
	addi	x5, x5, 60580	# 1746
	fsw		f3, 0(x5)	# 1746
	fadd	f3, f0, f16	# 1747
	fsub	f1, f3, f1	# 1747
	fmul	f1, f1, f2	# 1747
	lw		x5, -64(x2)	# 1747
	mul		x6, x30, x5	# 1747
	addi	x6, x6, 60580	# 1747
	fsw		f1, 0(x6)	# 1747
beq_cont.32161:
	jal		x0, beq_cont.32159	# 1731
beq.32160:
	mul		x10, x30, x9	# 1734
	addi	x10, x10, 60552	# 1734
	flw		f3, 0(x10)	# 1734
	fadd	f4, f0, f26	# 1734
	fmul	f3, f3, f4	# 1734
	lw		x29, -40(x2)	# 1734
	fadd	f1, f0, f3
	sw		x1, -132(x2)	# 1734
	addi	x2, x2, -136	# 1734
	lw		x31, 0(x29)	# 1734
	jalr	x1, x31, 0	# 1734
	addi	x2, x2, 136	# 1734
	lw		x1, -132(x2)	# 1734
	fmul	f1, f1, f1	# 127
	flw		f2, -44(x2)	# 1735
	fmul	f3, f2, f1	# 1735
	lw		x4, -88(x2)	# 1735
	mul		x5, x30, x4	# 1735
	addi	x5, x5, 60580	# 1735
	fsw		f3, 0(x5)	# 1735
	fadd	f3, f0, f16	# 1736
	fsub	f1, f3, f1	# 1736
	fmul	f1, f2, f1	# 1736
	lw		x5, -68(x2)	# 1736
	mul		x6, x30, x5	# 1736
	addi	x6, x6, 60580	# 1736
	fsw		f1, 0(x6)	# 1736
beq_cont.32159:
	jal		x0, beq_cont.32157	# 1713
beq.32158:
	mul		x10, x30, x4	# 1716
	addi	x10, x10, 60552	# 1716
	flw		f3, 0(x10)	# 1716
	lw		x10, 20(x6)	# 431
	mul		x11, x30, x4	# 436
	add		x10, x10, x11	# 436
	flw		f4, 0(x10)	# 436
	fsub	f3, f3, f4	# 1716
	fadd	f4, f0, f28	# 1718
	fmul	f5, f3, f4	# 1718
	flw		f6, -60(x2)	# 137
	fsw		f4, -132(x2)	# 137
	fsw		f3, -136(x2)	# 137
	fle		x31, f6, f5	# 137
	beq		x31, x0, fle_else.32184	# 137
	lw		x29, -52(x2)	# 137
	fadd	f1, f0, f5
	sw		x1, -140(x2)	# 137
	addi	x2, x2, -144	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 144	# 137
	lw		x1, -140(x2)	# 137
	lw		x29, -48(x2)	# 137
	sw		x1, -140(x2)	# 137
	addi	x2, x2, -144	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 144	# 137
	lw		x1, -140(x2)	# 137
	jal		x0, fle_cont.32183	# 137
fle_else.32184:
	lw		x29, -52(x2)	# 138
	fadd	f1, f0, f5
	sw		x1, -140(x2)	# 138
	addi	x2, x2, -144	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 144	# 138
	lw		x1, -140(x2)	# 138
	lw		x5, -68(x2)	# 138
	sub		x4, x4, x5	# 138
	lw		x29, -48(x2)	# 138
	sw		x1, -140(x2)	# 138
	addi	x2, x2, -144	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 144	# 138
	lw		x1, -140(x2)	# 138
fle_cont.32183:
	fadd	f2, f0, f29	# 1718
	fmul	f1, f1, f2	# 1718
	flw		f3, -136(x2)	# 1719
	fsub	f1, f3, f1	# 1719
	fadd	f3, f0, f22	# 1719
	lw		x4, -64(x2)	# 1721
	mul		x5, x30, x4	# 1721
	addi	x5, x5, 60552	# 1721
	flw		f4, 0(x5)	# 1721
	lw		x5, -100(x2)	# 451
	lw		x6, 20(x5)	# 451
	mul		x7, x30, x4	# 456
	add		x6, x6, x7	# 456
	flw		f5, 0(x6)	# 456
	fsub	f4, f4, f5	# 1721
	flw		f5, -132(x2)	# 1723
	fmul	f5, f4, f5	# 1723
	flw		f6, -60(x2)	# 137
	fsw		f1, -140(x2)	# 137
	fsw		f3, -144(x2)	# 137
	fsw		f4, -148(x2)	# 137
	fsw		f2, -152(x2)	# 137
	fle		x31, f6, f5	# 137
	beq		x31, x0, fle_else.32186	# 137
	lw		x29, -52(x2)	# 137
	fadd	f1, f0, f5
	sw		x1, -156(x2)	# 137
	addi	x2, x2, -160	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 160	# 137
	lw		x1, -156(x2)	# 137
	lw		x29, -48(x2)	# 137
	sw		x1, -156(x2)	# 137
	addi	x2, x2, -160	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 160	# 137
	lw		x1, -156(x2)	# 137
	jal		x0, fle_cont.32185	# 137
fle_else.32186:
	lw		x29, -52(x2)	# 138
	fadd	f1, f0, f5
	sw		x1, -156(x2)	# 138
	addi	x2, x2, -160	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 160	# 138
	lw		x1, -156(x2)	# 138
	lw		x5, -68(x2)	# 138
	sub		x4, x4, x5	# 138
	lw		x29, -48(x2)	# 138
	sw		x1, -156(x2)	# 138
	addi	x2, x2, -160	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 160	# 138
	lw		x1, -156(x2)	# 138
fle_cont.32185:
	flw		f2, -152(x2)	# 1723
	fmul	f1, f1, f2	# 1723
	flw		f2, -148(x2)	# 1724
	fsub	f1, f2, f1	# 1724
	flw		f2, -140(x2)	# 125
	flw		f3, -144(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32188	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32190	# 125
	flw		f1, -44(x2)	# 1729
	jal		x0, fle_cont.32189	# 125
fle_else.32190:
	flw		f1, -60(x2)	# 1729
fle_cont.32189:
	jal		x0, fle_cont.32187	# 125
fle_else.32188:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32192	# 125
	flw		f1, -60(x2)	# 1728
	jal		x0, fle_cont.32191	# 125
fle_else.32192:
	flw		f1, -44(x2)	# 1728
fle_cont.32191:
fle_cont.32187:
	lw		x4, -68(x2)	# 1726
	mul		x5, x30, x4	# 1726
	addi	x5, x5, 60580	# 1726
	fsw		f1, 0(x5)	# 1726
beq_cont.32157:
	lw		x4, -24(x2)	# 1846
	lw		x5, -104(x2)	# 1846
	mul		x5, x5, x4	# 1846
	lw		x6, -88(x2)	# 1846
	mul		x7, x30, x6	# 1846
	addi	x7, x7, 60544	# 1846
	lw		x7, 0(x7)	# 1846
	add		x5, x5, x7	# 1846
	lw		x7, -84(x2)	# 1846
	mul		x8, x30, x7	# 1846
	lw		x9, -80(x2)	# 1846
	add		x8, x9, x8	# 1846
	sw		x5, 0(x8)	# 1846
	lw		x5, -20(x2)	# 569
	lw		x8, 4(x5)	# 569
	mul		x10, x30, x7	# 1848
	add		x8, x8, x10	# 1848
	lw		x8, 0(x8)	# 1848
	mul		x10, x30, x6	# 259
	addi	x10, x10, 60552	# 259
	flw		f1, 0(x10)	# 259
	mul		x10, x30, x6	# 259
	add		x10, x8, x10	# 259
	fsw		f1, 0(x10)	# 259
	lw		x10, -68(x2)	# 260
	mul		x11, x30, x10	# 260
	addi	x11, x11, 60552	# 260
	flw		f1, 0(x11)	# 260
	mul		x11, x30, x10	# 260
	add		x11, x8, x11	# 260
	fsw		f1, 0(x11)	# 260
	lw		x11, -64(x2)	# 261
	mul		x12, x30, x11	# 261
	addi	x12, x12, 60552	# 261
	flw		f1, 0(x12)	# 261
	mul		x12, x30, x11	# 261
	add		x8, x8, x12	# 261
	fsw		f1, 0(x8)	# 261
	lw		x8, 12(x5)	# 584
	lw		x12, -100(x2)	# 461
	lw		x13, 28(x12)	# 461
	mul		x14, x30, x6	# 466
	add		x13, x13, x14	# 466
	flw		f1, 0(x13)	# 466
	fadd	f2, f0, f17	# 1852
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32194	# 125
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
	addi	x15, x15, 60580	# 259
	flw		f1, 0(x15)	# 259
	mul		x14, x30, x14	# 259
	add		x14, x13, x14	# 259
	fsw		f1, 0(x14)	# 259
	addi	x14, x0, 1	# 260
	addi	x15, x0, 1	# 260
	mul		x15, x30, x15	# 260
	addi	x15, x15, 60580	# 260
	flw		f1, 0(x15)	# 260
	mul		x14, x30, x14	# 260
	add		x14, x13, x14	# 260
	fsw		f1, 0(x14)	# 260
	addi	x14, x0, 2	# 261
	mul		x15, x30, x14	# 261
	addi	x15, x15, 60580	# 261
	flw		f1, 0(x15)	# 261
	mul		x14, x30, x14	# 261
	add		x13, x13, x14	# 261
	fsw		f1, 0(x13)	# 261
	mul		x13, x30, x7	# 1858
	add		x8, x8, x13	# 1858
	lw		x8, 0(x8)	# 1858
	lui		x13, %hi(l.27191)	# 1858
	ori		x13, x0, %lo(l.27191)	# 1858
	flw		f1, 0(x13)	# 1858
	flw		f2, -96(x2)	# 1858
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
	addi	x14, x14, 60568	# 259
	flw		f1, 0(x14)	# 259
	mul		x13, x30, x13	# 259
	add		x13, x8, x13	# 259
	fsw		f1, 0(x13)	# 259
	addi	x13, x0, 1	# 260
	addi	x14, x0, 1	# 260
	mul		x14, x30, x14	# 260
	addi	x14, x14, 60568	# 260
	flw		f1, 0(x14)	# 260
	mul		x13, x30, x13	# 260
	add		x13, x8, x13	# 260
	fsw		f1, 0(x13)	# 260
	addi	x13, x0, 2	# 261
	mul		x14, x30, x13	# 261
	addi	x14, x14, 60568	# 261
	flw		f1, 0(x14)	# 261
	mul		x13, x30, x13	# 261
	add		x8, x8, x13	# 261
	fsw		f1, 0(x8)	# 261
	jal		x0, fle_cont.32193	# 125
fle_else.32194:
	addi	x13, x0, 0	# 1853
	mul		x14, x30, x7	# 1853
	add		x8, x8, x14	# 1853
	sw		x13, 0(x8)	# 1853
fle_cont.32193:
	lui		x8, %hi(l.27219)	# 1863
	ori		x8, x0, %lo(l.27219)	# 1863
	flw		f1, 0(x8)	# 1863
	mul		x8, x30, x6	# 292
	lw		x13, -72(x2)	# 292
	add		x8, x13, x8	# 292
	flw		f2, 0(x8)	# 292
	mul		x8, x30, x6	# 292
	addi	x8, x8, 60568	# 292
	flw		f3, 0(x8)	# 292
	fmul	f4, f2, f3	# 292
	mul		x8, x30, x10	# 292
	add		x8, x13, x8	# 292
	flw		f5, 0(x8)	# 292
	mul		x8, x30, x10	# 292
	addi	x8, x8, 60568	# 292
	flw		f6, 0(x8)	# 292
	fmul	f5, f5, f6	# 292
	fadd	f4, f4, f5	# 292
	mul		x8, x30, x11	# 292
	add		x8, x13, x8	# 292
	flw		f5, 0(x8)	# 292
	mul		x8, x30, x11	# 292
	addi	x8, x8, 60568	# 292
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
	addi	x8, x8, 60568	# 303
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
	addi	x8, x8, 60568	# 304
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
	flw		f2, -56(x2)	# 1867
	fmul	f1, f2, f1	# 1867
	mul		x8, x30, x6	# 1870
	addi	x8, x8, 60536	# 1870
	lw		x8, 0(x8)	# 1870
	lw		x29, -16(x2)	# 1870
	fsw		f1, -156(x2)	# 1870
	addi	x5, x8, 0
	addi	x4, x6, 0
	sw		x1, -160(x2)	# 1870
	addi	x2, x2, -164	# 1870
	lw		x31, 0(x29)	# 1870
	jalr	x1, x31, 0	# 1870
	addi	x2, x2, 164	# 1870
	lw		x1, -160(x2)	# 1870
	lw		x5, -88(x2)	# 1870
	beq		x4, x5, beq.32196	# 1870
	jal		x0, beq_cont.32195	# 1870
beq.32196:
	addi	x4, x0, 0	# 292
	mul		x4, x30, x4	# 292
	addi	x4, x4, 60568	# 292
	flw		f1, 0(x4)	# 292
	addi	x4, x0, 0	# 292
	mul		x4, x30, x4	# 292
	addi	x4, x4, 60312	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	addi	x4, x0, 1	# 292
	mul		x4, x30, x4	# 292
	addi	x4, x4, 60568	# 292
	flw		f2, 0(x4)	# 292
	addi	x4, x0, 1	# 292
	mul		x4, x30, x4	# 292
	addi	x4, x4, 60312	# 292
	flw		f3, 0(x4)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	addi	x4, x0, 2	# 292
	mul		x4, x30, x4	# 292
	addi	x4, x4, 60568	# 292
	flw		f2, 0(x4)	# 292
	addi	x4, x0, 2	# 292
	mul		x4, x30, x4	# 292
	addi	x4, x4, 60312	# 292
	flw		f3, 0(x4)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	fsub	f1, f0, f1	# 123
	flw		f2, -96(x2)	# 1871
	fmul	f1, f1, f2	# 1871
	addi	x4, x0, 0	# 292
	mul		x4, x30, x4	# 292
	lw		x6, -72(x2)	# 292
	add		x4, x6, x4	# 292
	flw		f3, 0(x4)	# 292
	addi	x4, x0, 0	# 292
	mul		x4, x30, x4	# 292
	addi	x4, x4, 60312	# 292
	flw		f4, 0(x4)	# 292
	fmul	f3, f3, f4	# 292
	addi	x4, x0, 1	# 292
	mul		x4, x30, x4	# 292
	add		x4, x6, x4	# 292
	flw		f4, 0(x4)	# 292
	addi	x4, x0, 1	# 292
	mul		x4, x30, x4	# 292
	addi	x4, x4, 60312	# 292
	flw		f5, 0(x4)	# 292
	fmul	f4, f4, f5	# 292
	fadd	f3, f3, f4	# 292
	addi	x4, x0, 2	# 292
	mul		x4, x30, x4	# 292
	add		x4, x6, x4	# 292
	flw		f4, 0(x4)	# 292
	addi	x4, x0, 2	# 292
	mul		x4, x30, x4	# 292
	addi	x4, x4, 60312	# 292
	flw		f5, 0(x4)	# 292
	fmul	f4, f4, f5	# 292
	fadd	f3, f3, f4	# 292
	fsub	f3, f0, f3	# 123
	flw		f4, -60(x2)	# 121
	fle		x31, f1, f4	# 121
	beq		x31, x0, fle_else.32198	# 121
	jal		x0, fle_cont.32197	# 121
fle_else.32198:
	mul		x4, x30, x5	# 302
	addi	x4, x4, 60604	# 302
	flw		f5, 0(x4)	# 302
	mul		x4, x30, x5	# 302
	addi	x4, x4, 60580	# 302
	flw		f6, 0(x4)	# 302
	fmul	f6, f1, f6	# 302
	fadd	f5, f5, f6	# 302
	mul		x4, x30, x5	# 302
	addi	x4, x4, 60604	# 302
	fsw		f5, 0(x4)	# 302
	lw		x4, -68(x2)	# 303
	mul		x7, x30, x4	# 303
	addi	x7, x7, 60604	# 303
	flw		f5, 0(x7)	# 303
	mul		x7, x30, x4	# 303
	addi	x7, x7, 60580	# 303
	flw		f6, 0(x7)	# 303
	fmul	f6, f1, f6	# 303
	fadd	f5, f5, f6	# 303
	mul		x7, x30, x4	# 303
	addi	x7, x7, 60604	# 303
	fsw		f5, 0(x7)	# 303
	lw		x7, -64(x2)	# 304
	mul		x8, x30, x7	# 304
	addi	x8, x8, 60604	# 304
	flw		f5, 0(x8)	# 304
	mul		x8, x30, x7	# 304
	addi	x8, x8, 60580	# 304
	flw		f6, 0(x8)	# 304
	fmul	f1, f1, f6	# 304
	fadd	f1, f5, f1	# 304
	mul		x8, x30, x7	# 304
	addi	x8, x8, 60604	# 304
	fsw		f1, 0(x8)	# 304
fle_cont.32197:
	fle		x31, f3, f4	# 121
	beq		x31, x0, fle_else.32200	# 121
	jal		x0, fle_cont.32199	# 121
fle_else.32200:
	fmul	f1, f3, f3	# 127
	fmul	f1, f1, f1	# 127
	flw		f3, -156(x2)	# 1794
	fmul	f1, f1, f3	# 1794
	addi	x4, x0, 0	# 1795
	addi	x7, x0, 0	# 1795
	mul		x7, x30, x7	# 1795
	addi	x7, x7, 60604	# 1795
	flw		f4, 0(x7)	# 1795
	fadd	f4, f4, f1	# 1795
	mul		x4, x30, x4	# 1795
	addi	x4, x4, 60604	# 1795
	fsw		f4, 0(x4)	# 1795
	addi	x4, x0, 1	# 1796
	addi	x7, x0, 1	# 1796
	mul		x7, x30, x7	# 1796
	addi	x7, x7, 60604	# 1796
	flw		f4, 0(x7)	# 1796
	fadd	f4, f4, f1	# 1796
	mul		x4, x30, x4	# 1796
	addi	x4, x4, 60604	# 1796
	fsw		f4, 0(x4)	# 1796
	addi	x4, x0, 2	# 1797
	mul		x7, x30, x4	# 1797
	addi	x7, x7, 60604	# 1797
	flw		f4, 0(x7)	# 1797
	fadd	f1, f4, f1	# 1797
	mul		x4, x30, x4	# 1797
	addi	x4, x4, 60604	# 1797
	fsw		f1, 0(x4)	# 1797
fle_cont.32199:
beq_cont.32195:
	mul		x4, x30, x5	# 259
	addi	x4, x4, 60552	# 259
	flw		f1, 0(x4)	# 259
	mul		x4, x30, x5	# 259
	addi	x4, x4, 60648	# 259
	fsw		f1, 0(x4)	# 259
	lw		x4, -68(x2)	# 260
	mul		x6, x30, x4	# 260
	addi	x6, x6, 60552	# 260
	flw		f1, 0(x6)	# 260
	mul		x6, x30, x4	# 260
	addi	x6, x6, 60648	# 260
	fsw		f1, 0(x6)	# 260
	lw		x6, -64(x2)	# 261
	mul		x7, x30, x6	# 261
	addi	x7, x7, 60552	# 261
	flw		f1, 0(x7)	# 261
	mul		x7, x30, x6	# 261
	addi	x7, x7, 60648	# 261
	fsw		f1, 0(x7)	# 261
	mul		x7, x30, x5	# 1315
	addi	x7, x7, 60000	# 1315
	lw		x7, 0(x7)	# 1315
	sub		x7, x7, x4	# 1315
	addi	x8, x0, 60552	# 1315
	lw		x29, -12(x2)	# 1315
	addi	x5, x7, 0
	addi	x4, x8, 0
	sw		x1, -160(x2)	# 1315
	addi	x2, x2, -164	# 1315
	lw		x31, 0(x29)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 164	# 1315
	lw		x1, -160(x2)	# 1315
	lw		x4, -88(x2)	# 1878
	mul		x5, x30, x4	# 1878
	addi	x5, x5, 61736	# 1878
	lw		x5, 0(x5)	# 1878
	lw		x6, -68(x2)	# 1878
	sub		x5, x5, x6	# 1878
	flw		f1, -96(x2)	# 1878
	flw		f2, -156(x2)	# 1878
	lw		x7, -72(x2)	# 1878
	lw		x29, -8(x2)	# 1878
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -160(x2)	# 1878
	addi	x2, x2, -164	# 1878
	lw		x31, 0(x29)	# 1878
	jalr	x1, x31, 0	# 1878
	addi	x2, x2, 164	# 1878
	lw		x1, -160(x2)	# 1878
	lui		x4, %hi(l.27321)	# 1881
	ori		x4, x0, %lo(l.27321)	# 1881
	flw		f1, 0(x4)	# 1881
	flw		f2, -56(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32201	# 125
	jalr	x0, x1, 0	# 1892
fle_else.32201:
	lw		x4, -84(x2)	# 1883
	lw		x5, -24(x2)	# 1883
	ble		x5, x4, ble_cont.32203	# 1883
	addi	x5, x4, 1	# 1884
	addi	x6, x0, -1	# 1884
	mul		x5, x30, x5	# 1884
	lw		x7, -80(x2)	# 1884
	add		x5, x7, x5	# 1884
	sw		x6, 0(x5)	# 1884
ble_cont.32203:
	lw		x5, -64(x2)	# 1887
	lw		x6, -92(x2)	# 1887
	beq		x6, x5, beq.32204	# 1887
	jalr	x0, x1, 0	# 1890
beq.32204:
	fadd	f1, f0, f16	# 1888
	lw		x5, -100(x2)	# 461
	lw		x5, 28(x5)	# 461
	lw		x6, -88(x2)	# 466
	mul		x7, x30, x6	# 466
	add		x5, x5, x7	# 466
	flw		f3, 0(x5)	# 466
	fsub	f1, f1, f3	# 1888
	fmul	f1, f2, f1	# 1888
	lw		x5, -68(x2)	# 1889
	add		x4, x4, x5	# 1889
	mul		x5, x30, x6	# 1889
	addi	x5, x5, 60548	# 1889
	flw		f2, 0(x5)	# 1889
	flw		f3, -4(x2)	# 1889
	fadd	f2, f3, f2	# 1889
	lw		x5, -72(x2)	# 1889
	lw		x6, -20(x2)	# 1889
	lw		x29, 0(x2)	# 1889
	lw		x31, 0(x29)	# 1889
	jalr	x0, x31, 0	# 1889
beq.32142:
	lw		x5, -84(x2)	# 1897
	mul		x6, x30, x5	# 1897
	lw		x7, -80(x2)	# 1897
	add		x6, x7, x6	# 1897
	lw		x7, -76(x2)	# 1897
	sw		x7, 0(x6)	# 1897
	beq		x5, x4, beq.32206	# 1899
	mul		x5, x30, x4	# 292
	lw		x6, -72(x2)	# 292
	add		x5, x6, x5	# 292
	flw		f1, 0(x5)	# 292
	mul		x5, x30, x4	# 292
	addi	x5, x5, 60312	# 292
	flw		f2, 0(x5)	# 292
	fmul	f1, f1, f2	# 292
	lw		x5, -68(x2)	# 292
	mul		x7, x30, x5	# 292
	add		x7, x6, x7	# 292
	flw		f2, 0(x7)	# 292
	mul		x7, x30, x5	# 292
	addi	x7, x7, 60312	# 292
	flw		f3, 0(x7)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	lw		x7, -64(x2)	# 292
	mul		x8, x30, x7	# 292
	add		x6, x6, x8	# 292
	flw		f2, 0(x6)	# 292
	mul		x6, x30, x7	# 292
	addi	x6, x6, 60312	# 292
	flw		f3, 0(x6)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	fsub	f1, f0, f1	# 123
	flw		f2, -60(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.32207	# 121
	jalr	x0, x1, 0	# 1910
fle_else.32207:
	fmul	f2, f1, f1	# 127
	fmul	f1, f2, f1	# 1905
	flw		f2, -56(x2)	# 1905
	fmul	f1, f1, f2	# 1905
	mul		x6, x30, x4	# 1905
	addi	x6, x6, 60324	# 1905
	flw		f2, 0(x6)	# 1905
	fmul	f1, f1, f2	# 1905
	mul		x6, x30, x4	# 1906
	addi	x6, x6, 60604	# 1906
	flw		f2, 0(x6)	# 1906
	fadd	f2, f2, f1	# 1906
	mul		x4, x30, x4	# 1906
	addi	x4, x4, 60604	# 1906
	fsw		f2, 0(x4)	# 1906
	mul		x4, x30, x5	# 1907
	addi	x4, x4, 60604	# 1907
	flw		f2, 0(x4)	# 1907
	fadd	f2, f2, f1	# 1907
	mul		x4, x30, x5	# 1907
	addi	x4, x4, 60604	# 1907
	fsw		f2, 0(x4)	# 1907
	mul		x4, x30, x7	# 1908
	addi	x4, x4, 60604	# 1908
	flw		f2, 0(x4)	# 1908
	fadd	f1, f2, f1	# 1908
	mul		x4, x30, x7	# 1908
	addi	x4, x4, 60604	# 1908
	fsw		f1, 0(x4)	# 1908
	jalr	x0, x1, 0	# 1908
beq.32206:
	jalr	x0, x1, 0	# 1911
iter_trace_diffuse_rays.2880.17766:
	lw		x8, 56(x29)	# 1944
	lw		x9, 52(x29)	# 1944
	lw		x10, 48(x29)	# 1944
	lw		x11, 44(x29)	# 1944
	lw		x12, 40(x29)	# 1944
	lw		x13, 36(x29)	# 1944
	lw		x14, 32(x29)	# 1944
	lw		x15, 28(x29)	# 1944
	lw		x16, 24(x29)	# 1944
	lw		x17, 20(x29)	# 1944
	lw		x18, 16(x29)	# 1944
	flw		f1, 12(x29)	# 1944
	flw		f2, 8(x29)	# 1944
	flw		f3, 4(x29)	# 1944
	ble		x17, x7, ble.32211	# 1944
	jalr	x0, x1, 0	# 1955
ble.32211:
	mul		x19, x30, x7	# 1945
	add		x19, x4, x19	# 1945
	lw		x19, 0(x19)	# 1945
	lw		x19, 0(x19)	# 639
	mul		x20, x30, x17	# 292
	add		x20, x19, x20	# 292
	flw		f4, 0(x20)	# 292
	mul		x20, x30, x17	# 292
	add		x20, x5, x20	# 292
	flw		f5, 0(x20)	# 292
	fmul	f4, f4, f5	# 292
	mul		x20, x30, x18	# 292
	add		x20, x19, x20	# 292
	flw		f5, 0(x20)	# 292
	mul		x20, x30, x18	# 292
	add		x20, x5, x20	# 292
	flw		f6, 0(x20)	# 292
	fmul	f5, f5, f6	# 292
	fadd	f4, f4, f5	# 292
	mul		x20, x30, x15	# 292
	add		x19, x19, x20	# 292
	flw		f5, 0(x19)	# 292
	mul		x19, x30, x15	# 292
	add		x19, x5, x19	# 292
	flw		f6, 0(x19)	# 292
	fmul	f5, f5, f6	# 292
	fadd	f4, f4, f5	# 292
	sw		x6, 0(x2)	# 122
	sw		x5, -4(x2)	# 122
	sw		x4, -8(x2)	# 122
	sw		x29, -12(x2)	# 122
	sw		x15, -16(x2)	# 122
	sw		x7, -20(x2)	# 122
	fle		x31, f3, f4	# 122
	beq		x31, x0, fle_else.32214	# 122
	mul		x19, x30, x7	# 1952
	add		x19, x4, x19	# 1952
	lw		x19, 0(x19)	# 1952
	lui		x20, %hi(l.27595)	# 1952
	ori		x20, x0, %lo(l.27595)	# 1952
	flw		f5, 0(x20)	# 1952
	fdiv	f4, f4, f5	# 1952
	mul		x20, x30, x17	# 1634
	addi	x20, x20, 60548	# 1634
	fsw		f1, 0(x20)	# 1634
	mul		x20, x30, x17	# 1635
	addi	x20, x20, 60536	# 1635
	lw		x20, 0(x20)	# 1635
	fsw		f4, -24(x2)	# 1635
	sw		x10, -28(x2)	# 1635
	sw		x14, -32(x2)	# 1635
	sw		x13, -36(x2)	# 1635
	sw		x16, -40(x2)	# 1635
	sw		x9, -44(x2)	# 1635
	fsw		f2, -48(x2)	# 1635
	sw		x12, -52(x2)	# 1635
	sw		x11, -56(x2)	# 1635
	fsw		f3, -60(x2)	# 1635
	sw		x18, -64(x2)	# 1635
	sw		x19, -68(x2)	# 1635
	sw		x17, -72(x2)	# 1635
	addi	x6, x19, 0
	addi	x5, x20, 0
	addi	x4, x17, 0
	addi	x29, x8, 0
	sw		x1, -76(x2)	# 1635
	addi	x2, x2, -80	# 1635
	lw		x31, 0(x29)	# 1635
	jalr	x1, x31, 0	# 1635
	addi	x2, x2, 80	# 1635
	lw		x1, -76(x2)	# 1635
	lw		x4, -72(x2)	# 1636
	mul		x5, x30, x4	# 1636
	addi	x5, x5, 60548	# 1636
	flw		f1, 0(x5)	# 1636
	fadd	f2, f0, f23	# 1638
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32216	# 125
	addi	x5, x0, 0	# 1640
	jal		x0, fle_cont.32215	# 125
fle_else.32216:
	fadd	f2, f0, f25	# 1639
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32218	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32217	# 125
fle_else.32218:
	addi	x5, x0, 1	# 125
fle_cont.32217:
fle_cont.32215:
	addi	x6, x0, 0	# 1927
	beq		x5, x6, beq_cont.32219	# 1927
	mul		x5, x30, x6	# 1928
	addi	x5, x5, 60564	# 1928
	lw		x5, 0(x5)	# 1928
	mul		x5, x30, x5	# 1928
	addi	x5, x5, 60048	# 1928
	lw		x5, 0(x5)	# 1928
	lw		x7, -68(x2)	# 639
	lw		x7, 0(x7)	# 639
	lw		x8, 4(x5)	# 353
	lw		x9, -64(x2)	# 1693
	beq		x8, x9, beq.32221	# 1693
	lw		x7, -16(x2)	# 1695
	beq		x8, x7, beq.32223	# 1695
	mul		x8, x30, x4	# 1670
	addi	x8, x8, 60552	# 1670
	flw		f1, 0(x8)	# 1670
	lw		x8, 20(x5)	# 431
	mul		x10, x30, x4	# 436
	add		x8, x8, x10	# 436
	flw		f2, 0(x8)	# 436
	fsub	f1, f1, f2	# 1670
	mul		x8, x30, x9	# 1671
	addi	x8, x8, 60552	# 1671
	flw		f2, 0(x8)	# 1671
	lw		x8, 20(x5)	# 441
	mul		x10, x30, x9	# 446
	add		x8, x8, x10	# 446
	flw		f3, 0(x8)	# 446
	fsub	f2, f2, f3	# 1671
	mul		x8, x30, x7	# 1672
	addi	x8, x8, 60552	# 1672
	flw		f3, 0(x8)	# 1672
	lw		x8, 20(x5)	# 451
	mul		x10, x30, x7	# 456
	add		x8, x8, x10	# 456
	flw		f4, 0(x8)	# 456
	fsub	f3, f3, f4	# 1672
	lw		x8, 16(x5)	# 391
	mul		x10, x30, x4	# 396
	add		x8, x8, x10	# 396
	flw		f4, 0(x8)	# 396
	fmul	f4, f1, f4	# 1674
	lw		x8, 16(x5)	# 401
	mul		x10, x30, x9	# 406
	add		x8, x8, x10	# 406
	flw		f5, 0(x8)	# 406
	fmul	f5, f2, f5	# 1675
	lw		x8, 16(x5)	# 411
	mul		x10, x30, x7	# 416
	add		x8, x8, x10	# 416
	flw		f6, 0(x8)	# 416
	fmul	f6, f3, f6	# 1676
	lw		x8, 12(x5)	# 382
	beq		x8, x4, beq.32225	# 1678
	addi	x8, x0, 0	# 1683
	lw		x10, 36(x5)	# 531
	mul		x11, x30, x7	# 536
	add		x10, x10, x11	# 536
	flw		f7, 0(x10)	# 536
	fmul	f7, f2, f7	# 1683
	lw		x10, 36(x5)	# 521
	mul		x11, x30, x9	# 526
	add		x10, x10, x11	# 526
	flw		f8, 0(x10)	# 526
	fmul	f8, f3, f8	# 1683
	fadd	f7, f7, f8	# 1683
	fadd	f8, f0, f17	# 126
	fmul	f7, f7, f8	# 126
	fadd	f4, f4, f7	# 1683
	mul		x8, x30, x8	# 1683
	addi	x8, x8, 60568	# 1683
	fsw		f4, 0(x8)	# 1683
	addi	x8, x0, 1	# 1684
	lw		x10, 36(x5)	# 531
	mul		x11, x30, x7	# 536
	add		x10, x10, x11	# 536
	flw		f4, 0(x10)	# 536
	fmul	f4, f1, f4	# 1684
	lw		x10, 36(x5)	# 511
	mul		x11, x30, x4	# 516
	add		x10, x10, x11	# 516
	flw		f7, 0(x10)	# 516
	fmul	f3, f3, f7	# 1684
	fadd	f3, f4, f3	# 1684
	fadd	f4, f0, f17	# 126
	fmul	f3, f3, f4	# 126
	fadd	f3, f5, f3	# 1684
	mul		x8, x30, x8	# 1684
	addi	x8, x8, 60568	# 1684
	fsw		f3, 0(x8)	# 1684
	addi	x8, x0, 2	# 1685
	lw		x10, 36(x5)	# 521
	mul		x11, x30, x9	# 526
	add		x10, x10, x11	# 526
	flw		f3, 0(x10)	# 526
	fmul	f1, f1, f3	# 1685
	lw		x10, 36(x5)	# 511
	mul		x11, x30, x4	# 516
	add		x10, x10, x11	# 516
	flw		f3, 0(x10)	# 516
	fmul	f2, f2, f3	# 1685
	fadd	f1, f1, f2	# 1685
	fadd	f2, f0, f17	# 126
	fmul	f1, f1, f2	# 126
	fadd	f1, f6, f1	# 1685
	mul		x8, x30, x8	# 1685
	addi	x8, x8, 60568	# 1685
	fsw		f1, 0(x8)	# 1685
	jal		x0, beq_cont.32224	# 1678
beq.32225:
	addi	x8, x0, 0	# 1679
	mul		x8, x30, x8	# 1679
	addi	x8, x8, 60568	# 1679
	fsw		f4, 0(x8)	# 1679
	addi	x8, x0, 1	# 1680
	mul		x8, x30, x8	# 1680
	addi	x8, x8, 60568	# 1680
	fsw		f5, 0(x8)	# 1680
	addi	x8, x0, 2	# 1681
	mul		x8, x30, x8	# 1681
	addi	x8, x8, 60568	# 1681
	fsw		f6, 0(x8)	# 1681
beq_cont.32224:
	lw		x8, 24(x5)	# 373
	mul		x10, x30, x4	# 283
	addi	x10, x10, 60568	# 283
	flw		f1, 0(x10)	# 283
	fmul	f1, f1, f1	# 127
	mul		x10, x30, x9	# 283
	addi	x10, x10, 60568	# 283
	flw		f2, 0(x10)	# 283
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 283
	mul		x10, x30, x7	# 283
	addi	x10, x10, 60568	# 283
	flw		f2, 0(x10)	# 283
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 283
	fsqrt	f1, f1	# 283
	flw		f2, -60(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.32227	# 120
	fadd	f1, f0, f16	# 284
	jal		x0, feq_cont.32226	# 120
feq_else.32227:
	beq		x8, x4, beq.32229	# 284
	fadd	f3, f0, f18	# 284
	fdiv	f1, f3, f1	# 284
	jal		x0, beq_cont.32228	# 284
beq.32229:
	fadd	f3, f0, f16	# 284
	fdiv	f1, f3, f1	# 284
beq_cont.32228:
feq_cont.32226:
	mul		x8, x30, x4	# 285
	addi	x8, x8, 60568	# 285
	flw		f3, 0(x8)	# 285
	fmul	f3, f3, f1	# 285
	mul		x8, x30, x4	# 285
	addi	x8, x8, 60568	# 285
	fsw		f3, 0(x8)	# 285
	mul		x8, x30, x9	# 286
	addi	x8, x8, 60568	# 286
	flw		f3, 0(x8)	# 286
	fmul	f3, f3, f1	# 286
	mul		x8, x30, x9	# 286
	addi	x8, x8, 60568	# 286
	fsw		f3, 0(x8)	# 286
	mul		x8, x30, x7	# 287
	addi	x8, x8, 60568	# 287
	flw		f3, 0(x8)	# 287
	fmul	f1, f3, f1	# 287
	mul		x8, x30, x7	# 287
	addi	x8, x8, 60568	# 287
	fsw		f1, 0(x8)	# 287
	jal		x0, beq_cont.32222	# 1695
beq.32223:
	lw		x8, 16(x5)	# 391
	mul		x10, x30, x4	# 396
	add		x8, x8, x10	# 396
	flw		f1, 0(x8)	# 396
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x4	# 1663
	addi	x8, x8, 60568	# 1663
	fsw		f1, 0(x8)	# 1663
	lw		x8, 16(x5)	# 401
	mul		x10, x30, x9	# 406
	add		x8, x8, x10	# 406
	flw		f1, 0(x8)	# 406
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x9	# 1664
	addi	x8, x8, 60568	# 1664
	fsw		f1, 0(x8)	# 1664
	lw		x8, 16(x5)	# 411
	mul		x10, x30, x7	# 416
	add		x8, x8, x10	# 416
	flw		f1, 0(x8)	# 416
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x7	# 1665
	addi	x8, x8, 60568	# 1665
	fsw		f1, 0(x8)	# 1665
beq_cont.32222:
	jal		x0, beq_cont.32220	# 1693
beq.32221:
	mul		x8, x30, x4	# 1654
	addi	x8, x8, 60544	# 1654
	lw		x8, 0(x8)	# 1654
	mul		x10, x30, x4	# 247
	addi	x10, x10, 60568	# 247
	flw		f1, -60(x2)	# 247
	fsw		f1, 0(x10)	# 247
	mul		x10, x30, x9	# 248
	addi	x10, x10, 60568	# 248
	fsw		f1, 0(x10)	# 248
	lw		x10, -16(x2)	# 249
	mul		x11, x30, x10	# 249
	addi	x11, x11, 60568	# 249
	fsw		f1, 0(x11)	# 249
	sub		x11, x8, x9	# 1657
	sub		x8, x8, x9	# 1657
	mul		x8, x30, x8	# 1657
	add		x7, x7, x8	# 1657
	flw		f2, 0(x7)	# 1657
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.32231	# 120
	fadd	f2, f0, f1	# 212
	jal		x0, feq_cont.32230	# 120
feq_else.32231:
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.32233	# 121
	fadd	f2, f0, f18	# 214
	jal		x0, fle_cont.32232	# 121
fle_else.32233:
	fadd	f2, f0, f16	# 213
fle_cont.32232:
feq_cont.32230:
	fsub	f2, f0, f2	# 123
	mul		x7, x30, x11	# 1657
	addi	x7, x7, 60568	# 1657
	fsw		f2, 0(x7)	# 1657
beq_cont.32220:
	lw		x7, 0(x5)	# 343
	lw		x8, 32(x5)	# 481
	mul		x10, x30, x4	# 486
	add		x8, x8, x10	# 486
	flw		f1, 0(x8)	# 486
	mul		x8, x30, x4	# 1710
	addi	x8, x8, 60580	# 1710
	fsw		f1, 0(x8)	# 1710
	lw		x8, 32(x5)	# 491
	mul		x10, x30, x9	# 496
	add		x8, x8, x10	# 496
	flw		f1, 0(x8)	# 496
	mul		x8, x30, x9	# 1711
	addi	x8, x8, 60580	# 1711
	fsw		f1, 0(x8)	# 1711
	lw		x8, 32(x5)	# 501
	lw		x10, -16(x2)	# 506
	mul		x11, x30, x10	# 506
	add		x8, x8, x11	# 506
	flw		f1, 0(x8)	# 506
	mul		x8, x30, x10	# 1712
	addi	x8, x8, 60580	# 1712
	fsw		f1, 0(x8)	# 1712
	sw		x5, -76(x2)	# 1713
	sw		x6, -80(x2)	# 1713
	beq		x7, x9, beq.32235	# 1713
	beq		x7, x10, beq.32237	# 1731
	lw		x8, -40(x2)	# 1738
	beq		x7, x8, beq.32239	# 1738
	addi	x8, x0, 4	# 1749
	beq		x7, x8, beq.32241	# 1749
	jal		x0, beq_cont.32240	# 1749
beq.32241:
	mul		x7, x30, x4	# 1751
	addi	x7, x7, 60552	# 1751
	flw		f1, 0(x7)	# 1751
	lw		x7, 20(x5)	# 431
	mul		x8, x30, x4	# 436
	add		x7, x7, x8	# 436
	flw		f2, 0(x7)	# 436
	fsub	f1, f1, f2	# 1751
	lw		x7, 16(x5)	# 391
	mul		x8, x30, x4	# 396
	add		x7, x7, x8	# 396
	flw		f2, 0(x7)	# 396
	fsqrt	f2, f2	# 1751
	fmul	f1, f1, f2	# 1751
	mul		x7, x30, x10	# 1752
	addi	x7, x7, 60552	# 1752
	flw		f2, 0(x7)	# 1752
	lw		x7, 20(x5)	# 451
	mul		x8, x30, x10	# 456
	add		x7, x7, x8	# 456
	flw		f3, 0(x7)	# 456
	fsub	f2, f2, f3	# 1752
	lw		x7, 16(x5)	# 411
	mul		x8, x30, x10	# 416
	add		x7, x7, x8	# 416
	flw		f3, 0(x7)	# 416
	fsqrt	f3, f3	# 1752
	fmul	f2, f2, f3	# 1752
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1753
	flw		f4, -60(x2)	# 124
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_else.32243	# 124
	fsub	f5, f0, f1	# 124
	jal		x0, fle_cont.32242	# 124
fle_else.32243:
	fadd	f5, f0, f1	# 124
fle_cont.32242:
	lui		x7, %hi(l.27086)	# 1755
	ori		x7, x0, %lo(l.27086)	# 1755
	flw		f6, 0(x7)	# 1755
	fsw		f6, -84(x2)	# 125
	fsw		f3, -88(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32245	# 125
	fdiv	f1, f2, f1	# 1758
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_cont.32246	# 124
	fsub	f1, f0, f1	# 124
fle_cont.32246:
	lw		x29, -32(x2)	# 1760
	sw		x1, -92(x2)	# 1760
	addi	x2, x2, -96	# 1760
	lw		x31, 0(x29)	# 1760
	jalr	x1, x31, 0	# 1760
	addi	x2, x2, 96	# 1760
	lw		x1, -92(x2)	# 1760
	fadd	f2, f0, f21	# 1760
	fmul	f1, f1, f2	# 1760
	fadd	f2, f0, f19	# 1760
	fdiv	f1, f1, f2	# 1760
	jal		x0, fle_cont.32244	# 125
fle_else.32245:
	fadd	f1, f0, f20	# 1756
fle_cont.32244:
	flw		f2, -60(x2)	# 137
	fsw		f1, -92(x2)	# 137
	fle		x31, f2, f1	# 137
	beq		x31, x0, fle_else.32248	# 137
	lw		x29, -56(x2)	# 137
	sw		x1, -96(x2)	# 137
	addi	x2, x2, -100	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 100	# 137
	lw		x1, -96(x2)	# 137
	lw		x29, -52(x2)	# 137
	sw		x1, -96(x2)	# 137
	addi	x2, x2, -100	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 100	# 137
	lw		x1, -96(x2)	# 137
	jal		x0, fle_cont.32247	# 137
fle_else.32248:
	lw		x29, -56(x2)	# 138
	sw		x1, -96(x2)	# 138
	addi	x2, x2, -100	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 100	# 138
	lw		x1, -96(x2)	# 138
	lw		x5, -64(x2)	# 138
	sub		x4, x4, x5	# 138
	lw		x29, -52(x2)	# 138
	sw		x1, -96(x2)	# 138
	addi	x2, x2, -100	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 100	# 138
	lw		x1, -96(x2)	# 138
fle_cont.32247:
	flw		f2, -92(x2)	# 1762
	fsub	f1, f2, f1	# 1762
	lw		x4, -64(x2)	# 1764
	mul		x5, x30, x4	# 1764
	addi	x5, x5, 60552	# 1764
	flw		f2, 0(x5)	# 1764
	lw		x5, -76(x2)	# 441
	lw		x6, 20(x5)	# 441
	mul		x7, x30, x4	# 446
	add		x6, x6, x7	# 446
	flw		f3, 0(x6)	# 446
	fsub	f2, f2, f3	# 1764
	lw		x6, 16(x5)	# 401
	mul		x7, x30, x4	# 406
	add		x6, x6, x7	# 406
	flw		f3, 0(x6)	# 406
	fsqrt	f3, f3	# 1764
	fmul	f2, f2, f3	# 1764
	flw		f3, -60(x2)	# 124
	flw		f4, -88(x2)	# 124
	fle		x31, f4, f3	# 124
	beq		x31, x0, fle_else.32250	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.32249	# 124
fle_else.32250:
	fadd	f5, f0, f4	# 124
fle_cont.32249:
	flw		f6, -84(x2)	# 125
	fsw		f1, -96(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32252	# 125
	fdiv	f2, f2, f4	# 1769
	fle		x31, f2, f3	# 124
	beq		x31, x0, fle_cont.32253	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32253:
	lw		x29, -32(x2)	# 1770
	fadd	f1, f0, f2
	sw		x1, -100(x2)	# 1770
	addi	x2, x2, -104	# 1770
	lw		x31, 0(x29)	# 1770
	jalr	x1, x31, 0	# 1770
	addi	x2, x2, 104	# 1770
	lw		x1, -100(x2)	# 1770
	fadd	f2, f0, f21	# 1770
	fmul	f1, f1, f2	# 1770
	fadd	f2, f0, f19	# 1770
	fdiv	f1, f1, f2	# 1770
	jal		x0, fle_cont.32251	# 125
fle_else.32252:
	fadd	f1, f0, f20	# 1767
fle_cont.32251:
	flw		f2, -60(x2)	# 137
	fsw		f1, -100(x2)	# 137
	fle		x31, f2, f1	# 137
	beq		x31, x0, fle_else.32255	# 137
	lw		x29, -56(x2)	# 137
	sw		x1, -104(x2)	# 137
	addi	x2, x2, -108	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 108	# 137
	lw		x1, -104(x2)	# 137
	lw		x29, -52(x2)	# 137
	sw		x1, -104(x2)	# 137
	addi	x2, x2, -108	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 108	# 137
	lw		x1, -104(x2)	# 137
	jal		x0, fle_cont.32254	# 137
fle_else.32255:
	lw		x29, -56(x2)	# 138
	sw		x1, -104(x2)	# 138
	addi	x2, x2, -108	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 108	# 138
	lw		x1, -104(x2)	# 138
	lw		x5, -64(x2)	# 138
	sub		x4, x4, x5	# 138
	lw		x29, -52(x2)	# 138
	sw		x1, -104(x2)	# 138
	addi	x2, x2, -108	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 108	# 138
	lw		x1, -104(x2)	# 138
fle_cont.32254:
	flw		f2, -100(x2)	# 1772
	fsub	f1, f2, f1	# 1772
	lui		x4, %hi(l.27103)	# 1773
	ori		x4, x0, %lo(l.27103)	# 1773
	flw		f2, 0(x4)	# 1773
	fadd	f3, f0, f17	# 1773
	flw		f4, -96(x2)	# 1773
	fsub	f4, f3, f4	# 1773
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1773
	fsub	f1, f3, f1	# 1773
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1773
	flw		f2, -60(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.32257	# 122
	jal		x0, fle_cont.32256	# 122
fle_else.32257:
	fadd	f1, f0, f2	# 1774
fle_cont.32256:
	flw		f3, -48(x2)	# 1775
	fmul	f1, f3, f1	# 1775
	fadd	f3, f0, f27	# 1775
	fdiv	f1, f1, f3	# 1775
	lw		x4, -16(x2)	# 1775
	mul		x5, x30, x4	# 1775
	addi	x5, x5, 60580	# 1775
	fsw		f1, 0(x5)	# 1775
beq_cont.32240:
	jal		x0, beq_cont.32238	# 1738
beq.32239:
	mul		x7, x30, x4	# 1741
	addi	x7, x7, 60552	# 1741
	flw		f1, 0(x7)	# 1741
	lw		x7, 20(x5)	# 431
	mul		x8, x30, x4	# 436
	add		x7, x7, x8	# 436
	flw		f2, 0(x7)	# 436
	fsub	f1, f1, f2	# 1741
	mul		x7, x30, x10	# 1742
	addi	x7, x7, 60552	# 1742
	flw		f2, 0(x7)	# 1742
	lw		x7, 20(x5)	# 451
	mul		x8, x30, x10	# 456
	add		x7, x7, x8	# 456
	flw		f3, 0(x7)	# 456
	fsub	f2, f2, f3	# 1742
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1743
	fsqrt	f1, f1	# 1743
	fadd	f2, f0, f22	# 1743
	fdiv	f1, f1, f2	# 1743
	flw		f2, -60(x2)	# 137
	fsw		f1, -104(x2)	# 137
	fle		x31, f2, f1	# 137
	beq		x31, x0, fle_else.32259	# 137
	lw		x29, -56(x2)	# 137
	sw		x1, -108(x2)	# 137
	addi	x2, x2, -112	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 112	# 137
	lw		x1, -108(x2)	# 137
	lw		x29, -52(x2)	# 137
	sw		x1, -108(x2)	# 137
	addi	x2, x2, -112	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 112	# 137
	lw		x1, -108(x2)	# 137
	jal		x0, fle_cont.32258	# 137
fle_else.32259:
	lw		x29, -56(x2)	# 138
	sw		x1, -108(x2)	# 138
	addi	x2, x2, -112	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 112	# 138
	lw		x1, -108(x2)	# 138
	lw		x5, -64(x2)	# 138
	sub		x4, x4, x5	# 138
	lw		x29, -52(x2)	# 138
	sw		x1, -108(x2)	# 138
	addi	x2, x2, -112	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 112	# 138
	lw		x1, -108(x2)	# 138
fle_cont.32258:
	flw		f2, -104(x2)	# 1744
	fsub	f1, f2, f1	# 1744
	fadd	f2, f0, f19	# 1744
	fmul	f1, f1, f2	# 1744
	lw		x29, -36(x2)	# 1745
	sw		x1, -108(x2)	# 1745
	addi	x2, x2, -112	# 1745
	lw		x31, 0(x29)	# 1745
	jalr	x1, x31, 0	# 1745
	addi	x2, x2, 112	# 1745
	lw		x1, -108(x2)	# 1745
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1746
	fmul	f3, f1, f2	# 1746
	lw		x4, -64(x2)	# 1746
	mul		x5, x30, x4	# 1746
	addi	x5, x5, 60580	# 1746
	fsw		f3, 0(x5)	# 1746
	fadd	f3, f0, f16	# 1747
	fsub	f1, f3, f1	# 1747
	fmul	f1, f1, f2	# 1747
	lw		x5, -16(x2)	# 1747
	mul		x6, x30, x5	# 1747
	addi	x6, x6, 60580	# 1747
	fsw		f1, 0(x6)	# 1747
beq_cont.32238:
	jal		x0, beq_cont.32236	# 1731
beq.32237:
	mul		x7, x30, x9	# 1734
	addi	x7, x7, 60552	# 1734
	flw		f1, 0(x7)	# 1734
	fadd	f2, f0, f26	# 1734
	fmul	f1, f1, f2	# 1734
	lw		x29, -44(x2)	# 1734
	sw		x1, -108(x2)	# 1734
	addi	x2, x2, -112	# 1734
	lw		x31, 0(x29)	# 1734
	jalr	x1, x31, 0	# 1734
	addi	x2, x2, 112	# 1734
	lw		x1, -108(x2)	# 1734
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1735
	fmul	f3, f2, f1	# 1735
	lw		x4, -72(x2)	# 1735
	mul		x5, x30, x4	# 1735
	addi	x5, x5, 60580	# 1735
	fsw		f3, 0(x5)	# 1735
	fadd	f3, f0, f16	# 1736
	fsub	f1, f3, f1	# 1736
	fmul	f1, f2, f1	# 1736
	lw		x5, -64(x2)	# 1736
	mul		x6, x30, x5	# 1736
	addi	x6, x6, 60580	# 1736
	fsw		f1, 0(x6)	# 1736
beq_cont.32236:
	jal		x0, beq_cont.32234	# 1713
beq.32235:
	mul		x7, x30, x4	# 1716
	addi	x7, x7, 60552	# 1716
	flw		f1, 0(x7)	# 1716
	lw		x7, 20(x5)	# 431
	mul		x8, x30, x4	# 436
	add		x7, x7, x8	# 436
	flw		f2, 0(x7)	# 436
	fsub	f1, f1, f2	# 1716
	fadd	f2, f0, f28	# 1718
	fmul	f3, f1, f2	# 1718
	flw		f4, -60(x2)	# 137
	fsw		f2, -108(x2)	# 137
	fsw		f1, -112(x2)	# 137
	fle		x31, f4, f3	# 137
	beq		x31, x0, fle_else.32261	# 137
	lw		x29, -56(x2)	# 137
	fadd	f1, f0, f3
	sw		x1, -116(x2)	# 137
	addi	x2, x2, -120	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 120	# 137
	lw		x1, -116(x2)	# 137
	lw		x29, -52(x2)	# 137
	sw		x1, -116(x2)	# 137
	addi	x2, x2, -120	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 120	# 137
	lw		x1, -116(x2)	# 137
	jal		x0, fle_cont.32260	# 137
fle_else.32261:
	lw		x29, -56(x2)	# 138
	fadd	f1, f0, f3
	sw		x1, -116(x2)	# 138
	addi	x2, x2, -120	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 120	# 138
	lw		x1, -116(x2)	# 138
	lw		x5, -64(x2)	# 138
	sub		x4, x4, x5	# 138
	lw		x29, -52(x2)	# 138
	sw		x1, -116(x2)	# 138
	addi	x2, x2, -120	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 120	# 138
	lw		x1, -116(x2)	# 138
fle_cont.32260:
	fadd	f2, f0, f29	# 1718
	fmul	f1, f1, f2	# 1718
	flw		f3, -112(x2)	# 1719
	fsub	f1, f3, f1	# 1719
	fadd	f3, f0, f22	# 1719
	lw		x4, -16(x2)	# 1721
	mul		x5, x30, x4	# 1721
	addi	x5, x5, 60552	# 1721
	flw		f4, 0(x5)	# 1721
	lw		x5, -76(x2)	# 451
	lw		x6, 20(x5)	# 451
	mul		x7, x30, x4	# 456
	add		x6, x6, x7	# 456
	flw		f5, 0(x6)	# 456
	fsub	f4, f4, f5	# 1721
	flw		f5, -108(x2)	# 1723
	fmul	f5, f4, f5	# 1723
	flw		f6, -60(x2)	# 137
	fsw		f1, -116(x2)	# 137
	fsw		f3, -120(x2)	# 137
	fsw		f4, -124(x2)	# 137
	fsw		f2, -128(x2)	# 137
	fle		x31, f6, f5	# 137
	beq		x31, x0, fle_else.32263	# 137
	lw		x29, -56(x2)	# 137
	fadd	f1, f0, f5
	sw		x1, -132(x2)	# 137
	addi	x2, x2, -136	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 136	# 137
	lw		x1, -132(x2)	# 137
	lw		x29, -52(x2)	# 137
	sw		x1, -132(x2)	# 137
	addi	x2, x2, -136	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 136	# 137
	lw		x1, -132(x2)	# 137
	jal		x0, fle_cont.32262	# 137
fle_else.32263:
	lw		x29, -56(x2)	# 138
	fadd	f1, f0, f5
	sw		x1, -132(x2)	# 138
	addi	x2, x2, -136	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 136	# 138
	lw		x1, -132(x2)	# 138
	lw		x5, -64(x2)	# 138
	sub		x4, x4, x5	# 138
	lw		x29, -52(x2)	# 138
	sw		x1, -132(x2)	# 138
	addi	x2, x2, -136	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 136	# 138
	lw		x1, -132(x2)	# 138
fle_cont.32262:
	flw		f2, -128(x2)	# 1723
	fmul	f1, f1, f2	# 1723
	flw		f2, -124(x2)	# 1724
	fsub	f1, f2, f1	# 1724
	flw		f2, -116(x2)	# 125
	flw		f3, -120(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32265	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32267	# 125
	flw		f1, -48(x2)	# 1729
	jal		x0, fle_cont.32266	# 125
fle_else.32267:
	flw		f1, -60(x2)	# 1729
fle_cont.32266:
	jal		x0, fle_cont.32264	# 125
fle_else.32265:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32269	# 125
	flw		f1, -60(x2)	# 1728
	jal		x0, fle_cont.32268	# 125
fle_else.32269:
	flw		f1, -48(x2)	# 1728
fle_cont.32268:
fle_cont.32264:
	lw		x4, -64(x2)	# 1726
	mul		x5, x30, x4	# 1726
	addi	x5, x5, 60580	# 1726
	fsw		f1, 0(x5)	# 1726
beq_cont.32234:
	addi	x4, x0, 0	# 1933
	addi	x5, x0, 0	# 1933
	mul		x5, x30, x5	# 1933
	addi	x5, x5, 60536	# 1933
	lw		x5, 0(x5)	# 1933
	lw		x29, -28(x2)	# 1933
	sw		x1, -132(x2)	# 1933
	addi	x2, x2, -136	# 1933
	lw		x31, 0(x29)	# 1933
	jalr	x1, x31, 0	# 1933
	addi	x2, x2, 136	# 1933
	lw		x1, -132(x2)	# 1933
	lw		x5, -80(x2)	# 1933
	beq		x4, x5, beq.32271	# 1933
	jal		x0, beq_cont.32270	# 1933
beq.32271:
	lw		x4, -72(x2)	# 292
	mul		x5, x30, x4	# 292
	addi	x5, x5, 60568	# 292
	flw		f1, 0(x5)	# 292
	mul		x5, x30, x4	# 292
	addi	x5, x5, 60312	# 292
	flw		f2, 0(x5)	# 292
	fmul	f1, f1, f2	# 292
	lw		x5, -64(x2)	# 292
	mul		x6, x30, x5	# 292
	addi	x6, x6, 60568	# 292
	flw		f2, 0(x6)	# 292
	mul		x6, x30, x5	# 292
	addi	x6, x6, 60312	# 292
	flw		f3, 0(x6)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	lw		x6, -16(x2)	# 292
	mul		x7, x30, x6	# 292
	addi	x7, x7, 60568	# 292
	flw		f2, 0(x7)	# 292
	mul		x7, x30, x6	# 292
	addi	x7, x7, 60312	# 292
	flw		f3, 0(x7)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	fsub	f1, f0, f1	# 123
	flw		f2, -60(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_cont.32272	# 121
	fadd	f1, f0, f0	# 1935
fle_cont.32272:
	flw		f2, -24(x2)	# 1936
	fmul	f1, f2, f1	# 1936
	lw		x7, -76(x2)	# 461
	lw		x7, 28(x7)	# 461
	mul		x8, x30, x4	# 466
	add		x7, x7, x8	# 466
	flw		f2, 0(x7)	# 466
	fmul	f1, f1, f2	# 1936
	mul		x7, x30, x4	# 302
	addi	x7, x7, 60592	# 302
	flw		f2, 0(x7)	# 302
	mul		x7, x30, x4	# 302
	addi	x7, x7, 60580	# 302
	flw		f3, 0(x7)	# 302
	fmul	f3, f1, f3	# 302
	fadd	f2, f2, f3	# 302
	mul		x4, x30, x4	# 302
	addi	x4, x4, 60592	# 302
	fsw		f2, 0(x4)	# 302
	mul		x4, x30, x5	# 303
	addi	x4, x4, 60592	# 303
	flw		f2, 0(x4)	# 303
	mul		x4, x30, x5	# 303
	addi	x4, x4, 60580	# 303
	flw		f3, 0(x4)	# 303
	fmul	f3, f1, f3	# 303
	fadd	f2, f2, f3	# 303
	mul		x4, x30, x5	# 303
	addi	x4, x4, 60592	# 303
	fsw		f2, 0(x4)	# 303
	mul		x4, x30, x6	# 304
	addi	x4, x4, 60592	# 304
	flw		f2, 0(x4)	# 304
	mul		x4, x30, x6	# 304
	addi	x4, x4, 60580	# 304
	flw		f3, 0(x4)	# 304
	fmul	f1, f1, f3	# 304
	fadd	f1, f2, f1	# 304
	mul		x4, x30, x6	# 304
	addi	x4, x4, 60592	# 304
	fsw		f1, 0(x4)	# 304
beq_cont.32270:
beq_cont.32219:
	jal		x0, fle_cont.32213	# 122
fle_else.32214:
	addi	x19, x7, 1	# 1950
	mul		x19, x30, x19	# 1950
	add		x19, x4, x19	# 1950
	lw		x19, 0(x19)	# 1950
	lui		x20, %hi(l.27374)	# 1950
	ori		x20, x0, %lo(l.27374)	# 1950
	flw		f5, 0(x20)	# 1950
	fdiv	f4, f4, f5	# 1950
	mul		x20, x30, x17	# 1634
	addi	x20, x20, 60548	# 1634
	fsw		f1, 0(x20)	# 1634
	mul		x20, x30, x17	# 1635
	addi	x20, x20, 60536	# 1635
	lw		x20, 0(x20)	# 1635
	fsw		f4, -132(x2)	# 1635
	sw		x10, -28(x2)	# 1635
	sw		x14, -32(x2)	# 1635
	sw		x13, -36(x2)	# 1635
	sw		x16, -40(x2)	# 1635
	sw		x9, -44(x2)	# 1635
	fsw		f2, -48(x2)	# 1635
	sw		x12, -52(x2)	# 1635
	sw		x11, -56(x2)	# 1635
	fsw		f3, -60(x2)	# 1635
	sw		x18, -64(x2)	# 1635
	sw		x19, -136(x2)	# 1635
	sw		x17, -72(x2)	# 1635
	addi	x6, x19, 0
	addi	x5, x20, 0
	addi	x4, x17, 0
	addi	x29, x8, 0
	sw		x1, -140(x2)	# 1635
	addi	x2, x2, -144	# 1635
	lw		x31, 0(x29)	# 1635
	jalr	x1, x31, 0	# 1635
	addi	x2, x2, 144	# 1635
	lw		x1, -140(x2)	# 1635
	lw		x4, -72(x2)	# 1636
	mul		x5, x30, x4	# 1636
	addi	x5, x5, 60548	# 1636
	flw		f1, 0(x5)	# 1636
	fadd	f2, f0, f23	# 1638
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32274	# 125
	addi	x5, x0, 0	# 1640
	jal		x0, fle_cont.32273	# 125
fle_else.32274:
	fadd	f2, f0, f25	# 1639
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32276	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32275	# 125
fle_else.32276:
	addi	x5, x0, 1	# 125
fle_cont.32275:
fle_cont.32273:
	addi	x6, x0, 0	# 1927
	beq		x5, x6, beq_cont.32277	# 1927
	mul		x5, x30, x6	# 1928
	addi	x5, x5, 60564	# 1928
	lw		x5, 0(x5)	# 1928
	mul		x5, x30, x5	# 1928
	addi	x5, x5, 60048	# 1928
	lw		x5, 0(x5)	# 1928
	lw		x7, -136(x2)	# 639
	lw		x7, 0(x7)	# 639
	lw		x8, 4(x5)	# 353
	lw		x9, -64(x2)	# 1693
	beq		x8, x9, beq.32279	# 1693
	lw		x7, -16(x2)	# 1695
	beq		x8, x7, beq.32281	# 1695
	mul		x8, x30, x4	# 1670
	addi	x8, x8, 60552	# 1670
	flw		f1, 0(x8)	# 1670
	lw		x8, 20(x5)	# 431
	mul		x10, x30, x4	# 436
	add		x8, x8, x10	# 436
	flw		f2, 0(x8)	# 436
	fsub	f1, f1, f2	# 1670
	mul		x8, x30, x9	# 1671
	addi	x8, x8, 60552	# 1671
	flw		f2, 0(x8)	# 1671
	lw		x8, 20(x5)	# 441
	mul		x10, x30, x9	# 446
	add		x8, x8, x10	# 446
	flw		f3, 0(x8)	# 446
	fsub	f2, f2, f3	# 1671
	mul		x8, x30, x7	# 1672
	addi	x8, x8, 60552	# 1672
	flw		f3, 0(x8)	# 1672
	lw		x8, 20(x5)	# 451
	mul		x10, x30, x7	# 456
	add		x8, x8, x10	# 456
	flw		f4, 0(x8)	# 456
	fsub	f3, f3, f4	# 1672
	lw		x8, 16(x5)	# 391
	mul		x10, x30, x4	# 396
	add		x8, x8, x10	# 396
	flw		f4, 0(x8)	# 396
	fmul	f4, f1, f4	# 1674
	lw		x8, 16(x5)	# 401
	mul		x10, x30, x9	# 406
	add		x8, x8, x10	# 406
	flw		f5, 0(x8)	# 406
	fmul	f5, f2, f5	# 1675
	lw		x8, 16(x5)	# 411
	mul		x10, x30, x7	# 416
	add		x8, x8, x10	# 416
	flw		f6, 0(x8)	# 416
	fmul	f6, f3, f6	# 1676
	lw		x8, 12(x5)	# 382
	beq		x8, x4, beq.32283	# 1678
	addi	x8, x0, 0	# 1683
	lw		x10, 36(x5)	# 531
	mul		x11, x30, x7	# 536
	add		x10, x10, x11	# 536
	flw		f7, 0(x10)	# 536
	fmul	f7, f2, f7	# 1683
	lw		x10, 36(x5)	# 521
	mul		x11, x30, x9	# 526
	add		x10, x10, x11	# 526
	flw		f8, 0(x10)	# 526
	fmul	f8, f3, f8	# 1683
	fadd	f7, f7, f8	# 1683
	fadd	f8, f0, f17	# 126
	fmul	f7, f7, f8	# 126
	fadd	f4, f4, f7	# 1683
	mul		x8, x30, x8	# 1683
	addi	x8, x8, 60568	# 1683
	fsw		f4, 0(x8)	# 1683
	addi	x8, x0, 1	# 1684
	lw		x10, 36(x5)	# 531
	mul		x11, x30, x7	# 536
	add		x10, x10, x11	# 536
	flw		f4, 0(x10)	# 536
	fmul	f4, f1, f4	# 1684
	lw		x10, 36(x5)	# 511
	mul		x11, x30, x4	# 516
	add		x10, x10, x11	# 516
	flw		f7, 0(x10)	# 516
	fmul	f3, f3, f7	# 1684
	fadd	f3, f4, f3	# 1684
	fadd	f4, f0, f17	# 126
	fmul	f3, f3, f4	# 126
	fadd	f3, f5, f3	# 1684
	mul		x8, x30, x8	# 1684
	addi	x8, x8, 60568	# 1684
	fsw		f3, 0(x8)	# 1684
	addi	x8, x0, 2	# 1685
	lw		x10, 36(x5)	# 521
	mul		x11, x30, x9	# 526
	add		x10, x10, x11	# 526
	flw		f3, 0(x10)	# 526
	fmul	f1, f1, f3	# 1685
	lw		x10, 36(x5)	# 511
	mul		x11, x30, x4	# 516
	add		x10, x10, x11	# 516
	flw		f3, 0(x10)	# 516
	fmul	f2, f2, f3	# 1685
	fadd	f1, f1, f2	# 1685
	fadd	f2, f0, f17	# 126
	fmul	f1, f1, f2	# 126
	fadd	f1, f6, f1	# 1685
	mul		x8, x30, x8	# 1685
	addi	x8, x8, 60568	# 1685
	fsw		f1, 0(x8)	# 1685
	jal		x0, beq_cont.32282	# 1678
beq.32283:
	addi	x8, x0, 0	# 1679
	mul		x8, x30, x8	# 1679
	addi	x8, x8, 60568	# 1679
	fsw		f4, 0(x8)	# 1679
	addi	x8, x0, 1	# 1680
	mul		x8, x30, x8	# 1680
	addi	x8, x8, 60568	# 1680
	fsw		f5, 0(x8)	# 1680
	addi	x8, x0, 2	# 1681
	mul		x8, x30, x8	# 1681
	addi	x8, x8, 60568	# 1681
	fsw		f6, 0(x8)	# 1681
beq_cont.32282:
	lw		x8, 24(x5)	# 373
	mul		x10, x30, x4	# 283
	addi	x10, x10, 60568	# 283
	flw		f1, 0(x10)	# 283
	fmul	f1, f1, f1	# 127
	mul		x10, x30, x9	# 283
	addi	x10, x10, 60568	# 283
	flw		f2, 0(x10)	# 283
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 283
	mul		x10, x30, x7	# 283
	addi	x10, x10, 60568	# 283
	flw		f2, 0(x10)	# 283
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 283
	fsqrt	f1, f1	# 283
	flw		f2, -60(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.32285	# 120
	fadd	f1, f0, f16	# 284
	jal		x0, feq_cont.32284	# 120
feq_else.32285:
	beq		x8, x4, beq.32287	# 284
	fadd	f3, f0, f18	# 284
	fdiv	f1, f3, f1	# 284
	jal		x0, beq_cont.32286	# 284
beq.32287:
	fadd	f3, f0, f16	# 284
	fdiv	f1, f3, f1	# 284
beq_cont.32286:
feq_cont.32284:
	mul		x8, x30, x4	# 285
	addi	x8, x8, 60568	# 285
	flw		f3, 0(x8)	# 285
	fmul	f3, f3, f1	# 285
	mul		x8, x30, x4	# 285
	addi	x8, x8, 60568	# 285
	fsw		f3, 0(x8)	# 285
	mul		x8, x30, x9	# 286
	addi	x8, x8, 60568	# 286
	flw		f3, 0(x8)	# 286
	fmul	f3, f3, f1	# 286
	mul		x8, x30, x9	# 286
	addi	x8, x8, 60568	# 286
	fsw		f3, 0(x8)	# 286
	mul		x8, x30, x7	# 287
	addi	x8, x8, 60568	# 287
	flw		f3, 0(x8)	# 287
	fmul	f1, f3, f1	# 287
	mul		x8, x30, x7	# 287
	addi	x8, x8, 60568	# 287
	fsw		f1, 0(x8)	# 287
	jal		x0, beq_cont.32280	# 1695
beq.32281:
	lw		x8, 16(x5)	# 391
	mul		x10, x30, x4	# 396
	add		x8, x8, x10	# 396
	flw		f1, 0(x8)	# 396
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x4	# 1663
	addi	x8, x8, 60568	# 1663
	fsw		f1, 0(x8)	# 1663
	lw		x8, 16(x5)	# 401
	mul		x10, x30, x9	# 406
	add		x8, x8, x10	# 406
	flw		f1, 0(x8)	# 406
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x9	# 1664
	addi	x8, x8, 60568	# 1664
	fsw		f1, 0(x8)	# 1664
	lw		x8, 16(x5)	# 411
	mul		x10, x30, x7	# 416
	add		x8, x8, x10	# 416
	flw		f1, 0(x8)	# 416
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x7	# 1665
	addi	x8, x8, 60568	# 1665
	fsw		f1, 0(x8)	# 1665
beq_cont.32280:
	jal		x0, beq_cont.32278	# 1693
beq.32279:
	mul		x8, x30, x4	# 1654
	addi	x8, x8, 60544	# 1654
	lw		x8, 0(x8)	# 1654
	mul		x10, x30, x4	# 247
	addi	x10, x10, 60568	# 247
	flw		f1, -60(x2)	# 247
	fsw		f1, 0(x10)	# 247
	mul		x10, x30, x9	# 248
	addi	x10, x10, 60568	# 248
	fsw		f1, 0(x10)	# 248
	lw		x10, -16(x2)	# 249
	mul		x11, x30, x10	# 249
	addi	x11, x11, 60568	# 249
	fsw		f1, 0(x11)	# 249
	sub		x11, x8, x9	# 1657
	sub		x8, x8, x9	# 1657
	mul		x8, x30, x8	# 1657
	add		x7, x7, x8	# 1657
	flw		f2, 0(x7)	# 1657
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.32289	# 120
	fadd	f2, f0, f1	# 212
	jal		x0, feq_cont.32288	# 120
feq_else.32289:
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.32291	# 121
	fadd	f2, f0, f18	# 214
	jal		x0, fle_cont.32290	# 121
fle_else.32291:
	fadd	f2, f0, f16	# 213
fle_cont.32290:
feq_cont.32288:
	fsub	f2, f0, f2	# 123
	mul		x7, x30, x11	# 1657
	addi	x7, x7, 60568	# 1657
	fsw		f2, 0(x7)	# 1657
beq_cont.32278:
	lw		x7, 0(x5)	# 343
	lw		x8, 32(x5)	# 481
	mul		x10, x30, x4	# 486
	add		x8, x8, x10	# 486
	flw		f1, 0(x8)	# 486
	mul		x8, x30, x4	# 1710
	addi	x8, x8, 60580	# 1710
	fsw		f1, 0(x8)	# 1710
	lw		x8, 32(x5)	# 491
	mul		x10, x30, x9	# 496
	add		x8, x8, x10	# 496
	flw		f1, 0(x8)	# 496
	mul		x8, x30, x9	# 1711
	addi	x8, x8, 60580	# 1711
	fsw		f1, 0(x8)	# 1711
	lw		x8, 32(x5)	# 501
	lw		x10, -16(x2)	# 506
	mul		x11, x30, x10	# 506
	add		x8, x8, x11	# 506
	flw		f1, 0(x8)	# 506
	mul		x8, x30, x10	# 1712
	addi	x8, x8, 60580	# 1712
	fsw		f1, 0(x8)	# 1712
	sw		x5, -140(x2)	# 1713
	sw		x6, -144(x2)	# 1713
	beq		x7, x9, beq.32293	# 1713
	beq		x7, x10, beq.32295	# 1731
	lw		x8, -40(x2)	# 1738
	beq		x7, x8, beq.32297	# 1738
	addi	x8, x0, 4	# 1749
	beq		x7, x8, beq.32299	# 1749
	jal		x0, beq_cont.32298	# 1749
beq.32299:
	mul		x7, x30, x4	# 1751
	addi	x7, x7, 60552	# 1751
	flw		f1, 0(x7)	# 1751
	lw		x7, 20(x5)	# 431
	mul		x8, x30, x4	# 436
	add		x7, x7, x8	# 436
	flw		f2, 0(x7)	# 436
	fsub	f1, f1, f2	# 1751
	lw		x7, 16(x5)	# 391
	mul		x8, x30, x4	# 396
	add		x7, x7, x8	# 396
	flw		f2, 0(x7)	# 396
	fsqrt	f2, f2	# 1751
	fmul	f1, f1, f2	# 1751
	mul		x7, x30, x10	# 1752
	addi	x7, x7, 60552	# 1752
	flw		f2, 0(x7)	# 1752
	lw		x7, 20(x5)	# 451
	mul		x8, x30, x10	# 456
	add		x7, x7, x8	# 456
	flw		f3, 0(x7)	# 456
	fsub	f2, f2, f3	# 1752
	lw		x7, 16(x5)	# 411
	mul		x8, x30, x10	# 416
	add		x7, x7, x8	# 416
	flw		f3, 0(x7)	# 416
	fsqrt	f3, f3	# 1752
	fmul	f2, f2, f3	# 1752
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1753
	flw		f4, -60(x2)	# 124
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_else.32301	# 124
	fsub	f5, f0, f1	# 124
	jal		x0, fle_cont.32300	# 124
fle_else.32301:
	fadd	f5, f0, f1	# 124
fle_cont.32300:
	lui		x7, %hi(l.27086)	# 1755
	ori		x7, x0, %lo(l.27086)	# 1755
	flw		f6, 0(x7)	# 1755
	fsw		f6, -148(x2)	# 125
	fsw		f3, -152(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32303	# 125
	fdiv	f1, f2, f1	# 1758
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_cont.32304	# 124
	fsub	f1, f0, f1	# 124
fle_cont.32304:
	lw		x29, -32(x2)	# 1760
	sw		x1, -156(x2)	# 1760
	addi	x2, x2, -160	# 1760
	lw		x31, 0(x29)	# 1760
	jalr	x1, x31, 0	# 1760
	addi	x2, x2, 160	# 1760
	lw		x1, -156(x2)	# 1760
	fadd	f2, f0, f21	# 1760
	fmul	f1, f1, f2	# 1760
	fadd	f2, f0, f19	# 1760
	fdiv	f1, f1, f2	# 1760
	jal		x0, fle_cont.32302	# 125
fle_else.32303:
	fadd	f1, f0, f20	# 1756
fle_cont.32302:
	flw		f2, -60(x2)	# 137
	fsw		f1, -156(x2)	# 137
	fle		x31, f2, f1	# 137
	beq		x31, x0, fle_else.32306	# 137
	lw		x29, -56(x2)	# 137
	sw		x1, -160(x2)	# 137
	addi	x2, x2, -164	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 164	# 137
	lw		x1, -160(x2)	# 137
	lw		x29, -52(x2)	# 137
	sw		x1, -160(x2)	# 137
	addi	x2, x2, -164	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 164	# 137
	lw		x1, -160(x2)	# 137
	jal		x0, fle_cont.32305	# 137
fle_else.32306:
	lw		x29, -56(x2)	# 138
	sw		x1, -160(x2)	# 138
	addi	x2, x2, -164	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 164	# 138
	lw		x1, -160(x2)	# 138
	lw		x5, -64(x2)	# 138
	sub		x4, x4, x5	# 138
	lw		x29, -52(x2)	# 138
	sw		x1, -160(x2)	# 138
	addi	x2, x2, -164	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 164	# 138
	lw		x1, -160(x2)	# 138
fle_cont.32305:
	flw		f2, -156(x2)	# 1762
	fsub	f1, f2, f1	# 1762
	lw		x4, -64(x2)	# 1764
	mul		x5, x30, x4	# 1764
	addi	x5, x5, 60552	# 1764
	flw		f2, 0(x5)	# 1764
	lw		x5, -140(x2)	# 441
	lw		x6, 20(x5)	# 441
	mul		x7, x30, x4	# 446
	add		x6, x6, x7	# 446
	flw		f3, 0(x6)	# 446
	fsub	f2, f2, f3	# 1764
	lw		x6, 16(x5)	# 401
	mul		x7, x30, x4	# 406
	add		x6, x6, x7	# 406
	flw		f3, 0(x6)	# 406
	fsqrt	f3, f3	# 1764
	fmul	f2, f2, f3	# 1764
	flw		f3, -60(x2)	# 124
	flw		f4, -152(x2)	# 124
	fle		x31, f4, f3	# 124
	beq		x31, x0, fle_else.32308	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.32307	# 124
fle_else.32308:
	fadd	f5, f0, f4	# 124
fle_cont.32307:
	flw		f6, -148(x2)	# 125
	fsw		f1, -160(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32310	# 125
	fdiv	f2, f2, f4	# 1769
	fle		x31, f2, f3	# 124
	beq		x31, x0, fle_cont.32311	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32311:
	lw		x29, -32(x2)	# 1770
	fadd	f1, f0, f2
	sw		x1, -164(x2)	# 1770
	addi	x2, x2, -168	# 1770
	lw		x31, 0(x29)	# 1770
	jalr	x1, x31, 0	# 1770
	addi	x2, x2, 168	# 1770
	lw		x1, -164(x2)	# 1770
	fadd	f2, f0, f21	# 1770
	fmul	f1, f1, f2	# 1770
	fadd	f2, f0, f19	# 1770
	fdiv	f1, f1, f2	# 1770
	jal		x0, fle_cont.32309	# 125
fle_else.32310:
	fadd	f1, f0, f20	# 1767
fle_cont.32309:
	flw		f2, -60(x2)	# 137
	fsw		f1, -164(x2)	# 137
	fle		x31, f2, f1	# 137
	beq		x31, x0, fle_else.32313	# 137
	lw		x29, -56(x2)	# 137
	sw		x1, -168(x2)	# 137
	addi	x2, x2, -172	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 172	# 137
	lw		x1, -168(x2)	# 137
	lw		x29, -52(x2)	# 137
	sw		x1, -168(x2)	# 137
	addi	x2, x2, -172	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 172	# 137
	lw		x1, -168(x2)	# 137
	jal		x0, fle_cont.32312	# 137
fle_else.32313:
	lw		x29, -56(x2)	# 138
	sw		x1, -168(x2)	# 138
	addi	x2, x2, -172	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 172	# 138
	lw		x1, -168(x2)	# 138
	lw		x5, -64(x2)	# 138
	sub		x4, x4, x5	# 138
	lw		x29, -52(x2)	# 138
	sw		x1, -168(x2)	# 138
	addi	x2, x2, -172	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 172	# 138
	lw		x1, -168(x2)	# 138
fle_cont.32312:
	flw		f2, -164(x2)	# 1772
	fsub	f1, f2, f1	# 1772
	lui		x4, %hi(l.27103)	# 1773
	ori		x4, x0, %lo(l.27103)	# 1773
	flw		f2, 0(x4)	# 1773
	fadd	f3, f0, f17	# 1773
	flw		f4, -160(x2)	# 1773
	fsub	f4, f3, f4	# 1773
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1773
	fsub	f1, f3, f1	# 1773
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1773
	flw		f2, -60(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.32315	# 122
	jal		x0, fle_cont.32314	# 122
fle_else.32315:
	fadd	f1, f0, f2	# 1774
fle_cont.32314:
	flw		f3, -48(x2)	# 1775
	fmul	f1, f3, f1	# 1775
	fadd	f3, f0, f27	# 1775
	fdiv	f1, f1, f3	# 1775
	lw		x4, -16(x2)	# 1775
	mul		x5, x30, x4	# 1775
	addi	x5, x5, 60580	# 1775
	fsw		f1, 0(x5)	# 1775
beq_cont.32298:
	jal		x0, beq_cont.32296	# 1738
beq.32297:
	mul		x7, x30, x4	# 1741
	addi	x7, x7, 60552	# 1741
	flw		f1, 0(x7)	# 1741
	lw		x7, 20(x5)	# 431
	mul		x8, x30, x4	# 436
	add		x7, x7, x8	# 436
	flw		f2, 0(x7)	# 436
	fsub	f1, f1, f2	# 1741
	mul		x7, x30, x10	# 1742
	addi	x7, x7, 60552	# 1742
	flw		f2, 0(x7)	# 1742
	lw		x7, 20(x5)	# 451
	mul		x8, x30, x10	# 456
	add		x7, x7, x8	# 456
	flw		f3, 0(x7)	# 456
	fsub	f2, f2, f3	# 1742
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1743
	fsqrt	f1, f1	# 1743
	fadd	f2, f0, f22	# 1743
	fdiv	f1, f1, f2	# 1743
	flw		f2, -60(x2)	# 137
	fsw		f1, -168(x2)	# 137
	fle		x31, f2, f1	# 137
	beq		x31, x0, fle_else.32317	# 137
	lw		x29, -56(x2)	# 137
	sw		x1, -172(x2)	# 137
	addi	x2, x2, -176	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 176	# 137
	lw		x1, -172(x2)	# 137
	lw		x29, -52(x2)	# 137
	sw		x1, -172(x2)	# 137
	addi	x2, x2, -176	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 176	# 137
	lw		x1, -172(x2)	# 137
	jal		x0, fle_cont.32316	# 137
fle_else.32317:
	lw		x29, -56(x2)	# 138
	sw		x1, -172(x2)	# 138
	addi	x2, x2, -176	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 176	# 138
	lw		x1, -172(x2)	# 138
	lw		x5, -64(x2)	# 138
	sub		x4, x4, x5	# 138
	lw		x29, -52(x2)	# 138
	sw		x1, -172(x2)	# 138
	addi	x2, x2, -176	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 176	# 138
	lw		x1, -172(x2)	# 138
fle_cont.32316:
	flw		f2, -168(x2)	# 1744
	fsub	f1, f2, f1	# 1744
	fadd	f2, f0, f19	# 1744
	fmul	f1, f1, f2	# 1744
	lw		x29, -36(x2)	# 1745
	sw		x1, -172(x2)	# 1745
	addi	x2, x2, -176	# 1745
	lw		x31, 0(x29)	# 1745
	jalr	x1, x31, 0	# 1745
	addi	x2, x2, 176	# 1745
	lw		x1, -172(x2)	# 1745
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1746
	fmul	f3, f1, f2	# 1746
	lw		x4, -64(x2)	# 1746
	mul		x5, x30, x4	# 1746
	addi	x5, x5, 60580	# 1746
	fsw		f3, 0(x5)	# 1746
	fadd	f3, f0, f16	# 1747
	fsub	f1, f3, f1	# 1747
	fmul	f1, f1, f2	# 1747
	lw		x5, -16(x2)	# 1747
	mul		x6, x30, x5	# 1747
	addi	x6, x6, 60580	# 1747
	fsw		f1, 0(x6)	# 1747
beq_cont.32296:
	jal		x0, beq_cont.32294	# 1731
beq.32295:
	mul		x7, x30, x9	# 1734
	addi	x7, x7, 60552	# 1734
	flw		f1, 0(x7)	# 1734
	fadd	f2, f0, f26	# 1734
	fmul	f1, f1, f2	# 1734
	lw		x29, -44(x2)	# 1734
	sw		x1, -172(x2)	# 1734
	addi	x2, x2, -176	# 1734
	lw		x31, 0(x29)	# 1734
	jalr	x1, x31, 0	# 1734
	addi	x2, x2, 176	# 1734
	lw		x1, -172(x2)	# 1734
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1735
	fmul	f3, f2, f1	# 1735
	lw		x4, -72(x2)	# 1735
	mul		x5, x30, x4	# 1735
	addi	x5, x5, 60580	# 1735
	fsw		f3, 0(x5)	# 1735
	fadd	f3, f0, f16	# 1736
	fsub	f1, f3, f1	# 1736
	fmul	f1, f2, f1	# 1736
	lw		x5, -64(x2)	# 1736
	mul		x6, x30, x5	# 1736
	addi	x6, x6, 60580	# 1736
	fsw		f1, 0(x6)	# 1736
beq_cont.32294:
	jal		x0, beq_cont.32292	# 1713
beq.32293:
	mul		x7, x30, x4	# 1716
	addi	x7, x7, 60552	# 1716
	flw		f1, 0(x7)	# 1716
	lw		x7, 20(x5)	# 431
	mul		x8, x30, x4	# 436
	add		x7, x7, x8	# 436
	flw		f2, 0(x7)	# 436
	fsub	f1, f1, f2	# 1716
	fadd	f2, f0, f28	# 1718
	fmul	f3, f1, f2	# 1718
	flw		f4, -60(x2)	# 137
	fsw		f2, -172(x2)	# 137
	fsw		f1, -176(x2)	# 137
	fle		x31, f4, f3	# 137
	beq		x31, x0, fle_else.32319	# 137
	lw		x29, -56(x2)	# 137
	fadd	f1, f0, f3
	sw		x1, -180(x2)	# 137
	addi	x2, x2, -184	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 184	# 137
	lw		x1, -180(x2)	# 137
	lw		x29, -52(x2)	# 137
	sw		x1, -180(x2)	# 137
	addi	x2, x2, -184	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 184	# 137
	lw		x1, -180(x2)	# 137
	jal		x0, fle_cont.32318	# 137
fle_else.32319:
	lw		x29, -56(x2)	# 138
	fadd	f1, f0, f3
	sw		x1, -180(x2)	# 138
	addi	x2, x2, -184	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 184	# 138
	lw		x1, -180(x2)	# 138
	lw		x5, -64(x2)	# 138
	sub		x4, x4, x5	# 138
	lw		x29, -52(x2)	# 138
	sw		x1, -180(x2)	# 138
	addi	x2, x2, -184	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 184	# 138
	lw		x1, -180(x2)	# 138
fle_cont.32318:
	fadd	f2, f0, f29	# 1718
	fmul	f1, f1, f2	# 1718
	flw		f3, -176(x2)	# 1719
	fsub	f1, f3, f1	# 1719
	fadd	f3, f0, f22	# 1719
	lw		x4, -16(x2)	# 1721
	mul		x5, x30, x4	# 1721
	addi	x5, x5, 60552	# 1721
	flw		f4, 0(x5)	# 1721
	lw		x5, -140(x2)	# 451
	lw		x6, 20(x5)	# 451
	mul		x7, x30, x4	# 456
	add		x6, x6, x7	# 456
	flw		f5, 0(x6)	# 456
	fsub	f4, f4, f5	# 1721
	flw		f5, -172(x2)	# 1723
	fmul	f5, f4, f5	# 1723
	flw		f6, -60(x2)	# 137
	fsw		f1, -180(x2)	# 137
	fsw		f3, -184(x2)	# 137
	fsw		f4, -188(x2)	# 137
	fsw		f2, -192(x2)	# 137
	fle		x31, f6, f5	# 137
	beq		x31, x0, fle_else.32321	# 137
	lw		x29, -56(x2)	# 137
	fadd	f1, f0, f5
	sw		x1, -196(x2)	# 137
	addi	x2, x2, -200	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 200	# 137
	lw		x1, -196(x2)	# 137
	lw		x29, -52(x2)	# 137
	sw		x1, -196(x2)	# 137
	addi	x2, x2, -200	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 200	# 137
	lw		x1, -196(x2)	# 137
	jal		x0, fle_cont.32320	# 137
fle_else.32321:
	lw		x29, -56(x2)	# 138
	fadd	f1, f0, f5
	sw		x1, -196(x2)	# 138
	addi	x2, x2, -200	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 200	# 138
	lw		x1, -196(x2)	# 138
	lw		x5, -64(x2)	# 138
	sub		x4, x4, x5	# 138
	lw		x29, -52(x2)	# 138
	sw		x1, -196(x2)	# 138
	addi	x2, x2, -200	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 200	# 138
	lw		x1, -196(x2)	# 138
fle_cont.32320:
	flw		f2, -192(x2)	# 1723
	fmul	f1, f1, f2	# 1723
	flw		f2, -188(x2)	# 1724
	fsub	f1, f2, f1	# 1724
	flw		f2, -180(x2)	# 125
	flw		f3, -184(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32323	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32325	# 125
	flw		f1, -48(x2)	# 1729
	jal		x0, fle_cont.32324	# 125
fle_else.32325:
	flw		f1, -60(x2)	# 1729
fle_cont.32324:
	jal		x0, fle_cont.32322	# 125
fle_else.32323:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32327	# 125
	flw		f1, -60(x2)	# 1728
	jal		x0, fle_cont.32326	# 125
fle_else.32327:
	flw		f1, -48(x2)	# 1728
fle_cont.32326:
fle_cont.32322:
	lw		x4, -64(x2)	# 1726
	mul		x5, x30, x4	# 1726
	addi	x5, x5, 60580	# 1726
	fsw		f1, 0(x5)	# 1726
beq_cont.32292:
	addi	x4, x0, 0	# 1933
	addi	x5, x0, 0	# 1933
	mul		x5, x30, x5	# 1933
	addi	x5, x5, 60536	# 1933
	lw		x5, 0(x5)	# 1933
	lw		x29, -28(x2)	# 1933
	sw		x1, -196(x2)	# 1933
	addi	x2, x2, -200	# 1933
	lw		x31, 0(x29)	# 1933
	jalr	x1, x31, 0	# 1933
	addi	x2, x2, 200	# 1933
	lw		x1, -196(x2)	# 1933
	lw		x5, -144(x2)	# 1933
	beq		x4, x5, beq.32329	# 1933
	jal		x0, beq_cont.32328	# 1933
beq.32329:
	lw		x4, -72(x2)	# 292
	mul		x5, x30, x4	# 292
	addi	x5, x5, 60568	# 292
	flw		f1, 0(x5)	# 292
	mul		x5, x30, x4	# 292
	addi	x5, x5, 60312	# 292
	flw		f2, 0(x5)	# 292
	fmul	f1, f1, f2	# 292
	lw		x5, -64(x2)	# 292
	mul		x6, x30, x5	# 292
	addi	x6, x6, 60568	# 292
	flw		f2, 0(x6)	# 292
	mul		x6, x30, x5	# 292
	addi	x6, x6, 60312	# 292
	flw		f3, 0(x6)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	lw		x6, -16(x2)	# 292
	mul		x7, x30, x6	# 292
	addi	x7, x7, 60568	# 292
	flw		f2, 0(x7)	# 292
	mul		x7, x30, x6	# 292
	addi	x7, x7, 60312	# 292
	flw		f3, 0(x7)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	fsub	f1, f0, f1	# 123
	flw		f2, -60(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_cont.32330	# 121
	fadd	f1, f0, f0	# 1935
fle_cont.32330:
	flw		f2, -132(x2)	# 1936
	fmul	f1, f2, f1	# 1936
	lw		x7, -140(x2)	# 461
	lw		x7, 28(x7)	# 461
	mul		x8, x30, x4	# 466
	add		x7, x7, x8	# 466
	flw		f2, 0(x7)	# 466
	fmul	f1, f1, f2	# 1936
	mul		x7, x30, x4	# 302
	addi	x7, x7, 60592	# 302
	flw		f2, 0(x7)	# 302
	mul		x7, x30, x4	# 302
	addi	x7, x7, 60580	# 302
	flw		f3, 0(x7)	# 302
	fmul	f3, f1, f3	# 302
	fadd	f2, f2, f3	# 302
	mul		x4, x30, x4	# 302
	addi	x4, x4, 60592	# 302
	fsw		f2, 0(x4)	# 302
	mul		x4, x30, x5	# 303
	addi	x4, x4, 60592	# 303
	flw		f2, 0(x4)	# 303
	mul		x4, x30, x5	# 303
	addi	x4, x4, 60580	# 303
	flw		f3, 0(x4)	# 303
	fmul	f3, f1, f3	# 303
	fadd	f2, f2, f3	# 303
	mul		x4, x30, x5	# 303
	addi	x4, x4, 60592	# 303
	fsw		f2, 0(x4)	# 303
	mul		x4, x30, x6	# 304
	addi	x4, x4, 60592	# 304
	flw		f2, 0(x4)	# 304
	mul		x4, x30, x6	# 304
	addi	x4, x4, 60580	# 304
	flw		f3, 0(x4)	# 304
	fmul	f1, f1, f3	# 304
	fadd	f1, f2, f1	# 304
	mul		x4, x30, x6	# 304
	addi	x4, x4, 60592	# 304
	fsw		f1, 0(x4)	# 304
beq_cont.32328:
beq_cont.32277:
fle_cont.32213:
	lw		x4, -16(x2)	# 1954
	lw		x5, -20(x2)	# 1954
	sub		x7, x5, x4	# 1954
	lw		x4, -8(x2)	# 1954
	lw		x5, -4(x2)	# 1954
	lw		x6, 0(x2)	# 1954
	lw		x29, -12(x2)	# 1954
	lw		x31, 0(x29)	# 1954
	jalr	x0, x31, 0	# 1954
do_without_neighbors.2902.17771:
	lw		x6, 24(x29)	# 2035
	lw		x7, 20(x29)	# 2035
	lw		x8, 16(x29)	# 2035
	lw		x9, 12(x29)	# 2035
	lw		x10, 8(x29)	# 2035
	lw		x11, 4(x29)	# 2035
	addi	x12, x0, 4	# 2035
	ble		x5, x12, ble.32331	# 2035
	jalr	x0, x1, 0	# 2045
ble.32331:
	lw		x12, 8(x4)	# 577
	mul		x13, x30, x5	# 2038
	add		x12, x12, x13	# 2038
	lw		x12, 0(x12)	# 2038
	ble		x10, x12, ble.32333	# 2038
	jalr	x0, x1, 0	# 2044
ble.32333:
	lw		x12, 12(x4)	# 584
	mul		x13, x30, x5	# 2040
	add		x12, x12, x13	# 2040
	lw		x12, 0(x12)	# 2040
	sw		x4, 0(x2)	# 2040
	sw		x29, -4(x2)	# 2040
	sw		x11, -8(x2)	# 2040
	sw		x5, -12(x2)	# 2040
	beq		x12, x10, beq_cont.32335	# 2040
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
	addi	x16, x16, 60592	# 259
	fsw		f1, 0(x16)	# 259
	mul		x16, x30, x11	# 260
	add		x16, x12, x16	# 260
	flw		f1, 0(x16)	# 260
	mul		x16, x30, x11	# 260
	addi	x16, x16, 60592	# 260
	fsw		f1, 0(x16)	# 260
	mul		x16, x30, x8	# 261
	add		x12, x12, x16	# 261
	flw		f1, 0(x12)	# 261
	mul		x12, x30, x8	# 261
	addi	x12, x12, 60592	# 261
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
	beq		x12, x10, beq_cont.32336	# 1971
	addi	x16, x0, 0	# 1972
	mul		x16, x30, x16	# 1972
	addi	x16, x16, 60716	# 1972
	lw		x16, 0(x16)	# 1972
	mul		x17, x30, x10	# 259
	add		x17, x14, x17	# 259
	flw		f1, 0(x17)	# 259
	mul		x17, x30, x10	# 259
	addi	x17, x17, 60648	# 259
	fsw		f1, 0(x17)	# 259
	mul		x17, x30, x11	# 260
	add		x17, x14, x17	# 260
	flw		f1, 0(x17)	# 260
	mul		x17, x30, x11	# 260
	addi	x17, x17, 60648	# 260
	fsw		f1, 0(x17)	# 260
	mul		x17, x30, x8	# 261
	add		x17, x14, x17	# 261
	flw		f1, 0(x17)	# 261
	mul		x17, x30, x8	# 261
	addi	x17, x17, 60648	# 261
	fsw		f1, 0(x17)	# 261
	mul		x17, x30, x10	# 1315
	addi	x17, x17, 60000	# 1315
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
beq_cont.32336:
	lw		x4, -8(x2)	# 1975
	lw		x5, -48(x2)	# 1975
	beq		x5, x4, beq_cont.32337	# 1975
	addi	x6, x0, 1	# 1976
	mul		x6, x30, x6	# 1976
	addi	x6, x6, 60716	# 1976
	lw		x6, 0(x6)	# 1976
	lw		x7, -44(x2)	# 259
	mul		x8, x30, x7	# 259
	lw		x9, -40(x2)	# 259
	add		x8, x9, x8	# 259
	flw		f1, 0(x8)	# 259
	mul		x8, x30, x7	# 259
	addi	x8, x8, 60648	# 259
	fsw		f1, 0(x8)	# 259
	mul		x8, x30, x4	# 260
	add		x8, x9, x8	# 260
	flw		f1, 0(x8)	# 260
	mul		x8, x30, x4	# 260
	addi	x8, x8, 60648	# 260
	fsw		f1, 0(x8)	# 260
	lw		x8, -36(x2)	# 261
	mul		x10, x30, x8	# 261
	add		x10, x9, x10	# 261
	flw		f1, 0(x10)	# 261
	mul		x10, x30, x8	# 261
	addi	x10, x10, 60648	# 261
	fsw		f1, 0(x10)	# 261
	mul		x10, x30, x7	# 1315
	addi	x10, x10, 60000	# 1315
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
beq_cont.32337:
	lw		x4, -36(x2)	# 1979
	lw		x5, -48(x2)	# 1979
	beq		x5, x4, beq_cont.32338	# 1979
	addi	x6, x0, 2	# 1980
	mul		x6, x30, x6	# 1980
	addi	x6, x6, 60716	# 1980
	lw		x6, 0(x6)	# 1980
	lw		x7, -44(x2)	# 259
	mul		x8, x30, x7	# 259
	lw		x9, -40(x2)	# 259
	add		x8, x9, x8	# 259
	flw		f1, 0(x8)	# 259
	mul		x8, x30, x7	# 259
	addi	x8, x8, 60648	# 259
	fsw		f1, 0(x8)	# 259
	lw		x8, -8(x2)	# 260
	mul		x10, x30, x8	# 260
	add		x10, x9, x10	# 260
	flw		f1, 0(x10)	# 260
	mul		x10, x30, x8	# 260
	addi	x10, x10, 60648	# 260
	fsw		f1, 0(x10)	# 260
	mul		x10, x30, x4	# 261
	add		x10, x9, x10	# 261
	flw		f1, 0(x10)	# 261
	mul		x10, x30, x4	# 261
	addi	x10, x10, 60648	# 261
	fsw		f1, 0(x10)	# 261
	mul		x10, x30, x7	# 1315
	addi	x10, x10, 60000	# 1315
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
beq_cont.32338:
	lw		x4, -20(x2)	# 1983
	lw		x5, -48(x2)	# 1983
	beq		x5, x4, beq_cont.32339	# 1983
	addi	x4, x0, 3	# 1984
	mul		x4, x30, x4	# 1984
	addi	x4, x4, 60716	# 1984
	lw		x4, 0(x4)	# 1984
	lw		x6, -44(x2)	# 259
	mul		x7, x30, x6	# 259
	lw		x8, -40(x2)	# 259
	add		x7, x8, x7	# 259
	flw		f1, 0(x7)	# 259
	mul		x7, x30, x6	# 259
	addi	x7, x7, 60648	# 259
	fsw		f1, 0(x7)	# 259
	lw		x7, -8(x2)	# 260
	mul		x9, x30, x7	# 260
	add		x9, x8, x9	# 260
	flw		f1, 0(x9)	# 260
	mul		x9, x30, x7	# 260
	addi	x9, x9, 60648	# 260
	fsw		f1, 0(x9)	# 260
	lw		x9, -36(x2)	# 261
	mul		x10, x30, x9	# 261
	add		x10, x8, x10	# 261
	flw		f1, 0(x10)	# 261
	mul		x10, x30, x9	# 261
	addi	x10, x10, 60648	# 261
	fsw		f1, 0(x10)	# 261
	mul		x10, x30, x6	# 1315
	addi	x10, x10, 60000	# 1315
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
beq_cont.32339:
	addi	x4, x0, 4	# 1987
	lw		x5, -48(x2)	# 1987
	beq		x5, x4, beq_cont.32340	# 1987
	mul		x4, x30, x4	# 1988
	addi	x4, x4, 60716	# 1988
	lw		x4, 0(x4)	# 1988
	lw		x5, -44(x2)	# 259
	mul		x6, x30, x5	# 259
	lw		x7, -40(x2)	# 259
	add		x6, x7, x6	# 259
	flw		f1, 0(x6)	# 259
	mul		x6, x30, x5	# 259
	addi	x6, x6, 60648	# 259
	fsw		f1, 0(x6)	# 259
	lw		x6, -8(x2)	# 260
	mul		x8, x30, x6	# 260
	add		x8, x7, x8	# 260
	flw		f1, 0(x8)	# 260
	mul		x8, x30, x6	# 260
	addi	x8, x8, 60648	# 260
	fsw		f1, 0(x8)	# 260
	lw		x8, -36(x2)	# 261
	mul		x9, x30, x8	# 261
	add		x9, x7, x9	# 261
	flw		f1, 0(x9)	# 261
	mul		x9, x30, x8	# 261
	addi	x9, x9, 60648	# 261
	fsw		f1, 0(x9)	# 261
	mul		x9, x30, x5	# 1315
	addi	x9, x9, 60000	# 1315
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
beq_cont.32340:
	lw		x4, -12(x2)	# 2007
	mul		x5, x30, x4	# 2007
	lw		x6, -16(x2)	# 2007
	add		x5, x6, x5	# 2007
	lw		x5, 0(x5)	# 2007
	lw		x6, -44(x2)	# 332
	mul		x7, x30, x6	# 332
	addi	x7, x7, 60604	# 332
	flw		f1, 0(x7)	# 332
	mul		x7, x30, x6	# 332
	add		x7, x5, x7	# 332
	flw		f2, 0(x7)	# 332
	mul		x7, x30, x6	# 332
	addi	x7, x7, 60592	# 332
	flw		f3, 0(x7)	# 332
	fmul	f2, f2, f3	# 332
	fadd	f1, f1, f2	# 332
	mul		x6, x30, x6	# 332
	addi	x6, x6, 60604	# 332
	fsw		f1, 0(x6)	# 332
	lw		x6, -8(x2)	# 333
	mul		x7, x30, x6	# 333
	addi	x7, x7, 60604	# 333
	flw		f1, 0(x7)	# 333
	mul		x7, x30, x6	# 333
	add		x7, x5, x7	# 333
	flw		f2, 0(x7)	# 333
	mul		x7, x30, x6	# 333
	addi	x7, x7, 60592	# 333
	flw		f3, 0(x7)	# 333
	fmul	f2, f2, f3	# 333
	fadd	f1, f1, f2	# 333
	mul		x7, x30, x6	# 333
	addi	x7, x7, 60604	# 333
	fsw		f1, 0(x7)	# 333
	lw		x7, -36(x2)	# 334
	mul		x8, x30, x7	# 334
	addi	x8, x8, 60604	# 334
	flw		f1, 0(x8)	# 334
	mul		x8, x30, x7	# 334
	add		x5, x5, x8	# 334
	flw		f2, 0(x5)	# 334
	mul		x5, x30, x7	# 334
	addi	x5, x5, 60592	# 334
	flw		f3, 0(x5)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	mul		x5, x30, x7	# 334
	addi	x5, x5, 60604	# 334
	fsw		f1, 0(x5)	# 334
beq_cont.32335:
	lw		x4, -8(x2)	# 2043
	lw		x5, -12(x2)	# 2043
	add		x5, x5, x4	# 2043
	lw		x4, 0(x2)	# 2043
	lw		x29, -4(x2)	# 2043
	lw		x31, 0(x29)	# 2043
	jalr	x0, x31, 0	# 2043
try_exploit_neighbors.2918.17774:
	lw		x10, 16(x29)	# 2087
	lw		x11, 12(x29)	# 2087
	lw		x12, 8(x29)	# 2087
	lw		x13, 4(x29)	# 2087
	mul		x14, x30, x4	# 2087
	add		x14, x7, x14	# 2087
	lw		x14, 0(x14)	# 2087
	addi	x15, x0, 4	# 2088
	ble		x9, x15, ble.32341	# 2088
	jalr	x0, x1, 0	# 2107
ble.32341:
	lw		x15, 8(x14)	# 577
	mul		x16, x30, x9	# 2063
	add		x15, x15, x16	# 2063
	lw		x15, 0(x15)	# 2063
	ble		x12, x15, ble.32343	# 2091
	jalr	x0, x1, 0	# 2106
ble.32343:
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
	beq		x16, x15, beq.32346	# 2071
	addi	x15, x0, 0	# 2079
	jal		x0, beq_cont.32345	# 2071
beq.32346:
	mul		x16, x30, x4	# 2072
	add		x16, x8, x16	# 2072
	lw		x16, 0(x16)	# 2072
	lw		x16, 8(x16)	# 577
	mul		x17, x30, x9	# 2063
	add		x16, x16, x17	# 2063
	lw		x16, 0(x16)	# 2063
	beq		x16, x15, beq.32348	# 2072
	addi	x15, x0, 0	# 2078
	jal		x0, beq_cont.32347	# 2072
beq.32348:
	sub		x16, x4, x13	# 2073
	mul		x16, x30, x16	# 2073
	add		x16, x7, x16	# 2073
	lw		x16, 0(x16)	# 2073
	lw		x16, 8(x16)	# 577
	mul		x17, x30, x9	# 2063
	add		x16, x16, x17	# 2063
	lw		x16, 0(x16)	# 2063
	beq		x16, x15, beq.32350	# 2073
	addi	x15, x0, 0	# 2077
	jal		x0, beq_cont.32349	# 2073
beq.32350:
	add		x16, x4, x13	# 2074
	mul		x16, x30, x16	# 2074
	add		x16, x7, x16	# 2074
	lw		x16, 0(x16)	# 2074
	lw		x16, 8(x16)	# 577
	mul		x17, x30, x9	# 2063
	add		x16, x16, x17	# 2063
	lw		x16, 0(x16)	# 2063
	beq		x16, x15, beq.32352	# 2074
	addi	x15, x0, 0	# 2076
	jal		x0, beq_cont.32351	# 2074
beq.32352:
	addi	x15, x0, 1	# 2075
beq_cont.32351:
beq_cont.32349:
beq_cont.32347:
beq_cont.32345:
	beq		x15, x12, beq.32353	# 2093
	lw		x10, 12(x14)	# 584
	mul		x14, x30, x9	# 2097
	add		x10, x10, x14	# 2097
	lw		x10, 0(x10)	# 2097
	beq		x10, x12, beq_cont.32354	# 2097
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
	addi	x18, x18, 60592	# 259
	fsw		f1, 0(x18)	# 259
	mul		x18, x30, x13	# 260
	add		x18, x10, x18	# 260
	flw		f1, 0(x18)	# 260
	mul		x18, x30, x13	# 260
	addi	x18, x18, 60592	# 260
	fsw		f1, 0(x18)	# 260
	mul		x18, x30, x11	# 261
	add		x10, x10, x18	# 261
	flw		f1, 0(x10)	# 261
	mul		x10, x30, x11	# 261
	addi	x10, x10, 60592	# 261
	fsw		f1, 0(x10)	# 261
	mul		x10, x30, x9	# 2023
	add		x10, x14, x10	# 2023
	lw		x10, 0(x10)	# 2023
	mul		x14, x30, x12	# 309
	addi	x14, x14, 60592	# 309
	flw		f1, 0(x14)	# 309
	mul		x14, x30, x12	# 309
	add		x14, x10, x14	# 309
	flw		f2, 0(x14)	# 309
	fadd	f1, f1, f2	# 309
	mul		x14, x30, x12	# 309
	addi	x14, x14, 60592	# 309
	fsw		f1, 0(x14)	# 309
	mul		x14, x30, x13	# 310
	addi	x14, x14, 60592	# 310
	flw		f1, 0(x14)	# 310
	mul		x14, x30, x13	# 310
	add		x14, x10, x14	# 310
	flw		f2, 0(x14)	# 310
	fadd	f1, f1, f2	# 310
	mul		x14, x30, x13	# 310
	addi	x14, x14, 60592	# 310
	fsw		f1, 0(x14)	# 310
	mul		x14, x30, x11	# 311
	addi	x14, x14, 60592	# 311
	flw		f1, 0(x14)	# 311
	mul		x14, x30, x11	# 311
	add		x10, x10, x14	# 311
	flw		f2, 0(x10)	# 311
	fadd	f1, f1, f2	# 311
	mul		x10, x30, x11	# 311
	addi	x10, x10, 60592	# 311
	fsw		f1, 0(x10)	# 311
	mul		x10, x30, x9	# 2024
	add		x10, x15, x10	# 2024
	lw		x10, 0(x10)	# 2024
	mul		x14, x30, x12	# 309
	addi	x14, x14, 60592	# 309
	flw		f1, 0(x14)	# 309
	mul		x14, x30, x12	# 309
	add		x14, x10, x14	# 309
	flw		f2, 0(x14)	# 309
	fadd	f1, f1, f2	# 309
	mul		x14, x30, x12	# 309
	addi	x14, x14, 60592	# 309
	fsw		f1, 0(x14)	# 309
	mul		x14, x30, x13	# 310
	addi	x14, x14, 60592	# 310
	flw		f1, 0(x14)	# 310
	mul		x14, x30, x13	# 310
	add		x14, x10, x14	# 310
	flw		f2, 0(x14)	# 310
	fadd	f1, f1, f2	# 310
	mul		x14, x30, x13	# 310
	addi	x14, x14, 60592	# 310
	fsw		f1, 0(x14)	# 310
	mul		x14, x30, x11	# 311
	addi	x14, x14, 60592	# 311
	flw		f1, 0(x14)	# 311
	mul		x14, x30, x11	# 311
	add		x10, x10, x14	# 311
	flw		f2, 0(x10)	# 311
	fadd	f1, f1, f2	# 311
	mul		x10, x30, x11	# 311
	addi	x10, x10, 60592	# 311
	fsw		f1, 0(x10)	# 311
	mul		x10, x30, x9	# 2025
	add		x10, x16, x10	# 2025
	lw		x10, 0(x10)	# 2025
	mul		x14, x30, x12	# 309
	addi	x14, x14, 60592	# 309
	flw		f1, 0(x14)	# 309
	mul		x14, x30, x12	# 309
	add		x14, x10, x14	# 309
	flw		f2, 0(x14)	# 309
	fadd	f1, f1, f2	# 309
	mul		x14, x30, x12	# 309
	addi	x14, x14, 60592	# 309
	fsw		f1, 0(x14)	# 309
	mul		x14, x30, x13	# 310
	addi	x14, x14, 60592	# 310
	flw		f1, 0(x14)	# 310
	mul		x14, x30, x13	# 310
	add		x14, x10, x14	# 310
	flw		f2, 0(x14)	# 310
	fadd	f1, f1, f2	# 310
	mul		x14, x30, x13	# 310
	addi	x14, x14, 60592	# 310
	fsw		f1, 0(x14)	# 310
	mul		x14, x30, x11	# 311
	addi	x14, x14, 60592	# 311
	flw		f1, 0(x14)	# 311
	mul		x14, x30, x11	# 311
	add		x10, x10, x14	# 311
	flw		f2, 0(x10)	# 311
	fadd	f1, f1, f2	# 311
	mul		x10, x30, x11	# 311
	addi	x10, x10, 60592	# 311
	fsw		f1, 0(x10)	# 311
	mul		x10, x30, x9	# 2026
	add		x10, x17, x10	# 2026
	lw		x10, 0(x10)	# 2026
	mul		x14, x30, x12	# 309
	addi	x14, x14, 60592	# 309
	flw		f1, 0(x14)	# 309
	mul		x14, x30, x12	# 309
	add		x14, x10, x14	# 309
	flw		f2, 0(x14)	# 309
	fadd	f1, f1, f2	# 309
	mul		x14, x30, x12	# 309
	addi	x14, x14, 60592	# 309
	fsw		f1, 0(x14)	# 309
	mul		x14, x30, x13	# 310
	addi	x14, x14, 60592	# 310
	flw		f1, 0(x14)	# 310
	mul		x14, x30, x13	# 310
	add		x14, x10, x14	# 310
	flw		f2, 0(x14)	# 310
	fadd	f1, f1, f2	# 310
	mul		x14, x30, x13	# 310
	addi	x14, x14, 60592	# 310
	fsw		f1, 0(x14)	# 310
	mul		x14, x30, x11	# 311
	addi	x14, x14, 60592	# 311
	flw		f1, 0(x14)	# 311
	mul		x14, x30, x11	# 311
	add		x10, x10, x14	# 311
	flw		f2, 0(x10)	# 311
	fadd	f1, f1, f2	# 311
	mul		x10, x30, x11	# 311
	addi	x10, x10, 60592	# 311
	fsw		f1, 0(x10)	# 311
	mul		x10, x30, x4	# 2028
	add		x10, x7, x10	# 2028
	lw		x10, 0(x10)	# 2028
	lw		x10, 16(x10)	# 591
	mul		x14, x30, x9	# 2029
	add		x10, x10, x14	# 2029
	lw		x10, 0(x10)	# 2029
	mul		x14, x30, x12	# 332
	addi	x14, x14, 60604	# 332
	flw		f1, 0(x14)	# 332
	mul		x14, x30, x12	# 332
	add		x14, x10, x14	# 332
	flw		f2, 0(x14)	# 332
	mul		x14, x30, x12	# 332
	addi	x14, x14, 60592	# 332
	flw		f3, 0(x14)	# 332
	fmul	f2, f2, f3	# 332
	fadd	f1, f1, f2	# 332
	mul		x12, x30, x12	# 332
	addi	x12, x12, 60604	# 332
	fsw		f1, 0(x12)	# 332
	mul		x12, x30, x13	# 333
	addi	x12, x12, 60604	# 333
	flw		f1, 0(x12)	# 333
	mul		x12, x30, x13	# 333
	add		x12, x10, x12	# 333
	flw		f2, 0(x12)	# 333
	mul		x12, x30, x13	# 333
	addi	x12, x12, 60592	# 333
	flw		f3, 0(x12)	# 333
	fmul	f2, f2, f3	# 333
	fadd	f1, f1, f2	# 333
	mul		x12, x30, x13	# 333
	addi	x12, x12, 60604	# 333
	fsw		f1, 0(x12)	# 333
	mul		x12, x30, x11	# 334
	addi	x12, x12, 60604	# 334
	flw		f1, 0(x12)	# 334
	mul		x12, x30, x11	# 334
	add		x10, x10, x12	# 334
	flw		f2, 0(x10)	# 334
	mul		x10, x30, x11	# 334
	addi	x10, x10, 60592	# 334
	flw		f3, 0(x10)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	mul		x10, x30, x11	# 334
	addi	x10, x10, 60604	# 334
	fsw		f1, 0(x10)	# 334
beq_cont.32354:
	add		x9, x9, x13	# 2102
	lw		x31, 0(x29)	# 2102
	jalr	x0, x31, 0	# 2102
beq.32353:
	addi	x5, x9, 0
	addi	x4, x14, 0
	addi	x29, x10, 0
	lw		x31, 0(x29)	# 2105
	jalr	x0, x31, 0	# 2105
pretrace_diffuse_rays.2933.17781:
	lw		x6, 20(x29)	# 2163
	lw		x7, 16(x29)	# 2163
	lw		x8, 12(x29)	# 2163
	lw		x9, 8(x29)	# 2163
	lw		x10, 4(x29)	# 2163
	addi	x11, x0, 4	# 2163
	ble		x5, x11, ble.32355	# 2163
	jalr	x0, x1, 0	# 2187
ble.32355:
	lw		x11, 8(x4)	# 577
	mul		x12, x30, x5	# 2063
	add		x11, x11, x12	# 2063
	lw		x11, 0(x11)	# 2063
	ble		x9, x11, ble.32357	# 2167
	jalr	x0, x1, 0	# 2186
ble.32357:
	lw		x11, 12(x4)	# 584
	mul		x12, x30, x5	# 2170
	add		x11, x11, x12	# 2170
	lw		x11, 0(x11)	# 2170
	sw		x29, 0(x2)	# 2170
	sw		x10, -4(x2)	# 2170
	sw		x5, -8(x2)	# 2170
	beq		x11, x9, beq_cont.32359	# 2170
	lw		x11, 24(x4)	# 614
	addi	x12, x0, 0	# 616
	mul		x12, x30, x12	# 616
	add		x11, x11, x12	# 616
	lw		x11, 0(x11)	# 616
	fadd	f1, f0, f0	# 254
	mul		x12, x30, x9	# 247
	addi	x12, x12, 60592	# 247
	fsw		f1, 0(x12)	# 247
	mul		x12, x30, x10	# 248
	addi	x12, x12, 60592	# 248
	fsw		f1, 0(x12)	# 248
	mul		x8, x30, x8	# 249
	addi	x8, x8, 60592	# 249
	fsw		f1, 0(x8)	# 249
	lw		x8, 28(x4)	# 628
	lw		x12, 4(x4)	# 569
	mul		x11, x30, x11	# 2179
	addi	x11, x11, 60716	# 2179
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
	addi	x13, x13, 60648	# 259
	fsw		f1, 0(x13)	# 259
	addi	x13, x0, 1	# 260
	addi	x14, x0, 1	# 260
	mul		x14, x30, x14	# 260
	add		x14, x12, x14	# 260
	flw		f1, 0(x14)	# 260
	mul		x13, x30, x13	# 260
	addi	x13, x13, 60648	# 260
	fsw		f1, 0(x13)	# 260
	addi	x13, x0, 2	# 261
	mul		x14, x30, x13	# 261
	add		x14, x12, x14	# 261
	flw		f1, 0(x14)	# 261
	mul		x13, x30, x13	# 261
	addi	x13, x13, 60648	# 261
	fsw		f1, 0(x13)	# 261
	mul		x9, x30, x9	# 1315
	addi	x9, x9, 60000	# 1315
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
	addi	x8, x8, 60592	# 259
	flw		f1, 0(x8)	# 259
	mul		x7, x30, x7	# 259
	add		x7, x5, x7	# 259
	fsw		f1, 0(x7)	# 259
	addi	x7, x0, 1	# 260
	addi	x8, x0, 1	# 260
	mul		x8, x30, x8	# 260
	addi	x8, x8, 60592	# 260
	flw		f1, 0(x8)	# 260
	mul		x7, x30, x7	# 260
	add		x7, x5, x7	# 260
	fsw		f1, 0(x7)	# 260
	addi	x7, x0, 2	# 261
	mul		x8, x30, x7	# 261
	addi	x8, x8, 60592	# 261
	flw		f1, 0(x8)	# 261
	mul		x7, x30, x7	# 261
	add		x5, x5, x7	# 261
	fsw		f1, 0(x5)	# 261
beq_cont.32359:
	lw		x5, -4(x2)	# 2185
	lw		x6, -8(x2)	# 2185
	add		x5, x6, x5	# 2185
	lw		x29, 0(x2)	# 2185
	lw		x31, 0(x29)	# 2185
	jalr	x0, x31, 0	# 2185
pretrace_pixels.2936.17784:
	lw		x7, 32(x29)	# 2193
	lw		x8, 28(x29)	# 2193
	lw		x9, 24(x29)	# 2193
	lw		x10, 20(x29)	# 2193
	lw		x11, 16(x29)	# 2193
	lw		x12, 12(x29)	# 2193
	lw		x13, 8(x29)	# 2193
	flw		f4, 4(x29)	# 2193
	ble		x12, x5, ble.32360	# 2193
	jalr	x0, x1, 0	# 2213
ble.32360:
	mul		x14, x30, x12	# 2195
	addi	x14, x14, 60632	# 2195
	flw		f5, 0(x14)	# 2195
	mul		x14, x30, x12	# 2195
	addi	x14, x14, 60624	# 2195
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
	addi	x5, x5, 60660	# 2196
	flw		f2, 0(x5)	# 2196
	fmul	f2, f1, f2	# 2196
	flw		f3, -48(x2)	# 2196
	fadd	f2, f2, f3	# 2196
	mul		x5, x30, x4	# 2196
	addi	x5, x5, 60696	# 2196
	fsw		f2, 0(x5)	# 2196
	lw		x5, -44(x2)	# 2197
	mul		x6, x30, x5	# 2197
	addi	x6, x6, 60660	# 2197
	flw		f2, 0(x6)	# 2197
	fmul	f2, f1, f2	# 2197
	flw		f4, -40(x2)	# 2197
	fadd	f2, f2, f4	# 2197
	mul		x6, x30, x5	# 2197
	addi	x6, x6, 60696	# 2197
	fsw		f2, 0(x6)	# 2197
	lw		x6, -36(x2)	# 2198
	mul		x7, x30, x6	# 2198
	addi	x7, x7, 60660	# 2198
	flw		f2, 0(x7)	# 2198
	fmul	f1, f1, f2	# 2198
	flw		f2, -32(x2)	# 2198
	fadd	f1, f1, f2	# 2198
	mul		x7, x30, x6	# 2198
	addi	x7, x7, 60696	# 2198
	fsw		f1, 0(x7)	# 2198
	mul		x7, x30, x4	# 283
	addi	x7, x7, 60696	# 283
	flw		f1, 0(x7)	# 283
	fmul	f1, f1, f1	# 127
	mul		x7, x30, x5	# 283
	addi	x7, x7, 60696	# 283
	flw		f5, 0(x7)	# 283
	fmul	f5, f5, f5	# 127
	fadd	f1, f1, f5	# 283
	mul		x7, x30, x6	# 283
	addi	x7, x7, 60696	# 283
	flw		f5, 0(x7)	# 283
	fmul	f5, f5, f5	# 127
	fadd	f1, f1, f5	# 283
	fsqrt	f1, f1	# 283
	flw		f5, -28(x2)	# 120
	feq		x31, f1, f5	# 120
	beq		x31, x0, feq_else.32363	# 120
	fadd	f1, f0, f16	# 284
	jal		x0, feq_cont.32362	# 120
feq_else.32363:
	fadd	f6, f0, f16	# 284
	fdiv	f1, f6, f1	# 284
feq_cont.32362:
	mul		x7, x30, x4	# 285
	addi	x7, x7, 60696	# 285
	flw		f6, 0(x7)	# 285
	fmul	f6, f6, f1	# 285
	mul		x7, x30, x4	# 285
	addi	x7, x7, 60696	# 285
	fsw		f6, 0(x7)	# 285
	mul		x7, x30, x5	# 286
	addi	x7, x7, 60696	# 286
	flw		f6, 0(x7)	# 286
	fmul	f6, f6, f1	# 286
	mul		x7, x30, x5	# 286
	addi	x7, x7, 60696	# 286
	fsw		f6, 0(x7)	# 286
	mul		x7, x30, x6	# 287
	addi	x7, x7, 60696	# 287
	flw		f6, 0(x7)	# 287
	fmul	f1, f6, f1	# 287
	mul		x7, x30, x6	# 287
	addi	x7, x7, 60696	# 287
	fsw		f1, 0(x7)	# 287
	mul		x7, x30, x4	# 247
	addi	x7, x7, 60604	# 247
	fsw		f5, 0(x7)	# 247
	mul		x7, x30, x5	# 248
	addi	x7, x7, 60604	# 248
	fsw		f5, 0(x7)	# 248
	mul		x7, x30, x6	# 249
	addi	x7, x7, 60604	# 249
	fsw		f5, 0(x7)	# 249
	mul		x7, x30, x4	# 259
	addi	x7, x7, 60300	# 259
	flw		f1, 0(x7)	# 259
	mul		x7, x30, x4	# 259
	addi	x7, x7, 60636	# 259
	fsw		f1, 0(x7)	# 259
	mul		x7, x30, x5	# 260
	addi	x7, x7, 60300	# 260
	flw		f1, 0(x7)	# 260
	mul		x7, x30, x5	# 260
	addi	x7, x7, 60636	# 260
	fsw		f1, 0(x7)	# 260
	mul		x7, x30, x6	# 261
	addi	x7, x7, 60300	# 261
	flw		f1, 0(x7)	# 261
	mul		x7, x30, x6	# 261
	addi	x7, x7, 60636	# 261
	fsw		f1, 0(x7)	# 261
	fadd	f1, f0, f16	# 2204
	lw		x7, -24(x2)	# 2204
	mul		x8, x30, x7	# 2204
	lw		x9, -20(x2)	# 2204
	add		x8, x9, x8	# 2204
	lw		x8, 0(x8)	# 2204
	addi	x10, x0, 60696	# 2204
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
	addi	x8, x8, 60604	# 259
	flw		f1, 0(x8)	# 259
	mul		x8, x30, x7	# 259
	add		x8, x5, x8	# 259
	fsw		f1, 0(x8)	# 259
	lw		x8, -44(x2)	# 260
	mul		x9, x30, x8	# 260
	addi	x9, x9, 60604	# 260
	flw		f1, 0(x9)	# 260
	mul		x9, x30, x8	# 260
	add		x9, x5, x9	# 260
	fsw		f1, 0(x9)	# 260
	lw		x9, -36(x2)	# 261
	mul		x10, x30, x9	# 261
	addi	x10, x10, 60604	# 261
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
	ble		x6, x4, ble.32365	# 225
	addi	x6, x4, 0	# 225
	jal		x0, ble_cont.32364	# 225
ble.32365:
	sub		x6, x4, x6	# 225
ble_cont.32364:
	flw		f1, -48(x2)	# 2211
	flw		f2, -40(x2)	# 2211
	flw		f3, -32(x2)	# 2211
	lw		x4, -20(x2)	# 2211
	lw		x29, 0(x2)	# 2211
	lw		x31, 0(x29)	# 2211
	jalr	x0, x31, 0	# 2211
scan_pixel.2947.17791:
	lw		x10, 28(x29)	# 2234
	lw		x11, 24(x29)	# 2234
	lw		x12, 20(x29)	# 2234
	lw		x13, 16(x29)	# 2234
	lw		x14, 12(x29)	# 2234
	lw		x15, 8(x29)	# 2234
	lw		x16, 4(x29)	# 2234
	mul		x17, x30, x15	# 2234
	addi	x17, x17, 60616	# 2234
	lw		x17, 0(x17)	# 2234
	ble		x17, x4, ble.32366	# 2234
	mul		x17, x30, x4	# 2237
	add		x17, x7, x17	# 2237
	lw		x17, 0(x17)	# 2237
	lw		x17, 0(x17)	# 562
	mul		x18, x30, x15	# 259
	add		x18, x17, x18	# 259
	flw		f1, 0(x18)	# 259
	mul		x18, x30, x15	# 259
	addi	x18, x18, 60604	# 259
	fsw		f1, 0(x18)	# 259
	mul		x18, x30, x16	# 260
	add		x18, x17, x18	# 260
	flw		f1, 0(x18)	# 260
	mul		x18, x30, x16	# 260
	addi	x18, x18, 60604	# 260
	fsw		f1, 0(x18)	# 260
	mul		x18, x30, x13	# 261
	add		x17, x17, x18	# 261
	flw		f1, 0(x17)	# 261
	mul		x13, x30, x13	# 261
	addi	x13, x13, 60604	# 261
	fsw		f1, 0(x13)	# 261
	mul		x13, x30, x16	# 2050
	addi	x13, x13, 60616	# 2050
	lw		x13, 0(x13)	# 2050
	add		x17, x5, x16	# 2050
	ble		x13, x17, ble.32368	# 2050
	ble		x5, x15, ble.32370	# 2051
	mul		x13, x30, x15	# 2052
	addi	x13, x13, 60616	# 2052
	lw		x13, 0(x13)	# 2052
	add		x17, x4, x16	# 2052
	ble		x13, x17, ble.32372	# 2052
	ble		x4, x15, ble.32374	# 2053
	addi	x13, x0, 1	# 2054
	jal		x0, ble_cont.32373	# 2053
ble.32374:
	addi	x13, x0, 0	# 2055
ble_cont.32373:
	jal		x0, ble_cont.32371	# 2052
ble.32372:
	addi	x13, x0, 0	# 2056
ble_cont.32371:
	jal		x0, ble_cont.32369	# 2051
ble.32370:
	addi	x13, x0, 0	# 2057
ble_cont.32369:
	jal		x0, ble_cont.32367	# 2050
ble.32368:
	addi	x13, x0, 0	# 2058
ble_cont.32367:
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
	beq		x13, x15, beq.32376	# 2240
	addi	x12, x0, 0	# 2241
	addi	x9, x12, 0
	addi	x29, x10, 0
	sw		x1, -44(x2)	# 2241
	addi	x2, x2, -48	# 2241
	lw		x31, 0(x29)	# 2241
	jalr	x1, x31, 0	# 2241
	addi	x2, x2, 48	# 2241
	lw		x1, -44(x2)	# 2241
	jal		x0, beq_cont.32375	# 2240
beq.32376:
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
beq_cont.32375:
	lw		x4, -36(x2)	# 2140
	lw		x5, -40(x2)	# 2140
	beq		x5, x4, beq.32378	# 2140
	addi	x4, x0, 0	# 2148
	mul		x4, x30, x4	# 2148
	addi	x4, x4, 60604	# 2148
	flw		f1, 0(x4)	# 2148
	lw		x29, -32(x2)	# 2134
	sw		x1, -44(x2)	# 2134
	addi	x2, x2, -48	# 2134
	lw		x31, 0(x29)	# 2134
	jalr	x1, x31, 0	# 2134
	addi	x2, x2, 48	# 2134
	lw		x1, -44(x2)	# 2134
	addi	x5, x0, 255	# 2135
	ble		x4, x5, ble.32380	# 2135
	addi	x4, x0, 255	# 2135
	jal		x0, ble_cont.32379	# 2135
ble.32380:
	lw		x5, -28(x2)	# 2135
	ble		x5, x4, ble_cont.32381	# 2135
	addi	x4, x0, 0	# 2135
ble_cont.32381:
ble_cont.32379:
	sw		x1, -44(x2)	# 2136
	addi	x2, x2, -48	# 2136
	jal		x1, min_caml_print_char	# 2136
	addi	x2, x2, 48	# 2136
	lw		x1, -44(x2)	# 2136
	addi	x4, x0, 1	# 2149
	mul		x4, x30, x4	# 2149
	addi	x4, x4, 60604	# 2149
	flw		f1, 0(x4)	# 2149
	lw		x29, -32(x2)	# 2134
	sw		x1, -44(x2)	# 2134
	addi	x2, x2, -48	# 2134
	lw		x31, 0(x29)	# 2134
	jalr	x1, x31, 0	# 2134
	addi	x2, x2, 48	# 2134
	lw		x1, -44(x2)	# 2134
	addi	x5, x0, 255	# 2135
	ble		x4, x5, ble.32383	# 2135
	addi	x4, x0, 255	# 2135
	jal		x0, ble_cont.32382	# 2135
ble.32383:
	lw		x5, -28(x2)	# 2135
	ble		x5, x4, ble_cont.32384	# 2135
	addi	x4, x0, 0	# 2135
ble_cont.32384:
ble_cont.32382:
	sw		x1, -44(x2)	# 2136
	addi	x2, x2, -48	# 2136
	jal		x1, min_caml_print_char	# 2136
	addi	x2, x2, 48	# 2136
	lw		x1, -44(x2)	# 2136
	addi	x4, x0, 2	# 2150
	mul		x4, x30, x4	# 2150
	addi	x4, x4, 60604	# 2150
	flw		f1, 0(x4)	# 2150
	lw		x29, -32(x2)	# 2134
	sw		x1, -44(x2)	# 2134
	addi	x2, x2, -48	# 2134
	lw		x31, 0(x29)	# 2134
	jalr	x1, x31, 0	# 2134
	addi	x2, x2, 48	# 2134
	lw		x1, -44(x2)	# 2134
	addi	x5, x0, 255	# 2135
	ble		x4, x5, ble.32386	# 2135
	addi	x4, x0, 255	# 2135
	jal		x0, ble_cont.32385	# 2135
ble.32386:
	lw		x5, -28(x2)	# 2135
	ble		x5, x4, ble_cont.32387	# 2135
	addi	x4, x0, 0	# 2135
ble_cont.32387:
ble_cont.32385:
	sw		x1, -44(x2)	# 2136
	addi	x2, x2, -48	# 2136
	jal		x1, min_caml_print_char	# 2136
	addi	x2, x2, 48	# 2136
	lw		x1, -44(x2)	# 2136
	jal		x0, beq_cont.32377	# 2140
beq.32378:
	addi	x4, x0, 0	# 2141
	mul		x4, x30, x4	# 2141
	addi	x4, x4, 60604	# 2141
	flw		f1, 0(x4)	# 2141
	lw		x29, -32(x2)	# 2128
	sw		x1, -44(x2)	# 2128
	addi	x2, x2, -48	# 2128
	lw		x31, 0(x29)	# 2128
	jalr	x1, x31, 0	# 2128
	addi	x2, x2, 48	# 2128
	lw		x1, -44(x2)	# 2128
	addi	x5, x0, 255	# 2129
	ble		x4, x5, ble.32389	# 2129
	addi	x4, x0, 255	# 2129
	jal		x0, ble_cont.32388	# 2129
ble.32389:
	lw		x5, -28(x2)	# 2129
	ble		x5, x4, ble_cont.32390	# 2129
	addi	x4, x0, 0	# 2129
ble_cont.32390:
ble_cont.32388:
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
	addi	x4, x4, 60604	# 2143
	flw		f1, 0(x4)	# 2143
	lw		x29, -32(x2)	# 2128
	sw		x1, -44(x2)	# 2128
	addi	x2, x2, -48	# 2128
	lw		x31, 0(x29)	# 2128
	jalr	x1, x31, 0	# 2128
	addi	x2, x2, 48	# 2128
	lw		x1, -44(x2)	# 2128
	addi	x5, x0, 255	# 2129
	ble		x4, x5, ble.32392	# 2129
	addi	x4, x0, 255	# 2129
	jal		x0, ble_cont.32391	# 2129
ble.32392:
	lw		x5, -28(x2)	# 2129
	ble		x5, x4, ble_cont.32393	# 2129
	addi	x4, x0, 0	# 2129
ble_cont.32393:
ble_cont.32391:
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
	addi	x4, x4, 60604	# 2145
	flw		f1, 0(x4)	# 2145
	lw		x29, -32(x2)	# 2128
	sw		x1, -44(x2)	# 2128
	addi	x2, x2, -48	# 2128
	lw		x31, 0(x29)	# 2128
	jalr	x1, x31, 0	# 2128
	addi	x2, x2, 48	# 2128
	lw		x1, -44(x2)	# 2128
	addi	x5, x0, 255	# 2129
	ble		x4, x5, ble.32395	# 2129
	addi	x4, x0, 255	# 2129
	jal		x0, ble_cont.32394	# 2129
ble.32395:
	lw		x5, -28(x2)	# 2129
	ble		x5, x4, ble_cont.32396	# 2129
	addi	x4, x0, 0	# 2129
ble_cont.32396:
ble_cont.32394:
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
beq_cont.32377:
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
ble.32366:
	jalr	x0, x1, 0	# 2249
scan_line.2954.17798:
	lw		x10, 28(x29)	# 2255
	lw		x11, 24(x29)	# 2255
	lw		x12, 20(x29)	# 2255
	lw		x13, 16(x29)	# 2255
	lw		x14, 12(x29)	# 2255
	lw		x15, 8(x29)	# 2255
	lw		x16, 4(x29)	# 2255
	mul		x17, x30, x16	# 2255
	addi	x17, x17, 60616	# 2255
	lw		x17, 0(x17)	# 2255
	ble		x17, x4, ble.32398	# 2255
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
	ble		x17, x4, ble_cont.32399	# 2257
	addi	x17, x4, 1	# 2258
	addi	x18, x0, 0	# 2218
	mul		x18, x30, x18	# 2218
	addi	x18, x18, 60632	# 2218
	flw		f1, 0(x18)	# 2218
	addi	x18, x0, 1	# 2218
	mul		x18, x30, x18	# 2218
	addi	x18, x18, 60624	# 2218
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
	addi	x4, x4, 60672	# 2221
	flw		f2, 0(x4)	# 2221
	fmul	f2, f1, f2	# 2221
	addi	x4, x0, 0	# 2221
	mul		x4, x30, x4	# 2221
	addi	x4, x4, 60684	# 2221
	flw		f3, 0(x4)	# 2221
	fadd	f2, f2, f3	# 2221
	addi	x4, x0, 1	# 2222
	mul		x4, x30, x4	# 2222
	addi	x4, x4, 60672	# 2222
	flw		f3, 0(x4)	# 2222
	fmul	f3, f1, f3	# 2222
	addi	x4, x0, 1	# 2222
	mul		x4, x30, x4	# 2222
	addi	x4, x4, 60684	# 2222
	flw		f4, 0(x4)	# 2222
	fadd	f3, f3, f4	# 2222
	addi	x4, x0, 2	# 2223
	mul		x4, x30, x4	# 2223
	addi	x4, x4, 60672	# 2223
	flw		f4, 0(x4)	# 2223
	fmul	f1, f1, f4	# 2223
	addi	x4, x0, 2	# 2223
	mul		x4, x30, x4	# 2223
	addi	x4, x4, 60684	# 2223
	flw		f4, 0(x4)	# 2223
	fadd	f1, f1, f4	# 2223
	addi	x4, x0, 0	# 2224
	mul		x4, x30, x4	# 2224
	addi	x4, x4, 60616	# 2224
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
ble_cont.32399:
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
	ble		x6, x5, ble.32401	# 225
	addi	x8, x5, 0	# 225
	jal		x0, ble_cont.32400	# 225
ble.32401:
	sub		x8, x5, x6	# 225
ble_cont.32400:
	lw		x5, -28(x2)	# 2261
	lw		x6, -24(x2)	# 2261
	lw		x7, -32(x2)	# 2261
	lw		x9, -20(x2)	# 2261
	lw		x29, 0(x2)	# 2261
	lw		x31, 0(x29)	# 2261
	jalr	x0, x31, 0	# 2261
ble.32398:
	jalr	x0, x1, 0	# 2262
init_line_elements.2965.17805:
	lw		x6, 24(x29)	# 2297
	lw		x7, 20(x29)	# 2297
	lw		x8, 16(x29)	# 2297
	lw		x9, 12(x29)	# 2297
	lw		x10, 8(x29)	# 2297
	flw		f1, 4(x29)	# 2297
	ble		x9, x5, ble.32403	# 2297
	jalr	x0, x1, 0	# 2301
ble.32403:
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
calc_dirvec.2975.17808:
	lw		x7, 28(x29)	# 2334
	lw		x8, 24(x29)	# 2334
	lw		x9, 20(x29)	# 2334
	lw		x10, 16(x29)	# 2334
	lw		x11, 12(x29)	# 2334
	lw		x12, 8(x29)	# 2334
	lw		x13, 4(x29)	# 2334
	ble		x10, x4, ble.32404	# 2334
	fmul	f1, f2, f2	# 2325
	lui		x10, %hi(l.27321)	# 2325
	ori		x10, x0, %lo(l.27321)	# 2325
	flw		f2, 0(x10)	# 2325
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
ble.32404:
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
	addi	x4, x4, 60716	# 2341
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
calc_dirvecs.2983.17816:
	lw		x7, 28(x29)	# 2355
	lw		x8, 24(x29)	# 2355
	lw		x9, 20(x29)	# 2355
	lw		x10, 16(x29)	# 2355
	lw		x11, 12(x29)	# 2355
	lw		x12, 8(x29)	# 2355
	flw		f2, 4(x29)	# 2355
	ble		x11, x4, ble.32406	# 2355
	jalr	x0, x1, 0	# 2364
ble.32406:
	sw		x29, 0(x2)	# 2357
	sw		x9, -4(x2)	# 2357
	sw		x12, -8(x2)	# 2357
	sw		x4, -12(x2)	# 2357
	sw		x10, -16(x2)	# 2357
	fsw		f1, -20(x2)	# 2357
	fsw		f2, -24(x2)	# 2357
	sw		x6, -28(x2)	# 2357
	sw		x5, -32(x2)	# 2357
	sw		x11, -36(x2)	# 2357
	sw		x8, -40(x2)	# 2357
	addi	x29, x7, 0
	sw		x1, -44(x2)	# 2357
	addi	x2, x2, -48	# 2357
	lw		x31, 0(x29)	# 2357
	jalr	x1, x31, 0	# 2357
	addi	x2, x2, 48	# 2357
	lw		x1, -44(x2)	# 2357
	fadd	f2, f0, f30	# 2357
	fmul	f1, f1, f2	# 2357
	lui		x4, %hi(l.28375)	# 2357
	ori		x4, x0, %lo(l.28375)	# 2357
	flw		f2, 0(x4)	# 2357
	fsub	f3, f1, f2	# 2357
	flw		f2, -24(x2)	# 2358
	flw		f4, -20(x2)	# 2358
	lw		x4, -36(x2)	# 2358
	lw		x5, -32(x2)	# 2358
	lw		x6, -28(x2)	# 2358
	lw		x29, -40(x2)	# 2358
	fsw		f1, -44(x2)	# 2358
	fadd	f1, f0, f2
	sw		x1, -48(x2)	# 2358
	addi	x2, x2, -52	# 2358
	lw		x31, 0(x29)	# 2358
	jalr	x1, x31, 0	# 2358
	addi	x2, x2, 52	# 2358
	lw		x1, -48(x2)	# 2358
	lui		x4, %hi(l.27321)	# 2360
	ori		x4, x0, %lo(l.27321)	# 2360
	flw		f1, 0(x4)	# 2360
	flw		f2, -44(x2)	# 2360
	fadd	f3, f2, f1	# 2360
	lw		x4, -16(x2)	# 2361
	lw		x5, -28(x2)	# 2361
	add		x6, x5, x4	# 2361
	flw		f1, -24(x2)	# 2361
	flw		f4, -20(x2)	# 2361
	lw		x4, -36(x2)	# 2361
	lw		x7, -32(x2)	# 2361
	lw		x29, -40(x2)	# 2361
	addi	x5, x7, 0
	fadd	f2, f0, f1
	sw		x1, -48(x2)	# 2361
	addi	x2, x2, -52	# 2361
	lw		x31, 0(x29)	# 2361
	jalr	x1, x31, 0	# 2361
	addi	x2, x2, 52	# 2361
	lw		x1, -48(x2)	# 2361
	lw		x4, -8(x2)	# 2363
	lw		x5, -12(x2)	# 2363
	sub		x5, x5, x4	# 2363
	lw		x6, -32(x2)	# 224
	add		x4, x6, x4	# 224
	lw		x6, -4(x2)	# 225
	ble		x6, x4, ble.32409	# 225
	jal		x0, ble_cont.32408	# 225
ble.32409:
	sub		x4, x4, x6	# 225
ble_cont.32408:
	flw		f1, -20(x2)	# 2363
	lw		x6, -28(x2)	# 2363
	lw		x29, 0(x2)	# 2363
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	lw		x31, 0(x29)	# 2363
	jalr	x0, x31, 0	# 2363
calc_dirvec_rows.2988.17821:
	lw		x7, 24(x29)	# 2369
	lw		x8, 20(x29)	# 2369
	lw		x9, 16(x29)	# 2369
	lw		x10, 12(x29)	# 2369
	lw		x11, 8(x29)	# 2369
	lw		x12, 4(x29)	# 2369
	ble		x11, x4, ble.32410	# 2369
	jalr	x0, x1, 0	# 2373
ble.32410:
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
	fadd	f2, f0, f30	# 2370
	fmul	f1, f1, f2	# 2370
	lui		x4, %hi(l.28375)	# 2370
	ori		x4, x0, %lo(l.28375)	# 2370
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
	ble		x6, x5, ble.32413	# 225
	jal		x0, ble_cont.32412	# 225
ble.32413:
	sub		x5, x5, x6	# 225
ble_cont.32412:
	lw		x6, -20(x2)	# 2372
	addi	x6, x6, 4	# 2372
	lw		x29, 0(x2)	# 2372
	lw		x31, 0(x29)	# 2372
	jalr	x0, x31, 0	# 2372
create_dirvec_elements.2994.17825:
	lw		x6, 16(x29)	# 2388
	lw		x7, 12(x29)	# 2388
	lw		x8, 8(x29)	# 2388
	flw		f1, 4(x29)	# 2388
	ble		x7, x5, ble.32414	# 2388
	jalr	x0, x1, 0	# 2391
ble.32414:
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
	addi	x4, x4, 60000	# 2383
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
create_dirvecs.2997.17828:
	lw		x5, 20(x29)	# 2395
	lw		x6, 16(x29)	# 2395
	lw		x7, 12(x29)	# 2395
	lw		x8, 8(x29)	# 2395
	flw		f1, 4(x29)	# 2395
	ble		x7, x4, ble.32416	# 2395
	jalr	x0, x1, 0	# 2399
ble.32416:
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
	addi	x4, x4, 60000	# 2383
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
	addi	x6, x6, 60716	# 2396
	sw		x4, 0(x6)	# 2396
	mul		x4, x30, x5	# 2397
	addi	x4, x4, 60716	# 2397
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
init_dirvec_constants.2999.17830:
	lw		x6, 12(x29)	# 2407
	lw		x7, 8(x29)	# 2407
	lw		x8, 4(x29)	# 2407
	ble		x7, x5, ble.32418	# 2407
	jalr	x0, x1, 0	# 2410
ble.32418:
	mul		x9, x30, x5	# 2408
	add		x9, x4, x9	# 2408
	lw		x9, 0(x9)	# 2408
	mul		x7, x30, x7	# 1287
	addi	x7, x7, 60000	# 1287
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
init_vecset_constants.3002.17833:
	lw		x5, 12(x29)	# 2414
	lw		x6, 8(x29)	# 2414
	lw		x7, 4(x29)	# 2414
	ble		x6, x4, ble.32420	# 2414
	jalr	x0, x1, 0	# 2417
ble.32420:
	mul		x6, x30, x4	# 2415
	addi	x6, x6, 60716	# 2415
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
min_caml_start:
	addi	x2, x2, -4
	addi	x30, x0, 4
	addi	x3, x0, 60000
	lui		x4, %hi(l.25709)
	ori		x4, x0, %lo(l.25709)
	flw		f0, 0(x4)
	lui		x4, %hi(l.25673)
	ori		x4, x0, %lo(l.25673)
	flw		f16, 0(x4)
	lui		x4, %hi(l.25683)
	ori		x4, x0, %lo(l.25683)
	flw		f17, 0(x4)
	lui		x4, %hi(l.25769)
	ori		x4, x0, %lo(l.25769)
	flw		f18, 0(x4)
	lui		x4, %hi(l.27092)
	ori		x4, x0, %lo(l.27092)
	flw		f19, 0(x4)
	lui		x4, %hi(l.27088)
	ori		x4, x0, %lo(l.27088)
	flw		f20, 0(x4)
	lui		x4, %hi(l.27090)
	ori		x4, x0, %lo(l.27090)
	flw		f21, 0(x4)
	lui		x4, %hi(l.27118)
	ori		x4, x0, %lo(l.27118)
	flw		f22, 0(x4)
	lui		x4, %hi(l.26336)
	ori		x4, x0, %lo(l.26336)
	flw		f23, 0(x4)
	lui		x4, %hi(l.25737)
	ori		x4, x0, %lo(l.25737)
	flw		f24, 0(x4)
	lui		x4, %hi(l.26881)
	ori		x4, x0, %lo(l.26881)
	flw		f25, 0(x4)
	lui		x4, %hi(l.27128)
	ori		x4, x0, %lo(l.27128)
	flw		f26, 0(x4)
	lui		x4, %hi(l.27106)
	ori		x4, x0, %lo(l.27106)
	flw		f27, 0(x4)
	lui		x4, %hi(l.27139)
	ori		x4, x0, %lo(l.27139)
	flw		f28, 0(x4)
	lui		x4, %hi(l.27141)
	ori		x4, x0, %lo(l.27141)
	flw		f29, 0(x4)
	lui		x4, %hi(l.25700)
	ori		x4, x0, %lo(l.25700)
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
	addi	x4, x0, 60004	# 11
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
	lui		x4, %hi(l.28415)	# 25
	ori		x4, x0, %lo(l.28415)	# 25
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
	addi	x6, x0, 60328	# 28
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
	addi	x5, x5, 60332	# 31
	lw		x5, 0(x5)	# 31
	addi	x6, x0, 60532	# 31
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
	lui		x4, %hi(l.28419)	# 42
	ori		x4, x0, %lo(l.28419)	# 42
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
	addi	x4, x0, 60708	# 95
	flw		f1, -8(x2)	# 95
	lw		x5, -4(x2)	# 95
	sw		x4, -52(x2)	# 95
	addi	x4, x5, 0
	sw		x1, -56(x2)	# 95
	addi	x2, x2, -60	# 95
	jal		x1, min_caml_create_float_array	# 95
	addi	x2, x2, 60	# 95
	lw		x1, -56(x2)	# 95
	addi	x4, x0, 60708	# 96
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
	addi	x4, x0, 60716	# 97
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
	addi	x4, x0, 60736	# 103
	flw		f1, -8(x2)	# 103
	lw		x5, -4(x2)	# 103
	sw		x4, -68(x2)	# 103
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 103
	addi	x2, x2, -76	# 103
	jal		x1, min_caml_create_float_array	# 103
	addi	x2, x2, 76	# 103
	lw		x1, -72(x2)	# 103
	addi	x4, x0, 60736	# 104
	flw		f1, -8(x2)	# 104
	lw		x5, -20(x2)	# 104
	sw		x4, -72(x2)	# 104
	addi	x4, x5, 0
	sw		x1, -76(x2)	# 104
	addi	x2, x2, -80	# 104
	jal		x1, min_caml_create_float_array	# 104
	addi	x2, x2, 80	# 104
	lw		x1, -76(x2)	# 104
	addi	x4, x0, 60748	# 105
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
	addi	x5, x0, 60996	# 111
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
	addi	x4, x0, 60996	# 112
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
	lui		x5, %hi(int_of_float.2517.17688)	# 128
	ori		x5, x0, %lo(int_of_float.2517.17688)	# 128
	sw		x5, 0(x4)	# 132
	lw		x5, 0(x2)	# 132
	sw		x5, 8(x4)	# 132
	flw		f1, -8(x2)	# 132
	fsw		f1, 4(x4)	# 132
	addi	x29, x3, 0	# 132
	addi	x3, x3, 16	# 132
	lui		x6, %hi(float_of_int.2519.17690)	# 132
	ori		x6, x0, %lo(float_of_int.2519.17690)	# 132
	sw		x6, 0(x29)	# 139
	lw		x6, -4(x2)	# 139
	sw		x6, 12(x29)	# 139
	sw		x5, 8(x29)	# 139
	fsw		f1, 4(x29)	# 139
	lui		x7, %hi(l.28434)	# 139
	ori		x7, x0, %lo(l.28434)	# 139
	flw		f2, 0(x7)	# 139
	lui		x7, %hi(l.28436)	# 140
	ori		x7, x0, %lo(l.28436)	# 140
	flw		f3, 0(x7)	# 140
	lui		x7, %hi(l.28438)	# 141
	ori		x7, x0, %lo(l.28438)	# 141
	flw		f4, 0(x7)	# 141
	lui		x7, %hi(l.28440)	# 142
	ori		x7, x0, %lo(l.28440)	# 142
	flw		f5, 0(x7)	# 142
	addi	x7, x3, 0	# 164
	addi	x3, x3, 24	# 164
	lui		x8, %hi(sin.2531.17696)	# 164
	ori		x8, x0, %lo(sin.2531.17696)	# 164
	sw		x8, 0(x7)	# 172
	fsw		f5, 20(x7)	# 172
	fsw		f4, 16(x7)	# 172
	fsw		f3, 12(x7)	# 172
	fsw		f2, 8(x7)	# 172
	fsw		f1, 4(x7)	# 172
	addi	x8, x3, 0	# 172
	addi	x3, x3, 20	# 172
	lui		x9, %hi(cos.2533.17698)	# 172
	ori		x9, x0, %lo(cos.2533.17698)	# 172
	sw		x9, 0(x8)	# 177
	sw		x7, 16(x8)	# 177
	fsw		f5, 12(x8)	# 177
	fsw		f4, 8(x8)	# 177
	fsw		f1, 4(x8)	# 177
	addi	x9, x3, 0	# 177
	addi	x3, x3, 16	# 177
	lui		x10, %hi(atan.2535.17700)	# 177
	ori		x10, x0, %lo(atan.2535.17700)	# 177
	sw		x10, 0(x9)	# 860
	fsw		f5, 12(x9)	# 860
	fsw		f4, 8(x9)	# 860
	fsw		f1, 4(x9)	# 860
	addi	x10, x3, 0	# 860
	addi	x3, x3, 36	# 860
	lui		x11, %hi(read_object.2672.17702)	# 860
	ori		x11, x0, %lo(read_object.2672.17702)	# 860
	sw		x11, 0(x10)	# 876
	sw		x7, 32(x10)	# 876
	sw		x8, 28(x10)	# 876
	lw		x11, -48(x2)	# 876
	sw		x11, 24(x10)	# 876
	lw		x12, -28(x2)	# 876
	sw		x12, 20(x10)	# 876
	lw		x13, -16(x2)	# 876
	sw		x13, 16(x10)	# 876
	sw		x6, 12(x10)	# 876
	sw		x5, 8(x10)	# 876
	fsw		f1, 4(x10)	# 876
	addi	x13, x3, 0	# 876
	addi	x3, x3, 12	# 876
	lui		x14, %hi(read_net_item.2676.17704)	# 876
	ori		x14, x0, %lo(read_net_item.2676.17704)	# 876
	sw		x14, 0(x13)	# 884
	sw		x12, 8(x13)	# 884
	sw		x5, 4(x13)	# 884
	addi	x14, x3, 0	# 884
	addi	x3, x3, 20	# 884
	lui		x15, %hi(read_or_network.2678.17706)	# 884
	ori		x15, x0, %lo(read_or_network.2678.17706)	# 884
	sw		x15, 0(x14)	# 893
	sw		x13, 16(x14)	# 893
	sw		x12, 12(x14)	# 893
	sw		x6, 8(x14)	# 893
	sw		x5, 4(x14)	# 893
	addi	x15, x3, 0	# 893
	addi	x3, x3, 20	# 893
	lui		x16, %hi(read_and_network.2680.17708)	# 893
	ori		x16, x0, %lo(read_and_network.2680.17708)	# 893
	sw		x16, 0(x15)	# 1269
	sw		x13, 16(x15)	# 1269
	sw		x12, 12(x15)	# 1269
	sw		x6, 8(x15)	# 1269
	sw		x5, 4(x15)	# 1269
	addi	x13, x3, 0	# 1269
	addi	x3, x3, 20	# 1269
	lui		x16, %hi(iter_setup_dirvec_constants.2777.17710)	# 1269
	ori		x16, x0, %lo(iter_setup_dirvec_constants.2777.17710)	# 1269
	sw		x16, 0(x13)	# 1294
	sw		x11, 16(x13)	# 1294
	sw		x6, 12(x13)	# 1294
	sw		x5, 8(x13)	# 1294
	fsw		f1, 4(x13)	# 1294
	addi	x16, x3, 0	# 1294
	addi	x3, x3, 16	# 1294
	lui		x17, %hi(setup_startp_constants.2782.17713)	# 1294
	ori		x17, x0, %lo(setup_startp_constants.2782.17713)	# 1294
	sw		x17, 0(x16)	# 1363
	sw		x11, 12(x16)	# 1363
	sw		x6, 8(x16)	# 1363
	sw		x5, 4(x16)	# 1363
	addi	x17, x3, 0	# 1363
	addi	x3, x3, 28	# 1363
	lui		x18, %hi(check_all_inside.2807.17716)	# 1363
	ori		x18, x0, %lo(check_all_inside.2807.17716)	# 1363
	sw		x18, 0(x17)	# 1383
	sw		x11, 24(x17)	# 1383
	sw		x12, 20(x17)	# 1383
	lw		x18, -20(x2)	# 1383
	sw		x18, 16(x17)	# 1383
	sw		x6, 12(x17)	# 1383
	sw		x5, 8(x17)	# 1383
	fsw		f1, 4(x17)	# 1383
	addi	x19, x3, 0	# 1383
	addi	x3, x3, 36	# 1383
	lui		x20, %hi(shadow_check_and_group.2813.17722)	# 1383
	ori		x20, x0, %lo(shadow_check_and_group.2813.17722)	# 1383
	sw		x20, 0(x19)	# 1413
	sw		x17, 32(x19)	# 1413
	lw		x20, -64(x2)	# 1413
	sw		x20, 28(x19)	# 1413
	sw		x11, 24(x19)	# 1413
	sw		x12, 20(x19)	# 1413
	sw		x18, 16(x19)	# 1413
	sw		x6, 12(x19)	# 1413
	sw		x5, 8(x19)	# 1413
	fsw		f1, 4(x19)	# 1413
	addi	x21, x3, 0	# 1413
	addi	x3, x3, 20	# 1413
	lui		x22, %hi(shadow_check_one_or_group.2816.17725)	# 1413
	ori		x22, x0, %lo(shadow_check_one_or_group.2816.17725)	# 1413
	sw		x22, 0(x21)	# 1428
	sw		x19, 16(x21)	# 1428
	sw		x12, 12(x21)	# 1428
	sw		x6, 8(x21)	# 1428
	sw		x5, 4(x21)	# 1428
	addi	x19, x3, 0	# 1428
	addi	x3, x3, 36	# 1428
	lui		x22, %hi(shadow_check_one_or_matrix.2819.17728)	# 1428
	ori		x22, x0, %lo(shadow_check_one_or_matrix.2819.17728)	# 1428
	sw		x22, 0(x19)	# 1464
	sw		x21, 32(x19)	# 1464
	sw		x20, 28(x19)	# 1464
	sw		x11, 24(x19)	# 1464
	sw		x12, 20(x19)	# 1464
	sw		x18, 16(x19)	# 1464
	sw		x6, 12(x19)	# 1464
	sw		x5, 8(x19)	# 1464
	fsw		f1, 4(x19)	# 1464
	addi	x21, x3, 0	# 1464
	addi	x3, x3, 32	# 1464
	lui		x22, %hi(solve_each_element.2822.17731)	# 1464
	ori		x22, x0, %lo(solve_each_element.2822.17731)	# 1464
	sw		x22, 0(x21)	# 1505
	sw		x17, 28(x21)	# 1505
	sw		x11, 24(x21)	# 1505
	sw		x12, 20(x21)	# 1505
	sw		x18, 16(x21)	# 1505
	sw		x6, 12(x21)	# 1505
	sw		x5, 8(x21)	# 1505
	fsw		f1, 4(x21)	# 1505
	addi	x22, x3, 0	# 1505
	addi	x3, x3, 20	# 1505
	lui		x23, %hi(solve_one_or_network.2826.17735)	# 1505
	ori		x23, x0, %lo(solve_one_or_network.2826.17735)	# 1505
	sw		x23, 0(x22)	# 1515
	sw		x21, 16(x22)	# 1515
	sw		x12, 12(x22)	# 1515
	sw		x6, 8(x22)	# 1515
	sw		x5, 4(x22)	# 1515
	addi	x21, x3, 0	# 1515
	addi	x3, x3, 32	# 1515
	lui		x23, %hi(trace_or_matrix.2830.17739)	# 1515
	ori		x23, x0, %lo(trace_or_matrix.2830.17739)	# 1515
	sw		x23, 0(x21)	# 1557
	sw		x22, 28(x21)	# 1557
	sw		x11, 24(x21)	# 1557
	sw		x12, 20(x21)	# 1557
	sw		x18, 16(x21)	# 1557
	sw		x6, 12(x21)	# 1557
	sw		x5, 8(x21)	# 1557
	fsw		f1, 4(x21)	# 1557
	addi	x22, x3, 0	# 1557
	addi	x3, x3, 36	# 1557
	lui		x23, %hi(solve_each_element_fast.2836.17743)	# 1557
	ori		x23, x0, %lo(solve_each_element_fast.2836.17743)	# 1557
	sw		x23, 0(x22)	# 1598
	sw		x17, 32(x22)	# 1598
	sw		x20, 28(x22)	# 1598
	sw		x11, 24(x22)	# 1598
	sw		x12, 20(x22)	# 1598
	sw		x18, 16(x22)	# 1598
	sw		x6, 12(x22)	# 1598
	sw		x5, 8(x22)	# 1598
	fsw		f1, 4(x22)	# 1598
	addi	x17, x3, 0	# 1598
	addi	x3, x3, 20	# 1598
	lui		x23, %hi(solve_one_or_network_fast.2840.17747)	# 1598
	ori		x23, x0, %lo(solve_one_or_network_fast.2840.17747)	# 1598
	sw		x23, 0(x17)	# 1608
	sw		x22, 16(x17)	# 1608
	sw		x12, 12(x17)	# 1608
	sw		x6, 8(x17)	# 1608
	sw		x5, 4(x17)	# 1608
	addi	x22, x3, 0	# 1608
	addi	x3, x3, 36	# 1608
	lui		x23, %hi(trace_or_matrix_fast.2844.17751)	# 1608
	ori		x23, x0, %lo(trace_or_matrix_fast.2844.17751)	# 1608
	sw		x23, 0(x22)	# 1802
	sw		x17, 32(x22)	# 1802
	sw		x20, 28(x22)	# 1802
	sw		x11, 24(x22)	# 1802
	sw		x12, 20(x22)	# 1802
	sw		x18, 16(x22)	# 1802
	sw		x6, 12(x22)	# 1802
	sw		x5, 8(x22)	# 1802
	fsw		f1, 4(x22)	# 1802
	addi	x17, x3, 0	# 1802
	addi	x3, x3, 32	# 1802
	lui		x23, %hi(trace_reflections.2866.17755)	# 1802
	ori		x23, x0, %lo(trace_reflections.2866.17755)	# 1802
	sw		x23, 0(x17)	# 1831
	sw		x22, 28(x17)	# 1831
	sw		x19, 24(x17)	# 1831
	sw		x11, 20(x17)	# 1831
	sw		x6, 16(x17)	# 1831
	sw		x5, 12(x17)	# 1831
	flw		f2, -44(x2)	# 1831
	fsw		f2, 8(x17)	# 1831
	fsw		f1, 4(x17)	# 1831
	addi	x23, x3, 0	# 1831
	addi	x3, x3, 72	# 1831
	lui		x24, %hi(trace_ray.2871.17760)	# 1831
	ori		x24, x0, %lo(trace_ray.2871.17760)	# 1831
	sw		x24, 0(x23)	# 1943
	sw		x17, 68(x23)	# 1943
	sw		x21, 64(x23)	# 1943
	sw		x7, 60(x23)	# 1943
	sw		x19, 56(x23)	# 1943
	sw		x16, 52(x23)	# 1943
	sw		x4, 48(x23)	# 1943
	sw		x29, 44(x23)	# 1943
	sw		x8, 40(x23)	# 1943
	sw		x9, 36(x23)	# 1943
	sw		x11, 32(x23)	# 1943
	sw		x12, 28(x23)	# 1943
	sw		x18, 24(x23)	# 1943
	sw		x6, 20(x23)	# 1943
	sw		x5, 16(x23)	# 1943
	fsw		f2, 12(x23)	# 1943
	flw		f3, -24(x2)	# 1943
	fsw		f3, 8(x23)	# 1943
	fsw		f1, 4(x23)	# 1943
	addi	x12, x3, 0	# 1943
	addi	x3, x3, 60	# 1943
	lui		x17, %hi(iter_trace_diffuse_rays.2880.17766)	# 1943
	ori		x17, x0, %lo(iter_trace_diffuse_rays.2880.17766)	# 1943
	sw		x17, 0(x12)	# 2034
	sw		x22, 56(x12)	# 2034
	sw		x7, 52(x12)	# 2034
	sw		x19, 48(x12)	# 2034
	sw		x4, 44(x12)	# 2034
	sw		x29, 40(x12)	# 2034
	sw		x8, 36(x12)	# 2034
	sw		x9, 32(x12)	# 2034
	sw		x11, 28(x12)	# 2034
	sw		x18, 24(x12)	# 2034
	sw		x6, 20(x12)	# 2034
	sw		x5, 16(x12)	# 2034
	fsw		f2, 12(x12)	# 2034
	fsw		f3, 8(x12)	# 2034
	fsw		f1, 4(x12)	# 2034
	addi	x17, x3, 0	# 2034
	addi	x3, x3, 28	# 2034
	lui		x19, %hi(do_without_neighbors.2902.17771)	# 2034
	ori		x19, x0, %lo(do_without_neighbors.2902.17771)	# 2034
	sw		x19, 0(x17)	# 2086
	sw		x16, 24(x17)	# 2086
	sw		x12, 20(x17)	# 2086
	sw		x11, 16(x17)	# 2086
	sw		x18, 12(x17)	# 2086
	sw		x6, 8(x17)	# 2086
	sw		x5, 4(x17)	# 2086
	addi	x19, x3, 0	# 2086
	addi	x3, x3, 20	# 2086
	lui		x21, %hi(try_exploit_neighbors.2918.17774)	# 2086
	ori		x21, x0, %lo(try_exploit_neighbors.2918.17774)	# 2086
	sw		x21, 0(x19)	# 2162
	sw		x17, 16(x19)	# 2162
	sw		x11, 12(x19)	# 2162
	sw		x6, 8(x19)	# 2162
	sw		x5, 4(x19)	# 2162
	addi	x21, x3, 0	# 2162
	addi	x3, x3, 24	# 2162
	lui		x22, %hi(pretrace_diffuse_rays.2933.17781)	# 2162
	ori		x22, x0, %lo(pretrace_diffuse_rays.2933.17781)	# 2162
	sw		x22, 0(x21)	# 2192
	sw		x16, 20(x21)	# 2192
	sw		x12, 16(x21)	# 2192
	sw		x11, 12(x21)	# 2192
	sw		x6, 8(x21)	# 2192
	sw		x5, 4(x21)	# 2192
	addi	x12, x3, 0	# 2192
	addi	x3, x3, 36	# 2192
	lui		x16, %hi(pretrace_pixels.2936.17784)	# 2192
	ori		x16, x0, %lo(pretrace_pixels.2936.17784)	# 2192
	sw		x16, 0(x12)	# 2233
	sw		x23, 32(x12)	# 2233
	sw		x21, 28(x12)	# 2233
	sw		x29, 24(x12)	# 2233
	sw		x20, 20(x12)	# 2233
	sw		x11, 16(x12)	# 2233
	sw		x6, 12(x12)	# 2233
	sw		x5, 8(x12)	# 2233
	fsw		f1, 4(x12)	# 2233
	addi	x16, x3, 0	# 2233
	addi	x3, x3, 32	# 2233
	lui		x21, %hi(scan_pixel.2947.17791)	# 2233
	ori		x21, x0, %lo(scan_pixel.2947.17791)	# 2233
	sw		x21, 0(x16)	# 2253
	sw		x19, 28(x16)	# 2253
	sw		x4, 24(x16)	# 2253
	sw		x17, 20(x16)	# 2253
	sw		x11, 16(x16)	# 2253
	sw		x18, 12(x16)	# 2253
	sw		x6, 8(x16)	# 2253
	sw		x5, 4(x16)	# 2253
	addi	x4, x3, 0	# 2253
	addi	x3, x3, 32	# 2253
	lui		x17, %hi(scan_line.2954.17798)	# 2253
	ori		x17, x0, %lo(scan_line.2954.17798)	# 2253
	sw		x17, 0(x4)	# 2296
	sw		x16, 28(x4)	# 2296
	sw		x12, 24(x4)	# 2296
	sw		x29, 20(x4)	# 2296
	sw		x20, 16(x4)	# 2296
	sw		x11, 12(x4)	# 2296
	sw		x6, 8(x4)	# 2296
	sw		x5, 4(x4)	# 2296
	addi	x16, x3, 0	# 2296
	addi	x3, x3, 28	# 2296
	lui		x17, %hi(init_line_elements.2965.17805)	# 2296
	ori		x17, x0, %lo(init_line_elements.2965.17805)	# 2296
	sw		x17, 0(x16)	# 2333
	sw		x20, 24(x16)	# 2333
	sw		x11, 20(x16)	# 2333
	sw		x18, 16(x16)	# 2333
	sw		x6, 12(x16)	# 2333
	sw		x5, 8(x16)	# 2333
	fsw		f1, 4(x16)	# 2333
	addi	x17, x3, 0	# 2333
	addi	x3, x3, 32	# 2333
	lui		x19, %hi(calc_dirvec.2975.17808)	# 2333
	ori		x19, x0, %lo(calc_dirvec.2975.17808)	# 2333
	sw		x19, 0(x17)	# 2354
	sw		x7, 28(x17)	# 2354
	sw		x8, 24(x17)	# 2354
	sw		x9, 20(x17)	# 2354
	sw		x20, 16(x17)	# 2354
	sw		x11, 12(x17)	# 2354
	sw		x6, 8(x17)	# 2354
	sw		x5, 4(x17)	# 2354
	addi	x9, x3, 0	# 2354
	addi	x3, x3, 32	# 2354
	lui		x19, %hi(calc_dirvecs.2983.17816)	# 2354
	ori		x19, x0, %lo(calc_dirvecs.2983.17816)	# 2354
	sw		x19, 0(x9)	# 2368
	sw		x29, 28(x9)	# 2368
	sw		x17, 24(x9)	# 2368
	sw		x20, 20(x9)	# 2368
	sw		x11, 16(x9)	# 2368
	sw		x6, 12(x9)	# 2368
	sw		x5, 8(x9)	# 2368
	fsw		f1, 4(x9)	# 2368
	addi	x17, x3, 0	# 2368
	addi	x3, x3, 28	# 2368
	lui		x19, %hi(calc_dirvec_rows.2988.17821)	# 2368
	ori		x19, x0, %lo(calc_dirvec_rows.2988.17821)	# 2368
	sw		x19, 0(x17)	# 2387
	sw		x29, 24(x17)	# 2387
	sw		x9, 20(x17)	# 2387
	sw		x20, 16(x17)	# 2387
	sw		x11, 12(x17)	# 2387
	sw		x6, 8(x17)	# 2387
	sw		x5, 4(x17)	# 2387
	addi	x9, x3, 0	# 2387
	addi	x3, x3, 20	# 2387
	lui		x19, %hi(create_dirvec_elements.2994.17825)	# 2387
	ori		x19, x0, %lo(create_dirvec_elements.2994.17825)	# 2387
	sw		x19, 0(x9)	# 2394
	sw		x18, 16(x9)	# 2394
	sw		x6, 12(x9)	# 2394
	sw		x5, 8(x9)	# 2394
	fsw		f1, 4(x9)	# 2394
	addi	x19, x3, 0	# 2394
	addi	x3, x3, 24	# 2394
	lui		x21, %hi(create_dirvecs.2997.17828)	# 2394
	ori		x21, x0, %lo(create_dirvecs.2997.17828)	# 2394
	sw		x21, 0(x19)	# 2406
	sw		x9, 20(x19)	# 2406
	sw		x18, 16(x19)	# 2406
	sw		x6, 12(x19)	# 2406
	sw		x5, 8(x19)	# 2406
	fsw		f1, 4(x19)	# 2406
	addi	x9, x3, 0	# 2406
	addi	x3, x3, 16	# 2406
	lui		x21, %hi(init_dirvec_constants.2999.17830)	# 2406
	ori		x21, x0, %lo(init_dirvec_constants.2999.17830)	# 2406
	sw		x21, 0(x9)	# 2413
	sw		x13, 12(x9)	# 2413
	sw		x6, 8(x9)	# 2413
	sw		x5, 4(x9)	# 2413
	addi	x21, x3, 0	# 2413
	addi	x3, x3, 16	# 2413
	lui		x22, %hi(init_vecset_constants.3002.17833)	# 2413
	ori		x22, x0, %lo(init_vecset_constants.3002.17833)	# 2413
	sw		x22, 0(x21)	# 2512
	sw		x9, 12(x21)	# 2512
	sw		x6, 8(x21)	# 2512
	sw		x5, 4(x21)	# 2512
	addi	x9, x0, 128	# 2512
	mul		x22, x30, x6	# 2492
	addi	x22, x22, 60616	# 2492
	sw		x9, 0(x22)	# 2492
	mul		x22, x30, x5	# 2493
	addi	x22, x22, 60616	# 2493
	sw		x9, 0(x22)	# 2493
	addi	x22, x0, 64	# 2494
	mul		x23, x30, x6	# 2494
	addi	x23, x23, 60624	# 2494
	sw		x22, 0(x23)	# 2494
	mul		x23, x30, x5	# 2495
	addi	x23, x23, 60624	# 2495
	sw		x22, 0(x23)	# 2495
	lui		x22, %hi(l.28450)	# 2496
	ori		x22, x0, %lo(l.28450)	# 2496
	flw		f2, 0(x22)	# 2496
	sw		x4, -92(x2)	# 2496
	sw		x12, -96(x2)	# 2496
	sw		x29, -100(x2)	# 2496
	sw		x13, -104(x2)	# 2496
	sw		x21, -108(x2)	# 2496
	sw		x17, -112(x2)	# 2496
	sw		x19, -116(x2)	# 2496
	sw		x14, -120(x2)	# 2496
	sw		x15, -124(x2)	# 2496
	sw		x10, -128(x2)	# 2496
	sw		x7, -132(x2)	# 2496
	sw		x8, -136(x2)	# 2496
	sw		x16, -140(x2)	# 2496
	fsw		f2, -144(x2)	# 2496
	addi	x4, x9, 0
	sw		x1, -148(x2)	# 2496
	addi	x2, x2, -152	# 2496
	lw		x31, 0(x29)	# 2496
	jalr	x1, x31, 0	# 2496
	addi	x2, x2, 152	# 2496
	lw		x1, -148(x2)	# 2496
	flw		f2, -144(x2)	# 2496
	fdiv	f1, f2, f1	# 2496
	lw		x4, -4(x2)	# 2496
	mul		x5, x30, x4	# 2496
	addi	x5, x5, 60632	# 2496
	fsw		f1, 0(x5)	# 2496
	mul		x5, x30, x4	# 2306
	addi	x5, x5, 60616	# 2306
	lw		x5, 0(x5)	# 2306
	flw		f1, -8(x2)	# 2284
	lw		x6, -20(x2)	# 2284
	sw		x5, -148(x2)	# 2284
	addi	x4, x6, 0
	sw		x1, -152(x2)	# 2284
	addi	x2, x2, -156	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 156	# 2284
	lw		x1, -152(x2)	# 2284
	flw		f1, -8(x2)	# 2272
	lw		x5, -20(x2)	# 2272
	sw		x4, -152(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -156(x2)	# 2272
	addi	x2, x2, -160	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 160	# 2272
	lw		x1, -156(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -64(x2)	# 2273
	sw		x1, -156(x2)	# 2273
	addi	x2, x2, -160	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 160	# 2273
	lw		x1, -156(x2)	# 2273
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -156(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -160(x2)	# 2274
	addi	x2, x2, -164	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 164	# 2274
	lw		x1, -160(x2)	# 2274
	lw		x5, 0(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -156(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -8(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -160(x2)	# 2275
	addi	x2, x2, -164	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 164	# 2275
	lw		x1, -160(x2)	# 2275
	lw		x5, -48(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -156(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -160(x2)	# 2276
	addi	x2, x2, -164	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 164	# 2276
	lw		x1, -160(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -156(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	addi	x4, x0, 4	# 2277
	flw		f1, -8(x2)	# 2277
	sw		x4, -160(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -164(x2)	# 2277
	addi	x2, x2, -168	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 168	# 2277
	lw		x1, -164(x2)	# 2277
	lw		x5, -160(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -156(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	lw		x4, -64(x2)	# 2286
	lw		x6, -4(x2)	# 2286
	addi	x5, x6, 0
	sw		x1, -164(x2)	# 2286
	addi	x2, x2, -168	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 168	# 2286
	lw		x1, -164(x2)	# 2286
	lw		x5, -64(x2)	# 2287
	lw		x6, -4(x2)	# 2287
	sw		x4, -164(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -168(x2)	# 2287
	addi	x2, x2, -172	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 172	# 2287
	lw		x1, -168(x2)	# 2287
	flw		f1, -8(x2)	# 2272
	lw		x5, -20(x2)	# 2272
	sw		x4, -168(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -172(x2)	# 2272
	addi	x2, x2, -176	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 176	# 2272
	lw		x1, -172(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -64(x2)	# 2273
	sw		x1, -172(x2)	# 2273
	addi	x2, x2, -176	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 176	# 2273
	lw		x1, -172(x2)	# 2273
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -172(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -176(x2)	# 2274
	addi	x2, x2, -180	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 180	# 2274
	lw		x1, -176(x2)	# 2274
	lw		x5, 0(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -172(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -8(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -176(x2)	# 2275
	addi	x2, x2, -180	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 180	# 2275
	lw		x1, -176(x2)	# 2275
	lw		x5, -48(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -172(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -176(x2)	# 2276
	addi	x2, x2, -180	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 180	# 2276
	lw		x1, -176(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -172(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -176(x2)	# 2277
	addi	x2, x2, -180	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 180	# 2277
	lw		x1, -176(x2)	# 2277
	lw		x5, -160(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -172(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -8(x2)	# 2272
	lw		x4, -20(x2)	# 2272
	sw		x1, -176(x2)	# 2272
	addi	x2, x2, -180	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 180	# 2272
	lw		x1, -176(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -64(x2)	# 2273
	sw		x1, -176(x2)	# 2273
	addi	x2, x2, -180	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 180	# 2273
	lw		x1, -176(x2)	# 2273
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -176(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -180(x2)	# 2274
	addi	x2, x2, -184	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 184	# 2274
	lw		x1, -180(x2)	# 2274
	lw		x5, 0(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -176(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -8(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -180(x2)	# 2275
	addi	x2, x2, -184	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 184	# 2275
	lw		x1, -180(x2)	# 2275
	lw		x5, -48(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -176(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -180(x2)	# 2276
	addi	x2, x2, -184	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 184	# 2276
	lw		x1, -180(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -176(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -180(x2)	# 2277
	addi	x2, x2, -184	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 184	# 2277
	lw		x1, -180(x2)	# 2277
	lw		x5, -160(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -176(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	lw		x4, 0(x2)	# 2290
	lw		x6, -4(x2)	# 2290
	addi	x5, x6, 0
	sw		x1, -180(x2)	# 2290
	addi	x2, x2, -184	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 184	# 2290
	lw		x1, -180(x2)	# 2290
	flw		f1, -8(x2)	# 2272
	lw		x5, -20(x2)	# 2272
	sw		x4, -180(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -184(x2)	# 2272
	addi	x2, x2, -188	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 188	# 2272
	lw		x1, -184(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -64(x2)	# 2273
	sw		x1, -184(x2)	# 2273
	addi	x2, x2, -188	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 188	# 2273
	lw		x1, -184(x2)	# 2273
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -184(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -188(x2)	# 2274
	addi	x2, x2, -192	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 192	# 2274
	lw		x1, -188(x2)	# 2274
	lw		x5, 0(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -184(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -8(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -188(x2)	# 2275
	addi	x2, x2, -192	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 192	# 2275
	lw		x1, -188(x2)	# 2275
	lw		x5, -48(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -184(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -188(x2)	# 2276
	addi	x2, x2, -192	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 192	# 2276
	lw		x1, -188(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -184(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -188(x2)	# 2277
	addi	x2, x2, -192	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 192	# 2277
	lw		x1, -188(x2)	# 2277
	lw		x5, -160(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -184(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	addi	x4, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x7, 28(x4)	# 2292
	lw		x6, -180(x2)	# 2292
	sw		x6, 24(x4)	# 2292
	lw		x6, -176(x2)	# 2292
	sw		x6, 20(x4)	# 2292
	lw		x6, -172(x2)	# 2292
	sw		x6, 16(x4)	# 2292
	lw		x6, -168(x2)	# 2292
	sw		x6, 12(x4)	# 2292
	lw		x6, -164(x2)	# 2292
	sw		x6, 8(x4)	# 2292
	lw		x6, -156(x2)	# 2292
	sw		x6, 4(x4)	# 2292
	lw		x6, -152(x2)	# 2292
	sw		x6, 0(x4)	# 2292
	lw		x6, -148(x2)	# 2306
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -188(x2)	# 2306
	addi	x2, x2, -192	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 192	# 2306
	lw		x1, -188(x2)	# 2306
	lw		x5, -4(x2)	# 2307
	mul		x6, x30, x5	# 2307
	addi	x6, x6, 60616	# 2307
	lw		x6, 0(x6)	# 2307
	lw		x7, -48(x2)	# 2307
	sub		x6, x6, x7	# 2307
	lw		x29, -140(x2)	# 2307
	addi	x5, x6, 0
	sw		x1, -188(x2)	# 2307
	addi	x2, x2, -192	# 2307
	lw		x31, 0(x29)	# 2307
	jalr	x1, x31, 0	# 2307
	addi	x2, x2, 192	# 2307
	lw		x1, -188(x2)	# 2307
	lw		x5, -4(x2)	# 2306
	mul		x6, x30, x5	# 2306
	addi	x6, x6, 60616	# 2306
	lw		x6, 0(x6)	# 2306
	flw		f1, -8(x2)	# 2284
	lw		x7, -20(x2)	# 2284
	sw		x4, -188(x2)	# 2284
	sw		x6, -192(x2)	# 2284
	addi	x4, x7, 0
	sw		x1, -196(x2)	# 2284
	addi	x2, x2, -200	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 200	# 2284
	lw		x1, -196(x2)	# 2284
	flw		f1, -8(x2)	# 2272
	lw		x5, -20(x2)	# 2272
	sw		x4, -196(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -200(x2)	# 2272
	addi	x2, x2, -204	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 204	# 2272
	lw		x1, -200(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -64(x2)	# 2273
	sw		x1, -200(x2)	# 2273
	addi	x2, x2, -204	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 204	# 2273
	lw		x1, -200(x2)	# 2273
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -200(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -204(x2)	# 2274
	addi	x2, x2, -208	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 208	# 2274
	lw		x1, -204(x2)	# 2274
	lw		x5, 0(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -200(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -8(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -204(x2)	# 2275
	addi	x2, x2, -208	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 208	# 2275
	lw		x1, -204(x2)	# 2275
	lw		x5, -48(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -200(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -204(x2)	# 2276
	addi	x2, x2, -208	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 208	# 2276
	lw		x1, -204(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -200(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -204(x2)	# 2277
	addi	x2, x2, -208	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 208	# 2277
	lw		x1, -204(x2)	# 2277
	lw		x5, -160(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -200(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	lw		x4, -64(x2)	# 2286
	lw		x6, -4(x2)	# 2286
	addi	x5, x6, 0
	sw		x1, -204(x2)	# 2286
	addi	x2, x2, -208	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 208	# 2286
	lw		x1, -204(x2)	# 2286
	lw		x5, -64(x2)	# 2287
	lw		x6, -4(x2)	# 2287
	sw		x4, -204(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -208(x2)	# 2287
	addi	x2, x2, -212	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 212	# 2287
	lw		x1, -208(x2)	# 2287
	flw		f1, -8(x2)	# 2272
	lw		x5, -20(x2)	# 2272
	sw		x4, -208(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -212(x2)	# 2272
	addi	x2, x2, -216	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 216	# 2272
	lw		x1, -212(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -64(x2)	# 2273
	sw		x1, -212(x2)	# 2273
	addi	x2, x2, -216	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 216	# 2273
	lw		x1, -212(x2)	# 2273
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -212(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -216(x2)	# 2274
	addi	x2, x2, -220	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 220	# 2274
	lw		x1, -216(x2)	# 2274
	lw		x5, 0(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -212(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -8(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -216(x2)	# 2275
	addi	x2, x2, -220	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 220	# 2275
	lw		x1, -216(x2)	# 2275
	lw		x5, -48(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -212(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -216(x2)	# 2276
	addi	x2, x2, -220	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 220	# 2276
	lw		x1, -216(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -212(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -216(x2)	# 2277
	addi	x2, x2, -220	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 220	# 2277
	lw		x1, -216(x2)	# 2277
	lw		x5, -160(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -212(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -8(x2)	# 2272
	lw		x4, -20(x2)	# 2272
	sw		x1, -216(x2)	# 2272
	addi	x2, x2, -220	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 220	# 2272
	lw		x1, -216(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -64(x2)	# 2273
	sw		x1, -216(x2)	# 2273
	addi	x2, x2, -220	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 220	# 2273
	lw		x1, -216(x2)	# 2273
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -216(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -220(x2)	# 2274
	addi	x2, x2, -224	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 224	# 2274
	lw		x1, -220(x2)	# 2274
	lw		x5, 0(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -216(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -8(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -220(x2)	# 2275
	addi	x2, x2, -224	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 224	# 2275
	lw		x1, -220(x2)	# 2275
	lw		x5, -48(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -216(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -220(x2)	# 2276
	addi	x2, x2, -224	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 224	# 2276
	lw		x1, -220(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -216(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -220(x2)	# 2277
	addi	x2, x2, -224	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 224	# 2277
	lw		x1, -220(x2)	# 2277
	lw		x5, -160(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -216(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	lw		x4, 0(x2)	# 2290
	lw		x6, -4(x2)	# 2290
	addi	x5, x6, 0
	sw		x1, -220(x2)	# 2290
	addi	x2, x2, -224	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 224	# 2290
	lw		x1, -220(x2)	# 2290
	flw		f1, -8(x2)	# 2272
	lw		x5, -20(x2)	# 2272
	sw		x4, -220(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -224(x2)	# 2272
	addi	x2, x2, -228	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 228	# 2272
	lw		x1, -224(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -64(x2)	# 2273
	sw		x1, -224(x2)	# 2273
	addi	x2, x2, -228	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 228	# 2273
	lw		x1, -224(x2)	# 2273
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -224(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -228(x2)	# 2274
	addi	x2, x2, -232	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 232	# 2274
	lw		x1, -228(x2)	# 2274
	lw		x5, 0(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -224(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -8(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -228(x2)	# 2275
	addi	x2, x2, -232	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 232	# 2275
	lw		x1, -228(x2)	# 2275
	lw		x5, -48(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -224(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -228(x2)	# 2276
	addi	x2, x2, -232	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 232	# 2276
	lw		x1, -228(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -224(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -228(x2)	# 2277
	addi	x2, x2, -232	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 232	# 2277
	lw		x1, -228(x2)	# 2277
	lw		x5, -160(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -224(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	addi	x4, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x7, 28(x4)	# 2292
	lw		x6, -220(x2)	# 2292
	sw		x6, 24(x4)	# 2292
	lw		x6, -216(x2)	# 2292
	sw		x6, 20(x4)	# 2292
	lw		x6, -212(x2)	# 2292
	sw		x6, 16(x4)	# 2292
	lw		x6, -208(x2)	# 2292
	sw		x6, 12(x4)	# 2292
	lw		x6, -204(x2)	# 2292
	sw		x6, 8(x4)	# 2292
	lw		x6, -200(x2)	# 2292
	sw		x6, 4(x4)	# 2292
	lw		x6, -196(x2)	# 2292
	sw		x6, 0(x4)	# 2292
	lw		x6, -192(x2)	# 2306
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -228(x2)	# 2306
	addi	x2, x2, -232	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 232	# 2306
	lw		x1, -228(x2)	# 2306
	lw		x5, -4(x2)	# 2307
	mul		x6, x30, x5	# 2307
	addi	x6, x6, 60616	# 2307
	lw		x6, 0(x6)	# 2307
	lw		x7, -48(x2)	# 2307
	sub		x6, x6, x7	# 2307
	lw		x29, -140(x2)	# 2307
	addi	x5, x6, 0
	sw		x1, -228(x2)	# 2307
	addi	x2, x2, -232	# 2307
	lw		x31, 0(x29)	# 2307
	jalr	x1, x31, 0	# 2307
	addi	x2, x2, 232	# 2307
	lw		x1, -228(x2)	# 2307
	lw		x5, -4(x2)	# 2306
	mul		x6, x30, x5	# 2306
	addi	x6, x6, 60616	# 2306
	lw		x6, 0(x6)	# 2306
	flw		f1, -8(x2)	# 2284
	lw		x7, -20(x2)	# 2284
	sw		x4, -228(x2)	# 2284
	sw		x6, -232(x2)	# 2284
	addi	x4, x7, 0
	sw		x1, -236(x2)	# 2284
	addi	x2, x2, -240	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 240	# 2284
	lw		x1, -236(x2)	# 2284
	flw		f1, -8(x2)	# 2272
	lw		x5, -20(x2)	# 2272
	sw		x4, -236(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -240(x2)	# 2272
	addi	x2, x2, -244	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 244	# 2272
	lw		x1, -240(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -64(x2)	# 2273
	sw		x1, -240(x2)	# 2273
	addi	x2, x2, -244	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 244	# 2273
	lw		x1, -240(x2)	# 2273
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -240(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -244(x2)	# 2274
	addi	x2, x2, -248	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 248	# 2274
	lw		x1, -244(x2)	# 2274
	lw		x5, 0(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -240(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -8(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -244(x2)	# 2275
	addi	x2, x2, -248	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 248	# 2275
	lw		x1, -244(x2)	# 2275
	lw		x5, -48(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -240(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -244(x2)	# 2276
	addi	x2, x2, -248	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 248	# 2276
	lw		x1, -244(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -240(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -244(x2)	# 2277
	addi	x2, x2, -248	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 248	# 2277
	lw		x1, -244(x2)	# 2277
	lw		x5, -160(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -240(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	lw		x4, -64(x2)	# 2286
	lw		x6, -4(x2)	# 2286
	addi	x5, x6, 0
	sw		x1, -244(x2)	# 2286
	addi	x2, x2, -248	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 248	# 2286
	lw		x1, -244(x2)	# 2286
	lw		x5, -64(x2)	# 2287
	lw		x6, -4(x2)	# 2287
	sw		x4, -244(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -248(x2)	# 2287
	addi	x2, x2, -252	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 252	# 2287
	lw		x1, -248(x2)	# 2287
	flw		f1, -8(x2)	# 2272
	lw		x5, -20(x2)	# 2272
	sw		x4, -248(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -252(x2)	# 2272
	addi	x2, x2, -256	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 256	# 2272
	lw		x1, -252(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -64(x2)	# 2273
	sw		x1, -252(x2)	# 2273
	addi	x2, x2, -256	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 256	# 2273
	lw		x1, -252(x2)	# 2273
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -252(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -256(x2)	# 2274
	addi	x2, x2, -260	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 260	# 2274
	lw		x1, -256(x2)	# 2274
	lw		x5, 0(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -252(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -8(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -256(x2)	# 2275
	addi	x2, x2, -260	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 260	# 2275
	lw		x1, -256(x2)	# 2275
	lw		x5, -48(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -252(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -256(x2)	# 2276
	addi	x2, x2, -260	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 260	# 2276
	lw		x1, -256(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -252(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -256(x2)	# 2277
	addi	x2, x2, -260	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 260	# 2277
	lw		x1, -256(x2)	# 2277
	lw		x5, -160(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -252(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -8(x2)	# 2272
	lw		x4, -20(x2)	# 2272
	sw		x1, -256(x2)	# 2272
	addi	x2, x2, -260	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 260	# 2272
	lw		x1, -256(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -64(x2)	# 2273
	sw		x1, -256(x2)	# 2273
	addi	x2, x2, -260	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 260	# 2273
	lw		x1, -256(x2)	# 2273
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -256(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -260(x2)	# 2274
	addi	x2, x2, -264	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 264	# 2274
	lw		x1, -260(x2)	# 2274
	lw		x5, 0(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -256(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -8(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -260(x2)	# 2275
	addi	x2, x2, -264	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 264	# 2275
	lw		x1, -260(x2)	# 2275
	lw		x5, -48(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -256(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -260(x2)	# 2276
	addi	x2, x2, -264	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 264	# 2276
	lw		x1, -260(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -256(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -260(x2)	# 2277
	addi	x2, x2, -264	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 264	# 2277
	lw		x1, -260(x2)	# 2277
	lw		x5, -160(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -256(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	lw		x4, 0(x2)	# 2290
	lw		x6, -4(x2)	# 2290
	addi	x5, x6, 0
	sw		x1, -260(x2)	# 2290
	addi	x2, x2, -264	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 264	# 2290
	lw		x1, -260(x2)	# 2290
	flw		f1, -8(x2)	# 2272
	lw		x5, -20(x2)	# 2272
	sw		x4, -260(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -264(x2)	# 2272
	addi	x2, x2, -268	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 268	# 2272
	lw		x1, -264(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -64(x2)	# 2273
	sw		x1, -264(x2)	# 2273
	addi	x2, x2, -268	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 268	# 2273
	lw		x1, -264(x2)	# 2273
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -264(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -268(x2)	# 2274
	addi	x2, x2, -272	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 272	# 2274
	lw		x1, -268(x2)	# 2274
	lw		x5, 0(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -264(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -8(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -268(x2)	# 2275
	addi	x2, x2, -272	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 272	# 2275
	lw		x1, -268(x2)	# 2275
	lw		x5, -48(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -264(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -268(x2)	# 2276
	addi	x2, x2, -272	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 272	# 2276
	lw		x1, -268(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -264(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -268(x2)	# 2277
	addi	x2, x2, -272	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 272	# 2277
	lw		x1, -268(x2)	# 2277
	lw		x5, -160(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -264(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	addi	x4, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x7, 28(x4)	# 2292
	lw		x6, -260(x2)	# 2292
	sw		x6, 24(x4)	# 2292
	lw		x6, -256(x2)	# 2292
	sw		x6, 20(x4)	# 2292
	lw		x6, -252(x2)	# 2292
	sw		x6, 16(x4)	# 2292
	lw		x6, -248(x2)	# 2292
	sw		x6, 12(x4)	# 2292
	lw		x6, -244(x2)	# 2292
	sw		x6, 8(x4)	# 2292
	lw		x6, -240(x2)	# 2292
	sw		x6, 4(x4)	# 2292
	lw		x6, -236(x2)	# 2292
	sw		x6, 0(x4)	# 2292
	lw		x6, -232(x2)	# 2306
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -268(x2)	# 2306
	addi	x2, x2, -272	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 272	# 2306
	lw		x1, -268(x2)	# 2306
	lw		x5, -4(x2)	# 2307
	mul		x6, x30, x5	# 2307
	addi	x6, x6, 60616	# 2307
	lw		x6, 0(x6)	# 2307
	lw		x7, -48(x2)	# 2307
	sub		x6, x6, x7	# 2307
	lw		x29, -140(x2)	# 2307
	addi	x5, x6, 0
	sw		x1, -268(x2)	# 2307
	addi	x2, x2, -272	# 2307
	lw		x31, 0(x29)	# 2307
	jalr	x1, x31, 0	# 2307
	addi	x2, x2, 272	# 2307
	lw		x1, -268(x2)	# 2307
	sw		x4, -268(x2)	# 684
	sw		x1, -272(x2)	# 684
	addi	x2, x2, -276	# 684
	jal		x1, min_caml_read_float	# 684
	addi	x2, x2, 276	# 684
	lw		x1, -272(x2)	# 684
	lw		x4, -4(x2)	# 684
	mul		x5, x30, x4	# 684
	addi	x5, x5, 60288	# 684
	fsw		f1, 0(x5)	# 684
	sw		x1, -272(x2)	# 685
	addi	x2, x2, -276	# 685
	jal		x1, min_caml_read_float	# 685
	addi	x2, x2, 276	# 685
	lw		x1, -272(x2)	# 685
	lw		x4, 0(x2)	# 685
	mul		x5, x30, x4	# 685
	addi	x5, x5, 60288	# 685
	fsw		f1, 0(x5)	# 685
	sw		x1, -272(x2)	# 686
	addi	x2, x2, -276	# 686
	jal		x1, min_caml_read_float	# 686
	addi	x2, x2, 276	# 686
	lw		x1, -272(x2)	# 686
	lw		x4, -48(x2)	# 686
	mul		x5, x30, x4	# 686
	addi	x5, x5, 60288	# 686
	fsw		f1, 0(x5)	# 686
	sw		x1, -272(x2)	# 688
	addi	x2, x2, -276	# 688
	jal		x1, min_caml_read_float	# 688
	addi	x2, x2, 276	# 688
	lw		x1, -272(x2)	# 688
	fadd	f2, f0, f24	# 677
	fmul	f1, f1, f2	# 677
	lw		x29, -136(x2)	# 689
	fsw		f2, -272(x2)	# 689
	fsw		f1, -276(x2)	# 689
	sw		x1, -280(x2)	# 689
	addi	x2, x2, -284	# 689
	lw		x31, 0(x29)	# 689
	jalr	x1, x31, 0	# 689
	addi	x2, x2, 284	# 689
	lw		x1, -280(x2)	# 689
	flw		f2, -276(x2)	# 690
	lw		x29, -132(x2)	# 690
	fsw		f1, -280(x2)	# 690
	fadd	f1, f0, f2
	sw		x1, -284(x2)	# 690
	addi	x2, x2, -288	# 690
	lw		x31, 0(x29)	# 690
	jalr	x1, x31, 0	# 690
	addi	x2, x2, 288	# 690
	lw		x1, -284(x2)	# 690
	fsw		f1, -284(x2)	# 691
	sw		x1, -288(x2)	# 691
	addi	x2, x2, -292	# 691
	jal		x1, min_caml_read_float	# 691
	addi	x2, x2, 292	# 691
	lw		x1, -288(x2)	# 691
	flw		f2, -272(x2)	# 677
	fmul	f1, f1, f2	# 677
	lw		x29, -136(x2)	# 692
	fsw		f1, -288(x2)	# 692
	sw		x1, -292(x2)	# 692
	addi	x2, x2, -296	# 692
	lw		x31, 0(x29)	# 692
	jalr	x1, x31, 0	# 692
	addi	x2, x2, 296	# 692
	lw		x1, -292(x2)	# 692
	flw		f2, -288(x2)	# 693
	lw		x29, -132(x2)	# 693
	fsw		f1, -292(x2)	# 693
	fadd	f1, f0, f2
	sw		x1, -296(x2)	# 693
	addi	x2, x2, -300	# 693
	lw		x31, 0(x29)	# 693
	jalr	x1, x31, 0	# 693
	addi	x2, x2, 300	# 693
	lw		x1, -296(x2)	# 693
	flw		f2, -280(x2)	# 695
	fmul	f3, f2, f1	# 695
	lui		x4, %hi(l.28596)	# 695
	ori		x4, x0, %lo(l.28596)	# 695
	flw		f4, 0(x4)	# 695
	fmul	f3, f3, f4	# 695
	lw		x4, -4(x2)	# 695
	mul		x5, x30, x4	# 695
	addi	x5, x5, 60684	# 695
	fsw		f3, 0(x5)	# 695
	lui		x5, %hi(l.28600)	# 696
	ori		x5, x0, %lo(l.28600)	# 696
	flw		f3, 0(x5)	# 696
	flw		f5, -284(x2)	# 696
	fmul	f3, f5, f3	# 696
	lw		x5, 0(x2)	# 696
	mul		x6, x30, x5	# 696
	addi	x6, x6, 60684	# 696
	fsw		f3, 0(x6)	# 696
	flw		f3, -292(x2)	# 697
	fmul	f6, f2, f3	# 697
	fmul	f4, f6, f4	# 697
	lw		x6, -48(x2)	# 697
	mul		x7, x30, x6	# 697
	addi	x7, x7, 60684	# 697
	fsw		f4, 0(x7)	# 697
	mul		x7, x30, x4	# 699
	addi	x7, x7, 60660	# 699
	fsw		f3, 0(x7)	# 699
	mul		x7, x30, x5	# 700
	addi	x7, x7, 60660	# 700
	flw		f4, -8(x2)	# 700
	fsw		f4, 0(x7)	# 700
	fsub	f6, f0, f1	# 123
	mul		x7, x30, x6	# 701
	addi	x7, x7, 60660	# 701
	fsw		f6, 0(x7)	# 701
	fsub	f5, f0, f5	# 123
	fmul	f1, f5, f1	# 703
	mul		x7, x30, x4	# 703
	addi	x7, x7, 60672	# 703
	fsw		f1, 0(x7)	# 703
	fsub	f1, f0, f2	# 123
	mul		x7, x30, x5	# 704
	addi	x7, x7, 60672	# 704
	fsw		f1, 0(x7)	# 704
	fmul	f1, f5, f3	# 705
	mul		x7, x30, x6	# 705
	addi	x7, x7, 60672	# 705
	fsw		f1, 0(x7)	# 705
	mul		x7, x30, x4	# 707
	addi	x7, x7, 60288	# 707
	flw		f1, 0(x7)	# 707
	mul		x7, x30, x4	# 707
	addi	x7, x7, 60684	# 707
	flw		f2, 0(x7)	# 707
	fsub	f1, f1, f2	# 707
	mul		x7, x30, x4	# 707
	addi	x7, x7, 60300	# 707
	fsw		f1, 0(x7)	# 707
	mul		x7, x30, x5	# 708
	addi	x7, x7, 60288	# 708
	flw		f1, 0(x7)	# 708
	mul		x7, x30, x5	# 708
	addi	x7, x7, 60684	# 708
	flw		f2, 0(x7)	# 708
	fsub	f1, f1, f2	# 708
	mul		x7, x30, x5	# 708
	addi	x7, x7, 60300	# 708
	fsw		f1, 0(x7)	# 708
	mul		x7, x30, x6	# 709
	addi	x7, x7, 60288	# 709
	flw		f1, 0(x7)	# 709
	mul		x7, x30, x6	# 709
	addi	x7, x7, 60684	# 709
	flw		f2, 0(x7)	# 709
	fsub	f1, f1, f2	# 709
	mul		x7, x30, x6	# 709
	addi	x7, x7, 60300	# 709
	fsw		f1, 0(x7)	# 709
	sw		x1, -296(x2)	# 716
	addi	x2, x2, -300	# 716
	jal		x1, min_caml_read_int	# 716
	addi	x2, x2, 300	# 716
	lw		x1, -296(x2)	# 716
	sw		x1, -296(x2)	# 719
	addi	x2, x2, -300	# 719
	jal		x1, min_caml_read_float	# 719
	addi	x2, x2, 300	# 719
	lw		x1, -296(x2)	# 719
	flw		f2, -272(x2)	# 677
	fmul	f1, f1, f2	# 677
	lw		x29, -132(x2)	# 720
	fsw		f1, -296(x2)	# 720
	sw		x1, -300(x2)	# 720
	addi	x2, x2, -304	# 720
	lw		x31, 0(x29)	# 720
	jalr	x1, x31, 0	# 720
	addi	x2, x2, 304	# 720
	lw		x1, -300(x2)	# 720
	fsub	f1, f0, f1	# 123
	lw		x4, 0(x2)	# 721
	mul		x5, x30, x4	# 721
	addi	x5, x5, 60312	# 721
	fsw		f1, 0(x5)	# 721
	sw		x1, -300(x2)	# 722
	addi	x2, x2, -304	# 722
	jal		x1, min_caml_read_float	# 722
	addi	x2, x2, 304	# 722
	lw		x1, -300(x2)	# 722
	flw		f2, -272(x2)	# 677
	fmul	f1, f1, f2	# 677
	flw		f2, -296(x2)	# 723
	lw		x29, -136(x2)	# 723
	fsw		f1, -300(x2)	# 723
	fadd	f1, f0, f2
	sw		x1, -304(x2)	# 723
	addi	x2, x2, -308	# 723
	lw		x31, 0(x29)	# 723
	jalr	x1, x31, 0	# 723
	addi	x2, x2, 308	# 723
	lw		x1, -304(x2)	# 723
	flw		f2, -300(x2)	# 724
	lw		x29, -132(x2)	# 724
	fsw		f1, -304(x2)	# 724
	fadd	f1, f0, f2
	sw		x1, -308(x2)	# 724
	addi	x2, x2, -312	# 724
	lw		x31, 0(x29)	# 724
	jalr	x1, x31, 0	# 724
	addi	x2, x2, 312	# 724
	lw		x1, -308(x2)	# 724
	flw		f2, -304(x2)	# 725
	fmul	f1, f2, f1	# 725
	lw		x4, -4(x2)	# 725
	mul		x5, x30, x4	# 725
	addi	x5, x5, 60312	# 725
	fsw		f1, 0(x5)	# 725
	flw		f1, -300(x2)	# 726
	lw		x29, -136(x2)	# 726
	sw		x1, -308(x2)	# 726
	addi	x2, x2, -312	# 726
	lw		x31, 0(x29)	# 726
	jalr	x1, x31, 0	# 726
	addi	x2, x2, 312	# 726
	lw		x1, -308(x2)	# 726
	flw		f2, -304(x2)	# 727
	fmul	f1, f2, f1	# 727
	lw		x4, -48(x2)	# 727
	mul		x5, x30, x4	# 727
	addi	x5, x5, 60312	# 727
	fsw		f1, 0(x5)	# 727
	sw		x1, -308(x2)	# 728
	addi	x2, x2, -312	# 728
	jal		x1, min_caml_read_float	# 728
	addi	x2, x2, 312	# 728
	lw		x1, -308(x2)	# 728
	lw		x4, -4(x2)	# 728
	mul		x5, x30, x4	# 728
	addi	x5, x5, 60324	# 728
	fsw		f1, 0(x5)	# 728
	lw		x29, -128(x2)	# 870
	sw		x1, -308(x2)	# 870
	addi	x2, x2, -312	# 870
	lw		x31, 0(x29)	# 870
	jalr	x1, x31, 0	# 870
	addi	x2, x2, 312	# 870
	lw		x1, -308(x2)	# 870
	lw		x4, -4(x2)	# 907
	lw		x29, -124(x2)	# 907
	sw		x1, -308(x2)	# 907
	addi	x2, x2, -312	# 907
	lw		x31, 0(x29)	# 907
	jalr	x1, x31, 0	# 907
	addi	x2, x2, 312	# 907
	lw		x1, -308(x2)	# 907
	lw		x4, -4(x2)	# 908
	lw		x29, -120(x2)	# 908
	sw		x1, -308(x2)	# 908
	addi	x2, x2, -312	# 908
	lw		x31, 0(x29)	# 908
	jalr	x1, x31, 0	# 908
	addi	x2, x2, 312	# 908
	lw		x1, -308(x2)	# 908
	lw		x5, -4(x2)	# 908
	mul		x6, x30, x5	# 908
	addi	x6, x6, 60536	# 908
	sw		x4, 0(x6)	# 908
	addi	x4, x0, 80	# 2115
	sw		x1, -308(x2)	# 2115
	addi	x2, x2, -312	# 2115
	jal		x1, min_caml_print_char	# 2115
	addi	x2, x2, 312	# 2115
	lw		x1, -308(x2)	# 2115
	addi	x4, x0, 51	# 2116
	sw		x1, -308(x2)	# 2116
	addi	x2, x2, -312	# 2116
	jal		x1, min_caml_print_char	# 2116
	addi	x2, x2, 312	# 2116
	lw		x1, -308(x2)	# 2116
	addi	x4, x0, 10	# 2117
	sw		x4, -308(x2)	# 2117
	sw		x1, -312(x2)	# 2117
	addi	x2, x2, -316	# 2117
	jal		x1, min_caml_print_char	# 2117
	addi	x2, x2, 316	# 2117
	lw		x1, -312(x2)	# 2117
	lw		x4, -4(x2)	# 2118
	mul		x5, x30, x4	# 2118
	addi	x5, x5, 60616	# 2118
	lw		x5, 0(x5)	# 2118
	addi	x4, x5, 0
	sw		x1, -312(x2)	# 2118
	addi	x2, x2, -316	# 2118
	jal		x1, min_caml_print_int	# 2118
	addi	x2, x2, 316	# 2118
	lw		x1, -312(x2)	# 2118
	addi	x4, x0, 32	# 2119
	sw		x4, -312(x2)	# 2119
	sw		x1, -316(x2)	# 2119
	addi	x2, x2, -320	# 2119
	jal		x1, min_caml_print_char	# 2119
	addi	x2, x2, 320	# 2119
	lw		x1, -316(x2)	# 2119
	lw		x4, 0(x2)	# 2120
	mul		x5, x30, x4	# 2120
	addi	x5, x5, 60616	# 2120
	lw		x5, 0(x5)	# 2120
	addi	x4, x5, 0
	sw		x1, -316(x2)	# 2120
	addi	x2, x2, -320	# 2120
	jal		x1, min_caml_print_int	# 2120
	addi	x2, x2, 320	# 2120
	lw		x1, -316(x2)	# 2120
	lw		x4, -312(x2)	# 2121
	sw		x1, -316(x2)	# 2121
	addi	x2, x2, -320	# 2121
	jal		x1, min_caml_print_char	# 2121
	addi	x2, x2, 320	# 2121
	lw		x1, -316(x2)	# 2121
	addi	x4, x0, 255	# 2122
	sw		x1, -316(x2)	# 2122
	addi	x2, x2, -320	# 2122
	jal		x1, min_caml_print_int	# 2122
	addi	x2, x2, 320	# 2122
	lw		x1, -316(x2)	# 2122
	lw		x4, -308(x2)	# 2123
	sw		x1, -316(x2)	# 2123
	addi	x2, x2, -320	# 2123
	jal		x1, min_caml_print_char	# 2123
	addi	x2, x2, 320	# 2123
	lw		x1, -316(x2)	# 2123
	lw		x4, -160(x2)	# 2421
	lw		x29, -116(x2)	# 2421
	sw		x1, -316(x2)	# 2421
	addi	x2, x2, -320	# 2421
	lw		x31, 0(x29)	# 2421
	jalr	x1, x31, 0	# 2421
	addi	x2, x2, 320	# 2421
	lw		x1, -316(x2)	# 2421
	addi	x4, x0, 9	# 2422
	lw		x5, -4(x2)	# 2422
	lw		x29, -112(x2)	# 2422
	addi	x6, x5, 0
	sw		x1, -316(x2)	# 2422
	addi	x2, x2, -320	# 2422
	lw		x31, 0(x29)	# 2422
	jalr	x1, x31, 0	# 2422
	addi	x2, x2, 320	# 2422
	lw		x1, -316(x2)	# 2422
	lw		x4, -160(x2)	# 2423
	lw		x29, -108(x2)	# 2423
	sw		x1, -316(x2)	# 2423
	addi	x2, x2, -320	# 2423
	lw		x31, 0(x29)	# 2423
	jalr	x1, x31, 0	# 2423
	addi	x2, x2, 320	# 2423
	lw		x1, -316(x2)	# 2423
	lw		x4, -4(x2)	# 259
	mul		x5, x30, x4	# 259
	addi	x5, x5, 60312	# 259
	flw		f1, 0(x5)	# 259
	mul		x5, x30, x4	# 259
	addi	x5, x5, 60736	# 259
	fsw		f1, 0(x5)	# 259
	lw		x5, 0(x2)	# 260
	mul		x6, x30, x5	# 260
	addi	x6, x6, 60312	# 260
	flw		f1, 0(x6)	# 260
	mul		x6, x30, x5	# 260
	addi	x6, x6, 60736	# 260
	fsw		f1, 0(x6)	# 260
	lw		x6, -48(x2)	# 261
	mul		x7, x30, x6	# 261
	addi	x7, x7, 60312	# 261
	flw		f1, 0(x7)	# 261
	mul		x7, x30, x6	# 261
	addi	x7, x7, 60736	# 261
	fsw		f1, 0(x7)	# 261
	mul		x7, x30, x4	# 1287
	addi	x7, x7, 60000	# 1287
	lw		x7, 0(x7)	# 1287
	sub		x7, x7, x5	# 1287
	lw		x8, -80(x2)	# 1287
	lw		x29, -104(x2)	# 1287
	addi	x5, x7, 0
	addi	x4, x8, 0
	sw		x1, -316(x2)	# 1287
	addi	x2, x2, -320	# 1287
	lw		x31, 0(x29)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 320	# 1287
	lw		x1, -316(x2)	# 1287
	lw		x4, -4(x2)	# 2505
	mul		x5, x30, x4	# 2505
	addi	x5, x5, 60000	# 2505
	lw		x5, 0(x5)	# 2505
	lw		x6, 0(x2)	# 2505
	sub		x5, x5, x6	# 2505
	ble		x4, x5, ble.32423	# 2470
	jal		x0, ble_cont.32422	# 2470
ble.32423:
	mul		x7, x30, x5	# 2471
	addi	x7, x7, 60048	# 2471
	lw		x7, 0(x7)	# 2471
	lw		x8, 8(x7)	# 363
	lw		x9, -48(x2)	# 2472
	beq		x8, x9, beq.32425	# 2472
	jal		x0, beq_cont.32424	# 2472
beq.32425:
	lw		x8, 28(x7)	# 461
	mul		x10, x30, x4	# 466
	add		x8, x8, x10	# 466
	flw		f1, 0(x8)	# 466
	fadd	f2, f0, f16	# 2473
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32427	# 125
	jal		x0, fle_cont.32426	# 125
fle_else.32427:
	lw		x8, 4(x7)	# 353
	beq		x8, x6, beq.32429	# 2476
	beq		x8, x9, beq.32431	# 2478
	jal		x0, beq_cont.32430	# 2478
beq.32431:
	addi	x8, x0, 4	# 2455
	mul		x5, x5, x8	# 2455
	addi	x5, x5, 1	# 2455
	mul		x8, x30, x4	# 2456
	addi	x8, x8, 61736	# 2456
	lw		x8, 0(x8)	# 2456
	lw		x10, 28(x7)	# 461
	mul		x11, x30, x4	# 466
	add		x10, x10, x11	# 466
	flw		f1, 0(x10)	# 466
	fsub	f1, f2, f1	# 2457
	lw		x10, 16(x7)	# 421
	mul		x11, x30, x4	# 292
	addi	x11, x11, 60312	# 292
	flw		f2, 0(x11)	# 292
	mul		x11, x30, x4	# 292
	add		x11, x10, x11	# 292
	flw		f3, 0(x11)	# 292
	fmul	f2, f2, f3	# 292
	mul		x11, x30, x6	# 292
	addi	x11, x11, 60312	# 292
	flw		f3, 0(x11)	# 292
	mul		x11, x30, x6	# 292
	add		x11, x10, x11	# 292
	flw		f4, 0(x11)	# 292
	fmul	f3, f3, f4	# 292
	fadd	f2, f2, f3	# 292
	mul		x11, x30, x9	# 292
	addi	x11, x11, 60312	# 292
	flw		f3, 0(x11)	# 292
	mul		x11, x30, x9	# 292
	add		x10, x10, x11	# 292
	flw		f4, 0(x10)	# 292
	fmul	f3, f3, f4	# 292
	fadd	f2, f2, f3	# 292
	lui		x10, %hi(l.25829)	# 2461
	ori		x10, x0, %lo(l.25829)	# 2461
	flw		f3, 0(x10)	# 2461
	lw		x10, 16(x7)	# 391
	mul		x11, x30, x4	# 396
	add		x10, x10, x11	# 396
	flw		f4, 0(x10)	# 396
	fmul	f4, f3, f4	# 2461
	fmul	f4, f4, f2	# 2461
	mul		x10, x30, x4	# 2461
	addi	x10, x10, 60312	# 2461
	flw		f5, 0(x10)	# 2461
	fsub	f4, f4, f5	# 2461
	lw		x10, 16(x7)	# 401
	mul		x11, x30, x6	# 406
	add		x10, x10, x11	# 406
	flw		f5, 0(x10)	# 406
	fmul	f5, f3, f5	# 2462
	fmul	f5, f5, f2	# 2462
	mul		x10, x30, x6	# 2462
	addi	x10, x10, 60312	# 2462
	flw		f6, 0(x10)	# 2462
	fsub	f5, f5, f6	# 2462
	lw		x7, 16(x7)	# 411
	mul		x10, x30, x9	# 416
	add		x7, x7, x10	# 416
	flw		f6, 0(x7)	# 416
	fmul	f3, f3, f6	# 2463
	fmul	f2, f3, f2	# 2463
	mul		x7, x30, x9	# 2463
	addi	x7, x7, 60312	# 2463
	flw		f3, 0(x7)	# 2463
	fsub	f2, f2, f3	# 2463
	flw		f3, -8(x2)	# 2382
	lw		x7, -20(x2)	# 2382
	sw		x8, -316(x2)	# 2382
	sw		x5, -320(x2)	# 2382
	fsw		f1, -324(x2)	# 2382
	fsw		f2, -328(x2)	# 2382
	fsw		f5, -332(x2)	# 2382
	fsw		f4, -336(x2)	# 2382
	addi	x4, x7, 0
	fadd	f1, f0, f3
	sw		x1, -340(x2)	# 2382
	addi	x2, x2, -344	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 344	# 2382
	lw		x1, -340(x2)	# 2382
	addi	x5, x4, 0	# 2382
	lw		x4, -4(x2)	# 2383
	mul		x6, x30, x4	# 2383
	addi	x6, x6, 60000	# 2383
	lw		x6, 0(x6)	# 2383
	sw		x5, -340(x2)	# 2383
	addi	x4, x6, 0
	sw		x1, -344(x2)	# 2383
	addi	x2, x2, -348	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 348	# 2383
	lw		x1, -344(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -340(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	lw		x6, -4(x2)	# 240
	mul		x7, x30, x6	# 240
	add		x7, x4, x7	# 240
	flw		f1, -336(x2)	# 240
	fsw		f1, 0(x7)	# 240
	lw		x7, 0(x2)	# 241
	mul		x8, x30, x7	# 241
	add		x8, x4, x8	# 241
	flw		f1, -332(x2)	# 241
	fsw		f1, 0(x8)	# 241
	lw		x8, -48(x2)	# 242
	mul		x9, x30, x8	# 242
	add		x4, x4, x9	# 242
	flw		f1, -328(x2)	# 242
	fsw		f1, 0(x4)	# 242
	mul		x4, x30, x6	# 1287
	addi	x4, x4, 60000	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x4, x4, x7	# 1287
	lw		x29, -104(x2)	# 1287
	sw		x5, -344(x2)	# 1287
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -348(x2)	# 1287
	addi	x2, x2, -352	# 1287
	lw		x31, 0(x29)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 352	# 1287
	lw		x1, -348(x2)	# 1287
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f1, -324(x2)	# 2436
	fsw		f1, 8(x4)	# 2436
	lw		x5, -344(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -320(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	lw		x5, -316(x2)	# 2436
	mul		x6, x30, x5	# 2436
	addi	x6, x6, 61016	# 2436
	sw		x4, 0(x6)	# 2436
	addi	x4, x5, 1	# 2464
	lw		x5, -4(x2)	# 2464
	mul		x6, x30, x5	# 2464
	addi	x6, x6, 61736	# 2464
	sw		x4, 0(x6)	# 2464
beq_cont.32430:
	jal		x0, beq_cont.32428	# 2476
beq.32429:
	addi	x8, x0, 4	# 2441
	mul		x5, x5, x8	# 2441
	mul		x8, x30, x4	# 2442
	addi	x8, x8, 61736	# 2442
	lw		x8, 0(x8)	# 2442
	lw		x7, 28(x7)	# 461
	mul		x10, x30, x4	# 466
	add		x7, x7, x10	# 466
	flw		f1, 0(x7)	# 466
	fsub	f1, f2, f1	# 2443
	mul		x7, x30, x4	# 2444
	addi	x7, x7, 60312	# 2444
	flw		f2, 0(x7)	# 2444
	fsub	f2, f0, f2	# 123
	mul		x7, x30, x6	# 2445
	addi	x7, x7, 60312	# 2445
	flw		f3, 0(x7)	# 2445
	fsub	f3, f0, f3	# 123
	mul		x7, x30, x9	# 2446
	addi	x7, x7, 60312	# 2446
	flw		f4, 0(x7)	# 2446
	fsub	f4, f0, f4	# 123
	addi	x7, x5, 1	# 2447
	mul		x10, x30, x4	# 2447
	addi	x10, x10, 60312	# 2447
	flw		f5, 0(x10)	# 2447
	flw		f6, -8(x2)	# 2382
	lw		x10, -20(x2)	# 2382
	fsw		f2, -348(x2)	# 2382
	sw		x5, -352(x2)	# 2382
	sw		x8, -356(x2)	# 2382
	sw		x7, -360(x2)	# 2382
	fsw		f1, -364(x2)	# 2382
	fsw		f4, -368(x2)	# 2382
	fsw		f3, -372(x2)	# 2382
	fsw		f5, -376(x2)	# 2382
	addi	x4, x10, 0
	fadd	f1, f0, f6
	sw		x1, -380(x2)	# 2382
	addi	x2, x2, -384	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 384	# 2382
	lw		x1, -380(x2)	# 2382
	addi	x5, x4, 0	# 2382
	lw		x4, -4(x2)	# 2383
	mul		x6, x30, x4	# 2383
	addi	x6, x6, 60000	# 2383
	lw		x6, 0(x6)	# 2383
	sw		x5, -380(x2)	# 2383
	addi	x4, x6, 0
	sw		x1, -384(x2)	# 2383
	addi	x2, x2, -388	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 388	# 2383
	lw		x1, -384(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -380(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	lw		x6, -4(x2)	# 240
	mul		x7, x30, x6	# 240
	add		x7, x4, x7	# 240
	flw		f1, -376(x2)	# 240
	fsw		f1, 0(x7)	# 240
	lw		x7, 0(x2)	# 241
	mul		x8, x30, x7	# 241
	add		x8, x4, x8	# 241
	flw		f1, -372(x2)	# 241
	fsw		f1, 0(x8)	# 241
	lw		x8, -48(x2)	# 242
	mul		x9, x30, x8	# 242
	add		x4, x4, x9	# 242
	flw		f2, -368(x2)	# 242
	fsw		f2, 0(x4)	# 242
	mul		x4, x30, x6	# 1287
	addi	x4, x4, 60000	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x4, x4, x7	# 1287
	lw		x29, -104(x2)	# 1287
	sw		x5, -384(x2)	# 1287
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -388(x2)	# 1287
	addi	x2, x2, -392	# 1287
	lw		x31, 0(x29)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 392	# 1287
	lw		x1, -388(x2)	# 1287
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f1, -364(x2)	# 2436
	fsw		f1, 8(x4)	# 2436
	lw		x5, -384(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -360(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	lw		x5, -356(x2)	# 2436
	mul		x6, x30, x5	# 2436
	addi	x6, x6, 61016	# 2436
	sw		x4, 0(x6)	# 2436
	addi	x4, x5, 1	# 2448
	lw		x6, -352(x2)	# 2448
	addi	x7, x6, 2	# 2448
	lw		x8, 0(x2)	# 2448
	mul		x9, x30, x8	# 2448
	addi	x9, x9, 60312	# 2448
	flw		f2, 0(x9)	# 2448
	flw		f3, -8(x2)	# 2382
	lw		x9, -20(x2)	# 2382
	sw		x4, -388(x2)	# 2382
	sw		x7, -392(x2)	# 2382
	fsw		f2, -396(x2)	# 2382
	addi	x4, x9, 0
	fadd	f1, f0, f3
	sw		x1, -400(x2)	# 2382
	addi	x2, x2, -404	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 404	# 2382
	lw		x1, -400(x2)	# 2382
	addi	x5, x4, 0	# 2382
	lw		x4, -4(x2)	# 2383
	mul		x6, x30, x4	# 2383
	addi	x6, x6, 60000	# 2383
	lw		x6, 0(x6)	# 2383
	sw		x5, -400(x2)	# 2383
	addi	x4, x6, 0
	sw		x1, -404(x2)	# 2383
	addi	x2, x2, -408	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 408	# 2383
	lw		x1, -404(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -400(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	lw		x6, -4(x2)	# 240
	mul		x7, x30, x6	# 240
	add		x7, x4, x7	# 240
	flw		f1, -348(x2)	# 240
	fsw		f1, 0(x7)	# 240
	lw		x7, 0(x2)	# 241
	mul		x8, x30, x7	# 241
	add		x8, x4, x8	# 241
	flw		f2, -396(x2)	# 241
	fsw		f2, 0(x8)	# 241
	lw		x8, -48(x2)	# 242
	mul		x9, x30, x8	# 242
	add		x4, x4, x9	# 242
	flw		f2, -368(x2)	# 242
	fsw		f2, 0(x4)	# 242
	mul		x4, x30, x6	# 1287
	addi	x4, x4, 60000	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x4, x4, x7	# 1287
	lw		x29, -104(x2)	# 1287
	sw		x5, -404(x2)	# 1287
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -408(x2)	# 1287
	addi	x2, x2, -412	# 1287
	lw		x31, 0(x29)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 412	# 1287
	lw		x1, -408(x2)	# 1287
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f1, -364(x2)	# 2436
	fsw		f1, 8(x4)	# 2436
	lw		x5, -404(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -392(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	lw		x5, -388(x2)	# 2436
	mul		x5, x30, x5	# 2436
	addi	x5, x5, 61016	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -356(x2)	# 2449
	addi	x5, x4, 2	# 2449
	lw		x6, -352(x2)	# 2449
	addi	x6, x6, 3	# 2449
	lw		x7, -48(x2)	# 2449
	mul		x8, x30, x7	# 2449
	addi	x8, x8, 60312	# 2449
	flw		f2, 0(x8)	# 2449
	flw		f3, -8(x2)	# 2382
	lw		x8, -20(x2)	# 2382
	sw		x5, -408(x2)	# 2382
	sw		x6, -412(x2)	# 2382
	fsw		f2, -416(x2)	# 2382
	addi	x4, x8, 0
	fadd	f1, f0, f3
	sw		x1, -420(x2)	# 2382
	addi	x2, x2, -424	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 424	# 2382
	lw		x1, -420(x2)	# 2382
	addi	x5, x4, 0	# 2382
	lw		x4, -4(x2)	# 2383
	mul		x6, x30, x4	# 2383
	addi	x6, x6, 60000	# 2383
	lw		x6, 0(x6)	# 2383
	sw		x5, -420(x2)	# 2383
	addi	x4, x6, 0
	sw		x1, -424(x2)	# 2383
	addi	x2, x2, -428	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 428	# 2383
	lw		x1, -424(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -420(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	lw		x6, -4(x2)	# 240
	mul		x7, x30, x6	# 240
	add		x7, x4, x7	# 240
	flw		f1, -348(x2)	# 240
	fsw		f1, 0(x7)	# 240
	lw		x7, 0(x2)	# 241
	mul		x8, x30, x7	# 241
	add		x8, x4, x8	# 241
	flw		f1, -372(x2)	# 241
	fsw		f1, 0(x8)	# 241
	lw		x8, -48(x2)	# 242
	mul		x9, x30, x8	# 242
	add		x4, x4, x9	# 242
	flw		f1, -416(x2)	# 242
	fsw		f1, 0(x4)	# 242
	mul		x4, x30, x6	# 1287
	addi	x4, x4, 60000	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x4, x4, x7	# 1287
	lw		x29, -104(x2)	# 1287
	sw		x5, -424(x2)	# 1287
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -428(x2)	# 1287
	addi	x2, x2, -432	# 1287
	lw		x31, 0(x29)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 432	# 1287
	lw		x1, -428(x2)	# 1287
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f1, -364(x2)	# 2436
	fsw		f1, 8(x4)	# 2436
	lw		x5, -424(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -412(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	lw		x5, -408(x2)	# 2436
	mul		x5, x30, x5	# 2436
	addi	x5, x5, 61016	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -356(x2)	# 2450
	addi	x4, x4, 3	# 2450
	lw		x5, -4(x2)	# 2450
	mul		x6, x30, x5	# 2450
	addi	x6, x6, 61736	# 2450
	sw		x4, 0(x6)	# 2450
beq_cont.32428:
fle_cont.32426:
beq_cont.32424:
ble_cont.32422:
	lw		x4, -4(x2)	# 2218
	mul		x5, x30, x4	# 2218
	addi	x5, x5, 60632	# 2218
	flw		f1, 0(x5)	# 2218
	lw		x5, 0(x2)	# 2218
	mul		x6, x30, x5	# 2218
	addi	x6, x6, 60624	# 2218
	lw		x6, 0(x6)	# 2218
	sub		x6, x4, x6	# 2218
	lw		x29, -100(x2)	# 2218
	fsw		f1, -428(x2)	# 2218
	addi	x4, x6, 0
	sw		x1, -432(x2)	# 2218
	addi	x2, x2, -436	# 2218
	lw		x31, 0(x29)	# 2218
	jalr	x1, x31, 0	# 2218
	addi	x2, x2, 436	# 2218
	lw		x1, -432(x2)	# 2218
	flw		f2, -428(x2)	# 2218
	fmul	f1, f2, f1	# 2218
	lw		x6, -4(x2)	# 2221
	mul		x4, x30, x6	# 2221
	addi	x4, x4, 60672	# 2221
	flw		f2, 0(x4)	# 2221
	fmul	f2, f1, f2	# 2221
	mul		x4, x30, x6	# 2221
	addi	x4, x4, 60684	# 2221
	flw		f3, 0(x4)	# 2221
	fadd	f2, f2, f3	# 2221
	lw		x4, 0(x2)	# 2222
	mul		x5, x30, x4	# 2222
	addi	x5, x5, 60672	# 2222
	flw		f3, 0(x5)	# 2222
	fmul	f3, f1, f3	# 2222
	mul		x5, x30, x4	# 2222
	addi	x5, x5, 60684	# 2222
	flw		f4, 0(x5)	# 2222
	fadd	f3, f3, f4	# 2222
	lw		x5, -48(x2)	# 2223
	mul		x7, x30, x5	# 2223
	addi	x7, x7, 60672	# 2223
	flw		f4, 0(x7)	# 2223
	fmul	f1, f1, f4	# 2223
	mul		x7, x30, x5	# 2223
	addi	x7, x7, 60684	# 2223
	flw		f4, 0(x7)	# 2223
	fadd	f1, f1, f4	# 2223
	mul		x7, x30, x6	# 2224
	addi	x7, x7, 60616	# 2224
	lw		x7, 0(x7)	# 2224
	sub		x4, x7, x4	# 2224
	lw		x7, -228(x2)	# 2224
	lw		x29, -96(x2)	# 2224
	addi	x5, x4, 0
	addi	x4, x7, 0
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -432(x2)	# 2224
	addi	x2, x2, -436	# 2224
	lw		x31, 0(x29)	# 2224
	jalr	x1, x31, 0	# 2224
	addi	x2, x2, 436	# 2224
	lw		x1, -432(x2)	# 2224
	lw		x4, -4(x2)	# 2507
	lw		x5, -188(x2)	# 2507
	lw		x6, -228(x2)	# 2507
	lw		x7, -268(x2)	# 2507
	lw		x8, -48(x2)	# 2507
	lw		x9, -20(x2)	# 2507
	lw		x29, -92(x2)	# 2507
	sw		x1, -432(x2)	# 2507
	addi	x2, x2, -436	# 2507
	lw		x31, 0(x29)	# 2507
	jalr	x1, x31, 0	# 2507
	addi	x2, x2, 436	# 2507
	lw		x1, -432(x2)	# 2507
	EXIT	
