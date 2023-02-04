l.0:	# 8388608.000000
	.word	8388608.000000
l.27742:	# 1.000000
	.word	1.000000
l.27751:	# 4.000000
	.word	4.000000
l.27747:	# 4.500000
	.word	4.500000
l.28352:	# 0.010000
	.word	0.010000
l.28350:	# -0.200000
	.word	-0.200000
l.28471:	# -0.100000
	.word	-0.100000
l.29251:	# 100000000.000000
	.word	100000000.000000
l.27740:	# -0.500000
	.word	-0.500000
l.29952:	# 150.000000
	.word	150.000000
l.29737:	# -150.000000
	.word	-150.000000
l.27744:	# 0.500000
	.word	0.500000
l.27749:	# -4.500000
	.word	-4.500000
l.27904:	# 2.000000
	.word	2.000000
l.27812:	# 0.017453
	.word	0.017453
l.31147:	# 200.000000
	.word	200.000000
l.31151:	# -200.000000
	.word	-200.000000
l.29510:	# 20.000000
	.word	20.000000
l.29473:	# 0.300000
	.word	0.300000
l.29507:	# 0.050000
	.word	0.050000
l.27754:	# 0.166667
	.word	0.166667
l.27756:	# 0.008333
	.word	0.008333
l.27758:	# 0.000196
	.word	0.000196
l.29459:	# 3.141593
	.word	3.141593
l.29471:	# 0.150000
	.word	0.150000
l.27762:	# 0.041664
	.word	0.041664
l.29485:	# 10.000000
	.word	10.000000
l.29457:	# 30.000000
	.word	30.000000
l.29560:	# 0.003906
	.word	0.003906
l.29588:	# -2.000000
	.word	-2.000000
l.30872:	# 128.000000
	.word	128.000000
l.30862:	# 0.785398
	.word	0.785398
l.30860:	# 1.570796
	.word	1.570796
l.30858:	# 6.283185
	.word	6.283185
l.30856:	# 3.141593
	.word	3.141593
l.30841:	# 1000000000.000000
	.word	1000000000.000000
l.30837:	# 255.000000
	.word	255.000000
l.30823:	# 0.000000
	.word	0.000000
l.30772:	# 0.900000
	.word	0.900000
l.27779:	# 0.333333
	.word	0.333333
l.27777:	# 0.437500
	.word	0.437500
l.27774:	# 2.437500
	.word	2.437500
l.29453:	# 0.000100
	.word	0.000100
l.27841:	# -1.000000
	.word	-1.000000
l.27764:	# 0.001370
	.word	0.001370
l.27783:	# 0.142857
	.word	0.142857
l.27785:	# 0.111111
	.word	0.111111
l.27787:	# 0.089764
	.word	0.089764
l.27781:	# 0.200000
	.word	0.200000
l.29684:	# 0.100000
	.word	0.100000
l.29455:	# 15.000000
	.word	15.000000
l.29496:	# 0.250000
	.word	0.250000
int_of_float_rem.2530.18756:
	lw		x5, 4(x29)	# 145
	fadd	f2, f0, f23	# 145
	fle		x31, f2, f1	# 145
	beq		x31, x0, fle_else.36278	# 145
	fadd	f2, f0, f26	# 146
	fle		x31, f2, f1	# 146
	beq		x31, x0, fle_else.36279	# 146
	fadd	f2, f0, f16	# 147
	fsub	f1, f1, f2	# 147
	add		x4, x4, x5	# 147
	lw		x31, 0(x29)	# 147
	jalr	x0, x31, 0	# 147
fle_else.36279:
	jalr	x0, x1, 0	# 146
fle_else.36278:
	fadd	f2, f0, f16	# 148
	fadd	f1, f1, f2	# 148
	sub		x4, x4, x5	# 148
	lw		x31, 0(x29)	# 148
	jalr	x0, x31, 0	# 148
int_of_float_four.2533.18759:
	lw		x5, 4(x29)	# 150
	fadd	f2, f0, f18	# 150
	fle		x31, f2, f1	# 150
	beq		x31, x0, fle_else.36280	# 150
	fadd	f2, f0, f17	# 150
	fsub	f1, f1, f2	# 150
	addi	x4, x4, 4	# 150
	lw		x31, 0(x29)	# 150
	jalr	x0, x31, 0	# 150
fle_else.36280:
	fadd	f2, f0, f27	# 151
	fle		x31, f2, f1	# 151
	beq		x31, x0, fle_else.36281	# 151
	addi	x29, x5, 0
	lw		x31, 0(x29)	# 152
	jalr	x0, x31, 0	# 152
fle_else.36281:
	fadd	f2, f0, f17	# 151
	fadd	f1, f1, f2	# 151
	addi	x5, x0, 4	# 151
	sub		x4, x4, x5	# 151
	lw		x31, 0(x29)	# 151
	jalr	x0, x31, 0	# 151
sin.2548.18766:
	flw		f2, 20(x29)	# 199
	flw		f3, 16(x29)	# 199
	flw		f4, 12(x29)	# 199
	flw		f5, 8(x29)	# 199
	flw		f6, 4(x29)	# 199
	fle		x31, f6, f1	# 199
	beq		x31, x0, fle_else.36282	# 199
	fle		x31, f4, f1	# 200
	beq		x31, x0, fle_else.36283	# 200
	fsub	f1, f1, f4	# 200
	lw		x31, 0(x29)	# 200
	jalr	x0, x31, 0	# 200
fle_else.36283:
	fle		x31, f5, f1	# 201
	beq		x31, x0, fle_else.36284	# 201
	fsub	f1, f1, f5	# 201
	sw		x1, 0(x2)	# 201
	addi	x2, x2, -4	# 201
	lw		x31, 0(x29)	# 201
	jalr	x1, x31, 0	# 201
	addi	x2, x2, 4	# 201
	lw		x1, 0(x2)	# 201
	fsub	f1, f0, f1	# 201
	jalr	x0, x1, 0	# 201
fle_else.36284:
	fle		x31, f1, f3	# 202
	beq		x31, x0, fle_else.36285	# 202
	fle		x31, f2, f1	# 203
	beq		x31, x0, fle_else.36286	# 203
	fsub	f1, f3, f1	# 203
	fmul	f1, f1, f1	# 194
	fmul	f2, f1, f1	# 195
	fadd	f3, f0, f16	# 196
	fadd	f4, f0, f26	# 196
	fmul	f4, f4, f1	# 196
	fsub	f3, f3, f4	# 196
	lui		x4, %hi(l.27762)	# 196
	ori		x4, x0, %lo(l.27762)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f2	# 196
	fadd	f3, f3, f4	# 196
	lui		x4, %hi(l.27764)	# 196
	ori		x4, x0, %lo(l.27764)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f1, f4, f1	# 196
	fmul	f1, f1, f2	# 196
	fsub	f1, f3, f1	# 196
	jalr	x0, x1, 0	# 196
fle_else.36286:
	fmul	f2, f1, f1	# 189
	fmul	f3, f1, f2	# 190
	lui		x4, %hi(l.27754)	# 191
	ori		x4, x0, %lo(l.27754)	# 191
	flw		f4, 0(x4)	# 191
	fmul	f4, f4, f3	# 191
	fsub	f1, f1, f4	# 191
	lui		x4, %hi(l.27756)	# 191
	ori		x4, x0, %lo(l.27756)	# 191
	flw		f4, 0(x4)	# 191
	fmul	f4, f4, f2	# 191
	fmul	f4, f4, f3	# 191
	fadd	f1, f1, f4	# 191
	lui		x4, %hi(l.27758)	# 191
	ori		x4, x0, %lo(l.27758)	# 191
	flw		f4, 0(x4)	# 191
	fmul	f4, f4, f2	# 191
	fmul	f2, f4, f2	# 191
	fmul	f2, f2, f3	# 191
	fsub	f1, f1, f2	# 191
	jalr	x0, x1, 0	# 191
fle_else.36285:
	fsub	f1, f5, f1	# 202
	lw		x31, 0(x29)	# 202
	jalr	x0, x31, 0	# 202
fle_else.36282:
	fsub	f1, f0, f1	# 199
	sw		x1, 0(x2)	# 199
	addi	x2, x2, -4	# 199
	lw		x31, 0(x29)	# 199
	jalr	x1, x31, 0	# 199
	addi	x2, x2, 4	# 199
	lw		x1, 0(x2)	# 199
	fsub	f1, f0, f1	# 199
	jalr	x0, x1, 0	# 199
cos.2550.18768:
	lw		x4, 16(x29)	# 207
	flw		f2, 12(x29)	# 207
	flw		f3, 8(x29)	# 207
	flw		f4, 4(x29)	# 207
	fle		x31, f4, f1	# 207
	beq		x31, x0, fle_else.36287	# 207
	fle		x31, f1, f2	# 208
	beq		x31, x0, fle_else.36288	# 208
	fmul	f1, f1, f1	# 194
	fmul	f2, f1, f1	# 195
	fadd	f3, f0, f16	# 196
	fadd	f4, f0, f26	# 196
	fmul	f4, f4, f1	# 196
	fsub	f3, f3, f4	# 196
	lui		x4, %hi(l.27762)	# 196
	ori		x4, x0, %lo(l.27762)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f2	# 196
	fadd	f3, f3, f4	# 196
	lui		x4, %hi(l.27764)	# 196
	ori		x4, x0, %lo(l.27764)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f1, f4, f1	# 196
	fmul	f1, f1, f2	# 196
	fsub	f1, f3, f1	# 196
	jalr	x0, x1, 0	# 196
fle_else.36288:
	fsub	f1, f3, f1	# 208
	addi	x29, x4, 0
	lw		x31, 0(x29)	# 208
	jalr	x0, x31, 0	# 208
fle_else.36287:
	fsub	f1, f0, f1	# 207
	fle		x31, f4, f1	# 207
	beq		x31, x0, fle_else.36289	# 207
	fle		x31, f1, f2	# 208
	beq		x31, x0, fle_else.36290	# 208
	fmul	f1, f1, f1	# 194
	fmul	f2, f1, f1	# 195
	fadd	f3, f0, f16	# 196
	fadd	f4, f0, f26	# 196
	fmul	f4, f4, f1	# 196
	fsub	f3, f3, f4	# 196
	lui		x4, %hi(l.27762)	# 196
	ori		x4, x0, %lo(l.27762)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f2	# 196
	fadd	f3, f3, f4	# 196
	lui		x4, %hi(l.27764)	# 196
	ori		x4, x0, %lo(l.27764)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f1, f4, f1	# 196
	fmul	f1, f1, f2	# 196
	fsub	f1, f3, f1	# 196
	jalr	x0, x1, 0	# 196
fle_else.36290:
	fsub	f1, f3, f1	# 208
	addi	x29, x4, 0
	lw		x31, 0(x29)	# 208
	jalr	x0, x31, 0	# 208
fle_else.36289:
	fsub	f1, f0, f1	# 207
	lw		x31, 0(x29)	# 207
	jalr	x0, x31, 0	# 207
atan.2552.18770:
	flw		f2, 12(x29)	# 212
	flw		f3, 8(x29)	# 212
	flw		f4, 4(x29)	# 212
	fle		x31, f4, f1	# 212
	beq		x31, x0, fle_else.36291	# 212
	lui		x4, %hi(l.27774)	# 213
	ori		x4, x0, %lo(l.27774)	# 213
	flw		f4, 0(x4)	# 213
	fle		x31, f1, f4	# 213
	beq		x31, x0, fle_else.36292	# 213
	lui		x4, %hi(l.27777)	# 214
	ori		x4, x0, %lo(l.27777)	# 214
	flw		f3, 0(x4)	# 214
	fle		x31, f3, f1	# 214
	beq		x31, x0, fle_else.36293	# 214
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
fle_else.36293:
	fmul	f2, f1, f1	# 216
	fmul	f3, f1, f2	# 217
	fmul	f4, f2, f2	# 218
	lui		x4, %hi(l.27779)	# 219
	ori		x4, x0, %lo(l.27779)	# 219
	flw		f5, 0(x4)	# 219
	fmul	f5, f5, f3	# 219
	fsub	f1, f1, f5	# 219
	lui		x4, %hi(l.27781)	# 219
	ori		x4, x0, %lo(l.27781)	# 219
	flw		f5, 0(x4)	# 219
	fmul	f5, f5, f2	# 219
	fmul	f5, f5, f3	# 219
	fadd	f1, f1, f5	# 219
	lui		x4, %hi(l.27783)	# 219
	ori		x4, x0, %lo(l.27783)	# 219
	flw		f5, 0(x4)	# 219
	fmul	f5, f5, f4	# 219
	fmul	f5, f5, f3	# 219
	fsub	f1, f1, f5	# 219
	lui		x4, %hi(l.27785)	# 220
	ori		x4, x0, %lo(l.27785)	# 220
	flw		f5, 0(x4)	# 220
	fmul	f2, f5, f2	# 220
	fmul	f2, f2, f4	# 220
	fmul	f2, f2, f3	# 220
	fadd	f1, f1, f2	# 219
	lui		x4, %hi(l.27787)	# 220
	ori		x4, x0, %lo(l.27787)	# 220
	flw		f2, 0(x4)	# 220
	fmul	f2, f2, f4	# 220
	fmul	f2, f2, f4	# 220
	fmul	f2, f2, f3	# 220
	fsub	f1, f1, f2	# 219
	jalr	x0, x1, 0	# 219
fle_else.36292:
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
fle_else.36291:
	fsub	f1, f0, f1	# 212
	sw		x1, -8(x2)	# 212
	addi	x2, x2, -12	# 212
	lw		x31, 0(x29)	# 212
	jalr	x1, x31, 0	# 212
	addi	x2, x2, 12	# 212
	lw		x1, -8(x2)	# 212
	fsub	f1, f0, f1	# 212
	jalr	x0, x1, 0	# 212
read_object.2689.18772:
	lw		x5, 44(x29)	# 898
	flw		f1, 40(x29)	# 898
	flw		f2, 36(x29)	# 898
	lw		x6, 32(x29)	# 898
	lw		x7, 28(x29)	# 898
	lw		x8, 24(x29)	# 898
	lw		x9, 20(x29)	# 898
	lw		x10, 16(x29)	# 898
	lw		x11, 12(x29)	# 898
	lw		x12, 8(x29)	# 898
	flw		f3, 4(x29)	# 898
	ble		x10, x4, ble.36294	# 898
	sw		x29, 0(x2)	# 816
	sw		x10, -4(x2)	# 816
	sw		x6, -8(x2)	# 816
	sw		x5, -12(x2)	# 816
	fsw		f2, -16(x2)	# 816
	fsw		f1, -20(x2)	# 816
	sw		x4, -24(x2)	# 816
	sw		x7, -28(x2)	# 816
	sw		x12, -32(x2)	# 816
	sw		x11, -36(x2)	# 816
	fsw		f3, -40(x2)	# 816
	sw		x9, -44(x2)	# 816
	sw		x8, -48(x2)	# 816
	sw		x1, -52(x2)	# 816
	addi	x2, x2, -56	# 816
	jal		x1, min_caml_read_int	# 816
	addi	x2, x2, 56	# 816
	lw		x1, -52(x2)	# 816
	lw		x5, -48(x2)	# 817
	beq		x4, x5, beq.36296	# 817
	sw		x4, -52(x2)	# 819
	sw		x1, -56(x2)	# 819
	addi	x2, x2, -60	# 819
	jal		x1, min_caml_read_int	# 819
	addi	x2, x2, 60	# 819
	lw		x1, -56(x2)	# 819
	sw		x4, -56(x2)	# 820
	sw		x1, -60(x2)	# 820
	addi	x2, x2, -64	# 820
	jal		x1, min_caml_read_int	# 820
	addi	x2, x2, 64	# 820
	lw		x1, -60(x2)	# 820
	sw		x4, -60(x2)	# 821
	sw		x1, -64(x2)	# 821
	addi	x2, x2, -68	# 821
	jal		x1, min_caml_read_int	# 821
	addi	x2, x2, 68	# 821
	lw		x1, -64(x2)	# 821
	flw		f1, -40(x2)	# 823
	lw		x5, -44(x2)	# 823
	sw		x4, -64(x2)	# 823
	addi	x4, x5, 0
	sw		x1, -68(x2)	# 823
	addi	x2, x2, -72	# 823
	jal		x1, min_caml_create_float_array	# 823
	addi	x2, x2, 72	# 823
	lw		x1, -68(x2)	# 823
	sw		x4, -68(x2)	# 824
	sw		x1, -72(x2)	# 824
	addi	x2, x2, -76	# 824
	jal		x1, min_caml_read_float	# 824
	addi	x2, x2, 76	# 824
	lw		x1, -72(x2)	# 824
	lw		x4, -36(x2)	# 824
	mul		x5, x30, x4	# 824
	lw		x6, -68(x2)	# 824
	add		x5, x6, x5	# 824
	fsw		f1, 0(x5)	# 824
	sw		x1, -72(x2)	# 825
	addi	x2, x2, -76	# 825
	jal		x1, min_caml_read_float	# 825
	addi	x2, x2, 76	# 825
	lw		x1, -72(x2)	# 825
	lw		x4, -32(x2)	# 825
	mul		x5, x30, x4	# 825
	lw		x6, -68(x2)	# 825
	add		x5, x6, x5	# 825
	fsw		f1, 0(x5)	# 825
	sw		x1, -72(x2)	# 826
	addi	x2, x2, -76	# 826
	jal		x1, min_caml_read_float	# 826
	addi	x2, x2, 76	# 826
	lw		x1, -72(x2)	# 826
	lw		x4, -28(x2)	# 826
	mul		x5, x30, x4	# 826
	lw		x6, -68(x2)	# 826
	add		x5, x6, x5	# 826
	fsw		f1, 0(x5)	# 826
	flw		f1, -40(x2)	# 828
	lw		x5, -44(x2)	# 828
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 828
	addi	x2, x2, -76	# 828
	jal		x1, min_caml_create_float_array	# 828
	addi	x2, x2, 76	# 828
	lw		x1, -72(x2)	# 828
	sw		x4, -72(x2)	# 829
	sw		x1, -76(x2)	# 829
	addi	x2, x2, -80	# 829
	jal		x1, min_caml_read_float	# 829
	addi	x2, x2, 80	# 829
	lw		x1, -76(x2)	# 829
	lw		x4, -36(x2)	# 829
	mul		x5, x30, x4	# 829
	lw		x6, -72(x2)	# 829
	add		x5, x6, x5	# 829
	fsw		f1, 0(x5)	# 829
	sw		x1, -76(x2)	# 830
	addi	x2, x2, -80	# 830
	jal		x1, min_caml_read_float	# 830
	addi	x2, x2, 80	# 830
	lw		x1, -76(x2)	# 830
	lw		x4, -32(x2)	# 830
	mul		x5, x30, x4	# 830
	lw		x6, -72(x2)	# 830
	add		x5, x6, x5	# 830
	fsw		f1, 0(x5)	# 830
	sw		x1, -76(x2)	# 831
	addi	x2, x2, -80	# 831
	jal		x1, min_caml_read_float	# 831
	addi	x2, x2, 80	# 831
	lw		x1, -76(x2)	# 831
	lw		x4, -28(x2)	# 831
	mul		x5, x30, x4	# 831
	lw		x6, -72(x2)	# 831
	add		x5, x6, x5	# 831
	fsw		f1, 0(x5)	# 831
	sw		x1, -76(x2)	# 833
	addi	x2, x2, -80	# 833
	jal		x1, min_caml_read_float	# 833
	addi	x2, x2, 80	# 833
	lw		x1, -76(x2)	# 833
	flw		f2, -40(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.36298	# 122
	addi	x4, x0, 0	# 122
	jal		x0, fle_cont.36297	# 122
fle_else.36298:
	addi	x4, x0, 1	# 122
fle_cont.36297:
	lw		x5, -28(x2)	# 835
	fsw		f1, -76(x2)	# 835
	sw		x4, -80(x2)	# 835
	addi	x4, x5, 0
	fadd	f1, f0, f2
	sw		x1, -84(x2)	# 835
	addi	x2, x2, -88	# 835
	jal		x1, min_caml_create_float_array	# 835
	addi	x2, x2, 88	# 835
	lw		x1, -84(x2)	# 835
	sw		x4, -84(x2)	# 836
	sw		x1, -88(x2)	# 836
	addi	x2, x2, -92	# 836
	jal		x1, min_caml_read_float	# 836
	addi	x2, x2, 92	# 836
	lw		x1, -88(x2)	# 836
	lw		x4, -36(x2)	# 836
	mul		x5, x30, x4	# 836
	lw		x6, -84(x2)	# 836
	add		x5, x6, x5	# 836
	fsw		f1, 0(x5)	# 836
	sw		x1, -88(x2)	# 837
	addi	x2, x2, -92	# 837
	jal		x1, min_caml_read_float	# 837
	addi	x2, x2, 92	# 837
	lw		x1, -88(x2)	# 837
	lw		x4, -32(x2)	# 837
	mul		x5, x30, x4	# 837
	lw		x6, -84(x2)	# 837
	add		x5, x6, x5	# 837
	fsw		f1, 0(x5)	# 837
	flw		f1, -40(x2)	# 839
	lw		x5, -44(x2)	# 839
	addi	x4, x5, 0
	sw		x1, -88(x2)	# 839
	addi	x2, x2, -92	# 839
	jal		x1, min_caml_create_float_array	# 839
	addi	x2, x2, 92	# 839
	lw		x1, -88(x2)	# 839
	sw		x4, -88(x2)	# 840
	sw		x1, -92(x2)	# 840
	addi	x2, x2, -96	# 840
	jal		x1, min_caml_read_float	# 840
	addi	x2, x2, 96	# 840
	lw		x1, -92(x2)	# 840
	lw		x4, -36(x2)	# 840
	mul		x5, x30, x4	# 840
	lw		x6, -88(x2)	# 840
	add		x5, x6, x5	# 840
	fsw		f1, 0(x5)	# 840
	sw		x1, -92(x2)	# 841
	addi	x2, x2, -96	# 841
	jal		x1, min_caml_read_float	# 841
	addi	x2, x2, 96	# 841
	lw		x1, -92(x2)	# 841
	lw		x4, -32(x2)	# 841
	mul		x5, x30, x4	# 841
	lw		x6, -88(x2)	# 841
	add		x5, x6, x5	# 841
	fsw		f1, 0(x5)	# 841
	sw		x1, -92(x2)	# 842
	addi	x2, x2, -96	# 842
	jal		x1, min_caml_read_float	# 842
	addi	x2, x2, 96	# 842
	lw		x1, -92(x2)	# 842
	lw		x4, -28(x2)	# 842
	mul		x5, x30, x4	# 842
	lw		x6, -88(x2)	# 842
	add		x5, x6, x5	# 842
	fsw		f1, 0(x5)	# 842
	flw		f1, -40(x2)	# 844
	lw		x5, -44(x2)	# 844
	addi	x4, x5, 0
	sw		x1, -92(x2)	# 844
	addi	x2, x2, -96	# 844
	jal		x1, min_caml_create_float_array	# 844
	addi	x2, x2, 96	# 844
	lw		x1, -92(x2)	# 844
	lw		x5, -36(x2)	# 845
	lw		x6, -64(x2)	# 845
	sw		x4, -92(x2)	# 845
	beq		x6, x5, beq_cont.36299	# 845
	sw		x1, -96(x2)	# 847
	addi	x2, x2, -100	# 847
	jal		x1, min_caml_read_float	# 847
	addi	x2, x2, 100	# 847
	lw		x1, -96(x2)	# 847
	fadd	f2, f0, f29	# 714
	fmul	f1, f1, f2	# 714
	lw		x4, -36(x2)	# 847
	mul		x5, x30, x4	# 847
	lw		x6, -92(x2)	# 847
	add		x5, x6, x5	# 847
	fsw		f1, 0(x5)	# 847
	fsw		f2, -96(x2)	# 848
	sw		x1, -100(x2)	# 848
	addi	x2, x2, -104	# 848
	jal		x1, min_caml_read_float	# 848
	addi	x2, x2, 104	# 848
	lw		x1, -100(x2)	# 848
	flw		f2, -96(x2)	# 714
	fmul	f1, f1, f2	# 714
	lw		x4, -32(x2)	# 848
	mul		x5, x30, x4	# 848
	lw		x6, -92(x2)	# 848
	add		x5, x6, x5	# 848
	fsw		f1, 0(x5)	# 848
	sw		x1, -100(x2)	# 849
	addi	x2, x2, -104	# 849
	jal		x1, min_caml_read_float	# 849
	addi	x2, x2, 104	# 849
	lw		x1, -100(x2)	# 849
	flw		f2, -96(x2)	# 714
	fmul	f1, f1, f2	# 714
	lw		x4, -28(x2)	# 849
	mul		x5, x30, x4	# 849
	lw		x6, -92(x2)	# 849
	add		x5, x6, x5	# 849
	fsw		f1, 0(x5)	# 849
beq_cont.36299:
	lw		x4, -28(x2)	# 856
	lw		x5, -56(x2)	# 856
	beq		x5, x4, beq.36301	# 856
	lw		x6, -80(x2)	# 856
	jal		x0, beq_cont.36300	# 856
beq.36301:
	addi	x6, x0, 1	# 856
beq_cont.36300:
	addi	x7, x0, 4	# 857
	flw		f1, -40(x2)	# 857
	sw		x6, -100(x2)	# 857
	addi	x4, x7, 0
	sw		x1, -104(x2)	# 857
	addi	x2, x2, -108	# 857
	jal		x1, min_caml_create_float_array	# 857
	addi	x2, x2, 108	# 857
	lw		x1, -104(x2)	# 857
	addi	x5, x3, 0	# 860
	addi	x3, x3, 44	# 860
	sw		x4, 40(x5)	# 860
	lw		x4, -92(x2)	# 860
	sw		x4, 36(x5)	# 860
	lw		x6, -88(x2)	# 860
	sw		x6, 32(x5)	# 860
	lw		x6, -84(x2)	# 860
	sw		x6, 28(x5)	# 860
	lw		x6, -100(x2)	# 860
	sw		x6, 24(x5)	# 860
	lw		x6, -72(x2)	# 860
	sw		x6, 20(x5)	# 860
	lw		x6, -68(x2)	# 860
	sw		x6, 16(x5)	# 860
	lw		x7, -64(x2)	# 860
	sw		x7, 12(x5)	# 860
	lw		x8, -60(x2)	# 860
	sw		x8, 8(x5)	# 860
	lw		x8, -56(x2)	# 860
	sw		x8, 4(x5)	# 860
	lw		x9, -52(x2)	# 860
	sw		x9, 0(x5)	# 860
	lui		x9, 70048	# 868
	ori		x9, x0, 70048	# 868
	lw		x10, -24(x2)	# 868
	mul		x11, x30, x10	# 868
	add		x9, x9, x11	# 868
	sw		x5, 0(x9)	# 868
	lw		x5, -44(x2)	# 870
	beq		x8, x5, beq.36303	# 870
	lw		x9, -28(x2)	# 880
	beq		x8, x9, beq.36305	# 880
	jal		x0, beq_cont.36304	# 880
beq.36305:
	lw		x8, -36(x2)	# 320
	mul		x11, x30, x8	# 320
	add		x11, x6, x11	# 320
	flw		f1, 0(x11)	# 320
	fmul	f1, f1, f1	# 127
	lw		x11, -32(x2)	# 320
	mul		x12, x30, x11	# 320
	add		x12, x6, x12	# 320
	flw		f2, 0(x12)	# 320
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 320
	mul		x12, x30, x9	# 320
	add		x12, x6, x12	# 320
	flw		f2, 0(x12)	# 320
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 320
	fsqrt	f1, f1	# 320
	flw		f2, -40(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.36307	# 120
	fadd	f1, f0, f16	# 321
	jal		x0, feq_cont.36306	# 120
feq_else.36307:
	flw		f3, -76(x2)	# 122
	fle		x31, f2, f3	# 122
	beq		x31, x0, fle_else.36309	# 122
	lui		x12, %hi(l.27841)	# 321
	ori		x12, x0, %lo(l.27841)	# 321
	flw		f3, 0(x12)	# 321
	fdiv	f1, f3, f1	# 321
	jal		x0, fle_cont.36308	# 122
fle_else.36309:
	fadd	f3, f0, f16	# 321
	fdiv	f1, f3, f1	# 321
fle_cont.36308:
feq_cont.36306:
	mul		x12, x30, x8	# 322
	add		x12, x6, x12	# 322
	flw		f3, 0(x12)	# 322
	fmul	f3, f3, f1	# 322
	mul		x12, x30, x8	# 322
	add		x12, x6, x12	# 322
	fsw		f3, 0(x12)	# 322
	mul		x12, x30, x11	# 323
	add		x12, x6, x12	# 323
	flw		f3, 0(x12)	# 323
	fmul	f3, f3, f1	# 323
	mul		x12, x30, x11	# 323
	add		x12, x6, x12	# 323
	fsw		f3, 0(x12)	# 323
	mul		x12, x30, x9	# 324
	add		x12, x6, x12	# 324
	flw		f3, 0(x12)	# 324
	fmul	f1, f3, f1	# 324
	mul		x12, x30, x9	# 324
	add		x12, x6, x12	# 324
	fsw		f1, 0(x12)	# 324
beq_cont.36304:
	jal		x0, beq_cont.36302	# 870
beq.36303:
	lw		x8, -36(x2)	# 873
	mul		x9, x30, x8	# 873
	add		x9, x6, x9	# 873
	flw		f1, 0(x9)	# 873
	flw		f2, -40(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.36311	# 120
	fadd	f1, f0, f2	# 874
	jal		x0, feq_cont.36310	# 120
feq_else.36311:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.36313	# 120
	fadd	f3, f0, f2	# 249
	jal		x0, feq_cont.36312	# 120
feq_else.36313:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.36315	# 121
	lui		x9, %hi(l.27841)	# 251
	ori		x9, x0, %lo(l.27841)	# 251
	flw		f3, 0(x9)	# 251
	jal		x0, fle_cont.36314	# 121
fle_else.36315:
	fadd	f3, f0, f16	# 250
fle_cont.36314:
feq_cont.36312:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 874
feq_cont.36310:
	mul		x9, x30, x8	# 874
	add		x9, x6, x9	# 874
	fsw		f1, 0(x9)	# 874
	lw		x9, -32(x2)	# 875
	mul		x11, x30, x9	# 875
	add		x11, x6, x11	# 875
	flw		f1, 0(x11)	# 875
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.36317	# 120
	fadd	f1, f0, f2	# 876
	jal		x0, feq_cont.36316	# 120
feq_else.36317:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.36319	# 120
	fadd	f3, f0, f2	# 249
	jal		x0, feq_cont.36318	# 120
feq_else.36319:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.36321	# 121
	lui		x11, %hi(l.27841)	# 251
	ori		x11, x0, %lo(l.27841)	# 251
	flw		f3, 0(x11)	# 251
	jal		x0, fle_cont.36320	# 121
fle_else.36321:
	fadd	f3, f0, f16	# 250
fle_cont.36320:
feq_cont.36318:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 876
feq_cont.36316:
	mul		x11, x30, x9	# 876
	add		x11, x6, x11	# 876
	fsw		f1, 0(x11)	# 876
	lw		x11, -28(x2)	# 877
	mul		x12, x30, x11	# 877
	add		x12, x6, x12	# 877
	flw		f1, 0(x12)	# 877
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.36323	# 120
	fadd	f1, f0, f2	# 878
	jal		x0, feq_cont.36322	# 120
feq_else.36323:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.36325	# 120
	fadd	f3, f0, f2	# 249
	jal		x0, feq_cont.36324	# 120
feq_else.36325:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.36327	# 121
	lui		x12, %hi(l.27841)	# 251
	ori		x12, x0, %lo(l.27841)	# 251
	flw		f3, 0(x12)	# 251
	jal		x0, fle_cont.36326	# 121
fle_else.36327:
	fadd	f3, f0, f16	# 250
fle_cont.36326:
feq_cont.36324:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 878
feq_cont.36322:
	mul		x12, x30, x11	# 878
	add		x12, x6, x12	# 878
	fsw		f1, 0(x12)	# 878
beq_cont.36302:
	lw		x8, -36(x2)	# 886
	beq		x7, x8, beq_cont.36328	# 886
	mul		x7, x30, x8	# 775
	add		x7, x4, x7	# 775
	flw		f1, 0(x7)	# 775
	flw		f2, -40(x2)	# 207
	fsw		f1, -104(x2)	# 207
	fle		x31, f2, f1	# 207
	beq		x31, x0, fle_else.36330	# 207
	flw		f3, -20(x2)	# 208
	fle		x31, f1, f3	# 208
	beq		x31, x0, fle_else.36332	# 208
	fmul	f4, f1, f1	# 194
	fmul	f5, f4, f4	# 195
	fadd	f6, f0, f16	# 196
	fadd	f7, f0, f26	# 196
	fmul	f7, f7, f4	# 196
	fsub	f6, f6, f7	# 196
	lui		x7, %hi(l.27762)	# 196
	ori		x7, x0, %lo(l.27762)	# 196
	flw		f7, 0(x7)	# 196
	fmul	f7, f7, f5	# 196
	fadd	f6, f6, f7	# 196
	lui		x7, %hi(l.27764)	# 196
	ori		x7, x0, %lo(l.27764)	# 196
	flw		f7, 0(x7)	# 196
	fmul	f4, f7, f4	# 196
	fmul	f4, f4, f5	# 196
	fsub	f1, f6, f4	# 196
	jal		x0, fle_cont.36331	# 208
fle_else.36332:
	flw		f4, -16(x2)	# 208
	fsub	f5, f4, f1	# 208
	lw		x29, -12(x2)	# 208
	fadd	f1, f0, f5
	sw		x1, -108(x2)	# 208
	addi	x2, x2, -112	# 208
	lw		x31, 0(x29)	# 208
	jalr	x1, x31, 0	# 208
	addi	x2, x2, 112	# 208
	lw		x1, -108(x2)	# 208
fle_cont.36331:
	jal		x0, fle_cont.36329	# 207
fle_else.36330:
	fsub	f3, f0, f1	# 207
	lw		x29, -8(x2)	# 207
	fadd	f1, f0, f3
	sw		x1, -108(x2)	# 207
	addi	x2, x2, -112	# 207
	lw		x31, 0(x29)	# 207
	jalr	x1, x31, 0	# 207
	addi	x2, x2, 112	# 207
	lw		x1, -108(x2)	# 207
fle_cont.36329:
	flw		f2, -104(x2)	# 776
	lw		x29, -12(x2)	# 776
	fsw		f1, -108(x2)	# 776
	fadd	f1, f0, f2
	sw		x1, -112(x2)	# 776
	addi	x2, x2, -116	# 776
	lw		x31, 0(x29)	# 776
	jalr	x1, x31, 0	# 776
	addi	x2, x2, 116	# 776
	lw		x1, -112(x2)	# 776
	lw		x4, -32(x2)	# 777
	mul		x5, x30, x4	# 777
	lw		x6, -92(x2)	# 777
	add		x5, x6, x5	# 777
	flw		f2, 0(x5)	# 777
	flw		f3, -40(x2)	# 207
	fsw		f1, -112(x2)	# 207
	fsw		f2, -116(x2)	# 207
	fle		x31, f3, f2	# 207
	beq		x31, x0, fle_else.36334	# 207
	flw		f4, -20(x2)	# 208
	fle		x31, f2, f4	# 208
	beq		x31, x0, fle_else.36336	# 208
	fmul	f5, f2, f2	# 194
	fmul	f6, f5, f5	# 195
	fadd	f7, f0, f16	# 196
	fadd	f8, f0, f26	# 196
	fmul	f8, f8, f5	# 196
	fsub	f7, f7, f8	# 196
	lui		x5, %hi(l.27762)	# 196
	ori		x5, x0, %lo(l.27762)	# 196
	flw		f8, 0(x5)	# 196
	fmul	f8, f8, f6	# 196
	fadd	f7, f7, f8	# 196
	lui		x5, %hi(l.27764)	# 196
	ori		x5, x0, %lo(l.27764)	# 196
	flw		f8, 0(x5)	# 196
	fmul	f5, f8, f5	# 196
	fmul	f5, f5, f6	# 196
	fsub	f1, f7, f5	# 196
	jal		x0, fle_cont.36335	# 208
fle_else.36336:
	flw		f5, -16(x2)	# 208
	fsub	f6, f5, f2	# 208
	lw		x29, -12(x2)	# 208
	fadd	f1, f0, f6
	sw		x1, -120(x2)	# 208
	addi	x2, x2, -124	# 208
	lw		x31, 0(x29)	# 208
	jalr	x1, x31, 0	# 208
	addi	x2, x2, 124	# 208
	lw		x1, -120(x2)	# 208
fle_cont.36335:
	jal		x0, fle_cont.36333	# 207
fle_else.36334:
	fsub	f4, f0, f2	# 207
	lw		x29, -8(x2)	# 207
	fadd	f1, f0, f4
	sw		x1, -120(x2)	# 207
	addi	x2, x2, -124	# 207
	lw		x31, 0(x29)	# 207
	jalr	x1, x31, 0	# 207
	addi	x2, x2, 124	# 207
	lw		x1, -120(x2)	# 207
fle_cont.36333:
	flw		f2, -116(x2)	# 778
	lw		x29, -12(x2)	# 778
	fsw		f1, -120(x2)	# 778
	fadd	f1, f0, f2
	sw		x1, -124(x2)	# 778
	addi	x2, x2, -128	# 778
	lw		x31, 0(x29)	# 778
	jalr	x1, x31, 0	# 778
	addi	x2, x2, 128	# 778
	lw		x1, -124(x2)	# 778
	lw		x4, -28(x2)	# 779
	mul		x5, x30, x4	# 779
	lw		x6, -92(x2)	# 779
	add		x5, x6, x5	# 779
	flw		f2, 0(x5)	# 779
	flw		f3, -40(x2)	# 207
	fsw		f1, -124(x2)	# 207
	fsw		f2, -128(x2)	# 207
	fle		x31, f3, f2	# 207
	beq		x31, x0, fle_else.36338	# 207
	flw		f4, -20(x2)	# 208
	fle		x31, f2, f4	# 208
	beq		x31, x0, fle_else.36340	# 208
	fmul	f4, f2, f2	# 194
	fmul	f5, f4, f4	# 195
	fadd	f6, f0, f16	# 196
	fadd	f7, f0, f26	# 196
	fmul	f7, f7, f4	# 196
	fsub	f6, f6, f7	# 196
	lui		x5, %hi(l.27762)	# 196
	ori		x5, x0, %lo(l.27762)	# 196
	flw		f7, 0(x5)	# 196
	fmul	f7, f7, f5	# 196
	fadd	f6, f6, f7	# 196
	lui		x5, %hi(l.27764)	# 196
	ori		x5, x0, %lo(l.27764)	# 196
	flw		f7, 0(x5)	# 196
	fmul	f4, f7, f4	# 196
	fmul	f4, f4, f5	# 196
	fsub	f1, f6, f4	# 196
	jal		x0, fle_cont.36339	# 208
fle_else.36340:
	flw		f4, -16(x2)	# 208
	fsub	f4, f4, f2	# 208
	lw		x29, -12(x2)	# 208
	fadd	f1, f0, f4
	sw		x1, -132(x2)	# 208
	addi	x2, x2, -136	# 208
	lw		x31, 0(x29)	# 208
	jalr	x1, x31, 0	# 208
	addi	x2, x2, 136	# 208
	lw		x1, -132(x2)	# 208
fle_cont.36339:
	jal		x0, fle_cont.36337	# 207
fle_else.36338:
	fsub	f4, f0, f2	# 207
	lw		x29, -8(x2)	# 207
	fadd	f1, f0, f4
	sw		x1, -132(x2)	# 207
	addi	x2, x2, -136	# 207
	lw		x31, 0(x29)	# 207
	jalr	x1, x31, 0	# 207
	addi	x2, x2, 136	# 207
	lw		x1, -132(x2)	# 207
fle_cont.36337:
	flw		f2, -128(x2)	# 780
	lw		x29, -12(x2)	# 780
	fsw		f1, -132(x2)	# 780
	fadd	f1, f0, f2
	sw		x1, -136(x2)	# 780
	addi	x2, x2, -140	# 780
	lw		x31, 0(x29)	# 780
	jalr	x1, x31, 0	# 780
	addi	x2, x2, 140	# 780
	lw		x1, -136(x2)	# 780
	flw		f2, -132(x2)	# 782
	flw		f3, -120(x2)	# 782
	fmul	f4, f3, f2	# 782
	flw		f5, -124(x2)	# 783
	flw		f6, -112(x2)	# 783
	fmul	f7, f6, f5	# 783
	fmul	f8, f7, f2	# 783
	flw		f9, -108(x2)	# 783
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
	lw		x4, -36(x2)	# 795
	mul		x5, x30, x4	# 795
	lw		x6, -68(x2)	# 795
	add		x5, x6, x5	# 795
	flw		f6, 0(x5)	# 795
	lw		x5, -32(x2)	# 796
	mul		x7, x30, x5	# 796
	add		x7, x6, x7	# 796
	flw		f9, 0(x7)	# 796
	lw		x7, -28(x2)	# 797
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
	lw		x8, -92(x2)	# 807
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
beq_cont.36328:
	addi	x4, x0, 1	# 890
	jal		x0, beq_cont.36295	# 817
beq.36296:
	addi	x4, x0, 0	# 893
beq_cont.36295:
	lw		x5, -36(x2)	# 899
	beq		x4, x5, beq.36341	# 899
	lw		x4, -32(x2)	# 900
	lw		x6, -24(x2)	# 900
	add		x6, x6, x4	# 900
	lw		x7, -4(x2)	# 898
	ble		x7, x6, ble.36342	# 898
	sw		x6, -136(x2)	# 816
	sw		x1, -140(x2)	# 816
	addi	x2, x2, -144	# 816
	jal		x1, min_caml_read_int	# 816
	addi	x2, x2, 144	# 816
	lw		x1, -140(x2)	# 816
	lw		x5, -48(x2)	# 817
	beq		x4, x5, beq.36344	# 817
	sw		x4, -140(x2)	# 819
	sw		x1, -144(x2)	# 819
	addi	x2, x2, -148	# 819
	jal		x1, min_caml_read_int	# 819
	addi	x2, x2, 148	# 819
	lw		x1, -144(x2)	# 819
	sw		x4, -144(x2)	# 820
	sw		x1, -148(x2)	# 820
	addi	x2, x2, -152	# 820
	jal		x1, min_caml_read_int	# 820
	addi	x2, x2, 152	# 820
	lw		x1, -148(x2)	# 820
	sw		x4, -148(x2)	# 821
	sw		x1, -152(x2)	# 821
	addi	x2, x2, -156	# 821
	jal		x1, min_caml_read_int	# 821
	addi	x2, x2, 156	# 821
	lw		x1, -152(x2)	# 821
	flw		f1, -40(x2)	# 823
	lw		x5, -44(x2)	# 823
	sw		x4, -152(x2)	# 823
	addi	x4, x5, 0
	sw		x1, -156(x2)	# 823
	addi	x2, x2, -160	# 823
	jal		x1, min_caml_create_float_array	# 823
	addi	x2, x2, 160	# 823
	lw		x1, -156(x2)	# 823
	sw		x4, -156(x2)	# 824
	sw		x1, -160(x2)	# 824
	addi	x2, x2, -164	# 824
	jal		x1, min_caml_read_float	# 824
	addi	x2, x2, 164	# 824
	lw		x1, -160(x2)	# 824
	lw		x4, -36(x2)	# 824
	mul		x5, x30, x4	# 824
	lw		x6, -156(x2)	# 824
	add		x5, x6, x5	# 824
	fsw		f1, 0(x5)	# 824
	sw		x1, -160(x2)	# 825
	addi	x2, x2, -164	# 825
	jal		x1, min_caml_read_float	# 825
	addi	x2, x2, 164	# 825
	lw		x1, -160(x2)	# 825
	lw		x4, -32(x2)	# 825
	mul		x5, x30, x4	# 825
	lw		x6, -156(x2)	# 825
	add		x5, x6, x5	# 825
	fsw		f1, 0(x5)	# 825
	sw		x1, -160(x2)	# 826
	addi	x2, x2, -164	# 826
	jal		x1, min_caml_read_float	# 826
	addi	x2, x2, 164	# 826
	lw		x1, -160(x2)	# 826
	lw		x4, -28(x2)	# 826
	mul		x5, x30, x4	# 826
	lw		x6, -156(x2)	# 826
	add		x5, x6, x5	# 826
	fsw		f1, 0(x5)	# 826
	flw		f1, -40(x2)	# 828
	lw		x5, -44(x2)	# 828
	addi	x4, x5, 0
	sw		x1, -160(x2)	# 828
	addi	x2, x2, -164	# 828
	jal		x1, min_caml_create_float_array	# 828
	addi	x2, x2, 164	# 828
	lw		x1, -160(x2)	# 828
	sw		x4, -160(x2)	# 829
	sw		x1, -164(x2)	# 829
	addi	x2, x2, -168	# 829
	jal		x1, min_caml_read_float	# 829
	addi	x2, x2, 168	# 829
	lw		x1, -164(x2)	# 829
	lw		x4, -36(x2)	# 829
	mul		x5, x30, x4	# 829
	lw		x6, -160(x2)	# 829
	add		x5, x6, x5	# 829
	fsw		f1, 0(x5)	# 829
	sw		x1, -164(x2)	# 830
	addi	x2, x2, -168	# 830
	jal		x1, min_caml_read_float	# 830
	addi	x2, x2, 168	# 830
	lw		x1, -164(x2)	# 830
	lw		x4, -32(x2)	# 830
	mul		x5, x30, x4	# 830
	lw		x6, -160(x2)	# 830
	add		x5, x6, x5	# 830
	fsw		f1, 0(x5)	# 830
	sw		x1, -164(x2)	# 831
	addi	x2, x2, -168	# 831
	jal		x1, min_caml_read_float	# 831
	addi	x2, x2, 168	# 831
	lw		x1, -164(x2)	# 831
	lw		x4, -28(x2)	# 831
	mul		x5, x30, x4	# 831
	lw		x6, -160(x2)	# 831
	add		x5, x6, x5	# 831
	fsw		f1, 0(x5)	# 831
	sw		x1, -164(x2)	# 833
	addi	x2, x2, -168	# 833
	jal		x1, min_caml_read_float	# 833
	addi	x2, x2, 168	# 833
	lw		x1, -164(x2)	# 833
	flw		f2, -40(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.36346	# 122
	addi	x4, x0, 0	# 122
	jal		x0, fle_cont.36345	# 122
fle_else.36346:
	addi	x4, x0, 1	# 122
fle_cont.36345:
	lw		x5, -28(x2)	# 835
	fsw		f1, -164(x2)	# 835
	sw		x4, -168(x2)	# 835
	addi	x4, x5, 0
	fadd	f1, f0, f2
	sw		x1, -172(x2)	# 835
	addi	x2, x2, -176	# 835
	jal		x1, min_caml_create_float_array	# 835
	addi	x2, x2, 176	# 835
	lw		x1, -172(x2)	# 835
	sw		x4, -172(x2)	# 836
	sw		x1, -176(x2)	# 836
	addi	x2, x2, -180	# 836
	jal		x1, min_caml_read_float	# 836
	addi	x2, x2, 180	# 836
	lw		x1, -176(x2)	# 836
	lw		x4, -36(x2)	# 836
	mul		x5, x30, x4	# 836
	lw		x6, -172(x2)	# 836
	add		x5, x6, x5	# 836
	fsw		f1, 0(x5)	# 836
	sw		x1, -176(x2)	# 837
	addi	x2, x2, -180	# 837
	jal		x1, min_caml_read_float	# 837
	addi	x2, x2, 180	# 837
	lw		x1, -176(x2)	# 837
	lw		x4, -32(x2)	# 837
	mul		x5, x30, x4	# 837
	lw		x6, -172(x2)	# 837
	add		x5, x6, x5	# 837
	fsw		f1, 0(x5)	# 837
	flw		f1, -40(x2)	# 839
	lw		x5, -44(x2)	# 839
	addi	x4, x5, 0
	sw		x1, -176(x2)	# 839
	addi	x2, x2, -180	# 839
	jal		x1, min_caml_create_float_array	# 839
	addi	x2, x2, 180	# 839
	lw		x1, -176(x2)	# 839
	sw		x4, -176(x2)	# 840
	sw		x1, -180(x2)	# 840
	addi	x2, x2, -184	# 840
	jal		x1, min_caml_read_float	# 840
	addi	x2, x2, 184	# 840
	lw		x1, -180(x2)	# 840
	lw		x4, -36(x2)	# 840
	mul		x5, x30, x4	# 840
	lw		x6, -176(x2)	# 840
	add		x5, x6, x5	# 840
	fsw		f1, 0(x5)	# 840
	sw		x1, -180(x2)	# 841
	addi	x2, x2, -184	# 841
	jal		x1, min_caml_read_float	# 841
	addi	x2, x2, 184	# 841
	lw		x1, -180(x2)	# 841
	lw		x4, -32(x2)	# 841
	mul		x5, x30, x4	# 841
	lw		x6, -176(x2)	# 841
	add		x5, x6, x5	# 841
	fsw		f1, 0(x5)	# 841
	sw		x1, -180(x2)	# 842
	addi	x2, x2, -184	# 842
	jal		x1, min_caml_read_float	# 842
	addi	x2, x2, 184	# 842
	lw		x1, -180(x2)	# 842
	lw		x4, -28(x2)	# 842
	mul		x5, x30, x4	# 842
	lw		x6, -176(x2)	# 842
	add		x5, x6, x5	# 842
	fsw		f1, 0(x5)	# 842
	flw		f1, -40(x2)	# 844
	lw		x5, -44(x2)	# 844
	addi	x4, x5, 0
	sw		x1, -180(x2)	# 844
	addi	x2, x2, -184	# 844
	jal		x1, min_caml_create_float_array	# 844
	addi	x2, x2, 184	# 844
	lw		x1, -180(x2)	# 844
	lw		x5, -36(x2)	# 845
	lw		x6, -152(x2)	# 845
	sw		x4, -180(x2)	# 845
	beq		x6, x5, beq_cont.36347	# 845
	sw		x1, -184(x2)	# 847
	addi	x2, x2, -188	# 847
	jal		x1, min_caml_read_float	# 847
	addi	x2, x2, 188	# 847
	lw		x1, -184(x2)	# 847
	fadd	f2, f0, f29	# 714
	fmul	f1, f1, f2	# 714
	lw		x4, -36(x2)	# 847
	mul		x5, x30, x4	# 847
	lw		x6, -180(x2)	# 847
	add		x5, x6, x5	# 847
	fsw		f1, 0(x5)	# 847
	fsw		f2, -184(x2)	# 848
	sw		x1, -188(x2)	# 848
	addi	x2, x2, -192	# 848
	jal		x1, min_caml_read_float	# 848
	addi	x2, x2, 192	# 848
	lw		x1, -188(x2)	# 848
	flw		f2, -184(x2)	# 714
	fmul	f1, f1, f2	# 714
	lw		x4, -32(x2)	# 848
	mul		x5, x30, x4	# 848
	lw		x6, -180(x2)	# 848
	add		x5, x6, x5	# 848
	fsw		f1, 0(x5)	# 848
	sw		x1, -188(x2)	# 849
	addi	x2, x2, -192	# 849
	jal		x1, min_caml_read_float	# 849
	addi	x2, x2, 192	# 849
	lw		x1, -188(x2)	# 849
	flw		f2, -184(x2)	# 714
	fmul	f1, f1, f2	# 714
	lw		x4, -28(x2)	# 849
	mul		x5, x30, x4	# 849
	lw		x6, -180(x2)	# 849
	add		x5, x6, x5	# 849
	fsw		f1, 0(x5)	# 849
beq_cont.36347:
	lw		x4, -28(x2)	# 856
	lw		x5, -144(x2)	# 856
	beq		x5, x4, beq.36349	# 856
	lw		x6, -168(x2)	# 856
	jal		x0, beq_cont.36348	# 856
beq.36349:
	addi	x6, x0, 1	# 856
beq_cont.36348:
	addi	x7, x0, 4	# 857
	flw		f1, -40(x2)	# 857
	sw		x6, -188(x2)	# 857
	addi	x4, x7, 0
	sw		x1, -192(x2)	# 857
	addi	x2, x2, -196	# 857
	jal		x1, min_caml_create_float_array	# 857
	addi	x2, x2, 196	# 857
	lw		x1, -192(x2)	# 857
	addi	x5, x3, 0	# 860
	addi	x3, x3, 44	# 860
	sw		x4, 40(x5)	# 860
	lw		x4, -180(x2)	# 860
	sw		x4, 36(x5)	# 860
	lw		x6, -176(x2)	# 860
	sw		x6, 32(x5)	# 860
	lw		x6, -172(x2)	# 860
	sw		x6, 28(x5)	# 860
	lw		x6, -188(x2)	# 860
	sw		x6, 24(x5)	# 860
	lw		x6, -160(x2)	# 860
	sw		x6, 20(x5)	# 860
	lw		x6, -156(x2)	# 860
	sw		x6, 16(x5)	# 860
	lw		x7, -152(x2)	# 860
	sw		x7, 12(x5)	# 860
	lw		x8, -148(x2)	# 860
	sw		x8, 8(x5)	# 860
	lw		x8, -144(x2)	# 860
	sw		x8, 4(x5)	# 860
	lw		x9, -140(x2)	# 860
	sw		x9, 0(x5)	# 860
	lui		x9, 70048	# 868
	ori		x9, x0, 70048	# 868
	lw		x10, -136(x2)	# 868
	mul		x11, x30, x10	# 868
	add		x9, x9, x11	# 868
	sw		x5, 0(x9)	# 868
	lw		x5, -44(x2)	# 870
	beq		x8, x5, beq.36351	# 870
	lw		x5, -28(x2)	# 880
	beq		x8, x5, beq.36353	# 880
	jal		x0, beq_cont.36352	# 880
beq.36353:
	lw		x8, -36(x2)	# 320
	mul		x9, x30, x8	# 320
	add		x9, x6, x9	# 320
	flw		f1, 0(x9)	# 320
	fmul	f1, f1, f1	# 127
	lw		x9, -32(x2)	# 320
	mul		x11, x30, x9	# 320
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
	flw		f2, -40(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.36355	# 120
	fadd	f1, f0, f16	# 321
	jal		x0, feq_cont.36354	# 120
feq_else.36355:
	flw		f3, -164(x2)	# 122
	fle		x31, f2, f3	# 122
	beq		x31, x0, fle_else.36357	# 122
	lui		x11, %hi(l.27841)	# 321
	ori		x11, x0, %lo(l.27841)	# 321
	flw		f2, 0(x11)	# 321
	fdiv	f1, f2, f1	# 321
	jal		x0, fle_cont.36356	# 122
fle_else.36357:
	fadd	f2, f0, f16	# 321
	fdiv	f1, f2, f1	# 321
fle_cont.36356:
feq_cont.36354:
	mul		x11, x30, x8	# 322
	add		x11, x6, x11	# 322
	flw		f2, 0(x11)	# 322
	fmul	f2, f2, f1	# 322
	mul		x11, x30, x8	# 322
	add		x11, x6, x11	# 322
	fsw		f2, 0(x11)	# 322
	mul		x11, x30, x9	# 323
	add		x11, x6, x11	# 323
	flw		f2, 0(x11)	# 323
	fmul	f2, f2, f1	# 323
	mul		x11, x30, x9	# 323
	add		x11, x6, x11	# 323
	fsw		f2, 0(x11)	# 323
	mul		x11, x30, x5	# 324
	add		x11, x6, x11	# 324
	flw		f2, 0(x11)	# 324
	fmul	f1, f2, f1	# 324
	mul		x11, x30, x5	# 324
	add		x11, x6, x11	# 324
	fsw		f1, 0(x11)	# 324
beq_cont.36352:
	jal		x0, beq_cont.36350	# 870
beq.36351:
	lw		x5, -36(x2)	# 873
	mul		x8, x30, x5	# 873
	add		x8, x6, x8	# 873
	flw		f1, 0(x8)	# 873
	flw		f2, -40(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.36359	# 120
	fadd	f1, f0, f2	# 874
	jal		x0, feq_cont.36358	# 120
feq_else.36359:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.36361	# 120
	fadd	f3, f0, f2	# 249
	jal		x0, feq_cont.36360	# 120
feq_else.36361:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.36363	# 121
	lui		x8, %hi(l.27841)	# 251
	ori		x8, x0, %lo(l.27841)	# 251
	flw		f3, 0(x8)	# 251
	jal		x0, fle_cont.36362	# 121
fle_else.36363:
	fadd	f3, f0, f16	# 250
fle_cont.36362:
feq_cont.36360:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 874
feq_cont.36358:
	mul		x8, x30, x5	# 874
	add		x8, x6, x8	# 874
	fsw		f1, 0(x8)	# 874
	lw		x8, -32(x2)	# 875
	mul		x9, x30, x8	# 875
	add		x9, x6, x9	# 875
	flw		f1, 0(x9)	# 875
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.36365	# 120
	fadd	f1, f0, f2	# 876
	jal		x0, feq_cont.36364	# 120
feq_else.36365:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.36367	# 120
	fadd	f3, f0, f2	# 249
	jal		x0, feq_cont.36366	# 120
feq_else.36367:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.36369	# 121
	lui		x9, %hi(l.27841)	# 251
	ori		x9, x0, %lo(l.27841)	# 251
	flw		f3, 0(x9)	# 251
	jal		x0, fle_cont.36368	# 121
fle_else.36369:
	fadd	f3, f0, f16	# 250
fle_cont.36368:
feq_cont.36366:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 876
feq_cont.36364:
	mul		x9, x30, x8	# 876
	add		x9, x6, x9	# 876
	fsw		f1, 0(x9)	# 876
	lw		x9, -28(x2)	# 877
	mul		x11, x30, x9	# 877
	add		x11, x6, x11	# 877
	flw		f1, 0(x11)	# 877
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.36371	# 120
	fadd	f1, f0, f2	# 878
	jal		x0, feq_cont.36370	# 120
feq_else.36371:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.36373	# 120
	jal		x0, feq_cont.36372	# 120
feq_else.36373:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.36375	# 121
	lui		x11, %hi(l.27841)	# 251
	ori		x11, x0, %lo(l.27841)	# 251
	flw		f2, 0(x11)	# 251
	jal		x0, fle_cont.36374	# 121
fle_else.36375:
	fadd	f2, f0, f16	# 250
fle_cont.36374:
feq_cont.36372:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f2, f1	# 878
feq_cont.36370:
	mul		x11, x30, x9	# 878
	add		x11, x6, x11	# 878
	fsw		f1, 0(x11)	# 878
beq_cont.36350:
	lw		x5, -36(x2)	# 886
	beq		x7, x5, beq_cont.36376	# 886
	mul		x7, x30, x5	# 775
	add		x7, x4, x7	# 775
	flw		f1, 0(x7)	# 775
	lw		x29, -8(x2)	# 775
	fsw		f1, -192(x2)	# 775
	sw		x1, -196(x2)	# 775
	addi	x2, x2, -200	# 775
	lw		x31, 0(x29)	# 775
	jalr	x1, x31, 0	# 775
	addi	x2, x2, 200	# 775
	lw		x1, -196(x2)	# 775
	flw		f2, -192(x2)	# 776
	lw		x29, -12(x2)	# 776
	fsw		f1, -196(x2)	# 776
	fadd	f1, f0, f2
	sw		x1, -200(x2)	# 776
	addi	x2, x2, -204	# 776
	lw		x31, 0(x29)	# 776
	jalr	x1, x31, 0	# 776
	addi	x2, x2, 204	# 776
	lw		x1, -200(x2)	# 776
	lw		x4, -32(x2)	# 777
	mul		x5, x30, x4	# 777
	lw		x6, -180(x2)	# 777
	add		x5, x6, x5	# 777
	flw		f2, 0(x5)	# 777
	lw		x29, -8(x2)	# 777
	fsw		f1, -200(x2)	# 777
	fsw		f2, -204(x2)	# 777
	fadd	f1, f0, f2
	sw		x1, -208(x2)	# 777
	addi	x2, x2, -212	# 777
	lw		x31, 0(x29)	# 777
	jalr	x1, x31, 0	# 777
	addi	x2, x2, 212	# 777
	lw		x1, -208(x2)	# 777
	flw		f2, -204(x2)	# 778
	lw		x29, -12(x2)	# 778
	fsw		f1, -208(x2)	# 778
	fadd	f1, f0, f2
	sw		x1, -212(x2)	# 778
	addi	x2, x2, -216	# 778
	lw		x31, 0(x29)	# 778
	jalr	x1, x31, 0	# 778
	addi	x2, x2, 216	# 778
	lw		x1, -212(x2)	# 778
	lw		x4, -28(x2)	# 779
	mul		x5, x30, x4	# 779
	lw		x6, -180(x2)	# 779
	add		x5, x6, x5	# 779
	flw		f2, 0(x5)	# 779
	lw		x29, -8(x2)	# 779
	fsw		f1, -212(x2)	# 779
	fsw		f2, -216(x2)	# 779
	fadd	f1, f0, f2
	sw		x1, -220(x2)	# 779
	addi	x2, x2, -224	# 779
	lw		x31, 0(x29)	# 779
	jalr	x1, x31, 0	# 779
	addi	x2, x2, 224	# 779
	lw		x1, -220(x2)	# 779
	flw		f2, -216(x2)	# 780
	lw		x29, -12(x2)	# 780
	fsw		f1, -220(x2)	# 780
	fadd	f1, f0, f2
	sw		x1, -224(x2)	# 780
	addi	x2, x2, -228	# 780
	lw		x31, 0(x29)	# 780
	jalr	x1, x31, 0	# 780
	addi	x2, x2, 228	# 780
	lw		x1, -224(x2)	# 780
	flw		f2, -220(x2)	# 782
	flw		f3, -208(x2)	# 782
	fmul	f4, f3, f2	# 782
	flw		f5, -212(x2)	# 783
	flw		f6, -200(x2)	# 783
	fmul	f7, f6, f5	# 783
	fmul	f8, f7, f2	# 783
	flw		f9, -196(x2)	# 783
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
	lw		x4, -36(x2)	# 795
	mul		x5, x30, x4	# 795
	lw		x6, -156(x2)	# 795
	add		x5, x6, x5	# 795
	flw		f6, 0(x5)	# 795
	lw		x5, -32(x2)	# 796
	mul		x7, x30, x5	# 796
	add		x7, x6, x7	# 796
	flw		f9, 0(x7)	# 796
	lw		x7, -28(x2)	# 797
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
	lw		x8, -180(x2)	# 807
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
beq_cont.36376:
	addi	x4, x0, 1	# 890
	jal		x0, beq_cont.36343	# 817
beq.36344:
	addi	x4, x0, 0	# 893
beq_cont.36343:
	lw		x5, -36(x2)	# 899
	beq		x4, x5, beq.36377	# 899
	lw		x4, -32(x2)	# 900
	lw		x5, -136(x2)	# 900
	add		x4, x5, x4	# 900
	lw		x29, 0(x2)	# 900
	lw		x31, 0(x29)	# 900
	jalr	x0, x31, 0	# 900
beq.36377:
	lui		x4, 70000	# 902
	ori		x4, x0, 70000	# 902
	mul		x5, x30, x5	# 902
	add		x4, x4, x5	# 902
	lw		x5, -136(x2)	# 902
	sw		x5, 0(x4)	# 902
	jalr	x0, x1, 0	# 902
ble.36342:
	jalr	x0, x1, 0	# 903
beq.36341:
	lui		x4, 70000	# 902
	ori		x4, x0, 70000	# 902
	mul		x5, x30, x5	# 902
	add		x4, x4, x5	# 902
	lw		x5, -24(x2)	# 902
	sw		x5, 0(x4)	# 902
	jalr	x0, x1, 0	# 902
ble.36294:
	jalr	x0, x1, 0	# 903
read_net_item.2693.18774:
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
	beq		x4, x5, beq.36382	# 915
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
beq.36382:
	lw		x4, -4(x2)	# 915
	lw		x6, -8(x2)	# 915
	add		x4, x6, x4	# 915
	jal		x0, min_caml_create_array	# 915
read_or_network.2695.18776:
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
	beq		x4, x6, beq.36383	# 923
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
beq.36383:
	lw		x4, -4(x2)	# 924
	lw		x6, -8(x2)	# 924
	add		x4, x6, x4	# 924
	jal		x0, min_caml_create_array	# 924
read_and_network.2697.18778:
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
	beq		x5, x6, beq.36384	# 932
	lui		x5, 70332	# 934
	ori		x5, x0, 70332	# 934
	lw		x6, -8(x2)	# 934
	mul		x7, x30, x6	# 934
	add		x5, x5, x7	# 934
	sw		x4, 0(x5)	# 934
	lw		x4, -4(x2)	# 935
	add		x4, x6, x4	# 935
	lw		x29, 0(x2)	# 935
	lw		x31, 0(x29)	# 935
	jalr	x0, x31, 0	# 935
beq.36384:
	jalr	x0, x1, 0	# 932
iter_setup_dirvec_constants.2794.18780:
	lw		x6, 24(x29)	# 1307
	lw		x7, 20(x29)	# 1307
	lw		x8, 16(x29)	# 1307
	lw		x9, 12(x29)	# 1307
	lw		x10, 8(x29)	# 1307
	flw		f1, 4(x29)	# 1307
	ble		x9, x5, ble.36386	# 1307
	jalr	x0, x1, 0	# 1320
ble.36386:
	lui		x11, 70048	# 1308
	ori		x11, x0, 70048	# 1308
	mul		x12, x30, x5	# 1308
	add		x11, x11, x12	# 1308
	lw		x11, 0(x11)	# 1308
	lw		x12, 4(x4)	# 682
	lw		x13, 0(x4)	# 676
	lw		x14, 4(x11)	# 390
	sw		x4, 0(x2)	# 1312
	sw		x29, -4(x2)	# 1312
	sw		x10, -8(x2)	# 1312
	beq		x14, x10, beq.36389	# 1312
	beq		x14, x7, beq.36391	# 1314
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
	beq		x10, x5, beq_cont.36392	# 1006
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
beq_cont.36392:
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
	beq		x10, x5, beq.36394	# 1289
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
	jal		x0, beq_cont.36393	# 1289
beq.36394:
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
beq_cont.36393:
	flw		f1, -20(x2)	# 120
	feq		x31, f4, f1	# 120
	beq		x31, x0, feq_else.36396	# 120
	jal		x0, feq_cont.36395	# 120
feq_else.36396:
	addi	x5, x0, 4	# 1299
	fadd	f1, f0, f16	# 1299
	fdiv	f1, f1, f4	# 1299
	mul		x5, x30, x5	# 1299
	add		x5, x4, x5	# 1299
	fsw		f1, 0(x5)	# 1299
feq_cont.36395:
	lw		x5, -16(x2)	# 1317
	mul		x7, x30, x5	# 1317
	lw		x8, -12(x2)	# 1317
	add		x7, x8, x7	# 1317
	sw		x4, 0(x7)	# 1317
	jal		x0, beq_cont.36390	# 1314
beq.36391:
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
	beq		x31, x0, fle_else.36398	# 121
	mul		x5, x30, x5	# 1271
	add		x5, x4, x5	# 1271
	fsw		f3, 0(x5)	# 1271
	jal		x0, fle_cont.36397	# 121
fle_else.36398:
	lui		x6, %hi(l.27841)	# 1265
	ori		x6, x0, %lo(l.27841)	# 1265
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
fle_cont.36397:
	lw		x5, -16(x2)	# 1315
	mul		x6, x30, x5	# 1315
	lw		x7, -12(x2)	# 1315
	add		x6, x7, x6	# 1315
	sw		x4, 0(x6)	# 1315
beq_cont.36390:
	jal		x0, beq_cont.36388	# 1312
beq.36389:
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
	beq		x31, x0, feq_else.36400	# 120
	lw		x6, -8(x2)	# 1235
	mul		x8, x30, x6	# 1235
	add		x8, x4, x8	# 1235
	fsw		f2, 0(x8)	# 1235
	jal		x0, feq_cont.36399	# 120
feq_else.36400:
	lw		x6, -28(x2)	# 410
	lw		x8, 24(x6)	# 410
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.36402	# 122
	addi	x9, x0, 0	# 122
	jal		x0, fle_cont.36401	# 122
fle_else.36402:
	addi	x9, x0, 1	# 122
fle_cont.36401:
	beq		x8, x5, beq.36404	# 241
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.36406	# 122
	addi	x8, x0, 1	# 241
	jal		x0, fle_cont.36405	# 122
fle_else.36406:
	addi	x8, x0, 0	# 241
fle_cont.36405:
	jal		x0, beq_cont.36403	# 241
beq.36404:
	addi	x8, x9, 0	# 241
beq_cont.36403:
	lw		x9, 16(x6)	# 428
	mul		x10, x30, x5	# 433
	add		x9, x9, x10	# 433
	flw		f1, 0(x9)	# 433
	beq		x8, x5, beq.36408	# 256
	jal		x0, beq_cont.36407	# 256
beq.36408:
	fsub	f1, f0, f1	# 123
beq_cont.36407:
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
feq_cont.36399:
	lw		x6, -8(x2)	# 1242
	mul		x8, x30, x6	# 1242
	add		x8, x7, x8	# 1242
	flw		f1, 0(x8)	# 1242
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.36410	# 120
	lw		x8, -24(x2)	# 1243
	mul		x8, x30, x8	# 1243
	add		x8, x4, x8	# 1243
	fsw		f2, 0(x8)	# 1243
	jal		x0, feq_cont.36409	# 120
feq_else.36410:
	lw		x8, -28(x2)	# 410
	lw		x9, 24(x8)	# 410
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.36412	# 122
	addi	x10, x0, 0	# 122
	jal		x0, fle_cont.36411	# 122
fle_else.36412:
	addi	x10, x0, 1	# 122
fle_cont.36411:
	beq		x9, x5, beq.36414	# 241
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.36416	# 122
	addi	x9, x0, 1	# 241
	jal		x0, fle_cont.36415	# 122
fle_else.36416:
	addi	x9, x0, 0	# 241
fle_cont.36415:
	jal		x0, beq_cont.36413	# 241
beq.36414:
	addi	x9, x10, 0	# 241
beq_cont.36413:
	lw		x10, 16(x8)	# 438
	mul		x11, x30, x6	# 443
	add		x10, x10, x11	# 443
	flw		f1, 0(x10)	# 443
	beq		x9, x5, beq.36418	# 256
	jal		x0, beq_cont.36417	# 256
beq.36418:
	fsub	f1, f0, f1	# 123
beq_cont.36417:
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
feq_cont.36409:
	lw		x8, -32(x2)	# 1248
	mul		x9, x30, x8	# 1248
	add		x9, x7, x9	# 1248
	flw		f1, 0(x9)	# 1248
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.36420	# 120
	lw		x5, -44(x2)	# 1249
	mul		x5, x30, x5	# 1249
	add		x5, x4, x5	# 1249
	fsw		f2, 0(x5)	# 1249
	jal		x0, feq_cont.36419	# 120
feq_else.36420:
	addi	x9, x0, 4	# 1251
	lw		x10, -28(x2)	# 410
	lw		x11, 24(x10)	# 410
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.36422	# 122
	addi	x12, x0, 0	# 122
	jal		x0, fle_cont.36421	# 122
fle_else.36422:
	addi	x12, x0, 1	# 122
fle_cont.36421:
	beq		x11, x5, beq.36424	# 241
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.36426	# 122
	addi	x11, x0, 1	# 241
	jal		x0, fle_cont.36425	# 122
fle_else.36426:
	addi	x11, x0, 0	# 241
fle_cont.36425:
	jal		x0, beq_cont.36423	# 241
beq.36424:
	addi	x11, x12, 0	# 241
beq_cont.36423:
	lw		x10, 16(x10)	# 448
	mul		x12, x30, x8	# 453
	add		x10, x10, x12	# 453
	flw		f1, 0(x10)	# 453
	beq		x11, x5, beq.36428	# 256
	jal		x0, beq_cont.36427	# 256
beq.36428:
	fsub	f1, f0, f1	# 123
beq_cont.36427:
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
feq_cont.36419:
	lw		x5, -16(x2)	# 1313
	mul		x7, x30, x5	# 1313
	lw		x8, -12(x2)	# 1313
	add		x7, x8, x7	# 1313
	sw		x4, 0(x7)	# 1313
beq_cont.36388:
	lw		x4, -8(x2)	# 1319
	sub		x5, x5, x4	# 1319
	lw		x4, 0(x2)	# 1319
	lw		x29, -4(x2)	# 1319
	lw		x31, 0(x29)	# 1319
	jalr	x0, x31, 0	# 1319
setup_startp_constants.2799.18783:
	lw		x6, 16(x29)	# 1332
	lw		x7, 12(x29)	# 1332
	lw		x8, 8(x29)	# 1332
	lw		x9, 4(x29)	# 1332
	ble		x8, x5, ble.36429	# 1332
	jalr	x0, x1, 0	# 1347
ble.36429:
	lui		x10, 70048	# 1333
	ori		x10, x0, 70048	# 1333
	mul		x11, x30, x5	# 1333
	add		x10, x10, x11	# 1333
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
	beq		x12, x6, beq.36432	# 1339
	ble		x12, x6, ble_cont.36433	# 1342
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
	beq		x13, x8, beq.36435	# 1006
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
	jal		x0, beq_cont.36434	# 1006
beq.36435:
	fadd	f1, f0, f4	# 1007
beq_cont.36434:
	beq		x12, x7, beq.36437	# 1344
	jal		x0, beq_cont.36436	# 1344
beq.36437:
	fadd	f2, f0, f16	# 1344
	fsub	f1, f1, f2	# 1344
beq_cont.36436:
	mul		x6, x30, x7	# 1344
	add		x6, x11, x6	# 1344
	fsw		f1, 0(x6)	# 1344
ble_cont.36433:
	jal		x0, beq_cont.36431	# 1339
beq.36432:
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
beq_cont.36431:
	sub		x5, x5, x9	# 1346
	lw		x31, 0(x29)	# 1346
	jalr	x0, x31, 0	# 1346
check_all_inside.2824.18786:
	lw		x6, 24(x29)	# 1401
	lw		x7, 20(x29)	# 1401
	lw		x8, 16(x29)	# 1401
	lw		x9, 12(x29)	# 1401
	lw		x10, 8(x29)	# 1401
	flw		f4, 4(x29)	# 1401
	mul		x11, x30, x4	# 1401
	add		x11, x5, x11	# 1401
	lw		x11, 0(x11)	# 1401
	beq		x11, x7, beq.36438	# 1402
	lui		x7, 70048	# 1405
	ori		x7, x0, 70048	# 1405
	mul		x11, x30, x11	# 1405
	add		x7, x7, x11	# 1405
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
	beq		x11, x10, beq.36440	# 1391
	beq		x11, x6, beq.36442	# 1393
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
	beq		x11, x9, beq.36444	# 1006
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
	jal		x0, beq_cont.36443	# 1006
beq.36444:
	fadd	f5, f0, f8	# 1007
beq_cont.36443:
	lw		x6, 4(x7)	# 390
	beq		x6, x8, beq.36446	# 1381
	jal		x0, beq_cont.36445	# 1381
beq.36446:
	fadd	f6, f0, f16	# 1381
	fsub	f5, f5, f6	# 1381
beq_cont.36445:
	lw		x6, 24(x7)	# 410
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.36448	# 122
	addi	x7, x0, 0	# 122
	jal		x0, fle_cont.36447	# 122
fle_else.36448:
	addi	x7, x0, 1	# 122
fle_cont.36447:
	beq		x6, x9, beq.36450	# 241
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.36452	# 122
	addi	x6, x0, 1	# 241
	jal		x0, fle_cont.36451	# 122
fle_else.36452:
	addi	x6, x0, 0	# 241
fle_cont.36451:
	jal		x0, beq_cont.36449	# 241
beq.36450:
	addi	x6, x7, 0	# 241
beq_cont.36449:
	beq		x6, x9, beq.36454	# 1382
	addi	x6, x0, 0	# 1382
	jal		x0, beq_cont.36453	# 1382
beq.36454:
	addi	x6, x0, 1	# 1382
beq_cont.36453:
	jal		x0, beq_cont.36441	# 1393
beq.36442:
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
	beq		x31, x0, fle_else.36456	# 122
	addi	x7, x0, 0	# 122
	jal		x0, fle_cont.36455	# 122
fle_else.36456:
	addi	x7, x0, 1	# 122
fle_cont.36455:
	beq		x6, x9, beq.36458	# 241
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.36460	# 122
	addi	x6, x0, 1	# 241
	jal		x0, fle_cont.36459	# 122
fle_else.36460:
	addi	x6, x0, 0	# 241
fle_cont.36459:
	jal		x0, beq_cont.36457	# 241
beq.36458:
	addi	x6, x7, 0	# 241
beq_cont.36457:
	beq		x6, x9, beq.36462	# 1375
	addi	x6, x0, 0	# 1375
	jal		x0, beq_cont.36461	# 1375
beq.36462:
	addi	x6, x0, 1	# 1375
beq_cont.36461:
beq_cont.36441:
	jal		x0, beq_cont.36439	# 1391
beq.36440:
	fle		x31, f5, f4	# 124
	beq		x31, x0, fle_cont.36463	# 124
	fsub	f5, f0, f5	# 124
fle_cont.36463:
	lw		x8, 16(x7)	# 428
	mul		x11, x30, x9	# 433
	add		x8, x8, x11	# 433
	flw		f8, 0(x8)	# 433
	fle		x31, f8, f5	# 125
	beq		x31, x0, fle_else.36465	# 125
	addi	x6, x0, 0	# 1368
	jal		x0, fle_cont.36464	# 125
fle_else.36465:
	fle		x31, f6, f4	# 124
	beq		x31, x0, fle_else.36467	# 124
	fsub	f5, f0, f6	# 124
	jal		x0, fle_cont.36466	# 124
fle_else.36467:
	fadd	f5, f0, f6	# 124
fle_cont.36466:
	lw		x8, 16(x7)	# 438
	mul		x11, x30, x10	# 443
	add		x8, x8, x11	# 443
	flw		f6, 0(x8)	# 443
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.36469	# 125
	addi	x6, x0, 0	# 1367
	jal		x0, fle_cont.36468	# 125
fle_else.36469:
	fle		x31, f7, f4	# 124
	beq		x31, x0, fle_else.36471	# 124
	fsub	f4, f0, f7	# 124
	jal		x0, fle_cont.36470	# 124
fle_else.36471:
	fadd	f4, f0, f7	# 124
fle_cont.36470:
	lw		x8, 16(x7)	# 448
	mul		x6, x30, x6	# 453
	add		x6, x8, x6	# 453
	flw		f5, 0(x6)	# 453
	fle		x31, f5, f4	# 125
	beq		x31, x0, fle_else.36473	# 125
	addi	x6, x0, 0	# 125
	jal		x0, fle_cont.36472	# 125
fle_else.36473:
	addi	x6, x0, 1	# 125
fle_cont.36472:
fle_cont.36468:
fle_cont.36464:
	beq		x6, x9, beq.36475	# 1363
	lw		x6, 24(x7)	# 410
	jal		x0, beq_cont.36474	# 1363
beq.36475:
	lw		x6, 24(x7)	# 410
	beq		x6, x9, beq.36477	# 1369
	addi	x6, x0, 0	# 1369
	jal		x0, beq_cont.36476	# 1369
beq.36477:
	addi	x6, x0, 1	# 1369
beq_cont.36476:
beq_cont.36474:
beq_cont.36439:
	beq		x6, x9, beq.36478	# 1405
	addi	x4, x0, 0	# 1406
	jalr	x0, x1, 0	# 1406
beq.36478:
	add		x4, x4, x10	# 1408
	lw		x31, 0(x29)	# 1408
	jalr	x0, x31, 0	# 1408
beq.36438:
	addi	x4, x0, 1	# 1403
	jalr	x0, x1, 0	# 1403
shadow_check_and_group.2830.18792:
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
	beq		x13, x9, beq.36479	# 1421
	lui		x9, 70048	# 1163
	ori		x9, x0, 70048	# 1163
	mul		x14, x30, x13	# 1163
	add		x9, x9, x14	# 1163
	lw		x9, 0(x9)	# 1163
	lui		x14, 70552	# 1164
	ori		x14, x0, 70552	# 1164
	mul		x15, x30, x11	# 1164
	add		x14, x14, x15	# 1164
	flw		f2, 0(x14)	# 1164
	lw		x14, 20(x9)	# 468
	mul		x15, x30, x11	# 473
	add		x14, x14, x15	# 473
	flw		f3, 0(x14)	# 473
	fsub	f2, f2, f3	# 1164
	lui		x14, 70552	# 1165
	ori		x14, x0, 70552	# 1165
	mul		x15, x30, x12	# 1165
	add		x14, x14, x15	# 1165
	flw		f3, 0(x14)	# 1165
	lw		x14, 20(x9)	# 478
	mul		x15, x30, x12	# 483
	add		x14, x14, x15	# 483
	flw		f4, 0(x14)	# 483
	fsub	f3, f3, f4	# 1165
	lui		x14, 70552	# 1166
	ori		x14, x0, 70552	# 1166
	mul		x15, x30, x8	# 1166
	add		x14, x14, x15	# 1166
	flw		f4, 0(x14)	# 1166
	lw		x14, 20(x9)	# 488
	mul		x15, x30, x8	# 493
	add		x14, x14, x15	# 493
	flw		f5, 0(x14)	# 493
	fsub	f4, f4, f5	# 1166
	lui		x14, 70748	# 1168
	ori		x14, x0, 70748	# 1168
	mul		x15, x30, x13	# 1168
	add		x14, x14, x15	# 1168
	lw		x14, 0(x14)	# 1168
	lw		x15, 4(x9)	# 390
	beq		x15, x12, beq.36481	# 1170
	beq		x15, x8, beq.36483	# 1172
	mul		x7, x30, x11	# 1144
	add		x7, x14, x7	# 1144
	flw		f5, 0(x7)	# 1144
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.36485	# 120
	addi	x7, x0, 0	# 1146
	jal		x0, feq_cont.36484	# 120
feq_else.36485:
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
	beq		x7, x11, beq.36487	# 1006
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
	jal		x0, beq_cont.36486	# 1006
beq.36487:
	fadd	f2, f0, f7	# 1007
beq_cont.36486:
	lw		x7, 4(x9)	# 390
	beq		x7, x10, beq.36489	# 1150
	jal		x0, beq_cont.36488	# 1150
beq.36489:
	fadd	f3, f0, f16	# 1150
	fsub	f2, f2, f3	# 1150
beq_cont.36488:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1151
	fsub	f2, f3, f2	# 1151
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.36491	# 121
	addi	x7, x0, 0	# 1158
	jal		x0, fle_cont.36490	# 121
fle_else.36491:
	lw		x7, 24(x9)	# 410
	beq		x7, x11, beq.36493	# 1153
	fsqrt	f1, f2	# 1154
	fadd	f1, f6, f1	# 1154
	addi	x7, x0, 4	# 1154
	mul		x7, x30, x7	# 1154
	add		x7, x14, x7	# 1154
	flw		f2, 0(x7)	# 1154
	fmul	f1, f1, f2	# 1154
	lui		x7, 70540	# 1154
	ori		x7, x0, 70540	# 1154
	mul		x9, x30, x11	# 1154
	add		x7, x7, x9	# 1154
	fsw		f1, 0(x7)	# 1154
	jal		x0, beq_cont.36492	# 1153
beq.36493:
	fsqrt	f1, f2	# 1156
	fsub	f1, f6, f1	# 1156
	addi	x7, x0, 4	# 1156
	mul		x7, x30, x7	# 1156
	add		x7, x14, x7	# 1156
	flw		f2, 0(x7)	# 1156
	fmul	f1, f1, f2	# 1156
	lui		x7, 70540	# 1156
	ori		x7, x0, 70540	# 1156
	mul		x9, x30, x11	# 1156
	add		x7, x7, x9	# 1156
	fsw		f1, 0(x7)	# 1156
beq_cont.36492:
	addi	x7, x0, 1	# 1157
fle_cont.36490:
feq_cont.36484:
	jal		x0, beq_cont.36482	# 1172
beq.36483:
	mul		x7, x30, x11	# 1134
	add		x7, x14, x7	# 1134
	flw		f5, 0(x7)	# 1134
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.36495	# 122
	addi	x7, x0, 0	# 1138
	jal		x0, fle_cont.36494	# 122
fle_else.36495:
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
	lui		x7, 70540	# 1135
	ori		x7, x0, 70540	# 1135
	mul		x9, x30, x11	# 1135
	add		x7, x7, x9	# 1135
	fsw		f1, 0(x7)	# 1135
	addi	x7, x0, 1	# 1137
fle_cont.36494:
beq_cont.36482:
	jal		x0, beq_cont.36480	# 1170
beq.36481:
	mul		x15, x30, x11	# 1101
	add		x15, x14, x15	# 1101
	flw		f5, 0(x15)	# 1101
	fsub	f5, f5, f2	# 1101
	mul		x15, x30, x12	# 1101
	add		x15, x14, x15	# 1101
	flw		f6, 0(x15)	# 1101
	fmul	f5, f5, f6	# 1101
	lui		x15, 70736	# 1103
	ori		x15, x0, 70736	# 1103
	mul		x16, x30, x12	# 1103
	add		x15, x15, x16	# 1103
	flw		f7, 0(x15)	# 1103
	fmul	f8, f5, f7	# 1103
	fadd	f8, f8, f3	# 1103
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.36496	# 124
	fsub	f8, f0, f8	# 124
fle_cont.36496:
	lw		x15, 16(x9)	# 438
	mul		x16, x30, x12	# 443
	add		x15, x15, x16	# 443
	flw		f9, 0(x15)	# 443
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.36498	# 125
	addi	x15, x0, 0	# 1107
	jal		x0, fle_cont.36497	# 125
fle_else.36498:
	lui		x15, 70736	# 1104
	ori		x15, x0, 70736	# 1104
	mul		x16, x30, x8	# 1104
	add		x15, x15, x16	# 1104
	flw		f8, 0(x15)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.36499	# 124
	fsub	f8, f0, f8	# 124
fle_cont.36499:
	lw		x15, 16(x9)	# 448
	mul		x16, x30, x8	# 453
	add		x15, x15, x16	# 453
	flw		f9, 0(x15)	# 453
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.36501	# 125
	addi	x15, x0, 0	# 1106
	jal		x0, fle_cont.36500	# 125
fle_else.36501:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.36503	# 120
	addi	x15, x0, 0	# 1105
	jal		x0, feq_cont.36502	# 120
feq_else.36503:
	addi	x15, x0, 1	# 1105
feq_cont.36502:
fle_cont.36500:
fle_cont.36497:
	beq		x15, x11, beq.36505	# 1102
	lui		x7, 70540	# 1109
	ori		x7, x0, 70540	# 1109
	mul		x9, x30, x11	# 1109
	add		x7, x7, x9	# 1109
	fsw		f5, 0(x7)	# 1109
	addi	x7, x0, 1	# 1109
	jal		x0, beq_cont.36504	# 1102
beq.36505:
	mul		x15, x30, x8	# 1110
	add		x15, x14, x15	# 1110
	flw		f5, 0(x15)	# 1110
	fsub	f5, f5, f3	# 1110
	mul		x10, x30, x10	# 1110
	add		x10, x14, x10	# 1110
	flw		f6, 0(x10)	# 1110
	fmul	f5, f5, f6	# 1110
	lui		x10, 70736	# 1112
	ori		x10, x0, 70736	# 1112
	mul		x15, x30, x11	# 1112
	add		x10, x10, x15	# 1112
	flw		f8, 0(x10)	# 1112
	fmul	f9, f5, f8	# 1112
	fadd	f9, f9, f2	# 1112
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.36506	# 124
	fsub	f9, f0, f9	# 124
fle_cont.36506:
	lw		x10, 16(x9)	# 428
	mul		x15, x30, x11	# 433
	add		x10, x10, x15	# 433
	flw		f10, 0(x10)	# 433
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.36508	# 125
	addi	x10, x0, 0	# 1116
	jal		x0, fle_cont.36507	# 125
fle_else.36508:
	lui		x10, 70736	# 1113
	ori		x10, x0, 70736	# 1113
	mul		x15, x30, x8	# 1113
	add		x10, x10, x15	# 1113
	flw		f9, 0(x10)	# 1113
	fmul	f9, f5, f9	# 1113
	fadd	f9, f9, f4	# 1113
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.36509	# 124
	fsub	f9, f0, f9	# 124
fle_cont.36509:
	lw		x10, 16(x9)	# 448
	mul		x15, x30, x8	# 453
	add		x10, x10, x15	# 453
	flw		f10, 0(x10)	# 453
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.36511	# 125
	addi	x10, x0, 0	# 1115
	jal		x0, fle_cont.36510	# 125
fle_else.36511:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.36513	# 120
	addi	x10, x0, 0	# 1114
	jal		x0, feq_cont.36512	# 120
feq_else.36513:
	addi	x10, x0, 1	# 1114
feq_cont.36512:
fle_cont.36510:
fle_cont.36507:
	beq		x10, x11, beq.36515	# 1111
	lui		x7, 70540	# 1118
	ori		x7, x0, 70540	# 1118
	mul		x9, x30, x11	# 1118
	add		x7, x7, x9	# 1118
	fsw		f5, 0(x7)	# 1118
	addi	x7, x0, 2	# 1118
	jal		x0, beq_cont.36514	# 1111
beq.36515:
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
	beq		x31, x0, fle_cont.36516	# 124
	fsub	f2, f0, f2	# 124
fle_cont.36516:
	lw		x7, 16(x9)	# 428
	mul		x10, x30, x11	# 433
	add		x7, x7, x10	# 433
	flw		f6, 0(x7)	# 433
	fle		x31, f6, f2	# 125
	beq		x31, x0, fle_else.36518	# 125
	addi	x7, x0, 0	# 1125
	jal		x0, fle_cont.36517	# 125
fle_else.36518:
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.36519	# 124
	fsub	f2, f0, f2	# 124
fle_cont.36519:
	lw		x7, 16(x9)	# 438
	mul		x9, x30, x12	# 443
	add		x7, x7, x9	# 443
	flw		f3, 0(x7)	# 443
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.36521	# 125
	addi	x7, x0, 0	# 1124
	jal		x0, fle_cont.36520	# 125
fle_else.36521:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.36523	# 120
	addi	x7, x0, 0	# 1123
	jal		x0, feq_cont.36522	# 120
feq_else.36523:
	addi	x7, x0, 1	# 1123
feq_cont.36522:
fle_cont.36520:
fle_cont.36517:
	beq		x7, x11, beq.36525	# 1120
	lui		x7, 70540	# 1127
	ori		x7, x0, 70540	# 1127
	mul		x9, x30, x11	# 1127
	add		x7, x7, x9	# 1127
	fsw		f4, 0(x7)	# 1127
	addi	x7, x0, 3	# 1127
	jal		x0, beq_cont.36524	# 1120
beq.36525:
	addi	x7, x0, 0	# 1129
beq_cont.36524:
beq_cont.36514:
beq_cont.36504:
beq_cont.36480:
	lui		x9, 70540	# 1426
	ori		x9, x0, 70540	# 1426
	mul		x10, x30, x11	# 1426
	add		x9, x9, x10	# 1426
	flw		f1, 0(x9)	# 1426
	beq		x7, x11, beq.36527	# 1427
	fadd	f2, f0, f20	# 1427
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.36529	# 125
	addi	x7, x0, 0	# 125
	jal		x0, fle_cont.36528	# 125
fle_else.36529:
	addi	x7, x0, 1	# 125
fle_cont.36528:
	jal		x0, beq_cont.36526	# 1427
beq.36527:
	addi	x7, x0, 0	# 1427
beq_cont.36526:
	beq		x7, x11, beq.36530	# 1427
	fadd	f2, f0, f19	# 1430
	fadd	f1, f1, f2	# 1430
	lui		x7, 70312	# 1431
	ori		x7, x0, 70312	# 1431
	mul		x9, x30, x11	# 1431
	add		x7, x7, x9	# 1431
	flw		f2, 0(x7)	# 1431
	fmul	f2, f2, f1	# 1431
	lui		x7, 70552	# 1431
	ori		x7, x0, 70552	# 1431
	mul		x9, x30, x11	# 1431
	add		x7, x7, x9	# 1431
	flw		f3, 0(x7)	# 1431
	fadd	f2, f2, f3	# 1431
	lui		x7, 70312	# 1432
	ori		x7, x0, 70312	# 1432
	mul		x9, x30, x12	# 1432
	add		x7, x7, x9	# 1432
	flw		f3, 0(x7)	# 1432
	fmul	f3, f3, f1	# 1432
	lui		x7, 70552	# 1432
	ori		x7, x0, 70552	# 1432
	mul		x9, x30, x12	# 1432
	add		x7, x7, x9	# 1432
	flw		f4, 0(x7)	# 1432
	fadd	f3, f3, f4	# 1432
	lui		x7, 70312	# 1433
	ori		x7, x0, 70312	# 1433
	mul		x9, x30, x8	# 1433
	add		x7, x7, x9	# 1433
	flw		f4, 0(x7)	# 1433
	fmul	f1, f4, f1	# 1433
	lui		x7, 70552	# 1433
	ori		x7, x0, 70552	# 1433
	mul		x8, x30, x8	# 1433
	add		x7, x7, x8	# 1433
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
	beq		x4, x5, beq.36531	# 1434
	addi	x4, x0, 1	# 1435
	jalr	x0, x1, 0	# 1435
beq.36531:
	lw		x4, -8(x2)	# 1437
	lw		x5, -12(x2)	# 1437
	add		x4, x5, x4	# 1437
	lw		x5, 0(x2)	# 1437
	lw		x29, -4(x2)	# 1437
	lw		x31, 0(x29)	# 1437
	jalr	x0, x31, 0	# 1437
beq.36530:
	lui		x6, 70048	# 1443
	ori		x6, x0, 70048	# 1443
	mul		x7, x30, x13	# 1443
	add		x6, x6, x7	# 1443
	lw		x6, 0(x6)	# 1443
	lw		x6, 24(x6)	# 410
	beq		x6, x11, beq.36532	# 1443
	add		x4, x4, x12	# 1444
	lw		x31, 0(x29)	# 1444
	jalr	x0, x31, 0	# 1444
beq.36532:
	addi	x4, x0, 0	# 1446
	jalr	x0, x1, 0	# 1446
beq.36479:
	addi	x4, x0, 0	# 1422
	jalr	x0, x1, 0	# 1422
shadow_check_one_or_group.2833.18795:
	lw		x6, 16(x29)	# 1451
	lw		x7, 12(x29)	# 1451
	lw		x8, 8(x29)	# 1451
	lw		x9, 4(x29)	# 1451
	mul		x10, x30, x4	# 1451
	add		x10, x5, x10	# 1451
	lw		x10, 0(x10)	# 1451
	beq		x10, x7, beq.36533	# 1452
	lui		x7, 70332	# 1455
	ori		x7, x0, 70332	# 1455
	mul		x10, x30, x10	# 1455
	add		x7, x7, x10	# 1455
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
	beq		x4, x5, beq.36534	# 1457
	addi	x4, x0, 1	# 1458
	jalr	x0, x1, 0	# 1458
beq.36534:
	lw		x4, -8(x2)	# 1460
	lw		x5, -12(x2)	# 1460
	add		x4, x5, x4	# 1460
	lw		x5, 0(x2)	# 1460
	lw		x29, -4(x2)	# 1460
	lw		x31, 0(x29)	# 1460
	jalr	x0, x31, 0	# 1460
beq.36533:
	addi	x4, x0, 0	# 1453
	jalr	x0, x1, 0	# 1453
shadow_check_one_or_matrix.2836.18798:
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
	beq		x14, x9, beq.36535	# 1468
	addi	x9, x0, 99	# 1472
	sw		x13, 0(x2)	# 1472
	sw		x6, -4(x2)	# 1472
	sw		x5, -8(x2)	# 1472
	sw		x29, -12(x2)	# 1472
	sw		x12, -16(x2)	# 1472
	sw		x4, -20(x2)	# 1472
	sw		x11, -24(x2)	# 1472
	beq		x14, x9, beq.36537	# 1472
	lui		x9, 70048	# 1163
	ori		x9, x0, 70048	# 1163
	mul		x15, x30, x14	# 1163
	add		x9, x9, x15	# 1163
	lw		x9, 0(x9)	# 1163
	lui		x15, 70552	# 1164
	ori		x15, x0, 70552	# 1164
	mul		x16, x30, x11	# 1164
	add		x15, x15, x16	# 1164
	flw		f2, 0(x15)	# 1164
	lw		x15, 20(x9)	# 468
	mul		x16, x30, x11	# 473
	add		x15, x15, x16	# 473
	flw		f3, 0(x15)	# 473
	fsub	f2, f2, f3	# 1164
	lui		x15, 70552	# 1165
	ori		x15, x0, 70552	# 1165
	mul		x16, x30, x12	# 1165
	add		x15, x15, x16	# 1165
	flw		f3, 0(x15)	# 1165
	lw		x15, 20(x9)	# 478
	mul		x16, x30, x12	# 483
	add		x15, x15, x16	# 483
	flw		f4, 0(x15)	# 483
	fsub	f3, f3, f4	# 1165
	lui		x15, 70552	# 1166
	ori		x15, x0, 70552	# 1166
	mul		x16, x30, x8	# 1166
	add		x15, x15, x16	# 1166
	flw		f4, 0(x15)	# 1166
	lw		x15, 20(x9)	# 488
	mul		x16, x30, x8	# 493
	add		x15, x15, x16	# 493
	flw		f5, 0(x15)	# 493
	fsub	f4, f4, f5	# 1166
	lui		x15, 70748	# 1168
	ori		x15, x0, 70748	# 1168
	mul		x14, x30, x14	# 1168
	add		x14, x15, x14	# 1168
	lw		x14, 0(x14)	# 1168
	lw		x15, 4(x9)	# 390
	beq		x15, x12, beq.36539	# 1170
	beq		x15, x8, beq.36541	# 1172
	mul		x7, x30, x11	# 1144
	add		x7, x14, x7	# 1144
	flw		f5, 0(x7)	# 1144
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.36543	# 120
	addi	x7, x0, 0	# 1146
	jal		x0, feq_cont.36542	# 120
feq_else.36543:
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
	beq		x7, x11, beq.36545	# 1006
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
	jal		x0, beq_cont.36544	# 1006
beq.36545:
	fadd	f2, f0, f7	# 1007
beq_cont.36544:
	lw		x7, 4(x9)	# 390
	beq		x7, x10, beq.36547	# 1150
	jal		x0, beq_cont.36546	# 1150
beq.36547:
	fadd	f3, f0, f16	# 1150
	fsub	f2, f2, f3	# 1150
beq_cont.36546:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1151
	fsub	f2, f3, f2	# 1151
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.36549	# 121
	addi	x7, x0, 0	# 1158
	jal		x0, fle_cont.36548	# 121
fle_else.36549:
	lw		x7, 24(x9)	# 410
	beq		x7, x11, beq.36551	# 1153
	fsqrt	f1, f2	# 1154
	fadd	f1, f6, f1	# 1154
	addi	x7, x0, 4	# 1154
	mul		x7, x30, x7	# 1154
	add		x7, x14, x7	# 1154
	flw		f2, 0(x7)	# 1154
	fmul	f1, f1, f2	# 1154
	lui		x7, 70540	# 1154
	ori		x7, x0, 70540	# 1154
	mul		x8, x30, x11	# 1154
	add		x7, x7, x8	# 1154
	fsw		f1, 0(x7)	# 1154
	jal		x0, beq_cont.36550	# 1153
beq.36551:
	fsqrt	f1, f2	# 1156
	fsub	f1, f6, f1	# 1156
	addi	x7, x0, 4	# 1156
	mul		x7, x30, x7	# 1156
	add		x7, x14, x7	# 1156
	flw		f2, 0(x7)	# 1156
	fmul	f1, f1, f2	# 1156
	lui		x7, 70540	# 1156
	ori		x7, x0, 70540	# 1156
	mul		x8, x30, x11	# 1156
	add		x7, x7, x8	# 1156
	fsw		f1, 0(x7)	# 1156
beq_cont.36550:
	addi	x7, x0, 1	# 1157
fle_cont.36548:
feq_cont.36542:
	jal		x0, beq_cont.36540	# 1172
beq.36541:
	mul		x7, x30, x11	# 1134
	add		x7, x14, x7	# 1134
	flw		f5, 0(x7)	# 1134
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.36553	# 122
	addi	x7, x0, 0	# 1138
	jal		x0, fle_cont.36552	# 122
fle_else.36553:
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
	lui		x7, 70540	# 1135
	ori		x7, x0, 70540	# 1135
	mul		x8, x30, x11	# 1135
	add		x7, x7, x8	# 1135
	fsw		f1, 0(x7)	# 1135
	addi	x7, x0, 1	# 1137
fle_cont.36552:
beq_cont.36540:
	jal		x0, beq_cont.36538	# 1170
beq.36539:
	mul		x15, x30, x11	# 1101
	add		x15, x14, x15	# 1101
	flw		f5, 0(x15)	# 1101
	fsub	f5, f5, f2	# 1101
	mul		x15, x30, x12	# 1101
	add		x15, x14, x15	# 1101
	flw		f6, 0(x15)	# 1101
	fmul	f5, f5, f6	# 1101
	lui		x15, 70736	# 1103
	ori		x15, x0, 70736	# 1103
	mul		x16, x30, x12	# 1103
	add		x15, x15, x16	# 1103
	flw		f7, 0(x15)	# 1103
	fmul	f8, f5, f7	# 1103
	fadd	f8, f8, f3	# 1103
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.36554	# 124
	fsub	f8, f0, f8	# 124
fle_cont.36554:
	lw		x15, 16(x9)	# 438
	mul		x16, x30, x12	# 443
	add		x15, x15, x16	# 443
	flw		f9, 0(x15)	# 443
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.36556	# 125
	addi	x15, x0, 0	# 1107
	jal		x0, fle_cont.36555	# 125
fle_else.36556:
	lui		x15, 70736	# 1104
	ori		x15, x0, 70736	# 1104
	mul		x16, x30, x8	# 1104
	add		x15, x15, x16	# 1104
	flw		f8, 0(x15)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.36557	# 124
	fsub	f8, f0, f8	# 124
fle_cont.36557:
	lw		x15, 16(x9)	# 448
	mul		x16, x30, x8	# 453
	add		x15, x15, x16	# 453
	flw		f9, 0(x15)	# 453
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.36559	# 125
	addi	x15, x0, 0	# 1106
	jal		x0, fle_cont.36558	# 125
fle_else.36559:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.36561	# 120
	addi	x15, x0, 0	# 1105
	jal		x0, feq_cont.36560	# 120
feq_else.36561:
	addi	x15, x0, 1	# 1105
feq_cont.36560:
fle_cont.36558:
fle_cont.36555:
	beq		x15, x11, beq.36563	# 1102
	lui		x7, 70540	# 1109
	ori		x7, x0, 70540	# 1109
	mul		x8, x30, x11	# 1109
	add		x7, x7, x8	# 1109
	fsw		f5, 0(x7)	# 1109
	addi	x7, x0, 1	# 1109
	jal		x0, beq_cont.36562	# 1102
beq.36563:
	mul		x15, x30, x8	# 1110
	add		x15, x14, x15	# 1110
	flw		f5, 0(x15)	# 1110
	fsub	f5, f5, f3	# 1110
	mul		x10, x30, x10	# 1110
	add		x10, x14, x10	# 1110
	flw		f6, 0(x10)	# 1110
	fmul	f5, f5, f6	# 1110
	lui		x10, 70736	# 1112
	ori		x10, x0, 70736	# 1112
	mul		x15, x30, x11	# 1112
	add		x10, x10, x15	# 1112
	flw		f8, 0(x10)	# 1112
	fmul	f9, f5, f8	# 1112
	fadd	f9, f9, f2	# 1112
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.36564	# 124
	fsub	f9, f0, f9	# 124
fle_cont.36564:
	lw		x10, 16(x9)	# 428
	mul		x15, x30, x11	# 433
	add		x10, x10, x15	# 433
	flw		f10, 0(x10)	# 433
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.36566	# 125
	addi	x8, x0, 0	# 1116
	jal		x0, fle_cont.36565	# 125
fle_else.36566:
	lui		x10, 70736	# 1113
	ori		x10, x0, 70736	# 1113
	mul		x15, x30, x8	# 1113
	add		x10, x10, x15	# 1113
	flw		f9, 0(x10)	# 1113
	fmul	f9, f5, f9	# 1113
	fadd	f9, f9, f4	# 1113
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.36567	# 124
	fsub	f9, f0, f9	# 124
fle_cont.36567:
	lw		x10, 16(x9)	# 448
	mul		x8, x30, x8	# 453
	add		x8, x10, x8	# 453
	flw		f10, 0(x8)	# 453
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.36569	# 125
	addi	x8, x0, 0	# 1115
	jal		x0, fle_cont.36568	# 125
fle_else.36569:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.36571	# 120
	addi	x8, x0, 0	# 1114
	jal		x0, feq_cont.36570	# 120
feq_else.36571:
	addi	x8, x0, 1	# 1114
feq_cont.36570:
fle_cont.36568:
fle_cont.36565:
	beq		x8, x11, beq.36573	# 1111
	lui		x7, 70540	# 1118
	ori		x7, x0, 70540	# 1118
	mul		x8, x30, x11	# 1118
	add		x7, x7, x8	# 1118
	fsw		f5, 0(x7)	# 1118
	addi	x7, x0, 2	# 1118
	jal		x0, beq_cont.36572	# 1111
beq.36573:
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
	beq		x31, x0, fle_cont.36574	# 124
	fsub	f2, f0, f2	# 124
fle_cont.36574:
	lw		x7, 16(x9)	# 428
	mul		x8, x30, x11	# 433
	add		x7, x7, x8	# 433
	flw		f6, 0(x7)	# 433
	fle		x31, f6, f2	# 125
	beq		x31, x0, fle_else.36576	# 125
	addi	x7, x0, 0	# 1125
	jal		x0, fle_cont.36575	# 125
fle_else.36576:
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.36577	# 124
	fsub	f2, f0, f2	# 124
fle_cont.36577:
	lw		x7, 16(x9)	# 438
	mul		x8, x30, x12	# 443
	add		x7, x7, x8	# 443
	flw		f3, 0(x7)	# 443
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.36579	# 125
	addi	x7, x0, 0	# 1124
	jal		x0, fle_cont.36578	# 125
fle_else.36579:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.36581	# 120
	addi	x7, x0, 0	# 1123
	jal		x0, feq_cont.36580	# 120
feq_else.36581:
	addi	x7, x0, 1	# 1123
feq_cont.36580:
fle_cont.36578:
fle_cont.36575:
	beq		x7, x11, beq.36583	# 1120
	lui		x7, 70540	# 1127
	ori		x7, x0, 70540	# 1127
	mul		x8, x30, x11	# 1127
	add		x7, x7, x8	# 1127
	fsw		f4, 0(x7)	# 1127
	addi	x7, x0, 3	# 1127
	jal		x0, beq_cont.36582	# 1120
beq.36583:
	addi	x7, x0, 0	# 1129
beq_cont.36582:
beq_cont.36572:
beq_cont.36562:
beq_cont.36538:
	beq		x7, x11, beq.36585	# 1478
	lui		x7, 70540	# 1479
	ori		x7, x0, 70540	# 1479
	mul		x8, x30, x11	# 1479
	add		x7, x7, x8	# 1479
	flw		f1, 0(x7)	# 1479
	fadd	f2, f0, f21	# 1479
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.36587	# 125
	addi	x4, x0, 0	# 1483
	jal		x0, fle_cont.36586	# 125
fle_else.36587:
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
	beq		x4, x5, beq.36589	# 1480
	addi	x4, x0, 1	# 1481
	jal		x0, beq_cont.36588	# 1480
beq.36589:
	addi	x4, x0, 0	# 1482
beq_cont.36588:
fle_cont.36586:
	jal		x0, beq_cont.36584	# 1478
beq.36585:
	addi	x4, x0, 0	# 1484
beq_cont.36584:
	jal		x0, beq_cont.36536	# 1472
beq.36537:
	addi	x4, x0, 1	# 1473
beq_cont.36536:
	lw		x5, -24(x2)	# 1471
	beq		x4, x5, beq.36590	# 1471
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
	beq		x4, x5, beq.36591	# 1486
	addi	x4, x0, 1	# 1487
	jalr	x0, x1, 0	# 1487
beq.36591:
	lw		x4, -16(x2)	# 1489
	lw		x5, -20(x2)	# 1489
	add		x4, x5, x4	# 1489
	lw		x5, -8(x2)	# 1489
	lw		x29, -12(x2)	# 1489
	lw		x31, 0(x29)	# 1489
	jalr	x0, x31, 0	# 1489
beq.36590:
	lw		x4, -16(x2)	# 1491
	lw		x5, -20(x2)	# 1491
	add		x4, x5, x4	# 1491
	lw		x5, -8(x2)	# 1491
	lw		x29, -12(x2)	# 1491
	lw		x31, 0(x29)	# 1491
	jalr	x0, x31, 0	# 1491
beq.36535:
	addi	x4, x0, 0	# 1469
	jalr	x0, x1, 0	# 1469
solve_each_element.2839.18801:
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
	beq		x13, x9, beq.36592	# 1503
	lui		x9, 70048	# 1069
	ori		x9, x0, 70048	# 1069
	mul		x14, x30, x13	# 1069
	add		x9, x9, x14	# 1069
	lw		x9, 0(x9)	# 1069
	lui		x14, 70636	# 1071
	ori		x14, x0, 70636	# 1071
	mul		x15, x30, x11	# 1071
	add		x14, x14, x15	# 1071
	flw		f2, 0(x14)	# 1071
	lw		x14, 20(x9)	# 468
	mul		x15, x30, x11	# 473
	add		x14, x14, x15	# 473
	flw		f3, 0(x14)	# 473
	fsub	f2, f2, f3	# 1071
	lui		x14, 70636	# 1072
	ori		x14, x0, 70636	# 1072
	mul		x15, x30, x12	# 1072
	add		x14, x14, x15	# 1072
	flw		f3, 0(x14)	# 1072
	lw		x14, 20(x9)	# 478
	mul		x15, x30, x12	# 483
	add		x14, x14, x15	# 483
	flw		f4, 0(x14)	# 483
	fsub	f3, f3, f4	# 1072
	lui		x14, 70636	# 1073
	ori		x14, x0, 70636	# 1073
	mul		x15, x30, x8	# 1073
	add		x14, x14, x15	# 1073
	flw		f4, 0(x14)	# 1073
	lw		x14, 20(x9)	# 488
	mul		x15, x30, x8	# 493
	add		x14, x14, x15	# 493
	flw		f5, 0(x14)	# 493
	fsub	f4, f4, f5	# 1073
	lw		x14, 4(x9)	# 390
	beq		x14, x12, beq.36594	# 1076
	beq		x14, x8, beq.36596	# 1077
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
	beq		x14, x11, beq_cont.36597	# 1006
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
beq_cont.36597:
	feq		x31, f8, f1	# 120
	beq		x31, x0, feq_else.36599	# 120
	addi	x9, x0, 0	# 1046
	jal		x0, feq_cont.36598	# 120
feq_else.36599:
	fmul	f10, f5, f2	# 1018
	fmul	f10, f10, f9	# 1018
	fmul	f13, f6, f3	# 1019
	fmul	f13, f13, f11	# 1019
	fadd	f10, f10, f13	# 1018
	fmul	f13, f7, f4	# 1020
	fmul	f13, f13, f12	# 1020
	fadd	f10, f10, f13	# 1018
	beq		x14, x11, beq.36601	# 1022
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
	jal		x0, beq_cont.36600	# 1022
beq.36601:
	fadd	f5, f0, f10	# 1023
beq_cont.36600:
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f9	# 1004
	fmul	f7, f3, f3	# 127
	fmul	f7, f7, f11	# 1004
	fadd	f6, f6, f7	# 1004
	fmul	f7, f4, f4	# 127
	fmul	f7, f7, f12	# 1004
	fadd	f6, f6, f7	# 1004
	beq		x14, x11, beq.36603	# 1006
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
	jal		x0, beq_cont.36602	# 1006
beq.36603:
	fadd	f2, f0, f6	# 1007
beq_cont.36602:
	lw		x14, 4(x9)	# 390
	beq		x14, x10, beq.36605	# 1053
	jal		x0, beq_cont.36604	# 1053
beq.36605:
	fadd	f3, f0, f16	# 1053
	fsub	f2, f2, f3	# 1053
beq_cont.36604:
	fmul	f3, f5, f5	# 127
	fmul	f2, f8, f2	# 1055
	fsub	f2, f3, f2	# 1055
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.36607	# 121
	addi	x9, x0, 0	# 1063
	jal		x0, fle_cont.36606	# 121
fle_else.36607:
	fsqrt	f2, f2	# 1058
	lw		x9, 24(x9)	# 410
	beq		x9, x11, beq.36609	# 1059
	jal		x0, beq_cont.36608	# 1059
beq.36609:
	fsub	f2, f0, f2	# 123
beq_cont.36608:
	fsub	f2, f2, f5	# 1060
	fdiv	f2, f2, f8	# 1060
	lui		x9, 70540	# 1060
	ori		x9, x0, 70540	# 1060
	mul		x10, x30, x11	# 1060
	add		x9, x9, x10	# 1060
	fsw		f2, 0(x9)	# 1060
	addi	x9, x0, 1	# 1060
fle_cont.36606:
feq_cont.36598:
	jal		x0, beq_cont.36595	# 1077
beq.36596:
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
	beq		x31, x0, fle_else.36611	# 121
	addi	x9, x0, 0	# 996
	jal		x0, fle_cont.36610	# 121
fle_else.36611:
	fmul	f2, f6, f2	# 334
	fmul	f3, f8, f3	# 334
	fadd	f2, f2, f3	# 334
	fmul	f3, f9, f4	# 334
	fadd	f2, f2, f3	# 334
	fsub	f2, f0, f2	# 123
	fdiv	f2, f2, f5	# 994
	lui		x9, 70540	# 994
	ori		x9, x0, 70540	# 994
	mul		x10, x30, x11	# 994
	add		x9, x9, x10	# 994
	fsw		f2, 0(x9)	# 994
	addi	x9, x0, 1	# 995
fle_cont.36610:
beq_cont.36595:
	jal		x0, beq_cont.36593	# 1076
beq.36594:
	mul		x10, x30, x11	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.36613	# 120
	addi	x10, x0, 0	# 965
	jal		x0, feq_cont.36612	# 120
feq_else.36613:
	lw		x10, 16(x9)	# 458
	lw		x14, 24(x9)	# 410
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.36615	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.36614	# 122
fle_else.36615:
	addi	x15, x0, 1	# 122
fle_cont.36614:
	beq		x14, x11, beq.36617	# 241
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.36619	# 122
	addi	x14, x0, 1	# 241
	jal		x0, fle_cont.36618	# 122
fle_else.36619:
	addi	x14, x0, 0	# 241
fle_cont.36618:
	jal		x0, beq_cont.36616	# 241
beq.36617:
	addi	x14, x15, 0	# 241
beq_cont.36616:
	mul		x15, x30, x11	# 967
	add		x15, x10, x15	# 967
	flw		f6, 0(x15)	# 967
	beq		x14, x11, beq.36621	# 256
	jal		x0, beq_cont.36620	# 256
beq.36621:
	fsub	f6, f0, f6	# 123
beq_cont.36620:
	fsub	f6, f6, f2	# 969
	fdiv	f5, f6, f5	# 969
	mul		x14, x30, x12	# 970
	add		x14, x6, x14	# 970
	flw		f6, 0(x14)	# 970
	fmul	f6, f5, f6	# 970
	fadd	f6, f6, f3	# 970
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.36622	# 124
	fsub	f6, f0, f6	# 124
fle_cont.36622:
	mul		x14, x30, x12	# 970
	add		x14, x10, x14	# 970
	flw		f7, 0(x14)	# 970
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.36624	# 125
	addi	x10, x0, 0	# 974
	jal		x0, fle_cont.36623	# 125
fle_else.36624:
	mul		x14, x30, x8	# 971
	add		x14, x6, x14	# 971
	flw		f6, 0(x14)	# 971
	fmul	f6, f5, f6	# 971
	fadd	f6, f6, f4	# 971
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.36625	# 124
	fsub	f6, f0, f6	# 124
fle_cont.36625:
	mul		x14, x30, x8	# 971
	add		x10, x10, x14	# 971
	flw		f7, 0(x10)	# 971
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.36627	# 125
	addi	x10, x0, 0	# 973
	jal		x0, fle_cont.36626	# 125
fle_else.36627:
	lui		x10, 70540	# 972
	ori		x10, x0, 70540	# 972
	mul		x14, x30, x11	# 972
	add		x10, x10, x14	# 972
	fsw		f5, 0(x10)	# 972
	addi	x10, x0, 1	# 972
fle_cont.36626:
fle_cont.36623:
feq_cont.36612:
	beq		x10, x11, beq.36629	# 980
	addi	x9, x0, 1	# 980
	jal		x0, beq_cont.36628	# 980
beq.36629:
	mul		x10, x30, x12	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.36631	# 120
	addi	x10, x0, 0	# 965
	jal		x0, feq_cont.36630	# 120
feq_else.36631:
	lw		x10, 16(x9)	# 458
	lw		x14, 24(x9)	# 410
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.36633	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.36632	# 122
fle_else.36633:
	addi	x15, x0, 1	# 122
fle_cont.36632:
	beq		x14, x11, beq.36635	# 241
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.36637	# 122
	addi	x14, x0, 1	# 241
	jal		x0, fle_cont.36636	# 122
fle_else.36637:
	addi	x14, x0, 0	# 241
fle_cont.36636:
	jal		x0, beq_cont.36634	# 241
beq.36635:
	addi	x14, x15, 0	# 241
beq_cont.36634:
	mul		x15, x30, x12	# 967
	add		x15, x10, x15	# 967
	flw		f6, 0(x15)	# 967
	beq		x14, x11, beq.36639	# 256
	jal		x0, beq_cont.36638	# 256
beq.36639:
	fsub	f6, f0, f6	# 123
beq_cont.36638:
	fsub	f6, f6, f3	# 969
	fdiv	f5, f6, f5	# 969
	mul		x14, x30, x8	# 970
	add		x14, x6, x14	# 970
	flw		f6, 0(x14)	# 970
	fmul	f6, f5, f6	# 970
	fadd	f6, f6, f4	# 970
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.36640	# 124
	fsub	f6, f0, f6	# 124
fle_cont.36640:
	mul		x14, x30, x8	# 970
	add		x14, x10, x14	# 970
	flw		f7, 0(x14)	# 970
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.36642	# 125
	addi	x10, x0, 0	# 974
	jal		x0, fle_cont.36641	# 125
fle_else.36642:
	mul		x14, x30, x11	# 971
	add		x14, x6, x14	# 971
	flw		f6, 0(x14)	# 971
	fmul	f6, f5, f6	# 971
	fadd	f6, f6, f2	# 971
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.36643	# 124
	fsub	f6, f0, f6	# 124
fle_cont.36643:
	mul		x14, x30, x11	# 971
	add		x10, x10, x14	# 971
	flw		f7, 0(x10)	# 971
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.36645	# 125
	addi	x10, x0, 0	# 973
	jal		x0, fle_cont.36644	# 125
fle_else.36645:
	lui		x10, 70540	# 972
	ori		x10, x0, 70540	# 972
	mul		x14, x30, x11	# 972
	add		x10, x10, x14	# 972
	fsw		f5, 0(x10)	# 972
	addi	x10, x0, 1	# 972
fle_cont.36644:
fle_cont.36641:
feq_cont.36630:
	beq		x10, x11, beq.36647	# 981
	addi	x9, x0, 2	# 981
	jal		x0, beq_cont.36646	# 981
beq.36647:
	mul		x10, x30, x8	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.36649	# 120
	addi	x9, x0, 0	# 965
	jal		x0, feq_cont.36648	# 120
feq_else.36649:
	lw		x10, 16(x9)	# 458
	lw		x9, 24(x9)	# 410
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.36651	# 122
	addi	x14, x0, 0	# 122
	jal		x0, fle_cont.36650	# 122
fle_else.36651:
	addi	x14, x0, 1	# 122
fle_cont.36650:
	beq		x9, x11, beq.36653	# 241
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.36655	# 122
	addi	x9, x0, 1	# 241
	jal		x0, fle_cont.36654	# 122
fle_else.36655:
	addi	x9, x0, 0	# 241
fle_cont.36654:
	jal		x0, beq_cont.36652	# 241
beq.36653:
	addi	x9, x14, 0	# 241
beq_cont.36652:
	mul		x14, x30, x8	# 967
	add		x14, x10, x14	# 967
	flw		f6, 0(x14)	# 967
	beq		x9, x11, beq.36657	# 256
	jal		x0, beq_cont.36656	# 256
beq.36657:
	fsub	f6, f0, f6	# 123
beq_cont.36656:
	fsub	f4, f6, f4	# 969
	fdiv	f4, f4, f5	# 969
	mul		x9, x30, x11	# 970
	add		x9, x6, x9	# 970
	flw		f5, 0(x9)	# 970
	fmul	f5, f4, f5	# 970
	fadd	f2, f5, f2	# 970
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.36658	# 124
	fsub	f2, f0, f2	# 124
fle_cont.36658:
	mul		x9, x30, x11	# 970
	add		x9, x10, x9	# 970
	flw		f5, 0(x9)	# 970
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.36660	# 125
	addi	x9, x0, 0	# 974
	jal		x0, fle_cont.36659	# 125
fle_else.36660:
	mul		x9, x30, x12	# 971
	add		x9, x6, x9	# 971
	flw		f2, 0(x9)	# 971
	fmul	f2, f4, f2	# 971
	fadd	f2, f2, f3	# 971
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.36661	# 124
	fsub	f2, f0, f2	# 124
fle_cont.36661:
	mul		x9, x30, x12	# 971
	add		x9, x10, x9	# 971
	flw		f3, 0(x9)	# 971
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.36663	# 125
	addi	x9, x0, 0	# 973
	jal		x0, fle_cont.36662	# 125
fle_else.36663:
	lui		x9, 70540	# 972
	ori		x9, x0, 70540	# 972
	mul		x10, x30, x11	# 972
	add		x9, x9, x10	# 972
	fsw		f4, 0(x9)	# 972
	addi	x9, x0, 1	# 972
fle_cont.36662:
fle_cont.36659:
feq_cont.36648:
	beq		x9, x11, beq.36665	# 982
	addi	x9, x0, 3	# 982
	jal		x0, beq_cont.36664	# 982
beq.36665:
	addi	x9, x0, 0	# 983
beq_cont.36664:
beq_cont.36646:
beq_cont.36628:
beq_cont.36593:
	beq		x9, x11, beq.36666	# 1506
	lui		x10, 70540	# 1510
	ori		x10, x0, 70540	# 1510
	mul		x14, x30, x11	# 1510
	add		x10, x10, x14	# 1510
	flw		f2, 0(x10)	# 1510
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x29, -8(x2)	# 125
	sw		x12, -12(x2)	# 125
	sw		x4, -16(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.36668	# 125
	jal		x0, fle_cont.36667	# 125
fle_else.36668:
	lui		x10, 70548	# 1513
	ori		x10, x0, 70548	# 1513
	mul		x14, x30, x11	# 1513
	add		x10, x10, x14	# 1513
	flw		f1, 0(x10)	# 1513
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.36670	# 125
	jal		x0, fle_cont.36669	# 125
fle_else.36670:
	fadd	f1, f0, f19	# 1515
	fadd	f1, f2, f1	# 1515
	mul		x10, x30, x11	# 1516
	add		x10, x6, x10	# 1516
	flw		f2, 0(x10)	# 1516
	fmul	f2, f2, f1	# 1516
	lui		x10, 70636	# 1516
	ori		x10, x0, 70636	# 1516
	mul		x14, x30, x11	# 1516
	add		x10, x10, x14	# 1516
	flw		f3, 0(x10)	# 1516
	fadd	f2, f2, f3	# 1516
	mul		x10, x30, x12	# 1517
	add		x10, x6, x10	# 1517
	flw		f3, 0(x10)	# 1517
	fmul	f3, f3, f1	# 1517
	lui		x10, 70636	# 1517
	ori		x10, x0, 70636	# 1517
	mul		x14, x30, x12	# 1517
	add		x10, x10, x14	# 1517
	flw		f4, 0(x10)	# 1517
	fadd	f3, f3, f4	# 1517
	mul		x10, x30, x8	# 1518
	add		x10, x6, x10	# 1518
	flw		f4, 0(x10)	# 1518
	fmul	f4, f4, f1	# 1518
	lui		x10, 70636	# 1518
	ori		x10, x0, 70636	# 1518
	mul		x14, x30, x8	# 1518
	add		x10, x10, x14	# 1518
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
	beq		x4, x5, beq_cont.36671	# 1519
	lui		x4, 70548	# 1521
	ori		x4, x0, 70548	# 1521
	mul		x6, x30, x5	# 1521
	add		x4, x4, x6	# 1521
	flw		f1, -44(x2)	# 1521
	fsw		f1, 0(x4)	# 1521
	lui		x4, 70552	# 277
	ori		x4, x0, 70552	# 277
	mul		x6, x30, x5	# 277
	add		x4, x4, x6	# 277
	flw		f1, -40(x2)	# 277
	fsw		f1, 0(x4)	# 277
	lui		x4, 70552	# 278
	ori		x4, x0, 70552	# 278
	lw		x6, -12(x2)	# 278
	mul		x7, x30, x6	# 278
	add		x4, x4, x7	# 278
	flw		f1, -36(x2)	# 278
	fsw		f1, 0(x4)	# 278
	lui		x4, 70552	# 279
	ori		x4, x0, 70552	# 279
	lw		x7, -32(x2)	# 279
	mul		x7, x30, x7	# 279
	add		x4, x4, x7	# 279
	flw		f1, -28(x2)	# 279
	fsw		f1, 0(x4)	# 279
	lui		x4, 70564	# 1523
	ori		x4, x0, 70564	# 1523
	mul		x7, x30, x5	# 1523
	add		x4, x4, x7	# 1523
	lw		x7, -24(x2)	# 1523
	sw		x7, 0(x4)	# 1523
	lui		x4, 70544	# 1524
	ori		x4, x0, 70544	# 1524
	mul		x5, x30, x5	# 1524
	add		x4, x4, x5	# 1524
	lw		x5, -20(x2)	# 1524
	sw		x5, 0(x4)	# 1524
beq_cont.36671:
fle_cont.36669:
fle_cont.36667:
	lw		x4, -12(x2)	# 1530
	lw		x5, -16(x2)	# 1530
	add		x4, x5, x4	# 1530
	lw		x5, -4(x2)	# 1530
	lw		x6, 0(x2)	# 1530
	lw		x29, -8(x2)	# 1530
	lw		x31, 0(x29)	# 1530
	jalr	x0, x31, 0	# 1530
beq.36666:
	lui		x7, 70048	# 1534
	ori		x7, x0, 70048	# 1534
	mul		x8, x30, x13	# 1534
	add		x7, x7, x8	# 1534
	lw		x7, 0(x7)	# 1534
	lw		x7, 24(x7)	# 410
	beq		x7, x11, beq.36672	# 1534
	add		x4, x4, x12	# 1535
	lw		x31, 0(x29)	# 1535
	jalr	x0, x31, 0	# 1535
beq.36672:
	jalr	x0, x1, 0	# 1536
beq.36592:
	jalr	x0, x1, 0	# 1503
solve_one_or_network.2843.18805:
	lw		x7, 16(x29)	# 1543
	lw		x8, 12(x29)	# 1543
	lw		x9, 8(x29)	# 1543
	lw		x10, 4(x29)	# 1543
	mul		x11, x30, x4	# 1543
	add		x11, x5, x11	# 1543
	lw		x11, 0(x11)	# 1543
	beq		x11, x8, beq.36675	# 1544
	lui		x12, 70332	# 1545
	ori		x12, x0, 70332	# 1545
	mul		x11, x30, x11	# 1545
	add		x11, x12, x11	# 1545
	lw		x11, 0(x11)	# 1545
	sw		x29, 0(x2)	# 1546
	sw		x6, -4(x2)	# 1546
	sw		x9, -8(x2)	# 1546
	sw		x7, -12(x2)	# 1546
	sw		x8, -16(x2)	# 1546
	sw		x5, -20(x2)	# 1546
	sw		x10, -24(x2)	# 1546
	sw		x4, -28(x2)	# 1546
	addi	x5, x11, 0
	addi	x4, x9, 0
	addi	x29, x7, 0
	sw		x1, -32(x2)	# 1546
	addi	x2, x2, -36	# 1546
	lw		x31, 0(x29)	# 1546
	jalr	x1, x31, 0	# 1546
	addi	x2, x2, 36	# 1546
	lw		x1, -32(x2)	# 1546
	lw		x4, -24(x2)	# 1547
	lw		x5, -28(x2)	# 1547
	add		x5, x5, x4	# 1547
	mul		x6, x30, x5	# 1543
	lw		x7, -20(x2)	# 1543
	add		x6, x7, x6	# 1543
	lw		x6, 0(x6)	# 1543
	lw		x8, -16(x2)	# 1544
	beq		x6, x8, beq.36676	# 1544
	lui		x8, 70332	# 1545
	ori		x8, x0, 70332	# 1545
	mul		x6, x30, x6	# 1545
	add		x6, x8, x6	# 1545
	lw		x6, 0(x6)	# 1545
	lw		x8, -8(x2)	# 1546
	lw		x9, -4(x2)	# 1546
	lw		x29, -12(x2)	# 1546
	sw		x5, -32(x2)	# 1546
	addi	x5, x6, 0
	addi	x4, x8, 0
	addi	x6, x9, 0
	sw		x1, -36(x2)	# 1546
	addi	x2, x2, -40	# 1546
	lw		x31, 0(x29)	# 1546
	jalr	x1, x31, 0	# 1546
	addi	x2, x2, 40	# 1546
	lw		x1, -36(x2)	# 1546
	lw		x4, -24(x2)	# 1547
	lw		x5, -32(x2)	# 1547
	add		x4, x5, x4	# 1547
	lw		x5, -20(x2)	# 1547
	lw		x6, -4(x2)	# 1547
	lw		x29, 0(x2)	# 1547
	lw		x31, 0(x29)	# 1547
	jalr	x0, x31, 0	# 1547
beq.36676:
	jalr	x0, x1, 0	# 1548
beq.36675:
	jalr	x0, x1, 0	# 1548
trace_or_matrix.2847.18809:
	lw		x7, 32(x29)	# 1553
	lw		x8, 28(x29)	# 1553
	lw		x9, 24(x29)	# 1553
	lw		x10, 20(x29)	# 1553
	lw		x11, 16(x29)	# 1553
	lw		x12, 12(x29)	# 1553
	lw		x13, 8(x29)	# 1553
	flw		f1, 4(x29)	# 1553
	mul		x14, x30, x4	# 1553
	add		x14, x5, x14	# 1553
	lw		x14, 0(x14)	# 1553
	mul		x15, x30, x12	# 1554
	add		x15, x14, x15	# 1554
	lw		x15, 0(x15)	# 1554
	beq		x15, x10, beq.36679	# 1555
	addi	x16, x0, 99	# 1558
	sw		x6, 0(x2)	# 1558
	sw		x5, -4(x2)	# 1558
	sw		x29, -8(x2)	# 1558
	sw		x13, -12(x2)	# 1558
	sw		x4, -16(x2)	# 1558
	beq		x15, x16, beq.36681	# 1558
	lui		x16, 70048	# 1069
	ori		x16, x0, 70048	# 1069
	mul		x15, x30, x15	# 1069
	add		x15, x16, x15	# 1069
	lw		x15, 0(x15)	# 1069
	lui		x16, 70636	# 1071
	ori		x16, x0, 70636	# 1071
	mul		x17, x30, x12	# 1071
	add		x16, x16, x17	# 1071
	flw		f2, 0(x16)	# 1071
	lw		x16, 20(x15)	# 468
	mul		x17, x30, x12	# 473
	add		x16, x16, x17	# 473
	flw		f3, 0(x16)	# 473
	fsub	f2, f2, f3	# 1071
	lui		x16, 70636	# 1072
	ori		x16, x0, 70636	# 1072
	mul		x17, x30, x13	# 1072
	add		x16, x16, x17	# 1072
	flw		f3, 0(x16)	# 1072
	lw		x16, 20(x15)	# 478
	mul		x17, x30, x13	# 483
	add		x16, x16, x17	# 483
	flw		f4, 0(x16)	# 483
	fsub	f3, f3, f4	# 1072
	lui		x16, 70636	# 1073
	ori		x16, x0, 70636	# 1073
	mul		x17, x30, x9	# 1073
	add		x16, x16, x17	# 1073
	flw		f4, 0(x16)	# 1073
	lw		x16, 20(x15)	# 488
	mul		x17, x30, x9	# 493
	add		x16, x16, x17	# 493
	flw		f5, 0(x16)	# 493
	fsub	f4, f4, f5	# 1073
	lw		x16, 4(x15)	# 390
	beq		x16, x13, beq.36683	# 1076
	beq		x16, x9, beq.36685	# 1077
	mul		x16, x30, x12	# 1043
	add		x16, x6, x16	# 1043
	flw		f5, 0(x16)	# 1043
	mul		x16, x30, x13	# 1043
	add		x16, x6, x16	# 1043
	flw		f6, 0(x16)	# 1043
	mul		x16, x30, x9	# 1043
	add		x16, x6, x16	# 1043
	flw		f7, 0(x16)	# 1043
	fmul	f8, f5, f5	# 127
	lw		x16, 16(x15)	# 428
	mul		x17, x30, x12	# 433
	add		x16, x16, x17	# 433
	flw		f9, 0(x16)	# 433
	fmul	f8, f8, f9	# 1004
	fmul	f10, f6, f6	# 127
	lw		x16, 16(x15)	# 438
	mul		x17, x30, x13	# 443
	add		x16, x16, x17	# 443
	flw		f11, 0(x16)	# 443
	fmul	f10, f10, f11	# 1004
	fadd	f8, f8, f10	# 1004
	fmul	f10, f7, f7	# 127
	lw		x16, 16(x15)	# 448
	mul		x17, x30, x9	# 453
	add		x16, x16, x17	# 453
	flw		f12, 0(x16)	# 453
	fmul	f10, f10, f12	# 1004
	fadd	f8, f8, f10	# 1004
	lw		x16, 12(x15)	# 419
	beq		x16, x12, beq_cont.36686	# 1006
	fmul	f10, f6, f7	# 1010
	lw		x17, 36(x15)	# 548
	mul		x18, x30, x12	# 553
	add		x17, x17, x18	# 553
	flw		f13, 0(x17)	# 553
	fmul	f10, f10, f13	# 1010
	fadd	f8, f8, f10	# 1009
	fmul	f10, f7, f5	# 1011
	lw		x17, 36(x15)	# 558
	mul		x18, x30, x13	# 563
	add		x17, x17, x18	# 563
	flw		f13, 0(x17)	# 563
	fmul	f10, f10, f13	# 1011
	fadd	f8, f8, f10	# 1009
	fmul	f10, f5, f6	# 1012
	lw		x17, 36(x15)	# 568
	mul		x18, x30, x9	# 573
	add		x17, x17, x18	# 573
	flw		f13, 0(x17)	# 573
	fmul	f10, f10, f13	# 1012
	fadd	f8, f8, f10	# 1009
beq_cont.36686:
	feq		x31, f8, f1	# 120
	beq		x31, x0, feq_else.36688	# 120
	addi	x11, x0, 0	# 1046
	jal		x0, feq_cont.36687	# 120
feq_else.36688:
	fmul	f10, f5, f2	# 1018
	fmul	f10, f10, f9	# 1018
	fmul	f13, f6, f3	# 1019
	fmul	f13, f13, f11	# 1019
	fadd	f10, f10, f13	# 1018
	fmul	f13, f7, f4	# 1020
	fmul	f13, f13, f12	# 1020
	fadd	f10, f10, f13	# 1018
	beq		x16, x12, beq.36690	# 1022
	fmul	f13, f7, f3	# 1026
	fmul	f14, f6, f4	# 1026
	fadd	f13, f13, f14	# 1026
	lw		x17, 36(x15)	# 548
	mul		x18, x30, x12	# 553
	add		x17, x17, x18	# 553
	flw		f14, 0(x17)	# 553
	fmul	f13, f13, f14	# 1026
	fmul	f14, f5, f4	# 1027
	fmul	f7, f7, f2	# 1027
	fadd	f7, f14, f7	# 1027
	lw		x17, 36(x15)	# 558
	mul		x18, x30, x13	# 563
	add		x17, x17, x18	# 563
	flw		f14, 0(x17)	# 563
	fmul	f7, f7, f14	# 1027
	fadd	f7, f13, f7	# 1026
	fmul	f5, f5, f3	# 1028
	fmul	f6, f6, f2	# 1028
	fadd	f5, f5, f6	# 1028
	lw		x17, 36(x15)	# 568
	mul		x18, x30, x9	# 573
	add		x17, x17, x18	# 573
	flw		f6, 0(x17)	# 573
	fmul	f5, f5, f6	# 1028
	fadd	f5, f7, f5	# 1026
	fadd	f6, f0, f26	# 126
	fmul	f5, f5, f6	# 126
	fadd	f5, f10, f5	# 1025
	jal		x0, beq_cont.36689	# 1022
beq.36690:
	fadd	f5, f0, f10	# 1023
beq_cont.36689:
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f9	# 1004
	fmul	f7, f3, f3	# 127
	fmul	f7, f7, f11	# 1004
	fadd	f6, f6, f7	# 1004
	fmul	f7, f4, f4	# 127
	fmul	f7, f7, f12	# 1004
	fadd	f6, f6, f7	# 1004
	beq		x16, x12, beq.36692	# 1006
	fmul	f7, f3, f4	# 1010
	lw		x16, 36(x15)	# 548
	mul		x17, x30, x12	# 553
	add		x16, x16, x17	# 553
	flw		f9, 0(x16)	# 553
	fmul	f7, f7, f9	# 1010
	fadd	f6, f6, f7	# 1009
	fmul	f4, f4, f2	# 1011
	lw		x16, 36(x15)	# 558
	mul		x17, x30, x13	# 563
	add		x16, x16, x17	# 563
	flw		f7, 0(x16)	# 563
	fmul	f4, f4, f7	# 1011
	fadd	f4, f6, f4	# 1009
	fmul	f2, f2, f3	# 1012
	lw		x16, 36(x15)	# 568
	mul		x17, x30, x9	# 573
	add		x16, x16, x17	# 573
	flw		f3, 0(x16)	# 573
	fmul	f2, f2, f3	# 1012
	fadd	f2, f4, f2	# 1009
	jal		x0, beq_cont.36691	# 1006
beq.36692:
	fadd	f2, f0, f6	# 1007
beq_cont.36691:
	lw		x16, 4(x15)	# 390
	beq		x16, x11, beq.36694	# 1053
	jal		x0, beq_cont.36693	# 1053
beq.36694:
	fadd	f3, f0, f16	# 1053
	fsub	f2, f2, f3	# 1053
beq_cont.36693:
	fmul	f3, f5, f5	# 127
	fmul	f2, f8, f2	# 1055
	fsub	f2, f3, f2	# 1055
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.36696	# 121
	addi	x11, x0, 0	# 1063
	jal		x0, fle_cont.36695	# 121
fle_else.36696:
	fsqrt	f1, f2	# 1058
	lw		x11, 24(x15)	# 410
	beq		x11, x12, beq.36698	# 1059
	jal		x0, beq_cont.36697	# 1059
beq.36698:
	fsub	f1, f0, f1	# 123
beq_cont.36697:
	fsub	f1, f1, f5	# 1060
	fdiv	f1, f1, f8	# 1060
	lui		x11, 70540	# 1060
	ori		x11, x0, 70540	# 1060
	mul		x15, x30, x12	# 1060
	add		x11, x11, x15	# 1060
	fsw		f1, 0(x11)	# 1060
	addi	x11, x0, 1	# 1060
fle_cont.36695:
feq_cont.36687:
	jal		x0, beq_cont.36684	# 1077
beq.36685:
	lw		x11, 16(x15)	# 458
	mul		x15, x30, x12	# 329
	add		x15, x6, x15	# 329
	flw		f5, 0(x15)	# 329
	mul		x15, x30, x12	# 329
	add		x15, x11, x15	# 329
	flw		f6, 0(x15)	# 329
	fmul	f5, f5, f6	# 329
	mul		x15, x30, x13	# 329
	add		x15, x6, x15	# 329
	flw		f7, 0(x15)	# 329
	mul		x15, x30, x13	# 329
	add		x15, x11, x15	# 329
	flw		f8, 0(x15)	# 329
	fmul	f7, f7, f8	# 329
	fadd	f5, f5, f7	# 329
	mul		x15, x30, x9	# 329
	add		x15, x6, x15	# 329
	flw		f7, 0(x15)	# 329
	mul		x15, x30, x9	# 329
	add		x11, x11, x15	# 329
	flw		f9, 0(x11)	# 329
	fmul	f7, f7, f9	# 329
	fadd	f5, f5, f7	# 329
	fle		x31, f5, f1	# 121
	beq		x31, x0, fle_else.36700	# 121
	addi	x11, x0, 0	# 996
	jal		x0, fle_cont.36699	# 121
fle_else.36700:
	fmul	f1, f6, f2	# 334
	fmul	f2, f8, f3	# 334
	fadd	f1, f1, f2	# 334
	fmul	f2, f9, f4	# 334
	fadd	f1, f1, f2	# 334
	fsub	f1, f0, f1	# 123
	fdiv	f1, f1, f5	# 994
	lui		x11, 70540	# 994
	ori		x11, x0, 70540	# 994
	mul		x15, x30, x12	# 994
	add		x11, x11, x15	# 994
	fsw		f1, 0(x11)	# 994
	addi	x11, x0, 1	# 995
fle_cont.36699:
beq_cont.36684:
	jal		x0, beq_cont.36682	# 1076
beq.36683:
	mul		x11, x30, x12	# 965
	add		x11, x6, x11	# 965
	flw		f5, 0(x11)	# 965
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.36702	# 120
	addi	x11, x0, 0	# 965
	jal		x0, feq_cont.36701	# 120
feq_else.36702:
	lw		x11, 16(x15)	# 458
	lw		x16, 24(x15)	# 410
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.36704	# 122
	addi	x17, x0, 0	# 122
	jal		x0, fle_cont.36703	# 122
fle_else.36704:
	addi	x17, x0, 1	# 122
fle_cont.36703:
	beq		x16, x12, beq.36706	# 241
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.36708	# 122
	addi	x16, x0, 1	# 241
	jal		x0, fle_cont.36707	# 122
fle_else.36708:
	addi	x16, x0, 0	# 241
fle_cont.36707:
	jal		x0, beq_cont.36705	# 241
beq.36706:
	addi	x16, x17, 0	# 241
beq_cont.36705:
	mul		x17, x30, x12	# 967
	add		x17, x11, x17	# 967
	flw		f6, 0(x17)	# 967
	beq		x16, x12, beq.36710	# 256
	jal		x0, beq_cont.36709	# 256
beq.36710:
	fsub	f6, f0, f6	# 123
beq_cont.36709:
	fsub	f6, f6, f2	# 969
	fdiv	f5, f6, f5	# 969
	mul		x16, x30, x13	# 970
	add		x16, x6, x16	# 970
	flw		f6, 0(x16)	# 970
	fmul	f6, f5, f6	# 970
	fadd	f6, f6, f3	# 970
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.36711	# 124
	fsub	f6, f0, f6	# 124
fle_cont.36711:
	mul		x16, x30, x13	# 970
	add		x16, x11, x16	# 970
	flw		f7, 0(x16)	# 970
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.36713	# 125
	addi	x11, x0, 0	# 974
	jal		x0, fle_cont.36712	# 125
fle_else.36713:
	mul		x16, x30, x9	# 971
	add		x16, x6, x16	# 971
	flw		f6, 0(x16)	# 971
	fmul	f6, f5, f6	# 971
	fadd	f6, f6, f4	# 971
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.36714	# 124
	fsub	f6, f0, f6	# 124
fle_cont.36714:
	mul		x16, x30, x9	# 971
	add		x11, x11, x16	# 971
	flw		f7, 0(x11)	# 971
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.36716	# 125
	addi	x11, x0, 0	# 973
	jal		x0, fle_cont.36715	# 125
fle_else.36716:
	lui		x11, 70540	# 972
	ori		x11, x0, 70540	# 972
	mul		x16, x30, x12	# 972
	add		x11, x11, x16	# 972
	fsw		f5, 0(x11)	# 972
	addi	x11, x0, 1	# 972
fle_cont.36715:
fle_cont.36712:
feq_cont.36701:
	beq		x11, x12, beq.36718	# 980
	addi	x11, x0, 1	# 980
	jal		x0, beq_cont.36717	# 980
beq.36718:
	mul		x11, x30, x13	# 965
	add		x11, x6, x11	# 965
	flw		f5, 0(x11)	# 965
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.36720	# 120
	addi	x11, x0, 0	# 965
	jal		x0, feq_cont.36719	# 120
feq_else.36720:
	lw		x11, 16(x15)	# 458
	lw		x16, 24(x15)	# 410
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.36722	# 122
	addi	x17, x0, 0	# 122
	jal		x0, fle_cont.36721	# 122
fle_else.36722:
	addi	x17, x0, 1	# 122
fle_cont.36721:
	beq		x16, x12, beq.36724	# 241
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.36726	# 122
	addi	x16, x0, 1	# 241
	jal		x0, fle_cont.36725	# 122
fle_else.36726:
	addi	x16, x0, 0	# 241
fle_cont.36725:
	jal		x0, beq_cont.36723	# 241
beq.36724:
	addi	x16, x17, 0	# 241
beq_cont.36723:
	mul		x17, x30, x13	# 967
	add		x17, x11, x17	# 967
	flw		f6, 0(x17)	# 967
	beq		x16, x12, beq.36728	# 256
	jal		x0, beq_cont.36727	# 256
beq.36728:
	fsub	f6, f0, f6	# 123
beq_cont.36727:
	fsub	f6, f6, f3	# 969
	fdiv	f5, f6, f5	# 969
	mul		x16, x30, x9	# 970
	add		x16, x6, x16	# 970
	flw		f6, 0(x16)	# 970
	fmul	f6, f5, f6	# 970
	fadd	f6, f6, f4	# 970
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.36729	# 124
	fsub	f6, f0, f6	# 124
fle_cont.36729:
	mul		x16, x30, x9	# 970
	add		x16, x11, x16	# 970
	flw		f7, 0(x16)	# 970
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.36731	# 125
	addi	x11, x0, 0	# 974
	jal		x0, fle_cont.36730	# 125
fle_else.36731:
	mul		x16, x30, x12	# 971
	add		x16, x6, x16	# 971
	flw		f6, 0(x16)	# 971
	fmul	f6, f5, f6	# 971
	fadd	f6, f6, f2	# 971
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.36732	# 124
	fsub	f6, f0, f6	# 124
fle_cont.36732:
	mul		x16, x30, x12	# 971
	add		x11, x11, x16	# 971
	flw		f7, 0(x11)	# 971
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.36734	# 125
	addi	x11, x0, 0	# 973
	jal		x0, fle_cont.36733	# 125
fle_else.36734:
	lui		x11, 70540	# 972
	ori		x11, x0, 70540	# 972
	mul		x16, x30, x12	# 972
	add		x11, x11, x16	# 972
	fsw		f5, 0(x11)	# 972
	addi	x11, x0, 1	# 972
fle_cont.36733:
fle_cont.36730:
feq_cont.36719:
	beq		x11, x12, beq.36736	# 981
	addi	x11, x0, 2	# 981
	jal		x0, beq_cont.36735	# 981
beq.36736:
	mul		x11, x30, x9	# 965
	add		x11, x6, x11	# 965
	flw		f5, 0(x11)	# 965
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.36738	# 120
	addi	x11, x0, 0	# 965
	jal		x0, feq_cont.36737	# 120
feq_else.36738:
	lw		x11, 16(x15)	# 458
	lw		x15, 24(x15)	# 410
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.36740	# 122
	addi	x16, x0, 0	# 122
	jal		x0, fle_cont.36739	# 122
fle_else.36740:
	addi	x16, x0, 1	# 122
fle_cont.36739:
	beq		x15, x12, beq.36742	# 241
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.36744	# 122
	addi	x15, x0, 1	# 241
	jal		x0, fle_cont.36743	# 122
fle_else.36744:
	addi	x15, x0, 0	# 241
fle_cont.36743:
	jal		x0, beq_cont.36741	# 241
beq.36742:
	addi	x15, x16, 0	# 241
beq_cont.36741:
	mul		x16, x30, x9	# 967
	add		x16, x11, x16	# 967
	flw		f6, 0(x16)	# 967
	beq		x15, x12, beq.36746	# 256
	jal		x0, beq_cont.36745	# 256
beq.36746:
	fsub	f6, f0, f6	# 123
beq_cont.36745:
	fsub	f4, f6, f4	# 969
	fdiv	f4, f4, f5	# 969
	mul		x15, x30, x12	# 970
	add		x15, x6, x15	# 970
	flw		f5, 0(x15)	# 970
	fmul	f5, f4, f5	# 970
	fadd	f2, f5, f2	# 970
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.36747	# 124
	fsub	f2, f0, f2	# 124
fle_cont.36747:
	mul		x15, x30, x12	# 970
	add		x15, x11, x15	# 970
	flw		f5, 0(x15)	# 970
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.36749	# 125
	addi	x11, x0, 0	# 974
	jal		x0, fle_cont.36748	# 125
fle_else.36749:
	mul		x15, x30, x13	# 971
	add		x15, x6, x15	# 971
	flw		f2, 0(x15)	# 971
	fmul	f2, f4, f2	# 971
	fadd	f2, f2, f3	# 971
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_else.36751	# 124
	fsub	f1, f0, f2	# 124
	jal		x0, fle_cont.36750	# 124
fle_else.36751:
	fadd	f1, f0, f2	# 124
fle_cont.36750:
	mul		x15, x30, x13	# 971
	add		x11, x11, x15	# 971
	flw		f2, 0(x11)	# 971
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.36753	# 125
	addi	x11, x0, 0	# 973
	jal		x0, fle_cont.36752	# 125
fle_else.36753:
	lui		x11, 70540	# 972
	ori		x11, x0, 70540	# 972
	mul		x15, x30, x12	# 972
	add		x11, x11, x15	# 972
	fsw		f4, 0(x11)	# 972
	addi	x11, x0, 1	# 972
fle_cont.36752:
fle_cont.36748:
feq_cont.36737:
	beq		x11, x12, beq.36755	# 982
	addi	x11, x0, 3	# 982
	jal		x0, beq_cont.36754	# 982
beq.36755:
	addi	x11, x0, 0	# 983
beq_cont.36754:
beq_cont.36735:
beq_cont.36717:
beq_cont.36682:
	beq		x11, x12, beq_cont.36756	# 1564
	lui		x11, 70540	# 1565
	ori		x11, x0, 70540	# 1565
	mul		x15, x30, x12	# 1565
	add		x11, x11, x15	# 1565
	flw		f1, 0(x11)	# 1565
	lui		x11, 70548	# 1566
	ori		x11, x0, 70548	# 1566
	mul		x15, x30, x12	# 1566
	add		x11, x11, x15	# 1566
	flw		f2, 0(x11)	# 1566
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.36758	# 125
	jal		x0, fle_cont.36757	# 125
fle_else.36758:
	mul		x11, x30, x13	# 1543
	add		x11, x14, x11	# 1543
	lw		x11, 0(x11)	# 1543
	beq		x11, x10, beq_cont.36759	# 1544
	lui		x10, 70332	# 1545
	ori		x10, x0, 70332	# 1545
	mul		x11, x30, x11	# 1545
	add		x10, x10, x11	# 1545
	lw		x10, 0(x10)	# 1545
	sw		x14, -20(x2)	# 1546
	sw		x9, -24(x2)	# 1546
	sw		x7, -28(x2)	# 1546
	addi	x5, x10, 0
	addi	x4, x12, 0
	addi	x29, x8, 0
	sw		x1, -32(x2)	# 1546
	addi	x2, x2, -36	# 1546
	lw		x31, 0(x29)	# 1546
	jalr	x1, x31, 0	# 1546
	addi	x2, x2, 36	# 1546
	lw		x1, -32(x2)	# 1546
	lw		x4, -24(x2)	# 1547
	lw		x5, -20(x2)	# 1547
	lw		x6, 0(x2)	# 1547
	lw		x29, -28(x2)	# 1547
	sw		x1, -32(x2)	# 1547
	addi	x2, x2, -36	# 1547
	lw		x31, 0(x29)	# 1547
	jalr	x1, x31, 0	# 1547
	addi	x2, x2, 36	# 1547
	lw		x1, -32(x2)	# 1547
beq_cont.36759:
fle_cont.36757:
beq_cont.36756:
	jal		x0, beq_cont.36680	# 1558
beq.36681:
	mul		x11, x30, x13	# 1543
	add		x11, x14, x11	# 1543
	lw		x11, 0(x11)	# 1543
	beq		x11, x10, beq_cont.36760	# 1544
	lui		x10, 70332	# 1545
	ori		x10, x0, 70332	# 1545
	mul		x11, x30, x11	# 1545
	add		x10, x10, x11	# 1545
	lw		x10, 0(x10)	# 1545
	sw		x14, -20(x2)	# 1546
	sw		x9, -24(x2)	# 1546
	sw		x7, -28(x2)	# 1546
	addi	x5, x10, 0
	addi	x4, x12, 0
	addi	x29, x8, 0
	sw		x1, -32(x2)	# 1546
	addi	x2, x2, -36	# 1546
	lw		x31, 0(x29)	# 1546
	jalr	x1, x31, 0	# 1546
	addi	x2, x2, 36	# 1546
	lw		x1, -32(x2)	# 1546
	lw		x4, -24(x2)	# 1547
	lw		x5, -20(x2)	# 1547
	lw		x6, 0(x2)	# 1547
	lw		x29, -28(x2)	# 1547
	sw		x1, -32(x2)	# 1547
	addi	x2, x2, -36	# 1547
	lw		x31, 0(x29)	# 1547
	jalr	x1, x31, 0	# 1547
	addi	x2, x2, 36	# 1547
	lw		x1, -32(x2)	# 1547
beq_cont.36760:
beq_cont.36680:
	lw		x4, -12(x2)	# 1571
	lw		x5, -16(x2)	# 1571
	add		x4, x5, x4	# 1571
	lw		x5, -4(x2)	# 1571
	lw		x6, 0(x2)	# 1571
	lw		x29, -8(x2)	# 1571
	lw		x31, 0(x29)	# 1571
	jalr	x0, x31, 0	# 1571
beq.36679:
	jalr	x0, x1, 0	# 1556
solve_each_element_fast.2853.18813:
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
	beq		x15, x10, beq.36762	# 1597
	lui		x16, 70048	# 1210
	ori		x16, x0, 70048	# 1210
	mul		x17, x30, x15	# 1210
	add		x16, x16, x17	# 1210
	lw		x16, 0(x16)	# 1210
	lw		x17, 40(x16)	# 585
	mul		x18, x30, x12	# 1212
	add		x18, x17, x18	# 1212
	flw		f2, 0(x18)	# 1212
	mul		x18, x30, x13	# 1213
	add		x18, x17, x18	# 1213
	flw		f3, 0(x18)	# 1213
	mul		x18, x30, x9	# 1214
	add		x18, x17, x18	# 1214
	flw		f4, 0(x18)	# 1214
	lw		x18, 4(x6)	# 682
	mul		x19, x30, x15	# 1216
	add		x18, x18, x19	# 1216
	lw		x18, 0(x18)	# 1216
	lw		x19, 4(x16)	# 390
	beq		x19, x13, beq.36764	# 1218
	beq		x19, x9, beq.36766	# 1220
	mul		x19, x30, x12	# 1192
	add		x19, x18, x19	# 1192
	flw		f5, 0(x19)	# 1192
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.36768	# 120
	addi	x16, x0, 0	# 1194
	jal		x0, feq_cont.36767	# 120
feq_else.36768:
	mul		x19, x30, x13	# 1196
	add		x19, x18, x19	# 1196
	flw		f6, 0(x19)	# 1196
	fmul	f2, f6, f2	# 1196
	mul		x19, x30, x9	# 1196
	add		x19, x18, x19	# 1196
	flw		f6, 0(x19)	# 1196
	fmul	f3, f6, f3	# 1196
	fadd	f2, f2, f3	# 1196
	mul		x19, x30, x11	# 1196
	add		x19, x18, x19	# 1196
	flw		f3, 0(x19)	# 1196
	fmul	f3, f3, f4	# 1196
	fadd	f2, f2, f3	# 1196
	mul		x19, x30, x11	# 1197
	add		x17, x17, x19	# 1197
	flw		f3, 0(x17)	# 1197
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1198
	fsub	f3, f4, f3	# 1198
	fle		x31, f3, f1	# 121
	beq		x31, x0, fle_else.36770	# 121
	addi	x16, x0, 0	# 1205
	jal		x0, fle_cont.36769	# 121
fle_else.36770:
	lw		x16, 24(x16)	# 410
	beq		x16, x12, beq.36772	# 1200
	fsqrt	f3, f3	# 1201
	fadd	f2, f2, f3	# 1201
	addi	x16, x0, 4	# 1201
	mul		x16, x30, x16	# 1201
	add		x16, x18, x16	# 1201
	flw		f3, 0(x16)	# 1201
	fmul	f2, f2, f3	# 1201
	lui		x16, 70540	# 1201
	ori		x16, x0, 70540	# 1201
	mul		x17, x30, x12	# 1201
	add		x16, x16, x17	# 1201
	fsw		f2, 0(x16)	# 1201
	jal		x0, beq_cont.36771	# 1200
beq.36772:
	fsqrt	f3, f3	# 1203
	fsub	f2, f2, f3	# 1203
	addi	x16, x0, 4	# 1203
	mul		x16, x30, x16	# 1203
	add		x16, x18, x16	# 1203
	flw		f3, 0(x16)	# 1203
	fmul	f2, f2, f3	# 1203
	lui		x16, 70540	# 1203
	ori		x16, x0, 70540	# 1203
	mul		x17, x30, x12	# 1203
	add		x16, x16, x17	# 1203
	fsw		f2, 0(x16)	# 1203
beq_cont.36771:
	addi	x16, x0, 1	# 1204
fle_cont.36769:
feq_cont.36767:
	jal		x0, beq_cont.36765	# 1220
beq.36766:
	mul		x16, x30, x12	# 1183
	add		x16, x18, x16	# 1183
	flw		f2, 0(x16)	# 1183
	fle		x31, f1, f2	# 122
	beq		x31, x0, fle_else.36774	# 122
	addi	x16, x0, 0	# 1186
	jal		x0, fle_cont.36773	# 122
fle_else.36774:
	mul		x16, x30, x11	# 1184
	add		x16, x17, x16	# 1184
	flw		f3, 0(x16)	# 1184
	fmul	f2, f2, f3	# 1184
	lui		x16, 70540	# 1184
	ori		x16, x0, 70540	# 1184
	mul		x17, x30, x12	# 1184
	add		x16, x16, x17	# 1184
	fsw		f2, 0(x16)	# 1184
	addi	x16, x0, 1	# 1185
fle_cont.36773:
beq_cont.36765:
	jal		x0, beq_cont.36763	# 1218
beq.36764:
	lw		x17, 0(x6)	# 676
	mul		x19, x30, x12	# 1101
	add		x19, x18, x19	# 1101
	flw		f5, 0(x19)	# 1101
	fsub	f5, f5, f2	# 1101
	mul		x19, x30, x13	# 1101
	add		x19, x18, x19	# 1101
	flw		f6, 0(x19)	# 1101
	fmul	f5, f5, f6	# 1101
	mul		x19, x30, x13	# 1103
	add		x19, x17, x19	# 1103
	flw		f7, 0(x19)	# 1103
	fmul	f8, f5, f7	# 1103
	fadd	f8, f8, f3	# 1103
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.36775	# 124
	fsub	f8, f0, f8	# 124
fle_cont.36775:
	lw		x19, 16(x16)	# 438
	mul		x20, x30, x13	# 443
	add		x19, x19, x20	# 443
	flw		f9, 0(x19)	# 443
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.36777	# 125
	addi	x19, x0, 0	# 1107
	jal		x0, fle_cont.36776	# 125
fle_else.36777:
	mul		x19, x30, x9	# 1104
	add		x19, x17, x19	# 1104
	flw		f8, 0(x19)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.36778	# 124
	fsub	f8, f0, f8	# 124
fle_cont.36778:
	lw		x19, 16(x16)	# 448
	mul		x20, x30, x9	# 453
	add		x19, x19, x20	# 453
	flw		f9, 0(x19)	# 453
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.36780	# 125
	addi	x19, x0, 0	# 1106
	jal		x0, fle_cont.36779	# 125
fle_else.36780:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.36782	# 120
	addi	x19, x0, 0	# 1105
	jal		x0, feq_cont.36781	# 120
feq_else.36782:
	addi	x19, x0, 1	# 1105
feq_cont.36781:
fle_cont.36779:
fle_cont.36776:
	beq		x19, x12, beq.36784	# 1102
	lui		x16, 70540	# 1109
	ori		x16, x0, 70540	# 1109
	mul		x17, x30, x12	# 1109
	add		x16, x16, x17	# 1109
	fsw		f5, 0(x16)	# 1109
	addi	x16, x0, 1	# 1109
	jal		x0, beq_cont.36783	# 1102
beq.36784:
	mul		x19, x30, x9	# 1110
	add		x19, x18, x19	# 1110
	flw		f5, 0(x19)	# 1110
	fsub	f5, f5, f3	# 1110
	mul		x19, x30, x11	# 1110
	add		x19, x18, x19	# 1110
	flw		f6, 0(x19)	# 1110
	fmul	f5, f5, f6	# 1110
	mul		x19, x30, x12	# 1112
	add		x19, x17, x19	# 1112
	flw		f8, 0(x19)	# 1112
	fmul	f9, f5, f8	# 1112
	fadd	f9, f9, f2	# 1112
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.36785	# 124
	fsub	f9, f0, f9	# 124
fle_cont.36785:
	lw		x19, 16(x16)	# 428
	mul		x20, x30, x12	# 433
	add		x19, x19, x20	# 433
	flw		f10, 0(x19)	# 433
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.36787	# 125
	addi	x17, x0, 0	# 1116
	jal		x0, fle_cont.36786	# 125
fle_else.36787:
	mul		x19, x30, x9	# 1113
	add		x17, x17, x19	# 1113
	flw		f9, 0(x17)	# 1113
	fmul	f9, f5, f9	# 1113
	fadd	f9, f9, f4	# 1113
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.36788	# 124
	fsub	f9, f0, f9	# 124
fle_cont.36788:
	lw		x17, 16(x16)	# 448
	mul		x19, x30, x9	# 453
	add		x17, x17, x19	# 453
	flw		f10, 0(x17)	# 453
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.36790	# 125
	addi	x17, x0, 0	# 1115
	jal		x0, fle_cont.36789	# 125
fle_else.36790:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.36792	# 120
	addi	x17, x0, 0	# 1114
	jal		x0, feq_cont.36791	# 120
feq_else.36792:
	addi	x17, x0, 1	# 1114
feq_cont.36791:
fle_cont.36789:
fle_cont.36786:
	beq		x17, x12, beq.36794	# 1111
	lui		x16, 70540	# 1118
	ori		x16, x0, 70540	# 1118
	mul		x17, x30, x12	# 1118
	add		x16, x16, x17	# 1118
	fsw		f5, 0(x16)	# 1118
	addi	x16, x0, 2	# 1118
	jal		x0, beq_cont.36793	# 1111
beq.36794:
	addi	x17, x0, 4	# 1119
	mul		x17, x30, x17	# 1119
	add		x17, x18, x17	# 1119
	flw		f5, 0(x17)	# 1119
	fsub	f4, f5, f4	# 1119
	mul		x17, x30, x8	# 1119
	add		x17, x18, x17	# 1119
	flw		f5, 0(x17)	# 1119
	fmul	f4, f4, f5	# 1119
	fmul	f6, f4, f8	# 1121
	fadd	f2, f6, f2	# 1121
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.36795	# 124
	fsub	f2, f0, f2	# 124
fle_cont.36795:
	lw		x17, 16(x16)	# 428
	mul		x18, x30, x12	# 433
	add		x17, x17, x18	# 433
	flw		f6, 0(x17)	# 433
	fle		x31, f6, f2	# 125
	beq		x31, x0, fle_else.36797	# 125
	addi	x16, x0, 0	# 1125
	jal		x0, fle_cont.36796	# 125
fle_else.36797:
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.36798	# 124
	fsub	f2, f0, f2	# 124
fle_cont.36798:
	lw		x16, 16(x16)	# 438
	mul		x17, x30, x13	# 443
	add		x16, x16, x17	# 443
	flw		f3, 0(x16)	# 443
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.36800	# 125
	addi	x16, x0, 0	# 1124
	jal		x0, fle_cont.36799	# 125
fle_else.36800:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.36802	# 120
	addi	x16, x0, 0	# 1123
	jal		x0, feq_cont.36801	# 120
feq_else.36802:
	addi	x16, x0, 1	# 1123
feq_cont.36801:
fle_cont.36799:
fle_cont.36796:
	beq		x16, x12, beq.36804	# 1120
	lui		x16, 70540	# 1127
	ori		x16, x0, 70540	# 1127
	mul		x17, x30, x12	# 1127
	add		x16, x16, x17	# 1127
	fsw		f4, 0(x16)	# 1127
	addi	x16, x0, 3	# 1127
	jal		x0, beq_cont.36803	# 1120
beq.36804:
	addi	x16, x0, 0	# 1129
beq_cont.36803:
beq_cont.36793:
beq_cont.36783:
beq_cont.36763:
	beq		x16, x12, beq.36805	# 1600
	lui		x17, 70540	# 1604
	ori		x17, x0, 70540	# 1604
	mul		x18, x30, x12	# 1604
	add		x17, x17, x18	# 1604
	flw		f2, 0(x17)	# 1604
	sw		x7, 0(x2)	# 125
	sw		x29, -4(x2)	# 125
	sw		x8, -8(x2)	# 125
	sw		x11, -12(x2)	# 125
	fsw		f1, -16(x2)	# 125
	sw		x9, -20(x2)	# 125
	sw		x12, -24(x2)	# 125
	sw		x10, -28(x2)	# 125
	sw		x5, -32(x2)	# 125
	sw		x6, -36(x2)	# 125
	sw		x13, -40(x2)	# 125
	sw		x4, -44(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.36807	# 125
	jal		x0, fle_cont.36806	# 125
fle_else.36807:
	lui		x17, 70548	# 1607
	ori		x17, x0, 70548	# 1607
	mul		x18, x30, x12	# 1607
	add		x17, x17, x18	# 1607
	flw		f3, 0(x17)	# 1607
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.36809	# 125
	jal		x0, fle_cont.36808	# 125
fle_else.36809:
	fadd	f3, f0, f19	# 1609
	fadd	f2, f2, f3	# 1609
	mul		x17, x30, x12	# 1610
	add		x17, x14, x17	# 1610
	flw		f3, 0(x17)	# 1610
	fmul	f3, f3, f2	# 1610
	lui		x17, 70648	# 1610
	ori		x17, x0, 70648	# 1610
	mul		x18, x30, x12	# 1610
	add		x17, x17, x18	# 1610
	flw		f4, 0(x17)	# 1610
	fadd	f3, f3, f4	# 1610
	mul		x17, x30, x13	# 1611
	add		x17, x14, x17	# 1611
	flw		f4, 0(x17)	# 1611
	fmul	f4, f4, f2	# 1611
	lui		x17, 70648	# 1611
	ori		x17, x0, 70648	# 1611
	mul		x18, x30, x13	# 1611
	add		x17, x17, x18	# 1611
	flw		f5, 0(x17)	# 1611
	fadd	f4, f4, f5	# 1611
	mul		x17, x30, x9	# 1612
	add		x14, x14, x17	# 1612
	flw		f5, 0(x14)	# 1612
	fmul	f5, f5, f2	# 1612
	lui		x14, 70648	# 1612
	ori		x14, x0, 70648	# 1612
	mul		x17, x30, x9	# 1612
	add		x14, x14, x17	# 1612
	flw		f6, 0(x14)	# 1612
	fadd	f5, f5, f6	# 1612
	sw		x16, -48(x2)	# 1613
	sw		x15, -52(x2)	# 1613
	fsw		f5, -56(x2)	# 1613
	fsw		f4, -60(x2)	# 1613
	fsw		f3, -64(x2)	# 1613
	fsw		f2, -68(x2)	# 1613
	addi	x4, x12, 0
	addi	x29, x7, 0
	fadd	f2, f0, f4
	fadd	f1, f0, f3
	fadd	f3, f0, f5
	sw		x1, -72(x2)	# 1613
	addi	x2, x2, -76	# 1613
	lw		x31, 0(x29)	# 1613
	jalr	x1, x31, 0	# 1613
	addi	x2, x2, 76	# 1613
	lw		x1, -72(x2)	# 1613
	lw		x5, -24(x2)	# 1613
	beq		x4, x5, beq_cont.36810	# 1613
	lui		x4, 70548	# 1615
	ori		x4, x0, 70548	# 1615
	mul		x6, x30, x5	# 1615
	add		x4, x4, x6	# 1615
	flw		f1, -68(x2)	# 1615
	fsw		f1, 0(x4)	# 1615
	lui		x4, 70552	# 277
	ori		x4, x0, 70552	# 277
	mul		x6, x30, x5	# 277
	add		x4, x4, x6	# 277
	flw		f1, -64(x2)	# 277
	fsw		f1, 0(x4)	# 277
	lui		x4, 70552	# 278
	ori		x4, x0, 70552	# 278
	lw		x6, -40(x2)	# 278
	mul		x7, x30, x6	# 278
	add		x4, x4, x7	# 278
	flw		f1, -60(x2)	# 278
	fsw		f1, 0(x4)	# 278
	lui		x4, 70552	# 279
	ori		x4, x0, 70552	# 279
	lw		x7, -20(x2)	# 279
	mul		x8, x30, x7	# 279
	add		x4, x4, x8	# 279
	flw		f1, -56(x2)	# 279
	fsw		f1, 0(x4)	# 279
	lui		x4, 70564	# 1617
	ori		x4, x0, 70564	# 1617
	mul		x8, x30, x5	# 1617
	add		x4, x4, x8	# 1617
	lw		x8, -52(x2)	# 1617
	sw		x8, 0(x4)	# 1617
	lui		x4, 70544	# 1618
	ori		x4, x0, 70544	# 1618
	mul		x8, x30, x5	# 1618
	add		x4, x4, x8	# 1618
	lw		x8, -48(x2)	# 1618
	sw		x8, 0(x4)	# 1618
beq_cont.36810:
fle_cont.36808:
fle_cont.36806:
	lw		x4, -40(x2)	# 1624
	lw		x5, -44(x2)	# 1624
	add		x5, x5, x4	# 1624
	lw		x6, -36(x2)	# 676
	lw		x7, 0(x6)	# 676
	mul		x8, x30, x5	# 1596
	lw		x9, -32(x2)	# 1596
	add		x8, x9, x8	# 1596
	lw		x8, 0(x8)	# 1596
	lw		x10, -28(x2)	# 1597
	beq		x8, x10, beq.36811	# 1597
	lui		x10, 70048	# 1210
	ori		x10, x0, 70048	# 1210
	mul		x11, x30, x8	# 1210
	add		x10, x10, x11	# 1210
	lw		x10, 0(x10)	# 1210
	lw		x11, 40(x10)	# 585
	lw		x12, -24(x2)	# 1212
	mul		x13, x30, x12	# 1212
	add		x13, x11, x13	# 1212
	flw		f1, 0(x13)	# 1212
	mul		x13, x30, x4	# 1213
	add		x13, x11, x13	# 1213
	flw		f2, 0(x13)	# 1213
	lw		x13, -20(x2)	# 1214
	mul		x14, x30, x13	# 1214
	add		x14, x11, x14	# 1214
	flw		f3, 0(x14)	# 1214
	lw		x14, 4(x6)	# 682
	mul		x15, x30, x8	# 1216
	add		x14, x14, x15	# 1216
	lw		x14, 0(x14)	# 1216
	lw		x15, 4(x10)	# 390
	beq		x15, x4, beq.36813	# 1218
	beq		x15, x13, beq.36815	# 1220
	mul		x15, x30, x12	# 1192
	add		x15, x14, x15	# 1192
	flw		f4, 0(x15)	# 1192
	flw		f5, -16(x2)	# 120
	feq		x31, f4, f5	# 120
	beq		x31, x0, feq_else.36817	# 120
	addi	x10, x0, 0	# 1194
	jal		x0, feq_cont.36816	# 120
feq_else.36817:
	mul		x15, x30, x4	# 1196
	add		x15, x14, x15	# 1196
	flw		f6, 0(x15)	# 1196
	fmul	f1, f6, f1	# 1196
	mul		x15, x30, x13	# 1196
	add		x15, x14, x15	# 1196
	flw		f6, 0(x15)	# 1196
	fmul	f2, f6, f2	# 1196
	fadd	f1, f1, f2	# 1196
	lw		x15, -12(x2)	# 1196
	mul		x16, x30, x15	# 1196
	add		x16, x14, x16	# 1196
	flw		f2, 0(x16)	# 1196
	fmul	f2, f2, f3	# 1196
	fadd	f1, f1, f2	# 1196
	mul		x15, x30, x15	# 1197
	add		x11, x11, x15	# 1197
	flw		f2, 0(x11)	# 1197
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1198
	fsub	f2, f3, f2	# 1198
	fle		x31, f2, f5	# 121
	beq		x31, x0, fle_else.36819	# 121
	addi	x10, x0, 0	# 1205
	jal		x0, fle_cont.36818	# 121
fle_else.36819:
	lw		x10, 24(x10)	# 410
	beq		x10, x12, beq.36821	# 1200
	fsqrt	f2, f2	# 1201
	fadd	f1, f1, f2	# 1201
	addi	x10, x0, 4	# 1201
	mul		x10, x30, x10	# 1201
	add		x10, x14, x10	# 1201
	flw		f2, 0(x10)	# 1201
	fmul	f1, f1, f2	# 1201
	lui		x10, 70540	# 1201
	ori		x10, x0, 70540	# 1201
	mul		x11, x30, x12	# 1201
	add		x10, x10, x11	# 1201
	fsw		f1, 0(x10)	# 1201
	jal		x0, beq_cont.36820	# 1200
beq.36821:
	fsqrt	f2, f2	# 1203
	fsub	f1, f1, f2	# 1203
	addi	x10, x0, 4	# 1203
	mul		x10, x30, x10	# 1203
	add		x10, x14, x10	# 1203
	flw		f2, 0(x10)	# 1203
	fmul	f1, f1, f2	# 1203
	lui		x10, 70540	# 1203
	ori		x10, x0, 70540	# 1203
	mul		x11, x30, x12	# 1203
	add		x10, x10, x11	# 1203
	fsw		f1, 0(x10)	# 1203
beq_cont.36820:
	addi	x10, x0, 1	# 1204
fle_cont.36818:
feq_cont.36816:
	jal		x0, beq_cont.36814	# 1220
beq.36815:
	mul		x10, x30, x12	# 1183
	add		x10, x14, x10	# 1183
	flw		f1, 0(x10)	# 1183
	flw		f2, -16(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.36823	# 122
	addi	x10, x0, 0	# 1186
	jal		x0, fle_cont.36822	# 122
fle_else.36823:
	lw		x10, -12(x2)	# 1184
	mul		x10, x30, x10	# 1184
	add		x10, x11, x10	# 1184
	flw		f3, 0(x10)	# 1184
	fmul	f1, f1, f3	# 1184
	lui		x10, 70540	# 1184
	ori		x10, x0, 70540	# 1184
	mul		x11, x30, x12	# 1184
	add		x10, x10, x11	# 1184
	fsw		f1, 0(x10)	# 1184
	addi	x10, x0, 1	# 1185
fle_cont.36822:
beq_cont.36814:
	jal		x0, beq_cont.36812	# 1218
beq.36813:
	lw		x11, 0(x6)	# 676
	mul		x15, x30, x12	# 1101
	add		x15, x14, x15	# 1101
	flw		f4, 0(x15)	# 1101
	fsub	f4, f4, f1	# 1101
	mul		x15, x30, x4	# 1101
	add		x15, x14, x15	# 1101
	flw		f5, 0(x15)	# 1101
	fmul	f4, f4, f5	# 1101
	mul		x15, x30, x4	# 1103
	add		x15, x11, x15	# 1103
	flw		f6, 0(x15)	# 1103
	fmul	f7, f4, f6	# 1103
	fadd	f7, f7, f2	# 1103
	flw		f8, -16(x2)	# 124
	fle		x31, f7, f8	# 124
	beq		x31, x0, fle_cont.36824	# 124
	fsub	f7, f0, f7	# 124
fle_cont.36824:
	lw		x15, 16(x10)	# 438
	mul		x16, x30, x4	# 443
	add		x15, x15, x16	# 443
	flw		f9, 0(x15)	# 443
	fle		x31, f9, f7	# 125
	beq		x31, x0, fle_else.36826	# 125
	addi	x15, x0, 0	# 1107
	jal		x0, fle_cont.36825	# 125
fle_else.36826:
	mul		x15, x30, x13	# 1104
	add		x15, x11, x15	# 1104
	flw		f7, 0(x15)	# 1104
	fmul	f7, f4, f7	# 1104
	fadd	f7, f7, f3	# 1104
	fle		x31, f7, f8	# 124
	beq		x31, x0, fle_cont.36827	# 124
	fsub	f7, f0, f7	# 124
fle_cont.36827:
	lw		x15, 16(x10)	# 448
	mul		x16, x30, x13	# 453
	add		x15, x15, x16	# 453
	flw		f10, 0(x15)	# 453
	fle		x31, f10, f7	# 125
	beq		x31, x0, fle_else.36829	# 125
	addi	x15, x0, 0	# 1106
	jal		x0, fle_cont.36828	# 125
fle_else.36829:
	feq		x31, f5, f8	# 120
	beq		x31, x0, feq_else.36831	# 120
	addi	x15, x0, 0	# 1105
	jal		x0, feq_cont.36830	# 120
feq_else.36831:
	addi	x15, x0, 1	# 1105
feq_cont.36830:
fle_cont.36828:
fle_cont.36825:
	beq		x15, x12, beq.36833	# 1102
	lui		x10, 70540	# 1109
	ori		x10, x0, 70540	# 1109
	mul		x11, x30, x12	# 1109
	add		x10, x10, x11	# 1109
	fsw		f4, 0(x10)	# 1109
	addi	x10, x0, 1	# 1109
	jal		x0, beq_cont.36832	# 1102
beq.36833:
	mul		x15, x30, x13	# 1110
	add		x15, x14, x15	# 1110
	flw		f4, 0(x15)	# 1110
	fsub	f4, f4, f2	# 1110
	lw		x15, -12(x2)	# 1110
	mul		x15, x30, x15	# 1110
	add		x15, x14, x15	# 1110
	flw		f5, 0(x15)	# 1110
	fmul	f4, f4, f5	# 1110
	mul		x15, x30, x12	# 1112
	add		x15, x11, x15	# 1112
	flw		f7, 0(x15)	# 1112
	fmul	f10, f4, f7	# 1112
	fadd	f10, f10, f1	# 1112
	fle		x31, f10, f8	# 124
	beq		x31, x0, fle_cont.36834	# 124
	fsub	f10, f0, f10	# 124
fle_cont.36834:
	lw		x15, 16(x10)	# 428
	mul		x16, x30, x12	# 433
	add		x15, x15, x16	# 433
	flw		f11, 0(x15)	# 433
	fle		x31, f11, f10	# 125
	beq		x31, x0, fle_else.36836	# 125
	addi	x10, x0, 0	# 1116
	jal		x0, fle_cont.36835	# 125
fle_else.36836:
	mul		x15, x30, x13	# 1113
	add		x11, x11, x15	# 1113
	flw		f10, 0(x11)	# 1113
	fmul	f10, f4, f10	# 1113
	fadd	f10, f10, f3	# 1113
	fle		x31, f10, f8	# 124
	beq		x31, x0, fle_cont.36837	# 124
	fsub	f10, f0, f10	# 124
fle_cont.36837:
	lw		x10, 16(x10)	# 448
	mul		x11, x30, x13	# 453
	add		x10, x10, x11	# 453
	flw		f12, 0(x10)	# 453
	fle		x31, f12, f10	# 125
	beq		x31, x0, fle_else.36839	# 125
	addi	x10, x0, 0	# 1115
	jal		x0, fle_cont.36838	# 125
fle_else.36839:
	feq		x31, f5, f8	# 120
	beq		x31, x0, feq_else.36841	# 120
	addi	x10, x0, 0	# 1114
	jal		x0, feq_cont.36840	# 120
feq_else.36841:
	addi	x10, x0, 1	# 1114
feq_cont.36840:
fle_cont.36838:
fle_cont.36835:
	beq		x10, x12, beq.36843	# 1111
	lui		x10, 70540	# 1118
	ori		x10, x0, 70540	# 1118
	mul		x11, x30, x12	# 1118
	add		x10, x10, x11	# 1118
	fsw		f4, 0(x10)	# 1118
	addi	x10, x0, 2	# 1118
	jal		x0, beq_cont.36842	# 1111
beq.36843:
	addi	x10, x0, 4	# 1119
	mul		x10, x30, x10	# 1119
	add		x10, x14, x10	# 1119
	flw		f4, 0(x10)	# 1119
	fsub	f3, f4, f3	# 1119
	lw		x10, -8(x2)	# 1119
	mul		x10, x30, x10	# 1119
	add		x10, x14, x10	# 1119
	flw		f4, 0(x10)	# 1119
	fmul	f3, f3, f4	# 1119
	fmul	f5, f3, f7	# 1121
	fadd	f1, f5, f1	# 1121
	fle		x31, f1, f8	# 124
	beq		x31, x0, fle_cont.36844	# 124
	fsub	f1, f0, f1	# 124
fle_cont.36844:
	fle		x31, f11, f1	# 125
	beq		x31, x0, fle_else.36846	# 125
	addi	x10, x0, 0	# 1125
	jal		x0, fle_cont.36845	# 125
fle_else.36846:
	fmul	f1, f3, f6	# 1122
	fadd	f1, f1, f2	# 1122
	fle		x31, f1, f8	# 124
	beq		x31, x0, fle_cont.36847	# 124
	fsub	f1, f0, f1	# 124
fle_cont.36847:
	fle		x31, f9, f1	# 125
	beq		x31, x0, fle_else.36849	# 125
	addi	x10, x0, 0	# 1124
	jal		x0, fle_cont.36848	# 125
fle_else.36849:
	feq		x31, f4, f8	# 120
	beq		x31, x0, feq_else.36851	# 120
	addi	x10, x0, 0	# 1123
	jal		x0, feq_cont.36850	# 120
feq_else.36851:
	addi	x10, x0, 1	# 1123
feq_cont.36850:
fle_cont.36848:
fle_cont.36845:
	beq		x10, x12, beq.36853	# 1120
	lui		x10, 70540	# 1127
	ori		x10, x0, 70540	# 1127
	mul		x11, x30, x12	# 1127
	add		x10, x10, x11	# 1127
	fsw		f3, 0(x10)	# 1127
	addi	x10, x0, 3	# 1127
	jal		x0, beq_cont.36852	# 1120
beq.36853:
	addi	x10, x0, 0	# 1129
beq_cont.36852:
beq_cont.36842:
beq_cont.36832:
beq_cont.36812:
	beq		x10, x12, beq.36854	# 1600
	lui		x11, 70540	# 1604
	ori		x11, x0, 70540	# 1604
	mul		x14, x30, x12	# 1604
	add		x11, x11, x14	# 1604
	flw		f1, 0(x11)	# 1604
	flw		f2, -16(x2)	# 125
	sw		x5, -72(x2)	# 125
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.36856	# 125
	jal		x0, fle_cont.36855	# 125
fle_else.36856:
	lui		x11, 70548	# 1607
	ori		x11, x0, 70548	# 1607
	mul		x14, x30, x12	# 1607
	add		x11, x11, x14	# 1607
	flw		f2, 0(x11)	# 1607
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.36858	# 125
	jal		x0, fle_cont.36857	# 125
fle_else.36858:
	fadd	f2, f0, f19	# 1609
	fadd	f1, f1, f2	# 1609
	mul		x11, x30, x12	# 1610
	add		x11, x7, x11	# 1610
	flw		f2, 0(x11)	# 1610
	fmul	f2, f2, f1	# 1610
	lui		x11, 70648	# 1610
	ori		x11, x0, 70648	# 1610
	mul		x14, x30, x12	# 1610
	add		x11, x11, x14	# 1610
	flw		f3, 0(x11)	# 1610
	fadd	f2, f2, f3	# 1610
	mul		x11, x30, x4	# 1611
	add		x11, x7, x11	# 1611
	flw		f3, 0(x11)	# 1611
	fmul	f3, f3, f1	# 1611
	lui		x11, 70648	# 1611
	ori		x11, x0, 70648	# 1611
	mul		x14, x30, x4	# 1611
	add		x11, x11, x14	# 1611
	flw		f4, 0(x11)	# 1611
	fadd	f3, f3, f4	# 1611
	mul		x11, x30, x13	# 1612
	add		x7, x7, x11	# 1612
	flw		f4, 0(x7)	# 1612
	fmul	f4, f4, f1	# 1612
	lui		x7, 70648	# 1612
	ori		x7, x0, 70648	# 1612
	mul		x11, x30, x13	# 1612
	add		x7, x7, x11	# 1612
	flw		f5, 0(x7)	# 1612
	fadd	f4, f4, f5	# 1612
	lw		x29, 0(x2)	# 1613
	sw		x10, -76(x2)	# 1613
	sw		x8, -80(x2)	# 1613
	fsw		f4, -84(x2)	# 1613
	fsw		f3, -88(x2)	# 1613
	fsw		f2, -92(x2)	# 1613
	fsw		f1, -96(x2)	# 1613
	addi	x5, x9, 0
	addi	x4, x12, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -100(x2)	# 1613
	addi	x2, x2, -104	# 1613
	lw		x31, 0(x29)	# 1613
	jalr	x1, x31, 0	# 1613
	addi	x2, x2, 104	# 1613
	lw		x1, -100(x2)	# 1613
	lw		x5, -24(x2)	# 1613
	beq		x4, x5, beq_cont.36859	# 1613
	lui		x4, 70548	# 1615
	ori		x4, x0, 70548	# 1615
	mul		x6, x30, x5	# 1615
	add		x4, x4, x6	# 1615
	flw		f1, -96(x2)	# 1615
	fsw		f1, 0(x4)	# 1615
	lui		x4, 70552	# 277
	ori		x4, x0, 70552	# 277
	mul		x6, x30, x5	# 277
	add		x4, x4, x6	# 277
	flw		f1, -92(x2)	# 277
	fsw		f1, 0(x4)	# 277
	lui		x4, 70552	# 278
	ori		x4, x0, 70552	# 278
	lw		x6, -40(x2)	# 278
	mul		x7, x30, x6	# 278
	add		x4, x4, x7	# 278
	flw		f1, -88(x2)	# 278
	fsw		f1, 0(x4)	# 278
	lui		x4, 70552	# 279
	ori		x4, x0, 70552	# 279
	lw		x7, -20(x2)	# 279
	mul		x7, x30, x7	# 279
	add		x4, x4, x7	# 279
	flw		f1, -84(x2)	# 279
	fsw		f1, 0(x4)	# 279
	lui		x4, 70564	# 1617
	ori		x4, x0, 70564	# 1617
	mul		x7, x30, x5	# 1617
	add		x4, x4, x7	# 1617
	lw		x7, -80(x2)	# 1617
	sw		x7, 0(x4)	# 1617
	lui		x4, 70544	# 1618
	ori		x4, x0, 70544	# 1618
	mul		x5, x30, x5	# 1618
	add		x4, x4, x5	# 1618
	lw		x5, -76(x2)	# 1618
	sw		x5, 0(x4)	# 1618
beq_cont.36859:
fle_cont.36857:
fle_cont.36855:
	lw		x4, -40(x2)	# 1624
	lw		x5, -72(x2)	# 1624
	add		x4, x5, x4	# 1624
	lw		x5, -32(x2)	# 1624
	lw		x6, -36(x2)	# 1624
	lw		x29, -4(x2)	# 1624
	lw		x31, 0(x29)	# 1624
	jalr	x0, x31, 0	# 1624
beq.36854:
	lui		x7, 70048	# 1628
	ori		x7, x0, 70048	# 1628
	mul		x8, x30, x8	# 1628
	add		x7, x7, x8	# 1628
	lw		x7, 0(x7)	# 1628
	lw		x7, 24(x7)	# 410
	beq		x7, x12, beq.36860	# 1628
	add		x4, x5, x4	# 1629
	lw		x29, -4(x2)	# 1629
	addi	x5, x9, 0
	lw		x31, 0(x29)	# 1629
	jalr	x0, x31, 0	# 1629
beq.36860:
	jalr	x0, x1, 0	# 1630
beq.36811:
	jalr	x0, x1, 0	# 1597
beq.36805:
	lui		x14, 70048	# 1628
	ori		x14, x0, 70048	# 1628
	mul		x15, x30, x15	# 1628
	add		x14, x14, x15	# 1628
	lw		x14, 0(x14)	# 1628
	lw		x14, 24(x14)	# 410
	beq		x14, x12, beq.36863	# 1628
	add		x4, x4, x13	# 1629
	lw		x14, 0(x6)	# 676
	mul		x15, x30, x4	# 1596
	add		x15, x5, x15	# 1596
	lw		x15, 0(x15)	# 1596
	beq		x15, x10, beq.36864	# 1597
	lui		x10, 70048	# 1210
	ori		x10, x0, 70048	# 1210
	mul		x16, x30, x15	# 1210
	add		x10, x10, x16	# 1210
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
	beq		x18, x13, beq.36866	# 1218
	beq		x18, x9, beq.36868	# 1220
	mul		x8, x30, x12	# 1192
	add		x8, x17, x8	# 1192
	flw		f5, 0(x8)	# 1192
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.36870	# 120
	addi	x8, x0, 0	# 1194
	jal		x0, feq_cont.36869	# 120
feq_else.36870:
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
	beq		x31, x0, fle_else.36872	# 121
	addi	x8, x0, 0	# 1205
	jal		x0, fle_cont.36871	# 121
fle_else.36872:
	lw		x8, 24(x10)	# 410
	beq		x8, x12, beq.36874	# 1200
	fsqrt	f3, f3	# 1201
	fadd	f2, f2, f3	# 1201
	addi	x8, x0, 4	# 1201
	mul		x8, x30, x8	# 1201
	add		x8, x17, x8	# 1201
	flw		f3, 0(x8)	# 1201
	fmul	f2, f2, f3	# 1201
	lui		x8, 70540	# 1201
	ori		x8, x0, 70540	# 1201
	mul		x10, x30, x12	# 1201
	add		x8, x8, x10	# 1201
	fsw		f2, 0(x8)	# 1201
	jal		x0, beq_cont.36873	# 1200
beq.36874:
	fsqrt	f3, f3	# 1203
	fsub	f2, f2, f3	# 1203
	addi	x8, x0, 4	# 1203
	mul		x8, x30, x8	# 1203
	add		x8, x17, x8	# 1203
	flw		f3, 0(x8)	# 1203
	fmul	f2, f2, f3	# 1203
	lui		x8, 70540	# 1203
	ori		x8, x0, 70540	# 1203
	mul		x10, x30, x12	# 1203
	add		x8, x8, x10	# 1203
	fsw		f2, 0(x8)	# 1203
beq_cont.36873:
	addi	x8, x0, 1	# 1204
fle_cont.36871:
feq_cont.36869:
	jal		x0, beq_cont.36867	# 1220
beq.36868:
	mul		x8, x30, x12	# 1183
	add		x8, x17, x8	# 1183
	flw		f2, 0(x8)	# 1183
	fle		x31, f1, f2	# 122
	beq		x31, x0, fle_else.36876	# 122
	addi	x8, x0, 0	# 1186
	jal		x0, fle_cont.36875	# 122
fle_else.36876:
	mul		x8, x30, x11	# 1184
	add		x8, x16, x8	# 1184
	flw		f3, 0(x8)	# 1184
	fmul	f2, f2, f3	# 1184
	lui		x8, 70540	# 1184
	ori		x8, x0, 70540	# 1184
	mul		x10, x30, x12	# 1184
	add		x8, x8, x10	# 1184
	fsw		f2, 0(x8)	# 1184
	addi	x8, x0, 1	# 1185
fle_cont.36875:
beq_cont.36867:
	jal		x0, beq_cont.36865	# 1218
beq.36866:
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
	beq		x31, x0, fle_cont.36877	# 124
	fsub	f8, f0, f8	# 124
fle_cont.36877:
	lw		x18, 16(x10)	# 438
	mul		x19, x30, x13	# 443
	add		x18, x18, x19	# 443
	flw		f9, 0(x18)	# 443
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.36879	# 125
	addi	x18, x0, 0	# 1107
	jal		x0, fle_cont.36878	# 125
fle_else.36879:
	mul		x18, x30, x9	# 1104
	add		x18, x16, x18	# 1104
	flw		f8, 0(x18)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.36880	# 124
	fsub	f8, f0, f8	# 124
fle_cont.36880:
	lw		x18, 16(x10)	# 448
	mul		x19, x30, x9	# 453
	add		x18, x18, x19	# 453
	flw		f10, 0(x18)	# 453
	fle		x31, f10, f8	# 125
	beq		x31, x0, fle_else.36882	# 125
	addi	x18, x0, 0	# 1106
	jal		x0, fle_cont.36881	# 125
fle_else.36882:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.36884	# 120
	addi	x18, x0, 0	# 1105
	jal		x0, feq_cont.36883	# 120
feq_else.36884:
	addi	x18, x0, 1	# 1105
feq_cont.36883:
fle_cont.36881:
fle_cont.36878:
	beq		x18, x12, beq.36886	# 1102
	lui		x8, 70540	# 1109
	ori		x8, x0, 70540	# 1109
	mul		x10, x30, x12	# 1109
	add		x8, x8, x10	# 1109
	fsw		f5, 0(x8)	# 1109
	addi	x8, x0, 1	# 1109
	jal		x0, beq_cont.36885	# 1102
beq.36886:
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
	fmul	f10, f5, f8	# 1112
	fadd	f10, f10, f2	# 1112
	fle		x31, f10, f1	# 124
	beq		x31, x0, fle_cont.36887	# 124
	fsub	f10, f0, f10	# 124
fle_cont.36887:
	lw		x11, 16(x10)	# 428
	mul		x18, x30, x12	# 433
	add		x11, x11, x18	# 433
	flw		f11, 0(x11)	# 433
	fle		x31, f11, f10	# 125
	beq		x31, x0, fle_else.36889	# 125
	addi	x10, x0, 0	# 1116
	jal		x0, fle_cont.36888	# 125
fle_else.36889:
	mul		x11, x30, x9	# 1113
	add		x11, x16, x11	# 1113
	flw		f10, 0(x11)	# 1113
	fmul	f10, f5, f10	# 1113
	fadd	f10, f10, f4	# 1113
	fle		x31, f10, f1	# 124
	beq		x31, x0, fle_cont.36890	# 124
	fsub	f10, f0, f10	# 124
fle_cont.36890:
	lw		x10, 16(x10)	# 448
	mul		x11, x30, x9	# 453
	add		x10, x10, x11	# 453
	flw		f12, 0(x10)	# 453
	fle		x31, f12, f10	# 125
	beq		x31, x0, fle_else.36892	# 125
	addi	x10, x0, 0	# 1115
	jal		x0, fle_cont.36891	# 125
fle_else.36892:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.36894	# 120
	addi	x10, x0, 0	# 1114
	jal		x0, feq_cont.36893	# 120
feq_else.36894:
	addi	x10, x0, 1	# 1114
feq_cont.36893:
fle_cont.36891:
fle_cont.36888:
	beq		x10, x12, beq.36896	# 1111
	lui		x8, 70540	# 1118
	ori		x8, x0, 70540	# 1118
	mul		x10, x30, x12	# 1118
	add		x8, x8, x10	# 1118
	fsw		f5, 0(x8)	# 1118
	addi	x8, x0, 2	# 1118
	jal		x0, beq_cont.36895	# 1111
beq.36896:
	addi	x10, x0, 4	# 1119
	mul		x10, x30, x10	# 1119
	add		x10, x17, x10	# 1119
	flw		f5, 0(x10)	# 1119
	fsub	f4, f5, f4	# 1119
	mul		x8, x30, x8	# 1119
	add		x8, x17, x8	# 1119
	flw		f5, 0(x8)	# 1119
	fmul	f4, f4, f5	# 1119
	fmul	f6, f4, f8	# 1121
	fadd	f2, f6, f2	# 1121
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.36897	# 124
	fsub	f2, f0, f2	# 124
fle_cont.36897:
	fle		x31, f11, f2	# 125
	beq		x31, x0, fle_else.36899	# 125
	addi	x8, x0, 0	# 1125
	jal		x0, fle_cont.36898	# 125
fle_else.36899:
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.36900	# 124
	fsub	f2, f0, f2	# 124
fle_cont.36900:
	fle		x31, f9, f2	# 125
	beq		x31, x0, fle_else.36902	# 125
	addi	x8, x0, 0	# 1124
	jal		x0, fle_cont.36901	# 125
fle_else.36902:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.36904	# 120
	addi	x8, x0, 0	# 1123
	jal		x0, feq_cont.36903	# 120
feq_else.36904:
	addi	x8, x0, 1	# 1123
feq_cont.36903:
fle_cont.36901:
fle_cont.36898:
	beq		x8, x12, beq.36906	# 1120
	lui		x8, 70540	# 1127
	ori		x8, x0, 70540	# 1127
	mul		x10, x30, x12	# 1127
	add		x8, x8, x10	# 1127
	fsw		f4, 0(x8)	# 1127
	addi	x8, x0, 3	# 1127
	jal		x0, beq_cont.36905	# 1120
beq.36906:
	addi	x8, x0, 0	# 1129
beq_cont.36905:
beq_cont.36895:
beq_cont.36885:
beq_cont.36865:
	beq		x8, x12, beq.36907	# 1600
	lui		x10, 70540	# 1604
	ori		x10, x0, 70540	# 1604
	mul		x11, x30, x12	# 1604
	add		x10, x10, x11	# 1604
	flw		f2, 0(x10)	# 1604
	sw		x6, -36(x2)	# 125
	sw		x5, -32(x2)	# 125
	sw		x29, -4(x2)	# 125
	sw		x13, -40(x2)	# 125
	sw		x4, -100(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.36909	# 125
	jal		x0, fle_cont.36908	# 125
fle_else.36909:
	lui		x10, 70548	# 1607
	ori		x10, x0, 70548	# 1607
	mul		x11, x30, x12	# 1607
	add		x10, x10, x11	# 1607
	flw		f1, 0(x10)	# 1607
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.36911	# 125
	jal		x0, fle_cont.36910	# 125
fle_else.36911:
	fadd	f1, f0, f19	# 1609
	fadd	f1, f2, f1	# 1609
	mul		x10, x30, x12	# 1610
	add		x10, x14, x10	# 1610
	flw		f2, 0(x10)	# 1610
	fmul	f2, f2, f1	# 1610
	lui		x10, 70648	# 1610
	ori		x10, x0, 70648	# 1610
	mul		x11, x30, x12	# 1610
	add		x10, x10, x11	# 1610
	flw		f3, 0(x10)	# 1610
	fadd	f2, f2, f3	# 1610
	mul		x10, x30, x13	# 1611
	add		x10, x14, x10	# 1611
	flw		f3, 0(x10)	# 1611
	fmul	f3, f3, f1	# 1611
	lui		x10, 70648	# 1611
	ori		x10, x0, 70648	# 1611
	mul		x11, x30, x13	# 1611
	add		x10, x10, x11	# 1611
	flw		f4, 0(x10)	# 1611
	fadd	f3, f3, f4	# 1611
	mul		x10, x30, x9	# 1612
	add		x10, x14, x10	# 1612
	flw		f4, 0(x10)	# 1612
	fmul	f4, f4, f1	# 1612
	lui		x10, 70648	# 1612
	ori		x10, x0, 70648	# 1612
	mul		x11, x30, x9	# 1612
	add		x10, x10, x11	# 1612
	flw		f5, 0(x10)	# 1612
	fadd	f4, f4, f5	# 1612
	sw		x8, -104(x2)	# 1613
	sw		x15, -108(x2)	# 1613
	fsw		f4, -112(x2)	# 1613
	sw		x9, -20(x2)	# 1613
	fsw		f3, -116(x2)	# 1613
	fsw		f2, -120(x2)	# 1613
	fsw		f1, -124(x2)	# 1613
	sw		x12, -24(x2)	# 1613
	addi	x4, x12, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -128(x2)	# 1613
	addi	x2, x2, -132	# 1613
	lw		x31, 0(x29)	# 1613
	jalr	x1, x31, 0	# 1613
	addi	x2, x2, 132	# 1613
	lw		x1, -128(x2)	# 1613
	lw		x5, -24(x2)	# 1613
	beq		x4, x5, beq_cont.36912	# 1613
	lui		x4, 70548	# 1615
	ori		x4, x0, 70548	# 1615
	mul		x6, x30, x5	# 1615
	add		x4, x4, x6	# 1615
	flw		f1, -124(x2)	# 1615
	fsw		f1, 0(x4)	# 1615
	lui		x4, 70552	# 277
	ori		x4, x0, 70552	# 277
	mul		x6, x30, x5	# 277
	add		x4, x4, x6	# 277
	flw		f1, -120(x2)	# 277
	fsw		f1, 0(x4)	# 277
	lui		x4, 70552	# 278
	ori		x4, x0, 70552	# 278
	lw		x6, -40(x2)	# 278
	mul		x7, x30, x6	# 278
	add		x4, x4, x7	# 278
	flw		f1, -116(x2)	# 278
	fsw		f1, 0(x4)	# 278
	lui		x4, 70552	# 279
	ori		x4, x0, 70552	# 279
	lw		x7, -20(x2)	# 279
	mul		x7, x30, x7	# 279
	add		x4, x4, x7	# 279
	flw		f1, -112(x2)	# 279
	fsw		f1, 0(x4)	# 279
	lui		x4, 70564	# 1617
	ori		x4, x0, 70564	# 1617
	mul		x7, x30, x5	# 1617
	add		x4, x4, x7	# 1617
	lw		x7, -108(x2)	# 1617
	sw		x7, 0(x4)	# 1617
	lui		x4, 70544	# 1618
	ori		x4, x0, 70544	# 1618
	mul		x5, x30, x5	# 1618
	add		x4, x4, x5	# 1618
	lw		x5, -104(x2)	# 1618
	sw		x5, 0(x4)	# 1618
beq_cont.36912:
fle_cont.36910:
fle_cont.36908:
	lw		x4, -40(x2)	# 1624
	lw		x5, -100(x2)	# 1624
	add		x4, x5, x4	# 1624
	lw		x5, -32(x2)	# 1624
	lw		x6, -36(x2)	# 1624
	lw		x29, -4(x2)	# 1624
	lw		x31, 0(x29)	# 1624
	jalr	x0, x31, 0	# 1624
beq.36907:
	lui		x7, 70048	# 1628
	ori		x7, x0, 70048	# 1628
	mul		x8, x30, x15	# 1628
	add		x7, x7, x8	# 1628
	lw		x7, 0(x7)	# 1628
	lw		x7, 24(x7)	# 410
	beq		x7, x12, beq.36913	# 1628
	add		x4, x4, x13	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x0, x31, 0	# 1629
beq.36913:
	jalr	x0, x1, 0	# 1630
beq.36864:
	jalr	x0, x1, 0	# 1597
beq.36863:
	jalr	x0, x1, 0	# 1630
beq.36762:
	jalr	x0, x1, 0	# 1597
solve_one_or_network_fast.2857.18817:
	lw		x7, 36(x29)	# 1636
	lw		x8, 32(x29)	# 1636
	lw		x9, 28(x29)	# 1636
	lw		x10, 24(x29)	# 1636
	lw		x11, 20(x29)	# 1636
	lw		x12, 16(x29)	# 1636
	lw		x13, 12(x29)	# 1636
	lw		x14, 8(x29)	# 1636
	flw		f1, 4(x29)	# 1636
	mul		x15, x30, x4	# 1636
	add		x15, x5, x15	# 1636
	lw		x15, 0(x15)	# 1636
	beq		x15, x11, beq.36918	# 1637
	lui		x16, 70332	# 1638
	ori		x16, x0, 70332	# 1638
	mul		x15, x30, x15	# 1638
	add		x15, x16, x15	# 1638
	lw		x15, 0(x15)	# 1638
	lw		x16, 0(x6)	# 676
	mul		x17, x30, x13	# 1596
	add		x17, x15, x17	# 1596
	lw		x17, 0(x17)	# 1596
	sw		x29, 0(x2)	# 1597
	sw		x6, -4(x2)	# 1597
	sw		x13, -8(x2)	# 1597
	sw		x7, -12(x2)	# 1597
	sw		x11, -16(x2)	# 1597
	sw		x5, -20(x2)	# 1597
	sw		x14, -24(x2)	# 1597
	sw		x4, -28(x2)	# 1597
	beq		x17, x11, beq_cont.36919	# 1597
	lui		x18, 70048	# 1210
	ori		x18, x0, 70048	# 1210
	mul		x19, x30, x17	# 1210
	add		x18, x18, x19	# 1210
	lw		x18, 0(x18)	# 1210
	lw		x19, 40(x18)	# 585
	mul		x20, x30, x13	# 1212
	add		x20, x19, x20	# 1212
	flw		f2, 0(x20)	# 1212
	mul		x20, x30, x14	# 1213
	add		x20, x19, x20	# 1213
	flw		f3, 0(x20)	# 1213
	mul		x20, x30, x10	# 1214
	add		x20, x19, x20	# 1214
	flw		f4, 0(x20)	# 1214
	lw		x20, 4(x6)	# 682
	mul		x21, x30, x17	# 1216
	add		x20, x20, x21	# 1216
	lw		x20, 0(x20)	# 1216
	lw		x21, 4(x18)	# 390
	beq		x21, x14, beq.36921	# 1218
	beq		x21, x10, beq.36923	# 1220
	mul		x9, x30, x13	# 1192
	add		x9, x20, x9	# 1192
	flw		f5, 0(x9)	# 1192
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.36925	# 120
	addi	x9, x0, 0	# 1194
	jal		x0, feq_cont.36924	# 120
feq_else.36925:
	mul		x9, x30, x14	# 1196
	add		x9, x20, x9	# 1196
	flw		f6, 0(x9)	# 1196
	fmul	f2, f6, f2	# 1196
	mul		x9, x30, x10	# 1196
	add		x9, x20, x9	# 1196
	flw		f6, 0(x9)	# 1196
	fmul	f3, f6, f3	# 1196
	fadd	f2, f2, f3	# 1196
	mul		x9, x30, x12	# 1196
	add		x9, x20, x9	# 1196
	flw		f3, 0(x9)	# 1196
	fmul	f3, f3, f4	# 1196
	fadd	f2, f2, f3	# 1196
	mul		x9, x30, x12	# 1197
	add		x9, x19, x9	# 1197
	flw		f3, 0(x9)	# 1197
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1198
	fsub	f3, f4, f3	# 1198
	fle		x31, f3, f1	# 121
	beq		x31, x0, fle_else.36927	# 121
	addi	x9, x0, 0	# 1205
	jal		x0, fle_cont.36926	# 121
fle_else.36927:
	lw		x9, 24(x18)	# 410
	beq		x9, x13, beq.36929	# 1200
	fsqrt	f3, f3	# 1201
	fadd	f2, f2, f3	# 1201
	addi	x9, x0, 4	# 1201
	mul		x9, x30, x9	# 1201
	add		x9, x20, x9	# 1201
	flw		f3, 0(x9)	# 1201
	fmul	f2, f2, f3	# 1201
	lui		x9, 70540	# 1201
	ori		x9, x0, 70540	# 1201
	mul		x12, x30, x13	# 1201
	add		x9, x9, x12	# 1201
	fsw		f2, 0(x9)	# 1201
	jal		x0, beq_cont.36928	# 1200
beq.36929:
	fsqrt	f3, f3	# 1203
	fsub	f2, f2, f3	# 1203
	addi	x9, x0, 4	# 1203
	mul		x9, x30, x9	# 1203
	add		x9, x20, x9	# 1203
	flw		f3, 0(x9)	# 1203
	fmul	f2, f2, f3	# 1203
	lui		x9, 70540	# 1203
	ori		x9, x0, 70540	# 1203
	mul		x12, x30, x13	# 1203
	add		x9, x9, x12	# 1203
	fsw		f2, 0(x9)	# 1203
beq_cont.36928:
	addi	x9, x0, 1	# 1204
fle_cont.36926:
feq_cont.36924:
	jal		x0, beq_cont.36922	# 1220
beq.36923:
	mul		x9, x30, x13	# 1183
	add		x9, x20, x9	# 1183
	flw		f2, 0(x9)	# 1183
	fle		x31, f1, f2	# 122
	beq		x31, x0, fle_else.36931	# 122
	addi	x9, x0, 0	# 1186
	jal		x0, fle_cont.36930	# 122
fle_else.36931:
	mul		x9, x30, x12	# 1184
	add		x9, x19, x9	# 1184
	flw		f3, 0(x9)	# 1184
	fmul	f2, f2, f3	# 1184
	lui		x9, 70540	# 1184
	ori		x9, x0, 70540	# 1184
	mul		x12, x30, x13	# 1184
	add		x9, x9, x12	# 1184
	fsw		f2, 0(x9)	# 1184
	addi	x9, x0, 1	# 1185
fle_cont.36930:
beq_cont.36922:
	jal		x0, beq_cont.36920	# 1218
beq.36921:
	lw		x19, 0(x6)	# 676
	mul		x21, x30, x13	# 1101
	add		x21, x20, x21	# 1101
	flw		f5, 0(x21)	# 1101
	fsub	f5, f5, f2	# 1101
	mul		x21, x30, x14	# 1101
	add		x21, x20, x21	# 1101
	flw		f6, 0(x21)	# 1101
	fmul	f5, f5, f6	# 1101
	mul		x21, x30, x14	# 1103
	add		x21, x19, x21	# 1103
	flw		f7, 0(x21)	# 1103
	fmul	f8, f5, f7	# 1103
	fadd	f8, f8, f3	# 1103
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.36932	# 124
	fsub	f8, f0, f8	# 124
fle_cont.36932:
	lw		x21, 16(x18)	# 438
	mul		x22, x30, x14	# 443
	add		x21, x21, x22	# 443
	flw		f9, 0(x21)	# 443
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.36934	# 125
	addi	x21, x0, 0	# 1107
	jal		x0, fle_cont.36933	# 125
fle_else.36934:
	mul		x21, x30, x10	# 1104
	add		x21, x19, x21	# 1104
	flw		f8, 0(x21)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.36935	# 124
	fsub	f8, f0, f8	# 124
fle_cont.36935:
	lw		x21, 16(x18)	# 448
	mul		x22, x30, x10	# 453
	add		x21, x21, x22	# 453
	flw		f10, 0(x21)	# 453
	fle		x31, f10, f8	# 125
	beq		x31, x0, fle_else.36937	# 125
	addi	x21, x0, 0	# 1106
	jal		x0, fle_cont.36936	# 125
fle_else.36937:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.36939	# 120
	addi	x21, x0, 0	# 1105
	jal		x0, feq_cont.36938	# 120
feq_else.36939:
	addi	x21, x0, 1	# 1105
feq_cont.36938:
fle_cont.36936:
fle_cont.36933:
	beq		x21, x13, beq.36941	# 1102
	lui		x9, 70540	# 1109
	ori		x9, x0, 70540	# 1109
	mul		x12, x30, x13	# 1109
	add		x9, x9, x12	# 1109
	fsw		f5, 0(x9)	# 1109
	addi	x9, x0, 1	# 1109
	jal		x0, beq_cont.36940	# 1102
beq.36941:
	mul		x21, x30, x10	# 1110
	add		x21, x20, x21	# 1110
	flw		f5, 0(x21)	# 1110
	fsub	f5, f5, f3	# 1110
	mul		x12, x30, x12	# 1110
	add		x12, x20, x12	# 1110
	flw		f6, 0(x12)	# 1110
	fmul	f5, f5, f6	# 1110
	mul		x12, x30, x13	# 1112
	add		x12, x19, x12	# 1112
	flw		f8, 0(x12)	# 1112
	fmul	f10, f5, f8	# 1112
	fadd	f10, f10, f2	# 1112
	fle		x31, f10, f1	# 124
	beq		x31, x0, fle_cont.36942	# 124
	fsub	f10, f0, f10	# 124
fle_cont.36942:
	lw		x12, 16(x18)	# 428
	mul		x21, x30, x13	# 433
	add		x12, x12, x21	# 433
	flw		f11, 0(x12)	# 433
	fle		x31, f11, f10	# 125
	beq		x31, x0, fle_else.36944	# 125
	addi	x12, x0, 0	# 1116
	jal		x0, fle_cont.36943	# 125
fle_else.36944:
	mul		x12, x30, x10	# 1113
	add		x12, x19, x12	# 1113
	flw		f10, 0(x12)	# 1113
	fmul	f10, f5, f10	# 1113
	fadd	f10, f10, f4	# 1113
	fle		x31, f10, f1	# 124
	beq		x31, x0, fle_cont.36945	# 124
	fsub	f10, f0, f10	# 124
fle_cont.36945:
	lw		x12, 16(x18)	# 448
	mul		x18, x30, x10	# 453
	add		x12, x12, x18	# 453
	flw		f12, 0(x12)	# 453
	fle		x31, f12, f10	# 125
	beq		x31, x0, fle_else.36947	# 125
	addi	x12, x0, 0	# 1115
	jal		x0, fle_cont.36946	# 125
fle_else.36947:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.36949	# 120
	addi	x12, x0, 0	# 1114
	jal		x0, feq_cont.36948	# 120
feq_else.36949:
	addi	x12, x0, 1	# 1114
feq_cont.36948:
fle_cont.36946:
fle_cont.36943:
	beq		x12, x13, beq.36951	# 1111
	lui		x9, 70540	# 1118
	ori		x9, x0, 70540	# 1118
	mul		x12, x30, x13	# 1118
	add		x9, x9, x12	# 1118
	fsw		f5, 0(x9)	# 1118
	addi	x9, x0, 2	# 1118
	jal		x0, beq_cont.36950	# 1111
beq.36951:
	addi	x12, x0, 4	# 1119
	mul		x12, x30, x12	# 1119
	add		x12, x20, x12	# 1119
	flw		f5, 0(x12)	# 1119
	fsub	f4, f5, f4	# 1119
	mul		x9, x30, x9	# 1119
	add		x9, x20, x9	# 1119
	flw		f5, 0(x9)	# 1119
	fmul	f4, f4, f5	# 1119
	fmul	f6, f4, f8	# 1121
	fadd	f2, f6, f2	# 1121
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.36952	# 124
	fsub	f2, f0, f2	# 124
fle_cont.36952:
	fle		x31, f11, f2	# 125
	beq		x31, x0, fle_else.36954	# 125
	addi	x9, x0, 0	# 1125
	jal		x0, fle_cont.36953	# 125
fle_else.36954:
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.36955	# 124
	fsub	f2, f0, f2	# 124
fle_cont.36955:
	fle		x31, f9, f2	# 125
	beq		x31, x0, fle_else.36957	# 125
	addi	x9, x0, 0	# 1124
	jal		x0, fle_cont.36956	# 125
fle_else.36957:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.36959	# 120
	addi	x9, x0, 0	# 1123
	jal		x0, feq_cont.36958	# 120
feq_else.36959:
	addi	x9, x0, 1	# 1123
feq_cont.36958:
fle_cont.36956:
fle_cont.36953:
	beq		x9, x13, beq.36961	# 1120
	lui		x9, 70540	# 1127
	ori		x9, x0, 70540	# 1127
	mul		x12, x30, x13	# 1127
	add		x9, x9, x12	# 1127
	fsw		f4, 0(x9)	# 1127
	addi	x9, x0, 3	# 1127
	jal		x0, beq_cont.36960	# 1120
beq.36961:
	addi	x9, x0, 0	# 1129
beq_cont.36960:
beq_cont.36950:
beq_cont.36940:
beq_cont.36920:
	beq		x9, x13, beq.36963	# 1600
	lui		x12, 70540	# 1604
	ori		x12, x0, 70540	# 1604
	mul		x18, x30, x13	# 1604
	add		x12, x12, x18	# 1604
	flw		f2, 0(x12)	# 1604
	sw		x15, -32(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.36965	# 125
	jal		x0, fle_cont.36964	# 125
fle_else.36965:
	lui		x12, 70548	# 1607
	ori		x12, x0, 70548	# 1607
	mul		x18, x30, x13	# 1607
	add		x12, x12, x18	# 1607
	flw		f1, 0(x12)	# 1607
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.36967	# 125
	jal		x0, fle_cont.36966	# 125
fle_else.36967:
	fadd	f1, f0, f19	# 1609
	fadd	f1, f2, f1	# 1609
	mul		x12, x30, x13	# 1610
	add		x12, x16, x12	# 1610
	flw		f2, 0(x12)	# 1610
	fmul	f2, f2, f1	# 1610
	lui		x12, 70648	# 1610
	ori		x12, x0, 70648	# 1610
	mul		x18, x30, x13	# 1610
	add		x12, x12, x18	# 1610
	flw		f3, 0(x12)	# 1610
	fadd	f2, f2, f3	# 1610
	mul		x12, x30, x14	# 1611
	add		x12, x16, x12	# 1611
	flw		f3, 0(x12)	# 1611
	fmul	f3, f3, f1	# 1611
	lui		x12, 70648	# 1611
	ori		x12, x0, 70648	# 1611
	mul		x18, x30, x14	# 1611
	add		x12, x12, x18	# 1611
	flw		f4, 0(x12)	# 1611
	fadd	f3, f3, f4	# 1611
	mul		x12, x30, x10	# 1612
	add		x12, x16, x12	# 1612
	flw		f4, 0(x12)	# 1612
	fmul	f4, f4, f1	# 1612
	lui		x12, 70648	# 1612
	ori		x12, x0, 70648	# 1612
	mul		x16, x30, x10	# 1612
	add		x12, x12, x16	# 1612
	flw		f5, 0(x12)	# 1612
	fadd	f4, f4, f5	# 1612
	sw		x9, -36(x2)	# 1613
	sw		x17, -40(x2)	# 1613
	fsw		f4, -44(x2)	# 1613
	sw		x10, -48(x2)	# 1613
	fsw		f3, -52(x2)	# 1613
	fsw		f2, -56(x2)	# 1613
	fsw		f1, -60(x2)	# 1613
	addi	x5, x15, 0
	addi	x4, x13, 0
	addi	x29, x8, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -64(x2)	# 1613
	addi	x2, x2, -68	# 1613
	lw		x31, 0(x29)	# 1613
	jalr	x1, x31, 0	# 1613
	addi	x2, x2, 68	# 1613
	lw		x1, -64(x2)	# 1613
	lw		x5, -8(x2)	# 1613
	beq		x4, x5, beq_cont.36968	# 1613
	lui		x4, 70548	# 1615
	ori		x4, x0, 70548	# 1615
	mul		x6, x30, x5	# 1615
	add		x4, x4, x6	# 1615
	flw		f1, -60(x2)	# 1615
	fsw		f1, 0(x4)	# 1615
	lui		x4, 70552	# 277
	ori		x4, x0, 70552	# 277
	mul		x6, x30, x5	# 277
	add		x4, x4, x6	# 277
	flw		f1, -56(x2)	# 277
	fsw		f1, 0(x4)	# 277
	lui		x4, 70552	# 278
	ori		x4, x0, 70552	# 278
	lw		x6, -24(x2)	# 278
	mul		x7, x30, x6	# 278
	add		x4, x4, x7	# 278
	flw		f1, -52(x2)	# 278
	fsw		f1, 0(x4)	# 278
	lui		x4, 70552	# 279
	ori		x4, x0, 70552	# 279
	lw		x7, -48(x2)	# 279
	mul		x7, x30, x7	# 279
	add		x4, x4, x7	# 279
	flw		f1, -44(x2)	# 279
	fsw		f1, 0(x4)	# 279
	lui		x4, 70564	# 1617
	ori		x4, x0, 70564	# 1617
	mul		x7, x30, x5	# 1617
	add		x4, x4, x7	# 1617
	lw		x7, -40(x2)	# 1617
	sw		x7, 0(x4)	# 1617
	lui		x4, 70544	# 1618
	ori		x4, x0, 70544	# 1618
	mul		x7, x30, x5	# 1618
	add		x4, x4, x7	# 1618
	lw		x7, -36(x2)	# 1618
	sw		x7, 0(x4)	# 1618
beq_cont.36968:
fle_cont.36966:
fle_cont.36964:
	lw		x4, -24(x2)	# 1624
	lw		x5, -32(x2)	# 1624
	lw		x6, -4(x2)	# 1624
	lw		x29, -12(x2)	# 1624
	sw		x1, -64(x2)	# 1624
	addi	x2, x2, -68	# 1624
	lw		x31, 0(x29)	# 1624
	jalr	x1, x31, 0	# 1624
	addi	x2, x2, 68	# 1624
	lw		x1, -64(x2)	# 1624
	jal		x0, beq_cont.36962	# 1600
beq.36963:
	lui		x8, 70048	# 1628
	ori		x8, x0, 70048	# 1628
	mul		x9, x30, x17	# 1628
	add		x8, x8, x9	# 1628
	lw		x8, 0(x8)	# 1628
	lw		x8, 24(x8)	# 410
	beq		x8, x13, beq_cont.36969	# 1628
	addi	x5, x15, 0
	addi	x4, x14, 0
	addi	x29, x7, 0
	sw		x1, -64(x2)	# 1629
	addi	x2, x2, -68	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x1, x31, 0	# 1629
	addi	x2, x2, 68	# 1629
	lw		x1, -64(x2)	# 1629
beq_cont.36969:
beq_cont.36962:
beq_cont.36919:
	lw		x4, -24(x2)	# 1640
	lw		x5, -28(x2)	# 1640
	add		x5, x5, x4	# 1640
	mul		x6, x30, x5	# 1636
	lw		x7, -20(x2)	# 1636
	add		x6, x7, x6	# 1636
	lw		x6, 0(x6)	# 1636
	lw		x8, -16(x2)	# 1637
	beq		x6, x8, beq.36970	# 1637
	lui		x8, 70332	# 1638
	ori		x8, x0, 70332	# 1638
	mul		x6, x30, x6	# 1638
	add		x6, x8, x6	# 1638
	lw		x6, 0(x6)	# 1638
	lw		x8, -8(x2)	# 1639
	lw		x9, -4(x2)	# 1639
	lw		x29, -12(x2)	# 1639
	sw		x5, -64(x2)	# 1639
	addi	x5, x6, 0
	addi	x4, x8, 0
	addi	x6, x9, 0
	sw		x1, -68(x2)	# 1639
	addi	x2, x2, -72	# 1639
	lw		x31, 0(x29)	# 1639
	jalr	x1, x31, 0	# 1639
	addi	x2, x2, 72	# 1639
	lw		x1, -68(x2)	# 1639
	lw		x4, -24(x2)	# 1640
	lw		x5, -64(x2)	# 1640
	add		x4, x5, x4	# 1640
	lw		x5, -20(x2)	# 1640
	lw		x6, -4(x2)	# 1640
	lw		x29, 0(x2)	# 1640
	lw		x31, 0(x29)	# 1640
	jalr	x0, x31, 0	# 1640
beq.36970:
	jalr	x0, x1, 0	# 1641
beq.36918:
	jalr	x0, x1, 0	# 1641
trace_or_matrix_fast.2861.18821:
	lw		x7, 36(x29)	# 1646
	lw		x8, 32(x29)	# 1646
	lw		x9, 28(x29)	# 1646
	lw		x10, 24(x29)	# 1646
	lw		x11, 20(x29)	# 1646
	lw		x12, 16(x29)	# 1646
	lw		x13, 12(x29)	# 1646
	lw		x14, 8(x29)	# 1646
	flw		f1, 4(x29)	# 1646
	mul		x15, x30, x4	# 1646
	add		x15, x5, x15	# 1646
	lw		x15, 0(x15)	# 1646
	mul		x16, x30, x13	# 1647
	add		x16, x15, x16	# 1647
	lw		x16, 0(x16)	# 1647
	beq		x16, x11, beq.36973	# 1648
	addi	x17, x0, 99	# 1651
	sw		x6, 0(x2)	# 1651
	sw		x5, -4(x2)	# 1651
	sw		x29, -8(x2)	# 1651
	sw		x14, -12(x2)	# 1651
	sw		x4, -16(x2)	# 1651
	beq		x16, x17, beq.36975	# 1651
	lui		x17, 70048	# 1210
	ori		x17, x0, 70048	# 1210
	mul		x18, x30, x16	# 1210
	add		x17, x17, x18	# 1210
	lw		x17, 0(x17)	# 1210
	lw		x18, 40(x17)	# 585
	mul		x19, x30, x13	# 1212
	add		x19, x18, x19	# 1212
	flw		f2, 0(x19)	# 1212
	mul		x19, x30, x14	# 1213
	add		x19, x18, x19	# 1213
	flw		f3, 0(x19)	# 1213
	mul		x19, x30, x10	# 1214
	add		x19, x18, x19	# 1214
	flw		f4, 0(x19)	# 1214
	lw		x19, 4(x6)	# 682
	mul		x16, x30, x16	# 1216
	add		x16, x19, x16	# 1216
	lw		x16, 0(x16)	# 1216
	lw		x19, 4(x17)	# 390
	beq		x19, x14, beq.36977	# 1218
	beq		x19, x10, beq.36979	# 1220
	mul		x9, x30, x13	# 1192
	add		x9, x16, x9	# 1192
	flw		f5, 0(x9)	# 1192
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.36981	# 120
	addi	x9, x0, 0	# 1194
	jal		x0, feq_cont.36980	# 120
feq_else.36981:
	mul		x9, x30, x14	# 1196
	add		x9, x16, x9	# 1196
	flw		f6, 0(x9)	# 1196
	fmul	f2, f6, f2	# 1196
	mul		x9, x30, x10	# 1196
	add		x9, x16, x9	# 1196
	flw		f6, 0(x9)	# 1196
	fmul	f3, f6, f3	# 1196
	fadd	f2, f2, f3	# 1196
	mul		x9, x30, x12	# 1196
	add		x9, x16, x9	# 1196
	flw		f3, 0(x9)	# 1196
	fmul	f3, f3, f4	# 1196
	fadd	f2, f2, f3	# 1196
	mul		x9, x30, x12	# 1197
	add		x9, x18, x9	# 1197
	flw		f3, 0(x9)	# 1197
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1198
	fsub	f3, f4, f3	# 1198
	fle		x31, f3, f1	# 121
	beq		x31, x0, fle_else.36983	# 121
	addi	x9, x0, 0	# 1205
	jal		x0, fle_cont.36982	# 121
fle_else.36983:
	lw		x9, 24(x17)	# 410
	beq		x9, x13, beq.36985	# 1200
	fsqrt	f1, f3	# 1201
	fadd	f1, f2, f1	# 1201
	addi	x9, x0, 4	# 1201
	mul		x9, x30, x9	# 1201
	add		x9, x16, x9	# 1201
	flw		f2, 0(x9)	# 1201
	fmul	f1, f1, f2	# 1201
	lui		x9, 70540	# 1201
	ori		x9, x0, 70540	# 1201
	mul		x12, x30, x13	# 1201
	add		x9, x9, x12	# 1201
	fsw		f1, 0(x9)	# 1201
	jal		x0, beq_cont.36984	# 1200
beq.36985:
	fsqrt	f1, f3	# 1203
	fsub	f1, f2, f1	# 1203
	addi	x9, x0, 4	# 1203
	mul		x9, x30, x9	# 1203
	add		x9, x16, x9	# 1203
	flw		f2, 0(x9)	# 1203
	fmul	f1, f1, f2	# 1203
	lui		x9, 70540	# 1203
	ori		x9, x0, 70540	# 1203
	mul		x12, x30, x13	# 1203
	add		x9, x9, x12	# 1203
	fsw		f1, 0(x9)	# 1203
beq_cont.36984:
	addi	x9, x0, 1	# 1204
fle_cont.36982:
feq_cont.36980:
	jal		x0, beq_cont.36978	# 1220
beq.36979:
	mul		x9, x30, x13	# 1183
	add		x9, x16, x9	# 1183
	flw		f2, 0(x9)	# 1183
	fle		x31, f1, f2	# 122
	beq		x31, x0, fle_else.36987	# 122
	addi	x9, x0, 0	# 1186
	jal		x0, fle_cont.36986	# 122
fle_else.36987:
	mul		x9, x30, x12	# 1184
	add		x9, x18, x9	# 1184
	flw		f1, 0(x9)	# 1184
	fmul	f1, f2, f1	# 1184
	lui		x9, 70540	# 1184
	ori		x9, x0, 70540	# 1184
	mul		x12, x30, x13	# 1184
	add		x9, x9, x12	# 1184
	fsw		f1, 0(x9)	# 1184
	addi	x9, x0, 1	# 1185
fle_cont.36986:
beq_cont.36978:
	jal		x0, beq_cont.36976	# 1218
beq.36977:
	lw		x18, 0(x6)	# 676
	mul		x19, x30, x13	# 1101
	add		x19, x16, x19	# 1101
	flw		f5, 0(x19)	# 1101
	fsub	f5, f5, f2	# 1101
	mul		x19, x30, x14	# 1101
	add		x19, x16, x19	# 1101
	flw		f6, 0(x19)	# 1101
	fmul	f5, f5, f6	# 1101
	mul		x19, x30, x14	# 1103
	add		x19, x18, x19	# 1103
	flw		f7, 0(x19)	# 1103
	fmul	f8, f5, f7	# 1103
	fadd	f8, f8, f3	# 1103
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.36988	# 124
	fsub	f8, f0, f8	# 124
fle_cont.36988:
	lw		x19, 16(x17)	# 438
	mul		x20, x30, x14	# 443
	add		x19, x19, x20	# 443
	flw		f9, 0(x19)	# 443
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.36990	# 125
	addi	x19, x0, 0	# 1107
	jal		x0, fle_cont.36989	# 125
fle_else.36990:
	mul		x19, x30, x10	# 1104
	add		x19, x18, x19	# 1104
	flw		f8, 0(x19)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.36991	# 124
	fsub	f8, f0, f8	# 124
fle_cont.36991:
	lw		x19, 16(x17)	# 448
	mul		x20, x30, x10	# 453
	add		x19, x19, x20	# 453
	flw		f9, 0(x19)	# 453
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.36993	# 125
	addi	x19, x0, 0	# 1106
	jal		x0, fle_cont.36992	# 125
fle_else.36993:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.36995	# 120
	addi	x19, x0, 0	# 1105
	jal		x0, feq_cont.36994	# 120
feq_else.36995:
	addi	x19, x0, 1	# 1105
feq_cont.36994:
fle_cont.36992:
fle_cont.36989:
	beq		x19, x13, beq.36997	# 1102
	lui		x9, 70540	# 1109
	ori		x9, x0, 70540	# 1109
	mul		x12, x30, x13	# 1109
	add		x9, x9, x12	# 1109
	fsw		f5, 0(x9)	# 1109
	addi	x9, x0, 1	# 1109
	jal		x0, beq_cont.36996	# 1102
beq.36997:
	mul		x19, x30, x10	# 1110
	add		x19, x16, x19	# 1110
	flw		f5, 0(x19)	# 1110
	fsub	f5, f5, f3	# 1110
	mul		x12, x30, x12	# 1110
	add		x12, x16, x12	# 1110
	flw		f6, 0(x12)	# 1110
	fmul	f5, f5, f6	# 1110
	mul		x12, x30, x13	# 1112
	add		x12, x18, x12	# 1112
	flw		f8, 0(x12)	# 1112
	fmul	f9, f5, f8	# 1112
	fadd	f9, f9, f2	# 1112
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.36998	# 124
	fsub	f9, f0, f9	# 124
fle_cont.36998:
	lw		x12, 16(x17)	# 428
	mul		x19, x30, x13	# 433
	add		x12, x12, x19	# 433
	flw		f10, 0(x12)	# 433
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.37000	# 125
	addi	x12, x0, 0	# 1116
	jal		x0, fle_cont.36999	# 125
fle_else.37000:
	mul		x12, x30, x10	# 1113
	add		x12, x18, x12	# 1113
	flw		f9, 0(x12)	# 1113
	fmul	f9, f5, f9	# 1113
	fadd	f9, f9, f4	# 1113
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.37001	# 124
	fsub	f9, f0, f9	# 124
fle_cont.37001:
	lw		x12, 16(x17)	# 448
	mul		x18, x30, x10	# 453
	add		x12, x12, x18	# 453
	flw		f10, 0(x12)	# 453
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.37003	# 125
	addi	x12, x0, 0	# 1115
	jal		x0, fle_cont.37002	# 125
fle_else.37003:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.37005	# 120
	addi	x12, x0, 0	# 1114
	jal		x0, feq_cont.37004	# 120
feq_else.37005:
	addi	x12, x0, 1	# 1114
feq_cont.37004:
fle_cont.37002:
fle_cont.36999:
	beq		x12, x13, beq.37007	# 1111
	lui		x9, 70540	# 1118
	ori		x9, x0, 70540	# 1118
	mul		x12, x30, x13	# 1118
	add		x9, x9, x12	# 1118
	fsw		f5, 0(x9)	# 1118
	addi	x9, x0, 2	# 1118
	jal		x0, beq_cont.37006	# 1111
beq.37007:
	addi	x12, x0, 4	# 1119
	mul		x12, x30, x12	# 1119
	add		x12, x16, x12	# 1119
	flw		f5, 0(x12)	# 1119
	fsub	f4, f5, f4	# 1119
	mul		x9, x30, x9	# 1119
	add		x9, x16, x9	# 1119
	flw		f5, 0(x9)	# 1119
	fmul	f4, f4, f5	# 1119
	fmul	f6, f4, f8	# 1121
	fadd	f2, f6, f2	# 1121
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.37008	# 124
	fsub	f2, f0, f2	# 124
fle_cont.37008:
	lw		x9, 16(x17)	# 428
	mul		x12, x30, x13	# 433
	add		x9, x9, x12	# 433
	flw		f6, 0(x9)	# 433
	fle		x31, f6, f2	# 125
	beq		x31, x0, fle_else.37010	# 125
	addi	x9, x0, 0	# 1125
	jal		x0, fle_cont.37009	# 125
fle_else.37010:
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.37011	# 124
	fsub	f2, f0, f2	# 124
fle_cont.37011:
	lw		x9, 16(x17)	# 438
	mul		x12, x30, x14	# 443
	add		x9, x9, x12	# 443
	flw		f3, 0(x9)	# 443
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.37013	# 125
	addi	x9, x0, 0	# 1124
	jal		x0, fle_cont.37012	# 125
fle_else.37013:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.37015	# 120
	addi	x9, x0, 0	# 1123
	jal		x0, feq_cont.37014	# 120
feq_else.37015:
	addi	x9, x0, 1	# 1123
feq_cont.37014:
fle_cont.37012:
fle_cont.37009:
	beq		x9, x13, beq.37017	# 1120
	lui		x9, 70540	# 1127
	ori		x9, x0, 70540	# 1127
	mul		x12, x30, x13	# 1127
	add		x9, x9, x12	# 1127
	fsw		f4, 0(x9)	# 1127
	addi	x9, x0, 3	# 1127
	jal		x0, beq_cont.37016	# 1120
beq.37017:
	addi	x9, x0, 0	# 1129
beq_cont.37016:
beq_cont.37006:
beq_cont.36996:
beq_cont.36976:
	beq		x9, x13, beq_cont.37018	# 1657
	lui		x9, 70540	# 1658
	ori		x9, x0, 70540	# 1658
	mul		x12, x30, x13	# 1658
	add		x9, x9, x12	# 1658
	flw		f1, 0(x9)	# 1658
	lui		x9, 70548	# 1659
	ori		x9, x0, 70548	# 1659
	mul		x12, x30, x13	# 1659
	add		x9, x9, x12	# 1659
	flw		f2, 0(x9)	# 1659
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.37020	# 125
	jal		x0, fle_cont.37019	# 125
fle_else.37020:
	mul		x9, x30, x14	# 1636
	add		x9, x15, x9	# 1636
	lw		x9, 0(x9)	# 1636
	beq		x9, x11, beq_cont.37021	# 1637
	lui		x11, 70332	# 1638
	ori		x11, x0, 70332	# 1638
	mul		x9, x30, x9	# 1638
	add		x9, x11, x9	# 1638
	lw		x9, 0(x9)	# 1638
	sw		x15, -20(x2)	# 1639
	sw		x10, -24(x2)	# 1639
	sw		x7, -28(x2)	# 1639
	addi	x5, x9, 0
	addi	x4, x13, 0
	addi	x29, x8, 0
	sw		x1, -32(x2)	# 1639
	addi	x2, x2, -36	# 1639
	lw		x31, 0(x29)	# 1639
	jalr	x1, x31, 0	# 1639
	addi	x2, x2, 36	# 1639
	lw		x1, -32(x2)	# 1639
	lw		x4, -24(x2)	# 1640
	lw		x5, -20(x2)	# 1640
	lw		x6, 0(x2)	# 1640
	lw		x29, -28(x2)	# 1640
	sw		x1, -32(x2)	# 1640
	addi	x2, x2, -36	# 1640
	lw		x31, 0(x29)	# 1640
	jalr	x1, x31, 0	# 1640
	addi	x2, x2, 36	# 1640
	lw		x1, -32(x2)	# 1640
beq_cont.37021:
fle_cont.37019:
beq_cont.37018:
	jal		x0, beq_cont.36974	# 1651
beq.36975:
	mul		x9, x30, x14	# 1636
	add		x9, x15, x9	# 1636
	lw		x9, 0(x9)	# 1636
	beq		x9, x11, beq_cont.37022	# 1637
	lui		x11, 70332	# 1638
	ori		x11, x0, 70332	# 1638
	mul		x9, x30, x9	# 1638
	add		x9, x11, x9	# 1638
	lw		x9, 0(x9)	# 1638
	sw		x15, -20(x2)	# 1639
	sw		x10, -24(x2)	# 1639
	sw		x7, -28(x2)	# 1639
	addi	x5, x9, 0
	addi	x4, x13, 0
	addi	x29, x8, 0
	sw		x1, -32(x2)	# 1639
	addi	x2, x2, -36	# 1639
	lw		x31, 0(x29)	# 1639
	jalr	x1, x31, 0	# 1639
	addi	x2, x2, 36	# 1639
	lw		x1, -32(x2)	# 1639
	lw		x4, -24(x2)	# 1640
	lw		x5, -20(x2)	# 1640
	lw		x6, 0(x2)	# 1640
	lw		x29, -28(x2)	# 1640
	sw		x1, -32(x2)	# 1640
	addi	x2, x2, -36	# 1640
	lw		x31, 0(x29)	# 1640
	jalr	x1, x31, 0	# 1640
	addi	x2, x2, 36	# 1640
	lw		x1, -32(x2)	# 1640
beq_cont.37022:
beq_cont.36974:
	lw		x4, -12(x2)	# 1664
	lw		x5, -16(x2)	# 1664
	add		x4, x5, x4	# 1664
	lw		x5, -4(x2)	# 1664
	lw		x6, 0(x2)	# 1664
	lw		x29, -8(x2)	# 1664
	lw		x31, 0(x29)	# 1664
	jalr	x0, x31, 0	# 1664
beq.36973:
	jalr	x0, x1, 0	# 1649
trace_reflections.2883.18825:
	lw		x6, 28(x29)	# 1841
	lw		x7, 24(x29)	# 1841
	lw		x8, 20(x29)	# 1841
	lw		x9, 16(x29)	# 1841
	lw		x10, 12(x29)	# 1841
	flw		f3, 8(x29)	# 1841
	flw		f4, 4(x29)	# 1841
	ble		x9, x4, ble.37024	# 1841
	jalr	x0, x1, 0	# 1861
ble.37024:
	lui		x11, 71016	# 1842
	ori		x11, x0, 71016	# 1842
	mul		x12, x30, x4	# 1842
	add		x11, x11, x12	# 1842
	lw		x11, 0(x11)	# 1842
	lw		x12, 4(x11)	# 698
	lui		x13, 70548	# 1671
	ori		x13, x0, 70548	# 1671
	mul		x14, x30, x9	# 1671
	add		x13, x13, x14	# 1671
	fsw		f3, 0(x13)	# 1671
	lui		x13, 70536	# 1672
	ori		x13, x0, 70536	# 1672
	mul		x14, x30, x9	# 1672
	add		x13, x13, x14	# 1672
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
	lui		x4, 70548	# 1673
	ori		x4, x0, 70548	# 1673
	lw		x5, -44(x2)	# 1673
	mul		x6, x30, x5	# 1673
	add		x4, x4, x6	# 1673
	flw		f1, 0(x4)	# 1673
	fadd	f2, f0, f21	# 1675
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.37027	# 125
	addi	x4, x0, 0	# 1677
	jal		x0, fle_cont.37026	# 125
fle_else.37027:
	fadd	f2, f0, f22	# 1676
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.37029	# 125
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.37028	# 125
fle_else.37029:
	addi	x4, x0, 1	# 125
fle_cont.37028:
fle_cont.37026:
	beq		x4, x5, beq_cont.37030	# 1846
	lui		x4, 70564	# 1847
	ori		x4, x0, 70564	# 1847
	mul		x6, x30, x5	# 1847
	add		x4, x4, x6	# 1847
	lw		x4, 0(x4)	# 1847
	addi	x6, x0, 4	# 1847
	mul		x4, x4, x6	# 1847
	lui		x6, 70544	# 1847
	ori		x6, x0, 70544	# 1847
	mul		x7, x30, x5	# 1847
	add		x6, x6, x7	# 1847
	lw		x6, 0(x6)	# 1847
	add		x4, x4, x6	# 1847
	lw		x6, -40(x2)	# 692
	lw		x7, 0(x6)	# 692
	beq		x4, x7, beq.37032	# 1848
	jal		x0, beq_cont.37031	# 1848
beq.37032:
	lui		x4, 70536	# 1850
	ori		x4, x0, 70536	# 1850
	mul		x7, x30, x5	# 1850
	add		x4, x4, x7	# 1850
	lw		x4, 0(x4)	# 1850
	lw		x29, -36(x2)	# 1850
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -48(x2)	# 1850
	addi	x2, x2, -52	# 1850
	lw		x31, 0(x29)	# 1850
	jalr	x1, x31, 0	# 1850
	addi	x2, x2, 52	# 1850
	lw		x1, -48(x2)	# 1850
	lw		x5, -44(x2)	# 1850
	beq		x4, x5, beq.37034	# 1850
	jal		x0, beq_cont.37033	# 1850
beq.37034:
	lw		x4, -32(x2)	# 676
	lw		x6, 0(x4)	# 676
	lui		x7, 70568	# 329
	ori		x7, x0, 70568	# 329
	mul		x8, x30, x5	# 329
	add		x7, x7, x8	# 329
	flw		f1, 0(x7)	# 329
	mul		x7, x30, x5	# 329
	add		x7, x6, x7	# 329
	flw		f2, 0(x7)	# 329
	fmul	f1, f1, f2	# 329
	lui		x7, 70568	# 329
	ori		x7, x0, 70568	# 329
	lw		x8, -28(x2)	# 329
	mul		x9, x30, x8	# 329
	add		x7, x7, x9	# 329
	flw		f2, 0(x7)	# 329
	mul		x7, x30, x8	# 329
	add		x7, x6, x7	# 329
	flw		f3, 0(x7)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	lui		x7, 70568	# 329
	ori		x7, x0, 70568	# 329
	lw		x9, -24(x2)	# 329
	mul		x10, x30, x9	# 329
	add		x7, x7, x10	# 329
	flw		f2, 0(x7)	# 329
	mul		x7, x30, x9	# 329
	add		x6, x6, x7	# 329
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
	lw		x7, -16(x2)	# 329
	add		x6, x7, x6	# 329
	flw		f4, 0(x6)	# 329
	mul		x6, x30, x5	# 329
	add		x6, x4, x6	# 329
	flw		f5, 0(x6)	# 329
	fmul	f4, f4, f5	# 329
	mul		x6, x30, x8	# 329
	add		x6, x7, x6	# 329
	flw		f5, 0(x6)	# 329
	mul		x6, x30, x8	# 329
	add		x6, x4, x6	# 329
	flw		f6, 0(x6)	# 329
	fmul	f5, f5, f6	# 329
	fadd	f4, f4, f5	# 329
	mul		x6, x30, x9	# 329
	add		x6, x7, x6	# 329
	flw		f5, 0(x6)	# 329
	mul		x6, x30, x9	# 329
	add		x4, x4, x6	# 329
	flw		f6, 0(x4)	# 329
	fmul	f5, f5, f6	# 329
	fadd	f4, f4, f5	# 329
	fmul	f2, f2, f4	# 1855
	flw		f4, -12(x2)	# 121
	fle		x31, f1, f4	# 121
	beq		x31, x0, fle_else.37036	# 121
	jal		x0, fle_cont.37035	# 121
fle_else.37036:
	lui		x4, 70604	# 339
	ori		x4, x0, 70604	# 339
	mul		x6, x30, x5	# 339
	add		x4, x4, x6	# 339
	flw		f5, 0(x4)	# 339
	lui		x4, 70580	# 339
	ori		x4, x0, 70580	# 339
	mul		x6, x30, x5	# 339
	add		x4, x4, x6	# 339
	flw		f6, 0(x4)	# 339
	fmul	f6, f1, f6	# 339
	fadd	f5, f5, f6	# 339
	lui		x4, 70604	# 339
	ori		x4, x0, 70604	# 339
	mul		x6, x30, x5	# 339
	add		x4, x4, x6	# 339
	fsw		f5, 0(x4)	# 339
	lui		x4, 70604	# 340
	ori		x4, x0, 70604	# 340
	mul		x6, x30, x8	# 340
	add		x4, x4, x6	# 340
	flw		f5, 0(x4)	# 340
	lui		x4, 70580	# 340
	ori		x4, x0, 70580	# 340
	mul		x6, x30, x8	# 340
	add		x4, x4, x6	# 340
	flw		f6, 0(x4)	# 340
	fmul	f6, f1, f6	# 340
	fadd	f5, f5, f6	# 340
	lui		x4, 70604	# 340
	ori		x4, x0, 70604	# 340
	mul		x6, x30, x8	# 340
	add		x4, x4, x6	# 340
	fsw		f5, 0(x4)	# 340
	lui		x4, 70604	# 341
	ori		x4, x0, 70604	# 341
	mul		x6, x30, x9	# 341
	add		x4, x4, x6	# 341
	flw		f5, 0(x4)	# 341
	lui		x4, 70580	# 341
	ori		x4, x0, 70580	# 341
	mul		x6, x30, x9	# 341
	add		x4, x4, x6	# 341
	flw		f6, 0(x4)	# 341
	fmul	f1, f1, f6	# 341
	fadd	f1, f5, f1	# 341
	lui		x4, 70604	# 341
	ori		x4, x0, 70604	# 341
	mul		x6, x30, x9	# 341
	add		x4, x4, x6	# 341
	fsw		f1, 0(x4)	# 341
fle_cont.37035:
	fle		x31, f2, f4	# 121
	beq		x31, x0, fle_else.37038	# 121
	jal		x0, fle_cont.37037	# 121
fle_else.37038:
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -8(x2)	# 1831
	fmul	f1, f1, f2	# 1831
	lui		x4, 70604	# 1832
	ori		x4, x0, 70604	# 1832
	mul		x6, x30, x5	# 1832
	add		x4, x4, x6	# 1832
	flw		f4, 0(x4)	# 1832
	fadd	f4, f4, f1	# 1832
	lui		x4, 70604	# 1832
	ori		x4, x0, 70604	# 1832
	mul		x5, x30, x5	# 1832
	add		x4, x4, x5	# 1832
	fsw		f4, 0(x4)	# 1832
	lui		x4, 70604	# 1833
	ori		x4, x0, 70604	# 1833
	mul		x5, x30, x8	# 1833
	add		x4, x4, x5	# 1833
	flw		f4, 0(x4)	# 1833
	fadd	f4, f4, f1	# 1833
	lui		x4, 70604	# 1833
	ori		x4, x0, 70604	# 1833
	mul		x5, x30, x8	# 1833
	add		x4, x4, x5	# 1833
	fsw		f4, 0(x4)	# 1833
	lui		x4, 70604	# 1834
	ori		x4, x0, 70604	# 1834
	mul		x5, x30, x9	# 1834
	add		x4, x4, x5	# 1834
	flw		f4, 0(x4)	# 1834
	fadd	f1, f4, f1	# 1834
	lui		x4, 70604	# 1834
	ori		x4, x0, 70604	# 1834
	mul		x5, x30, x9	# 1834
	add		x4, x4, x5	# 1834
	fsw		f1, 0(x4)	# 1834
fle_cont.37037:
beq_cont.37033:
beq_cont.37031:
beq_cont.37030:
	lw		x4, -28(x2)	# 1860
	lw		x5, -4(x2)	# 1860
	sub		x4, x5, x4	# 1860
	flw		f1, -20(x2)	# 1860
	flw		f2, -8(x2)	# 1860
	lw		x5, -16(x2)	# 1860
	lw		x29, 0(x2)	# 1860
	lw		x31, 0(x29)	# 1860
	jalr	x0, x31, 0	# 1860
trace_ray.2888.18830:
	lw		x7, 64(x29)	# 1869
	lw		x8, 60(x29)	# 1869
	lw		x9, 56(x29)	# 1869
	lw		x10, 52(x29)	# 1869
	lw		x11, 48(x29)	# 1869
	lw		x12, 44(x29)	# 1869
	lw		x13, 40(x29)	# 1869
	lw		x14, 36(x29)	# 1869
	lw		x15, 32(x29)	# 1869
	lw		x16, 28(x29)	# 1869
	lw		x17, 24(x29)	# 1869
	lw		x18, 20(x29)	# 1869
	lw		x19, 16(x29)	# 1869
	flw		f3, 12(x29)	# 1869
	flw		f4, 8(x29)	# 1869
	flw		f5, 4(x29)	# 1869
	addi	x20, x0, 4	# 1869
	ble		x4, x20, ble.37039	# 1869
	jalr	x0, x1, 0	# 1950
ble.37039:
	lw		x21, 8(x6)	# 614
	lui		x22, 70548	# 1580
	ori		x22, x0, 70548	# 1580
	mul		x23, x30, x18	# 1580
	add		x22, x22, x23	# 1580
	fsw		f3, 0(x22)	# 1580
	lui		x22, 70536	# 1581
	ori		x22, x0, 70536	# 1581
	mul		x23, x30, x18	# 1581
	add		x22, x22, x23	# 1581
	lw		x22, 0(x22)	# 1581
	sw		x29, 0(x2)	# 1581
	fsw		f2, -4(x2)	# 1581
	sw		x7, -8(x2)	# 1581
	sw		x11, -12(x2)	# 1581
	sw		x10, -16(x2)	# 1581
	sw		x6, -20(x2)	# 1581
	sw		x14, -24(x2)	# 1581
	sw		x20, -28(x2)	# 1581
	sw		x13, -32(x2)	# 1581
	sw		x17, -36(x2)	# 1581
	sw		x9, -40(x2)	# 1581
	fsw		f4, -44(x2)	# 1581
	sw		x12, -48(x2)	# 1581
	fsw		f1, -52(x2)	# 1581
	fsw		f5, -56(x2)	# 1581
	sw		x15, -60(x2)	# 1581
	sw		x19, -64(x2)	# 1581
	sw		x5, -68(x2)	# 1581
	sw		x16, -72(x2)	# 1581
	sw		x21, -76(x2)	# 1581
	sw		x4, -80(x2)	# 1581
	sw		x18, -84(x2)	# 1581
	addi	x6, x5, 0
	addi	x4, x18, 0
	addi	x29, x8, 0
	addi	x5, x22, 0
	sw		x1, -88(x2)	# 1581
	addi	x2, x2, -92	# 1581
	lw		x31, 0(x29)	# 1581
	jalr	x1, x31, 0	# 1581
	addi	x2, x2, 92	# 1581
	lw		x1, -88(x2)	# 1581
	lui		x4, 70548	# 1582
	ori		x4, x0, 70548	# 1582
	lw		x5, -84(x2)	# 1582
	mul		x6, x30, x5	# 1582
	add		x4, x4, x6	# 1582
	flw		f1, 0(x4)	# 1582
	fadd	f2, f0, f21	# 1584
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.37042	# 125
	addi	x4, x0, 0	# 1586
	jal		x0, fle_cont.37041	# 125
fle_else.37042:
	fadd	f2, f0, f22	# 1585
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.37044	# 125
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.37043	# 125
fle_else.37044:
	addi	x4, x0, 1	# 125
fle_cont.37043:
fle_cont.37041:
	beq		x4, x5, beq.37045	# 1871
	lui		x4, 70564	# 1873
	ori		x4, x0, 70564	# 1873
	mul		x6, x30, x5	# 1873
	add		x4, x4, x6	# 1873
	lw		x4, 0(x4)	# 1873
	lui		x6, 70048	# 1874
	ori		x6, x0, 70048	# 1874
	mul		x7, x30, x4	# 1874
	add		x6, x6, x7	# 1874
	lw		x6, 0(x6)	# 1874
	lw		x7, 8(x6)	# 400
	lw		x8, 28(x6)	# 498
	mul		x9, x30, x5	# 503
	add		x8, x8, x9	# 503
	flw		f1, 0(x8)	# 503
	flw		f2, -52(x2)	# 1876
	fmul	f1, f1, f2	# 1876
	lw		x8, 4(x6)	# 390
	lw		x9, -64(x2)	# 1730
	beq		x8, x9, beq.37047	# 1730
	lw		x10, -60(x2)	# 1732
	beq		x8, x10, beq.37049	# 1732
	lui		x8, 70552	# 1707
	ori		x8, x0, 70552	# 1707
	mul		x11, x30, x5	# 1707
	add		x8, x8, x11	# 1707
	flw		f3, 0(x8)	# 1707
	lw		x8, 20(x6)	# 468
	mul		x11, x30, x5	# 473
	add		x8, x8, x11	# 473
	flw		f4, 0(x8)	# 473
	fsub	f3, f3, f4	# 1707
	lui		x8, 70552	# 1708
	ori		x8, x0, 70552	# 1708
	mul		x11, x30, x9	# 1708
	add		x8, x8, x11	# 1708
	flw		f4, 0(x8)	# 1708
	lw		x8, 20(x6)	# 478
	mul		x11, x30, x9	# 483
	add		x8, x8, x11	# 483
	flw		f5, 0(x8)	# 483
	fsub	f4, f4, f5	# 1708
	lui		x8, 70552	# 1709
	ori		x8, x0, 70552	# 1709
	mul		x11, x30, x10	# 1709
	add		x8, x8, x11	# 1709
	flw		f5, 0(x8)	# 1709
	lw		x8, 20(x6)	# 488
	mul		x11, x30, x10	# 493
	add		x8, x8, x11	# 493
	flw		f6, 0(x8)	# 493
	fsub	f5, f5, f6	# 1709
	lw		x8, 16(x6)	# 428
	mul		x11, x30, x5	# 433
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
	beq		x8, x5, beq.37051	# 1715
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
	lui		x8, 70568	# 1720
	ori		x8, x0, 70568	# 1720
	mul		x11, x30, x5	# 1720
	add		x8, x8, x11	# 1720
	fsw		f6, 0(x8)	# 1720
	lw		x8, 36(x6)	# 568
	mul		x11, x30, x10	# 573
	add		x8, x8, x11	# 573
	flw		f6, 0(x8)	# 573
	fmul	f6, f3, f6	# 1721
	lw		x8, 36(x6)	# 548
	mul		x11, x30, x5	# 553
	add		x8, x8, x11	# 553
	flw		f9, 0(x8)	# 553
	fmul	f5, f5, f9	# 1721
	fadd	f5, f6, f5	# 1721
	fmul	f5, f5, f10	# 126
	fadd	f5, f7, f5	# 1721
	lui		x8, 70568	# 1721
	ori		x8, x0, 70568	# 1721
	mul		x11, x30, x9	# 1721
	add		x8, x8, x11	# 1721
	fsw		f5, 0(x8)	# 1721
	lw		x8, 36(x6)	# 558
	mul		x11, x30, x9	# 563
	add		x8, x8, x11	# 563
	flw		f5, 0(x8)	# 563
	fmul	f3, f3, f5	# 1722
	lw		x8, 36(x6)	# 548
	mul		x11, x30, x5	# 553
	add		x8, x8, x11	# 553
	flw		f5, 0(x8)	# 553
	fmul	f4, f4, f5	# 1722
	fadd	f3, f3, f4	# 1722
	fmul	f3, f3, f10	# 126
	fadd	f3, f8, f3	# 1722
	lui		x8, 70568	# 1722
	ori		x8, x0, 70568	# 1722
	mul		x11, x30, x10	# 1722
	add		x8, x8, x11	# 1722
	fsw		f3, 0(x8)	# 1722
	jal		x0, beq_cont.37050	# 1715
beq.37051:
	lui		x8, 70568	# 1716
	ori		x8, x0, 70568	# 1716
	mul		x11, x30, x5	# 1716
	add		x8, x8, x11	# 1716
	fsw		f6, 0(x8)	# 1716
	lui		x8, 70568	# 1717
	ori		x8, x0, 70568	# 1717
	mul		x11, x30, x9	# 1717
	add		x8, x8, x11	# 1717
	fsw		f7, 0(x8)	# 1717
	lui		x8, 70568	# 1718
	ori		x8, x0, 70568	# 1718
	mul		x11, x30, x10	# 1718
	add		x8, x8, x11	# 1718
	fsw		f8, 0(x8)	# 1718
beq_cont.37050:
	lw		x8, 24(x6)	# 410
	lui		x11, 70568	# 320
	ori		x11, x0, 70568	# 320
	mul		x12, x30, x5	# 320
	add		x11, x11, x12	# 320
	flw		f3, 0(x11)	# 320
	fmul	f3, f3, f3	# 127
	lui		x11, 70568	# 320
	ori		x11, x0, 70568	# 320
	mul		x12, x30, x9	# 320
	add		x11, x11, x12	# 320
	flw		f4, 0(x11)	# 320
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 320
	lui		x11, 70568	# 320
	ori		x11, x0, 70568	# 320
	mul		x12, x30, x10	# 320
	add		x11, x11, x12	# 320
	flw		f4, 0(x11)	# 320
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 320
	fsqrt	f3, f3	# 320
	flw		f4, -56(x2)	# 120
	feq		x31, f3, f4	# 120
	beq		x31, x0, feq_else.37053	# 120
	fadd	f3, f0, f16	# 321
	jal		x0, feq_cont.37052	# 120
feq_else.37053:
	beq		x8, x5, beq.37055	# 321
	lui		x8, %hi(l.27841)	# 321
	ori		x8, x0, %lo(l.27841)	# 321
	flw		f5, 0(x8)	# 321
	fdiv	f3, f5, f3	# 321
	jal		x0, beq_cont.37054	# 321
beq.37055:
	fadd	f5, f0, f16	# 321
	fdiv	f3, f5, f3	# 321
beq_cont.37054:
feq_cont.37052:
	lui		x8, 70568	# 322
	ori		x8, x0, 70568	# 322
	mul		x11, x30, x5	# 322
	add		x8, x8, x11	# 322
	flw		f5, 0(x8)	# 322
	fmul	f5, f5, f3	# 322
	lui		x8, 70568	# 322
	ori		x8, x0, 70568	# 322
	mul		x11, x30, x5	# 322
	add		x8, x8, x11	# 322
	fsw		f5, 0(x8)	# 322
	lui		x8, 70568	# 323
	ori		x8, x0, 70568	# 323
	mul		x11, x30, x9	# 323
	add		x8, x8, x11	# 323
	flw		f5, 0(x8)	# 323
	fmul	f5, f5, f3	# 323
	lui		x8, 70568	# 323
	ori		x8, x0, 70568	# 323
	mul		x11, x30, x9	# 323
	add		x8, x8, x11	# 323
	fsw		f5, 0(x8)	# 323
	lui		x8, 70568	# 324
	ori		x8, x0, 70568	# 324
	mul		x11, x30, x10	# 324
	add		x8, x8, x11	# 324
	flw		f5, 0(x8)	# 324
	fmul	f3, f5, f3	# 324
	lui		x8, 70568	# 324
	ori		x8, x0, 70568	# 324
	mul		x11, x30, x10	# 324
	add		x8, x8, x11	# 324
	fsw		f3, 0(x8)	# 324
	jal		x0, beq_cont.37048	# 1732
beq.37049:
	lw		x8, 16(x6)	# 428
	mul		x11, x30, x5	# 433
	add		x8, x8, x11	# 433
	flw		f3, 0(x8)	# 433
	fsub	f3, f0, f3	# 123
	lui		x8, 70568	# 1700
	ori		x8, x0, 70568	# 1700
	mul		x11, x30, x5	# 1700
	add		x8, x8, x11	# 1700
	fsw		f3, 0(x8)	# 1700
	lw		x8, 16(x6)	# 438
	mul		x11, x30, x9	# 443
	add		x8, x8, x11	# 443
	flw		f3, 0(x8)	# 443
	fsub	f3, f0, f3	# 123
	lui		x8, 70568	# 1701
	ori		x8, x0, 70568	# 1701
	mul		x11, x30, x9	# 1701
	add		x8, x8, x11	# 1701
	fsw		f3, 0(x8)	# 1701
	lw		x8, 16(x6)	# 448
	mul		x11, x30, x10	# 453
	add		x8, x8, x11	# 453
	flw		f3, 0(x8)	# 453
	fsub	f3, f0, f3	# 123
	lui		x8, 70568	# 1702
	ori		x8, x0, 70568	# 1702
	mul		x11, x30, x10	# 1702
	add		x8, x8, x11	# 1702
	fsw		f3, 0(x8)	# 1702
beq_cont.37048:
	jal		x0, beq_cont.37046	# 1730
beq.37047:
	lui		x8, 70544	# 1691
	ori		x8, x0, 70544	# 1691
	mul		x10, x30, x5	# 1691
	add		x8, x8, x10	# 1691
	lw		x8, 0(x8)	# 1691
	lui		x10, 70568	# 284
	ori		x10, x0, 70568	# 284
	mul		x11, x30, x5	# 284
	add		x10, x10, x11	# 284
	flw		f3, -56(x2)	# 284
	fsw		f3, 0(x10)	# 284
	lui		x10, 70568	# 285
	ori		x10, x0, 70568	# 285
	mul		x11, x30, x9	# 285
	add		x10, x10, x11	# 285
	fsw		f3, 0(x10)	# 285
	lui		x10, 70568	# 286
	ori		x10, x0, 70568	# 286
	lw		x11, -60(x2)	# 286
	mul		x12, x30, x11	# 286
	add		x10, x10, x12	# 286
	fsw		f3, 0(x10)	# 286
	sub		x8, x8, x9	# 1694
	mul		x10, x30, x8	# 1694
	lw		x12, -68(x2)	# 1694
	add		x10, x12, x10	# 1694
	flw		f4, 0(x10)	# 1694
	feq		x31, f4, f3	# 120
	beq		x31, x0, feq_else.37057	# 120
	fadd	f4, f0, f3	# 249
	jal		x0, feq_cont.37056	# 120
feq_else.37057:
	fle		x31, f4, f3	# 121
	beq		x31, x0, fle_else.37059	# 121
	lui		x10, %hi(l.27841)	# 251
	ori		x10, x0, %lo(l.27841)	# 251
	flw		f4, 0(x10)	# 251
	jal		x0, fle_cont.37058	# 121
fle_else.37059:
	fadd	f4, f0, f16	# 250
fle_cont.37058:
feq_cont.37056:
	fsub	f4, f0, f4	# 123
	lui		x10, 70568	# 1694
	ori		x10, x0, 70568	# 1694
	mul		x8, x30, x8	# 1694
	add		x8, x10, x8	# 1694
	fsw		f4, 0(x8)	# 1694
beq_cont.37046:
	lui		x8, 70552	# 296
	ori		x8, x0, 70552	# 296
	mul		x10, x30, x5	# 296
	add		x8, x8, x10	# 296
	flw		f3, 0(x8)	# 296
	lui		x8, 70636	# 296
	ori		x8, x0, 70636	# 296
	mul		x10, x30, x5	# 296
	add		x8, x8, x10	# 296
	fsw		f3, 0(x8)	# 296
	lui		x8, 70552	# 297
	ori		x8, x0, 70552	# 297
	mul		x10, x30, x9	# 297
	add		x8, x8, x10	# 297
	flw		f3, 0(x8)	# 297
	lui		x8, 70636	# 297
	ori		x8, x0, 70636	# 297
	mul		x10, x30, x9	# 297
	add		x8, x8, x10	# 297
	fsw		f3, 0(x8)	# 297
	lui		x8, 70552	# 298
	ori		x8, x0, 70552	# 298
	lw		x10, -60(x2)	# 298
	mul		x11, x30, x10	# 298
	add		x8, x8, x11	# 298
	flw		f3, 0(x8)	# 298
	lui		x8, 70636	# 298
	ori		x8, x0, 70636	# 298
	mul		x11, x30, x10	# 298
	add		x8, x8, x11	# 298
	fsw		f3, 0(x8)	# 298
	lw		x8, 0(x6)	# 380
	lw		x11, 32(x6)	# 518
	mul		x12, x30, x5	# 523
	add		x11, x11, x12	# 523
	flw		f3, 0(x11)	# 523
	lui		x11, 70580	# 1747
	ori		x11, x0, 70580	# 1747
	mul		x12, x30, x5	# 1747
	add		x11, x11, x12	# 1747
	fsw		f3, 0(x11)	# 1747
	lw		x11, 32(x6)	# 528
	mul		x12, x30, x9	# 533
	add		x11, x11, x12	# 533
	flw		f3, 0(x11)	# 533
	lui		x11, 70580	# 1748
	ori		x11, x0, 70580	# 1748
	mul		x12, x30, x9	# 1748
	add		x11, x11, x12	# 1748
	fsw		f3, 0(x11)	# 1748
	lw		x11, 32(x6)	# 538
	mul		x12, x30, x10	# 543
	add		x11, x11, x12	# 543
	flw		f3, 0(x11)	# 543
	lui		x11, 70580	# 1749
	ori		x11, x0, 70580	# 1749
	mul		x12, x30, x10	# 1749
	add		x11, x11, x12	# 1749
	fsw		f3, 0(x11)	# 1749
	sw		x7, -88(x2)	# 1750
	fsw		f1, -92(x2)	# 1750
	sw		x6, -96(x2)	# 1750
	sw		x4, -100(x2)	# 1750
	beq		x8, x9, beq.37061	# 1750
	beq		x8, x10, beq.37063	# 1768
	lw		x11, -36(x2)	# 1775
	beq		x8, x11, beq.37065	# 1775
	lw		x11, -28(x2)	# 1786
	beq		x8, x11, beq.37067	# 1786
	jal		x0, beq_cont.37066	# 1786
beq.37067:
	lui		x8, 70552	# 1788
	ori		x8, x0, 70552	# 1788
	mul		x12, x30, x5	# 1788
	add		x8, x8, x12	# 1788
	flw		f3, 0(x8)	# 1788
	lw		x8, 20(x6)	# 468
	mul		x12, x30, x5	# 473
	add		x8, x8, x12	# 473
	flw		f4, 0(x8)	# 473
	fsub	f3, f3, f4	# 1788
	lw		x8, 16(x6)	# 428
	mul		x12, x30, x5	# 433
	add		x8, x8, x12	# 433
	flw		f4, 0(x8)	# 433
	fsqrt	f4, f4	# 1788
	fmul	f3, f3, f4	# 1788
	lui		x8, 70552	# 1789
	ori		x8, x0, 70552	# 1789
	mul		x12, x30, x10	# 1789
	add		x8, x8, x12	# 1789
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
	flw		f6, -56(x2)	# 124
	fle		x31, f3, f6	# 124
	beq		x31, x0, fle_else.37069	# 124
	fsub	f7, f0, f3	# 124
	jal		x0, fle_cont.37068	# 124
fle_else.37069:
	fadd	f7, f0, f3	# 124
fle_cont.37068:
	lui		x8, %hi(l.29453)	# 1792
	ori		x8, x0, %lo(l.29453)	# 1792
	flw		f8, 0(x8)	# 1792
	fsw		f8, -104(x2)	# 125
	fsw		f5, -108(x2)	# 125
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.37071	# 125
	fdiv	f3, f4, f3	# 1795
	fle		x31, f3, f6	# 124
	beq		x31, x0, fle_cont.37072	# 124
	fsub	f3, f0, f3	# 124
fle_cont.37072:
	lw		x29, -24(x2)	# 1797
	fadd	f1, f0, f3
	sw		x1, -112(x2)	# 1797
	addi	x2, x2, -116	# 1797
	lw		x31, 0(x29)	# 1797
	jalr	x1, x31, 0	# 1797
	addi	x2, x2, 116	# 1797
	lw		x1, -112(x2)	# 1797
	lui		x4, %hi(l.29457)	# 1797
	ori		x4, x0, %lo(l.29457)	# 1797
	flw		f2, 0(x4)	# 1797
	fmul	f1, f1, f2	# 1797
	lui		x4, %hi(l.29459)	# 1797
	ori		x4, x0, %lo(l.29459)	# 1797
	flw		f2, 0(x4)	# 1797
	fdiv	f1, f1, f2	# 1797
	jal		x0, fle_cont.37070	# 125
fle_else.37071:
	lui		x8, %hi(l.29455)	# 1793
	ori		x8, x0, %lo(l.29455)	# 1793
	flw		f1, 0(x8)	# 1793
fle_cont.37070:
	fadd	f2, f0, f26	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -84(x2)	# 153
	lw		x29, -48(x2)	# 153
	fsw		f2, -112(x2)	# 153
	fsw		f1, -116(x2)	# 153
	fadd	f1, f0, f3
	sw		x1, -120(x2)	# 153
	addi	x2, x2, -124	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 124	# 153
	lw		x1, -120(x2)	# 153
	sw		x1, -120(x2)	# 166
	addi	x2, x2, -124	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 124	# 166
	lw		x1, -120(x2)	# 166
	flw		f2, -116(x2)	# 1799
	fsub	f1, f2, f1	# 1799
	lui		x4, 70552	# 1801
	ori		x4, x0, 70552	# 1801
	lw		x5, -64(x2)	# 1801
	mul		x6, x30, x5	# 1801
	add		x4, x4, x6	# 1801
	flw		f2, 0(x4)	# 1801
	lw		x4, -96(x2)	# 478
	lw		x6, 20(x4)	# 478
	mul		x7, x30, x5	# 483
	add		x6, x6, x7	# 483
	flw		f3, 0(x6)	# 483
	fsub	f2, f2, f3	# 1801
	lw		x6, 16(x4)	# 438
	mul		x7, x30, x5	# 443
	add		x6, x6, x7	# 443
	flw		f3, 0(x6)	# 443
	fsqrt	f3, f3	# 1801
	fmul	f2, f2, f3	# 1801
	flw		f3, -56(x2)	# 124
	flw		f4, -108(x2)	# 124
	fle		x31, f4, f3	# 124
	beq		x31, x0, fle_else.37074	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.37073	# 124
fle_else.37074:
	fadd	f5, f0, f4	# 124
fle_cont.37073:
	flw		f6, -104(x2)	# 125
	fsw		f1, -120(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.37076	# 125
	fdiv	f2, f2, f4	# 1806
	fle		x31, f2, f3	# 124
	beq		x31, x0, fle_cont.37077	# 124
	fsub	f2, f0, f2	# 124
fle_cont.37077:
	lw		x29, -24(x2)	# 1807
	fadd	f1, f0, f2
	sw		x1, -124(x2)	# 1807
	addi	x2, x2, -128	# 1807
	lw		x31, 0(x29)	# 1807
	jalr	x1, x31, 0	# 1807
	addi	x2, x2, 128	# 1807
	lw		x1, -124(x2)	# 1807
	lui		x4, %hi(l.29457)	# 1807
	ori		x4, x0, %lo(l.29457)	# 1807
	flw		f2, 0(x4)	# 1807
	fmul	f1, f1, f2	# 1807
	lui		x4, %hi(l.29459)	# 1807
	ori		x4, x0, %lo(l.29459)	# 1807
	flw		f2, 0(x4)	# 1807
	fdiv	f1, f1, f2	# 1807
	jal		x0, fle_cont.37075	# 125
fle_else.37076:
	lui		x6, %hi(l.29455)	# 1804
	ori		x6, x0, %lo(l.29455)	# 1804
	flw		f1, 0(x6)	# 1804
fle_cont.37075:
	flw		f2, -112(x2)	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -84(x2)	# 153
	lw		x29, -48(x2)	# 153
	fsw		f1, -124(x2)	# 153
	fadd	f1, f0, f3
	sw		x1, -128(x2)	# 153
	addi	x2, x2, -132	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 132	# 153
	lw		x1, -128(x2)	# 153
	sw		x1, -128(x2)	# 166
	addi	x2, x2, -132	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 132	# 166
	lw		x1, -128(x2)	# 166
	flw		f2, -124(x2)	# 1809
	fsub	f1, f2, f1	# 1809
	lui		x4, %hi(l.29471)	# 1810
	ori		x4, x0, %lo(l.29471)	# 1810
	flw		f2, 0(x4)	# 1810
	flw		f3, -120(x2)	# 1810
	flw		f4, -112(x2)	# 1810
	fsub	f3, f4, f3	# 1810
	fmul	f3, f3, f3	# 127
	fsub	f2, f2, f3	# 1810
	fsub	f1, f4, f1	# 1810
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1810
	flw		f2, -56(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.37079	# 122
	jal		x0, fle_cont.37078	# 122
fle_else.37079:
	fadd	f1, f0, f2	# 1811
fle_cont.37078:
	flw		f3, -44(x2)	# 1812
	fmul	f1, f3, f1	# 1812
	lui		x4, %hi(l.29473)	# 1812
	ori		x4, x0, %lo(l.29473)	# 1812
	flw		f3, 0(x4)	# 1812
	fdiv	f1, f1, f3	# 1812
	lui		x4, 70580	# 1812
	ori		x4, x0, 70580	# 1812
	lw		x5, -60(x2)	# 1812
	mul		x6, x30, x5	# 1812
	add		x4, x4, x6	# 1812
	fsw		f1, 0(x4)	# 1812
beq_cont.37066:
	jal		x0, beq_cont.37064	# 1775
beq.37065:
	lui		x8, 70552	# 1778
	ori		x8, x0, 70552	# 1778
	mul		x11, x30, x5	# 1778
	add		x8, x8, x11	# 1778
	flw		f3, 0(x8)	# 1778
	lw		x8, 20(x6)	# 468
	mul		x11, x30, x5	# 473
	add		x8, x8, x11	# 473
	flw		f4, 0(x8)	# 473
	fsub	f3, f3, f4	# 1778
	lui		x8, 70552	# 1779
	ori		x8, x0, 70552	# 1779
	mul		x11, x30, x10	# 1779
	add		x8, x8, x11	# 1779
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
	lui		x8, %hi(l.29485)	# 1780
	ori		x8, x0, %lo(l.29485)	# 1780
	flw		f4, 0(x8)	# 1780
	fdiv	f3, f3, f4	# 1780
	fadd	f4, f0, f26	# 166
	fsub	f4, f3, f4	# 166
	lw		x29, -48(x2)	# 153
	fsw		f3, -128(x2)	# 153
	addi	x4, x5, 0
	fadd	f1, f0, f4
	sw		x1, -132(x2)	# 153
	addi	x2, x2, -136	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 136	# 153
	lw		x1, -132(x2)	# 153
	sw		x1, -132(x2)	# 166
	addi	x2, x2, -136	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 136	# 166
	lw		x1, -132(x2)	# 166
	flw		f2, -128(x2)	# 1781
	fsub	f1, f2, f1	# 1781
	lui		x4, %hi(l.29459)	# 1781
	ori		x4, x0, %lo(l.29459)	# 1781
	flw		f2, 0(x4)	# 1781
	fmul	f1, f1, f2	# 1781
	lw		x29, -32(x2)	# 1782
	sw		x1, -132(x2)	# 1782
	addi	x2, x2, -136	# 1782
	lw		x31, 0(x29)	# 1782
	jalr	x1, x31, 0	# 1782
	addi	x2, x2, 136	# 1782
	lw		x1, -132(x2)	# 1782
	fmul	f1, f1, f1	# 127
	flw		f2, -44(x2)	# 1783
	fmul	f3, f1, f2	# 1783
	lui		x4, 70580	# 1783
	ori		x4, x0, 70580	# 1783
	lw		x5, -64(x2)	# 1783
	mul		x6, x30, x5	# 1783
	add		x4, x4, x6	# 1783
	fsw		f3, 0(x4)	# 1783
	fadd	f3, f0, f16	# 1784
	fsub	f1, f3, f1	# 1784
	fmul	f1, f1, f2	# 1784
	lui		x4, 70580	# 1784
	ori		x4, x0, 70580	# 1784
	lw		x6, -60(x2)	# 1784
	mul		x7, x30, x6	# 1784
	add		x4, x4, x7	# 1784
	fsw		f1, 0(x4)	# 1784
beq_cont.37064:
	jal		x0, beq_cont.37062	# 1768
beq.37063:
	lui		x8, 70552	# 1771
	ori		x8, x0, 70552	# 1771
	mul		x11, x30, x9	# 1771
	add		x8, x8, x11	# 1771
	flw		f3, 0(x8)	# 1771
	lui		x8, %hi(l.29496)	# 1771
	ori		x8, x0, %lo(l.29496)	# 1771
	flw		f4, 0(x8)	# 1771
	fmul	f3, f3, f4	# 1771
	lw		x29, -40(x2)	# 1771
	fadd	f1, f0, f3
	sw		x1, -132(x2)	# 1771
	addi	x2, x2, -136	# 1771
	lw		x31, 0(x29)	# 1771
	jalr	x1, x31, 0	# 1771
	addi	x2, x2, 136	# 1771
	lw		x1, -132(x2)	# 1771
	fmul	f1, f1, f1	# 127
	flw		f2, -44(x2)	# 1772
	fmul	f3, f2, f1	# 1772
	lui		x4, 70580	# 1772
	ori		x4, x0, 70580	# 1772
	lw		x5, -84(x2)	# 1772
	mul		x6, x30, x5	# 1772
	add		x4, x4, x6	# 1772
	fsw		f3, 0(x4)	# 1772
	fadd	f3, f0, f16	# 1773
	fsub	f1, f3, f1	# 1773
	fmul	f1, f2, f1	# 1773
	lui		x4, 70580	# 1773
	ori		x4, x0, 70580	# 1773
	lw		x6, -64(x2)	# 1773
	mul		x7, x30, x6	# 1773
	add		x4, x4, x7	# 1773
	fsw		f1, 0(x4)	# 1773
beq_cont.37062:
	jal		x0, beq_cont.37060	# 1750
beq.37061:
	lui		x8, 70552	# 1753
	ori		x8, x0, 70552	# 1753
	mul		x11, x30, x5	# 1753
	add		x8, x8, x11	# 1753
	flw		f3, 0(x8)	# 1753
	lw		x8, 20(x6)	# 468
	mul		x11, x30, x5	# 473
	add		x8, x8, x11	# 473
	flw		f4, 0(x8)	# 473
	fsub	f3, f3, f4	# 1753
	lui		x8, %hi(l.29507)	# 1755
	ori		x8, x0, %lo(l.29507)	# 1755
	flw		f4, 0(x8)	# 1755
	fmul	f5, f3, f4	# 1755
	fadd	f6, f0, f26	# 166
	fsub	f5, f5, f6	# 166
	lw		x29, -48(x2)	# 153
	fsw		f6, -132(x2)	# 153
	fsw		f4, -136(x2)	# 153
	fsw		f3, -140(x2)	# 153
	addi	x4, x5, 0
	fadd	f1, f0, f5
	sw		x1, -144(x2)	# 153
	addi	x2, x2, -148	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 148	# 153
	lw		x1, -144(x2)	# 153
	sw		x1, -144(x2)	# 166
	addi	x2, x2, -148	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 148	# 166
	lw		x1, -144(x2)	# 166
	lui		x4, %hi(l.29510)	# 1755
	ori		x4, x0, %lo(l.29510)	# 1755
	flw		f2, 0(x4)	# 1755
	fmul	f1, f1, f2	# 1755
	flw		f3, -140(x2)	# 1756
	fsub	f1, f3, f1	# 1756
	lui		x4, %hi(l.29485)	# 1756
	ori		x4, x0, %lo(l.29485)	# 1756
	flw		f3, 0(x4)	# 1756
	lui		x4, 70552	# 1758
	ori		x4, x0, 70552	# 1758
	lw		x5, -60(x2)	# 1758
	mul		x6, x30, x5	# 1758
	add		x4, x4, x6	# 1758
	flw		f4, 0(x4)	# 1758
	lw		x4, -96(x2)	# 488
	lw		x6, 20(x4)	# 488
	mul		x7, x30, x5	# 493
	add		x6, x6, x7	# 493
	flw		f5, 0(x6)	# 493
	fsub	f4, f4, f5	# 1758
	flw		f5, -136(x2)	# 1760
	fmul	f5, f4, f5	# 1760
	flw		f6, -132(x2)	# 166
	fsub	f5, f5, f6	# 166
	lw		x6, -84(x2)	# 153
	lw		x29, -48(x2)	# 153
	fsw		f1, -144(x2)	# 153
	fsw		f3, -148(x2)	# 153
	fsw		f4, -152(x2)	# 153
	fsw		f2, -156(x2)	# 153
	addi	x4, x6, 0
	fadd	f1, f0, f5
	sw		x1, -160(x2)	# 153
	addi	x2, x2, -164	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 164	# 153
	lw		x1, -160(x2)	# 153
	sw		x1, -160(x2)	# 166
	addi	x2, x2, -164	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 164	# 166
	lw		x1, -160(x2)	# 166
	flw		f2, -156(x2)	# 1760
	fmul	f1, f1, f2	# 1760
	flw		f2, -152(x2)	# 1761
	fsub	f1, f2, f1	# 1761
	flw		f2, -144(x2)	# 125
	flw		f3, -148(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.37081	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.37083	# 125
	flw		f1, -44(x2)	# 1766
	jal		x0, fle_cont.37082	# 125
fle_else.37083:
	flw		f1, -56(x2)	# 1766
fle_cont.37082:
	jal		x0, fle_cont.37080	# 125
fle_else.37081:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.37085	# 125
	flw		f1, -56(x2)	# 1765
	jal		x0, fle_cont.37084	# 125
fle_else.37085:
	flw		f1, -44(x2)	# 1765
fle_cont.37084:
fle_cont.37080:
	lui		x4, 70580	# 1763
	ori		x4, x0, 70580	# 1763
	lw		x5, -64(x2)	# 1763
	mul		x6, x30, x5	# 1763
	add		x4, x4, x6	# 1763
	fsw		f1, 0(x4)	# 1763
beq_cont.37060:
	lw		x4, -28(x2)	# 1883
	lw		x5, -100(x2)	# 1883
	mul		x5, x5, x4	# 1883
	lui		x6, 70544	# 1883
	ori		x6, x0, 70544	# 1883
	lw		x7, -84(x2)	# 1883
	mul		x8, x30, x7	# 1883
	add		x6, x6, x8	# 1883
	lw		x6, 0(x6)	# 1883
	add		x5, x5, x6	# 1883
	lw		x6, -80(x2)	# 1883
	mul		x8, x30, x6	# 1883
	lw		x9, -76(x2)	# 1883
	add		x8, x9, x8	# 1883
	sw		x5, 0(x8)	# 1883
	lw		x5, -20(x2)	# 606
	lw		x8, 4(x5)	# 606
	mul		x10, x30, x6	# 1885
	add		x8, x8, x10	# 1885
	lw		x8, 0(x8)	# 1885
	lui		x10, 70552	# 296
	ori		x10, x0, 70552	# 296
	mul		x11, x30, x7	# 296
	add		x10, x10, x11	# 296
	flw		f1, 0(x10)	# 296
	mul		x10, x30, x7	# 296
	add		x10, x8, x10	# 296
	fsw		f1, 0(x10)	# 296
	lui		x10, 70552	# 297
	ori		x10, x0, 70552	# 297
	lw		x11, -64(x2)	# 297
	mul		x12, x30, x11	# 297
	add		x10, x10, x12	# 297
	flw		f1, 0(x10)	# 297
	mul		x10, x30, x11	# 297
	add		x10, x8, x10	# 297
	fsw		f1, 0(x10)	# 297
	lui		x10, 70552	# 298
	ori		x10, x0, 70552	# 298
	lw		x12, -60(x2)	# 298
	mul		x13, x30, x12	# 298
	add		x10, x10, x13	# 298
	flw		f1, 0(x10)	# 298
	mul		x10, x30, x12	# 298
	add		x8, x8, x10	# 298
	fsw		f1, 0(x8)	# 298
	lw		x8, 12(x5)	# 621
	lw		x10, -96(x2)	# 498
	lw		x13, 28(x10)	# 498
	mul		x14, x30, x7	# 503
	add		x13, x13, x14	# 503
	flw		f1, 0(x13)	# 503
	fadd	f2, f0, f26	# 1889
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.37087	# 125
	mul		x13, x30, x6	# 1892
	add		x8, x8, x13	# 1892
	sw		x11, 0(x8)	# 1892
	lw		x8, 16(x5)	# 628
	mul		x13, x30, x6	# 1894
	add		x13, x8, x13	# 1894
	lw		x13, 0(x13)	# 1894
	lui		x14, 70580	# 296
	ori		x14, x0, 70580	# 296
	mul		x15, x30, x7	# 296
	add		x14, x14, x15	# 296
	flw		f1, 0(x14)	# 296
	mul		x14, x30, x7	# 296
	add		x14, x13, x14	# 296
	fsw		f1, 0(x14)	# 296
	lui		x14, 70580	# 297
	ori		x14, x0, 70580	# 297
	mul		x15, x30, x11	# 297
	add		x14, x14, x15	# 297
	flw		f1, 0(x14)	# 297
	mul		x14, x30, x11	# 297
	add		x14, x13, x14	# 297
	fsw		f1, 0(x14)	# 297
	lui		x14, 70580	# 298
	ori		x14, x0, 70580	# 298
	mul		x15, x30, x12	# 298
	add		x14, x14, x15	# 298
	flw		f1, 0(x14)	# 298
	mul		x14, x30, x12	# 298
	add		x13, x13, x14	# 298
	fsw		f1, 0(x13)	# 298
	mul		x13, x30, x6	# 1895
	add		x8, x8, x13	# 1895
	lw		x8, 0(x8)	# 1895
	lui		x13, %hi(l.29560)	# 1895
	ori		x13, x0, %lo(l.29560)	# 1895
	flw		f1, 0(x13)	# 1895
	flw		f2, -92(x2)	# 1895
	fmul	f1, f1, f2	# 1895
	mul		x13, x30, x7	# 362
	add		x13, x8, x13	# 362
	flw		f3, 0(x13)	# 362
	fmul	f3, f3, f1	# 362
	mul		x13, x30, x7	# 362
	add		x13, x8, x13	# 362
	fsw		f3, 0(x13)	# 362
	mul		x13, x30, x11	# 363
	add		x13, x8, x13	# 363
	flw		f3, 0(x13)	# 363
	fmul	f3, f3, f1	# 363
	mul		x13, x30, x11	# 363
	add		x13, x8, x13	# 363
	fsw		f3, 0(x13)	# 363
	mul		x13, x30, x12	# 364
	add		x13, x8, x13	# 364
	flw		f3, 0(x13)	# 364
	fmul	f1, f3, f1	# 364
	mul		x13, x30, x12	# 364
	add		x8, x8, x13	# 364
	fsw		f1, 0(x8)	# 364
	lw		x8, 28(x5)	# 665
	mul		x13, x30, x6	# 1897
	add		x8, x8, x13	# 1897
	lw		x8, 0(x8)	# 1897
	lui		x13, 70568	# 296
	ori		x13, x0, 70568	# 296
	mul		x14, x30, x7	# 296
	add		x13, x13, x14	# 296
	flw		f1, 0(x13)	# 296
	mul		x13, x30, x7	# 296
	add		x13, x8, x13	# 296
	fsw		f1, 0(x13)	# 296
	lui		x13, 70568	# 297
	ori		x13, x0, 70568	# 297
	mul		x14, x30, x11	# 297
	add		x13, x13, x14	# 297
	flw		f1, 0(x13)	# 297
	mul		x13, x30, x11	# 297
	add		x13, x8, x13	# 297
	fsw		f1, 0(x13)	# 297
	lui		x13, 70568	# 298
	ori		x13, x0, 70568	# 298
	mul		x14, x30, x12	# 298
	add		x13, x13, x14	# 298
	flw		f1, 0(x13)	# 298
	mul		x13, x30, x12	# 298
	add		x8, x8, x13	# 298
	fsw		f1, 0(x8)	# 298
	jal		x0, fle_cont.37086	# 125
fle_else.37087:
	mul		x13, x30, x6	# 1890
	add		x8, x8, x13	# 1890
	sw		x7, 0(x8)	# 1890
fle_cont.37086:
	lui		x8, %hi(l.29588)	# 1900
	ori		x8, x0, %lo(l.29588)	# 1900
	flw		f1, 0(x8)	# 1900
	mul		x8, x30, x7	# 329
	lw		x13, -68(x2)	# 329
	add		x8, x13, x8	# 329
	flw		f2, 0(x8)	# 329
	lui		x8, 70568	# 329
	ori		x8, x0, 70568	# 329
	mul		x14, x30, x7	# 329
	add		x8, x8, x14	# 329
	flw		f3, 0(x8)	# 329
	fmul	f4, f2, f3	# 329
	mul		x8, x30, x11	# 329
	add		x8, x13, x8	# 329
	flw		f5, 0(x8)	# 329
	lui		x8, 70568	# 329
	ori		x8, x0, 70568	# 329
	mul		x14, x30, x11	# 329
	add		x8, x8, x14	# 329
	flw		f6, 0(x8)	# 329
	fmul	f5, f5, f6	# 329
	fadd	f4, f4, f5	# 329
	mul		x8, x30, x12	# 329
	add		x8, x13, x8	# 329
	flw		f5, 0(x8)	# 329
	lui		x8, 70568	# 329
	ori		x8, x0, 70568	# 329
	mul		x14, x30, x12	# 329
	add		x8, x8, x14	# 329
	flw		f6, 0(x8)	# 329
	fmul	f5, f5, f6	# 329
	fadd	f4, f4, f5	# 329
	fmul	f1, f1, f4	# 1900
	fmul	f3, f1, f3	# 339
	fadd	f2, f2, f3	# 339
	mul		x8, x30, x7	# 339
	add		x8, x13, x8	# 339
	fsw		f2, 0(x8)	# 339
	mul		x8, x30, x11	# 340
	add		x8, x13, x8	# 340
	flw		f2, 0(x8)	# 340
	lui		x8, 70568	# 340
	ori		x8, x0, 70568	# 340
	mul		x14, x30, x11	# 340
	add		x8, x8, x14	# 340
	flw		f3, 0(x8)	# 340
	fmul	f3, f1, f3	# 340
	fadd	f2, f2, f3	# 340
	mul		x8, x30, x11	# 340
	add		x8, x13, x8	# 340
	fsw		f2, 0(x8)	# 340
	mul		x8, x30, x12	# 341
	add		x8, x13, x8	# 341
	flw		f2, 0(x8)	# 341
	lui		x8, 70568	# 341
	ori		x8, x0, 70568	# 341
	mul		x14, x30, x12	# 341
	add		x8, x8, x14	# 341
	flw		f3, 0(x8)	# 341
	fmul	f1, f1, f3	# 341
	fadd	f1, f2, f1	# 341
	mul		x8, x30, x12	# 341
	add		x8, x13, x8	# 341
	fsw		f1, 0(x8)	# 341
	lw		x8, 28(x10)	# 508
	mul		x14, x30, x11	# 513
	add		x8, x8, x14	# 513
	flw		f1, 0(x8)	# 513
	flw		f2, -52(x2)	# 1904
	fmul	f1, f2, f1	# 1904
	lui		x8, 70536	# 1907
	ori		x8, x0, 70536	# 1907
	mul		x14, x30, x7	# 1907
	add		x8, x8, x14	# 1907
	lw		x8, 0(x8)	# 1907
	lw		x29, -16(x2)	# 1907
	fsw		f1, -160(x2)	# 1907
	addi	x5, x8, 0
	addi	x4, x7, 0
	sw		x1, -164(x2)	# 1907
	addi	x2, x2, -168	# 1907
	lw		x31, 0(x29)	# 1907
	jalr	x1, x31, 0	# 1907
	addi	x2, x2, 168	# 1907
	lw		x1, -164(x2)	# 1907
	lw		x5, -84(x2)	# 1907
	beq		x4, x5, beq.37089	# 1907
	jal		x0, beq_cont.37088	# 1907
beq.37089:
	lui		x4, 70568	# 329
	ori		x4, x0, 70568	# 329
	mul		x6, x30, x5	# 329
	add		x4, x4, x6	# 329
	flw		f1, 0(x4)	# 329
	lui		x4, 70312	# 329
	ori		x4, x0, 70312	# 329
	mul		x6, x30, x5	# 329
	add		x4, x4, x6	# 329
	flw		f2, 0(x4)	# 329
	fmul	f1, f1, f2	# 329
	lui		x4, 70568	# 329
	ori		x4, x0, 70568	# 329
	lw		x6, -64(x2)	# 329
	mul		x7, x30, x6	# 329
	add		x4, x4, x7	# 329
	flw		f3, 0(x4)	# 329
	lui		x4, 70312	# 329
	ori		x4, x0, 70312	# 329
	mul		x7, x30, x6	# 329
	add		x4, x4, x7	# 329
	flw		f4, 0(x4)	# 329
	fmul	f3, f3, f4	# 329
	fadd	f1, f1, f3	# 329
	lui		x4, 70568	# 329
	ori		x4, x0, 70568	# 329
	lw		x7, -60(x2)	# 329
	mul		x8, x30, x7	# 329
	add		x4, x4, x8	# 329
	flw		f3, 0(x4)	# 329
	lui		x4, 70312	# 329
	ori		x4, x0, 70312	# 329
	mul		x8, x30, x7	# 329
	add		x4, x4, x8	# 329
	flw		f5, 0(x4)	# 329
	fmul	f3, f3, f5	# 329
	fadd	f1, f1, f3	# 329
	fsub	f1, f0, f1	# 123
	flw		f3, -92(x2)	# 1908
	fmul	f1, f1, f3	# 1908
	mul		x4, x30, x5	# 329
	lw		x8, -68(x2)	# 329
	add		x4, x8, x4	# 329
	flw		f6, 0(x4)	# 329
	fmul	f2, f6, f2	# 329
	mul		x4, x30, x6	# 329
	add		x4, x8, x4	# 329
	flw		f6, 0(x4)	# 329
	fmul	f4, f6, f4	# 329
	fadd	f2, f2, f4	# 329
	mul		x4, x30, x7	# 329
	add		x4, x8, x4	# 329
	flw		f4, 0(x4)	# 329
	fmul	f4, f4, f5	# 329
	fadd	f2, f2, f4	# 329
	fsub	f2, f0, f2	# 123
	flw		f4, -56(x2)	# 121
	fle		x31, f1, f4	# 121
	beq		x31, x0, fle_else.37091	# 121
	jal		x0, fle_cont.37090	# 121
fle_else.37091:
	lui		x4, 70604	# 339
	ori		x4, x0, 70604	# 339
	mul		x9, x30, x5	# 339
	add		x4, x4, x9	# 339
	flw		f5, 0(x4)	# 339
	lui		x4, 70580	# 339
	ori		x4, x0, 70580	# 339
	mul		x9, x30, x5	# 339
	add		x4, x4, x9	# 339
	flw		f6, 0(x4)	# 339
	fmul	f6, f1, f6	# 339
	fadd	f5, f5, f6	# 339
	lui		x4, 70604	# 339
	ori		x4, x0, 70604	# 339
	mul		x9, x30, x5	# 339
	add		x4, x4, x9	# 339
	fsw		f5, 0(x4)	# 339
	lui		x4, 70604	# 340
	ori		x4, x0, 70604	# 340
	mul		x9, x30, x6	# 340
	add		x4, x4, x9	# 340
	flw		f5, 0(x4)	# 340
	lui		x4, 70580	# 340
	ori		x4, x0, 70580	# 340
	mul		x9, x30, x6	# 340
	add		x4, x4, x9	# 340
	flw		f6, 0(x4)	# 340
	fmul	f6, f1, f6	# 340
	fadd	f5, f5, f6	# 340
	lui		x4, 70604	# 340
	ori		x4, x0, 70604	# 340
	mul		x9, x30, x6	# 340
	add		x4, x4, x9	# 340
	fsw		f5, 0(x4)	# 340
	lui		x4, 70604	# 341
	ori		x4, x0, 70604	# 341
	mul		x9, x30, x7	# 341
	add		x4, x4, x9	# 341
	flw		f5, 0(x4)	# 341
	lui		x4, 70580	# 341
	ori		x4, x0, 70580	# 341
	mul		x9, x30, x7	# 341
	add		x4, x4, x9	# 341
	flw		f6, 0(x4)	# 341
	fmul	f1, f1, f6	# 341
	fadd	f1, f5, f1	# 341
	lui		x4, 70604	# 341
	ori		x4, x0, 70604	# 341
	mul		x9, x30, x7	# 341
	add		x4, x4, x9	# 341
	fsw		f1, 0(x4)	# 341
fle_cont.37090:
	fle		x31, f2, f4	# 121
	beq		x31, x0, fle_else.37093	# 121
	jal		x0, fle_cont.37092	# 121
fle_else.37093:
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -160(x2)	# 1831
	fmul	f1, f1, f2	# 1831
	lui		x4, 70604	# 1832
	ori		x4, x0, 70604	# 1832
	mul		x9, x30, x5	# 1832
	add		x4, x4, x9	# 1832
	flw		f4, 0(x4)	# 1832
	fadd	f4, f4, f1	# 1832
	lui		x4, 70604	# 1832
	ori		x4, x0, 70604	# 1832
	mul		x9, x30, x5	# 1832
	add		x4, x4, x9	# 1832
	fsw		f4, 0(x4)	# 1832
	lui		x4, 70604	# 1833
	ori		x4, x0, 70604	# 1833
	mul		x9, x30, x6	# 1833
	add		x4, x4, x9	# 1833
	flw		f4, 0(x4)	# 1833
	fadd	f4, f4, f1	# 1833
	lui		x4, 70604	# 1833
	ori		x4, x0, 70604	# 1833
	mul		x9, x30, x6	# 1833
	add		x4, x4, x9	# 1833
	fsw		f4, 0(x4)	# 1833
	lui		x4, 70604	# 1834
	ori		x4, x0, 70604	# 1834
	mul		x9, x30, x7	# 1834
	add		x4, x4, x9	# 1834
	flw		f4, 0(x4)	# 1834
	fadd	f1, f4, f1	# 1834
	lui		x4, 70604	# 1834
	ori		x4, x0, 70604	# 1834
	mul		x9, x30, x7	# 1834
	add		x4, x4, x9	# 1834
	fsw		f1, 0(x4)	# 1834
fle_cont.37092:
beq_cont.37088:
	lui		x4, 70552	# 296
	ori		x4, x0, 70552	# 296
	mul		x6, x30, x5	# 296
	add		x4, x4, x6	# 296
	flw		f1, 0(x4)	# 296
	lui		x4, 70648	# 296
	ori		x4, x0, 70648	# 296
	mul		x6, x30, x5	# 296
	add		x4, x4, x6	# 296
	fsw		f1, 0(x4)	# 296
	lui		x4, 70552	# 297
	ori		x4, x0, 70552	# 297
	lw		x6, -64(x2)	# 297
	mul		x7, x30, x6	# 297
	add		x4, x4, x7	# 297
	flw		f1, 0(x4)	# 297
	lui		x4, 70648	# 297
	ori		x4, x0, 70648	# 297
	mul		x7, x30, x6	# 297
	add		x4, x4, x7	# 297
	fsw		f1, 0(x4)	# 297
	lui		x4, 70552	# 298
	ori		x4, x0, 70552	# 298
	lw		x7, -60(x2)	# 298
	mul		x8, x30, x7	# 298
	add		x4, x4, x8	# 298
	flw		f1, 0(x4)	# 298
	lui		x4, 70648	# 298
	ori		x4, x0, 70648	# 298
	mul		x8, x30, x7	# 298
	add		x4, x4, x8	# 298
	fsw		f1, 0(x4)	# 298
	lui		x4, 70000	# 1352
	ori		x4, x0, 70000	# 1352
	mul		x8, x30, x5	# 1352
	add		x4, x4, x8	# 1352
	lw		x4, 0(x4)	# 1352
	sub		x4, x4, x6	# 1352
	lui		x8, 70552	# 1352
	ori		x8, x0, 70552	# 1352
	lw		x29, -12(x2)	# 1352
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -164(x2)	# 1352
	addi	x2, x2, -168	# 1352
	lw		x31, 0(x29)	# 1352
	jalr	x1, x31, 0	# 1352
	addi	x2, x2, 168	# 1352
	lw		x1, -164(x2)	# 1352
	lui		x4, 71736	# 1915
	ori		x4, x0, 71736	# 1915
	lw		x5, -84(x2)	# 1915
	mul		x6, x30, x5	# 1915
	add		x4, x4, x6	# 1915
	lw		x4, 0(x4)	# 1915
	lw		x6, -64(x2)	# 1915
	sub		x4, x4, x6	# 1915
	flw		f1, -92(x2)	# 1915
	flw		f2, -160(x2)	# 1915
	lw		x7, -68(x2)	# 1915
	lw		x29, -8(x2)	# 1915
	addi	x5, x7, 0
	sw		x1, -164(x2)	# 1915
	addi	x2, x2, -168	# 1915
	lw		x31, 0(x29)	# 1915
	jalr	x1, x31, 0	# 1915
	addi	x2, x2, 168	# 1915
	lw		x1, -164(x2)	# 1915
	lui		x4, %hi(l.29684)	# 1918
	ori		x4, x0, %lo(l.29684)	# 1918
	flw		f1, 0(x4)	# 1918
	flw		f2, -52(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.37094	# 125
	jalr	x0, x1, 0	# 1929
fle_else.37094:
	lw		x4, -80(x2)	# 1920
	lw		x5, -28(x2)	# 1920
	ble		x5, x4, ble_cont.37096	# 1920
	lw		x5, -64(x2)	# 1921
	add		x6, x4, x5	# 1921
	mul		x6, x30, x6	# 1921
	lw		x7, -76(x2)	# 1921
	add		x6, x7, x6	# 1921
	lw		x7, -72(x2)	# 1921
	sw		x7, 0(x6)	# 1921
ble_cont.37096:
	lw		x5, -60(x2)	# 1924
	lw		x6, -88(x2)	# 1924
	beq		x6, x5, beq.37097	# 1924
	jalr	x0, x1, 0	# 1927
beq.37097:
	fadd	f1, f0, f16	# 1925
	lw		x5, -96(x2)	# 498
	lw		x5, 28(x5)	# 498
	lw		x6, -84(x2)	# 503
	mul		x7, x30, x6	# 503
	add		x5, x5, x7	# 503
	flw		f3, 0(x5)	# 503
	fsub	f1, f1, f3	# 1925
	fmul	f1, f2, f1	# 1925
	lw		x5, -64(x2)	# 1926
	add		x4, x4, x5	# 1926
	lui		x5, 70548	# 1926
	ori		x5, x0, 70548	# 1926
	mul		x6, x30, x6	# 1926
	add		x5, x5, x6	# 1926
	flw		f2, 0(x5)	# 1926
	flw		f3, -4(x2)	# 1926
	fadd	f2, f3, f2	# 1926
	lw		x5, -68(x2)	# 1926
	lw		x6, -20(x2)	# 1926
	lw		x29, 0(x2)	# 1926
	lw		x31, 0(x29)	# 1926
	jalr	x0, x31, 0	# 1926
beq.37045:
	lw		x4, -80(x2)	# 1934
	mul		x6, x30, x4	# 1934
	lw		x7, -76(x2)	# 1934
	add		x6, x7, x6	# 1934
	lw		x7, -72(x2)	# 1934
	sw		x7, 0(x6)	# 1934
	beq		x4, x5, beq.37099	# 1936
	mul		x4, x30, x5	# 329
	lw		x6, -68(x2)	# 329
	add		x4, x6, x4	# 329
	flw		f1, 0(x4)	# 329
	lui		x4, 70312	# 329
	ori		x4, x0, 70312	# 329
	mul		x7, x30, x5	# 329
	add		x4, x4, x7	# 329
	flw		f2, 0(x4)	# 329
	fmul	f1, f1, f2	# 329
	lw		x4, -64(x2)	# 329
	mul		x7, x30, x4	# 329
	add		x7, x6, x7	# 329
	flw		f2, 0(x7)	# 329
	lui		x7, 70312	# 329
	ori		x7, x0, 70312	# 329
	mul		x8, x30, x4	# 329
	add		x7, x7, x8	# 329
	flw		f3, 0(x7)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	lw		x7, -60(x2)	# 329
	mul		x8, x30, x7	# 329
	add		x6, x6, x8	# 329
	flw		f2, 0(x6)	# 329
	lui		x6, 70312	# 329
	ori		x6, x0, 70312	# 329
	mul		x8, x30, x7	# 329
	add		x6, x6, x8	# 329
	flw		f3, 0(x6)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	fsub	f1, f0, f1	# 123
	flw		f2, -56(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.37100	# 121
	jalr	x0, x1, 0	# 1947
fle_else.37100:
	fmul	f2, f1, f1	# 127
	fmul	f1, f2, f1	# 1942
	flw		f2, -52(x2)	# 1942
	fmul	f1, f1, f2	# 1942
	lui		x6, 70324	# 1942
	ori		x6, x0, 70324	# 1942
	mul		x8, x30, x5	# 1942
	add		x6, x6, x8	# 1942
	flw		f2, 0(x6)	# 1942
	fmul	f1, f1, f2	# 1942
	lui		x6, 70604	# 1943
	ori		x6, x0, 70604	# 1943
	mul		x8, x30, x5	# 1943
	add		x6, x6, x8	# 1943
	flw		f2, 0(x6)	# 1943
	fadd	f2, f2, f1	# 1943
	lui		x6, 70604	# 1943
	ori		x6, x0, 70604	# 1943
	mul		x5, x30, x5	# 1943
	add		x5, x6, x5	# 1943
	fsw		f2, 0(x5)	# 1943
	lui		x5, 70604	# 1944
	ori		x5, x0, 70604	# 1944
	mul		x6, x30, x4	# 1944
	add		x5, x5, x6	# 1944
	flw		f2, 0(x5)	# 1944
	fadd	f2, f2, f1	# 1944
	lui		x5, 70604	# 1944
	ori		x5, x0, 70604	# 1944
	mul		x4, x30, x4	# 1944
	add		x4, x5, x4	# 1944
	fsw		f2, 0(x4)	# 1944
	lui		x4, 70604	# 1945
	ori		x4, x0, 70604	# 1945
	mul		x5, x30, x7	# 1945
	add		x4, x4, x5	# 1945
	flw		f2, 0(x4)	# 1945
	fadd	f1, f2, f1	# 1945
	lui		x4, 70604	# 1945
	ori		x4, x0, 70604	# 1945
	mul		x5, x30, x7	# 1945
	add		x4, x4, x5	# 1945
	fsw		f1, 0(x4)	# 1945
	jalr	x0, x1, 0	# 1945
beq.37099:
	jalr	x0, x1, 0	# 1948
iter_trace_diffuse_rays.2897.18836:
	lw		x8, 60(x29)	# 1981
	lw		x9, 56(x29)	# 1981
	lw		x10, 52(x29)	# 1981
	flw		f1, 48(x29)	# 1981
	flw		f2, 44(x29)	# 1981
	lw		x11, 40(x29)	# 1981
	lw		x12, 36(x29)	# 1981
	lw		x13, 32(x29)	# 1981
	lw		x14, 28(x29)	# 1981
	lw		x15, 24(x29)	# 1981
	lw		x16, 20(x29)	# 1981
	lw		x17, 16(x29)	# 1981
	flw		f3, 12(x29)	# 1981
	flw		f4, 8(x29)	# 1981
	flw		f5, 4(x29)	# 1981
	ble		x16, x7, ble.37104	# 1981
	jalr	x0, x1, 0	# 1992
ble.37104:
	mul		x18, x30, x7	# 1982
	add		x18, x4, x18	# 1982
	lw		x18, 0(x18)	# 1982
	lw		x19, 0(x18)	# 676
	mul		x20, x30, x16	# 329
	add		x20, x19, x20	# 329
	flw		f6, 0(x20)	# 329
	mul		x20, x30, x16	# 329
	add		x20, x5, x20	# 329
	flw		f7, 0(x20)	# 329
	fmul	f6, f6, f7	# 329
	mul		x20, x30, x17	# 329
	add		x20, x19, x20	# 329
	flw		f7, 0(x20)	# 329
	mul		x20, x30, x17	# 329
	add		x20, x5, x20	# 329
	flw		f8, 0(x20)	# 329
	fmul	f7, f7, f8	# 329
	fadd	f6, f6, f7	# 329
	mul		x20, x30, x14	# 329
	add		x19, x19, x20	# 329
	flw		f7, 0(x19)	# 329
	mul		x19, x30, x14	# 329
	add		x19, x5, x19	# 329
	flw		f8, 0(x19)	# 329
	fmul	f7, f7, f8	# 329
	fadd	f6, f6, f7	# 329
	sw		x6, 0(x2)	# 122
	sw		x5, -4(x2)	# 122
	sw		x4, -8(x2)	# 122
	sw		x29, -12(x2)	# 122
	sw		x14, -16(x2)	# 122
	sw		x7, -20(x2)	# 122
	fle		x31, f5, f6	# 122
	beq		x31, x0, fle_else.37107	# 122
	fadd	f7, f0, f24	# 1989
	fdiv	f6, f6, f7	# 1989
	lui		x19, 70548	# 1671
	ori		x19, x0, 70548	# 1671
	mul		x20, x30, x16	# 1671
	add		x19, x19, x20	# 1671
	fsw		f3, 0(x19)	# 1671
	lui		x19, 70536	# 1672
	ori		x19, x0, 70536	# 1672
	mul		x20, x30, x16	# 1672
	add		x19, x19, x20	# 1672
	lw		x19, 0(x19)	# 1672
	fsw		f6, -24(x2)	# 1672
	sw		x10, -28(x2)	# 1672
	sw		x13, -32(x2)	# 1672
	sw		x12, -36(x2)	# 1672
	fsw		f2, -40(x2)	# 1672
	fsw		f1, -44(x2)	# 1672
	sw		x15, -48(x2)	# 1672
	sw		x9, -52(x2)	# 1672
	fsw		f4, -56(x2)	# 1672
	sw		x11, -60(x2)	# 1672
	fsw		f5, -64(x2)	# 1672
	sw		x17, -68(x2)	# 1672
	sw		x18, -72(x2)	# 1672
	sw		x16, -76(x2)	# 1672
	addi	x6, x18, 0
	addi	x5, x19, 0
	addi	x4, x16, 0
	addi	x29, x8, 0
	sw		x1, -80(x2)	# 1672
	addi	x2, x2, -84	# 1672
	lw		x31, 0(x29)	# 1672
	jalr	x1, x31, 0	# 1672
	addi	x2, x2, 84	# 1672
	lw		x1, -80(x2)	# 1672
	lui		x4, 70548	# 1673
	ori		x4, x0, 70548	# 1673
	lw		x5, -76(x2)	# 1673
	mul		x6, x30, x5	# 1673
	add		x4, x4, x6	# 1673
	flw		f1, 0(x4)	# 1673
	fadd	f2, f0, f21	# 1675
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.37109	# 125
	addi	x4, x0, 0	# 1677
	jal		x0, fle_cont.37108	# 125
fle_else.37109:
	fadd	f2, f0, f22	# 1676
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.37111	# 125
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.37110	# 125
fle_else.37111:
	addi	x4, x0, 1	# 125
fle_cont.37110:
fle_cont.37108:
	beq		x4, x5, beq_cont.37112	# 1964
	lui		x4, 70564	# 1965
	ori		x4, x0, 70564	# 1965
	mul		x6, x30, x5	# 1965
	add		x4, x4, x6	# 1965
	lw		x4, 0(x4)	# 1965
	lui		x6, 70048	# 1965
	ori		x6, x0, 70048	# 1965
	mul		x4, x30, x4	# 1965
	add		x4, x6, x4	# 1965
	lw		x4, 0(x4)	# 1965
	lw		x6, -72(x2)	# 676
	lw		x6, 0(x6)	# 676
	lw		x7, 4(x4)	# 390
	lw		x8, -68(x2)	# 1730
	beq		x7, x8, beq.37114	# 1730
	lw		x6, -16(x2)	# 1732
	beq		x7, x6, beq.37116	# 1732
	lui		x7, 70552	# 1707
	ori		x7, x0, 70552	# 1707
	mul		x9, x30, x5	# 1707
	add		x7, x7, x9	# 1707
	flw		f1, 0(x7)	# 1707
	lw		x7, 20(x4)	# 468
	mul		x9, x30, x5	# 473
	add		x7, x7, x9	# 473
	flw		f2, 0(x7)	# 473
	fsub	f1, f1, f2	# 1707
	lui		x7, 70552	# 1708
	ori		x7, x0, 70552	# 1708
	mul		x9, x30, x8	# 1708
	add		x7, x7, x9	# 1708
	flw		f2, 0(x7)	# 1708
	lw		x7, 20(x4)	# 478
	mul		x9, x30, x8	# 483
	add		x7, x7, x9	# 483
	flw		f3, 0(x7)	# 483
	fsub	f2, f2, f3	# 1708
	lui		x7, 70552	# 1709
	ori		x7, x0, 70552	# 1709
	mul		x9, x30, x6	# 1709
	add		x7, x7, x9	# 1709
	flw		f3, 0(x7)	# 1709
	lw		x7, 20(x4)	# 488
	mul		x9, x30, x6	# 493
	add		x7, x7, x9	# 493
	flw		f4, 0(x7)	# 493
	fsub	f3, f3, f4	# 1709
	lw		x7, 16(x4)	# 428
	mul		x9, x30, x5	# 433
	add		x7, x7, x9	# 433
	flw		f4, 0(x7)	# 433
	fmul	f4, f1, f4	# 1711
	lw		x7, 16(x4)	# 438
	mul		x9, x30, x8	# 443
	add		x7, x7, x9	# 443
	flw		f5, 0(x7)	# 443
	fmul	f5, f2, f5	# 1712
	lw		x7, 16(x4)	# 448
	mul		x9, x30, x6	# 453
	add		x7, x7, x9	# 453
	flw		f6, 0(x7)	# 453
	fmul	f6, f3, f6	# 1713
	lw		x7, 12(x4)	# 419
	beq		x7, x5, beq.37118	# 1715
	lw		x7, 36(x4)	# 568
	mul		x9, x30, x6	# 573
	add		x7, x7, x9	# 573
	flw		f7, 0(x7)	# 573
	fmul	f8, f2, f7	# 1720
	lw		x7, 36(x4)	# 558
	mul		x9, x30, x8	# 563
	add		x7, x7, x9	# 563
	flw		f9, 0(x7)	# 563
	fmul	f10, f3, f9	# 1720
	fadd	f8, f8, f10	# 1720
	fadd	f10, f0, f26	# 126
	fmul	f8, f8, f10	# 126
	fadd	f4, f4, f8	# 1720
	lui		x7, 70568	# 1720
	ori		x7, x0, 70568	# 1720
	mul		x9, x30, x5	# 1720
	add		x7, x7, x9	# 1720
	fsw		f4, 0(x7)	# 1720
	fmul	f4, f1, f7	# 1721
	lw		x7, 36(x4)	# 548
	mul		x9, x30, x5	# 553
	add		x7, x7, x9	# 553
	flw		f7, 0(x7)	# 553
	fmul	f3, f3, f7	# 1721
	fadd	f3, f4, f3	# 1721
	fmul	f3, f3, f10	# 126
	fadd	f3, f5, f3	# 1721
	lui		x7, 70568	# 1721
	ori		x7, x0, 70568	# 1721
	mul		x9, x30, x8	# 1721
	add		x7, x7, x9	# 1721
	fsw		f3, 0(x7)	# 1721
	fmul	f1, f1, f9	# 1722
	fmul	f2, f2, f7	# 1722
	fadd	f1, f1, f2	# 1722
	fmul	f1, f1, f10	# 126
	fadd	f1, f6, f1	# 1722
	lui		x7, 70568	# 1722
	ori		x7, x0, 70568	# 1722
	mul		x9, x30, x6	# 1722
	add		x7, x7, x9	# 1722
	fsw		f1, 0(x7)	# 1722
	jal		x0, beq_cont.37117	# 1715
beq.37118:
	lui		x7, 70568	# 1716
	ori		x7, x0, 70568	# 1716
	mul		x9, x30, x5	# 1716
	add		x7, x7, x9	# 1716
	fsw		f4, 0(x7)	# 1716
	lui		x7, 70568	# 1717
	ori		x7, x0, 70568	# 1717
	mul		x9, x30, x8	# 1717
	add		x7, x7, x9	# 1717
	fsw		f5, 0(x7)	# 1717
	lui		x7, 70568	# 1718
	ori		x7, x0, 70568	# 1718
	mul		x9, x30, x6	# 1718
	add		x7, x7, x9	# 1718
	fsw		f6, 0(x7)	# 1718
beq_cont.37117:
	lw		x7, 24(x4)	# 410
	lui		x9, 70568	# 320
	ori		x9, x0, 70568	# 320
	mul		x10, x30, x5	# 320
	add		x9, x9, x10	# 320
	flw		f1, 0(x9)	# 320
	fmul	f1, f1, f1	# 127
	lui		x9, 70568	# 320
	ori		x9, x0, 70568	# 320
	mul		x10, x30, x8	# 320
	add		x9, x9, x10	# 320
	flw		f2, 0(x9)	# 320
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 320
	lui		x9, 70568	# 320
	ori		x9, x0, 70568	# 320
	mul		x10, x30, x6	# 320
	add		x9, x9, x10	# 320
	flw		f2, 0(x9)	# 320
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 320
	fsqrt	f1, f1	# 320
	flw		f2, -64(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.37120	# 120
	fadd	f1, f0, f16	# 321
	jal		x0, feq_cont.37119	# 120
feq_else.37120:
	beq		x7, x5, beq.37122	# 321
	lui		x7, %hi(l.27841)	# 321
	ori		x7, x0, %lo(l.27841)	# 321
	flw		f3, 0(x7)	# 321
	fdiv	f1, f3, f1	# 321
	jal		x0, beq_cont.37121	# 321
beq.37122:
	fadd	f3, f0, f16	# 321
	fdiv	f1, f3, f1	# 321
beq_cont.37121:
feq_cont.37119:
	lui		x7, 70568	# 322
	ori		x7, x0, 70568	# 322
	mul		x9, x30, x5	# 322
	add		x7, x7, x9	# 322
	flw		f3, 0(x7)	# 322
	fmul	f3, f3, f1	# 322
	lui		x7, 70568	# 322
	ori		x7, x0, 70568	# 322
	mul		x9, x30, x5	# 322
	add		x7, x7, x9	# 322
	fsw		f3, 0(x7)	# 322
	lui		x7, 70568	# 323
	ori		x7, x0, 70568	# 323
	mul		x9, x30, x8	# 323
	add		x7, x7, x9	# 323
	flw		f3, 0(x7)	# 323
	fmul	f3, f3, f1	# 323
	lui		x7, 70568	# 323
	ori		x7, x0, 70568	# 323
	mul		x9, x30, x8	# 323
	add		x7, x7, x9	# 323
	fsw		f3, 0(x7)	# 323
	lui		x7, 70568	# 324
	ori		x7, x0, 70568	# 324
	mul		x9, x30, x6	# 324
	add		x7, x7, x9	# 324
	flw		f3, 0(x7)	# 324
	fmul	f1, f3, f1	# 324
	lui		x7, 70568	# 324
	ori		x7, x0, 70568	# 324
	mul		x9, x30, x6	# 324
	add		x7, x7, x9	# 324
	fsw		f1, 0(x7)	# 324
	jal		x0, beq_cont.37115	# 1732
beq.37116:
	lw		x7, 16(x4)	# 428
	mul		x9, x30, x5	# 433
	add		x7, x7, x9	# 433
	flw		f1, 0(x7)	# 433
	fsub	f1, f0, f1	# 123
	lui		x7, 70568	# 1700
	ori		x7, x0, 70568	# 1700
	mul		x9, x30, x5	# 1700
	add		x7, x7, x9	# 1700
	fsw		f1, 0(x7)	# 1700
	lw		x7, 16(x4)	# 438
	mul		x9, x30, x8	# 443
	add		x7, x7, x9	# 443
	flw		f1, 0(x7)	# 443
	fsub	f1, f0, f1	# 123
	lui		x7, 70568	# 1701
	ori		x7, x0, 70568	# 1701
	mul		x9, x30, x8	# 1701
	add		x7, x7, x9	# 1701
	fsw		f1, 0(x7)	# 1701
	lw		x7, 16(x4)	# 448
	mul		x9, x30, x6	# 453
	add		x7, x7, x9	# 453
	flw		f1, 0(x7)	# 453
	fsub	f1, f0, f1	# 123
	lui		x7, 70568	# 1702
	ori		x7, x0, 70568	# 1702
	mul		x9, x30, x6	# 1702
	add		x7, x7, x9	# 1702
	fsw		f1, 0(x7)	# 1702
beq_cont.37115:
	jal		x0, beq_cont.37113	# 1730
beq.37114:
	lui		x7, 70544	# 1691
	ori		x7, x0, 70544	# 1691
	mul		x9, x30, x5	# 1691
	add		x7, x7, x9	# 1691
	lw		x7, 0(x7)	# 1691
	lui		x9, 70568	# 284
	ori		x9, x0, 70568	# 284
	mul		x10, x30, x5	# 284
	add		x9, x9, x10	# 284
	flw		f1, -64(x2)	# 284
	fsw		f1, 0(x9)	# 284
	lui		x9, 70568	# 285
	ori		x9, x0, 70568	# 285
	mul		x10, x30, x8	# 285
	add		x9, x9, x10	# 285
	fsw		f1, 0(x9)	# 285
	lui		x9, 70568	# 286
	ori		x9, x0, 70568	# 286
	lw		x10, -16(x2)	# 286
	mul		x11, x30, x10	# 286
	add		x9, x9, x11	# 286
	fsw		f1, 0(x9)	# 286
	sub		x7, x7, x8	# 1694
	mul		x9, x30, x7	# 1694
	add		x6, x6, x9	# 1694
	flw		f2, 0(x6)	# 1694
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.37124	# 120
	fadd	f2, f0, f1	# 249
	jal		x0, feq_cont.37123	# 120
feq_else.37124:
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.37126	# 121
	lui		x6, %hi(l.27841)	# 251
	ori		x6, x0, %lo(l.27841)	# 251
	flw		f2, 0(x6)	# 251
	jal		x0, fle_cont.37125	# 121
fle_else.37126:
	fadd	f2, f0, f16	# 250
fle_cont.37125:
feq_cont.37123:
	fsub	f2, f0, f2	# 123
	lui		x6, 70568	# 1694
	ori		x6, x0, 70568	# 1694
	mul		x7, x30, x7	# 1694
	add		x6, x6, x7	# 1694
	fsw		f2, 0(x6)	# 1694
beq_cont.37113:
	lw		x6, 0(x4)	# 380
	lw		x7, 32(x4)	# 518
	mul		x9, x30, x5	# 523
	add		x7, x7, x9	# 523
	flw		f1, 0(x7)	# 523
	lui		x7, 70580	# 1747
	ori		x7, x0, 70580	# 1747
	mul		x9, x30, x5	# 1747
	add		x7, x7, x9	# 1747
	fsw		f1, 0(x7)	# 1747
	lw		x7, 32(x4)	# 528
	mul		x9, x30, x8	# 533
	add		x7, x7, x9	# 533
	flw		f1, 0(x7)	# 533
	lui		x7, 70580	# 1748
	ori		x7, x0, 70580	# 1748
	mul		x9, x30, x8	# 1748
	add		x7, x7, x9	# 1748
	fsw		f1, 0(x7)	# 1748
	lw		x7, 32(x4)	# 538
	lw		x9, -16(x2)	# 543
	mul		x10, x30, x9	# 543
	add		x7, x7, x10	# 543
	flw		f1, 0(x7)	# 543
	lui		x7, 70580	# 1749
	ori		x7, x0, 70580	# 1749
	mul		x10, x30, x9	# 1749
	add		x7, x7, x10	# 1749
	fsw		f1, 0(x7)	# 1749
	sw		x4, -80(x2)	# 1750
	beq		x6, x8, beq.37128	# 1750
	beq		x6, x9, beq.37130	# 1768
	lw		x7, -48(x2)	# 1775
	beq		x6, x7, beq.37132	# 1775
	addi	x7, x0, 4	# 1786
	beq		x6, x7, beq.37134	# 1786
	jal		x0, beq_cont.37133	# 1786
beq.37134:
	lui		x6, 70552	# 1788
	ori		x6, x0, 70552	# 1788
	mul		x7, x30, x5	# 1788
	add		x6, x6, x7	# 1788
	flw		f1, 0(x6)	# 1788
	lw		x6, 20(x4)	# 468
	mul		x7, x30, x5	# 473
	add		x6, x6, x7	# 473
	flw		f2, 0(x6)	# 473
	fsub	f1, f1, f2	# 1788
	lw		x6, 16(x4)	# 428
	mul		x7, x30, x5	# 433
	add		x6, x6, x7	# 433
	flw		f2, 0(x6)	# 433
	fsqrt	f2, f2	# 1788
	fmul	f1, f1, f2	# 1788
	lui		x6, 70552	# 1789
	ori		x6, x0, 70552	# 1789
	mul		x7, x30, x9	# 1789
	add		x6, x6, x7	# 1789
	flw		f2, 0(x6)	# 1789
	lw		x6, 20(x4)	# 488
	mul		x7, x30, x9	# 493
	add		x6, x6, x7	# 493
	flw		f3, 0(x6)	# 493
	fsub	f2, f2, f3	# 1789
	lw		x6, 16(x4)	# 448
	mul		x7, x30, x9	# 453
	add		x6, x6, x7	# 453
	flw		f3, 0(x6)	# 453
	fsqrt	f3, f3	# 1789
	fmul	f2, f2, f3	# 1789
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1790
	flw		f4, -64(x2)	# 124
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_else.37136	# 124
	fsub	f5, f0, f1	# 124
	jal		x0, fle_cont.37135	# 124
fle_else.37136:
	fadd	f5, f0, f1	# 124
fle_cont.37135:
	lui		x6, %hi(l.29453)	# 1792
	ori		x6, x0, %lo(l.29453)	# 1792
	flw		f6, 0(x6)	# 1792
	fsw		f6, -84(x2)	# 125
	fsw		f3, -88(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.37138	# 125
	fdiv	f1, f2, f1	# 1795
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_cont.37139	# 124
	fsub	f1, f0, f1	# 124
fle_cont.37139:
	lw		x29, -32(x2)	# 1797
	sw		x1, -92(x2)	# 1797
	addi	x2, x2, -96	# 1797
	lw		x31, 0(x29)	# 1797
	jalr	x1, x31, 0	# 1797
	addi	x2, x2, 96	# 1797
	lw		x1, -92(x2)	# 1797
	lui		x4, %hi(l.29457)	# 1797
	ori		x4, x0, %lo(l.29457)	# 1797
	flw		f2, 0(x4)	# 1797
	fmul	f1, f1, f2	# 1797
	lui		x4, %hi(l.29459)	# 1797
	ori		x4, x0, %lo(l.29459)	# 1797
	flw		f2, 0(x4)	# 1797
	fdiv	f1, f1, f2	# 1797
	jal		x0, fle_cont.37137	# 125
fle_else.37138:
	lui		x6, %hi(l.29455)	# 1793
	ori		x6, x0, %lo(l.29455)	# 1793
	flw		f1, 0(x6)	# 1793
fle_cont.37137:
	fadd	f2, f0, f26	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -76(x2)	# 153
	lw		x29, -60(x2)	# 153
	fsw		f2, -92(x2)	# 153
	fsw		f1, -96(x2)	# 153
	fadd	f1, f0, f3
	sw		x1, -100(x2)	# 153
	addi	x2, x2, -104	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 104	# 153
	lw		x1, -100(x2)	# 153
	sw		x1, -100(x2)	# 166
	addi	x2, x2, -104	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 104	# 166
	lw		x1, -100(x2)	# 166
	flw		f2, -96(x2)	# 1799
	fsub	f1, f2, f1	# 1799
	lui		x4, 70552	# 1801
	ori		x4, x0, 70552	# 1801
	lw		x5, -68(x2)	# 1801
	mul		x6, x30, x5	# 1801
	add		x4, x4, x6	# 1801
	flw		f2, 0(x4)	# 1801
	lw		x4, -80(x2)	# 478
	lw		x6, 20(x4)	# 478
	mul		x7, x30, x5	# 483
	add		x6, x6, x7	# 483
	flw		f3, 0(x6)	# 483
	fsub	f2, f2, f3	# 1801
	lw		x6, 16(x4)	# 438
	mul		x7, x30, x5	# 443
	add		x6, x6, x7	# 443
	flw		f3, 0(x6)	# 443
	fsqrt	f3, f3	# 1801
	fmul	f2, f2, f3	# 1801
	flw		f3, -64(x2)	# 124
	flw		f4, -88(x2)	# 124
	fle		x31, f4, f3	# 124
	beq		x31, x0, fle_else.37141	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.37140	# 124
fle_else.37141:
	fadd	f5, f0, f4	# 124
fle_cont.37140:
	flw		f6, -84(x2)	# 125
	fsw		f1, -100(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.37143	# 125
	fdiv	f2, f2, f4	# 1806
	fle		x31, f2, f3	# 124
	beq		x31, x0, fle_cont.37144	# 124
	fsub	f2, f0, f2	# 124
fle_cont.37144:
	lw		x29, -32(x2)	# 1807
	fadd	f1, f0, f2
	sw		x1, -104(x2)	# 1807
	addi	x2, x2, -108	# 1807
	lw		x31, 0(x29)	# 1807
	jalr	x1, x31, 0	# 1807
	addi	x2, x2, 108	# 1807
	lw		x1, -104(x2)	# 1807
	lui		x4, %hi(l.29457)	# 1807
	ori		x4, x0, %lo(l.29457)	# 1807
	flw		f2, 0(x4)	# 1807
	fmul	f1, f1, f2	# 1807
	lui		x4, %hi(l.29459)	# 1807
	ori		x4, x0, %lo(l.29459)	# 1807
	flw		f2, 0(x4)	# 1807
	fdiv	f1, f1, f2	# 1807
	jal		x0, fle_cont.37142	# 125
fle_else.37143:
	lui		x6, %hi(l.29455)	# 1804
	ori		x6, x0, %lo(l.29455)	# 1804
	flw		f1, 0(x6)	# 1804
fle_cont.37142:
	flw		f2, -92(x2)	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -76(x2)	# 153
	lw		x29, -60(x2)	# 153
	fsw		f1, -104(x2)	# 153
	fadd	f1, f0, f3
	sw		x1, -108(x2)	# 153
	addi	x2, x2, -112	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 112	# 153
	lw		x1, -108(x2)	# 153
	sw		x1, -108(x2)	# 166
	addi	x2, x2, -112	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 112	# 166
	lw		x1, -108(x2)	# 166
	flw		f2, -104(x2)	# 1809
	fsub	f1, f2, f1	# 1809
	lui		x4, %hi(l.29471)	# 1810
	ori		x4, x0, %lo(l.29471)	# 1810
	flw		f2, 0(x4)	# 1810
	flw		f3, -100(x2)	# 1810
	flw		f4, -92(x2)	# 1810
	fsub	f3, f4, f3	# 1810
	fmul	f3, f3, f3	# 127
	fsub	f2, f2, f3	# 1810
	fsub	f1, f4, f1	# 1810
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1810
	flw		f2, -64(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.37146	# 122
	jal		x0, fle_cont.37145	# 122
fle_else.37146:
	fadd	f1, f0, f2	# 1811
fle_cont.37145:
	flw		f3, -56(x2)	# 1812
	fmul	f1, f3, f1	# 1812
	lui		x4, %hi(l.29473)	# 1812
	ori		x4, x0, %lo(l.29473)	# 1812
	flw		f3, 0(x4)	# 1812
	fdiv	f1, f1, f3	# 1812
	lui		x4, 70580	# 1812
	ori		x4, x0, 70580	# 1812
	lw		x5, -16(x2)	# 1812
	mul		x6, x30, x5	# 1812
	add		x4, x4, x6	# 1812
	fsw		f1, 0(x4)	# 1812
beq_cont.37133:
	jal		x0, beq_cont.37131	# 1775
beq.37132:
	lui		x6, 70552	# 1778
	ori		x6, x0, 70552	# 1778
	mul		x7, x30, x5	# 1778
	add		x6, x6, x7	# 1778
	flw		f1, 0(x6)	# 1778
	lw		x6, 20(x4)	# 468
	mul		x7, x30, x5	# 473
	add		x6, x6, x7	# 473
	flw		f2, 0(x6)	# 473
	fsub	f1, f1, f2	# 1778
	lui		x6, 70552	# 1779
	ori		x6, x0, 70552	# 1779
	mul		x7, x30, x9	# 1779
	add		x6, x6, x7	# 1779
	flw		f2, 0(x6)	# 1779
	lw		x6, 20(x4)	# 488
	mul		x7, x30, x9	# 493
	add		x6, x6, x7	# 493
	flw		f3, 0(x6)	# 493
	fsub	f2, f2, f3	# 1779
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1780
	fsqrt	f1, f1	# 1780
	lui		x6, %hi(l.29485)	# 1780
	ori		x6, x0, %lo(l.29485)	# 1780
	flw		f2, 0(x6)	# 1780
	fdiv	f1, f1, f2	# 1780
	fadd	f2, f0, f26	# 166
	fsub	f3, f1, f2	# 166
	lw		x29, -60(x2)	# 153
	fsw		f2, -108(x2)	# 153
	fsw		f1, -112(x2)	# 153
	addi	x4, x5, 0
	fadd	f1, f0, f3
	sw		x1, -116(x2)	# 153
	addi	x2, x2, -120	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 120	# 153
	lw		x1, -116(x2)	# 153
	sw		x1, -116(x2)	# 166
	addi	x2, x2, -120	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 120	# 166
	lw		x1, -116(x2)	# 166
	flw		f2, -112(x2)	# 1781
	fsub	f1, f2, f1	# 1781
	lui		x4, %hi(l.29459)	# 1781
	ori		x4, x0, %lo(l.29459)	# 1781
	flw		f2, 0(x4)	# 1781
	fmul	f1, f1, f2	# 1781
	flw		f2, -64(x2)	# 207
	fle		x31, f2, f1	# 207
	beq		x31, x0, fle_else.37148	# 207
	flw		f3, -44(x2)	# 208
	fle		x31, f1, f3	# 208
	beq		x31, x0, fle_else.37150	# 208
	fmul	f1, f1, f1	# 194
	fmul	f3, f1, f1	# 195
	fadd	f4, f0, f16	# 196
	flw		f5, -108(x2)	# 196
	fmul	f5, f5, f1	# 196
	fsub	f4, f4, f5	# 196
	lui		x4, %hi(l.27762)	# 196
	ori		x4, x0, %lo(l.27762)	# 196
	flw		f5, 0(x4)	# 196
	fmul	f5, f5, f3	# 196
	fadd	f4, f4, f5	# 196
	lui		x4, %hi(l.27764)	# 196
	ori		x4, x0, %lo(l.27764)	# 196
	flw		f5, 0(x4)	# 196
	fmul	f1, f5, f1	# 196
	fmul	f1, f1, f3	# 196
	fsub	f1, f4, f1	# 196
	jal		x0, fle_cont.37149	# 208
fle_else.37150:
	flw		f3, -40(x2)	# 208
	fsub	f1, f3, f1	# 208
	lw		x29, -52(x2)	# 208
	sw		x1, -116(x2)	# 208
	addi	x2, x2, -120	# 208
	lw		x31, 0(x29)	# 208
	jalr	x1, x31, 0	# 208
	addi	x2, x2, 120	# 208
	lw		x1, -116(x2)	# 208
fle_cont.37149:
	jal		x0, fle_cont.37147	# 207
fle_else.37148:
	fsub	f1, f0, f1	# 207
	lw		x29, -36(x2)	# 207
	sw		x1, -116(x2)	# 207
	addi	x2, x2, -120	# 207
	lw		x31, 0(x29)	# 207
	jalr	x1, x31, 0	# 207
	addi	x2, x2, 120	# 207
	lw		x1, -116(x2)	# 207
fle_cont.37147:
	fmul	f1, f1, f1	# 127
	flw		f2, -56(x2)	# 1783
	fmul	f3, f1, f2	# 1783
	lui		x4, 70580	# 1783
	ori		x4, x0, 70580	# 1783
	lw		x5, -68(x2)	# 1783
	mul		x6, x30, x5	# 1783
	add		x4, x4, x6	# 1783
	fsw		f3, 0(x4)	# 1783
	fadd	f3, f0, f16	# 1784
	fsub	f1, f3, f1	# 1784
	fmul	f1, f1, f2	# 1784
	lui		x4, 70580	# 1784
	ori		x4, x0, 70580	# 1784
	lw		x6, -16(x2)	# 1784
	mul		x7, x30, x6	# 1784
	add		x4, x4, x7	# 1784
	fsw		f1, 0(x4)	# 1784
beq_cont.37131:
	jal		x0, beq_cont.37129	# 1768
beq.37130:
	lui		x6, 70552	# 1771
	ori		x6, x0, 70552	# 1771
	mul		x7, x30, x8	# 1771
	add		x6, x6, x7	# 1771
	flw		f1, 0(x6)	# 1771
	lui		x6, %hi(l.29496)	# 1771
	ori		x6, x0, %lo(l.29496)	# 1771
	flw		f2, 0(x6)	# 1771
	fmul	f1, f1, f2	# 1771
	lw		x29, -52(x2)	# 1771
	sw		x1, -116(x2)	# 1771
	addi	x2, x2, -120	# 1771
	lw		x31, 0(x29)	# 1771
	jalr	x1, x31, 0	# 1771
	addi	x2, x2, 120	# 1771
	lw		x1, -116(x2)	# 1771
	fmul	f1, f1, f1	# 127
	flw		f2, -56(x2)	# 1772
	fmul	f3, f2, f1	# 1772
	lui		x4, 70580	# 1772
	ori		x4, x0, 70580	# 1772
	lw		x5, -76(x2)	# 1772
	mul		x6, x30, x5	# 1772
	add		x4, x4, x6	# 1772
	fsw		f3, 0(x4)	# 1772
	fadd	f3, f0, f16	# 1773
	fsub	f1, f3, f1	# 1773
	fmul	f1, f2, f1	# 1773
	lui		x4, 70580	# 1773
	ori		x4, x0, 70580	# 1773
	lw		x6, -68(x2)	# 1773
	mul		x7, x30, x6	# 1773
	add		x4, x4, x7	# 1773
	fsw		f1, 0(x4)	# 1773
beq_cont.37129:
	jal		x0, beq_cont.37127	# 1750
beq.37128:
	lui		x6, 70552	# 1753
	ori		x6, x0, 70552	# 1753
	mul		x7, x30, x5	# 1753
	add		x6, x6, x7	# 1753
	flw		f1, 0(x6)	# 1753
	lw		x6, 20(x4)	# 468
	mul		x7, x30, x5	# 473
	add		x6, x6, x7	# 473
	flw		f2, 0(x6)	# 473
	fsub	f1, f1, f2	# 1753
	lui		x6, %hi(l.29507)	# 1755
	ori		x6, x0, %lo(l.29507)	# 1755
	flw		f2, 0(x6)	# 1755
	fmul	f3, f1, f2	# 1755
	fadd	f4, f0, f26	# 166
	fsub	f3, f3, f4	# 166
	lw		x29, -60(x2)	# 153
	fsw		f4, -116(x2)	# 153
	fsw		f2, -120(x2)	# 153
	fsw		f1, -124(x2)	# 153
	addi	x4, x5, 0
	fadd	f1, f0, f3
	sw		x1, -128(x2)	# 153
	addi	x2, x2, -132	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 132	# 153
	lw		x1, -128(x2)	# 153
	sw		x1, -128(x2)	# 166
	addi	x2, x2, -132	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 132	# 166
	lw		x1, -128(x2)	# 166
	lui		x4, %hi(l.29510)	# 1755
	ori		x4, x0, %lo(l.29510)	# 1755
	flw		f2, 0(x4)	# 1755
	fmul	f1, f1, f2	# 1755
	flw		f3, -124(x2)	# 1756
	fsub	f1, f3, f1	# 1756
	lui		x4, %hi(l.29485)	# 1756
	ori		x4, x0, %lo(l.29485)	# 1756
	flw		f3, 0(x4)	# 1756
	lui		x4, 70552	# 1758
	ori		x4, x0, 70552	# 1758
	lw		x5, -16(x2)	# 1758
	mul		x6, x30, x5	# 1758
	add		x4, x4, x6	# 1758
	flw		f4, 0(x4)	# 1758
	lw		x4, -80(x2)	# 488
	lw		x6, 20(x4)	# 488
	mul		x7, x30, x5	# 493
	add		x6, x6, x7	# 493
	flw		f5, 0(x6)	# 493
	fsub	f4, f4, f5	# 1758
	flw		f5, -120(x2)	# 1760
	fmul	f5, f4, f5	# 1760
	flw		f6, -116(x2)	# 166
	fsub	f5, f5, f6	# 166
	lw		x6, -76(x2)	# 153
	lw		x29, -60(x2)	# 153
	fsw		f1, -128(x2)	# 153
	fsw		f3, -132(x2)	# 153
	fsw		f4, -136(x2)	# 153
	fsw		f2, -140(x2)	# 153
	addi	x4, x6, 0
	fadd	f1, f0, f5
	sw		x1, -144(x2)	# 153
	addi	x2, x2, -148	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 148	# 153
	lw		x1, -144(x2)	# 153
	sw		x1, -144(x2)	# 166
	addi	x2, x2, -148	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 148	# 166
	lw		x1, -144(x2)	# 166
	flw		f2, -140(x2)	# 1760
	fmul	f1, f1, f2	# 1760
	flw		f2, -136(x2)	# 1761
	fsub	f1, f2, f1	# 1761
	flw		f2, -128(x2)	# 125
	flw		f3, -132(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.37152	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.37154	# 125
	flw		f1, -56(x2)	# 1766
	jal		x0, fle_cont.37153	# 125
fle_else.37154:
	flw		f1, -64(x2)	# 1766
fle_cont.37153:
	jal		x0, fle_cont.37151	# 125
fle_else.37152:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.37156	# 125
	flw		f1, -64(x2)	# 1765
	jal		x0, fle_cont.37155	# 125
fle_else.37156:
	flw		f1, -56(x2)	# 1765
fle_cont.37155:
fle_cont.37151:
	lui		x4, 70580	# 1763
	ori		x4, x0, 70580	# 1763
	lw		x5, -68(x2)	# 1763
	mul		x6, x30, x5	# 1763
	add		x4, x4, x6	# 1763
	fsw		f1, 0(x4)	# 1763
beq_cont.37127:
	lui		x4, 70536	# 1970
	ori		x4, x0, 70536	# 1970
	lw		x5, -76(x2)	# 1970
	mul		x6, x30, x5	# 1970
	add		x4, x4, x6	# 1970
	lw		x4, 0(x4)	# 1970
	lw		x29, -28(x2)	# 1970
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -144(x2)	# 1970
	addi	x2, x2, -148	# 1970
	lw		x31, 0(x29)	# 1970
	jalr	x1, x31, 0	# 1970
	addi	x2, x2, 148	# 1970
	lw		x1, -144(x2)	# 1970
	lw		x5, -76(x2)	# 1970
	beq		x4, x5, beq.37158	# 1970
	jal		x0, beq_cont.37157	# 1970
beq.37158:
	lui		x4, 70568	# 329
	ori		x4, x0, 70568	# 329
	mul		x6, x30, x5	# 329
	add		x4, x4, x6	# 329
	flw		f1, 0(x4)	# 329
	lui		x4, 70312	# 329
	ori		x4, x0, 70312	# 329
	mul		x6, x30, x5	# 329
	add		x4, x4, x6	# 329
	flw		f2, 0(x4)	# 329
	fmul	f1, f1, f2	# 329
	lui		x4, 70568	# 329
	ori		x4, x0, 70568	# 329
	lw		x6, -68(x2)	# 329
	mul		x7, x30, x6	# 329
	add		x4, x4, x7	# 329
	flw		f2, 0(x4)	# 329
	lui		x4, 70312	# 329
	ori		x4, x0, 70312	# 329
	mul		x7, x30, x6	# 329
	add		x4, x4, x7	# 329
	flw		f3, 0(x4)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	lui		x4, 70568	# 329
	ori		x4, x0, 70568	# 329
	lw		x7, -16(x2)	# 329
	mul		x8, x30, x7	# 329
	add		x4, x4, x8	# 329
	flw		f2, 0(x4)	# 329
	lui		x4, 70312	# 329
	ori		x4, x0, 70312	# 329
	mul		x8, x30, x7	# 329
	add		x4, x4, x8	# 329
	flw		f3, 0(x4)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	fsub	f1, f0, f1	# 123
	flw		f2, -64(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_cont.37159	# 121
	fadd	f1, f0, f2	# 1972
fle_cont.37159:
	flw		f2, -24(x2)	# 1973
	fmul	f1, f2, f1	# 1973
	lw		x4, -80(x2)	# 498
	lw		x4, 28(x4)	# 498
	mul		x8, x30, x5	# 503
	add		x4, x4, x8	# 503
	flw		f2, 0(x4)	# 503
	fmul	f1, f1, f2	# 1973
	lui		x4, 70592	# 339
	ori		x4, x0, 70592	# 339
	mul		x8, x30, x5	# 339
	add		x4, x4, x8	# 339
	flw		f2, 0(x4)	# 339
	lui		x4, 70580	# 339
	ori		x4, x0, 70580	# 339
	mul		x8, x30, x5	# 339
	add		x4, x4, x8	# 339
	flw		f3, 0(x4)	# 339
	fmul	f3, f1, f3	# 339
	fadd	f2, f2, f3	# 339
	lui		x4, 70592	# 339
	ori		x4, x0, 70592	# 339
	mul		x5, x30, x5	# 339
	add		x4, x4, x5	# 339
	fsw		f2, 0(x4)	# 339
	lui		x4, 70592	# 340
	ori		x4, x0, 70592	# 340
	mul		x5, x30, x6	# 340
	add		x4, x4, x5	# 340
	flw		f2, 0(x4)	# 340
	lui		x4, 70580	# 340
	ori		x4, x0, 70580	# 340
	mul		x5, x30, x6	# 340
	add		x4, x4, x5	# 340
	flw		f3, 0(x4)	# 340
	fmul	f3, f1, f3	# 340
	fadd	f2, f2, f3	# 340
	lui		x4, 70592	# 340
	ori		x4, x0, 70592	# 340
	mul		x5, x30, x6	# 340
	add		x4, x4, x5	# 340
	fsw		f2, 0(x4)	# 340
	lui		x4, 70592	# 341
	ori		x4, x0, 70592	# 341
	mul		x5, x30, x7	# 341
	add		x4, x4, x5	# 341
	flw		f2, 0(x4)	# 341
	lui		x4, 70580	# 341
	ori		x4, x0, 70580	# 341
	mul		x5, x30, x7	# 341
	add		x4, x4, x5	# 341
	flw		f3, 0(x4)	# 341
	fmul	f1, f1, f3	# 341
	fadd	f1, f2, f1	# 341
	lui		x4, 70592	# 341
	ori		x4, x0, 70592	# 341
	mul		x5, x30, x7	# 341
	add		x4, x4, x5	# 341
	fsw		f1, 0(x4)	# 341
beq_cont.37157:
beq_cont.37112:
	jal		x0, fle_cont.37106	# 122
fle_else.37107:
	add		x18, x7, x17	# 1987
	mul		x18, x30, x18	# 1987
	add		x18, x4, x18	# 1987
	lw		x18, 0(x18)	# 1987
	fadd	f7, f0, f25	# 1987
	fdiv	f6, f6, f7	# 1987
	lui		x19, 70548	# 1671
	ori		x19, x0, 70548	# 1671
	mul		x20, x30, x16	# 1671
	add		x19, x19, x20	# 1671
	fsw		f3, 0(x19)	# 1671
	lui		x19, 70536	# 1672
	ori		x19, x0, 70536	# 1672
	mul		x20, x30, x16	# 1672
	add		x19, x19, x20	# 1672
	lw		x19, 0(x19)	# 1672
	fsw		f6, -144(x2)	# 1672
	sw		x10, -28(x2)	# 1672
	sw		x13, -32(x2)	# 1672
	sw		x12, -36(x2)	# 1672
	fsw		f2, -40(x2)	# 1672
	fsw		f1, -44(x2)	# 1672
	sw		x15, -48(x2)	# 1672
	sw		x9, -52(x2)	# 1672
	fsw		f4, -56(x2)	# 1672
	sw		x11, -60(x2)	# 1672
	fsw		f5, -64(x2)	# 1672
	sw		x17, -68(x2)	# 1672
	sw		x18, -148(x2)	# 1672
	sw		x16, -76(x2)	# 1672
	addi	x6, x18, 0
	addi	x5, x19, 0
	addi	x4, x16, 0
	addi	x29, x8, 0
	sw		x1, -152(x2)	# 1672
	addi	x2, x2, -156	# 1672
	lw		x31, 0(x29)	# 1672
	jalr	x1, x31, 0	# 1672
	addi	x2, x2, 156	# 1672
	lw		x1, -152(x2)	# 1672
	lui		x4, 70548	# 1673
	ori		x4, x0, 70548	# 1673
	lw		x5, -76(x2)	# 1673
	mul		x6, x30, x5	# 1673
	add		x4, x4, x6	# 1673
	flw		f1, 0(x4)	# 1673
	fadd	f2, f0, f21	# 1675
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.37161	# 125
	addi	x4, x0, 0	# 1677
	jal		x0, fle_cont.37160	# 125
fle_else.37161:
	fadd	f2, f0, f22	# 1676
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.37163	# 125
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.37162	# 125
fle_else.37163:
	addi	x4, x0, 1	# 125
fle_cont.37162:
fle_cont.37160:
	beq		x4, x5, beq_cont.37164	# 1964
	lui		x4, 70564	# 1965
	ori		x4, x0, 70564	# 1965
	mul		x6, x30, x5	# 1965
	add		x4, x4, x6	# 1965
	lw		x4, 0(x4)	# 1965
	lui		x6, 70048	# 1965
	ori		x6, x0, 70048	# 1965
	mul		x4, x30, x4	# 1965
	add		x4, x6, x4	# 1965
	lw		x4, 0(x4)	# 1965
	lw		x6, -148(x2)	# 676
	lw		x6, 0(x6)	# 676
	lw		x7, 4(x4)	# 390
	lw		x8, -68(x2)	# 1730
	beq		x7, x8, beq.37166	# 1730
	lw		x6, -16(x2)	# 1732
	beq		x7, x6, beq.37168	# 1732
	lui		x7, 70552	# 1707
	ori		x7, x0, 70552	# 1707
	mul		x9, x30, x5	# 1707
	add		x7, x7, x9	# 1707
	flw		f1, 0(x7)	# 1707
	lw		x7, 20(x4)	# 468
	mul		x9, x30, x5	# 473
	add		x7, x7, x9	# 473
	flw		f2, 0(x7)	# 473
	fsub	f1, f1, f2	# 1707
	lui		x7, 70552	# 1708
	ori		x7, x0, 70552	# 1708
	mul		x9, x30, x8	# 1708
	add		x7, x7, x9	# 1708
	flw		f2, 0(x7)	# 1708
	lw		x7, 20(x4)	# 478
	mul		x9, x30, x8	# 483
	add		x7, x7, x9	# 483
	flw		f3, 0(x7)	# 483
	fsub	f2, f2, f3	# 1708
	lui		x7, 70552	# 1709
	ori		x7, x0, 70552	# 1709
	mul		x9, x30, x6	# 1709
	add		x7, x7, x9	# 1709
	flw		f3, 0(x7)	# 1709
	lw		x7, 20(x4)	# 488
	mul		x9, x30, x6	# 493
	add		x7, x7, x9	# 493
	flw		f4, 0(x7)	# 493
	fsub	f3, f3, f4	# 1709
	lw		x7, 16(x4)	# 428
	mul		x9, x30, x5	# 433
	add		x7, x7, x9	# 433
	flw		f4, 0(x7)	# 433
	fmul	f4, f1, f4	# 1711
	lw		x7, 16(x4)	# 438
	mul		x9, x30, x8	# 443
	add		x7, x7, x9	# 443
	flw		f5, 0(x7)	# 443
	fmul	f5, f2, f5	# 1712
	lw		x7, 16(x4)	# 448
	mul		x9, x30, x6	# 453
	add		x7, x7, x9	# 453
	flw		f6, 0(x7)	# 453
	fmul	f6, f3, f6	# 1713
	lw		x7, 12(x4)	# 419
	beq		x7, x5, beq.37170	# 1715
	lw		x7, 36(x4)	# 568
	mul		x9, x30, x6	# 573
	add		x7, x7, x9	# 573
	flw		f7, 0(x7)	# 573
	fmul	f8, f2, f7	# 1720
	lw		x7, 36(x4)	# 558
	mul		x9, x30, x8	# 563
	add		x7, x7, x9	# 563
	flw		f9, 0(x7)	# 563
	fmul	f10, f3, f9	# 1720
	fadd	f8, f8, f10	# 1720
	fadd	f10, f0, f26	# 126
	fmul	f8, f8, f10	# 126
	fadd	f4, f4, f8	# 1720
	lui		x7, 70568	# 1720
	ori		x7, x0, 70568	# 1720
	mul		x9, x30, x5	# 1720
	add		x7, x7, x9	# 1720
	fsw		f4, 0(x7)	# 1720
	fmul	f4, f1, f7	# 1721
	lw		x7, 36(x4)	# 548
	mul		x9, x30, x5	# 553
	add		x7, x7, x9	# 553
	flw		f7, 0(x7)	# 553
	fmul	f3, f3, f7	# 1721
	fadd	f3, f4, f3	# 1721
	fmul	f3, f3, f10	# 126
	fadd	f3, f5, f3	# 1721
	lui		x7, 70568	# 1721
	ori		x7, x0, 70568	# 1721
	mul		x9, x30, x8	# 1721
	add		x7, x7, x9	# 1721
	fsw		f3, 0(x7)	# 1721
	fmul	f1, f1, f9	# 1722
	fmul	f2, f2, f7	# 1722
	fadd	f1, f1, f2	# 1722
	fmul	f1, f1, f10	# 126
	fadd	f1, f6, f1	# 1722
	lui		x7, 70568	# 1722
	ori		x7, x0, 70568	# 1722
	mul		x9, x30, x6	# 1722
	add		x7, x7, x9	# 1722
	fsw		f1, 0(x7)	# 1722
	jal		x0, beq_cont.37169	# 1715
beq.37170:
	lui		x7, 70568	# 1716
	ori		x7, x0, 70568	# 1716
	mul		x9, x30, x5	# 1716
	add		x7, x7, x9	# 1716
	fsw		f4, 0(x7)	# 1716
	lui		x7, 70568	# 1717
	ori		x7, x0, 70568	# 1717
	mul		x9, x30, x8	# 1717
	add		x7, x7, x9	# 1717
	fsw		f5, 0(x7)	# 1717
	lui		x7, 70568	# 1718
	ori		x7, x0, 70568	# 1718
	mul		x9, x30, x6	# 1718
	add		x7, x7, x9	# 1718
	fsw		f6, 0(x7)	# 1718
beq_cont.37169:
	lw		x7, 24(x4)	# 410
	lui		x9, 70568	# 320
	ori		x9, x0, 70568	# 320
	mul		x10, x30, x5	# 320
	add		x9, x9, x10	# 320
	flw		f1, 0(x9)	# 320
	fmul	f1, f1, f1	# 127
	lui		x9, 70568	# 320
	ori		x9, x0, 70568	# 320
	mul		x10, x30, x8	# 320
	add		x9, x9, x10	# 320
	flw		f2, 0(x9)	# 320
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 320
	lui		x9, 70568	# 320
	ori		x9, x0, 70568	# 320
	mul		x10, x30, x6	# 320
	add		x9, x9, x10	# 320
	flw		f2, 0(x9)	# 320
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 320
	fsqrt	f1, f1	# 320
	flw		f2, -64(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.37172	# 120
	fadd	f1, f0, f16	# 321
	jal		x0, feq_cont.37171	# 120
feq_else.37172:
	beq		x7, x5, beq.37174	# 321
	lui		x7, %hi(l.27841)	# 321
	ori		x7, x0, %lo(l.27841)	# 321
	flw		f3, 0(x7)	# 321
	fdiv	f1, f3, f1	# 321
	jal		x0, beq_cont.37173	# 321
beq.37174:
	fadd	f3, f0, f16	# 321
	fdiv	f1, f3, f1	# 321
beq_cont.37173:
feq_cont.37171:
	lui		x7, 70568	# 322
	ori		x7, x0, 70568	# 322
	mul		x9, x30, x5	# 322
	add		x7, x7, x9	# 322
	flw		f3, 0(x7)	# 322
	fmul	f3, f3, f1	# 322
	lui		x7, 70568	# 322
	ori		x7, x0, 70568	# 322
	mul		x9, x30, x5	# 322
	add		x7, x7, x9	# 322
	fsw		f3, 0(x7)	# 322
	lui		x7, 70568	# 323
	ori		x7, x0, 70568	# 323
	mul		x9, x30, x8	# 323
	add		x7, x7, x9	# 323
	flw		f3, 0(x7)	# 323
	fmul	f3, f3, f1	# 323
	lui		x7, 70568	# 323
	ori		x7, x0, 70568	# 323
	mul		x9, x30, x8	# 323
	add		x7, x7, x9	# 323
	fsw		f3, 0(x7)	# 323
	lui		x7, 70568	# 324
	ori		x7, x0, 70568	# 324
	mul		x9, x30, x6	# 324
	add		x7, x7, x9	# 324
	flw		f3, 0(x7)	# 324
	fmul	f1, f3, f1	# 324
	lui		x7, 70568	# 324
	ori		x7, x0, 70568	# 324
	mul		x9, x30, x6	# 324
	add		x7, x7, x9	# 324
	fsw		f1, 0(x7)	# 324
	jal		x0, beq_cont.37167	# 1732
beq.37168:
	lw		x7, 16(x4)	# 428
	mul		x9, x30, x5	# 433
	add		x7, x7, x9	# 433
	flw		f1, 0(x7)	# 433
	fsub	f1, f0, f1	# 123
	lui		x7, 70568	# 1700
	ori		x7, x0, 70568	# 1700
	mul		x9, x30, x5	# 1700
	add		x7, x7, x9	# 1700
	fsw		f1, 0(x7)	# 1700
	lw		x7, 16(x4)	# 438
	mul		x9, x30, x8	# 443
	add		x7, x7, x9	# 443
	flw		f1, 0(x7)	# 443
	fsub	f1, f0, f1	# 123
	lui		x7, 70568	# 1701
	ori		x7, x0, 70568	# 1701
	mul		x9, x30, x8	# 1701
	add		x7, x7, x9	# 1701
	fsw		f1, 0(x7)	# 1701
	lw		x7, 16(x4)	# 448
	mul		x9, x30, x6	# 453
	add		x7, x7, x9	# 453
	flw		f1, 0(x7)	# 453
	fsub	f1, f0, f1	# 123
	lui		x7, 70568	# 1702
	ori		x7, x0, 70568	# 1702
	mul		x9, x30, x6	# 1702
	add		x7, x7, x9	# 1702
	fsw		f1, 0(x7)	# 1702
beq_cont.37167:
	jal		x0, beq_cont.37165	# 1730
beq.37166:
	lui		x7, 70544	# 1691
	ori		x7, x0, 70544	# 1691
	mul		x9, x30, x5	# 1691
	add		x7, x7, x9	# 1691
	lw		x7, 0(x7)	# 1691
	lui		x9, 70568	# 284
	ori		x9, x0, 70568	# 284
	mul		x10, x30, x5	# 284
	add		x9, x9, x10	# 284
	flw		f1, -64(x2)	# 284
	fsw		f1, 0(x9)	# 284
	lui		x9, 70568	# 285
	ori		x9, x0, 70568	# 285
	mul		x10, x30, x8	# 285
	add		x9, x9, x10	# 285
	fsw		f1, 0(x9)	# 285
	lui		x9, 70568	# 286
	ori		x9, x0, 70568	# 286
	lw		x10, -16(x2)	# 286
	mul		x11, x30, x10	# 286
	add		x9, x9, x11	# 286
	fsw		f1, 0(x9)	# 286
	sub		x7, x7, x8	# 1694
	mul		x9, x30, x7	# 1694
	add		x6, x6, x9	# 1694
	flw		f2, 0(x6)	# 1694
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.37176	# 120
	fadd	f2, f0, f1	# 249
	jal		x0, feq_cont.37175	# 120
feq_else.37176:
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.37178	# 121
	lui		x6, %hi(l.27841)	# 251
	ori		x6, x0, %lo(l.27841)	# 251
	flw		f2, 0(x6)	# 251
	jal		x0, fle_cont.37177	# 121
fle_else.37178:
	fadd	f2, f0, f16	# 250
fle_cont.37177:
feq_cont.37175:
	fsub	f2, f0, f2	# 123
	lui		x6, 70568	# 1694
	ori		x6, x0, 70568	# 1694
	mul		x7, x30, x7	# 1694
	add		x6, x6, x7	# 1694
	fsw		f2, 0(x6)	# 1694
beq_cont.37165:
	lw		x6, 0(x4)	# 380
	lw		x7, 32(x4)	# 518
	mul		x9, x30, x5	# 523
	add		x7, x7, x9	# 523
	flw		f1, 0(x7)	# 523
	lui		x7, 70580	# 1747
	ori		x7, x0, 70580	# 1747
	mul		x9, x30, x5	# 1747
	add		x7, x7, x9	# 1747
	fsw		f1, 0(x7)	# 1747
	lw		x7, 32(x4)	# 528
	mul		x9, x30, x8	# 533
	add		x7, x7, x9	# 533
	flw		f1, 0(x7)	# 533
	lui		x7, 70580	# 1748
	ori		x7, x0, 70580	# 1748
	mul		x9, x30, x8	# 1748
	add		x7, x7, x9	# 1748
	fsw		f1, 0(x7)	# 1748
	lw		x7, 32(x4)	# 538
	lw		x9, -16(x2)	# 543
	mul		x10, x30, x9	# 543
	add		x7, x7, x10	# 543
	flw		f1, 0(x7)	# 543
	lui		x7, 70580	# 1749
	ori		x7, x0, 70580	# 1749
	mul		x10, x30, x9	# 1749
	add		x7, x7, x10	# 1749
	fsw		f1, 0(x7)	# 1749
	sw		x4, -152(x2)	# 1750
	beq		x6, x8, beq.37180	# 1750
	beq		x6, x9, beq.37182	# 1768
	lw		x7, -48(x2)	# 1775
	beq		x6, x7, beq.37184	# 1775
	addi	x7, x0, 4	# 1786
	beq		x6, x7, beq.37186	# 1786
	jal		x0, beq_cont.37185	# 1786
beq.37186:
	lui		x6, 70552	# 1788
	ori		x6, x0, 70552	# 1788
	mul		x7, x30, x5	# 1788
	add		x6, x6, x7	# 1788
	flw		f1, 0(x6)	# 1788
	lw		x6, 20(x4)	# 468
	mul		x7, x30, x5	# 473
	add		x6, x6, x7	# 473
	flw		f2, 0(x6)	# 473
	fsub	f1, f1, f2	# 1788
	lw		x6, 16(x4)	# 428
	mul		x7, x30, x5	# 433
	add		x6, x6, x7	# 433
	flw		f2, 0(x6)	# 433
	fsqrt	f2, f2	# 1788
	fmul	f1, f1, f2	# 1788
	lui		x6, 70552	# 1789
	ori		x6, x0, 70552	# 1789
	mul		x7, x30, x9	# 1789
	add		x6, x6, x7	# 1789
	flw		f2, 0(x6)	# 1789
	lw		x6, 20(x4)	# 488
	mul		x7, x30, x9	# 493
	add		x6, x6, x7	# 493
	flw		f3, 0(x6)	# 493
	fsub	f2, f2, f3	# 1789
	lw		x6, 16(x4)	# 448
	mul		x7, x30, x9	# 453
	add		x6, x6, x7	# 453
	flw		f3, 0(x6)	# 453
	fsqrt	f3, f3	# 1789
	fmul	f2, f2, f3	# 1789
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1790
	flw		f4, -64(x2)	# 124
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_else.37188	# 124
	fsub	f5, f0, f1	# 124
	jal		x0, fle_cont.37187	# 124
fle_else.37188:
	fadd	f5, f0, f1	# 124
fle_cont.37187:
	lui		x6, %hi(l.29453)	# 1792
	ori		x6, x0, %lo(l.29453)	# 1792
	flw		f6, 0(x6)	# 1792
	fsw		f6, -156(x2)	# 125
	fsw		f3, -160(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.37190	# 125
	fdiv	f1, f2, f1	# 1795
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_cont.37191	# 124
	fsub	f1, f0, f1	# 124
fle_cont.37191:
	lw		x29, -32(x2)	# 1797
	sw		x1, -164(x2)	# 1797
	addi	x2, x2, -168	# 1797
	lw		x31, 0(x29)	# 1797
	jalr	x1, x31, 0	# 1797
	addi	x2, x2, 168	# 1797
	lw		x1, -164(x2)	# 1797
	lui		x4, %hi(l.29457)	# 1797
	ori		x4, x0, %lo(l.29457)	# 1797
	flw		f2, 0(x4)	# 1797
	fmul	f1, f1, f2	# 1797
	lui		x4, %hi(l.29459)	# 1797
	ori		x4, x0, %lo(l.29459)	# 1797
	flw		f2, 0(x4)	# 1797
	fdiv	f1, f1, f2	# 1797
	jal		x0, fle_cont.37189	# 125
fle_else.37190:
	lui		x6, %hi(l.29455)	# 1793
	ori		x6, x0, %lo(l.29455)	# 1793
	flw		f1, 0(x6)	# 1793
fle_cont.37189:
	fadd	f2, f0, f26	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -76(x2)	# 153
	lw		x29, -60(x2)	# 153
	fsw		f2, -164(x2)	# 153
	fsw		f1, -168(x2)	# 153
	fadd	f1, f0, f3
	sw		x1, -172(x2)	# 153
	addi	x2, x2, -176	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 176	# 153
	lw		x1, -172(x2)	# 153
	sw		x1, -172(x2)	# 166
	addi	x2, x2, -176	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 176	# 166
	lw		x1, -172(x2)	# 166
	flw		f2, -168(x2)	# 1799
	fsub	f1, f2, f1	# 1799
	lui		x4, 70552	# 1801
	ori		x4, x0, 70552	# 1801
	lw		x5, -68(x2)	# 1801
	mul		x6, x30, x5	# 1801
	add		x4, x4, x6	# 1801
	flw		f2, 0(x4)	# 1801
	lw		x4, -152(x2)	# 478
	lw		x6, 20(x4)	# 478
	mul		x7, x30, x5	# 483
	add		x6, x6, x7	# 483
	flw		f3, 0(x6)	# 483
	fsub	f2, f2, f3	# 1801
	lw		x6, 16(x4)	# 438
	mul		x7, x30, x5	# 443
	add		x6, x6, x7	# 443
	flw		f3, 0(x6)	# 443
	fsqrt	f3, f3	# 1801
	fmul	f2, f2, f3	# 1801
	flw		f3, -64(x2)	# 124
	flw		f4, -160(x2)	# 124
	fle		x31, f4, f3	# 124
	beq		x31, x0, fle_else.37193	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.37192	# 124
fle_else.37193:
	fadd	f5, f0, f4	# 124
fle_cont.37192:
	flw		f6, -156(x2)	# 125
	fsw		f1, -172(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.37195	# 125
	fdiv	f2, f2, f4	# 1806
	fle		x31, f2, f3	# 124
	beq		x31, x0, fle_cont.37196	# 124
	fsub	f2, f0, f2	# 124
fle_cont.37196:
	lw		x29, -32(x2)	# 1807
	fadd	f1, f0, f2
	sw		x1, -176(x2)	# 1807
	addi	x2, x2, -180	# 1807
	lw		x31, 0(x29)	# 1807
	jalr	x1, x31, 0	# 1807
	addi	x2, x2, 180	# 1807
	lw		x1, -176(x2)	# 1807
	lui		x4, %hi(l.29457)	# 1807
	ori		x4, x0, %lo(l.29457)	# 1807
	flw		f2, 0(x4)	# 1807
	fmul	f1, f1, f2	# 1807
	lui		x4, %hi(l.29459)	# 1807
	ori		x4, x0, %lo(l.29459)	# 1807
	flw		f2, 0(x4)	# 1807
	fdiv	f1, f1, f2	# 1807
	jal		x0, fle_cont.37194	# 125
fle_else.37195:
	lui		x6, %hi(l.29455)	# 1804
	ori		x6, x0, %lo(l.29455)	# 1804
	flw		f1, 0(x6)	# 1804
fle_cont.37194:
	flw		f2, -164(x2)	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -76(x2)	# 153
	lw		x29, -60(x2)	# 153
	fsw		f1, -176(x2)	# 153
	fadd	f1, f0, f3
	sw		x1, -180(x2)	# 153
	addi	x2, x2, -184	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 184	# 153
	lw		x1, -180(x2)	# 153
	sw		x1, -180(x2)	# 166
	addi	x2, x2, -184	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 184	# 166
	lw		x1, -180(x2)	# 166
	flw		f2, -176(x2)	# 1809
	fsub	f1, f2, f1	# 1809
	lui		x4, %hi(l.29471)	# 1810
	ori		x4, x0, %lo(l.29471)	# 1810
	flw		f2, 0(x4)	# 1810
	flw		f3, -172(x2)	# 1810
	flw		f4, -164(x2)	# 1810
	fsub	f3, f4, f3	# 1810
	fmul	f3, f3, f3	# 127
	fsub	f2, f2, f3	# 1810
	fsub	f1, f4, f1	# 1810
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1810
	flw		f2, -64(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.37198	# 122
	jal		x0, fle_cont.37197	# 122
fle_else.37198:
	fadd	f1, f0, f2	# 1811
fle_cont.37197:
	flw		f3, -56(x2)	# 1812
	fmul	f1, f3, f1	# 1812
	lui		x4, %hi(l.29473)	# 1812
	ori		x4, x0, %lo(l.29473)	# 1812
	flw		f3, 0(x4)	# 1812
	fdiv	f1, f1, f3	# 1812
	lui		x4, 70580	# 1812
	ori		x4, x0, 70580	# 1812
	lw		x5, -16(x2)	# 1812
	mul		x6, x30, x5	# 1812
	add		x4, x4, x6	# 1812
	fsw		f1, 0(x4)	# 1812
beq_cont.37185:
	jal		x0, beq_cont.37183	# 1775
beq.37184:
	lui		x6, 70552	# 1778
	ori		x6, x0, 70552	# 1778
	mul		x7, x30, x5	# 1778
	add		x6, x6, x7	# 1778
	flw		f1, 0(x6)	# 1778
	lw		x6, 20(x4)	# 468
	mul		x7, x30, x5	# 473
	add		x6, x6, x7	# 473
	flw		f2, 0(x6)	# 473
	fsub	f1, f1, f2	# 1778
	lui		x6, 70552	# 1779
	ori		x6, x0, 70552	# 1779
	mul		x7, x30, x9	# 1779
	add		x6, x6, x7	# 1779
	flw		f2, 0(x6)	# 1779
	lw		x6, 20(x4)	# 488
	mul		x7, x30, x9	# 493
	add		x6, x6, x7	# 493
	flw		f3, 0(x6)	# 493
	fsub	f2, f2, f3	# 1779
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1780
	fsqrt	f1, f1	# 1780
	lui		x6, %hi(l.29485)	# 1780
	ori		x6, x0, %lo(l.29485)	# 1780
	flw		f2, 0(x6)	# 1780
	fdiv	f1, f1, f2	# 1780
	fadd	f2, f0, f26	# 166
	fsub	f3, f1, f2	# 166
	lw		x29, -60(x2)	# 153
	fsw		f2, -180(x2)	# 153
	fsw		f1, -184(x2)	# 153
	addi	x4, x5, 0
	fadd	f1, f0, f3
	sw		x1, -188(x2)	# 153
	addi	x2, x2, -192	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 192	# 153
	lw		x1, -188(x2)	# 153
	sw		x1, -188(x2)	# 166
	addi	x2, x2, -192	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 192	# 166
	lw		x1, -188(x2)	# 166
	flw		f2, -184(x2)	# 1781
	fsub	f1, f2, f1	# 1781
	lui		x4, %hi(l.29459)	# 1781
	ori		x4, x0, %lo(l.29459)	# 1781
	flw		f2, 0(x4)	# 1781
	fmul	f1, f1, f2	# 1781
	flw		f2, -64(x2)	# 207
	fle		x31, f2, f1	# 207
	beq		x31, x0, fle_else.37200	# 207
	flw		f3, -44(x2)	# 208
	fle		x31, f1, f3	# 208
	beq		x31, x0, fle_else.37202	# 208
	fmul	f1, f1, f1	# 194
	fmul	f3, f1, f1	# 195
	fadd	f4, f0, f16	# 196
	flw		f5, -180(x2)	# 196
	fmul	f5, f5, f1	# 196
	fsub	f4, f4, f5	# 196
	lui		x4, %hi(l.27762)	# 196
	ori		x4, x0, %lo(l.27762)	# 196
	flw		f5, 0(x4)	# 196
	fmul	f5, f5, f3	# 196
	fadd	f4, f4, f5	# 196
	lui		x4, %hi(l.27764)	# 196
	ori		x4, x0, %lo(l.27764)	# 196
	flw		f5, 0(x4)	# 196
	fmul	f1, f5, f1	# 196
	fmul	f1, f1, f3	# 196
	fsub	f1, f4, f1	# 196
	jal		x0, fle_cont.37201	# 208
fle_else.37202:
	flw		f3, -40(x2)	# 208
	fsub	f1, f3, f1	# 208
	lw		x29, -52(x2)	# 208
	sw		x1, -188(x2)	# 208
	addi	x2, x2, -192	# 208
	lw		x31, 0(x29)	# 208
	jalr	x1, x31, 0	# 208
	addi	x2, x2, 192	# 208
	lw		x1, -188(x2)	# 208
fle_cont.37201:
	jal		x0, fle_cont.37199	# 207
fle_else.37200:
	fsub	f1, f0, f1	# 207
	lw		x29, -36(x2)	# 207
	sw		x1, -188(x2)	# 207
	addi	x2, x2, -192	# 207
	lw		x31, 0(x29)	# 207
	jalr	x1, x31, 0	# 207
	addi	x2, x2, 192	# 207
	lw		x1, -188(x2)	# 207
fle_cont.37199:
	fmul	f1, f1, f1	# 127
	flw		f2, -56(x2)	# 1783
	fmul	f3, f1, f2	# 1783
	lui		x4, 70580	# 1783
	ori		x4, x0, 70580	# 1783
	lw		x5, -68(x2)	# 1783
	mul		x6, x30, x5	# 1783
	add		x4, x4, x6	# 1783
	fsw		f3, 0(x4)	# 1783
	fadd	f3, f0, f16	# 1784
	fsub	f1, f3, f1	# 1784
	fmul	f1, f1, f2	# 1784
	lui		x4, 70580	# 1784
	ori		x4, x0, 70580	# 1784
	lw		x6, -16(x2)	# 1784
	mul		x7, x30, x6	# 1784
	add		x4, x4, x7	# 1784
	fsw		f1, 0(x4)	# 1784
beq_cont.37183:
	jal		x0, beq_cont.37181	# 1768
beq.37182:
	lui		x6, 70552	# 1771
	ori		x6, x0, 70552	# 1771
	mul		x7, x30, x8	# 1771
	add		x6, x6, x7	# 1771
	flw		f1, 0(x6)	# 1771
	lui		x6, %hi(l.29496)	# 1771
	ori		x6, x0, %lo(l.29496)	# 1771
	flw		f2, 0(x6)	# 1771
	fmul	f1, f1, f2	# 1771
	lw		x29, -52(x2)	# 1771
	sw		x1, -188(x2)	# 1771
	addi	x2, x2, -192	# 1771
	lw		x31, 0(x29)	# 1771
	jalr	x1, x31, 0	# 1771
	addi	x2, x2, 192	# 1771
	lw		x1, -188(x2)	# 1771
	fmul	f1, f1, f1	# 127
	flw		f2, -56(x2)	# 1772
	fmul	f3, f2, f1	# 1772
	lui		x4, 70580	# 1772
	ori		x4, x0, 70580	# 1772
	lw		x5, -76(x2)	# 1772
	mul		x6, x30, x5	# 1772
	add		x4, x4, x6	# 1772
	fsw		f3, 0(x4)	# 1772
	fadd	f3, f0, f16	# 1773
	fsub	f1, f3, f1	# 1773
	fmul	f1, f2, f1	# 1773
	lui		x4, 70580	# 1773
	ori		x4, x0, 70580	# 1773
	lw		x6, -68(x2)	# 1773
	mul		x7, x30, x6	# 1773
	add		x4, x4, x7	# 1773
	fsw		f1, 0(x4)	# 1773
beq_cont.37181:
	jal		x0, beq_cont.37179	# 1750
beq.37180:
	lui		x6, 70552	# 1753
	ori		x6, x0, 70552	# 1753
	mul		x7, x30, x5	# 1753
	add		x6, x6, x7	# 1753
	flw		f1, 0(x6)	# 1753
	lw		x6, 20(x4)	# 468
	mul		x7, x30, x5	# 473
	add		x6, x6, x7	# 473
	flw		f2, 0(x6)	# 473
	fsub	f1, f1, f2	# 1753
	lui		x6, %hi(l.29507)	# 1755
	ori		x6, x0, %lo(l.29507)	# 1755
	flw		f2, 0(x6)	# 1755
	fmul	f3, f1, f2	# 1755
	fadd	f4, f0, f26	# 166
	fsub	f3, f3, f4	# 166
	lw		x29, -60(x2)	# 153
	fsw		f4, -188(x2)	# 153
	fsw		f2, -192(x2)	# 153
	fsw		f1, -196(x2)	# 153
	addi	x4, x5, 0
	fadd	f1, f0, f3
	sw		x1, -200(x2)	# 153
	addi	x2, x2, -204	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 204	# 153
	lw		x1, -200(x2)	# 153
	sw		x1, -200(x2)	# 166
	addi	x2, x2, -204	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 204	# 166
	lw		x1, -200(x2)	# 166
	lui		x4, %hi(l.29510)	# 1755
	ori		x4, x0, %lo(l.29510)	# 1755
	flw		f2, 0(x4)	# 1755
	fmul	f1, f1, f2	# 1755
	flw		f3, -196(x2)	# 1756
	fsub	f1, f3, f1	# 1756
	lui		x4, %hi(l.29485)	# 1756
	ori		x4, x0, %lo(l.29485)	# 1756
	flw		f3, 0(x4)	# 1756
	lui		x4, 70552	# 1758
	ori		x4, x0, 70552	# 1758
	lw		x5, -16(x2)	# 1758
	mul		x6, x30, x5	# 1758
	add		x4, x4, x6	# 1758
	flw		f4, 0(x4)	# 1758
	lw		x4, -152(x2)	# 488
	lw		x6, 20(x4)	# 488
	mul		x7, x30, x5	# 493
	add		x6, x6, x7	# 493
	flw		f5, 0(x6)	# 493
	fsub	f4, f4, f5	# 1758
	flw		f5, -192(x2)	# 1760
	fmul	f5, f4, f5	# 1760
	flw		f6, -188(x2)	# 166
	fsub	f5, f5, f6	# 166
	lw		x6, -76(x2)	# 153
	lw		x29, -60(x2)	# 153
	fsw		f1, -200(x2)	# 153
	fsw		f3, -204(x2)	# 153
	fsw		f4, -208(x2)	# 153
	fsw		f2, -212(x2)	# 153
	addi	x4, x6, 0
	fadd	f1, f0, f5
	sw		x1, -216(x2)	# 153
	addi	x2, x2, -220	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 220	# 153
	lw		x1, -216(x2)	# 153
	sw		x1, -216(x2)	# 166
	addi	x2, x2, -220	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 220	# 166
	lw		x1, -216(x2)	# 166
	flw		f2, -212(x2)	# 1760
	fmul	f1, f1, f2	# 1760
	flw		f2, -208(x2)	# 1761
	fsub	f1, f2, f1	# 1761
	flw		f2, -200(x2)	# 125
	flw		f3, -204(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.37204	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.37206	# 125
	flw		f1, -56(x2)	# 1766
	jal		x0, fle_cont.37205	# 125
fle_else.37206:
	flw		f1, -64(x2)	# 1766
fle_cont.37205:
	jal		x0, fle_cont.37203	# 125
fle_else.37204:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.37208	# 125
	flw		f1, -64(x2)	# 1765
	jal		x0, fle_cont.37207	# 125
fle_else.37208:
	flw		f1, -56(x2)	# 1765
fle_cont.37207:
fle_cont.37203:
	lui		x4, 70580	# 1763
	ori		x4, x0, 70580	# 1763
	lw		x5, -68(x2)	# 1763
	mul		x6, x30, x5	# 1763
	add		x4, x4, x6	# 1763
	fsw		f1, 0(x4)	# 1763
beq_cont.37179:
	lui		x4, 70536	# 1970
	ori		x4, x0, 70536	# 1970
	lw		x5, -76(x2)	# 1970
	mul		x6, x30, x5	# 1970
	add		x4, x4, x6	# 1970
	lw		x4, 0(x4)	# 1970
	lw		x29, -28(x2)	# 1970
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -216(x2)	# 1970
	addi	x2, x2, -220	# 1970
	lw		x31, 0(x29)	# 1970
	jalr	x1, x31, 0	# 1970
	addi	x2, x2, 220	# 1970
	lw		x1, -216(x2)	# 1970
	lw		x5, -76(x2)	# 1970
	beq		x4, x5, beq.37210	# 1970
	jal		x0, beq_cont.37209	# 1970
beq.37210:
	lui		x4, 70568	# 329
	ori		x4, x0, 70568	# 329
	mul		x6, x30, x5	# 329
	add		x4, x4, x6	# 329
	flw		f1, 0(x4)	# 329
	lui		x4, 70312	# 329
	ori		x4, x0, 70312	# 329
	mul		x6, x30, x5	# 329
	add		x4, x4, x6	# 329
	flw		f2, 0(x4)	# 329
	fmul	f1, f1, f2	# 329
	lui		x4, 70568	# 329
	ori		x4, x0, 70568	# 329
	lw		x6, -68(x2)	# 329
	mul		x7, x30, x6	# 329
	add		x4, x4, x7	# 329
	flw		f2, 0(x4)	# 329
	lui		x4, 70312	# 329
	ori		x4, x0, 70312	# 329
	mul		x7, x30, x6	# 329
	add		x4, x4, x7	# 329
	flw		f3, 0(x4)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	lui		x4, 70568	# 329
	ori		x4, x0, 70568	# 329
	lw		x7, -16(x2)	# 329
	mul		x8, x30, x7	# 329
	add		x4, x4, x8	# 329
	flw		f2, 0(x4)	# 329
	lui		x4, 70312	# 329
	ori		x4, x0, 70312	# 329
	mul		x8, x30, x7	# 329
	add		x4, x4, x8	# 329
	flw		f3, 0(x4)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	fsub	f1, f0, f1	# 123
	flw		f2, -64(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_cont.37211	# 121
	fadd	f1, f0, f2	# 1972
fle_cont.37211:
	flw		f2, -144(x2)	# 1973
	fmul	f1, f2, f1	# 1973
	lw		x4, -152(x2)	# 498
	lw		x4, 28(x4)	# 498
	mul		x8, x30, x5	# 503
	add		x4, x4, x8	# 503
	flw		f2, 0(x4)	# 503
	fmul	f1, f1, f2	# 1973
	lui		x4, 70592	# 339
	ori		x4, x0, 70592	# 339
	mul		x8, x30, x5	# 339
	add		x4, x4, x8	# 339
	flw		f2, 0(x4)	# 339
	lui		x4, 70580	# 339
	ori		x4, x0, 70580	# 339
	mul		x8, x30, x5	# 339
	add		x4, x4, x8	# 339
	flw		f3, 0(x4)	# 339
	fmul	f3, f1, f3	# 339
	fadd	f2, f2, f3	# 339
	lui		x4, 70592	# 339
	ori		x4, x0, 70592	# 339
	mul		x5, x30, x5	# 339
	add		x4, x4, x5	# 339
	fsw		f2, 0(x4)	# 339
	lui		x4, 70592	# 340
	ori		x4, x0, 70592	# 340
	mul		x5, x30, x6	# 340
	add		x4, x4, x5	# 340
	flw		f2, 0(x4)	# 340
	lui		x4, 70580	# 340
	ori		x4, x0, 70580	# 340
	mul		x5, x30, x6	# 340
	add		x4, x4, x5	# 340
	flw		f3, 0(x4)	# 340
	fmul	f3, f1, f3	# 340
	fadd	f2, f2, f3	# 340
	lui		x4, 70592	# 340
	ori		x4, x0, 70592	# 340
	mul		x5, x30, x6	# 340
	add		x4, x4, x5	# 340
	fsw		f2, 0(x4)	# 340
	lui		x4, 70592	# 341
	ori		x4, x0, 70592	# 341
	mul		x5, x30, x7	# 341
	add		x4, x4, x5	# 341
	flw		f2, 0(x4)	# 341
	lui		x4, 70580	# 341
	ori		x4, x0, 70580	# 341
	mul		x5, x30, x7	# 341
	add		x4, x4, x5	# 341
	flw		f3, 0(x4)	# 341
	fmul	f1, f1, f3	# 341
	fadd	f1, f2, f1	# 341
	lui		x4, 70592	# 341
	ori		x4, x0, 70592	# 341
	mul		x5, x30, x7	# 341
	add		x4, x4, x5	# 341
	fsw		f1, 0(x4)	# 341
beq_cont.37209:
beq_cont.37164:
fle_cont.37106:
	lw		x4, -16(x2)	# 1991
	lw		x5, -20(x2)	# 1991
	sub		x7, x5, x4	# 1991
	lw		x4, -8(x2)	# 1991
	lw		x5, -4(x2)	# 1991
	lw		x6, 0(x2)	# 1991
	lw		x29, -12(x2)	# 1991
	lw		x31, 0(x29)	# 1991
	jalr	x0, x31, 0	# 1991
do_without_neighbors.2919.18841:
	lw		x6, 24(x29)	# 2072
	lw		x7, 20(x29)	# 2072
	lw		x8, 16(x29)	# 2072
	lw		x9, 12(x29)	# 2072
	lw		x10, 8(x29)	# 2072
	lw		x11, 4(x29)	# 2072
	addi	x12, x0, 4	# 2072
	ble		x5, x12, ble.37212	# 2072
	jalr	x0, x1, 0	# 2082
ble.37212:
	lw		x13, 8(x4)	# 614
	mul		x14, x30, x5	# 2075
	add		x13, x13, x14	# 2075
	lw		x13, 0(x13)	# 2075
	ble		x10, x13, ble.37214	# 2075
	jalr	x0, x1, 0	# 2081
ble.37214:
	lw		x13, 12(x4)	# 621
	mul		x14, x30, x5	# 2077
	add		x13, x13, x14	# 2077
	lw		x13, 0(x13)	# 2077
	sw		x4, 0(x2)	# 2077
	sw		x29, -4(x2)	# 2077
	sw		x11, -8(x2)	# 2077
	sw		x5, -12(x2)	# 2077
	beq		x13, x10, beq_cont.37216	# 2077
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
	lui		x17, 70592	# 296
	ori		x17, x0, 70592	# 296
	mul		x18, x30, x10	# 296
	add		x17, x17, x18	# 296
	fsw		f1, 0(x17)	# 296
	mul		x17, x30, x11	# 297
	add		x17, x13, x17	# 297
	flw		f1, 0(x17)	# 297
	lui		x17, 70592	# 297
	ori		x17, x0, 70592	# 297
	mul		x18, x30, x11	# 297
	add		x17, x17, x18	# 297
	fsw		f1, 0(x17)	# 297
	mul		x17, x30, x8	# 298
	add		x13, x13, x17	# 298
	flw		f1, 0(x13)	# 298
	lui		x13, 70592	# 298
	ori		x13, x0, 70592	# 298
	mul		x17, x30, x8	# 298
	add		x13, x13, x17	# 298
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
	beq		x13, x10, beq_cont.37217	# 2008
	lui		x17, 70716	# 2009
	ori		x17, x0, 70716	# 2009
	mul		x18, x30, x10	# 2009
	add		x17, x17, x18	# 2009
	lw		x17, 0(x17)	# 2009
	mul		x18, x30, x10	# 296
	add		x18, x15, x18	# 296
	flw		f1, 0(x18)	# 296
	lui		x18, 70648	# 296
	ori		x18, x0, 70648	# 296
	mul		x19, x30, x10	# 296
	add		x18, x18, x19	# 296
	fsw		f1, 0(x18)	# 296
	mul		x18, x30, x11	# 297
	add		x18, x15, x18	# 297
	flw		f1, 0(x18)	# 297
	lui		x18, 70648	# 297
	ori		x18, x0, 70648	# 297
	mul		x19, x30, x11	# 297
	add		x18, x18, x19	# 297
	fsw		f1, 0(x18)	# 297
	mul		x18, x30, x8	# 298
	add		x18, x15, x18	# 298
	flw		f1, 0(x18)	# 298
	lui		x18, 70648	# 298
	ori		x18, x0, 70648	# 298
	mul		x19, x30, x8	# 298
	add		x18, x18, x19	# 298
	fsw		f1, 0(x18)	# 298
	lui		x18, 70000	# 1352
	ori		x18, x0, 70000	# 1352
	mul		x19, x30, x10	# 1352
	add		x18, x18, x19	# 1352
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
beq_cont.37217:
	lw		x4, -8(x2)	# 2012
	lw		x5, -52(x2)	# 2012
	beq		x5, x4, beq_cont.37218	# 2012
	lui		x6, 70716	# 2013
	ori		x6, x0, 70716	# 2013
	mul		x7, x30, x4	# 2013
	add		x6, x6, x7	# 2013
	lw		x6, 0(x6)	# 2013
	lw		x7, -48(x2)	# 296
	mul		x8, x30, x7	# 296
	lw		x9, -44(x2)	# 296
	add		x8, x9, x8	# 296
	flw		f1, 0(x8)	# 296
	lui		x8, 70648	# 296
	ori		x8, x0, 70648	# 296
	mul		x10, x30, x7	# 296
	add		x8, x8, x10	# 296
	fsw		f1, 0(x8)	# 296
	mul		x8, x30, x4	# 297
	add		x8, x9, x8	# 297
	flw		f1, 0(x8)	# 297
	lui		x8, 70648	# 297
	ori		x8, x0, 70648	# 297
	mul		x10, x30, x4	# 297
	add		x8, x8, x10	# 297
	fsw		f1, 0(x8)	# 297
	lw		x8, -40(x2)	# 298
	mul		x10, x30, x8	# 298
	add		x10, x9, x10	# 298
	flw		f1, 0(x10)	# 298
	lui		x10, 70648	# 298
	ori		x10, x0, 70648	# 298
	mul		x11, x30, x8	# 298
	add		x10, x10, x11	# 298
	fsw		f1, 0(x10)	# 298
	lui		x10, 70000	# 1352
	ori		x10, x0, 70000	# 1352
	mul		x11, x30, x7	# 1352
	add		x10, x10, x11	# 1352
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
beq_cont.37218:
	lw		x4, -40(x2)	# 2016
	lw		x5, -52(x2)	# 2016
	beq		x5, x4, beq_cont.37219	# 2016
	lui		x6, 70716	# 2017
	ori		x6, x0, 70716	# 2017
	mul		x7, x30, x4	# 2017
	add		x6, x6, x7	# 2017
	lw		x6, 0(x6)	# 2017
	lw		x7, -48(x2)	# 296
	mul		x8, x30, x7	# 296
	lw		x9, -44(x2)	# 296
	add		x8, x9, x8	# 296
	flw		f1, 0(x8)	# 296
	lui		x8, 70648	# 296
	ori		x8, x0, 70648	# 296
	mul		x10, x30, x7	# 296
	add		x8, x8, x10	# 296
	fsw		f1, 0(x8)	# 296
	lw		x8, -8(x2)	# 297
	mul		x10, x30, x8	# 297
	add		x10, x9, x10	# 297
	flw		f1, 0(x10)	# 297
	lui		x10, 70648	# 297
	ori		x10, x0, 70648	# 297
	mul		x11, x30, x8	# 297
	add		x10, x10, x11	# 297
	fsw		f1, 0(x10)	# 297
	mul		x10, x30, x4	# 298
	add		x10, x9, x10	# 298
	flw		f1, 0(x10)	# 298
	lui		x10, 70648	# 298
	ori		x10, x0, 70648	# 298
	mul		x11, x30, x4	# 298
	add		x10, x10, x11	# 298
	fsw		f1, 0(x10)	# 298
	lui		x10, 70000	# 1352
	ori		x10, x0, 70000	# 1352
	mul		x11, x30, x7	# 1352
	add		x10, x10, x11	# 1352
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
beq_cont.37219:
	lw		x4, -24(x2)	# 2020
	lw		x5, -52(x2)	# 2020
	beq		x5, x4, beq_cont.37220	# 2020
	lui		x6, 70716	# 2021
	ori		x6, x0, 70716	# 2021
	mul		x4, x30, x4	# 2021
	add		x4, x6, x4	# 2021
	lw		x4, 0(x4)	# 2021
	lw		x6, -48(x2)	# 296
	mul		x7, x30, x6	# 296
	lw		x8, -44(x2)	# 296
	add		x7, x8, x7	# 296
	flw		f1, 0(x7)	# 296
	lui		x7, 70648	# 296
	ori		x7, x0, 70648	# 296
	mul		x9, x30, x6	# 296
	add		x7, x7, x9	# 296
	fsw		f1, 0(x7)	# 296
	lw		x7, -8(x2)	# 297
	mul		x9, x30, x7	# 297
	add		x9, x8, x9	# 297
	flw		f1, 0(x9)	# 297
	lui		x9, 70648	# 297
	ori		x9, x0, 70648	# 297
	mul		x10, x30, x7	# 297
	add		x9, x9, x10	# 297
	fsw		f1, 0(x9)	# 297
	lw		x9, -40(x2)	# 298
	mul		x10, x30, x9	# 298
	add		x10, x8, x10	# 298
	flw		f1, 0(x10)	# 298
	lui		x10, 70648	# 298
	ori		x10, x0, 70648	# 298
	mul		x11, x30, x9	# 298
	add		x10, x10, x11	# 298
	fsw		f1, 0(x10)	# 298
	lui		x10, 70000	# 1352
	ori		x10, x0, 70000	# 1352
	mul		x11, x30, x6	# 1352
	add		x10, x10, x11	# 1352
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
beq_cont.37220:
	lw		x4, -20(x2)	# 2024
	lw		x5, -52(x2)	# 2024
	beq		x5, x4, beq_cont.37221	# 2024
	lui		x5, 70716	# 2025
	ori		x5, x0, 70716	# 2025
	mul		x4, x30, x4	# 2025
	add		x4, x5, x4	# 2025
	lw		x4, 0(x4)	# 2025
	lw		x5, -48(x2)	# 296
	mul		x6, x30, x5	# 296
	lw		x7, -44(x2)	# 296
	add		x6, x7, x6	# 296
	flw		f1, 0(x6)	# 296
	lui		x6, 70648	# 296
	ori		x6, x0, 70648	# 296
	mul		x8, x30, x5	# 296
	add		x6, x6, x8	# 296
	fsw		f1, 0(x6)	# 296
	lw		x6, -8(x2)	# 297
	mul		x8, x30, x6	# 297
	add		x8, x7, x8	# 297
	flw		f1, 0(x8)	# 297
	lui		x8, 70648	# 297
	ori		x8, x0, 70648	# 297
	mul		x9, x30, x6	# 297
	add		x8, x8, x9	# 297
	fsw		f1, 0(x8)	# 297
	lw		x8, -40(x2)	# 298
	mul		x9, x30, x8	# 298
	add		x9, x7, x9	# 298
	flw		f1, 0(x9)	# 298
	lui		x9, 70648	# 298
	ori		x9, x0, 70648	# 298
	mul		x10, x30, x8	# 298
	add		x9, x9, x10	# 298
	fsw		f1, 0(x9)	# 298
	lui		x9, 70000	# 1352
	ori		x9, x0, 70000	# 1352
	mul		x10, x30, x5	# 1352
	add		x9, x9, x10	# 1352
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
beq_cont.37221:
	lw		x4, -12(x2)	# 2044
	mul		x5, x30, x4	# 2044
	lw		x6, -16(x2)	# 2044
	add		x5, x6, x5	# 2044
	lw		x5, 0(x5)	# 2044
	lui		x6, 70604	# 369
	ori		x6, x0, 70604	# 369
	lw		x7, -48(x2)	# 369
	mul		x8, x30, x7	# 369
	add		x6, x6, x8	# 369
	flw		f1, 0(x6)	# 369
	mul		x6, x30, x7	# 369
	add		x6, x5, x6	# 369
	flw		f2, 0(x6)	# 369
	lui		x6, 70592	# 369
	ori		x6, x0, 70592	# 369
	mul		x8, x30, x7	# 369
	add		x6, x6, x8	# 369
	flw		f3, 0(x6)	# 369
	fmul	f2, f2, f3	# 369
	fadd	f1, f1, f2	# 369
	lui		x6, 70604	# 369
	ori		x6, x0, 70604	# 369
	mul		x7, x30, x7	# 369
	add		x6, x6, x7	# 369
	fsw		f1, 0(x6)	# 369
	lui		x6, 70604	# 370
	ori		x6, x0, 70604	# 370
	lw		x7, -8(x2)	# 370
	mul		x8, x30, x7	# 370
	add		x6, x6, x8	# 370
	flw		f1, 0(x6)	# 370
	mul		x6, x30, x7	# 370
	add		x6, x5, x6	# 370
	flw		f2, 0(x6)	# 370
	lui		x6, 70592	# 370
	ori		x6, x0, 70592	# 370
	mul		x8, x30, x7	# 370
	add		x6, x6, x8	# 370
	flw		f3, 0(x6)	# 370
	fmul	f2, f2, f3	# 370
	fadd	f1, f1, f2	# 370
	lui		x6, 70604	# 370
	ori		x6, x0, 70604	# 370
	mul		x8, x30, x7	# 370
	add		x6, x6, x8	# 370
	fsw		f1, 0(x6)	# 370
	lui		x6, 70604	# 371
	ori		x6, x0, 70604	# 371
	lw		x8, -40(x2)	# 371
	mul		x9, x30, x8	# 371
	add		x6, x6, x9	# 371
	flw		f1, 0(x6)	# 371
	mul		x6, x30, x8	# 371
	add		x5, x5, x6	# 371
	flw		f2, 0(x5)	# 371
	lui		x5, 70592	# 371
	ori		x5, x0, 70592	# 371
	mul		x6, x30, x8	# 371
	add		x5, x5, x6	# 371
	flw		f3, 0(x5)	# 371
	fmul	f2, f2, f3	# 371
	fadd	f1, f1, f2	# 371
	lui		x5, 70604	# 371
	ori		x5, x0, 70604	# 371
	mul		x6, x30, x8	# 371
	add		x5, x5, x6	# 371
	fsw		f1, 0(x5)	# 371
beq_cont.37216:
	lw		x4, -8(x2)	# 2080
	lw		x5, -12(x2)	# 2080
	add		x5, x5, x4	# 2080
	lw		x4, 0(x2)	# 2080
	lw		x29, -4(x2)	# 2080
	lw		x31, 0(x29)	# 2080
	jalr	x0, x31, 0	# 2080
try_exploit_neighbors.2935.18844:
	lw		x10, 16(x29)	# 2124
	lw		x11, 12(x29)	# 2124
	lw		x12, 8(x29)	# 2124
	lw		x13, 4(x29)	# 2124
	mul		x14, x30, x4	# 2124
	add		x14, x7, x14	# 2124
	lw		x14, 0(x14)	# 2124
	addi	x15, x0, 4	# 2125
	ble		x9, x15, ble.37222	# 2125
	jalr	x0, x1, 0	# 2144
ble.37222:
	lw		x15, 8(x14)	# 614
	mul		x16, x30, x9	# 2100
	add		x15, x15, x16	# 2100
	lw		x15, 0(x15)	# 2100
	ble		x12, x15, ble.37224	# 2128
	jalr	x0, x1, 0	# 2143
ble.37224:
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
	beq		x17, x15, beq.37227	# 2108
	addi	x15, x0, 0	# 2116
	jal		x0, beq_cont.37226	# 2108
beq.37227:
	mul		x17, x30, x4	# 2109
	add		x17, x8, x17	# 2109
	lw		x17, 0(x17)	# 2109
	lw		x17, 8(x17)	# 614
	mul		x18, x30, x9	# 2100
	add		x17, x17, x18	# 2100
	lw		x17, 0(x17)	# 2100
	beq		x17, x15, beq.37229	# 2109
	addi	x15, x0, 0	# 2115
	jal		x0, beq_cont.37228	# 2109
beq.37229:
	sub		x17, x4, x13	# 2110
	mul		x17, x30, x17	# 2110
	add		x17, x7, x17	# 2110
	lw		x17, 0(x17)	# 2110
	lw		x17, 8(x17)	# 614
	mul		x18, x30, x9	# 2100
	add		x17, x17, x18	# 2100
	lw		x17, 0(x17)	# 2100
	beq		x17, x15, beq.37231	# 2110
	addi	x15, x0, 0	# 2114
	jal		x0, beq_cont.37230	# 2110
beq.37231:
	add		x17, x4, x13	# 2111
	mul		x17, x30, x17	# 2111
	add		x17, x7, x17	# 2111
	lw		x17, 0(x17)	# 2111
	lw		x17, 8(x17)	# 614
	mul		x18, x30, x9	# 2100
	add		x17, x17, x18	# 2100
	lw		x17, 0(x17)	# 2100
	beq		x17, x15, beq.37233	# 2111
	addi	x15, x0, 0	# 2113
	jal		x0, beq_cont.37232	# 2111
beq.37233:
	addi	x15, x0, 1	# 2112
beq_cont.37232:
beq_cont.37230:
beq_cont.37228:
beq_cont.37226:
	beq		x15, x12, beq.37234	# 2130
	lw		x10, 12(x14)	# 621
	mul		x15, x30, x9	# 2134
	add		x10, x10, x15	# 2134
	lw		x10, 0(x10)	# 2134
	beq		x10, x12, beq_cont.37235	# 2134
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
	lui		x18, 70592	# 296
	ori		x18, x0, 70592	# 296
	mul		x19, x30, x12	# 296
	add		x18, x18, x19	# 296
	fsw		f1, 0(x18)	# 296
	mul		x18, x30, x13	# 297
	add		x18, x10, x18	# 297
	flw		f1, 0(x18)	# 297
	lui		x18, 70592	# 297
	ori		x18, x0, 70592	# 297
	mul		x19, x30, x13	# 297
	add		x18, x18, x19	# 297
	fsw		f1, 0(x18)	# 297
	mul		x18, x30, x11	# 298
	add		x10, x10, x18	# 298
	flw		f1, 0(x10)	# 298
	lui		x10, 70592	# 298
	ori		x10, x0, 70592	# 298
	mul		x18, x30, x11	# 298
	add		x10, x10, x18	# 298
	fsw		f1, 0(x10)	# 298
	mul		x10, x30, x9	# 2060
	add		x10, x15, x10	# 2060
	lw		x10, 0(x10)	# 2060
	lui		x15, 70592	# 346
	ori		x15, x0, 70592	# 346
	mul		x18, x30, x12	# 346
	add		x15, x15, x18	# 346
	flw		f1, 0(x15)	# 346
	mul		x15, x30, x12	# 346
	add		x15, x10, x15	# 346
	flw		f2, 0(x15)	# 346
	fadd	f1, f1, f2	# 346
	lui		x15, 70592	# 346
	ori		x15, x0, 70592	# 346
	mul		x18, x30, x12	# 346
	add		x15, x15, x18	# 346
	fsw		f1, 0(x15)	# 346
	lui		x15, 70592	# 347
	ori		x15, x0, 70592	# 347
	mul		x18, x30, x13	# 347
	add		x15, x15, x18	# 347
	flw		f1, 0(x15)	# 347
	mul		x15, x30, x13	# 347
	add		x15, x10, x15	# 347
	flw		f2, 0(x15)	# 347
	fadd	f1, f1, f2	# 347
	lui		x15, 70592	# 347
	ori		x15, x0, 70592	# 347
	mul		x18, x30, x13	# 347
	add		x15, x15, x18	# 347
	fsw		f1, 0(x15)	# 347
	lui		x15, 70592	# 348
	ori		x15, x0, 70592	# 348
	mul		x18, x30, x11	# 348
	add		x15, x15, x18	# 348
	flw		f1, 0(x15)	# 348
	mul		x15, x30, x11	# 348
	add		x10, x10, x15	# 348
	flw		f2, 0(x10)	# 348
	fadd	f1, f1, f2	# 348
	lui		x10, 70592	# 348
	ori		x10, x0, 70592	# 348
	mul		x15, x30, x11	# 348
	add		x10, x10, x15	# 348
	fsw		f1, 0(x10)	# 348
	mul		x10, x30, x9	# 2061
	add		x10, x14, x10	# 2061
	lw		x10, 0(x10)	# 2061
	lui		x14, 70592	# 346
	ori		x14, x0, 70592	# 346
	mul		x15, x30, x12	# 346
	add		x14, x14, x15	# 346
	flw		f1, 0(x14)	# 346
	mul		x14, x30, x12	# 346
	add		x14, x10, x14	# 346
	flw		f2, 0(x14)	# 346
	fadd	f1, f1, f2	# 346
	lui		x14, 70592	# 346
	ori		x14, x0, 70592	# 346
	mul		x15, x30, x12	# 346
	add		x14, x14, x15	# 346
	fsw		f1, 0(x14)	# 346
	lui		x14, 70592	# 347
	ori		x14, x0, 70592	# 347
	mul		x15, x30, x13	# 347
	add		x14, x14, x15	# 347
	flw		f1, 0(x14)	# 347
	mul		x14, x30, x13	# 347
	add		x14, x10, x14	# 347
	flw		f2, 0(x14)	# 347
	fadd	f1, f1, f2	# 347
	lui		x14, 70592	# 347
	ori		x14, x0, 70592	# 347
	mul		x15, x30, x13	# 347
	add		x14, x14, x15	# 347
	fsw		f1, 0(x14)	# 347
	lui		x14, 70592	# 348
	ori		x14, x0, 70592	# 348
	mul		x15, x30, x11	# 348
	add		x14, x14, x15	# 348
	flw		f1, 0(x14)	# 348
	mul		x14, x30, x11	# 348
	add		x10, x10, x14	# 348
	flw		f2, 0(x10)	# 348
	fadd	f1, f1, f2	# 348
	lui		x10, 70592	# 348
	ori		x10, x0, 70592	# 348
	mul		x14, x30, x11	# 348
	add		x10, x10, x14	# 348
	fsw		f1, 0(x10)	# 348
	mul		x10, x30, x9	# 2062
	add		x10, x16, x10	# 2062
	lw		x10, 0(x10)	# 2062
	lui		x14, 70592	# 346
	ori		x14, x0, 70592	# 346
	mul		x15, x30, x12	# 346
	add		x14, x14, x15	# 346
	flw		f1, 0(x14)	# 346
	mul		x14, x30, x12	# 346
	add		x14, x10, x14	# 346
	flw		f2, 0(x14)	# 346
	fadd	f1, f1, f2	# 346
	lui		x14, 70592	# 346
	ori		x14, x0, 70592	# 346
	mul		x15, x30, x12	# 346
	add		x14, x14, x15	# 346
	fsw		f1, 0(x14)	# 346
	lui		x14, 70592	# 347
	ori		x14, x0, 70592	# 347
	mul		x15, x30, x13	# 347
	add		x14, x14, x15	# 347
	flw		f1, 0(x14)	# 347
	mul		x14, x30, x13	# 347
	add		x14, x10, x14	# 347
	flw		f2, 0(x14)	# 347
	fadd	f1, f1, f2	# 347
	lui		x14, 70592	# 347
	ori		x14, x0, 70592	# 347
	mul		x15, x30, x13	# 347
	add		x14, x14, x15	# 347
	fsw		f1, 0(x14)	# 347
	lui		x14, 70592	# 348
	ori		x14, x0, 70592	# 348
	mul		x15, x30, x11	# 348
	add		x14, x14, x15	# 348
	flw		f1, 0(x14)	# 348
	mul		x14, x30, x11	# 348
	add		x10, x10, x14	# 348
	flw		f2, 0(x10)	# 348
	fadd	f1, f1, f2	# 348
	lui		x10, 70592	# 348
	ori		x10, x0, 70592	# 348
	mul		x14, x30, x11	# 348
	add		x10, x10, x14	# 348
	fsw		f1, 0(x10)	# 348
	mul		x10, x30, x9	# 2063
	add		x10, x17, x10	# 2063
	lw		x10, 0(x10)	# 2063
	lui		x14, 70592	# 346
	ori		x14, x0, 70592	# 346
	mul		x15, x30, x12	# 346
	add		x14, x14, x15	# 346
	flw		f1, 0(x14)	# 346
	mul		x14, x30, x12	# 346
	add		x14, x10, x14	# 346
	flw		f2, 0(x14)	# 346
	fadd	f1, f1, f2	# 346
	lui		x14, 70592	# 346
	ori		x14, x0, 70592	# 346
	mul		x15, x30, x12	# 346
	add		x14, x14, x15	# 346
	fsw		f1, 0(x14)	# 346
	lui		x14, 70592	# 347
	ori		x14, x0, 70592	# 347
	mul		x15, x30, x13	# 347
	add		x14, x14, x15	# 347
	flw		f1, 0(x14)	# 347
	mul		x14, x30, x13	# 347
	add		x14, x10, x14	# 347
	flw		f2, 0(x14)	# 347
	fadd	f1, f1, f2	# 347
	lui		x14, 70592	# 347
	ori		x14, x0, 70592	# 347
	mul		x15, x30, x13	# 347
	add		x14, x14, x15	# 347
	fsw		f1, 0(x14)	# 347
	lui		x14, 70592	# 348
	ori		x14, x0, 70592	# 348
	mul		x15, x30, x11	# 348
	add		x14, x14, x15	# 348
	flw		f1, 0(x14)	# 348
	mul		x14, x30, x11	# 348
	add		x10, x10, x14	# 348
	flw		f2, 0(x10)	# 348
	fadd	f1, f1, f2	# 348
	lui		x10, 70592	# 348
	ori		x10, x0, 70592	# 348
	mul		x14, x30, x11	# 348
	add		x10, x10, x14	# 348
	fsw		f1, 0(x10)	# 348
	mul		x10, x30, x4	# 2065
	add		x10, x7, x10	# 2065
	lw		x10, 0(x10)	# 2065
	lw		x10, 16(x10)	# 628
	mul		x14, x30, x9	# 2066
	add		x10, x10, x14	# 2066
	lw		x10, 0(x10)	# 2066
	lui		x14, 70604	# 369
	ori		x14, x0, 70604	# 369
	mul		x15, x30, x12	# 369
	add		x14, x14, x15	# 369
	flw		f1, 0(x14)	# 369
	mul		x14, x30, x12	# 369
	add		x14, x10, x14	# 369
	flw		f2, 0(x14)	# 369
	lui		x14, 70592	# 369
	ori		x14, x0, 70592	# 369
	mul		x15, x30, x12	# 369
	add		x14, x14, x15	# 369
	flw		f3, 0(x14)	# 369
	fmul	f2, f2, f3	# 369
	fadd	f1, f1, f2	# 369
	lui		x14, 70604	# 369
	ori		x14, x0, 70604	# 369
	mul		x12, x30, x12	# 369
	add		x12, x14, x12	# 369
	fsw		f1, 0(x12)	# 369
	lui		x12, 70604	# 370
	ori		x12, x0, 70604	# 370
	mul		x14, x30, x13	# 370
	add		x12, x12, x14	# 370
	flw		f1, 0(x12)	# 370
	mul		x12, x30, x13	# 370
	add		x12, x10, x12	# 370
	flw		f2, 0(x12)	# 370
	lui		x12, 70592	# 370
	ori		x12, x0, 70592	# 370
	mul		x14, x30, x13	# 370
	add		x12, x12, x14	# 370
	flw		f3, 0(x12)	# 370
	fmul	f2, f2, f3	# 370
	fadd	f1, f1, f2	# 370
	lui		x12, 70604	# 370
	ori		x12, x0, 70604	# 370
	mul		x14, x30, x13	# 370
	add		x12, x12, x14	# 370
	fsw		f1, 0(x12)	# 370
	lui		x12, 70604	# 371
	ori		x12, x0, 70604	# 371
	mul		x14, x30, x11	# 371
	add		x12, x12, x14	# 371
	flw		f1, 0(x12)	# 371
	mul		x12, x30, x11	# 371
	add		x10, x10, x12	# 371
	flw		f2, 0(x10)	# 371
	lui		x10, 70592	# 371
	ori		x10, x0, 70592	# 371
	mul		x12, x30, x11	# 371
	add		x10, x10, x12	# 371
	flw		f3, 0(x10)	# 371
	fmul	f2, f2, f3	# 371
	fadd	f1, f1, f2	# 371
	lui		x10, 70604	# 371
	ori		x10, x0, 70604	# 371
	mul		x11, x30, x11	# 371
	add		x10, x10, x11	# 371
	fsw		f1, 0(x10)	# 371
beq_cont.37235:
	add		x9, x9, x13	# 2139
	lw		x31, 0(x29)	# 2139
	jalr	x0, x31, 0	# 2139
beq.37234:
	addi	x5, x9, 0
	addi	x4, x14, 0
	addi	x29, x10, 0
	lw		x31, 0(x29)	# 2142
	jalr	x0, x31, 0	# 2142
pretrace_diffuse_rays.2950.18851:
	lw		x6, 24(x29)	# 2200
	lw		x7, 20(x29)	# 2200
	lw		x8, 16(x29)	# 2200
	lw		x9, 12(x29)	# 2200
	lw		x10, 8(x29)	# 2200
	flw		f1, 4(x29)	# 2200
	addi	x11, x0, 4	# 2200
	ble		x5, x11, ble.37236	# 2200
	jalr	x0, x1, 0	# 2224
ble.37236:
	lw		x11, 8(x4)	# 614
	mul		x12, x30, x5	# 2100
	add		x11, x11, x12	# 2100
	lw		x11, 0(x11)	# 2100
	ble		x9, x11, ble.37238	# 2204
	jalr	x0, x1, 0	# 2223
ble.37238:
	lw		x11, 12(x4)	# 621
	mul		x12, x30, x5	# 2207
	add		x11, x11, x12	# 2207
	lw		x11, 0(x11)	# 2207
	sw		x29, 0(x2)	# 2207
	sw		x10, -4(x2)	# 2207
	sw		x5, -8(x2)	# 2207
	beq		x11, x9, beq_cont.37240	# 2207
	lw		x11, 24(x4)	# 651
	mul		x12, x30, x9	# 653
	add		x11, x11, x12	# 653
	lw		x11, 0(x11)	# 653
	lui		x12, 70592	# 284
	ori		x12, x0, 70592	# 284
	mul		x13, x30, x9	# 284
	add		x12, x12, x13	# 284
	fsw		f1, 0(x12)	# 284
	lui		x12, 70592	# 285
	ori		x12, x0, 70592	# 285
	mul		x13, x30, x10	# 285
	add		x12, x12, x13	# 285
	fsw		f1, 0(x12)	# 285
	lui		x12, 70592	# 286
	ori		x12, x0, 70592	# 286
	mul		x13, x30, x8	# 286
	add		x12, x12, x13	# 286
	fsw		f1, 0(x12)	# 286
	lw		x12, 28(x4)	# 665
	lw		x13, 4(x4)	# 606
	lui		x14, 70716	# 2216
	ori		x14, x0, 70716	# 2216
	mul		x11, x30, x11	# 2216
	add		x11, x14, x11	# 2216
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
	lui		x14, 70648	# 296
	ori		x14, x0, 70648	# 296
	mul		x15, x30, x9	# 296
	add		x14, x14, x15	# 296
	fsw		f1, 0(x14)	# 296
	mul		x14, x30, x10	# 297
	add		x14, x13, x14	# 297
	flw		f1, 0(x14)	# 297
	lui		x14, 70648	# 297
	ori		x14, x0, 70648	# 297
	mul		x15, x30, x10	# 297
	add		x14, x14, x15	# 297
	fsw		f1, 0(x14)	# 297
	mul		x14, x30, x8	# 298
	add		x14, x13, x14	# 298
	flw		f1, 0(x14)	# 298
	lui		x14, 70648	# 298
	ori		x14, x0, 70648	# 298
	mul		x15, x30, x8	# 298
	add		x14, x14, x15	# 298
	fsw		f1, 0(x14)	# 298
	lui		x14, 70000	# 1352
	ori		x14, x0, 70000	# 1352
	mul		x15, x30, x9	# 1352
	add		x14, x14, x15	# 1352
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
	lui		x7, 70592	# 296
	ori		x7, x0, 70592	# 296
	lw		x8, -16(x2)	# 296
	mul		x9, x30, x8	# 296
	add		x7, x7, x9	# 296
	flw		f1, 0(x7)	# 296
	mul		x7, x30, x8	# 296
	add		x7, x5, x7	# 296
	fsw		f1, 0(x7)	# 296
	lui		x7, 70592	# 297
	ori		x7, x0, 70592	# 297
	lw		x8, -4(x2)	# 297
	mul		x9, x30, x8	# 297
	add		x7, x7, x9	# 297
	flw		f1, 0(x7)	# 297
	mul		x7, x30, x8	# 297
	add		x7, x5, x7	# 297
	fsw		f1, 0(x7)	# 297
	lui		x7, 70592	# 298
	ori		x7, x0, 70592	# 298
	lw		x9, -12(x2)	# 298
	mul		x10, x30, x9	# 298
	add		x7, x7, x10	# 298
	flw		f1, 0(x7)	# 298
	mul		x7, x30, x9	# 298
	add		x5, x5, x7	# 298
	fsw		f1, 0(x5)	# 298
beq_cont.37240:
	lw		x5, -4(x2)	# 2222
	lw		x6, -8(x2)	# 2222
	add		x5, x6, x5	# 2222
	lw		x29, 0(x2)	# 2222
	lw		x31, 0(x29)	# 2222
	jalr	x0, x31, 0	# 2222
pretrace_pixels.2953.18854:
	lw		x7, 28(x29)	# 2230
	lw		x8, 24(x29)	# 2230
	lw		x9, 20(x29)	# 2230
	lw		x10, 16(x29)	# 2230
	lw		x11, 12(x29)	# 2230
	lw		x12, 8(x29)	# 2230
	flw		f4, 4(x29)	# 2230
	ble		x11, x5, ble.37241	# 2230
	jalr	x0, x1, 0	# 2250
ble.37241:
	lui		x13, 70632	# 2232
	ori		x13, x0, 70632	# 2232
	mul		x14, x30, x11	# 2232
	add		x13, x13, x14	# 2232
	flw		f5, 0(x13)	# 2232
	lui		x13, 70624	# 2232
	ori		x13, x0, 70624	# 2232
	mul		x14, x30, x11	# 2232
	add		x13, x13, x14	# 2232
	lw		x13, 0(x13)	# 2232
	sub		x13, x5, x13	# 2232
	sw		x29, 0(x2)	# 2232
	sw		x9, -4(x2)	# 2232
	sw		x8, -8(x2)	# 2232
	sw		x6, -12(x2)	# 2232
	sw		x7, -16(x2)	# 2232
	sw		x4, -20(x2)	# 2232
	sw		x5, -24(x2)	# 2232
	fsw		f4, -28(x2)	# 2232
	fsw		f3, -32(x2)	# 2232
	sw		x10, -36(x2)	# 2232
	fsw		f2, -40(x2)	# 2232
	sw		x12, -44(x2)	# 2232
	fsw		f1, -48(x2)	# 2232
	sw		x11, -52(x2)	# 2232
	fsw		f5, -56(x2)	# 2232
	addi	x4, x13, 0
	sw		x1, -60(x2)	# 2232
	addi	x2, x2, -64	# 2232
	jal		x1, min_caml_float_of_int	# 2232
	addi	x2, x2, 64	# 2232
	lw		x1, -60(x2)	# 2232
	flw		f2, -56(x2)	# 2232
	fmul	f1, f2, f1	# 2232
	lui		x4, 70660	# 2233
	ori		x4, x0, 70660	# 2233
	lw		x5, -52(x2)	# 2233
	mul		x6, x30, x5	# 2233
	add		x4, x4, x6	# 2233
	flw		f2, 0(x4)	# 2233
	fmul	f2, f1, f2	# 2233
	flw		f3, -48(x2)	# 2233
	fadd	f2, f2, f3	# 2233
	lui		x4, 70696	# 2233
	ori		x4, x0, 70696	# 2233
	mul		x6, x30, x5	# 2233
	add		x4, x4, x6	# 2233
	fsw		f2, 0(x4)	# 2233
	lui		x4, 70660	# 2234
	ori		x4, x0, 70660	# 2234
	lw		x6, -44(x2)	# 2234
	mul		x7, x30, x6	# 2234
	add		x4, x4, x7	# 2234
	flw		f2, 0(x4)	# 2234
	fmul	f2, f1, f2	# 2234
	flw		f4, -40(x2)	# 2234
	fadd	f2, f2, f4	# 2234
	lui		x4, 70696	# 2234
	ori		x4, x0, 70696	# 2234
	mul		x7, x30, x6	# 2234
	add		x4, x4, x7	# 2234
	fsw		f2, 0(x4)	# 2234
	lui		x4, 70660	# 2235
	ori		x4, x0, 70660	# 2235
	lw		x7, -36(x2)	# 2235
	mul		x8, x30, x7	# 2235
	add		x4, x4, x8	# 2235
	flw		f2, 0(x4)	# 2235
	fmul	f1, f1, f2	# 2235
	flw		f2, -32(x2)	# 2235
	fadd	f1, f1, f2	# 2235
	lui		x4, 70696	# 2235
	ori		x4, x0, 70696	# 2235
	mul		x8, x30, x7	# 2235
	add		x4, x4, x8	# 2235
	fsw		f1, 0(x4)	# 2235
	lui		x4, 70696	# 320
	ori		x4, x0, 70696	# 320
	mul		x8, x30, x5	# 320
	add		x4, x4, x8	# 320
	flw		f1, 0(x4)	# 320
	fmul	f1, f1, f1	# 127
	lui		x4, 70696	# 320
	ori		x4, x0, 70696	# 320
	mul		x8, x30, x6	# 320
	add		x4, x4, x8	# 320
	flw		f5, 0(x4)	# 320
	fmul	f5, f5, f5	# 127
	fadd	f1, f1, f5	# 320
	lui		x4, 70696	# 320
	ori		x4, x0, 70696	# 320
	mul		x8, x30, x7	# 320
	add		x4, x4, x8	# 320
	flw		f5, 0(x4)	# 320
	fmul	f5, f5, f5	# 127
	fadd	f1, f1, f5	# 320
	fsqrt	f1, f1	# 320
	flw		f5, -28(x2)	# 120
	feq		x31, f1, f5	# 120
	beq		x31, x0, feq_else.37244	# 120
	fadd	f1, f0, f16	# 321
	jal		x0, feq_cont.37243	# 120
feq_else.37244:
	fadd	f6, f0, f16	# 321
	fdiv	f1, f6, f1	# 321
feq_cont.37243:
	lui		x4, 70696	# 322
	ori		x4, x0, 70696	# 322
	mul		x8, x30, x5	# 322
	add		x4, x4, x8	# 322
	flw		f6, 0(x4)	# 322
	fmul	f6, f6, f1	# 322
	lui		x4, 70696	# 322
	ori		x4, x0, 70696	# 322
	mul		x8, x30, x5	# 322
	add		x4, x4, x8	# 322
	fsw		f6, 0(x4)	# 322
	lui		x4, 70696	# 323
	ori		x4, x0, 70696	# 323
	mul		x8, x30, x6	# 323
	add		x4, x4, x8	# 323
	flw		f6, 0(x4)	# 323
	fmul	f6, f6, f1	# 323
	lui		x4, 70696	# 323
	ori		x4, x0, 70696	# 323
	mul		x8, x30, x6	# 323
	add		x4, x4, x8	# 323
	fsw		f6, 0(x4)	# 323
	lui		x4, 70696	# 324
	ori		x4, x0, 70696	# 324
	mul		x8, x30, x7	# 324
	add		x4, x4, x8	# 324
	flw		f6, 0(x4)	# 324
	fmul	f1, f6, f1	# 324
	lui		x4, 70696	# 324
	ori		x4, x0, 70696	# 324
	mul		x8, x30, x7	# 324
	add		x4, x4, x8	# 324
	fsw		f1, 0(x4)	# 324
	lui		x4, 70604	# 284
	ori		x4, x0, 70604	# 284
	mul		x8, x30, x5	# 284
	add		x4, x4, x8	# 284
	fsw		f5, 0(x4)	# 284
	lui		x4, 70604	# 285
	ori		x4, x0, 70604	# 285
	mul		x8, x30, x6	# 285
	add		x4, x4, x8	# 285
	fsw		f5, 0(x4)	# 285
	lui		x4, 70604	# 286
	ori		x4, x0, 70604	# 286
	mul		x8, x30, x7	# 286
	add		x4, x4, x8	# 286
	fsw		f5, 0(x4)	# 286
	lui		x4, 70300	# 296
	ori		x4, x0, 70300	# 296
	mul		x8, x30, x5	# 296
	add		x4, x4, x8	# 296
	flw		f1, 0(x4)	# 296
	lui		x4, 70636	# 296
	ori		x4, x0, 70636	# 296
	mul		x8, x30, x5	# 296
	add		x4, x4, x8	# 296
	fsw		f1, 0(x4)	# 296
	lui		x4, 70300	# 297
	ori		x4, x0, 70300	# 297
	mul		x8, x30, x6	# 297
	add		x4, x4, x8	# 297
	flw		f1, 0(x4)	# 297
	lui		x4, 70636	# 297
	ori		x4, x0, 70636	# 297
	mul		x8, x30, x6	# 297
	add		x4, x4, x8	# 297
	fsw		f1, 0(x4)	# 297
	lui		x4, 70300	# 298
	ori		x4, x0, 70300	# 298
	mul		x8, x30, x7	# 298
	add		x4, x4, x8	# 298
	flw		f1, 0(x4)	# 298
	lui		x4, 70636	# 298
	ori		x4, x0, 70636	# 298
	mul		x8, x30, x7	# 298
	add		x4, x4, x8	# 298
	fsw		f1, 0(x4)	# 298
	fadd	f1, f0, f16	# 2241
	lw		x4, -24(x2)	# 2241
	mul		x8, x30, x4	# 2241
	lw		x9, -20(x2)	# 2241
	add		x8, x9, x8	# 2241
	lw		x8, 0(x8)	# 2241
	lui		x10, 70696	# 2241
	ori		x10, x0, 70696	# 2241
	lw		x29, -16(x2)	# 2241
	addi	x6, x8, 0
	addi	x4, x5, 0
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
	lui		x7, 70604	# 296
	ori		x7, x0, 70604	# 296
	lw		x8, -52(x2)	# 296
	mul		x9, x30, x8	# 296
	add		x7, x7, x9	# 296
	flw		f1, 0(x7)	# 296
	mul		x7, x30, x8	# 296
	add		x7, x5, x7	# 296
	fsw		f1, 0(x7)	# 296
	lui		x7, 70604	# 297
	ori		x7, x0, 70604	# 297
	lw		x9, -44(x2)	# 297
	mul		x10, x30, x9	# 297
	add		x7, x7, x10	# 297
	flw		f1, 0(x7)	# 297
	mul		x7, x30, x9	# 297
	add		x7, x5, x7	# 297
	fsw		f1, 0(x7)	# 297
	lui		x7, 70604	# 298
	ori		x7, x0, 70604	# 298
	lw		x10, -36(x2)	# 298
	mul		x11, x30, x10	# 298
	add		x7, x7, x11	# 298
	flw		f1, 0(x7)	# 298
	mul		x7, x30, x10	# 298
	add		x5, x5, x7	# 298
	fsw		f1, 0(x5)	# 298
	mul		x5, x30, x4	# 2243
	add		x5, x6, x5	# 2243
	lw		x5, 0(x5)	# 2243
	lw		x5, 24(x5)	# 658
	mul		x7, x30, x8	# 660
	add		x5, x5, x7	# 660
	lw		x7, -12(x2)	# 660
	sw		x7, 0(x5)	# 660
	mul		x5, x30, x4	# 2246
	add		x5, x6, x5	# 2246
	lw		x5, 0(x5)	# 2246
	lw		x29, -8(x2)	# 2246
	addi	x4, x5, 0
	addi	x5, x8, 0
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
	ble		x6, x4, ble.37246	# 262
	addi	x6, x4, 0	# 262
	jal		x0, ble_cont.37245	# 262
ble.37246:
	sub		x6, x4, x6	# 262
ble_cont.37245:
	flw		f1, -48(x2)	# 2248
	flw		f2, -40(x2)	# 2248
	flw		f3, -32(x2)	# 2248
	lw		x4, -20(x2)	# 2248
	lw		x29, 0(x2)	# 2248
	lw		x31, 0(x29)	# 2248
	jalr	x0, x31, 0	# 2248
scan_pixel.2964.18861:
	lw		x10, 28(x29)	# 2271
	lw		x11, 24(x29)	# 2271
	lw		x12, 20(x29)	# 2271
	lw		x13, 16(x29)	# 2271
	lw		x14, 12(x29)	# 2271
	lw		x15, 8(x29)	# 2271
	lw		x16, 4(x29)	# 2271
	lui		x17, 70616	# 2271
	ori		x17, x0, 70616	# 2271
	mul		x18, x30, x15	# 2271
	add		x17, x17, x18	# 2271
	lw		x17, 0(x17)	# 2271
	ble		x17, x4, ble.37247	# 2271
	mul		x17, x30, x4	# 2274
	add		x17, x7, x17	# 2274
	lw		x17, 0(x17)	# 2274
	lw		x17, 0(x17)	# 599
	mul		x18, x30, x15	# 296
	add		x18, x17, x18	# 296
	flw		f1, 0(x18)	# 296
	lui		x18, 70604	# 296
	ori		x18, x0, 70604	# 296
	mul		x19, x30, x15	# 296
	add		x18, x18, x19	# 296
	fsw		f1, 0(x18)	# 296
	mul		x18, x30, x16	# 297
	add		x18, x17, x18	# 297
	flw		f1, 0(x18)	# 297
	lui		x18, 70604	# 297
	ori		x18, x0, 70604	# 297
	mul		x19, x30, x16	# 297
	add		x18, x18, x19	# 297
	fsw		f1, 0(x18)	# 297
	mul		x18, x30, x13	# 298
	add		x17, x17, x18	# 298
	flw		f1, 0(x17)	# 298
	lui		x17, 70604	# 298
	ori		x17, x0, 70604	# 298
	mul		x18, x30, x13	# 298
	add		x17, x17, x18	# 298
	fsw		f1, 0(x17)	# 298
	lui		x17, 70616	# 2087
	ori		x17, x0, 70616	# 2087
	mul		x18, x30, x16	# 2087
	add		x17, x17, x18	# 2087
	lw		x17, 0(x17)	# 2087
	add		x18, x5, x16	# 2087
	ble		x17, x18, ble.37249	# 2087
	ble		x5, x15, ble.37251	# 2088
	lui		x17, 70616	# 2089
	ori		x17, x0, 70616	# 2089
	mul		x18, x30, x15	# 2089
	add		x17, x17, x18	# 2089
	lw		x17, 0(x17)	# 2089
	add		x18, x4, x16	# 2089
	ble		x17, x18, ble.37253	# 2089
	ble		x4, x15, ble.37255	# 2090
	addi	x17, x0, 1	# 2091
	jal		x0, ble_cont.37254	# 2090
ble.37255:
	addi	x17, x0, 0	# 2092
ble_cont.37254:
	jal		x0, ble_cont.37252	# 2089
ble.37253:
	addi	x17, x0, 0	# 2093
ble_cont.37252:
	jal		x0, ble_cont.37250	# 2088
ble.37251:
	addi	x17, x0, 0	# 2094
ble_cont.37250:
	jal		x0, ble_cont.37248	# 2087
ble.37249:
	addi	x17, x0, 0	# 2095
ble_cont.37248:
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
	beq		x17, x15, beq.37257	# 2277
	addi	x9, x15, 0
	addi	x29, x10, 0
	sw		x1, -48(x2)	# 2278
	addi	x2, x2, -52	# 2278
	lw		x31, 0(x29)	# 2278
	jalr	x1, x31, 0	# 2278
	addi	x2, x2, 52	# 2278
	lw		x1, -48(x2)	# 2278
	jal		x0, beq_cont.37256	# 2277
beq.37257:
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
beq_cont.37256:
	lw		x4, -40(x2)	# 2177
	lw		x5, -44(x2)	# 2177
	beq		x5, x4, beq.37259	# 2177
	lui		x4, 70604	# 2185
	ori		x4, x0, 70604	# 2185
	lw		x6, -36(x2)	# 2185
	mul		x7, x30, x6	# 2185
	add		x4, x4, x7	# 2185
	flw		f1, 0(x4)	# 2185
	lw		x29, -32(x2)	# 153
	addi	x4, x6, 0
	sw		x1, -48(x2)	# 153
	addi	x2, x2, -52	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 52	# 153
	lw		x1, -48(x2)	# 153
	addi	x5, x0, 255	# 2172
	ble		x4, x5, ble.37261	# 2172
	addi	x4, x0, 255	# 2172
	jal		x0, ble_cont.37260	# 2172
ble.37261:
	lw		x6, -36(x2)	# 2172
	ble		x6, x4, ble_cont.37262	# 2172
	addi	x4, x0, 0	# 2172
ble_cont.37262:
ble_cont.37260:
	sw		x5, -48(x2)	# 2173
	sw		x1, -52(x2)	# 2173
	addi	x2, x2, -56	# 2173
	jal		x1, min_caml_print_char	# 2173
	addi	x2, x2, 56	# 2173
	lw		x1, -52(x2)	# 2173
	lui		x4, 70604	# 2186
	ori		x4, x0, 70604	# 2186
	lw		x5, -28(x2)	# 2186
	mul		x6, x30, x5	# 2186
	add		x4, x4, x6	# 2186
	flw		f1, 0(x4)	# 2186
	lw		x4, -36(x2)	# 153
	lw		x29, -32(x2)	# 153
	sw		x1, -52(x2)	# 153
	addi	x2, x2, -56	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 56	# 153
	lw		x1, -52(x2)	# 153
	lw		x5, -48(x2)	# 2172
	ble		x4, x5, ble.37264	# 2172
	addi	x4, x0, 255	# 2172
	jal		x0, ble_cont.37263	# 2172
ble.37264:
	lw		x6, -36(x2)	# 2172
	ble		x6, x4, ble_cont.37265	# 2172
	addi	x4, x0, 0	# 2172
ble_cont.37265:
ble_cont.37263:
	sw		x1, -52(x2)	# 2173
	addi	x2, x2, -56	# 2173
	jal		x1, min_caml_print_char	# 2173
	addi	x2, x2, 56	# 2173
	lw		x1, -52(x2)	# 2173
	lui		x4, 70604	# 2187
	ori		x4, x0, 70604	# 2187
	lw		x5, -24(x2)	# 2187
	mul		x5, x30, x5	# 2187
	add		x4, x4, x5	# 2187
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
	ble		x4, x5, ble.37267	# 2172
	addi	x4, x0, 255	# 2172
	jal		x0, ble_cont.37266	# 2172
ble.37267:
	lw		x5, -36(x2)	# 2172
	ble		x5, x4, ble_cont.37268	# 2172
	addi	x4, x0, 0	# 2172
ble_cont.37268:
ble_cont.37266:
	sw		x1, -52(x2)	# 2173
	addi	x2, x2, -56	# 2173
	jal		x1, min_caml_print_char	# 2173
	addi	x2, x2, 56	# 2173
	lw		x1, -52(x2)	# 2173
	jal		x0, beq_cont.37258	# 2177
beq.37259:
	lui		x4, 70604	# 2178
	ori		x4, x0, 70604	# 2178
	lw		x6, -36(x2)	# 2178
	mul		x7, x30, x6	# 2178
	add		x4, x4, x7	# 2178
	flw		f1, 0(x4)	# 2178
	lw		x29, -32(x2)	# 153
	addi	x4, x6, 0
	sw		x1, -52(x2)	# 153
	addi	x2, x2, -56	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 56	# 153
	lw		x1, -52(x2)	# 153
	addi	x5, x0, 255	# 2166
	ble		x4, x5, ble.37270	# 2166
	addi	x4, x0, 255	# 2166
	jal		x0, ble_cont.37269	# 2166
ble.37270:
	lw		x6, -36(x2)	# 2166
	ble		x6, x4, ble_cont.37271	# 2166
	addi	x4, x0, 0	# 2166
ble_cont.37271:
ble_cont.37269:
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
	lui		x4, 70604	# 2180
	ori		x4, x0, 70604	# 2180
	lw		x5, -28(x2)	# 2180
	mul		x6, x30, x5	# 2180
	add		x4, x4, x6	# 2180
	flw		f1, 0(x4)	# 2180
	lw		x4, -36(x2)	# 153
	lw		x29, -32(x2)	# 153
	sw		x1, -60(x2)	# 153
	addi	x2, x2, -64	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 64	# 153
	lw		x1, -60(x2)	# 153
	lw		x5, -52(x2)	# 2166
	ble		x4, x5, ble.37273	# 2166
	addi	x4, x0, 255	# 2166
	jal		x0, ble_cont.37272	# 2166
ble.37273:
	lw		x6, -36(x2)	# 2166
	ble		x6, x4, ble_cont.37274	# 2166
	addi	x4, x0, 0	# 2166
ble_cont.37274:
ble_cont.37272:
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
	lui		x4, 70604	# 2182
	ori		x4, x0, 70604	# 2182
	lw		x5, -24(x2)	# 2182
	mul		x5, x30, x5	# 2182
	add		x4, x4, x5	# 2182
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
	ble		x4, x5, ble.37276	# 2166
	addi	x4, x0, 255	# 2166
	jal		x0, ble_cont.37275	# 2166
ble.37276:
	lw		x5, -36(x2)	# 2166
	ble		x5, x4, ble_cont.37277	# 2166
	addi	x4, x0, 0	# 2166
ble_cont.37277:
ble_cont.37275:
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
beq_cont.37258:
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
ble.37247:
	jalr	x0, x1, 0	# 2286
scan_line.2971.18868:
	lw		x10, 24(x29)	# 2292
	lw		x11, 20(x29)	# 2292
	lw		x12, 16(x29)	# 2292
	lw		x13, 12(x29)	# 2292
	lw		x14, 8(x29)	# 2292
	lw		x15, 4(x29)	# 2292
	lui		x16, 70616	# 2292
	ori		x16, x0, 70616	# 2292
	mul		x17, x30, x15	# 2292
	add		x16, x16, x17	# 2292
	lw		x16, 0(x16)	# 2292
	ble		x16, x4, ble.37279	# 2292
	sub		x16, x16, x15	# 2294
	sw		x29, 0(x2)	# 2294
	sw		x12, -4(x2)	# 2294
	sw		x13, -8(x2)	# 2294
	sw		x8, -12(x2)	# 2294
	sw		x15, -16(x2)	# 2294
	sw		x9, -20(x2)	# 2294
	sw		x7, -24(x2)	# 2294
	sw		x6, -28(x2)	# 2294
	sw		x5, -32(x2)	# 2294
	sw		x4, -36(x2)	# 2294
	sw		x14, -40(x2)	# 2294
	sw		x10, -44(x2)	# 2294
	ble		x16, x4, ble_cont.37280	# 2294
	add		x16, x4, x15	# 2295
	lui		x17, 70632	# 2255
	ori		x17, x0, 70632	# 2255
	mul		x18, x30, x14	# 2255
	add		x17, x17, x18	# 2255
	flw		f1, 0(x17)	# 2255
	lui		x17, 70624	# 2255
	ori		x17, x0, 70624	# 2255
	mul		x18, x30, x15	# 2255
	add		x17, x17, x18	# 2255
	lw		x17, 0(x17)	# 2255
	sub		x16, x16, x17	# 2255
	sw		x11, -48(x2)	# 2255
	fsw		f1, -52(x2)	# 2255
	addi	x4, x16, 0
	sw		x1, -56(x2)	# 2255
	addi	x2, x2, -60	# 2255
	jal		x1, min_caml_float_of_int	# 2255
	addi	x2, x2, 60	# 2255
	lw		x1, -56(x2)	# 2255
	flw		f2, -52(x2)	# 2255
	fmul	f1, f2, f1	# 2255
	lui		x4, 70672	# 2258
	ori		x4, x0, 70672	# 2258
	lw		x5, -40(x2)	# 2258
	mul		x6, x30, x5	# 2258
	add		x4, x4, x6	# 2258
	flw		f2, 0(x4)	# 2258
	fmul	f2, f1, f2	# 2258
	lui		x4, 70684	# 2258
	ori		x4, x0, 70684	# 2258
	mul		x6, x30, x5	# 2258
	add		x4, x4, x6	# 2258
	flw		f3, 0(x4)	# 2258
	fadd	f2, f2, f3	# 2258
	lui		x4, 70672	# 2259
	ori		x4, x0, 70672	# 2259
	lw		x6, -16(x2)	# 2259
	mul		x7, x30, x6	# 2259
	add		x4, x4, x7	# 2259
	flw		f3, 0(x4)	# 2259
	fmul	f3, f1, f3	# 2259
	lui		x4, 70684	# 2259
	ori		x4, x0, 70684	# 2259
	mul		x7, x30, x6	# 2259
	add		x4, x4, x7	# 2259
	flw		f4, 0(x4)	# 2259
	fadd	f3, f3, f4	# 2259
	lui		x4, 70672	# 2260
	ori		x4, x0, 70672	# 2260
	lw		x7, -8(x2)	# 2260
	mul		x8, x30, x7	# 2260
	add		x4, x4, x8	# 2260
	flw		f4, 0(x4)	# 2260
	fmul	f1, f1, f4	# 2260
	lui		x4, 70684	# 2260
	ori		x4, x0, 70684	# 2260
	mul		x8, x30, x7	# 2260
	add		x4, x4, x8	# 2260
	flw		f4, 0(x4)	# 2260
	fadd	f1, f1, f4	# 2260
	lui		x4, 70616	# 2261
	ori		x4, x0, 70616	# 2261
	mul		x8, x30, x5	# 2261
	add		x4, x4, x8	# 2261
	lw		x4, 0(x4)	# 2261
	sub		x4, x4, x6	# 2261
	lw		x8, -24(x2)	# 2261
	lw		x9, -12(x2)	# 2261
	lw		x29, -48(x2)	# 2261
	addi	x6, x9, 0
	addi	x5, x4, 0
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
ble_cont.37280:
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
	ble		x6, x5, ble.37282	# 262
	addi	x8, x5, 0	# 262
	jal		x0, ble_cont.37281	# 262
ble.37282:
	sub		x8, x5, x6	# 262
ble_cont.37281:
	lw		x5, -28(x2)	# 2298
	lw		x6, -24(x2)	# 2298
	lw		x7, -32(x2)	# 2298
	lw		x9, -20(x2)	# 2298
	lw		x29, 0(x2)	# 2298
	lw		x31, 0(x29)	# 2298
	jalr	x0, x31, 0	# 2298
ble.37279:
	jalr	x0, x1, 0	# 2299
init_line_elements.2982.18875:
	lw		x6, 24(x29)	# 2334
	lw		x7, 20(x29)	# 2334
	lw		x8, 16(x29)	# 2334
	lw		x9, 12(x29)	# 2334
	lw		x10, 8(x29)	# 2334
	flw		f1, 4(x29)	# 2334
	ble		x9, x5, ble.37284	# 2334
	jalr	x0, x1, 0	# 2338
ble.37284:
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
	mul		x6, x30, x5	# 2312
	lw		x7, -68(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
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
	mul		x6, x30, x5	# 2314
	lw		x7, -68(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	addi	x4, x3, 0	# 2329
	addi	x3, x3, 32	# 2329
	sw		x7, 28(x4)	# 2329
	lw		x6, -64(x2)	# 2329
	sw		x6, 24(x4)	# 2329
	lw		x6, -60(x2)	# 2329
	sw		x6, 20(x4)	# 2329
	lw		x6, -56(x2)	# 2329
	sw		x6, 16(x4)	# 2329
	lw		x6, -52(x2)	# 2329
	sw		x6, 12(x4)	# 2329
	lw		x6, -48(x2)	# 2329
	sw		x6, 8(x4)	# 2329
	lw		x6, -40(x2)	# 2329
	sw		x6, 4(x4)	# 2329
	lw		x6, -36(x2)	# 2329
	sw		x6, 0(x4)	# 2329
	lw		x6, -8(x2)	# 2335
	mul		x7, x30, x6	# 2335
	lw		x8, -4(x2)	# 2335
	add		x7, x8, x7	# 2335
	sw		x4, 0(x7)	# 2335
	lw		x4, -20(x2)	# 2336
	sub		x6, x6, x4	# 2336
	lw		x7, -12(x2)	# 2334
	ble		x7, x6, ble.37285	# 2334
	addi	x4, x8, 0	# 2338
	jalr	x0, x1, 0	# 2338
ble.37285:
	flw		f1, -28(x2)	# 2321
	lw		x9, -32(x2)	# 2321
	sw		x6, -72(x2)	# 2321
	addi	x4, x9, 0
	sw		x1, -76(x2)	# 2321
	addi	x2, x2, -80	# 2321
	jal		x1, min_caml_create_float_array	# 2321
	addi	x2, x2, 80	# 2321
	lw		x1, -76(x2)	# 2321
	flw		f1, -28(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -76(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -80(x2)	# 2309
	addi	x2, x2, -84	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 84	# 2309
	lw		x1, -80(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -24(x2)	# 2310
	sw		x1, -80(x2)	# 2310
	addi	x2, x2, -84	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 84	# 2310
	lw		x1, -80(x2)	# 2310
	flw		f1, -28(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -80(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -84(x2)	# 2311
	addi	x2, x2, -88	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 88	# 2311
	lw		x1, -84(x2)	# 2311
	lw		x5, -20(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -80(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -28(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -84(x2)	# 2312
	addi	x2, x2, -88	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 88	# 2312
	lw		x1, -84(x2)	# 2312
	lw		x5, -16(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -80(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -28(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -84(x2)	# 2313
	addi	x2, x2, -88	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 88	# 2313
	lw		x1, -84(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -80(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -28(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -84(x2)	# 2314
	addi	x2, x2, -88	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 88	# 2314
	lw		x1, -84(x2)	# 2314
	lw		x5, -44(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -80(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -24(x2)	# 2323
	lw		x6, -12(x2)	# 2323
	addi	x5, x6, 0
	sw		x1, -84(x2)	# 2323
	addi	x2, x2, -88	# 2323
	jal		x1, min_caml_create_array	# 2323
	addi	x2, x2, 88	# 2323
	lw		x1, -84(x2)	# 2323
	lw		x5, -24(x2)	# 2324
	lw		x6, -12(x2)	# 2324
	sw		x4, -84(x2)	# 2324
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -88(x2)	# 2324
	addi	x2, x2, -92	# 2324
	jal		x1, min_caml_create_array	# 2324
	addi	x2, x2, 92	# 2324
	lw		x1, -88(x2)	# 2324
	flw		f1, -28(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -88(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -92(x2)	# 2309
	addi	x2, x2, -96	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 96	# 2309
	lw		x1, -92(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -24(x2)	# 2310
	sw		x1, -92(x2)	# 2310
	addi	x2, x2, -96	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 96	# 2310
	lw		x1, -92(x2)	# 2310
	flw		f1, -28(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -92(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -96(x2)	# 2311
	addi	x2, x2, -100	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 100	# 2311
	lw		x1, -96(x2)	# 2311
	lw		x5, -20(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -92(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -28(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -96(x2)	# 2312
	addi	x2, x2, -100	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 100	# 2312
	lw		x1, -96(x2)	# 2312
	lw		x5, -16(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -92(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -28(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -96(x2)	# 2313
	addi	x2, x2, -100	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 100	# 2313
	lw		x1, -96(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -92(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -28(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -96(x2)	# 2314
	addi	x2, x2, -100	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 100	# 2314
	lw		x1, -96(x2)	# 2314
	lw		x5, -44(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -92(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	flw		f1, -28(x2)	# 2309
	lw		x4, -32(x2)	# 2309
	sw		x1, -96(x2)	# 2309
	addi	x2, x2, -100	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 100	# 2309
	lw		x1, -96(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -24(x2)	# 2310
	sw		x1, -96(x2)	# 2310
	addi	x2, x2, -100	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 100	# 2310
	lw		x1, -96(x2)	# 2310
	flw		f1, -28(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -96(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -100(x2)	# 2311
	addi	x2, x2, -104	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 104	# 2311
	lw		x1, -100(x2)	# 2311
	lw		x5, -20(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -96(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -28(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -100(x2)	# 2312
	addi	x2, x2, -104	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 104	# 2312
	lw		x1, -100(x2)	# 2312
	lw		x5, -16(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -96(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -28(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -100(x2)	# 2313
	addi	x2, x2, -104	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 104	# 2313
	lw		x1, -100(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -96(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -28(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -100(x2)	# 2314
	addi	x2, x2, -104	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 104	# 2314
	lw		x1, -100(x2)	# 2314
	lw		x5, -44(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -96(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -20(x2)	# 2327
	lw		x6, -12(x2)	# 2327
	addi	x5, x6, 0
	sw		x1, -100(x2)	# 2327
	addi	x2, x2, -104	# 2327
	jal		x1, min_caml_create_array	# 2327
	addi	x2, x2, 104	# 2327
	lw		x1, -100(x2)	# 2327
	flw		f1, -28(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -100(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -104(x2)	# 2309
	addi	x2, x2, -108	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 108	# 2309
	lw		x1, -104(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -24(x2)	# 2310
	sw		x1, -104(x2)	# 2310
	addi	x2, x2, -108	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 108	# 2310
	lw		x1, -104(x2)	# 2310
	flw		f1, -28(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -104(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -108(x2)	# 2311
	addi	x2, x2, -112	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 112	# 2311
	lw		x1, -108(x2)	# 2311
	lw		x5, -20(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -104(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -28(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -108(x2)	# 2312
	addi	x2, x2, -112	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 112	# 2312
	lw		x1, -108(x2)	# 2312
	lw		x5, -16(x2)	# 2312
	mul		x5, x30, x5	# 2312
	lw		x6, -104(x2)	# 2312
	add		x5, x6, x5	# 2312
	sw		x4, 0(x5)	# 2312
	flw		f1, -28(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -108(x2)	# 2313
	addi	x2, x2, -112	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 112	# 2313
	lw		x1, -108(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -104(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -28(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -108(x2)	# 2314
	addi	x2, x2, -112	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 112	# 2314
	lw		x1, -108(x2)	# 2314
	lw		x5, -44(x2)	# 2314
	mul		x5, x30, x5	# 2314
	lw		x6, -104(x2)	# 2314
	add		x5, x6, x5	# 2314
	sw		x4, 0(x5)	# 2314
	addi	x4, x3, 0	# 2329
	addi	x3, x3, 32	# 2329
	sw		x6, 28(x4)	# 2329
	lw		x5, -100(x2)	# 2329
	sw		x5, 24(x4)	# 2329
	lw		x5, -96(x2)	# 2329
	sw		x5, 20(x4)	# 2329
	lw		x5, -92(x2)	# 2329
	sw		x5, 16(x4)	# 2329
	lw		x5, -88(x2)	# 2329
	sw		x5, 12(x4)	# 2329
	lw		x5, -84(x2)	# 2329
	sw		x5, 8(x4)	# 2329
	lw		x5, -80(x2)	# 2329
	sw		x5, 4(x4)	# 2329
	lw		x5, -76(x2)	# 2329
	sw		x5, 0(x4)	# 2329
	lw		x5, -72(x2)	# 2335
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
calc_dirvec.2992.18878:
	lw		x7, 40(x29)	# 2371
	flw		f5, 36(x29)	# 2371
	flw		f6, 32(x29)	# 2371
	lw		x8, 28(x29)	# 2371
	lw		x9, 24(x29)	# 2371
	lw		x10, 20(x29)	# 2371
	lw		x11, 16(x29)	# 2371
	lw		x12, 12(x29)	# 2371
	lw		x13, 8(x29)	# 2371
	flw		f7, 4(x29)	# 2371
	ble		x10, x4, ble.37286	# 2371
	fmul	f1, f2, f2	# 2362
	lui		x10, %hi(l.29684)	# 2362
	ori		x10, x0, %lo(l.29684)	# 2362
	flw		f2, 0(x10)	# 2362
	fadd	f1, f1, f2	# 2362
	fsqrt	f1, f1	# 2362
	fadd	f8, f0, f16	# 2363
	fdiv	f9, f8, f1	# 2363
	sw		x6, 0(x2)	# 2364
	sw		x5, -4(x2)	# 2364
	sw		x29, -8(x2)	# 2364
	fsw		f4, -12(x2)	# 2364
	sw		x9, -16(x2)	# 2364
	fsw		f2, -20(x2)	# 2364
	sw		x13, -24(x2)	# 2364
	sw		x4, -28(x2)	# 2364
	fsw		f1, -32(x2)	# 2364
	sw		x8, -36(x2)	# 2364
	fsw		f6, -40(x2)	# 2364
	fsw		f8, -44(x2)	# 2364
	fsw		f5, -48(x2)	# 2364
	fsw		f7, -52(x2)	# 2364
	sw		x7, -56(x2)	# 2364
	fsw		f3, -60(x2)	# 2364
	addi	x29, x9, 0
	fadd	f1, f0, f9
	sw		x1, -64(x2)	# 2364
	addi	x2, x2, -68	# 2364
	lw		x31, 0(x29)	# 2364
	jalr	x1, x31, 0	# 2364
	addi	x2, x2, 68	# 2364
	lw		x1, -64(x2)	# 2364
	flw		f2, -60(x2)	# 2365
	fmul	f1, f1, f2	# 2365
	lw		x29, -56(x2)	# 2357
	fsw		f1, -64(x2)	# 2357
	sw		x1, -68(x2)	# 2357
	addi	x2, x2, -72	# 2357
	lw		x31, 0(x29)	# 2357
	jalr	x1, x31, 0	# 2357
	addi	x2, x2, 72	# 2357
	lw		x1, -68(x2)	# 2357
	flw		f2, -64(x2)	# 207
	flw		f3, -52(x2)	# 207
	fsw		f1, -68(x2)	# 207
	fle		x31, f3, f2	# 207
	beq		x31, x0, fle_else.37288	# 207
	flw		f4, -48(x2)	# 208
	fle		x31, f2, f4	# 208
	beq		x31, x0, fle_else.37290	# 208
	fmul	f2, f2, f2	# 194
	fmul	f5, f2, f2	# 195
	fadd	f6, f0, f26	# 196
	fmul	f6, f6, f2	# 196
	flw		f7, -44(x2)	# 196
	fsub	f6, f7, f6	# 196
	lui		x4, %hi(l.27762)	# 196
	ori		x4, x0, %lo(l.27762)	# 196
	flw		f8, 0(x4)	# 196
	fmul	f8, f8, f5	# 196
	fadd	f6, f6, f8	# 196
	lui		x4, %hi(l.27764)	# 196
	ori		x4, x0, %lo(l.27764)	# 196
	flw		f8, 0(x4)	# 196
	fmul	f2, f8, f2	# 196
	fmul	f2, f2, f5	# 196
	fsub	f1, f6, f2	# 196
	jal		x0, fle_cont.37289	# 208
fle_else.37290:
	flw		f5, -40(x2)	# 208
	fsub	f2, f5, f2	# 208
	lw		x29, -56(x2)	# 208
	fadd	f1, f0, f2
	sw		x1, -72(x2)	# 208
	addi	x2, x2, -76	# 208
	lw		x31, 0(x29)	# 208
	jalr	x1, x31, 0	# 208
	addi	x2, x2, 76	# 208
	lw		x1, -72(x2)	# 208
fle_cont.37289:
	jal		x0, fle_cont.37287	# 207
fle_else.37288:
	fsub	f2, f0, f2	# 207
	lw		x29, -36(x2)	# 207
	fadd	f1, f0, f2
	sw		x1, -72(x2)	# 207
	addi	x2, x2, -76	# 207
	lw		x31, 0(x29)	# 207
	jalr	x1, x31, 0	# 207
	addi	x2, x2, 76	# 207
	lw		x1, -72(x2)	# 207
fle_cont.37287:
	flw		f2, -68(x2)	# 2357
	fdiv	f1, f2, f1	# 2357
	flw		f2, -32(x2)	# 2366
	fmul	f1, f1, f2	# 2366
	lw		x4, -24(x2)	# 2387
	lw		x5, -28(x2)	# 2387
	add		x4, x5, x4	# 2387
	fmul	f2, f1, f1	# 2362
	flw		f3, -20(x2)	# 2362
	fadd	f2, f2, f3	# 2362
	fsqrt	f2, f2	# 2362
	flw		f3, -44(x2)	# 2363
	fdiv	f4, f3, f2	# 2363
	lw		x29, -16(x2)	# 2364
	fsw		f1, -72(x2)	# 2364
	sw		x4, -76(x2)	# 2364
	fsw		f2, -80(x2)	# 2364
	fadd	f1, f0, f4
	sw		x1, -84(x2)	# 2364
	addi	x2, x2, -88	# 2364
	lw		x31, 0(x29)	# 2364
	jalr	x1, x31, 0	# 2364
	addi	x2, x2, 88	# 2364
	lw		x1, -84(x2)	# 2364
	flw		f2, -12(x2)	# 2365
	fmul	f1, f1, f2	# 2365
	lw		x29, -56(x2)	# 2357
	fsw		f1, -84(x2)	# 2357
	sw		x1, -88(x2)	# 2357
	addi	x2, x2, -92	# 2357
	lw		x31, 0(x29)	# 2357
	jalr	x1, x31, 0	# 2357
	addi	x2, x2, 92	# 2357
	lw		x1, -88(x2)	# 2357
	flw		f2, -84(x2)	# 207
	flw		f3, -52(x2)	# 207
	fsw		f1, -88(x2)	# 207
	fle		x31, f3, f2	# 207
	beq		x31, x0, fle_else.37292	# 207
	flw		f3, -48(x2)	# 208
	fle		x31, f2, f3	# 208
	beq		x31, x0, fle_else.37294	# 208
	fmul	f2, f2, f2	# 194
	fmul	f3, f2, f2	# 195
	fadd	f4, f0, f26	# 196
	fmul	f4, f4, f2	# 196
	flw		f5, -44(x2)	# 196
	fsub	f4, f5, f4	# 196
	lui		x4, %hi(l.27762)	# 196
	ori		x4, x0, %lo(l.27762)	# 196
	flw		f5, 0(x4)	# 196
	fmul	f5, f5, f3	# 196
	fadd	f4, f4, f5	# 196
	lui		x4, %hi(l.27764)	# 196
	ori		x4, x0, %lo(l.27764)	# 196
	flw		f5, 0(x4)	# 196
	fmul	f2, f5, f2	# 196
	fmul	f2, f2, f3	# 196
	fsub	f1, f4, f2	# 196
	jal		x0, fle_cont.37293	# 208
fle_else.37294:
	flw		f3, -40(x2)	# 208
	fsub	f2, f3, f2	# 208
	lw		x29, -56(x2)	# 208
	fadd	f1, f0, f2
	sw		x1, -92(x2)	# 208
	addi	x2, x2, -96	# 208
	lw		x31, 0(x29)	# 208
	jalr	x1, x31, 0	# 208
	addi	x2, x2, 96	# 208
	lw		x1, -92(x2)	# 208
fle_cont.37293:
	jal		x0, fle_cont.37291	# 207
fle_else.37292:
	fsub	f2, f0, f2	# 207
	lw		x29, -36(x2)	# 207
	fadd	f1, f0, f2
	sw		x1, -92(x2)	# 207
	addi	x2, x2, -96	# 207
	lw		x31, 0(x29)	# 207
	jalr	x1, x31, 0	# 207
	addi	x2, x2, 96	# 207
	lw		x1, -92(x2)	# 207
fle_cont.37291:
	flw		f2, -88(x2)	# 2357
	fdiv	f1, f2, f1	# 2357
	flw		f2, -80(x2)	# 2366
	fmul	f2, f1, f2	# 2366
	flw		f1, -72(x2)	# 2387
	flw		f3, -60(x2)	# 2387
	flw		f4, -12(x2)	# 2387
	lw		x4, -76(x2)	# 2387
	lw		x5, -4(x2)	# 2387
	lw		x6, 0(x2)	# 2387
	lw		x29, -8(x2)	# 2387
	lw		x31, 0(x29)	# 2387
	jalr	x0, x31, 0	# 2387
ble.37286:
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 2372
	fadd	f4, f0, f16	# 2372
	fadd	f3, f3, f4	# 2372
	fsqrt	f3, f3	# 2372
	fdiv	f1, f1, f3	# 2373
	fdiv	f2, f2, f3	# 2374
	fdiv	f3, f4, f3	# 2375
	lui		x4, 70716	# 2378
	ori		x4, x0, 70716	# 2378
	mul		x5, x30, x5	# 2378
	add		x4, x4, x5	# 2378
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
calc_dirvecs.3000.18886:
	lw		x7, 24(x29)	# 2392
	lw		x8, 20(x29)	# 2392
	lw		x9, 16(x29)	# 2392
	lw		x10, 12(x29)	# 2392
	lw		x11, 8(x29)	# 2392
	flw		f2, 4(x29)	# 2392
	ble		x10, x4, ble.37296	# 2392
	jalr	x0, x1, 0	# 2401
ble.37296:
	sw		x29, 0(x2)	# 2394
	sw		x8, -4(x2)	# 2394
	sw		x11, -8(x2)	# 2394
	sw		x9, -12(x2)	# 2394
	sw		x4, -16(x2)	# 2394
	fsw		f1, -20(x2)	# 2394
	fsw		f2, -24(x2)	# 2394
	sw		x6, -28(x2)	# 2394
	sw		x5, -32(x2)	# 2394
	sw		x10, -36(x2)	# 2394
	sw		x7, -40(x2)	# 2394
	sw		x1, -44(x2)	# 2394
	addi	x2, x2, -48	# 2394
	jal		x1, min_caml_float_of_int	# 2394
	addi	x2, x2, 48	# 2394
	lw		x1, -44(x2)	# 2394
	lui		x4, %hi(l.27781)	# 2394
	ori		x4, x0, %lo(l.27781)	# 2394
	flw		f2, 0(x4)	# 2394
	fmul	f1, f1, f2	# 2394
	lui		x4, %hi(l.30772)	# 2394
	ori		x4, x0, %lo(l.30772)	# 2394
	flw		f3, 0(x4)	# 2394
	fsub	f3, f1, f3	# 2394
	flw		f1, -24(x2)	# 2395
	flw		f4, -20(x2)	# 2395
	lw		x4, -36(x2)	# 2395
	lw		x5, -32(x2)	# 2395
	lw		x6, -28(x2)	# 2395
	lw		x29, -40(x2)	# 2395
	fsw		f2, -44(x2)	# 2395
	fadd	f2, f0, f1
	sw		x1, -48(x2)	# 2395
	addi	x2, x2, -52	# 2395
	lw		x31, 0(x29)	# 2395
	jalr	x1, x31, 0	# 2395
	addi	x2, x2, 52	# 2395
	lw		x1, -48(x2)	# 2395
	lw		x4, -16(x2)	# 2397
	sw		x1, -48(x2)	# 2397
	addi	x2, x2, -52	# 2397
	jal		x1, min_caml_float_of_int	# 2397
	addi	x2, x2, 52	# 2397
	lw		x1, -48(x2)	# 2397
	flw		f2, -44(x2)	# 2397
	fmul	f1, f1, f2	# 2397
	lui		x4, %hi(l.29684)	# 2397
	ori		x4, x0, %lo(l.29684)	# 2397
	flw		f2, 0(x4)	# 2397
	fadd	f3, f1, f2	# 2397
	lw		x4, -12(x2)	# 2398
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
	lw		x5, -16(x2)	# 2400
	sub		x5, x5, x4	# 2400
	lw		x6, -32(x2)	# 261
	add		x4, x6, x4	# 261
	lw		x6, -4(x2)	# 262
	ble		x6, x4, ble.37299	# 262
	jal		x0, ble_cont.37298	# 262
ble.37299:
	sub		x4, x4, x6	# 262
ble_cont.37298:
	flw		f1, -20(x2)	# 2400
	lw		x6, -28(x2)	# 2400
	lw		x29, 0(x2)	# 2400
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	lw		x31, 0(x29)	# 2400
	jalr	x0, x31, 0	# 2400
calc_dirvec_rows.3005.18891:
	lw		x7, 20(x29)	# 2406
	lw		x8, 16(x29)	# 2406
	lw		x9, 12(x29)	# 2406
	lw		x10, 8(x29)	# 2406
	lw		x11, 4(x29)	# 2406
	ble		x10, x4, ble.37300	# 2406
	jalr	x0, x1, 0	# 2410
ble.37300:
	sw		x29, 0(x2)	# 2407
	sw		x8, -4(x2)	# 2407
	sw		x9, -8(x2)	# 2407
	sw		x11, -12(x2)	# 2407
	sw		x4, -16(x2)	# 2407
	sw		x6, -20(x2)	# 2407
	sw		x5, -24(x2)	# 2407
	sw		x7, -28(x2)	# 2407
	sw		x1, -32(x2)	# 2407
	addi	x2, x2, -36	# 2407
	jal		x1, min_caml_float_of_int	# 2407
	addi	x2, x2, 36	# 2407
	lw		x1, -32(x2)	# 2407
	lui		x4, %hi(l.27781)	# 2407
	ori		x4, x0, %lo(l.27781)	# 2407
	flw		f2, 0(x4)	# 2407
	fmul	f1, f1, f2	# 2407
	lui		x4, %hi(l.30772)	# 2407
	ori		x4, x0, %lo(l.30772)	# 2407
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
	ble		x6, x5, ble.37303	# 262
	jal		x0, ble_cont.37302	# 262
ble.37303:
	sub		x5, x5, x6	# 262
ble_cont.37302:
	lw		x6, -20(x2)	# 2409
	addi	x6, x6, 4	# 2409
	lw		x29, 0(x2)	# 2409
	lw		x31, 0(x29)	# 2409
	jalr	x0, x31, 0	# 2409
create_dirvec_elements.3011.18895:
	lw		x6, 16(x29)	# 2425
	lw		x7, 12(x29)	# 2425
	lw		x8, 8(x29)	# 2425
	flw		f1, 4(x29)	# 2425
	ble		x7, x5, ble.37304	# 2425
	jalr	x0, x1, 0	# 2428
ble.37304:
	sw		x29, 0(x2)	# 2419
	fsw		f1, -4(x2)	# 2419
	sw		x6, -8(x2)	# 2419
	sw		x8, -12(x2)	# 2419
	sw		x4, -16(x2)	# 2419
	sw		x5, -20(x2)	# 2419
	sw		x7, -24(x2)	# 2419
	addi	x4, x6, 0
	sw		x1, -28(x2)	# 2419
	addi	x2, x2, -32	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 32	# 2419
	lw		x1, -28(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lui		x4, 70000	# 2420
	ori		x4, x0, 70000	# 2420
	lw		x6, -24(x2)	# 2420
	mul		x7, x30, x6	# 2420
	add		x4, x4, x7	# 2420
	lw		x4, 0(x4)	# 2420
	sw		x5, -28(x2)	# 2420
	sw		x1, -32(x2)	# 2420
	addi	x2, x2, -36	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 36	# 2420
	lw		x1, -32(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -28(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	addi	x4, x5, 0	# 2421
	lw		x5, -20(x2)	# 2426
	mul		x6, x30, x5	# 2426
	lw		x7, -16(x2)	# 2426
	add		x6, x7, x6	# 2426
	sw		x4, 0(x6)	# 2426
	lw		x4, -12(x2)	# 2427
	sub		x5, x5, x4	# 2427
	lw		x6, -24(x2)	# 2425
	ble		x6, x5, ble.37306	# 2425
	jalr	x0, x1, 0	# 2428
ble.37306:
	flw		f1, -4(x2)	# 2419
	lw		x8, -8(x2)	# 2419
	sw		x5, -32(x2)	# 2419
	addi	x4, x8, 0
	sw		x1, -36(x2)	# 2419
	addi	x2, x2, -40	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 40	# 2419
	lw		x1, -36(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lui		x4, 70000	# 2420
	ori		x4, x0, 70000	# 2420
	lw		x6, -24(x2)	# 2420
	mul		x6, x30, x6	# 2420
	add		x4, x4, x6	# 2420
	lw		x4, 0(x4)	# 2420
	sw		x5, -36(x2)	# 2420
	sw		x1, -40(x2)	# 2420
	addi	x2, x2, -44	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 44	# 2420
	lw		x1, -40(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -36(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	addi	x4, x5, 0	# 2421
	lw		x5, -32(x2)	# 2426
	mul		x6, x30, x5	# 2426
	lw		x7, -16(x2)	# 2426
	add		x6, x7, x6	# 2426
	sw		x4, 0(x6)	# 2426
	lw		x4, -12(x2)	# 2427
	sub		x5, x5, x4	# 2427
	lw		x29, 0(x2)	# 2427
	addi	x4, x7, 0
	lw		x31, 0(x29)	# 2427
	jalr	x0, x31, 0	# 2427
create_dirvecs.3014.18898:
	lw		x5, 20(x29)	# 2432
	lw		x6, 16(x29)	# 2432
	lw		x7, 12(x29)	# 2432
	lw		x8, 8(x29)	# 2432
	flw		f1, 4(x29)	# 2432
	ble		x7, x4, ble.37308	# 2432
	jalr	x0, x1, 0	# 2436
ble.37308:
	addi	x9, x0, 120	# 2433
	sw		x29, 0(x2)	# 2419
	sw		x8, -4(x2)	# 2419
	sw		x5, -8(x2)	# 2419
	fsw		f1, -12(x2)	# 2419
	sw		x6, -16(x2)	# 2419
	sw		x4, -20(x2)	# 2419
	sw		x9, -24(x2)	# 2419
	sw		x7, -28(x2)	# 2419
	addi	x4, x6, 0
	sw		x1, -32(x2)	# 2419
	addi	x2, x2, -36	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 36	# 2419
	lw		x1, -32(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lui		x4, 70000	# 2420
	ori		x4, x0, 70000	# 2420
	lw		x6, -28(x2)	# 2420
	mul		x7, x30, x6	# 2420
	add		x4, x4, x7	# 2420
	lw		x4, 0(x4)	# 2420
	sw		x5, -32(x2)	# 2420
	sw		x1, -36(x2)	# 2420
	addi	x2, x2, -40	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 40	# 2420
	lw		x1, -36(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -32(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	lw		x4, -24(x2)	# 2433
	sw		x1, -36(x2)	# 2433
	addi	x2, x2, -40	# 2433
	jal		x1, min_caml_create_array	# 2433
	addi	x2, x2, 40	# 2433
	lw		x1, -36(x2)	# 2433
	lui		x5, 70716	# 2433
	ori		x5, x0, 70716	# 2433
	lw		x6, -20(x2)	# 2433
	mul		x7, x30, x6	# 2433
	add		x5, x5, x7	# 2433
	sw		x4, 0(x5)	# 2433
	lui		x4, 70716	# 2434
	ori		x4, x0, 70716	# 2434
	mul		x5, x30, x6	# 2434
	add		x4, x4, x5	# 2434
	lw		x4, 0(x4)	# 2434
	addi	x5, x0, 118	# 2434
	flw		f1, -12(x2)	# 2419
	lw		x7, -16(x2)	# 2419
	sw		x4, -36(x2)	# 2419
	sw		x5, -40(x2)	# 2419
	addi	x4, x7, 0
	sw		x1, -44(x2)	# 2419
	addi	x2, x2, -48	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 48	# 2419
	lw		x1, -44(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lui		x4, 70000	# 2420
	ori		x4, x0, 70000	# 2420
	lw		x6, -28(x2)	# 2420
	mul		x6, x30, x6	# 2420
	add		x4, x4, x6	# 2420
	lw		x4, 0(x4)	# 2420
	sw		x5, -44(x2)	# 2420
	sw		x1, -48(x2)	# 2420
	addi	x2, x2, -52	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 52	# 2420
	lw		x1, -48(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -44(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	addi	x4, x5, 0	# 2421
	lw		x5, -40(x2)	# 2426
	mul		x5, x30, x5	# 2426
	lw		x6, -36(x2)	# 2426
	add		x5, x6, x5	# 2426
	sw		x4, 0(x5)	# 2426
	addi	x5, x0, 117	# 2427
	lw		x29, -8(x2)	# 2427
	addi	x4, x6, 0
	sw		x1, -48(x2)	# 2427
	addi	x2, x2, -52	# 2427
	lw		x31, 0(x29)	# 2427
	jalr	x1, x31, 0	# 2427
	addi	x2, x2, 52	# 2427
	lw		x1, -48(x2)	# 2427
	lw		x4, -4(x2)	# 2435
	lw		x5, -20(x2)	# 2435
	sub		x4, x5, x4	# 2435
	lw		x29, 0(x2)	# 2435
	lw		x31, 0(x29)	# 2435
	jalr	x0, x31, 0	# 2435
init_dirvec_constants.3016.18900:
	lw		x6, 12(x29)	# 2444
	lw		x7, 8(x29)	# 2444
	lw		x8, 4(x29)	# 2444
	ble		x7, x5, ble.37310	# 2444
	jalr	x0, x1, 0	# 2447
ble.37310:
	mul		x9, x30, x5	# 2445
	add		x9, x4, x9	# 2445
	lw		x9, 0(x9)	# 2445
	lui		x10, 70000	# 1324
	ori		x10, x0, 70000	# 1324
	mul		x11, x30, x7	# 1324
	add		x10, x10, x11	# 1324
	lw		x10, 0(x10)	# 1324
	sub		x10, x10, x8	# 1324
	sw		x29, 0(x2)	# 1324
	sw		x6, -4(x2)	# 1324
	sw		x4, -8(x2)	# 1324
	sw		x7, -12(x2)	# 1324
	sw		x8, -16(x2)	# 1324
	sw		x5, -20(x2)	# 1324
	addi	x5, x10, 0
	addi	x4, x9, 0
	addi	x29, x6, 0
	sw		x1, -24(x2)	# 1324
	addi	x2, x2, -28	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 28	# 1324
	lw		x1, -24(x2)	# 1324
	lw		x4, -16(x2)	# 2446
	lw		x5, -20(x2)	# 2446
	sub		x5, x5, x4	# 2446
	lw		x6, -12(x2)	# 2444
	ble		x6, x5, ble.37312	# 2444
	jalr	x0, x1, 0	# 2447
ble.37312:
	mul		x7, x30, x5	# 2445
	lw		x8, -8(x2)	# 2445
	add		x7, x8, x7	# 2445
	lw		x7, 0(x7)	# 2445
	lui		x9, 70000	# 1324
	ori		x9, x0, 70000	# 1324
	mul		x6, x30, x6	# 1324
	add		x6, x9, x6	# 1324
	lw		x6, 0(x6)	# 1324
	sub		x6, x6, x4	# 1324
	lw		x29, -4(x2)	# 1324
	sw		x5, -24(x2)	# 1324
	addi	x5, x6, 0
	addi	x4, x7, 0
	sw		x1, -28(x2)	# 1324
	addi	x2, x2, -32	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 32	# 1324
	lw		x1, -28(x2)	# 1324
	lw		x4, -16(x2)	# 2446
	lw		x5, -24(x2)	# 2446
	sub		x5, x5, x4	# 2446
	lw		x4, -8(x2)	# 2446
	lw		x29, 0(x2)	# 2446
	lw		x31, 0(x29)	# 2446
	jalr	x0, x31, 0	# 2446
init_vecset_constants.3019.18903:
	lw		x5, 16(x29)	# 2451
	lw		x6, 12(x29)	# 2451
	lw		x7, 8(x29)	# 2451
	lw		x8, 4(x29)	# 2451
	ble		x7, x4, ble.37314	# 2451
	jalr	x0, x1, 0	# 2454
ble.37314:
	lui		x9, 70716	# 2452
	ori		x9, x0, 70716	# 2452
	mul		x10, x30, x4	# 2452
	add		x9, x9, x10	# 2452
	lw		x9, 0(x9)	# 2452
	addi	x10, x0, 119	# 2452
	mul		x11, x30, x10	# 2445
	add		x11, x9, x11	# 2445
	lw		x11, 0(x11)	# 2445
	lui		x12, 70000	# 1324
	ori		x12, x0, 70000	# 1324
	mul		x13, x30, x7	# 1324
	add		x12, x12, x13	# 1324
	lw		x12, 0(x12)	# 1324
	sub		x12, x12, x8	# 1324
	sw		x29, 0(x2)	# 1324
	sw		x10, -4(x2)	# 1324
	sw		x7, -8(x2)	# 1324
	sw		x8, -12(x2)	# 1324
	sw		x4, -16(x2)	# 1324
	sw		x9, -20(x2)	# 1324
	sw		x6, -24(x2)	# 1324
	addi	x4, x11, 0
	addi	x29, x5, 0
	addi	x5, x12, 0
	sw		x1, -28(x2)	# 1324
	addi	x2, x2, -32	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 32	# 1324
	lw		x1, -28(x2)	# 1324
	addi	x5, x0, 118	# 2446
	lw		x4, -20(x2)	# 2446
	lw		x29, -24(x2)	# 2446
	sw		x1, -28(x2)	# 2446
	addi	x2, x2, -32	# 2446
	lw		x31, 0(x29)	# 2446
	jalr	x1, x31, 0	# 2446
	addi	x2, x2, 32	# 2446
	lw		x1, -28(x2)	# 2446
	lw		x4, -12(x2)	# 2453
	lw		x5, -16(x2)	# 2453
	sub		x5, x5, x4	# 2453
	lw		x6, -8(x2)	# 2451
	ble		x6, x5, ble.37316	# 2451
	jalr	x0, x1, 0	# 2454
ble.37316:
	lui		x6, 70716	# 2452
	ori		x6, x0, 70716	# 2452
	mul		x7, x30, x5	# 2452
	add		x6, x6, x7	# 2452
	lw		x6, 0(x6)	# 2452
	lw		x7, -4(x2)	# 2452
	lw		x29, -24(x2)	# 2452
	sw		x5, -28(x2)	# 2452
	addi	x5, x7, 0
	addi	x4, x6, 0
	sw		x1, -32(x2)	# 2452
	addi	x2, x2, -36	# 2452
	lw		x31, 0(x29)	# 2452
	jalr	x1, x31, 0	# 2452
	addi	x2, x2, 36	# 2452
	lw		x1, -32(x2)	# 2452
	lw		x4, -12(x2)	# 2453
	lw		x5, -28(x2)	# 2453
	sub		x4, x5, x4	# 2453
	lw		x29, 0(x2)	# 2453
	lw		x31, 0(x29)	# 2453
	jalr	x0, x31, 0	# 2453
min_caml_start:
	addi	x2, x2, -4
	addi	x30, x0, 4
	lui		x3, 70000
	ori		x3, x0, 70000
	lui		x4, %hi(l.30823)
	ori		x4, x0, %lo(l.30823)
	flw		f0, 0(x4)
	lui		x4, %hi(l.27742)
	ori		x4, x0, %lo(l.27742)
	flw		f16, 0(x4)
	lui		x4, %hi(l.27751)
	ori		x4, x0, %lo(l.27751)
	flw		f17, 0(x4)
	lui		x4, %hi(l.27747)
	ori		x4, x0, %lo(l.27747)
	flw		f18, 0(x4)
	lui		x4, %hi(l.28352)
	ori		x4, x0, %lo(l.28352)
	flw		f19, 0(x4)
	lui		x4, %hi(l.28350)
	ori		x4, x0, %lo(l.28350)
	flw		f20, 0(x4)
	lui		x4, %hi(l.28471)
	ori		x4, x0, %lo(l.28471)
	flw		f21, 0(x4)
	lui		x4, %hi(l.29251)
	ori		x4, x0, %lo(l.29251)
	flw		f22, 0(x4)
	lui		x4, %hi(l.27740)
	ori		x4, x0, %lo(l.27740)
	flw		f23, 0(x4)
	lui		x4, %hi(l.29952)
	ori		x4, x0, %lo(l.29952)
	flw		f24, 0(x4)
	lui		x4, %hi(l.29737)
	ori		x4, x0, %lo(l.29737)
	flw		f25, 0(x4)
	lui		x4, %hi(l.27744)
	ori		x4, x0, %lo(l.27744)
	flw		f26, 0(x4)
	lui		x4, %hi(l.27749)
	ori		x4, x0, %lo(l.27749)
	flw		f27, 0(x4)
	lui		x4, %hi(l.27904)
	ori		x4, x0, %lo(l.27904)
	flw		f28, 0(x4)
	lui		x4, %hi(l.27812)
	ori		x4, x0, %lo(l.27812)
	flw		f29, 0(x4)
	lui		x4, %hi(l.31147)
	ori		x4, x0, %lo(l.31147)
	flw		f30, 0(x4)
	addi	x4, x0, 1	# 6
	addi	x5, x0, 0	# 6
	lui		x6, 70000	# 6
	ori		x6, x0, 70000	# 6
	sw		x6, 0(x2)	# 6
	sw		x4, -4(x2)	# 6
	sw		x5, -8(x2)	# 6
	sw		x1, -12(x2)	# 6
	addi	x2, x2, -16	# 6
	jal		x1, min_caml_create_array	# 6
	addi	x2, x2, 16	# 6
	lw		x1, -12(x2)	# 6
	fadd	f1, f0, f0	# 11
	lui		x4, 70004	# 11
	ori		x4, x0, 70004	# 11
	lw		x5, -8(x2)	# 11
	fsw		f1, -12(x2)	# 11
	sw		x4, -16(x2)	# 11
	addi	x4, x5, 0
	sw		x1, -20(x2)	# 11
	addi	x2, x2, -24	# 11
	jal		x1, min_caml_create_float_array	# 11
	addi	x2, x2, 24	# 11
	lw		x1, -20(x2)	# 11
	addi	x4, x0, 60	# 12
	addi	x5, x3, 0	# 12
	addi	x3, x3, 44	# 12
	lw		x6, -16(x2)	# 12
	sw		x6, 40(x5)	# 12
	sw		x6, 36(x5)	# 12
	sw		x6, 32(x5)	# 12
	sw		x6, 28(x5)	# 12
	lw		x7, -8(x2)	# 12
	sw		x7, 24(x5)	# 12
	sw		x6, 20(x5)	# 12
	sw		x6, 16(x5)	# 12
	sw		x7, 12(x5)	# 12
	sw		x7, 8(x5)	# 12
	sw		x7, 4(x5)	# 12
	sw		x7, 0(x5)	# 12
	lui		x6, 70048	# 12
	ori		x6, x0, 70048	# 12
	sw		x6, -20(x2)	# 12
	sw		x4, -24(x2)	# 12
	sw		x1, -28(x2)	# 12
	addi	x2, x2, -32	# 12
	jal		x1, min_caml_create_array	# 12
	addi	x2, x2, 32	# 12
	lw		x1, -28(x2)	# 12
	addi	x4, x0, 3	# 16
	lui		x5, 70288	# 16
	ori		x5, x0, 70288	# 16
	flw		f1, -12(x2)	# 16
	sw		x5, -28(x2)	# 16
	sw		x4, -32(x2)	# 16
	sw		x1, -36(x2)	# 16
	addi	x2, x2, -40	# 16
	jal		x1, min_caml_create_float_array	# 16
	addi	x2, x2, 40	# 16
	lw		x1, -36(x2)	# 16
	lui		x4, 70300	# 19
	ori		x4, x0, 70300	# 19
	flw		f1, -12(x2)	# 19
	lw		x5, -32(x2)	# 19
	sw		x4, -36(x2)	# 19
	addi	x4, x5, 0
	sw		x1, -40(x2)	# 19
	addi	x2, x2, -44	# 19
	jal		x1, min_caml_create_float_array	# 19
	addi	x2, x2, 44	# 19
	lw		x1, -40(x2)	# 19
	lui		x4, 70312	# 22
	ori		x4, x0, 70312	# 22
	flw		f1, -12(x2)	# 22
	lw		x5, -32(x2)	# 22
	sw		x4, -40(x2)	# 22
	addi	x4, x5, 0
	sw		x1, -44(x2)	# 22
	addi	x2, x2, -48	# 22
	jal		x1, min_caml_create_float_array	# 22
	addi	x2, x2, 48	# 22
	lw		x1, -44(x2)	# 22
	lui		x4, %hi(l.30837)	# 25
	ori		x4, x0, %lo(l.30837)	# 25
	flw		f1, 0(x4)	# 25
	lui		x4, 70324	# 25
	ori		x4, x0, 70324	# 25
	lw		x5, -4(x2)	# 25
	sw		x4, -44(x2)	# 25
	fsw		f1, -48(x2)	# 25
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 25
	addi	x2, x2, -56	# 25
	jal		x1, min_caml_create_float_array	# 25
	addi	x2, x2, 56	# 25
	lw		x1, -52(x2)	# 25
	addi	x4, x0, 50	# 28
	addi	x5, x0, -1	# 28
	lui		x6, 70328	# 28
	ori		x6, x0, 70328	# 28
	lw		x7, -4(x2)	# 28
	sw		x5, -52(x2)	# 28
	sw		x6, -56(x2)	# 28
	sw		x4, -60(x2)	# 28
	addi	x4, x7, 0
	sw		x1, -64(x2)	# 28
	addi	x2, x2, -68	# 28
	jal		x1, min_caml_create_array	# 28
	addi	x2, x2, 68	# 28
	lw		x1, -64(x2)	# 28
	lui		x4, 70332	# 28
	ori		x4, x0, 70332	# 28
	lw		x5, -60(x2)	# 28
	lw		x6, -56(x2)	# 28
	sw		x4, -64(x2)	# 28
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -68(x2)	# 28
	addi	x2, x2, -72	# 28
	jal		x1, min_caml_create_array	# 28
	addi	x2, x2, 72	# 28
	lw		x1, -68(x2)	# 28
	lw		x4, -8(x2)	# 31
	mul		x5, x30, x4	# 31
	lw		x6, -64(x2)	# 31
	add		x5, x6, x5	# 31
	lw		x5, 0(x5)	# 31
	lui		x6, 70532	# 31
	ori		x6, x0, 70532	# 31
	lw		x7, -4(x2)	# 31
	sw		x6, -68(x2)	# 31
	addi	x4, x7, 0
	sw		x1, -72(x2)	# 31
	addi	x2, x2, -76	# 31
	jal		x1, min_caml_create_array	# 31
	addi	x2, x2, 76	# 31
	lw		x1, -72(x2)	# 31
	lui		x4, 70536	# 31
	ori		x4, x0, 70536	# 31
	lw		x5, -4(x2)	# 31
	lw		x6, -68(x2)	# 31
	sw		x4, -72(x2)	# 31
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -76(x2)	# 31
	addi	x2, x2, -80	# 31
	jal		x1, min_caml_create_array	# 31
	addi	x2, x2, 80	# 31
	lw		x1, -76(x2)	# 31
	flw		f1, -12(x2)	# 36
	lw		x4, -4(x2)	# 36
	sw		x1, -76(x2)	# 36
	addi	x2, x2, -80	# 36
	jal		x1, min_caml_create_float_array	# 36
	addi	x2, x2, 80	# 36
	lw		x1, -76(x2)	# 36
	lw		x4, -4(x2)	# 39
	lw		x5, -8(x2)	# 39
	sw		x1, -76(x2)	# 39
	addi	x2, x2, -80	# 39
	jal		x1, min_caml_create_array	# 39
	addi	x2, x2, 80	# 39
	lw		x1, -76(x2)	# 39
	lui		x4, %hi(l.30841)	# 42
	ori		x4, x0, %lo(l.30841)	# 42
	flw		f1, 0(x4)	# 42
	lw		x4, -4(x2)	# 42
	fsw		f1, -76(x2)	# 42
	sw		x1, -80(x2)	# 42
	addi	x2, x2, -84	# 42
	jal		x1, min_caml_create_float_array	# 42
	addi	x2, x2, 84	# 42
	lw		x1, -80(x2)	# 42
	flw		f1, -12(x2)	# 45
	lw		x4, -32(x2)	# 45
	sw		x1, -80(x2)	# 45
	addi	x2, x2, -84	# 45
	jal		x1, min_caml_create_float_array	# 45
	addi	x2, x2, 84	# 45
	lw		x1, -80(x2)	# 45
	lw		x4, -4(x2)	# 48
	lw		x5, -8(x2)	# 48
	sw		x1, -80(x2)	# 48
	addi	x2, x2, -84	# 48
	jal		x1, min_caml_create_array	# 48
	addi	x2, x2, 84	# 48
	lw		x1, -80(x2)	# 48
	flw		f1, -12(x2)	# 51
	lw		x4, -32(x2)	# 51
	sw		x1, -80(x2)	# 51
	addi	x2, x2, -84	# 51
	jal		x1, min_caml_create_float_array	# 51
	addi	x2, x2, 84	# 51
	lw		x1, -80(x2)	# 51
	flw		f1, -12(x2)	# 54
	lw		x4, -32(x2)	# 54
	sw		x1, -80(x2)	# 54
	addi	x2, x2, -84	# 54
	jal		x1, min_caml_create_float_array	# 54
	addi	x2, x2, 84	# 54
	lw		x1, -80(x2)	# 54
	flw		f1, -12(x2)	# 58
	lw		x4, -32(x2)	# 58
	sw		x1, -80(x2)	# 58
	addi	x2, x2, -84	# 58
	jal		x1, min_caml_create_float_array	# 58
	addi	x2, x2, 84	# 58
	lw		x1, -80(x2)	# 58
	flw		f1, -12(x2)	# 61
	lw		x4, -32(x2)	# 61
	sw		x1, -80(x2)	# 61
	addi	x2, x2, -84	# 61
	jal		x1, min_caml_create_float_array	# 61
	addi	x2, x2, 84	# 61
	lw		x1, -80(x2)	# 61
	addi	x4, x0, 2	# 65
	lui		x5, 70616	# 65
	ori		x5, x0, 70616	# 65
	lw		x6, -8(x2)	# 65
	sw		x5, -80(x2)	# 65
	sw		x4, -84(x2)	# 65
	addi	x5, x6, 0
	sw		x1, -88(x2)	# 65
	addi	x2, x2, -92	# 65
	jal		x1, min_caml_create_array	# 65
	addi	x2, x2, 92	# 65
	lw		x1, -88(x2)	# 65
	lui		x4, 70624	# 68
	ori		x4, x0, 70624	# 68
	lw		x5, -84(x2)	# 68
	lw		x6, -8(x2)	# 68
	sw		x4, -88(x2)	# 68
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -92(x2)	# 68
	addi	x2, x2, -96	# 68
	jal		x1, min_caml_create_array	# 68
	addi	x2, x2, 96	# 68
	lw		x1, -92(x2)	# 68
	lui		x4, 70632	# 71
	ori		x4, x0, 70632	# 71
	flw		f1, -12(x2)	# 71
	lw		x5, -4(x2)	# 71
	sw		x4, -92(x2)	# 71
	addi	x4, x5, 0
	sw		x1, -96(x2)	# 71
	addi	x2, x2, -100	# 71
	jal		x1, min_caml_create_float_array	# 71
	addi	x2, x2, 100	# 71
	lw		x1, -96(x2)	# 71
	flw		f1, -12(x2)	# 75
	lw		x4, -32(x2)	# 75
	sw		x1, -96(x2)	# 75
	addi	x2, x2, -100	# 75
	jal		x1, min_caml_create_float_array	# 75
	addi	x2, x2, 100	# 75
	lw		x1, -96(x2)	# 75
	flw		f1, -12(x2)	# 78
	lw		x4, -32(x2)	# 78
	sw		x1, -96(x2)	# 78
	addi	x2, x2, -100	# 78
	jal		x1, min_caml_create_float_array	# 78
	addi	x2, x2, 100	# 78
	lw		x1, -96(x2)	# 78
	lui		x4, 70660	# 82
	ori		x4, x0, 70660	# 82
	flw		f1, -12(x2)	# 82
	lw		x5, -32(x2)	# 82
	sw		x4, -96(x2)	# 82
	addi	x4, x5, 0
	sw		x1, -100(x2)	# 82
	addi	x2, x2, -104	# 82
	jal		x1, min_caml_create_float_array	# 82
	addi	x2, x2, 104	# 82
	lw		x1, -100(x2)	# 82
	lui		x4, 70672	# 84
	ori		x4, x0, 70672	# 84
	flw		f1, -12(x2)	# 84
	lw		x5, -32(x2)	# 84
	sw		x4, -100(x2)	# 84
	addi	x4, x5, 0
	sw		x1, -104(x2)	# 84
	addi	x2, x2, -108	# 84
	jal		x1, min_caml_create_float_array	# 84
	addi	x2, x2, 108	# 84
	lw		x1, -104(x2)	# 84
	lui		x4, 70684	# 86
	ori		x4, x0, 70684	# 86
	flw		f1, -12(x2)	# 86
	lw		x5, -32(x2)	# 86
	sw		x4, -104(x2)	# 86
	addi	x4, x5, 0
	sw		x1, -108(x2)	# 86
	addi	x2, x2, -112	# 86
	jal		x1, min_caml_create_float_array	# 86
	addi	x2, x2, 112	# 86
	lw		x1, -108(x2)	# 86
	flw		f1, -12(x2)	# 90
	lw		x4, -32(x2)	# 90
	sw		x1, -108(x2)	# 90
	addi	x2, x2, -112	# 90
	jal		x1, min_caml_create_float_array	# 90
	addi	x2, x2, 112	# 90
	lw		x1, -108(x2)	# 90
	lui		x4, 70708	# 95
	ori		x4, x0, 70708	# 95
	flw		f1, -12(x2)	# 95
	lw		x5, -8(x2)	# 95
	sw		x4, -108(x2)	# 95
	addi	x4, x5, 0
	sw		x1, -112(x2)	# 95
	addi	x2, x2, -116	# 95
	jal		x1, min_caml_create_float_array	# 95
	addi	x2, x2, 116	# 95
	lw		x1, -112(x2)	# 95
	lui		x4, 70708	# 96
	ori		x4, x0, 70708	# 96
	lw		x5, -8(x2)	# 96
	lw		x6, -108(x2)	# 96
	sw		x4, -112(x2)	# 96
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -116(x2)	# 96
	addi	x2, x2, -120	# 96
	jal		x1, min_caml_create_array	# 96
	addi	x2, x2, 120	# 96
	lw		x1, -116(x2)	# 96
	addi	x4, x3, 0	# 97
	addi	x3, x3, 8	# 97
	lw		x5, -112(x2)	# 97
	sw		x5, 4(x4)	# 97
	lw		x5, -108(x2)	# 97
	sw		x5, 0(x4)	# 97
	addi	x5, x4, 0	# 97
	lui		x4, 70716	# 97
	ori		x4, x0, 70716	# 97
	lw		x6, -8(x2)	# 97
	sw		x4, -116(x2)	# 97
	addi	x4, x6, 0
	sw		x1, -120(x2)	# 97
	addi	x2, x2, -124	# 97
	jal		x1, min_caml_create_array	# 97
	addi	x2, x2, 124	# 97
	lw		x1, -120(x2)	# 97
	addi	x4, x0, 5	# 98
	lui		x5, 70716	# 98
	ori		x5, x0, 70716	# 98
	lw		x6, -116(x2)	# 98
	sw		x5, -120(x2)	# 98
	sw		x4, -124(x2)	# 98
	addi	x5, x6, 0
	sw		x1, -128(x2)	# 98
	addi	x2, x2, -132	# 98
	jal		x1, min_caml_create_array	# 98
	addi	x2, x2, 132	# 98
	lw		x1, -128(x2)	# 98
	lui		x4, 70736	# 103
	ori		x4, x0, 70736	# 103
	flw		f1, -12(x2)	# 103
	lw		x5, -8(x2)	# 103
	sw		x4, -128(x2)	# 103
	addi	x4, x5, 0
	sw		x1, -132(x2)	# 103
	addi	x2, x2, -136	# 103
	jal		x1, min_caml_create_float_array	# 103
	addi	x2, x2, 136	# 103
	lw		x1, -132(x2)	# 103
	lui		x4, 70736	# 104
	ori		x4, x0, 70736	# 104
	flw		f1, -12(x2)	# 104
	lw		x5, -32(x2)	# 104
	sw		x4, -132(x2)	# 104
	addi	x4, x5, 0
	sw		x1, -136(x2)	# 104
	addi	x2, x2, -140	# 104
	jal		x1, min_caml_create_float_array	# 104
	addi	x2, x2, 140	# 104
	lw		x1, -136(x2)	# 104
	lui		x4, 70748	# 105
	ori		x4, x0, 70748	# 105
	lw		x5, -24(x2)	# 105
	lw		x6, -128(x2)	# 105
	sw		x4, -136(x2)	# 105
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -140(x2)	# 105
	addi	x2, x2, -144	# 105
	jal		x1, min_caml_create_array	# 105
	addi	x2, x2, 144	# 105
	lw		x1, -140(x2)	# 105
	addi	x4, x3, 0	# 106
	addi	x3, x3, 8	# 106
	lw		x5, -136(x2)	# 106
	sw		x5, 4(x4)	# 106
	lw		x5, -132(x2)	# 106
	sw		x5, 0(x4)	# 106
	lui		x6, 70996	# 111
	ori		x6, x0, 70996	# 111
	flw		f1, -12(x2)	# 111
	lw		x7, -8(x2)	# 111
	sw		x4, -140(x2)	# 111
	sw		x6, -144(x2)	# 111
	addi	x4, x7, 0
	sw		x1, -148(x2)	# 111
	addi	x2, x2, -152	# 111
	jal		x1, min_caml_create_float_array	# 111
	addi	x2, x2, 152	# 111
	lw		x1, -148(x2)	# 111
	lui		x4, 70996	# 112
	ori		x4, x0, 70996	# 112
	lw		x5, -8(x2)	# 112
	lw		x6, -144(x2)	# 112
	sw		x4, -148(x2)	# 112
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -152(x2)	# 112
	addi	x2, x2, -156	# 112
	jal		x1, min_caml_create_array	# 112
	addi	x2, x2, 156	# 112
	lw		x1, -152(x2)	# 112
	addi	x4, x3, 0	# 113
	addi	x3, x3, 8	# 113
	lw		x5, -148(x2)	# 113
	sw		x5, 4(x4)	# 113
	lw		x5, -144(x2)	# 113
	sw		x5, 0(x4)	# 113
	addi	x5, x0, 180	# 114
	addi	x6, x3, 0	# 114
	addi	x3, x3, 12	# 114
	flw		f1, -12(x2)	# 114
	fsw		f1, 8(x6)	# 114
	sw		x4, 4(x6)	# 114
	lw		x4, -8(x2)	# 114
	sw		x4, 0(x6)	# 114
	lui		x7, 71016	# 114
	ori		x7, x0, 71016	# 114
	sw		x7, -152(x2)	# 114
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -156(x2)	# 114
	addi	x2, x2, -160	# 114
	jal		x1, min_caml_create_array	# 114
	addi	x2, x2, 160	# 114
	lw		x1, -156(x2)	# 114
	lui		x4, 71736	# 118
	ori		x4, x0, 71736	# 118
	lw		x5, -4(x2)	# 118
	lw		x6, -8(x2)	# 118
	sw		x4, -156(x2)	# 118
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -160(x2)	# 118
	addi	x2, x2, -164	# 118
	jal		x1, min_caml_create_array	# 118
	addi	x2, x2, 164	# 118
	lw		x1, -160(x2)	# 118
	addi	x4, x3, 0	# 144
	addi	x3, x3, 8	# 144
	lui		x5, %hi(int_of_float_rem.2530.18756)	# 144
	ori		x5, x0, %lo(int_of_float_rem.2530.18756)	# 144
	sw		x5, 0(x4)	# 149
	lw		x5, -4(x2)	# 149
	sw		x5, 4(x4)	# 149
	addi	x6, x3, 0	# 149
	addi	x3, x3, 8	# 149
	lui		x7, %hi(int_of_float_four.2533.18759)	# 149
	ori		x7, x0, %lo(int_of_float_four.2533.18759)	# 149
	sw		x7, 0(x6)	# 173
	sw		x4, 4(x6)	# 173
	lui		x4, %hi(l.30856)	# 173
	ori		x4, x0, %lo(l.30856)	# 173
	flw		f1, 0(x4)	# 173
	lui		x4, %hi(l.30858)	# 174
	ori		x4, x0, %lo(l.30858)	# 174
	flw		f2, 0(x4)	# 174
	lui		x4, %hi(l.30860)	# 175
	ori		x4, x0, %lo(l.30860)	# 175
	flw		f3, 0(x4)	# 175
	lui		x4, %hi(l.30862)	# 176
	ori		x4, x0, %lo(l.30862)	# 176
	flw		f4, 0(x4)	# 176
	addi	x4, x3, 0	# 198
	addi	x3, x3, 24	# 198
	lui		x7, %hi(sin.2548.18766)	# 198
	ori		x7, x0, %lo(sin.2548.18766)	# 198
	sw		x7, 0(x4)	# 206
	fsw		f4, 20(x4)	# 206
	fsw		f3, 16(x4)	# 206
	fsw		f2, 12(x4)	# 206
	fsw		f1, 8(x4)	# 206
	flw		f1, -12(x2)	# 206
	fsw		f1, 4(x4)	# 206
	addi	x7, x3, 0	# 206
	addi	x3, x3, 20	# 206
	lui		x8, %hi(cos.2550.18768)	# 206
	ori		x8, x0, %lo(cos.2550.18768)	# 206
	sw		x8, 0(x7)	# 211
	sw		x4, 16(x7)	# 211
	fsw		f4, 12(x7)	# 211
	fsw		f3, 8(x7)	# 211
	fsw		f1, 4(x7)	# 211
	addi	x8, x3, 0	# 211
	addi	x3, x3, 16	# 211
	lui		x9, %hi(atan.2552.18770)	# 211
	ori		x9, x0, %lo(atan.2552.18770)	# 211
	sw		x9, 0(x8)	# 897
	fsw		f4, 12(x8)	# 897
	fsw		f3, 8(x8)	# 897
	fsw		f1, 4(x8)	# 897
	addi	x9, x3, 0	# 897
	addi	x3, x3, 48	# 897
	lui		x10, %hi(read_object.2689.18772)	# 897
	ori		x10, x0, %lo(read_object.2689.18772)	# 897
	sw		x10, 0(x9)	# 913
	sw		x4, 44(x9)	# 913
	fsw		f4, 40(x9)	# 913
	fsw		f3, 36(x9)	# 913
	sw		x7, 32(x9)	# 913
	lw		x10, -84(x2)	# 913
	sw		x10, 28(x9)	# 913
	lw		x11, -52(x2)	# 913
	sw		x11, 24(x9)	# 913
	lw		x12, -32(x2)	# 913
	sw		x12, 20(x9)	# 913
	lw		x13, -24(x2)	# 913
	sw		x13, 16(x9)	# 913
	lw		x13, -8(x2)	# 913
	sw		x13, 12(x9)	# 913
	sw		x5, 8(x9)	# 913
	fsw		f1, 4(x9)	# 913
	addi	x14, x3, 0	# 913
	addi	x3, x3, 12	# 913
	lui		x15, %hi(read_net_item.2693.18774)	# 913
	ori		x15, x0, %lo(read_net_item.2693.18774)	# 913
	sw		x15, 0(x14)	# 921
	sw		x11, 8(x14)	# 921
	sw		x5, 4(x14)	# 921
	addi	x15, x3, 0	# 921
	addi	x3, x3, 20	# 921
	lui		x16, %hi(read_or_network.2695.18776)	# 921
	ori		x16, x0, %lo(read_or_network.2695.18776)	# 921
	sw		x16, 0(x15)	# 930
	sw		x14, 16(x15)	# 930
	sw		x11, 12(x15)	# 930
	sw		x13, 8(x15)	# 930
	sw		x5, 4(x15)	# 930
	addi	x16, x3, 0	# 930
	addi	x3, x3, 20	# 930
	lui		x17, %hi(read_and_network.2697.18778)	# 930
	ori		x17, x0, %lo(read_and_network.2697.18778)	# 930
	sw		x17, 0(x16)	# 1306
	sw		x14, 16(x16)	# 1306
	sw		x11, 12(x16)	# 1306
	sw		x13, 8(x16)	# 1306
	sw		x5, 4(x16)	# 1306
	addi	x14, x3, 0	# 1306
	addi	x3, x3, 28	# 1306
	lui		x17, %hi(iter_setup_dirvec_constants.2794.18780)	# 1306
	ori		x17, x0, %lo(iter_setup_dirvec_constants.2794.18780)	# 1306
	sw		x17, 0(x14)	# 1331
	lw		x17, -124(x2)	# 1331
	sw		x17, 24(x14)	# 1331
	sw		x10, 20(x14)	# 1331
	sw		x12, 16(x14)	# 1331
	sw		x13, 12(x14)	# 1331
	sw		x5, 8(x14)	# 1331
	fsw		f1, 4(x14)	# 1331
	addi	x18, x3, 0	# 1331
	addi	x3, x3, 20	# 1331
	lui		x19, %hi(setup_startp_constants.2799.18783)	# 1331
	ori		x19, x0, %lo(setup_startp_constants.2799.18783)	# 1331
	sw		x19, 0(x18)	# 1400
	sw		x10, 16(x18)	# 1400
	sw		x12, 12(x18)	# 1400
	sw		x13, 8(x18)	# 1400
	sw		x5, 4(x18)	# 1400
	addi	x19, x3, 0	# 1400
	addi	x3, x3, 28	# 1400
	lui		x20, %hi(check_all_inside.2824.18786)	# 1400
	ori		x20, x0, %lo(check_all_inside.2824.18786)	# 1400
	sw		x20, 0(x19)	# 1420
	sw		x10, 24(x19)	# 1420
	sw		x11, 20(x19)	# 1420
	sw		x12, 16(x19)	# 1420
	sw		x13, 12(x19)	# 1420
	sw		x5, 8(x19)	# 1420
	fsw		f1, 4(x19)	# 1420
	addi	x20, x3, 0	# 1420
	addi	x3, x3, 36	# 1420
	lui		x21, %hi(shadow_check_and_group.2830.18792)	# 1420
	ori		x21, x0, %lo(shadow_check_and_group.2830.18792)	# 1420
	sw		x21, 0(x20)	# 1450
	sw		x19, 32(x20)	# 1450
	sw		x17, 28(x20)	# 1450
	sw		x10, 24(x20)	# 1450
	sw		x11, 20(x20)	# 1450
	sw		x12, 16(x20)	# 1450
	sw		x13, 12(x20)	# 1450
	sw		x5, 8(x20)	# 1450
	fsw		f1, 4(x20)	# 1450
	addi	x21, x3, 0	# 1450
	addi	x3, x3, 20	# 1450
	lui		x22, %hi(shadow_check_one_or_group.2833.18795)	# 1450
	ori		x22, x0, %lo(shadow_check_one_or_group.2833.18795)	# 1450
	sw		x22, 0(x21)	# 1465
	sw		x20, 16(x21)	# 1465
	sw		x11, 12(x21)	# 1465
	sw		x13, 8(x21)	# 1465
	sw		x5, 4(x21)	# 1465
	addi	x20, x3, 0	# 1465
	addi	x3, x3, 36	# 1465
	lui		x22, %hi(shadow_check_one_or_matrix.2836.18798)	# 1465
	ori		x22, x0, %lo(shadow_check_one_or_matrix.2836.18798)	# 1465
	sw		x22, 0(x20)	# 1501
	sw		x21, 32(x20)	# 1501
	sw		x17, 28(x20)	# 1501
	sw		x10, 24(x20)	# 1501
	sw		x11, 20(x20)	# 1501
	sw		x12, 16(x20)	# 1501
	sw		x13, 12(x20)	# 1501
	sw		x5, 8(x20)	# 1501
	fsw		f1, 4(x20)	# 1501
	addi	x21, x3, 0	# 1501
	addi	x3, x3, 32	# 1501
	lui		x22, %hi(solve_each_element.2839.18801)	# 1501
	ori		x22, x0, %lo(solve_each_element.2839.18801)	# 1501
	sw		x22, 0(x21)	# 1542
	sw		x19, 28(x21)	# 1542
	sw		x10, 24(x21)	# 1542
	sw		x11, 20(x21)	# 1542
	sw		x12, 16(x21)	# 1542
	sw		x13, 12(x21)	# 1542
	sw		x5, 8(x21)	# 1542
	fsw		f1, 4(x21)	# 1542
	addi	x22, x3, 0	# 1542
	addi	x3, x3, 20	# 1542
	lui		x23, %hi(solve_one_or_network.2843.18805)	# 1542
	ori		x23, x0, %lo(solve_one_or_network.2843.18805)	# 1542
	sw		x23, 0(x22)	# 1552
	sw		x21, 16(x22)	# 1552
	sw		x11, 12(x22)	# 1552
	sw		x13, 8(x22)	# 1552
	sw		x5, 4(x22)	# 1552
	addi	x23, x3, 0	# 1552
	addi	x3, x3, 36	# 1552
	lui		x24, %hi(trace_or_matrix.2847.18809)	# 1552
	ori		x24, x0, %lo(trace_or_matrix.2847.18809)	# 1552
	sw		x24, 0(x23)	# 1594
	sw		x22, 32(x23)	# 1594
	sw		x21, 28(x23)	# 1594
	sw		x10, 24(x23)	# 1594
	sw		x11, 20(x23)	# 1594
	sw		x12, 16(x23)	# 1594
	sw		x13, 12(x23)	# 1594
	sw		x5, 8(x23)	# 1594
	fsw		f1, 4(x23)	# 1594
	addi	x21, x3, 0	# 1594
	addi	x3, x3, 36	# 1594
	lui		x22, %hi(solve_each_element_fast.2853.18813)	# 1594
	ori		x22, x0, %lo(solve_each_element_fast.2853.18813)	# 1594
	sw		x22, 0(x21)	# 1635
	sw		x19, 32(x21)	# 1635
	sw		x17, 28(x21)	# 1635
	sw		x10, 24(x21)	# 1635
	sw		x11, 20(x21)	# 1635
	sw		x12, 16(x21)	# 1635
	sw		x13, 12(x21)	# 1635
	sw		x5, 8(x21)	# 1635
	fsw		f1, 4(x21)	# 1635
	addi	x22, x3, 0	# 1635
	addi	x3, x3, 40	# 1635
	lui		x24, %hi(solve_one_or_network_fast.2857.18817)	# 1635
	ori		x24, x0, %lo(solve_one_or_network_fast.2857.18817)	# 1635
	sw		x24, 0(x22)	# 1645
	sw		x21, 36(x22)	# 1645
	sw		x19, 32(x22)	# 1645
	sw		x17, 28(x22)	# 1645
	sw		x10, 24(x22)	# 1645
	sw		x11, 20(x22)	# 1645
	sw		x12, 16(x22)	# 1645
	sw		x13, 12(x22)	# 1645
	sw		x5, 8(x22)	# 1645
	fsw		f1, 4(x22)	# 1645
	addi	x19, x3, 0	# 1645
	addi	x3, x3, 40	# 1645
	lui		x24, %hi(trace_or_matrix_fast.2861.18821)	# 1645
	ori		x24, x0, %lo(trace_or_matrix_fast.2861.18821)	# 1645
	sw		x24, 0(x19)	# 1839
	sw		x22, 36(x19)	# 1839
	sw		x21, 32(x19)	# 1839
	sw		x17, 28(x19)	# 1839
	sw		x10, 24(x19)	# 1839
	sw		x11, 20(x19)	# 1839
	sw		x12, 16(x19)	# 1839
	sw		x13, 12(x19)	# 1839
	sw		x5, 8(x19)	# 1839
	fsw		f1, 4(x19)	# 1839
	addi	x21, x3, 0	# 1839
	addi	x3, x3, 32	# 1839
	lui		x22, %hi(trace_reflections.2883.18825)	# 1839
	ori		x22, x0, %lo(trace_reflections.2883.18825)	# 1839
	sw		x22, 0(x21)	# 1868
	sw		x19, 28(x21)	# 1868
	sw		x20, 24(x21)	# 1868
	sw		x10, 20(x21)	# 1868
	sw		x13, 16(x21)	# 1868
	sw		x5, 12(x21)	# 1868
	flw		f2, -76(x2)	# 1868
	fsw		f2, 8(x21)	# 1868
	fsw		f1, 4(x21)	# 1868
	addi	x22, x3, 0	# 1868
	addi	x3, x3, 68	# 1868
	lui		x24, %hi(trace_ray.2888.18830)	# 1868
	ori		x24, x0, %lo(trace_ray.2888.18830)	# 1868
	sw		x24, 0(x22)	# 1980
	sw		x21, 64(x22)	# 1980
	sw		x23, 60(x22)	# 1980
	sw		x4, 56(x22)	# 1980
	sw		x20, 52(x22)	# 1980
	sw		x18, 48(x22)	# 1980
	sw		x6, 44(x22)	# 1980
	sw		x7, 40(x22)	# 1980
	sw		x8, 36(x22)	# 1980
	sw		x10, 32(x22)	# 1980
	sw		x11, 28(x22)	# 1980
	sw		x12, 24(x22)	# 1980
	sw		x13, 20(x22)	# 1980
	sw		x5, 16(x22)	# 1980
	fsw		f2, 12(x22)	# 1980
	flw		f5, -48(x2)	# 1980
	fsw		f5, 8(x22)	# 1980
	fsw		f1, 4(x22)	# 1980
	addi	x11, x3, 0	# 1980
	addi	x3, x3, 64	# 1980
	lui		x21, %hi(iter_trace_diffuse_rays.2897.18836)	# 1980
	ori		x21, x0, %lo(iter_trace_diffuse_rays.2897.18836)	# 1980
	sw		x21, 0(x11)	# 2071
	sw		x19, 60(x11)	# 2071
	sw		x4, 56(x11)	# 2071
	sw		x20, 52(x11)	# 2071
	fsw		f4, 48(x11)	# 2071
	fsw		f3, 44(x11)	# 2071
	sw		x6, 40(x11)	# 2071
	sw		x7, 36(x11)	# 2071
	sw		x8, 32(x11)	# 2071
	sw		x10, 28(x11)	# 2071
	sw		x12, 24(x11)	# 2071
	sw		x13, 20(x11)	# 2071
	sw		x5, 16(x11)	# 2071
	fsw		f2, 12(x11)	# 2071
	fsw		f5, 8(x11)	# 2071
	fsw		f1, 4(x11)	# 2071
	addi	x19, x3, 0	# 2071
	addi	x3, x3, 28	# 2071
	lui		x20, %hi(do_without_neighbors.2919.18841)	# 2071
	ori		x20, x0, %lo(do_without_neighbors.2919.18841)	# 2071
	sw		x20, 0(x19)	# 2123
	sw		x18, 24(x19)	# 2123
	sw		x11, 20(x19)	# 2123
	sw		x10, 16(x19)	# 2123
	sw		x12, 12(x19)	# 2123
	sw		x13, 8(x19)	# 2123
	sw		x5, 4(x19)	# 2123
	addi	x20, x3, 0	# 2123
	addi	x3, x3, 20	# 2123
	lui		x21, %hi(try_exploit_neighbors.2935.18844)	# 2123
	ori		x21, x0, %lo(try_exploit_neighbors.2935.18844)	# 2123
	sw		x21, 0(x20)	# 2199
	sw		x19, 16(x20)	# 2199
	sw		x10, 12(x20)	# 2199
	sw		x13, 8(x20)	# 2199
	sw		x5, 4(x20)	# 2199
	addi	x21, x3, 0	# 2199
	addi	x3, x3, 28	# 2199
	lui		x23, %hi(pretrace_diffuse_rays.2950.18851)	# 2199
	ori		x23, x0, %lo(pretrace_diffuse_rays.2950.18851)	# 2199
	sw		x23, 0(x21)	# 2229
	sw		x18, 24(x21)	# 2229
	sw		x11, 20(x21)	# 2229
	sw		x10, 16(x21)	# 2229
	sw		x13, 12(x21)	# 2229
	sw		x5, 8(x21)	# 2229
	fsw		f1, 4(x21)	# 2229
	addi	x11, x3, 0	# 2229
	addi	x3, x3, 32	# 2229
	lui		x18, %hi(pretrace_pixels.2953.18854)	# 2229
	ori		x18, x0, %lo(pretrace_pixels.2953.18854)	# 2229
	sw		x18, 0(x11)	# 2270
	sw		x22, 28(x11)	# 2270
	sw		x21, 24(x11)	# 2270
	sw		x17, 20(x11)	# 2270
	sw		x10, 16(x11)	# 2270
	sw		x13, 12(x11)	# 2270
	sw		x5, 8(x11)	# 2270
	fsw		f1, 4(x11)	# 2270
	addi	x18, x3, 0	# 2270
	addi	x3, x3, 32	# 2270
	lui		x21, %hi(scan_pixel.2964.18861)	# 2270
	ori		x21, x0, %lo(scan_pixel.2964.18861)	# 2270
	sw		x21, 0(x18)	# 2290
	sw		x20, 28(x18)	# 2290
	sw		x6, 24(x18)	# 2290
	sw		x19, 20(x18)	# 2290
	sw		x10, 16(x18)	# 2290
	sw		x12, 12(x18)	# 2290
	sw		x13, 8(x18)	# 2290
	sw		x5, 4(x18)	# 2290
	addi	x6, x3, 0	# 2290
	addi	x3, x3, 28	# 2290
	lui		x19, %hi(scan_line.2971.18868)	# 2290
	ori		x19, x0, %lo(scan_line.2971.18868)	# 2290
	sw		x19, 0(x6)	# 2333
	sw		x18, 24(x6)	# 2333
	sw		x11, 20(x6)	# 2333
	sw		x17, 16(x6)	# 2333
	sw		x10, 12(x6)	# 2333
	sw		x13, 8(x6)	# 2333
	sw		x5, 4(x6)	# 2333
	addi	x18, x3, 0	# 2333
	addi	x3, x3, 28	# 2333
	lui		x19, %hi(init_line_elements.2982.18875)	# 2333
	ori		x19, x0, %lo(init_line_elements.2982.18875)	# 2333
	sw		x19, 0(x18)	# 2370
	sw		x17, 24(x18)	# 2370
	sw		x10, 20(x18)	# 2370
	sw		x12, 16(x18)	# 2370
	sw		x13, 12(x18)	# 2370
	sw		x5, 8(x18)	# 2370
	fsw		f1, 4(x18)	# 2370
	addi	x19, x3, 0	# 2370
	addi	x3, x3, 44	# 2370
	lui		x20, %hi(calc_dirvec.2992.18878)	# 2370
	ori		x20, x0, %lo(calc_dirvec.2992.18878)	# 2370
	sw		x20, 0(x19)	# 2391
	sw		x4, 40(x19)	# 2391
	fsw		f4, 36(x19)	# 2391
	fsw		f3, 32(x19)	# 2391
	sw		x7, 28(x19)	# 2391
	sw		x8, 24(x19)	# 2391
	sw		x17, 20(x19)	# 2391
	sw		x10, 16(x19)	# 2391
	sw		x13, 12(x19)	# 2391
	sw		x5, 8(x19)	# 2391
	fsw		f1, 4(x19)	# 2391
	addi	x8, x3, 0	# 2391
	addi	x3, x3, 28	# 2391
	lui		x20, %hi(calc_dirvecs.3000.18886)	# 2391
	ori		x20, x0, %lo(calc_dirvecs.3000.18886)	# 2391
	sw		x20, 0(x8)	# 2405
	sw		x19, 24(x8)	# 2405
	sw		x17, 20(x8)	# 2405
	sw		x10, 16(x8)	# 2405
	sw		x13, 12(x8)	# 2405
	sw		x5, 8(x8)	# 2405
	fsw		f1, 4(x8)	# 2405
	addi	x19, x3, 0	# 2405
	addi	x3, x3, 24	# 2405
	lui		x20, %hi(calc_dirvec_rows.3005.18891)	# 2405
	ori		x20, x0, %lo(calc_dirvec_rows.3005.18891)	# 2405
	sw		x20, 0(x19)	# 2424
	sw		x8, 20(x19)	# 2424
	sw		x17, 16(x19)	# 2424
	sw		x10, 12(x19)	# 2424
	sw		x13, 8(x19)	# 2424
	sw		x5, 4(x19)	# 2424
	addi	x8, x3, 0	# 2424
	addi	x3, x3, 20	# 2424
	lui		x20, %hi(create_dirvec_elements.3011.18895)	# 2424
	ori		x20, x0, %lo(create_dirvec_elements.3011.18895)	# 2424
	sw		x20, 0(x8)	# 2431
	sw		x12, 16(x8)	# 2431
	sw		x13, 12(x8)	# 2431
	sw		x5, 8(x8)	# 2431
	fsw		f1, 4(x8)	# 2431
	addi	x20, x3, 0	# 2431
	addi	x3, x3, 24	# 2431
	lui		x21, %hi(create_dirvecs.3014.18898)	# 2431
	ori		x21, x0, %lo(create_dirvecs.3014.18898)	# 2431
	sw		x21, 0(x20)	# 2443
	sw		x8, 20(x20)	# 2443
	sw		x12, 16(x20)	# 2443
	sw		x13, 12(x20)	# 2443
	sw		x5, 8(x20)	# 2443
	fsw		f1, 4(x20)	# 2443
	addi	x8, x3, 0	# 2443
	addi	x3, x3, 16	# 2443
	lui		x21, %hi(init_dirvec_constants.3016.18900)	# 2443
	ori		x21, x0, %lo(init_dirvec_constants.3016.18900)	# 2443
	sw		x21, 0(x8)	# 2450
	sw		x14, 12(x8)	# 2450
	sw		x13, 8(x8)	# 2450
	sw		x5, 4(x8)	# 2450
	addi	x21, x3, 0	# 2450
	addi	x3, x3, 20	# 2450
	lui		x22, %hi(init_vecset_constants.3019.18903)	# 2450
	ori		x22, x0, %lo(init_vecset_constants.3019.18903)	# 2450
	sw		x22, 0(x21)	# 2549
	sw		x14, 16(x21)	# 2549
	sw		x8, 12(x21)	# 2549
	sw		x13, 8(x21)	# 2549
	sw		x5, 4(x21)	# 2549
	addi	x22, x0, 256	# 2549
	mul		x23, x30, x13	# 2529
	lw		x24, -80(x2)	# 2529
	add		x23, x24, x23	# 2529
	sw		x22, 0(x23)	# 2529
	mul		x23, x30, x5	# 2530
	add		x23, x24, x23	# 2530
	sw		x22, 0(x23)	# 2530
	addi	x23, x0, 128	# 2531
	mul		x25, x30, x13	# 2531
	lw		x26, -88(x2)	# 2531
	add		x25, x26, x25	# 2531
	sw		x23, 0(x25)	# 2531
	mul		x25, x30, x5	# 2532
	add		x25, x26, x25	# 2532
	sw		x23, 0(x25)	# 2532
	lui		x23, %hi(l.30872)	# 2533
	ori		x23, x0, %lo(l.30872)	# 2533
	flw		f2, 0(x23)	# 2533
	sw		x6, -160(x2)	# 2533
	sw		x11, -164(x2)	# 2533
	sw		x14, -168(x2)	# 2533
	sw		x21, -172(x2)	# 2533
	sw		x8, -176(x2)	# 2533
	sw		x19, -180(x2)	# 2533
	sw		x20, -184(x2)	# 2533
	sw		x15, -188(x2)	# 2533
	sw		x16, -192(x2)	# 2533
	sw		x9, -196(x2)	# 2533
	sw		x4, -200(x2)	# 2533
	sw		x7, -204(x2)	# 2533
	sw		x18, -208(x2)	# 2533
	fsw		f2, -212(x2)	# 2533
	addi	x4, x22, 0
	sw		x1, -216(x2)	# 2533
	addi	x2, x2, -220	# 2533
	jal		x1, min_caml_float_of_int	# 2533
	addi	x2, x2, 220	# 2533
	lw		x1, -216(x2)	# 2533
	flw		f2, -212(x2)	# 2533
	fdiv	f1, f2, f1	# 2533
	lw		x4, -8(x2)	# 2533
	mul		x5, x30, x4	# 2533
	lw		x6, -92(x2)	# 2533
	add		x5, x6, x5	# 2533
	fsw		f1, 0(x5)	# 2533
	mul		x5, x30, x4	# 2343
	lw		x7, -80(x2)	# 2343
	add		x5, x7, x5	# 2343
	lw		x5, 0(x5)	# 2343
	flw		f1, -12(x2)	# 2321
	lw		x8, -32(x2)	# 2321
	sw		x5, -216(x2)	# 2321
	addi	x4, x8, 0
	sw		x1, -220(x2)	# 2321
	addi	x2, x2, -224	# 2321
	jal		x1, min_caml_create_float_array	# 2321
	addi	x2, x2, 224	# 2321
	lw		x1, -220(x2)	# 2321
	flw		f1, -12(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -220(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -224(x2)	# 2309
	addi	x2, x2, -228	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 228	# 2309
	lw		x1, -224(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -224(x2)	# 2310
	addi	x2, x2, -228	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 228	# 2310
	lw		x1, -224(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -224(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -228(x2)	# 2311
	addi	x2, x2, -232	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 232	# 2311
	lw		x1, -228(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -224(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -228(x2)	# 2312
	addi	x2, x2, -232	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 232	# 2312
	lw		x1, -228(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -224(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -228(x2)	# 2313
	addi	x2, x2, -232	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 232	# 2313
	lw		x1, -228(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -224(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	addi	x4, x0, 4	# 2314
	flw		f1, -12(x2)	# 2314
	sw		x4, -228(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -232(x2)	# 2314
	addi	x2, x2, -236	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 236	# 2314
	lw		x1, -232(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -224(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -124(x2)	# 2323
	lw		x6, -8(x2)	# 2323
	addi	x5, x6, 0
	sw		x1, -232(x2)	# 2323
	addi	x2, x2, -236	# 2323
	jal		x1, min_caml_create_array	# 2323
	addi	x2, x2, 236	# 2323
	lw		x1, -232(x2)	# 2323
	lw		x5, -124(x2)	# 2324
	lw		x6, -8(x2)	# 2324
	sw		x4, -232(x2)	# 2324
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -236(x2)	# 2324
	addi	x2, x2, -240	# 2324
	jal		x1, min_caml_create_array	# 2324
	addi	x2, x2, 240	# 2324
	lw		x1, -236(x2)	# 2324
	flw		f1, -12(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -236(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -240(x2)	# 2309
	addi	x2, x2, -244	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 244	# 2309
	lw		x1, -240(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -240(x2)	# 2310
	addi	x2, x2, -244	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 244	# 2310
	lw		x1, -240(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -240(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -244(x2)	# 2311
	addi	x2, x2, -248	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 248	# 2311
	lw		x1, -244(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -240(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -244(x2)	# 2312
	addi	x2, x2, -248	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 248	# 2312
	lw		x1, -244(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -240(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -244(x2)	# 2313
	addi	x2, x2, -248	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 248	# 2313
	lw		x1, -244(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -240(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -244(x2)	# 2314
	addi	x2, x2, -248	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 248	# 2314
	lw		x1, -244(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -240(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	flw		f1, -12(x2)	# 2309
	lw		x4, -32(x2)	# 2309
	sw		x1, -244(x2)	# 2309
	addi	x2, x2, -248	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 248	# 2309
	lw		x1, -244(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -244(x2)	# 2310
	addi	x2, x2, -248	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 248	# 2310
	lw		x1, -244(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -244(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -248(x2)	# 2311
	addi	x2, x2, -252	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 252	# 2311
	lw		x1, -248(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -244(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -248(x2)	# 2312
	addi	x2, x2, -252	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 252	# 2312
	lw		x1, -248(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -244(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -248(x2)	# 2313
	addi	x2, x2, -252	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 252	# 2313
	lw		x1, -248(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -244(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -248(x2)	# 2314
	addi	x2, x2, -252	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 252	# 2314
	lw		x1, -248(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -244(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -4(x2)	# 2327
	lw		x6, -8(x2)	# 2327
	addi	x5, x6, 0
	sw		x1, -248(x2)	# 2327
	addi	x2, x2, -252	# 2327
	jal		x1, min_caml_create_array	# 2327
	addi	x2, x2, 252	# 2327
	lw		x1, -248(x2)	# 2327
	flw		f1, -12(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -248(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -252(x2)	# 2309
	addi	x2, x2, -256	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 256	# 2309
	lw		x1, -252(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -252(x2)	# 2310
	addi	x2, x2, -256	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 256	# 2310
	lw		x1, -252(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -252(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -256(x2)	# 2311
	addi	x2, x2, -260	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 260	# 2311
	lw		x1, -256(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -252(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -256(x2)	# 2312
	addi	x2, x2, -260	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 260	# 2312
	lw		x1, -256(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -252(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -256(x2)	# 2313
	addi	x2, x2, -260	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 260	# 2313
	lw		x1, -256(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -252(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -256(x2)	# 2314
	addi	x2, x2, -260	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 260	# 2314
	lw		x1, -256(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -252(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	addi	x4, x3, 0	# 2329
	addi	x3, x3, 32	# 2329
	sw		x7, 28(x4)	# 2329
	lw		x6, -248(x2)	# 2329
	sw		x6, 24(x4)	# 2329
	lw		x6, -244(x2)	# 2329
	sw		x6, 20(x4)	# 2329
	lw		x6, -240(x2)	# 2329
	sw		x6, 16(x4)	# 2329
	lw		x6, -236(x2)	# 2329
	sw		x6, 12(x4)	# 2329
	lw		x6, -232(x2)	# 2329
	sw		x6, 8(x4)	# 2329
	lw		x6, -224(x2)	# 2329
	sw		x6, 4(x4)	# 2329
	lw		x6, -220(x2)	# 2329
	sw		x6, 0(x4)	# 2329
	lw		x6, -216(x2)	# 2343
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -256(x2)	# 2343
	addi	x2, x2, -260	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 260	# 2343
	lw		x1, -256(x2)	# 2343
	lw		x5, -8(x2)	# 2344
	mul		x6, x30, x5	# 2344
	lw		x7, -80(x2)	# 2344
	add		x6, x7, x6	# 2344
	lw		x6, 0(x6)	# 2344
	lw		x8, -84(x2)	# 2344
	sub		x6, x6, x8	# 2344
	ble		x5, x6, ble.37319	# 2334
	jal		x0, ble_cont.37318	# 2334
ble.37319:
	flw		f1, -12(x2)	# 2321
	lw		x9, -32(x2)	# 2321
	sw		x4, -256(x2)	# 2321
	sw		x6, -260(x2)	# 2321
	addi	x4, x9, 0
	sw		x1, -264(x2)	# 2321
	addi	x2, x2, -268	# 2321
	jal		x1, min_caml_create_float_array	# 2321
	addi	x2, x2, 268	# 2321
	lw		x1, -264(x2)	# 2321
	flw		f1, -12(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -264(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -268(x2)	# 2309
	addi	x2, x2, -272	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 272	# 2309
	lw		x1, -268(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -268(x2)	# 2310
	addi	x2, x2, -272	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 272	# 2310
	lw		x1, -268(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -268(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -272(x2)	# 2311
	addi	x2, x2, -276	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 276	# 2311
	lw		x1, -272(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -268(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -272(x2)	# 2312
	addi	x2, x2, -276	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 276	# 2312
	lw		x1, -272(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -268(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -272(x2)	# 2313
	addi	x2, x2, -276	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 276	# 2313
	lw		x1, -272(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -268(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -272(x2)	# 2314
	addi	x2, x2, -276	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 276	# 2314
	lw		x1, -272(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -268(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -124(x2)	# 2323
	lw		x6, -8(x2)	# 2323
	addi	x5, x6, 0
	sw		x1, -272(x2)	# 2323
	addi	x2, x2, -276	# 2323
	jal		x1, min_caml_create_array	# 2323
	addi	x2, x2, 276	# 2323
	lw		x1, -272(x2)	# 2323
	lw		x5, -124(x2)	# 2324
	lw		x6, -8(x2)	# 2324
	sw		x4, -272(x2)	# 2324
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -276(x2)	# 2324
	addi	x2, x2, -280	# 2324
	jal		x1, min_caml_create_array	# 2324
	addi	x2, x2, 280	# 2324
	lw		x1, -276(x2)	# 2324
	flw		f1, -12(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -276(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -280(x2)	# 2309
	addi	x2, x2, -284	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 284	# 2309
	lw		x1, -280(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -280(x2)	# 2310
	addi	x2, x2, -284	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 284	# 2310
	lw		x1, -280(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -280(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -284(x2)	# 2311
	addi	x2, x2, -288	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 288	# 2311
	lw		x1, -284(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -280(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -284(x2)	# 2312
	addi	x2, x2, -288	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 288	# 2312
	lw		x1, -284(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -280(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -284(x2)	# 2313
	addi	x2, x2, -288	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 288	# 2313
	lw		x1, -284(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -280(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -284(x2)	# 2314
	addi	x2, x2, -288	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 288	# 2314
	lw		x1, -284(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -280(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	flw		f1, -12(x2)	# 2309
	lw		x4, -32(x2)	# 2309
	sw		x1, -284(x2)	# 2309
	addi	x2, x2, -288	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 288	# 2309
	lw		x1, -284(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -284(x2)	# 2310
	addi	x2, x2, -288	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 288	# 2310
	lw		x1, -284(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -284(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -288(x2)	# 2311
	addi	x2, x2, -292	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 292	# 2311
	lw		x1, -288(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -284(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -288(x2)	# 2312
	addi	x2, x2, -292	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 292	# 2312
	lw		x1, -288(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -284(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -288(x2)	# 2313
	addi	x2, x2, -292	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 292	# 2313
	lw		x1, -288(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -284(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -288(x2)	# 2314
	addi	x2, x2, -292	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 292	# 2314
	lw		x1, -288(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -284(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -4(x2)	# 2327
	lw		x6, -8(x2)	# 2327
	addi	x5, x6, 0
	sw		x1, -288(x2)	# 2327
	addi	x2, x2, -292	# 2327
	jal		x1, min_caml_create_array	# 2327
	addi	x2, x2, 292	# 2327
	lw		x1, -288(x2)	# 2327
	flw		f1, -12(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -288(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -292(x2)	# 2309
	addi	x2, x2, -296	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 296	# 2309
	lw		x1, -292(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -292(x2)	# 2310
	addi	x2, x2, -296	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 296	# 2310
	lw		x1, -292(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -292(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -296(x2)	# 2311
	addi	x2, x2, -300	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 300	# 2311
	lw		x1, -296(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -292(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -296(x2)	# 2312
	addi	x2, x2, -300	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 300	# 2312
	lw		x1, -296(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -292(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -296(x2)	# 2313
	addi	x2, x2, -300	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 300	# 2313
	lw		x1, -296(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -292(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -296(x2)	# 2314
	addi	x2, x2, -300	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 300	# 2314
	lw		x1, -296(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -292(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	addi	x4, x3, 0	# 2329
	addi	x3, x3, 32	# 2329
	sw		x7, 28(x4)	# 2329
	lw		x6, -288(x2)	# 2329
	sw		x6, 24(x4)	# 2329
	lw		x6, -284(x2)	# 2329
	sw		x6, 20(x4)	# 2329
	lw		x6, -280(x2)	# 2329
	sw		x6, 16(x4)	# 2329
	lw		x6, -276(x2)	# 2329
	sw		x6, 12(x4)	# 2329
	lw		x6, -272(x2)	# 2329
	sw		x6, 8(x4)	# 2329
	lw		x6, -268(x2)	# 2329
	sw		x6, 4(x4)	# 2329
	lw		x6, -264(x2)	# 2329
	sw		x6, 0(x4)	# 2329
	lw		x6, -260(x2)	# 2335
	mul		x7, x30, x6	# 2335
	lw		x8, -256(x2)	# 2335
	add		x7, x8, x7	# 2335
	sw		x4, 0(x7)	# 2335
	lw		x4, -4(x2)	# 2336
	sub		x6, x6, x4	# 2336
	lw		x29, -208(x2)	# 2336
	addi	x5, x6, 0
	addi	x4, x8, 0
	sw		x1, -296(x2)	# 2336
	addi	x2, x2, -300	# 2336
	lw		x31, 0(x29)	# 2336
	jalr	x1, x31, 0	# 2336
	addi	x2, x2, 300	# 2336
	lw		x1, -296(x2)	# 2336
ble_cont.37318:
	lw		x5, -8(x2)	# 2343
	mul		x6, x30, x5	# 2343
	lw		x7, -80(x2)	# 2343
	add		x6, x7, x6	# 2343
	lw		x6, 0(x6)	# 2343
	flw		f1, -12(x2)	# 2321
	lw		x8, -32(x2)	# 2321
	sw		x4, -296(x2)	# 2321
	sw		x6, -300(x2)	# 2321
	addi	x4, x8, 0
	sw		x1, -304(x2)	# 2321
	addi	x2, x2, -308	# 2321
	jal		x1, min_caml_create_float_array	# 2321
	addi	x2, x2, 308	# 2321
	lw		x1, -304(x2)	# 2321
	flw		f1, -12(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -304(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -308(x2)	# 2309
	addi	x2, x2, -312	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 312	# 2309
	lw		x1, -308(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -308(x2)	# 2310
	addi	x2, x2, -312	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 312	# 2310
	lw		x1, -308(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -308(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -312(x2)	# 2311
	addi	x2, x2, -316	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 316	# 2311
	lw		x1, -312(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -308(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -312(x2)	# 2312
	addi	x2, x2, -316	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 316	# 2312
	lw		x1, -312(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -308(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -312(x2)	# 2313
	addi	x2, x2, -316	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 316	# 2313
	lw		x1, -312(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -308(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -312(x2)	# 2314
	addi	x2, x2, -316	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 316	# 2314
	lw		x1, -312(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -308(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -124(x2)	# 2323
	lw		x6, -8(x2)	# 2323
	addi	x5, x6, 0
	sw		x1, -312(x2)	# 2323
	addi	x2, x2, -316	# 2323
	jal		x1, min_caml_create_array	# 2323
	addi	x2, x2, 316	# 2323
	lw		x1, -312(x2)	# 2323
	lw		x5, -124(x2)	# 2324
	lw		x6, -8(x2)	# 2324
	sw		x4, -312(x2)	# 2324
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -316(x2)	# 2324
	addi	x2, x2, -320	# 2324
	jal		x1, min_caml_create_array	# 2324
	addi	x2, x2, 320	# 2324
	lw		x1, -316(x2)	# 2324
	flw		f1, -12(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -316(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -320(x2)	# 2309
	addi	x2, x2, -324	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 324	# 2309
	lw		x1, -320(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -320(x2)	# 2310
	addi	x2, x2, -324	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 324	# 2310
	lw		x1, -320(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -320(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -324(x2)	# 2311
	addi	x2, x2, -328	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 328	# 2311
	lw		x1, -324(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -320(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -324(x2)	# 2312
	addi	x2, x2, -328	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 328	# 2312
	lw		x1, -324(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -320(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -324(x2)	# 2313
	addi	x2, x2, -328	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 328	# 2313
	lw		x1, -324(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -320(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -324(x2)	# 2314
	addi	x2, x2, -328	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 328	# 2314
	lw		x1, -324(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -320(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	flw		f1, -12(x2)	# 2309
	lw		x4, -32(x2)	# 2309
	sw		x1, -324(x2)	# 2309
	addi	x2, x2, -328	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 328	# 2309
	lw		x1, -324(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -324(x2)	# 2310
	addi	x2, x2, -328	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 328	# 2310
	lw		x1, -324(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -324(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -328(x2)	# 2311
	addi	x2, x2, -332	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 332	# 2311
	lw		x1, -328(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -324(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -328(x2)	# 2312
	addi	x2, x2, -332	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 332	# 2312
	lw		x1, -328(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -324(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -328(x2)	# 2313
	addi	x2, x2, -332	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 332	# 2313
	lw		x1, -328(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -324(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -328(x2)	# 2314
	addi	x2, x2, -332	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 332	# 2314
	lw		x1, -328(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -324(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -4(x2)	# 2327
	lw		x6, -8(x2)	# 2327
	addi	x5, x6, 0
	sw		x1, -328(x2)	# 2327
	addi	x2, x2, -332	# 2327
	jal		x1, min_caml_create_array	# 2327
	addi	x2, x2, 332	# 2327
	lw		x1, -328(x2)	# 2327
	flw		f1, -12(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -328(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -332(x2)	# 2309
	addi	x2, x2, -336	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 336	# 2309
	lw		x1, -332(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -332(x2)	# 2310
	addi	x2, x2, -336	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 336	# 2310
	lw		x1, -332(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -332(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -336(x2)	# 2311
	addi	x2, x2, -340	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 340	# 2311
	lw		x1, -336(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -332(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -336(x2)	# 2312
	addi	x2, x2, -340	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 340	# 2312
	lw		x1, -336(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -332(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -336(x2)	# 2313
	addi	x2, x2, -340	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 340	# 2313
	lw		x1, -336(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -332(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -336(x2)	# 2314
	addi	x2, x2, -340	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 340	# 2314
	lw		x1, -336(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -332(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	addi	x4, x3, 0	# 2329
	addi	x3, x3, 32	# 2329
	sw		x7, 28(x4)	# 2329
	lw		x6, -328(x2)	# 2329
	sw		x6, 24(x4)	# 2329
	lw		x6, -324(x2)	# 2329
	sw		x6, 20(x4)	# 2329
	lw		x6, -320(x2)	# 2329
	sw		x6, 16(x4)	# 2329
	lw		x6, -316(x2)	# 2329
	sw		x6, 12(x4)	# 2329
	lw		x6, -312(x2)	# 2329
	sw		x6, 8(x4)	# 2329
	lw		x6, -308(x2)	# 2329
	sw		x6, 4(x4)	# 2329
	lw		x6, -304(x2)	# 2329
	sw		x6, 0(x4)	# 2329
	lw		x6, -300(x2)	# 2343
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -336(x2)	# 2343
	addi	x2, x2, -340	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 340	# 2343
	lw		x1, -336(x2)	# 2343
	lw		x5, -8(x2)	# 2344
	mul		x6, x30, x5	# 2344
	lw		x7, -80(x2)	# 2344
	add		x6, x7, x6	# 2344
	lw		x6, 0(x6)	# 2344
	lw		x8, -84(x2)	# 2344
	sub		x6, x6, x8	# 2344
	ble		x5, x6, ble.37321	# 2334
	jal		x0, ble_cont.37320	# 2334
ble.37321:
	flw		f1, -12(x2)	# 2321
	lw		x9, -32(x2)	# 2321
	sw		x4, -336(x2)	# 2321
	sw		x6, -340(x2)	# 2321
	addi	x4, x9, 0
	sw		x1, -344(x2)	# 2321
	addi	x2, x2, -348	# 2321
	jal		x1, min_caml_create_float_array	# 2321
	addi	x2, x2, 348	# 2321
	lw		x1, -344(x2)	# 2321
	flw		f1, -12(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -344(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -348(x2)	# 2309
	addi	x2, x2, -352	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 352	# 2309
	lw		x1, -348(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -348(x2)	# 2310
	addi	x2, x2, -352	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 352	# 2310
	lw		x1, -348(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -348(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -352(x2)	# 2311
	addi	x2, x2, -356	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 356	# 2311
	lw		x1, -352(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -348(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -352(x2)	# 2312
	addi	x2, x2, -356	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 356	# 2312
	lw		x1, -352(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -348(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -352(x2)	# 2313
	addi	x2, x2, -356	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 356	# 2313
	lw		x1, -352(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -348(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -352(x2)	# 2314
	addi	x2, x2, -356	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 356	# 2314
	lw		x1, -352(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -348(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -124(x2)	# 2323
	lw		x6, -8(x2)	# 2323
	addi	x5, x6, 0
	sw		x1, -352(x2)	# 2323
	addi	x2, x2, -356	# 2323
	jal		x1, min_caml_create_array	# 2323
	addi	x2, x2, 356	# 2323
	lw		x1, -352(x2)	# 2323
	lw		x5, -124(x2)	# 2324
	lw		x6, -8(x2)	# 2324
	sw		x4, -352(x2)	# 2324
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -356(x2)	# 2324
	addi	x2, x2, -360	# 2324
	jal		x1, min_caml_create_array	# 2324
	addi	x2, x2, 360	# 2324
	lw		x1, -356(x2)	# 2324
	flw		f1, -12(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -356(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -360(x2)	# 2309
	addi	x2, x2, -364	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 364	# 2309
	lw		x1, -360(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -360(x2)	# 2310
	addi	x2, x2, -364	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 364	# 2310
	lw		x1, -360(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -360(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -364(x2)	# 2311
	addi	x2, x2, -368	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 368	# 2311
	lw		x1, -364(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -360(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -364(x2)	# 2312
	addi	x2, x2, -368	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 368	# 2312
	lw		x1, -364(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -360(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -364(x2)	# 2313
	addi	x2, x2, -368	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 368	# 2313
	lw		x1, -364(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -360(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -364(x2)	# 2314
	addi	x2, x2, -368	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 368	# 2314
	lw		x1, -364(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -360(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	flw		f1, -12(x2)	# 2309
	lw		x4, -32(x2)	# 2309
	sw		x1, -364(x2)	# 2309
	addi	x2, x2, -368	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 368	# 2309
	lw		x1, -364(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -364(x2)	# 2310
	addi	x2, x2, -368	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 368	# 2310
	lw		x1, -364(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -364(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -368(x2)	# 2311
	addi	x2, x2, -372	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 372	# 2311
	lw		x1, -368(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -364(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -368(x2)	# 2312
	addi	x2, x2, -372	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 372	# 2312
	lw		x1, -368(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -364(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -368(x2)	# 2313
	addi	x2, x2, -372	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 372	# 2313
	lw		x1, -368(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -364(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -368(x2)	# 2314
	addi	x2, x2, -372	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 372	# 2314
	lw		x1, -368(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -364(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -4(x2)	# 2327
	lw		x6, -8(x2)	# 2327
	addi	x5, x6, 0
	sw		x1, -368(x2)	# 2327
	addi	x2, x2, -372	# 2327
	jal		x1, min_caml_create_array	# 2327
	addi	x2, x2, 372	# 2327
	lw		x1, -368(x2)	# 2327
	flw		f1, -12(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -368(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -372(x2)	# 2309
	addi	x2, x2, -376	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 376	# 2309
	lw		x1, -372(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -372(x2)	# 2310
	addi	x2, x2, -376	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 376	# 2310
	lw		x1, -372(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -372(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -376(x2)	# 2311
	addi	x2, x2, -380	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 380	# 2311
	lw		x1, -376(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -372(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -376(x2)	# 2312
	addi	x2, x2, -380	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 380	# 2312
	lw		x1, -376(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -372(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -376(x2)	# 2313
	addi	x2, x2, -380	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 380	# 2313
	lw		x1, -376(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -372(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -376(x2)	# 2314
	addi	x2, x2, -380	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 380	# 2314
	lw		x1, -376(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -372(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	addi	x4, x3, 0	# 2329
	addi	x3, x3, 32	# 2329
	sw		x7, 28(x4)	# 2329
	lw		x6, -368(x2)	# 2329
	sw		x6, 24(x4)	# 2329
	lw		x6, -364(x2)	# 2329
	sw		x6, 20(x4)	# 2329
	lw		x6, -360(x2)	# 2329
	sw		x6, 16(x4)	# 2329
	lw		x6, -356(x2)	# 2329
	sw		x6, 12(x4)	# 2329
	lw		x6, -352(x2)	# 2329
	sw		x6, 8(x4)	# 2329
	lw		x6, -348(x2)	# 2329
	sw		x6, 4(x4)	# 2329
	lw		x6, -344(x2)	# 2329
	sw		x6, 0(x4)	# 2329
	lw		x6, -340(x2)	# 2335
	mul		x7, x30, x6	# 2335
	lw		x8, -336(x2)	# 2335
	add		x7, x8, x7	# 2335
	sw		x4, 0(x7)	# 2335
	lw		x4, -4(x2)	# 2336
	sub		x6, x6, x4	# 2336
	lw		x29, -208(x2)	# 2336
	addi	x5, x6, 0
	addi	x4, x8, 0
	sw		x1, -376(x2)	# 2336
	addi	x2, x2, -380	# 2336
	lw		x31, 0(x29)	# 2336
	jalr	x1, x31, 0	# 2336
	addi	x2, x2, 380	# 2336
	lw		x1, -376(x2)	# 2336
ble_cont.37320:
	lw		x5, -8(x2)	# 2343
	mul		x6, x30, x5	# 2343
	lw		x7, -80(x2)	# 2343
	add		x6, x7, x6	# 2343
	lw		x6, 0(x6)	# 2343
	flw		f1, -12(x2)	# 2321
	lw		x8, -32(x2)	# 2321
	sw		x4, -376(x2)	# 2321
	sw		x6, -380(x2)	# 2321
	addi	x4, x8, 0
	sw		x1, -384(x2)	# 2321
	addi	x2, x2, -388	# 2321
	jal		x1, min_caml_create_float_array	# 2321
	addi	x2, x2, 388	# 2321
	lw		x1, -384(x2)	# 2321
	flw		f1, -12(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -384(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -388(x2)	# 2309
	addi	x2, x2, -392	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 392	# 2309
	lw		x1, -388(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -388(x2)	# 2310
	addi	x2, x2, -392	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 392	# 2310
	lw		x1, -388(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -388(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -392(x2)	# 2311
	addi	x2, x2, -396	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 396	# 2311
	lw		x1, -392(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -388(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -392(x2)	# 2312
	addi	x2, x2, -396	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 396	# 2312
	lw		x1, -392(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -388(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -392(x2)	# 2313
	addi	x2, x2, -396	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 396	# 2313
	lw		x1, -392(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -388(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -392(x2)	# 2314
	addi	x2, x2, -396	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 396	# 2314
	lw		x1, -392(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -388(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -124(x2)	# 2323
	lw		x6, -8(x2)	# 2323
	addi	x5, x6, 0
	sw		x1, -392(x2)	# 2323
	addi	x2, x2, -396	# 2323
	jal		x1, min_caml_create_array	# 2323
	addi	x2, x2, 396	# 2323
	lw		x1, -392(x2)	# 2323
	lw		x5, -124(x2)	# 2324
	lw		x6, -8(x2)	# 2324
	sw		x4, -392(x2)	# 2324
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -396(x2)	# 2324
	addi	x2, x2, -400	# 2324
	jal		x1, min_caml_create_array	# 2324
	addi	x2, x2, 400	# 2324
	lw		x1, -396(x2)	# 2324
	flw		f1, -12(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -396(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -400(x2)	# 2309
	addi	x2, x2, -404	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 404	# 2309
	lw		x1, -400(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -400(x2)	# 2310
	addi	x2, x2, -404	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 404	# 2310
	lw		x1, -400(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -400(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -404(x2)	# 2311
	addi	x2, x2, -408	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 408	# 2311
	lw		x1, -404(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -400(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -404(x2)	# 2312
	addi	x2, x2, -408	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 408	# 2312
	lw		x1, -404(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -400(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -404(x2)	# 2313
	addi	x2, x2, -408	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 408	# 2313
	lw		x1, -404(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -400(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -404(x2)	# 2314
	addi	x2, x2, -408	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 408	# 2314
	lw		x1, -404(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -400(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	flw		f1, -12(x2)	# 2309
	lw		x4, -32(x2)	# 2309
	sw		x1, -404(x2)	# 2309
	addi	x2, x2, -408	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 408	# 2309
	lw		x1, -404(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -404(x2)	# 2310
	addi	x2, x2, -408	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 408	# 2310
	lw		x1, -404(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -404(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -408(x2)	# 2311
	addi	x2, x2, -412	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 412	# 2311
	lw		x1, -408(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -404(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -408(x2)	# 2312
	addi	x2, x2, -412	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 412	# 2312
	lw		x1, -408(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -404(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -408(x2)	# 2313
	addi	x2, x2, -412	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 412	# 2313
	lw		x1, -408(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -404(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -408(x2)	# 2314
	addi	x2, x2, -412	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 412	# 2314
	lw		x1, -408(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -404(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -4(x2)	# 2327
	lw		x6, -8(x2)	# 2327
	addi	x5, x6, 0
	sw		x1, -408(x2)	# 2327
	addi	x2, x2, -412	# 2327
	jal		x1, min_caml_create_array	# 2327
	addi	x2, x2, 412	# 2327
	lw		x1, -408(x2)	# 2327
	flw		f1, -12(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -408(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -412(x2)	# 2309
	addi	x2, x2, -416	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 416	# 2309
	lw		x1, -412(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -412(x2)	# 2310
	addi	x2, x2, -416	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 416	# 2310
	lw		x1, -412(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -412(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -416(x2)	# 2311
	addi	x2, x2, -420	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 420	# 2311
	lw		x1, -416(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -412(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -416(x2)	# 2312
	addi	x2, x2, -420	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 420	# 2312
	lw		x1, -416(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -412(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -416(x2)	# 2313
	addi	x2, x2, -420	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 420	# 2313
	lw		x1, -416(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -412(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -416(x2)	# 2314
	addi	x2, x2, -420	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 420	# 2314
	lw		x1, -416(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -412(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	addi	x4, x3, 0	# 2329
	addi	x3, x3, 32	# 2329
	sw		x7, 28(x4)	# 2329
	lw		x6, -408(x2)	# 2329
	sw		x6, 24(x4)	# 2329
	lw		x6, -404(x2)	# 2329
	sw		x6, 20(x4)	# 2329
	lw		x6, -400(x2)	# 2329
	sw		x6, 16(x4)	# 2329
	lw		x6, -396(x2)	# 2329
	sw		x6, 12(x4)	# 2329
	lw		x6, -392(x2)	# 2329
	sw		x6, 8(x4)	# 2329
	lw		x6, -388(x2)	# 2329
	sw		x6, 4(x4)	# 2329
	lw		x6, -384(x2)	# 2329
	sw		x6, 0(x4)	# 2329
	lw		x6, -380(x2)	# 2343
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -416(x2)	# 2343
	addi	x2, x2, -420	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 420	# 2343
	lw		x1, -416(x2)	# 2343
	lw		x5, -8(x2)	# 2344
	mul		x6, x30, x5	# 2344
	lw		x7, -80(x2)	# 2344
	add		x6, x7, x6	# 2344
	lw		x6, 0(x6)	# 2344
	lw		x8, -84(x2)	# 2344
	sub		x6, x6, x8	# 2344
	ble		x5, x6, ble.37323	# 2334
	jal		x0, ble_cont.37322	# 2334
ble.37323:
	flw		f1, -12(x2)	# 2321
	lw		x9, -32(x2)	# 2321
	sw		x4, -416(x2)	# 2321
	sw		x6, -420(x2)	# 2321
	addi	x4, x9, 0
	sw		x1, -424(x2)	# 2321
	addi	x2, x2, -428	# 2321
	jal		x1, min_caml_create_float_array	# 2321
	addi	x2, x2, 428	# 2321
	lw		x1, -424(x2)	# 2321
	flw		f1, -12(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -424(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -428(x2)	# 2309
	addi	x2, x2, -432	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 432	# 2309
	lw		x1, -428(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -428(x2)	# 2310
	addi	x2, x2, -432	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 432	# 2310
	lw		x1, -428(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -428(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -432(x2)	# 2311
	addi	x2, x2, -436	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 436	# 2311
	lw		x1, -432(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -428(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -432(x2)	# 2312
	addi	x2, x2, -436	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 436	# 2312
	lw		x1, -432(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -428(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -432(x2)	# 2313
	addi	x2, x2, -436	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 436	# 2313
	lw		x1, -432(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -428(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -432(x2)	# 2314
	addi	x2, x2, -436	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 436	# 2314
	lw		x1, -432(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -428(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -124(x2)	# 2323
	lw		x6, -8(x2)	# 2323
	addi	x5, x6, 0
	sw		x1, -432(x2)	# 2323
	addi	x2, x2, -436	# 2323
	jal		x1, min_caml_create_array	# 2323
	addi	x2, x2, 436	# 2323
	lw		x1, -432(x2)	# 2323
	lw		x5, -124(x2)	# 2324
	lw		x6, -8(x2)	# 2324
	sw		x4, -432(x2)	# 2324
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -436(x2)	# 2324
	addi	x2, x2, -440	# 2324
	jal		x1, min_caml_create_array	# 2324
	addi	x2, x2, 440	# 2324
	lw		x1, -436(x2)	# 2324
	flw		f1, -12(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -436(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -440(x2)	# 2309
	addi	x2, x2, -444	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 444	# 2309
	lw		x1, -440(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -440(x2)	# 2310
	addi	x2, x2, -444	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 444	# 2310
	lw		x1, -440(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -440(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -444(x2)	# 2311
	addi	x2, x2, -448	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 448	# 2311
	lw		x1, -444(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -440(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -444(x2)	# 2312
	addi	x2, x2, -448	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 448	# 2312
	lw		x1, -444(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -440(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -444(x2)	# 2313
	addi	x2, x2, -448	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 448	# 2313
	lw		x1, -444(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -440(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -444(x2)	# 2314
	addi	x2, x2, -448	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 448	# 2314
	lw		x1, -444(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -440(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	flw		f1, -12(x2)	# 2309
	lw		x4, -32(x2)	# 2309
	sw		x1, -444(x2)	# 2309
	addi	x2, x2, -448	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 448	# 2309
	lw		x1, -444(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -444(x2)	# 2310
	addi	x2, x2, -448	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 448	# 2310
	lw		x1, -444(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -444(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -448(x2)	# 2311
	addi	x2, x2, -452	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 452	# 2311
	lw		x1, -448(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -444(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -448(x2)	# 2312
	addi	x2, x2, -452	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 452	# 2312
	lw		x1, -448(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -444(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -448(x2)	# 2313
	addi	x2, x2, -452	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 452	# 2313
	lw		x1, -448(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -444(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -448(x2)	# 2314
	addi	x2, x2, -452	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 452	# 2314
	lw		x1, -448(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -444(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -4(x2)	# 2327
	lw		x6, -8(x2)	# 2327
	addi	x5, x6, 0
	sw		x1, -448(x2)	# 2327
	addi	x2, x2, -452	# 2327
	jal		x1, min_caml_create_array	# 2327
	addi	x2, x2, 452	# 2327
	lw		x1, -448(x2)	# 2327
	flw		f1, -12(x2)	# 2309
	lw		x5, -32(x2)	# 2309
	sw		x4, -448(x2)	# 2309
	addi	x4, x5, 0
	sw		x1, -452(x2)	# 2309
	addi	x2, x2, -456	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 456	# 2309
	lw		x1, -452(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -124(x2)	# 2310
	sw		x1, -452(x2)	# 2310
	addi	x2, x2, -456	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 456	# 2310
	lw		x1, -452(x2)	# 2310
	flw		f1, -12(x2)	# 2311
	lw		x5, -32(x2)	# 2311
	sw		x4, -452(x2)	# 2311
	addi	x4, x5, 0
	sw		x1, -456(x2)	# 2311
	addi	x2, x2, -460	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 460	# 2311
	lw		x1, -456(x2)	# 2311
	lw		x5, -4(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -452(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -12(x2)	# 2312
	lw		x4, -32(x2)	# 2312
	sw		x1, -456(x2)	# 2312
	addi	x2, x2, -460	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 460	# 2312
	lw		x1, -456(x2)	# 2312
	lw		x5, -84(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -452(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -12(x2)	# 2313
	lw		x4, -32(x2)	# 2313
	sw		x1, -456(x2)	# 2313
	addi	x2, x2, -460	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 460	# 2313
	lw		x1, -456(x2)	# 2313
	lw		x5, -32(x2)	# 2313
	mul		x6, x30, x5	# 2313
	lw		x7, -452(x2)	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0
	sw		x1, -456(x2)	# 2314
	addi	x2, x2, -460	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 460	# 2314
	lw		x1, -456(x2)	# 2314
	lw		x5, -228(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -452(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	addi	x4, x3, 0	# 2329
	addi	x3, x3, 32	# 2329
	sw		x7, 28(x4)	# 2329
	lw		x6, -448(x2)	# 2329
	sw		x6, 24(x4)	# 2329
	lw		x6, -444(x2)	# 2329
	sw		x6, 20(x4)	# 2329
	lw		x6, -440(x2)	# 2329
	sw		x6, 16(x4)	# 2329
	lw		x6, -436(x2)	# 2329
	sw		x6, 12(x4)	# 2329
	lw		x6, -432(x2)	# 2329
	sw		x6, 8(x4)	# 2329
	lw		x6, -428(x2)	# 2329
	sw		x6, 4(x4)	# 2329
	lw		x6, -424(x2)	# 2329
	sw		x6, 0(x4)	# 2329
	lw		x6, -420(x2)	# 2335
	mul		x7, x30, x6	# 2335
	lw		x8, -416(x2)	# 2335
	add		x7, x8, x7	# 2335
	sw		x4, 0(x7)	# 2335
	lw		x4, -4(x2)	# 2336
	sub		x6, x6, x4	# 2336
	lw		x29, -208(x2)	# 2336
	addi	x5, x6, 0
	addi	x4, x8, 0
	sw		x1, -456(x2)	# 2336
	addi	x2, x2, -460	# 2336
	lw		x31, 0(x29)	# 2336
	jalr	x1, x31, 0	# 2336
	addi	x2, x2, 460	# 2336
	lw		x1, -456(x2)	# 2336
ble_cont.37322:
	sw		x4, -456(x2)	# 721
	sw		x1, -460(x2)	# 721
	addi	x2, x2, -464	# 721
	jal		x1, min_caml_read_float	# 721
	addi	x2, x2, 464	# 721
	lw		x1, -460(x2)	# 721
	lw		x4, -8(x2)	# 721
	mul		x5, x30, x4	# 721
	lw		x6, -28(x2)	# 721
	add		x5, x6, x5	# 721
	fsw		f1, 0(x5)	# 721
	sw		x1, -460(x2)	# 722
	addi	x2, x2, -464	# 722
	jal		x1, min_caml_read_float	# 722
	addi	x2, x2, 464	# 722
	lw		x1, -460(x2)	# 722
	lw		x4, -4(x2)	# 722
	mul		x5, x30, x4	# 722
	lw		x6, -28(x2)	# 722
	add		x5, x6, x5	# 722
	fsw		f1, 0(x5)	# 722
	sw		x1, -460(x2)	# 723
	addi	x2, x2, -464	# 723
	jal		x1, min_caml_read_float	# 723
	addi	x2, x2, 464	# 723
	lw		x1, -460(x2)	# 723
	lw		x4, -84(x2)	# 723
	mul		x5, x30, x4	# 723
	lw		x6, -28(x2)	# 723
	add		x5, x6, x5	# 723
	fsw		f1, 0(x5)	# 723
	sw		x1, -460(x2)	# 725
	addi	x2, x2, -464	# 725
	jal		x1, min_caml_read_float	# 725
	addi	x2, x2, 464	# 725
	lw		x1, -460(x2)	# 725
	fadd	f2, f0, f29	# 714
	fmul	f1, f1, f2	# 714
	lw		x29, -204(x2)	# 726
	fsw		f2, -460(x2)	# 726
	fsw		f1, -464(x2)	# 726
	sw		x1, -468(x2)	# 726
	addi	x2, x2, -472	# 726
	lw		x31, 0(x29)	# 726
	jalr	x1, x31, 0	# 726
	addi	x2, x2, 472	# 726
	lw		x1, -468(x2)	# 726
	flw		f2, -464(x2)	# 727
	lw		x29, -200(x2)	# 727
	fsw		f1, -468(x2)	# 727
	fadd	f1, f0, f2
	sw		x1, -472(x2)	# 727
	addi	x2, x2, -476	# 727
	lw		x31, 0(x29)	# 727
	jalr	x1, x31, 0	# 727
	addi	x2, x2, 476	# 727
	lw		x1, -472(x2)	# 727
	fsw		f1, -472(x2)	# 728
	sw		x1, -476(x2)	# 728
	addi	x2, x2, -480	# 728
	jal		x1, min_caml_read_float	# 728
	addi	x2, x2, 480	# 728
	lw		x1, -476(x2)	# 728
	flw		f2, -460(x2)	# 714
	fmul	f1, f1, f2	# 714
	lw		x29, -204(x2)	# 729
	fsw		f1, -476(x2)	# 729
	sw		x1, -480(x2)	# 729
	addi	x2, x2, -484	# 729
	lw		x31, 0(x29)	# 729
	jalr	x1, x31, 0	# 729
	addi	x2, x2, 484	# 729
	lw		x1, -480(x2)	# 729
	flw		f2, -476(x2)	# 730
	lw		x29, -200(x2)	# 730
	fsw		f1, -480(x2)	# 730
	fadd	f1, f0, f2
	sw		x1, -484(x2)	# 730
	addi	x2, x2, -488	# 730
	lw		x31, 0(x29)	# 730
	jalr	x1, x31, 0	# 730
	addi	x2, x2, 488	# 730
	lw		x1, -484(x2)	# 730
	flw		f2, -468(x2)	# 732
	fmul	f3, f2, f1	# 732
	fadd	f4, f0, f30	# 732
	fmul	f3, f3, f4	# 732
	lw		x4, -8(x2)	# 732
	mul		x5, x30, x4	# 732
	lw		x6, -104(x2)	# 732
	add		x5, x6, x5	# 732
	fsw		f3, 0(x5)	# 732
	lui		x5, %hi(l.31151)	# 733
	ori		x5, x0, %lo(l.31151)	# 733
	flw		f3, 0(x5)	# 733
	flw		f5, -472(x2)	# 733
	fmul	f3, f5, f3	# 733
	lw		x5, -4(x2)	# 733
	mul		x7, x30, x5	# 733
	add		x7, x6, x7	# 733
	fsw		f3, 0(x7)	# 733
	flw		f3, -480(x2)	# 734
	fmul	f6, f2, f3	# 734
	fmul	f4, f6, f4	# 734
	lw		x7, -84(x2)	# 734
	mul		x8, x30, x7	# 734
	add		x8, x6, x8	# 734
	fsw		f4, 0(x8)	# 734
	mul		x8, x30, x4	# 736
	lw		x9, -96(x2)	# 736
	add		x8, x9, x8	# 736
	fsw		f3, 0(x8)	# 736
	mul		x8, x30, x5	# 737
	add		x8, x9, x8	# 737
	flw		f4, -12(x2)	# 737
	fsw		f4, 0(x8)	# 737
	fsub	f6, f0, f1	# 123
	mul		x8, x30, x7	# 738
	add		x8, x9, x8	# 738
	fsw		f6, 0(x8)	# 738
	fsub	f5, f0, f5	# 123
	fmul	f1, f5, f1	# 740
	mul		x8, x30, x4	# 740
	lw		x9, -100(x2)	# 740
	add		x8, x9, x8	# 740
	fsw		f1, 0(x8)	# 740
	fsub	f1, f0, f2	# 123
	mul		x8, x30, x5	# 741
	add		x8, x9, x8	# 741
	fsw		f1, 0(x8)	# 741
	fmul	f1, f5, f3	# 742
	mul		x8, x30, x7	# 742
	add		x8, x9, x8	# 742
	fsw		f1, 0(x8)	# 742
	mul		x8, x30, x4	# 744
	lw		x10, -28(x2)	# 744
	add		x8, x10, x8	# 744
	flw		f1, 0(x8)	# 744
	mul		x8, x30, x4	# 744
	add		x8, x6, x8	# 744
	flw		f2, 0(x8)	# 744
	fsub	f1, f1, f2	# 744
	mul		x8, x30, x4	# 744
	lw		x11, -36(x2)	# 744
	add		x8, x11, x8	# 744
	fsw		f1, 0(x8)	# 744
	mul		x8, x30, x5	# 745
	add		x8, x10, x8	# 745
	flw		f1, 0(x8)	# 745
	mul		x8, x30, x5	# 745
	add		x8, x6, x8	# 745
	flw		f2, 0(x8)	# 745
	fsub	f1, f1, f2	# 745
	mul		x8, x30, x5	# 745
	add		x8, x11, x8	# 745
	fsw		f1, 0(x8)	# 745
	mul		x8, x30, x7	# 746
	add		x8, x10, x8	# 746
	flw		f1, 0(x8)	# 746
	mul		x8, x30, x7	# 746
	add		x8, x6, x8	# 746
	flw		f2, 0(x8)	# 746
	fsub	f1, f1, f2	# 746
	mul		x8, x30, x7	# 746
	add		x8, x11, x8	# 746
	fsw		f1, 0(x8)	# 746
	sw		x1, -484(x2)	# 753
	addi	x2, x2, -488	# 753
	jal		x1, min_caml_read_int	# 753
	addi	x2, x2, 488	# 753
	lw		x1, -484(x2)	# 753
	sw		x1, -484(x2)	# 756
	addi	x2, x2, -488	# 756
	jal		x1, min_caml_read_float	# 756
	addi	x2, x2, 488	# 756
	lw		x1, -484(x2)	# 756
	flw		f2, -460(x2)	# 714
	fmul	f1, f1, f2	# 714
	lw		x29, -200(x2)	# 757
	fsw		f1, -484(x2)	# 757
	sw		x1, -488(x2)	# 757
	addi	x2, x2, -492	# 757
	lw		x31, 0(x29)	# 757
	jalr	x1, x31, 0	# 757
	addi	x2, x2, 492	# 757
	lw		x1, -488(x2)	# 757
	fsub	f1, f0, f1	# 123
	lw		x4, -4(x2)	# 758
	mul		x5, x30, x4	# 758
	lw		x6, -40(x2)	# 758
	add		x5, x6, x5	# 758
	fsw		f1, 0(x5)	# 758
	sw		x1, -488(x2)	# 759
	addi	x2, x2, -492	# 759
	jal		x1, min_caml_read_float	# 759
	addi	x2, x2, 492	# 759
	lw		x1, -488(x2)	# 759
	flw		f2, -460(x2)	# 714
	fmul	f1, f1, f2	# 714
	flw		f2, -484(x2)	# 760
	lw		x29, -204(x2)	# 760
	fsw		f1, -488(x2)	# 760
	fadd	f1, f0, f2
	sw		x1, -492(x2)	# 760
	addi	x2, x2, -496	# 760
	lw		x31, 0(x29)	# 760
	jalr	x1, x31, 0	# 760
	addi	x2, x2, 496	# 760
	lw		x1, -492(x2)	# 760
	flw		f2, -488(x2)	# 761
	lw		x29, -200(x2)	# 761
	fsw		f1, -492(x2)	# 761
	fadd	f1, f0, f2
	sw		x1, -496(x2)	# 761
	addi	x2, x2, -500	# 761
	lw		x31, 0(x29)	# 761
	jalr	x1, x31, 0	# 761
	addi	x2, x2, 500	# 761
	lw		x1, -496(x2)	# 761
	flw		f2, -492(x2)	# 762
	fmul	f1, f2, f1	# 762
	lw		x4, -8(x2)	# 762
	mul		x5, x30, x4	# 762
	lw		x6, -40(x2)	# 762
	add		x5, x6, x5	# 762
	fsw		f1, 0(x5)	# 762
	flw		f1, -488(x2)	# 763
	lw		x29, -204(x2)	# 763
	sw		x1, -496(x2)	# 763
	addi	x2, x2, -500	# 763
	lw		x31, 0(x29)	# 763
	jalr	x1, x31, 0	# 763
	addi	x2, x2, 500	# 763
	lw		x1, -496(x2)	# 763
	flw		f2, -492(x2)	# 764
	fmul	f1, f2, f1	# 764
	lw		x4, -84(x2)	# 764
	mul		x5, x30, x4	# 764
	lw		x6, -40(x2)	# 764
	add		x5, x6, x5	# 764
	fsw		f1, 0(x5)	# 764
	sw		x1, -496(x2)	# 765
	addi	x2, x2, -500	# 765
	jal		x1, min_caml_read_float	# 765
	addi	x2, x2, 500	# 765
	lw		x1, -496(x2)	# 765
	lw		x4, -8(x2)	# 765
	mul		x5, x30, x4	# 765
	lw		x6, -44(x2)	# 765
	add		x5, x6, x5	# 765
	fsw		f1, 0(x5)	# 765
	lw		x29, -196(x2)	# 907
	sw		x1, -496(x2)	# 907
	addi	x2, x2, -500	# 907
	lw		x31, 0(x29)	# 907
	jalr	x1, x31, 0	# 907
	addi	x2, x2, 500	# 907
	lw		x1, -496(x2)	# 907
	lw		x4, -8(x2)	# 944
	lw		x29, -192(x2)	# 944
	sw		x1, -496(x2)	# 944
	addi	x2, x2, -500	# 944
	lw		x31, 0(x29)	# 944
	jalr	x1, x31, 0	# 944
	addi	x2, x2, 500	# 944
	lw		x1, -496(x2)	# 944
	lw		x4, -8(x2)	# 945
	lw		x29, -188(x2)	# 945
	sw		x1, -496(x2)	# 945
	addi	x2, x2, -500	# 945
	lw		x31, 0(x29)	# 945
	jalr	x1, x31, 0	# 945
	addi	x2, x2, 500	# 945
	lw		x1, -496(x2)	# 945
	lw		x5, -8(x2)	# 945
	mul		x6, x30, x5	# 945
	lw		x7, -72(x2)	# 945
	add		x6, x7, x6	# 945
	sw		x4, 0(x6)	# 945
	addi	x4, x0, 80	# 2152
	sw		x1, -496(x2)	# 2152
	addi	x2, x2, -500	# 2152
	jal		x1, min_caml_print_char	# 2152
	addi	x2, x2, 500	# 2152
	lw		x1, -496(x2)	# 2152
	addi	x4, x0, 51	# 2153
	sw		x1, -496(x2)	# 2153
	addi	x2, x2, -500	# 2153
	jal		x1, min_caml_print_char	# 2153
	addi	x2, x2, 500	# 2153
	lw		x1, -496(x2)	# 2153
	addi	x4, x0, 10	# 2154
	sw		x4, -496(x2)	# 2154
	sw		x1, -500(x2)	# 2154
	addi	x2, x2, -504	# 2154
	jal		x1, min_caml_print_char	# 2154
	addi	x2, x2, 504	# 2154
	lw		x1, -500(x2)	# 2154
	lw		x4, -8(x2)	# 2155
	mul		x5, x30, x4	# 2155
	lw		x6, -80(x2)	# 2155
	add		x5, x6, x5	# 2155
	lw		x5, 0(x5)	# 2155
	addi	x4, x5, 0
	sw		x1, -500(x2)	# 2155
	addi	x2, x2, -504	# 2155
	jal		x1, min_caml_print_int	# 2155
	addi	x2, x2, 504	# 2155
	lw		x1, -500(x2)	# 2155
	addi	x4, x0, 32	# 2156
	sw		x4, -500(x2)	# 2156
	sw		x1, -504(x2)	# 2156
	addi	x2, x2, -508	# 2156
	jal		x1, min_caml_print_char	# 2156
	addi	x2, x2, 508	# 2156
	lw		x1, -504(x2)	# 2156
	lw		x4, -4(x2)	# 2157
	mul		x5, x30, x4	# 2157
	lw		x6, -80(x2)	# 2157
	add		x5, x6, x5	# 2157
	lw		x5, 0(x5)	# 2157
	addi	x4, x5, 0
	sw		x1, -504(x2)	# 2157
	addi	x2, x2, -508	# 2157
	jal		x1, min_caml_print_int	# 2157
	addi	x2, x2, 508	# 2157
	lw		x1, -504(x2)	# 2157
	lw		x4, -500(x2)	# 2158
	sw		x1, -504(x2)	# 2158
	addi	x2, x2, -508	# 2158
	jal		x1, min_caml_print_char	# 2158
	addi	x2, x2, 508	# 2158
	lw		x1, -504(x2)	# 2158
	addi	x4, x0, 255	# 2159
	sw		x1, -504(x2)	# 2159
	addi	x2, x2, -508	# 2159
	jal		x1, min_caml_print_int	# 2159
	addi	x2, x2, 508	# 2159
	lw		x1, -504(x2)	# 2159
	lw		x4, -496(x2)	# 2160
	sw		x1, -504(x2)	# 2160
	addi	x2, x2, -508	# 2160
	jal		x1, min_caml_print_char	# 2160
	addi	x2, x2, 508	# 2160
	lw		x1, -504(x2)	# 2160
	lw		x4, -228(x2)	# 2458
	lw		x29, -184(x2)	# 2458
	sw		x1, -504(x2)	# 2458
	addi	x2, x2, -508	# 2458
	lw		x31, 0(x29)	# 2458
	jalr	x1, x31, 0	# 2458
	addi	x2, x2, 508	# 2458
	lw		x1, -504(x2)	# 2458
	addi	x4, x0, 9	# 2459
	lw		x5, -8(x2)	# 2459
	lw		x29, -180(x2)	# 2459
	addi	x6, x5, 0
	sw		x1, -504(x2)	# 2459
	addi	x2, x2, -508	# 2459
	lw		x31, 0(x29)	# 2459
	jalr	x1, x31, 0	# 2459
	addi	x2, x2, 508	# 2459
	lw		x1, -504(x2)	# 2459
	lw		x4, -228(x2)	# 2452
	mul		x5, x30, x4	# 2452
	lw		x6, -120(x2)	# 2452
	add		x5, x6, x5	# 2452
	lw		x5, 0(x5)	# 2452
	addi	x6, x0, 119	# 2452
	lw		x29, -176(x2)	# 2452
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -504(x2)	# 2452
	addi	x2, x2, -508	# 2452
	lw		x31, 0(x29)	# 2452
	jalr	x1, x31, 0	# 2452
	addi	x2, x2, 508	# 2452
	lw		x1, -504(x2)	# 2452
	lw		x4, -32(x2)	# 2453
	lw		x29, -172(x2)	# 2453
	sw		x1, -504(x2)	# 2453
	addi	x2, x2, -508	# 2453
	lw		x31, 0(x29)	# 2453
	jalr	x1, x31, 0	# 2453
	addi	x2, x2, 508	# 2453
	lw		x1, -504(x2)	# 2453
	lw		x4, -8(x2)	# 296
	mul		x5, x30, x4	# 296
	lw		x6, -40(x2)	# 296
	add		x5, x6, x5	# 296
	flw		f1, 0(x5)	# 296
	mul		x5, x30, x4	# 296
	lw		x7, -132(x2)	# 296
	add		x5, x7, x5	# 296
	fsw		f1, 0(x5)	# 296
	lw		x5, -4(x2)	# 297
	mul		x8, x30, x5	# 297
	add		x8, x6, x8	# 297
	flw		f1, 0(x8)	# 297
	mul		x8, x30, x5	# 297
	add		x8, x7, x8	# 297
	fsw		f1, 0(x8)	# 297
	lw		x8, -84(x2)	# 298
	mul		x9, x30, x8	# 298
	add		x9, x6, x9	# 298
	flw		f1, 0(x9)	# 298
	mul		x9, x30, x8	# 298
	add		x7, x7, x9	# 298
	fsw		f1, 0(x7)	# 298
	mul		x7, x30, x4	# 1324
	lw		x9, 0(x2)	# 1324
	add		x7, x9, x7	# 1324
	lw		x7, 0(x7)	# 1324
	sub		x7, x7, x5	# 1324
	lw		x10, -140(x2)	# 1324
	lw		x29, -168(x2)	# 1324
	addi	x5, x7, 0
	addi	x4, x10, 0
	sw		x1, -504(x2)	# 1324
	addi	x2, x2, -508	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 508	# 1324
	lw		x1, -504(x2)	# 1324
	lw		x4, -8(x2)	# 2542
	mul		x5, x30, x4	# 2542
	lw		x6, 0(x2)	# 2542
	add		x5, x6, x5	# 2542
	lw		x5, 0(x5)	# 2542
	lw		x7, -4(x2)	# 2542
	sub		x5, x5, x7	# 2542
	ble		x4, x5, ble.37325	# 2507
	jal		x0, ble_cont.37324	# 2507
ble.37325:
	mul		x8, x30, x5	# 2508
	lw		x9, -20(x2)	# 2508
	add		x8, x9, x8	# 2508
	lw		x8, 0(x8)	# 2508
	lw		x9, 8(x8)	# 400
	lw		x10, -84(x2)	# 2509
	beq		x9, x10, beq.37327	# 2509
	jal		x0, beq_cont.37326	# 2509
beq.37327:
	lw		x9, 28(x8)	# 498
	mul		x11, x30, x4	# 503
	add		x9, x9, x11	# 503
	flw		f1, 0(x9)	# 503
	fadd	f2, f0, f16	# 2510
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.37329	# 125
	jal		x0, fle_cont.37328	# 125
fle_else.37329:
	lw		x9, 4(x8)	# 390
	beq		x9, x7, beq.37331	# 2513
	beq		x9, x10, beq.37333	# 2515
	jal		x0, beq_cont.37332	# 2515
beq.37333:
	lw		x9, -228(x2)	# 2492
	mul		x5, x5, x9	# 2492
	addi	x5, x5, 1	# 2492
	mul		x9, x30, x4	# 2493
	lw		x11, -156(x2)	# 2493
	add		x9, x11, x9	# 2493
	lw		x9, 0(x9)	# 2493
	lw		x12, 28(x8)	# 498
	mul		x13, x30, x4	# 503
	add		x12, x12, x13	# 503
	flw		f1, 0(x12)	# 503
	fsub	f1, f2, f1	# 2494
	lw		x12, 16(x8)	# 458
	mul		x13, x30, x4	# 329
	lw		x14, -40(x2)	# 329
	add		x13, x14, x13	# 329
	flw		f2, 0(x13)	# 329
	mul		x13, x30, x4	# 329
	add		x13, x12, x13	# 329
	flw		f3, 0(x13)	# 329
	fmul	f3, f2, f3	# 329
	mul		x13, x30, x7	# 329
	add		x13, x14, x13	# 329
	flw		f4, 0(x13)	# 329
	mul		x13, x30, x7	# 329
	add		x13, x12, x13	# 329
	flw		f5, 0(x13)	# 329
	fmul	f5, f4, f5	# 329
	fadd	f3, f3, f5	# 329
	mul		x13, x30, x10	# 329
	add		x13, x14, x13	# 329
	flw		f5, 0(x13)	# 329
	mul		x13, x30, x10	# 329
	add		x12, x12, x13	# 329
	flw		f6, 0(x12)	# 329
	fmul	f6, f5, f6	# 329
	fadd	f3, f3, f6	# 329
	fadd	f6, f0, f28	# 2498
	lw		x12, 16(x8)	# 428
	mul		x13, x30, x4	# 433
	add		x12, x12, x13	# 433
	flw		f7, 0(x12)	# 433
	fmul	f7, f6, f7	# 2498
	fmul	f7, f7, f3	# 2498
	fsub	f2, f7, f2	# 2498
	lw		x12, 16(x8)	# 438
	mul		x13, x30, x7	# 443
	add		x12, x12, x13	# 443
	flw		f7, 0(x12)	# 443
	fmul	f7, f6, f7	# 2499
	fmul	f7, f7, f3	# 2499
	fsub	f4, f7, f4	# 2499
	lw		x8, 16(x8)	# 448
	mul		x12, x30, x10	# 453
	add		x8, x8, x12	# 453
	flw		f7, 0(x8)	# 453
	fmul	f6, f6, f7	# 2500
	fmul	f3, f6, f3	# 2500
	fsub	f3, f3, f5	# 2500
	flw		f5, -12(x2)	# 2419
	lw		x8, -32(x2)	# 2419
	sw		x9, -504(x2)	# 2419
	sw		x5, -508(x2)	# 2419
	fsw		f1, -512(x2)	# 2419
	fsw		f3, -516(x2)	# 2419
	fsw		f4, -520(x2)	# 2419
	fsw		f2, -524(x2)	# 2419
	addi	x4, x8, 0
	fadd	f1, f0, f5
	sw		x1, -528(x2)	# 2419
	addi	x2, x2, -532	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 532	# 2419
	lw		x1, -528(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lw		x4, -8(x2)	# 2420
	mul		x6, x30, x4	# 2420
	lw		x7, 0(x2)	# 2420
	add		x6, x7, x6	# 2420
	lw		x6, 0(x6)	# 2420
	sw		x5, -528(x2)	# 2420
	addi	x4, x6, 0
	sw		x1, -532(x2)	# 2420
	addi	x2, x2, -536	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 536	# 2420
	lw		x1, -532(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -528(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	lw		x6, -8(x2)	# 277
	mul		x7, x30, x6	# 277
	add		x7, x4, x7	# 277
	flw		f1, -524(x2)	# 277
	fsw		f1, 0(x7)	# 277
	lw		x7, -4(x2)	# 278
	mul		x8, x30, x7	# 278
	add		x8, x4, x8	# 278
	flw		f1, -520(x2)	# 278
	fsw		f1, 0(x8)	# 278
	lw		x8, -84(x2)	# 279
	mul		x9, x30, x8	# 279
	add		x4, x4, x9	# 279
	flw		f1, -516(x2)	# 279
	fsw		f1, 0(x4)	# 279
	mul		x4, x30, x6	# 1324
	lw		x9, 0(x2)	# 1324
	add		x4, x9, x4	# 1324
	lw		x4, 0(x4)	# 1324
	sub		x4, x4, x7	# 1324
	lw		x29, -168(x2)	# 1324
	sw		x5, -532(x2)	# 1324
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -536(x2)	# 1324
	addi	x2, x2, -540	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 540	# 1324
	lw		x1, -536(x2)	# 1324
	addi	x4, x3, 0	# 2473
	addi	x3, x3, 12	# 2473
	flw		f1, -512(x2)	# 2473
	fsw		f1, 8(x4)	# 2473
	lw		x5, -532(x2)	# 2473
	sw		x5, 4(x4)	# 2473
	lw		x5, -508(x2)	# 2473
	sw		x5, 0(x4)	# 2473
	lw		x5, -504(x2)	# 2473
	mul		x6, x30, x5	# 2473
	lw		x7, -152(x2)	# 2473
	add		x6, x7, x6	# 2473
	sw		x4, 0(x6)	# 2473
	addi	x4, x5, 1	# 2501
	lw		x5, -8(x2)	# 2501
	mul		x6, x30, x5	# 2501
	lw		x7, -156(x2)	# 2501
	add		x6, x7, x6	# 2501
	sw		x4, 0(x6)	# 2501
beq_cont.37332:
	jal		x0, beq_cont.37330	# 2513
beq.37331:
	lw		x9, -228(x2)	# 2478
	mul		x5, x5, x9	# 2478
	mul		x9, x30, x4	# 2479
	lw		x11, -156(x2)	# 2479
	add		x9, x11, x9	# 2479
	lw		x9, 0(x9)	# 2479
	lw		x8, 28(x8)	# 498
	mul		x12, x30, x4	# 503
	add		x8, x8, x12	# 503
	flw		f1, 0(x8)	# 503
	fsub	f1, f2, f1	# 2480
	mul		x8, x30, x4	# 2481
	lw		x12, -40(x2)	# 2481
	add		x8, x12, x8	# 2481
	flw		f2, 0(x8)	# 2481
	fsub	f3, f0, f2	# 123
	mul		x8, x30, x7	# 2482
	add		x8, x12, x8	# 2482
	flw		f4, 0(x8)	# 2482
	fsub	f4, f0, f4	# 123
	mul		x8, x30, x10	# 2483
	add		x8, x12, x8	# 2483
	flw		f5, 0(x8)	# 2483
	fsub	f5, f0, f5	# 123
	addi	x8, x5, 1	# 2484
	flw		f6, -12(x2)	# 2419
	lw		x13, -32(x2)	# 2419
	fsw		f3, -536(x2)	# 2419
	sw		x5, -540(x2)	# 2419
	sw		x9, -544(x2)	# 2419
	sw		x8, -548(x2)	# 2419
	fsw		f1, -552(x2)	# 2419
	fsw		f5, -556(x2)	# 2419
	fsw		f4, -560(x2)	# 2419
	fsw		f2, -564(x2)	# 2419
	addi	x4, x13, 0
	fadd	f1, f0, f6
	sw		x1, -568(x2)	# 2419
	addi	x2, x2, -572	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 572	# 2419
	lw		x1, -568(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lw		x4, -8(x2)	# 2420
	mul		x6, x30, x4	# 2420
	lw		x7, 0(x2)	# 2420
	add		x6, x7, x6	# 2420
	lw		x6, 0(x6)	# 2420
	sw		x5, -568(x2)	# 2420
	addi	x4, x6, 0
	sw		x1, -572(x2)	# 2420
	addi	x2, x2, -576	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 576	# 2420
	lw		x1, -572(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -568(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	lw		x6, -8(x2)	# 277
	mul		x7, x30, x6	# 277
	add		x7, x4, x7	# 277
	flw		f1, -564(x2)	# 277
	fsw		f1, 0(x7)	# 277
	lw		x7, -4(x2)	# 278
	mul		x8, x30, x7	# 278
	add		x8, x4, x8	# 278
	flw		f1, -560(x2)	# 278
	fsw		f1, 0(x8)	# 278
	lw		x8, -84(x2)	# 279
	mul		x9, x30, x8	# 279
	add		x4, x4, x9	# 279
	flw		f2, -556(x2)	# 279
	fsw		f2, 0(x4)	# 279
	mul		x4, x30, x6	# 1324
	lw		x9, 0(x2)	# 1324
	add		x4, x9, x4	# 1324
	lw		x4, 0(x4)	# 1324
	sub		x4, x4, x7	# 1324
	lw		x29, -168(x2)	# 1324
	sw		x5, -572(x2)	# 1324
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -576(x2)	# 1324
	addi	x2, x2, -580	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 580	# 1324
	lw		x1, -576(x2)	# 1324
	addi	x4, x3, 0	# 2473
	addi	x3, x3, 12	# 2473
	flw		f1, -552(x2)	# 2473
	fsw		f1, 8(x4)	# 2473
	lw		x5, -572(x2)	# 2473
	sw		x5, 4(x4)	# 2473
	lw		x5, -548(x2)	# 2473
	sw		x5, 0(x4)	# 2473
	lw		x5, -544(x2)	# 2473
	mul		x6, x30, x5	# 2473
	lw		x7, -152(x2)	# 2473
	add		x6, x7, x6	# 2473
	sw		x4, 0(x6)	# 2473
	addi	x4, x5, 1	# 2485
	lw		x6, -540(x2)	# 2485
	addi	x8, x6, 2	# 2485
	lw		x9, -4(x2)	# 2485
	mul		x10, x30, x9	# 2485
	lw		x11, -40(x2)	# 2485
	add		x10, x11, x10	# 2485
	flw		f2, 0(x10)	# 2485
	flw		f3, -12(x2)	# 2419
	lw		x10, -32(x2)	# 2419
	sw		x4, -576(x2)	# 2419
	sw		x8, -580(x2)	# 2419
	fsw		f2, -584(x2)	# 2419
	addi	x4, x10, 0
	fadd	f1, f0, f3
	sw		x1, -588(x2)	# 2419
	addi	x2, x2, -592	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 592	# 2419
	lw		x1, -588(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lw		x4, -8(x2)	# 2420
	mul		x6, x30, x4	# 2420
	lw		x7, 0(x2)	# 2420
	add		x6, x7, x6	# 2420
	lw		x6, 0(x6)	# 2420
	sw		x5, -588(x2)	# 2420
	addi	x4, x6, 0
	sw		x1, -592(x2)	# 2420
	addi	x2, x2, -596	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 596	# 2420
	lw		x1, -592(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -588(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	lw		x6, -8(x2)	# 277
	mul		x7, x30, x6	# 277
	add		x7, x4, x7	# 277
	flw		f1, -536(x2)	# 277
	fsw		f1, 0(x7)	# 277
	lw		x7, -4(x2)	# 278
	mul		x8, x30, x7	# 278
	add		x8, x4, x8	# 278
	flw		f2, -584(x2)	# 278
	fsw		f2, 0(x8)	# 278
	lw		x8, -84(x2)	# 279
	mul		x9, x30, x8	# 279
	add		x4, x4, x9	# 279
	flw		f2, -556(x2)	# 279
	fsw		f2, 0(x4)	# 279
	mul		x4, x30, x6	# 1324
	lw		x9, 0(x2)	# 1324
	add		x4, x9, x4	# 1324
	lw		x4, 0(x4)	# 1324
	sub		x4, x4, x7	# 1324
	lw		x29, -168(x2)	# 1324
	sw		x5, -592(x2)	# 1324
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -596(x2)	# 1324
	addi	x2, x2, -600	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 600	# 1324
	lw		x1, -596(x2)	# 1324
	addi	x4, x3, 0	# 2473
	addi	x3, x3, 12	# 2473
	flw		f1, -552(x2)	# 2473
	fsw		f1, 8(x4)	# 2473
	lw		x5, -592(x2)	# 2473
	sw		x5, 4(x4)	# 2473
	lw		x5, -580(x2)	# 2473
	sw		x5, 0(x4)	# 2473
	lw		x5, -576(x2)	# 2473
	mul		x5, x30, x5	# 2473
	lw		x6, -152(x2)	# 2473
	add		x5, x6, x5	# 2473
	sw		x4, 0(x5)	# 2473
	lw		x4, -544(x2)	# 2486
	addi	x5, x4, 2	# 2486
	lw		x7, -540(x2)	# 2486
	addi	x7, x7, 3	# 2486
	lw		x8, -84(x2)	# 2486
	mul		x9, x30, x8	# 2486
	lw		x10, -40(x2)	# 2486
	add		x9, x10, x9	# 2486
	flw		f2, 0(x9)	# 2486
	flw		f3, -12(x2)	# 2419
	lw		x9, -32(x2)	# 2419
	sw		x5, -596(x2)	# 2419
	sw		x7, -600(x2)	# 2419
	fsw		f2, -604(x2)	# 2419
	addi	x4, x9, 0
	fadd	f1, f0, f3
	sw		x1, -608(x2)	# 2419
	addi	x2, x2, -612	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 612	# 2419
	lw		x1, -608(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lw		x4, -8(x2)	# 2420
	mul		x6, x30, x4	# 2420
	lw		x7, 0(x2)	# 2420
	add		x6, x7, x6	# 2420
	lw		x6, 0(x6)	# 2420
	sw		x5, -608(x2)	# 2420
	addi	x4, x6, 0
	sw		x1, -612(x2)	# 2420
	addi	x2, x2, -616	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 616	# 2420
	lw		x1, -612(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -608(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	lw		x6, -8(x2)	# 277
	mul		x7, x30, x6	# 277
	add		x7, x4, x7	# 277
	flw		f1, -536(x2)	# 277
	fsw		f1, 0(x7)	# 277
	lw		x7, -4(x2)	# 278
	mul		x8, x30, x7	# 278
	add		x8, x4, x8	# 278
	flw		f1, -560(x2)	# 278
	fsw		f1, 0(x8)	# 278
	lw		x8, -84(x2)	# 279
	mul		x9, x30, x8	# 279
	add		x4, x4, x9	# 279
	flw		f1, -604(x2)	# 279
	fsw		f1, 0(x4)	# 279
	mul		x4, x30, x6	# 1324
	lw		x9, 0(x2)	# 1324
	add		x4, x9, x4	# 1324
	lw		x4, 0(x4)	# 1324
	sub		x4, x4, x7	# 1324
	lw		x29, -168(x2)	# 1324
	sw		x5, -612(x2)	# 1324
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -616(x2)	# 1324
	addi	x2, x2, -620	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 620	# 1324
	lw		x1, -616(x2)	# 1324
	addi	x4, x3, 0	# 2473
	addi	x3, x3, 12	# 2473
	flw		f1, -552(x2)	# 2473
	fsw		f1, 8(x4)	# 2473
	lw		x5, -612(x2)	# 2473
	sw		x5, 4(x4)	# 2473
	lw		x5, -600(x2)	# 2473
	sw		x5, 0(x4)	# 2473
	lw		x5, -596(x2)	# 2473
	mul		x5, x30, x5	# 2473
	lw		x6, -152(x2)	# 2473
	add		x5, x6, x5	# 2473
	sw		x4, 0(x5)	# 2473
	lw		x4, -544(x2)	# 2487
	addi	x4, x4, 3	# 2487
	lw		x5, -8(x2)	# 2487
	mul		x6, x30, x5	# 2487
	lw		x7, -156(x2)	# 2487
	add		x6, x7, x6	# 2487
	sw		x4, 0(x6)	# 2487
beq_cont.37330:
fle_cont.37328:
beq_cont.37326:
ble_cont.37324:
	lw		x4, -8(x2)	# 2255
	mul		x5, x30, x4	# 2255
	lw		x6, -92(x2)	# 2255
	add		x5, x6, x5	# 2255
	flw		f1, 0(x5)	# 2255
	lw		x5, -4(x2)	# 2255
	mul		x6, x30, x5	# 2255
	lw		x7, -88(x2)	# 2255
	add		x6, x7, x6	# 2255
	lw		x6, 0(x6)	# 2255
	sub		x6, x4, x6	# 2255
	fsw		f1, -616(x2)	# 2255
	addi	x4, x6, 0
	sw		x1, -620(x2)	# 2255
	addi	x2, x2, -624	# 2255
	jal		x1, min_caml_float_of_int	# 2255
	addi	x2, x2, 624	# 2255
	lw		x1, -620(x2)	# 2255
	flw		f2, -616(x2)	# 2255
	fmul	f1, f2, f1	# 2255
	lw		x6, -8(x2)	# 2258
	mul		x4, x30, x6	# 2258
	lw		x5, -100(x2)	# 2258
	add		x4, x5, x4	# 2258
	flw		f2, 0(x4)	# 2258
	fmul	f2, f1, f2	# 2258
	mul		x4, x30, x6	# 2258
	lw		x7, -104(x2)	# 2258
	add		x4, x7, x4	# 2258
	flw		f3, 0(x4)	# 2258
	fadd	f2, f2, f3	# 2258
	lw		x4, -4(x2)	# 2259
	mul		x8, x30, x4	# 2259
	add		x8, x5, x8	# 2259
	flw		f3, 0(x8)	# 2259
	fmul	f3, f1, f3	# 2259
	mul		x8, x30, x4	# 2259
	add		x8, x7, x8	# 2259
	flw		f4, 0(x8)	# 2259
	fadd	f3, f3, f4	# 2259
	lw		x8, -84(x2)	# 2260
	mul		x9, x30, x8	# 2260
	add		x5, x5, x9	# 2260
	flw		f4, 0(x5)	# 2260
	fmul	f1, f1, f4	# 2260
	mul		x5, x30, x8	# 2260
	add		x5, x7, x5	# 2260
	flw		f4, 0(x5)	# 2260
	fadd	f1, f1, f4	# 2260
	mul		x5, x30, x6	# 2261
	lw		x7, -80(x2)	# 2261
	add		x5, x7, x5	# 2261
	lw		x5, 0(x5)	# 2261
	sub		x5, x5, x4	# 2261
	lw		x4, -376(x2)	# 2261
	lw		x29, -164(x2)	# 2261
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -620(x2)	# 2261
	addi	x2, x2, -624	# 2261
	lw		x31, 0(x29)	# 2261
	jalr	x1, x31, 0	# 2261
	addi	x2, x2, 624	# 2261
	lw		x1, -620(x2)	# 2261
	lw		x4, -8(x2)	# 2544
	lw		x5, -296(x2)	# 2544
	lw		x6, -376(x2)	# 2544
	lw		x7, -456(x2)	# 2544
	lw		x8, -84(x2)	# 2544
	lw		x9, -32(x2)	# 2544
	lw		x29, -160(x2)	# 2544
	sw		x1, -620(x2)	# 2544
	addi	x2, x2, -624	# 2544
	lw		x31, 0(x29)	# 2544
	jalr	x1, x31, 0	# 2544
	addi	x2, x2, 624	# 2544
	lw		x1, -620(x2)	# 2544
	EXIT	
