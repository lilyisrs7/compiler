l.0:	# 8388608.000000
	.word	8388608.000000
l.26432:	# 1.000000
	.word	1.000000
l.26441:	# 4.000000
	.word	4.000000
l.26437:	# 4.500000
	.word	4.500000
l.26917:	# 0.010000
	.word	0.010000
l.26915:	# -0.200000
	.word	-0.200000
l.27036:	# -0.100000
	.word	-0.100000
l.27804:	# 100000000.000000
	.word	100000000.000000
l.26430:	# -0.500000
	.word	-0.500000
l.28502:	# 150.000000
	.word	150.000000
l.28290:	# -150.000000
	.word	-150.000000
l.26434:	# 0.500000
	.word	0.500000
l.26439:	# -4.500000
	.word	-4.500000
l.26578:	# 2.000000
	.word	2.000000
l.28012:	# 3.141593
	.word	3.141593
l.28024:	# 0.150000
	.word	0.150000
l.26527:	# -1.000000
	.word	-1.000000
l.28006:	# 0.000100
	.word	0.000100
l.26498:	# 0.017453
	.word	0.017453
l.29492:	# 200.000000
	.word	200.000000
l.29496:	# -200.000000
	.word	-200.000000
l.28049:	# 0.250000
	.word	0.250000
l.28008:	# 15.000000
	.word	15.000000
l.28010:	# 30.000000
	.word	30.000000
l.28026:	# 0.300000
	.word	0.300000
l.28063:	# 20.000000
	.word	20.000000
l.28038:	# 10.000000
	.word	10.000000
l.28113:	# 0.003906
	.word	0.003906
l.28141:	# -2.000000
	.word	-2.000000
l.29346:	# 128.000000
	.word	128.000000
l.29336:	# 0.785398
	.word	0.785398
l.29334:	# 1.570796
	.word	1.570796
l.29332:	# 6.283185
	.word	6.283185
l.29330:	# 3.141593
	.word	3.141593
l.29315:	# 1000000000.000000
	.word	1000000000.000000
l.29311:	# 255.000000
	.word	255.000000
l.29297:	# 0.000000
	.word	0.000000
l.29270:	# 0.900000
	.word	0.900000
l.26469:	# 0.142857
	.word	0.142857
l.26471:	# 0.111111
	.word	0.111111
l.26473:	# 0.089764
	.word	0.089764
l.26467:	# 0.200000
	.word	0.200000
l.28237:	# 0.100000
	.word	0.100000
l.26465:	# 0.333333
	.word	0.333333
l.26463:	# 0.437500
	.word	0.437500
l.26460:	# 2.437500
	.word	2.437500
l.26454:	# 0.001370
	.word	0.001370
l.26444:	# 0.166667
	.word	0.166667
l.26446:	# 0.008333
	.word	0.008333
l.26448:	# 0.000196
	.word	0.000196
l.26452:	# 0.041664
	.word	0.041664
l.28060:	# 0.050000
	.word	0.050000
int_of_float_rem.2530.18012:
	lw		x5, 4(x29)	# 145
	fadd	f2, f0, f23	# 145
	fle		f2, f1, fle.31880	# 145
	fadd	f2, f0, f16	# 148
	fadd	f1, f1, f2	# 148
	sub		x4, x4, x5	# 148
	lw		x31, 0(x29)	# 148
	jalr	x0, x31, 0	# 148
fle.31880:
	fadd	f2, f0, f26	# 146
	fle		f2, f1, fle.31881	# 146
	jalr	x0, x1, 0	# 146
fle.31881:
	fadd	f2, f0, f16	# 147
	fsub	f1, f1, f2	# 147
	add		x4, x4, x5	# 147
	lw		x31, 0(x29)	# 147
	jalr	x0, x31, 0	# 147
int_of_float_four.2533.18015:
	lw		x5, 4(x29)	# 150
	fadd	f2, f0, f18	# 150
	fle		f2, f1, fle.31882	# 150
	fadd	f2, f0, f27	# 151
	fle		f2, f1, fle.31883	# 151
	fadd	f2, f0, f17	# 151
	fadd	f1, f1, f2	# 151
	addi	x5, x0, 4	# 151
	sub		x4, x4, x5	# 151
	lw		x31, 0(x29)	# 151
	jalr	x0, x31, 0	# 151
fle.31883:
	addi	x29, x5, 0	# 152
	lw		x31, 0(x29)	# 152
	jalr	x0, x31, 0	# 152
fle.31882:
	fadd	f2, f0, f17	# 150
	fsub	f1, f1, f2	# 150
	addi	x4, x4, 4	# 150
	lw		x31, 0(x29)	# 150
	jalr	x0, x31, 0	# 150
sin.2548.18022:
	flw		f2, 20(x29)	# 199
	flw		f3, 16(x29)	# 199
	flw		f4, 12(x29)	# 199
	flw		f5, 8(x29)	# 199
	flw		f6, 4(x29)	# 199
	fle		f6, f1, fle.31884	# 199
	fsub	f1, f0, f1	# 199
	sw		x1, 0(x2)	# 199
	addi	x2, x2, -4	# 199
	lw		x31, 0(x29)	# 199
	jalr	x1, x31, 0	# 199
	addi	x2, x2, 4	# 199
	lw		x1, 0(x2)	# 199
	fsub	f1, f0, f1	# 199
	jalr	x0, x1, 0	# 199
fle.31884:
	fle		f4, f1, fle.31885	# 200
	fle		f5, f1, fle.31886	# 201
	fle		f1, f3, fle.31887	# 202
	fsub	f1, f5, f1	# 202
	lw		x31, 0(x29)	# 202
	jalr	x0, x31, 0	# 202
fle.31887:
	fle		f2, f1, fle.31888	# 203
	fmul	f2, f1, f1	# 189
	fmul	f3, f1, f2	# 190
	lui		x4, %hi(l.26444)	# 191
	ori		x4, x0, %lo(l.26444)	# 191
	flw		f4, 0(x4)	# 191
	fmul	f4, f4, f3	# 191
	fsub	f1, f1, f4	# 191
	lui		x4, %hi(l.26446)	# 191
	ori		x4, x0, %lo(l.26446)	# 191
	flw		f4, 0(x4)	# 191
	fmul	f4, f4, f2	# 191
	fmul	f4, f4, f3	# 191
	fadd	f1, f1, f4	# 191
	lui		x4, %hi(l.26448)	# 191
	ori		x4, x0, %lo(l.26448)	# 191
	flw		f4, 0(x4)	# 191
	fmul	f4, f4, f2	# 191
	fmul	f2, f4, f2	# 191
	fmul	f2, f2, f3	# 191
	fsub	f1, f1, f2	# 191
	jalr	x0, x1, 0	# 191
fle.31888:
	fsub	f1, f3, f1	# 203
	fmul	f1, f1, f1	# 194
	fmul	f2, f1, f1	# 195
	fadd	f3, f0, f16	# 196
	fadd	f4, f0, f26	# 196
	fmul	f4, f4, f1	# 196
	fsub	f3, f3, f4	# 196
	lui		x4, %hi(l.26452)	# 196
	ori		x4, x0, %lo(l.26452)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f2	# 196
	fadd	f3, f3, f4	# 196
	lui		x4, %hi(l.26454)	# 196
	ori		x4, x0, %lo(l.26454)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f1, f4, f1	# 196
	fmul	f1, f1, f2	# 196
	fsub	f1, f3, f1	# 196
	jalr	x0, x1, 0	# 196
fle.31886:
	fsub	f1, f1, f5	# 201
	sw		x1, 0(x2)	# 201
	addi	x2, x2, -4	# 201
	lw		x31, 0(x29)	# 201
	jalr	x1, x31, 0	# 201
	addi	x2, x2, 4	# 201
	lw		x1, 0(x2)	# 201
	fsub	f1, f0, f1	# 201
	jalr	x0, x1, 0	# 201
fle.31885:
	fsub	f1, f1, f4	# 200
	lw		x31, 0(x29)	# 200
	jalr	x0, x31, 0	# 200
cos.2550.18024:
	lw		x4, 16(x29)	# 207
	flw		f2, 12(x29)	# 207
	flw		f3, 8(x29)	# 207
	flw		f4, 4(x29)	# 207
	fle		f4, f1, fle.31889	# 207
	fsub	f1, f0, f1	# 207
	lw		x31, 0(x29)	# 207
	jalr	x0, x31, 0	# 207
fle.31889:
	fle		f1, f2, fle.31890	# 208
	fsub	f1, f3, f1	# 208
	addi	x29, x4, 0	# 208
	lw		x31, 0(x29)	# 208
	jalr	x0, x31, 0	# 208
fle.31890:
	fmul	f1, f1, f1	# 194
	fmul	f2, f1, f1	# 195
	fadd	f3, f0, f16	# 196
	fadd	f4, f0, f26	# 196
	fmul	f4, f4, f1	# 196
	fsub	f3, f3, f4	# 196
	lui		x4, %hi(l.26452)	# 196
	ori		x4, x0, %lo(l.26452)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f2	# 196
	fadd	f3, f3, f4	# 196
	lui		x4, %hi(l.26454)	# 196
	ori		x4, x0, %lo(l.26454)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f1, f4, f1	# 196
	fmul	f1, f1, f2	# 196
	fsub	f1, f3, f1	# 196
	jalr	x0, x1, 0	# 196
atan.2552.18026:
	flw		f2, 12(x29)	# 212
	flw		f3, 8(x29)	# 212
	flw		f4, 4(x29)	# 212
	fle		f4, f1, fle.31891	# 212
	fsub	f1, f0, f1	# 212
	sw		x1, 0(x2)	# 212
	addi	x2, x2, -4	# 212
	lw		x31, 0(x29)	# 212
	jalr	x1, x31, 0	# 212
	addi	x2, x2, 4	# 212
	lw		x1, 0(x2)	# 212
	fsub	f1, f0, f1	# 212
	jalr	x0, x1, 0	# 212
fle.31891:
	lui		x4, %hi(l.26460)	# 213
	ori		x4, x0, %lo(l.26460)	# 213
	flw		f4, 0(x4)	# 213
	fle		f1, f4, fle.31892	# 213
	fadd	f2, f0, f16	# 213
	fdiv	f1, f2, f1	# 213
	fsw		f3, 0(x2)	# 213
	sw		x1, -4(x2)	# 213
	addi	x2, x2, -8	# 213
	lw		x31, 0(x29)	# 213
	jalr	x1, x31, 0	# 213
	addi	x2, x2, 8	# 213
	lw		x1, -4(x2)	# 213
	flw		f2, 0(x2)	# 213
	fsub	f1, f2, f1	# 213
	jalr	x0, x1, 0	# 213
fle.31892:
	lui		x4, %hi(l.26463)	# 214
	ori		x4, x0, %lo(l.26463)	# 214
	flw		f3, 0(x4)	# 214
	fle		f3, f1, fle.31893	# 214
	fmul	f2, f1, f1	# 216
	fmul	f3, f1, f2	# 217
	fmul	f4, f2, f2	# 218
	lui		x4, %hi(l.26465)	# 219
	ori		x4, x0, %lo(l.26465)	# 219
	flw		f5, 0(x4)	# 219
	fmul	f5, f5, f3	# 219
	fsub	f1, f1, f5	# 219
	lui		x4, %hi(l.26467)	# 219
	ori		x4, x0, %lo(l.26467)	# 219
	flw		f5, 0(x4)	# 219
	fmul	f5, f5, f2	# 219
	fmul	f5, f5, f3	# 219
	fadd	f1, f1, f5	# 219
	lui		x4, %hi(l.26469)	# 219
	ori		x4, x0, %lo(l.26469)	# 219
	flw		f5, 0(x4)	# 219
	fmul	f5, f5, f4	# 219
	fmul	f5, f5, f3	# 219
	fsub	f1, f1, f5	# 219
	lui		x4, %hi(l.26471)	# 220
	ori		x4, x0, %lo(l.26471)	# 220
	flw		f5, 0(x4)	# 220
	fmul	f2, f5, f2	# 220
	fmul	f2, f2, f4	# 220
	fmul	f2, f2, f3	# 220
	fadd	f1, f1, f2	# 219
	lui		x4, %hi(l.26473)	# 220
	ori		x4, x0, %lo(l.26473)	# 220
	flw		f2, 0(x4)	# 220
	fmul	f2, f2, f4	# 220
	fmul	f2, f2, f4	# 220
	fmul	f2, f2, f3	# 220
	fsub	f1, f1, f2	# 219
	jalr	x0, x1, 0	# 219
fle.31893:
	fadd	f3, f0, f16	# 214
	fsub	f4, f1, f3	# 214
	fadd	f1, f1, f3	# 214
	fdiv	f1, f4, f1	# 214
	fsw		f2, -4(x2)	# 214
	sw		x1, -8(x2)	# 214
	addi	x2, x2, -12	# 214
	lw		x31, 0(x29)	# 214
	jalr	x1, x31, 0	# 214
	addi	x2, x2, 12	# 214
	lw		x1, -8(x2)	# 214
	flw		f2, -4(x2)	# 214
	fadd	f1, f2, f1	# 214
	jalr	x0, x1, 0	# 214
read_object.2689.18028:
	lw		x5, 36(x29)	# 898
	lw		x6, 32(x29)	# 898
	lw		x7, 28(x29)	# 898
	lw		x8, 24(x29)	# 898
	lw		x9, 20(x29)	# 898
	lw		x10, 16(x29)	# 898
	lw		x11, 12(x29)	# 898
	lw		x12, 8(x29)	# 898
	flw		f1, 4(x29)	# 898
	ble		x10, x4, ble.31894	# 898
	sw		x4, 0(x2)	# 816
	sw		x1, -4(x2)	# 816
	addi	x2, x2, -8	# 816
	jal		x1, min_caml_read_int	# 816
	addi	x2, x2, 8	# 816
	lw		x1, -4(x2)	# 816
	sw		x29, -4(x2)	# 817
	sw		x12, -8(x2)	# 817
	sw		x11, -12(x2)	# 817
	beq		x4, x8, beq.31896	# 817
	sw		x4, -16(x2)	# 819
	sw		x1, -20(x2)	# 819
	addi	x2, x2, -24	# 819
	jal		x1, min_caml_read_int	# 819
	addi	x2, x2, 24	# 819
	lw		x1, -20(x2)	# 819
	sw		x4, -20(x2)	# 820
	sw		x1, -24(x2)	# 820
	addi	x2, x2, -28	# 820
	jal		x1, min_caml_read_int	# 820
	addi	x2, x2, 28	# 820
	lw		x1, -24(x2)	# 820
	sw		x4, -24(x2)	# 821
	sw		x1, -28(x2)	# 821
	addi	x2, x2, -32	# 821
	jal		x1, min_caml_read_int	# 821
	addi	x2, x2, 32	# 821
	lw		x1, -28(x2)	# 821
	sw		x5, -28(x2)	# 823
	sw		x4, -32(x2)	# 823
	fsw		f1, -36(x2)	# 823
	addi	x4, x9, 0	# 823
	sw		x1, -40(x2)	# 823
	addi	x2, x2, -44	# 823
	jal		x1, min_caml_create_float_array	# 823
	addi	x2, x2, 44	# 823
	lw		x1, -40(x2)	# 823
	sw		x1, -40(x2)	# 824
	addi	x2, x2, -44	# 824
	jal		x1, min_caml_read_float	# 824
	addi	x2, x2, 44	# 824
	lw		x1, -40(x2)	# 824
	mul		x5, x30, x11	# 824
	add		x5, x4, x5	# 824
	fsw		f1, 0(x5)	# 824
	sw		x1, -40(x2)	# 825
	addi	x2, x2, -44	# 825
	jal		x1, min_caml_read_float	# 825
	addi	x2, x2, 44	# 825
	lw		x1, -40(x2)	# 825
	mul		x5, x30, x12	# 825
	add		x5, x4, x5	# 825
	fsw		f1, 0(x5)	# 825
	sw		x1, -40(x2)	# 826
	addi	x2, x2, -44	# 826
	jal		x1, min_caml_read_float	# 826
	addi	x2, x2, 44	# 826
	lw		x1, -40(x2)	# 826
	mul		x5, x30, x7	# 826
	add		x5, x4, x5	# 826
	fsw		f1, 0(x5)	# 826
	flw		f1, -36(x2)	# 828
	sw		x4, -40(x2)	# 828
	addi	x4, x9, 0	# 828
	sw		x1, -44(x2)	# 828
	addi	x2, x2, -48	# 828
	jal		x1, min_caml_create_float_array	# 828
	addi	x2, x2, 48	# 828
	lw		x1, -44(x2)	# 828
	sw		x1, -44(x2)	# 829
	addi	x2, x2, -48	# 829
	jal		x1, min_caml_read_float	# 829
	addi	x2, x2, 48	# 829
	lw		x1, -44(x2)	# 829
	mul		x5, x30, x11	# 829
	add		x5, x4, x5	# 829
	fsw		f1, 0(x5)	# 829
	sw		x1, -44(x2)	# 830
	addi	x2, x2, -48	# 830
	jal		x1, min_caml_read_float	# 830
	addi	x2, x2, 48	# 830
	lw		x1, -44(x2)	# 830
	mul		x5, x30, x12	# 830
	add		x5, x4, x5	# 830
	fsw		f1, 0(x5)	# 830
	sw		x1, -44(x2)	# 831
	addi	x2, x2, -48	# 831
	jal		x1, min_caml_read_float	# 831
	addi	x2, x2, 48	# 831
	lw		x1, -44(x2)	# 831
	mul		x5, x30, x7	# 831
	add		x5, x4, x5	# 831
	fsw		f1, 0(x5)	# 831
	sw		x1, -44(x2)	# 833
	addi	x2, x2, -48	# 833
	jal		x1, min_caml_read_float	# 833
	addi	x2, x2, 48	# 833
	lw		x1, -44(x2)	# 833
	flw		f2, -36(x2)	# 122
	fle		f2, f1, fle.31898	# 122
	addi	x5, x0, 1	# 122
	jal		x0, fle_cont.31897	# 122
fle.31898:
	addi	x5, x0, 0	# 122
fle_cont.31897:
	fsw		f1, -44(x2)	# 835
	sw		x4, -48(x2)	# 835
	sw		x5, -52(x2)	# 835
	addi	x4, x7, 0	# 835
	fadd	f1, f0, f2	# 835
	sw		x1, -56(x2)	# 835
	addi	x2, x2, -60	# 835
	jal		x1, min_caml_create_float_array	# 835
	addi	x2, x2, 60	# 835
	lw		x1, -56(x2)	# 835
	sw		x1, -56(x2)	# 836
	addi	x2, x2, -60	# 836
	jal		x1, min_caml_read_float	# 836
	addi	x2, x2, 60	# 836
	lw		x1, -56(x2)	# 836
	mul		x5, x30, x11	# 836
	add		x5, x4, x5	# 836
	fsw		f1, 0(x5)	# 836
	sw		x1, -56(x2)	# 837
	addi	x2, x2, -60	# 837
	jal		x1, min_caml_read_float	# 837
	addi	x2, x2, 60	# 837
	lw		x1, -56(x2)	# 837
	mul		x5, x30, x12	# 837
	add		x5, x4, x5	# 837
	fsw		f1, 0(x5)	# 837
	sw		x4, -56(x2)	# 839
	addi	x4, x9, 0	# 839
	fadd	f1, f0, f2	# 839
	sw		x1, -60(x2)	# 839
	addi	x2, x2, -64	# 839
	jal		x1, min_caml_create_float_array	# 839
	addi	x2, x2, 64	# 839
	lw		x1, -60(x2)	# 839
	sw		x1, -60(x2)	# 840
	addi	x2, x2, -64	# 840
	jal		x1, min_caml_read_float	# 840
	addi	x2, x2, 64	# 840
	lw		x1, -60(x2)	# 840
	mul		x5, x30, x11	# 840
	add		x5, x4, x5	# 840
	fsw		f1, 0(x5)	# 840
	sw		x1, -60(x2)	# 841
	addi	x2, x2, -64	# 841
	jal		x1, min_caml_read_float	# 841
	addi	x2, x2, 64	# 841
	lw		x1, -60(x2)	# 841
	mul		x5, x30, x12	# 841
	add		x5, x4, x5	# 841
	fsw		f1, 0(x5)	# 841
	sw		x1, -60(x2)	# 842
	addi	x2, x2, -64	# 842
	jal		x1, min_caml_read_float	# 842
	addi	x2, x2, 64	# 842
	lw		x1, -60(x2)	# 842
	mul		x5, x30, x7	# 842
	add		x5, x4, x5	# 842
	fsw		f1, 0(x5)	# 842
	sw		x4, -60(x2)	# 844
	addi	x4, x9, 0	# 844
	fadd	f1, f0, f2	# 844
	sw		x1, -64(x2)	# 844
	addi	x2, x2, -68	# 844
	jal		x1, min_caml_create_float_array	# 844
	addi	x2, x2, 68	# 844
	lw		x1, -64(x2)	# 844
	lw		x5, -32(x2)	# 845
	beq		x5, x11, beq_cont.31899	# 845
	sw		x1, -64(x2)	# 847
	addi	x2, x2, -68	# 847
	jal		x1, min_caml_read_float	# 847
	addi	x2, x2, 68	# 847
	lw		x1, -64(x2)	# 847
	lui		x8, %hi(l.26498)	# 714
	ori		x8, x0, %lo(l.26498)	# 714
	flw		f3, 0(x8)	# 714
	fmul	f1, f1, f3	# 714
	mul		x8, x30, x11	# 847
	add		x8, x4, x8	# 847
	fsw		f1, 0(x8)	# 847
	sw		x1, -64(x2)	# 848
	addi	x2, x2, -68	# 848
	jal		x1, min_caml_read_float	# 848
	addi	x2, x2, 68	# 848
	lw		x1, -64(x2)	# 848
	fmul	f1, f1, f3	# 714
	mul		x8, x30, x12	# 848
	add		x8, x4, x8	# 848
	fsw		f1, 0(x8)	# 848
	sw		x1, -64(x2)	# 849
	addi	x2, x2, -68	# 849
	jal		x1, min_caml_read_float	# 849
	addi	x2, x2, 68	# 849
	lw		x1, -64(x2)	# 849
	fmul	f1, f1, f3	# 714
	mul		x8, x30, x7	# 849
	add		x8, x4, x8	# 849
	fsw		f1, 0(x8)	# 849
	jal		x0, beq_cont.31899	# 845
beq_cont.31899:
	lw		x8, -20(x2)	# 856
	beq		x8, x7, beq.31902	# 856
	lw		x10, -52(x2)	# 856
	jal		x0, beq_cont.31901	# 856
beq.31902:
	addi	x10, x0, 1	# 856
beq_cont.31901:
	addi	x13, x0, 4	# 857
	sw		x4, -64(x2)	# 857
	addi	x4, x13, 0	# 857
	fadd	f1, f0, f2	# 857
	sw		x1, -68(x2)	# 857
	addi	x2, x2, -72	# 857
	jal		x1, min_caml_create_float_array	# 857
	addi	x2, x2, 72	# 857
	lw		x1, -68(x2)	# 857
	addi	x5, x3, 0	# 860
	addi	x3, x3, 44	# 860
	sw		x4, 40(x5)	# 860
	lw		x4, -64(x2)	# 860
	sw		x4, 36(x5)	# 860
	lw		x13, -60(x2)	# 860
	sw		x13, 32(x5)	# 860
	lw		x13, -56(x2)	# 860
	sw		x13, 28(x5)	# 860
	sw		x10, 24(x5)	# 860
	lw		x10, -48(x2)	# 860
	sw		x10, 20(x5)	# 860
	lw		x10, -40(x2)	# 860
	sw		x10, 16(x5)	# 860
	lw		x13, -32(x2)	# 860
	sw		x13, 12(x5)	# 860
	lw		x14, -24(x2)	# 860
	sw		x14, 8(x5)	# 860
	sw		x8, 4(x5)	# 860
	lw		x14, -16(x2)	# 860
	sw		x14, 0(x5)	# 860
	lw		x14, 0(x2)	# 868
	mul		x15, x30, x14	# 868
	addi	x15, x15, 63844	# 868
	sw		x5, 0(x15)	# 868
	beq		x8, x9, beq.31904	# 870
	beq		x8, x7, beq.31906	# 880
	jal		x0, beq_cont.31903	# 880
beq.31906:
	mul		x5, x30, x11	# 320
	add		x5, x10, x5	# 320
	flw		f1, 0(x5)	# 320
	fmul	f1, f1, f1	# 127
	mul		x5, x30, x12	# 320
	add		x5, x10, x5	# 320
	flw		f3, 0(x5)	# 320
	fmul	f3, f3, f3	# 127
	fadd	f1, f1, f3	# 320
	mul		x5, x30, x7	# 320
	add		x5, x10, x5	# 320
	flw		f3, 0(x5)	# 320
	fmul	f3, f3, f3	# 127
	fadd	f1, f1, f3	# 320
	fsqrt	f1, f1	# 320
	feq		f1, f2, feq.31908	# 120
	flw		f3, -44(x2)	# 122
	fle		f2, f3, fle.31910	# 122
	fadd	f2, f0, f16	# 321
	fdiv	f1, f2, f1	# 321
	jal		x0, feq_cont.31907	# 122
fle.31910:
	lui		x5, %hi(l.26527)	# 321
	ori		x5, x0, %lo(l.26527)	# 321
	flw		f2, 0(x5)	# 321
	fdiv	f1, f2, f1	# 321
	jal		x0, feq_cont.31907	# 120
feq.31908:
	fadd	f1, f0, f16	# 321
feq_cont.31907:
	mul		x5, x30, x11	# 322
	add		x5, x10, x5	# 322
	flw		f2, 0(x5)	# 322
	fmul	f2, f2, f1	# 322
	mul		x5, x30, x11	# 322
	add		x5, x10, x5	# 322
	fsw		f2, 0(x5)	# 322
	mul		x5, x30, x12	# 323
	add		x5, x10, x5	# 323
	flw		f2, 0(x5)	# 323
	fmul	f2, f2, f1	# 323
	mul		x5, x30, x12	# 323
	add		x5, x10, x5	# 323
	fsw		f2, 0(x5)	# 323
	mul		x5, x30, x7	# 324
	add		x5, x10, x5	# 324
	flw		f2, 0(x5)	# 324
	fmul	f1, f2, f1	# 324
	mul		x5, x30, x7	# 324
	add		x5, x10, x5	# 324
	fsw		f1, 0(x5)	# 324
	jal		x0, beq_cont.31903	# 870
beq.31904:
	mul		x5, x30, x11	# 873
	add		x5, x10, x5	# 873
	flw		f1, 0(x5)	# 873
	feq		f1, f2, feq.31912	# 120
	feq		f1, f2, feq.31914	# 120
	fle		f1, f2, fle.31916	# 121
	fadd	f3, f0, f16	# 250
	jal		x0, feq_cont.31913	# 121
fle.31916:
	lui		x5, %hi(l.26527)	# 251
	ori		x5, x0, %lo(l.26527)	# 251
	flw		f3, 0(x5)	# 251
	jal		x0, feq_cont.31913	# 120
feq.31914:
	fadd	f3, f0, f2	# 249
feq_cont.31913:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 874
	jal		x0, feq_cont.31911	# 120
feq.31912:
	fadd	f1, f0, f2	# 874
feq_cont.31911:
	mul		x5, x30, x11	# 874
	add		x5, x10, x5	# 874
	fsw		f1, 0(x5)	# 874
	mul		x5, x30, x12	# 875
	add		x5, x10, x5	# 875
	flw		f1, 0(x5)	# 875
	feq		f1, f2, feq.31918	# 120
	feq		f1, f2, feq.31920	# 120
	fle		f1, f2, fle.31922	# 121
	fadd	f3, f0, f16	# 250
	jal		x0, feq_cont.31919	# 121
fle.31922:
	lui		x5, %hi(l.26527)	# 251
	ori		x5, x0, %lo(l.26527)	# 251
	flw		f3, 0(x5)	# 251
	jal		x0, feq_cont.31919	# 120
feq.31920:
	fadd	f3, f0, f2	# 249
feq_cont.31919:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 876
	jal		x0, feq_cont.31917	# 120
feq.31918:
	fadd	f1, f0, f2	# 876
feq_cont.31917:
	mul		x5, x30, x12	# 876
	add		x5, x10, x5	# 876
	fsw		f1, 0(x5)	# 876
	mul		x5, x30, x7	# 877
	add		x5, x10, x5	# 877
	flw		f1, 0(x5)	# 877
	feq		f1, f2, feq.31924	# 120
	feq		f1, f2, feq_cont.31925	# 120
	fle		f1, f2, fle.31928	# 121
	fadd	f2, f0, f16	# 250
	jal		x0, feq_cont.31925	# 121
fle.31928:
	lui		x5, %hi(l.26527)	# 251
	ori		x5, x0, %lo(l.26527)	# 251
	flw		f2, 0(x5)	# 251
	jal		x0, feq_cont.31925	# 120
feq_cont.31925:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f2, f1	# 878
	jal		x0, feq_cont.31923	# 120
feq.31924:
	fadd	f1, f0, f2	# 878
feq_cont.31923:
	mul		x5, x30, x7	# 878
	add		x5, x10, x5	# 878
	fsw		f1, 0(x5)	# 878
beq_cont.31903:
	beq		x13, x11, beq_cont.31929	# 886
	mul		x5, x30, x11	# 775
	add		x5, x4, x5	# 775
	flw		f1, 0(x5)	# 775
	sw		x7, -68(x2)	# 775
	sw		x6, -72(x2)	# 775
	fsw		f1, -76(x2)	# 775
	addi	x29, x6, 0	# 775
	sw		x1, -80(x2)	# 775
	addi	x2, x2, -84	# 775
	lw		x31, 0(x29)	# 775
	jalr	x1, x31, 0	# 775
	addi	x2, x2, 84	# 775
	lw		x1, -80(x2)	# 775
	flw		f2, -76(x2)	# 776
	lw		x29, -28(x2)	# 776
	fsw		f1, -80(x2)	# 776
	fadd	f1, f0, f2	# 776
	sw		x1, -84(x2)	# 776
	addi	x2, x2, -88	# 776
	lw		x31, 0(x29)	# 776
	jalr	x1, x31, 0	# 776
	addi	x2, x2, 88	# 776
	lw		x1, -84(x2)	# 776
	lw		x4, -8(x2)	# 777
	mul		x5, x30, x4	# 777
	lw		x6, -64(x2)	# 777
	add		x5, x6, x5	# 777
	flw		f2, 0(x5)	# 777
	lw		x29, -72(x2)	# 777
	fsw		f1, -84(x2)	# 777
	fsw		f2, -88(x2)	# 777
	fadd	f1, f0, f2	# 777
	sw		x1, -92(x2)	# 777
	addi	x2, x2, -96	# 777
	lw		x31, 0(x29)	# 777
	jalr	x1, x31, 0	# 777
	addi	x2, x2, 96	# 777
	lw		x1, -92(x2)	# 777
	flw		f2, -88(x2)	# 778
	lw		x29, -28(x2)	# 778
	fsw		f1, -92(x2)	# 778
	fadd	f1, f0, f2	# 778
	sw		x1, -96(x2)	# 778
	addi	x2, x2, -100	# 778
	lw		x31, 0(x29)	# 778
	jalr	x1, x31, 0	# 778
	addi	x2, x2, 100	# 778
	lw		x1, -96(x2)	# 778
	lw		x4, -68(x2)	# 779
	mul		x5, x30, x4	# 779
	lw		x6, -64(x2)	# 779
	add		x5, x6, x5	# 779
	flw		f2, 0(x5)	# 779
	lw		x29, -72(x2)	# 779
	fsw		f1, -96(x2)	# 779
	fsw		f2, -100(x2)	# 779
	fadd	f1, f0, f2	# 779
	sw		x1, -104(x2)	# 779
	addi	x2, x2, -108	# 779
	lw		x31, 0(x29)	# 779
	jalr	x1, x31, 0	# 779
	addi	x2, x2, 108	# 779
	lw		x1, -104(x2)	# 779
	flw		f2, -100(x2)	# 780
	lw		x29, -28(x2)	# 780
	fsw		f1, -104(x2)	# 780
	fadd	f1, f0, f2	# 780
	sw		x1, -108(x2)	# 780
	addi	x2, x2, -112	# 780
	lw		x31, 0(x29)	# 780
	jalr	x1, x31, 0	# 780
	addi	x2, x2, 112	# 780
	lw		x1, -108(x2)	# 780
	flw		f2, -104(x2)	# 782
	flw		f3, -92(x2)	# 782
	fmul	f4, f3, f2	# 782
	flw		f5, -96(x2)	# 783
	flw		f6, -84(x2)	# 783
	fmul	f7, f6, f5	# 783
	fmul	f8, f7, f2	# 783
	flw		f9, -80(x2)	# 783
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
	lw		x4, -12(x2)	# 795
	mul		x5, x30, x4	# 795
	lw		x6, -40(x2)	# 795
	add		x5, x6, x5	# 795
	flw		f6, 0(x5)	# 795
	lw		x5, -8(x2)	# 796
	mul		x7, x30, x5	# 796
	add		x7, x6, x7	# 796
	flw		f9, 0(x7)	# 796
	lw		x7, -68(x2)	# 797
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
	lw		x8, -64(x2)	# 807
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
	jal		x0, beq_cont.31929	# 886
beq_cont.31929:
	addi	x4, x0, 1	# 890
	jal		x0, beq_cont.31895	# 817
beq.31896:
	addi	x4, x0, 0	# 893
beq_cont.31895:
	lw		x5, -12(x2)	# 899
	beq		x4, x5, beq.31931	# 899
	lw		x4, -8(x2)	# 900
	lw		x5, 0(x2)	# 900
	add		x4, x5, x4	# 900
	lw		x29, -4(x2)	# 900
	lw		x31, 0(x29)	# 900
	jalr	x0, x31, 0	# 900
beq.31931:
	mul		x4, x30, x5	# 902
	addi	x4, x4, 63796	# 902
	lw		x5, 0(x2)	# 902
	sw		x5, 0(x4)	# 902
	jalr	x0, x1, 0	# 902
ble.31894:
	jalr	x0, x1, 0	# 903
read_net_item.2693.18030:
	lw		x5, 8(x29)	# 914
	lw		x6, 4(x29)	# 914
	sw		x4, 0(x2)	# 914
	sw		x1, -4(x2)	# 914
	addi	x2, x2, -8	# 914
	jal		x1, min_caml_read_int	# 914
	addi	x2, x2, 8	# 914
	lw		x1, -4(x2)	# 914
	beq		x4, x5, beq.31934	# 915
	lw		x5, 0(x2)	# 917
	add		x6, x5, x6	# 917
	sw		x4, -4(x2)	# 917
	addi	x4, x6, 0	# 917
	sw		x1, -8(x2)	# 917
	addi	x2, x2, -12	# 917
	lw		x31, 0(x29)	# 917
	jalr	x1, x31, 0	# 917
	addi	x2, x2, 12	# 917
	lw		x1, -8(x2)	# 917
	lw		x5, 0(x2)	# 918
	mul		x5, x30, x5	# 918
	add		x5, x4, x5	# 918
	lw		x6, -4(x2)	# 918
	sw		x6, 0(x5)	# 918
	jalr	x0, x1, 0	# 918
beq.31934:
	lw		x4, 0(x2)	# 915
	add		x4, x4, x6	# 915
	jal		x0, min_caml_create_array	# 915
read_or_network.2695.18032:
	lw		x5, 16(x29)	# 922
	lw		x6, 12(x29)	# 922
	lw		x7, 8(x29)	# 922
	lw		x8, 4(x29)	# 922
	sw		x29, 0(x2)	# 922
	sw		x8, -4(x2)	# 922
	sw		x4, -8(x2)	# 922
	sw		x6, -12(x2)	# 922
	sw		x7, -16(x2)	# 922
	addi	x4, x7, 0	# 922
	addi	x29, x5, 0	# 922
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
	beq		x4, x6, beq.31935	# 923
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
beq.31935:
	lw		x4, -4(x2)	# 924
	lw		x6, -8(x2)	# 924
	add		x4, x6, x4	# 924
	jal		x0, min_caml_create_array	# 924
read_and_network.2697.18034:
	lw		x5, 16(x29)	# 931
	lw		x6, 12(x29)	# 931
	lw		x7, 8(x29)	# 931
	lw		x8, 4(x29)	# 931
	sw		x29, 0(x2)	# 931
	sw		x8, -4(x2)	# 931
	sw		x4, -8(x2)	# 931
	sw		x6, -12(x2)	# 931
	sw		x7, -16(x2)	# 931
	addi	x4, x7, 0	# 931
	addi	x29, x5, 0	# 931
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
	beq		x5, x6, beq.31936	# 932
	lw		x5, -8(x2)	# 934
	mul		x6, x30, x5	# 934
	addi	x6, x6, 64128	# 934
	sw		x4, 0(x6)	# 934
	lw		x4, -4(x2)	# 935
	add		x4, x5, x4	# 935
	lw		x29, 0(x2)	# 935
	lw		x31, 0(x29)	# 935
	jalr	x0, x31, 0	# 935
beq.31936:
	jalr	x0, x1, 0	# 932
iter_setup_dirvec_constants.2794.18036:
	lw		x6, 24(x29)	# 1307
	lw		x7, 20(x29)	# 1307
	lw		x8, 16(x29)	# 1307
	lw		x9, 12(x29)	# 1307
	lw		x10, 8(x29)	# 1307
	flw		f1, 4(x29)	# 1307
	ble		x9, x5, ble.31938	# 1307
	jalr	x0, x1, 0	# 1320
ble.31938:
	mul		x11, x30, x5	# 1308
	addi	x11, x11, 63844	# 1308
	lw		x11, 0(x11)	# 1308
	lw		x12, 4(x4)	# 682
	lw		x13, 0(x4)	# 676
	lw		x14, 4(x11)	# 390
	sw		x4, 0(x2)	# 1312
	beq		x14, x10, beq.31941	# 1312
	beq		x14, x7, beq.31943	# 1314
	sw		x5, -4(x2)	# 1278
	fsw		f1, -8(x2)	# 1278
	addi	x4, x6, 0	# 1278
	sw		x1, -12(x2)	# 1278
	addi	x2, x2, -16	# 1278
	jal		x1, min_caml_create_float_array	# 1278
	addi	x2, x2, 16	# 1278
	lw		x1, -12(x2)	# 1278
	mul		x5, x30, x9	# 1280
	add		x5, x13, x5	# 1280
	flw		f1, 0(x5)	# 1280
	mul		x5, x30, x10	# 1280
	add		x5, x13, x5	# 1280
	flw		f2, 0(x5)	# 1280
	mul		x5, x30, x7	# 1280
	add		x5, x13, x5	# 1280
	flw		f3, 0(x5)	# 1280
	fmul	f4, f1, f1	# 127
	lw		x5, 16(x11)	# 428
	mul		x6, x30, x9	# 433
	add		x5, x5, x6	# 433
	flw		f5, 0(x5)	# 433
	fmul	f4, f4, f5	# 1004
	fmul	f5, f2, f2	# 127
	lw		x5, 16(x11)	# 438
	mul		x6, x30, x10	# 443
	add		x5, x5, x6	# 443
	flw		f6, 0(x5)	# 443
	fmul	f5, f5, f6	# 1004
	fadd	f4, f4, f5	# 1004
	fmul	f5, f3, f3	# 127
	lw		x5, 16(x11)	# 448
	mul		x6, x30, x7	# 453
	add		x5, x5, x6	# 453
	flw		f6, 0(x5)	# 453
	fmul	f5, f5, f6	# 1004
	fadd	f4, f4, f5	# 1004
	lw		x5, 12(x11)	# 419
	beq		x5, x9, beq_cont.31944	# 1006
	fmul	f5, f2, f3	# 1010
	lw		x5, 36(x11)	# 548
	mul		x6, x30, x9	# 553
	add		x5, x5, x6	# 553
	flw		f6, 0(x5)	# 553
	fmul	f5, f5, f6	# 1010
	fadd	f4, f4, f5	# 1009
	fmul	f5, f3, f1	# 1011
	lw		x5, 36(x11)	# 558
	mul		x6, x30, x10	# 563
	add		x5, x5, x6	# 563
	flw		f6, 0(x5)	# 563
	fmul	f5, f5, f6	# 1011
	fadd	f4, f4, f5	# 1009
	fmul	f5, f1, f2	# 1012
	lw		x5, 36(x11)	# 568
	mul		x6, x30, x7	# 573
	add		x5, x5, x6	# 573
	flw		f6, 0(x5)	# 573
	fmul	f5, f5, f6	# 1012
	fadd	f4, f4, f5	# 1009
	jal		x0, beq_cont.31944	# 1006
beq_cont.31944:
	lw		x5, 16(x11)	# 428
	mul		x6, x30, x9	# 433
	add		x5, x5, x6	# 433
	flw		f5, 0(x5)	# 433
	fmul	f1, f1, f5	# 1281
	fsub	f1, f0, f1	# 123
	lw		x5, 16(x11)	# 438
	mul		x6, x30, x10	# 443
	add		x5, x5, x6	# 443
	flw		f5, 0(x5)	# 443
	fmul	f2, f2, f5	# 1282
	fsub	f2, f0, f2	# 123
	lw		x5, 16(x11)	# 448
	mul		x6, x30, x7	# 453
	add		x5, x5, x6	# 453
	flw		f5, 0(x5)	# 453
	fmul	f3, f3, f5	# 1283
	fsub	f3, f0, f3	# 123
	mul		x5, x30, x9	# 1285
	add		x5, x4, x5	# 1285
	fsw		f4, 0(x5)	# 1285
	lw		x5, 12(x11)	# 419
	beq		x5, x9, beq.31947	# 1289
	mul		x5, x30, x7	# 1290
	add		x5, x13, x5	# 1290
	flw		f5, 0(x5)	# 1290
	lw		x5, 36(x11)	# 558
	mul		x6, x30, x10	# 563
	add		x5, x5, x6	# 563
	flw		f6, 0(x5)	# 563
	fmul	f5, f5, f6	# 1290
	mul		x5, x30, x10	# 1290
	add		x5, x13, x5	# 1290
	flw		f7, 0(x5)	# 1290
	lw		x5, 36(x11)	# 568
	mul		x6, x30, x7	# 573
	add		x5, x5, x6	# 573
	flw		f8, 0(x5)	# 573
	fmul	f7, f7, f8	# 1290
	fadd	f5, f5, f7	# 1290
	fadd	f7, f0, f26	# 126
	fmul	f5, f5, f7	# 126
	fsub	f1, f1, f5	# 1290
	mul		x5, x30, x10	# 1290
	add		x5, x4, x5	# 1290
	fsw		f1, 0(x5)	# 1290
	mul		x5, x30, x7	# 1291
	add		x5, x13, x5	# 1291
	flw		f1, 0(x5)	# 1291
	lw		x5, 36(x11)	# 548
	mul		x6, x30, x9	# 553
	add		x5, x5, x6	# 553
	flw		f5, 0(x5)	# 553
	fmul	f1, f1, f5	# 1291
	mul		x5, x30, x9	# 1291
	add		x5, x13, x5	# 1291
	flw		f9, 0(x5)	# 1291
	fmul	f8, f9, f8	# 1291
	fadd	f1, f1, f8	# 1291
	fmul	f1, f1, f7	# 126
	fsub	f1, f2, f1	# 1291
	mul		x5, x30, x7	# 1291
	add		x5, x4, x5	# 1291
	fsw		f1, 0(x5)	# 1291
	mul		x5, x30, x10	# 1292
	add		x5, x13, x5	# 1292
	flw		f1, 0(x5)	# 1292
	fmul	f1, f1, f5	# 1292
	mul		x5, x30, x9	# 1292
	add		x5, x13, x5	# 1292
	flw		f2, 0(x5)	# 1292
	fmul	f2, f2, f6	# 1292
	fadd	f1, f1, f2	# 1292
	fmul	f1, f1, f7	# 126
	fsub	f1, f3, f1	# 1292
	mul		x5, x30, x8	# 1292
	add		x5, x4, x5	# 1292
	fsw		f1, 0(x5)	# 1292
	jal		x0, beq_cont.31946	# 1289
beq.31947:
	mul		x5, x30, x10	# 1294
	add		x5, x4, x5	# 1294
	fsw		f1, 0(x5)	# 1294
	mul		x5, x30, x7	# 1295
	add		x5, x4, x5	# 1295
	fsw		f2, 0(x5)	# 1295
	mul		x5, x30, x8	# 1296
	add		x5, x4, x5	# 1296
	fsw		f3, 0(x5)	# 1296
beq_cont.31946:
	flw		f1, -8(x2)	# 120
	feq		f4, f1, feq_cont.31948	# 120
	addi	x5, x0, 4	# 1299
	fadd	f1, f0, f16	# 1299
	fdiv	f1, f1, f4	# 1299
	mul		x5, x30, x5	# 1299
	add		x5, x4, x5	# 1299
	fsw		f1, 0(x5)	# 1299
	jal		x0, feq_cont.31948	# 120
feq_cont.31948:
	lw		x5, -4(x2)	# 1317
	mul		x6, x30, x5	# 1317
	add		x6, x12, x6	# 1317
	sw		x4, 0(x6)	# 1317
	jal		x0, beq_cont.31940	# 1314
beq.31943:
	addi	x6, x0, 4	# 1259
	sw		x5, -4(x2)	# 1259
	fsw		f1, -8(x2)	# 1259
	addi	x4, x6, 0	# 1259
	sw		x1, -12(x2)	# 1259
	addi	x2, x2, -16	# 1259
	jal		x1, min_caml_create_float_array	# 1259
	addi	x2, x2, 16	# 1259
	lw		x1, -12(x2)	# 1259
	mul		x5, x30, x9	# 1261
	add		x5, x13, x5	# 1261
	flw		f1, 0(x5)	# 1261
	lw		x5, 16(x11)	# 428
	mul		x6, x30, x9	# 433
	add		x5, x5, x6	# 433
	flw		f2, 0(x5)	# 433
	fmul	f1, f1, f2	# 1261
	mul		x5, x30, x10	# 1261
	add		x5, x13, x5	# 1261
	flw		f3, 0(x5)	# 1261
	lw		x5, 16(x11)	# 438
	mul		x6, x30, x10	# 443
	add		x5, x5, x6	# 443
	flw		f4, 0(x5)	# 443
	fmul	f3, f3, f4	# 1261
	fadd	f1, f1, f3	# 1261
	mul		x5, x30, x7	# 1261
	add		x5, x13, x5	# 1261
	flw		f3, 0(x5)	# 1261
	lw		x5, 16(x11)	# 448
	mul		x6, x30, x7	# 453
	add		x5, x5, x6	# 453
	flw		f5, 0(x5)	# 453
	fmul	f3, f3, f5	# 1261
	fadd	f1, f1, f3	# 1261
	flw		f3, -8(x2)	# 121
	fle		f1, f3, fle.31951	# 121
	lui		x5, %hi(l.26527)	# 1265
	ori		x5, x0, %lo(l.26527)	# 1265
	flw		f3, 0(x5)	# 1265
	fdiv	f3, f3, f1	# 1265
	mul		x5, x30, x9	# 1265
	add		x5, x4, x5	# 1265
	fsw		f3, 0(x5)	# 1265
	fdiv	f2, f2, f1	# 1267
	fsub	f2, f0, f2	# 123
	mul		x5, x30, x10	# 1267
	add		x5, x4, x5	# 1267
	fsw		f2, 0(x5)	# 1267
	fdiv	f2, f4, f1	# 1268
	fsub	f2, f0, f2	# 123
	mul		x5, x30, x7	# 1268
	add		x5, x4, x5	# 1268
	fsw		f2, 0(x5)	# 1268
	fdiv	f1, f5, f1	# 1269
	fsub	f1, f0, f1	# 123
	mul		x5, x30, x8	# 1269
	add		x5, x4, x5	# 1269
	fsw		f1, 0(x5)	# 1269
	jal		x0, fle_cont.31950	# 121
fle.31951:
	mul		x5, x30, x9	# 1271
	add		x5, x4, x5	# 1271
	fsw		f3, 0(x5)	# 1271
fle_cont.31950:
	lw		x5, -4(x2)	# 1315
	mul		x6, x30, x5	# 1315
	add		x6, x12, x6	# 1315
	sw		x4, 0(x6)	# 1315
	jal		x0, beq_cont.31940	# 1312
beq.31941:
	addi	x14, x0, 6	# 1232
	sw		x5, -4(x2)	# 1232
	fsw		f1, -8(x2)	# 1232
	addi	x4, x14, 0	# 1232
	sw		x1, -12(x2)	# 1232
	addi	x2, x2, -16	# 1232
	jal		x1, min_caml_create_float_array	# 1232
	addi	x2, x2, 16	# 1232
	lw		x1, -12(x2)	# 1232
	mul		x5, x30, x9	# 1234
	add		x5, x13, x5	# 1234
	flw		f1, 0(x5)	# 1234
	flw		f2, -8(x2)	# 120
	feq		f1, f2, feq.31953	# 120
	lw		x5, 24(x11)	# 410
	fle		f2, f1, fle.31955	# 122
	addi	x14, x0, 1	# 122
	jal		x0, fle_cont.31954	# 122
fle.31955:
	addi	x14, x0, 0	# 122
fle_cont.31954:
	beq		x5, x9, beq.31957	# 241
	fle		f2, f1, fle.31959	# 122
	addi	x5, x0, 0	# 241
	jal		x0, beq_cont.31956	# 122
fle.31959:
	addi	x5, x0, 1	# 241
	jal		x0, beq_cont.31956	# 241
beq.31957:
	addi	x5, x14, 0	# 241
beq_cont.31956:
	lw		x14, 16(x11)	# 428
	mul		x15, x30, x9	# 433
	add		x14, x14, x15	# 433
	flw		f1, 0(x14)	# 433
	beq		x5, x9, beq.31961	# 256
	jal		x0, beq_cont.31960	# 256
beq.31961:
	fsub	f1, f0, f1	# 123
beq_cont.31960:
	mul		x5, x30, x9	# 1238
	add		x5, x4, x5	# 1238
	fsw		f1, 0(x5)	# 1238
	fadd	f1, f0, f16	# 1240
	mul		x5, x30, x9	# 1240
	add		x5, x13, x5	# 1240
	flw		f3, 0(x5)	# 1240
	fdiv	f1, f1, f3	# 1240
	mul		x5, x30, x10	# 1240
	add		x5, x4, x5	# 1240
	fsw		f1, 0(x5)	# 1240
	jal		x0, feq_cont.31952	# 120
feq.31953:
	mul		x5, x30, x10	# 1235
	add		x5, x4, x5	# 1235
	fsw		f2, 0(x5)	# 1235
feq_cont.31952:
	mul		x5, x30, x10	# 1242
	add		x5, x13, x5	# 1242
	flw		f1, 0(x5)	# 1242
	feq		f1, f2, feq.31963	# 120
	lw		x5, 24(x11)	# 410
	fle		f2, f1, fle.31965	# 122
	addi	x14, x0, 1	# 122
	jal		x0, fle_cont.31964	# 122
fle.31965:
	addi	x14, x0, 0	# 122
fle_cont.31964:
	beq		x5, x9, beq.31967	# 241
	fle		f2, f1, fle.31969	# 122
	addi	x5, x0, 0	# 241
	jal		x0, beq_cont.31966	# 122
fle.31969:
	addi	x5, x0, 1	# 241
	jal		x0, beq_cont.31966	# 241
beq.31967:
	addi	x5, x14, 0	# 241
beq_cont.31966:
	lw		x14, 16(x11)	# 438
	mul		x15, x30, x10	# 443
	add		x14, x14, x15	# 443
	flw		f1, 0(x14)	# 443
	beq		x5, x9, beq.31971	# 256
	jal		x0, beq_cont.31970	# 256
beq.31971:
	fsub	f1, f0, f1	# 123
beq_cont.31970:
	mul		x5, x30, x7	# 1245
	add		x5, x4, x5	# 1245
	fsw		f1, 0(x5)	# 1245
	fadd	f1, f0, f16	# 1246
	mul		x5, x30, x10	# 1246
	add		x5, x13, x5	# 1246
	flw		f3, 0(x5)	# 1246
	fdiv	f1, f1, f3	# 1246
	mul		x5, x30, x8	# 1246
	add		x5, x4, x5	# 1246
	fsw		f1, 0(x5)	# 1246
	jal		x0, feq_cont.31962	# 120
feq.31963:
	mul		x5, x30, x8	# 1243
	add		x5, x4, x5	# 1243
	fsw		f2, 0(x5)	# 1243
feq_cont.31962:
	mul		x5, x30, x7	# 1248
	add		x5, x13, x5	# 1248
	flw		f1, 0(x5)	# 1248
	feq		f1, f2, feq.31973	# 120
	addi	x5, x0, 4	# 1251
	lw		x8, 24(x11)	# 410
	fle		f2, f1, fle.31975	# 122
	addi	x14, x0, 1	# 122
	jal		x0, fle_cont.31974	# 122
fle.31975:
	addi	x14, x0, 0	# 122
fle_cont.31974:
	beq		x8, x9, beq.31977	# 241
	fle		f2, f1, fle.31979	# 122
	addi	x8, x0, 0	# 241
	jal		x0, beq_cont.31976	# 122
fle.31979:
	addi	x8, x0, 1	# 241
	jal		x0, beq_cont.31976	# 241
beq.31977:
	addi	x8, x14, 0	# 241
beq_cont.31976:
	lw		x11, 16(x11)	# 448
	mul		x14, x30, x7	# 453
	add		x11, x11, x14	# 453
	flw		f1, 0(x11)	# 453
	beq		x8, x9, beq.31981	# 256
	jal		x0, beq_cont.31980	# 256
beq.31981:
	fsub	f1, f0, f1	# 123
beq_cont.31980:
	mul		x5, x30, x5	# 1251
	add		x5, x4, x5	# 1251
	fsw		f1, 0(x5)	# 1251
	fadd	f1, f0, f16	# 1252
	mul		x5, x30, x7	# 1252
	add		x5, x13, x5	# 1252
	flw		f2, 0(x5)	# 1252
	fdiv	f1, f1, f2	# 1252
	mul		x5, x30, x6	# 1252
	add		x5, x4, x5	# 1252
	fsw		f1, 0(x5)	# 1252
	jal		x0, feq_cont.31972	# 120
feq.31973:
	mul		x5, x30, x6	# 1249
	add		x5, x4, x5	# 1249
	fsw		f2, 0(x5)	# 1249
feq_cont.31972:
	lw		x5, -4(x2)	# 1313
	mul		x6, x30, x5	# 1313
	add		x6, x12, x6	# 1313
	sw		x4, 0(x6)	# 1313
beq_cont.31940:
	sub		x5, x5, x10	# 1319
	lw		x4, 0(x2)	# 1319
	lw		x31, 0(x29)	# 1319
	jalr	x0, x31, 0	# 1319
setup_startp_constants.2799.18039:
	lw		x6, 16(x29)	# 1332
	lw		x7, 12(x29)	# 1332
	lw		x8, 8(x29)	# 1332
	lw		x9, 4(x29)	# 1332
	ble		x8, x5, ble.31982	# 1332
	jalr	x0, x1, 0	# 1347
ble.31982:
	mul		x10, x30, x5	# 1333
	addi	x10, x10, 63844	# 1333
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
	beq		x12, x6, beq.31985	# 1339
	ble		x12, x6, beq_cont.31984	# 1342
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
	beq		x13, x8, beq.31989	# 1006
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
	jal		x0, beq_cont.31988	# 1006
beq.31989:
	fadd	f1, f0, f4	# 1007
beq_cont.31988:
	beq		x12, x7, beq.31991	# 1344
	jal		x0, beq_cont.31990	# 1344
beq.31991:
	fadd	f2, f0, f16	# 1344
	fsub	f1, f1, f2	# 1344
beq_cont.31990:
	mul		x6, x30, x7	# 1344
	add		x6, x11, x6	# 1344
	fsw		f1, 0(x6)	# 1344
	jal		x0, beq_cont.31984	# 1342
	jal		x0, beq_cont.31984	# 1339
beq.31985:
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
beq_cont.31984:
	sub		x5, x5, x9	# 1346
	lw		x31, 0(x29)	# 1346
	jalr	x0, x31, 0	# 1346
check_all_inside.2824.18042:
	lw		x6, 24(x29)	# 1401
	lw		x7, 20(x29)	# 1401
	lw		x8, 16(x29)	# 1401
	lw		x9, 12(x29)	# 1401
	lw		x10, 8(x29)	# 1401
	flw		f4, 4(x29)	# 1401
	mul		x11, x30, x4	# 1401
	add		x11, x5, x11	# 1401
	lw		x11, 0(x11)	# 1401
	beq		x11, x7, beq.31992	# 1402
	mul		x7, x30, x11	# 1405
	addi	x7, x7, 63844	# 1405
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
	beq		x11, x10, beq.31994	# 1391
	beq		x11, x6, beq.31996	# 1393
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
	beq		x11, x9, beq.31998	# 1006
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
	jal		x0, beq_cont.31997	# 1006
beq.31998:
	fadd	f5, f0, f8	# 1007
beq_cont.31997:
	lw		x6, 4(x7)	# 390
	beq		x6, x8, beq.32000	# 1381
	jal		x0, beq_cont.31999	# 1381
beq.32000:
	fadd	f6, f0, f16	# 1381
	fsub	f5, f5, f6	# 1381
beq_cont.31999:
	lw		x6, 24(x7)	# 410
	fle		f4, f5, fle.32002	# 122
	addi	x7, x0, 1	# 122
	jal		x0, fle_cont.32001	# 122
fle.32002:
	addi	x7, x0, 0	# 122
fle_cont.32001:
	beq		x6, x9, beq.32004	# 241
	fle		f4, f5, fle.32006	# 122
	addi	x6, x0, 0	# 241
	jal		x0, beq_cont.32003	# 122
fle.32006:
	addi	x6, x0, 1	# 241
	jal		x0, beq_cont.32003	# 241
beq.32004:
	addi	x6, x7, 0	# 241
beq_cont.32003:
	beq		x6, x9, beq.32008	# 1382
	addi	x6, x0, 0	# 1382
	jal		x0, beq_cont.31993	# 1382
beq.32008:
	addi	x6, x0, 1	# 1382
	jal		x0, beq_cont.31993	# 1393
beq.31996:
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
	fle		f4, f5, fle.32010	# 122
	addi	x7, x0, 1	# 122
	jal		x0, fle_cont.32009	# 122
fle.32010:
	addi	x7, x0, 0	# 122
fle_cont.32009:
	beq		x6, x9, beq.32012	# 241
	fle		f4, f5, fle.32014	# 122
	addi	x6, x0, 0	# 241
	jal		x0, beq_cont.32011	# 122
fle.32014:
	addi	x6, x0, 1	# 241
	jal		x0, beq_cont.32011	# 241
beq.32012:
	addi	x6, x7, 0	# 241
beq_cont.32011:
	beq		x6, x9, beq.32016	# 1375
	addi	x6, x0, 0	# 1375
	jal		x0, beq_cont.31993	# 1375
beq.32016:
	addi	x6, x0, 1	# 1375
	jal		x0, beq_cont.31993	# 1391
beq.31994:
	fle		f5, f4, fle.32018	# 124
	jal		x0, fle_cont.32017	# 124
fle.32018:
	fsub	f5, f0, f5	# 124
fle_cont.32017:
	lw		x8, 16(x7)	# 428
	mul		x11, x30, x9	# 433
	add		x8, x8, x11	# 433
	flw		f8, 0(x8)	# 433
	fle		f8, f5, fle.32020	# 125
	fle		f6, f4, fle.32022	# 124
	fadd	f5, f0, f6	# 124
	jal		x0, fle_cont.32021	# 124
fle.32022:
	fsub	f5, f0, f6	# 124
fle_cont.32021:
	lw		x8, 16(x7)	# 438
	mul		x11, x30, x10	# 443
	add		x8, x8, x11	# 443
	flw		f6, 0(x8)	# 443
	fle		f6, f5, fle.32024	# 125
	fle		f7, f4, fle.32026	# 124
	fadd	f4, f0, f7	# 124
	jal		x0, fle_cont.32025	# 124
fle.32026:
	fsub	f4, f0, f7	# 124
fle_cont.32025:
	lw		x8, 16(x7)	# 448
	mul		x6, x30, x6	# 453
	add		x6, x8, x6	# 453
	flw		f5, 0(x6)	# 453
	fle		f5, f4, fle.32028	# 125
	addi	x6, x0, 1	# 125
	jal		x0, fle_cont.32019	# 125
fle.32028:
	addi	x6, x0, 0	# 125
	jal		x0, fle_cont.32019	# 125
fle.32024:
	addi	x6, x0, 0	# 1367
	jal		x0, fle_cont.32019	# 125
fle.32020:
	addi	x6, x0, 0	# 1368
fle_cont.32019:
	beq		x6, x9, beq.32030	# 1363
	lw		x6, 24(x7)	# 410
	jal		x0, beq_cont.31993	# 1363
beq.32030:
	lw		x6, 24(x7)	# 410
	beq		x6, x9, beq.32032	# 1369
	addi	x6, x0, 0	# 1369
	jal		x0, beq_cont.31993	# 1369
beq.32032:
	addi	x6, x0, 1	# 1369
beq_cont.31993:
	beq		x6, x9, beq.32033	# 1405
	addi	x4, x0, 0	# 1406
	jalr	x0, x1, 0	# 1406
beq.32033:
	add		x4, x4, x10	# 1408
	lw		x31, 0(x29)	# 1408
	jalr	x0, x31, 0	# 1408
beq.31992:
	addi	x4, x0, 1	# 1403
	jalr	x0, x1, 0	# 1403
shadow_check_and_group.2830.18048:
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
	beq		x13, x9, beq.32034	# 1421
	mul		x9, x30, x13	# 1163
	addi	x9, x9, 63844	# 1163
	lw		x9, 0(x9)	# 1163
	mul		x14, x30, x11	# 1164
	addi	x14, x14, 64348	# 1164
	flw		f2, 0(x14)	# 1164
	lw		x14, 20(x9)	# 468
	mul		x15, x30, x11	# 473
	add		x14, x14, x15	# 473
	flw		f3, 0(x14)	# 473
	fsub	f2, f2, f3	# 1164
	mul		x14, x30, x12	# 1165
	addi	x14, x14, 64348	# 1165
	flw		f3, 0(x14)	# 1165
	lw		x14, 20(x9)	# 478
	mul		x15, x30, x12	# 483
	add		x14, x14, x15	# 483
	flw		f4, 0(x14)	# 483
	fsub	f3, f3, f4	# 1165
	mul		x14, x30, x8	# 1166
	addi	x14, x14, 64348	# 1166
	flw		f4, 0(x14)	# 1166
	lw		x14, 20(x9)	# 488
	mul		x15, x30, x8	# 493
	add		x14, x14, x15	# 493
	flw		f5, 0(x14)	# 493
	fsub	f4, f4, f5	# 1166
	mul		x14, x30, x13	# 1168
	addi	x14, x14, 64544	# 1168
	lw		x14, 0(x14)	# 1168
	lw		x15, 4(x9)	# 390
	beq		x15, x12, beq.32036	# 1170
	beq		x15, x8, beq.32038	# 1172
	mul		x7, x30, x11	# 1144
	add		x7, x14, x7	# 1144
	flw		f5, 0(x7)	# 1144
	feq		f5, f1, feq.32040	# 120
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
	beq		x7, x11, beq.32042	# 1006
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
	jal		x0, beq_cont.32041	# 1006
beq.32042:
	fadd	f2, f0, f7	# 1007
beq_cont.32041:
	lw		x7, 4(x9)	# 390
	beq		x7, x10, beq.32044	# 1150
	jal		x0, beq_cont.32043	# 1150
beq.32044:
	fadd	f3, f0, f16	# 1150
	fsub	f2, f2, f3	# 1150
beq_cont.32043:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1151
	fsub	f2, f3, f2	# 1151
	fle		f2, f1, fle.32046	# 121
	lw		x7, 24(x9)	# 410
	beq		x7, x11, beq.32048	# 1153
	fsqrt	f1, f2	# 1154
	fadd	f1, f6, f1	# 1154
	addi	x7, x0, 4	# 1154
	mul		x7, x30, x7	# 1154
	add		x7, x14, x7	# 1154
	flw		f2, 0(x7)	# 1154
	fmul	f1, f1, f2	# 1154
	mul		x7, x30, x11	# 1154
	addi	x7, x7, 64336	# 1154
	fsw		f1, 0(x7)	# 1154
	jal		x0, beq_cont.32047	# 1153
beq.32048:
	fsqrt	f1, f2	# 1156
	fsub	f1, f6, f1	# 1156
	addi	x7, x0, 4	# 1156
	mul		x7, x30, x7	# 1156
	add		x7, x14, x7	# 1156
	flw		f2, 0(x7)	# 1156
	fmul	f1, f1, f2	# 1156
	mul		x7, x30, x11	# 1156
	addi	x7, x7, 64336	# 1156
	fsw		f1, 0(x7)	# 1156
beq_cont.32047:
	addi	x7, x0, 1	# 1157
	jal		x0, beq_cont.32035	# 121
fle.32046:
	addi	x7, x0, 0	# 1158
	jal		x0, beq_cont.32035	# 120
feq.32040:
	addi	x7, x0, 0	# 1146
	jal		x0, beq_cont.32035	# 1172
beq.32038:
	mul		x7, x30, x11	# 1134
	add		x7, x14, x7	# 1134
	flw		f5, 0(x7)	# 1134
	fle		f1, f5, fle.32050	# 122
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
	addi	x7, x7, 64336	# 1135
	fsw		f1, 0(x7)	# 1135
	addi	x7, x0, 1	# 1137
	jal		x0, beq_cont.32035	# 122
fle.32050:
	addi	x7, x0, 0	# 1138
	jal		x0, beq_cont.32035	# 1170
beq.32036:
	mul		x15, x30, x11	# 1101
	add		x15, x14, x15	# 1101
	flw		f5, 0(x15)	# 1101
	fsub	f5, f5, f2	# 1101
	mul		x15, x30, x12	# 1101
	add		x15, x14, x15	# 1101
	flw		f6, 0(x15)	# 1101
	fmul	f5, f5, f6	# 1101
	mul		x15, x30, x12	# 1103
	addi	x15, x15, 64532	# 1103
	flw		f7, 0(x15)	# 1103
	fmul	f8, f5, f7	# 1103
	fadd	f8, f8, f3	# 1103
	fle		f8, f1, fle.32052	# 124
	jal		x0, fle_cont.32051	# 124
fle.32052:
	fsub	f8, f0, f8	# 124
fle_cont.32051:
	lw		x15, 16(x9)	# 438
	mul		x16, x30, x12	# 443
	add		x15, x15, x16	# 443
	flw		f9, 0(x15)	# 443
	fle		f9, f8, fle.32054	# 125
	mul		x15, x30, x8	# 1104
	addi	x15, x15, 64532	# 1104
	flw		f8, 0(x15)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		f8, f1, fle.32056	# 124
	jal		x0, fle_cont.32055	# 124
fle.32056:
	fsub	f8, f0, f8	# 124
fle_cont.32055:
	lw		x15, 16(x9)	# 448
	mul		x16, x30, x8	# 453
	add		x15, x15, x16	# 453
	flw		f9, 0(x15)	# 453
	fle		f9, f8, fle.32058	# 125
	feq		f6, f1, feq.32060	# 120
	addi	x15, x0, 1	# 1105
	jal		x0, fle_cont.32053	# 120
feq.32060:
	addi	x15, x0, 0	# 1105
	jal		x0, fle_cont.32053	# 125
fle.32058:
	addi	x15, x0, 0	# 1106
	jal		x0, fle_cont.32053	# 125
fle.32054:
	addi	x15, x0, 0	# 1107
fle_cont.32053:
	beq		x15, x11, beq.32062	# 1102
	mul		x7, x30, x11	# 1109
	addi	x7, x7, 64336	# 1109
	fsw		f5, 0(x7)	# 1109
	addi	x7, x0, 1	# 1109
	jal		x0, beq_cont.32035	# 1102
beq.32062:
	mul		x15, x30, x8	# 1110
	add		x15, x14, x15	# 1110
	flw		f5, 0(x15)	# 1110
	fsub	f5, f5, f3	# 1110
	mul		x10, x30, x10	# 1110
	add		x10, x14, x10	# 1110
	flw		f6, 0(x10)	# 1110
	fmul	f5, f5, f6	# 1110
	mul		x10, x30, x11	# 1112
	addi	x10, x10, 64532	# 1112
	flw		f8, 0(x10)	# 1112
	fmul	f9, f5, f8	# 1112
	fadd	f9, f9, f2	# 1112
	fle		f9, f1, fle.32064	# 124
	jal		x0, fle_cont.32063	# 124
fle.32064:
	fsub	f9, f0, f9	# 124
fle_cont.32063:
	lw		x10, 16(x9)	# 428
	mul		x15, x30, x11	# 433
	add		x10, x10, x15	# 433
	flw		f10, 0(x10)	# 433
	fle		f10, f9, fle.32066	# 125
	mul		x10, x30, x8	# 1113
	addi	x10, x10, 64532	# 1113
	flw		f9, 0(x10)	# 1113
	fmul	f9, f5, f9	# 1113
	fadd	f9, f9, f4	# 1113
	fle		f9, f1, fle.32068	# 124
	jal		x0, fle_cont.32067	# 124
fle.32068:
	fsub	f9, f0, f9	# 124
fle_cont.32067:
	lw		x10, 16(x9)	# 448
	mul		x15, x30, x8	# 453
	add		x10, x10, x15	# 453
	flw		f10, 0(x10)	# 453
	fle		f10, f9, fle.32070	# 125
	feq		f6, f1, feq.32072	# 120
	addi	x10, x0, 1	# 1114
	jal		x0, fle_cont.32065	# 120
feq.32072:
	addi	x10, x0, 0	# 1114
	jal		x0, fle_cont.32065	# 125
fle.32070:
	addi	x10, x0, 0	# 1115
	jal		x0, fle_cont.32065	# 125
fle.32066:
	addi	x10, x0, 0	# 1116
fle_cont.32065:
	beq		x10, x11, beq.32074	# 1111
	mul		x7, x30, x11	# 1118
	addi	x7, x7, 64336	# 1118
	fsw		f5, 0(x7)	# 1118
	addi	x7, x0, 2	# 1118
	jal		x0, beq_cont.32035	# 1111
beq.32074:
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
	fle		f2, f1, fle.32076	# 124
	jal		x0, fle_cont.32075	# 124
fle.32076:
	fsub	f2, f0, f2	# 124
fle_cont.32075:
	lw		x7, 16(x9)	# 428
	mul		x10, x30, x11	# 433
	add		x7, x7, x10	# 433
	flw		f6, 0(x7)	# 433
	fle		f6, f2, fle.32078	# 125
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		f2, f1, fle.32080	# 124
	jal		x0, fle_cont.32079	# 124
fle.32080:
	fsub	f2, f0, f2	# 124
fle_cont.32079:
	lw		x7, 16(x9)	# 438
	mul		x9, x30, x12	# 443
	add		x7, x7, x9	# 443
	flw		f3, 0(x7)	# 443
	fle		f3, f2, fle.32082	# 125
	feq		f5, f1, feq.32084	# 120
	addi	x7, x0, 1	# 1123
	jal		x0, fle_cont.32077	# 120
feq.32084:
	addi	x7, x0, 0	# 1123
	jal		x0, fle_cont.32077	# 125
fle.32082:
	addi	x7, x0, 0	# 1124
	jal		x0, fle_cont.32077	# 125
fle.32078:
	addi	x7, x0, 0	# 1125
fle_cont.32077:
	beq		x7, x11, beq.32086	# 1120
	mul		x7, x30, x11	# 1127
	addi	x7, x7, 64336	# 1127
	fsw		f4, 0(x7)	# 1127
	addi	x7, x0, 3	# 1127
	jal		x0, beq_cont.32035	# 1120
beq.32086:
	addi	x7, x0, 0	# 1129
beq_cont.32035:
	mul		x9, x30, x11	# 1426
	addi	x9, x9, 64336	# 1426
	flw		f1, 0(x9)	# 1426
	beq		x7, x11, beq.32088	# 1427
	fadd	f2, f0, f20	# 1427
	fle		f2, f1, fle.32090	# 125
	addi	x7, x0, 1	# 125
	jal		x0, beq_cont.32087	# 125
fle.32090:
	addi	x7, x0, 0	# 125
	jal		x0, beq_cont.32087	# 1427
beq.32088:
	addi	x7, x0, 0	# 1427
beq_cont.32087:
	beq		x7, x11, beq.32091	# 1427
	fadd	f2, f0, f19	# 1430
	fadd	f1, f1, f2	# 1430
	mul		x7, x30, x11	# 1431
	addi	x7, x7, 64108	# 1431
	flw		f2, 0(x7)	# 1431
	fmul	f2, f2, f1	# 1431
	mul		x7, x30, x11	# 1431
	addi	x7, x7, 64348	# 1431
	flw		f3, 0(x7)	# 1431
	fadd	f2, f2, f3	# 1431
	mul		x7, x30, x12	# 1432
	addi	x7, x7, 64108	# 1432
	flw		f3, 0(x7)	# 1432
	fmul	f3, f3, f1	# 1432
	mul		x7, x30, x12	# 1432
	addi	x7, x7, 64348	# 1432
	flw		f4, 0(x7)	# 1432
	fadd	f3, f3, f4	# 1432
	mul		x7, x30, x8	# 1433
	addi	x7, x7, 64108	# 1433
	flw		f4, 0(x7)	# 1433
	fmul	f1, f4, f1	# 1433
	mul		x7, x30, x8	# 1433
	addi	x7, x7, 64348	# 1433
	flw		f4, 0(x7)	# 1433
	fadd	f1, f1, f4	# 1433
	sw		x5, 0(x2)	# 1434
	sw		x29, -4(x2)	# 1434
	sw		x12, -8(x2)	# 1434
	sw		x4, -12(x2)	# 1434
	sw		x11, -16(x2)	# 1434
	addi	x4, x11, 0	# 1434
	addi	x29, x6, 0	# 1434
	fadd	f31, f0, f3	# 1434
	fadd	f3, f0, f1	# 1434
	fadd	f1, f0, f2	# 1434
	fadd	f2, f0, f31	# 1434
	sw		x1, -20(x2)	# 1434
	addi	x2, x2, -24	# 1434
	lw		x31, 0(x29)	# 1434
	jalr	x1, x31, 0	# 1434
	addi	x2, x2, 24	# 1434
	lw		x1, -20(x2)	# 1434
	lw		x5, -16(x2)	# 1434
	beq		x4, x5, beq.32092	# 1434
	addi	x4, x0, 1	# 1435
	jalr	x0, x1, 0	# 1435
beq.32092:
	lw		x4, -8(x2)	# 1437
	lw		x5, -12(x2)	# 1437
	add		x4, x5, x4	# 1437
	lw		x5, 0(x2)	# 1437
	lw		x29, -4(x2)	# 1437
	lw		x31, 0(x29)	# 1437
	jalr	x0, x31, 0	# 1437
beq.32091:
	mul		x6, x30, x13	# 1443
	addi	x6, x6, 63844	# 1443
	lw		x6, 0(x6)	# 1443
	lw		x6, 24(x6)	# 410
	beq		x6, x11, beq.32093	# 1443
	add		x4, x4, x12	# 1444
	lw		x31, 0(x29)	# 1444
	jalr	x0, x31, 0	# 1444
beq.32093:
	addi	x4, x0, 0	# 1446
	jalr	x0, x1, 0	# 1446
beq.32034:
	addi	x4, x0, 0	# 1422
	jalr	x0, x1, 0	# 1422
shadow_check_one_or_group.2833.18051:
	lw		x6, 16(x29)	# 1451
	lw		x7, 12(x29)	# 1451
	lw		x8, 8(x29)	# 1451
	lw		x9, 4(x29)	# 1451
	mul		x10, x30, x4	# 1451
	add		x10, x5, x10	# 1451
	lw		x10, 0(x10)	# 1451
	beq		x10, x7, beq.32094	# 1452
	mul		x7, x30, x10	# 1455
	addi	x7, x7, 64128	# 1455
	lw		x7, 0(x7)	# 1455
	sw		x5, 0(x2)	# 1456
	sw		x29, -4(x2)	# 1456
	sw		x9, -8(x2)	# 1456
	sw		x4, -12(x2)	# 1456
	sw		x8, -16(x2)	# 1456
	addi	x5, x7, 0	# 1456
	addi	x4, x8, 0	# 1456
	addi	x29, x6, 0	# 1456
	sw		x1, -20(x2)	# 1456
	addi	x2, x2, -24	# 1456
	lw		x31, 0(x29)	# 1456
	jalr	x1, x31, 0	# 1456
	addi	x2, x2, 24	# 1456
	lw		x1, -20(x2)	# 1456
	lw		x5, -16(x2)	# 1457
	beq		x4, x5, beq.32095	# 1457
	addi	x4, x0, 1	# 1458
	jalr	x0, x1, 0	# 1458
beq.32095:
	lw		x4, -8(x2)	# 1460
	lw		x5, -12(x2)	# 1460
	add		x4, x5, x4	# 1460
	lw		x5, 0(x2)	# 1460
	lw		x29, -4(x2)	# 1460
	lw		x31, 0(x29)	# 1460
	jalr	x0, x31, 0	# 1460
beq.32094:
	addi	x4, x0, 0	# 1453
	jalr	x0, x1, 0	# 1453
shadow_check_one_or_matrix.2836.18054:
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
	beq		x14, x9, beq.32096	# 1468
	addi	x9, x0, 99	# 1472
	sw		x13, 0(x2)	# 1472
	sw		x6, -4(x2)	# 1472
	sw		x5, -8(x2)	# 1472
	sw		x29, -12(x2)	# 1472
	sw		x12, -16(x2)	# 1472
	sw		x4, -20(x2)	# 1472
	sw		x11, -24(x2)	# 1472
	beq		x14, x9, beq.32098	# 1472
	mul		x9, x30, x14	# 1163
	addi	x9, x9, 63844	# 1163
	lw		x9, 0(x9)	# 1163
	mul		x15, x30, x11	# 1164
	addi	x15, x15, 64348	# 1164
	flw		f2, 0(x15)	# 1164
	lw		x15, 20(x9)	# 468
	mul		x16, x30, x11	# 473
	add		x15, x15, x16	# 473
	flw		f3, 0(x15)	# 473
	fsub	f2, f2, f3	# 1164
	mul		x15, x30, x12	# 1165
	addi	x15, x15, 64348	# 1165
	flw		f3, 0(x15)	# 1165
	lw		x15, 20(x9)	# 478
	mul		x16, x30, x12	# 483
	add		x15, x15, x16	# 483
	flw		f4, 0(x15)	# 483
	fsub	f3, f3, f4	# 1165
	mul		x15, x30, x8	# 1166
	addi	x15, x15, 64348	# 1166
	flw		f4, 0(x15)	# 1166
	lw		x15, 20(x9)	# 488
	mul		x16, x30, x8	# 493
	add		x15, x15, x16	# 493
	flw		f5, 0(x15)	# 493
	fsub	f4, f4, f5	# 1166
	mul		x14, x30, x14	# 1168
	addi	x14, x14, 64544	# 1168
	lw		x14, 0(x14)	# 1168
	lw		x15, 4(x9)	# 390
	beq		x15, x12, beq.32100	# 1170
	beq		x15, x8, beq.32102	# 1172
	mul		x7, x30, x11	# 1144
	add		x7, x14, x7	# 1144
	flw		f5, 0(x7)	# 1144
	feq		f5, f1, feq.32104	# 120
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
	beq		x7, x11, beq.32106	# 1006
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
	jal		x0, beq_cont.32105	# 1006
beq.32106:
	fadd	f2, f0, f7	# 1007
beq_cont.32105:
	lw		x7, 4(x9)	# 390
	beq		x7, x10, beq.32108	# 1150
	jal		x0, beq_cont.32107	# 1150
beq.32108:
	fadd	f3, f0, f16	# 1150
	fsub	f2, f2, f3	# 1150
beq_cont.32107:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1151
	fsub	f2, f3, f2	# 1151
	fle		f2, f1, fle.32110	# 121
	lw		x7, 24(x9)	# 410
	beq		x7, x11, beq.32112	# 1153
	fsqrt	f1, f2	# 1154
	fadd	f1, f6, f1	# 1154
	addi	x7, x0, 4	# 1154
	mul		x7, x30, x7	# 1154
	add		x7, x14, x7	# 1154
	flw		f2, 0(x7)	# 1154
	fmul	f1, f1, f2	# 1154
	mul		x7, x30, x11	# 1154
	addi	x7, x7, 64336	# 1154
	fsw		f1, 0(x7)	# 1154
	jal		x0, beq_cont.32111	# 1153
beq.32112:
	fsqrt	f1, f2	# 1156
	fsub	f1, f6, f1	# 1156
	addi	x7, x0, 4	# 1156
	mul		x7, x30, x7	# 1156
	add		x7, x14, x7	# 1156
	flw		f2, 0(x7)	# 1156
	fmul	f1, f1, f2	# 1156
	mul		x7, x30, x11	# 1156
	addi	x7, x7, 64336	# 1156
	fsw		f1, 0(x7)	# 1156
beq_cont.32111:
	addi	x7, x0, 1	# 1157
	jal		x0, beq_cont.32099	# 121
fle.32110:
	addi	x7, x0, 0	# 1158
	jal		x0, beq_cont.32099	# 120
feq.32104:
	addi	x7, x0, 0	# 1146
	jal		x0, beq_cont.32099	# 1172
beq.32102:
	mul		x7, x30, x11	# 1134
	add		x7, x14, x7	# 1134
	flw		f5, 0(x7)	# 1134
	fle		f1, f5, fle.32114	# 122
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
	addi	x7, x7, 64336	# 1135
	fsw		f1, 0(x7)	# 1135
	addi	x7, x0, 1	# 1137
	jal		x0, beq_cont.32099	# 122
fle.32114:
	addi	x7, x0, 0	# 1138
	jal		x0, beq_cont.32099	# 1170
beq.32100:
	mul		x15, x30, x11	# 1101
	add		x15, x14, x15	# 1101
	flw		f5, 0(x15)	# 1101
	fsub	f5, f5, f2	# 1101
	mul		x15, x30, x12	# 1101
	add		x15, x14, x15	# 1101
	flw		f6, 0(x15)	# 1101
	fmul	f5, f5, f6	# 1101
	mul		x15, x30, x12	# 1103
	addi	x15, x15, 64532	# 1103
	flw		f7, 0(x15)	# 1103
	fmul	f8, f5, f7	# 1103
	fadd	f8, f8, f3	# 1103
	fle		f8, f1, fle.32116	# 124
	jal		x0, fle_cont.32115	# 124
fle.32116:
	fsub	f8, f0, f8	# 124
fle_cont.32115:
	lw		x15, 16(x9)	# 438
	mul		x16, x30, x12	# 443
	add		x15, x15, x16	# 443
	flw		f9, 0(x15)	# 443
	fle		f9, f8, fle.32118	# 125
	mul		x15, x30, x8	# 1104
	addi	x15, x15, 64532	# 1104
	flw		f8, 0(x15)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		f8, f1, fle.32120	# 124
	jal		x0, fle_cont.32119	# 124
fle.32120:
	fsub	f8, f0, f8	# 124
fle_cont.32119:
	lw		x15, 16(x9)	# 448
	mul		x16, x30, x8	# 453
	add		x15, x15, x16	# 453
	flw		f9, 0(x15)	# 453
	fle		f9, f8, fle.32122	# 125
	feq		f6, f1, feq.32124	# 120
	addi	x15, x0, 1	# 1105
	jal		x0, fle_cont.32117	# 120
feq.32124:
	addi	x15, x0, 0	# 1105
	jal		x0, fle_cont.32117	# 125
fle.32122:
	addi	x15, x0, 0	# 1106
	jal		x0, fle_cont.32117	# 125
fle.32118:
	addi	x15, x0, 0	# 1107
fle_cont.32117:
	beq		x15, x11, beq.32126	# 1102
	mul		x7, x30, x11	# 1109
	addi	x7, x7, 64336	# 1109
	fsw		f5, 0(x7)	# 1109
	addi	x7, x0, 1	# 1109
	jal		x0, beq_cont.32099	# 1102
beq.32126:
	mul		x15, x30, x8	# 1110
	add		x15, x14, x15	# 1110
	flw		f5, 0(x15)	# 1110
	fsub	f5, f5, f3	# 1110
	mul		x10, x30, x10	# 1110
	add		x10, x14, x10	# 1110
	flw		f6, 0(x10)	# 1110
	fmul	f5, f5, f6	# 1110
	mul		x10, x30, x11	# 1112
	addi	x10, x10, 64532	# 1112
	flw		f8, 0(x10)	# 1112
	fmul	f9, f5, f8	# 1112
	fadd	f9, f9, f2	# 1112
	fle		f9, f1, fle.32128	# 124
	jal		x0, fle_cont.32127	# 124
fle.32128:
	fsub	f9, f0, f9	# 124
fle_cont.32127:
	lw		x10, 16(x9)	# 428
	mul		x15, x30, x11	# 433
	add		x10, x10, x15	# 433
	flw		f10, 0(x10)	# 433
	fle		f10, f9, fle.32130	# 125
	mul		x10, x30, x8	# 1113
	addi	x10, x10, 64532	# 1113
	flw		f9, 0(x10)	# 1113
	fmul	f9, f5, f9	# 1113
	fadd	f9, f9, f4	# 1113
	fle		f9, f1, fle.32132	# 124
	jal		x0, fle_cont.32131	# 124
fle.32132:
	fsub	f9, f0, f9	# 124
fle_cont.32131:
	lw		x10, 16(x9)	# 448
	mul		x8, x30, x8	# 453
	add		x8, x10, x8	# 453
	flw		f10, 0(x8)	# 453
	fle		f10, f9, fle.32134	# 125
	feq		f6, f1, feq.32136	# 120
	addi	x8, x0, 1	# 1114
	jal		x0, fle_cont.32129	# 120
feq.32136:
	addi	x8, x0, 0	# 1114
	jal		x0, fle_cont.32129	# 125
fle.32134:
	addi	x8, x0, 0	# 1115
	jal		x0, fle_cont.32129	# 125
fle.32130:
	addi	x8, x0, 0	# 1116
fle_cont.32129:
	beq		x8, x11, beq.32138	# 1111
	mul		x7, x30, x11	# 1118
	addi	x7, x7, 64336	# 1118
	fsw		f5, 0(x7)	# 1118
	addi	x7, x0, 2	# 1118
	jal		x0, beq_cont.32099	# 1111
beq.32138:
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
	fle		f2, f1, fle.32140	# 124
	jal		x0, fle_cont.32139	# 124
fle.32140:
	fsub	f2, f0, f2	# 124
fle_cont.32139:
	lw		x7, 16(x9)	# 428
	mul		x8, x30, x11	# 433
	add		x7, x7, x8	# 433
	flw		f6, 0(x7)	# 433
	fle		f6, f2, fle.32142	# 125
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		f2, f1, fle.32144	# 124
	jal		x0, fle_cont.32143	# 124
fle.32144:
	fsub	f2, f0, f2	# 124
fle_cont.32143:
	lw		x7, 16(x9)	# 438
	mul		x8, x30, x12	# 443
	add		x7, x7, x8	# 443
	flw		f3, 0(x7)	# 443
	fle		f3, f2, fle.32146	# 125
	feq		f5, f1, feq.32148	# 120
	addi	x7, x0, 1	# 1123
	jal		x0, fle_cont.32141	# 120
feq.32148:
	addi	x7, x0, 0	# 1123
	jal		x0, fle_cont.32141	# 125
fle.32146:
	addi	x7, x0, 0	# 1124
	jal		x0, fle_cont.32141	# 125
fle.32142:
	addi	x7, x0, 0	# 1125
fle_cont.32141:
	beq		x7, x11, beq.32150	# 1120
	mul		x7, x30, x11	# 1127
	addi	x7, x7, 64336	# 1127
	fsw		f4, 0(x7)	# 1127
	addi	x7, x0, 3	# 1127
	jal		x0, beq_cont.32099	# 1120
beq.32150:
	addi	x7, x0, 0	# 1129
beq_cont.32099:
	beq		x7, x11, beq.32152	# 1478
	mul		x7, x30, x11	# 1479
	addi	x7, x7, 64336	# 1479
	flw		f1, 0(x7)	# 1479
	fadd	f2, f0, f21	# 1479
	fle		f2, f1, fle.32154	# 125
	addi	x5, x13, 0	# 1480
	addi	x4, x12, 0	# 1480
	addi	x29, x6, 0	# 1480
	sw		x1, -28(x2)	# 1480
	addi	x2, x2, -32	# 1480
	lw		x31, 0(x29)	# 1480
	jalr	x1, x31, 0	# 1480
	addi	x2, x2, 32	# 1480
	lw		x1, -28(x2)	# 1480
	lw		x5, -24(x2)	# 1480
	beq		x4, x5, beq.32156	# 1480
	addi	x4, x0, 1	# 1481
	jal		x0, beq_cont.32097	# 1480
beq.32156:
	addi	x4, x0, 0	# 1482
	jal		x0, beq_cont.32097	# 125
fle.32154:
	addi	x4, x0, 0	# 1483
	jal		x0, beq_cont.32097	# 1478
beq.32152:
	addi	x4, x0, 0	# 1484
	jal		x0, beq_cont.32097	# 1472
beq.32098:
	addi	x4, x0, 1	# 1473
beq_cont.32097:
	lw		x5, -24(x2)	# 1471
	beq		x4, x5, beq.32157	# 1471
	lw		x4, -16(x2)	# 1486
	lw		x6, 0(x2)	# 1486
	lw		x29, -4(x2)	# 1486
	addi	x5, x6, 0	# 1486
	sw		x1, -28(x2)	# 1486
	addi	x2, x2, -32	# 1486
	lw		x31, 0(x29)	# 1486
	jalr	x1, x31, 0	# 1486
	addi	x2, x2, 32	# 1486
	lw		x1, -28(x2)	# 1486
	lw		x5, -24(x2)	# 1486
	beq		x4, x5, beq.32158	# 1486
	addi	x4, x0, 1	# 1487
	jalr	x0, x1, 0	# 1487
beq.32158:
	lw		x4, -16(x2)	# 1489
	lw		x5, -20(x2)	# 1489
	add		x4, x5, x4	# 1489
	lw		x5, -8(x2)	# 1489
	lw		x29, -12(x2)	# 1489
	lw		x31, 0(x29)	# 1489
	jalr	x0, x31, 0	# 1489
beq.32157:
	lw		x4, -16(x2)	# 1491
	lw		x5, -20(x2)	# 1491
	add		x4, x5, x4	# 1491
	lw		x5, -8(x2)	# 1491
	lw		x29, -12(x2)	# 1491
	lw		x31, 0(x29)	# 1491
	jalr	x0, x31, 0	# 1491
beq.32096:
	addi	x4, x0, 0	# 1469
	jalr	x0, x1, 0	# 1469
solve_each_element.2839.18057:
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
	beq		x13, x9, beq.32159	# 1503
	mul		x9, x30, x13	# 1069
	addi	x9, x9, 63844	# 1069
	lw		x9, 0(x9)	# 1069
	mul		x14, x30, x11	# 1071
	addi	x14, x14, 64432	# 1071
	flw		f2, 0(x14)	# 1071
	lw		x14, 20(x9)	# 468
	mul		x15, x30, x11	# 473
	add		x14, x14, x15	# 473
	flw		f3, 0(x14)	# 473
	fsub	f2, f2, f3	# 1071
	mul		x14, x30, x12	# 1072
	addi	x14, x14, 64432	# 1072
	flw		f3, 0(x14)	# 1072
	lw		x14, 20(x9)	# 478
	mul		x15, x30, x12	# 483
	add		x14, x14, x15	# 483
	flw		f4, 0(x14)	# 483
	fsub	f3, f3, f4	# 1072
	mul		x14, x30, x8	# 1073
	addi	x14, x14, 64432	# 1073
	flw		f4, 0(x14)	# 1073
	lw		x14, 20(x9)	# 488
	mul		x15, x30, x8	# 493
	add		x14, x14, x15	# 493
	flw		f5, 0(x14)	# 493
	fsub	f4, f4, f5	# 1073
	lw		x14, 4(x9)	# 390
	beq		x14, x12, beq.32161	# 1076
	beq		x14, x8, beq.32163	# 1077
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
	beq		x14, x11, beq_cont.32164	# 1006
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
	jal		x0, beq_cont.32164	# 1006
beq_cont.32164:
	feq		f8, f1, feq.32167	# 120
	fmul	f10, f5, f2	# 1018
	fmul	f10, f10, f9	# 1018
	fmul	f13, f6, f3	# 1019
	fmul	f13, f13, f11	# 1019
	fadd	f10, f10, f13	# 1018
	fmul	f13, f7, f4	# 1020
	fmul	f13, f13, f12	# 1020
	fadd	f10, f10, f13	# 1018
	beq		x14, x11, beq.32169	# 1022
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
	jal		x0, beq_cont.32168	# 1022
beq.32169:
	fadd	f5, f0, f10	# 1023
beq_cont.32168:
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f9	# 1004
	fmul	f7, f3, f3	# 127
	fmul	f7, f7, f11	# 1004
	fadd	f6, f6, f7	# 1004
	fmul	f7, f4, f4	# 127
	fmul	f7, f7, f12	# 1004
	fadd	f6, f6, f7	# 1004
	beq		x14, x11, beq.32171	# 1006
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
	jal		x0, beq_cont.32170	# 1006
beq.32171:
	fadd	f2, f0, f6	# 1007
beq_cont.32170:
	lw		x14, 4(x9)	# 390
	beq		x14, x10, beq.32173	# 1053
	jal		x0, beq_cont.32172	# 1053
beq.32173:
	fadd	f3, f0, f16	# 1053
	fsub	f2, f2, f3	# 1053
beq_cont.32172:
	fmul	f3, f5, f5	# 127
	fmul	f2, f8, f2	# 1055
	fsub	f2, f3, f2	# 1055
	fle		f2, f1, fle.32175	# 121
	fsqrt	f2, f2	# 1058
	lw		x9, 24(x9)	# 410
	beq		x9, x11, beq.32177	# 1059
	jal		x0, beq_cont.32176	# 1059
beq.32177:
	fsub	f2, f0, f2	# 123
beq_cont.32176:
	fsub	f2, f2, f5	# 1060
	fdiv	f2, f2, f8	# 1060
	mul		x9, x30, x11	# 1060
	addi	x9, x9, 64336	# 1060
	fsw		f2, 0(x9)	# 1060
	addi	x9, x0, 1	# 1060
	jal		x0, beq_cont.32160	# 121
fle.32175:
	addi	x9, x0, 0	# 1063
	jal		x0, beq_cont.32160	# 120
feq.32167:
	addi	x9, x0, 0	# 1046
	jal		x0, beq_cont.32160	# 1077
beq.32163:
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
	fle		f5, f1, fle.32179	# 121
	fmul	f2, f6, f2	# 334
	fmul	f3, f8, f3	# 334
	fadd	f2, f2, f3	# 334
	fmul	f3, f9, f4	# 334
	fadd	f2, f2, f3	# 334
	fsub	f2, f0, f2	# 123
	fdiv	f2, f2, f5	# 994
	mul		x9, x30, x11	# 994
	addi	x9, x9, 64336	# 994
	fsw		f2, 0(x9)	# 994
	addi	x9, x0, 1	# 995
	jal		x0, beq_cont.32160	# 121
fle.32179:
	addi	x9, x0, 0	# 996
	jal		x0, beq_cont.32160	# 1076
beq.32161:
	mul		x10, x30, x11	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		f5, f1, feq.32181	# 120
	lw		x10, 16(x9)	# 458
	lw		x14, 24(x9)	# 410
	fle		f1, f5, fle.32183	# 122
	addi	x15, x0, 1	# 122
	jal		x0, fle_cont.32182	# 122
fle.32183:
	addi	x15, x0, 0	# 122
fle_cont.32182:
	beq		x14, x11, beq.32185	# 241
	fle		f1, f5, fle.32187	# 122
	addi	x14, x0, 0	# 241
	jal		x0, beq_cont.32184	# 122
fle.32187:
	addi	x14, x0, 1	# 241
	jal		x0, beq_cont.32184	# 241
beq.32185:
	addi	x14, x15, 0	# 241
beq_cont.32184:
	mul		x15, x30, x11	# 967
	add		x15, x10, x15	# 967
	flw		f6, 0(x15)	# 967
	beq		x14, x11, beq.32189	# 256
	jal		x0, beq_cont.32188	# 256
beq.32189:
	fsub	f6, f0, f6	# 123
beq_cont.32188:
	fsub	f6, f6, f2	# 969
	fdiv	f5, f6, f5	# 969
	mul		x14, x30, x12	# 970
	add		x14, x6, x14	# 970
	flw		f6, 0(x14)	# 970
	fmul	f6, f5, f6	# 970
	fadd	f6, f6, f3	# 970
	fle		f6, f1, fle.32191	# 124
	jal		x0, fle_cont.32190	# 124
fle.32191:
	fsub	f6, f0, f6	# 124
fle_cont.32190:
	mul		x14, x30, x12	# 970
	add		x14, x10, x14	# 970
	flw		f7, 0(x14)	# 970
	fle		f7, f6, fle.32193	# 125
	mul		x14, x30, x8	# 971
	add		x14, x6, x14	# 971
	flw		f6, 0(x14)	# 971
	fmul	f6, f5, f6	# 971
	fadd	f6, f6, f4	# 971
	fle		f6, f1, fle.32195	# 124
	jal		x0, fle_cont.32194	# 124
fle.32195:
	fsub	f6, f0, f6	# 124
fle_cont.32194:
	mul		x14, x30, x8	# 971
	add		x10, x10, x14	# 971
	flw		f7, 0(x10)	# 971
	fle		f7, f6, fle.32197	# 125
	mul		x10, x30, x11	# 972
	addi	x10, x10, 64336	# 972
	fsw		f5, 0(x10)	# 972
	addi	x10, x0, 1	# 972
	jal		x0, feq_cont.32180	# 125
fle.32197:
	addi	x10, x0, 0	# 973
	jal		x0, feq_cont.32180	# 125
fle.32193:
	addi	x10, x0, 0	# 974
	jal		x0, feq_cont.32180	# 120
feq.32181:
	addi	x10, x0, 0	# 965
feq_cont.32180:
	beq		x10, x11, beq.32199	# 980
	addi	x9, x0, 1	# 980
	jal		x0, beq_cont.32160	# 980
beq.32199:
	mul		x10, x30, x12	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		f5, f1, feq.32201	# 120
	lw		x10, 16(x9)	# 458
	lw		x14, 24(x9)	# 410
	fle		f1, f5, fle.32203	# 122
	addi	x15, x0, 1	# 122
	jal		x0, fle_cont.32202	# 122
fle.32203:
	addi	x15, x0, 0	# 122
fle_cont.32202:
	beq		x14, x11, beq.32205	# 241
	fle		f1, f5, fle.32207	# 122
	addi	x14, x0, 0	# 241
	jal		x0, beq_cont.32204	# 122
fle.32207:
	addi	x14, x0, 1	# 241
	jal		x0, beq_cont.32204	# 241
beq.32205:
	addi	x14, x15, 0	# 241
beq_cont.32204:
	mul		x15, x30, x12	# 967
	add		x15, x10, x15	# 967
	flw		f6, 0(x15)	# 967
	beq		x14, x11, beq.32209	# 256
	jal		x0, beq_cont.32208	# 256
beq.32209:
	fsub	f6, f0, f6	# 123
beq_cont.32208:
	fsub	f6, f6, f3	# 969
	fdiv	f5, f6, f5	# 969
	mul		x14, x30, x8	# 970
	add		x14, x6, x14	# 970
	flw		f6, 0(x14)	# 970
	fmul	f6, f5, f6	# 970
	fadd	f6, f6, f4	# 970
	fle		f6, f1, fle.32211	# 124
	jal		x0, fle_cont.32210	# 124
fle.32211:
	fsub	f6, f0, f6	# 124
fle_cont.32210:
	mul		x14, x30, x8	# 970
	add		x14, x10, x14	# 970
	flw		f7, 0(x14)	# 970
	fle		f7, f6, fle.32213	# 125
	mul		x14, x30, x11	# 971
	add		x14, x6, x14	# 971
	flw		f6, 0(x14)	# 971
	fmul	f6, f5, f6	# 971
	fadd	f6, f6, f2	# 971
	fle		f6, f1, fle.32215	# 124
	jal		x0, fle_cont.32214	# 124
fle.32215:
	fsub	f6, f0, f6	# 124
fle_cont.32214:
	mul		x14, x30, x11	# 971
	add		x10, x10, x14	# 971
	flw		f7, 0(x10)	# 971
	fle		f7, f6, fle.32217	# 125
	mul		x10, x30, x11	# 972
	addi	x10, x10, 64336	# 972
	fsw		f5, 0(x10)	# 972
	addi	x10, x0, 1	# 972
	jal		x0, feq_cont.32200	# 125
fle.32217:
	addi	x10, x0, 0	# 973
	jal		x0, feq_cont.32200	# 125
fle.32213:
	addi	x10, x0, 0	# 974
	jal		x0, feq_cont.32200	# 120
feq.32201:
	addi	x10, x0, 0	# 965
feq_cont.32200:
	beq		x10, x11, beq.32219	# 981
	addi	x9, x0, 2	# 981
	jal		x0, beq_cont.32160	# 981
beq.32219:
	mul		x10, x30, x8	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		f5, f1, feq.32221	# 120
	lw		x10, 16(x9)	# 458
	lw		x9, 24(x9)	# 410
	fle		f1, f5, fle.32223	# 122
	addi	x14, x0, 1	# 122
	jal		x0, fle_cont.32222	# 122
fle.32223:
	addi	x14, x0, 0	# 122
fle_cont.32222:
	beq		x9, x11, beq.32225	# 241
	fle		f1, f5, fle.32227	# 122
	addi	x9, x0, 0	# 241
	jal		x0, beq_cont.32224	# 122
fle.32227:
	addi	x9, x0, 1	# 241
	jal		x0, beq_cont.32224	# 241
beq.32225:
	addi	x9, x14, 0	# 241
beq_cont.32224:
	mul		x14, x30, x8	# 967
	add		x14, x10, x14	# 967
	flw		f6, 0(x14)	# 967
	beq		x9, x11, beq.32229	# 256
	jal		x0, beq_cont.32228	# 256
beq.32229:
	fsub	f6, f0, f6	# 123
beq_cont.32228:
	fsub	f4, f6, f4	# 969
	fdiv	f4, f4, f5	# 969
	mul		x9, x30, x11	# 970
	add		x9, x6, x9	# 970
	flw		f5, 0(x9)	# 970
	fmul	f5, f4, f5	# 970
	fadd	f2, f5, f2	# 970
	fle		f2, f1, fle.32231	# 124
	jal		x0, fle_cont.32230	# 124
fle.32231:
	fsub	f2, f0, f2	# 124
fle_cont.32230:
	mul		x9, x30, x11	# 970
	add		x9, x10, x9	# 970
	flw		f5, 0(x9)	# 970
	fle		f5, f2, fle.32233	# 125
	mul		x9, x30, x12	# 971
	add		x9, x6, x9	# 971
	flw		f2, 0(x9)	# 971
	fmul	f2, f4, f2	# 971
	fadd	f2, f2, f3	# 971
	fle		f2, f1, fle.32235	# 124
	jal		x0, fle_cont.32234	# 124
fle.32235:
	fsub	f2, f0, f2	# 124
fle_cont.32234:
	mul		x9, x30, x12	# 971
	add		x9, x10, x9	# 971
	flw		f3, 0(x9)	# 971
	fle		f3, f2, fle.32237	# 125
	mul		x9, x30, x11	# 972
	addi	x9, x9, 64336	# 972
	fsw		f4, 0(x9)	# 972
	addi	x9, x0, 1	# 972
	jal		x0, feq_cont.32220	# 125
fle.32237:
	addi	x9, x0, 0	# 973
	jal		x0, feq_cont.32220	# 125
fle.32233:
	addi	x9, x0, 0	# 974
	jal		x0, feq_cont.32220	# 120
feq.32221:
	addi	x9, x0, 0	# 965
feq_cont.32220:
	beq		x9, x11, beq.32239	# 982
	addi	x9, x0, 3	# 982
	jal		x0, beq_cont.32160	# 982
beq.32239:
	addi	x9, x0, 0	# 983
beq_cont.32160:
	beq		x9, x11, beq.32240	# 1506
	mul		x10, x30, x11	# 1510
	addi	x10, x10, 64336	# 1510
	flw		f2, 0(x10)	# 1510
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x29, -8(x2)	# 125
	sw		x12, -12(x2)	# 125
	sw		x4, -16(x2)	# 125
	fle		f2, f1, fle_cont.32241	# 125
	mul		x10, x30, x11	# 1513
	addi	x10, x10, 64344	# 1513
	flw		f1, 0(x10)	# 1513
	fle		f1, f2, fle_cont.32241	# 125
	fadd	f1, f0, f19	# 1515
	fadd	f1, f2, f1	# 1515
	mul		x10, x30, x11	# 1516
	add		x10, x6, x10	# 1516
	flw		f2, 0(x10)	# 1516
	fmul	f2, f2, f1	# 1516
	mul		x10, x30, x11	# 1516
	addi	x10, x10, 64432	# 1516
	flw		f3, 0(x10)	# 1516
	fadd	f2, f2, f3	# 1516
	mul		x10, x30, x12	# 1517
	add		x10, x6, x10	# 1517
	flw		f3, 0(x10)	# 1517
	fmul	f3, f3, f1	# 1517
	mul		x10, x30, x12	# 1517
	addi	x10, x10, 64432	# 1517
	flw		f4, 0(x10)	# 1517
	fadd	f3, f3, f4	# 1517
	mul		x10, x30, x8	# 1518
	add		x10, x6, x10	# 1518
	flw		f4, 0(x10)	# 1518
	fmul	f4, f4, f1	# 1518
	mul		x10, x30, x8	# 1518
	addi	x10, x10, 64432	# 1518
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
	addi	x4, x11, 0	# 1519
	addi	x29, x7, 0	# 1519
	fadd	f1, f0, f2	# 1519
	fadd	f2, f0, f3	# 1519
	fadd	f3, f0, f4	# 1519
	sw		x1, -52(x2)	# 1519
	addi	x2, x2, -56	# 1519
	lw		x31, 0(x29)	# 1519
	jalr	x1, x31, 0	# 1519
	addi	x2, x2, 56	# 1519
	lw		x1, -52(x2)	# 1519
	lw		x5, -48(x2)	# 1519
	beq		x4, x5, fle_cont.32241	# 1519
	mul		x4, x30, x5	# 1521
	addi	x4, x4, 64344	# 1521
	flw		f1, -44(x2)	# 1521
	fsw		f1, 0(x4)	# 1521
	mul		x4, x30, x5	# 277
	addi	x4, x4, 64348	# 277
	flw		f1, -40(x2)	# 277
	fsw		f1, 0(x4)	# 277
	lw		x4, -12(x2)	# 278
	mul		x6, x30, x4	# 278
	addi	x6, x6, 64348	# 278
	flw		f1, -36(x2)	# 278
	fsw		f1, 0(x6)	# 278
	lw		x6, -32(x2)	# 279
	mul		x6, x30, x6	# 279
	addi	x6, x6, 64348	# 279
	flw		f1, -28(x2)	# 279
	fsw		f1, 0(x6)	# 279
	mul		x6, x30, x5	# 1523
	addi	x6, x6, 64360	# 1523
	lw		x7, -24(x2)	# 1523
	sw		x7, 0(x6)	# 1523
	mul		x5, x30, x5	# 1524
	addi	x5, x5, 64340	# 1524
	lw		x6, -20(x2)	# 1524
	sw		x6, 0(x5)	# 1524
	jal		x0, fle_cont.32241	# 1519
	jal		x0, fle_cont.32241	# 125
	jal		x0, fle_cont.32241	# 125
fle_cont.32241:
	lw		x4, -12(x2)	# 1530
	lw		x5, -16(x2)	# 1530
	add		x4, x5, x4	# 1530
	lw		x5, -4(x2)	# 1530
	lw		x6, 0(x2)	# 1530
	lw		x29, -8(x2)	# 1530
	lw		x31, 0(x29)	# 1530
	jalr	x0, x31, 0	# 1530
beq.32240:
	mul		x7, x30, x13	# 1534
	addi	x7, x7, 63844	# 1534
	lw		x7, 0(x7)	# 1534
	lw		x7, 24(x7)	# 410
	beq		x7, x11, beq.32247	# 1534
	add		x4, x4, x12	# 1535
	lw		x31, 0(x29)	# 1535
	jalr	x0, x31, 0	# 1535
beq.32247:
	jalr	x0, x1, 0	# 1536
beq.32159:
	jalr	x0, x1, 0	# 1503
solve_one_or_network.2843.18061:
	lw		x7, 16(x29)	# 1543
	lw		x8, 12(x29)	# 1543
	lw		x9, 8(x29)	# 1543
	lw		x10, 4(x29)	# 1543
	mul		x11, x30, x4	# 1543
	add		x11, x5, x11	# 1543
	lw		x11, 0(x11)	# 1543
	beq		x11, x8, beq.32250	# 1544
	mul		x8, x30, x11	# 1545
	addi	x8, x8, 64128	# 1545
	lw		x8, 0(x8)	# 1545
	sw		x6, 0(x2)	# 1546
	sw		x5, -4(x2)	# 1546
	sw		x29, -8(x2)	# 1546
	sw		x10, -12(x2)	# 1546
	sw		x4, -16(x2)	# 1546
	addi	x5, x8, 0	# 1546
	addi	x4, x9, 0	# 1546
	addi	x29, x7, 0	# 1546
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
beq.32250:
	jalr	x0, x1, 0	# 1548
trace_or_matrix.2847.18065:
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
	beq		x14, x9, beq.32252	# 1555
	addi	x9, x0, 99	# 1558
	sw		x6, 0(x2)	# 1558
	sw		x5, -4(x2)	# 1558
	sw		x29, -8(x2)	# 1558
	sw		x12, -12(x2)	# 1558
	sw		x4, -16(x2)	# 1558
	beq		x14, x9, beq.32254	# 1558
	mul		x9, x30, x14	# 1069
	addi	x9, x9, 63844	# 1069
	lw		x9, 0(x9)	# 1069
	mul		x14, x30, x11	# 1071
	addi	x14, x14, 64432	# 1071
	flw		f2, 0(x14)	# 1071
	lw		x14, 20(x9)	# 468
	mul		x15, x30, x11	# 473
	add		x14, x14, x15	# 473
	flw		f3, 0(x14)	# 473
	fsub	f2, f2, f3	# 1071
	mul		x14, x30, x12	# 1072
	addi	x14, x14, 64432	# 1072
	flw		f3, 0(x14)	# 1072
	lw		x14, 20(x9)	# 478
	mul		x15, x30, x12	# 483
	add		x14, x14, x15	# 483
	flw		f4, 0(x14)	# 483
	fsub	f3, f3, f4	# 1072
	mul		x14, x30, x8	# 1073
	addi	x14, x14, 64432	# 1073
	flw		f4, 0(x14)	# 1073
	lw		x14, 20(x9)	# 488
	mul		x15, x30, x8	# 493
	add		x14, x14, x15	# 493
	flw		f5, 0(x14)	# 493
	fsub	f4, f4, f5	# 1073
	lw		x14, 4(x9)	# 390
	beq		x14, x12, beq.32256	# 1076
	beq		x14, x8, beq.32258	# 1077
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
	beq		x14, x11, beq_cont.32259	# 1006
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
	jal		x0, beq_cont.32259	# 1006
beq_cont.32259:
	feq		f8, f1, feq.32262	# 120
	fmul	f10, f5, f2	# 1018
	fmul	f10, f10, f9	# 1018
	fmul	f13, f6, f3	# 1019
	fmul	f13, f13, f11	# 1019
	fadd	f10, f10, f13	# 1018
	fmul	f13, f7, f4	# 1020
	fmul	f13, f13, f12	# 1020
	fadd	f10, f10, f13	# 1018
	beq		x14, x11, beq.32264	# 1022
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
	jal		x0, beq_cont.32263	# 1022
beq.32264:
	fadd	f5, f0, f10	# 1023
beq_cont.32263:
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f9	# 1004
	fmul	f7, f3, f3	# 127
	fmul	f7, f7, f11	# 1004
	fadd	f6, f6, f7	# 1004
	fmul	f7, f4, f4	# 127
	fmul	f7, f7, f12	# 1004
	fadd	f6, f6, f7	# 1004
	beq		x14, x11, beq.32266	# 1006
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
	jal		x0, beq_cont.32265	# 1006
beq.32266:
	fadd	f2, f0, f6	# 1007
beq_cont.32265:
	lw		x8, 4(x9)	# 390
	beq		x8, x10, beq.32268	# 1053
	jal		x0, beq_cont.32267	# 1053
beq.32268:
	fadd	f3, f0, f16	# 1053
	fsub	f2, f2, f3	# 1053
beq_cont.32267:
	fmul	f3, f5, f5	# 127
	fmul	f2, f8, f2	# 1055
	fsub	f2, f3, f2	# 1055
	fle		f2, f1, fle.32270	# 121
	fsqrt	f1, f2	# 1058
	lw		x8, 24(x9)	# 410
	beq		x8, x11, beq.32272	# 1059
	jal		x0, beq_cont.32271	# 1059
beq.32272:
	fsub	f1, f0, f1	# 123
beq_cont.32271:
	fsub	f1, f1, f5	# 1060
	fdiv	f1, f1, f8	# 1060
	mul		x8, x30, x11	# 1060
	addi	x8, x8, 64336	# 1060
	fsw		f1, 0(x8)	# 1060
	addi	x8, x0, 1	# 1060
	jal		x0, beq_cont.32255	# 121
fle.32270:
	addi	x8, x0, 0	# 1063
	jal		x0, beq_cont.32255	# 120
feq.32262:
	addi	x8, x0, 0	# 1046
	jal		x0, beq_cont.32255	# 1077
beq.32258:
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
	fle		f5, f1, fle.32274	# 121
	fmul	f1, f6, f2	# 334
	fmul	f2, f8, f3	# 334
	fadd	f1, f1, f2	# 334
	fmul	f2, f9, f4	# 334
	fadd	f1, f1, f2	# 334
	fsub	f1, f0, f1	# 123
	fdiv	f1, f1, f5	# 994
	mul		x8, x30, x11	# 994
	addi	x8, x8, 64336	# 994
	fsw		f1, 0(x8)	# 994
	addi	x8, x0, 1	# 995
	jal		x0, beq_cont.32255	# 121
fle.32274:
	addi	x8, x0, 0	# 996
	jal		x0, beq_cont.32255	# 1076
beq.32256:
	mul		x10, x30, x11	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		f5, f1, feq.32276	# 120
	lw		x10, 16(x9)	# 458
	lw		x14, 24(x9)	# 410
	fle		f1, f5, fle.32278	# 122
	addi	x15, x0, 1	# 122
	jal		x0, fle_cont.32277	# 122
fle.32278:
	addi	x15, x0, 0	# 122
fle_cont.32277:
	beq		x14, x11, beq.32280	# 241
	fle		f1, f5, fle.32282	# 122
	addi	x14, x0, 0	# 241
	jal		x0, beq_cont.32279	# 122
fle.32282:
	addi	x14, x0, 1	# 241
	jal		x0, beq_cont.32279	# 241
beq.32280:
	addi	x14, x15, 0	# 241
beq_cont.32279:
	mul		x15, x30, x11	# 967
	add		x15, x10, x15	# 967
	flw		f6, 0(x15)	# 967
	beq		x14, x11, beq.32284	# 256
	jal		x0, beq_cont.32283	# 256
beq.32284:
	fsub	f6, f0, f6	# 123
beq_cont.32283:
	fsub	f6, f6, f2	# 969
	fdiv	f5, f6, f5	# 969
	mul		x14, x30, x12	# 970
	add		x14, x6, x14	# 970
	flw		f6, 0(x14)	# 970
	fmul	f6, f5, f6	# 970
	fadd	f6, f6, f3	# 970
	fle		f6, f1, fle.32286	# 124
	jal		x0, fle_cont.32285	# 124
fle.32286:
	fsub	f6, f0, f6	# 124
fle_cont.32285:
	mul		x14, x30, x12	# 970
	add		x14, x10, x14	# 970
	flw		f7, 0(x14)	# 970
	fle		f7, f6, fle.32288	# 125
	mul		x14, x30, x8	# 971
	add		x14, x6, x14	# 971
	flw		f6, 0(x14)	# 971
	fmul	f6, f5, f6	# 971
	fadd	f6, f6, f4	# 971
	fle		f6, f1, fle.32290	# 124
	jal		x0, fle_cont.32289	# 124
fle.32290:
	fsub	f6, f0, f6	# 124
fle_cont.32289:
	mul		x14, x30, x8	# 971
	add		x10, x10, x14	# 971
	flw		f7, 0(x10)	# 971
	fle		f7, f6, fle.32292	# 125
	mul		x10, x30, x11	# 972
	addi	x10, x10, 64336	# 972
	fsw		f5, 0(x10)	# 972
	addi	x10, x0, 1	# 972
	jal		x0, feq_cont.32275	# 125
fle.32292:
	addi	x10, x0, 0	# 973
	jal		x0, feq_cont.32275	# 125
fle.32288:
	addi	x10, x0, 0	# 974
	jal		x0, feq_cont.32275	# 120
feq.32276:
	addi	x10, x0, 0	# 965
feq_cont.32275:
	beq		x10, x11, beq.32294	# 980
	addi	x8, x0, 1	# 980
	jal		x0, beq_cont.32255	# 980
beq.32294:
	mul		x10, x30, x12	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		f5, f1, feq.32296	# 120
	lw		x10, 16(x9)	# 458
	lw		x14, 24(x9)	# 410
	fle		f1, f5, fle.32298	# 122
	addi	x15, x0, 1	# 122
	jal		x0, fle_cont.32297	# 122
fle.32298:
	addi	x15, x0, 0	# 122
fle_cont.32297:
	beq		x14, x11, beq.32300	# 241
	fle		f1, f5, fle.32302	# 122
	addi	x14, x0, 0	# 241
	jal		x0, beq_cont.32299	# 122
fle.32302:
	addi	x14, x0, 1	# 241
	jal		x0, beq_cont.32299	# 241
beq.32300:
	addi	x14, x15, 0	# 241
beq_cont.32299:
	mul		x15, x30, x12	# 967
	add		x15, x10, x15	# 967
	flw		f6, 0(x15)	# 967
	beq		x14, x11, beq.32304	# 256
	jal		x0, beq_cont.32303	# 256
beq.32304:
	fsub	f6, f0, f6	# 123
beq_cont.32303:
	fsub	f6, f6, f3	# 969
	fdiv	f5, f6, f5	# 969
	mul		x14, x30, x8	# 970
	add		x14, x6, x14	# 970
	flw		f6, 0(x14)	# 970
	fmul	f6, f5, f6	# 970
	fadd	f6, f6, f4	# 970
	fle		f6, f1, fle.32306	# 124
	jal		x0, fle_cont.32305	# 124
fle.32306:
	fsub	f6, f0, f6	# 124
fle_cont.32305:
	mul		x14, x30, x8	# 970
	add		x14, x10, x14	# 970
	flw		f7, 0(x14)	# 970
	fle		f7, f6, fle.32308	# 125
	mul		x14, x30, x11	# 971
	add		x14, x6, x14	# 971
	flw		f6, 0(x14)	# 971
	fmul	f6, f5, f6	# 971
	fadd	f6, f6, f2	# 971
	fle		f6, f1, fle.32310	# 124
	jal		x0, fle_cont.32309	# 124
fle.32310:
	fsub	f6, f0, f6	# 124
fle_cont.32309:
	mul		x14, x30, x11	# 971
	add		x10, x10, x14	# 971
	flw		f7, 0(x10)	# 971
	fle		f7, f6, fle.32312	# 125
	mul		x10, x30, x11	# 972
	addi	x10, x10, 64336	# 972
	fsw		f5, 0(x10)	# 972
	addi	x10, x0, 1	# 972
	jal		x0, feq_cont.32295	# 125
fle.32312:
	addi	x10, x0, 0	# 973
	jal		x0, feq_cont.32295	# 125
fle.32308:
	addi	x10, x0, 0	# 974
	jal		x0, feq_cont.32295	# 120
feq.32296:
	addi	x10, x0, 0	# 965
feq_cont.32295:
	beq		x10, x11, beq.32314	# 981
	addi	x8, x0, 2	# 981
	jal		x0, beq_cont.32255	# 981
beq.32314:
	mul		x10, x30, x8	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		f5, f1, feq.32316	# 120
	lw		x10, 16(x9)	# 458
	lw		x9, 24(x9)	# 410
	fle		f1, f5, fle.32318	# 122
	addi	x14, x0, 1	# 122
	jal		x0, fle_cont.32317	# 122
fle.32318:
	addi	x14, x0, 0	# 122
fle_cont.32317:
	beq		x9, x11, beq.32320	# 241
	fle		f1, f5, fle.32322	# 122
	addi	x9, x0, 0	# 241
	jal		x0, beq_cont.32319	# 122
fle.32322:
	addi	x9, x0, 1	# 241
	jal		x0, beq_cont.32319	# 241
beq.32320:
	addi	x9, x14, 0	# 241
beq_cont.32319:
	mul		x8, x30, x8	# 967
	add		x8, x10, x8	# 967
	flw		f6, 0(x8)	# 967
	beq		x9, x11, beq.32324	# 256
	jal		x0, beq_cont.32323	# 256
beq.32324:
	fsub	f6, f0, f6	# 123
beq_cont.32323:
	fsub	f4, f6, f4	# 969
	fdiv	f4, f4, f5	# 969
	mul		x8, x30, x11	# 970
	add		x8, x6, x8	# 970
	flw		f5, 0(x8)	# 970
	fmul	f5, f4, f5	# 970
	fadd	f2, f5, f2	# 970
	fle		f2, f1, fle.32326	# 124
	jal		x0, fle_cont.32325	# 124
fle.32326:
	fsub	f2, f0, f2	# 124
fle_cont.32325:
	mul		x8, x30, x11	# 970
	add		x8, x10, x8	# 970
	flw		f5, 0(x8)	# 970
	fle		f5, f2, fle.32328	# 125
	mul		x8, x30, x12	# 971
	add		x8, x6, x8	# 971
	flw		f2, 0(x8)	# 971
	fmul	f2, f4, f2	# 971
	fadd	f2, f2, f3	# 971
	fle		f2, f1, fle.32330	# 124
	fadd	f1, f0, f2	# 124
	jal		x0, fle_cont.32329	# 124
fle.32330:
	fsub	f1, f0, f2	# 124
fle_cont.32329:
	mul		x8, x30, x12	# 971
	add		x8, x10, x8	# 971
	flw		f2, 0(x8)	# 971
	fle		f2, f1, fle.32332	# 125
	mul		x8, x30, x11	# 972
	addi	x8, x8, 64336	# 972
	fsw		f4, 0(x8)	# 972
	addi	x8, x0, 1	# 972
	jal		x0, feq_cont.32315	# 125
fle.32332:
	addi	x8, x0, 0	# 973
	jal		x0, feq_cont.32315	# 125
fle.32328:
	addi	x8, x0, 0	# 974
	jal		x0, feq_cont.32315	# 120
feq.32316:
	addi	x8, x0, 0	# 965
feq_cont.32315:
	beq		x8, x11, beq.32334	# 982
	addi	x8, x0, 3	# 982
	jal		x0, beq_cont.32255	# 982
beq.32334:
	addi	x8, x0, 0	# 983
beq_cont.32255:
	beq		x8, x11, beq_cont.32253	# 1564
	mul		x8, x30, x11	# 1565
	addi	x8, x8, 64336	# 1565
	flw		f1, 0(x8)	# 1565
	mul		x8, x30, x11	# 1566
	addi	x8, x8, 64344	# 1566
	flw		f2, 0(x8)	# 1566
	fle		f2, f1, beq_cont.32253	# 125
	addi	x5, x13, 0	# 1567
	addi	x4, x12, 0	# 1567
	addi	x29, x7, 0	# 1567
	sw		x1, -20(x2)	# 1567
	addi	x2, x2, -24	# 1567
	lw		x31, 0(x29)	# 1567
	jalr	x1, x31, 0	# 1567
	addi	x2, x2, 24	# 1567
	lw		x1, -20(x2)	# 1567
	jal		x0, beq_cont.32253	# 125
	jal		x0, beq_cont.32253	# 1564
	jal		x0, beq_cont.32253	# 1558
beq.32254:
	addi	x5, x13, 0	# 1559
	addi	x4, x12, 0	# 1559
	addi	x29, x7, 0	# 1559
	sw		x1, -20(x2)	# 1559
	addi	x2, x2, -24	# 1559
	lw		x31, 0(x29)	# 1559
	jalr	x1, x31, 0	# 1559
	addi	x2, x2, 24	# 1559
	lw		x1, -20(x2)	# 1559
beq_cont.32253:
	lw		x4, -12(x2)	# 1571
	lw		x5, -16(x2)	# 1571
	add		x4, x5, x4	# 1571
	lw		x5, -4(x2)	# 1571
	lw		x6, 0(x2)	# 1571
	lw		x29, -8(x2)	# 1571
	lw		x31, 0(x29)	# 1571
	jalr	x0, x31, 0	# 1571
beq.32252:
	jalr	x0, x1, 0	# 1556
solve_each_element_fast.2853.18069:
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
	beq		x15, x10, beq.32340	# 1597
	mul		x16, x30, x15	# 1210
	addi	x16, x16, 63844	# 1210
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
	beq		x19, x13, beq.32342	# 1218
	beq		x19, x9, beq.32344	# 1220
	mul		x19, x30, x12	# 1192
	add		x19, x18, x19	# 1192
	flw		f5, 0(x19)	# 1192
	feq		f5, f1, feq.32346	# 120
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
	fle		f3, f1, fle.32348	# 121
	lw		x16, 24(x16)	# 410
	beq		x16, x12, beq.32350	# 1200
	fsqrt	f3, f3	# 1201
	fadd	f2, f2, f3	# 1201
	addi	x16, x0, 4	# 1201
	mul		x16, x30, x16	# 1201
	add		x16, x18, x16	# 1201
	flw		f3, 0(x16)	# 1201
	fmul	f2, f2, f3	# 1201
	mul		x16, x30, x12	# 1201
	addi	x16, x16, 64336	# 1201
	fsw		f2, 0(x16)	# 1201
	jal		x0, beq_cont.32349	# 1200
beq.32350:
	fsqrt	f3, f3	# 1203
	fsub	f2, f2, f3	# 1203
	addi	x16, x0, 4	# 1203
	mul		x16, x30, x16	# 1203
	add		x16, x18, x16	# 1203
	flw		f3, 0(x16)	# 1203
	fmul	f2, f2, f3	# 1203
	mul		x16, x30, x12	# 1203
	addi	x16, x16, 64336	# 1203
	fsw		f2, 0(x16)	# 1203
beq_cont.32349:
	addi	x16, x0, 1	# 1204
	jal		x0, beq_cont.32341	# 121
fle.32348:
	addi	x16, x0, 0	# 1205
	jal		x0, beq_cont.32341	# 120
feq.32346:
	addi	x16, x0, 0	# 1194
	jal		x0, beq_cont.32341	# 1220
beq.32344:
	mul		x16, x30, x12	# 1183
	add		x16, x18, x16	# 1183
	flw		f2, 0(x16)	# 1183
	fle		f1, f2, fle.32352	# 122
	mul		x16, x30, x11	# 1184
	add		x16, x17, x16	# 1184
	flw		f3, 0(x16)	# 1184
	fmul	f2, f2, f3	# 1184
	mul		x16, x30, x12	# 1184
	addi	x16, x16, 64336	# 1184
	fsw		f2, 0(x16)	# 1184
	addi	x16, x0, 1	# 1185
	jal		x0, beq_cont.32341	# 122
fle.32352:
	addi	x16, x0, 0	# 1186
	jal		x0, beq_cont.32341	# 1218
beq.32342:
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
	fle		f8, f1, fle.32354	# 124
	jal		x0, fle_cont.32353	# 124
fle.32354:
	fsub	f8, f0, f8	# 124
fle_cont.32353:
	lw		x19, 16(x16)	# 438
	mul		x20, x30, x13	# 443
	add		x19, x19, x20	# 443
	flw		f9, 0(x19)	# 443
	fle		f9, f8, fle.32356	# 125
	mul		x19, x30, x9	# 1104
	add		x19, x17, x19	# 1104
	flw		f8, 0(x19)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		f8, f1, fle.32358	# 124
	jal		x0, fle_cont.32357	# 124
fle.32358:
	fsub	f8, f0, f8	# 124
fle_cont.32357:
	lw		x19, 16(x16)	# 448
	mul		x20, x30, x9	# 453
	add		x19, x19, x20	# 453
	flw		f9, 0(x19)	# 453
	fle		f9, f8, fle.32360	# 125
	feq		f6, f1, feq.32362	# 120
	addi	x19, x0, 1	# 1105
	jal		x0, fle_cont.32355	# 120
feq.32362:
	addi	x19, x0, 0	# 1105
	jal		x0, fle_cont.32355	# 125
fle.32360:
	addi	x19, x0, 0	# 1106
	jal		x0, fle_cont.32355	# 125
fle.32356:
	addi	x19, x0, 0	# 1107
fle_cont.32355:
	beq		x19, x12, beq.32364	# 1102
	mul		x16, x30, x12	# 1109
	addi	x16, x16, 64336	# 1109
	fsw		f5, 0(x16)	# 1109
	addi	x16, x0, 1	# 1109
	jal		x0, beq_cont.32341	# 1102
beq.32364:
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
	fle		f9, f1, fle.32366	# 124
	jal		x0, fle_cont.32365	# 124
fle.32366:
	fsub	f9, f0, f9	# 124
fle_cont.32365:
	lw		x19, 16(x16)	# 428
	mul		x20, x30, x12	# 433
	add		x19, x19, x20	# 433
	flw		f10, 0(x19)	# 433
	fle		f10, f9, fle.32368	# 125
	mul		x19, x30, x9	# 1113
	add		x17, x17, x19	# 1113
	flw		f9, 0(x17)	# 1113
	fmul	f9, f5, f9	# 1113
	fadd	f9, f9, f4	# 1113
	fle		f9, f1, fle.32370	# 124
	jal		x0, fle_cont.32369	# 124
fle.32370:
	fsub	f9, f0, f9	# 124
fle_cont.32369:
	lw		x17, 16(x16)	# 448
	mul		x19, x30, x9	# 453
	add		x17, x17, x19	# 453
	flw		f10, 0(x17)	# 453
	fle		f10, f9, fle.32372	# 125
	feq		f6, f1, feq.32374	# 120
	addi	x17, x0, 1	# 1114
	jal		x0, fle_cont.32367	# 120
feq.32374:
	addi	x17, x0, 0	# 1114
	jal		x0, fle_cont.32367	# 125
fle.32372:
	addi	x17, x0, 0	# 1115
	jal		x0, fle_cont.32367	# 125
fle.32368:
	addi	x17, x0, 0	# 1116
fle_cont.32367:
	beq		x17, x12, beq.32376	# 1111
	mul		x16, x30, x12	# 1118
	addi	x16, x16, 64336	# 1118
	fsw		f5, 0(x16)	# 1118
	addi	x16, x0, 2	# 1118
	jal		x0, beq_cont.32341	# 1111
beq.32376:
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
	fle		f2, f1, fle.32378	# 124
	jal		x0, fle_cont.32377	# 124
fle.32378:
	fsub	f2, f0, f2	# 124
fle_cont.32377:
	lw		x17, 16(x16)	# 428
	mul		x18, x30, x12	# 433
	add		x17, x17, x18	# 433
	flw		f6, 0(x17)	# 433
	fle		f6, f2, fle.32380	# 125
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		f2, f1, fle.32382	# 124
	jal		x0, fle_cont.32381	# 124
fle.32382:
	fsub	f2, f0, f2	# 124
fle_cont.32381:
	lw		x16, 16(x16)	# 438
	mul		x17, x30, x13	# 443
	add		x16, x16, x17	# 443
	flw		f3, 0(x16)	# 443
	fle		f3, f2, fle.32384	# 125
	feq		f5, f1, feq.32386	# 120
	addi	x16, x0, 1	# 1123
	jal		x0, fle_cont.32379	# 120
feq.32386:
	addi	x16, x0, 0	# 1123
	jal		x0, fle_cont.32379	# 125
fle.32384:
	addi	x16, x0, 0	# 1124
	jal		x0, fle_cont.32379	# 125
fle.32380:
	addi	x16, x0, 0	# 1125
fle_cont.32379:
	beq		x16, x12, beq.32388	# 1120
	mul		x16, x30, x12	# 1127
	addi	x16, x16, 64336	# 1127
	fsw		f4, 0(x16)	# 1127
	addi	x16, x0, 3	# 1127
	jal		x0, beq_cont.32341	# 1120
beq.32388:
	addi	x16, x0, 0	# 1129
beq_cont.32341:
	beq		x16, x12, beq.32389	# 1600
	mul		x17, x30, x12	# 1604
	addi	x17, x17, 64336	# 1604
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
	fle		f2, f1, fle_cont.32390	# 125
	mul		x17, x30, x12	# 1607
	addi	x17, x17, 64344	# 1607
	flw		f3, 0(x17)	# 1607
	fle		f3, f2, fle_cont.32390	# 125
	fadd	f3, f0, f19	# 1609
	fadd	f2, f2, f3	# 1609
	mul		x17, x30, x12	# 1610
	add		x17, x14, x17	# 1610
	flw		f3, 0(x17)	# 1610
	fmul	f3, f3, f2	# 1610
	mul		x17, x30, x12	# 1610
	addi	x17, x17, 64444	# 1610
	flw		f4, 0(x17)	# 1610
	fadd	f3, f3, f4	# 1610
	mul		x17, x30, x13	# 1611
	add		x17, x14, x17	# 1611
	flw		f4, 0(x17)	# 1611
	fmul	f4, f4, f2	# 1611
	mul		x17, x30, x13	# 1611
	addi	x17, x17, 64444	# 1611
	flw		f5, 0(x17)	# 1611
	fadd	f4, f4, f5	# 1611
	mul		x17, x30, x9	# 1612
	add		x14, x14, x17	# 1612
	flw		f5, 0(x14)	# 1612
	fmul	f5, f5, f2	# 1612
	mul		x14, x30, x9	# 1612
	addi	x14, x14, 64444	# 1612
	flw		f6, 0(x14)	# 1612
	fadd	f5, f5, f6	# 1612
	sw		x16, -48(x2)	# 1613
	sw		x15, -52(x2)	# 1613
	fsw		f5, -56(x2)	# 1613
	fsw		f4, -60(x2)	# 1613
	fsw		f3, -64(x2)	# 1613
	fsw		f2, -68(x2)	# 1613
	addi	x4, x12, 0	# 1613
	addi	x29, x7, 0	# 1613
	fadd	f2, f0, f4	# 1613
	fadd	f1, f0, f3	# 1613
	fadd	f3, f0, f5	# 1613
	sw		x1, -72(x2)	# 1613
	addi	x2, x2, -76	# 1613
	lw		x31, 0(x29)	# 1613
	jalr	x1, x31, 0	# 1613
	addi	x2, x2, 76	# 1613
	lw		x1, -72(x2)	# 1613
	lw		x5, -24(x2)	# 1613
	beq		x4, x5, fle_cont.32390	# 1613
	mul		x4, x30, x5	# 1615
	addi	x4, x4, 64344	# 1615
	flw		f1, -68(x2)	# 1615
	fsw		f1, 0(x4)	# 1615
	mul		x4, x30, x5	# 277
	addi	x4, x4, 64348	# 277
	flw		f1, -64(x2)	# 277
	fsw		f1, 0(x4)	# 277
	lw		x4, -40(x2)	# 278
	mul		x6, x30, x4	# 278
	addi	x6, x6, 64348	# 278
	flw		f1, -60(x2)	# 278
	fsw		f1, 0(x6)	# 278
	lw		x6, -20(x2)	# 279
	mul		x7, x30, x6	# 279
	addi	x7, x7, 64348	# 279
	flw		f1, -56(x2)	# 279
	fsw		f1, 0(x7)	# 279
	mul		x7, x30, x5	# 1617
	addi	x7, x7, 64360	# 1617
	lw		x8, -52(x2)	# 1617
	sw		x8, 0(x7)	# 1617
	mul		x7, x30, x5	# 1618
	addi	x7, x7, 64340	# 1618
	lw		x8, -48(x2)	# 1618
	sw		x8, 0(x7)	# 1618
	jal		x0, fle_cont.32390	# 1613
	jal		x0, fle_cont.32390	# 125
	jal		x0, fle_cont.32390	# 125
fle_cont.32390:
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
	beq		x8, x10, beq.32396	# 1597
	mul		x10, x30, x8	# 1210
	addi	x10, x10, 63844	# 1210
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
	beq		x15, x4, beq.32398	# 1218
	beq		x15, x13, beq.32400	# 1220
	mul		x15, x30, x12	# 1192
	add		x15, x14, x15	# 1192
	flw		f4, 0(x15)	# 1192
	flw		f5, -16(x2)	# 120
	feq		f4, f5, feq.32402	# 120
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
	fle		f2, f5, fle.32404	# 121
	lw		x10, 24(x10)	# 410
	beq		x10, x12, beq.32406	# 1200
	fsqrt	f2, f2	# 1201
	fadd	f1, f1, f2	# 1201
	addi	x10, x0, 4	# 1201
	mul		x10, x30, x10	# 1201
	add		x10, x14, x10	# 1201
	flw		f2, 0(x10)	# 1201
	fmul	f1, f1, f2	# 1201
	mul		x10, x30, x12	# 1201
	addi	x10, x10, 64336	# 1201
	fsw		f1, 0(x10)	# 1201
	jal		x0, beq_cont.32405	# 1200
beq.32406:
	fsqrt	f2, f2	# 1203
	fsub	f1, f1, f2	# 1203
	addi	x10, x0, 4	# 1203
	mul		x10, x30, x10	# 1203
	add		x10, x14, x10	# 1203
	flw		f2, 0(x10)	# 1203
	fmul	f1, f1, f2	# 1203
	mul		x10, x30, x12	# 1203
	addi	x10, x10, 64336	# 1203
	fsw		f1, 0(x10)	# 1203
beq_cont.32405:
	addi	x10, x0, 1	# 1204
	jal		x0, beq_cont.32397	# 121
fle.32404:
	addi	x10, x0, 0	# 1205
	jal		x0, beq_cont.32397	# 120
feq.32402:
	addi	x10, x0, 0	# 1194
	jal		x0, beq_cont.32397	# 1220
beq.32400:
	mul		x10, x30, x12	# 1183
	add		x10, x14, x10	# 1183
	flw		f1, 0(x10)	# 1183
	flw		f2, -16(x2)	# 122
	fle		f2, f1, fle.32408	# 122
	lw		x10, -12(x2)	# 1184
	mul		x10, x30, x10	# 1184
	add		x10, x11, x10	# 1184
	flw		f3, 0(x10)	# 1184
	fmul	f1, f1, f3	# 1184
	mul		x10, x30, x12	# 1184
	addi	x10, x10, 64336	# 1184
	fsw		f1, 0(x10)	# 1184
	addi	x10, x0, 1	# 1185
	jal		x0, beq_cont.32397	# 122
fle.32408:
	addi	x10, x0, 0	# 1186
	jal		x0, beq_cont.32397	# 1218
beq.32398:
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
	fle		f7, f8, fle.32410	# 124
	jal		x0, fle_cont.32409	# 124
fle.32410:
	fsub	f7, f0, f7	# 124
fle_cont.32409:
	lw		x15, 16(x10)	# 438
	mul		x16, x30, x4	# 443
	add		x15, x15, x16	# 443
	flw		f9, 0(x15)	# 443
	fle		f9, f7, fle.32412	# 125
	mul		x15, x30, x13	# 1104
	add		x15, x11, x15	# 1104
	flw		f7, 0(x15)	# 1104
	fmul	f7, f4, f7	# 1104
	fadd	f7, f7, f3	# 1104
	fle		f7, f8, fle.32414	# 124
	jal		x0, fle_cont.32413	# 124
fle.32414:
	fsub	f7, f0, f7	# 124
fle_cont.32413:
	lw		x15, 16(x10)	# 448
	mul		x16, x30, x13	# 453
	add		x15, x15, x16	# 453
	flw		f10, 0(x15)	# 453
	fle		f10, f7, fle.32416	# 125
	feq		f5, f8, feq.32418	# 120
	addi	x15, x0, 1	# 1105
	jal		x0, fle_cont.32411	# 120
feq.32418:
	addi	x15, x0, 0	# 1105
	jal		x0, fle_cont.32411	# 125
fle.32416:
	addi	x15, x0, 0	# 1106
	jal		x0, fle_cont.32411	# 125
fle.32412:
	addi	x15, x0, 0	# 1107
fle_cont.32411:
	beq		x15, x12, beq.32420	# 1102
	mul		x10, x30, x12	# 1109
	addi	x10, x10, 64336	# 1109
	fsw		f4, 0(x10)	# 1109
	addi	x10, x0, 1	# 1109
	jal		x0, beq_cont.32397	# 1102
beq.32420:
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
	fle		f10, f8, fle.32422	# 124
	jal		x0, fle_cont.32421	# 124
fle.32422:
	fsub	f10, f0, f10	# 124
fle_cont.32421:
	lw		x15, 16(x10)	# 428
	mul		x16, x30, x12	# 433
	add		x15, x15, x16	# 433
	flw		f11, 0(x15)	# 433
	fle		f11, f10, fle.32424	# 125
	mul		x15, x30, x13	# 1113
	add		x11, x11, x15	# 1113
	flw		f10, 0(x11)	# 1113
	fmul	f10, f4, f10	# 1113
	fadd	f10, f10, f3	# 1113
	fle		f10, f8, fle.32426	# 124
	jal		x0, fle_cont.32425	# 124
fle.32426:
	fsub	f10, f0, f10	# 124
fle_cont.32425:
	lw		x10, 16(x10)	# 448
	mul		x11, x30, x13	# 453
	add		x10, x10, x11	# 453
	flw		f12, 0(x10)	# 453
	fle		f12, f10, fle.32428	# 125
	feq		f5, f8, feq.32430	# 120
	addi	x10, x0, 1	# 1114
	jal		x0, fle_cont.32423	# 120
feq.32430:
	addi	x10, x0, 0	# 1114
	jal		x0, fle_cont.32423	# 125
fle.32428:
	addi	x10, x0, 0	# 1115
	jal		x0, fle_cont.32423	# 125
fle.32424:
	addi	x10, x0, 0	# 1116
fle_cont.32423:
	beq		x10, x12, beq.32432	# 1111
	mul		x10, x30, x12	# 1118
	addi	x10, x10, 64336	# 1118
	fsw		f4, 0(x10)	# 1118
	addi	x10, x0, 2	# 1118
	jal		x0, beq_cont.32397	# 1111
beq.32432:
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
	fle		f1, f8, fle.32434	# 124
	jal		x0, fle_cont.32433	# 124
fle.32434:
	fsub	f1, f0, f1	# 124
fle_cont.32433:
	fle		f11, f1, fle.32436	# 125
	fmul	f1, f3, f6	# 1122
	fadd	f1, f1, f2	# 1122
	fle		f1, f8, fle.32438	# 124
	jal		x0, fle_cont.32437	# 124
fle.32438:
	fsub	f1, f0, f1	# 124
fle_cont.32437:
	fle		f9, f1, fle.32440	# 125
	feq		f4, f8, feq.32442	# 120
	addi	x10, x0, 1	# 1123
	jal		x0, fle_cont.32435	# 120
feq.32442:
	addi	x10, x0, 0	# 1123
	jal		x0, fle_cont.32435	# 125
fle.32440:
	addi	x10, x0, 0	# 1124
	jal		x0, fle_cont.32435	# 125
fle.32436:
	addi	x10, x0, 0	# 1125
fle_cont.32435:
	beq		x10, x12, beq.32444	# 1120
	mul		x10, x30, x12	# 1127
	addi	x10, x10, 64336	# 1127
	fsw		f3, 0(x10)	# 1127
	addi	x10, x0, 3	# 1127
	jal		x0, beq_cont.32397	# 1120
beq.32444:
	addi	x10, x0, 0	# 1129
beq_cont.32397:
	beq		x10, x12, beq.32445	# 1600
	mul		x11, x30, x12	# 1604
	addi	x11, x11, 64336	# 1604
	flw		f1, 0(x11)	# 1604
	flw		f2, -16(x2)	# 125
	sw		x5, -72(x2)	# 125
	fle		f1, f2, fle_cont.32446	# 125
	mul		x11, x30, x12	# 1607
	addi	x11, x11, 64344	# 1607
	flw		f2, 0(x11)	# 1607
	fle		f2, f1, fle_cont.32446	# 125
	fadd	f2, f0, f19	# 1609
	fadd	f1, f1, f2	# 1609
	mul		x11, x30, x12	# 1610
	add		x11, x7, x11	# 1610
	flw		f2, 0(x11)	# 1610
	fmul	f2, f2, f1	# 1610
	mul		x11, x30, x12	# 1610
	addi	x11, x11, 64444	# 1610
	flw		f3, 0(x11)	# 1610
	fadd	f2, f2, f3	# 1610
	mul		x11, x30, x4	# 1611
	add		x11, x7, x11	# 1611
	flw		f3, 0(x11)	# 1611
	fmul	f3, f3, f1	# 1611
	mul		x11, x30, x4	# 1611
	addi	x11, x11, 64444	# 1611
	flw		f4, 0(x11)	# 1611
	fadd	f3, f3, f4	# 1611
	mul		x11, x30, x13	# 1612
	add		x7, x7, x11	# 1612
	flw		f4, 0(x7)	# 1612
	fmul	f4, f4, f1	# 1612
	mul		x7, x30, x13	# 1612
	addi	x7, x7, 64444	# 1612
	flw		f5, 0(x7)	# 1612
	fadd	f4, f4, f5	# 1612
	lw		x29, 0(x2)	# 1613
	sw		x10, -76(x2)	# 1613
	sw		x8, -80(x2)	# 1613
	fsw		f4, -84(x2)	# 1613
	fsw		f3, -88(x2)	# 1613
	fsw		f2, -92(x2)	# 1613
	fsw		f1, -96(x2)	# 1613
	addi	x5, x9, 0	# 1613
	addi	x4, x12, 0	# 1613
	fadd	f1, f0, f2	# 1613
	fadd	f2, f0, f3	# 1613
	fadd	f3, f0, f4	# 1613
	sw		x1, -100(x2)	# 1613
	addi	x2, x2, -104	# 1613
	lw		x31, 0(x29)	# 1613
	jalr	x1, x31, 0	# 1613
	addi	x2, x2, 104	# 1613
	lw		x1, -100(x2)	# 1613
	lw		x5, -24(x2)	# 1613
	beq		x4, x5, fle_cont.32446	# 1613
	mul		x4, x30, x5	# 1615
	addi	x4, x4, 64344	# 1615
	flw		f1, -96(x2)	# 1615
	fsw		f1, 0(x4)	# 1615
	mul		x4, x30, x5	# 277
	addi	x4, x4, 64348	# 277
	flw		f1, -92(x2)	# 277
	fsw		f1, 0(x4)	# 277
	lw		x4, -40(x2)	# 278
	mul		x6, x30, x4	# 278
	addi	x6, x6, 64348	# 278
	flw		f1, -88(x2)	# 278
	fsw		f1, 0(x6)	# 278
	lw		x6, -20(x2)	# 279
	mul		x6, x30, x6	# 279
	addi	x6, x6, 64348	# 279
	flw		f1, -84(x2)	# 279
	fsw		f1, 0(x6)	# 279
	mul		x6, x30, x5	# 1617
	addi	x6, x6, 64360	# 1617
	lw		x7, -80(x2)	# 1617
	sw		x7, 0(x6)	# 1617
	mul		x5, x30, x5	# 1618
	addi	x5, x5, 64340	# 1618
	lw		x6, -76(x2)	# 1618
	sw		x6, 0(x5)	# 1618
	jal		x0, fle_cont.32446	# 1613
	jal		x0, fle_cont.32446	# 125
	jal		x0, fle_cont.32446	# 125
fle_cont.32446:
	lw		x4, -40(x2)	# 1624
	lw		x5, -72(x2)	# 1624
	add		x4, x5, x4	# 1624
	lw		x5, -32(x2)	# 1624
	lw		x6, -36(x2)	# 1624
	lw		x29, -4(x2)	# 1624
	lw		x31, 0(x29)	# 1624
	jalr	x0, x31, 0	# 1624
beq.32445:
	mul		x7, x30, x8	# 1628
	addi	x7, x7, 63844	# 1628
	lw		x7, 0(x7)	# 1628
	lw		x7, 24(x7)	# 410
	beq		x7, x12, beq.32452	# 1628
	add		x4, x5, x4	# 1629
	lw		x29, -4(x2)	# 1629
	addi	x5, x9, 0	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x0, x31, 0	# 1629
beq.32452:
	jalr	x0, x1, 0	# 1630
beq.32396:
	jalr	x0, x1, 0	# 1597
beq.32389:
	mul		x14, x30, x15	# 1628
	addi	x14, x14, 63844	# 1628
	lw		x14, 0(x14)	# 1628
	lw		x14, 24(x14)	# 410
	beq		x14, x12, beq.32455	# 1628
	add		x4, x4, x13	# 1629
	lw		x14, 0(x6)	# 676
	mul		x15, x30, x4	# 1596
	add		x15, x5, x15	# 1596
	lw		x15, 0(x15)	# 1596
	beq		x15, x10, beq.32456	# 1597
	mul		x10, x30, x15	# 1210
	addi	x10, x10, 63844	# 1210
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
	beq		x18, x13, beq.32458	# 1218
	beq		x18, x9, beq.32460	# 1220
	mul		x8, x30, x12	# 1192
	add		x8, x17, x8	# 1192
	flw		f5, 0(x8)	# 1192
	feq		f5, f1, feq.32462	# 120
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
	fle		f3, f1, fle.32464	# 121
	lw		x8, 24(x10)	# 410
	beq		x8, x12, beq.32466	# 1200
	fsqrt	f3, f3	# 1201
	fadd	f2, f2, f3	# 1201
	addi	x8, x0, 4	# 1201
	mul		x8, x30, x8	# 1201
	add		x8, x17, x8	# 1201
	flw		f3, 0(x8)	# 1201
	fmul	f2, f2, f3	# 1201
	mul		x8, x30, x12	# 1201
	addi	x8, x8, 64336	# 1201
	fsw		f2, 0(x8)	# 1201
	jal		x0, beq_cont.32465	# 1200
beq.32466:
	fsqrt	f3, f3	# 1203
	fsub	f2, f2, f3	# 1203
	addi	x8, x0, 4	# 1203
	mul		x8, x30, x8	# 1203
	add		x8, x17, x8	# 1203
	flw		f3, 0(x8)	# 1203
	fmul	f2, f2, f3	# 1203
	mul		x8, x30, x12	# 1203
	addi	x8, x8, 64336	# 1203
	fsw		f2, 0(x8)	# 1203
beq_cont.32465:
	addi	x8, x0, 1	# 1204
	jal		x0, beq_cont.32457	# 121
fle.32464:
	addi	x8, x0, 0	# 1205
	jal		x0, beq_cont.32457	# 120
feq.32462:
	addi	x8, x0, 0	# 1194
	jal		x0, beq_cont.32457	# 1220
beq.32460:
	mul		x8, x30, x12	# 1183
	add		x8, x17, x8	# 1183
	flw		f2, 0(x8)	# 1183
	fle		f1, f2, fle.32468	# 122
	mul		x8, x30, x11	# 1184
	add		x8, x16, x8	# 1184
	flw		f3, 0(x8)	# 1184
	fmul	f2, f2, f3	# 1184
	mul		x8, x30, x12	# 1184
	addi	x8, x8, 64336	# 1184
	fsw		f2, 0(x8)	# 1184
	addi	x8, x0, 1	# 1185
	jal		x0, beq_cont.32457	# 122
fle.32468:
	addi	x8, x0, 0	# 1186
	jal		x0, beq_cont.32457	# 1218
beq.32458:
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
	fle		f8, f1, fle.32470	# 124
	jal		x0, fle_cont.32469	# 124
fle.32470:
	fsub	f8, f0, f8	# 124
fle_cont.32469:
	lw		x18, 16(x10)	# 438
	mul		x19, x30, x13	# 443
	add		x18, x18, x19	# 443
	flw		f9, 0(x18)	# 443
	fle		f9, f8, fle.32472	# 125
	mul		x18, x30, x9	# 1104
	add		x18, x16, x18	# 1104
	flw		f8, 0(x18)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		f8, f1, fle.32474	# 124
	jal		x0, fle_cont.32473	# 124
fle.32474:
	fsub	f8, f0, f8	# 124
fle_cont.32473:
	lw		x18, 16(x10)	# 448
	mul		x19, x30, x9	# 453
	add		x18, x18, x19	# 453
	flw		f10, 0(x18)	# 453
	fle		f10, f8, fle.32476	# 125
	feq		f6, f1, feq.32478	# 120
	addi	x18, x0, 1	# 1105
	jal		x0, fle_cont.32471	# 120
feq.32478:
	addi	x18, x0, 0	# 1105
	jal		x0, fle_cont.32471	# 125
fle.32476:
	addi	x18, x0, 0	# 1106
	jal		x0, fle_cont.32471	# 125
fle.32472:
	addi	x18, x0, 0	# 1107
fle_cont.32471:
	beq		x18, x12, beq.32480	# 1102
	mul		x8, x30, x12	# 1109
	addi	x8, x8, 64336	# 1109
	fsw		f5, 0(x8)	# 1109
	addi	x8, x0, 1	# 1109
	jal		x0, beq_cont.32457	# 1102
beq.32480:
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
	fle		f10, f1, fle.32482	# 124
	jal		x0, fle_cont.32481	# 124
fle.32482:
	fsub	f10, f0, f10	# 124
fle_cont.32481:
	lw		x11, 16(x10)	# 428
	mul		x18, x30, x12	# 433
	add		x11, x11, x18	# 433
	flw		f11, 0(x11)	# 433
	fle		f11, f10, fle.32484	# 125
	mul		x11, x30, x9	# 1113
	add		x11, x16, x11	# 1113
	flw		f10, 0(x11)	# 1113
	fmul	f10, f5, f10	# 1113
	fadd	f10, f10, f4	# 1113
	fle		f10, f1, fle.32486	# 124
	jal		x0, fle_cont.32485	# 124
fle.32486:
	fsub	f10, f0, f10	# 124
fle_cont.32485:
	lw		x10, 16(x10)	# 448
	mul		x11, x30, x9	# 453
	add		x10, x10, x11	# 453
	flw		f12, 0(x10)	# 453
	fle		f12, f10, fle.32488	# 125
	feq		f6, f1, feq.32490	# 120
	addi	x10, x0, 1	# 1114
	jal		x0, fle_cont.32483	# 120
feq.32490:
	addi	x10, x0, 0	# 1114
	jal		x0, fle_cont.32483	# 125
fle.32488:
	addi	x10, x0, 0	# 1115
	jal		x0, fle_cont.32483	# 125
fle.32484:
	addi	x10, x0, 0	# 1116
fle_cont.32483:
	beq		x10, x12, beq.32492	# 1111
	mul		x8, x30, x12	# 1118
	addi	x8, x8, 64336	# 1118
	fsw		f5, 0(x8)	# 1118
	addi	x8, x0, 2	# 1118
	jal		x0, beq_cont.32457	# 1111
beq.32492:
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
	fle		f2, f1, fle.32494	# 124
	jal		x0, fle_cont.32493	# 124
fle.32494:
	fsub	f2, f0, f2	# 124
fle_cont.32493:
	fle		f11, f2, fle.32496	# 125
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		f2, f1, fle.32498	# 124
	jal		x0, fle_cont.32497	# 124
fle.32498:
	fsub	f2, f0, f2	# 124
fle_cont.32497:
	fle		f9, f2, fle.32500	# 125
	feq		f5, f1, feq.32502	# 120
	addi	x8, x0, 1	# 1123
	jal		x0, fle_cont.32495	# 120
feq.32502:
	addi	x8, x0, 0	# 1123
	jal		x0, fle_cont.32495	# 125
fle.32500:
	addi	x8, x0, 0	# 1124
	jal		x0, fle_cont.32495	# 125
fle.32496:
	addi	x8, x0, 0	# 1125
fle_cont.32495:
	beq		x8, x12, beq.32504	# 1120
	mul		x8, x30, x12	# 1127
	addi	x8, x8, 64336	# 1127
	fsw		f4, 0(x8)	# 1127
	addi	x8, x0, 3	# 1127
	jal		x0, beq_cont.32457	# 1120
beq.32504:
	addi	x8, x0, 0	# 1129
beq_cont.32457:
	beq		x8, x12, beq.32505	# 1600
	mul		x10, x30, x12	# 1604
	addi	x10, x10, 64336	# 1604
	flw		f2, 0(x10)	# 1604
	sw		x6, -36(x2)	# 125
	sw		x5, -32(x2)	# 125
	sw		x29, -4(x2)	# 125
	sw		x13, -40(x2)	# 125
	sw		x4, -100(x2)	# 125
	fle		f2, f1, fle_cont.32506	# 125
	mul		x10, x30, x12	# 1607
	addi	x10, x10, 64344	# 1607
	flw		f1, 0(x10)	# 1607
	fle		f1, f2, fle_cont.32506	# 125
	fadd	f1, f0, f19	# 1609
	fadd	f1, f2, f1	# 1609
	mul		x10, x30, x12	# 1610
	add		x10, x14, x10	# 1610
	flw		f2, 0(x10)	# 1610
	fmul	f2, f2, f1	# 1610
	mul		x10, x30, x12	# 1610
	addi	x10, x10, 64444	# 1610
	flw		f3, 0(x10)	# 1610
	fadd	f2, f2, f3	# 1610
	mul		x10, x30, x13	# 1611
	add		x10, x14, x10	# 1611
	flw		f3, 0(x10)	# 1611
	fmul	f3, f3, f1	# 1611
	mul		x10, x30, x13	# 1611
	addi	x10, x10, 64444	# 1611
	flw		f4, 0(x10)	# 1611
	fadd	f3, f3, f4	# 1611
	mul		x10, x30, x9	# 1612
	add		x10, x14, x10	# 1612
	flw		f4, 0(x10)	# 1612
	fmul	f4, f4, f1	# 1612
	mul		x10, x30, x9	# 1612
	addi	x10, x10, 64444	# 1612
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
	addi	x4, x12, 0	# 1613
	addi	x29, x7, 0	# 1613
	fadd	f1, f0, f2	# 1613
	fadd	f2, f0, f3	# 1613
	fadd	f3, f0, f4	# 1613
	sw		x1, -128(x2)	# 1613
	addi	x2, x2, -132	# 1613
	lw		x31, 0(x29)	# 1613
	jalr	x1, x31, 0	# 1613
	addi	x2, x2, 132	# 1613
	lw		x1, -128(x2)	# 1613
	lw		x5, -24(x2)	# 1613
	beq		x4, x5, fle_cont.32506	# 1613
	mul		x4, x30, x5	# 1615
	addi	x4, x4, 64344	# 1615
	flw		f1, -124(x2)	# 1615
	fsw		f1, 0(x4)	# 1615
	mul		x4, x30, x5	# 277
	addi	x4, x4, 64348	# 277
	flw		f1, -120(x2)	# 277
	fsw		f1, 0(x4)	# 277
	lw		x4, -40(x2)	# 278
	mul		x6, x30, x4	# 278
	addi	x6, x6, 64348	# 278
	flw		f1, -116(x2)	# 278
	fsw		f1, 0(x6)	# 278
	lw		x6, -20(x2)	# 279
	mul		x6, x30, x6	# 279
	addi	x6, x6, 64348	# 279
	flw		f1, -112(x2)	# 279
	fsw		f1, 0(x6)	# 279
	mul		x6, x30, x5	# 1617
	addi	x6, x6, 64360	# 1617
	lw		x7, -108(x2)	# 1617
	sw		x7, 0(x6)	# 1617
	mul		x5, x30, x5	# 1618
	addi	x5, x5, 64340	# 1618
	lw		x6, -104(x2)	# 1618
	sw		x6, 0(x5)	# 1618
	jal		x0, fle_cont.32506	# 1613
	jal		x0, fle_cont.32506	# 125
	jal		x0, fle_cont.32506	# 125
fle_cont.32506:
	lw		x4, -40(x2)	# 1624
	lw		x5, -100(x2)	# 1624
	add		x4, x5, x4	# 1624
	lw		x5, -32(x2)	# 1624
	lw		x6, -36(x2)	# 1624
	lw		x29, -4(x2)	# 1624
	lw		x31, 0(x29)	# 1624
	jalr	x0, x31, 0	# 1624
beq.32505:
	mul		x7, x30, x15	# 1628
	addi	x7, x7, 63844	# 1628
	lw		x7, 0(x7)	# 1628
	lw		x7, 24(x7)	# 410
	beq		x7, x12, beq.32512	# 1628
	add		x4, x4, x13	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x0, x31, 0	# 1629
beq.32512:
	jalr	x0, x1, 0	# 1630
beq.32456:
	jalr	x0, x1, 0	# 1597
beq.32455:
	jalr	x0, x1, 0	# 1630
beq.32340:
	jalr	x0, x1, 0	# 1597
solve_one_or_network_fast.2857.18073:
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
	beq		x15, x11, beq.32517	# 1637
	mul		x15, x30, x15	# 1638
	addi	x15, x15, 64128	# 1638
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
	beq		x17, x11, beq_cont.32518	# 1597
	mul		x18, x30, x17	# 1210
	addi	x18, x18, 63844	# 1210
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
	beq		x21, x14, beq.32521	# 1218
	beq		x21, x10, beq.32523	# 1220
	mul		x9, x30, x13	# 1192
	add		x9, x20, x9	# 1192
	flw		f5, 0(x9)	# 1192
	feq		f5, f1, feq.32525	# 120
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
	fle		f3, f1, fle.32527	# 121
	lw		x9, 24(x18)	# 410
	beq		x9, x13, beq.32529	# 1200
	fsqrt	f3, f3	# 1201
	fadd	f2, f2, f3	# 1201
	addi	x9, x0, 4	# 1201
	mul		x9, x30, x9	# 1201
	add		x9, x20, x9	# 1201
	flw		f3, 0(x9)	# 1201
	fmul	f2, f2, f3	# 1201
	mul		x9, x30, x13	# 1201
	addi	x9, x9, 64336	# 1201
	fsw		f2, 0(x9)	# 1201
	jal		x0, beq_cont.32528	# 1200
beq.32529:
	fsqrt	f3, f3	# 1203
	fsub	f2, f2, f3	# 1203
	addi	x9, x0, 4	# 1203
	mul		x9, x30, x9	# 1203
	add		x9, x20, x9	# 1203
	flw		f3, 0(x9)	# 1203
	fmul	f2, f2, f3	# 1203
	mul		x9, x30, x13	# 1203
	addi	x9, x9, 64336	# 1203
	fsw		f2, 0(x9)	# 1203
beq_cont.32528:
	addi	x9, x0, 1	# 1204
	jal		x0, beq_cont.32520	# 121
fle.32527:
	addi	x9, x0, 0	# 1205
	jal		x0, beq_cont.32520	# 120
feq.32525:
	addi	x9, x0, 0	# 1194
	jal		x0, beq_cont.32520	# 1220
beq.32523:
	mul		x9, x30, x13	# 1183
	add		x9, x20, x9	# 1183
	flw		f2, 0(x9)	# 1183
	fle		f1, f2, fle.32531	# 122
	mul		x9, x30, x12	# 1184
	add		x9, x19, x9	# 1184
	flw		f3, 0(x9)	# 1184
	fmul	f2, f2, f3	# 1184
	mul		x9, x30, x13	# 1184
	addi	x9, x9, 64336	# 1184
	fsw		f2, 0(x9)	# 1184
	addi	x9, x0, 1	# 1185
	jal		x0, beq_cont.32520	# 122
fle.32531:
	addi	x9, x0, 0	# 1186
	jal		x0, beq_cont.32520	# 1218
beq.32521:
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
	fle		f8, f1, fle.32533	# 124
	jal		x0, fle_cont.32532	# 124
fle.32533:
	fsub	f8, f0, f8	# 124
fle_cont.32532:
	lw		x21, 16(x18)	# 438
	mul		x22, x30, x14	# 443
	add		x21, x21, x22	# 443
	flw		f9, 0(x21)	# 443
	fle		f9, f8, fle.32535	# 125
	mul		x21, x30, x10	# 1104
	add		x21, x19, x21	# 1104
	flw		f8, 0(x21)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		f8, f1, fle.32537	# 124
	jal		x0, fle_cont.32536	# 124
fle.32537:
	fsub	f8, f0, f8	# 124
fle_cont.32536:
	lw		x21, 16(x18)	# 448
	mul		x22, x30, x10	# 453
	add		x21, x21, x22	# 453
	flw		f10, 0(x21)	# 453
	fle		f10, f8, fle.32539	# 125
	feq		f6, f1, feq.32541	# 120
	addi	x21, x0, 1	# 1105
	jal		x0, fle_cont.32534	# 120
feq.32541:
	addi	x21, x0, 0	# 1105
	jal		x0, fle_cont.32534	# 125
fle.32539:
	addi	x21, x0, 0	# 1106
	jal		x0, fle_cont.32534	# 125
fle.32535:
	addi	x21, x0, 0	# 1107
fle_cont.32534:
	beq		x21, x13, beq.32543	# 1102
	mul		x9, x30, x13	# 1109
	addi	x9, x9, 64336	# 1109
	fsw		f5, 0(x9)	# 1109
	addi	x9, x0, 1	# 1109
	jal		x0, beq_cont.32520	# 1102
beq.32543:
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
	fle		f10, f1, fle.32545	# 124
	jal		x0, fle_cont.32544	# 124
fle.32545:
	fsub	f10, f0, f10	# 124
fle_cont.32544:
	lw		x12, 16(x18)	# 428
	mul		x21, x30, x13	# 433
	add		x12, x12, x21	# 433
	flw		f11, 0(x12)	# 433
	fle		f11, f10, fle.32547	# 125
	mul		x12, x30, x10	# 1113
	add		x12, x19, x12	# 1113
	flw		f10, 0(x12)	# 1113
	fmul	f10, f5, f10	# 1113
	fadd	f10, f10, f4	# 1113
	fle		f10, f1, fle.32549	# 124
	jal		x0, fle_cont.32548	# 124
fle.32549:
	fsub	f10, f0, f10	# 124
fle_cont.32548:
	lw		x12, 16(x18)	# 448
	mul		x18, x30, x10	# 453
	add		x12, x12, x18	# 453
	flw		f12, 0(x12)	# 453
	fle		f12, f10, fle.32551	# 125
	feq		f6, f1, feq.32553	# 120
	addi	x12, x0, 1	# 1114
	jal		x0, fle_cont.32546	# 120
feq.32553:
	addi	x12, x0, 0	# 1114
	jal		x0, fle_cont.32546	# 125
fle.32551:
	addi	x12, x0, 0	# 1115
	jal		x0, fle_cont.32546	# 125
fle.32547:
	addi	x12, x0, 0	# 1116
fle_cont.32546:
	beq		x12, x13, beq.32555	# 1111
	mul		x9, x30, x13	# 1118
	addi	x9, x9, 64336	# 1118
	fsw		f5, 0(x9)	# 1118
	addi	x9, x0, 2	# 1118
	jal		x0, beq_cont.32520	# 1111
beq.32555:
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
	fle		f2, f1, fle.32557	# 124
	jal		x0, fle_cont.32556	# 124
fle.32557:
	fsub	f2, f0, f2	# 124
fle_cont.32556:
	fle		f11, f2, fle.32559	# 125
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		f2, f1, fle.32561	# 124
	jal		x0, fle_cont.32560	# 124
fle.32561:
	fsub	f2, f0, f2	# 124
fle_cont.32560:
	fle		f9, f2, fle.32563	# 125
	feq		f5, f1, feq.32565	# 120
	addi	x9, x0, 1	# 1123
	jal		x0, fle_cont.32558	# 120
feq.32565:
	addi	x9, x0, 0	# 1123
	jal		x0, fle_cont.32558	# 125
fle.32563:
	addi	x9, x0, 0	# 1124
	jal		x0, fle_cont.32558	# 125
fle.32559:
	addi	x9, x0, 0	# 1125
fle_cont.32558:
	beq		x9, x13, beq.32567	# 1120
	mul		x9, x30, x13	# 1127
	addi	x9, x9, 64336	# 1127
	fsw		f4, 0(x9)	# 1127
	addi	x9, x0, 3	# 1127
	jal		x0, beq_cont.32520	# 1120
beq.32567:
	addi	x9, x0, 0	# 1129
beq_cont.32520:
	beq		x9, x13, beq.32569	# 1600
	mul		x12, x30, x13	# 1604
	addi	x12, x12, 64336	# 1604
	flw		f2, 0(x12)	# 1604
	sw		x15, -32(x2)	# 125
	fle		f2, f1, fle_cont.32570	# 125
	mul		x12, x30, x13	# 1607
	addi	x12, x12, 64344	# 1607
	flw		f1, 0(x12)	# 1607
	fle		f1, f2, fle_cont.32570	# 125
	fadd	f1, f0, f19	# 1609
	fadd	f1, f2, f1	# 1609
	mul		x12, x30, x13	# 1610
	add		x12, x16, x12	# 1610
	flw		f2, 0(x12)	# 1610
	fmul	f2, f2, f1	# 1610
	mul		x12, x30, x13	# 1610
	addi	x12, x12, 64444	# 1610
	flw		f3, 0(x12)	# 1610
	fadd	f2, f2, f3	# 1610
	mul		x12, x30, x14	# 1611
	add		x12, x16, x12	# 1611
	flw		f3, 0(x12)	# 1611
	fmul	f3, f3, f1	# 1611
	mul		x12, x30, x14	# 1611
	addi	x12, x12, 64444	# 1611
	flw		f4, 0(x12)	# 1611
	fadd	f3, f3, f4	# 1611
	mul		x12, x30, x10	# 1612
	add		x12, x16, x12	# 1612
	flw		f4, 0(x12)	# 1612
	fmul	f4, f4, f1	# 1612
	mul		x12, x30, x10	# 1612
	addi	x12, x12, 64444	# 1612
	flw		f5, 0(x12)	# 1612
	fadd	f4, f4, f5	# 1612
	sw		x9, -36(x2)	# 1613
	sw		x17, -40(x2)	# 1613
	fsw		f4, -44(x2)	# 1613
	sw		x10, -48(x2)	# 1613
	fsw		f3, -52(x2)	# 1613
	fsw		f2, -56(x2)	# 1613
	fsw		f1, -60(x2)	# 1613
	addi	x5, x15, 0	# 1613
	addi	x4, x13, 0	# 1613
	addi	x29, x8, 0	# 1613
	fadd	f1, f0, f2	# 1613
	fadd	f2, f0, f3	# 1613
	fadd	f3, f0, f4	# 1613
	sw		x1, -64(x2)	# 1613
	addi	x2, x2, -68	# 1613
	lw		x31, 0(x29)	# 1613
	jalr	x1, x31, 0	# 1613
	addi	x2, x2, 68	# 1613
	lw		x1, -64(x2)	# 1613
	lw		x5, -8(x2)	# 1613
	beq		x4, x5, fle_cont.32570	# 1613
	mul		x4, x30, x5	# 1615
	addi	x4, x4, 64344	# 1615
	flw		f1, -60(x2)	# 1615
	fsw		f1, 0(x4)	# 1615
	mul		x4, x30, x5	# 277
	addi	x4, x4, 64348	# 277
	flw		f1, -56(x2)	# 277
	fsw		f1, 0(x4)	# 277
	lw		x4, -24(x2)	# 278
	mul		x6, x30, x4	# 278
	addi	x6, x6, 64348	# 278
	flw		f1, -52(x2)	# 278
	fsw		f1, 0(x6)	# 278
	lw		x6, -48(x2)	# 279
	mul		x6, x30, x6	# 279
	addi	x6, x6, 64348	# 279
	flw		f1, -44(x2)	# 279
	fsw		f1, 0(x6)	# 279
	mul		x6, x30, x5	# 1617
	addi	x6, x6, 64360	# 1617
	lw		x7, -40(x2)	# 1617
	sw		x7, 0(x6)	# 1617
	mul		x6, x30, x5	# 1618
	addi	x6, x6, 64340	# 1618
	lw		x7, -36(x2)	# 1618
	sw		x7, 0(x6)	# 1618
	jal		x0, fle_cont.32570	# 1613
	jal		x0, fle_cont.32570	# 125
	jal		x0, fle_cont.32570	# 125
fle_cont.32570:
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
	jal		x0, beq_cont.32518	# 1600
beq.32569:
	mul		x8, x30, x17	# 1628
	addi	x8, x8, 63844	# 1628
	lw		x8, 0(x8)	# 1628
	lw		x8, 24(x8)	# 410
	beq		x8, x13, beq_cont.32518	# 1628
	addi	x5, x15, 0	# 1629
	addi	x4, x14, 0	# 1629
	addi	x29, x7, 0	# 1629
	sw		x1, -64(x2)	# 1629
	addi	x2, x2, -68	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x1, x31, 0	# 1629
	addi	x2, x2, 68	# 1629
	lw		x1, -64(x2)	# 1629
	jal		x0, beq_cont.32518	# 1628
	jal		x0, beq_cont.32518	# 1597
beq_cont.32518:
	lw		x4, -24(x2)	# 1640
	lw		x5, -28(x2)	# 1640
	add		x5, x5, x4	# 1640
	mul		x6, x30, x5	# 1636
	lw		x7, -20(x2)	# 1636
	add		x6, x7, x6	# 1636
	lw		x6, 0(x6)	# 1636
	lw		x8, -16(x2)	# 1637
	beq		x6, x8, beq.32578	# 1637
	mul		x6, x30, x6	# 1638
	addi	x6, x6, 64128	# 1638
	lw		x6, 0(x6)	# 1638
	lw		x8, -8(x2)	# 1639
	lw		x9, -4(x2)	# 1639
	lw		x29, -12(x2)	# 1639
	sw		x5, -64(x2)	# 1639
	addi	x5, x6, 0	# 1639
	addi	x4, x8, 0	# 1639
	addi	x6, x9, 0	# 1639
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
beq.32578:
	jalr	x0, x1, 0	# 1641
beq.32517:
	jalr	x0, x1, 0	# 1641
trace_or_matrix_fast.2861.18077:
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
	beq		x16, x11, beq.32581	# 1648
	addi	x17, x0, 99	# 1651
	sw		x6, 0(x2)	# 1651
	sw		x5, -4(x2)	# 1651
	sw		x29, -8(x2)	# 1651
	sw		x14, -12(x2)	# 1651
	sw		x4, -16(x2)	# 1651
	beq		x16, x17, beq.32583	# 1651
	mul		x17, x30, x16	# 1210
	addi	x17, x17, 63844	# 1210
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
	beq		x19, x14, beq.32585	# 1218
	beq		x19, x10, beq.32587	# 1220
	mul		x9, x30, x13	# 1192
	add		x9, x16, x9	# 1192
	flw		f5, 0(x9)	# 1192
	feq		f5, f1, feq.32589	# 120
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
	fle		f3, f1, fle.32591	# 121
	lw		x9, 24(x17)	# 410
	beq		x9, x13, beq.32593	# 1200
	fsqrt	f1, f3	# 1201
	fadd	f1, f2, f1	# 1201
	addi	x9, x0, 4	# 1201
	mul		x9, x30, x9	# 1201
	add		x9, x16, x9	# 1201
	flw		f2, 0(x9)	# 1201
	fmul	f1, f1, f2	# 1201
	mul		x9, x30, x13	# 1201
	addi	x9, x9, 64336	# 1201
	fsw		f1, 0(x9)	# 1201
	jal		x0, beq_cont.32592	# 1200
beq.32593:
	fsqrt	f1, f3	# 1203
	fsub	f1, f2, f1	# 1203
	addi	x9, x0, 4	# 1203
	mul		x9, x30, x9	# 1203
	add		x9, x16, x9	# 1203
	flw		f2, 0(x9)	# 1203
	fmul	f1, f1, f2	# 1203
	mul		x9, x30, x13	# 1203
	addi	x9, x9, 64336	# 1203
	fsw		f1, 0(x9)	# 1203
beq_cont.32592:
	addi	x9, x0, 1	# 1204
	jal		x0, beq_cont.32584	# 121
fle.32591:
	addi	x9, x0, 0	# 1205
	jal		x0, beq_cont.32584	# 120
feq.32589:
	addi	x9, x0, 0	# 1194
	jal		x0, beq_cont.32584	# 1220
beq.32587:
	mul		x9, x30, x13	# 1183
	add		x9, x16, x9	# 1183
	flw		f2, 0(x9)	# 1183
	fle		f1, f2, fle.32595	# 122
	mul		x9, x30, x12	# 1184
	add		x9, x18, x9	# 1184
	flw		f1, 0(x9)	# 1184
	fmul	f1, f2, f1	# 1184
	mul		x9, x30, x13	# 1184
	addi	x9, x9, 64336	# 1184
	fsw		f1, 0(x9)	# 1184
	addi	x9, x0, 1	# 1185
	jal		x0, beq_cont.32584	# 122
fle.32595:
	addi	x9, x0, 0	# 1186
	jal		x0, beq_cont.32584	# 1218
beq.32585:
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
	fle		f8, f1, fle.32597	# 124
	jal		x0, fle_cont.32596	# 124
fle.32597:
	fsub	f8, f0, f8	# 124
fle_cont.32596:
	lw		x19, 16(x17)	# 438
	mul		x20, x30, x14	# 443
	add		x19, x19, x20	# 443
	flw		f9, 0(x19)	# 443
	fle		f9, f8, fle.32599	# 125
	mul		x19, x30, x10	# 1104
	add		x19, x18, x19	# 1104
	flw		f8, 0(x19)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		f8, f1, fle.32601	# 124
	jal		x0, fle_cont.32600	# 124
fle.32601:
	fsub	f8, f0, f8	# 124
fle_cont.32600:
	lw		x19, 16(x17)	# 448
	mul		x20, x30, x10	# 453
	add		x19, x19, x20	# 453
	flw		f9, 0(x19)	# 453
	fle		f9, f8, fle.32603	# 125
	feq		f6, f1, feq.32605	# 120
	addi	x19, x0, 1	# 1105
	jal		x0, fle_cont.32598	# 120
feq.32605:
	addi	x19, x0, 0	# 1105
	jal		x0, fle_cont.32598	# 125
fle.32603:
	addi	x19, x0, 0	# 1106
	jal		x0, fle_cont.32598	# 125
fle.32599:
	addi	x19, x0, 0	# 1107
fle_cont.32598:
	beq		x19, x13, beq.32607	# 1102
	mul		x9, x30, x13	# 1109
	addi	x9, x9, 64336	# 1109
	fsw		f5, 0(x9)	# 1109
	addi	x9, x0, 1	# 1109
	jal		x0, beq_cont.32584	# 1102
beq.32607:
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
	fle		f9, f1, fle.32609	# 124
	jal		x0, fle_cont.32608	# 124
fle.32609:
	fsub	f9, f0, f9	# 124
fle_cont.32608:
	lw		x12, 16(x17)	# 428
	mul		x19, x30, x13	# 433
	add		x12, x12, x19	# 433
	flw		f10, 0(x12)	# 433
	fle		f10, f9, fle.32611	# 125
	mul		x12, x30, x10	# 1113
	add		x12, x18, x12	# 1113
	flw		f9, 0(x12)	# 1113
	fmul	f9, f5, f9	# 1113
	fadd	f9, f9, f4	# 1113
	fle		f9, f1, fle.32613	# 124
	jal		x0, fle_cont.32612	# 124
fle.32613:
	fsub	f9, f0, f9	# 124
fle_cont.32612:
	lw		x12, 16(x17)	# 448
	mul		x18, x30, x10	# 453
	add		x12, x12, x18	# 453
	flw		f10, 0(x12)	# 453
	fle		f10, f9, fle.32615	# 125
	feq		f6, f1, feq.32617	# 120
	addi	x12, x0, 1	# 1114
	jal		x0, fle_cont.32610	# 120
feq.32617:
	addi	x12, x0, 0	# 1114
	jal		x0, fle_cont.32610	# 125
fle.32615:
	addi	x12, x0, 0	# 1115
	jal		x0, fle_cont.32610	# 125
fle.32611:
	addi	x12, x0, 0	# 1116
fle_cont.32610:
	beq		x12, x13, beq.32619	# 1111
	mul		x9, x30, x13	# 1118
	addi	x9, x9, 64336	# 1118
	fsw		f5, 0(x9)	# 1118
	addi	x9, x0, 2	# 1118
	jal		x0, beq_cont.32584	# 1111
beq.32619:
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
	fle		f2, f1, fle.32621	# 124
	jal		x0, fle_cont.32620	# 124
fle.32621:
	fsub	f2, f0, f2	# 124
fle_cont.32620:
	lw		x9, 16(x17)	# 428
	mul		x12, x30, x13	# 433
	add		x9, x9, x12	# 433
	flw		f6, 0(x9)	# 433
	fle		f6, f2, fle.32623	# 125
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		f2, f1, fle.32625	# 124
	jal		x0, fle_cont.32624	# 124
fle.32625:
	fsub	f2, f0, f2	# 124
fle_cont.32624:
	lw		x9, 16(x17)	# 438
	mul		x12, x30, x14	# 443
	add		x9, x9, x12	# 443
	flw		f3, 0(x9)	# 443
	fle		f3, f2, fle.32627	# 125
	feq		f5, f1, feq.32629	# 120
	addi	x9, x0, 1	# 1123
	jal		x0, fle_cont.32622	# 120
feq.32629:
	addi	x9, x0, 0	# 1123
	jal		x0, fle_cont.32622	# 125
fle.32627:
	addi	x9, x0, 0	# 1124
	jal		x0, fle_cont.32622	# 125
fle.32623:
	addi	x9, x0, 0	# 1125
fle_cont.32622:
	beq		x9, x13, beq.32631	# 1120
	mul		x9, x30, x13	# 1127
	addi	x9, x9, 64336	# 1127
	fsw		f4, 0(x9)	# 1127
	addi	x9, x0, 3	# 1127
	jal		x0, beq_cont.32584	# 1120
beq.32631:
	addi	x9, x0, 0	# 1129
beq_cont.32584:
	beq		x9, x13, beq_cont.32582	# 1657
	mul		x9, x30, x13	# 1658
	addi	x9, x9, 64336	# 1658
	flw		f1, 0(x9)	# 1658
	mul		x9, x30, x13	# 1659
	addi	x9, x9, 64344	# 1659
	flw		f2, 0(x9)	# 1659
	fle		f2, f1, beq_cont.32582	# 125
	mul		x9, x30, x14	# 1636
	add		x9, x15, x9	# 1636
	lw		x9, 0(x9)	# 1636
	beq		x9, x11, beq_cont.32582	# 1637
	mul		x9, x30, x9	# 1638
	addi	x9, x9, 64128	# 1638
	lw		x9, 0(x9)	# 1638
	sw		x15, -20(x2)	# 1639
	sw		x10, -24(x2)	# 1639
	sw		x7, -28(x2)	# 1639
	addi	x5, x9, 0	# 1639
	addi	x4, x13, 0	# 1639
	addi	x29, x8, 0	# 1639
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
	jal		x0, beq_cont.32582	# 1637
	jal		x0, beq_cont.32582	# 125
	jal		x0, beq_cont.32582	# 1657
	jal		x0, beq_cont.32582	# 1651
beq.32583:
	mul		x9, x30, x14	# 1636
	add		x9, x15, x9	# 1636
	lw		x9, 0(x9)	# 1636
	beq		x9, x11, beq_cont.32582	# 1637
	mul		x9, x30, x9	# 1638
	addi	x9, x9, 64128	# 1638
	lw		x9, 0(x9)	# 1638
	sw		x15, -20(x2)	# 1639
	sw		x10, -24(x2)	# 1639
	sw		x7, -28(x2)	# 1639
	addi	x5, x9, 0	# 1639
	addi	x4, x13, 0	# 1639
	addi	x29, x8, 0	# 1639
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
	jal		x0, beq_cont.32582	# 1637
beq_cont.32582:
	lw		x4, -12(x2)	# 1664
	lw		x5, -16(x2)	# 1664
	add		x4, x5, x4	# 1664
	lw		x5, -4(x2)	# 1664
	lw		x6, 0(x2)	# 1664
	lw		x29, -8(x2)	# 1664
	lw		x31, 0(x29)	# 1664
	jalr	x0, x31, 0	# 1664
beq.32581:
	jalr	x0, x1, 0	# 1649
trace_reflections.2883.18081:
	lw		x6, 28(x29)	# 1841
	lw		x7, 24(x29)	# 1841
	lw		x8, 20(x29)	# 1841
	lw		x9, 16(x29)	# 1841
	lw		x10, 12(x29)	# 1841
	flw		f3, 8(x29)	# 1841
	flw		f4, 4(x29)	# 1841
	ble		x9, x4, ble.32641	# 1841
	jalr	x0, x1, 0	# 1861
ble.32641:
	mul		x11, x30, x4	# 1842
	addi	x11, x11, 64812	# 1842
	lw		x11, 0(x11)	# 1842
	lw		x12, 4(x11)	# 698
	mul		x13, x30, x9	# 1671
	addi	x13, x13, 64344	# 1671
	fsw		f3, 0(x13)	# 1671
	mul		x13, x30, x9	# 1672
	addi	x13, x13, 64332	# 1672
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
	addi	x5, x13, 0	# 1672
	addi	x4, x9, 0	# 1672
	addi	x29, x6, 0	# 1672
	addi	x6, x12, 0	# 1672
	sw		x1, -48(x2)	# 1672
	addi	x2, x2, -52	# 1672
	lw		x31, 0(x29)	# 1672
	jalr	x1, x31, 0	# 1672
	addi	x2, x2, 52	# 1672
	lw		x1, -48(x2)	# 1672
	lw		x4, -44(x2)	# 1673
	mul		x5, x30, x4	# 1673
	addi	x5, x5, 64344	# 1673
	flw		f1, 0(x5)	# 1673
	fadd	f2, f0, f21	# 1675
	fle		f1, f2, fle.32644	# 125
	fadd	f2, f0, f22	# 1676
	fle		f2, f1, fle.32646	# 125
	addi	x5, x0, 1	# 125
	jal		x0, fle_cont.32643	# 125
fle.32646:
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32643	# 125
fle.32644:
	addi	x5, x0, 0	# 1677
fle_cont.32643:
	beq		x5, x4, beq_cont.32647	# 1846
	mul		x5, x30, x4	# 1847
	addi	x5, x5, 64360	# 1847
	lw		x5, 0(x5)	# 1847
	addi	x6, x0, 4	# 1847
	mul		x5, x5, x6	# 1847
	mul		x6, x30, x4	# 1847
	addi	x6, x6, 64340	# 1847
	lw		x6, 0(x6)	# 1847
	add		x5, x5, x6	# 1847
	lw		x6, -40(x2)	# 692
	lw		x7, 0(x6)	# 692
	beq		x5, x7, beq.32650	# 1848
	jal		x0, beq_cont.32647	# 1848
beq.32650:
	mul		x5, x30, x4	# 1850
	addi	x5, x5, 64332	# 1850
	lw		x5, 0(x5)	# 1850
	lw		x29, -36(x2)	# 1850
	sw		x1, -48(x2)	# 1850
	addi	x2, x2, -52	# 1850
	lw		x31, 0(x29)	# 1850
	jalr	x1, x31, 0	# 1850
	addi	x2, x2, 52	# 1850
	lw		x1, -48(x2)	# 1850
	lw		x5, -44(x2)	# 1850
	beq		x4, x5, beq.32652	# 1850
	jal		x0, beq_cont.32647	# 1850
beq.32652:
	lw		x4, -32(x2)	# 676
	lw		x6, 0(x4)	# 676
	mul		x7, x30, x5	# 329
	addi	x7, x7, 64364	# 329
	flw		f1, 0(x7)	# 329
	mul		x7, x30, x5	# 329
	add		x7, x6, x7	# 329
	flw		f2, 0(x7)	# 329
	fmul	f1, f1, f2	# 329
	lw		x7, -28(x2)	# 329
	mul		x8, x30, x7	# 329
	addi	x8, x8, 64364	# 329
	flw		f2, 0(x8)	# 329
	mul		x8, x30, x7	# 329
	add		x8, x6, x8	# 329
	flw		f3, 0(x8)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	lw		x8, -24(x2)	# 329
	mul		x9, x30, x8	# 329
	addi	x9, x9, 64364	# 329
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
	fle		f1, f4, fle_cont.32653	# 121
	mul		x4, x30, x5	# 339
	addi	x4, x4, 64400	# 339
	flw		f5, 0(x4)	# 339
	mul		x4, x30, x5	# 339
	addi	x4, x4, 64376	# 339
	flw		f6, 0(x4)	# 339
	fmul	f6, f1, f6	# 339
	fadd	f5, f5, f6	# 339
	mul		x4, x30, x5	# 339
	addi	x4, x4, 64400	# 339
	fsw		f5, 0(x4)	# 339
	mul		x4, x30, x7	# 340
	addi	x4, x4, 64400	# 340
	flw		f5, 0(x4)	# 340
	mul		x4, x30, x7	# 340
	addi	x4, x4, 64376	# 340
	flw		f6, 0(x4)	# 340
	fmul	f6, f1, f6	# 340
	fadd	f5, f5, f6	# 340
	mul		x4, x30, x7	# 340
	addi	x4, x4, 64400	# 340
	fsw		f5, 0(x4)	# 340
	mul		x4, x30, x8	# 341
	addi	x4, x4, 64400	# 341
	flw		f5, 0(x4)	# 341
	mul		x4, x30, x8	# 341
	addi	x4, x4, 64376	# 341
	flw		f6, 0(x4)	# 341
	fmul	f1, f1, f6	# 341
	fadd	f1, f5, f1	# 341
	mul		x4, x30, x8	# 341
	addi	x4, x4, 64400	# 341
	fsw		f1, 0(x4)	# 341
	jal		x0, fle_cont.32653	# 121
fle_cont.32653:
	fle		f2, f4, beq_cont.32647	# 121
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -8(x2)	# 1831
	fmul	f1, f1, f2	# 1831
	mul		x4, x30, x5	# 1832
	addi	x4, x4, 64400	# 1832
	flw		f4, 0(x4)	# 1832
	fadd	f4, f4, f1	# 1832
	mul		x4, x30, x5	# 1832
	addi	x4, x4, 64400	# 1832
	fsw		f4, 0(x4)	# 1832
	mul		x4, x30, x7	# 1833
	addi	x4, x4, 64400	# 1833
	flw		f4, 0(x4)	# 1833
	fadd	f4, f4, f1	# 1833
	mul		x4, x30, x7	# 1833
	addi	x4, x4, 64400	# 1833
	fsw		f4, 0(x4)	# 1833
	mul		x4, x30, x8	# 1834
	addi	x4, x4, 64400	# 1834
	flw		f4, 0(x4)	# 1834
	fadd	f1, f4, f1	# 1834
	mul		x4, x30, x8	# 1834
	addi	x4, x4, 64400	# 1834
	fsw		f1, 0(x4)	# 1834
	jal		x0, beq_cont.32647	# 121
	jal		x0, beq_cont.32647	# 1846
beq_cont.32647:
	lw		x4, -28(x2)	# 1860
	lw		x5, -4(x2)	# 1860
	sub		x4, x5, x4	# 1860
	flw		f1, -20(x2)	# 1860
	flw		f2, -8(x2)	# 1860
	lw		x5, -16(x2)	# 1860
	lw		x29, 0(x2)	# 1860
	lw		x31, 0(x29)	# 1860
	jalr	x0, x31, 0	# 1860
trace_ray.2888.18086:
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
	ble		x4, x20, ble.32657	# 1869
	jalr	x0, x1, 0	# 1950
ble.32657:
	lw		x21, 8(x6)	# 614
	mul		x22, x30, x18	# 1580
	addi	x22, x22, 64344	# 1580
	fsw		f3, 0(x22)	# 1580
	mul		x22, x30, x18	# 1581
	addi	x22, x22, 64332	# 1581
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
	addi	x6, x5, 0	# 1581
	addi	x4, x18, 0	# 1581
	addi	x29, x8, 0	# 1581
	addi	x5, x22, 0	# 1581
	sw		x1, -88(x2)	# 1581
	addi	x2, x2, -92	# 1581
	lw		x31, 0(x29)	# 1581
	jalr	x1, x31, 0	# 1581
	addi	x2, x2, 92	# 1581
	lw		x1, -88(x2)	# 1581
	lw		x4, -84(x2)	# 1582
	mul		x5, x30, x4	# 1582
	addi	x5, x5, 64344	# 1582
	flw		f1, 0(x5)	# 1582
	fadd	f2, f0, f21	# 1584
	fle		f1, f2, fle.32660	# 125
	fadd	f2, f0, f22	# 1585
	fle		f2, f1, fle.32662	# 125
	addi	x5, x0, 1	# 125
	jal		x0, fle_cont.32659	# 125
fle.32662:
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32659	# 125
fle.32660:
	addi	x5, x0, 0	# 1586
fle_cont.32659:
	beq		x5, x4, beq.32663	# 1871
	mul		x5, x30, x4	# 1873
	addi	x5, x5, 64360	# 1873
	lw		x5, 0(x5)	# 1873
	mul		x6, x30, x5	# 1874
	addi	x6, x6, 63844	# 1874
	lw		x6, 0(x6)	# 1874
	lw		x7, 8(x6)	# 400
	lw		x8, 28(x6)	# 498
	mul		x9, x30, x4	# 503
	add		x8, x8, x9	# 503
	flw		f1, 0(x8)	# 503
	flw		f2, -52(x2)	# 1876
	fmul	f1, f1, f2	# 1876
	lw		x8, 4(x6)	# 390
	lw		x9, -64(x2)	# 1730
	beq		x8, x9, beq.32665	# 1730
	lw		x10, -60(x2)	# 1732
	beq		x8, x10, beq.32667	# 1732
	mul		x8, x30, x4	# 1707
	addi	x8, x8, 64348	# 1707
	flw		f3, 0(x8)	# 1707
	lw		x8, 20(x6)	# 468
	mul		x11, x30, x4	# 473
	add		x8, x8, x11	# 473
	flw		f4, 0(x8)	# 473
	fsub	f3, f3, f4	# 1707
	mul		x8, x30, x9	# 1708
	addi	x8, x8, 64348	# 1708
	flw		f4, 0(x8)	# 1708
	lw		x8, 20(x6)	# 478
	mul		x11, x30, x9	# 483
	add		x8, x8, x11	# 483
	flw		f5, 0(x8)	# 483
	fsub	f4, f4, f5	# 1708
	mul		x8, x30, x10	# 1709
	addi	x8, x8, 64348	# 1709
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
	beq		x8, x4, beq.32669	# 1715
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
	addi	x8, x8, 64364	# 1720
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
	addi	x8, x8, 64364	# 1721
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
	addi	x8, x8, 64364	# 1722
	fsw		f3, 0(x8)	# 1722
	jal		x0, beq_cont.32668	# 1715
beq.32669:
	mul		x8, x30, x4	# 1716
	addi	x8, x8, 64364	# 1716
	fsw		f6, 0(x8)	# 1716
	mul		x8, x30, x9	# 1717
	addi	x8, x8, 64364	# 1717
	fsw		f7, 0(x8)	# 1717
	mul		x8, x30, x10	# 1718
	addi	x8, x8, 64364	# 1718
	fsw		f8, 0(x8)	# 1718
beq_cont.32668:
	lw		x8, 24(x6)	# 410
	mul		x11, x30, x4	# 320
	addi	x11, x11, 64364	# 320
	flw		f3, 0(x11)	# 320
	fmul	f3, f3, f3	# 127
	mul		x11, x30, x9	# 320
	addi	x11, x11, 64364	# 320
	flw		f4, 0(x11)	# 320
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 320
	mul		x11, x30, x10	# 320
	addi	x11, x11, 64364	# 320
	flw		f4, 0(x11)	# 320
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 320
	fsqrt	f3, f3	# 320
	flw		f4, -56(x2)	# 120
	feq		f3, f4, feq.32671	# 120
	beq		x8, x4, beq.32673	# 321
	lui		x8, %hi(l.26527)	# 321
	ori		x8, x0, %lo(l.26527)	# 321
	flw		f5, 0(x8)	# 321
	fdiv	f3, f5, f3	# 321
	jal		x0, feq_cont.32670	# 321
beq.32673:
	fadd	f5, f0, f16	# 321
	fdiv	f3, f5, f3	# 321
	jal		x0, feq_cont.32670	# 120
feq.32671:
	fadd	f3, f0, f16	# 321
feq_cont.32670:
	mul		x8, x30, x4	# 322
	addi	x8, x8, 64364	# 322
	flw		f5, 0(x8)	# 322
	fmul	f5, f5, f3	# 322
	mul		x8, x30, x4	# 322
	addi	x8, x8, 64364	# 322
	fsw		f5, 0(x8)	# 322
	mul		x8, x30, x9	# 323
	addi	x8, x8, 64364	# 323
	flw		f5, 0(x8)	# 323
	fmul	f5, f5, f3	# 323
	mul		x8, x30, x9	# 323
	addi	x8, x8, 64364	# 323
	fsw		f5, 0(x8)	# 323
	mul		x8, x30, x10	# 324
	addi	x8, x8, 64364	# 324
	flw		f5, 0(x8)	# 324
	fmul	f3, f5, f3	# 324
	mul		x8, x30, x10	# 324
	addi	x8, x8, 64364	# 324
	fsw		f3, 0(x8)	# 324
	jal		x0, beq_cont.32664	# 1732
beq.32667:
	lw		x8, 16(x6)	# 428
	mul		x11, x30, x4	# 433
	add		x8, x8, x11	# 433
	flw		f3, 0(x8)	# 433
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x4	# 1700
	addi	x8, x8, 64364	# 1700
	fsw		f3, 0(x8)	# 1700
	lw		x8, 16(x6)	# 438
	mul		x11, x30, x9	# 443
	add		x8, x8, x11	# 443
	flw		f3, 0(x8)	# 443
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x9	# 1701
	addi	x8, x8, 64364	# 1701
	fsw		f3, 0(x8)	# 1701
	lw		x8, 16(x6)	# 448
	mul		x11, x30, x10	# 453
	add		x8, x8, x11	# 453
	flw		f3, 0(x8)	# 453
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x10	# 1702
	addi	x8, x8, 64364	# 1702
	fsw		f3, 0(x8)	# 1702
	jal		x0, beq_cont.32664	# 1730
beq.32665:
	mul		x8, x30, x4	# 1691
	addi	x8, x8, 64340	# 1691
	lw		x8, 0(x8)	# 1691
	mul		x10, x30, x4	# 284
	addi	x10, x10, 64364	# 284
	flw		f3, -56(x2)	# 284
	fsw		f3, 0(x10)	# 284
	mul		x10, x30, x9	# 285
	addi	x10, x10, 64364	# 285
	fsw		f3, 0(x10)	# 285
	lw		x10, -60(x2)	# 286
	mul		x11, x30, x10	# 286
	addi	x11, x11, 64364	# 286
	fsw		f3, 0(x11)	# 286
	sub		x8, x8, x9	# 1694
	mul		x11, x30, x8	# 1694
	lw		x12, -68(x2)	# 1694
	add		x11, x12, x11	# 1694
	flw		f4, 0(x11)	# 1694
	feq		f4, f3, feq.32675	# 120
	fle		f4, f3, fle.32677	# 121
	fadd	f4, f0, f16	# 250
	jal		x0, feq_cont.32674	# 121
fle.32677:
	lui		x11, %hi(l.26527)	# 251
	ori		x11, x0, %lo(l.26527)	# 251
	flw		f4, 0(x11)	# 251
	jal		x0, feq_cont.32674	# 120
feq.32675:
	fadd	f4, f0, f3	# 249
feq_cont.32674:
	fsub	f4, f0, f4	# 123
	mul		x8, x30, x8	# 1694
	addi	x8, x8, 64364	# 1694
	fsw		f4, 0(x8)	# 1694
beq_cont.32664:
	mul		x8, x30, x4	# 296
	addi	x8, x8, 64348	# 296
	flw		f3, 0(x8)	# 296
	mul		x8, x30, x4	# 296
	addi	x8, x8, 64432	# 296
	fsw		f3, 0(x8)	# 296
	mul		x8, x30, x9	# 297
	addi	x8, x8, 64348	# 297
	flw		f3, 0(x8)	# 297
	mul		x8, x30, x9	# 297
	addi	x8, x8, 64432	# 297
	fsw		f3, 0(x8)	# 297
	mul		x8, x30, x10	# 298
	addi	x8, x8, 64348	# 298
	flw		f3, 0(x8)	# 298
	mul		x8, x30, x10	# 298
	addi	x8, x8, 64432	# 298
	fsw		f3, 0(x8)	# 298
	lw		x8, 0(x6)	# 380
	lw		x11, 32(x6)	# 518
	mul		x12, x30, x4	# 523
	add		x11, x11, x12	# 523
	flw		f3, 0(x11)	# 523
	mul		x11, x30, x4	# 1747
	addi	x11, x11, 64376	# 1747
	fsw		f3, 0(x11)	# 1747
	lw		x11, 32(x6)	# 528
	mul		x12, x30, x9	# 533
	add		x11, x11, x12	# 533
	flw		f3, 0(x11)	# 533
	mul		x11, x30, x9	# 1748
	addi	x11, x11, 64376	# 1748
	fsw		f3, 0(x11)	# 1748
	lw		x11, 32(x6)	# 538
	mul		x12, x30, x10	# 543
	add		x11, x11, x12	# 543
	flw		f3, 0(x11)	# 543
	mul		x11, x30, x10	# 1749
	addi	x11, x11, 64376	# 1749
	fsw		f3, 0(x11)	# 1749
	sw		x7, -88(x2)	# 1750
	fsw		f1, -92(x2)	# 1750
	sw		x6, -96(x2)	# 1750
	sw		x5, -100(x2)	# 1750
	beq		x8, x9, beq.32679	# 1750
	beq		x8, x10, beq.32681	# 1768
	lw		x11, -36(x2)	# 1775
	beq		x8, x11, beq.32683	# 1775
	lw		x11, -28(x2)	# 1786
	beq		x8, x11, beq.32685	# 1786
	jal		x0, beq_cont.32678	# 1786
beq.32685:
	mul		x8, x30, x4	# 1788
	addi	x8, x8, 64348	# 1788
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
	addi	x8, x8, 64348	# 1789
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
	fle		f3, f6, fle.32687	# 124
	fadd	f7, f0, f3	# 124
	jal		x0, fle_cont.32686	# 124
fle.32687:
	fsub	f7, f0, f3	# 124
fle_cont.32686:
	lui		x8, %hi(l.28006)	# 1792
	ori		x8, x0, %lo(l.28006)	# 1792
	flw		f8, 0(x8)	# 1792
	fsw		f8, -104(x2)	# 125
	fsw		f5, -108(x2)	# 125
	fle		f8, f7, fle.32689	# 125
	lui		x8, %hi(l.28008)	# 1793
	ori		x8, x0, %lo(l.28008)	# 1793
	flw		f1, 0(x8)	# 1793
	jal		x0, fle_cont.32688	# 125
fle.32689:
	fdiv	f3, f4, f3	# 1795
	fle		f3, f6, fle.32691	# 124
	jal		x0, fle_cont.32690	# 124
fle.32691:
	fsub	f3, f0, f3	# 124
fle_cont.32690:
	lw		x29, -24(x2)	# 1797
	fadd	f1, f0, f3	# 1797
	sw		x1, -112(x2)	# 1797
	addi	x2, x2, -116	# 1797
	lw		x31, 0(x29)	# 1797
	jalr	x1, x31, 0	# 1797
	addi	x2, x2, 116	# 1797
	lw		x1, -112(x2)	# 1797
	lui		x4, %hi(l.28010)	# 1797
	ori		x4, x0, %lo(l.28010)	# 1797
	flw		f2, 0(x4)	# 1797
	fmul	f1, f1, f2	# 1797
	fadd	f2, f0, f29	# 1797
	fdiv	f1, f1, f2	# 1797
fle_cont.32688:
	fadd	f2, f0, f26	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -84(x2)	# 153
	lw		x29, -48(x2)	# 153
	fsw		f2, -112(x2)	# 153
	fsw		f1, -116(x2)	# 153
	fadd	f1, f0, f3	# 153
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
	lw		x4, -64(x2)	# 1801
	mul		x5, x30, x4	# 1801
	addi	x5, x5, 64348	# 1801
	flw		f2, 0(x5)	# 1801
	lw		x5, -96(x2)	# 478
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
	flw		f3, -56(x2)	# 124
	flw		f4, -108(x2)	# 124
	fle		f4, f3, fle.32693	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.32692	# 124
fle.32693:
	fsub	f5, f0, f4	# 124
fle_cont.32692:
	flw		f6, -104(x2)	# 125
	fsw		f1, -120(x2)	# 125
	fle		f6, f5, fle.32695	# 125
	lui		x6, %hi(l.28008)	# 1804
	ori		x6, x0, %lo(l.28008)	# 1804
	flw		f1, 0(x6)	# 1804
	jal		x0, fle_cont.32694	# 125
fle.32695:
	fdiv	f2, f2, f4	# 1806
	fle		f2, f3, fle.32697	# 124
	jal		x0, fle_cont.32696	# 124
fle.32697:
	fsub	f2, f0, f2	# 124
fle_cont.32696:
	lw		x29, -24(x2)	# 1807
	fadd	f1, f0, f2	# 1807
	sw		x1, -124(x2)	# 1807
	addi	x2, x2, -128	# 1807
	lw		x31, 0(x29)	# 1807
	jalr	x1, x31, 0	# 1807
	addi	x2, x2, 128	# 1807
	lw		x1, -124(x2)	# 1807
	lui		x4, %hi(l.28010)	# 1807
	ori		x4, x0, %lo(l.28010)	# 1807
	flw		f2, 0(x4)	# 1807
	fmul	f1, f1, f2	# 1807
	fadd	f2, f0, f29	# 1807
	fdiv	f1, f1, f2	# 1807
fle_cont.32694:
	flw		f2, -112(x2)	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -84(x2)	# 153
	lw		x29, -48(x2)	# 153
	fsw		f1, -124(x2)	# 153
	fadd	f1, f0, f3	# 153
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
	fadd	f2, f0, f30	# 1810
	flw		f3, -120(x2)	# 1810
	flw		f4, -112(x2)	# 1810
	fsub	f3, f4, f3	# 1810
	fmul	f3, f3, f3	# 127
	fsub	f2, f2, f3	# 1810
	fsub	f1, f4, f1	# 1810
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1810
	flw		f2, -56(x2)	# 122
	fle		f2, f1, fle_cont.32698	# 122
	fadd	f1, f0, f2	# 1811
	jal		x0, fle_cont.32698	# 122
fle_cont.32698:
	flw		f3, -44(x2)	# 1812
	fmul	f1, f3, f1	# 1812
	lui		x4, %hi(l.28026)	# 1812
	ori		x4, x0, %lo(l.28026)	# 1812
	flw		f3, 0(x4)	# 1812
	fdiv	f1, f1, f3	# 1812
	lw		x4, -60(x2)	# 1812
	mul		x5, x30, x4	# 1812
	addi	x5, x5, 64376	# 1812
	fsw		f1, 0(x5)	# 1812
	jal		x0, beq_cont.32678	# 1775
beq.32683:
	mul		x8, x30, x4	# 1778
	addi	x8, x8, 64348	# 1778
	flw		f3, 0(x8)	# 1778
	lw		x8, 20(x6)	# 468
	mul		x11, x30, x4	# 473
	add		x8, x8, x11	# 473
	flw		f4, 0(x8)	# 473
	fsub	f3, f3, f4	# 1778
	mul		x8, x30, x10	# 1779
	addi	x8, x8, 64348	# 1779
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
	lui		x8, %hi(l.28038)	# 1780
	ori		x8, x0, %lo(l.28038)	# 1780
	flw		f4, 0(x8)	# 1780
	fdiv	f3, f3, f4	# 1780
	fadd	f4, f0, f26	# 166
	fsub	f4, f3, f4	# 166
	lw		x29, -48(x2)	# 153
	fsw		f3, -128(x2)	# 153
	fadd	f1, f0, f4	# 153
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
	fadd	f2, f0, f29	# 1781
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
	lw		x4, -64(x2)	# 1783
	mul		x5, x30, x4	# 1783
	addi	x5, x5, 64376	# 1783
	fsw		f3, 0(x5)	# 1783
	fadd	f3, f0, f16	# 1784
	fsub	f1, f3, f1	# 1784
	fmul	f1, f1, f2	# 1784
	lw		x5, -60(x2)	# 1784
	mul		x6, x30, x5	# 1784
	addi	x6, x6, 64376	# 1784
	fsw		f1, 0(x6)	# 1784
	jal		x0, beq_cont.32678	# 1768
beq.32681:
	mul		x8, x30, x9	# 1771
	addi	x8, x8, 64348	# 1771
	flw		f3, 0(x8)	# 1771
	lui		x8, %hi(l.28049)	# 1771
	ori		x8, x0, %lo(l.28049)	# 1771
	flw		f4, 0(x8)	# 1771
	fmul	f3, f3, f4	# 1771
	lw		x29, -40(x2)	# 1771
	fadd	f1, f0, f3	# 1771
	sw		x1, -132(x2)	# 1771
	addi	x2, x2, -136	# 1771
	lw		x31, 0(x29)	# 1771
	jalr	x1, x31, 0	# 1771
	addi	x2, x2, 136	# 1771
	lw		x1, -132(x2)	# 1771
	fmul	f1, f1, f1	# 127
	flw		f2, -44(x2)	# 1772
	fmul	f3, f2, f1	# 1772
	lw		x4, -84(x2)	# 1772
	mul		x5, x30, x4	# 1772
	addi	x5, x5, 64376	# 1772
	fsw		f3, 0(x5)	# 1772
	fadd	f3, f0, f16	# 1773
	fsub	f1, f3, f1	# 1773
	fmul	f1, f2, f1	# 1773
	lw		x5, -64(x2)	# 1773
	mul		x6, x30, x5	# 1773
	addi	x6, x6, 64376	# 1773
	fsw		f1, 0(x6)	# 1773
	jal		x0, beq_cont.32678	# 1750
beq.32679:
	mul		x8, x30, x4	# 1753
	addi	x8, x8, 64348	# 1753
	flw		f3, 0(x8)	# 1753
	lw		x8, 20(x6)	# 468
	mul		x11, x30, x4	# 473
	add		x8, x8, x11	# 473
	flw		f4, 0(x8)	# 473
	fsub	f3, f3, f4	# 1753
	lui		x8, %hi(l.28060)	# 1755
	ori		x8, x0, %lo(l.28060)	# 1755
	flw		f4, 0(x8)	# 1755
	fmul	f5, f3, f4	# 1755
	fadd	f6, f0, f26	# 166
	fsub	f5, f5, f6	# 166
	lw		x29, -48(x2)	# 153
	fsw		f6, -132(x2)	# 153
	fsw		f4, -136(x2)	# 153
	fsw		f3, -140(x2)	# 153
	fadd	f1, f0, f5	# 153
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
	lui		x4, %hi(l.28063)	# 1755
	ori		x4, x0, %lo(l.28063)	# 1755
	flw		f2, 0(x4)	# 1755
	fmul	f1, f1, f2	# 1755
	flw		f3, -140(x2)	# 1756
	fsub	f1, f3, f1	# 1756
	lui		x4, %hi(l.28038)	# 1756
	ori		x4, x0, %lo(l.28038)	# 1756
	flw		f3, 0(x4)	# 1756
	lw		x4, -60(x2)	# 1758
	mul		x5, x30, x4	# 1758
	addi	x5, x5, 64348	# 1758
	flw		f4, 0(x5)	# 1758
	lw		x5, -96(x2)	# 488
	lw		x6, 20(x5)	# 488
	mul		x7, x30, x4	# 493
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
	addi	x4, x6, 0	# 153
	fadd	f1, f0, f5	# 153
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
	fle		f3, f2, fle.32701	# 125
	fle		f3, f1, fle.32703	# 125
	flw		f1, -44(x2)	# 1765
	jal		x0, fle_cont.32700	# 125
fle.32703:
	flw		f1, -56(x2)	# 1765
	jal		x0, fle_cont.32700	# 125
fle.32701:
	fle		f3, f1, fle.32705	# 125
	flw		f1, -56(x2)	# 1766
	jal		x0, fle_cont.32700	# 125
fle.32705:
	flw		f1, -44(x2)	# 1766
fle_cont.32700:
	lw		x4, -64(x2)	# 1763
	mul		x5, x30, x4	# 1763
	addi	x5, x5, 64376	# 1763
	fsw		f1, 0(x5)	# 1763
beq_cont.32678:
	lw		x4, -28(x2)	# 1883
	lw		x5, -100(x2)	# 1883
	mul		x5, x5, x4	# 1883
	lw		x6, -84(x2)	# 1883
	mul		x7, x30, x6	# 1883
	addi	x7, x7, 64340	# 1883
	lw		x7, 0(x7)	# 1883
	add		x5, x5, x7	# 1883
	lw		x7, -80(x2)	# 1883
	mul		x8, x30, x7	# 1883
	lw		x9, -76(x2)	# 1883
	add		x8, x9, x8	# 1883
	sw		x5, 0(x8)	# 1883
	lw		x5, -20(x2)	# 606
	lw		x8, 4(x5)	# 606
	mul		x10, x30, x7	# 1885
	add		x8, x8, x10	# 1885
	lw		x8, 0(x8)	# 1885
	mul		x10, x30, x6	# 296
	addi	x10, x10, 64348	# 296
	flw		f1, 0(x10)	# 296
	mul		x10, x30, x6	# 296
	add		x10, x8, x10	# 296
	fsw		f1, 0(x10)	# 296
	lw		x10, -64(x2)	# 297
	mul		x11, x30, x10	# 297
	addi	x11, x11, 64348	# 297
	flw		f1, 0(x11)	# 297
	mul		x11, x30, x10	# 297
	add		x11, x8, x11	# 297
	fsw		f1, 0(x11)	# 297
	lw		x11, -60(x2)	# 298
	mul		x12, x30, x11	# 298
	addi	x12, x12, 64348	# 298
	flw		f1, 0(x12)	# 298
	mul		x12, x30, x11	# 298
	add		x8, x8, x12	# 298
	fsw		f1, 0(x8)	# 298
	lw		x8, 12(x5)	# 621
	lw		x12, -96(x2)	# 498
	lw		x13, 28(x12)	# 498
	mul		x14, x30, x6	# 503
	add		x13, x13, x14	# 503
	flw		f1, 0(x13)	# 503
	fadd	f2, f0, f26	# 1889
	fle		f2, f1, fle.32707	# 125
	mul		x13, x30, x7	# 1890
	add		x8, x8, x13	# 1890
	sw		x6, 0(x8)	# 1890
	jal		x0, fle_cont.32706	# 125
fle.32707:
	mul		x13, x30, x7	# 1892
	add		x8, x8, x13	# 1892
	sw		x10, 0(x8)	# 1892
	lw		x8, 16(x5)	# 628
	mul		x13, x30, x7	# 1894
	add		x13, x8, x13	# 1894
	lw		x13, 0(x13)	# 1894
	mul		x14, x30, x6	# 296
	addi	x14, x14, 64376	# 296
	flw		f1, 0(x14)	# 296
	mul		x14, x30, x6	# 296
	add		x14, x13, x14	# 296
	fsw		f1, 0(x14)	# 296
	mul		x14, x30, x10	# 297
	addi	x14, x14, 64376	# 297
	flw		f1, 0(x14)	# 297
	mul		x14, x30, x10	# 297
	add		x14, x13, x14	# 297
	fsw		f1, 0(x14)	# 297
	mul		x14, x30, x11	# 298
	addi	x14, x14, 64376	# 298
	flw		f1, 0(x14)	# 298
	mul		x14, x30, x11	# 298
	add		x13, x13, x14	# 298
	fsw		f1, 0(x13)	# 298
	mul		x13, x30, x7	# 1895
	add		x8, x8, x13	# 1895
	lw		x8, 0(x8)	# 1895
	lui		x13, %hi(l.28113)	# 1895
	ori		x13, x0, %lo(l.28113)	# 1895
	flw		f1, 0(x13)	# 1895
	flw		f2, -92(x2)	# 1895
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
	addi	x13, x13, 64364	# 296
	flw		f1, 0(x13)	# 296
	mul		x13, x30, x6	# 296
	add		x13, x8, x13	# 296
	fsw		f1, 0(x13)	# 296
	mul		x13, x30, x10	# 297
	addi	x13, x13, 64364	# 297
	flw		f1, 0(x13)	# 297
	mul		x13, x30, x10	# 297
	add		x13, x8, x13	# 297
	fsw		f1, 0(x13)	# 297
	mul		x13, x30, x11	# 298
	addi	x13, x13, 64364	# 298
	flw		f1, 0(x13)	# 298
	mul		x13, x30, x11	# 298
	add		x8, x8, x13	# 298
	fsw		f1, 0(x8)	# 298
fle_cont.32706:
	lui		x8, %hi(l.28141)	# 1900
	ori		x8, x0, %lo(l.28141)	# 1900
	flw		f1, 0(x8)	# 1900
	mul		x8, x30, x6	# 329
	lw		x13, -68(x2)	# 329
	add		x8, x13, x8	# 329
	flw		f2, 0(x8)	# 329
	mul		x8, x30, x6	# 329
	addi	x8, x8, 64364	# 329
	flw		f3, 0(x8)	# 329
	fmul	f4, f2, f3	# 329
	mul		x8, x30, x10	# 329
	add		x8, x13, x8	# 329
	flw		f5, 0(x8)	# 329
	mul		x8, x30, x10	# 329
	addi	x8, x8, 64364	# 329
	flw		f6, 0(x8)	# 329
	fmul	f5, f5, f6	# 329
	fadd	f4, f4, f5	# 329
	mul		x8, x30, x11	# 329
	add		x8, x13, x8	# 329
	flw		f5, 0(x8)	# 329
	mul		x8, x30, x11	# 329
	addi	x8, x8, 64364	# 329
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
	addi	x8, x8, 64364	# 340
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
	addi	x8, x8, 64364	# 341
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
	flw		f2, -52(x2)	# 1904
	fmul	f1, f2, f1	# 1904
	mul		x8, x30, x6	# 1907
	addi	x8, x8, 64332	# 1907
	lw		x8, 0(x8)	# 1907
	lw		x29, -16(x2)	# 1907
	fsw		f1, -160(x2)	# 1907
	addi	x5, x8, 0	# 1907
	addi	x4, x6, 0	# 1907
	sw		x1, -164(x2)	# 1907
	addi	x2, x2, -168	# 1907
	lw		x31, 0(x29)	# 1907
	jalr	x1, x31, 0	# 1907
	addi	x2, x2, 168	# 1907
	lw		x1, -164(x2)	# 1907
	lw		x5, -84(x2)	# 1907
	beq		x4, x5, beq.32709	# 1907
	jal		x0, beq_cont.32708	# 1907
beq.32709:
	mul		x4, x30, x5	# 329
	addi	x4, x4, 64364	# 329
	flw		f1, 0(x4)	# 329
	mul		x4, x30, x5	# 329
	addi	x4, x4, 64108	# 329
	flw		f2, 0(x4)	# 329
	fmul	f1, f1, f2	# 329
	lw		x4, -64(x2)	# 329
	mul		x6, x30, x4	# 329
	addi	x6, x6, 64364	# 329
	flw		f3, 0(x6)	# 329
	mul		x6, x30, x4	# 329
	addi	x6, x6, 64108	# 329
	flw		f4, 0(x6)	# 329
	fmul	f3, f3, f4	# 329
	fadd	f1, f1, f3	# 329
	lw		x6, -60(x2)	# 329
	mul		x7, x30, x6	# 329
	addi	x7, x7, 64364	# 329
	flw		f3, 0(x7)	# 329
	mul		x7, x30, x6	# 329
	addi	x7, x7, 64108	# 329
	flw		f5, 0(x7)	# 329
	fmul	f3, f3, f5	# 329
	fadd	f1, f1, f3	# 329
	fsub	f1, f0, f1	# 123
	flw		f3, -92(x2)	# 1908
	fmul	f1, f1, f3	# 1908
	mul		x7, x30, x5	# 329
	lw		x8, -68(x2)	# 329
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
	flw		f4, -56(x2)	# 121
	fle		f1, f4, fle_cont.32710	# 121
	mul		x7, x30, x5	# 339
	addi	x7, x7, 64400	# 339
	flw		f5, 0(x7)	# 339
	mul		x7, x30, x5	# 339
	addi	x7, x7, 64376	# 339
	flw		f6, 0(x7)	# 339
	fmul	f6, f1, f6	# 339
	fadd	f5, f5, f6	# 339
	mul		x7, x30, x5	# 339
	addi	x7, x7, 64400	# 339
	fsw		f5, 0(x7)	# 339
	mul		x7, x30, x4	# 340
	addi	x7, x7, 64400	# 340
	flw		f5, 0(x7)	# 340
	mul		x7, x30, x4	# 340
	addi	x7, x7, 64376	# 340
	flw		f6, 0(x7)	# 340
	fmul	f6, f1, f6	# 340
	fadd	f5, f5, f6	# 340
	mul		x7, x30, x4	# 340
	addi	x7, x7, 64400	# 340
	fsw		f5, 0(x7)	# 340
	mul		x7, x30, x6	# 341
	addi	x7, x7, 64400	# 341
	flw		f5, 0(x7)	# 341
	mul		x7, x30, x6	# 341
	addi	x7, x7, 64376	# 341
	flw		f6, 0(x7)	# 341
	fmul	f1, f1, f6	# 341
	fadd	f1, f5, f1	# 341
	mul		x7, x30, x6	# 341
	addi	x7, x7, 64400	# 341
	fsw		f1, 0(x7)	# 341
	jal		x0, fle_cont.32710	# 121
fle_cont.32710:
	fle		f2, f4, beq_cont.32708	# 121
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -160(x2)	# 1831
	fmul	f1, f1, f2	# 1831
	mul		x7, x30, x5	# 1832
	addi	x7, x7, 64400	# 1832
	flw		f4, 0(x7)	# 1832
	fadd	f4, f4, f1	# 1832
	mul		x7, x30, x5	# 1832
	addi	x7, x7, 64400	# 1832
	fsw		f4, 0(x7)	# 1832
	mul		x7, x30, x4	# 1833
	addi	x7, x7, 64400	# 1833
	flw		f4, 0(x7)	# 1833
	fadd	f4, f4, f1	# 1833
	mul		x7, x30, x4	# 1833
	addi	x7, x7, 64400	# 1833
	fsw		f4, 0(x7)	# 1833
	mul		x7, x30, x6	# 1834
	addi	x7, x7, 64400	# 1834
	flw		f4, 0(x7)	# 1834
	fadd	f1, f4, f1	# 1834
	mul		x7, x30, x6	# 1834
	addi	x7, x7, 64400	# 1834
	fsw		f1, 0(x7)	# 1834
	jal		x0, beq_cont.32708	# 121
beq_cont.32708:
	mul		x4, x30, x5	# 296
	addi	x4, x4, 64348	# 296
	flw		f1, 0(x4)	# 296
	mul		x4, x30, x5	# 296
	addi	x4, x4, 64444	# 296
	fsw		f1, 0(x4)	# 296
	lw		x4, -64(x2)	# 297
	mul		x6, x30, x4	# 297
	addi	x6, x6, 64348	# 297
	flw		f1, 0(x6)	# 297
	mul		x6, x30, x4	# 297
	addi	x6, x6, 64444	# 297
	fsw		f1, 0(x6)	# 297
	lw		x6, -60(x2)	# 298
	mul		x7, x30, x6	# 298
	addi	x7, x7, 64348	# 298
	flw		f1, 0(x7)	# 298
	mul		x7, x30, x6	# 298
	addi	x7, x7, 64444	# 298
	fsw		f1, 0(x7)	# 298
	mul		x7, x30, x5	# 1352
	addi	x7, x7, 63796	# 1352
	lw		x7, 0(x7)	# 1352
	sub		x7, x7, x4	# 1352
	addi	x8, x0, 64348	# 1352
	lw		x29, -12(x2)	# 1352
	addi	x5, x7, 0	# 1352
	addi	x4, x8, 0	# 1352
	sw		x1, -164(x2)	# 1352
	addi	x2, x2, -168	# 1352
	lw		x31, 0(x29)	# 1352
	jalr	x1, x31, 0	# 1352
	addi	x2, x2, 168	# 1352
	lw		x1, -164(x2)	# 1352
	lw		x4, -84(x2)	# 1915
	mul		x5, x30, x4	# 1915
	addi	x5, x5, 65532	# 1915
	lw		x5, 0(x5)	# 1915
	lw		x6, -64(x2)	# 1915
	sub		x5, x5, x6	# 1915
	flw		f1, -92(x2)	# 1915
	flw		f2, -160(x2)	# 1915
	lw		x7, -68(x2)	# 1915
	lw		x29, -8(x2)	# 1915
	addi	x4, x5, 0	# 1915
	addi	x5, x7, 0	# 1915
	sw		x1, -164(x2)	# 1915
	addi	x2, x2, -168	# 1915
	lw		x31, 0(x29)	# 1915
	jalr	x1, x31, 0	# 1915
	addi	x2, x2, 168	# 1915
	lw		x1, -164(x2)	# 1915
	lui		x4, %hi(l.28237)	# 1918
	ori		x4, x0, %lo(l.28237)	# 1918
	flw		f1, 0(x4)	# 1918
	flw		f2, -52(x2)	# 125
	fle		f2, f1, fle.32714	# 125
	lw		x4, -80(x2)	# 1920
	lw		x5, -28(x2)	# 1920
	ble		x5, x4, ble_cont.32715	# 1920
	lw		x5, -64(x2)	# 1921
	add		x6, x4, x5	# 1921
	mul		x6, x30, x6	# 1921
	lw		x7, -76(x2)	# 1921
	add		x6, x7, x6	# 1921
	lw		x7, -72(x2)	# 1921
	sw		x7, 0(x6)	# 1921
	jal		x0, ble_cont.32715	# 1920
ble_cont.32715:
	lw		x5, -60(x2)	# 1924
	lw		x6, -88(x2)	# 1924
	beq		x6, x5, beq.32717	# 1924
	jalr	x0, x1, 0	# 1927
beq.32717:
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
	mul		x5, x30, x6	# 1926
	addi	x5, x5, 64344	# 1926
	flw		f2, 0(x5)	# 1926
	flw		f3, -4(x2)	# 1926
	fadd	f2, f3, f2	# 1926
	lw		x5, -68(x2)	# 1926
	lw		x6, -20(x2)	# 1926
	lw		x29, 0(x2)	# 1926
	lw		x31, 0(x29)	# 1926
	jalr	x0, x31, 0	# 1926
fle.32714:
	jalr	x0, x1, 0	# 1929
beq.32663:
	lw		x5, -80(x2)	# 1934
	mul		x6, x30, x5	# 1934
	lw		x7, -76(x2)	# 1934
	add		x6, x7, x6	# 1934
	lw		x7, -72(x2)	# 1934
	sw		x7, 0(x6)	# 1934
	beq		x5, x4, beq.32720	# 1936
	mul		x5, x30, x4	# 329
	lw		x6, -68(x2)	# 329
	add		x5, x6, x5	# 329
	flw		f1, 0(x5)	# 329
	mul		x5, x30, x4	# 329
	addi	x5, x5, 64108	# 329
	flw		f2, 0(x5)	# 329
	fmul	f1, f1, f2	# 329
	lw		x5, -64(x2)	# 329
	mul		x7, x30, x5	# 329
	add		x7, x6, x7	# 329
	flw		f2, 0(x7)	# 329
	mul		x7, x30, x5	# 329
	addi	x7, x7, 64108	# 329
	flw		f3, 0(x7)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	lw		x7, -60(x2)	# 329
	mul		x8, x30, x7	# 329
	add		x6, x6, x8	# 329
	flw		f2, 0(x6)	# 329
	mul		x6, x30, x7	# 329
	addi	x6, x6, 64108	# 329
	flw		f3, 0(x6)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	fsub	f1, f0, f1	# 123
	flw		f2, -56(x2)	# 121
	fle		f1, f2, fle.32721	# 121
	fmul	f2, f1, f1	# 127
	fmul	f1, f2, f1	# 1942
	flw		f2, -52(x2)	# 1942
	fmul	f1, f1, f2	# 1942
	mul		x6, x30, x4	# 1942
	addi	x6, x6, 64120	# 1942
	flw		f2, 0(x6)	# 1942
	fmul	f1, f1, f2	# 1942
	mul		x6, x30, x4	# 1943
	addi	x6, x6, 64400	# 1943
	flw		f2, 0(x6)	# 1943
	fadd	f2, f2, f1	# 1943
	mul		x4, x30, x4	# 1943
	addi	x4, x4, 64400	# 1943
	fsw		f2, 0(x4)	# 1943
	mul		x4, x30, x5	# 1944
	addi	x4, x4, 64400	# 1944
	flw		f2, 0(x4)	# 1944
	fadd	f2, f2, f1	# 1944
	mul		x4, x30, x5	# 1944
	addi	x4, x4, 64400	# 1944
	fsw		f2, 0(x4)	# 1944
	mul		x4, x30, x7	# 1945
	addi	x4, x4, 64400	# 1945
	flw		f2, 0(x4)	# 1945
	fadd	f1, f2, f1	# 1945
	mul		x4, x30, x7	# 1945
	addi	x4, x4, 64400	# 1945
	fsw		f1, 0(x4)	# 1945
	jalr	x0, x1, 0	# 1945
fle.32721:
	jalr	x0, x1, 0	# 1947
beq.32720:
	jalr	x0, x1, 0	# 1948
iter_trace_diffuse_rays.2897.18092:
	lw		x8, 52(x29)	# 1981
	lw		x9, 48(x29)	# 1981
	lw		x10, 44(x29)	# 1981
	lw		x11, 40(x29)	# 1981
	lw		x12, 36(x29)	# 1981
	lw		x13, 32(x29)	# 1981
	lw		x14, 28(x29)	# 1981
	lw		x15, 24(x29)	# 1981
	lw		x16, 20(x29)	# 1981
	lw		x17, 16(x29)	# 1981
	flw		f1, 12(x29)	# 1981
	flw		f2, 8(x29)	# 1981
	flw		f3, 4(x29)	# 1981
	ble		x16, x7, ble.32725	# 1981
	jalr	x0, x1, 0	# 1992
ble.32725:
	mul		x18, x30, x7	# 1982
	add		x18, x4, x18	# 1982
	lw		x18, 0(x18)	# 1982
	lw		x19, 0(x18)	# 676
	mul		x20, x30, x16	# 329
	add		x20, x19, x20	# 329
	flw		f4, 0(x20)	# 329
	mul		x20, x30, x16	# 329
	add		x20, x5, x20	# 329
	flw		f5, 0(x20)	# 329
	fmul	f4, f4, f5	# 329
	mul		x20, x30, x17	# 329
	add		x20, x19, x20	# 329
	flw		f5, 0(x20)	# 329
	mul		x20, x30, x17	# 329
	add		x20, x5, x20	# 329
	flw		f6, 0(x20)	# 329
	fmul	f5, f5, f6	# 329
	fadd	f4, f4, f5	# 329
	mul		x20, x30, x14	# 329
	add		x19, x19, x20	# 329
	flw		f5, 0(x19)	# 329
	mul		x19, x30, x14	# 329
	add		x19, x5, x19	# 329
	flw		f6, 0(x19)	# 329
	fmul	f5, f5, f6	# 329
	fadd	f4, f4, f5	# 329
	sw		x6, 0(x2)	# 122
	sw		x5, -4(x2)	# 122
	sw		x4, -8(x2)	# 122
	sw		x29, -12(x2)	# 122
	sw		x14, -16(x2)	# 122
	sw		x7, -20(x2)	# 122
	fle		f3, f4, fle.32728	# 122
	add		x18, x7, x17	# 1987
	mul		x18, x30, x18	# 1987
	add		x18, x4, x18	# 1987
	lw		x18, 0(x18)	# 1987
	fadd	f5, f0, f25	# 1987
	fdiv	f4, f4, f5	# 1987
	mul		x19, x30, x16	# 1671
	addi	x19, x19, 64344	# 1671
	fsw		f1, 0(x19)	# 1671
	mul		x19, x30, x16	# 1672
	addi	x19, x19, 64332	# 1672
	lw		x19, 0(x19)	# 1672
	fsw		f4, -24(x2)	# 1672
	sw		x10, -28(x2)	# 1672
	sw		x13, -32(x2)	# 1672
	sw		x12, -36(x2)	# 1672
	sw		x15, -40(x2)	# 1672
	sw		x9, -44(x2)	# 1672
	fsw		f2, -48(x2)	# 1672
	sw		x11, -52(x2)	# 1672
	fsw		f3, -56(x2)	# 1672
	sw		x17, -60(x2)	# 1672
	sw		x18, -64(x2)	# 1672
	sw		x16, -68(x2)	# 1672
	addi	x6, x18, 0	# 1672
	addi	x5, x19, 0	# 1672
	addi	x4, x16, 0	# 1672
	addi	x29, x8, 0	# 1672
	sw		x1, -72(x2)	# 1672
	addi	x2, x2, -76	# 1672
	lw		x31, 0(x29)	# 1672
	jalr	x1, x31, 0	# 1672
	addi	x2, x2, 76	# 1672
	lw		x1, -72(x2)	# 1672
	lw		x4, -68(x2)	# 1673
	mul		x5, x30, x4	# 1673
	addi	x5, x5, 64344	# 1673
	flw		f1, 0(x5)	# 1673
	fadd	f2, f0, f21	# 1675
	fle		f1, f2, fle.32730	# 125
	fadd	f2, f0, f22	# 1676
	fle		f2, f1, fle.32732	# 125
	addi	x5, x0, 1	# 125
	jal		x0, fle_cont.32729	# 125
fle.32732:
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32729	# 125
fle.32730:
	addi	x5, x0, 0	# 1677
fle_cont.32729:
	beq		x5, x4, fle_cont.32727	# 1964
	mul		x5, x30, x4	# 1965
	addi	x5, x5, 64360	# 1965
	lw		x5, 0(x5)	# 1965
	mul		x5, x30, x5	# 1965
	addi	x5, x5, 63844	# 1965
	lw		x5, 0(x5)	# 1965
	lw		x6, -64(x2)	# 676
	lw		x6, 0(x6)	# 676
	lw		x7, 4(x5)	# 390
	lw		x8, -60(x2)	# 1730
	beq		x7, x8, beq.32736	# 1730
	lw		x6, -16(x2)	# 1732
	beq		x7, x6, beq.32738	# 1732
	mul		x7, x30, x4	# 1707
	addi	x7, x7, 64348	# 1707
	flw		f1, 0(x7)	# 1707
	lw		x7, 20(x5)	# 468
	mul		x9, x30, x4	# 473
	add		x7, x7, x9	# 473
	flw		f2, 0(x7)	# 473
	fsub	f1, f1, f2	# 1707
	mul		x7, x30, x8	# 1708
	addi	x7, x7, 64348	# 1708
	flw		f2, 0(x7)	# 1708
	lw		x7, 20(x5)	# 478
	mul		x9, x30, x8	# 483
	add		x7, x7, x9	# 483
	flw		f3, 0(x7)	# 483
	fsub	f2, f2, f3	# 1708
	mul		x7, x30, x6	# 1709
	addi	x7, x7, 64348	# 1709
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
	beq		x7, x4, beq.32740	# 1715
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
	addi	x7, x7, 64364	# 1720
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
	addi	x7, x7, 64364	# 1721
	fsw		f3, 0(x7)	# 1721
	fmul	f1, f1, f9	# 1722
	fmul	f2, f2, f7	# 1722
	fadd	f1, f1, f2	# 1722
	fmul	f1, f1, f10	# 126
	fadd	f1, f6, f1	# 1722
	mul		x7, x30, x6	# 1722
	addi	x7, x7, 64364	# 1722
	fsw		f1, 0(x7)	# 1722
	jal		x0, beq_cont.32739	# 1715
beq.32740:
	mul		x7, x30, x4	# 1716
	addi	x7, x7, 64364	# 1716
	fsw		f4, 0(x7)	# 1716
	mul		x7, x30, x8	# 1717
	addi	x7, x7, 64364	# 1717
	fsw		f5, 0(x7)	# 1717
	mul		x7, x30, x6	# 1718
	addi	x7, x7, 64364	# 1718
	fsw		f6, 0(x7)	# 1718
beq_cont.32739:
	lw		x7, 24(x5)	# 410
	mul		x9, x30, x4	# 320
	addi	x9, x9, 64364	# 320
	flw		f1, 0(x9)	# 320
	fmul	f1, f1, f1	# 127
	mul		x9, x30, x8	# 320
	addi	x9, x9, 64364	# 320
	flw		f2, 0(x9)	# 320
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 320
	mul		x9, x30, x6	# 320
	addi	x9, x9, 64364	# 320
	flw		f2, 0(x9)	# 320
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 320
	fsqrt	f1, f1	# 320
	flw		f2, -56(x2)	# 120
	feq		f1, f2, feq.32742	# 120
	beq		x7, x4, beq.32744	# 321
	lui		x7, %hi(l.26527)	# 321
	ori		x7, x0, %lo(l.26527)	# 321
	flw		f3, 0(x7)	# 321
	fdiv	f1, f3, f1	# 321
	jal		x0, feq_cont.32741	# 321
beq.32744:
	fadd	f3, f0, f16	# 321
	fdiv	f1, f3, f1	# 321
	jal		x0, feq_cont.32741	# 120
feq.32742:
	fadd	f1, f0, f16	# 321
feq_cont.32741:
	mul		x7, x30, x4	# 322
	addi	x7, x7, 64364	# 322
	flw		f3, 0(x7)	# 322
	fmul	f3, f3, f1	# 322
	mul		x7, x30, x4	# 322
	addi	x7, x7, 64364	# 322
	fsw		f3, 0(x7)	# 322
	mul		x7, x30, x8	# 323
	addi	x7, x7, 64364	# 323
	flw		f3, 0(x7)	# 323
	fmul	f3, f3, f1	# 323
	mul		x7, x30, x8	# 323
	addi	x7, x7, 64364	# 323
	fsw		f3, 0(x7)	# 323
	mul		x7, x30, x6	# 324
	addi	x7, x7, 64364	# 324
	flw		f3, 0(x7)	# 324
	fmul	f1, f3, f1	# 324
	mul		x7, x30, x6	# 324
	addi	x7, x7, 64364	# 324
	fsw		f1, 0(x7)	# 324
	jal		x0, beq_cont.32735	# 1732
beq.32738:
	lw		x7, 16(x5)	# 428
	mul		x9, x30, x4	# 433
	add		x7, x7, x9	# 433
	flw		f1, 0(x7)	# 433
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x4	# 1700
	addi	x7, x7, 64364	# 1700
	fsw		f1, 0(x7)	# 1700
	lw		x7, 16(x5)	# 438
	mul		x9, x30, x8	# 443
	add		x7, x7, x9	# 443
	flw		f1, 0(x7)	# 443
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x8	# 1701
	addi	x7, x7, 64364	# 1701
	fsw		f1, 0(x7)	# 1701
	lw		x7, 16(x5)	# 448
	mul		x9, x30, x6	# 453
	add		x7, x7, x9	# 453
	flw		f1, 0(x7)	# 453
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x6	# 1702
	addi	x7, x7, 64364	# 1702
	fsw		f1, 0(x7)	# 1702
	jal		x0, beq_cont.32735	# 1730
beq.32736:
	mul		x7, x30, x4	# 1691
	addi	x7, x7, 64340	# 1691
	lw		x7, 0(x7)	# 1691
	mul		x9, x30, x4	# 284
	addi	x9, x9, 64364	# 284
	flw		f1, -56(x2)	# 284
	fsw		f1, 0(x9)	# 284
	mul		x9, x30, x8	# 285
	addi	x9, x9, 64364	# 285
	fsw		f1, 0(x9)	# 285
	lw		x9, -16(x2)	# 286
	mul		x10, x30, x9	# 286
	addi	x10, x10, 64364	# 286
	fsw		f1, 0(x10)	# 286
	sub		x7, x7, x8	# 1694
	mul		x10, x30, x7	# 1694
	add		x6, x6, x10	# 1694
	flw		f2, 0(x6)	# 1694
	feq		f2, f1, feq.32746	# 120
	fle		f2, f1, fle.32748	# 121
	fadd	f2, f0, f16	# 250
	jal		x0, feq_cont.32745	# 121
fle.32748:
	lui		x6, %hi(l.26527)	# 251
	ori		x6, x0, %lo(l.26527)	# 251
	flw		f2, 0(x6)	# 251
	jal		x0, feq_cont.32745	# 120
feq.32746:
	fadd	f2, f0, f1	# 249
feq_cont.32745:
	fsub	f2, f0, f2	# 123
	mul		x6, x30, x7	# 1694
	addi	x6, x6, 64364	# 1694
	fsw		f2, 0(x6)	# 1694
beq_cont.32735:
	lw		x6, 0(x5)	# 380
	lw		x7, 32(x5)	# 518
	mul		x9, x30, x4	# 523
	add		x7, x7, x9	# 523
	flw		f1, 0(x7)	# 523
	mul		x7, x30, x4	# 1747
	addi	x7, x7, 64376	# 1747
	fsw		f1, 0(x7)	# 1747
	lw		x7, 32(x5)	# 528
	mul		x9, x30, x8	# 533
	add		x7, x7, x9	# 533
	flw		f1, 0(x7)	# 533
	mul		x7, x30, x8	# 1748
	addi	x7, x7, 64376	# 1748
	fsw		f1, 0(x7)	# 1748
	lw		x7, 32(x5)	# 538
	lw		x9, -16(x2)	# 543
	mul		x10, x30, x9	# 543
	add		x7, x7, x10	# 543
	flw		f1, 0(x7)	# 543
	mul		x7, x30, x9	# 1749
	addi	x7, x7, 64376	# 1749
	fsw		f1, 0(x7)	# 1749
	sw		x5, -72(x2)	# 1750
	beq		x6, x8, beq.32750	# 1750
	beq		x6, x9, beq.32752	# 1768
	lw		x7, -40(x2)	# 1775
	beq		x6, x7, beq.32754	# 1775
	addi	x7, x0, 4	# 1786
	beq		x6, x7, beq.32756	# 1786
	jal		x0, beq_cont.32749	# 1786
beq.32756:
	mul		x6, x30, x4	# 1788
	addi	x6, x6, 64348	# 1788
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
	addi	x6, x6, 64348	# 1789
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
	flw		f4, -56(x2)	# 124
	fle		f1, f4, fle.32758	# 124
	fadd	f5, f0, f1	# 124
	jal		x0, fle_cont.32757	# 124
fle.32758:
	fsub	f5, f0, f1	# 124
fle_cont.32757:
	lui		x6, %hi(l.28006)	# 1792
	ori		x6, x0, %lo(l.28006)	# 1792
	flw		f6, 0(x6)	# 1792
	fsw		f6, -76(x2)	# 125
	fsw		f3, -80(x2)	# 125
	fle		f6, f5, fle.32760	# 125
	lui		x6, %hi(l.28008)	# 1793
	ori		x6, x0, %lo(l.28008)	# 1793
	flw		f1, 0(x6)	# 1793
	jal		x0, fle_cont.32759	# 125
fle.32760:
	fdiv	f1, f2, f1	# 1795
	fle		f1, f4, fle.32762	# 124
	jal		x0, fle_cont.32761	# 124
fle.32762:
	fsub	f1, f0, f1	# 124
fle_cont.32761:
	lw		x29, -32(x2)	# 1797
	sw		x1, -84(x2)	# 1797
	addi	x2, x2, -88	# 1797
	lw		x31, 0(x29)	# 1797
	jalr	x1, x31, 0	# 1797
	addi	x2, x2, 88	# 1797
	lw		x1, -84(x2)	# 1797
	lui		x4, %hi(l.28010)	# 1797
	ori		x4, x0, %lo(l.28010)	# 1797
	flw		f2, 0(x4)	# 1797
	fmul	f1, f1, f2	# 1797
	fadd	f2, f0, f29	# 1797
	fdiv	f1, f1, f2	# 1797
fle_cont.32759:
	fadd	f2, f0, f26	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -68(x2)	# 153
	lw		x29, -52(x2)	# 153
	fsw		f2, -84(x2)	# 153
	fsw		f1, -88(x2)	# 153
	fadd	f1, f0, f3	# 153
	sw		x1, -92(x2)	# 153
	addi	x2, x2, -96	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 96	# 153
	lw		x1, -92(x2)	# 153
	sw		x1, -92(x2)	# 166
	addi	x2, x2, -96	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 96	# 166
	lw		x1, -92(x2)	# 166
	flw		f2, -88(x2)	# 1799
	fsub	f1, f2, f1	# 1799
	lw		x4, -60(x2)	# 1801
	mul		x5, x30, x4	# 1801
	addi	x5, x5, 64348	# 1801
	flw		f2, 0(x5)	# 1801
	lw		x5, -72(x2)	# 478
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
	flw		f3, -56(x2)	# 124
	flw		f4, -80(x2)	# 124
	fle		f4, f3, fle.32764	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.32763	# 124
fle.32764:
	fsub	f5, f0, f4	# 124
fle_cont.32763:
	flw		f6, -76(x2)	# 125
	fsw		f1, -92(x2)	# 125
	fle		f6, f5, fle.32766	# 125
	lui		x6, %hi(l.28008)	# 1804
	ori		x6, x0, %lo(l.28008)	# 1804
	flw		f1, 0(x6)	# 1804
	jal		x0, fle_cont.32765	# 125
fle.32766:
	fdiv	f2, f2, f4	# 1806
	fle		f2, f3, fle.32768	# 124
	jal		x0, fle_cont.32767	# 124
fle.32768:
	fsub	f2, f0, f2	# 124
fle_cont.32767:
	lw		x29, -32(x2)	# 1807
	fadd	f1, f0, f2	# 1807
	sw		x1, -96(x2)	# 1807
	addi	x2, x2, -100	# 1807
	lw		x31, 0(x29)	# 1807
	jalr	x1, x31, 0	# 1807
	addi	x2, x2, 100	# 1807
	lw		x1, -96(x2)	# 1807
	lui		x4, %hi(l.28010)	# 1807
	ori		x4, x0, %lo(l.28010)	# 1807
	flw		f2, 0(x4)	# 1807
	fmul	f1, f1, f2	# 1807
	fadd	f2, f0, f29	# 1807
	fdiv	f1, f1, f2	# 1807
fle_cont.32765:
	flw		f2, -84(x2)	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -68(x2)	# 153
	lw		x29, -52(x2)	# 153
	fsw		f1, -96(x2)	# 153
	fadd	f1, f0, f3	# 153
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
	flw		f2, -96(x2)	# 1809
	fsub	f1, f2, f1	# 1809
	fadd	f2, f0, f30	# 1810
	flw		f3, -92(x2)	# 1810
	flw		f4, -84(x2)	# 1810
	fsub	f3, f4, f3	# 1810
	fmul	f3, f3, f3	# 127
	fsub	f2, f2, f3	# 1810
	fsub	f1, f4, f1	# 1810
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1810
	flw		f2, -56(x2)	# 122
	fle		f2, f1, fle_cont.32769	# 122
	fadd	f1, f0, f2	# 1811
	jal		x0, fle_cont.32769	# 122
fle_cont.32769:
	flw		f3, -48(x2)	# 1812
	fmul	f1, f3, f1	# 1812
	lui		x4, %hi(l.28026)	# 1812
	ori		x4, x0, %lo(l.28026)	# 1812
	flw		f3, 0(x4)	# 1812
	fdiv	f1, f1, f3	# 1812
	lw		x4, -16(x2)	# 1812
	mul		x5, x30, x4	# 1812
	addi	x5, x5, 64376	# 1812
	fsw		f1, 0(x5)	# 1812
	jal		x0, beq_cont.32749	# 1775
beq.32754:
	mul		x6, x30, x4	# 1778
	addi	x6, x6, 64348	# 1778
	flw		f1, 0(x6)	# 1778
	lw		x6, 20(x5)	# 468
	mul		x7, x30, x4	# 473
	add		x6, x6, x7	# 473
	flw		f2, 0(x6)	# 473
	fsub	f1, f1, f2	# 1778
	mul		x6, x30, x9	# 1779
	addi	x6, x6, 64348	# 1779
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
	lui		x6, %hi(l.28038)	# 1780
	ori		x6, x0, %lo(l.28038)	# 1780
	flw		f2, 0(x6)	# 1780
	fdiv	f1, f1, f2	# 1780
	fadd	f2, f0, f26	# 166
	fsub	f2, f1, f2	# 166
	lw		x29, -52(x2)	# 153
	fsw		f1, -100(x2)	# 153
	fadd	f1, f0, f2	# 153
	sw		x1, -104(x2)	# 153
	addi	x2, x2, -108	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 108	# 153
	lw		x1, -104(x2)	# 153
	sw		x1, -104(x2)	# 166
	addi	x2, x2, -108	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 108	# 166
	lw		x1, -104(x2)	# 166
	flw		f2, -100(x2)	# 1781
	fsub	f1, f2, f1	# 1781
	fadd	f2, f0, f29	# 1781
	fmul	f1, f1, f2	# 1781
	lw		x29, -36(x2)	# 1782
	sw		x1, -104(x2)	# 1782
	addi	x2, x2, -108	# 1782
	lw		x31, 0(x29)	# 1782
	jalr	x1, x31, 0	# 1782
	addi	x2, x2, 108	# 1782
	lw		x1, -104(x2)	# 1782
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1783
	fmul	f3, f1, f2	# 1783
	lw		x4, -60(x2)	# 1783
	mul		x5, x30, x4	# 1783
	addi	x5, x5, 64376	# 1783
	fsw		f3, 0(x5)	# 1783
	fadd	f3, f0, f16	# 1784
	fsub	f1, f3, f1	# 1784
	fmul	f1, f1, f2	# 1784
	lw		x5, -16(x2)	# 1784
	mul		x6, x30, x5	# 1784
	addi	x6, x6, 64376	# 1784
	fsw		f1, 0(x6)	# 1784
	jal		x0, beq_cont.32749	# 1768
beq.32752:
	mul		x6, x30, x8	# 1771
	addi	x6, x6, 64348	# 1771
	flw		f1, 0(x6)	# 1771
	lui		x6, %hi(l.28049)	# 1771
	ori		x6, x0, %lo(l.28049)	# 1771
	flw		f2, 0(x6)	# 1771
	fmul	f1, f1, f2	# 1771
	lw		x29, -44(x2)	# 1771
	sw		x1, -104(x2)	# 1771
	addi	x2, x2, -108	# 1771
	lw		x31, 0(x29)	# 1771
	jalr	x1, x31, 0	# 1771
	addi	x2, x2, 108	# 1771
	lw		x1, -104(x2)	# 1771
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1772
	fmul	f3, f2, f1	# 1772
	lw		x4, -68(x2)	# 1772
	mul		x5, x30, x4	# 1772
	addi	x5, x5, 64376	# 1772
	fsw		f3, 0(x5)	# 1772
	fadd	f3, f0, f16	# 1773
	fsub	f1, f3, f1	# 1773
	fmul	f1, f2, f1	# 1773
	lw		x5, -60(x2)	# 1773
	mul		x6, x30, x5	# 1773
	addi	x6, x6, 64376	# 1773
	fsw		f1, 0(x6)	# 1773
	jal		x0, beq_cont.32749	# 1750
beq.32750:
	mul		x6, x30, x4	# 1753
	addi	x6, x6, 64348	# 1753
	flw		f1, 0(x6)	# 1753
	lw		x6, 20(x5)	# 468
	mul		x7, x30, x4	# 473
	add		x6, x6, x7	# 473
	flw		f2, 0(x6)	# 473
	fsub	f1, f1, f2	# 1753
	lui		x6, %hi(l.28060)	# 1755
	ori		x6, x0, %lo(l.28060)	# 1755
	flw		f2, 0(x6)	# 1755
	fmul	f3, f1, f2	# 1755
	fadd	f4, f0, f26	# 166
	fsub	f3, f3, f4	# 166
	lw		x29, -52(x2)	# 153
	fsw		f4, -104(x2)	# 153
	fsw		f2, -108(x2)	# 153
	fsw		f1, -112(x2)	# 153
	fadd	f1, f0, f3	# 153
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
	lui		x4, %hi(l.28063)	# 1755
	ori		x4, x0, %lo(l.28063)	# 1755
	flw		f2, 0(x4)	# 1755
	fmul	f1, f1, f2	# 1755
	flw		f3, -112(x2)	# 1756
	fsub	f1, f3, f1	# 1756
	lui		x4, %hi(l.28038)	# 1756
	ori		x4, x0, %lo(l.28038)	# 1756
	flw		f3, 0(x4)	# 1756
	lw		x4, -16(x2)	# 1758
	mul		x5, x30, x4	# 1758
	addi	x5, x5, 64348	# 1758
	flw		f4, 0(x5)	# 1758
	lw		x5, -72(x2)	# 488
	lw		x6, 20(x5)	# 488
	mul		x7, x30, x4	# 493
	add		x6, x6, x7	# 493
	flw		f5, 0(x6)	# 493
	fsub	f4, f4, f5	# 1758
	flw		f5, -108(x2)	# 1760
	fmul	f5, f4, f5	# 1760
	flw		f6, -104(x2)	# 166
	fsub	f5, f5, f6	# 166
	lw		x6, -68(x2)	# 153
	lw		x29, -52(x2)	# 153
	fsw		f1, -116(x2)	# 153
	fsw		f3, -120(x2)	# 153
	fsw		f4, -124(x2)	# 153
	fsw		f2, -128(x2)	# 153
	addi	x4, x6, 0	# 153
	fadd	f1, f0, f5	# 153
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
	flw		f2, -128(x2)	# 1760
	fmul	f1, f1, f2	# 1760
	flw		f2, -124(x2)	# 1761
	fsub	f1, f2, f1	# 1761
	flw		f2, -116(x2)	# 125
	flw		f3, -120(x2)	# 125
	fle		f3, f2, fle.32772	# 125
	fle		f3, f1, fle.32774	# 125
	flw		f1, -48(x2)	# 1765
	jal		x0, fle_cont.32771	# 125
fle.32774:
	flw		f1, -56(x2)	# 1765
	jal		x0, fle_cont.32771	# 125
fle.32772:
	fle		f3, f1, fle.32776	# 125
	flw		f1, -56(x2)	# 1766
	jal		x0, fle_cont.32771	# 125
fle.32776:
	flw		f1, -48(x2)	# 1766
fle_cont.32771:
	lw		x4, -60(x2)	# 1763
	mul		x5, x30, x4	# 1763
	addi	x5, x5, 64376	# 1763
	fsw		f1, 0(x5)	# 1763
beq_cont.32749:
	lw		x4, -68(x2)	# 1970
	mul		x5, x30, x4	# 1970
	addi	x5, x5, 64332	# 1970
	lw		x5, 0(x5)	# 1970
	lw		x29, -28(x2)	# 1970
	sw		x1, -132(x2)	# 1970
	addi	x2, x2, -136	# 1970
	lw		x31, 0(x29)	# 1970
	jalr	x1, x31, 0	# 1970
	addi	x2, x2, 136	# 1970
	lw		x1, -132(x2)	# 1970
	lw		x5, -68(x2)	# 1970
	beq		x4, x5, beq.32778	# 1970
	jal		x0, fle_cont.32727	# 1970
beq.32778:
	mul		x4, x30, x5	# 329
	addi	x4, x4, 64364	# 329
	flw		f1, 0(x4)	# 329
	mul		x4, x30, x5	# 329
	addi	x4, x4, 64108	# 329
	flw		f2, 0(x4)	# 329
	fmul	f1, f1, f2	# 329
	lw		x4, -60(x2)	# 329
	mul		x6, x30, x4	# 329
	addi	x6, x6, 64364	# 329
	flw		f2, 0(x6)	# 329
	mul		x6, x30, x4	# 329
	addi	x6, x6, 64108	# 329
	flw		f3, 0(x6)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	lw		x6, -16(x2)	# 329
	mul		x7, x30, x6	# 329
	addi	x7, x7, 64364	# 329
	flw		f2, 0(x7)	# 329
	mul		x7, x30, x6	# 329
	addi	x7, x7, 64108	# 329
	flw		f3, 0(x7)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	fsub	f1, f0, f1	# 123
	flw		f2, -56(x2)	# 121
	fle		f1, f2, fle.32780	# 121
	jal		x0, fle_cont.32779	# 121
fle.32780:
	fadd	f1, f0, f2	# 1972
fle_cont.32779:
	flw		f2, -24(x2)	# 1973
	fmul	f1, f2, f1	# 1973
	lw		x7, -72(x2)	# 498
	lw		x7, 28(x7)	# 498
	mul		x8, x30, x5	# 503
	add		x7, x7, x8	# 503
	flw		f2, 0(x7)	# 503
	fmul	f1, f1, f2	# 1973
	mul		x7, x30, x5	# 339
	addi	x7, x7, 64388	# 339
	flw		f2, 0(x7)	# 339
	mul		x7, x30, x5	# 339
	addi	x7, x7, 64376	# 339
	flw		f3, 0(x7)	# 339
	fmul	f3, f1, f3	# 339
	fadd	f2, f2, f3	# 339
	mul		x5, x30, x5	# 339
	addi	x5, x5, 64388	# 339
	fsw		f2, 0(x5)	# 339
	mul		x5, x30, x4	# 340
	addi	x5, x5, 64388	# 340
	flw		f2, 0(x5)	# 340
	mul		x5, x30, x4	# 340
	addi	x5, x5, 64376	# 340
	flw		f3, 0(x5)	# 340
	fmul	f3, f1, f3	# 340
	fadd	f2, f2, f3	# 340
	mul		x4, x30, x4	# 340
	addi	x4, x4, 64388	# 340
	fsw		f2, 0(x4)	# 340
	mul		x4, x30, x6	# 341
	addi	x4, x4, 64388	# 341
	flw		f2, 0(x4)	# 341
	mul		x4, x30, x6	# 341
	addi	x4, x4, 64376	# 341
	flw		f3, 0(x4)	# 341
	fmul	f1, f1, f3	# 341
	fadd	f1, f2, f1	# 341
	mul		x4, x30, x6	# 341
	addi	x4, x4, 64388	# 341
	fsw		f1, 0(x4)	# 341
	jal		x0, fle_cont.32727	# 1964
	jal		x0, fle_cont.32727	# 122
fle.32728:
	fadd	f5, f0, f24	# 1989
	fdiv	f4, f4, f5	# 1989
	mul		x19, x30, x16	# 1671
	addi	x19, x19, 64344	# 1671
	fsw		f1, 0(x19)	# 1671
	mul		x19, x30, x16	# 1672
	addi	x19, x19, 64332	# 1672
	lw		x19, 0(x19)	# 1672
	fsw		f4, -132(x2)	# 1672
	sw		x10, -28(x2)	# 1672
	sw		x13, -32(x2)	# 1672
	sw		x12, -36(x2)	# 1672
	sw		x15, -40(x2)	# 1672
	sw		x9, -44(x2)	# 1672
	fsw		f2, -48(x2)	# 1672
	sw		x11, -52(x2)	# 1672
	fsw		f3, -56(x2)	# 1672
	sw		x17, -60(x2)	# 1672
	sw		x18, -136(x2)	# 1672
	sw		x16, -68(x2)	# 1672
	addi	x6, x18, 0	# 1672
	addi	x5, x19, 0	# 1672
	addi	x4, x16, 0	# 1672
	addi	x29, x8, 0	# 1672
	sw		x1, -140(x2)	# 1672
	addi	x2, x2, -144	# 1672
	lw		x31, 0(x29)	# 1672
	jalr	x1, x31, 0	# 1672
	addi	x2, x2, 144	# 1672
	lw		x1, -140(x2)	# 1672
	lw		x4, -68(x2)	# 1673
	mul		x5, x30, x4	# 1673
	addi	x5, x5, 64344	# 1673
	flw		f1, 0(x5)	# 1673
	fadd	f2, f0, f21	# 1675
	fle		f1, f2, fle.32782	# 125
	fadd	f2, f0, f22	# 1676
	fle		f2, f1, fle.32784	# 125
	addi	x5, x0, 1	# 125
	jal		x0, fle_cont.32781	# 125
fle.32784:
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32781	# 125
fle.32782:
	addi	x5, x0, 0	# 1677
fle_cont.32781:
	beq		x5, x4, fle_cont.32727	# 1964
	mul		x5, x30, x4	# 1965
	addi	x5, x5, 64360	# 1965
	lw		x5, 0(x5)	# 1965
	mul		x5, x30, x5	# 1965
	addi	x5, x5, 63844	# 1965
	lw		x5, 0(x5)	# 1965
	lw		x6, -136(x2)	# 676
	lw		x6, 0(x6)	# 676
	lw		x7, 4(x5)	# 390
	lw		x8, -60(x2)	# 1730
	beq		x7, x8, beq.32788	# 1730
	lw		x6, -16(x2)	# 1732
	beq		x7, x6, beq.32790	# 1732
	mul		x7, x30, x4	# 1707
	addi	x7, x7, 64348	# 1707
	flw		f1, 0(x7)	# 1707
	lw		x7, 20(x5)	# 468
	mul		x9, x30, x4	# 473
	add		x7, x7, x9	# 473
	flw		f2, 0(x7)	# 473
	fsub	f1, f1, f2	# 1707
	mul		x7, x30, x8	# 1708
	addi	x7, x7, 64348	# 1708
	flw		f2, 0(x7)	# 1708
	lw		x7, 20(x5)	# 478
	mul		x9, x30, x8	# 483
	add		x7, x7, x9	# 483
	flw		f3, 0(x7)	# 483
	fsub	f2, f2, f3	# 1708
	mul		x7, x30, x6	# 1709
	addi	x7, x7, 64348	# 1709
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
	beq		x7, x4, beq.32792	# 1715
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
	addi	x7, x7, 64364	# 1720
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
	addi	x7, x7, 64364	# 1721
	fsw		f3, 0(x7)	# 1721
	fmul	f1, f1, f9	# 1722
	fmul	f2, f2, f7	# 1722
	fadd	f1, f1, f2	# 1722
	fmul	f1, f1, f10	# 126
	fadd	f1, f6, f1	# 1722
	mul		x7, x30, x6	# 1722
	addi	x7, x7, 64364	# 1722
	fsw		f1, 0(x7)	# 1722
	jal		x0, beq_cont.32791	# 1715
beq.32792:
	mul		x7, x30, x4	# 1716
	addi	x7, x7, 64364	# 1716
	fsw		f4, 0(x7)	# 1716
	mul		x7, x30, x8	# 1717
	addi	x7, x7, 64364	# 1717
	fsw		f5, 0(x7)	# 1717
	mul		x7, x30, x6	# 1718
	addi	x7, x7, 64364	# 1718
	fsw		f6, 0(x7)	# 1718
beq_cont.32791:
	lw		x7, 24(x5)	# 410
	mul		x9, x30, x4	# 320
	addi	x9, x9, 64364	# 320
	flw		f1, 0(x9)	# 320
	fmul	f1, f1, f1	# 127
	mul		x9, x30, x8	# 320
	addi	x9, x9, 64364	# 320
	flw		f2, 0(x9)	# 320
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 320
	mul		x9, x30, x6	# 320
	addi	x9, x9, 64364	# 320
	flw		f2, 0(x9)	# 320
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 320
	fsqrt	f1, f1	# 320
	flw		f2, -56(x2)	# 120
	feq		f1, f2, feq.32794	# 120
	beq		x7, x4, beq.32796	# 321
	lui		x7, %hi(l.26527)	# 321
	ori		x7, x0, %lo(l.26527)	# 321
	flw		f3, 0(x7)	# 321
	fdiv	f1, f3, f1	# 321
	jal		x0, feq_cont.32793	# 321
beq.32796:
	fadd	f3, f0, f16	# 321
	fdiv	f1, f3, f1	# 321
	jal		x0, feq_cont.32793	# 120
feq.32794:
	fadd	f1, f0, f16	# 321
feq_cont.32793:
	mul		x7, x30, x4	# 322
	addi	x7, x7, 64364	# 322
	flw		f3, 0(x7)	# 322
	fmul	f3, f3, f1	# 322
	mul		x7, x30, x4	# 322
	addi	x7, x7, 64364	# 322
	fsw		f3, 0(x7)	# 322
	mul		x7, x30, x8	# 323
	addi	x7, x7, 64364	# 323
	flw		f3, 0(x7)	# 323
	fmul	f3, f3, f1	# 323
	mul		x7, x30, x8	# 323
	addi	x7, x7, 64364	# 323
	fsw		f3, 0(x7)	# 323
	mul		x7, x30, x6	# 324
	addi	x7, x7, 64364	# 324
	flw		f3, 0(x7)	# 324
	fmul	f1, f3, f1	# 324
	mul		x7, x30, x6	# 324
	addi	x7, x7, 64364	# 324
	fsw		f1, 0(x7)	# 324
	jal		x0, beq_cont.32787	# 1732
beq.32790:
	lw		x7, 16(x5)	# 428
	mul		x9, x30, x4	# 433
	add		x7, x7, x9	# 433
	flw		f1, 0(x7)	# 433
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x4	# 1700
	addi	x7, x7, 64364	# 1700
	fsw		f1, 0(x7)	# 1700
	lw		x7, 16(x5)	# 438
	mul		x9, x30, x8	# 443
	add		x7, x7, x9	# 443
	flw		f1, 0(x7)	# 443
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x8	# 1701
	addi	x7, x7, 64364	# 1701
	fsw		f1, 0(x7)	# 1701
	lw		x7, 16(x5)	# 448
	mul		x9, x30, x6	# 453
	add		x7, x7, x9	# 453
	flw		f1, 0(x7)	# 453
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x6	# 1702
	addi	x7, x7, 64364	# 1702
	fsw		f1, 0(x7)	# 1702
	jal		x0, beq_cont.32787	# 1730
beq.32788:
	mul		x7, x30, x4	# 1691
	addi	x7, x7, 64340	# 1691
	lw		x7, 0(x7)	# 1691
	mul		x9, x30, x4	# 284
	addi	x9, x9, 64364	# 284
	flw		f1, -56(x2)	# 284
	fsw		f1, 0(x9)	# 284
	mul		x9, x30, x8	# 285
	addi	x9, x9, 64364	# 285
	fsw		f1, 0(x9)	# 285
	lw		x9, -16(x2)	# 286
	mul		x10, x30, x9	# 286
	addi	x10, x10, 64364	# 286
	fsw		f1, 0(x10)	# 286
	sub		x7, x7, x8	# 1694
	mul		x10, x30, x7	# 1694
	add		x6, x6, x10	# 1694
	flw		f2, 0(x6)	# 1694
	feq		f2, f1, feq.32798	# 120
	fle		f2, f1, fle.32800	# 121
	fadd	f2, f0, f16	# 250
	jal		x0, feq_cont.32797	# 121
fle.32800:
	lui		x6, %hi(l.26527)	# 251
	ori		x6, x0, %lo(l.26527)	# 251
	flw		f2, 0(x6)	# 251
	jal		x0, feq_cont.32797	# 120
feq.32798:
	fadd	f2, f0, f1	# 249
feq_cont.32797:
	fsub	f2, f0, f2	# 123
	mul		x6, x30, x7	# 1694
	addi	x6, x6, 64364	# 1694
	fsw		f2, 0(x6)	# 1694
beq_cont.32787:
	lw		x6, 0(x5)	# 380
	lw		x7, 32(x5)	# 518
	mul		x9, x30, x4	# 523
	add		x7, x7, x9	# 523
	flw		f1, 0(x7)	# 523
	mul		x7, x30, x4	# 1747
	addi	x7, x7, 64376	# 1747
	fsw		f1, 0(x7)	# 1747
	lw		x7, 32(x5)	# 528
	mul		x9, x30, x8	# 533
	add		x7, x7, x9	# 533
	flw		f1, 0(x7)	# 533
	mul		x7, x30, x8	# 1748
	addi	x7, x7, 64376	# 1748
	fsw		f1, 0(x7)	# 1748
	lw		x7, 32(x5)	# 538
	lw		x9, -16(x2)	# 543
	mul		x10, x30, x9	# 543
	add		x7, x7, x10	# 543
	flw		f1, 0(x7)	# 543
	mul		x7, x30, x9	# 1749
	addi	x7, x7, 64376	# 1749
	fsw		f1, 0(x7)	# 1749
	sw		x5, -140(x2)	# 1750
	beq		x6, x8, beq.32802	# 1750
	beq		x6, x9, beq.32804	# 1768
	lw		x7, -40(x2)	# 1775
	beq		x6, x7, beq.32806	# 1775
	addi	x7, x0, 4	# 1786
	beq		x6, x7, beq.32808	# 1786
	jal		x0, beq_cont.32801	# 1786
beq.32808:
	mul		x6, x30, x4	# 1788
	addi	x6, x6, 64348	# 1788
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
	addi	x6, x6, 64348	# 1789
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
	flw		f4, -56(x2)	# 124
	fle		f1, f4, fle.32810	# 124
	fadd	f5, f0, f1	# 124
	jal		x0, fle_cont.32809	# 124
fle.32810:
	fsub	f5, f0, f1	# 124
fle_cont.32809:
	lui		x6, %hi(l.28006)	# 1792
	ori		x6, x0, %lo(l.28006)	# 1792
	flw		f6, 0(x6)	# 1792
	fsw		f6, -144(x2)	# 125
	fsw		f3, -148(x2)	# 125
	fle		f6, f5, fle.32812	# 125
	lui		x6, %hi(l.28008)	# 1793
	ori		x6, x0, %lo(l.28008)	# 1793
	flw		f1, 0(x6)	# 1793
	jal		x0, fle_cont.32811	# 125
fle.32812:
	fdiv	f1, f2, f1	# 1795
	fle		f1, f4, fle.32814	# 124
	jal		x0, fle_cont.32813	# 124
fle.32814:
	fsub	f1, f0, f1	# 124
fle_cont.32813:
	lw		x29, -32(x2)	# 1797
	sw		x1, -152(x2)	# 1797
	addi	x2, x2, -156	# 1797
	lw		x31, 0(x29)	# 1797
	jalr	x1, x31, 0	# 1797
	addi	x2, x2, 156	# 1797
	lw		x1, -152(x2)	# 1797
	lui		x4, %hi(l.28010)	# 1797
	ori		x4, x0, %lo(l.28010)	# 1797
	flw		f2, 0(x4)	# 1797
	fmul	f1, f1, f2	# 1797
	fadd	f2, f0, f29	# 1797
	fdiv	f1, f1, f2	# 1797
fle_cont.32811:
	fadd	f2, f0, f26	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -68(x2)	# 153
	lw		x29, -52(x2)	# 153
	fsw		f2, -152(x2)	# 153
	fsw		f1, -156(x2)	# 153
	fadd	f1, f0, f3	# 153
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
	flw		f2, -156(x2)	# 1799
	fsub	f1, f2, f1	# 1799
	lw		x4, -60(x2)	# 1801
	mul		x5, x30, x4	# 1801
	addi	x5, x5, 64348	# 1801
	flw		f2, 0(x5)	# 1801
	lw		x5, -140(x2)	# 478
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
	flw		f3, -56(x2)	# 124
	flw		f4, -148(x2)	# 124
	fle		f4, f3, fle.32816	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.32815	# 124
fle.32816:
	fsub	f5, f0, f4	# 124
fle_cont.32815:
	flw		f6, -144(x2)	# 125
	fsw		f1, -160(x2)	# 125
	fle		f6, f5, fle.32818	# 125
	lui		x6, %hi(l.28008)	# 1804
	ori		x6, x0, %lo(l.28008)	# 1804
	flw		f1, 0(x6)	# 1804
	jal		x0, fle_cont.32817	# 125
fle.32818:
	fdiv	f2, f2, f4	# 1806
	fle		f2, f3, fle.32820	# 124
	jal		x0, fle_cont.32819	# 124
fle.32820:
	fsub	f2, f0, f2	# 124
fle_cont.32819:
	lw		x29, -32(x2)	# 1807
	fadd	f1, f0, f2	# 1807
	sw		x1, -164(x2)	# 1807
	addi	x2, x2, -168	# 1807
	lw		x31, 0(x29)	# 1807
	jalr	x1, x31, 0	# 1807
	addi	x2, x2, 168	# 1807
	lw		x1, -164(x2)	# 1807
	lui		x4, %hi(l.28010)	# 1807
	ori		x4, x0, %lo(l.28010)	# 1807
	flw		f2, 0(x4)	# 1807
	fmul	f1, f1, f2	# 1807
	fadd	f2, f0, f29	# 1807
	fdiv	f1, f1, f2	# 1807
fle_cont.32817:
	flw		f2, -152(x2)	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -68(x2)	# 153
	lw		x29, -52(x2)	# 153
	fsw		f1, -164(x2)	# 153
	fadd	f1, f0, f3	# 153
	sw		x1, -168(x2)	# 153
	addi	x2, x2, -172	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 172	# 153
	lw		x1, -168(x2)	# 153
	sw		x1, -168(x2)	# 166
	addi	x2, x2, -172	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 172	# 166
	lw		x1, -168(x2)	# 166
	flw		f2, -164(x2)	# 1809
	fsub	f1, f2, f1	# 1809
	fadd	f2, f0, f30	# 1810
	flw		f3, -160(x2)	# 1810
	flw		f4, -152(x2)	# 1810
	fsub	f3, f4, f3	# 1810
	fmul	f3, f3, f3	# 127
	fsub	f2, f2, f3	# 1810
	fsub	f1, f4, f1	# 1810
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1810
	flw		f2, -56(x2)	# 122
	fle		f2, f1, fle_cont.32821	# 122
	fadd	f1, f0, f2	# 1811
	jal		x0, fle_cont.32821	# 122
fle_cont.32821:
	flw		f3, -48(x2)	# 1812
	fmul	f1, f3, f1	# 1812
	lui		x4, %hi(l.28026)	# 1812
	ori		x4, x0, %lo(l.28026)	# 1812
	flw		f3, 0(x4)	# 1812
	fdiv	f1, f1, f3	# 1812
	lw		x4, -16(x2)	# 1812
	mul		x5, x30, x4	# 1812
	addi	x5, x5, 64376	# 1812
	fsw		f1, 0(x5)	# 1812
	jal		x0, beq_cont.32801	# 1775
beq.32806:
	mul		x6, x30, x4	# 1778
	addi	x6, x6, 64348	# 1778
	flw		f1, 0(x6)	# 1778
	lw		x6, 20(x5)	# 468
	mul		x7, x30, x4	# 473
	add		x6, x6, x7	# 473
	flw		f2, 0(x6)	# 473
	fsub	f1, f1, f2	# 1778
	mul		x6, x30, x9	# 1779
	addi	x6, x6, 64348	# 1779
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
	lui		x6, %hi(l.28038)	# 1780
	ori		x6, x0, %lo(l.28038)	# 1780
	flw		f2, 0(x6)	# 1780
	fdiv	f1, f1, f2	# 1780
	fadd	f2, f0, f26	# 166
	fsub	f2, f1, f2	# 166
	lw		x29, -52(x2)	# 153
	fsw		f1, -168(x2)	# 153
	fadd	f1, f0, f2	# 153
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
	flw		f2, -168(x2)	# 1781
	fsub	f1, f2, f1	# 1781
	fadd	f2, f0, f29	# 1781
	fmul	f1, f1, f2	# 1781
	lw		x29, -36(x2)	# 1782
	sw		x1, -172(x2)	# 1782
	addi	x2, x2, -176	# 1782
	lw		x31, 0(x29)	# 1782
	jalr	x1, x31, 0	# 1782
	addi	x2, x2, 176	# 1782
	lw		x1, -172(x2)	# 1782
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1783
	fmul	f3, f1, f2	# 1783
	lw		x4, -60(x2)	# 1783
	mul		x5, x30, x4	# 1783
	addi	x5, x5, 64376	# 1783
	fsw		f3, 0(x5)	# 1783
	fadd	f3, f0, f16	# 1784
	fsub	f1, f3, f1	# 1784
	fmul	f1, f1, f2	# 1784
	lw		x5, -16(x2)	# 1784
	mul		x6, x30, x5	# 1784
	addi	x6, x6, 64376	# 1784
	fsw		f1, 0(x6)	# 1784
	jal		x0, beq_cont.32801	# 1768
beq.32804:
	mul		x6, x30, x8	# 1771
	addi	x6, x6, 64348	# 1771
	flw		f1, 0(x6)	# 1771
	lui		x6, %hi(l.28049)	# 1771
	ori		x6, x0, %lo(l.28049)	# 1771
	flw		f2, 0(x6)	# 1771
	fmul	f1, f1, f2	# 1771
	lw		x29, -44(x2)	# 1771
	sw		x1, -172(x2)	# 1771
	addi	x2, x2, -176	# 1771
	lw		x31, 0(x29)	# 1771
	jalr	x1, x31, 0	# 1771
	addi	x2, x2, 176	# 1771
	lw		x1, -172(x2)	# 1771
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1772
	fmul	f3, f2, f1	# 1772
	lw		x4, -68(x2)	# 1772
	mul		x5, x30, x4	# 1772
	addi	x5, x5, 64376	# 1772
	fsw		f3, 0(x5)	# 1772
	fadd	f3, f0, f16	# 1773
	fsub	f1, f3, f1	# 1773
	fmul	f1, f2, f1	# 1773
	lw		x5, -60(x2)	# 1773
	mul		x6, x30, x5	# 1773
	addi	x6, x6, 64376	# 1773
	fsw		f1, 0(x6)	# 1773
	jal		x0, beq_cont.32801	# 1750
beq.32802:
	mul		x6, x30, x4	# 1753
	addi	x6, x6, 64348	# 1753
	flw		f1, 0(x6)	# 1753
	lw		x6, 20(x5)	# 468
	mul		x7, x30, x4	# 473
	add		x6, x6, x7	# 473
	flw		f2, 0(x6)	# 473
	fsub	f1, f1, f2	# 1753
	lui		x6, %hi(l.28060)	# 1755
	ori		x6, x0, %lo(l.28060)	# 1755
	flw		f2, 0(x6)	# 1755
	fmul	f3, f1, f2	# 1755
	fadd	f4, f0, f26	# 166
	fsub	f3, f3, f4	# 166
	lw		x29, -52(x2)	# 153
	fsw		f4, -172(x2)	# 153
	fsw		f2, -176(x2)	# 153
	fsw		f1, -180(x2)	# 153
	fadd	f1, f0, f3	# 153
	sw		x1, -184(x2)	# 153
	addi	x2, x2, -188	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 188	# 153
	lw		x1, -184(x2)	# 153
	sw		x1, -184(x2)	# 166
	addi	x2, x2, -188	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 188	# 166
	lw		x1, -184(x2)	# 166
	lui		x4, %hi(l.28063)	# 1755
	ori		x4, x0, %lo(l.28063)	# 1755
	flw		f2, 0(x4)	# 1755
	fmul	f1, f1, f2	# 1755
	flw		f3, -180(x2)	# 1756
	fsub	f1, f3, f1	# 1756
	lui		x4, %hi(l.28038)	# 1756
	ori		x4, x0, %lo(l.28038)	# 1756
	flw		f3, 0(x4)	# 1756
	lw		x4, -16(x2)	# 1758
	mul		x5, x30, x4	# 1758
	addi	x5, x5, 64348	# 1758
	flw		f4, 0(x5)	# 1758
	lw		x5, -140(x2)	# 488
	lw		x6, 20(x5)	# 488
	mul		x7, x30, x4	# 493
	add		x6, x6, x7	# 493
	flw		f5, 0(x6)	# 493
	fsub	f4, f4, f5	# 1758
	flw		f5, -176(x2)	# 1760
	fmul	f5, f4, f5	# 1760
	flw		f6, -172(x2)	# 166
	fsub	f5, f5, f6	# 166
	lw		x6, -68(x2)	# 153
	lw		x29, -52(x2)	# 153
	fsw		f1, -184(x2)	# 153
	fsw		f3, -188(x2)	# 153
	fsw		f4, -192(x2)	# 153
	fsw		f2, -196(x2)	# 153
	addi	x4, x6, 0	# 153
	fadd	f1, f0, f5	# 153
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
	flw		f2, -196(x2)	# 1760
	fmul	f1, f1, f2	# 1760
	flw		f2, -192(x2)	# 1761
	fsub	f1, f2, f1	# 1761
	flw		f2, -184(x2)	# 125
	flw		f3, -188(x2)	# 125
	fle		f3, f2, fle.32824	# 125
	fle		f3, f1, fle.32826	# 125
	flw		f1, -48(x2)	# 1765
	jal		x0, fle_cont.32823	# 125
fle.32826:
	flw		f1, -56(x2)	# 1765
	jal		x0, fle_cont.32823	# 125
fle.32824:
	fle		f3, f1, fle.32828	# 125
	flw		f1, -56(x2)	# 1766
	jal		x0, fle_cont.32823	# 125
fle.32828:
	flw		f1, -48(x2)	# 1766
fle_cont.32823:
	lw		x4, -60(x2)	# 1763
	mul		x5, x30, x4	# 1763
	addi	x5, x5, 64376	# 1763
	fsw		f1, 0(x5)	# 1763
beq_cont.32801:
	lw		x4, -68(x2)	# 1970
	mul		x5, x30, x4	# 1970
	addi	x5, x5, 64332	# 1970
	lw		x5, 0(x5)	# 1970
	lw		x29, -28(x2)	# 1970
	sw		x1, -200(x2)	# 1970
	addi	x2, x2, -204	# 1970
	lw		x31, 0(x29)	# 1970
	jalr	x1, x31, 0	# 1970
	addi	x2, x2, 204	# 1970
	lw		x1, -200(x2)	# 1970
	lw		x5, -68(x2)	# 1970
	beq		x4, x5, beq.32830	# 1970
	jal		x0, fle_cont.32727	# 1970
beq.32830:
	mul		x4, x30, x5	# 329
	addi	x4, x4, 64364	# 329
	flw		f1, 0(x4)	# 329
	mul		x4, x30, x5	# 329
	addi	x4, x4, 64108	# 329
	flw		f2, 0(x4)	# 329
	fmul	f1, f1, f2	# 329
	lw		x4, -60(x2)	# 329
	mul		x6, x30, x4	# 329
	addi	x6, x6, 64364	# 329
	flw		f2, 0(x6)	# 329
	mul		x6, x30, x4	# 329
	addi	x6, x6, 64108	# 329
	flw		f3, 0(x6)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	lw		x6, -16(x2)	# 329
	mul		x7, x30, x6	# 329
	addi	x7, x7, 64364	# 329
	flw		f2, 0(x7)	# 329
	mul		x7, x30, x6	# 329
	addi	x7, x7, 64108	# 329
	flw		f3, 0(x7)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	fsub	f1, f0, f1	# 123
	flw		f2, -56(x2)	# 121
	fle		f1, f2, fle.32832	# 121
	jal		x0, fle_cont.32831	# 121
fle.32832:
	fadd	f1, f0, f2	# 1972
fle_cont.32831:
	flw		f2, -132(x2)	# 1973
	fmul	f1, f2, f1	# 1973
	lw		x7, -140(x2)	# 498
	lw		x7, 28(x7)	# 498
	mul		x8, x30, x5	# 503
	add		x7, x7, x8	# 503
	flw		f2, 0(x7)	# 503
	fmul	f1, f1, f2	# 1973
	mul		x7, x30, x5	# 339
	addi	x7, x7, 64388	# 339
	flw		f2, 0(x7)	# 339
	mul		x7, x30, x5	# 339
	addi	x7, x7, 64376	# 339
	flw		f3, 0(x7)	# 339
	fmul	f3, f1, f3	# 339
	fadd	f2, f2, f3	# 339
	mul		x5, x30, x5	# 339
	addi	x5, x5, 64388	# 339
	fsw		f2, 0(x5)	# 339
	mul		x5, x30, x4	# 340
	addi	x5, x5, 64388	# 340
	flw		f2, 0(x5)	# 340
	mul		x5, x30, x4	# 340
	addi	x5, x5, 64376	# 340
	flw		f3, 0(x5)	# 340
	fmul	f3, f1, f3	# 340
	fadd	f2, f2, f3	# 340
	mul		x4, x30, x4	# 340
	addi	x4, x4, 64388	# 340
	fsw		f2, 0(x4)	# 340
	mul		x4, x30, x6	# 341
	addi	x4, x4, 64388	# 341
	flw		f2, 0(x4)	# 341
	mul		x4, x30, x6	# 341
	addi	x4, x4, 64376	# 341
	flw		f3, 0(x4)	# 341
	fmul	f1, f1, f3	# 341
	fadd	f1, f2, f1	# 341
	mul		x4, x30, x6	# 341
	addi	x4, x4, 64388	# 341
	fsw		f1, 0(x4)	# 341
	jal		x0, fle_cont.32727	# 1964
fle_cont.32727:
	lw		x4, -16(x2)	# 1991
	lw		x5, -20(x2)	# 1991
	sub		x7, x5, x4	# 1991
	lw		x4, -8(x2)	# 1991
	lw		x5, -4(x2)	# 1991
	lw		x6, 0(x2)	# 1991
	lw		x29, -12(x2)	# 1991
	lw		x31, 0(x29)	# 1991
	jalr	x0, x31, 0	# 1991
do_without_neighbors.2919.18097:
	lw		x6, 24(x29)	# 2072
	lw		x7, 20(x29)	# 2072
	lw		x8, 16(x29)	# 2072
	lw		x9, 12(x29)	# 2072
	lw		x10, 8(x29)	# 2072
	lw		x11, 4(x29)	# 2072
	addi	x12, x0, 4	# 2072
	ble		x5, x12, ble.32833	# 2072
	jalr	x0, x1, 0	# 2082
ble.32833:
	lw		x13, 8(x4)	# 614
	mul		x14, x30, x5	# 2075
	add		x13, x13, x14	# 2075
	lw		x13, 0(x13)	# 2075
	ble		x10, x13, ble.32835	# 2075
	jalr	x0, x1, 0	# 2081
ble.32835:
	lw		x13, 12(x4)	# 621
	mul		x14, x30, x5	# 2077
	add		x13, x13, x14	# 2077
	lw		x13, 0(x13)	# 2077
	sw		x4, 0(x2)	# 2077
	sw		x29, -4(x2)	# 2077
	sw		x11, -8(x2)	# 2077
	sw		x5, -12(x2)	# 2077
	beq		x13, x10, beq_cont.32837	# 2077
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
	addi	x17, x17, 64388	# 296
	fsw		f1, 0(x17)	# 296
	mul		x17, x30, x11	# 297
	add		x17, x13, x17	# 297
	flw		f1, 0(x17)	# 297
	mul		x17, x30, x11	# 297
	addi	x17, x17, 64388	# 297
	fsw		f1, 0(x17)	# 297
	mul		x17, x30, x8	# 298
	add		x13, x13, x17	# 298
	flw		f1, 0(x13)	# 298
	mul		x13, x30, x8	# 298
	addi	x13, x13, 64388	# 298
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
	beq		x13, x10, beq_cont.32839	# 2008
	mul		x17, x30, x10	# 2009
	addi	x17, x17, 64512	# 2009
	lw		x17, 0(x17)	# 2009
	mul		x18, x30, x10	# 296
	add		x18, x15, x18	# 296
	flw		f1, 0(x18)	# 296
	mul		x18, x30, x10	# 296
	addi	x18, x18, 64444	# 296
	fsw		f1, 0(x18)	# 296
	mul		x18, x30, x11	# 297
	add		x18, x15, x18	# 297
	flw		f1, 0(x18)	# 297
	mul		x18, x30, x11	# 297
	addi	x18, x18, 64444	# 297
	fsw		f1, 0(x18)	# 297
	mul		x18, x30, x8	# 298
	add		x18, x15, x18	# 298
	flw		f1, 0(x18)	# 298
	mul		x18, x30, x8	# 298
	addi	x18, x18, 64444	# 298
	fsw		f1, 0(x18)	# 298
	mul		x18, x30, x10	# 1352
	addi	x18, x18, 63796	# 1352
	lw		x18, 0(x18)	# 1352
	sub		x18, x18, x11	# 1352
	sw		x17, -56(x2)	# 1352
	addi	x5, x18, 0	# 1352
	addi	x4, x15, 0	# 1352
	addi	x29, x6, 0	# 1352
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
	jal		x0, beq_cont.32839	# 2008
beq_cont.32839:
	lw		x4, -8(x2)	# 2012
	lw		x5, -52(x2)	# 2012
	beq		x5, x4, beq_cont.32841	# 2012
	mul		x6, x30, x4	# 2013
	addi	x6, x6, 64512	# 2013
	lw		x6, 0(x6)	# 2013
	lw		x7, -48(x2)	# 296
	mul		x8, x30, x7	# 296
	lw		x9, -44(x2)	# 296
	add		x8, x9, x8	# 296
	flw		f1, 0(x8)	# 296
	mul		x8, x30, x7	# 296
	addi	x8, x8, 64444	# 296
	fsw		f1, 0(x8)	# 296
	mul		x8, x30, x4	# 297
	add		x8, x9, x8	# 297
	flw		f1, 0(x8)	# 297
	mul		x8, x30, x4	# 297
	addi	x8, x8, 64444	# 297
	fsw		f1, 0(x8)	# 297
	lw		x8, -40(x2)	# 298
	mul		x10, x30, x8	# 298
	add		x10, x9, x10	# 298
	flw		f1, 0(x10)	# 298
	mul		x10, x30, x8	# 298
	addi	x10, x10, 64444	# 298
	fsw		f1, 0(x10)	# 298
	mul		x10, x30, x7	# 1352
	addi	x10, x10, 63796	# 1352
	lw		x10, 0(x10)	# 1352
	sub		x10, x10, x4	# 1352
	lw		x29, -36(x2)	# 1352
	sw		x6, -60(x2)	# 1352
	addi	x5, x10, 0	# 1352
	addi	x4, x9, 0	# 1352
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
	jal		x0, beq_cont.32841	# 2012
beq_cont.32841:
	lw		x4, -40(x2)	# 2016
	lw		x5, -52(x2)	# 2016
	beq		x5, x4, beq_cont.32843	# 2016
	mul		x6, x30, x4	# 2017
	addi	x6, x6, 64512	# 2017
	lw		x6, 0(x6)	# 2017
	lw		x7, -48(x2)	# 296
	mul		x8, x30, x7	# 296
	lw		x9, -44(x2)	# 296
	add		x8, x9, x8	# 296
	flw		f1, 0(x8)	# 296
	mul		x8, x30, x7	# 296
	addi	x8, x8, 64444	# 296
	fsw		f1, 0(x8)	# 296
	lw		x8, -8(x2)	# 297
	mul		x10, x30, x8	# 297
	add		x10, x9, x10	# 297
	flw		f1, 0(x10)	# 297
	mul		x10, x30, x8	# 297
	addi	x10, x10, 64444	# 297
	fsw		f1, 0(x10)	# 297
	mul		x10, x30, x4	# 298
	add		x10, x9, x10	# 298
	flw		f1, 0(x10)	# 298
	mul		x10, x30, x4	# 298
	addi	x10, x10, 64444	# 298
	fsw		f1, 0(x10)	# 298
	mul		x10, x30, x7	# 1352
	addi	x10, x10, 63796	# 1352
	lw		x10, 0(x10)	# 1352
	sub		x10, x10, x8	# 1352
	lw		x29, -36(x2)	# 1352
	sw		x6, -64(x2)	# 1352
	addi	x5, x10, 0	# 1352
	addi	x4, x9, 0	# 1352
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
	jal		x0, beq_cont.32843	# 2016
beq_cont.32843:
	lw		x4, -24(x2)	# 2020
	lw		x5, -52(x2)	# 2020
	beq		x5, x4, beq_cont.32845	# 2020
	mul		x4, x30, x4	# 2021
	addi	x4, x4, 64512	# 2021
	lw		x4, 0(x4)	# 2021
	lw		x6, -48(x2)	# 296
	mul		x7, x30, x6	# 296
	lw		x8, -44(x2)	# 296
	add		x7, x8, x7	# 296
	flw		f1, 0(x7)	# 296
	mul		x7, x30, x6	# 296
	addi	x7, x7, 64444	# 296
	fsw		f1, 0(x7)	# 296
	lw		x7, -8(x2)	# 297
	mul		x9, x30, x7	# 297
	add		x9, x8, x9	# 297
	flw		f1, 0(x9)	# 297
	mul		x9, x30, x7	# 297
	addi	x9, x9, 64444	# 297
	fsw		f1, 0(x9)	# 297
	lw		x9, -40(x2)	# 298
	mul		x10, x30, x9	# 298
	add		x10, x8, x10	# 298
	flw		f1, 0(x10)	# 298
	mul		x10, x30, x9	# 298
	addi	x10, x10, 64444	# 298
	fsw		f1, 0(x10)	# 298
	mul		x10, x30, x6	# 1352
	addi	x10, x10, 63796	# 1352
	lw		x10, 0(x10)	# 1352
	sub		x10, x10, x7	# 1352
	lw		x29, -36(x2)	# 1352
	sw		x4, -68(x2)	# 1352
	addi	x5, x10, 0	# 1352
	addi	x4, x8, 0	# 1352
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
	jal		x0, beq_cont.32845	# 2020
beq_cont.32845:
	lw		x4, -20(x2)	# 2024
	lw		x5, -52(x2)	# 2024
	beq		x5, x4, beq_cont.32847	# 2024
	mul		x4, x30, x4	# 2025
	addi	x4, x4, 64512	# 2025
	lw		x4, 0(x4)	# 2025
	lw		x5, -48(x2)	# 296
	mul		x6, x30, x5	# 296
	lw		x7, -44(x2)	# 296
	add		x6, x7, x6	# 296
	flw		f1, 0(x6)	# 296
	mul		x6, x30, x5	# 296
	addi	x6, x6, 64444	# 296
	fsw		f1, 0(x6)	# 296
	lw		x6, -8(x2)	# 297
	mul		x8, x30, x6	# 297
	add		x8, x7, x8	# 297
	flw		f1, 0(x8)	# 297
	mul		x8, x30, x6	# 297
	addi	x8, x8, 64444	# 297
	fsw		f1, 0(x8)	# 297
	lw		x8, -40(x2)	# 298
	mul		x9, x30, x8	# 298
	add		x9, x7, x9	# 298
	flw		f1, 0(x9)	# 298
	mul		x9, x30, x8	# 298
	addi	x9, x9, 64444	# 298
	fsw		f1, 0(x9)	# 298
	mul		x9, x30, x5	# 1352
	addi	x9, x9, 63796	# 1352
	lw		x9, 0(x9)	# 1352
	sub		x9, x9, x6	# 1352
	lw		x29, -36(x2)	# 1352
	sw		x4, -72(x2)	# 1352
	addi	x5, x9, 0	# 1352
	addi	x4, x7, 0	# 1352
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
	jal		x0, beq_cont.32847	# 2024
beq_cont.32847:
	lw		x4, -12(x2)	# 2044
	mul		x5, x30, x4	# 2044
	lw		x6, -16(x2)	# 2044
	add		x5, x6, x5	# 2044
	lw		x5, 0(x5)	# 2044
	lw		x6, -48(x2)	# 369
	mul		x7, x30, x6	# 369
	addi	x7, x7, 64400	# 369
	flw		f1, 0(x7)	# 369
	mul		x7, x30, x6	# 369
	add		x7, x5, x7	# 369
	flw		f2, 0(x7)	# 369
	mul		x7, x30, x6	# 369
	addi	x7, x7, 64388	# 369
	flw		f3, 0(x7)	# 369
	fmul	f2, f2, f3	# 369
	fadd	f1, f1, f2	# 369
	mul		x6, x30, x6	# 369
	addi	x6, x6, 64400	# 369
	fsw		f1, 0(x6)	# 369
	lw		x6, -8(x2)	# 370
	mul		x7, x30, x6	# 370
	addi	x7, x7, 64400	# 370
	flw		f1, 0(x7)	# 370
	mul		x7, x30, x6	# 370
	add		x7, x5, x7	# 370
	flw		f2, 0(x7)	# 370
	mul		x7, x30, x6	# 370
	addi	x7, x7, 64388	# 370
	flw		f3, 0(x7)	# 370
	fmul	f2, f2, f3	# 370
	fadd	f1, f1, f2	# 370
	mul		x7, x30, x6	# 370
	addi	x7, x7, 64400	# 370
	fsw		f1, 0(x7)	# 370
	lw		x7, -40(x2)	# 371
	mul		x8, x30, x7	# 371
	addi	x8, x8, 64400	# 371
	flw		f1, 0(x8)	# 371
	mul		x8, x30, x7	# 371
	add		x5, x5, x8	# 371
	flw		f2, 0(x5)	# 371
	mul		x5, x30, x7	# 371
	addi	x5, x5, 64388	# 371
	flw		f3, 0(x5)	# 371
	fmul	f2, f2, f3	# 371
	fadd	f1, f1, f2	# 371
	mul		x5, x30, x7	# 371
	addi	x5, x5, 64400	# 371
	fsw		f1, 0(x5)	# 371
	jal		x0, beq_cont.32837	# 2077
beq_cont.32837:
	lw		x4, -8(x2)	# 2080
	lw		x5, -12(x2)	# 2080
	add		x5, x5, x4	# 2080
	lw		x4, 0(x2)	# 2080
	lw		x29, -4(x2)	# 2080
	lw		x31, 0(x29)	# 2080
	jalr	x0, x31, 0	# 2080
try_exploit_neighbors.2935.18100:
	lw		x10, 16(x29)	# 2124
	lw		x11, 12(x29)	# 2124
	lw		x12, 8(x29)	# 2124
	lw		x13, 4(x29)	# 2124
	mul		x14, x30, x4	# 2124
	add		x14, x7, x14	# 2124
	lw		x14, 0(x14)	# 2124
	addi	x15, x0, 4	# 2125
	ble		x9, x15, ble.32849	# 2125
	jalr	x0, x1, 0	# 2144
ble.32849:
	lw		x15, 8(x14)	# 614
	mul		x16, x30, x9	# 2100
	add		x15, x15, x16	# 2100
	lw		x15, 0(x15)	# 2100
	ble		x12, x15, ble.32851	# 2128
	jalr	x0, x1, 0	# 2143
ble.32851:
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
	beq		x17, x15, beq.32854	# 2108
	addi	x15, x0, 0	# 2116
	jal		x0, beq_cont.32853	# 2108
beq.32854:
	mul		x17, x30, x4	# 2109
	add		x17, x8, x17	# 2109
	lw		x17, 0(x17)	# 2109
	lw		x17, 8(x17)	# 614
	mul		x18, x30, x9	# 2100
	add		x17, x17, x18	# 2100
	lw		x17, 0(x17)	# 2100
	beq		x17, x15, beq.32856	# 2109
	addi	x15, x0, 0	# 2115
	jal		x0, beq_cont.32853	# 2109
beq.32856:
	sub		x17, x4, x13	# 2110
	mul		x17, x30, x17	# 2110
	add		x17, x7, x17	# 2110
	lw		x17, 0(x17)	# 2110
	lw		x17, 8(x17)	# 614
	mul		x18, x30, x9	# 2100
	add		x17, x17, x18	# 2100
	lw		x17, 0(x17)	# 2100
	beq		x17, x15, beq.32858	# 2110
	addi	x15, x0, 0	# 2114
	jal		x0, beq_cont.32853	# 2110
beq.32858:
	add		x17, x4, x13	# 2111
	mul		x17, x30, x17	# 2111
	add		x17, x7, x17	# 2111
	lw		x17, 0(x17)	# 2111
	lw		x17, 8(x17)	# 614
	mul		x18, x30, x9	# 2100
	add		x17, x17, x18	# 2100
	lw		x17, 0(x17)	# 2100
	beq		x17, x15, beq.32860	# 2111
	addi	x15, x0, 0	# 2113
	jal		x0, beq_cont.32853	# 2111
beq.32860:
	addi	x15, x0, 1	# 2112
beq_cont.32853:
	beq		x15, x12, beq.32861	# 2130
	lw		x10, 12(x14)	# 621
	mul		x15, x30, x9	# 2134
	add		x10, x10, x15	# 2134
	lw		x10, 0(x10)	# 2134
	beq		x10, x12, beq_cont.32862	# 2134
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
	addi	x18, x18, 64388	# 296
	fsw		f1, 0(x18)	# 296
	mul		x18, x30, x13	# 297
	add		x18, x10, x18	# 297
	flw		f1, 0(x18)	# 297
	mul		x18, x30, x13	# 297
	addi	x18, x18, 64388	# 297
	fsw		f1, 0(x18)	# 297
	mul		x18, x30, x11	# 298
	add		x10, x10, x18	# 298
	flw		f1, 0(x10)	# 298
	mul		x10, x30, x11	# 298
	addi	x10, x10, 64388	# 298
	fsw		f1, 0(x10)	# 298
	mul		x10, x30, x9	# 2060
	add		x10, x15, x10	# 2060
	lw		x10, 0(x10)	# 2060
	mul		x15, x30, x12	# 346
	addi	x15, x15, 64388	# 346
	flw		f1, 0(x15)	# 346
	mul		x15, x30, x12	# 346
	add		x15, x10, x15	# 346
	flw		f2, 0(x15)	# 346
	fadd	f1, f1, f2	# 346
	mul		x15, x30, x12	# 346
	addi	x15, x15, 64388	# 346
	fsw		f1, 0(x15)	# 346
	mul		x15, x30, x13	# 347
	addi	x15, x15, 64388	# 347
	flw		f1, 0(x15)	# 347
	mul		x15, x30, x13	# 347
	add		x15, x10, x15	# 347
	flw		f2, 0(x15)	# 347
	fadd	f1, f1, f2	# 347
	mul		x15, x30, x13	# 347
	addi	x15, x15, 64388	# 347
	fsw		f1, 0(x15)	# 347
	mul		x15, x30, x11	# 348
	addi	x15, x15, 64388	# 348
	flw		f1, 0(x15)	# 348
	mul		x15, x30, x11	# 348
	add		x10, x10, x15	# 348
	flw		f2, 0(x10)	# 348
	fadd	f1, f1, f2	# 348
	mul		x10, x30, x11	# 348
	addi	x10, x10, 64388	# 348
	fsw		f1, 0(x10)	# 348
	mul		x10, x30, x9	# 2061
	add		x10, x14, x10	# 2061
	lw		x10, 0(x10)	# 2061
	mul		x14, x30, x12	# 346
	addi	x14, x14, 64388	# 346
	flw		f1, 0(x14)	# 346
	mul		x14, x30, x12	# 346
	add		x14, x10, x14	# 346
	flw		f2, 0(x14)	# 346
	fadd	f1, f1, f2	# 346
	mul		x14, x30, x12	# 346
	addi	x14, x14, 64388	# 346
	fsw		f1, 0(x14)	# 346
	mul		x14, x30, x13	# 347
	addi	x14, x14, 64388	# 347
	flw		f1, 0(x14)	# 347
	mul		x14, x30, x13	# 347
	add		x14, x10, x14	# 347
	flw		f2, 0(x14)	# 347
	fadd	f1, f1, f2	# 347
	mul		x14, x30, x13	# 347
	addi	x14, x14, 64388	# 347
	fsw		f1, 0(x14)	# 347
	mul		x14, x30, x11	# 348
	addi	x14, x14, 64388	# 348
	flw		f1, 0(x14)	# 348
	mul		x14, x30, x11	# 348
	add		x10, x10, x14	# 348
	flw		f2, 0(x10)	# 348
	fadd	f1, f1, f2	# 348
	mul		x10, x30, x11	# 348
	addi	x10, x10, 64388	# 348
	fsw		f1, 0(x10)	# 348
	mul		x10, x30, x9	# 2062
	add		x10, x16, x10	# 2062
	lw		x10, 0(x10)	# 2062
	mul		x14, x30, x12	# 346
	addi	x14, x14, 64388	# 346
	flw		f1, 0(x14)	# 346
	mul		x14, x30, x12	# 346
	add		x14, x10, x14	# 346
	flw		f2, 0(x14)	# 346
	fadd	f1, f1, f2	# 346
	mul		x14, x30, x12	# 346
	addi	x14, x14, 64388	# 346
	fsw		f1, 0(x14)	# 346
	mul		x14, x30, x13	# 347
	addi	x14, x14, 64388	# 347
	flw		f1, 0(x14)	# 347
	mul		x14, x30, x13	# 347
	add		x14, x10, x14	# 347
	flw		f2, 0(x14)	# 347
	fadd	f1, f1, f2	# 347
	mul		x14, x30, x13	# 347
	addi	x14, x14, 64388	# 347
	fsw		f1, 0(x14)	# 347
	mul		x14, x30, x11	# 348
	addi	x14, x14, 64388	# 348
	flw		f1, 0(x14)	# 348
	mul		x14, x30, x11	# 348
	add		x10, x10, x14	# 348
	flw		f2, 0(x10)	# 348
	fadd	f1, f1, f2	# 348
	mul		x10, x30, x11	# 348
	addi	x10, x10, 64388	# 348
	fsw		f1, 0(x10)	# 348
	mul		x10, x30, x9	# 2063
	add		x10, x17, x10	# 2063
	lw		x10, 0(x10)	# 2063
	mul		x14, x30, x12	# 346
	addi	x14, x14, 64388	# 346
	flw		f1, 0(x14)	# 346
	mul		x14, x30, x12	# 346
	add		x14, x10, x14	# 346
	flw		f2, 0(x14)	# 346
	fadd	f1, f1, f2	# 346
	mul		x14, x30, x12	# 346
	addi	x14, x14, 64388	# 346
	fsw		f1, 0(x14)	# 346
	mul		x14, x30, x13	# 347
	addi	x14, x14, 64388	# 347
	flw		f1, 0(x14)	# 347
	mul		x14, x30, x13	# 347
	add		x14, x10, x14	# 347
	flw		f2, 0(x14)	# 347
	fadd	f1, f1, f2	# 347
	mul		x14, x30, x13	# 347
	addi	x14, x14, 64388	# 347
	fsw		f1, 0(x14)	# 347
	mul		x14, x30, x11	# 348
	addi	x14, x14, 64388	# 348
	flw		f1, 0(x14)	# 348
	mul		x14, x30, x11	# 348
	add		x10, x10, x14	# 348
	flw		f2, 0(x10)	# 348
	fadd	f1, f1, f2	# 348
	mul		x10, x30, x11	# 348
	addi	x10, x10, 64388	# 348
	fsw		f1, 0(x10)	# 348
	mul		x10, x30, x4	# 2065
	add		x10, x7, x10	# 2065
	lw		x10, 0(x10)	# 2065
	lw		x10, 16(x10)	# 628
	mul		x14, x30, x9	# 2066
	add		x10, x10, x14	# 2066
	lw		x10, 0(x10)	# 2066
	mul		x14, x30, x12	# 369
	addi	x14, x14, 64400	# 369
	flw		f1, 0(x14)	# 369
	mul		x14, x30, x12	# 369
	add		x14, x10, x14	# 369
	flw		f2, 0(x14)	# 369
	mul		x14, x30, x12	# 369
	addi	x14, x14, 64388	# 369
	flw		f3, 0(x14)	# 369
	fmul	f2, f2, f3	# 369
	fadd	f1, f1, f2	# 369
	mul		x12, x30, x12	# 369
	addi	x12, x12, 64400	# 369
	fsw		f1, 0(x12)	# 369
	mul		x12, x30, x13	# 370
	addi	x12, x12, 64400	# 370
	flw		f1, 0(x12)	# 370
	mul		x12, x30, x13	# 370
	add		x12, x10, x12	# 370
	flw		f2, 0(x12)	# 370
	mul		x12, x30, x13	# 370
	addi	x12, x12, 64388	# 370
	flw		f3, 0(x12)	# 370
	fmul	f2, f2, f3	# 370
	fadd	f1, f1, f2	# 370
	mul		x12, x30, x13	# 370
	addi	x12, x12, 64400	# 370
	fsw		f1, 0(x12)	# 370
	mul		x12, x30, x11	# 371
	addi	x12, x12, 64400	# 371
	flw		f1, 0(x12)	# 371
	mul		x12, x30, x11	# 371
	add		x10, x10, x12	# 371
	flw		f2, 0(x10)	# 371
	mul		x10, x30, x11	# 371
	addi	x10, x10, 64388	# 371
	flw		f3, 0(x10)	# 371
	fmul	f2, f2, f3	# 371
	fadd	f1, f1, f2	# 371
	mul		x10, x30, x11	# 371
	addi	x10, x10, 64400	# 371
	fsw		f1, 0(x10)	# 371
	jal		x0, beq_cont.32862	# 2134
beq_cont.32862:
	add		x9, x9, x13	# 2139
	lw		x31, 0(x29)	# 2139
	jalr	x0, x31, 0	# 2139
beq.32861:
	addi	x5, x9, 0	# 2142
	addi	x4, x14, 0	# 2142
	addi	x29, x10, 0	# 2142
	lw		x31, 0(x29)	# 2142
	jalr	x0, x31, 0	# 2142
pretrace_diffuse_rays.2950.18107:
	lw		x6, 24(x29)	# 2200
	lw		x7, 20(x29)	# 2200
	lw		x8, 16(x29)	# 2200
	lw		x9, 12(x29)	# 2200
	lw		x10, 8(x29)	# 2200
	flw		f1, 4(x29)	# 2200
	addi	x11, x0, 4	# 2200
	ble		x5, x11, ble.32864	# 2200
	jalr	x0, x1, 0	# 2224
ble.32864:
	lw		x11, 8(x4)	# 614
	mul		x12, x30, x5	# 2100
	add		x11, x11, x12	# 2100
	lw		x11, 0(x11)	# 2100
	ble		x9, x11, ble.32866	# 2204
	jalr	x0, x1, 0	# 2223
ble.32866:
	lw		x11, 12(x4)	# 621
	mul		x12, x30, x5	# 2207
	add		x11, x11, x12	# 2207
	lw		x11, 0(x11)	# 2207
	sw		x29, 0(x2)	# 2207
	sw		x10, -4(x2)	# 2207
	sw		x5, -8(x2)	# 2207
	beq		x11, x9, beq_cont.32868	# 2207
	lw		x11, 24(x4)	# 651
	mul		x12, x30, x9	# 653
	add		x11, x11, x12	# 653
	lw		x11, 0(x11)	# 653
	mul		x12, x30, x9	# 284
	addi	x12, x12, 64388	# 284
	fsw		f1, 0(x12)	# 284
	mul		x12, x30, x10	# 285
	addi	x12, x12, 64388	# 285
	fsw		f1, 0(x12)	# 285
	mul		x12, x30, x8	# 286
	addi	x12, x12, 64388	# 286
	fsw		f1, 0(x12)	# 286
	lw		x12, 28(x4)	# 665
	lw		x13, 4(x4)	# 606
	mul		x11, x30, x11	# 2216
	addi	x11, x11, 64512	# 2216
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
	addi	x14, x14, 64444	# 296
	fsw		f1, 0(x14)	# 296
	mul		x14, x30, x10	# 297
	add		x14, x13, x14	# 297
	flw		f1, 0(x14)	# 297
	mul		x14, x30, x10	# 297
	addi	x14, x14, 64444	# 297
	fsw		f1, 0(x14)	# 297
	mul		x14, x30, x8	# 298
	add		x14, x13, x14	# 298
	flw		f1, 0(x14)	# 298
	mul		x14, x30, x8	# 298
	addi	x14, x14, 64444	# 298
	fsw		f1, 0(x14)	# 298
	mul		x14, x30, x9	# 1352
	addi	x14, x14, 63796	# 1352
	lw		x14, 0(x14)	# 1352
	sub		x14, x14, x10	# 1352
	sw		x8, -12(x2)	# 1352
	sw		x9, -16(x2)	# 1352
	sw		x4, -20(x2)	# 1352
	sw		x13, -24(x2)	# 1352
	sw		x12, -28(x2)	# 1352
	sw		x11, -32(x2)	# 1352
	sw		x7, -36(x2)	# 1352
	addi	x5, x14, 0	# 1352
	addi	x4, x13, 0	# 1352
	addi	x29, x6, 0	# 1352
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
	addi	x8, x8, 64388	# 296
	flw		f1, 0(x8)	# 296
	mul		x7, x30, x7	# 296
	add		x7, x5, x7	# 296
	fsw		f1, 0(x7)	# 296
	lw		x7, -4(x2)	# 297
	mul		x8, x30, x7	# 297
	addi	x8, x8, 64388	# 297
	flw		f1, 0(x8)	# 297
	mul		x8, x30, x7	# 297
	add		x8, x5, x8	# 297
	fsw		f1, 0(x8)	# 297
	lw		x8, -12(x2)	# 298
	mul		x9, x30, x8	# 298
	addi	x9, x9, 64388	# 298
	flw		f1, 0(x9)	# 298
	mul		x8, x30, x8	# 298
	add		x5, x5, x8	# 298
	fsw		f1, 0(x5)	# 298
	jal		x0, beq_cont.32868	# 2207
beq_cont.32868:
	lw		x5, -4(x2)	# 2222
	lw		x6, -8(x2)	# 2222
	add		x5, x6, x5	# 2222
	lw		x29, 0(x2)	# 2222
	lw		x31, 0(x29)	# 2222
	jalr	x0, x31, 0	# 2222
pretrace_pixels.2953.18110:
	lw		x7, 28(x29)	# 2230
	lw		x8, 24(x29)	# 2230
	lw		x9, 20(x29)	# 2230
	lw		x10, 16(x29)	# 2230
	lw		x11, 12(x29)	# 2230
	lw		x12, 8(x29)	# 2230
	flw		f4, 4(x29)	# 2230
	ble		x11, x5, ble.32870	# 2230
	jalr	x0, x1, 0	# 2250
ble.32870:
	mul		x13, x30, x11	# 2232
	addi	x13, x13, 64428	# 2232
	flw		f5, 0(x13)	# 2232
	mul		x13, x30, x11	# 2232
	addi	x13, x13, 64420	# 2232
	lw		x13, 0(x13)	# 2232
	sub		x13, x5, x13	# 2232
	sw		x6, 0(x2)	# 2232
	sw		x4, -4(x2)	# 2232
	sw		x5, -8(x2)	# 2232
	fsw		f3, -12(x2)	# 2232
	fsw		f2, -16(x2)	# 2232
	fsw		f1, -20(x2)	# 2232
	addi	x4, x13, 0	# 2232
	sw		x1, -24(x2)	# 2232
	addi	x2, x2, -28	# 2232
	jal		x1, min_caml_float_of_int	# 2232
	addi	x2, x2, 28	# 2232
	lw		x1, -24(x2)	# 2232
	fmul	f1, f5, f1	# 2232
	mul		x4, x30, x11	# 2233
	addi	x4, x4, 64456	# 2233
	flw		f2, 0(x4)	# 2233
	fmul	f2, f1, f2	# 2233
	flw		f3, -20(x2)	# 2233
	fadd	f2, f2, f3	# 2233
	mul		x4, x30, x11	# 2233
	addi	x4, x4, 64492	# 2233
	fsw		f2, 0(x4)	# 2233
	mul		x4, x30, x12	# 2234
	addi	x4, x4, 64456	# 2234
	flw		f2, 0(x4)	# 2234
	fmul	f2, f1, f2	# 2234
	flw		f5, -16(x2)	# 2234
	fadd	f2, f2, f5	# 2234
	mul		x4, x30, x12	# 2234
	addi	x4, x4, 64492	# 2234
	fsw		f2, 0(x4)	# 2234
	mul		x4, x30, x10	# 2235
	addi	x4, x4, 64456	# 2235
	flw		f2, 0(x4)	# 2235
	fmul	f1, f1, f2	# 2235
	flw		f2, -12(x2)	# 2235
	fadd	f1, f1, f2	# 2235
	mul		x4, x30, x10	# 2235
	addi	x4, x4, 64492	# 2235
	fsw		f1, 0(x4)	# 2235
	mul		x4, x30, x11	# 320
	addi	x4, x4, 64492	# 320
	flw		f1, 0(x4)	# 320
	fmul	f1, f1, f1	# 127
	mul		x4, x30, x12	# 320
	addi	x4, x4, 64492	# 320
	flw		f6, 0(x4)	# 320
	fmul	f6, f6, f6	# 127
	fadd	f1, f1, f6	# 320
	mul		x4, x30, x10	# 320
	addi	x4, x4, 64492	# 320
	flw		f6, 0(x4)	# 320
	fmul	f6, f6, f6	# 127
	fadd	f1, f1, f6	# 320
	fsqrt	f1, f1	# 320
	feq		f1, f4, feq.32873	# 120
	fadd	f6, f0, f16	# 321
	fdiv	f1, f6, f1	# 321
	jal		x0, feq_cont.32872	# 120
feq.32873:
	fadd	f1, f0, f16	# 321
feq_cont.32872:
	mul		x4, x30, x11	# 322
	addi	x4, x4, 64492	# 322
	flw		f6, 0(x4)	# 322
	fmul	f6, f6, f1	# 322
	mul		x4, x30, x11	# 322
	addi	x4, x4, 64492	# 322
	fsw		f6, 0(x4)	# 322
	mul		x4, x30, x12	# 323
	addi	x4, x4, 64492	# 323
	flw		f6, 0(x4)	# 323
	fmul	f6, f6, f1	# 323
	mul		x4, x30, x12	# 323
	addi	x4, x4, 64492	# 323
	fsw		f6, 0(x4)	# 323
	mul		x4, x30, x10	# 324
	addi	x4, x4, 64492	# 324
	flw		f6, 0(x4)	# 324
	fmul	f1, f6, f1	# 324
	mul		x4, x30, x10	# 324
	addi	x4, x4, 64492	# 324
	fsw		f1, 0(x4)	# 324
	mul		x4, x30, x11	# 284
	addi	x4, x4, 64400	# 284
	fsw		f4, 0(x4)	# 284
	mul		x4, x30, x12	# 285
	addi	x4, x4, 64400	# 285
	fsw		f4, 0(x4)	# 285
	mul		x4, x30, x10	# 286
	addi	x4, x4, 64400	# 286
	fsw		f4, 0(x4)	# 286
	mul		x4, x30, x11	# 296
	addi	x4, x4, 64096	# 296
	flw		f1, 0(x4)	# 296
	mul		x4, x30, x11	# 296
	addi	x4, x4, 64432	# 296
	fsw		f1, 0(x4)	# 296
	mul		x4, x30, x12	# 297
	addi	x4, x4, 64096	# 297
	flw		f1, 0(x4)	# 297
	mul		x4, x30, x12	# 297
	addi	x4, x4, 64432	# 297
	fsw		f1, 0(x4)	# 297
	mul		x4, x30, x10	# 298
	addi	x4, x4, 64096	# 298
	flw		f1, 0(x4)	# 298
	mul		x4, x30, x10	# 298
	addi	x4, x4, 64432	# 298
	fsw		f1, 0(x4)	# 298
	fadd	f1, f0, f16	# 2241
	lw		x4, -8(x2)	# 2241
	mul		x5, x30, x4	# 2241
	lw		x6, -4(x2)	# 2241
	add		x5, x6, x5	# 2241
	lw		x5, 0(x5)	# 2241
	addi	x13, x0, 64492	# 2241
	sw		x29, -24(x2)	# 2241
	sw		x9, -28(x2)	# 2241
	sw		x8, -32(x2)	# 2241
	sw		x10, -36(x2)	# 2241
	sw		x12, -40(x2)	# 2241
	sw		x11, -44(x2)	# 2241
	addi	x6, x5, 0	# 2241
	addi	x4, x11, 0	# 2241
	addi	x29, x7, 0	# 2241
	addi	x5, x13, 0	# 2241
	fadd	f2, f0, f4	# 2241
	sw		x1, -48(x2)	# 2241
	addi	x2, x2, -52	# 2241
	lw		x31, 0(x29)	# 2241
	jalr	x1, x31, 0	# 2241
	addi	x2, x2, 52	# 2241
	lw		x1, -48(x2)	# 2241
	lw		x4, -8(x2)	# 2242
	mul		x5, x30, x4	# 2242
	lw		x6, -4(x2)	# 2242
	add		x5, x6, x5	# 2242
	lw		x5, 0(x5)	# 2242
	lw		x5, 0(x5)	# 599
	lw		x7, -44(x2)	# 296
	mul		x8, x30, x7	# 296
	addi	x8, x8, 64400	# 296
	flw		f1, 0(x8)	# 296
	mul		x8, x30, x7	# 296
	add		x8, x5, x8	# 296
	fsw		f1, 0(x8)	# 296
	lw		x8, -40(x2)	# 297
	mul		x9, x30, x8	# 297
	addi	x9, x9, 64400	# 297
	flw		f1, 0(x9)	# 297
	mul		x9, x30, x8	# 297
	add		x9, x5, x9	# 297
	fsw		f1, 0(x9)	# 297
	lw		x9, -36(x2)	# 298
	mul		x10, x30, x9	# 298
	addi	x10, x10, 64400	# 298
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
	lw		x9, 0(x2)	# 660
	sw		x9, 0(x5)	# 660
	mul		x5, x30, x4	# 2246
	add		x5, x6, x5	# 2246
	lw		x5, 0(x5)	# 2246
	lw		x29, -32(x2)	# 2246
	addi	x4, x5, 0	# 2246
	addi	x5, x7, 0	# 2246
	sw		x1, -48(x2)	# 2246
	addi	x2, x2, -52	# 2246
	lw		x31, 0(x29)	# 2246
	jalr	x1, x31, 0	# 2246
	addi	x2, x2, 52	# 2246
	lw		x1, -48(x2)	# 2246
	lw		x4, -40(x2)	# 2248
	lw		x5, -8(x2)	# 2248
	sub		x5, x5, x4	# 2248
	lw		x6, 0(x2)	# 261
	add		x4, x6, x4	# 261
	lw		x6, -28(x2)	# 262
	ble		x6, x4, ble.32875	# 262
	addi	x6, x4, 0	# 262
	jal		x0, ble_cont.32874	# 262
ble.32875:
	sub		x6, x4, x6	# 262
ble_cont.32874:
	flw		f1, -20(x2)	# 2248
	flw		f2, -16(x2)	# 2248
	flw		f3, -12(x2)	# 2248
	lw		x4, -4(x2)	# 2248
	lw		x29, -24(x2)	# 2248
	lw		x31, 0(x29)	# 2248
	jalr	x0, x31, 0	# 2248
scan_pixel.2964.18117:
	lw		x10, 28(x29)	# 2271
	lw		x11, 24(x29)	# 2271
	lw		x12, 20(x29)	# 2271
	lw		x13, 16(x29)	# 2271
	lw		x14, 12(x29)	# 2271
	lw		x15, 8(x29)	# 2271
	lw		x16, 4(x29)	# 2271
	mul		x17, x30, x15	# 2271
	addi	x17, x17, 64412	# 2271
	lw		x17, 0(x17)	# 2271
	ble		x17, x4, ble.32876	# 2271
	mul		x17, x30, x4	# 2274
	add		x17, x7, x17	# 2274
	lw		x17, 0(x17)	# 2274
	lw		x17, 0(x17)	# 599
	mul		x18, x30, x15	# 296
	add		x18, x17, x18	# 296
	flw		f1, 0(x18)	# 296
	mul		x18, x30, x15	# 296
	addi	x18, x18, 64400	# 296
	fsw		f1, 0(x18)	# 296
	mul		x18, x30, x16	# 297
	add		x18, x17, x18	# 297
	flw		f1, 0(x18)	# 297
	mul		x18, x30, x16	# 297
	addi	x18, x18, 64400	# 297
	fsw		f1, 0(x18)	# 297
	mul		x18, x30, x13	# 298
	add		x17, x17, x18	# 298
	flw		f1, 0(x17)	# 298
	mul		x17, x30, x13	# 298
	addi	x17, x17, 64400	# 298
	fsw		f1, 0(x17)	# 298
	mul		x17, x30, x16	# 2087
	addi	x17, x17, 64412	# 2087
	lw		x17, 0(x17)	# 2087
	add		x18, x5, x16	# 2087
	ble		x17, x18, ble.32878	# 2087
	ble		x5, x15, ble.32880	# 2088
	mul		x17, x30, x15	# 2089
	addi	x17, x17, 64412	# 2089
	lw		x17, 0(x17)	# 2089
	add		x18, x4, x16	# 2089
	ble		x17, x18, ble.32882	# 2089
	ble		x4, x15, ble.32884	# 2090
	addi	x17, x0, 1	# 2091
	jal		x0, ble_cont.32877	# 2090
ble.32884:
	addi	x17, x0, 0	# 2092
	jal		x0, ble_cont.32877	# 2089
ble.32882:
	addi	x17, x0, 0	# 2093
	jal		x0, ble_cont.32877	# 2088
ble.32880:
	addi	x17, x0, 0	# 2094
	jal		x0, ble_cont.32877	# 2087
ble.32878:
	addi	x17, x0, 0	# 2095
ble_cont.32877:
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
	beq		x17, x15, beq.32886	# 2277
	addi	x9, x15, 0	# 2278
	addi	x29, x10, 0	# 2278
	sw		x1, -48(x2)	# 2278
	addi	x2, x2, -52	# 2278
	lw		x31, 0(x29)	# 2278
	jalr	x1, x31, 0	# 2278
	addi	x2, x2, 52	# 2278
	lw		x1, -48(x2)	# 2278
	jal		x0, beq_cont.32885	# 2277
beq.32886:
	mul		x10, x30, x4	# 2280
	add		x10, x7, x10	# 2280
	lw		x10, 0(x10)	# 2280
	addi	x5, x15, 0	# 2280
	addi	x4, x10, 0	# 2280
	addi	x29, x12, 0	# 2280
	sw		x1, -48(x2)	# 2280
	addi	x2, x2, -52	# 2280
	lw		x31, 0(x29)	# 2280
	jalr	x1, x31, 0	# 2280
	addi	x2, x2, 52	# 2280
	lw		x1, -48(x2)	# 2280
beq_cont.32885:
	lw		x4, -40(x2)	# 2177
	lw		x5, -44(x2)	# 2177
	beq		x5, x4, beq.32888	# 2177
	lw		x4, -36(x2)	# 2185
	mul		x6, x30, x4	# 2185
	addi	x6, x6, 64400	# 2185
	flw		f1, 0(x6)	# 2185
	lw		x29, -32(x2)	# 153
	sw		x1, -48(x2)	# 153
	addi	x2, x2, -52	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 52	# 153
	lw		x1, -48(x2)	# 153
	addi	x5, x0, 255	# 2172
	ble		x4, x5, ble.32890	# 2172
	addi	x4, x0, 255	# 2172
	jal		x0, ble_cont.32889	# 2172
ble.32890:
	lw		x6, -36(x2)	# 2172
	ble		x6, x4, ble_cont.32889	# 2172
	addi	x4, x0, 0	# 2172
	jal		x0, ble_cont.32889	# 2172
ble_cont.32889:
	sw		x1, -48(x2)	# 2173
	addi	x2, x2, -52	# 2173
	jal		x1, min_caml_print_char	# 2173
	addi	x2, x2, 52	# 2173
	lw		x1, -48(x2)	# 2173
	lw		x4, -28(x2)	# 2186
	mul		x6, x30, x4	# 2186
	addi	x6, x6, 64400	# 2186
	flw		f1, 0(x6)	# 2186
	lw		x6, -36(x2)	# 153
	lw		x29, -32(x2)	# 153
	sw		x5, -48(x2)	# 153
	addi	x4, x6, 0	# 153
	sw		x1, -52(x2)	# 153
	addi	x2, x2, -56	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 56	# 153
	lw		x1, -52(x2)	# 153
	lw		x5, -48(x2)	# 2172
	ble		x4, x5, ble.32894	# 2172
	addi	x4, x0, 255	# 2172
	jal		x0, ble_cont.32893	# 2172
ble.32894:
	lw		x6, -36(x2)	# 2172
	ble		x6, x4, ble_cont.32893	# 2172
	addi	x4, x0, 0	# 2172
	jal		x0, ble_cont.32893	# 2172
ble_cont.32893:
	sw		x1, -52(x2)	# 2173
	addi	x2, x2, -56	# 2173
	jal		x1, min_caml_print_char	# 2173
	addi	x2, x2, 56	# 2173
	lw		x1, -52(x2)	# 2173
	lw		x4, -24(x2)	# 2187
	mul		x4, x30, x4	# 2187
	addi	x4, x4, 64400	# 2187
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
	ble		x4, x5, ble.32898	# 2172
	addi	x4, x0, 255	# 2172
	jal		x0, ble_cont.32897	# 2172
ble.32898:
	lw		x5, -36(x2)	# 2172
	ble		x5, x4, ble_cont.32897	# 2172
	addi	x4, x0, 0	# 2172
	jal		x0, ble_cont.32897	# 2172
ble_cont.32897:
	sw		x1, -52(x2)	# 2173
	addi	x2, x2, -56	# 2173
	jal		x1, min_caml_print_char	# 2173
	addi	x2, x2, 56	# 2173
	lw		x1, -52(x2)	# 2173
	jal		x0, beq_cont.32887	# 2177
beq.32888:
	lw		x4, -36(x2)	# 2178
	mul		x6, x30, x4	# 2178
	addi	x6, x6, 64400	# 2178
	flw		f1, 0(x6)	# 2178
	lw		x29, -32(x2)	# 153
	sw		x1, -52(x2)	# 153
	addi	x2, x2, -56	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 56	# 153
	lw		x1, -52(x2)	# 153
	addi	x5, x0, 255	# 2166
	ble		x4, x5, ble.32902	# 2166
	addi	x4, x0, 255	# 2166
	jal		x0, ble_cont.32901	# 2166
ble.32902:
	lw		x6, -36(x2)	# 2166
	ble		x6, x4, ble_cont.32901	# 2166
	addi	x4, x0, 0	# 2166
	jal		x0, ble_cont.32901	# 2166
ble_cont.32901:
	sw		x1, -52(x2)	# 2167
	addi	x2, x2, -56	# 2167
	jal		x1, min_caml_print_int	# 2167
	addi	x2, x2, 56	# 2167
	lw		x1, -52(x2)	# 2167
	addi	x4, x0, 32	# 2179
	sw		x4, -52(x2)	# 2179
	sw		x1, -56(x2)	# 2179
	addi	x2, x2, -60	# 2179
	jal		x1, min_caml_print_char	# 2179
	addi	x2, x2, 60	# 2179
	lw		x1, -56(x2)	# 2179
	lw		x4, -28(x2)	# 2180
	mul		x6, x30, x4	# 2180
	addi	x6, x6, 64400	# 2180
	flw		f1, 0(x6)	# 2180
	lw		x6, -36(x2)	# 153
	lw		x29, -32(x2)	# 153
	sw		x5, -56(x2)	# 153
	addi	x4, x6, 0	# 153
	sw		x1, -60(x2)	# 153
	addi	x2, x2, -64	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 64	# 153
	lw		x1, -60(x2)	# 153
	lw		x5, -56(x2)	# 2166
	ble		x4, x5, ble.32906	# 2166
	addi	x4, x0, 255	# 2166
	jal		x0, ble_cont.32905	# 2166
ble.32906:
	lw		x6, -36(x2)	# 2166
	ble		x6, x4, ble_cont.32905	# 2166
	addi	x4, x0, 0	# 2166
	jal		x0, ble_cont.32905	# 2166
ble_cont.32905:
	sw		x1, -60(x2)	# 2167
	addi	x2, x2, -64	# 2167
	jal		x1, min_caml_print_int	# 2167
	addi	x2, x2, 64	# 2167
	lw		x1, -60(x2)	# 2167
	lw		x4, -52(x2)	# 2181
	sw		x1, -60(x2)	# 2181
	addi	x2, x2, -64	# 2181
	jal		x1, min_caml_print_char	# 2181
	addi	x2, x2, 64	# 2181
	lw		x1, -60(x2)	# 2181
	lw		x4, -24(x2)	# 2182
	mul		x4, x30, x4	# 2182
	addi	x4, x4, 64400	# 2182
	flw		f1, 0(x4)	# 2182
	lw		x4, -36(x2)	# 153
	lw		x29, -32(x2)	# 153
	sw		x1, -60(x2)	# 153
	addi	x2, x2, -64	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 64	# 153
	lw		x1, -60(x2)	# 153
	lw		x5, -56(x2)	# 2166
	ble		x4, x5, ble.32910	# 2166
	addi	x4, x0, 255	# 2166
	jal		x0, ble_cont.32909	# 2166
ble.32910:
	lw		x5, -36(x2)	# 2166
	ble		x5, x4, ble_cont.32909	# 2166
	addi	x4, x0, 0	# 2166
	jal		x0, ble_cont.32909	# 2166
ble_cont.32909:
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
beq_cont.32887:
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
ble.32876:
	jalr	x0, x1, 0	# 2286
scan_line.2971.18124:
	lw		x10, 24(x29)	# 2292
	lw		x11, 20(x29)	# 2292
	lw		x12, 16(x29)	# 2292
	lw		x13, 12(x29)	# 2292
	lw		x14, 8(x29)	# 2292
	lw		x15, 4(x29)	# 2292
	mul		x16, x30, x15	# 2292
	addi	x16, x16, 64412	# 2292
	lw		x16, 0(x16)	# 2292
	ble		x16, x4, ble.32914	# 2292
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
	ble		x16, x4, ble_cont.32915	# 2294
	add		x16, x4, x15	# 2295
	mul		x17, x30, x14	# 2255
	addi	x17, x17, 64428	# 2255
	flw		f1, 0(x17)	# 2255
	mul		x17, x30, x15	# 2255
	addi	x17, x17, 64420	# 2255
	lw		x17, 0(x17)	# 2255
	sub		x16, x16, x17	# 2255
	fsw		f1, -48(x2)	# 2255
	addi	x4, x16, 0	# 2255
	sw		x1, -52(x2)	# 2255
	addi	x2, x2, -56	# 2255
	jal		x1, min_caml_float_of_int	# 2255
	addi	x2, x2, 56	# 2255
	lw		x1, -52(x2)	# 2255
	flw		f2, -48(x2)	# 2255
	fmul	f1, f2, f1	# 2255
	mul		x4, x30, x14	# 2258
	addi	x4, x4, 64468	# 2258
	flw		f2, 0(x4)	# 2258
	fmul	f2, f1, f2	# 2258
	mul		x4, x30, x14	# 2258
	addi	x4, x4, 64480	# 2258
	flw		f3, 0(x4)	# 2258
	fadd	f2, f2, f3	# 2258
	mul		x4, x30, x15	# 2259
	addi	x4, x4, 64468	# 2259
	flw		f3, 0(x4)	# 2259
	fmul	f3, f1, f3	# 2259
	mul		x4, x30, x15	# 2259
	addi	x4, x4, 64480	# 2259
	flw		f4, 0(x4)	# 2259
	fadd	f3, f3, f4	# 2259
	mul		x4, x30, x13	# 2260
	addi	x4, x4, 64468	# 2260
	flw		f4, 0(x4)	# 2260
	fmul	f1, f1, f4	# 2260
	mul		x4, x30, x13	# 2260
	addi	x4, x4, 64480	# 2260
	flw		f4, 0(x4)	# 2260
	fadd	f1, f1, f4	# 2260
	mul		x4, x30, x14	# 2261
	addi	x4, x4, 64412	# 2261
	lw		x4, 0(x4)	# 2261
	sub		x5, x4, x15	# 2261
	addi	x6, x8, 0	# 2261
	addi	x4, x7, 0	# 2261
	addi	x29, x11, 0	# 2261
	fadd	f31, f0, f3	# 2261
	fadd	f3, f0, f1	# 2261
	fadd	f1, f0, f2	# 2261
	fadd	f2, f0, f31	# 2261
	sw		x1, -52(x2)	# 2261
	addi	x2, x2, -56	# 2261
	lw		x31, 0(x29)	# 2261
	jalr	x1, x31, 0	# 2261
	addi	x2, x2, 56	# 2261
	lw		x1, -52(x2)	# 2261
	jal		x0, ble_cont.32915	# 2294
ble_cont.32915:
	lw		x4, -40(x2)	# 2297
	lw		x5, -36(x2)	# 2297
	lw		x6, -32(x2)	# 2297
	lw		x7, -28(x2)	# 2297
	lw		x8, -24(x2)	# 2297
	lw		x9, -20(x2)	# 2297
	lw		x29, -44(x2)	# 2297
	sw		x1, -52(x2)	# 2297
	addi	x2, x2, -56	# 2297
	lw		x31, 0(x29)	# 2297
	jalr	x1, x31, 0	# 2297
	addi	x2, x2, 56	# 2297
	lw		x1, -52(x2)	# 2297
	lw		x4, -16(x2)	# 2298
	lw		x5, -36(x2)	# 2298
	add		x4, x5, x4	# 2298
	lw		x5, -8(x2)	# 261
	lw		x6, -12(x2)	# 261
	add		x5, x6, x5	# 261
	lw		x6, -4(x2)	# 262
	ble		x6, x5, ble.32918	# 262
	addi	x8, x5, 0	# 262
	jal		x0, ble_cont.32917	# 262
ble.32918:
	sub		x8, x5, x6	# 262
ble_cont.32917:
	lw		x5, -28(x2)	# 2298
	lw		x6, -24(x2)	# 2298
	lw		x7, -32(x2)	# 2298
	lw		x9, -20(x2)	# 2298
	lw		x29, 0(x2)	# 2298
	lw		x31, 0(x29)	# 2298
	jalr	x0, x31, 0	# 2298
ble.32914:
	jalr	x0, x1, 0	# 2299
init_line_elements.2982.18131:
	lw		x6, 24(x29)	# 2334
	lw		x7, 20(x29)	# 2334
	lw		x8, 16(x29)	# 2334
	lw		x9, 12(x29)	# 2334
	lw		x10, 8(x29)	# 2334
	flw		f1, 4(x29)	# 2334
	ble		x9, x5, ble.32920	# 2334
	jalr	x0, x1, 0	# 2338
ble.32920:
	sw		x4, 0(x2)	# 2321
	sw		x5, -4(x2)	# 2321
	fsw		f1, -8(x2)	# 2321
	addi	x4, x8, 0	# 2321
	sw		x1, -12(x2)	# 2321
	addi	x2, x2, -16	# 2321
	jal		x1, min_caml_create_float_array	# 2321
	addi	x2, x2, 16	# 2321
	lw		x1, -12(x2)	# 2321
	flw		f1, -8(x2)	# 2309
	sw		x4, -12(x2)	# 2309
	addi	x4, x8, 0	# 2309
	sw		x1, -16(x2)	# 2309
	addi	x2, x2, -20	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 20	# 2309
	lw		x1, -16(x2)	# 2309
	addi	x5, x4, 0	# 2309
	sw		x6, -16(x2)	# 2310
	addi	x4, x6, 0	# 2310
	sw		x1, -20(x2)	# 2310
	addi	x2, x2, -24	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 24	# 2310
	lw		x1, -20(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	sw		x4, -20(x2)	# 2311
	addi	x4, x8, 0	# 2311
	sw		x1, -24(x2)	# 2311
	addi	x2, x2, -28	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 28	# 2311
	lw		x1, -24(x2)	# 2311
	mul		x5, x30, x10	# 2311
	lw		x6, -20(x2)	# 2311
	add		x5, x6, x5	# 2311
	sw		x4, 0(x5)	# 2311
	flw		f1, -8(x2)	# 2312
	addi	x4, x8, 0	# 2312
	sw		x1, -24(x2)	# 2312
	addi	x2, x2, -28	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 28	# 2312
	lw		x1, -24(x2)	# 2312
	mul		x5, x30, x7	# 2312
	add		x5, x6, x5	# 2312
	sw		x4, 0(x5)	# 2312
	flw		f1, -8(x2)	# 2313
	addi	x4, x8, 0	# 2313
	sw		x1, -24(x2)	# 2313
	addi	x2, x2, -28	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 28	# 2313
	lw		x1, -24(x2)	# 2313
	mul		x5, x30, x8	# 2313
	add		x5, x6, x5	# 2313
	sw		x4, 0(x5)	# 2313
	addi	x4, x0, 4	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -24(x2)	# 2314
	addi	x4, x8, 0	# 2314
	sw		x1, -28(x2)	# 2314
	addi	x2, x2, -32	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 32	# 2314
	lw		x1, -28(x2)	# 2314
	lw		x5, -24(x2)	# 2314
	mul		x11, x30, x5	# 2314
	add		x11, x6, x11	# 2314
	sw		x4, 0(x11)	# 2314
	lw		x4, -16(x2)	# 2323
	addi	x5, x9, 0	# 2323
	sw		x1, -28(x2)	# 2323
	addi	x2, x2, -32	# 2323
	jal		x1, min_caml_create_array	# 2323
	addi	x2, x2, 32	# 2323
	lw		x1, -28(x2)	# 2323
	lw		x5, -16(x2)	# 2324
	sw		x4, -28(x2)	# 2324
	addi	x4, x5, 0	# 2324
	addi	x5, x9, 0	# 2324
	sw		x1, -32(x2)	# 2324
	addi	x2, x2, -36	# 2324
	jal		x1, min_caml_create_array	# 2324
	addi	x2, x2, 36	# 2324
	lw		x1, -32(x2)	# 2324
	flw		f1, -8(x2)	# 2309
	sw		x4, -32(x2)	# 2309
	addi	x4, x8, 0	# 2309
	sw		x1, -36(x2)	# 2309
	addi	x2, x2, -40	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 40	# 2309
	lw		x1, -36(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -16(x2)	# 2310
	sw		x1, -36(x2)	# 2310
	addi	x2, x2, -40	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 40	# 2310
	lw		x1, -36(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	sw		x4, -36(x2)	# 2311
	addi	x4, x8, 0	# 2311
	sw		x1, -40(x2)	# 2311
	addi	x2, x2, -44	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 44	# 2311
	lw		x1, -40(x2)	# 2311
	mul		x5, x30, x10	# 2311
	lw		x6, -36(x2)	# 2311
	add		x5, x6, x5	# 2311
	sw		x4, 0(x5)	# 2311
	flw		f1, -8(x2)	# 2312
	addi	x4, x8, 0	# 2312
	sw		x1, -40(x2)	# 2312
	addi	x2, x2, -44	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 44	# 2312
	lw		x1, -40(x2)	# 2312
	mul		x5, x30, x7	# 2312
	add		x5, x6, x5	# 2312
	sw		x4, 0(x5)	# 2312
	flw		f1, -8(x2)	# 2313
	addi	x4, x8, 0	# 2313
	sw		x1, -40(x2)	# 2313
	addi	x2, x2, -44	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 44	# 2313
	lw		x1, -40(x2)	# 2313
	mul		x5, x30, x8	# 2313
	add		x5, x6, x5	# 2313
	sw		x4, 0(x5)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x8, 0	# 2314
	sw		x1, -40(x2)	# 2314
	addi	x2, x2, -44	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 44	# 2314
	lw		x1, -40(x2)	# 2314
	lw		x5, -24(x2)	# 2314
	mul		x11, x30, x5	# 2314
	add		x11, x6, x11	# 2314
	sw		x4, 0(x11)	# 2314
	flw		f1, -8(x2)	# 2309
	addi	x4, x8, 0	# 2309
	sw		x1, -40(x2)	# 2309
	addi	x2, x2, -44	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 44	# 2309
	lw		x1, -40(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -16(x2)	# 2310
	sw		x1, -40(x2)	# 2310
	addi	x2, x2, -44	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 44	# 2310
	lw		x1, -40(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	sw		x4, -40(x2)	# 2311
	addi	x4, x8, 0	# 2311
	sw		x1, -44(x2)	# 2311
	addi	x2, x2, -48	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 48	# 2311
	lw		x1, -44(x2)	# 2311
	mul		x5, x30, x10	# 2311
	lw		x6, -40(x2)	# 2311
	add		x5, x6, x5	# 2311
	sw		x4, 0(x5)	# 2311
	flw		f1, -8(x2)	# 2312
	addi	x4, x8, 0	# 2312
	sw		x1, -44(x2)	# 2312
	addi	x2, x2, -48	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 48	# 2312
	lw		x1, -44(x2)	# 2312
	mul		x5, x30, x7	# 2312
	add		x5, x6, x5	# 2312
	sw		x4, 0(x5)	# 2312
	flw		f1, -8(x2)	# 2313
	addi	x4, x8, 0	# 2313
	sw		x1, -44(x2)	# 2313
	addi	x2, x2, -48	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 48	# 2313
	lw		x1, -44(x2)	# 2313
	mul		x5, x30, x8	# 2313
	add		x5, x6, x5	# 2313
	sw		x4, 0(x5)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x8, 0	# 2314
	sw		x1, -44(x2)	# 2314
	addi	x2, x2, -48	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 48	# 2314
	lw		x1, -44(x2)	# 2314
	lw		x5, -24(x2)	# 2314
	mul		x11, x30, x5	# 2314
	add		x11, x6, x11	# 2314
	sw		x4, 0(x11)	# 2314
	addi	x5, x9, 0	# 2327
	addi	x4, x10, 0	# 2327
	sw		x1, -44(x2)	# 2327
	addi	x2, x2, -48	# 2327
	jal		x1, min_caml_create_array	# 2327
	addi	x2, x2, 48	# 2327
	lw		x1, -44(x2)	# 2327
	flw		f1, -8(x2)	# 2309
	sw		x4, -44(x2)	# 2309
	addi	x4, x8, 0	# 2309
	sw		x1, -48(x2)	# 2309
	addi	x2, x2, -52	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 52	# 2309
	lw		x1, -48(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -16(x2)	# 2310
	sw		x1, -48(x2)	# 2310
	addi	x2, x2, -52	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 52	# 2310
	lw		x1, -48(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	sw		x4, -48(x2)	# 2311
	addi	x4, x8, 0	# 2311
	sw		x1, -52(x2)	# 2311
	addi	x2, x2, -56	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 56	# 2311
	lw		x1, -52(x2)	# 2311
	mul		x5, x30, x10	# 2311
	lw		x6, -48(x2)	# 2311
	add		x5, x6, x5	# 2311
	sw		x4, 0(x5)	# 2311
	flw		f1, -8(x2)	# 2312
	addi	x4, x8, 0	# 2312
	sw		x1, -52(x2)	# 2312
	addi	x2, x2, -56	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 56	# 2312
	lw		x1, -52(x2)	# 2312
	mul		x5, x30, x7	# 2312
	add		x5, x6, x5	# 2312
	sw		x4, 0(x5)	# 2312
	flw		f1, -8(x2)	# 2313
	addi	x4, x8, 0	# 2313
	sw		x1, -52(x2)	# 2313
	addi	x2, x2, -56	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 56	# 2313
	lw		x1, -52(x2)	# 2313
	mul		x5, x30, x8	# 2313
	add		x5, x6, x5	# 2313
	sw		x4, 0(x5)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x8, 0	# 2314
	sw		x1, -52(x2)	# 2314
	addi	x2, x2, -56	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 56	# 2314
	lw		x1, -52(x2)	# 2314
	lw		x5, -24(x2)	# 2314
	mul		x5, x30, x5	# 2314
	add		x5, x6, x5	# 2314
	sw		x4, 0(x5)	# 2314
	addi	x4, x3, 0	# 2329
	addi	x3, x3, 32	# 2329
	sw		x6, 28(x4)	# 2329
	lw		x5, -44(x2)	# 2329
	sw		x5, 24(x4)	# 2329
	lw		x5, -40(x2)	# 2329
	sw		x5, 20(x4)	# 2329
	lw		x5, -36(x2)	# 2329
	sw		x5, 16(x4)	# 2329
	lw		x5, -32(x2)	# 2329
	sw		x5, 12(x4)	# 2329
	lw		x5, -28(x2)	# 2329
	sw		x5, 8(x4)	# 2329
	lw		x5, -20(x2)	# 2329
	sw		x5, 4(x4)	# 2329
	lw		x5, -12(x2)	# 2329
	sw		x5, 0(x4)	# 2329
	lw		x5, -4(x2)	# 2335
	mul		x6, x30, x5	# 2335
	lw		x7, 0(x2)	# 2335
	add		x6, x7, x6	# 2335
	sw		x4, 0(x6)	# 2335
	sub		x5, x5, x10	# 2336
	addi	x4, x7, 0	# 2336
	lw		x31, 0(x29)	# 2336
	jalr	x0, x31, 0	# 2336
calc_dirvec.2992.18134:
	lw		x7, 28(x29)	# 2371
	lw		x8, 24(x29)	# 2371
	lw		x9, 20(x29)	# 2371
	lw		x10, 16(x29)	# 2371
	lw		x11, 12(x29)	# 2371
	lw		x12, 8(x29)	# 2371
	lw		x13, 4(x29)	# 2371
	ble		x10, x4, ble.32921	# 2371
	fmul	f1, f2, f2	# 2362
	lui		x10, %hi(l.28237)	# 2362
	ori		x10, x0, %lo(l.28237)	# 2362
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
	addi	x29, x9, 0	# 2364
	fadd	f1, f0, f6	# 2364
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
	fadd	f1, f0, f2	# 2357
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
	fadd	f1, f0, f3	# 2364
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
	fadd	f1, f0, f2	# 2357
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
ble.32921:
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
	addi	x4, x4, 64512	# 2378
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
calc_dirvecs.3000.18142:
	lw		x7, 24(x29)	# 2392
	lw		x8, 20(x29)	# 2392
	lw		x9, 16(x29)	# 2392
	lw		x10, 12(x29)	# 2392
	lw		x11, 8(x29)	# 2392
	flw		f2, 4(x29)	# 2392
	ble		x10, x4, ble.32923	# 2392
	jalr	x0, x1, 0	# 2401
ble.32923:
	sw		x4, 0(x2)	# 2394
	fsw		f1, -4(x2)	# 2394
	fsw		f2, -8(x2)	# 2394
	sw		x6, -12(x2)	# 2394
	sw		x5, -16(x2)	# 2394
	sw		x1, -20(x2)	# 2394
	addi	x2, x2, -24	# 2394
	jal		x1, min_caml_float_of_int	# 2394
	addi	x2, x2, 24	# 2394
	lw		x1, -20(x2)	# 2394
	lui		x4, %hi(l.26467)	# 2394
	ori		x4, x0, %lo(l.26467)	# 2394
	flw		f2, 0(x4)	# 2394
	fmul	f1, f1, f2	# 2394
	lui		x4, %hi(l.29270)	# 2394
	ori		x4, x0, %lo(l.29270)	# 2394
	flw		f3, 0(x4)	# 2394
	fsub	f3, f1, f3	# 2394
	flw		f1, -8(x2)	# 2395
	flw		f4, -4(x2)	# 2395
	lw		x5, -16(x2)	# 2395
	lw		x6, -12(x2)	# 2395
	sw		x29, -20(x2)	# 2395
	sw		x8, -24(x2)	# 2395
	sw		x11, -28(x2)	# 2395
	sw		x10, -32(x2)	# 2395
	sw		x7, -36(x2)	# 2395
	sw		x9, -40(x2)	# 2395
	fsw		f2, -44(x2)	# 2395
	addi	x4, x10, 0	# 2395
	addi	x29, x7, 0	# 2395
	fadd	f2, f0, f1	# 2395
	sw		x1, -48(x2)	# 2395
	addi	x2, x2, -52	# 2395
	lw		x31, 0(x29)	# 2395
	jalr	x1, x31, 0	# 2395
	addi	x2, x2, 52	# 2395
	lw		x1, -48(x2)	# 2395
	lw		x4, 0(x2)	# 2397
	sw		x1, -48(x2)	# 2397
	addi	x2, x2, -52	# 2397
	jal		x1, min_caml_float_of_int	# 2397
	addi	x2, x2, 52	# 2397
	lw		x1, -48(x2)	# 2397
	flw		f2, -44(x2)	# 2397
	fmul	f1, f1, f2	# 2397
	lui		x4, %hi(l.28237)	# 2397
	ori		x4, x0, %lo(l.28237)	# 2397
	flw		f2, 0(x4)	# 2397
	fadd	f3, f1, f2	# 2397
	lw		x4, -40(x2)	# 2398
	lw		x5, -12(x2)	# 2398
	add		x6, x5, x4	# 2398
	flw		f1, -8(x2)	# 2398
	flw		f4, -4(x2)	# 2398
	lw		x4, -32(x2)	# 2398
	lw		x7, -16(x2)	# 2398
	lw		x29, -36(x2)	# 2398
	addi	x5, x7, 0	# 2398
	fadd	f2, f0, f1	# 2398
	sw		x1, -48(x2)	# 2398
	addi	x2, x2, -52	# 2398
	lw		x31, 0(x29)	# 2398
	jalr	x1, x31, 0	# 2398
	addi	x2, x2, 52	# 2398
	lw		x1, -48(x2)	# 2398
	lw		x4, -28(x2)	# 2400
	lw		x5, 0(x2)	# 2400
	sub		x5, x5, x4	# 2400
	lw		x6, -16(x2)	# 261
	add		x4, x6, x4	# 261
	lw		x6, -24(x2)	# 262
	ble		x6, x4, ble.32926	# 262
	jal		x0, ble_cont.32925	# 262
ble.32926:
	sub		x4, x4, x6	# 262
ble_cont.32925:
	flw		f1, -4(x2)	# 2400
	lw		x6, -12(x2)	# 2400
	lw		x29, -20(x2)	# 2400
	addi	x31, x5, 0	# 2400
	addi	x5, x4, 0	# 2400
	addi	x4, x31, 0	# 2400
	lw		x31, 0(x29)	# 2400
	jalr	x0, x31, 0	# 2400
calc_dirvec_rows.3005.18147:
	lw		x7, 20(x29)	# 2406
	lw		x8, 16(x29)	# 2406
	lw		x9, 12(x29)	# 2406
	lw		x10, 8(x29)	# 2406
	lw		x11, 4(x29)	# 2406
	ble		x10, x4, ble.32927	# 2406
	jalr	x0, x1, 0	# 2410
ble.32927:
	sw		x4, 0(x2)	# 2407
	sw		x6, -4(x2)	# 2407
	sw		x5, -8(x2)	# 2407
	sw		x1, -12(x2)	# 2407
	addi	x2, x2, -16	# 2407
	jal		x1, min_caml_float_of_int	# 2407
	addi	x2, x2, 16	# 2407
	lw		x1, -12(x2)	# 2407
	lui		x4, %hi(l.26467)	# 2407
	ori		x4, x0, %lo(l.26467)	# 2407
	flw		f2, 0(x4)	# 2407
	fmul	f1, f1, f2	# 2407
	lui		x4, %hi(l.29270)	# 2407
	ori		x4, x0, %lo(l.29270)	# 2407
	flw		f2, 0(x4)	# 2407
	fsub	f1, f1, f2	# 2407
	addi	x4, x0, 4	# 2408
	lw		x5, -8(x2)	# 2408
	lw		x6, -4(x2)	# 2408
	sw		x29, -12(x2)	# 2408
	sw		x8, -16(x2)	# 2408
	sw		x9, -20(x2)	# 2408
	sw		x11, -24(x2)	# 2408
	addi	x29, x7, 0	# 2408
	sw		x1, -28(x2)	# 2408
	addi	x2, x2, -32	# 2408
	lw		x31, 0(x29)	# 2408
	jalr	x1, x31, 0	# 2408
	addi	x2, x2, 32	# 2408
	lw		x1, -28(x2)	# 2408
	lw		x4, -24(x2)	# 2409
	lw		x5, 0(x2)	# 2409
	sub		x4, x5, x4	# 2409
	lw		x5, -20(x2)	# 261
	lw		x6, -8(x2)	# 261
	add		x5, x6, x5	# 261
	lw		x6, -16(x2)	# 262
	ble		x6, x5, ble.32930	# 262
	jal		x0, ble_cont.32929	# 262
ble.32930:
	sub		x5, x5, x6	# 262
ble_cont.32929:
	lw		x6, -4(x2)	# 2409
	addi	x6, x6, 4	# 2409
	lw		x29, -12(x2)	# 2409
	lw		x31, 0(x29)	# 2409
	jalr	x0, x31, 0	# 2409
create_dirvec_elements.3011.18151:
	lw		x6, 16(x29)	# 2425
	lw		x7, 12(x29)	# 2425
	lw		x8, 8(x29)	# 2425
	flw		f1, 4(x29)	# 2425
	ble		x7, x5, ble.32931	# 2425
	jalr	x0, x1, 0	# 2428
ble.32931:
	sw		x4, 0(x2)	# 2419
	sw		x5, -4(x2)	# 2419
	addi	x4, x6, 0	# 2419
	sw		x1, -8(x2)	# 2419
	addi	x2, x2, -12	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 12	# 2419
	lw		x1, -8(x2)	# 2419
	addi	x5, x4, 0	# 2419
	mul		x4, x30, x7	# 2420
	addi	x4, x4, 63796	# 2420
	lw		x4, 0(x4)	# 2420
	sw		x5, -8(x2)	# 2420
	sw		x1, -12(x2)	# 2420
	addi	x2, x2, -16	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 16	# 2420
	lw		x1, -12(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -8(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	addi	x4, x5, 0	# 2421
	lw		x5, -4(x2)	# 2426
	mul		x6, x30, x5	# 2426
	lw		x7, 0(x2)	# 2426
	add		x6, x7, x6	# 2426
	sw		x4, 0(x6)	# 2426
	sub		x5, x5, x8	# 2427
	addi	x4, x7, 0	# 2427
	lw		x31, 0(x29)	# 2427
	jalr	x0, x31, 0	# 2427
create_dirvecs.3014.18154:
	lw		x5, 20(x29)	# 2432
	lw		x6, 16(x29)	# 2432
	lw		x7, 12(x29)	# 2432
	lw		x8, 8(x29)	# 2432
	flw		f1, 4(x29)	# 2432
	ble		x7, x4, ble.32933	# 2432
	jalr	x0, x1, 0	# 2436
ble.32933:
	addi	x9, x0, 120	# 2433
	sw		x5, 0(x2)	# 2419
	sw		x4, -4(x2)	# 2419
	addi	x4, x6, 0	# 2419
	sw		x1, -8(x2)	# 2419
	addi	x2, x2, -12	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 12	# 2419
	lw		x1, -8(x2)	# 2419
	addi	x5, x4, 0	# 2419
	mul		x4, x30, x7	# 2420
	addi	x4, x4, 63796	# 2420
	lw		x4, 0(x4)	# 2420
	sw		x5, -8(x2)	# 2420
	sw		x1, -12(x2)	# 2420
	addi	x2, x2, -16	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 16	# 2420
	lw		x1, -12(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -8(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	addi	x4, x9, 0	# 2433
	sw		x1, -12(x2)	# 2433
	addi	x2, x2, -16	# 2433
	jal		x1, min_caml_create_array	# 2433
	addi	x2, x2, 16	# 2433
	lw		x1, -12(x2)	# 2433
	lw		x5, -4(x2)	# 2433
	mul		x6, x30, x5	# 2433
	addi	x6, x6, 64512	# 2433
	sw		x4, 0(x6)	# 2433
	mul		x4, x30, x5	# 2434
	addi	x4, x4, 64512	# 2434
	lw		x4, 0(x4)	# 2434
	addi	x6, x0, 118	# 2434
	lw		x7, 0(x2)	# 2434
	sw		x29, -12(x2)	# 2434
	sw		x8, -16(x2)	# 2434
	addi	x5, x6, 0	# 2434
	addi	x29, x7, 0	# 2434
	sw		x1, -20(x2)	# 2434
	addi	x2, x2, -24	# 2434
	lw		x31, 0(x29)	# 2434
	jalr	x1, x31, 0	# 2434
	addi	x2, x2, 24	# 2434
	lw		x1, -20(x2)	# 2434
	lw		x4, -16(x2)	# 2435
	lw		x5, -4(x2)	# 2435
	sub		x4, x5, x4	# 2435
	lw		x29, -12(x2)	# 2435
	lw		x31, 0(x29)	# 2435
	jalr	x0, x31, 0	# 2435
init_dirvec_constants.3016.18156:
	lw		x6, 12(x29)	# 2444
	lw		x7, 8(x29)	# 2444
	lw		x8, 4(x29)	# 2444
	ble		x7, x5, ble.32935	# 2444
	jalr	x0, x1, 0	# 2447
ble.32935:
	mul		x9, x30, x5	# 2445
	add		x9, x4, x9	# 2445
	lw		x9, 0(x9)	# 2445
	mul		x7, x30, x7	# 1324
	addi	x7, x7, 63796	# 1324
	lw		x7, 0(x7)	# 1324
	sub		x7, x7, x8	# 1324
	sw		x4, 0(x2)	# 1324
	sw		x29, -4(x2)	# 1324
	sw		x8, -8(x2)	# 1324
	sw		x5, -12(x2)	# 1324
	addi	x5, x7, 0	# 1324
	addi	x4, x9, 0	# 1324
	addi	x29, x6, 0	# 1324
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
init_vecset_constants.3019.18159:
	lw		x5, 12(x29)	# 2451
	lw		x6, 8(x29)	# 2451
	lw		x7, 4(x29)	# 2451
	ble		x6, x4, ble.32937	# 2451
	jalr	x0, x1, 0	# 2454
ble.32937:
	mul		x6, x30, x4	# 2452
	addi	x6, x6, 64512	# 2452
	lw		x6, 0(x6)	# 2452
	addi	x8, x0, 119	# 2452
	sw		x29, 0(x2)	# 2452
	sw		x7, -4(x2)	# 2452
	sw		x4, -8(x2)	# 2452
	addi	x4, x6, 0	# 2452
	addi	x29, x5, 0	# 2452
	addi	x5, x8, 0	# 2452
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
	addi	x2, x2, -4	# 0
	addi	x30, x0, 4	# 0
	addi	x3, x0, 63796	# 0
	lui		x4, %hi(l.29297)	# 0
	ori		x4, x0, %lo(l.29297)	# 0
	flw		f0, 0(x4)	# 0
	lui		x4, %hi(l.26432)	# 0
	ori		x4, x0, %lo(l.26432)	# 0
	flw		f16, 0(x4)	# 0
	lui		x4, %hi(l.26441)	# 0
	ori		x4, x0, %lo(l.26441)	# 0
	flw		f17, 0(x4)	# 0
	lui		x4, %hi(l.26437)	# 0
	ori		x4, x0, %lo(l.26437)	# 0
	flw		f18, 0(x4)	# 0
	lui		x4, %hi(l.26917)	# 0
	ori		x4, x0, %lo(l.26917)	# 0
	flw		f19, 0(x4)	# 0
	lui		x4, %hi(l.26915)	# 0
	ori		x4, x0, %lo(l.26915)	# 0
	flw		f20, 0(x4)	# 0
	lui		x4, %hi(l.27036)	# 0
	ori		x4, x0, %lo(l.27036)	# 0
	flw		f21, 0(x4)	# 0
	lui		x4, %hi(l.27804)	# 0
	ori		x4, x0, %lo(l.27804)	# 0
	flw		f22, 0(x4)	# 0
	lui		x4, %hi(l.26430)	# 0
	ori		x4, x0, %lo(l.26430)	# 0
	flw		f23, 0(x4)	# 0
	lui		x4, %hi(l.28502)	# 0
	ori		x4, x0, %lo(l.28502)	# 0
	flw		f24, 0(x4)	# 0
	lui		x4, %hi(l.28290)	# 0
	ori		x4, x0, %lo(l.28290)	# 0
	flw		f25, 0(x4)	# 0
	lui		x4, %hi(l.26434)	# 0
	ori		x4, x0, %lo(l.26434)	# 0
	flw		f26, 0(x4)	# 0
	lui		x4, %hi(l.26439)	# 0
	ori		x4, x0, %lo(l.26439)	# 0
	flw		f27, 0(x4)	# 0
	lui		x4, %hi(l.26578)	# 0
	ori		x4, x0, %lo(l.26578)	# 0
	flw		f28, 0(x4)	# 0
	lui		x4, %hi(l.28012)	# 0
	ori		x4, x0, %lo(l.28012)	# 0
	flw		f29, 0(x4)	# 0
	lui		x4, %hi(l.28024)	# 0
	ori		x4, x0, %lo(l.28024)	# 0
	flw		f30, 0(x4)	# 0
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
	addi	x4, x0, 63800	# 11
	lw		x5, -4(x2)	# 11
	fsw		f1, -8(x2)	# 11
	sw		x4, -12(x2)	# 11
	addi	x4, x5, 0	# 11
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
	lui		x4, %hi(l.29311)	# 25
	ori		x4, x0, %lo(l.29311)	# 25
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
	addi	x6, x0, 64124	# 28
	lw		x8, 0(x2)	# 28
	sw		x5, -28(x2)	# 28
	sw		x6, -32(x2)	# 28
	sw		x4, -36(x2)	# 28
	addi	x4, x8, 0	# 28
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
	mul		x4, x30, x7	# 31
	addi	x4, x4, 64128	# 31
	lw		x5, 0(x4)	# 31
	addi	x4, x0, 64328	# 31
	sw		x4, -40(x2)	# 31
	addi	x4, x8, 0	# 31
	sw		x1, -44(x2)	# 31
	addi	x2, x2, -48	# 31
	jal		x1, min_caml_create_array	# 31
	addi	x2, x2, 48	# 31
	lw		x1, -44(x2)	# 31
	lw		x5, -40(x2)	# 31
	addi	x4, x8, 0	# 31
	sw		x1, -44(x2)	# 31
	addi	x2, x2, -48	# 31
	jal		x1, min_caml_create_array	# 31
	addi	x2, x2, 48	# 31
	lw		x1, -44(x2)	# 31
	flw		f1, -8(x2)	# 36
	addi	x4, x8, 0	# 36
	sw		x1, -44(x2)	# 36
	addi	x2, x2, -48	# 36
	jal		x1, min_caml_create_float_array	# 36
	addi	x2, x2, 48	# 36
	lw		x1, -44(x2)	# 36
	addi	x5, x7, 0	# 39
	addi	x4, x8, 0	# 39
	sw		x1, -44(x2)	# 39
	addi	x2, x2, -48	# 39
	jal		x1, min_caml_create_array	# 39
	addi	x2, x2, 48	# 39
	lw		x1, -44(x2)	# 39
	lui		x4, %hi(l.29315)	# 42
	ori		x4, x0, %lo(l.29315)	# 42
	flw		f1, 0(x4)	# 42
	fsw		f1, -44(x2)	# 42
	addi	x4, x8, 0	# 42
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
	addi	x5, x7, 0	# 48
	addi	x4, x8, 0	# 48
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
	sw		x4, -48(x2)	# 65
	addi	x5, x7, 0	# 65
	sw		x1, -52(x2)	# 65
	addi	x2, x2, -56	# 65
	jal		x1, min_caml_create_array	# 65
	addi	x2, x2, 56	# 65
	lw		x1, -52(x2)	# 65
	lw		x4, -48(x2)	# 68
	addi	x5, x7, 0	# 68
	sw		x1, -52(x2)	# 68
	addi	x2, x2, -56	# 68
	jal		x1, min_caml_create_array	# 68
	addi	x2, x2, 56	# 68
	lw		x1, -52(x2)	# 68
	flw		f1, -8(x2)	# 71
	addi	x4, x8, 0	# 71
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
	addi	x4, x0, 64504	# 95
	flw		f1, -8(x2)	# 95
	sw		x4, -52(x2)	# 95
	addi	x4, x7, 0	# 95
	sw		x1, -56(x2)	# 95
	addi	x2, x2, -60	# 95
	jal		x1, min_caml_create_float_array	# 95
	addi	x2, x2, 60	# 95
	lw		x1, -56(x2)	# 95
	addi	x4, x0, 64504	# 96
	lw		x5, -52(x2)	# 96
	sw		x4, -56(x2)	# 96
	addi	x4, x7, 0	# 96
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
	addi	x4, x0, 64512	# 97
	sw		x4, -60(x2)	# 97
	addi	x4, x7, 0	# 97
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
	addi	x4, x0, 64532	# 103
	flw		f1, -8(x2)	# 103
	sw		x4, -68(x2)	# 103
	addi	x4, x7, 0	# 103
	sw		x1, -72(x2)	# 103
	addi	x2, x2, -76	# 103
	jal		x1, min_caml_create_float_array	# 103
	addi	x2, x2, 76	# 103
	lw		x1, -72(x2)	# 103
	addi	x4, x0, 64532	# 104
	flw		f1, -8(x2)	# 104
	lw		x5, -20(x2)	# 104
	sw		x4, -72(x2)	# 104
	addi	x4, x5, 0	# 104
	sw		x1, -76(x2)	# 104
	addi	x2, x2, -80	# 104
	jal		x1, min_caml_create_float_array	# 104
	addi	x2, x2, 80	# 104
	lw		x1, -76(x2)	# 104
	addi	x4, x0, 64544	# 105
	lw		x5, -16(x2)	# 105
	lw		x6, -68(x2)	# 105
	sw		x4, -76(x2)	# 105
	addi	x4, x5, 0	# 105
	addi	x5, x6, 0	# 105
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
	addi	x5, x0, 64792	# 111
	flw		f1, -8(x2)	# 111
	sw		x4, -80(x2)	# 111
	sw		x5, -84(x2)	# 111
	addi	x4, x7, 0	# 111
	sw		x1, -88(x2)	# 111
	addi	x2, x2, -92	# 111
	jal		x1, min_caml_create_float_array	# 111
	addi	x2, x2, 92	# 111
	lw		x1, -88(x2)	# 111
	addi	x4, x0, 64792	# 112
	lw		x5, -84(x2)	# 112
	sw		x4, -88(x2)	# 112
	addi	x4, x7, 0	# 112
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
	sw		x7, 0(x6)	# 114
	addi	x4, x6, 0	# 114
	addi	x31, x5, 0	# 114
	addi	x5, x4, 0	# 114
	addi	x4, x31, 0	# 114
	sw		x1, -92(x2)	# 114
	addi	x2, x2, -96	# 114
	jal		x1, min_caml_create_array	# 114
	addi	x2, x2, 96	# 114
	lw		x1, -92(x2)	# 114
	addi	x5, x7, 0	# 118
	addi	x4, x8, 0	# 118
	sw		x1, -92(x2)	# 118
	addi	x2, x2, -96	# 118
	jal		x1, min_caml_create_array	# 118
	addi	x2, x2, 96	# 118
	lw		x1, -92(x2)	# 118
	addi	x4, x3, 0	# 144
	addi	x3, x3, 8	# 144
	lui		x5, %hi(int_of_float_rem.2530.18012)	# 144
	ori		x5, x0, %lo(int_of_float_rem.2530.18012)	# 144
	sw		x5, 0(x4)	# 149
	sw		x8, 4(x4)	# 149
	addi	x5, x3, 0	# 149
	addi	x3, x3, 8	# 149
	lui		x6, %hi(int_of_float_four.2533.18015)	# 149
	ori		x6, x0, %lo(int_of_float_four.2533.18015)	# 149
	sw		x6, 0(x5)	# 173
	sw		x4, 4(x5)	# 173
	lui		x4, %hi(l.29330)	# 173
	ori		x4, x0, %lo(l.29330)	# 173
	flw		f2, 0(x4)	# 173
	lui		x4, %hi(l.29332)	# 174
	ori		x4, x0, %lo(l.29332)	# 174
	flw		f3, 0(x4)	# 174
	lui		x4, %hi(l.29334)	# 175
	ori		x4, x0, %lo(l.29334)	# 175
	flw		f4, 0(x4)	# 175
	lui		x4, %hi(l.29336)	# 176
	ori		x4, x0, %lo(l.29336)	# 176
	flw		f5, 0(x4)	# 176
	addi	x4, x3, 0	# 198
	addi	x3, x3, 24	# 198
	lui		x6, %hi(sin.2548.18022)	# 198
	ori		x6, x0, %lo(sin.2548.18022)	# 198
	sw		x6, 0(x4)	# 206
	fsw		f5, 20(x4)	# 206
	fsw		f4, 16(x4)	# 206
	fsw		f3, 12(x4)	# 206
	fsw		f2, 8(x4)	# 206
	fsw		f1, 4(x4)	# 206
	addi	x6, x3, 0	# 206
	addi	x3, x3, 20	# 206
	lui		x9, %hi(cos.2550.18024)	# 206
	ori		x9, x0, %lo(cos.2550.18024)	# 206
	sw		x9, 0(x6)	# 211
	sw		x4, 16(x6)	# 211
	fsw		f5, 12(x6)	# 211
	fsw		f4, 8(x6)	# 211
	fsw		f1, 4(x6)	# 211
	addi	x9, x3, 0	# 211
	addi	x3, x3, 16	# 211
	lui		x10, %hi(atan.2552.18026)	# 211
	ori		x10, x0, %lo(atan.2552.18026)	# 211
	sw		x10, 0(x9)	# 897
	fsw		f5, 12(x9)	# 897
	fsw		f4, 8(x9)	# 897
	fsw		f1, 4(x9)	# 897
	addi	x10, x3, 0	# 897
	addi	x3, x3, 40	# 897
	lui		x11, %hi(read_object.2689.18028)	# 897
	ori		x11, x0, %lo(read_object.2689.18028)	# 897
	sw		x11, 0(x10)	# 913
	sw		x4, 36(x10)	# 913
	sw		x6, 32(x10)	# 913
	lw		x11, -48(x2)	# 913
	sw		x11, 28(x10)	# 913
	lw		x12, -28(x2)	# 913
	sw		x12, 24(x10)	# 913
	lw		x13, -20(x2)	# 913
	sw		x13, 20(x10)	# 913
	lw		x14, -16(x2)	# 913
	sw		x14, 16(x10)	# 913
	sw		x7, 12(x10)	# 913
	sw		x8, 8(x10)	# 913
	fsw		f1, 4(x10)	# 913
	addi	x14, x3, 0	# 913
	addi	x3, x3, 12	# 913
	lui		x15, %hi(read_net_item.2693.18030)	# 913
	ori		x15, x0, %lo(read_net_item.2693.18030)	# 913
	sw		x15, 0(x14)	# 921
	sw		x12, 8(x14)	# 921
	sw		x8, 4(x14)	# 921
	addi	x15, x3, 0	# 921
	addi	x3, x3, 20	# 921
	lui		x16, %hi(read_or_network.2695.18032)	# 921
	ori		x16, x0, %lo(read_or_network.2695.18032)	# 921
	sw		x16, 0(x15)	# 930
	sw		x14, 16(x15)	# 930
	sw		x12, 12(x15)	# 930
	sw		x7, 8(x15)	# 930
	sw		x8, 4(x15)	# 930
	addi	x16, x3, 0	# 930
	addi	x3, x3, 20	# 930
	lui		x17, %hi(read_and_network.2697.18034)	# 930
	ori		x17, x0, %lo(read_and_network.2697.18034)	# 930
	sw		x17, 0(x16)	# 1306
	sw		x14, 16(x16)	# 1306
	sw		x12, 12(x16)	# 1306
	sw		x7, 8(x16)	# 1306
	sw		x8, 4(x16)	# 1306
	addi	x14, x3, 0	# 1306
	addi	x3, x3, 28	# 1306
	lui		x17, %hi(iter_setup_dirvec_constants.2794.18036)	# 1306
	ori		x17, x0, %lo(iter_setup_dirvec_constants.2794.18036)	# 1306
	sw		x17, 0(x14)	# 1331
	lw		x17, -64(x2)	# 1331
	sw		x17, 24(x14)	# 1331
	sw		x11, 20(x14)	# 1331
	sw		x13, 16(x14)	# 1331
	sw		x7, 12(x14)	# 1331
	sw		x8, 8(x14)	# 1331
	fsw		f1, 4(x14)	# 1331
	addi	x18, x3, 0	# 1331
	addi	x3, x3, 20	# 1331
	lui		x19, %hi(setup_startp_constants.2799.18039)	# 1331
	ori		x19, x0, %lo(setup_startp_constants.2799.18039)	# 1331
	sw		x19, 0(x18)	# 1400
	sw		x11, 16(x18)	# 1400
	sw		x13, 12(x18)	# 1400
	sw		x7, 8(x18)	# 1400
	sw		x8, 4(x18)	# 1400
	addi	x19, x3, 0	# 1400
	addi	x3, x3, 28	# 1400
	lui		x20, %hi(check_all_inside.2824.18042)	# 1400
	ori		x20, x0, %lo(check_all_inside.2824.18042)	# 1400
	sw		x20, 0(x19)	# 1420
	sw		x11, 24(x19)	# 1420
	sw		x12, 20(x19)	# 1420
	sw		x13, 16(x19)	# 1420
	sw		x7, 12(x19)	# 1420
	sw		x8, 8(x19)	# 1420
	fsw		f1, 4(x19)	# 1420
	addi	x20, x3, 0	# 1420
	addi	x3, x3, 36	# 1420
	lui		x21, %hi(shadow_check_and_group.2830.18048)	# 1420
	ori		x21, x0, %lo(shadow_check_and_group.2830.18048)	# 1420
	sw		x21, 0(x20)	# 1450
	sw		x19, 32(x20)	# 1450
	sw		x17, 28(x20)	# 1450
	sw		x11, 24(x20)	# 1450
	sw		x12, 20(x20)	# 1450
	sw		x13, 16(x20)	# 1450
	sw		x7, 12(x20)	# 1450
	sw		x8, 8(x20)	# 1450
	fsw		f1, 4(x20)	# 1450
	addi	x21, x3, 0	# 1450
	addi	x3, x3, 20	# 1450
	lui		x22, %hi(shadow_check_one_or_group.2833.18051)	# 1450
	ori		x22, x0, %lo(shadow_check_one_or_group.2833.18051)	# 1450
	sw		x22, 0(x21)	# 1465
	sw		x20, 16(x21)	# 1465
	sw		x12, 12(x21)	# 1465
	sw		x7, 8(x21)	# 1465
	sw		x8, 4(x21)	# 1465
	addi	x20, x3, 0	# 1465
	addi	x3, x3, 36	# 1465
	lui		x22, %hi(shadow_check_one_or_matrix.2836.18054)	# 1465
	ori		x22, x0, %lo(shadow_check_one_or_matrix.2836.18054)	# 1465
	sw		x22, 0(x20)	# 1501
	sw		x21, 32(x20)	# 1501
	sw		x17, 28(x20)	# 1501
	sw		x11, 24(x20)	# 1501
	sw		x12, 20(x20)	# 1501
	sw		x13, 16(x20)	# 1501
	sw		x7, 12(x20)	# 1501
	sw		x8, 8(x20)	# 1501
	fsw		f1, 4(x20)	# 1501
	addi	x21, x3, 0	# 1501
	addi	x3, x3, 32	# 1501
	lui		x22, %hi(solve_each_element.2839.18057)	# 1501
	ori		x22, x0, %lo(solve_each_element.2839.18057)	# 1501
	sw		x22, 0(x21)	# 1542
	sw		x19, 28(x21)	# 1542
	sw		x11, 24(x21)	# 1542
	sw		x12, 20(x21)	# 1542
	sw		x13, 16(x21)	# 1542
	sw		x7, 12(x21)	# 1542
	sw		x8, 8(x21)	# 1542
	fsw		f1, 4(x21)	# 1542
	addi	x22, x3, 0	# 1542
	addi	x3, x3, 20	# 1542
	lui		x23, %hi(solve_one_or_network.2843.18061)	# 1542
	ori		x23, x0, %lo(solve_one_or_network.2843.18061)	# 1542
	sw		x23, 0(x22)	# 1552
	sw		x21, 16(x22)	# 1552
	sw		x12, 12(x22)	# 1552
	sw		x7, 8(x22)	# 1552
	sw		x8, 4(x22)	# 1552
	addi	x21, x3, 0	# 1552
	addi	x3, x3, 32	# 1552
	lui		x23, %hi(trace_or_matrix.2847.18065)	# 1552
	ori		x23, x0, %lo(trace_or_matrix.2847.18065)	# 1552
	sw		x23, 0(x21)	# 1594
	sw		x22, 28(x21)	# 1594
	sw		x11, 24(x21)	# 1594
	sw		x12, 20(x21)	# 1594
	sw		x13, 16(x21)	# 1594
	sw		x7, 12(x21)	# 1594
	sw		x8, 8(x21)	# 1594
	fsw		f1, 4(x21)	# 1594
	addi	x22, x3, 0	# 1594
	addi	x3, x3, 36	# 1594
	lui		x23, %hi(solve_each_element_fast.2853.18069)	# 1594
	ori		x23, x0, %lo(solve_each_element_fast.2853.18069)	# 1594
	sw		x23, 0(x22)	# 1635
	sw		x19, 32(x22)	# 1635
	sw		x17, 28(x22)	# 1635
	sw		x11, 24(x22)	# 1635
	sw		x12, 20(x22)	# 1635
	sw		x13, 16(x22)	# 1635
	sw		x7, 12(x22)	# 1635
	sw		x8, 8(x22)	# 1635
	fsw		f1, 4(x22)	# 1635
	addi	x23, x3, 0	# 1635
	addi	x3, x3, 40	# 1635
	lui		x24, %hi(solve_one_or_network_fast.2857.18073)	# 1635
	ori		x24, x0, %lo(solve_one_or_network_fast.2857.18073)	# 1635
	sw		x24, 0(x23)	# 1645
	sw		x22, 36(x23)	# 1645
	sw		x19, 32(x23)	# 1645
	sw		x17, 28(x23)	# 1645
	sw		x11, 24(x23)	# 1645
	sw		x12, 20(x23)	# 1645
	sw		x13, 16(x23)	# 1645
	sw		x7, 12(x23)	# 1645
	sw		x8, 8(x23)	# 1645
	fsw		f1, 4(x23)	# 1645
	addi	x19, x3, 0	# 1645
	addi	x3, x3, 40	# 1645
	lui		x24, %hi(trace_or_matrix_fast.2861.18077)	# 1645
	ori		x24, x0, %lo(trace_or_matrix_fast.2861.18077)	# 1645
	sw		x24, 0(x19)	# 1839
	sw		x23, 36(x19)	# 1839
	sw		x22, 32(x19)	# 1839
	sw		x17, 28(x19)	# 1839
	sw		x11, 24(x19)	# 1839
	sw		x12, 20(x19)	# 1839
	sw		x13, 16(x19)	# 1839
	sw		x7, 12(x19)	# 1839
	sw		x8, 8(x19)	# 1839
	fsw		f1, 4(x19)	# 1839
	addi	x22, x3, 0	# 1839
	addi	x3, x3, 32	# 1839
	lui		x23, %hi(trace_reflections.2883.18081)	# 1839
	ori		x23, x0, %lo(trace_reflections.2883.18081)	# 1839
	sw		x23, 0(x22)	# 1868
	sw		x19, 28(x22)	# 1868
	sw		x20, 24(x22)	# 1868
	sw		x11, 20(x22)	# 1868
	sw		x7, 16(x22)	# 1868
	sw		x8, 12(x22)	# 1868
	flw		f2, -44(x2)	# 1868
	fsw		f2, 8(x22)	# 1868
	fsw		f1, 4(x22)	# 1868
	addi	x23, x3, 0	# 1868
	addi	x3, x3, 68	# 1868
	lui		x24, %hi(trace_ray.2888.18086)	# 1868
	ori		x24, x0, %lo(trace_ray.2888.18086)	# 1868
	sw		x24, 0(x23)	# 1980
	sw		x22, 64(x23)	# 1980
	sw		x21, 60(x23)	# 1980
	sw		x4, 56(x23)	# 1980
	sw		x20, 52(x23)	# 1980
	sw		x18, 48(x23)	# 1980
	sw		x5, 44(x23)	# 1980
	sw		x6, 40(x23)	# 1980
	sw		x9, 36(x23)	# 1980
	sw		x11, 32(x23)	# 1980
	sw		x12, 28(x23)	# 1980
	sw		x13, 24(x23)	# 1980
	sw		x7, 20(x23)	# 1980
	sw		x8, 16(x23)	# 1980
	fsw		f2, 12(x23)	# 1980
	flw		f3, -24(x2)	# 1980
	fsw		f3, 8(x23)	# 1980
	fsw		f1, 4(x23)	# 1980
	addi	x12, x3, 0	# 1980
	addi	x3, x3, 56	# 1980
	lui		x21, %hi(iter_trace_diffuse_rays.2897.18092)	# 1980
	ori		x21, x0, %lo(iter_trace_diffuse_rays.2897.18092)	# 1980
	sw		x21, 0(x12)	# 2071
	sw		x19, 52(x12)	# 2071
	sw		x4, 48(x12)	# 2071
	sw		x20, 44(x12)	# 2071
	sw		x5, 40(x12)	# 2071
	sw		x6, 36(x12)	# 2071
	sw		x9, 32(x12)	# 2071
	sw		x11, 28(x12)	# 2071
	sw		x13, 24(x12)	# 2071
	sw		x7, 20(x12)	# 2071
	sw		x8, 16(x12)	# 2071
	fsw		f2, 12(x12)	# 2071
	fsw		f3, 8(x12)	# 2071
	fsw		f1, 4(x12)	# 2071
	addi	x19, x3, 0	# 2071
	addi	x3, x3, 28	# 2071
	lui		x20, %hi(do_without_neighbors.2919.18097)	# 2071
	ori		x20, x0, %lo(do_without_neighbors.2919.18097)	# 2071
	sw		x20, 0(x19)	# 2123
	sw		x18, 24(x19)	# 2123
	sw		x12, 20(x19)	# 2123
	sw		x11, 16(x19)	# 2123
	sw		x13, 12(x19)	# 2123
	sw		x7, 8(x19)	# 2123
	sw		x8, 4(x19)	# 2123
	addi	x20, x3, 0	# 2123
	addi	x3, x3, 20	# 2123
	lui		x21, %hi(try_exploit_neighbors.2935.18100)	# 2123
	ori		x21, x0, %lo(try_exploit_neighbors.2935.18100)	# 2123
	sw		x21, 0(x20)	# 2199
	sw		x19, 16(x20)	# 2199
	sw		x11, 12(x20)	# 2199
	sw		x7, 8(x20)	# 2199
	sw		x8, 4(x20)	# 2199
	addi	x21, x3, 0	# 2199
	addi	x3, x3, 28	# 2199
	lui		x22, %hi(pretrace_diffuse_rays.2950.18107)	# 2199
	ori		x22, x0, %lo(pretrace_diffuse_rays.2950.18107)	# 2199
	sw		x22, 0(x21)	# 2229
	sw		x18, 24(x21)	# 2229
	sw		x12, 20(x21)	# 2229
	sw		x11, 16(x21)	# 2229
	sw		x7, 12(x21)	# 2229
	sw		x8, 8(x21)	# 2229
	fsw		f1, 4(x21)	# 2229
	addi	x12, x3, 0	# 2229
	addi	x3, x3, 32	# 2229
	lui		x18, %hi(pretrace_pixels.2953.18110)	# 2229
	ori		x18, x0, %lo(pretrace_pixels.2953.18110)	# 2229
	sw		x18, 0(x12)	# 2270
	sw		x23, 28(x12)	# 2270
	sw		x21, 24(x12)	# 2270
	sw		x17, 20(x12)	# 2270
	sw		x11, 16(x12)	# 2270
	sw		x7, 12(x12)	# 2270
	sw		x8, 8(x12)	# 2270
	fsw		f1, 4(x12)	# 2270
	addi	x18, x3, 0	# 2270
	addi	x3, x3, 32	# 2270
	lui		x21, %hi(scan_pixel.2964.18117)	# 2270
	ori		x21, x0, %lo(scan_pixel.2964.18117)	# 2270
	sw		x21, 0(x18)	# 2290
	sw		x20, 28(x18)	# 2290
	sw		x5, 24(x18)	# 2290
	sw		x19, 20(x18)	# 2290
	sw		x11, 16(x18)	# 2290
	sw		x13, 12(x18)	# 2290
	sw		x7, 8(x18)	# 2290
	sw		x8, 4(x18)	# 2290
	addi	x5, x3, 0	# 2290
	addi	x3, x3, 28	# 2290
	lui		x19, %hi(scan_line.2971.18124)	# 2290
	ori		x19, x0, %lo(scan_line.2971.18124)	# 2290
	sw		x19, 0(x5)	# 2333
	sw		x18, 24(x5)	# 2333
	sw		x12, 20(x5)	# 2333
	sw		x17, 16(x5)	# 2333
	sw		x11, 12(x5)	# 2333
	sw		x7, 8(x5)	# 2333
	sw		x8, 4(x5)	# 2333
	addi	x18, x3, 0	# 2333
	addi	x3, x3, 28	# 2333
	lui		x19, %hi(init_line_elements.2982.18131)	# 2333
	ori		x19, x0, %lo(init_line_elements.2982.18131)	# 2333
	sw		x19, 0(x18)	# 2370
	sw		x17, 24(x18)	# 2370
	sw		x11, 20(x18)	# 2370
	sw		x13, 16(x18)	# 2370
	sw		x7, 12(x18)	# 2370
	sw		x8, 8(x18)	# 2370
	fsw		f1, 4(x18)	# 2370
	addi	x19, x3, 0	# 2370
	addi	x3, x3, 32	# 2370
	lui		x20, %hi(calc_dirvec.2992.18134)	# 2370
	ori		x20, x0, %lo(calc_dirvec.2992.18134)	# 2370
	sw		x20, 0(x19)	# 2391
	sw		x4, 28(x19)	# 2391
	sw		x6, 24(x19)	# 2391
	sw		x9, 20(x19)	# 2391
	sw		x17, 16(x19)	# 2391
	sw		x11, 12(x19)	# 2391
	sw		x7, 8(x19)	# 2391
	sw		x8, 4(x19)	# 2391
	addi	x9, x3, 0	# 2391
	addi	x3, x3, 28	# 2391
	lui		x20, %hi(calc_dirvecs.3000.18142)	# 2391
	ori		x20, x0, %lo(calc_dirvecs.3000.18142)	# 2391
	sw		x20, 0(x9)	# 2405
	sw		x19, 24(x9)	# 2405
	sw		x17, 20(x9)	# 2405
	sw		x11, 16(x9)	# 2405
	sw		x7, 12(x9)	# 2405
	sw		x8, 8(x9)	# 2405
	fsw		f1, 4(x9)	# 2405
	addi	x19, x3, 0	# 2405
	addi	x3, x3, 24	# 2405
	lui		x20, %hi(calc_dirvec_rows.3005.18147)	# 2405
	ori		x20, x0, %lo(calc_dirvec_rows.3005.18147)	# 2405
	sw		x20, 0(x19)	# 2424
	sw		x9, 20(x19)	# 2424
	sw		x17, 16(x19)	# 2424
	sw		x11, 12(x19)	# 2424
	sw		x7, 8(x19)	# 2424
	sw		x8, 4(x19)	# 2424
	addi	x9, x3, 0	# 2424
	addi	x3, x3, 20	# 2424
	lui		x20, %hi(create_dirvec_elements.3011.18151)	# 2424
	ori		x20, x0, %lo(create_dirvec_elements.3011.18151)	# 2424
	sw		x20, 0(x9)	# 2431
	sw		x13, 16(x9)	# 2431
	sw		x7, 12(x9)	# 2431
	sw		x8, 8(x9)	# 2431
	fsw		f1, 4(x9)	# 2431
	addi	x20, x3, 0	# 2431
	addi	x3, x3, 24	# 2431
	lui		x21, %hi(create_dirvecs.3014.18154)	# 2431
	ori		x21, x0, %lo(create_dirvecs.3014.18154)	# 2431
	sw		x21, 0(x20)	# 2443
	sw		x9, 20(x20)	# 2443
	sw		x13, 16(x20)	# 2443
	sw		x7, 12(x20)	# 2443
	sw		x8, 8(x20)	# 2443
	fsw		f1, 4(x20)	# 2443
	addi	x9, x3, 0	# 2443
	addi	x3, x3, 16	# 2443
	lui		x21, %hi(init_dirvec_constants.3016.18156)	# 2443
	ori		x21, x0, %lo(init_dirvec_constants.3016.18156)	# 2443
	sw		x21, 0(x9)	# 2450
	sw		x14, 12(x9)	# 2450
	sw		x7, 8(x9)	# 2450
	sw		x8, 4(x9)	# 2450
	addi	x21, x3, 0	# 2450
	addi	x3, x3, 16	# 2450
	lui		x22, %hi(init_vecset_constants.3019.18159)	# 2450
	ori		x22, x0, %lo(init_vecset_constants.3019.18159)	# 2450
	sw		x22, 0(x21)	# 2549
	sw		x9, 12(x21)	# 2549
	sw		x7, 8(x21)	# 2549
	sw		x8, 4(x21)	# 2549
	addi	x9, x0, 512	# 2549
	mul		x22, x30, x7	# 2529
	addi	x22, x22, 64412	# 2529
	sw		x9, 0(x22)	# 2529
	mul		x22, x30, x8	# 2530
	addi	x22, x22, 64412	# 2530
	sw		x9, 0(x22)	# 2530
	addi	x22, x0, 256	# 2531
	mul		x23, x30, x7	# 2531
	addi	x23, x23, 64420	# 2531
	sw		x22, 0(x23)	# 2531
	mul		x23, x30, x8	# 2532
	addi	x23, x23, 64420	# 2532
	sw		x22, 0(x23)	# 2532
	lui		x22, %hi(l.29346)	# 2533
	ori		x22, x0, %lo(l.29346)	# 2533
	flw		f2, 0(x22)	# 2533
	sw		x5, -92(x2)	# 2533
	sw		x4, -96(x2)	# 2533
	sw		x6, -100(x2)	# 2533
	fsw		f2, -104(x2)	# 2533
	addi	x4, x9, 0	# 2533
	sw		x1, -108(x2)	# 2533
	addi	x2, x2, -112	# 2533
	jal		x1, min_caml_float_of_int	# 2533
	addi	x2, x2, 112	# 2533
	lw		x1, -108(x2)	# 2533
	flw		f2, -104(x2)	# 2533
	fdiv	f1, f2, f1	# 2533
	mul		x4, x30, x7	# 2533
	addi	x4, x4, 64428	# 2533
	fsw		f1, 0(x4)	# 2533
	mul		x4, x30, x7	# 2343
	addi	x4, x4, 64412	# 2343
	lw		x4, 0(x4)	# 2343
	flw		f1, -8(x2)	# 2321
	sw		x4, -108(x2)	# 2321
	addi	x4, x13, 0	# 2321
	sw		x1, -112(x2)	# 2321
	addi	x2, x2, -116	# 2321
	jal		x1, min_caml_create_float_array	# 2321
	addi	x2, x2, 116	# 2321
	lw		x1, -112(x2)	# 2321
	flw		f1, -8(x2)	# 2309
	sw		x4, -112(x2)	# 2309
	addi	x4, x13, 0	# 2309
	sw		x1, -116(x2)	# 2309
	addi	x2, x2, -120	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 120	# 2309
	lw		x1, -116(x2)	# 2309
	addi	x5, x4, 0	# 2309
	addi	x4, x17, 0	# 2310
	sw		x1, -116(x2)	# 2310
	addi	x2, x2, -120	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 120	# 2310
	lw		x1, -116(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	sw		x4, -116(x2)	# 2311
	addi	x4, x13, 0	# 2311
	sw		x1, -120(x2)	# 2311
	addi	x2, x2, -124	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 124	# 2311
	lw		x1, -120(x2)	# 2311
	mul		x5, x30, x8	# 2311
	lw		x6, -116(x2)	# 2311
	add		x5, x6, x5	# 2311
	sw		x4, 0(x5)	# 2311
	flw		f1, -8(x2)	# 2312
	addi	x4, x13, 0	# 2312
	sw		x1, -120(x2)	# 2312
	addi	x2, x2, -124	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 124	# 2312
	lw		x1, -120(x2)	# 2312
	mul		x5, x30, x11	# 2312
	add		x5, x6, x5	# 2312
	sw		x4, 0(x5)	# 2312
	flw		f1, -8(x2)	# 2313
	addi	x4, x13, 0	# 2313
	sw		x1, -120(x2)	# 2313
	addi	x2, x2, -124	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 124	# 2313
	lw		x1, -120(x2)	# 2313
	mul		x5, x30, x13	# 2313
	add		x5, x6, x5	# 2313
	sw		x4, 0(x5)	# 2313
	addi	x4, x0, 4	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -120(x2)	# 2314
	addi	x4, x13, 0	# 2314
	sw		x1, -124(x2)	# 2314
	addi	x2, x2, -128	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 128	# 2314
	lw		x1, -124(x2)	# 2314
	lw		x5, -120(x2)	# 2314
	mul		x9, x30, x5	# 2314
	add		x9, x6, x9	# 2314
	sw		x4, 0(x9)	# 2314
	addi	x5, x7, 0	# 2323
	addi	x4, x17, 0	# 2323
	sw		x1, -124(x2)	# 2323
	addi	x2, x2, -128	# 2323
	jal		x1, min_caml_create_array	# 2323
	addi	x2, x2, 128	# 2323
	lw		x1, -124(x2)	# 2323
	sw		x4, -124(x2)	# 2324
	addi	x5, x7, 0	# 2324
	addi	x4, x17, 0	# 2324
	sw		x1, -128(x2)	# 2324
	addi	x2, x2, -132	# 2324
	jal		x1, min_caml_create_array	# 2324
	addi	x2, x2, 132	# 2324
	lw		x1, -128(x2)	# 2324
	flw		f1, -8(x2)	# 2309
	sw		x4, -128(x2)	# 2309
	addi	x4, x13, 0	# 2309
	sw		x1, -132(x2)	# 2309
	addi	x2, x2, -136	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 136	# 2309
	lw		x1, -132(x2)	# 2309
	addi	x5, x4, 0	# 2309
	addi	x4, x17, 0	# 2310
	sw		x1, -132(x2)	# 2310
	addi	x2, x2, -136	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 136	# 2310
	lw		x1, -132(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	sw		x4, -132(x2)	# 2311
	addi	x4, x13, 0	# 2311
	sw		x1, -136(x2)	# 2311
	addi	x2, x2, -140	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 140	# 2311
	lw		x1, -136(x2)	# 2311
	mul		x5, x30, x8	# 2311
	lw		x6, -132(x2)	# 2311
	add		x5, x6, x5	# 2311
	sw		x4, 0(x5)	# 2311
	flw		f1, -8(x2)	# 2312
	addi	x4, x13, 0	# 2312
	sw		x1, -136(x2)	# 2312
	addi	x2, x2, -140	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 140	# 2312
	lw		x1, -136(x2)	# 2312
	mul		x5, x30, x11	# 2312
	add		x5, x6, x5	# 2312
	sw		x4, 0(x5)	# 2312
	flw		f1, -8(x2)	# 2313
	addi	x4, x13, 0	# 2313
	sw		x1, -136(x2)	# 2313
	addi	x2, x2, -140	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 140	# 2313
	lw		x1, -136(x2)	# 2313
	mul		x5, x30, x13	# 2313
	add		x5, x6, x5	# 2313
	sw		x4, 0(x5)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x13, 0	# 2314
	sw		x1, -136(x2)	# 2314
	addi	x2, x2, -140	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 140	# 2314
	lw		x1, -136(x2)	# 2314
	lw		x5, -120(x2)	# 2314
	mul		x9, x30, x5	# 2314
	add		x9, x6, x9	# 2314
	sw		x4, 0(x9)	# 2314
	flw		f1, -8(x2)	# 2309
	addi	x4, x13, 0	# 2309
	sw		x1, -136(x2)	# 2309
	addi	x2, x2, -140	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 140	# 2309
	lw		x1, -136(x2)	# 2309
	addi	x5, x4, 0	# 2309
	addi	x4, x17, 0	# 2310
	sw		x1, -136(x2)	# 2310
	addi	x2, x2, -140	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 140	# 2310
	lw		x1, -136(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	sw		x4, -136(x2)	# 2311
	addi	x4, x13, 0	# 2311
	sw		x1, -140(x2)	# 2311
	addi	x2, x2, -144	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 144	# 2311
	lw		x1, -140(x2)	# 2311
	mul		x5, x30, x8	# 2311
	lw		x6, -136(x2)	# 2311
	add		x5, x6, x5	# 2311
	sw		x4, 0(x5)	# 2311
	flw		f1, -8(x2)	# 2312
	addi	x4, x13, 0	# 2312
	sw		x1, -140(x2)	# 2312
	addi	x2, x2, -144	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 144	# 2312
	lw		x1, -140(x2)	# 2312
	mul		x5, x30, x11	# 2312
	add		x5, x6, x5	# 2312
	sw		x4, 0(x5)	# 2312
	flw		f1, -8(x2)	# 2313
	addi	x4, x13, 0	# 2313
	sw		x1, -140(x2)	# 2313
	addi	x2, x2, -144	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 144	# 2313
	lw		x1, -140(x2)	# 2313
	mul		x5, x30, x13	# 2313
	add		x5, x6, x5	# 2313
	sw		x4, 0(x5)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x13, 0	# 2314
	sw		x1, -140(x2)	# 2314
	addi	x2, x2, -144	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 144	# 2314
	lw		x1, -140(x2)	# 2314
	lw		x5, -120(x2)	# 2314
	mul		x9, x30, x5	# 2314
	add		x9, x6, x9	# 2314
	sw		x4, 0(x9)	# 2314
	addi	x5, x7, 0	# 2327
	addi	x4, x8, 0	# 2327
	sw		x1, -140(x2)	# 2327
	addi	x2, x2, -144	# 2327
	jal		x1, min_caml_create_array	# 2327
	addi	x2, x2, 144	# 2327
	lw		x1, -140(x2)	# 2327
	flw		f1, -8(x2)	# 2309
	sw		x4, -140(x2)	# 2309
	addi	x4, x13, 0	# 2309
	sw		x1, -144(x2)	# 2309
	addi	x2, x2, -148	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 148	# 2309
	lw		x1, -144(x2)	# 2309
	addi	x5, x4, 0	# 2309
	addi	x4, x17, 0	# 2310
	sw		x1, -144(x2)	# 2310
	addi	x2, x2, -148	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 148	# 2310
	lw		x1, -144(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	sw		x4, -144(x2)	# 2311
	addi	x4, x13, 0	# 2311
	sw		x1, -148(x2)	# 2311
	addi	x2, x2, -152	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 152	# 2311
	lw		x1, -148(x2)	# 2311
	mul		x5, x30, x8	# 2311
	lw		x6, -144(x2)	# 2311
	add		x5, x6, x5	# 2311
	sw		x4, 0(x5)	# 2311
	flw		f1, -8(x2)	# 2312
	addi	x4, x13, 0	# 2312
	sw		x1, -148(x2)	# 2312
	addi	x2, x2, -152	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 152	# 2312
	lw		x1, -148(x2)	# 2312
	mul		x5, x30, x11	# 2312
	add		x5, x6, x5	# 2312
	sw		x4, 0(x5)	# 2312
	flw		f1, -8(x2)	# 2313
	addi	x4, x13, 0	# 2313
	sw		x1, -148(x2)	# 2313
	addi	x2, x2, -152	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 152	# 2313
	lw		x1, -148(x2)	# 2313
	mul		x5, x30, x13	# 2313
	add		x5, x6, x5	# 2313
	sw		x4, 0(x5)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x13, 0	# 2314
	sw		x1, -148(x2)	# 2314
	addi	x2, x2, -152	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 152	# 2314
	lw		x1, -148(x2)	# 2314
	lw		x5, -120(x2)	# 2314
	mul		x9, x30, x5	# 2314
	add		x9, x6, x9	# 2314
	sw		x4, 0(x9)	# 2314
	addi	x4, x3, 0	# 2329
	addi	x3, x3, 32	# 2329
	sw		x6, 28(x4)	# 2329
	lw		x6, -140(x2)	# 2329
	sw		x6, 24(x4)	# 2329
	lw		x6, -136(x2)	# 2329
	sw		x6, 20(x4)	# 2329
	lw		x6, -132(x2)	# 2329
	sw		x6, 16(x4)	# 2329
	lw		x6, -128(x2)	# 2329
	sw		x6, 12(x4)	# 2329
	lw		x6, -124(x2)	# 2329
	sw		x6, 8(x4)	# 2329
	lw		x6, -116(x2)	# 2329
	sw		x6, 4(x4)	# 2329
	lw		x6, -112(x2)	# 2329
	sw		x6, 0(x4)	# 2329
	lw		x6, -108(x2)	# 2343
	addi	x5, x4, 0	# 2343
	addi	x4, x6, 0	# 2343
	sw		x1, -148(x2)	# 2343
	addi	x2, x2, -152	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 152	# 2343
	lw		x1, -148(x2)	# 2343
	mul		x5, x30, x7	# 2344
	addi	x5, x5, 64412	# 2344
	lw		x5, 0(x5)	# 2344
	sub		x5, x5, x11	# 2344
	sw		x12, -148(x2)	# 2344
	sw		x14, -152(x2)	# 2344
	sw		x21, -156(x2)	# 2344
	sw		x19, -160(x2)	# 2344
	sw		x20, -164(x2)	# 2344
	sw		x15, -168(x2)	# 2344
	sw		x16, -172(x2)	# 2344
	sw		x10, -176(x2)	# 2344
	sw		x18, -180(x2)	# 2344
	addi	x29, x18, 0	# 2344
	sw		x1, -184(x2)	# 2344
	addi	x2, x2, -188	# 2344
	lw		x31, 0(x29)	# 2344
	jalr	x1, x31, 0	# 2344
	addi	x2, x2, 188	# 2344
	lw		x1, -184(x2)	# 2344
	lw		x5, -4(x2)	# 2343
	mul		x6, x30, x5	# 2343
	addi	x6, x6, 64412	# 2343
	lw		x6, 0(x6)	# 2343
	flw		f1, -8(x2)	# 2321
	lw		x7, -20(x2)	# 2321
	sw		x4, -184(x2)	# 2321
	addi	x4, x7, 0	# 2321
	sw		x1, -188(x2)	# 2321
	addi	x2, x2, -192	# 2321
	jal		x1, min_caml_create_float_array	# 2321
	addi	x2, x2, 192	# 2321
	lw		x1, -188(x2)	# 2321
	flw		f1, -8(x2)	# 2309
	sw		x4, -188(x2)	# 2309
	addi	x4, x7, 0	# 2309
	sw		x1, -192(x2)	# 2309
	addi	x2, x2, -196	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 196	# 2309
	lw		x1, -192(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x6, -192(x2)	# 2310
	sw		x1, -196(x2)	# 2310
	addi	x2, x2, -200	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 200	# 2310
	lw		x1, -196(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	sw		x4, -196(x2)	# 2311
	addi	x4, x7, 0	# 2311
	sw		x1, -200(x2)	# 2311
	addi	x2, x2, -204	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 204	# 2311
	lw		x1, -200(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x8, -196(x2)	# 2311
	add		x6, x8, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -8(x2)	# 2312
	addi	x4, x7, 0	# 2312
	sw		x1, -200(x2)	# 2312
	addi	x2, x2, -204	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 204	# 2312
	lw		x1, -200(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	add		x6, x8, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -8(x2)	# 2313
	addi	x4, x7, 0	# 2313
	sw		x1, -200(x2)	# 2313
	addi	x2, x2, -204	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 204	# 2313
	lw		x1, -200(x2)	# 2313
	mul		x5, x30, x7	# 2313
	add		x5, x8, x5	# 2313
	sw		x4, 0(x5)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x7, 0	# 2314
	sw		x1, -200(x2)	# 2314
	addi	x2, x2, -204	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 204	# 2314
	lw		x1, -200(x2)	# 2314
	lw		x5, -120(x2)	# 2314
	mul		x6, x30, x5	# 2314
	add		x6, x8, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -64(x2)	# 2323
	lw		x6, -4(x2)	# 2323
	addi	x5, x6, 0	# 2323
	sw		x1, -200(x2)	# 2323
	addi	x2, x2, -204	# 2323
	jal		x1, min_caml_create_array	# 2323
	addi	x2, x2, 204	# 2323
	lw		x1, -200(x2)	# 2323
	lw		x5, -64(x2)	# 2324
	lw		x6, -4(x2)	# 2324
	sw		x4, -200(x2)	# 2324
	addi	x4, x5, 0	# 2324
	addi	x5, x6, 0	# 2324
	sw		x1, -204(x2)	# 2324
	addi	x2, x2, -208	# 2324
	jal		x1, min_caml_create_array	# 2324
	addi	x2, x2, 208	# 2324
	lw		x1, -204(x2)	# 2324
	flw		f1, -8(x2)	# 2309
	sw		x4, -204(x2)	# 2309
	addi	x4, x7, 0	# 2309
	sw		x1, -208(x2)	# 2309
	addi	x2, x2, -212	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 212	# 2309
	lw		x1, -208(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -208(x2)	# 2310
	addi	x2, x2, -212	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 212	# 2310
	lw		x1, -208(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	sw		x4, -208(x2)	# 2311
	addi	x4, x7, 0	# 2311
	sw		x1, -212(x2)	# 2311
	addi	x2, x2, -216	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 216	# 2311
	lw		x1, -212(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x9, -208(x2)	# 2311
	add		x6, x9, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -8(x2)	# 2312
	addi	x4, x7, 0	# 2312
	sw		x1, -212(x2)	# 2312
	addi	x2, x2, -216	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 216	# 2312
	lw		x1, -212(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	add		x6, x9, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -8(x2)	# 2313
	addi	x4, x7, 0	# 2313
	sw		x1, -212(x2)	# 2313
	addi	x2, x2, -216	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 216	# 2313
	lw		x1, -212(x2)	# 2313
	mul		x5, x30, x7	# 2313
	add		x5, x9, x5	# 2313
	sw		x4, 0(x5)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x7, 0	# 2314
	sw		x1, -212(x2)	# 2314
	addi	x2, x2, -216	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 216	# 2314
	lw		x1, -212(x2)	# 2314
	lw		x5, -120(x2)	# 2314
	mul		x6, x30, x5	# 2314
	add		x6, x9, x6	# 2314
	sw		x4, 0(x6)	# 2314
	flw		f1, -8(x2)	# 2309
	addi	x4, x7, 0	# 2309
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
	sw		x4, -212(x2)	# 2311
	addi	x4, x7, 0	# 2311
	sw		x1, -216(x2)	# 2311
	addi	x2, x2, -220	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 220	# 2311
	lw		x1, -216(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x10, -212(x2)	# 2311
	add		x6, x10, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -8(x2)	# 2312
	addi	x4, x7, 0	# 2312
	sw		x1, -216(x2)	# 2312
	addi	x2, x2, -220	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 220	# 2312
	lw		x1, -216(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	add		x6, x10, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -8(x2)	# 2313
	addi	x4, x7, 0	# 2313
	sw		x1, -216(x2)	# 2313
	addi	x2, x2, -220	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 220	# 2313
	lw		x1, -216(x2)	# 2313
	mul		x5, x30, x7	# 2313
	add		x5, x10, x5	# 2313
	sw		x4, 0(x5)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x7, 0	# 2314
	sw		x1, -216(x2)	# 2314
	addi	x2, x2, -220	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 220	# 2314
	lw		x1, -216(x2)	# 2314
	lw		x5, -120(x2)	# 2314
	mul		x6, x30, x5	# 2314
	add		x6, x10, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, 0(x2)	# 2327
	lw		x6, -4(x2)	# 2327
	addi	x5, x6, 0	# 2327
	sw		x1, -216(x2)	# 2327
	addi	x2, x2, -220	# 2327
	jal		x1, min_caml_create_array	# 2327
	addi	x2, x2, 220	# 2327
	lw		x1, -216(x2)	# 2327
	flw		f1, -8(x2)	# 2309
	sw		x4, -216(x2)	# 2309
	addi	x4, x7, 0	# 2309
	sw		x1, -220(x2)	# 2309
	addi	x2, x2, -224	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 224	# 2309
	lw		x1, -220(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -220(x2)	# 2310
	addi	x2, x2, -224	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 224	# 2310
	lw		x1, -220(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	sw		x4, -220(x2)	# 2311
	addi	x4, x7, 0	# 2311
	sw		x1, -224(x2)	# 2311
	addi	x2, x2, -228	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 228	# 2311
	lw		x1, -224(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x11, -220(x2)	# 2311
	add		x6, x11, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -8(x2)	# 2312
	addi	x4, x7, 0	# 2312
	sw		x1, -224(x2)	# 2312
	addi	x2, x2, -228	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 228	# 2312
	lw		x1, -224(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	add		x6, x11, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -8(x2)	# 2313
	addi	x4, x7, 0	# 2313
	sw		x1, -224(x2)	# 2313
	addi	x2, x2, -228	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 228	# 2313
	lw		x1, -224(x2)	# 2313
	mul		x5, x30, x7	# 2313
	add		x5, x11, x5	# 2313
	sw		x4, 0(x5)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x7, 0	# 2314
	sw		x1, -224(x2)	# 2314
	addi	x2, x2, -228	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 228	# 2314
	lw		x1, -224(x2)	# 2314
	lw		x5, -120(x2)	# 2314
	mul		x6, x30, x5	# 2314
	add		x6, x11, x6	# 2314
	sw		x4, 0(x6)	# 2314
	addi	x4, x3, 0	# 2329
	addi	x3, x3, 32	# 2329
	sw		x11, 28(x4)	# 2329
	lw		x6, -216(x2)	# 2329
	sw		x6, 24(x4)	# 2329
	sw		x10, 20(x4)	# 2329
	sw		x9, 16(x4)	# 2329
	lw		x6, -204(x2)	# 2329
	sw		x6, 12(x4)	# 2329
	lw		x6, -200(x2)	# 2329
	sw		x6, 8(x4)	# 2329
	sw		x8, 4(x4)	# 2329
	lw		x6, -188(x2)	# 2329
	sw		x6, 0(x4)	# 2329
	lw		x6, -192(x2)	# 2343
	addi	x5, x4, 0	# 2343
	addi	x4, x6, 0	# 2343
	sw		x1, -224(x2)	# 2343
	addi	x2, x2, -228	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 228	# 2343
	lw		x1, -224(x2)	# 2343
	lw		x5, -4(x2)	# 2344
	mul		x6, x30, x5	# 2344
	addi	x6, x6, 64412	# 2344
	lw		x6, 0(x6)	# 2344
	lw		x8, -48(x2)	# 2344
	sub		x6, x6, x8	# 2344
	lw		x29, -180(x2)	# 2344
	addi	x5, x6, 0	# 2344
	sw		x1, -224(x2)	# 2344
	addi	x2, x2, -228	# 2344
	lw		x31, 0(x29)	# 2344
	jalr	x1, x31, 0	# 2344
	addi	x2, x2, 228	# 2344
	lw		x1, -224(x2)	# 2344
	lw		x5, -4(x2)	# 2343
	mul		x6, x30, x5	# 2343
	addi	x6, x6, 64412	# 2343
	lw		x6, 0(x6)	# 2343
	flw		f1, -8(x2)	# 2321
	lw		x7, -20(x2)	# 2321
	sw		x4, -224(x2)	# 2321
	addi	x4, x7, 0	# 2321
	sw		x1, -228(x2)	# 2321
	addi	x2, x2, -232	# 2321
	jal		x1, min_caml_create_float_array	# 2321
	addi	x2, x2, 232	# 2321
	lw		x1, -228(x2)	# 2321
	flw		f1, -8(x2)	# 2309
	sw		x4, -228(x2)	# 2309
	addi	x4, x7, 0	# 2309
	sw		x1, -232(x2)	# 2309
	addi	x2, x2, -236	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 236	# 2309
	lw		x1, -232(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x6, -232(x2)	# 2310
	sw		x1, -236(x2)	# 2310
	addi	x2, x2, -240	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 240	# 2310
	lw		x1, -236(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	sw		x4, -236(x2)	# 2311
	addi	x4, x7, 0	# 2311
	sw		x1, -240(x2)	# 2311
	addi	x2, x2, -244	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 244	# 2311
	lw		x1, -240(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x8, -236(x2)	# 2311
	add		x6, x8, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -8(x2)	# 2312
	addi	x4, x7, 0	# 2312
	sw		x1, -240(x2)	# 2312
	addi	x2, x2, -244	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 244	# 2312
	lw		x1, -240(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	add		x6, x8, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -8(x2)	# 2313
	addi	x4, x7, 0	# 2313
	sw		x1, -240(x2)	# 2313
	addi	x2, x2, -244	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 244	# 2313
	lw		x1, -240(x2)	# 2313
	mul		x5, x30, x7	# 2313
	add		x5, x8, x5	# 2313
	sw		x4, 0(x5)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x7, 0	# 2314
	sw		x1, -240(x2)	# 2314
	addi	x2, x2, -244	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 244	# 2314
	lw		x1, -240(x2)	# 2314
	lw		x5, -120(x2)	# 2314
	mul		x6, x30, x5	# 2314
	add		x6, x8, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -64(x2)	# 2323
	lw		x6, -4(x2)	# 2323
	addi	x5, x6, 0	# 2323
	sw		x1, -240(x2)	# 2323
	addi	x2, x2, -244	# 2323
	jal		x1, min_caml_create_array	# 2323
	addi	x2, x2, 244	# 2323
	lw		x1, -240(x2)	# 2323
	lw		x5, -64(x2)	# 2324
	lw		x6, -4(x2)	# 2324
	sw		x4, -240(x2)	# 2324
	addi	x4, x5, 0	# 2324
	addi	x5, x6, 0	# 2324
	sw		x1, -244(x2)	# 2324
	addi	x2, x2, -248	# 2324
	jal		x1, min_caml_create_array	# 2324
	addi	x2, x2, 248	# 2324
	lw		x1, -244(x2)	# 2324
	flw		f1, -8(x2)	# 2309
	sw		x4, -244(x2)	# 2309
	addi	x4, x7, 0	# 2309
	sw		x1, -248(x2)	# 2309
	addi	x2, x2, -252	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 252	# 2309
	lw		x1, -248(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -248(x2)	# 2310
	addi	x2, x2, -252	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 252	# 2310
	lw		x1, -248(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	sw		x4, -248(x2)	# 2311
	addi	x4, x7, 0	# 2311
	sw		x1, -252(x2)	# 2311
	addi	x2, x2, -256	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 256	# 2311
	lw		x1, -252(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x9, -248(x2)	# 2311
	add		x6, x9, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -8(x2)	# 2312
	addi	x4, x7, 0	# 2312
	sw		x1, -252(x2)	# 2312
	addi	x2, x2, -256	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 256	# 2312
	lw		x1, -252(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	add		x6, x9, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -8(x2)	# 2313
	addi	x4, x7, 0	# 2313
	sw		x1, -252(x2)	# 2313
	addi	x2, x2, -256	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 256	# 2313
	lw		x1, -252(x2)	# 2313
	mul		x5, x30, x7	# 2313
	add		x5, x9, x5	# 2313
	sw		x4, 0(x5)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x7, 0	# 2314
	sw		x1, -252(x2)	# 2314
	addi	x2, x2, -256	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 256	# 2314
	lw		x1, -252(x2)	# 2314
	lw		x5, -120(x2)	# 2314
	mul		x6, x30, x5	# 2314
	add		x6, x9, x6	# 2314
	sw		x4, 0(x6)	# 2314
	flw		f1, -8(x2)	# 2309
	addi	x4, x7, 0	# 2309
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
	sw		x4, -252(x2)	# 2311
	addi	x4, x7, 0	# 2311
	sw		x1, -256(x2)	# 2311
	addi	x2, x2, -260	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 260	# 2311
	lw		x1, -256(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x10, -252(x2)	# 2311
	add		x6, x10, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -8(x2)	# 2312
	addi	x4, x7, 0	# 2312
	sw		x1, -256(x2)	# 2312
	addi	x2, x2, -260	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 260	# 2312
	lw		x1, -256(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	add		x6, x10, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -8(x2)	# 2313
	addi	x4, x7, 0	# 2313
	sw		x1, -256(x2)	# 2313
	addi	x2, x2, -260	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 260	# 2313
	lw		x1, -256(x2)	# 2313
	mul		x5, x30, x7	# 2313
	add		x5, x10, x5	# 2313
	sw		x4, 0(x5)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x7, 0	# 2314
	sw		x1, -256(x2)	# 2314
	addi	x2, x2, -260	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 260	# 2314
	lw		x1, -256(x2)	# 2314
	lw		x5, -120(x2)	# 2314
	mul		x6, x30, x5	# 2314
	add		x6, x10, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, 0(x2)	# 2327
	lw		x6, -4(x2)	# 2327
	addi	x5, x6, 0	# 2327
	sw		x1, -256(x2)	# 2327
	addi	x2, x2, -260	# 2327
	jal		x1, min_caml_create_array	# 2327
	addi	x2, x2, 260	# 2327
	lw		x1, -256(x2)	# 2327
	flw		f1, -8(x2)	# 2309
	sw		x4, -256(x2)	# 2309
	addi	x4, x7, 0	# 2309
	sw		x1, -260(x2)	# 2309
	addi	x2, x2, -264	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 264	# 2309
	lw		x1, -260(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -260(x2)	# 2310
	addi	x2, x2, -264	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 264	# 2310
	lw		x1, -260(x2)	# 2310
	flw		f1, -8(x2)	# 2311
	sw		x4, -260(x2)	# 2311
	addi	x4, x7, 0	# 2311
	sw		x1, -264(x2)	# 2311
	addi	x2, x2, -268	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 268	# 2311
	lw		x1, -264(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x11, -260(x2)	# 2311
	add		x6, x11, x6	# 2311
	sw		x4, 0(x6)	# 2311
	flw		f1, -8(x2)	# 2312
	addi	x4, x7, 0	# 2312
	sw		x1, -264(x2)	# 2312
	addi	x2, x2, -268	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 268	# 2312
	lw		x1, -264(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	add		x6, x11, x6	# 2312
	sw		x4, 0(x6)	# 2312
	flw		f1, -8(x2)	# 2313
	addi	x4, x7, 0	# 2313
	sw		x1, -264(x2)	# 2313
	addi	x2, x2, -268	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 268	# 2313
	lw		x1, -264(x2)	# 2313
	mul		x5, x30, x7	# 2313
	add		x5, x11, x5	# 2313
	sw		x4, 0(x5)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x7, 0	# 2314
	sw		x1, -264(x2)	# 2314
	addi	x2, x2, -268	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 268	# 2314
	lw		x1, -264(x2)	# 2314
	lw		x5, -120(x2)	# 2314
	mul		x6, x30, x5	# 2314
	add		x6, x11, x6	# 2314
	sw		x4, 0(x6)	# 2314
	addi	x4, x3, 0	# 2329
	addi	x3, x3, 32	# 2329
	sw		x11, 28(x4)	# 2329
	lw		x6, -256(x2)	# 2329
	sw		x6, 24(x4)	# 2329
	sw		x10, 20(x4)	# 2329
	sw		x9, 16(x4)	# 2329
	lw		x6, -244(x2)	# 2329
	sw		x6, 12(x4)	# 2329
	lw		x6, -240(x2)	# 2329
	sw		x6, 8(x4)	# 2329
	sw		x8, 4(x4)	# 2329
	lw		x6, -228(x2)	# 2329
	sw		x6, 0(x4)	# 2329
	lw		x6, -232(x2)	# 2343
	addi	x5, x4, 0	# 2343
	addi	x4, x6, 0	# 2343
	sw		x1, -264(x2)	# 2343
	addi	x2, x2, -268	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 268	# 2343
	lw		x1, -264(x2)	# 2343
	lw		x5, -4(x2)	# 2344
	mul		x6, x30, x5	# 2344
	addi	x6, x6, 64412	# 2344
	lw		x6, 0(x6)	# 2344
	lw		x8, -48(x2)	# 2344
	sub		x6, x6, x8	# 2344
	lw		x29, -180(x2)	# 2344
	addi	x5, x6, 0	# 2344
	sw		x1, -264(x2)	# 2344
	addi	x2, x2, -268	# 2344
	lw		x31, 0(x29)	# 2344
	jalr	x1, x31, 0	# 2344
	addi	x2, x2, 268	# 2344
	lw		x1, -264(x2)	# 2344
	sw		x1, -264(x2)	# 721
	addi	x2, x2, -268	# 721
	jal		x1, min_caml_read_float	# 721
	addi	x2, x2, 268	# 721
	lw		x1, -264(x2)	# 721
	lw		x5, -4(x2)	# 721
	mul		x6, x30, x5	# 721
	addi	x6, x6, 64084	# 721
	fsw		f1, 0(x6)	# 721
	sw		x1, -264(x2)	# 722
	addi	x2, x2, -268	# 722
	jal		x1, min_caml_read_float	# 722
	addi	x2, x2, 268	# 722
	lw		x1, -264(x2)	# 722
	lw		x6, 0(x2)	# 722
	mul		x7, x30, x6	# 722
	addi	x7, x7, 64084	# 722
	fsw		f1, 0(x7)	# 722
	sw		x1, -264(x2)	# 723
	addi	x2, x2, -268	# 723
	jal		x1, min_caml_read_float	# 723
	addi	x2, x2, 268	# 723
	lw		x1, -264(x2)	# 723
	lw		x7, -48(x2)	# 723
	mul		x8, x30, x7	# 723
	addi	x8, x8, 64084	# 723
	fsw		f1, 0(x8)	# 723
	sw		x1, -264(x2)	# 725
	addi	x2, x2, -268	# 725
	jal		x1, min_caml_read_float	# 725
	addi	x2, x2, 268	# 725
	lw		x1, -264(x2)	# 725
	lui		x8, %hi(l.26498)	# 714
	ori		x8, x0, %lo(l.26498)	# 714
	flw		f2, 0(x8)	# 714
	fmul	f1, f1, f2	# 714
	lw		x29, -100(x2)	# 726
	sw		x4, -264(x2)	# 726
	fsw		f2, -268(x2)	# 726
	fsw		f1, -272(x2)	# 726
	sw		x1, -276(x2)	# 726
	addi	x2, x2, -280	# 726
	lw		x31, 0(x29)	# 726
	jalr	x1, x31, 0	# 726
	addi	x2, x2, 280	# 726
	lw		x1, -276(x2)	# 726
	flw		f2, -272(x2)	# 727
	lw		x29, -96(x2)	# 727
	fsw		f1, -276(x2)	# 727
	fadd	f1, f0, f2	# 727
	sw		x1, -280(x2)	# 727
	addi	x2, x2, -284	# 727
	lw		x31, 0(x29)	# 727
	jalr	x1, x31, 0	# 727
	addi	x2, x2, 284	# 727
	lw		x1, -280(x2)	# 727
	fsw		f1, -280(x2)	# 728
	sw		x1, -284(x2)	# 728
	addi	x2, x2, -288	# 728
	jal		x1, min_caml_read_float	# 728
	addi	x2, x2, 288	# 728
	lw		x1, -284(x2)	# 728
	flw		f2, -268(x2)	# 714
	fmul	f1, f1, f2	# 714
	lw		x29, -100(x2)	# 729
	fsw		f1, -284(x2)	# 729
	sw		x1, -288(x2)	# 729
	addi	x2, x2, -292	# 729
	lw		x31, 0(x29)	# 729
	jalr	x1, x31, 0	# 729
	addi	x2, x2, 292	# 729
	lw		x1, -288(x2)	# 729
	flw		f2, -284(x2)	# 730
	lw		x29, -96(x2)	# 730
	fsw		f1, -288(x2)	# 730
	fadd	f1, f0, f2	# 730
	sw		x1, -292(x2)	# 730
	addi	x2, x2, -296	# 730
	lw		x31, 0(x29)	# 730
	jalr	x1, x31, 0	# 730
	addi	x2, x2, 296	# 730
	lw		x1, -292(x2)	# 730
	flw		f2, -276(x2)	# 732
	fmul	f3, f2, f1	# 732
	lui		x4, %hi(l.29492)	# 732
	ori		x4, x0, %lo(l.29492)	# 732
	flw		f4, 0(x4)	# 732
	fmul	f3, f3, f4	# 732
	lw		x4, -4(x2)	# 732
	mul		x5, x30, x4	# 732
	addi	x5, x5, 64480	# 732
	fsw		f3, 0(x5)	# 732
	lui		x5, %hi(l.29496)	# 733
	ori		x5, x0, %lo(l.29496)	# 733
	flw		f3, 0(x5)	# 733
	flw		f5, -280(x2)	# 733
	fmul	f3, f5, f3	# 733
	lw		x5, 0(x2)	# 733
	mul		x6, x30, x5	# 733
	addi	x6, x6, 64480	# 733
	fsw		f3, 0(x6)	# 733
	flw		f3, -288(x2)	# 734
	fmul	f6, f2, f3	# 734
	fmul	f4, f6, f4	# 734
	lw		x6, -48(x2)	# 734
	mul		x7, x30, x6	# 734
	addi	x7, x7, 64480	# 734
	fsw		f4, 0(x7)	# 734
	mul		x7, x30, x4	# 736
	addi	x7, x7, 64456	# 736
	fsw		f3, 0(x7)	# 736
	mul		x7, x30, x5	# 737
	addi	x7, x7, 64456	# 737
	flw		f4, -8(x2)	# 737
	fsw		f4, 0(x7)	# 737
	fsub	f6, f0, f1	# 123
	mul		x7, x30, x6	# 738
	addi	x7, x7, 64456	# 738
	fsw		f6, 0(x7)	# 738
	fsub	f5, f0, f5	# 123
	fmul	f1, f5, f1	# 740
	mul		x7, x30, x4	# 740
	addi	x7, x7, 64468	# 740
	fsw		f1, 0(x7)	# 740
	fsub	f1, f0, f2	# 123
	mul		x7, x30, x5	# 741
	addi	x7, x7, 64468	# 741
	fsw		f1, 0(x7)	# 741
	fmul	f1, f5, f3	# 742
	mul		x7, x30, x6	# 742
	addi	x7, x7, 64468	# 742
	fsw		f1, 0(x7)	# 742
	mul		x7, x30, x4	# 744
	addi	x7, x7, 64084	# 744
	flw		f1, 0(x7)	# 744
	mul		x7, x30, x4	# 744
	addi	x7, x7, 64480	# 744
	flw		f2, 0(x7)	# 744
	fsub	f1, f1, f2	# 744
	mul		x7, x30, x4	# 744
	addi	x7, x7, 64096	# 744
	fsw		f1, 0(x7)	# 744
	mul		x7, x30, x5	# 745
	addi	x7, x7, 64084	# 745
	flw		f1, 0(x7)	# 745
	mul		x7, x30, x5	# 745
	addi	x7, x7, 64480	# 745
	flw		f2, 0(x7)	# 745
	fsub	f1, f1, f2	# 745
	mul		x7, x30, x5	# 745
	addi	x7, x7, 64096	# 745
	fsw		f1, 0(x7)	# 745
	mul		x7, x30, x6	# 746
	addi	x7, x7, 64084	# 746
	flw		f1, 0(x7)	# 746
	mul		x7, x30, x6	# 746
	addi	x7, x7, 64480	# 746
	flw		f2, 0(x7)	# 746
	fsub	f1, f1, f2	# 746
	mul		x7, x30, x6	# 746
	addi	x7, x7, 64096	# 746
	fsw		f1, 0(x7)	# 746
	sw		x1, -292(x2)	# 753
	addi	x2, x2, -296	# 753
	jal		x1, min_caml_read_int	# 753
	addi	x2, x2, 296	# 753
	lw		x1, -292(x2)	# 753
	sw		x1, -292(x2)	# 756
	addi	x2, x2, -296	# 756
	jal		x1, min_caml_read_float	# 756
	addi	x2, x2, 296	# 756
	lw		x1, -292(x2)	# 756
	flw		f2, -268(x2)	# 714
	fmul	f1, f1, f2	# 714
	lw		x29, -96(x2)	# 757
	fsw		f1, -292(x2)	# 757
	sw		x1, -296(x2)	# 757
	addi	x2, x2, -300	# 757
	lw		x31, 0(x29)	# 757
	jalr	x1, x31, 0	# 757
	addi	x2, x2, 300	# 757
	lw		x1, -296(x2)	# 757
	fsub	f1, f0, f1	# 123
	lw		x4, 0(x2)	# 758
	mul		x5, x30, x4	# 758
	addi	x5, x5, 64108	# 758
	fsw		f1, 0(x5)	# 758
	sw		x1, -296(x2)	# 759
	addi	x2, x2, -300	# 759
	jal		x1, min_caml_read_float	# 759
	addi	x2, x2, 300	# 759
	lw		x1, -296(x2)	# 759
	flw		f2, -268(x2)	# 714
	fmul	f1, f1, f2	# 714
	flw		f2, -292(x2)	# 760
	lw		x29, -100(x2)	# 760
	fsw		f1, -296(x2)	# 760
	fadd	f1, f0, f2	# 760
	sw		x1, -300(x2)	# 760
	addi	x2, x2, -304	# 760
	lw		x31, 0(x29)	# 760
	jalr	x1, x31, 0	# 760
	addi	x2, x2, 304	# 760
	lw		x1, -300(x2)	# 760
	flw		f2, -296(x2)	# 761
	lw		x29, -96(x2)	# 761
	fsw		f1, -300(x2)	# 761
	fadd	f1, f0, f2	# 761
	sw		x1, -304(x2)	# 761
	addi	x2, x2, -308	# 761
	lw		x31, 0(x29)	# 761
	jalr	x1, x31, 0	# 761
	addi	x2, x2, 308	# 761
	lw		x1, -304(x2)	# 761
	flw		f2, -300(x2)	# 762
	fmul	f1, f2, f1	# 762
	lw		x4, -4(x2)	# 762
	mul		x5, x30, x4	# 762
	addi	x5, x5, 64108	# 762
	fsw		f1, 0(x5)	# 762
	flw		f1, -296(x2)	# 763
	lw		x29, -100(x2)	# 763
	sw		x1, -304(x2)	# 763
	addi	x2, x2, -308	# 763
	lw		x31, 0(x29)	# 763
	jalr	x1, x31, 0	# 763
	addi	x2, x2, 308	# 763
	lw		x1, -304(x2)	# 763
	flw		f2, -300(x2)	# 764
	fmul	f1, f2, f1	# 764
	lw		x4, -48(x2)	# 764
	mul		x5, x30, x4	# 764
	addi	x5, x5, 64108	# 764
	fsw		f1, 0(x5)	# 764
	sw		x1, -304(x2)	# 765
	addi	x2, x2, -308	# 765
	jal		x1, min_caml_read_float	# 765
	addi	x2, x2, 308	# 765
	lw		x1, -304(x2)	# 765
	lw		x5, -4(x2)	# 765
	mul		x6, x30, x5	# 765
	addi	x6, x6, 64120	# 765
	fsw		f1, 0(x6)	# 765
	lw		x29, -176(x2)	# 907
	addi	x4, x5, 0	# 907
	sw		x1, -304(x2)	# 907
	addi	x2, x2, -308	# 907
	lw		x31, 0(x29)	# 907
	jalr	x1, x31, 0	# 907
	addi	x2, x2, 308	# 907
	lw		x1, -304(x2)	# 907
	lw		x4, -4(x2)	# 944
	lw		x29, -172(x2)	# 944
	sw		x1, -304(x2)	# 944
	addi	x2, x2, -308	# 944
	lw		x31, 0(x29)	# 944
	jalr	x1, x31, 0	# 944
	addi	x2, x2, 308	# 944
	lw		x1, -304(x2)	# 944
	lw		x4, -4(x2)	# 945
	lw		x29, -168(x2)	# 945
	sw		x1, -304(x2)	# 945
	addi	x2, x2, -308	# 945
	lw		x31, 0(x29)	# 945
	jalr	x1, x31, 0	# 945
	addi	x2, x2, 308	# 945
	lw		x1, -304(x2)	# 945
	lw		x5, -4(x2)	# 945
	mul		x6, x30, x5	# 945
	addi	x6, x6, 64332	# 945
	sw		x4, 0(x6)	# 945
	addi	x4, x0, 80	# 2152
	sw		x1, -304(x2)	# 2152
	addi	x2, x2, -308	# 2152
	jal		x1, min_caml_print_char	# 2152
	addi	x2, x2, 308	# 2152
	lw		x1, -304(x2)	# 2152
	addi	x4, x0, 51	# 2153
	sw		x1, -304(x2)	# 2153
	addi	x2, x2, -308	# 2153
	jal		x1, min_caml_print_char	# 2153
	addi	x2, x2, 308	# 2153
	lw		x1, -304(x2)	# 2153
	addi	x4, x0, 10	# 2154
	sw		x4, -304(x2)	# 2154
	sw		x1, -308(x2)	# 2154
	addi	x2, x2, -312	# 2154
	jal		x1, min_caml_print_char	# 2154
	addi	x2, x2, 312	# 2154
	lw		x1, -308(x2)	# 2154
	mul		x4, x30, x5	# 2155
	addi	x4, x4, 64412	# 2155
	lw		x4, 0(x4)	# 2155
	sw		x1, -308(x2)	# 2155
	addi	x2, x2, -312	# 2155
	jal		x1, min_caml_print_int	# 2155
	addi	x2, x2, 312	# 2155
	lw		x1, -308(x2)	# 2155
	addi	x4, x0, 32	# 2156
	sw		x4, -308(x2)	# 2156
	sw		x1, -312(x2)	# 2156
	addi	x2, x2, -316	# 2156
	jal		x1, min_caml_print_char	# 2156
	addi	x2, x2, 316	# 2156
	lw		x1, -312(x2)	# 2156
	lw		x4, 0(x2)	# 2157
	mul		x6, x30, x4	# 2157
	addi	x6, x6, 64412	# 2157
	lw		x6, 0(x6)	# 2157
	addi	x4, x6, 0	# 2157
	sw		x1, -312(x2)	# 2157
	addi	x2, x2, -316	# 2157
	jal		x1, min_caml_print_int	# 2157
	addi	x2, x2, 316	# 2157
	lw		x1, -312(x2)	# 2157
	lw		x4, -308(x2)	# 2158
	sw		x1, -312(x2)	# 2158
	addi	x2, x2, -316	# 2158
	jal		x1, min_caml_print_char	# 2158
	addi	x2, x2, 316	# 2158
	lw		x1, -312(x2)	# 2158
	addi	x4, x0, 255	# 2159
	sw		x1, -312(x2)	# 2159
	addi	x2, x2, -316	# 2159
	jal		x1, min_caml_print_int	# 2159
	addi	x2, x2, 316	# 2159
	lw		x1, -312(x2)	# 2159
	lw		x4, -304(x2)	# 2160
	sw		x1, -312(x2)	# 2160
	addi	x2, x2, -316	# 2160
	jal		x1, min_caml_print_char	# 2160
	addi	x2, x2, 316	# 2160
	lw		x1, -312(x2)	# 2160
	lw		x4, -120(x2)	# 2458
	lw		x29, -164(x2)	# 2458
	sw		x1, -312(x2)	# 2458
	addi	x2, x2, -316	# 2458
	lw		x31, 0(x29)	# 2458
	jalr	x1, x31, 0	# 2458
	addi	x2, x2, 316	# 2458
	lw		x1, -312(x2)	# 2458
	addi	x4, x0, 9	# 2459
	lw		x5, -4(x2)	# 2459
	lw		x29, -160(x2)	# 2459
	addi	x6, x5, 0	# 2459
	sw		x1, -312(x2)	# 2459
	addi	x2, x2, -316	# 2459
	lw		x31, 0(x29)	# 2459
	jalr	x1, x31, 0	# 2459
	addi	x2, x2, 316	# 2459
	lw		x1, -312(x2)	# 2459
	lw		x4, -120(x2)	# 2460
	lw		x29, -156(x2)	# 2460
	sw		x1, -312(x2)	# 2460
	addi	x2, x2, -316	# 2460
	lw		x31, 0(x29)	# 2460
	jalr	x1, x31, 0	# 2460
	addi	x2, x2, 316	# 2460
	lw		x1, -312(x2)	# 2460
	lw		x4, -4(x2)	# 296
	mul		x5, x30, x4	# 296
	addi	x5, x5, 64108	# 296
	flw		f1, 0(x5)	# 296
	mul		x5, x30, x4	# 296
	addi	x5, x5, 64532	# 296
	fsw		f1, 0(x5)	# 296
	lw		x5, 0(x2)	# 297
	mul		x6, x30, x5	# 297
	addi	x6, x6, 64108	# 297
	flw		f1, 0(x6)	# 297
	mul		x6, x30, x5	# 297
	addi	x6, x6, 64532	# 297
	fsw		f1, 0(x6)	# 297
	lw		x6, -48(x2)	# 298
	mul		x7, x30, x6	# 298
	addi	x7, x7, 64108	# 298
	flw		f1, 0(x7)	# 298
	mul		x7, x30, x6	# 298
	addi	x7, x7, 64532	# 298
	fsw		f1, 0(x7)	# 298
	mul		x7, x30, x4	# 1324
	addi	x7, x7, 63796	# 1324
	lw		x7, 0(x7)	# 1324
	sub		x7, x7, x5	# 1324
	lw		x8, -80(x2)	# 1324
	lw		x29, -152(x2)	# 1324
	addi	x5, x7, 0	# 1324
	addi	x4, x8, 0	# 1324
	sw		x1, -312(x2)	# 1324
	addi	x2, x2, -316	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 316	# 1324
	lw		x1, -312(x2)	# 1324
	lw		x4, -4(x2)	# 2542
	mul		x5, x30, x4	# 2542
	addi	x5, x5, 63796	# 2542
	lw		x5, 0(x5)	# 2542
	lw		x6, 0(x2)	# 2542
	sub		x5, x5, x6	# 2542
	ble		x4, x5, ble.32940	# 2507
	jal		x0, ble_cont.32939	# 2507
ble.32940:
	mul		x7, x30, x5	# 2508
	addi	x7, x7, 63844	# 2508
	lw		x7, 0(x7)	# 2508
	lw		x8, 8(x7)	# 400
	lw		x9, -48(x2)	# 2509
	beq		x8, x9, beq.32942	# 2509
	jal		x0, ble_cont.32939	# 2509
beq.32942:
	lw		x8, 28(x7)	# 498
	mul		x10, x30, x4	# 503
	add		x8, x8, x10	# 503
	flw		f1, 0(x8)	# 503
	fadd	f2, f0, f16	# 2510
	fle		f2, f1, ble_cont.32939	# 125
	lw		x8, 4(x7)	# 390
	beq		x8, x6, beq.32946	# 2513
	beq		x8, x9, beq.32948	# 2515
	jal		x0, ble_cont.32939	# 2515
beq.32948:
	lw		x8, -120(x2)	# 2492
	mul		x5, x5, x8	# 2492
	addi	x5, x5, 1	# 2492
	mul		x8, x30, x4	# 2493
	addi	x8, x8, 65532	# 2493
	lw		x8, 0(x8)	# 2493
	lw		x10, 28(x7)	# 498
	mul		x11, x30, x4	# 503
	add		x10, x10, x11	# 503
	flw		f1, 0(x10)	# 503
	fsub	f1, f2, f1	# 2494
	lw		x10, 16(x7)	# 458
	mul		x11, x30, x4	# 329
	addi	x11, x11, 64108	# 329
	flw		f2, 0(x11)	# 329
	mul		x11, x30, x4	# 329
	add		x11, x10, x11	# 329
	flw		f3, 0(x11)	# 329
	fmul	f3, f2, f3	# 329
	mul		x11, x30, x6	# 329
	addi	x11, x11, 64108	# 329
	flw		f4, 0(x11)	# 329
	mul		x11, x30, x6	# 329
	add		x11, x10, x11	# 329
	flw		f5, 0(x11)	# 329
	fmul	f5, f4, f5	# 329
	fadd	f3, f3, f5	# 329
	mul		x11, x30, x9	# 329
	addi	x11, x11, 64108	# 329
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
	sw		x5, -312(x2)	# 2419
	fsw		f1, -316(x2)	# 2419
	addi	x4, x7, 0	# 2419
	fadd	f1, f0, f5	# 2419
	sw		x1, -320(x2)	# 2419
	addi	x2, x2, -324	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 324	# 2419
	lw		x1, -320(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lw		x4, -4(x2)	# 2420
	mul		x10, x30, x4	# 2420
	addi	x10, x10, 63796	# 2420
	lw		x10, 0(x10)	# 2420
	sw		x5, -320(x2)	# 2420
	addi	x4, x10, 0	# 2420
	sw		x1, -324(x2)	# 2420
	addi	x2, x2, -328	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 328	# 2420
	lw		x1, -324(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -320(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	lw		x6, -4(x2)	# 277
	mul		x10, x30, x6	# 277
	add		x10, x4, x10	# 277
	fsw		f2, 0(x10)	# 277
	lw		x10, 0(x2)	# 278
	mul		x11, x30, x10	# 278
	add		x11, x4, x11	# 278
	fsw		f4, 0(x11)	# 278
	mul		x11, x30, x9	# 279
	add		x4, x4, x11	# 279
	fsw		f3, 0(x4)	# 279
	mul		x4, x30, x6	# 1324
	addi	x4, x4, 63796	# 1324
	lw		x4, 0(x4)	# 1324
	sub		x4, x4, x10	# 1324
	lw		x29, -152(x2)	# 1324
	sw		x8, -324(x2)	# 1324
	sw		x5, -328(x2)	# 1324
	addi	x31, x5, 0	# 1324
	addi	x5, x4, 0	# 1324
	addi	x4, x31, 0	# 1324
	sw		x1, -332(x2)	# 1324
	addi	x2, x2, -336	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 336	# 1324
	lw		x1, -332(x2)	# 1324
	addi	x4, x3, 0	# 2473
	addi	x3, x3, 12	# 2473
	flw		f1, -316(x2)	# 2473
	fsw		f1, 8(x4)	# 2473
	lw		x5, -328(x2)	# 2473
	sw		x5, 4(x4)	# 2473
	lw		x5, -312(x2)	# 2473
	sw		x5, 0(x4)	# 2473
	lw		x5, -324(x2)	# 2473
	mul		x6, x30, x5	# 2473
	addi	x6, x6, 64812	# 2473
	sw		x4, 0(x6)	# 2473
	addi	x4, x5, 1	# 2501
	lw		x5, -4(x2)	# 2501
	mul		x6, x30, x5	# 2501
	addi	x6, x6, 65532	# 2501
	sw		x4, 0(x6)	# 2501
	jal		x0, ble_cont.32939	# 2513
beq.32946:
	lw		x8, -120(x2)	# 2478
	mul		x5, x5, x8	# 2478
	mul		x8, x30, x4	# 2479
	addi	x8, x8, 65532	# 2479
	lw		x8, 0(x8)	# 2479
	lw		x7, 28(x7)	# 498
	mul		x10, x30, x4	# 503
	add		x7, x7, x10	# 503
	flw		f1, 0(x7)	# 503
	fsub	f1, f2, f1	# 2480
	mul		x7, x30, x4	# 2481
	addi	x7, x7, 64108	# 2481
	flw		f2, 0(x7)	# 2481
	fsub	f3, f0, f2	# 123
	mul		x7, x30, x6	# 2482
	addi	x7, x7, 64108	# 2482
	flw		f4, 0(x7)	# 2482
	fsub	f4, f0, f4	# 123
	mul		x7, x30, x9	# 2483
	addi	x7, x7, 64108	# 2483
	flw		f5, 0(x7)	# 2483
	fsub	f5, f0, f5	# 123
	addi	x7, x5, 1	# 2484
	flw		f6, -8(x2)	# 2419
	lw		x10, -20(x2)	# 2419
	sw		x5, -332(x2)	# 2419
	fsw		f1, -336(x2)	# 2419
	addi	x4, x10, 0	# 2419
	fadd	f1, f0, f6	# 2419
	sw		x1, -340(x2)	# 2419
	addi	x2, x2, -344	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 344	# 2419
	lw		x1, -340(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lw		x4, -4(x2)	# 2420
	mul		x11, x30, x4	# 2420
	addi	x11, x11, 63796	# 2420
	lw		x11, 0(x11)	# 2420
	sw		x5, -340(x2)	# 2420
	addi	x4, x11, 0	# 2420
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
	mul		x11, x30, x6	# 277
	add		x11, x4, x11	# 277
	fsw		f2, 0(x11)	# 277
	lw		x11, 0(x2)	# 278
	mul		x12, x30, x11	# 278
	add		x12, x4, x12	# 278
	fsw		f4, 0(x12)	# 278
	mul		x12, x30, x9	# 279
	add		x4, x4, x12	# 279
	fsw		f5, 0(x4)	# 279
	mul		x4, x30, x6	# 1324
	addi	x4, x4, 63796	# 1324
	lw		x4, 0(x4)	# 1324
	sub		x4, x4, x11	# 1324
	lw		x29, -152(x2)	# 1324
	fsw		f4, -344(x2)	# 1324
	fsw		f5, -348(x2)	# 1324
	fsw		f3, -352(x2)	# 1324
	sw		x8, -356(x2)	# 1324
	sw		x7, -360(x2)	# 1324
	sw		x5, -364(x2)	# 1324
	addi	x31, x5, 0	# 1324
	addi	x5, x4, 0	# 1324
	addi	x4, x31, 0	# 1324
	sw		x1, -368(x2)	# 1324
	addi	x2, x2, -372	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 372	# 1324
	lw		x1, -368(x2)	# 1324
	addi	x4, x3, 0	# 2473
	addi	x3, x3, 12	# 2473
	flw		f1, -336(x2)	# 2473
	fsw		f1, 8(x4)	# 2473
	lw		x5, -364(x2)	# 2473
	sw		x5, 4(x4)	# 2473
	lw		x5, -360(x2)	# 2473
	sw		x5, 0(x4)	# 2473
	lw		x5, -356(x2)	# 2473
	mul		x6, x30, x5	# 2473
	addi	x6, x6, 64812	# 2473
	sw		x4, 0(x6)	# 2473
	addi	x4, x5, 1	# 2485
	lw		x6, -332(x2)	# 2485
	addi	x7, x6, 2	# 2485
	lw		x8, 0(x2)	# 2485
	mul		x9, x30, x8	# 2485
	addi	x9, x9, 64108	# 2485
	flw		f2, 0(x9)	# 2485
	flw		f3, -8(x2)	# 2419
	lw		x9, -20(x2)	# 2419
	sw		x4, -368(x2)	# 2419
	addi	x4, x9, 0	# 2419
	fadd	f1, f0, f3	# 2419
	sw		x1, -372(x2)	# 2419
	addi	x2, x2, -376	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 376	# 2419
	lw		x1, -372(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lw		x4, -4(x2)	# 2420
	mul		x10, x30, x4	# 2420
	addi	x10, x10, 63796	# 2420
	lw		x10, 0(x10)	# 2420
	sw		x5, -372(x2)	# 2420
	addi	x4, x10, 0	# 2420
	sw		x1, -376(x2)	# 2420
	addi	x2, x2, -380	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 380	# 2420
	lw		x1, -376(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -372(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	lw		x6, -4(x2)	# 277
	mul		x10, x30, x6	# 277
	add		x10, x4, x10	# 277
	flw		f1, -352(x2)	# 277
	fsw		f1, 0(x10)	# 277
	mul		x10, x30, x8	# 278
	add		x10, x4, x10	# 278
	fsw		f2, 0(x10)	# 278
	lw		x10, -48(x2)	# 279
	mul		x11, x30, x10	# 279
	add		x4, x4, x11	# 279
	flw		f2, -348(x2)	# 279
	fsw		f2, 0(x4)	# 279
	mul		x4, x30, x6	# 1324
	addi	x4, x4, 63796	# 1324
	lw		x4, 0(x4)	# 1324
	sub		x4, x4, x8	# 1324
	lw		x29, -152(x2)	# 1324
	sw		x7, -376(x2)	# 1324
	sw		x5, -380(x2)	# 1324
	addi	x31, x5, 0	# 1324
	addi	x5, x4, 0	# 1324
	addi	x4, x31, 0	# 1324
	sw		x1, -384(x2)	# 1324
	addi	x2, x2, -388	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 388	# 1324
	lw		x1, -384(x2)	# 1324
	addi	x4, x3, 0	# 2473
	addi	x3, x3, 12	# 2473
	flw		f1, -336(x2)	# 2473
	fsw		f1, 8(x4)	# 2473
	lw		x5, -380(x2)	# 2473
	sw		x5, 4(x4)	# 2473
	lw		x5, -376(x2)	# 2473
	sw		x5, 0(x4)	# 2473
	lw		x5, -368(x2)	# 2473
	mul		x5, x30, x5	# 2473
	addi	x5, x5, 64812	# 2473
	sw		x4, 0(x5)	# 2473
	lw		x4, -356(x2)	# 2486
	addi	x5, x4, 2	# 2486
	lw		x6, -332(x2)	# 2486
	addi	x6, x6, 3	# 2486
	lw		x7, -48(x2)	# 2486
	mul		x8, x30, x7	# 2486
	addi	x8, x8, 64108	# 2486
	flw		f2, 0(x8)	# 2486
	flw		f3, -8(x2)	# 2419
	lw		x8, -20(x2)	# 2419
	sw		x5, -384(x2)	# 2419
	addi	x4, x8, 0	# 2419
	fadd	f1, f0, f3	# 2419
	sw		x1, -388(x2)	# 2419
	addi	x2, x2, -392	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 392	# 2419
	lw		x1, -388(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lw		x4, -4(x2)	# 2420
	mul		x9, x30, x4	# 2420
	addi	x9, x9, 63796	# 2420
	lw		x9, 0(x9)	# 2420
	sw		x6, -388(x2)	# 2420
	sw		x5, -392(x2)	# 2420
	addi	x4, x9, 0	# 2420
	sw		x1, -396(x2)	# 2420
	addi	x2, x2, -400	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 400	# 2420
	lw		x1, -396(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -392(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	lw		x6, -4(x2)	# 277
	mul		x9, x30, x6	# 277
	add		x9, x4, x9	# 277
	flw		f1, -352(x2)	# 277
	fsw		f1, 0(x9)	# 277
	lw		x9, 0(x2)	# 278
	mul		x10, x30, x9	# 278
	add		x10, x4, x10	# 278
	flw		f1, -344(x2)	# 278
	fsw		f1, 0(x10)	# 278
	mul		x10, x30, x7	# 279
	add		x4, x4, x10	# 279
	fsw		f2, 0(x4)	# 279
	mul		x4, x30, x6	# 1324
	addi	x4, x4, 63796	# 1324
	lw		x4, 0(x4)	# 1324
	sub		x4, x4, x9	# 1324
	lw		x29, -152(x2)	# 1324
	sw		x5, -396(x2)	# 1324
	addi	x31, x5, 0	# 1324
	addi	x5, x4, 0	# 1324
	addi	x4, x31, 0	# 1324
	sw		x1, -400(x2)	# 1324
	addi	x2, x2, -404	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 404	# 1324
	lw		x1, -400(x2)	# 1324
	addi	x4, x3, 0	# 2473
	addi	x3, x3, 12	# 2473
	flw		f1, -336(x2)	# 2473
	fsw		f1, 8(x4)	# 2473
	lw		x5, -396(x2)	# 2473
	sw		x5, 4(x4)	# 2473
	lw		x5, -388(x2)	# 2473
	sw		x5, 0(x4)	# 2473
	lw		x5, -384(x2)	# 2473
	mul		x5, x30, x5	# 2473
	addi	x5, x5, 64812	# 2473
	sw		x4, 0(x5)	# 2473
	lw		x4, -356(x2)	# 2487
	addi	x4, x4, 3	# 2487
	lw		x5, -4(x2)	# 2487
	mul		x6, x30, x5	# 2487
	addi	x6, x6, 65532	# 2487
	sw		x4, 0(x6)	# 2487
	jal		x0, ble_cont.32939	# 125
ble_cont.32939:
	lw		x4, -4(x2)	# 2255
	mul		x5, x30, x4	# 2255
	addi	x5, x5, 64428	# 2255
	flw		f1, 0(x5)	# 2255
	lw		x5, 0(x2)	# 2255
	mul		x6, x30, x5	# 2255
	addi	x6, x6, 64420	# 2255
	lw		x6, 0(x6)	# 2255
	sub		x6, x4, x6	# 2255
	fsw		f1, -400(x2)	# 2255
	addi	x4, x6, 0	# 2255
	sw		x1, -404(x2)	# 2255
	addi	x2, x2, -408	# 2255
	jal		x1, min_caml_float_of_int	# 2255
	addi	x2, x2, 408	# 2255
	lw		x1, -404(x2)	# 2255
	flw		f2, -400(x2)	# 2255
	fmul	f1, f2, f1	# 2255
	lw		x6, -4(x2)	# 2258
	mul		x4, x30, x6	# 2258
	addi	x4, x4, 64468	# 2258
	flw		f2, 0(x4)	# 2258
	fmul	f2, f1, f2	# 2258
	mul		x4, x30, x6	# 2258
	addi	x4, x4, 64480	# 2258
	flw		f3, 0(x4)	# 2258
	fadd	f2, f2, f3	# 2258
	lw		x4, 0(x2)	# 2259
	mul		x5, x30, x4	# 2259
	addi	x5, x5, 64468	# 2259
	flw		f3, 0(x5)	# 2259
	fmul	f3, f1, f3	# 2259
	mul		x5, x30, x4	# 2259
	addi	x5, x5, 64480	# 2259
	flw		f4, 0(x5)	# 2259
	fadd	f3, f3, f4	# 2259
	lw		x5, -48(x2)	# 2260
	mul		x7, x30, x5	# 2260
	addi	x7, x7, 64468	# 2260
	flw		f4, 0(x7)	# 2260
	fmul	f1, f1, f4	# 2260
	mul		x7, x30, x5	# 2260
	addi	x7, x7, 64480	# 2260
	flw		f4, 0(x7)	# 2260
	fadd	f1, f1, f4	# 2260
	mul		x7, x30, x6	# 2261
	addi	x7, x7, 64412	# 2261
	lw		x7, 0(x7)	# 2261
	sub		x4, x7, x4	# 2261
	lw		x7, -224(x2)	# 2261
	lw		x29, -148(x2)	# 2261
	addi	x5, x4, 0	# 2261
	addi	x4, x7, 0	# 2261
	fadd	f31, f0, f3	# 2261
	fadd	f3, f0, f1	# 2261
	fadd	f1, f0, f2	# 2261
	fadd	f2, f0, f31	# 2261
	sw		x1, -404(x2)	# 2261
	addi	x2, x2, -408	# 2261
	lw		x31, 0(x29)	# 2261
	jalr	x1, x31, 0	# 2261
	addi	x2, x2, 408	# 2261
	lw		x1, -404(x2)	# 2261
	lw		x4, -4(x2)	# 2544
	lw		x5, -184(x2)	# 2544
	lw		x6, -224(x2)	# 2544
	lw		x7, -264(x2)	# 2544
	lw		x8, -48(x2)	# 2544
	lw		x9, -20(x2)	# 2544
	lw		x29, -92(x2)	# 2544
	sw		x1, -404(x2)	# 2544
	addi	x2, x2, -408	# 2544
	lw		x31, 0(x29)	# 2544
	jalr	x1, x31, 0	# 2544
	addi	x2, x2, 408	# 2544
	lw		x1, -404(x2)	# 2544
	EXIT	
