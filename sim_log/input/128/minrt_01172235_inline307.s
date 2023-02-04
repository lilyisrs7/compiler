l.24946:	# 1.000000
	.word	1.000000
l.24955:	# 4.000000
	.word	4.000000
l.24951:	# 4.500000
	.word	4.500000
l.25433:	# 0.010000
	.word	0.010000
l.25431:	# -0.200000
	.word	-0.200000
l.25552:	# -0.100000
	.word	-0.100000
l.26005:	# 100000000.000000
	.word	100000000.000000
l.24944:	# -0.500000
	.word	-0.500000
l.26703:	# 150.000000
	.word	150.000000
l.26491:	# -150.000000
	.word	-150.000000
l.24948:	# 0.500000
	.word	0.500000
l.24953:	# -4.500000
	.word	-4.500000
l.25094:	# 2.000000
	.word	2.000000
l.26213:	# 3.141593
	.word	3.141593
l.26225:	# 0.150000
	.word	0.150000
l.25043:	# -1.000000
	.word	-1.000000
l.26207:	# 0.000100
	.word	0.000100
l.25014:	# 0.017453
	.word	0.017453
l.27693:	# 200.000000
	.word	200.000000
l.27697:	# -200.000000
	.word	-200.000000
l.26250:	# 0.250000
	.word	0.250000
l.26209:	# 15.000000
	.word	15.000000
l.26211:	# 30.000000
	.word	30.000000
l.26227:	# 0.300000
	.word	0.300000
l.26264:	# 20.000000
	.word	20.000000
l.26239:	# 10.000000
	.word	10.000000
l.26314:	# 0.003906
	.word	0.003906
l.26342:	# -2.000000
	.word	-2.000000
l.27547:	# 128.000000
	.word	128.000000
l.27537:	# 0.785398
	.word	0.785398
l.27535:	# 1.570796
	.word	1.570796
l.27533:	# 6.283185
	.word	6.283185
l.27531:	# 3.141593
	.word	3.141593
l.27516:	# 1000000000.000000
	.word	1000000000.000000
l.27512:	# 255.000000
	.word	255.000000
l.27498:	# 0.000000
	.word	0.000000
l.27471:	# 0.900000
	.word	0.900000
l.24985:	# 0.142857
	.word	0.142857
l.24987:	# 0.111111
	.word	0.111111
l.24989:	# 0.089764
	.word	0.089764
l.24983:	# 0.200000
	.word	0.200000
l.26438:	# 0.100000
	.word	0.100000
l.24981:	# 0.333333
	.word	0.333333
l.24979:	# 0.437500
	.word	0.437500
l.24976:	# 2.437500
	.word	2.437500
l.24970:	# 0.001370
	.word	0.001370
l.24960:	# 0.166667
	.word	0.166667
l.24962:	# 0.008333
	.word	0.008333
l.24964:	# 0.000196
	.word	0.000196
l.24968:	# 0.041664
	.word	0.041664
l.26261:	# 0.050000
	.word	0.050000
int_of_float_rem.2544.17245:
	lw		x5, 4(x29)	# 145
	fadd	f2, f0, f23	# 145
	fle		x31, f2, f1	# 145
	beq		x31, x0, fle_else.30375	# 145
	fadd	f2, f0, f26	# 146
	fle		x31, f2, f1	# 146
	beq		x31, x0, fle_else.30376	# 146
	fadd	f2, f0, f16	# 147
	fsub	f1, f1, f2	# 147
	add		x4, x4, x5	# 147
	lw		x31, 0(x29)	# 147
	jalr	x0, x31, 0	# 147
fle_else.30376:
	jalr	x0, x1, 0	# 146
fle_else.30375:
	fadd	f2, f0, f16	# 148
	fadd	f1, f1, f2	# 148
	sub		x4, x4, x5	# 148
	lw		x31, 0(x29)	# 148
	jalr	x0, x31, 0	# 148
int_of_float_four.2547.17248:
	lw		x5, 4(x29)	# 150
	fadd	f2, f0, f18	# 150
	fle		x31, f2, f1	# 150
	beq		x31, x0, fle_else.30377	# 150
	fadd	f2, f0, f17	# 150
	fsub	f1, f1, f2	# 150
	addi	x4, x4, 4	# 150
	lw		x31, 0(x29)	# 150
	jalr	x0, x31, 0	# 150
fle_else.30377:
	fadd	f2, f0, f27	# 151
	fle		x31, f2, f1	# 151
	beq		x31, x0, fle_else.30378	# 151
	addi	x29, x5, 0
	lw		x31, 0(x29)	# 152
	jalr	x0, x31, 0	# 152
fle_else.30378:
	fadd	f2, f0, f17	# 151
	fadd	f1, f1, f2	# 151
	addi	x5, x0, 4	# 151
	sub		x4, x4, x5	# 151
	lw		x31, 0(x29)	# 151
	jalr	x0, x31, 0	# 151
float_of_int_rem.2552.17251:
	lw		x5, 4(x29)	# 159
	ble		x5, x4, ble.30379	# 159
	jalr	x0, x1, 0	# 159
ble.30379:
	sub		x4, x4, x5	# 159
	fadd	f2, f0, f16	# 159
	fadd	f1, f1, f2	# 159
	lw		x31, 0(x29)	# 159
	jalr	x0, x31, 0	# 159
float_of_int_four.2555.17254:
	lw		x5, 4(x29)	# 161
	addi	x6, x0, 4	# 161
	ble		x6, x4, ble.30380	# 161
	addi	x29, x5, 0
	lw		x31, 0(x29)	# 161
	jalr	x0, x31, 0	# 161
ble.30380:
	sub		x4, x4, x6	# 161
	fadd	f2, f0, f17	# 161
	fadd	f1, f1, f2	# 161
	lw		x31, 0(x29)	# 161
	jalr	x0, x31, 0	# 161
float_of_int.2558.17257:
	lw		x5, 12(x29)	# 163
	lw		x6, 8(x29)	# 163
	flw		f1, 4(x29)	# 163
	ble		x6, x4, ble.30381	# 163
	sub		x4, x0, x4	# 164
	sw		x1, 0(x2)	# 164
	addi	x2, x2, -4	# 164
	lw		x31, 0(x29)	# 164
	jalr	x1, x31, 0	# 164
	addi	x2, x2, 4	# 164
	lw		x1, 0(x2)	# 164
	fsub	f1, f0, f1	# 164
	jalr	x0, x1, 0	# 164
ble.30381:
	addi	x29, x5, 0
	lw		x31, 0(x29)	# 163
	jalr	x0, x31, 0	# 163
sin.2570.17263:
	flw		f2, 20(x29)	# 199
	flw		f3, 16(x29)	# 199
	flw		f4, 12(x29)	# 199
	flw		f5, 8(x29)	# 199
	flw		f6, 4(x29)	# 199
	fle		x31, f6, f1	# 199
	beq		x31, x0, fle_else.30382	# 199
	fle		x31, f4, f1	# 200
	beq		x31, x0, fle_else.30383	# 200
	fsub	f1, f1, f4	# 200
	lw		x31, 0(x29)	# 200
	jalr	x0, x31, 0	# 200
fle_else.30383:
	fle		x31, f5, f1	# 201
	beq		x31, x0, fle_else.30384	# 201
	fsub	f1, f1, f5	# 201
	sw		x1, 0(x2)	# 201
	addi	x2, x2, -4	# 201
	lw		x31, 0(x29)	# 201
	jalr	x1, x31, 0	# 201
	addi	x2, x2, 4	# 201
	lw		x1, 0(x2)	# 201
	fsub	f1, f0, f1	# 201
	jalr	x0, x1, 0	# 201
fle_else.30384:
	fle		x31, f1, f3	# 202
	beq		x31, x0, fle_else.30385	# 202
	fle		x31, f2, f1	# 203
	beq		x31, x0, fle_else.30386	# 203
	fsub	f1, f3, f1	# 203
	fmul	f1, f1, f1	# 194
	fmul	f2, f1, f1	# 195
	fadd	f3, f0, f16	# 196
	fadd	f4, f0, f26	# 196
	fmul	f4, f4, f1	# 196
	fsub	f3, f3, f4	# 196
	lui		x4, %hi(l.24968)	# 196
	ori		x4, x0, %lo(l.24968)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f2	# 196
	fadd	f3, f3, f4	# 196
	lui		x4, %hi(l.24970)	# 196
	ori		x4, x0, %lo(l.24970)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f1, f4, f1	# 196
	fmul	f1, f1, f2	# 196
	fsub	f1, f3, f1	# 196
	jalr	x0, x1, 0	# 196
fle_else.30386:
	fmul	f2, f1, f1	# 189
	fmul	f3, f1, f2	# 190
	lui		x4, %hi(l.24960)	# 191
	ori		x4, x0, %lo(l.24960)	# 191
	flw		f4, 0(x4)	# 191
	fmul	f4, f4, f3	# 191
	fsub	f1, f1, f4	# 191
	lui		x4, %hi(l.24962)	# 191
	ori		x4, x0, %lo(l.24962)	# 191
	flw		f4, 0(x4)	# 191
	fmul	f4, f4, f2	# 191
	fmul	f4, f4, f3	# 191
	fadd	f1, f1, f4	# 191
	lui		x4, %hi(l.24964)	# 191
	ori		x4, x0, %lo(l.24964)	# 191
	flw		f4, 0(x4)	# 191
	fmul	f4, f4, f2	# 191
	fmul	f2, f4, f2	# 191
	fmul	f2, f2, f3	# 191
	fsub	f1, f1, f2	# 191
	jalr	x0, x1, 0	# 191
fle_else.30385:
	fsub	f1, f5, f1	# 202
	lw		x31, 0(x29)	# 202
	jalr	x0, x31, 0	# 202
fle_else.30382:
	fsub	f1, f0, f1	# 199
	sw		x1, 0(x2)	# 199
	addi	x2, x2, -4	# 199
	lw		x31, 0(x29)	# 199
	jalr	x1, x31, 0	# 199
	addi	x2, x2, 4	# 199
	lw		x1, 0(x2)	# 199
	fsub	f1, f0, f1	# 199
	jalr	x0, x1, 0	# 199
cos.2572.17265:
	lw		x4, 16(x29)	# 207
	flw		f2, 12(x29)	# 207
	flw		f3, 8(x29)	# 207
	flw		f4, 4(x29)	# 207
	fle		x31, f4, f1	# 207
	beq		x31, x0, fle_else.30387	# 207
	fle		x31, f1, f2	# 208
	beq		x31, x0, fle_else.30388	# 208
	fmul	f1, f1, f1	# 194
	fmul	f2, f1, f1	# 195
	fadd	f3, f0, f16	# 196
	fadd	f4, f0, f26	# 196
	fmul	f4, f4, f1	# 196
	fsub	f3, f3, f4	# 196
	lui		x4, %hi(l.24968)	# 196
	ori		x4, x0, %lo(l.24968)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f2	# 196
	fadd	f3, f3, f4	# 196
	lui		x4, %hi(l.24970)	# 196
	ori		x4, x0, %lo(l.24970)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f1, f4, f1	# 196
	fmul	f1, f1, f2	# 196
	fsub	f1, f3, f1	# 196
	jalr	x0, x1, 0	# 196
fle_else.30388:
	fsub	f1, f3, f1	# 208
	addi	x29, x4, 0
	lw		x31, 0(x29)	# 208
	jalr	x0, x31, 0	# 208
fle_else.30387:
	fsub	f1, f0, f1	# 207
	lw		x31, 0(x29)	# 207
	jalr	x0, x31, 0	# 207
atan.2574.17267:
	flw		f2, 12(x29)	# 212
	flw		f3, 8(x29)	# 212
	flw		f4, 4(x29)	# 212
	fle		x31, f4, f1	# 212
	beq		x31, x0, fle_else.30389	# 212
	lui		x4, %hi(l.24976)	# 213
	ori		x4, x0, %lo(l.24976)	# 213
	flw		f4, 0(x4)	# 213
	fle		x31, f1, f4	# 213
	beq		x31, x0, fle_else.30390	# 213
	lui		x4, %hi(l.24979)	# 214
	ori		x4, x0, %lo(l.24979)	# 214
	flw		f3, 0(x4)	# 214
	fle		x31, f3, f1	# 214
	beq		x31, x0, fle_else.30391	# 214
	fadd	f3, f0, f16	# 214
	fsub	f4, f1, f3	# 214
	fadd	f1, f1, f3	# 214
	fdiv	f1, f4, f1	# 214
	fsw		f2, 0(x2)	# 214
	sw		x1, -4(x2)	# 214
	addi	x2, x2, -8	# 214
	lw		x31, 0(x29)	# 214
	jalr	x1, x31, 0	# 214
	addi	x2, x2, 8	# 214
	lw		x1, -4(x2)	# 214
	flw		f2, 0(x2)	# 214
	fadd	f1, f2, f1	# 214
	jalr	x0, x1, 0	# 214
fle_else.30391:
	fmul	f2, f1, f1	# 216
	fmul	f3, f1, f2	# 217
	fmul	f4, f2, f2	# 218
	lui		x4, %hi(l.24981)	# 219
	ori		x4, x0, %lo(l.24981)	# 219
	flw		f5, 0(x4)	# 219
	fmul	f5, f5, f3	# 219
	fsub	f1, f1, f5	# 219
	lui		x4, %hi(l.24983)	# 219
	ori		x4, x0, %lo(l.24983)	# 219
	flw		f5, 0(x4)	# 219
	fmul	f5, f5, f2	# 219
	fmul	f5, f5, f3	# 219
	fadd	f1, f1, f5	# 219
	lui		x4, %hi(l.24985)	# 219
	ori		x4, x0, %lo(l.24985)	# 219
	flw		f5, 0(x4)	# 219
	fmul	f5, f5, f4	# 219
	fmul	f5, f5, f3	# 219
	fsub	f1, f1, f5	# 219
	lui		x4, %hi(l.24987)	# 220
	ori		x4, x0, %lo(l.24987)	# 220
	flw		f5, 0(x4)	# 220
	fmul	f2, f5, f2	# 220
	fmul	f2, f2, f4	# 220
	fmul	f2, f2, f3	# 220
	fadd	f1, f1, f2	# 219
	lui		x4, %hi(l.24989)	# 220
	ori		x4, x0, %lo(l.24989)	# 220
	flw		f2, 0(x4)	# 220
	fmul	f2, f2, f4	# 220
	fmul	f2, f2, f4	# 220
	fmul	f2, f2, f3	# 220
	fsub	f1, f1, f2	# 219
	jalr	x0, x1, 0	# 219
fle_else.30390:
	fadd	f2, f0, f16	# 213
	fdiv	f1, f2, f1	# 213
	fsw		f3, -4(x2)	# 213
	sw		x1, -8(x2)	# 213
	addi	x2, x2, -12	# 213
	lw		x31, 0(x29)	# 213
	jalr	x1, x31, 0	# 213
	addi	x2, x2, 12	# 213
	lw		x1, -8(x2)	# 213
	flw		f2, -4(x2)	# 213
	fsub	f1, f2, f1	# 213
	jalr	x0, x1, 0	# 213
fle_else.30389:
	fsub	f1, f0, f1	# 212
	sw		x1, -8(x2)	# 212
	addi	x2, x2, -12	# 212
	lw		x31, 0(x29)	# 212
	jalr	x1, x31, 0	# 212
	addi	x2, x2, 12	# 212
	lw		x1, -8(x2)	# 212
	fsub	f1, f0, f1	# 212
	jalr	x0, x1, 0	# 212
read_object.2711.17269:
	lw		x5, 36(x29)	# 898
	lw		x6, 32(x29)	# 898
	lw		x7, 28(x29)	# 898
	lw		x8, 24(x29)	# 898
	lw		x9, 20(x29)	# 898
	lw		x10, 16(x29)	# 898
	lw		x11, 12(x29)	# 898
	lw		x12, 8(x29)	# 898
	flw		f1, 4(x29)	# 898
	ble		x10, x4, ble.30392	# 898
	sw		x29, 0(x2)	# 816
	sw		x5, -4(x2)	# 816
	sw		x6, -8(x2)	# 816
	sw		x4, -12(x2)	# 816
	sw		x7, -16(x2)	# 816
	sw		x12, -20(x2)	# 816
	sw		x11, -24(x2)	# 816
	fsw		f1, -28(x2)	# 816
	sw		x9, -32(x2)	# 816
	sw		x8, -36(x2)	# 816
	sw		x1, -40(x2)	# 816
	addi	x2, x2, -44	# 816
	jal		x1, min_caml_read_int	# 816
	addi	x2, x2, 44	# 816
	lw		x1, -40(x2)	# 816
	lw		x5, -36(x2)	# 817
	beq		x4, x5, beq.30394	# 817
	sw		x4, -40(x2)	# 819
	sw		x1, -44(x2)	# 819
	addi	x2, x2, -48	# 819
	jal		x1, min_caml_read_int	# 819
	addi	x2, x2, 48	# 819
	lw		x1, -44(x2)	# 819
	sw		x4, -44(x2)	# 820
	sw		x1, -48(x2)	# 820
	addi	x2, x2, -52	# 820
	jal		x1, min_caml_read_int	# 820
	addi	x2, x2, 52	# 820
	lw		x1, -48(x2)	# 820
	sw		x4, -48(x2)	# 821
	sw		x1, -52(x2)	# 821
	addi	x2, x2, -56	# 821
	jal		x1, min_caml_read_int	# 821
	addi	x2, x2, 56	# 821
	lw		x1, -52(x2)	# 821
	flw		f1, -28(x2)	# 823
	lw		x5, -32(x2)	# 823
	sw		x4, -52(x2)	# 823
	addi	x4, x5, 0
	sw		x1, -56(x2)	# 823
	addi	x2, x2, -60	# 823
	jal		x1, min_caml_create_float_array	# 823
	addi	x2, x2, 60	# 823
	lw		x1, -56(x2)	# 823
	sw		x4, -56(x2)	# 824
	sw		x1, -60(x2)	# 824
	addi	x2, x2, -64	# 824
	jal		x1, min_caml_read_float	# 824
	addi	x2, x2, 64	# 824
	lw		x1, -60(x2)	# 824
	lw		x4, -24(x2)	# 824
	mul		x5, x30, x4	# 824
	lw		x6, -56(x2)	# 824
	add		x5, x6, x5	# 824
	fsw		f1, 0(x5)	# 824
	sw		x1, -60(x2)	# 825
	addi	x2, x2, -64	# 825
	jal		x1, min_caml_read_float	# 825
	addi	x2, x2, 64	# 825
	lw		x1, -60(x2)	# 825
	lw		x4, -20(x2)	# 825
	mul		x5, x30, x4	# 825
	lw		x6, -56(x2)	# 825
	add		x5, x6, x5	# 825
	fsw		f1, 0(x5)	# 825
	sw		x1, -60(x2)	# 826
	addi	x2, x2, -64	# 826
	jal		x1, min_caml_read_float	# 826
	addi	x2, x2, 64	# 826
	lw		x1, -60(x2)	# 826
	lw		x4, -16(x2)	# 826
	mul		x5, x30, x4	# 826
	lw		x6, -56(x2)	# 826
	add		x5, x6, x5	# 826
	fsw		f1, 0(x5)	# 826
	flw		f1, -28(x2)	# 828
	lw		x5, -32(x2)	# 828
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 828
	addi	x2, x2, -64	# 828
	jal		x1, min_caml_create_float_array	# 828
	addi	x2, x2, 64	# 828
	lw		x1, -60(x2)	# 828
	sw		x4, -60(x2)	# 829
	sw		x1, -64(x2)	# 829
	addi	x2, x2, -68	# 829
	jal		x1, min_caml_read_float	# 829
	addi	x2, x2, 68	# 829
	lw		x1, -64(x2)	# 829
	lw		x4, -24(x2)	# 829
	mul		x5, x30, x4	# 829
	lw		x6, -60(x2)	# 829
	add		x5, x6, x5	# 829
	fsw		f1, 0(x5)	# 829
	sw		x1, -64(x2)	# 830
	addi	x2, x2, -68	# 830
	jal		x1, min_caml_read_float	# 830
	addi	x2, x2, 68	# 830
	lw		x1, -64(x2)	# 830
	lw		x4, -20(x2)	# 830
	mul		x5, x30, x4	# 830
	lw		x6, -60(x2)	# 830
	add		x5, x6, x5	# 830
	fsw		f1, 0(x5)	# 830
	sw		x1, -64(x2)	# 831
	addi	x2, x2, -68	# 831
	jal		x1, min_caml_read_float	# 831
	addi	x2, x2, 68	# 831
	lw		x1, -64(x2)	# 831
	lw		x4, -16(x2)	# 831
	mul		x5, x30, x4	# 831
	lw		x6, -60(x2)	# 831
	add		x5, x6, x5	# 831
	fsw		f1, 0(x5)	# 831
	sw		x1, -64(x2)	# 833
	addi	x2, x2, -68	# 833
	jal		x1, min_caml_read_float	# 833
	addi	x2, x2, 68	# 833
	lw		x1, -64(x2)	# 833
	flw		f2, -28(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.30396	# 122
	addi	x4, x0, 0	# 122
	jal		x0, fle_cont.30395	# 122
fle_else.30396:
	addi	x4, x0, 1	# 122
fle_cont.30395:
	lw		x5, -16(x2)	# 835
	fsw		f1, -64(x2)	# 835
	sw		x4, -68(x2)	# 835
	addi	x4, x5, 0
	fadd	f1, f0, f2
	sw		x1, -72(x2)	# 835
	addi	x2, x2, -76	# 835
	jal		x1, min_caml_create_float_array	# 835
	addi	x2, x2, 76	# 835
	lw		x1, -72(x2)	# 835
	sw		x4, -72(x2)	# 836
	sw		x1, -76(x2)	# 836
	addi	x2, x2, -80	# 836
	jal		x1, min_caml_read_float	# 836
	addi	x2, x2, 80	# 836
	lw		x1, -76(x2)	# 836
	lw		x4, -24(x2)	# 836
	mul		x5, x30, x4	# 836
	lw		x6, -72(x2)	# 836
	add		x5, x6, x5	# 836
	fsw		f1, 0(x5)	# 836
	sw		x1, -76(x2)	# 837
	addi	x2, x2, -80	# 837
	jal		x1, min_caml_read_float	# 837
	addi	x2, x2, 80	# 837
	lw		x1, -76(x2)	# 837
	lw		x4, -20(x2)	# 837
	mul		x5, x30, x4	# 837
	lw		x6, -72(x2)	# 837
	add		x5, x6, x5	# 837
	fsw		f1, 0(x5)	# 837
	flw		f1, -28(x2)	# 839
	lw		x5, -32(x2)	# 839
	addi	x4, x5, 0
	sw		x1, -76(x2)	# 839
	addi	x2, x2, -80	# 839
	jal		x1, min_caml_create_float_array	# 839
	addi	x2, x2, 80	# 839
	lw		x1, -76(x2)	# 839
	sw		x4, -76(x2)	# 840
	sw		x1, -80(x2)	# 840
	addi	x2, x2, -84	# 840
	jal		x1, min_caml_read_float	# 840
	addi	x2, x2, 84	# 840
	lw		x1, -80(x2)	# 840
	lw		x4, -24(x2)	# 840
	mul		x5, x30, x4	# 840
	lw		x6, -76(x2)	# 840
	add		x5, x6, x5	# 840
	fsw		f1, 0(x5)	# 840
	sw		x1, -80(x2)	# 841
	addi	x2, x2, -84	# 841
	jal		x1, min_caml_read_float	# 841
	addi	x2, x2, 84	# 841
	lw		x1, -80(x2)	# 841
	lw		x4, -20(x2)	# 841
	mul		x5, x30, x4	# 841
	lw		x6, -76(x2)	# 841
	add		x5, x6, x5	# 841
	fsw		f1, 0(x5)	# 841
	sw		x1, -80(x2)	# 842
	addi	x2, x2, -84	# 842
	jal		x1, min_caml_read_float	# 842
	addi	x2, x2, 84	# 842
	lw		x1, -80(x2)	# 842
	lw		x4, -16(x2)	# 842
	mul		x5, x30, x4	# 842
	lw		x6, -76(x2)	# 842
	add		x5, x6, x5	# 842
	fsw		f1, 0(x5)	# 842
	flw		f1, -28(x2)	# 844
	lw		x5, -32(x2)	# 844
	addi	x4, x5, 0
	sw		x1, -80(x2)	# 844
	addi	x2, x2, -84	# 844
	jal		x1, min_caml_create_float_array	# 844
	addi	x2, x2, 84	# 844
	lw		x1, -80(x2)	# 844
	lw		x5, -24(x2)	# 845
	lw		x6, -52(x2)	# 845
	sw		x4, -80(x2)	# 845
	beq		x6, x5, beq_cont.30397	# 845
	sw		x1, -84(x2)	# 847
	addi	x2, x2, -88	# 847
	jal		x1, min_caml_read_float	# 847
	addi	x2, x2, 88	# 847
	lw		x1, -84(x2)	# 847
	lui		x4, %hi(l.25014)	# 714
	ori		x4, x0, %lo(l.25014)	# 714
	flw		f2, 0(x4)	# 714
	fmul	f1, f1, f2	# 714
	lw		x4, -24(x2)	# 847
	mul		x5, x30, x4	# 847
	lw		x6, -80(x2)	# 847
	add		x5, x6, x5	# 847
	fsw		f1, 0(x5)	# 847
	fsw		f2, -84(x2)	# 848
	sw		x1, -88(x2)	# 848
	addi	x2, x2, -92	# 848
	jal		x1, min_caml_read_float	# 848
	addi	x2, x2, 92	# 848
	lw		x1, -88(x2)	# 848
	flw		f2, -84(x2)	# 714
	fmul	f1, f1, f2	# 714
	lw		x4, -20(x2)	# 848
	mul		x5, x30, x4	# 848
	lw		x6, -80(x2)	# 848
	add		x5, x6, x5	# 848
	fsw		f1, 0(x5)	# 848
	sw		x1, -88(x2)	# 849
	addi	x2, x2, -92	# 849
	jal		x1, min_caml_read_float	# 849
	addi	x2, x2, 92	# 849
	lw		x1, -88(x2)	# 849
	flw		f2, -84(x2)	# 714
	fmul	f1, f1, f2	# 714
	lw		x4, -16(x2)	# 849
	mul		x5, x30, x4	# 849
	lw		x6, -80(x2)	# 849
	add		x5, x6, x5	# 849
	fsw		f1, 0(x5)	# 849
beq_cont.30397:
	lw		x4, -16(x2)	# 856
	lw		x5, -44(x2)	# 856
	beq		x5, x4, beq.30399	# 856
	lw		x6, -68(x2)	# 856
	jal		x0, beq_cont.30398	# 856
beq.30399:
	addi	x6, x0, 1	# 856
beq_cont.30398:
	addi	x7, x0, 4	# 857
	flw		f1, -28(x2)	# 857
	sw		x6, -88(x2)	# 857
	addi	x4, x7, 0
	sw		x1, -92(x2)	# 857
	addi	x2, x2, -96	# 857
	jal		x1, min_caml_create_float_array	# 857
	addi	x2, x2, 96	# 857
	lw		x1, -92(x2)	# 857
	addi	x5, x3, 0	# 860
	addi	x3, x3, 44	# 860
	sw		x4, 40(x5)	# 860
	lw		x4, -80(x2)	# 860
	sw		x4, 36(x5)	# 860
	lw		x6, -76(x2)	# 860
	sw		x6, 32(x5)	# 860
	lw		x6, -72(x2)	# 860
	sw		x6, 28(x5)	# 860
	lw		x6, -88(x2)	# 860
	sw		x6, 24(x5)	# 860
	lw		x6, -60(x2)	# 860
	sw		x6, 20(x5)	# 860
	lw		x6, -56(x2)	# 860
	sw		x6, 16(x5)	# 860
	lw		x7, -52(x2)	# 860
	sw		x7, 12(x5)	# 860
	lw		x8, -48(x2)	# 860
	sw		x8, 8(x5)	# 860
	lw		x8, -44(x2)	# 860
	sw		x8, 4(x5)	# 860
	lw		x9, -40(x2)	# 860
	sw		x9, 0(x5)	# 860
	lw		x9, -12(x2)	# 868
	mul		x10, x30, x9	# 868
	addi	x10, x10, 60048	# 868
	sw		x5, 0(x10)	# 868
	lw		x5, -32(x2)	# 870
	beq		x8, x5, beq.30401	# 870
	lw		x5, -16(x2)	# 880
	beq		x8, x5, beq.30403	# 880
	jal		x0, beq_cont.30402	# 880
beq.30403:
	lw		x8, -24(x2)	# 320
	mul		x10, x30, x8	# 320
	add		x10, x6, x10	# 320
	flw		f1, 0(x10)	# 320
	fmul	f1, f1, f1	# 127
	lw		x10, -20(x2)	# 320
	mul		x11, x30, x10	# 320
	add		x11, x6, x11	# 320
	flw		f2, 0(x11)	# 320
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 320
	mul		x11, x30, x5	# 320
	add		x11, x6, x11	# 320
	flw		f2, 0(x11)	# 320
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 320
	fsqrt	f1, f1	# 320
	flw		f2, -28(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.30405	# 120
	fadd	f1, f0, f16	# 321
	jal		x0, feq_cont.30404	# 120
feq_else.30405:
	flw		f3, -64(x2)	# 122
	fle		x31, f2, f3	# 122
	beq		x31, x0, fle_else.30407	# 122
	lui		x11, %hi(l.25043)	# 321
	ori		x11, x0, %lo(l.25043)	# 321
	flw		f2, 0(x11)	# 321
	fdiv	f1, f2, f1	# 321
	jal		x0, fle_cont.30406	# 122
fle_else.30407:
	fadd	f2, f0, f16	# 321
	fdiv	f1, f2, f1	# 321
fle_cont.30406:
feq_cont.30404:
	mul		x11, x30, x8	# 322
	add		x11, x6, x11	# 322
	flw		f2, 0(x11)	# 322
	fmul	f2, f2, f1	# 322
	mul		x11, x30, x8	# 322
	add		x11, x6, x11	# 322
	fsw		f2, 0(x11)	# 322
	mul		x11, x30, x10	# 323
	add		x11, x6, x11	# 323
	flw		f2, 0(x11)	# 323
	fmul	f2, f2, f1	# 323
	mul		x11, x30, x10	# 323
	add		x11, x6, x11	# 323
	fsw		f2, 0(x11)	# 323
	mul		x11, x30, x5	# 324
	add		x11, x6, x11	# 324
	flw		f2, 0(x11)	# 324
	fmul	f1, f2, f1	# 324
	mul		x11, x30, x5	# 324
	add		x11, x6, x11	# 324
	fsw		f1, 0(x11)	# 324
beq_cont.30402:
	jal		x0, beq_cont.30400	# 870
beq.30401:
	lw		x5, -24(x2)	# 873
	mul		x8, x30, x5	# 873
	add		x8, x6, x8	# 873
	flw		f1, 0(x8)	# 873
	flw		f2, -28(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.30409	# 120
	fadd	f1, f0, f2	# 874
	jal		x0, feq_cont.30408	# 120
feq_else.30409:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.30411	# 120
	fadd	f3, f0, f2	# 249
	jal		x0, feq_cont.30410	# 120
feq_else.30411:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.30413	# 121
	lui		x8, %hi(l.25043)	# 251
	ori		x8, x0, %lo(l.25043)	# 251
	flw		f3, 0(x8)	# 251
	jal		x0, fle_cont.30412	# 121
fle_else.30413:
	fadd	f3, f0, f16	# 250
fle_cont.30412:
feq_cont.30410:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 874
feq_cont.30408:
	mul		x8, x30, x5	# 874
	add		x8, x6, x8	# 874
	fsw		f1, 0(x8)	# 874
	lw		x8, -20(x2)	# 875
	mul		x10, x30, x8	# 875
	add		x10, x6, x10	# 875
	flw		f1, 0(x10)	# 875
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.30415	# 120
	fadd	f1, f0, f2	# 876
	jal		x0, feq_cont.30414	# 120
feq_else.30415:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.30417	# 120
	fadd	f3, f0, f2	# 249
	jal		x0, feq_cont.30416	# 120
feq_else.30417:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.30419	# 121
	lui		x10, %hi(l.25043)	# 251
	ori		x10, x0, %lo(l.25043)	# 251
	flw		f3, 0(x10)	# 251
	jal		x0, fle_cont.30418	# 121
fle_else.30419:
	fadd	f3, f0, f16	# 250
fle_cont.30418:
feq_cont.30416:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 876
feq_cont.30414:
	mul		x10, x30, x8	# 876
	add		x10, x6, x10	# 876
	fsw		f1, 0(x10)	# 876
	lw		x10, -16(x2)	# 877
	mul		x11, x30, x10	# 877
	add		x11, x6, x11	# 877
	flw		f1, 0(x11)	# 877
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.30421	# 120
	fadd	f1, f0, f2	# 878
	jal		x0, feq_cont.30420	# 120
feq_else.30421:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.30423	# 120
	jal		x0, feq_cont.30422	# 120
feq_else.30423:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.30425	# 121
	lui		x11, %hi(l.25043)	# 251
	ori		x11, x0, %lo(l.25043)	# 251
	flw		f2, 0(x11)	# 251
	jal		x0, fle_cont.30424	# 121
fle_else.30425:
	fadd	f2, f0, f16	# 250
fle_cont.30424:
feq_cont.30422:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f2, f1	# 878
feq_cont.30420:
	mul		x11, x30, x10	# 878
	add		x11, x6, x11	# 878
	fsw		f1, 0(x11)	# 878
beq_cont.30400:
	lw		x5, -24(x2)	# 886
	beq		x7, x5, beq_cont.30426	# 886
	mul		x7, x30, x5	# 775
	add		x7, x4, x7	# 775
	flw		f1, 0(x7)	# 775
	lw		x29, -8(x2)	# 775
	fsw		f1, -92(x2)	# 775
	sw		x1, -96(x2)	# 775
	addi	x2, x2, -100	# 775
	lw		x31, 0(x29)	# 775
	jalr	x1, x31, 0	# 775
	addi	x2, x2, 100	# 775
	lw		x1, -96(x2)	# 775
	flw		f2, -92(x2)	# 776
	lw		x29, -4(x2)	# 776
	fsw		f1, -96(x2)	# 776
	fadd	f1, f0, f2
	sw		x1, -100(x2)	# 776
	addi	x2, x2, -104	# 776
	lw		x31, 0(x29)	# 776
	jalr	x1, x31, 0	# 776
	addi	x2, x2, 104	# 776
	lw		x1, -100(x2)	# 776
	lw		x4, -20(x2)	# 777
	mul		x5, x30, x4	# 777
	lw		x6, -80(x2)	# 777
	add		x5, x6, x5	# 777
	flw		f2, 0(x5)	# 777
	lw		x29, -8(x2)	# 777
	fsw		f1, -100(x2)	# 777
	fsw		f2, -104(x2)	# 777
	fadd	f1, f0, f2
	sw		x1, -108(x2)	# 777
	addi	x2, x2, -112	# 777
	lw		x31, 0(x29)	# 777
	jalr	x1, x31, 0	# 777
	addi	x2, x2, 112	# 777
	lw		x1, -108(x2)	# 777
	flw		f2, -104(x2)	# 778
	lw		x29, -4(x2)	# 778
	fsw		f1, -108(x2)	# 778
	fadd	f1, f0, f2
	sw		x1, -112(x2)	# 778
	addi	x2, x2, -116	# 778
	lw		x31, 0(x29)	# 778
	jalr	x1, x31, 0	# 778
	addi	x2, x2, 116	# 778
	lw		x1, -112(x2)	# 778
	lw		x4, -16(x2)	# 779
	mul		x5, x30, x4	# 779
	lw		x6, -80(x2)	# 779
	add		x5, x6, x5	# 779
	flw		f2, 0(x5)	# 779
	lw		x29, -8(x2)	# 779
	fsw		f1, -112(x2)	# 779
	fsw		f2, -116(x2)	# 779
	fadd	f1, f0, f2
	sw		x1, -120(x2)	# 779
	addi	x2, x2, -124	# 779
	lw		x31, 0(x29)	# 779
	jalr	x1, x31, 0	# 779
	addi	x2, x2, 124	# 779
	lw		x1, -120(x2)	# 779
	flw		f2, -116(x2)	# 780
	lw		x29, -4(x2)	# 780
	fsw		f1, -120(x2)	# 780
	fadd	f1, f0, f2
	sw		x1, -124(x2)	# 780
	addi	x2, x2, -128	# 780
	lw		x31, 0(x29)	# 780
	jalr	x1, x31, 0	# 780
	addi	x2, x2, 128	# 780
	lw		x1, -124(x2)	# 780
	flw		f2, -120(x2)	# 782
	flw		f3, -108(x2)	# 782
	fmul	f4, f3, f2	# 782
	flw		f5, -112(x2)	# 783
	flw		f6, -100(x2)	# 783
	fmul	f7, f6, f5	# 783
	fmul	f8, f7, f2	# 783
	flw		f9, -96(x2)	# 783
	fmul	f10, f9, f1	# 783
	fsub	f8, f8, f10	# 783
	fmul	f10, f9, f5	# 784
	fmul	f11, f10, f2	# 784
	fmul	f12, f6, f1	# 784
	fadd	f11, f11, f12	# 784
	fmul	f12, f3, f1	# 786
	fmul	f7, f7, f1	# 787
	fmul	f13, f9, f2	# 787
	fadd	f7, f7, f13	# 787
	fmul	f1, f10, f1	# 788
	fmul	f2, f6, f2	# 788
	fsub	f1, f1, f2	# 788
	fsub	f2, f0, f5	# 123
	fmul	f5, f6, f3	# 791
	fmul	f3, f9, f3	# 792
	lw		x4, -24(x2)	# 795
	mul		x5, x30, x4	# 795
	lw		x6, -56(x2)	# 795
	add		x5, x6, x5	# 795
	flw		f6, 0(x5)	# 795
	lw		x5, -20(x2)	# 796
	mul		x7, x30, x5	# 796
	add		x7, x6, x7	# 796
	flw		f9, 0(x7)	# 796
	lw		x7, -16(x2)	# 797
	mul		x8, x30, x7	# 797
	add		x8, x6, x8	# 797
	flw		f10, 0(x8)	# 797
	fmul	f13, f4, f4	# 127
	fmul	f13, f6, f13	# 802
	fmul	f14, f12, f12	# 127
	fmul	f14, f9, f14	# 802
	fadd	f13, f13, f14	# 802
	fmul	f14, f2, f2	# 127
	fmul	f14, f10, f14	# 802
	fadd	f13, f13, f14	# 802
	mul		x8, x30, x4	# 802
	add		x8, x6, x8	# 802
	fsw		f13, 0(x8)	# 802
	fmul	f13, f8, f8	# 127
	fmul	f13, f6, f13	# 803
	fmul	f14, f7, f7	# 127
	fmul	f14, f9, f14	# 803
	fadd	f13, f13, f14	# 803
	fmul	f14, f5, f5	# 127
	fmul	f14, f10, f14	# 803
	fadd	f13, f13, f14	# 803
	mul		x8, x30, x5	# 803
	add		x8, x6, x8	# 803
	fsw		f13, 0(x8)	# 803
	fmul	f13, f11, f11	# 127
	fmul	f13, f6, f13	# 804
	fmul	f14, f1, f1	# 127
	fmul	f14, f9, f14	# 804
	fadd	f13, f13, f14	# 804
	fmul	f14, f3, f3	# 127
	fmul	f14, f10, f14	# 804
	fadd	f13, f13, f14	# 804
	mul		x8, x30, x7	# 804
	add		x6, x6, x8	# 804
	fsw		f13, 0(x6)	# 804
	fadd	f13, f0, f28	# 807
	fmul	f14, f6, f8	# 807
	fmul	f14, f14, f11	# 807
	fmul	f15, f9, f7	# 807
	fmul	f15, f15, f1	# 807
	fadd	f14, f14, f15	# 807
	fmul	f15, f10, f5	# 807
	fmul	f15, f15, f3	# 807
	fadd	f14, f14, f15	# 807
	fmul	f14, f13, f14	# 807
	mul		x6, x30, x4	# 807
	lw		x8, -80(x2)	# 807
	add		x6, x8, x6	# 807
	fsw		f14, 0(x6)	# 807
	fmul	f4, f6, f4	# 808
	fmul	f6, f4, f11	# 808
	fmul	f9, f9, f12	# 808
	fmul	f1, f9, f1	# 808
	fadd	f1, f6, f1	# 808
	fmul	f2, f10, f2	# 808
	fmul	f3, f2, f3	# 808
	fadd	f1, f1, f3	# 808
	fmul	f1, f13, f1	# 808
	mul		x6, x30, x5	# 808
	add		x6, x8, x6	# 808
	fsw		f1, 0(x6)	# 808
	fmul	f1, f4, f8	# 809
	fmul	f3, f9, f7	# 809
	fadd	f1, f1, f3	# 809
	fmul	f2, f2, f5	# 809
	fadd	f1, f1, f2	# 809
	fmul	f1, f13, f1	# 809
	mul		x6, x30, x7	# 809
	add		x6, x8, x6	# 809
	fsw		f1, 0(x6)	# 809
beq_cont.30426:
	addi	x4, x0, 1	# 890
	jal		x0, beq_cont.30393	# 817
beq.30394:
	addi	x4, x0, 0	# 893
beq_cont.30393:
	lw		x5, -24(x2)	# 899
	beq		x4, x5, beq.30427	# 899
	lw		x4, -20(x2)	# 900
	lw		x5, -12(x2)	# 900
	add		x4, x5, x4	# 900
	lw		x29, 0(x2)	# 900
	lw		x31, 0(x29)	# 900
	jalr	x0, x31, 0	# 900
beq.30427:
	mul		x4, x30, x5	# 902
	addi	x4, x4, 60000	# 902
	lw		x5, -12(x2)	# 902
	sw		x5, 0(x4)	# 902
	jalr	x0, x1, 0	# 902
ble.30392:
	jalr	x0, x1, 0	# 903
read_net_item.2715.17271:
	lw		x5, 8(x29)	# 914
	lw		x6, 4(x29)	# 914
	sw		x29, 0(x2)	# 914
	sw		x6, -4(x2)	# 914
	sw		x4, -8(x2)	# 914
	sw		x5, -12(x2)	# 914
	sw		x1, -16(x2)	# 914
	addi	x2, x2, -20	# 914
	jal		x1, min_caml_read_int	# 914
	addi	x2, x2, 20	# 914
	lw		x1, -16(x2)	# 914
	lw		x5, -12(x2)	# 915
	beq		x4, x5, beq.30430	# 915
	lw		x5, -4(x2)	# 917
	lw		x6, -8(x2)	# 917
	add		x5, x6, x5	# 917
	lw		x29, 0(x2)	# 917
	sw		x4, -16(x2)	# 917
	addi	x4, x5, 0
	sw		x1, -20(x2)	# 917
	addi	x2, x2, -24	# 917
	lw		x31, 0(x29)	# 917
	jalr	x1, x31, 0	# 917
	addi	x2, x2, 24	# 917
	lw		x1, -20(x2)	# 917
	lw		x5, -8(x2)	# 918
	mul		x5, x30, x5	# 918
	add		x5, x4, x5	# 918
	lw		x6, -16(x2)	# 918
	sw		x6, 0(x5)	# 918
	jalr	x0, x1, 0	# 918
beq.30430:
	lw		x4, -4(x2)	# 915
	lw		x6, -8(x2)	# 915
	add		x4, x6, x4	# 915
	jal		x0, min_caml_create_array	# 915
read_or_network.2717.17273:
	lw		x5, 16(x29)	# 922
	lw		x6, 12(x29)	# 922
	lw		x7, 8(x29)	# 922
	lw		x8, 4(x29)	# 922
	sw		x29, 0(x2)	# 922
	sw		x8, -4(x2)	# 922
	sw		x4, -8(x2)	# 922
	sw		x6, -12(x2)	# 922
	sw		x7, -16(x2)	# 922
	addi	x4, x7, 0
	addi	x29, x5, 0
	sw		x1, -20(x2)	# 922
	addi	x2, x2, -24	# 922
	lw		x31, 0(x29)	# 922
	jalr	x1, x31, 0	# 922
	addi	x2, x2, 24	# 922
	lw		x1, -20(x2)	# 922
	addi	x5, x4, 0	# 922
	lw		x4, -16(x2)	# 923
	mul		x4, x30, x4	# 923
	add		x4, x5, x4	# 923
	lw		x4, 0(x4)	# 923
	lw		x6, -12(x2)	# 923
	beq		x4, x6, beq.30431	# 923
	lw		x4, -4(x2)	# 926
	lw		x6, -8(x2)	# 926
	add		x4, x6, x4	# 926
	lw		x29, 0(x2)	# 926
	sw		x5, -20(x2)	# 926
	sw		x1, -24(x2)	# 926
	addi	x2, x2, -28	# 926
	lw		x31, 0(x29)	# 926
	jalr	x1, x31, 0	# 926
	addi	x2, x2, 28	# 926
	lw		x1, -24(x2)	# 926
	lw		x5, -8(x2)	# 927
	mul		x5, x30, x5	# 927
	add		x5, x4, x5	# 927
	lw		x6, -20(x2)	# 927
	sw		x6, 0(x5)	# 927
	jalr	x0, x1, 0	# 927
beq.30431:
	lw		x4, -4(x2)	# 924
	lw		x6, -8(x2)	# 924
	add		x4, x6, x4	# 924
	jal		x0, min_caml_create_array	# 924
read_and_network.2719.17275:
	lw		x5, 16(x29)	# 931
	lw		x6, 12(x29)	# 931
	lw		x7, 8(x29)	# 931
	lw		x8, 4(x29)	# 931
	sw		x29, 0(x2)	# 931
	sw		x8, -4(x2)	# 931
	sw		x4, -8(x2)	# 931
	sw		x6, -12(x2)	# 931
	sw		x7, -16(x2)	# 931
	addi	x4, x7, 0
	addi	x29, x5, 0
	sw		x1, -20(x2)	# 931
	addi	x2, x2, -24	# 931
	lw		x31, 0(x29)	# 931
	jalr	x1, x31, 0	# 931
	addi	x2, x2, 24	# 931
	lw		x1, -20(x2)	# 931
	lw		x5, -16(x2)	# 932
	mul		x5, x30, x5	# 932
	add		x5, x4, x5	# 932
	lw		x5, 0(x5)	# 932
	lw		x6, -12(x2)	# 932
	beq		x5, x6, beq.30432	# 932
	lw		x5, -8(x2)	# 934
	mul		x6, x30, x5	# 934
	addi	x6, x6, 60332	# 934
	sw		x4, 0(x6)	# 934
	lw		x4, -4(x2)	# 935
	add		x4, x5, x4	# 935
	lw		x29, 0(x2)	# 935
	lw		x31, 0(x29)	# 935
	jalr	x0, x31, 0	# 935
beq.30432:
	jalr	x0, x1, 0	# 932
iter_setup_dirvec_constants.2816.17277:
	lw		x6, 24(x29)	# 1307
	lw		x7, 20(x29)	# 1307
	lw		x8, 16(x29)	# 1307
	lw		x9, 12(x29)	# 1307
	lw		x10, 8(x29)	# 1307
	flw		f1, 4(x29)	# 1307
	ble		x9, x5, ble.30434	# 1307
	jalr	x0, x1, 0	# 1320
ble.30434:
	mul		x11, x30, x5	# 1308
	addi	x11, x11, 60048	# 1308
	lw		x11, 0(x11)	# 1308
	lw		x12, 4(x4)	# 682
	lw		x13, 0(x4)	# 676
	lw		x14, 4(x11)	# 390
	sw		x4, 0(x2)	# 1312
	sw		x29, -4(x2)	# 1312
	sw		x10, -8(x2)	# 1312
	beq		x14, x10, beq.30437	# 1312
	beq		x14, x7, beq.30439	# 1314
	sw		x12, -12(x2)	# 1278
	sw		x5, -16(x2)	# 1278
	fsw		f1, -20(x2)	# 1278
	sw		x8, -24(x2)	# 1278
	sw		x11, -28(x2)	# 1278
	sw		x7, -32(x2)	# 1278
	sw		x13, -36(x2)	# 1278
	sw		x9, -40(x2)	# 1278
	addi	x4, x6, 0
	sw		x1, -44(x2)	# 1278
	addi	x2, x2, -48	# 1278
	jal		x1, min_caml_create_float_array	# 1278
	addi	x2, x2, 48	# 1278
	lw		x1, -44(x2)	# 1278
	lw		x5, -40(x2)	# 1280
	mul		x6, x30, x5	# 1280
	lw		x7, -36(x2)	# 1280
	add		x6, x7, x6	# 1280
	flw		f1, 0(x6)	# 1280
	lw		x6, -8(x2)	# 1280
	mul		x8, x30, x6	# 1280
	add		x8, x7, x8	# 1280
	flw		f2, 0(x8)	# 1280
	lw		x8, -32(x2)	# 1280
	mul		x9, x30, x8	# 1280
	add		x9, x7, x9	# 1280
	flw		f3, 0(x9)	# 1280
	fmul	f4, f1, f1	# 127
	lw		x9, -28(x2)	# 428
	lw		x10, 16(x9)	# 428
	mul		x11, x30, x5	# 433
	add		x10, x10, x11	# 433
	flw		f5, 0(x10)	# 433
	fmul	f4, f4, f5	# 1004
	fmul	f5, f2, f2	# 127
	lw		x10, 16(x9)	# 438
	mul		x11, x30, x6	# 443
	add		x10, x10, x11	# 443
	flw		f6, 0(x10)	# 443
	fmul	f5, f5, f6	# 1004
	fadd	f4, f4, f5	# 1004
	fmul	f5, f3, f3	# 127
	lw		x10, 16(x9)	# 448
	mul		x11, x30, x8	# 453
	add		x10, x10, x11	# 453
	flw		f6, 0(x10)	# 453
	fmul	f5, f5, f6	# 1004
	fadd	f4, f4, f5	# 1004
	lw		x10, 12(x9)	# 419
	beq		x10, x5, beq_cont.30440	# 1006
	fmul	f5, f2, f3	# 1010
	lw		x10, 36(x9)	# 548
	mul		x11, x30, x5	# 553
	add		x10, x10, x11	# 553
	flw		f6, 0(x10)	# 553
	fmul	f5, f5, f6	# 1010
	fadd	f4, f4, f5	# 1009
	fmul	f5, f3, f1	# 1011
	lw		x10, 36(x9)	# 558
	mul		x11, x30, x6	# 563
	add		x10, x10, x11	# 563
	flw		f6, 0(x10)	# 563
	fmul	f5, f5, f6	# 1011
	fadd	f4, f4, f5	# 1009
	fmul	f5, f1, f2	# 1012
	lw		x10, 36(x9)	# 568
	mul		x11, x30, x8	# 573
	add		x10, x10, x11	# 573
	flw		f6, 0(x10)	# 573
	fmul	f5, f5, f6	# 1012
	fadd	f4, f4, f5	# 1009
beq_cont.30440:
	lw		x10, 16(x9)	# 428
	mul		x11, x30, x5	# 433
	add		x10, x10, x11	# 433
	flw		f5, 0(x10)	# 433
	fmul	f1, f1, f5	# 1281
	fsub	f1, f0, f1	# 123
	lw		x10, 16(x9)	# 438
	mul		x11, x30, x6	# 443
	add		x10, x10, x11	# 443
	flw		f5, 0(x10)	# 443
	fmul	f2, f2, f5	# 1282
	fsub	f2, f0, f2	# 123
	lw		x10, 16(x9)	# 448
	mul		x11, x30, x8	# 453
	add		x10, x10, x11	# 453
	flw		f5, 0(x10)	# 453
	fmul	f3, f3, f5	# 1283
	fsub	f3, f0, f3	# 123
	mul		x10, x30, x5	# 1285
	add		x10, x4, x10	# 1285
	fsw		f4, 0(x10)	# 1285
	lw		x10, 12(x9)	# 419
	beq		x10, x5, beq.30442	# 1289
	mul		x10, x30, x8	# 1290
	add		x10, x7, x10	# 1290
	flw		f5, 0(x10)	# 1290
	lw		x10, 36(x9)	# 558
	mul		x11, x30, x6	# 563
	add		x10, x10, x11	# 563
	flw		f6, 0(x10)	# 563
	fmul	f5, f5, f6	# 1290
	mul		x10, x30, x6	# 1290
	add		x10, x7, x10	# 1290
	flw		f7, 0(x10)	# 1290
	lw		x10, 36(x9)	# 568
	mul		x11, x30, x8	# 573
	add		x10, x10, x11	# 573
	flw		f8, 0(x10)	# 573
	fmul	f7, f7, f8	# 1290
	fadd	f5, f5, f7	# 1290
	fadd	f7, f0, f26	# 126
	fmul	f5, f5, f7	# 126
	fsub	f1, f1, f5	# 1290
	mul		x10, x30, x6	# 1290
	add		x10, x4, x10	# 1290
	fsw		f1, 0(x10)	# 1290
	mul		x10, x30, x8	# 1291
	add		x10, x7, x10	# 1291
	flw		f1, 0(x10)	# 1291
	lw		x9, 36(x9)	# 548
	mul		x10, x30, x5	# 553
	add		x9, x9, x10	# 553
	flw		f5, 0(x9)	# 553
	fmul	f1, f1, f5	# 1291
	mul		x9, x30, x5	# 1291
	add		x9, x7, x9	# 1291
	flw		f9, 0(x9)	# 1291
	fmul	f8, f9, f8	# 1291
	fadd	f1, f1, f8	# 1291
	fmul	f1, f1, f7	# 126
	fsub	f1, f2, f1	# 1291
	mul		x8, x30, x8	# 1291
	add		x8, x4, x8	# 1291
	fsw		f1, 0(x8)	# 1291
	mul		x8, x30, x6	# 1292
	add		x8, x7, x8	# 1292
	flw		f1, 0(x8)	# 1292
	fmul	f1, f1, f5	# 1292
	mul		x5, x30, x5	# 1292
	add		x5, x7, x5	# 1292
	flw		f2, 0(x5)	# 1292
	fmul	f2, f2, f6	# 1292
	fadd	f1, f1, f2	# 1292
	fmul	f1, f1, f7	# 126
	fsub	f1, f3, f1	# 1292
	lw		x5, -24(x2)	# 1292
	mul		x5, x30, x5	# 1292
	add		x5, x4, x5	# 1292
	fsw		f1, 0(x5)	# 1292
	jal		x0, beq_cont.30441	# 1289
beq.30442:
	mul		x5, x30, x6	# 1294
	add		x5, x4, x5	# 1294
	fsw		f1, 0(x5)	# 1294
	mul		x5, x30, x8	# 1295
	add		x5, x4, x5	# 1295
	fsw		f2, 0(x5)	# 1295
	lw		x5, -24(x2)	# 1296
	mul		x5, x30, x5	# 1296
	add		x5, x4, x5	# 1296
	fsw		f3, 0(x5)	# 1296
beq_cont.30441:
	flw		f1, -20(x2)	# 120
	feq		x31, f4, f1	# 120
	beq		x31, x0, feq_else.30444	# 120
	jal		x0, feq_cont.30443	# 120
feq_else.30444:
	addi	x5, x0, 4	# 1299
	fadd	f1, f0, f16	# 1299
	fdiv	f1, f1, f4	# 1299
	mul		x5, x30, x5	# 1299
	add		x5, x4, x5	# 1299
	fsw		f1, 0(x5)	# 1299
feq_cont.30443:
	lw		x5, -16(x2)	# 1317
	mul		x7, x30, x5	# 1317
	lw		x8, -12(x2)	# 1317
	add		x7, x8, x7	# 1317
	sw		x4, 0(x7)	# 1317
	jal		x0, beq_cont.30438	# 1314
beq.30439:
	addi	x6, x0, 4	# 1259
	sw		x12, -12(x2)	# 1259
	sw		x5, -16(x2)	# 1259
	sw		x8, -24(x2)	# 1259
	fsw		f1, -20(x2)	# 1259
	sw		x7, -32(x2)	# 1259
	sw		x11, -28(x2)	# 1259
	sw		x13, -36(x2)	# 1259
	sw		x9, -40(x2)	# 1259
	addi	x4, x6, 0
	sw		x1, -44(x2)	# 1259
	addi	x2, x2, -48	# 1259
	jal		x1, min_caml_create_float_array	# 1259
	addi	x2, x2, 48	# 1259
	lw		x1, -44(x2)	# 1259
	lw		x5, -40(x2)	# 1261
	mul		x6, x30, x5	# 1261
	lw		x7, -36(x2)	# 1261
	add		x6, x7, x6	# 1261
	flw		f1, 0(x6)	# 1261
	lw		x6, -28(x2)	# 428
	lw		x8, 16(x6)	# 428
	mul		x9, x30, x5	# 433
	add		x8, x8, x9	# 433
	flw		f2, 0(x8)	# 433
	fmul	f1, f1, f2	# 1261
	lw		x8, -8(x2)	# 1261
	mul		x9, x30, x8	# 1261
	add		x9, x7, x9	# 1261
	flw		f3, 0(x9)	# 1261
	lw		x9, 16(x6)	# 438
	mul		x10, x30, x8	# 443
	add		x9, x9, x10	# 443
	flw		f4, 0(x9)	# 443
	fmul	f3, f3, f4	# 1261
	fadd	f1, f1, f3	# 1261
	lw		x9, -32(x2)	# 1261
	mul		x10, x30, x9	# 1261
	add		x7, x7, x10	# 1261
	flw		f3, 0(x7)	# 1261
	lw		x6, 16(x6)	# 448
	mul		x7, x30, x9	# 453
	add		x6, x6, x7	# 453
	flw		f5, 0(x6)	# 453
	fmul	f3, f3, f5	# 1261
	fadd	f1, f1, f3	# 1261
	flw		f3, -20(x2)	# 121
	fle		x31, f1, f3	# 121
	beq		x31, x0, fle_else.30446	# 121
	mul		x5, x30, x5	# 1271
	add		x5, x4, x5	# 1271
	fsw		f3, 0(x5)	# 1271
	jal		x0, fle_cont.30445	# 121
fle_else.30446:
	lui		x6, %hi(l.25043)	# 1265
	ori		x6, x0, %lo(l.25043)	# 1265
	flw		f3, 0(x6)	# 1265
	fdiv	f3, f3, f1	# 1265
	mul		x5, x30, x5	# 1265
	add		x5, x4, x5	# 1265
	fsw		f3, 0(x5)	# 1265
	fdiv	f2, f2, f1	# 1267
	fsub	f2, f0, f2	# 123
	mul		x5, x30, x8	# 1267
	add		x5, x4, x5	# 1267
	fsw		f2, 0(x5)	# 1267
	fdiv	f2, f4, f1	# 1268
	fsub	f2, f0, f2	# 123
	mul		x5, x30, x9	# 1268
	add		x5, x4, x5	# 1268
	fsw		f2, 0(x5)	# 1268
	fdiv	f1, f5, f1	# 1269
	fsub	f1, f0, f1	# 123
	lw		x5, -24(x2)	# 1269
	mul		x5, x30, x5	# 1269
	add		x5, x4, x5	# 1269
	fsw		f1, 0(x5)	# 1269
fle_cont.30445:
	lw		x5, -16(x2)	# 1315
	mul		x6, x30, x5	# 1315
	lw		x7, -12(x2)	# 1315
	add		x6, x7, x6	# 1315
	sw		x4, 0(x6)	# 1315
beq_cont.30438:
	jal		x0, beq_cont.30436	# 1312
beq.30437:
	addi	x14, x0, 6	# 1232
	sw		x12, -12(x2)	# 1232
	sw		x5, -16(x2)	# 1232
	sw		x6, -44(x2)	# 1232
	sw		x7, -32(x2)	# 1232
	sw		x8, -24(x2)	# 1232
	sw		x11, -28(x2)	# 1232
	fsw		f1, -20(x2)	# 1232
	sw		x13, -36(x2)	# 1232
	sw		x9, -40(x2)	# 1232
	addi	x4, x14, 0
	sw		x1, -48(x2)	# 1232
	addi	x2, x2, -52	# 1232
	jal		x1, min_caml_create_float_array	# 1232
	addi	x2, x2, 52	# 1232
	lw		x1, -48(x2)	# 1232
	lw		x5, -40(x2)	# 1234
	mul		x6, x30, x5	# 1234
	lw		x7, -36(x2)	# 1234
	add		x6, x7, x6	# 1234
	flw		f1, 0(x6)	# 1234
	flw		f2, -20(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.30448	# 120
	lw		x6, -8(x2)	# 1235
	mul		x8, x30, x6	# 1235
	add		x8, x4, x8	# 1235
	fsw		f2, 0(x8)	# 1235
	jal		x0, feq_cont.30447	# 120
feq_else.30448:
	lw		x6, -28(x2)	# 410
	lw		x8, 24(x6)	# 410
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.30450	# 122
	addi	x9, x0, 0	# 122
	jal		x0, fle_cont.30449	# 122
fle_else.30450:
	addi	x9, x0, 1	# 122
fle_cont.30449:
	beq		x8, x5, beq.30452	# 241
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.30454	# 122
	addi	x8, x0, 1	# 241
	jal		x0, fle_cont.30453	# 122
fle_else.30454:
	addi	x8, x0, 0	# 241
fle_cont.30453:
	jal		x0, beq_cont.30451	# 241
beq.30452:
	addi	x8, x9, 0	# 241
beq_cont.30451:
	lw		x9, 16(x6)	# 428
	mul		x10, x30, x5	# 433
	add		x9, x9, x10	# 433
	flw		f1, 0(x9)	# 433
	beq		x8, x5, beq.30456	# 256
	jal		x0, beq_cont.30455	# 256
beq.30456:
	fsub	f1, f0, f1	# 123
beq_cont.30455:
	mul		x8, x30, x5	# 1238
	add		x8, x4, x8	# 1238
	fsw		f1, 0(x8)	# 1238
	fadd	f1, f0, f16	# 1240
	mul		x8, x30, x5	# 1240
	add		x8, x7, x8	# 1240
	flw		f3, 0(x8)	# 1240
	fdiv	f1, f1, f3	# 1240
	lw		x8, -8(x2)	# 1240
	mul		x9, x30, x8	# 1240
	add		x9, x4, x9	# 1240
	fsw		f1, 0(x9)	# 1240
feq_cont.30447:
	lw		x6, -8(x2)	# 1242
	mul		x8, x30, x6	# 1242
	add		x8, x7, x8	# 1242
	flw		f1, 0(x8)	# 1242
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.30458	# 120
	lw		x8, -24(x2)	# 1243
	mul		x8, x30, x8	# 1243
	add		x8, x4, x8	# 1243
	fsw		f2, 0(x8)	# 1243
	jal		x0, feq_cont.30457	# 120
feq_else.30458:
	lw		x8, -28(x2)	# 410
	lw		x9, 24(x8)	# 410
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.30460	# 122
	addi	x10, x0, 0	# 122
	jal		x0, fle_cont.30459	# 122
fle_else.30460:
	addi	x10, x0, 1	# 122
fle_cont.30459:
	beq		x9, x5, beq.30462	# 241
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.30464	# 122
	addi	x9, x0, 1	# 241
	jal		x0, fle_cont.30463	# 122
fle_else.30464:
	addi	x9, x0, 0	# 241
fle_cont.30463:
	jal		x0, beq_cont.30461	# 241
beq.30462:
	addi	x9, x10, 0	# 241
beq_cont.30461:
	lw		x10, 16(x8)	# 438
	mul		x11, x30, x6	# 443
	add		x10, x10, x11	# 443
	flw		f1, 0(x10)	# 443
	beq		x9, x5, beq.30466	# 256
	jal		x0, beq_cont.30465	# 256
beq.30466:
	fsub	f1, f0, f1	# 123
beq_cont.30465:
	lw		x9, -32(x2)	# 1245
	mul		x10, x30, x9	# 1245
	add		x10, x4, x10	# 1245
	fsw		f1, 0(x10)	# 1245
	fadd	f1, f0, f16	# 1246
	mul		x10, x30, x6	# 1246
	add		x10, x7, x10	# 1246
	flw		f3, 0(x10)	# 1246
	fdiv	f1, f1, f3	# 1246
	lw		x10, -24(x2)	# 1246
	mul		x10, x30, x10	# 1246
	add		x10, x4, x10	# 1246
	fsw		f1, 0(x10)	# 1246
feq_cont.30457:
	lw		x8, -32(x2)	# 1248
	mul		x9, x30, x8	# 1248
	add		x9, x7, x9	# 1248
	flw		f1, 0(x9)	# 1248
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.30468	# 120
	lw		x5, -44(x2)	# 1249
	mul		x5, x30, x5	# 1249
	add		x5, x4, x5	# 1249
	fsw		f2, 0(x5)	# 1249
	jal		x0, feq_cont.30467	# 120
feq_else.30468:
	addi	x9, x0, 4	# 1251
	lw		x10, -28(x2)	# 410
	lw		x11, 24(x10)	# 410
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.30470	# 122
	addi	x12, x0, 0	# 122
	jal		x0, fle_cont.30469	# 122
fle_else.30470:
	addi	x12, x0, 1	# 122
fle_cont.30469:
	beq		x11, x5, beq.30472	# 241
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.30474	# 122
	addi	x11, x0, 1	# 241
	jal		x0, fle_cont.30473	# 122
fle_else.30474:
	addi	x11, x0, 0	# 241
fle_cont.30473:
	jal		x0, beq_cont.30471	# 241
beq.30472:
	addi	x11, x12, 0	# 241
beq_cont.30471:
	lw		x10, 16(x10)	# 448
	mul		x12, x30, x8	# 453
	add		x10, x10, x12	# 453
	flw		f1, 0(x10)	# 453
	beq		x11, x5, beq.30476	# 256
	jal		x0, beq_cont.30475	# 256
beq.30476:
	fsub	f1, f0, f1	# 123
beq_cont.30475:
	mul		x5, x30, x9	# 1251
	add		x5, x4, x5	# 1251
	fsw		f1, 0(x5)	# 1251
	fadd	f1, f0, f16	# 1252
	mul		x5, x30, x8	# 1252
	add		x5, x7, x5	# 1252
	flw		f2, 0(x5)	# 1252
	fdiv	f1, f1, f2	# 1252
	lw		x5, -44(x2)	# 1252
	mul		x5, x30, x5	# 1252
	add		x5, x4, x5	# 1252
	fsw		f1, 0(x5)	# 1252
feq_cont.30467:
	lw		x5, -16(x2)	# 1313
	mul		x7, x30, x5	# 1313
	lw		x8, -12(x2)	# 1313
	add		x7, x8, x7	# 1313
	sw		x4, 0(x7)	# 1313
beq_cont.30436:
	lw		x4, -8(x2)	# 1319
	sub		x5, x5, x4	# 1319
	lw		x4, 0(x2)	# 1319
	lw		x29, -4(x2)	# 1319
	lw		x31, 0(x29)	# 1319
	jalr	x0, x31, 0	# 1319
setup_startp_constants.2821.17280:
	lw		x6, 16(x29)	# 1332
	lw		x7, 12(x29)	# 1332
	lw		x8, 8(x29)	# 1332
	lw		x9, 4(x29)	# 1332
	ble		x8, x5, ble.30477	# 1332
	jalr	x0, x1, 0	# 1347
ble.30477:
	mul		x10, x30, x5	# 1333
	addi	x10, x10, 60048	# 1333
	lw		x10, 0(x10)	# 1333
	lw		x11, 40(x10)	# 585
	lw		x12, 4(x10)	# 390
	mul		x13, x30, x8	# 1336
	add		x13, x4, x13	# 1336
	flw		f1, 0(x13)	# 1336
	lw		x13, 20(x10)	# 468
	mul		x14, x30, x8	# 473
	add		x13, x13, x14	# 473
	flw		f2, 0(x13)	# 473
	fsub	f1, f1, f2	# 1336
	mul		x13, x30, x8	# 1336
	add		x13, x11, x13	# 1336
	fsw		f1, 0(x13)	# 1336
	mul		x13, x30, x9	# 1337
	add		x13, x4, x13	# 1337
	flw		f1, 0(x13)	# 1337
	lw		x13, 20(x10)	# 478
	mul		x14, x30, x9	# 483
	add		x13, x13, x14	# 483
	flw		f2, 0(x13)	# 483
	fsub	f1, f1, f2	# 1337
	mul		x13, x30, x9	# 1337
	add		x13, x11, x13	# 1337
	fsw		f1, 0(x13)	# 1337
	mul		x13, x30, x6	# 1338
	add		x13, x4, x13	# 1338
	flw		f1, 0(x13)	# 1338
	lw		x13, 20(x10)	# 488
	mul		x14, x30, x6	# 493
	add		x13, x13, x14	# 493
	flw		f2, 0(x13)	# 493
	fsub	f1, f1, f2	# 1338
	mul		x13, x30, x6	# 1338
	add		x13, x11, x13	# 1338
	fsw		f1, 0(x13)	# 1338
	beq		x12, x6, beq.30480	# 1339
	ble		x12, x6, ble_cont.30481	# 1342
	mul		x13, x30, x8	# 1343
	add		x13, x11, x13	# 1343
	flw		f1, 0(x13)	# 1343
	mul		x13, x30, x9	# 1343
	add		x13, x11, x13	# 1343
	flw		f2, 0(x13)	# 1343
	mul		x13, x30, x6	# 1343
	add		x13, x11, x13	# 1343
	flw		f3, 0(x13)	# 1343
	fmul	f4, f1, f1	# 127
	lw		x13, 16(x10)	# 428
	mul		x14, x30, x8	# 433
	add		x13, x13, x14	# 433
	flw		f5, 0(x13)	# 433
	fmul	f4, f4, f5	# 1004
	fmul	f5, f2, f2	# 127
	lw		x13, 16(x10)	# 438
	mul		x14, x30, x9	# 443
	add		x13, x13, x14	# 443
	flw		f6, 0(x13)	# 443
	fmul	f5, f5, f6	# 1004
	fadd	f4, f4, f5	# 1004
	fmul	f5, f3, f3	# 127
	lw		x13, 16(x10)	# 448
	mul		x14, x30, x6	# 453
	add		x13, x13, x14	# 453
	flw		f6, 0(x13)	# 453
	fmul	f5, f5, f6	# 1004
	fadd	f4, f4, f5	# 1004
	lw		x13, 12(x10)	# 419
	beq		x13, x8, beq.30483	# 1006
	fmul	f5, f2, f3	# 1010
	lw		x13, 36(x10)	# 548
	mul		x8, x30, x8	# 553
	add		x8, x13, x8	# 553
	flw		f6, 0(x8)	# 553
	fmul	f5, f5, f6	# 1010
	fadd	f4, f4, f5	# 1009
	fmul	f3, f3, f1	# 1011
	lw		x8, 36(x10)	# 558
	mul		x13, x30, x9	# 563
	add		x8, x8, x13	# 563
	flw		f5, 0(x8)	# 563
	fmul	f3, f3, f5	# 1011
	fadd	f3, f4, f3	# 1009
	fmul	f1, f1, f2	# 1012
	lw		x8, 36(x10)	# 568
	mul		x6, x30, x6	# 573
	add		x6, x8, x6	# 573
	flw		f2, 0(x6)	# 573
	fmul	f1, f1, f2	# 1012
	fadd	f1, f3, f1	# 1009
	jal		x0, beq_cont.30482	# 1006
beq.30483:
	fadd	f1, f0, f4	# 1007
beq_cont.30482:
	beq		x12, x7, beq.30485	# 1344
	jal		x0, beq_cont.30484	# 1344
beq.30485:
	fadd	f2, f0, f16	# 1344
	fsub	f1, f1, f2	# 1344
beq_cont.30484:
	mul		x6, x30, x7	# 1344
	add		x6, x11, x6	# 1344
	fsw		f1, 0(x6)	# 1344
ble_cont.30481:
	jal		x0, beq_cont.30479	# 1339
beq.30480:
	lw		x10, 16(x10)	# 458
	mul		x12, x30, x8	# 1341
	add		x12, x11, x12	# 1341
	flw		f1, 0(x12)	# 1341
	mul		x12, x30, x9	# 1341
	add		x12, x11, x12	# 1341
	flw		f2, 0(x12)	# 1341
	mul		x12, x30, x6	# 1341
	add		x12, x11, x12	# 1341
	flw		f3, 0(x12)	# 1341
	mul		x8, x30, x8	# 334
	add		x8, x10, x8	# 334
	flw		f4, 0(x8)	# 334
	fmul	f1, f4, f1	# 334
	mul		x8, x30, x9	# 334
	add		x8, x10, x8	# 334
	flw		f4, 0(x8)	# 334
	fmul	f2, f4, f2	# 334
	fadd	f1, f1, f2	# 334
	mul		x6, x30, x6	# 334
	add		x6, x10, x6	# 334
	flw		f2, 0(x6)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	mul		x6, x30, x7	# 1340
	add		x6, x11, x6	# 1340
	fsw		f1, 0(x6)	# 1340
beq_cont.30479:
	sub		x5, x5, x9	# 1346
	lw		x31, 0(x29)	# 1346
	jalr	x0, x31, 0	# 1346
check_all_inside.2846.17283:
	lw		x6, 24(x29)	# 1401
	lw		x7, 20(x29)	# 1401
	lw		x8, 16(x29)	# 1401
	lw		x9, 12(x29)	# 1401
	lw		x10, 8(x29)	# 1401
	flw		f4, 4(x29)	# 1401
	mul		x11, x30, x4	# 1401
	add		x11, x5, x11	# 1401
	lw		x11, 0(x11)	# 1401
	beq		x11, x7, beq.30486	# 1402
	mul		x7, x30, x11	# 1405
	addi	x7, x7, 60048	# 1405
	lw		x7, 0(x7)	# 1405
	lw		x11, 20(x7)	# 468
	mul		x12, x30, x9	# 473
	add		x11, x11, x12	# 473
	flw		f5, 0(x11)	# 473
	fsub	f5, f1, f5	# 1387
	lw		x11, 20(x7)	# 478
	mul		x12, x30, x10	# 483
	add		x11, x11, x12	# 483
	flw		f6, 0(x11)	# 483
	fsub	f6, f2, f6	# 1388
	lw		x11, 20(x7)	# 488
	mul		x12, x30, x6	# 493
	add		x11, x11, x12	# 493
	flw		f7, 0(x11)	# 493
	fsub	f7, f3, f7	# 1389
	lw		x11, 4(x7)	# 390
	beq		x11, x10, beq.30488	# 1391
	beq		x11, x6, beq.30490	# 1393
	fmul	f8, f5, f5	# 127
	lw		x11, 16(x7)	# 428
	mul		x12, x30, x9	# 433
	add		x11, x11, x12	# 433
	flw		f9, 0(x11)	# 433
	fmul	f8, f8, f9	# 1004
	fmul	f9, f6, f6	# 127
	lw		x11, 16(x7)	# 438
	mul		x12, x30, x10	# 443
	add		x11, x11, x12	# 443
	flw		f10, 0(x11)	# 443
	fmul	f9, f9, f10	# 1004
	fadd	f8, f8, f9	# 1004
	fmul	f9, f7, f7	# 127
	lw		x11, 16(x7)	# 448
	mul		x12, x30, x6	# 453
	add		x11, x11, x12	# 453
	flw		f10, 0(x11)	# 453
	fmul	f9, f9, f10	# 1004
	fadd	f8, f8, f9	# 1004
	lw		x11, 12(x7)	# 419
	beq		x11, x9, beq.30492	# 1006
	fmul	f9, f6, f7	# 1010
	lw		x11, 36(x7)	# 548
	mul		x12, x30, x9	# 553
	add		x11, x11, x12	# 553
	flw		f10, 0(x11)	# 553
	fmul	f9, f9, f10	# 1010
	fadd	f8, f8, f9	# 1009
	fmul	f7, f7, f5	# 1011
	lw		x11, 36(x7)	# 558
	mul		x12, x30, x10	# 563
	add		x11, x11, x12	# 563
	flw		f9, 0(x11)	# 563
	fmul	f7, f7, f9	# 1011
	fadd	f7, f8, f7	# 1009
	fmul	f5, f5, f6	# 1012
	lw		x11, 36(x7)	# 568
	mul		x6, x30, x6	# 573
	add		x6, x11, x6	# 573
	flw		f6, 0(x6)	# 573
	fmul	f5, f5, f6	# 1012
	fadd	f5, f7, f5	# 1009
	jal		x0, beq_cont.30491	# 1006
beq.30492:
	fadd	f5, f0, f8	# 1007
beq_cont.30491:
	lw		x6, 4(x7)	# 390
	beq		x6, x8, beq.30494	# 1381
	jal		x0, beq_cont.30493	# 1381
beq.30494:
	fadd	f6, f0, f16	# 1381
	fsub	f5, f5, f6	# 1381
beq_cont.30493:
	lw		x6, 24(x7)	# 410
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.30496	# 122
	addi	x7, x0, 0	# 122
	jal		x0, fle_cont.30495	# 122
fle_else.30496:
	addi	x7, x0, 1	# 122
fle_cont.30495:
	beq		x6, x9, beq.30498	# 241
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.30500	# 122
	addi	x6, x0, 1	# 241
	jal		x0, fle_cont.30499	# 122
fle_else.30500:
	addi	x6, x0, 0	# 241
fle_cont.30499:
	jal		x0, beq_cont.30497	# 241
beq.30498:
	addi	x6, x7, 0	# 241
beq_cont.30497:
	beq		x6, x9, beq.30502	# 1382
	addi	x6, x0, 0	# 1382
	jal		x0, beq_cont.30501	# 1382
beq.30502:
	addi	x6, x0, 1	# 1382
beq_cont.30501:
	jal		x0, beq_cont.30489	# 1393
beq.30490:
	lw		x8, 16(x7)	# 458
	mul		x11, x30, x9	# 334
	add		x11, x8, x11	# 334
	flw		f8, 0(x11)	# 334
	fmul	f5, f8, f5	# 334
	mul		x11, x30, x10	# 334
	add		x11, x8, x11	# 334
	flw		f8, 0(x11)	# 334
	fmul	f6, f8, f6	# 334
	fadd	f5, f5, f6	# 334
	mul		x6, x30, x6	# 334
	add		x6, x8, x6	# 334
	flw		f6, 0(x6)	# 334
	fmul	f6, f6, f7	# 334
	fadd	f5, f5, f6	# 334
	lw		x6, 24(x7)	# 410
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.30504	# 122
	addi	x7, x0, 0	# 122
	jal		x0, fle_cont.30503	# 122
fle_else.30504:
	addi	x7, x0, 1	# 122
fle_cont.30503:
	beq		x6, x9, beq.30506	# 241
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.30508	# 122
	addi	x6, x0, 1	# 241
	jal		x0, fle_cont.30507	# 122
fle_else.30508:
	addi	x6, x0, 0	# 241
fle_cont.30507:
	jal		x0, beq_cont.30505	# 241
beq.30506:
	addi	x6, x7, 0	# 241
beq_cont.30505:
	beq		x6, x9, beq.30510	# 1375
	addi	x6, x0, 0	# 1375
	jal		x0, beq_cont.30509	# 1375
beq.30510:
	addi	x6, x0, 1	# 1375
beq_cont.30509:
beq_cont.30489:
	jal		x0, beq_cont.30487	# 1391
beq.30488:
	fle		x31, f5, f4	# 124
	beq		x31, x0, fle_cont.30511	# 124
	fsub	f5, f0, f5	# 124
fle_cont.30511:
	lw		x8, 16(x7)	# 428
	mul		x11, x30, x9	# 433
	add		x8, x8, x11	# 433
	flw		f8, 0(x8)	# 433
	fle		x31, f8, f5	# 125
	beq		x31, x0, fle_else.30513	# 125
	addi	x6, x0, 0	# 1368
	jal		x0, fle_cont.30512	# 125
fle_else.30513:
	fle		x31, f6, f4	# 124
	beq		x31, x0, fle_else.30515	# 124
	fsub	f5, f0, f6	# 124
	jal		x0, fle_cont.30514	# 124
fle_else.30515:
	fadd	f5, f0, f6	# 124
fle_cont.30514:
	lw		x8, 16(x7)	# 438
	mul		x11, x30, x10	# 443
	add		x8, x8, x11	# 443
	flw		f6, 0(x8)	# 443
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.30517	# 125
	addi	x6, x0, 0	# 1367
	jal		x0, fle_cont.30516	# 125
fle_else.30517:
	fle		x31, f7, f4	# 124
	beq		x31, x0, fle_else.30519	# 124
	fsub	f4, f0, f7	# 124
	jal		x0, fle_cont.30518	# 124
fle_else.30519:
	fadd	f4, f0, f7	# 124
fle_cont.30518:
	lw		x8, 16(x7)	# 448
	mul		x6, x30, x6	# 453
	add		x6, x8, x6	# 453
	flw		f5, 0(x6)	# 453
	fle		x31, f5, f4	# 125
	beq		x31, x0, fle_else.30521	# 125
	addi	x6, x0, 0	# 125
	jal		x0, fle_cont.30520	# 125
fle_else.30521:
	addi	x6, x0, 1	# 125
fle_cont.30520:
fle_cont.30516:
fle_cont.30512:
	beq		x6, x9, beq.30523	# 1363
	lw		x6, 24(x7)	# 410
	jal		x0, beq_cont.30522	# 1363
beq.30523:
	lw		x6, 24(x7)	# 410
	beq		x6, x9, beq.30525	# 1369
	addi	x6, x0, 0	# 1369
	jal		x0, beq_cont.30524	# 1369
beq.30525:
	addi	x6, x0, 1	# 1369
beq_cont.30524:
beq_cont.30522:
beq_cont.30487:
	beq		x6, x9, beq.30526	# 1405
	addi	x4, x0, 0	# 1406
	jalr	x0, x1, 0	# 1406
beq.30526:
	add		x4, x4, x10	# 1408
	lw		x31, 0(x29)	# 1408
	jalr	x0, x31, 0	# 1408
beq.30486:
	addi	x4, x0, 1	# 1403
	jalr	x0, x1, 0	# 1403
shadow_check_and_group.2852.17289:
	lw		x6, 32(x29)	# 1421
	lw		x7, 28(x29)	# 1421
	lw		x8, 24(x29)	# 1421
	lw		x9, 20(x29)	# 1421
	lw		x10, 16(x29)	# 1421
	lw		x11, 12(x29)	# 1421
	lw		x12, 8(x29)	# 1421
	flw		f1, 4(x29)	# 1421
	mul		x13, x30, x4	# 1421
	add		x13, x5, x13	# 1421
	lw		x13, 0(x13)	# 1421
	beq		x13, x9, beq.30527	# 1421
	mul		x9, x30, x13	# 1163
	addi	x9, x9, 60048	# 1163
	lw		x9, 0(x9)	# 1163
	mul		x14, x30, x11	# 1164
	addi	x14, x14, 60552	# 1164
	flw		f2, 0(x14)	# 1164
	lw		x14, 20(x9)	# 468
	mul		x15, x30, x11	# 473
	add		x14, x14, x15	# 473
	flw		f3, 0(x14)	# 473
	fsub	f2, f2, f3	# 1164
	mul		x14, x30, x12	# 1165
	addi	x14, x14, 60552	# 1165
	flw		f3, 0(x14)	# 1165
	lw		x14, 20(x9)	# 478
	mul		x15, x30, x12	# 483
	add		x14, x14, x15	# 483
	flw		f4, 0(x14)	# 483
	fsub	f3, f3, f4	# 1165
	mul		x14, x30, x8	# 1166
	addi	x14, x14, 60552	# 1166
	flw		f4, 0(x14)	# 1166
	lw		x14, 20(x9)	# 488
	mul		x15, x30, x8	# 493
	add		x14, x14, x15	# 493
	flw		f5, 0(x14)	# 493
	fsub	f4, f4, f5	# 1166
	mul		x14, x30, x13	# 1168
	addi	x14, x14, 60748	# 1168
	lw		x14, 0(x14)	# 1168
	lw		x15, 4(x9)	# 390
	beq		x15, x12, beq.30529	# 1170
	beq		x15, x8, beq.30531	# 1172
	mul		x7, x30, x11	# 1144
	add		x7, x14, x7	# 1144
	flw		f5, 0(x7)	# 1144
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30533	# 120
	addi	x7, x0, 0	# 1146
	jal		x0, feq_cont.30532	# 120
feq_else.30533:
	mul		x7, x30, x12	# 1148
	add		x7, x14, x7	# 1148
	flw		f6, 0(x7)	# 1148
	fmul	f6, f6, f2	# 1148
	mul		x7, x30, x8	# 1148
	add		x7, x14, x7	# 1148
	flw		f7, 0(x7)	# 1148
	fmul	f7, f7, f3	# 1148
	fadd	f6, f6, f7	# 1148
	mul		x7, x30, x10	# 1148
	add		x7, x14, x7	# 1148
	flw		f7, 0(x7)	# 1148
	fmul	f7, f7, f4	# 1148
	fadd	f6, f6, f7	# 1148
	fmul	f7, f2, f2	# 127
	lw		x7, 16(x9)	# 428
	mul		x15, x30, x11	# 433
	add		x7, x7, x15	# 433
	flw		f8, 0(x7)	# 433
	fmul	f7, f7, f8	# 1004
	fmul	f8, f3, f3	# 127
	lw		x7, 16(x9)	# 438
	mul		x15, x30, x12	# 443
	add		x7, x7, x15	# 443
	flw		f9, 0(x7)	# 443
	fmul	f8, f8, f9	# 1004
	fadd	f7, f7, f8	# 1004
	fmul	f8, f4, f4	# 127
	lw		x7, 16(x9)	# 448
	mul		x15, x30, x8	# 453
	add		x7, x7, x15	# 453
	flw		f9, 0(x7)	# 453
	fmul	f8, f8, f9	# 1004
	fadd	f7, f7, f8	# 1004
	lw		x7, 12(x9)	# 419
	beq		x7, x11, beq.30535	# 1006
	fmul	f8, f3, f4	# 1010
	lw		x7, 36(x9)	# 548
	mul		x15, x30, x11	# 553
	add		x7, x7, x15	# 553
	flw		f9, 0(x7)	# 553
	fmul	f8, f8, f9	# 1010
	fadd	f7, f7, f8	# 1009
	fmul	f4, f4, f2	# 1011
	lw		x7, 36(x9)	# 558
	mul		x15, x30, x12	# 563
	add		x7, x7, x15	# 563
	flw		f8, 0(x7)	# 563
	fmul	f4, f4, f8	# 1011
	fadd	f4, f7, f4	# 1009
	fmul	f2, f2, f3	# 1012
	lw		x7, 36(x9)	# 568
	mul		x15, x30, x8	# 573
	add		x7, x7, x15	# 573
	flw		f3, 0(x7)	# 573
	fmul	f2, f2, f3	# 1012
	fadd	f2, f4, f2	# 1009
	jal		x0, beq_cont.30534	# 1006
beq.30535:
	fadd	f2, f0, f7	# 1007
beq_cont.30534:
	lw		x7, 4(x9)	# 390
	beq		x7, x10, beq.30537	# 1150
	jal		x0, beq_cont.30536	# 1150
beq.30537:
	fadd	f3, f0, f16	# 1150
	fsub	f2, f2, f3	# 1150
beq_cont.30536:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1151
	fsub	f2, f3, f2	# 1151
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.30539	# 121
	addi	x7, x0, 0	# 1158
	jal		x0, fle_cont.30538	# 121
fle_else.30539:
	lw		x7, 24(x9)	# 410
	beq		x7, x11, beq.30541	# 1153
	fsqrt	f1, f2	# 1154
	fadd	f1, f6, f1	# 1154
	addi	x7, x0, 4	# 1154
	mul		x7, x30, x7	# 1154
	add		x7, x14, x7	# 1154
	flw		f2, 0(x7)	# 1154
	fmul	f1, f1, f2	# 1154
	mul		x7, x30, x11	# 1154
	addi	x7, x7, 60540	# 1154
	fsw		f1, 0(x7)	# 1154
	jal		x0, beq_cont.30540	# 1153
beq.30541:
	fsqrt	f1, f2	# 1156
	fsub	f1, f6, f1	# 1156
	addi	x7, x0, 4	# 1156
	mul		x7, x30, x7	# 1156
	add		x7, x14, x7	# 1156
	flw		f2, 0(x7)	# 1156
	fmul	f1, f1, f2	# 1156
	mul		x7, x30, x11	# 1156
	addi	x7, x7, 60540	# 1156
	fsw		f1, 0(x7)	# 1156
beq_cont.30540:
	addi	x7, x0, 1	# 1157
fle_cont.30538:
feq_cont.30532:
	jal		x0, beq_cont.30530	# 1172
beq.30531:
	mul		x7, x30, x11	# 1134
	add		x7, x14, x7	# 1134
	flw		f5, 0(x7)	# 1134
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.30543	# 122
	addi	x7, x0, 0	# 1138
	jal		x0, fle_cont.30542	# 122
fle_else.30543:
	mul		x7, x30, x12	# 1136
	add		x7, x14, x7	# 1136
	flw		f1, 0(x7)	# 1136
	fmul	f1, f1, f2	# 1136
	mul		x7, x30, x8	# 1136
	add		x7, x14, x7	# 1136
	flw		f2, 0(x7)	# 1136
	fmul	f2, f2, f3	# 1136
	fadd	f1, f1, f2	# 1136
	mul		x7, x30, x10	# 1136
	add		x7, x14, x7	# 1136
	flw		f2, 0(x7)	# 1136
	fmul	f2, f2, f4	# 1136
	fadd	f1, f1, f2	# 1136
	mul		x7, x30, x11	# 1135
	addi	x7, x7, 60540	# 1135
	fsw		f1, 0(x7)	# 1135
	addi	x7, x0, 1	# 1137
fle_cont.30542:
beq_cont.30530:
	jal		x0, beq_cont.30528	# 1170
beq.30529:
	mul		x15, x30, x11	# 1101
	add		x15, x14, x15	# 1101
	flw		f5, 0(x15)	# 1101
	fsub	f5, f5, f2	# 1101
	mul		x15, x30, x12	# 1101
	add		x15, x14, x15	# 1101
	flw		f6, 0(x15)	# 1101
	fmul	f5, f5, f6	# 1101
	mul		x15, x30, x12	# 1103
	addi	x15, x15, 60736	# 1103
	flw		f7, 0(x15)	# 1103
	fmul	f8, f5, f7	# 1103
	fadd	f8, f8, f3	# 1103
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.30544	# 124
	fsub	f8, f0, f8	# 124
fle_cont.30544:
	lw		x15, 16(x9)	# 438
	mul		x16, x30, x12	# 443
	add		x15, x15, x16	# 443
	flw		f9, 0(x15)	# 443
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.30546	# 125
	addi	x15, x0, 0	# 1107
	jal		x0, fle_cont.30545	# 125
fle_else.30546:
	mul		x15, x30, x8	# 1104
	addi	x15, x15, 60736	# 1104
	flw		f8, 0(x15)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.30547	# 124
	fsub	f8, f0, f8	# 124
fle_cont.30547:
	lw		x15, 16(x9)	# 448
	mul		x16, x30, x8	# 453
	add		x15, x15, x16	# 453
	flw		f9, 0(x15)	# 453
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.30549	# 125
	addi	x15, x0, 0	# 1106
	jal		x0, fle_cont.30548	# 125
fle_else.30549:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.30551	# 120
	addi	x15, x0, 0	# 1105
	jal		x0, feq_cont.30550	# 120
feq_else.30551:
	addi	x15, x0, 1	# 1105
feq_cont.30550:
fle_cont.30548:
fle_cont.30545:
	beq		x15, x11, beq.30553	# 1102
	mul		x7, x30, x11	# 1109
	addi	x7, x7, 60540	# 1109
	fsw		f5, 0(x7)	# 1109
	addi	x7, x0, 1	# 1109
	jal		x0, beq_cont.30552	# 1102
beq.30553:
	mul		x15, x30, x8	# 1110
	add		x15, x14, x15	# 1110
	flw		f5, 0(x15)	# 1110
	fsub	f5, f5, f3	# 1110
	mul		x10, x30, x10	# 1110
	add		x10, x14, x10	# 1110
	flw		f6, 0(x10)	# 1110
	fmul	f5, f5, f6	# 1110
	mul		x10, x30, x11	# 1112
	addi	x10, x10, 60736	# 1112
	flw		f8, 0(x10)	# 1112
	fmul	f9, f5, f8	# 1112
	fadd	f9, f9, f2	# 1112
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.30554	# 124
	fsub	f9, f0, f9	# 124
fle_cont.30554:
	lw		x10, 16(x9)	# 428
	mul		x15, x30, x11	# 433
	add		x10, x10, x15	# 433
	flw		f10, 0(x10)	# 433
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.30556	# 125
	addi	x10, x0, 0	# 1116
	jal		x0, fle_cont.30555	# 125
fle_else.30556:
	mul		x10, x30, x8	# 1113
	addi	x10, x10, 60736	# 1113
	flw		f9, 0(x10)	# 1113
	fmul	f9, f5, f9	# 1113
	fadd	f9, f9, f4	# 1113
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.30557	# 124
	fsub	f9, f0, f9	# 124
fle_cont.30557:
	lw		x10, 16(x9)	# 448
	mul		x15, x30, x8	# 453
	add		x10, x10, x15	# 453
	flw		f10, 0(x10)	# 453
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.30559	# 125
	addi	x10, x0, 0	# 1115
	jal		x0, fle_cont.30558	# 125
fle_else.30559:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.30561	# 120
	addi	x10, x0, 0	# 1114
	jal		x0, feq_cont.30560	# 120
feq_else.30561:
	addi	x10, x0, 1	# 1114
feq_cont.30560:
fle_cont.30558:
fle_cont.30555:
	beq		x10, x11, beq.30563	# 1111
	mul		x7, x30, x11	# 1118
	addi	x7, x7, 60540	# 1118
	fsw		f5, 0(x7)	# 1118
	addi	x7, x0, 2	# 1118
	jal		x0, beq_cont.30562	# 1111
beq.30563:
	addi	x10, x0, 4	# 1119
	mul		x10, x30, x10	# 1119
	add		x10, x14, x10	# 1119
	flw		f5, 0(x10)	# 1119
	fsub	f4, f5, f4	# 1119
	mul		x7, x30, x7	# 1119
	add		x7, x14, x7	# 1119
	flw		f5, 0(x7)	# 1119
	fmul	f4, f4, f5	# 1119
	fmul	f6, f4, f8	# 1121
	fadd	f2, f6, f2	# 1121
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.30564	# 124
	fsub	f2, f0, f2	# 124
fle_cont.30564:
	lw		x7, 16(x9)	# 428
	mul		x10, x30, x11	# 433
	add		x7, x7, x10	# 433
	flw		f6, 0(x7)	# 433
	fle		x31, f6, f2	# 125
	beq		x31, x0, fle_else.30566	# 125
	addi	x7, x0, 0	# 1125
	jal		x0, fle_cont.30565	# 125
fle_else.30566:
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.30567	# 124
	fsub	f2, f0, f2	# 124
fle_cont.30567:
	lw		x7, 16(x9)	# 438
	mul		x9, x30, x12	# 443
	add		x7, x7, x9	# 443
	flw		f3, 0(x7)	# 443
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.30569	# 125
	addi	x7, x0, 0	# 1124
	jal		x0, fle_cont.30568	# 125
fle_else.30569:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30571	# 120
	addi	x7, x0, 0	# 1123
	jal		x0, feq_cont.30570	# 120
feq_else.30571:
	addi	x7, x0, 1	# 1123
feq_cont.30570:
fle_cont.30568:
fle_cont.30565:
	beq		x7, x11, beq.30573	# 1120
	mul		x7, x30, x11	# 1127
	addi	x7, x7, 60540	# 1127
	fsw		f4, 0(x7)	# 1127
	addi	x7, x0, 3	# 1127
	jal		x0, beq_cont.30572	# 1120
beq.30573:
	addi	x7, x0, 0	# 1129
beq_cont.30572:
beq_cont.30562:
beq_cont.30552:
beq_cont.30528:
	mul		x9, x30, x11	# 1426
	addi	x9, x9, 60540	# 1426
	flw		f1, 0(x9)	# 1426
	beq		x7, x11, beq.30575	# 1427
	fadd	f2, f0, f20	# 1427
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30577	# 125
	addi	x7, x0, 0	# 125
	jal		x0, fle_cont.30576	# 125
fle_else.30577:
	addi	x7, x0, 1	# 125
fle_cont.30576:
	jal		x0, beq_cont.30574	# 1427
beq.30575:
	addi	x7, x0, 0	# 1427
beq_cont.30574:
	beq		x7, x11, beq.30578	# 1427
	fadd	f2, f0, f19	# 1430
	fadd	f1, f1, f2	# 1430
	mul		x7, x30, x11	# 1431
	addi	x7, x7, 60312	# 1431
	flw		f2, 0(x7)	# 1431
	fmul	f2, f2, f1	# 1431
	mul		x7, x30, x11	# 1431
	addi	x7, x7, 60552	# 1431
	flw		f3, 0(x7)	# 1431
	fadd	f2, f2, f3	# 1431
	mul		x7, x30, x12	# 1432
	addi	x7, x7, 60312	# 1432
	flw		f3, 0(x7)	# 1432
	fmul	f3, f3, f1	# 1432
	mul		x7, x30, x12	# 1432
	addi	x7, x7, 60552	# 1432
	flw		f4, 0(x7)	# 1432
	fadd	f3, f3, f4	# 1432
	mul		x7, x30, x8	# 1433
	addi	x7, x7, 60312	# 1433
	flw		f4, 0(x7)	# 1433
	fmul	f1, f4, f1	# 1433
	mul		x7, x30, x8	# 1433
	addi	x7, x7, 60552	# 1433
	flw		f4, 0(x7)	# 1433
	fadd	f1, f1, f4	# 1433
	sw		x5, 0(x2)	# 1434
	sw		x29, -4(x2)	# 1434
	sw		x12, -8(x2)	# 1434
	sw		x4, -12(x2)	# 1434
	sw		x11, -16(x2)	# 1434
	addi	x4, x11, 0
	addi	x29, x6, 0
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -20(x2)	# 1434
	addi	x2, x2, -24	# 1434
	lw		x31, 0(x29)	# 1434
	jalr	x1, x31, 0	# 1434
	addi	x2, x2, 24	# 1434
	lw		x1, -20(x2)	# 1434
	lw		x5, -16(x2)	# 1434
	beq		x4, x5, beq.30579	# 1434
	addi	x4, x0, 1	# 1435
	jalr	x0, x1, 0	# 1435
beq.30579:
	lw		x4, -8(x2)	# 1437
	lw		x5, -12(x2)	# 1437
	add		x4, x5, x4	# 1437
	lw		x5, 0(x2)	# 1437
	lw		x29, -4(x2)	# 1437
	lw		x31, 0(x29)	# 1437
	jalr	x0, x31, 0	# 1437
beq.30578:
	mul		x6, x30, x13	# 1443
	addi	x6, x6, 60048	# 1443
	lw		x6, 0(x6)	# 1443
	lw		x6, 24(x6)	# 410
	beq		x6, x11, beq.30580	# 1443
	add		x4, x4, x12	# 1444
	lw		x31, 0(x29)	# 1444
	jalr	x0, x31, 0	# 1444
beq.30580:
	addi	x4, x0, 0	# 1446
	jalr	x0, x1, 0	# 1446
beq.30527:
	addi	x4, x0, 0	# 1422
	jalr	x0, x1, 0	# 1422
shadow_check_one_or_group.2855.17292:
	lw		x6, 16(x29)	# 1451
	lw		x7, 12(x29)	# 1451
	lw		x8, 8(x29)	# 1451
	lw		x9, 4(x29)	# 1451
	mul		x10, x30, x4	# 1451
	add		x10, x5, x10	# 1451
	lw		x10, 0(x10)	# 1451
	beq		x10, x7, beq.30581	# 1452
	mul		x7, x30, x10	# 1455
	addi	x7, x7, 60332	# 1455
	lw		x7, 0(x7)	# 1455
	sw		x5, 0(x2)	# 1456
	sw		x29, -4(x2)	# 1456
	sw		x9, -8(x2)	# 1456
	sw		x4, -12(x2)	# 1456
	sw		x8, -16(x2)	# 1456
	addi	x5, x7, 0
	addi	x4, x8, 0
	addi	x29, x6, 0
	sw		x1, -20(x2)	# 1456
	addi	x2, x2, -24	# 1456
	lw		x31, 0(x29)	# 1456
	jalr	x1, x31, 0	# 1456
	addi	x2, x2, 24	# 1456
	lw		x1, -20(x2)	# 1456
	lw		x5, -16(x2)	# 1457
	beq		x4, x5, beq.30582	# 1457
	addi	x4, x0, 1	# 1458
	jalr	x0, x1, 0	# 1458
beq.30582:
	lw		x4, -8(x2)	# 1460
	lw		x5, -12(x2)	# 1460
	add		x4, x5, x4	# 1460
	lw		x5, 0(x2)	# 1460
	lw		x29, -4(x2)	# 1460
	lw		x31, 0(x29)	# 1460
	jalr	x0, x31, 0	# 1460
beq.30581:
	addi	x4, x0, 0	# 1453
	jalr	x0, x1, 0	# 1453
shadow_check_one_or_matrix.2858.17295:
	lw		x6, 32(x29)	# 1466
	lw		x7, 28(x29)	# 1466
	lw		x8, 24(x29)	# 1466
	lw		x9, 20(x29)	# 1466
	lw		x10, 16(x29)	# 1466
	lw		x11, 12(x29)	# 1466
	lw		x12, 8(x29)	# 1466
	flw		f1, 4(x29)	# 1466
	mul		x13, x30, x4	# 1466
	add		x13, x5, x13	# 1466
	lw		x13, 0(x13)	# 1466
	mul		x14, x30, x11	# 1467
	add		x14, x13, x14	# 1467
	lw		x14, 0(x14)	# 1467
	beq		x14, x9, beq.30583	# 1468
	addi	x9, x0, 99	# 1472
	sw		x13, 0(x2)	# 1472
	sw		x6, -4(x2)	# 1472
	sw		x5, -8(x2)	# 1472
	sw		x29, -12(x2)	# 1472
	sw		x12, -16(x2)	# 1472
	sw		x4, -20(x2)	# 1472
	sw		x11, -24(x2)	# 1472
	beq		x14, x9, beq.30585	# 1472
	mul		x9, x30, x14	# 1163
	addi	x9, x9, 60048	# 1163
	lw		x9, 0(x9)	# 1163
	mul		x15, x30, x11	# 1164
	addi	x15, x15, 60552	# 1164
	flw		f2, 0(x15)	# 1164
	lw		x15, 20(x9)	# 468
	mul		x16, x30, x11	# 473
	add		x15, x15, x16	# 473
	flw		f3, 0(x15)	# 473
	fsub	f2, f2, f3	# 1164
	mul		x15, x30, x12	# 1165
	addi	x15, x15, 60552	# 1165
	flw		f3, 0(x15)	# 1165
	lw		x15, 20(x9)	# 478
	mul		x16, x30, x12	# 483
	add		x15, x15, x16	# 483
	flw		f4, 0(x15)	# 483
	fsub	f3, f3, f4	# 1165
	mul		x15, x30, x8	# 1166
	addi	x15, x15, 60552	# 1166
	flw		f4, 0(x15)	# 1166
	lw		x15, 20(x9)	# 488
	mul		x16, x30, x8	# 493
	add		x15, x15, x16	# 493
	flw		f5, 0(x15)	# 493
	fsub	f4, f4, f5	# 1166
	mul		x14, x30, x14	# 1168
	addi	x14, x14, 60748	# 1168
	lw		x14, 0(x14)	# 1168
	lw		x15, 4(x9)	# 390
	beq		x15, x12, beq.30587	# 1170
	beq		x15, x8, beq.30589	# 1172
	mul		x7, x30, x11	# 1144
	add		x7, x14, x7	# 1144
	flw		f5, 0(x7)	# 1144
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30591	# 120
	addi	x7, x0, 0	# 1146
	jal		x0, feq_cont.30590	# 120
feq_else.30591:
	mul		x7, x30, x12	# 1148
	add		x7, x14, x7	# 1148
	flw		f6, 0(x7)	# 1148
	fmul	f6, f6, f2	# 1148
	mul		x7, x30, x8	# 1148
	add		x7, x14, x7	# 1148
	flw		f7, 0(x7)	# 1148
	fmul	f7, f7, f3	# 1148
	fadd	f6, f6, f7	# 1148
	mul		x7, x30, x10	# 1148
	add		x7, x14, x7	# 1148
	flw		f7, 0(x7)	# 1148
	fmul	f7, f7, f4	# 1148
	fadd	f6, f6, f7	# 1148
	fmul	f7, f2, f2	# 127
	lw		x7, 16(x9)	# 428
	mul		x15, x30, x11	# 433
	add		x7, x7, x15	# 433
	flw		f8, 0(x7)	# 433
	fmul	f7, f7, f8	# 1004
	fmul	f8, f3, f3	# 127
	lw		x7, 16(x9)	# 438
	mul		x15, x30, x12	# 443
	add		x7, x7, x15	# 443
	flw		f9, 0(x7)	# 443
	fmul	f8, f8, f9	# 1004
	fadd	f7, f7, f8	# 1004
	fmul	f8, f4, f4	# 127
	lw		x7, 16(x9)	# 448
	mul		x15, x30, x8	# 453
	add		x7, x7, x15	# 453
	flw		f9, 0(x7)	# 453
	fmul	f8, f8, f9	# 1004
	fadd	f7, f7, f8	# 1004
	lw		x7, 12(x9)	# 419
	beq		x7, x11, beq.30593	# 1006
	fmul	f8, f3, f4	# 1010
	lw		x7, 36(x9)	# 548
	mul		x15, x30, x11	# 553
	add		x7, x7, x15	# 553
	flw		f9, 0(x7)	# 553
	fmul	f8, f8, f9	# 1010
	fadd	f7, f7, f8	# 1009
	fmul	f4, f4, f2	# 1011
	lw		x7, 36(x9)	# 558
	mul		x15, x30, x12	# 563
	add		x7, x7, x15	# 563
	flw		f8, 0(x7)	# 563
	fmul	f4, f4, f8	# 1011
	fadd	f4, f7, f4	# 1009
	fmul	f2, f2, f3	# 1012
	lw		x7, 36(x9)	# 568
	mul		x8, x30, x8	# 573
	add		x7, x7, x8	# 573
	flw		f3, 0(x7)	# 573
	fmul	f2, f2, f3	# 1012
	fadd	f2, f4, f2	# 1009
	jal		x0, beq_cont.30592	# 1006
beq.30593:
	fadd	f2, f0, f7	# 1007
beq_cont.30592:
	lw		x7, 4(x9)	# 390
	beq		x7, x10, beq.30595	# 1150
	jal		x0, beq_cont.30594	# 1150
beq.30595:
	fadd	f3, f0, f16	# 1150
	fsub	f2, f2, f3	# 1150
beq_cont.30594:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1151
	fsub	f2, f3, f2	# 1151
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.30597	# 121
	addi	x7, x0, 0	# 1158
	jal		x0, fle_cont.30596	# 121
fle_else.30597:
	lw		x7, 24(x9)	# 410
	beq		x7, x11, beq.30599	# 1153
	fsqrt	f1, f2	# 1154
	fadd	f1, f6, f1	# 1154
	addi	x7, x0, 4	# 1154
	mul		x7, x30, x7	# 1154
	add		x7, x14, x7	# 1154
	flw		f2, 0(x7)	# 1154
	fmul	f1, f1, f2	# 1154
	mul		x7, x30, x11	# 1154
	addi	x7, x7, 60540	# 1154
	fsw		f1, 0(x7)	# 1154
	jal		x0, beq_cont.30598	# 1153
beq.30599:
	fsqrt	f1, f2	# 1156
	fsub	f1, f6, f1	# 1156
	addi	x7, x0, 4	# 1156
	mul		x7, x30, x7	# 1156
	add		x7, x14, x7	# 1156
	flw		f2, 0(x7)	# 1156
	fmul	f1, f1, f2	# 1156
	mul		x7, x30, x11	# 1156
	addi	x7, x7, 60540	# 1156
	fsw		f1, 0(x7)	# 1156
beq_cont.30598:
	addi	x7, x0, 1	# 1157
fle_cont.30596:
feq_cont.30590:
	jal		x0, beq_cont.30588	# 1172
beq.30589:
	mul		x7, x30, x11	# 1134
	add		x7, x14, x7	# 1134
	flw		f5, 0(x7)	# 1134
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.30601	# 122
	addi	x7, x0, 0	# 1138
	jal		x0, fle_cont.30600	# 122
fle_else.30601:
	mul		x7, x30, x12	# 1136
	add		x7, x14, x7	# 1136
	flw		f1, 0(x7)	# 1136
	fmul	f1, f1, f2	# 1136
	mul		x7, x30, x8	# 1136
	add		x7, x14, x7	# 1136
	flw		f2, 0(x7)	# 1136
	fmul	f2, f2, f3	# 1136
	fadd	f1, f1, f2	# 1136
	mul		x7, x30, x10	# 1136
	add		x7, x14, x7	# 1136
	flw		f2, 0(x7)	# 1136
	fmul	f2, f2, f4	# 1136
	fadd	f1, f1, f2	# 1136
	mul		x7, x30, x11	# 1135
	addi	x7, x7, 60540	# 1135
	fsw		f1, 0(x7)	# 1135
	addi	x7, x0, 1	# 1137
fle_cont.30600:
beq_cont.30588:
	jal		x0, beq_cont.30586	# 1170
beq.30587:
	mul		x15, x30, x11	# 1101
	add		x15, x14, x15	# 1101
	flw		f5, 0(x15)	# 1101
	fsub	f5, f5, f2	# 1101
	mul		x15, x30, x12	# 1101
	add		x15, x14, x15	# 1101
	flw		f6, 0(x15)	# 1101
	fmul	f5, f5, f6	# 1101
	mul		x15, x30, x12	# 1103
	addi	x15, x15, 60736	# 1103
	flw		f7, 0(x15)	# 1103
	fmul	f8, f5, f7	# 1103
	fadd	f8, f8, f3	# 1103
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.30602	# 124
	fsub	f8, f0, f8	# 124
fle_cont.30602:
	lw		x15, 16(x9)	# 438
	mul		x16, x30, x12	# 443
	add		x15, x15, x16	# 443
	flw		f9, 0(x15)	# 443
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.30604	# 125
	addi	x15, x0, 0	# 1107
	jal		x0, fle_cont.30603	# 125
fle_else.30604:
	mul		x15, x30, x8	# 1104
	addi	x15, x15, 60736	# 1104
	flw		f8, 0(x15)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.30605	# 124
	fsub	f8, f0, f8	# 124
fle_cont.30605:
	lw		x15, 16(x9)	# 448
	mul		x16, x30, x8	# 453
	add		x15, x15, x16	# 453
	flw		f9, 0(x15)	# 453
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.30607	# 125
	addi	x15, x0, 0	# 1106
	jal		x0, fle_cont.30606	# 125
fle_else.30607:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.30609	# 120
	addi	x15, x0, 0	# 1105
	jal		x0, feq_cont.30608	# 120
feq_else.30609:
	addi	x15, x0, 1	# 1105
feq_cont.30608:
fle_cont.30606:
fle_cont.30603:
	beq		x15, x11, beq.30611	# 1102
	mul		x7, x30, x11	# 1109
	addi	x7, x7, 60540	# 1109
	fsw		f5, 0(x7)	# 1109
	addi	x7, x0, 1	# 1109
	jal		x0, beq_cont.30610	# 1102
beq.30611:
	mul		x15, x30, x8	# 1110
	add		x15, x14, x15	# 1110
	flw		f5, 0(x15)	# 1110
	fsub	f5, f5, f3	# 1110
	mul		x10, x30, x10	# 1110
	add		x10, x14, x10	# 1110
	flw		f6, 0(x10)	# 1110
	fmul	f5, f5, f6	# 1110
	mul		x10, x30, x11	# 1112
	addi	x10, x10, 60736	# 1112
	flw		f8, 0(x10)	# 1112
	fmul	f9, f5, f8	# 1112
	fadd	f9, f9, f2	# 1112
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.30612	# 124
	fsub	f9, f0, f9	# 124
fle_cont.30612:
	lw		x10, 16(x9)	# 428
	mul		x15, x30, x11	# 433
	add		x10, x10, x15	# 433
	flw		f10, 0(x10)	# 433
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.30614	# 125
	addi	x8, x0, 0	# 1116
	jal		x0, fle_cont.30613	# 125
fle_else.30614:
	mul		x10, x30, x8	# 1113
	addi	x10, x10, 60736	# 1113
	flw		f9, 0(x10)	# 1113
	fmul	f9, f5, f9	# 1113
	fadd	f9, f9, f4	# 1113
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.30615	# 124
	fsub	f9, f0, f9	# 124
fle_cont.30615:
	lw		x10, 16(x9)	# 448
	mul		x8, x30, x8	# 453
	add		x8, x10, x8	# 453
	flw		f10, 0(x8)	# 453
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.30617	# 125
	addi	x8, x0, 0	# 1115
	jal		x0, fle_cont.30616	# 125
fle_else.30617:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.30619	# 120
	addi	x8, x0, 0	# 1114
	jal		x0, feq_cont.30618	# 120
feq_else.30619:
	addi	x8, x0, 1	# 1114
feq_cont.30618:
fle_cont.30616:
fle_cont.30613:
	beq		x8, x11, beq.30621	# 1111
	mul		x7, x30, x11	# 1118
	addi	x7, x7, 60540	# 1118
	fsw		f5, 0(x7)	# 1118
	addi	x7, x0, 2	# 1118
	jal		x0, beq_cont.30620	# 1111
beq.30621:
	addi	x8, x0, 4	# 1119
	mul		x8, x30, x8	# 1119
	add		x8, x14, x8	# 1119
	flw		f5, 0(x8)	# 1119
	fsub	f4, f5, f4	# 1119
	mul		x7, x30, x7	# 1119
	add		x7, x14, x7	# 1119
	flw		f5, 0(x7)	# 1119
	fmul	f4, f4, f5	# 1119
	fmul	f6, f4, f8	# 1121
	fadd	f2, f6, f2	# 1121
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.30622	# 124
	fsub	f2, f0, f2	# 124
fle_cont.30622:
	lw		x7, 16(x9)	# 428
	mul		x8, x30, x11	# 433
	add		x7, x7, x8	# 433
	flw		f6, 0(x7)	# 433
	fle		x31, f6, f2	# 125
	beq		x31, x0, fle_else.30624	# 125
	addi	x7, x0, 0	# 1125
	jal		x0, fle_cont.30623	# 125
fle_else.30624:
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.30625	# 124
	fsub	f2, f0, f2	# 124
fle_cont.30625:
	lw		x7, 16(x9)	# 438
	mul		x8, x30, x12	# 443
	add		x7, x7, x8	# 443
	flw		f3, 0(x7)	# 443
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.30627	# 125
	addi	x7, x0, 0	# 1124
	jal		x0, fle_cont.30626	# 125
fle_else.30627:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30629	# 120
	addi	x7, x0, 0	# 1123
	jal		x0, feq_cont.30628	# 120
feq_else.30629:
	addi	x7, x0, 1	# 1123
feq_cont.30628:
fle_cont.30626:
fle_cont.30623:
	beq		x7, x11, beq.30631	# 1120
	mul		x7, x30, x11	# 1127
	addi	x7, x7, 60540	# 1127
	fsw		f4, 0(x7)	# 1127
	addi	x7, x0, 3	# 1127
	jal		x0, beq_cont.30630	# 1120
beq.30631:
	addi	x7, x0, 0	# 1129
beq_cont.30630:
beq_cont.30620:
beq_cont.30610:
beq_cont.30586:
	beq		x7, x11, beq.30633	# 1478
	mul		x7, x30, x11	# 1479
	addi	x7, x7, 60540	# 1479
	flw		f1, 0(x7)	# 1479
	fadd	f2, f0, f21	# 1479
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30635	# 125
	addi	x4, x0, 0	# 1483
	jal		x0, fle_cont.30634	# 125
fle_else.30635:
	addi	x5, x13, 0
	addi	x4, x12, 0
	addi	x29, x6, 0
	sw		x1, -28(x2)	# 1480
	addi	x2, x2, -32	# 1480
	lw		x31, 0(x29)	# 1480
	jalr	x1, x31, 0	# 1480
	addi	x2, x2, 32	# 1480
	lw		x1, -28(x2)	# 1480
	lw		x5, -24(x2)	# 1480
	beq		x4, x5, beq.30637	# 1480
	addi	x4, x0, 1	# 1481
	jal		x0, beq_cont.30636	# 1480
beq.30637:
	addi	x4, x0, 0	# 1482
beq_cont.30636:
fle_cont.30634:
	jal		x0, beq_cont.30632	# 1478
beq.30633:
	addi	x4, x0, 0	# 1484
beq_cont.30632:
	jal		x0, beq_cont.30584	# 1472
beq.30585:
	addi	x4, x0, 1	# 1473
beq_cont.30584:
	lw		x5, -24(x2)	# 1471
	beq		x4, x5, beq.30638	# 1471
	lw		x4, -16(x2)	# 1486
	lw		x6, 0(x2)	# 1486
	lw		x29, -4(x2)	# 1486
	addi	x5, x6, 0
	sw		x1, -28(x2)	# 1486
	addi	x2, x2, -32	# 1486
	lw		x31, 0(x29)	# 1486
	jalr	x1, x31, 0	# 1486
	addi	x2, x2, 32	# 1486
	lw		x1, -28(x2)	# 1486
	lw		x5, -24(x2)	# 1486
	beq		x4, x5, beq.30639	# 1486
	addi	x4, x0, 1	# 1487
	jalr	x0, x1, 0	# 1487
beq.30639:
	lw		x4, -16(x2)	# 1489
	lw		x5, -20(x2)	# 1489
	add		x4, x5, x4	# 1489
	lw		x5, -8(x2)	# 1489
	lw		x29, -12(x2)	# 1489
	lw		x31, 0(x29)	# 1489
	jalr	x0, x31, 0	# 1489
beq.30638:
	lw		x4, -16(x2)	# 1491
	lw		x5, -20(x2)	# 1491
	add		x4, x5, x4	# 1491
	lw		x5, -8(x2)	# 1491
	lw		x29, -12(x2)	# 1491
	lw		x31, 0(x29)	# 1491
	jalr	x0, x31, 0	# 1491
beq.30583:
	addi	x4, x0, 0	# 1469
	jalr	x0, x1, 0	# 1469
solve_each_element.2861.17298:
	lw		x7, 28(x29)	# 1502
	lw		x8, 24(x29)	# 1502
	lw		x9, 20(x29)	# 1502
	lw		x10, 16(x29)	# 1502
	lw		x11, 12(x29)	# 1502
	lw		x12, 8(x29)	# 1502
	flw		f1, 4(x29)	# 1502
	mul		x13, x30, x4	# 1502
	add		x13, x5, x13	# 1502
	lw		x13, 0(x13)	# 1502
	beq		x13, x9, beq.30640	# 1503
	mul		x9, x30, x13	# 1069
	addi	x9, x9, 60048	# 1069
	lw		x9, 0(x9)	# 1069
	mul		x14, x30, x11	# 1071
	addi	x14, x14, 60636	# 1071
	flw		f2, 0(x14)	# 1071
	lw		x14, 20(x9)	# 468
	mul		x15, x30, x11	# 473
	add		x14, x14, x15	# 473
	flw		f3, 0(x14)	# 473
	fsub	f2, f2, f3	# 1071
	mul		x14, x30, x12	# 1072
	addi	x14, x14, 60636	# 1072
	flw		f3, 0(x14)	# 1072
	lw		x14, 20(x9)	# 478
	mul		x15, x30, x12	# 483
	add		x14, x14, x15	# 483
	flw		f4, 0(x14)	# 483
	fsub	f3, f3, f4	# 1072
	mul		x14, x30, x8	# 1073
	addi	x14, x14, 60636	# 1073
	flw		f4, 0(x14)	# 1073
	lw		x14, 20(x9)	# 488
	mul		x15, x30, x8	# 493
	add		x14, x14, x15	# 493
	flw		f5, 0(x14)	# 493
	fsub	f4, f4, f5	# 1073
	lw		x14, 4(x9)	# 390
	beq		x14, x12, beq.30642	# 1076
	beq		x14, x8, beq.30644	# 1077
	mul		x14, x30, x11	# 1043
	add		x14, x6, x14	# 1043
	flw		f5, 0(x14)	# 1043
	mul		x14, x30, x12	# 1043
	add		x14, x6, x14	# 1043
	flw		f6, 0(x14)	# 1043
	mul		x14, x30, x8	# 1043
	add		x14, x6, x14	# 1043
	flw		f7, 0(x14)	# 1043
	fmul	f8, f5, f5	# 127
	lw		x14, 16(x9)	# 428
	mul		x15, x30, x11	# 433
	add		x14, x14, x15	# 433
	flw		f9, 0(x14)	# 433
	fmul	f8, f8, f9	# 1004
	fmul	f10, f6, f6	# 127
	lw		x14, 16(x9)	# 438
	mul		x15, x30, x12	# 443
	add		x14, x14, x15	# 443
	flw		f11, 0(x14)	# 443
	fmul	f10, f10, f11	# 1004
	fadd	f8, f8, f10	# 1004
	fmul	f10, f7, f7	# 127
	lw		x14, 16(x9)	# 448
	mul		x15, x30, x8	# 453
	add		x14, x14, x15	# 453
	flw		f12, 0(x14)	# 453
	fmul	f10, f10, f12	# 1004
	fadd	f8, f8, f10	# 1004
	lw		x14, 12(x9)	# 419
	beq		x14, x11, beq_cont.30645	# 1006
	fmul	f10, f6, f7	# 1010
	lw		x15, 36(x9)	# 548
	mul		x16, x30, x11	# 553
	add		x15, x15, x16	# 553
	flw		f13, 0(x15)	# 553
	fmul	f10, f10, f13	# 1010
	fadd	f8, f8, f10	# 1009
	fmul	f10, f7, f5	# 1011
	lw		x15, 36(x9)	# 558
	mul		x16, x30, x12	# 563
	add		x15, x15, x16	# 563
	flw		f13, 0(x15)	# 563
	fmul	f10, f10, f13	# 1011
	fadd	f8, f8, f10	# 1009
	fmul	f10, f5, f6	# 1012
	lw		x15, 36(x9)	# 568
	mul		x16, x30, x8	# 573
	add		x15, x15, x16	# 573
	flw		f13, 0(x15)	# 573
	fmul	f10, f10, f13	# 1012
	fadd	f8, f8, f10	# 1009
beq_cont.30645:
	feq		x31, f8, f1	# 120
	beq		x31, x0, feq_else.30647	# 120
	addi	x9, x0, 0	# 1046
	jal		x0, feq_cont.30646	# 120
feq_else.30647:
	fmul	f10, f5, f2	# 1018
	fmul	f10, f10, f9	# 1018
	fmul	f13, f6, f3	# 1019
	fmul	f13, f13, f11	# 1019
	fadd	f10, f10, f13	# 1018
	fmul	f13, f7, f4	# 1020
	fmul	f13, f13, f12	# 1020
	fadd	f10, f10, f13	# 1018
	beq		x14, x11, beq.30649	# 1022
	fmul	f13, f7, f3	# 1026
	fmul	f14, f6, f4	# 1026
	fadd	f13, f13, f14	# 1026
	lw		x15, 36(x9)	# 548
	mul		x16, x30, x11	# 553
	add		x15, x15, x16	# 553
	flw		f14, 0(x15)	# 553
	fmul	f13, f13, f14	# 1026
	fmul	f14, f5, f4	# 1027
	fmul	f7, f7, f2	# 1027
	fadd	f7, f14, f7	# 1027
	lw		x15, 36(x9)	# 558
	mul		x16, x30, x12	# 563
	add		x15, x15, x16	# 563
	flw		f14, 0(x15)	# 563
	fmul	f7, f7, f14	# 1027
	fadd	f7, f13, f7	# 1026
	fmul	f5, f5, f3	# 1028
	fmul	f6, f6, f2	# 1028
	fadd	f5, f5, f6	# 1028
	lw		x15, 36(x9)	# 568
	mul		x16, x30, x8	# 573
	add		x15, x15, x16	# 573
	flw		f6, 0(x15)	# 573
	fmul	f5, f5, f6	# 1028
	fadd	f5, f7, f5	# 1026
	fadd	f6, f0, f26	# 126
	fmul	f5, f5, f6	# 126
	fadd	f5, f10, f5	# 1025
	jal		x0, beq_cont.30648	# 1022
beq.30649:
	fadd	f5, f0, f10	# 1023
beq_cont.30648:
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f9	# 1004
	fmul	f7, f3, f3	# 127
	fmul	f7, f7, f11	# 1004
	fadd	f6, f6, f7	# 1004
	fmul	f7, f4, f4	# 127
	fmul	f7, f7, f12	# 1004
	fadd	f6, f6, f7	# 1004
	beq		x14, x11, beq.30651	# 1006
	fmul	f7, f3, f4	# 1010
	lw		x14, 36(x9)	# 548
	mul		x15, x30, x11	# 553
	add		x14, x14, x15	# 553
	flw		f9, 0(x14)	# 553
	fmul	f7, f7, f9	# 1010
	fadd	f6, f6, f7	# 1009
	fmul	f4, f4, f2	# 1011
	lw		x14, 36(x9)	# 558
	mul		x15, x30, x12	# 563
	add		x14, x14, x15	# 563
	flw		f7, 0(x14)	# 563
	fmul	f4, f4, f7	# 1011
	fadd	f4, f6, f4	# 1009
	fmul	f2, f2, f3	# 1012
	lw		x14, 36(x9)	# 568
	mul		x15, x30, x8	# 573
	add		x14, x14, x15	# 573
	flw		f3, 0(x14)	# 573
	fmul	f2, f2, f3	# 1012
	fadd	f2, f4, f2	# 1009
	jal		x0, beq_cont.30650	# 1006
beq.30651:
	fadd	f2, f0, f6	# 1007
beq_cont.30650:
	lw		x14, 4(x9)	# 390
	beq		x14, x10, beq.30653	# 1053
	jal		x0, beq_cont.30652	# 1053
beq.30653:
	fadd	f3, f0, f16	# 1053
	fsub	f2, f2, f3	# 1053
beq_cont.30652:
	fmul	f3, f5, f5	# 127
	fmul	f2, f8, f2	# 1055
	fsub	f2, f3, f2	# 1055
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.30655	# 121
	addi	x9, x0, 0	# 1063
	jal		x0, fle_cont.30654	# 121
fle_else.30655:
	fsqrt	f2, f2	# 1058
	lw		x9, 24(x9)	# 410
	beq		x9, x11, beq.30657	# 1059
	jal		x0, beq_cont.30656	# 1059
beq.30657:
	fsub	f2, f0, f2	# 123
beq_cont.30656:
	fsub	f2, f2, f5	# 1060
	fdiv	f2, f2, f8	# 1060
	mul		x9, x30, x11	# 1060
	addi	x9, x9, 60540	# 1060
	fsw		f2, 0(x9)	# 1060
	addi	x9, x0, 1	# 1060
fle_cont.30654:
feq_cont.30646:
	jal		x0, beq_cont.30643	# 1077
beq.30644:
	lw		x9, 16(x9)	# 458
	mul		x10, x30, x11	# 329
	add		x10, x6, x10	# 329
	flw		f5, 0(x10)	# 329
	mul		x10, x30, x11	# 329
	add		x10, x9, x10	# 329
	flw		f6, 0(x10)	# 329
	fmul	f5, f5, f6	# 329
	mul		x10, x30, x12	# 329
	add		x10, x6, x10	# 329
	flw		f7, 0(x10)	# 329
	mul		x10, x30, x12	# 329
	add		x10, x9, x10	# 329
	flw		f8, 0(x10)	# 329
	fmul	f7, f7, f8	# 329
	fadd	f5, f5, f7	# 329
	mul		x10, x30, x8	# 329
	add		x10, x6, x10	# 329
	flw		f7, 0(x10)	# 329
	mul		x10, x30, x8	# 329
	add		x9, x9, x10	# 329
	flw		f9, 0(x9)	# 329
	fmul	f7, f7, f9	# 329
	fadd	f5, f5, f7	# 329
	fle		x31, f5, f1	# 121
	beq		x31, x0, fle_else.30659	# 121
	addi	x9, x0, 0	# 996
	jal		x0, fle_cont.30658	# 121
fle_else.30659:
	fmul	f2, f6, f2	# 334
	fmul	f3, f8, f3	# 334
	fadd	f2, f2, f3	# 334
	fmul	f3, f9, f4	# 334
	fadd	f2, f2, f3	# 334
	fsub	f2, f0, f2	# 123
	fdiv	f2, f2, f5	# 994
	mul		x9, x30, x11	# 994
	addi	x9, x9, 60540	# 994
	fsw		f2, 0(x9)	# 994
	addi	x9, x0, 1	# 995
fle_cont.30658:
beq_cont.30643:
	jal		x0, beq_cont.30641	# 1076
beq.30642:
	mul		x10, x30, x11	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30661	# 120
	addi	x10, x0, 0	# 965
	jal		x0, feq_cont.30660	# 120
feq_else.30661:
	lw		x10, 16(x9)	# 458
	lw		x14, 24(x9)	# 410
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.30663	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.30662	# 122
fle_else.30663:
	addi	x15, x0, 1	# 122
fle_cont.30662:
	beq		x14, x11, beq.30665	# 241
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.30667	# 122
	addi	x14, x0, 1	# 241
	jal		x0, fle_cont.30666	# 122
fle_else.30667:
	addi	x14, x0, 0	# 241
fle_cont.30666:
	jal		x0, beq_cont.30664	# 241
beq.30665:
	addi	x14, x15, 0	# 241
beq_cont.30664:
	mul		x15, x30, x11	# 967
	add		x15, x10, x15	# 967
	flw		f6, 0(x15)	# 967
	beq		x14, x11, beq.30669	# 256
	jal		x0, beq_cont.30668	# 256
beq.30669:
	fsub	f6, f0, f6	# 123
beq_cont.30668:
	fsub	f6, f6, f2	# 969
	fdiv	f5, f6, f5	# 969
	mul		x14, x30, x12	# 970
	add		x14, x6, x14	# 970
	flw		f6, 0(x14)	# 970
	fmul	f6, f5, f6	# 970
	fadd	f6, f6, f3	# 970
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.30670	# 124
	fsub	f6, f0, f6	# 124
fle_cont.30670:
	mul		x14, x30, x12	# 970
	add		x14, x10, x14	# 970
	flw		f7, 0(x14)	# 970
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.30672	# 125
	addi	x10, x0, 0	# 974
	jal		x0, fle_cont.30671	# 125
fle_else.30672:
	mul		x14, x30, x8	# 971
	add		x14, x6, x14	# 971
	flw		f6, 0(x14)	# 971
	fmul	f6, f5, f6	# 971
	fadd	f6, f6, f4	# 971
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.30673	# 124
	fsub	f6, f0, f6	# 124
fle_cont.30673:
	mul		x14, x30, x8	# 971
	add		x10, x10, x14	# 971
	flw		f7, 0(x10)	# 971
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.30675	# 125
	addi	x10, x0, 0	# 973
	jal		x0, fle_cont.30674	# 125
fle_else.30675:
	mul		x10, x30, x11	# 972
	addi	x10, x10, 60540	# 972
	fsw		f5, 0(x10)	# 972
	addi	x10, x0, 1	# 972
fle_cont.30674:
fle_cont.30671:
feq_cont.30660:
	beq		x10, x11, beq.30677	# 980
	addi	x9, x0, 1	# 980
	jal		x0, beq_cont.30676	# 980
beq.30677:
	mul		x10, x30, x12	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30679	# 120
	addi	x10, x0, 0	# 965
	jal		x0, feq_cont.30678	# 120
feq_else.30679:
	lw		x10, 16(x9)	# 458
	lw		x14, 24(x9)	# 410
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.30681	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.30680	# 122
fle_else.30681:
	addi	x15, x0, 1	# 122
fle_cont.30680:
	beq		x14, x11, beq.30683	# 241
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.30685	# 122
	addi	x14, x0, 1	# 241
	jal		x0, fle_cont.30684	# 122
fle_else.30685:
	addi	x14, x0, 0	# 241
fle_cont.30684:
	jal		x0, beq_cont.30682	# 241
beq.30683:
	addi	x14, x15, 0	# 241
beq_cont.30682:
	mul		x15, x30, x12	# 967
	add		x15, x10, x15	# 967
	flw		f6, 0(x15)	# 967
	beq		x14, x11, beq.30687	# 256
	jal		x0, beq_cont.30686	# 256
beq.30687:
	fsub	f6, f0, f6	# 123
beq_cont.30686:
	fsub	f6, f6, f3	# 969
	fdiv	f5, f6, f5	# 969
	mul		x14, x30, x8	# 970
	add		x14, x6, x14	# 970
	flw		f6, 0(x14)	# 970
	fmul	f6, f5, f6	# 970
	fadd	f6, f6, f4	# 970
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.30688	# 124
	fsub	f6, f0, f6	# 124
fle_cont.30688:
	mul		x14, x30, x8	# 970
	add		x14, x10, x14	# 970
	flw		f7, 0(x14)	# 970
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.30690	# 125
	addi	x10, x0, 0	# 974
	jal		x0, fle_cont.30689	# 125
fle_else.30690:
	mul		x14, x30, x11	# 971
	add		x14, x6, x14	# 971
	flw		f6, 0(x14)	# 971
	fmul	f6, f5, f6	# 971
	fadd	f6, f6, f2	# 971
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.30691	# 124
	fsub	f6, f0, f6	# 124
fle_cont.30691:
	mul		x14, x30, x11	# 971
	add		x10, x10, x14	# 971
	flw		f7, 0(x10)	# 971
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.30693	# 125
	addi	x10, x0, 0	# 973
	jal		x0, fle_cont.30692	# 125
fle_else.30693:
	mul		x10, x30, x11	# 972
	addi	x10, x10, 60540	# 972
	fsw		f5, 0(x10)	# 972
	addi	x10, x0, 1	# 972
fle_cont.30692:
fle_cont.30689:
feq_cont.30678:
	beq		x10, x11, beq.30695	# 981
	addi	x9, x0, 2	# 981
	jal		x0, beq_cont.30694	# 981
beq.30695:
	mul		x10, x30, x8	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30697	# 120
	addi	x9, x0, 0	# 965
	jal		x0, feq_cont.30696	# 120
feq_else.30697:
	lw		x10, 16(x9)	# 458
	lw		x9, 24(x9)	# 410
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.30699	# 122
	addi	x14, x0, 0	# 122
	jal		x0, fle_cont.30698	# 122
fle_else.30699:
	addi	x14, x0, 1	# 122
fle_cont.30698:
	beq		x9, x11, beq.30701	# 241
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.30703	# 122
	addi	x9, x0, 1	# 241
	jal		x0, fle_cont.30702	# 122
fle_else.30703:
	addi	x9, x0, 0	# 241
fle_cont.30702:
	jal		x0, beq_cont.30700	# 241
beq.30701:
	addi	x9, x14, 0	# 241
beq_cont.30700:
	mul		x14, x30, x8	# 967
	add		x14, x10, x14	# 967
	flw		f6, 0(x14)	# 967
	beq		x9, x11, beq.30705	# 256
	jal		x0, beq_cont.30704	# 256
beq.30705:
	fsub	f6, f0, f6	# 123
beq_cont.30704:
	fsub	f4, f6, f4	# 969
	fdiv	f4, f4, f5	# 969
	mul		x9, x30, x11	# 970
	add		x9, x6, x9	# 970
	flw		f5, 0(x9)	# 970
	fmul	f5, f4, f5	# 970
	fadd	f2, f5, f2	# 970
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.30706	# 124
	fsub	f2, f0, f2	# 124
fle_cont.30706:
	mul		x9, x30, x11	# 970
	add		x9, x10, x9	# 970
	flw		f5, 0(x9)	# 970
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.30708	# 125
	addi	x9, x0, 0	# 974
	jal		x0, fle_cont.30707	# 125
fle_else.30708:
	mul		x9, x30, x12	# 971
	add		x9, x6, x9	# 971
	flw		f2, 0(x9)	# 971
	fmul	f2, f4, f2	# 971
	fadd	f2, f2, f3	# 971
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.30709	# 124
	fsub	f2, f0, f2	# 124
fle_cont.30709:
	mul		x9, x30, x12	# 971
	add		x9, x10, x9	# 971
	flw		f3, 0(x9)	# 971
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.30711	# 125
	addi	x9, x0, 0	# 973
	jal		x0, fle_cont.30710	# 125
fle_else.30711:
	mul		x9, x30, x11	# 972
	addi	x9, x9, 60540	# 972
	fsw		f4, 0(x9)	# 972
	addi	x9, x0, 1	# 972
fle_cont.30710:
fle_cont.30707:
feq_cont.30696:
	beq		x9, x11, beq.30713	# 982
	addi	x9, x0, 3	# 982
	jal		x0, beq_cont.30712	# 982
beq.30713:
	addi	x9, x0, 0	# 983
beq_cont.30712:
beq_cont.30694:
beq_cont.30676:
beq_cont.30641:
	beq		x9, x11, beq.30714	# 1506
	mul		x10, x30, x11	# 1510
	addi	x10, x10, 60540	# 1510
	flw		f2, 0(x10)	# 1510
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x29, -8(x2)	# 125
	sw		x12, -12(x2)	# 125
	sw		x4, -16(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30716	# 125
	jal		x0, fle_cont.30715	# 125
fle_else.30716:
	mul		x10, x30, x11	# 1513
	addi	x10, x10, 60548	# 1513
	flw		f1, 0(x10)	# 1513
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.30718	# 125
	jal		x0, fle_cont.30717	# 125
fle_else.30718:
	fadd	f1, f0, f19	# 1515
	fadd	f1, f2, f1	# 1515
	mul		x10, x30, x11	# 1516
	add		x10, x6, x10	# 1516
	flw		f2, 0(x10)	# 1516
	fmul	f2, f2, f1	# 1516
	mul		x10, x30, x11	# 1516
	addi	x10, x10, 60636	# 1516
	flw		f3, 0(x10)	# 1516
	fadd	f2, f2, f3	# 1516
	mul		x10, x30, x12	# 1517
	add		x10, x6, x10	# 1517
	flw		f3, 0(x10)	# 1517
	fmul	f3, f3, f1	# 1517
	mul		x10, x30, x12	# 1517
	addi	x10, x10, 60636	# 1517
	flw		f4, 0(x10)	# 1517
	fadd	f3, f3, f4	# 1517
	mul		x10, x30, x8	# 1518
	add		x10, x6, x10	# 1518
	flw		f4, 0(x10)	# 1518
	fmul	f4, f4, f1	# 1518
	mul		x10, x30, x8	# 1518
	addi	x10, x10, 60636	# 1518
	flw		f5, 0(x10)	# 1518
	fadd	f4, f4, f5	# 1518
	sw		x9, -20(x2)	# 1519
	sw		x13, -24(x2)	# 1519
	fsw		f4, -28(x2)	# 1519
	sw		x8, -32(x2)	# 1519
	fsw		f3, -36(x2)	# 1519
	fsw		f2, -40(x2)	# 1519
	fsw		f1, -44(x2)	# 1519
	sw		x11, -48(x2)	# 1519
	addi	x4, x11, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -52(x2)	# 1519
	addi	x2, x2, -56	# 1519
	lw		x31, 0(x29)	# 1519
	jalr	x1, x31, 0	# 1519
	addi	x2, x2, 56	# 1519
	lw		x1, -52(x2)	# 1519
	lw		x5, -48(x2)	# 1519
	beq		x4, x5, beq_cont.30719	# 1519
	mul		x4, x30, x5	# 1521
	addi	x4, x4, 60548	# 1521
	flw		f1, -44(x2)	# 1521
	fsw		f1, 0(x4)	# 1521
	mul		x4, x30, x5	# 277
	addi	x4, x4, 60552	# 277
	flw		f1, -40(x2)	# 277
	fsw		f1, 0(x4)	# 277
	lw		x4, -12(x2)	# 278
	mul		x6, x30, x4	# 278
	addi	x6, x6, 60552	# 278
	flw		f1, -36(x2)	# 278
	fsw		f1, 0(x6)	# 278
	lw		x6, -32(x2)	# 279
	mul		x6, x30, x6	# 279
	addi	x6, x6, 60552	# 279
	flw		f1, -28(x2)	# 279
	fsw		f1, 0(x6)	# 279
	mul		x6, x30, x5	# 1523
	addi	x6, x6, 60564	# 1523
	lw		x7, -24(x2)	# 1523
	sw		x7, 0(x6)	# 1523
	mul		x5, x30, x5	# 1524
	addi	x5, x5, 60544	# 1524
	lw		x6, -20(x2)	# 1524
	sw		x6, 0(x5)	# 1524
beq_cont.30719:
fle_cont.30717:
fle_cont.30715:
	lw		x4, -12(x2)	# 1530
	lw		x5, -16(x2)	# 1530
	add		x4, x5, x4	# 1530
	lw		x5, -4(x2)	# 1530
	lw		x6, 0(x2)	# 1530
	lw		x29, -8(x2)	# 1530
	lw		x31, 0(x29)	# 1530
	jalr	x0, x31, 0	# 1530
beq.30714:
	mul		x7, x30, x13	# 1534
	addi	x7, x7, 60048	# 1534
	lw		x7, 0(x7)	# 1534
	lw		x7, 24(x7)	# 410
	beq		x7, x11, beq.30720	# 1534
	add		x4, x4, x12	# 1535
	lw		x31, 0(x29)	# 1535
	jalr	x0, x31, 0	# 1535
beq.30720:
	jalr	x0, x1, 0	# 1536
beq.30640:
	jalr	x0, x1, 0	# 1503
solve_one_or_network.2865.17302:
	lw		x7, 16(x29)	# 1543
	lw		x8, 12(x29)	# 1543
	lw		x9, 8(x29)	# 1543
	lw		x10, 4(x29)	# 1543
	mul		x11, x30, x4	# 1543
	add		x11, x5, x11	# 1543
	lw		x11, 0(x11)	# 1543
	beq		x11, x8, beq.30723	# 1544
	mul		x8, x30, x11	# 1545
	addi	x8, x8, 60332	# 1545
	lw		x8, 0(x8)	# 1545
	sw		x6, 0(x2)	# 1546
	sw		x5, -4(x2)	# 1546
	sw		x29, -8(x2)	# 1546
	sw		x10, -12(x2)	# 1546
	sw		x4, -16(x2)	# 1546
	addi	x5, x8, 0
	addi	x4, x9, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1546
	addi	x2, x2, -24	# 1546
	lw		x31, 0(x29)	# 1546
	jalr	x1, x31, 0	# 1546
	addi	x2, x2, 24	# 1546
	lw		x1, -20(x2)	# 1546
	lw		x4, -12(x2)	# 1547
	lw		x5, -16(x2)	# 1547
	add		x4, x5, x4	# 1547
	lw		x5, -4(x2)	# 1547
	lw		x6, 0(x2)	# 1547
	lw		x29, -8(x2)	# 1547
	lw		x31, 0(x29)	# 1547
	jalr	x0, x31, 0	# 1547
beq.30723:
	jalr	x0, x1, 0	# 1548
trace_or_matrix.2869.17306:
	lw		x7, 28(x29)	# 1553
	lw		x8, 24(x29)	# 1553
	lw		x9, 20(x29)	# 1553
	lw		x10, 16(x29)	# 1553
	lw		x11, 12(x29)	# 1553
	lw		x12, 8(x29)	# 1553
	flw		f1, 4(x29)	# 1553
	mul		x13, x30, x4	# 1553
	add		x13, x5, x13	# 1553
	lw		x13, 0(x13)	# 1553
	mul		x14, x30, x11	# 1554
	add		x14, x13, x14	# 1554
	lw		x14, 0(x14)	# 1554
	beq		x14, x9, beq.30725	# 1555
	addi	x9, x0, 99	# 1558
	sw		x6, 0(x2)	# 1558
	sw		x5, -4(x2)	# 1558
	sw		x29, -8(x2)	# 1558
	sw		x12, -12(x2)	# 1558
	sw		x4, -16(x2)	# 1558
	beq		x14, x9, beq.30727	# 1558
	mul		x9, x30, x14	# 1069
	addi	x9, x9, 60048	# 1069
	lw		x9, 0(x9)	# 1069
	mul		x14, x30, x11	# 1071
	addi	x14, x14, 60636	# 1071
	flw		f2, 0(x14)	# 1071
	lw		x14, 20(x9)	# 468
	mul		x15, x30, x11	# 473
	add		x14, x14, x15	# 473
	flw		f3, 0(x14)	# 473
	fsub	f2, f2, f3	# 1071
	mul		x14, x30, x12	# 1072
	addi	x14, x14, 60636	# 1072
	flw		f3, 0(x14)	# 1072
	lw		x14, 20(x9)	# 478
	mul		x15, x30, x12	# 483
	add		x14, x14, x15	# 483
	flw		f4, 0(x14)	# 483
	fsub	f3, f3, f4	# 1072
	mul		x14, x30, x8	# 1073
	addi	x14, x14, 60636	# 1073
	flw		f4, 0(x14)	# 1073
	lw		x14, 20(x9)	# 488
	mul		x15, x30, x8	# 493
	add		x14, x14, x15	# 493
	flw		f5, 0(x14)	# 493
	fsub	f4, f4, f5	# 1073
	lw		x14, 4(x9)	# 390
	beq		x14, x12, beq.30729	# 1076
	beq		x14, x8, beq.30731	# 1077
	mul		x14, x30, x11	# 1043
	add		x14, x6, x14	# 1043
	flw		f5, 0(x14)	# 1043
	mul		x14, x30, x12	# 1043
	add		x14, x6, x14	# 1043
	flw		f6, 0(x14)	# 1043
	mul		x14, x30, x8	# 1043
	add		x14, x6, x14	# 1043
	flw		f7, 0(x14)	# 1043
	fmul	f8, f5, f5	# 127
	lw		x14, 16(x9)	# 428
	mul		x15, x30, x11	# 433
	add		x14, x14, x15	# 433
	flw		f9, 0(x14)	# 433
	fmul	f8, f8, f9	# 1004
	fmul	f10, f6, f6	# 127
	lw		x14, 16(x9)	# 438
	mul		x15, x30, x12	# 443
	add		x14, x14, x15	# 443
	flw		f11, 0(x14)	# 443
	fmul	f10, f10, f11	# 1004
	fadd	f8, f8, f10	# 1004
	fmul	f10, f7, f7	# 127
	lw		x14, 16(x9)	# 448
	mul		x15, x30, x8	# 453
	add		x14, x14, x15	# 453
	flw		f12, 0(x14)	# 453
	fmul	f10, f10, f12	# 1004
	fadd	f8, f8, f10	# 1004
	lw		x14, 12(x9)	# 419
	beq		x14, x11, beq_cont.30732	# 1006
	fmul	f10, f6, f7	# 1010
	lw		x15, 36(x9)	# 548
	mul		x16, x30, x11	# 553
	add		x15, x15, x16	# 553
	flw		f13, 0(x15)	# 553
	fmul	f10, f10, f13	# 1010
	fadd	f8, f8, f10	# 1009
	fmul	f10, f7, f5	# 1011
	lw		x15, 36(x9)	# 558
	mul		x16, x30, x12	# 563
	add		x15, x15, x16	# 563
	flw		f13, 0(x15)	# 563
	fmul	f10, f10, f13	# 1011
	fadd	f8, f8, f10	# 1009
	fmul	f10, f5, f6	# 1012
	lw		x15, 36(x9)	# 568
	mul		x16, x30, x8	# 573
	add		x15, x15, x16	# 573
	flw		f13, 0(x15)	# 573
	fmul	f10, f10, f13	# 1012
	fadd	f8, f8, f10	# 1009
beq_cont.30732:
	feq		x31, f8, f1	# 120
	beq		x31, x0, feq_else.30734	# 120
	addi	x8, x0, 0	# 1046
	jal		x0, feq_cont.30733	# 120
feq_else.30734:
	fmul	f10, f5, f2	# 1018
	fmul	f10, f10, f9	# 1018
	fmul	f13, f6, f3	# 1019
	fmul	f13, f13, f11	# 1019
	fadd	f10, f10, f13	# 1018
	fmul	f13, f7, f4	# 1020
	fmul	f13, f13, f12	# 1020
	fadd	f10, f10, f13	# 1018
	beq		x14, x11, beq.30736	# 1022
	fmul	f13, f7, f3	# 1026
	fmul	f14, f6, f4	# 1026
	fadd	f13, f13, f14	# 1026
	lw		x15, 36(x9)	# 548
	mul		x16, x30, x11	# 553
	add		x15, x15, x16	# 553
	flw		f14, 0(x15)	# 553
	fmul	f13, f13, f14	# 1026
	fmul	f14, f5, f4	# 1027
	fmul	f7, f7, f2	# 1027
	fadd	f7, f14, f7	# 1027
	lw		x15, 36(x9)	# 558
	mul		x16, x30, x12	# 563
	add		x15, x15, x16	# 563
	flw		f14, 0(x15)	# 563
	fmul	f7, f7, f14	# 1027
	fadd	f7, f13, f7	# 1026
	fmul	f5, f5, f3	# 1028
	fmul	f6, f6, f2	# 1028
	fadd	f5, f5, f6	# 1028
	lw		x15, 36(x9)	# 568
	mul		x16, x30, x8	# 573
	add		x15, x15, x16	# 573
	flw		f6, 0(x15)	# 573
	fmul	f5, f5, f6	# 1028
	fadd	f5, f7, f5	# 1026
	fadd	f6, f0, f26	# 126
	fmul	f5, f5, f6	# 126
	fadd	f5, f10, f5	# 1025
	jal		x0, beq_cont.30735	# 1022
beq.30736:
	fadd	f5, f0, f10	# 1023
beq_cont.30735:
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f9	# 1004
	fmul	f7, f3, f3	# 127
	fmul	f7, f7, f11	# 1004
	fadd	f6, f6, f7	# 1004
	fmul	f7, f4, f4	# 127
	fmul	f7, f7, f12	# 1004
	fadd	f6, f6, f7	# 1004
	beq		x14, x11, beq.30738	# 1006
	fmul	f7, f3, f4	# 1010
	lw		x14, 36(x9)	# 548
	mul		x15, x30, x11	# 553
	add		x14, x14, x15	# 553
	flw		f9, 0(x14)	# 553
	fmul	f7, f7, f9	# 1010
	fadd	f6, f6, f7	# 1009
	fmul	f4, f4, f2	# 1011
	lw		x14, 36(x9)	# 558
	mul		x15, x30, x12	# 563
	add		x14, x14, x15	# 563
	flw		f7, 0(x14)	# 563
	fmul	f4, f4, f7	# 1011
	fadd	f4, f6, f4	# 1009
	fmul	f2, f2, f3	# 1012
	lw		x14, 36(x9)	# 568
	mul		x8, x30, x8	# 573
	add		x8, x14, x8	# 573
	flw		f3, 0(x8)	# 573
	fmul	f2, f2, f3	# 1012
	fadd	f2, f4, f2	# 1009
	jal		x0, beq_cont.30737	# 1006
beq.30738:
	fadd	f2, f0, f6	# 1007
beq_cont.30737:
	lw		x8, 4(x9)	# 390
	beq		x8, x10, beq.30740	# 1053
	jal		x0, beq_cont.30739	# 1053
beq.30740:
	fadd	f3, f0, f16	# 1053
	fsub	f2, f2, f3	# 1053
beq_cont.30739:
	fmul	f3, f5, f5	# 127
	fmul	f2, f8, f2	# 1055
	fsub	f2, f3, f2	# 1055
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.30742	# 121
	addi	x8, x0, 0	# 1063
	jal		x0, fle_cont.30741	# 121
fle_else.30742:
	fsqrt	f1, f2	# 1058
	lw		x8, 24(x9)	# 410
	beq		x8, x11, beq.30744	# 1059
	jal		x0, beq_cont.30743	# 1059
beq.30744:
	fsub	f1, f0, f1	# 123
beq_cont.30743:
	fsub	f1, f1, f5	# 1060
	fdiv	f1, f1, f8	# 1060
	mul		x8, x30, x11	# 1060
	addi	x8, x8, 60540	# 1060
	fsw		f1, 0(x8)	# 1060
	addi	x8, x0, 1	# 1060
fle_cont.30741:
feq_cont.30733:
	jal		x0, beq_cont.30730	# 1077
beq.30731:
	lw		x9, 16(x9)	# 458
	mul		x10, x30, x11	# 329
	add		x10, x6, x10	# 329
	flw		f5, 0(x10)	# 329
	mul		x10, x30, x11	# 329
	add		x10, x9, x10	# 329
	flw		f6, 0(x10)	# 329
	fmul	f5, f5, f6	# 329
	mul		x10, x30, x12	# 329
	add		x10, x6, x10	# 329
	flw		f7, 0(x10)	# 329
	mul		x10, x30, x12	# 329
	add		x10, x9, x10	# 329
	flw		f8, 0(x10)	# 329
	fmul	f7, f7, f8	# 329
	fadd	f5, f5, f7	# 329
	mul		x10, x30, x8	# 329
	add		x10, x6, x10	# 329
	flw		f7, 0(x10)	# 329
	mul		x8, x30, x8	# 329
	add		x8, x9, x8	# 329
	flw		f9, 0(x8)	# 329
	fmul	f7, f7, f9	# 329
	fadd	f5, f5, f7	# 329
	fle		x31, f5, f1	# 121
	beq		x31, x0, fle_else.30746	# 121
	addi	x8, x0, 0	# 996
	jal		x0, fle_cont.30745	# 121
fle_else.30746:
	fmul	f1, f6, f2	# 334
	fmul	f2, f8, f3	# 334
	fadd	f1, f1, f2	# 334
	fmul	f2, f9, f4	# 334
	fadd	f1, f1, f2	# 334
	fsub	f1, f0, f1	# 123
	fdiv	f1, f1, f5	# 994
	mul		x8, x30, x11	# 994
	addi	x8, x8, 60540	# 994
	fsw		f1, 0(x8)	# 994
	addi	x8, x0, 1	# 995
fle_cont.30745:
beq_cont.30730:
	jal		x0, beq_cont.30728	# 1076
beq.30729:
	mul		x10, x30, x11	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30748	# 120
	addi	x10, x0, 0	# 965
	jal		x0, feq_cont.30747	# 120
feq_else.30748:
	lw		x10, 16(x9)	# 458
	lw		x14, 24(x9)	# 410
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.30750	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.30749	# 122
fle_else.30750:
	addi	x15, x0, 1	# 122
fle_cont.30749:
	beq		x14, x11, beq.30752	# 241
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.30754	# 122
	addi	x14, x0, 1	# 241
	jal		x0, fle_cont.30753	# 122
fle_else.30754:
	addi	x14, x0, 0	# 241
fle_cont.30753:
	jal		x0, beq_cont.30751	# 241
beq.30752:
	addi	x14, x15, 0	# 241
beq_cont.30751:
	mul		x15, x30, x11	# 967
	add		x15, x10, x15	# 967
	flw		f6, 0(x15)	# 967
	beq		x14, x11, beq.30756	# 256
	jal		x0, beq_cont.30755	# 256
beq.30756:
	fsub	f6, f0, f6	# 123
beq_cont.30755:
	fsub	f6, f6, f2	# 969
	fdiv	f5, f6, f5	# 969
	mul		x14, x30, x12	# 970
	add		x14, x6, x14	# 970
	flw		f6, 0(x14)	# 970
	fmul	f6, f5, f6	# 970
	fadd	f6, f6, f3	# 970
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.30757	# 124
	fsub	f6, f0, f6	# 124
fle_cont.30757:
	mul		x14, x30, x12	# 970
	add		x14, x10, x14	# 970
	flw		f7, 0(x14)	# 970
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.30759	# 125
	addi	x10, x0, 0	# 974
	jal		x0, fle_cont.30758	# 125
fle_else.30759:
	mul		x14, x30, x8	# 971
	add		x14, x6, x14	# 971
	flw		f6, 0(x14)	# 971
	fmul	f6, f5, f6	# 971
	fadd	f6, f6, f4	# 971
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.30760	# 124
	fsub	f6, f0, f6	# 124
fle_cont.30760:
	mul		x14, x30, x8	# 971
	add		x10, x10, x14	# 971
	flw		f7, 0(x10)	# 971
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.30762	# 125
	addi	x10, x0, 0	# 973
	jal		x0, fle_cont.30761	# 125
fle_else.30762:
	mul		x10, x30, x11	# 972
	addi	x10, x10, 60540	# 972
	fsw		f5, 0(x10)	# 972
	addi	x10, x0, 1	# 972
fle_cont.30761:
fle_cont.30758:
feq_cont.30747:
	beq		x10, x11, beq.30764	# 980
	addi	x8, x0, 1	# 980
	jal		x0, beq_cont.30763	# 980
beq.30764:
	mul		x10, x30, x12	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30766	# 120
	addi	x10, x0, 0	# 965
	jal		x0, feq_cont.30765	# 120
feq_else.30766:
	lw		x10, 16(x9)	# 458
	lw		x14, 24(x9)	# 410
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.30768	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.30767	# 122
fle_else.30768:
	addi	x15, x0, 1	# 122
fle_cont.30767:
	beq		x14, x11, beq.30770	# 241
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.30772	# 122
	addi	x14, x0, 1	# 241
	jal		x0, fle_cont.30771	# 122
fle_else.30772:
	addi	x14, x0, 0	# 241
fle_cont.30771:
	jal		x0, beq_cont.30769	# 241
beq.30770:
	addi	x14, x15, 0	# 241
beq_cont.30769:
	mul		x15, x30, x12	# 967
	add		x15, x10, x15	# 967
	flw		f6, 0(x15)	# 967
	beq		x14, x11, beq.30774	# 256
	jal		x0, beq_cont.30773	# 256
beq.30774:
	fsub	f6, f0, f6	# 123
beq_cont.30773:
	fsub	f6, f6, f3	# 969
	fdiv	f5, f6, f5	# 969
	mul		x14, x30, x8	# 970
	add		x14, x6, x14	# 970
	flw		f6, 0(x14)	# 970
	fmul	f6, f5, f6	# 970
	fadd	f6, f6, f4	# 970
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.30775	# 124
	fsub	f6, f0, f6	# 124
fle_cont.30775:
	mul		x14, x30, x8	# 970
	add		x14, x10, x14	# 970
	flw		f7, 0(x14)	# 970
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.30777	# 125
	addi	x10, x0, 0	# 974
	jal		x0, fle_cont.30776	# 125
fle_else.30777:
	mul		x14, x30, x11	# 971
	add		x14, x6, x14	# 971
	flw		f6, 0(x14)	# 971
	fmul	f6, f5, f6	# 971
	fadd	f6, f6, f2	# 971
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.30778	# 124
	fsub	f6, f0, f6	# 124
fle_cont.30778:
	mul		x14, x30, x11	# 971
	add		x10, x10, x14	# 971
	flw		f7, 0(x10)	# 971
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.30780	# 125
	addi	x10, x0, 0	# 973
	jal		x0, fle_cont.30779	# 125
fle_else.30780:
	mul		x10, x30, x11	# 972
	addi	x10, x10, 60540	# 972
	fsw		f5, 0(x10)	# 972
	addi	x10, x0, 1	# 972
fle_cont.30779:
fle_cont.30776:
feq_cont.30765:
	beq		x10, x11, beq.30782	# 981
	addi	x8, x0, 2	# 981
	jal		x0, beq_cont.30781	# 981
beq.30782:
	mul		x10, x30, x8	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30784	# 120
	addi	x8, x0, 0	# 965
	jal		x0, feq_cont.30783	# 120
feq_else.30784:
	lw		x10, 16(x9)	# 458
	lw		x9, 24(x9)	# 410
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.30786	# 122
	addi	x14, x0, 0	# 122
	jal		x0, fle_cont.30785	# 122
fle_else.30786:
	addi	x14, x0, 1	# 122
fle_cont.30785:
	beq		x9, x11, beq.30788	# 241
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.30790	# 122
	addi	x9, x0, 1	# 241
	jal		x0, fle_cont.30789	# 122
fle_else.30790:
	addi	x9, x0, 0	# 241
fle_cont.30789:
	jal		x0, beq_cont.30787	# 241
beq.30788:
	addi	x9, x14, 0	# 241
beq_cont.30787:
	mul		x8, x30, x8	# 967
	add		x8, x10, x8	# 967
	flw		f6, 0(x8)	# 967
	beq		x9, x11, beq.30792	# 256
	jal		x0, beq_cont.30791	# 256
beq.30792:
	fsub	f6, f0, f6	# 123
beq_cont.30791:
	fsub	f4, f6, f4	# 969
	fdiv	f4, f4, f5	# 969
	mul		x8, x30, x11	# 970
	add		x8, x6, x8	# 970
	flw		f5, 0(x8)	# 970
	fmul	f5, f4, f5	# 970
	fadd	f2, f5, f2	# 970
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.30793	# 124
	fsub	f2, f0, f2	# 124
fle_cont.30793:
	mul		x8, x30, x11	# 970
	add		x8, x10, x8	# 970
	flw		f5, 0(x8)	# 970
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.30795	# 125
	addi	x8, x0, 0	# 974
	jal		x0, fle_cont.30794	# 125
fle_else.30795:
	mul		x8, x30, x12	# 971
	add		x8, x6, x8	# 971
	flw		f2, 0(x8)	# 971
	fmul	f2, f4, f2	# 971
	fadd	f2, f2, f3	# 971
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_else.30797	# 124
	fsub	f1, f0, f2	# 124
	jal		x0, fle_cont.30796	# 124
fle_else.30797:
	fadd	f1, f0, f2	# 124
fle_cont.30796:
	mul		x8, x30, x12	# 971
	add		x8, x10, x8	# 971
	flw		f2, 0(x8)	# 971
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30799	# 125
	addi	x8, x0, 0	# 973
	jal		x0, fle_cont.30798	# 125
fle_else.30799:
	mul		x8, x30, x11	# 972
	addi	x8, x8, 60540	# 972
	fsw		f4, 0(x8)	# 972
	addi	x8, x0, 1	# 972
fle_cont.30798:
fle_cont.30794:
feq_cont.30783:
	beq		x8, x11, beq.30801	# 982
	addi	x8, x0, 3	# 982
	jal		x0, beq_cont.30800	# 982
beq.30801:
	addi	x8, x0, 0	# 983
beq_cont.30800:
beq_cont.30781:
beq_cont.30763:
beq_cont.30728:
	beq		x8, x11, beq_cont.30802	# 1564
	mul		x8, x30, x11	# 1565
	addi	x8, x8, 60540	# 1565
	flw		f1, 0(x8)	# 1565
	mul		x8, x30, x11	# 1566
	addi	x8, x8, 60548	# 1566
	flw		f2, 0(x8)	# 1566
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30804	# 125
	jal		x0, fle_cont.30803	# 125
fle_else.30804:
	addi	x5, x13, 0
	addi	x4, x12, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1567
	addi	x2, x2, -24	# 1567
	lw		x31, 0(x29)	# 1567
	jalr	x1, x31, 0	# 1567
	addi	x2, x2, 24	# 1567
	lw		x1, -20(x2)	# 1567
fle_cont.30803:
beq_cont.30802:
	jal		x0, beq_cont.30726	# 1558
beq.30727:
	addi	x5, x13, 0
	addi	x4, x12, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1559
	addi	x2, x2, -24	# 1559
	lw		x31, 0(x29)	# 1559
	jalr	x1, x31, 0	# 1559
	addi	x2, x2, 24	# 1559
	lw		x1, -20(x2)	# 1559
beq_cont.30726:
	lw		x4, -12(x2)	# 1571
	lw		x5, -16(x2)	# 1571
	add		x4, x5, x4	# 1571
	lw		x5, -4(x2)	# 1571
	lw		x6, 0(x2)	# 1571
	lw		x29, -8(x2)	# 1571
	lw		x31, 0(x29)	# 1571
	jalr	x0, x31, 0	# 1571
beq.30725:
	jalr	x0, x1, 0	# 1556
solve_each_element_fast.2875.17310:
	lw		x7, 32(x29)	# 676
	lw		x8, 28(x29)	# 676
	lw		x9, 24(x29)	# 676
	lw		x10, 20(x29)	# 676
	lw		x11, 16(x29)	# 676
	lw		x12, 12(x29)	# 676
	lw		x13, 8(x29)	# 676
	flw		f1, 4(x29)	# 676
	lw		x14, 0(x6)	# 676
	mul		x15, x30, x4	# 1596
	add		x15, x5, x15	# 1596
	lw		x15, 0(x15)	# 1596
	beq		x15, x10, beq.30806	# 1597
	mul		x10, x30, x15	# 1210
	addi	x10, x10, 60048	# 1210
	lw		x10, 0(x10)	# 1210
	lw		x16, 40(x10)	# 585
	mul		x17, x30, x12	# 1212
	add		x17, x16, x17	# 1212
	flw		f2, 0(x17)	# 1212
	mul		x17, x30, x13	# 1213
	add		x17, x16, x17	# 1213
	flw		f3, 0(x17)	# 1213
	mul		x17, x30, x9	# 1214
	add		x17, x16, x17	# 1214
	flw		f4, 0(x17)	# 1214
	lw		x17, 4(x6)	# 682
	mul		x18, x30, x15	# 1216
	add		x17, x17, x18	# 1216
	lw		x17, 0(x17)	# 1216
	lw		x18, 4(x10)	# 390
	beq		x18, x13, beq.30808	# 1218
	beq		x18, x9, beq.30810	# 1220
	mul		x8, x30, x12	# 1192
	add		x8, x17, x8	# 1192
	flw		f5, 0(x8)	# 1192
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30812	# 120
	addi	x8, x0, 0	# 1194
	jal		x0, feq_cont.30811	# 120
feq_else.30812:
	mul		x8, x30, x13	# 1196
	add		x8, x17, x8	# 1196
	flw		f6, 0(x8)	# 1196
	fmul	f2, f6, f2	# 1196
	mul		x8, x30, x9	# 1196
	add		x8, x17, x8	# 1196
	flw		f6, 0(x8)	# 1196
	fmul	f3, f6, f3	# 1196
	fadd	f2, f2, f3	# 1196
	mul		x8, x30, x11	# 1196
	add		x8, x17, x8	# 1196
	flw		f3, 0(x8)	# 1196
	fmul	f3, f3, f4	# 1196
	fadd	f2, f2, f3	# 1196
	mul		x8, x30, x11	# 1197
	add		x8, x16, x8	# 1197
	flw		f3, 0(x8)	# 1197
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1198
	fsub	f3, f4, f3	# 1198
	fle		x31, f3, f1	# 121
	beq		x31, x0, fle_else.30814	# 121
	addi	x8, x0, 0	# 1205
	jal		x0, fle_cont.30813	# 121
fle_else.30814:
	lw		x8, 24(x10)	# 410
	beq		x8, x12, beq.30816	# 1200
	fsqrt	f3, f3	# 1201
	fadd	f2, f2, f3	# 1201
	addi	x8, x0, 4	# 1201
	mul		x8, x30, x8	# 1201
	add		x8, x17, x8	# 1201
	flw		f3, 0(x8)	# 1201
	fmul	f2, f2, f3	# 1201
	mul		x8, x30, x12	# 1201
	addi	x8, x8, 60540	# 1201
	fsw		f2, 0(x8)	# 1201
	jal		x0, beq_cont.30815	# 1200
beq.30816:
	fsqrt	f3, f3	# 1203
	fsub	f2, f2, f3	# 1203
	addi	x8, x0, 4	# 1203
	mul		x8, x30, x8	# 1203
	add		x8, x17, x8	# 1203
	flw		f3, 0(x8)	# 1203
	fmul	f2, f2, f3	# 1203
	mul		x8, x30, x12	# 1203
	addi	x8, x8, 60540	# 1203
	fsw		f2, 0(x8)	# 1203
beq_cont.30815:
	addi	x8, x0, 1	# 1204
fle_cont.30813:
feq_cont.30811:
	jal		x0, beq_cont.30809	# 1220
beq.30810:
	mul		x8, x30, x12	# 1183
	add		x8, x17, x8	# 1183
	flw		f2, 0(x8)	# 1183
	fle		x31, f1, f2	# 122
	beq		x31, x0, fle_else.30818	# 122
	addi	x8, x0, 0	# 1186
	jal		x0, fle_cont.30817	# 122
fle_else.30818:
	mul		x8, x30, x11	# 1184
	add		x8, x16, x8	# 1184
	flw		f3, 0(x8)	# 1184
	fmul	f2, f2, f3	# 1184
	mul		x8, x30, x12	# 1184
	addi	x8, x8, 60540	# 1184
	fsw		f2, 0(x8)	# 1184
	addi	x8, x0, 1	# 1185
fle_cont.30817:
beq_cont.30809:
	jal		x0, beq_cont.30807	# 1218
beq.30808:
	lw		x16, 0(x6)	# 676
	mul		x18, x30, x12	# 1101
	add		x18, x17, x18	# 1101
	flw		f5, 0(x18)	# 1101
	fsub	f5, f5, f2	# 1101
	mul		x18, x30, x13	# 1101
	add		x18, x17, x18	# 1101
	flw		f6, 0(x18)	# 1101
	fmul	f5, f5, f6	# 1101
	mul		x18, x30, x13	# 1103
	add		x18, x16, x18	# 1103
	flw		f7, 0(x18)	# 1103
	fmul	f8, f5, f7	# 1103
	fadd	f8, f8, f3	# 1103
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.30819	# 124
	fsub	f8, f0, f8	# 124
fle_cont.30819:
	lw		x18, 16(x10)	# 438
	mul		x19, x30, x13	# 443
	add		x18, x18, x19	# 443
	flw		f9, 0(x18)	# 443
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.30821	# 125
	addi	x18, x0, 0	# 1107
	jal		x0, fle_cont.30820	# 125
fle_else.30821:
	mul		x18, x30, x9	# 1104
	add		x18, x16, x18	# 1104
	flw		f8, 0(x18)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.30822	# 124
	fsub	f8, f0, f8	# 124
fle_cont.30822:
	lw		x18, 16(x10)	# 448
	mul		x19, x30, x9	# 453
	add		x18, x18, x19	# 453
	flw		f9, 0(x18)	# 453
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.30824	# 125
	addi	x18, x0, 0	# 1106
	jal		x0, fle_cont.30823	# 125
fle_else.30824:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.30826	# 120
	addi	x18, x0, 0	# 1105
	jal		x0, feq_cont.30825	# 120
feq_else.30826:
	addi	x18, x0, 1	# 1105
feq_cont.30825:
fle_cont.30823:
fle_cont.30820:
	beq		x18, x12, beq.30828	# 1102
	mul		x8, x30, x12	# 1109
	addi	x8, x8, 60540	# 1109
	fsw		f5, 0(x8)	# 1109
	addi	x8, x0, 1	# 1109
	jal		x0, beq_cont.30827	# 1102
beq.30828:
	mul		x18, x30, x9	# 1110
	add		x18, x17, x18	# 1110
	flw		f5, 0(x18)	# 1110
	fsub	f5, f5, f3	# 1110
	mul		x11, x30, x11	# 1110
	add		x11, x17, x11	# 1110
	flw		f6, 0(x11)	# 1110
	fmul	f5, f5, f6	# 1110
	mul		x11, x30, x12	# 1112
	add		x11, x16, x11	# 1112
	flw		f8, 0(x11)	# 1112
	fmul	f9, f5, f8	# 1112
	fadd	f9, f9, f2	# 1112
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.30829	# 124
	fsub	f9, f0, f9	# 124
fle_cont.30829:
	lw		x11, 16(x10)	# 428
	mul		x18, x30, x12	# 433
	add		x11, x11, x18	# 433
	flw		f10, 0(x11)	# 433
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.30831	# 125
	addi	x11, x0, 0	# 1116
	jal		x0, fle_cont.30830	# 125
fle_else.30831:
	mul		x11, x30, x9	# 1113
	add		x11, x16, x11	# 1113
	flw		f9, 0(x11)	# 1113
	fmul	f9, f5, f9	# 1113
	fadd	f9, f9, f4	# 1113
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.30832	# 124
	fsub	f9, f0, f9	# 124
fle_cont.30832:
	lw		x11, 16(x10)	# 448
	mul		x16, x30, x9	# 453
	add		x11, x11, x16	# 453
	flw		f10, 0(x11)	# 453
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.30834	# 125
	addi	x11, x0, 0	# 1115
	jal		x0, fle_cont.30833	# 125
fle_else.30834:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.30836	# 120
	addi	x11, x0, 0	# 1114
	jal		x0, feq_cont.30835	# 120
feq_else.30836:
	addi	x11, x0, 1	# 1114
feq_cont.30835:
fle_cont.30833:
fle_cont.30830:
	beq		x11, x12, beq.30838	# 1111
	mul		x8, x30, x12	# 1118
	addi	x8, x8, 60540	# 1118
	fsw		f5, 0(x8)	# 1118
	addi	x8, x0, 2	# 1118
	jal		x0, beq_cont.30837	# 1111
beq.30838:
	addi	x11, x0, 4	# 1119
	mul		x11, x30, x11	# 1119
	add		x11, x17, x11	# 1119
	flw		f5, 0(x11)	# 1119
	fsub	f4, f5, f4	# 1119
	mul		x8, x30, x8	# 1119
	add		x8, x17, x8	# 1119
	flw		f5, 0(x8)	# 1119
	fmul	f4, f4, f5	# 1119
	fmul	f6, f4, f8	# 1121
	fadd	f2, f6, f2	# 1121
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.30839	# 124
	fsub	f2, f0, f2	# 124
fle_cont.30839:
	lw		x8, 16(x10)	# 428
	mul		x11, x30, x12	# 433
	add		x8, x8, x11	# 433
	flw		f6, 0(x8)	# 433
	fle		x31, f6, f2	# 125
	beq		x31, x0, fle_else.30841	# 125
	addi	x8, x0, 0	# 1125
	jal		x0, fle_cont.30840	# 125
fle_else.30841:
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.30842	# 124
	fsub	f2, f0, f2	# 124
fle_cont.30842:
	lw		x8, 16(x10)	# 438
	mul		x10, x30, x13	# 443
	add		x8, x8, x10	# 443
	flw		f3, 0(x8)	# 443
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.30844	# 125
	addi	x8, x0, 0	# 1124
	jal		x0, fle_cont.30843	# 125
fle_else.30844:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30846	# 120
	addi	x8, x0, 0	# 1123
	jal		x0, feq_cont.30845	# 120
feq_else.30846:
	addi	x8, x0, 1	# 1123
feq_cont.30845:
fle_cont.30843:
fle_cont.30840:
	beq		x8, x12, beq.30848	# 1120
	mul		x8, x30, x12	# 1127
	addi	x8, x8, 60540	# 1127
	fsw		f4, 0(x8)	# 1127
	addi	x8, x0, 3	# 1127
	jal		x0, beq_cont.30847	# 1120
beq.30848:
	addi	x8, x0, 0	# 1129
beq_cont.30847:
beq_cont.30837:
beq_cont.30827:
beq_cont.30807:
	beq		x8, x12, beq.30849	# 1600
	mul		x10, x30, x12	# 1604
	addi	x10, x10, 60540	# 1604
	flw		f2, 0(x10)	# 1604
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x29, -8(x2)	# 125
	sw		x13, -12(x2)	# 125
	sw		x4, -16(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30851	# 125
	jal		x0, fle_cont.30850	# 125
fle_else.30851:
	mul		x10, x30, x12	# 1607
	addi	x10, x10, 60548	# 1607
	flw		f1, 0(x10)	# 1607
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.30853	# 125
	jal		x0, fle_cont.30852	# 125
fle_else.30853:
	fadd	f1, f0, f19	# 1609
	fadd	f1, f2, f1	# 1609
	mul		x10, x30, x12	# 1610
	add		x10, x14, x10	# 1610
	flw		f2, 0(x10)	# 1610
	fmul	f2, f2, f1	# 1610
	mul		x10, x30, x12	# 1610
	addi	x10, x10, 60648	# 1610
	flw		f3, 0(x10)	# 1610
	fadd	f2, f2, f3	# 1610
	mul		x10, x30, x13	# 1611
	add		x10, x14, x10	# 1611
	flw		f3, 0(x10)	# 1611
	fmul	f3, f3, f1	# 1611
	mul		x10, x30, x13	# 1611
	addi	x10, x10, 60648	# 1611
	flw		f4, 0(x10)	# 1611
	fadd	f3, f3, f4	# 1611
	mul		x10, x30, x9	# 1612
	add		x10, x14, x10	# 1612
	flw		f4, 0(x10)	# 1612
	fmul	f4, f4, f1	# 1612
	mul		x10, x30, x9	# 1612
	addi	x10, x10, 60648	# 1612
	flw		f5, 0(x10)	# 1612
	fadd	f4, f4, f5	# 1612
	sw		x8, -20(x2)	# 1613
	sw		x15, -24(x2)	# 1613
	fsw		f4, -28(x2)	# 1613
	sw		x9, -32(x2)	# 1613
	fsw		f3, -36(x2)	# 1613
	fsw		f2, -40(x2)	# 1613
	fsw		f1, -44(x2)	# 1613
	sw		x12, -48(x2)	# 1613
	addi	x4, x12, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -52(x2)	# 1613
	addi	x2, x2, -56	# 1613
	lw		x31, 0(x29)	# 1613
	jalr	x1, x31, 0	# 1613
	addi	x2, x2, 56	# 1613
	lw		x1, -52(x2)	# 1613
	lw		x5, -48(x2)	# 1613
	beq		x4, x5, beq_cont.30854	# 1613
	mul		x4, x30, x5	# 1615
	addi	x4, x4, 60548	# 1615
	flw		f1, -44(x2)	# 1615
	fsw		f1, 0(x4)	# 1615
	mul		x4, x30, x5	# 277
	addi	x4, x4, 60552	# 277
	flw		f1, -40(x2)	# 277
	fsw		f1, 0(x4)	# 277
	lw		x4, -12(x2)	# 278
	mul		x6, x30, x4	# 278
	addi	x6, x6, 60552	# 278
	flw		f1, -36(x2)	# 278
	fsw		f1, 0(x6)	# 278
	lw		x6, -32(x2)	# 279
	mul		x6, x30, x6	# 279
	addi	x6, x6, 60552	# 279
	flw		f1, -28(x2)	# 279
	fsw		f1, 0(x6)	# 279
	mul		x6, x30, x5	# 1617
	addi	x6, x6, 60564	# 1617
	lw		x7, -24(x2)	# 1617
	sw		x7, 0(x6)	# 1617
	mul		x5, x30, x5	# 1618
	addi	x5, x5, 60544	# 1618
	lw		x6, -20(x2)	# 1618
	sw		x6, 0(x5)	# 1618
beq_cont.30854:
fle_cont.30852:
fle_cont.30850:
	lw		x4, -12(x2)	# 1624
	lw		x5, -16(x2)	# 1624
	add		x4, x5, x4	# 1624
	lw		x5, -4(x2)	# 1624
	lw		x6, 0(x2)	# 1624
	lw		x29, -8(x2)	# 1624
	lw		x31, 0(x29)	# 1624
	jalr	x0, x31, 0	# 1624
beq.30849:
	mul		x7, x30, x15	# 1628
	addi	x7, x7, 60048	# 1628
	lw		x7, 0(x7)	# 1628
	lw		x7, 24(x7)	# 410
	beq		x7, x12, beq.30855	# 1628
	add		x4, x4, x13	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x0, x31, 0	# 1629
beq.30855:
	jalr	x0, x1, 0	# 1630
beq.30806:
	jalr	x0, x1, 0	# 1597
solve_one_or_network_fast.2879.17314:
	lw		x7, 16(x29)	# 1636
	lw		x8, 12(x29)	# 1636
	lw		x9, 8(x29)	# 1636
	lw		x10, 4(x29)	# 1636
	mul		x11, x30, x4	# 1636
	add		x11, x5, x11	# 1636
	lw		x11, 0(x11)	# 1636
	beq		x11, x8, beq.30858	# 1637
	mul		x8, x30, x11	# 1638
	addi	x8, x8, 60332	# 1638
	lw		x8, 0(x8)	# 1638
	sw		x6, 0(x2)	# 1639
	sw		x5, -4(x2)	# 1639
	sw		x29, -8(x2)	# 1639
	sw		x10, -12(x2)	# 1639
	sw		x4, -16(x2)	# 1639
	addi	x5, x8, 0
	addi	x4, x9, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1639
	addi	x2, x2, -24	# 1639
	lw		x31, 0(x29)	# 1639
	jalr	x1, x31, 0	# 1639
	addi	x2, x2, 24	# 1639
	lw		x1, -20(x2)	# 1639
	lw		x4, -12(x2)	# 1640
	lw		x5, -16(x2)	# 1640
	add		x4, x5, x4	# 1640
	lw		x5, -4(x2)	# 1640
	lw		x6, 0(x2)	# 1640
	lw		x29, -8(x2)	# 1640
	lw		x31, 0(x29)	# 1640
	jalr	x0, x31, 0	# 1640
beq.30858:
	jalr	x0, x1, 0	# 1641
trace_or_matrix_fast.2883.17318:
	lw		x7, 32(x29)	# 1646
	lw		x8, 28(x29)	# 1646
	lw		x9, 24(x29)	# 1646
	lw		x10, 20(x29)	# 1646
	lw		x11, 16(x29)	# 1646
	lw		x12, 12(x29)	# 1646
	lw		x13, 8(x29)	# 1646
	flw		f1, 4(x29)	# 1646
	mul		x14, x30, x4	# 1646
	add		x14, x5, x14	# 1646
	lw		x14, 0(x14)	# 1646
	mul		x15, x30, x12	# 1647
	add		x15, x14, x15	# 1647
	lw		x15, 0(x15)	# 1647
	beq		x15, x10, beq.30860	# 1648
	addi	x10, x0, 99	# 1651
	sw		x6, 0(x2)	# 1651
	sw		x5, -4(x2)	# 1651
	sw		x29, -8(x2)	# 1651
	sw		x13, -12(x2)	# 1651
	sw		x4, -16(x2)	# 1651
	beq		x15, x10, beq.30862	# 1651
	mul		x10, x30, x15	# 1210
	addi	x10, x10, 60048	# 1210
	lw		x10, 0(x10)	# 1210
	lw		x16, 40(x10)	# 585
	mul		x17, x30, x12	# 1212
	add		x17, x16, x17	# 1212
	flw		f2, 0(x17)	# 1212
	mul		x17, x30, x13	# 1213
	add		x17, x16, x17	# 1213
	flw		f3, 0(x17)	# 1213
	mul		x17, x30, x9	# 1214
	add		x17, x16, x17	# 1214
	flw		f4, 0(x17)	# 1214
	lw		x17, 4(x6)	# 682
	mul		x15, x30, x15	# 1216
	add		x15, x17, x15	# 1216
	lw		x15, 0(x15)	# 1216
	lw		x17, 4(x10)	# 390
	beq		x17, x13, beq.30864	# 1218
	beq		x17, x9, beq.30866	# 1220
	mul		x8, x30, x12	# 1192
	add		x8, x15, x8	# 1192
	flw		f5, 0(x8)	# 1192
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30868	# 120
	addi	x8, x0, 0	# 1194
	jal		x0, feq_cont.30867	# 120
feq_else.30868:
	mul		x8, x30, x13	# 1196
	add		x8, x15, x8	# 1196
	flw		f6, 0(x8)	# 1196
	fmul	f2, f6, f2	# 1196
	mul		x8, x30, x9	# 1196
	add		x8, x15, x8	# 1196
	flw		f6, 0(x8)	# 1196
	fmul	f3, f6, f3	# 1196
	fadd	f2, f2, f3	# 1196
	mul		x8, x30, x11	# 1196
	add		x8, x15, x8	# 1196
	flw		f3, 0(x8)	# 1196
	fmul	f3, f3, f4	# 1196
	fadd	f2, f2, f3	# 1196
	mul		x8, x30, x11	# 1197
	add		x8, x16, x8	# 1197
	flw		f3, 0(x8)	# 1197
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1198
	fsub	f3, f4, f3	# 1198
	fle		x31, f3, f1	# 121
	beq		x31, x0, fle_else.30870	# 121
	addi	x8, x0, 0	# 1205
	jal		x0, fle_cont.30869	# 121
fle_else.30870:
	lw		x8, 24(x10)	# 410
	beq		x8, x12, beq.30872	# 1200
	fsqrt	f1, f3	# 1201
	fadd	f1, f2, f1	# 1201
	addi	x8, x0, 4	# 1201
	mul		x8, x30, x8	# 1201
	add		x8, x15, x8	# 1201
	flw		f2, 0(x8)	# 1201
	fmul	f1, f1, f2	# 1201
	mul		x8, x30, x12	# 1201
	addi	x8, x8, 60540	# 1201
	fsw		f1, 0(x8)	# 1201
	jal		x0, beq_cont.30871	# 1200
beq.30872:
	fsqrt	f1, f3	# 1203
	fsub	f1, f2, f1	# 1203
	addi	x8, x0, 4	# 1203
	mul		x8, x30, x8	# 1203
	add		x8, x15, x8	# 1203
	flw		f2, 0(x8)	# 1203
	fmul	f1, f1, f2	# 1203
	mul		x8, x30, x12	# 1203
	addi	x8, x8, 60540	# 1203
	fsw		f1, 0(x8)	# 1203
beq_cont.30871:
	addi	x8, x0, 1	# 1204
fle_cont.30869:
feq_cont.30867:
	jal		x0, beq_cont.30865	# 1220
beq.30866:
	mul		x8, x30, x12	# 1183
	add		x8, x15, x8	# 1183
	flw		f2, 0(x8)	# 1183
	fle		x31, f1, f2	# 122
	beq		x31, x0, fle_else.30874	# 122
	addi	x8, x0, 0	# 1186
	jal		x0, fle_cont.30873	# 122
fle_else.30874:
	mul		x8, x30, x11	# 1184
	add		x8, x16, x8	# 1184
	flw		f1, 0(x8)	# 1184
	fmul	f1, f2, f1	# 1184
	mul		x8, x30, x12	# 1184
	addi	x8, x8, 60540	# 1184
	fsw		f1, 0(x8)	# 1184
	addi	x8, x0, 1	# 1185
fle_cont.30873:
beq_cont.30865:
	jal		x0, beq_cont.30863	# 1218
beq.30864:
	lw		x16, 0(x6)	# 676
	mul		x17, x30, x12	# 1101
	add		x17, x15, x17	# 1101
	flw		f5, 0(x17)	# 1101
	fsub	f5, f5, f2	# 1101
	mul		x17, x30, x13	# 1101
	add		x17, x15, x17	# 1101
	flw		f6, 0(x17)	# 1101
	fmul	f5, f5, f6	# 1101
	mul		x17, x30, x13	# 1103
	add		x17, x16, x17	# 1103
	flw		f7, 0(x17)	# 1103
	fmul	f8, f5, f7	# 1103
	fadd	f8, f8, f3	# 1103
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.30875	# 124
	fsub	f8, f0, f8	# 124
fle_cont.30875:
	lw		x17, 16(x10)	# 438
	mul		x18, x30, x13	# 443
	add		x17, x17, x18	# 443
	flw		f9, 0(x17)	# 443
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.30877	# 125
	addi	x17, x0, 0	# 1107
	jal		x0, fle_cont.30876	# 125
fle_else.30877:
	mul		x17, x30, x9	# 1104
	add		x17, x16, x17	# 1104
	flw		f8, 0(x17)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.30878	# 124
	fsub	f8, f0, f8	# 124
fle_cont.30878:
	lw		x17, 16(x10)	# 448
	mul		x18, x30, x9	# 453
	add		x17, x17, x18	# 453
	flw		f9, 0(x17)	# 453
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.30880	# 125
	addi	x17, x0, 0	# 1106
	jal		x0, fle_cont.30879	# 125
fle_else.30880:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.30882	# 120
	addi	x17, x0, 0	# 1105
	jal		x0, feq_cont.30881	# 120
feq_else.30882:
	addi	x17, x0, 1	# 1105
feq_cont.30881:
fle_cont.30879:
fle_cont.30876:
	beq		x17, x12, beq.30884	# 1102
	mul		x8, x30, x12	# 1109
	addi	x8, x8, 60540	# 1109
	fsw		f5, 0(x8)	# 1109
	addi	x8, x0, 1	# 1109
	jal		x0, beq_cont.30883	# 1102
beq.30884:
	mul		x17, x30, x9	# 1110
	add		x17, x15, x17	# 1110
	flw		f5, 0(x17)	# 1110
	fsub	f5, f5, f3	# 1110
	mul		x11, x30, x11	# 1110
	add		x11, x15, x11	# 1110
	flw		f6, 0(x11)	# 1110
	fmul	f5, f5, f6	# 1110
	mul		x11, x30, x12	# 1112
	add		x11, x16, x11	# 1112
	flw		f8, 0(x11)	# 1112
	fmul	f9, f5, f8	# 1112
	fadd	f9, f9, f2	# 1112
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.30885	# 124
	fsub	f9, f0, f9	# 124
fle_cont.30885:
	lw		x11, 16(x10)	# 428
	mul		x17, x30, x12	# 433
	add		x11, x11, x17	# 433
	flw		f10, 0(x11)	# 433
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.30887	# 125
	addi	x9, x0, 0	# 1116
	jal		x0, fle_cont.30886	# 125
fle_else.30887:
	mul		x11, x30, x9	# 1113
	add		x11, x16, x11	# 1113
	flw		f9, 0(x11)	# 1113
	fmul	f9, f5, f9	# 1113
	fadd	f9, f9, f4	# 1113
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.30888	# 124
	fsub	f9, f0, f9	# 124
fle_cont.30888:
	lw		x11, 16(x10)	# 448
	mul		x9, x30, x9	# 453
	add		x9, x11, x9	# 453
	flw		f10, 0(x9)	# 453
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.30890	# 125
	addi	x9, x0, 0	# 1115
	jal		x0, fle_cont.30889	# 125
fle_else.30890:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.30892	# 120
	addi	x9, x0, 0	# 1114
	jal		x0, feq_cont.30891	# 120
feq_else.30892:
	addi	x9, x0, 1	# 1114
feq_cont.30891:
fle_cont.30889:
fle_cont.30886:
	beq		x9, x12, beq.30894	# 1111
	mul		x8, x30, x12	# 1118
	addi	x8, x8, 60540	# 1118
	fsw		f5, 0(x8)	# 1118
	addi	x8, x0, 2	# 1118
	jal		x0, beq_cont.30893	# 1111
beq.30894:
	addi	x9, x0, 4	# 1119
	mul		x9, x30, x9	# 1119
	add		x9, x15, x9	# 1119
	flw		f5, 0(x9)	# 1119
	fsub	f4, f5, f4	# 1119
	mul		x8, x30, x8	# 1119
	add		x8, x15, x8	# 1119
	flw		f5, 0(x8)	# 1119
	fmul	f4, f4, f5	# 1119
	fmul	f6, f4, f8	# 1121
	fadd	f2, f6, f2	# 1121
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.30895	# 124
	fsub	f2, f0, f2	# 124
fle_cont.30895:
	lw		x8, 16(x10)	# 428
	mul		x9, x30, x12	# 433
	add		x8, x8, x9	# 433
	flw		f6, 0(x8)	# 433
	fle		x31, f6, f2	# 125
	beq		x31, x0, fle_else.30897	# 125
	addi	x8, x0, 0	# 1125
	jal		x0, fle_cont.30896	# 125
fle_else.30897:
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.30898	# 124
	fsub	f2, f0, f2	# 124
fle_cont.30898:
	lw		x8, 16(x10)	# 438
	mul		x9, x30, x13	# 443
	add		x8, x8, x9	# 443
	flw		f3, 0(x8)	# 443
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.30900	# 125
	addi	x8, x0, 0	# 1124
	jal		x0, fle_cont.30899	# 125
fle_else.30900:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30902	# 120
	addi	x8, x0, 0	# 1123
	jal		x0, feq_cont.30901	# 120
feq_else.30902:
	addi	x8, x0, 1	# 1123
feq_cont.30901:
fle_cont.30899:
fle_cont.30896:
	beq		x8, x12, beq.30904	# 1120
	mul		x8, x30, x12	# 1127
	addi	x8, x8, 60540	# 1127
	fsw		f4, 0(x8)	# 1127
	addi	x8, x0, 3	# 1127
	jal		x0, beq_cont.30903	# 1120
beq.30904:
	addi	x8, x0, 0	# 1129
beq_cont.30903:
beq_cont.30893:
beq_cont.30883:
beq_cont.30863:
	beq		x8, x12, beq_cont.30905	# 1657
	mul		x8, x30, x12	# 1658
	addi	x8, x8, 60540	# 1658
	flw		f1, 0(x8)	# 1658
	mul		x8, x30, x12	# 1659
	addi	x8, x8, 60548	# 1659
	flw		f2, 0(x8)	# 1659
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30907	# 125
	jal		x0, fle_cont.30906	# 125
fle_else.30907:
	addi	x5, x14, 0
	addi	x4, x13, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1660
	addi	x2, x2, -24	# 1660
	lw		x31, 0(x29)	# 1660
	jalr	x1, x31, 0	# 1660
	addi	x2, x2, 24	# 1660
	lw		x1, -20(x2)	# 1660
fle_cont.30906:
beq_cont.30905:
	jal		x0, beq_cont.30861	# 1651
beq.30862:
	addi	x5, x14, 0
	addi	x4, x13, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1652
	addi	x2, x2, -24	# 1652
	lw		x31, 0(x29)	# 1652
	jalr	x1, x31, 0	# 1652
	addi	x2, x2, 24	# 1652
	lw		x1, -20(x2)	# 1652
beq_cont.30861:
	lw		x4, -12(x2)	# 1664
	lw		x5, -16(x2)	# 1664
	add		x4, x5, x4	# 1664
	lw		x5, -4(x2)	# 1664
	lw		x6, 0(x2)	# 1664
	lw		x29, -8(x2)	# 1664
	lw		x31, 0(x29)	# 1664
	jalr	x0, x31, 0	# 1664
beq.30860:
	jalr	x0, x1, 0	# 1649
trace_reflections.2905.17322:
	lw		x6, 28(x29)	# 1841
	lw		x7, 24(x29)	# 1841
	lw		x8, 20(x29)	# 1841
	lw		x9, 16(x29)	# 1841
	lw		x10, 12(x29)	# 1841
	flw		f3, 8(x29)	# 1841
	flw		f4, 4(x29)	# 1841
	ble		x9, x4, ble.30909	# 1841
	jalr	x0, x1, 0	# 1861
ble.30909:
	mul		x11, x30, x4	# 1842
	addi	x11, x11, 61016	# 1842
	lw		x11, 0(x11)	# 1842
	lw		x12, 4(x11)	# 698
	mul		x13, x30, x9	# 1671
	addi	x13, x13, 60548	# 1671
	fsw		f3, 0(x13)	# 1671
	mul		x13, x30, x9	# 1672
	addi	x13, x13, 60536	# 1672
	lw		x13, 0(x13)	# 1672
	sw		x29, 0(x2)	# 1672
	sw		x4, -4(x2)	# 1672
	fsw		f2, -8(x2)	# 1672
	fsw		f4, -12(x2)	# 1672
	sw		x5, -16(x2)	# 1672
	fsw		f1, -20(x2)	# 1672
	sw		x8, -24(x2)	# 1672
	sw		x10, -28(x2)	# 1672
	sw		x12, -32(x2)	# 1672
	sw		x7, -36(x2)	# 1672
	sw		x11, -40(x2)	# 1672
	sw		x9, -44(x2)	# 1672
	addi	x5, x13, 0
	addi	x4, x9, 0
	addi	x29, x6, 0
	addi	x6, x12, 0
	sw		x1, -48(x2)	# 1672
	addi	x2, x2, -52	# 1672
	lw		x31, 0(x29)	# 1672
	jalr	x1, x31, 0	# 1672
	addi	x2, x2, 52	# 1672
	lw		x1, -48(x2)	# 1672
	lw		x4, -44(x2)	# 1673
	mul		x5, x30, x4	# 1673
	addi	x5, x5, 60548	# 1673
	flw		f1, 0(x5)	# 1673
	fadd	f2, f0, f21	# 1675
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.30912	# 125
	addi	x5, x0, 0	# 1677
	jal		x0, fle_cont.30911	# 125
fle_else.30912:
	fadd	f2, f0, f22	# 1676
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30914	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.30913	# 125
fle_else.30914:
	addi	x5, x0, 1	# 125
fle_cont.30913:
fle_cont.30911:
	beq		x5, x4, beq_cont.30915	# 1846
	mul		x5, x30, x4	# 1847
	addi	x5, x5, 60564	# 1847
	lw		x5, 0(x5)	# 1847
	addi	x6, x0, 4	# 1847
	mul		x5, x5, x6	# 1847
	mul		x6, x30, x4	# 1847
	addi	x6, x6, 60544	# 1847
	lw		x6, 0(x6)	# 1847
	add		x5, x5, x6	# 1847
	lw		x6, -40(x2)	# 692
	lw		x7, 0(x6)	# 692
	beq		x5, x7, beq.30917	# 1848
	jal		x0, beq_cont.30916	# 1848
beq.30917:
	mul		x5, x30, x4	# 1850
	addi	x5, x5, 60536	# 1850
	lw		x5, 0(x5)	# 1850
	lw		x29, -36(x2)	# 1850
	sw		x1, -48(x2)	# 1850
	addi	x2, x2, -52	# 1850
	lw		x31, 0(x29)	# 1850
	jalr	x1, x31, 0	# 1850
	addi	x2, x2, 52	# 1850
	lw		x1, -48(x2)	# 1850
	lw		x5, -44(x2)	# 1850
	beq		x4, x5, beq.30919	# 1850
	jal		x0, beq_cont.30918	# 1850
beq.30919:
	lw		x4, -32(x2)	# 676
	lw		x6, 0(x4)	# 676
	mul		x7, x30, x5	# 329
	addi	x7, x7, 60568	# 329
	flw		f1, 0(x7)	# 329
	mul		x7, x30, x5	# 329
	add		x7, x6, x7	# 329
	flw		f2, 0(x7)	# 329
	fmul	f1, f1, f2	# 329
	lw		x7, -28(x2)	# 329
	mul		x8, x30, x7	# 329
	addi	x8, x8, 60568	# 329
	flw		f2, 0(x8)	# 329
	mul		x8, x30, x7	# 329
	add		x8, x6, x8	# 329
	flw		f3, 0(x8)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	lw		x8, -24(x2)	# 329
	mul		x9, x30, x8	# 329
	addi	x9, x9, 60568	# 329
	flw		f2, 0(x9)	# 329
	mul		x9, x30, x8	# 329
	add		x6, x6, x9	# 329
	flw		f3, 0(x6)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	lw		x6, -40(x2)	# 1854
	flw		f2, 8(x6)	# 1854
	flw		f3, -20(x2)	# 1854
	fmul	f4, f2, f3	# 1854
	fmul	f1, f4, f1	# 1854
	lw		x4, 0(x4)	# 676
	mul		x6, x30, x5	# 329
	lw		x9, -16(x2)	# 329
	add		x6, x9, x6	# 329
	flw		f4, 0(x6)	# 329
	mul		x6, x30, x5	# 329
	add		x6, x4, x6	# 329
	flw		f5, 0(x6)	# 329
	fmul	f4, f4, f5	# 329
	mul		x6, x30, x7	# 329
	add		x6, x9, x6	# 329
	flw		f5, 0(x6)	# 329
	mul		x6, x30, x7	# 329
	add		x6, x4, x6	# 329
	flw		f6, 0(x6)	# 329
	fmul	f5, f5, f6	# 329
	fadd	f4, f4, f5	# 329
	mul		x6, x30, x8	# 329
	add		x6, x9, x6	# 329
	flw		f5, 0(x6)	# 329
	mul		x6, x30, x8	# 329
	add		x4, x4, x6	# 329
	flw		f6, 0(x4)	# 329
	fmul	f5, f5, f6	# 329
	fadd	f4, f4, f5	# 329
	fmul	f2, f2, f4	# 1855
	flw		f4, -12(x2)	# 121
	fle		x31, f1, f4	# 121
	beq		x31, x0, fle_else.30921	# 121
	jal		x0, fle_cont.30920	# 121
fle_else.30921:
	mul		x4, x30, x5	# 339
	addi	x4, x4, 60604	# 339
	flw		f5, 0(x4)	# 339
	mul		x4, x30, x5	# 339
	addi	x4, x4, 60580	# 339
	flw		f6, 0(x4)	# 339
	fmul	f6, f1, f6	# 339
	fadd	f5, f5, f6	# 339
	mul		x4, x30, x5	# 339
	addi	x4, x4, 60604	# 339
	fsw		f5, 0(x4)	# 339
	mul		x4, x30, x7	# 340
	addi	x4, x4, 60604	# 340
	flw		f5, 0(x4)	# 340
	mul		x4, x30, x7	# 340
	addi	x4, x4, 60580	# 340
	flw		f6, 0(x4)	# 340
	fmul	f6, f1, f6	# 340
	fadd	f5, f5, f6	# 340
	mul		x4, x30, x7	# 340
	addi	x4, x4, 60604	# 340
	fsw		f5, 0(x4)	# 340
	mul		x4, x30, x8	# 341
	addi	x4, x4, 60604	# 341
	flw		f5, 0(x4)	# 341
	mul		x4, x30, x8	# 341
	addi	x4, x4, 60580	# 341
	flw		f6, 0(x4)	# 341
	fmul	f1, f1, f6	# 341
	fadd	f1, f5, f1	# 341
	mul		x4, x30, x8	# 341
	addi	x4, x4, 60604	# 341
	fsw		f1, 0(x4)	# 341
fle_cont.30920:
	fle		x31, f2, f4	# 121
	beq		x31, x0, fle_else.30923	# 121
	jal		x0, fle_cont.30922	# 121
fle_else.30923:
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -8(x2)	# 1831
	fmul	f1, f1, f2	# 1831
	mul		x4, x30, x5	# 1832
	addi	x4, x4, 60604	# 1832
	flw		f4, 0(x4)	# 1832
	fadd	f4, f4, f1	# 1832
	mul		x4, x30, x5	# 1832
	addi	x4, x4, 60604	# 1832
	fsw		f4, 0(x4)	# 1832
	mul		x4, x30, x7	# 1833
	addi	x4, x4, 60604	# 1833
	flw		f4, 0(x4)	# 1833
	fadd	f4, f4, f1	# 1833
	mul		x4, x30, x7	# 1833
	addi	x4, x4, 60604	# 1833
	fsw		f4, 0(x4)	# 1833
	mul		x4, x30, x8	# 1834
	addi	x4, x4, 60604	# 1834
	flw		f4, 0(x4)	# 1834
	fadd	f1, f4, f1	# 1834
	mul		x4, x30, x8	# 1834
	addi	x4, x4, 60604	# 1834
	fsw		f1, 0(x4)	# 1834
fle_cont.30922:
beq_cont.30918:
beq_cont.30916:
beq_cont.30915:
	lw		x4, -28(x2)	# 1860
	lw		x5, -4(x2)	# 1860
	sub		x4, x5, x4	# 1860
	flw		f1, -20(x2)	# 1860
	flw		f2, -8(x2)	# 1860
	lw		x5, -16(x2)	# 1860
	lw		x29, 0(x2)	# 1860
	lw		x31, 0(x29)	# 1860
	jalr	x0, x31, 0	# 1860
trace_ray.2910.17327:
	lw		x7, 68(x29)	# 1869
	lw		x8, 64(x29)	# 1869
	lw		x9, 60(x29)	# 1869
	lw		x10, 56(x29)	# 1869
	lw		x11, 52(x29)	# 1869
	lw		x12, 48(x29)	# 1869
	lw		x13, 44(x29)	# 1869
	lw		x14, 40(x29)	# 1869
	lw		x15, 36(x29)	# 1869
	lw		x16, 32(x29)	# 1869
	lw		x17, 28(x29)	# 1869
	lw		x18, 24(x29)	# 1869
	lw		x19, 20(x29)	# 1869
	lw		x20, 16(x29)	# 1869
	flw		f3, 12(x29)	# 1869
	flw		f4, 8(x29)	# 1869
	flw		f5, 4(x29)	# 1869
	addi	x21, x0, 4	# 1869
	ble		x4, x21, ble.30924	# 1869
	jalr	x0, x1, 0	# 1950
ble.30924:
	lw		x22, 8(x6)	# 614
	mul		x23, x30, x19	# 1580
	addi	x23, x23, 60548	# 1580
	fsw		f3, 0(x23)	# 1580
	mul		x23, x30, x19	# 1581
	addi	x23, x23, 60536	# 1581
	lw		x23, 0(x23)	# 1581
	sw		x29, 0(x2)	# 1581
	fsw		f2, -4(x2)	# 1581
	sw		x7, -8(x2)	# 1581
	sw		x11, -12(x2)	# 1581
	sw		x10, -16(x2)	# 1581
	sw		x6, -20(x2)	# 1581
	sw		x15, -24(x2)	# 1581
	sw		x21, -28(x2)	# 1581
	sw		x14, -32(x2)	# 1581
	sw		x18, -36(x2)	# 1581
	sw		x9, -40(x2)	# 1581
	fsw		f4, -44(x2)	# 1581
	sw		x13, -48(x2)	# 1581
	sw		x12, -52(x2)	# 1581
	fsw		f1, -56(x2)	# 1581
	fsw		f5, -60(x2)	# 1581
	sw		x16, -64(x2)	# 1581
	sw		x20, -68(x2)	# 1581
	sw		x5, -72(x2)	# 1581
	sw		x17, -76(x2)	# 1581
	sw		x22, -80(x2)	# 1581
	sw		x4, -84(x2)	# 1581
	sw		x19, -88(x2)	# 1581
	addi	x6, x5, 0
	addi	x4, x19, 0
	addi	x29, x8, 0
	addi	x5, x23, 0
	sw		x1, -92(x2)	# 1581
	addi	x2, x2, -96	# 1581
	lw		x31, 0(x29)	# 1581
	jalr	x1, x31, 0	# 1581
	addi	x2, x2, 96	# 1581
	lw		x1, -92(x2)	# 1581
	lw		x4, -88(x2)	# 1582
	mul		x5, x30, x4	# 1582
	addi	x5, x5, 60548	# 1582
	flw		f1, 0(x5)	# 1582
	fadd	f2, f0, f21	# 1584
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.30927	# 125
	addi	x5, x0, 0	# 1586
	jal		x0, fle_cont.30926	# 125
fle_else.30927:
	fadd	f2, f0, f22	# 1585
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30929	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.30928	# 125
fle_else.30929:
	addi	x5, x0, 1	# 125
fle_cont.30928:
fle_cont.30926:
	beq		x5, x4, beq.30930	# 1871
	mul		x5, x30, x4	# 1873
	addi	x5, x5, 60564	# 1873
	lw		x5, 0(x5)	# 1873
	mul		x6, x30, x5	# 1874
	addi	x6, x6, 60048	# 1874
	lw		x6, 0(x6)	# 1874
	lw		x7, 8(x6)	# 400
	lw		x8, 28(x6)	# 498
	mul		x9, x30, x4	# 503
	add		x8, x8, x9	# 503
	flw		f1, 0(x8)	# 503
	flw		f2, -56(x2)	# 1876
	fmul	f1, f1, f2	# 1876
	lw		x8, 4(x6)	# 390
	lw		x9, -68(x2)	# 1730
	beq		x8, x9, beq.30932	# 1730
	lw		x10, -64(x2)	# 1732
	beq		x8, x10, beq.30934	# 1732
	mul		x8, x30, x4	# 1707
	addi	x8, x8, 60552	# 1707
	flw		f3, 0(x8)	# 1707
	lw		x8, 20(x6)	# 468
	mul		x11, x30, x4	# 473
	add		x8, x8, x11	# 473
	flw		f4, 0(x8)	# 473
	fsub	f3, f3, f4	# 1707
	mul		x8, x30, x9	# 1708
	addi	x8, x8, 60552	# 1708
	flw		f4, 0(x8)	# 1708
	lw		x8, 20(x6)	# 478
	mul		x11, x30, x9	# 483
	add		x8, x8, x11	# 483
	flw		f5, 0(x8)	# 483
	fsub	f4, f4, f5	# 1708
	mul		x8, x30, x10	# 1709
	addi	x8, x8, 60552	# 1709
	flw		f5, 0(x8)	# 1709
	lw		x8, 20(x6)	# 488
	mul		x11, x30, x10	# 493
	add		x8, x8, x11	# 493
	flw		f6, 0(x8)	# 493
	fsub	f5, f5, f6	# 1709
	lw		x8, 16(x6)	# 428
	mul		x11, x30, x4	# 433
	add		x8, x8, x11	# 433
	flw		f6, 0(x8)	# 433
	fmul	f6, f3, f6	# 1711
	lw		x8, 16(x6)	# 438
	mul		x11, x30, x9	# 443
	add		x8, x8, x11	# 443
	flw		f7, 0(x8)	# 443
	fmul	f7, f4, f7	# 1712
	lw		x8, 16(x6)	# 448
	mul		x11, x30, x10	# 453
	add		x8, x8, x11	# 453
	flw		f8, 0(x8)	# 453
	fmul	f8, f5, f8	# 1713
	lw		x8, 12(x6)	# 419
	beq		x8, x4, beq.30936	# 1715
	lw		x8, 36(x6)	# 568
	mul		x11, x30, x10	# 573
	add		x8, x8, x11	# 573
	flw		f9, 0(x8)	# 573
	fmul	f9, f4, f9	# 1720
	lw		x8, 36(x6)	# 558
	mul		x11, x30, x9	# 563
	add		x8, x8, x11	# 563
	flw		f10, 0(x8)	# 563
	fmul	f10, f5, f10	# 1720
	fadd	f9, f9, f10	# 1720
	fadd	f10, f0, f26	# 126
	fmul	f9, f9, f10	# 126
	fadd	f6, f6, f9	# 1720
	mul		x8, x30, x4	# 1720
	addi	x8, x8, 60568	# 1720
	fsw		f6, 0(x8)	# 1720
	lw		x8, 36(x6)	# 568
	mul		x11, x30, x10	# 573
	add		x8, x8, x11	# 573
	flw		f6, 0(x8)	# 573
	fmul	f6, f3, f6	# 1721
	lw		x8, 36(x6)	# 548
	mul		x11, x30, x4	# 553
	add		x8, x8, x11	# 553
	flw		f9, 0(x8)	# 553
	fmul	f5, f5, f9	# 1721
	fadd	f5, f6, f5	# 1721
	fmul	f5, f5, f10	# 126
	fadd	f5, f7, f5	# 1721
	mul		x8, x30, x9	# 1721
	addi	x8, x8, 60568	# 1721
	fsw		f5, 0(x8)	# 1721
	lw		x8, 36(x6)	# 558
	mul		x11, x30, x9	# 563
	add		x8, x8, x11	# 563
	flw		f5, 0(x8)	# 563
	fmul	f3, f3, f5	# 1722
	lw		x8, 36(x6)	# 548
	mul		x11, x30, x4	# 553
	add		x8, x8, x11	# 553
	flw		f5, 0(x8)	# 553
	fmul	f4, f4, f5	# 1722
	fadd	f3, f3, f4	# 1722
	fmul	f3, f3, f10	# 126
	fadd	f3, f8, f3	# 1722
	mul		x8, x30, x10	# 1722
	addi	x8, x8, 60568	# 1722
	fsw		f3, 0(x8)	# 1722
	jal		x0, beq_cont.30935	# 1715
beq.30936:
	mul		x8, x30, x4	# 1716
	addi	x8, x8, 60568	# 1716
	fsw		f6, 0(x8)	# 1716
	mul		x8, x30, x9	# 1717
	addi	x8, x8, 60568	# 1717
	fsw		f7, 0(x8)	# 1717
	mul		x8, x30, x10	# 1718
	addi	x8, x8, 60568	# 1718
	fsw		f8, 0(x8)	# 1718
beq_cont.30935:
	lw		x8, 24(x6)	# 410
	mul		x11, x30, x4	# 320
	addi	x11, x11, 60568	# 320
	flw		f3, 0(x11)	# 320
	fmul	f3, f3, f3	# 127
	mul		x11, x30, x9	# 320
	addi	x11, x11, 60568	# 320
	flw		f4, 0(x11)	# 320
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 320
	mul		x11, x30, x10	# 320
	addi	x11, x11, 60568	# 320
	flw		f4, 0(x11)	# 320
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 320
	fsqrt	f3, f3	# 320
	flw		f4, -60(x2)	# 120
	feq		x31, f3, f4	# 120
	beq		x31, x0, feq_else.30938	# 120
	fadd	f3, f0, f16	# 321
	jal		x0, feq_cont.30937	# 120
feq_else.30938:
	beq		x8, x4, beq.30940	# 321
	lui		x8, %hi(l.25043)	# 321
	ori		x8, x0, %lo(l.25043)	# 321
	flw		f5, 0(x8)	# 321
	fdiv	f3, f5, f3	# 321
	jal		x0, beq_cont.30939	# 321
beq.30940:
	fadd	f5, f0, f16	# 321
	fdiv	f3, f5, f3	# 321
beq_cont.30939:
feq_cont.30937:
	mul		x8, x30, x4	# 322
	addi	x8, x8, 60568	# 322
	flw		f5, 0(x8)	# 322
	fmul	f5, f5, f3	# 322
	mul		x8, x30, x4	# 322
	addi	x8, x8, 60568	# 322
	fsw		f5, 0(x8)	# 322
	mul		x8, x30, x9	# 323
	addi	x8, x8, 60568	# 323
	flw		f5, 0(x8)	# 323
	fmul	f5, f5, f3	# 323
	mul		x8, x30, x9	# 323
	addi	x8, x8, 60568	# 323
	fsw		f5, 0(x8)	# 323
	mul		x8, x30, x10	# 324
	addi	x8, x8, 60568	# 324
	flw		f5, 0(x8)	# 324
	fmul	f3, f5, f3	# 324
	mul		x8, x30, x10	# 324
	addi	x8, x8, 60568	# 324
	fsw		f3, 0(x8)	# 324
	jal		x0, beq_cont.30933	# 1732
beq.30934:
	lw		x8, 16(x6)	# 428
	mul		x11, x30, x4	# 433
	add		x8, x8, x11	# 433
	flw		f3, 0(x8)	# 433
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x4	# 1700
	addi	x8, x8, 60568	# 1700
	fsw		f3, 0(x8)	# 1700
	lw		x8, 16(x6)	# 438
	mul		x11, x30, x9	# 443
	add		x8, x8, x11	# 443
	flw		f3, 0(x8)	# 443
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x9	# 1701
	addi	x8, x8, 60568	# 1701
	fsw		f3, 0(x8)	# 1701
	lw		x8, 16(x6)	# 448
	mul		x11, x30, x10	# 453
	add		x8, x8, x11	# 453
	flw		f3, 0(x8)	# 453
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x10	# 1702
	addi	x8, x8, 60568	# 1702
	fsw		f3, 0(x8)	# 1702
beq_cont.30933:
	jal		x0, beq_cont.30931	# 1730
beq.30932:
	mul		x8, x30, x4	# 1691
	addi	x8, x8, 60544	# 1691
	lw		x8, 0(x8)	# 1691
	mul		x10, x30, x4	# 284
	addi	x10, x10, 60568	# 284
	flw		f3, -60(x2)	# 284
	fsw		f3, 0(x10)	# 284
	mul		x10, x30, x9	# 285
	addi	x10, x10, 60568	# 285
	fsw		f3, 0(x10)	# 285
	lw		x10, -64(x2)	# 286
	mul		x11, x30, x10	# 286
	addi	x11, x11, 60568	# 286
	fsw		f3, 0(x11)	# 286
	sub		x8, x8, x9	# 1694
	mul		x11, x30, x8	# 1694
	lw		x12, -72(x2)	# 1694
	add		x11, x12, x11	# 1694
	flw		f4, 0(x11)	# 1694
	feq		x31, f4, f3	# 120
	beq		x31, x0, feq_else.30942	# 120
	fadd	f4, f0, f3	# 249
	jal		x0, feq_cont.30941	# 120
feq_else.30942:
	fle		x31, f4, f3	# 121
	beq		x31, x0, fle_else.30944	# 121
	lui		x11, %hi(l.25043)	# 251
	ori		x11, x0, %lo(l.25043)	# 251
	flw		f4, 0(x11)	# 251
	jal		x0, fle_cont.30943	# 121
fle_else.30944:
	fadd	f4, f0, f16	# 250
fle_cont.30943:
feq_cont.30941:
	fsub	f4, f0, f4	# 123
	mul		x8, x30, x8	# 1694
	addi	x8, x8, 60568	# 1694
	fsw		f4, 0(x8)	# 1694
beq_cont.30931:
	mul		x8, x30, x4	# 296
	addi	x8, x8, 60552	# 296
	flw		f3, 0(x8)	# 296
	mul		x8, x30, x4	# 296
	addi	x8, x8, 60636	# 296
	fsw		f3, 0(x8)	# 296
	mul		x8, x30, x9	# 297
	addi	x8, x8, 60552	# 297
	flw		f3, 0(x8)	# 297
	mul		x8, x30, x9	# 297
	addi	x8, x8, 60636	# 297
	fsw		f3, 0(x8)	# 297
	mul		x8, x30, x10	# 298
	addi	x8, x8, 60552	# 298
	flw		f3, 0(x8)	# 298
	mul		x8, x30, x10	# 298
	addi	x8, x8, 60636	# 298
	fsw		f3, 0(x8)	# 298
	lw		x8, 0(x6)	# 380
	lw		x11, 32(x6)	# 518
	mul		x12, x30, x4	# 523
	add		x11, x11, x12	# 523
	flw		f3, 0(x11)	# 523
	mul		x11, x30, x4	# 1747
	addi	x11, x11, 60580	# 1747
	fsw		f3, 0(x11)	# 1747
	lw		x11, 32(x6)	# 528
	mul		x12, x30, x9	# 533
	add		x11, x11, x12	# 533
	flw		f3, 0(x11)	# 533
	mul		x11, x30, x9	# 1748
	addi	x11, x11, 60580	# 1748
	fsw		f3, 0(x11)	# 1748
	lw		x11, 32(x6)	# 538
	mul		x12, x30, x10	# 543
	add		x11, x11, x12	# 543
	flw		f3, 0(x11)	# 543
	mul		x11, x30, x10	# 1749
	addi	x11, x11, 60580	# 1749
	fsw		f3, 0(x11)	# 1749
	sw		x7, -92(x2)	# 1750
	fsw		f1, -96(x2)	# 1750
	sw		x6, -100(x2)	# 1750
	sw		x5, -104(x2)	# 1750
	beq		x8, x9, beq.30946	# 1750
	beq		x8, x10, beq.30948	# 1768
	lw		x11, -36(x2)	# 1775
	beq		x8, x11, beq.30950	# 1775
	lw		x11, -28(x2)	# 1786
	beq		x8, x11, beq.30952	# 1786
	jal		x0, beq_cont.30951	# 1786
beq.30952:
	mul		x8, x30, x4	# 1788
	addi	x8, x8, 60552	# 1788
	flw		f3, 0(x8)	# 1788
	lw		x8, 20(x6)	# 468
	mul		x12, x30, x4	# 473
	add		x8, x8, x12	# 473
	flw		f4, 0(x8)	# 473
	fsub	f3, f3, f4	# 1788
	lw		x8, 16(x6)	# 428
	mul		x12, x30, x4	# 433
	add		x8, x8, x12	# 433
	flw		f4, 0(x8)	# 433
	fsqrt	f4, f4	# 1788
	fmul	f3, f3, f4	# 1788
	mul		x8, x30, x10	# 1789
	addi	x8, x8, 60552	# 1789
	flw		f4, 0(x8)	# 1789
	lw		x8, 20(x6)	# 488
	mul		x12, x30, x10	# 493
	add		x8, x8, x12	# 493
	flw		f5, 0(x8)	# 493
	fsub	f4, f4, f5	# 1789
	lw		x8, 16(x6)	# 448
	mul		x12, x30, x10	# 453
	add		x8, x8, x12	# 453
	flw		f5, 0(x8)	# 453
	fsqrt	f5, f5	# 1789
	fmul	f4, f4, f5	# 1789
	fmul	f5, f3, f3	# 127
	fmul	f6, f4, f4	# 127
	fadd	f5, f5, f6	# 1790
	flw		f6, -60(x2)	# 124
	fle		x31, f3, f6	# 124
	beq		x31, x0, fle_else.30954	# 124
	fsub	f7, f0, f3	# 124
	jal		x0, fle_cont.30953	# 124
fle_else.30954:
	fadd	f7, f0, f3	# 124
fle_cont.30953:
	lui		x8, %hi(l.26207)	# 1792
	ori		x8, x0, %lo(l.26207)	# 1792
	flw		f8, 0(x8)	# 1792
	fsw		f8, -108(x2)	# 125
	fsw		f5, -112(x2)	# 125
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.30956	# 125
	fdiv	f3, f4, f3	# 1795
	fle		x31, f3, f6	# 124
	beq		x31, x0, fle_cont.30957	# 124
	fsub	f3, f0, f3	# 124
fle_cont.30957:
	lw		x29, -24(x2)	# 1797
	fadd	f1, f0, f3
	sw		x1, -116(x2)	# 1797
	addi	x2, x2, -120	# 1797
	lw		x31, 0(x29)	# 1797
	jalr	x1, x31, 0	# 1797
	addi	x2, x2, 120	# 1797
	lw		x1, -116(x2)	# 1797
	lui		x4, %hi(l.26211)	# 1797
	ori		x4, x0, %lo(l.26211)	# 1797
	flw		f2, 0(x4)	# 1797
	fmul	f1, f1, f2	# 1797
	fadd	f2, f0, f29	# 1797
	fdiv	f1, f1, f2	# 1797
	jal		x0, fle_cont.30955	# 125
fle_else.30956:
	lui		x8, %hi(l.26209)	# 1793
	ori		x8, x0, %lo(l.26209)	# 1793
	flw		f1, 0(x8)	# 1793
fle_cont.30955:
	fadd	f2, f0, f26	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -88(x2)	# 153
	lw		x29, -52(x2)	# 153
	fsw		f2, -116(x2)	# 153
	fsw		f1, -120(x2)	# 153
	fadd	f1, f0, f3
	sw		x1, -124(x2)	# 153
	addi	x2, x2, -128	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 128	# 153
	lw		x1, -124(x2)	# 153
	lw		x29, -48(x2)	# 166
	sw		x1, -124(x2)	# 166
	addi	x2, x2, -128	# 166
	lw		x31, 0(x29)	# 166
	jalr	x1, x31, 0	# 166
	addi	x2, x2, 128	# 166
	lw		x1, -124(x2)	# 166
	flw		f2, -120(x2)	# 1799
	fsub	f1, f2, f1	# 1799
	lw		x4, -68(x2)	# 1801
	mul		x5, x30, x4	# 1801
	addi	x5, x5, 60552	# 1801
	flw		f2, 0(x5)	# 1801
	lw		x5, -100(x2)	# 478
	lw		x6, 20(x5)	# 478
	mul		x7, x30, x4	# 483
	add		x6, x6, x7	# 483
	flw		f3, 0(x6)	# 483
	fsub	f2, f2, f3	# 1801
	lw		x6, 16(x5)	# 438
	mul		x7, x30, x4	# 443
	add		x6, x6, x7	# 443
	flw		f3, 0(x6)	# 443
	fsqrt	f3, f3	# 1801
	fmul	f2, f2, f3	# 1801
	flw		f3, -60(x2)	# 124
	flw		f4, -112(x2)	# 124
	fle		x31, f4, f3	# 124
	beq		x31, x0, fle_else.30959	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.30958	# 124
fle_else.30959:
	fadd	f5, f0, f4	# 124
fle_cont.30958:
	flw		f6, -108(x2)	# 125
	fsw		f1, -124(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.30961	# 125
	fdiv	f2, f2, f4	# 1806
	fle		x31, f2, f3	# 124
	beq		x31, x0, fle_cont.30962	# 124
	fsub	f2, f0, f2	# 124
fle_cont.30962:
	lw		x29, -24(x2)	# 1807
	fadd	f1, f0, f2
	sw		x1, -128(x2)	# 1807
	addi	x2, x2, -132	# 1807
	lw		x31, 0(x29)	# 1807
	jalr	x1, x31, 0	# 1807
	addi	x2, x2, 132	# 1807
	lw		x1, -128(x2)	# 1807
	lui		x4, %hi(l.26211)	# 1807
	ori		x4, x0, %lo(l.26211)	# 1807
	flw		f2, 0(x4)	# 1807
	fmul	f1, f1, f2	# 1807
	fadd	f2, f0, f29	# 1807
	fdiv	f1, f1, f2	# 1807
	jal		x0, fle_cont.30960	# 125
fle_else.30961:
	lui		x6, %hi(l.26209)	# 1804
	ori		x6, x0, %lo(l.26209)	# 1804
	flw		f1, 0(x6)	# 1804
fle_cont.30960:
	flw		f2, -116(x2)	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -88(x2)	# 153
	lw		x29, -52(x2)	# 153
	fsw		f1, -128(x2)	# 153
	fadd	f1, f0, f3
	sw		x1, -132(x2)	# 153
	addi	x2, x2, -136	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 136	# 153
	lw		x1, -132(x2)	# 153
	lw		x29, -48(x2)	# 166
	sw		x1, -132(x2)	# 166
	addi	x2, x2, -136	# 166
	lw		x31, 0(x29)	# 166
	jalr	x1, x31, 0	# 166
	addi	x2, x2, 136	# 166
	lw		x1, -132(x2)	# 166
	flw		f2, -128(x2)	# 1809
	fsub	f1, f2, f1	# 1809
	fadd	f2, f0, f30	# 1810
	flw		f3, -124(x2)	# 1810
	flw		f4, -116(x2)	# 1810
	fsub	f3, f4, f3	# 1810
	fmul	f3, f3, f3	# 127
	fsub	f2, f2, f3	# 1810
	fsub	f1, f4, f1	# 1810
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1810
	flw		f2, -60(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.30964	# 122
	jal		x0, fle_cont.30963	# 122
fle_else.30964:
	fadd	f1, f0, f2	# 1811
fle_cont.30963:
	flw		f3, -44(x2)	# 1812
	fmul	f1, f3, f1	# 1812
	lui		x4, %hi(l.26227)	# 1812
	ori		x4, x0, %lo(l.26227)	# 1812
	flw		f3, 0(x4)	# 1812
	fdiv	f1, f1, f3	# 1812
	lw		x4, -64(x2)	# 1812
	mul		x5, x30, x4	# 1812
	addi	x5, x5, 60580	# 1812
	fsw		f1, 0(x5)	# 1812
beq_cont.30951:
	jal		x0, beq_cont.30949	# 1775
beq.30950:
	mul		x8, x30, x4	# 1778
	addi	x8, x8, 60552	# 1778
	flw		f3, 0(x8)	# 1778
	lw		x8, 20(x6)	# 468
	mul		x11, x30, x4	# 473
	add		x8, x8, x11	# 473
	flw		f4, 0(x8)	# 473
	fsub	f3, f3, f4	# 1778
	mul		x8, x30, x10	# 1779
	addi	x8, x8, 60552	# 1779
	flw		f4, 0(x8)	# 1779
	lw		x8, 20(x6)	# 488
	mul		x11, x30, x10	# 493
	add		x8, x8, x11	# 493
	flw		f5, 0(x8)	# 493
	fsub	f4, f4, f5	# 1779
	fmul	f3, f3, f3	# 127
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 1780
	fsqrt	f3, f3	# 1780
	lui		x8, %hi(l.26239)	# 1780
	ori		x8, x0, %lo(l.26239)	# 1780
	flw		f4, 0(x8)	# 1780
	fdiv	f3, f3, f4	# 1780
	fadd	f4, f0, f26	# 166
	fsub	f4, f3, f4	# 166
	lw		x29, -52(x2)	# 153
	fsw		f3, -132(x2)	# 153
	fadd	f1, f0, f4
	sw		x1, -136(x2)	# 153
	addi	x2, x2, -140	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 140	# 153
	lw		x1, -136(x2)	# 153
	lw		x29, -48(x2)	# 166
	sw		x1, -136(x2)	# 166
	addi	x2, x2, -140	# 166
	lw		x31, 0(x29)	# 166
	jalr	x1, x31, 0	# 166
	addi	x2, x2, 140	# 166
	lw		x1, -136(x2)	# 166
	flw		f2, -132(x2)	# 1781
	fsub	f1, f2, f1	# 1781
	fadd	f2, f0, f29	# 1781
	fmul	f1, f1, f2	# 1781
	lw		x29, -32(x2)	# 1782
	sw		x1, -136(x2)	# 1782
	addi	x2, x2, -140	# 1782
	lw		x31, 0(x29)	# 1782
	jalr	x1, x31, 0	# 1782
	addi	x2, x2, 140	# 1782
	lw		x1, -136(x2)	# 1782
	fmul	f1, f1, f1	# 127
	flw		f2, -44(x2)	# 1783
	fmul	f3, f1, f2	# 1783
	lw		x4, -68(x2)	# 1783
	mul		x5, x30, x4	# 1783
	addi	x5, x5, 60580	# 1783
	fsw		f3, 0(x5)	# 1783
	fadd	f3, f0, f16	# 1784
	fsub	f1, f3, f1	# 1784
	fmul	f1, f1, f2	# 1784
	lw		x5, -64(x2)	# 1784
	mul		x6, x30, x5	# 1784
	addi	x6, x6, 60580	# 1784
	fsw		f1, 0(x6)	# 1784
beq_cont.30949:
	jal		x0, beq_cont.30947	# 1768
beq.30948:
	mul		x8, x30, x9	# 1771
	addi	x8, x8, 60552	# 1771
	flw		f3, 0(x8)	# 1771
	lui		x8, %hi(l.26250)	# 1771
	ori		x8, x0, %lo(l.26250)	# 1771
	flw		f4, 0(x8)	# 1771
	fmul	f3, f3, f4	# 1771
	lw		x29, -40(x2)	# 1771
	fadd	f1, f0, f3
	sw		x1, -136(x2)	# 1771
	addi	x2, x2, -140	# 1771
	lw		x31, 0(x29)	# 1771
	jalr	x1, x31, 0	# 1771
	addi	x2, x2, 140	# 1771
	lw		x1, -136(x2)	# 1771
	fmul	f1, f1, f1	# 127
	flw		f2, -44(x2)	# 1772
	fmul	f3, f2, f1	# 1772
	lw		x4, -88(x2)	# 1772
	mul		x5, x30, x4	# 1772
	addi	x5, x5, 60580	# 1772
	fsw		f3, 0(x5)	# 1772
	fadd	f3, f0, f16	# 1773
	fsub	f1, f3, f1	# 1773
	fmul	f1, f2, f1	# 1773
	lw		x5, -68(x2)	# 1773
	mul		x6, x30, x5	# 1773
	addi	x6, x6, 60580	# 1773
	fsw		f1, 0(x6)	# 1773
beq_cont.30947:
	jal		x0, beq_cont.30945	# 1750
beq.30946:
	mul		x8, x30, x4	# 1753
	addi	x8, x8, 60552	# 1753
	flw		f3, 0(x8)	# 1753
	lw		x8, 20(x6)	# 468
	mul		x11, x30, x4	# 473
	add		x8, x8, x11	# 473
	flw		f4, 0(x8)	# 473
	fsub	f3, f3, f4	# 1753
	lui		x8, %hi(l.26261)	# 1755
	ori		x8, x0, %lo(l.26261)	# 1755
	flw		f4, 0(x8)	# 1755
	fmul	f5, f3, f4	# 1755
	fadd	f6, f0, f26	# 166
	fsub	f5, f5, f6	# 166
	lw		x29, -52(x2)	# 153
	fsw		f6, -136(x2)	# 153
	fsw		f4, -140(x2)	# 153
	fsw		f3, -144(x2)	# 153
	fadd	f1, f0, f5
	sw		x1, -148(x2)	# 153
	addi	x2, x2, -152	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 152	# 153
	lw		x1, -148(x2)	# 153
	lw		x29, -48(x2)	# 166
	sw		x1, -148(x2)	# 166
	addi	x2, x2, -152	# 166
	lw		x31, 0(x29)	# 166
	jalr	x1, x31, 0	# 166
	addi	x2, x2, 152	# 166
	lw		x1, -148(x2)	# 166
	lui		x4, %hi(l.26264)	# 1755
	ori		x4, x0, %lo(l.26264)	# 1755
	flw		f2, 0(x4)	# 1755
	fmul	f1, f1, f2	# 1755
	flw		f3, -144(x2)	# 1756
	fsub	f1, f3, f1	# 1756
	lui		x4, %hi(l.26239)	# 1756
	ori		x4, x0, %lo(l.26239)	# 1756
	flw		f3, 0(x4)	# 1756
	lw		x4, -64(x2)	# 1758
	mul		x5, x30, x4	# 1758
	addi	x5, x5, 60552	# 1758
	flw		f4, 0(x5)	# 1758
	lw		x5, -100(x2)	# 488
	lw		x6, 20(x5)	# 488
	mul		x7, x30, x4	# 493
	add		x6, x6, x7	# 493
	flw		f5, 0(x6)	# 493
	fsub	f4, f4, f5	# 1758
	flw		f5, -140(x2)	# 1760
	fmul	f5, f4, f5	# 1760
	flw		f6, -136(x2)	# 166
	fsub	f5, f5, f6	# 166
	lw		x6, -88(x2)	# 153
	lw		x29, -52(x2)	# 153
	fsw		f1, -148(x2)	# 153
	fsw		f3, -152(x2)	# 153
	fsw		f4, -156(x2)	# 153
	fsw		f2, -160(x2)	# 153
	addi	x4, x6, 0
	fadd	f1, f0, f5
	sw		x1, -164(x2)	# 153
	addi	x2, x2, -168	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 168	# 153
	lw		x1, -164(x2)	# 153
	lw		x29, -48(x2)	# 166
	sw		x1, -164(x2)	# 166
	addi	x2, x2, -168	# 166
	lw		x31, 0(x29)	# 166
	jalr	x1, x31, 0	# 166
	addi	x2, x2, 168	# 166
	lw		x1, -164(x2)	# 166
	flw		f2, -160(x2)	# 1760
	fmul	f1, f1, f2	# 1760
	flw		f2, -156(x2)	# 1761
	fsub	f1, f2, f1	# 1761
	flw		f2, -148(x2)	# 125
	flw		f3, -152(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.30966	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.30968	# 125
	flw		f1, -44(x2)	# 1766
	jal		x0, fle_cont.30967	# 125
fle_else.30968:
	flw		f1, -60(x2)	# 1766
fle_cont.30967:
	jal		x0, fle_cont.30965	# 125
fle_else.30966:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.30970	# 125
	flw		f1, -60(x2)	# 1765
	jal		x0, fle_cont.30969	# 125
fle_else.30970:
	flw		f1, -44(x2)	# 1765
fle_cont.30969:
fle_cont.30965:
	lw		x4, -68(x2)	# 1763
	mul		x5, x30, x4	# 1763
	addi	x5, x5, 60580	# 1763
	fsw		f1, 0(x5)	# 1763
beq_cont.30945:
	lw		x4, -28(x2)	# 1883
	lw		x5, -104(x2)	# 1883
	mul		x5, x5, x4	# 1883
	lw		x6, -88(x2)	# 1883
	mul		x7, x30, x6	# 1883
	addi	x7, x7, 60544	# 1883
	lw		x7, 0(x7)	# 1883
	add		x5, x5, x7	# 1883
	lw		x7, -84(x2)	# 1883
	mul		x8, x30, x7	# 1883
	lw		x9, -80(x2)	# 1883
	add		x8, x9, x8	# 1883
	sw		x5, 0(x8)	# 1883
	lw		x5, -20(x2)	# 606
	lw		x8, 4(x5)	# 606
	mul		x10, x30, x7	# 1885
	add		x8, x8, x10	# 1885
	lw		x8, 0(x8)	# 1885
	mul		x10, x30, x6	# 296
	addi	x10, x10, 60552	# 296
	flw		f1, 0(x10)	# 296
	mul		x10, x30, x6	# 296
	add		x10, x8, x10	# 296
	fsw		f1, 0(x10)	# 296
	lw		x10, -68(x2)	# 297
	mul		x11, x30, x10	# 297
	addi	x11, x11, 60552	# 297
	flw		f1, 0(x11)	# 297
	mul		x11, x30, x10	# 297
	add		x11, x8, x11	# 297
	fsw		f1, 0(x11)	# 297
	lw		x11, -64(x2)	# 298
	mul		x12, x30, x11	# 298
	addi	x12, x12, 60552	# 298
	flw		f1, 0(x12)	# 298
	mul		x12, x30, x11	# 298
	add		x8, x8, x12	# 298
	fsw		f1, 0(x8)	# 298
	lw		x8, 12(x5)	# 621
	lw		x12, -100(x2)	# 498
	lw		x13, 28(x12)	# 498
	mul		x14, x30, x6	# 503
	add		x13, x13, x14	# 503
	flw		f1, 0(x13)	# 503
	fadd	f2, f0, f26	# 1889
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30972	# 125
	mul		x13, x30, x7	# 1892
	add		x8, x8, x13	# 1892
	sw		x10, 0(x8)	# 1892
	lw		x8, 16(x5)	# 628
	mul		x13, x30, x7	# 1894
	add		x13, x8, x13	# 1894
	lw		x13, 0(x13)	# 1894
	mul		x14, x30, x6	# 296
	addi	x14, x14, 60580	# 296
	flw		f1, 0(x14)	# 296
	mul		x14, x30, x6	# 296
	add		x14, x13, x14	# 296
	fsw		f1, 0(x14)	# 296
	mul		x14, x30, x10	# 297
	addi	x14, x14, 60580	# 297
	flw		f1, 0(x14)	# 297
	mul		x14, x30, x10	# 297
	add		x14, x13, x14	# 297
	fsw		f1, 0(x14)	# 297
	mul		x14, x30, x11	# 298
	addi	x14, x14, 60580	# 298
	flw		f1, 0(x14)	# 298
	mul		x14, x30, x11	# 298
	add		x13, x13, x14	# 298
	fsw		f1, 0(x13)	# 298
	mul		x13, x30, x7	# 1895
	add		x8, x8, x13	# 1895
	lw		x8, 0(x8)	# 1895
	lui		x13, %hi(l.26314)	# 1895
	ori		x13, x0, %lo(l.26314)	# 1895
	flw		f1, 0(x13)	# 1895
	flw		f2, -96(x2)	# 1895
	fmul	f1, f1, f2	# 1895
	mul		x13, x30, x6	# 362
	add		x13, x8, x13	# 362
	flw		f3, 0(x13)	# 362
	fmul	f3, f3, f1	# 362
	mul		x13, x30, x6	# 362
	add		x13, x8, x13	# 362
	fsw		f3, 0(x13)	# 362
	mul		x13, x30, x10	# 363
	add		x13, x8, x13	# 363
	flw		f3, 0(x13)	# 363
	fmul	f3, f3, f1	# 363
	mul		x13, x30, x10	# 363
	add		x13, x8, x13	# 363
	fsw		f3, 0(x13)	# 363
	mul		x13, x30, x11	# 364
	add		x13, x8, x13	# 364
	flw		f3, 0(x13)	# 364
	fmul	f1, f3, f1	# 364
	mul		x13, x30, x11	# 364
	add		x8, x8, x13	# 364
	fsw		f1, 0(x8)	# 364
	lw		x8, 28(x5)	# 665
	mul		x13, x30, x7	# 1897
	add		x8, x8, x13	# 1897
	lw		x8, 0(x8)	# 1897
	mul		x13, x30, x6	# 296
	addi	x13, x13, 60568	# 296
	flw		f1, 0(x13)	# 296
	mul		x13, x30, x6	# 296
	add		x13, x8, x13	# 296
	fsw		f1, 0(x13)	# 296
	mul		x13, x30, x10	# 297
	addi	x13, x13, 60568	# 297
	flw		f1, 0(x13)	# 297
	mul		x13, x30, x10	# 297
	add		x13, x8, x13	# 297
	fsw		f1, 0(x13)	# 297
	mul		x13, x30, x11	# 298
	addi	x13, x13, 60568	# 298
	flw		f1, 0(x13)	# 298
	mul		x13, x30, x11	# 298
	add		x8, x8, x13	# 298
	fsw		f1, 0(x8)	# 298
	jal		x0, fle_cont.30971	# 125
fle_else.30972:
	mul		x13, x30, x7	# 1890
	add		x8, x8, x13	# 1890
	sw		x6, 0(x8)	# 1890
fle_cont.30971:
	lui		x8, %hi(l.26342)	# 1900
	ori		x8, x0, %lo(l.26342)	# 1900
	flw		f1, 0(x8)	# 1900
	mul		x8, x30, x6	# 329
	lw		x13, -72(x2)	# 329
	add		x8, x13, x8	# 329
	flw		f2, 0(x8)	# 329
	mul		x8, x30, x6	# 329
	addi	x8, x8, 60568	# 329
	flw		f3, 0(x8)	# 329
	fmul	f4, f2, f3	# 329
	mul		x8, x30, x10	# 329
	add		x8, x13, x8	# 329
	flw		f5, 0(x8)	# 329
	mul		x8, x30, x10	# 329
	addi	x8, x8, 60568	# 329
	flw		f6, 0(x8)	# 329
	fmul	f5, f5, f6	# 329
	fadd	f4, f4, f5	# 329
	mul		x8, x30, x11	# 329
	add		x8, x13, x8	# 329
	flw		f5, 0(x8)	# 329
	mul		x8, x30, x11	# 329
	addi	x8, x8, 60568	# 329
	flw		f6, 0(x8)	# 329
	fmul	f5, f5, f6	# 329
	fadd	f4, f4, f5	# 329
	fmul	f1, f1, f4	# 1900
	fmul	f3, f1, f3	# 339
	fadd	f2, f2, f3	# 339
	mul		x8, x30, x6	# 339
	add		x8, x13, x8	# 339
	fsw		f2, 0(x8)	# 339
	mul		x8, x30, x10	# 340
	add		x8, x13, x8	# 340
	flw		f2, 0(x8)	# 340
	mul		x8, x30, x10	# 340
	addi	x8, x8, 60568	# 340
	flw		f3, 0(x8)	# 340
	fmul	f3, f1, f3	# 340
	fadd	f2, f2, f3	# 340
	mul		x8, x30, x10	# 340
	add		x8, x13, x8	# 340
	fsw		f2, 0(x8)	# 340
	mul		x8, x30, x11	# 341
	add		x8, x13, x8	# 341
	flw		f2, 0(x8)	# 341
	mul		x8, x30, x11	# 341
	addi	x8, x8, 60568	# 341
	flw		f3, 0(x8)	# 341
	fmul	f1, f1, f3	# 341
	fadd	f1, f2, f1	# 341
	mul		x8, x30, x11	# 341
	add		x8, x13, x8	# 341
	fsw		f1, 0(x8)	# 341
	lw		x8, 28(x12)	# 508
	mul		x14, x30, x10	# 513
	add		x8, x8, x14	# 513
	flw		f1, 0(x8)	# 513
	flw		f2, -56(x2)	# 1904
	fmul	f1, f2, f1	# 1904
	mul		x8, x30, x6	# 1907
	addi	x8, x8, 60536	# 1907
	lw		x8, 0(x8)	# 1907
	lw		x29, -16(x2)	# 1907
	fsw		f1, -164(x2)	# 1907
	addi	x5, x8, 0
	addi	x4, x6, 0
	sw		x1, -168(x2)	# 1907
	addi	x2, x2, -172	# 1907
	lw		x31, 0(x29)	# 1907
	jalr	x1, x31, 0	# 1907
	addi	x2, x2, 172	# 1907
	lw		x1, -168(x2)	# 1907
	lw		x5, -88(x2)	# 1907
	beq		x4, x5, beq.30974	# 1907
	jal		x0, beq_cont.30973	# 1907
beq.30974:
	mul		x4, x30, x5	# 329
	addi	x4, x4, 60568	# 329
	flw		f1, 0(x4)	# 329
	mul		x4, x30, x5	# 329
	addi	x4, x4, 60312	# 329
	flw		f2, 0(x4)	# 329
	fmul	f1, f1, f2	# 329
	lw		x4, -68(x2)	# 329
	mul		x6, x30, x4	# 329
	addi	x6, x6, 60568	# 329
	flw		f3, 0(x6)	# 329
	mul		x6, x30, x4	# 329
	addi	x6, x6, 60312	# 329
	flw		f4, 0(x6)	# 329
	fmul	f3, f3, f4	# 329
	fadd	f1, f1, f3	# 329
	lw		x6, -64(x2)	# 329
	mul		x7, x30, x6	# 329
	addi	x7, x7, 60568	# 329
	flw		f3, 0(x7)	# 329
	mul		x7, x30, x6	# 329
	addi	x7, x7, 60312	# 329
	flw		f5, 0(x7)	# 329
	fmul	f3, f3, f5	# 329
	fadd	f1, f1, f3	# 329
	fsub	f1, f0, f1	# 123
	flw		f3, -96(x2)	# 1908
	fmul	f1, f1, f3	# 1908
	mul		x7, x30, x5	# 329
	lw		x8, -72(x2)	# 329
	add		x7, x8, x7	# 329
	flw		f6, 0(x7)	# 329
	fmul	f2, f6, f2	# 329
	mul		x7, x30, x4	# 329
	add		x7, x8, x7	# 329
	flw		f6, 0(x7)	# 329
	fmul	f4, f6, f4	# 329
	fadd	f2, f2, f4	# 329
	mul		x7, x30, x6	# 329
	add		x7, x8, x7	# 329
	flw		f4, 0(x7)	# 329
	fmul	f4, f4, f5	# 329
	fadd	f2, f2, f4	# 329
	fsub	f2, f0, f2	# 123
	flw		f4, -60(x2)	# 121
	fle		x31, f1, f4	# 121
	beq		x31, x0, fle_else.30976	# 121
	jal		x0, fle_cont.30975	# 121
fle_else.30976:
	mul		x7, x30, x5	# 339
	addi	x7, x7, 60604	# 339
	flw		f5, 0(x7)	# 339
	mul		x7, x30, x5	# 339
	addi	x7, x7, 60580	# 339
	flw		f6, 0(x7)	# 339
	fmul	f6, f1, f6	# 339
	fadd	f5, f5, f6	# 339
	mul		x7, x30, x5	# 339
	addi	x7, x7, 60604	# 339
	fsw		f5, 0(x7)	# 339
	mul		x7, x30, x4	# 340
	addi	x7, x7, 60604	# 340
	flw		f5, 0(x7)	# 340
	mul		x7, x30, x4	# 340
	addi	x7, x7, 60580	# 340
	flw		f6, 0(x7)	# 340
	fmul	f6, f1, f6	# 340
	fadd	f5, f5, f6	# 340
	mul		x7, x30, x4	# 340
	addi	x7, x7, 60604	# 340
	fsw		f5, 0(x7)	# 340
	mul		x7, x30, x6	# 341
	addi	x7, x7, 60604	# 341
	flw		f5, 0(x7)	# 341
	mul		x7, x30, x6	# 341
	addi	x7, x7, 60580	# 341
	flw		f6, 0(x7)	# 341
	fmul	f1, f1, f6	# 341
	fadd	f1, f5, f1	# 341
	mul		x7, x30, x6	# 341
	addi	x7, x7, 60604	# 341
	fsw		f1, 0(x7)	# 341
fle_cont.30975:
	fle		x31, f2, f4	# 121
	beq		x31, x0, fle_else.30978	# 121
	jal		x0, fle_cont.30977	# 121
fle_else.30978:
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -164(x2)	# 1831
	fmul	f1, f1, f2	# 1831
	mul		x7, x30, x5	# 1832
	addi	x7, x7, 60604	# 1832
	flw		f4, 0(x7)	# 1832
	fadd	f4, f4, f1	# 1832
	mul		x7, x30, x5	# 1832
	addi	x7, x7, 60604	# 1832
	fsw		f4, 0(x7)	# 1832
	mul		x7, x30, x4	# 1833
	addi	x7, x7, 60604	# 1833
	flw		f4, 0(x7)	# 1833
	fadd	f4, f4, f1	# 1833
	mul		x7, x30, x4	# 1833
	addi	x7, x7, 60604	# 1833
	fsw		f4, 0(x7)	# 1833
	mul		x7, x30, x6	# 1834
	addi	x7, x7, 60604	# 1834
	flw		f4, 0(x7)	# 1834
	fadd	f1, f4, f1	# 1834
	mul		x7, x30, x6	# 1834
	addi	x7, x7, 60604	# 1834
	fsw		f1, 0(x7)	# 1834
fle_cont.30977:
beq_cont.30973:
	mul		x4, x30, x5	# 296
	addi	x4, x4, 60552	# 296
	flw		f1, 0(x4)	# 296
	mul		x4, x30, x5	# 296
	addi	x4, x4, 60648	# 296
	fsw		f1, 0(x4)	# 296
	lw		x4, -68(x2)	# 297
	mul		x6, x30, x4	# 297
	addi	x6, x6, 60552	# 297
	flw		f1, 0(x6)	# 297
	mul		x6, x30, x4	# 297
	addi	x6, x6, 60648	# 297
	fsw		f1, 0(x6)	# 297
	lw		x6, -64(x2)	# 298
	mul		x7, x30, x6	# 298
	addi	x7, x7, 60552	# 298
	flw		f1, 0(x7)	# 298
	mul		x7, x30, x6	# 298
	addi	x7, x7, 60648	# 298
	fsw		f1, 0(x7)	# 298
	mul		x7, x30, x5	# 1352
	addi	x7, x7, 60000	# 1352
	lw		x7, 0(x7)	# 1352
	sub		x7, x7, x4	# 1352
	addi	x8, x0, 60552	# 1352
	lw		x29, -12(x2)	# 1352
	addi	x5, x7, 0
	addi	x4, x8, 0
	sw		x1, -168(x2)	# 1352
	addi	x2, x2, -172	# 1352
	lw		x31, 0(x29)	# 1352
	jalr	x1, x31, 0	# 1352
	addi	x2, x2, 172	# 1352
	lw		x1, -168(x2)	# 1352
	lw		x4, -88(x2)	# 1915
	mul		x5, x30, x4	# 1915
	addi	x5, x5, 61736	# 1915
	lw		x5, 0(x5)	# 1915
	lw		x6, -68(x2)	# 1915
	sub		x5, x5, x6	# 1915
	flw		f1, -96(x2)	# 1915
	flw		f2, -164(x2)	# 1915
	lw		x7, -72(x2)	# 1915
	lw		x29, -8(x2)	# 1915
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -168(x2)	# 1915
	addi	x2, x2, -172	# 1915
	lw		x31, 0(x29)	# 1915
	jalr	x1, x31, 0	# 1915
	addi	x2, x2, 172	# 1915
	lw		x1, -168(x2)	# 1915
	lui		x4, %hi(l.26438)	# 1918
	ori		x4, x0, %lo(l.26438)	# 1918
	flw		f1, 0(x4)	# 1918
	flw		f2, -56(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30979	# 125
	jalr	x0, x1, 0	# 1929
fle_else.30979:
	lw		x4, -84(x2)	# 1920
	lw		x5, -28(x2)	# 1920
	ble		x5, x4, ble_cont.30981	# 1920
	lw		x5, -68(x2)	# 1921
	add		x6, x4, x5	# 1921
	mul		x6, x30, x6	# 1921
	lw		x7, -80(x2)	# 1921
	add		x6, x7, x6	# 1921
	lw		x7, -76(x2)	# 1921
	sw		x7, 0(x6)	# 1921
ble_cont.30981:
	lw		x5, -64(x2)	# 1924
	lw		x6, -92(x2)	# 1924
	beq		x6, x5, beq.30982	# 1924
	jalr	x0, x1, 0	# 1927
beq.30982:
	fadd	f1, f0, f16	# 1925
	lw		x5, -100(x2)	# 498
	lw		x5, 28(x5)	# 498
	lw		x6, -88(x2)	# 503
	mul		x7, x30, x6	# 503
	add		x5, x5, x7	# 503
	flw		f3, 0(x5)	# 503
	fsub	f1, f1, f3	# 1925
	fmul	f1, f2, f1	# 1925
	lw		x5, -68(x2)	# 1926
	add		x4, x4, x5	# 1926
	mul		x5, x30, x6	# 1926
	addi	x5, x5, 60548	# 1926
	flw		f2, 0(x5)	# 1926
	flw		f3, -4(x2)	# 1926
	fadd	f2, f3, f2	# 1926
	lw		x5, -72(x2)	# 1926
	lw		x6, -20(x2)	# 1926
	lw		x29, 0(x2)	# 1926
	lw		x31, 0(x29)	# 1926
	jalr	x0, x31, 0	# 1926
beq.30930:
	lw		x5, -84(x2)	# 1934
	mul		x6, x30, x5	# 1934
	lw		x7, -80(x2)	# 1934
	add		x6, x7, x6	# 1934
	lw		x7, -76(x2)	# 1934
	sw		x7, 0(x6)	# 1934
	beq		x5, x4, beq.30984	# 1936
	mul		x5, x30, x4	# 329
	lw		x6, -72(x2)	# 329
	add		x5, x6, x5	# 329
	flw		f1, 0(x5)	# 329
	mul		x5, x30, x4	# 329
	addi	x5, x5, 60312	# 329
	flw		f2, 0(x5)	# 329
	fmul	f1, f1, f2	# 329
	lw		x5, -68(x2)	# 329
	mul		x7, x30, x5	# 329
	add		x7, x6, x7	# 329
	flw		f2, 0(x7)	# 329
	mul		x7, x30, x5	# 329
	addi	x7, x7, 60312	# 329
	flw		f3, 0(x7)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	lw		x7, -64(x2)	# 329
	mul		x8, x30, x7	# 329
	add		x6, x6, x8	# 329
	flw		f2, 0(x6)	# 329
	mul		x6, x30, x7	# 329
	addi	x6, x6, 60312	# 329
	flw		f3, 0(x6)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	fsub	f1, f0, f1	# 123
	flw		f2, -60(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.30985	# 121
	jalr	x0, x1, 0	# 1947
fle_else.30985:
	fmul	f2, f1, f1	# 127
	fmul	f1, f2, f1	# 1942
	flw		f2, -56(x2)	# 1942
	fmul	f1, f1, f2	# 1942
	mul		x6, x30, x4	# 1942
	addi	x6, x6, 60324	# 1942
	flw		f2, 0(x6)	# 1942
	fmul	f1, f1, f2	# 1942
	mul		x6, x30, x4	# 1943
	addi	x6, x6, 60604	# 1943
	flw		f2, 0(x6)	# 1943
	fadd	f2, f2, f1	# 1943
	mul		x4, x30, x4	# 1943
	addi	x4, x4, 60604	# 1943
	fsw		f2, 0(x4)	# 1943
	mul		x4, x30, x5	# 1944
	addi	x4, x4, 60604	# 1944
	flw		f2, 0(x4)	# 1944
	fadd	f2, f2, f1	# 1944
	mul		x4, x30, x5	# 1944
	addi	x4, x4, 60604	# 1944
	fsw		f2, 0(x4)	# 1944
	mul		x4, x30, x7	# 1945
	addi	x4, x4, 60604	# 1945
	flw		f2, 0(x4)	# 1945
	fadd	f1, f2, f1	# 1945
	mul		x4, x30, x7	# 1945
	addi	x4, x4, 60604	# 1945
	fsw		f1, 0(x4)	# 1945
	jalr	x0, x1, 0	# 1945
beq.30984:
	jalr	x0, x1, 0	# 1948
iter_trace_diffuse_rays.2919.17333:
	lw		x8, 56(x29)	# 1981
	lw		x9, 52(x29)	# 1981
	lw		x10, 48(x29)	# 1981
	lw		x11, 44(x29)	# 1981
	lw		x12, 40(x29)	# 1981
	lw		x13, 36(x29)	# 1981
	lw		x14, 32(x29)	# 1981
	lw		x15, 28(x29)	# 1981
	lw		x16, 24(x29)	# 1981
	lw		x17, 20(x29)	# 1981
	lw		x18, 16(x29)	# 1981
	flw		f1, 12(x29)	# 1981
	flw		f2, 8(x29)	# 1981
	flw		f3, 4(x29)	# 1981
	ble		x17, x7, ble.30989	# 1981
	jalr	x0, x1, 0	# 1992
ble.30989:
	mul		x19, x30, x7	# 1982
	add		x19, x4, x19	# 1982
	lw		x19, 0(x19)	# 1982
	lw		x20, 0(x19)	# 676
	mul		x21, x30, x17	# 329
	add		x21, x20, x21	# 329
	flw		f4, 0(x21)	# 329
	mul		x21, x30, x17	# 329
	add		x21, x5, x21	# 329
	flw		f5, 0(x21)	# 329
	fmul	f4, f4, f5	# 329
	mul		x21, x30, x18	# 329
	add		x21, x20, x21	# 329
	flw		f5, 0(x21)	# 329
	mul		x21, x30, x18	# 329
	add		x21, x5, x21	# 329
	flw		f6, 0(x21)	# 329
	fmul	f5, f5, f6	# 329
	fadd	f4, f4, f5	# 329
	mul		x21, x30, x15	# 329
	add		x20, x20, x21	# 329
	flw		f5, 0(x20)	# 329
	mul		x20, x30, x15	# 329
	add		x20, x5, x20	# 329
	flw		f6, 0(x20)	# 329
	fmul	f5, f5, f6	# 329
	fadd	f4, f4, f5	# 329
	sw		x6, 0(x2)	# 122
	sw		x5, -4(x2)	# 122
	sw		x4, -8(x2)	# 122
	sw		x29, -12(x2)	# 122
	sw		x15, -16(x2)	# 122
	sw		x7, -20(x2)	# 122
	fle		x31, f3, f4	# 122
	beq		x31, x0, fle_else.30992	# 122
	fadd	f5, f0, f24	# 1989
	fdiv	f4, f4, f5	# 1989
	mul		x20, x30, x17	# 1671
	addi	x20, x20, 60548	# 1671
	fsw		f1, 0(x20)	# 1671
	mul		x20, x30, x17	# 1672
	addi	x20, x20, 60536	# 1672
	lw		x20, 0(x20)	# 1672
	fsw		f4, -24(x2)	# 1672
	sw		x10, -28(x2)	# 1672
	sw		x14, -32(x2)	# 1672
	sw		x13, -36(x2)	# 1672
	sw		x16, -40(x2)	# 1672
	sw		x9, -44(x2)	# 1672
	fsw		f2, -48(x2)	# 1672
	sw		x12, -52(x2)	# 1672
	sw		x11, -56(x2)	# 1672
	fsw		f3, -60(x2)	# 1672
	sw		x18, -64(x2)	# 1672
	sw		x19, -68(x2)	# 1672
	sw		x17, -72(x2)	# 1672
	addi	x6, x19, 0
	addi	x5, x20, 0
	addi	x4, x17, 0
	addi	x29, x8, 0
	sw		x1, -76(x2)	# 1672
	addi	x2, x2, -80	# 1672
	lw		x31, 0(x29)	# 1672
	jalr	x1, x31, 0	# 1672
	addi	x2, x2, 80	# 1672
	lw		x1, -76(x2)	# 1672
	lw		x4, -72(x2)	# 1673
	mul		x5, x30, x4	# 1673
	addi	x5, x5, 60548	# 1673
	flw		f1, 0(x5)	# 1673
	fadd	f2, f0, f21	# 1675
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.30994	# 125
	addi	x5, x0, 0	# 1677
	jal		x0, fle_cont.30993	# 125
fle_else.30994:
	fadd	f2, f0, f22	# 1676
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30996	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.30995	# 125
fle_else.30996:
	addi	x5, x0, 1	# 125
fle_cont.30995:
fle_cont.30993:
	beq		x5, x4, beq_cont.30997	# 1964
	mul		x5, x30, x4	# 1965
	addi	x5, x5, 60564	# 1965
	lw		x5, 0(x5)	# 1965
	mul		x5, x30, x5	# 1965
	addi	x5, x5, 60048	# 1965
	lw		x5, 0(x5)	# 1965
	lw		x6, -68(x2)	# 676
	lw		x6, 0(x6)	# 676
	lw		x7, 4(x5)	# 390
	lw		x8, -64(x2)	# 1730
	beq		x7, x8, beq.30999	# 1730
	lw		x6, -16(x2)	# 1732
	beq		x7, x6, beq.31001	# 1732
	mul		x7, x30, x4	# 1707
	addi	x7, x7, 60552	# 1707
	flw		f1, 0(x7)	# 1707
	lw		x7, 20(x5)	# 468
	mul		x9, x30, x4	# 473
	add		x7, x7, x9	# 473
	flw		f2, 0(x7)	# 473
	fsub	f1, f1, f2	# 1707
	mul		x7, x30, x8	# 1708
	addi	x7, x7, 60552	# 1708
	flw		f2, 0(x7)	# 1708
	lw		x7, 20(x5)	# 478
	mul		x9, x30, x8	# 483
	add		x7, x7, x9	# 483
	flw		f3, 0(x7)	# 483
	fsub	f2, f2, f3	# 1708
	mul		x7, x30, x6	# 1709
	addi	x7, x7, 60552	# 1709
	flw		f3, 0(x7)	# 1709
	lw		x7, 20(x5)	# 488
	mul		x9, x30, x6	# 493
	add		x7, x7, x9	# 493
	flw		f4, 0(x7)	# 493
	fsub	f3, f3, f4	# 1709
	lw		x7, 16(x5)	# 428
	mul		x9, x30, x4	# 433
	add		x7, x7, x9	# 433
	flw		f4, 0(x7)	# 433
	fmul	f4, f1, f4	# 1711
	lw		x7, 16(x5)	# 438
	mul		x9, x30, x8	# 443
	add		x7, x7, x9	# 443
	flw		f5, 0(x7)	# 443
	fmul	f5, f2, f5	# 1712
	lw		x7, 16(x5)	# 448
	mul		x9, x30, x6	# 453
	add		x7, x7, x9	# 453
	flw		f6, 0(x7)	# 453
	fmul	f6, f3, f6	# 1713
	lw		x7, 12(x5)	# 419
	beq		x7, x4, beq.31003	# 1715
	lw		x7, 36(x5)	# 568
	mul		x9, x30, x6	# 573
	add		x7, x7, x9	# 573
	flw		f7, 0(x7)	# 573
	fmul	f8, f2, f7	# 1720
	lw		x7, 36(x5)	# 558
	mul		x9, x30, x8	# 563
	add		x7, x7, x9	# 563
	flw		f9, 0(x7)	# 563
	fmul	f10, f3, f9	# 1720
	fadd	f8, f8, f10	# 1720
	fadd	f10, f0, f26	# 126
	fmul	f8, f8, f10	# 126
	fadd	f4, f4, f8	# 1720
	mul		x7, x30, x4	# 1720
	addi	x7, x7, 60568	# 1720
	fsw		f4, 0(x7)	# 1720
	fmul	f4, f1, f7	# 1721
	lw		x7, 36(x5)	# 548
	mul		x9, x30, x4	# 553
	add		x7, x7, x9	# 553
	flw		f7, 0(x7)	# 553
	fmul	f3, f3, f7	# 1721
	fadd	f3, f4, f3	# 1721
	fmul	f3, f3, f10	# 126
	fadd	f3, f5, f3	# 1721
	mul		x7, x30, x8	# 1721
	addi	x7, x7, 60568	# 1721
	fsw		f3, 0(x7)	# 1721
	fmul	f1, f1, f9	# 1722
	fmul	f2, f2, f7	# 1722
	fadd	f1, f1, f2	# 1722
	fmul	f1, f1, f10	# 126
	fadd	f1, f6, f1	# 1722
	mul		x7, x30, x6	# 1722
	addi	x7, x7, 60568	# 1722
	fsw		f1, 0(x7)	# 1722
	jal		x0, beq_cont.31002	# 1715
beq.31003:
	mul		x7, x30, x4	# 1716
	addi	x7, x7, 60568	# 1716
	fsw		f4, 0(x7)	# 1716
	mul		x7, x30, x8	# 1717
	addi	x7, x7, 60568	# 1717
	fsw		f5, 0(x7)	# 1717
	mul		x7, x30, x6	# 1718
	addi	x7, x7, 60568	# 1718
	fsw		f6, 0(x7)	# 1718
beq_cont.31002:
	lw		x7, 24(x5)	# 410
	mul		x9, x30, x4	# 320
	addi	x9, x9, 60568	# 320
	flw		f1, 0(x9)	# 320
	fmul	f1, f1, f1	# 127
	mul		x9, x30, x8	# 320
	addi	x9, x9, 60568	# 320
	flw		f2, 0(x9)	# 320
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 320
	mul		x9, x30, x6	# 320
	addi	x9, x9, 60568	# 320
	flw		f2, 0(x9)	# 320
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 320
	fsqrt	f1, f1	# 320
	flw		f2, -60(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31005	# 120
	fadd	f1, f0, f16	# 321
	jal		x0, feq_cont.31004	# 120
feq_else.31005:
	beq		x7, x4, beq.31007	# 321
	lui		x7, %hi(l.25043)	# 321
	ori		x7, x0, %lo(l.25043)	# 321
	flw		f3, 0(x7)	# 321
	fdiv	f1, f3, f1	# 321
	jal		x0, beq_cont.31006	# 321
beq.31007:
	fadd	f3, f0, f16	# 321
	fdiv	f1, f3, f1	# 321
beq_cont.31006:
feq_cont.31004:
	mul		x7, x30, x4	# 322
	addi	x7, x7, 60568	# 322
	flw		f3, 0(x7)	# 322
	fmul	f3, f3, f1	# 322
	mul		x7, x30, x4	# 322
	addi	x7, x7, 60568	# 322
	fsw		f3, 0(x7)	# 322
	mul		x7, x30, x8	# 323
	addi	x7, x7, 60568	# 323
	flw		f3, 0(x7)	# 323
	fmul	f3, f3, f1	# 323
	mul		x7, x30, x8	# 323
	addi	x7, x7, 60568	# 323
	fsw		f3, 0(x7)	# 323
	mul		x7, x30, x6	# 324
	addi	x7, x7, 60568	# 324
	flw		f3, 0(x7)	# 324
	fmul	f1, f3, f1	# 324
	mul		x7, x30, x6	# 324
	addi	x7, x7, 60568	# 324
	fsw		f1, 0(x7)	# 324
	jal		x0, beq_cont.31000	# 1732
beq.31001:
	lw		x7, 16(x5)	# 428
	mul		x9, x30, x4	# 433
	add		x7, x7, x9	# 433
	flw		f1, 0(x7)	# 433
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x4	# 1700
	addi	x7, x7, 60568	# 1700
	fsw		f1, 0(x7)	# 1700
	lw		x7, 16(x5)	# 438
	mul		x9, x30, x8	# 443
	add		x7, x7, x9	# 443
	flw		f1, 0(x7)	# 443
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x8	# 1701
	addi	x7, x7, 60568	# 1701
	fsw		f1, 0(x7)	# 1701
	lw		x7, 16(x5)	# 448
	mul		x9, x30, x6	# 453
	add		x7, x7, x9	# 453
	flw		f1, 0(x7)	# 453
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x6	# 1702
	addi	x7, x7, 60568	# 1702
	fsw		f1, 0(x7)	# 1702
beq_cont.31000:
	jal		x0, beq_cont.30998	# 1730
beq.30999:
	mul		x7, x30, x4	# 1691
	addi	x7, x7, 60544	# 1691
	lw		x7, 0(x7)	# 1691
	mul		x9, x30, x4	# 284
	addi	x9, x9, 60568	# 284
	flw		f1, -60(x2)	# 284
	fsw		f1, 0(x9)	# 284
	mul		x9, x30, x8	# 285
	addi	x9, x9, 60568	# 285
	fsw		f1, 0(x9)	# 285
	lw		x9, -16(x2)	# 286
	mul		x10, x30, x9	# 286
	addi	x10, x10, 60568	# 286
	fsw		f1, 0(x10)	# 286
	sub		x7, x7, x8	# 1694
	mul		x10, x30, x7	# 1694
	add		x6, x6, x10	# 1694
	flw		f2, 0(x6)	# 1694
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.31009	# 120
	fadd	f2, f0, f1	# 249
	jal		x0, feq_cont.31008	# 120
feq_else.31009:
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.31011	# 121
	lui		x6, %hi(l.25043)	# 251
	ori		x6, x0, %lo(l.25043)	# 251
	flw		f2, 0(x6)	# 251
	jal		x0, fle_cont.31010	# 121
fle_else.31011:
	fadd	f2, f0, f16	# 250
fle_cont.31010:
feq_cont.31008:
	fsub	f2, f0, f2	# 123
	mul		x6, x30, x7	# 1694
	addi	x6, x6, 60568	# 1694
	fsw		f2, 0(x6)	# 1694
beq_cont.30998:
	lw		x6, 0(x5)	# 380
	lw		x7, 32(x5)	# 518
	mul		x9, x30, x4	# 523
	add		x7, x7, x9	# 523
	flw		f1, 0(x7)	# 523
	mul		x7, x30, x4	# 1747
	addi	x7, x7, 60580	# 1747
	fsw		f1, 0(x7)	# 1747
	lw		x7, 32(x5)	# 528
	mul		x9, x30, x8	# 533
	add		x7, x7, x9	# 533
	flw		f1, 0(x7)	# 533
	mul		x7, x30, x8	# 1748
	addi	x7, x7, 60580	# 1748
	fsw		f1, 0(x7)	# 1748
	lw		x7, 32(x5)	# 538
	lw		x9, -16(x2)	# 543
	mul		x10, x30, x9	# 543
	add		x7, x7, x10	# 543
	flw		f1, 0(x7)	# 543
	mul		x7, x30, x9	# 1749
	addi	x7, x7, 60580	# 1749
	fsw		f1, 0(x7)	# 1749
	sw		x5, -76(x2)	# 1750
	beq		x6, x8, beq.31013	# 1750
	beq		x6, x9, beq.31015	# 1768
	lw		x7, -40(x2)	# 1775
	beq		x6, x7, beq.31017	# 1775
	addi	x7, x0, 4	# 1786
	beq		x6, x7, beq.31019	# 1786
	jal		x0, beq_cont.31018	# 1786
beq.31019:
	mul		x6, x30, x4	# 1788
	addi	x6, x6, 60552	# 1788
	flw		f1, 0(x6)	# 1788
	lw		x6, 20(x5)	# 468
	mul		x7, x30, x4	# 473
	add		x6, x6, x7	# 473
	flw		f2, 0(x6)	# 473
	fsub	f1, f1, f2	# 1788
	lw		x6, 16(x5)	# 428
	mul		x7, x30, x4	# 433
	add		x6, x6, x7	# 433
	flw		f2, 0(x6)	# 433
	fsqrt	f2, f2	# 1788
	fmul	f1, f1, f2	# 1788
	mul		x6, x30, x9	# 1789
	addi	x6, x6, 60552	# 1789
	flw		f2, 0(x6)	# 1789
	lw		x6, 20(x5)	# 488
	mul		x7, x30, x9	# 493
	add		x6, x6, x7	# 493
	flw		f3, 0(x6)	# 493
	fsub	f2, f2, f3	# 1789
	lw		x6, 16(x5)	# 448
	mul		x7, x30, x9	# 453
	add		x6, x6, x7	# 453
	flw		f3, 0(x6)	# 453
	fsqrt	f3, f3	# 1789
	fmul	f2, f2, f3	# 1789
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1790
	flw		f4, -60(x2)	# 124
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_else.31021	# 124
	fsub	f5, f0, f1	# 124
	jal		x0, fle_cont.31020	# 124
fle_else.31021:
	fadd	f5, f0, f1	# 124
fle_cont.31020:
	lui		x6, %hi(l.26207)	# 1792
	ori		x6, x0, %lo(l.26207)	# 1792
	flw		f6, 0(x6)	# 1792
	fsw		f6, -80(x2)	# 125
	fsw		f3, -84(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.31023	# 125
	fdiv	f1, f2, f1	# 1795
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_cont.31024	# 124
	fsub	f1, f0, f1	# 124
fle_cont.31024:
	lw		x29, -32(x2)	# 1797
	sw		x1, -88(x2)	# 1797
	addi	x2, x2, -92	# 1797
	lw		x31, 0(x29)	# 1797
	jalr	x1, x31, 0	# 1797
	addi	x2, x2, 92	# 1797
	lw		x1, -88(x2)	# 1797
	lui		x4, %hi(l.26211)	# 1797
	ori		x4, x0, %lo(l.26211)	# 1797
	flw		f2, 0(x4)	# 1797
	fmul	f1, f1, f2	# 1797
	fadd	f2, f0, f29	# 1797
	fdiv	f1, f1, f2	# 1797
	jal		x0, fle_cont.31022	# 125
fle_else.31023:
	lui		x6, %hi(l.26209)	# 1793
	ori		x6, x0, %lo(l.26209)	# 1793
	flw		f1, 0(x6)	# 1793
fle_cont.31022:
	fadd	f2, f0, f26	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -72(x2)	# 153
	lw		x29, -56(x2)	# 153
	fsw		f2, -88(x2)	# 153
	fsw		f1, -92(x2)	# 153
	fadd	f1, f0, f3
	sw		x1, -96(x2)	# 153
	addi	x2, x2, -100	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 100	# 153
	lw		x1, -96(x2)	# 153
	lw		x29, -52(x2)	# 166
	sw		x1, -96(x2)	# 166
	addi	x2, x2, -100	# 166
	lw		x31, 0(x29)	# 166
	jalr	x1, x31, 0	# 166
	addi	x2, x2, 100	# 166
	lw		x1, -96(x2)	# 166
	flw		f2, -92(x2)	# 1799
	fsub	f1, f2, f1	# 1799
	lw		x4, -64(x2)	# 1801
	mul		x5, x30, x4	# 1801
	addi	x5, x5, 60552	# 1801
	flw		f2, 0(x5)	# 1801
	lw		x5, -76(x2)	# 478
	lw		x6, 20(x5)	# 478
	mul		x7, x30, x4	# 483
	add		x6, x6, x7	# 483
	flw		f3, 0(x6)	# 483
	fsub	f2, f2, f3	# 1801
	lw		x6, 16(x5)	# 438
	mul		x7, x30, x4	# 443
	add		x6, x6, x7	# 443
	flw		f3, 0(x6)	# 443
	fsqrt	f3, f3	# 1801
	fmul	f2, f2, f3	# 1801
	flw		f3, -60(x2)	# 124
	flw		f4, -84(x2)	# 124
	fle		x31, f4, f3	# 124
	beq		x31, x0, fle_else.31026	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.31025	# 124
fle_else.31026:
	fadd	f5, f0, f4	# 124
fle_cont.31025:
	flw		f6, -80(x2)	# 125
	fsw		f1, -96(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.31028	# 125
	fdiv	f2, f2, f4	# 1806
	fle		x31, f2, f3	# 124
	beq		x31, x0, fle_cont.31029	# 124
	fsub	f2, f0, f2	# 124
fle_cont.31029:
	lw		x29, -32(x2)	# 1807
	fadd	f1, f0, f2
	sw		x1, -100(x2)	# 1807
	addi	x2, x2, -104	# 1807
	lw		x31, 0(x29)	# 1807
	jalr	x1, x31, 0	# 1807
	addi	x2, x2, 104	# 1807
	lw		x1, -100(x2)	# 1807
	lui		x4, %hi(l.26211)	# 1807
	ori		x4, x0, %lo(l.26211)	# 1807
	flw		f2, 0(x4)	# 1807
	fmul	f1, f1, f2	# 1807
	fadd	f2, f0, f29	# 1807
	fdiv	f1, f1, f2	# 1807
	jal		x0, fle_cont.31027	# 125
fle_else.31028:
	lui		x6, %hi(l.26209)	# 1804
	ori		x6, x0, %lo(l.26209)	# 1804
	flw		f1, 0(x6)	# 1804
fle_cont.31027:
	flw		f2, -88(x2)	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -72(x2)	# 153
	lw		x29, -56(x2)	# 153
	fsw		f1, -100(x2)	# 153
	fadd	f1, f0, f3
	sw		x1, -104(x2)	# 153
	addi	x2, x2, -108	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 108	# 153
	lw		x1, -104(x2)	# 153
	lw		x29, -52(x2)	# 166
	sw		x1, -104(x2)	# 166
	addi	x2, x2, -108	# 166
	lw		x31, 0(x29)	# 166
	jalr	x1, x31, 0	# 166
	addi	x2, x2, 108	# 166
	lw		x1, -104(x2)	# 166
	flw		f2, -100(x2)	# 1809
	fsub	f1, f2, f1	# 1809
	fadd	f2, f0, f30	# 1810
	flw		f3, -96(x2)	# 1810
	flw		f4, -88(x2)	# 1810
	fsub	f3, f4, f3	# 1810
	fmul	f3, f3, f3	# 127
	fsub	f2, f2, f3	# 1810
	fsub	f1, f4, f1	# 1810
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1810
	flw		f2, -60(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31031	# 122
	jal		x0, fle_cont.31030	# 122
fle_else.31031:
	fadd	f1, f0, f2	# 1811
fle_cont.31030:
	flw		f3, -48(x2)	# 1812
	fmul	f1, f3, f1	# 1812
	lui		x4, %hi(l.26227)	# 1812
	ori		x4, x0, %lo(l.26227)	# 1812
	flw		f3, 0(x4)	# 1812
	fdiv	f1, f1, f3	# 1812
	lw		x4, -16(x2)	# 1812
	mul		x5, x30, x4	# 1812
	addi	x5, x5, 60580	# 1812
	fsw		f1, 0(x5)	# 1812
beq_cont.31018:
	jal		x0, beq_cont.31016	# 1775
beq.31017:
	mul		x6, x30, x4	# 1778
	addi	x6, x6, 60552	# 1778
	flw		f1, 0(x6)	# 1778
	lw		x6, 20(x5)	# 468
	mul		x7, x30, x4	# 473
	add		x6, x6, x7	# 473
	flw		f2, 0(x6)	# 473
	fsub	f1, f1, f2	# 1778
	mul		x6, x30, x9	# 1779
	addi	x6, x6, 60552	# 1779
	flw		f2, 0(x6)	# 1779
	lw		x6, 20(x5)	# 488
	mul		x7, x30, x9	# 493
	add		x6, x6, x7	# 493
	flw		f3, 0(x6)	# 493
	fsub	f2, f2, f3	# 1779
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1780
	fsqrt	f1, f1	# 1780
	lui		x6, %hi(l.26239)	# 1780
	ori		x6, x0, %lo(l.26239)	# 1780
	flw		f2, 0(x6)	# 1780
	fdiv	f1, f1, f2	# 1780
	fadd	f2, f0, f26	# 166
	fsub	f2, f1, f2	# 166
	lw		x29, -56(x2)	# 153
	fsw		f1, -104(x2)	# 153
	fadd	f1, f0, f2
	sw		x1, -108(x2)	# 153
	addi	x2, x2, -112	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 112	# 153
	lw		x1, -108(x2)	# 153
	lw		x29, -52(x2)	# 166
	sw		x1, -108(x2)	# 166
	addi	x2, x2, -112	# 166
	lw		x31, 0(x29)	# 166
	jalr	x1, x31, 0	# 166
	addi	x2, x2, 112	# 166
	lw		x1, -108(x2)	# 166
	flw		f2, -104(x2)	# 1781
	fsub	f1, f2, f1	# 1781
	fadd	f2, f0, f29	# 1781
	fmul	f1, f1, f2	# 1781
	lw		x29, -36(x2)	# 1782
	sw		x1, -108(x2)	# 1782
	addi	x2, x2, -112	# 1782
	lw		x31, 0(x29)	# 1782
	jalr	x1, x31, 0	# 1782
	addi	x2, x2, 112	# 1782
	lw		x1, -108(x2)	# 1782
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1783
	fmul	f3, f1, f2	# 1783
	lw		x4, -64(x2)	# 1783
	mul		x5, x30, x4	# 1783
	addi	x5, x5, 60580	# 1783
	fsw		f3, 0(x5)	# 1783
	fadd	f3, f0, f16	# 1784
	fsub	f1, f3, f1	# 1784
	fmul	f1, f1, f2	# 1784
	lw		x5, -16(x2)	# 1784
	mul		x6, x30, x5	# 1784
	addi	x6, x6, 60580	# 1784
	fsw		f1, 0(x6)	# 1784
beq_cont.31016:
	jal		x0, beq_cont.31014	# 1768
beq.31015:
	mul		x6, x30, x8	# 1771
	addi	x6, x6, 60552	# 1771
	flw		f1, 0(x6)	# 1771
	lui		x6, %hi(l.26250)	# 1771
	ori		x6, x0, %lo(l.26250)	# 1771
	flw		f2, 0(x6)	# 1771
	fmul	f1, f1, f2	# 1771
	lw		x29, -44(x2)	# 1771
	sw		x1, -108(x2)	# 1771
	addi	x2, x2, -112	# 1771
	lw		x31, 0(x29)	# 1771
	jalr	x1, x31, 0	# 1771
	addi	x2, x2, 112	# 1771
	lw		x1, -108(x2)	# 1771
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1772
	fmul	f3, f2, f1	# 1772
	lw		x4, -72(x2)	# 1772
	mul		x5, x30, x4	# 1772
	addi	x5, x5, 60580	# 1772
	fsw		f3, 0(x5)	# 1772
	fadd	f3, f0, f16	# 1773
	fsub	f1, f3, f1	# 1773
	fmul	f1, f2, f1	# 1773
	lw		x5, -64(x2)	# 1773
	mul		x6, x30, x5	# 1773
	addi	x6, x6, 60580	# 1773
	fsw		f1, 0(x6)	# 1773
beq_cont.31014:
	jal		x0, beq_cont.31012	# 1750
beq.31013:
	mul		x6, x30, x4	# 1753
	addi	x6, x6, 60552	# 1753
	flw		f1, 0(x6)	# 1753
	lw		x6, 20(x5)	# 468
	mul		x7, x30, x4	# 473
	add		x6, x6, x7	# 473
	flw		f2, 0(x6)	# 473
	fsub	f1, f1, f2	# 1753
	lui		x6, %hi(l.26261)	# 1755
	ori		x6, x0, %lo(l.26261)	# 1755
	flw		f2, 0(x6)	# 1755
	fmul	f3, f1, f2	# 1755
	fadd	f4, f0, f26	# 166
	fsub	f3, f3, f4	# 166
	lw		x29, -56(x2)	# 153
	fsw		f4, -108(x2)	# 153
	fsw		f2, -112(x2)	# 153
	fsw		f1, -116(x2)	# 153
	fadd	f1, f0, f3
	sw		x1, -120(x2)	# 153
	addi	x2, x2, -124	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 124	# 153
	lw		x1, -120(x2)	# 153
	lw		x29, -52(x2)	# 166
	sw		x1, -120(x2)	# 166
	addi	x2, x2, -124	# 166
	lw		x31, 0(x29)	# 166
	jalr	x1, x31, 0	# 166
	addi	x2, x2, 124	# 166
	lw		x1, -120(x2)	# 166
	lui		x4, %hi(l.26264)	# 1755
	ori		x4, x0, %lo(l.26264)	# 1755
	flw		f2, 0(x4)	# 1755
	fmul	f1, f1, f2	# 1755
	flw		f3, -116(x2)	# 1756
	fsub	f1, f3, f1	# 1756
	lui		x4, %hi(l.26239)	# 1756
	ori		x4, x0, %lo(l.26239)	# 1756
	flw		f3, 0(x4)	# 1756
	lw		x4, -16(x2)	# 1758
	mul		x5, x30, x4	# 1758
	addi	x5, x5, 60552	# 1758
	flw		f4, 0(x5)	# 1758
	lw		x5, -76(x2)	# 488
	lw		x6, 20(x5)	# 488
	mul		x7, x30, x4	# 493
	add		x6, x6, x7	# 493
	flw		f5, 0(x6)	# 493
	fsub	f4, f4, f5	# 1758
	flw		f5, -112(x2)	# 1760
	fmul	f5, f4, f5	# 1760
	flw		f6, -108(x2)	# 166
	fsub	f5, f5, f6	# 166
	lw		x6, -72(x2)	# 153
	lw		x29, -56(x2)	# 153
	fsw		f1, -120(x2)	# 153
	fsw		f3, -124(x2)	# 153
	fsw		f4, -128(x2)	# 153
	fsw		f2, -132(x2)	# 153
	addi	x4, x6, 0
	fadd	f1, f0, f5
	sw		x1, -136(x2)	# 153
	addi	x2, x2, -140	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 140	# 153
	lw		x1, -136(x2)	# 153
	lw		x29, -52(x2)	# 166
	sw		x1, -136(x2)	# 166
	addi	x2, x2, -140	# 166
	lw		x31, 0(x29)	# 166
	jalr	x1, x31, 0	# 166
	addi	x2, x2, 140	# 166
	lw		x1, -136(x2)	# 166
	flw		f2, -132(x2)	# 1760
	fmul	f1, f1, f2	# 1760
	flw		f2, -128(x2)	# 1761
	fsub	f1, f2, f1	# 1761
	flw		f2, -120(x2)	# 125
	flw		f3, -124(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.31033	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.31035	# 125
	flw		f1, -48(x2)	# 1766
	jal		x0, fle_cont.31034	# 125
fle_else.31035:
	flw		f1, -60(x2)	# 1766
fle_cont.31034:
	jal		x0, fle_cont.31032	# 125
fle_else.31033:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.31037	# 125
	flw		f1, -60(x2)	# 1765
	jal		x0, fle_cont.31036	# 125
fle_else.31037:
	flw		f1, -48(x2)	# 1765
fle_cont.31036:
fle_cont.31032:
	lw		x4, -64(x2)	# 1763
	mul		x5, x30, x4	# 1763
	addi	x5, x5, 60580	# 1763
	fsw		f1, 0(x5)	# 1763
beq_cont.31012:
	lw		x4, -72(x2)	# 1970
	mul		x5, x30, x4	# 1970
	addi	x5, x5, 60536	# 1970
	lw		x5, 0(x5)	# 1970
	lw		x29, -28(x2)	# 1970
	sw		x1, -136(x2)	# 1970
	addi	x2, x2, -140	# 1970
	lw		x31, 0(x29)	# 1970
	jalr	x1, x31, 0	# 1970
	addi	x2, x2, 140	# 1970
	lw		x1, -136(x2)	# 1970
	lw		x5, -72(x2)	# 1970
	beq		x4, x5, beq.31039	# 1970
	jal		x0, beq_cont.31038	# 1970
beq.31039:
	mul		x4, x30, x5	# 329
	addi	x4, x4, 60568	# 329
	flw		f1, 0(x4)	# 329
	mul		x4, x30, x5	# 329
	addi	x4, x4, 60312	# 329
	flw		f2, 0(x4)	# 329
	fmul	f1, f1, f2	# 329
	lw		x4, -64(x2)	# 329
	mul		x6, x30, x4	# 329
	addi	x6, x6, 60568	# 329
	flw		f2, 0(x6)	# 329
	mul		x6, x30, x4	# 329
	addi	x6, x6, 60312	# 329
	flw		f3, 0(x6)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	lw		x6, -16(x2)	# 329
	mul		x7, x30, x6	# 329
	addi	x7, x7, 60568	# 329
	flw		f2, 0(x7)	# 329
	mul		x7, x30, x6	# 329
	addi	x7, x7, 60312	# 329
	flw		f3, 0(x7)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	fsub	f1, f0, f1	# 123
	flw		f2, -60(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_cont.31040	# 121
	fadd	f1, f0, f2	# 1972
fle_cont.31040:
	flw		f2, -24(x2)	# 1973
	fmul	f1, f2, f1	# 1973
	lw		x7, -76(x2)	# 498
	lw		x7, 28(x7)	# 498
	mul		x8, x30, x5	# 503
	add		x7, x7, x8	# 503
	flw		f2, 0(x7)	# 503
	fmul	f1, f1, f2	# 1973
	mul		x7, x30, x5	# 339
	addi	x7, x7, 60592	# 339
	flw		f2, 0(x7)	# 339
	mul		x7, x30, x5	# 339
	addi	x7, x7, 60580	# 339
	flw		f3, 0(x7)	# 339
	fmul	f3, f1, f3	# 339
	fadd	f2, f2, f3	# 339
	mul		x5, x30, x5	# 339
	addi	x5, x5, 60592	# 339
	fsw		f2, 0(x5)	# 339
	mul		x5, x30, x4	# 340
	addi	x5, x5, 60592	# 340
	flw		f2, 0(x5)	# 340
	mul		x5, x30, x4	# 340
	addi	x5, x5, 60580	# 340
	flw		f3, 0(x5)	# 340
	fmul	f3, f1, f3	# 340
	fadd	f2, f2, f3	# 340
	mul		x4, x30, x4	# 340
	addi	x4, x4, 60592	# 340
	fsw		f2, 0(x4)	# 340
	mul		x4, x30, x6	# 341
	addi	x4, x4, 60592	# 341
	flw		f2, 0(x4)	# 341
	mul		x4, x30, x6	# 341
	addi	x4, x4, 60580	# 341
	flw		f3, 0(x4)	# 341
	fmul	f1, f1, f3	# 341
	fadd	f1, f2, f1	# 341
	mul		x4, x30, x6	# 341
	addi	x4, x4, 60592	# 341
	fsw		f1, 0(x4)	# 341
beq_cont.31038:
beq_cont.30997:
	jal		x0, fle_cont.30991	# 122
fle_else.30992:
	add		x19, x7, x18	# 1987
	mul		x19, x30, x19	# 1987
	add		x19, x4, x19	# 1987
	lw		x19, 0(x19)	# 1987
	fadd	f5, f0, f25	# 1987
	fdiv	f4, f4, f5	# 1987
	mul		x20, x30, x17	# 1671
	addi	x20, x20, 60548	# 1671
	fsw		f1, 0(x20)	# 1671
	mul		x20, x30, x17	# 1672
	addi	x20, x20, 60536	# 1672
	lw		x20, 0(x20)	# 1672
	fsw		f4, -136(x2)	# 1672
	sw		x10, -28(x2)	# 1672
	sw		x14, -32(x2)	# 1672
	sw		x13, -36(x2)	# 1672
	sw		x16, -40(x2)	# 1672
	sw		x9, -44(x2)	# 1672
	fsw		f2, -48(x2)	# 1672
	sw		x12, -52(x2)	# 1672
	sw		x11, -56(x2)	# 1672
	fsw		f3, -60(x2)	# 1672
	sw		x18, -64(x2)	# 1672
	sw		x19, -140(x2)	# 1672
	sw		x17, -72(x2)	# 1672
	addi	x6, x19, 0
	addi	x5, x20, 0
	addi	x4, x17, 0
	addi	x29, x8, 0
	sw		x1, -144(x2)	# 1672
	addi	x2, x2, -148	# 1672
	lw		x31, 0(x29)	# 1672
	jalr	x1, x31, 0	# 1672
	addi	x2, x2, 148	# 1672
	lw		x1, -144(x2)	# 1672
	lw		x4, -72(x2)	# 1673
	mul		x5, x30, x4	# 1673
	addi	x5, x5, 60548	# 1673
	flw		f1, 0(x5)	# 1673
	fadd	f2, f0, f21	# 1675
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.31042	# 125
	addi	x5, x0, 0	# 1677
	jal		x0, fle_cont.31041	# 125
fle_else.31042:
	fadd	f2, f0, f22	# 1676
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.31044	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.31043	# 125
fle_else.31044:
	addi	x5, x0, 1	# 125
fle_cont.31043:
fle_cont.31041:
	beq		x5, x4, beq_cont.31045	# 1964
	mul		x5, x30, x4	# 1965
	addi	x5, x5, 60564	# 1965
	lw		x5, 0(x5)	# 1965
	mul		x5, x30, x5	# 1965
	addi	x5, x5, 60048	# 1965
	lw		x5, 0(x5)	# 1965
	lw		x6, -140(x2)	# 676
	lw		x6, 0(x6)	# 676
	lw		x7, 4(x5)	# 390
	lw		x8, -64(x2)	# 1730
	beq		x7, x8, beq.31047	# 1730
	lw		x6, -16(x2)	# 1732
	beq		x7, x6, beq.31049	# 1732
	mul		x7, x30, x4	# 1707
	addi	x7, x7, 60552	# 1707
	flw		f1, 0(x7)	# 1707
	lw		x7, 20(x5)	# 468
	mul		x9, x30, x4	# 473
	add		x7, x7, x9	# 473
	flw		f2, 0(x7)	# 473
	fsub	f1, f1, f2	# 1707
	mul		x7, x30, x8	# 1708
	addi	x7, x7, 60552	# 1708
	flw		f2, 0(x7)	# 1708
	lw		x7, 20(x5)	# 478
	mul		x9, x30, x8	# 483
	add		x7, x7, x9	# 483
	flw		f3, 0(x7)	# 483
	fsub	f2, f2, f3	# 1708
	mul		x7, x30, x6	# 1709
	addi	x7, x7, 60552	# 1709
	flw		f3, 0(x7)	# 1709
	lw		x7, 20(x5)	# 488
	mul		x9, x30, x6	# 493
	add		x7, x7, x9	# 493
	flw		f4, 0(x7)	# 493
	fsub	f3, f3, f4	# 1709
	lw		x7, 16(x5)	# 428
	mul		x9, x30, x4	# 433
	add		x7, x7, x9	# 433
	flw		f4, 0(x7)	# 433
	fmul	f4, f1, f4	# 1711
	lw		x7, 16(x5)	# 438
	mul		x9, x30, x8	# 443
	add		x7, x7, x9	# 443
	flw		f5, 0(x7)	# 443
	fmul	f5, f2, f5	# 1712
	lw		x7, 16(x5)	# 448
	mul		x9, x30, x6	# 453
	add		x7, x7, x9	# 453
	flw		f6, 0(x7)	# 453
	fmul	f6, f3, f6	# 1713
	lw		x7, 12(x5)	# 419
	beq		x7, x4, beq.31051	# 1715
	lw		x7, 36(x5)	# 568
	mul		x9, x30, x6	# 573
	add		x7, x7, x9	# 573
	flw		f7, 0(x7)	# 573
	fmul	f8, f2, f7	# 1720
	lw		x7, 36(x5)	# 558
	mul		x9, x30, x8	# 563
	add		x7, x7, x9	# 563
	flw		f9, 0(x7)	# 563
	fmul	f10, f3, f9	# 1720
	fadd	f8, f8, f10	# 1720
	fadd	f10, f0, f26	# 126
	fmul	f8, f8, f10	# 126
	fadd	f4, f4, f8	# 1720
	mul		x7, x30, x4	# 1720
	addi	x7, x7, 60568	# 1720
	fsw		f4, 0(x7)	# 1720
	fmul	f4, f1, f7	# 1721
	lw		x7, 36(x5)	# 548
	mul		x9, x30, x4	# 553
	add		x7, x7, x9	# 553
	flw		f7, 0(x7)	# 553
	fmul	f3, f3, f7	# 1721
	fadd	f3, f4, f3	# 1721
	fmul	f3, f3, f10	# 126
	fadd	f3, f5, f3	# 1721
	mul		x7, x30, x8	# 1721
	addi	x7, x7, 60568	# 1721
	fsw		f3, 0(x7)	# 1721
	fmul	f1, f1, f9	# 1722
	fmul	f2, f2, f7	# 1722
	fadd	f1, f1, f2	# 1722
	fmul	f1, f1, f10	# 126
	fadd	f1, f6, f1	# 1722
	mul		x7, x30, x6	# 1722
	addi	x7, x7, 60568	# 1722
	fsw		f1, 0(x7)	# 1722
	jal		x0, beq_cont.31050	# 1715
beq.31051:
	mul		x7, x30, x4	# 1716
	addi	x7, x7, 60568	# 1716
	fsw		f4, 0(x7)	# 1716
	mul		x7, x30, x8	# 1717
	addi	x7, x7, 60568	# 1717
	fsw		f5, 0(x7)	# 1717
	mul		x7, x30, x6	# 1718
	addi	x7, x7, 60568	# 1718
	fsw		f6, 0(x7)	# 1718
beq_cont.31050:
	lw		x7, 24(x5)	# 410
	mul		x9, x30, x4	# 320
	addi	x9, x9, 60568	# 320
	flw		f1, 0(x9)	# 320
	fmul	f1, f1, f1	# 127
	mul		x9, x30, x8	# 320
	addi	x9, x9, 60568	# 320
	flw		f2, 0(x9)	# 320
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 320
	mul		x9, x30, x6	# 320
	addi	x9, x9, 60568	# 320
	flw		f2, 0(x9)	# 320
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 320
	fsqrt	f1, f1	# 320
	flw		f2, -60(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31053	# 120
	fadd	f1, f0, f16	# 321
	jal		x0, feq_cont.31052	# 120
feq_else.31053:
	beq		x7, x4, beq.31055	# 321
	lui		x7, %hi(l.25043)	# 321
	ori		x7, x0, %lo(l.25043)	# 321
	flw		f3, 0(x7)	# 321
	fdiv	f1, f3, f1	# 321
	jal		x0, beq_cont.31054	# 321
beq.31055:
	fadd	f3, f0, f16	# 321
	fdiv	f1, f3, f1	# 321
beq_cont.31054:
feq_cont.31052:
	mul		x7, x30, x4	# 322
	addi	x7, x7, 60568	# 322
	flw		f3, 0(x7)	# 322
	fmul	f3, f3, f1	# 322
	mul		x7, x30, x4	# 322
	addi	x7, x7, 60568	# 322
	fsw		f3, 0(x7)	# 322
	mul		x7, x30, x8	# 323
	addi	x7, x7, 60568	# 323
	flw		f3, 0(x7)	# 323
	fmul	f3, f3, f1	# 323
	mul		x7, x30, x8	# 323
	addi	x7, x7, 60568	# 323
	fsw		f3, 0(x7)	# 323
	mul		x7, x30, x6	# 324
	addi	x7, x7, 60568	# 324
	flw		f3, 0(x7)	# 324
	fmul	f1, f3, f1	# 324
	mul		x7, x30, x6	# 324
	addi	x7, x7, 60568	# 324
	fsw		f1, 0(x7)	# 324
	jal		x0, beq_cont.31048	# 1732
beq.31049:
	lw		x7, 16(x5)	# 428
	mul		x9, x30, x4	# 433
	add		x7, x7, x9	# 433
	flw		f1, 0(x7)	# 433
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x4	# 1700
	addi	x7, x7, 60568	# 1700
	fsw		f1, 0(x7)	# 1700
	lw		x7, 16(x5)	# 438
	mul		x9, x30, x8	# 443
	add		x7, x7, x9	# 443
	flw		f1, 0(x7)	# 443
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x8	# 1701
	addi	x7, x7, 60568	# 1701
	fsw		f1, 0(x7)	# 1701
	lw		x7, 16(x5)	# 448
	mul		x9, x30, x6	# 453
	add		x7, x7, x9	# 453
	flw		f1, 0(x7)	# 453
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x6	# 1702
	addi	x7, x7, 60568	# 1702
	fsw		f1, 0(x7)	# 1702
beq_cont.31048:
	jal		x0, beq_cont.31046	# 1730
beq.31047:
	mul		x7, x30, x4	# 1691
	addi	x7, x7, 60544	# 1691
	lw		x7, 0(x7)	# 1691
	mul		x9, x30, x4	# 284
	addi	x9, x9, 60568	# 284
	flw		f1, -60(x2)	# 284
	fsw		f1, 0(x9)	# 284
	mul		x9, x30, x8	# 285
	addi	x9, x9, 60568	# 285
	fsw		f1, 0(x9)	# 285
	lw		x9, -16(x2)	# 286
	mul		x10, x30, x9	# 286
	addi	x10, x10, 60568	# 286
	fsw		f1, 0(x10)	# 286
	sub		x7, x7, x8	# 1694
	mul		x10, x30, x7	# 1694
	add		x6, x6, x10	# 1694
	flw		f2, 0(x6)	# 1694
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.31057	# 120
	fadd	f2, f0, f1	# 249
	jal		x0, feq_cont.31056	# 120
feq_else.31057:
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.31059	# 121
	lui		x6, %hi(l.25043)	# 251
	ori		x6, x0, %lo(l.25043)	# 251
	flw		f2, 0(x6)	# 251
	jal		x0, fle_cont.31058	# 121
fle_else.31059:
	fadd	f2, f0, f16	# 250
fle_cont.31058:
feq_cont.31056:
	fsub	f2, f0, f2	# 123
	mul		x6, x30, x7	# 1694
	addi	x6, x6, 60568	# 1694
	fsw		f2, 0(x6)	# 1694
beq_cont.31046:
	lw		x6, 0(x5)	# 380
	lw		x7, 32(x5)	# 518
	mul		x9, x30, x4	# 523
	add		x7, x7, x9	# 523
	flw		f1, 0(x7)	# 523
	mul		x7, x30, x4	# 1747
	addi	x7, x7, 60580	# 1747
	fsw		f1, 0(x7)	# 1747
	lw		x7, 32(x5)	# 528
	mul		x9, x30, x8	# 533
	add		x7, x7, x9	# 533
	flw		f1, 0(x7)	# 533
	mul		x7, x30, x8	# 1748
	addi	x7, x7, 60580	# 1748
	fsw		f1, 0(x7)	# 1748
	lw		x7, 32(x5)	# 538
	lw		x9, -16(x2)	# 543
	mul		x10, x30, x9	# 543
	add		x7, x7, x10	# 543
	flw		f1, 0(x7)	# 543
	mul		x7, x30, x9	# 1749
	addi	x7, x7, 60580	# 1749
	fsw		f1, 0(x7)	# 1749
	sw		x5, -144(x2)	# 1750
	beq		x6, x8, beq.31061	# 1750
	beq		x6, x9, beq.31063	# 1768
	lw		x7, -40(x2)	# 1775
	beq		x6, x7, beq.31065	# 1775
	addi	x7, x0, 4	# 1786
	beq		x6, x7, beq.31067	# 1786
	jal		x0, beq_cont.31066	# 1786
beq.31067:
	mul		x6, x30, x4	# 1788
	addi	x6, x6, 60552	# 1788
	flw		f1, 0(x6)	# 1788
	lw		x6, 20(x5)	# 468
	mul		x7, x30, x4	# 473
	add		x6, x6, x7	# 473
	flw		f2, 0(x6)	# 473
	fsub	f1, f1, f2	# 1788
	lw		x6, 16(x5)	# 428
	mul		x7, x30, x4	# 433
	add		x6, x6, x7	# 433
	flw		f2, 0(x6)	# 433
	fsqrt	f2, f2	# 1788
	fmul	f1, f1, f2	# 1788
	mul		x6, x30, x9	# 1789
	addi	x6, x6, 60552	# 1789
	flw		f2, 0(x6)	# 1789
	lw		x6, 20(x5)	# 488
	mul		x7, x30, x9	# 493
	add		x6, x6, x7	# 493
	flw		f3, 0(x6)	# 493
	fsub	f2, f2, f3	# 1789
	lw		x6, 16(x5)	# 448
	mul		x7, x30, x9	# 453
	add		x6, x6, x7	# 453
	flw		f3, 0(x6)	# 453
	fsqrt	f3, f3	# 1789
	fmul	f2, f2, f3	# 1789
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1790
	flw		f4, -60(x2)	# 124
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_else.31069	# 124
	fsub	f5, f0, f1	# 124
	jal		x0, fle_cont.31068	# 124
fle_else.31069:
	fadd	f5, f0, f1	# 124
fle_cont.31068:
	lui		x6, %hi(l.26207)	# 1792
	ori		x6, x0, %lo(l.26207)	# 1792
	flw		f6, 0(x6)	# 1792
	fsw		f6, -148(x2)	# 125
	fsw		f3, -152(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.31071	# 125
	fdiv	f1, f2, f1	# 1795
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_cont.31072	# 124
	fsub	f1, f0, f1	# 124
fle_cont.31072:
	lw		x29, -32(x2)	# 1797
	sw		x1, -156(x2)	# 1797
	addi	x2, x2, -160	# 1797
	lw		x31, 0(x29)	# 1797
	jalr	x1, x31, 0	# 1797
	addi	x2, x2, 160	# 1797
	lw		x1, -156(x2)	# 1797
	lui		x4, %hi(l.26211)	# 1797
	ori		x4, x0, %lo(l.26211)	# 1797
	flw		f2, 0(x4)	# 1797
	fmul	f1, f1, f2	# 1797
	fadd	f2, f0, f29	# 1797
	fdiv	f1, f1, f2	# 1797
	jal		x0, fle_cont.31070	# 125
fle_else.31071:
	lui		x6, %hi(l.26209)	# 1793
	ori		x6, x0, %lo(l.26209)	# 1793
	flw		f1, 0(x6)	# 1793
fle_cont.31070:
	fadd	f2, f0, f26	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -72(x2)	# 153
	lw		x29, -56(x2)	# 153
	fsw		f2, -156(x2)	# 153
	fsw		f1, -160(x2)	# 153
	fadd	f1, f0, f3
	sw		x1, -164(x2)	# 153
	addi	x2, x2, -168	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 168	# 153
	lw		x1, -164(x2)	# 153
	lw		x29, -52(x2)	# 166
	sw		x1, -164(x2)	# 166
	addi	x2, x2, -168	# 166
	lw		x31, 0(x29)	# 166
	jalr	x1, x31, 0	# 166
	addi	x2, x2, 168	# 166
	lw		x1, -164(x2)	# 166
	flw		f2, -160(x2)	# 1799
	fsub	f1, f2, f1	# 1799
	lw		x4, -64(x2)	# 1801
	mul		x5, x30, x4	# 1801
	addi	x5, x5, 60552	# 1801
	flw		f2, 0(x5)	# 1801
	lw		x5, -144(x2)	# 478
	lw		x6, 20(x5)	# 478
	mul		x7, x30, x4	# 483
	add		x6, x6, x7	# 483
	flw		f3, 0(x6)	# 483
	fsub	f2, f2, f3	# 1801
	lw		x6, 16(x5)	# 438
	mul		x7, x30, x4	# 443
	add		x6, x6, x7	# 443
	flw		f3, 0(x6)	# 443
	fsqrt	f3, f3	# 1801
	fmul	f2, f2, f3	# 1801
	flw		f3, -60(x2)	# 124
	flw		f4, -152(x2)	# 124
	fle		x31, f4, f3	# 124
	beq		x31, x0, fle_else.31074	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.31073	# 124
fle_else.31074:
	fadd	f5, f0, f4	# 124
fle_cont.31073:
	flw		f6, -148(x2)	# 125
	fsw		f1, -164(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.31076	# 125
	fdiv	f2, f2, f4	# 1806
	fle		x31, f2, f3	# 124
	beq		x31, x0, fle_cont.31077	# 124
	fsub	f2, f0, f2	# 124
fle_cont.31077:
	lw		x29, -32(x2)	# 1807
	fadd	f1, f0, f2
	sw		x1, -168(x2)	# 1807
	addi	x2, x2, -172	# 1807
	lw		x31, 0(x29)	# 1807
	jalr	x1, x31, 0	# 1807
	addi	x2, x2, 172	# 1807
	lw		x1, -168(x2)	# 1807
	lui		x4, %hi(l.26211)	# 1807
	ori		x4, x0, %lo(l.26211)	# 1807
	flw		f2, 0(x4)	# 1807
	fmul	f1, f1, f2	# 1807
	fadd	f2, f0, f29	# 1807
	fdiv	f1, f1, f2	# 1807
	jal		x0, fle_cont.31075	# 125
fle_else.31076:
	lui		x6, %hi(l.26209)	# 1804
	ori		x6, x0, %lo(l.26209)	# 1804
	flw		f1, 0(x6)	# 1804
fle_cont.31075:
	flw		f2, -156(x2)	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -72(x2)	# 153
	lw		x29, -56(x2)	# 153
	fsw		f1, -168(x2)	# 153
	fadd	f1, f0, f3
	sw		x1, -172(x2)	# 153
	addi	x2, x2, -176	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 176	# 153
	lw		x1, -172(x2)	# 153
	lw		x29, -52(x2)	# 166
	sw		x1, -172(x2)	# 166
	addi	x2, x2, -176	# 166
	lw		x31, 0(x29)	# 166
	jalr	x1, x31, 0	# 166
	addi	x2, x2, 176	# 166
	lw		x1, -172(x2)	# 166
	flw		f2, -168(x2)	# 1809
	fsub	f1, f2, f1	# 1809
	fadd	f2, f0, f30	# 1810
	flw		f3, -164(x2)	# 1810
	flw		f4, -156(x2)	# 1810
	fsub	f3, f4, f3	# 1810
	fmul	f3, f3, f3	# 127
	fsub	f2, f2, f3	# 1810
	fsub	f1, f4, f1	# 1810
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1810
	flw		f2, -60(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31079	# 122
	jal		x0, fle_cont.31078	# 122
fle_else.31079:
	fadd	f1, f0, f2	# 1811
fle_cont.31078:
	flw		f3, -48(x2)	# 1812
	fmul	f1, f3, f1	# 1812
	lui		x4, %hi(l.26227)	# 1812
	ori		x4, x0, %lo(l.26227)	# 1812
	flw		f3, 0(x4)	# 1812
	fdiv	f1, f1, f3	# 1812
	lw		x4, -16(x2)	# 1812
	mul		x5, x30, x4	# 1812
	addi	x5, x5, 60580	# 1812
	fsw		f1, 0(x5)	# 1812
beq_cont.31066:
	jal		x0, beq_cont.31064	# 1775
beq.31065:
	mul		x6, x30, x4	# 1778
	addi	x6, x6, 60552	# 1778
	flw		f1, 0(x6)	# 1778
	lw		x6, 20(x5)	# 468
	mul		x7, x30, x4	# 473
	add		x6, x6, x7	# 473
	flw		f2, 0(x6)	# 473
	fsub	f1, f1, f2	# 1778
	mul		x6, x30, x9	# 1779
	addi	x6, x6, 60552	# 1779
	flw		f2, 0(x6)	# 1779
	lw		x6, 20(x5)	# 488
	mul		x7, x30, x9	# 493
	add		x6, x6, x7	# 493
	flw		f3, 0(x6)	# 493
	fsub	f2, f2, f3	# 1779
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1780
	fsqrt	f1, f1	# 1780
	lui		x6, %hi(l.26239)	# 1780
	ori		x6, x0, %lo(l.26239)	# 1780
	flw		f2, 0(x6)	# 1780
	fdiv	f1, f1, f2	# 1780
	fadd	f2, f0, f26	# 166
	fsub	f2, f1, f2	# 166
	lw		x29, -56(x2)	# 153
	fsw		f1, -172(x2)	# 153
	fadd	f1, f0, f2
	sw		x1, -176(x2)	# 153
	addi	x2, x2, -180	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 180	# 153
	lw		x1, -176(x2)	# 153
	lw		x29, -52(x2)	# 166
	sw		x1, -176(x2)	# 166
	addi	x2, x2, -180	# 166
	lw		x31, 0(x29)	# 166
	jalr	x1, x31, 0	# 166
	addi	x2, x2, 180	# 166
	lw		x1, -176(x2)	# 166
	flw		f2, -172(x2)	# 1781
	fsub	f1, f2, f1	# 1781
	fadd	f2, f0, f29	# 1781
	fmul	f1, f1, f2	# 1781
	lw		x29, -36(x2)	# 1782
	sw		x1, -176(x2)	# 1782
	addi	x2, x2, -180	# 1782
	lw		x31, 0(x29)	# 1782
	jalr	x1, x31, 0	# 1782
	addi	x2, x2, 180	# 1782
	lw		x1, -176(x2)	# 1782
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1783
	fmul	f3, f1, f2	# 1783
	lw		x4, -64(x2)	# 1783
	mul		x5, x30, x4	# 1783
	addi	x5, x5, 60580	# 1783
	fsw		f3, 0(x5)	# 1783
	fadd	f3, f0, f16	# 1784
	fsub	f1, f3, f1	# 1784
	fmul	f1, f1, f2	# 1784
	lw		x5, -16(x2)	# 1784
	mul		x6, x30, x5	# 1784
	addi	x6, x6, 60580	# 1784
	fsw		f1, 0(x6)	# 1784
beq_cont.31064:
	jal		x0, beq_cont.31062	# 1768
beq.31063:
	mul		x6, x30, x8	# 1771
	addi	x6, x6, 60552	# 1771
	flw		f1, 0(x6)	# 1771
	lui		x6, %hi(l.26250)	# 1771
	ori		x6, x0, %lo(l.26250)	# 1771
	flw		f2, 0(x6)	# 1771
	fmul	f1, f1, f2	# 1771
	lw		x29, -44(x2)	# 1771
	sw		x1, -176(x2)	# 1771
	addi	x2, x2, -180	# 1771
	lw		x31, 0(x29)	# 1771
	jalr	x1, x31, 0	# 1771
	addi	x2, x2, 180	# 1771
	lw		x1, -176(x2)	# 1771
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1772
	fmul	f3, f2, f1	# 1772
	lw		x4, -72(x2)	# 1772
	mul		x5, x30, x4	# 1772
	addi	x5, x5, 60580	# 1772
	fsw		f3, 0(x5)	# 1772
	fadd	f3, f0, f16	# 1773
	fsub	f1, f3, f1	# 1773
	fmul	f1, f2, f1	# 1773
	lw		x5, -64(x2)	# 1773
	mul		x6, x30, x5	# 1773
	addi	x6, x6, 60580	# 1773
	fsw		f1, 0(x6)	# 1773
beq_cont.31062:
	jal		x0, beq_cont.31060	# 1750
beq.31061:
	mul		x6, x30, x4	# 1753
	addi	x6, x6, 60552	# 1753
	flw		f1, 0(x6)	# 1753
	lw		x6, 20(x5)	# 468
	mul		x7, x30, x4	# 473
	add		x6, x6, x7	# 473
	flw		f2, 0(x6)	# 473
	fsub	f1, f1, f2	# 1753
	lui		x6, %hi(l.26261)	# 1755
	ori		x6, x0, %lo(l.26261)	# 1755
	flw		f2, 0(x6)	# 1755
	fmul	f3, f1, f2	# 1755
	fadd	f4, f0, f26	# 166
	fsub	f3, f3, f4	# 166
	lw		x29, -56(x2)	# 153
	fsw		f4, -176(x2)	# 153
	fsw		f2, -180(x2)	# 153
	fsw		f1, -184(x2)	# 153
	fadd	f1, f0, f3
	sw		x1, -188(x2)	# 153
	addi	x2, x2, -192	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 192	# 153
	lw		x1, -188(x2)	# 153
	lw		x29, -52(x2)	# 166
	sw		x1, -188(x2)	# 166
	addi	x2, x2, -192	# 166
	lw		x31, 0(x29)	# 166
	jalr	x1, x31, 0	# 166
	addi	x2, x2, 192	# 166
	lw		x1, -188(x2)	# 166
	lui		x4, %hi(l.26264)	# 1755
	ori		x4, x0, %lo(l.26264)	# 1755
	flw		f2, 0(x4)	# 1755
	fmul	f1, f1, f2	# 1755
	flw		f3, -184(x2)	# 1756
	fsub	f1, f3, f1	# 1756
	lui		x4, %hi(l.26239)	# 1756
	ori		x4, x0, %lo(l.26239)	# 1756
	flw		f3, 0(x4)	# 1756
	lw		x4, -16(x2)	# 1758
	mul		x5, x30, x4	# 1758
	addi	x5, x5, 60552	# 1758
	flw		f4, 0(x5)	# 1758
	lw		x5, -144(x2)	# 488
	lw		x6, 20(x5)	# 488
	mul		x7, x30, x4	# 493
	add		x6, x6, x7	# 493
	flw		f5, 0(x6)	# 493
	fsub	f4, f4, f5	# 1758
	flw		f5, -180(x2)	# 1760
	fmul	f5, f4, f5	# 1760
	flw		f6, -176(x2)	# 166
	fsub	f5, f5, f6	# 166
	lw		x6, -72(x2)	# 153
	lw		x29, -56(x2)	# 153
	fsw		f1, -188(x2)	# 153
	fsw		f3, -192(x2)	# 153
	fsw		f4, -196(x2)	# 153
	fsw		f2, -200(x2)	# 153
	addi	x4, x6, 0
	fadd	f1, f0, f5
	sw		x1, -204(x2)	# 153
	addi	x2, x2, -208	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 208	# 153
	lw		x1, -204(x2)	# 153
	lw		x29, -52(x2)	# 166
	sw		x1, -204(x2)	# 166
	addi	x2, x2, -208	# 166
	lw		x31, 0(x29)	# 166
	jalr	x1, x31, 0	# 166
	addi	x2, x2, 208	# 166
	lw		x1, -204(x2)	# 166
	flw		f2, -200(x2)	# 1760
	fmul	f1, f1, f2	# 1760
	flw		f2, -196(x2)	# 1761
	fsub	f1, f2, f1	# 1761
	flw		f2, -188(x2)	# 125
	flw		f3, -192(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.31081	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.31083	# 125
	flw		f1, -48(x2)	# 1766
	jal		x0, fle_cont.31082	# 125
fle_else.31083:
	flw		f1, -60(x2)	# 1766
fle_cont.31082:
	jal		x0, fle_cont.31080	# 125
fle_else.31081:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.31085	# 125
	flw		f1, -60(x2)	# 1765
	jal		x0, fle_cont.31084	# 125
fle_else.31085:
	flw		f1, -48(x2)	# 1765
fle_cont.31084:
fle_cont.31080:
	lw		x4, -64(x2)	# 1763
	mul		x5, x30, x4	# 1763
	addi	x5, x5, 60580	# 1763
	fsw		f1, 0(x5)	# 1763
beq_cont.31060:
	lw		x4, -72(x2)	# 1970
	mul		x5, x30, x4	# 1970
	addi	x5, x5, 60536	# 1970
	lw		x5, 0(x5)	# 1970
	lw		x29, -28(x2)	# 1970
	sw		x1, -204(x2)	# 1970
	addi	x2, x2, -208	# 1970
	lw		x31, 0(x29)	# 1970
	jalr	x1, x31, 0	# 1970
	addi	x2, x2, 208	# 1970
	lw		x1, -204(x2)	# 1970
	lw		x5, -72(x2)	# 1970
	beq		x4, x5, beq.31087	# 1970
	jal		x0, beq_cont.31086	# 1970
beq.31087:
	mul		x4, x30, x5	# 329
	addi	x4, x4, 60568	# 329
	flw		f1, 0(x4)	# 329
	mul		x4, x30, x5	# 329
	addi	x4, x4, 60312	# 329
	flw		f2, 0(x4)	# 329
	fmul	f1, f1, f2	# 329
	lw		x4, -64(x2)	# 329
	mul		x6, x30, x4	# 329
	addi	x6, x6, 60568	# 329
	flw		f2, 0(x6)	# 329
	mul		x6, x30, x4	# 329
	addi	x6, x6, 60312	# 329
	flw		f3, 0(x6)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	lw		x6, -16(x2)	# 329
	mul		x7, x30, x6	# 329
	addi	x7, x7, 60568	# 329
	flw		f2, 0(x7)	# 329
	mul		x7, x30, x6	# 329
	addi	x7, x7, 60312	# 329
	flw		f3, 0(x7)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	fsub	f1, f0, f1	# 123
	flw		f2, -60(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_cont.31088	# 121
	fadd	f1, f0, f2	# 1972
fle_cont.31088:
	flw		f2, -136(x2)	# 1973
	fmul	f1, f2, f1	# 1973
	lw		x7, -144(x2)	# 498
	lw		x7, 28(x7)	# 498
	mul		x8, x30, x5	# 503
	add		x7, x7, x8	# 503
	flw		f2, 0(x7)	# 503
	fmul	f1, f1, f2	# 1973
	mul		x7, x30, x5	# 339
	addi	x7, x7, 60592	# 339
	flw		f2, 0(x7)	# 339
	mul		x7, x30, x5	# 339
	addi	x7, x7, 60580	# 339
	flw		f3, 0(x7)	# 339
	fmul	f3, f1, f3	# 339
	fadd	f2, f2, f3	# 339
	mul		x5, x30, x5	# 339
	addi	x5, x5, 60592	# 339
	fsw		f2, 0(x5)	# 339
	mul		x5, x30, x4	# 340
	addi	x5, x5, 60592	# 340
	flw		f2, 0(x5)	# 340
	mul		x5, x30, x4	# 340
	addi	x5, x5, 60580	# 340
	flw		f3, 0(x5)	# 340
	fmul	f3, f1, f3	# 340
	fadd	f2, f2, f3	# 340
	mul		x4, x30, x4	# 340
	addi	x4, x4, 60592	# 340
	fsw		f2, 0(x4)	# 340
	mul		x4, x30, x6	# 341
	addi	x4, x4, 60592	# 341
	flw		f2, 0(x4)	# 341
	mul		x4, x30, x6	# 341
	addi	x4, x4, 60580	# 341
	flw		f3, 0(x4)	# 341
	fmul	f1, f1, f3	# 341
	fadd	f1, f2, f1	# 341
	mul		x4, x30, x6	# 341
	addi	x4, x4, 60592	# 341
	fsw		f1, 0(x4)	# 341
beq_cont.31086:
beq_cont.31045:
fle_cont.30991:
	lw		x4, -16(x2)	# 1991
	lw		x5, -20(x2)	# 1991
	sub		x7, x5, x4	# 1991
	lw		x4, -8(x2)	# 1991
	lw		x5, -4(x2)	# 1991
	lw		x6, 0(x2)	# 1991
	lw		x29, -12(x2)	# 1991
	lw		x31, 0(x29)	# 1991
	jalr	x0, x31, 0	# 1991
do_without_neighbors.2941.17338:
	lw		x6, 24(x29)	# 2072
	lw		x7, 20(x29)	# 2072
	lw		x8, 16(x29)	# 2072
	lw		x9, 12(x29)	# 2072
	lw		x10, 8(x29)	# 2072
	lw		x11, 4(x29)	# 2072
	addi	x12, x0, 4	# 2072
	ble		x5, x12, ble.31089	# 2072
	jalr	x0, x1, 0	# 2082
ble.31089:
	lw		x13, 8(x4)	# 614
	mul		x14, x30, x5	# 2075
	add		x13, x13, x14	# 2075
	lw		x13, 0(x13)	# 2075
	ble		x10, x13, ble.31091	# 2075
	jalr	x0, x1, 0	# 2081
ble.31091:
	lw		x13, 12(x4)	# 621
	mul		x14, x30, x5	# 2077
	add		x13, x13, x14	# 2077
	lw		x13, 0(x13)	# 2077
	sw		x4, 0(x2)	# 2077
	sw		x29, -4(x2)	# 2077
	sw		x11, -8(x2)	# 2077
	sw		x5, -12(x2)	# 2077
	beq		x13, x10, beq_cont.31093	# 2077
	lw		x13, 20(x4)	# 635
	lw		x14, 28(x4)	# 665
	lw		x15, 4(x4)	# 606
	lw		x16, 16(x4)	# 628
	mul		x17, x30, x5	# 2039
	add		x13, x13, x17	# 2039
	lw		x13, 0(x13)	# 2039
	mul		x17, x30, x10	# 296
	add		x17, x13, x17	# 296
	flw		f1, 0(x17)	# 296
	mul		x17, x30, x10	# 296
	addi	x17, x17, 60592	# 296
	fsw		f1, 0(x17)	# 296
	mul		x17, x30, x11	# 297
	add		x17, x13, x17	# 297
	flw		f1, 0(x17)	# 297
	mul		x17, x30, x11	# 297
	addi	x17, x17, 60592	# 297
	fsw		f1, 0(x17)	# 297
	mul		x17, x30, x8	# 298
	add		x13, x13, x17	# 298
	flw		f1, 0(x13)	# 298
	mul		x13, x30, x8	# 298
	addi	x13, x13, 60592	# 298
	fsw		f1, 0(x13)	# 298
	lw		x13, 24(x4)	# 651
	mul		x17, x30, x10	# 653
	add		x13, x13, x17	# 653
	lw		x13, 0(x13)	# 653
	mul		x17, x30, x5	# 2042
	add		x14, x14, x17	# 2042
	lw		x14, 0(x14)	# 2042
	mul		x17, x30, x5	# 2043
	add		x15, x15, x17	# 2043
	lw		x15, 0(x15)	# 2043
	sw		x16, -16(x2)	# 2008
	sw		x12, -20(x2)	# 2008
	sw		x9, -24(x2)	# 2008
	sw		x14, -28(x2)	# 2008
	sw		x7, -32(x2)	# 2008
	sw		x6, -36(x2)	# 2008
	sw		x8, -40(x2)	# 2008
	sw		x15, -44(x2)	# 2008
	sw		x10, -48(x2)	# 2008
	sw		x13, -52(x2)	# 2008
	beq		x13, x10, beq_cont.31094	# 2008
	mul		x17, x30, x10	# 2009
	addi	x17, x17, 60716	# 2009
	lw		x17, 0(x17)	# 2009
	mul		x18, x30, x10	# 296
	add		x18, x15, x18	# 296
	flw		f1, 0(x18)	# 296
	mul		x18, x30, x10	# 296
	addi	x18, x18, 60648	# 296
	fsw		f1, 0(x18)	# 296
	mul		x18, x30, x11	# 297
	add		x18, x15, x18	# 297
	flw		f1, 0(x18)	# 297
	mul		x18, x30, x11	# 297
	addi	x18, x18, 60648	# 297
	fsw		f1, 0(x18)	# 297
	mul		x18, x30, x8	# 298
	add		x18, x15, x18	# 298
	flw		f1, 0(x18)	# 298
	mul		x18, x30, x8	# 298
	addi	x18, x18, 60648	# 298
	fsw		f1, 0(x18)	# 298
	mul		x18, x30, x10	# 1352
	addi	x18, x18, 60000	# 1352
	lw		x18, 0(x18)	# 1352
	sub		x18, x18, x11	# 1352
	sw		x17, -56(x2)	# 1352
	addi	x5, x18, 0
	addi	x4, x15, 0
	addi	x29, x6, 0
	sw		x1, -60(x2)	# 1352
	addi	x2, x2, -64	# 1352
	lw		x31, 0(x29)	# 1352
	jalr	x1, x31, 0	# 1352
	addi	x2, x2, 64	# 1352
	lw		x1, -60(x2)	# 1352
	addi	x7, x0, 118	# 2001
	lw		x4, -56(x2)	# 2001
	lw		x5, -28(x2)	# 2001
	lw		x6, -44(x2)	# 2001
	lw		x29, -32(x2)	# 2001
	sw		x1, -60(x2)	# 2001
	addi	x2, x2, -64	# 2001
	lw		x31, 0(x29)	# 2001
	jalr	x1, x31, 0	# 2001
	addi	x2, x2, 64	# 2001
	lw		x1, -60(x2)	# 2001
beq_cont.31094:
	lw		x4, -8(x2)	# 2012
	lw		x5, -52(x2)	# 2012
	beq		x5, x4, beq_cont.31095	# 2012
	mul		x6, x30, x4	# 2013
	addi	x6, x6, 60716	# 2013
	lw		x6, 0(x6)	# 2013
	lw		x7, -48(x2)	# 296
	mul		x8, x30, x7	# 296
	lw		x9, -44(x2)	# 296
	add		x8, x9, x8	# 296
	flw		f1, 0(x8)	# 296
	mul		x8, x30, x7	# 296
	addi	x8, x8, 60648	# 296
	fsw		f1, 0(x8)	# 296
	mul		x8, x30, x4	# 297
	add		x8, x9, x8	# 297
	flw		f1, 0(x8)	# 297
	mul		x8, x30, x4	# 297
	addi	x8, x8, 60648	# 297
	fsw		f1, 0(x8)	# 297
	lw		x8, -40(x2)	# 298
	mul		x10, x30, x8	# 298
	add		x10, x9, x10	# 298
	flw		f1, 0(x10)	# 298
	mul		x10, x30, x8	# 298
	addi	x10, x10, 60648	# 298
	fsw		f1, 0(x10)	# 298
	mul		x10, x30, x7	# 1352
	addi	x10, x10, 60000	# 1352
	lw		x10, 0(x10)	# 1352
	sub		x10, x10, x4	# 1352
	lw		x29, -36(x2)	# 1352
	sw		x6, -60(x2)	# 1352
	addi	x5, x10, 0
	addi	x4, x9, 0
	sw		x1, -64(x2)	# 1352
	addi	x2, x2, -68	# 1352
	lw		x31, 0(x29)	# 1352
	jalr	x1, x31, 0	# 1352
	addi	x2, x2, 68	# 1352
	lw		x1, -64(x2)	# 1352
	addi	x7, x0, 118	# 2001
	lw		x4, -60(x2)	# 2001
	lw		x5, -28(x2)	# 2001
	lw		x6, -44(x2)	# 2001
	lw		x29, -32(x2)	# 2001
	sw		x1, -64(x2)	# 2001
	addi	x2, x2, -68	# 2001
	lw		x31, 0(x29)	# 2001
	jalr	x1, x31, 0	# 2001
	addi	x2, x2, 68	# 2001
	lw		x1, -64(x2)	# 2001
beq_cont.31095:
	lw		x4, -40(x2)	# 2016
	lw		x5, -52(x2)	# 2016
	beq		x5, x4, beq_cont.31096	# 2016
	mul		x6, x30, x4	# 2017
	addi	x6, x6, 60716	# 2017
	lw		x6, 0(x6)	# 2017
	lw		x7, -48(x2)	# 296
	mul		x8, x30, x7	# 296
	lw		x9, -44(x2)	# 296
	add		x8, x9, x8	# 296
	flw		f1, 0(x8)	# 296
	mul		x8, x30, x7	# 296
	addi	x8, x8, 60648	# 296
	fsw		f1, 0(x8)	# 296
	lw		x8, -8(x2)	# 297
	mul		x10, x30, x8	# 297
	add		x10, x9, x10	# 297
	flw		f1, 0(x10)	# 297
	mul		x10, x30, x8	# 297
	addi	x10, x10, 60648	# 297
	fsw		f1, 0(x10)	# 297
	mul		x10, x30, x4	# 298
	add		x10, x9, x10	# 298
	flw		f1, 0(x10)	# 298
	mul		x10, x30, x4	# 298
	addi	x10, x10, 60648	# 298
	fsw		f1, 0(x10)	# 298
	mul		x10, x30, x7	# 1352
	addi	x10, x10, 60000	# 1352
	lw		x10, 0(x10)	# 1352
	sub		x10, x10, x8	# 1352
	lw		x29, -36(x2)	# 1352
	sw		x6, -64(x2)	# 1352
	addi	x5, x10, 0
	addi	x4, x9, 0
	sw		x1, -68(x2)	# 1352
	addi	x2, x2, -72	# 1352
	lw		x31, 0(x29)	# 1352
	jalr	x1, x31, 0	# 1352
	addi	x2, x2, 72	# 1352
	lw		x1, -68(x2)	# 1352
	addi	x7, x0, 118	# 2001
	lw		x4, -64(x2)	# 2001
	lw		x5, -28(x2)	# 2001
	lw		x6, -44(x2)	# 2001
	lw		x29, -32(x2)	# 2001
	sw		x1, -68(x2)	# 2001
	addi	x2, x2, -72	# 2001
	lw		x31, 0(x29)	# 2001
	jalr	x1, x31, 0	# 2001
	addi	x2, x2, 72	# 2001
	lw		x1, -68(x2)	# 2001
beq_cont.31096:
	lw		x4, -24(x2)	# 2020
	lw		x5, -52(x2)	# 2020
	beq		x5, x4, beq_cont.31097	# 2020
	mul		x4, x30, x4	# 2021
	addi	x4, x4, 60716	# 2021
	lw		x4, 0(x4)	# 2021
	lw		x6, -48(x2)	# 296
	mul		x7, x30, x6	# 296
	lw		x8, -44(x2)	# 296
	add		x7, x8, x7	# 296
	flw		f1, 0(x7)	# 296
	mul		x7, x30, x6	# 296
	addi	x7, x7, 60648	# 296
	fsw		f1, 0(x7)	# 296
	lw		x7, -8(x2)	# 297
	mul		x9, x30, x7	# 297
	add		x9, x8, x9	# 297
	flw		f1, 0(x9)	# 297
	mul		x9, x30, x7	# 297
	addi	x9, x9, 60648	# 297
	fsw		f1, 0(x9)	# 297
	lw		x9, -40(x2)	# 298
	mul		x10, x30, x9	# 298
	add		x10, x8, x10	# 298
	flw		f1, 0(x10)	# 298
	mul		x10, x30, x9	# 298
	addi	x10, x10, 60648	# 298
	fsw		f1, 0(x10)	# 298
	mul		x10, x30, x6	# 1352
	addi	x10, x10, 60000	# 1352
	lw		x10, 0(x10)	# 1352
	sub		x10, x10, x7	# 1352
	lw		x29, -36(x2)	# 1352
	sw		x4, -68(x2)	# 1352
	addi	x5, x10, 0
	addi	x4, x8, 0
	sw		x1, -72(x2)	# 1352
	addi	x2, x2, -76	# 1352
	lw		x31, 0(x29)	# 1352
	jalr	x1, x31, 0	# 1352
	addi	x2, x2, 76	# 1352
	lw		x1, -72(x2)	# 1352
	addi	x7, x0, 118	# 2001
	lw		x4, -68(x2)	# 2001
	lw		x5, -28(x2)	# 2001
	lw		x6, -44(x2)	# 2001
	lw		x29, -32(x2)	# 2001
	sw		x1, -72(x2)	# 2001
	addi	x2, x2, -76	# 2001
	lw		x31, 0(x29)	# 2001
	jalr	x1, x31, 0	# 2001
	addi	x2, x2, 76	# 2001
	lw		x1, -72(x2)	# 2001
beq_cont.31097:
	lw		x4, -20(x2)	# 2024
	lw		x5, -52(x2)	# 2024
	beq		x5, x4, beq_cont.31098	# 2024
	mul		x4, x30, x4	# 2025
	addi	x4, x4, 60716	# 2025
	lw		x4, 0(x4)	# 2025
	lw		x5, -48(x2)	# 296
	mul		x6, x30, x5	# 296
	lw		x7, -44(x2)	# 296
	add		x6, x7, x6	# 296
	flw		f1, 0(x6)	# 296
	mul		x6, x30, x5	# 296
	addi	x6, x6, 60648	# 296
	fsw		f1, 0(x6)	# 296
	lw		x6, -8(x2)	# 297
	mul		x8, x30, x6	# 297
	add		x8, x7, x8	# 297
	flw		f1, 0(x8)	# 297
	mul		x8, x30, x6	# 297
	addi	x8, x8, 60648	# 297
	fsw		f1, 0(x8)	# 297
	lw		x8, -40(x2)	# 298
	mul		x9, x30, x8	# 298
	add		x9, x7, x9	# 298
	flw		f1, 0(x9)	# 298
	mul		x9, x30, x8	# 298
	addi	x9, x9, 60648	# 298
	fsw		f1, 0(x9)	# 298
	mul		x9, x30, x5	# 1352
	addi	x9, x9, 60000	# 1352
	lw		x9, 0(x9)	# 1352
	sub		x9, x9, x6	# 1352
	lw		x29, -36(x2)	# 1352
	sw		x4, -72(x2)	# 1352
	addi	x5, x9, 0
	addi	x4, x7, 0
	sw		x1, -76(x2)	# 1352
	addi	x2, x2, -80	# 1352
	lw		x31, 0(x29)	# 1352
	jalr	x1, x31, 0	# 1352
	addi	x2, x2, 80	# 1352
	lw		x1, -76(x2)	# 1352
	addi	x7, x0, 118	# 2001
	lw		x4, -72(x2)	# 2001
	lw		x5, -28(x2)	# 2001
	lw		x6, -44(x2)	# 2001
	lw		x29, -32(x2)	# 2001
	sw		x1, -76(x2)	# 2001
	addi	x2, x2, -80	# 2001
	lw		x31, 0(x29)	# 2001
	jalr	x1, x31, 0	# 2001
	addi	x2, x2, 80	# 2001
	lw		x1, -76(x2)	# 2001
beq_cont.31098:
	lw		x4, -12(x2)	# 2044
	mul		x5, x30, x4	# 2044
	lw		x6, -16(x2)	# 2044
	add		x5, x6, x5	# 2044
	lw		x5, 0(x5)	# 2044
	lw		x6, -48(x2)	# 369
	mul		x7, x30, x6	# 369
	addi	x7, x7, 60604	# 369
	flw		f1, 0(x7)	# 369
	mul		x7, x30, x6	# 369
	add		x7, x5, x7	# 369
	flw		f2, 0(x7)	# 369
	mul		x7, x30, x6	# 369
	addi	x7, x7, 60592	# 369
	flw		f3, 0(x7)	# 369
	fmul	f2, f2, f3	# 369
	fadd	f1, f1, f2	# 369
	mul		x6, x30, x6	# 369
	addi	x6, x6, 60604	# 369
	fsw		f1, 0(x6)	# 369
	lw		x6, -8(x2)	# 370
	mul		x7, x30, x6	# 370
	addi	x7, x7, 60604	# 370
	flw		f1, 0(x7)	# 370
	mul		x7, x30, x6	# 370
	add		x7, x5, x7	# 370
	flw		f2, 0(x7)	# 370
	mul		x7, x30, x6	# 370
	addi	x7, x7, 60592	# 370
	flw		f3, 0(x7)	# 370
	fmul	f2, f2, f3	# 370
	fadd	f1, f1, f2	# 370
	mul		x7, x30, x6	# 370
	addi	x7, x7, 60604	# 370
	fsw		f1, 0(x7)	# 370
	lw		x7, -40(x2)	# 371
	mul		x8, x30, x7	# 371
	addi	x8, x8, 60604	# 371
	flw		f1, 0(x8)	# 371
	mul		x8, x30, x7	# 371
	add		x5, x5, x8	# 371
	flw		f2, 0(x5)	# 371
	mul		x5, x30, x7	# 371
	addi	x5, x5, 60592	# 371
	flw		f3, 0(x5)	# 371
	fmul	f2, f2, f3	# 371
	fadd	f1, f1, f2	# 371
	mul		x5, x30, x7	# 371
	addi	x5, x5, 60604	# 371
	fsw		f1, 0(x5)	# 371
beq_cont.31093:
	lw		x4, -8(x2)	# 2080
	lw		x5, -12(x2)	# 2080
	add		x5, x5, x4	# 2080
	lw		x4, 0(x2)	# 2080
	lw		x29, -4(x2)	# 2080
	lw		x31, 0(x29)	# 2080
	jalr	x0, x31, 0	# 2080
try_exploit_neighbors.2957.17341:
	lw		x10, 16(x29)	# 2124
	lw		x11, 12(x29)	# 2124
	lw		x12, 8(x29)	# 2124
	lw		x13, 4(x29)	# 2124
	mul		x14, x30, x4	# 2124
	add		x14, x7, x14	# 2124
	lw		x14, 0(x14)	# 2124
	addi	x15, x0, 4	# 2125
	ble		x9, x15, ble.31099	# 2125
	jalr	x0, x1, 0	# 2144
ble.31099:
	lw		x15, 8(x14)	# 614
	mul		x16, x30, x9	# 2100
	add		x15, x15, x16	# 2100
	lw		x15, 0(x15)	# 2100
	ble		x12, x15, ble.31101	# 2128
	jalr	x0, x1, 0	# 2143
ble.31101:
	lw		x15, 8(x14)	# 614
	mul		x16, x30, x9	# 2100
	add		x15, x15, x16	# 2100
	lw		x15, 0(x15)	# 2100
	mul		x16, x30, x4	# 2108
	add		x16, x6, x16	# 2108
	lw		x16, 0(x16)	# 2108
	lw		x17, 8(x16)	# 614
	mul		x18, x30, x9	# 2100
	add		x17, x17, x18	# 2100
	lw		x17, 0(x17)	# 2100
	beq		x17, x15, beq.31104	# 2108
	addi	x15, x0, 0	# 2116
	jal		x0, beq_cont.31103	# 2108
beq.31104:
	mul		x17, x30, x4	# 2109
	add		x17, x8, x17	# 2109
	lw		x17, 0(x17)	# 2109
	lw		x17, 8(x17)	# 614
	mul		x18, x30, x9	# 2100
	add		x17, x17, x18	# 2100
	lw		x17, 0(x17)	# 2100
	beq		x17, x15, beq.31106	# 2109
	addi	x15, x0, 0	# 2115
	jal		x0, beq_cont.31105	# 2109
beq.31106:
	sub		x17, x4, x13	# 2110
	mul		x17, x30, x17	# 2110
	add		x17, x7, x17	# 2110
	lw		x17, 0(x17)	# 2110
	lw		x17, 8(x17)	# 614
	mul		x18, x30, x9	# 2100
	add		x17, x17, x18	# 2100
	lw		x17, 0(x17)	# 2100
	beq		x17, x15, beq.31108	# 2110
	addi	x15, x0, 0	# 2114
	jal		x0, beq_cont.31107	# 2110
beq.31108:
	add		x17, x4, x13	# 2111
	mul		x17, x30, x17	# 2111
	add		x17, x7, x17	# 2111
	lw		x17, 0(x17)	# 2111
	lw		x17, 8(x17)	# 614
	mul		x18, x30, x9	# 2100
	add		x17, x17, x18	# 2100
	lw		x17, 0(x17)	# 2100
	beq		x17, x15, beq.31110	# 2111
	addi	x15, x0, 0	# 2113
	jal		x0, beq_cont.31109	# 2111
beq.31110:
	addi	x15, x0, 1	# 2112
beq_cont.31109:
beq_cont.31107:
beq_cont.31105:
beq_cont.31103:
	beq		x15, x12, beq.31111	# 2130
	lw		x10, 12(x14)	# 621
	mul		x15, x30, x9	# 2134
	add		x10, x10, x15	# 2134
	lw		x10, 0(x10)	# 2134
	beq		x10, x12, beq_cont.31112	# 2134
	lw		x10, 20(x16)	# 635
	sub		x15, x4, x13	# 2054
	mul		x15, x30, x15	# 2054
	add		x15, x7, x15	# 2054
	lw		x15, 0(x15)	# 2054
	lw		x15, 20(x15)	# 635
	lw		x14, 20(x14)	# 635
	add		x16, x4, x13	# 2056
	mul		x16, x30, x16	# 2056
	add		x16, x7, x16	# 2056
	lw		x16, 0(x16)	# 2056
	lw		x16, 20(x16)	# 635
	mul		x17, x30, x4	# 2057
	add		x17, x8, x17	# 2057
	lw		x17, 0(x17)	# 2057
	lw		x17, 20(x17)	# 635
	mul		x18, x30, x9	# 2059
	add		x10, x10, x18	# 2059
	lw		x10, 0(x10)	# 2059
	mul		x18, x30, x12	# 296
	add		x18, x10, x18	# 296
	flw		f1, 0(x18)	# 296
	mul		x18, x30, x12	# 296
	addi	x18, x18, 60592	# 296
	fsw		f1, 0(x18)	# 296
	mul		x18, x30, x13	# 297
	add		x18, x10, x18	# 297
	flw		f1, 0(x18)	# 297
	mul		x18, x30, x13	# 297
	addi	x18, x18, 60592	# 297
	fsw		f1, 0(x18)	# 297
	mul		x18, x30, x11	# 298
	add		x10, x10, x18	# 298
	flw		f1, 0(x10)	# 298
	mul		x10, x30, x11	# 298
	addi	x10, x10, 60592	# 298
	fsw		f1, 0(x10)	# 298
	mul		x10, x30, x9	# 2060
	add		x10, x15, x10	# 2060
	lw		x10, 0(x10)	# 2060
	mul		x15, x30, x12	# 346
	addi	x15, x15, 60592	# 346
	flw		f1, 0(x15)	# 346
	mul		x15, x30, x12	# 346
	add		x15, x10, x15	# 346
	flw		f2, 0(x15)	# 346
	fadd	f1, f1, f2	# 346
	mul		x15, x30, x12	# 346
	addi	x15, x15, 60592	# 346
	fsw		f1, 0(x15)	# 346
	mul		x15, x30, x13	# 347
	addi	x15, x15, 60592	# 347
	flw		f1, 0(x15)	# 347
	mul		x15, x30, x13	# 347
	add		x15, x10, x15	# 347
	flw		f2, 0(x15)	# 347
	fadd	f1, f1, f2	# 347
	mul		x15, x30, x13	# 347
	addi	x15, x15, 60592	# 347
	fsw		f1, 0(x15)	# 347
	mul		x15, x30, x11	# 348
	addi	x15, x15, 60592	# 348
	flw		f1, 0(x15)	# 348
	mul		x15, x30, x11	# 348
	add		x10, x10, x15	# 348
	flw		f2, 0(x10)	# 348
	fadd	f1, f1, f2	# 348
	mul		x10, x30, x11	# 348
	addi	x10, x10, 60592	# 348
	fsw		f1, 0(x10)	# 348
	mul		x10, x30, x9	# 2061
	add		x10, x14, x10	# 2061
	lw		x10, 0(x10)	# 2061
	mul		x14, x30, x12	# 346
	addi	x14, x14, 60592	# 346
	flw		f1, 0(x14)	# 346
	mul		x14, x30, x12	# 346
	add		x14, x10, x14	# 346
	flw		f2, 0(x14)	# 346
	fadd	f1, f1, f2	# 346
	mul		x14, x30, x12	# 346
	addi	x14, x14, 60592	# 346
	fsw		f1, 0(x14)	# 346
	mul		x14, x30, x13	# 347
	addi	x14, x14, 60592	# 347
	flw		f1, 0(x14)	# 347
	mul		x14, x30, x13	# 347
	add		x14, x10, x14	# 347
	flw		f2, 0(x14)	# 347
	fadd	f1, f1, f2	# 347
	mul		x14, x30, x13	# 347
	addi	x14, x14, 60592	# 347
	fsw		f1, 0(x14)	# 347
	mul		x14, x30, x11	# 348
	addi	x14, x14, 60592	# 348
	flw		f1, 0(x14)	# 348
	mul		x14, x30, x11	# 348
	add		x10, x10, x14	# 348
	flw		f2, 0(x10)	# 348
	fadd	f1, f1, f2	# 348
	mul		x10, x30, x11	# 348
	addi	x10, x10, 60592	# 348
	fsw		f1, 0(x10)	# 348
	mul		x10, x30, x9	# 2062
	add		x10, x16, x10	# 2062
	lw		x10, 0(x10)	# 2062
	mul		x14, x30, x12	# 346
	addi	x14, x14, 60592	# 346
	flw		f1, 0(x14)	# 346
	mul		x14, x30, x12	# 346
	add		x14, x10, x14	# 346
	flw		f2, 0(x14)	# 346
	fadd	f1, f1, f2	# 346
	mul		x14, x30, x12	# 346
	addi	x14, x14, 60592	# 346
	fsw		f1, 0(x14)	# 346
	mul		x14, x30, x13	# 347
	addi	x14, x14, 60592	# 347
	flw		f1, 0(x14)	# 347
	mul		x14, x30, x13	# 347
	add		x14, x10, x14	# 347
	flw		f2, 0(x14)	# 347
	fadd	f1, f1, f2	# 347
	mul		x14, x30, x13	# 347
	addi	x14, x14, 60592	# 347
	fsw		f1, 0(x14)	# 347
	mul		x14, x30, x11	# 348
	addi	x14, x14, 60592	# 348
	flw		f1, 0(x14)	# 348
	mul		x14, x30, x11	# 348
	add		x10, x10, x14	# 348
	flw		f2, 0(x10)	# 348
	fadd	f1, f1, f2	# 348
	mul		x10, x30, x11	# 348
	addi	x10, x10, 60592	# 348
	fsw		f1, 0(x10)	# 348
	mul		x10, x30, x9	# 2063
	add		x10, x17, x10	# 2063
	lw		x10, 0(x10)	# 2063
	mul		x14, x30, x12	# 346
	addi	x14, x14, 60592	# 346
	flw		f1, 0(x14)	# 346
	mul		x14, x30, x12	# 346
	add		x14, x10, x14	# 346
	flw		f2, 0(x14)	# 346
	fadd	f1, f1, f2	# 346
	mul		x14, x30, x12	# 346
	addi	x14, x14, 60592	# 346
	fsw		f1, 0(x14)	# 346
	mul		x14, x30, x13	# 347
	addi	x14, x14, 60592	# 347
	flw		f1, 0(x14)	# 347
	mul		x14, x30, x13	# 347
	add		x14, x10, x14	# 347
	flw		f2, 0(x14)	# 347
	fadd	f1, f1, f2	# 347
	mul		x14, x30, x13	# 347
	addi	x14, x14, 60592	# 347
	fsw		f1, 0(x14)	# 347
	mul		x14, x30, x11	# 348
	addi	x14, x14, 60592	# 348
	flw		f1, 0(x14)	# 348
	mul		x14, x30, x11	# 348
	add		x10, x10, x14	# 348
	flw		f2, 0(x10)	# 348
	fadd	f1, f1, f2	# 348
	mul		x10, x30, x11	# 348
	addi	x10, x10, 60592	# 348
	fsw		f1, 0(x10)	# 348
	mul		x10, x30, x4	# 2065
	add		x10, x7, x10	# 2065
	lw		x10, 0(x10)	# 2065
	lw		x10, 16(x10)	# 628
	mul		x14, x30, x9	# 2066
	add		x10, x10, x14	# 2066
	lw		x10, 0(x10)	# 2066
	mul		x14, x30, x12	# 369
	addi	x14, x14, 60604	# 369
	flw		f1, 0(x14)	# 369
	mul		x14, x30, x12	# 369
	add		x14, x10, x14	# 369
	flw		f2, 0(x14)	# 369
	mul		x14, x30, x12	# 369
	addi	x14, x14, 60592	# 369
	flw		f3, 0(x14)	# 369
	fmul	f2, f2, f3	# 369
	fadd	f1, f1, f2	# 369
	mul		x12, x30, x12	# 369
	addi	x12, x12, 60604	# 369
	fsw		f1, 0(x12)	# 369
	mul		x12, x30, x13	# 370
	addi	x12, x12, 60604	# 370
	flw		f1, 0(x12)	# 370
	mul		x12, x30, x13	# 370
	add		x12, x10, x12	# 370
	flw		f2, 0(x12)	# 370
	mul		x12, x30, x13	# 370
	addi	x12, x12, 60592	# 370
	flw		f3, 0(x12)	# 370
	fmul	f2, f2, f3	# 370
	fadd	f1, f1, f2	# 370
	mul		x12, x30, x13	# 370
	addi	x12, x12, 60604	# 370
	fsw		f1, 0(x12)	# 370
	mul		x12, x30, x11	# 371
	addi	x12, x12, 60604	# 371
	flw		f1, 0(x12)	# 371
	mul		x12, x30, x11	# 371
	add		x10, x10, x12	# 371
	flw		f2, 0(x10)	# 371
	mul		x10, x30, x11	# 371
	addi	x10, x10, 60592	# 371
	flw		f3, 0(x10)	# 371
	fmul	f2, f2, f3	# 371
	fadd	f1, f1, f2	# 371
	mul		x10, x30, x11	# 371
	addi	x10, x10, 60604	# 371
	fsw		f1, 0(x10)	# 371
beq_cont.31112:
	add		x9, x9, x13	# 2139
	lw		x31, 0(x29)	# 2139
	jalr	x0, x31, 0	# 2139
beq.31111:
	addi	x5, x9, 0
	addi	x4, x14, 0
	addi	x29, x10, 0
	lw		x31, 0(x29)	# 2142
	jalr	x0, x31, 0	# 2142
pretrace_diffuse_rays.2972.17348:
	lw		x6, 24(x29)	# 2200
	lw		x7, 20(x29)	# 2200
	lw		x8, 16(x29)	# 2200
	lw		x9, 12(x29)	# 2200
	lw		x10, 8(x29)	# 2200
	flw		f1, 4(x29)	# 2200
	addi	x11, x0, 4	# 2200
	ble		x5, x11, ble.31113	# 2200
	jalr	x0, x1, 0	# 2224
ble.31113:
	lw		x11, 8(x4)	# 614
	mul		x12, x30, x5	# 2100
	add		x11, x11, x12	# 2100
	lw		x11, 0(x11)	# 2100
	ble		x9, x11, ble.31115	# 2204
	jalr	x0, x1, 0	# 2223
ble.31115:
	lw		x11, 12(x4)	# 621
	mul		x12, x30, x5	# 2207
	add		x11, x11, x12	# 2207
	lw		x11, 0(x11)	# 2207
	sw		x29, 0(x2)	# 2207
	sw		x10, -4(x2)	# 2207
	sw		x5, -8(x2)	# 2207
	beq		x11, x9, beq_cont.31117	# 2207
	lw		x11, 24(x4)	# 651
	mul		x12, x30, x9	# 653
	add		x11, x11, x12	# 653
	lw		x11, 0(x11)	# 653
	mul		x12, x30, x9	# 284
	addi	x12, x12, 60592	# 284
	fsw		f1, 0(x12)	# 284
	mul		x12, x30, x10	# 285
	addi	x12, x12, 60592	# 285
	fsw		f1, 0(x12)	# 285
	mul		x12, x30, x8	# 286
	addi	x12, x12, 60592	# 286
	fsw		f1, 0(x12)	# 286
	lw		x12, 28(x4)	# 665
	lw		x13, 4(x4)	# 606
	mul		x11, x30, x11	# 2216
	addi	x11, x11, 60716	# 2216
	lw		x11, 0(x11)	# 2216
	mul		x14, x30, x5	# 2217
	add		x12, x12, x14	# 2217
	lw		x12, 0(x12)	# 2217
	mul		x14, x30, x5	# 2218
	add		x13, x13, x14	# 2218
	lw		x13, 0(x13)	# 2218
	mul		x14, x30, x9	# 296
	add		x14, x13, x14	# 296
	flw		f1, 0(x14)	# 296
	mul		x14, x30, x9	# 296
	addi	x14, x14, 60648	# 296
	fsw		f1, 0(x14)	# 296
	mul		x14, x30, x10	# 297
	add		x14, x13, x14	# 297
	flw		f1, 0(x14)	# 297
	mul		x14, x30, x10	# 297
	addi	x14, x14, 60648	# 297
	fsw		f1, 0(x14)	# 297
	mul		x14, x30, x8	# 298
	add		x14, x13, x14	# 298
	flw		f1, 0(x14)	# 298
	mul		x14, x30, x8	# 298
	addi	x14, x14, 60648	# 298
	fsw		f1, 0(x14)	# 298
	mul		x14, x30, x9	# 1352
	addi	x14, x14, 60000	# 1352
	lw		x14, 0(x14)	# 1352
	sub		x14, x14, x10	# 1352
	sw		x8, -12(x2)	# 1352
	sw		x9, -16(x2)	# 1352
	sw		x4, -20(x2)	# 1352
	sw		x13, -24(x2)	# 1352
	sw		x12, -28(x2)	# 1352
	sw		x11, -32(x2)	# 1352
	sw		x7, -36(x2)	# 1352
	addi	x5, x14, 0
	addi	x4, x13, 0
	addi	x29, x6, 0
	sw		x1, -40(x2)	# 1352
	addi	x2, x2, -44	# 1352
	lw		x31, 0(x29)	# 1352
	jalr	x1, x31, 0	# 1352
	addi	x2, x2, 44	# 1352
	lw		x1, -40(x2)	# 1352
	addi	x7, x0, 118	# 2001
	lw		x4, -32(x2)	# 2001
	lw		x5, -28(x2)	# 2001
	lw		x6, -24(x2)	# 2001
	lw		x29, -36(x2)	# 2001
	sw		x1, -40(x2)	# 2001
	addi	x2, x2, -44	# 2001
	lw		x31, 0(x29)	# 2001
	jalr	x1, x31, 0	# 2001
	addi	x2, x2, 44	# 2001
	lw		x1, -40(x2)	# 2001
	lw		x4, -20(x2)	# 635
	lw		x5, 20(x4)	# 635
	lw		x6, -8(x2)	# 2220
	mul		x7, x30, x6	# 2220
	add		x5, x5, x7	# 2220
	lw		x5, 0(x5)	# 2220
	lw		x7, -16(x2)	# 296
	mul		x8, x30, x7	# 296
	addi	x8, x8, 60592	# 296
	flw		f1, 0(x8)	# 296
	mul		x7, x30, x7	# 296
	add		x7, x5, x7	# 296
	fsw		f1, 0(x7)	# 296
	lw		x7, -4(x2)	# 297
	mul		x8, x30, x7	# 297
	addi	x8, x8, 60592	# 297
	flw		f1, 0(x8)	# 297
	mul		x8, x30, x7	# 297
	add		x8, x5, x8	# 297
	fsw		f1, 0(x8)	# 297
	lw		x8, -12(x2)	# 298
	mul		x9, x30, x8	# 298
	addi	x9, x9, 60592	# 298
	flw		f1, 0(x9)	# 298
	mul		x8, x30, x8	# 298
	add		x5, x5, x8	# 298
	fsw		f1, 0(x5)	# 298
beq_cont.31117:
	lw		x5, -4(x2)	# 2222
	lw		x6, -8(x2)	# 2222
	add		x5, x6, x5	# 2222
	lw		x29, 0(x2)	# 2222
	lw		x31, 0(x29)	# 2222
	jalr	x0, x31, 0	# 2222
pretrace_pixels.2975.17351:
	lw		x7, 32(x29)	# 2230
	lw		x8, 28(x29)	# 2230
	lw		x9, 24(x29)	# 2230
	lw		x10, 20(x29)	# 2230
	lw		x11, 16(x29)	# 2230
	lw		x12, 12(x29)	# 2230
	lw		x13, 8(x29)	# 2230
	flw		f4, 4(x29)	# 2230
	ble		x12, x5, ble.31118	# 2230
	jalr	x0, x1, 0	# 2250
ble.31118:
	mul		x14, x30, x12	# 2232
	addi	x14, x14, 60632	# 2232
	flw		f5, 0(x14)	# 2232
	mul		x14, x30, x12	# 2232
	addi	x14, x14, 60624	# 2232
	lw		x14, 0(x14)	# 2232
	sub		x14, x5, x14	# 2232
	sw		x29, 0(x2)	# 2232
	sw		x10, -4(x2)	# 2232
	sw		x8, -8(x2)	# 2232
	sw		x6, -12(x2)	# 2232
	sw		x7, -16(x2)	# 2232
	sw		x4, -20(x2)	# 2232
	sw		x5, -24(x2)	# 2232
	fsw		f4, -28(x2)	# 2232
	fsw		f3, -32(x2)	# 2232
	sw		x11, -36(x2)	# 2232
	fsw		f2, -40(x2)	# 2232
	sw		x13, -44(x2)	# 2232
	fsw		f1, -48(x2)	# 2232
	sw		x12, -52(x2)	# 2232
	fsw		f5, -56(x2)	# 2232
	addi	x4, x14, 0
	addi	x29, x9, 0
	sw		x1, -60(x2)	# 2232
	addi	x2, x2, -64	# 2232
	lw		x31, 0(x29)	# 2232
	jalr	x1, x31, 0	# 2232
	addi	x2, x2, 64	# 2232
	lw		x1, -60(x2)	# 2232
	flw		f2, -56(x2)	# 2232
	fmul	f1, f2, f1	# 2232
	lw		x4, -52(x2)	# 2233
	mul		x5, x30, x4	# 2233
	addi	x5, x5, 60660	# 2233
	flw		f2, 0(x5)	# 2233
	fmul	f2, f1, f2	# 2233
	flw		f3, -48(x2)	# 2233
	fadd	f2, f2, f3	# 2233
	mul		x5, x30, x4	# 2233
	addi	x5, x5, 60696	# 2233
	fsw		f2, 0(x5)	# 2233
	lw		x5, -44(x2)	# 2234
	mul		x6, x30, x5	# 2234
	addi	x6, x6, 60660	# 2234
	flw		f2, 0(x6)	# 2234
	fmul	f2, f1, f2	# 2234
	flw		f4, -40(x2)	# 2234
	fadd	f2, f2, f4	# 2234
	mul		x6, x30, x5	# 2234
	addi	x6, x6, 60696	# 2234
	fsw		f2, 0(x6)	# 2234
	lw		x6, -36(x2)	# 2235
	mul		x7, x30, x6	# 2235
	addi	x7, x7, 60660	# 2235
	flw		f2, 0(x7)	# 2235
	fmul	f1, f1, f2	# 2235
	flw		f2, -32(x2)	# 2235
	fadd	f1, f1, f2	# 2235
	mul		x7, x30, x6	# 2235
	addi	x7, x7, 60696	# 2235
	fsw		f1, 0(x7)	# 2235
	mul		x7, x30, x4	# 320
	addi	x7, x7, 60696	# 320
	flw		f1, 0(x7)	# 320
	fmul	f1, f1, f1	# 127
	mul		x7, x30, x5	# 320
	addi	x7, x7, 60696	# 320
	flw		f5, 0(x7)	# 320
	fmul	f5, f5, f5	# 127
	fadd	f1, f1, f5	# 320
	mul		x7, x30, x6	# 320
	addi	x7, x7, 60696	# 320
	flw		f5, 0(x7)	# 320
	fmul	f5, f5, f5	# 127
	fadd	f1, f1, f5	# 320
	fsqrt	f1, f1	# 320
	flw		f5, -28(x2)	# 120
	feq		x31, f1, f5	# 120
	beq		x31, x0, feq_else.31121	# 120
	fadd	f1, f0, f16	# 321
	jal		x0, feq_cont.31120	# 120
feq_else.31121:
	fadd	f6, f0, f16	# 321
	fdiv	f1, f6, f1	# 321
feq_cont.31120:
	mul		x7, x30, x4	# 322
	addi	x7, x7, 60696	# 322
	flw		f6, 0(x7)	# 322
	fmul	f6, f6, f1	# 322
	mul		x7, x30, x4	# 322
	addi	x7, x7, 60696	# 322
	fsw		f6, 0(x7)	# 322
	mul		x7, x30, x5	# 323
	addi	x7, x7, 60696	# 323
	flw		f6, 0(x7)	# 323
	fmul	f6, f6, f1	# 323
	mul		x7, x30, x5	# 323
	addi	x7, x7, 60696	# 323
	fsw		f6, 0(x7)	# 323
	mul		x7, x30, x6	# 324
	addi	x7, x7, 60696	# 324
	flw		f6, 0(x7)	# 324
	fmul	f1, f6, f1	# 324
	mul		x7, x30, x6	# 324
	addi	x7, x7, 60696	# 324
	fsw		f1, 0(x7)	# 324
	mul		x7, x30, x4	# 284
	addi	x7, x7, 60604	# 284
	fsw		f5, 0(x7)	# 284
	mul		x7, x30, x5	# 285
	addi	x7, x7, 60604	# 285
	fsw		f5, 0(x7)	# 285
	mul		x7, x30, x6	# 286
	addi	x7, x7, 60604	# 286
	fsw		f5, 0(x7)	# 286
	mul		x7, x30, x4	# 296
	addi	x7, x7, 60300	# 296
	flw		f1, 0(x7)	# 296
	mul		x7, x30, x4	# 296
	addi	x7, x7, 60636	# 296
	fsw		f1, 0(x7)	# 296
	mul		x7, x30, x5	# 297
	addi	x7, x7, 60300	# 297
	flw		f1, 0(x7)	# 297
	mul		x7, x30, x5	# 297
	addi	x7, x7, 60636	# 297
	fsw		f1, 0(x7)	# 297
	mul		x7, x30, x6	# 298
	addi	x7, x7, 60300	# 298
	flw		f1, 0(x7)	# 298
	mul		x7, x30, x6	# 298
	addi	x7, x7, 60636	# 298
	fsw		f1, 0(x7)	# 298
	fadd	f1, f0, f16	# 2241
	lw		x7, -24(x2)	# 2241
	mul		x8, x30, x7	# 2241
	lw		x9, -20(x2)	# 2241
	add		x8, x9, x8	# 2241
	lw		x8, 0(x8)	# 2241
	addi	x10, x0, 60696	# 2241
	lw		x29, -16(x2)	# 2241
	addi	x6, x8, 0
	addi	x5, x10, 0
	fadd	f2, f0, f5
	sw		x1, -60(x2)	# 2241
	addi	x2, x2, -64	# 2241
	lw		x31, 0(x29)	# 2241
	jalr	x1, x31, 0	# 2241
	addi	x2, x2, 64	# 2241
	lw		x1, -60(x2)	# 2241
	lw		x4, -24(x2)	# 2242
	mul		x5, x30, x4	# 2242
	lw		x6, -20(x2)	# 2242
	add		x5, x6, x5	# 2242
	lw		x5, 0(x5)	# 2242
	lw		x5, 0(x5)	# 599
	lw		x7, -52(x2)	# 296
	mul		x8, x30, x7	# 296
	addi	x8, x8, 60604	# 296
	flw		f1, 0(x8)	# 296
	mul		x8, x30, x7	# 296
	add		x8, x5, x8	# 296
	fsw		f1, 0(x8)	# 296
	lw		x8, -44(x2)	# 297
	mul		x9, x30, x8	# 297
	addi	x9, x9, 60604	# 297
	flw		f1, 0(x9)	# 297
	mul		x9, x30, x8	# 297
	add		x9, x5, x9	# 297
	fsw		f1, 0(x9)	# 297
	lw		x9, -36(x2)	# 298
	mul		x10, x30, x9	# 298
	addi	x10, x10, 60604	# 298
	flw		f1, 0(x10)	# 298
	mul		x9, x30, x9	# 298
	add		x5, x5, x9	# 298
	fsw		f1, 0(x5)	# 298
	mul		x5, x30, x4	# 2243
	add		x5, x6, x5	# 2243
	lw		x5, 0(x5)	# 2243
	lw		x5, 24(x5)	# 658
	mul		x9, x30, x7	# 660
	add		x5, x5, x9	# 660
	lw		x9, -12(x2)	# 660
	sw		x9, 0(x5)	# 660
	mul		x5, x30, x4	# 2246
	add		x5, x6, x5	# 2246
	lw		x5, 0(x5)	# 2246
	lw		x29, -8(x2)	# 2246
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -60(x2)	# 2246
	addi	x2, x2, -64	# 2246
	lw		x31, 0(x29)	# 2246
	jalr	x1, x31, 0	# 2246
	addi	x2, x2, 64	# 2246
	lw		x1, -60(x2)	# 2246
	lw		x4, -44(x2)	# 2248
	lw		x5, -24(x2)	# 2248
	sub		x5, x5, x4	# 2248
	lw		x6, -12(x2)	# 261
	add		x4, x6, x4	# 261
	lw		x6, -4(x2)	# 262
	ble		x6, x4, ble.31123	# 262
	addi	x6, x4, 0	# 262
	jal		x0, ble_cont.31122	# 262
ble.31123:
	sub		x6, x4, x6	# 262
ble_cont.31122:
	flw		f1, -48(x2)	# 2248
	flw		f2, -40(x2)	# 2248
	flw		f3, -32(x2)	# 2248
	lw		x4, -20(x2)	# 2248
	lw		x29, 0(x2)	# 2248
	lw		x31, 0(x29)	# 2248
	jalr	x0, x31, 0	# 2248
scan_pixel.2986.17358:
	lw		x10, 28(x29)	# 2271
	lw		x11, 24(x29)	# 2271
	lw		x12, 20(x29)	# 2271
	lw		x13, 16(x29)	# 2271
	lw		x14, 12(x29)	# 2271
	lw		x15, 8(x29)	# 2271
	lw		x16, 4(x29)	# 2271
	mul		x17, x30, x15	# 2271
	addi	x17, x17, 60616	# 2271
	lw		x17, 0(x17)	# 2271
	ble		x17, x4, ble.31124	# 2271
	mul		x17, x30, x4	# 2274
	add		x17, x7, x17	# 2274
	lw		x17, 0(x17)	# 2274
	lw		x17, 0(x17)	# 599
	mul		x18, x30, x15	# 296
	add		x18, x17, x18	# 296
	flw		f1, 0(x18)	# 296
	mul		x18, x30, x15	# 296
	addi	x18, x18, 60604	# 296
	fsw		f1, 0(x18)	# 296
	mul		x18, x30, x16	# 297
	add		x18, x17, x18	# 297
	flw		f1, 0(x18)	# 297
	mul		x18, x30, x16	# 297
	addi	x18, x18, 60604	# 297
	fsw		f1, 0(x18)	# 297
	mul		x18, x30, x13	# 298
	add		x17, x17, x18	# 298
	flw		f1, 0(x17)	# 298
	mul		x17, x30, x13	# 298
	addi	x17, x17, 60604	# 298
	fsw		f1, 0(x17)	# 298
	mul		x17, x30, x16	# 2087
	addi	x17, x17, 60616	# 2087
	lw		x17, 0(x17)	# 2087
	add		x18, x5, x16	# 2087
	ble		x17, x18, ble.31126	# 2087
	ble		x5, x15, ble.31128	# 2088
	mul		x17, x30, x15	# 2089
	addi	x17, x17, 60616	# 2089
	lw		x17, 0(x17)	# 2089
	add		x18, x4, x16	# 2089
	ble		x17, x18, ble.31130	# 2089
	ble		x4, x15, ble.31132	# 2090
	addi	x17, x0, 1	# 2091
	jal		x0, ble_cont.31131	# 2090
ble.31132:
	addi	x17, x0, 0	# 2092
ble_cont.31131:
	jal		x0, ble_cont.31129	# 2089
ble.31130:
	addi	x17, x0, 0	# 2093
ble_cont.31129:
	jal		x0, ble_cont.31127	# 2088
ble.31128:
	addi	x17, x0, 0	# 2094
ble_cont.31127:
	jal		x0, ble_cont.31125	# 2087
ble.31126:
	addi	x17, x0, 0	# 2095
ble_cont.31125:
	sw		x8, 0(x2)	# 2277
	sw		x7, -4(x2)	# 2277
	sw		x6, -8(x2)	# 2277
	sw		x5, -12(x2)	# 2277
	sw		x29, -16(x2)	# 2277
	sw		x4, -20(x2)	# 2277
	sw		x13, -24(x2)	# 2277
	sw		x16, -28(x2)	# 2277
	sw		x11, -32(x2)	# 2277
	sw		x15, -36(x2)	# 2277
	sw		x14, -40(x2)	# 2277
	sw		x9, -44(x2)	# 2277
	beq		x17, x15, beq.31134	# 2277
	addi	x9, x15, 0
	addi	x29, x10, 0
	sw		x1, -48(x2)	# 2278
	addi	x2, x2, -52	# 2278
	lw		x31, 0(x29)	# 2278
	jalr	x1, x31, 0	# 2278
	addi	x2, x2, 52	# 2278
	lw		x1, -48(x2)	# 2278
	jal		x0, beq_cont.31133	# 2277
beq.31134:
	mul		x10, x30, x4	# 2280
	add		x10, x7, x10	# 2280
	lw		x10, 0(x10)	# 2280
	addi	x5, x15, 0
	addi	x4, x10, 0
	addi	x29, x12, 0
	sw		x1, -48(x2)	# 2280
	addi	x2, x2, -52	# 2280
	lw		x31, 0(x29)	# 2280
	jalr	x1, x31, 0	# 2280
	addi	x2, x2, 52	# 2280
	lw		x1, -48(x2)	# 2280
beq_cont.31133:
	lw		x4, -40(x2)	# 2177
	lw		x5, -44(x2)	# 2177
	beq		x5, x4, beq.31136	# 2177
	lw		x4, -36(x2)	# 2185
	mul		x6, x30, x4	# 2185
	addi	x6, x6, 60604	# 2185
	flw		f1, 0(x6)	# 2185
	lw		x29, -32(x2)	# 153
	sw		x1, -48(x2)	# 153
	addi	x2, x2, -52	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 52	# 153
	lw		x1, -48(x2)	# 153
	addi	x5, x0, 255	# 2172
	ble		x4, x5, ble.31138	# 2172
	addi	x4, x0, 255	# 2172
	jal		x0, ble_cont.31137	# 2172
ble.31138:
	lw		x6, -36(x2)	# 2172
	ble		x6, x4, ble_cont.31139	# 2172
	addi	x4, x0, 0	# 2172
ble_cont.31139:
ble_cont.31137:
	sw		x5, -48(x2)	# 2173
	sw		x1, -52(x2)	# 2173
	addi	x2, x2, -56	# 2173
	jal		x1, min_caml_print_char	# 2173
	addi	x2, x2, 56	# 2173
	lw		x1, -52(x2)	# 2173
	lw		x4, -28(x2)	# 2186
	mul		x5, x30, x4	# 2186
	addi	x5, x5, 60604	# 2186
	flw		f1, 0(x5)	# 2186
	lw		x5, -36(x2)	# 153
	lw		x29, -32(x2)	# 153
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 153
	addi	x2, x2, -56	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 56	# 153
	lw		x1, -52(x2)	# 153
	lw		x5, -48(x2)	# 2172
	ble		x4, x5, ble.31141	# 2172
	addi	x4, x0, 255	# 2172
	jal		x0, ble_cont.31140	# 2172
ble.31141:
	lw		x6, -36(x2)	# 2172
	ble		x6, x4, ble_cont.31142	# 2172
	addi	x4, x0, 0	# 2172
ble_cont.31142:
ble_cont.31140:
	sw		x1, -52(x2)	# 2173
	addi	x2, x2, -56	# 2173
	jal		x1, min_caml_print_char	# 2173
	addi	x2, x2, 56	# 2173
	lw		x1, -52(x2)	# 2173
	lw		x4, -24(x2)	# 2187
	mul		x4, x30, x4	# 2187
	addi	x4, x4, 60604	# 2187
	flw		f1, 0(x4)	# 2187
	lw		x4, -36(x2)	# 153
	lw		x29, -32(x2)	# 153
	sw		x1, -52(x2)	# 153
	addi	x2, x2, -56	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 56	# 153
	lw		x1, -52(x2)	# 153
	lw		x5, -48(x2)	# 2172
	ble		x4, x5, ble.31144	# 2172
	addi	x4, x0, 255	# 2172
	jal		x0, ble_cont.31143	# 2172
ble.31144:
	lw		x5, -36(x2)	# 2172
	ble		x5, x4, ble_cont.31145	# 2172
	addi	x4, x0, 0	# 2172
ble_cont.31145:
ble_cont.31143:
	sw		x1, -52(x2)	# 2173
	addi	x2, x2, -56	# 2173
	jal		x1, min_caml_print_char	# 2173
	addi	x2, x2, 56	# 2173
	lw		x1, -52(x2)	# 2173
	jal		x0, beq_cont.31135	# 2177
beq.31136:
	lw		x4, -36(x2)	# 2178
	mul		x6, x30, x4	# 2178
	addi	x6, x6, 60604	# 2178
	flw		f1, 0(x6)	# 2178
	lw		x29, -32(x2)	# 153
	sw		x1, -52(x2)	# 153
	addi	x2, x2, -56	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 56	# 153
	lw		x1, -52(x2)	# 153
	addi	x5, x0, 255	# 2166
	ble		x4, x5, ble.31147	# 2166
	addi	x4, x0, 255	# 2166
	jal		x0, ble_cont.31146	# 2166
ble.31147:
	lw		x6, -36(x2)	# 2166
	ble		x6, x4, ble_cont.31148	# 2166
	addi	x4, x0, 0	# 2166
ble_cont.31148:
ble_cont.31146:
	sw		x5, -52(x2)	# 2167
	sw		x1, -56(x2)	# 2167
	addi	x2, x2, -60	# 2167
	jal		x1, min_caml_print_int	# 2167
	addi	x2, x2, 60	# 2167
	lw		x1, -56(x2)	# 2167
	addi	x4, x0, 32	# 2179
	sw		x4, -56(x2)	# 2179
	sw		x1, -60(x2)	# 2179
	addi	x2, x2, -64	# 2179
	jal		x1, min_caml_print_char	# 2179
	addi	x2, x2, 64	# 2179
	lw		x1, -60(x2)	# 2179
	lw		x4, -28(x2)	# 2180
	mul		x5, x30, x4	# 2180
	addi	x5, x5, 60604	# 2180
	flw		f1, 0(x5)	# 2180
	lw		x5, -36(x2)	# 153
	lw		x29, -32(x2)	# 153
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 153
	addi	x2, x2, -64	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 64	# 153
	lw		x1, -60(x2)	# 153
	lw		x5, -52(x2)	# 2166
	ble		x4, x5, ble.31150	# 2166
	addi	x4, x0, 255	# 2166
	jal		x0, ble_cont.31149	# 2166
ble.31150:
	lw		x6, -36(x2)	# 2166
	ble		x6, x4, ble_cont.31151	# 2166
	addi	x4, x0, 0	# 2166
ble_cont.31151:
ble_cont.31149:
	sw		x1, -60(x2)	# 2167
	addi	x2, x2, -64	# 2167
	jal		x1, min_caml_print_int	# 2167
	addi	x2, x2, 64	# 2167
	lw		x1, -60(x2)	# 2167
	lw		x4, -56(x2)	# 2181
	sw		x1, -60(x2)	# 2181
	addi	x2, x2, -64	# 2181
	jal		x1, min_caml_print_char	# 2181
	addi	x2, x2, 64	# 2181
	lw		x1, -60(x2)	# 2181
	lw		x4, -24(x2)	# 2182
	mul		x4, x30, x4	# 2182
	addi	x4, x4, 60604	# 2182
	flw		f1, 0(x4)	# 2182
	lw		x4, -36(x2)	# 153
	lw		x29, -32(x2)	# 153
	sw		x1, -60(x2)	# 153
	addi	x2, x2, -64	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 64	# 153
	lw		x1, -60(x2)	# 153
	lw		x5, -52(x2)	# 2166
	ble		x4, x5, ble.31153	# 2166
	addi	x4, x0, 255	# 2166
	jal		x0, ble_cont.31152	# 2166
ble.31153:
	lw		x5, -36(x2)	# 2166
	ble		x5, x4, ble_cont.31154	# 2166
	addi	x4, x0, 0	# 2166
ble_cont.31154:
ble_cont.31152:
	sw		x1, -60(x2)	# 2167
	addi	x2, x2, -64	# 2167
	jal		x1, min_caml_print_int	# 2167
	addi	x2, x2, 64	# 2167
	lw		x1, -60(x2)	# 2167
	addi	x4, x0, 10	# 2183
	sw		x1, -60(x2)	# 2183
	addi	x2, x2, -64	# 2183
	jal		x1, min_caml_print_char	# 2183
	addi	x2, x2, 64	# 2183
	lw		x1, -60(x2)	# 2183
beq_cont.31135:
	lw		x4, -28(x2)	# 2285
	lw		x5, -20(x2)	# 2285
	add		x4, x5, x4	# 2285
	lw		x5, -12(x2)	# 2285
	lw		x6, -8(x2)	# 2285
	lw		x7, -4(x2)	# 2285
	lw		x8, 0(x2)	# 2285
	lw		x9, -44(x2)	# 2285
	lw		x29, -16(x2)	# 2285
	lw		x31, 0(x29)	# 2285
	jalr	x0, x31, 0	# 2285
ble.31124:
	jalr	x0, x1, 0	# 2286
scan_line.2993.17365:
	lw		x10, 28(x29)	# 2292
	lw		x11, 24(x29)	# 2292
	lw		x12, 20(x29)	# 2292
	lw		x13, 16(x29)	# 2292
	lw		x14, 12(x29)	# 2292
	lw		x15, 8(x29)	# 2292
	lw		x16, 4(x29)	# 2292
	mul		x17, x30, x16	# 2292
	addi	x17, x17, 60616	# 2292
	lw		x17, 0(x17)	# 2292
	ble		x17, x4, ble.31156	# 2292
	sub		x17, x17, x16	# 2294
	sw		x29, 0(x2)	# 2294
	sw		x13, -4(x2)	# 2294
	sw		x14, -8(x2)	# 2294
	sw		x8, -12(x2)	# 2294
	sw		x16, -16(x2)	# 2294
	sw		x9, -20(x2)	# 2294
	sw		x7, -24(x2)	# 2294
	sw		x6, -28(x2)	# 2294
	sw		x5, -32(x2)	# 2294
	sw		x4, -36(x2)	# 2294
	sw		x15, -40(x2)	# 2294
	sw		x10, -44(x2)	# 2294
	ble		x17, x4, ble_cont.31157	# 2294
	add		x17, x4, x16	# 2295
	mul		x18, x30, x15	# 2255
	addi	x18, x18, 60632	# 2255
	flw		f1, 0(x18)	# 2255
	mul		x18, x30, x16	# 2255
	addi	x18, x18, 60624	# 2255
	lw		x18, 0(x18)	# 2255
	sub		x17, x17, x18	# 2255
	sw		x11, -48(x2)	# 2255
	fsw		f1, -52(x2)	# 2255
	addi	x4, x17, 0
	addi	x29, x12, 0
	sw		x1, -56(x2)	# 2255
	addi	x2, x2, -60	# 2255
	lw		x31, 0(x29)	# 2255
	jalr	x1, x31, 0	# 2255
	addi	x2, x2, 60	# 2255
	lw		x1, -56(x2)	# 2255
	flw		f2, -52(x2)	# 2255
	fmul	f1, f2, f1	# 2255
	lw		x4, -40(x2)	# 2258
	mul		x5, x30, x4	# 2258
	addi	x5, x5, 60672	# 2258
	flw		f2, 0(x5)	# 2258
	fmul	f2, f1, f2	# 2258
	mul		x5, x30, x4	# 2258
	addi	x5, x5, 60684	# 2258
	flw		f3, 0(x5)	# 2258
	fadd	f2, f2, f3	# 2258
	lw		x5, -16(x2)	# 2259
	mul		x6, x30, x5	# 2259
	addi	x6, x6, 60672	# 2259
	flw		f3, 0(x6)	# 2259
	fmul	f3, f1, f3	# 2259
	mul		x6, x30, x5	# 2259
	addi	x6, x6, 60684	# 2259
	flw		f4, 0(x6)	# 2259
	fadd	f3, f3, f4	# 2259
	lw		x6, -8(x2)	# 2260
	mul		x7, x30, x6	# 2260
	addi	x7, x7, 60672	# 2260
	flw		f4, 0(x7)	# 2260
	fmul	f1, f1, f4	# 2260
	mul		x7, x30, x6	# 2260
	addi	x7, x7, 60684	# 2260
	flw		f4, 0(x7)	# 2260
	fadd	f1, f1, f4	# 2260
	mul		x7, x30, x4	# 2261
	addi	x7, x7, 60616	# 2261
	lw		x7, 0(x7)	# 2261
	sub		x7, x7, x5	# 2261
	lw		x8, -24(x2)	# 2261
	lw		x9, -12(x2)	# 2261
	lw		x29, -48(x2)	# 2261
	addi	x6, x9, 0
	addi	x5, x7, 0
	addi	x4, x8, 0
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -56(x2)	# 2261
	addi	x2, x2, -60	# 2261
	lw		x31, 0(x29)	# 2261
	jalr	x1, x31, 0	# 2261
	addi	x2, x2, 60	# 2261
	lw		x1, -56(x2)	# 2261
ble_cont.31157:
	lw		x4, -40(x2)	# 2297
	lw		x5, -36(x2)	# 2297
	lw		x6, -32(x2)	# 2297
	lw		x7, -28(x2)	# 2297
	lw		x8, -24(x2)	# 2297
	lw		x9, -20(x2)	# 2297
	lw		x29, -44(x2)	# 2297
	sw		x1, -56(x2)	# 2297
	addi	x2, x2, -60	# 2297
	lw		x31, 0(x29)	# 2297
	jalr	x1, x31, 0	# 2297
	addi	x2, x2, 60	# 2297
	lw		x1, -56(x2)	# 2297
	lw		x4, -16(x2)	# 2298
	lw		x5, -36(x2)	# 2298
	add		x4, x5, x4	# 2298
	lw		x5, -8(x2)	# 261
	lw		x6, -12(x2)	# 261
	add		x5, x6, x5	# 261
	lw		x6, -4(x2)	# 262
	ble		x6, x5, ble.31159	# 262
	addi	x8, x5, 0	# 262
	jal		x0, ble_cont.31158	# 262
ble.31159:
	sub		x8, x5, x6	# 262
ble_cont.31158:
	lw		x5, -28(x2)	# 2298
	lw		x6, -24(x2)	# 2298
	lw		x7, -32(x2)	# 2298
	lw		x9, -20(x2)	# 2298
	lw		x29, 0(x2)	# 2298
	lw		x31, 0(x29)	# 2298
	jalr	x0, x31, 0	# 2298
ble.31156:
	jalr	x0, x1, 0	# 2299
init_line_elements.3004.17372:
	lw		x6, 24(x29)	# 2334
	lw		x7, 20(x29)	# 2334
	lw		x8, 16(x29)	# 2334
	lw		x9, 12(x29)	# 2334
	lw		x10, 8(x29)	# 2334
	flw		f1, 4(x29)	# 2334
	ble		x9, x5, ble.31161	# 2334
	jalr	x0, x1, 0	# 2338
ble.31161:
	sw		x29, 0(x2)	# 2321
	sw		x4, -4(x2)	# 2321
	sw		x5, -8(x2)	# 2321
	sw		x9, -12(x2)	# 2321
	sw		x7, -16(x2)	# 2321
	sw		x10, -20(x2)	# 2321
	sw		x6, -24(x2)	# 2321
	fsw		f1, -28(x2)	# 2321
	sw		x8, -32(x2)	# 2321
	addi	x4, x8, 0
	sw		x1, -36(x2)	# 2321
	addi	x2, x2, -40	# 2321
	jal		x1, min_caml_create_float_array	# 2321
	addi	x2, x2, 40	# 2321
	lw		x1, -36(x2)	# 2321
	flw		f1, -28(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -36(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -40(x2)	# 2309
	addi	x2, x2, -44	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 44	# 2309
	lw		x1, -40(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -24(x2)	# 2310
	sw		x1, -40(x2)	# 2310
	addi	x2, x2, -44	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 44	# 2310
	lw		x1, -40(x2)	# 2310
	flw		f1, -28(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -40(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -44(x2)	# 2311
	addi	x2, x2, -48	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 48	# 2311
	lw		x1, -44(x2)	# 2311
	lw		x5, -20(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -40(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -28(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -44(x2)	# 2312
	addi	x2, x2, -48	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 48	# 2312
	lw		x1, -44(x2)	# 2312
	lw		x5, -16(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -40(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -28(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -44(x2)	# 2313
	addi	x2, x2, -48	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 48	# 2313
	lw		x1, -44(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -40(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	addi	x4, x0, 4	# 2314
	flw		f1, -28(x2)	# 2314
	sw		x4, -44(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 2314
	addi	x2, x2, -52	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 52	# 2314
	lw		x1, -48(x2)	# 2314
	lw		x5, -44(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -40(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -24(x2)	# 2323
	lw		x6, -12(x2)	# 2323
	addi	x5, x6, 0
	sw		x1, -48(x2)	# 2323
	addi	x2, x2, -52	# 2323
	jal		x1, min_caml_create_array	# 2323
	addi	x2, x2, 52	# 2323
	lw		x1, -48(x2)	# 2323
	lw		x5, -24(x2)	# 2324
	lw		x6, -12(x2)	# 2324
	sw		x4, -48(x2)	# 2324
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -52(x2)	# 2324
	addi	x2, x2, -56	# 2324
	jal		x1, min_caml_create_array	# 2324
	addi	x2, x2, 56	# 2324
	lw		x1, -52(x2)	# 2324
	flw		f1, -28(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -52(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -56(x2)	# 2309
	addi	x2, x2, -60	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 60	# 2309
	lw		x1, -56(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -24(x2)	# 2310
	sw		x1, -56(x2)	# 2310
	addi	x2, x2, -60	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 60	# 2310
	lw		x1, -56(x2)	# 2310
	flw		f1, -28(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -56(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 2311
	addi	x2, x2, -64	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 64	# 2311
	lw		x1, -60(x2)	# 2311
	lw		x5, -20(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -56(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -28(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -60(x2)	# 2312
	addi	x2, x2, -64	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 64	# 2312
	lw		x1, -60(x2)	# 2312
	lw		x5, -16(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -56(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -28(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -60(x2)	# 2313
	addi	x2, x2, -64	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 64	# 2313
	lw		x1, -60(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -56(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -28(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 2314
	addi	x2, x2, -64	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 64	# 2314
	lw		x1, -60(x2)	# 2314
	lw		x5, -44(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -56(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	flw		f1, -28(x2)	# 2309
	lw		x4, -32(x2)	# 2309
	sw		x1, -60(x2)	# 2309
	addi	x2, x2, -64	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 64	# 2309
	lw		x1, -60(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -24(x2)	# 2310
	sw		x1, -60(x2)	# 2310
	addi	x2, x2, -64	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 64	# 2310
	lw		x1, -60(x2)	# 2310
	flw		f1, -28(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -60(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 2311
	addi	x2, x2, -68	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 68	# 2311
	lw		x1, -64(x2)	# 2311
	lw		x5, -20(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -60(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -28(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -64(x2)	# 2312
	addi	x2, x2, -68	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 68	# 2312
	lw		x1, -64(x2)	# 2312
	lw		x5, -16(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -60(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -28(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -64(x2)	# 2313
	addi	x2, x2, -68	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 68	# 2313
	lw		x1, -64(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -60(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -28(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 2314
	addi	x2, x2, -68	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 68	# 2314
	lw		x1, -64(x2)	# 2314
	lw		x5, -44(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -60(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -20(x2)	# 2327
	lw		x6, -12(x2)	# 2327
	addi	x5, x6, 0
	sw		x1, -64(x2)	# 2327
	addi	x2, x2, -68	# 2327
	jal		x1, min_caml_create_array	# 2327
	addi	x2, x2, 68	# 2327
	lw		x1, -64(x2)	# 2327
	flw		f1, -28(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -64(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -68(x2)	# 2309
	addi	x2, x2, -72	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 72	# 2309
	lw		x1, -68(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -24(x2)	# 2310
	sw		x1, -68(x2)	# 2310
	addi	x2, x2, -72	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 72	# 2310
	lw		x1, -68(x2)	# 2310
	flw		f1, -28(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -68(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 2311
	addi	x2, x2, -76	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 76	# 2311
	lw		x1, -72(x2)	# 2311
	lw		x5, -20(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -68(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -28(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -72(x2)	# 2312
	addi	x2, x2, -76	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 76	# 2312
	lw		x1, -72(x2)	# 2312
	lw		x5, -16(x2)	# 2312
	mul		x5, x30, x5	# 2312
	lw		x6, -68(x2)	# 2312
	add		x5, x6, x5	# 2312
	sw		x4, 0(x5)	# 2312
	flw		f1, -28(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -72(x2)	# 2313
	addi	x2, x2, -76	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 76	# 2313
	lw		x1, -72(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -68(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -28(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 2314
	addi	x2, x2, -76	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 76	# 2314
	lw		x1, -72(x2)	# 2314
	lw		x5, -44(x2)	# 2314
	mul		x5, x30, x5	# 2314
	lw		x6, -68(x2)	# 2314
	add		x5, x6, x5	# 2314
	sw		x4, 0(x5)	# 2314
	addi	x4, x3, 0	# 2329
	addi	x3, x3, 32	# 2329
	sw		x6, 28(x4)	# 2329
	lw		x5, -64(x2)	# 2329
	sw		x5, 24(x4)	# 2329
	lw		x5, -60(x2)	# 2329
	sw		x5, 20(x4)	# 2329
	lw		x5, -56(x2)	# 2329
	sw		x5, 16(x4)	# 2329
	lw		x5, -52(x2)	# 2329
	sw		x5, 12(x4)	# 2329
	lw		x5, -48(x2)	# 2329
	sw		x5, 8(x4)	# 2329
	lw		x5, -40(x2)	# 2329
	sw		x5, 4(x4)	# 2329
	lw		x5, -36(x2)	# 2329
	sw		x5, 0(x4)	# 2329
	lw		x5, -8(x2)	# 2335
	mul		x6, x30, x5	# 2335
	lw		x7, -4(x2)	# 2335
	add		x6, x7, x6	# 2335
	sw		x4, 0(x6)	# 2335
	lw		x4, -20(x2)	# 2336
	sub		x5, x5, x4	# 2336
	lw		x29, 0(x2)	# 2336
	addi	x4, x7, 0
	lw		x31, 0(x29)	# 2336
	jalr	x0, x31, 0	# 2336
calc_dirvec.3014.17375:
	lw		x7, 28(x29)	# 2371
	lw		x8, 24(x29)	# 2371
	lw		x9, 20(x29)	# 2371
	lw		x10, 16(x29)	# 2371
	lw		x11, 12(x29)	# 2371
	lw		x12, 8(x29)	# 2371
	lw		x13, 4(x29)	# 2371
	ble		x10, x4, ble.31162	# 2371
	fmul	f1, f2, f2	# 2362
	lui		x10, %hi(l.26438)	# 2362
	ori		x10, x0, %lo(l.26438)	# 2362
	flw		f2, 0(x10)	# 2362
	fadd	f1, f1, f2	# 2362
	fsqrt	f1, f1	# 2362
	fadd	f5, f0, f16	# 2363
	fdiv	f6, f5, f1	# 2363
	sw		x6, 0(x2)	# 2364
	sw		x5, -4(x2)	# 2364
	sw		x29, -8(x2)	# 2364
	fsw		f4, -12(x2)	# 2364
	sw		x9, -16(x2)	# 2364
	fsw		f5, -20(x2)	# 2364
	fsw		f2, -24(x2)	# 2364
	sw		x13, -28(x2)	# 2364
	sw		x4, -32(x2)	# 2364
	fsw		f1, -36(x2)	# 2364
	sw		x8, -40(x2)	# 2364
	sw		x7, -44(x2)	# 2364
	fsw		f3, -48(x2)	# 2364
	addi	x29, x9, 0
	fadd	f1, f0, f6
	sw		x1, -52(x2)	# 2364
	addi	x2, x2, -56	# 2364
	lw		x31, 0(x29)	# 2364
	jalr	x1, x31, 0	# 2364
	addi	x2, x2, 56	# 2364
	lw		x1, -52(x2)	# 2364
	flw		f2, -48(x2)	# 2365
	fmul	f1, f1, f2	# 2365
	lw		x29, -44(x2)	# 2357
	fsw		f1, -52(x2)	# 2357
	sw		x1, -56(x2)	# 2357
	addi	x2, x2, -60	# 2357
	lw		x31, 0(x29)	# 2357
	jalr	x1, x31, 0	# 2357
	addi	x2, x2, 60	# 2357
	lw		x1, -56(x2)	# 2357
	flw		f2, -52(x2)	# 2357
	lw		x29, -40(x2)	# 2357
	fsw		f1, -56(x2)	# 2357
	fadd	f1, f0, f2
	sw		x1, -60(x2)	# 2357
	addi	x2, x2, -64	# 2357
	lw		x31, 0(x29)	# 2357
	jalr	x1, x31, 0	# 2357
	addi	x2, x2, 64	# 2357
	lw		x1, -60(x2)	# 2357
	flw		f2, -56(x2)	# 2357
	fdiv	f1, f2, f1	# 2357
	flw		f2, -36(x2)	# 2366
	fmul	f1, f1, f2	# 2366
	lw		x4, -28(x2)	# 2387
	lw		x5, -32(x2)	# 2387
	add		x4, x5, x4	# 2387
	fmul	f2, f1, f1	# 2362
	flw		f3, -24(x2)	# 2362
	fadd	f2, f2, f3	# 2362
	fsqrt	f2, f2	# 2362
	flw		f3, -20(x2)	# 2363
	fdiv	f3, f3, f2	# 2363
	lw		x29, -16(x2)	# 2364
	fsw		f1, -60(x2)	# 2364
	sw		x4, -64(x2)	# 2364
	fsw		f2, -68(x2)	# 2364
	fadd	f1, f0, f3
	sw		x1, -72(x2)	# 2364
	addi	x2, x2, -76	# 2364
	lw		x31, 0(x29)	# 2364
	jalr	x1, x31, 0	# 2364
	addi	x2, x2, 76	# 2364
	lw		x1, -72(x2)	# 2364
	flw		f2, -12(x2)	# 2365
	fmul	f1, f1, f2	# 2365
	lw		x29, -44(x2)	# 2357
	fsw		f1, -72(x2)	# 2357
	sw		x1, -76(x2)	# 2357
	addi	x2, x2, -80	# 2357
	lw		x31, 0(x29)	# 2357
	jalr	x1, x31, 0	# 2357
	addi	x2, x2, 80	# 2357
	lw		x1, -76(x2)	# 2357
	flw		f2, -72(x2)	# 2357
	lw		x29, -40(x2)	# 2357
	fsw		f1, -76(x2)	# 2357
	fadd	f1, f0, f2
	sw		x1, -80(x2)	# 2357
	addi	x2, x2, -84	# 2357
	lw		x31, 0(x29)	# 2357
	jalr	x1, x31, 0	# 2357
	addi	x2, x2, 84	# 2357
	lw		x1, -80(x2)	# 2357
	flw		f2, -76(x2)	# 2357
	fdiv	f1, f2, f1	# 2357
	flw		f2, -68(x2)	# 2366
	fmul	f2, f1, f2	# 2366
	flw		f1, -60(x2)	# 2387
	flw		f3, -48(x2)	# 2387
	flw		f4, -12(x2)	# 2387
	lw		x4, -64(x2)	# 2387
	lw		x5, -4(x2)	# 2387
	lw		x6, 0(x2)	# 2387
	lw		x29, -8(x2)	# 2387
	lw		x31, 0(x29)	# 2387
	jalr	x0, x31, 0	# 2387
ble.31162:
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 2372
	fadd	f4, f0, f16	# 2372
	fadd	f3, f3, f4	# 2372
	fsqrt	f3, f3	# 2372
	fdiv	f1, f1, f3	# 2373
	fdiv	f2, f2, f3	# 2374
	fdiv	f3, f4, f3	# 2375
	mul		x4, x30, x5	# 2378
	addi	x4, x4, 60716	# 2378
	lw		x4, 0(x4)	# 2378
	mul		x5, x30, x6	# 2379
	add		x5, x4, x5	# 2379
	lw		x5, 0(x5)	# 2379
	lw		x5, 0(x5)	# 676
	mul		x7, x30, x12	# 277
	add		x7, x5, x7	# 277
	fsw		f1, 0(x7)	# 277
	mul		x7, x30, x13	# 278
	add		x7, x5, x7	# 278
	fsw		f2, 0(x7)	# 278
	mul		x7, x30, x11	# 279
	add		x5, x5, x7	# 279
	fsw		f3, 0(x5)	# 279
	addi	x5, x6, 40	# 2380
	mul		x5, x30, x5	# 2380
	add		x5, x4, x5	# 2380
	lw		x5, 0(x5)	# 2380
	lw		x5, 0(x5)	# 676
	fsub	f4, f0, f2	# 123
	mul		x7, x30, x12	# 277
	add		x7, x5, x7	# 277
	fsw		f1, 0(x7)	# 277
	mul		x7, x30, x13	# 278
	add		x7, x5, x7	# 278
	fsw		f3, 0(x7)	# 278
	mul		x7, x30, x11	# 279
	add		x5, x5, x7	# 279
	fsw		f4, 0(x5)	# 279
	addi	x5, x6, 80	# 2381
	mul		x5, x30, x5	# 2381
	add		x5, x4, x5	# 2381
	lw		x5, 0(x5)	# 2381
	lw		x5, 0(x5)	# 676
	fsub	f5, f0, f1	# 123
	mul		x7, x30, x12	# 277
	add		x7, x5, x7	# 277
	fsw		f3, 0(x7)	# 277
	mul		x7, x30, x13	# 278
	add		x7, x5, x7	# 278
	fsw		f5, 0(x7)	# 278
	mul		x7, x30, x11	# 279
	add		x5, x5, x7	# 279
	fsw		f4, 0(x5)	# 279
	add		x5, x6, x13	# 2382
	mul		x5, x30, x5	# 2382
	add		x5, x4, x5	# 2382
	lw		x5, 0(x5)	# 2382
	lw		x5, 0(x5)	# 676
	fsub	f3, f0, f3	# 123
	mul		x7, x30, x12	# 277
	add		x7, x5, x7	# 277
	fsw		f5, 0(x7)	# 277
	mul		x7, x30, x13	# 278
	add		x7, x5, x7	# 278
	fsw		f4, 0(x7)	# 278
	mul		x7, x30, x11	# 279
	add		x5, x5, x7	# 279
	fsw		f3, 0(x5)	# 279
	addi	x5, x6, 41	# 2383
	mul		x5, x30, x5	# 2383
	add		x5, x4, x5	# 2383
	lw		x5, 0(x5)	# 2383
	lw		x5, 0(x5)	# 676
	mul		x7, x30, x12	# 277
	add		x7, x5, x7	# 277
	fsw		f5, 0(x7)	# 277
	mul		x7, x30, x13	# 278
	add		x7, x5, x7	# 278
	fsw		f3, 0(x7)	# 278
	mul		x7, x30, x11	# 279
	add		x5, x5, x7	# 279
	fsw		f2, 0(x5)	# 279
	addi	x5, x6, 81	# 2384
	mul		x5, x30, x5	# 2384
	add		x4, x4, x5	# 2384
	lw		x4, 0(x4)	# 2384
	lw		x4, 0(x4)	# 676
	mul		x5, x30, x12	# 277
	add		x5, x4, x5	# 277
	fsw		f3, 0(x5)	# 277
	mul		x5, x30, x13	# 278
	add		x5, x4, x5	# 278
	fsw		f1, 0(x5)	# 278
	mul		x5, x30, x11	# 279
	add		x4, x4, x5	# 279
	fsw		f2, 0(x4)	# 279
	jalr	x0, x1, 0	# 279
calc_dirvecs.3022.17383:
	lw		x7, 28(x29)	# 2392
	lw		x8, 24(x29)	# 2392
	lw		x9, 20(x29)	# 2392
	lw		x10, 16(x29)	# 2392
	lw		x11, 12(x29)	# 2392
	lw		x12, 8(x29)	# 2392
	flw		f2, 4(x29)	# 2392
	ble		x11, x4, ble.31164	# 2392
	jalr	x0, x1, 0	# 2401
ble.31164:
	sw		x29, 0(x2)	# 2394
	sw		x9, -4(x2)	# 2394
	sw		x12, -8(x2)	# 2394
	sw		x4, -12(x2)	# 2394
	sw		x10, -16(x2)	# 2394
	fsw		f1, -20(x2)	# 2394
	fsw		f2, -24(x2)	# 2394
	sw		x6, -28(x2)	# 2394
	sw		x5, -32(x2)	# 2394
	sw		x11, -36(x2)	# 2394
	sw		x8, -40(x2)	# 2394
	addi	x29, x7, 0
	sw		x1, -44(x2)	# 2394
	addi	x2, x2, -48	# 2394
	lw		x31, 0(x29)	# 2394
	jalr	x1, x31, 0	# 2394
	addi	x2, x2, 48	# 2394
	lw		x1, -44(x2)	# 2394
	lui		x4, %hi(l.24983)	# 2394
	ori		x4, x0, %lo(l.24983)	# 2394
	flw		f2, 0(x4)	# 2394
	fmul	f1, f1, f2	# 2394
	lui		x4, %hi(l.27471)	# 2394
	ori		x4, x0, %lo(l.27471)	# 2394
	flw		f2, 0(x4)	# 2394
	fsub	f3, f1, f2	# 2394
	flw		f2, -24(x2)	# 2395
	flw		f4, -20(x2)	# 2395
	lw		x4, -36(x2)	# 2395
	lw		x5, -32(x2)	# 2395
	lw		x6, -28(x2)	# 2395
	lw		x29, -40(x2)	# 2395
	fsw		f1, -44(x2)	# 2395
	fadd	f1, f0, f2
	sw		x1, -48(x2)	# 2395
	addi	x2, x2, -52	# 2395
	lw		x31, 0(x29)	# 2395
	jalr	x1, x31, 0	# 2395
	addi	x2, x2, 52	# 2395
	lw		x1, -48(x2)	# 2395
	lui		x4, %hi(l.26438)	# 2397
	ori		x4, x0, %lo(l.26438)	# 2397
	flw		f1, 0(x4)	# 2397
	flw		f2, -44(x2)	# 2397
	fadd	f3, f2, f1	# 2397
	lw		x4, -16(x2)	# 2398
	lw		x5, -28(x2)	# 2398
	add		x6, x5, x4	# 2398
	flw		f1, -24(x2)	# 2398
	flw		f4, -20(x2)	# 2398
	lw		x4, -36(x2)	# 2398
	lw		x7, -32(x2)	# 2398
	lw		x29, -40(x2)	# 2398
	addi	x5, x7, 0
	fadd	f2, f0, f1
	sw		x1, -48(x2)	# 2398
	addi	x2, x2, -52	# 2398
	lw		x31, 0(x29)	# 2398
	jalr	x1, x31, 0	# 2398
	addi	x2, x2, 52	# 2398
	lw		x1, -48(x2)	# 2398
	lw		x4, -8(x2)	# 2400
	lw		x5, -12(x2)	# 2400
	sub		x5, x5, x4	# 2400
	lw		x6, -32(x2)	# 261
	add		x4, x6, x4	# 261
	lw		x6, -4(x2)	# 262
	ble		x6, x4, ble.31167	# 262
	jal		x0, ble_cont.31166	# 262
ble.31167:
	sub		x4, x4, x6	# 262
ble_cont.31166:
	flw		f1, -20(x2)	# 2400
	lw		x6, -28(x2)	# 2400
	lw		x29, 0(x2)	# 2400
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	lw		x31, 0(x29)	# 2400
	jalr	x0, x31, 0	# 2400
calc_dirvec_rows.3027.17388:
	lw		x7, 24(x29)	# 2406
	lw		x8, 20(x29)	# 2406
	lw		x9, 16(x29)	# 2406
	lw		x10, 12(x29)	# 2406
	lw		x11, 8(x29)	# 2406
	lw		x12, 4(x29)	# 2406
	ble		x11, x4, ble.31168	# 2406
	jalr	x0, x1, 0	# 2410
ble.31168:
	sw		x29, 0(x2)	# 2407
	sw		x9, -4(x2)	# 2407
	sw		x10, -8(x2)	# 2407
	sw		x12, -12(x2)	# 2407
	sw		x4, -16(x2)	# 2407
	sw		x6, -20(x2)	# 2407
	sw		x5, -24(x2)	# 2407
	sw		x8, -28(x2)	# 2407
	addi	x29, x7, 0
	sw		x1, -32(x2)	# 2407
	addi	x2, x2, -36	# 2407
	lw		x31, 0(x29)	# 2407
	jalr	x1, x31, 0	# 2407
	addi	x2, x2, 36	# 2407
	lw		x1, -32(x2)	# 2407
	lui		x4, %hi(l.24983)	# 2407
	ori		x4, x0, %lo(l.24983)	# 2407
	flw		f2, 0(x4)	# 2407
	fmul	f1, f1, f2	# 2407
	lui		x4, %hi(l.27471)	# 2407
	ori		x4, x0, %lo(l.27471)	# 2407
	flw		f2, 0(x4)	# 2407
	fsub	f1, f1, f2	# 2407
	addi	x4, x0, 4	# 2408
	lw		x5, -24(x2)	# 2408
	lw		x6, -20(x2)	# 2408
	lw		x29, -28(x2)	# 2408
	sw		x1, -32(x2)	# 2408
	addi	x2, x2, -36	# 2408
	lw		x31, 0(x29)	# 2408
	jalr	x1, x31, 0	# 2408
	addi	x2, x2, 36	# 2408
	lw		x1, -32(x2)	# 2408
	lw		x4, -12(x2)	# 2409
	lw		x5, -16(x2)	# 2409
	sub		x4, x5, x4	# 2409
	lw		x5, -8(x2)	# 261
	lw		x6, -24(x2)	# 261
	add		x5, x6, x5	# 261
	lw		x6, -4(x2)	# 262
	ble		x6, x5, ble.31171	# 262
	jal		x0, ble_cont.31170	# 262
ble.31171:
	sub		x5, x5, x6	# 262
ble_cont.31170:
	lw		x6, -20(x2)	# 2409
	addi	x6, x6, 4	# 2409
	lw		x29, 0(x2)	# 2409
	lw		x31, 0(x29)	# 2409
	jalr	x0, x31, 0	# 2409
create_dirvec_elements.3033.17392:
	lw		x6, 16(x29)	# 2425
	lw		x7, 12(x29)	# 2425
	lw		x8, 8(x29)	# 2425
	flw		f1, 4(x29)	# 2425
	ble		x7, x5, ble.31172	# 2425
	jalr	x0, x1, 0	# 2428
ble.31172:
	sw		x29, 0(x2)	# 2419
	sw		x8, -4(x2)	# 2419
	sw		x4, -8(x2)	# 2419
	sw		x5, -12(x2)	# 2419
	sw		x7, -16(x2)	# 2419
	addi	x4, x6, 0
	sw		x1, -20(x2)	# 2419
	addi	x2, x2, -24	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 24	# 2419
	lw		x1, -20(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lw		x4, -16(x2)	# 2420
	mul		x4, x30, x4	# 2420
	addi	x4, x4, 60000	# 2420
	lw		x4, 0(x4)	# 2420
	sw		x5, -20(x2)	# 2420
	sw		x1, -24(x2)	# 2420
	addi	x2, x2, -28	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 28	# 2420
	lw		x1, -24(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -20(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	addi	x4, x5, 0	# 2421
	lw		x5, -12(x2)	# 2426
	mul		x6, x30, x5	# 2426
	lw		x7, -8(x2)	# 2426
	add		x6, x7, x6	# 2426
	sw		x4, 0(x6)	# 2426
	lw		x4, -4(x2)	# 2427
	sub		x5, x5, x4	# 2427
	lw		x29, 0(x2)	# 2427
	addi	x4, x7, 0
	lw		x31, 0(x29)	# 2427
	jalr	x0, x31, 0	# 2427
create_dirvecs.3036.17395:
	lw		x5, 20(x29)	# 2432
	lw		x6, 16(x29)	# 2432
	lw		x7, 12(x29)	# 2432
	lw		x8, 8(x29)	# 2432
	flw		f1, 4(x29)	# 2432
	ble		x7, x4, ble.31174	# 2432
	jalr	x0, x1, 0	# 2436
ble.31174:
	addi	x9, x0, 120	# 2433
	sw		x29, 0(x2)	# 2419
	sw		x8, -4(x2)	# 2419
	sw		x5, -8(x2)	# 2419
	sw		x4, -12(x2)	# 2419
	sw		x9, -16(x2)	# 2419
	sw		x7, -20(x2)	# 2419
	addi	x4, x6, 0
	sw		x1, -24(x2)	# 2419
	addi	x2, x2, -28	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 28	# 2419
	lw		x1, -24(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lw		x4, -20(x2)	# 2420
	mul		x4, x30, x4	# 2420
	addi	x4, x4, 60000	# 2420
	lw		x4, 0(x4)	# 2420
	sw		x5, -24(x2)	# 2420
	sw		x1, -28(x2)	# 2420
	addi	x2, x2, -32	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 32	# 2420
	lw		x1, -28(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -24(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	lw		x4, -16(x2)	# 2433
	sw		x1, -28(x2)	# 2433
	addi	x2, x2, -32	# 2433
	jal		x1, min_caml_create_array	# 2433
	addi	x2, x2, 32	# 2433
	lw		x1, -28(x2)	# 2433
	lw		x5, -12(x2)	# 2433
	mul		x6, x30, x5	# 2433
	addi	x6, x6, 60716	# 2433
	sw		x4, 0(x6)	# 2433
	mul		x4, x30, x5	# 2434
	addi	x4, x4, 60716	# 2434
	lw		x4, 0(x4)	# 2434
	addi	x6, x0, 118	# 2434
	lw		x29, -8(x2)	# 2434
	addi	x5, x6, 0
	sw		x1, -28(x2)	# 2434
	addi	x2, x2, -32	# 2434
	lw		x31, 0(x29)	# 2434
	jalr	x1, x31, 0	# 2434
	addi	x2, x2, 32	# 2434
	lw		x1, -28(x2)	# 2434
	lw		x4, -4(x2)	# 2435
	lw		x5, -12(x2)	# 2435
	sub		x4, x5, x4	# 2435
	lw		x29, 0(x2)	# 2435
	lw		x31, 0(x29)	# 2435
	jalr	x0, x31, 0	# 2435
init_dirvec_constants.3038.17397:
	lw		x6, 12(x29)	# 2444
	lw		x7, 8(x29)	# 2444
	lw		x8, 4(x29)	# 2444
	ble		x7, x5, ble.31176	# 2444
	jalr	x0, x1, 0	# 2447
ble.31176:
	mul		x9, x30, x5	# 2445
	add		x9, x4, x9	# 2445
	lw		x9, 0(x9)	# 2445
	mul		x7, x30, x7	# 1324
	addi	x7, x7, 60000	# 1324
	lw		x7, 0(x7)	# 1324
	sub		x7, x7, x8	# 1324
	sw		x4, 0(x2)	# 1324
	sw		x29, -4(x2)	# 1324
	sw		x8, -8(x2)	# 1324
	sw		x5, -12(x2)	# 1324
	addi	x5, x7, 0
	addi	x4, x9, 0
	addi	x29, x6, 0
	sw		x1, -16(x2)	# 1324
	addi	x2, x2, -20	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 20	# 1324
	lw		x1, -16(x2)	# 1324
	lw		x4, -8(x2)	# 2446
	lw		x5, -12(x2)	# 2446
	sub		x5, x5, x4	# 2446
	lw		x4, 0(x2)	# 2446
	lw		x29, -4(x2)	# 2446
	lw		x31, 0(x29)	# 2446
	jalr	x0, x31, 0	# 2446
init_vecset_constants.3041.17400:
	lw		x5, 12(x29)	# 2451
	lw		x6, 8(x29)	# 2451
	lw		x7, 4(x29)	# 2451
	ble		x6, x4, ble.31178	# 2451
	jalr	x0, x1, 0	# 2454
ble.31178:
	mul		x6, x30, x4	# 2452
	addi	x6, x6, 60716	# 2452
	lw		x6, 0(x6)	# 2452
	addi	x8, x0, 119	# 2452
	sw		x29, 0(x2)	# 2452
	sw		x7, -4(x2)	# 2452
	sw		x4, -8(x2)	# 2452
	addi	x4, x6, 0
	addi	x29, x5, 0
	addi	x5, x8, 0
	sw		x1, -12(x2)	# 2452
	addi	x2, x2, -16	# 2452
	lw		x31, 0(x29)	# 2452
	jalr	x1, x31, 0	# 2452
	addi	x2, x2, 16	# 2452
	lw		x1, -12(x2)	# 2452
	lw		x4, -4(x2)	# 2453
	lw		x5, -8(x2)	# 2453
	sub		x4, x5, x4	# 2453
	lw		x29, 0(x2)	# 2453
	lw		x31, 0(x29)	# 2453
	jalr	x0, x31, 0	# 2453
min_caml_start:
	addi	x2, x2, -4
	addi	x30, x0, 4
	addi	x3, x0, 60000
	lui		x4, %hi(l.27498)
	ori		x4, x0, %lo(l.27498)
	flw		f0, 0(x4)
	lui		x4, %hi(l.24946)
	ori		x4, x0, %lo(l.24946)
	flw		f16, 0(x4)
	lui		x4, %hi(l.24955)
	ori		x4, x0, %lo(l.24955)
	flw		f17, 0(x4)
	lui		x4, %hi(l.24951)
	ori		x4, x0, %lo(l.24951)
	flw		f18, 0(x4)
	lui		x4, %hi(l.25433)
	ori		x4, x0, %lo(l.25433)
	flw		f19, 0(x4)
	lui		x4, %hi(l.25431)
	ori		x4, x0, %lo(l.25431)
	flw		f20, 0(x4)
	lui		x4, %hi(l.25552)
	ori		x4, x0, %lo(l.25552)
	flw		f21, 0(x4)
	lui		x4, %hi(l.26005)
	ori		x4, x0, %lo(l.26005)
	flw		f22, 0(x4)
	lui		x4, %hi(l.24944)
	ori		x4, x0, %lo(l.24944)
	flw		f23, 0(x4)
	lui		x4, %hi(l.26703)
	ori		x4, x0, %lo(l.26703)
	flw		f24, 0(x4)
	lui		x4, %hi(l.26491)
	ori		x4, x0, %lo(l.26491)
	flw		f25, 0(x4)
	lui		x4, %hi(l.24948)
	ori		x4, x0, %lo(l.24948)
	flw		f26, 0(x4)
	lui		x4, %hi(l.24953)
	ori		x4, x0, %lo(l.24953)
	flw		f27, 0(x4)
	lui		x4, %hi(l.25094)
	ori		x4, x0, %lo(l.25094)
	flw		f28, 0(x4)
	lui		x4, %hi(l.26213)
	ori		x4, x0, %lo(l.26213)
	flw		f29, 0(x4)
	lui		x4, %hi(l.26225)
	ori		x4, x0, %lo(l.26225)
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
	lui		x4, %hi(l.27512)	# 25
	ori		x4, x0, %lo(l.27512)	# 25
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
	lui		x4, %hi(l.27516)	# 42
	ori		x4, x0, %lo(l.27516)	# 42
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
	addi	x4, x3, 0	# 144
	addi	x3, x3, 8	# 144
	lui		x5, %hi(int_of_float_rem.2544.17245)	# 144
	ori		x5, x0, %lo(int_of_float_rem.2544.17245)	# 144
	sw		x5, 0(x4)	# 149
	lw		x5, 0(x2)	# 149
	sw		x5, 4(x4)	# 149
	addi	x6, x3, 0	# 149
	addi	x3, x3, 8	# 149
	lui		x7, %hi(int_of_float_four.2547.17248)	# 149
	ori		x7, x0, %lo(int_of_float_four.2547.17248)	# 149
	sw		x7, 0(x6)	# 158
	sw		x4, 4(x6)	# 158
	addi	x4, x3, 0	# 158
	addi	x3, x3, 8	# 158
	lui		x7, %hi(float_of_int_rem.2552.17251)	# 158
	ori		x7, x0, %lo(float_of_int_rem.2552.17251)	# 158
	sw		x7, 0(x4)	# 160
	sw		x5, 4(x4)	# 160
	addi	x7, x3, 0	# 160
	addi	x3, x3, 8	# 160
	lui		x8, %hi(float_of_int_four.2555.17254)	# 160
	ori		x8, x0, %lo(float_of_int_four.2555.17254)	# 160
	sw		x8, 0(x7)	# 162
	sw		x4, 4(x7)	# 162
	addi	x29, x3, 0	# 162
	addi	x3, x3, 16	# 162
	lui		x4, %hi(float_of_int.2558.17257)	# 162
	ori		x4, x0, %lo(float_of_int.2558.17257)	# 162
	sw		x4, 0(x29)	# 173
	sw		x7, 12(x29)	# 173
	lw		x4, -4(x2)	# 173
	sw		x4, 8(x29)	# 173
	flw		f1, -8(x2)	# 173
	fsw		f1, 4(x29)	# 173
	lui		x7, %hi(l.27531)	# 173
	ori		x7, x0, %lo(l.27531)	# 173
	flw		f2, 0(x7)	# 173
	lui		x7, %hi(l.27533)	# 174
	ori		x7, x0, %lo(l.27533)	# 174
	flw		f3, 0(x7)	# 174
	lui		x7, %hi(l.27535)	# 175
	ori		x7, x0, %lo(l.27535)	# 175
	flw		f4, 0(x7)	# 175
	lui		x7, %hi(l.27537)	# 176
	ori		x7, x0, %lo(l.27537)	# 176
	flw		f5, 0(x7)	# 176
	addi	x7, x3, 0	# 198
	addi	x3, x3, 24	# 198
	lui		x8, %hi(sin.2570.17263)	# 198
	ori		x8, x0, %lo(sin.2570.17263)	# 198
	sw		x8, 0(x7)	# 206
	fsw		f5, 20(x7)	# 206
	fsw		f4, 16(x7)	# 206
	fsw		f3, 12(x7)	# 206
	fsw		f2, 8(x7)	# 206
	fsw		f1, 4(x7)	# 206
	addi	x8, x3, 0	# 206
	addi	x3, x3, 20	# 206
	lui		x9, %hi(cos.2572.17265)	# 206
	ori		x9, x0, %lo(cos.2572.17265)	# 206
	sw		x9, 0(x8)	# 211
	sw		x7, 16(x8)	# 211
	fsw		f5, 12(x8)	# 211
	fsw		f4, 8(x8)	# 211
	fsw		f1, 4(x8)	# 211
	addi	x9, x3, 0	# 211
	addi	x3, x3, 16	# 211
	lui		x10, %hi(atan.2574.17267)	# 211
	ori		x10, x0, %lo(atan.2574.17267)	# 211
	sw		x10, 0(x9)	# 897
	fsw		f5, 12(x9)	# 897
	fsw		f4, 8(x9)	# 897
	fsw		f1, 4(x9)	# 897
	addi	x10, x3, 0	# 897
	addi	x3, x3, 40	# 897
	lui		x11, %hi(read_object.2711.17269)	# 897
	ori		x11, x0, %lo(read_object.2711.17269)	# 897
	sw		x11, 0(x10)	# 913
	sw		x7, 36(x10)	# 913
	sw		x8, 32(x10)	# 913
	lw		x11, -48(x2)	# 913
	sw		x11, 28(x10)	# 913
	lw		x12, -28(x2)	# 913
	sw		x12, 24(x10)	# 913
	lw		x13, -20(x2)	# 913
	sw		x13, 20(x10)	# 913
	lw		x14, -16(x2)	# 913
	sw		x14, 16(x10)	# 913
	sw		x4, 12(x10)	# 913
	sw		x5, 8(x10)	# 913
	fsw		f1, 4(x10)	# 913
	addi	x14, x3, 0	# 913
	addi	x3, x3, 12	# 913
	lui		x15, %hi(read_net_item.2715.17271)	# 913
	ori		x15, x0, %lo(read_net_item.2715.17271)	# 913
	sw		x15, 0(x14)	# 921
	sw		x12, 8(x14)	# 921
	sw		x5, 4(x14)	# 921
	addi	x15, x3, 0	# 921
	addi	x3, x3, 20	# 921
	lui		x16, %hi(read_or_network.2717.17273)	# 921
	ori		x16, x0, %lo(read_or_network.2717.17273)	# 921
	sw		x16, 0(x15)	# 930
	sw		x14, 16(x15)	# 930
	sw		x12, 12(x15)	# 930
	sw		x4, 8(x15)	# 930
	sw		x5, 4(x15)	# 930
	addi	x16, x3, 0	# 930
	addi	x3, x3, 20	# 930
	lui		x17, %hi(read_and_network.2719.17275)	# 930
	ori		x17, x0, %lo(read_and_network.2719.17275)	# 930
	sw		x17, 0(x16)	# 1306
	sw		x14, 16(x16)	# 1306
	sw		x12, 12(x16)	# 1306
	sw		x4, 8(x16)	# 1306
	sw		x5, 4(x16)	# 1306
	addi	x14, x3, 0	# 1306
	addi	x3, x3, 28	# 1306
	lui		x17, %hi(iter_setup_dirvec_constants.2816.17277)	# 1306
	ori		x17, x0, %lo(iter_setup_dirvec_constants.2816.17277)	# 1306
	sw		x17, 0(x14)	# 1331
	lw		x17, -64(x2)	# 1331
	sw		x17, 24(x14)	# 1331
	sw		x11, 20(x14)	# 1331
	sw		x13, 16(x14)	# 1331
	sw		x4, 12(x14)	# 1331
	sw		x5, 8(x14)	# 1331
	fsw		f1, 4(x14)	# 1331
	addi	x18, x3, 0	# 1331
	addi	x3, x3, 20	# 1331
	lui		x19, %hi(setup_startp_constants.2821.17280)	# 1331
	ori		x19, x0, %lo(setup_startp_constants.2821.17280)	# 1331
	sw		x19, 0(x18)	# 1400
	sw		x11, 16(x18)	# 1400
	sw		x13, 12(x18)	# 1400
	sw		x4, 8(x18)	# 1400
	sw		x5, 4(x18)	# 1400
	addi	x19, x3, 0	# 1400
	addi	x3, x3, 28	# 1400
	lui		x20, %hi(check_all_inside.2846.17283)	# 1400
	ori		x20, x0, %lo(check_all_inside.2846.17283)	# 1400
	sw		x20, 0(x19)	# 1420
	sw		x11, 24(x19)	# 1420
	sw		x12, 20(x19)	# 1420
	sw		x13, 16(x19)	# 1420
	sw		x4, 12(x19)	# 1420
	sw		x5, 8(x19)	# 1420
	fsw		f1, 4(x19)	# 1420
	addi	x20, x3, 0	# 1420
	addi	x3, x3, 36	# 1420
	lui		x21, %hi(shadow_check_and_group.2852.17289)	# 1420
	ori		x21, x0, %lo(shadow_check_and_group.2852.17289)	# 1420
	sw		x21, 0(x20)	# 1450
	sw		x19, 32(x20)	# 1450
	sw		x17, 28(x20)	# 1450
	sw		x11, 24(x20)	# 1450
	sw		x12, 20(x20)	# 1450
	sw		x13, 16(x20)	# 1450
	sw		x4, 12(x20)	# 1450
	sw		x5, 8(x20)	# 1450
	fsw		f1, 4(x20)	# 1450
	addi	x21, x3, 0	# 1450
	addi	x3, x3, 20	# 1450
	lui		x22, %hi(shadow_check_one_or_group.2855.17292)	# 1450
	ori		x22, x0, %lo(shadow_check_one_or_group.2855.17292)	# 1450
	sw		x22, 0(x21)	# 1465
	sw		x20, 16(x21)	# 1465
	sw		x12, 12(x21)	# 1465
	sw		x4, 8(x21)	# 1465
	sw		x5, 4(x21)	# 1465
	addi	x20, x3, 0	# 1465
	addi	x3, x3, 36	# 1465
	lui		x22, %hi(shadow_check_one_or_matrix.2858.17295)	# 1465
	ori		x22, x0, %lo(shadow_check_one_or_matrix.2858.17295)	# 1465
	sw		x22, 0(x20)	# 1501
	sw		x21, 32(x20)	# 1501
	sw		x17, 28(x20)	# 1501
	sw		x11, 24(x20)	# 1501
	sw		x12, 20(x20)	# 1501
	sw		x13, 16(x20)	# 1501
	sw		x4, 12(x20)	# 1501
	sw		x5, 8(x20)	# 1501
	fsw		f1, 4(x20)	# 1501
	addi	x21, x3, 0	# 1501
	addi	x3, x3, 32	# 1501
	lui		x22, %hi(solve_each_element.2861.17298)	# 1501
	ori		x22, x0, %lo(solve_each_element.2861.17298)	# 1501
	sw		x22, 0(x21)	# 1542
	sw		x19, 28(x21)	# 1542
	sw		x11, 24(x21)	# 1542
	sw		x12, 20(x21)	# 1542
	sw		x13, 16(x21)	# 1542
	sw		x4, 12(x21)	# 1542
	sw		x5, 8(x21)	# 1542
	fsw		f1, 4(x21)	# 1542
	addi	x22, x3, 0	# 1542
	addi	x3, x3, 20	# 1542
	lui		x23, %hi(solve_one_or_network.2865.17302)	# 1542
	ori		x23, x0, %lo(solve_one_or_network.2865.17302)	# 1542
	sw		x23, 0(x22)	# 1552
	sw		x21, 16(x22)	# 1552
	sw		x12, 12(x22)	# 1552
	sw		x4, 8(x22)	# 1552
	sw		x5, 4(x22)	# 1552
	addi	x21, x3, 0	# 1552
	addi	x3, x3, 32	# 1552
	lui		x23, %hi(trace_or_matrix.2869.17306)	# 1552
	ori		x23, x0, %lo(trace_or_matrix.2869.17306)	# 1552
	sw		x23, 0(x21)	# 1594
	sw		x22, 28(x21)	# 1594
	sw		x11, 24(x21)	# 1594
	sw		x12, 20(x21)	# 1594
	sw		x13, 16(x21)	# 1594
	sw		x4, 12(x21)	# 1594
	sw		x5, 8(x21)	# 1594
	fsw		f1, 4(x21)	# 1594
	addi	x22, x3, 0	# 1594
	addi	x3, x3, 36	# 1594
	lui		x23, %hi(solve_each_element_fast.2875.17310)	# 1594
	ori		x23, x0, %lo(solve_each_element_fast.2875.17310)	# 1594
	sw		x23, 0(x22)	# 1635
	sw		x19, 32(x22)	# 1635
	sw		x17, 28(x22)	# 1635
	sw		x11, 24(x22)	# 1635
	sw		x12, 20(x22)	# 1635
	sw		x13, 16(x22)	# 1635
	sw		x4, 12(x22)	# 1635
	sw		x5, 8(x22)	# 1635
	fsw		f1, 4(x22)	# 1635
	addi	x19, x3, 0	# 1635
	addi	x3, x3, 20	# 1635
	lui		x23, %hi(solve_one_or_network_fast.2879.17314)	# 1635
	ori		x23, x0, %lo(solve_one_or_network_fast.2879.17314)	# 1635
	sw		x23, 0(x19)	# 1645
	sw		x22, 16(x19)	# 1645
	sw		x12, 12(x19)	# 1645
	sw		x4, 8(x19)	# 1645
	sw		x5, 4(x19)	# 1645
	addi	x22, x3, 0	# 1645
	addi	x3, x3, 36	# 1645
	lui		x23, %hi(trace_or_matrix_fast.2883.17318)	# 1645
	ori		x23, x0, %lo(trace_or_matrix_fast.2883.17318)	# 1645
	sw		x23, 0(x22)	# 1839
	sw		x19, 32(x22)	# 1839
	sw		x17, 28(x22)	# 1839
	sw		x11, 24(x22)	# 1839
	sw		x12, 20(x22)	# 1839
	sw		x13, 16(x22)	# 1839
	sw		x4, 12(x22)	# 1839
	sw		x5, 8(x22)	# 1839
	fsw		f1, 4(x22)	# 1839
	addi	x19, x3, 0	# 1839
	addi	x3, x3, 32	# 1839
	lui		x23, %hi(trace_reflections.2905.17322)	# 1839
	ori		x23, x0, %lo(trace_reflections.2905.17322)	# 1839
	sw		x23, 0(x19)	# 1868
	sw		x22, 28(x19)	# 1868
	sw		x20, 24(x19)	# 1868
	sw		x11, 20(x19)	# 1868
	sw		x4, 16(x19)	# 1868
	sw		x5, 12(x19)	# 1868
	flw		f2, -44(x2)	# 1868
	fsw		f2, 8(x19)	# 1868
	fsw		f1, 4(x19)	# 1868
	addi	x23, x3, 0	# 1868
	addi	x3, x3, 72	# 1868
	lui		x24, %hi(trace_ray.2910.17327)	# 1868
	ori		x24, x0, %lo(trace_ray.2910.17327)	# 1868
	sw		x24, 0(x23)	# 1980
	sw		x19, 68(x23)	# 1980
	sw		x21, 64(x23)	# 1980
	sw		x7, 60(x23)	# 1980
	sw		x20, 56(x23)	# 1980
	sw		x18, 52(x23)	# 1980
	sw		x6, 48(x23)	# 1980
	sw		x29, 44(x23)	# 1980
	sw		x8, 40(x23)	# 1980
	sw		x9, 36(x23)	# 1980
	sw		x11, 32(x23)	# 1980
	sw		x12, 28(x23)	# 1980
	sw		x13, 24(x23)	# 1980
	sw		x4, 20(x23)	# 1980
	sw		x5, 16(x23)	# 1980
	fsw		f2, 12(x23)	# 1980
	flw		f3, -24(x2)	# 1980
	fsw		f3, 8(x23)	# 1980
	fsw		f1, 4(x23)	# 1980
	addi	x12, x3, 0	# 1980
	addi	x3, x3, 60	# 1980
	lui		x19, %hi(iter_trace_diffuse_rays.2919.17333)	# 1980
	ori		x19, x0, %lo(iter_trace_diffuse_rays.2919.17333)	# 1980
	sw		x19, 0(x12)	# 2071
	sw		x22, 56(x12)	# 2071
	sw		x7, 52(x12)	# 2071
	sw		x20, 48(x12)	# 2071
	sw		x6, 44(x12)	# 2071
	sw		x29, 40(x12)	# 2071
	sw		x8, 36(x12)	# 2071
	sw		x9, 32(x12)	# 2071
	sw		x11, 28(x12)	# 2071
	sw		x13, 24(x12)	# 2071
	sw		x4, 20(x12)	# 2071
	sw		x5, 16(x12)	# 2071
	fsw		f2, 12(x12)	# 2071
	fsw		f3, 8(x12)	# 2071
	fsw		f1, 4(x12)	# 2071
	addi	x19, x3, 0	# 2071
	addi	x3, x3, 28	# 2071
	lui		x20, %hi(do_without_neighbors.2941.17338)	# 2071
	ori		x20, x0, %lo(do_without_neighbors.2941.17338)	# 2071
	sw		x20, 0(x19)	# 2123
	sw		x18, 24(x19)	# 2123
	sw		x12, 20(x19)	# 2123
	sw		x11, 16(x19)	# 2123
	sw		x13, 12(x19)	# 2123
	sw		x4, 8(x19)	# 2123
	sw		x5, 4(x19)	# 2123
	addi	x20, x3, 0	# 2123
	addi	x3, x3, 20	# 2123
	lui		x21, %hi(try_exploit_neighbors.2957.17341)	# 2123
	ori		x21, x0, %lo(try_exploit_neighbors.2957.17341)	# 2123
	sw		x21, 0(x20)	# 2199
	sw		x19, 16(x20)	# 2199
	sw		x11, 12(x20)	# 2199
	sw		x4, 8(x20)	# 2199
	sw		x5, 4(x20)	# 2199
	addi	x21, x3, 0	# 2199
	addi	x3, x3, 28	# 2199
	lui		x22, %hi(pretrace_diffuse_rays.2972.17348)	# 2199
	ori		x22, x0, %lo(pretrace_diffuse_rays.2972.17348)	# 2199
	sw		x22, 0(x21)	# 2229
	sw		x18, 24(x21)	# 2229
	sw		x12, 20(x21)	# 2229
	sw		x11, 16(x21)	# 2229
	sw		x4, 12(x21)	# 2229
	sw		x5, 8(x21)	# 2229
	fsw		f1, 4(x21)	# 2229
	addi	x12, x3, 0	# 2229
	addi	x3, x3, 36	# 2229
	lui		x18, %hi(pretrace_pixels.2975.17351)	# 2229
	ori		x18, x0, %lo(pretrace_pixels.2975.17351)	# 2229
	sw		x18, 0(x12)	# 2270
	sw		x23, 32(x12)	# 2270
	sw		x21, 28(x12)	# 2270
	sw		x29, 24(x12)	# 2270
	sw		x17, 20(x12)	# 2270
	sw		x11, 16(x12)	# 2270
	sw		x4, 12(x12)	# 2270
	sw		x5, 8(x12)	# 2270
	fsw		f1, 4(x12)	# 2270
	addi	x18, x3, 0	# 2270
	addi	x3, x3, 32	# 2270
	lui		x21, %hi(scan_pixel.2986.17358)	# 2270
	ori		x21, x0, %lo(scan_pixel.2986.17358)	# 2270
	sw		x21, 0(x18)	# 2290
	sw		x20, 28(x18)	# 2290
	sw		x6, 24(x18)	# 2290
	sw		x19, 20(x18)	# 2290
	sw		x11, 16(x18)	# 2290
	sw		x13, 12(x18)	# 2290
	sw		x4, 8(x18)	# 2290
	sw		x5, 4(x18)	# 2290
	addi	x6, x3, 0	# 2290
	addi	x3, x3, 32	# 2290
	lui		x19, %hi(scan_line.2993.17365)	# 2290
	ori		x19, x0, %lo(scan_line.2993.17365)	# 2290
	sw		x19, 0(x6)	# 2333
	sw		x18, 28(x6)	# 2333
	sw		x12, 24(x6)	# 2333
	sw		x29, 20(x6)	# 2333
	sw		x17, 16(x6)	# 2333
	sw		x11, 12(x6)	# 2333
	sw		x4, 8(x6)	# 2333
	sw		x5, 4(x6)	# 2333
	addi	x18, x3, 0	# 2333
	addi	x3, x3, 28	# 2333
	lui		x19, %hi(init_line_elements.3004.17372)	# 2333
	ori		x19, x0, %lo(init_line_elements.3004.17372)	# 2333
	sw		x19, 0(x18)	# 2370
	sw		x17, 24(x18)	# 2370
	sw		x11, 20(x18)	# 2370
	sw		x13, 16(x18)	# 2370
	sw		x4, 12(x18)	# 2370
	sw		x5, 8(x18)	# 2370
	fsw		f1, 4(x18)	# 2370
	addi	x19, x3, 0	# 2370
	addi	x3, x3, 32	# 2370
	lui		x20, %hi(calc_dirvec.3014.17375)	# 2370
	ori		x20, x0, %lo(calc_dirvec.3014.17375)	# 2370
	sw		x20, 0(x19)	# 2391
	sw		x7, 28(x19)	# 2391
	sw		x8, 24(x19)	# 2391
	sw		x9, 20(x19)	# 2391
	sw		x17, 16(x19)	# 2391
	sw		x11, 12(x19)	# 2391
	sw		x4, 8(x19)	# 2391
	sw		x5, 4(x19)	# 2391
	addi	x9, x3, 0	# 2391
	addi	x3, x3, 32	# 2391
	lui		x20, %hi(calc_dirvecs.3022.17383)	# 2391
	ori		x20, x0, %lo(calc_dirvecs.3022.17383)	# 2391
	sw		x20, 0(x9)	# 2405
	sw		x29, 28(x9)	# 2405
	sw		x19, 24(x9)	# 2405
	sw		x17, 20(x9)	# 2405
	sw		x11, 16(x9)	# 2405
	sw		x4, 12(x9)	# 2405
	sw		x5, 8(x9)	# 2405
	fsw		f1, 4(x9)	# 2405
	addi	x19, x3, 0	# 2405
	addi	x3, x3, 28	# 2405
	lui		x20, %hi(calc_dirvec_rows.3027.17388)	# 2405
	ori		x20, x0, %lo(calc_dirvec_rows.3027.17388)	# 2405
	sw		x20, 0(x19)	# 2424
	sw		x29, 24(x19)	# 2424
	sw		x9, 20(x19)	# 2424
	sw		x17, 16(x19)	# 2424
	sw		x11, 12(x19)	# 2424
	sw		x4, 8(x19)	# 2424
	sw		x5, 4(x19)	# 2424
	addi	x9, x3, 0	# 2424
	addi	x3, x3, 20	# 2424
	lui		x20, %hi(create_dirvec_elements.3033.17392)	# 2424
	ori		x20, x0, %lo(create_dirvec_elements.3033.17392)	# 2424
	sw		x20, 0(x9)	# 2431
	sw		x13, 16(x9)	# 2431
	sw		x4, 12(x9)	# 2431
	sw		x5, 8(x9)	# 2431
	fsw		f1, 4(x9)	# 2431
	addi	x20, x3, 0	# 2431
	addi	x3, x3, 24	# 2431
	lui		x21, %hi(create_dirvecs.3036.17395)	# 2431
	ori		x21, x0, %lo(create_dirvecs.3036.17395)	# 2431
	sw		x21, 0(x20)	# 2443
	sw		x9, 20(x20)	# 2443
	sw		x13, 16(x20)	# 2443
	sw		x4, 12(x20)	# 2443
	sw		x5, 8(x20)	# 2443
	fsw		f1, 4(x20)	# 2443
	addi	x9, x3, 0	# 2443
	addi	x3, x3, 16	# 2443
	lui		x21, %hi(init_dirvec_constants.3038.17397)	# 2443
	ori		x21, x0, %lo(init_dirvec_constants.3038.17397)	# 2443
	sw		x21, 0(x9)	# 2450
	sw		x14, 12(x9)	# 2450
	sw		x4, 8(x9)	# 2450
	sw		x5, 4(x9)	# 2450
	addi	x21, x3, 0	# 2450
	addi	x3, x3, 16	# 2450
	lui		x22, %hi(init_vecset_constants.3041.17400)	# 2450
	ori		x22, x0, %lo(init_vecset_constants.3041.17400)	# 2450
	sw		x22, 0(x21)	# 2549
	sw		x9, 12(x21)	# 2549
	sw		x4, 8(x21)	# 2549
	sw		x5, 4(x21)	# 2549
	addi	x9, x0, 128	# 2549
	mul		x22, x30, x4	# 2529
	addi	x22, x22, 60616	# 2529
	sw		x9, 0(x22)	# 2529
	mul		x22, x30, x5	# 2530
	addi	x22, x22, 60616	# 2530
	sw		x9, 0(x22)	# 2530
	addi	x22, x0, 64	# 2531
	mul		x23, x30, x4	# 2531
	addi	x23, x23, 60624	# 2531
	sw		x22, 0(x23)	# 2531
	mul		x23, x30, x5	# 2532
	addi	x23, x23, 60624	# 2532
	sw		x22, 0(x23)	# 2532
	lui		x22, %hi(l.27547)	# 2533
	ori		x22, x0, %lo(l.27547)	# 2533
	flw		f2, 0(x22)	# 2533
	sw		x6, -92(x2)	# 2533
	sw		x12, -96(x2)	# 2533
	sw		x29, -100(x2)	# 2533
	sw		x14, -104(x2)	# 2533
	sw		x21, -108(x2)	# 2533
	sw		x19, -112(x2)	# 2533
	sw		x20, -116(x2)	# 2533
	sw		x15, -120(x2)	# 2533
	sw		x16, -124(x2)	# 2533
	sw		x10, -128(x2)	# 2533
	sw		x7, -132(x2)	# 2533
	sw		x8, -136(x2)	# 2533
	sw		x18, -140(x2)	# 2533
	fsw		f2, -144(x2)	# 2533
	addi	x4, x9, 0
	sw		x1, -148(x2)	# 2533
	addi	x2, x2, -152	# 2533
	lw		x31, 0(x29)	# 2533
	jalr	x1, x31, 0	# 2533
	addi	x2, x2, 152	# 2533
	lw		x1, -148(x2)	# 2533
	flw		f2, -144(x2)	# 2533
	fdiv	f1, f2, f1	# 2533
	lw		x4, -4(x2)	# 2533
	mul		x5, x30, x4	# 2533
	addi	x5, x5, 60632	# 2533
	fsw		f1, 0(x5)	# 2533
	mul		x5, x30, x4	# 2343
	addi	x5, x5, 60616	# 2343
	lw		x5, 0(x5)	# 2343
	flw		f1, -8(x2)	# 2321
	lw		x6, -20(x2)	# 2321
	sw		x5, -148(x2)	# 2321
	addi	x4, x6, 0
	sw		x1, -152(x2)	# 2321
	addi	x2, x2, -156	# 2321
	jal		x1, min_caml_create_float_array	# 2321
	addi	x2, x2, 156	# 2321
	lw		x1, -152(x2)	# 2321
	flw		f1, -8(x2)	# 2309
	lw		x5, -20(x2)	# 2309
	sw		x4, -152(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -156(x2)	# 2309
	addi	x2, x2, -160	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 160	# 2309
	lw		x1, -156(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -156(x2)	# 2310
	addi	x2, x2, -160	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 160	# 2310
	lw		x1, -156(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	lw		x5, -20(x2)	# 2311
	sw		x4, -156(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -160(x2)	# 2311
	addi	x2, x2, -164	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 164	# 2311
	lw		x1, -160(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -156(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -8(x2)	# 2312
	lw		x4, -20(x2)	# 2312
	sw		x1, -160(x2)	# 2312
	addi	x2, x2, -164	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 164	# 2312
	lw		x1, -160(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -156(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -8(x2)	# 2313
	lw		x4, -20(x2)	# 2313
	sw		x1, -160(x2)	# 2313
	addi	x2, x2, -164	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 164	# 2313
	lw		x1, -160(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -156(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	addi	x4, x0, 4	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -160(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -164(x2)	# 2314
	addi	x2, x2, -168	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 168	# 2314
	lw		x1, -164(x2)	# 2314
	lw		x5, -160(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -156(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -64(x2)	# 2323
	lw		x6, -4(x2)	# 2323
	addi	x5, x6, 0
	sw		x1, -164(x2)	# 2323
	addi	x2, x2, -168	# 2323
	jal		x1, min_caml_create_array	# 2323
	addi	x2, x2, 168	# 2323
	lw		x1, -164(x2)	# 2323
	lw		x5, -64(x2)	# 2324
	lw		x6, -4(x2)	# 2324
	sw		x4, -164(x2)	# 2324
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -168(x2)	# 2324
	addi	x2, x2, -172	# 2324
	jal		x1, min_caml_create_array	# 2324
	addi	x2, x2, 172	# 2324
	lw		x1, -168(x2)	# 2324
	flw		f1, -8(x2)	# 2309
	lw		x5, -20(x2)	# 2309
	sw		x4, -168(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -172(x2)	# 2309
	addi	x2, x2, -176	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 176	# 2309
	lw		x1, -172(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -172(x2)	# 2310
	addi	x2, x2, -176	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 176	# 2310
	lw		x1, -172(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	lw		x5, -20(x2)	# 2311
	sw		x4, -172(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -176(x2)	# 2311
	addi	x2, x2, -180	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 180	# 2311
	lw		x1, -176(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -172(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -8(x2)	# 2312
	lw		x4, -20(x2)	# 2312
	sw		x1, -176(x2)	# 2312
	addi	x2, x2, -180	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 180	# 2312
	lw		x1, -176(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -172(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -8(x2)	# 2313
	lw		x4, -20(x2)	# 2313
	sw		x1, -176(x2)	# 2313
	addi	x2, x2, -180	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 180	# 2313
	lw		x1, -176(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -172(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -176(x2)	# 2314
	addi	x2, x2, -180	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 180	# 2314
	lw		x1, -176(x2)	# 2314
	lw		x5, -160(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -172(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	flw		f1, -8(x2)	# 2309
	lw		x4, -20(x2)	# 2309
	sw		x1, -176(x2)	# 2309
	addi	x2, x2, -180	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 180	# 2309
	lw		x1, -176(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -176(x2)	# 2310
	addi	x2, x2, -180	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 180	# 2310
	lw		x1, -176(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	lw		x5, -20(x2)	# 2311
	sw		x4, -176(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -180(x2)	# 2311
	addi	x2, x2, -184	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 184	# 2311
	lw		x1, -180(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -176(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -8(x2)	# 2312
	lw		x4, -20(x2)	# 2312
	sw		x1, -180(x2)	# 2312
	addi	x2, x2, -184	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 184	# 2312
	lw		x1, -180(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -176(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -8(x2)	# 2313
	lw		x4, -20(x2)	# 2313
	sw		x1, -180(x2)	# 2313
	addi	x2, x2, -184	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 184	# 2313
	lw		x1, -180(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -176(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -180(x2)	# 2314
	addi	x2, x2, -184	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 184	# 2314
	lw		x1, -180(x2)	# 2314
	lw		x5, -160(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -176(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, 0(x2)	# 2327
	lw		x6, -4(x2)	# 2327
	addi	x5, x6, 0
	sw		x1, -180(x2)	# 2327
	addi	x2, x2, -184	# 2327
	jal		x1, min_caml_create_array	# 2327
	addi	x2, x2, 184	# 2327
	lw		x1, -180(x2)	# 2327
	flw		f1, -8(x2)	# 2309
	lw		x5, -20(x2)	# 2309
	sw		x4, -180(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -184(x2)	# 2309
	addi	x2, x2, -188	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 188	# 2309
	lw		x1, -184(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -184(x2)	# 2310
	addi	x2, x2, -188	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 188	# 2310
	lw		x1, -184(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	lw		x5, -20(x2)	# 2311
	sw		x4, -184(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -188(x2)	# 2311
	addi	x2, x2, -192	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 192	# 2311
	lw		x1, -188(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -184(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -8(x2)	# 2312
	lw		x4, -20(x2)	# 2312
	sw		x1, -188(x2)	# 2312
	addi	x2, x2, -192	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 192	# 2312
	lw		x1, -188(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -184(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -8(x2)	# 2313
	lw		x4, -20(x2)	# 2313
	sw		x1, -188(x2)	# 2313
	addi	x2, x2, -192	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 192	# 2313
	lw		x1, -188(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -184(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -188(x2)	# 2314
	addi	x2, x2, -192	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 192	# 2314
	lw		x1, -188(x2)	# 2314
	lw		x5, -160(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -184(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	addi	x4, x3, 0	# 2329
	addi	x3, x3, 32	# 2329
	sw		x7, 28(x4)	# 2329
	lw		x6, -180(x2)	# 2329
	sw		x6, 24(x4)	# 2329
	lw		x6, -176(x2)	# 2329
	sw		x6, 20(x4)	# 2329
	lw		x6, -172(x2)	# 2329
	sw		x6, 16(x4)	# 2329
	lw		x6, -168(x2)	# 2329
	sw		x6, 12(x4)	# 2329
	lw		x6, -164(x2)	# 2329
	sw		x6, 8(x4)	# 2329
	lw		x6, -156(x2)	# 2329
	sw		x6, 4(x4)	# 2329
	lw		x6, -152(x2)	# 2329
	sw		x6, 0(x4)	# 2329
	lw		x6, -148(x2)	# 2343
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -188(x2)	# 2343
	addi	x2, x2, -192	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 192	# 2343
	lw		x1, -188(x2)	# 2343
	lw		x5, -4(x2)	# 2344
	mul		x6, x30, x5	# 2344
	addi	x6, x6, 60616	# 2344
	lw		x6, 0(x6)	# 2344
	lw		x7, -48(x2)	# 2344
	sub		x6, x6, x7	# 2344
	lw		x29, -140(x2)	# 2344
	addi	x5, x6, 0
	sw		x1, -188(x2)	# 2344
	addi	x2, x2, -192	# 2344
	lw		x31, 0(x29)	# 2344
	jalr	x1, x31, 0	# 2344
	addi	x2, x2, 192	# 2344
	lw		x1, -188(x2)	# 2344
	lw		x5, -4(x2)	# 2343
	mul		x6, x30, x5	# 2343
	addi	x6, x6, 60616	# 2343
	lw		x6, 0(x6)	# 2343
	flw		f1, -8(x2)	# 2321
	lw		x7, -20(x2)	# 2321
	sw		x4, -188(x2)	# 2321
	sw		x6, -192(x2)	# 2321
	addi	x4, x7, 0
	sw		x1, -196(x2)	# 2321
	addi	x2, x2, -200	# 2321
	jal		x1, min_caml_create_float_array	# 2321
	addi	x2, x2, 200	# 2321
	lw		x1, -196(x2)	# 2321
	flw		f1, -8(x2)	# 2309
	lw		x5, -20(x2)	# 2309
	sw		x4, -196(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -200(x2)	# 2309
	addi	x2, x2, -204	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 204	# 2309
	lw		x1, -200(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -200(x2)	# 2310
	addi	x2, x2, -204	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 204	# 2310
	lw		x1, -200(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	lw		x5, -20(x2)	# 2311
	sw		x4, -200(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -204(x2)	# 2311
	addi	x2, x2, -208	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 208	# 2311
	lw		x1, -204(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -200(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -8(x2)	# 2312
	lw		x4, -20(x2)	# 2312
	sw		x1, -204(x2)	# 2312
	addi	x2, x2, -208	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 208	# 2312
	lw		x1, -204(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -200(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -8(x2)	# 2313
	lw		x4, -20(x2)	# 2313
	sw		x1, -204(x2)	# 2313
	addi	x2, x2, -208	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 208	# 2313
	lw		x1, -204(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -200(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -204(x2)	# 2314
	addi	x2, x2, -208	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 208	# 2314
	lw		x1, -204(x2)	# 2314
	lw		x5, -160(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -200(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -64(x2)	# 2323
	lw		x6, -4(x2)	# 2323
	addi	x5, x6, 0
	sw		x1, -204(x2)	# 2323
	addi	x2, x2, -208	# 2323
	jal		x1, min_caml_create_array	# 2323
	addi	x2, x2, 208	# 2323
	lw		x1, -204(x2)	# 2323
	lw		x5, -64(x2)	# 2324
	lw		x6, -4(x2)	# 2324
	sw		x4, -204(x2)	# 2324
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -208(x2)	# 2324
	addi	x2, x2, -212	# 2324
	jal		x1, min_caml_create_array	# 2324
	addi	x2, x2, 212	# 2324
	lw		x1, -208(x2)	# 2324
	flw		f1, -8(x2)	# 2309
	lw		x5, -20(x2)	# 2309
	sw		x4, -208(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -212(x2)	# 2309
	addi	x2, x2, -216	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 216	# 2309
	lw		x1, -212(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -212(x2)	# 2310
	addi	x2, x2, -216	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 216	# 2310
	lw		x1, -212(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	lw		x5, -20(x2)	# 2311
	sw		x4, -212(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -216(x2)	# 2311
	addi	x2, x2, -220	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 220	# 2311
	lw		x1, -216(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -212(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -8(x2)	# 2312
	lw		x4, -20(x2)	# 2312
	sw		x1, -216(x2)	# 2312
	addi	x2, x2, -220	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 220	# 2312
	lw		x1, -216(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -212(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -8(x2)	# 2313
	lw		x4, -20(x2)	# 2313
	sw		x1, -216(x2)	# 2313
	addi	x2, x2, -220	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 220	# 2313
	lw		x1, -216(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -212(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -216(x2)	# 2314
	addi	x2, x2, -220	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 220	# 2314
	lw		x1, -216(x2)	# 2314
	lw		x5, -160(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -212(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	flw		f1, -8(x2)	# 2309
	lw		x4, -20(x2)	# 2309
	sw		x1, -216(x2)	# 2309
	addi	x2, x2, -220	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 220	# 2309
	lw		x1, -216(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -216(x2)	# 2310
	addi	x2, x2, -220	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 220	# 2310
	lw		x1, -216(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	lw		x5, -20(x2)	# 2311
	sw		x4, -216(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -220(x2)	# 2311
	addi	x2, x2, -224	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 224	# 2311
	lw		x1, -220(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -216(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -8(x2)	# 2312
	lw		x4, -20(x2)	# 2312
	sw		x1, -220(x2)	# 2312
	addi	x2, x2, -224	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 224	# 2312
	lw		x1, -220(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -216(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -8(x2)	# 2313
	lw		x4, -20(x2)	# 2313
	sw		x1, -220(x2)	# 2313
	addi	x2, x2, -224	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 224	# 2313
	lw		x1, -220(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -216(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -220(x2)	# 2314
	addi	x2, x2, -224	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 224	# 2314
	lw		x1, -220(x2)	# 2314
	lw		x5, -160(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -216(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, 0(x2)	# 2327
	lw		x6, -4(x2)	# 2327
	addi	x5, x6, 0
	sw		x1, -220(x2)	# 2327
	addi	x2, x2, -224	# 2327
	jal		x1, min_caml_create_array	# 2327
	addi	x2, x2, 224	# 2327
	lw		x1, -220(x2)	# 2327
	flw		f1, -8(x2)	# 2309
	lw		x5, -20(x2)	# 2309
	sw		x4, -220(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -224(x2)	# 2309
	addi	x2, x2, -228	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 228	# 2309
	lw		x1, -224(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -224(x2)	# 2310
	addi	x2, x2, -228	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 228	# 2310
	lw		x1, -224(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	lw		x5, -20(x2)	# 2311
	sw		x4, -224(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -228(x2)	# 2311
	addi	x2, x2, -232	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 232	# 2311
	lw		x1, -228(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -224(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -8(x2)	# 2312
	lw		x4, -20(x2)	# 2312
	sw		x1, -228(x2)	# 2312
	addi	x2, x2, -232	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 232	# 2312
	lw		x1, -228(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -224(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -8(x2)	# 2313
	lw		x4, -20(x2)	# 2313
	sw		x1, -228(x2)	# 2313
	addi	x2, x2, -232	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 232	# 2313
	lw		x1, -228(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -224(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -228(x2)	# 2314
	addi	x2, x2, -232	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 232	# 2314
	lw		x1, -228(x2)	# 2314
	lw		x5, -160(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -224(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	addi	x4, x3, 0	# 2329
	addi	x3, x3, 32	# 2329
	sw		x7, 28(x4)	# 2329
	lw		x6, -220(x2)	# 2329
	sw		x6, 24(x4)	# 2329
	lw		x6, -216(x2)	# 2329
	sw		x6, 20(x4)	# 2329
	lw		x6, -212(x2)	# 2329
	sw		x6, 16(x4)	# 2329
	lw		x6, -208(x2)	# 2329
	sw		x6, 12(x4)	# 2329
	lw		x6, -204(x2)	# 2329
	sw		x6, 8(x4)	# 2329
	lw		x6, -200(x2)	# 2329
	sw		x6, 4(x4)	# 2329
	lw		x6, -196(x2)	# 2329
	sw		x6, 0(x4)	# 2329
	lw		x6, -192(x2)	# 2343
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -228(x2)	# 2343
	addi	x2, x2, -232	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 232	# 2343
	lw		x1, -228(x2)	# 2343
	lw		x5, -4(x2)	# 2344
	mul		x6, x30, x5	# 2344
	addi	x6, x6, 60616	# 2344
	lw		x6, 0(x6)	# 2344
	lw		x7, -48(x2)	# 2344
	sub		x6, x6, x7	# 2344
	lw		x29, -140(x2)	# 2344
	addi	x5, x6, 0
	sw		x1, -228(x2)	# 2344
	addi	x2, x2, -232	# 2344
	lw		x31, 0(x29)	# 2344
	jalr	x1, x31, 0	# 2344
	addi	x2, x2, 232	# 2344
	lw		x1, -228(x2)	# 2344
	lw		x5, -4(x2)	# 2343
	mul		x6, x30, x5	# 2343
	addi	x6, x6, 60616	# 2343
	lw		x6, 0(x6)	# 2343
	flw		f1, -8(x2)	# 2321
	lw		x7, -20(x2)	# 2321
	sw		x4, -228(x2)	# 2321
	sw		x6, -232(x2)	# 2321
	addi	x4, x7, 0
	sw		x1, -236(x2)	# 2321
	addi	x2, x2, -240	# 2321
	jal		x1, min_caml_create_float_array	# 2321
	addi	x2, x2, 240	# 2321
	lw		x1, -236(x2)	# 2321
	flw		f1, -8(x2)	# 2309
	lw		x5, -20(x2)	# 2309
	sw		x4, -236(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -240(x2)	# 2309
	addi	x2, x2, -244	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 244	# 2309
	lw		x1, -240(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -240(x2)	# 2310
	addi	x2, x2, -244	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 244	# 2310
	lw		x1, -240(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	lw		x5, -20(x2)	# 2311
	sw		x4, -240(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -244(x2)	# 2311
	addi	x2, x2, -248	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 248	# 2311
	lw		x1, -244(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -240(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -8(x2)	# 2312
	lw		x4, -20(x2)	# 2312
	sw		x1, -244(x2)	# 2312
	addi	x2, x2, -248	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 248	# 2312
	lw		x1, -244(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -240(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -8(x2)	# 2313
	lw		x4, -20(x2)	# 2313
	sw		x1, -244(x2)	# 2313
	addi	x2, x2, -248	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 248	# 2313
	lw		x1, -244(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -240(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -244(x2)	# 2314
	addi	x2, x2, -248	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 248	# 2314
	lw		x1, -244(x2)	# 2314
	lw		x5, -160(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -240(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -64(x2)	# 2323
	lw		x6, -4(x2)	# 2323
	addi	x5, x6, 0
	sw		x1, -244(x2)	# 2323
	addi	x2, x2, -248	# 2323
	jal		x1, min_caml_create_array	# 2323
	addi	x2, x2, 248	# 2323
	lw		x1, -244(x2)	# 2323
	lw		x5, -64(x2)	# 2324
	lw		x6, -4(x2)	# 2324
	sw		x4, -244(x2)	# 2324
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -248(x2)	# 2324
	addi	x2, x2, -252	# 2324
	jal		x1, min_caml_create_array	# 2324
	addi	x2, x2, 252	# 2324
	lw		x1, -248(x2)	# 2324
	flw		f1, -8(x2)	# 2309
	lw		x5, -20(x2)	# 2309
	sw		x4, -248(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -252(x2)	# 2309
	addi	x2, x2, -256	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 256	# 2309
	lw		x1, -252(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -252(x2)	# 2310
	addi	x2, x2, -256	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 256	# 2310
	lw		x1, -252(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	lw		x5, -20(x2)	# 2311
	sw		x4, -252(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -256(x2)	# 2311
	addi	x2, x2, -260	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 260	# 2311
	lw		x1, -256(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -252(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -8(x2)	# 2312
	lw		x4, -20(x2)	# 2312
	sw		x1, -256(x2)	# 2312
	addi	x2, x2, -260	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 260	# 2312
	lw		x1, -256(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -252(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -8(x2)	# 2313
	lw		x4, -20(x2)	# 2313
	sw		x1, -256(x2)	# 2313
	addi	x2, x2, -260	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 260	# 2313
	lw		x1, -256(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -252(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -256(x2)	# 2314
	addi	x2, x2, -260	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 260	# 2314
	lw		x1, -256(x2)	# 2314
	lw		x5, -160(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -252(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	flw		f1, -8(x2)	# 2309
	lw		x4, -20(x2)	# 2309
	sw		x1, -256(x2)	# 2309
	addi	x2, x2, -260	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 260	# 2309
	lw		x1, -256(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -256(x2)	# 2310
	addi	x2, x2, -260	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 260	# 2310
	lw		x1, -256(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	lw		x5, -20(x2)	# 2311
	sw		x4, -256(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -260(x2)	# 2311
	addi	x2, x2, -264	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 264	# 2311
	lw		x1, -260(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -256(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -8(x2)	# 2312
	lw		x4, -20(x2)	# 2312
	sw		x1, -260(x2)	# 2312
	addi	x2, x2, -264	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 264	# 2312
	lw		x1, -260(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -256(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -8(x2)	# 2313
	lw		x4, -20(x2)	# 2313
	sw		x1, -260(x2)	# 2313
	addi	x2, x2, -264	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 264	# 2313
	lw		x1, -260(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -256(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -260(x2)	# 2314
	addi	x2, x2, -264	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 264	# 2314
	lw		x1, -260(x2)	# 2314
	lw		x5, -160(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -256(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, 0(x2)	# 2327
	lw		x6, -4(x2)	# 2327
	addi	x5, x6, 0
	sw		x1, -260(x2)	# 2327
	addi	x2, x2, -264	# 2327
	jal		x1, min_caml_create_array	# 2327
	addi	x2, x2, 264	# 2327
	lw		x1, -260(x2)	# 2327
	flw		f1, -8(x2)	# 2309
	lw		x5, -20(x2)	# 2309
	sw		x4, -260(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -264(x2)	# 2309
	addi	x2, x2, -268	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 268	# 2309
	lw		x1, -264(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -264(x2)	# 2310
	addi	x2, x2, -268	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 268	# 2310
	lw		x1, -264(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	lw		x5, -20(x2)	# 2311
	sw		x4, -264(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -268(x2)	# 2311
	addi	x2, x2, -272	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 272	# 2311
	lw		x1, -268(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -264(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -8(x2)	# 2312
	lw		x4, -20(x2)	# 2312
	sw		x1, -268(x2)	# 2312
	addi	x2, x2, -272	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 272	# 2312
	lw		x1, -268(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -264(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -8(x2)	# 2313
	lw		x4, -20(x2)	# 2313
	sw		x1, -268(x2)	# 2313
	addi	x2, x2, -272	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 272	# 2313
	lw		x1, -268(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -264(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -268(x2)	# 2314
	addi	x2, x2, -272	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 272	# 2314
	lw		x1, -268(x2)	# 2314
	lw		x5, -160(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -264(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	addi	x4, x3, 0	# 2329
	addi	x3, x3, 32	# 2329
	sw		x7, 28(x4)	# 2329
	lw		x6, -260(x2)	# 2329
	sw		x6, 24(x4)	# 2329
	lw		x6, -256(x2)	# 2329
	sw		x6, 20(x4)	# 2329
	lw		x6, -252(x2)	# 2329
	sw		x6, 16(x4)	# 2329
	lw		x6, -248(x2)	# 2329
	sw		x6, 12(x4)	# 2329
	lw		x6, -244(x2)	# 2329
	sw		x6, 8(x4)	# 2329
	lw		x6, -240(x2)	# 2329
	sw		x6, 4(x4)	# 2329
	lw		x6, -236(x2)	# 2329
	sw		x6, 0(x4)	# 2329
	lw		x6, -232(x2)	# 2343
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -268(x2)	# 2343
	addi	x2, x2, -272	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 272	# 2343
	lw		x1, -268(x2)	# 2343
	lw		x5, -4(x2)	# 2344
	mul		x6, x30, x5	# 2344
	addi	x6, x6, 60616	# 2344
	lw		x6, 0(x6)	# 2344
	lw		x7, -48(x2)	# 2344
	sub		x6, x6, x7	# 2344
	lw		x29, -140(x2)	# 2344
	addi	x5, x6, 0
	sw		x1, -268(x2)	# 2344
	addi	x2, x2, -272	# 2344
	lw		x31, 0(x29)	# 2344
	jalr	x1, x31, 0	# 2344
	addi	x2, x2, 272	# 2344
	lw		x1, -268(x2)	# 2344
	sw		x4, -268(x2)	# 721
	sw		x1, -272(x2)	# 721
	addi	x2, x2, -276	# 721
	jal		x1, min_caml_read_float	# 721
	addi	x2, x2, 276	# 721
	lw		x1, -272(x2)	# 721
	lw		x4, -4(x2)	# 721
	mul		x5, x30, x4	# 721
	addi	x5, x5, 60288	# 721
	fsw		f1, 0(x5)	# 721
	sw		x1, -272(x2)	# 722
	addi	x2, x2, -276	# 722
	jal		x1, min_caml_read_float	# 722
	addi	x2, x2, 276	# 722
	lw		x1, -272(x2)	# 722
	lw		x4, 0(x2)	# 722
	mul		x5, x30, x4	# 722
	addi	x5, x5, 60288	# 722
	fsw		f1, 0(x5)	# 722
	sw		x1, -272(x2)	# 723
	addi	x2, x2, -276	# 723
	jal		x1, min_caml_read_float	# 723
	addi	x2, x2, 276	# 723
	lw		x1, -272(x2)	# 723
	lw		x4, -48(x2)	# 723
	mul		x5, x30, x4	# 723
	addi	x5, x5, 60288	# 723
	fsw		f1, 0(x5)	# 723
	sw		x1, -272(x2)	# 725
	addi	x2, x2, -276	# 725
	jal		x1, min_caml_read_float	# 725
	addi	x2, x2, 276	# 725
	lw		x1, -272(x2)	# 725
	lui		x4, %hi(l.25014)	# 714
	ori		x4, x0, %lo(l.25014)	# 714
	flw		f2, 0(x4)	# 714
	fmul	f1, f1, f2	# 714
	lw		x29, -136(x2)	# 726
	fsw		f2, -272(x2)	# 726
	fsw		f1, -276(x2)	# 726
	sw		x1, -280(x2)	# 726
	addi	x2, x2, -284	# 726
	lw		x31, 0(x29)	# 726
	jalr	x1, x31, 0	# 726
	addi	x2, x2, 284	# 726
	lw		x1, -280(x2)	# 726
	flw		f2, -276(x2)	# 727
	lw		x29, -132(x2)	# 727
	fsw		f1, -280(x2)	# 727
	fadd	f1, f0, f2
	sw		x1, -284(x2)	# 727
	addi	x2, x2, -288	# 727
	lw		x31, 0(x29)	# 727
	jalr	x1, x31, 0	# 727
	addi	x2, x2, 288	# 727
	lw		x1, -284(x2)	# 727
	fsw		f1, -284(x2)	# 728
	sw		x1, -288(x2)	# 728
	addi	x2, x2, -292	# 728
	jal		x1, min_caml_read_float	# 728
	addi	x2, x2, 292	# 728
	lw		x1, -288(x2)	# 728
	flw		f2, -272(x2)	# 714
	fmul	f1, f1, f2	# 714
	lw		x29, -136(x2)	# 729
	fsw		f1, -288(x2)	# 729
	sw		x1, -292(x2)	# 729
	addi	x2, x2, -296	# 729
	lw		x31, 0(x29)	# 729
	jalr	x1, x31, 0	# 729
	addi	x2, x2, 296	# 729
	lw		x1, -292(x2)	# 729
	flw		f2, -288(x2)	# 730
	lw		x29, -132(x2)	# 730
	fsw		f1, -292(x2)	# 730
	fadd	f1, f0, f2
	sw		x1, -296(x2)	# 730
	addi	x2, x2, -300	# 730
	lw		x31, 0(x29)	# 730
	jalr	x1, x31, 0	# 730
	addi	x2, x2, 300	# 730
	lw		x1, -296(x2)	# 730
	flw		f2, -280(x2)	# 732
	fmul	f3, f2, f1	# 732
	lui		x4, %hi(l.27693)	# 732
	ori		x4, x0, %lo(l.27693)	# 732
	flw		f4, 0(x4)	# 732
	fmul	f3, f3, f4	# 732
	lw		x4, -4(x2)	# 732
	mul		x5, x30, x4	# 732
	addi	x5, x5, 60684	# 732
	fsw		f3, 0(x5)	# 732
	lui		x5, %hi(l.27697)	# 733
	ori		x5, x0, %lo(l.27697)	# 733
	flw		f3, 0(x5)	# 733
	flw		f5, -284(x2)	# 733
	fmul	f3, f5, f3	# 733
	lw		x5, 0(x2)	# 733
	mul		x6, x30, x5	# 733
	addi	x6, x6, 60684	# 733
	fsw		f3, 0(x6)	# 733
	flw		f3, -292(x2)	# 734
	fmul	f6, f2, f3	# 734
	fmul	f4, f6, f4	# 734
	lw		x6, -48(x2)	# 734
	mul		x7, x30, x6	# 734
	addi	x7, x7, 60684	# 734
	fsw		f4, 0(x7)	# 734
	mul		x7, x30, x4	# 736
	addi	x7, x7, 60660	# 736
	fsw		f3, 0(x7)	# 736
	mul		x7, x30, x5	# 737
	addi	x7, x7, 60660	# 737
	flw		f4, -8(x2)	# 737
	fsw		f4, 0(x7)	# 737
	fsub	f6, f0, f1	# 123
	mul		x7, x30, x6	# 738
	addi	x7, x7, 60660	# 738
	fsw		f6, 0(x7)	# 738
	fsub	f5, f0, f5	# 123
	fmul	f1, f5, f1	# 740
	mul		x7, x30, x4	# 740
	addi	x7, x7, 60672	# 740
	fsw		f1, 0(x7)	# 740
	fsub	f1, f0, f2	# 123
	mul		x7, x30, x5	# 741
	addi	x7, x7, 60672	# 741
	fsw		f1, 0(x7)	# 741
	fmul	f1, f5, f3	# 742
	mul		x7, x30, x6	# 742
	addi	x7, x7, 60672	# 742
	fsw		f1, 0(x7)	# 742
	mul		x7, x30, x4	# 744
	addi	x7, x7, 60288	# 744
	flw		f1, 0(x7)	# 744
	mul		x7, x30, x4	# 744
	addi	x7, x7, 60684	# 744
	flw		f2, 0(x7)	# 744
	fsub	f1, f1, f2	# 744
	mul		x7, x30, x4	# 744
	addi	x7, x7, 60300	# 744
	fsw		f1, 0(x7)	# 744
	mul		x7, x30, x5	# 745
	addi	x7, x7, 60288	# 745
	flw		f1, 0(x7)	# 745
	mul		x7, x30, x5	# 745
	addi	x7, x7, 60684	# 745
	flw		f2, 0(x7)	# 745
	fsub	f1, f1, f2	# 745
	mul		x7, x30, x5	# 745
	addi	x7, x7, 60300	# 745
	fsw		f1, 0(x7)	# 745
	mul		x7, x30, x6	# 746
	addi	x7, x7, 60288	# 746
	flw		f1, 0(x7)	# 746
	mul		x7, x30, x6	# 746
	addi	x7, x7, 60684	# 746
	flw		f2, 0(x7)	# 746
	fsub	f1, f1, f2	# 746
	mul		x7, x30, x6	# 746
	addi	x7, x7, 60300	# 746
	fsw		f1, 0(x7)	# 746
	sw		x1, -296(x2)	# 753
	addi	x2, x2, -300	# 753
	jal		x1, min_caml_read_int	# 753
	addi	x2, x2, 300	# 753
	lw		x1, -296(x2)	# 753
	sw		x1, -296(x2)	# 756
	addi	x2, x2, -300	# 756
	jal		x1, min_caml_read_float	# 756
	addi	x2, x2, 300	# 756
	lw		x1, -296(x2)	# 756
	flw		f2, -272(x2)	# 714
	fmul	f1, f1, f2	# 714
	lw		x29, -132(x2)	# 757
	fsw		f1, -296(x2)	# 757
	sw		x1, -300(x2)	# 757
	addi	x2, x2, -304	# 757
	lw		x31, 0(x29)	# 757
	jalr	x1, x31, 0	# 757
	addi	x2, x2, 304	# 757
	lw		x1, -300(x2)	# 757
	fsub	f1, f0, f1	# 123
	lw		x4, 0(x2)	# 758
	mul		x5, x30, x4	# 758
	addi	x5, x5, 60312	# 758
	fsw		f1, 0(x5)	# 758
	sw		x1, -300(x2)	# 759
	addi	x2, x2, -304	# 759
	jal		x1, min_caml_read_float	# 759
	addi	x2, x2, 304	# 759
	lw		x1, -300(x2)	# 759
	flw		f2, -272(x2)	# 714
	fmul	f1, f1, f2	# 714
	flw		f2, -296(x2)	# 760
	lw		x29, -136(x2)	# 760
	fsw		f1, -300(x2)	# 760
	fadd	f1, f0, f2
	sw		x1, -304(x2)	# 760
	addi	x2, x2, -308	# 760
	lw		x31, 0(x29)	# 760
	jalr	x1, x31, 0	# 760
	addi	x2, x2, 308	# 760
	lw		x1, -304(x2)	# 760
	flw		f2, -300(x2)	# 761
	lw		x29, -132(x2)	# 761
	fsw		f1, -304(x2)	# 761
	fadd	f1, f0, f2
	sw		x1, -308(x2)	# 761
	addi	x2, x2, -312	# 761
	lw		x31, 0(x29)	# 761
	jalr	x1, x31, 0	# 761
	addi	x2, x2, 312	# 761
	lw		x1, -308(x2)	# 761
	flw		f2, -304(x2)	# 762
	fmul	f1, f2, f1	# 762
	lw		x4, -4(x2)	# 762
	mul		x5, x30, x4	# 762
	addi	x5, x5, 60312	# 762
	fsw		f1, 0(x5)	# 762
	flw		f1, -300(x2)	# 763
	lw		x29, -136(x2)	# 763
	sw		x1, -308(x2)	# 763
	addi	x2, x2, -312	# 763
	lw		x31, 0(x29)	# 763
	jalr	x1, x31, 0	# 763
	addi	x2, x2, 312	# 763
	lw		x1, -308(x2)	# 763
	flw		f2, -304(x2)	# 764
	fmul	f1, f2, f1	# 764
	lw		x4, -48(x2)	# 764
	mul		x5, x30, x4	# 764
	addi	x5, x5, 60312	# 764
	fsw		f1, 0(x5)	# 764
	sw		x1, -308(x2)	# 765
	addi	x2, x2, -312	# 765
	jal		x1, min_caml_read_float	# 765
	addi	x2, x2, 312	# 765
	lw		x1, -308(x2)	# 765
	lw		x4, -4(x2)	# 765
	mul		x5, x30, x4	# 765
	addi	x5, x5, 60324	# 765
	fsw		f1, 0(x5)	# 765
	lw		x29, -128(x2)	# 907
	sw		x1, -308(x2)	# 907
	addi	x2, x2, -312	# 907
	lw		x31, 0(x29)	# 907
	jalr	x1, x31, 0	# 907
	addi	x2, x2, 312	# 907
	lw		x1, -308(x2)	# 907
	lw		x4, -4(x2)	# 944
	lw		x29, -124(x2)	# 944
	sw		x1, -308(x2)	# 944
	addi	x2, x2, -312	# 944
	lw		x31, 0(x29)	# 944
	jalr	x1, x31, 0	# 944
	addi	x2, x2, 312	# 944
	lw		x1, -308(x2)	# 944
	lw		x4, -4(x2)	# 945
	lw		x29, -120(x2)	# 945
	sw		x1, -308(x2)	# 945
	addi	x2, x2, -312	# 945
	lw		x31, 0(x29)	# 945
	jalr	x1, x31, 0	# 945
	addi	x2, x2, 312	# 945
	lw		x1, -308(x2)	# 945
	lw		x5, -4(x2)	# 945
	mul		x6, x30, x5	# 945
	addi	x6, x6, 60536	# 945
	sw		x4, 0(x6)	# 945
	addi	x4, x0, 80	# 2152
	sw		x1, -308(x2)	# 2152
	addi	x2, x2, -312	# 2152
	jal		x1, min_caml_print_char	# 2152
	addi	x2, x2, 312	# 2152
	lw		x1, -308(x2)	# 2152
	addi	x4, x0, 51	# 2153
	sw		x1, -308(x2)	# 2153
	addi	x2, x2, -312	# 2153
	jal		x1, min_caml_print_char	# 2153
	addi	x2, x2, 312	# 2153
	lw		x1, -308(x2)	# 2153
	addi	x4, x0, 10	# 2154
	sw		x4, -308(x2)	# 2154
	sw		x1, -312(x2)	# 2154
	addi	x2, x2, -316	# 2154
	jal		x1, min_caml_print_char	# 2154
	addi	x2, x2, 316	# 2154
	lw		x1, -312(x2)	# 2154
	lw		x4, -4(x2)	# 2155
	mul		x5, x30, x4	# 2155
	addi	x5, x5, 60616	# 2155
	lw		x5, 0(x5)	# 2155
	addi	x4, x5, 0
	sw		x1, -312(x2)	# 2155
	addi	x2, x2, -316	# 2155
	jal		x1, min_caml_print_int	# 2155
	addi	x2, x2, 316	# 2155
	lw		x1, -312(x2)	# 2155
	addi	x4, x0, 32	# 2156
	sw		x4, -312(x2)	# 2156
	sw		x1, -316(x2)	# 2156
	addi	x2, x2, -320	# 2156
	jal		x1, min_caml_print_char	# 2156
	addi	x2, x2, 320	# 2156
	lw		x1, -316(x2)	# 2156
	lw		x4, 0(x2)	# 2157
	mul		x5, x30, x4	# 2157
	addi	x5, x5, 60616	# 2157
	lw		x5, 0(x5)	# 2157
	addi	x4, x5, 0
	sw		x1, -316(x2)	# 2157
	addi	x2, x2, -320	# 2157
	jal		x1, min_caml_print_int	# 2157
	addi	x2, x2, 320	# 2157
	lw		x1, -316(x2)	# 2157
	lw		x4, -312(x2)	# 2158
	sw		x1, -316(x2)	# 2158
	addi	x2, x2, -320	# 2158
	jal		x1, min_caml_print_char	# 2158
	addi	x2, x2, 320	# 2158
	lw		x1, -316(x2)	# 2158
	addi	x4, x0, 255	# 2159
	sw		x1, -316(x2)	# 2159
	addi	x2, x2, -320	# 2159
	jal		x1, min_caml_print_int	# 2159
	addi	x2, x2, 320	# 2159
	lw		x1, -316(x2)	# 2159
	lw		x4, -308(x2)	# 2160
	sw		x1, -316(x2)	# 2160
	addi	x2, x2, -320	# 2160
	jal		x1, min_caml_print_char	# 2160
	addi	x2, x2, 320	# 2160
	lw		x1, -316(x2)	# 2160
	lw		x4, -160(x2)	# 2458
	lw		x29, -116(x2)	# 2458
	sw		x1, -316(x2)	# 2458
	addi	x2, x2, -320	# 2458
	lw		x31, 0(x29)	# 2458
	jalr	x1, x31, 0	# 2458
	addi	x2, x2, 320	# 2458
	lw		x1, -316(x2)	# 2458
	addi	x4, x0, 9	# 2459
	lw		x5, -4(x2)	# 2459
	lw		x29, -112(x2)	# 2459
	addi	x6, x5, 0
	sw		x1, -316(x2)	# 2459
	addi	x2, x2, -320	# 2459
	lw		x31, 0(x29)	# 2459
	jalr	x1, x31, 0	# 2459
	addi	x2, x2, 320	# 2459
	lw		x1, -316(x2)	# 2459
	lw		x4, -160(x2)	# 2460
	lw		x29, -108(x2)	# 2460
	sw		x1, -316(x2)	# 2460
	addi	x2, x2, -320	# 2460
	lw		x31, 0(x29)	# 2460
	jalr	x1, x31, 0	# 2460
	addi	x2, x2, 320	# 2460
	lw		x1, -316(x2)	# 2460
	lw		x4, -4(x2)	# 296
	mul		x5, x30, x4	# 296
	addi	x5, x5, 60312	# 296
	flw		f1, 0(x5)	# 296
	mul		x5, x30, x4	# 296
	addi	x5, x5, 60736	# 296
	fsw		f1, 0(x5)	# 296
	lw		x5, 0(x2)	# 297
	mul		x6, x30, x5	# 297
	addi	x6, x6, 60312	# 297
	flw		f1, 0(x6)	# 297
	mul		x6, x30, x5	# 297
	addi	x6, x6, 60736	# 297
	fsw		f1, 0(x6)	# 297
	lw		x6, -48(x2)	# 298
	mul		x7, x30, x6	# 298
	addi	x7, x7, 60312	# 298
	flw		f1, 0(x7)	# 298
	mul		x7, x30, x6	# 298
	addi	x7, x7, 60736	# 298
	fsw		f1, 0(x7)	# 298
	mul		x7, x30, x4	# 1324
	addi	x7, x7, 60000	# 1324
	lw		x7, 0(x7)	# 1324
	sub		x7, x7, x5	# 1324
	lw		x8, -80(x2)	# 1324
	lw		x29, -104(x2)	# 1324
	addi	x5, x7, 0
	addi	x4, x8, 0
	sw		x1, -316(x2)	# 1324
	addi	x2, x2, -320	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 320	# 1324
	lw		x1, -316(x2)	# 1324
	lw		x4, -4(x2)	# 2542
	mul		x5, x30, x4	# 2542
	addi	x5, x5, 60000	# 2542
	lw		x5, 0(x5)	# 2542
	lw		x6, 0(x2)	# 2542
	sub		x5, x5, x6	# 2542
	ble		x4, x5, ble.31181	# 2507
	jal		x0, ble_cont.31180	# 2507
ble.31181:
	mul		x7, x30, x5	# 2508
	addi	x7, x7, 60048	# 2508
	lw		x7, 0(x7)	# 2508
	lw		x8, 8(x7)	# 400
	lw		x9, -48(x2)	# 2509
	beq		x8, x9, beq.31183	# 2509
	jal		x0, beq_cont.31182	# 2509
beq.31183:
	lw		x8, 28(x7)	# 498
	mul		x10, x30, x4	# 503
	add		x8, x8, x10	# 503
	flw		f1, 0(x8)	# 503
	fadd	f2, f0, f16	# 2510
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.31185	# 125
	jal		x0, fle_cont.31184	# 125
fle_else.31185:
	lw		x8, 4(x7)	# 390
	beq		x8, x6, beq.31187	# 2513
	beq		x8, x9, beq.31189	# 2515
	jal		x0, beq_cont.31188	# 2515
beq.31189:
	lw		x8, -160(x2)	# 2492
	mul		x5, x5, x8	# 2492
	addi	x5, x5, 1	# 2492
	mul		x8, x30, x4	# 2493
	addi	x8, x8, 61736	# 2493
	lw		x8, 0(x8)	# 2493
	lw		x10, 28(x7)	# 498
	mul		x11, x30, x4	# 503
	add		x10, x10, x11	# 503
	flw		f1, 0(x10)	# 503
	fsub	f1, f2, f1	# 2494
	lw		x10, 16(x7)	# 458
	mul		x11, x30, x4	# 329
	addi	x11, x11, 60312	# 329
	flw		f2, 0(x11)	# 329
	mul		x11, x30, x4	# 329
	add		x11, x10, x11	# 329
	flw		f3, 0(x11)	# 329
	fmul	f3, f2, f3	# 329
	mul		x11, x30, x6	# 329
	addi	x11, x11, 60312	# 329
	flw		f4, 0(x11)	# 329
	mul		x11, x30, x6	# 329
	add		x11, x10, x11	# 329
	flw		f5, 0(x11)	# 329
	fmul	f5, f4, f5	# 329
	fadd	f3, f3, f5	# 329
	mul		x11, x30, x9	# 329
	addi	x11, x11, 60312	# 329
	flw		f5, 0(x11)	# 329
	mul		x11, x30, x9	# 329
	add		x10, x10, x11	# 329
	flw		f6, 0(x10)	# 329
	fmul	f6, f5, f6	# 329
	fadd	f3, f3, f6	# 329
	fadd	f6, f0, f28	# 2498
	lw		x10, 16(x7)	# 428
	mul		x11, x30, x4	# 433
	add		x10, x10, x11	# 433
	flw		f7, 0(x10)	# 433
	fmul	f7, f6, f7	# 2498
	fmul	f7, f7, f3	# 2498
	fsub	f2, f7, f2	# 2498
	lw		x10, 16(x7)	# 438
	mul		x11, x30, x6	# 443
	add		x10, x10, x11	# 443
	flw		f7, 0(x10)	# 443
	fmul	f7, f6, f7	# 2499
	fmul	f7, f7, f3	# 2499
	fsub	f4, f7, f4	# 2499
	lw		x7, 16(x7)	# 448
	mul		x10, x30, x9	# 453
	add		x7, x7, x10	# 453
	flw		f7, 0(x7)	# 453
	fmul	f6, f6, f7	# 2500
	fmul	f3, f6, f3	# 2500
	fsub	f3, f3, f5	# 2500
	flw		f5, -8(x2)	# 2419
	lw		x7, -20(x2)	# 2419
	sw		x8, -316(x2)	# 2419
	sw		x5, -320(x2)	# 2419
	fsw		f1, -324(x2)	# 2419
	fsw		f3, -328(x2)	# 2419
	fsw		f4, -332(x2)	# 2419
	fsw		f2, -336(x2)	# 2419
	addi	x4, x7, 0
	fadd	f1, f0, f5
	sw		x1, -340(x2)	# 2419
	addi	x2, x2, -344	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 344	# 2419
	lw		x1, -340(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lw		x4, -4(x2)	# 2420
	mul		x6, x30, x4	# 2420
	addi	x6, x6, 60000	# 2420
	lw		x6, 0(x6)	# 2420
	sw		x5, -340(x2)	# 2420
	addi	x4, x6, 0
	sw		x1, -344(x2)	# 2420
	addi	x2, x2, -348	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 348	# 2420
	lw		x1, -344(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -340(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	lw		x6, -4(x2)	# 277
	mul		x7, x30, x6	# 277
	add		x7, x4, x7	# 277
	flw		f1, -336(x2)	# 277
	fsw		f1, 0(x7)	# 277
	lw		x7, 0(x2)	# 278
	mul		x8, x30, x7	# 278
	add		x8, x4, x8	# 278
	flw		f1, -332(x2)	# 278
	fsw		f1, 0(x8)	# 278
	lw		x8, -48(x2)	# 279
	mul		x9, x30, x8	# 279
	add		x4, x4, x9	# 279
	flw		f1, -328(x2)	# 279
	fsw		f1, 0(x4)	# 279
	mul		x4, x30, x6	# 1324
	addi	x4, x4, 60000	# 1324
	lw		x4, 0(x4)	# 1324
	sub		x4, x4, x7	# 1324
	lw		x29, -104(x2)	# 1324
	sw		x5, -344(x2)	# 1324
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -348(x2)	# 1324
	addi	x2, x2, -352	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 352	# 1324
	lw		x1, -348(x2)	# 1324
	addi	x4, x3, 0	# 2473
	addi	x3, x3, 12	# 2473
	flw		f1, -324(x2)	# 2473
	fsw		f1, 8(x4)	# 2473
	lw		x5, -344(x2)	# 2473
	sw		x5, 4(x4)	# 2473
	lw		x5, -320(x2)	# 2473
	sw		x5, 0(x4)	# 2473
	lw		x5, -316(x2)	# 2473
	mul		x6, x30, x5	# 2473
	addi	x6, x6, 61016	# 2473
	sw		x4, 0(x6)	# 2473
	addi	x4, x5, 1	# 2501
	lw		x5, -4(x2)	# 2501
	mul		x6, x30, x5	# 2501
	addi	x6, x6, 61736	# 2501
	sw		x4, 0(x6)	# 2501
beq_cont.31188:
	jal		x0, beq_cont.31186	# 2513
beq.31187:
	lw		x8, -160(x2)	# 2478
	mul		x5, x5, x8	# 2478
	mul		x8, x30, x4	# 2479
	addi	x8, x8, 61736	# 2479
	lw		x8, 0(x8)	# 2479
	lw		x7, 28(x7)	# 498
	mul		x10, x30, x4	# 503
	add		x7, x7, x10	# 503
	flw		f1, 0(x7)	# 503
	fsub	f1, f2, f1	# 2480
	mul		x7, x30, x4	# 2481
	addi	x7, x7, 60312	# 2481
	flw		f2, 0(x7)	# 2481
	fsub	f3, f0, f2	# 123
	mul		x7, x30, x6	# 2482
	addi	x7, x7, 60312	# 2482
	flw		f4, 0(x7)	# 2482
	fsub	f4, f0, f4	# 123
	mul		x7, x30, x9	# 2483
	addi	x7, x7, 60312	# 2483
	flw		f5, 0(x7)	# 2483
	fsub	f5, f0, f5	# 123
	addi	x7, x5, 1	# 2484
	flw		f6, -8(x2)	# 2419
	lw		x10, -20(x2)	# 2419
	fsw		f3, -348(x2)	# 2419
	sw		x5, -352(x2)	# 2419
	sw		x8, -356(x2)	# 2419
	sw		x7, -360(x2)	# 2419
	fsw		f1, -364(x2)	# 2419
	fsw		f5, -368(x2)	# 2419
	fsw		f4, -372(x2)	# 2419
	fsw		f2, -376(x2)	# 2419
	addi	x4, x10, 0
	fadd	f1, f0, f6
	sw		x1, -380(x2)	# 2419
	addi	x2, x2, -384	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 384	# 2419
	lw		x1, -380(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lw		x4, -4(x2)	# 2420
	mul		x6, x30, x4	# 2420
	addi	x6, x6, 60000	# 2420
	lw		x6, 0(x6)	# 2420
	sw		x5, -380(x2)	# 2420
	addi	x4, x6, 0
	sw		x1, -384(x2)	# 2420
	addi	x2, x2, -388	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 388	# 2420
	lw		x1, -384(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -380(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	lw		x6, -4(x2)	# 277
	mul		x7, x30, x6	# 277
	add		x7, x4, x7	# 277
	flw		f1, -376(x2)	# 277
	fsw		f1, 0(x7)	# 277
	lw		x7, 0(x2)	# 278
	mul		x8, x30, x7	# 278
	add		x8, x4, x8	# 278
	flw		f1, -372(x2)	# 278
	fsw		f1, 0(x8)	# 278
	lw		x8, -48(x2)	# 279
	mul		x9, x30, x8	# 279
	add		x4, x4, x9	# 279
	flw		f2, -368(x2)	# 279
	fsw		f2, 0(x4)	# 279
	mul		x4, x30, x6	# 1324
	addi	x4, x4, 60000	# 1324
	lw		x4, 0(x4)	# 1324
	sub		x4, x4, x7	# 1324
	lw		x29, -104(x2)	# 1324
	sw		x5, -384(x2)	# 1324
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -388(x2)	# 1324
	addi	x2, x2, -392	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 392	# 1324
	lw		x1, -388(x2)	# 1324
	addi	x4, x3, 0	# 2473
	addi	x3, x3, 12	# 2473
	flw		f1, -364(x2)	# 2473
	fsw		f1, 8(x4)	# 2473
	lw		x5, -384(x2)	# 2473
	sw		x5, 4(x4)	# 2473
	lw		x5, -360(x2)	# 2473
	sw		x5, 0(x4)	# 2473
	lw		x5, -356(x2)	# 2473
	mul		x6, x30, x5	# 2473
	addi	x6, x6, 61016	# 2473
	sw		x4, 0(x6)	# 2473
	addi	x4, x5, 1	# 2485
	lw		x6, -352(x2)	# 2485
	addi	x7, x6, 2	# 2485
	lw		x8, 0(x2)	# 2485
	mul		x9, x30, x8	# 2485
	addi	x9, x9, 60312	# 2485
	flw		f2, 0(x9)	# 2485
	flw		f3, -8(x2)	# 2419
	lw		x9, -20(x2)	# 2419
	sw		x4, -388(x2)	# 2419
	sw		x7, -392(x2)	# 2419
	fsw		f2, -396(x2)	# 2419
	addi	x4, x9, 0
	fadd	f1, f0, f3
	sw		x1, -400(x2)	# 2419
	addi	x2, x2, -404	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 404	# 2419
	lw		x1, -400(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lw		x4, -4(x2)	# 2420
	mul		x6, x30, x4	# 2420
	addi	x6, x6, 60000	# 2420
	lw		x6, 0(x6)	# 2420
	sw		x5, -400(x2)	# 2420
	addi	x4, x6, 0
	sw		x1, -404(x2)	# 2420
	addi	x2, x2, -408	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 408	# 2420
	lw		x1, -404(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -400(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	lw		x6, -4(x2)	# 277
	mul		x7, x30, x6	# 277
	add		x7, x4, x7	# 277
	flw		f1, -348(x2)	# 277
	fsw		f1, 0(x7)	# 277
	lw		x7, 0(x2)	# 278
	mul		x8, x30, x7	# 278
	add		x8, x4, x8	# 278
	flw		f2, -396(x2)	# 278
	fsw		f2, 0(x8)	# 278
	lw		x8, -48(x2)	# 279
	mul		x9, x30, x8	# 279
	add		x4, x4, x9	# 279
	flw		f2, -368(x2)	# 279
	fsw		f2, 0(x4)	# 279
	mul		x4, x30, x6	# 1324
	addi	x4, x4, 60000	# 1324
	lw		x4, 0(x4)	# 1324
	sub		x4, x4, x7	# 1324
	lw		x29, -104(x2)	# 1324
	sw		x5, -404(x2)	# 1324
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -408(x2)	# 1324
	addi	x2, x2, -412	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 412	# 1324
	lw		x1, -408(x2)	# 1324
	addi	x4, x3, 0	# 2473
	addi	x3, x3, 12	# 2473
	flw		f1, -364(x2)	# 2473
	fsw		f1, 8(x4)	# 2473
	lw		x5, -404(x2)	# 2473
	sw		x5, 4(x4)	# 2473
	lw		x5, -392(x2)	# 2473
	sw		x5, 0(x4)	# 2473
	lw		x5, -388(x2)	# 2473
	mul		x5, x30, x5	# 2473
	addi	x5, x5, 61016	# 2473
	sw		x4, 0(x5)	# 2473
	lw		x4, -356(x2)	# 2486
	addi	x5, x4, 2	# 2486
	lw		x6, -352(x2)	# 2486
	addi	x6, x6, 3	# 2486
	lw		x7, -48(x2)	# 2486
	mul		x8, x30, x7	# 2486
	addi	x8, x8, 60312	# 2486
	flw		f2, 0(x8)	# 2486
	flw		f3, -8(x2)	# 2419
	lw		x8, -20(x2)	# 2419
	sw		x5, -408(x2)	# 2419
	sw		x6, -412(x2)	# 2419
	fsw		f2, -416(x2)	# 2419
	addi	x4, x8, 0
	fadd	f1, f0, f3
	sw		x1, -420(x2)	# 2419
	addi	x2, x2, -424	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 424	# 2419
	lw		x1, -420(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lw		x4, -4(x2)	# 2420
	mul		x6, x30, x4	# 2420
	addi	x6, x6, 60000	# 2420
	lw		x6, 0(x6)	# 2420
	sw		x5, -420(x2)	# 2420
	addi	x4, x6, 0
	sw		x1, -424(x2)	# 2420
	addi	x2, x2, -428	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 428	# 2420
	lw		x1, -424(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -420(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	lw		x6, -4(x2)	# 277
	mul		x7, x30, x6	# 277
	add		x7, x4, x7	# 277
	flw		f1, -348(x2)	# 277
	fsw		f1, 0(x7)	# 277
	lw		x7, 0(x2)	# 278
	mul		x8, x30, x7	# 278
	add		x8, x4, x8	# 278
	flw		f1, -372(x2)	# 278
	fsw		f1, 0(x8)	# 278
	lw		x8, -48(x2)	# 279
	mul		x9, x30, x8	# 279
	add		x4, x4, x9	# 279
	flw		f1, -416(x2)	# 279
	fsw		f1, 0(x4)	# 279
	mul		x4, x30, x6	# 1324
	addi	x4, x4, 60000	# 1324
	lw		x4, 0(x4)	# 1324
	sub		x4, x4, x7	# 1324
	lw		x29, -104(x2)	# 1324
	sw		x5, -424(x2)	# 1324
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -428(x2)	# 1324
	addi	x2, x2, -432	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 432	# 1324
	lw		x1, -428(x2)	# 1324
	addi	x4, x3, 0	# 2473
	addi	x3, x3, 12	# 2473
	flw		f1, -364(x2)	# 2473
	fsw		f1, 8(x4)	# 2473
	lw		x5, -424(x2)	# 2473
	sw		x5, 4(x4)	# 2473
	lw		x5, -412(x2)	# 2473
	sw		x5, 0(x4)	# 2473
	lw		x5, -408(x2)	# 2473
	mul		x5, x30, x5	# 2473
	addi	x5, x5, 61016	# 2473
	sw		x4, 0(x5)	# 2473
	lw		x4, -356(x2)	# 2487
	addi	x4, x4, 3	# 2487
	lw		x5, -4(x2)	# 2487
	mul		x6, x30, x5	# 2487
	addi	x6, x6, 61736	# 2487
	sw		x4, 0(x6)	# 2487
beq_cont.31186:
fle_cont.31184:
beq_cont.31182:
ble_cont.31180:
	lw		x4, -4(x2)	# 2255
	mul		x5, x30, x4	# 2255
	addi	x5, x5, 60632	# 2255
	flw		f1, 0(x5)	# 2255
	lw		x5, 0(x2)	# 2255
	mul		x6, x30, x5	# 2255
	addi	x6, x6, 60624	# 2255
	lw		x6, 0(x6)	# 2255
	sub		x6, x4, x6	# 2255
	lw		x29, -100(x2)	# 2255
	fsw		f1, -428(x2)	# 2255
	addi	x4, x6, 0
	sw		x1, -432(x2)	# 2255
	addi	x2, x2, -436	# 2255
	lw		x31, 0(x29)	# 2255
	jalr	x1, x31, 0	# 2255
	addi	x2, x2, 436	# 2255
	lw		x1, -432(x2)	# 2255
	flw		f2, -428(x2)	# 2255
	fmul	f1, f2, f1	# 2255
	lw		x6, -4(x2)	# 2258
	mul		x4, x30, x6	# 2258
	addi	x4, x4, 60672	# 2258
	flw		f2, 0(x4)	# 2258
	fmul	f2, f1, f2	# 2258
	mul		x4, x30, x6	# 2258
	addi	x4, x4, 60684	# 2258
	flw		f3, 0(x4)	# 2258
	fadd	f2, f2, f3	# 2258
	lw		x4, 0(x2)	# 2259
	mul		x5, x30, x4	# 2259
	addi	x5, x5, 60672	# 2259
	flw		f3, 0(x5)	# 2259
	fmul	f3, f1, f3	# 2259
	mul		x5, x30, x4	# 2259
	addi	x5, x5, 60684	# 2259
	flw		f4, 0(x5)	# 2259
	fadd	f3, f3, f4	# 2259
	lw		x5, -48(x2)	# 2260
	mul		x7, x30, x5	# 2260
	addi	x7, x7, 60672	# 2260
	flw		f4, 0(x7)	# 2260
	fmul	f1, f1, f4	# 2260
	mul		x7, x30, x5	# 2260
	addi	x7, x7, 60684	# 2260
	flw		f4, 0(x7)	# 2260
	fadd	f1, f1, f4	# 2260
	mul		x7, x30, x6	# 2261
	addi	x7, x7, 60616	# 2261
	lw		x7, 0(x7)	# 2261
	sub		x4, x7, x4	# 2261
	lw		x7, -228(x2)	# 2261
	lw		x29, -96(x2)	# 2261
	addi	x5, x4, 0
	addi	x4, x7, 0
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -432(x2)	# 2261
	addi	x2, x2, -436	# 2261
	lw		x31, 0(x29)	# 2261
	jalr	x1, x31, 0	# 2261
	addi	x2, x2, 436	# 2261
	lw		x1, -432(x2)	# 2261
	lw		x4, -4(x2)	# 2544
	lw		x5, -188(x2)	# 2544
	lw		x6, -228(x2)	# 2544
	lw		x7, -268(x2)	# 2544
	lw		x8, -48(x2)	# 2544
	lw		x9, -20(x2)	# 2544
	lw		x29, -92(x2)	# 2544
	sw		x1, -432(x2)	# 2544
	addi	x2, x2, -436	# 2544
	lw		x31, 0(x29)	# 2544
	jalr	x1, x31, 0	# 2544
	addi	x2, x2, 436	# 2544
	lw		x1, -432(x2)	# 2544
	EXIT	
