l.31536:	# 8388608.000000
	.word	8388608.000000
l.26330:	# 4.500000
	.word	4.500000
l.26334:	# 4.000000
	.word	4.000000
l.26810:	# 0.010000
	.word	0.010000
l.26808:	# -0.200000
	.word	-0.200000
l.26929:	# -0.100000
	.word	-0.100000
l.27697:	# 100000000.000000
	.word	100000000.000000
l.28391:	# 150.000000
	.word	150.000000
l.28181:	# -150.000000
	.word	-150.000000
l.26327:	# 0.500000
	.word	0.500000
l.26323:	# -0.500000
	.word	-0.500000
l.26471:	# 2.000000
	.word	2.000000
l.27952:	# 0.050000
	.word	0.050000
l.27899:	# 0.000100
	.word	0.000100
l.26345:	# 0.041664
	.word	0.041664
l.26341:	# 0.000196
	.word	0.000196
l.26339:	# 0.008333
	.word	0.008333
l.26337:	# 0.166667
	.word	0.166667
l.26332:	# -4.500000
	.word	-4.500000
l.26347:	# 0.001370
	.word	0.001370
l.26353:	# 2.437500
	.word	2.437500
l.26356:	# 0.437500
	.word	0.437500
l.26358:	# 0.333333
	.word	0.333333
l.28128:	# 0.100000
	.word	0.100000
l.26360:	# 0.200000
	.word	0.200000
l.26366:	# 0.089764
	.word	0.089764
l.26364:	# 0.111111
	.word	0.111111
l.26362:	# 0.142857
	.word	0.142857
l.29157:	# 0.900000
	.word	0.900000
l.29184:	# 0.000000
	.word	0.000000
l.29198:	# 255.000000
	.word	255.000000
l.29202:	# 1000000000.000000
	.word	1000000000.000000
l.29217:	# 3.141593
	.word	3.141593
l.29219:	# 6.283185
	.word	6.283185
l.29221:	# 1.570796
	.word	1.570796
l.29223:	# 0.785398
	.word	0.785398
l.29233:	# 128.000000
	.word	128.000000
l.28032:	# -2.000000
	.word	-2.000000
l.28004:	# 0.003906
	.word	0.003906
l.27954:	# 20.000000
	.word	20.000000
l.27905:	# 3.141593
	.word	3.141593
l.27931:	# 10.000000
	.word	10.000000
l.27919:	# 0.300000
	.word	0.300000
l.27941:	# 0.250000
	.word	0.250000
l.26420:	# -1.000000
	.word	-1.000000
l.27901:	# 15.000000
	.word	15.000000
l.26391:	# 0.017453
	.word	0.017453
l.29379:	# 200.000000
	.word	200.000000
l.29383:	# -200.000000
	.word	-200.000000
l.27916:	# 0.150000
	.word	0.150000
l.27903:	# 30.000000
	.word	30.000000
l.26325:	# 1.000000
	.word	1.000000
int_of_float_rem.2527.17943:
	lw		x5, 4(x29)	# 145
	fle		f25, f1, fle.31537	# 145
	fadd	f1, f1, f30	# 148
	sub		x4, x4, x5	# 148
	lw		x31, 0(x29)	# 148
	jalr	x0, x31, 0	# 148
fle.31537:
	fle		f24, f1, fle.31538	# 146
	jalr	x0, x1, 0	# 146
fle.31538:
	fsub	f1, f1, f30	# 147
	add		x4, x4, x5	# 147
	lw		x31, 0(x29)	# 147
	jalr	x0, x31, 0	# 147
int_of_float_four.2530.17946:
	lw		x5, 4(x29)	# 150
	fle		f16, f1, fle.31539	# 150
	lui		x6, %hi(l.26332)	# 151
	ori		x6, x0, %lo(l.26332)	# 151
	flw		f2, 0(x6)	# 151
	fle		f2, f1, fle.31540	# 151
	fadd	f1, f1, f17	# 151
	addi	x5, x0, 4	# 151
	sub		x4, x4, x5	# 151
	lw		x31, 0(x29)	# 151
	jalr	x0, x31, 0	# 151
fle.31540:
	addi	x29, x5, 0	# 152
	lw		x31, 0(x29)	# 152
	jalr	x0, x31, 0	# 152
fle.31539:
	fsub	f1, f1, f17	# 150
	addi	x4, x4, 4	# 150
	lw		x31, 0(x29)	# 150
	jalr	x0, x31, 0	# 150
sin.2543.17953:
	flw		f2, 20(x29)	# 204
	flw		f3, 16(x29)	# 204
	flw		f4, 12(x29)	# 204
	flw		f5, 8(x29)	# 204
	flw		f6, 4(x29)	# 204
	fle		f6, f1, fle.31541	# 204
	fsub	f1, f0, f1	# 204
	sw		x1, 0(x2)	# 204
	addi	x2, x2, -4	# 204
	lw		x31, 0(x29)	# 204
	jalr	x1, x31, 0	# 204
	addi	x2, x2, 4	# 204
	lw		x1, 0(x2)	# 204
	fsub	f1, f0, f1	# 204
	jalr	x0, x1, 0	# 204
fle.31541:
	fle		f4, f1, fle.31542	# 205
	fle		f5, f1, fle.31543	# 206
	fle		f1, f3, fle.31544	# 207
	fsub	f1, f5, f1	# 207
	lw		x31, 0(x29)	# 207
	jalr	x0, x31, 0	# 207
fle.31544:
	fle		f2, f1, fle.31545	# 208
	fmul	f2, f1, f1	# 194
	fmul	f3, f1, f2	# 195
	lui		x4, %hi(l.26337)	# 196
	ori		x4, x0, %lo(l.26337)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f3	# 196
	fsub	f1, f1, f4	# 196
	lui		x4, %hi(l.26339)	# 196
	ori		x4, x0, %lo(l.26339)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f2	# 196
	fmul	f4, f4, f3	# 196
	fadd	f1, f1, f4	# 196
	lui		x4, %hi(l.26341)	# 196
	ori		x4, x0, %lo(l.26341)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f2	# 196
	fmul	f2, f4, f2	# 196
	fmul	f2, f2, f3	# 196
	fsub	f1, f1, f2	# 196
	jalr	x0, x1, 0	# 196
fle.31545:
	fsub	f1, f3, f1	# 208
	fmul	f1, f1, f1	# 199
	fmul	f2, f1, f1	# 200
	fmul	f4, f24, f1	# 201
	fsub	f3, f30, f4	# 201
	lui		x4, %hi(l.26345)	# 201
	ori		x4, x0, %lo(l.26345)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f4, f4, f2	# 201
	fadd	f3, f3, f4	# 201
	lui		x4, %hi(l.26347)	# 201
	ori		x4, x0, %lo(l.26347)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f1, f4, f1	# 201
	fmul	f1, f1, f2	# 201
	fsub	f1, f3, f1	# 201
	jalr	x0, x1, 0	# 201
fle.31543:
	fsub	f1, f1, f5	# 206
	sw		x1, 0(x2)	# 206
	addi	x2, x2, -4	# 206
	lw		x31, 0(x29)	# 206
	jalr	x1, x31, 0	# 206
	addi	x2, x2, 4	# 206
	lw		x1, 0(x2)	# 206
	fsub	f1, f0, f1	# 206
	jalr	x0, x1, 0	# 206
fle.31542:
	fsub	f1, f1, f4	# 205
	lw		x31, 0(x29)	# 205
	jalr	x0, x31, 0	# 205
cos.2545.17955:
	lw		x4, 16(x29)	# 212
	flw		f2, 12(x29)	# 212
	flw		f3, 8(x29)	# 212
	flw		f4, 4(x29)	# 212
	fle		f4, f1, fle.31546	# 212
	fsub	f1, f0, f1	# 212
	lw		x31, 0(x29)	# 212
	jalr	x0, x31, 0	# 212
fle.31546:
	fle		f1, f2, fle.31547	# 213
	fsub	f1, f3, f1	# 213
	addi	x29, x4, 0	# 213
	lw		x31, 0(x29)	# 213
	jalr	x0, x31, 0	# 213
fle.31547:
	fmul	f1, f1, f1	# 199
	fmul	f2, f1, f1	# 200
	fmul	f4, f24, f1	# 201
	fsub	f3, f30, f4	# 201
	lui		x4, %hi(l.26345)	# 201
	ori		x4, x0, %lo(l.26345)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f4, f4, f2	# 201
	fadd	f3, f3, f4	# 201
	lui		x4, %hi(l.26347)	# 201
	ori		x4, x0, %lo(l.26347)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f1, f4, f1	# 201
	fmul	f1, f1, f2	# 201
	fsub	f1, f3, f1	# 201
	jalr	x0, x1, 0	# 201
atan.2547.17957:
	flw		f2, 12(x29)	# 217
	flw		f3, 8(x29)	# 217
	flw		f4, 4(x29)	# 217
	fle		f4, f1, fle.31548	# 217
	fsub	f1, f0, f1	# 217
	sw		x1, 0(x2)	# 217
	addi	x2, x2, -4	# 217
	lw		x31, 0(x29)	# 217
	jalr	x1, x31, 0	# 217
	addi	x2, x2, 4	# 217
	lw		x1, 0(x2)	# 217
	fsub	f1, f0, f1	# 217
	jalr	x0, x1, 0	# 217
fle.31548:
	lui		x4, %hi(l.26353)	# 218
	ori		x4, x0, %lo(l.26353)	# 218
	flw		f4, 0(x4)	# 218
	fle		f1, f4, fle.31549	# 218
	fdiv	f1, f30, f1	# 218
	fsw		f3, 0(x2)	# 218
	sw		x1, -4(x2)	# 218
	addi	x2, x2, -8	# 218
	lw		x31, 0(x29)	# 218
	jalr	x1, x31, 0	# 218
	addi	x2, x2, 8	# 218
	lw		x1, -4(x2)	# 218
	flw		f2, 0(x2)	# 218
	fsub	f1, f2, f1	# 218
	jalr	x0, x1, 0	# 218
fle.31549:
	lui		x4, %hi(l.26356)	# 219
	ori		x4, x0, %lo(l.26356)	# 219
	flw		f3, 0(x4)	# 219
	fle		f3, f1, fle.31550	# 219
	fmul	f2, f1, f1	# 221
	fmul	f3, f1, f2	# 222
	fmul	f4, f2, f2	# 223
	lui		x4, %hi(l.26358)	# 224
	ori		x4, x0, %lo(l.26358)	# 224
	flw		f5, 0(x4)	# 224
	fmul	f5, f5, f3	# 224
	fsub	f1, f1, f5	# 224
	lui		x4, %hi(l.26360)	# 224
	ori		x4, x0, %lo(l.26360)	# 224
	flw		f5, 0(x4)	# 224
	fmul	f5, f5, f2	# 224
	fmul	f5, f5, f3	# 224
	fadd	f1, f1, f5	# 224
	lui		x4, %hi(l.26362)	# 224
	ori		x4, x0, %lo(l.26362)	# 224
	flw		f5, 0(x4)	# 224
	fmul	f5, f5, f4	# 224
	fmul	f5, f5, f3	# 224
	fsub	f1, f1, f5	# 224
	lui		x4, %hi(l.26364)	# 225
	ori		x4, x0, %lo(l.26364)	# 225
	flw		f5, 0(x4)	# 225
	fmul	f2, f5, f2	# 225
	fmul	f2, f2, f4	# 225
	fmul	f2, f2, f3	# 225
	fadd	f1, f1, f2	# 224
	lui		x4, %hi(l.26366)	# 225
	ori		x4, x0, %lo(l.26366)	# 225
	flw		f2, 0(x4)	# 225
	fmul	f2, f2, f4	# 225
	fmul	f2, f2, f4	# 225
	fmul	f2, f2, f3	# 225
	fsub	f1, f1, f2	# 224
	jalr	x0, x1, 0	# 224
fle.31550:
	fsub	f4, f1, f30	# 219
	fadd	f1, f1, f30	# 219
	fdiv	f1, f4, f1	# 219
	fsw		f2, -4(x2)	# 219
	sw		x1, -8(x2)	# 219
	addi	x2, x2, -12	# 219
	lw		x31, 0(x29)	# 219
	jalr	x1, x31, 0	# 219
	addi	x2, x2, 12	# 219
	lw		x1, -8(x2)	# 219
	flw		f2, -4(x2)	# 219
	fadd	f1, f2, f1	# 219
	jalr	x0, x1, 0	# 219
read_object.2684.17959:
	lw		x5, 36(x29)	# 903
	lw		x6, 32(x29)	# 903
	lw		x7, 28(x29)	# 903
	lw		x8, 24(x29)	# 903
	lw		x9, 20(x29)	# 903
	lw		x10, 16(x29)	# 903
	lw		x11, 12(x29)	# 903
	lw		x12, 8(x29)	# 903
	flw		f1, 4(x29)	# 903
	ble		x10, x4, ble.31551	# 903
	sw		x29, 0(x2)	# 821
	sw		x4, -4(x2)	# 821
	sw		x1, -8(x2)	# 821
	addi	x2, x2, -12	# 821
	jal		x1, min_caml_read_int	# 821
	addi	x2, x2, 12	# 821
	lw		x1, -8(x2)	# 821
	beq		x4, x8, beq.31553	# 822
	sw		x4, -8(x2)	# 824
	sw		x1, -12(x2)	# 824
	addi	x2, x2, -16	# 824
	jal		x1, min_caml_read_int	# 824
	addi	x2, x2, 16	# 824
	lw		x1, -12(x2)	# 824
	sw		x4, -12(x2)	# 825
	sw		x1, -16(x2)	# 825
	addi	x2, x2, -20	# 825
	jal		x1, min_caml_read_int	# 825
	addi	x2, x2, 20	# 825
	lw		x1, -16(x2)	# 825
	sw		x4, -16(x2)	# 826
	sw		x1, -20(x2)	# 826
	addi	x2, x2, -24	# 826
	jal		x1, min_caml_read_int	# 826
	addi	x2, x2, 24	# 826
	lw		x1, -20(x2)	# 826
	sw		x5, -20(x2)	# 828
	sw		x4, -24(x2)	# 828
	fsw		f1, -28(x2)	# 828
	sw		x9, -32(x2)	# 828
	addi	x4, x9, 0	# 828
	sw		x1, -36(x2)	# 828
	addi	x2, x2, -40	# 828
	jal		x1, min_caml_create_float_array	# 828
	addi	x2, x2, 40	# 828
	lw		x1, -36(x2)	# 828
	sw		x1, -36(x2)	# 829
	addi	x2, x2, -40	# 829
	jal		x1, min_caml_read_float	# 829
	addi	x2, x2, 40	# 829
	lw		x1, -36(x2)	# 829
	mul		x5, x30, x11	# 829
	add		x5, x4, x5	# 829
	fsw		f1, 0(x5)	# 829
	sw		x1, -36(x2)	# 830
	addi	x2, x2, -40	# 830
	jal		x1, min_caml_read_float	# 830
	addi	x2, x2, 40	# 830
	lw		x1, -36(x2)	# 830
	mul		x5, x30, x12	# 830
	add		x5, x4, x5	# 830
	fsw		f1, 0(x5)	# 830
	sw		x1, -36(x2)	# 831
	addi	x2, x2, -40	# 831
	jal		x1, min_caml_read_float	# 831
	addi	x2, x2, 40	# 831
	lw		x1, -36(x2)	# 831
	mul		x5, x30, x7	# 831
	add		x5, x4, x5	# 831
	fsw		f1, 0(x5)	# 831
	lw		x5, -32(x2)	# 833
	flw		f1, -28(x2)	# 833
	sw		x4, -36(x2)	# 833
	addi	x4, x5, 0	# 833
	sw		x1, -40(x2)	# 833
	addi	x2, x2, -44	# 833
	jal		x1, min_caml_create_float_array	# 833
	addi	x2, x2, 44	# 833
	lw		x1, -40(x2)	# 833
	sw		x1, -40(x2)	# 834
	addi	x2, x2, -44	# 834
	jal		x1, min_caml_read_float	# 834
	addi	x2, x2, 44	# 834
	lw		x1, -40(x2)	# 834
	mul		x5, x30, x11	# 834
	add		x5, x4, x5	# 834
	fsw		f1, 0(x5)	# 834
	sw		x1, -40(x2)	# 835
	addi	x2, x2, -44	# 835
	jal		x1, min_caml_read_float	# 835
	addi	x2, x2, 44	# 835
	lw		x1, -40(x2)	# 835
	mul		x5, x30, x12	# 835
	add		x5, x4, x5	# 835
	fsw		f1, 0(x5)	# 835
	sw		x1, -40(x2)	# 836
	addi	x2, x2, -44	# 836
	jal		x1, min_caml_read_float	# 836
	addi	x2, x2, 44	# 836
	lw		x1, -40(x2)	# 836
	mul		x5, x30, x7	# 836
	add		x5, x4, x5	# 836
	fsw		f1, 0(x5)	# 836
	sw		x1, -40(x2)	# 838
	addi	x2, x2, -44	# 838
	jal		x1, min_caml_read_float	# 838
	addi	x2, x2, 44	# 838
	lw		x1, -40(x2)	# 838
	flw		f2, -28(x2)	# 122
	fle		f2, f1, fle.31555	# 122
	addi	x5, x0, 1	# 122
	jal		x0, fle_cont.31554	# 122
fle.31555:
	addi	x5, x0, 0	# 122
fle_cont.31554:
	fsw		f1, -40(x2)	# 840
	sw		x4, -44(x2)	# 840
	sw		x5, -48(x2)	# 840
	sw		x7, -52(x2)	# 840
	addi	x4, x7, 0	# 840
	fadd	f1, f0, f2	# 840
	sw		x1, -56(x2)	# 840
	addi	x2, x2, -60	# 840
	jal		x1, min_caml_create_float_array	# 840
	addi	x2, x2, 60	# 840
	lw		x1, -56(x2)	# 840
	sw		x1, -56(x2)	# 841
	addi	x2, x2, -60	# 841
	jal		x1, min_caml_read_float	# 841
	addi	x2, x2, 60	# 841
	lw		x1, -56(x2)	# 841
	mul		x5, x30, x11	# 841
	add		x5, x4, x5	# 841
	fsw		f1, 0(x5)	# 841
	sw		x1, -56(x2)	# 842
	addi	x2, x2, -60	# 842
	jal		x1, min_caml_read_float	# 842
	addi	x2, x2, 60	# 842
	lw		x1, -56(x2)	# 842
	mul		x5, x30, x12	# 842
	add		x5, x4, x5	# 842
	fsw		f1, 0(x5)	# 842
	lw		x5, -32(x2)	# 844
	flw		f1, -28(x2)	# 844
	sw		x4, -56(x2)	# 844
	addi	x4, x5, 0	# 844
	sw		x1, -60(x2)	# 844
	addi	x2, x2, -64	# 844
	jal		x1, min_caml_create_float_array	# 844
	addi	x2, x2, 64	# 844
	lw		x1, -60(x2)	# 844
	sw		x1, -60(x2)	# 845
	addi	x2, x2, -64	# 845
	jal		x1, min_caml_read_float	# 845
	addi	x2, x2, 64	# 845
	lw		x1, -60(x2)	# 845
	mul		x5, x30, x11	# 845
	add		x5, x4, x5	# 845
	fsw		f1, 0(x5)	# 845
	sw		x1, -60(x2)	# 846
	addi	x2, x2, -64	# 846
	jal		x1, min_caml_read_float	# 846
	addi	x2, x2, 64	# 846
	lw		x1, -60(x2)	# 846
	mul		x5, x30, x12	# 846
	add		x5, x4, x5	# 846
	fsw		f1, 0(x5)	# 846
	sw		x1, -60(x2)	# 847
	addi	x2, x2, -64	# 847
	jal		x1, min_caml_read_float	# 847
	addi	x2, x2, 64	# 847
	lw		x1, -60(x2)	# 847
	lw		x5, -52(x2)	# 847
	mul		x7, x30, x5	# 847
	add		x7, x4, x7	# 847
	fsw		f1, 0(x7)	# 847
	lw		x7, -32(x2)	# 849
	flw		f1, -28(x2)	# 849
	sw		x4, -60(x2)	# 849
	addi	x4, x7, 0	# 849
	sw		x1, -64(x2)	# 849
	addi	x2, x2, -68	# 849
	jal		x1, min_caml_create_float_array	# 849
	addi	x2, x2, 68	# 849
	lw		x1, -64(x2)	# 849
	lw		x5, -24(x2)	# 850
	beq		x5, x11, beq_cont.31556	# 850
	sw		x1, -64(x2)	# 852
	addi	x2, x2, -68	# 852
	jal		x1, min_caml_read_float	# 852
	addi	x2, x2, 68	# 852
	lw		x1, -64(x2)	# 852
	lui		x7, %hi(l.26391)	# 719
	ori		x7, x0, %lo(l.26391)	# 719
	flw		f2, 0(x7)	# 719
	fmul	f1, f1, f2	# 719
	mul		x7, x30, x11	# 852
	add		x7, x4, x7	# 852
	fsw		f1, 0(x7)	# 852
	sw		x1, -64(x2)	# 853
	addi	x2, x2, -68	# 853
	jal		x1, min_caml_read_float	# 853
	addi	x2, x2, 68	# 853
	lw		x1, -64(x2)	# 853
	fmul	f1, f1, f2	# 719
	mul		x7, x30, x12	# 853
	add		x7, x4, x7	# 853
	fsw		f1, 0(x7)	# 853
	sw		x1, -64(x2)	# 854
	addi	x2, x2, -68	# 854
	jal		x1, min_caml_read_float	# 854
	addi	x2, x2, 68	# 854
	lw		x1, -64(x2)	# 854
	fmul	f1, f1, f2	# 719
	lw		x7, -52(x2)	# 854
	mul		x8, x30, x7	# 854
	add		x8, x4, x8	# 854
	fsw		f1, 0(x8)	# 854
	jal		x0, beq_cont.31556	# 850
beq_cont.31556:
	lw		x7, -52(x2)	# 861
	lw		x8, -12(x2)	# 861
	beq		x8, x7, beq.31559	# 861
	lw		x9, -48(x2)	# 861
	jal		x0, beq_cont.31558	# 861
beq.31559:
	addi	x9, x0, 1	# 861
beq_cont.31558:
	addi	x10, x0, 4	# 862
	flw		f1, -28(x2)	# 862
	sw		x4, -64(x2)	# 862
	addi	x4, x10, 0	# 862
	sw		x1, -68(x2)	# 862
	addi	x2, x2, -72	# 862
	jal		x1, min_caml_create_float_array	# 862
	addi	x2, x2, 72	# 862
	lw		x1, -68(x2)	# 862
	addi	x5, x3, 0	# 865
	addi	x3, x3, 44	# 865
	sw		x4, 40(x5)	# 865
	lw		x4, -64(x2)	# 865
	sw		x4, 36(x5)	# 865
	lw		x10, -60(x2)	# 865
	sw		x10, 32(x5)	# 865
	lw		x10, -56(x2)	# 865
	sw		x10, 28(x5)	# 865
	sw		x9, 24(x5)	# 865
	lw		x9, -44(x2)	# 865
	sw		x9, 20(x5)	# 865
	lw		x9, -36(x2)	# 865
	sw		x9, 16(x5)	# 865
	lw		x10, -24(x2)	# 865
	sw		x10, 12(x5)	# 865
	lw		x13, -16(x2)	# 865
	sw		x13, 8(x5)	# 865
	sw		x8, 4(x5)	# 865
	lw		x13, -8(x2)	# 865
	sw		x13, 0(x5)	# 865
	lw		x13, -4(x2)	# 873
	mul		x14, x30, x13	# 873
	addi	x14, x14, 63844	# 873
	sw		x5, 0(x14)	# 873
	lw		x5, -32(x2)	# 875
	beq		x8, x5, beq.31561	# 875
	beq		x8, x7, beq.31563	# 885
	jal		x0, beq_cont.31560	# 885
beq.31563:
	mul		x5, x30, x11	# 325
	add		x5, x9, x5	# 325
	flw		f1, 0(x5)	# 325
	fmul	f1, f1, f1	# 127
	mul		x5, x30, x12	# 325
	add		x5, x9, x5	# 325
	flw		f2, 0(x5)	# 325
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 325
	mul		x5, x30, x7	# 325
	add		x5, x9, x5	# 325
	flw		f2, 0(x5)	# 325
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 325
	fsqrt	f1, f1	# 325
	flw		f2, -28(x2)	# 120
	feq		f1, f2, feq.31565	# 120
	flw		f3, -40(x2)	# 122
	fle		f2, f3, fle.31567	# 122
	fdiv	f1, f30, f1	# 326
	jal		x0, feq_cont.31564	# 122
fle.31567:
	lui		x5, %hi(l.26420)	# 326
	ori		x5, x0, %lo(l.26420)	# 326
	flw		f2, 0(x5)	# 326
	fdiv	f1, f2, f1	# 326
	jal		x0, feq_cont.31564	# 120
feq.31565:
	fadd	f1, f0, f30	# 326
feq_cont.31564:
	mul		x5, x30, x11	# 327
	add		x5, x9, x5	# 327
	flw		f2, 0(x5)	# 327
	fmul	f2, f2, f1	# 327
	mul		x5, x30, x11	# 327
	add		x5, x9, x5	# 327
	fsw		f2, 0(x5)	# 327
	mul		x5, x30, x12	# 328
	add		x5, x9, x5	# 328
	flw		f2, 0(x5)	# 328
	fmul	f2, f2, f1	# 328
	mul		x5, x30, x12	# 328
	add		x5, x9, x5	# 328
	fsw		f2, 0(x5)	# 328
	mul		x5, x30, x7	# 329
	add		x5, x9, x5	# 329
	flw		f2, 0(x5)	# 329
	fmul	f1, f2, f1	# 329
	mul		x5, x30, x7	# 329
	add		x5, x9, x5	# 329
	fsw		f1, 0(x5)	# 329
	jal		x0, beq_cont.31560	# 875
beq.31561:
	mul		x5, x30, x11	# 878
	add		x5, x9, x5	# 878
	flw		f1, 0(x5)	# 878
	flw		f2, -28(x2)	# 120
	feq		f1, f2, feq.31569	# 120
	fle		f1, f2, fle.31573	# 121
	fadd	f3, f0, f30	# 255
	jal		x0, feq_cont.31570	# 121
fle.31573:
	lui		x5, %hi(l.26420)	# 256
	ori		x5, x0, %lo(l.26420)	# 256
	flw		f3, 0(x5)	# 256
	jal		x0, feq_cont.31570	# 120
feq.31571:
	fadd	f3, f0, f2	# 254
feq_cont.31570:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 879
	jal		x0, feq_cont.31568	# 120
feq.31569:
	fadd	f1, f0, f2	# 879
feq_cont.31568:
	mul		x5, x30, x11	# 879
	add		x5, x9, x5	# 879
	fsw		f1, 0(x5)	# 879
	mul		x5, x30, x12	# 880
	add		x5, x9, x5	# 880
	flw		f1, 0(x5)	# 880
	feq		f1, f2, feq.31575	# 120
	fle		f1, f2, fle.31579	# 121
	fadd	f3, f0, f30	# 255
	jal		x0, feq_cont.31576	# 121
fle.31579:
	lui		x5, %hi(l.26420)	# 256
	ori		x5, x0, %lo(l.26420)	# 256
	flw		f3, 0(x5)	# 256
	jal		x0, feq_cont.31576	# 120
feq.31577:
	fadd	f3, f0, f2	# 254
feq_cont.31576:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 881
	jal		x0, feq_cont.31574	# 120
feq.31575:
	fadd	f1, f0, f2	# 881
feq_cont.31574:
	mul		x5, x30, x12	# 881
	add		x5, x9, x5	# 881
	fsw		f1, 0(x5)	# 881
	mul		x5, x30, x7	# 882
	add		x5, x9, x5	# 882
	flw		f1, 0(x5)	# 882
	feq		f1, f2, feq.31581	# 120
	fle		f1, f2, fle.31585	# 121
	fadd	f2, f0, f30	# 255
	jal		x0, feq_cont.31582	# 121
fle.31585:
	lui		x5, %hi(l.26420)	# 256
	ori		x5, x0, %lo(l.26420)	# 256
	flw		f2, 0(x5)	# 256
	jal		x0, feq_cont.31582	# 120
feq_cont.31582:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f2, f1	# 883
	jal		x0, feq_cont.31580	# 120
feq.31581:
	fadd	f1, f0, f2	# 883
feq_cont.31580:
	mul		x5, x30, x7	# 883
	add		x5, x9, x5	# 883
	fsw		f1, 0(x5)	# 883
beq_cont.31560:
	beq		x10, x11, beq_cont.31586	# 891
	mul		x5, x30, x11	# 780
	add		x5, x4, x5	# 780
	flw		f1, 0(x5)	# 780
	fsw		f1, -68(x2)	# 780
	addi	x29, x6, 0	# 780
	sw		x1, -72(x2)	# 780
	addi	x2, x2, -76	# 780
	lw		x31, 0(x29)	# 780
	jalr	x1, x31, 0	# 780
	addi	x2, x2, 76	# 780
	lw		x1, -72(x2)	# 780
	flw		f2, -68(x2)	# 781
	lw		x29, -20(x2)	# 781
	fsw		f1, -72(x2)	# 781
	fadd	f1, f0, f2	# 781
	sw		x1, -76(x2)	# 781
	addi	x2, x2, -80	# 781
	lw		x31, 0(x29)	# 781
	jalr	x1, x31, 0	# 781
	addi	x2, x2, 80	# 781
	lw		x1, -76(x2)	# 781
	mul		x4, x30, x12	# 782
	lw		x5, -64(x2)	# 782
	add		x4, x5, x4	# 782
	flw		f2, 0(x4)	# 782
	fsw		f1, -76(x2)	# 782
	fsw		f2, -80(x2)	# 782
	addi	x29, x6, 0	# 782
	fadd	f1, f0, f2	# 782
	sw		x1, -84(x2)	# 782
	addi	x2, x2, -88	# 782
	lw		x31, 0(x29)	# 782
	jalr	x1, x31, 0	# 782
	addi	x2, x2, 88	# 782
	lw		x1, -84(x2)	# 782
	flw		f2, -80(x2)	# 783
	lw		x29, -20(x2)	# 783
	fsw		f1, -84(x2)	# 783
	fadd	f1, f0, f2	# 783
	sw		x1, -88(x2)	# 783
	addi	x2, x2, -92	# 783
	lw		x31, 0(x29)	# 783
	jalr	x1, x31, 0	# 783
	addi	x2, x2, 92	# 783
	lw		x1, -88(x2)	# 783
	mul		x4, x30, x7	# 784
	add		x4, x5, x4	# 784
	flw		f2, 0(x4)	# 784
	fsw		f1, -88(x2)	# 784
	fsw		f2, -92(x2)	# 784
	addi	x29, x6, 0	# 784
	fadd	f1, f0, f2	# 784
	sw		x1, -96(x2)	# 784
	addi	x2, x2, -100	# 784
	lw		x31, 0(x29)	# 784
	jalr	x1, x31, 0	# 784
	addi	x2, x2, 100	# 784
	lw		x1, -96(x2)	# 784
	flw		f2, -92(x2)	# 785
	lw		x29, -20(x2)	# 785
	fsw		f1, -96(x2)	# 785
	fadd	f1, f0, f2	# 785
	sw		x1, -100(x2)	# 785
	addi	x2, x2, -104	# 785
	lw		x31, 0(x29)	# 785
	jalr	x1, x31, 0	# 785
	addi	x2, x2, 104	# 785
	lw		x1, -100(x2)	# 785
	flw		f2, -84(x2)	# 787
	flw		f3, -96(x2)	# 787
	fmul	f4, f2, f3	# 787
	flw		f5, -76(x2)	# 788
	flw		f6, -88(x2)	# 788
	fmul	f7, f5, f6	# 788
	fmul	f8, f7, f3	# 788
	flw		f9, -72(x2)	# 788
	fmul	f10, f9, f1	# 788
	fsub	f8, f8, f10	# 788
	fmul	f10, f9, f6	# 789
	fmul	f11, f10, f3	# 789
	fmul	f12, f5, f1	# 789
	fadd	f11, f11, f12	# 789
	fmul	f12, f2, f1	# 791
	fmul	f7, f7, f1	# 792
	fmul	f13, f9, f3	# 792
	fadd	f7, f7, f13	# 792
	fmul	f1, f10, f1	# 793
	fmul	f3, f5, f3	# 793
	fsub	f1, f1, f3	# 793
	fsub	f3, f0, f6	# 123
	fmul	f5, f5, f2	# 796
	fmul	f2, f9, f2	# 797
	mul		x4, x30, x11	# 800
	add		x4, x9, x4	# 800
	flw		f6, 0(x4)	# 800
	mul		x4, x30, x12	# 801
	add		x4, x9, x4	# 801
	flw		f9, 0(x4)	# 801
	mul		x4, x30, x7	# 802
	add		x4, x9, x4	# 802
	flw		f10, 0(x4)	# 802
	fmul	f13, f4, f4	# 127
	fmul	f13, f6, f13	# 807
	fmul	f14, f12, f12	# 127
	fmul	f14, f9, f14	# 807
	fadd	f13, f13, f14	# 807
	fmul	f14, f3, f3	# 127
	fmul	f14, f10, f14	# 807
	fadd	f13, f13, f14	# 807
	mul		x4, x30, x11	# 807
	add		x4, x9, x4	# 807
	fsw		f13, 0(x4)	# 807
	fmul	f13, f8, f8	# 127
	fmul	f13, f6, f13	# 808
	fmul	f14, f7, f7	# 127
	fmul	f14, f9, f14	# 808
	fadd	f13, f13, f14	# 808
	fmul	f14, f5, f5	# 127
	fmul	f14, f10, f14	# 808
	fadd	f13, f13, f14	# 808
	mul		x4, x30, x12	# 808
	add		x4, x9, x4	# 808
	fsw		f13, 0(x4)	# 808
	fmul	f13, f11, f11	# 127
	fmul	f13, f6, f13	# 809
	fmul	f14, f1, f1	# 127
	fmul	f14, f9, f14	# 809
	fadd	f13, f13, f14	# 809
	fmul	f14, f2, f2	# 127
	fmul	f14, f10, f14	# 809
	fadd	f13, f13, f14	# 809
	mul		x4, x30, x7	# 809
	add		x4, x9, x4	# 809
	fsw		f13, 0(x4)	# 809
	fmul	f14, f6, f8	# 812
	fmul	f14, f14, f11	# 812
	fmul	f15, f9, f7	# 812
	fmul	f15, f15, f1	# 812
	fadd	f14, f14, f15	# 812
	fmul	f15, f10, f5	# 812
	fmul	f15, f15, f2	# 812
	fadd	f14, f14, f15	# 812
	fmul	f14, f26, f14	# 812
	mul		x4, x30, x11	# 812
	add		x4, x5, x4	# 812
	fsw		f14, 0(x4)	# 812
	fmul	f4, f6, f4	# 813
	fmul	f6, f4, f11	# 813
	fmul	f9, f9, f12	# 813
	fmul	f1, f9, f1	# 813
	fadd	f1, f6, f1	# 813
	fmul	f3, f10, f3	# 813
	fmul	f2, f3, f2	# 813
	fadd	f1, f1, f2	# 813
	fmul	f1, f26, f1	# 813
	mul		x4, x30, x12	# 813
	add		x4, x5, x4	# 813
	fsw		f1, 0(x4)	# 813
	fmul	f1, f4, f8	# 814
	fmul	f2, f9, f7	# 814
	fadd	f1, f1, f2	# 814
	fmul	f2, f3, f5	# 814
	fadd	f1, f1, f2	# 814
	fmul	f1, f26, f1	# 814
	mul		x4, x30, x7	# 814
	add		x4, x5, x4	# 814
	fsw		f1, 0(x4)	# 814
	jal		x0, beq_cont.31586	# 891
beq_cont.31586:
	addi	x4, x0, 1	# 895
	jal		x0, beq_cont.31552	# 822
beq.31553:
	addi	x4, x0, 0	# 898
beq_cont.31552:
	beq		x4, x11, beq.31588	# 904
	lw		x4, -4(x2)	# 905
	add		x4, x4, x12	# 905
	lw		x29, 0(x2)	# 905
	lw		x31, 0(x29)	# 905
	jalr	x0, x31, 0	# 905
beq.31588:
	mul		x4, x30, x11	# 907
	addi	x4, x4, 63796	# 907
	lw		x5, -4(x2)	# 907
	sw		x5, 0(x4)	# 907
	jalr	x0, x1, 0	# 907
ble.31551:
	jalr	x0, x1, 0	# 908
read_net_item.2688.17961:
	lw		x5, 8(x29)	# 919
	lw		x6, 4(x29)	# 919
	sw		x29, 0(x2)	# 919
	sw		x4, -4(x2)	# 919
	sw		x1, -8(x2)	# 919
	addi	x2, x2, -12	# 919
	jal		x1, min_caml_read_int	# 919
	addi	x2, x2, 12	# 919
	lw		x1, -8(x2)	# 919
	beq		x4, x5, beq.31591	# 920
	lw		x5, -4(x2)	# 922
	add		x6, x5, x6	# 922
	lw		x29, 0(x2)	# 922
	sw		x4, -8(x2)	# 922
	addi	x4, x6, 0	# 922
	sw		x1, -12(x2)	# 922
	addi	x2, x2, -16	# 922
	lw		x31, 0(x29)	# 922
	jalr	x1, x31, 0	# 922
	addi	x2, x2, 16	# 922
	lw		x1, -12(x2)	# 922
	lw		x5, -4(x2)	# 923
	mul		x5, x30, x5	# 923
	add		x5, x4, x5	# 923
	lw		x6, -8(x2)	# 923
	sw		x6, 0(x5)	# 923
	jalr	x0, x1, 0	# 923
beq.31591:
	lw		x4, -4(x2)	# 920
	add		x4, x4, x6	# 920
	jal		x0, min_caml_create_array	# 920
read_or_network.2690.17963:
	lw		x5, 16(x29)	# 927
	lw		x6, 12(x29)	# 927
	lw		x7, 8(x29)	# 927
	lw		x8, 4(x29)	# 927
	sw		x29, 0(x2)	# 927
	sw		x4, -4(x2)	# 927
	sw		x6, -8(x2)	# 927
	sw		x7, -12(x2)	# 927
	addi	x4, x7, 0	# 927
	addi	x29, x5, 0	# 927
	sw		x1, -16(x2)	# 927
	addi	x2, x2, -20	# 927
	lw		x31, 0(x29)	# 927
	jalr	x1, x31, 0	# 927
	addi	x2, x2, 20	# 927
	lw		x1, -16(x2)	# 927
	addi	x5, x4, 0	# 927
	lw		x4, -12(x2)	# 928
	mul		x4, x30, x4	# 928
	add		x4, x5, x4	# 928
	lw		x4, 0(x4)	# 928
	lw		x6, -8(x2)	# 928
	beq		x4, x6, beq.31592	# 928
	lw		x4, -4(x2)	# 931
	add		x6, x4, x8	# 931
	lw		x29, 0(x2)	# 931
	sw		x5, -16(x2)	# 931
	addi	x4, x6, 0	# 931
	sw		x1, -20(x2)	# 931
	addi	x2, x2, -24	# 931
	lw		x31, 0(x29)	# 931
	jalr	x1, x31, 0	# 931
	addi	x2, x2, 24	# 931
	lw		x1, -20(x2)	# 931
	lw		x5, -4(x2)	# 932
	mul		x5, x30, x5	# 932
	add		x5, x4, x5	# 932
	lw		x6, -16(x2)	# 932
	sw		x6, 0(x5)	# 932
	jalr	x0, x1, 0	# 932
beq.31592:
	lw		x4, -4(x2)	# 929
	add		x4, x4, x8	# 929
	jal		x0, min_caml_create_array	# 929
read_and_network.2692.17965:
	lw		x5, 16(x29)	# 936
	lw		x6, 12(x29)	# 936
	lw		x7, 8(x29)	# 936
	lw		x8, 4(x29)	# 936
	sw		x29, 0(x2)	# 936
	sw		x4, -4(x2)	# 936
	sw		x6, -8(x2)	# 936
	sw		x7, -12(x2)	# 936
	addi	x4, x7, 0	# 936
	addi	x29, x5, 0	# 936
	sw		x1, -16(x2)	# 936
	addi	x2, x2, -20	# 936
	lw		x31, 0(x29)	# 936
	jalr	x1, x31, 0	# 936
	addi	x2, x2, 20	# 936
	lw		x1, -16(x2)	# 936
	lw		x5, -12(x2)	# 937
	mul		x5, x30, x5	# 937
	add		x5, x4, x5	# 937
	lw		x5, 0(x5)	# 937
	lw		x6, -8(x2)	# 937
	beq		x5, x6, beq.31593	# 937
	lw		x5, -4(x2)	# 939
	mul		x6, x30, x5	# 939
	addi	x6, x6, 64128	# 939
	sw		x4, 0(x6)	# 939
	add		x4, x5, x8	# 940
	lw		x29, 0(x2)	# 940
	lw		x31, 0(x29)	# 940
	jalr	x0, x31, 0	# 940
beq.31593:
	jalr	x0, x1, 0	# 937
iter_setup_dirvec_constants.2789.17967:
	lw		x6, 24(x29)	# 1312
	lw		x7, 20(x29)	# 1312
	lw		x8, 16(x29)	# 1312
	lw		x9, 12(x29)	# 1312
	lw		x10, 8(x29)	# 1312
	flw		f1, 4(x29)	# 1312
	ble		x9, x5, ble.31595	# 1312
	jalr	x0, x1, 0	# 1325
ble.31595:
	mul		x11, x30, x5	# 1313
	addi	x11, x11, 63844	# 1313
	lw		x11, 0(x11)	# 1313
	lw		x12, 4(x4)	# 687
	lw		x13, 0(x4)	# 681
	lw		x14, 4(x11)	# 395
	sw		x4, 0(x2)	# 1317
	sw		x29, -4(x2)	# 1317
	beq		x14, x10, beq.31598	# 1317
	beq		x14, x7, beq.31600	# 1319
	sw		x5, -8(x2)	# 1283
	fsw		f1, -12(x2)	# 1283
	addi	x4, x6, 0	# 1283
	sw		x1, -16(x2)	# 1283
	addi	x2, x2, -20	# 1283
	jal		x1, min_caml_create_float_array	# 1283
	addi	x2, x2, 20	# 1283
	lw		x1, -16(x2)	# 1283
	mul		x5, x30, x9	# 1285
	add		x5, x13, x5	# 1285
	flw		f1, 0(x5)	# 1285
	mul		x5, x30, x10	# 1285
	add		x5, x13, x5	# 1285
	flw		f2, 0(x5)	# 1285
	mul		x5, x30, x7	# 1285
	add		x5, x13, x5	# 1285
	flw		f3, 0(x5)	# 1285
	fmul	f4, f1, f1	# 127
	lw		x5, 16(x11)	# 433
	mul		x6, x30, x9	# 438
	add		x5, x5, x6	# 438
	flw		f5, 0(x5)	# 438
	fmul	f4, f4, f5	# 1009
	fmul	f5, f2, f2	# 127
	lw		x5, 16(x11)	# 443
	mul		x6, x30, x10	# 448
	add		x5, x5, x6	# 448
	flw		f6, 0(x5)	# 448
	fmul	f5, f5, f6	# 1009
	fadd	f4, f4, f5	# 1009
	fmul	f5, f3, f3	# 127
	lw		x5, 16(x11)	# 453
	mul		x6, x30, x7	# 458
	add		x5, x5, x6	# 458
	flw		f6, 0(x5)	# 458
	fmul	f5, f5, f6	# 1009
	fadd	f4, f4, f5	# 1009
	lw		x5, 12(x11)	# 424
	beq		x5, x9, beq_cont.31601	# 1011
	fmul	f5, f2, f3	# 1015
	lw		x5, 36(x11)	# 553
	mul		x6, x30, x9	# 558
	add		x5, x5, x6	# 558
	flw		f6, 0(x5)	# 558
	fmul	f5, f5, f6	# 1015
	fadd	f4, f4, f5	# 1014
	fmul	f5, f3, f1	# 1016
	lw		x5, 36(x11)	# 563
	mul		x6, x30, x10	# 568
	add		x5, x5, x6	# 568
	flw		f6, 0(x5)	# 568
	fmul	f5, f5, f6	# 1016
	fadd	f4, f4, f5	# 1014
	fmul	f5, f1, f2	# 1017
	lw		x5, 36(x11)	# 573
	mul		x6, x30, x7	# 578
	add		x5, x5, x6	# 578
	flw		f6, 0(x5)	# 578
	fmul	f5, f5, f6	# 1017
	fadd	f4, f4, f5	# 1014
	jal		x0, beq_cont.31601	# 1011
beq_cont.31601:
	lw		x5, 16(x11)	# 433
	mul		x6, x30, x9	# 438
	add		x5, x5, x6	# 438
	flw		f5, 0(x5)	# 438
	fmul	f1, f1, f5	# 1286
	fsub	f1, f0, f1	# 123
	lw		x5, 16(x11)	# 443
	mul		x6, x30, x10	# 448
	add		x5, x5, x6	# 448
	flw		f5, 0(x5)	# 448
	fmul	f2, f2, f5	# 1287
	fsub	f2, f0, f2	# 123
	lw		x5, 16(x11)	# 453
	mul		x6, x30, x7	# 458
	add		x5, x5, x6	# 458
	flw		f5, 0(x5)	# 458
	fmul	f3, f3, f5	# 1288
	fsub	f3, f0, f3	# 123
	mul		x5, x30, x9	# 1290
	add		x5, x4, x5	# 1290
	fsw		f4, 0(x5)	# 1290
	lw		x5, 12(x11)	# 424
	beq		x5, x9, beq.31604	# 1294
	mul		x5, x30, x7	# 1295
	add		x5, x13, x5	# 1295
	flw		f5, 0(x5)	# 1295
	lw		x5, 36(x11)	# 563
	mul		x6, x30, x10	# 568
	add		x5, x5, x6	# 568
	flw		f6, 0(x5)	# 568
	fmul	f5, f5, f6	# 1295
	mul		x5, x30, x10	# 1295
	add		x5, x13, x5	# 1295
	flw		f7, 0(x5)	# 1295
	lw		x5, 36(x11)	# 573
	mul		x6, x30, x7	# 578
	add		x5, x5, x6	# 578
	flw		f8, 0(x5)	# 578
	fmul	f7, f7, f8	# 1295
	fadd	f5, f5, f7	# 1295
	fmul	f5, f5, f24	# 126
	fsub	f1, f1, f5	# 1295
	mul		x5, x30, x10	# 1295
	add		x5, x4, x5	# 1295
	fsw		f1, 0(x5)	# 1295
	mul		x5, x30, x7	# 1296
	add		x5, x13, x5	# 1296
	flw		f1, 0(x5)	# 1296
	lw		x5, 36(x11)	# 553
	mul		x6, x30, x9	# 558
	add		x5, x5, x6	# 558
	flw		f5, 0(x5)	# 558
	fmul	f1, f1, f5	# 1296
	mul		x5, x30, x9	# 1296
	add		x5, x13, x5	# 1296
	flw		f9, 0(x5)	# 1296
	fmul	f8, f9, f8	# 1296
	fadd	f1, f1, f8	# 1296
	fmul	f1, f1, f24	# 126
	fsub	f1, f2, f1	# 1296
	mul		x5, x30, x7	# 1296
	add		x5, x4, x5	# 1296
	fsw		f1, 0(x5)	# 1296
	mul		x5, x30, x10	# 1297
	add		x5, x13, x5	# 1297
	flw		f1, 0(x5)	# 1297
	fmul	f1, f1, f5	# 1297
	mul		x5, x30, x9	# 1297
	add		x5, x13, x5	# 1297
	flw		f2, 0(x5)	# 1297
	fmul	f2, f2, f6	# 1297
	fadd	f1, f1, f2	# 1297
	fmul	f1, f1, f24	# 126
	fsub	f1, f3, f1	# 1297
	mul		x5, x30, x8	# 1297
	add		x5, x4, x5	# 1297
	fsw		f1, 0(x5)	# 1297
	jal		x0, beq_cont.31603	# 1294
beq.31604:
	mul		x5, x30, x10	# 1299
	add		x5, x4, x5	# 1299
	fsw		f1, 0(x5)	# 1299
	mul		x5, x30, x7	# 1300
	add		x5, x4, x5	# 1300
	fsw		f2, 0(x5)	# 1300
	mul		x5, x30, x8	# 1301
	add		x5, x4, x5	# 1301
	fsw		f3, 0(x5)	# 1301
beq_cont.31603:
	flw		f1, -12(x2)	# 120
	feq		f4, f1, feq_cont.31605	# 120
	addi	x5, x0, 4	# 1304
	fdiv	f1, f30, f4	# 1304
	mul		x5, x30, x5	# 1304
	add		x5, x4, x5	# 1304
	fsw		f1, 0(x5)	# 1304
	jal		x0, feq_cont.31605	# 120
feq_cont.31605:
	lw		x5, -8(x2)	# 1322
	mul		x6, x30, x5	# 1322
	add		x6, x12, x6	# 1322
	sw		x4, 0(x6)	# 1322
	jal		x0, beq_cont.31597	# 1319
beq.31600:
	addi	x6, x0, 4	# 1264
	sw		x5, -8(x2)	# 1264
	fsw		f1, -12(x2)	# 1264
	addi	x4, x6, 0	# 1264
	sw		x1, -16(x2)	# 1264
	addi	x2, x2, -20	# 1264
	jal		x1, min_caml_create_float_array	# 1264
	addi	x2, x2, 20	# 1264
	lw		x1, -16(x2)	# 1264
	mul		x5, x30, x9	# 1266
	add		x5, x13, x5	# 1266
	flw		f1, 0(x5)	# 1266
	lw		x5, 16(x11)	# 433
	mul		x6, x30, x9	# 438
	add		x5, x5, x6	# 438
	flw		f2, 0(x5)	# 438
	fmul	f1, f1, f2	# 1266
	mul		x5, x30, x10	# 1266
	add		x5, x13, x5	# 1266
	flw		f3, 0(x5)	# 1266
	lw		x5, 16(x11)	# 443
	mul		x6, x30, x10	# 448
	add		x5, x5, x6	# 448
	flw		f4, 0(x5)	# 448
	fmul	f3, f3, f4	# 1266
	fadd	f1, f1, f3	# 1266
	mul		x5, x30, x7	# 1266
	add		x5, x13, x5	# 1266
	flw		f3, 0(x5)	# 1266
	lw		x5, 16(x11)	# 453
	mul		x6, x30, x7	# 458
	add		x5, x5, x6	# 458
	flw		f5, 0(x5)	# 458
	fmul	f3, f3, f5	# 1266
	fadd	f1, f1, f3	# 1266
	flw		f3, -12(x2)	# 121
	fle		f1, f3, fle.31608	# 121
	lui		x5, %hi(l.26420)	# 1270
	ori		x5, x0, %lo(l.26420)	# 1270
	flw		f3, 0(x5)	# 1270
	fdiv	f3, f3, f1	# 1270
	mul		x5, x30, x9	# 1270
	add		x5, x4, x5	# 1270
	fsw		f3, 0(x5)	# 1270
	fdiv	f2, f2, f1	# 1272
	fsub	f2, f0, f2	# 123
	mul		x5, x30, x10	# 1272
	add		x5, x4, x5	# 1272
	fsw		f2, 0(x5)	# 1272
	fdiv	f2, f4, f1	# 1273
	fsub	f2, f0, f2	# 123
	mul		x5, x30, x7	# 1273
	add		x5, x4, x5	# 1273
	fsw		f2, 0(x5)	# 1273
	fdiv	f1, f5, f1	# 1274
	fsub	f1, f0, f1	# 123
	mul		x5, x30, x8	# 1274
	add		x5, x4, x5	# 1274
	fsw		f1, 0(x5)	# 1274
	jal		x0, fle_cont.31607	# 121
fle.31608:
	mul		x5, x30, x9	# 1276
	add		x5, x4, x5	# 1276
	fsw		f3, 0(x5)	# 1276
fle_cont.31607:
	lw		x5, -8(x2)	# 1320
	mul		x6, x30, x5	# 1320
	add		x6, x12, x6	# 1320
	sw		x4, 0(x6)	# 1320
	jal		x0, beq_cont.31597	# 1317
beq.31598:
	addi	x14, x0, 6	# 1237
	sw		x5, -8(x2)	# 1237
	fsw		f1, -12(x2)	# 1237
	addi	x4, x14, 0	# 1237
	sw		x1, -16(x2)	# 1237
	addi	x2, x2, -20	# 1237
	jal		x1, min_caml_create_float_array	# 1237
	addi	x2, x2, 20	# 1237
	lw		x1, -16(x2)	# 1237
	mul		x5, x30, x9	# 1239
	add		x5, x13, x5	# 1239
	flw		f1, 0(x5)	# 1239
	flw		f2, -12(x2)	# 120
	feq		f1, f2, feq.31610	# 120
	lw		x5, 24(x11)	# 415
	fle		f2, f1, fle.31612	# 122
	addi	x14, x0, 1	# 122
	jal		x0, fle_cont.31611	# 122
fle.31612:
	addi	x14, x0, 0	# 122
fle_cont.31611:
	beq		x5, x9, beq.31614	# 246
	fle		f2, f1, fle.31616	# 122
	addi	x5, x0, 0	# 246
	jal		x0, beq_cont.31613	# 122
fle.31616:
	addi	x5, x0, 1	# 246
	jal		x0, beq_cont.31613	# 246
beq.31614:
	addi	x5, x14, 0	# 246
beq_cont.31613:
	lw		x14, 16(x11)	# 433
	mul		x15, x30, x9	# 438
	add		x14, x14, x15	# 438
	flw		f1, 0(x14)	# 438
	beq		x5, x9, beq.31618	# 261
	jal		x0, beq_cont.31617	# 261
beq.31618:
	fsub	f1, f0, f1	# 123
beq_cont.31617:
	mul		x5, x30, x9	# 1243
	add		x5, x4, x5	# 1243
	fsw		f1, 0(x5)	# 1243
	mul		x5, x30, x9	# 1245
	add		x5, x13, x5	# 1245
	flw		f3, 0(x5)	# 1245
	fdiv	f1, f30, f3	# 1245
	mul		x5, x30, x10	# 1245
	add		x5, x4, x5	# 1245
	fsw		f1, 0(x5)	# 1245
	jal		x0, feq_cont.31609	# 120
feq.31610:
	mul		x5, x30, x10	# 1240
	add		x5, x4, x5	# 1240
	fsw		f2, 0(x5)	# 1240
feq_cont.31609:
	mul		x5, x30, x10	# 1247
	add		x5, x13, x5	# 1247
	flw		f1, 0(x5)	# 1247
	feq		f1, f2, feq.31620	# 120
	lw		x5, 24(x11)	# 415
	fle		f2, f1, fle.31622	# 122
	addi	x14, x0, 1	# 122
	jal		x0, fle_cont.31621	# 122
fle.31622:
	addi	x14, x0, 0	# 122
fle_cont.31621:
	beq		x5, x9, beq.31624	# 246
	fle		f2, f1, fle.31626	# 122
	addi	x5, x0, 0	# 246
	jal		x0, beq_cont.31623	# 122
fle.31626:
	addi	x5, x0, 1	# 246
	jal		x0, beq_cont.31623	# 246
beq.31624:
	addi	x5, x14, 0	# 246
beq_cont.31623:
	lw		x14, 16(x11)	# 443
	mul		x15, x30, x10	# 448
	add		x14, x14, x15	# 448
	flw		f1, 0(x14)	# 448
	beq		x5, x9, beq.31628	# 261
	jal		x0, beq_cont.31627	# 261
beq.31628:
	fsub	f1, f0, f1	# 123
beq_cont.31627:
	mul		x5, x30, x7	# 1250
	add		x5, x4, x5	# 1250
	fsw		f1, 0(x5)	# 1250
	mul		x5, x30, x10	# 1251
	add		x5, x13, x5	# 1251
	flw		f3, 0(x5)	# 1251
	fdiv	f1, f30, f3	# 1251
	mul		x5, x30, x8	# 1251
	add		x5, x4, x5	# 1251
	fsw		f1, 0(x5)	# 1251
	jal		x0, feq_cont.31619	# 120
feq.31620:
	mul		x5, x30, x8	# 1248
	add		x5, x4, x5	# 1248
	fsw		f2, 0(x5)	# 1248
feq_cont.31619:
	mul		x5, x30, x7	# 1253
	add		x5, x13, x5	# 1253
	flw		f1, 0(x5)	# 1253
	feq		f1, f2, feq.31630	# 120
	addi	x5, x0, 4	# 1256
	lw		x8, 24(x11)	# 415
	fle		f2, f1, fle.31632	# 122
	addi	x14, x0, 1	# 122
	jal		x0, fle_cont.31631	# 122
fle.31632:
	addi	x14, x0, 0	# 122
fle_cont.31631:
	beq		x8, x9, beq.31634	# 246
	fle		f2, f1, fle.31636	# 122
	addi	x8, x0, 0	# 246
	jal		x0, beq_cont.31633	# 122
fle.31636:
	addi	x8, x0, 1	# 246
	jal		x0, beq_cont.31633	# 246
beq.31634:
	addi	x8, x14, 0	# 246
beq_cont.31633:
	lw		x11, 16(x11)	# 453
	mul		x14, x30, x7	# 458
	add		x11, x11, x14	# 458
	flw		f1, 0(x11)	# 458
	beq		x8, x9, beq.31638	# 261
	jal		x0, beq_cont.31637	# 261
beq.31638:
	fsub	f1, f0, f1	# 123
beq_cont.31637:
	mul		x5, x30, x5	# 1256
	add		x5, x4, x5	# 1256
	fsw		f1, 0(x5)	# 1256
	mul		x5, x30, x7	# 1257
	add		x5, x13, x5	# 1257
	flw		f2, 0(x5)	# 1257
	fdiv	f1, f30, f2	# 1257
	mul		x5, x30, x6	# 1257
	add		x5, x4, x5	# 1257
	fsw		f1, 0(x5)	# 1257
	jal		x0, feq_cont.31629	# 120
feq.31630:
	mul		x5, x30, x6	# 1254
	add		x5, x4, x5	# 1254
	fsw		f2, 0(x5)	# 1254
feq_cont.31629:
	lw		x5, -8(x2)	# 1318
	mul		x6, x30, x5	# 1318
	add		x6, x12, x6	# 1318
	sw		x4, 0(x6)	# 1318
beq_cont.31597:
	sub		x5, x5, x10	# 1324
	lw		x4, 0(x2)	# 1324
	lw		x29, -4(x2)	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x0, x31, 0	# 1324
setup_startp_constants.2794.17970:
	lw		x6, 16(x29)	# 1337
	lw		x7, 12(x29)	# 1337
	lw		x8, 8(x29)	# 1337
	lw		x9, 4(x29)	# 1337
	ble		x8, x5, ble.31639	# 1337
	jalr	x0, x1, 0	# 1352
ble.31639:
	mul		x10, x30, x5	# 1338
	addi	x10, x10, 63844	# 1338
	lw		x10, 0(x10)	# 1338
	lw		x11, 40(x10)	# 590
	lw		x12, 4(x10)	# 395
	mul		x13, x30, x8	# 1341
	add		x13, x4, x13	# 1341
	flw		f1, 0(x13)	# 1341
	lw		x13, 20(x10)	# 473
	mul		x14, x30, x8	# 478
	add		x13, x13, x14	# 478
	flw		f2, 0(x13)	# 478
	fsub	f1, f1, f2	# 1341
	mul		x13, x30, x8	# 1341
	add		x13, x11, x13	# 1341
	fsw		f1, 0(x13)	# 1341
	mul		x13, x30, x9	# 1342
	add		x13, x4, x13	# 1342
	flw		f1, 0(x13)	# 1342
	lw		x13, 20(x10)	# 483
	mul		x14, x30, x9	# 488
	add		x13, x13, x14	# 488
	flw		f2, 0(x13)	# 488
	fsub	f1, f1, f2	# 1342
	mul		x13, x30, x9	# 1342
	add		x13, x11, x13	# 1342
	fsw		f1, 0(x13)	# 1342
	mul		x13, x30, x6	# 1343
	add		x13, x4, x13	# 1343
	flw		f1, 0(x13)	# 1343
	lw		x13, 20(x10)	# 493
	mul		x14, x30, x6	# 498
	add		x13, x13, x14	# 498
	flw		f2, 0(x13)	# 498
	fsub	f1, f1, f2	# 1343
	mul		x13, x30, x6	# 1343
	add		x13, x11, x13	# 1343
	fsw		f1, 0(x13)	# 1343
	beq		x12, x6, beq.31642	# 1344
	ble		x12, x6, beq_cont.31641	# 1347
	mul		x13, x30, x8	# 1348
	add		x13, x11, x13	# 1348
	flw		f1, 0(x13)	# 1348
	mul		x13, x30, x9	# 1348
	add		x13, x11, x13	# 1348
	flw		f2, 0(x13)	# 1348
	mul		x13, x30, x6	# 1348
	add		x13, x11, x13	# 1348
	flw		f3, 0(x13)	# 1348
	fmul	f4, f1, f1	# 127
	lw		x13, 16(x10)	# 433
	mul		x14, x30, x8	# 438
	add		x13, x13, x14	# 438
	flw		f5, 0(x13)	# 438
	fmul	f4, f4, f5	# 1009
	fmul	f5, f2, f2	# 127
	lw		x13, 16(x10)	# 443
	mul		x14, x30, x9	# 448
	add		x13, x13, x14	# 448
	flw		f6, 0(x13)	# 448
	fmul	f5, f5, f6	# 1009
	fadd	f4, f4, f5	# 1009
	fmul	f5, f3, f3	# 127
	lw		x13, 16(x10)	# 453
	mul		x14, x30, x6	# 458
	add		x13, x13, x14	# 458
	flw		f6, 0(x13)	# 458
	fmul	f5, f5, f6	# 1009
	fadd	f4, f4, f5	# 1009
	lw		x13, 12(x10)	# 424
	beq		x13, x8, beq.31646	# 1011
	fmul	f5, f2, f3	# 1015
	lw		x13, 36(x10)	# 553
	mul		x8, x30, x8	# 558
	add		x8, x13, x8	# 558
	flw		f6, 0(x8)	# 558
	fmul	f5, f5, f6	# 1015
	fadd	f4, f4, f5	# 1014
	fmul	f3, f3, f1	# 1016
	lw		x8, 36(x10)	# 563
	mul		x13, x30, x9	# 568
	add		x8, x8, x13	# 568
	flw		f5, 0(x8)	# 568
	fmul	f3, f3, f5	# 1016
	fadd	f3, f4, f3	# 1014
	fmul	f1, f1, f2	# 1017
	lw		x8, 36(x10)	# 573
	mul		x6, x30, x6	# 578
	add		x6, x8, x6	# 578
	flw		f2, 0(x6)	# 578
	fmul	f1, f1, f2	# 1017
	fadd	f1, f3, f1	# 1014
	jal		x0, beq_cont.31645	# 1011
beq.31646:
	fadd	f1, f0, f4	# 1012
beq_cont.31645:
	beq		x12, x7, beq.31648	# 1349
	jal		x0, beq_cont.31647	# 1349
beq.31648:
	fsub	f1, f1, f30	# 1349
beq_cont.31647:
	mul		x6, x30, x7	# 1349
	add		x6, x11, x6	# 1349
	fsw		f1, 0(x6)	# 1349
	jal		x0, beq_cont.31641	# 1347
	jal		x0, beq_cont.31641	# 1344
beq.31642:
	lw		x10, 16(x10)	# 463
	mul		x12, x30, x8	# 1346
	add		x12, x11, x12	# 1346
	flw		f1, 0(x12)	# 1346
	mul		x12, x30, x9	# 1346
	add		x12, x11, x12	# 1346
	flw		f2, 0(x12)	# 1346
	mul		x12, x30, x6	# 1346
	add		x12, x11, x12	# 1346
	flw		f3, 0(x12)	# 1346
	mul		x8, x30, x8	# 339
	add		x8, x10, x8	# 339
	flw		f4, 0(x8)	# 339
	fmul	f1, f4, f1	# 339
	mul		x8, x30, x9	# 339
	add		x8, x10, x8	# 339
	flw		f4, 0(x8)	# 339
	fmul	f2, f4, f2	# 339
	fadd	f1, f1, f2	# 339
	mul		x6, x30, x6	# 339
	add		x6, x10, x6	# 339
	flw		f2, 0(x6)	# 339
	fmul	f2, f2, f3	# 339
	fadd	f1, f1, f2	# 339
	mul		x6, x30, x7	# 1345
	add		x6, x11, x6	# 1345
	fsw		f1, 0(x6)	# 1345
beq_cont.31641:
	sub		x5, x5, x9	# 1351
	lw		x31, 0(x29)	# 1351
	jalr	x0, x31, 0	# 1351
check_all_inside.2819.17973:
	lw		x6, 24(x29)	# 1406
	lw		x7, 20(x29)	# 1406
	lw		x8, 16(x29)	# 1406
	lw		x9, 12(x29)	# 1406
	lw		x10, 8(x29)	# 1406
	flw		f4, 4(x29)	# 1406
	mul		x11, x30, x4	# 1406
	add		x11, x5, x11	# 1406
	lw		x11, 0(x11)	# 1406
	beq		x11, x7, beq.31649	# 1407
	mul		x7, x30, x11	# 1410
	addi	x7, x7, 63844	# 1410
	lw		x7, 0(x7)	# 1410
	lw		x11, 20(x7)	# 473
	mul		x12, x30, x9	# 478
	add		x11, x11, x12	# 478
	flw		f5, 0(x11)	# 478
	fsub	f5, f1, f5	# 1392
	lw		x11, 20(x7)	# 483
	mul		x12, x30, x10	# 488
	add		x11, x11, x12	# 488
	flw		f6, 0(x11)	# 488
	fsub	f6, f2, f6	# 1393
	lw		x11, 20(x7)	# 493
	mul		x12, x30, x6	# 498
	add		x11, x11, x12	# 498
	flw		f7, 0(x11)	# 498
	fsub	f7, f3, f7	# 1394
	lw		x11, 4(x7)	# 395
	beq		x11, x10, beq.31651	# 1396
	beq		x11, x6, beq.31653	# 1398
	fmul	f8, f5, f5	# 127
	lw		x11, 16(x7)	# 433
	mul		x12, x30, x9	# 438
	add		x11, x11, x12	# 438
	flw		f9, 0(x11)	# 438
	fmul	f8, f8, f9	# 1009
	fmul	f9, f6, f6	# 127
	lw		x11, 16(x7)	# 443
	mul		x12, x30, x10	# 448
	add		x11, x11, x12	# 448
	flw		f10, 0(x11)	# 448
	fmul	f9, f9, f10	# 1009
	fadd	f8, f8, f9	# 1009
	fmul	f9, f7, f7	# 127
	lw		x11, 16(x7)	# 453
	mul		x12, x30, x6	# 458
	add		x11, x11, x12	# 458
	flw		f10, 0(x11)	# 458
	fmul	f9, f9, f10	# 1009
	fadd	f8, f8, f9	# 1009
	lw		x11, 12(x7)	# 424
	beq		x11, x9, beq.31655	# 1011
	fmul	f9, f6, f7	# 1015
	lw		x11, 36(x7)	# 553
	mul		x12, x30, x9	# 558
	add		x11, x11, x12	# 558
	flw		f10, 0(x11)	# 558
	fmul	f9, f9, f10	# 1015
	fadd	f8, f8, f9	# 1014
	fmul	f7, f7, f5	# 1016
	lw		x11, 36(x7)	# 563
	mul		x12, x30, x10	# 568
	add		x11, x11, x12	# 568
	flw		f9, 0(x11)	# 568
	fmul	f7, f7, f9	# 1016
	fadd	f7, f8, f7	# 1014
	fmul	f5, f5, f6	# 1017
	lw		x11, 36(x7)	# 573
	mul		x6, x30, x6	# 578
	add		x6, x11, x6	# 578
	flw		f6, 0(x6)	# 578
	fmul	f5, f5, f6	# 1017
	fadd	f5, f7, f5	# 1014
	jal		x0, beq_cont.31654	# 1011
beq.31655:
	fadd	f5, f0, f8	# 1012
beq_cont.31654:
	lw		x6, 4(x7)	# 395
	beq		x6, x8, beq.31657	# 1386
	jal		x0, beq_cont.31656	# 1386
beq.31657:
	fsub	f5, f5, f30	# 1386
beq_cont.31656:
	lw		x6, 24(x7)	# 415
	fle		f4, f5, fle.31659	# 122
	addi	x7, x0, 1	# 122
	jal		x0, fle_cont.31658	# 122
fle.31659:
	addi	x7, x0, 0	# 122
fle_cont.31658:
	beq		x6, x9, beq.31661	# 246
	fle		f4, f5, fle.31663	# 122
	addi	x6, x0, 0	# 246
	jal		x0, beq_cont.31660	# 122
fle.31663:
	addi	x6, x0, 1	# 246
	jal		x0, beq_cont.31660	# 246
beq.31661:
	addi	x6, x7, 0	# 246
beq_cont.31660:
	beq		x6, x9, beq.31665	# 1387
	addi	x6, x0, 0	# 1387
	jal		x0, beq_cont.31650	# 1387
beq.31665:
	addi	x6, x0, 1	# 1387
	jal		x0, beq_cont.31650	# 1398
beq.31653:
	lw		x8, 16(x7)	# 463
	mul		x11, x30, x9	# 339
	add		x11, x8, x11	# 339
	flw		f8, 0(x11)	# 339
	fmul	f5, f8, f5	# 339
	mul		x11, x30, x10	# 339
	add		x11, x8, x11	# 339
	flw		f8, 0(x11)	# 339
	fmul	f6, f8, f6	# 339
	fadd	f5, f5, f6	# 339
	mul		x6, x30, x6	# 339
	add		x6, x8, x6	# 339
	flw		f6, 0(x6)	# 339
	fmul	f6, f6, f7	# 339
	fadd	f5, f5, f6	# 339
	lw		x6, 24(x7)	# 415
	fle		f4, f5, fle.31667	# 122
	addi	x7, x0, 1	# 122
	jal		x0, fle_cont.31666	# 122
fle.31667:
	addi	x7, x0, 0	# 122
fle_cont.31666:
	beq		x6, x9, beq.31669	# 246
	fle		f4, f5, fle.31671	# 122
	addi	x6, x0, 0	# 246
	jal		x0, beq_cont.31668	# 122
fle.31671:
	addi	x6, x0, 1	# 246
	jal		x0, beq_cont.31668	# 246
beq.31669:
	addi	x6, x7, 0	# 246
beq_cont.31668:
	beq		x6, x9, beq.31673	# 1380
	addi	x6, x0, 0	# 1380
	jal		x0, beq_cont.31650	# 1380
beq.31673:
	addi	x6, x0, 1	# 1380
	jal		x0, beq_cont.31650	# 1396
beq.31651:
	fle		f5, f4, fle.31675	# 124
	jal		x0, fle_cont.31674	# 124
fle.31675:
	fsub	f5, f0, f5	# 124
fle_cont.31674:
	lw		x8, 16(x7)	# 433
	mul		x11, x30, x9	# 438
	add		x8, x8, x11	# 438
	flw		f8, 0(x8)	# 438
	fle		f8, f5, fle.31677	# 125
	fle		f6, f4, fle.31679	# 124
	fadd	f5, f0, f6	# 124
	jal		x0, fle_cont.31678	# 124
fle.31679:
	fsub	f5, f0, f6	# 124
fle_cont.31678:
	lw		x8, 16(x7)	# 443
	mul		x11, x30, x10	# 448
	add		x8, x8, x11	# 448
	flw		f6, 0(x8)	# 448
	fle		f6, f5, fle.31681	# 125
	fle		f7, f4, fle.31683	# 124
	fadd	f4, f0, f7	# 124
	jal		x0, fle_cont.31682	# 124
fle.31683:
	fsub	f4, f0, f7	# 124
fle_cont.31682:
	lw		x8, 16(x7)	# 453
	mul		x6, x30, x6	# 458
	add		x6, x8, x6	# 458
	flw		f5, 0(x6)	# 458
	fle		f5, f4, fle.31685	# 125
	addi	x6, x0, 1	# 125
	jal		x0, fle_cont.31676	# 125
fle.31685:
	addi	x6, x0, 0	# 125
	jal		x0, fle_cont.31676	# 125
fle.31681:
	addi	x6, x0, 0	# 1372
	jal		x0, fle_cont.31676	# 125
fle.31677:
	addi	x6, x0, 0	# 1373
fle_cont.31676:
	beq		x6, x9, beq.31687	# 1368
	lw		x6, 24(x7)	# 415
	jal		x0, beq_cont.31650	# 1368
beq.31687:
	lw		x6, 24(x7)	# 415
	beq		x6, x9, beq.31689	# 1374
	addi	x6, x0, 0	# 1374
	jal		x0, beq_cont.31650	# 1374
beq.31689:
	addi	x6, x0, 1	# 1374
beq_cont.31650:
	beq		x6, x9, beq.31690	# 1410
	addi	x4, x0, 0	# 1411
	jalr	x0, x1, 0	# 1411
beq.31690:
	add		x4, x4, x10	# 1413
	lw		x31, 0(x29)	# 1413
	jalr	x0, x31, 0	# 1413
beq.31649:
	addi	x4, x0, 1	# 1408
	jalr	x0, x1, 0	# 1408
shadow_check_and_group.2825.17979:
	lw		x6, 32(x29)	# 1426
	lw		x7, 28(x29)	# 1426
	lw		x8, 24(x29)	# 1426
	lw		x9, 20(x29)	# 1426
	lw		x10, 16(x29)	# 1426
	lw		x11, 12(x29)	# 1426
	lw		x12, 8(x29)	# 1426
	flw		f1, 4(x29)	# 1426
	mul		x13, x30, x4	# 1426
	add		x13, x5, x13	# 1426
	lw		x13, 0(x13)	# 1426
	beq		x13, x9, beq.31691	# 1426
	mul		x9, x30, x13	# 1168
	addi	x9, x9, 63844	# 1168
	lw		x9, 0(x9)	# 1168
	mul		x14, x30, x11	# 1169
	addi	x14, x14, 64348	# 1169
	flw		f2, 0(x14)	# 1169
	lw		x14, 20(x9)	# 473
	mul		x15, x30, x11	# 478
	add		x14, x14, x15	# 478
	flw		f3, 0(x14)	# 478
	fsub	f2, f2, f3	# 1169
	mul		x14, x30, x12	# 1170
	addi	x14, x14, 64348	# 1170
	flw		f3, 0(x14)	# 1170
	lw		x14, 20(x9)	# 483
	mul		x15, x30, x12	# 488
	add		x14, x14, x15	# 488
	flw		f4, 0(x14)	# 488
	fsub	f3, f3, f4	# 1170
	mul		x14, x30, x8	# 1171
	addi	x14, x14, 64348	# 1171
	flw		f4, 0(x14)	# 1171
	lw		x14, 20(x9)	# 493
	mul		x15, x30, x8	# 498
	add		x14, x14, x15	# 498
	flw		f5, 0(x14)	# 498
	fsub	f4, f4, f5	# 1171
	mul		x14, x30, x13	# 1173
	addi	x14, x14, 64544	# 1173
	lw		x14, 0(x14)	# 1173
	lw		x15, 4(x9)	# 395
	beq		x15, x12, beq.31693	# 1175
	beq		x15, x8, beq.31695	# 1177
	mul		x7, x30, x11	# 1149
	add		x7, x14, x7	# 1149
	flw		f5, 0(x7)	# 1149
	feq		f5, f1, feq.31697	# 120
	mul		x7, x30, x12	# 1153
	add		x7, x14, x7	# 1153
	flw		f6, 0(x7)	# 1153
	fmul	f6, f6, f2	# 1153
	mul		x7, x30, x8	# 1153
	add		x7, x14, x7	# 1153
	flw		f7, 0(x7)	# 1153
	fmul	f7, f7, f3	# 1153
	fadd	f6, f6, f7	# 1153
	mul		x7, x30, x10	# 1153
	add		x7, x14, x7	# 1153
	flw		f7, 0(x7)	# 1153
	fmul	f7, f7, f4	# 1153
	fadd	f6, f6, f7	# 1153
	fmul	f7, f2, f2	# 127
	lw		x7, 16(x9)	# 433
	mul		x15, x30, x11	# 438
	add		x7, x7, x15	# 438
	flw		f8, 0(x7)	# 438
	fmul	f7, f7, f8	# 1009
	fmul	f8, f3, f3	# 127
	lw		x7, 16(x9)	# 443
	mul		x15, x30, x12	# 448
	add		x7, x7, x15	# 448
	flw		f9, 0(x7)	# 448
	fmul	f8, f8, f9	# 1009
	fadd	f7, f7, f8	# 1009
	fmul	f8, f4, f4	# 127
	lw		x7, 16(x9)	# 453
	mul		x15, x30, x8	# 458
	add		x7, x7, x15	# 458
	flw		f9, 0(x7)	# 458
	fmul	f8, f8, f9	# 1009
	fadd	f7, f7, f8	# 1009
	lw		x7, 12(x9)	# 424
	beq		x7, x11, beq.31699	# 1011
	fmul	f8, f3, f4	# 1015
	lw		x7, 36(x9)	# 553
	mul		x15, x30, x11	# 558
	add		x7, x7, x15	# 558
	flw		f9, 0(x7)	# 558
	fmul	f8, f8, f9	# 1015
	fadd	f7, f7, f8	# 1014
	fmul	f4, f4, f2	# 1016
	lw		x7, 36(x9)	# 563
	mul		x15, x30, x12	# 568
	add		x7, x7, x15	# 568
	flw		f8, 0(x7)	# 568
	fmul	f4, f4, f8	# 1016
	fadd	f4, f7, f4	# 1014
	fmul	f2, f2, f3	# 1017
	lw		x7, 36(x9)	# 573
	mul		x15, x30, x8	# 578
	add		x7, x7, x15	# 578
	flw		f3, 0(x7)	# 578
	fmul	f2, f2, f3	# 1017
	fadd	f2, f4, f2	# 1014
	jal		x0, beq_cont.31698	# 1011
beq.31699:
	fadd	f2, f0, f7	# 1012
beq_cont.31698:
	lw		x7, 4(x9)	# 395
	beq		x7, x10, beq.31701	# 1155
	jal		x0, beq_cont.31700	# 1155
beq.31701:
	fsub	f2, f2, f30	# 1155
beq_cont.31700:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1156
	fsub	f2, f3, f2	# 1156
	fle		f2, f1, fle.31703	# 121
	lw		x7, 24(x9)	# 415
	beq		x7, x11, beq.31705	# 1158
	fsqrt	f1, f2	# 1159
	fadd	f1, f6, f1	# 1159
	addi	x7, x0, 4	# 1159
	mul		x7, x30, x7	# 1159
	add		x7, x14, x7	# 1159
	flw		f2, 0(x7)	# 1159
	fmul	f1, f1, f2	# 1159
	mul		x7, x30, x11	# 1159
	addi	x7, x7, 64336	# 1159
	fsw		f1, 0(x7)	# 1159
	jal		x0, beq_cont.31704	# 1158
beq.31705:
	fsqrt	f1, f2	# 1161
	fsub	f1, f6, f1	# 1161
	addi	x7, x0, 4	# 1161
	mul		x7, x30, x7	# 1161
	add		x7, x14, x7	# 1161
	flw		f2, 0(x7)	# 1161
	fmul	f1, f1, f2	# 1161
	mul		x7, x30, x11	# 1161
	addi	x7, x7, 64336	# 1161
	fsw		f1, 0(x7)	# 1161
beq_cont.31704:
	addi	x7, x0, 1	# 1162
	jal		x0, beq_cont.31692	# 121
fle.31703:
	addi	x7, x0, 0	# 1163
	jal		x0, beq_cont.31692	# 120
feq.31697:
	addi	x7, x0, 0	# 1151
	jal		x0, beq_cont.31692	# 1177
beq.31695:
	mul		x7, x30, x11	# 1139
	add		x7, x14, x7	# 1139
	flw		f5, 0(x7)	# 1139
	fle		f1, f5, fle.31707	# 122
	mul		x7, x30, x12	# 1141
	add		x7, x14, x7	# 1141
	flw		f1, 0(x7)	# 1141
	fmul	f1, f1, f2	# 1141
	mul		x7, x30, x8	# 1141
	add		x7, x14, x7	# 1141
	flw		f2, 0(x7)	# 1141
	fmul	f2, f2, f3	# 1141
	fadd	f1, f1, f2	# 1141
	mul		x7, x30, x10	# 1141
	add		x7, x14, x7	# 1141
	flw		f2, 0(x7)	# 1141
	fmul	f2, f2, f4	# 1141
	fadd	f1, f1, f2	# 1141
	mul		x7, x30, x11	# 1140
	addi	x7, x7, 64336	# 1140
	fsw		f1, 0(x7)	# 1140
	addi	x7, x0, 1	# 1142
	jal		x0, beq_cont.31692	# 122
fle.31707:
	addi	x7, x0, 0	# 1143
	jal		x0, beq_cont.31692	# 1175
beq.31693:
	mul		x15, x30, x11	# 1106
	add		x15, x14, x15	# 1106
	flw		f5, 0(x15)	# 1106
	fsub	f5, f5, f2	# 1106
	mul		x15, x30, x12	# 1106
	add		x15, x14, x15	# 1106
	flw		f6, 0(x15)	# 1106
	fmul	f5, f5, f6	# 1106
	mul		x15, x30, x12	# 1108
	addi	x15, x15, 64532	# 1108
	flw		f7, 0(x15)	# 1108
	fmul	f8, f5, f7	# 1108
	fadd	f8, f8, f3	# 1108
	fle		f8, f1, fle.31709	# 124
	jal		x0, fle_cont.31708	# 124
fle.31709:
	fsub	f8, f0, f8	# 124
fle_cont.31708:
	lw		x15, 16(x9)	# 443
	mul		x16, x30, x12	# 448
	add		x15, x15, x16	# 448
	flw		f9, 0(x15)	# 448
	fle		f9, f8, fle.31711	# 125
	mul		x15, x30, x8	# 1109
	addi	x15, x15, 64532	# 1109
	flw		f8, 0(x15)	# 1109
	fmul	f8, f5, f8	# 1109
	fadd	f8, f8, f4	# 1109
	fle		f8, f1, fle.31713	# 124
	jal		x0, fle_cont.31712	# 124
fle.31713:
	fsub	f8, f0, f8	# 124
fle_cont.31712:
	lw		x15, 16(x9)	# 453
	mul		x16, x30, x8	# 458
	add		x15, x15, x16	# 458
	flw		f9, 0(x15)	# 458
	fle		f9, f8, fle.31715	# 125
	feq		f6, f1, feq.31717	# 120
	addi	x15, x0, 1	# 1110
	jal		x0, fle_cont.31710	# 120
feq.31717:
	addi	x15, x0, 0	# 1110
	jal		x0, fle_cont.31710	# 125
fle.31715:
	addi	x15, x0, 0	# 1111
	jal		x0, fle_cont.31710	# 125
fle.31711:
	addi	x15, x0, 0	# 1112
fle_cont.31710:
	beq		x15, x11, beq.31719	# 1107
	mul		x7, x30, x11	# 1114
	addi	x7, x7, 64336	# 1114
	fsw		f5, 0(x7)	# 1114
	addi	x7, x0, 1	# 1114
	jal		x0, beq_cont.31692	# 1107
beq.31719:
	mul		x15, x30, x8	# 1115
	add		x15, x14, x15	# 1115
	flw		f5, 0(x15)	# 1115
	fsub	f5, f5, f3	# 1115
	mul		x10, x30, x10	# 1115
	add		x10, x14, x10	# 1115
	flw		f6, 0(x10)	# 1115
	fmul	f5, f5, f6	# 1115
	mul		x10, x30, x11	# 1117
	addi	x10, x10, 64532	# 1117
	flw		f8, 0(x10)	# 1117
	fmul	f9, f5, f8	# 1117
	fadd	f9, f9, f2	# 1117
	fle		f9, f1, fle.31721	# 124
	jal		x0, fle_cont.31720	# 124
fle.31721:
	fsub	f9, f0, f9	# 124
fle_cont.31720:
	lw		x10, 16(x9)	# 433
	mul		x15, x30, x11	# 438
	add		x10, x10, x15	# 438
	flw		f10, 0(x10)	# 438
	fle		f10, f9, fle.31723	# 125
	mul		x10, x30, x8	# 1118
	addi	x10, x10, 64532	# 1118
	flw		f9, 0(x10)	# 1118
	fmul	f9, f5, f9	# 1118
	fadd	f9, f9, f4	# 1118
	fle		f9, f1, fle.31725	# 124
	jal		x0, fle_cont.31724	# 124
fle.31725:
	fsub	f9, f0, f9	# 124
fle_cont.31724:
	lw		x10, 16(x9)	# 453
	mul		x15, x30, x8	# 458
	add		x10, x10, x15	# 458
	flw		f10, 0(x10)	# 458
	fle		f10, f9, fle.31727	# 125
	feq		f6, f1, feq.31729	# 120
	addi	x10, x0, 1	# 1119
	jal		x0, fle_cont.31722	# 120
feq.31729:
	addi	x10, x0, 0	# 1119
	jal		x0, fle_cont.31722	# 125
fle.31727:
	addi	x10, x0, 0	# 1120
	jal		x0, fle_cont.31722	# 125
fle.31723:
	addi	x10, x0, 0	# 1121
fle_cont.31722:
	beq		x10, x11, beq.31731	# 1116
	mul		x7, x30, x11	# 1123
	addi	x7, x7, 64336	# 1123
	fsw		f5, 0(x7)	# 1123
	addi	x7, x0, 2	# 1123
	jal		x0, beq_cont.31692	# 1116
beq.31731:
	addi	x10, x0, 4	# 1124
	mul		x10, x30, x10	# 1124
	add		x10, x14, x10	# 1124
	flw		f5, 0(x10)	# 1124
	fsub	f4, f5, f4	# 1124
	mul		x7, x30, x7	# 1124
	add		x7, x14, x7	# 1124
	flw		f5, 0(x7)	# 1124
	fmul	f4, f4, f5	# 1124
	fmul	f6, f4, f8	# 1126
	fadd	f2, f6, f2	# 1126
	fle		f2, f1, fle.31733	# 124
	jal		x0, fle_cont.31732	# 124
fle.31733:
	fsub	f2, f0, f2	# 124
fle_cont.31732:
	lw		x7, 16(x9)	# 433
	mul		x10, x30, x11	# 438
	add		x7, x7, x10	# 438
	flw		f6, 0(x7)	# 438
	fle		f6, f2, fle.31735	# 125
	fmul	f2, f4, f7	# 1127
	fadd	f2, f2, f3	# 1127
	fle		f2, f1, fle.31737	# 124
	jal		x0, fle_cont.31736	# 124
fle.31737:
	fsub	f2, f0, f2	# 124
fle_cont.31736:
	lw		x7, 16(x9)	# 443
	mul		x9, x30, x12	# 448
	add		x7, x7, x9	# 448
	flw		f3, 0(x7)	# 448
	fle		f3, f2, fle.31739	# 125
	feq		f5, f1, feq.31741	# 120
	addi	x7, x0, 1	# 1128
	jal		x0, fle_cont.31734	# 120
feq.31741:
	addi	x7, x0, 0	# 1128
	jal		x0, fle_cont.31734	# 125
fle.31739:
	addi	x7, x0, 0	# 1129
	jal		x0, fle_cont.31734	# 125
fle.31735:
	addi	x7, x0, 0	# 1130
fle_cont.31734:
	beq		x7, x11, beq.31743	# 1125
	mul		x7, x30, x11	# 1132
	addi	x7, x7, 64336	# 1132
	fsw		f4, 0(x7)	# 1132
	addi	x7, x0, 3	# 1132
	jal		x0, beq_cont.31692	# 1125
beq.31743:
	addi	x7, x0, 0	# 1134
beq_cont.31692:
	mul		x9, x30, x11	# 1431
	addi	x9, x9, 64336	# 1431
	flw		f1, 0(x9)	# 1431
	beq		x7, x11, beq.31745	# 1432
	fle		f19, f1, fle.31747	# 125
	addi	x7, x0, 1	# 125
	jal		x0, beq_cont.31744	# 125
fle.31747:
	addi	x7, x0, 0	# 125
	jal		x0, beq_cont.31744	# 1432
beq.31745:
	addi	x7, x0, 0	# 1432
beq_cont.31744:
	beq		x7, x11, beq.31748	# 1432
	fadd	f1, f1, f18	# 1435
	mul		x7, x30, x11	# 1436
	addi	x7, x7, 64108	# 1436
	flw		f2, 0(x7)	# 1436
	fmul	f2, f2, f1	# 1436
	mul		x7, x30, x11	# 1436
	addi	x7, x7, 64348	# 1436
	flw		f3, 0(x7)	# 1436
	fadd	f2, f2, f3	# 1436
	mul		x7, x30, x12	# 1437
	addi	x7, x7, 64108	# 1437
	flw		f3, 0(x7)	# 1437
	fmul	f3, f3, f1	# 1437
	mul		x7, x30, x12	# 1437
	addi	x7, x7, 64348	# 1437
	flw		f4, 0(x7)	# 1437
	fadd	f3, f3, f4	# 1437
	mul		x7, x30, x8	# 1438
	addi	x7, x7, 64108	# 1438
	flw		f4, 0(x7)	# 1438
	fmul	f1, f4, f1	# 1438
	mul		x7, x30, x8	# 1438
	addi	x7, x7, 64348	# 1438
	flw		f4, 0(x7)	# 1438
	fadd	f1, f1, f4	# 1438
	sw		x5, 0(x2)	# 1439
	sw		x29, -4(x2)	# 1439
	sw		x12, -8(x2)	# 1439
	sw		x4, -12(x2)	# 1439
	sw		x11, -16(x2)	# 1439
	addi	x4, x11, 0	# 1439
	addi	x29, x6, 0	# 1439
	fadd	f31, f0, f3	# 1439
	fadd	f3, f0, f1	# 1439
	fadd	f1, f0, f2	# 1439
	fadd	f2, f0, f31	# 1439
	sw		x1, -20(x2)	# 1439
	addi	x2, x2, -24	# 1439
	lw		x31, 0(x29)	# 1439
	jalr	x1, x31, 0	# 1439
	addi	x2, x2, 24	# 1439
	lw		x1, -20(x2)	# 1439
	lw		x5, -16(x2)	# 1439
	beq		x4, x5, beq.31749	# 1439
	addi	x4, x0, 1	# 1440
	jalr	x0, x1, 0	# 1440
beq.31749:
	lw		x4, -12(x2)	# 1442
	lw		x5, -8(x2)	# 1442
	add		x4, x4, x5	# 1442
	lw		x5, 0(x2)	# 1442
	lw		x29, -4(x2)	# 1442
	lw		x31, 0(x29)	# 1442
	jalr	x0, x31, 0	# 1442
beq.31748:
	mul		x6, x30, x13	# 1448
	addi	x6, x6, 63844	# 1448
	lw		x6, 0(x6)	# 1448
	lw		x6, 24(x6)	# 415
	beq		x6, x11, beq.31750	# 1448
	add		x4, x4, x12	# 1449
	lw		x31, 0(x29)	# 1449
	jalr	x0, x31, 0	# 1449
beq.31750:
	addi	x4, x0, 0	# 1451
	jalr	x0, x1, 0	# 1451
beq.31691:
	addi	x4, x0, 0	# 1427
	jalr	x0, x1, 0	# 1427
shadow_check_one_or_group.2828.17982:
	lw		x6, 16(x29)	# 1456
	lw		x7, 12(x29)	# 1456
	lw		x8, 8(x29)	# 1456
	lw		x9, 4(x29)	# 1456
	mul		x10, x30, x4	# 1456
	add		x10, x5, x10	# 1456
	lw		x10, 0(x10)	# 1456
	beq		x10, x7, beq.31751	# 1457
	mul		x7, x30, x10	# 1460
	addi	x7, x7, 64128	# 1460
	lw		x7, 0(x7)	# 1460
	sw		x5, 0(x2)	# 1461
	sw		x29, -4(x2)	# 1461
	sw		x9, -8(x2)	# 1461
	sw		x4, -12(x2)	# 1461
	sw		x8, -16(x2)	# 1461
	addi	x5, x7, 0	# 1461
	addi	x4, x8, 0	# 1461
	addi	x29, x6, 0	# 1461
	sw		x1, -20(x2)	# 1461
	addi	x2, x2, -24	# 1461
	lw		x31, 0(x29)	# 1461
	jalr	x1, x31, 0	# 1461
	addi	x2, x2, 24	# 1461
	lw		x1, -20(x2)	# 1461
	lw		x5, -16(x2)	# 1462
	beq		x4, x5, beq.31752	# 1462
	addi	x4, x0, 1	# 1463
	jalr	x0, x1, 0	# 1463
beq.31752:
	lw		x4, -12(x2)	# 1465
	lw		x5, -8(x2)	# 1465
	add		x4, x4, x5	# 1465
	lw		x5, 0(x2)	# 1465
	lw		x29, -4(x2)	# 1465
	lw		x31, 0(x29)	# 1465
	jalr	x0, x31, 0	# 1465
beq.31751:
	addi	x4, x0, 0	# 1458
	jalr	x0, x1, 0	# 1458
shadow_check_one_or_matrix.2831.17985:
	lw		x6, 32(x29)	# 1471
	lw		x7, 28(x29)	# 1471
	lw		x8, 24(x29)	# 1471
	lw		x9, 20(x29)	# 1471
	lw		x10, 16(x29)	# 1471
	lw		x11, 12(x29)	# 1471
	lw		x12, 8(x29)	# 1471
	flw		f1, 4(x29)	# 1471
	mul		x13, x30, x4	# 1471
	add		x13, x5, x13	# 1471
	lw		x13, 0(x13)	# 1471
	mul		x14, x30, x11	# 1472
	add		x14, x13, x14	# 1472
	lw		x14, 0(x14)	# 1472
	beq		x14, x9, beq.31753	# 1473
	addi	x9, x0, 99	# 1477
	sw		x13, 0(x2)	# 1477
	sw		x6, -4(x2)	# 1477
	sw		x5, -8(x2)	# 1477
	sw		x29, -12(x2)	# 1477
	sw		x12, -16(x2)	# 1477
	sw		x4, -20(x2)	# 1477
	sw		x11, -24(x2)	# 1477
	beq		x14, x9, beq.31755	# 1477
	mul		x9, x30, x14	# 1168
	addi	x9, x9, 63844	# 1168
	lw		x9, 0(x9)	# 1168
	mul		x15, x30, x11	# 1169
	addi	x15, x15, 64348	# 1169
	flw		f2, 0(x15)	# 1169
	lw		x15, 20(x9)	# 473
	mul		x16, x30, x11	# 478
	add		x15, x15, x16	# 478
	flw		f3, 0(x15)	# 478
	fsub	f2, f2, f3	# 1169
	mul		x15, x30, x12	# 1170
	addi	x15, x15, 64348	# 1170
	flw		f3, 0(x15)	# 1170
	lw		x15, 20(x9)	# 483
	mul		x16, x30, x12	# 488
	add		x15, x15, x16	# 488
	flw		f4, 0(x15)	# 488
	fsub	f3, f3, f4	# 1170
	mul		x15, x30, x8	# 1171
	addi	x15, x15, 64348	# 1171
	flw		f4, 0(x15)	# 1171
	lw		x15, 20(x9)	# 493
	mul		x16, x30, x8	# 498
	add		x15, x15, x16	# 498
	flw		f5, 0(x15)	# 498
	fsub	f4, f4, f5	# 1171
	mul		x14, x30, x14	# 1173
	addi	x14, x14, 64544	# 1173
	lw		x14, 0(x14)	# 1173
	lw		x15, 4(x9)	# 395
	beq		x15, x12, beq.31757	# 1175
	beq		x15, x8, beq.31759	# 1177
	mul		x7, x30, x11	# 1149
	add		x7, x14, x7	# 1149
	flw		f5, 0(x7)	# 1149
	feq		f5, f1, feq.31761	# 120
	mul		x7, x30, x12	# 1153
	add		x7, x14, x7	# 1153
	flw		f6, 0(x7)	# 1153
	fmul	f6, f6, f2	# 1153
	mul		x7, x30, x8	# 1153
	add		x7, x14, x7	# 1153
	flw		f7, 0(x7)	# 1153
	fmul	f7, f7, f3	# 1153
	fadd	f6, f6, f7	# 1153
	mul		x7, x30, x10	# 1153
	add		x7, x14, x7	# 1153
	flw		f7, 0(x7)	# 1153
	fmul	f7, f7, f4	# 1153
	fadd	f6, f6, f7	# 1153
	fmul	f7, f2, f2	# 127
	lw		x7, 16(x9)	# 433
	mul		x15, x30, x11	# 438
	add		x7, x7, x15	# 438
	flw		f8, 0(x7)	# 438
	fmul	f7, f7, f8	# 1009
	fmul	f8, f3, f3	# 127
	lw		x7, 16(x9)	# 443
	mul		x15, x30, x12	# 448
	add		x7, x7, x15	# 448
	flw		f9, 0(x7)	# 448
	fmul	f8, f8, f9	# 1009
	fadd	f7, f7, f8	# 1009
	fmul	f8, f4, f4	# 127
	lw		x7, 16(x9)	# 453
	mul		x15, x30, x8	# 458
	add		x7, x7, x15	# 458
	flw		f9, 0(x7)	# 458
	fmul	f8, f8, f9	# 1009
	fadd	f7, f7, f8	# 1009
	lw		x7, 12(x9)	# 424
	beq		x7, x11, beq.31763	# 1011
	fmul	f8, f3, f4	# 1015
	lw		x7, 36(x9)	# 553
	mul		x15, x30, x11	# 558
	add		x7, x7, x15	# 558
	flw		f9, 0(x7)	# 558
	fmul	f8, f8, f9	# 1015
	fadd	f7, f7, f8	# 1014
	fmul	f4, f4, f2	# 1016
	lw		x7, 36(x9)	# 563
	mul		x15, x30, x12	# 568
	add		x7, x7, x15	# 568
	flw		f8, 0(x7)	# 568
	fmul	f4, f4, f8	# 1016
	fadd	f4, f7, f4	# 1014
	fmul	f2, f2, f3	# 1017
	lw		x7, 36(x9)	# 573
	mul		x8, x30, x8	# 578
	add		x7, x7, x8	# 578
	flw		f3, 0(x7)	# 578
	fmul	f2, f2, f3	# 1017
	fadd	f2, f4, f2	# 1014
	jal		x0, beq_cont.31762	# 1011
beq.31763:
	fadd	f2, f0, f7	# 1012
beq_cont.31762:
	lw		x7, 4(x9)	# 395
	beq		x7, x10, beq.31765	# 1155
	jal		x0, beq_cont.31764	# 1155
beq.31765:
	fsub	f2, f2, f30	# 1155
beq_cont.31764:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1156
	fsub	f2, f3, f2	# 1156
	fle		f2, f1, fle.31767	# 121
	lw		x7, 24(x9)	# 415
	beq		x7, x11, beq.31769	# 1158
	fsqrt	f1, f2	# 1159
	fadd	f1, f6, f1	# 1159
	addi	x7, x0, 4	# 1159
	mul		x7, x30, x7	# 1159
	add		x7, x14, x7	# 1159
	flw		f2, 0(x7)	# 1159
	fmul	f1, f1, f2	# 1159
	mul		x7, x30, x11	# 1159
	addi	x7, x7, 64336	# 1159
	fsw		f1, 0(x7)	# 1159
	jal		x0, beq_cont.31768	# 1158
beq.31769:
	fsqrt	f1, f2	# 1161
	fsub	f1, f6, f1	# 1161
	addi	x7, x0, 4	# 1161
	mul		x7, x30, x7	# 1161
	add		x7, x14, x7	# 1161
	flw		f2, 0(x7)	# 1161
	fmul	f1, f1, f2	# 1161
	mul		x7, x30, x11	# 1161
	addi	x7, x7, 64336	# 1161
	fsw		f1, 0(x7)	# 1161
beq_cont.31768:
	addi	x7, x0, 1	# 1162
	jal		x0, beq_cont.31756	# 121
fle.31767:
	addi	x7, x0, 0	# 1163
	jal		x0, beq_cont.31756	# 120
feq.31761:
	addi	x7, x0, 0	# 1151
	jal		x0, beq_cont.31756	# 1177
beq.31759:
	mul		x7, x30, x11	# 1139
	add		x7, x14, x7	# 1139
	flw		f5, 0(x7)	# 1139
	fle		f1, f5, fle.31771	# 122
	mul		x7, x30, x12	# 1141
	add		x7, x14, x7	# 1141
	flw		f1, 0(x7)	# 1141
	fmul	f1, f1, f2	# 1141
	mul		x7, x30, x8	# 1141
	add		x7, x14, x7	# 1141
	flw		f2, 0(x7)	# 1141
	fmul	f2, f2, f3	# 1141
	fadd	f1, f1, f2	# 1141
	mul		x7, x30, x10	# 1141
	add		x7, x14, x7	# 1141
	flw		f2, 0(x7)	# 1141
	fmul	f2, f2, f4	# 1141
	fadd	f1, f1, f2	# 1141
	mul		x7, x30, x11	# 1140
	addi	x7, x7, 64336	# 1140
	fsw		f1, 0(x7)	# 1140
	addi	x7, x0, 1	# 1142
	jal		x0, beq_cont.31756	# 122
fle.31771:
	addi	x7, x0, 0	# 1143
	jal		x0, beq_cont.31756	# 1175
beq.31757:
	mul		x15, x30, x11	# 1106
	add		x15, x14, x15	# 1106
	flw		f5, 0(x15)	# 1106
	fsub	f5, f5, f2	# 1106
	mul		x15, x30, x12	# 1106
	add		x15, x14, x15	# 1106
	flw		f6, 0(x15)	# 1106
	fmul	f5, f5, f6	# 1106
	mul		x15, x30, x12	# 1108
	addi	x15, x15, 64532	# 1108
	flw		f7, 0(x15)	# 1108
	fmul	f8, f5, f7	# 1108
	fadd	f8, f8, f3	# 1108
	fle		f8, f1, fle.31773	# 124
	jal		x0, fle_cont.31772	# 124
fle.31773:
	fsub	f8, f0, f8	# 124
fle_cont.31772:
	lw		x15, 16(x9)	# 443
	mul		x16, x30, x12	# 448
	add		x15, x15, x16	# 448
	flw		f9, 0(x15)	# 448
	fle		f9, f8, fle.31775	# 125
	mul		x15, x30, x8	# 1109
	addi	x15, x15, 64532	# 1109
	flw		f8, 0(x15)	# 1109
	fmul	f8, f5, f8	# 1109
	fadd	f8, f8, f4	# 1109
	fle		f8, f1, fle.31777	# 124
	jal		x0, fle_cont.31776	# 124
fle.31777:
	fsub	f8, f0, f8	# 124
fle_cont.31776:
	lw		x15, 16(x9)	# 453
	mul		x16, x30, x8	# 458
	add		x15, x15, x16	# 458
	flw		f9, 0(x15)	# 458
	fle		f9, f8, fle.31779	# 125
	feq		f6, f1, feq.31781	# 120
	addi	x15, x0, 1	# 1110
	jal		x0, fle_cont.31774	# 120
feq.31781:
	addi	x15, x0, 0	# 1110
	jal		x0, fle_cont.31774	# 125
fle.31779:
	addi	x15, x0, 0	# 1111
	jal		x0, fle_cont.31774	# 125
fle.31775:
	addi	x15, x0, 0	# 1112
fle_cont.31774:
	beq		x15, x11, beq.31783	# 1107
	mul		x7, x30, x11	# 1114
	addi	x7, x7, 64336	# 1114
	fsw		f5, 0(x7)	# 1114
	addi	x7, x0, 1	# 1114
	jal		x0, beq_cont.31756	# 1107
beq.31783:
	mul		x15, x30, x8	# 1115
	add		x15, x14, x15	# 1115
	flw		f5, 0(x15)	# 1115
	fsub	f5, f5, f3	# 1115
	mul		x10, x30, x10	# 1115
	add		x10, x14, x10	# 1115
	flw		f6, 0(x10)	# 1115
	fmul	f5, f5, f6	# 1115
	mul		x10, x30, x11	# 1117
	addi	x10, x10, 64532	# 1117
	flw		f8, 0(x10)	# 1117
	fmul	f9, f5, f8	# 1117
	fadd	f9, f9, f2	# 1117
	fle		f9, f1, fle.31785	# 124
	jal		x0, fle_cont.31784	# 124
fle.31785:
	fsub	f9, f0, f9	# 124
fle_cont.31784:
	lw		x10, 16(x9)	# 433
	mul		x15, x30, x11	# 438
	add		x10, x10, x15	# 438
	flw		f10, 0(x10)	# 438
	fle		f10, f9, fle.31787	# 125
	mul		x10, x30, x8	# 1118
	addi	x10, x10, 64532	# 1118
	flw		f9, 0(x10)	# 1118
	fmul	f9, f5, f9	# 1118
	fadd	f9, f9, f4	# 1118
	fle		f9, f1, fle.31789	# 124
	jal		x0, fle_cont.31788	# 124
fle.31789:
	fsub	f9, f0, f9	# 124
fle_cont.31788:
	lw		x10, 16(x9)	# 453
	mul		x8, x30, x8	# 458
	add		x8, x10, x8	# 458
	flw		f10, 0(x8)	# 458
	fle		f10, f9, fle.31791	# 125
	feq		f6, f1, feq.31793	# 120
	addi	x8, x0, 1	# 1119
	jal		x0, fle_cont.31786	# 120
feq.31793:
	addi	x8, x0, 0	# 1119
	jal		x0, fle_cont.31786	# 125
fle.31791:
	addi	x8, x0, 0	# 1120
	jal		x0, fle_cont.31786	# 125
fle.31787:
	addi	x8, x0, 0	# 1121
fle_cont.31786:
	beq		x8, x11, beq.31795	# 1116
	mul		x7, x30, x11	# 1123
	addi	x7, x7, 64336	# 1123
	fsw		f5, 0(x7)	# 1123
	addi	x7, x0, 2	# 1123
	jal		x0, beq_cont.31756	# 1116
beq.31795:
	addi	x8, x0, 4	# 1124
	mul		x8, x30, x8	# 1124
	add		x8, x14, x8	# 1124
	flw		f5, 0(x8)	# 1124
	fsub	f4, f5, f4	# 1124
	mul		x7, x30, x7	# 1124
	add		x7, x14, x7	# 1124
	flw		f5, 0(x7)	# 1124
	fmul	f4, f4, f5	# 1124
	fmul	f6, f4, f8	# 1126
	fadd	f2, f6, f2	# 1126
	fle		f2, f1, fle.31797	# 124
	jal		x0, fle_cont.31796	# 124
fle.31797:
	fsub	f2, f0, f2	# 124
fle_cont.31796:
	lw		x7, 16(x9)	# 433
	mul		x8, x30, x11	# 438
	add		x7, x7, x8	# 438
	flw		f6, 0(x7)	# 438
	fle		f6, f2, fle.31799	# 125
	fmul	f2, f4, f7	# 1127
	fadd	f2, f2, f3	# 1127
	fle		f2, f1, fle.31801	# 124
	jal		x0, fle_cont.31800	# 124
fle.31801:
	fsub	f2, f0, f2	# 124
fle_cont.31800:
	lw		x7, 16(x9)	# 443
	mul		x8, x30, x12	# 448
	add		x7, x7, x8	# 448
	flw		f3, 0(x7)	# 448
	fle		f3, f2, fle.31803	# 125
	feq		f5, f1, feq.31805	# 120
	addi	x7, x0, 1	# 1128
	jal		x0, fle_cont.31798	# 120
feq.31805:
	addi	x7, x0, 0	# 1128
	jal		x0, fle_cont.31798	# 125
fle.31803:
	addi	x7, x0, 0	# 1129
	jal		x0, fle_cont.31798	# 125
fle.31799:
	addi	x7, x0, 0	# 1130
fle_cont.31798:
	beq		x7, x11, beq.31807	# 1125
	mul		x7, x30, x11	# 1132
	addi	x7, x7, 64336	# 1132
	fsw		f4, 0(x7)	# 1132
	addi	x7, x0, 3	# 1132
	jal		x0, beq_cont.31756	# 1125
beq.31807:
	addi	x7, x0, 0	# 1134
beq_cont.31756:
	beq		x7, x11, beq.31809	# 1483
	mul		x7, x30, x11	# 1484
	addi	x7, x7, 64336	# 1484
	flw		f1, 0(x7)	# 1484
	fle		f20, f1, fle.31811	# 125
	addi	x5, x13, 0	# 1485
	addi	x4, x12, 0	# 1485
	addi	x29, x6, 0	# 1485
	sw		x1, -28(x2)	# 1485
	addi	x2, x2, -32	# 1485
	lw		x31, 0(x29)	# 1485
	jalr	x1, x31, 0	# 1485
	addi	x2, x2, 32	# 1485
	lw		x1, -28(x2)	# 1485
	lw		x5, -24(x2)	# 1485
	beq		x4, x5, beq.31813	# 1485
	addi	x4, x0, 1	# 1486
	jal		x0, beq_cont.31754	# 1485
beq.31813:
	addi	x4, x0, 0	# 1487
	jal		x0, beq_cont.31754	# 125
fle.31811:
	addi	x4, x0, 0	# 1488
	jal		x0, beq_cont.31754	# 1483
beq.31809:
	addi	x4, x0, 0	# 1489
	jal		x0, beq_cont.31754	# 1477
beq.31755:
	addi	x4, x0, 1	# 1478
beq_cont.31754:
	lw		x5, -24(x2)	# 1476
	beq		x4, x5, beq.31814	# 1476
	lw		x4, -16(x2)	# 1491
	lw		x6, 0(x2)	# 1491
	lw		x29, -4(x2)	# 1491
	addi	x5, x6, 0	# 1491
	sw		x1, -28(x2)	# 1491
	addi	x2, x2, -32	# 1491
	lw		x31, 0(x29)	# 1491
	jalr	x1, x31, 0	# 1491
	addi	x2, x2, 32	# 1491
	lw		x1, -28(x2)	# 1491
	lw		x5, -24(x2)	# 1491
	beq		x4, x5, beq.31815	# 1491
	addi	x4, x0, 1	# 1492
	jalr	x0, x1, 0	# 1492
beq.31815:
	lw		x4, -20(x2)	# 1494
	lw		x5, -16(x2)	# 1494
	add		x4, x4, x5	# 1494
	lw		x5, -8(x2)	# 1494
	lw		x29, -12(x2)	# 1494
	lw		x31, 0(x29)	# 1494
	jalr	x0, x31, 0	# 1494
beq.31814:
	lw		x4, -20(x2)	# 1496
	lw		x5, -16(x2)	# 1496
	add		x4, x4, x5	# 1496
	lw		x5, -8(x2)	# 1496
	lw		x29, -12(x2)	# 1496
	lw		x31, 0(x29)	# 1496
	jalr	x0, x31, 0	# 1496
beq.31753:
	addi	x4, x0, 0	# 1474
	jalr	x0, x1, 0	# 1474
solve_each_element.2834.17988:
	lw		x7, 28(x29)	# 1507
	lw		x8, 24(x29)	# 1507
	lw		x9, 20(x29)	# 1507
	lw		x10, 16(x29)	# 1507
	lw		x11, 12(x29)	# 1507
	lw		x12, 8(x29)	# 1507
	flw		f1, 4(x29)	# 1507
	mul		x13, x30, x4	# 1507
	add		x13, x5, x13	# 1507
	lw		x13, 0(x13)	# 1507
	beq		x13, x9, beq.31816	# 1508
	mul		x9, x30, x13	# 1074
	addi	x9, x9, 63844	# 1074
	lw		x9, 0(x9)	# 1074
	mul		x14, x30, x11	# 1076
	addi	x14, x14, 64432	# 1076
	flw		f2, 0(x14)	# 1076
	lw		x14, 20(x9)	# 473
	mul		x15, x30, x11	# 478
	add		x14, x14, x15	# 478
	flw		f3, 0(x14)	# 478
	fsub	f2, f2, f3	# 1076
	mul		x14, x30, x12	# 1077
	addi	x14, x14, 64432	# 1077
	flw		f3, 0(x14)	# 1077
	lw		x14, 20(x9)	# 483
	mul		x15, x30, x12	# 488
	add		x14, x14, x15	# 488
	flw		f4, 0(x14)	# 488
	fsub	f3, f3, f4	# 1077
	mul		x14, x30, x8	# 1078
	addi	x14, x14, 64432	# 1078
	flw		f4, 0(x14)	# 1078
	lw		x14, 20(x9)	# 493
	mul		x15, x30, x8	# 498
	add		x14, x14, x15	# 498
	flw		f5, 0(x14)	# 498
	fsub	f4, f4, f5	# 1078
	lw		x14, 4(x9)	# 395
	beq		x14, x12, beq.31818	# 1081
	beq		x14, x8, beq.31820	# 1082
	mul		x14, x30, x11	# 1048
	add		x14, x6, x14	# 1048
	flw		f5, 0(x14)	# 1048
	mul		x14, x30, x12	# 1048
	add		x14, x6, x14	# 1048
	flw		f6, 0(x14)	# 1048
	mul		x14, x30, x8	# 1048
	add		x14, x6, x14	# 1048
	flw		f7, 0(x14)	# 1048
	fmul	f8, f5, f5	# 127
	lw		x14, 16(x9)	# 433
	mul		x15, x30, x11	# 438
	add		x14, x14, x15	# 438
	flw		f9, 0(x14)	# 438
	fmul	f8, f8, f9	# 1009
	fmul	f10, f6, f6	# 127
	lw		x14, 16(x9)	# 443
	mul		x15, x30, x12	# 448
	add		x14, x14, x15	# 448
	flw		f11, 0(x14)	# 448
	fmul	f10, f10, f11	# 1009
	fadd	f8, f8, f10	# 1009
	fmul	f10, f7, f7	# 127
	lw		x14, 16(x9)	# 453
	mul		x15, x30, x8	# 458
	add		x14, x14, x15	# 458
	flw		f12, 0(x14)	# 458
	fmul	f10, f10, f12	# 1009
	fadd	f8, f8, f10	# 1009
	lw		x14, 12(x9)	# 424
	beq		x14, x11, beq_cont.31821	# 1011
	fmul	f10, f6, f7	# 1015
	lw		x15, 36(x9)	# 553
	mul		x16, x30, x11	# 558
	add		x15, x15, x16	# 558
	flw		f13, 0(x15)	# 558
	fmul	f10, f10, f13	# 1015
	fadd	f8, f8, f10	# 1014
	fmul	f10, f7, f5	# 1016
	lw		x15, 36(x9)	# 563
	mul		x16, x30, x12	# 568
	add		x15, x15, x16	# 568
	flw		f13, 0(x15)	# 568
	fmul	f10, f10, f13	# 1016
	fadd	f8, f8, f10	# 1014
	fmul	f10, f5, f6	# 1017
	lw		x15, 36(x9)	# 573
	mul		x16, x30, x8	# 578
	add		x15, x15, x16	# 578
	flw		f13, 0(x15)	# 578
	fmul	f10, f10, f13	# 1017
	fadd	f8, f8, f10	# 1014
	jal		x0, beq_cont.31821	# 1011
beq_cont.31821:
	feq		f8, f1, feq.31824	# 120
	fmul	f10, f5, f2	# 1023
	fmul	f10, f10, f9	# 1023
	fmul	f13, f6, f3	# 1024
	fmul	f13, f13, f11	# 1024
	fadd	f10, f10, f13	# 1023
	fmul	f13, f7, f4	# 1025
	fmul	f13, f13, f12	# 1025
	fadd	f10, f10, f13	# 1023
	beq		x14, x11, beq.31826	# 1027
	fmul	f13, f7, f3	# 1031
	fmul	f14, f6, f4	# 1031
	fadd	f13, f13, f14	# 1031
	lw		x15, 36(x9)	# 553
	mul		x16, x30, x11	# 558
	add		x15, x15, x16	# 558
	flw		f14, 0(x15)	# 558
	fmul	f13, f13, f14	# 1031
	fmul	f14, f5, f4	# 1032
	fmul	f7, f7, f2	# 1032
	fadd	f7, f14, f7	# 1032
	lw		x15, 36(x9)	# 563
	mul		x16, x30, x12	# 568
	add		x15, x15, x16	# 568
	flw		f14, 0(x15)	# 568
	fmul	f7, f7, f14	# 1032
	fadd	f7, f13, f7	# 1031
	fmul	f5, f5, f3	# 1033
	fmul	f6, f6, f2	# 1033
	fadd	f5, f5, f6	# 1033
	lw		x15, 36(x9)	# 573
	mul		x16, x30, x8	# 578
	add		x15, x15, x16	# 578
	flw		f6, 0(x15)	# 578
	fmul	f5, f5, f6	# 1033
	fadd	f5, f7, f5	# 1031
	fmul	f5, f5, f24	# 126
	fadd	f5, f10, f5	# 1030
	jal		x0, beq_cont.31825	# 1027
beq.31826:
	fadd	f5, f0, f10	# 1028
beq_cont.31825:
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f9	# 1009
	fmul	f7, f3, f3	# 127
	fmul	f7, f7, f11	# 1009
	fadd	f6, f6, f7	# 1009
	fmul	f7, f4, f4	# 127
	fmul	f7, f7, f12	# 1009
	fadd	f6, f6, f7	# 1009
	beq		x14, x11, beq.31828	# 1011
	fmul	f7, f3, f4	# 1015
	lw		x14, 36(x9)	# 553
	mul		x15, x30, x11	# 558
	add		x14, x14, x15	# 558
	flw		f9, 0(x14)	# 558
	fmul	f7, f7, f9	# 1015
	fadd	f6, f6, f7	# 1014
	fmul	f4, f4, f2	# 1016
	lw		x14, 36(x9)	# 563
	mul		x15, x30, x12	# 568
	add		x14, x14, x15	# 568
	flw		f7, 0(x14)	# 568
	fmul	f4, f4, f7	# 1016
	fadd	f4, f6, f4	# 1014
	fmul	f2, f2, f3	# 1017
	lw		x14, 36(x9)	# 573
	mul		x15, x30, x8	# 578
	add		x14, x14, x15	# 578
	flw		f3, 0(x14)	# 578
	fmul	f2, f2, f3	# 1017
	fadd	f2, f4, f2	# 1014
	jal		x0, beq_cont.31827	# 1011
beq.31828:
	fadd	f2, f0, f6	# 1012
beq_cont.31827:
	lw		x14, 4(x9)	# 395
	beq		x14, x10, beq.31830	# 1058
	jal		x0, beq_cont.31829	# 1058
beq.31830:
	fsub	f2, f2, f30	# 1058
beq_cont.31829:
	fmul	f3, f5, f5	# 127
	fmul	f2, f8, f2	# 1060
	fsub	f2, f3, f2	# 1060
	fle		f2, f1, fle.31832	# 121
	fsqrt	f2, f2	# 1063
	lw		x9, 24(x9)	# 415
	beq		x9, x11, beq.31834	# 1064
	jal		x0, beq_cont.31833	# 1064
beq.31834:
	fsub	f2, f0, f2	# 123
beq_cont.31833:
	fsub	f2, f2, f5	# 1065
	fdiv	f2, f2, f8	# 1065
	mul		x9, x30, x11	# 1065
	addi	x9, x9, 64336	# 1065
	fsw		f2, 0(x9)	# 1065
	addi	x9, x0, 1	# 1065
	jal		x0, beq_cont.31817	# 121
fle.31832:
	addi	x9, x0, 0	# 1068
	jal		x0, beq_cont.31817	# 120
feq.31824:
	addi	x9, x0, 0	# 1051
	jal		x0, beq_cont.31817	# 1082
beq.31820:
	lw		x9, 16(x9)	# 463
	mul		x10, x30, x11	# 334
	add		x10, x6, x10	# 334
	flw		f5, 0(x10)	# 334
	mul		x10, x30, x11	# 334
	add		x10, x9, x10	# 334
	flw		f6, 0(x10)	# 334
	fmul	f5, f5, f6	# 334
	mul		x10, x30, x12	# 334
	add		x10, x6, x10	# 334
	flw		f7, 0(x10)	# 334
	mul		x10, x30, x12	# 334
	add		x10, x9, x10	# 334
	flw		f8, 0(x10)	# 334
	fmul	f7, f7, f8	# 334
	fadd	f5, f5, f7	# 334
	mul		x10, x30, x8	# 334
	add		x10, x6, x10	# 334
	flw		f7, 0(x10)	# 334
	mul		x10, x30, x8	# 334
	add		x9, x9, x10	# 334
	flw		f9, 0(x9)	# 334
	fmul	f7, f7, f9	# 334
	fadd	f5, f5, f7	# 334
	fle		f5, f1, fle.31836	# 121
	fmul	f2, f6, f2	# 339
	fmul	f3, f8, f3	# 339
	fadd	f2, f2, f3	# 339
	fmul	f3, f9, f4	# 339
	fadd	f2, f2, f3	# 339
	fsub	f2, f0, f2	# 123
	fdiv	f2, f2, f5	# 999
	mul		x9, x30, x11	# 999
	addi	x9, x9, 64336	# 999
	fsw		f2, 0(x9)	# 999
	addi	x9, x0, 1	# 1000
	jal		x0, beq_cont.31817	# 121
fle.31836:
	addi	x9, x0, 0	# 1001
	jal		x0, beq_cont.31817	# 1081
beq.31818:
	mul		x10, x30, x11	# 970
	add		x10, x6, x10	# 970
	flw		f5, 0(x10)	# 970
	feq		f5, f1, feq.31838	# 120
	lw		x10, 16(x9)	# 463
	lw		x14, 24(x9)	# 415
	fle		f1, f5, fle.31840	# 122
	addi	x15, x0, 1	# 122
	jal		x0, fle_cont.31839	# 122
fle.31840:
	addi	x15, x0, 0	# 122
fle_cont.31839:
	beq		x14, x11, beq.31842	# 246
	fle		f1, f5, fle.31844	# 122
	addi	x14, x0, 0	# 246
	jal		x0, beq_cont.31841	# 122
fle.31844:
	addi	x14, x0, 1	# 246
	jal		x0, beq_cont.31841	# 246
beq.31842:
	addi	x14, x15, 0	# 246
beq_cont.31841:
	mul		x15, x30, x11	# 972
	add		x15, x10, x15	# 972
	flw		f6, 0(x15)	# 972
	beq		x14, x11, beq.31846	# 261
	jal		x0, beq_cont.31845	# 261
beq.31846:
	fsub	f6, f0, f6	# 123
beq_cont.31845:
	fsub	f6, f6, f2	# 974
	fdiv	f5, f6, f5	# 974
	mul		x14, x30, x12	# 975
	add		x14, x6, x14	# 975
	flw		f6, 0(x14)	# 975
	fmul	f6, f5, f6	# 975
	fadd	f6, f6, f3	# 975
	fle		f6, f1, fle.31848	# 124
	jal		x0, fle_cont.31847	# 124
fle.31848:
	fsub	f6, f0, f6	# 124
fle_cont.31847:
	mul		x14, x30, x12	# 975
	add		x14, x10, x14	# 975
	flw		f7, 0(x14)	# 975
	fle		f7, f6, fle.31850	# 125
	mul		x14, x30, x8	# 976
	add		x14, x6, x14	# 976
	flw		f6, 0(x14)	# 976
	fmul	f6, f5, f6	# 976
	fadd	f6, f6, f4	# 976
	fle		f6, f1, fle.31852	# 124
	jal		x0, fle_cont.31851	# 124
fle.31852:
	fsub	f6, f0, f6	# 124
fle_cont.31851:
	mul		x14, x30, x8	# 976
	add		x10, x10, x14	# 976
	flw		f7, 0(x10)	# 976
	fle		f7, f6, fle.31854	# 125
	mul		x10, x30, x11	# 977
	addi	x10, x10, 64336	# 977
	fsw		f5, 0(x10)	# 977
	addi	x10, x0, 1	# 977
	jal		x0, feq_cont.31837	# 125
fle.31854:
	addi	x10, x0, 0	# 978
	jal		x0, feq_cont.31837	# 125
fle.31850:
	addi	x10, x0, 0	# 979
	jal		x0, feq_cont.31837	# 120
feq.31838:
	addi	x10, x0, 0	# 970
feq_cont.31837:
	beq		x10, x11, beq.31856	# 985
	addi	x9, x0, 1	# 985
	jal		x0, beq_cont.31817	# 985
beq.31856:
	mul		x10, x30, x12	# 970
	add		x10, x6, x10	# 970
	flw		f5, 0(x10)	# 970
	feq		f5, f1, feq.31858	# 120
	lw		x10, 16(x9)	# 463
	lw		x14, 24(x9)	# 415
	fle		f1, f5, fle.31860	# 122
	addi	x15, x0, 1	# 122
	jal		x0, fle_cont.31859	# 122
fle.31860:
	addi	x15, x0, 0	# 122
fle_cont.31859:
	beq		x14, x11, beq.31862	# 246
	fle		f1, f5, fle.31864	# 122
	addi	x14, x0, 0	# 246
	jal		x0, beq_cont.31861	# 122
fle.31864:
	addi	x14, x0, 1	# 246
	jal		x0, beq_cont.31861	# 246
beq.31862:
	addi	x14, x15, 0	# 246
beq_cont.31861:
	mul		x15, x30, x12	# 972
	add		x15, x10, x15	# 972
	flw		f6, 0(x15)	# 972
	beq		x14, x11, beq.31866	# 261
	jal		x0, beq_cont.31865	# 261
beq.31866:
	fsub	f6, f0, f6	# 123
beq_cont.31865:
	fsub	f6, f6, f3	# 974
	fdiv	f5, f6, f5	# 974
	mul		x14, x30, x8	# 975
	add		x14, x6, x14	# 975
	flw		f6, 0(x14)	# 975
	fmul	f6, f5, f6	# 975
	fadd	f6, f6, f4	# 975
	fle		f6, f1, fle.31868	# 124
	jal		x0, fle_cont.31867	# 124
fle.31868:
	fsub	f6, f0, f6	# 124
fle_cont.31867:
	mul		x14, x30, x8	# 975
	add		x14, x10, x14	# 975
	flw		f7, 0(x14)	# 975
	fle		f7, f6, fle.31870	# 125
	mul		x14, x30, x11	# 976
	add		x14, x6, x14	# 976
	flw		f6, 0(x14)	# 976
	fmul	f6, f5, f6	# 976
	fadd	f6, f6, f2	# 976
	fle		f6, f1, fle.31872	# 124
	jal		x0, fle_cont.31871	# 124
fle.31872:
	fsub	f6, f0, f6	# 124
fle_cont.31871:
	mul		x14, x30, x11	# 976
	add		x10, x10, x14	# 976
	flw		f7, 0(x10)	# 976
	fle		f7, f6, fle.31874	# 125
	mul		x10, x30, x11	# 977
	addi	x10, x10, 64336	# 977
	fsw		f5, 0(x10)	# 977
	addi	x10, x0, 1	# 977
	jal		x0, feq_cont.31857	# 125
fle.31874:
	addi	x10, x0, 0	# 978
	jal		x0, feq_cont.31857	# 125
fle.31870:
	addi	x10, x0, 0	# 979
	jal		x0, feq_cont.31857	# 120
feq.31858:
	addi	x10, x0, 0	# 970
feq_cont.31857:
	beq		x10, x11, beq.31876	# 986
	addi	x9, x0, 2	# 986
	jal		x0, beq_cont.31817	# 986
beq.31876:
	mul		x10, x30, x8	# 970
	add		x10, x6, x10	# 970
	flw		f5, 0(x10)	# 970
	feq		f5, f1, feq.31878	# 120
	lw		x10, 16(x9)	# 463
	lw		x9, 24(x9)	# 415
	fle		f1, f5, fle.31880	# 122
	addi	x14, x0, 1	# 122
	jal		x0, fle_cont.31879	# 122
fle.31880:
	addi	x14, x0, 0	# 122
fle_cont.31879:
	beq		x9, x11, beq.31882	# 246
	fle		f1, f5, fle.31884	# 122
	addi	x9, x0, 0	# 246
	jal		x0, beq_cont.31881	# 122
fle.31884:
	addi	x9, x0, 1	# 246
	jal		x0, beq_cont.31881	# 246
beq.31882:
	addi	x9, x14, 0	# 246
beq_cont.31881:
	mul		x14, x30, x8	# 972
	add		x14, x10, x14	# 972
	flw		f6, 0(x14)	# 972
	beq		x9, x11, beq.31886	# 261
	jal		x0, beq_cont.31885	# 261
beq.31886:
	fsub	f6, f0, f6	# 123
beq_cont.31885:
	fsub	f4, f6, f4	# 974
	fdiv	f4, f4, f5	# 974
	mul		x9, x30, x11	# 975
	add		x9, x6, x9	# 975
	flw		f5, 0(x9)	# 975
	fmul	f5, f4, f5	# 975
	fadd	f2, f5, f2	# 975
	fle		f2, f1, fle.31888	# 124
	jal		x0, fle_cont.31887	# 124
fle.31888:
	fsub	f2, f0, f2	# 124
fle_cont.31887:
	mul		x9, x30, x11	# 975
	add		x9, x10, x9	# 975
	flw		f5, 0(x9)	# 975
	fle		f5, f2, fle.31890	# 125
	mul		x9, x30, x12	# 976
	add		x9, x6, x9	# 976
	flw		f2, 0(x9)	# 976
	fmul	f2, f4, f2	# 976
	fadd	f2, f2, f3	# 976
	fle		f2, f1, fle.31892	# 124
	jal		x0, fle_cont.31891	# 124
fle.31892:
	fsub	f2, f0, f2	# 124
fle_cont.31891:
	mul		x9, x30, x12	# 976
	add		x9, x10, x9	# 976
	flw		f3, 0(x9)	# 976
	fle		f3, f2, fle.31894	# 125
	mul		x9, x30, x11	# 977
	addi	x9, x9, 64336	# 977
	fsw		f4, 0(x9)	# 977
	addi	x9, x0, 1	# 977
	jal		x0, feq_cont.31877	# 125
fle.31894:
	addi	x9, x0, 0	# 978
	jal		x0, feq_cont.31877	# 125
fle.31890:
	addi	x9, x0, 0	# 979
	jal		x0, feq_cont.31877	# 120
feq.31878:
	addi	x9, x0, 0	# 970
feq_cont.31877:
	beq		x9, x11, beq.31896	# 987
	addi	x9, x0, 3	# 987
	jal		x0, beq_cont.31817	# 987
beq.31896:
	addi	x9, x0, 0	# 988
beq_cont.31817:
	beq		x9, x11, beq.31897	# 1511
	mul		x10, x30, x11	# 1515
	addi	x10, x10, 64336	# 1515
	flw		f2, 0(x10)	# 1515
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x29, -8(x2)	# 125
	sw		x12, -12(x2)	# 125
	sw		x4, -16(x2)	# 125
	fle		f2, f1, fle_cont.31898	# 125
	mul		x10, x30, x11	# 1518
	addi	x10, x10, 64344	# 1518
	flw		f1, 0(x10)	# 1518
	fle		f1, f2, fle_cont.31898	# 125
	fadd	f1, f2, f18	# 1520
	mul		x10, x30, x11	# 1521
	add		x10, x6, x10	# 1521
	flw		f2, 0(x10)	# 1521
	fmul	f2, f2, f1	# 1521
	mul		x10, x30, x11	# 1521
	addi	x10, x10, 64432	# 1521
	flw		f3, 0(x10)	# 1521
	fadd	f2, f2, f3	# 1521
	mul		x10, x30, x12	# 1522
	add		x10, x6, x10	# 1522
	flw		f3, 0(x10)	# 1522
	fmul	f3, f3, f1	# 1522
	mul		x10, x30, x12	# 1522
	addi	x10, x10, 64432	# 1522
	flw		f4, 0(x10)	# 1522
	fadd	f3, f3, f4	# 1522
	mul		x10, x30, x8	# 1523
	add		x10, x6, x10	# 1523
	flw		f4, 0(x10)	# 1523
	fmul	f4, f4, f1	# 1523
	mul		x10, x30, x8	# 1523
	addi	x10, x10, 64432	# 1523
	flw		f5, 0(x10)	# 1523
	fadd	f4, f4, f5	# 1523
	sw		x9, -20(x2)	# 1524
	fsw		f4, -24(x2)	# 1524
	sw		x8, -28(x2)	# 1524
	fsw		f3, -32(x2)	# 1524
	fsw		f2, -36(x2)	# 1524
	fsw		f1, -40(x2)	# 1524
	sw		x11, -44(x2)	# 1524
	addi	x4, x11, 0	# 1524
	addi	x29, x7, 0	# 1524
	fadd	f1, f0, f2	# 1524
	fadd	f2, f0, f3	# 1524
	fadd	f3, f0, f4	# 1524
	sw		x1, -48(x2)	# 1524
	addi	x2, x2, -52	# 1524
	lw		x31, 0(x29)	# 1524
	jalr	x1, x31, 0	# 1524
	addi	x2, x2, 52	# 1524
	lw		x1, -48(x2)	# 1524
	lw		x5, -44(x2)	# 1524
	beq		x4, x5, fle_cont.31898	# 1524
	mul		x4, x30, x5	# 1526
	addi	x4, x4, 64344	# 1526
	flw		f1, -40(x2)	# 1526
	fsw		f1, 0(x4)	# 1526
	mul		x4, x30, x5	# 282
	addi	x4, x4, 64348	# 282
	flw		f1, -36(x2)	# 282
	fsw		f1, 0(x4)	# 282
	lw		x4, -12(x2)	# 283
	mul		x6, x30, x4	# 283
	addi	x6, x6, 64348	# 283
	flw		f1, -32(x2)	# 283
	fsw		f1, 0(x6)	# 283
	lw		x6, -28(x2)	# 284
	mul		x6, x30, x6	# 284
	addi	x6, x6, 64348	# 284
	flw		f1, -24(x2)	# 284
	fsw		f1, 0(x6)	# 284
	mul		x6, x30, x5	# 1528
	addi	x6, x6, 64360	# 1528
	sw		x13, 0(x6)	# 1528
	mul		x5, x30, x5	# 1529
	addi	x5, x5, 64340	# 1529
	lw		x6, -20(x2)	# 1529
	sw		x6, 0(x5)	# 1529
	jal		x0, fle_cont.31898	# 1524
	jal		x0, fle_cont.31898	# 125
	jal		x0, fle_cont.31898	# 125
fle_cont.31898:
	lw		x4, -16(x2)	# 1535
	lw		x5, -12(x2)	# 1535
	add		x4, x4, x5	# 1535
	lw		x5, -4(x2)	# 1535
	lw		x6, 0(x2)	# 1535
	lw		x29, -8(x2)	# 1535
	lw		x31, 0(x29)	# 1535
	jalr	x0, x31, 0	# 1535
beq.31897:
	mul		x7, x30, x13	# 1539
	addi	x7, x7, 63844	# 1539
	lw		x7, 0(x7)	# 1539
	lw		x7, 24(x7)	# 415
	beq		x7, x11, beq.31904	# 1539
	add		x4, x4, x12	# 1540
	lw		x31, 0(x29)	# 1540
	jalr	x0, x31, 0	# 1540
beq.31904:
	jalr	x0, x1, 0	# 1541
beq.31816:
	jalr	x0, x1, 0	# 1508
solve_one_or_network.2838.17992:
	lw		x7, 16(x29)	# 1548
	lw		x8, 12(x29)	# 1548
	lw		x9, 8(x29)	# 1548
	lw		x10, 4(x29)	# 1548
	mul		x11, x30, x4	# 1548
	add		x11, x5, x11	# 1548
	lw		x11, 0(x11)	# 1548
	beq		x11, x8, beq.31907	# 1549
	mul		x8, x30, x11	# 1550
	addi	x8, x8, 64128	# 1550
	lw		x8, 0(x8)	# 1550
	sw		x6, 0(x2)	# 1551
	sw		x5, -4(x2)	# 1551
	sw		x29, -8(x2)	# 1551
	sw		x10, -12(x2)	# 1551
	sw		x4, -16(x2)	# 1551
	addi	x5, x8, 0	# 1551
	addi	x4, x9, 0	# 1551
	addi	x29, x7, 0	# 1551
	sw		x1, -20(x2)	# 1551
	addi	x2, x2, -24	# 1551
	lw		x31, 0(x29)	# 1551
	jalr	x1, x31, 0	# 1551
	addi	x2, x2, 24	# 1551
	lw		x1, -20(x2)	# 1551
	lw		x4, -16(x2)	# 1552
	lw		x5, -12(x2)	# 1552
	add		x4, x4, x5	# 1552
	lw		x5, -4(x2)	# 1552
	lw		x6, 0(x2)	# 1552
	lw		x29, -8(x2)	# 1552
	lw		x31, 0(x29)	# 1552
	jalr	x0, x31, 0	# 1552
beq.31907:
	jalr	x0, x1, 0	# 1553
trace_or_matrix.2842.17996:
	lw		x7, 28(x29)	# 1558
	lw		x8, 24(x29)	# 1558
	lw		x9, 20(x29)	# 1558
	lw		x10, 16(x29)	# 1558
	lw		x11, 12(x29)	# 1558
	lw		x12, 8(x29)	# 1558
	flw		f1, 4(x29)	# 1558
	mul		x13, x30, x4	# 1558
	add		x13, x5, x13	# 1558
	lw		x13, 0(x13)	# 1558
	mul		x14, x30, x11	# 1559
	add		x14, x13, x14	# 1559
	lw		x14, 0(x14)	# 1559
	beq		x14, x9, beq.31909	# 1560
	addi	x9, x0, 99	# 1563
	sw		x6, 0(x2)	# 1563
	sw		x5, -4(x2)	# 1563
	sw		x29, -8(x2)	# 1563
	sw		x12, -12(x2)	# 1563
	sw		x4, -16(x2)	# 1563
	beq		x14, x9, beq.31911	# 1563
	mul		x9, x30, x14	# 1074
	addi	x9, x9, 63844	# 1074
	lw		x9, 0(x9)	# 1074
	mul		x14, x30, x11	# 1076
	addi	x14, x14, 64432	# 1076
	flw		f2, 0(x14)	# 1076
	lw		x14, 20(x9)	# 473
	mul		x15, x30, x11	# 478
	add		x14, x14, x15	# 478
	flw		f3, 0(x14)	# 478
	fsub	f2, f2, f3	# 1076
	mul		x14, x30, x12	# 1077
	addi	x14, x14, 64432	# 1077
	flw		f3, 0(x14)	# 1077
	lw		x14, 20(x9)	# 483
	mul		x15, x30, x12	# 488
	add		x14, x14, x15	# 488
	flw		f4, 0(x14)	# 488
	fsub	f3, f3, f4	# 1077
	mul		x14, x30, x8	# 1078
	addi	x14, x14, 64432	# 1078
	flw		f4, 0(x14)	# 1078
	lw		x14, 20(x9)	# 493
	mul		x15, x30, x8	# 498
	add		x14, x14, x15	# 498
	flw		f5, 0(x14)	# 498
	fsub	f4, f4, f5	# 1078
	lw		x14, 4(x9)	# 395
	beq		x14, x12, beq.31913	# 1081
	beq		x14, x8, beq.31915	# 1082
	mul		x14, x30, x11	# 1048
	add		x14, x6, x14	# 1048
	flw		f5, 0(x14)	# 1048
	mul		x14, x30, x12	# 1048
	add		x14, x6, x14	# 1048
	flw		f6, 0(x14)	# 1048
	mul		x14, x30, x8	# 1048
	add		x14, x6, x14	# 1048
	flw		f7, 0(x14)	# 1048
	fmul	f8, f5, f5	# 127
	lw		x14, 16(x9)	# 433
	mul		x15, x30, x11	# 438
	add		x14, x14, x15	# 438
	flw		f9, 0(x14)	# 438
	fmul	f8, f8, f9	# 1009
	fmul	f10, f6, f6	# 127
	lw		x14, 16(x9)	# 443
	mul		x15, x30, x12	# 448
	add		x14, x14, x15	# 448
	flw		f11, 0(x14)	# 448
	fmul	f10, f10, f11	# 1009
	fadd	f8, f8, f10	# 1009
	fmul	f10, f7, f7	# 127
	lw		x14, 16(x9)	# 453
	mul		x15, x30, x8	# 458
	add		x14, x14, x15	# 458
	flw		f12, 0(x14)	# 458
	fmul	f10, f10, f12	# 1009
	fadd	f8, f8, f10	# 1009
	lw		x14, 12(x9)	# 424
	beq		x14, x11, beq_cont.31916	# 1011
	fmul	f10, f6, f7	# 1015
	lw		x15, 36(x9)	# 553
	mul		x16, x30, x11	# 558
	add		x15, x15, x16	# 558
	flw		f13, 0(x15)	# 558
	fmul	f10, f10, f13	# 1015
	fadd	f8, f8, f10	# 1014
	fmul	f10, f7, f5	# 1016
	lw		x15, 36(x9)	# 563
	mul		x16, x30, x12	# 568
	add		x15, x15, x16	# 568
	flw		f13, 0(x15)	# 568
	fmul	f10, f10, f13	# 1016
	fadd	f8, f8, f10	# 1014
	fmul	f10, f5, f6	# 1017
	lw		x15, 36(x9)	# 573
	mul		x16, x30, x8	# 578
	add		x15, x15, x16	# 578
	flw		f13, 0(x15)	# 578
	fmul	f10, f10, f13	# 1017
	fadd	f8, f8, f10	# 1014
	jal		x0, beq_cont.31916	# 1011
beq_cont.31916:
	feq		f8, f1, feq.31919	# 120
	fmul	f10, f5, f2	# 1023
	fmul	f10, f10, f9	# 1023
	fmul	f13, f6, f3	# 1024
	fmul	f13, f13, f11	# 1024
	fadd	f10, f10, f13	# 1023
	fmul	f13, f7, f4	# 1025
	fmul	f13, f13, f12	# 1025
	fadd	f10, f10, f13	# 1023
	beq		x14, x11, beq.31921	# 1027
	fmul	f13, f7, f3	# 1031
	fmul	f14, f6, f4	# 1031
	fadd	f13, f13, f14	# 1031
	lw		x15, 36(x9)	# 553
	mul		x16, x30, x11	# 558
	add		x15, x15, x16	# 558
	flw		f14, 0(x15)	# 558
	fmul	f13, f13, f14	# 1031
	fmul	f14, f5, f4	# 1032
	fmul	f7, f7, f2	# 1032
	fadd	f7, f14, f7	# 1032
	lw		x15, 36(x9)	# 563
	mul		x16, x30, x12	# 568
	add		x15, x15, x16	# 568
	flw		f14, 0(x15)	# 568
	fmul	f7, f7, f14	# 1032
	fadd	f7, f13, f7	# 1031
	fmul	f5, f5, f3	# 1033
	fmul	f6, f6, f2	# 1033
	fadd	f5, f5, f6	# 1033
	lw		x15, 36(x9)	# 573
	mul		x16, x30, x8	# 578
	add		x15, x15, x16	# 578
	flw		f6, 0(x15)	# 578
	fmul	f5, f5, f6	# 1033
	fadd	f5, f7, f5	# 1031
	fmul	f5, f5, f24	# 126
	fadd	f5, f10, f5	# 1030
	jal		x0, beq_cont.31920	# 1027
beq.31921:
	fadd	f5, f0, f10	# 1028
beq_cont.31920:
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f9	# 1009
	fmul	f7, f3, f3	# 127
	fmul	f7, f7, f11	# 1009
	fadd	f6, f6, f7	# 1009
	fmul	f7, f4, f4	# 127
	fmul	f7, f7, f12	# 1009
	fadd	f6, f6, f7	# 1009
	beq		x14, x11, beq.31923	# 1011
	fmul	f7, f3, f4	# 1015
	lw		x14, 36(x9)	# 553
	mul		x15, x30, x11	# 558
	add		x14, x14, x15	# 558
	flw		f9, 0(x14)	# 558
	fmul	f7, f7, f9	# 1015
	fadd	f6, f6, f7	# 1014
	fmul	f4, f4, f2	# 1016
	lw		x14, 36(x9)	# 563
	mul		x15, x30, x12	# 568
	add		x14, x14, x15	# 568
	flw		f7, 0(x14)	# 568
	fmul	f4, f4, f7	# 1016
	fadd	f4, f6, f4	# 1014
	fmul	f2, f2, f3	# 1017
	lw		x14, 36(x9)	# 573
	mul		x8, x30, x8	# 578
	add		x8, x14, x8	# 578
	flw		f3, 0(x8)	# 578
	fmul	f2, f2, f3	# 1017
	fadd	f2, f4, f2	# 1014
	jal		x0, beq_cont.31922	# 1011
beq.31923:
	fadd	f2, f0, f6	# 1012
beq_cont.31922:
	lw		x8, 4(x9)	# 395
	beq		x8, x10, beq.31925	# 1058
	jal		x0, beq_cont.31924	# 1058
beq.31925:
	fsub	f2, f2, f30	# 1058
beq_cont.31924:
	fmul	f3, f5, f5	# 127
	fmul	f2, f8, f2	# 1060
	fsub	f2, f3, f2	# 1060
	fle		f2, f1, fle.31927	# 121
	fsqrt	f1, f2	# 1063
	lw		x8, 24(x9)	# 415
	beq		x8, x11, beq.31929	# 1064
	jal		x0, beq_cont.31928	# 1064
beq.31929:
	fsub	f1, f0, f1	# 123
beq_cont.31928:
	fsub	f1, f1, f5	# 1065
	fdiv	f1, f1, f8	# 1065
	mul		x8, x30, x11	# 1065
	addi	x8, x8, 64336	# 1065
	fsw		f1, 0(x8)	# 1065
	addi	x8, x0, 1	# 1065
	jal		x0, beq_cont.31912	# 121
fle.31927:
	addi	x8, x0, 0	# 1068
	jal		x0, beq_cont.31912	# 120
feq.31919:
	addi	x8, x0, 0	# 1051
	jal		x0, beq_cont.31912	# 1082
beq.31915:
	lw		x9, 16(x9)	# 463
	mul		x10, x30, x11	# 334
	add		x10, x6, x10	# 334
	flw		f5, 0(x10)	# 334
	mul		x10, x30, x11	# 334
	add		x10, x9, x10	# 334
	flw		f6, 0(x10)	# 334
	fmul	f5, f5, f6	# 334
	mul		x10, x30, x12	# 334
	add		x10, x6, x10	# 334
	flw		f7, 0(x10)	# 334
	mul		x10, x30, x12	# 334
	add		x10, x9, x10	# 334
	flw		f8, 0(x10)	# 334
	fmul	f7, f7, f8	# 334
	fadd	f5, f5, f7	# 334
	mul		x10, x30, x8	# 334
	add		x10, x6, x10	# 334
	flw		f7, 0(x10)	# 334
	mul		x8, x30, x8	# 334
	add		x8, x9, x8	# 334
	flw		f9, 0(x8)	# 334
	fmul	f7, f7, f9	# 334
	fadd	f5, f5, f7	# 334
	fle		f5, f1, fle.31931	# 121
	fmul	f1, f6, f2	# 339
	fmul	f2, f8, f3	# 339
	fadd	f1, f1, f2	# 339
	fmul	f2, f9, f4	# 339
	fadd	f1, f1, f2	# 339
	fsub	f1, f0, f1	# 123
	fdiv	f1, f1, f5	# 999
	mul		x8, x30, x11	# 999
	addi	x8, x8, 64336	# 999
	fsw		f1, 0(x8)	# 999
	addi	x8, x0, 1	# 1000
	jal		x0, beq_cont.31912	# 121
fle.31931:
	addi	x8, x0, 0	# 1001
	jal		x0, beq_cont.31912	# 1081
beq.31913:
	mul		x10, x30, x11	# 970
	add		x10, x6, x10	# 970
	flw		f5, 0(x10)	# 970
	feq		f5, f1, feq.31933	# 120
	lw		x10, 16(x9)	# 463
	lw		x14, 24(x9)	# 415
	fle		f1, f5, fle.31935	# 122
	addi	x15, x0, 1	# 122
	jal		x0, fle_cont.31934	# 122
fle.31935:
	addi	x15, x0, 0	# 122
fle_cont.31934:
	beq		x14, x11, beq.31937	# 246
	fle		f1, f5, fle.31939	# 122
	addi	x14, x0, 0	# 246
	jal		x0, beq_cont.31936	# 122
fle.31939:
	addi	x14, x0, 1	# 246
	jal		x0, beq_cont.31936	# 246
beq.31937:
	addi	x14, x15, 0	# 246
beq_cont.31936:
	mul		x15, x30, x11	# 972
	add		x15, x10, x15	# 972
	flw		f6, 0(x15)	# 972
	beq		x14, x11, beq.31941	# 261
	jal		x0, beq_cont.31940	# 261
beq.31941:
	fsub	f6, f0, f6	# 123
beq_cont.31940:
	fsub	f6, f6, f2	# 974
	fdiv	f5, f6, f5	# 974
	mul		x14, x30, x12	# 975
	add		x14, x6, x14	# 975
	flw		f6, 0(x14)	# 975
	fmul	f6, f5, f6	# 975
	fadd	f6, f6, f3	# 975
	fle		f6, f1, fle.31943	# 124
	jal		x0, fle_cont.31942	# 124
fle.31943:
	fsub	f6, f0, f6	# 124
fle_cont.31942:
	mul		x14, x30, x12	# 975
	add		x14, x10, x14	# 975
	flw		f7, 0(x14)	# 975
	fle		f7, f6, fle.31945	# 125
	mul		x14, x30, x8	# 976
	add		x14, x6, x14	# 976
	flw		f6, 0(x14)	# 976
	fmul	f6, f5, f6	# 976
	fadd	f6, f6, f4	# 976
	fle		f6, f1, fle.31947	# 124
	jal		x0, fle_cont.31946	# 124
fle.31947:
	fsub	f6, f0, f6	# 124
fle_cont.31946:
	mul		x14, x30, x8	# 976
	add		x10, x10, x14	# 976
	flw		f7, 0(x10)	# 976
	fle		f7, f6, fle.31949	# 125
	mul		x10, x30, x11	# 977
	addi	x10, x10, 64336	# 977
	fsw		f5, 0(x10)	# 977
	addi	x10, x0, 1	# 977
	jal		x0, feq_cont.31932	# 125
fle.31949:
	addi	x10, x0, 0	# 978
	jal		x0, feq_cont.31932	# 125
fle.31945:
	addi	x10, x0, 0	# 979
	jal		x0, feq_cont.31932	# 120
feq.31933:
	addi	x10, x0, 0	# 970
feq_cont.31932:
	beq		x10, x11, beq.31951	# 985
	addi	x8, x0, 1	# 985
	jal		x0, beq_cont.31912	# 985
beq.31951:
	mul		x10, x30, x12	# 970
	add		x10, x6, x10	# 970
	flw		f5, 0(x10)	# 970
	feq		f5, f1, feq.31953	# 120
	lw		x10, 16(x9)	# 463
	lw		x14, 24(x9)	# 415
	fle		f1, f5, fle.31955	# 122
	addi	x15, x0, 1	# 122
	jal		x0, fle_cont.31954	# 122
fle.31955:
	addi	x15, x0, 0	# 122
fle_cont.31954:
	beq		x14, x11, beq.31957	# 246
	fle		f1, f5, fle.31959	# 122
	addi	x14, x0, 0	# 246
	jal		x0, beq_cont.31956	# 122
fle.31959:
	addi	x14, x0, 1	# 246
	jal		x0, beq_cont.31956	# 246
beq.31957:
	addi	x14, x15, 0	# 246
beq_cont.31956:
	mul		x15, x30, x12	# 972
	add		x15, x10, x15	# 972
	flw		f6, 0(x15)	# 972
	beq		x14, x11, beq.31961	# 261
	jal		x0, beq_cont.31960	# 261
beq.31961:
	fsub	f6, f0, f6	# 123
beq_cont.31960:
	fsub	f6, f6, f3	# 974
	fdiv	f5, f6, f5	# 974
	mul		x14, x30, x8	# 975
	add		x14, x6, x14	# 975
	flw		f6, 0(x14)	# 975
	fmul	f6, f5, f6	# 975
	fadd	f6, f6, f4	# 975
	fle		f6, f1, fle.31963	# 124
	jal		x0, fle_cont.31962	# 124
fle.31963:
	fsub	f6, f0, f6	# 124
fle_cont.31962:
	mul		x14, x30, x8	# 975
	add		x14, x10, x14	# 975
	flw		f7, 0(x14)	# 975
	fle		f7, f6, fle.31965	# 125
	mul		x14, x30, x11	# 976
	add		x14, x6, x14	# 976
	flw		f6, 0(x14)	# 976
	fmul	f6, f5, f6	# 976
	fadd	f6, f6, f2	# 976
	fle		f6, f1, fle.31967	# 124
	jal		x0, fle_cont.31966	# 124
fle.31967:
	fsub	f6, f0, f6	# 124
fle_cont.31966:
	mul		x14, x30, x11	# 976
	add		x10, x10, x14	# 976
	flw		f7, 0(x10)	# 976
	fle		f7, f6, fle.31969	# 125
	mul		x10, x30, x11	# 977
	addi	x10, x10, 64336	# 977
	fsw		f5, 0(x10)	# 977
	addi	x10, x0, 1	# 977
	jal		x0, feq_cont.31952	# 125
fle.31969:
	addi	x10, x0, 0	# 978
	jal		x0, feq_cont.31952	# 125
fle.31965:
	addi	x10, x0, 0	# 979
	jal		x0, feq_cont.31952	# 120
feq.31953:
	addi	x10, x0, 0	# 970
feq_cont.31952:
	beq		x10, x11, beq.31971	# 986
	addi	x8, x0, 2	# 986
	jal		x0, beq_cont.31912	# 986
beq.31971:
	mul		x10, x30, x8	# 970
	add		x10, x6, x10	# 970
	flw		f5, 0(x10)	# 970
	feq		f5, f1, feq.31973	# 120
	lw		x10, 16(x9)	# 463
	lw		x9, 24(x9)	# 415
	fle		f1, f5, fle.31975	# 122
	addi	x14, x0, 1	# 122
	jal		x0, fle_cont.31974	# 122
fle.31975:
	addi	x14, x0, 0	# 122
fle_cont.31974:
	beq		x9, x11, beq.31977	# 246
	fle		f1, f5, fle.31979	# 122
	addi	x9, x0, 0	# 246
	jal		x0, beq_cont.31976	# 122
fle.31979:
	addi	x9, x0, 1	# 246
	jal		x0, beq_cont.31976	# 246
beq.31977:
	addi	x9, x14, 0	# 246
beq_cont.31976:
	mul		x8, x30, x8	# 972
	add		x8, x10, x8	# 972
	flw		f6, 0(x8)	# 972
	beq		x9, x11, beq.31981	# 261
	jal		x0, beq_cont.31980	# 261
beq.31981:
	fsub	f6, f0, f6	# 123
beq_cont.31980:
	fsub	f4, f6, f4	# 974
	fdiv	f4, f4, f5	# 974
	mul		x8, x30, x11	# 975
	add		x8, x6, x8	# 975
	flw		f5, 0(x8)	# 975
	fmul	f5, f4, f5	# 975
	fadd	f2, f5, f2	# 975
	fle		f2, f1, fle.31983	# 124
	jal		x0, fle_cont.31982	# 124
fle.31983:
	fsub	f2, f0, f2	# 124
fle_cont.31982:
	mul		x8, x30, x11	# 975
	add		x8, x10, x8	# 975
	flw		f5, 0(x8)	# 975
	fle		f5, f2, fle.31985	# 125
	mul		x8, x30, x12	# 976
	add		x8, x6, x8	# 976
	flw		f2, 0(x8)	# 976
	fmul	f2, f4, f2	# 976
	fadd	f2, f2, f3	# 976
	fle		f2, f1, fle.31987	# 124
	fadd	f1, f0, f2	# 124
	jal		x0, fle_cont.31986	# 124
fle.31987:
	fsub	f1, f0, f2	# 124
fle_cont.31986:
	mul		x8, x30, x12	# 976
	add		x8, x10, x8	# 976
	flw		f2, 0(x8)	# 976
	fle		f2, f1, fle.31989	# 125
	mul		x8, x30, x11	# 977
	addi	x8, x8, 64336	# 977
	fsw		f4, 0(x8)	# 977
	addi	x8, x0, 1	# 977
	jal		x0, feq_cont.31972	# 125
fle.31989:
	addi	x8, x0, 0	# 978
	jal		x0, feq_cont.31972	# 125
fle.31985:
	addi	x8, x0, 0	# 979
	jal		x0, feq_cont.31972	# 120
feq.31973:
	addi	x8, x0, 0	# 970
feq_cont.31972:
	beq		x8, x11, beq.31991	# 987
	addi	x8, x0, 3	# 987
	jal		x0, beq_cont.31912	# 987
beq.31991:
	addi	x8, x0, 0	# 988
beq_cont.31912:
	beq		x8, x11, beq_cont.31910	# 1569
	mul		x8, x30, x11	# 1570
	addi	x8, x8, 64336	# 1570
	flw		f1, 0(x8)	# 1570
	mul		x8, x30, x11	# 1571
	addi	x8, x8, 64344	# 1571
	flw		f2, 0(x8)	# 1571
	fle		f2, f1, beq_cont.31910	# 125
	addi	x5, x13, 0	# 1572
	addi	x4, x12, 0	# 1572
	addi	x29, x7, 0	# 1572
	sw		x1, -20(x2)	# 1572
	addi	x2, x2, -24	# 1572
	lw		x31, 0(x29)	# 1572
	jalr	x1, x31, 0	# 1572
	addi	x2, x2, 24	# 1572
	lw		x1, -20(x2)	# 1572
	jal		x0, beq_cont.31910	# 125
	jal		x0, beq_cont.31910	# 1569
	jal		x0, beq_cont.31910	# 1563
beq.31911:
	addi	x5, x13, 0	# 1564
	addi	x4, x12, 0	# 1564
	addi	x29, x7, 0	# 1564
	sw		x1, -20(x2)	# 1564
	addi	x2, x2, -24	# 1564
	lw		x31, 0(x29)	# 1564
	jalr	x1, x31, 0	# 1564
	addi	x2, x2, 24	# 1564
	lw		x1, -20(x2)	# 1564
beq_cont.31910:
	lw		x4, -16(x2)	# 1576
	lw		x5, -12(x2)	# 1576
	add		x4, x4, x5	# 1576
	lw		x5, -4(x2)	# 1576
	lw		x6, 0(x2)	# 1576
	lw		x29, -8(x2)	# 1576
	lw		x31, 0(x29)	# 1576
	jalr	x0, x31, 0	# 1576
beq.31909:
	jalr	x0, x1, 0	# 1561
solve_each_element_fast.2848.18000:
	lw		x7, 32(x29)	# 681
	lw		x8, 28(x29)	# 681
	lw		x9, 24(x29)	# 681
	lw		x10, 20(x29)	# 681
	lw		x11, 16(x29)	# 681
	lw		x12, 12(x29)	# 681
	lw		x13, 8(x29)	# 681
	flw		f1, 4(x29)	# 681
	lw		x14, 0(x6)	# 681
	mul		x15, x30, x4	# 1601
	add		x15, x5, x15	# 1601
	lw		x15, 0(x15)	# 1601
	beq		x15, x10, beq.31997	# 1602
	mul		x16, x30, x15	# 1215
	addi	x16, x16, 63844	# 1215
	lw		x16, 0(x16)	# 1215
	lw		x17, 40(x16)	# 590
	mul		x18, x30, x12	# 1217
	add		x18, x17, x18	# 1217
	flw		f2, 0(x18)	# 1217
	mul		x18, x30, x13	# 1218
	add		x18, x17, x18	# 1218
	flw		f3, 0(x18)	# 1218
	mul		x18, x30, x9	# 1219
	add		x18, x17, x18	# 1219
	flw		f4, 0(x18)	# 1219
	lw		x18, 4(x6)	# 687
	mul		x19, x30, x15	# 1221
	add		x18, x18, x19	# 1221
	lw		x18, 0(x18)	# 1221
	lw		x19, 4(x16)	# 395
	beq		x19, x13, beq.31999	# 1223
	beq		x19, x9, beq.32001	# 1225
	mul		x19, x30, x12	# 1197
	add		x19, x18, x19	# 1197
	flw		f5, 0(x19)	# 1197
	feq		f5, f1, feq.32003	# 120
	mul		x19, x30, x13	# 1201
	add		x19, x18, x19	# 1201
	flw		f6, 0(x19)	# 1201
	fmul	f2, f6, f2	# 1201
	mul		x19, x30, x9	# 1201
	add		x19, x18, x19	# 1201
	flw		f6, 0(x19)	# 1201
	fmul	f3, f6, f3	# 1201
	fadd	f2, f2, f3	# 1201
	mul		x19, x30, x11	# 1201
	add		x19, x18, x19	# 1201
	flw		f3, 0(x19)	# 1201
	fmul	f3, f3, f4	# 1201
	fadd	f2, f2, f3	# 1201
	mul		x19, x30, x11	# 1202
	add		x17, x17, x19	# 1202
	flw		f3, 0(x17)	# 1202
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1203
	fsub	f3, f4, f3	# 1203
	fle		f3, f1, fle.32005	# 121
	lw		x16, 24(x16)	# 415
	beq		x16, x12, beq.32007	# 1205
	fsqrt	f3, f3	# 1206
	fadd	f2, f2, f3	# 1206
	addi	x16, x0, 4	# 1206
	mul		x16, x30, x16	# 1206
	add		x16, x18, x16	# 1206
	flw		f3, 0(x16)	# 1206
	fmul	f2, f2, f3	# 1206
	mul		x16, x30, x12	# 1206
	addi	x16, x16, 64336	# 1206
	fsw		f2, 0(x16)	# 1206
	jal		x0, beq_cont.32006	# 1205
beq.32007:
	fsqrt	f3, f3	# 1208
	fsub	f2, f2, f3	# 1208
	addi	x16, x0, 4	# 1208
	mul		x16, x30, x16	# 1208
	add		x16, x18, x16	# 1208
	flw		f3, 0(x16)	# 1208
	fmul	f2, f2, f3	# 1208
	mul		x16, x30, x12	# 1208
	addi	x16, x16, 64336	# 1208
	fsw		f2, 0(x16)	# 1208
beq_cont.32006:
	addi	x16, x0, 1	# 1209
	jal		x0, beq_cont.31998	# 121
fle.32005:
	addi	x16, x0, 0	# 1210
	jal		x0, beq_cont.31998	# 120
feq.32003:
	addi	x16, x0, 0	# 1199
	jal		x0, beq_cont.31998	# 1225
beq.32001:
	mul		x16, x30, x12	# 1188
	add		x16, x18, x16	# 1188
	flw		f2, 0(x16)	# 1188
	fle		f1, f2, fle.32009	# 122
	mul		x16, x30, x11	# 1189
	add		x16, x17, x16	# 1189
	flw		f3, 0(x16)	# 1189
	fmul	f2, f2, f3	# 1189
	mul		x16, x30, x12	# 1189
	addi	x16, x16, 64336	# 1189
	fsw		f2, 0(x16)	# 1189
	addi	x16, x0, 1	# 1190
	jal		x0, beq_cont.31998	# 122
fle.32009:
	addi	x16, x0, 0	# 1191
	jal		x0, beq_cont.31998	# 1223
beq.31999:
	lw		x17, 0(x6)	# 681
	mul		x19, x30, x12	# 1106
	add		x19, x18, x19	# 1106
	flw		f5, 0(x19)	# 1106
	fsub	f5, f5, f2	# 1106
	mul		x19, x30, x13	# 1106
	add		x19, x18, x19	# 1106
	flw		f6, 0(x19)	# 1106
	fmul	f5, f5, f6	# 1106
	mul		x19, x30, x13	# 1108
	add		x19, x17, x19	# 1108
	flw		f7, 0(x19)	# 1108
	fmul	f8, f5, f7	# 1108
	fadd	f8, f8, f3	# 1108
	fle		f8, f1, fle.32011	# 124
	jal		x0, fle_cont.32010	# 124
fle.32011:
	fsub	f8, f0, f8	# 124
fle_cont.32010:
	lw		x19, 16(x16)	# 443
	mul		x20, x30, x13	# 448
	add		x19, x19, x20	# 448
	flw		f9, 0(x19)	# 448
	fle		f9, f8, fle.32013	# 125
	mul		x19, x30, x9	# 1109
	add		x19, x17, x19	# 1109
	flw		f8, 0(x19)	# 1109
	fmul	f8, f5, f8	# 1109
	fadd	f8, f8, f4	# 1109
	fle		f8, f1, fle.32015	# 124
	jal		x0, fle_cont.32014	# 124
fle.32015:
	fsub	f8, f0, f8	# 124
fle_cont.32014:
	lw		x19, 16(x16)	# 453
	mul		x20, x30, x9	# 458
	add		x19, x19, x20	# 458
	flw		f9, 0(x19)	# 458
	fle		f9, f8, fle.32017	# 125
	feq		f6, f1, feq.32019	# 120
	addi	x19, x0, 1	# 1110
	jal		x0, fle_cont.32012	# 120
feq.32019:
	addi	x19, x0, 0	# 1110
	jal		x0, fle_cont.32012	# 125
fle.32017:
	addi	x19, x0, 0	# 1111
	jal		x0, fle_cont.32012	# 125
fle.32013:
	addi	x19, x0, 0	# 1112
fle_cont.32012:
	beq		x19, x12, beq.32021	# 1107
	mul		x16, x30, x12	# 1114
	addi	x16, x16, 64336	# 1114
	fsw		f5, 0(x16)	# 1114
	addi	x16, x0, 1	# 1114
	jal		x0, beq_cont.31998	# 1107
beq.32021:
	mul		x19, x30, x9	# 1115
	add		x19, x18, x19	# 1115
	flw		f5, 0(x19)	# 1115
	fsub	f5, f5, f3	# 1115
	mul		x19, x30, x11	# 1115
	add		x19, x18, x19	# 1115
	flw		f6, 0(x19)	# 1115
	fmul	f5, f5, f6	# 1115
	mul		x19, x30, x12	# 1117
	add		x19, x17, x19	# 1117
	flw		f8, 0(x19)	# 1117
	fmul	f9, f5, f8	# 1117
	fadd	f9, f9, f2	# 1117
	fle		f9, f1, fle.32023	# 124
	jal		x0, fle_cont.32022	# 124
fle.32023:
	fsub	f9, f0, f9	# 124
fle_cont.32022:
	lw		x19, 16(x16)	# 433
	mul		x20, x30, x12	# 438
	add		x19, x19, x20	# 438
	flw		f10, 0(x19)	# 438
	fle		f10, f9, fle.32025	# 125
	mul		x19, x30, x9	# 1118
	add		x17, x17, x19	# 1118
	flw		f9, 0(x17)	# 1118
	fmul	f9, f5, f9	# 1118
	fadd	f9, f9, f4	# 1118
	fle		f9, f1, fle.32027	# 124
	jal		x0, fle_cont.32026	# 124
fle.32027:
	fsub	f9, f0, f9	# 124
fle_cont.32026:
	lw		x17, 16(x16)	# 453
	mul		x19, x30, x9	# 458
	add		x17, x17, x19	# 458
	flw		f10, 0(x17)	# 458
	fle		f10, f9, fle.32029	# 125
	feq		f6, f1, feq.32031	# 120
	addi	x17, x0, 1	# 1119
	jal		x0, fle_cont.32024	# 120
feq.32031:
	addi	x17, x0, 0	# 1119
	jal		x0, fle_cont.32024	# 125
fle.32029:
	addi	x17, x0, 0	# 1120
	jal		x0, fle_cont.32024	# 125
fle.32025:
	addi	x17, x0, 0	# 1121
fle_cont.32024:
	beq		x17, x12, beq.32033	# 1116
	mul		x16, x30, x12	# 1123
	addi	x16, x16, 64336	# 1123
	fsw		f5, 0(x16)	# 1123
	addi	x16, x0, 2	# 1123
	jal		x0, beq_cont.31998	# 1116
beq.32033:
	addi	x17, x0, 4	# 1124
	mul		x17, x30, x17	# 1124
	add		x17, x18, x17	# 1124
	flw		f5, 0(x17)	# 1124
	fsub	f4, f5, f4	# 1124
	mul		x17, x30, x8	# 1124
	add		x17, x18, x17	# 1124
	flw		f5, 0(x17)	# 1124
	fmul	f4, f4, f5	# 1124
	fmul	f6, f4, f8	# 1126
	fadd	f2, f6, f2	# 1126
	fle		f2, f1, fle.32035	# 124
	jal		x0, fle_cont.32034	# 124
fle.32035:
	fsub	f2, f0, f2	# 124
fle_cont.32034:
	lw		x17, 16(x16)	# 433
	mul		x18, x30, x12	# 438
	add		x17, x17, x18	# 438
	flw		f6, 0(x17)	# 438
	fle		f6, f2, fle.32037	# 125
	fmul	f2, f4, f7	# 1127
	fadd	f2, f2, f3	# 1127
	fle		f2, f1, fle.32039	# 124
	jal		x0, fle_cont.32038	# 124
fle.32039:
	fsub	f2, f0, f2	# 124
fle_cont.32038:
	lw		x16, 16(x16)	# 443
	mul		x17, x30, x13	# 448
	add		x16, x16, x17	# 448
	flw		f3, 0(x16)	# 448
	fle		f3, f2, fle.32041	# 125
	feq		f5, f1, feq.32043	# 120
	addi	x16, x0, 1	# 1128
	jal		x0, fle_cont.32036	# 120
feq.32043:
	addi	x16, x0, 0	# 1128
	jal		x0, fle_cont.32036	# 125
fle.32041:
	addi	x16, x0, 0	# 1129
	jal		x0, fle_cont.32036	# 125
fle.32037:
	addi	x16, x0, 0	# 1130
fle_cont.32036:
	beq		x16, x12, beq.32045	# 1125
	mul		x16, x30, x12	# 1132
	addi	x16, x16, 64336	# 1132
	fsw		f4, 0(x16)	# 1132
	addi	x16, x0, 3	# 1132
	jal		x0, beq_cont.31998	# 1125
beq.32045:
	addi	x16, x0, 0	# 1134
beq_cont.31998:
	beq		x16, x12, beq.32046	# 1605
	mul		x17, x30, x12	# 1609
	addi	x17, x17, 64336	# 1609
	flw		f2, 0(x17)	# 1609
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
	fle		f2, f1, fle_cont.32047	# 125
	mul		x17, x30, x12	# 1612
	addi	x17, x17, 64344	# 1612
	flw		f3, 0(x17)	# 1612
	fle		f3, f2, fle_cont.32047	# 125
	fadd	f2, f2, f18	# 1614
	mul		x17, x30, x12	# 1615
	add		x17, x14, x17	# 1615
	flw		f3, 0(x17)	# 1615
	fmul	f3, f3, f2	# 1615
	mul		x17, x30, x12	# 1615
	addi	x17, x17, 64444	# 1615
	flw		f4, 0(x17)	# 1615
	fadd	f3, f3, f4	# 1615
	mul		x17, x30, x13	# 1616
	add		x17, x14, x17	# 1616
	flw		f4, 0(x17)	# 1616
	fmul	f4, f4, f2	# 1616
	mul		x17, x30, x13	# 1616
	addi	x17, x17, 64444	# 1616
	flw		f5, 0(x17)	# 1616
	fadd	f4, f4, f5	# 1616
	mul		x17, x30, x9	# 1617
	add		x14, x14, x17	# 1617
	flw		f5, 0(x14)	# 1617
	fmul	f5, f5, f2	# 1617
	mul		x14, x30, x9	# 1617
	addi	x14, x14, 64444	# 1617
	flw		f6, 0(x14)	# 1617
	fadd	f5, f5, f6	# 1617
	fsw		f5, -44(x2)	# 1618
	fsw		f4, -48(x2)	# 1618
	fsw		f3, -52(x2)	# 1618
	fsw		f2, -56(x2)	# 1618
	addi	x4, x12, 0	# 1618
	addi	x29, x7, 0	# 1618
	fadd	f2, f0, f4	# 1618
	fadd	f1, f0, f3	# 1618
	fadd	f3, f0, f5	# 1618
	sw		x1, -60(x2)	# 1618
	addi	x2, x2, -64	# 1618
	lw		x31, 0(x29)	# 1618
	jalr	x1, x31, 0	# 1618
	addi	x2, x2, 64	# 1618
	lw		x1, -60(x2)	# 1618
	lw		x5, -24(x2)	# 1618
	beq		x4, x5, fle_cont.32047	# 1618
	mul		x4, x30, x5	# 1620
	addi	x4, x4, 64344	# 1620
	flw		f1, -56(x2)	# 1620
	fsw		f1, 0(x4)	# 1620
	mul		x4, x30, x5	# 282
	addi	x4, x4, 64348	# 282
	flw		f1, -52(x2)	# 282
	fsw		f1, 0(x4)	# 282
	mul		x4, x30, x13	# 283
	addi	x4, x4, 64348	# 283
	flw		f1, -48(x2)	# 283
	fsw		f1, 0(x4)	# 283
	lw		x4, -20(x2)	# 284
	mul		x6, x30, x4	# 284
	addi	x6, x6, 64348	# 284
	flw		f1, -44(x2)	# 284
	fsw		f1, 0(x6)	# 284
	mul		x6, x30, x5	# 1622
	addi	x6, x6, 64360	# 1622
	sw		x15, 0(x6)	# 1622
	mul		x6, x30, x5	# 1623
	addi	x6, x6, 64340	# 1623
	sw		x16, 0(x6)	# 1623
	jal		x0, fle_cont.32047	# 1618
	jal		x0, fle_cont.32047	# 125
	jal		x0, fle_cont.32047	# 125
fle_cont.32047:
	lw		x4, -40(x2)	# 1629
	add		x4, x4, x13	# 1629
	lw		x6, -36(x2)	# 681
	lw		x5, 0(x6)	# 681
	mul		x7, x30, x4	# 1601
	lw		x8, -32(x2)	# 1601
	add		x7, x8, x7	# 1601
	lw		x7, 0(x7)	# 1601
	lw		x9, -28(x2)	# 1602
	beq		x7, x9, beq.32053	# 1602
	mul		x9, x30, x7	# 1215
	addi	x9, x9, 63844	# 1215
	lw		x9, 0(x9)	# 1215
	lw		x10, 40(x9)	# 590
	lw		x11, -24(x2)	# 1217
	mul		x12, x30, x11	# 1217
	add		x12, x10, x12	# 1217
	flw		f1, 0(x12)	# 1217
	mul		x12, x30, x13	# 1218
	add		x12, x10, x12	# 1218
	flw		f2, 0(x12)	# 1218
	lw		x12, -20(x2)	# 1219
	mul		x14, x30, x12	# 1219
	add		x14, x10, x14	# 1219
	flw		f3, 0(x14)	# 1219
	lw		x14, 4(x6)	# 687
	mul		x15, x30, x7	# 1221
	add		x14, x14, x15	# 1221
	lw		x14, 0(x14)	# 1221
	lw		x15, 4(x9)	# 395
	beq		x15, x13, beq.32055	# 1223
	beq		x15, x12, beq.32057	# 1225
	mul		x15, x30, x11	# 1197
	add		x15, x14, x15	# 1197
	flw		f4, 0(x15)	# 1197
	flw		f5, -16(x2)	# 120
	feq		f4, f5, feq.32059	# 120
	mul		x15, x30, x13	# 1201
	add		x15, x14, x15	# 1201
	flw		f6, 0(x15)	# 1201
	fmul	f1, f6, f1	# 1201
	mul		x15, x30, x12	# 1201
	add		x15, x14, x15	# 1201
	flw		f6, 0(x15)	# 1201
	fmul	f2, f6, f2	# 1201
	fadd	f1, f1, f2	# 1201
	lw		x15, -12(x2)	# 1201
	mul		x16, x30, x15	# 1201
	add		x16, x14, x16	# 1201
	flw		f2, 0(x16)	# 1201
	fmul	f2, f2, f3	# 1201
	fadd	f1, f1, f2	# 1201
	mul		x15, x30, x15	# 1202
	add		x10, x10, x15	# 1202
	flw		f2, 0(x10)	# 1202
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1203
	fsub	f2, f3, f2	# 1203
	fle		f2, f5, fle.32061	# 121
	lw		x9, 24(x9)	# 415
	beq		x9, x11, beq.32063	# 1205
	fsqrt	f2, f2	# 1206
	fadd	f1, f1, f2	# 1206
	addi	x9, x0, 4	# 1206
	mul		x9, x30, x9	# 1206
	add		x9, x14, x9	# 1206
	flw		f2, 0(x9)	# 1206
	fmul	f1, f1, f2	# 1206
	mul		x9, x30, x11	# 1206
	addi	x9, x9, 64336	# 1206
	fsw		f1, 0(x9)	# 1206
	jal		x0, beq_cont.32062	# 1205
beq.32063:
	fsqrt	f2, f2	# 1208
	fsub	f1, f1, f2	# 1208
	addi	x9, x0, 4	# 1208
	mul		x9, x30, x9	# 1208
	add		x9, x14, x9	# 1208
	flw		f2, 0(x9)	# 1208
	fmul	f1, f1, f2	# 1208
	mul		x9, x30, x11	# 1208
	addi	x9, x9, 64336	# 1208
	fsw		f1, 0(x9)	# 1208
beq_cont.32062:
	addi	x9, x0, 1	# 1209
	jal		x0, beq_cont.32054	# 121
fle.32061:
	addi	x9, x0, 0	# 1210
	jal		x0, beq_cont.32054	# 120
feq.32059:
	addi	x9, x0, 0	# 1199
	jal		x0, beq_cont.32054	# 1225
beq.32057:
	mul		x9, x30, x11	# 1188
	add		x9, x14, x9	# 1188
	flw		f1, 0(x9)	# 1188
	flw		f2, -16(x2)	# 122
	fle		f2, f1, fle.32065	# 122
	lw		x9, -12(x2)	# 1189
	mul		x9, x30, x9	# 1189
	add		x9, x10, x9	# 1189
	flw		f3, 0(x9)	# 1189
	fmul	f1, f1, f3	# 1189
	mul		x9, x30, x11	# 1189
	addi	x9, x9, 64336	# 1189
	fsw		f1, 0(x9)	# 1189
	addi	x9, x0, 1	# 1190
	jal		x0, beq_cont.32054	# 122
fle.32065:
	addi	x9, x0, 0	# 1191
	jal		x0, beq_cont.32054	# 1223
beq.32055:
	lw		x10, 0(x6)	# 681
	mul		x15, x30, x11	# 1106
	add		x15, x14, x15	# 1106
	flw		f4, 0(x15)	# 1106
	fsub	f4, f4, f1	# 1106
	mul		x15, x30, x13	# 1106
	add		x15, x14, x15	# 1106
	flw		f5, 0(x15)	# 1106
	fmul	f4, f4, f5	# 1106
	mul		x15, x30, x13	# 1108
	add		x15, x10, x15	# 1108
	flw		f6, 0(x15)	# 1108
	fmul	f7, f4, f6	# 1108
	fadd	f7, f7, f2	# 1108
	flw		f8, -16(x2)	# 124
	fle		f7, f8, fle.32067	# 124
	jal		x0, fle_cont.32066	# 124
fle.32067:
	fsub	f7, f0, f7	# 124
fle_cont.32066:
	lw		x15, 16(x9)	# 443
	mul		x16, x30, x13	# 448
	add		x15, x15, x16	# 448
	flw		f9, 0(x15)	# 448
	fle		f9, f7, fle.32069	# 125
	mul		x15, x30, x12	# 1109
	add		x15, x10, x15	# 1109
	flw		f7, 0(x15)	# 1109
	fmul	f7, f4, f7	# 1109
	fadd	f7, f7, f3	# 1109
	fle		f7, f8, fle.32071	# 124
	jal		x0, fle_cont.32070	# 124
fle.32071:
	fsub	f7, f0, f7	# 124
fle_cont.32070:
	lw		x15, 16(x9)	# 453
	mul		x16, x30, x12	# 458
	add		x15, x15, x16	# 458
	flw		f10, 0(x15)	# 458
	fle		f10, f7, fle.32073	# 125
	feq		f5, f8, feq.32075	# 120
	addi	x15, x0, 1	# 1110
	jal		x0, fle_cont.32068	# 120
feq.32075:
	addi	x15, x0, 0	# 1110
	jal		x0, fle_cont.32068	# 125
fle.32073:
	addi	x15, x0, 0	# 1111
	jal		x0, fle_cont.32068	# 125
fle.32069:
	addi	x15, x0, 0	# 1112
fle_cont.32068:
	beq		x15, x11, beq.32077	# 1107
	mul		x9, x30, x11	# 1114
	addi	x9, x9, 64336	# 1114
	fsw		f4, 0(x9)	# 1114
	addi	x9, x0, 1	# 1114
	jal		x0, beq_cont.32054	# 1107
beq.32077:
	mul		x15, x30, x12	# 1115
	add		x15, x14, x15	# 1115
	flw		f4, 0(x15)	# 1115
	fsub	f4, f4, f2	# 1115
	lw		x15, -12(x2)	# 1115
	mul		x15, x30, x15	# 1115
	add		x15, x14, x15	# 1115
	flw		f5, 0(x15)	# 1115
	fmul	f4, f4, f5	# 1115
	mul		x15, x30, x11	# 1117
	add		x15, x10, x15	# 1117
	flw		f7, 0(x15)	# 1117
	fmul	f10, f4, f7	# 1117
	fadd	f10, f10, f1	# 1117
	fle		f10, f8, fle.32079	# 124
	jal		x0, fle_cont.32078	# 124
fle.32079:
	fsub	f10, f0, f10	# 124
fle_cont.32078:
	lw		x15, 16(x9)	# 433
	mul		x16, x30, x11	# 438
	add		x15, x15, x16	# 438
	flw		f11, 0(x15)	# 438
	fle		f11, f10, fle.32081	# 125
	mul		x15, x30, x12	# 1118
	add		x10, x10, x15	# 1118
	flw		f10, 0(x10)	# 1118
	fmul	f10, f4, f10	# 1118
	fadd	f10, f10, f3	# 1118
	fle		f10, f8, fle.32083	# 124
	jal		x0, fle_cont.32082	# 124
fle.32083:
	fsub	f10, f0, f10	# 124
fle_cont.32082:
	lw		x9, 16(x9)	# 453
	mul		x10, x30, x12	# 458
	add		x9, x9, x10	# 458
	flw		f12, 0(x9)	# 458
	fle		f12, f10, fle.32085	# 125
	feq		f5, f8, feq.32087	# 120
	addi	x9, x0, 1	# 1119
	jal		x0, fle_cont.32080	# 120
feq.32087:
	addi	x9, x0, 0	# 1119
	jal		x0, fle_cont.32080	# 125
fle.32085:
	addi	x9, x0, 0	# 1120
	jal		x0, fle_cont.32080	# 125
fle.32081:
	addi	x9, x0, 0	# 1121
fle_cont.32080:
	beq		x9, x11, beq.32089	# 1116
	mul		x9, x30, x11	# 1123
	addi	x9, x9, 64336	# 1123
	fsw		f4, 0(x9)	# 1123
	addi	x9, x0, 2	# 1123
	jal		x0, beq_cont.32054	# 1116
beq.32089:
	addi	x9, x0, 4	# 1124
	mul		x9, x30, x9	# 1124
	add		x9, x14, x9	# 1124
	flw		f4, 0(x9)	# 1124
	fsub	f3, f4, f3	# 1124
	lw		x9, -8(x2)	# 1124
	mul		x9, x30, x9	# 1124
	add		x9, x14, x9	# 1124
	flw		f4, 0(x9)	# 1124
	fmul	f3, f3, f4	# 1124
	fmul	f5, f3, f7	# 1126
	fadd	f1, f5, f1	# 1126
	fle		f1, f8, fle.32091	# 124
	jal		x0, fle_cont.32090	# 124
fle.32091:
	fsub	f1, f0, f1	# 124
fle_cont.32090:
	fle		f11, f1, fle.32093	# 125
	fmul	f1, f3, f6	# 1127
	fadd	f1, f1, f2	# 1127
	fle		f1, f8, fle.32095	# 124
	jal		x0, fle_cont.32094	# 124
fle.32095:
	fsub	f1, f0, f1	# 124
fle_cont.32094:
	fle		f9, f1, fle.32097	# 125
	feq		f4, f8, feq.32099	# 120
	addi	x9, x0, 1	# 1128
	jal		x0, fle_cont.32092	# 120
feq.32099:
	addi	x9, x0, 0	# 1128
	jal		x0, fle_cont.32092	# 125
fle.32097:
	addi	x9, x0, 0	# 1129
	jal		x0, fle_cont.32092	# 125
fle.32093:
	addi	x9, x0, 0	# 1130
fle_cont.32092:
	beq		x9, x11, beq.32101	# 1125
	mul		x9, x30, x11	# 1132
	addi	x9, x9, 64336	# 1132
	fsw		f3, 0(x9)	# 1132
	addi	x9, x0, 3	# 1132
	jal		x0, beq_cont.32054	# 1125
beq.32101:
	addi	x9, x0, 0	# 1134
beq_cont.32054:
	beq		x9, x11, beq.32102	# 1605
	mul		x10, x30, x11	# 1609
	addi	x10, x10, 64336	# 1609
	flw		f1, 0(x10)	# 1609
	flw		f2, -16(x2)	# 125
	sw		x4, -60(x2)	# 125
	fle		f1, f2, fle_cont.32103	# 125
	mul		x10, x30, x11	# 1612
	addi	x10, x10, 64344	# 1612
	flw		f2, 0(x10)	# 1612
	fle		f2, f1, fle_cont.32103	# 125
	fadd	f1, f1, f18	# 1614
	mul		x10, x30, x11	# 1615
	add		x10, x5, x10	# 1615
	flw		f2, 0(x10)	# 1615
	fmul	f2, f2, f1	# 1615
	mul		x10, x30, x11	# 1615
	addi	x10, x10, 64444	# 1615
	flw		f3, 0(x10)	# 1615
	fadd	f2, f2, f3	# 1615
	mul		x10, x30, x13	# 1616
	add		x10, x5, x10	# 1616
	flw		f3, 0(x10)	# 1616
	fmul	f3, f3, f1	# 1616
	mul		x10, x30, x13	# 1616
	addi	x10, x10, 64444	# 1616
	flw		f4, 0(x10)	# 1616
	fadd	f3, f3, f4	# 1616
	mul		x10, x30, x12	# 1617
	add		x5, x5, x10	# 1617
	flw		f4, 0(x5)	# 1617
	fmul	f4, f4, f1	# 1617
	mul		x5, x30, x12	# 1617
	addi	x5, x5, 64444	# 1617
	flw		f5, 0(x5)	# 1617
	fadd	f4, f4, f5	# 1617
	lw		x29, 0(x2)	# 1618
	sw		x9, -64(x2)	# 1618
	sw		x7, -68(x2)	# 1618
	fsw		f4, -72(x2)	# 1618
	fsw		f3, -76(x2)	# 1618
	fsw		f2, -80(x2)	# 1618
	fsw		f1, -84(x2)	# 1618
	addi	x5, x8, 0	# 1618
	addi	x4, x11, 0	# 1618
	fadd	f1, f0, f2	# 1618
	fadd	f2, f0, f3	# 1618
	fadd	f3, f0, f4	# 1618
	sw		x1, -88(x2)	# 1618
	addi	x2, x2, -92	# 1618
	lw		x31, 0(x29)	# 1618
	jalr	x1, x31, 0	# 1618
	addi	x2, x2, 92	# 1618
	lw		x1, -88(x2)	# 1618
	lw		x5, -24(x2)	# 1618
	beq		x4, x5, fle_cont.32103	# 1618
	mul		x4, x30, x5	# 1620
	addi	x4, x4, 64344	# 1620
	flw		f1, -84(x2)	# 1620
	fsw		f1, 0(x4)	# 1620
	mul		x4, x30, x5	# 282
	addi	x4, x4, 64348	# 282
	flw		f1, -80(x2)	# 282
	fsw		f1, 0(x4)	# 282
	mul		x4, x30, x13	# 283
	addi	x4, x4, 64348	# 283
	flw		f1, -76(x2)	# 283
	fsw		f1, 0(x4)	# 283
	lw		x4, -20(x2)	# 284
	mul		x4, x30, x4	# 284
	addi	x4, x4, 64348	# 284
	flw		f1, -72(x2)	# 284
	fsw		f1, 0(x4)	# 284
	mul		x4, x30, x5	# 1622
	addi	x4, x4, 64360	# 1622
	lw		x6, -68(x2)	# 1622
	sw		x6, 0(x4)	# 1622
	mul		x4, x30, x5	# 1623
	addi	x4, x4, 64340	# 1623
	lw		x5, -64(x2)	# 1623
	sw		x5, 0(x4)	# 1623
	jal		x0, fle_cont.32103	# 1618
	jal		x0, fle_cont.32103	# 125
	jal		x0, fle_cont.32103	# 125
fle_cont.32103:
	lw		x4, -60(x2)	# 1629
	add		x4, x4, x13	# 1629
	lw		x5, -32(x2)	# 1629
	lw		x6, -36(x2)	# 1629
	lw		x29, -4(x2)	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x0, x31, 0	# 1629
beq.32102:
	mul		x5, x30, x7	# 1633
	addi	x5, x5, 63844	# 1633
	lw		x5, 0(x5)	# 1633
	lw		x5, 24(x5)	# 415
	beq		x5, x11, beq.32109	# 1633
	add		x4, x4, x13	# 1634
	lw		x29, -4(x2)	# 1634
	addi	x5, x8, 0	# 1634
	lw		x31, 0(x29)	# 1634
	jalr	x0, x31, 0	# 1634
beq.32109:
	jalr	x0, x1, 0	# 1635
beq.32053:
	jalr	x0, x1, 0	# 1602
beq.32046:
	mul		x14, x30, x15	# 1633
	addi	x14, x14, 63844	# 1633
	lw		x14, 0(x14)	# 1633
	lw		x14, 24(x14)	# 415
	beq		x14, x12, beq.32112	# 1633
	add		x4, x4, x13	# 1634
	lw		x14, 0(x6)	# 681
	mul		x15, x30, x4	# 1601
	add		x15, x5, x15	# 1601
	lw		x15, 0(x15)	# 1601
	beq		x15, x10, beq.32113	# 1602
	mul		x10, x30, x15	# 1215
	addi	x10, x10, 63844	# 1215
	lw		x10, 0(x10)	# 1215
	lw		x16, 40(x10)	# 590
	mul		x17, x30, x12	# 1217
	add		x17, x16, x17	# 1217
	flw		f2, 0(x17)	# 1217
	mul		x17, x30, x13	# 1218
	add		x17, x16, x17	# 1218
	flw		f3, 0(x17)	# 1218
	mul		x17, x30, x9	# 1219
	add		x17, x16, x17	# 1219
	flw		f4, 0(x17)	# 1219
	lw		x17, 4(x6)	# 687
	mul		x18, x30, x15	# 1221
	add		x17, x17, x18	# 1221
	lw		x17, 0(x17)	# 1221
	lw		x18, 4(x10)	# 395
	beq		x18, x13, beq.32115	# 1223
	beq		x18, x9, beq.32117	# 1225
	mul		x8, x30, x12	# 1197
	add		x8, x17, x8	# 1197
	flw		f5, 0(x8)	# 1197
	feq		f5, f1, feq.32119	# 120
	mul		x8, x30, x13	# 1201
	add		x8, x17, x8	# 1201
	flw		f6, 0(x8)	# 1201
	fmul	f2, f6, f2	# 1201
	mul		x8, x30, x9	# 1201
	add		x8, x17, x8	# 1201
	flw		f6, 0(x8)	# 1201
	fmul	f3, f6, f3	# 1201
	fadd	f2, f2, f3	# 1201
	mul		x8, x30, x11	# 1201
	add		x8, x17, x8	# 1201
	flw		f3, 0(x8)	# 1201
	fmul	f3, f3, f4	# 1201
	fadd	f2, f2, f3	# 1201
	mul		x8, x30, x11	# 1202
	add		x8, x16, x8	# 1202
	flw		f3, 0(x8)	# 1202
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1203
	fsub	f3, f4, f3	# 1203
	fle		f3, f1, fle.32121	# 121
	lw		x8, 24(x10)	# 415
	beq		x8, x12, beq.32123	# 1205
	fsqrt	f3, f3	# 1206
	fadd	f2, f2, f3	# 1206
	addi	x8, x0, 4	# 1206
	mul		x8, x30, x8	# 1206
	add		x8, x17, x8	# 1206
	flw		f3, 0(x8)	# 1206
	fmul	f2, f2, f3	# 1206
	mul		x8, x30, x12	# 1206
	addi	x8, x8, 64336	# 1206
	fsw		f2, 0(x8)	# 1206
	jal		x0, beq_cont.32122	# 1205
beq.32123:
	fsqrt	f3, f3	# 1208
	fsub	f2, f2, f3	# 1208
	addi	x8, x0, 4	# 1208
	mul		x8, x30, x8	# 1208
	add		x8, x17, x8	# 1208
	flw		f3, 0(x8)	# 1208
	fmul	f2, f2, f3	# 1208
	mul		x8, x30, x12	# 1208
	addi	x8, x8, 64336	# 1208
	fsw		f2, 0(x8)	# 1208
beq_cont.32122:
	addi	x8, x0, 1	# 1209
	jal		x0, beq_cont.32114	# 121
fle.32121:
	addi	x8, x0, 0	# 1210
	jal		x0, beq_cont.32114	# 120
feq.32119:
	addi	x8, x0, 0	# 1199
	jal		x0, beq_cont.32114	# 1225
beq.32117:
	mul		x8, x30, x12	# 1188
	add		x8, x17, x8	# 1188
	flw		f2, 0(x8)	# 1188
	fle		f1, f2, fle.32125	# 122
	mul		x8, x30, x11	# 1189
	add		x8, x16, x8	# 1189
	flw		f3, 0(x8)	# 1189
	fmul	f2, f2, f3	# 1189
	mul		x8, x30, x12	# 1189
	addi	x8, x8, 64336	# 1189
	fsw		f2, 0(x8)	# 1189
	addi	x8, x0, 1	# 1190
	jal		x0, beq_cont.32114	# 122
fle.32125:
	addi	x8, x0, 0	# 1191
	jal		x0, beq_cont.32114	# 1223
beq.32115:
	lw		x16, 0(x6)	# 681
	mul		x18, x30, x12	# 1106
	add		x18, x17, x18	# 1106
	flw		f5, 0(x18)	# 1106
	fsub	f5, f5, f2	# 1106
	mul		x18, x30, x13	# 1106
	add		x18, x17, x18	# 1106
	flw		f6, 0(x18)	# 1106
	fmul	f5, f5, f6	# 1106
	mul		x18, x30, x13	# 1108
	add		x18, x16, x18	# 1108
	flw		f7, 0(x18)	# 1108
	fmul	f8, f5, f7	# 1108
	fadd	f8, f8, f3	# 1108
	fle		f8, f1, fle.32127	# 124
	jal		x0, fle_cont.32126	# 124
fle.32127:
	fsub	f8, f0, f8	# 124
fle_cont.32126:
	lw		x18, 16(x10)	# 443
	mul		x19, x30, x13	# 448
	add		x18, x18, x19	# 448
	flw		f9, 0(x18)	# 448
	fle		f9, f8, fle.32129	# 125
	mul		x18, x30, x9	# 1109
	add		x18, x16, x18	# 1109
	flw		f8, 0(x18)	# 1109
	fmul	f8, f5, f8	# 1109
	fadd	f8, f8, f4	# 1109
	fle		f8, f1, fle.32131	# 124
	jal		x0, fle_cont.32130	# 124
fle.32131:
	fsub	f8, f0, f8	# 124
fle_cont.32130:
	lw		x18, 16(x10)	# 453
	mul		x19, x30, x9	# 458
	add		x18, x18, x19	# 458
	flw		f10, 0(x18)	# 458
	fle		f10, f8, fle.32133	# 125
	feq		f6, f1, feq.32135	# 120
	addi	x18, x0, 1	# 1110
	jal		x0, fle_cont.32128	# 120
feq.32135:
	addi	x18, x0, 0	# 1110
	jal		x0, fle_cont.32128	# 125
fle.32133:
	addi	x18, x0, 0	# 1111
	jal		x0, fle_cont.32128	# 125
fle.32129:
	addi	x18, x0, 0	# 1112
fle_cont.32128:
	beq		x18, x12, beq.32137	# 1107
	mul		x8, x30, x12	# 1114
	addi	x8, x8, 64336	# 1114
	fsw		f5, 0(x8)	# 1114
	addi	x8, x0, 1	# 1114
	jal		x0, beq_cont.32114	# 1107
beq.32137:
	mul		x18, x30, x9	# 1115
	add		x18, x17, x18	# 1115
	flw		f5, 0(x18)	# 1115
	fsub	f5, f5, f3	# 1115
	mul		x11, x30, x11	# 1115
	add		x11, x17, x11	# 1115
	flw		f6, 0(x11)	# 1115
	fmul	f5, f5, f6	# 1115
	mul		x11, x30, x12	# 1117
	add		x11, x16, x11	# 1117
	flw		f8, 0(x11)	# 1117
	fmul	f10, f5, f8	# 1117
	fadd	f10, f10, f2	# 1117
	fle		f10, f1, fle.32139	# 124
	jal		x0, fle_cont.32138	# 124
fle.32139:
	fsub	f10, f0, f10	# 124
fle_cont.32138:
	lw		x11, 16(x10)	# 433
	mul		x18, x30, x12	# 438
	add		x11, x11, x18	# 438
	flw		f11, 0(x11)	# 438
	fle		f11, f10, fle.32141	# 125
	mul		x11, x30, x9	# 1118
	add		x11, x16, x11	# 1118
	flw		f10, 0(x11)	# 1118
	fmul	f10, f5, f10	# 1118
	fadd	f10, f10, f4	# 1118
	fle		f10, f1, fle.32143	# 124
	jal		x0, fle_cont.32142	# 124
fle.32143:
	fsub	f10, f0, f10	# 124
fle_cont.32142:
	lw		x10, 16(x10)	# 453
	mul		x11, x30, x9	# 458
	add		x10, x10, x11	# 458
	flw		f12, 0(x10)	# 458
	fle		f12, f10, fle.32145	# 125
	feq		f6, f1, feq.32147	# 120
	addi	x10, x0, 1	# 1119
	jal		x0, fle_cont.32140	# 120
feq.32147:
	addi	x10, x0, 0	# 1119
	jal		x0, fle_cont.32140	# 125
fle.32145:
	addi	x10, x0, 0	# 1120
	jal		x0, fle_cont.32140	# 125
fle.32141:
	addi	x10, x0, 0	# 1121
fle_cont.32140:
	beq		x10, x12, beq.32149	# 1116
	mul		x8, x30, x12	# 1123
	addi	x8, x8, 64336	# 1123
	fsw		f5, 0(x8)	# 1123
	addi	x8, x0, 2	# 1123
	jal		x0, beq_cont.32114	# 1116
beq.32149:
	addi	x10, x0, 4	# 1124
	mul		x10, x30, x10	# 1124
	add		x10, x17, x10	# 1124
	flw		f5, 0(x10)	# 1124
	fsub	f4, f5, f4	# 1124
	mul		x8, x30, x8	# 1124
	add		x8, x17, x8	# 1124
	flw		f5, 0(x8)	# 1124
	fmul	f4, f4, f5	# 1124
	fmul	f6, f4, f8	# 1126
	fadd	f2, f6, f2	# 1126
	fle		f2, f1, fle.32151	# 124
	jal		x0, fle_cont.32150	# 124
fle.32151:
	fsub	f2, f0, f2	# 124
fle_cont.32150:
	fle		f11, f2, fle.32153	# 125
	fmul	f2, f4, f7	# 1127
	fadd	f2, f2, f3	# 1127
	fle		f2, f1, fle.32155	# 124
	jal		x0, fle_cont.32154	# 124
fle.32155:
	fsub	f2, f0, f2	# 124
fle_cont.32154:
	fle		f9, f2, fle.32157	# 125
	feq		f5, f1, feq.32159	# 120
	addi	x8, x0, 1	# 1128
	jal		x0, fle_cont.32152	# 120
feq.32159:
	addi	x8, x0, 0	# 1128
	jal		x0, fle_cont.32152	# 125
fle.32157:
	addi	x8, x0, 0	# 1129
	jal		x0, fle_cont.32152	# 125
fle.32153:
	addi	x8, x0, 0	# 1130
fle_cont.32152:
	beq		x8, x12, beq.32161	# 1125
	mul		x8, x30, x12	# 1132
	addi	x8, x8, 64336	# 1132
	fsw		f4, 0(x8)	# 1132
	addi	x8, x0, 3	# 1132
	jal		x0, beq_cont.32114	# 1125
beq.32161:
	addi	x8, x0, 0	# 1134
beq_cont.32114:
	beq		x8, x12, beq.32162	# 1605
	mul		x10, x30, x12	# 1609
	addi	x10, x10, 64336	# 1609
	flw		f2, 0(x10)	# 1609
	sw		x6, -36(x2)	# 125
	sw		x5, -32(x2)	# 125
	sw		x29, -4(x2)	# 125
	sw		x4, -88(x2)	# 125
	fle		f2, f1, fle_cont.32163	# 125
	mul		x10, x30, x12	# 1612
	addi	x10, x10, 64344	# 1612
	flw		f1, 0(x10)	# 1612
	fle		f1, f2, fle_cont.32163	# 125
	fadd	f1, f2, f18	# 1614
	mul		x10, x30, x12	# 1615
	add		x10, x14, x10	# 1615
	flw		f2, 0(x10)	# 1615
	fmul	f2, f2, f1	# 1615
	mul		x10, x30, x12	# 1615
	addi	x10, x10, 64444	# 1615
	flw		f3, 0(x10)	# 1615
	fadd	f2, f2, f3	# 1615
	mul		x10, x30, x13	# 1616
	add		x10, x14, x10	# 1616
	flw		f3, 0(x10)	# 1616
	fmul	f3, f3, f1	# 1616
	mul		x10, x30, x13	# 1616
	addi	x10, x10, 64444	# 1616
	flw		f4, 0(x10)	# 1616
	fadd	f3, f3, f4	# 1616
	mul		x10, x30, x9	# 1617
	add		x10, x14, x10	# 1617
	flw		f4, 0(x10)	# 1617
	fmul	f4, f4, f1	# 1617
	mul		x10, x30, x9	# 1617
	addi	x10, x10, 64444	# 1617
	flw		f5, 0(x10)	# 1617
	fadd	f4, f4, f5	# 1617
	sw		x8, -92(x2)	# 1618
	fsw		f4, -96(x2)	# 1618
	sw		x9, -20(x2)	# 1618
	fsw		f3, -100(x2)	# 1618
	fsw		f2, -104(x2)	# 1618
	fsw		f1, -108(x2)	# 1618
	sw		x12, -24(x2)	# 1618
	addi	x4, x12, 0	# 1618
	addi	x29, x7, 0	# 1618
	fadd	f1, f0, f2	# 1618
	fadd	f2, f0, f3	# 1618
	fadd	f3, f0, f4	# 1618
	sw		x1, -112(x2)	# 1618
	addi	x2, x2, -116	# 1618
	lw		x31, 0(x29)	# 1618
	jalr	x1, x31, 0	# 1618
	addi	x2, x2, 116	# 1618
	lw		x1, -112(x2)	# 1618
	lw		x5, -24(x2)	# 1618
	beq		x4, x5, fle_cont.32163	# 1618
	mul		x4, x30, x5	# 1620
	addi	x4, x4, 64344	# 1620
	flw		f1, -108(x2)	# 1620
	fsw		f1, 0(x4)	# 1620
	mul		x4, x30, x5	# 282
	addi	x4, x4, 64348	# 282
	flw		f1, -104(x2)	# 282
	fsw		f1, 0(x4)	# 282
	mul		x4, x30, x13	# 283
	addi	x4, x4, 64348	# 283
	flw		f1, -100(x2)	# 283
	fsw		f1, 0(x4)	# 283
	lw		x4, -20(x2)	# 284
	mul		x4, x30, x4	# 284
	addi	x4, x4, 64348	# 284
	flw		f1, -96(x2)	# 284
	fsw		f1, 0(x4)	# 284
	mul		x4, x30, x5	# 1622
	addi	x4, x4, 64360	# 1622
	sw		x15, 0(x4)	# 1622
	mul		x4, x30, x5	# 1623
	addi	x4, x4, 64340	# 1623
	lw		x5, -92(x2)	# 1623
	sw		x5, 0(x4)	# 1623
	jal		x0, fle_cont.32163	# 1618
	jal		x0, fle_cont.32163	# 125
	jal		x0, fle_cont.32163	# 125
fle_cont.32163:
	lw		x4, -88(x2)	# 1629
	add		x4, x4, x13	# 1629
	lw		x5, -32(x2)	# 1629
	lw		x6, -36(x2)	# 1629
	lw		x29, -4(x2)	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x0, x31, 0	# 1629
beq.32162:
	mul		x7, x30, x15	# 1633
	addi	x7, x7, 63844	# 1633
	lw		x7, 0(x7)	# 1633
	lw		x7, 24(x7)	# 415
	beq		x7, x12, beq.32169	# 1633
	add		x4, x4, x13	# 1634
	lw		x31, 0(x29)	# 1634
	jalr	x0, x31, 0	# 1634
beq.32169:
	jalr	x0, x1, 0	# 1635
beq.32113:
	jalr	x0, x1, 0	# 1602
beq.32112:
	jalr	x0, x1, 0	# 1635
beq.31997:
	jalr	x0, x1, 0	# 1602
solve_one_or_network_fast.2852.18004:
	lw		x7, 36(x29)	# 1641
	lw		x8, 32(x29)	# 1641
	lw		x9, 28(x29)	# 1641
	lw		x10, 24(x29)	# 1641
	lw		x11, 20(x29)	# 1641
	lw		x12, 16(x29)	# 1641
	lw		x13, 12(x29)	# 1641
	lw		x14, 8(x29)	# 1641
	flw		f1, 4(x29)	# 1641
	mul		x15, x30, x4	# 1641
	add		x15, x5, x15	# 1641
	lw		x15, 0(x15)	# 1641
	beq		x15, x11, beq.32174	# 1642
	mul		x15, x30, x15	# 1643
	addi	x15, x15, 64128	# 1643
	lw		x15, 0(x15)	# 1643
	lw		x16, 0(x6)	# 681
	mul		x17, x30, x13	# 1601
	add		x17, x15, x17	# 1601
	lw		x17, 0(x17)	# 1601
	sw		x29, 0(x2)	# 1602
	sw		x6, -4(x2)	# 1602
	sw		x13, -8(x2)	# 1602
	sw		x7, -12(x2)	# 1602
	sw		x11, -16(x2)	# 1602
	sw		x5, -20(x2)	# 1602
	sw		x14, -24(x2)	# 1602
	sw		x4, -28(x2)	# 1602
	beq		x17, x11, beq_cont.32175	# 1602
	mul		x18, x30, x17	# 1215
	addi	x18, x18, 63844	# 1215
	lw		x18, 0(x18)	# 1215
	lw		x19, 40(x18)	# 590
	mul		x20, x30, x13	# 1217
	add		x20, x19, x20	# 1217
	flw		f2, 0(x20)	# 1217
	mul		x20, x30, x14	# 1218
	add		x20, x19, x20	# 1218
	flw		f3, 0(x20)	# 1218
	mul		x20, x30, x10	# 1219
	add		x20, x19, x20	# 1219
	flw		f4, 0(x20)	# 1219
	lw		x20, 4(x6)	# 687
	mul		x21, x30, x17	# 1221
	add		x20, x20, x21	# 1221
	lw		x20, 0(x20)	# 1221
	lw		x21, 4(x18)	# 395
	beq		x21, x14, beq.32178	# 1223
	beq		x21, x10, beq.32180	# 1225
	mul		x9, x30, x13	# 1197
	add		x9, x20, x9	# 1197
	flw		f5, 0(x9)	# 1197
	feq		f5, f1, feq.32182	# 120
	mul		x9, x30, x14	# 1201
	add		x9, x20, x9	# 1201
	flw		f6, 0(x9)	# 1201
	fmul	f2, f6, f2	# 1201
	mul		x9, x30, x10	# 1201
	add		x9, x20, x9	# 1201
	flw		f6, 0(x9)	# 1201
	fmul	f3, f6, f3	# 1201
	fadd	f2, f2, f3	# 1201
	mul		x9, x30, x12	# 1201
	add		x9, x20, x9	# 1201
	flw		f3, 0(x9)	# 1201
	fmul	f3, f3, f4	# 1201
	fadd	f2, f2, f3	# 1201
	mul		x9, x30, x12	# 1202
	add		x9, x19, x9	# 1202
	flw		f3, 0(x9)	# 1202
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1203
	fsub	f3, f4, f3	# 1203
	fle		f3, f1, fle.32184	# 121
	lw		x9, 24(x18)	# 415
	beq		x9, x13, beq.32186	# 1205
	fsqrt	f3, f3	# 1206
	fadd	f2, f2, f3	# 1206
	addi	x9, x0, 4	# 1206
	mul		x9, x30, x9	# 1206
	add		x9, x20, x9	# 1206
	flw		f3, 0(x9)	# 1206
	fmul	f2, f2, f3	# 1206
	mul		x9, x30, x13	# 1206
	addi	x9, x9, 64336	# 1206
	fsw		f2, 0(x9)	# 1206
	jal		x0, beq_cont.32185	# 1205
beq.32186:
	fsqrt	f3, f3	# 1208
	fsub	f2, f2, f3	# 1208
	addi	x9, x0, 4	# 1208
	mul		x9, x30, x9	# 1208
	add		x9, x20, x9	# 1208
	flw		f3, 0(x9)	# 1208
	fmul	f2, f2, f3	# 1208
	mul		x9, x30, x13	# 1208
	addi	x9, x9, 64336	# 1208
	fsw		f2, 0(x9)	# 1208
beq_cont.32185:
	addi	x9, x0, 1	# 1209
	jal		x0, beq_cont.32177	# 121
fle.32184:
	addi	x9, x0, 0	# 1210
	jal		x0, beq_cont.32177	# 120
feq.32182:
	addi	x9, x0, 0	# 1199
	jal		x0, beq_cont.32177	# 1225
beq.32180:
	mul		x9, x30, x13	# 1188
	add		x9, x20, x9	# 1188
	flw		f2, 0(x9)	# 1188
	fle		f1, f2, fle.32188	# 122
	mul		x9, x30, x12	# 1189
	add		x9, x19, x9	# 1189
	flw		f3, 0(x9)	# 1189
	fmul	f2, f2, f3	# 1189
	mul		x9, x30, x13	# 1189
	addi	x9, x9, 64336	# 1189
	fsw		f2, 0(x9)	# 1189
	addi	x9, x0, 1	# 1190
	jal		x0, beq_cont.32177	# 122
fle.32188:
	addi	x9, x0, 0	# 1191
	jal		x0, beq_cont.32177	# 1223
beq.32178:
	lw		x19, 0(x6)	# 681
	mul		x21, x30, x13	# 1106
	add		x21, x20, x21	# 1106
	flw		f5, 0(x21)	# 1106
	fsub	f5, f5, f2	# 1106
	mul		x21, x30, x14	# 1106
	add		x21, x20, x21	# 1106
	flw		f6, 0(x21)	# 1106
	fmul	f5, f5, f6	# 1106
	mul		x21, x30, x14	# 1108
	add		x21, x19, x21	# 1108
	flw		f7, 0(x21)	# 1108
	fmul	f8, f5, f7	# 1108
	fadd	f8, f8, f3	# 1108
	fle		f8, f1, fle.32190	# 124
	jal		x0, fle_cont.32189	# 124
fle.32190:
	fsub	f8, f0, f8	# 124
fle_cont.32189:
	lw		x21, 16(x18)	# 443
	mul		x22, x30, x14	# 448
	add		x21, x21, x22	# 448
	flw		f9, 0(x21)	# 448
	fle		f9, f8, fle.32192	# 125
	mul		x21, x30, x10	# 1109
	add		x21, x19, x21	# 1109
	flw		f8, 0(x21)	# 1109
	fmul	f8, f5, f8	# 1109
	fadd	f8, f8, f4	# 1109
	fle		f8, f1, fle.32194	# 124
	jal		x0, fle_cont.32193	# 124
fle.32194:
	fsub	f8, f0, f8	# 124
fle_cont.32193:
	lw		x21, 16(x18)	# 453
	mul		x22, x30, x10	# 458
	add		x21, x21, x22	# 458
	flw		f10, 0(x21)	# 458
	fle		f10, f8, fle.32196	# 125
	feq		f6, f1, feq.32198	# 120
	addi	x21, x0, 1	# 1110
	jal		x0, fle_cont.32191	# 120
feq.32198:
	addi	x21, x0, 0	# 1110
	jal		x0, fle_cont.32191	# 125
fle.32196:
	addi	x21, x0, 0	# 1111
	jal		x0, fle_cont.32191	# 125
fle.32192:
	addi	x21, x0, 0	# 1112
fle_cont.32191:
	beq		x21, x13, beq.32200	# 1107
	mul		x9, x30, x13	# 1114
	addi	x9, x9, 64336	# 1114
	fsw		f5, 0(x9)	# 1114
	addi	x9, x0, 1	# 1114
	jal		x0, beq_cont.32177	# 1107
beq.32200:
	mul		x21, x30, x10	# 1115
	add		x21, x20, x21	# 1115
	flw		f5, 0(x21)	# 1115
	fsub	f5, f5, f3	# 1115
	mul		x12, x30, x12	# 1115
	add		x12, x20, x12	# 1115
	flw		f6, 0(x12)	# 1115
	fmul	f5, f5, f6	# 1115
	mul		x12, x30, x13	# 1117
	add		x12, x19, x12	# 1117
	flw		f8, 0(x12)	# 1117
	fmul	f10, f5, f8	# 1117
	fadd	f10, f10, f2	# 1117
	fle		f10, f1, fle.32202	# 124
	jal		x0, fle_cont.32201	# 124
fle.32202:
	fsub	f10, f0, f10	# 124
fle_cont.32201:
	lw		x12, 16(x18)	# 433
	mul		x21, x30, x13	# 438
	add		x12, x12, x21	# 438
	flw		f11, 0(x12)	# 438
	fle		f11, f10, fle.32204	# 125
	mul		x12, x30, x10	# 1118
	add		x12, x19, x12	# 1118
	flw		f10, 0(x12)	# 1118
	fmul	f10, f5, f10	# 1118
	fadd	f10, f10, f4	# 1118
	fle		f10, f1, fle.32206	# 124
	jal		x0, fle_cont.32205	# 124
fle.32206:
	fsub	f10, f0, f10	# 124
fle_cont.32205:
	lw		x12, 16(x18)	# 453
	mul		x18, x30, x10	# 458
	add		x12, x12, x18	# 458
	flw		f12, 0(x12)	# 458
	fle		f12, f10, fle.32208	# 125
	feq		f6, f1, feq.32210	# 120
	addi	x12, x0, 1	# 1119
	jal		x0, fle_cont.32203	# 120
feq.32210:
	addi	x12, x0, 0	# 1119
	jal		x0, fle_cont.32203	# 125
fle.32208:
	addi	x12, x0, 0	# 1120
	jal		x0, fle_cont.32203	# 125
fle.32204:
	addi	x12, x0, 0	# 1121
fle_cont.32203:
	beq		x12, x13, beq.32212	# 1116
	mul		x9, x30, x13	# 1123
	addi	x9, x9, 64336	# 1123
	fsw		f5, 0(x9)	# 1123
	addi	x9, x0, 2	# 1123
	jal		x0, beq_cont.32177	# 1116
beq.32212:
	addi	x12, x0, 4	# 1124
	mul		x12, x30, x12	# 1124
	add		x12, x20, x12	# 1124
	flw		f5, 0(x12)	# 1124
	fsub	f4, f5, f4	# 1124
	mul		x9, x30, x9	# 1124
	add		x9, x20, x9	# 1124
	flw		f5, 0(x9)	# 1124
	fmul	f4, f4, f5	# 1124
	fmul	f6, f4, f8	# 1126
	fadd	f2, f6, f2	# 1126
	fle		f2, f1, fle.32214	# 124
	jal		x0, fle_cont.32213	# 124
fle.32214:
	fsub	f2, f0, f2	# 124
fle_cont.32213:
	fle		f11, f2, fle.32216	# 125
	fmul	f2, f4, f7	# 1127
	fadd	f2, f2, f3	# 1127
	fle		f2, f1, fle.32218	# 124
	jal		x0, fle_cont.32217	# 124
fle.32218:
	fsub	f2, f0, f2	# 124
fle_cont.32217:
	fle		f9, f2, fle.32220	# 125
	feq		f5, f1, feq.32222	# 120
	addi	x9, x0, 1	# 1128
	jal		x0, fle_cont.32215	# 120
feq.32222:
	addi	x9, x0, 0	# 1128
	jal		x0, fle_cont.32215	# 125
fle.32220:
	addi	x9, x0, 0	# 1129
	jal		x0, fle_cont.32215	# 125
fle.32216:
	addi	x9, x0, 0	# 1130
fle_cont.32215:
	beq		x9, x13, beq.32224	# 1125
	mul		x9, x30, x13	# 1132
	addi	x9, x9, 64336	# 1132
	fsw		f4, 0(x9)	# 1132
	addi	x9, x0, 3	# 1132
	jal		x0, beq_cont.32177	# 1125
beq.32224:
	addi	x9, x0, 0	# 1134
beq_cont.32177:
	beq		x9, x13, beq.32226	# 1605
	mul		x12, x30, x13	# 1609
	addi	x12, x12, 64336	# 1609
	flw		f2, 0(x12)	# 1609
	sw		x15, -32(x2)	# 125
	fle		f2, f1, fle_cont.32227	# 125
	mul		x12, x30, x13	# 1612
	addi	x12, x12, 64344	# 1612
	flw		f1, 0(x12)	# 1612
	fle		f1, f2, fle_cont.32227	# 125
	fadd	f1, f2, f18	# 1614
	mul		x12, x30, x13	# 1615
	add		x12, x16, x12	# 1615
	flw		f2, 0(x12)	# 1615
	fmul	f2, f2, f1	# 1615
	mul		x12, x30, x13	# 1615
	addi	x12, x12, 64444	# 1615
	flw		f3, 0(x12)	# 1615
	fadd	f2, f2, f3	# 1615
	mul		x12, x30, x14	# 1616
	add		x12, x16, x12	# 1616
	flw		f3, 0(x12)	# 1616
	fmul	f3, f3, f1	# 1616
	mul		x12, x30, x14	# 1616
	addi	x12, x12, 64444	# 1616
	flw		f4, 0(x12)	# 1616
	fadd	f3, f3, f4	# 1616
	mul		x12, x30, x10	# 1617
	add		x12, x16, x12	# 1617
	flw		f4, 0(x12)	# 1617
	fmul	f4, f4, f1	# 1617
	mul		x12, x30, x10	# 1617
	addi	x12, x12, 64444	# 1617
	flw		f5, 0(x12)	# 1617
	fadd	f4, f4, f5	# 1617
	sw		x9, -36(x2)	# 1618
	fsw		f4, -40(x2)	# 1618
	sw		x10, -44(x2)	# 1618
	fsw		f3, -48(x2)	# 1618
	fsw		f2, -52(x2)	# 1618
	fsw		f1, -56(x2)	# 1618
	addi	x5, x15, 0	# 1618
	addi	x4, x13, 0	# 1618
	addi	x29, x8, 0	# 1618
	fadd	f1, f0, f2	# 1618
	fadd	f2, f0, f3	# 1618
	fadd	f3, f0, f4	# 1618
	sw		x1, -60(x2)	# 1618
	addi	x2, x2, -64	# 1618
	lw		x31, 0(x29)	# 1618
	jalr	x1, x31, 0	# 1618
	addi	x2, x2, 64	# 1618
	lw		x1, -60(x2)	# 1618
	lw		x5, -8(x2)	# 1618
	beq		x4, x5, fle_cont.32227	# 1618
	mul		x4, x30, x5	# 1620
	addi	x4, x4, 64344	# 1620
	flw		f1, -56(x2)	# 1620
	fsw		f1, 0(x4)	# 1620
	mul		x4, x30, x5	# 282
	addi	x4, x4, 64348	# 282
	flw		f1, -52(x2)	# 282
	fsw		f1, 0(x4)	# 282
	mul		x4, x30, x14	# 283
	addi	x4, x4, 64348	# 283
	flw		f1, -48(x2)	# 283
	fsw		f1, 0(x4)	# 283
	lw		x4, -44(x2)	# 284
	mul		x4, x30, x4	# 284
	addi	x4, x4, 64348	# 284
	flw		f1, -40(x2)	# 284
	fsw		f1, 0(x4)	# 284
	mul		x4, x30, x5	# 1622
	addi	x4, x4, 64360	# 1622
	sw		x17, 0(x4)	# 1622
	mul		x4, x30, x5	# 1623
	addi	x4, x4, 64340	# 1623
	lw		x6, -36(x2)	# 1623
	sw		x6, 0(x4)	# 1623
	jal		x0, fle_cont.32227	# 1618
	jal		x0, fle_cont.32227	# 125
	jal		x0, fle_cont.32227	# 125
fle_cont.32227:
	lw		x5, -32(x2)	# 1629
	lw		x6, -4(x2)	# 1629
	lw		x29, -12(x2)	# 1629
	addi	x4, x14, 0	# 1629
	sw		x1, -60(x2)	# 1629
	addi	x2, x2, -64	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x1, x31, 0	# 1629
	addi	x2, x2, 64	# 1629
	lw		x1, -60(x2)	# 1629
	jal		x0, beq_cont.32175	# 1605
beq.32226:
	mul		x8, x30, x17	# 1633
	addi	x8, x8, 63844	# 1633
	lw		x8, 0(x8)	# 1633
	lw		x8, 24(x8)	# 415
	beq		x8, x13, beq_cont.32175	# 1633
	addi	x5, x15, 0	# 1634
	addi	x4, x14, 0	# 1634
	addi	x29, x7, 0	# 1634
	sw		x1, -60(x2)	# 1634
	addi	x2, x2, -64	# 1634
	lw		x31, 0(x29)	# 1634
	jalr	x1, x31, 0	# 1634
	addi	x2, x2, 64	# 1634
	lw		x1, -60(x2)	# 1634
	jal		x0, beq_cont.32175	# 1633
	jal		x0, beq_cont.32175	# 1602
beq_cont.32175:
	lw		x4, -28(x2)	# 1645
	lw		x5, -24(x2)	# 1645
	add		x4, x4, x5	# 1645
	mul		x6, x30, x4	# 1641
	lw		x7, -20(x2)	# 1641
	add		x6, x7, x6	# 1641
	lw		x6, 0(x6)	# 1641
	lw		x8, -16(x2)	# 1642
	beq		x6, x8, beq.32235	# 1642
	mul		x6, x30, x6	# 1643
	addi	x6, x6, 64128	# 1643
	lw		x6, 0(x6)	# 1643
	lw		x8, -8(x2)	# 1644
	lw		x9, -4(x2)	# 1644
	lw		x29, -12(x2)	# 1644
	sw		x4, -60(x2)	# 1644
	addi	x5, x6, 0	# 1644
	addi	x4, x8, 0	# 1644
	addi	x6, x9, 0	# 1644
	sw		x1, -64(x2)	# 1644
	addi	x2, x2, -68	# 1644
	lw		x31, 0(x29)	# 1644
	jalr	x1, x31, 0	# 1644
	addi	x2, x2, 68	# 1644
	lw		x1, -64(x2)	# 1644
	lw		x4, -60(x2)	# 1645
	lw		x5, -24(x2)	# 1645
	add		x4, x4, x5	# 1645
	lw		x5, -20(x2)	# 1645
	lw		x6, -4(x2)	# 1645
	lw		x29, 0(x2)	# 1645
	lw		x31, 0(x29)	# 1645
	jalr	x0, x31, 0	# 1645
beq.32235:
	jalr	x0, x1, 0	# 1646
beq.32174:
	jalr	x0, x1, 0	# 1646
trace_or_matrix_fast.2856.18008:
	lw		x7, 36(x29)	# 1651
	lw		x8, 32(x29)	# 1651
	lw		x9, 28(x29)	# 1651
	lw		x10, 24(x29)	# 1651
	lw		x11, 20(x29)	# 1651
	lw		x12, 16(x29)	# 1651
	lw		x13, 12(x29)	# 1651
	lw		x14, 8(x29)	# 1651
	flw		f1, 4(x29)	# 1651
	mul		x15, x30, x4	# 1651
	add		x15, x5, x15	# 1651
	lw		x15, 0(x15)	# 1651
	mul		x16, x30, x13	# 1652
	add		x16, x15, x16	# 1652
	lw		x16, 0(x16)	# 1652
	beq		x16, x11, beq.32238	# 1653
	addi	x17, x0, 99	# 1656
	sw		x6, 0(x2)	# 1656
	sw		x5, -4(x2)	# 1656
	sw		x29, -8(x2)	# 1656
	sw		x14, -12(x2)	# 1656
	sw		x4, -16(x2)	# 1656
	beq		x16, x17, beq.32240	# 1656
	mul		x17, x30, x16	# 1215
	addi	x17, x17, 63844	# 1215
	lw		x17, 0(x17)	# 1215
	lw		x18, 40(x17)	# 590
	mul		x19, x30, x13	# 1217
	add		x19, x18, x19	# 1217
	flw		f2, 0(x19)	# 1217
	mul		x19, x30, x14	# 1218
	add		x19, x18, x19	# 1218
	flw		f3, 0(x19)	# 1218
	mul		x19, x30, x10	# 1219
	add		x19, x18, x19	# 1219
	flw		f4, 0(x19)	# 1219
	lw		x19, 4(x6)	# 687
	mul		x16, x30, x16	# 1221
	add		x16, x19, x16	# 1221
	lw		x16, 0(x16)	# 1221
	lw		x19, 4(x17)	# 395
	beq		x19, x14, beq.32242	# 1223
	beq		x19, x10, beq.32244	# 1225
	mul		x9, x30, x13	# 1197
	add		x9, x16, x9	# 1197
	flw		f5, 0(x9)	# 1197
	feq		f5, f1, feq.32246	# 120
	mul		x9, x30, x14	# 1201
	add		x9, x16, x9	# 1201
	flw		f6, 0(x9)	# 1201
	fmul	f2, f6, f2	# 1201
	mul		x9, x30, x10	# 1201
	add		x9, x16, x9	# 1201
	flw		f6, 0(x9)	# 1201
	fmul	f3, f6, f3	# 1201
	fadd	f2, f2, f3	# 1201
	mul		x9, x30, x12	# 1201
	add		x9, x16, x9	# 1201
	flw		f3, 0(x9)	# 1201
	fmul	f3, f3, f4	# 1201
	fadd	f2, f2, f3	# 1201
	mul		x9, x30, x12	# 1202
	add		x9, x18, x9	# 1202
	flw		f3, 0(x9)	# 1202
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1203
	fsub	f3, f4, f3	# 1203
	fle		f3, f1, fle.32248	# 121
	lw		x9, 24(x17)	# 415
	beq		x9, x13, beq.32250	# 1205
	fsqrt	f1, f3	# 1206
	fadd	f1, f2, f1	# 1206
	addi	x9, x0, 4	# 1206
	mul		x9, x30, x9	# 1206
	add		x9, x16, x9	# 1206
	flw		f2, 0(x9)	# 1206
	fmul	f1, f1, f2	# 1206
	mul		x9, x30, x13	# 1206
	addi	x9, x9, 64336	# 1206
	fsw		f1, 0(x9)	# 1206
	jal		x0, beq_cont.32249	# 1205
beq.32250:
	fsqrt	f1, f3	# 1208
	fsub	f1, f2, f1	# 1208
	addi	x9, x0, 4	# 1208
	mul		x9, x30, x9	# 1208
	add		x9, x16, x9	# 1208
	flw		f2, 0(x9)	# 1208
	fmul	f1, f1, f2	# 1208
	mul		x9, x30, x13	# 1208
	addi	x9, x9, 64336	# 1208
	fsw		f1, 0(x9)	# 1208
beq_cont.32249:
	addi	x9, x0, 1	# 1209
	jal		x0, beq_cont.32241	# 121
fle.32248:
	addi	x9, x0, 0	# 1210
	jal		x0, beq_cont.32241	# 120
feq.32246:
	addi	x9, x0, 0	# 1199
	jal		x0, beq_cont.32241	# 1225
beq.32244:
	mul		x9, x30, x13	# 1188
	add		x9, x16, x9	# 1188
	flw		f2, 0(x9)	# 1188
	fle		f1, f2, fle.32252	# 122
	mul		x9, x30, x12	# 1189
	add		x9, x18, x9	# 1189
	flw		f1, 0(x9)	# 1189
	fmul	f1, f2, f1	# 1189
	mul		x9, x30, x13	# 1189
	addi	x9, x9, 64336	# 1189
	fsw		f1, 0(x9)	# 1189
	addi	x9, x0, 1	# 1190
	jal		x0, beq_cont.32241	# 122
fle.32252:
	addi	x9, x0, 0	# 1191
	jal		x0, beq_cont.32241	# 1223
beq.32242:
	lw		x18, 0(x6)	# 681
	mul		x19, x30, x13	# 1106
	add		x19, x16, x19	# 1106
	flw		f5, 0(x19)	# 1106
	fsub	f5, f5, f2	# 1106
	mul		x19, x30, x14	# 1106
	add		x19, x16, x19	# 1106
	flw		f6, 0(x19)	# 1106
	fmul	f5, f5, f6	# 1106
	mul		x19, x30, x14	# 1108
	add		x19, x18, x19	# 1108
	flw		f7, 0(x19)	# 1108
	fmul	f8, f5, f7	# 1108
	fadd	f8, f8, f3	# 1108
	fle		f8, f1, fle.32254	# 124
	jal		x0, fle_cont.32253	# 124
fle.32254:
	fsub	f8, f0, f8	# 124
fle_cont.32253:
	lw		x19, 16(x17)	# 443
	mul		x20, x30, x14	# 448
	add		x19, x19, x20	# 448
	flw		f9, 0(x19)	# 448
	fle		f9, f8, fle.32256	# 125
	mul		x19, x30, x10	# 1109
	add		x19, x18, x19	# 1109
	flw		f8, 0(x19)	# 1109
	fmul	f8, f5, f8	# 1109
	fadd	f8, f8, f4	# 1109
	fle		f8, f1, fle.32258	# 124
	jal		x0, fle_cont.32257	# 124
fle.32258:
	fsub	f8, f0, f8	# 124
fle_cont.32257:
	lw		x19, 16(x17)	# 453
	mul		x20, x30, x10	# 458
	add		x19, x19, x20	# 458
	flw		f9, 0(x19)	# 458
	fle		f9, f8, fle.32260	# 125
	feq		f6, f1, feq.32262	# 120
	addi	x19, x0, 1	# 1110
	jal		x0, fle_cont.32255	# 120
feq.32262:
	addi	x19, x0, 0	# 1110
	jal		x0, fle_cont.32255	# 125
fle.32260:
	addi	x19, x0, 0	# 1111
	jal		x0, fle_cont.32255	# 125
fle.32256:
	addi	x19, x0, 0	# 1112
fle_cont.32255:
	beq		x19, x13, beq.32264	# 1107
	mul		x9, x30, x13	# 1114
	addi	x9, x9, 64336	# 1114
	fsw		f5, 0(x9)	# 1114
	addi	x9, x0, 1	# 1114
	jal		x0, beq_cont.32241	# 1107
beq.32264:
	mul		x19, x30, x10	# 1115
	add		x19, x16, x19	# 1115
	flw		f5, 0(x19)	# 1115
	fsub	f5, f5, f3	# 1115
	mul		x12, x30, x12	# 1115
	add		x12, x16, x12	# 1115
	flw		f6, 0(x12)	# 1115
	fmul	f5, f5, f6	# 1115
	mul		x12, x30, x13	# 1117
	add		x12, x18, x12	# 1117
	flw		f8, 0(x12)	# 1117
	fmul	f9, f5, f8	# 1117
	fadd	f9, f9, f2	# 1117
	fle		f9, f1, fle.32266	# 124
	jal		x0, fle_cont.32265	# 124
fle.32266:
	fsub	f9, f0, f9	# 124
fle_cont.32265:
	lw		x12, 16(x17)	# 433
	mul		x19, x30, x13	# 438
	add		x12, x12, x19	# 438
	flw		f10, 0(x12)	# 438
	fle		f10, f9, fle.32268	# 125
	mul		x12, x30, x10	# 1118
	add		x12, x18, x12	# 1118
	flw		f9, 0(x12)	# 1118
	fmul	f9, f5, f9	# 1118
	fadd	f9, f9, f4	# 1118
	fle		f9, f1, fle.32270	# 124
	jal		x0, fle_cont.32269	# 124
fle.32270:
	fsub	f9, f0, f9	# 124
fle_cont.32269:
	lw		x12, 16(x17)	# 453
	mul		x18, x30, x10	# 458
	add		x12, x12, x18	# 458
	flw		f10, 0(x12)	# 458
	fle		f10, f9, fle.32272	# 125
	feq		f6, f1, feq.32274	# 120
	addi	x12, x0, 1	# 1119
	jal		x0, fle_cont.32267	# 120
feq.32274:
	addi	x12, x0, 0	# 1119
	jal		x0, fle_cont.32267	# 125
fle.32272:
	addi	x12, x0, 0	# 1120
	jal		x0, fle_cont.32267	# 125
fle.32268:
	addi	x12, x0, 0	# 1121
fle_cont.32267:
	beq		x12, x13, beq.32276	# 1116
	mul		x9, x30, x13	# 1123
	addi	x9, x9, 64336	# 1123
	fsw		f5, 0(x9)	# 1123
	addi	x9, x0, 2	# 1123
	jal		x0, beq_cont.32241	# 1116
beq.32276:
	addi	x12, x0, 4	# 1124
	mul		x12, x30, x12	# 1124
	add		x12, x16, x12	# 1124
	flw		f5, 0(x12)	# 1124
	fsub	f4, f5, f4	# 1124
	mul		x9, x30, x9	# 1124
	add		x9, x16, x9	# 1124
	flw		f5, 0(x9)	# 1124
	fmul	f4, f4, f5	# 1124
	fmul	f6, f4, f8	# 1126
	fadd	f2, f6, f2	# 1126
	fle		f2, f1, fle.32278	# 124
	jal		x0, fle_cont.32277	# 124
fle.32278:
	fsub	f2, f0, f2	# 124
fle_cont.32277:
	lw		x9, 16(x17)	# 433
	mul		x12, x30, x13	# 438
	add		x9, x9, x12	# 438
	flw		f6, 0(x9)	# 438
	fle		f6, f2, fle.32280	# 125
	fmul	f2, f4, f7	# 1127
	fadd	f2, f2, f3	# 1127
	fle		f2, f1, fle.32282	# 124
	jal		x0, fle_cont.32281	# 124
fle.32282:
	fsub	f2, f0, f2	# 124
fle_cont.32281:
	lw		x9, 16(x17)	# 443
	mul		x12, x30, x14	# 448
	add		x9, x9, x12	# 448
	flw		f3, 0(x9)	# 448
	fle		f3, f2, fle.32284	# 125
	feq		f5, f1, feq.32286	# 120
	addi	x9, x0, 1	# 1128
	jal		x0, fle_cont.32279	# 120
feq.32286:
	addi	x9, x0, 0	# 1128
	jal		x0, fle_cont.32279	# 125
fle.32284:
	addi	x9, x0, 0	# 1129
	jal		x0, fle_cont.32279	# 125
fle.32280:
	addi	x9, x0, 0	# 1130
fle_cont.32279:
	beq		x9, x13, beq.32288	# 1125
	mul		x9, x30, x13	# 1132
	addi	x9, x9, 64336	# 1132
	fsw		f4, 0(x9)	# 1132
	addi	x9, x0, 3	# 1132
	jal		x0, beq_cont.32241	# 1125
beq.32288:
	addi	x9, x0, 0	# 1134
beq_cont.32241:
	beq		x9, x13, beq_cont.32239	# 1662
	mul		x9, x30, x13	# 1663
	addi	x9, x9, 64336	# 1663
	flw		f1, 0(x9)	# 1663
	mul		x9, x30, x13	# 1664
	addi	x9, x9, 64344	# 1664
	flw		f2, 0(x9)	# 1664
	fle		f2, f1, beq_cont.32239	# 125
	mul		x9, x30, x14	# 1641
	add		x9, x15, x9	# 1641
	lw		x9, 0(x9)	# 1641
	beq		x9, x11, beq_cont.32239	# 1642
	mul		x9, x30, x9	# 1643
	addi	x9, x9, 64128	# 1643
	lw		x9, 0(x9)	# 1643
	sw		x15, -20(x2)	# 1644
	sw		x10, -24(x2)	# 1644
	sw		x7, -28(x2)	# 1644
	addi	x5, x9, 0	# 1644
	addi	x4, x13, 0	# 1644
	addi	x29, x8, 0	# 1644
	sw		x1, -32(x2)	# 1644
	addi	x2, x2, -36	# 1644
	lw		x31, 0(x29)	# 1644
	jalr	x1, x31, 0	# 1644
	addi	x2, x2, 36	# 1644
	lw		x1, -32(x2)	# 1644
	lw		x4, -24(x2)	# 1645
	lw		x5, -20(x2)	# 1645
	lw		x6, 0(x2)	# 1645
	lw		x29, -28(x2)	# 1645
	sw		x1, -32(x2)	# 1645
	addi	x2, x2, -36	# 1645
	lw		x31, 0(x29)	# 1645
	jalr	x1, x31, 0	# 1645
	addi	x2, x2, 36	# 1645
	lw		x1, -32(x2)	# 1645
	jal		x0, beq_cont.32239	# 1642
	jal		x0, beq_cont.32239	# 125
	jal		x0, beq_cont.32239	# 1662
	jal		x0, beq_cont.32239	# 1656
beq.32240:
	mul		x9, x30, x14	# 1641
	add		x9, x15, x9	# 1641
	lw		x9, 0(x9)	# 1641
	beq		x9, x11, beq_cont.32239	# 1642
	mul		x9, x30, x9	# 1643
	addi	x9, x9, 64128	# 1643
	lw		x9, 0(x9)	# 1643
	sw		x15, -20(x2)	# 1644
	sw		x10, -24(x2)	# 1644
	sw		x7, -28(x2)	# 1644
	addi	x5, x9, 0	# 1644
	addi	x4, x13, 0	# 1644
	addi	x29, x8, 0	# 1644
	sw		x1, -32(x2)	# 1644
	addi	x2, x2, -36	# 1644
	lw		x31, 0(x29)	# 1644
	jalr	x1, x31, 0	# 1644
	addi	x2, x2, 36	# 1644
	lw		x1, -32(x2)	# 1644
	lw		x4, -24(x2)	# 1645
	lw		x5, -20(x2)	# 1645
	lw		x6, 0(x2)	# 1645
	lw		x29, -28(x2)	# 1645
	sw		x1, -32(x2)	# 1645
	addi	x2, x2, -36	# 1645
	lw		x31, 0(x29)	# 1645
	jalr	x1, x31, 0	# 1645
	addi	x2, x2, 36	# 1645
	lw		x1, -32(x2)	# 1645
	jal		x0, beq_cont.32239	# 1642
beq_cont.32239:
	lw		x4, -16(x2)	# 1669
	lw		x5, -12(x2)	# 1669
	add		x4, x4, x5	# 1669
	lw		x5, -4(x2)	# 1669
	lw		x6, 0(x2)	# 1669
	lw		x29, -8(x2)	# 1669
	lw		x31, 0(x29)	# 1669
	jalr	x0, x31, 0	# 1669
beq.32238:
	jalr	x0, x1, 0	# 1654
trace_reflections.2878.18012:
	lw		x6, 28(x29)	# 1846
	lw		x7, 24(x29)	# 1846
	lw		x8, 20(x29)	# 1846
	lw		x9, 16(x29)	# 1846
	lw		x10, 12(x29)	# 1846
	flw		f3, 8(x29)	# 1846
	flw		f4, 4(x29)	# 1846
	ble		x9, x4, ble.32298	# 1846
	jalr	x0, x1, 0	# 1866
ble.32298:
	mul		x11, x30, x4	# 1847
	addi	x11, x11, 64812	# 1847
	lw		x11, 0(x11)	# 1847
	lw		x12, 4(x11)	# 703
	mul		x13, x30, x9	# 1676
	addi	x13, x13, 64344	# 1676
	fsw		f3, 0(x13)	# 1676
	mul		x13, x30, x9	# 1677
	addi	x13, x13, 64332	# 1677
	lw		x13, 0(x13)	# 1677
	sw		x29, 0(x2)	# 1677
	sw		x4, -4(x2)	# 1677
	fsw		f2, -8(x2)	# 1677
	fsw		f4, -12(x2)	# 1677
	sw		x5, -16(x2)	# 1677
	fsw		f1, -20(x2)	# 1677
	sw		x8, -24(x2)	# 1677
	sw		x10, -28(x2)	# 1677
	sw		x12, -32(x2)	# 1677
	sw		x7, -36(x2)	# 1677
	sw		x11, -40(x2)	# 1677
	sw		x9, -44(x2)	# 1677
	addi	x5, x13, 0	# 1677
	addi	x4, x9, 0	# 1677
	addi	x29, x6, 0	# 1677
	addi	x6, x12, 0	# 1677
	sw		x1, -48(x2)	# 1677
	addi	x2, x2, -52	# 1677
	lw		x31, 0(x29)	# 1677
	jalr	x1, x31, 0	# 1677
	addi	x2, x2, 52	# 1677
	lw		x1, -48(x2)	# 1677
	lw		x4, -44(x2)	# 1678
	mul		x5, x30, x4	# 1678
	addi	x5, x5, 64344	# 1678
	flw		f1, 0(x5)	# 1678
	fle		f1, f20, fle.32301	# 125
	fle		f21, f1, fle.32303	# 125
	addi	x5, x0, 1	# 125
	jal		x0, fle_cont.32300	# 125
fle.32303:
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32300	# 125
fle.32301:
	addi	x5, x0, 0	# 1682
fle_cont.32300:
	beq		x5, x4, beq_cont.32304	# 1851
	mul		x5, x30, x4	# 1852
	addi	x5, x5, 64360	# 1852
	lw		x5, 0(x5)	# 1852
	addi	x6, x0, 4	# 1852
	mul		x5, x5, x6	# 1852
	mul		x6, x30, x4	# 1852
	addi	x6, x6, 64340	# 1852
	lw		x6, 0(x6)	# 1852
	add		x5, x5, x6	# 1852
	lw		x6, -40(x2)	# 697
	lw		x7, 0(x6)	# 697
	beq		x5, x7, beq.32307	# 1853
	jal		x0, beq_cont.32304	# 1853
beq.32307:
	mul		x5, x30, x4	# 1855
	addi	x5, x5, 64332	# 1855
	lw		x5, 0(x5)	# 1855
	lw		x29, -36(x2)	# 1855
	sw		x1, -48(x2)	# 1855
	addi	x2, x2, -52	# 1855
	lw		x31, 0(x29)	# 1855
	jalr	x1, x31, 0	# 1855
	addi	x2, x2, 52	# 1855
	lw		x1, -48(x2)	# 1855
	lw		x5, -44(x2)	# 1855
	beq		x4, x5, beq.32309	# 1855
	jal		x0, beq_cont.32304	# 1855
beq.32309:
	lw		x4, -32(x2)	# 681
	lw		x6, 0(x4)	# 681
	mul		x7, x30, x5	# 334
	addi	x7, x7, 64364	# 334
	flw		f1, 0(x7)	# 334
	mul		x7, x30, x5	# 334
	add		x7, x6, x7	# 334
	flw		f2, 0(x7)	# 334
	fmul	f1, f1, f2	# 334
	lw		x7, -28(x2)	# 334
	mul		x8, x30, x7	# 334
	addi	x8, x8, 64364	# 334
	flw		f2, 0(x8)	# 334
	mul		x8, x30, x7	# 334
	add		x8, x6, x8	# 334
	flw		f3, 0(x8)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	lw		x8, -24(x2)	# 334
	mul		x9, x30, x8	# 334
	addi	x9, x9, 64364	# 334
	flw		f2, 0(x9)	# 334
	mul		x9, x30, x8	# 334
	add		x6, x6, x9	# 334
	flw		f3, 0(x6)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	lw		x6, -40(x2)	# 1859
	flw		f2, 8(x6)	# 1859
	flw		f3, -20(x2)	# 1859
	fmul	f4, f2, f3	# 1859
	fmul	f1, f4, f1	# 1859
	lw		x4, 0(x4)	# 681
	mul		x6, x30, x5	# 334
	lw		x9, -16(x2)	# 334
	add		x6, x9, x6	# 334
	flw		f4, 0(x6)	# 334
	mul		x6, x30, x5	# 334
	add		x6, x4, x6	# 334
	flw		f5, 0(x6)	# 334
	fmul	f4, f4, f5	# 334
	mul		x6, x30, x7	# 334
	add		x6, x9, x6	# 334
	flw		f5, 0(x6)	# 334
	mul		x6, x30, x7	# 334
	add		x6, x4, x6	# 334
	flw		f6, 0(x6)	# 334
	fmul	f5, f5, f6	# 334
	fadd	f4, f4, f5	# 334
	mul		x6, x30, x8	# 334
	add		x6, x9, x6	# 334
	flw		f5, 0(x6)	# 334
	mul		x6, x30, x8	# 334
	add		x4, x4, x6	# 334
	flw		f6, 0(x4)	# 334
	fmul	f5, f5, f6	# 334
	fadd	f4, f4, f5	# 334
	fmul	f2, f2, f4	# 1860
	flw		f4, -12(x2)	# 121
	fle		f1, f4, fle_cont.32310	# 121
	mul		x4, x30, x5	# 344
	addi	x4, x4, 64400	# 344
	flw		f5, 0(x4)	# 344
	mul		x4, x30, x5	# 344
	addi	x4, x4, 64376	# 344
	flw		f6, 0(x4)	# 344
	fmul	f6, f1, f6	# 344
	fadd	f5, f5, f6	# 344
	mul		x4, x30, x5	# 344
	addi	x4, x4, 64400	# 344
	fsw		f5, 0(x4)	# 344
	mul		x4, x30, x7	# 345
	addi	x4, x4, 64400	# 345
	flw		f5, 0(x4)	# 345
	mul		x4, x30, x7	# 345
	addi	x4, x4, 64376	# 345
	flw		f6, 0(x4)	# 345
	fmul	f6, f1, f6	# 345
	fadd	f5, f5, f6	# 345
	mul		x4, x30, x7	# 345
	addi	x4, x4, 64400	# 345
	fsw		f5, 0(x4)	# 345
	mul		x4, x30, x8	# 346
	addi	x4, x4, 64400	# 346
	flw		f5, 0(x4)	# 346
	mul		x4, x30, x8	# 346
	addi	x4, x4, 64376	# 346
	flw		f6, 0(x4)	# 346
	fmul	f1, f1, f6	# 346
	fadd	f1, f5, f1	# 346
	mul		x4, x30, x8	# 346
	addi	x4, x4, 64400	# 346
	fsw		f1, 0(x4)	# 346
	jal		x0, fle_cont.32310	# 121
fle_cont.32310:
	fle		f2, f4, beq_cont.32304	# 121
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -8(x2)	# 1836
	fmul	f1, f1, f2	# 1836
	mul		x4, x30, x5	# 1837
	addi	x4, x4, 64400	# 1837
	flw		f4, 0(x4)	# 1837
	fadd	f4, f4, f1	# 1837
	mul		x4, x30, x5	# 1837
	addi	x4, x4, 64400	# 1837
	fsw		f4, 0(x4)	# 1837
	mul		x4, x30, x7	# 1838
	addi	x4, x4, 64400	# 1838
	flw		f4, 0(x4)	# 1838
	fadd	f4, f4, f1	# 1838
	mul		x4, x30, x7	# 1838
	addi	x4, x4, 64400	# 1838
	fsw		f4, 0(x4)	# 1838
	mul		x4, x30, x8	# 1839
	addi	x4, x4, 64400	# 1839
	flw		f4, 0(x4)	# 1839
	fadd	f1, f4, f1	# 1839
	mul		x4, x30, x8	# 1839
	addi	x4, x4, 64400	# 1839
	fsw		f1, 0(x4)	# 1839
	jal		x0, beq_cont.32304	# 121
	jal		x0, beq_cont.32304	# 1851
beq_cont.32304:
	lw		x4, -4(x2)	# 1865
	lw		x5, -28(x2)	# 1865
	sub		x4, x4, x5	# 1865
	lw		x5, -16(x2)	# 1865
	flw		f1, -20(x2)	# 1865
	flw		f2, -8(x2)	# 1865
	lw		x29, 0(x2)	# 1865
	lw		x31, 0(x29)	# 1865
	jalr	x0, x31, 0	# 1865
trace_ray.2883.18017:
	lw		x7, 60(x29)	# 1874
	lw		x8, 56(x29)	# 1874
	lw		x9, 52(x29)	# 1874
	lw		x10, 48(x29)	# 1874
	lw		x11, 44(x29)	# 1874
	lw		x12, 40(x29)	# 1874
	lw		x13, 36(x29)	# 1874
	lw		x14, 32(x29)	# 1874
	lw		x15, 28(x29)	# 1874
	lw		x16, 24(x29)	# 1874
	lw		x17, 20(x29)	# 1874
	lw		x18, 16(x29)	# 1874
	flw		f3, 12(x29)	# 1874
	flw		f4, 8(x29)	# 1874
	flw		f5, 4(x29)	# 1874
	addi	x19, x0, 4	# 1874
	ble		x4, x19, ble.32314	# 1874
	jalr	x0, x1, 0	# 1955
ble.32314:
	lw		x20, 8(x6)	# 619
	mul		x21, x30, x17	# 1585
	addi	x21, x21, 64344	# 1585
	fsw		f3, 0(x21)	# 1585
	mul		x21, x30, x17	# 1586
	addi	x21, x21, 64332	# 1586
	lw		x21, 0(x21)	# 1586
	sw		x29, 0(x2)	# 1586
	fsw		f2, -4(x2)	# 1586
	sw		x7, -8(x2)	# 1586
	sw		x11, -12(x2)	# 1586
	sw		x10, -16(x2)	# 1586
	sw		x6, -20(x2)	# 1586
	sw		x13, -24(x2)	# 1586
	sw		x12, -28(x2)	# 1586
	sw		x16, -32(x2)	# 1586
	sw		x9, -36(x2)	# 1586
	fsw		f4, -40(x2)	# 1586
	fsw		f1, -44(x2)	# 1586
	fsw		f5, -48(x2)	# 1586
	sw		x14, -52(x2)	# 1586
	sw		x5, -56(x2)	# 1586
	sw		x15, -60(x2)	# 1586
	sw		x4, -64(x2)	# 1586
	sw		x17, -68(x2)	# 1586
	addi	x6, x5, 0	# 1586
	addi	x4, x17, 0	# 1586
	addi	x29, x8, 0	# 1586
	addi	x5, x21, 0	# 1586
	sw		x1, -72(x2)	# 1586
	addi	x2, x2, -76	# 1586
	lw		x31, 0(x29)	# 1586
	jalr	x1, x31, 0	# 1586
	addi	x2, x2, 76	# 1586
	lw		x1, -72(x2)	# 1586
	lw		x4, -68(x2)	# 1587
	mul		x5, x30, x4	# 1587
	addi	x5, x5, 64344	# 1587
	flw		f1, 0(x5)	# 1587
	fle		f1, f20, fle.32317	# 125
	fle		f21, f1, fle.32319	# 125
	addi	x5, x0, 1	# 125
	jal		x0, fle_cont.32316	# 125
fle.32319:
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32316	# 125
fle.32317:
	addi	x5, x0, 0	# 1591
fle_cont.32316:
	beq		x5, x4, beq.32320	# 1876
	mul		x5, x30, x4	# 1878
	addi	x5, x5, 64360	# 1878
	lw		x5, 0(x5)	# 1878
	mul		x6, x30, x5	# 1879
	addi	x6, x6, 63844	# 1879
	lw		x6, 0(x6)	# 1879
	lw		x7, 8(x6)	# 405
	lw		x8, 28(x6)	# 503
	mul		x9, x30, x4	# 508
	add		x8, x8, x9	# 508
	flw		f1, 0(x8)	# 508
	flw		f2, -44(x2)	# 1881
	fmul	f1, f1, f2	# 1881
	lw		x8, 4(x6)	# 395
	beq		x8, x18, beq.32322	# 1735
	lw		x9, -52(x2)	# 1737
	beq		x8, x9, beq.32324	# 1737
	mul		x8, x30, x4	# 1712
	addi	x8, x8, 64348	# 1712
	flw		f3, 0(x8)	# 1712
	lw		x8, 20(x6)	# 473
	mul		x10, x30, x4	# 478
	add		x8, x8, x10	# 478
	flw		f4, 0(x8)	# 478
	fsub	f3, f3, f4	# 1712
	mul		x8, x30, x18	# 1713
	addi	x8, x8, 64348	# 1713
	flw		f4, 0(x8)	# 1713
	lw		x8, 20(x6)	# 483
	mul		x10, x30, x18	# 488
	add		x8, x8, x10	# 488
	flw		f5, 0(x8)	# 488
	fsub	f4, f4, f5	# 1713
	mul		x8, x30, x9	# 1714
	addi	x8, x8, 64348	# 1714
	flw		f5, 0(x8)	# 1714
	lw		x8, 20(x6)	# 493
	mul		x10, x30, x9	# 498
	add		x8, x8, x10	# 498
	flw		f6, 0(x8)	# 498
	fsub	f5, f5, f6	# 1714
	lw		x8, 16(x6)	# 433
	mul		x10, x30, x4	# 438
	add		x8, x8, x10	# 438
	flw		f6, 0(x8)	# 438
	fmul	f6, f3, f6	# 1716
	lw		x8, 16(x6)	# 443
	mul		x10, x30, x18	# 448
	add		x8, x8, x10	# 448
	flw		f7, 0(x8)	# 448
	fmul	f7, f4, f7	# 1717
	lw		x8, 16(x6)	# 453
	mul		x10, x30, x9	# 458
	add		x8, x8, x10	# 458
	flw		f8, 0(x8)	# 458
	fmul	f8, f5, f8	# 1718
	lw		x8, 12(x6)	# 424
	beq		x8, x4, beq.32326	# 1720
	lw		x8, 36(x6)	# 573
	mul		x10, x30, x9	# 578
	add		x8, x8, x10	# 578
	flw		f9, 0(x8)	# 578
	fmul	f9, f4, f9	# 1725
	lw		x8, 36(x6)	# 563
	mul		x10, x30, x18	# 568
	add		x8, x8, x10	# 568
	flw		f10, 0(x8)	# 568
	fmul	f10, f5, f10	# 1725
	fadd	f9, f9, f10	# 1725
	fmul	f9, f9, f24	# 126
	fadd	f6, f6, f9	# 1725
	mul		x8, x30, x4	# 1725
	addi	x8, x8, 64364	# 1725
	fsw		f6, 0(x8)	# 1725
	lw		x8, 36(x6)	# 573
	mul		x10, x30, x9	# 578
	add		x8, x8, x10	# 578
	flw		f6, 0(x8)	# 578
	fmul	f6, f3, f6	# 1726
	lw		x8, 36(x6)	# 553
	mul		x10, x30, x4	# 558
	add		x8, x8, x10	# 558
	flw		f9, 0(x8)	# 558
	fmul	f5, f5, f9	# 1726
	fadd	f5, f6, f5	# 1726
	fmul	f5, f5, f24	# 126
	fadd	f5, f7, f5	# 1726
	mul		x8, x30, x18	# 1726
	addi	x8, x8, 64364	# 1726
	fsw		f5, 0(x8)	# 1726
	lw		x8, 36(x6)	# 563
	mul		x10, x30, x18	# 568
	add		x8, x8, x10	# 568
	flw		f5, 0(x8)	# 568
	fmul	f3, f3, f5	# 1727
	lw		x8, 36(x6)	# 553
	mul		x10, x30, x4	# 558
	add		x8, x8, x10	# 558
	flw		f5, 0(x8)	# 558
	fmul	f4, f4, f5	# 1727
	fadd	f3, f3, f4	# 1727
	fmul	f3, f3, f24	# 126
	fadd	f3, f8, f3	# 1727
	mul		x8, x30, x9	# 1727
	addi	x8, x8, 64364	# 1727
	fsw		f3, 0(x8)	# 1727
	jal		x0, beq_cont.32325	# 1720
beq.32326:
	mul		x8, x30, x4	# 1721
	addi	x8, x8, 64364	# 1721
	fsw		f6, 0(x8)	# 1721
	mul		x8, x30, x18	# 1722
	addi	x8, x8, 64364	# 1722
	fsw		f7, 0(x8)	# 1722
	mul		x8, x30, x9	# 1723
	addi	x8, x8, 64364	# 1723
	fsw		f8, 0(x8)	# 1723
beq_cont.32325:
	lw		x8, 24(x6)	# 415
	mul		x10, x30, x4	# 325
	addi	x10, x10, 64364	# 325
	flw		f3, 0(x10)	# 325
	fmul	f3, f3, f3	# 127
	mul		x10, x30, x18	# 325
	addi	x10, x10, 64364	# 325
	flw		f4, 0(x10)	# 325
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 325
	mul		x10, x30, x9	# 325
	addi	x10, x10, 64364	# 325
	flw		f4, 0(x10)	# 325
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 325
	fsqrt	f3, f3	# 325
	flw		f4, -48(x2)	# 120
	feq		f3, f4, feq.32328	# 120
	beq		x8, x4, beq.32330	# 326
	lui		x8, %hi(l.26420)	# 326
	ori		x8, x0, %lo(l.26420)	# 326
	flw		f5, 0(x8)	# 326
	fdiv	f3, f5, f3	# 326
	jal		x0, feq_cont.32327	# 326
beq.32330:
	fdiv	f3, f30, f3	# 326
	jal		x0, feq_cont.32327	# 120
feq.32328:
	fadd	f3, f0, f30	# 326
feq_cont.32327:
	mul		x8, x30, x4	# 327
	addi	x8, x8, 64364	# 327
	flw		f5, 0(x8)	# 327
	fmul	f5, f5, f3	# 327
	mul		x8, x30, x4	# 327
	addi	x8, x8, 64364	# 327
	fsw		f5, 0(x8)	# 327
	mul		x8, x30, x18	# 328
	addi	x8, x8, 64364	# 328
	flw		f5, 0(x8)	# 328
	fmul	f5, f5, f3	# 328
	mul		x8, x30, x18	# 328
	addi	x8, x8, 64364	# 328
	fsw		f5, 0(x8)	# 328
	mul		x8, x30, x9	# 329
	addi	x8, x8, 64364	# 329
	flw		f5, 0(x8)	# 329
	fmul	f3, f5, f3	# 329
	mul		x8, x30, x9	# 329
	addi	x8, x8, 64364	# 329
	fsw		f3, 0(x8)	# 329
	jal		x0, beq_cont.32321	# 1737
beq.32324:
	lw		x8, 16(x6)	# 433
	mul		x10, x30, x4	# 438
	add		x8, x8, x10	# 438
	flw		f3, 0(x8)	# 438
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x4	# 1705
	addi	x8, x8, 64364	# 1705
	fsw		f3, 0(x8)	# 1705
	lw		x8, 16(x6)	# 443
	mul		x10, x30, x18	# 448
	add		x8, x8, x10	# 448
	flw		f3, 0(x8)	# 448
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x18	# 1706
	addi	x8, x8, 64364	# 1706
	fsw		f3, 0(x8)	# 1706
	lw		x8, 16(x6)	# 453
	mul		x10, x30, x9	# 458
	add		x8, x8, x10	# 458
	flw		f3, 0(x8)	# 458
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x9	# 1707
	addi	x8, x8, 64364	# 1707
	fsw		f3, 0(x8)	# 1707
	jal		x0, beq_cont.32321	# 1735
beq.32322:
	mul		x8, x30, x4	# 1696
	addi	x8, x8, 64340	# 1696
	lw		x8, 0(x8)	# 1696
	mul		x9, x30, x4	# 289
	addi	x9, x9, 64364	# 289
	flw		f3, -48(x2)	# 289
	fsw		f3, 0(x9)	# 289
	mul		x9, x30, x18	# 290
	addi	x9, x9, 64364	# 290
	fsw		f3, 0(x9)	# 290
	lw		x9, -52(x2)	# 291
	mul		x10, x30, x9	# 291
	addi	x10, x10, 64364	# 291
	fsw		f3, 0(x10)	# 291
	sub		x8, x8, x18	# 1699
	mul		x10, x30, x8	# 1699
	lw		x11, -56(x2)	# 1699
	add		x10, x11, x10	# 1699
	flw		f4, 0(x10)	# 1699
	feq		f4, f3, feq.32332	# 120
	fle		f4, f3, fle.32334	# 121
	fadd	f4, f0, f30	# 255
	jal		x0, feq_cont.32331	# 121
fle.32334:
	lui		x10, %hi(l.26420)	# 256
	ori		x10, x0, %lo(l.26420)	# 256
	flw		f4, 0(x10)	# 256
	jal		x0, feq_cont.32331	# 120
feq.32332:
	fadd	f4, f0, f3	# 254
feq_cont.32331:
	fsub	f4, f0, f4	# 123
	mul		x8, x30, x8	# 1699
	addi	x8, x8, 64364	# 1699
	fsw		f4, 0(x8)	# 1699
beq_cont.32321:
	mul		x8, x30, x4	# 301
	addi	x8, x8, 64348	# 301
	flw		f3, 0(x8)	# 301
	mul		x8, x30, x4	# 301
	addi	x8, x8, 64432	# 301
	fsw		f3, 0(x8)	# 301
	mul		x8, x30, x18	# 302
	addi	x8, x8, 64348	# 302
	flw		f3, 0(x8)	# 302
	mul		x8, x30, x18	# 302
	addi	x8, x8, 64432	# 302
	fsw		f3, 0(x8)	# 302
	mul		x8, x30, x9	# 303
	addi	x8, x8, 64348	# 303
	flw		f3, 0(x8)	# 303
	mul		x8, x30, x9	# 303
	addi	x8, x8, 64432	# 303
	fsw		f3, 0(x8)	# 303
	lw		x8, 0(x6)	# 385
	lw		x10, 32(x6)	# 523
	mul		x11, x30, x4	# 528
	add		x10, x10, x11	# 528
	flw		f3, 0(x10)	# 528
	mul		x10, x30, x4	# 1752
	addi	x10, x10, 64376	# 1752
	fsw		f3, 0(x10)	# 1752
	lw		x10, 32(x6)	# 533
	mul		x11, x30, x18	# 538
	add		x10, x10, x11	# 538
	flw		f3, 0(x10)	# 538
	mul		x10, x30, x18	# 1753
	addi	x10, x10, 64376	# 1753
	fsw		f3, 0(x10)	# 1753
	lw		x10, 32(x6)	# 543
	mul		x11, x30, x9	# 548
	add		x10, x10, x11	# 548
	flw		f3, 0(x10)	# 548
	mul		x10, x30, x9	# 1754
	addi	x10, x10, 64376	# 1754
	fsw		f3, 0(x10)	# 1754
	sw		x7, -72(x2)	# 1755
	fsw		f1, -76(x2)	# 1755
	sw		x6, -80(x2)	# 1755
	sw		x5, -84(x2)	# 1755
	beq		x8, x18, beq.32336	# 1755
	beq		x8, x9, beq.32338	# 1773
	lw		x10, -32(x2)	# 1780
	beq		x8, x10, beq.32340	# 1780
	beq		x8, x19, beq.32342	# 1791
	jal		x0, beq_cont.32335	# 1791
beq.32342:
	mul		x8, x30, x4	# 1793
	addi	x8, x8, 64348	# 1793
	flw		f3, 0(x8)	# 1793
	lw		x8, 20(x6)	# 473
	mul		x10, x30, x4	# 478
	add		x8, x8, x10	# 478
	flw		f4, 0(x8)	# 478
	fsub	f3, f3, f4	# 1793
	lw		x8, 16(x6)	# 433
	mul		x10, x30, x4	# 438
	add		x8, x8, x10	# 438
	flw		f4, 0(x8)	# 438
	fsqrt	f4, f4	# 1793
	fmul	f3, f3, f4	# 1793
	mul		x8, x30, x9	# 1794
	addi	x8, x8, 64348	# 1794
	flw		f4, 0(x8)	# 1794
	lw		x8, 20(x6)	# 493
	mul		x10, x30, x9	# 498
	add		x8, x8, x10	# 498
	flw		f5, 0(x8)	# 498
	fsub	f4, f4, f5	# 1794
	lw		x8, 16(x6)	# 453
	mul		x10, x30, x9	# 458
	add		x8, x8, x10	# 458
	flw		f5, 0(x8)	# 458
	fsqrt	f5, f5	# 1794
	fmul	f4, f4, f5	# 1794
	fmul	f5, f3, f3	# 127
	fmul	f6, f4, f4	# 127
	fadd	f5, f5, f6	# 1795
	flw		f6, -48(x2)	# 124
	fle		f3, f6, fle.32344	# 124
	fadd	f7, f0, f3	# 124
	jal		x0, fle_cont.32343	# 124
fle.32344:
	fsub	f7, f0, f3	# 124
fle_cont.32343:
	fsw		f5, -88(x2)	# 125
	fle		f28, f7, fle.32346	# 125
	lui		x8, %hi(l.27901)	# 1798
	ori		x8, x0, %lo(l.27901)	# 1798
	flw		f1, 0(x8)	# 1798
	jal		x0, fle_cont.32345	# 125
fle.32346:
	fdiv	f3, f4, f3	# 1800
	fle		f3, f6, fle.32348	# 124
	jal		x0, fle_cont.32347	# 124
fle.32348:
	fsub	f3, f0, f3	# 124
fle_cont.32347:
	lw		x29, -24(x2)	# 1802
	fadd	f1, f0, f3	# 1802
	sw		x1, -92(x2)	# 1802
	addi	x2, x2, -96	# 1802
	lw		x31, 0(x29)	# 1802
	jalr	x1, x31, 0	# 1802
	addi	x2, x2, 96	# 1802
	lw		x1, -92(x2)	# 1802
	lui		x4, %hi(l.27903)	# 1802
	ori		x4, x0, %lo(l.27903)	# 1802
	flw		f2, 0(x4)	# 1802
	fmul	f1, f1, f2	# 1802
	lui		x4, %hi(l.27905)	# 1802
	ori		x4, x0, %lo(l.27905)	# 1802
	flw		f2, 0(x4)	# 1802
	fdiv	f1, f1, f2	# 1802
fle_cont.32345:
	fsw		f1, -92(x2)	# 1804
	sw		x1, -96(x2)	# 1804
	addi	x2, x2, -100	# 1804
	jal		x1, min_caml_floor	# 1804
	addi	x2, x2, 100	# 1804
	lw		x1, -96(x2)	# 1804
	flw		f2, -92(x2)	# 1804
	fsub	f1, f2, f1	# 1804
	mul		x4, x30, x18	# 1806
	addi	x4, x4, 64348	# 1806
	flw		f2, 0(x4)	# 1806
	lw		x4, -80(x2)	# 483
	lw		x5, 20(x4)	# 483
	mul		x6, x30, x18	# 488
	add		x5, x5, x6	# 488
	flw		f3, 0(x5)	# 488
	fsub	f2, f2, f3	# 1806
	lw		x5, 16(x4)	# 443
	mul		x6, x30, x18	# 448
	add		x5, x5, x6	# 448
	flw		f3, 0(x5)	# 448
	fsqrt	f3, f3	# 1806
	fmul	f2, f2, f3	# 1806
	flw		f3, -88(x2)	# 124
	fle		f3, f6, fle.32350	# 124
	fadd	f4, f0, f3	# 124
	jal		x0, fle_cont.32349	# 124
fle.32350:
	fsub	f4, f0, f3	# 124
fle_cont.32349:
	fsw		f1, -96(x2)	# 125
	fle		f28, f4, fle.32352	# 125
	lui		x5, %hi(l.27901)	# 1809
	ori		x5, x0, %lo(l.27901)	# 1809
	flw		f1, 0(x5)	# 1809
	jal		x0, fle_cont.32351	# 125
fle.32352:
	fdiv	f2, f2, f3	# 1811
	fle		f2, f6, fle.32354	# 124
	jal		x0, fle_cont.32353	# 124
fle.32354:
	fsub	f2, f0, f2	# 124
fle_cont.32353:
	lw		x29, -24(x2)	# 1812
	fadd	f1, f0, f2	# 1812
	sw		x1, -100(x2)	# 1812
	addi	x2, x2, -104	# 1812
	lw		x31, 0(x29)	# 1812
	jalr	x1, x31, 0	# 1812
	addi	x2, x2, 104	# 1812
	lw		x1, -100(x2)	# 1812
	lui		x4, %hi(l.27903)	# 1812
	ori		x4, x0, %lo(l.27903)	# 1812
	flw		f2, 0(x4)	# 1812
	fmul	f1, f1, f2	# 1812
	lui		x4, %hi(l.27905)	# 1812
	ori		x4, x0, %lo(l.27905)	# 1812
	flw		f2, 0(x4)	# 1812
	fdiv	f1, f1, f2	# 1812
fle_cont.32351:
	fsw		f1, -100(x2)	# 1814
	sw		x1, -104(x2)	# 1814
	addi	x2, x2, -108	# 1814
	jal		x1, min_caml_floor	# 1814
	addi	x2, x2, 108	# 1814
	lw		x1, -104(x2)	# 1814
	flw		f2, -100(x2)	# 1814
	fsub	f1, f2, f1	# 1814
	lui		x4, %hi(l.27916)	# 1815
	ori		x4, x0, %lo(l.27916)	# 1815
	flw		f2, 0(x4)	# 1815
	flw		f4, -96(x2)	# 1815
	fsub	f4, f24, f4	# 1815
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1815
	fsub	f1, f24, f1	# 1815
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1815
	fle		f6, f1, fle_cont.32355	# 122
	fadd	f1, f0, f6	# 1816
	jal		x0, fle_cont.32355	# 122
fle_cont.32355:
	flw		f2, -40(x2)	# 1817
	fmul	f1, f2, f1	# 1817
	lui		x4, %hi(l.27919)	# 1817
	ori		x4, x0, %lo(l.27919)	# 1817
	flw		f2, 0(x4)	# 1817
	fdiv	f1, f1, f2	# 1817
	mul		x4, x30, x9	# 1817
	addi	x4, x4, 64376	# 1817
	fsw		f1, 0(x4)	# 1817
	jal		x0, beq_cont.32335	# 1780
beq.32340:
	mul		x8, x30, x4	# 1783
	addi	x8, x8, 64348	# 1783
	flw		f3, 0(x8)	# 1783
	lw		x8, 20(x6)	# 473
	mul		x10, x30, x4	# 478
	add		x8, x8, x10	# 478
	flw		f4, 0(x8)	# 478
	fsub	f3, f3, f4	# 1783
	mul		x8, x30, x9	# 1784
	addi	x8, x8, 64348	# 1784
	flw		f4, 0(x8)	# 1784
	lw		x8, 20(x6)	# 493
	mul		x10, x30, x9	# 498
	add		x8, x8, x10	# 498
	flw		f5, 0(x8)	# 498
	fsub	f4, f4, f5	# 1784
	fmul	f3, f3, f3	# 127
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 1785
	fsqrt	f3, f3	# 1785
	lui		x8, %hi(l.27931)	# 1785
	ori		x8, x0, %lo(l.27931)	# 1785
	flw		f4, 0(x8)	# 1785
	fdiv	f3, f3, f4	# 1785
	fsw		f3, -104(x2)	# 1786
	fadd	f1, f0, f3	# 1786
	sw		x1, -108(x2)	# 1786
	addi	x2, x2, -112	# 1786
	jal		x1, min_caml_floor	# 1786
	addi	x2, x2, 112	# 1786
	lw		x1, -108(x2)	# 1786
	flw		f2, -104(x2)	# 1786
	fsub	f1, f2, f1	# 1786
	lui		x4, %hi(l.27905)	# 1786
	ori		x4, x0, %lo(l.27905)	# 1786
	flw		f2, 0(x4)	# 1786
	fmul	f1, f1, f2	# 1786
	lw		x29, -28(x2)	# 1787
	sw		x1, -108(x2)	# 1787
	addi	x2, x2, -112	# 1787
	lw		x31, 0(x29)	# 1787
	jalr	x1, x31, 0	# 1787
	addi	x2, x2, 112	# 1787
	lw		x1, -108(x2)	# 1787
	fmul	f1, f1, f1	# 127
	flw		f2, -40(x2)	# 1788
	fmul	f3, f1, f2	# 1788
	mul		x4, x30, x18	# 1788
	addi	x4, x4, 64376	# 1788
	fsw		f3, 0(x4)	# 1788
	fsub	f1, f30, f1	# 1789
	fmul	f1, f1, f2	# 1789
	mul		x4, x30, x9	# 1789
	addi	x4, x4, 64376	# 1789
	fsw		f1, 0(x4)	# 1789
	jal		x0, beq_cont.32335	# 1773
beq.32338:
	mul		x8, x30, x18	# 1776
	addi	x8, x8, 64348	# 1776
	flw		f3, 0(x8)	# 1776
	lui		x8, %hi(l.27941)	# 1776
	ori		x8, x0, %lo(l.27941)	# 1776
	flw		f4, 0(x8)	# 1776
	fmul	f3, f3, f4	# 1776
	lw		x29, -36(x2)	# 1776
	fadd	f1, f0, f3	# 1776
	sw		x1, -108(x2)	# 1776
	addi	x2, x2, -112	# 1776
	lw		x31, 0(x29)	# 1776
	jalr	x1, x31, 0	# 1776
	addi	x2, x2, 112	# 1776
	lw		x1, -108(x2)	# 1776
	fmul	f1, f1, f1	# 127
	flw		f2, -40(x2)	# 1777
	fmul	f3, f2, f1	# 1777
	lw		x4, -68(x2)	# 1777
	mul		x8, x30, x4	# 1777
	addi	x8, x8, 64376	# 1777
	fsw		f3, 0(x8)	# 1777
	fsub	f1, f30, f1	# 1778
	fmul	f1, f2, f1	# 1778
	mul		x8, x30, x18	# 1778
	addi	x8, x8, 64376	# 1778
	fsw		f1, 0(x8)	# 1778
	jal		x0, beq_cont.32335	# 1755
beq.32336:
	mul		x8, x30, x4	# 1758
	addi	x8, x8, 64348	# 1758
	flw		f3, 0(x8)	# 1758
	lw		x8, 20(x6)	# 473
	mul		x10, x30, x4	# 478
	add		x8, x8, x10	# 478
	flw		f4, 0(x8)	# 478
	fsub	f3, f3, f4	# 1758
	fmul	f5, f3, f27	# 1760
	fadd	f1, f0, f5	# 1760
	sw		x1, -108(x2)	# 1760
	addi	x2, x2, -112	# 1760
	jal		x1, min_caml_floor	# 1760
	addi	x2, x2, 112	# 1760
	lw		x1, -108(x2)	# 1760
	lui		x4, %hi(l.27954)	# 1760
	ori		x4, x0, %lo(l.27954)	# 1760
	flw		f2, 0(x4)	# 1760
	fmul	f1, f1, f2	# 1760
	fsub	f1, f3, f1	# 1761
	lui		x4, %hi(l.27931)	# 1761
	ori		x4, x0, %lo(l.27931)	# 1761
	flw		f3, 0(x4)	# 1761
	mul		x4, x30, x9	# 1763
	addi	x4, x4, 64348	# 1763
	flw		f5, 0(x4)	# 1763
	lw		x4, -80(x2)	# 493
	lw		x5, 20(x4)	# 493
	mul		x6, x30, x9	# 498
	add		x5, x5, x6	# 498
	flw		f6, 0(x5)	# 498
	fsub	f5, f5, f6	# 1763
	fmul	f4, f5, f27	# 1765
	fsw		f1, -108(x2)	# 1765
	fsw		f2, -112(x2)	# 1765
	fadd	f1, f0, f4	# 1765
	sw		x1, -116(x2)	# 1765
	addi	x2, x2, -120	# 1765
	jal		x1, min_caml_floor	# 1765
	addi	x2, x2, 120	# 1765
	lw		x1, -116(x2)	# 1765
	flw		f2, -112(x2)	# 1765
	fmul	f1, f1, f2	# 1765
	fsub	f1, f5, f1	# 1766
	flw		f2, -108(x2)	# 125
	fle		f3, f2, fle.32358	# 125
	fle		f3, f1, fle.32360	# 125
	flw		f1, -40(x2)	# 1770
	jal		x0, fle_cont.32357	# 125
fle.32360:
	flw		f1, -48(x2)	# 1770
	jal		x0, fle_cont.32357	# 125
fle.32358:
	fle		f3, f1, fle.32362	# 125
	flw		f1, -48(x2)	# 1771
	jal		x0, fle_cont.32357	# 125
fle.32362:
	flw		f1, -40(x2)	# 1771
fle_cont.32357:
	mul		x4, x30, x18	# 1768
	addi	x4, x4, 64376	# 1768
	fsw		f1, 0(x4)	# 1768
beq_cont.32335:
	lw		x4, -84(x2)	# 1888
	mul		x4, x4, x19	# 1888
	lw		x5, -68(x2)	# 1888
	mul		x6, x30, x5	# 1888
	addi	x6, x6, 64340	# 1888
	lw		x6, 0(x6)	# 1888
	add		x4, x4, x6	# 1888
	lw		x6, -64(x2)	# 1888
	mul		x7, x30, x6	# 1888
	add		x7, x20, x7	# 1888
	sw		x4, 0(x7)	# 1888
	lw		x4, -20(x2)	# 611
	lw		x7, 4(x4)	# 611
	mul		x8, x30, x6	# 1890
	add		x7, x7, x8	# 1890
	lw		x7, 0(x7)	# 1890
	mul		x8, x30, x5	# 301
	addi	x8, x8, 64348	# 301
	flw		f1, 0(x8)	# 301
	mul		x8, x30, x5	# 301
	add		x8, x7, x8	# 301
	fsw		f1, 0(x8)	# 301
	mul		x8, x30, x18	# 302
	addi	x8, x8, 64348	# 302
	flw		f1, 0(x8)	# 302
	mul		x8, x30, x18	# 302
	add		x8, x7, x8	# 302
	fsw		f1, 0(x8)	# 302
	mul		x8, x30, x9	# 303
	addi	x8, x8, 64348	# 303
	flw		f1, 0(x8)	# 303
	mul		x8, x30, x9	# 303
	add		x7, x7, x8	# 303
	fsw		f1, 0(x7)	# 303
	lw		x7, 12(x4)	# 626
	lw		x8, -80(x2)	# 503
	lw		x10, 28(x8)	# 503
	mul		x11, x30, x5	# 508
	add		x10, x10, x11	# 508
	flw		f1, 0(x10)	# 508
	fle		f24, f1, fle.32364	# 125
	mul		x10, x30, x6	# 1895
	add		x7, x7, x10	# 1895
	sw		x5, 0(x7)	# 1895
	jal		x0, fle_cont.32363	# 125
fle.32364:
	mul		x10, x30, x6	# 1897
	add		x7, x7, x10	# 1897
	sw		x18, 0(x7)	# 1897
	lw		x7, 16(x4)	# 633
	mul		x10, x30, x6	# 1899
	add		x10, x7, x10	# 1899
	lw		x10, 0(x10)	# 1899
	mul		x11, x30, x5	# 301
	addi	x11, x11, 64376	# 301
	flw		f1, 0(x11)	# 301
	mul		x11, x30, x5	# 301
	add		x11, x10, x11	# 301
	fsw		f1, 0(x11)	# 301
	mul		x11, x30, x18	# 302
	addi	x11, x11, 64376	# 302
	flw		f1, 0(x11)	# 302
	mul		x11, x30, x18	# 302
	add		x11, x10, x11	# 302
	fsw		f1, 0(x11)	# 302
	mul		x11, x30, x9	# 303
	addi	x11, x11, 64376	# 303
	flw		f1, 0(x11)	# 303
	mul		x11, x30, x9	# 303
	add		x10, x10, x11	# 303
	fsw		f1, 0(x10)	# 303
	mul		x10, x30, x6	# 1900
	add		x7, x7, x10	# 1900
	lw		x7, 0(x7)	# 1900
	lui		x10, %hi(l.28004)	# 1900
	ori		x10, x0, %lo(l.28004)	# 1900
	flw		f1, 0(x10)	# 1900
	flw		f2, -76(x2)	# 1900
	fmul	f1, f1, f2	# 1900
	mul		x10, x30, x5	# 367
	add		x10, x7, x10	# 367
	flw		f3, 0(x10)	# 367
	fmul	f3, f3, f1	# 367
	mul		x10, x30, x5	# 367
	add		x10, x7, x10	# 367
	fsw		f3, 0(x10)	# 367
	mul		x10, x30, x18	# 368
	add		x10, x7, x10	# 368
	flw		f3, 0(x10)	# 368
	fmul	f3, f3, f1	# 368
	mul		x10, x30, x18	# 368
	add		x10, x7, x10	# 368
	fsw		f3, 0(x10)	# 368
	mul		x10, x30, x9	# 369
	add		x10, x7, x10	# 369
	flw		f3, 0(x10)	# 369
	fmul	f1, f3, f1	# 369
	mul		x10, x30, x9	# 369
	add		x7, x7, x10	# 369
	fsw		f1, 0(x7)	# 369
	lw		x7, 28(x4)	# 670
	mul		x10, x30, x6	# 1902
	add		x7, x7, x10	# 1902
	lw		x7, 0(x7)	# 1902
	mul		x10, x30, x5	# 301
	addi	x10, x10, 64364	# 301
	flw		f1, 0(x10)	# 301
	mul		x10, x30, x5	# 301
	add		x10, x7, x10	# 301
	fsw		f1, 0(x10)	# 301
	mul		x10, x30, x18	# 302
	addi	x10, x10, 64364	# 302
	flw		f1, 0(x10)	# 302
	mul		x10, x30, x18	# 302
	add		x10, x7, x10	# 302
	fsw		f1, 0(x10)	# 302
	mul		x10, x30, x9	# 303
	addi	x10, x10, 64364	# 303
	flw		f1, 0(x10)	# 303
	mul		x10, x30, x9	# 303
	add		x7, x7, x10	# 303
	fsw		f1, 0(x7)	# 303
fle_cont.32363:
	lui		x7, %hi(l.28032)	# 1905
	ori		x7, x0, %lo(l.28032)	# 1905
	flw		f1, 0(x7)	# 1905
	mul		x7, x30, x5	# 334
	lw		x10, -56(x2)	# 334
	add		x7, x10, x7	# 334
	flw		f2, 0(x7)	# 334
	mul		x7, x30, x5	# 334
	addi	x7, x7, 64364	# 334
	flw		f3, 0(x7)	# 334
	fmul	f4, f2, f3	# 334
	mul		x7, x30, x18	# 334
	add		x7, x10, x7	# 334
	flw		f5, 0(x7)	# 334
	mul		x7, x30, x18	# 334
	addi	x7, x7, 64364	# 334
	flw		f6, 0(x7)	# 334
	fmul	f5, f5, f6	# 334
	fadd	f4, f4, f5	# 334
	mul		x7, x30, x9	# 334
	add		x7, x10, x7	# 334
	flw		f5, 0(x7)	# 334
	mul		x7, x30, x9	# 334
	addi	x7, x7, 64364	# 334
	flw		f6, 0(x7)	# 334
	fmul	f5, f5, f6	# 334
	fadd	f4, f4, f5	# 334
	fmul	f1, f1, f4	# 1905
	fmul	f3, f1, f3	# 344
	fadd	f2, f2, f3	# 344
	mul		x7, x30, x5	# 344
	add		x7, x10, x7	# 344
	fsw		f2, 0(x7)	# 344
	mul		x7, x30, x18	# 345
	add		x7, x10, x7	# 345
	flw		f2, 0(x7)	# 345
	mul		x7, x30, x18	# 345
	addi	x7, x7, 64364	# 345
	flw		f3, 0(x7)	# 345
	fmul	f3, f1, f3	# 345
	fadd	f2, f2, f3	# 345
	mul		x7, x30, x18	# 345
	add		x7, x10, x7	# 345
	fsw		f2, 0(x7)	# 345
	mul		x7, x30, x9	# 346
	add		x7, x10, x7	# 346
	flw		f2, 0(x7)	# 346
	mul		x7, x30, x9	# 346
	addi	x7, x7, 64364	# 346
	flw		f3, 0(x7)	# 346
	fmul	f1, f1, f3	# 346
	fadd	f1, f2, f1	# 346
	mul		x7, x30, x9	# 346
	add		x7, x10, x7	# 346
	fsw		f1, 0(x7)	# 346
	lw		x7, 28(x8)	# 513
	mul		x11, x30, x18	# 518
	add		x7, x7, x11	# 518
	flw		f1, 0(x7)	# 518
	flw		f2, -44(x2)	# 1909
	fmul	f1, f2, f1	# 1909
	mul		x7, x30, x5	# 1912
	addi	x7, x7, 64332	# 1912
	lw		x7, 0(x7)	# 1912
	lw		x29, -16(x2)	# 1912
	fsw		f1, -116(x2)	# 1912
	addi	x4, x5, 0	# 1912
	addi	x5, x7, 0	# 1912
	sw		x1, -120(x2)	# 1912
	addi	x2, x2, -124	# 1912
	lw		x31, 0(x29)	# 1912
	jalr	x1, x31, 0	# 1912
	addi	x2, x2, 124	# 1912
	lw		x1, -120(x2)	# 1912
	lw		x5, -68(x2)	# 1912
	beq		x4, x5, beq.32366	# 1912
	jal		x0, beq_cont.32365	# 1912
beq.32366:
	mul		x4, x30, x5	# 334
	addi	x4, x4, 64364	# 334
	flw		f1, 0(x4)	# 334
	mul		x4, x30, x5	# 334
	addi	x4, x4, 64108	# 334
	flw		f2, 0(x4)	# 334
	fmul	f1, f1, f2	# 334
	mul		x4, x30, x18	# 334
	addi	x4, x4, 64364	# 334
	flw		f3, 0(x4)	# 334
	mul		x4, x30, x18	# 334
	addi	x4, x4, 64108	# 334
	flw		f4, 0(x4)	# 334
	fmul	f3, f3, f4	# 334
	fadd	f1, f1, f3	# 334
	lw		x4, -52(x2)	# 334
	mul		x6, x30, x4	# 334
	addi	x6, x6, 64364	# 334
	flw		f3, 0(x6)	# 334
	mul		x6, x30, x4	# 334
	addi	x6, x6, 64108	# 334
	flw		f5, 0(x6)	# 334
	fmul	f3, f3, f5	# 334
	fadd	f1, f1, f3	# 334
	fsub	f1, f0, f1	# 123
	flw		f3, -76(x2)	# 1913
	fmul	f1, f1, f3	# 1913
	mul		x6, x30, x5	# 334
	lw		x7, -56(x2)	# 334
	add		x6, x7, x6	# 334
	flw		f6, 0(x6)	# 334
	fmul	f2, f6, f2	# 334
	mul		x6, x30, x18	# 334
	add		x6, x7, x6	# 334
	flw		f6, 0(x6)	# 334
	fmul	f4, f6, f4	# 334
	fadd	f2, f2, f4	# 334
	mul		x6, x30, x4	# 334
	add		x6, x7, x6	# 334
	flw		f4, 0(x6)	# 334
	fmul	f4, f4, f5	# 334
	fadd	f2, f2, f4	# 334
	fsub	f2, f0, f2	# 123
	flw		f4, -48(x2)	# 121
	fle		f1, f4, fle_cont.32367	# 121
	mul		x6, x30, x5	# 344
	addi	x6, x6, 64400	# 344
	flw		f5, 0(x6)	# 344
	mul		x6, x30, x5	# 344
	addi	x6, x6, 64376	# 344
	flw		f6, 0(x6)	# 344
	fmul	f6, f1, f6	# 344
	fadd	f5, f5, f6	# 344
	mul		x6, x30, x5	# 344
	addi	x6, x6, 64400	# 344
	fsw		f5, 0(x6)	# 344
	mul		x6, x30, x18	# 345
	addi	x6, x6, 64400	# 345
	flw		f5, 0(x6)	# 345
	mul		x6, x30, x18	# 345
	addi	x6, x6, 64376	# 345
	flw		f6, 0(x6)	# 345
	fmul	f6, f1, f6	# 345
	fadd	f5, f5, f6	# 345
	mul		x6, x30, x18	# 345
	addi	x6, x6, 64400	# 345
	fsw		f5, 0(x6)	# 345
	mul		x6, x30, x4	# 346
	addi	x6, x6, 64400	# 346
	flw		f5, 0(x6)	# 346
	mul		x6, x30, x4	# 346
	addi	x6, x6, 64376	# 346
	flw		f6, 0(x6)	# 346
	fmul	f1, f1, f6	# 346
	fadd	f1, f5, f1	# 346
	mul		x6, x30, x4	# 346
	addi	x6, x6, 64400	# 346
	fsw		f1, 0(x6)	# 346
	jal		x0, fle_cont.32367	# 121
fle_cont.32367:
	fle		f2, f4, beq_cont.32365	# 121
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -116(x2)	# 1836
	fmul	f1, f1, f2	# 1836
	mul		x6, x30, x5	# 1837
	addi	x6, x6, 64400	# 1837
	flw		f4, 0(x6)	# 1837
	fadd	f4, f4, f1	# 1837
	mul		x6, x30, x5	# 1837
	addi	x6, x6, 64400	# 1837
	fsw		f4, 0(x6)	# 1837
	mul		x6, x30, x18	# 1838
	addi	x6, x6, 64400	# 1838
	flw		f4, 0(x6)	# 1838
	fadd	f4, f4, f1	# 1838
	mul		x6, x30, x18	# 1838
	addi	x6, x6, 64400	# 1838
	fsw		f4, 0(x6)	# 1838
	mul		x6, x30, x4	# 1839
	addi	x6, x6, 64400	# 1839
	flw		f4, 0(x6)	# 1839
	fadd	f1, f4, f1	# 1839
	mul		x6, x30, x4	# 1839
	addi	x6, x6, 64400	# 1839
	fsw		f1, 0(x6)	# 1839
	jal		x0, beq_cont.32365	# 121
beq_cont.32365:
	mul		x4, x30, x5	# 301
	addi	x4, x4, 64348	# 301
	flw		f1, 0(x4)	# 301
	mul		x4, x30, x5	# 301
	addi	x4, x4, 64444	# 301
	fsw		f1, 0(x4)	# 301
	mul		x4, x30, x18	# 302
	addi	x4, x4, 64348	# 302
	flw		f1, 0(x4)	# 302
	mul		x4, x30, x18	# 302
	addi	x4, x4, 64444	# 302
	fsw		f1, 0(x4)	# 302
	lw		x4, -52(x2)	# 303
	mul		x6, x30, x4	# 303
	addi	x6, x6, 64348	# 303
	flw		f1, 0(x6)	# 303
	mul		x6, x30, x4	# 303
	addi	x6, x6, 64444	# 303
	fsw		f1, 0(x6)	# 303
	mul		x6, x30, x5	# 1357
	addi	x6, x6, 63796	# 1357
	lw		x6, 0(x6)	# 1357
	sub		x6, x6, x18	# 1357
	addi	x7, x0, 64348	# 1357
	lw		x29, -12(x2)	# 1357
	addi	x5, x6, 0	# 1357
	addi	x4, x7, 0	# 1357
	sw		x1, -120(x2)	# 1357
	addi	x2, x2, -124	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 124	# 1357
	lw		x1, -120(x2)	# 1357
	lw		x4, -68(x2)	# 1920
	mul		x5, x30, x4	# 1920
	addi	x5, x5, 65532	# 1920
	lw		x5, 0(x5)	# 1920
	sub		x5, x5, x18	# 1920
	lw		x6, -56(x2)	# 1920
	flw		f1, -76(x2)	# 1920
	flw		f2, -116(x2)	# 1920
	lw		x29, -8(x2)	# 1920
	sw		x20, -120(x2)	# 1920
	sw		x18, -124(x2)	# 1920
	sw		x19, -128(x2)	# 1920
	addi	x4, x5, 0	# 1920
	addi	x5, x6, 0	# 1920
	sw		x1, -132(x2)	# 1920
	addi	x2, x2, -136	# 1920
	lw		x31, 0(x29)	# 1920
	jalr	x1, x31, 0	# 1920
	addi	x2, x2, 136	# 1920
	lw		x1, -132(x2)	# 1920
	lui		x4, %hi(l.28128)	# 1923
	ori		x4, x0, %lo(l.28128)	# 1923
	flw		f1, 0(x4)	# 1923
	flw		f2, -44(x2)	# 125
	fle		f2, f1, fle.32371	# 125
	lw		x4, -64(x2)	# 1925
	lw		x5, -128(x2)	# 1925
	ble		x5, x4, ble_cont.32372	# 1925
	lw		x5, -124(x2)	# 1926
	add		x6, x4, x5	# 1926
	mul		x6, x30, x6	# 1926
	lw		x7, -120(x2)	# 1926
	add		x6, x7, x6	# 1926
	lw		x7, -60(x2)	# 1926
	sw		x7, 0(x6)	# 1926
	jal		x0, ble_cont.32372	# 1925
ble_cont.32372:
	lw		x5, -52(x2)	# 1929
	lw		x6, -72(x2)	# 1929
	beq		x6, x5, beq.32374	# 1929
	jalr	x0, x1, 0	# 1932
beq.32374:
	lw		x5, -80(x2)	# 503
	lw		x5, 28(x5)	# 503
	lw		x6, -68(x2)	# 508
	mul		x7, x30, x6	# 508
	add		x5, x5, x7	# 508
	flw		f3, 0(x5)	# 508
	fsub	f1, f30, f3	# 1930
	fmul	f1, f2, f1	# 1930
	lw		x5, -124(x2)	# 1931
	add		x4, x4, x5	# 1931
	mul		x5, x30, x6	# 1931
	addi	x5, x5, 64344	# 1931
	flw		f2, 0(x5)	# 1931
	flw		f3, -4(x2)	# 1931
	fadd	f2, f3, f2	# 1931
	lw		x5, -56(x2)	# 1931
	lw		x6, -20(x2)	# 1931
	lw		x29, 0(x2)	# 1931
	lw		x31, 0(x29)	# 1931
	jalr	x0, x31, 0	# 1931
fle.32371:
	jalr	x0, x1, 0	# 1934
beq.32320:
	lw		x5, -64(x2)	# 1939
	mul		x6, x30, x5	# 1939
	add		x6, x20, x6	# 1939
	lw		x7, -60(x2)	# 1939
	sw		x7, 0(x6)	# 1939
	beq		x5, x4, beq.32377	# 1941
	mul		x5, x30, x4	# 334
	lw		x6, -56(x2)	# 334
	add		x5, x6, x5	# 334
	flw		f1, 0(x5)	# 334
	mul		x5, x30, x4	# 334
	addi	x5, x5, 64108	# 334
	flw		f2, 0(x5)	# 334
	fmul	f1, f1, f2	# 334
	mul		x5, x30, x18	# 334
	add		x5, x6, x5	# 334
	flw		f2, 0(x5)	# 334
	mul		x5, x30, x18	# 334
	addi	x5, x5, 64108	# 334
	flw		f3, 0(x5)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	lw		x5, -52(x2)	# 334
	mul		x7, x30, x5	# 334
	add		x6, x6, x7	# 334
	flw		f2, 0(x6)	# 334
	mul		x6, x30, x5	# 334
	addi	x6, x6, 64108	# 334
	flw		f3, 0(x6)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	fsub	f1, f0, f1	# 123
	flw		f2, -48(x2)	# 121
	fle		f1, f2, fle.32378	# 121
	fmul	f2, f1, f1	# 127
	fmul	f1, f2, f1	# 1947
	flw		f2, -44(x2)	# 1947
	fmul	f1, f1, f2	# 1947
	mul		x6, x30, x4	# 1947
	addi	x6, x6, 64120	# 1947
	flw		f2, 0(x6)	# 1947
	fmul	f1, f1, f2	# 1947
	mul		x6, x30, x4	# 1948
	addi	x6, x6, 64400	# 1948
	flw		f2, 0(x6)	# 1948
	fadd	f2, f2, f1	# 1948
	mul		x4, x30, x4	# 1948
	addi	x4, x4, 64400	# 1948
	fsw		f2, 0(x4)	# 1948
	mul		x4, x30, x18	# 1949
	addi	x4, x4, 64400	# 1949
	flw		f2, 0(x4)	# 1949
	fadd	f2, f2, f1	# 1949
	mul		x4, x30, x18	# 1949
	addi	x4, x4, 64400	# 1949
	fsw		f2, 0(x4)	# 1949
	mul		x4, x30, x5	# 1950
	addi	x4, x4, 64400	# 1950
	flw		f2, 0(x4)	# 1950
	fadd	f1, f2, f1	# 1950
	mul		x4, x30, x5	# 1950
	addi	x4, x4, 64400	# 1950
	fsw		f1, 0(x4)	# 1950
	jalr	x0, x1, 0	# 1950
fle.32378:
	jalr	x0, x1, 0	# 1952
beq.32377:
	jalr	x0, x1, 0	# 1953
iter_trace_diffuse_rays.2892.18023:
	lw		x8, 48(x29)	# 1986
	lw		x9, 44(x29)	# 1986
	lw		x10, 40(x29)	# 1986
	lw		x11, 36(x29)	# 1986
	lw		x12, 32(x29)	# 1986
	lw		x13, 28(x29)	# 1986
	lw		x14, 24(x29)	# 1986
	lw		x15, 20(x29)	# 1986
	lw		x16, 16(x29)	# 1986
	flw		f1, 12(x29)	# 1986
	flw		f2, 8(x29)	# 1986
	flw		f3, 4(x29)	# 1986
	ble		x15, x7, ble.32382	# 1986
	jalr	x0, x1, 0	# 1997
ble.32382:
	mul		x17, x30, x7	# 1987
	add		x17, x4, x17	# 1987
	lw		x17, 0(x17)	# 1987
	lw		x18, 0(x17)	# 681
	mul		x19, x30, x15	# 334
	add		x19, x18, x19	# 334
	flw		f4, 0(x19)	# 334
	mul		x19, x30, x15	# 334
	add		x19, x5, x19	# 334
	flw		f5, 0(x19)	# 334
	fmul	f4, f4, f5	# 334
	mul		x19, x30, x16	# 334
	add		x19, x18, x19	# 334
	flw		f5, 0(x19)	# 334
	mul		x19, x30, x16	# 334
	add		x19, x5, x19	# 334
	flw		f6, 0(x19)	# 334
	fmul	f5, f5, f6	# 334
	fadd	f4, f4, f5	# 334
	mul		x19, x30, x13	# 334
	add		x18, x18, x19	# 334
	flw		f5, 0(x18)	# 334
	mul		x18, x30, x13	# 334
	add		x18, x5, x18	# 334
	flw		f6, 0(x18)	# 334
	fmul	f5, f5, f6	# 334
	fadd	f4, f4, f5	# 334
	sw		x6, 0(x2)	# 122
	sw		x5, -4(x2)	# 122
	sw		x4, -8(x2)	# 122
	sw		x29, -12(x2)	# 122
	sw		x13, -16(x2)	# 122
	sw		x7, -20(x2)	# 122
	fle		f3, f4, fle.32385	# 122
	add		x17, x7, x16	# 1992
	mul		x17, x30, x17	# 1992
	add		x17, x4, x17	# 1992
	lw		x17, 0(x17)	# 1992
	fdiv	f4, f4, f23	# 1992
	mul		x18, x30, x15	# 1676
	addi	x18, x18, 64344	# 1676
	fsw		f1, 0(x18)	# 1676
	mul		x18, x30, x15	# 1677
	addi	x18, x18, 64332	# 1677
	lw		x18, 0(x18)	# 1677
	fsw		f4, -24(x2)	# 1677
	sw		x10, -28(x2)	# 1677
	sw		x12, -32(x2)	# 1677
	sw		x11, -36(x2)	# 1677
	sw		x14, -40(x2)	# 1677
	sw		x9, -44(x2)	# 1677
	fsw		f2, -48(x2)	# 1677
	fsw		f3, -52(x2)	# 1677
	sw		x16, -56(x2)	# 1677
	sw		x17, -60(x2)	# 1677
	sw		x15, -64(x2)	# 1677
	addi	x6, x17, 0	# 1677
	addi	x5, x18, 0	# 1677
	addi	x4, x15, 0	# 1677
	addi	x29, x8, 0	# 1677
	sw		x1, -68(x2)	# 1677
	addi	x2, x2, -72	# 1677
	lw		x31, 0(x29)	# 1677
	jalr	x1, x31, 0	# 1677
	addi	x2, x2, 72	# 1677
	lw		x1, -68(x2)	# 1677
	lw		x4, -64(x2)	# 1678
	mul		x5, x30, x4	# 1678
	addi	x5, x5, 64344	# 1678
	flw		f1, 0(x5)	# 1678
	fle		f1, f20, fle.32387	# 125
	fle		f21, f1, fle.32389	# 125
	addi	x5, x0, 1	# 125
	jal		x0, fle_cont.32386	# 125
fle.32389:
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32386	# 125
fle.32387:
	addi	x5, x0, 0	# 1682
fle_cont.32386:
	beq		x5, x4, fle_cont.32384	# 1969
	mul		x5, x30, x4	# 1970
	addi	x5, x5, 64360	# 1970
	lw		x5, 0(x5)	# 1970
	mul		x5, x30, x5	# 1970
	addi	x5, x5, 63844	# 1970
	lw		x5, 0(x5)	# 1970
	lw		x6, -60(x2)	# 681
	lw		x6, 0(x6)	# 681
	lw		x7, 4(x5)	# 395
	lw		x8, -56(x2)	# 1735
	beq		x7, x8, beq.32393	# 1735
	lw		x6, -16(x2)	# 1737
	beq		x7, x6, beq.32395	# 1737
	mul		x7, x30, x4	# 1712
	addi	x7, x7, 64348	# 1712
	flw		f1, 0(x7)	# 1712
	lw		x7, 20(x5)	# 473
	mul		x9, x30, x4	# 478
	add		x7, x7, x9	# 478
	flw		f2, 0(x7)	# 478
	fsub	f1, f1, f2	# 1712
	mul		x7, x30, x8	# 1713
	addi	x7, x7, 64348	# 1713
	flw		f2, 0(x7)	# 1713
	lw		x7, 20(x5)	# 483
	mul		x9, x30, x8	# 488
	add		x7, x7, x9	# 488
	flw		f3, 0(x7)	# 488
	fsub	f2, f2, f3	# 1713
	mul		x7, x30, x6	# 1714
	addi	x7, x7, 64348	# 1714
	flw		f3, 0(x7)	# 1714
	lw		x7, 20(x5)	# 493
	mul		x9, x30, x6	# 498
	add		x7, x7, x9	# 498
	flw		f4, 0(x7)	# 498
	fsub	f3, f3, f4	# 1714
	lw		x7, 16(x5)	# 433
	mul		x9, x30, x4	# 438
	add		x7, x7, x9	# 438
	flw		f4, 0(x7)	# 438
	fmul	f4, f1, f4	# 1716
	lw		x7, 16(x5)	# 443
	mul		x9, x30, x8	# 448
	add		x7, x7, x9	# 448
	flw		f5, 0(x7)	# 448
	fmul	f5, f2, f5	# 1717
	lw		x7, 16(x5)	# 453
	mul		x9, x30, x6	# 458
	add		x7, x7, x9	# 458
	flw		f6, 0(x7)	# 458
	fmul	f6, f3, f6	# 1718
	lw		x7, 12(x5)	# 424
	beq		x7, x4, beq.32397	# 1720
	lw		x7, 36(x5)	# 573
	mul		x9, x30, x6	# 578
	add		x7, x7, x9	# 578
	flw		f7, 0(x7)	# 578
	fmul	f8, f2, f7	# 1725
	lw		x7, 36(x5)	# 563
	mul		x9, x30, x8	# 568
	add		x7, x7, x9	# 568
	flw		f9, 0(x7)	# 568
	fmul	f10, f3, f9	# 1725
	fadd	f8, f8, f10	# 1725
	fmul	f8, f8, f24	# 126
	fadd	f4, f4, f8	# 1725
	mul		x7, x30, x4	# 1725
	addi	x7, x7, 64364	# 1725
	fsw		f4, 0(x7)	# 1725
	fmul	f4, f1, f7	# 1726
	lw		x7, 36(x5)	# 553
	mul		x9, x30, x4	# 558
	add		x7, x7, x9	# 558
	flw		f7, 0(x7)	# 558
	fmul	f3, f3, f7	# 1726
	fadd	f3, f4, f3	# 1726
	fmul	f3, f3, f24	# 126
	fadd	f3, f5, f3	# 1726
	mul		x7, x30, x8	# 1726
	addi	x7, x7, 64364	# 1726
	fsw		f3, 0(x7)	# 1726
	fmul	f1, f1, f9	# 1727
	fmul	f2, f2, f7	# 1727
	fadd	f1, f1, f2	# 1727
	fmul	f1, f1, f24	# 126
	fadd	f1, f6, f1	# 1727
	mul		x7, x30, x6	# 1727
	addi	x7, x7, 64364	# 1727
	fsw		f1, 0(x7)	# 1727
	jal		x0, beq_cont.32396	# 1720
beq.32397:
	mul		x7, x30, x4	# 1721
	addi	x7, x7, 64364	# 1721
	fsw		f4, 0(x7)	# 1721
	mul		x7, x30, x8	# 1722
	addi	x7, x7, 64364	# 1722
	fsw		f5, 0(x7)	# 1722
	mul		x7, x30, x6	# 1723
	addi	x7, x7, 64364	# 1723
	fsw		f6, 0(x7)	# 1723
beq_cont.32396:
	lw		x7, 24(x5)	# 415
	mul		x9, x30, x4	# 325
	addi	x9, x9, 64364	# 325
	flw		f1, 0(x9)	# 325
	fmul	f1, f1, f1	# 127
	mul		x9, x30, x8	# 325
	addi	x9, x9, 64364	# 325
	flw		f2, 0(x9)	# 325
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 325
	mul		x9, x30, x6	# 325
	addi	x9, x9, 64364	# 325
	flw		f2, 0(x9)	# 325
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 325
	fsqrt	f1, f1	# 325
	flw		f2, -52(x2)	# 120
	feq		f1, f2, feq.32399	# 120
	beq		x7, x4, beq.32401	# 326
	lui		x7, %hi(l.26420)	# 326
	ori		x7, x0, %lo(l.26420)	# 326
	flw		f3, 0(x7)	# 326
	fdiv	f1, f3, f1	# 326
	jal		x0, feq_cont.32398	# 326
beq.32401:
	fdiv	f1, f30, f1	# 326
	jal		x0, feq_cont.32398	# 120
feq.32399:
	fadd	f1, f0, f30	# 326
feq_cont.32398:
	mul		x7, x30, x4	# 327
	addi	x7, x7, 64364	# 327
	flw		f3, 0(x7)	# 327
	fmul	f3, f3, f1	# 327
	mul		x7, x30, x4	# 327
	addi	x7, x7, 64364	# 327
	fsw		f3, 0(x7)	# 327
	mul		x7, x30, x8	# 328
	addi	x7, x7, 64364	# 328
	flw		f3, 0(x7)	# 328
	fmul	f3, f3, f1	# 328
	mul		x7, x30, x8	# 328
	addi	x7, x7, 64364	# 328
	fsw		f3, 0(x7)	# 328
	mul		x7, x30, x6	# 329
	addi	x7, x7, 64364	# 329
	flw		f3, 0(x7)	# 329
	fmul	f1, f3, f1	# 329
	mul		x7, x30, x6	# 329
	addi	x7, x7, 64364	# 329
	fsw		f1, 0(x7)	# 329
	jal		x0, beq_cont.32392	# 1737
beq.32395:
	lw		x7, 16(x5)	# 433
	mul		x9, x30, x4	# 438
	add		x7, x7, x9	# 438
	flw		f1, 0(x7)	# 438
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x4	# 1705
	addi	x7, x7, 64364	# 1705
	fsw		f1, 0(x7)	# 1705
	lw		x7, 16(x5)	# 443
	mul		x9, x30, x8	# 448
	add		x7, x7, x9	# 448
	flw		f1, 0(x7)	# 448
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x8	# 1706
	addi	x7, x7, 64364	# 1706
	fsw		f1, 0(x7)	# 1706
	lw		x7, 16(x5)	# 453
	mul		x9, x30, x6	# 458
	add		x7, x7, x9	# 458
	flw		f1, 0(x7)	# 458
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x6	# 1707
	addi	x7, x7, 64364	# 1707
	fsw		f1, 0(x7)	# 1707
	jal		x0, beq_cont.32392	# 1735
beq.32393:
	mul		x7, x30, x4	# 1696
	addi	x7, x7, 64340	# 1696
	lw		x7, 0(x7)	# 1696
	mul		x9, x30, x4	# 289
	addi	x9, x9, 64364	# 289
	flw		f1, -52(x2)	# 289
	fsw		f1, 0(x9)	# 289
	mul		x9, x30, x8	# 290
	addi	x9, x9, 64364	# 290
	fsw		f1, 0(x9)	# 290
	lw		x9, -16(x2)	# 291
	mul		x10, x30, x9	# 291
	addi	x10, x10, 64364	# 291
	fsw		f1, 0(x10)	# 291
	sub		x7, x7, x8	# 1699
	mul		x10, x30, x7	# 1699
	add		x6, x6, x10	# 1699
	flw		f2, 0(x6)	# 1699
	feq		f2, f1, feq.32403	# 120
	fle		f2, f1, fle.32405	# 121
	fadd	f2, f0, f30	# 255
	jal		x0, feq_cont.32402	# 121
fle.32405:
	lui		x6, %hi(l.26420)	# 256
	ori		x6, x0, %lo(l.26420)	# 256
	flw		f2, 0(x6)	# 256
	jal		x0, feq_cont.32402	# 120
feq.32403:
	fadd	f2, f0, f1	# 254
feq_cont.32402:
	fsub	f2, f0, f2	# 123
	mul		x6, x30, x7	# 1699
	addi	x6, x6, 64364	# 1699
	fsw		f2, 0(x6)	# 1699
beq_cont.32392:
	lw		x6, 0(x5)	# 385
	lw		x7, 32(x5)	# 523
	mul		x9, x30, x4	# 528
	add		x7, x7, x9	# 528
	flw		f1, 0(x7)	# 528
	mul		x7, x30, x4	# 1752
	addi	x7, x7, 64376	# 1752
	fsw		f1, 0(x7)	# 1752
	lw		x7, 32(x5)	# 533
	mul		x9, x30, x8	# 538
	add		x7, x7, x9	# 538
	flw		f1, 0(x7)	# 538
	mul		x7, x30, x8	# 1753
	addi	x7, x7, 64376	# 1753
	fsw		f1, 0(x7)	# 1753
	lw		x7, 32(x5)	# 543
	lw		x9, -16(x2)	# 548
	mul		x10, x30, x9	# 548
	add		x7, x7, x10	# 548
	flw		f1, 0(x7)	# 548
	mul		x7, x30, x9	# 1754
	addi	x7, x7, 64376	# 1754
	fsw		f1, 0(x7)	# 1754
	sw		x5, -68(x2)	# 1755
	beq		x6, x8, beq.32407	# 1755
	beq		x6, x9, beq.32409	# 1773
	lw		x7, -40(x2)	# 1780
	beq		x6, x7, beq.32411	# 1780
	addi	x7, x0, 4	# 1791
	beq		x6, x7, beq.32413	# 1791
	jal		x0, beq_cont.32406	# 1791
beq.32413:
	mul		x6, x30, x4	# 1793
	addi	x6, x6, 64348	# 1793
	flw		f1, 0(x6)	# 1793
	lw		x6, 20(x5)	# 473
	mul		x7, x30, x4	# 478
	add		x6, x6, x7	# 478
	flw		f2, 0(x6)	# 478
	fsub	f1, f1, f2	# 1793
	lw		x6, 16(x5)	# 433
	mul		x7, x30, x4	# 438
	add		x6, x6, x7	# 438
	flw		f2, 0(x6)	# 438
	fsqrt	f2, f2	# 1793
	fmul	f1, f1, f2	# 1793
	mul		x6, x30, x9	# 1794
	addi	x6, x6, 64348	# 1794
	flw		f2, 0(x6)	# 1794
	lw		x6, 20(x5)	# 493
	mul		x7, x30, x9	# 498
	add		x6, x6, x7	# 498
	flw		f3, 0(x6)	# 498
	fsub	f2, f2, f3	# 1794
	lw		x6, 16(x5)	# 453
	mul		x7, x30, x9	# 458
	add		x6, x6, x7	# 458
	flw		f3, 0(x6)	# 458
	fsqrt	f3, f3	# 1794
	fmul	f2, f2, f3	# 1794
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1795
	flw		f4, -52(x2)	# 124
	fle		f1, f4, fle.32415	# 124
	fadd	f5, f0, f1	# 124
	jal		x0, fle_cont.32414	# 124
fle.32415:
	fsub	f5, f0, f1	# 124
fle_cont.32414:
	fsw		f3, -72(x2)	# 125
	fle		f28, f5, fle.32417	# 125
	lui		x6, %hi(l.27901)	# 1798
	ori		x6, x0, %lo(l.27901)	# 1798
	flw		f1, 0(x6)	# 1798
	jal		x0, fle_cont.32416	# 125
fle.32417:
	fdiv	f1, f2, f1	# 1800
	fle		f1, f4, fle.32419	# 124
	jal		x0, fle_cont.32418	# 124
fle.32419:
	fsub	f1, f0, f1	# 124
fle_cont.32418:
	lw		x29, -32(x2)	# 1802
	sw		x1, -76(x2)	# 1802
	addi	x2, x2, -80	# 1802
	lw		x31, 0(x29)	# 1802
	jalr	x1, x31, 0	# 1802
	addi	x2, x2, 80	# 1802
	lw		x1, -76(x2)	# 1802
	lui		x4, %hi(l.27903)	# 1802
	ori		x4, x0, %lo(l.27903)	# 1802
	flw		f2, 0(x4)	# 1802
	fmul	f1, f1, f2	# 1802
	lui		x4, %hi(l.27905)	# 1802
	ori		x4, x0, %lo(l.27905)	# 1802
	flw		f2, 0(x4)	# 1802
	fdiv	f1, f1, f2	# 1802
fle_cont.32416:
	fsw		f1, -76(x2)	# 1804
	sw		x1, -80(x2)	# 1804
	addi	x2, x2, -84	# 1804
	jal		x1, min_caml_floor	# 1804
	addi	x2, x2, 84	# 1804
	lw		x1, -80(x2)	# 1804
	flw		f2, -76(x2)	# 1804
	fsub	f1, f2, f1	# 1804
	mul		x4, x30, x8	# 1806
	addi	x4, x4, 64348	# 1806
	flw		f2, 0(x4)	# 1806
	lw		x4, -68(x2)	# 483
	lw		x5, 20(x4)	# 483
	mul		x6, x30, x8	# 488
	add		x5, x5, x6	# 488
	flw		f3, 0(x5)	# 488
	fsub	f2, f2, f3	# 1806
	lw		x5, 16(x4)	# 443
	mul		x6, x30, x8	# 448
	add		x5, x5, x6	# 448
	flw		f3, 0(x5)	# 448
	fsqrt	f3, f3	# 1806
	fmul	f2, f2, f3	# 1806
	flw		f3, -52(x2)	# 124
	flw		f4, -72(x2)	# 124
	fle		f4, f3, fle.32421	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.32420	# 124
fle.32421:
	fsub	f5, f0, f4	# 124
fle_cont.32420:
	fsw		f1, -80(x2)	# 125
	fle		f28, f5, fle.32423	# 125
	lui		x5, %hi(l.27901)	# 1809
	ori		x5, x0, %lo(l.27901)	# 1809
	flw		f1, 0(x5)	# 1809
	jal		x0, fle_cont.32422	# 125
fle.32423:
	fdiv	f2, f2, f4	# 1811
	fle		f2, f3, fle.32425	# 124
	jal		x0, fle_cont.32424	# 124
fle.32425:
	fsub	f2, f0, f2	# 124
fle_cont.32424:
	lw		x29, -32(x2)	# 1812
	fadd	f1, f0, f2	# 1812
	sw		x1, -84(x2)	# 1812
	addi	x2, x2, -88	# 1812
	lw		x31, 0(x29)	# 1812
	jalr	x1, x31, 0	# 1812
	addi	x2, x2, 88	# 1812
	lw		x1, -84(x2)	# 1812
	lui		x4, %hi(l.27903)	# 1812
	ori		x4, x0, %lo(l.27903)	# 1812
	flw		f2, 0(x4)	# 1812
	fmul	f1, f1, f2	# 1812
	lui		x4, %hi(l.27905)	# 1812
	ori		x4, x0, %lo(l.27905)	# 1812
	flw		f2, 0(x4)	# 1812
	fdiv	f1, f1, f2	# 1812
fle_cont.32422:
	fsw		f1, -84(x2)	# 1814
	sw		x1, -88(x2)	# 1814
	addi	x2, x2, -92	# 1814
	jal		x1, min_caml_floor	# 1814
	addi	x2, x2, 92	# 1814
	lw		x1, -88(x2)	# 1814
	flw		f2, -84(x2)	# 1814
	fsub	f1, f2, f1	# 1814
	lui		x4, %hi(l.27916)	# 1815
	ori		x4, x0, %lo(l.27916)	# 1815
	flw		f2, 0(x4)	# 1815
	flw		f4, -80(x2)	# 1815
	fsub	f4, f24, f4	# 1815
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1815
	fsub	f1, f24, f1	# 1815
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1815
	flw		f2, -52(x2)	# 122
	fle		f2, f1, fle_cont.32426	# 122
	fadd	f1, f0, f2	# 1816
	jal		x0, fle_cont.32426	# 122
fle_cont.32426:
	flw		f3, -48(x2)	# 1817
	fmul	f1, f3, f1	# 1817
	lui		x4, %hi(l.27919)	# 1817
	ori		x4, x0, %lo(l.27919)	# 1817
	flw		f3, 0(x4)	# 1817
	fdiv	f1, f1, f3	# 1817
	mul		x4, x30, x9	# 1817
	addi	x4, x4, 64376	# 1817
	fsw		f1, 0(x4)	# 1817
	jal		x0, beq_cont.32406	# 1780
beq.32411:
	mul		x6, x30, x4	# 1783
	addi	x6, x6, 64348	# 1783
	flw		f1, 0(x6)	# 1783
	lw		x6, 20(x5)	# 473
	mul		x7, x30, x4	# 478
	add		x6, x6, x7	# 478
	flw		f2, 0(x6)	# 478
	fsub	f1, f1, f2	# 1783
	mul		x6, x30, x9	# 1784
	addi	x6, x6, 64348	# 1784
	flw		f2, 0(x6)	# 1784
	lw		x6, 20(x5)	# 493
	mul		x7, x30, x9	# 498
	add		x6, x6, x7	# 498
	flw		f3, 0(x6)	# 498
	fsub	f2, f2, f3	# 1784
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1785
	fsqrt	f1, f1	# 1785
	lui		x6, %hi(l.27931)	# 1785
	ori		x6, x0, %lo(l.27931)	# 1785
	flw		f2, 0(x6)	# 1785
	fdiv	f1, f1, f2	# 1785
	fsw		f1, -88(x2)	# 1786
	sw		x1, -92(x2)	# 1786
	addi	x2, x2, -96	# 1786
	jal		x1, min_caml_floor	# 1786
	addi	x2, x2, 96	# 1786
	lw		x1, -92(x2)	# 1786
	flw		f2, -88(x2)	# 1786
	fsub	f1, f2, f1	# 1786
	lui		x4, %hi(l.27905)	# 1786
	ori		x4, x0, %lo(l.27905)	# 1786
	flw		f2, 0(x4)	# 1786
	fmul	f1, f1, f2	# 1786
	lw		x29, -36(x2)	# 1787
	sw		x1, -92(x2)	# 1787
	addi	x2, x2, -96	# 1787
	lw		x31, 0(x29)	# 1787
	jalr	x1, x31, 0	# 1787
	addi	x2, x2, 96	# 1787
	lw		x1, -92(x2)	# 1787
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1788
	fmul	f3, f1, f2	# 1788
	mul		x4, x30, x8	# 1788
	addi	x4, x4, 64376	# 1788
	fsw		f3, 0(x4)	# 1788
	fsub	f1, f30, f1	# 1789
	fmul	f1, f1, f2	# 1789
	mul		x4, x30, x9	# 1789
	addi	x4, x4, 64376	# 1789
	fsw		f1, 0(x4)	# 1789
	jal		x0, beq_cont.32406	# 1773
beq.32409:
	mul		x6, x30, x8	# 1776
	addi	x6, x6, 64348	# 1776
	flw		f1, 0(x6)	# 1776
	lui		x6, %hi(l.27941)	# 1776
	ori		x6, x0, %lo(l.27941)	# 1776
	flw		f2, 0(x6)	# 1776
	fmul	f1, f1, f2	# 1776
	lw		x29, -44(x2)	# 1776
	sw		x1, -92(x2)	# 1776
	addi	x2, x2, -96	# 1776
	lw		x31, 0(x29)	# 1776
	jalr	x1, x31, 0	# 1776
	addi	x2, x2, 96	# 1776
	lw		x1, -92(x2)	# 1776
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1777
	fmul	f3, f2, f1	# 1777
	lw		x4, -64(x2)	# 1777
	mul		x6, x30, x4	# 1777
	addi	x6, x6, 64376	# 1777
	fsw		f3, 0(x6)	# 1777
	fsub	f1, f30, f1	# 1778
	fmul	f1, f2, f1	# 1778
	mul		x6, x30, x8	# 1778
	addi	x6, x6, 64376	# 1778
	fsw		f1, 0(x6)	# 1778
	jal		x0, beq_cont.32406	# 1755
beq.32407:
	mul		x6, x30, x4	# 1758
	addi	x6, x6, 64348	# 1758
	flw		f1, 0(x6)	# 1758
	lw		x6, 20(x5)	# 473
	mul		x7, x30, x4	# 478
	add		x6, x6, x7	# 478
	flw		f2, 0(x6)	# 478
	fsub	f1, f1, f2	# 1758
	fmul	f3, f1, f27	# 1760
	fsw		f27, -92(x2)	# 1760
	fsw		f1, -96(x2)	# 1760
	fadd	f1, f0, f3	# 1760
	sw		x1, -100(x2)	# 1760
	addi	x2, x2, -104	# 1760
	jal		x1, min_caml_floor	# 1760
	addi	x2, x2, 104	# 1760
	lw		x1, -100(x2)	# 1760
	lui		x4, %hi(l.27954)	# 1760
	ori		x4, x0, %lo(l.27954)	# 1760
	flw		f2, 0(x4)	# 1760
	fmul	f1, f1, f2	# 1760
	flw		f3, -96(x2)	# 1761
	fsub	f1, f3, f1	# 1761
	lui		x4, %hi(l.27931)	# 1761
	ori		x4, x0, %lo(l.27931)	# 1761
	flw		f3, 0(x4)	# 1761
	mul		x4, x30, x9	# 1763
	addi	x4, x4, 64348	# 1763
	flw		f4, 0(x4)	# 1763
	lw		x4, -68(x2)	# 493
	lw		x5, 20(x4)	# 493
	mul		x6, x30, x9	# 498
	add		x5, x5, x6	# 498
	flw		f5, 0(x5)	# 498
	fsub	f4, f4, f5	# 1763
	flw		f5, -92(x2)	# 1765
	fmul	f5, f4, f5	# 1765
	fsw		f1, -100(x2)	# 1765
	fsw		f2, -104(x2)	# 1765
	fadd	f1, f0, f5	# 1765
	sw		x1, -108(x2)	# 1765
	addi	x2, x2, -112	# 1765
	jal		x1, min_caml_floor	# 1765
	addi	x2, x2, 112	# 1765
	lw		x1, -108(x2)	# 1765
	flw		f2, -104(x2)	# 1765
	fmul	f1, f1, f2	# 1765
	fsub	f1, f4, f1	# 1766
	flw		f2, -100(x2)	# 125
	fle		f3, f2, fle.32429	# 125
	fle		f3, f1, fle.32431	# 125
	flw		f1, -48(x2)	# 1770
	jal		x0, fle_cont.32428	# 125
fle.32431:
	flw		f1, -52(x2)	# 1770
	jal		x0, fle_cont.32428	# 125
fle.32429:
	fle		f3, f1, fle.32433	# 125
	flw		f1, -52(x2)	# 1771
	jal		x0, fle_cont.32428	# 125
fle.32433:
	flw		f1, -48(x2)	# 1771
fle_cont.32428:
	mul		x4, x30, x8	# 1768
	addi	x4, x4, 64376	# 1768
	fsw		f1, 0(x4)	# 1768
beq_cont.32406:
	lw		x4, -64(x2)	# 1975
	mul		x5, x30, x4	# 1975
	addi	x5, x5, 64332	# 1975
	lw		x5, 0(x5)	# 1975
	lw		x29, -28(x2)	# 1975
	sw		x1, -108(x2)	# 1975
	addi	x2, x2, -112	# 1975
	lw		x31, 0(x29)	# 1975
	jalr	x1, x31, 0	# 1975
	addi	x2, x2, 112	# 1975
	lw		x1, -108(x2)	# 1975
	lw		x5, -64(x2)	# 1975
	beq		x4, x5, beq.32435	# 1975
	jal		x0, fle_cont.32384	# 1975
beq.32435:
	mul		x4, x30, x5	# 334
	addi	x4, x4, 64364	# 334
	flw		f1, 0(x4)	# 334
	mul		x4, x30, x5	# 334
	addi	x4, x4, 64108	# 334
	flw		f2, 0(x4)	# 334
	fmul	f1, f1, f2	# 334
	lw		x4, -56(x2)	# 334
	mul		x6, x30, x4	# 334
	addi	x6, x6, 64364	# 334
	flw		f2, 0(x6)	# 334
	mul		x6, x30, x4	# 334
	addi	x6, x6, 64108	# 334
	flw		f3, 0(x6)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	lw		x6, -16(x2)	# 334
	mul		x7, x30, x6	# 334
	addi	x7, x7, 64364	# 334
	flw		f2, 0(x7)	# 334
	mul		x7, x30, x6	# 334
	addi	x7, x7, 64108	# 334
	flw		f3, 0(x7)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	fsub	f1, f0, f1	# 123
	flw		f2, -52(x2)	# 121
	fle		f1, f2, fle.32437	# 121
	jal		x0, fle_cont.32436	# 121
fle.32437:
	fadd	f1, f0, f2	# 1977
fle_cont.32436:
	flw		f2, -24(x2)	# 1978
	fmul	f1, f2, f1	# 1978
	lw		x7, -68(x2)	# 503
	lw		x7, 28(x7)	# 503
	mul		x8, x30, x5	# 508
	add		x7, x7, x8	# 508
	flw		f2, 0(x7)	# 508
	fmul	f1, f1, f2	# 1978
	mul		x7, x30, x5	# 344
	addi	x7, x7, 64388	# 344
	flw		f2, 0(x7)	# 344
	mul		x7, x30, x5	# 344
	addi	x7, x7, 64376	# 344
	flw		f3, 0(x7)	# 344
	fmul	f3, f1, f3	# 344
	fadd	f2, f2, f3	# 344
	mul		x5, x30, x5	# 344
	addi	x5, x5, 64388	# 344
	fsw		f2, 0(x5)	# 344
	mul		x5, x30, x4	# 345
	addi	x5, x5, 64388	# 345
	flw		f2, 0(x5)	# 345
	mul		x5, x30, x4	# 345
	addi	x5, x5, 64376	# 345
	flw		f3, 0(x5)	# 345
	fmul	f3, f1, f3	# 345
	fadd	f2, f2, f3	# 345
	mul		x4, x30, x4	# 345
	addi	x4, x4, 64388	# 345
	fsw		f2, 0(x4)	# 345
	mul		x4, x30, x6	# 346
	addi	x4, x4, 64388	# 346
	flw		f2, 0(x4)	# 346
	mul		x4, x30, x6	# 346
	addi	x4, x4, 64376	# 346
	flw		f3, 0(x4)	# 346
	fmul	f1, f1, f3	# 346
	fadd	f1, f2, f1	# 346
	mul		x4, x30, x6	# 346
	addi	x4, x4, 64388	# 346
	fsw		f1, 0(x4)	# 346
	jal		x0, fle_cont.32384	# 1969
	jal		x0, fle_cont.32384	# 122
fle.32385:
	fdiv	f4, f4, f22	# 1994
	mul		x18, x30, x15	# 1676
	addi	x18, x18, 64344	# 1676
	fsw		f1, 0(x18)	# 1676
	mul		x18, x30, x15	# 1677
	addi	x18, x18, 64332	# 1677
	lw		x18, 0(x18)	# 1677
	fsw		f4, -108(x2)	# 1677
	sw		x10, -28(x2)	# 1677
	sw		x12, -32(x2)	# 1677
	sw		x11, -36(x2)	# 1677
	sw		x14, -40(x2)	# 1677
	sw		x9, -44(x2)	# 1677
	fsw		f2, -48(x2)	# 1677
	fsw		f3, -52(x2)	# 1677
	sw		x16, -56(x2)	# 1677
	sw		x17, -112(x2)	# 1677
	sw		x15, -64(x2)	# 1677
	addi	x6, x17, 0	# 1677
	addi	x5, x18, 0	# 1677
	addi	x4, x15, 0	# 1677
	addi	x29, x8, 0	# 1677
	sw		x1, -116(x2)	# 1677
	addi	x2, x2, -120	# 1677
	lw		x31, 0(x29)	# 1677
	jalr	x1, x31, 0	# 1677
	addi	x2, x2, 120	# 1677
	lw		x1, -116(x2)	# 1677
	lw		x4, -64(x2)	# 1678
	mul		x5, x30, x4	# 1678
	addi	x5, x5, 64344	# 1678
	flw		f1, 0(x5)	# 1678
	fle		f1, f20, fle.32439	# 125
	fle		f21, f1, fle.32441	# 125
	addi	x5, x0, 1	# 125
	jal		x0, fle_cont.32438	# 125
fle.32441:
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32438	# 125
fle.32439:
	addi	x5, x0, 0	# 1682
fle_cont.32438:
	beq		x5, x4, fle_cont.32384	# 1969
	mul		x5, x30, x4	# 1970
	addi	x5, x5, 64360	# 1970
	lw		x5, 0(x5)	# 1970
	mul		x5, x30, x5	# 1970
	addi	x5, x5, 63844	# 1970
	lw		x5, 0(x5)	# 1970
	lw		x6, -112(x2)	# 681
	lw		x6, 0(x6)	# 681
	lw		x7, 4(x5)	# 395
	lw		x8, -56(x2)	# 1735
	beq		x7, x8, beq.32445	# 1735
	lw		x6, -16(x2)	# 1737
	beq		x7, x6, beq.32447	# 1737
	mul		x7, x30, x4	# 1712
	addi	x7, x7, 64348	# 1712
	flw		f1, 0(x7)	# 1712
	lw		x7, 20(x5)	# 473
	mul		x9, x30, x4	# 478
	add		x7, x7, x9	# 478
	flw		f2, 0(x7)	# 478
	fsub	f1, f1, f2	# 1712
	mul		x7, x30, x8	# 1713
	addi	x7, x7, 64348	# 1713
	flw		f2, 0(x7)	# 1713
	lw		x7, 20(x5)	# 483
	mul		x9, x30, x8	# 488
	add		x7, x7, x9	# 488
	flw		f3, 0(x7)	# 488
	fsub	f2, f2, f3	# 1713
	mul		x7, x30, x6	# 1714
	addi	x7, x7, 64348	# 1714
	flw		f3, 0(x7)	# 1714
	lw		x7, 20(x5)	# 493
	mul		x9, x30, x6	# 498
	add		x7, x7, x9	# 498
	flw		f4, 0(x7)	# 498
	fsub	f3, f3, f4	# 1714
	lw		x7, 16(x5)	# 433
	mul		x9, x30, x4	# 438
	add		x7, x7, x9	# 438
	flw		f4, 0(x7)	# 438
	fmul	f4, f1, f4	# 1716
	lw		x7, 16(x5)	# 443
	mul		x9, x30, x8	# 448
	add		x7, x7, x9	# 448
	flw		f5, 0(x7)	# 448
	fmul	f5, f2, f5	# 1717
	lw		x7, 16(x5)	# 453
	mul		x9, x30, x6	# 458
	add		x7, x7, x9	# 458
	flw		f6, 0(x7)	# 458
	fmul	f6, f3, f6	# 1718
	lw		x7, 12(x5)	# 424
	beq		x7, x4, beq.32449	# 1720
	lw		x7, 36(x5)	# 573
	mul		x9, x30, x6	# 578
	add		x7, x7, x9	# 578
	flw		f7, 0(x7)	# 578
	fmul	f8, f2, f7	# 1725
	lw		x7, 36(x5)	# 563
	mul		x9, x30, x8	# 568
	add		x7, x7, x9	# 568
	flw		f9, 0(x7)	# 568
	fmul	f10, f3, f9	# 1725
	fadd	f8, f8, f10	# 1725
	fmul	f8, f8, f24	# 126
	fadd	f4, f4, f8	# 1725
	mul		x7, x30, x4	# 1725
	addi	x7, x7, 64364	# 1725
	fsw		f4, 0(x7)	# 1725
	fmul	f4, f1, f7	# 1726
	lw		x7, 36(x5)	# 553
	mul		x9, x30, x4	# 558
	add		x7, x7, x9	# 558
	flw		f7, 0(x7)	# 558
	fmul	f3, f3, f7	# 1726
	fadd	f3, f4, f3	# 1726
	fmul	f3, f3, f24	# 126
	fadd	f3, f5, f3	# 1726
	mul		x7, x30, x8	# 1726
	addi	x7, x7, 64364	# 1726
	fsw		f3, 0(x7)	# 1726
	fmul	f1, f1, f9	# 1727
	fmul	f2, f2, f7	# 1727
	fadd	f1, f1, f2	# 1727
	fmul	f1, f1, f24	# 126
	fadd	f1, f6, f1	# 1727
	mul		x7, x30, x6	# 1727
	addi	x7, x7, 64364	# 1727
	fsw		f1, 0(x7)	# 1727
	jal		x0, beq_cont.32448	# 1720
beq.32449:
	mul		x7, x30, x4	# 1721
	addi	x7, x7, 64364	# 1721
	fsw		f4, 0(x7)	# 1721
	mul		x7, x30, x8	# 1722
	addi	x7, x7, 64364	# 1722
	fsw		f5, 0(x7)	# 1722
	mul		x7, x30, x6	# 1723
	addi	x7, x7, 64364	# 1723
	fsw		f6, 0(x7)	# 1723
beq_cont.32448:
	lw		x7, 24(x5)	# 415
	mul		x9, x30, x4	# 325
	addi	x9, x9, 64364	# 325
	flw		f1, 0(x9)	# 325
	fmul	f1, f1, f1	# 127
	mul		x9, x30, x8	# 325
	addi	x9, x9, 64364	# 325
	flw		f2, 0(x9)	# 325
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 325
	mul		x9, x30, x6	# 325
	addi	x9, x9, 64364	# 325
	flw		f2, 0(x9)	# 325
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 325
	fsqrt	f1, f1	# 325
	flw		f2, -52(x2)	# 120
	feq		f1, f2, feq.32451	# 120
	beq		x7, x4, beq.32453	# 326
	lui		x7, %hi(l.26420)	# 326
	ori		x7, x0, %lo(l.26420)	# 326
	flw		f3, 0(x7)	# 326
	fdiv	f1, f3, f1	# 326
	jal		x0, feq_cont.32450	# 326
beq.32453:
	fdiv	f1, f30, f1	# 326
	jal		x0, feq_cont.32450	# 120
feq.32451:
	fadd	f1, f0, f30	# 326
feq_cont.32450:
	mul		x7, x30, x4	# 327
	addi	x7, x7, 64364	# 327
	flw		f3, 0(x7)	# 327
	fmul	f3, f3, f1	# 327
	mul		x7, x30, x4	# 327
	addi	x7, x7, 64364	# 327
	fsw		f3, 0(x7)	# 327
	mul		x7, x30, x8	# 328
	addi	x7, x7, 64364	# 328
	flw		f3, 0(x7)	# 328
	fmul	f3, f3, f1	# 328
	mul		x7, x30, x8	# 328
	addi	x7, x7, 64364	# 328
	fsw		f3, 0(x7)	# 328
	mul		x7, x30, x6	# 329
	addi	x7, x7, 64364	# 329
	flw		f3, 0(x7)	# 329
	fmul	f1, f3, f1	# 329
	mul		x7, x30, x6	# 329
	addi	x7, x7, 64364	# 329
	fsw		f1, 0(x7)	# 329
	jal		x0, beq_cont.32444	# 1737
beq.32447:
	lw		x7, 16(x5)	# 433
	mul		x9, x30, x4	# 438
	add		x7, x7, x9	# 438
	flw		f1, 0(x7)	# 438
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x4	# 1705
	addi	x7, x7, 64364	# 1705
	fsw		f1, 0(x7)	# 1705
	lw		x7, 16(x5)	# 443
	mul		x9, x30, x8	# 448
	add		x7, x7, x9	# 448
	flw		f1, 0(x7)	# 448
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x8	# 1706
	addi	x7, x7, 64364	# 1706
	fsw		f1, 0(x7)	# 1706
	lw		x7, 16(x5)	# 453
	mul		x9, x30, x6	# 458
	add		x7, x7, x9	# 458
	flw		f1, 0(x7)	# 458
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x6	# 1707
	addi	x7, x7, 64364	# 1707
	fsw		f1, 0(x7)	# 1707
	jal		x0, beq_cont.32444	# 1735
beq.32445:
	mul		x7, x30, x4	# 1696
	addi	x7, x7, 64340	# 1696
	lw		x7, 0(x7)	# 1696
	mul		x9, x30, x4	# 289
	addi	x9, x9, 64364	# 289
	flw		f1, -52(x2)	# 289
	fsw		f1, 0(x9)	# 289
	mul		x9, x30, x8	# 290
	addi	x9, x9, 64364	# 290
	fsw		f1, 0(x9)	# 290
	lw		x9, -16(x2)	# 291
	mul		x10, x30, x9	# 291
	addi	x10, x10, 64364	# 291
	fsw		f1, 0(x10)	# 291
	sub		x7, x7, x8	# 1699
	mul		x10, x30, x7	# 1699
	add		x6, x6, x10	# 1699
	flw		f2, 0(x6)	# 1699
	feq		f2, f1, feq.32455	# 120
	fle		f2, f1, fle.32457	# 121
	fadd	f2, f0, f30	# 255
	jal		x0, feq_cont.32454	# 121
fle.32457:
	lui		x6, %hi(l.26420)	# 256
	ori		x6, x0, %lo(l.26420)	# 256
	flw		f2, 0(x6)	# 256
	jal		x0, feq_cont.32454	# 120
feq.32455:
	fadd	f2, f0, f1	# 254
feq_cont.32454:
	fsub	f2, f0, f2	# 123
	mul		x6, x30, x7	# 1699
	addi	x6, x6, 64364	# 1699
	fsw		f2, 0(x6)	# 1699
beq_cont.32444:
	lw		x6, 0(x5)	# 385
	lw		x7, 32(x5)	# 523
	mul		x9, x30, x4	# 528
	add		x7, x7, x9	# 528
	flw		f1, 0(x7)	# 528
	mul		x7, x30, x4	# 1752
	addi	x7, x7, 64376	# 1752
	fsw		f1, 0(x7)	# 1752
	lw		x7, 32(x5)	# 533
	mul		x9, x30, x8	# 538
	add		x7, x7, x9	# 538
	flw		f1, 0(x7)	# 538
	mul		x7, x30, x8	# 1753
	addi	x7, x7, 64376	# 1753
	fsw		f1, 0(x7)	# 1753
	lw		x7, 32(x5)	# 543
	lw		x9, -16(x2)	# 548
	mul		x10, x30, x9	# 548
	add		x7, x7, x10	# 548
	flw		f1, 0(x7)	# 548
	mul		x7, x30, x9	# 1754
	addi	x7, x7, 64376	# 1754
	fsw		f1, 0(x7)	# 1754
	sw		x5, -116(x2)	# 1755
	beq		x6, x8, beq.32459	# 1755
	beq		x6, x9, beq.32461	# 1773
	lw		x7, -40(x2)	# 1780
	beq		x6, x7, beq.32463	# 1780
	addi	x7, x0, 4	# 1791
	beq		x6, x7, beq.32465	# 1791
	jal		x0, beq_cont.32458	# 1791
beq.32465:
	mul		x6, x30, x4	# 1793
	addi	x6, x6, 64348	# 1793
	flw		f1, 0(x6)	# 1793
	lw		x6, 20(x5)	# 473
	mul		x7, x30, x4	# 478
	add		x6, x6, x7	# 478
	flw		f2, 0(x6)	# 478
	fsub	f1, f1, f2	# 1793
	lw		x6, 16(x5)	# 433
	mul		x7, x30, x4	# 438
	add		x6, x6, x7	# 438
	flw		f2, 0(x6)	# 438
	fsqrt	f2, f2	# 1793
	fmul	f1, f1, f2	# 1793
	mul		x6, x30, x9	# 1794
	addi	x6, x6, 64348	# 1794
	flw		f2, 0(x6)	# 1794
	lw		x6, 20(x5)	# 493
	mul		x7, x30, x9	# 498
	add		x6, x6, x7	# 498
	flw		f3, 0(x6)	# 498
	fsub	f2, f2, f3	# 1794
	lw		x6, 16(x5)	# 453
	mul		x7, x30, x9	# 458
	add		x6, x6, x7	# 458
	flw		f3, 0(x6)	# 458
	fsqrt	f3, f3	# 1794
	fmul	f2, f2, f3	# 1794
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1795
	flw		f4, -52(x2)	# 124
	fle		f1, f4, fle.32467	# 124
	fadd	f5, f0, f1	# 124
	jal		x0, fle_cont.32466	# 124
fle.32467:
	fsub	f5, f0, f1	# 124
fle_cont.32466:
	fsw		f3, -120(x2)	# 125
	fle		f28, f5, fle.32469	# 125
	lui		x6, %hi(l.27901)	# 1798
	ori		x6, x0, %lo(l.27901)	# 1798
	flw		f1, 0(x6)	# 1798
	jal		x0, fle_cont.32468	# 125
fle.32469:
	fdiv	f1, f2, f1	# 1800
	fle		f1, f4, fle.32471	# 124
	jal		x0, fle_cont.32470	# 124
fle.32471:
	fsub	f1, f0, f1	# 124
fle_cont.32470:
	lw		x29, -32(x2)	# 1802
	sw		x1, -124(x2)	# 1802
	addi	x2, x2, -128	# 1802
	lw		x31, 0(x29)	# 1802
	jalr	x1, x31, 0	# 1802
	addi	x2, x2, 128	# 1802
	lw		x1, -124(x2)	# 1802
	lui		x4, %hi(l.27903)	# 1802
	ori		x4, x0, %lo(l.27903)	# 1802
	flw		f2, 0(x4)	# 1802
	fmul	f1, f1, f2	# 1802
	lui		x4, %hi(l.27905)	# 1802
	ori		x4, x0, %lo(l.27905)	# 1802
	flw		f2, 0(x4)	# 1802
	fdiv	f1, f1, f2	# 1802
fle_cont.32468:
	fsw		f1, -124(x2)	# 1804
	sw		x1, -128(x2)	# 1804
	addi	x2, x2, -132	# 1804
	jal		x1, min_caml_floor	# 1804
	addi	x2, x2, 132	# 1804
	lw		x1, -128(x2)	# 1804
	flw		f2, -124(x2)	# 1804
	fsub	f1, f2, f1	# 1804
	mul		x4, x30, x8	# 1806
	addi	x4, x4, 64348	# 1806
	flw		f2, 0(x4)	# 1806
	lw		x4, -116(x2)	# 483
	lw		x5, 20(x4)	# 483
	mul		x6, x30, x8	# 488
	add		x5, x5, x6	# 488
	flw		f3, 0(x5)	# 488
	fsub	f2, f2, f3	# 1806
	lw		x5, 16(x4)	# 443
	mul		x6, x30, x8	# 448
	add		x5, x5, x6	# 448
	flw		f3, 0(x5)	# 448
	fsqrt	f3, f3	# 1806
	fmul	f2, f2, f3	# 1806
	flw		f3, -52(x2)	# 124
	flw		f4, -120(x2)	# 124
	fle		f4, f3, fle.32473	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.32472	# 124
fle.32473:
	fsub	f5, f0, f4	# 124
fle_cont.32472:
	fsw		f1, -128(x2)	# 125
	fle		f28, f5, fle.32475	# 125
	lui		x5, %hi(l.27901)	# 1809
	ori		x5, x0, %lo(l.27901)	# 1809
	flw		f1, 0(x5)	# 1809
	jal		x0, fle_cont.32474	# 125
fle.32475:
	fdiv	f2, f2, f4	# 1811
	fle		f2, f3, fle.32477	# 124
	jal		x0, fle_cont.32476	# 124
fle.32477:
	fsub	f2, f0, f2	# 124
fle_cont.32476:
	lw		x29, -32(x2)	# 1812
	fadd	f1, f0, f2	# 1812
	sw		x1, -132(x2)	# 1812
	addi	x2, x2, -136	# 1812
	lw		x31, 0(x29)	# 1812
	jalr	x1, x31, 0	# 1812
	addi	x2, x2, 136	# 1812
	lw		x1, -132(x2)	# 1812
	lui		x4, %hi(l.27903)	# 1812
	ori		x4, x0, %lo(l.27903)	# 1812
	flw		f2, 0(x4)	# 1812
	fmul	f1, f1, f2	# 1812
	lui		x4, %hi(l.27905)	# 1812
	ori		x4, x0, %lo(l.27905)	# 1812
	flw		f2, 0(x4)	# 1812
	fdiv	f1, f1, f2	# 1812
fle_cont.32474:
	fsw		f1, -132(x2)	# 1814
	sw		x1, -136(x2)	# 1814
	addi	x2, x2, -140	# 1814
	jal		x1, min_caml_floor	# 1814
	addi	x2, x2, 140	# 1814
	lw		x1, -136(x2)	# 1814
	flw		f2, -132(x2)	# 1814
	fsub	f1, f2, f1	# 1814
	lui		x4, %hi(l.27916)	# 1815
	ori		x4, x0, %lo(l.27916)	# 1815
	flw		f2, 0(x4)	# 1815
	flw		f4, -128(x2)	# 1815
	fsub	f4, f24, f4	# 1815
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1815
	fsub	f1, f24, f1	# 1815
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1815
	flw		f2, -52(x2)	# 122
	fle		f2, f1, fle_cont.32478	# 122
	fadd	f1, f0, f2	# 1816
	jal		x0, fle_cont.32478	# 122
fle_cont.32478:
	flw		f3, -48(x2)	# 1817
	fmul	f1, f3, f1	# 1817
	lui		x4, %hi(l.27919)	# 1817
	ori		x4, x0, %lo(l.27919)	# 1817
	flw		f3, 0(x4)	# 1817
	fdiv	f1, f1, f3	# 1817
	mul		x4, x30, x9	# 1817
	addi	x4, x4, 64376	# 1817
	fsw		f1, 0(x4)	# 1817
	jal		x0, beq_cont.32458	# 1780
beq.32463:
	mul		x6, x30, x4	# 1783
	addi	x6, x6, 64348	# 1783
	flw		f1, 0(x6)	# 1783
	lw		x6, 20(x5)	# 473
	mul		x7, x30, x4	# 478
	add		x6, x6, x7	# 478
	flw		f2, 0(x6)	# 478
	fsub	f1, f1, f2	# 1783
	mul		x6, x30, x9	# 1784
	addi	x6, x6, 64348	# 1784
	flw		f2, 0(x6)	# 1784
	lw		x6, 20(x5)	# 493
	mul		x7, x30, x9	# 498
	add		x6, x6, x7	# 498
	flw		f3, 0(x6)	# 498
	fsub	f2, f2, f3	# 1784
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1785
	fsqrt	f1, f1	# 1785
	lui		x6, %hi(l.27931)	# 1785
	ori		x6, x0, %lo(l.27931)	# 1785
	flw		f2, 0(x6)	# 1785
	fdiv	f1, f1, f2	# 1785
	fsw		f1, -136(x2)	# 1786
	sw		x1, -140(x2)	# 1786
	addi	x2, x2, -144	# 1786
	jal		x1, min_caml_floor	# 1786
	addi	x2, x2, 144	# 1786
	lw		x1, -140(x2)	# 1786
	flw		f2, -136(x2)	# 1786
	fsub	f1, f2, f1	# 1786
	lui		x4, %hi(l.27905)	# 1786
	ori		x4, x0, %lo(l.27905)	# 1786
	flw		f2, 0(x4)	# 1786
	fmul	f1, f1, f2	# 1786
	lw		x29, -36(x2)	# 1787
	sw		x1, -140(x2)	# 1787
	addi	x2, x2, -144	# 1787
	lw		x31, 0(x29)	# 1787
	jalr	x1, x31, 0	# 1787
	addi	x2, x2, 144	# 1787
	lw		x1, -140(x2)	# 1787
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1788
	fmul	f3, f1, f2	# 1788
	mul		x4, x30, x8	# 1788
	addi	x4, x4, 64376	# 1788
	fsw		f3, 0(x4)	# 1788
	fsub	f1, f30, f1	# 1789
	fmul	f1, f1, f2	# 1789
	mul		x4, x30, x9	# 1789
	addi	x4, x4, 64376	# 1789
	fsw		f1, 0(x4)	# 1789
	jal		x0, beq_cont.32458	# 1773
beq.32461:
	mul		x6, x30, x8	# 1776
	addi	x6, x6, 64348	# 1776
	flw		f1, 0(x6)	# 1776
	lui		x6, %hi(l.27941)	# 1776
	ori		x6, x0, %lo(l.27941)	# 1776
	flw		f2, 0(x6)	# 1776
	fmul	f1, f1, f2	# 1776
	lw		x29, -44(x2)	# 1776
	sw		x1, -140(x2)	# 1776
	addi	x2, x2, -144	# 1776
	lw		x31, 0(x29)	# 1776
	jalr	x1, x31, 0	# 1776
	addi	x2, x2, 144	# 1776
	lw		x1, -140(x2)	# 1776
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1777
	fmul	f3, f2, f1	# 1777
	lw		x4, -64(x2)	# 1777
	mul		x6, x30, x4	# 1777
	addi	x6, x6, 64376	# 1777
	fsw		f3, 0(x6)	# 1777
	fsub	f1, f30, f1	# 1778
	fmul	f1, f2, f1	# 1778
	mul		x6, x30, x8	# 1778
	addi	x6, x6, 64376	# 1778
	fsw		f1, 0(x6)	# 1778
	jal		x0, beq_cont.32458	# 1755
beq.32459:
	mul		x6, x30, x4	# 1758
	addi	x6, x6, 64348	# 1758
	flw		f1, 0(x6)	# 1758
	lw		x6, 20(x5)	# 473
	mul		x7, x30, x4	# 478
	add		x6, x6, x7	# 478
	flw		f2, 0(x6)	# 478
	fsub	f1, f1, f2	# 1758
	fmul	f3, f1, f27	# 1760
	fsw		f27, -140(x2)	# 1760
	fsw		f1, -144(x2)	# 1760
	fadd	f1, f0, f3	# 1760
	sw		x1, -148(x2)	# 1760
	addi	x2, x2, -152	# 1760
	jal		x1, min_caml_floor	# 1760
	addi	x2, x2, 152	# 1760
	lw		x1, -148(x2)	# 1760
	lui		x4, %hi(l.27954)	# 1760
	ori		x4, x0, %lo(l.27954)	# 1760
	flw		f2, 0(x4)	# 1760
	fmul	f1, f1, f2	# 1760
	flw		f3, -144(x2)	# 1761
	fsub	f1, f3, f1	# 1761
	lui		x4, %hi(l.27931)	# 1761
	ori		x4, x0, %lo(l.27931)	# 1761
	flw		f3, 0(x4)	# 1761
	mul		x4, x30, x9	# 1763
	addi	x4, x4, 64348	# 1763
	flw		f4, 0(x4)	# 1763
	lw		x4, -116(x2)	# 493
	lw		x5, 20(x4)	# 493
	mul		x6, x30, x9	# 498
	add		x5, x5, x6	# 498
	flw		f5, 0(x5)	# 498
	fsub	f4, f4, f5	# 1763
	flw		f5, -140(x2)	# 1765
	fmul	f5, f4, f5	# 1765
	fsw		f1, -148(x2)	# 1765
	fsw		f2, -152(x2)	# 1765
	fadd	f1, f0, f5	# 1765
	sw		x1, -156(x2)	# 1765
	addi	x2, x2, -160	# 1765
	jal		x1, min_caml_floor	# 1765
	addi	x2, x2, 160	# 1765
	lw		x1, -156(x2)	# 1765
	flw		f2, -152(x2)	# 1765
	fmul	f1, f1, f2	# 1765
	fsub	f1, f4, f1	# 1766
	flw		f2, -148(x2)	# 125
	fle		f3, f2, fle.32481	# 125
	fle		f3, f1, fle.32483	# 125
	flw		f1, -48(x2)	# 1770
	jal		x0, fle_cont.32480	# 125
fle.32483:
	flw		f1, -52(x2)	# 1770
	jal		x0, fle_cont.32480	# 125
fle.32481:
	fle		f3, f1, fle.32485	# 125
	flw		f1, -52(x2)	# 1771
	jal		x0, fle_cont.32480	# 125
fle.32485:
	flw		f1, -48(x2)	# 1771
fle_cont.32480:
	mul		x4, x30, x8	# 1768
	addi	x4, x4, 64376	# 1768
	fsw		f1, 0(x4)	# 1768
beq_cont.32458:
	lw		x4, -64(x2)	# 1975
	mul		x5, x30, x4	# 1975
	addi	x5, x5, 64332	# 1975
	lw		x5, 0(x5)	# 1975
	lw		x29, -28(x2)	# 1975
	sw		x1, -156(x2)	# 1975
	addi	x2, x2, -160	# 1975
	lw		x31, 0(x29)	# 1975
	jalr	x1, x31, 0	# 1975
	addi	x2, x2, 160	# 1975
	lw		x1, -156(x2)	# 1975
	lw		x5, -64(x2)	# 1975
	beq		x4, x5, beq.32487	# 1975
	jal		x0, fle_cont.32384	# 1975
beq.32487:
	mul		x4, x30, x5	# 334
	addi	x4, x4, 64364	# 334
	flw		f1, 0(x4)	# 334
	mul		x4, x30, x5	# 334
	addi	x4, x4, 64108	# 334
	flw		f2, 0(x4)	# 334
	fmul	f1, f1, f2	# 334
	lw		x4, -56(x2)	# 334
	mul		x6, x30, x4	# 334
	addi	x6, x6, 64364	# 334
	flw		f2, 0(x6)	# 334
	mul		x6, x30, x4	# 334
	addi	x6, x6, 64108	# 334
	flw		f3, 0(x6)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	lw		x6, -16(x2)	# 334
	mul		x7, x30, x6	# 334
	addi	x7, x7, 64364	# 334
	flw		f2, 0(x7)	# 334
	mul		x7, x30, x6	# 334
	addi	x7, x7, 64108	# 334
	flw		f3, 0(x7)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	fsub	f1, f0, f1	# 123
	flw		f2, -52(x2)	# 121
	fle		f1, f2, fle.32489	# 121
	jal		x0, fle_cont.32488	# 121
fle.32489:
	fadd	f1, f0, f2	# 1977
fle_cont.32488:
	flw		f2, -108(x2)	# 1978
	fmul	f1, f2, f1	# 1978
	lw		x7, -116(x2)	# 503
	lw		x7, 28(x7)	# 503
	mul		x8, x30, x5	# 508
	add		x7, x7, x8	# 508
	flw		f2, 0(x7)	# 508
	fmul	f1, f1, f2	# 1978
	mul		x7, x30, x5	# 344
	addi	x7, x7, 64388	# 344
	flw		f2, 0(x7)	# 344
	mul		x7, x30, x5	# 344
	addi	x7, x7, 64376	# 344
	flw		f3, 0(x7)	# 344
	fmul	f3, f1, f3	# 344
	fadd	f2, f2, f3	# 344
	mul		x5, x30, x5	# 344
	addi	x5, x5, 64388	# 344
	fsw		f2, 0(x5)	# 344
	mul		x5, x30, x4	# 345
	addi	x5, x5, 64388	# 345
	flw		f2, 0(x5)	# 345
	mul		x5, x30, x4	# 345
	addi	x5, x5, 64376	# 345
	flw		f3, 0(x5)	# 345
	fmul	f3, f1, f3	# 345
	fadd	f2, f2, f3	# 345
	mul		x4, x30, x4	# 345
	addi	x4, x4, 64388	# 345
	fsw		f2, 0(x4)	# 345
	mul		x4, x30, x6	# 346
	addi	x4, x4, 64388	# 346
	flw		f2, 0(x4)	# 346
	mul		x4, x30, x6	# 346
	addi	x4, x4, 64376	# 346
	flw		f3, 0(x4)	# 346
	fmul	f1, f1, f3	# 346
	fadd	f1, f2, f1	# 346
	mul		x4, x30, x6	# 346
	addi	x4, x4, 64388	# 346
	fsw		f1, 0(x4)	# 346
	jal		x0, fle_cont.32384	# 1969
fle_cont.32384:
	lw		x4, -20(x2)	# 1996
	lw		x5, -16(x2)	# 1996
	sub		x7, x4, x5	# 1996
	lw		x4, -8(x2)	# 1996
	lw		x5, -4(x2)	# 1996
	lw		x6, 0(x2)	# 1996
	lw		x29, -12(x2)	# 1996
	lw		x31, 0(x29)	# 1996
	jalr	x0, x31, 0	# 1996
do_without_neighbors.2914.18028:
	lw		x6, 24(x29)	# 2077
	lw		x7, 20(x29)	# 2077
	lw		x8, 16(x29)	# 2077
	lw		x9, 12(x29)	# 2077
	lw		x10, 8(x29)	# 2077
	lw		x11, 4(x29)	# 2077
	addi	x12, x0, 4	# 2077
	ble		x5, x12, ble.32490	# 2077
	jalr	x0, x1, 0	# 2087
ble.32490:
	lw		x13, 8(x4)	# 619
	mul		x14, x30, x5	# 2080
	add		x13, x13, x14	# 2080
	lw		x13, 0(x13)	# 2080
	ble		x10, x13, ble.32492	# 2080
	jalr	x0, x1, 0	# 2086
ble.32492:
	lw		x13, 12(x4)	# 626
	mul		x14, x30, x5	# 2082
	add		x13, x13, x14	# 2082
	lw		x13, 0(x13)	# 2082
	sw		x4, 0(x2)	# 2082
	sw		x29, -4(x2)	# 2082
	sw		x11, -8(x2)	# 2082
	sw		x5, -12(x2)	# 2082
	beq		x13, x10, beq_cont.32494	# 2082
	lw		x13, 20(x4)	# 640
	lw		x14, 28(x4)	# 670
	lw		x15, 4(x4)	# 611
	lw		x16, 16(x4)	# 633
	mul		x17, x30, x5	# 2044
	add		x13, x13, x17	# 2044
	lw		x13, 0(x13)	# 2044
	mul		x17, x30, x10	# 301
	add		x17, x13, x17	# 301
	flw		f1, 0(x17)	# 301
	mul		x17, x30, x10	# 301
	addi	x17, x17, 64388	# 301
	fsw		f1, 0(x17)	# 301
	mul		x17, x30, x11	# 302
	add		x17, x13, x17	# 302
	flw		f1, 0(x17)	# 302
	mul		x17, x30, x11	# 302
	addi	x17, x17, 64388	# 302
	fsw		f1, 0(x17)	# 302
	mul		x17, x30, x8	# 303
	add		x13, x13, x17	# 303
	flw		f1, 0(x13)	# 303
	mul		x13, x30, x8	# 303
	addi	x13, x13, 64388	# 303
	fsw		f1, 0(x13)	# 303
	lw		x13, 24(x4)	# 656
	mul		x17, x30, x10	# 658
	add		x13, x13, x17	# 658
	lw		x13, 0(x13)	# 658
	mul		x17, x30, x5	# 2047
	add		x14, x14, x17	# 2047
	lw		x14, 0(x14)	# 2047
	mul		x17, x30, x5	# 2048
	add		x15, x15, x17	# 2048
	lw		x15, 0(x15)	# 2048
	sw		x16, -16(x2)	# 2013
	sw		x12, -20(x2)	# 2013
	sw		x9, -24(x2)	# 2013
	sw		x14, -28(x2)	# 2013
	sw		x7, -32(x2)	# 2013
	sw		x6, -36(x2)	# 2013
	sw		x8, -40(x2)	# 2013
	sw		x15, -44(x2)	# 2013
	sw		x10, -48(x2)	# 2013
	sw		x13, -52(x2)	# 2013
	beq		x13, x10, beq_cont.32496	# 2013
	mul		x17, x30, x10	# 2014
	addi	x17, x17, 64512	# 2014
	lw		x17, 0(x17)	# 2014
	mul		x18, x30, x10	# 301
	add		x18, x15, x18	# 301
	flw		f1, 0(x18)	# 301
	mul		x18, x30, x10	# 301
	addi	x18, x18, 64444	# 301
	fsw		f1, 0(x18)	# 301
	mul		x18, x30, x11	# 302
	add		x18, x15, x18	# 302
	flw		f1, 0(x18)	# 302
	mul		x18, x30, x11	# 302
	addi	x18, x18, 64444	# 302
	fsw		f1, 0(x18)	# 302
	mul		x18, x30, x8	# 303
	add		x18, x15, x18	# 303
	flw		f1, 0(x18)	# 303
	mul		x18, x30, x8	# 303
	addi	x18, x18, 64444	# 303
	fsw		f1, 0(x18)	# 303
	mul		x18, x30, x10	# 1357
	addi	x18, x18, 63796	# 1357
	lw		x18, 0(x18)	# 1357
	sub		x18, x18, x11	# 1357
	addi	x5, x18, 0	# 1357
	addi	x4, x15, 0	# 1357
	addi	x29, x6, 0	# 1357
	sw		x1, -56(x2)	# 1357
	addi	x2, x2, -60	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 60	# 1357
	lw		x1, -56(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x5, -28(x2)	# 2006
	lw		x6, -44(x2)	# 2006
	lw		x29, -32(x2)	# 2006
	addi	x4, x17, 0	# 2006
	sw		x1, -56(x2)	# 2006
	addi	x2, x2, -60	# 2006
	lw		x31, 0(x29)	# 2006
	jalr	x1, x31, 0	# 2006
	addi	x2, x2, 60	# 2006
	lw		x1, -56(x2)	# 2006
	jal		x0, beq_cont.32496	# 2013
beq_cont.32496:
	lw		x4, -8(x2)	# 2017
	lw		x5, -52(x2)	# 2017
	beq		x5, x4, beq_cont.32498	# 2017
	mul		x6, x30, x4	# 2018
	addi	x6, x6, 64512	# 2018
	lw		x6, 0(x6)	# 2018
	lw		x7, -48(x2)	# 301
	mul		x8, x30, x7	# 301
	lw		x9, -44(x2)	# 301
	add		x8, x9, x8	# 301
	flw		f1, 0(x8)	# 301
	mul		x8, x30, x7	# 301
	addi	x8, x8, 64444	# 301
	fsw		f1, 0(x8)	# 301
	mul		x8, x30, x4	# 302
	add		x8, x9, x8	# 302
	flw		f1, 0(x8)	# 302
	mul		x8, x30, x4	# 302
	addi	x8, x8, 64444	# 302
	fsw		f1, 0(x8)	# 302
	lw		x8, -40(x2)	# 303
	mul		x10, x30, x8	# 303
	add		x10, x9, x10	# 303
	flw		f1, 0(x10)	# 303
	mul		x10, x30, x8	# 303
	addi	x10, x10, 64444	# 303
	fsw		f1, 0(x10)	# 303
	mul		x10, x30, x7	# 1357
	addi	x10, x10, 63796	# 1357
	lw		x10, 0(x10)	# 1357
	sub		x10, x10, x4	# 1357
	lw		x29, -36(x2)	# 1357
	sw		x6, -56(x2)	# 1357
	addi	x5, x10, 0	# 1357
	addi	x4, x9, 0	# 1357
	sw		x1, -60(x2)	# 1357
	addi	x2, x2, -64	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 64	# 1357
	lw		x1, -60(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -56(x2)	# 2006
	lw		x5, -28(x2)	# 2006
	lw		x6, -44(x2)	# 2006
	lw		x29, -32(x2)	# 2006
	sw		x1, -60(x2)	# 2006
	addi	x2, x2, -64	# 2006
	lw		x31, 0(x29)	# 2006
	jalr	x1, x31, 0	# 2006
	addi	x2, x2, 64	# 2006
	lw		x1, -60(x2)	# 2006
	jal		x0, beq_cont.32498	# 2017
beq_cont.32498:
	lw		x4, -40(x2)	# 2021
	lw		x5, -52(x2)	# 2021
	beq		x5, x4, beq_cont.32500	# 2021
	mul		x6, x30, x4	# 2022
	addi	x6, x6, 64512	# 2022
	lw		x6, 0(x6)	# 2022
	lw		x7, -48(x2)	# 301
	mul		x8, x30, x7	# 301
	lw		x9, -44(x2)	# 301
	add		x8, x9, x8	# 301
	flw		f1, 0(x8)	# 301
	mul		x8, x30, x7	# 301
	addi	x8, x8, 64444	# 301
	fsw		f1, 0(x8)	# 301
	lw		x8, -8(x2)	# 302
	mul		x10, x30, x8	# 302
	add		x10, x9, x10	# 302
	flw		f1, 0(x10)	# 302
	mul		x10, x30, x8	# 302
	addi	x10, x10, 64444	# 302
	fsw		f1, 0(x10)	# 302
	mul		x10, x30, x4	# 303
	add		x10, x9, x10	# 303
	flw		f1, 0(x10)	# 303
	mul		x10, x30, x4	# 303
	addi	x10, x10, 64444	# 303
	fsw		f1, 0(x10)	# 303
	mul		x10, x30, x7	# 1357
	addi	x10, x10, 63796	# 1357
	lw		x10, 0(x10)	# 1357
	sub		x10, x10, x8	# 1357
	lw		x29, -36(x2)	# 1357
	sw		x6, -60(x2)	# 1357
	addi	x5, x10, 0	# 1357
	addi	x4, x9, 0	# 1357
	sw		x1, -64(x2)	# 1357
	addi	x2, x2, -68	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 68	# 1357
	lw		x1, -64(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -60(x2)	# 2006
	lw		x5, -28(x2)	# 2006
	lw		x6, -44(x2)	# 2006
	lw		x29, -32(x2)	# 2006
	sw		x1, -64(x2)	# 2006
	addi	x2, x2, -68	# 2006
	lw		x31, 0(x29)	# 2006
	jalr	x1, x31, 0	# 2006
	addi	x2, x2, 68	# 2006
	lw		x1, -64(x2)	# 2006
	jal		x0, beq_cont.32500	# 2021
beq_cont.32500:
	lw		x4, -24(x2)	# 2025
	lw		x5, -52(x2)	# 2025
	beq		x5, x4, beq_cont.32502	# 2025
	mul		x4, x30, x4	# 2026
	addi	x4, x4, 64512	# 2026
	lw		x4, 0(x4)	# 2026
	lw		x6, -48(x2)	# 301
	mul		x7, x30, x6	# 301
	lw		x8, -44(x2)	# 301
	add		x7, x8, x7	# 301
	flw		f1, 0(x7)	# 301
	mul		x7, x30, x6	# 301
	addi	x7, x7, 64444	# 301
	fsw		f1, 0(x7)	# 301
	lw		x7, -8(x2)	# 302
	mul		x9, x30, x7	# 302
	add		x9, x8, x9	# 302
	flw		f1, 0(x9)	# 302
	mul		x9, x30, x7	# 302
	addi	x9, x9, 64444	# 302
	fsw		f1, 0(x9)	# 302
	lw		x9, -40(x2)	# 303
	mul		x10, x30, x9	# 303
	add		x10, x8, x10	# 303
	flw		f1, 0(x10)	# 303
	mul		x10, x30, x9	# 303
	addi	x10, x10, 64444	# 303
	fsw		f1, 0(x10)	# 303
	mul		x10, x30, x6	# 1357
	addi	x10, x10, 63796	# 1357
	lw		x10, 0(x10)	# 1357
	sub		x10, x10, x7	# 1357
	lw		x29, -36(x2)	# 1357
	sw		x4, -64(x2)	# 1357
	addi	x5, x10, 0	# 1357
	addi	x4, x8, 0	# 1357
	sw		x1, -68(x2)	# 1357
	addi	x2, x2, -72	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 72	# 1357
	lw		x1, -68(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -64(x2)	# 2006
	lw		x5, -28(x2)	# 2006
	lw		x6, -44(x2)	# 2006
	lw		x29, -32(x2)	# 2006
	sw		x1, -68(x2)	# 2006
	addi	x2, x2, -72	# 2006
	lw		x31, 0(x29)	# 2006
	jalr	x1, x31, 0	# 2006
	addi	x2, x2, 72	# 2006
	lw		x1, -68(x2)	# 2006
	jal		x0, beq_cont.32502	# 2025
beq_cont.32502:
	lw		x4, -20(x2)	# 2029
	lw		x5, -52(x2)	# 2029
	beq		x5, x4, beq_cont.32504	# 2029
	mul		x4, x30, x4	# 2030
	addi	x4, x4, 64512	# 2030
	lw		x4, 0(x4)	# 2030
	lw		x5, -48(x2)	# 301
	mul		x6, x30, x5	# 301
	lw		x7, -44(x2)	# 301
	add		x6, x7, x6	# 301
	flw		f1, 0(x6)	# 301
	mul		x6, x30, x5	# 301
	addi	x6, x6, 64444	# 301
	fsw		f1, 0(x6)	# 301
	lw		x6, -8(x2)	# 302
	mul		x8, x30, x6	# 302
	add		x8, x7, x8	# 302
	flw		f1, 0(x8)	# 302
	mul		x8, x30, x6	# 302
	addi	x8, x8, 64444	# 302
	fsw		f1, 0(x8)	# 302
	lw		x8, -40(x2)	# 303
	mul		x9, x30, x8	# 303
	add		x9, x7, x9	# 303
	flw		f1, 0(x9)	# 303
	mul		x9, x30, x8	# 303
	addi	x9, x9, 64444	# 303
	fsw		f1, 0(x9)	# 303
	mul		x9, x30, x5	# 1357
	addi	x9, x9, 63796	# 1357
	lw		x9, 0(x9)	# 1357
	sub		x9, x9, x6	# 1357
	lw		x29, -36(x2)	# 1357
	sw		x4, -68(x2)	# 1357
	addi	x5, x9, 0	# 1357
	addi	x4, x7, 0	# 1357
	sw		x1, -72(x2)	# 1357
	addi	x2, x2, -76	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 76	# 1357
	lw		x1, -72(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -68(x2)	# 2006
	lw		x5, -28(x2)	# 2006
	lw		x6, -44(x2)	# 2006
	lw		x29, -32(x2)	# 2006
	sw		x1, -72(x2)	# 2006
	addi	x2, x2, -76	# 2006
	lw		x31, 0(x29)	# 2006
	jalr	x1, x31, 0	# 2006
	addi	x2, x2, 76	# 2006
	lw		x1, -72(x2)	# 2006
	jal		x0, beq_cont.32504	# 2029
beq_cont.32504:
	lw		x4, -12(x2)	# 2049
	mul		x5, x30, x4	# 2049
	lw		x6, -16(x2)	# 2049
	add		x5, x6, x5	# 2049
	lw		x5, 0(x5)	# 2049
	lw		x6, -48(x2)	# 374
	mul		x7, x30, x6	# 374
	addi	x7, x7, 64400	# 374
	flw		f1, 0(x7)	# 374
	mul		x7, x30, x6	# 374
	add		x7, x5, x7	# 374
	flw		f2, 0(x7)	# 374
	mul		x7, x30, x6	# 374
	addi	x7, x7, 64388	# 374
	flw		f3, 0(x7)	# 374
	fmul	f2, f2, f3	# 374
	fadd	f1, f1, f2	# 374
	mul		x6, x30, x6	# 374
	addi	x6, x6, 64400	# 374
	fsw		f1, 0(x6)	# 374
	lw		x6, -8(x2)	# 375
	mul		x7, x30, x6	# 375
	addi	x7, x7, 64400	# 375
	flw		f1, 0(x7)	# 375
	mul		x7, x30, x6	# 375
	add		x7, x5, x7	# 375
	flw		f2, 0(x7)	# 375
	mul		x7, x30, x6	# 375
	addi	x7, x7, 64388	# 375
	flw		f3, 0(x7)	# 375
	fmul	f2, f2, f3	# 375
	fadd	f1, f1, f2	# 375
	mul		x7, x30, x6	# 375
	addi	x7, x7, 64400	# 375
	fsw		f1, 0(x7)	# 375
	lw		x7, -40(x2)	# 376
	mul		x8, x30, x7	# 376
	addi	x8, x8, 64400	# 376
	flw		f1, 0(x8)	# 376
	mul		x8, x30, x7	# 376
	add		x5, x5, x8	# 376
	flw		f2, 0(x5)	# 376
	mul		x5, x30, x7	# 376
	addi	x5, x5, 64388	# 376
	flw		f3, 0(x5)	# 376
	fmul	f2, f2, f3	# 376
	fadd	f1, f1, f2	# 376
	mul		x5, x30, x7	# 376
	addi	x5, x5, 64400	# 376
	fsw		f1, 0(x5)	# 376
	jal		x0, beq_cont.32494	# 2082
beq_cont.32494:
	lw		x4, -12(x2)	# 2085
	lw		x5, -8(x2)	# 2085
	add		x5, x4, x5	# 2085
	lw		x4, 0(x2)	# 2085
	lw		x29, -4(x2)	# 2085
	lw		x31, 0(x29)	# 2085
	jalr	x0, x31, 0	# 2085
try_exploit_neighbors.2930.18031:
	lw		x10, 16(x29)	# 2129
	lw		x11, 12(x29)	# 2129
	lw		x12, 8(x29)	# 2129
	lw		x13, 4(x29)	# 2129
	mul		x14, x30, x4	# 2129
	add		x14, x7, x14	# 2129
	lw		x14, 0(x14)	# 2129
	addi	x15, x0, 4	# 2130
	ble		x9, x15, ble.32506	# 2130
	jalr	x0, x1, 0	# 2149
ble.32506:
	lw		x15, 8(x14)	# 619
	mul		x16, x30, x9	# 2105
	add		x15, x15, x16	# 2105
	lw		x15, 0(x15)	# 2105
	ble		x12, x15, ble.32508	# 2133
	jalr	x0, x1, 0	# 2148
ble.32508:
	lw		x15, 8(x14)	# 619
	mul		x16, x30, x9	# 2105
	add		x15, x15, x16	# 2105
	lw		x15, 0(x15)	# 2105
	mul		x16, x30, x4	# 2113
	add		x16, x6, x16	# 2113
	lw		x16, 0(x16)	# 2113
	lw		x17, 8(x16)	# 619
	mul		x18, x30, x9	# 2105
	add		x17, x17, x18	# 2105
	lw		x17, 0(x17)	# 2105
	beq		x17, x15, beq.32511	# 2113
	addi	x15, x0, 0	# 2121
	jal		x0, beq_cont.32510	# 2113
beq.32511:
	mul		x17, x30, x4	# 2114
	add		x17, x8, x17	# 2114
	lw		x17, 0(x17)	# 2114
	lw		x17, 8(x17)	# 619
	mul		x18, x30, x9	# 2105
	add		x17, x17, x18	# 2105
	lw		x17, 0(x17)	# 2105
	beq		x17, x15, beq.32513	# 2114
	addi	x15, x0, 0	# 2120
	jal		x0, beq_cont.32510	# 2114
beq.32513:
	sub		x17, x4, x13	# 2115
	mul		x17, x30, x17	# 2115
	add		x17, x7, x17	# 2115
	lw		x17, 0(x17)	# 2115
	lw		x17, 8(x17)	# 619
	mul		x18, x30, x9	# 2105
	add		x17, x17, x18	# 2105
	lw		x17, 0(x17)	# 2105
	beq		x17, x15, beq.32515	# 2115
	addi	x15, x0, 0	# 2119
	jal		x0, beq_cont.32510	# 2115
beq.32515:
	add		x17, x4, x13	# 2116
	mul		x17, x30, x17	# 2116
	add		x17, x7, x17	# 2116
	lw		x17, 0(x17)	# 2116
	lw		x17, 8(x17)	# 619
	mul		x18, x30, x9	# 2105
	add		x17, x17, x18	# 2105
	lw		x17, 0(x17)	# 2105
	beq		x17, x15, beq.32517	# 2116
	addi	x15, x0, 0	# 2118
	jal		x0, beq_cont.32510	# 2116
beq.32517:
	addi	x15, x0, 1	# 2117
beq_cont.32510:
	beq		x15, x12, beq.32518	# 2135
	lw		x10, 12(x14)	# 626
	mul		x15, x30, x9	# 2139
	add		x10, x10, x15	# 2139
	lw		x10, 0(x10)	# 2139
	beq		x10, x12, beq_cont.32519	# 2139
	lw		x10, 20(x16)	# 640
	sub		x15, x4, x13	# 2059
	mul		x15, x30, x15	# 2059
	add		x15, x7, x15	# 2059
	lw		x15, 0(x15)	# 2059
	lw		x15, 20(x15)	# 640
	lw		x14, 20(x14)	# 640
	add		x16, x4, x13	# 2061
	mul		x16, x30, x16	# 2061
	add		x16, x7, x16	# 2061
	lw		x16, 0(x16)	# 2061
	lw		x16, 20(x16)	# 640
	mul		x17, x30, x4	# 2062
	add		x17, x8, x17	# 2062
	lw		x17, 0(x17)	# 2062
	lw		x17, 20(x17)	# 640
	mul		x18, x30, x9	# 2064
	add		x10, x10, x18	# 2064
	lw		x10, 0(x10)	# 2064
	mul		x18, x30, x12	# 301
	add		x18, x10, x18	# 301
	flw		f1, 0(x18)	# 301
	mul		x18, x30, x12	# 301
	addi	x18, x18, 64388	# 301
	fsw		f1, 0(x18)	# 301
	mul		x18, x30, x13	# 302
	add		x18, x10, x18	# 302
	flw		f1, 0(x18)	# 302
	mul		x18, x30, x13	# 302
	addi	x18, x18, 64388	# 302
	fsw		f1, 0(x18)	# 302
	mul		x18, x30, x11	# 303
	add		x10, x10, x18	# 303
	flw		f1, 0(x10)	# 303
	mul		x10, x30, x11	# 303
	addi	x10, x10, 64388	# 303
	fsw		f1, 0(x10)	# 303
	mul		x10, x30, x9	# 2065
	add		x10, x15, x10	# 2065
	lw		x10, 0(x10)	# 2065
	mul		x15, x30, x12	# 351
	addi	x15, x15, 64388	# 351
	flw		f1, 0(x15)	# 351
	mul		x15, x30, x12	# 351
	add		x15, x10, x15	# 351
	flw		f2, 0(x15)	# 351
	fadd	f1, f1, f2	# 351
	mul		x15, x30, x12	# 351
	addi	x15, x15, 64388	# 351
	fsw		f1, 0(x15)	# 351
	mul		x15, x30, x13	# 352
	addi	x15, x15, 64388	# 352
	flw		f1, 0(x15)	# 352
	mul		x15, x30, x13	# 352
	add		x15, x10, x15	# 352
	flw		f2, 0(x15)	# 352
	fadd	f1, f1, f2	# 352
	mul		x15, x30, x13	# 352
	addi	x15, x15, 64388	# 352
	fsw		f1, 0(x15)	# 352
	mul		x15, x30, x11	# 353
	addi	x15, x15, 64388	# 353
	flw		f1, 0(x15)	# 353
	mul		x15, x30, x11	# 353
	add		x10, x10, x15	# 353
	flw		f2, 0(x10)	# 353
	fadd	f1, f1, f2	# 353
	mul		x10, x30, x11	# 353
	addi	x10, x10, 64388	# 353
	fsw		f1, 0(x10)	# 353
	mul		x10, x30, x9	# 2066
	add		x10, x14, x10	# 2066
	lw		x10, 0(x10)	# 2066
	mul		x14, x30, x12	# 351
	addi	x14, x14, 64388	# 351
	flw		f1, 0(x14)	# 351
	mul		x14, x30, x12	# 351
	add		x14, x10, x14	# 351
	flw		f2, 0(x14)	# 351
	fadd	f1, f1, f2	# 351
	mul		x14, x30, x12	# 351
	addi	x14, x14, 64388	# 351
	fsw		f1, 0(x14)	# 351
	mul		x14, x30, x13	# 352
	addi	x14, x14, 64388	# 352
	flw		f1, 0(x14)	# 352
	mul		x14, x30, x13	# 352
	add		x14, x10, x14	# 352
	flw		f2, 0(x14)	# 352
	fadd	f1, f1, f2	# 352
	mul		x14, x30, x13	# 352
	addi	x14, x14, 64388	# 352
	fsw		f1, 0(x14)	# 352
	mul		x14, x30, x11	# 353
	addi	x14, x14, 64388	# 353
	flw		f1, 0(x14)	# 353
	mul		x14, x30, x11	# 353
	add		x10, x10, x14	# 353
	flw		f2, 0(x10)	# 353
	fadd	f1, f1, f2	# 353
	mul		x10, x30, x11	# 353
	addi	x10, x10, 64388	# 353
	fsw		f1, 0(x10)	# 353
	mul		x10, x30, x9	# 2067
	add		x10, x16, x10	# 2067
	lw		x10, 0(x10)	# 2067
	mul		x14, x30, x12	# 351
	addi	x14, x14, 64388	# 351
	flw		f1, 0(x14)	# 351
	mul		x14, x30, x12	# 351
	add		x14, x10, x14	# 351
	flw		f2, 0(x14)	# 351
	fadd	f1, f1, f2	# 351
	mul		x14, x30, x12	# 351
	addi	x14, x14, 64388	# 351
	fsw		f1, 0(x14)	# 351
	mul		x14, x30, x13	# 352
	addi	x14, x14, 64388	# 352
	flw		f1, 0(x14)	# 352
	mul		x14, x30, x13	# 352
	add		x14, x10, x14	# 352
	flw		f2, 0(x14)	# 352
	fadd	f1, f1, f2	# 352
	mul		x14, x30, x13	# 352
	addi	x14, x14, 64388	# 352
	fsw		f1, 0(x14)	# 352
	mul		x14, x30, x11	# 353
	addi	x14, x14, 64388	# 353
	flw		f1, 0(x14)	# 353
	mul		x14, x30, x11	# 353
	add		x10, x10, x14	# 353
	flw		f2, 0(x10)	# 353
	fadd	f1, f1, f2	# 353
	mul		x10, x30, x11	# 353
	addi	x10, x10, 64388	# 353
	fsw		f1, 0(x10)	# 353
	mul		x10, x30, x9	# 2068
	add		x10, x17, x10	# 2068
	lw		x10, 0(x10)	# 2068
	mul		x14, x30, x12	# 351
	addi	x14, x14, 64388	# 351
	flw		f1, 0(x14)	# 351
	mul		x14, x30, x12	# 351
	add		x14, x10, x14	# 351
	flw		f2, 0(x14)	# 351
	fadd	f1, f1, f2	# 351
	mul		x14, x30, x12	# 351
	addi	x14, x14, 64388	# 351
	fsw		f1, 0(x14)	# 351
	mul		x14, x30, x13	# 352
	addi	x14, x14, 64388	# 352
	flw		f1, 0(x14)	# 352
	mul		x14, x30, x13	# 352
	add		x14, x10, x14	# 352
	flw		f2, 0(x14)	# 352
	fadd	f1, f1, f2	# 352
	mul		x14, x30, x13	# 352
	addi	x14, x14, 64388	# 352
	fsw		f1, 0(x14)	# 352
	mul		x14, x30, x11	# 353
	addi	x14, x14, 64388	# 353
	flw		f1, 0(x14)	# 353
	mul		x14, x30, x11	# 353
	add		x10, x10, x14	# 353
	flw		f2, 0(x10)	# 353
	fadd	f1, f1, f2	# 353
	mul		x10, x30, x11	# 353
	addi	x10, x10, 64388	# 353
	fsw		f1, 0(x10)	# 353
	mul		x10, x30, x4	# 2070
	add		x10, x7, x10	# 2070
	lw		x10, 0(x10)	# 2070
	lw		x10, 16(x10)	# 633
	mul		x14, x30, x9	# 2071
	add		x10, x10, x14	# 2071
	lw		x10, 0(x10)	# 2071
	mul		x14, x30, x12	# 374
	addi	x14, x14, 64400	# 374
	flw		f1, 0(x14)	# 374
	mul		x14, x30, x12	# 374
	add		x14, x10, x14	# 374
	flw		f2, 0(x14)	# 374
	mul		x14, x30, x12	# 374
	addi	x14, x14, 64388	# 374
	flw		f3, 0(x14)	# 374
	fmul	f2, f2, f3	# 374
	fadd	f1, f1, f2	# 374
	mul		x12, x30, x12	# 374
	addi	x12, x12, 64400	# 374
	fsw		f1, 0(x12)	# 374
	mul		x12, x30, x13	# 375
	addi	x12, x12, 64400	# 375
	flw		f1, 0(x12)	# 375
	mul		x12, x30, x13	# 375
	add		x12, x10, x12	# 375
	flw		f2, 0(x12)	# 375
	mul		x12, x30, x13	# 375
	addi	x12, x12, 64388	# 375
	flw		f3, 0(x12)	# 375
	fmul	f2, f2, f3	# 375
	fadd	f1, f1, f2	# 375
	mul		x12, x30, x13	# 375
	addi	x12, x12, 64400	# 375
	fsw		f1, 0(x12)	# 375
	mul		x12, x30, x11	# 376
	addi	x12, x12, 64400	# 376
	flw		f1, 0(x12)	# 376
	mul		x12, x30, x11	# 376
	add		x10, x10, x12	# 376
	flw		f2, 0(x10)	# 376
	mul		x10, x30, x11	# 376
	addi	x10, x10, 64388	# 376
	flw		f3, 0(x10)	# 376
	fmul	f2, f2, f3	# 376
	fadd	f1, f1, f2	# 376
	mul		x10, x30, x11	# 376
	addi	x10, x10, 64400	# 376
	fsw		f1, 0(x10)	# 376
	jal		x0, beq_cont.32519	# 2139
beq_cont.32519:
	add		x9, x9, x13	# 2144
	lw		x31, 0(x29)	# 2144
	jalr	x0, x31, 0	# 2144
beq.32518:
	addi	x5, x9, 0	# 2147
	addi	x4, x14, 0	# 2147
	addi	x29, x10, 0	# 2147
	lw		x31, 0(x29)	# 2147
	jalr	x0, x31, 0	# 2147
pretrace_diffuse_rays.2945.18038:
	lw		x6, 24(x29)	# 2205
	lw		x7, 20(x29)	# 2205
	lw		x8, 16(x29)	# 2205
	lw		x9, 12(x29)	# 2205
	lw		x10, 8(x29)	# 2205
	flw		f1, 4(x29)	# 2205
	addi	x11, x0, 4	# 2205
	ble		x5, x11, ble.32521	# 2205
	jalr	x0, x1, 0	# 2229
ble.32521:
	lw		x11, 8(x4)	# 619
	mul		x12, x30, x5	# 2105
	add		x11, x11, x12	# 2105
	lw		x11, 0(x11)	# 2105
	ble		x9, x11, ble.32523	# 2209
	jalr	x0, x1, 0	# 2228
ble.32523:
	lw		x11, 12(x4)	# 626
	mul		x12, x30, x5	# 2212
	add		x11, x11, x12	# 2212
	lw		x11, 0(x11)	# 2212
	sw		x29, 0(x2)	# 2212
	sw		x10, -4(x2)	# 2212
	sw		x5, -8(x2)	# 2212
	beq		x11, x9, beq_cont.32525	# 2212
	lw		x11, 24(x4)	# 656
	mul		x12, x30, x9	# 658
	add		x11, x11, x12	# 658
	lw		x11, 0(x11)	# 658
	mul		x12, x30, x9	# 289
	addi	x12, x12, 64388	# 289
	fsw		f1, 0(x12)	# 289
	mul		x12, x30, x10	# 290
	addi	x12, x12, 64388	# 290
	fsw		f1, 0(x12)	# 290
	mul		x12, x30, x8	# 291
	addi	x12, x12, 64388	# 291
	fsw		f1, 0(x12)	# 291
	lw		x12, 28(x4)	# 670
	lw		x13, 4(x4)	# 611
	mul		x11, x30, x11	# 2221
	addi	x11, x11, 64512	# 2221
	lw		x11, 0(x11)	# 2221
	mul		x14, x30, x5	# 2222
	add		x12, x12, x14	# 2222
	lw		x12, 0(x12)	# 2222
	mul		x14, x30, x5	# 2223
	add		x13, x13, x14	# 2223
	lw		x13, 0(x13)	# 2223
	mul		x14, x30, x9	# 301
	add		x14, x13, x14	# 301
	flw		f1, 0(x14)	# 301
	mul		x14, x30, x9	# 301
	addi	x14, x14, 64444	# 301
	fsw		f1, 0(x14)	# 301
	mul		x14, x30, x10	# 302
	add		x14, x13, x14	# 302
	flw		f1, 0(x14)	# 302
	mul		x14, x30, x10	# 302
	addi	x14, x14, 64444	# 302
	fsw		f1, 0(x14)	# 302
	mul		x14, x30, x8	# 303
	add		x14, x13, x14	# 303
	flw		f1, 0(x14)	# 303
	mul		x14, x30, x8	# 303
	addi	x14, x14, 64444	# 303
	fsw		f1, 0(x14)	# 303
	mul		x14, x30, x9	# 1357
	addi	x14, x14, 63796	# 1357
	lw		x14, 0(x14)	# 1357
	sub		x14, x14, x10	# 1357
	sw		x8, -12(x2)	# 1357
	sw		x9, -16(x2)	# 1357
	sw		x4, -20(x2)	# 1357
	sw		x13, -24(x2)	# 1357
	sw		x12, -28(x2)	# 1357
	sw		x11, -32(x2)	# 1357
	sw		x7, -36(x2)	# 1357
	addi	x5, x14, 0	# 1357
	addi	x4, x13, 0	# 1357
	addi	x29, x6, 0	# 1357
	sw		x1, -40(x2)	# 1357
	addi	x2, x2, -44	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 44	# 1357
	lw		x1, -40(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -32(x2)	# 2006
	lw		x5, -28(x2)	# 2006
	lw		x6, -24(x2)	# 2006
	lw		x29, -36(x2)	# 2006
	sw		x1, -40(x2)	# 2006
	addi	x2, x2, -44	# 2006
	lw		x31, 0(x29)	# 2006
	jalr	x1, x31, 0	# 2006
	addi	x2, x2, 44	# 2006
	lw		x1, -40(x2)	# 2006
	lw		x4, -20(x2)	# 640
	lw		x5, 20(x4)	# 640
	lw		x6, -8(x2)	# 2225
	mul		x7, x30, x6	# 2225
	add		x5, x5, x7	# 2225
	lw		x5, 0(x5)	# 2225
	lw		x7, -16(x2)	# 301
	mul		x8, x30, x7	# 301
	addi	x8, x8, 64388	# 301
	flw		f1, 0(x8)	# 301
	mul		x7, x30, x7	# 301
	add		x7, x5, x7	# 301
	fsw		f1, 0(x7)	# 301
	lw		x7, -4(x2)	# 302
	mul		x8, x30, x7	# 302
	addi	x8, x8, 64388	# 302
	flw		f1, 0(x8)	# 302
	mul		x8, x30, x7	# 302
	add		x8, x5, x8	# 302
	fsw		f1, 0(x8)	# 302
	lw		x8, -12(x2)	# 303
	mul		x9, x30, x8	# 303
	addi	x9, x9, 64388	# 303
	flw		f1, 0(x9)	# 303
	mul		x8, x30, x8	# 303
	add		x5, x5, x8	# 303
	fsw		f1, 0(x5)	# 303
	jal		x0, beq_cont.32525	# 2212
beq_cont.32525:
	lw		x5, -8(x2)	# 2227
	lw		x6, -4(x2)	# 2227
	add		x5, x5, x6	# 2227
	lw		x29, 0(x2)	# 2227
	lw		x31, 0(x29)	# 2227
	jalr	x0, x31, 0	# 2227
pretrace_pixels.2948.18041:
	lw		x7, 28(x29)	# 2235
	lw		x8, 24(x29)	# 2235
	lw		x9, 20(x29)	# 2235
	lw		x10, 16(x29)	# 2235
	lw		x11, 12(x29)	# 2235
	lw		x12, 8(x29)	# 2235
	flw		f4, 4(x29)	# 2235
	ble		x11, x5, ble.32527	# 2235
	jalr	x0, x1, 0	# 2255
ble.32527:
	mul		x13, x30, x11	# 2237
	addi	x13, x13, 64428	# 2237
	flw		f5, 0(x13)	# 2237
	mul		x13, x30, x11	# 2237
	addi	x13, x13, 64420	# 2237
	lw		x13, 0(x13)	# 2237
	sub		x13, x5, x13	# 2237
	sw		x29, 0(x2)	# 2237
	sw		x6, -4(x2)	# 2237
	sw		x4, -8(x2)	# 2237
	sw		x5, -12(x2)	# 2237
	fsw		f2, -16(x2)	# 2237
	fsw		f1, -20(x2)	# 2237
	addi	x4, x13, 0	# 2237
	sw		x1, -24(x2)	# 2237
	addi	x2, x2, -28	# 2237
	jal		x1, min_caml_float_of_int	# 2237
	addi	x2, x2, 28	# 2237
	lw		x1, -24(x2)	# 2237
	fmul	f1, f5, f1	# 2237
	mul		x4, x30, x11	# 2238
	addi	x4, x4, 64456	# 2238
	flw		f2, 0(x4)	# 2238
	fmul	f2, f1, f2	# 2238
	flw		f5, -20(x2)	# 2238
	fadd	f2, f2, f5	# 2238
	mul		x4, x30, x11	# 2238
	addi	x4, x4, 64492	# 2238
	fsw		f2, 0(x4)	# 2238
	mul		x4, x30, x12	# 2239
	addi	x4, x4, 64456	# 2239
	flw		f2, 0(x4)	# 2239
	fmul	f2, f1, f2	# 2239
	flw		f6, -16(x2)	# 2239
	fadd	f2, f2, f6	# 2239
	mul		x4, x30, x12	# 2239
	addi	x4, x4, 64492	# 2239
	fsw		f2, 0(x4)	# 2239
	mul		x4, x30, x10	# 2240
	addi	x4, x4, 64456	# 2240
	flw		f2, 0(x4)	# 2240
	fmul	f1, f1, f2	# 2240
	fadd	f1, f1, f3	# 2240
	mul		x4, x30, x10	# 2240
	addi	x4, x4, 64492	# 2240
	fsw		f1, 0(x4)	# 2240
	mul		x4, x30, x11	# 325
	addi	x4, x4, 64492	# 325
	flw		f1, 0(x4)	# 325
	fmul	f1, f1, f1	# 127
	mul		x4, x30, x12	# 325
	addi	x4, x4, 64492	# 325
	flw		f2, 0(x4)	# 325
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 325
	mul		x4, x30, x10	# 325
	addi	x4, x4, 64492	# 325
	flw		f2, 0(x4)	# 325
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 325
	fsqrt	f1, f1	# 325
	feq		f1, f4, feq.32530	# 120
	fdiv	f1, f30, f1	# 326
	jal		x0, feq_cont.32529	# 120
feq.32530:
	fadd	f1, f0, f30	# 326
feq_cont.32529:
	mul		x4, x30, x11	# 327
	addi	x4, x4, 64492	# 327
	flw		f2, 0(x4)	# 327
	fmul	f2, f2, f1	# 327
	mul		x4, x30, x11	# 327
	addi	x4, x4, 64492	# 327
	fsw		f2, 0(x4)	# 327
	mul		x4, x30, x12	# 328
	addi	x4, x4, 64492	# 328
	flw		f2, 0(x4)	# 328
	fmul	f2, f2, f1	# 328
	mul		x4, x30, x12	# 328
	addi	x4, x4, 64492	# 328
	fsw		f2, 0(x4)	# 328
	mul		x4, x30, x10	# 329
	addi	x4, x4, 64492	# 329
	flw		f2, 0(x4)	# 329
	fmul	f1, f2, f1	# 329
	mul		x4, x30, x10	# 329
	addi	x4, x4, 64492	# 329
	fsw		f1, 0(x4)	# 329
	mul		x4, x30, x11	# 289
	addi	x4, x4, 64400	# 289
	fsw		f4, 0(x4)	# 289
	mul		x4, x30, x12	# 290
	addi	x4, x4, 64400	# 290
	fsw		f4, 0(x4)	# 290
	mul		x4, x30, x10	# 291
	addi	x4, x4, 64400	# 291
	fsw		f4, 0(x4)	# 291
	mul		x4, x30, x11	# 301
	addi	x4, x4, 64096	# 301
	flw		f1, 0(x4)	# 301
	mul		x4, x30, x11	# 301
	addi	x4, x4, 64432	# 301
	fsw		f1, 0(x4)	# 301
	mul		x4, x30, x12	# 302
	addi	x4, x4, 64096	# 302
	flw		f1, 0(x4)	# 302
	mul		x4, x30, x12	# 302
	addi	x4, x4, 64432	# 302
	fsw		f1, 0(x4)	# 302
	mul		x4, x30, x10	# 303
	addi	x4, x4, 64096	# 303
	flw		f1, 0(x4)	# 303
	mul		x4, x30, x10	# 303
	addi	x4, x4, 64432	# 303
	fsw		f1, 0(x4)	# 303
	fadd	f1, f0, f30	# 2246
	lw		x4, -12(x2)	# 2246
	mul		x5, x30, x4	# 2246
	lw		x6, -8(x2)	# 2246
	add		x5, x6, x5	# 2246
	lw		x5, 0(x5)	# 2246
	addi	x13, x0, 64492	# 2246
	fsw		f3, -24(x2)	# 2246
	sw		x9, -28(x2)	# 2246
	sw		x8, -32(x2)	# 2246
	sw		x10, -36(x2)	# 2246
	sw		x12, -40(x2)	# 2246
	sw		x11, -44(x2)	# 2246
	addi	x6, x5, 0	# 2246
	addi	x4, x11, 0	# 2246
	addi	x29, x7, 0	# 2246
	addi	x5, x13, 0	# 2246
	fadd	f2, f0, f4	# 2246
	sw		x1, -48(x2)	# 2246
	addi	x2, x2, -52	# 2246
	lw		x31, 0(x29)	# 2246
	jalr	x1, x31, 0	# 2246
	addi	x2, x2, 52	# 2246
	lw		x1, -48(x2)	# 2246
	lw		x4, -12(x2)	# 2247
	mul		x5, x30, x4	# 2247
	lw		x6, -8(x2)	# 2247
	add		x5, x6, x5	# 2247
	lw		x5, 0(x5)	# 2247
	lw		x5, 0(x5)	# 604
	lw		x7, -44(x2)	# 301
	mul		x8, x30, x7	# 301
	addi	x8, x8, 64400	# 301
	flw		f1, 0(x8)	# 301
	mul		x8, x30, x7	# 301
	add		x8, x5, x8	# 301
	fsw		f1, 0(x8)	# 301
	lw		x8, -40(x2)	# 302
	mul		x9, x30, x8	# 302
	addi	x9, x9, 64400	# 302
	flw		f1, 0(x9)	# 302
	mul		x9, x30, x8	# 302
	add		x9, x5, x9	# 302
	fsw		f1, 0(x9)	# 302
	lw		x9, -36(x2)	# 303
	mul		x10, x30, x9	# 303
	addi	x10, x10, 64400	# 303
	flw		f1, 0(x10)	# 303
	mul		x9, x30, x9	# 303
	add		x5, x5, x9	# 303
	fsw		f1, 0(x5)	# 303
	mul		x5, x30, x4	# 2248
	add		x5, x6, x5	# 2248
	lw		x5, 0(x5)	# 2248
	lw		x5, 24(x5)	# 663
	mul		x9, x30, x7	# 665
	add		x5, x5, x9	# 665
	lw		x9, -4(x2)	# 665
	sw		x9, 0(x5)	# 665
	mul		x5, x30, x4	# 2251
	add		x5, x6, x5	# 2251
	lw		x5, 0(x5)	# 2251
	lw		x29, -32(x2)	# 2251
	addi	x4, x5, 0	# 2251
	addi	x5, x7, 0	# 2251
	sw		x1, -48(x2)	# 2251
	addi	x2, x2, -52	# 2251
	lw		x31, 0(x29)	# 2251
	jalr	x1, x31, 0	# 2251
	addi	x2, x2, 52	# 2251
	lw		x1, -48(x2)	# 2251
	lw		x4, -12(x2)	# 2253
	lw		x5, -40(x2)	# 2253
	sub		x4, x4, x5	# 2253
	lw		x6, -4(x2)	# 266
	add		x5, x6, x5	# 266
	lw		x6, -28(x2)	# 267
	ble		x6, x5, ble.32532	# 267
	addi	x6, x5, 0	# 267
	jal		x0, ble_cont.32531	# 267
ble.32532:
	sub		x6, x5, x6	# 267
ble_cont.32531:
	lw		x5, -8(x2)	# 2253
	flw		f1, -20(x2)	# 2253
	flw		f2, -16(x2)	# 2253
	flw		f3, -24(x2)	# 2253
	lw		x29, 0(x2)	# 2253
	addi	x31, x5, 0	# 2253
	addi	x5, x4, 0	# 2253
	addi	x4, x31, 0	# 2253
	lw		x31, 0(x29)	# 2253
	jalr	x0, x31, 0	# 2253
scan_pixel.2959.18048:
	lw		x10, 28(x29)	# 2276
	lw		x11, 24(x29)	# 2276
	lw		x12, 20(x29)	# 2276
	lw		x13, 16(x29)	# 2276
	lw		x14, 12(x29)	# 2276
	lw		x15, 8(x29)	# 2276
	lw		x16, 4(x29)	# 2276
	mul		x17, x30, x15	# 2276
	addi	x17, x17, 64412	# 2276
	lw		x17, 0(x17)	# 2276
	ble		x17, x4, ble.32533	# 2276
	mul		x17, x30, x4	# 2279
	add		x17, x7, x17	# 2279
	lw		x17, 0(x17)	# 2279
	lw		x17, 0(x17)	# 604
	mul		x18, x30, x15	# 301
	add		x18, x17, x18	# 301
	flw		f1, 0(x18)	# 301
	mul		x18, x30, x15	# 301
	addi	x18, x18, 64400	# 301
	fsw		f1, 0(x18)	# 301
	mul		x18, x30, x16	# 302
	add		x18, x17, x18	# 302
	flw		f1, 0(x18)	# 302
	mul		x18, x30, x16	# 302
	addi	x18, x18, 64400	# 302
	fsw		f1, 0(x18)	# 302
	mul		x18, x30, x13	# 303
	add		x17, x17, x18	# 303
	flw		f1, 0(x17)	# 303
	mul		x17, x30, x13	# 303
	addi	x17, x17, 64400	# 303
	fsw		f1, 0(x17)	# 303
	mul		x17, x30, x16	# 2092
	addi	x17, x17, 64412	# 2092
	lw		x17, 0(x17)	# 2092
	add		x18, x5, x16	# 2092
	ble		x17, x18, ble.32535	# 2092
	ble		x5, x15, ble.32537	# 2093
	mul		x17, x30, x15	# 2094
	addi	x17, x17, 64412	# 2094
	lw		x17, 0(x17)	# 2094
	add		x18, x4, x16	# 2094
	ble		x17, x18, ble.32539	# 2094
	ble		x4, x15, ble.32541	# 2095
	addi	x17, x0, 1	# 2096
	jal		x0, ble_cont.32534	# 2095
ble.32541:
	addi	x17, x0, 0	# 2097
	jal		x0, ble_cont.32534	# 2094
ble.32539:
	addi	x17, x0, 0	# 2098
	jal		x0, ble_cont.32534	# 2093
ble.32537:
	addi	x17, x0, 0	# 2099
	jal		x0, ble_cont.32534	# 2092
ble.32535:
	addi	x17, x0, 0	# 2100
ble_cont.32534:
	sw		x8, 0(x2)	# 2282
	sw		x7, -4(x2)	# 2282
	sw		x6, -8(x2)	# 2282
	sw		x5, -12(x2)	# 2282
	sw		x29, -16(x2)	# 2282
	sw		x4, -20(x2)	# 2282
	sw		x13, -24(x2)	# 2282
	sw		x16, -28(x2)	# 2282
	sw		x11, -32(x2)	# 2282
	sw		x15, -36(x2)	# 2282
	sw		x14, -40(x2)	# 2282
	sw		x9, -44(x2)	# 2282
	beq		x17, x15, beq.32543	# 2282
	addi	x9, x15, 0	# 2283
	addi	x29, x10, 0	# 2283
	sw		x1, -48(x2)	# 2283
	addi	x2, x2, -52	# 2283
	lw		x31, 0(x29)	# 2283
	jalr	x1, x31, 0	# 2283
	addi	x2, x2, 52	# 2283
	lw		x1, -48(x2)	# 2283
	jal		x0, beq_cont.32542	# 2282
beq.32543:
	mul		x10, x30, x4	# 2285
	add		x10, x7, x10	# 2285
	lw		x10, 0(x10)	# 2285
	addi	x5, x15, 0	# 2285
	addi	x4, x10, 0	# 2285
	addi	x29, x12, 0	# 2285
	sw		x1, -48(x2)	# 2285
	addi	x2, x2, -52	# 2285
	lw		x31, 0(x29)	# 2285
	jalr	x1, x31, 0	# 2285
	addi	x2, x2, 52	# 2285
	lw		x1, -48(x2)	# 2285
beq_cont.32542:
	lw		x4, -40(x2)	# 2182
	lw		x5, -44(x2)	# 2182
	beq		x5, x4, beq.32545	# 2182
	lw		x4, -36(x2)	# 2190
	mul		x6, x30, x4	# 2190
	addi	x6, x6, 64400	# 2190
	flw		f1, 0(x6)	# 2190
	lw		x29, -32(x2)	# 153
	sw		x1, -48(x2)	# 153
	addi	x2, x2, -52	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 52	# 153
	lw		x1, -48(x2)	# 153
	addi	x5, x0, 255	# 2177
	ble		x4, x5, ble.32547	# 2177
	addi	x4, x0, 255	# 2177
	jal		x0, ble_cont.32546	# 2177
ble.32547:
	lw		x6, -36(x2)	# 2177
	ble		x6, x4, ble_cont.32546	# 2177
	addi	x4, x0, 0	# 2177
	jal		x0, ble_cont.32546	# 2177
ble_cont.32546:
	sw		x1, -48(x2)	# 2178
	addi	x2, x2, -52	# 2178
	jal		x1, min_caml_print_char	# 2178
	addi	x2, x2, 52	# 2178
	lw		x1, -48(x2)	# 2178
	lw		x4, -28(x2)	# 2191
	mul		x6, x30, x4	# 2191
	addi	x6, x6, 64400	# 2191
	flw		f1, 0(x6)	# 2191
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
	lw		x5, -48(x2)	# 2177
	ble		x4, x5, ble.32551	# 2177
	addi	x4, x0, 255	# 2177
	jal		x0, ble_cont.32550	# 2177
ble.32551:
	lw		x6, -36(x2)	# 2177
	ble		x6, x4, ble_cont.32550	# 2177
	addi	x4, x0, 0	# 2177
	jal		x0, ble_cont.32550	# 2177
ble_cont.32550:
	sw		x1, -52(x2)	# 2178
	addi	x2, x2, -56	# 2178
	jal		x1, min_caml_print_char	# 2178
	addi	x2, x2, 56	# 2178
	lw		x1, -52(x2)	# 2178
	lw		x4, -24(x2)	# 2192
	mul		x4, x30, x4	# 2192
	addi	x4, x4, 64400	# 2192
	flw		f1, 0(x4)	# 2192
	lw		x4, -36(x2)	# 153
	lw		x29, -32(x2)	# 153
	sw		x1, -52(x2)	# 153
	addi	x2, x2, -56	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 56	# 153
	lw		x1, -52(x2)	# 153
	lw		x5, -48(x2)	# 2177
	ble		x4, x5, ble.32555	# 2177
	addi	x4, x0, 255	# 2177
	jal		x0, ble_cont.32554	# 2177
ble.32555:
	lw		x5, -36(x2)	# 2177
	ble		x5, x4, ble_cont.32554	# 2177
	addi	x4, x0, 0	# 2177
	jal		x0, ble_cont.32554	# 2177
ble_cont.32554:
	sw		x1, -52(x2)	# 2178
	addi	x2, x2, -56	# 2178
	jal		x1, min_caml_print_char	# 2178
	addi	x2, x2, 56	# 2178
	lw		x1, -52(x2)	# 2178
	jal		x0, beq_cont.32544	# 2182
beq.32545:
	lw		x4, -36(x2)	# 2183
	mul		x6, x30, x4	# 2183
	addi	x6, x6, 64400	# 2183
	flw		f1, 0(x6)	# 2183
	lw		x29, -32(x2)	# 153
	sw		x1, -52(x2)	# 153
	addi	x2, x2, -56	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 56	# 153
	lw		x1, -52(x2)	# 153
	addi	x5, x0, 255	# 2171
	ble		x4, x5, ble.32559	# 2171
	addi	x4, x0, 255	# 2171
	jal		x0, ble_cont.32558	# 2171
ble.32559:
	lw		x6, -36(x2)	# 2171
	ble		x6, x4, ble_cont.32558	# 2171
	addi	x4, x0, 0	# 2171
	jal		x0, ble_cont.32558	# 2171
ble_cont.32558:
	sw		x1, -52(x2)	# 2172
	addi	x2, x2, -56	# 2172
	jal		x1, min_caml_print_int	# 2172
	addi	x2, x2, 56	# 2172
	lw		x1, -52(x2)	# 2172
	addi	x4, x0, 32	# 2184
	sw		x4, -52(x2)	# 2184
	sw		x1, -56(x2)	# 2184
	addi	x2, x2, -60	# 2184
	jal		x1, min_caml_print_char	# 2184
	addi	x2, x2, 60	# 2184
	lw		x1, -56(x2)	# 2184
	lw		x4, -28(x2)	# 2185
	mul		x6, x30, x4	# 2185
	addi	x6, x6, 64400	# 2185
	flw		f1, 0(x6)	# 2185
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
	lw		x5, -56(x2)	# 2171
	ble		x4, x5, ble.32563	# 2171
	addi	x4, x0, 255	# 2171
	jal		x0, ble_cont.32562	# 2171
ble.32563:
	lw		x6, -36(x2)	# 2171
	ble		x6, x4, ble_cont.32562	# 2171
	addi	x4, x0, 0	# 2171
	jal		x0, ble_cont.32562	# 2171
ble_cont.32562:
	sw		x1, -60(x2)	# 2172
	addi	x2, x2, -64	# 2172
	jal		x1, min_caml_print_int	# 2172
	addi	x2, x2, 64	# 2172
	lw		x1, -60(x2)	# 2172
	lw		x4, -52(x2)	# 2186
	sw		x1, -60(x2)	# 2186
	addi	x2, x2, -64	# 2186
	jal		x1, min_caml_print_char	# 2186
	addi	x2, x2, 64	# 2186
	lw		x1, -60(x2)	# 2186
	lw		x4, -24(x2)	# 2187
	mul		x4, x30, x4	# 2187
	addi	x4, x4, 64400	# 2187
	flw		f1, 0(x4)	# 2187
	lw		x4, -36(x2)	# 153
	lw		x29, -32(x2)	# 153
	sw		x1, -60(x2)	# 153
	addi	x2, x2, -64	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 64	# 153
	lw		x1, -60(x2)	# 153
	lw		x5, -56(x2)	# 2171
	ble		x4, x5, ble.32567	# 2171
	addi	x4, x0, 255	# 2171
	jal		x0, ble_cont.32566	# 2171
ble.32567:
	lw		x5, -36(x2)	# 2171
	ble		x5, x4, ble_cont.32566	# 2171
	addi	x4, x0, 0	# 2171
	jal		x0, ble_cont.32566	# 2171
ble_cont.32566:
	sw		x1, -60(x2)	# 2172
	addi	x2, x2, -64	# 2172
	jal		x1, min_caml_print_int	# 2172
	addi	x2, x2, 64	# 2172
	lw		x1, -60(x2)	# 2172
	addi	x4, x0, 10	# 2188
	sw		x1, -60(x2)	# 2188
	addi	x2, x2, -64	# 2188
	jal		x1, min_caml_print_char	# 2188
	addi	x2, x2, 64	# 2188
	lw		x1, -60(x2)	# 2188
beq_cont.32544:
	lw		x4, -20(x2)	# 2290
	lw		x5, -28(x2)	# 2290
	add		x4, x4, x5	# 2290
	lw		x5, -12(x2)	# 2290
	lw		x6, -8(x2)	# 2290
	lw		x7, -4(x2)	# 2290
	lw		x8, 0(x2)	# 2290
	lw		x9, -44(x2)	# 2290
	lw		x29, -16(x2)	# 2290
	lw		x31, 0(x29)	# 2290
	jalr	x0, x31, 0	# 2290
ble.32533:
	jalr	x0, x1, 0	# 2291
scan_line.2966.18055:
	lw		x10, 24(x29)	# 2297
	lw		x11, 20(x29)	# 2297
	lw		x12, 16(x29)	# 2297
	lw		x13, 12(x29)	# 2297
	lw		x14, 8(x29)	# 2297
	lw		x15, 4(x29)	# 2297
	mul		x16, x30, x15	# 2297
	addi	x16, x16, 64412	# 2297
	lw		x16, 0(x16)	# 2297
	ble		x16, x4, ble.32571	# 2297
	sub		x16, x16, x15	# 2299
	sw		x29, 0(x2)	# 2299
	sw		x12, -4(x2)	# 2299
	sw		x13, -8(x2)	# 2299
	sw		x8, -12(x2)	# 2299
	sw		x15, -16(x2)	# 2299
	sw		x9, -20(x2)	# 2299
	sw		x7, -24(x2)	# 2299
	sw		x6, -28(x2)	# 2299
	sw		x5, -32(x2)	# 2299
	sw		x4, -36(x2)	# 2299
	sw		x14, -40(x2)	# 2299
	sw		x10, -44(x2)	# 2299
	ble		x16, x4, ble_cont.32572	# 2299
	add		x16, x4, x15	# 2300
	mul		x17, x30, x14	# 2260
	addi	x17, x17, 64428	# 2260
	flw		f1, 0(x17)	# 2260
	mul		x17, x30, x15	# 2260
	addi	x17, x17, 64420	# 2260
	lw		x17, 0(x17)	# 2260
	sub		x16, x16, x17	# 2260
	fsw		f1, -48(x2)	# 2260
	addi	x4, x16, 0	# 2260
	sw		x1, -52(x2)	# 2260
	addi	x2, x2, -56	# 2260
	jal		x1, min_caml_float_of_int	# 2260
	addi	x2, x2, 56	# 2260
	lw		x1, -52(x2)	# 2260
	flw		f2, -48(x2)	# 2260
	fmul	f1, f2, f1	# 2260
	mul		x4, x30, x14	# 2263
	addi	x4, x4, 64468	# 2263
	flw		f2, 0(x4)	# 2263
	fmul	f2, f1, f2	# 2263
	mul		x4, x30, x14	# 2263
	addi	x4, x4, 64480	# 2263
	flw		f3, 0(x4)	# 2263
	fadd	f2, f2, f3	# 2263
	mul		x4, x30, x15	# 2264
	addi	x4, x4, 64468	# 2264
	flw		f3, 0(x4)	# 2264
	fmul	f3, f1, f3	# 2264
	mul		x4, x30, x15	# 2264
	addi	x4, x4, 64480	# 2264
	flw		f4, 0(x4)	# 2264
	fadd	f3, f3, f4	# 2264
	mul		x4, x30, x13	# 2265
	addi	x4, x4, 64468	# 2265
	flw		f4, 0(x4)	# 2265
	fmul	f1, f1, f4	# 2265
	mul		x4, x30, x13	# 2265
	addi	x4, x4, 64480	# 2265
	flw		f4, 0(x4)	# 2265
	fadd	f1, f1, f4	# 2265
	mul		x4, x30, x14	# 2266
	addi	x4, x4, 64412	# 2266
	lw		x4, 0(x4)	# 2266
	sub		x5, x4, x15	# 2266
	addi	x6, x8, 0	# 2266
	addi	x4, x7, 0	# 2266
	addi	x29, x11, 0	# 2266
	fadd	f31, f0, f3	# 2266
	fadd	f3, f0, f1	# 2266
	fadd	f1, f0, f2	# 2266
	fadd	f2, f0, f31	# 2266
	sw		x1, -52(x2)	# 2266
	addi	x2, x2, -56	# 2266
	lw		x31, 0(x29)	# 2266
	jalr	x1, x31, 0	# 2266
	addi	x2, x2, 56	# 2266
	lw		x1, -52(x2)	# 2266
	jal		x0, ble_cont.32572	# 2299
ble_cont.32572:
	lw		x4, -40(x2)	# 2302
	lw		x5, -36(x2)	# 2302
	lw		x6, -32(x2)	# 2302
	lw		x7, -28(x2)	# 2302
	lw		x8, -24(x2)	# 2302
	lw		x9, -20(x2)	# 2302
	lw		x29, -44(x2)	# 2302
	sw		x1, -52(x2)	# 2302
	addi	x2, x2, -56	# 2302
	lw		x31, 0(x29)	# 2302
	jalr	x1, x31, 0	# 2302
	addi	x2, x2, 56	# 2302
	lw		x1, -52(x2)	# 2302
	lw		x4, -36(x2)	# 2303
	lw		x5, -16(x2)	# 2303
	add		x4, x4, x5	# 2303
	lw		x5, -12(x2)	# 266
	lw		x6, -8(x2)	# 266
	add		x5, x5, x6	# 266
	lw		x6, -4(x2)	# 267
	ble		x6, x5, ble.32575	# 267
	addi	x8, x5, 0	# 267
	jal		x0, ble_cont.32574	# 267
ble.32575:
	sub		x8, x5, x6	# 267
ble_cont.32574:
	lw		x5, -28(x2)	# 2303
	lw		x6, -24(x2)	# 2303
	lw		x7, -32(x2)	# 2303
	lw		x9, -20(x2)	# 2303
	lw		x29, 0(x2)	# 2303
	lw		x31, 0(x29)	# 2303
	jalr	x0, x31, 0	# 2303
ble.32571:
	jalr	x0, x1, 0	# 2304
init_line_elements.2977.18062:
	lw		x6, 24(x29)	# 2339
	lw		x7, 20(x29)	# 2339
	lw		x8, 16(x29)	# 2339
	lw		x9, 12(x29)	# 2339
	lw		x10, 8(x29)	# 2339
	flw		f1, 4(x29)	# 2339
	ble		x9, x5, ble.32577	# 2339
	jalr	x0, x1, 0	# 2343
ble.32577:
	sw		x29, 0(x2)	# 2326
	sw		x4, -4(x2)	# 2326
	sw		x5, -8(x2)	# 2326
	fsw		f1, -12(x2)	# 2326
	sw		x8, -16(x2)	# 2326
	addi	x4, x8, 0	# 2326
	sw		x1, -20(x2)	# 2326
	addi	x2, x2, -24	# 2326
	jal		x1, min_caml_create_float_array	# 2326
	addi	x2, x2, 24	# 2326
	lw		x1, -20(x2)	# 2326
	lw		x5, -16(x2)	# 2314
	flw		f1, -12(x2)	# 2314
	sw		x4, -20(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -24(x2)	# 2314
	addi	x2, x2, -28	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 28	# 2314
	lw		x1, -24(x2)	# 2314
	addi	x5, x4, 0	# 2314
	sw		x6, -24(x2)	# 2315
	addi	x4, x6, 0	# 2315
	sw		x1, -28(x2)	# 2315
	addi	x2, x2, -32	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 32	# 2315
	lw		x1, -28(x2)	# 2315
	lw		x5, -16(x2)	# 2316
	flw		f1, -12(x2)	# 2316
	sw		x4, -28(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -32(x2)	# 2316
	addi	x2, x2, -36	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 36	# 2316
	lw		x1, -32(x2)	# 2316
	mul		x5, x30, x10	# 2316
	lw		x6, -28(x2)	# 2316
	add		x5, x6, x5	# 2316
	sw		x4, 0(x5)	# 2316
	lw		x4, -16(x2)	# 2317
	flw		f1, -12(x2)	# 2317
	sw		x1, -32(x2)	# 2317
	addi	x2, x2, -36	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 36	# 2317
	lw		x1, -32(x2)	# 2317
	mul		x5, x30, x7	# 2317
	add		x5, x6, x5	# 2317
	sw		x4, 0(x5)	# 2317
	lw		x4, -16(x2)	# 2318
	flw		f1, -12(x2)	# 2318
	sw		x1, -32(x2)	# 2318
	addi	x2, x2, -36	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 36	# 2318
	lw		x1, -32(x2)	# 2318
	lw		x5, -16(x2)	# 2318
	mul		x8, x30, x5	# 2318
	add		x8, x6, x8	# 2318
	sw		x4, 0(x8)	# 2318
	addi	x4, x0, 4	# 2319
	flw		f1, -12(x2)	# 2319
	sw		x4, -32(x2)	# 2319
	addi	x4, x5, 0	# 2319
	sw		x1, -36(x2)	# 2319
	addi	x2, x2, -40	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 40	# 2319
	lw		x1, -36(x2)	# 2319
	lw		x5, -32(x2)	# 2319
	mul		x8, x30, x5	# 2319
	add		x8, x6, x8	# 2319
	sw		x4, 0(x8)	# 2319
	lw		x4, -24(x2)	# 2328
	sw		x9, -36(x2)	# 2328
	addi	x5, x9, 0	# 2328
	sw		x1, -40(x2)	# 2328
	addi	x2, x2, -44	# 2328
	jal		x1, min_caml_create_array	# 2328
	addi	x2, x2, 44	# 2328
	lw		x1, -40(x2)	# 2328
	lw		x5, -24(x2)	# 2329
	lw		x6, -36(x2)	# 2329
	sw		x4, -40(x2)	# 2329
	addi	x4, x5, 0	# 2329
	addi	x5, x6, 0	# 2329
	sw		x1, -44(x2)	# 2329
	addi	x2, x2, -48	# 2329
	jal		x1, min_caml_create_array	# 2329
	addi	x2, x2, 48	# 2329
	lw		x1, -44(x2)	# 2329
	lw		x5, -16(x2)	# 2314
	flw		f1, -12(x2)	# 2314
	sw		x4, -44(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -48(x2)	# 2314
	addi	x2, x2, -52	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 52	# 2314
	lw		x1, -48(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -24(x2)	# 2315
	sw		x1, -48(x2)	# 2315
	addi	x2, x2, -52	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 52	# 2315
	lw		x1, -48(x2)	# 2315
	lw		x5, -16(x2)	# 2316
	flw		f1, -12(x2)	# 2316
	sw		x4, -48(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -52(x2)	# 2316
	addi	x2, x2, -56	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 56	# 2316
	lw		x1, -52(x2)	# 2316
	mul		x5, x30, x10	# 2316
	lw		x6, -48(x2)	# 2316
	add		x5, x6, x5	# 2316
	sw		x4, 0(x5)	# 2316
	lw		x4, -16(x2)	# 2317
	flw		f1, -12(x2)	# 2317
	sw		x1, -52(x2)	# 2317
	addi	x2, x2, -56	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 56	# 2317
	lw		x1, -52(x2)	# 2317
	mul		x5, x30, x7	# 2317
	add		x5, x6, x5	# 2317
	sw		x4, 0(x5)	# 2317
	lw		x4, -16(x2)	# 2318
	flw		f1, -12(x2)	# 2318
	sw		x1, -52(x2)	# 2318
	addi	x2, x2, -56	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 56	# 2318
	lw		x1, -52(x2)	# 2318
	lw		x5, -16(x2)	# 2318
	mul		x8, x30, x5	# 2318
	add		x8, x6, x8	# 2318
	sw		x4, 0(x8)	# 2318
	flw		f1, -12(x2)	# 2319
	addi	x4, x5, 0	# 2319
	sw		x1, -52(x2)	# 2319
	addi	x2, x2, -56	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 56	# 2319
	lw		x1, -52(x2)	# 2319
	lw		x5, -32(x2)	# 2319
	mul		x8, x30, x5	# 2319
	add		x8, x6, x8	# 2319
	sw		x4, 0(x8)	# 2319
	lw		x4, -16(x2)	# 2314
	flw		f1, -12(x2)	# 2314
	sw		x1, -52(x2)	# 2314
	addi	x2, x2, -56	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 56	# 2314
	lw		x1, -52(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -24(x2)	# 2315
	sw		x1, -52(x2)	# 2315
	addi	x2, x2, -56	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 56	# 2315
	lw		x1, -52(x2)	# 2315
	lw		x5, -16(x2)	# 2316
	flw		f1, -12(x2)	# 2316
	sw		x4, -52(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -56(x2)	# 2316
	addi	x2, x2, -60	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 60	# 2316
	lw		x1, -56(x2)	# 2316
	mul		x5, x30, x10	# 2316
	lw		x6, -52(x2)	# 2316
	add		x5, x6, x5	# 2316
	sw		x4, 0(x5)	# 2316
	lw		x4, -16(x2)	# 2317
	flw		f1, -12(x2)	# 2317
	sw		x1, -56(x2)	# 2317
	addi	x2, x2, -60	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 60	# 2317
	lw		x1, -56(x2)	# 2317
	mul		x5, x30, x7	# 2317
	add		x5, x6, x5	# 2317
	sw		x4, 0(x5)	# 2317
	lw		x4, -16(x2)	# 2318
	flw		f1, -12(x2)	# 2318
	sw		x1, -56(x2)	# 2318
	addi	x2, x2, -60	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 60	# 2318
	lw		x1, -56(x2)	# 2318
	lw		x5, -16(x2)	# 2318
	mul		x8, x30, x5	# 2318
	add		x8, x6, x8	# 2318
	sw		x4, 0(x8)	# 2318
	flw		f1, -12(x2)	# 2319
	addi	x4, x5, 0	# 2319
	sw		x1, -56(x2)	# 2319
	addi	x2, x2, -60	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 60	# 2319
	lw		x1, -56(x2)	# 2319
	lw		x5, -32(x2)	# 2319
	mul		x8, x30, x5	# 2319
	add		x8, x6, x8	# 2319
	sw		x4, 0(x8)	# 2319
	lw		x4, -36(x2)	# 2332
	sw		x10, -56(x2)	# 2332
	addi	x5, x4, 0	# 2332
	addi	x4, x10, 0	# 2332
	sw		x1, -60(x2)	# 2332
	addi	x2, x2, -64	# 2332
	jal		x1, min_caml_create_array	# 2332
	addi	x2, x2, 64	# 2332
	lw		x1, -60(x2)	# 2332
	lw		x5, -16(x2)	# 2314
	flw		f1, -12(x2)	# 2314
	sw		x4, -60(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -64(x2)	# 2314
	addi	x2, x2, -68	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 68	# 2314
	lw		x1, -64(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -24(x2)	# 2315
	sw		x1, -64(x2)	# 2315
	addi	x2, x2, -68	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 68	# 2315
	lw		x1, -64(x2)	# 2315
	lw		x5, -16(x2)	# 2316
	flw		f1, -12(x2)	# 2316
	sw		x4, -64(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -68(x2)	# 2316
	addi	x2, x2, -72	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 72	# 2316
	lw		x1, -68(x2)	# 2316
	lw		x5, -56(x2)	# 2316
	mul		x6, x30, x5	# 2316
	lw		x8, -64(x2)	# 2316
	add		x6, x8, x6	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -16(x2)	# 2317
	flw		f1, -12(x2)	# 2317
	sw		x1, -68(x2)	# 2317
	addi	x2, x2, -72	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 72	# 2317
	lw		x1, -68(x2)	# 2317
	mul		x5, x30, x7	# 2317
	add		x5, x8, x5	# 2317
	sw		x4, 0(x5)	# 2317
	lw		x4, -16(x2)	# 2318
	flw		f1, -12(x2)	# 2318
	sw		x1, -68(x2)	# 2318
	addi	x2, x2, -72	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 72	# 2318
	lw		x1, -68(x2)	# 2318
	lw		x5, -16(x2)	# 2318
	mul		x6, x30, x5	# 2318
	add		x6, x8, x6	# 2318
	sw		x4, 0(x6)	# 2318
	flw		f1, -12(x2)	# 2319
	addi	x4, x5, 0	# 2319
	sw		x1, -68(x2)	# 2319
	addi	x2, x2, -72	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 72	# 2319
	lw		x1, -68(x2)	# 2319
	lw		x5, -32(x2)	# 2319
	mul		x5, x30, x5	# 2319
	add		x5, x8, x5	# 2319
	sw		x4, 0(x5)	# 2319
	addi	x4, x3, 0	# 2334
	addi	x3, x3, 32	# 2334
	sw		x8, 28(x4)	# 2334
	lw		x5, -60(x2)	# 2334
	sw		x5, 24(x4)	# 2334
	lw		x5, -52(x2)	# 2334
	sw		x5, 20(x4)	# 2334
	lw		x5, -48(x2)	# 2334
	sw		x5, 16(x4)	# 2334
	lw		x5, -44(x2)	# 2334
	sw		x5, 12(x4)	# 2334
	lw		x5, -40(x2)	# 2334
	sw		x5, 8(x4)	# 2334
	lw		x5, -28(x2)	# 2334
	sw		x5, 4(x4)	# 2334
	lw		x5, -20(x2)	# 2334
	sw		x5, 0(x4)	# 2334
	lw		x5, -8(x2)	# 2340
	mul		x6, x30, x5	# 2340
	lw		x7, -4(x2)	# 2340
	add		x6, x7, x6	# 2340
	sw		x4, 0(x6)	# 2340
	lw		x4, -56(x2)	# 2341
	sub		x5, x5, x4	# 2341
	lw		x29, 0(x2)	# 2341
	addi	x4, x7, 0	# 2341
	lw		x31, 0(x29)	# 2341
	jalr	x0, x31, 0	# 2341
calc_dirvec.2987.18065:
	lw		x7, 28(x29)	# 2376
	lw		x8, 24(x29)	# 2376
	lw		x9, 20(x29)	# 2376
	lw		x10, 16(x29)	# 2376
	lw		x11, 12(x29)	# 2376
	lw		x12, 8(x29)	# 2376
	lw		x13, 4(x29)	# 2376
	ble		x10, x4, ble.32578	# 2376
	fmul	f1, f2, f2	# 2367
	lui		x10, %hi(l.28128)	# 2367
	ori		x10, x0, %lo(l.28128)	# 2367
	flw		f2, 0(x10)	# 2367
	fadd	f1, f1, f2	# 2367
	fsqrt	f1, f1	# 2367
	fdiv	f6, f30, f1	# 2368
	sw		x29, 0(x2)	# 2369
	fsw		f4, -4(x2)	# 2369
	fsw		f30, -8(x2)	# 2369
	fsw		f2, -12(x2)	# 2369
	sw		x4, -16(x2)	# 2369
	fsw		f1, -20(x2)	# 2369
	fsw		f3, -24(x2)	# 2369
	addi	x29, x9, 0	# 2369
	fadd	f1, f0, f6	# 2369
	sw		x1, -28(x2)	# 2369
	addi	x2, x2, -32	# 2369
	lw		x31, 0(x29)	# 2369
	jalr	x1, x31, 0	# 2369
	addi	x2, x2, 32	# 2369
	lw		x1, -28(x2)	# 2369
	flw		f2, -24(x2)	# 2370
	fmul	f1, f1, f2	# 2370
	fsw		f1, -28(x2)	# 2362
	addi	x29, x7, 0	# 2362
	sw		x1, -32(x2)	# 2362
	addi	x2, x2, -36	# 2362
	lw		x31, 0(x29)	# 2362
	jalr	x1, x31, 0	# 2362
	addi	x2, x2, 36	# 2362
	lw		x1, -32(x2)	# 2362
	flw		f2, -28(x2)	# 2362
	fsw		f1, -32(x2)	# 2362
	addi	x29, x8, 0	# 2362
	fadd	f1, f0, f2	# 2362
	sw		x1, -36(x2)	# 2362
	addi	x2, x2, -40	# 2362
	lw		x31, 0(x29)	# 2362
	jalr	x1, x31, 0	# 2362
	addi	x2, x2, 40	# 2362
	lw		x1, -36(x2)	# 2362
	flw		f2, -32(x2)	# 2362
	fdiv	f1, f2, f1	# 2362
	flw		f2, -20(x2)	# 2371
	fmul	f1, f1, f2	# 2371
	lw		x4, -16(x2)	# 2392
	add		x4, x4, x13	# 2392
	fmul	f2, f1, f1	# 2367
	flw		f3, -12(x2)	# 2367
	fadd	f2, f2, f3	# 2367
	fsqrt	f2, f2	# 2367
	flw		f3, -8(x2)	# 2368
	fdiv	f3, f3, f2	# 2368
	fsw		f1, -36(x2)	# 2369
	sw		x4, -40(x2)	# 2369
	fsw		f2, -44(x2)	# 2369
	addi	x29, x9, 0	# 2369
	fadd	f1, f0, f3	# 2369
	sw		x1, -48(x2)	# 2369
	addi	x2, x2, -52	# 2369
	lw		x31, 0(x29)	# 2369
	jalr	x1, x31, 0	# 2369
	addi	x2, x2, 52	# 2369
	lw		x1, -48(x2)	# 2369
	flw		f2, -4(x2)	# 2370
	fmul	f1, f1, f2	# 2370
	fsw		f1, -48(x2)	# 2362
	addi	x29, x7, 0	# 2362
	sw		x1, -52(x2)	# 2362
	addi	x2, x2, -56	# 2362
	lw		x31, 0(x29)	# 2362
	jalr	x1, x31, 0	# 2362
	addi	x2, x2, 56	# 2362
	lw		x1, -52(x2)	# 2362
	flw		f2, -48(x2)	# 2362
	fsw		f1, -52(x2)	# 2362
	addi	x29, x8, 0	# 2362
	fadd	f1, f0, f2	# 2362
	sw		x1, -56(x2)	# 2362
	addi	x2, x2, -60	# 2362
	lw		x31, 0(x29)	# 2362
	jalr	x1, x31, 0	# 2362
	addi	x2, x2, 60	# 2362
	lw		x1, -56(x2)	# 2362
	flw		f2, -52(x2)	# 2362
	fdiv	f1, f2, f1	# 2362
	flw		f2, -44(x2)	# 2371
	fmul	f2, f1, f2	# 2371
	lw		x4, -40(x2)	# 2392
	flw		f1, -36(x2)	# 2392
	flw		f3, -24(x2)	# 2392
	flw		f4, -4(x2)	# 2392
	lw		x29, 0(x2)	# 2392
	lw		x31, 0(x29)	# 2392
	jalr	x0, x31, 0	# 2392
ble.32578:
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 2377
	fadd	f3, f3, f30	# 2377
	fsqrt	f3, f3	# 2377
	fdiv	f1, f1, f3	# 2378
	fdiv	f2, f2, f3	# 2379
	fdiv	f3, f30, f3	# 2380
	mul		x4, x30, x5	# 2383
	addi	x4, x4, 64512	# 2383
	lw		x4, 0(x4)	# 2383
	mul		x5, x30, x6	# 2384
	add		x5, x4, x5	# 2384
	lw		x5, 0(x5)	# 2384
	lw		x5, 0(x5)	# 681
	mul		x7, x30, x12	# 282
	add		x7, x5, x7	# 282
	fsw		f1, 0(x7)	# 282
	mul		x7, x30, x13	# 283
	add		x7, x5, x7	# 283
	fsw		f2, 0(x7)	# 283
	mul		x7, x30, x11	# 284
	add		x5, x5, x7	# 284
	fsw		f3, 0(x5)	# 284
	addi	x5, x6, 40	# 2385
	mul		x5, x30, x5	# 2385
	add		x5, x4, x5	# 2385
	lw		x5, 0(x5)	# 2385
	lw		x5, 0(x5)	# 681
	fsub	f4, f0, f2	# 123
	mul		x7, x30, x12	# 282
	add		x7, x5, x7	# 282
	fsw		f1, 0(x7)	# 282
	mul		x7, x30, x13	# 283
	add		x7, x5, x7	# 283
	fsw		f3, 0(x7)	# 283
	mul		x7, x30, x11	# 284
	add		x5, x5, x7	# 284
	fsw		f4, 0(x5)	# 284
	addi	x5, x6, 80	# 2386
	mul		x5, x30, x5	# 2386
	add		x5, x4, x5	# 2386
	lw		x5, 0(x5)	# 2386
	lw		x5, 0(x5)	# 681
	fsub	f5, f0, f1	# 123
	mul		x7, x30, x12	# 282
	add		x7, x5, x7	# 282
	fsw		f3, 0(x7)	# 282
	mul		x7, x30, x13	# 283
	add		x7, x5, x7	# 283
	fsw		f5, 0(x7)	# 283
	mul		x7, x30, x11	# 284
	add		x5, x5, x7	# 284
	fsw		f4, 0(x5)	# 284
	add		x5, x6, x13	# 2387
	mul		x5, x30, x5	# 2387
	add		x5, x4, x5	# 2387
	lw		x5, 0(x5)	# 2387
	lw		x5, 0(x5)	# 681
	fsub	f3, f0, f3	# 123
	mul		x7, x30, x12	# 282
	add		x7, x5, x7	# 282
	fsw		f5, 0(x7)	# 282
	mul		x7, x30, x13	# 283
	add		x7, x5, x7	# 283
	fsw		f4, 0(x7)	# 283
	mul		x7, x30, x11	# 284
	add		x5, x5, x7	# 284
	fsw		f3, 0(x5)	# 284
	addi	x5, x6, 41	# 2388
	mul		x5, x30, x5	# 2388
	add		x5, x4, x5	# 2388
	lw		x5, 0(x5)	# 2388
	lw		x5, 0(x5)	# 681
	mul		x7, x30, x12	# 282
	add		x7, x5, x7	# 282
	fsw		f5, 0(x7)	# 282
	mul		x7, x30, x13	# 283
	add		x7, x5, x7	# 283
	fsw		f3, 0(x7)	# 283
	mul		x7, x30, x11	# 284
	add		x5, x5, x7	# 284
	fsw		f2, 0(x5)	# 284
	addi	x5, x6, 81	# 2389
	mul		x5, x30, x5	# 2389
	add		x4, x4, x5	# 2389
	lw		x4, 0(x4)	# 2389
	lw		x4, 0(x4)	# 681
	mul		x5, x30, x12	# 282
	add		x5, x4, x5	# 282
	fsw		f3, 0(x5)	# 282
	mul		x5, x30, x13	# 283
	add		x5, x4, x5	# 283
	fsw		f1, 0(x5)	# 283
	mul		x5, x30, x11	# 284
	add		x4, x4, x5	# 284
	fsw		f2, 0(x4)	# 284
	jalr	x0, x1, 0	# 284
calc_dirvecs.2995.18073:
	lw		x7, 24(x29)	# 2397
	lw		x8, 20(x29)	# 2397
	lw		x9, 16(x29)	# 2397
	lw		x10, 12(x29)	# 2397
	lw		x11, 8(x29)	# 2397
	flw		f2, 4(x29)	# 2397
	ble		x10, x4, ble.32580	# 2397
	jalr	x0, x1, 0	# 2406
ble.32580:
	sw		x29, 0(x2)	# 2399
	sw		x4, -4(x2)	# 2399
	fsw		f1, -8(x2)	# 2399
	fsw		f2, -12(x2)	# 2399
	sw		x6, -16(x2)	# 2399
	sw		x5, -20(x2)	# 2399
	sw		x1, -24(x2)	# 2399
	addi	x2, x2, -28	# 2399
	jal		x1, min_caml_float_of_int	# 2399
	addi	x2, x2, 28	# 2399
	lw		x1, -24(x2)	# 2399
	lui		x4, %hi(l.26360)	# 2399
	ori		x4, x0, %lo(l.26360)	# 2399
	flw		f2, 0(x4)	# 2399
	fmul	f1, f1, f2	# 2399
	lui		x4, %hi(l.29157)	# 2399
	ori		x4, x0, %lo(l.29157)	# 2399
	flw		f2, 0(x4)	# 2399
	fsub	f3, f1, f2	# 2399
	lw		x5, -20(x2)	# 2400
	lw		x6, -16(x2)	# 2400
	flw		f2, -12(x2)	# 2400
	flw		f4, -8(x2)	# 2400
	sw		x8, -24(x2)	# 2400
	sw		x11, -28(x2)	# 2400
	sw		x10, -32(x2)	# 2400
	sw		x7, -36(x2)	# 2400
	sw		x9, -40(x2)	# 2400
	fsw		f1, -44(x2)	# 2400
	addi	x4, x10, 0	# 2400
	addi	x29, x7, 0	# 2400
	fadd	f1, f0, f2	# 2400
	sw		x1, -48(x2)	# 2400
	addi	x2, x2, -52	# 2400
	lw		x31, 0(x29)	# 2400
	jalr	x1, x31, 0	# 2400
	addi	x2, x2, 52	# 2400
	lw		x1, -48(x2)	# 2400
	lui		x4, %hi(l.28128)	# 2402
	ori		x4, x0, %lo(l.28128)	# 2402
	flw		f1, 0(x4)	# 2402
	flw		f2, -44(x2)	# 2402
	fadd	f3, f2, f1	# 2402
	lw		x4, -16(x2)	# 2403
	lw		x5, -40(x2)	# 2403
	add		x6, x4, x5	# 2403
	lw		x5, -32(x2)	# 2403
	lw		x7, -20(x2)	# 2403
	flw		f1, -12(x2)	# 2403
	flw		f4, -8(x2)	# 2403
	lw		x29, -36(x2)	# 2403
	addi	x4, x5, 0	# 2403
	addi	x5, x7, 0	# 2403
	fadd	f2, f0, f1	# 2403
	sw		x1, -48(x2)	# 2403
	addi	x2, x2, -52	# 2403
	lw		x31, 0(x29)	# 2403
	jalr	x1, x31, 0	# 2403
	addi	x2, x2, 52	# 2403
	lw		x1, -48(x2)	# 2403
	lw		x4, -4(x2)	# 2405
	lw		x5, -28(x2)	# 2405
	sub		x4, x4, x5	# 2405
	lw		x6, -20(x2)	# 266
	add		x5, x6, x5	# 266
	lw		x6, -24(x2)	# 267
	ble		x6, x5, ble.32583	# 267
	jal		x0, ble_cont.32582	# 267
ble.32583:
	sub		x5, x5, x6	# 267
ble_cont.32582:
	lw		x6, -16(x2)	# 2405
	flw		f1, -8(x2)	# 2405
	lw		x29, 0(x2)	# 2405
	lw		x31, 0(x29)	# 2405
	jalr	x0, x31, 0	# 2405
calc_dirvec_rows.3000.18078:
	lw		x7, 20(x29)	# 2411
	lw		x8, 16(x29)	# 2411
	lw		x9, 12(x29)	# 2411
	lw		x10, 8(x29)	# 2411
	lw		x11, 4(x29)	# 2411
	ble		x10, x4, ble.32584	# 2411
	jalr	x0, x1, 0	# 2415
ble.32584:
	sw		x29, 0(x2)	# 2412
	sw		x4, -4(x2)	# 2412
	sw		x6, -8(x2)	# 2412
	sw		x5, -12(x2)	# 2412
	sw		x1, -16(x2)	# 2412
	addi	x2, x2, -20	# 2412
	jal		x1, min_caml_float_of_int	# 2412
	addi	x2, x2, 20	# 2412
	lw		x1, -16(x2)	# 2412
	lui		x4, %hi(l.26360)	# 2412
	ori		x4, x0, %lo(l.26360)	# 2412
	flw		f2, 0(x4)	# 2412
	fmul	f1, f1, f2	# 2412
	lui		x4, %hi(l.29157)	# 2412
	ori		x4, x0, %lo(l.29157)	# 2412
	flw		f2, 0(x4)	# 2412
	fsub	f1, f1, f2	# 2412
	addi	x4, x0, 4	# 2413
	lw		x5, -12(x2)	# 2413
	lw		x6, -8(x2)	# 2413
	sw		x8, -16(x2)	# 2413
	sw		x9, -20(x2)	# 2413
	sw		x11, -24(x2)	# 2413
	addi	x29, x7, 0	# 2413
	sw		x1, -28(x2)	# 2413
	addi	x2, x2, -32	# 2413
	lw		x31, 0(x29)	# 2413
	jalr	x1, x31, 0	# 2413
	addi	x2, x2, 32	# 2413
	lw		x1, -28(x2)	# 2413
	lw		x4, -4(x2)	# 2414
	lw		x5, -24(x2)	# 2414
	sub		x4, x4, x5	# 2414
	lw		x5, -12(x2)	# 266
	lw		x6, -20(x2)	# 266
	add		x5, x5, x6	# 266
	lw		x6, -16(x2)	# 267
	ble		x6, x5, ble.32587	# 267
	jal		x0, ble_cont.32586	# 267
ble.32587:
	sub		x5, x5, x6	# 267
ble_cont.32586:
	lw		x6, -8(x2)	# 2414
	addi	x6, x6, 4	# 2414
	lw		x29, 0(x2)	# 2414
	lw		x31, 0(x29)	# 2414
	jalr	x0, x31, 0	# 2414
create_dirvec_elements.3006.18082:
	lw		x6, 16(x29)	# 2430
	lw		x7, 12(x29)	# 2430
	lw		x8, 8(x29)	# 2430
	flw		f1, 4(x29)	# 2430
	ble		x7, x5, ble.32588	# 2430
	jalr	x0, x1, 0	# 2433
ble.32588:
	sw		x29, 0(x2)	# 2424
	sw		x4, -4(x2)	# 2424
	sw		x5, -8(x2)	# 2424
	addi	x4, x6, 0	# 2424
	sw		x1, -12(x2)	# 2424
	addi	x2, x2, -16	# 2424
	jal		x1, min_caml_create_float_array	# 2424
	addi	x2, x2, 16	# 2424
	lw		x1, -12(x2)	# 2424
	addi	x5, x4, 0	# 2424
	mul		x4, x30, x7	# 2425
	addi	x4, x4, 63796	# 2425
	lw		x4, 0(x4)	# 2425
	sw		x5, -12(x2)	# 2425
	sw		x1, -16(x2)	# 2425
	addi	x2, x2, -20	# 2425
	jal		x1, min_caml_create_array	# 2425
	addi	x2, x2, 20	# 2425
	lw		x1, -16(x2)	# 2425
	addi	x5, x3, 0	# 2426
	addi	x3, x3, 8	# 2426
	sw		x4, 4(x5)	# 2426
	lw		x4, -12(x2)	# 2426
	sw		x4, 0(x5)	# 2426
	addi	x4, x5, 0	# 2426
	lw		x5, -8(x2)	# 2431
	mul		x6, x30, x5	# 2431
	lw		x7, -4(x2)	# 2431
	add		x6, x7, x6	# 2431
	sw		x4, 0(x6)	# 2431
	sub		x5, x5, x8	# 2432
	lw		x29, 0(x2)	# 2432
	addi	x4, x7, 0	# 2432
	lw		x31, 0(x29)	# 2432
	jalr	x0, x31, 0	# 2432
create_dirvecs.3009.18085:
	lw		x5, 20(x29)	# 2437
	lw		x6, 16(x29)	# 2437
	lw		x7, 12(x29)	# 2437
	lw		x8, 8(x29)	# 2437
	flw		f1, 4(x29)	# 2437
	ble		x7, x4, ble.32590	# 2437
	jalr	x0, x1, 0	# 2441
ble.32590:
	addi	x9, x0, 120	# 2438
	sw		x29, 0(x2)	# 2424
	sw		x5, -4(x2)	# 2424
	sw		x4, -8(x2)	# 2424
	addi	x4, x6, 0	# 2424
	sw		x1, -12(x2)	# 2424
	addi	x2, x2, -16	# 2424
	jal		x1, min_caml_create_float_array	# 2424
	addi	x2, x2, 16	# 2424
	lw		x1, -12(x2)	# 2424
	addi	x5, x4, 0	# 2424
	mul		x4, x30, x7	# 2425
	addi	x4, x4, 63796	# 2425
	lw		x4, 0(x4)	# 2425
	sw		x5, -12(x2)	# 2425
	sw		x1, -16(x2)	# 2425
	addi	x2, x2, -20	# 2425
	jal		x1, min_caml_create_array	# 2425
	addi	x2, x2, 20	# 2425
	lw		x1, -16(x2)	# 2425
	addi	x5, x3, 0	# 2426
	addi	x3, x3, 8	# 2426
	sw		x4, 4(x5)	# 2426
	lw		x4, -12(x2)	# 2426
	sw		x4, 0(x5)	# 2426
	addi	x4, x9, 0	# 2438
	sw		x1, -16(x2)	# 2438
	addi	x2, x2, -20	# 2438
	jal		x1, min_caml_create_array	# 2438
	addi	x2, x2, 20	# 2438
	lw		x1, -16(x2)	# 2438
	lw		x5, -8(x2)	# 2438
	mul		x6, x30, x5	# 2438
	addi	x6, x6, 64512	# 2438
	sw		x4, 0(x6)	# 2438
	mul		x4, x30, x5	# 2439
	addi	x4, x4, 64512	# 2439
	lw		x4, 0(x4)	# 2439
	addi	x6, x0, 118	# 2439
	lw		x29, -4(x2)	# 2439
	sw		x8, -16(x2)	# 2439
	addi	x5, x6, 0	# 2439
	sw		x1, -20(x2)	# 2439
	addi	x2, x2, -24	# 2439
	lw		x31, 0(x29)	# 2439
	jalr	x1, x31, 0	# 2439
	addi	x2, x2, 24	# 2439
	lw		x1, -20(x2)	# 2439
	lw		x4, -8(x2)	# 2440
	lw		x5, -16(x2)	# 2440
	sub		x4, x4, x5	# 2440
	lw		x29, 0(x2)	# 2440
	lw		x31, 0(x29)	# 2440
	jalr	x0, x31, 0	# 2440
init_dirvec_constants.3011.18087:
	lw		x6, 12(x29)	# 2449
	lw		x7, 8(x29)	# 2449
	lw		x8, 4(x29)	# 2449
	ble		x7, x5, ble.32592	# 2449
	jalr	x0, x1, 0	# 2452
ble.32592:
	mul		x9, x30, x5	# 2450
	add		x9, x4, x9	# 2450
	lw		x9, 0(x9)	# 2450
	mul		x7, x30, x7	# 1329
	addi	x7, x7, 63796	# 1329
	lw		x7, 0(x7)	# 1329
	sub		x7, x7, x8	# 1329
	sw		x4, 0(x2)	# 1329
	sw		x29, -4(x2)	# 1329
	sw		x8, -8(x2)	# 1329
	sw		x5, -12(x2)	# 1329
	addi	x5, x7, 0	# 1329
	addi	x4, x9, 0	# 1329
	addi	x29, x6, 0	# 1329
	sw		x1, -16(x2)	# 1329
	addi	x2, x2, -20	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 20	# 1329
	lw		x1, -16(x2)	# 1329
	lw		x4, -12(x2)	# 2451
	lw		x5, -8(x2)	# 2451
	sub		x5, x4, x5	# 2451
	lw		x4, 0(x2)	# 2451
	lw		x29, -4(x2)	# 2451
	lw		x31, 0(x29)	# 2451
	jalr	x0, x31, 0	# 2451
init_vecset_constants.3014.18090:
	lw		x5, 12(x29)	# 2456
	lw		x6, 8(x29)	# 2456
	lw		x7, 4(x29)	# 2456
	ble		x6, x4, ble.32594	# 2456
	jalr	x0, x1, 0	# 2459
ble.32594:
	mul		x6, x30, x4	# 2457
	addi	x6, x6, 64512	# 2457
	lw		x6, 0(x6)	# 2457
	addi	x8, x0, 119	# 2457
	sw		x29, 0(x2)	# 2457
	sw		x7, -4(x2)	# 2457
	sw		x4, -8(x2)	# 2457
	addi	x4, x6, 0	# 2457
	addi	x29, x5, 0	# 2457
	addi	x5, x8, 0	# 2457
	sw		x1, -12(x2)	# 2457
	addi	x2, x2, -16	# 2457
	lw		x31, 0(x29)	# 2457
	jalr	x1, x31, 0	# 2457
	addi	x2, x2, 16	# 2457
	lw		x1, -12(x2)	# 2457
	lw		x4, -8(x2)	# 2458
	lw		x5, -4(x2)	# 2458
	sub		x4, x4, x5	# 2458
	lw		x29, 0(x2)	# 2458
	lw		x31, 0(x29)	# 2458
	jalr	x0, x31, 0	# 2458
min_caml_start:
	addi	x2, x2, -4	# 0
	addi	x30, x0, 4	# 0
	addi	x3, x0, 63796	# 0
	lui		x4, %hi(l.29184)	# 0
	ori		x4, x0, %lo(l.29184)	# 0
	flw		f0, 0(x4)	# 0
	lui		x4, %hi(l.26325)	# 0
	ori		x4, x0, %lo(l.26325)	# 0
	flw		f30, 0(x4)	# 0
	lui		x4, %hi(l.31536)	# 0
	ori		x4, x0, %lo(l.31536)	# 0
	flw		f29, 0(x4)	# 0
	lui		x4, %hi(l.26330)	# 0
	ori		x4, x0, %lo(l.26330)	# 0
	flw		f16, 0(x4)	# 0
	lui		x4, %hi(l.26334)	# 0
	ori		x4, x0, %lo(l.26334)	# 0
	flw		f17, 0(x4)	# 0
	lui		x4, %hi(l.26810)	# 0
	ori		x4, x0, %lo(l.26810)	# 0
	flw		f18, 0(x4)	# 0
	lui		x4, %hi(l.26808)	# 0
	ori		x4, x0, %lo(l.26808)	# 0
	flw		f19, 0(x4)	# 0
	lui		x4, %hi(l.26929)	# 0
	ori		x4, x0, %lo(l.26929)	# 0
	flw		f20, 0(x4)	# 0
	lui		x4, %hi(l.27697)	# 0
	ori		x4, x0, %lo(l.27697)	# 0
	flw		f21, 0(x4)	# 0
	lui		x4, %hi(l.28391)	# 0
	ori		x4, x0, %lo(l.28391)	# 0
	flw		f22, 0(x4)	# 0
	lui		x4, %hi(l.28181)	# 0
	ori		x4, x0, %lo(l.28181)	# 0
	flw		f23, 0(x4)	# 0
	lui		x4, %hi(l.26327)	# 0
	ori		x4, x0, %lo(l.26327)	# 0
	flw		f24, 0(x4)	# 0
	lui		x4, %hi(l.26323)	# 0
	ori		x4, x0, %lo(l.26323)	# 0
	flw		f25, 0(x4)	# 0
	lui		x4, %hi(l.26471)	# 0
	ori		x4, x0, %lo(l.26471)	# 0
	flw		f26, 0(x4)	# 0
	lui		x4, %hi(l.27952)	# 0
	ori		x4, x0, %lo(l.27952)	# 0
	flw		f27, 0(x4)	# 0
	lui		x4, %hi(l.27899)	# 0
	ori		x4, x0, %lo(l.27899)	# 0
	flw		f28, 0(x4)	# 0
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
	lui		x4, %hi(l.29198)	# 25
	ori		x4, x0, %lo(l.29198)	# 25
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
	lui		x4, %hi(l.29202)	# 42
	ori		x4, x0, %lo(l.29202)	# 42
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
	lui		x5, %hi(int_of_float_rem.2527.17943)	# 144
	ori		x5, x0, %lo(int_of_float_rem.2527.17943)	# 144
	sw		x5, 0(x4)	# 149
	lw		x5, 0(x2)	# 149
	sw		x5, 4(x4)	# 149
	addi	x6, x3, 0	# 149
	addi	x3, x3, 8	# 149
	lui		x7, %hi(int_of_float_four.2530.17946)	# 149
	ori		x7, x0, %lo(int_of_float_four.2530.17946)	# 149
	sw		x7, 0(x6)	# 178
	sw		x4, 4(x6)	# 178
	lui		x4, %hi(l.29217)	# 178
	ori		x4, x0, %lo(l.29217)	# 178
	flw		f2, 0(x4)	# 178
	lui		x4, %hi(l.29219)	# 179
	ori		x4, x0, %lo(l.29219)	# 179
	flw		f3, 0(x4)	# 179
	lui		x4, %hi(l.29221)	# 180
	ori		x4, x0, %lo(l.29221)	# 180
	flw		f4, 0(x4)	# 180
	lui		x4, %hi(l.29223)	# 181
	ori		x4, x0, %lo(l.29223)	# 181
	flw		f5, 0(x4)	# 181
	addi	x4, x3, 0	# 203
	addi	x3, x3, 24	# 203
	lui		x7, %hi(sin.2543.17953)	# 203
	ori		x7, x0, %lo(sin.2543.17953)	# 203
	sw		x7, 0(x4)	# 211
	fsw		f5, 20(x4)	# 211
	fsw		f4, 16(x4)	# 211
	fsw		f3, 12(x4)	# 211
	fsw		f2, 8(x4)	# 211
	fsw		f1, 4(x4)	# 211
	addi	x7, x3, 0	# 211
	addi	x3, x3, 20	# 211
	lui		x8, %hi(cos.2545.17955)	# 211
	ori		x8, x0, %lo(cos.2545.17955)	# 211
	sw		x8, 0(x7)	# 216
	sw		x4, 16(x7)	# 216
	fsw		f5, 12(x7)	# 216
	fsw		f4, 8(x7)	# 216
	fsw		f1, 4(x7)	# 216
	addi	x8, x3, 0	# 216
	addi	x3, x3, 16	# 216
	lui		x9, %hi(atan.2547.17957)	# 216
	ori		x9, x0, %lo(atan.2547.17957)	# 216
	sw		x9, 0(x8)	# 902
	fsw		f5, 12(x8)	# 902
	fsw		f4, 8(x8)	# 902
	fsw		f1, 4(x8)	# 902
	addi	x9, x3, 0	# 902
	addi	x3, x3, 40	# 902
	lui		x10, %hi(read_object.2684.17959)	# 902
	ori		x10, x0, %lo(read_object.2684.17959)	# 902
	sw		x10, 0(x9)	# 918
	sw		x4, 36(x9)	# 918
	sw		x7, 32(x9)	# 918
	lw		x10, -48(x2)	# 918
	sw		x10, 28(x9)	# 918
	lw		x11, -28(x2)	# 918
	sw		x11, 24(x9)	# 918
	lw		x12, -20(x2)	# 918
	sw		x12, 20(x9)	# 918
	lw		x13, -16(x2)	# 918
	sw		x13, 16(x9)	# 918
	lw		x13, -4(x2)	# 918
	sw		x13, 12(x9)	# 918
	sw		x5, 8(x9)	# 918
	fsw		f1, 4(x9)	# 918
	addi	x14, x3, 0	# 918
	addi	x3, x3, 12	# 918
	lui		x15, %hi(read_net_item.2688.17961)	# 918
	ori		x15, x0, %lo(read_net_item.2688.17961)	# 918
	sw		x15, 0(x14)	# 926
	sw		x11, 8(x14)	# 926
	sw		x5, 4(x14)	# 926
	addi	x15, x3, 0	# 926
	addi	x3, x3, 20	# 926
	lui		x16, %hi(read_or_network.2690.17963)	# 926
	ori		x16, x0, %lo(read_or_network.2690.17963)	# 926
	sw		x16, 0(x15)	# 935
	sw		x14, 16(x15)	# 935
	sw		x11, 12(x15)	# 935
	sw		x13, 8(x15)	# 935
	sw		x5, 4(x15)	# 935
	addi	x16, x3, 0	# 935
	addi	x3, x3, 20	# 935
	lui		x17, %hi(read_and_network.2692.17965)	# 935
	ori		x17, x0, %lo(read_and_network.2692.17965)	# 935
	sw		x17, 0(x16)	# 1311
	sw		x14, 16(x16)	# 1311
	sw		x11, 12(x16)	# 1311
	sw		x13, 8(x16)	# 1311
	sw		x5, 4(x16)	# 1311
	addi	x14, x3, 0	# 1311
	addi	x3, x3, 28	# 1311
	lui		x17, %hi(iter_setup_dirvec_constants.2789.17967)	# 1311
	ori		x17, x0, %lo(iter_setup_dirvec_constants.2789.17967)	# 1311
	sw		x17, 0(x14)	# 1336
	lw		x17, -64(x2)	# 1336
	sw		x17, 24(x14)	# 1336
	sw		x10, 20(x14)	# 1336
	sw		x12, 16(x14)	# 1336
	sw		x13, 12(x14)	# 1336
	sw		x5, 8(x14)	# 1336
	fsw		f1, 4(x14)	# 1336
	addi	x18, x3, 0	# 1336
	addi	x3, x3, 20	# 1336
	lui		x19, %hi(setup_startp_constants.2794.17970)	# 1336
	ori		x19, x0, %lo(setup_startp_constants.2794.17970)	# 1336
	sw		x19, 0(x18)	# 1405
	sw		x10, 16(x18)	# 1405
	sw		x12, 12(x18)	# 1405
	sw		x13, 8(x18)	# 1405
	sw		x5, 4(x18)	# 1405
	addi	x19, x3, 0	# 1405
	addi	x3, x3, 28	# 1405
	lui		x20, %hi(check_all_inside.2819.17973)	# 1405
	ori		x20, x0, %lo(check_all_inside.2819.17973)	# 1405
	sw		x20, 0(x19)	# 1425
	sw		x10, 24(x19)	# 1425
	sw		x11, 20(x19)	# 1425
	sw		x12, 16(x19)	# 1425
	sw		x13, 12(x19)	# 1425
	sw		x5, 8(x19)	# 1425
	fsw		f1, 4(x19)	# 1425
	addi	x20, x3, 0	# 1425
	addi	x3, x3, 36	# 1425
	lui		x21, %hi(shadow_check_and_group.2825.17979)	# 1425
	ori		x21, x0, %lo(shadow_check_and_group.2825.17979)	# 1425
	sw		x21, 0(x20)	# 1455
	sw		x19, 32(x20)	# 1455
	sw		x17, 28(x20)	# 1455
	sw		x10, 24(x20)	# 1455
	sw		x11, 20(x20)	# 1455
	sw		x12, 16(x20)	# 1455
	sw		x13, 12(x20)	# 1455
	sw		x5, 8(x20)	# 1455
	fsw		f1, 4(x20)	# 1455
	addi	x21, x3, 0	# 1455
	addi	x3, x3, 20	# 1455
	lui		x22, %hi(shadow_check_one_or_group.2828.17982)	# 1455
	ori		x22, x0, %lo(shadow_check_one_or_group.2828.17982)	# 1455
	sw		x22, 0(x21)	# 1470
	sw		x20, 16(x21)	# 1470
	sw		x11, 12(x21)	# 1470
	sw		x13, 8(x21)	# 1470
	sw		x5, 4(x21)	# 1470
	addi	x20, x3, 0	# 1470
	addi	x3, x3, 36	# 1470
	lui		x22, %hi(shadow_check_one_or_matrix.2831.17985)	# 1470
	ori		x22, x0, %lo(shadow_check_one_or_matrix.2831.17985)	# 1470
	sw		x22, 0(x20)	# 1506
	sw		x21, 32(x20)	# 1506
	sw		x17, 28(x20)	# 1506
	sw		x10, 24(x20)	# 1506
	sw		x11, 20(x20)	# 1506
	sw		x12, 16(x20)	# 1506
	sw		x13, 12(x20)	# 1506
	sw		x5, 8(x20)	# 1506
	fsw		f1, 4(x20)	# 1506
	addi	x21, x3, 0	# 1506
	addi	x3, x3, 32	# 1506
	lui		x22, %hi(solve_each_element.2834.17988)	# 1506
	ori		x22, x0, %lo(solve_each_element.2834.17988)	# 1506
	sw		x22, 0(x21)	# 1547
	sw		x19, 28(x21)	# 1547
	sw		x10, 24(x21)	# 1547
	sw		x11, 20(x21)	# 1547
	sw		x12, 16(x21)	# 1547
	sw		x13, 12(x21)	# 1547
	sw		x5, 8(x21)	# 1547
	fsw		f1, 4(x21)	# 1547
	addi	x22, x3, 0	# 1547
	addi	x3, x3, 20	# 1547
	lui		x23, %hi(solve_one_or_network.2838.17992)	# 1547
	ori		x23, x0, %lo(solve_one_or_network.2838.17992)	# 1547
	sw		x23, 0(x22)	# 1557
	sw		x21, 16(x22)	# 1557
	sw		x11, 12(x22)	# 1557
	sw		x13, 8(x22)	# 1557
	sw		x5, 4(x22)	# 1557
	addi	x21, x3, 0	# 1557
	addi	x3, x3, 32	# 1557
	lui		x23, %hi(trace_or_matrix.2842.17996)	# 1557
	ori		x23, x0, %lo(trace_or_matrix.2842.17996)	# 1557
	sw		x23, 0(x21)	# 1599
	sw		x22, 28(x21)	# 1599
	sw		x10, 24(x21)	# 1599
	sw		x11, 20(x21)	# 1599
	sw		x12, 16(x21)	# 1599
	sw		x13, 12(x21)	# 1599
	sw		x5, 8(x21)	# 1599
	fsw		f1, 4(x21)	# 1599
	addi	x22, x3, 0	# 1599
	addi	x3, x3, 36	# 1599
	lui		x23, %hi(solve_each_element_fast.2848.18000)	# 1599
	ori		x23, x0, %lo(solve_each_element_fast.2848.18000)	# 1599
	sw		x23, 0(x22)	# 1640
	sw		x19, 32(x22)	# 1640
	sw		x17, 28(x22)	# 1640
	sw		x10, 24(x22)	# 1640
	sw		x11, 20(x22)	# 1640
	sw		x12, 16(x22)	# 1640
	sw		x13, 12(x22)	# 1640
	sw		x5, 8(x22)	# 1640
	fsw		f1, 4(x22)	# 1640
	addi	x23, x3, 0	# 1640
	addi	x3, x3, 40	# 1640
	lui		x24, %hi(solve_one_or_network_fast.2852.18004)	# 1640
	ori		x24, x0, %lo(solve_one_or_network_fast.2852.18004)	# 1640
	sw		x24, 0(x23)	# 1650
	sw		x22, 36(x23)	# 1650
	sw		x19, 32(x23)	# 1650
	sw		x17, 28(x23)	# 1650
	sw		x10, 24(x23)	# 1650
	sw		x11, 20(x23)	# 1650
	sw		x12, 16(x23)	# 1650
	sw		x13, 12(x23)	# 1650
	sw		x5, 8(x23)	# 1650
	fsw		f1, 4(x23)	# 1650
	addi	x19, x3, 0	# 1650
	addi	x3, x3, 40	# 1650
	lui		x24, %hi(trace_or_matrix_fast.2856.18008)	# 1650
	ori		x24, x0, %lo(trace_or_matrix_fast.2856.18008)	# 1650
	sw		x24, 0(x19)	# 1844
	sw		x23, 36(x19)	# 1844
	sw		x22, 32(x19)	# 1844
	sw		x17, 28(x19)	# 1844
	sw		x10, 24(x19)	# 1844
	sw		x11, 20(x19)	# 1844
	sw		x12, 16(x19)	# 1844
	sw		x13, 12(x19)	# 1844
	sw		x5, 8(x19)	# 1844
	fsw		f1, 4(x19)	# 1844
	addi	x22, x3, 0	# 1844
	addi	x3, x3, 32	# 1844
	lui		x23, %hi(trace_reflections.2878.18012)	# 1844
	ori		x23, x0, %lo(trace_reflections.2878.18012)	# 1844
	sw		x23, 0(x22)	# 1873
	sw		x19, 28(x22)	# 1873
	sw		x20, 24(x22)	# 1873
	sw		x10, 20(x22)	# 1873
	sw		x13, 16(x22)	# 1873
	sw		x5, 12(x22)	# 1873
	flw		f2, -44(x2)	# 1873
	fsw		f2, 8(x22)	# 1873
	fsw		f1, 4(x22)	# 1873
	addi	x23, x3, 0	# 1873
	addi	x3, x3, 64	# 1873
	lui		x24, %hi(trace_ray.2883.18017)	# 1873
	ori		x24, x0, %lo(trace_ray.2883.18017)	# 1873
	sw		x24, 0(x23)	# 1985
	sw		x22, 60(x23)	# 1985
	sw		x21, 56(x23)	# 1985
	sw		x4, 52(x23)	# 1985
	sw		x20, 48(x23)	# 1985
	sw		x18, 44(x23)	# 1985
	sw		x7, 40(x23)	# 1985
	sw		x8, 36(x23)	# 1985
	sw		x10, 32(x23)	# 1985
	sw		x11, 28(x23)	# 1985
	sw		x12, 24(x23)	# 1985
	sw		x13, 20(x23)	# 1985
	sw		x5, 16(x23)	# 1985
	fsw		f2, 12(x23)	# 1985
	flw		f3, -24(x2)	# 1985
	fsw		f3, 8(x23)	# 1985
	fsw		f1, 4(x23)	# 1985
	addi	x11, x3, 0	# 1985
	addi	x3, x3, 52	# 1985
	lui		x21, %hi(iter_trace_diffuse_rays.2892.18023)	# 1985
	ori		x21, x0, %lo(iter_trace_diffuse_rays.2892.18023)	# 1985
	sw		x21, 0(x11)	# 2076
	sw		x19, 48(x11)	# 2076
	sw		x4, 44(x11)	# 2076
	sw		x20, 40(x11)	# 2076
	sw		x7, 36(x11)	# 2076
	sw		x8, 32(x11)	# 2076
	sw		x10, 28(x11)	# 2076
	sw		x12, 24(x11)	# 2076
	sw		x13, 20(x11)	# 2076
	sw		x5, 16(x11)	# 2076
	fsw		f2, 12(x11)	# 2076
	fsw		f3, 8(x11)	# 2076
	fsw		f1, 4(x11)	# 2076
	addi	x19, x3, 0	# 2076
	addi	x3, x3, 28	# 2076
	lui		x20, %hi(do_without_neighbors.2914.18028)	# 2076
	ori		x20, x0, %lo(do_without_neighbors.2914.18028)	# 2076
	sw		x20, 0(x19)	# 2128
	sw		x18, 24(x19)	# 2128
	sw		x11, 20(x19)	# 2128
	sw		x10, 16(x19)	# 2128
	sw		x12, 12(x19)	# 2128
	sw		x13, 8(x19)	# 2128
	sw		x5, 4(x19)	# 2128
	addi	x20, x3, 0	# 2128
	addi	x3, x3, 20	# 2128
	lui		x21, %hi(try_exploit_neighbors.2930.18031)	# 2128
	ori		x21, x0, %lo(try_exploit_neighbors.2930.18031)	# 2128
	sw		x21, 0(x20)	# 2204
	sw		x19, 16(x20)	# 2204
	sw		x10, 12(x20)	# 2204
	sw		x13, 8(x20)	# 2204
	sw		x5, 4(x20)	# 2204
	addi	x21, x3, 0	# 2204
	addi	x3, x3, 28	# 2204
	lui		x22, %hi(pretrace_diffuse_rays.2945.18038)	# 2204
	ori		x22, x0, %lo(pretrace_diffuse_rays.2945.18038)	# 2204
	sw		x22, 0(x21)	# 2234
	sw		x18, 24(x21)	# 2234
	sw		x11, 20(x21)	# 2234
	sw		x10, 16(x21)	# 2234
	sw		x13, 12(x21)	# 2234
	sw		x5, 8(x21)	# 2234
	fsw		f1, 4(x21)	# 2234
	addi	x11, x3, 0	# 2234
	addi	x3, x3, 32	# 2234
	lui		x18, %hi(pretrace_pixels.2948.18041)	# 2234
	ori		x18, x0, %lo(pretrace_pixels.2948.18041)	# 2234
	sw		x18, 0(x11)	# 2275
	sw		x23, 28(x11)	# 2275
	sw		x21, 24(x11)	# 2275
	sw		x17, 20(x11)	# 2275
	sw		x10, 16(x11)	# 2275
	sw		x13, 12(x11)	# 2275
	sw		x5, 8(x11)	# 2275
	fsw		f1, 4(x11)	# 2275
	addi	x18, x3, 0	# 2275
	addi	x3, x3, 32	# 2275
	lui		x21, %hi(scan_pixel.2959.18048)	# 2275
	ori		x21, x0, %lo(scan_pixel.2959.18048)	# 2275
	sw		x21, 0(x18)	# 2295
	sw		x20, 28(x18)	# 2295
	sw		x6, 24(x18)	# 2295
	sw		x19, 20(x18)	# 2295
	sw		x10, 16(x18)	# 2295
	sw		x12, 12(x18)	# 2295
	sw		x13, 8(x18)	# 2295
	sw		x5, 4(x18)	# 2295
	addi	x6, x3, 0	# 2295
	addi	x3, x3, 28	# 2295
	lui		x19, %hi(scan_line.2966.18055)	# 2295
	ori		x19, x0, %lo(scan_line.2966.18055)	# 2295
	sw		x19, 0(x6)	# 2338
	sw		x18, 24(x6)	# 2338
	sw		x11, 20(x6)	# 2338
	sw		x17, 16(x6)	# 2338
	sw		x10, 12(x6)	# 2338
	sw		x13, 8(x6)	# 2338
	sw		x5, 4(x6)	# 2338
	addi	x18, x3, 0	# 2338
	addi	x3, x3, 28	# 2338
	lui		x19, %hi(init_line_elements.2977.18062)	# 2338
	ori		x19, x0, %lo(init_line_elements.2977.18062)	# 2338
	sw		x19, 0(x18)	# 2375
	sw		x17, 24(x18)	# 2375
	sw		x10, 20(x18)	# 2375
	sw		x12, 16(x18)	# 2375
	sw		x13, 12(x18)	# 2375
	sw		x5, 8(x18)	# 2375
	fsw		f1, 4(x18)	# 2375
	addi	x19, x3, 0	# 2375
	addi	x3, x3, 32	# 2375
	lui		x20, %hi(calc_dirvec.2987.18065)	# 2375
	ori		x20, x0, %lo(calc_dirvec.2987.18065)	# 2375
	sw		x20, 0(x19)	# 2396
	sw		x4, 28(x19)	# 2396
	sw		x7, 24(x19)	# 2396
	sw		x8, 20(x19)	# 2396
	sw		x17, 16(x19)	# 2396
	sw		x10, 12(x19)	# 2396
	sw		x13, 8(x19)	# 2396
	sw		x5, 4(x19)	# 2396
	addi	x8, x3, 0	# 2396
	addi	x3, x3, 28	# 2396
	lui		x20, %hi(calc_dirvecs.2995.18073)	# 2396
	ori		x20, x0, %lo(calc_dirvecs.2995.18073)	# 2396
	sw		x20, 0(x8)	# 2410
	sw		x19, 24(x8)	# 2410
	sw		x17, 20(x8)	# 2410
	sw		x10, 16(x8)	# 2410
	sw		x13, 12(x8)	# 2410
	sw		x5, 8(x8)	# 2410
	fsw		f1, 4(x8)	# 2410
	addi	x19, x3, 0	# 2410
	addi	x3, x3, 24	# 2410
	lui		x20, %hi(calc_dirvec_rows.3000.18078)	# 2410
	ori		x20, x0, %lo(calc_dirvec_rows.3000.18078)	# 2410
	sw		x20, 0(x19)	# 2429
	sw		x8, 20(x19)	# 2429
	sw		x17, 16(x19)	# 2429
	sw		x10, 12(x19)	# 2429
	sw		x13, 8(x19)	# 2429
	sw		x5, 4(x19)	# 2429
	addi	x8, x3, 0	# 2429
	addi	x3, x3, 20	# 2429
	lui		x20, %hi(create_dirvec_elements.3006.18082)	# 2429
	ori		x20, x0, %lo(create_dirvec_elements.3006.18082)	# 2429
	sw		x20, 0(x8)	# 2436
	sw		x12, 16(x8)	# 2436
	sw		x13, 12(x8)	# 2436
	sw		x5, 8(x8)	# 2436
	fsw		f1, 4(x8)	# 2436
	addi	x20, x3, 0	# 2436
	addi	x3, x3, 24	# 2436
	lui		x21, %hi(create_dirvecs.3009.18085)	# 2436
	ori		x21, x0, %lo(create_dirvecs.3009.18085)	# 2436
	sw		x21, 0(x20)	# 2448
	sw		x8, 20(x20)	# 2448
	sw		x12, 16(x20)	# 2448
	sw		x13, 12(x20)	# 2448
	sw		x5, 8(x20)	# 2448
	fsw		f1, 4(x20)	# 2448
	addi	x8, x3, 0	# 2448
	addi	x3, x3, 16	# 2448
	lui		x21, %hi(init_dirvec_constants.3011.18087)	# 2448
	ori		x21, x0, %lo(init_dirvec_constants.3011.18087)	# 2448
	sw		x21, 0(x8)	# 2455
	sw		x14, 12(x8)	# 2455
	sw		x13, 8(x8)	# 2455
	sw		x5, 4(x8)	# 2455
	addi	x21, x3, 0	# 2455
	addi	x3, x3, 16	# 2455
	lui		x22, %hi(init_vecset_constants.3014.18090)	# 2455
	ori		x22, x0, %lo(init_vecset_constants.3014.18090)	# 2455
	sw		x22, 0(x21)	# 2554
	sw		x8, 12(x21)	# 2554
	sw		x13, 8(x21)	# 2554
	sw		x5, 4(x21)	# 2554
	addi	x8, x0, 512	# 2554
	mul		x22, x30, x13	# 2534
	addi	x22, x22, 64412	# 2534
	sw		x8, 0(x22)	# 2534
	mul		x22, x30, x5	# 2535
	addi	x22, x22, 64412	# 2535
	sw		x8, 0(x22)	# 2535
	addi	x22, x0, 256	# 2536
	mul		x23, x30, x13	# 2536
	addi	x23, x23, 64420	# 2536
	sw		x22, 0(x23)	# 2536
	mul		x23, x30, x5	# 2537
	addi	x23, x23, 64420	# 2537
	sw		x22, 0(x23)	# 2537
	lui		x22, %hi(l.29233)	# 2538
	ori		x22, x0, %lo(l.29233)	# 2538
	flw		f2, 0(x22)	# 2538
	sw		x6, -92(x2)	# 2538
	sw		x4, -96(x2)	# 2538
	fsw		f2, -100(x2)	# 2538
	addi	x4, x8, 0	# 2538
	sw		x1, -104(x2)	# 2538
	addi	x2, x2, -108	# 2538
	jal		x1, min_caml_float_of_int	# 2538
	addi	x2, x2, 108	# 2538
	lw		x1, -104(x2)	# 2538
	flw		f2, -100(x2)	# 2538
	fdiv	f1, f2, f1	# 2538
	mul		x4, x30, x13	# 2538
	addi	x4, x4, 64428	# 2538
	fsw		f1, 0(x4)	# 2538
	mul		x4, x30, x13	# 2348
	addi	x4, x4, 64412	# 2348
	lw		x4, 0(x4)	# 2348
	flw		f1, -8(x2)	# 2326
	sw		x4, -104(x2)	# 2326
	addi	x4, x12, 0	# 2326
	sw		x1, -108(x2)	# 2326
	addi	x2, x2, -112	# 2326
	jal		x1, min_caml_create_float_array	# 2326
	addi	x2, x2, 112	# 2326
	lw		x1, -108(x2)	# 2326
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -108(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -112(x2)	# 2314
	addi	x2, x2, -116	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 116	# 2314
	lw		x1, -112(x2)	# 2314
	addi	x5, x4, 0	# 2314
	addi	x4, x17, 0	# 2315
	sw		x1, -112(x2)	# 2315
	addi	x2, x2, -116	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 116	# 2315
	lw		x1, -112(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -112(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -116(x2)	# 2316
	addi	x2, x2, -120	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 120	# 2316
	lw		x1, -116(x2)	# 2316
	lw		x5, 0(x2)	# 2316
	mul		x6, x30, x5	# 2316
	lw		x8, -112(x2)	# 2316
	add		x6, x8, x6	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -116(x2)	# 2317
	addi	x2, x2, -120	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 120	# 2317
	lw		x1, -116(x2)	# 2317
	mul		x5, x30, x10	# 2317
	add		x5, x8, x5	# 2317
	sw		x4, 0(x5)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -116(x2)	# 2318
	addi	x2, x2, -120	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 120	# 2318
	lw		x1, -116(x2)	# 2318
	lw		x5, -20(x2)	# 2318
	mul		x6, x30, x5	# 2318
	add		x6, x8, x6	# 2318
	sw		x4, 0(x6)	# 2318
	addi	x4, x0, 4	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x4, -116(x2)	# 2319
	addi	x4, x5, 0	# 2319
	sw		x1, -120(x2)	# 2319
	addi	x2, x2, -124	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 124	# 2319
	lw		x1, -120(x2)	# 2319
	lw		x5, -116(x2)	# 2319
	mul		x6, x30, x5	# 2319
	add		x6, x8, x6	# 2319
	sw		x4, 0(x6)	# 2319
	lw		x4, -64(x2)	# 2328
	addi	x5, x13, 0	# 2328
	sw		x1, -120(x2)	# 2328
	addi	x2, x2, -124	# 2328
	jal		x1, min_caml_create_array	# 2328
	addi	x2, x2, 124	# 2328
	lw		x1, -120(x2)	# 2328
	lw		x5, -64(x2)	# 2329
	lw		x6, -4(x2)	# 2329
	sw		x4, -120(x2)	# 2329
	addi	x4, x5, 0	# 2329
	addi	x5, x6, 0	# 2329
	sw		x1, -124(x2)	# 2329
	addi	x2, x2, -128	# 2329
	jal		x1, min_caml_create_array	# 2329
	addi	x2, x2, 128	# 2329
	lw		x1, -124(x2)	# 2329
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -124(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -128(x2)	# 2314
	addi	x2, x2, -132	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 132	# 2314
	lw		x1, -128(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -64(x2)	# 2315
	sw		x1, -128(x2)	# 2315
	addi	x2, x2, -132	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 132	# 2315
	lw		x1, -128(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -128(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -132(x2)	# 2316
	addi	x2, x2, -136	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 136	# 2316
	lw		x1, -132(x2)	# 2316
	lw		x5, 0(x2)	# 2316
	mul		x6, x30, x5	# 2316
	lw		x12, -128(x2)	# 2316
	add		x6, x12, x6	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -132(x2)	# 2317
	addi	x2, x2, -136	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 136	# 2317
	lw		x1, -132(x2)	# 2317
	mul		x5, x30, x10	# 2317
	add		x5, x12, x5	# 2317
	sw		x4, 0(x5)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -132(x2)	# 2318
	addi	x2, x2, -136	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 136	# 2318
	lw		x1, -132(x2)	# 2318
	lw		x5, -20(x2)	# 2318
	mul		x6, x30, x5	# 2318
	add		x6, x12, x6	# 2318
	sw		x4, 0(x6)	# 2318
	flw		f1, -8(x2)	# 2319
	addi	x4, x5, 0	# 2319
	sw		x1, -132(x2)	# 2319
	addi	x2, x2, -136	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 136	# 2319
	lw		x1, -132(x2)	# 2319
	lw		x5, -116(x2)	# 2319
	mul		x6, x30, x5	# 2319
	add		x6, x12, x6	# 2319
	sw		x4, 0(x6)	# 2319
	lw		x4, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x1, -132(x2)	# 2314
	addi	x2, x2, -136	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 136	# 2314
	lw		x1, -132(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -64(x2)	# 2315
	sw		x1, -132(x2)	# 2315
	addi	x2, x2, -136	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 136	# 2315
	lw		x1, -132(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -132(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -136(x2)	# 2316
	addi	x2, x2, -140	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 140	# 2316
	lw		x1, -136(x2)	# 2316
	lw		x5, 0(x2)	# 2316
	mul		x6, x30, x5	# 2316
	lw		x13, -132(x2)	# 2316
	add		x6, x13, x6	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -136(x2)	# 2317
	addi	x2, x2, -140	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 140	# 2317
	lw		x1, -136(x2)	# 2317
	mul		x5, x30, x10	# 2317
	add		x5, x13, x5	# 2317
	sw		x4, 0(x5)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -136(x2)	# 2318
	addi	x2, x2, -140	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 140	# 2318
	lw		x1, -136(x2)	# 2318
	lw		x5, -20(x2)	# 2318
	mul		x6, x30, x5	# 2318
	add		x6, x13, x6	# 2318
	sw		x4, 0(x6)	# 2318
	flw		f1, -8(x2)	# 2319
	addi	x4, x5, 0	# 2319
	sw		x1, -136(x2)	# 2319
	addi	x2, x2, -140	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 140	# 2319
	lw		x1, -136(x2)	# 2319
	lw		x5, -116(x2)	# 2319
	mul		x6, x30, x5	# 2319
	add		x6, x13, x6	# 2319
	sw		x4, 0(x6)	# 2319
	lw		x4, 0(x2)	# 2332
	lw		x6, -4(x2)	# 2332
	addi	x5, x6, 0	# 2332
	sw		x1, -136(x2)	# 2332
	addi	x2, x2, -140	# 2332
	jal		x1, min_caml_create_array	# 2332
	addi	x2, x2, 140	# 2332
	lw		x1, -136(x2)	# 2332
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -136(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -140(x2)	# 2314
	addi	x2, x2, -144	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 144	# 2314
	lw		x1, -140(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -64(x2)	# 2315
	sw		x1, -140(x2)	# 2315
	addi	x2, x2, -144	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 144	# 2315
	lw		x1, -140(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -140(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -144(x2)	# 2316
	addi	x2, x2, -148	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 148	# 2316
	lw		x1, -144(x2)	# 2316
	lw		x5, 0(x2)	# 2316
	mul		x6, x30, x5	# 2316
	lw		x17, -140(x2)	# 2316
	add		x6, x17, x6	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -144(x2)	# 2317
	addi	x2, x2, -148	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 148	# 2317
	lw		x1, -144(x2)	# 2317
	mul		x5, x30, x10	# 2317
	add		x5, x17, x5	# 2317
	sw		x4, 0(x5)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -144(x2)	# 2318
	addi	x2, x2, -148	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 148	# 2318
	lw		x1, -144(x2)	# 2318
	lw		x5, -20(x2)	# 2318
	mul		x6, x30, x5	# 2318
	add		x6, x17, x6	# 2318
	sw		x4, 0(x6)	# 2318
	flw		f1, -8(x2)	# 2319
	addi	x4, x5, 0	# 2319
	sw		x1, -144(x2)	# 2319
	addi	x2, x2, -148	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 148	# 2319
	lw		x1, -144(x2)	# 2319
	lw		x5, -116(x2)	# 2319
	mul		x6, x30, x5	# 2319
	add		x6, x17, x6	# 2319
	sw		x4, 0(x6)	# 2319
	addi	x4, x3, 0	# 2334
	addi	x3, x3, 32	# 2334
	sw		x17, 28(x4)	# 2334
	lw		x6, -136(x2)	# 2334
	sw		x6, 24(x4)	# 2334
	sw		x13, 20(x4)	# 2334
	sw		x12, 16(x4)	# 2334
	lw		x6, -124(x2)	# 2334
	sw		x6, 12(x4)	# 2334
	lw		x6, -120(x2)	# 2334
	sw		x6, 8(x4)	# 2334
	sw		x8, 4(x4)	# 2334
	lw		x6, -108(x2)	# 2334
	sw		x6, 0(x4)	# 2334
	lw		x6, -104(x2)	# 2348
	addi	x5, x4, 0	# 2348
	addi	x4, x6, 0	# 2348
	sw		x1, -144(x2)	# 2348
	addi	x2, x2, -148	# 2348
	jal		x1, min_caml_create_array	# 2348
	addi	x2, x2, 148	# 2348
	lw		x1, -144(x2)	# 2348
	lw		x5, -4(x2)	# 2349
	mul		x6, x30, x5	# 2349
	addi	x6, x6, 64412	# 2349
	lw		x6, 0(x6)	# 2349
	sub		x6, x6, x10	# 2349
	sw		x9, -144(x2)	# 2349
	sw		x7, -148(x2)	# 2349
	addi	x5, x6, 0	# 2349
	addi	x29, x18, 0	# 2349
	sw		x1, -152(x2)	# 2349
	addi	x2, x2, -156	# 2349
	lw		x31, 0(x29)	# 2349
	jalr	x1, x31, 0	# 2349
	addi	x2, x2, 156	# 2349
	lw		x1, -152(x2)	# 2349
	lw		x5, -4(x2)	# 2348
	mul		x6, x30, x5	# 2348
	addi	x6, x6, 64412	# 2348
	lw		x6, 0(x6)	# 2348
	lw		x7, -20(x2)	# 2326
	flw		f1, -8(x2)	# 2326
	sw		x4, -152(x2)	# 2326
	addi	x4, x7, 0	# 2326
	sw		x1, -156(x2)	# 2326
	addi	x2, x2, -160	# 2326
	jal		x1, min_caml_create_float_array	# 2326
	addi	x2, x2, 160	# 2326
	lw		x1, -156(x2)	# 2326
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -156(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -160(x2)	# 2314
	addi	x2, x2, -164	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 164	# 2314
	lw		x1, -160(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -64(x2)	# 2315
	sw		x6, -160(x2)	# 2315
	sw		x1, -164(x2)	# 2315
	addi	x2, x2, -168	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 168	# 2315
	lw		x1, -164(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -164(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -168(x2)	# 2316
	addi	x2, x2, -172	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 172	# 2316
	lw		x1, -168(x2)	# 2316
	lw		x5, 0(x2)	# 2316
	mul		x6, x30, x5	# 2316
	lw		x7, -164(x2)	# 2316
	add		x6, x7, x6	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -168(x2)	# 2317
	addi	x2, x2, -172	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 172	# 2317
	lw		x1, -168(x2)	# 2317
	lw		x5, -48(x2)	# 2317
	mul		x6, x30, x5	# 2317
	add		x6, x7, x6	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -168(x2)	# 2318
	addi	x2, x2, -172	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 172	# 2318
	lw		x1, -168(x2)	# 2318
	lw		x5, -20(x2)	# 2318
	mul		x6, x30, x5	# 2318
	add		x6, x7, x6	# 2318
	sw		x4, 0(x6)	# 2318
	flw		f1, -8(x2)	# 2319
	addi	x4, x5, 0	# 2319
	sw		x1, -168(x2)	# 2319
	addi	x2, x2, -172	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 172	# 2319
	lw		x1, -168(x2)	# 2319
	lw		x5, -116(x2)	# 2319
	mul		x6, x30, x5	# 2319
	add		x6, x7, x6	# 2319
	sw		x4, 0(x6)	# 2319
	lw		x4, -64(x2)	# 2328
	lw		x6, -4(x2)	# 2328
	addi	x5, x6, 0	# 2328
	sw		x1, -168(x2)	# 2328
	addi	x2, x2, -172	# 2328
	jal		x1, min_caml_create_array	# 2328
	addi	x2, x2, 172	# 2328
	lw		x1, -168(x2)	# 2328
	lw		x5, -64(x2)	# 2329
	lw		x6, -4(x2)	# 2329
	sw		x4, -168(x2)	# 2329
	addi	x4, x5, 0	# 2329
	addi	x5, x6, 0	# 2329
	sw		x1, -172(x2)	# 2329
	addi	x2, x2, -176	# 2329
	jal		x1, min_caml_create_array	# 2329
	addi	x2, x2, 176	# 2329
	lw		x1, -172(x2)	# 2329
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -172(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -176(x2)	# 2314
	addi	x2, x2, -180	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 180	# 2314
	lw		x1, -176(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -64(x2)	# 2315
	sw		x1, -176(x2)	# 2315
	addi	x2, x2, -180	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 180	# 2315
	lw		x1, -176(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -176(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -180(x2)	# 2316
	addi	x2, x2, -184	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 184	# 2316
	lw		x1, -180(x2)	# 2316
	lw		x5, 0(x2)	# 2316
	mul		x6, x30, x5	# 2316
	lw		x8, -176(x2)	# 2316
	add		x6, x8, x6	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -180(x2)	# 2317
	addi	x2, x2, -184	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 184	# 2317
	lw		x1, -180(x2)	# 2317
	lw		x5, -48(x2)	# 2317
	mul		x6, x30, x5	# 2317
	add		x6, x8, x6	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -180(x2)	# 2318
	addi	x2, x2, -184	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 184	# 2318
	lw		x1, -180(x2)	# 2318
	lw		x5, -20(x2)	# 2318
	mul		x6, x30, x5	# 2318
	add		x6, x8, x6	# 2318
	sw		x4, 0(x6)	# 2318
	flw		f1, -8(x2)	# 2319
	addi	x4, x5, 0	# 2319
	sw		x1, -180(x2)	# 2319
	addi	x2, x2, -184	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 184	# 2319
	lw		x1, -180(x2)	# 2319
	lw		x5, -116(x2)	# 2319
	mul		x6, x30, x5	# 2319
	add		x6, x8, x6	# 2319
	sw		x4, 0(x6)	# 2319
	lw		x4, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x1, -180(x2)	# 2314
	addi	x2, x2, -184	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 184	# 2314
	lw		x1, -180(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -64(x2)	# 2315
	sw		x1, -180(x2)	# 2315
	addi	x2, x2, -184	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 184	# 2315
	lw		x1, -180(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -180(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -184(x2)	# 2316
	addi	x2, x2, -188	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 188	# 2316
	lw		x1, -184(x2)	# 2316
	lw		x5, 0(x2)	# 2316
	mul		x6, x30, x5	# 2316
	lw		x9, -180(x2)	# 2316
	add		x6, x9, x6	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -184(x2)	# 2317
	addi	x2, x2, -188	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 188	# 2317
	lw		x1, -184(x2)	# 2317
	lw		x5, -48(x2)	# 2317
	mul		x6, x30, x5	# 2317
	add		x6, x9, x6	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -184(x2)	# 2318
	addi	x2, x2, -188	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 188	# 2318
	lw		x1, -184(x2)	# 2318
	lw		x5, -20(x2)	# 2318
	mul		x6, x30, x5	# 2318
	add		x6, x9, x6	# 2318
	sw		x4, 0(x6)	# 2318
	flw		f1, -8(x2)	# 2319
	addi	x4, x5, 0	# 2319
	sw		x1, -184(x2)	# 2319
	addi	x2, x2, -188	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 188	# 2319
	lw		x1, -184(x2)	# 2319
	lw		x5, -116(x2)	# 2319
	mul		x6, x30, x5	# 2319
	add		x6, x9, x6	# 2319
	sw		x4, 0(x6)	# 2319
	lw		x4, 0(x2)	# 2332
	lw		x6, -4(x2)	# 2332
	addi	x5, x6, 0	# 2332
	sw		x1, -184(x2)	# 2332
	addi	x2, x2, -188	# 2332
	jal		x1, min_caml_create_array	# 2332
	addi	x2, x2, 188	# 2332
	lw		x1, -184(x2)	# 2332
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -184(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -188(x2)	# 2314
	addi	x2, x2, -192	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 192	# 2314
	lw		x1, -188(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -64(x2)	# 2315
	sw		x1, -188(x2)	# 2315
	addi	x2, x2, -192	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 192	# 2315
	lw		x1, -188(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -188(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -192(x2)	# 2316
	addi	x2, x2, -196	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 196	# 2316
	lw		x1, -192(x2)	# 2316
	lw		x5, 0(x2)	# 2316
	mul		x6, x30, x5	# 2316
	lw		x10, -188(x2)	# 2316
	add		x6, x10, x6	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -192(x2)	# 2317
	addi	x2, x2, -196	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 196	# 2317
	lw		x1, -192(x2)	# 2317
	lw		x5, -48(x2)	# 2317
	mul		x6, x30, x5	# 2317
	add		x6, x10, x6	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -192(x2)	# 2318
	addi	x2, x2, -196	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 196	# 2318
	lw		x1, -192(x2)	# 2318
	lw		x5, -20(x2)	# 2318
	mul		x6, x30, x5	# 2318
	add		x6, x10, x6	# 2318
	sw		x4, 0(x6)	# 2318
	flw		f1, -8(x2)	# 2319
	addi	x4, x5, 0	# 2319
	sw		x1, -192(x2)	# 2319
	addi	x2, x2, -196	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 196	# 2319
	lw		x1, -192(x2)	# 2319
	lw		x5, -116(x2)	# 2319
	mul		x6, x30, x5	# 2319
	add		x6, x10, x6	# 2319
	sw		x4, 0(x6)	# 2319
	addi	x4, x3, 0	# 2334
	addi	x3, x3, 32	# 2334
	sw		x10, 28(x4)	# 2334
	lw		x6, -184(x2)	# 2334
	sw		x6, 24(x4)	# 2334
	sw		x9, 20(x4)	# 2334
	sw		x8, 16(x4)	# 2334
	lw		x6, -172(x2)	# 2334
	sw		x6, 12(x4)	# 2334
	lw		x6, -168(x2)	# 2334
	sw		x6, 8(x4)	# 2334
	sw		x7, 4(x4)	# 2334
	lw		x6, -156(x2)	# 2334
	sw		x6, 0(x4)	# 2334
	lw		x6, -160(x2)	# 2348
	addi	x5, x4, 0	# 2348
	addi	x4, x6, 0	# 2348
	sw		x1, -192(x2)	# 2348
	addi	x2, x2, -196	# 2348
	jal		x1, min_caml_create_array	# 2348
	addi	x2, x2, 196	# 2348
	lw		x1, -192(x2)	# 2348
	lw		x5, -4(x2)	# 2349
	mul		x6, x30, x5	# 2349
	addi	x6, x6, 64412	# 2349
	lw		x6, 0(x6)	# 2349
	lw		x7, -48(x2)	# 2349
	sub		x6, x6, x7	# 2349
	addi	x5, x6, 0	# 2349
	addi	x29, x18, 0	# 2349
	sw		x1, -192(x2)	# 2349
	addi	x2, x2, -196	# 2349
	lw		x31, 0(x29)	# 2349
	jalr	x1, x31, 0	# 2349
	addi	x2, x2, 196	# 2349
	lw		x1, -192(x2)	# 2349
	lw		x5, -4(x2)	# 2348
	mul		x6, x30, x5	# 2348
	addi	x6, x6, 64412	# 2348
	lw		x6, 0(x6)	# 2348
	lw		x7, -20(x2)	# 2326
	flw		f1, -8(x2)	# 2326
	sw		x4, -192(x2)	# 2326
	addi	x4, x7, 0	# 2326
	sw		x1, -196(x2)	# 2326
	addi	x2, x2, -200	# 2326
	jal		x1, min_caml_create_float_array	# 2326
	addi	x2, x2, 200	# 2326
	lw		x1, -196(x2)	# 2326
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -196(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -200(x2)	# 2314
	addi	x2, x2, -204	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 204	# 2314
	lw		x1, -200(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -64(x2)	# 2315
	sw		x6, -200(x2)	# 2315
	sw		x1, -204(x2)	# 2315
	addi	x2, x2, -208	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 208	# 2315
	lw		x1, -204(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -204(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -208(x2)	# 2316
	addi	x2, x2, -212	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 212	# 2316
	lw		x1, -208(x2)	# 2316
	lw		x5, 0(x2)	# 2316
	mul		x6, x30, x5	# 2316
	lw		x7, -204(x2)	# 2316
	add		x6, x7, x6	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -208(x2)	# 2317
	addi	x2, x2, -212	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 212	# 2317
	lw		x1, -208(x2)	# 2317
	lw		x5, -48(x2)	# 2317
	mul		x6, x30, x5	# 2317
	add		x6, x7, x6	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -208(x2)	# 2318
	addi	x2, x2, -212	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 212	# 2318
	lw		x1, -208(x2)	# 2318
	lw		x5, -20(x2)	# 2318
	mul		x6, x30, x5	# 2318
	add		x6, x7, x6	# 2318
	sw		x4, 0(x6)	# 2318
	flw		f1, -8(x2)	# 2319
	addi	x4, x5, 0	# 2319
	sw		x1, -208(x2)	# 2319
	addi	x2, x2, -212	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 212	# 2319
	lw		x1, -208(x2)	# 2319
	lw		x5, -116(x2)	# 2319
	mul		x6, x30, x5	# 2319
	add		x6, x7, x6	# 2319
	sw		x4, 0(x6)	# 2319
	lw		x4, -64(x2)	# 2328
	lw		x6, -4(x2)	# 2328
	addi	x5, x6, 0	# 2328
	sw		x1, -208(x2)	# 2328
	addi	x2, x2, -212	# 2328
	jal		x1, min_caml_create_array	# 2328
	addi	x2, x2, 212	# 2328
	lw		x1, -208(x2)	# 2328
	lw		x5, -64(x2)	# 2329
	lw		x6, -4(x2)	# 2329
	sw		x4, -208(x2)	# 2329
	addi	x4, x5, 0	# 2329
	addi	x5, x6, 0	# 2329
	sw		x1, -212(x2)	# 2329
	addi	x2, x2, -216	# 2329
	jal		x1, min_caml_create_array	# 2329
	addi	x2, x2, 216	# 2329
	lw		x1, -212(x2)	# 2329
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -212(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -216(x2)	# 2314
	addi	x2, x2, -220	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 220	# 2314
	lw		x1, -216(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -64(x2)	# 2315
	sw		x1, -216(x2)	# 2315
	addi	x2, x2, -220	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 220	# 2315
	lw		x1, -216(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -216(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -220(x2)	# 2316
	addi	x2, x2, -224	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 224	# 2316
	lw		x1, -220(x2)	# 2316
	lw		x5, 0(x2)	# 2316
	mul		x6, x30, x5	# 2316
	lw		x8, -216(x2)	# 2316
	add		x6, x8, x6	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -220(x2)	# 2317
	addi	x2, x2, -224	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 224	# 2317
	lw		x1, -220(x2)	# 2317
	lw		x5, -48(x2)	# 2317
	mul		x6, x30, x5	# 2317
	add		x6, x8, x6	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -220(x2)	# 2318
	addi	x2, x2, -224	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 224	# 2318
	lw		x1, -220(x2)	# 2318
	lw		x5, -20(x2)	# 2318
	mul		x6, x30, x5	# 2318
	add		x6, x8, x6	# 2318
	sw		x4, 0(x6)	# 2318
	flw		f1, -8(x2)	# 2319
	addi	x4, x5, 0	# 2319
	sw		x1, -220(x2)	# 2319
	addi	x2, x2, -224	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 224	# 2319
	lw		x1, -220(x2)	# 2319
	lw		x5, -116(x2)	# 2319
	mul		x6, x30, x5	# 2319
	add		x6, x8, x6	# 2319
	sw		x4, 0(x6)	# 2319
	lw		x4, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x1, -220(x2)	# 2314
	addi	x2, x2, -224	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 224	# 2314
	lw		x1, -220(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -64(x2)	# 2315
	sw		x1, -220(x2)	# 2315
	addi	x2, x2, -224	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 224	# 2315
	lw		x1, -220(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -220(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -224(x2)	# 2316
	addi	x2, x2, -228	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 228	# 2316
	lw		x1, -224(x2)	# 2316
	lw		x5, 0(x2)	# 2316
	mul		x6, x30, x5	# 2316
	lw		x9, -220(x2)	# 2316
	add		x6, x9, x6	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -224(x2)	# 2317
	addi	x2, x2, -228	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 228	# 2317
	lw		x1, -224(x2)	# 2317
	lw		x5, -48(x2)	# 2317
	mul		x6, x30, x5	# 2317
	add		x6, x9, x6	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -224(x2)	# 2318
	addi	x2, x2, -228	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 228	# 2318
	lw		x1, -224(x2)	# 2318
	lw		x5, -20(x2)	# 2318
	mul		x6, x30, x5	# 2318
	add		x6, x9, x6	# 2318
	sw		x4, 0(x6)	# 2318
	flw		f1, -8(x2)	# 2319
	addi	x4, x5, 0	# 2319
	sw		x1, -224(x2)	# 2319
	addi	x2, x2, -228	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 228	# 2319
	lw		x1, -224(x2)	# 2319
	lw		x5, -116(x2)	# 2319
	mul		x6, x30, x5	# 2319
	add		x6, x9, x6	# 2319
	sw		x4, 0(x6)	# 2319
	lw		x4, 0(x2)	# 2332
	lw		x6, -4(x2)	# 2332
	addi	x5, x6, 0	# 2332
	sw		x1, -224(x2)	# 2332
	addi	x2, x2, -228	# 2332
	jal		x1, min_caml_create_array	# 2332
	addi	x2, x2, 228	# 2332
	lw		x1, -224(x2)	# 2332
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -224(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -228(x2)	# 2314
	addi	x2, x2, -232	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 232	# 2314
	lw		x1, -228(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -64(x2)	# 2315
	sw		x1, -228(x2)	# 2315
	addi	x2, x2, -232	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 232	# 2315
	lw		x1, -228(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -228(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -232(x2)	# 2316
	addi	x2, x2, -236	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 236	# 2316
	lw		x1, -232(x2)	# 2316
	lw		x5, 0(x2)	# 2316
	mul		x6, x30, x5	# 2316
	lw		x10, -228(x2)	# 2316
	add		x6, x10, x6	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -232(x2)	# 2317
	addi	x2, x2, -236	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 236	# 2317
	lw		x1, -232(x2)	# 2317
	lw		x5, -48(x2)	# 2317
	mul		x6, x30, x5	# 2317
	add		x6, x10, x6	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -232(x2)	# 2318
	addi	x2, x2, -236	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 236	# 2318
	lw		x1, -232(x2)	# 2318
	lw		x5, -20(x2)	# 2318
	mul		x6, x30, x5	# 2318
	add		x6, x10, x6	# 2318
	sw		x4, 0(x6)	# 2318
	flw		f1, -8(x2)	# 2319
	addi	x4, x5, 0	# 2319
	sw		x1, -232(x2)	# 2319
	addi	x2, x2, -236	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 236	# 2319
	lw		x1, -232(x2)	# 2319
	lw		x5, -116(x2)	# 2319
	mul		x6, x30, x5	# 2319
	add		x6, x10, x6	# 2319
	sw		x4, 0(x6)	# 2319
	addi	x4, x3, 0	# 2334
	addi	x3, x3, 32	# 2334
	sw		x10, 28(x4)	# 2334
	lw		x6, -224(x2)	# 2334
	sw		x6, 24(x4)	# 2334
	sw		x9, 20(x4)	# 2334
	sw		x8, 16(x4)	# 2334
	lw		x6, -212(x2)	# 2334
	sw		x6, 12(x4)	# 2334
	lw		x6, -208(x2)	# 2334
	sw		x6, 8(x4)	# 2334
	sw		x7, 4(x4)	# 2334
	lw		x6, -196(x2)	# 2334
	sw		x6, 0(x4)	# 2334
	lw		x6, -200(x2)	# 2348
	addi	x5, x4, 0	# 2348
	addi	x4, x6, 0	# 2348
	sw		x1, -232(x2)	# 2348
	addi	x2, x2, -236	# 2348
	jal		x1, min_caml_create_array	# 2348
	addi	x2, x2, 236	# 2348
	lw		x1, -232(x2)	# 2348
	lw		x5, -4(x2)	# 2349
	mul		x6, x30, x5	# 2349
	addi	x6, x6, 64412	# 2349
	lw		x6, 0(x6)	# 2349
	lw		x7, -48(x2)	# 2349
	sub		x6, x6, x7	# 2349
	addi	x5, x6, 0	# 2349
	addi	x29, x18, 0	# 2349
	sw		x1, -232(x2)	# 2349
	addi	x2, x2, -236	# 2349
	lw		x31, 0(x29)	# 2349
	jalr	x1, x31, 0	# 2349
	addi	x2, x2, 236	# 2349
	lw		x1, -232(x2)	# 2349
	sw		x1, -232(x2)	# 726
	addi	x2, x2, -236	# 726
	jal		x1, min_caml_read_float	# 726
	addi	x2, x2, 236	# 726
	lw		x1, -232(x2)	# 726
	lw		x5, -4(x2)	# 726
	mul		x6, x30, x5	# 726
	addi	x6, x6, 64084	# 726
	fsw		f1, 0(x6)	# 726
	sw		x1, -232(x2)	# 727
	addi	x2, x2, -236	# 727
	jal		x1, min_caml_read_float	# 727
	addi	x2, x2, 236	# 727
	lw		x1, -232(x2)	# 727
	lw		x6, 0(x2)	# 727
	mul		x7, x30, x6	# 727
	addi	x7, x7, 64084	# 727
	fsw		f1, 0(x7)	# 727
	sw		x1, -232(x2)	# 728
	addi	x2, x2, -236	# 728
	jal		x1, min_caml_read_float	# 728
	addi	x2, x2, 236	# 728
	lw		x1, -232(x2)	# 728
	lw		x7, -48(x2)	# 728
	mul		x8, x30, x7	# 728
	addi	x8, x8, 64084	# 728
	fsw		f1, 0(x8)	# 728
	sw		x1, -232(x2)	# 730
	addi	x2, x2, -236	# 730
	jal		x1, min_caml_read_float	# 730
	addi	x2, x2, 236	# 730
	lw		x1, -232(x2)	# 730
	lui		x8, %hi(l.26391)	# 719
	ori		x8, x0, %lo(l.26391)	# 719
	flw		f2, 0(x8)	# 719
	fmul	f1, f1, f2	# 719
	lw		x29, -148(x2)	# 731
	sw		x4, -232(x2)	# 731
	fsw		f2, -236(x2)	# 731
	fsw		f1, -240(x2)	# 731
	sw		x1, -244(x2)	# 731
	addi	x2, x2, -248	# 731
	lw		x31, 0(x29)	# 731
	jalr	x1, x31, 0	# 731
	addi	x2, x2, 248	# 731
	lw		x1, -244(x2)	# 731
	flw		f2, -240(x2)	# 732
	lw		x29, -96(x2)	# 732
	fsw		f1, -244(x2)	# 732
	fadd	f1, f0, f2	# 732
	sw		x1, -248(x2)	# 732
	addi	x2, x2, -252	# 732
	lw		x31, 0(x29)	# 732
	jalr	x1, x31, 0	# 732
	addi	x2, x2, 252	# 732
	lw		x1, -248(x2)	# 732
	fsw		f1, -248(x2)	# 733
	sw		x1, -252(x2)	# 733
	addi	x2, x2, -256	# 733
	jal		x1, min_caml_read_float	# 733
	addi	x2, x2, 256	# 733
	lw		x1, -252(x2)	# 733
	flw		f2, -236(x2)	# 719
	fmul	f1, f1, f2	# 719
	lw		x29, -148(x2)	# 734
	fsw		f1, -252(x2)	# 734
	sw		x1, -256(x2)	# 734
	addi	x2, x2, -260	# 734
	lw		x31, 0(x29)	# 734
	jalr	x1, x31, 0	# 734
	addi	x2, x2, 260	# 734
	lw		x1, -256(x2)	# 734
	flw		f2, -252(x2)	# 735
	lw		x29, -96(x2)	# 735
	fsw		f1, -256(x2)	# 735
	fadd	f1, f0, f2	# 735
	sw		x1, -260(x2)	# 735
	addi	x2, x2, -264	# 735
	lw		x31, 0(x29)	# 735
	jalr	x1, x31, 0	# 735
	addi	x2, x2, 264	# 735
	lw		x1, -260(x2)	# 735
	flw		f2, -244(x2)	# 737
	fmul	f3, f2, f1	# 737
	lui		x4, %hi(l.29379)	# 737
	ori		x4, x0, %lo(l.29379)	# 737
	flw		f4, 0(x4)	# 737
	fmul	f3, f3, f4	# 737
	mul		x4, x30, x5	# 737
	addi	x4, x4, 64480	# 737
	fsw		f3, 0(x4)	# 737
	lui		x4, %hi(l.29383)	# 738
	ori		x4, x0, %lo(l.29383)	# 738
	flw		f3, 0(x4)	# 738
	flw		f5, -248(x2)	# 738
	fmul	f3, f5, f3	# 738
	mul		x4, x30, x6	# 738
	addi	x4, x4, 64480	# 738
	fsw		f3, 0(x4)	# 738
	flw		f3, -256(x2)	# 739
	fmul	f6, f2, f3	# 739
	fmul	f4, f6, f4	# 739
	mul		x4, x30, x7	# 739
	addi	x4, x4, 64480	# 739
	fsw		f4, 0(x4)	# 739
	mul		x4, x30, x5	# 741
	addi	x4, x4, 64456	# 741
	fsw		f3, 0(x4)	# 741
	mul		x4, x30, x6	# 742
	addi	x4, x4, 64456	# 742
	flw		f4, -8(x2)	# 742
	fsw		f4, 0(x4)	# 742
	fsub	f6, f0, f1	# 123
	mul		x4, x30, x7	# 743
	addi	x4, x4, 64456	# 743
	fsw		f6, 0(x4)	# 743
	fsub	f5, f0, f5	# 123
	fmul	f1, f5, f1	# 745
	mul		x4, x30, x5	# 745
	addi	x4, x4, 64468	# 745
	fsw		f1, 0(x4)	# 745
	fsub	f1, f0, f2	# 123
	mul		x4, x30, x6	# 746
	addi	x4, x4, 64468	# 746
	fsw		f1, 0(x4)	# 746
	fmul	f1, f5, f3	# 747
	mul		x4, x30, x7	# 747
	addi	x4, x4, 64468	# 747
	fsw		f1, 0(x4)	# 747
	mul		x4, x30, x5	# 749
	addi	x4, x4, 64084	# 749
	flw		f1, 0(x4)	# 749
	mul		x4, x30, x5	# 749
	addi	x4, x4, 64480	# 749
	flw		f2, 0(x4)	# 749
	fsub	f1, f1, f2	# 749
	mul		x4, x30, x5	# 749
	addi	x4, x4, 64096	# 749
	fsw		f1, 0(x4)	# 749
	mul		x4, x30, x6	# 750
	addi	x4, x4, 64084	# 750
	flw		f1, 0(x4)	# 750
	mul		x4, x30, x6	# 750
	addi	x4, x4, 64480	# 750
	flw		f2, 0(x4)	# 750
	fsub	f1, f1, f2	# 750
	mul		x4, x30, x6	# 750
	addi	x4, x4, 64096	# 750
	fsw		f1, 0(x4)	# 750
	mul		x4, x30, x7	# 751
	addi	x4, x4, 64084	# 751
	flw		f1, 0(x4)	# 751
	mul		x4, x30, x7	# 751
	addi	x4, x4, 64480	# 751
	flw		f2, 0(x4)	# 751
	fsub	f1, f1, f2	# 751
	mul		x4, x30, x7	# 751
	addi	x4, x4, 64096	# 751
	fsw		f1, 0(x4)	# 751
	sw		x1, -260(x2)	# 758
	addi	x2, x2, -264	# 758
	jal		x1, min_caml_read_int	# 758
	addi	x2, x2, 264	# 758
	lw		x1, -260(x2)	# 758
	sw		x1, -260(x2)	# 761
	addi	x2, x2, -264	# 761
	jal		x1, min_caml_read_float	# 761
	addi	x2, x2, 264	# 761
	lw		x1, -260(x2)	# 761
	flw		f2, -236(x2)	# 719
	fmul	f1, f1, f2	# 719
	lw		x29, -96(x2)	# 762
	fsw		f1, -260(x2)	# 762
	sw		x1, -264(x2)	# 762
	addi	x2, x2, -268	# 762
	lw		x31, 0(x29)	# 762
	jalr	x1, x31, 0	# 762
	addi	x2, x2, 268	# 762
	lw		x1, -264(x2)	# 762
	fsub	f1, f0, f1	# 123
	mul		x4, x30, x6	# 763
	addi	x4, x4, 64108	# 763
	fsw		f1, 0(x4)	# 763
	sw		x1, -264(x2)	# 764
	addi	x2, x2, -268	# 764
	jal		x1, min_caml_read_float	# 764
	addi	x2, x2, 268	# 764
	lw		x1, -264(x2)	# 764
	flw		f2, -236(x2)	# 719
	fmul	f1, f1, f2	# 719
	flw		f2, -260(x2)	# 765
	lw		x29, -148(x2)	# 765
	fsw		f1, -264(x2)	# 765
	fadd	f1, f0, f2	# 765
	sw		x1, -268(x2)	# 765
	addi	x2, x2, -272	# 765
	lw		x31, 0(x29)	# 765
	jalr	x1, x31, 0	# 765
	addi	x2, x2, 272	# 765
	lw		x1, -268(x2)	# 765
	flw		f2, -264(x2)	# 766
	lw		x29, -96(x2)	# 766
	fsw		f1, -268(x2)	# 766
	fadd	f1, f0, f2	# 766
	sw		x1, -272(x2)	# 766
	addi	x2, x2, -276	# 766
	lw		x31, 0(x29)	# 766
	jalr	x1, x31, 0	# 766
	addi	x2, x2, 276	# 766
	lw		x1, -272(x2)	# 766
	flw		f2, -268(x2)	# 767
	fmul	f1, f2, f1	# 767
	mul		x4, x30, x5	# 767
	addi	x4, x4, 64108	# 767
	fsw		f1, 0(x4)	# 767
	flw		f1, -264(x2)	# 768
	lw		x29, -148(x2)	# 768
	sw		x1, -272(x2)	# 768
	addi	x2, x2, -276	# 768
	lw		x31, 0(x29)	# 768
	jalr	x1, x31, 0	# 768
	addi	x2, x2, 276	# 768
	lw		x1, -272(x2)	# 768
	flw		f2, -268(x2)	# 769
	fmul	f1, f2, f1	# 769
	mul		x4, x30, x7	# 769
	addi	x4, x4, 64108	# 769
	fsw		f1, 0(x4)	# 769
	sw		x1, -272(x2)	# 770
	addi	x2, x2, -276	# 770
	jal		x1, min_caml_read_float	# 770
	addi	x2, x2, 276	# 770
	lw		x1, -272(x2)	# 770
	mul		x4, x30, x5	# 770
	addi	x4, x4, 64120	# 770
	fsw		f1, 0(x4)	# 770
	lw		x29, -144(x2)	# 912
	sw		x11, -272(x2)	# 912
	sw		x14, -276(x2)	# 912
	addi	x4, x5, 0	# 912
	sw		x1, -280(x2)	# 912
	addi	x2, x2, -284	# 912
	lw		x31, 0(x29)	# 912
	jalr	x1, x31, 0	# 912
	addi	x2, x2, 284	# 912
	lw		x1, -280(x2)	# 912
	lw		x4, -4(x2)	# 949
	addi	x29, x16, 0	# 949
	sw		x1, -280(x2)	# 949
	addi	x2, x2, -284	# 949
	lw		x31, 0(x29)	# 949
	jalr	x1, x31, 0	# 949
	addi	x2, x2, 284	# 949
	lw		x1, -280(x2)	# 949
	lw		x4, -4(x2)	# 950
	addi	x29, x15, 0	# 950
	sw		x1, -280(x2)	# 950
	addi	x2, x2, -284	# 950
	lw		x31, 0(x29)	# 950
	jalr	x1, x31, 0	# 950
	addi	x2, x2, 284	# 950
	lw		x1, -280(x2)	# 950
	lw		x5, -4(x2)	# 950
	mul		x6, x30, x5	# 950
	addi	x6, x6, 64332	# 950
	sw		x4, 0(x6)	# 950
	addi	x4, x0, 80	# 2157
	sw		x1, -280(x2)	# 2157
	addi	x2, x2, -284	# 2157
	jal		x1, min_caml_print_char	# 2157
	addi	x2, x2, 284	# 2157
	lw		x1, -280(x2)	# 2157
	addi	x4, x0, 51	# 2158
	sw		x1, -280(x2)	# 2158
	addi	x2, x2, -284	# 2158
	jal		x1, min_caml_print_char	# 2158
	addi	x2, x2, 284	# 2158
	lw		x1, -280(x2)	# 2158
	addi	x4, x0, 10	# 2159
	sw		x4, -280(x2)	# 2159
	sw		x1, -284(x2)	# 2159
	addi	x2, x2, -288	# 2159
	jal		x1, min_caml_print_char	# 2159
	addi	x2, x2, 288	# 2159
	lw		x1, -284(x2)	# 2159
	mul		x4, x30, x5	# 2160
	addi	x4, x4, 64412	# 2160
	lw		x4, 0(x4)	# 2160
	sw		x1, -284(x2)	# 2160
	addi	x2, x2, -288	# 2160
	jal		x1, min_caml_print_int	# 2160
	addi	x2, x2, 288	# 2160
	lw		x1, -284(x2)	# 2160
	addi	x4, x0, 32	# 2161
	sw		x4, -284(x2)	# 2161
	sw		x1, -288(x2)	# 2161
	addi	x2, x2, -292	# 2161
	jal		x1, min_caml_print_char	# 2161
	addi	x2, x2, 292	# 2161
	lw		x1, -288(x2)	# 2161
	lw		x4, 0(x2)	# 2162
	mul		x6, x30, x4	# 2162
	addi	x6, x6, 64412	# 2162
	lw		x6, 0(x6)	# 2162
	addi	x4, x6, 0	# 2162
	sw		x1, -288(x2)	# 2162
	addi	x2, x2, -292	# 2162
	jal		x1, min_caml_print_int	# 2162
	addi	x2, x2, 292	# 2162
	lw		x1, -288(x2)	# 2162
	lw		x4, -284(x2)	# 2163
	sw		x1, -288(x2)	# 2163
	addi	x2, x2, -292	# 2163
	jal		x1, min_caml_print_char	# 2163
	addi	x2, x2, 292	# 2163
	lw		x1, -288(x2)	# 2163
	addi	x4, x0, 255	# 2164
	sw		x1, -288(x2)	# 2164
	addi	x2, x2, -292	# 2164
	jal		x1, min_caml_print_int	# 2164
	addi	x2, x2, 292	# 2164
	lw		x1, -288(x2)	# 2164
	lw		x4, -280(x2)	# 2165
	sw		x1, -288(x2)	# 2165
	addi	x2, x2, -292	# 2165
	jal		x1, min_caml_print_char	# 2165
	addi	x2, x2, 292	# 2165
	lw		x1, -288(x2)	# 2165
	lw		x4, -116(x2)	# 2463
	addi	x29, x20, 0	# 2463
	sw		x1, -288(x2)	# 2463
	addi	x2, x2, -292	# 2463
	lw		x31, 0(x29)	# 2463
	jalr	x1, x31, 0	# 2463
	addi	x2, x2, 292	# 2463
	lw		x1, -288(x2)	# 2463
	addi	x4, x0, 9	# 2464
	lw		x5, -4(x2)	# 2464
	addi	x6, x5, 0	# 2464
	addi	x29, x19, 0	# 2464
	sw		x1, -288(x2)	# 2464
	addi	x2, x2, -292	# 2464
	lw		x31, 0(x29)	# 2464
	jalr	x1, x31, 0	# 2464
	addi	x2, x2, 292	# 2464
	lw		x1, -288(x2)	# 2464
	lw		x4, -116(x2)	# 2465
	addi	x29, x21, 0	# 2465
	sw		x1, -288(x2)	# 2465
	addi	x2, x2, -292	# 2465
	lw		x31, 0(x29)	# 2465
	jalr	x1, x31, 0	# 2465
	addi	x2, x2, 292	# 2465
	lw		x1, -288(x2)	# 2465
	lw		x4, -4(x2)	# 301
	mul		x5, x30, x4	# 301
	addi	x5, x5, 64108	# 301
	flw		f1, 0(x5)	# 301
	mul		x5, x30, x4	# 301
	addi	x5, x5, 64532	# 301
	fsw		f1, 0(x5)	# 301
	lw		x5, 0(x2)	# 302
	mul		x6, x30, x5	# 302
	addi	x6, x6, 64108	# 302
	flw		f1, 0(x6)	# 302
	mul		x6, x30, x5	# 302
	addi	x6, x6, 64532	# 302
	fsw		f1, 0(x6)	# 302
	lw		x6, -48(x2)	# 303
	mul		x7, x30, x6	# 303
	addi	x7, x7, 64108	# 303
	flw		f1, 0(x7)	# 303
	mul		x7, x30, x6	# 303
	addi	x7, x7, 64532	# 303
	fsw		f1, 0(x7)	# 303
	mul		x7, x30, x4	# 1329
	addi	x7, x7, 63796	# 1329
	lw		x7, 0(x7)	# 1329
	sub		x7, x7, x5	# 1329
	lw		x8, -80(x2)	# 1329
	lw		x29, -276(x2)	# 1329
	addi	x5, x7, 0	# 1329
	addi	x4, x8, 0	# 1329
	sw		x1, -288(x2)	# 1329
	addi	x2, x2, -292	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 292	# 1329
	lw		x1, -288(x2)	# 1329
	lw		x4, -4(x2)	# 2547
	mul		x5, x30, x4	# 2547
	addi	x5, x5, 63796	# 2547
	lw		x5, 0(x5)	# 2547
	lw		x6, 0(x2)	# 2547
	sub		x5, x5, x6	# 2547
	ble		x4, x5, ble.32597	# 2512
	jal		x0, ble_cont.32596	# 2512
ble.32597:
	mul		x7, x30, x5	# 2513
	addi	x7, x7, 63844	# 2513
	lw		x7, 0(x7)	# 2513
	lw		x8, 8(x7)	# 405
	lw		x9, -48(x2)	# 2514
	beq		x8, x9, beq.32599	# 2514
	jal		x0, ble_cont.32596	# 2514
beq.32599:
	lw		x8, 28(x7)	# 503
	mul		x10, x30, x4	# 508
	add		x8, x8, x10	# 508
	flw		f1, 0(x8)	# 508
	fle		f30, f1, ble_cont.32596	# 125
	lw		x8, 4(x7)	# 395
	beq		x8, x6, beq.32603	# 2518
	beq		x8, x9, beq.32605	# 2520
	jal		x0, ble_cont.32596	# 2520
beq.32605:
	lw		x8, -116(x2)	# 2497
	mul		x5, x5, x8	# 2497
	addi	x5, x5, 1	# 2497
	mul		x8, x30, x4	# 2498
	addi	x8, x8, 65532	# 2498
	lw		x8, 0(x8)	# 2498
	lw		x10, 28(x7)	# 503
	mul		x11, x30, x4	# 508
	add		x10, x10, x11	# 508
	flw		f1, 0(x10)	# 508
	fsub	f1, f30, f1	# 2499
	lw		x10, 16(x7)	# 463
	mul		x11, x30, x4	# 334
	addi	x11, x11, 64108	# 334
	flw		f2, 0(x11)	# 334
	mul		x11, x30, x4	# 334
	add		x11, x10, x11	# 334
	flw		f3, 0(x11)	# 334
	fmul	f3, f2, f3	# 334
	mul		x11, x30, x6	# 334
	addi	x11, x11, 64108	# 334
	flw		f4, 0(x11)	# 334
	mul		x11, x30, x6	# 334
	add		x11, x10, x11	# 334
	flw		f5, 0(x11)	# 334
	fmul	f5, f4, f5	# 334
	fadd	f3, f3, f5	# 334
	mul		x11, x30, x9	# 334
	addi	x11, x11, 64108	# 334
	flw		f5, 0(x11)	# 334
	mul		x11, x30, x9	# 334
	add		x10, x10, x11	# 334
	flw		f6, 0(x10)	# 334
	fmul	f6, f5, f6	# 334
	fadd	f3, f3, f6	# 334
	lw		x10, 16(x7)	# 433
	mul		x11, x30, x4	# 438
	add		x10, x10, x11	# 438
	flw		f7, 0(x10)	# 438
	fmul	f7, f26, f7	# 2503
	fmul	f7, f7, f3	# 2503
	fsub	f2, f7, f2	# 2503
	lw		x10, 16(x7)	# 443
	mul		x11, x30, x6	# 448
	add		x10, x10, x11	# 448
	flw		f7, 0(x10)	# 448
	fmul	f7, f26, f7	# 2504
	fmul	f7, f7, f3	# 2504
	fsub	f4, f7, f4	# 2504
	lw		x7, 16(x7)	# 453
	mul		x10, x30, x9	# 458
	add		x7, x7, x10	# 458
	flw		f7, 0(x7)	# 458
	fmul	f6, f26, f7	# 2505
	fmul	f3, f6, f3	# 2505
	fsub	f3, f3, f5	# 2505
	lw		x7, -20(x2)	# 2424
	flw		f5, -8(x2)	# 2424
	sw		x5, -288(x2)	# 2424
	fsw		f1, -292(x2)	# 2424
	addi	x4, x7, 0	# 2424
	fadd	f1, f0, f5	# 2424
	sw		x1, -296(x2)	# 2424
	addi	x2, x2, -300	# 2424
	jal		x1, min_caml_create_float_array	# 2424
	addi	x2, x2, 300	# 2424
	lw		x1, -296(x2)	# 2424
	addi	x5, x4, 0	# 2424
	lw		x4, -4(x2)	# 2425
	mul		x7, x30, x4	# 2425
	addi	x7, x7, 63796	# 2425
	lw		x7, 0(x7)	# 2425
	sw		x5, -296(x2)	# 2425
	addi	x4, x7, 0	# 2425
	sw		x1, -300(x2)	# 2425
	addi	x2, x2, -304	# 2425
	jal		x1, min_caml_create_array	# 2425
	addi	x2, x2, 304	# 2425
	lw		x1, -300(x2)	# 2425
	addi	x5, x3, 0	# 2426
	addi	x3, x3, 8	# 2426
	sw		x4, 4(x5)	# 2426
	lw		x4, -296(x2)	# 2426
	sw		x4, 0(x5)	# 2426
	lw		x6, -4(x2)	# 282
	mul		x7, x30, x6	# 282
	add		x7, x4, x7	# 282
	fsw		f2, 0(x7)	# 282
	lw		x7, 0(x2)	# 283
	mul		x10, x30, x7	# 283
	add		x10, x4, x10	# 283
	fsw		f4, 0(x10)	# 283
	mul		x10, x30, x9	# 284
	add		x4, x4, x10	# 284
	fsw		f3, 0(x4)	# 284
	mul		x4, x30, x6	# 1329
	addi	x4, x4, 63796	# 1329
	lw		x4, 0(x4)	# 1329
	sub		x4, x4, x7	# 1329
	lw		x29, -276(x2)	# 1329
	sw		x8, -300(x2)	# 1329
	sw		x5, -304(x2)	# 1329
	addi	x31, x5, 0	# 1329
	addi	x5, x4, 0	# 1329
	addi	x4, x31, 0	# 1329
	sw		x1, -308(x2)	# 1329
	addi	x2, x2, -312	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 312	# 1329
	lw		x1, -308(x2)	# 1329
	addi	x4, x3, 0	# 2478
	addi	x3, x3, 12	# 2478
	flw		f1, -292(x2)	# 2478
	fsw		f1, 8(x4)	# 2478
	lw		x5, -304(x2)	# 2478
	sw		x5, 4(x4)	# 2478
	lw		x5, -288(x2)	# 2478
	sw		x5, 0(x4)	# 2478
	lw		x5, -300(x2)	# 2478
	mul		x6, x30, x5	# 2478
	addi	x6, x6, 64812	# 2478
	sw		x4, 0(x6)	# 2478
	addi	x4, x5, 1	# 2506
	lw		x5, -4(x2)	# 2506
	mul		x6, x30, x5	# 2506
	addi	x6, x6, 65532	# 2506
	sw		x4, 0(x6)	# 2506
	jal		x0, ble_cont.32596	# 2518
beq.32603:
	lw		x8, -116(x2)	# 2483
	mul		x5, x5, x8	# 2483
	mul		x8, x30, x4	# 2484
	addi	x8, x8, 65532	# 2484
	lw		x8, 0(x8)	# 2484
	lw		x7, 28(x7)	# 503
	mul		x10, x30, x4	# 508
	add		x7, x7, x10	# 508
	flw		f1, 0(x7)	# 508
	fsub	f1, f30, f1	# 2485
	mul		x7, x30, x4	# 2486
	addi	x7, x7, 64108	# 2486
	flw		f2, 0(x7)	# 2486
	fsub	f3, f0, f2	# 123
	mul		x7, x30, x6	# 2487
	addi	x7, x7, 64108	# 2487
	flw		f4, 0(x7)	# 2487
	fsub	f4, f0, f4	# 123
	mul		x7, x30, x9	# 2488
	addi	x7, x7, 64108	# 2488
	flw		f5, 0(x7)	# 2488
	fsub	f5, f0, f5	# 123
	addi	x7, x5, 1	# 2489
	lw		x10, -20(x2)	# 2424
	flw		f6, -8(x2)	# 2424
	sw		x5, -308(x2)	# 2424
	fsw		f1, -312(x2)	# 2424
	addi	x4, x10, 0	# 2424
	fadd	f1, f0, f6	# 2424
	sw		x1, -316(x2)	# 2424
	addi	x2, x2, -320	# 2424
	jal		x1, min_caml_create_float_array	# 2424
	addi	x2, x2, 320	# 2424
	lw		x1, -316(x2)	# 2424
	addi	x5, x4, 0	# 2424
	lw		x4, -4(x2)	# 2425
	mul		x10, x30, x4	# 2425
	addi	x10, x10, 63796	# 2425
	lw		x10, 0(x10)	# 2425
	sw		x5, -316(x2)	# 2425
	addi	x4, x10, 0	# 2425
	sw		x1, -320(x2)	# 2425
	addi	x2, x2, -324	# 2425
	jal		x1, min_caml_create_array	# 2425
	addi	x2, x2, 324	# 2425
	lw		x1, -320(x2)	# 2425
	addi	x5, x3, 0	# 2426
	addi	x3, x3, 8	# 2426
	sw		x4, 4(x5)	# 2426
	lw		x4, -316(x2)	# 2426
	sw		x4, 0(x5)	# 2426
	lw		x6, -4(x2)	# 282
	mul		x10, x30, x6	# 282
	add		x10, x4, x10	# 282
	fsw		f2, 0(x10)	# 282
	lw		x10, 0(x2)	# 283
	mul		x11, x30, x10	# 283
	add		x11, x4, x11	# 283
	fsw		f4, 0(x11)	# 283
	mul		x11, x30, x9	# 284
	add		x4, x4, x11	# 284
	fsw		f5, 0(x4)	# 284
	mul		x4, x30, x6	# 1329
	addi	x4, x4, 63796	# 1329
	lw		x4, 0(x4)	# 1329
	sub		x4, x4, x10	# 1329
	lw		x29, -276(x2)	# 1329
	fsw		f4, -320(x2)	# 1329
	fsw		f5, -324(x2)	# 1329
	fsw		f3, -328(x2)	# 1329
	sw		x8, -332(x2)	# 1329
	sw		x7, -336(x2)	# 1329
	sw		x5, -340(x2)	# 1329
	addi	x31, x5, 0	# 1329
	addi	x5, x4, 0	# 1329
	addi	x4, x31, 0	# 1329
	sw		x1, -344(x2)	# 1329
	addi	x2, x2, -348	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 348	# 1329
	lw		x1, -344(x2)	# 1329
	addi	x4, x3, 0	# 2478
	addi	x3, x3, 12	# 2478
	flw		f1, -312(x2)	# 2478
	fsw		f1, 8(x4)	# 2478
	lw		x5, -340(x2)	# 2478
	sw		x5, 4(x4)	# 2478
	lw		x5, -336(x2)	# 2478
	sw		x5, 0(x4)	# 2478
	lw		x5, -332(x2)	# 2478
	mul		x6, x30, x5	# 2478
	addi	x6, x6, 64812	# 2478
	sw		x4, 0(x6)	# 2478
	addi	x4, x5, 1	# 2490
	lw		x6, -308(x2)	# 2490
	addi	x7, x6, 2	# 2490
	lw		x8, 0(x2)	# 2490
	mul		x9, x30, x8	# 2490
	addi	x9, x9, 64108	# 2490
	flw		f2, 0(x9)	# 2490
	lw		x9, -20(x2)	# 2424
	flw		f3, -8(x2)	# 2424
	sw		x4, -344(x2)	# 2424
	addi	x4, x9, 0	# 2424
	fadd	f1, f0, f3	# 2424
	sw		x1, -348(x2)	# 2424
	addi	x2, x2, -352	# 2424
	jal		x1, min_caml_create_float_array	# 2424
	addi	x2, x2, 352	# 2424
	lw		x1, -348(x2)	# 2424
	addi	x5, x4, 0	# 2424
	lw		x4, -4(x2)	# 2425
	mul		x9, x30, x4	# 2425
	addi	x9, x9, 63796	# 2425
	lw		x9, 0(x9)	# 2425
	sw		x5, -348(x2)	# 2425
	addi	x4, x9, 0	# 2425
	sw		x1, -352(x2)	# 2425
	addi	x2, x2, -356	# 2425
	jal		x1, min_caml_create_array	# 2425
	addi	x2, x2, 356	# 2425
	lw		x1, -352(x2)	# 2425
	addi	x5, x3, 0	# 2426
	addi	x3, x3, 8	# 2426
	sw		x4, 4(x5)	# 2426
	lw		x4, -348(x2)	# 2426
	sw		x4, 0(x5)	# 2426
	lw		x6, -4(x2)	# 282
	mul		x9, x30, x6	# 282
	add		x9, x4, x9	# 282
	flw		f1, -328(x2)	# 282
	fsw		f1, 0(x9)	# 282
	mul		x9, x30, x8	# 283
	add		x9, x4, x9	# 283
	fsw		f2, 0(x9)	# 283
	lw		x9, -48(x2)	# 284
	mul		x10, x30, x9	# 284
	add		x4, x4, x10	# 284
	flw		f2, -324(x2)	# 284
	fsw		f2, 0(x4)	# 284
	mul		x4, x30, x6	# 1329
	addi	x4, x4, 63796	# 1329
	lw		x4, 0(x4)	# 1329
	sub		x4, x4, x8	# 1329
	lw		x29, -276(x2)	# 1329
	sw		x7, -352(x2)	# 1329
	sw		x5, -356(x2)	# 1329
	addi	x31, x5, 0	# 1329
	addi	x5, x4, 0	# 1329
	addi	x4, x31, 0	# 1329
	sw		x1, -360(x2)	# 1329
	addi	x2, x2, -364	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 364	# 1329
	lw		x1, -360(x2)	# 1329
	addi	x4, x3, 0	# 2478
	addi	x3, x3, 12	# 2478
	flw		f1, -312(x2)	# 2478
	fsw		f1, 8(x4)	# 2478
	lw		x5, -356(x2)	# 2478
	sw		x5, 4(x4)	# 2478
	lw		x5, -352(x2)	# 2478
	sw		x5, 0(x4)	# 2478
	lw		x5, -344(x2)	# 2478
	mul		x5, x30, x5	# 2478
	addi	x5, x5, 64812	# 2478
	sw		x4, 0(x5)	# 2478
	lw		x4, -332(x2)	# 2491
	addi	x5, x4, 2	# 2491
	lw		x6, -308(x2)	# 2491
	addi	x6, x6, 3	# 2491
	lw		x7, -48(x2)	# 2491
	mul		x8, x30, x7	# 2491
	addi	x8, x8, 64108	# 2491
	flw		f2, 0(x8)	# 2491
	lw		x8, -20(x2)	# 2424
	flw		f3, -8(x2)	# 2424
	sw		x5, -360(x2)	# 2424
	addi	x4, x8, 0	# 2424
	fadd	f1, f0, f3	# 2424
	sw		x1, -364(x2)	# 2424
	addi	x2, x2, -368	# 2424
	jal		x1, min_caml_create_float_array	# 2424
	addi	x2, x2, 368	# 2424
	lw		x1, -364(x2)	# 2424
	addi	x5, x4, 0	# 2424
	lw		x4, -4(x2)	# 2425
	mul		x8, x30, x4	# 2425
	addi	x8, x8, 63796	# 2425
	lw		x8, 0(x8)	# 2425
	sw		x6, -364(x2)	# 2425
	sw		x5, -368(x2)	# 2425
	addi	x4, x8, 0	# 2425
	sw		x1, -372(x2)	# 2425
	addi	x2, x2, -376	# 2425
	jal		x1, min_caml_create_array	# 2425
	addi	x2, x2, 376	# 2425
	lw		x1, -372(x2)	# 2425
	addi	x5, x3, 0	# 2426
	addi	x3, x3, 8	# 2426
	sw		x4, 4(x5)	# 2426
	lw		x4, -368(x2)	# 2426
	sw		x4, 0(x5)	# 2426
	lw		x6, -4(x2)	# 282
	mul		x8, x30, x6	# 282
	add		x8, x4, x8	# 282
	flw		f1, -328(x2)	# 282
	fsw		f1, 0(x8)	# 282
	lw		x8, 0(x2)	# 283
	mul		x9, x30, x8	# 283
	add		x9, x4, x9	# 283
	flw		f1, -320(x2)	# 283
	fsw		f1, 0(x9)	# 283
	mul		x9, x30, x7	# 284
	add		x4, x4, x9	# 284
	fsw		f2, 0(x4)	# 284
	mul		x4, x30, x6	# 1329
	addi	x4, x4, 63796	# 1329
	lw		x4, 0(x4)	# 1329
	sub		x4, x4, x8	# 1329
	lw		x29, -276(x2)	# 1329
	sw		x5, -372(x2)	# 1329
	addi	x31, x5, 0	# 1329
	addi	x5, x4, 0	# 1329
	addi	x4, x31, 0	# 1329
	sw		x1, -376(x2)	# 1329
	addi	x2, x2, -380	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 380	# 1329
	lw		x1, -376(x2)	# 1329
	addi	x4, x3, 0	# 2478
	addi	x3, x3, 12	# 2478
	flw		f1, -312(x2)	# 2478
	fsw		f1, 8(x4)	# 2478
	lw		x5, -372(x2)	# 2478
	sw		x5, 4(x4)	# 2478
	lw		x5, -364(x2)	# 2478
	sw		x5, 0(x4)	# 2478
	lw		x5, -360(x2)	# 2478
	mul		x5, x30, x5	# 2478
	addi	x5, x5, 64812	# 2478
	sw		x4, 0(x5)	# 2478
	lw		x4, -332(x2)	# 2492
	addi	x4, x4, 3	# 2492
	lw		x5, -4(x2)	# 2492
	mul		x6, x30, x5	# 2492
	addi	x6, x6, 65532	# 2492
	sw		x4, 0(x6)	# 2492
	jal		x0, ble_cont.32596	# 125
ble_cont.32596:
	lw		x4, -4(x2)	# 2260
	mul		x5, x30, x4	# 2260
	addi	x5, x5, 64428	# 2260
	flw		f1, 0(x5)	# 2260
	lw		x5, 0(x2)	# 2260
	mul		x6, x30, x5	# 2260
	addi	x6, x6, 64420	# 2260
	lw		x6, 0(x6)	# 2260
	sub		x6, x4, x6	# 2260
	fsw		f1, -376(x2)	# 2260
	addi	x4, x6, 0	# 2260
	sw		x1, -380(x2)	# 2260
	addi	x2, x2, -384	# 2260
	jal		x1, min_caml_float_of_int	# 2260
	addi	x2, x2, 384	# 2260
	lw		x1, -380(x2)	# 2260
	flw		f2, -376(x2)	# 2260
	fmul	f1, f2, f1	# 2260
	lw		x6, -4(x2)	# 2263
	mul		x4, x30, x6	# 2263
	addi	x4, x4, 64468	# 2263
	flw		f2, 0(x4)	# 2263
	fmul	f2, f1, f2	# 2263
	mul		x4, x30, x6	# 2263
	addi	x4, x4, 64480	# 2263
	flw		f3, 0(x4)	# 2263
	fadd	f2, f2, f3	# 2263
	lw		x4, 0(x2)	# 2264
	mul		x5, x30, x4	# 2264
	addi	x5, x5, 64468	# 2264
	flw		f3, 0(x5)	# 2264
	fmul	f3, f1, f3	# 2264
	mul		x5, x30, x4	# 2264
	addi	x5, x5, 64480	# 2264
	flw		f4, 0(x5)	# 2264
	fadd	f3, f3, f4	# 2264
	lw		x5, -48(x2)	# 2265
	mul		x7, x30, x5	# 2265
	addi	x7, x7, 64468	# 2265
	flw		f4, 0(x7)	# 2265
	fmul	f1, f1, f4	# 2265
	mul		x7, x30, x5	# 2265
	addi	x7, x7, 64480	# 2265
	flw		f4, 0(x7)	# 2265
	fadd	f1, f1, f4	# 2265
	mul		x7, x30, x6	# 2266
	addi	x7, x7, 64412	# 2266
	lw		x7, 0(x7)	# 2266
	sub		x4, x7, x4	# 2266
	lw		x7, -192(x2)	# 2266
	lw		x29, -272(x2)	# 2266
	addi	x5, x4, 0	# 2266
	addi	x4, x7, 0	# 2266
	fadd	f31, f0, f3	# 2266
	fadd	f3, f0, f1	# 2266
	fadd	f1, f0, f2	# 2266
	fadd	f2, f0, f31	# 2266
	sw		x1, -380(x2)	# 2266
	addi	x2, x2, -384	# 2266
	lw		x31, 0(x29)	# 2266
	jalr	x1, x31, 0	# 2266
	addi	x2, x2, 384	# 2266
	lw		x1, -380(x2)	# 2266
	lw		x4, -4(x2)	# 2549
	lw		x5, -152(x2)	# 2549
	lw		x6, -192(x2)	# 2549
	lw		x7, -232(x2)	# 2549
	lw		x8, -48(x2)	# 2549
	lw		x9, -20(x2)	# 2549
	lw		x29, -92(x2)	# 2549
	sw		x1, -380(x2)	# 2549
	addi	x2, x2, -384	# 2549
	lw		x31, 0(x29)	# 2549
	jalr	x1, x31, 0	# 2549
	addi	x2, x2, 384	# 2549
	lw		x1, -380(x2)	# 2549
	EXIT	
