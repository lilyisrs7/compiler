l.0:	# 8388608.000000
	.word	8388608.000000
l.26430:	# 1.000000
	.word	1.000000
l.26439:	# 4.000000
	.word	4.000000
l.26435:	# 4.500000
	.word	4.500000
l.26915:	# 0.010000
	.word	0.010000
l.26913:	# -0.200000
	.word	-0.200000
l.27034:	# -0.100000
	.word	-0.100000
l.27802:	# 100000000.000000
	.word	100000000.000000
l.26428:	# -0.500000
	.word	-0.500000
l.28500:	# 150.000000
	.word	150.000000
l.28288:	# -150.000000
	.word	-150.000000
l.26432:	# 0.500000
	.word	0.500000
l.26437:	# -4.500000
	.word	-4.500000
l.26576:	# 2.000000
	.word	2.000000
l.28010:	# 3.141593
	.word	3.141593
l.28022:	# 0.150000
	.word	0.150000
l.26525:	# -1.000000
	.word	-1.000000
l.28004:	# 0.000100
	.word	0.000100
l.26496:	# 0.017453
	.word	0.017453
l.29490:	# 200.000000
	.word	200.000000
l.29494:	# -200.000000
	.word	-200.000000
l.28047:	# 0.250000
	.word	0.250000
l.28006:	# 15.000000
	.word	15.000000
l.28008:	# 30.000000
	.word	30.000000
l.28024:	# 0.300000
	.word	0.300000
l.28061:	# 20.000000
	.word	20.000000
l.28036:	# 10.000000
	.word	10.000000
l.28111:	# 0.003906
	.word	0.003906
l.28139:	# -2.000000
	.word	-2.000000
l.29344:	# 128.000000
	.word	128.000000
l.29334:	# 0.785398
	.word	0.785398
l.29332:	# 1.570796
	.word	1.570796
l.29330:	# 6.283185
	.word	6.283185
l.29328:	# 3.141593
	.word	3.141593
l.29313:	# 1000000000.000000
	.word	1000000000.000000
l.29309:	# 255.000000
	.word	255.000000
l.29295:	# 0.000000
	.word	0.000000
l.29268:	# 0.900000
	.word	0.900000
l.26467:	# 0.142857
	.word	0.142857
l.26469:	# 0.111111
	.word	0.111111
l.26471:	# 0.089764
	.word	0.089764
l.26465:	# 0.200000
	.word	0.200000
l.28235:	# 0.100000
	.word	0.100000
l.26463:	# 0.333333
	.word	0.333333
l.26461:	# 0.437500
	.word	0.437500
l.26458:	# 2.437500
	.word	2.437500
l.26452:	# 0.001370
	.word	0.001370
l.26442:	# 0.166667
	.word	0.166667
l.26444:	# 0.008333
	.word	0.008333
l.26446:	# 0.000196
	.word	0.000196
l.26450:	# 0.041664
	.word	0.041664
l.28058:	# 0.050000
	.word	0.050000
int_of_float_rem.2530.18012:
	lw		x5, 4(x29)	# 145
	fle		f23, f1, fle.31650	# 145
	fadd	f1, f1, f16	# 148
	sub		x4, x4, x5	# 148
	lw		x31, 0(x29)	# 148
	jalr	x0, x31, 0	# 148
fle.31650:
	fle		f26, f1, fle.31651	# 146
	jalr	x0, x1, 0	# 146
fle.31651:
	fsub	f1, f1, f16	# 147
	add		x4, x4, x5	# 147
	lw		x31, 0(x29)	# 147
	jalr	x0, x31, 0	# 147
int_of_float_four.2533.18015:
	lw		x5, 4(x29)	# 150
	fle		f18, f1, fle.31652	# 150
	fle		f27, f1, fle.31653	# 151
	fadd	f1, f1, f17	# 151
	addi	x5, x0, 4	# 151
	sub		x4, x4, x5	# 151
	lw		x31, 0(x29)	# 151
	jalr	x0, x31, 0	# 151
fle.31653:
	addi	x29, x5, 0	# 152
	lw		x31, 0(x29)	# 152
	jalr	x0, x31, 0	# 152
fle.31652:
	fsub	f1, f1, f17	# 150
	addi	x4, x4, 4	# 150
	lw		x31, 0(x29)	# 150
	jalr	x0, x31, 0	# 150
sin.2548.18022:
	flw		f2, 20(x29)	# 199
	flw		f3, 16(x29)	# 199
	flw		f4, 12(x29)	# 199
	flw		f5, 8(x29)	# 199
	flw		f6, 4(x29)	# 199
	fle		f6, f1, fle.31654	# 199
	fsub	f1, f0, f1	# 199
	sw		x1, 0(x2)	# 199
	addi	x2, x2, -4	# 199
	lw		x31, 0(x29)	# 199
	jalr	x1, x31, 0	# 199
	addi	x2, x2, 4	# 199
	lw		x1, 0(x2)	# 199
	fsub	f1, f0, f1	# 199
	jalr	x0, x1, 0	# 199
fle.31654:
	fle		f4, f1, fle.31655	# 200
	fle		f5, f1, fle.31656	# 201
	fle		f1, f3, fle.31657	# 202
	fsub	f1, f5, f1	# 202
	lw		x31, 0(x29)	# 202
	jalr	x0, x31, 0	# 202
fle.31657:
	fle		f2, f1, fle.31658	# 203
	fmul	f2, f1, f1	# 189
	fmul	f3, f1, f2	# 190
	lui		x4, %hi(l.26442)	# 191
	ori		x4, x0, %lo(l.26442)	# 191
	flw		f4, 0(x4)	# 191
	fmul	f4, f4, f3	# 191
	fsub	f1, f1, f4	# 191
	lui		x4, %hi(l.26444)	# 191
	ori		x4, x0, %lo(l.26444)	# 191
	flw		f4, 0(x4)	# 191
	fmul	f4, f4, f2	# 191
	fmul	f4, f4, f3	# 191
	fadd	f1, f1, f4	# 191
	lui		x4, %hi(l.26446)	# 191
	ori		x4, x0, %lo(l.26446)	# 191
	flw		f4, 0(x4)	# 191
	fmul	f4, f4, f2	# 191
	fmul	f2, f4, f2	# 191
	fmul	f2, f2, f3	# 191
	fsub	f1, f1, f2	# 191
	jalr	x0, x1, 0	# 191
fle.31658:
	fsub	f1, f3, f1	# 203
	fmul	f1, f1, f1	# 194
	fmul	f2, f1, f1	# 195
	fmul	f4, f26, f1	# 196
	fsub	f3, f16, f4	# 196
	lui		x4, %hi(l.26450)	# 196
	ori		x4, x0, %lo(l.26450)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f2	# 196
	fadd	f3, f3, f4	# 196
	lui		x4, %hi(l.26452)	# 196
	ori		x4, x0, %lo(l.26452)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f1, f4, f1	# 196
	fmul	f1, f1, f2	# 196
	fsub	f1, f3, f1	# 196
	jalr	x0, x1, 0	# 196
fle.31656:
	fsub	f1, f1, f5	# 201
	sw		x1, 0(x2)	# 201
	addi	x2, x2, -4	# 201
	lw		x31, 0(x29)	# 201
	jalr	x1, x31, 0	# 201
	addi	x2, x2, 4	# 201
	lw		x1, 0(x2)	# 201
	fsub	f1, f0, f1	# 201
	jalr	x0, x1, 0	# 201
fle.31655:
	fsub	f1, f1, f4	# 200
	lw		x31, 0(x29)	# 200
	jalr	x0, x31, 0	# 200
cos.2550.18024:
	lw		x4, 16(x29)	# 207
	flw		f2, 12(x29)	# 207
	flw		f3, 8(x29)	# 207
	flw		f4, 4(x29)	# 207
	fle		f4, f1, fle.31659	# 207
	fsub	f1, f0, f1	# 207
	lw		x31, 0(x29)	# 207
	jalr	x0, x31, 0	# 207
fle.31659:
	fle		f1, f2, fle.31660	# 208
	fsub	f1, f3, f1	# 208
	addi	x29, x4, 0	# 208
	lw		x31, 0(x29)	# 208
	jalr	x0, x31, 0	# 208
fle.31660:
	fmul	f1, f1, f1	# 194
	fmul	f2, f1, f1	# 195
	fmul	f4, f26, f1	# 196
	fsub	f3, f16, f4	# 196
	lui		x4, %hi(l.26450)	# 196
	ori		x4, x0, %lo(l.26450)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f2	# 196
	fadd	f3, f3, f4	# 196
	lui		x4, %hi(l.26452)	# 196
	ori		x4, x0, %lo(l.26452)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f1, f4, f1	# 196
	fmul	f1, f1, f2	# 196
	fsub	f1, f3, f1	# 196
	jalr	x0, x1, 0	# 196
atan.2552.18026:
	flw		f2, 12(x29)	# 212
	flw		f3, 8(x29)	# 212
	flw		f4, 4(x29)	# 212
	fle		f4, f1, fle.31661	# 212
	fsub	f1, f0, f1	# 212
	sw		x1, 0(x2)	# 212
	addi	x2, x2, -4	# 212
	lw		x31, 0(x29)	# 212
	jalr	x1, x31, 0	# 212
	addi	x2, x2, 4	# 212
	lw		x1, 0(x2)	# 212
	fsub	f1, f0, f1	# 212
	jalr	x0, x1, 0	# 212
fle.31661:
	lui		x4, %hi(l.26458)	# 213
	ori		x4, x0, %lo(l.26458)	# 213
	flw		f4, 0(x4)	# 213
	fle		f1, f4, fle.31662	# 213
	fdiv	f1, f16, f1	# 213
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
fle.31662:
	lui		x4, %hi(l.26461)	# 214
	ori		x4, x0, %lo(l.26461)	# 214
	flw		f3, 0(x4)	# 214
	fle		f3, f1, fle.31663	# 214
	fmul	f2, f1, f1	# 216
	fmul	f3, f1, f2	# 217
	fmul	f4, f2, f2	# 218
	lui		x4, %hi(l.26463)	# 219
	ori		x4, x0, %lo(l.26463)	# 219
	flw		f5, 0(x4)	# 219
	fmul	f5, f5, f3	# 219
	fsub	f1, f1, f5	# 219
	lui		x4, %hi(l.26465)	# 219
	ori		x4, x0, %lo(l.26465)	# 219
	flw		f5, 0(x4)	# 219
	fmul	f5, f5, f2	# 219
	fmul	f5, f5, f3	# 219
	fadd	f1, f1, f5	# 219
	lui		x4, %hi(l.26467)	# 219
	ori		x4, x0, %lo(l.26467)	# 219
	flw		f5, 0(x4)	# 219
	fmul	f5, f5, f4	# 219
	fmul	f5, f5, f3	# 219
	fsub	f1, f1, f5	# 219
	lui		x4, %hi(l.26469)	# 220
	ori		x4, x0, %lo(l.26469)	# 220
	flw		f5, 0(x4)	# 220
	fmul	f2, f5, f2	# 220
	fmul	f2, f2, f4	# 220
	fmul	f2, f2, f3	# 220
	fadd	f1, f1, f2	# 219
	lui		x4, %hi(l.26471)	# 220
	ori		x4, x0, %lo(l.26471)	# 220
	flw		f2, 0(x4)	# 220
	fmul	f2, f2, f4	# 220
	fmul	f2, f2, f4	# 220
	fmul	f2, f2, f3	# 220
	fsub	f1, f1, f2	# 219
	jalr	x0, x1, 0	# 219
fle.31663:
	fsub	f4, f1, f16	# 214
	fadd	f1, f1, f16	# 214
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
	ble		x10, x4, ble.31664	# 898
	sw		x29, 0(x2)	# 816
	sw		x4, -4(x2)	# 816
	sw		x1, -8(x2)	# 816
	addi	x2, x2, -12	# 816
	jal		x1, min_caml_read_int	# 816
	addi	x2, x2, 12	# 816
	lw		x1, -8(x2)	# 816
	beq		x4, x8, beq.31666	# 817
	sw		x4, -8(x2)	# 819
	sw		x1, -12(x2)	# 819
	addi	x2, x2, -16	# 819
	jal		x1, min_caml_read_int	# 819
	addi	x2, x2, 16	# 819
	lw		x1, -12(x2)	# 819
	sw		x4, -12(x2)	# 820
	sw		x1, -16(x2)	# 820
	addi	x2, x2, -20	# 820
	jal		x1, min_caml_read_int	# 820
	addi	x2, x2, 20	# 820
	lw		x1, -16(x2)	# 820
	sw		x4, -16(x2)	# 821
	sw		x1, -20(x2)	# 821
	addi	x2, x2, -24	# 821
	jal		x1, min_caml_read_int	# 821
	addi	x2, x2, 24	# 821
	lw		x1, -20(x2)	# 821
	sw		x5, -20(x2)	# 823
	sw		x4, -24(x2)	# 823
	fsw		f1, -28(x2)	# 823
	sw		x9, -32(x2)	# 823
	addi	x4, x9, 0	# 823
	sw		x1, -36(x2)	# 823
	addi	x2, x2, -40	# 823
	jal		x1, min_caml_create_float_array	# 823
	addi	x2, x2, 40	# 823
	lw		x1, -36(x2)	# 823
	sw		x1, -36(x2)	# 824
	addi	x2, x2, -40	# 824
	jal		x1, min_caml_read_float	# 824
	addi	x2, x2, 40	# 824
	lw		x1, -36(x2)	# 824
	mul		x5, x30, x11	# 824
	add		x5, x4, x5	# 824
	fsw		f1, 0(x5)	# 824
	sw		x1, -36(x2)	# 825
	addi	x2, x2, -40	# 825
	jal		x1, min_caml_read_float	# 825
	addi	x2, x2, 40	# 825
	lw		x1, -36(x2)	# 825
	mul		x5, x30, x12	# 825
	add		x5, x4, x5	# 825
	fsw		f1, 0(x5)	# 825
	sw		x1, -36(x2)	# 826
	addi	x2, x2, -40	# 826
	jal		x1, min_caml_read_float	# 826
	addi	x2, x2, 40	# 826
	lw		x1, -36(x2)	# 826
	mul		x5, x30, x7	# 826
	add		x5, x4, x5	# 826
	fsw		f1, 0(x5)	# 826
	lw		x5, -32(x2)	# 828
	flw		f1, -28(x2)	# 828
	sw		x4, -36(x2)	# 828
	addi	x4, x5, 0	# 828
	sw		x1, -40(x2)	# 828
	addi	x2, x2, -44	# 828
	jal		x1, min_caml_create_float_array	# 828
	addi	x2, x2, 44	# 828
	lw		x1, -40(x2)	# 828
	sw		x1, -40(x2)	# 829
	addi	x2, x2, -44	# 829
	jal		x1, min_caml_read_float	# 829
	addi	x2, x2, 44	# 829
	lw		x1, -40(x2)	# 829
	mul		x5, x30, x11	# 829
	add		x5, x4, x5	# 829
	fsw		f1, 0(x5)	# 829
	sw		x1, -40(x2)	# 830
	addi	x2, x2, -44	# 830
	jal		x1, min_caml_read_float	# 830
	addi	x2, x2, 44	# 830
	lw		x1, -40(x2)	# 830
	mul		x5, x30, x12	# 830
	add		x5, x4, x5	# 830
	fsw		f1, 0(x5)	# 830
	sw		x1, -40(x2)	# 831
	addi	x2, x2, -44	# 831
	jal		x1, min_caml_read_float	# 831
	addi	x2, x2, 44	# 831
	lw		x1, -40(x2)	# 831
	mul		x5, x30, x7	# 831
	add		x5, x4, x5	# 831
	fsw		f1, 0(x5)	# 831
	sw		x1, -40(x2)	# 833
	addi	x2, x2, -44	# 833
	jal		x1, min_caml_read_float	# 833
	addi	x2, x2, 44	# 833
	lw		x1, -40(x2)	# 833
	flw		f2, -28(x2)	# 122
	fle		f2, f1, fle.31668	# 122
	addi	x5, x0, 1	# 122
	jal		x0, fle_cont.31667	# 122
fle.31668:
	addi	x5, x0, 0	# 122
fle_cont.31667:
	fsw		f1, -40(x2)	# 835
	sw		x4, -44(x2)	# 835
	sw		x5, -48(x2)	# 835
	sw		x7, -52(x2)	# 835
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
	lw		x5, -32(x2)	# 839
	flw		f1, -28(x2)	# 839
	sw		x4, -56(x2)	# 839
	addi	x4, x5, 0	# 839
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
	lw		x5, -52(x2)	# 842
	mul		x7, x30, x5	# 842
	add		x7, x4, x7	# 842
	fsw		f1, 0(x7)	# 842
	lw		x7, -32(x2)	# 844
	flw		f1, -28(x2)	# 844
	sw		x4, -60(x2)	# 844
	addi	x4, x7, 0	# 844
	sw		x1, -64(x2)	# 844
	addi	x2, x2, -68	# 844
	jal		x1, min_caml_create_float_array	# 844
	addi	x2, x2, 68	# 844
	lw		x1, -64(x2)	# 844
	lw		x5, -24(x2)	# 845
	beq		x5, x11, beq_cont.31669	# 845
	sw		x1, -64(x2)	# 847
	addi	x2, x2, -68	# 847
	jal		x1, min_caml_read_float	# 847
	addi	x2, x2, 68	# 847
	lw		x1, -64(x2)	# 847
	lui		x7, %hi(l.26496)	# 714
	ori		x7, x0, %lo(l.26496)	# 714
	flw		f2, 0(x7)	# 714
	fmul	f1, f1, f2	# 714
	mul		x7, x30, x11	# 847
	add		x7, x4, x7	# 847
	fsw		f1, 0(x7)	# 847
	sw		x1, -64(x2)	# 848
	addi	x2, x2, -68	# 848
	jal		x1, min_caml_read_float	# 848
	addi	x2, x2, 68	# 848
	lw		x1, -64(x2)	# 848
	fmul	f1, f1, f2	# 714
	mul		x7, x30, x12	# 848
	add		x7, x4, x7	# 848
	fsw		f1, 0(x7)	# 848
	sw		x1, -64(x2)	# 849
	addi	x2, x2, -68	# 849
	jal		x1, min_caml_read_float	# 849
	addi	x2, x2, 68	# 849
	lw		x1, -64(x2)	# 849
	fmul	f1, f1, f2	# 714
	lw		x7, -52(x2)	# 849
	mul		x8, x30, x7	# 849
	add		x8, x4, x8	# 849
	fsw		f1, 0(x8)	# 849
	jal		x0, beq_cont.31669	# 845
beq_cont.31669:
	lw		x7, -52(x2)	# 856
	lw		x8, -12(x2)	# 856
	beq		x8, x7, beq.31672	# 856
	lw		x9, -48(x2)	# 856
	jal		x0, beq_cont.31671	# 856
beq.31672:
	addi	x9, x0, 1	# 856
beq_cont.31671:
	addi	x10, x0, 4	# 857
	flw		f1, -28(x2)	# 857
	sw		x4, -64(x2)	# 857
	addi	x4, x10, 0	# 857
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
	lw		x10, -60(x2)	# 860
	sw		x10, 32(x5)	# 860
	lw		x10, -56(x2)	# 860
	sw		x10, 28(x5)	# 860
	sw		x9, 24(x5)	# 860
	lw		x9, -44(x2)	# 860
	sw		x9, 20(x5)	# 860
	lw		x9, -36(x2)	# 860
	sw		x9, 16(x5)	# 860
	lw		x10, -24(x2)	# 860
	sw		x10, 12(x5)	# 860
	lw		x13, -16(x2)	# 860
	sw		x13, 8(x5)	# 860
	sw		x8, 4(x5)	# 860
	lw		x13, -8(x2)	# 860
	sw		x13, 0(x5)	# 860
	lw		x13, -4(x2)	# 868
	mul		x14, x30, x13	# 868
	addi	x14, x14, 63844	# 868
	sw		x5, 0(x14)	# 868
	lw		x5, -32(x2)	# 870
	beq		x8, x5, beq.31674	# 870
	beq		x8, x7, beq.31676	# 880
	jal		x0, beq_cont.31673	# 880
beq.31676:
	mul		x5, x30, x11	# 320
	add		x5, x9, x5	# 320
	flw		f1, 0(x5)	# 320
	fmul	f1, f1, f1	# 127
	mul		x5, x30, x12	# 320
	add		x5, x9, x5	# 320
	flw		f2, 0(x5)	# 320
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 320
	mul		x5, x30, x7	# 320
	add		x5, x9, x5	# 320
	flw		f2, 0(x5)	# 320
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 320
	fsqrt	f1, f1	# 320
	flw		f2, -28(x2)	# 120
	feq		f1, f2, feq.31678	# 120
	flw		f3, -40(x2)	# 122
	fle		f2, f3, fle.31680	# 122
	fdiv	f1, f16, f1	# 321
	jal		x0, feq_cont.31677	# 122
fle.31680:
	lui		x5, %hi(l.26525)	# 321
	ori		x5, x0, %lo(l.26525)	# 321
	flw		f2, 0(x5)	# 321
	fdiv	f1, f2, f1	# 321
	jal		x0, feq_cont.31677	# 120
feq.31678:
	fadd	f1, f0, f16	# 321
feq_cont.31677:
	mul		x5, x30, x11	# 322
	add		x5, x9, x5	# 322
	flw		f2, 0(x5)	# 322
	fmul	f2, f2, f1	# 322
	mul		x5, x30, x11	# 322
	add		x5, x9, x5	# 322
	fsw		f2, 0(x5)	# 322
	mul		x5, x30, x12	# 323
	add		x5, x9, x5	# 323
	flw		f2, 0(x5)	# 323
	fmul	f2, f2, f1	# 323
	mul		x5, x30, x12	# 323
	add		x5, x9, x5	# 323
	fsw		f2, 0(x5)	# 323
	mul		x5, x30, x7	# 324
	add		x5, x9, x5	# 324
	flw		f2, 0(x5)	# 324
	fmul	f1, f2, f1	# 324
	mul		x5, x30, x7	# 324
	add		x5, x9, x5	# 324
	fsw		f1, 0(x5)	# 324
	jal		x0, beq_cont.31673	# 870
beq.31674:
	mul		x5, x30, x11	# 873
	add		x5, x9, x5	# 873
	flw		f1, 0(x5)	# 873
	flw		f2, -28(x2)	# 120
	feq		f1, f2, feq.31682	# 120
	fle		f1, f2, fle.31686	# 121
	fadd	f3, f0, f16	# 250
	jal		x0, feq_cont.31683	# 121
fle.31686:
	lui		x5, %hi(l.26525)	# 251
	ori		x5, x0, %lo(l.26525)	# 251
	flw		f3, 0(x5)	# 251
	jal		x0, feq_cont.31683	# 120
feq.31684:
	fadd	f3, f0, f2	# 249
feq_cont.31683:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 874
	jal		x0, feq_cont.31681	# 120
feq.31682:
	fadd	f1, f0, f2	# 874
feq_cont.31681:
	mul		x5, x30, x11	# 874
	add		x5, x9, x5	# 874
	fsw		f1, 0(x5)	# 874
	mul		x5, x30, x12	# 875
	add		x5, x9, x5	# 875
	flw		f1, 0(x5)	# 875
	feq		f1, f2, feq.31688	# 120
	fle		f1, f2, fle.31692	# 121
	fadd	f3, f0, f16	# 250
	jal		x0, feq_cont.31689	# 121
fle.31692:
	lui		x5, %hi(l.26525)	# 251
	ori		x5, x0, %lo(l.26525)	# 251
	flw		f3, 0(x5)	# 251
	jal		x0, feq_cont.31689	# 120
feq.31690:
	fadd	f3, f0, f2	# 249
feq_cont.31689:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 876
	jal		x0, feq_cont.31687	# 120
feq.31688:
	fadd	f1, f0, f2	# 876
feq_cont.31687:
	mul		x5, x30, x12	# 876
	add		x5, x9, x5	# 876
	fsw		f1, 0(x5)	# 876
	mul		x5, x30, x7	# 877
	add		x5, x9, x5	# 877
	flw		f1, 0(x5)	# 877
	feq		f1, f2, feq.31694	# 120
	fle		f1, f2, fle.31698	# 121
	fadd	f2, f0, f16	# 250
	jal		x0, feq_cont.31695	# 121
fle.31698:
	lui		x5, %hi(l.26525)	# 251
	ori		x5, x0, %lo(l.26525)	# 251
	flw		f2, 0(x5)	# 251
	jal		x0, feq_cont.31695	# 120
feq_cont.31695:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f2, f1	# 878
	jal		x0, feq_cont.31693	# 120
feq.31694:
	fadd	f1, f0, f2	# 878
feq_cont.31693:
	mul		x5, x30, x7	# 878
	add		x5, x9, x5	# 878
	fsw		f1, 0(x5)	# 878
beq_cont.31673:
	beq		x10, x11, beq_cont.31699	# 886
	mul		x5, x30, x11	# 775
	add		x5, x4, x5	# 775
	flw		f1, 0(x5)	# 775
	fsw		f1, -68(x2)	# 775
	addi	x29, x6, 0	# 775
	sw		x1, -72(x2)	# 775
	addi	x2, x2, -76	# 775
	lw		x31, 0(x29)	# 775
	jalr	x1, x31, 0	# 775
	addi	x2, x2, 76	# 775
	lw		x1, -72(x2)	# 775
	flw		f2, -68(x2)	# 776
	lw		x29, -20(x2)	# 776
	fsw		f1, -72(x2)	# 776
	fadd	f1, f0, f2	# 776
	sw		x1, -76(x2)	# 776
	addi	x2, x2, -80	# 776
	lw		x31, 0(x29)	# 776
	jalr	x1, x31, 0	# 776
	addi	x2, x2, 80	# 776
	lw		x1, -76(x2)	# 776
	mul		x4, x30, x12	# 777
	lw		x5, -64(x2)	# 777
	add		x4, x5, x4	# 777
	flw		f2, 0(x4)	# 777
	fsw		f1, -76(x2)	# 777
	fsw		f2, -80(x2)	# 777
	addi	x29, x6, 0	# 777
	fadd	f1, f0, f2	# 777
	sw		x1, -84(x2)	# 777
	addi	x2, x2, -88	# 777
	lw		x31, 0(x29)	# 777
	jalr	x1, x31, 0	# 777
	addi	x2, x2, 88	# 777
	lw		x1, -84(x2)	# 777
	flw		f2, -80(x2)	# 778
	lw		x29, -20(x2)	# 778
	fsw		f1, -84(x2)	# 778
	fadd	f1, f0, f2	# 778
	sw		x1, -88(x2)	# 778
	addi	x2, x2, -92	# 778
	lw		x31, 0(x29)	# 778
	jalr	x1, x31, 0	# 778
	addi	x2, x2, 92	# 778
	lw		x1, -88(x2)	# 778
	mul		x4, x30, x7	# 779
	add		x4, x5, x4	# 779
	flw		f2, 0(x4)	# 779
	fsw		f1, -88(x2)	# 779
	fsw		f2, -92(x2)	# 779
	addi	x29, x6, 0	# 779
	fadd	f1, f0, f2	# 779
	sw		x1, -96(x2)	# 779
	addi	x2, x2, -100	# 779
	lw		x31, 0(x29)	# 779
	jalr	x1, x31, 0	# 779
	addi	x2, x2, 100	# 779
	lw		x1, -96(x2)	# 779
	flw		f2, -92(x2)	# 780
	lw		x29, -20(x2)	# 780
	fsw		f1, -96(x2)	# 780
	fadd	f1, f0, f2	# 780
	sw		x1, -100(x2)	# 780
	addi	x2, x2, -104	# 780
	lw		x31, 0(x29)	# 780
	jalr	x1, x31, 0	# 780
	addi	x2, x2, 104	# 780
	lw		x1, -100(x2)	# 780
	flw		f2, -84(x2)	# 782
	flw		f3, -96(x2)	# 782
	fmul	f4, f2, f3	# 782
	flw		f5, -76(x2)	# 783
	flw		f6, -88(x2)	# 783
	fmul	f7, f5, f6	# 783
	fmul	f8, f7, f3	# 783
	flw		f9, -72(x2)	# 783
	fmul	f10, f9, f1	# 783
	fsub	f8, f8, f10	# 783
	fmul	f10, f9, f6	# 784
	fmul	f11, f10, f3	# 784
	fmul	f12, f5, f1	# 784
	fadd	f11, f11, f12	# 784
	fmul	f12, f2, f1	# 786
	fmul	f7, f7, f1	# 787
	fmul	f13, f9, f3	# 787
	fadd	f7, f7, f13	# 787
	fmul	f1, f10, f1	# 788
	fmul	f3, f5, f3	# 788
	fsub	f1, f1, f3	# 788
	fsub	f3, f0, f6	# 123
	fmul	f5, f5, f2	# 791
	fmul	f2, f9, f2	# 792
	mul		x4, x30, x11	# 795
	add		x4, x9, x4	# 795
	flw		f6, 0(x4)	# 795
	mul		x4, x30, x12	# 796
	add		x4, x9, x4	# 796
	flw		f9, 0(x4)	# 796
	mul		x4, x30, x7	# 797
	add		x4, x9, x4	# 797
	flw		f10, 0(x4)	# 797
	fmul	f13, f4, f4	# 127
	fmul	f13, f6, f13	# 802
	fmul	f14, f12, f12	# 127
	fmul	f14, f9, f14	# 802
	fadd	f13, f13, f14	# 802
	fmul	f14, f3, f3	# 127
	fmul	f14, f10, f14	# 802
	fadd	f13, f13, f14	# 802
	mul		x4, x30, x11	# 802
	add		x4, x9, x4	# 802
	fsw		f13, 0(x4)	# 802
	fmul	f13, f8, f8	# 127
	fmul	f13, f6, f13	# 803
	fmul	f14, f7, f7	# 127
	fmul	f14, f9, f14	# 803
	fadd	f13, f13, f14	# 803
	fmul	f14, f5, f5	# 127
	fmul	f14, f10, f14	# 803
	fadd	f13, f13, f14	# 803
	mul		x4, x30, x12	# 803
	add		x4, x9, x4	# 803
	fsw		f13, 0(x4)	# 803
	fmul	f13, f11, f11	# 127
	fmul	f13, f6, f13	# 804
	fmul	f14, f1, f1	# 127
	fmul	f14, f9, f14	# 804
	fadd	f13, f13, f14	# 804
	fmul	f14, f2, f2	# 127
	fmul	f14, f10, f14	# 804
	fadd	f13, f13, f14	# 804
	mul		x4, x30, x7	# 804
	add		x4, x9, x4	# 804
	fsw		f13, 0(x4)	# 804
	fmul	f14, f6, f8	# 807
	fmul	f14, f14, f11	# 807
	fmul	f15, f9, f7	# 807
	fmul	f15, f15, f1	# 807
	fadd	f14, f14, f15	# 807
	fmul	f15, f10, f5	# 807
	fmul	f15, f15, f2	# 807
	fadd	f14, f14, f15	# 807
	fmul	f14, f28, f14	# 807
	mul		x4, x30, x11	# 807
	add		x4, x5, x4	# 807
	fsw		f14, 0(x4)	# 807
	fmul	f4, f6, f4	# 808
	fmul	f6, f4, f11	# 808
	fmul	f9, f9, f12	# 808
	fmul	f1, f9, f1	# 808
	fadd	f1, f6, f1	# 808
	fmul	f3, f10, f3	# 808
	fmul	f2, f3, f2	# 808
	fadd	f1, f1, f2	# 808
	fmul	f1, f28, f1	# 808
	mul		x4, x30, x12	# 808
	add		x4, x5, x4	# 808
	fsw		f1, 0(x4)	# 808
	fmul	f1, f4, f8	# 809
	fmul	f2, f9, f7	# 809
	fadd	f1, f1, f2	# 809
	fmul	f2, f3, f5	# 809
	fadd	f1, f1, f2	# 809
	fmul	f1, f28, f1	# 809
	mul		x4, x30, x7	# 809
	add		x4, x5, x4	# 809
	fsw		f1, 0(x4)	# 809
	jal		x0, beq_cont.31699	# 886
beq_cont.31699:
	addi	x4, x0, 1	# 890
	jal		x0, beq_cont.31665	# 817
beq.31666:
	addi	x4, x0, 0	# 893
beq_cont.31665:
	beq		x4, x11, beq.31701	# 899
	lw		x4, -4(x2)	# 900
	add		x4, x4, x12	# 900
	lw		x29, 0(x2)	# 900
	lw		x31, 0(x29)	# 900
	jalr	x0, x31, 0	# 900
beq.31701:
	mul		x4, x30, x11	# 902
	addi	x4, x4, 63796	# 902
	lw		x5, -4(x2)	# 902
	sw		x5, 0(x4)	# 902
	jalr	x0, x1, 0	# 902
ble.31664:
	jalr	x0, x1, 0	# 903
read_net_item.2693.18030:
	lw		x5, 8(x29)	# 914
	lw		x6, 4(x29)	# 914
	sw		x29, 0(x2)	# 914
	sw		x4, -4(x2)	# 914
	sw		x1, -8(x2)	# 914
	addi	x2, x2, -12	# 914
	jal		x1, min_caml_read_int	# 914
	addi	x2, x2, 12	# 914
	lw		x1, -8(x2)	# 914
	beq		x4, x5, beq.31704	# 915
	lw		x5, -4(x2)	# 917
	add		x6, x5, x6	# 917
	lw		x29, 0(x2)	# 917
	sw		x4, -8(x2)	# 917
	addi	x4, x6, 0	# 917
	sw		x1, -12(x2)	# 917
	addi	x2, x2, -16	# 917
	lw		x31, 0(x29)	# 917
	jalr	x1, x31, 0	# 917
	addi	x2, x2, 16	# 917
	lw		x1, -12(x2)	# 917
	lw		x5, -4(x2)	# 918
	mul		x5, x30, x5	# 918
	add		x5, x4, x5	# 918
	lw		x6, -8(x2)	# 918
	sw		x6, 0(x5)	# 918
	jalr	x0, x1, 0	# 918
beq.31704:
	lw		x4, -4(x2)	# 915
	add		x4, x4, x6	# 915
	jal		x0, min_caml_create_array	# 915
read_or_network.2695.18032:
	lw		x5, 16(x29)	# 922
	lw		x6, 12(x29)	# 922
	lw		x7, 8(x29)	# 922
	lw		x8, 4(x29)	# 922
	sw		x29, 0(x2)	# 922
	sw		x4, -4(x2)	# 922
	sw		x6, -8(x2)	# 922
	sw		x7, -12(x2)	# 922
	addi	x4, x7, 0	# 922
	addi	x29, x5, 0	# 922
	sw		x1, -16(x2)	# 922
	addi	x2, x2, -20	# 922
	lw		x31, 0(x29)	# 922
	jalr	x1, x31, 0	# 922
	addi	x2, x2, 20	# 922
	lw		x1, -16(x2)	# 922
	addi	x5, x4, 0	# 922
	lw		x4, -12(x2)	# 923
	mul		x4, x30, x4	# 923
	add		x4, x5, x4	# 923
	lw		x4, 0(x4)	# 923
	lw		x6, -8(x2)	# 923
	beq		x4, x6, beq.31705	# 923
	lw		x4, -4(x2)	# 926
	add		x6, x4, x8	# 926
	lw		x29, 0(x2)	# 926
	sw		x5, -16(x2)	# 926
	addi	x4, x6, 0	# 926
	sw		x1, -20(x2)	# 926
	addi	x2, x2, -24	# 926
	lw		x31, 0(x29)	# 926
	jalr	x1, x31, 0	# 926
	addi	x2, x2, 24	# 926
	lw		x1, -20(x2)	# 926
	lw		x5, -4(x2)	# 927
	mul		x5, x30, x5	# 927
	add		x5, x4, x5	# 927
	lw		x6, -16(x2)	# 927
	sw		x6, 0(x5)	# 927
	jalr	x0, x1, 0	# 927
beq.31705:
	lw		x4, -4(x2)	# 924
	add		x4, x4, x8	# 924
	jal		x0, min_caml_create_array	# 924
read_and_network.2697.18034:
	lw		x5, 16(x29)	# 931
	lw		x6, 12(x29)	# 931
	lw		x7, 8(x29)	# 931
	lw		x8, 4(x29)	# 931
	sw		x29, 0(x2)	# 931
	sw		x4, -4(x2)	# 931
	sw		x6, -8(x2)	# 931
	sw		x7, -12(x2)	# 931
	addi	x4, x7, 0	# 931
	addi	x29, x5, 0	# 931
	sw		x1, -16(x2)	# 931
	addi	x2, x2, -20	# 931
	lw		x31, 0(x29)	# 931
	jalr	x1, x31, 0	# 931
	addi	x2, x2, 20	# 931
	lw		x1, -16(x2)	# 931
	lw		x5, -12(x2)	# 932
	mul		x5, x30, x5	# 932
	add		x5, x4, x5	# 932
	lw		x5, 0(x5)	# 932
	lw		x6, -8(x2)	# 932
	beq		x5, x6, beq.31706	# 932
	lw		x5, -4(x2)	# 934
	mul		x6, x30, x5	# 934
	addi	x6, x6, 64128	# 934
	sw		x4, 0(x6)	# 934
	add		x4, x5, x8	# 935
	lw		x29, 0(x2)	# 935
	lw		x31, 0(x29)	# 935
	jalr	x0, x31, 0	# 935
beq.31706:
	jalr	x0, x1, 0	# 932
iter_setup_dirvec_constants.2794.18036:
	lw		x6, 24(x29)	# 1307
	lw		x7, 20(x29)	# 1307
	lw		x8, 16(x29)	# 1307
	lw		x9, 12(x29)	# 1307
	lw		x10, 8(x29)	# 1307
	flw		f1, 4(x29)	# 1307
	ble		x9, x5, ble.31708	# 1307
	jalr	x0, x1, 0	# 1320
ble.31708:
	mul		x11, x30, x5	# 1308
	addi	x11, x11, 63844	# 1308
	lw		x11, 0(x11)	# 1308
	lw		x12, 4(x4)	# 682
	lw		x13, 0(x4)	# 676
	lw		x14, 4(x11)	# 390
	sw		x4, 0(x2)	# 1312
	sw		x29, -4(x2)	# 1312
	beq		x14, x10, beq.31711	# 1312
	beq		x14, x7, beq.31713	# 1314
	sw		x5, -8(x2)	# 1278
	fsw		f1, -12(x2)	# 1278
	addi	x4, x6, 0	# 1278
	sw		x1, -16(x2)	# 1278
	addi	x2, x2, -20	# 1278
	jal		x1, min_caml_create_float_array	# 1278
	addi	x2, x2, 20	# 1278
	lw		x1, -16(x2)	# 1278
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
	beq		x5, x9, beq_cont.31714	# 1006
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
	jal		x0, beq_cont.31714	# 1006
beq_cont.31714:
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
	beq		x5, x9, beq.31717	# 1289
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
	fmul	f5, f5, f26	# 126
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
	fmul	f1, f1, f26	# 126
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
	fmul	f1, f1, f26	# 126
	fsub	f1, f3, f1	# 1292
	mul		x5, x30, x8	# 1292
	add		x5, x4, x5	# 1292
	fsw		f1, 0(x5)	# 1292
	jal		x0, beq_cont.31716	# 1289
beq.31717:
	mul		x5, x30, x10	# 1294
	add		x5, x4, x5	# 1294
	fsw		f1, 0(x5)	# 1294
	mul		x5, x30, x7	# 1295
	add		x5, x4, x5	# 1295
	fsw		f2, 0(x5)	# 1295
	mul		x5, x30, x8	# 1296
	add		x5, x4, x5	# 1296
	fsw		f3, 0(x5)	# 1296
beq_cont.31716:
	flw		f1, -12(x2)	# 120
	feq		f4, f1, feq_cont.31718	# 120
	addi	x5, x0, 4	# 1299
	fdiv	f1, f16, f4	# 1299
	mul		x5, x30, x5	# 1299
	add		x5, x4, x5	# 1299
	fsw		f1, 0(x5)	# 1299
	jal		x0, feq_cont.31718	# 120
feq_cont.31718:
	lw		x5, -8(x2)	# 1317
	mul		x6, x30, x5	# 1317
	add		x6, x12, x6	# 1317
	sw		x4, 0(x6)	# 1317
	jal		x0, beq_cont.31710	# 1314
beq.31713:
	addi	x6, x0, 4	# 1259
	sw		x5, -8(x2)	# 1259
	fsw		f1, -12(x2)	# 1259
	addi	x4, x6, 0	# 1259
	sw		x1, -16(x2)	# 1259
	addi	x2, x2, -20	# 1259
	jal		x1, min_caml_create_float_array	# 1259
	addi	x2, x2, 20	# 1259
	lw		x1, -16(x2)	# 1259
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
	flw		f3, -12(x2)	# 121
	fle		f1, f3, fle.31721	# 121
	lui		x5, %hi(l.26525)	# 1265
	ori		x5, x0, %lo(l.26525)	# 1265
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
	jal		x0, fle_cont.31720	# 121
fle.31721:
	mul		x5, x30, x9	# 1271
	add		x5, x4, x5	# 1271
	fsw		f3, 0(x5)	# 1271
fle_cont.31720:
	lw		x5, -8(x2)	# 1315
	mul		x6, x30, x5	# 1315
	add		x6, x12, x6	# 1315
	sw		x4, 0(x6)	# 1315
	jal		x0, beq_cont.31710	# 1312
beq.31711:
	addi	x14, x0, 6	# 1232
	sw		x5, -8(x2)	# 1232
	fsw		f1, -12(x2)	# 1232
	addi	x4, x14, 0	# 1232
	sw		x1, -16(x2)	# 1232
	addi	x2, x2, -20	# 1232
	jal		x1, min_caml_create_float_array	# 1232
	addi	x2, x2, 20	# 1232
	lw		x1, -16(x2)	# 1232
	mul		x5, x30, x9	# 1234
	add		x5, x13, x5	# 1234
	flw		f1, 0(x5)	# 1234
	flw		f2, -12(x2)	# 120
	feq		f1, f2, feq.31723	# 120
	lw		x5, 24(x11)	# 410
	fle		f2, f1, fle.31725	# 122
	addi	x14, x0, 1	# 122
	jal		x0, fle_cont.31724	# 122
fle.31725:
	addi	x14, x0, 0	# 122
fle_cont.31724:
	beq		x5, x9, beq.31727	# 241
	fle		f2, f1, fle.31729	# 122
	addi	x5, x0, 0	# 241
	jal		x0, beq_cont.31726	# 122
fle.31729:
	addi	x5, x0, 1	# 241
	jal		x0, beq_cont.31726	# 241
beq.31727:
	addi	x5, x14, 0	# 241
beq_cont.31726:
	lw		x14, 16(x11)	# 428
	mul		x15, x30, x9	# 433
	add		x14, x14, x15	# 433
	flw		f1, 0(x14)	# 433
	beq		x5, x9, beq.31731	# 256
	jal		x0, beq_cont.31730	# 256
beq.31731:
	fsub	f1, f0, f1	# 123
beq_cont.31730:
	mul		x5, x30, x9	# 1238
	add		x5, x4, x5	# 1238
	fsw		f1, 0(x5)	# 1238
	mul		x5, x30, x9	# 1240
	add		x5, x13, x5	# 1240
	flw		f3, 0(x5)	# 1240
	fdiv	f1, f16, f3	# 1240
	mul		x5, x30, x10	# 1240
	add		x5, x4, x5	# 1240
	fsw		f1, 0(x5)	# 1240
	jal		x0, feq_cont.31722	# 120
feq.31723:
	mul		x5, x30, x10	# 1235
	add		x5, x4, x5	# 1235
	fsw		f2, 0(x5)	# 1235
feq_cont.31722:
	mul		x5, x30, x10	# 1242
	add		x5, x13, x5	# 1242
	flw		f1, 0(x5)	# 1242
	feq		f1, f2, feq.31733	# 120
	lw		x5, 24(x11)	# 410
	fle		f2, f1, fle.31735	# 122
	addi	x14, x0, 1	# 122
	jal		x0, fle_cont.31734	# 122
fle.31735:
	addi	x14, x0, 0	# 122
fle_cont.31734:
	beq		x5, x9, beq.31737	# 241
	fle		f2, f1, fle.31739	# 122
	addi	x5, x0, 0	# 241
	jal		x0, beq_cont.31736	# 122
fle.31739:
	addi	x5, x0, 1	# 241
	jal		x0, beq_cont.31736	# 241
beq.31737:
	addi	x5, x14, 0	# 241
beq_cont.31736:
	lw		x14, 16(x11)	# 438
	mul		x15, x30, x10	# 443
	add		x14, x14, x15	# 443
	flw		f1, 0(x14)	# 443
	beq		x5, x9, beq.31741	# 256
	jal		x0, beq_cont.31740	# 256
beq.31741:
	fsub	f1, f0, f1	# 123
beq_cont.31740:
	mul		x5, x30, x7	# 1245
	add		x5, x4, x5	# 1245
	fsw		f1, 0(x5)	# 1245
	mul		x5, x30, x10	# 1246
	add		x5, x13, x5	# 1246
	flw		f3, 0(x5)	# 1246
	fdiv	f1, f16, f3	# 1246
	mul		x5, x30, x8	# 1246
	add		x5, x4, x5	# 1246
	fsw		f1, 0(x5)	# 1246
	jal		x0, feq_cont.31732	# 120
feq.31733:
	mul		x5, x30, x8	# 1243
	add		x5, x4, x5	# 1243
	fsw		f2, 0(x5)	# 1243
feq_cont.31732:
	mul		x5, x30, x7	# 1248
	add		x5, x13, x5	# 1248
	flw		f1, 0(x5)	# 1248
	feq		f1, f2, feq.31743	# 120
	addi	x5, x0, 4	# 1251
	lw		x8, 24(x11)	# 410
	fle		f2, f1, fle.31745	# 122
	addi	x14, x0, 1	# 122
	jal		x0, fle_cont.31744	# 122
fle.31745:
	addi	x14, x0, 0	# 122
fle_cont.31744:
	beq		x8, x9, beq.31747	# 241
	fle		f2, f1, fle.31749	# 122
	addi	x8, x0, 0	# 241
	jal		x0, beq_cont.31746	# 122
fle.31749:
	addi	x8, x0, 1	# 241
	jal		x0, beq_cont.31746	# 241
beq.31747:
	addi	x8, x14, 0	# 241
beq_cont.31746:
	lw		x11, 16(x11)	# 448
	mul		x14, x30, x7	# 453
	add		x11, x11, x14	# 453
	flw		f1, 0(x11)	# 453
	beq		x8, x9, beq.31751	# 256
	jal		x0, beq_cont.31750	# 256
beq.31751:
	fsub	f1, f0, f1	# 123
beq_cont.31750:
	mul		x5, x30, x5	# 1251
	add		x5, x4, x5	# 1251
	fsw		f1, 0(x5)	# 1251
	mul		x5, x30, x7	# 1252
	add		x5, x13, x5	# 1252
	flw		f2, 0(x5)	# 1252
	fdiv	f1, f16, f2	# 1252
	mul		x5, x30, x6	# 1252
	add		x5, x4, x5	# 1252
	fsw		f1, 0(x5)	# 1252
	jal		x0, feq_cont.31742	# 120
feq.31743:
	mul		x5, x30, x6	# 1249
	add		x5, x4, x5	# 1249
	fsw		f2, 0(x5)	# 1249
feq_cont.31742:
	lw		x5, -8(x2)	# 1313
	mul		x6, x30, x5	# 1313
	add		x6, x12, x6	# 1313
	sw		x4, 0(x6)	# 1313
beq_cont.31710:
	sub		x5, x5, x10	# 1319
	lw		x4, 0(x2)	# 1319
	lw		x29, -4(x2)	# 1319
	lw		x31, 0(x29)	# 1319
	jalr	x0, x31, 0	# 1319
setup_startp_constants.2799.18039:
	lw		x6, 16(x29)	# 1332
	lw		x7, 12(x29)	# 1332
	lw		x8, 8(x29)	# 1332
	lw		x9, 4(x29)	# 1332
	ble		x8, x5, ble.31752	# 1332
	jalr	x0, x1, 0	# 1347
ble.31752:
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
	beq		x12, x6, beq.31755	# 1339
	ble		x12, x6, beq_cont.31754	# 1342
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
	beq		x13, x8, beq.31759	# 1006
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
	jal		x0, beq_cont.31758	# 1006
beq.31759:
	fadd	f1, f0, f4	# 1007
beq_cont.31758:
	beq		x12, x7, beq.31761	# 1344
	jal		x0, beq_cont.31760	# 1344
beq.31761:
	fsub	f1, f1, f16	# 1344
beq_cont.31760:
	mul		x6, x30, x7	# 1344
	add		x6, x11, x6	# 1344
	fsw		f1, 0(x6)	# 1344
	jal		x0, beq_cont.31754	# 1342
	jal		x0, beq_cont.31754	# 1339
beq.31755:
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
beq_cont.31754:
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
	beq		x11, x7, beq.31762	# 1402
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
	beq		x11, x10, beq.31764	# 1391
	beq		x11, x6, beq.31766	# 1393
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
	beq		x11, x9, beq.31768	# 1006
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
	jal		x0, beq_cont.31767	# 1006
beq.31768:
	fadd	f5, f0, f8	# 1007
beq_cont.31767:
	lw		x6, 4(x7)	# 390
	beq		x6, x8, beq.31770	# 1381
	jal		x0, beq_cont.31769	# 1381
beq.31770:
	fsub	f5, f5, f16	# 1381
beq_cont.31769:
	lw		x6, 24(x7)	# 410
	fle		f4, f5, fle.31772	# 122
	addi	x7, x0, 1	# 122
	jal		x0, fle_cont.31771	# 122
fle.31772:
	addi	x7, x0, 0	# 122
fle_cont.31771:
	beq		x6, x9, beq.31774	# 241
	fle		f4, f5, fle.31776	# 122
	addi	x6, x0, 0	# 241
	jal		x0, beq_cont.31773	# 122
fle.31776:
	addi	x6, x0, 1	# 241
	jal		x0, beq_cont.31773	# 241
beq.31774:
	addi	x6, x7, 0	# 241
beq_cont.31773:
	beq		x6, x9, beq.31778	# 1382
	addi	x6, x0, 0	# 1382
	jal		x0, beq_cont.31763	# 1382
beq.31778:
	addi	x6, x0, 1	# 1382
	jal		x0, beq_cont.31763	# 1393
beq.31766:
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
	fle		f4, f5, fle.31780	# 122
	addi	x7, x0, 1	# 122
	jal		x0, fle_cont.31779	# 122
fle.31780:
	addi	x7, x0, 0	# 122
fle_cont.31779:
	beq		x6, x9, beq.31782	# 241
	fle		f4, f5, fle.31784	# 122
	addi	x6, x0, 0	# 241
	jal		x0, beq_cont.31781	# 122
fle.31784:
	addi	x6, x0, 1	# 241
	jal		x0, beq_cont.31781	# 241
beq.31782:
	addi	x6, x7, 0	# 241
beq_cont.31781:
	beq		x6, x9, beq.31786	# 1375
	addi	x6, x0, 0	# 1375
	jal		x0, beq_cont.31763	# 1375
beq.31786:
	addi	x6, x0, 1	# 1375
	jal		x0, beq_cont.31763	# 1391
beq.31764:
	fle		f5, f4, fle.31788	# 124
	jal		x0, fle_cont.31787	# 124
fle.31788:
	fsub	f5, f0, f5	# 124
fle_cont.31787:
	lw		x8, 16(x7)	# 428
	mul		x11, x30, x9	# 433
	add		x8, x8, x11	# 433
	flw		f8, 0(x8)	# 433
	fle		f8, f5, fle.31790	# 125
	fle		f6, f4, fle.31792	# 124
	fadd	f5, f0, f6	# 124
	jal		x0, fle_cont.31791	# 124
fle.31792:
	fsub	f5, f0, f6	# 124
fle_cont.31791:
	lw		x8, 16(x7)	# 438
	mul		x11, x30, x10	# 443
	add		x8, x8, x11	# 443
	flw		f6, 0(x8)	# 443
	fle		f6, f5, fle.31794	# 125
	fle		f7, f4, fle.31796	# 124
	fadd	f4, f0, f7	# 124
	jal		x0, fle_cont.31795	# 124
fle.31796:
	fsub	f4, f0, f7	# 124
fle_cont.31795:
	lw		x8, 16(x7)	# 448
	mul		x6, x30, x6	# 453
	add		x6, x8, x6	# 453
	flw		f5, 0(x6)	# 453
	fle		f5, f4, fle.31798	# 125
	addi	x6, x0, 1	# 125
	jal		x0, fle_cont.31789	# 125
fle.31798:
	addi	x6, x0, 0	# 125
	jal		x0, fle_cont.31789	# 125
fle.31794:
	addi	x6, x0, 0	# 1367
	jal		x0, fle_cont.31789	# 125
fle.31790:
	addi	x6, x0, 0	# 1368
fle_cont.31789:
	beq		x6, x9, beq.31800	# 1363
	lw		x6, 24(x7)	# 410
	jal		x0, beq_cont.31763	# 1363
beq.31800:
	lw		x6, 24(x7)	# 410
	beq		x6, x9, beq.31802	# 1369
	addi	x6, x0, 0	# 1369
	jal		x0, beq_cont.31763	# 1369
beq.31802:
	addi	x6, x0, 1	# 1369
beq_cont.31763:
	beq		x6, x9, beq.31803	# 1405
	addi	x4, x0, 0	# 1406
	jalr	x0, x1, 0	# 1406
beq.31803:
	add		x4, x4, x10	# 1408
	lw		x31, 0(x29)	# 1408
	jalr	x0, x31, 0	# 1408
beq.31762:
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
	beq		x13, x9, beq.31804	# 1421
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
	beq		x15, x12, beq.31806	# 1170
	beq		x15, x8, beq.31808	# 1172
	mul		x7, x30, x11	# 1144
	add		x7, x14, x7	# 1144
	flw		f5, 0(x7)	# 1144
	feq		f5, f1, feq.31810	# 120
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
	beq		x7, x11, beq.31812	# 1006
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
	jal		x0, beq_cont.31811	# 1006
beq.31812:
	fadd	f2, f0, f7	# 1007
beq_cont.31811:
	lw		x7, 4(x9)	# 390
	beq		x7, x10, beq.31814	# 1150
	jal		x0, beq_cont.31813	# 1150
beq.31814:
	fsub	f2, f2, f16	# 1150
beq_cont.31813:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1151
	fsub	f2, f3, f2	# 1151
	fle		f2, f1, fle.31816	# 121
	lw		x7, 24(x9)	# 410
	beq		x7, x11, beq.31818	# 1153
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
	jal		x0, beq_cont.31817	# 1153
beq.31818:
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
beq_cont.31817:
	addi	x7, x0, 1	# 1157
	jal		x0, beq_cont.31805	# 121
fle.31816:
	addi	x7, x0, 0	# 1158
	jal		x0, beq_cont.31805	# 120
feq.31810:
	addi	x7, x0, 0	# 1146
	jal		x0, beq_cont.31805	# 1172
beq.31808:
	mul		x7, x30, x11	# 1134
	add		x7, x14, x7	# 1134
	flw		f5, 0(x7)	# 1134
	fle		f1, f5, fle.31820	# 122
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
	jal		x0, beq_cont.31805	# 122
fle.31820:
	addi	x7, x0, 0	# 1138
	jal		x0, beq_cont.31805	# 1170
beq.31806:
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
	fle		f8, f1, fle.31822	# 124
	jal		x0, fle_cont.31821	# 124
fle.31822:
	fsub	f8, f0, f8	# 124
fle_cont.31821:
	lw		x15, 16(x9)	# 438
	mul		x16, x30, x12	# 443
	add		x15, x15, x16	# 443
	flw		f9, 0(x15)	# 443
	fle		f9, f8, fle.31824	# 125
	mul		x15, x30, x8	# 1104
	addi	x15, x15, 64532	# 1104
	flw		f8, 0(x15)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		f8, f1, fle.31826	# 124
	jal		x0, fle_cont.31825	# 124
fle.31826:
	fsub	f8, f0, f8	# 124
fle_cont.31825:
	lw		x15, 16(x9)	# 448
	mul		x16, x30, x8	# 453
	add		x15, x15, x16	# 453
	flw		f9, 0(x15)	# 453
	fle		f9, f8, fle.31828	# 125
	feq		f6, f1, feq.31830	# 120
	addi	x15, x0, 1	# 1105
	jal		x0, fle_cont.31823	# 120
feq.31830:
	addi	x15, x0, 0	# 1105
	jal		x0, fle_cont.31823	# 125
fle.31828:
	addi	x15, x0, 0	# 1106
	jal		x0, fle_cont.31823	# 125
fle.31824:
	addi	x15, x0, 0	# 1107
fle_cont.31823:
	beq		x15, x11, beq.31832	# 1102
	mul		x7, x30, x11	# 1109
	addi	x7, x7, 64336	# 1109
	fsw		f5, 0(x7)	# 1109
	addi	x7, x0, 1	# 1109
	jal		x0, beq_cont.31805	# 1102
beq.31832:
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
	fle		f9, f1, fle.31834	# 124
	jal		x0, fle_cont.31833	# 124
fle.31834:
	fsub	f9, f0, f9	# 124
fle_cont.31833:
	lw		x10, 16(x9)	# 428
	mul		x15, x30, x11	# 433
	add		x10, x10, x15	# 433
	flw		f10, 0(x10)	# 433
	fle		f10, f9, fle.31836	# 125
	mul		x10, x30, x8	# 1113
	addi	x10, x10, 64532	# 1113
	flw		f9, 0(x10)	# 1113
	fmul	f9, f5, f9	# 1113
	fadd	f9, f9, f4	# 1113
	fle		f9, f1, fle.31838	# 124
	jal		x0, fle_cont.31837	# 124
fle.31838:
	fsub	f9, f0, f9	# 124
fle_cont.31837:
	lw		x10, 16(x9)	# 448
	mul		x15, x30, x8	# 453
	add		x10, x10, x15	# 453
	flw		f10, 0(x10)	# 453
	fle		f10, f9, fle.31840	# 125
	feq		f6, f1, feq.31842	# 120
	addi	x10, x0, 1	# 1114
	jal		x0, fle_cont.31835	# 120
feq.31842:
	addi	x10, x0, 0	# 1114
	jal		x0, fle_cont.31835	# 125
fle.31840:
	addi	x10, x0, 0	# 1115
	jal		x0, fle_cont.31835	# 125
fle.31836:
	addi	x10, x0, 0	# 1116
fle_cont.31835:
	beq		x10, x11, beq.31844	# 1111
	mul		x7, x30, x11	# 1118
	addi	x7, x7, 64336	# 1118
	fsw		f5, 0(x7)	# 1118
	addi	x7, x0, 2	# 1118
	jal		x0, beq_cont.31805	# 1111
beq.31844:
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
	fle		f2, f1, fle.31846	# 124
	jal		x0, fle_cont.31845	# 124
fle.31846:
	fsub	f2, f0, f2	# 124
fle_cont.31845:
	lw		x7, 16(x9)	# 428
	mul		x10, x30, x11	# 433
	add		x7, x7, x10	# 433
	flw		f6, 0(x7)	# 433
	fle		f6, f2, fle.31848	# 125
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		f2, f1, fle.31850	# 124
	jal		x0, fle_cont.31849	# 124
fle.31850:
	fsub	f2, f0, f2	# 124
fle_cont.31849:
	lw		x7, 16(x9)	# 438
	mul		x9, x30, x12	# 443
	add		x7, x7, x9	# 443
	flw		f3, 0(x7)	# 443
	fle		f3, f2, fle.31852	# 125
	feq		f5, f1, feq.31854	# 120
	addi	x7, x0, 1	# 1123
	jal		x0, fle_cont.31847	# 120
feq.31854:
	addi	x7, x0, 0	# 1123
	jal		x0, fle_cont.31847	# 125
fle.31852:
	addi	x7, x0, 0	# 1124
	jal		x0, fle_cont.31847	# 125
fle.31848:
	addi	x7, x0, 0	# 1125
fle_cont.31847:
	beq		x7, x11, beq.31856	# 1120
	mul		x7, x30, x11	# 1127
	addi	x7, x7, 64336	# 1127
	fsw		f4, 0(x7)	# 1127
	addi	x7, x0, 3	# 1127
	jal		x0, beq_cont.31805	# 1120
beq.31856:
	addi	x7, x0, 0	# 1129
beq_cont.31805:
	mul		x9, x30, x11	# 1426
	addi	x9, x9, 64336	# 1426
	flw		f1, 0(x9)	# 1426
	beq		x7, x11, beq.31858	# 1427
	fle		f20, f1, fle.31860	# 125
	addi	x7, x0, 1	# 125
	jal		x0, beq_cont.31857	# 125
fle.31860:
	addi	x7, x0, 0	# 125
	jal		x0, beq_cont.31857	# 1427
beq.31858:
	addi	x7, x0, 0	# 1427
beq_cont.31857:
	beq		x7, x11, beq.31861	# 1427
	fadd	f1, f1, f19	# 1430
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
	beq		x4, x5, beq.31862	# 1434
	addi	x4, x0, 1	# 1435
	jalr	x0, x1, 0	# 1435
beq.31862:
	lw		x4, -12(x2)	# 1437
	lw		x5, -8(x2)	# 1437
	add		x4, x4, x5	# 1437
	lw		x5, 0(x2)	# 1437
	lw		x29, -4(x2)	# 1437
	lw		x31, 0(x29)	# 1437
	jalr	x0, x31, 0	# 1437
beq.31861:
	mul		x6, x30, x13	# 1443
	addi	x6, x6, 63844	# 1443
	lw		x6, 0(x6)	# 1443
	lw		x6, 24(x6)	# 410
	beq		x6, x11, beq.31863	# 1443
	add		x4, x4, x12	# 1444
	lw		x31, 0(x29)	# 1444
	jalr	x0, x31, 0	# 1444
beq.31863:
	addi	x4, x0, 0	# 1446
	jalr	x0, x1, 0	# 1446
beq.31804:
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
	beq		x10, x7, beq.31864	# 1452
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
	beq		x4, x5, beq.31865	# 1457
	addi	x4, x0, 1	# 1458
	jalr	x0, x1, 0	# 1458
beq.31865:
	lw		x4, -12(x2)	# 1460
	lw		x5, -8(x2)	# 1460
	add		x4, x4, x5	# 1460
	lw		x5, 0(x2)	# 1460
	lw		x29, -4(x2)	# 1460
	lw		x31, 0(x29)	# 1460
	jalr	x0, x31, 0	# 1460
beq.31864:
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
	beq		x14, x9, beq.31866	# 1468
	addi	x9, x0, 99	# 1472
	sw		x13, 0(x2)	# 1472
	sw		x6, -4(x2)	# 1472
	sw		x5, -8(x2)	# 1472
	sw		x29, -12(x2)	# 1472
	sw		x12, -16(x2)	# 1472
	sw		x4, -20(x2)	# 1472
	sw		x11, -24(x2)	# 1472
	beq		x14, x9, beq.31868	# 1472
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
	beq		x15, x12, beq.31870	# 1170
	beq		x15, x8, beq.31872	# 1172
	mul		x7, x30, x11	# 1144
	add		x7, x14, x7	# 1144
	flw		f5, 0(x7)	# 1144
	feq		f5, f1, feq.31874	# 120
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
	beq		x7, x11, beq.31876	# 1006
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
	jal		x0, beq_cont.31875	# 1006
beq.31876:
	fadd	f2, f0, f7	# 1007
beq_cont.31875:
	lw		x7, 4(x9)	# 390
	beq		x7, x10, beq.31878	# 1150
	jal		x0, beq_cont.31877	# 1150
beq.31878:
	fsub	f2, f2, f16	# 1150
beq_cont.31877:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1151
	fsub	f2, f3, f2	# 1151
	fle		f2, f1, fle.31880	# 121
	lw		x7, 24(x9)	# 410
	beq		x7, x11, beq.31882	# 1153
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
	jal		x0, beq_cont.31881	# 1153
beq.31882:
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
beq_cont.31881:
	addi	x7, x0, 1	# 1157
	jal		x0, beq_cont.31869	# 121
fle.31880:
	addi	x7, x0, 0	# 1158
	jal		x0, beq_cont.31869	# 120
feq.31874:
	addi	x7, x0, 0	# 1146
	jal		x0, beq_cont.31869	# 1172
beq.31872:
	mul		x7, x30, x11	# 1134
	add		x7, x14, x7	# 1134
	flw		f5, 0(x7)	# 1134
	fle		f1, f5, fle.31884	# 122
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
	jal		x0, beq_cont.31869	# 122
fle.31884:
	addi	x7, x0, 0	# 1138
	jal		x0, beq_cont.31869	# 1170
beq.31870:
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
	fle		f8, f1, fle.31886	# 124
	jal		x0, fle_cont.31885	# 124
fle.31886:
	fsub	f8, f0, f8	# 124
fle_cont.31885:
	lw		x15, 16(x9)	# 438
	mul		x16, x30, x12	# 443
	add		x15, x15, x16	# 443
	flw		f9, 0(x15)	# 443
	fle		f9, f8, fle.31888	# 125
	mul		x15, x30, x8	# 1104
	addi	x15, x15, 64532	# 1104
	flw		f8, 0(x15)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		f8, f1, fle.31890	# 124
	jal		x0, fle_cont.31889	# 124
fle.31890:
	fsub	f8, f0, f8	# 124
fle_cont.31889:
	lw		x15, 16(x9)	# 448
	mul		x16, x30, x8	# 453
	add		x15, x15, x16	# 453
	flw		f9, 0(x15)	# 453
	fle		f9, f8, fle.31892	# 125
	feq		f6, f1, feq.31894	# 120
	addi	x15, x0, 1	# 1105
	jal		x0, fle_cont.31887	# 120
feq.31894:
	addi	x15, x0, 0	# 1105
	jal		x0, fle_cont.31887	# 125
fle.31892:
	addi	x15, x0, 0	# 1106
	jal		x0, fle_cont.31887	# 125
fle.31888:
	addi	x15, x0, 0	# 1107
fle_cont.31887:
	beq		x15, x11, beq.31896	# 1102
	mul		x7, x30, x11	# 1109
	addi	x7, x7, 64336	# 1109
	fsw		f5, 0(x7)	# 1109
	addi	x7, x0, 1	# 1109
	jal		x0, beq_cont.31869	# 1102
beq.31896:
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
	fle		f9, f1, fle.31898	# 124
	jal		x0, fle_cont.31897	# 124
fle.31898:
	fsub	f9, f0, f9	# 124
fle_cont.31897:
	lw		x10, 16(x9)	# 428
	mul		x15, x30, x11	# 433
	add		x10, x10, x15	# 433
	flw		f10, 0(x10)	# 433
	fle		f10, f9, fle.31900	# 125
	mul		x10, x30, x8	# 1113
	addi	x10, x10, 64532	# 1113
	flw		f9, 0(x10)	# 1113
	fmul	f9, f5, f9	# 1113
	fadd	f9, f9, f4	# 1113
	fle		f9, f1, fle.31902	# 124
	jal		x0, fle_cont.31901	# 124
fle.31902:
	fsub	f9, f0, f9	# 124
fle_cont.31901:
	lw		x10, 16(x9)	# 448
	mul		x8, x30, x8	# 453
	add		x8, x10, x8	# 453
	flw		f10, 0(x8)	# 453
	fle		f10, f9, fle.31904	# 125
	feq		f6, f1, feq.31906	# 120
	addi	x8, x0, 1	# 1114
	jal		x0, fle_cont.31899	# 120
feq.31906:
	addi	x8, x0, 0	# 1114
	jal		x0, fle_cont.31899	# 125
fle.31904:
	addi	x8, x0, 0	# 1115
	jal		x0, fle_cont.31899	# 125
fle.31900:
	addi	x8, x0, 0	# 1116
fle_cont.31899:
	beq		x8, x11, beq.31908	# 1111
	mul		x7, x30, x11	# 1118
	addi	x7, x7, 64336	# 1118
	fsw		f5, 0(x7)	# 1118
	addi	x7, x0, 2	# 1118
	jal		x0, beq_cont.31869	# 1111
beq.31908:
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
	fle		f2, f1, fle.31910	# 124
	jal		x0, fle_cont.31909	# 124
fle.31910:
	fsub	f2, f0, f2	# 124
fle_cont.31909:
	lw		x7, 16(x9)	# 428
	mul		x8, x30, x11	# 433
	add		x7, x7, x8	# 433
	flw		f6, 0(x7)	# 433
	fle		f6, f2, fle.31912	# 125
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		f2, f1, fle.31914	# 124
	jal		x0, fle_cont.31913	# 124
fle.31914:
	fsub	f2, f0, f2	# 124
fle_cont.31913:
	lw		x7, 16(x9)	# 438
	mul		x8, x30, x12	# 443
	add		x7, x7, x8	# 443
	flw		f3, 0(x7)	# 443
	fle		f3, f2, fle.31916	# 125
	feq		f5, f1, feq.31918	# 120
	addi	x7, x0, 1	# 1123
	jal		x0, fle_cont.31911	# 120
feq.31918:
	addi	x7, x0, 0	# 1123
	jal		x0, fle_cont.31911	# 125
fle.31916:
	addi	x7, x0, 0	# 1124
	jal		x0, fle_cont.31911	# 125
fle.31912:
	addi	x7, x0, 0	# 1125
fle_cont.31911:
	beq		x7, x11, beq.31920	# 1120
	mul		x7, x30, x11	# 1127
	addi	x7, x7, 64336	# 1127
	fsw		f4, 0(x7)	# 1127
	addi	x7, x0, 3	# 1127
	jal		x0, beq_cont.31869	# 1120
beq.31920:
	addi	x7, x0, 0	# 1129
beq_cont.31869:
	beq		x7, x11, beq.31922	# 1478
	mul		x7, x30, x11	# 1479
	addi	x7, x7, 64336	# 1479
	flw		f1, 0(x7)	# 1479
	fle		f21, f1, fle.31924	# 125
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
	beq		x4, x5, beq.31926	# 1480
	addi	x4, x0, 1	# 1481
	jal		x0, beq_cont.31867	# 1480
beq.31926:
	addi	x4, x0, 0	# 1482
	jal		x0, beq_cont.31867	# 125
fle.31924:
	addi	x4, x0, 0	# 1483
	jal		x0, beq_cont.31867	# 1478
beq.31922:
	addi	x4, x0, 0	# 1484
	jal		x0, beq_cont.31867	# 1472
beq.31868:
	addi	x4, x0, 1	# 1473
beq_cont.31867:
	lw		x5, -24(x2)	# 1471
	beq		x4, x5, beq.31927	# 1471
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
	beq		x4, x5, beq.31928	# 1486
	addi	x4, x0, 1	# 1487
	jalr	x0, x1, 0	# 1487
beq.31928:
	lw		x4, -20(x2)	# 1489
	lw		x5, -16(x2)	# 1489
	add		x4, x4, x5	# 1489
	lw		x5, -8(x2)	# 1489
	lw		x29, -12(x2)	# 1489
	lw		x31, 0(x29)	# 1489
	jalr	x0, x31, 0	# 1489
beq.31927:
	lw		x4, -20(x2)	# 1491
	lw		x5, -16(x2)	# 1491
	add		x4, x4, x5	# 1491
	lw		x5, -8(x2)	# 1491
	lw		x29, -12(x2)	# 1491
	lw		x31, 0(x29)	# 1491
	jalr	x0, x31, 0	# 1491
beq.31866:
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
	beq		x13, x9, beq.31929	# 1503
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
	beq		x14, x12, beq.31931	# 1076
	beq		x14, x8, beq.31933	# 1077
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
	beq		x14, x11, beq_cont.31934	# 1006
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
	jal		x0, beq_cont.31934	# 1006
beq_cont.31934:
	feq		f8, f1, feq.31937	# 120
	fmul	f10, f5, f2	# 1018
	fmul	f10, f10, f9	# 1018
	fmul	f13, f6, f3	# 1019
	fmul	f13, f13, f11	# 1019
	fadd	f10, f10, f13	# 1018
	fmul	f13, f7, f4	# 1020
	fmul	f13, f13, f12	# 1020
	fadd	f10, f10, f13	# 1018
	beq		x14, x11, beq.31939	# 1022
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
	fmul	f5, f5, f26	# 126
	fadd	f5, f10, f5	# 1025
	jal		x0, beq_cont.31938	# 1022
beq.31939:
	fadd	f5, f0, f10	# 1023
beq_cont.31938:
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f9	# 1004
	fmul	f7, f3, f3	# 127
	fmul	f7, f7, f11	# 1004
	fadd	f6, f6, f7	# 1004
	fmul	f7, f4, f4	# 127
	fmul	f7, f7, f12	# 1004
	fadd	f6, f6, f7	# 1004
	beq		x14, x11, beq.31941	# 1006
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
	jal		x0, beq_cont.31940	# 1006
beq.31941:
	fadd	f2, f0, f6	# 1007
beq_cont.31940:
	lw		x14, 4(x9)	# 390
	beq		x14, x10, beq.31943	# 1053
	jal		x0, beq_cont.31942	# 1053
beq.31943:
	fsub	f2, f2, f16	# 1053
beq_cont.31942:
	fmul	f3, f5, f5	# 127
	fmul	f2, f8, f2	# 1055
	fsub	f2, f3, f2	# 1055
	fle		f2, f1, fle.31945	# 121
	fsqrt	f2, f2	# 1058
	lw		x9, 24(x9)	# 410
	beq		x9, x11, beq.31947	# 1059
	jal		x0, beq_cont.31946	# 1059
beq.31947:
	fsub	f2, f0, f2	# 123
beq_cont.31946:
	fsub	f2, f2, f5	# 1060
	fdiv	f2, f2, f8	# 1060
	mul		x9, x30, x11	# 1060
	addi	x9, x9, 64336	# 1060
	fsw		f2, 0(x9)	# 1060
	addi	x9, x0, 1	# 1060
	jal		x0, beq_cont.31930	# 121
fle.31945:
	addi	x9, x0, 0	# 1063
	jal		x0, beq_cont.31930	# 120
feq.31937:
	addi	x9, x0, 0	# 1046
	jal		x0, beq_cont.31930	# 1077
beq.31933:
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
	fle		f5, f1, fle.31949	# 121
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
	jal		x0, beq_cont.31930	# 121
fle.31949:
	addi	x9, x0, 0	# 996
	jal		x0, beq_cont.31930	# 1076
beq.31931:
	mul		x10, x30, x11	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		f5, f1, feq.31951	# 120
	lw		x10, 16(x9)	# 458
	lw		x14, 24(x9)	# 410
	fle		f1, f5, fle.31953	# 122
	addi	x15, x0, 1	# 122
	jal		x0, fle_cont.31952	# 122
fle.31953:
	addi	x15, x0, 0	# 122
fle_cont.31952:
	beq		x14, x11, beq.31955	# 241
	fle		f1, f5, fle.31957	# 122
	addi	x14, x0, 0	# 241
	jal		x0, beq_cont.31954	# 122
fle.31957:
	addi	x14, x0, 1	# 241
	jal		x0, beq_cont.31954	# 241
beq.31955:
	addi	x14, x15, 0	# 241
beq_cont.31954:
	mul		x15, x30, x11	# 967
	add		x15, x10, x15	# 967
	flw		f6, 0(x15)	# 967
	beq		x14, x11, beq.31959	# 256
	jal		x0, beq_cont.31958	# 256
beq.31959:
	fsub	f6, f0, f6	# 123
beq_cont.31958:
	fsub	f6, f6, f2	# 969
	fdiv	f5, f6, f5	# 969
	mul		x14, x30, x12	# 970
	add		x14, x6, x14	# 970
	flw		f6, 0(x14)	# 970
	fmul	f6, f5, f6	# 970
	fadd	f6, f6, f3	# 970
	fle		f6, f1, fle.31961	# 124
	jal		x0, fle_cont.31960	# 124
fle.31961:
	fsub	f6, f0, f6	# 124
fle_cont.31960:
	mul		x14, x30, x12	# 970
	add		x14, x10, x14	# 970
	flw		f7, 0(x14)	# 970
	fle		f7, f6, fle.31963	# 125
	mul		x14, x30, x8	# 971
	add		x14, x6, x14	# 971
	flw		f6, 0(x14)	# 971
	fmul	f6, f5, f6	# 971
	fadd	f6, f6, f4	# 971
	fle		f6, f1, fle.31965	# 124
	jal		x0, fle_cont.31964	# 124
fle.31965:
	fsub	f6, f0, f6	# 124
fle_cont.31964:
	mul		x14, x30, x8	# 971
	add		x10, x10, x14	# 971
	flw		f7, 0(x10)	# 971
	fle		f7, f6, fle.31967	# 125
	mul		x10, x30, x11	# 972
	addi	x10, x10, 64336	# 972
	fsw		f5, 0(x10)	# 972
	addi	x10, x0, 1	# 972
	jal		x0, feq_cont.31950	# 125
fle.31967:
	addi	x10, x0, 0	# 973
	jal		x0, feq_cont.31950	# 125
fle.31963:
	addi	x10, x0, 0	# 974
	jal		x0, feq_cont.31950	# 120
feq.31951:
	addi	x10, x0, 0	# 965
feq_cont.31950:
	beq		x10, x11, beq.31969	# 980
	addi	x9, x0, 1	# 980
	jal		x0, beq_cont.31930	# 980
beq.31969:
	mul		x10, x30, x12	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		f5, f1, feq.31971	# 120
	lw		x10, 16(x9)	# 458
	lw		x14, 24(x9)	# 410
	fle		f1, f5, fle.31973	# 122
	addi	x15, x0, 1	# 122
	jal		x0, fle_cont.31972	# 122
fle.31973:
	addi	x15, x0, 0	# 122
fle_cont.31972:
	beq		x14, x11, beq.31975	# 241
	fle		f1, f5, fle.31977	# 122
	addi	x14, x0, 0	# 241
	jal		x0, beq_cont.31974	# 122
fle.31977:
	addi	x14, x0, 1	# 241
	jal		x0, beq_cont.31974	# 241
beq.31975:
	addi	x14, x15, 0	# 241
beq_cont.31974:
	mul		x15, x30, x12	# 967
	add		x15, x10, x15	# 967
	flw		f6, 0(x15)	# 967
	beq		x14, x11, beq.31979	# 256
	jal		x0, beq_cont.31978	# 256
beq.31979:
	fsub	f6, f0, f6	# 123
beq_cont.31978:
	fsub	f6, f6, f3	# 969
	fdiv	f5, f6, f5	# 969
	mul		x14, x30, x8	# 970
	add		x14, x6, x14	# 970
	flw		f6, 0(x14)	# 970
	fmul	f6, f5, f6	# 970
	fadd	f6, f6, f4	# 970
	fle		f6, f1, fle.31981	# 124
	jal		x0, fle_cont.31980	# 124
fle.31981:
	fsub	f6, f0, f6	# 124
fle_cont.31980:
	mul		x14, x30, x8	# 970
	add		x14, x10, x14	# 970
	flw		f7, 0(x14)	# 970
	fle		f7, f6, fle.31983	# 125
	mul		x14, x30, x11	# 971
	add		x14, x6, x14	# 971
	flw		f6, 0(x14)	# 971
	fmul	f6, f5, f6	# 971
	fadd	f6, f6, f2	# 971
	fle		f6, f1, fle.31985	# 124
	jal		x0, fle_cont.31984	# 124
fle.31985:
	fsub	f6, f0, f6	# 124
fle_cont.31984:
	mul		x14, x30, x11	# 971
	add		x10, x10, x14	# 971
	flw		f7, 0(x10)	# 971
	fle		f7, f6, fle.31987	# 125
	mul		x10, x30, x11	# 972
	addi	x10, x10, 64336	# 972
	fsw		f5, 0(x10)	# 972
	addi	x10, x0, 1	# 972
	jal		x0, feq_cont.31970	# 125
fle.31987:
	addi	x10, x0, 0	# 973
	jal		x0, feq_cont.31970	# 125
fle.31983:
	addi	x10, x0, 0	# 974
	jal		x0, feq_cont.31970	# 120
feq.31971:
	addi	x10, x0, 0	# 965
feq_cont.31970:
	beq		x10, x11, beq.31989	# 981
	addi	x9, x0, 2	# 981
	jal		x0, beq_cont.31930	# 981
beq.31989:
	mul		x10, x30, x8	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		f5, f1, feq.31991	# 120
	lw		x10, 16(x9)	# 458
	lw		x9, 24(x9)	# 410
	fle		f1, f5, fle.31993	# 122
	addi	x14, x0, 1	# 122
	jal		x0, fle_cont.31992	# 122
fle.31993:
	addi	x14, x0, 0	# 122
fle_cont.31992:
	beq		x9, x11, beq.31995	# 241
	fle		f1, f5, fle.31997	# 122
	addi	x9, x0, 0	# 241
	jal		x0, beq_cont.31994	# 122
fle.31997:
	addi	x9, x0, 1	# 241
	jal		x0, beq_cont.31994	# 241
beq.31995:
	addi	x9, x14, 0	# 241
beq_cont.31994:
	mul		x14, x30, x8	# 967
	add		x14, x10, x14	# 967
	flw		f6, 0(x14)	# 967
	beq		x9, x11, beq.31999	# 256
	jal		x0, beq_cont.31998	# 256
beq.31999:
	fsub	f6, f0, f6	# 123
beq_cont.31998:
	fsub	f4, f6, f4	# 969
	fdiv	f4, f4, f5	# 969
	mul		x9, x30, x11	# 970
	add		x9, x6, x9	# 970
	flw		f5, 0(x9)	# 970
	fmul	f5, f4, f5	# 970
	fadd	f2, f5, f2	# 970
	fle		f2, f1, fle.32001	# 124
	jal		x0, fle_cont.32000	# 124
fle.32001:
	fsub	f2, f0, f2	# 124
fle_cont.32000:
	mul		x9, x30, x11	# 970
	add		x9, x10, x9	# 970
	flw		f5, 0(x9)	# 970
	fle		f5, f2, fle.32003	# 125
	mul		x9, x30, x12	# 971
	add		x9, x6, x9	# 971
	flw		f2, 0(x9)	# 971
	fmul	f2, f4, f2	# 971
	fadd	f2, f2, f3	# 971
	fle		f2, f1, fle.32005	# 124
	jal		x0, fle_cont.32004	# 124
fle.32005:
	fsub	f2, f0, f2	# 124
fle_cont.32004:
	mul		x9, x30, x12	# 971
	add		x9, x10, x9	# 971
	flw		f3, 0(x9)	# 971
	fle		f3, f2, fle.32007	# 125
	mul		x9, x30, x11	# 972
	addi	x9, x9, 64336	# 972
	fsw		f4, 0(x9)	# 972
	addi	x9, x0, 1	# 972
	jal		x0, feq_cont.31990	# 125
fle.32007:
	addi	x9, x0, 0	# 973
	jal		x0, feq_cont.31990	# 125
fle.32003:
	addi	x9, x0, 0	# 974
	jal		x0, feq_cont.31990	# 120
feq.31991:
	addi	x9, x0, 0	# 965
feq_cont.31990:
	beq		x9, x11, beq.32009	# 982
	addi	x9, x0, 3	# 982
	jal		x0, beq_cont.31930	# 982
beq.32009:
	addi	x9, x0, 0	# 983
beq_cont.31930:
	beq		x9, x11, beq.32010	# 1506
	mul		x10, x30, x11	# 1510
	addi	x10, x10, 64336	# 1510
	flw		f2, 0(x10)	# 1510
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x29, -8(x2)	# 125
	sw		x12, -12(x2)	# 125
	sw		x4, -16(x2)	# 125
	fle		f2, f1, fle_cont.32011	# 125
	mul		x10, x30, x11	# 1513
	addi	x10, x10, 64344	# 1513
	flw		f1, 0(x10)	# 1513
	fle		f1, f2, fle_cont.32011	# 125
	fadd	f1, f2, f19	# 1515
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
	fsw		f4, -24(x2)	# 1519
	sw		x8, -28(x2)	# 1519
	fsw		f3, -32(x2)	# 1519
	fsw		f2, -36(x2)	# 1519
	fsw		f1, -40(x2)	# 1519
	sw		x11, -44(x2)	# 1519
	addi	x4, x11, 0	# 1519
	addi	x29, x7, 0	# 1519
	fadd	f1, f0, f2	# 1519
	fadd	f2, f0, f3	# 1519
	fadd	f3, f0, f4	# 1519
	sw		x1, -48(x2)	# 1519
	addi	x2, x2, -52	# 1519
	lw		x31, 0(x29)	# 1519
	jalr	x1, x31, 0	# 1519
	addi	x2, x2, 52	# 1519
	lw		x1, -48(x2)	# 1519
	lw		x5, -44(x2)	# 1519
	beq		x4, x5, fle_cont.32011	# 1519
	mul		x4, x30, x5	# 1521
	addi	x4, x4, 64344	# 1521
	flw		f1, -40(x2)	# 1521
	fsw		f1, 0(x4)	# 1521
	mul		x4, x30, x5	# 277
	addi	x4, x4, 64348	# 277
	flw		f1, -36(x2)	# 277
	fsw		f1, 0(x4)	# 277
	lw		x4, -12(x2)	# 278
	mul		x6, x30, x4	# 278
	addi	x6, x6, 64348	# 278
	flw		f1, -32(x2)	# 278
	fsw		f1, 0(x6)	# 278
	lw		x6, -28(x2)	# 279
	mul		x6, x30, x6	# 279
	addi	x6, x6, 64348	# 279
	flw		f1, -24(x2)	# 279
	fsw		f1, 0(x6)	# 279
	mul		x6, x30, x5	# 1523
	addi	x6, x6, 64360	# 1523
	sw		x13, 0(x6)	# 1523
	mul		x5, x30, x5	# 1524
	addi	x5, x5, 64340	# 1524
	lw		x6, -20(x2)	# 1524
	sw		x6, 0(x5)	# 1524
	jal		x0, fle_cont.32011	# 1519
	jal		x0, fle_cont.32011	# 125
	jal		x0, fle_cont.32011	# 125
fle_cont.32011:
	lw		x4, -16(x2)	# 1530
	lw		x5, -12(x2)	# 1530
	add		x4, x4, x5	# 1530
	lw		x5, -4(x2)	# 1530
	lw		x6, 0(x2)	# 1530
	lw		x29, -8(x2)	# 1530
	lw		x31, 0(x29)	# 1530
	jalr	x0, x31, 0	# 1530
beq.32010:
	mul		x7, x30, x13	# 1534
	addi	x7, x7, 63844	# 1534
	lw		x7, 0(x7)	# 1534
	lw		x7, 24(x7)	# 410
	beq		x7, x11, beq.32017	# 1534
	add		x4, x4, x12	# 1535
	lw		x31, 0(x29)	# 1535
	jalr	x0, x31, 0	# 1535
beq.32017:
	jalr	x0, x1, 0	# 1536
beq.31929:
	jalr	x0, x1, 0	# 1503
solve_one_or_network.2843.18061:
	lw		x7, 16(x29)	# 1543
	lw		x8, 12(x29)	# 1543
	lw		x9, 8(x29)	# 1543
	lw		x10, 4(x29)	# 1543
	mul		x11, x30, x4	# 1543
	add		x11, x5, x11	# 1543
	lw		x11, 0(x11)	# 1543
	beq		x11, x8, beq.32020	# 1544
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
	lw		x4, -16(x2)	# 1547
	lw		x5, -12(x2)	# 1547
	add		x4, x4, x5	# 1547
	lw		x5, -4(x2)	# 1547
	lw		x6, 0(x2)	# 1547
	lw		x29, -8(x2)	# 1547
	lw		x31, 0(x29)	# 1547
	jalr	x0, x31, 0	# 1547
beq.32020:
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
	beq		x14, x9, beq.32022	# 1555
	addi	x9, x0, 99	# 1558
	sw		x6, 0(x2)	# 1558
	sw		x5, -4(x2)	# 1558
	sw		x29, -8(x2)	# 1558
	sw		x12, -12(x2)	# 1558
	sw		x4, -16(x2)	# 1558
	beq		x14, x9, beq.32024	# 1558
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
	beq		x14, x12, beq.32026	# 1076
	beq		x14, x8, beq.32028	# 1077
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
	beq		x14, x11, beq_cont.32029	# 1006
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
	jal		x0, beq_cont.32029	# 1006
beq_cont.32029:
	feq		f8, f1, feq.32032	# 120
	fmul	f10, f5, f2	# 1018
	fmul	f10, f10, f9	# 1018
	fmul	f13, f6, f3	# 1019
	fmul	f13, f13, f11	# 1019
	fadd	f10, f10, f13	# 1018
	fmul	f13, f7, f4	# 1020
	fmul	f13, f13, f12	# 1020
	fadd	f10, f10, f13	# 1018
	beq		x14, x11, beq.32034	# 1022
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
	fmul	f5, f5, f26	# 126
	fadd	f5, f10, f5	# 1025
	jal		x0, beq_cont.32033	# 1022
beq.32034:
	fadd	f5, f0, f10	# 1023
beq_cont.32033:
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f9	# 1004
	fmul	f7, f3, f3	# 127
	fmul	f7, f7, f11	# 1004
	fadd	f6, f6, f7	# 1004
	fmul	f7, f4, f4	# 127
	fmul	f7, f7, f12	# 1004
	fadd	f6, f6, f7	# 1004
	beq		x14, x11, beq.32036	# 1006
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
	jal		x0, beq_cont.32035	# 1006
beq.32036:
	fadd	f2, f0, f6	# 1007
beq_cont.32035:
	lw		x8, 4(x9)	# 390
	beq		x8, x10, beq.32038	# 1053
	jal		x0, beq_cont.32037	# 1053
beq.32038:
	fsub	f2, f2, f16	# 1053
beq_cont.32037:
	fmul	f3, f5, f5	# 127
	fmul	f2, f8, f2	# 1055
	fsub	f2, f3, f2	# 1055
	fle		f2, f1, fle.32040	# 121
	fsqrt	f1, f2	# 1058
	lw		x8, 24(x9)	# 410
	beq		x8, x11, beq.32042	# 1059
	jal		x0, beq_cont.32041	# 1059
beq.32042:
	fsub	f1, f0, f1	# 123
beq_cont.32041:
	fsub	f1, f1, f5	# 1060
	fdiv	f1, f1, f8	# 1060
	mul		x8, x30, x11	# 1060
	addi	x8, x8, 64336	# 1060
	fsw		f1, 0(x8)	# 1060
	addi	x8, x0, 1	# 1060
	jal		x0, beq_cont.32025	# 121
fle.32040:
	addi	x8, x0, 0	# 1063
	jal		x0, beq_cont.32025	# 120
feq.32032:
	addi	x8, x0, 0	# 1046
	jal		x0, beq_cont.32025	# 1077
beq.32028:
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
	fle		f5, f1, fle.32044	# 121
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
	jal		x0, beq_cont.32025	# 121
fle.32044:
	addi	x8, x0, 0	# 996
	jal		x0, beq_cont.32025	# 1076
beq.32026:
	mul		x10, x30, x11	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		f5, f1, feq.32046	# 120
	lw		x10, 16(x9)	# 458
	lw		x14, 24(x9)	# 410
	fle		f1, f5, fle.32048	# 122
	addi	x15, x0, 1	# 122
	jal		x0, fle_cont.32047	# 122
fle.32048:
	addi	x15, x0, 0	# 122
fle_cont.32047:
	beq		x14, x11, beq.32050	# 241
	fle		f1, f5, fle.32052	# 122
	addi	x14, x0, 0	# 241
	jal		x0, beq_cont.32049	# 122
fle.32052:
	addi	x14, x0, 1	# 241
	jal		x0, beq_cont.32049	# 241
beq.32050:
	addi	x14, x15, 0	# 241
beq_cont.32049:
	mul		x15, x30, x11	# 967
	add		x15, x10, x15	# 967
	flw		f6, 0(x15)	# 967
	beq		x14, x11, beq.32054	# 256
	jal		x0, beq_cont.32053	# 256
beq.32054:
	fsub	f6, f0, f6	# 123
beq_cont.32053:
	fsub	f6, f6, f2	# 969
	fdiv	f5, f6, f5	# 969
	mul		x14, x30, x12	# 970
	add		x14, x6, x14	# 970
	flw		f6, 0(x14)	# 970
	fmul	f6, f5, f6	# 970
	fadd	f6, f6, f3	# 970
	fle		f6, f1, fle.32056	# 124
	jal		x0, fle_cont.32055	# 124
fle.32056:
	fsub	f6, f0, f6	# 124
fle_cont.32055:
	mul		x14, x30, x12	# 970
	add		x14, x10, x14	# 970
	flw		f7, 0(x14)	# 970
	fle		f7, f6, fle.32058	# 125
	mul		x14, x30, x8	# 971
	add		x14, x6, x14	# 971
	flw		f6, 0(x14)	# 971
	fmul	f6, f5, f6	# 971
	fadd	f6, f6, f4	# 971
	fle		f6, f1, fle.32060	# 124
	jal		x0, fle_cont.32059	# 124
fle.32060:
	fsub	f6, f0, f6	# 124
fle_cont.32059:
	mul		x14, x30, x8	# 971
	add		x10, x10, x14	# 971
	flw		f7, 0(x10)	# 971
	fle		f7, f6, fle.32062	# 125
	mul		x10, x30, x11	# 972
	addi	x10, x10, 64336	# 972
	fsw		f5, 0(x10)	# 972
	addi	x10, x0, 1	# 972
	jal		x0, feq_cont.32045	# 125
fle.32062:
	addi	x10, x0, 0	# 973
	jal		x0, feq_cont.32045	# 125
fle.32058:
	addi	x10, x0, 0	# 974
	jal		x0, feq_cont.32045	# 120
feq.32046:
	addi	x10, x0, 0	# 965
feq_cont.32045:
	beq		x10, x11, beq.32064	# 980
	addi	x8, x0, 1	# 980
	jal		x0, beq_cont.32025	# 980
beq.32064:
	mul		x10, x30, x12	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		f5, f1, feq.32066	# 120
	lw		x10, 16(x9)	# 458
	lw		x14, 24(x9)	# 410
	fle		f1, f5, fle.32068	# 122
	addi	x15, x0, 1	# 122
	jal		x0, fle_cont.32067	# 122
fle.32068:
	addi	x15, x0, 0	# 122
fle_cont.32067:
	beq		x14, x11, beq.32070	# 241
	fle		f1, f5, fle.32072	# 122
	addi	x14, x0, 0	# 241
	jal		x0, beq_cont.32069	# 122
fle.32072:
	addi	x14, x0, 1	# 241
	jal		x0, beq_cont.32069	# 241
beq.32070:
	addi	x14, x15, 0	# 241
beq_cont.32069:
	mul		x15, x30, x12	# 967
	add		x15, x10, x15	# 967
	flw		f6, 0(x15)	# 967
	beq		x14, x11, beq.32074	# 256
	jal		x0, beq_cont.32073	# 256
beq.32074:
	fsub	f6, f0, f6	# 123
beq_cont.32073:
	fsub	f6, f6, f3	# 969
	fdiv	f5, f6, f5	# 969
	mul		x14, x30, x8	# 970
	add		x14, x6, x14	# 970
	flw		f6, 0(x14)	# 970
	fmul	f6, f5, f6	# 970
	fadd	f6, f6, f4	# 970
	fle		f6, f1, fle.32076	# 124
	jal		x0, fle_cont.32075	# 124
fle.32076:
	fsub	f6, f0, f6	# 124
fle_cont.32075:
	mul		x14, x30, x8	# 970
	add		x14, x10, x14	# 970
	flw		f7, 0(x14)	# 970
	fle		f7, f6, fle.32078	# 125
	mul		x14, x30, x11	# 971
	add		x14, x6, x14	# 971
	flw		f6, 0(x14)	# 971
	fmul	f6, f5, f6	# 971
	fadd	f6, f6, f2	# 971
	fle		f6, f1, fle.32080	# 124
	jal		x0, fle_cont.32079	# 124
fle.32080:
	fsub	f6, f0, f6	# 124
fle_cont.32079:
	mul		x14, x30, x11	# 971
	add		x10, x10, x14	# 971
	flw		f7, 0(x10)	# 971
	fle		f7, f6, fle.32082	# 125
	mul		x10, x30, x11	# 972
	addi	x10, x10, 64336	# 972
	fsw		f5, 0(x10)	# 972
	addi	x10, x0, 1	# 972
	jal		x0, feq_cont.32065	# 125
fle.32082:
	addi	x10, x0, 0	# 973
	jal		x0, feq_cont.32065	# 125
fle.32078:
	addi	x10, x0, 0	# 974
	jal		x0, feq_cont.32065	# 120
feq.32066:
	addi	x10, x0, 0	# 965
feq_cont.32065:
	beq		x10, x11, beq.32084	# 981
	addi	x8, x0, 2	# 981
	jal		x0, beq_cont.32025	# 981
beq.32084:
	mul		x10, x30, x8	# 965
	add		x10, x6, x10	# 965
	flw		f5, 0(x10)	# 965
	feq		f5, f1, feq.32086	# 120
	lw		x10, 16(x9)	# 458
	lw		x9, 24(x9)	# 410
	fle		f1, f5, fle.32088	# 122
	addi	x14, x0, 1	# 122
	jal		x0, fle_cont.32087	# 122
fle.32088:
	addi	x14, x0, 0	# 122
fle_cont.32087:
	beq		x9, x11, beq.32090	# 241
	fle		f1, f5, fle.32092	# 122
	addi	x9, x0, 0	# 241
	jal		x0, beq_cont.32089	# 122
fle.32092:
	addi	x9, x0, 1	# 241
	jal		x0, beq_cont.32089	# 241
beq.32090:
	addi	x9, x14, 0	# 241
beq_cont.32089:
	mul		x8, x30, x8	# 967
	add		x8, x10, x8	# 967
	flw		f6, 0(x8)	# 967
	beq		x9, x11, beq.32094	# 256
	jal		x0, beq_cont.32093	# 256
beq.32094:
	fsub	f6, f0, f6	# 123
beq_cont.32093:
	fsub	f4, f6, f4	# 969
	fdiv	f4, f4, f5	# 969
	mul		x8, x30, x11	# 970
	add		x8, x6, x8	# 970
	flw		f5, 0(x8)	# 970
	fmul	f5, f4, f5	# 970
	fadd	f2, f5, f2	# 970
	fle		f2, f1, fle.32096	# 124
	jal		x0, fle_cont.32095	# 124
fle.32096:
	fsub	f2, f0, f2	# 124
fle_cont.32095:
	mul		x8, x30, x11	# 970
	add		x8, x10, x8	# 970
	flw		f5, 0(x8)	# 970
	fle		f5, f2, fle.32098	# 125
	mul		x8, x30, x12	# 971
	add		x8, x6, x8	# 971
	flw		f2, 0(x8)	# 971
	fmul	f2, f4, f2	# 971
	fadd	f2, f2, f3	# 971
	fle		f2, f1, fle.32100	# 124
	fadd	f1, f0, f2	# 124
	jal		x0, fle_cont.32099	# 124
fle.32100:
	fsub	f1, f0, f2	# 124
fle_cont.32099:
	mul		x8, x30, x12	# 971
	add		x8, x10, x8	# 971
	flw		f2, 0(x8)	# 971
	fle		f2, f1, fle.32102	# 125
	mul		x8, x30, x11	# 972
	addi	x8, x8, 64336	# 972
	fsw		f4, 0(x8)	# 972
	addi	x8, x0, 1	# 972
	jal		x0, feq_cont.32085	# 125
fle.32102:
	addi	x8, x0, 0	# 973
	jal		x0, feq_cont.32085	# 125
fle.32098:
	addi	x8, x0, 0	# 974
	jal		x0, feq_cont.32085	# 120
feq.32086:
	addi	x8, x0, 0	# 965
feq_cont.32085:
	beq		x8, x11, beq.32104	# 982
	addi	x8, x0, 3	# 982
	jal		x0, beq_cont.32025	# 982
beq.32104:
	addi	x8, x0, 0	# 983
beq_cont.32025:
	beq		x8, x11, beq_cont.32023	# 1564
	mul		x8, x30, x11	# 1565
	addi	x8, x8, 64336	# 1565
	flw		f1, 0(x8)	# 1565
	mul		x8, x30, x11	# 1566
	addi	x8, x8, 64344	# 1566
	flw		f2, 0(x8)	# 1566
	fle		f2, f1, beq_cont.32023	# 125
	addi	x5, x13, 0	# 1567
	addi	x4, x12, 0	# 1567
	addi	x29, x7, 0	# 1567
	sw		x1, -20(x2)	# 1567
	addi	x2, x2, -24	# 1567
	lw		x31, 0(x29)	# 1567
	jalr	x1, x31, 0	# 1567
	addi	x2, x2, 24	# 1567
	lw		x1, -20(x2)	# 1567
	jal		x0, beq_cont.32023	# 125
	jal		x0, beq_cont.32023	# 1564
	jal		x0, beq_cont.32023	# 1558
beq.32024:
	addi	x5, x13, 0	# 1559
	addi	x4, x12, 0	# 1559
	addi	x29, x7, 0	# 1559
	sw		x1, -20(x2)	# 1559
	addi	x2, x2, -24	# 1559
	lw		x31, 0(x29)	# 1559
	jalr	x1, x31, 0	# 1559
	addi	x2, x2, 24	# 1559
	lw		x1, -20(x2)	# 1559
beq_cont.32023:
	lw		x4, -16(x2)	# 1571
	lw		x5, -12(x2)	# 1571
	add		x4, x4, x5	# 1571
	lw		x5, -4(x2)	# 1571
	lw		x6, 0(x2)	# 1571
	lw		x29, -8(x2)	# 1571
	lw		x31, 0(x29)	# 1571
	jalr	x0, x31, 0	# 1571
beq.32022:
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
	beq		x15, x10, beq.32110	# 1597
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
	beq		x19, x13, beq.32112	# 1218
	beq		x19, x9, beq.32114	# 1220
	mul		x19, x30, x12	# 1192
	add		x19, x18, x19	# 1192
	flw		f5, 0(x19)	# 1192
	feq		f5, f1, feq.32116	# 120
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
	fle		f3, f1, fle.32118	# 121
	lw		x16, 24(x16)	# 410
	beq		x16, x12, beq.32120	# 1200
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
	jal		x0, beq_cont.32119	# 1200
beq.32120:
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
beq_cont.32119:
	addi	x16, x0, 1	# 1204
	jal		x0, beq_cont.32111	# 121
fle.32118:
	addi	x16, x0, 0	# 1205
	jal		x0, beq_cont.32111	# 120
feq.32116:
	addi	x16, x0, 0	# 1194
	jal		x0, beq_cont.32111	# 1220
beq.32114:
	mul		x16, x30, x12	# 1183
	add		x16, x18, x16	# 1183
	flw		f2, 0(x16)	# 1183
	fle		f1, f2, fle.32122	# 122
	mul		x16, x30, x11	# 1184
	add		x16, x17, x16	# 1184
	flw		f3, 0(x16)	# 1184
	fmul	f2, f2, f3	# 1184
	mul		x16, x30, x12	# 1184
	addi	x16, x16, 64336	# 1184
	fsw		f2, 0(x16)	# 1184
	addi	x16, x0, 1	# 1185
	jal		x0, beq_cont.32111	# 122
fle.32122:
	addi	x16, x0, 0	# 1186
	jal		x0, beq_cont.32111	# 1218
beq.32112:
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
	fle		f8, f1, fle.32124	# 124
	jal		x0, fle_cont.32123	# 124
fle.32124:
	fsub	f8, f0, f8	# 124
fle_cont.32123:
	lw		x19, 16(x16)	# 438
	mul		x20, x30, x13	# 443
	add		x19, x19, x20	# 443
	flw		f9, 0(x19)	# 443
	fle		f9, f8, fle.32126	# 125
	mul		x19, x30, x9	# 1104
	add		x19, x17, x19	# 1104
	flw		f8, 0(x19)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		f8, f1, fle.32128	# 124
	jal		x0, fle_cont.32127	# 124
fle.32128:
	fsub	f8, f0, f8	# 124
fle_cont.32127:
	lw		x19, 16(x16)	# 448
	mul		x20, x30, x9	# 453
	add		x19, x19, x20	# 453
	flw		f9, 0(x19)	# 453
	fle		f9, f8, fle.32130	# 125
	feq		f6, f1, feq.32132	# 120
	addi	x19, x0, 1	# 1105
	jal		x0, fle_cont.32125	# 120
feq.32132:
	addi	x19, x0, 0	# 1105
	jal		x0, fle_cont.32125	# 125
fle.32130:
	addi	x19, x0, 0	# 1106
	jal		x0, fle_cont.32125	# 125
fle.32126:
	addi	x19, x0, 0	# 1107
fle_cont.32125:
	beq		x19, x12, beq.32134	# 1102
	mul		x16, x30, x12	# 1109
	addi	x16, x16, 64336	# 1109
	fsw		f5, 0(x16)	# 1109
	addi	x16, x0, 1	# 1109
	jal		x0, beq_cont.32111	# 1102
beq.32134:
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
	fle		f9, f1, fle.32136	# 124
	jal		x0, fle_cont.32135	# 124
fle.32136:
	fsub	f9, f0, f9	# 124
fle_cont.32135:
	lw		x19, 16(x16)	# 428
	mul		x20, x30, x12	# 433
	add		x19, x19, x20	# 433
	flw		f10, 0(x19)	# 433
	fle		f10, f9, fle.32138	# 125
	mul		x19, x30, x9	# 1113
	add		x17, x17, x19	# 1113
	flw		f9, 0(x17)	# 1113
	fmul	f9, f5, f9	# 1113
	fadd	f9, f9, f4	# 1113
	fle		f9, f1, fle.32140	# 124
	jal		x0, fle_cont.32139	# 124
fle.32140:
	fsub	f9, f0, f9	# 124
fle_cont.32139:
	lw		x17, 16(x16)	# 448
	mul		x19, x30, x9	# 453
	add		x17, x17, x19	# 453
	flw		f10, 0(x17)	# 453
	fle		f10, f9, fle.32142	# 125
	feq		f6, f1, feq.32144	# 120
	addi	x17, x0, 1	# 1114
	jal		x0, fle_cont.32137	# 120
feq.32144:
	addi	x17, x0, 0	# 1114
	jal		x0, fle_cont.32137	# 125
fle.32142:
	addi	x17, x0, 0	# 1115
	jal		x0, fle_cont.32137	# 125
fle.32138:
	addi	x17, x0, 0	# 1116
fle_cont.32137:
	beq		x17, x12, beq.32146	# 1111
	mul		x16, x30, x12	# 1118
	addi	x16, x16, 64336	# 1118
	fsw		f5, 0(x16)	# 1118
	addi	x16, x0, 2	# 1118
	jal		x0, beq_cont.32111	# 1111
beq.32146:
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
	fle		f2, f1, fle.32148	# 124
	jal		x0, fle_cont.32147	# 124
fle.32148:
	fsub	f2, f0, f2	# 124
fle_cont.32147:
	lw		x17, 16(x16)	# 428
	mul		x18, x30, x12	# 433
	add		x17, x17, x18	# 433
	flw		f6, 0(x17)	# 433
	fle		f6, f2, fle.32150	# 125
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		f2, f1, fle.32152	# 124
	jal		x0, fle_cont.32151	# 124
fle.32152:
	fsub	f2, f0, f2	# 124
fle_cont.32151:
	lw		x16, 16(x16)	# 438
	mul		x17, x30, x13	# 443
	add		x16, x16, x17	# 443
	flw		f3, 0(x16)	# 443
	fle		f3, f2, fle.32154	# 125
	feq		f5, f1, feq.32156	# 120
	addi	x16, x0, 1	# 1123
	jal		x0, fle_cont.32149	# 120
feq.32156:
	addi	x16, x0, 0	# 1123
	jal		x0, fle_cont.32149	# 125
fle.32154:
	addi	x16, x0, 0	# 1124
	jal		x0, fle_cont.32149	# 125
fle.32150:
	addi	x16, x0, 0	# 1125
fle_cont.32149:
	beq		x16, x12, beq.32158	# 1120
	mul		x16, x30, x12	# 1127
	addi	x16, x16, 64336	# 1127
	fsw		f4, 0(x16)	# 1127
	addi	x16, x0, 3	# 1127
	jal		x0, beq_cont.32111	# 1120
beq.32158:
	addi	x16, x0, 0	# 1129
beq_cont.32111:
	beq		x16, x12, beq.32159	# 1600
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
	sw		x4, -40(x2)	# 125
	fle		f2, f1, fle_cont.32160	# 125
	mul		x17, x30, x12	# 1607
	addi	x17, x17, 64344	# 1607
	flw		f3, 0(x17)	# 1607
	fle		f3, f2, fle_cont.32160	# 125
	fadd	f2, f2, f19	# 1609
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
	fsw		f5, -44(x2)	# 1613
	fsw		f4, -48(x2)	# 1613
	fsw		f3, -52(x2)	# 1613
	fsw		f2, -56(x2)	# 1613
	addi	x4, x12, 0	# 1613
	addi	x29, x7, 0	# 1613
	fadd	f2, f0, f4	# 1613
	fadd	f1, f0, f3	# 1613
	fadd	f3, f0, f5	# 1613
	sw		x1, -60(x2)	# 1613
	addi	x2, x2, -64	# 1613
	lw		x31, 0(x29)	# 1613
	jalr	x1, x31, 0	# 1613
	addi	x2, x2, 64	# 1613
	lw		x1, -60(x2)	# 1613
	lw		x5, -24(x2)	# 1613
	beq		x4, x5, fle_cont.32160	# 1613
	mul		x4, x30, x5	# 1615
	addi	x4, x4, 64344	# 1615
	flw		f1, -56(x2)	# 1615
	fsw		f1, 0(x4)	# 1615
	mul		x4, x30, x5	# 277
	addi	x4, x4, 64348	# 277
	flw		f1, -52(x2)	# 277
	fsw		f1, 0(x4)	# 277
	mul		x4, x30, x13	# 278
	addi	x4, x4, 64348	# 278
	flw		f1, -48(x2)	# 278
	fsw		f1, 0(x4)	# 278
	lw		x4, -20(x2)	# 279
	mul		x6, x30, x4	# 279
	addi	x6, x6, 64348	# 279
	flw		f1, -44(x2)	# 279
	fsw		f1, 0(x6)	# 279
	mul		x6, x30, x5	# 1617
	addi	x6, x6, 64360	# 1617
	sw		x15, 0(x6)	# 1617
	mul		x6, x30, x5	# 1618
	addi	x6, x6, 64340	# 1618
	sw		x16, 0(x6)	# 1618
	jal		x0, fle_cont.32160	# 1613
	jal		x0, fle_cont.32160	# 125
	jal		x0, fle_cont.32160	# 125
fle_cont.32160:
	lw		x4, -40(x2)	# 1624
	add		x4, x4, x13	# 1624
	lw		x6, -36(x2)	# 676
	lw		x5, 0(x6)	# 676
	mul		x7, x30, x4	# 1596
	lw		x8, -32(x2)	# 1596
	add		x7, x8, x7	# 1596
	lw		x7, 0(x7)	# 1596
	lw		x9, -28(x2)	# 1597
	beq		x7, x9, beq.32166	# 1597
	mul		x9, x30, x7	# 1210
	addi	x9, x9, 63844	# 1210
	lw		x9, 0(x9)	# 1210
	lw		x10, 40(x9)	# 585
	lw		x11, -24(x2)	# 1212
	mul		x12, x30, x11	# 1212
	add		x12, x10, x12	# 1212
	flw		f1, 0(x12)	# 1212
	mul		x12, x30, x13	# 1213
	add		x12, x10, x12	# 1213
	flw		f2, 0(x12)	# 1213
	lw		x12, -20(x2)	# 1214
	mul		x14, x30, x12	# 1214
	add		x14, x10, x14	# 1214
	flw		f3, 0(x14)	# 1214
	lw		x14, 4(x6)	# 682
	mul		x15, x30, x7	# 1216
	add		x14, x14, x15	# 1216
	lw		x14, 0(x14)	# 1216
	lw		x15, 4(x9)	# 390
	beq		x15, x13, beq.32168	# 1218
	beq		x15, x12, beq.32170	# 1220
	mul		x15, x30, x11	# 1192
	add		x15, x14, x15	# 1192
	flw		f4, 0(x15)	# 1192
	flw		f5, -16(x2)	# 120
	feq		f4, f5, feq.32172	# 120
	mul		x15, x30, x13	# 1196
	add		x15, x14, x15	# 1196
	flw		f6, 0(x15)	# 1196
	fmul	f1, f6, f1	# 1196
	mul		x15, x30, x12	# 1196
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
	add		x10, x10, x15	# 1197
	flw		f2, 0(x10)	# 1197
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1198
	fsub	f2, f3, f2	# 1198
	fle		f2, f5, fle.32174	# 121
	lw		x9, 24(x9)	# 410
	beq		x9, x11, beq.32176	# 1200
	fsqrt	f2, f2	# 1201
	fadd	f1, f1, f2	# 1201
	addi	x9, x0, 4	# 1201
	mul		x9, x30, x9	# 1201
	add		x9, x14, x9	# 1201
	flw		f2, 0(x9)	# 1201
	fmul	f1, f1, f2	# 1201
	mul		x9, x30, x11	# 1201
	addi	x9, x9, 64336	# 1201
	fsw		f1, 0(x9)	# 1201
	jal		x0, beq_cont.32175	# 1200
beq.32176:
	fsqrt	f2, f2	# 1203
	fsub	f1, f1, f2	# 1203
	addi	x9, x0, 4	# 1203
	mul		x9, x30, x9	# 1203
	add		x9, x14, x9	# 1203
	flw		f2, 0(x9)	# 1203
	fmul	f1, f1, f2	# 1203
	mul		x9, x30, x11	# 1203
	addi	x9, x9, 64336	# 1203
	fsw		f1, 0(x9)	# 1203
beq_cont.32175:
	addi	x9, x0, 1	# 1204
	jal		x0, beq_cont.32167	# 121
fle.32174:
	addi	x9, x0, 0	# 1205
	jal		x0, beq_cont.32167	# 120
feq.32172:
	addi	x9, x0, 0	# 1194
	jal		x0, beq_cont.32167	# 1220
beq.32170:
	mul		x9, x30, x11	# 1183
	add		x9, x14, x9	# 1183
	flw		f1, 0(x9)	# 1183
	flw		f2, -16(x2)	# 122
	fle		f2, f1, fle.32178	# 122
	lw		x9, -12(x2)	# 1184
	mul		x9, x30, x9	# 1184
	add		x9, x10, x9	# 1184
	flw		f3, 0(x9)	# 1184
	fmul	f1, f1, f3	# 1184
	mul		x9, x30, x11	# 1184
	addi	x9, x9, 64336	# 1184
	fsw		f1, 0(x9)	# 1184
	addi	x9, x0, 1	# 1185
	jal		x0, beq_cont.32167	# 122
fle.32178:
	addi	x9, x0, 0	# 1186
	jal		x0, beq_cont.32167	# 1218
beq.32168:
	lw		x10, 0(x6)	# 676
	mul		x15, x30, x11	# 1101
	add		x15, x14, x15	# 1101
	flw		f4, 0(x15)	# 1101
	fsub	f4, f4, f1	# 1101
	mul		x15, x30, x13	# 1101
	add		x15, x14, x15	# 1101
	flw		f5, 0(x15)	# 1101
	fmul	f4, f4, f5	# 1101
	mul		x15, x30, x13	# 1103
	add		x15, x10, x15	# 1103
	flw		f6, 0(x15)	# 1103
	fmul	f7, f4, f6	# 1103
	fadd	f7, f7, f2	# 1103
	flw		f8, -16(x2)	# 124
	fle		f7, f8, fle.32180	# 124
	jal		x0, fle_cont.32179	# 124
fle.32180:
	fsub	f7, f0, f7	# 124
fle_cont.32179:
	lw		x15, 16(x9)	# 438
	mul		x16, x30, x13	# 443
	add		x15, x15, x16	# 443
	flw		f9, 0(x15)	# 443
	fle		f9, f7, fle.32182	# 125
	mul		x15, x30, x12	# 1104
	add		x15, x10, x15	# 1104
	flw		f7, 0(x15)	# 1104
	fmul	f7, f4, f7	# 1104
	fadd	f7, f7, f3	# 1104
	fle		f7, f8, fle.32184	# 124
	jal		x0, fle_cont.32183	# 124
fle.32184:
	fsub	f7, f0, f7	# 124
fle_cont.32183:
	lw		x15, 16(x9)	# 448
	mul		x16, x30, x12	# 453
	add		x15, x15, x16	# 453
	flw		f10, 0(x15)	# 453
	fle		f10, f7, fle.32186	# 125
	feq		f5, f8, feq.32188	# 120
	addi	x15, x0, 1	# 1105
	jal		x0, fle_cont.32181	# 120
feq.32188:
	addi	x15, x0, 0	# 1105
	jal		x0, fle_cont.32181	# 125
fle.32186:
	addi	x15, x0, 0	# 1106
	jal		x0, fle_cont.32181	# 125
fle.32182:
	addi	x15, x0, 0	# 1107
fle_cont.32181:
	beq		x15, x11, beq.32190	# 1102
	mul		x9, x30, x11	# 1109
	addi	x9, x9, 64336	# 1109
	fsw		f4, 0(x9)	# 1109
	addi	x9, x0, 1	# 1109
	jal		x0, beq_cont.32167	# 1102
beq.32190:
	mul		x15, x30, x12	# 1110
	add		x15, x14, x15	# 1110
	flw		f4, 0(x15)	# 1110
	fsub	f4, f4, f2	# 1110
	lw		x15, -12(x2)	# 1110
	mul		x15, x30, x15	# 1110
	add		x15, x14, x15	# 1110
	flw		f5, 0(x15)	# 1110
	fmul	f4, f4, f5	# 1110
	mul		x15, x30, x11	# 1112
	add		x15, x10, x15	# 1112
	flw		f7, 0(x15)	# 1112
	fmul	f10, f4, f7	# 1112
	fadd	f10, f10, f1	# 1112
	fle		f10, f8, fle.32192	# 124
	jal		x0, fle_cont.32191	# 124
fle.32192:
	fsub	f10, f0, f10	# 124
fle_cont.32191:
	lw		x15, 16(x9)	# 428
	mul		x16, x30, x11	# 433
	add		x15, x15, x16	# 433
	flw		f11, 0(x15)	# 433
	fle		f11, f10, fle.32194	# 125
	mul		x15, x30, x12	# 1113
	add		x10, x10, x15	# 1113
	flw		f10, 0(x10)	# 1113
	fmul	f10, f4, f10	# 1113
	fadd	f10, f10, f3	# 1113
	fle		f10, f8, fle.32196	# 124
	jal		x0, fle_cont.32195	# 124
fle.32196:
	fsub	f10, f0, f10	# 124
fle_cont.32195:
	lw		x9, 16(x9)	# 448
	mul		x10, x30, x12	# 453
	add		x9, x9, x10	# 453
	flw		f12, 0(x9)	# 453
	fle		f12, f10, fle.32198	# 125
	feq		f5, f8, feq.32200	# 120
	addi	x9, x0, 1	# 1114
	jal		x0, fle_cont.32193	# 120
feq.32200:
	addi	x9, x0, 0	# 1114
	jal		x0, fle_cont.32193	# 125
fle.32198:
	addi	x9, x0, 0	# 1115
	jal		x0, fle_cont.32193	# 125
fle.32194:
	addi	x9, x0, 0	# 1116
fle_cont.32193:
	beq		x9, x11, beq.32202	# 1111
	mul		x9, x30, x11	# 1118
	addi	x9, x9, 64336	# 1118
	fsw		f4, 0(x9)	# 1118
	addi	x9, x0, 2	# 1118
	jal		x0, beq_cont.32167	# 1111
beq.32202:
	addi	x9, x0, 4	# 1119
	mul		x9, x30, x9	# 1119
	add		x9, x14, x9	# 1119
	flw		f4, 0(x9)	# 1119
	fsub	f3, f4, f3	# 1119
	lw		x9, -8(x2)	# 1119
	mul		x9, x30, x9	# 1119
	add		x9, x14, x9	# 1119
	flw		f4, 0(x9)	# 1119
	fmul	f3, f3, f4	# 1119
	fmul	f5, f3, f7	# 1121
	fadd	f1, f5, f1	# 1121
	fle		f1, f8, fle.32204	# 124
	jal		x0, fle_cont.32203	# 124
fle.32204:
	fsub	f1, f0, f1	# 124
fle_cont.32203:
	fle		f11, f1, fle.32206	# 125
	fmul	f1, f3, f6	# 1122
	fadd	f1, f1, f2	# 1122
	fle		f1, f8, fle.32208	# 124
	jal		x0, fle_cont.32207	# 124
fle.32208:
	fsub	f1, f0, f1	# 124
fle_cont.32207:
	fle		f9, f1, fle.32210	# 125
	feq		f4, f8, feq.32212	# 120
	addi	x9, x0, 1	# 1123
	jal		x0, fle_cont.32205	# 120
feq.32212:
	addi	x9, x0, 0	# 1123
	jal		x0, fle_cont.32205	# 125
fle.32210:
	addi	x9, x0, 0	# 1124
	jal		x0, fle_cont.32205	# 125
fle.32206:
	addi	x9, x0, 0	# 1125
fle_cont.32205:
	beq		x9, x11, beq.32214	# 1120
	mul		x9, x30, x11	# 1127
	addi	x9, x9, 64336	# 1127
	fsw		f3, 0(x9)	# 1127
	addi	x9, x0, 3	# 1127
	jal		x0, beq_cont.32167	# 1120
beq.32214:
	addi	x9, x0, 0	# 1129
beq_cont.32167:
	beq		x9, x11, beq.32215	# 1600
	mul		x10, x30, x11	# 1604
	addi	x10, x10, 64336	# 1604
	flw		f1, 0(x10)	# 1604
	flw		f2, -16(x2)	# 125
	sw		x4, -60(x2)	# 125
	fle		f1, f2, fle_cont.32216	# 125
	mul		x10, x30, x11	# 1607
	addi	x10, x10, 64344	# 1607
	flw		f2, 0(x10)	# 1607
	fle		f2, f1, fle_cont.32216	# 125
	fadd	f1, f1, f19	# 1609
	mul		x10, x30, x11	# 1610
	add		x10, x5, x10	# 1610
	flw		f2, 0(x10)	# 1610
	fmul	f2, f2, f1	# 1610
	mul		x10, x30, x11	# 1610
	addi	x10, x10, 64444	# 1610
	flw		f3, 0(x10)	# 1610
	fadd	f2, f2, f3	# 1610
	mul		x10, x30, x13	# 1611
	add		x10, x5, x10	# 1611
	flw		f3, 0(x10)	# 1611
	fmul	f3, f3, f1	# 1611
	mul		x10, x30, x13	# 1611
	addi	x10, x10, 64444	# 1611
	flw		f4, 0(x10)	# 1611
	fadd	f3, f3, f4	# 1611
	mul		x10, x30, x12	# 1612
	add		x5, x5, x10	# 1612
	flw		f4, 0(x5)	# 1612
	fmul	f4, f4, f1	# 1612
	mul		x5, x30, x12	# 1612
	addi	x5, x5, 64444	# 1612
	flw		f5, 0(x5)	# 1612
	fadd	f4, f4, f5	# 1612
	lw		x29, 0(x2)	# 1613
	sw		x9, -64(x2)	# 1613
	sw		x7, -68(x2)	# 1613
	fsw		f4, -72(x2)	# 1613
	fsw		f3, -76(x2)	# 1613
	fsw		f2, -80(x2)	# 1613
	fsw		f1, -84(x2)	# 1613
	addi	x5, x8, 0	# 1613
	addi	x4, x11, 0	# 1613
	fadd	f1, f0, f2	# 1613
	fadd	f2, f0, f3	# 1613
	fadd	f3, f0, f4	# 1613
	sw		x1, -88(x2)	# 1613
	addi	x2, x2, -92	# 1613
	lw		x31, 0(x29)	# 1613
	jalr	x1, x31, 0	# 1613
	addi	x2, x2, 92	# 1613
	lw		x1, -88(x2)	# 1613
	lw		x5, -24(x2)	# 1613
	beq		x4, x5, fle_cont.32216	# 1613
	mul		x4, x30, x5	# 1615
	addi	x4, x4, 64344	# 1615
	flw		f1, -84(x2)	# 1615
	fsw		f1, 0(x4)	# 1615
	mul		x4, x30, x5	# 277
	addi	x4, x4, 64348	# 277
	flw		f1, -80(x2)	# 277
	fsw		f1, 0(x4)	# 277
	mul		x4, x30, x13	# 278
	addi	x4, x4, 64348	# 278
	flw		f1, -76(x2)	# 278
	fsw		f1, 0(x4)	# 278
	lw		x4, -20(x2)	# 279
	mul		x4, x30, x4	# 279
	addi	x4, x4, 64348	# 279
	flw		f1, -72(x2)	# 279
	fsw		f1, 0(x4)	# 279
	mul		x4, x30, x5	# 1617
	addi	x4, x4, 64360	# 1617
	lw		x6, -68(x2)	# 1617
	sw		x6, 0(x4)	# 1617
	mul		x4, x30, x5	# 1618
	addi	x4, x4, 64340	# 1618
	lw		x5, -64(x2)	# 1618
	sw		x5, 0(x4)	# 1618
	jal		x0, fle_cont.32216	# 1613
	jal		x0, fle_cont.32216	# 125
	jal		x0, fle_cont.32216	# 125
fle_cont.32216:
	lw		x4, -60(x2)	# 1624
	add		x4, x4, x13	# 1624
	lw		x5, -32(x2)	# 1624
	lw		x6, -36(x2)	# 1624
	lw		x29, -4(x2)	# 1624
	lw		x31, 0(x29)	# 1624
	jalr	x0, x31, 0	# 1624
beq.32215:
	mul		x5, x30, x7	# 1628
	addi	x5, x5, 63844	# 1628
	lw		x5, 0(x5)	# 1628
	lw		x5, 24(x5)	# 410
	beq		x5, x11, beq.32222	# 1628
	add		x4, x4, x13	# 1629
	lw		x29, -4(x2)	# 1629
	addi	x5, x8, 0	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x0, x31, 0	# 1629
beq.32222:
	jalr	x0, x1, 0	# 1630
beq.32166:
	jalr	x0, x1, 0	# 1597
beq.32159:
	mul		x14, x30, x15	# 1628
	addi	x14, x14, 63844	# 1628
	lw		x14, 0(x14)	# 1628
	lw		x14, 24(x14)	# 410
	beq		x14, x12, beq.32225	# 1628
	add		x4, x4, x13	# 1629
	lw		x14, 0(x6)	# 676
	mul		x15, x30, x4	# 1596
	add		x15, x5, x15	# 1596
	lw		x15, 0(x15)	# 1596
	beq		x15, x10, beq.32226	# 1597
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
	beq		x18, x13, beq.32228	# 1218
	beq		x18, x9, beq.32230	# 1220
	mul		x8, x30, x12	# 1192
	add		x8, x17, x8	# 1192
	flw		f5, 0(x8)	# 1192
	feq		f5, f1, feq.32232	# 120
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
	fle		f3, f1, fle.32234	# 121
	lw		x8, 24(x10)	# 410
	beq		x8, x12, beq.32236	# 1200
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
	jal		x0, beq_cont.32235	# 1200
beq.32236:
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
beq_cont.32235:
	addi	x8, x0, 1	# 1204
	jal		x0, beq_cont.32227	# 121
fle.32234:
	addi	x8, x0, 0	# 1205
	jal		x0, beq_cont.32227	# 120
feq.32232:
	addi	x8, x0, 0	# 1194
	jal		x0, beq_cont.32227	# 1220
beq.32230:
	mul		x8, x30, x12	# 1183
	add		x8, x17, x8	# 1183
	flw		f2, 0(x8)	# 1183
	fle		f1, f2, fle.32238	# 122
	mul		x8, x30, x11	# 1184
	add		x8, x16, x8	# 1184
	flw		f3, 0(x8)	# 1184
	fmul	f2, f2, f3	# 1184
	mul		x8, x30, x12	# 1184
	addi	x8, x8, 64336	# 1184
	fsw		f2, 0(x8)	# 1184
	addi	x8, x0, 1	# 1185
	jal		x0, beq_cont.32227	# 122
fle.32238:
	addi	x8, x0, 0	# 1186
	jal		x0, beq_cont.32227	# 1218
beq.32228:
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
	fle		f8, f1, fle.32240	# 124
	jal		x0, fle_cont.32239	# 124
fle.32240:
	fsub	f8, f0, f8	# 124
fle_cont.32239:
	lw		x18, 16(x10)	# 438
	mul		x19, x30, x13	# 443
	add		x18, x18, x19	# 443
	flw		f9, 0(x18)	# 443
	fle		f9, f8, fle.32242	# 125
	mul		x18, x30, x9	# 1104
	add		x18, x16, x18	# 1104
	flw		f8, 0(x18)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		f8, f1, fle.32244	# 124
	jal		x0, fle_cont.32243	# 124
fle.32244:
	fsub	f8, f0, f8	# 124
fle_cont.32243:
	lw		x18, 16(x10)	# 448
	mul		x19, x30, x9	# 453
	add		x18, x18, x19	# 453
	flw		f10, 0(x18)	# 453
	fle		f10, f8, fle.32246	# 125
	feq		f6, f1, feq.32248	# 120
	addi	x18, x0, 1	# 1105
	jal		x0, fle_cont.32241	# 120
feq.32248:
	addi	x18, x0, 0	# 1105
	jal		x0, fle_cont.32241	# 125
fle.32246:
	addi	x18, x0, 0	# 1106
	jal		x0, fle_cont.32241	# 125
fle.32242:
	addi	x18, x0, 0	# 1107
fle_cont.32241:
	beq		x18, x12, beq.32250	# 1102
	mul		x8, x30, x12	# 1109
	addi	x8, x8, 64336	# 1109
	fsw		f5, 0(x8)	# 1109
	addi	x8, x0, 1	# 1109
	jal		x0, beq_cont.32227	# 1102
beq.32250:
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
	fle		f10, f1, fle.32252	# 124
	jal		x0, fle_cont.32251	# 124
fle.32252:
	fsub	f10, f0, f10	# 124
fle_cont.32251:
	lw		x11, 16(x10)	# 428
	mul		x18, x30, x12	# 433
	add		x11, x11, x18	# 433
	flw		f11, 0(x11)	# 433
	fle		f11, f10, fle.32254	# 125
	mul		x11, x30, x9	# 1113
	add		x11, x16, x11	# 1113
	flw		f10, 0(x11)	# 1113
	fmul	f10, f5, f10	# 1113
	fadd	f10, f10, f4	# 1113
	fle		f10, f1, fle.32256	# 124
	jal		x0, fle_cont.32255	# 124
fle.32256:
	fsub	f10, f0, f10	# 124
fle_cont.32255:
	lw		x10, 16(x10)	# 448
	mul		x11, x30, x9	# 453
	add		x10, x10, x11	# 453
	flw		f12, 0(x10)	# 453
	fle		f12, f10, fle.32258	# 125
	feq		f6, f1, feq.32260	# 120
	addi	x10, x0, 1	# 1114
	jal		x0, fle_cont.32253	# 120
feq.32260:
	addi	x10, x0, 0	# 1114
	jal		x0, fle_cont.32253	# 125
fle.32258:
	addi	x10, x0, 0	# 1115
	jal		x0, fle_cont.32253	# 125
fle.32254:
	addi	x10, x0, 0	# 1116
fle_cont.32253:
	beq		x10, x12, beq.32262	# 1111
	mul		x8, x30, x12	# 1118
	addi	x8, x8, 64336	# 1118
	fsw		f5, 0(x8)	# 1118
	addi	x8, x0, 2	# 1118
	jal		x0, beq_cont.32227	# 1111
beq.32262:
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
	fle		f2, f1, fle.32264	# 124
	jal		x0, fle_cont.32263	# 124
fle.32264:
	fsub	f2, f0, f2	# 124
fle_cont.32263:
	fle		f11, f2, fle.32266	# 125
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		f2, f1, fle.32268	# 124
	jal		x0, fle_cont.32267	# 124
fle.32268:
	fsub	f2, f0, f2	# 124
fle_cont.32267:
	fle		f9, f2, fle.32270	# 125
	feq		f5, f1, feq.32272	# 120
	addi	x8, x0, 1	# 1123
	jal		x0, fle_cont.32265	# 120
feq.32272:
	addi	x8, x0, 0	# 1123
	jal		x0, fle_cont.32265	# 125
fle.32270:
	addi	x8, x0, 0	# 1124
	jal		x0, fle_cont.32265	# 125
fle.32266:
	addi	x8, x0, 0	# 1125
fle_cont.32265:
	beq		x8, x12, beq.32274	# 1120
	mul		x8, x30, x12	# 1127
	addi	x8, x8, 64336	# 1127
	fsw		f4, 0(x8)	# 1127
	addi	x8, x0, 3	# 1127
	jal		x0, beq_cont.32227	# 1120
beq.32274:
	addi	x8, x0, 0	# 1129
beq_cont.32227:
	beq		x8, x12, beq.32275	# 1600
	mul		x10, x30, x12	# 1604
	addi	x10, x10, 64336	# 1604
	flw		f2, 0(x10)	# 1604
	sw		x6, -36(x2)	# 125
	sw		x5, -32(x2)	# 125
	sw		x29, -4(x2)	# 125
	sw		x4, -88(x2)	# 125
	fle		f2, f1, fle_cont.32276	# 125
	mul		x10, x30, x12	# 1607
	addi	x10, x10, 64344	# 1607
	flw		f1, 0(x10)	# 1607
	fle		f1, f2, fle_cont.32276	# 125
	fadd	f1, f2, f19	# 1609
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
	sw		x8, -92(x2)	# 1613
	fsw		f4, -96(x2)	# 1613
	sw		x9, -20(x2)	# 1613
	fsw		f3, -100(x2)	# 1613
	fsw		f2, -104(x2)	# 1613
	fsw		f1, -108(x2)	# 1613
	sw		x12, -24(x2)	# 1613
	addi	x4, x12, 0	# 1613
	addi	x29, x7, 0	# 1613
	fadd	f1, f0, f2	# 1613
	fadd	f2, f0, f3	# 1613
	fadd	f3, f0, f4	# 1613
	sw		x1, -112(x2)	# 1613
	addi	x2, x2, -116	# 1613
	lw		x31, 0(x29)	# 1613
	jalr	x1, x31, 0	# 1613
	addi	x2, x2, 116	# 1613
	lw		x1, -112(x2)	# 1613
	lw		x5, -24(x2)	# 1613
	beq		x4, x5, fle_cont.32276	# 1613
	mul		x4, x30, x5	# 1615
	addi	x4, x4, 64344	# 1615
	flw		f1, -108(x2)	# 1615
	fsw		f1, 0(x4)	# 1615
	mul		x4, x30, x5	# 277
	addi	x4, x4, 64348	# 277
	flw		f1, -104(x2)	# 277
	fsw		f1, 0(x4)	# 277
	mul		x4, x30, x13	# 278
	addi	x4, x4, 64348	# 278
	flw		f1, -100(x2)	# 278
	fsw		f1, 0(x4)	# 278
	lw		x4, -20(x2)	# 279
	mul		x4, x30, x4	# 279
	addi	x4, x4, 64348	# 279
	flw		f1, -96(x2)	# 279
	fsw		f1, 0(x4)	# 279
	mul		x4, x30, x5	# 1617
	addi	x4, x4, 64360	# 1617
	sw		x15, 0(x4)	# 1617
	mul		x4, x30, x5	# 1618
	addi	x4, x4, 64340	# 1618
	lw		x5, -92(x2)	# 1618
	sw		x5, 0(x4)	# 1618
	jal		x0, fle_cont.32276	# 1613
	jal		x0, fle_cont.32276	# 125
	jal		x0, fle_cont.32276	# 125
fle_cont.32276:
	lw		x4, -88(x2)	# 1624
	add		x4, x4, x13	# 1624
	lw		x5, -32(x2)	# 1624
	lw		x6, -36(x2)	# 1624
	lw		x29, -4(x2)	# 1624
	lw		x31, 0(x29)	# 1624
	jalr	x0, x31, 0	# 1624
beq.32275:
	mul		x7, x30, x15	# 1628
	addi	x7, x7, 63844	# 1628
	lw		x7, 0(x7)	# 1628
	lw		x7, 24(x7)	# 410
	beq		x7, x12, beq.32282	# 1628
	add		x4, x4, x13	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x0, x31, 0	# 1629
beq.32282:
	jalr	x0, x1, 0	# 1630
beq.32226:
	jalr	x0, x1, 0	# 1597
beq.32225:
	jalr	x0, x1, 0	# 1630
beq.32110:
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
	beq		x15, x11, beq.32287	# 1637
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
	beq		x17, x11, beq_cont.32288	# 1597
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
	beq		x21, x14, beq.32291	# 1218
	beq		x21, x10, beq.32293	# 1220
	mul		x9, x30, x13	# 1192
	add		x9, x20, x9	# 1192
	flw		f5, 0(x9)	# 1192
	feq		f5, f1, feq.32295	# 120
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
	fle		f3, f1, fle.32297	# 121
	lw		x9, 24(x18)	# 410
	beq		x9, x13, beq.32299	# 1200
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
	jal		x0, beq_cont.32298	# 1200
beq.32299:
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
beq_cont.32298:
	addi	x9, x0, 1	# 1204
	jal		x0, beq_cont.32290	# 121
fle.32297:
	addi	x9, x0, 0	# 1205
	jal		x0, beq_cont.32290	# 120
feq.32295:
	addi	x9, x0, 0	# 1194
	jal		x0, beq_cont.32290	# 1220
beq.32293:
	mul		x9, x30, x13	# 1183
	add		x9, x20, x9	# 1183
	flw		f2, 0(x9)	# 1183
	fle		f1, f2, fle.32301	# 122
	mul		x9, x30, x12	# 1184
	add		x9, x19, x9	# 1184
	flw		f3, 0(x9)	# 1184
	fmul	f2, f2, f3	# 1184
	mul		x9, x30, x13	# 1184
	addi	x9, x9, 64336	# 1184
	fsw		f2, 0(x9)	# 1184
	addi	x9, x0, 1	# 1185
	jal		x0, beq_cont.32290	# 122
fle.32301:
	addi	x9, x0, 0	# 1186
	jal		x0, beq_cont.32290	# 1218
beq.32291:
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
	fle		f8, f1, fle.32303	# 124
	jal		x0, fle_cont.32302	# 124
fle.32303:
	fsub	f8, f0, f8	# 124
fle_cont.32302:
	lw		x21, 16(x18)	# 438
	mul		x22, x30, x14	# 443
	add		x21, x21, x22	# 443
	flw		f9, 0(x21)	# 443
	fle		f9, f8, fle.32305	# 125
	mul		x21, x30, x10	# 1104
	add		x21, x19, x21	# 1104
	flw		f8, 0(x21)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		f8, f1, fle.32307	# 124
	jal		x0, fle_cont.32306	# 124
fle.32307:
	fsub	f8, f0, f8	# 124
fle_cont.32306:
	lw		x21, 16(x18)	# 448
	mul		x22, x30, x10	# 453
	add		x21, x21, x22	# 453
	flw		f10, 0(x21)	# 453
	fle		f10, f8, fle.32309	# 125
	feq		f6, f1, feq.32311	# 120
	addi	x21, x0, 1	# 1105
	jal		x0, fle_cont.32304	# 120
feq.32311:
	addi	x21, x0, 0	# 1105
	jal		x0, fle_cont.32304	# 125
fle.32309:
	addi	x21, x0, 0	# 1106
	jal		x0, fle_cont.32304	# 125
fle.32305:
	addi	x21, x0, 0	# 1107
fle_cont.32304:
	beq		x21, x13, beq.32313	# 1102
	mul		x9, x30, x13	# 1109
	addi	x9, x9, 64336	# 1109
	fsw		f5, 0(x9)	# 1109
	addi	x9, x0, 1	# 1109
	jal		x0, beq_cont.32290	# 1102
beq.32313:
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
	fle		f10, f1, fle.32315	# 124
	jal		x0, fle_cont.32314	# 124
fle.32315:
	fsub	f10, f0, f10	# 124
fle_cont.32314:
	lw		x12, 16(x18)	# 428
	mul		x21, x30, x13	# 433
	add		x12, x12, x21	# 433
	flw		f11, 0(x12)	# 433
	fle		f11, f10, fle.32317	# 125
	mul		x12, x30, x10	# 1113
	add		x12, x19, x12	# 1113
	flw		f10, 0(x12)	# 1113
	fmul	f10, f5, f10	# 1113
	fadd	f10, f10, f4	# 1113
	fle		f10, f1, fle.32319	# 124
	jal		x0, fle_cont.32318	# 124
fle.32319:
	fsub	f10, f0, f10	# 124
fle_cont.32318:
	lw		x12, 16(x18)	# 448
	mul		x18, x30, x10	# 453
	add		x12, x12, x18	# 453
	flw		f12, 0(x12)	# 453
	fle		f12, f10, fle.32321	# 125
	feq		f6, f1, feq.32323	# 120
	addi	x12, x0, 1	# 1114
	jal		x0, fle_cont.32316	# 120
feq.32323:
	addi	x12, x0, 0	# 1114
	jal		x0, fle_cont.32316	# 125
fle.32321:
	addi	x12, x0, 0	# 1115
	jal		x0, fle_cont.32316	# 125
fle.32317:
	addi	x12, x0, 0	# 1116
fle_cont.32316:
	beq		x12, x13, beq.32325	# 1111
	mul		x9, x30, x13	# 1118
	addi	x9, x9, 64336	# 1118
	fsw		f5, 0(x9)	# 1118
	addi	x9, x0, 2	# 1118
	jal		x0, beq_cont.32290	# 1111
beq.32325:
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
	fle		f2, f1, fle.32327	# 124
	jal		x0, fle_cont.32326	# 124
fle.32327:
	fsub	f2, f0, f2	# 124
fle_cont.32326:
	fle		f11, f2, fle.32329	# 125
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		f2, f1, fle.32331	# 124
	jal		x0, fle_cont.32330	# 124
fle.32331:
	fsub	f2, f0, f2	# 124
fle_cont.32330:
	fle		f9, f2, fle.32333	# 125
	feq		f5, f1, feq.32335	# 120
	addi	x9, x0, 1	# 1123
	jal		x0, fle_cont.32328	# 120
feq.32335:
	addi	x9, x0, 0	# 1123
	jal		x0, fle_cont.32328	# 125
fle.32333:
	addi	x9, x0, 0	# 1124
	jal		x0, fle_cont.32328	# 125
fle.32329:
	addi	x9, x0, 0	# 1125
fle_cont.32328:
	beq		x9, x13, beq.32337	# 1120
	mul		x9, x30, x13	# 1127
	addi	x9, x9, 64336	# 1127
	fsw		f4, 0(x9)	# 1127
	addi	x9, x0, 3	# 1127
	jal		x0, beq_cont.32290	# 1120
beq.32337:
	addi	x9, x0, 0	# 1129
beq_cont.32290:
	beq		x9, x13, beq.32339	# 1600
	mul		x12, x30, x13	# 1604
	addi	x12, x12, 64336	# 1604
	flw		f2, 0(x12)	# 1604
	sw		x15, -32(x2)	# 125
	fle		f2, f1, fle_cont.32340	# 125
	mul		x12, x30, x13	# 1607
	addi	x12, x12, 64344	# 1607
	flw		f1, 0(x12)	# 1607
	fle		f1, f2, fle_cont.32340	# 125
	fadd	f1, f2, f19	# 1609
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
	fsw		f4, -40(x2)	# 1613
	sw		x10, -44(x2)	# 1613
	fsw		f3, -48(x2)	# 1613
	fsw		f2, -52(x2)	# 1613
	fsw		f1, -56(x2)	# 1613
	addi	x5, x15, 0	# 1613
	addi	x4, x13, 0	# 1613
	addi	x29, x8, 0	# 1613
	fadd	f1, f0, f2	# 1613
	fadd	f2, f0, f3	# 1613
	fadd	f3, f0, f4	# 1613
	sw		x1, -60(x2)	# 1613
	addi	x2, x2, -64	# 1613
	lw		x31, 0(x29)	# 1613
	jalr	x1, x31, 0	# 1613
	addi	x2, x2, 64	# 1613
	lw		x1, -60(x2)	# 1613
	lw		x5, -8(x2)	# 1613
	beq		x4, x5, fle_cont.32340	# 1613
	mul		x4, x30, x5	# 1615
	addi	x4, x4, 64344	# 1615
	flw		f1, -56(x2)	# 1615
	fsw		f1, 0(x4)	# 1615
	mul		x4, x30, x5	# 277
	addi	x4, x4, 64348	# 277
	flw		f1, -52(x2)	# 277
	fsw		f1, 0(x4)	# 277
	mul		x4, x30, x14	# 278
	addi	x4, x4, 64348	# 278
	flw		f1, -48(x2)	# 278
	fsw		f1, 0(x4)	# 278
	lw		x4, -44(x2)	# 279
	mul		x4, x30, x4	# 279
	addi	x4, x4, 64348	# 279
	flw		f1, -40(x2)	# 279
	fsw		f1, 0(x4)	# 279
	mul		x4, x30, x5	# 1617
	addi	x4, x4, 64360	# 1617
	sw		x17, 0(x4)	# 1617
	mul		x4, x30, x5	# 1618
	addi	x4, x4, 64340	# 1618
	lw		x6, -36(x2)	# 1618
	sw		x6, 0(x4)	# 1618
	jal		x0, fle_cont.32340	# 1613
	jal		x0, fle_cont.32340	# 125
	jal		x0, fle_cont.32340	# 125
fle_cont.32340:
	lw		x5, -32(x2)	# 1624
	lw		x6, -4(x2)	# 1624
	lw		x29, -12(x2)	# 1624
	addi	x4, x14, 0	# 1624
	sw		x1, -60(x2)	# 1624
	addi	x2, x2, -64	# 1624
	lw		x31, 0(x29)	# 1624
	jalr	x1, x31, 0	# 1624
	addi	x2, x2, 64	# 1624
	lw		x1, -60(x2)	# 1624
	jal		x0, beq_cont.32288	# 1600
beq.32339:
	mul		x8, x30, x17	# 1628
	addi	x8, x8, 63844	# 1628
	lw		x8, 0(x8)	# 1628
	lw		x8, 24(x8)	# 410
	beq		x8, x13, beq_cont.32288	# 1628
	addi	x5, x15, 0	# 1629
	addi	x4, x14, 0	# 1629
	addi	x29, x7, 0	# 1629
	sw		x1, -60(x2)	# 1629
	addi	x2, x2, -64	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x1, x31, 0	# 1629
	addi	x2, x2, 64	# 1629
	lw		x1, -60(x2)	# 1629
	jal		x0, beq_cont.32288	# 1628
	jal		x0, beq_cont.32288	# 1597
beq_cont.32288:
	lw		x4, -28(x2)	# 1640
	lw		x5, -24(x2)	# 1640
	add		x4, x4, x5	# 1640
	mul		x6, x30, x4	# 1636
	lw		x7, -20(x2)	# 1636
	add		x6, x7, x6	# 1636
	lw		x6, 0(x6)	# 1636
	lw		x8, -16(x2)	# 1637
	beq		x6, x8, beq.32348	# 1637
	mul		x6, x30, x6	# 1638
	addi	x6, x6, 64128	# 1638
	lw		x6, 0(x6)	# 1638
	lw		x8, -8(x2)	# 1639
	lw		x9, -4(x2)	# 1639
	lw		x29, -12(x2)	# 1639
	sw		x4, -60(x2)	# 1639
	addi	x5, x6, 0	# 1639
	addi	x4, x8, 0	# 1639
	addi	x6, x9, 0	# 1639
	sw		x1, -64(x2)	# 1639
	addi	x2, x2, -68	# 1639
	lw		x31, 0(x29)	# 1639
	jalr	x1, x31, 0	# 1639
	addi	x2, x2, 68	# 1639
	lw		x1, -64(x2)	# 1639
	lw		x4, -60(x2)	# 1640
	lw		x5, -24(x2)	# 1640
	add		x4, x4, x5	# 1640
	lw		x5, -20(x2)	# 1640
	lw		x6, -4(x2)	# 1640
	lw		x29, 0(x2)	# 1640
	lw		x31, 0(x29)	# 1640
	jalr	x0, x31, 0	# 1640
beq.32348:
	jalr	x0, x1, 0	# 1641
beq.32287:
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
	beq		x16, x11, beq.32351	# 1648
	addi	x17, x0, 99	# 1651
	sw		x6, 0(x2)	# 1651
	sw		x5, -4(x2)	# 1651
	sw		x29, -8(x2)	# 1651
	sw		x14, -12(x2)	# 1651
	sw		x4, -16(x2)	# 1651
	beq		x16, x17, beq.32353	# 1651
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
	beq		x19, x14, beq.32355	# 1218
	beq		x19, x10, beq.32357	# 1220
	mul		x9, x30, x13	# 1192
	add		x9, x16, x9	# 1192
	flw		f5, 0(x9)	# 1192
	feq		f5, f1, feq.32359	# 120
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
	fle		f3, f1, fle.32361	# 121
	lw		x9, 24(x17)	# 410
	beq		x9, x13, beq.32363	# 1200
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
	jal		x0, beq_cont.32362	# 1200
beq.32363:
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
beq_cont.32362:
	addi	x9, x0, 1	# 1204
	jal		x0, beq_cont.32354	# 121
fle.32361:
	addi	x9, x0, 0	# 1205
	jal		x0, beq_cont.32354	# 120
feq.32359:
	addi	x9, x0, 0	# 1194
	jal		x0, beq_cont.32354	# 1220
beq.32357:
	mul		x9, x30, x13	# 1183
	add		x9, x16, x9	# 1183
	flw		f2, 0(x9)	# 1183
	fle		f1, f2, fle.32365	# 122
	mul		x9, x30, x12	# 1184
	add		x9, x18, x9	# 1184
	flw		f1, 0(x9)	# 1184
	fmul	f1, f2, f1	# 1184
	mul		x9, x30, x13	# 1184
	addi	x9, x9, 64336	# 1184
	fsw		f1, 0(x9)	# 1184
	addi	x9, x0, 1	# 1185
	jal		x0, beq_cont.32354	# 122
fle.32365:
	addi	x9, x0, 0	# 1186
	jal		x0, beq_cont.32354	# 1218
beq.32355:
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
	fle		f8, f1, fle.32367	# 124
	jal		x0, fle_cont.32366	# 124
fle.32367:
	fsub	f8, f0, f8	# 124
fle_cont.32366:
	lw		x19, 16(x17)	# 438
	mul		x20, x30, x14	# 443
	add		x19, x19, x20	# 443
	flw		f9, 0(x19)	# 443
	fle		f9, f8, fle.32369	# 125
	mul		x19, x30, x10	# 1104
	add		x19, x18, x19	# 1104
	flw		f8, 0(x19)	# 1104
	fmul	f8, f5, f8	# 1104
	fadd	f8, f8, f4	# 1104
	fle		f8, f1, fle.32371	# 124
	jal		x0, fle_cont.32370	# 124
fle.32371:
	fsub	f8, f0, f8	# 124
fle_cont.32370:
	lw		x19, 16(x17)	# 448
	mul		x20, x30, x10	# 453
	add		x19, x19, x20	# 453
	flw		f9, 0(x19)	# 453
	fle		f9, f8, fle.32373	# 125
	feq		f6, f1, feq.32375	# 120
	addi	x19, x0, 1	# 1105
	jal		x0, fle_cont.32368	# 120
feq.32375:
	addi	x19, x0, 0	# 1105
	jal		x0, fle_cont.32368	# 125
fle.32373:
	addi	x19, x0, 0	# 1106
	jal		x0, fle_cont.32368	# 125
fle.32369:
	addi	x19, x0, 0	# 1107
fle_cont.32368:
	beq		x19, x13, beq.32377	# 1102
	mul		x9, x30, x13	# 1109
	addi	x9, x9, 64336	# 1109
	fsw		f5, 0(x9)	# 1109
	addi	x9, x0, 1	# 1109
	jal		x0, beq_cont.32354	# 1102
beq.32377:
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
	fle		f9, f1, fle.32379	# 124
	jal		x0, fle_cont.32378	# 124
fle.32379:
	fsub	f9, f0, f9	# 124
fle_cont.32378:
	lw		x12, 16(x17)	# 428
	mul		x19, x30, x13	# 433
	add		x12, x12, x19	# 433
	flw		f10, 0(x12)	# 433
	fle		f10, f9, fle.32381	# 125
	mul		x12, x30, x10	# 1113
	add		x12, x18, x12	# 1113
	flw		f9, 0(x12)	# 1113
	fmul	f9, f5, f9	# 1113
	fadd	f9, f9, f4	# 1113
	fle		f9, f1, fle.32383	# 124
	jal		x0, fle_cont.32382	# 124
fle.32383:
	fsub	f9, f0, f9	# 124
fle_cont.32382:
	lw		x12, 16(x17)	# 448
	mul		x18, x30, x10	# 453
	add		x12, x12, x18	# 453
	flw		f10, 0(x12)	# 453
	fle		f10, f9, fle.32385	# 125
	feq		f6, f1, feq.32387	# 120
	addi	x12, x0, 1	# 1114
	jal		x0, fle_cont.32380	# 120
feq.32387:
	addi	x12, x0, 0	# 1114
	jal		x0, fle_cont.32380	# 125
fle.32385:
	addi	x12, x0, 0	# 1115
	jal		x0, fle_cont.32380	# 125
fle.32381:
	addi	x12, x0, 0	# 1116
fle_cont.32380:
	beq		x12, x13, beq.32389	# 1111
	mul		x9, x30, x13	# 1118
	addi	x9, x9, 64336	# 1118
	fsw		f5, 0(x9)	# 1118
	addi	x9, x0, 2	# 1118
	jal		x0, beq_cont.32354	# 1111
beq.32389:
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
	fle		f2, f1, fle.32391	# 124
	jal		x0, fle_cont.32390	# 124
fle.32391:
	fsub	f2, f0, f2	# 124
fle_cont.32390:
	lw		x9, 16(x17)	# 428
	mul		x12, x30, x13	# 433
	add		x9, x9, x12	# 433
	flw		f6, 0(x9)	# 433
	fle		f6, f2, fle.32393	# 125
	fmul	f2, f4, f7	# 1122
	fadd	f2, f2, f3	# 1122
	fle		f2, f1, fle.32395	# 124
	jal		x0, fle_cont.32394	# 124
fle.32395:
	fsub	f2, f0, f2	# 124
fle_cont.32394:
	lw		x9, 16(x17)	# 438
	mul		x12, x30, x14	# 443
	add		x9, x9, x12	# 443
	flw		f3, 0(x9)	# 443
	fle		f3, f2, fle.32397	# 125
	feq		f5, f1, feq.32399	# 120
	addi	x9, x0, 1	# 1123
	jal		x0, fle_cont.32392	# 120
feq.32399:
	addi	x9, x0, 0	# 1123
	jal		x0, fle_cont.32392	# 125
fle.32397:
	addi	x9, x0, 0	# 1124
	jal		x0, fle_cont.32392	# 125
fle.32393:
	addi	x9, x0, 0	# 1125
fle_cont.32392:
	beq		x9, x13, beq.32401	# 1120
	mul		x9, x30, x13	# 1127
	addi	x9, x9, 64336	# 1127
	fsw		f4, 0(x9)	# 1127
	addi	x9, x0, 3	# 1127
	jal		x0, beq_cont.32354	# 1120
beq.32401:
	addi	x9, x0, 0	# 1129
beq_cont.32354:
	beq		x9, x13, beq_cont.32352	# 1657
	mul		x9, x30, x13	# 1658
	addi	x9, x9, 64336	# 1658
	flw		f1, 0(x9)	# 1658
	mul		x9, x30, x13	# 1659
	addi	x9, x9, 64344	# 1659
	flw		f2, 0(x9)	# 1659
	fle		f2, f1, beq_cont.32352	# 125
	mul		x9, x30, x14	# 1636
	add		x9, x15, x9	# 1636
	lw		x9, 0(x9)	# 1636
	beq		x9, x11, beq_cont.32352	# 1637
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
	jal		x0, beq_cont.32352	# 1637
	jal		x0, beq_cont.32352	# 125
	jal		x0, beq_cont.32352	# 1657
	jal		x0, beq_cont.32352	# 1651
beq.32353:
	mul		x9, x30, x14	# 1636
	add		x9, x15, x9	# 1636
	lw		x9, 0(x9)	# 1636
	beq		x9, x11, beq_cont.32352	# 1637
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
	jal		x0, beq_cont.32352	# 1637
beq_cont.32352:
	lw		x4, -16(x2)	# 1664
	lw		x5, -12(x2)	# 1664
	add		x4, x4, x5	# 1664
	lw		x5, -4(x2)	# 1664
	lw		x6, 0(x2)	# 1664
	lw		x29, -8(x2)	# 1664
	lw		x31, 0(x29)	# 1664
	jalr	x0, x31, 0	# 1664
beq.32351:
	jalr	x0, x1, 0	# 1649
trace_reflections.2883.18081:
	lw		x6, 28(x29)	# 1841
	lw		x7, 24(x29)	# 1841
	lw		x8, 20(x29)	# 1841
	lw		x9, 16(x29)	# 1841
	lw		x10, 12(x29)	# 1841
	flw		f3, 8(x29)	# 1841
	flw		f4, 4(x29)	# 1841
	ble		x9, x4, ble.32411	# 1841
	jalr	x0, x1, 0	# 1861
ble.32411:
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
	fle		f1, f21, fle.32414	# 125
	fle		f22, f1, fle.32416	# 125
	addi	x5, x0, 1	# 125
	jal		x0, fle_cont.32413	# 125
fle.32416:
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32413	# 125
fle.32414:
	addi	x5, x0, 0	# 1677
fle_cont.32413:
	beq		x5, x4, beq_cont.32417	# 1846
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
	beq		x5, x7, beq.32420	# 1848
	jal		x0, beq_cont.32417	# 1848
beq.32420:
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
	beq		x4, x5, beq.32422	# 1850
	jal		x0, beq_cont.32417	# 1850
beq.32422:
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
	fle		f1, f4, fle_cont.32423	# 121
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
	jal		x0, fle_cont.32423	# 121
fle_cont.32423:
	fle		f2, f4, beq_cont.32417	# 121
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
	jal		x0, beq_cont.32417	# 121
	jal		x0, beq_cont.32417	# 1846
beq_cont.32417:
	lw		x4, -4(x2)	# 1860
	lw		x5, -28(x2)	# 1860
	sub		x4, x4, x5	# 1860
	lw		x5, -16(x2)	# 1860
	flw		f1, -20(x2)	# 1860
	flw		f2, -8(x2)	# 1860
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
	ble		x4, x20, ble.32427	# 1869
	jalr	x0, x1, 0	# 1950
ble.32427:
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
	sw		x13, -28(x2)	# 1581
	sw		x9, -32(x2)	# 1581
	fsw		f4, -36(x2)	# 1581
	sw		x12, -40(x2)	# 1581
	fsw		f1, -44(x2)	# 1581
	fsw		f5, -48(x2)	# 1581
	sw		x15, -52(x2)	# 1581
	sw		x5, -56(x2)	# 1581
	sw		x16, -60(x2)	# 1581
	sw		x4, -64(x2)	# 1581
	sw		x18, -68(x2)	# 1581
	addi	x6, x5, 0	# 1581
	addi	x4, x18, 0	# 1581
	addi	x29, x8, 0	# 1581
	addi	x5, x22, 0	# 1581
	sw		x1, -72(x2)	# 1581
	addi	x2, x2, -76	# 1581
	lw		x31, 0(x29)	# 1581
	jalr	x1, x31, 0	# 1581
	addi	x2, x2, 76	# 1581
	lw		x1, -72(x2)	# 1581
	lw		x4, -68(x2)	# 1582
	mul		x5, x30, x4	# 1582
	addi	x5, x5, 64344	# 1582
	flw		f1, 0(x5)	# 1582
	fle		f1, f21, fle.32430	# 125
	fle		f22, f1, fle.32432	# 125
	addi	x5, x0, 1	# 125
	jal		x0, fle_cont.32429	# 125
fle.32432:
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32429	# 125
fle.32430:
	addi	x5, x0, 0	# 1586
fle_cont.32429:
	beq		x5, x4, beq.32433	# 1871
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
	flw		f2, -44(x2)	# 1876
	fmul	f1, f1, f2	# 1876
	lw		x8, 4(x6)	# 390
	beq		x8, x19, beq.32435	# 1730
	lw		x9, -52(x2)	# 1732
	beq		x8, x9, beq.32437	# 1732
	mul		x8, x30, x4	# 1707
	addi	x8, x8, 64348	# 1707
	flw		f3, 0(x8)	# 1707
	lw		x8, 20(x6)	# 468
	mul		x10, x30, x4	# 473
	add		x8, x8, x10	# 473
	flw		f4, 0(x8)	# 473
	fsub	f3, f3, f4	# 1707
	mul		x8, x30, x19	# 1708
	addi	x8, x8, 64348	# 1708
	flw		f4, 0(x8)	# 1708
	lw		x8, 20(x6)	# 478
	mul		x10, x30, x19	# 483
	add		x8, x8, x10	# 483
	flw		f5, 0(x8)	# 483
	fsub	f4, f4, f5	# 1708
	mul		x8, x30, x9	# 1709
	addi	x8, x8, 64348	# 1709
	flw		f5, 0(x8)	# 1709
	lw		x8, 20(x6)	# 488
	mul		x10, x30, x9	# 493
	add		x8, x8, x10	# 493
	flw		f6, 0(x8)	# 493
	fsub	f5, f5, f6	# 1709
	lw		x8, 16(x6)	# 428
	mul		x10, x30, x4	# 433
	add		x8, x8, x10	# 433
	flw		f6, 0(x8)	# 433
	fmul	f6, f3, f6	# 1711
	lw		x8, 16(x6)	# 438
	mul		x10, x30, x19	# 443
	add		x8, x8, x10	# 443
	flw		f7, 0(x8)	# 443
	fmul	f7, f4, f7	# 1712
	lw		x8, 16(x6)	# 448
	mul		x10, x30, x9	# 453
	add		x8, x8, x10	# 453
	flw		f8, 0(x8)	# 453
	fmul	f8, f5, f8	# 1713
	lw		x8, 12(x6)	# 419
	beq		x8, x4, beq.32439	# 1715
	lw		x8, 36(x6)	# 568
	mul		x10, x30, x9	# 573
	add		x8, x8, x10	# 573
	flw		f9, 0(x8)	# 573
	fmul	f9, f4, f9	# 1720
	lw		x8, 36(x6)	# 558
	mul		x10, x30, x19	# 563
	add		x8, x8, x10	# 563
	flw		f10, 0(x8)	# 563
	fmul	f10, f5, f10	# 1720
	fadd	f9, f9, f10	# 1720
	fmul	f9, f9, f26	# 126
	fadd	f6, f6, f9	# 1720
	mul		x8, x30, x4	# 1720
	addi	x8, x8, 64364	# 1720
	fsw		f6, 0(x8)	# 1720
	lw		x8, 36(x6)	# 568
	mul		x10, x30, x9	# 573
	add		x8, x8, x10	# 573
	flw		f6, 0(x8)	# 573
	fmul	f6, f3, f6	# 1721
	lw		x8, 36(x6)	# 548
	mul		x10, x30, x4	# 553
	add		x8, x8, x10	# 553
	flw		f9, 0(x8)	# 553
	fmul	f5, f5, f9	# 1721
	fadd	f5, f6, f5	# 1721
	fmul	f5, f5, f26	# 126
	fadd	f5, f7, f5	# 1721
	mul		x8, x30, x19	# 1721
	addi	x8, x8, 64364	# 1721
	fsw		f5, 0(x8)	# 1721
	lw		x8, 36(x6)	# 558
	mul		x10, x30, x19	# 563
	add		x8, x8, x10	# 563
	flw		f5, 0(x8)	# 563
	fmul	f3, f3, f5	# 1722
	lw		x8, 36(x6)	# 548
	mul		x10, x30, x4	# 553
	add		x8, x8, x10	# 553
	flw		f5, 0(x8)	# 553
	fmul	f4, f4, f5	# 1722
	fadd	f3, f3, f4	# 1722
	fmul	f3, f3, f26	# 126
	fadd	f3, f8, f3	# 1722
	mul		x8, x30, x9	# 1722
	addi	x8, x8, 64364	# 1722
	fsw		f3, 0(x8)	# 1722
	jal		x0, beq_cont.32438	# 1715
beq.32439:
	mul		x8, x30, x4	# 1716
	addi	x8, x8, 64364	# 1716
	fsw		f6, 0(x8)	# 1716
	mul		x8, x30, x19	# 1717
	addi	x8, x8, 64364	# 1717
	fsw		f7, 0(x8)	# 1717
	mul		x8, x30, x9	# 1718
	addi	x8, x8, 64364	# 1718
	fsw		f8, 0(x8)	# 1718
beq_cont.32438:
	lw		x8, 24(x6)	# 410
	mul		x10, x30, x4	# 320
	addi	x10, x10, 64364	# 320
	flw		f3, 0(x10)	# 320
	fmul	f3, f3, f3	# 127
	mul		x10, x30, x19	# 320
	addi	x10, x10, 64364	# 320
	flw		f4, 0(x10)	# 320
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 320
	mul		x10, x30, x9	# 320
	addi	x10, x10, 64364	# 320
	flw		f4, 0(x10)	# 320
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 320
	fsqrt	f3, f3	# 320
	flw		f4, -48(x2)	# 120
	feq		f3, f4, feq.32441	# 120
	beq		x8, x4, beq.32443	# 321
	lui		x8, %hi(l.26525)	# 321
	ori		x8, x0, %lo(l.26525)	# 321
	flw		f5, 0(x8)	# 321
	fdiv	f3, f5, f3	# 321
	jal		x0, feq_cont.32440	# 321
beq.32443:
	fdiv	f3, f16, f3	# 321
	jal		x0, feq_cont.32440	# 120
feq.32441:
	fadd	f3, f0, f16	# 321
feq_cont.32440:
	mul		x8, x30, x4	# 322
	addi	x8, x8, 64364	# 322
	flw		f5, 0(x8)	# 322
	fmul	f5, f5, f3	# 322
	mul		x8, x30, x4	# 322
	addi	x8, x8, 64364	# 322
	fsw		f5, 0(x8)	# 322
	mul		x8, x30, x19	# 323
	addi	x8, x8, 64364	# 323
	flw		f5, 0(x8)	# 323
	fmul	f5, f5, f3	# 323
	mul		x8, x30, x19	# 323
	addi	x8, x8, 64364	# 323
	fsw		f5, 0(x8)	# 323
	mul		x8, x30, x9	# 324
	addi	x8, x8, 64364	# 324
	flw		f5, 0(x8)	# 324
	fmul	f3, f5, f3	# 324
	mul		x8, x30, x9	# 324
	addi	x8, x8, 64364	# 324
	fsw		f3, 0(x8)	# 324
	jal		x0, beq_cont.32434	# 1732
beq.32437:
	lw		x8, 16(x6)	# 428
	mul		x10, x30, x4	# 433
	add		x8, x8, x10	# 433
	flw		f3, 0(x8)	# 433
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x4	# 1700
	addi	x8, x8, 64364	# 1700
	fsw		f3, 0(x8)	# 1700
	lw		x8, 16(x6)	# 438
	mul		x10, x30, x19	# 443
	add		x8, x8, x10	# 443
	flw		f3, 0(x8)	# 443
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x19	# 1701
	addi	x8, x8, 64364	# 1701
	fsw		f3, 0(x8)	# 1701
	lw		x8, 16(x6)	# 448
	mul		x10, x30, x9	# 453
	add		x8, x8, x10	# 453
	flw		f3, 0(x8)	# 453
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x9	# 1702
	addi	x8, x8, 64364	# 1702
	fsw		f3, 0(x8)	# 1702
	jal		x0, beq_cont.32434	# 1730
beq.32435:
	mul		x8, x30, x4	# 1691
	addi	x8, x8, 64340	# 1691
	lw		x8, 0(x8)	# 1691
	mul		x9, x30, x4	# 284
	addi	x9, x9, 64364	# 284
	flw		f3, -48(x2)	# 284
	fsw		f3, 0(x9)	# 284
	mul		x9, x30, x19	# 285
	addi	x9, x9, 64364	# 285
	fsw		f3, 0(x9)	# 285
	lw		x9, -52(x2)	# 286
	mul		x10, x30, x9	# 286
	addi	x10, x10, 64364	# 286
	fsw		f3, 0(x10)	# 286
	sub		x8, x8, x19	# 1694
	mul		x10, x30, x8	# 1694
	lw		x11, -56(x2)	# 1694
	add		x10, x11, x10	# 1694
	flw		f4, 0(x10)	# 1694
	feq		f4, f3, feq.32445	# 120
	fle		f4, f3, fle.32447	# 121
	fadd	f4, f0, f16	# 250
	jal		x0, feq_cont.32444	# 121
fle.32447:
	lui		x10, %hi(l.26525)	# 251
	ori		x10, x0, %lo(l.26525)	# 251
	flw		f4, 0(x10)	# 251
	jal		x0, feq_cont.32444	# 120
feq.32445:
	fadd	f4, f0, f3	# 249
feq_cont.32444:
	fsub	f4, f0, f4	# 123
	mul		x8, x30, x8	# 1694
	addi	x8, x8, 64364	# 1694
	fsw		f4, 0(x8)	# 1694
beq_cont.32434:
	mul		x8, x30, x4	# 296
	addi	x8, x8, 64348	# 296
	flw		f3, 0(x8)	# 296
	mul		x8, x30, x4	# 296
	addi	x8, x8, 64432	# 296
	fsw		f3, 0(x8)	# 296
	mul		x8, x30, x19	# 297
	addi	x8, x8, 64348	# 297
	flw		f3, 0(x8)	# 297
	mul		x8, x30, x19	# 297
	addi	x8, x8, 64432	# 297
	fsw		f3, 0(x8)	# 297
	mul		x8, x30, x9	# 298
	addi	x8, x8, 64348	# 298
	flw		f3, 0(x8)	# 298
	mul		x8, x30, x9	# 298
	addi	x8, x8, 64432	# 298
	fsw		f3, 0(x8)	# 298
	lw		x8, 0(x6)	# 380
	lw		x10, 32(x6)	# 518
	mul		x11, x30, x4	# 523
	add		x10, x10, x11	# 523
	flw		f3, 0(x10)	# 523
	mul		x10, x30, x4	# 1747
	addi	x10, x10, 64376	# 1747
	fsw		f3, 0(x10)	# 1747
	lw		x10, 32(x6)	# 528
	mul		x11, x30, x19	# 533
	add		x10, x10, x11	# 533
	flw		f3, 0(x10)	# 533
	mul		x10, x30, x19	# 1748
	addi	x10, x10, 64376	# 1748
	fsw		f3, 0(x10)	# 1748
	lw		x10, 32(x6)	# 538
	mul		x11, x30, x9	# 543
	add		x10, x10, x11	# 543
	flw		f3, 0(x10)	# 543
	mul		x10, x30, x9	# 1749
	addi	x10, x10, 64376	# 1749
	fsw		f3, 0(x10)	# 1749
	fsw		f1, -72(x2)	# 1750
	sw		x6, -76(x2)	# 1750
	sw		x5, -80(x2)	# 1750
	beq		x8, x19, beq.32449	# 1750
	beq		x8, x9, beq.32451	# 1768
	beq		x8, x17, beq.32453	# 1775
	beq		x8, x20, beq.32455	# 1786
	jal		x0, beq_cont.32448	# 1786
beq.32455:
	mul		x8, x30, x4	# 1788
	addi	x8, x8, 64348	# 1788
	flw		f3, 0(x8)	# 1788
	lw		x8, 20(x6)	# 468
	mul		x10, x30, x4	# 473
	add		x8, x8, x10	# 473
	flw		f4, 0(x8)	# 473
	fsub	f3, f3, f4	# 1788
	lw		x8, 16(x6)	# 428
	mul		x10, x30, x4	# 433
	add		x8, x8, x10	# 433
	flw		f4, 0(x8)	# 433
	fsqrt	f4, f4	# 1788
	fmul	f3, f3, f4	# 1788
	mul		x8, x30, x9	# 1789
	addi	x8, x8, 64348	# 1789
	flw		f4, 0(x8)	# 1789
	lw		x8, 20(x6)	# 488
	mul		x10, x30, x9	# 493
	add		x8, x8, x10	# 493
	flw		f5, 0(x8)	# 493
	fsub	f4, f4, f5	# 1789
	lw		x8, 16(x6)	# 448
	mul		x10, x30, x9	# 453
	add		x8, x8, x10	# 453
	flw		f5, 0(x8)	# 453
	fsqrt	f5, f5	# 1789
	fmul	f4, f4, f5	# 1789
	fmul	f5, f3, f3	# 127
	fmul	f6, f4, f4	# 127
	fadd	f5, f5, f6	# 1790
	flw		f6, -48(x2)	# 124
	fle		f3, f6, fle.32457	# 124
	fadd	f7, f0, f3	# 124
	jal		x0, fle_cont.32456	# 124
fle.32457:
	fsub	f7, f0, f3	# 124
fle_cont.32456:
	lui		x8, %hi(l.28004)	# 1792
	ori		x8, x0, %lo(l.28004)	# 1792
	flw		f8, 0(x8)	# 1792
	fsw		f5, -84(x2)	# 125
	fle		f8, f7, fle.32459	# 125
	lui		x8, %hi(l.28006)	# 1793
	ori		x8, x0, %lo(l.28006)	# 1793
	flw		f1, 0(x8)	# 1793
	jal		x0, fle_cont.32458	# 125
fle.32459:
	fdiv	f3, f4, f3	# 1795
	fle		f3, f6, fle.32461	# 124
	jal		x0, fle_cont.32460	# 124
fle.32461:
	fsub	f3, f0, f3	# 124
fle_cont.32460:
	lw		x29, -24(x2)	# 1797
	fadd	f1, f0, f3	# 1797
	sw		x1, -88(x2)	# 1797
	addi	x2, x2, -92	# 1797
	lw		x31, 0(x29)	# 1797
	jalr	x1, x31, 0	# 1797
	addi	x2, x2, 92	# 1797
	lw		x1, -88(x2)	# 1797
	lui		x4, %hi(l.28008)	# 1797
	ori		x4, x0, %lo(l.28008)	# 1797
	flw		f2, 0(x4)	# 1797
	fmul	f1, f1, f2	# 1797
	fdiv	f1, f1, f29	# 1797
fle_cont.32458:
	fsub	f3, f1, f26	# 166
	lw		x4, -68(x2)	# 153
	lw		x29, -40(x2)	# 153
	fsw		f26, -88(x2)	# 153
	fsw		f1, -92(x2)	# 153
	fadd	f1, f0, f3	# 153
	sw		x1, -96(x2)	# 153
	addi	x2, x2, -100	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 100	# 153
	lw		x1, -96(x2)	# 153
	sw		x1, -96(x2)	# 166
	addi	x2, x2, -100	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 100	# 166
	lw		x1, -96(x2)	# 166
	flw		f2, -92(x2)	# 1799
	fsub	f1, f2, f1	# 1799
	mul		x4, x30, x19	# 1801
	addi	x4, x4, 64348	# 1801
	flw		f2, 0(x4)	# 1801
	lw		x4, -76(x2)	# 478
	lw		x5, 20(x4)	# 478
	mul		x6, x30, x19	# 483
	add		x5, x5, x6	# 483
	flw		f3, 0(x5)	# 483
	fsub	f2, f2, f3	# 1801
	lw		x5, 16(x4)	# 438
	mul		x6, x30, x19	# 443
	add		x5, x5, x6	# 443
	flw		f3, 0(x5)	# 443
	fsqrt	f3, f3	# 1801
	fmul	f2, f2, f3	# 1801
	flw		f3, -84(x2)	# 124
	fle		f3, f6, fle.32463	# 124
	fadd	f4, f0, f3	# 124
	jal		x0, fle_cont.32462	# 124
fle.32463:
	fsub	f4, f0, f3	# 124
fle_cont.32462:
	fsw		f1, -96(x2)	# 125
	fle		f8, f4, fle.32465	# 125
	lui		x5, %hi(l.28006)	# 1804
	ori		x5, x0, %lo(l.28006)	# 1804
	flw		f1, 0(x5)	# 1804
	jal		x0, fle_cont.32464	# 125
fle.32465:
	fdiv	f2, f2, f3	# 1806
	fle		f2, f6, fle.32467	# 124
	jal		x0, fle_cont.32466	# 124
fle.32467:
	fsub	f2, f0, f2	# 124
fle_cont.32466:
	lw		x29, -24(x2)	# 1807
	fadd	f1, f0, f2	# 1807
	sw		x1, -100(x2)	# 1807
	addi	x2, x2, -104	# 1807
	lw		x31, 0(x29)	# 1807
	jalr	x1, x31, 0	# 1807
	addi	x2, x2, 104	# 1807
	lw		x1, -100(x2)	# 1807
	lui		x4, %hi(l.28008)	# 1807
	ori		x4, x0, %lo(l.28008)	# 1807
	flw		f2, 0(x4)	# 1807
	fmul	f1, f1, f2	# 1807
	fdiv	f1, f1, f29	# 1807
fle_cont.32464:
	flw		f2, -88(x2)	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -68(x2)	# 153
	lw		x29, -40(x2)	# 153
	fsw		f1, -100(x2)	# 153
	fadd	f1, f0, f3	# 153
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
	flw		f2, -100(x2)	# 1809
	fsub	f1, f2, f1	# 1809
	flw		f3, -88(x2)	# 1810
	flw		f4, -96(x2)	# 1810
	fsub	f4, f3, f4	# 1810
	fmul	f4, f4, f4	# 127
	fsub	f2, f30, f4	# 1810
	fsub	f1, f3, f1	# 1810
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1810
	fle		f6, f1, fle_cont.32468	# 122
	fadd	f1, f0, f6	# 1811
	jal		x0, fle_cont.32468	# 122
fle_cont.32468:
	flw		f2, -36(x2)	# 1812
	fmul	f1, f2, f1	# 1812
	lui		x4, %hi(l.28024)	# 1812
	ori		x4, x0, %lo(l.28024)	# 1812
	flw		f2, 0(x4)	# 1812
	fdiv	f1, f1, f2	# 1812
	mul		x4, x30, x9	# 1812
	addi	x4, x4, 64376	# 1812
	fsw		f1, 0(x4)	# 1812
	jal		x0, beq_cont.32448	# 1775
beq.32453:
	mul		x8, x30, x4	# 1778
	addi	x8, x8, 64348	# 1778
	flw		f3, 0(x8)	# 1778
	lw		x8, 20(x6)	# 468
	mul		x10, x30, x4	# 473
	add		x8, x8, x10	# 473
	flw		f4, 0(x8)	# 473
	fsub	f3, f3, f4	# 1778
	mul		x8, x30, x9	# 1779
	addi	x8, x8, 64348	# 1779
	flw		f4, 0(x8)	# 1779
	lw		x8, 20(x6)	# 488
	mul		x10, x30, x9	# 493
	add		x8, x8, x10	# 493
	flw		f5, 0(x8)	# 493
	fsub	f4, f4, f5	# 1779
	fmul	f3, f3, f3	# 127
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 1780
	fsqrt	f3, f3	# 1780
	lui		x8, %hi(l.28036)	# 1780
	ori		x8, x0, %lo(l.28036)	# 1780
	flw		f4, 0(x8)	# 1780
	fdiv	f3, f3, f4	# 1780
	fsub	f4, f3, f26	# 166
	lw		x29, -40(x2)	# 153
	fadd	f1, f0, f4	# 153
	sw		x1, -104(x2)	# 153
	addi	x2, x2, -108	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 108	# 153
	lw		x1, -104(x2)	# 153
	fsw		f3, -104(x2)	# 166
	sw		x1, -108(x2)	# 166
	addi	x2, x2, -112	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 112	# 166
	lw		x1, -108(x2)	# 166
	flw		f2, -104(x2)	# 1781
	fsub	f1, f2, f1	# 1781
	fmul	f1, f1, f29	# 1781
	lw		x29, -28(x2)	# 1782
	sw		x1, -108(x2)	# 1782
	addi	x2, x2, -112	# 1782
	lw		x31, 0(x29)	# 1782
	jalr	x1, x31, 0	# 1782
	addi	x2, x2, 112	# 1782
	lw		x1, -108(x2)	# 1782
	fmul	f1, f1, f1	# 127
	flw		f2, -36(x2)	# 1783
	fmul	f3, f1, f2	# 1783
	mul		x4, x30, x19	# 1783
	addi	x4, x4, 64376	# 1783
	fsw		f3, 0(x4)	# 1783
	fsub	f1, f16, f1	# 1784
	fmul	f1, f1, f2	# 1784
	mul		x4, x30, x9	# 1784
	addi	x4, x4, 64376	# 1784
	fsw		f1, 0(x4)	# 1784
	jal		x0, beq_cont.32448	# 1768
beq.32451:
	mul		x8, x30, x19	# 1771
	addi	x8, x8, 64348	# 1771
	flw		f3, 0(x8)	# 1771
	lui		x8, %hi(l.28047)	# 1771
	ori		x8, x0, %lo(l.28047)	# 1771
	flw		f4, 0(x8)	# 1771
	fmul	f3, f3, f4	# 1771
	lw		x29, -32(x2)	# 1771
	fadd	f1, f0, f3	# 1771
	sw		x1, -108(x2)	# 1771
	addi	x2, x2, -112	# 1771
	lw		x31, 0(x29)	# 1771
	jalr	x1, x31, 0	# 1771
	addi	x2, x2, 112	# 1771
	lw		x1, -108(x2)	# 1771
	fmul	f1, f1, f1	# 127
	flw		f2, -36(x2)	# 1772
	fmul	f3, f2, f1	# 1772
	lw		x4, -68(x2)	# 1772
	mul		x8, x30, x4	# 1772
	addi	x8, x8, 64376	# 1772
	fsw		f3, 0(x8)	# 1772
	fsub	f1, f16, f1	# 1773
	fmul	f1, f2, f1	# 1773
	mul		x8, x30, x19	# 1773
	addi	x8, x8, 64376	# 1773
	fsw		f1, 0(x8)	# 1773
	jal		x0, beq_cont.32448	# 1750
beq.32449:
	mul		x8, x30, x4	# 1753
	addi	x8, x8, 64348	# 1753
	flw		f3, 0(x8)	# 1753
	lw		x8, 20(x6)	# 468
	mul		x10, x30, x4	# 473
	add		x8, x8, x10	# 473
	flw		f4, 0(x8)	# 473
	fsub	f3, f3, f4	# 1753
	lui		x8, %hi(l.28058)	# 1755
	ori		x8, x0, %lo(l.28058)	# 1755
	flw		f4, 0(x8)	# 1755
	fmul	f5, f3, f4	# 1755
	fsub	f5, f5, f26	# 166
	lw		x29, -40(x2)	# 153
	fadd	f1, f0, f5	# 153
	sw		x1, -108(x2)	# 153
	addi	x2, x2, -112	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 112	# 153
	lw		x1, -108(x2)	# 153
	fsw		f3, -108(x2)	# 166
	sw		x1, -112(x2)	# 166
	addi	x2, x2, -116	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 116	# 166
	lw		x1, -112(x2)	# 166
	lui		x4, %hi(l.28061)	# 1755
	ori		x4, x0, %lo(l.28061)	# 1755
	flw		f2, 0(x4)	# 1755
	fmul	f1, f1, f2	# 1755
	flw		f3, -108(x2)	# 1756
	fsub	f1, f3, f1	# 1756
	lui		x4, %hi(l.28036)	# 1756
	ori		x4, x0, %lo(l.28036)	# 1756
	flw		f3, 0(x4)	# 1756
	mul		x4, x30, x9	# 1758
	addi	x4, x4, 64348	# 1758
	flw		f5, 0(x4)	# 1758
	lw		x4, -76(x2)	# 488
	lw		x5, 20(x4)	# 488
	mul		x6, x30, x9	# 493
	add		x5, x5, x6	# 493
	flw		f7, 0(x5)	# 493
	fsub	f5, f5, f7	# 1758
	fmul	f4, f5, f4	# 1760
	fsub	f4, f4, f26	# 166
	lw		x5, -68(x2)	# 153
	lw		x29, -40(x2)	# 153
	fsw		f1, -112(x2)	# 153
	fsw		f2, -116(x2)	# 153
	addi	x4, x5, 0	# 153
	fadd	f1, f0, f4	# 153
	sw		x1, -120(x2)	# 153
	addi	x2, x2, -124	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 124	# 153
	lw		x1, -120(x2)	# 153
	fsw		f3, -120(x2)	# 166
	sw		x1, -124(x2)	# 166
	addi	x2, x2, -128	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 128	# 166
	lw		x1, -124(x2)	# 166
	flw		f2, -116(x2)	# 1760
	fmul	f1, f1, f2	# 1760
	fsub	f1, f5, f1	# 1761
	flw		f2, -112(x2)	# 125
	flw		f3, -120(x2)	# 125
	fle		f3, f2, fle.32471	# 125
	fle		f3, f1, fle.32473	# 125
	flw		f1, -36(x2)	# 1765
	jal		x0, fle_cont.32470	# 125
fle.32473:
	flw		f1, -48(x2)	# 1765
	jal		x0, fle_cont.32470	# 125
fle.32471:
	fle		f3, f1, fle.32475	# 125
	flw		f1, -48(x2)	# 1766
	jal		x0, fle_cont.32470	# 125
fle.32475:
	flw		f1, -36(x2)	# 1766
fle_cont.32470:
	mul		x4, x30, x19	# 1763
	addi	x4, x4, 64376	# 1763
	fsw		f1, 0(x4)	# 1763
beq_cont.32448:
	lw		x4, -80(x2)	# 1883
	mul		x4, x4, x20	# 1883
	lw		x5, -68(x2)	# 1883
	mul		x6, x30, x5	# 1883
	addi	x6, x6, 64340	# 1883
	lw		x6, 0(x6)	# 1883
	add		x4, x4, x6	# 1883
	lw		x6, -64(x2)	# 1883
	mul		x8, x30, x6	# 1883
	add		x8, x21, x8	# 1883
	sw		x4, 0(x8)	# 1883
	lw		x4, -20(x2)	# 606
	lw		x8, 4(x4)	# 606
	mul		x10, x30, x6	# 1885
	add		x8, x8, x10	# 1885
	lw		x8, 0(x8)	# 1885
	mul		x10, x30, x5	# 296
	addi	x10, x10, 64348	# 296
	flw		f1, 0(x10)	# 296
	mul		x10, x30, x5	# 296
	add		x10, x8, x10	# 296
	fsw		f1, 0(x10)	# 296
	mul		x10, x30, x19	# 297
	addi	x10, x10, 64348	# 297
	flw		f1, 0(x10)	# 297
	mul		x10, x30, x19	# 297
	add		x10, x8, x10	# 297
	fsw		f1, 0(x10)	# 297
	mul		x10, x30, x9	# 298
	addi	x10, x10, 64348	# 298
	flw		f1, 0(x10)	# 298
	mul		x10, x30, x9	# 298
	add		x8, x8, x10	# 298
	fsw		f1, 0(x8)	# 298
	lw		x8, 12(x4)	# 621
	lw		x10, -76(x2)	# 498
	lw		x11, 28(x10)	# 498
	mul		x12, x30, x5	# 503
	add		x11, x11, x12	# 503
	flw		f1, 0(x11)	# 503
	fle		f26, f1, fle.32477	# 125
	mul		x11, x30, x6	# 1890
	add		x8, x8, x11	# 1890
	sw		x5, 0(x8)	# 1890
	jal		x0, fle_cont.32476	# 125
fle.32477:
	mul		x11, x30, x6	# 1892
	add		x8, x8, x11	# 1892
	sw		x19, 0(x8)	# 1892
	lw		x8, 16(x4)	# 628
	mul		x11, x30, x6	# 1894
	add		x11, x8, x11	# 1894
	lw		x11, 0(x11)	# 1894
	mul		x12, x30, x5	# 296
	addi	x12, x12, 64376	# 296
	flw		f1, 0(x12)	# 296
	mul		x12, x30, x5	# 296
	add		x12, x11, x12	# 296
	fsw		f1, 0(x12)	# 296
	mul		x12, x30, x19	# 297
	addi	x12, x12, 64376	# 297
	flw		f1, 0(x12)	# 297
	mul		x12, x30, x19	# 297
	add		x12, x11, x12	# 297
	fsw		f1, 0(x12)	# 297
	mul		x12, x30, x9	# 298
	addi	x12, x12, 64376	# 298
	flw		f1, 0(x12)	# 298
	mul		x12, x30, x9	# 298
	add		x11, x11, x12	# 298
	fsw		f1, 0(x11)	# 298
	mul		x11, x30, x6	# 1895
	add		x8, x8, x11	# 1895
	lw		x8, 0(x8)	# 1895
	lui		x11, %hi(l.28111)	# 1895
	ori		x11, x0, %lo(l.28111)	# 1895
	flw		f1, 0(x11)	# 1895
	flw		f2, -72(x2)	# 1895
	fmul	f1, f1, f2	# 1895
	mul		x11, x30, x5	# 362
	add		x11, x8, x11	# 362
	flw		f3, 0(x11)	# 362
	fmul	f3, f3, f1	# 362
	mul		x11, x30, x5	# 362
	add		x11, x8, x11	# 362
	fsw		f3, 0(x11)	# 362
	mul		x11, x30, x19	# 363
	add		x11, x8, x11	# 363
	flw		f3, 0(x11)	# 363
	fmul	f3, f3, f1	# 363
	mul		x11, x30, x19	# 363
	add		x11, x8, x11	# 363
	fsw		f3, 0(x11)	# 363
	mul		x11, x30, x9	# 364
	add		x11, x8, x11	# 364
	flw		f3, 0(x11)	# 364
	fmul	f1, f3, f1	# 364
	mul		x11, x30, x9	# 364
	add		x8, x8, x11	# 364
	fsw		f1, 0(x8)	# 364
	lw		x8, 28(x4)	# 665
	mul		x11, x30, x6	# 1897
	add		x8, x8, x11	# 1897
	lw		x8, 0(x8)	# 1897
	mul		x11, x30, x5	# 296
	addi	x11, x11, 64364	# 296
	flw		f1, 0(x11)	# 296
	mul		x11, x30, x5	# 296
	add		x11, x8, x11	# 296
	fsw		f1, 0(x11)	# 296
	mul		x11, x30, x19	# 297
	addi	x11, x11, 64364	# 297
	flw		f1, 0(x11)	# 297
	mul		x11, x30, x19	# 297
	add		x11, x8, x11	# 297
	fsw		f1, 0(x11)	# 297
	mul		x11, x30, x9	# 298
	addi	x11, x11, 64364	# 298
	flw		f1, 0(x11)	# 298
	mul		x11, x30, x9	# 298
	add		x8, x8, x11	# 298
	fsw		f1, 0(x8)	# 298
fle_cont.32476:
	lui		x8, %hi(l.28139)	# 1900
	ori		x8, x0, %lo(l.28139)	# 1900
	flw		f1, 0(x8)	# 1900
	mul		x8, x30, x5	# 329
	lw		x11, -56(x2)	# 329
	add		x8, x11, x8	# 329
	flw		f2, 0(x8)	# 329
	mul		x8, x30, x5	# 329
	addi	x8, x8, 64364	# 329
	flw		f3, 0(x8)	# 329
	fmul	f4, f2, f3	# 329
	mul		x8, x30, x19	# 329
	add		x8, x11, x8	# 329
	flw		f5, 0(x8)	# 329
	mul		x8, x30, x19	# 329
	addi	x8, x8, 64364	# 329
	flw		f6, 0(x8)	# 329
	fmul	f5, f5, f6	# 329
	fadd	f4, f4, f5	# 329
	mul		x8, x30, x9	# 329
	add		x8, x11, x8	# 329
	flw		f5, 0(x8)	# 329
	mul		x8, x30, x9	# 329
	addi	x8, x8, 64364	# 329
	flw		f6, 0(x8)	# 329
	fmul	f5, f5, f6	# 329
	fadd	f4, f4, f5	# 329
	fmul	f1, f1, f4	# 1900
	fmul	f3, f1, f3	# 339
	fadd	f2, f2, f3	# 339
	mul		x8, x30, x5	# 339
	add		x8, x11, x8	# 339
	fsw		f2, 0(x8)	# 339
	mul		x8, x30, x19	# 340
	add		x8, x11, x8	# 340
	flw		f2, 0(x8)	# 340
	mul		x8, x30, x19	# 340
	addi	x8, x8, 64364	# 340
	flw		f3, 0(x8)	# 340
	fmul	f3, f1, f3	# 340
	fadd	f2, f2, f3	# 340
	mul		x8, x30, x19	# 340
	add		x8, x11, x8	# 340
	fsw		f2, 0(x8)	# 340
	mul		x8, x30, x9	# 341
	add		x8, x11, x8	# 341
	flw		f2, 0(x8)	# 341
	mul		x8, x30, x9	# 341
	addi	x8, x8, 64364	# 341
	flw		f3, 0(x8)	# 341
	fmul	f1, f1, f3	# 341
	fadd	f1, f2, f1	# 341
	mul		x8, x30, x9	# 341
	add		x8, x11, x8	# 341
	fsw		f1, 0(x8)	# 341
	lw		x8, 28(x10)	# 508
	mul		x12, x30, x19	# 513
	add		x8, x8, x12	# 513
	flw		f1, 0(x8)	# 513
	flw		f2, -44(x2)	# 1904
	fmul	f1, f2, f1	# 1904
	mul		x8, x30, x5	# 1907
	addi	x8, x8, 64332	# 1907
	lw		x8, 0(x8)	# 1907
	lw		x29, -16(x2)	# 1907
	sw		x7, -124(x2)	# 1907
	fsw		f1, -128(x2)	# 1907
	addi	x4, x5, 0	# 1907
	addi	x5, x8, 0	# 1907
	sw		x1, -132(x2)	# 1907
	addi	x2, x2, -136	# 1907
	lw		x31, 0(x29)	# 1907
	jalr	x1, x31, 0	# 1907
	addi	x2, x2, 136	# 1907
	lw		x1, -132(x2)	# 1907
	lw		x5, -68(x2)	# 1907
	beq		x4, x5, beq.32479	# 1907
	jal		x0, beq_cont.32478	# 1907
beq.32479:
	mul		x4, x30, x5	# 329
	addi	x4, x4, 64364	# 329
	flw		f1, 0(x4)	# 329
	mul		x4, x30, x5	# 329
	addi	x4, x4, 64108	# 329
	flw		f2, 0(x4)	# 329
	fmul	f1, f1, f2	# 329
	mul		x4, x30, x19	# 329
	addi	x4, x4, 64364	# 329
	flw		f3, 0(x4)	# 329
	mul		x4, x30, x19	# 329
	addi	x4, x4, 64108	# 329
	flw		f4, 0(x4)	# 329
	fmul	f3, f3, f4	# 329
	fadd	f1, f1, f3	# 329
	lw		x4, -52(x2)	# 329
	mul		x6, x30, x4	# 329
	addi	x6, x6, 64364	# 329
	flw		f3, 0(x6)	# 329
	mul		x6, x30, x4	# 329
	addi	x6, x6, 64108	# 329
	flw		f5, 0(x6)	# 329
	fmul	f3, f3, f5	# 329
	fadd	f1, f1, f3	# 329
	fsub	f1, f0, f1	# 123
	flw		f3, -72(x2)	# 1908
	fmul	f1, f1, f3	# 1908
	mul		x6, x30, x5	# 329
	lw		x7, -56(x2)	# 329
	add		x6, x7, x6	# 329
	flw		f6, 0(x6)	# 329
	fmul	f2, f6, f2	# 329
	mul		x6, x30, x19	# 329
	add		x6, x7, x6	# 329
	flw		f6, 0(x6)	# 329
	fmul	f4, f6, f4	# 329
	fadd	f2, f2, f4	# 329
	mul		x6, x30, x4	# 329
	add		x6, x7, x6	# 329
	flw		f4, 0(x6)	# 329
	fmul	f4, f4, f5	# 329
	fadd	f2, f2, f4	# 329
	fsub	f2, f0, f2	# 123
	flw		f4, -48(x2)	# 121
	fle		f1, f4, fle_cont.32480	# 121
	mul		x6, x30, x5	# 339
	addi	x6, x6, 64400	# 339
	flw		f5, 0(x6)	# 339
	mul		x6, x30, x5	# 339
	addi	x6, x6, 64376	# 339
	flw		f6, 0(x6)	# 339
	fmul	f6, f1, f6	# 339
	fadd	f5, f5, f6	# 339
	mul		x6, x30, x5	# 339
	addi	x6, x6, 64400	# 339
	fsw		f5, 0(x6)	# 339
	mul		x6, x30, x19	# 340
	addi	x6, x6, 64400	# 340
	flw		f5, 0(x6)	# 340
	mul		x6, x30, x19	# 340
	addi	x6, x6, 64376	# 340
	flw		f6, 0(x6)	# 340
	fmul	f6, f1, f6	# 340
	fadd	f5, f5, f6	# 340
	mul		x6, x30, x19	# 340
	addi	x6, x6, 64400	# 340
	fsw		f5, 0(x6)	# 340
	mul		x6, x30, x4	# 341
	addi	x6, x6, 64400	# 341
	flw		f5, 0(x6)	# 341
	mul		x6, x30, x4	# 341
	addi	x6, x6, 64376	# 341
	flw		f6, 0(x6)	# 341
	fmul	f1, f1, f6	# 341
	fadd	f1, f5, f1	# 341
	mul		x6, x30, x4	# 341
	addi	x6, x6, 64400	# 341
	fsw		f1, 0(x6)	# 341
	jal		x0, fle_cont.32480	# 121
fle_cont.32480:
	fle		f2, f4, beq_cont.32478	# 121
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -128(x2)	# 1831
	fmul	f1, f1, f2	# 1831
	mul		x6, x30, x5	# 1832
	addi	x6, x6, 64400	# 1832
	flw		f4, 0(x6)	# 1832
	fadd	f4, f4, f1	# 1832
	mul		x6, x30, x5	# 1832
	addi	x6, x6, 64400	# 1832
	fsw		f4, 0(x6)	# 1832
	mul		x6, x30, x19	# 1833
	addi	x6, x6, 64400	# 1833
	flw		f4, 0(x6)	# 1833
	fadd	f4, f4, f1	# 1833
	mul		x6, x30, x19	# 1833
	addi	x6, x6, 64400	# 1833
	fsw		f4, 0(x6)	# 1833
	mul		x6, x30, x4	# 1834
	addi	x6, x6, 64400	# 1834
	flw		f4, 0(x6)	# 1834
	fadd	f1, f4, f1	# 1834
	mul		x6, x30, x4	# 1834
	addi	x6, x6, 64400	# 1834
	fsw		f1, 0(x6)	# 1834
	jal		x0, beq_cont.32478	# 121
beq_cont.32478:
	mul		x4, x30, x5	# 296
	addi	x4, x4, 64348	# 296
	flw		f1, 0(x4)	# 296
	mul		x4, x30, x5	# 296
	addi	x4, x4, 64444	# 296
	fsw		f1, 0(x4)	# 296
	mul		x4, x30, x19	# 297
	addi	x4, x4, 64348	# 297
	flw		f1, 0(x4)	# 297
	mul		x4, x30, x19	# 297
	addi	x4, x4, 64444	# 297
	fsw		f1, 0(x4)	# 297
	lw		x4, -52(x2)	# 298
	mul		x6, x30, x4	# 298
	addi	x6, x6, 64348	# 298
	flw		f1, 0(x6)	# 298
	mul		x6, x30, x4	# 298
	addi	x6, x6, 64444	# 298
	fsw		f1, 0(x6)	# 298
	mul		x6, x30, x5	# 1352
	addi	x6, x6, 63796	# 1352
	lw		x6, 0(x6)	# 1352
	sub		x6, x6, x19	# 1352
	addi	x7, x0, 64348	# 1352
	lw		x29, -12(x2)	# 1352
	addi	x5, x6, 0	# 1352
	addi	x4, x7, 0	# 1352
	sw		x1, -132(x2)	# 1352
	addi	x2, x2, -136	# 1352
	lw		x31, 0(x29)	# 1352
	jalr	x1, x31, 0	# 1352
	addi	x2, x2, 136	# 1352
	lw		x1, -132(x2)	# 1352
	lw		x4, -68(x2)	# 1915
	mul		x5, x30, x4	# 1915
	addi	x5, x5, 65532	# 1915
	lw		x5, 0(x5)	# 1915
	sub		x5, x5, x19	# 1915
	lw		x6, -56(x2)	# 1915
	flw		f1, -72(x2)	# 1915
	flw		f2, -128(x2)	# 1915
	lw		x29, -8(x2)	# 1915
	sw		x21, -132(x2)	# 1915
	sw		x19, -136(x2)	# 1915
	sw		x20, -140(x2)	# 1915
	addi	x4, x5, 0	# 1915
	addi	x5, x6, 0	# 1915
	sw		x1, -144(x2)	# 1915
	addi	x2, x2, -148	# 1915
	lw		x31, 0(x29)	# 1915
	jalr	x1, x31, 0	# 1915
	addi	x2, x2, 148	# 1915
	lw		x1, -144(x2)	# 1915
	lui		x4, %hi(l.28235)	# 1918
	ori		x4, x0, %lo(l.28235)	# 1918
	flw		f1, 0(x4)	# 1918
	flw		f2, -44(x2)	# 125
	fle		f2, f1, fle.32484	# 125
	lw		x4, -64(x2)	# 1920
	lw		x5, -140(x2)	# 1920
	ble		x5, x4, ble_cont.32485	# 1920
	lw		x5, -136(x2)	# 1921
	add		x6, x4, x5	# 1921
	mul		x6, x30, x6	# 1921
	lw		x7, -132(x2)	# 1921
	add		x6, x7, x6	# 1921
	lw		x7, -60(x2)	# 1921
	sw		x7, 0(x6)	# 1921
	jal		x0, ble_cont.32485	# 1920
ble_cont.32485:
	lw		x5, -52(x2)	# 1924
	lw		x6, -124(x2)	# 1924
	beq		x6, x5, beq.32487	# 1924
	jalr	x0, x1, 0	# 1927
beq.32487:
	lw		x5, -76(x2)	# 498
	lw		x5, 28(x5)	# 498
	lw		x6, -68(x2)	# 503
	mul		x7, x30, x6	# 503
	add		x5, x5, x7	# 503
	flw		f3, 0(x5)	# 503
	fsub	f1, f16, f3	# 1925
	fmul	f1, f2, f1	# 1925
	lw		x5, -136(x2)	# 1926
	add		x4, x4, x5	# 1926
	mul		x5, x30, x6	# 1926
	addi	x5, x5, 64344	# 1926
	flw		f2, 0(x5)	# 1926
	flw		f3, -4(x2)	# 1926
	fadd	f2, f3, f2	# 1926
	lw		x5, -56(x2)	# 1926
	lw		x6, -20(x2)	# 1926
	lw		x29, 0(x2)	# 1926
	lw		x31, 0(x29)	# 1926
	jalr	x0, x31, 0	# 1926
fle.32484:
	jalr	x0, x1, 0	# 1929
beq.32433:
	lw		x5, -64(x2)	# 1934
	mul		x6, x30, x5	# 1934
	add		x6, x21, x6	# 1934
	lw		x7, -60(x2)	# 1934
	sw		x7, 0(x6)	# 1934
	beq		x5, x4, beq.32490	# 1936
	mul		x5, x30, x4	# 329
	lw		x6, -56(x2)	# 329
	add		x5, x6, x5	# 329
	flw		f1, 0(x5)	# 329
	mul		x5, x30, x4	# 329
	addi	x5, x5, 64108	# 329
	flw		f2, 0(x5)	# 329
	fmul	f1, f1, f2	# 329
	mul		x5, x30, x19	# 329
	add		x5, x6, x5	# 329
	flw		f2, 0(x5)	# 329
	mul		x5, x30, x19	# 329
	addi	x5, x5, 64108	# 329
	flw		f3, 0(x5)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	lw		x5, -52(x2)	# 329
	mul		x7, x30, x5	# 329
	add		x6, x6, x7	# 329
	flw		f2, 0(x6)	# 329
	mul		x6, x30, x5	# 329
	addi	x6, x6, 64108	# 329
	flw		f3, 0(x6)	# 329
	fmul	f2, f2, f3	# 329
	fadd	f1, f1, f2	# 329
	fsub	f1, f0, f1	# 123
	flw		f2, -48(x2)	# 121
	fle		f1, f2, fle.32491	# 121
	fmul	f2, f1, f1	# 127
	fmul	f1, f2, f1	# 1942
	flw		f2, -44(x2)	# 1942
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
	mul		x4, x30, x19	# 1944
	addi	x4, x4, 64400	# 1944
	flw		f2, 0(x4)	# 1944
	fadd	f2, f2, f1	# 1944
	mul		x4, x30, x19	# 1944
	addi	x4, x4, 64400	# 1944
	fsw		f2, 0(x4)	# 1944
	mul		x4, x30, x5	# 1945
	addi	x4, x4, 64400	# 1945
	flw		f2, 0(x4)	# 1945
	fadd	f1, f2, f1	# 1945
	mul		x4, x30, x5	# 1945
	addi	x4, x4, 64400	# 1945
	fsw		f1, 0(x4)	# 1945
	jalr	x0, x1, 0	# 1945
fle.32491:
	jalr	x0, x1, 0	# 1947
beq.32490:
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
	ble		x16, x7, ble.32495	# 1981
	jalr	x0, x1, 0	# 1992
ble.32495:
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
	fle		f3, f4, fle.32498	# 122
	add		x18, x7, x17	# 1987
	mul		x18, x30, x18	# 1987
	add		x18, x4, x18	# 1987
	lw		x18, 0(x18)	# 1987
	fdiv	f4, f4, f25	# 1987
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
	fle		f1, f21, fle.32500	# 125
	fle		f22, f1, fle.32502	# 125
	addi	x5, x0, 1	# 125
	jal		x0, fle_cont.32499	# 125
fle.32502:
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32499	# 125
fle.32500:
	addi	x5, x0, 0	# 1677
fle_cont.32499:
	beq		x5, x4, fle_cont.32497	# 1964
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
	beq		x7, x8, beq.32506	# 1730
	lw		x6, -16(x2)	# 1732
	beq		x7, x6, beq.32508	# 1732
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
	beq		x7, x4, beq.32510	# 1715
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
	fmul	f8, f8, f26	# 126
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
	fmul	f3, f3, f26	# 126
	fadd	f3, f5, f3	# 1721
	mul		x7, x30, x8	# 1721
	addi	x7, x7, 64364	# 1721
	fsw		f3, 0(x7)	# 1721
	fmul	f1, f1, f9	# 1722
	fmul	f2, f2, f7	# 1722
	fadd	f1, f1, f2	# 1722
	fmul	f1, f1, f26	# 126
	fadd	f1, f6, f1	# 1722
	mul		x7, x30, x6	# 1722
	addi	x7, x7, 64364	# 1722
	fsw		f1, 0(x7)	# 1722
	jal		x0, beq_cont.32509	# 1715
beq.32510:
	mul		x7, x30, x4	# 1716
	addi	x7, x7, 64364	# 1716
	fsw		f4, 0(x7)	# 1716
	mul		x7, x30, x8	# 1717
	addi	x7, x7, 64364	# 1717
	fsw		f5, 0(x7)	# 1717
	mul		x7, x30, x6	# 1718
	addi	x7, x7, 64364	# 1718
	fsw		f6, 0(x7)	# 1718
beq_cont.32509:
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
	feq		f1, f2, feq.32512	# 120
	beq		x7, x4, beq.32514	# 321
	lui		x7, %hi(l.26525)	# 321
	ori		x7, x0, %lo(l.26525)	# 321
	flw		f3, 0(x7)	# 321
	fdiv	f1, f3, f1	# 321
	jal		x0, feq_cont.32511	# 321
beq.32514:
	fdiv	f1, f16, f1	# 321
	jal		x0, feq_cont.32511	# 120
feq.32512:
	fadd	f1, f0, f16	# 321
feq_cont.32511:
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
	jal		x0, beq_cont.32505	# 1732
beq.32508:
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
	jal		x0, beq_cont.32505	# 1730
beq.32506:
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
	feq		f2, f1, feq.32516	# 120
	fle		f2, f1, fle.32518	# 121
	fadd	f2, f0, f16	# 250
	jal		x0, feq_cont.32515	# 121
fle.32518:
	lui		x6, %hi(l.26525)	# 251
	ori		x6, x0, %lo(l.26525)	# 251
	flw		f2, 0(x6)	# 251
	jal		x0, feq_cont.32515	# 120
feq.32516:
	fadd	f2, f0, f1	# 249
feq_cont.32515:
	fsub	f2, f0, f2	# 123
	mul		x6, x30, x7	# 1694
	addi	x6, x6, 64364	# 1694
	fsw		f2, 0(x6)	# 1694
beq_cont.32505:
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
	beq		x6, x8, beq.32520	# 1750
	beq		x6, x9, beq.32522	# 1768
	lw		x7, -40(x2)	# 1775
	beq		x6, x7, beq.32524	# 1775
	addi	x7, x0, 4	# 1786
	beq		x6, x7, beq.32526	# 1786
	jal		x0, beq_cont.32519	# 1786
beq.32526:
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
	fle		f1, f4, fle.32528	# 124
	fadd	f5, f0, f1	# 124
	jal		x0, fle_cont.32527	# 124
fle.32528:
	fsub	f5, f0, f1	# 124
fle_cont.32527:
	lui		x6, %hi(l.28004)	# 1792
	ori		x6, x0, %lo(l.28004)	# 1792
	flw		f6, 0(x6)	# 1792
	fsw		f3, -76(x2)	# 125
	fle		f6, f5, fle.32530	# 125
	lui		x6, %hi(l.28006)	# 1793
	ori		x6, x0, %lo(l.28006)	# 1793
	flw		f1, 0(x6)	# 1793
	jal		x0, fle_cont.32529	# 125
fle.32530:
	fdiv	f1, f2, f1	# 1795
	fle		f1, f4, fle.32532	# 124
	jal		x0, fle_cont.32531	# 124
fle.32532:
	fsub	f1, f0, f1	# 124
fle_cont.32531:
	lw		x29, -32(x2)	# 1797
	sw		x1, -80(x2)	# 1797
	addi	x2, x2, -84	# 1797
	lw		x31, 0(x29)	# 1797
	jalr	x1, x31, 0	# 1797
	addi	x2, x2, 84	# 1797
	lw		x1, -80(x2)	# 1797
	lui		x4, %hi(l.28008)	# 1797
	ori		x4, x0, %lo(l.28008)	# 1797
	flw		f2, 0(x4)	# 1797
	fmul	f1, f1, f2	# 1797
	fdiv	f1, f1, f29	# 1797
fle_cont.32529:
	fsub	f3, f1, f26	# 166
	lw		x4, -68(x2)	# 153
	lw		x29, -52(x2)	# 153
	fsw		f26, -80(x2)	# 153
	fsw		f1, -84(x2)	# 153
	fadd	f1, f0, f3	# 153
	sw		x1, -88(x2)	# 153
	addi	x2, x2, -92	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 92	# 153
	lw		x1, -88(x2)	# 153
	sw		x1, -88(x2)	# 166
	addi	x2, x2, -92	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 92	# 166
	lw		x1, -88(x2)	# 166
	flw		f2, -84(x2)	# 1799
	fsub	f1, f2, f1	# 1799
	mul		x4, x30, x8	# 1801
	addi	x4, x4, 64348	# 1801
	flw		f2, 0(x4)	# 1801
	lw		x4, -72(x2)	# 478
	lw		x5, 20(x4)	# 478
	mul		x6, x30, x8	# 483
	add		x5, x5, x6	# 483
	flw		f3, 0(x5)	# 483
	fsub	f2, f2, f3	# 1801
	lw		x5, 16(x4)	# 438
	mul		x6, x30, x8	# 443
	add		x5, x5, x6	# 443
	flw		f3, 0(x5)	# 443
	fsqrt	f3, f3	# 1801
	fmul	f2, f2, f3	# 1801
	flw		f3, -56(x2)	# 124
	flw		f4, -76(x2)	# 124
	fle		f4, f3, fle.32534	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.32533	# 124
fle.32534:
	fsub	f5, f0, f4	# 124
fle_cont.32533:
	fsw		f1, -88(x2)	# 125
	fle		f6, f5, fle.32536	# 125
	lui		x5, %hi(l.28006)	# 1804
	ori		x5, x0, %lo(l.28006)	# 1804
	flw		f1, 0(x5)	# 1804
	jal		x0, fle_cont.32535	# 125
fle.32536:
	fdiv	f2, f2, f4	# 1806
	fle		f2, f3, fle.32538	# 124
	jal		x0, fle_cont.32537	# 124
fle.32538:
	fsub	f2, f0, f2	# 124
fle_cont.32537:
	lw		x29, -32(x2)	# 1807
	fadd	f1, f0, f2	# 1807
	sw		x1, -92(x2)	# 1807
	addi	x2, x2, -96	# 1807
	lw		x31, 0(x29)	# 1807
	jalr	x1, x31, 0	# 1807
	addi	x2, x2, 96	# 1807
	lw		x1, -92(x2)	# 1807
	lui		x4, %hi(l.28008)	# 1807
	ori		x4, x0, %lo(l.28008)	# 1807
	flw		f2, 0(x4)	# 1807
	fmul	f1, f1, f2	# 1807
	fdiv	f1, f1, f29	# 1807
fle_cont.32535:
	flw		f2, -80(x2)	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -68(x2)	# 153
	lw		x29, -52(x2)	# 153
	fsw		f1, -92(x2)	# 153
	fadd	f1, f0, f3	# 153
	sw		x1, -96(x2)	# 153
	addi	x2, x2, -100	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 100	# 153
	lw		x1, -96(x2)	# 153
	sw		x1, -96(x2)	# 166
	addi	x2, x2, -100	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 100	# 166
	lw		x1, -96(x2)	# 166
	flw		f2, -92(x2)	# 1809
	fsub	f1, f2, f1	# 1809
	flw		f3, -80(x2)	# 1810
	flw		f4, -88(x2)	# 1810
	fsub	f4, f3, f4	# 1810
	fmul	f4, f4, f4	# 127
	fsub	f2, f30, f4	# 1810
	fsub	f1, f3, f1	# 1810
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1810
	flw		f2, -56(x2)	# 122
	fle		f2, f1, fle_cont.32539	# 122
	fadd	f1, f0, f2	# 1811
	jal		x0, fle_cont.32539	# 122
fle_cont.32539:
	flw		f3, -48(x2)	# 1812
	fmul	f1, f3, f1	# 1812
	lui		x4, %hi(l.28024)	# 1812
	ori		x4, x0, %lo(l.28024)	# 1812
	flw		f3, 0(x4)	# 1812
	fdiv	f1, f1, f3	# 1812
	mul		x4, x30, x9	# 1812
	addi	x4, x4, 64376	# 1812
	fsw		f1, 0(x4)	# 1812
	jal		x0, beq_cont.32519	# 1775
beq.32524:
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
	lui		x6, %hi(l.28036)	# 1780
	ori		x6, x0, %lo(l.28036)	# 1780
	flw		f2, 0(x6)	# 1780
	fdiv	f1, f1, f2	# 1780
	fsub	f2, f1, f26	# 166
	lw		x29, -52(x2)	# 153
	fsw		f1, -96(x2)	# 153
	fadd	f1, f0, f2	# 153
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
	flw		f2, -96(x2)	# 1781
	fsub	f1, f2, f1	# 1781
	fmul	f1, f1, f29	# 1781
	lw		x29, -36(x2)	# 1782
	sw		x1, -100(x2)	# 1782
	addi	x2, x2, -104	# 1782
	lw		x31, 0(x29)	# 1782
	jalr	x1, x31, 0	# 1782
	addi	x2, x2, 104	# 1782
	lw		x1, -100(x2)	# 1782
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1783
	fmul	f3, f1, f2	# 1783
	mul		x4, x30, x8	# 1783
	addi	x4, x4, 64376	# 1783
	fsw		f3, 0(x4)	# 1783
	fsub	f1, f16, f1	# 1784
	fmul	f1, f1, f2	# 1784
	mul		x4, x30, x9	# 1784
	addi	x4, x4, 64376	# 1784
	fsw		f1, 0(x4)	# 1784
	jal		x0, beq_cont.32519	# 1768
beq.32522:
	mul		x6, x30, x8	# 1771
	addi	x6, x6, 64348	# 1771
	flw		f1, 0(x6)	# 1771
	lui		x6, %hi(l.28047)	# 1771
	ori		x6, x0, %lo(l.28047)	# 1771
	flw		f2, 0(x6)	# 1771
	fmul	f1, f1, f2	# 1771
	lw		x29, -44(x2)	# 1771
	sw		x1, -100(x2)	# 1771
	addi	x2, x2, -104	# 1771
	lw		x31, 0(x29)	# 1771
	jalr	x1, x31, 0	# 1771
	addi	x2, x2, 104	# 1771
	lw		x1, -100(x2)	# 1771
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1772
	fmul	f3, f2, f1	# 1772
	lw		x4, -68(x2)	# 1772
	mul		x6, x30, x4	# 1772
	addi	x6, x6, 64376	# 1772
	fsw		f3, 0(x6)	# 1772
	fsub	f1, f16, f1	# 1773
	fmul	f1, f2, f1	# 1773
	mul		x6, x30, x8	# 1773
	addi	x6, x6, 64376	# 1773
	fsw		f1, 0(x6)	# 1773
	jal		x0, beq_cont.32519	# 1750
beq.32520:
	mul		x6, x30, x4	# 1753
	addi	x6, x6, 64348	# 1753
	flw		f1, 0(x6)	# 1753
	lw		x6, 20(x5)	# 468
	mul		x7, x30, x4	# 473
	add		x6, x6, x7	# 473
	flw		f2, 0(x6)	# 473
	fsub	f1, f1, f2	# 1753
	lui		x6, %hi(l.28058)	# 1755
	ori		x6, x0, %lo(l.28058)	# 1755
	flw		f2, 0(x6)	# 1755
	fmul	f3, f1, f2	# 1755
	fsub	f3, f3, f26	# 166
	lw		x29, -52(x2)	# 153
	fsw		f2, -100(x2)	# 153
	fsw		f1, -104(x2)	# 153
	fadd	f1, f0, f3	# 153
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
	lui		x4, %hi(l.28061)	# 1755
	ori		x4, x0, %lo(l.28061)	# 1755
	flw		f2, 0(x4)	# 1755
	fmul	f1, f1, f2	# 1755
	flw		f3, -104(x2)	# 1756
	fsub	f1, f3, f1	# 1756
	lui		x4, %hi(l.28036)	# 1756
	ori		x4, x0, %lo(l.28036)	# 1756
	flw		f3, 0(x4)	# 1756
	mul		x4, x30, x9	# 1758
	addi	x4, x4, 64348	# 1758
	flw		f5, 0(x4)	# 1758
	lw		x4, -72(x2)	# 488
	lw		x5, 20(x4)	# 488
	mul		x6, x30, x9	# 493
	add		x5, x5, x6	# 493
	flw		f6, 0(x5)	# 493
	fsub	f5, f5, f6	# 1758
	flw		f6, -100(x2)	# 1760
	fmul	f6, f5, f6	# 1760
	fsub	f4, f6, f26	# 166
	lw		x5, -68(x2)	# 153
	lw		x29, -52(x2)	# 153
	fsw		f1, -108(x2)	# 153
	fsw		f2, -112(x2)	# 153
	addi	x4, x5, 0	# 153
	fadd	f1, f0, f4	# 153
	sw		x1, -116(x2)	# 153
	addi	x2, x2, -120	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 120	# 153
	lw		x1, -116(x2)	# 153
	fsw		f3, -116(x2)	# 166
	sw		x1, -120(x2)	# 166
	addi	x2, x2, -124	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 124	# 166
	lw		x1, -120(x2)	# 166
	flw		f2, -112(x2)	# 1760
	fmul	f1, f1, f2	# 1760
	fsub	f1, f5, f1	# 1761
	flw		f2, -108(x2)	# 125
	flw		f3, -116(x2)	# 125
	fle		f3, f2, fle.32542	# 125
	fle		f3, f1, fle.32544	# 125
	flw		f1, -48(x2)	# 1765
	jal		x0, fle_cont.32541	# 125
fle.32544:
	flw		f1, -56(x2)	# 1765
	jal		x0, fle_cont.32541	# 125
fle.32542:
	fle		f3, f1, fle.32546	# 125
	flw		f1, -56(x2)	# 1766
	jal		x0, fle_cont.32541	# 125
fle.32546:
	flw		f1, -48(x2)	# 1766
fle_cont.32541:
	mul		x4, x30, x8	# 1763
	addi	x4, x4, 64376	# 1763
	fsw		f1, 0(x4)	# 1763
beq_cont.32519:
	lw		x4, -68(x2)	# 1970
	mul		x5, x30, x4	# 1970
	addi	x5, x5, 64332	# 1970
	lw		x5, 0(x5)	# 1970
	lw		x29, -28(x2)	# 1970
	sw		x1, -120(x2)	# 1970
	addi	x2, x2, -124	# 1970
	lw		x31, 0(x29)	# 1970
	jalr	x1, x31, 0	# 1970
	addi	x2, x2, 124	# 1970
	lw		x1, -120(x2)	# 1970
	lw		x5, -68(x2)	# 1970
	beq		x4, x5, beq.32548	# 1970
	jal		x0, fle_cont.32497	# 1970
beq.32548:
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
	fle		f1, f2, fle.32550	# 121
	jal		x0, fle_cont.32549	# 121
fle.32550:
	fadd	f1, f0, f2	# 1972
fle_cont.32549:
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
	jal		x0, fle_cont.32497	# 1964
	jal		x0, fle_cont.32497	# 122
fle.32498:
	fdiv	f4, f4, f24	# 1989
	mul		x19, x30, x16	# 1671
	addi	x19, x19, 64344	# 1671
	fsw		f1, 0(x19)	# 1671
	mul		x19, x30, x16	# 1672
	addi	x19, x19, 64332	# 1672
	lw		x19, 0(x19)	# 1672
	fsw		f4, -120(x2)	# 1672
	sw		x10, -28(x2)	# 1672
	sw		x13, -32(x2)	# 1672
	sw		x12, -36(x2)	# 1672
	sw		x15, -40(x2)	# 1672
	sw		x9, -44(x2)	# 1672
	fsw		f2, -48(x2)	# 1672
	sw		x11, -52(x2)	# 1672
	fsw		f3, -56(x2)	# 1672
	sw		x17, -60(x2)	# 1672
	sw		x18, -124(x2)	# 1672
	sw		x16, -68(x2)	# 1672
	addi	x6, x18, 0	# 1672
	addi	x5, x19, 0	# 1672
	addi	x4, x16, 0	# 1672
	addi	x29, x8, 0	# 1672
	sw		x1, -128(x2)	# 1672
	addi	x2, x2, -132	# 1672
	lw		x31, 0(x29)	# 1672
	jalr	x1, x31, 0	# 1672
	addi	x2, x2, 132	# 1672
	lw		x1, -128(x2)	# 1672
	lw		x4, -68(x2)	# 1673
	mul		x5, x30, x4	# 1673
	addi	x5, x5, 64344	# 1673
	flw		f1, 0(x5)	# 1673
	fle		f1, f21, fle.32552	# 125
	fle		f22, f1, fle.32554	# 125
	addi	x5, x0, 1	# 125
	jal		x0, fle_cont.32551	# 125
fle.32554:
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32551	# 125
fle.32552:
	addi	x5, x0, 0	# 1677
fle_cont.32551:
	beq		x5, x4, fle_cont.32497	# 1964
	mul		x5, x30, x4	# 1965
	addi	x5, x5, 64360	# 1965
	lw		x5, 0(x5)	# 1965
	mul		x5, x30, x5	# 1965
	addi	x5, x5, 63844	# 1965
	lw		x5, 0(x5)	# 1965
	lw		x6, -124(x2)	# 676
	lw		x6, 0(x6)	# 676
	lw		x7, 4(x5)	# 390
	lw		x8, -60(x2)	# 1730
	beq		x7, x8, beq.32558	# 1730
	lw		x6, -16(x2)	# 1732
	beq		x7, x6, beq.32560	# 1732
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
	beq		x7, x4, beq.32562	# 1715
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
	fmul	f8, f8, f26	# 126
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
	fmul	f3, f3, f26	# 126
	fadd	f3, f5, f3	# 1721
	mul		x7, x30, x8	# 1721
	addi	x7, x7, 64364	# 1721
	fsw		f3, 0(x7)	# 1721
	fmul	f1, f1, f9	# 1722
	fmul	f2, f2, f7	# 1722
	fadd	f1, f1, f2	# 1722
	fmul	f1, f1, f26	# 126
	fadd	f1, f6, f1	# 1722
	mul		x7, x30, x6	# 1722
	addi	x7, x7, 64364	# 1722
	fsw		f1, 0(x7)	# 1722
	jal		x0, beq_cont.32561	# 1715
beq.32562:
	mul		x7, x30, x4	# 1716
	addi	x7, x7, 64364	# 1716
	fsw		f4, 0(x7)	# 1716
	mul		x7, x30, x8	# 1717
	addi	x7, x7, 64364	# 1717
	fsw		f5, 0(x7)	# 1717
	mul		x7, x30, x6	# 1718
	addi	x7, x7, 64364	# 1718
	fsw		f6, 0(x7)	# 1718
beq_cont.32561:
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
	feq		f1, f2, feq.32564	# 120
	beq		x7, x4, beq.32566	# 321
	lui		x7, %hi(l.26525)	# 321
	ori		x7, x0, %lo(l.26525)	# 321
	flw		f3, 0(x7)	# 321
	fdiv	f1, f3, f1	# 321
	jal		x0, feq_cont.32563	# 321
beq.32566:
	fdiv	f1, f16, f1	# 321
	jal		x0, feq_cont.32563	# 120
feq.32564:
	fadd	f1, f0, f16	# 321
feq_cont.32563:
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
	jal		x0, beq_cont.32557	# 1732
beq.32560:
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
	jal		x0, beq_cont.32557	# 1730
beq.32558:
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
	feq		f2, f1, feq.32568	# 120
	fle		f2, f1, fle.32570	# 121
	fadd	f2, f0, f16	# 250
	jal		x0, feq_cont.32567	# 121
fle.32570:
	lui		x6, %hi(l.26525)	# 251
	ori		x6, x0, %lo(l.26525)	# 251
	flw		f2, 0(x6)	# 251
	jal		x0, feq_cont.32567	# 120
feq.32568:
	fadd	f2, f0, f1	# 249
feq_cont.32567:
	fsub	f2, f0, f2	# 123
	mul		x6, x30, x7	# 1694
	addi	x6, x6, 64364	# 1694
	fsw		f2, 0(x6)	# 1694
beq_cont.32557:
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
	sw		x5, -128(x2)	# 1750
	beq		x6, x8, beq.32572	# 1750
	beq		x6, x9, beq.32574	# 1768
	lw		x7, -40(x2)	# 1775
	beq		x6, x7, beq.32576	# 1775
	addi	x7, x0, 4	# 1786
	beq		x6, x7, beq.32578	# 1786
	jal		x0, beq_cont.32571	# 1786
beq.32578:
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
	fle		f1, f4, fle.32580	# 124
	fadd	f5, f0, f1	# 124
	jal		x0, fle_cont.32579	# 124
fle.32580:
	fsub	f5, f0, f1	# 124
fle_cont.32579:
	lui		x6, %hi(l.28004)	# 1792
	ori		x6, x0, %lo(l.28004)	# 1792
	flw		f6, 0(x6)	# 1792
	fsw		f3, -132(x2)	# 125
	fle		f6, f5, fle.32582	# 125
	lui		x6, %hi(l.28006)	# 1793
	ori		x6, x0, %lo(l.28006)	# 1793
	flw		f1, 0(x6)	# 1793
	jal		x0, fle_cont.32581	# 125
fle.32582:
	fdiv	f1, f2, f1	# 1795
	fle		f1, f4, fle.32584	# 124
	jal		x0, fle_cont.32583	# 124
fle.32584:
	fsub	f1, f0, f1	# 124
fle_cont.32583:
	lw		x29, -32(x2)	# 1797
	sw		x1, -136(x2)	# 1797
	addi	x2, x2, -140	# 1797
	lw		x31, 0(x29)	# 1797
	jalr	x1, x31, 0	# 1797
	addi	x2, x2, 140	# 1797
	lw		x1, -136(x2)	# 1797
	lui		x4, %hi(l.28008)	# 1797
	ori		x4, x0, %lo(l.28008)	# 1797
	flw		f2, 0(x4)	# 1797
	fmul	f1, f1, f2	# 1797
	fdiv	f1, f1, f29	# 1797
fle_cont.32581:
	fsub	f3, f1, f26	# 166
	lw		x4, -68(x2)	# 153
	lw		x29, -52(x2)	# 153
	fsw		f26, -136(x2)	# 153
	fsw		f1, -140(x2)	# 153
	fadd	f1, f0, f3	# 153
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
	flw		f2, -140(x2)	# 1799
	fsub	f1, f2, f1	# 1799
	mul		x4, x30, x8	# 1801
	addi	x4, x4, 64348	# 1801
	flw		f2, 0(x4)	# 1801
	lw		x4, -128(x2)	# 478
	lw		x5, 20(x4)	# 478
	mul		x6, x30, x8	# 483
	add		x5, x5, x6	# 483
	flw		f3, 0(x5)	# 483
	fsub	f2, f2, f3	# 1801
	lw		x5, 16(x4)	# 438
	mul		x6, x30, x8	# 443
	add		x5, x5, x6	# 443
	flw		f3, 0(x5)	# 443
	fsqrt	f3, f3	# 1801
	fmul	f2, f2, f3	# 1801
	flw		f3, -56(x2)	# 124
	flw		f4, -132(x2)	# 124
	fle		f4, f3, fle.32586	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.32585	# 124
fle.32586:
	fsub	f5, f0, f4	# 124
fle_cont.32585:
	fsw		f1, -144(x2)	# 125
	fle		f6, f5, fle.32588	# 125
	lui		x5, %hi(l.28006)	# 1804
	ori		x5, x0, %lo(l.28006)	# 1804
	flw		f1, 0(x5)	# 1804
	jal		x0, fle_cont.32587	# 125
fle.32588:
	fdiv	f2, f2, f4	# 1806
	fle		f2, f3, fle.32590	# 124
	jal		x0, fle_cont.32589	# 124
fle.32590:
	fsub	f2, f0, f2	# 124
fle_cont.32589:
	lw		x29, -32(x2)	# 1807
	fadd	f1, f0, f2	# 1807
	sw		x1, -148(x2)	# 1807
	addi	x2, x2, -152	# 1807
	lw		x31, 0(x29)	# 1807
	jalr	x1, x31, 0	# 1807
	addi	x2, x2, 152	# 1807
	lw		x1, -148(x2)	# 1807
	lui		x4, %hi(l.28008)	# 1807
	ori		x4, x0, %lo(l.28008)	# 1807
	flw		f2, 0(x4)	# 1807
	fmul	f1, f1, f2	# 1807
	fdiv	f1, f1, f29	# 1807
fle_cont.32587:
	flw		f2, -136(x2)	# 166
	fsub	f3, f1, f2	# 166
	lw		x4, -68(x2)	# 153
	lw		x29, -52(x2)	# 153
	fsw		f1, -148(x2)	# 153
	fadd	f1, f0, f3	# 153
	sw		x1, -152(x2)	# 153
	addi	x2, x2, -156	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 156	# 153
	lw		x1, -152(x2)	# 153
	sw		x1, -152(x2)	# 166
	addi	x2, x2, -156	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 156	# 166
	lw		x1, -152(x2)	# 166
	flw		f2, -148(x2)	# 1809
	fsub	f1, f2, f1	# 1809
	flw		f3, -136(x2)	# 1810
	flw		f4, -144(x2)	# 1810
	fsub	f4, f3, f4	# 1810
	fmul	f4, f4, f4	# 127
	fsub	f2, f30, f4	# 1810
	fsub	f1, f3, f1	# 1810
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1810
	flw		f2, -56(x2)	# 122
	fle		f2, f1, fle_cont.32591	# 122
	fadd	f1, f0, f2	# 1811
	jal		x0, fle_cont.32591	# 122
fle_cont.32591:
	flw		f3, -48(x2)	# 1812
	fmul	f1, f3, f1	# 1812
	lui		x4, %hi(l.28024)	# 1812
	ori		x4, x0, %lo(l.28024)	# 1812
	flw		f3, 0(x4)	# 1812
	fdiv	f1, f1, f3	# 1812
	mul		x4, x30, x9	# 1812
	addi	x4, x4, 64376	# 1812
	fsw		f1, 0(x4)	# 1812
	jal		x0, beq_cont.32571	# 1775
beq.32576:
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
	lui		x6, %hi(l.28036)	# 1780
	ori		x6, x0, %lo(l.28036)	# 1780
	flw		f2, 0(x6)	# 1780
	fdiv	f1, f1, f2	# 1780
	fsub	f2, f1, f26	# 166
	lw		x29, -52(x2)	# 153
	fsw		f1, -152(x2)	# 153
	fadd	f1, f0, f2	# 153
	sw		x1, -156(x2)	# 153
	addi	x2, x2, -160	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 160	# 153
	lw		x1, -156(x2)	# 153
	sw		x1, -156(x2)	# 166
	addi	x2, x2, -160	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 160	# 166
	lw		x1, -156(x2)	# 166
	flw		f2, -152(x2)	# 1781
	fsub	f1, f2, f1	# 1781
	fmul	f1, f1, f29	# 1781
	lw		x29, -36(x2)	# 1782
	sw		x1, -156(x2)	# 1782
	addi	x2, x2, -160	# 1782
	lw		x31, 0(x29)	# 1782
	jalr	x1, x31, 0	# 1782
	addi	x2, x2, 160	# 1782
	lw		x1, -156(x2)	# 1782
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1783
	fmul	f3, f1, f2	# 1783
	mul		x4, x30, x8	# 1783
	addi	x4, x4, 64376	# 1783
	fsw		f3, 0(x4)	# 1783
	fsub	f1, f16, f1	# 1784
	fmul	f1, f1, f2	# 1784
	mul		x4, x30, x9	# 1784
	addi	x4, x4, 64376	# 1784
	fsw		f1, 0(x4)	# 1784
	jal		x0, beq_cont.32571	# 1768
beq.32574:
	mul		x6, x30, x8	# 1771
	addi	x6, x6, 64348	# 1771
	flw		f1, 0(x6)	# 1771
	lui		x6, %hi(l.28047)	# 1771
	ori		x6, x0, %lo(l.28047)	# 1771
	flw		f2, 0(x6)	# 1771
	fmul	f1, f1, f2	# 1771
	lw		x29, -44(x2)	# 1771
	sw		x1, -156(x2)	# 1771
	addi	x2, x2, -160	# 1771
	lw		x31, 0(x29)	# 1771
	jalr	x1, x31, 0	# 1771
	addi	x2, x2, 160	# 1771
	lw		x1, -156(x2)	# 1771
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1772
	fmul	f3, f2, f1	# 1772
	lw		x4, -68(x2)	# 1772
	mul		x6, x30, x4	# 1772
	addi	x6, x6, 64376	# 1772
	fsw		f3, 0(x6)	# 1772
	fsub	f1, f16, f1	# 1773
	fmul	f1, f2, f1	# 1773
	mul		x6, x30, x8	# 1773
	addi	x6, x6, 64376	# 1773
	fsw		f1, 0(x6)	# 1773
	jal		x0, beq_cont.32571	# 1750
beq.32572:
	mul		x6, x30, x4	# 1753
	addi	x6, x6, 64348	# 1753
	flw		f1, 0(x6)	# 1753
	lw		x6, 20(x5)	# 468
	mul		x7, x30, x4	# 473
	add		x6, x6, x7	# 473
	flw		f2, 0(x6)	# 473
	fsub	f1, f1, f2	# 1753
	lui		x6, %hi(l.28058)	# 1755
	ori		x6, x0, %lo(l.28058)	# 1755
	flw		f2, 0(x6)	# 1755
	fmul	f3, f1, f2	# 1755
	fsub	f3, f3, f26	# 166
	lw		x29, -52(x2)	# 153
	fsw		f2, -156(x2)	# 153
	fsw		f1, -160(x2)	# 153
	fadd	f1, f0, f3	# 153
	sw		x1, -164(x2)	# 153
	addi	x2, x2, -168	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 168	# 153
	lw		x1, -164(x2)	# 153
	sw		x1, -164(x2)	# 166
	addi	x2, x2, -168	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 168	# 166
	lw		x1, -164(x2)	# 166
	lui		x4, %hi(l.28061)	# 1755
	ori		x4, x0, %lo(l.28061)	# 1755
	flw		f2, 0(x4)	# 1755
	fmul	f1, f1, f2	# 1755
	flw		f3, -160(x2)	# 1756
	fsub	f1, f3, f1	# 1756
	lui		x4, %hi(l.28036)	# 1756
	ori		x4, x0, %lo(l.28036)	# 1756
	flw		f3, 0(x4)	# 1756
	mul		x4, x30, x9	# 1758
	addi	x4, x4, 64348	# 1758
	flw		f5, 0(x4)	# 1758
	lw		x4, -128(x2)	# 488
	lw		x5, 20(x4)	# 488
	mul		x6, x30, x9	# 493
	add		x5, x5, x6	# 493
	flw		f6, 0(x5)	# 493
	fsub	f5, f5, f6	# 1758
	flw		f6, -156(x2)	# 1760
	fmul	f6, f5, f6	# 1760
	fsub	f4, f6, f26	# 166
	lw		x5, -68(x2)	# 153
	lw		x29, -52(x2)	# 153
	fsw		f1, -164(x2)	# 153
	fsw		f2, -168(x2)	# 153
	addi	x4, x5, 0	# 153
	fadd	f1, f0, f4	# 153
	sw		x1, -172(x2)	# 153
	addi	x2, x2, -176	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 176	# 153
	lw		x1, -172(x2)	# 153
	fsw		f3, -172(x2)	# 166
	sw		x1, -176(x2)	# 166
	addi	x2, x2, -180	# 166
	jal		x1, min_caml_float_of_int	# 166
	addi	x2, x2, 180	# 166
	lw		x1, -176(x2)	# 166
	flw		f2, -168(x2)	# 1760
	fmul	f1, f1, f2	# 1760
	fsub	f1, f5, f1	# 1761
	flw		f2, -164(x2)	# 125
	flw		f3, -172(x2)	# 125
	fle		f3, f2, fle.32594	# 125
	fle		f3, f1, fle.32596	# 125
	flw		f1, -48(x2)	# 1765
	jal		x0, fle_cont.32593	# 125
fle.32596:
	flw		f1, -56(x2)	# 1765
	jal		x0, fle_cont.32593	# 125
fle.32594:
	fle		f3, f1, fle.32598	# 125
	flw		f1, -56(x2)	# 1766
	jal		x0, fle_cont.32593	# 125
fle.32598:
	flw		f1, -48(x2)	# 1766
fle_cont.32593:
	mul		x4, x30, x8	# 1763
	addi	x4, x4, 64376	# 1763
	fsw		f1, 0(x4)	# 1763
beq_cont.32571:
	lw		x4, -68(x2)	# 1970
	mul		x5, x30, x4	# 1970
	addi	x5, x5, 64332	# 1970
	lw		x5, 0(x5)	# 1970
	lw		x29, -28(x2)	# 1970
	sw		x1, -176(x2)	# 1970
	addi	x2, x2, -180	# 1970
	lw		x31, 0(x29)	# 1970
	jalr	x1, x31, 0	# 1970
	addi	x2, x2, 180	# 1970
	lw		x1, -176(x2)	# 1970
	lw		x5, -68(x2)	# 1970
	beq		x4, x5, beq.32600	# 1970
	jal		x0, fle_cont.32497	# 1970
beq.32600:
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
	fle		f1, f2, fle.32602	# 121
	jal		x0, fle_cont.32601	# 121
fle.32602:
	fadd	f1, f0, f2	# 1972
fle_cont.32601:
	flw		f2, -120(x2)	# 1973
	fmul	f1, f2, f1	# 1973
	lw		x7, -128(x2)	# 498
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
	jal		x0, fle_cont.32497	# 1964
fle_cont.32497:
	lw		x4, -20(x2)	# 1991
	lw		x5, -16(x2)	# 1991
	sub		x7, x4, x5	# 1991
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
	ble		x5, x12, ble.32603	# 2072
	jalr	x0, x1, 0	# 2082
ble.32603:
	lw		x13, 8(x4)	# 614
	mul		x14, x30, x5	# 2075
	add		x13, x13, x14	# 2075
	lw		x13, 0(x13)	# 2075
	ble		x10, x13, ble.32605	# 2075
	jalr	x0, x1, 0	# 2081
ble.32605:
	lw		x13, 12(x4)	# 621
	mul		x14, x30, x5	# 2077
	add		x13, x13, x14	# 2077
	lw		x13, 0(x13)	# 2077
	sw		x4, 0(x2)	# 2077
	sw		x29, -4(x2)	# 2077
	sw		x11, -8(x2)	# 2077
	sw		x5, -12(x2)	# 2077
	beq		x13, x10, beq_cont.32607	# 2077
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
	beq		x13, x10, beq_cont.32609	# 2008
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
	addi	x5, x18, 0	# 1352
	addi	x4, x15, 0	# 1352
	addi	x29, x6, 0	# 1352
	sw		x1, -56(x2)	# 1352
	addi	x2, x2, -60	# 1352
	lw		x31, 0(x29)	# 1352
	jalr	x1, x31, 0	# 1352
	addi	x2, x2, 60	# 1352
	lw		x1, -56(x2)	# 1352
	addi	x7, x0, 118	# 2001
	lw		x5, -28(x2)	# 2001
	lw		x6, -44(x2)	# 2001
	lw		x29, -32(x2)	# 2001
	addi	x4, x17, 0	# 2001
	sw		x1, -56(x2)	# 2001
	addi	x2, x2, -60	# 2001
	lw		x31, 0(x29)	# 2001
	jalr	x1, x31, 0	# 2001
	addi	x2, x2, 60	# 2001
	lw		x1, -56(x2)	# 2001
	jal		x0, beq_cont.32609	# 2008
beq_cont.32609:
	lw		x4, -8(x2)	# 2012
	lw		x5, -52(x2)	# 2012
	beq		x5, x4, beq_cont.32611	# 2012
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
	sw		x6, -56(x2)	# 1352
	addi	x5, x10, 0	# 1352
	addi	x4, x9, 0	# 1352
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
	jal		x0, beq_cont.32611	# 2012
beq_cont.32611:
	lw		x4, -40(x2)	# 2016
	lw		x5, -52(x2)	# 2016
	beq		x5, x4, beq_cont.32613	# 2016
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
	jal		x0, beq_cont.32613	# 2016
beq_cont.32613:
	lw		x4, -24(x2)	# 2020
	lw		x5, -52(x2)	# 2020
	beq		x5, x4, beq_cont.32615	# 2020
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
	sw		x4, -64(x2)	# 1352
	addi	x5, x10, 0	# 1352
	addi	x4, x8, 0	# 1352
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
	jal		x0, beq_cont.32615	# 2020
beq_cont.32615:
	lw		x4, -20(x2)	# 2024
	lw		x5, -52(x2)	# 2024
	beq		x5, x4, beq_cont.32617	# 2024
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
	sw		x4, -68(x2)	# 1352
	addi	x5, x9, 0	# 1352
	addi	x4, x7, 0	# 1352
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
	jal		x0, beq_cont.32617	# 2024
beq_cont.32617:
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
	jal		x0, beq_cont.32607	# 2077
beq_cont.32607:
	lw		x4, -12(x2)	# 2080
	lw		x5, -8(x2)	# 2080
	add		x5, x4, x5	# 2080
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
	ble		x9, x15, ble.32619	# 2125
	jalr	x0, x1, 0	# 2144
ble.32619:
	lw		x15, 8(x14)	# 614
	mul		x16, x30, x9	# 2100
	add		x15, x15, x16	# 2100
	lw		x15, 0(x15)	# 2100
	ble		x12, x15, ble.32621	# 2128
	jalr	x0, x1, 0	# 2143
ble.32621:
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
	beq		x17, x15, beq.32624	# 2108
	addi	x15, x0, 0	# 2116
	jal		x0, beq_cont.32623	# 2108
beq.32624:
	mul		x17, x30, x4	# 2109
	add		x17, x8, x17	# 2109
	lw		x17, 0(x17)	# 2109
	lw		x17, 8(x17)	# 614
	mul		x18, x30, x9	# 2100
	add		x17, x17, x18	# 2100
	lw		x17, 0(x17)	# 2100
	beq		x17, x15, beq.32626	# 2109
	addi	x15, x0, 0	# 2115
	jal		x0, beq_cont.32623	# 2109
beq.32626:
	sub		x17, x4, x13	# 2110
	mul		x17, x30, x17	# 2110
	add		x17, x7, x17	# 2110
	lw		x17, 0(x17)	# 2110
	lw		x17, 8(x17)	# 614
	mul		x18, x30, x9	# 2100
	add		x17, x17, x18	# 2100
	lw		x17, 0(x17)	# 2100
	beq		x17, x15, beq.32628	# 2110
	addi	x15, x0, 0	# 2114
	jal		x0, beq_cont.32623	# 2110
beq.32628:
	add		x17, x4, x13	# 2111
	mul		x17, x30, x17	# 2111
	add		x17, x7, x17	# 2111
	lw		x17, 0(x17)	# 2111
	lw		x17, 8(x17)	# 614
	mul		x18, x30, x9	# 2100
	add		x17, x17, x18	# 2100
	lw		x17, 0(x17)	# 2100
	beq		x17, x15, beq.32630	# 2111
	addi	x15, x0, 0	# 2113
	jal		x0, beq_cont.32623	# 2111
beq.32630:
	addi	x15, x0, 1	# 2112
beq_cont.32623:
	beq		x15, x12, beq.32631	# 2130
	lw		x10, 12(x14)	# 621
	mul		x15, x30, x9	# 2134
	add		x10, x10, x15	# 2134
	lw		x10, 0(x10)	# 2134
	beq		x10, x12, beq_cont.32632	# 2134
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
	jal		x0, beq_cont.32632	# 2134
beq_cont.32632:
	add		x9, x9, x13	# 2139
	lw		x31, 0(x29)	# 2139
	jalr	x0, x31, 0	# 2139
beq.32631:
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
	ble		x5, x11, ble.32634	# 2200
	jalr	x0, x1, 0	# 2224
ble.32634:
	lw		x11, 8(x4)	# 614
	mul		x12, x30, x5	# 2100
	add		x11, x11, x12	# 2100
	lw		x11, 0(x11)	# 2100
	ble		x9, x11, ble.32636	# 2204
	jalr	x0, x1, 0	# 2223
ble.32636:
	lw		x11, 12(x4)	# 621
	mul		x12, x30, x5	# 2207
	add		x11, x11, x12	# 2207
	lw		x11, 0(x11)	# 2207
	sw		x29, 0(x2)	# 2207
	sw		x10, -4(x2)	# 2207
	sw		x5, -8(x2)	# 2207
	beq		x11, x9, beq_cont.32638	# 2207
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
	jal		x0, beq_cont.32638	# 2207
beq_cont.32638:
	lw		x5, -8(x2)	# 2222
	lw		x6, -4(x2)	# 2222
	add		x5, x5, x6	# 2222
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
	ble		x11, x5, ble.32640	# 2230
	jalr	x0, x1, 0	# 2250
ble.32640:
	mul		x13, x30, x11	# 2232
	addi	x13, x13, 64428	# 2232
	flw		f5, 0(x13)	# 2232
	mul		x13, x30, x11	# 2232
	addi	x13, x13, 64420	# 2232
	lw		x13, 0(x13)	# 2232
	sub		x13, x5, x13	# 2232
	sw		x29, 0(x2)	# 2232
	sw		x6, -4(x2)	# 2232
	sw		x4, -8(x2)	# 2232
	sw		x5, -12(x2)	# 2232
	fsw		f3, -16(x2)	# 2232
	fsw		f2, -20(x2)	# 2232
	fsw		f1, -24(x2)	# 2232
	addi	x4, x13, 0	# 2232
	sw		x1, -28(x2)	# 2232
	addi	x2, x2, -32	# 2232
	jal		x1, min_caml_float_of_int	# 2232
	addi	x2, x2, 32	# 2232
	lw		x1, -28(x2)	# 2232
	fmul	f1, f5, f1	# 2232
	mul		x4, x30, x11	# 2233
	addi	x4, x4, 64456	# 2233
	flw		f2, 0(x4)	# 2233
	fmul	f2, f1, f2	# 2233
	flw		f3, -24(x2)	# 2233
	fadd	f2, f2, f3	# 2233
	mul		x4, x30, x11	# 2233
	addi	x4, x4, 64492	# 2233
	fsw		f2, 0(x4)	# 2233
	mul		x4, x30, x12	# 2234
	addi	x4, x4, 64456	# 2234
	flw		f2, 0(x4)	# 2234
	fmul	f2, f1, f2	# 2234
	flw		f5, -20(x2)	# 2234
	fadd	f2, f2, f5	# 2234
	mul		x4, x30, x12	# 2234
	addi	x4, x4, 64492	# 2234
	fsw		f2, 0(x4)	# 2234
	mul		x4, x30, x10	# 2235
	addi	x4, x4, 64456	# 2235
	flw		f2, 0(x4)	# 2235
	fmul	f1, f1, f2	# 2235
	flw		f2, -16(x2)	# 2235
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
	feq		f1, f4, feq.32643	# 120
	fdiv	f1, f16, f1	# 321
	jal		x0, feq_cont.32642	# 120
feq.32643:
	fadd	f1, f0, f16	# 321
feq_cont.32642:
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
	lw		x4, -12(x2)	# 2241
	mul		x5, x30, x4	# 2241
	lw		x6, -8(x2)	# 2241
	add		x5, x6, x5	# 2241
	lw		x5, 0(x5)	# 2241
	addi	x13, x0, 64492	# 2241
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
	lw		x4, -12(x2)	# 2242
	mul		x5, x30, x4	# 2242
	lw		x6, -8(x2)	# 2242
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
	lw		x9, -4(x2)	# 660
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
	lw		x4, -12(x2)	# 2248
	lw		x5, -40(x2)	# 2248
	sub		x4, x4, x5	# 2248
	lw		x6, -4(x2)	# 261
	add		x5, x6, x5	# 261
	lw		x6, -28(x2)	# 262
	ble		x6, x5, ble.32645	# 262
	addi	x6, x5, 0	# 262
	jal		x0, ble_cont.32644	# 262
ble.32645:
	sub		x6, x5, x6	# 262
ble_cont.32644:
	lw		x5, -8(x2)	# 2248
	flw		f1, -24(x2)	# 2248
	flw		f2, -20(x2)	# 2248
	flw		f3, -16(x2)	# 2248
	lw		x29, 0(x2)	# 2248
	addi	x31, x5, 0	# 2248
	addi	x5, x4, 0	# 2248
	addi	x4, x31, 0	# 2248
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
	ble		x17, x4, ble.32646	# 2271
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
	ble		x17, x18, ble.32648	# 2087
	ble		x5, x15, ble.32650	# 2088
	mul		x17, x30, x15	# 2089
	addi	x17, x17, 64412	# 2089
	lw		x17, 0(x17)	# 2089
	add		x18, x4, x16	# 2089
	ble		x17, x18, ble.32652	# 2089
	ble		x4, x15, ble.32654	# 2090
	addi	x17, x0, 1	# 2091
	jal		x0, ble_cont.32647	# 2090
ble.32654:
	addi	x17, x0, 0	# 2092
	jal		x0, ble_cont.32647	# 2089
ble.32652:
	addi	x17, x0, 0	# 2093
	jal		x0, ble_cont.32647	# 2088
ble.32650:
	addi	x17, x0, 0	# 2094
	jal		x0, ble_cont.32647	# 2087
ble.32648:
	addi	x17, x0, 0	# 2095
ble_cont.32647:
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
	beq		x17, x15, beq.32656	# 2277
	addi	x9, x15, 0	# 2278
	addi	x29, x10, 0	# 2278
	sw		x1, -48(x2)	# 2278
	addi	x2, x2, -52	# 2278
	lw		x31, 0(x29)	# 2278
	jalr	x1, x31, 0	# 2278
	addi	x2, x2, 52	# 2278
	lw		x1, -48(x2)	# 2278
	jal		x0, beq_cont.32655	# 2277
beq.32656:
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
beq_cont.32655:
	lw		x4, -40(x2)	# 2177
	lw		x5, -44(x2)	# 2177
	beq		x5, x4, beq.32658	# 2177
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
	ble		x4, x5, ble.32660	# 2172
	addi	x4, x0, 255	# 2172
	jal		x0, ble_cont.32659	# 2172
ble.32660:
	lw		x6, -36(x2)	# 2172
	ble		x6, x4, ble_cont.32659	# 2172
	addi	x4, x0, 0	# 2172
	jal		x0, ble_cont.32659	# 2172
ble_cont.32659:
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
	ble		x4, x5, ble.32664	# 2172
	addi	x4, x0, 255	# 2172
	jal		x0, ble_cont.32663	# 2172
ble.32664:
	lw		x6, -36(x2)	# 2172
	ble		x6, x4, ble_cont.32663	# 2172
	addi	x4, x0, 0	# 2172
	jal		x0, ble_cont.32663	# 2172
ble_cont.32663:
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
	ble		x4, x5, ble.32668	# 2172
	addi	x4, x0, 255	# 2172
	jal		x0, ble_cont.32667	# 2172
ble.32668:
	lw		x5, -36(x2)	# 2172
	ble		x5, x4, ble_cont.32667	# 2172
	addi	x4, x0, 0	# 2172
	jal		x0, ble_cont.32667	# 2172
ble_cont.32667:
	sw		x1, -52(x2)	# 2173
	addi	x2, x2, -56	# 2173
	jal		x1, min_caml_print_char	# 2173
	addi	x2, x2, 56	# 2173
	lw		x1, -52(x2)	# 2173
	jal		x0, beq_cont.32657	# 2177
beq.32658:
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
	ble		x4, x5, ble.32672	# 2166
	addi	x4, x0, 255	# 2166
	jal		x0, ble_cont.32671	# 2166
ble.32672:
	lw		x6, -36(x2)	# 2166
	ble		x6, x4, ble_cont.32671	# 2166
	addi	x4, x0, 0	# 2166
	jal		x0, ble_cont.32671	# 2166
ble_cont.32671:
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
	ble		x4, x5, ble.32676	# 2166
	addi	x4, x0, 255	# 2166
	jal		x0, ble_cont.32675	# 2166
ble.32676:
	lw		x6, -36(x2)	# 2166
	ble		x6, x4, ble_cont.32675	# 2166
	addi	x4, x0, 0	# 2166
	jal		x0, ble_cont.32675	# 2166
ble_cont.32675:
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
	ble		x4, x5, ble.32680	# 2166
	addi	x4, x0, 255	# 2166
	jal		x0, ble_cont.32679	# 2166
ble.32680:
	lw		x5, -36(x2)	# 2166
	ble		x5, x4, ble_cont.32679	# 2166
	addi	x4, x0, 0	# 2166
	jal		x0, ble_cont.32679	# 2166
ble_cont.32679:
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
beq_cont.32657:
	lw		x4, -20(x2)	# 2285
	lw		x5, -28(x2)	# 2285
	add		x4, x4, x5	# 2285
	lw		x5, -12(x2)	# 2285
	lw		x6, -8(x2)	# 2285
	lw		x7, -4(x2)	# 2285
	lw		x8, 0(x2)	# 2285
	lw		x9, -44(x2)	# 2285
	lw		x29, -16(x2)	# 2285
	lw		x31, 0(x29)	# 2285
	jalr	x0, x31, 0	# 2285
ble.32646:
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
	ble		x16, x4, ble.32684	# 2292
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
	ble		x16, x4, ble_cont.32685	# 2294
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
	jal		x0, ble_cont.32685	# 2294
ble_cont.32685:
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
	lw		x4, -36(x2)	# 2298
	lw		x5, -16(x2)	# 2298
	add		x4, x4, x5	# 2298
	lw		x5, -12(x2)	# 261
	lw		x6, -8(x2)	# 261
	add		x5, x5, x6	# 261
	lw		x6, -4(x2)	# 262
	ble		x6, x5, ble.32688	# 262
	addi	x8, x5, 0	# 262
	jal		x0, ble_cont.32687	# 262
ble.32688:
	sub		x8, x5, x6	# 262
ble_cont.32687:
	lw		x5, -28(x2)	# 2298
	lw		x6, -24(x2)	# 2298
	lw		x7, -32(x2)	# 2298
	lw		x9, -20(x2)	# 2298
	lw		x29, 0(x2)	# 2298
	lw		x31, 0(x29)	# 2298
	jalr	x0, x31, 0	# 2298
ble.32684:
	jalr	x0, x1, 0	# 2299
init_line_elements.2982.18131:
	lw		x6, 24(x29)	# 2334
	lw		x7, 20(x29)	# 2334
	lw		x8, 16(x29)	# 2334
	lw		x9, 12(x29)	# 2334
	lw		x10, 8(x29)	# 2334
	flw		f1, 4(x29)	# 2334
	ble		x9, x5, ble.32690	# 2334
	jalr	x0, x1, 0	# 2338
ble.32690:
	sw		x29, 0(x2)	# 2321
	sw		x4, -4(x2)	# 2321
	sw		x5, -8(x2)	# 2321
	fsw		f1, -12(x2)	# 2321
	sw		x8, -16(x2)	# 2321
	addi	x4, x8, 0	# 2321
	sw		x1, -20(x2)	# 2321
	addi	x2, x2, -24	# 2321
	jal		x1, min_caml_create_float_array	# 2321
	addi	x2, x2, 24	# 2321
	lw		x1, -20(x2)	# 2321
	lw		x5, -16(x2)	# 2309
	flw		f1, -12(x2)	# 2309
	sw		x4, -20(x2)	# 2309
	addi	x4, x5, 0	# 2309
	sw		x1, -24(x2)	# 2309
	addi	x2, x2, -28	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 28	# 2309
	lw		x1, -24(x2)	# 2309
	addi	x5, x4, 0	# 2309
	sw		x6, -24(x2)	# 2310
	addi	x4, x6, 0	# 2310
	sw		x1, -28(x2)	# 2310
	addi	x2, x2, -32	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 32	# 2310
	lw		x1, -28(x2)	# 2310
	lw		x5, -16(x2)	# 2311
	flw		f1, -12(x2)	# 2311
	sw		x4, -28(x2)	# 2311
	addi	x4, x5, 0	# 2311
	sw		x1, -32(x2)	# 2311
	addi	x2, x2, -36	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 36	# 2311
	lw		x1, -32(x2)	# 2311
	mul		x5, x30, x10	# 2311
	lw		x6, -28(x2)	# 2311
	add		x5, x6, x5	# 2311
	sw		x4, 0(x5)	# 2311
	lw		x4, -16(x2)	# 2312
	flw		f1, -12(x2)	# 2312
	sw		x1, -32(x2)	# 2312
	addi	x2, x2, -36	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 36	# 2312
	lw		x1, -32(x2)	# 2312
	mul		x5, x30, x7	# 2312
	add		x5, x6, x5	# 2312
	sw		x4, 0(x5)	# 2312
	lw		x4, -16(x2)	# 2313
	flw		f1, -12(x2)	# 2313
	sw		x1, -32(x2)	# 2313
	addi	x2, x2, -36	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 36	# 2313
	lw		x1, -32(x2)	# 2313
	lw		x5, -16(x2)	# 2313
	mul		x8, x30, x5	# 2313
	add		x8, x6, x8	# 2313
	sw		x4, 0(x8)	# 2313
	addi	x4, x0, 4	# 2314
	flw		f1, -12(x2)	# 2314
	sw		x4, -32(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -36(x2)	# 2314
	addi	x2, x2, -40	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 40	# 2314
	lw		x1, -36(x2)	# 2314
	lw		x5, -32(x2)	# 2314
	mul		x8, x30, x5	# 2314
	add		x8, x6, x8	# 2314
	sw		x4, 0(x8)	# 2314
	lw		x4, -24(x2)	# 2323
	sw		x9, -36(x2)	# 2323
	addi	x5, x9, 0	# 2323
	sw		x1, -40(x2)	# 2323
	addi	x2, x2, -44	# 2323
	jal		x1, min_caml_create_array	# 2323
	addi	x2, x2, 44	# 2323
	lw		x1, -40(x2)	# 2323
	lw		x5, -24(x2)	# 2324
	lw		x6, -36(x2)	# 2324
	sw		x4, -40(x2)	# 2324
	addi	x4, x5, 0	# 2324
	addi	x5, x6, 0	# 2324
	sw		x1, -44(x2)	# 2324
	addi	x2, x2, -48	# 2324
	jal		x1, min_caml_create_array	# 2324
	addi	x2, x2, 48	# 2324
	lw		x1, -44(x2)	# 2324
	lw		x5, -16(x2)	# 2309
	flw		f1, -12(x2)	# 2309
	sw		x4, -44(x2)	# 2309
	addi	x4, x5, 0	# 2309
	sw		x1, -48(x2)	# 2309
	addi	x2, x2, -52	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 52	# 2309
	lw		x1, -48(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -24(x2)	# 2310
	sw		x1, -48(x2)	# 2310
	addi	x2, x2, -52	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 52	# 2310
	lw		x1, -48(x2)	# 2310
	lw		x5, -16(x2)	# 2311
	flw		f1, -12(x2)	# 2311
	sw		x4, -48(x2)	# 2311
	addi	x4, x5, 0	# 2311
	sw		x1, -52(x2)	# 2311
	addi	x2, x2, -56	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 56	# 2311
	lw		x1, -52(x2)	# 2311
	mul		x5, x30, x10	# 2311
	lw		x6, -48(x2)	# 2311
	add		x5, x6, x5	# 2311
	sw		x4, 0(x5)	# 2311
	lw		x4, -16(x2)	# 2312
	flw		f1, -12(x2)	# 2312
	sw		x1, -52(x2)	# 2312
	addi	x2, x2, -56	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 56	# 2312
	lw		x1, -52(x2)	# 2312
	mul		x5, x30, x7	# 2312
	add		x5, x6, x5	# 2312
	sw		x4, 0(x5)	# 2312
	lw		x4, -16(x2)	# 2313
	flw		f1, -12(x2)	# 2313
	sw		x1, -52(x2)	# 2313
	addi	x2, x2, -56	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 56	# 2313
	lw		x1, -52(x2)	# 2313
	lw		x5, -16(x2)	# 2313
	mul		x8, x30, x5	# 2313
	add		x8, x6, x8	# 2313
	sw		x4, 0(x8)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -52(x2)	# 2314
	addi	x2, x2, -56	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 56	# 2314
	lw		x1, -52(x2)	# 2314
	lw		x5, -32(x2)	# 2314
	mul		x8, x30, x5	# 2314
	add		x8, x6, x8	# 2314
	sw		x4, 0(x8)	# 2314
	lw		x4, -16(x2)	# 2309
	flw		f1, -12(x2)	# 2309
	sw		x1, -52(x2)	# 2309
	addi	x2, x2, -56	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 56	# 2309
	lw		x1, -52(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -24(x2)	# 2310
	sw		x1, -52(x2)	# 2310
	addi	x2, x2, -56	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 56	# 2310
	lw		x1, -52(x2)	# 2310
	lw		x5, -16(x2)	# 2311
	flw		f1, -12(x2)	# 2311
	sw		x4, -52(x2)	# 2311
	addi	x4, x5, 0	# 2311
	sw		x1, -56(x2)	# 2311
	addi	x2, x2, -60	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 60	# 2311
	lw		x1, -56(x2)	# 2311
	mul		x5, x30, x10	# 2311
	lw		x6, -52(x2)	# 2311
	add		x5, x6, x5	# 2311
	sw		x4, 0(x5)	# 2311
	lw		x4, -16(x2)	# 2312
	flw		f1, -12(x2)	# 2312
	sw		x1, -56(x2)	# 2312
	addi	x2, x2, -60	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 60	# 2312
	lw		x1, -56(x2)	# 2312
	mul		x5, x30, x7	# 2312
	add		x5, x6, x5	# 2312
	sw		x4, 0(x5)	# 2312
	lw		x4, -16(x2)	# 2313
	flw		f1, -12(x2)	# 2313
	sw		x1, -56(x2)	# 2313
	addi	x2, x2, -60	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 60	# 2313
	lw		x1, -56(x2)	# 2313
	lw		x5, -16(x2)	# 2313
	mul		x8, x30, x5	# 2313
	add		x8, x6, x8	# 2313
	sw		x4, 0(x8)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -56(x2)	# 2314
	addi	x2, x2, -60	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 60	# 2314
	lw		x1, -56(x2)	# 2314
	lw		x5, -32(x2)	# 2314
	mul		x8, x30, x5	# 2314
	add		x8, x6, x8	# 2314
	sw		x4, 0(x8)	# 2314
	lw		x4, -36(x2)	# 2327
	sw		x10, -56(x2)	# 2327
	addi	x5, x4, 0	# 2327
	addi	x4, x10, 0	# 2327
	sw		x1, -60(x2)	# 2327
	addi	x2, x2, -64	# 2327
	jal		x1, min_caml_create_array	# 2327
	addi	x2, x2, 64	# 2327
	lw		x1, -60(x2)	# 2327
	lw		x5, -16(x2)	# 2309
	flw		f1, -12(x2)	# 2309
	sw		x4, -60(x2)	# 2309
	addi	x4, x5, 0	# 2309
	sw		x1, -64(x2)	# 2309
	addi	x2, x2, -68	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 68	# 2309
	lw		x1, -64(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -24(x2)	# 2310
	sw		x1, -64(x2)	# 2310
	addi	x2, x2, -68	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 68	# 2310
	lw		x1, -64(x2)	# 2310
	lw		x5, -16(x2)	# 2311
	flw		f1, -12(x2)	# 2311
	sw		x4, -64(x2)	# 2311
	addi	x4, x5, 0	# 2311
	sw		x1, -68(x2)	# 2311
	addi	x2, x2, -72	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 72	# 2311
	lw		x1, -68(x2)	# 2311
	lw		x5, -56(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x8, -64(x2)	# 2311
	add		x6, x8, x6	# 2311
	sw		x4, 0(x6)	# 2311
	lw		x4, -16(x2)	# 2312
	flw		f1, -12(x2)	# 2312
	sw		x1, -68(x2)	# 2312
	addi	x2, x2, -72	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 72	# 2312
	lw		x1, -68(x2)	# 2312
	mul		x5, x30, x7	# 2312
	add		x5, x8, x5	# 2312
	sw		x4, 0(x5)	# 2312
	lw		x4, -16(x2)	# 2313
	flw		f1, -12(x2)	# 2313
	sw		x1, -68(x2)	# 2313
	addi	x2, x2, -72	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 72	# 2313
	lw		x1, -68(x2)	# 2313
	lw		x5, -16(x2)	# 2313
	mul		x6, x30, x5	# 2313
	add		x6, x8, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -12(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -68(x2)	# 2314
	addi	x2, x2, -72	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 72	# 2314
	lw		x1, -68(x2)	# 2314
	lw		x5, -32(x2)	# 2314
	mul		x5, x30, x5	# 2314
	add		x5, x8, x5	# 2314
	sw		x4, 0(x5)	# 2314
	addi	x4, x3, 0	# 2329
	addi	x3, x3, 32	# 2329
	sw		x8, 28(x4)	# 2329
	lw		x5, -60(x2)	# 2329
	sw		x5, 24(x4)	# 2329
	lw		x5, -52(x2)	# 2329
	sw		x5, 20(x4)	# 2329
	lw		x5, -48(x2)	# 2329
	sw		x5, 16(x4)	# 2329
	lw		x5, -44(x2)	# 2329
	sw		x5, 12(x4)	# 2329
	lw		x5, -40(x2)	# 2329
	sw		x5, 8(x4)	# 2329
	lw		x5, -28(x2)	# 2329
	sw		x5, 4(x4)	# 2329
	lw		x5, -20(x2)	# 2329
	sw		x5, 0(x4)	# 2329
	lw		x5, -8(x2)	# 2335
	mul		x6, x30, x5	# 2335
	lw		x7, -4(x2)	# 2335
	add		x6, x7, x6	# 2335
	sw		x4, 0(x6)	# 2335
	lw		x4, -56(x2)	# 2336
	sub		x5, x5, x4	# 2336
	lw		x29, 0(x2)	# 2336
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
	ble		x10, x4, ble.32691	# 2371
	fmul	f1, f2, f2	# 2362
	lui		x10, %hi(l.28235)	# 2362
	ori		x10, x0, %lo(l.28235)	# 2362
	flw		f2, 0(x10)	# 2362
	fadd	f1, f1, f2	# 2362
	fsqrt	f1, f1	# 2362
	fdiv	f6, f16, f1	# 2363
	sw		x29, 0(x2)	# 2364
	fsw		f4, -4(x2)	# 2364
	fsw		f16, -8(x2)	# 2364
	fsw		f2, -12(x2)	# 2364
	sw		x4, -16(x2)	# 2364
	fsw		f1, -20(x2)	# 2364
	fsw		f3, -24(x2)	# 2364
	addi	x29, x9, 0	# 2364
	fadd	f1, f0, f6	# 2364
	sw		x1, -28(x2)	# 2364
	addi	x2, x2, -32	# 2364
	lw		x31, 0(x29)	# 2364
	jalr	x1, x31, 0	# 2364
	addi	x2, x2, 32	# 2364
	lw		x1, -28(x2)	# 2364
	flw		f2, -24(x2)	# 2365
	fmul	f1, f1, f2	# 2365
	fsw		f1, -28(x2)	# 2357
	addi	x29, x7, 0	# 2357
	sw		x1, -32(x2)	# 2357
	addi	x2, x2, -36	# 2357
	lw		x31, 0(x29)	# 2357
	jalr	x1, x31, 0	# 2357
	addi	x2, x2, 36	# 2357
	lw		x1, -32(x2)	# 2357
	flw		f2, -28(x2)	# 2357
	fsw		f1, -32(x2)	# 2357
	addi	x29, x8, 0	# 2357
	fadd	f1, f0, f2	# 2357
	sw		x1, -36(x2)	# 2357
	addi	x2, x2, -40	# 2357
	lw		x31, 0(x29)	# 2357
	jalr	x1, x31, 0	# 2357
	addi	x2, x2, 40	# 2357
	lw		x1, -36(x2)	# 2357
	flw		f2, -32(x2)	# 2357
	fdiv	f1, f2, f1	# 2357
	flw		f2, -20(x2)	# 2366
	fmul	f1, f1, f2	# 2366
	lw		x4, -16(x2)	# 2387
	add		x4, x4, x13	# 2387
	fmul	f2, f1, f1	# 2362
	flw		f3, -12(x2)	# 2362
	fadd	f2, f2, f3	# 2362
	fsqrt	f2, f2	# 2362
	flw		f3, -8(x2)	# 2363
	fdiv	f3, f3, f2	# 2363
	fsw		f1, -36(x2)	# 2364
	sw		x4, -40(x2)	# 2364
	fsw		f2, -44(x2)	# 2364
	addi	x29, x9, 0	# 2364
	fadd	f1, f0, f3	# 2364
	sw		x1, -48(x2)	# 2364
	addi	x2, x2, -52	# 2364
	lw		x31, 0(x29)	# 2364
	jalr	x1, x31, 0	# 2364
	addi	x2, x2, 52	# 2364
	lw		x1, -48(x2)	# 2364
	flw		f2, -4(x2)	# 2365
	fmul	f1, f1, f2	# 2365
	fsw		f1, -48(x2)	# 2357
	addi	x29, x7, 0	# 2357
	sw		x1, -52(x2)	# 2357
	addi	x2, x2, -56	# 2357
	lw		x31, 0(x29)	# 2357
	jalr	x1, x31, 0	# 2357
	addi	x2, x2, 56	# 2357
	lw		x1, -52(x2)	# 2357
	flw		f2, -48(x2)	# 2357
	fsw		f1, -52(x2)	# 2357
	addi	x29, x8, 0	# 2357
	fadd	f1, f0, f2	# 2357
	sw		x1, -56(x2)	# 2357
	addi	x2, x2, -60	# 2357
	lw		x31, 0(x29)	# 2357
	jalr	x1, x31, 0	# 2357
	addi	x2, x2, 60	# 2357
	lw		x1, -56(x2)	# 2357
	flw		f2, -52(x2)	# 2357
	fdiv	f1, f2, f1	# 2357
	flw		f2, -44(x2)	# 2366
	fmul	f2, f1, f2	# 2366
	lw		x4, -40(x2)	# 2387
	flw		f1, -36(x2)	# 2387
	flw		f3, -24(x2)	# 2387
	flw		f4, -4(x2)	# 2387
	lw		x29, 0(x2)	# 2387
	lw		x31, 0(x29)	# 2387
	jalr	x0, x31, 0	# 2387
ble.32691:
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 2372
	fadd	f3, f3, f16	# 2372
	fsqrt	f3, f3	# 2372
	fdiv	f1, f1, f3	# 2373
	fdiv	f2, f2, f3	# 2374
	fdiv	f3, f16, f3	# 2375
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
	ble		x10, x4, ble.32693	# 2392
	jalr	x0, x1, 0	# 2401
ble.32693:
	sw		x29, 0(x2)	# 2394
	sw		x4, -4(x2)	# 2394
	fsw		f1, -8(x2)	# 2394
	fsw		f2, -12(x2)	# 2394
	sw		x6, -16(x2)	# 2394
	sw		x5, -20(x2)	# 2394
	sw		x1, -24(x2)	# 2394
	addi	x2, x2, -28	# 2394
	jal		x1, min_caml_float_of_int	# 2394
	addi	x2, x2, 28	# 2394
	lw		x1, -24(x2)	# 2394
	lui		x4, %hi(l.26465)	# 2394
	ori		x4, x0, %lo(l.26465)	# 2394
	flw		f2, 0(x4)	# 2394
	fmul	f1, f1, f2	# 2394
	lui		x4, %hi(l.29268)	# 2394
	ori		x4, x0, %lo(l.29268)	# 2394
	flw		f2, 0(x4)	# 2394
	fsub	f3, f1, f2	# 2394
	lw		x5, -20(x2)	# 2395
	lw		x6, -16(x2)	# 2395
	flw		f2, -12(x2)	# 2395
	flw		f4, -8(x2)	# 2395
	sw		x8, -24(x2)	# 2395
	sw		x11, -28(x2)	# 2395
	sw		x10, -32(x2)	# 2395
	sw		x7, -36(x2)	# 2395
	sw		x9, -40(x2)	# 2395
	fsw		f1, -44(x2)	# 2395
	addi	x4, x10, 0	# 2395
	addi	x29, x7, 0	# 2395
	fadd	f1, f0, f2	# 2395
	sw		x1, -48(x2)	# 2395
	addi	x2, x2, -52	# 2395
	lw		x31, 0(x29)	# 2395
	jalr	x1, x31, 0	# 2395
	addi	x2, x2, 52	# 2395
	lw		x1, -48(x2)	# 2395
	lui		x4, %hi(l.28235)	# 2397
	ori		x4, x0, %lo(l.28235)	# 2397
	flw		f1, 0(x4)	# 2397
	flw		f2, -44(x2)	# 2397
	fadd	f3, f2, f1	# 2397
	lw		x4, -16(x2)	# 2398
	lw		x5, -40(x2)	# 2398
	add		x6, x4, x5	# 2398
	lw		x5, -32(x2)	# 2398
	lw		x7, -20(x2)	# 2398
	flw		f1, -12(x2)	# 2398
	flw		f4, -8(x2)	# 2398
	lw		x29, -36(x2)	# 2398
	addi	x4, x5, 0	# 2398
	addi	x5, x7, 0	# 2398
	fadd	f2, f0, f1	# 2398
	sw		x1, -48(x2)	# 2398
	addi	x2, x2, -52	# 2398
	lw		x31, 0(x29)	# 2398
	jalr	x1, x31, 0	# 2398
	addi	x2, x2, 52	# 2398
	lw		x1, -48(x2)	# 2398
	lw		x4, -4(x2)	# 2400
	lw		x5, -28(x2)	# 2400
	sub		x4, x4, x5	# 2400
	lw		x6, -20(x2)	# 261
	add		x5, x6, x5	# 261
	lw		x6, -24(x2)	# 262
	ble		x6, x5, ble.32696	# 262
	jal		x0, ble_cont.32695	# 262
ble.32696:
	sub		x5, x5, x6	# 262
ble_cont.32695:
	lw		x6, -16(x2)	# 2400
	flw		f1, -8(x2)	# 2400
	lw		x29, 0(x2)	# 2400
	lw		x31, 0(x29)	# 2400
	jalr	x0, x31, 0	# 2400
calc_dirvec_rows.3005.18147:
	lw		x7, 20(x29)	# 2406
	lw		x8, 16(x29)	# 2406
	lw		x9, 12(x29)	# 2406
	lw		x10, 8(x29)	# 2406
	lw		x11, 4(x29)	# 2406
	ble		x10, x4, ble.32697	# 2406
	jalr	x0, x1, 0	# 2410
ble.32697:
	sw		x29, 0(x2)	# 2407
	sw		x4, -4(x2)	# 2407
	sw		x6, -8(x2)	# 2407
	sw		x5, -12(x2)	# 2407
	sw		x1, -16(x2)	# 2407
	addi	x2, x2, -20	# 2407
	jal		x1, min_caml_float_of_int	# 2407
	addi	x2, x2, 20	# 2407
	lw		x1, -16(x2)	# 2407
	lui		x4, %hi(l.26465)	# 2407
	ori		x4, x0, %lo(l.26465)	# 2407
	flw		f2, 0(x4)	# 2407
	fmul	f1, f1, f2	# 2407
	lui		x4, %hi(l.29268)	# 2407
	ori		x4, x0, %lo(l.29268)	# 2407
	flw		f2, 0(x4)	# 2407
	fsub	f1, f1, f2	# 2407
	addi	x4, x0, 4	# 2408
	lw		x5, -12(x2)	# 2408
	lw		x6, -8(x2)	# 2408
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
	lw		x4, -4(x2)	# 2409
	lw		x5, -24(x2)	# 2409
	sub		x4, x4, x5	# 2409
	lw		x5, -12(x2)	# 261
	lw		x6, -20(x2)	# 261
	add		x5, x5, x6	# 261
	lw		x6, -16(x2)	# 262
	ble		x6, x5, ble.32700	# 262
	jal		x0, ble_cont.32699	# 262
ble.32700:
	sub		x5, x5, x6	# 262
ble_cont.32699:
	lw		x6, -8(x2)	# 2409
	addi	x6, x6, 4	# 2409
	lw		x29, 0(x2)	# 2409
	lw		x31, 0(x29)	# 2409
	jalr	x0, x31, 0	# 2409
create_dirvec_elements.3011.18151:
	lw		x6, 16(x29)	# 2425
	lw		x7, 12(x29)	# 2425
	lw		x8, 8(x29)	# 2425
	flw		f1, 4(x29)	# 2425
	ble		x7, x5, ble.32701	# 2425
	jalr	x0, x1, 0	# 2428
ble.32701:
	sw		x29, 0(x2)	# 2419
	sw		x4, -4(x2)	# 2419
	sw		x5, -8(x2)	# 2419
	addi	x4, x6, 0	# 2419
	sw		x1, -12(x2)	# 2419
	addi	x2, x2, -16	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 16	# 2419
	lw		x1, -12(x2)	# 2419
	addi	x5, x4, 0	# 2419
	mul		x4, x30, x7	# 2420
	addi	x4, x4, 63796	# 2420
	lw		x4, 0(x4)	# 2420
	sw		x5, -12(x2)	# 2420
	sw		x1, -16(x2)	# 2420
	addi	x2, x2, -20	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 20	# 2420
	lw		x1, -16(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -12(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	addi	x4, x5, 0	# 2421
	lw		x5, -8(x2)	# 2426
	mul		x6, x30, x5	# 2426
	lw		x7, -4(x2)	# 2426
	add		x6, x7, x6	# 2426
	sw		x4, 0(x6)	# 2426
	sub		x5, x5, x8	# 2427
	lw		x29, 0(x2)	# 2427
	addi	x4, x7, 0	# 2427
	lw		x31, 0(x29)	# 2427
	jalr	x0, x31, 0	# 2427
create_dirvecs.3014.18154:
	lw		x5, 20(x29)	# 2432
	lw		x6, 16(x29)	# 2432
	lw		x7, 12(x29)	# 2432
	lw		x8, 8(x29)	# 2432
	flw		f1, 4(x29)	# 2432
	ble		x7, x4, ble.32703	# 2432
	jalr	x0, x1, 0	# 2436
ble.32703:
	addi	x9, x0, 120	# 2433
	sw		x29, 0(x2)	# 2419
	sw		x5, -4(x2)	# 2419
	sw		x4, -8(x2)	# 2419
	addi	x4, x6, 0	# 2419
	sw		x1, -12(x2)	# 2419
	addi	x2, x2, -16	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 16	# 2419
	lw		x1, -12(x2)	# 2419
	addi	x5, x4, 0	# 2419
	mul		x4, x30, x7	# 2420
	addi	x4, x4, 63796	# 2420
	lw		x4, 0(x4)	# 2420
	sw		x5, -12(x2)	# 2420
	sw		x1, -16(x2)	# 2420
	addi	x2, x2, -20	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 20	# 2420
	lw		x1, -16(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -12(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	addi	x4, x9, 0	# 2433
	sw		x1, -16(x2)	# 2433
	addi	x2, x2, -20	# 2433
	jal		x1, min_caml_create_array	# 2433
	addi	x2, x2, 20	# 2433
	lw		x1, -16(x2)	# 2433
	lw		x5, -8(x2)	# 2433
	mul		x6, x30, x5	# 2433
	addi	x6, x6, 64512	# 2433
	sw		x4, 0(x6)	# 2433
	mul		x4, x30, x5	# 2434
	addi	x4, x4, 64512	# 2434
	lw		x4, 0(x4)	# 2434
	addi	x6, x0, 118	# 2434
	lw		x29, -4(x2)	# 2434
	sw		x8, -16(x2)	# 2434
	addi	x5, x6, 0	# 2434
	sw		x1, -20(x2)	# 2434
	addi	x2, x2, -24	# 2434
	lw		x31, 0(x29)	# 2434
	jalr	x1, x31, 0	# 2434
	addi	x2, x2, 24	# 2434
	lw		x1, -20(x2)	# 2434
	lw		x4, -8(x2)	# 2435
	lw		x5, -16(x2)	# 2435
	sub		x4, x4, x5	# 2435
	lw		x29, 0(x2)	# 2435
	lw		x31, 0(x29)	# 2435
	jalr	x0, x31, 0	# 2435
init_dirvec_constants.3016.18156:
	lw		x6, 12(x29)	# 2444
	lw		x7, 8(x29)	# 2444
	lw		x8, 4(x29)	# 2444
	ble		x7, x5, ble.32705	# 2444
	jalr	x0, x1, 0	# 2447
ble.32705:
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
	lw		x4, -12(x2)	# 2446
	lw		x5, -8(x2)	# 2446
	sub		x5, x4, x5	# 2446
	lw		x4, 0(x2)	# 2446
	lw		x29, -4(x2)	# 2446
	lw		x31, 0(x29)	# 2446
	jalr	x0, x31, 0	# 2446
init_vecset_constants.3019.18159:
	lw		x5, 12(x29)	# 2451
	lw		x6, 8(x29)	# 2451
	lw		x7, 4(x29)	# 2451
	ble		x6, x4, ble.32707	# 2451
	jalr	x0, x1, 0	# 2454
ble.32707:
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
	lw		x4, -8(x2)	# 2453
	lw		x5, -4(x2)	# 2453
	sub		x4, x4, x5	# 2453
	lw		x29, 0(x2)	# 2453
	lw		x31, 0(x29)	# 2453
	jalr	x0, x31, 0	# 2453
min_caml_start:
	addi	x2, x2, -4	# 0
	addi	x30, x0, 4	# 0
	addi	x3, x0, 63796	# 0
	lui		x4, %hi(l.29295)	# 0
	ori		x4, x0, %lo(l.29295)	# 0
	flw		f0, 0(x4)	# 0
	lui		x4, %hi(l.26430)	# 0
	ori		x4, x0, %lo(l.26430)	# 0
	flw		f16, 0(x4)	# 0
	lui		x4, %hi(l.26439)	# 0
	ori		x4, x0, %lo(l.26439)	# 0
	flw		f17, 0(x4)	# 0
	lui		x4, %hi(l.26435)	# 0
	ori		x4, x0, %lo(l.26435)	# 0
	flw		f18, 0(x4)	# 0
	lui		x4, %hi(l.26915)	# 0
	ori		x4, x0, %lo(l.26915)	# 0
	flw		f19, 0(x4)	# 0
	lui		x4, %hi(l.26913)	# 0
	ori		x4, x0, %lo(l.26913)	# 0
	flw		f20, 0(x4)	# 0
	lui		x4, %hi(l.27034)	# 0
	ori		x4, x0, %lo(l.27034)	# 0
	flw		f21, 0(x4)	# 0
	lui		x4, %hi(l.27802)	# 0
	ori		x4, x0, %lo(l.27802)	# 0
	flw		f22, 0(x4)	# 0
	lui		x4, %hi(l.26428)	# 0
	ori		x4, x0, %lo(l.26428)	# 0
	flw		f23, 0(x4)	# 0
	lui		x4, %hi(l.28500)	# 0
	ori		x4, x0, %lo(l.28500)	# 0
	flw		f24, 0(x4)	# 0
	lui		x4, %hi(l.28288)	# 0
	ori		x4, x0, %lo(l.28288)	# 0
	flw		f25, 0(x4)	# 0
	lui		x4, %hi(l.26432)	# 0
	ori		x4, x0, %lo(l.26432)	# 0
	flw		f26, 0(x4)	# 0
	lui		x4, %hi(l.26437)	# 0
	ori		x4, x0, %lo(l.26437)	# 0
	flw		f27, 0(x4)	# 0
	lui		x4, %hi(l.26576)	# 0
	ori		x4, x0, %lo(l.26576)	# 0
	flw		f28, 0(x4)	# 0
	lui		x4, %hi(l.28010)	# 0
	ori		x4, x0, %lo(l.28010)	# 0
	flw		f29, 0(x4)	# 0
	lui		x4, %hi(l.28022)	# 0
	ori		x4, x0, %lo(l.28022)	# 0
	flw		f30, 0(x4)	# 0
	addi	x4, x0, 1	# 6
	addi	x5, x0, 0	# 6
	sw		x4, 0(x2)	# 6
	sw		x0, -4(x2)	# 6
	sw		x1, -8(x2)	# 6
	addi	x2, x2, -12	# 6
	jal		x1, min_caml_create_array	# 6
	addi	x2, x2, 12	# 6
	lw		x1, -8(x2)	# 6
	fadd	f1, f0, f0	# 11
	addi	x4, x0, 63800	# 11
	lw		x5, -4(x2)	# 11
	fsw		f0, -8(x2)	# 11
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
	lw		x4, -20(x2)	# 19
	flw		f1, -8(x2)	# 19
	sw		x1, -24(x2)	# 19
	addi	x2, x2, -28	# 19
	jal		x1, min_caml_create_float_array	# 19
	addi	x2, x2, 28	# 19
	lw		x1, -24(x2)	# 19
	lw		x4, -20(x2)	# 22
	flw		f1, -8(x2)	# 22
	sw		x1, -24(x2)	# 22
	addi	x2, x2, -28	# 22
	jal		x1, min_caml_create_float_array	# 22
	addi	x2, x2, 28	# 22
	lw		x1, -24(x2)	# 22
	lui		x4, %hi(l.29309)	# 25
	ori		x4, x0, %lo(l.29309)	# 25
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
	lw		x6, 0(x2)	# 31
	sw		x4, -40(x2)	# 31
	addi	x4, x6, 0	# 31
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
	lw		x4, 0(x2)	# 36
	flw		f1, -8(x2)	# 36
	sw		x1, -44(x2)	# 36
	addi	x2, x2, -48	# 36
	jal		x1, min_caml_create_float_array	# 36
	addi	x2, x2, 48	# 36
	lw		x1, -44(x2)	# 36
	lw		x4, 0(x2)	# 39
	addi	x5, x7, 0	# 39
	sw		x1, -44(x2)	# 39
	addi	x2, x2, -48	# 39
	jal		x1, min_caml_create_array	# 39
	addi	x2, x2, 48	# 39
	lw		x1, -44(x2)	# 39
	lui		x4, %hi(l.29313)	# 42
	ori		x4, x0, %lo(l.29313)	# 42
	flw		f1, 0(x4)	# 42
	lw		x4, 0(x2)	# 42
	fsw		f1, -44(x2)	# 42
	sw		x1, -48(x2)	# 42
	addi	x2, x2, -52	# 42
	jal		x1, min_caml_create_float_array	# 42
	addi	x2, x2, 52	# 42
	lw		x1, -48(x2)	# 42
	lw		x4, -20(x2)	# 45
	flw		f1, -8(x2)	# 45
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
	lw		x4, -20(x2)	# 51
	flw		f1, -8(x2)	# 51
	sw		x1, -48(x2)	# 51
	addi	x2, x2, -52	# 51
	jal		x1, min_caml_create_float_array	# 51
	addi	x2, x2, 52	# 51
	lw		x1, -48(x2)	# 51
	lw		x4, -20(x2)	# 54
	flw		f1, -8(x2)	# 54
	sw		x1, -48(x2)	# 54
	addi	x2, x2, -52	# 54
	jal		x1, min_caml_create_float_array	# 54
	addi	x2, x2, 52	# 54
	lw		x1, -48(x2)	# 54
	lw		x4, -20(x2)	# 58
	flw		f1, -8(x2)	# 58
	sw		x1, -48(x2)	# 58
	addi	x2, x2, -52	# 58
	jal		x1, min_caml_create_float_array	# 58
	addi	x2, x2, 52	# 58
	lw		x1, -48(x2)	# 58
	lw		x4, -20(x2)	# 61
	flw		f1, -8(x2)	# 61
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
	lw		x4, 0(x2)	# 71
	flw		f1, -8(x2)	# 71
	sw		x1, -52(x2)	# 71
	addi	x2, x2, -56	# 71
	jal		x1, min_caml_create_float_array	# 71
	addi	x2, x2, 56	# 71
	lw		x1, -52(x2)	# 71
	lw		x4, -20(x2)	# 75
	flw		f1, -8(x2)	# 75
	sw		x1, -52(x2)	# 75
	addi	x2, x2, -56	# 75
	jal		x1, min_caml_create_float_array	# 75
	addi	x2, x2, 56	# 75
	lw		x1, -52(x2)	# 75
	lw		x4, -20(x2)	# 78
	flw		f1, -8(x2)	# 78
	sw		x1, -52(x2)	# 78
	addi	x2, x2, -56	# 78
	jal		x1, min_caml_create_float_array	# 78
	addi	x2, x2, 56	# 78
	lw		x1, -52(x2)	# 78
	lw		x4, -20(x2)	# 82
	flw		f1, -8(x2)	# 82
	sw		x1, -52(x2)	# 82
	addi	x2, x2, -56	# 82
	jal		x1, min_caml_create_float_array	# 82
	addi	x2, x2, 56	# 82
	lw		x1, -52(x2)	# 82
	lw		x4, -20(x2)	# 84
	flw		f1, -8(x2)	# 84
	sw		x1, -52(x2)	# 84
	addi	x2, x2, -56	# 84
	jal		x1, min_caml_create_float_array	# 84
	addi	x2, x2, 56	# 84
	lw		x1, -52(x2)	# 84
	lw		x4, -20(x2)	# 86
	flw		f1, -8(x2)	# 86
	sw		x1, -52(x2)	# 86
	addi	x2, x2, -56	# 86
	jal		x1, min_caml_create_float_array	# 86
	addi	x2, x2, 56	# 86
	lw		x1, -52(x2)	# 86
	lw		x4, -20(x2)	# 90
	flw		f1, -8(x2)	# 90
	sw		x1, -52(x2)	# 90
	addi	x2, x2, -56	# 90
	jal		x1, min_caml_create_float_array	# 90
	addi	x2, x2, 56	# 90
	lw		x1, -52(x2)	# 90
	addi	x4, x0, 64504	# 95
	lw		x5, -4(x2)	# 95
	flw		f1, -8(x2)	# 95
	sw		x4, -52(x2)	# 95
	addi	x4, x5, 0	# 95
	sw		x1, -56(x2)	# 95
	addi	x2, x2, -60	# 95
	jal		x1, min_caml_create_float_array	# 95
	addi	x2, x2, 60	# 95
	lw		x1, -56(x2)	# 95
	addi	x4, x0, 64504	# 96
	lw		x5, -4(x2)	# 96
	lw		x6, -52(x2)	# 96
	sw		x4, -56(x2)	# 96
	addi	x4, x5, 0	# 96
	addi	x5, x6, 0	# 96
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
	lw		x6, -4(x2)	# 97
	sw		x4, -60(x2)	# 97
	addi	x4, x6, 0	# 97
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
	lw		x5, -4(x2)	# 103
	flw		f1, -8(x2)	# 103
	sw		x4, -68(x2)	# 103
	addi	x4, x5, 0	# 103
	sw		x1, -72(x2)	# 103
	addi	x2, x2, -76	# 103
	jal		x1, min_caml_create_float_array	# 103
	addi	x2, x2, 76	# 103
	lw		x1, -72(x2)	# 103
	addi	x4, x0, 64532	# 104
	lw		x5, -20(x2)	# 104
	flw		f1, -8(x2)	# 104
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
	lw		x6, -4(x2)	# 111
	flw		f1, -8(x2)	# 111
	sw		x4, -80(x2)	# 111
	sw		x5, -84(x2)	# 111
	addi	x4, x6, 0	# 111
	sw		x1, -88(x2)	# 111
	addi	x2, x2, -92	# 111
	jal		x1, min_caml_create_float_array	# 111
	addi	x2, x2, 92	# 111
	lw		x1, -88(x2)	# 111
	addi	x4, x0, 64792	# 112
	lw		x5, -4(x2)	# 112
	lw		x6, -84(x2)	# 112
	sw		x4, -88(x2)	# 112
	addi	x4, x5, 0	# 112
	addi	x5, x6, 0	# 112
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
	addi	x4, x5, 0	# 114
	addi	x5, x6, 0	# 114
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
	lui		x5, %hi(int_of_float_rem.2530.18012)	# 144
	ori		x5, x0, %lo(int_of_float_rem.2530.18012)	# 144
	sw		x5, 0(x4)	# 149
	lw		x5, 0(x2)	# 149
	sw		x5, 4(x4)	# 149
	addi	x6, x3, 0	# 149
	addi	x3, x3, 8	# 149
	lui		x7, %hi(int_of_float_four.2533.18015)	# 149
	ori		x7, x0, %lo(int_of_float_four.2533.18015)	# 149
	sw		x7, 0(x6)	# 173
	sw		x4, 4(x6)	# 173
	lui		x4, %hi(l.29328)	# 173
	ori		x4, x0, %lo(l.29328)	# 173
	flw		f2, 0(x4)	# 173
	lui		x4, %hi(l.29330)	# 174
	ori		x4, x0, %lo(l.29330)	# 174
	flw		f3, 0(x4)	# 174
	lui		x4, %hi(l.29332)	# 175
	ori		x4, x0, %lo(l.29332)	# 175
	flw		f4, 0(x4)	# 175
	lui		x4, %hi(l.29334)	# 176
	ori		x4, x0, %lo(l.29334)	# 176
	flw		f5, 0(x4)	# 176
	addi	x4, x3, 0	# 198
	addi	x3, x3, 24	# 198
	lui		x7, %hi(sin.2548.18022)	# 198
	ori		x7, x0, %lo(sin.2548.18022)	# 198
	sw		x7, 0(x4)	# 206
	fsw		f5, 20(x4)	# 206
	fsw		f4, 16(x4)	# 206
	fsw		f3, 12(x4)	# 206
	fsw		f2, 8(x4)	# 206
	fsw		f1, 4(x4)	# 206
	addi	x7, x3, 0	# 206
	addi	x3, x3, 20	# 206
	lui		x8, %hi(cos.2550.18024)	# 206
	ori		x8, x0, %lo(cos.2550.18024)	# 206
	sw		x8, 0(x7)	# 211
	sw		x4, 16(x7)	# 211
	fsw		f5, 12(x7)	# 211
	fsw		f4, 8(x7)	# 211
	fsw		f1, 4(x7)	# 211
	addi	x8, x3, 0	# 211
	addi	x3, x3, 16	# 211
	lui		x9, %hi(atan.2552.18026)	# 211
	ori		x9, x0, %lo(atan.2552.18026)	# 211
	sw		x9, 0(x8)	# 897
	fsw		f5, 12(x8)	# 897
	fsw		f4, 8(x8)	# 897
	fsw		f1, 4(x8)	# 897
	addi	x9, x3, 0	# 897
	addi	x3, x3, 40	# 897
	lui		x10, %hi(read_object.2689.18028)	# 897
	ori		x10, x0, %lo(read_object.2689.18028)	# 897
	sw		x10, 0(x9)	# 913
	sw		x4, 36(x9)	# 913
	sw		x7, 32(x9)	# 913
	lw		x10, -48(x2)	# 913
	sw		x10, 28(x9)	# 913
	lw		x11, -28(x2)	# 913
	sw		x11, 24(x9)	# 913
	lw		x12, -20(x2)	# 913
	sw		x12, 20(x9)	# 913
	lw		x13, -16(x2)	# 913
	sw		x13, 16(x9)	# 913
	lw		x13, -4(x2)	# 913
	sw		x13, 12(x9)	# 913
	sw		x5, 8(x9)	# 913
	fsw		f1, 4(x9)	# 913
	addi	x14, x3, 0	# 913
	addi	x3, x3, 12	# 913
	lui		x15, %hi(read_net_item.2693.18030)	# 913
	ori		x15, x0, %lo(read_net_item.2693.18030)	# 913
	sw		x15, 0(x14)	# 921
	sw		x11, 8(x14)	# 921
	sw		x5, 4(x14)	# 921
	addi	x15, x3, 0	# 921
	addi	x3, x3, 20	# 921
	lui		x16, %hi(read_or_network.2695.18032)	# 921
	ori		x16, x0, %lo(read_or_network.2695.18032)	# 921
	sw		x16, 0(x15)	# 930
	sw		x14, 16(x15)	# 930
	sw		x11, 12(x15)	# 930
	sw		x13, 8(x15)	# 930
	sw		x5, 4(x15)	# 930
	addi	x16, x3, 0	# 930
	addi	x3, x3, 20	# 930
	lui		x17, %hi(read_and_network.2697.18034)	# 930
	ori		x17, x0, %lo(read_and_network.2697.18034)	# 930
	sw		x17, 0(x16)	# 1306
	sw		x14, 16(x16)	# 1306
	sw		x11, 12(x16)	# 1306
	sw		x13, 8(x16)	# 1306
	sw		x5, 4(x16)	# 1306
	addi	x14, x3, 0	# 1306
	addi	x3, x3, 28	# 1306
	lui		x17, %hi(iter_setup_dirvec_constants.2794.18036)	# 1306
	ori		x17, x0, %lo(iter_setup_dirvec_constants.2794.18036)	# 1306
	sw		x17, 0(x14)	# 1331
	lw		x17, -64(x2)	# 1331
	sw		x17, 24(x14)	# 1331
	sw		x10, 20(x14)	# 1331
	sw		x12, 16(x14)	# 1331
	sw		x13, 12(x14)	# 1331
	sw		x5, 8(x14)	# 1331
	fsw		f1, 4(x14)	# 1331
	addi	x18, x3, 0	# 1331
	addi	x3, x3, 20	# 1331
	lui		x19, %hi(setup_startp_constants.2799.18039)	# 1331
	ori		x19, x0, %lo(setup_startp_constants.2799.18039)	# 1331
	sw		x19, 0(x18)	# 1400
	sw		x10, 16(x18)	# 1400
	sw		x12, 12(x18)	# 1400
	sw		x13, 8(x18)	# 1400
	sw		x5, 4(x18)	# 1400
	addi	x19, x3, 0	# 1400
	addi	x3, x3, 28	# 1400
	lui		x20, %hi(check_all_inside.2824.18042)	# 1400
	ori		x20, x0, %lo(check_all_inside.2824.18042)	# 1400
	sw		x20, 0(x19)	# 1420
	sw		x10, 24(x19)	# 1420
	sw		x11, 20(x19)	# 1420
	sw		x12, 16(x19)	# 1420
	sw		x13, 12(x19)	# 1420
	sw		x5, 8(x19)	# 1420
	fsw		f1, 4(x19)	# 1420
	addi	x20, x3, 0	# 1420
	addi	x3, x3, 36	# 1420
	lui		x21, %hi(shadow_check_and_group.2830.18048)	# 1420
	ori		x21, x0, %lo(shadow_check_and_group.2830.18048)	# 1420
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
	lui		x22, %hi(shadow_check_one_or_group.2833.18051)	# 1450
	ori		x22, x0, %lo(shadow_check_one_or_group.2833.18051)	# 1450
	sw		x22, 0(x21)	# 1465
	sw		x20, 16(x21)	# 1465
	sw		x11, 12(x21)	# 1465
	sw		x13, 8(x21)	# 1465
	sw		x5, 4(x21)	# 1465
	addi	x20, x3, 0	# 1465
	addi	x3, x3, 36	# 1465
	lui		x22, %hi(shadow_check_one_or_matrix.2836.18054)	# 1465
	ori		x22, x0, %lo(shadow_check_one_or_matrix.2836.18054)	# 1465
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
	lui		x22, %hi(solve_each_element.2839.18057)	# 1501
	ori		x22, x0, %lo(solve_each_element.2839.18057)	# 1501
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
	lui		x23, %hi(solve_one_or_network.2843.18061)	# 1542
	ori		x23, x0, %lo(solve_one_or_network.2843.18061)	# 1542
	sw		x23, 0(x22)	# 1552
	sw		x21, 16(x22)	# 1552
	sw		x11, 12(x22)	# 1552
	sw		x13, 8(x22)	# 1552
	sw		x5, 4(x22)	# 1552
	addi	x21, x3, 0	# 1552
	addi	x3, x3, 32	# 1552
	lui		x23, %hi(trace_or_matrix.2847.18065)	# 1552
	ori		x23, x0, %lo(trace_or_matrix.2847.18065)	# 1552
	sw		x23, 0(x21)	# 1594
	sw		x22, 28(x21)	# 1594
	sw		x10, 24(x21)	# 1594
	sw		x11, 20(x21)	# 1594
	sw		x12, 16(x21)	# 1594
	sw		x13, 12(x21)	# 1594
	sw		x5, 8(x21)	# 1594
	fsw		f1, 4(x21)	# 1594
	addi	x22, x3, 0	# 1594
	addi	x3, x3, 36	# 1594
	lui		x23, %hi(solve_each_element_fast.2853.18069)	# 1594
	ori		x23, x0, %lo(solve_each_element_fast.2853.18069)	# 1594
	sw		x23, 0(x22)	# 1635
	sw		x19, 32(x22)	# 1635
	sw		x17, 28(x22)	# 1635
	sw		x10, 24(x22)	# 1635
	sw		x11, 20(x22)	# 1635
	sw		x12, 16(x22)	# 1635
	sw		x13, 12(x22)	# 1635
	sw		x5, 8(x22)	# 1635
	fsw		f1, 4(x22)	# 1635
	addi	x23, x3, 0	# 1635
	addi	x3, x3, 40	# 1635
	lui		x24, %hi(solve_one_or_network_fast.2857.18073)	# 1635
	ori		x24, x0, %lo(solve_one_or_network_fast.2857.18073)	# 1635
	sw		x24, 0(x23)	# 1645
	sw		x22, 36(x23)	# 1645
	sw		x19, 32(x23)	# 1645
	sw		x17, 28(x23)	# 1645
	sw		x10, 24(x23)	# 1645
	sw		x11, 20(x23)	# 1645
	sw		x12, 16(x23)	# 1645
	sw		x13, 12(x23)	# 1645
	sw		x5, 8(x23)	# 1645
	fsw		f1, 4(x23)	# 1645
	addi	x19, x3, 0	# 1645
	addi	x3, x3, 40	# 1645
	lui		x24, %hi(trace_or_matrix_fast.2861.18077)	# 1645
	ori		x24, x0, %lo(trace_or_matrix_fast.2861.18077)	# 1645
	sw		x24, 0(x19)	# 1839
	sw		x23, 36(x19)	# 1839
	sw		x22, 32(x19)	# 1839
	sw		x17, 28(x19)	# 1839
	sw		x10, 24(x19)	# 1839
	sw		x11, 20(x19)	# 1839
	sw		x12, 16(x19)	# 1839
	sw		x13, 12(x19)	# 1839
	sw		x5, 8(x19)	# 1839
	fsw		f1, 4(x19)	# 1839
	addi	x22, x3, 0	# 1839
	addi	x3, x3, 32	# 1839
	lui		x23, %hi(trace_reflections.2883.18081)	# 1839
	ori		x23, x0, %lo(trace_reflections.2883.18081)	# 1839
	sw		x23, 0(x22)	# 1868
	sw		x19, 28(x22)	# 1868
	sw		x20, 24(x22)	# 1868
	sw		x10, 20(x22)	# 1868
	sw		x13, 16(x22)	# 1868
	sw		x5, 12(x22)	# 1868
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
	sw		x6, 44(x23)	# 1980
	sw		x7, 40(x23)	# 1980
	sw		x8, 36(x23)	# 1980
	sw		x10, 32(x23)	# 1980
	sw		x11, 28(x23)	# 1980
	sw		x12, 24(x23)	# 1980
	sw		x13, 20(x23)	# 1980
	sw		x5, 16(x23)	# 1980
	fsw		f2, 12(x23)	# 1980
	flw		f3, -24(x2)	# 1980
	fsw		f3, 8(x23)	# 1980
	fsw		f1, 4(x23)	# 1980
	addi	x11, x3, 0	# 1980
	addi	x3, x3, 56	# 1980
	lui		x21, %hi(iter_trace_diffuse_rays.2897.18092)	# 1980
	ori		x21, x0, %lo(iter_trace_diffuse_rays.2897.18092)	# 1980
	sw		x21, 0(x11)	# 2071
	sw		x19, 52(x11)	# 2071
	sw		x4, 48(x11)	# 2071
	sw		x20, 44(x11)	# 2071
	sw		x6, 40(x11)	# 2071
	sw		x7, 36(x11)	# 2071
	sw		x8, 32(x11)	# 2071
	sw		x10, 28(x11)	# 2071
	sw		x12, 24(x11)	# 2071
	sw		x13, 20(x11)	# 2071
	sw		x5, 16(x11)	# 2071
	fsw		f2, 12(x11)	# 2071
	fsw		f3, 8(x11)	# 2071
	fsw		f1, 4(x11)	# 2071
	addi	x19, x3, 0	# 2071
	addi	x3, x3, 28	# 2071
	lui		x20, %hi(do_without_neighbors.2919.18097)	# 2071
	ori		x20, x0, %lo(do_without_neighbors.2919.18097)	# 2071
	sw		x20, 0(x19)	# 2123
	sw		x18, 24(x19)	# 2123
	sw		x11, 20(x19)	# 2123
	sw		x10, 16(x19)	# 2123
	sw		x12, 12(x19)	# 2123
	sw		x13, 8(x19)	# 2123
	sw		x5, 4(x19)	# 2123
	addi	x20, x3, 0	# 2123
	addi	x3, x3, 20	# 2123
	lui		x21, %hi(try_exploit_neighbors.2935.18100)	# 2123
	ori		x21, x0, %lo(try_exploit_neighbors.2935.18100)	# 2123
	sw		x21, 0(x20)	# 2199
	sw		x19, 16(x20)	# 2199
	sw		x10, 12(x20)	# 2199
	sw		x13, 8(x20)	# 2199
	sw		x5, 4(x20)	# 2199
	addi	x21, x3, 0	# 2199
	addi	x3, x3, 28	# 2199
	lui		x22, %hi(pretrace_diffuse_rays.2950.18107)	# 2199
	ori		x22, x0, %lo(pretrace_diffuse_rays.2950.18107)	# 2199
	sw		x22, 0(x21)	# 2229
	sw		x18, 24(x21)	# 2229
	sw		x11, 20(x21)	# 2229
	sw		x10, 16(x21)	# 2229
	sw		x13, 12(x21)	# 2229
	sw		x5, 8(x21)	# 2229
	fsw		f1, 4(x21)	# 2229
	addi	x11, x3, 0	# 2229
	addi	x3, x3, 32	# 2229
	lui		x18, %hi(pretrace_pixels.2953.18110)	# 2229
	ori		x18, x0, %lo(pretrace_pixels.2953.18110)	# 2229
	sw		x18, 0(x11)	# 2270
	sw		x23, 28(x11)	# 2270
	sw		x21, 24(x11)	# 2270
	sw		x17, 20(x11)	# 2270
	sw		x10, 16(x11)	# 2270
	sw		x13, 12(x11)	# 2270
	sw		x5, 8(x11)	# 2270
	fsw		f1, 4(x11)	# 2270
	addi	x18, x3, 0	# 2270
	addi	x3, x3, 32	# 2270
	lui		x21, %hi(scan_pixel.2964.18117)	# 2270
	ori		x21, x0, %lo(scan_pixel.2964.18117)	# 2270
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
	lui		x19, %hi(scan_line.2971.18124)	# 2290
	ori		x19, x0, %lo(scan_line.2971.18124)	# 2290
	sw		x19, 0(x6)	# 2333
	sw		x18, 24(x6)	# 2333
	sw		x11, 20(x6)	# 2333
	sw		x17, 16(x6)	# 2333
	sw		x10, 12(x6)	# 2333
	sw		x13, 8(x6)	# 2333
	sw		x5, 4(x6)	# 2333
	addi	x18, x3, 0	# 2333
	addi	x3, x3, 28	# 2333
	lui		x19, %hi(init_line_elements.2982.18131)	# 2333
	ori		x19, x0, %lo(init_line_elements.2982.18131)	# 2333
	sw		x19, 0(x18)	# 2370
	sw		x17, 24(x18)	# 2370
	sw		x10, 20(x18)	# 2370
	sw		x12, 16(x18)	# 2370
	sw		x13, 12(x18)	# 2370
	sw		x5, 8(x18)	# 2370
	fsw		f1, 4(x18)	# 2370
	addi	x19, x3, 0	# 2370
	addi	x3, x3, 32	# 2370
	lui		x20, %hi(calc_dirvec.2992.18134)	# 2370
	ori		x20, x0, %lo(calc_dirvec.2992.18134)	# 2370
	sw		x20, 0(x19)	# 2391
	sw		x4, 28(x19)	# 2391
	sw		x7, 24(x19)	# 2391
	sw		x8, 20(x19)	# 2391
	sw		x17, 16(x19)	# 2391
	sw		x10, 12(x19)	# 2391
	sw		x13, 8(x19)	# 2391
	sw		x5, 4(x19)	# 2391
	addi	x8, x3, 0	# 2391
	addi	x3, x3, 28	# 2391
	lui		x20, %hi(calc_dirvecs.3000.18142)	# 2391
	ori		x20, x0, %lo(calc_dirvecs.3000.18142)	# 2391
	sw		x20, 0(x8)	# 2405
	sw		x19, 24(x8)	# 2405
	sw		x17, 20(x8)	# 2405
	sw		x10, 16(x8)	# 2405
	sw		x13, 12(x8)	# 2405
	sw		x5, 8(x8)	# 2405
	fsw		f1, 4(x8)	# 2405
	addi	x19, x3, 0	# 2405
	addi	x3, x3, 24	# 2405
	lui		x20, %hi(calc_dirvec_rows.3005.18147)	# 2405
	ori		x20, x0, %lo(calc_dirvec_rows.3005.18147)	# 2405
	sw		x20, 0(x19)	# 2424
	sw		x8, 20(x19)	# 2424
	sw		x17, 16(x19)	# 2424
	sw		x10, 12(x19)	# 2424
	sw		x13, 8(x19)	# 2424
	sw		x5, 4(x19)	# 2424
	addi	x8, x3, 0	# 2424
	addi	x3, x3, 20	# 2424
	lui		x20, %hi(create_dirvec_elements.3011.18151)	# 2424
	ori		x20, x0, %lo(create_dirvec_elements.3011.18151)	# 2424
	sw		x20, 0(x8)	# 2431
	sw		x12, 16(x8)	# 2431
	sw		x13, 12(x8)	# 2431
	sw		x5, 8(x8)	# 2431
	fsw		f1, 4(x8)	# 2431
	addi	x20, x3, 0	# 2431
	addi	x3, x3, 24	# 2431
	lui		x21, %hi(create_dirvecs.3014.18154)	# 2431
	ori		x21, x0, %lo(create_dirvecs.3014.18154)	# 2431
	sw		x21, 0(x20)	# 2443
	sw		x8, 20(x20)	# 2443
	sw		x12, 16(x20)	# 2443
	sw		x13, 12(x20)	# 2443
	sw		x5, 8(x20)	# 2443
	fsw		f1, 4(x20)	# 2443
	addi	x8, x3, 0	# 2443
	addi	x3, x3, 16	# 2443
	lui		x21, %hi(init_dirvec_constants.3016.18156)	# 2443
	ori		x21, x0, %lo(init_dirvec_constants.3016.18156)	# 2443
	sw		x21, 0(x8)	# 2450
	sw		x14, 12(x8)	# 2450
	sw		x13, 8(x8)	# 2450
	sw		x5, 4(x8)	# 2450
	addi	x21, x3, 0	# 2450
	addi	x3, x3, 16	# 2450
	lui		x22, %hi(init_vecset_constants.3019.18159)	# 2450
	ori		x22, x0, %lo(init_vecset_constants.3019.18159)	# 2450
	sw		x22, 0(x21)	# 2549
	sw		x8, 12(x21)	# 2549
	sw		x13, 8(x21)	# 2549
	sw		x5, 4(x21)	# 2549
	addi	x8, x0, 256	# 2549
	mul		x22, x30, x13	# 2529
	addi	x22, x22, 64412	# 2529
	sw		x8, 0(x22)	# 2529
	mul		x22, x30, x5	# 2530
	addi	x22, x22, 64412	# 2530
	sw		x8, 0(x22)	# 2530
	addi	x22, x0, 128	# 2531
	mul		x23, x30, x13	# 2531
	addi	x23, x23, 64420	# 2531
	sw		x22, 0(x23)	# 2531
	mul		x23, x30, x5	# 2532
	addi	x23, x23, 64420	# 2532
	sw		x22, 0(x23)	# 2532
	lui		x22, %hi(l.29344)	# 2533
	ori		x22, x0, %lo(l.29344)	# 2533
	flw		f2, 0(x22)	# 2533
	sw		x6, -92(x2)	# 2533
	sw		x4, -96(x2)	# 2533
	fsw		f2, -100(x2)	# 2533
	addi	x4, x8, 0	# 2533
	sw		x1, -104(x2)	# 2533
	addi	x2, x2, -108	# 2533
	jal		x1, min_caml_float_of_int	# 2533
	addi	x2, x2, 108	# 2533
	lw		x1, -104(x2)	# 2533
	flw		f2, -100(x2)	# 2533
	fdiv	f1, f2, f1	# 2533
	mul		x4, x30, x13	# 2533
	addi	x4, x4, 64428	# 2533
	fsw		f1, 0(x4)	# 2533
	mul		x4, x30, x13	# 2343
	addi	x4, x4, 64412	# 2343
	lw		x4, 0(x4)	# 2343
	flw		f1, -8(x2)	# 2321
	sw		x4, -104(x2)	# 2321
	addi	x4, x12, 0	# 2321
	sw		x1, -108(x2)	# 2321
	addi	x2, x2, -112	# 2321
	jal		x1, min_caml_create_float_array	# 2321
	addi	x2, x2, 112	# 2321
	lw		x1, -108(x2)	# 2321
	lw		x5, -20(x2)	# 2309
	flw		f1, -8(x2)	# 2309
	sw		x4, -108(x2)	# 2309
	addi	x4, x5, 0	# 2309
	sw		x1, -112(x2)	# 2309
	addi	x2, x2, -116	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 116	# 2309
	lw		x1, -112(x2)	# 2309
	addi	x5, x4, 0	# 2309
	addi	x4, x17, 0	# 2310
	sw		x1, -112(x2)	# 2310
	addi	x2, x2, -116	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 116	# 2310
	lw		x1, -112(x2)	# 2310
	lw		x5, -20(x2)	# 2311
	flw		f1, -8(x2)	# 2311
	sw		x4, -112(x2)	# 2311
	addi	x4, x5, 0	# 2311
	sw		x1, -116(x2)	# 2311
	addi	x2, x2, -120	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 120	# 2311
	lw		x1, -116(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x8, -112(x2)	# 2311
	add		x6, x8, x6	# 2311
	sw		x4, 0(x6)	# 2311
	lw		x4, -20(x2)	# 2312
	flw		f1, -8(x2)	# 2312
	sw		x1, -116(x2)	# 2312
	addi	x2, x2, -120	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 120	# 2312
	lw		x1, -116(x2)	# 2312
	mul		x5, x30, x10	# 2312
	add		x5, x8, x5	# 2312
	sw		x4, 0(x5)	# 2312
	lw		x4, -20(x2)	# 2313
	flw		f1, -8(x2)	# 2313
	sw		x1, -116(x2)	# 2313
	addi	x2, x2, -120	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 120	# 2313
	lw		x1, -116(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	add		x6, x8, x6	# 2313
	sw		x4, 0(x6)	# 2313
	addi	x4, x0, 4	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -116(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -120(x2)	# 2314
	addi	x2, x2, -124	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 124	# 2314
	lw		x1, -120(x2)	# 2314
	lw		x5, -116(x2)	# 2314
	mul		x6, x30, x5	# 2314
	add		x6, x8, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -64(x2)	# 2323
	addi	x5, x13, 0	# 2323
	sw		x1, -120(x2)	# 2323
	addi	x2, x2, -124	# 2323
	jal		x1, min_caml_create_array	# 2323
	addi	x2, x2, 124	# 2323
	lw		x1, -120(x2)	# 2323
	lw		x5, -64(x2)	# 2324
	lw		x6, -4(x2)	# 2324
	sw		x4, -120(x2)	# 2324
	addi	x4, x5, 0	# 2324
	addi	x5, x6, 0	# 2324
	sw		x1, -124(x2)	# 2324
	addi	x2, x2, -128	# 2324
	jal		x1, min_caml_create_array	# 2324
	addi	x2, x2, 128	# 2324
	lw		x1, -124(x2)	# 2324
	lw		x5, -20(x2)	# 2309
	flw		f1, -8(x2)	# 2309
	sw		x4, -124(x2)	# 2309
	addi	x4, x5, 0	# 2309
	sw		x1, -128(x2)	# 2309
	addi	x2, x2, -132	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 132	# 2309
	lw		x1, -128(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -128(x2)	# 2310
	addi	x2, x2, -132	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 132	# 2310
	lw		x1, -128(x2)	# 2310
	lw		x5, -20(x2)	# 2311
	flw		f1, -8(x2)	# 2311
	sw		x4, -128(x2)	# 2311
	addi	x4, x5, 0	# 2311
	sw		x1, -132(x2)	# 2311
	addi	x2, x2, -136	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 136	# 2311
	lw		x1, -132(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x12, -128(x2)	# 2311
	add		x6, x12, x6	# 2311
	sw		x4, 0(x6)	# 2311
	lw		x4, -20(x2)	# 2312
	flw		f1, -8(x2)	# 2312
	sw		x1, -132(x2)	# 2312
	addi	x2, x2, -136	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 136	# 2312
	lw		x1, -132(x2)	# 2312
	mul		x5, x30, x10	# 2312
	add		x5, x12, x5	# 2312
	sw		x4, 0(x5)	# 2312
	lw		x4, -20(x2)	# 2313
	flw		f1, -8(x2)	# 2313
	sw		x1, -132(x2)	# 2313
	addi	x2, x2, -136	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 136	# 2313
	lw		x1, -132(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	add		x6, x12, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -132(x2)	# 2314
	addi	x2, x2, -136	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 136	# 2314
	lw		x1, -132(x2)	# 2314
	lw		x5, -116(x2)	# 2314
	mul		x6, x30, x5	# 2314
	add		x6, x12, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -20(x2)	# 2309
	flw		f1, -8(x2)	# 2309
	sw		x1, -132(x2)	# 2309
	addi	x2, x2, -136	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 136	# 2309
	lw		x1, -132(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -132(x2)	# 2310
	addi	x2, x2, -136	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 136	# 2310
	lw		x1, -132(x2)	# 2310
	lw		x5, -20(x2)	# 2311
	flw		f1, -8(x2)	# 2311
	sw		x4, -132(x2)	# 2311
	addi	x4, x5, 0	# 2311
	sw		x1, -136(x2)	# 2311
	addi	x2, x2, -140	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 140	# 2311
	lw		x1, -136(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x13, -132(x2)	# 2311
	add		x6, x13, x6	# 2311
	sw		x4, 0(x6)	# 2311
	lw		x4, -20(x2)	# 2312
	flw		f1, -8(x2)	# 2312
	sw		x1, -136(x2)	# 2312
	addi	x2, x2, -140	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 140	# 2312
	lw		x1, -136(x2)	# 2312
	mul		x5, x30, x10	# 2312
	add		x5, x13, x5	# 2312
	sw		x4, 0(x5)	# 2312
	lw		x4, -20(x2)	# 2313
	flw		f1, -8(x2)	# 2313
	sw		x1, -136(x2)	# 2313
	addi	x2, x2, -140	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 140	# 2313
	lw		x1, -136(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	add		x6, x13, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -136(x2)	# 2314
	addi	x2, x2, -140	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 140	# 2314
	lw		x1, -136(x2)	# 2314
	lw		x5, -116(x2)	# 2314
	mul		x6, x30, x5	# 2314
	add		x6, x13, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, 0(x2)	# 2327
	lw		x6, -4(x2)	# 2327
	addi	x5, x6, 0	# 2327
	sw		x1, -136(x2)	# 2327
	addi	x2, x2, -140	# 2327
	jal		x1, min_caml_create_array	# 2327
	addi	x2, x2, 140	# 2327
	lw		x1, -136(x2)	# 2327
	lw		x5, -20(x2)	# 2309
	flw		f1, -8(x2)	# 2309
	sw		x4, -136(x2)	# 2309
	addi	x4, x5, 0	# 2309
	sw		x1, -140(x2)	# 2309
	addi	x2, x2, -144	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 144	# 2309
	lw		x1, -140(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -140(x2)	# 2310
	addi	x2, x2, -144	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 144	# 2310
	lw		x1, -140(x2)	# 2310
	lw		x5, -20(x2)	# 2311
	flw		f1, -8(x2)	# 2311
	sw		x4, -140(x2)	# 2311
	addi	x4, x5, 0	# 2311
	sw		x1, -144(x2)	# 2311
	addi	x2, x2, -148	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 148	# 2311
	lw		x1, -144(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x17, -140(x2)	# 2311
	add		x6, x17, x6	# 2311
	sw		x4, 0(x6)	# 2311
	lw		x4, -20(x2)	# 2312
	flw		f1, -8(x2)	# 2312
	sw		x1, -144(x2)	# 2312
	addi	x2, x2, -148	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 148	# 2312
	lw		x1, -144(x2)	# 2312
	mul		x5, x30, x10	# 2312
	add		x5, x17, x5	# 2312
	sw		x4, 0(x5)	# 2312
	lw		x4, -20(x2)	# 2313
	flw		f1, -8(x2)	# 2313
	sw		x1, -144(x2)	# 2313
	addi	x2, x2, -148	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 148	# 2313
	lw		x1, -144(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	add		x6, x17, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -144(x2)	# 2314
	addi	x2, x2, -148	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 148	# 2314
	lw		x1, -144(x2)	# 2314
	lw		x5, -116(x2)	# 2314
	mul		x6, x30, x5	# 2314
	add		x6, x17, x6	# 2314
	sw		x4, 0(x6)	# 2314
	addi	x4, x3, 0	# 2329
	addi	x3, x3, 32	# 2329
	sw		x17, 28(x4)	# 2329
	lw		x6, -136(x2)	# 2329
	sw		x6, 24(x4)	# 2329
	sw		x13, 20(x4)	# 2329
	sw		x12, 16(x4)	# 2329
	lw		x6, -124(x2)	# 2329
	sw		x6, 12(x4)	# 2329
	lw		x6, -120(x2)	# 2329
	sw		x6, 8(x4)	# 2329
	sw		x8, 4(x4)	# 2329
	lw		x6, -108(x2)	# 2329
	sw		x6, 0(x4)	# 2329
	lw		x6, -104(x2)	# 2343
	addi	x5, x4, 0	# 2343
	addi	x4, x6, 0	# 2343
	sw		x1, -144(x2)	# 2343
	addi	x2, x2, -148	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 148	# 2343
	lw		x1, -144(x2)	# 2343
	lw		x5, -4(x2)	# 2344
	mul		x6, x30, x5	# 2344
	addi	x6, x6, 64412	# 2344
	lw		x6, 0(x6)	# 2344
	sub		x6, x6, x10	# 2344
	sw		x9, -144(x2)	# 2344
	sw		x7, -148(x2)	# 2344
	addi	x5, x6, 0	# 2344
	addi	x29, x18, 0	# 2344
	sw		x1, -152(x2)	# 2344
	addi	x2, x2, -156	# 2344
	lw		x31, 0(x29)	# 2344
	jalr	x1, x31, 0	# 2344
	addi	x2, x2, 156	# 2344
	lw		x1, -152(x2)	# 2344
	lw		x5, -4(x2)	# 2343
	mul		x6, x30, x5	# 2343
	addi	x6, x6, 64412	# 2343
	lw		x6, 0(x6)	# 2343
	lw		x7, -20(x2)	# 2321
	flw		f1, -8(x2)	# 2321
	sw		x4, -152(x2)	# 2321
	addi	x4, x7, 0	# 2321
	sw		x1, -156(x2)	# 2321
	addi	x2, x2, -160	# 2321
	jal		x1, min_caml_create_float_array	# 2321
	addi	x2, x2, 160	# 2321
	lw		x1, -156(x2)	# 2321
	lw		x5, -20(x2)	# 2309
	flw		f1, -8(x2)	# 2309
	sw		x4, -156(x2)	# 2309
	addi	x4, x5, 0	# 2309
	sw		x1, -160(x2)	# 2309
	addi	x2, x2, -164	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 164	# 2309
	lw		x1, -160(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x6, -160(x2)	# 2310
	sw		x1, -164(x2)	# 2310
	addi	x2, x2, -168	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 168	# 2310
	lw		x1, -164(x2)	# 2310
	lw		x5, -20(x2)	# 2311
	flw		f1, -8(x2)	# 2311
	sw		x4, -164(x2)	# 2311
	addi	x4, x5, 0	# 2311
	sw		x1, -168(x2)	# 2311
	addi	x2, x2, -172	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 172	# 2311
	lw		x1, -168(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -164(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	lw		x4, -20(x2)	# 2312
	flw		f1, -8(x2)	# 2312
	sw		x1, -168(x2)	# 2312
	addi	x2, x2, -172	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 172	# 2312
	lw		x1, -168(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	lw		x4, -20(x2)	# 2313
	flw		f1, -8(x2)	# 2313
	sw		x1, -168(x2)	# 2313
	addi	x2, x2, -172	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 172	# 2313
	lw		x1, -168(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -168(x2)	# 2314
	addi	x2, x2, -172	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 172	# 2314
	lw		x1, -168(x2)	# 2314
	lw		x5, -116(x2)	# 2314
	mul		x6, x30, x5	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -64(x2)	# 2323
	lw		x6, -4(x2)	# 2323
	addi	x5, x6, 0	# 2323
	sw		x1, -168(x2)	# 2323
	addi	x2, x2, -172	# 2323
	jal		x1, min_caml_create_array	# 2323
	addi	x2, x2, 172	# 2323
	lw		x1, -168(x2)	# 2323
	lw		x5, -64(x2)	# 2324
	lw		x6, -4(x2)	# 2324
	sw		x4, -168(x2)	# 2324
	addi	x4, x5, 0	# 2324
	addi	x5, x6, 0	# 2324
	sw		x1, -172(x2)	# 2324
	addi	x2, x2, -176	# 2324
	jal		x1, min_caml_create_array	# 2324
	addi	x2, x2, 176	# 2324
	lw		x1, -172(x2)	# 2324
	lw		x5, -20(x2)	# 2309
	flw		f1, -8(x2)	# 2309
	sw		x4, -172(x2)	# 2309
	addi	x4, x5, 0	# 2309
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
	lw		x5, -20(x2)	# 2311
	flw		f1, -8(x2)	# 2311
	sw		x4, -176(x2)	# 2311
	addi	x4, x5, 0	# 2311
	sw		x1, -180(x2)	# 2311
	addi	x2, x2, -184	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 184	# 2311
	lw		x1, -180(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x8, -176(x2)	# 2311
	add		x6, x8, x6	# 2311
	sw		x4, 0(x6)	# 2311
	lw		x4, -20(x2)	# 2312
	flw		f1, -8(x2)	# 2312
	sw		x1, -180(x2)	# 2312
	addi	x2, x2, -184	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 184	# 2312
	lw		x1, -180(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	add		x6, x8, x6	# 2312
	sw		x4, 0(x6)	# 2312
	lw		x4, -20(x2)	# 2313
	flw		f1, -8(x2)	# 2313
	sw		x1, -180(x2)	# 2313
	addi	x2, x2, -184	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 184	# 2313
	lw		x1, -180(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	add		x6, x8, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -180(x2)	# 2314
	addi	x2, x2, -184	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 184	# 2314
	lw		x1, -180(x2)	# 2314
	lw		x5, -116(x2)	# 2314
	mul		x6, x30, x5	# 2314
	add		x6, x8, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -20(x2)	# 2309
	flw		f1, -8(x2)	# 2309
	sw		x1, -180(x2)	# 2309
	addi	x2, x2, -184	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 184	# 2309
	lw		x1, -180(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -180(x2)	# 2310
	addi	x2, x2, -184	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 184	# 2310
	lw		x1, -180(x2)	# 2310
	lw		x5, -20(x2)	# 2311
	flw		f1, -8(x2)	# 2311
	sw		x4, -180(x2)	# 2311
	addi	x4, x5, 0	# 2311
	sw		x1, -184(x2)	# 2311
	addi	x2, x2, -188	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 188	# 2311
	lw		x1, -184(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x9, -180(x2)	# 2311
	add		x6, x9, x6	# 2311
	sw		x4, 0(x6)	# 2311
	lw		x4, -20(x2)	# 2312
	flw		f1, -8(x2)	# 2312
	sw		x1, -184(x2)	# 2312
	addi	x2, x2, -188	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 188	# 2312
	lw		x1, -184(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	add		x6, x9, x6	# 2312
	sw		x4, 0(x6)	# 2312
	lw		x4, -20(x2)	# 2313
	flw		f1, -8(x2)	# 2313
	sw		x1, -184(x2)	# 2313
	addi	x2, x2, -188	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 188	# 2313
	lw		x1, -184(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	add		x6, x9, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -184(x2)	# 2314
	addi	x2, x2, -188	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 188	# 2314
	lw		x1, -184(x2)	# 2314
	lw		x5, -116(x2)	# 2314
	mul		x6, x30, x5	# 2314
	add		x6, x9, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, 0(x2)	# 2327
	lw		x6, -4(x2)	# 2327
	addi	x5, x6, 0	# 2327
	sw		x1, -184(x2)	# 2327
	addi	x2, x2, -188	# 2327
	jal		x1, min_caml_create_array	# 2327
	addi	x2, x2, 188	# 2327
	lw		x1, -184(x2)	# 2327
	lw		x5, -20(x2)	# 2309
	flw		f1, -8(x2)	# 2309
	sw		x4, -184(x2)	# 2309
	addi	x4, x5, 0	# 2309
	sw		x1, -188(x2)	# 2309
	addi	x2, x2, -192	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 192	# 2309
	lw		x1, -188(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -188(x2)	# 2310
	addi	x2, x2, -192	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 192	# 2310
	lw		x1, -188(x2)	# 2310
	lw		x5, -20(x2)	# 2311
	flw		f1, -8(x2)	# 2311
	sw		x4, -188(x2)	# 2311
	addi	x4, x5, 0	# 2311
	sw		x1, -192(x2)	# 2311
	addi	x2, x2, -196	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 196	# 2311
	lw		x1, -192(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x10, -188(x2)	# 2311
	add		x6, x10, x6	# 2311
	sw		x4, 0(x6)	# 2311
	lw		x4, -20(x2)	# 2312
	flw		f1, -8(x2)	# 2312
	sw		x1, -192(x2)	# 2312
	addi	x2, x2, -196	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 196	# 2312
	lw		x1, -192(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	add		x6, x10, x6	# 2312
	sw		x4, 0(x6)	# 2312
	lw		x4, -20(x2)	# 2313
	flw		f1, -8(x2)	# 2313
	sw		x1, -192(x2)	# 2313
	addi	x2, x2, -196	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 196	# 2313
	lw		x1, -192(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	add		x6, x10, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -192(x2)	# 2314
	addi	x2, x2, -196	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 196	# 2314
	lw		x1, -192(x2)	# 2314
	lw		x5, -116(x2)	# 2314
	mul		x6, x30, x5	# 2314
	add		x6, x10, x6	# 2314
	sw		x4, 0(x6)	# 2314
	addi	x4, x3, 0	# 2329
	addi	x3, x3, 32	# 2329
	sw		x10, 28(x4)	# 2329
	lw		x6, -184(x2)	# 2329
	sw		x6, 24(x4)	# 2329
	sw		x9, 20(x4)	# 2329
	sw		x8, 16(x4)	# 2329
	lw		x6, -172(x2)	# 2329
	sw		x6, 12(x4)	# 2329
	lw		x6, -168(x2)	# 2329
	sw		x6, 8(x4)	# 2329
	sw		x7, 4(x4)	# 2329
	lw		x6, -156(x2)	# 2329
	sw		x6, 0(x4)	# 2329
	lw		x6, -160(x2)	# 2343
	addi	x5, x4, 0	# 2343
	addi	x4, x6, 0	# 2343
	sw		x1, -192(x2)	# 2343
	addi	x2, x2, -196	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 196	# 2343
	lw		x1, -192(x2)	# 2343
	lw		x5, -4(x2)	# 2344
	mul		x6, x30, x5	# 2344
	addi	x6, x6, 64412	# 2344
	lw		x6, 0(x6)	# 2344
	lw		x7, -48(x2)	# 2344
	sub		x6, x6, x7	# 2344
	addi	x5, x6, 0	# 2344
	addi	x29, x18, 0	# 2344
	sw		x1, -192(x2)	# 2344
	addi	x2, x2, -196	# 2344
	lw		x31, 0(x29)	# 2344
	jalr	x1, x31, 0	# 2344
	addi	x2, x2, 196	# 2344
	lw		x1, -192(x2)	# 2344
	lw		x5, -4(x2)	# 2343
	mul		x6, x30, x5	# 2343
	addi	x6, x6, 64412	# 2343
	lw		x6, 0(x6)	# 2343
	lw		x7, -20(x2)	# 2321
	flw		f1, -8(x2)	# 2321
	sw		x4, -192(x2)	# 2321
	addi	x4, x7, 0	# 2321
	sw		x1, -196(x2)	# 2321
	addi	x2, x2, -200	# 2321
	jal		x1, min_caml_create_float_array	# 2321
	addi	x2, x2, 200	# 2321
	lw		x1, -196(x2)	# 2321
	lw		x5, -20(x2)	# 2309
	flw		f1, -8(x2)	# 2309
	sw		x4, -196(x2)	# 2309
	addi	x4, x5, 0	# 2309
	sw		x1, -200(x2)	# 2309
	addi	x2, x2, -204	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 204	# 2309
	lw		x1, -200(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x6, -200(x2)	# 2310
	sw		x1, -204(x2)	# 2310
	addi	x2, x2, -208	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 208	# 2310
	lw		x1, -204(x2)	# 2310
	lw		x5, -20(x2)	# 2311
	flw		f1, -8(x2)	# 2311
	sw		x4, -204(x2)	# 2311
	addi	x4, x5, 0	# 2311
	sw		x1, -208(x2)	# 2311
	addi	x2, x2, -212	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 212	# 2311
	lw		x1, -208(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x7, -204(x2)	# 2311
	add		x6, x7, x6	# 2311
	sw		x4, 0(x6)	# 2311
	lw		x4, -20(x2)	# 2312
	flw		f1, -8(x2)	# 2312
	sw		x1, -208(x2)	# 2312
	addi	x2, x2, -212	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 212	# 2312
	lw		x1, -208(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	lw		x4, -20(x2)	# 2313
	flw		f1, -8(x2)	# 2313
	sw		x1, -208(x2)	# 2313
	addi	x2, x2, -212	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 212	# 2313
	lw		x1, -208(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	add		x6, x7, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -208(x2)	# 2314
	addi	x2, x2, -212	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 212	# 2314
	lw		x1, -208(x2)	# 2314
	lw		x5, -116(x2)	# 2314
	mul		x6, x30, x5	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -64(x2)	# 2323
	lw		x6, -4(x2)	# 2323
	addi	x5, x6, 0	# 2323
	sw		x1, -208(x2)	# 2323
	addi	x2, x2, -212	# 2323
	jal		x1, min_caml_create_array	# 2323
	addi	x2, x2, 212	# 2323
	lw		x1, -208(x2)	# 2323
	lw		x5, -64(x2)	# 2324
	lw		x6, -4(x2)	# 2324
	sw		x4, -208(x2)	# 2324
	addi	x4, x5, 0	# 2324
	addi	x5, x6, 0	# 2324
	sw		x1, -212(x2)	# 2324
	addi	x2, x2, -216	# 2324
	jal		x1, min_caml_create_array	# 2324
	addi	x2, x2, 216	# 2324
	lw		x1, -212(x2)	# 2324
	lw		x5, -20(x2)	# 2309
	flw		f1, -8(x2)	# 2309
	sw		x4, -212(x2)	# 2309
	addi	x4, x5, 0	# 2309
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
	lw		x5, -20(x2)	# 2311
	flw		f1, -8(x2)	# 2311
	sw		x4, -216(x2)	# 2311
	addi	x4, x5, 0	# 2311
	sw		x1, -220(x2)	# 2311
	addi	x2, x2, -224	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 224	# 2311
	lw		x1, -220(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x8, -216(x2)	# 2311
	add		x6, x8, x6	# 2311
	sw		x4, 0(x6)	# 2311
	lw		x4, -20(x2)	# 2312
	flw		f1, -8(x2)	# 2312
	sw		x1, -220(x2)	# 2312
	addi	x2, x2, -224	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 224	# 2312
	lw		x1, -220(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	add		x6, x8, x6	# 2312
	sw		x4, 0(x6)	# 2312
	lw		x4, -20(x2)	# 2313
	flw		f1, -8(x2)	# 2313
	sw		x1, -220(x2)	# 2313
	addi	x2, x2, -224	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 224	# 2313
	lw		x1, -220(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	add		x6, x8, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -220(x2)	# 2314
	addi	x2, x2, -224	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 224	# 2314
	lw		x1, -220(x2)	# 2314
	lw		x5, -116(x2)	# 2314
	mul		x6, x30, x5	# 2314
	add		x6, x8, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -20(x2)	# 2309
	flw		f1, -8(x2)	# 2309
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
	lw		x5, -20(x2)	# 2311
	flw		f1, -8(x2)	# 2311
	sw		x4, -220(x2)	# 2311
	addi	x4, x5, 0	# 2311
	sw		x1, -224(x2)	# 2311
	addi	x2, x2, -228	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 228	# 2311
	lw		x1, -224(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x9, -220(x2)	# 2311
	add		x6, x9, x6	# 2311
	sw		x4, 0(x6)	# 2311
	lw		x4, -20(x2)	# 2312
	flw		f1, -8(x2)	# 2312
	sw		x1, -224(x2)	# 2312
	addi	x2, x2, -228	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 228	# 2312
	lw		x1, -224(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	add		x6, x9, x6	# 2312
	sw		x4, 0(x6)	# 2312
	lw		x4, -20(x2)	# 2313
	flw		f1, -8(x2)	# 2313
	sw		x1, -224(x2)	# 2313
	addi	x2, x2, -228	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 228	# 2313
	lw		x1, -224(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	add		x6, x9, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -224(x2)	# 2314
	addi	x2, x2, -228	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 228	# 2314
	lw		x1, -224(x2)	# 2314
	lw		x5, -116(x2)	# 2314
	mul		x6, x30, x5	# 2314
	add		x6, x9, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, 0(x2)	# 2327
	lw		x6, -4(x2)	# 2327
	addi	x5, x6, 0	# 2327
	sw		x1, -224(x2)	# 2327
	addi	x2, x2, -228	# 2327
	jal		x1, min_caml_create_array	# 2327
	addi	x2, x2, 228	# 2327
	lw		x1, -224(x2)	# 2327
	lw		x5, -20(x2)	# 2309
	flw		f1, -8(x2)	# 2309
	sw		x4, -224(x2)	# 2309
	addi	x4, x5, 0	# 2309
	sw		x1, -228(x2)	# 2309
	addi	x2, x2, -232	# 2309
	jal		x1, min_caml_create_float_array	# 2309
	addi	x2, x2, 232	# 2309
	lw		x1, -228(x2)	# 2309
	addi	x5, x4, 0	# 2309
	lw		x4, -64(x2)	# 2310
	sw		x1, -228(x2)	# 2310
	addi	x2, x2, -232	# 2310
	jal		x1, min_caml_create_array	# 2310
	addi	x2, x2, 232	# 2310
	lw		x1, -228(x2)	# 2310
	lw		x5, -20(x2)	# 2311
	flw		f1, -8(x2)	# 2311
	sw		x4, -228(x2)	# 2311
	addi	x4, x5, 0	# 2311
	sw		x1, -232(x2)	# 2311
	addi	x2, x2, -236	# 2311
	jal		x1, min_caml_create_float_array	# 2311
	addi	x2, x2, 236	# 2311
	lw		x1, -232(x2)	# 2311
	lw		x5, 0(x2)	# 2311
	mul		x6, x30, x5	# 2311
	lw		x10, -228(x2)	# 2311
	add		x6, x10, x6	# 2311
	sw		x4, 0(x6)	# 2311
	lw		x4, -20(x2)	# 2312
	flw		f1, -8(x2)	# 2312
	sw		x1, -232(x2)	# 2312
	addi	x2, x2, -236	# 2312
	jal		x1, min_caml_create_float_array	# 2312
	addi	x2, x2, 236	# 2312
	lw		x1, -232(x2)	# 2312
	lw		x5, -48(x2)	# 2312
	mul		x6, x30, x5	# 2312
	add		x6, x10, x6	# 2312
	sw		x4, 0(x6)	# 2312
	lw		x4, -20(x2)	# 2313
	flw		f1, -8(x2)	# 2313
	sw		x1, -232(x2)	# 2313
	addi	x2, x2, -236	# 2313
	jal		x1, min_caml_create_float_array	# 2313
	addi	x2, x2, 236	# 2313
	lw		x1, -232(x2)	# 2313
	lw		x5, -20(x2)	# 2313
	mul		x6, x30, x5	# 2313
	add		x6, x10, x6	# 2313
	sw		x4, 0(x6)	# 2313
	flw		f1, -8(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -232(x2)	# 2314
	addi	x2, x2, -236	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 236	# 2314
	lw		x1, -232(x2)	# 2314
	lw		x5, -116(x2)	# 2314
	mul		x6, x30, x5	# 2314
	add		x6, x10, x6	# 2314
	sw		x4, 0(x6)	# 2314
	addi	x4, x3, 0	# 2329
	addi	x3, x3, 32	# 2329
	sw		x10, 28(x4)	# 2329
	lw		x6, -224(x2)	# 2329
	sw		x6, 24(x4)	# 2329
	sw		x9, 20(x4)	# 2329
	sw		x8, 16(x4)	# 2329
	lw		x6, -212(x2)	# 2329
	sw		x6, 12(x4)	# 2329
	lw		x6, -208(x2)	# 2329
	sw		x6, 8(x4)	# 2329
	sw		x7, 4(x4)	# 2329
	lw		x6, -196(x2)	# 2329
	sw		x6, 0(x4)	# 2329
	lw		x6, -200(x2)	# 2343
	addi	x5, x4, 0	# 2343
	addi	x4, x6, 0	# 2343
	sw		x1, -232(x2)	# 2343
	addi	x2, x2, -236	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 236	# 2343
	lw		x1, -232(x2)	# 2343
	lw		x5, -4(x2)	# 2344
	mul		x6, x30, x5	# 2344
	addi	x6, x6, 64412	# 2344
	lw		x6, 0(x6)	# 2344
	lw		x7, -48(x2)	# 2344
	sub		x6, x6, x7	# 2344
	addi	x5, x6, 0	# 2344
	addi	x29, x18, 0	# 2344
	sw		x1, -232(x2)	# 2344
	addi	x2, x2, -236	# 2344
	lw		x31, 0(x29)	# 2344
	jalr	x1, x31, 0	# 2344
	addi	x2, x2, 236	# 2344
	lw		x1, -232(x2)	# 2344
	sw		x1, -232(x2)	# 721
	addi	x2, x2, -236	# 721
	jal		x1, min_caml_read_float	# 721
	addi	x2, x2, 236	# 721
	lw		x1, -232(x2)	# 721
	lw		x5, -4(x2)	# 721
	mul		x6, x30, x5	# 721
	addi	x6, x6, 64084	# 721
	fsw		f1, 0(x6)	# 721
	sw		x1, -232(x2)	# 722
	addi	x2, x2, -236	# 722
	jal		x1, min_caml_read_float	# 722
	addi	x2, x2, 236	# 722
	lw		x1, -232(x2)	# 722
	lw		x6, 0(x2)	# 722
	mul		x7, x30, x6	# 722
	addi	x7, x7, 64084	# 722
	fsw		f1, 0(x7)	# 722
	sw		x1, -232(x2)	# 723
	addi	x2, x2, -236	# 723
	jal		x1, min_caml_read_float	# 723
	addi	x2, x2, 236	# 723
	lw		x1, -232(x2)	# 723
	lw		x7, -48(x2)	# 723
	mul		x8, x30, x7	# 723
	addi	x8, x8, 64084	# 723
	fsw		f1, 0(x8)	# 723
	sw		x1, -232(x2)	# 725
	addi	x2, x2, -236	# 725
	jal		x1, min_caml_read_float	# 725
	addi	x2, x2, 236	# 725
	lw		x1, -232(x2)	# 725
	lui		x8, %hi(l.26496)	# 714
	ori		x8, x0, %lo(l.26496)	# 714
	flw		f2, 0(x8)	# 714
	fmul	f1, f1, f2	# 714
	lw		x29, -148(x2)	# 726
	sw		x4, -232(x2)	# 726
	fsw		f2, -236(x2)	# 726
	fsw		f1, -240(x2)	# 726
	sw		x1, -244(x2)	# 726
	addi	x2, x2, -248	# 726
	lw		x31, 0(x29)	# 726
	jalr	x1, x31, 0	# 726
	addi	x2, x2, 248	# 726
	lw		x1, -244(x2)	# 726
	flw		f2, -240(x2)	# 727
	lw		x29, -96(x2)	# 727
	fsw		f1, -244(x2)	# 727
	fadd	f1, f0, f2	# 727
	sw		x1, -248(x2)	# 727
	addi	x2, x2, -252	# 727
	lw		x31, 0(x29)	# 727
	jalr	x1, x31, 0	# 727
	addi	x2, x2, 252	# 727
	lw		x1, -248(x2)	# 727
	fsw		f1, -248(x2)	# 728
	sw		x1, -252(x2)	# 728
	addi	x2, x2, -256	# 728
	jal		x1, min_caml_read_float	# 728
	addi	x2, x2, 256	# 728
	lw		x1, -252(x2)	# 728
	flw		f2, -236(x2)	# 714
	fmul	f1, f1, f2	# 714
	lw		x29, -148(x2)	# 729
	fsw		f1, -252(x2)	# 729
	sw		x1, -256(x2)	# 729
	addi	x2, x2, -260	# 729
	lw		x31, 0(x29)	# 729
	jalr	x1, x31, 0	# 729
	addi	x2, x2, 260	# 729
	lw		x1, -256(x2)	# 729
	flw		f2, -252(x2)	# 730
	lw		x29, -96(x2)	# 730
	fsw		f1, -256(x2)	# 730
	fadd	f1, f0, f2	# 730
	sw		x1, -260(x2)	# 730
	addi	x2, x2, -264	# 730
	lw		x31, 0(x29)	# 730
	jalr	x1, x31, 0	# 730
	addi	x2, x2, 264	# 730
	lw		x1, -260(x2)	# 730
	flw		f2, -244(x2)	# 732
	fmul	f3, f2, f1	# 732
	lui		x4, %hi(l.29490)	# 732
	ori		x4, x0, %lo(l.29490)	# 732
	flw		f4, 0(x4)	# 732
	fmul	f3, f3, f4	# 732
	mul		x4, x30, x5	# 732
	addi	x4, x4, 64480	# 732
	fsw		f3, 0(x4)	# 732
	lui		x4, %hi(l.29494)	# 733
	ori		x4, x0, %lo(l.29494)	# 733
	flw		f3, 0(x4)	# 733
	flw		f5, -248(x2)	# 733
	fmul	f3, f5, f3	# 733
	mul		x4, x30, x6	# 733
	addi	x4, x4, 64480	# 733
	fsw		f3, 0(x4)	# 733
	flw		f3, -256(x2)	# 734
	fmul	f6, f2, f3	# 734
	fmul	f4, f6, f4	# 734
	mul		x4, x30, x7	# 734
	addi	x4, x4, 64480	# 734
	fsw		f4, 0(x4)	# 734
	mul		x4, x30, x5	# 736
	addi	x4, x4, 64456	# 736
	fsw		f3, 0(x4)	# 736
	mul		x4, x30, x6	# 737
	addi	x4, x4, 64456	# 737
	flw		f4, -8(x2)	# 737
	fsw		f4, 0(x4)	# 737
	fsub	f6, f0, f1	# 123
	mul		x4, x30, x7	# 738
	addi	x4, x4, 64456	# 738
	fsw		f6, 0(x4)	# 738
	fsub	f5, f0, f5	# 123
	fmul	f1, f5, f1	# 740
	mul		x4, x30, x5	# 740
	addi	x4, x4, 64468	# 740
	fsw		f1, 0(x4)	# 740
	fsub	f1, f0, f2	# 123
	mul		x4, x30, x6	# 741
	addi	x4, x4, 64468	# 741
	fsw		f1, 0(x4)	# 741
	fmul	f1, f5, f3	# 742
	mul		x4, x30, x7	# 742
	addi	x4, x4, 64468	# 742
	fsw		f1, 0(x4)	# 742
	mul		x4, x30, x5	# 744
	addi	x4, x4, 64084	# 744
	flw		f1, 0(x4)	# 744
	mul		x4, x30, x5	# 744
	addi	x4, x4, 64480	# 744
	flw		f2, 0(x4)	# 744
	fsub	f1, f1, f2	# 744
	mul		x4, x30, x5	# 744
	addi	x4, x4, 64096	# 744
	fsw		f1, 0(x4)	# 744
	mul		x4, x30, x6	# 745
	addi	x4, x4, 64084	# 745
	flw		f1, 0(x4)	# 745
	mul		x4, x30, x6	# 745
	addi	x4, x4, 64480	# 745
	flw		f2, 0(x4)	# 745
	fsub	f1, f1, f2	# 745
	mul		x4, x30, x6	# 745
	addi	x4, x4, 64096	# 745
	fsw		f1, 0(x4)	# 745
	mul		x4, x30, x7	# 746
	addi	x4, x4, 64084	# 746
	flw		f1, 0(x4)	# 746
	mul		x4, x30, x7	# 746
	addi	x4, x4, 64480	# 746
	flw		f2, 0(x4)	# 746
	fsub	f1, f1, f2	# 746
	mul		x4, x30, x7	# 746
	addi	x4, x4, 64096	# 746
	fsw		f1, 0(x4)	# 746
	sw		x1, -260(x2)	# 753
	addi	x2, x2, -264	# 753
	jal		x1, min_caml_read_int	# 753
	addi	x2, x2, 264	# 753
	lw		x1, -260(x2)	# 753
	sw		x1, -260(x2)	# 756
	addi	x2, x2, -264	# 756
	jal		x1, min_caml_read_float	# 756
	addi	x2, x2, 264	# 756
	lw		x1, -260(x2)	# 756
	flw		f2, -236(x2)	# 714
	fmul	f1, f1, f2	# 714
	lw		x29, -96(x2)	# 757
	fsw		f1, -260(x2)	# 757
	sw		x1, -264(x2)	# 757
	addi	x2, x2, -268	# 757
	lw		x31, 0(x29)	# 757
	jalr	x1, x31, 0	# 757
	addi	x2, x2, 268	# 757
	lw		x1, -264(x2)	# 757
	fsub	f1, f0, f1	# 123
	mul		x4, x30, x6	# 758
	addi	x4, x4, 64108	# 758
	fsw		f1, 0(x4)	# 758
	sw		x1, -264(x2)	# 759
	addi	x2, x2, -268	# 759
	jal		x1, min_caml_read_float	# 759
	addi	x2, x2, 268	# 759
	lw		x1, -264(x2)	# 759
	flw		f2, -236(x2)	# 714
	fmul	f1, f1, f2	# 714
	flw		f2, -260(x2)	# 760
	lw		x29, -148(x2)	# 760
	fsw		f1, -264(x2)	# 760
	fadd	f1, f0, f2	# 760
	sw		x1, -268(x2)	# 760
	addi	x2, x2, -272	# 760
	lw		x31, 0(x29)	# 760
	jalr	x1, x31, 0	# 760
	addi	x2, x2, 272	# 760
	lw		x1, -268(x2)	# 760
	flw		f2, -264(x2)	# 761
	lw		x29, -96(x2)	# 761
	fsw		f1, -268(x2)	# 761
	fadd	f1, f0, f2	# 761
	sw		x1, -272(x2)	# 761
	addi	x2, x2, -276	# 761
	lw		x31, 0(x29)	# 761
	jalr	x1, x31, 0	# 761
	addi	x2, x2, 276	# 761
	lw		x1, -272(x2)	# 761
	flw		f2, -268(x2)	# 762
	fmul	f1, f2, f1	# 762
	mul		x4, x30, x5	# 762
	addi	x4, x4, 64108	# 762
	fsw		f1, 0(x4)	# 762
	flw		f1, -264(x2)	# 763
	lw		x29, -148(x2)	# 763
	sw		x1, -272(x2)	# 763
	addi	x2, x2, -276	# 763
	lw		x31, 0(x29)	# 763
	jalr	x1, x31, 0	# 763
	addi	x2, x2, 276	# 763
	lw		x1, -272(x2)	# 763
	flw		f2, -268(x2)	# 764
	fmul	f1, f2, f1	# 764
	mul		x4, x30, x7	# 764
	addi	x4, x4, 64108	# 764
	fsw		f1, 0(x4)	# 764
	sw		x1, -272(x2)	# 765
	addi	x2, x2, -276	# 765
	jal		x1, min_caml_read_float	# 765
	addi	x2, x2, 276	# 765
	lw		x1, -272(x2)	# 765
	mul		x4, x30, x5	# 765
	addi	x4, x4, 64120	# 765
	fsw		f1, 0(x4)	# 765
	lw		x29, -144(x2)	# 907
	sw		x11, -272(x2)	# 907
	sw		x14, -276(x2)	# 907
	addi	x4, x5, 0	# 907
	sw		x1, -280(x2)	# 907
	addi	x2, x2, -284	# 907
	lw		x31, 0(x29)	# 907
	jalr	x1, x31, 0	# 907
	addi	x2, x2, 284	# 907
	lw		x1, -280(x2)	# 907
	lw		x4, -4(x2)	# 944
	addi	x29, x16, 0	# 944
	sw		x1, -280(x2)	# 944
	addi	x2, x2, -284	# 944
	lw		x31, 0(x29)	# 944
	jalr	x1, x31, 0	# 944
	addi	x2, x2, 284	# 944
	lw		x1, -280(x2)	# 944
	lw		x4, -4(x2)	# 945
	addi	x29, x15, 0	# 945
	sw		x1, -280(x2)	# 945
	addi	x2, x2, -284	# 945
	lw		x31, 0(x29)	# 945
	jalr	x1, x31, 0	# 945
	addi	x2, x2, 284	# 945
	lw		x1, -280(x2)	# 945
	lw		x5, -4(x2)	# 945
	mul		x6, x30, x5	# 945
	addi	x6, x6, 64332	# 945
	sw		x4, 0(x6)	# 945
	addi	x4, x0, 80	# 2152
	sw		x1, -280(x2)	# 2152
	addi	x2, x2, -284	# 2152
	jal		x1, min_caml_print_char	# 2152
	addi	x2, x2, 284	# 2152
	lw		x1, -280(x2)	# 2152
	addi	x4, x0, 51	# 2153
	sw		x1, -280(x2)	# 2153
	addi	x2, x2, -284	# 2153
	jal		x1, min_caml_print_char	# 2153
	addi	x2, x2, 284	# 2153
	lw		x1, -280(x2)	# 2153
	addi	x4, x0, 10	# 2154
	sw		x4, -280(x2)	# 2154
	sw		x1, -284(x2)	# 2154
	addi	x2, x2, -288	# 2154
	jal		x1, min_caml_print_char	# 2154
	addi	x2, x2, 288	# 2154
	lw		x1, -284(x2)	# 2154
	mul		x4, x30, x5	# 2155
	addi	x4, x4, 64412	# 2155
	lw		x4, 0(x4)	# 2155
	sw		x1, -284(x2)	# 2155
	addi	x2, x2, -288	# 2155
	jal		x1, min_caml_print_int	# 2155
	addi	x2, x2, 288	# 2155
	lw		x1, -284(x2)	# 2155
	addi	x4, x0, 32	# 2156
	sw		x4, -284(x2)	# 2156
	sw		x1, -288(x2)	# 2156
	addi	x2, x2, -292	# 2156
	jal		x1, min_caml_print_char	# 2156
	addi	x2, x2, 292	# 2156
	lw		x1, -288(x2)	# 2156
	lw		x4, 0(x2)	# 2157
	mul		x6, x30, x4	# 2157
	addi	x6, x6, 64412	# 2157
	lw		x6, 0(x6)	# 2157
	addi	x4, x6, 0	# 2157
	sw		x1, -288(x2)	# 2157
	addi	x2, x2, -292	# 2157
	jal		x1, min_caml_print_int	# 2157
	addi	x2, x2, 292	# 2157
	lw		x1, -288(x2)	# 2157
	lw		x4, -284(x2)	# 2158
	sw		x1, -288(x2)	# 2158
	addi	x2, x2, -292	# 2158
	jal		x1, min_caml_print_char	# 2158
	addi	x2, x2, 292	# 2158
	lw		x1, -288(x2)	# 2158
	addi	x4, x0, 255	# 2159
	sw		x1, -288(x2)	# 2159
	addi	x2, x2, -292	# 2159
	jal		x1, min_caml_print_int	# 2159
	addi	x2, x2, 292	# 2159
	lw		x1, -288(x2)	# 2159
	lw		x4, -280(x2)	# 2160
	sw		x1, -288(x2)	# 2160
	addi	x2, x2, -292	# 2160
	jal		x1, min_caml_print_char	# 2160
	addi	x2, x2, 292	# 2160
	lw		x1, -288(x2)	# 2160
	lw		x4, -116(x2)	# 2458
	addi	x29, x20, 0	# 2458
	sw		x1, -288(x2)	# 2458
	addi	x2, x2, -292	# 2458
	lw		x31, 0(x29)	# 2458
	jalr	x1, x31, 0	# 2458
	addi	x2, x2, 292	# 2458
	lw		x1, -288(x2)	# 2458
	addi	x4, x0, 9	# 2459
	lw		x5, -4(x2)	# 2459
	addi	x6, x5, 0	# 2459
	addi	x29, x19, 0	# 2459
	sw		x1, -288(x2)	# 2459
	addi	x2, x2, -292	# 2459
	lw		x31, 0(x29)	# 2459
	jalr	x1, x31, 0	# 2459
	addi	x2, x2, 292	# 2459
	lw		x1, -288(x2)	# 2459
	lw		x4, -116(x2)	# 2460
	addi	x29, x21, 0	# 2460
	sw		x1, -288(x2)	# 2460
	addi	x2, x2, -292	# 2460
	lw		x31, 0(x29)	# 2460
	jalr	x1, x31, 0	# 2460
	addi	x2, x2, 292	# 2460
	lw		x1, -288(x2)	# 2460
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
	lw		x29, -276(x2)	# 1324
	addi	x5, x7, 0	# 1324
	addi	x4, x8, 0	# 1324
	sw		x1, -288(x2)	# 1324
	addi	x2, x2, -292	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 292	# 1324
	lw		x1, -288(x2)	# 1324
	lw		x4, -4(x2)	# 2542
	mul		x5, x30, x4	# 2542
	addi	x5, x5, 63796	# 2542
	lw		x5, 0(x5)	# 2542
	lw		x6, 0(x2)	# 2542
	sub		x5, x5, x6	# 2542
	ble		x4, x5, ble.32710	# 2507
	jal		x0, ble_cont.32709	# 2507
ble.32710:
	mul		x7, x30, x5	# 2508
	addi	x7, x7, 63844	# 2508
	lw		x7, 0(x7)	# 2508
	lw		x8, 8(x7)	# 400
	lw		x9, -48(x2)	# 2509
	beq		x8, x9, beq.32712	# 2509
	jal		x0, ble_cont.32709	# 2509
beq.32712:
	lw		x8, 28(x7)	# 498
	mul		x10, x30, x4	# 503
	add		x8, x8, x10	# 503
	flw		f1, 0(x8)	# 503
	fle		f16, f1, ble_cont.32709	# 125
	lw		x8, 4(x7)	# 390
	beq		x8, x6, beq.32716	# 2513
	beq		x8, x9, beq.32718	# 2515
	jal		x0, ble_cont.32709	# 2515
beq.32718:
	lw		x8, -116(x2)	# 2492
	mul		x5, x5, x8	# 2492
	addi	x5, x5, 1	# 2492
	mul		x8, x30, x4	# 2493
	addi	x8, x8, 65532	# 2493
	lw		x8, 0(x8)	# 2493
	lw		x10, 28(x7)	# 498
	mul		x11, x30, x4	# 503
	add		x10, x10, x11	# 503
	flw		f1, 0(x10)	# 503
	fsub	f1, f16, f1	# 2494
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
	lw		x10, 16(x7)	# 428
	mul		x11, x30, x4	# 433
	add		x10, x10, x11	# 433
	flw		f7, 0(x10)	# 433
	fmul	f7, f28, f7	# 2498
	fmul	f7, f7, f3	# 2498
	fsub	f2, f7, f2	# 2498
	lw		x10, 16(x7)	# 438
	mul		x11, x30, x6	# 443
	add		x10, x10, x11	# 443
	flw		f7, 0(x10)	# 443
	fmul	f7, f28, f7	# 2499
	fmul	f7, f7, f3	# 2499
	fsub	f4, f7, f4	# 2499
	lw		x7, 16(x7)	# 448
	mul		x10, x30, x9	# 453
	add		x7, x7, x10	# 453
	flw		f7, 0(x7)	# 453
	fmul	f6, f28, f7	# 2500
	fmul	f3, f6, f3	# 2500
	fsub	f3, f3, f5	# 2500
	lw		x7, -20(x2)	# 2419
	flw		f5, -8(x2)	# 2419
	sw		x5, -288(x2)	# 2419
	fsw		f1, -292(x2)	# 2419
	addi	x4, x7, 0	# 2419
	fadd	f1, f0, f5	# 2419
	sw		x1, -296(x2)	# 2419
	addi	x2, x2, -300	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 300	# 2419
	lw		x1, -296(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lw		x4, -4(x2)	# 2420
	mul		x7, x30, x4	# 2420
	addi	x7, x7, 63796	# 2420
	lw		x7, 0(x7)	# 2420
	sw		x5, -296(x2)	# 2420
	addi	x4, x7, 0	# 2420
	sw		x1, -300(x2)	# 2420
	addi	x2, x2, -304	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 304	# 2420
	lw		x1, -300(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -296(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	lw		x6, -4(x2)	# 277
	mul		x7, x30, x6	# 277
	add		x7, x4, x7	# 277
	fsw		f2, 0(x7)	# 277
	lw		x7, 0(x2)	# 278
	mul		x10, x30, x7	# 278
	add		x10, x4, x10	# 278
	fsw		f4, 0(x10)	# 278
	mul		x10, x30, x9	# 279
	add		x4, x4, x10	# 279
	fsw		f3, 0(x4)	# 279
	mul		x4, x30, x6	# 1324
	addi	x4, x4, 63796	# 1324
	lw		x4, 0(x4)	# 1324
	sub		x4, x4, x7	# 1324
	lw		x29, -276(x2)	# 1324
	sw		x8, -300(x2)	# 1324
	sw		x5, -304(x2)	# 1324
	addi	x31, x5, 0	# 1324
	addi	x5, x4, 0	# 1324
	addi	x4, x31, 0	# 1324
	sw		x1, -308(x2)	# 1324
	addi	x2, x2, -312	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 312	# 1324
	lw		x1, -308(x2)	# 1324
	addi	x4, x3, 0	# 2473
	addi	x3, x3, 12	# 2473
	flw		f1, -292(x2)	# 2473
	fsw		f1, 8(x4)	# 2473
	lw		x5, -304(x2)	# 2473
	sw		x5, 4(x4)	# 2473
	lw		x5, -288(x2)	# 2473
	sw		x5, 0(x4)	# 2473
	lw		x5, -300(x2)	# 2473
	mul		x6, x30, x5	# 2473
	addi	x6, x6, 64812	# 2473
	sw		x4, 0(x6)	# 2473
	addi	x4, x5, 1	# 2501
	lw		x5, -4(x2)	# 2501
	mul		x6, x30, x5	# 2501
	addi	x6, x6, 65532	# 2501
	sw		x4, 0(x6)	# 2501
	jal		x0, ble_cont.32709	# 2513
beq.32716:
	lw		x8, -116(x2)	# 2478
	mul		x5, x5, x8	# 2478
	mul		x8, x30, x4	# 2479
	addi	x8, x8, 65532	# 2479
	lw		x8, 0(x8)	# 2479
	lw		x7, 28(x7)	# 498
	mul		x10, x30, x4	# 503
	add		x7, x7, x10	# 503
	flw		f1, 0(x7)	# 503
	fsub	f1, f16, f1	# 2480
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
	lw		x10, -20(x2)	# 2419
	flw		f6, -8(x2)	# 2419
	sw		x5, -308(x2)	# 2419
	fsw		f1, -312(x2)	# 2419
	addi	x4, x10, 0	# 2419
	fadd	f1, f0, f6	# 2419
	sw		x1, -316(x2)	# 2419
	addi	x2, x2, -320	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 320	# 2419
	lw		x1, -316(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lw		x4, -4(x2)	# 2420
	mul		x10, x30, x4	# 2420
	addi	x10, x10, 63796	# 2420
	lw		x10, 0(x10)	# 2420
	sw		x5, -316(x2)	# 2420
	addi	x4, x10, 0	# 2420
	sw		x1, -320(x2)	# 2420
	addi	x2, x2, -324	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 324	# 2420
	lw		x1, -320(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -316(x2)	# 2421
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
	fsw		f5, 0(x4)	# 279
	mul		x4, x30, x6	# 1324
	addi	x4, x4, 63796	# 1324
	lw		x4, 0(x4)	# 1324
	sub		x4, x4, x10	# 1324
	lw		x29, -276(x2)	# 1324
	fsw		f4, -320(x2)	# 1324
	fsw		f5, -324(x2)	# 1324
	fsw		f3, -328(x2)	# 1324
	sw		x8, -332(x2)	# 1324
	sw		x7, -336(x2)	# 1324
	sw		x5, -340(x2)	# 1324
	addi	x31, x5, 0	# 1324
	addi	x5, x4, 0	# 1324
	addi	x4, x31, 0	# 1324
	sw		x1, -344(x2)	# 1324
	addi	x2, x2, -348	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 348	# 1324
	lw		x1, -344(x2)	# 1324
	addi	x4, x3, 0	# 2473
	addi	x3, x3, 12	# 2473
	flw		f1, -312(x2)	# 2473
	fsw		f1, 8(x4)	# 2473
	lw		x5, -340(x2)	# 2473
	sw		x5, 4(x4)	# 2473
	lw		x5, -336(x2)	# 2473
	sw		x5, 0(x4)	# 2473
	lw		x5, -332(x2)	# 2473
	mul		x6, x30, x5	# 2473
	addi	x6, x6, 64812	# 2473
	sw		x4, 0(x6)	# 2473
	addi	x4, x5, 1	# 2485
	lw		x6, -308(x2)	# 2485
	addi	x7, x6, 2	# 2485
	lw		x8, 0(x2)	# 2485
	mul		x9, x30, x8	# 2485
	addi	x9, x9, 64108	# 2485
	flw		f2, 0(x9)	# 2485
	lw		x9, -20(x2)	# 2419
	flw		f3, -8(x2)	# 2419
	sw		x4, -344(x2)	# 2419
	addi	x4, x9, 0	# 2419
	fadd	f1, f0, f3	# 2419
	sw		x1, -348(x2)	# 2419
	addi	x2, x2, -352	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 352	# 2419
	lw		x1, -348(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lw		x4, -4(x2)	# 2420
	mul		x9, x30, x4	# 2420
	addi	x9, x9, 63796	# 2420
	lw		x9, 0(x9)	# 2420
	sw		x5, -348(x2)	# 2420
	addi	x4, x9, 0	# 2420
	sw		x1, -352(x2)	# 2420
	addi	x2, x2, -356	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 356	# 2420
	lw		x1, -352(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -348(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	lw		x6, -4(x2)	# 277
	mul		x9, x30, x6	# 277
	add		x9, x4, x9	# 277
	flw		f1, -328(x2)	# 277
	fsw		f1, 0(x9)	# 277
	mul		x9, x30, x8	# 278
	add		x9, x4, x9	# 278
	fsw		f2, 0(x9)	# 278
	lw		x9, -48(x2)	# 279
	mul		x10, x30, x9	# 279
	add		x4, x4, x10	# 279
	flw		f2, -324(x2)	# 279
	fsw		f2, 0(x4)	# 279
	mul		x4, x30, x6	# 1324
	addi	x4, x4, 63796	# 1324
	lw		x4, 0(x4)	# 1324
	sub		x4, x4, x8	# 1324
	lw		x29, -276(x2)	# 1324
	sw		x7, -352(x2)	# 1324
	sw		x5, -356(x2)	# 1324
	addi	x31, x5, 0	# 1324
	addi	x5, x4, 0	# 1324
	addi	x4, x31, 0	# 1324
	sw		x1, -360(x2)	# 1324
	addi	x2, x2, -364	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 364	# 1324
	lw		x1, -360(x2)	# 1324
	addi	x4, x3, 0	# 2473
	addi	x3, x3, 12	# 2473
	flw		f1, -312(x2)	# 2473
	fsw		f1, 8(x4)	# 2473
	lw		x5, -356(x2)	# 2473
	sw		x5, 4(x4)	# 2473
	lw		x5, -352(x2)	# 2473
	sw		x5, 0(x4)	# 2473
	lw		x5, -344(x2)	# 2473
	mul		x5, x30, x5	# 2473
	addi	x5, x5, 64812	# 2473
	sw		x4, 0(x5)	# 2473
	lw		x4, -332(x2)	# 2486
	addi	x5, x4, 2	# 2486
	lw		x6, -308(x2)	# 2486
	addi	x6, x6, 3	# 2486
	lw		x7, -48(x2)	# 2486
	mul		x8, x30, x7	# 2486
	addi	x8, x8, 64108	# 2486
	flw		f2, 0(x8)	# 2486
	lw		x8, -20(x2)	# 2419
	flw		f3, -8(x2)	# 2419
	sw		x5, -360(x2)	# 2419
	addi	x4, x8, 0	# 2419
	fadd	f1, f0, f3	# 2419
	sw		x1, -364(x2)	# 2419
	addi	x2, x2, -368	# 2419
	jal		x1, min_caml_create_float_array	# 2419
	addi	x2, x2, 368	# 2419
	lw		x1, -364(x2)	# 2419
	addi	x5, x4, 0	# 2419
	lw		x4, -4(x2)	# 2420
	mul		x8, x30, x4	# 2420
	addi	x8, x8, 63796	# 2420
	lw		x8, 0(x8)	# 2420
	sw		x6, -364(x2)	# 2420
	sw		x5, -368(x2)	# 2420
	addi	x4, x8, 0	# 2420
	sw		x1, -372(x2)	# 2420
	addi	x2, x2, -376	# 2420
	jal		x1, min_caml_create_array	# 2420
	addi	x2, x2, 376	# 2420
	lw		x1, -372(x2)	# 2420
	addi	x5, x3, 0	# 2421
	addi	x3, x3, 8	# 2421
	sw		x4, 4(x5)	# 2421
	lw		x4, -368(x2)	# 2421
	sw		x4, 0(x5)	# 2421
	lw		x6, -4(x2)	# 277
	mul		x8, x30, x6	# 277
	add		x8, x4, x8	# 277
	flw		f1, -328(x2)	# 277
	fsw		f1, 0(x8)	# 277
	lw		x8, 0(x2)	# 278
	mul		x9, x30, x8	# 278
	add		x9, x4, x9	# 278
	flw		f1, -320(x2)	# 278
	fsw		f1, 0(x9)	# 278
	mul		x9, x30, x7	# 279
	add		x4, x4, x9	# 279
	fsw		f2, 0(x4)	# 279
	mul		x4, x30, x6	# 1324
	addi	x4, x4, 63796	# 1324
	lw		x4, 0(x4)	# 1324
	sub		x4, x4, x8	# 1324
	lw		x29, -276(x2)	# 1324
	sw		x5, -372(x2)	# 1324
	addi	x31, x5, 0	# 1324
	addi	x5, x4, 0	# 1324
	addi	x4, x31, 0	# 1324
	sw		x1, -376(x2)	# 1324
	addi	x2, x2, -380	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x1, x31, 0	# 1324
	addi	x2, x2, 380	# 1324
	lw		x1, -376(x2)	# 1324
	addi	x4, x3, 0	# 2473
	addi	x3, x3, 12	# 2473
	flw		f1, -312(x2)	# 2473
	fsw		f1, 8(x4)	# 2473
	lw		x5, -372(x2)	# 2473
	sw		x5, 4(x4)	# 2473
	lw		x5, -364(x2)	# 2473
	sw		x5, 0(x4)	# 2473
	lw		x5, -360(x2)	# 2473
	mul		x5, x30, x5	# 2473
	addi	x5, x5, 64812	# 2473
	sw		x4, 0(x5)	# 2473
	lw		x4, -332(x2)	# 2487
	addi	x4, x4, 3	# 2487
	lw		x5, -4(x2)	# 2487
	mul		x6, x30, x5	# 2487
	addi	x6, x6, 65532	# 2487
	sw		x4, 0(x6)	# 2487
	jal		x0, ble_cont.32709	# 125
ble_cont.32709:
	lw		x4, -4(x2)	# 2255
	mul		x5, x30, x4	# 2255
	addi	x5, x5, 64428	# 2255
	flw		f1, 0(x5)	# 2255
	lw		x5, 0(x2)	# 2255
	mul		x6, x30, x5	# 2255
	addi	x6, x6, 64420	# 2255
	lw		x6, 0(x6)	# 2255
	sub		x6, x4, x6	# 2255
	fsw		f1, -376(x2)	# 2255
	addi	x4, x6, 0	# 2255
	sw		x1, -380(x2)	# 2255
	addi	x2, x2, -384	# 2255
	jal		x1, min_caml_float_of_int	# 2255
	addi	x2, x2, 384	# 2255
	lw		x1, -380(x2)	# 2255
	flw		f2, -376(x2)	# 2255
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
	lw		x7, -192(x2)	# 2261
	lw		x29, -272(x2)	# 2261
	addi	x5, x4, 0	# 2261
	addi	x4, x7, 0	# 2261
	fadd	f31, f0, f3	# 2261
	fadd	f3, f0, f1	# 2261
	fadd	f1, f0, f2	# 2261
	fadd	f2, f0, f31	# 2261
	sw		x1, -380(x2)	# 2261
	addi	x2, x2, -384	# 2261
	lw		x31, 0(x29)	# 2261
	jalr	x1, x31, 0	# 2261
	addi	x2, x2, 384	# 2261
	lw		x1, -380(x2)	# 2261
	lw		x4, -4(x2)	# 2544
	lw		x5, -152(x2)	# 2544
	lw		x6, -192(x2)	# 2544
	lw		x7, -232(x2)	# 2544
	lw		x8, -48(x2)	# 2544
	lw		x9, -20(x2)	# 2544
	lw		x29, -92(x2)	# 2544
	sw		x1, -380(x2)	# 2544
	addi	x2, x2, -384	# 2544
	lw		x31, 0(x29)	# 2544
	jalr	x1, x31, 0	# 2544
	addi	x2, x2, 384	# 2544
	lw		x1, -380(x2)	# 2544
	EXIT	
