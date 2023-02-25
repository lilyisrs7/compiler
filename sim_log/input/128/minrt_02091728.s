l.32327:	# 8388608.000000
	.word	8388608.000000
l.26718:	# 0.010000
	.word	0.010000
l.26716:	# -0.200000
	.word	-0.200000
l.26837:	# -0.100000
	.word	-0.100000
l.27605:	# 100000000.000000
	.word	100000000.000000
l.28299:	# 150.000000
	.word	150.000000
l.28089:	# -150.000000
	.word	-150.000000
l.26328:	# -1.000000
	.word	-1.000000
l.27839:	# 10.000000
	.word	10.000000
l.27860:	# 0.050000
	.word	0.050000
l.27862:	# 20.000000
	.word	20.000000
l.26251:	# 0.500000
	.word	0.500000
l.28036:	# 0.100000
	.word	0.100000
l.27940:	# -2.000000
	.word	-2.000000
l.26379:	# 2.000000
	.word	2.000000
l.27807:	# 0.000100
	.word	0.000100
l.26253:	# 0.041664
	.word	0.041664
l.26247:	# 0.000196
	.word	0.000196
l.26245:	# 0.008333
	.word	0.008333
l.26243:	# 0.166667
	.word	0.166667
l.26255:	# 0.001370
	.word	0.001370
l.26261:	# 2.437500
	.word	2.437500
l.26264:	# 0.437500
	.word	0.437500
l.26266:	# 0.333333
	.word	0.333333
l.26268:	# 0.200000
	.word	0.200000
l.26274:	# 0.089764
	.word	0.089764
l.26272:	# 0.111111
	.word	0.111111
l.26270:	# 0.142857
	.word	0.142857
l.29065:	# 0.900000
	.word	0.900000
l.29092:	# 0.000000
	.word	0.000000
l.29106:	# 255.000000
	.word	255.000000
l.29110:	# 1000000000.000000
	.word	1000000000.000000
l.29125:	# 3.141593
	.word	3.141593
l.29127:	# 6.283185
	.word	6.283185
l.29129:	# 1.570796
	.word	1.570796
l.29131:	# 0.785398
	.word	0.785398
l.29141:	# 128.000000
	.word	128.000000
l.27912:	# 0.003906
	.word	0.003906
l.27813:	# 3.141593
	.word	3.141593
l.27827:	# 0.300000
	.word	0.300000
l.27849:	# 0.250000
	.word	0.250000
l.27809:	# 15.000000
	.word	15.000000
l.26299:	# 0.017453
	.word	0.017453
l.29287:	# 200.000000
	.word	200.000000
l.29291:	# -200.000000
	.word	-200.000000
l.27824:	# 0.150000
	.word	0.150000
l.27811:	# 30.000000
	.word	30.000000
l.26249:	# 1.000000
	.word	1.000000
sin.2512.17891:
	flw		f2, 20(x29)	# 204
	flw		f3, 16(x29)	# 204
	flw		f4, 12(x29)	# 204
	flw		f5, 8(x29)	# 204
	flw		f6, 4(x29)	# 204
	fle		f6, f1, fle.32328	# 204
	fsub	f1, f0, f1	# 204
	sw		x1, 0(x2)	# 204
	addi	x2, x2, -4	# 204
	lw		x31, 0(x29)	# 204
	jalr	x1, x31, 0	# 204
	addi	x2, x2, 4	# 204
	lw		x1, 0(x2)	# 204
	fsub	f1, f0, f1	# 204
	jalr	x0, x1, 0	# 204
fle.32328:
	fle		f4, f1, fle.32329	# 205
	fle		f5, f1, fle.32330	# 206
	fle		f1, f3, fle.32331	# 207
	fsub	f1, f5, f1	# 207
	lw		x31, 0(x29)	# 207
	jalr	x0, x31, 0	# 207
fle.32331:
	fle		f2, f1, fle.32332	# 208
	fmul	f2, f1, f1	# 194
	fmul	f3, f1, f2	# 195
	lui		x4, %hi(l.26243)	# 196
	ori		x4, x0, %lo(l.26243)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f3	# 196
	fsub	f1, f1, f4	# 196
	lui		x4, %hi(l.26245)	# 196
	ori		x4, x0, %lo(l.26245)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f2	# 196
	fmul	f4, f4, f3	# 196
	fadd	f1, f1, f4	# 196
	lui		x4, %hi(l.26247)	# 196
	ori		x4, x0, %lo(l.26247)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f2	# 196
	fmul	f2, f4, f2	# 196
	fmul	f2, f2, f3	# 196
	fsub	f1, f1, f2	# 196
	jalr	x0, x1, 0	# 196
fle.32332:
	fsub	f1, f3, f1	# 208
	fmul	f1, f1, f1	# 199
	fmul	f2, f1, f1	# 200
	fmul	f4, f26, f1	# 201
	fsub	f3, f30, f4	# 201
	lui		x4, %hi(l.26253)	# 201
	ori		x4, x0, %lo(l.26253)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f4, f4, f2	# 201
	fadd	f3, f3, f4	# 201
	lui		x4, %hi(l.26255)	# 201
	ori		x4, x0, %lo(l.26255)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f1, f4, f1	# 201
	fmul	f1, f1, f2	# 201
	fsub	f1, f3, f1	# 201
	jalr	x0, x1, 0	# 201
fle.32330:
	fsub	f1, f1, f5	# 206
	sw		x1, 0(x2)	# 206
	addi	x2, x2, -4	# 206
	lw		x31, 0(x29)	# 206
	jalr	x1, x31, 0	# 206
	addi	x2, x2, 4	# 206
	lw		x1, 0(x2)	# 206
	fsub	f1, f0, f1	# 206
	jalr	x0, x1, 0	# 206
fle.32329:
	fsub	f1, f1, f4	# 205
	lw		x31, 0(x29)	# 205
	jalr	x0, x31, 0	# 205
cos.2514.17893:
	lw		x4, 16(x29)	# 212
	flw		f2, 12(x29)	# 212
	flw		f3, 8(x29)	# 212
	flw		f4, 4(x29)	# 212
	fle		f4, f1, fle.32333	# 212
	fsub	f1, f0, f1	# 212
	lw		x31, 0(x29)	# 212
	jalr	x0, x31, 0	# 212
fle.32333:
	fle		f1, f2, fle.32334	# 213
	fsub	f1, f3, f1	# 213
	addi	x29, x4, 0	# 213
	lw		x31, 0(x29)	# 213
	jalr	x0, x31, 0	# 213
fle.32334:
	fmul	f1, f1, f1	# 199
	fmul	f2, f1, f1	# 200
	fmul	f4, f26, f1	# 201
	fsub	f3, f30, f4	# 201
	lui		x4, %hi(l.26253)	# 201
	ori		x4, x0, %lo(l.26253)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f4, f4, f2	# 201
	fadd	f3, f3, f4	# 201
	lui		x4, %hi(l.26255)	# 201
	ori		x4, x0, %lo(l.26255)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f1, f4, f1	# 201
	fmul	f1, f1, f2	# 201
	fsub	f1, f3, f1	# 201
	jalr	x0, x1, 0	# 201
atan.2516.17895:
	flw		f2, 12(x29)	# 217
	flw		f3, 8(x29)	# 217
	flw		f4, 4(x29)	# 217
	fle		f4, f1, fle.32335	# 217
	fsub	f1, f0, f1	# 217
	sw		x1, 0(x2)	# 217
	addi	x2, x2, -4	# 217
	lw		x31, 0(x29)	# 217
	jalr	x1, x31, 0	# 217
	addi	x2, x2, 4	# 217
	lw		x1, 0(x2)	# 217
	fsub	f1, f0, f1	# 217
	jalr	x0, x1, 0	# 217
fle.32335:
	lui		x4, %hi(l.26261)	# 218
	ori		x4, x0, %lo(l.26261)	# 218
	flw		f4, 0(x4)	# 218
	fle		f1, f4, fle.32336	# 218
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
fle.32336:
	lui		x4, %hi(l.26264)	# 219
	ori		x4, x0, %lo(l.26264)	# 219
	flw		f3, 0(x4)	# 219
	fle		f3, f1, fle.32337	# 219
	fmul	f2, f1, f1	# 221
	fmul	f3, f1, f2	# 222
	fmul	f4, f2, f2	# 223
	lui		x4, %hi(l.26266)	# 224
	ori		x4, x0, %lo(l.26266)	# 224
	flw		f5, 0(x4)	# 224
	fmul	f5, f5, f3	# 224
	fsub	f1, f1, f5	# 224
	lui		x4, %hi(l.26268)	# 224
	ori		x4, x0, %lo(l.26268)	# 224
	flw		f5, 0(x4)	# 224
	fmul	f5, f5, f2	# 224
	fmul	f5, f5, f3	# 224
	fadd	f1, f1, f5	# 224
	lui		x4, %hi(l.26270)	# 224
	ori		x4, x0, %lo(l.26270)	# 224
	flw		f5, 0(x4)	# 224
	fmul	f5, f5, f4	# 224
	fmul	f5, f5, f3	# 224
	fsub	f1, f1, f5	# 224
	lui		x4, %hi(l.26272)	# 225
	ori		x4, x0, %lo(l.26272)	# 225
	flw		f5, 0(x4)	# 225
	fmul	f2, f5, f2	# 225
	fmul	f2, f2, f4	# 225
	fmul	f2, f2, f3	# 225
	fadd	f1, f1, f2	# 224
	lui		x4, %hi(l.26274)	# 225
	ori		x4, x0, %lo(l.26274)	# 225
	flw		f2, 0(x4)	# 225
	fmul	f2, f2, f4	# 225
	fmul	f2, f2, f4	# 225
	fmul	f2, f2, f3	# 225
	fsub	f1, f1, f2	# 224
	jalr	x0, x1, 0	# 224
fle.32337:
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
read_object.2653.17897:
	lw		x5, 36(x29)	# 903
	lw		x6, 32(x29)	# 903
	lw		x7, 28(x29)	# 903
	lw		x8, 24(x29)	# 903
	lw		x9, 20(x29)	# 903
	lw		x10, 16(x29)	# 903
	lw		x11, 12(x29)	# 903
	lw		x12, 8(x29)	# 903
	flw		f1, 4(x29)	# 903
	ble		x10, x4, ble.32338	# 903
	sw		x29, 0(x2)	# 821
	sw		x4, -4(x2)	# 821
	sw		x1, -8(x2)	# 821
	addi	x2, x2, -12	# 821
	jal		x1, min_caml_read_int	# 821
	addi	x2, x2, 12	# 821
	lw		x1, -8(x2)	# 821
	beq		x4, x8, beq.32340	# 822
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
	add		x8, x4, x5	# 829
	fsw		f1, 0(x8)	# 829
	sw		x1, -36(x2)	# 830
	addi	x2, x2, -40	# 830
	jal		x1, min_caml_read_float	# 830
	addi	x2, x2, 40	# 830
	lw		x1, -36(x2)	# 830
	mul		x8, x30, x12	# 830
	add		x9, x4, x8	# 830
	fsw		f1, 0(x9)	# 830
	sw		x1, -36(x2)	# 831
	addi	x2, x2, -40	# 831
	jal		x1, min_caml_read_float	# 831
	addi	x2, x2, 40	# 831
	lw		x1, -36(x2)	# 831
	mul		x9, x30, x7	# 831
	add		x10, x4, x9	# 831
	fsw		f1, 0(x10)	# 831
	lw		x10, -32(x2)	# 833
	flw		f1, -28(x2)	# 833
	sw		x4, -36(x2)	# 833
	sw		x5, -40(x2)	# 833
	addi	x4, x10, 0	# 833
	sw		x1, -44(x2)	# 833
	addi	x2, x2, -48	# 833
	jal		x1, min_caml_create_float_array	# 833
	addi	x2, x2, 48	# 833
	lw		x1, -44(x2)	# 833
	sw		x1, -44(x2)	# 834
	addi	x2, x2, -48	# 834
	jal		x1, min_caml_read_float	# 834
	addi	x2, x2, 48	# 834
	lw		x1, -44(x2)	# 834
	lw		x5, -40(x2)	# 834
	add		x10, x4, x5	# 834
	fsw		f1, 0(x10)	# 834
	sw		x1, -44(x2)	# 835
	addi	x2, x2, -48	# 835
	jal		x1, min_caml_read_float	# 835
	addi	x2, x2, 48	# 835
	lw		x1, -44(x2)	# 835
	add		x10, x4, x8	# 835
	fsw		f1, 0(x10)	# 835
	sw		x1, -44(x2)	# 836
	addi	x2, x2, -48	# 836
	jal		x1, min_caml_read_float	# 836
	addi	x2, x2, 48	# 836
	lw		x1, -44(x2)	# 836
	add		x10, x4, x9	# 836
	fsw		f1, 0(x10)	# 836
	sw		x1, -44(x2)	# 838
	addi	x2, x2, -48	# 838
	jal		x1, min_caml_read_float	# 838
	addi	x2, x2, 48	# 838
	lw		x1, -44(x2)	# 838
	flw		f2, -28(x2)	# 122
	fle		f2, f1, fle.32342	# 122
	addi	x10, x0, 1	# 122
	jal		x0, fle_cont.32341	# 122
fle.32342:
	addi	x10, x0, 0	# 122
fle_cont.32341:
	fsw		f1, -44(x2)	# 840
	sw		x4, -48(x2)	# 840
	sw		x7, -52(x2)	# 840
	sw		x5, -56(x2)	# 840
	addi	x4, x7, 0	# 840
	fadd	f1, f0, f2	# 840
	sw		x1, -60(x2)	# 840
	addi	x2, x2, -64	# 840
	jal		x1, min_caml_create_float_array	# 840
	addi	x2, x2, 64	# 840
	lw		x1, -60(x2)	# 840
	sw		x1, -60(x2)	# 841
	addi	x2, x2, -64	# 841
	jal		x1, min_caml_read_float	# 841
	addi	x2, x2, 64	# 841
	lw		x1, -60(x2)	# 841
	lw		x5, -56(x2)	# 841
	add		x7, x4, x5	# 841
	fsw		f1, 0(x7)	# 841
	sw		x1, -60(x2)	# 842
	addi	x2, x2, -64	# 842
	jal		x1, min_caml_read_float	# 842
	addi	x2, x2, 64	# 842
	lw		x1, -60(x2)	# 842
	addi	x7, x8, 0	# 842
	add		x8, x4, x7	# 842
	fsw		f1, 0(x8)	# 842
	lw		x8, -32(x2)	# 844
	flw		f1, -28(x2)	# 844
	sw		x4, -60(x2)	# 844
	sw		x5, -64(x2)	# 844
	addi	x4, x8, 0	# 844
	sw		x1, -68(x2)	# 844
	addi	x2, x2, -72	# 844
	jal		x1, min_caml_create_float_array	# 844
	addi	x2, x2, 72	# 844
	lw		x1, -68(x2)	# 844
	sw		x1, -68(x2)	# 845
	addi	x2, x2, -72	# 845
	jal		x1, min_caml_read_float	# 845
	addi	x2, x2, 72	# 845
	lw		x1, -68(x2)	# 845
	lw		x5, -64(x2)	# 845
	add		x8, x4, x5	# 845
	fsw		f1, 0(x8)	# 845
	sw		x1, -68(x2)	# 846
	addi	x2, x2, -72	# 846
	jal		x1, min_caml_read_float	# 846
	addi	x2, x2, 72	# 846
	lw		x1, -68(x2)	# 846
	add		x8, x4, x7	# 846
	fsw		f1, 0(x8)	# 846
	sw		x1, -68(x2)	# 847
	addi	x2, x2, -72	# 847
	jal		x1, min_caml_read_float	# 847
	addi	x2, x2, 72	# 847
	lw		x1, -68(x2)	# 847
	addi	x8, x9, 0	# 847
	add		x9, x4, x8	# 847
	fsw		f1, 0(x9)	# 847
	lw		x9, -32(x2)	# 849
	flw		f1, -28(x2)	# 849
	sw		x4, -68(x2)	# 849
	sw		x5, -72(x2)	# 849
	addi	x4, x9, 0	# 849
	sw		x1, -76(x2)	# 849
	addi	x2, x2, -80	# 849
	jal		x1, min_caml_create_float_array	# 849
	addi	x2, x2, 80	# 849
	lw		x1, -76(x2)	# 849
	lw		x5, -24(x2)	# 850
	beq		x5, x11, beq_cont.32343	# 850
	sw		x1, -76(x2)	# 852
	addi	x2, x2, -80	# 852
	jal		x1, min_caml_read_float	# 852
	addi	x2, x2, 80	# 852
	lw		x1, -76(x2)	# 852
	lui		x9, %hi(l.26299)	# 719
	ori		x9, x0, %lo(l.26299)	# 719
	flw		f2, 0(x9)	# 719
	fmul	f1, f1, f2	# 719
	lw		x9, -72(x2)	# 852
	addi	x13, x9, 0	# 852
	add		x13, x4, x13	# 852
	fsw		f1, 0(x13)	# 852
	sw		x1, -76(x2)	# 853
	addi	x2, x2, -80	# 853
	jal		x1, min_caml_read_float	# 853
	addi	x2, x2, 80	# 853
	lw		x1, -76(x2)	# 853
	fmul	f1, f1, f2	# 719
	addi	x13, x7, 0	# 853
	add		x13, x4, x13	# 853
	fsw		f1, 0(x13)	# 853
	sw		x1, -76(x2)	# 854
	addi	x2, x2, -80	# 854
	jal		x1, min_caml_read_float	# 854
	addi	x2, x2, 80	# 854
	lw		x1, -76(x2)	# 854
	fmul	f1, f1, f2	# 719
	addi	x13, x8, 0	# 854
	add		x13, x4, x13	# 854
	fsw		f1, 0(x13)	# 854
	jal		x0, beq_cont.32343	# 850
beq_cont.32343:
	lw		x9, -52(x2)	# 861
	lw		x13, -12(x2)	# 861
	beq		x13, x9, beq.32346	# 861
	jal		x0, beq_cont.32345	# 861
beq.32346:
	addi	x10, x0, 1	# 861
beq_cont.32345:
	addi	x14, x0, 4	# 862
	flw		f1, -28(x2)	# 862
	sw		x4, -76(x2)	# 862
	addi	x4, x14, 0	# 862
	sw		x1, -80(x2)	# 862
	addi	x2, x2, -84	# 862
	jal		x1, min_caml_create_float_array	# 862
	addi	x2, x2, 84	# 862
	lw		x1, -80(x2)	# 862
	addi	x5, x3, 0	# 865
	addi	x3, x3, 44	# 865
	sw		x4, 40(x5)	# 865
	lw		x4, -76(x2)	# 865
	sw		x4, 36(x5)	# 865
	lw		x14, -68(x2)	# 865
	sw		x14, 32(x5)	# 865
	lw		x14, -60(x2)	# 865
	sw		x14, 28(x5)	# 865
	sw		x10, 24(x5)	# 865
	lw		x10, -48(x2)	# 865
	sw		x10, 20(x5)	# 865
	lw		x10, -36(x2)	# 865
	sw		x10, 16(x5)	# 865
	lw		x14, -24(x2)	# 865
	sw		x14, 12(x5)	# 865
	lw		x15, -16(x2)	# 865
	sw		x15, 8(x5)	# 865
	sw		x13, 4(x5)	# 865
	lw		x15, -8(x2)	# 865
	sw		x15, 0(x5)	# 865
	lw		x15, -4(x2)	# 873
	mul		x16, x30, x15	# 873
	addi	x16, x16, 63844	# 873
	sw		x5, 0(x16)	# 873
	lw		x5, -32(x2)	# 875
	beq		x13, x5, beq.32348	# 875
	beq		x13, x9, beq.32350	# 885
	jal		x0, beq_cont.32347	# 885
beq.32350:
	lw		x5, -72(x2)	# 325
	addi	x9, x5, 0	# 325
	add		x13, x10, x9	# 325
	flw		f1, 0(x13)	# 325
	fmul	f1, f1, f1	# 127
	addi	x13, x7, 0	# 325
	add		x16, x10, x13	# 325
	flw		f2, 0(x16)	# 325
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 325
	addi	x16, x8, 0	# 325
	add		x17, x10, x16	# 325
	flw		f2, 0(x17)	# 325
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 325
	fsqrt	f1, f1	# 325
	flw		f2, -28(x2)	# 120
	feq		f1, f2, feq.32352	# 120
	flw		f3, -44(x2)	# 122
	fle		f2, f3, fle.32354	# 122
	fdiv	f1, f30, f1	# 326
	jal		x0, feq_cont.32351	# 122
fle.32354:
	fdiv	f1, f22, f1	# 326
	jal		x0, feq_cont.32351	# 120
feq.32352:
	fadd	f1, f0, f30	# 326
feq_cont.32351:
	add		x17, x10, x9	# 327
	flw		f2, 0(x17)	# 327
	fmul	f2, f2, f1	# 327
	add		x9, x10, x9	# 327
	fsw		f2, 0(x9)	# 327
	addi	x9, x13, 0	# 328
	add		x13, x10, x9	# 328
	flw		f2, 0(x13)	# 328
	fmul	f2, f2, f1	# 328
	add		x9, x10, x9	# 328
	fsw		f2, 0(x9)	# 328
	addi	x9, x16, 0	# 329
	add		x13, x10, x9	# 329
	flw		f2, 0(x13)	# 329
	fmul	f1, f2, f1	# 329
	add		x9, x10, x9	# 329
	fsw		f1, 0(x9)	# 329
	jal		x0, beq_cont.32347	# 875
beq.32348:
	lw		x5, -72(x2)	# 878
	addi	x9, x5, 0	# 878
	add		x13, x10, x9	# 878
	flw		f1, 0(x13)	# 878
	flw		f2, -28(x2)	# 120
	feq		f1, f2, feq.32356	# 120
	fle		f1, f2, fle.32360	# 121
	fadd	f3, f0, f30	# 255
	jal		x0, feq_cont.32357	# 121
fle.32360:
	fadd	f3, f0, f22	# 256
	jal		x0, feq_cont.32357	# 120
feq.32358:
	fadd	f3, f0, f2	# 254
feq_cont.32357:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 879
	jal		x0, feq_cont.32355	# 120
feq.32356:
	fadd	f1, f0, f2	# 879
feq_cont.32355:
	add		x9, x10, x9	# 879
	fsw		f1, 0(x9)	# 879
	addi	x9, x7, 0	# 880
	add		x13, x10, x9	# 880
	flw		f1, 0(x13)	# 880
	feq		f1, f2, feq.32362	# 120
	fle		f1, f2, fle.32366	# 121
	fadd	f3, f0, f30	# 255
	jal		x0, feq_cont.32363	# 121
fle.32366:
	fadd	f3, f0, f22	# 256
	jal		x0, feq_cont.32363	# 120
feq.32364:
	fadd	f3, f0, f2	# 254
feq_cont.32363:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 881
	jal		x0, feq_cont.32361	# 120
feq.32362:
	fadd	f1, f0, f2	# 881
feq_cont.32361:
	add		x9, x10, x9	# 881
	fsw		f1, 0(x9)	# 881
	addi	x9, x8, 0	# 882
	add		x13, x10, x9	# 882
	flw		f1, 0(x13)	# 882
	feq		f1, f2, feq.32368	# 120
	fle		f1, f2, fle.32372	# 121
	fadd	f2, f0, f30	# 255
	jal		x0, feq_cont.32369	# 121
fle.32372:
	fadd	f2, f0, f22	# 256
	jal		x0, feq_cont.32369	# 120
feq_cont.32369:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f2, f1	# 883
	jal		x0, feq_cont.32367	# 120
feq.32368:
	fadd	f1, f0, f2	# 883
feq_cont.32367:
	add		x9, x10, x9	# 883
	fsw		f1, 0(x9)	# 883
beq_cont.32347:
	beq		x14, x11, beq_cont.32373	# 891
	lw		x5, -72(x2)	# 780
	add		x9, x4, x5	# 780
	flw		f1, 0(x9)	# 780
	fsw		f1, -80(x2)	# 780
	addi	x29, x6, 0	# 780
	sw		x1, -84(x2)	# 780
	addi	x2, x2, -88	# 780
	lw		x31, 0(x29)	# 780
	jalr	x1, x31, 0	# 780
	addi	x2, x2, 88	# 780
	lw		x1, -84(x2)	# 780
	flw		f2, -80(x2)	# 781
	lw		x29, -20(x2)	# 781
	fsw		f1, -84(x2)	# 781
	fadd	f1, f0, f2	# 781
	sw		x1, -88(x2)	# 781
	addi	x2, x2, -92	# 781
	lw		x31, 0(x29)	# 781
	jalr	x1, x31, 0	# 781
	addi	x2, x2, 92	# 781
	lw		x1, -88(x2)	# 781
	addi	x4, x7, 0	# 782
	lw		x7, -76(x2)	# 782
	add		x9, x7, x4	# 782
	flw		f2, 0(x9)	# 782
	sw		x4, -88(x2)	# 782
	fsw		f1, -92(x2)	# 782
	fsw		f2, -96(x2)	# 782
	addi	x29, x6, 0	# 782
	fadd	f1, f0, f2	# 782
	sw		x1, -100(x2)	# 782
	addi	x2, x2, -104	# 782
	lw		x31, 0(x29)	# 782
	jalr	x1, x31, 0	# 782
	addi	x2, x2, 104	# 782
	lw		x1, -100(x2)	# 782
	flw		f2, -96(x2)	# 783
	lw		x29, -20(x2)	# 783
	fsw		f1, -100(x2)	# 783
	fadd	f1, f0, f2	# 783
	sw		x1, -104(x2)	# 783
	addi	x2, x2, -108	# 783
	lw		x31, 0(x29)	# 783
	jalr	x1, x31, 0	# 783
	addi	x2, x2, 108	# 783
	lw		x1, -104(x2)	# 783
	addi	x4, x8, 0	# 784
	add		x8, x7, x4	# 784
	flw		f2, 0(x8)	# 784
	sw		x4, -104(x2)	# 784
	fsw		f1, -108(x2)	# 784
	fsw		f2, -112(x2)	# 784
	addi	x29, x6, 0	# 784
	fadd	f1, f0, f2	# 784
	sw		x1, -116(x2)	# 784
	addi	x2, x2, -120	# 784
	lw		x31, 0(x29)	# 784
	jalr	x1, x31, 0	# 784
	addi	x2, x2, 120	# 784
	lw		x1, -116(x2)	# 784
	flw		f2, -112(x2)	# 785
	lw		x29, -20(x2)	# 785
	fsw		f1, -116(x2)	# 785
	fadd	f1, f0, f2	# 785
	sw		x1, -120(x2)	# 785
	addi	x2, x2, -124	# 785
	lw		x31, 0(x29)	# 785
	jalr	x1, x31, 0	# 785
	addi	x2, x2, 124	# 785
	lw		x1, -120(x2)	# 785
	flw		f2, -100(x2)	# 787
	flw		f3, -116(x2)	# 787
	fmul	f4, f2, f3	# 787
	flw		f5, -92(x2)	# 788
	flw		f6, -108(x2)	# 788
	fmul	f7, f5, f6	# 788
	fmul	f8, f7, f3	# 788
	flw		f9, -84(x2)	# 788
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
	addi	x4, x5, 0	# 800
	add		x5, x10, x4	# 800
	flw		f6, 0(x5)	# 800
	lw		x5, -88(x2)	# 801
	add		x6, x10, x5	# 801
	flw		f9, 0(x6)	# 801
	lw		x6, -104(x2)	# 802
	add		x8, x10, x6	# 802
	flw		f10, 0(x8)	# 802
	fmul	f13, f4, f4	# 127
	fmul	f13, f6, f13	# 807
	fmul	f14, f12, f12	# 127
	fmul	f14, f9, f14	# 807
	fadd	f13, f13, f14	# 807
	fmul	f14, f3, f3	# 127
	fmul	f14, f10, f14	# 807
	fadd	f13, f13, f14	# 807
	add		x8, x10, x4	# 807
	fsw		f13, 0(x8)	# 807
	fmul	f13, f8, f8	# 127
	fmul	f13, f6, f13	# 808
	fmul	f14, f7, f7	# 127
	fmul	f14, f9, f14	# 808
	fadd	f13, f13, f14	# 808
	fmul	f14, f5, f5	# 127
	fmul	f14, f10, f14	# 808
	fadd	f13, f13, f14	# 808
	add		x8, x10, x5	# 808
	fsw		f13, 0(x8)	# 808
	fmul	f13, f11, f11	# 127
	fmul	f13, f6, f13	# 809
	fmul	f14, f1, f1	# 127
	fmul	f14, f9, f14	# 809
	fadd	f13, f13, f14	# 809
	fmul	f14, f2, f2	# 127
	fmul	f14, f10, f14	# 809
	fadd	f13, f13, f14	# 809
	add		x8, x10, x6	# 809
	fsw		f13, 0(x8)	# 809
	lui		x8, %hi(l.26379)	# 812
	ori		x8, x0, %lo(l.26379)	# 812
	flw		f13, 0(x8)	# 812
	fmul	f14, f6, f8	# 812
	fmul	f14, f14, f11	# 812
	fmul	f15, f9, f7	# 812
	fmul	f15, f15, f1	# 812
	fadd	f14, f14, f15	# 812
	fmul	f15, f10, f5	# 812
	fmul	f15, f15, f2	# 812
	fadd	f14, f14, f15	# 812
	fmul	f14, f13, f14	# 812
	add		x4, x7, x4	# 812
	fsw		f14, 0(x4)	# 812
	fmul	f4, f6, f4	# 813
	fmul	f6, f4, f11	# 813
	fmul	f9, f9, f12	# 813
	fmul	f1, f9, f1	# 813
	fadd	f1, f6, f1	# 813
	fmul	f3, f10, f3	# 813
	fmul	f2, f3, f2	# 813
	fadd	f1, f1, f2	# 813
	fmul	f1, f13, f1	# 813
	addi	x4, x5, 0	# 813
	add		x4, x7, x4	# 813
	fsw		f1, 0(x4)	# 813
	fmul	f1, f4, f8	# 814
	fmul	f2, f9, f7	# 814
	fadd	f1, f1, f2	# 814
	fmul	f2, f3, f5	# 814
	fadd	f1, f1, f2	# 814
	fmul	f1, f13, f1	# 814
	addi	x4, x6, 0	# 814
	add		x4, x7, x4	# 814
	fsw		f1, 0(x4)	# 814
	jal		x0, beq_cont.32373	# 891
beq_cont.32373:
	addi	x4, x0, 1	# 895
	jal		x0, beq_cont.32339	# 822
beq.32340:
	addi	x4, x0, 0	# 898
beq_cont.32339:
	beq		x4, x11, beq.32375	# 904
	lw		x4, -4(x2)	# 905
	add		x4, x4, x12	# 905
	lw		x29, 0(x2)	# 905
	lw		x31, 0(x29)	# 905
	jalr	x0, x31, 0	# 905
beq.32375:
	mul		x4, x30, x11	# 907
	addi	x4, x4, 63796	# 907
	lw		x5, -4(x2)	# 907
	sw		x5, 0(x4)	# 907
	jalr	x0, x1, 0	# 907
ble.32338:
	jalr	x0, x1, 0	# 908
read_net_item.2657.17899:
	lw		x5, 8(x29)	# 919
	lw		x6, 4(x29)	# 919
	sw		x29, 0(x2)	# 919
	sw		x4, -4(x2)	# 919
	sw		x1, -8(x2)	# 919
	addi	x2, x2, -12	# 919
	jal		x1, min_caml_read_int	# 919
	addi	x2, x2, 12	# 919
	lw		x1, -8(x2)	# 919
	beq		x4, x5, beq.32378	# 920
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
beq.32378:
	lw		x4, -4(x2)	# 920
	add		x4, x4, x6	# 920
	jal		x0, min_caml_create_array	# 920
read_or_network.2659.17901:
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
	beq		x4, x6, beq.32379	# 928
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
beq.32379:
	lw		x4, -4(x2)	# 929
	add		x4, x4, x8	# 929
	jal		x0, min_caml_create_array	# 929
read_and_network.2661.17903:
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
	beq		x5, x6, beq.32380	# 937
	lw		x5, -4(x2)	# 939
	mul		x6, x30, x5	# 939
	addi	x6, x6, 64128	# 939
	sw		x4, 0(x6)	# 939
	add		x4, x5, x8	# 940
	lw		x29, 0(x2)	# 940
	lw		x31, 0(x29)	# 940
	jalr	x0, x31, 0	# 940
beq.32380:
	jalr	x0, x1, 0	# 937
iter_setup_dirvec_constants.2758.17905:
	lw		x6, 24(x29)	# 1312
	lw		x7, 20(x29)	# 1312
	lw		x8, 16(x29)	# 1312
	lw		x9, 12(x29)	# 1312
	lw		x10, 8(x29)	# 1312
	flw		f1, 4(x29)	# 1312
	ble		x9, x5, ble.32382	# 1312
	jalr	x0, x1, 0	# 1325
ble.32382:
	mul		x11, x30, x5	# 1313
	addi	x12, x11, 63844	# 1313
	lw		x12, 0(x12)	# 1313
	lw		x13, 4(x4)	# 687
	lw		x14, 0(x4)	# 681
	lw		x15, 4(x12)	# 395
	sw		x4, 0(x2)	# 1317
	sw		x29, -4(x2)	# 1317
	sw		x5, -8(x2)	# 1317
	beq		x15, x10, beq.32385	# 1317
	beq		x15, x7, beq.32387	# 1319
	fsw		f1, -12(x2)	# 1283
	addi	x4, x6, 0	# 1283
	sw		x1, -16(x2)	# 1283
	addi	x2, x2, -20	# 1283
	jal		x1, min_caml_create_float_array	# 1283
	addi	x2, x2, 20	# 1283
	lw		x1, -16(x2)	# 1283
	mul		x5, x30, x9	# 1285
	add		x6, x14, x5	# 1285
	flw		f1, 0(x6)	# 1285
	mul		x6, x30, x10	# 1285
	add		x15, x14, x6	# 1285
	flw		f2, 0(x15)	# 1285
	mul		x7, x30, x7	# 1285
	add		x15, x14, x7	# 1285
	flw		f3, 0(x15)	# 1285
	fmul	f4, f1, f1	# 127
	lw		x15, 16(x12)	# 433
	add		x16, x15, x5	# 438
	flw		f5, 0(x16)	# 438
	fmul	f4, f4, f5	# 1009
	fmul	f5, f2, f2	# 127
	add		x16, x15, x6	# 448
	flw		f6, 0(x16)	# 448
	fmul	f5, f5, f6	# 1009
	fadd	f4, f4, f5	# 1009
	fmul	f5, f3, f3	# 127
	add		x16, x15, x7	# 458
	flw		f6, 0(x16)	# 458
	fmul	f5, f5, f6	# 1009
	fadd	f4, f4, f5	# 1009
	lw		x16, 12(x12)	# 424
	beq		x16, x9, beq_cont.32388	# 1011
	fmul	f5, f2, f3	# 1015
	lw		x16, 36(x12)	# 553
	addi	x17, x5, 0	# 558
	add		x17, x16, x17	# 558
	flw		f6, 0(x17)	# 558
	fmul	f5, f5, f6	# 1015
	fadd	f4, f4, f5	# 1014
	fmul	f5, f3, f1	# 1016
	addi	x17, x6, 0	# 568
	add		x17, x16, x17	# 568
	flw		f6, 0(x17)	# 568
	fmul	f5, f5, f6	# 1016
	fadd	f4, f4, f5	# 1014
	fmul	f5, f1, f2	# 1017
	addi	x17, x7, 0	# 578
	add		x16, x16, x17	# 578
	flw		f6, 0(x16)	# 578
	fmul	f5, f5, f6	# 1017
	fadd	f4, f4, f5	# 1014
	jal		x0, beq_cont.32388	# 1011
beq_cont.32388:
	add		x16, x15, x5	# 438
	flw		f5, 0(x16)	# 438
	fmul	f1, f1, f5	# 1286
	fsub	f1, f0, f1	# 123
	add		x16, x15, x6	# 448
	flw		f5, 0(x16)	# 448
	fmul	f2, f2, f5	# 1287
	fsub	f2, f0, f2	# 123
	add		x15, x15, x7	# 458
	flw		f5, 0(x15)	# 458
	fmul	f3, f3, f5	# 1288
	fsub	f3, f0, f3	# 123
	add		x15, x4, x5	# 1290
	fsw		f4, 0(x15)	# 1290
	lw		x15, 12(x12)	# 424
	beq		x15, x9, beq.32391	# 1294
	add		x9, x14, x7	# 1295
	flw		f5, 0(x9)	# 1295
	lw		x9, 36(x12)	# 563
	add		x15, x9, x6	# 568
	flw		f6, 0(x15)	# 568
	fmul	f5, f5, f6	# 1295
	add		x15, x14, x6	# 1295
	flw		f7, 0(x15)	# 1295
	add		x9, x9, x7	# 578
	flw		f8, 0(x9)	# 578
	fmul	f7, f7, f8	# 1295
	fadd	f5, f5, f7	# 1295
	fmul	f5, f5, f26	# 126
	fsub	f1, f1, f5	# 1295
	add		x9, x4, x6	# 1295
	fsw		f1, 0(x9)	# 1295
	add		x9, x14, x7	# 1296
	flw		f1, 0(x9)	# 1296
	lw		x9, 36(x12)	# 553
	add		x9, x9, x5	# 558
	flw		f5, 0(x9)	# 558
	fmul	f1, f1, f5	# 1296
	add		x9, x14, x5	# 1296
	flw		f9, 0(x9)	# 1296
	fmul	f8, f9, f8	# 1296
	fadd	f1, f1, f8	# 1296
	fmul	f1, f1, f26	# 126
	fsub	f1, f2, f1	# 1296
	add		x7, x4, x7	# 1296
	fsw		f1, 0(x7)	# 1296
	add		x6, x14, x6	# 1297
	flw		f1, 0(x6)	# 1297
	fmul	f1, f1, f5	# 1297
	add		x5, x14, x5	# 1297
	flw		f2, 0(x5)	# 1297
	fmul	f2, f2, f6	# 1297
	fadd	f1, f1, f2	# 1297
	fmul	f1, f1, f26	# 126
	fsub	f1, f3, f1	# 1297
	mul		x5, x30, x8	# 1297
	add		x5, x4, x5	# 1297
	fsw		f1, 0(x5)	# 1297
	jal		x0, beq_cont.32390	# 1294
beq.32391:
	addi	x5, x6, 0	# 1299
	add		x5, x4, x5	# 1299
	fsw		f1, 0(x5)	# 1299
	addi	x5, x7, 0	# 1300
	add		x5, x4, x5	# 1300
	fsw		f2, 0(x5)	# 1300
	mul		x5, x30, x8	# 1301
	add		x5, x4, x5	# 1301
	fsw		f3, 0(x5)	# 1301
beq_cont.32390:
	flw		f1, -12(x2)	# 120
	feq		f4, f1, feq_cont.32392	# 120
	addi	x5, x0, 4	# 1304
	fdiv	f1, f30, f4	# 1304
	mul		x5, x30, x5	# 1304
	add		x5, x4, x5	# 1304
	fsw		f1, 0(x5)	# 1304
	jal		x0, feq_cont.32392	# 120
feq_cont.32392:
	addi	x5, x11, 0	# 1322
	add		x5, x13, x5	# 1322
	sw		x4, 0(x5)	# 1322
	jal		x0, beq_cont.32384	# 1319
beq.32387:
	addi	x6, x0, 4	# 1264
	fsw		f1, -12(x2)	# 1264
	addi	x4, x6, 0	# 1264
	sw		x1, -16(x2)	# 1264
	addi	x2, x2, -20	# 1264
	jal		x1, min_caml_create_float_array	# 1264
	addi	x2, x2, 20	# 1264
	lw		x1, -16(x2)	# 1264
	mul		x5, x30, x9	# 1266
	add		x6, x14, x5	# 1266
	flw		f1, 0(x6)	# 1266
	lw		x6, 16(x12)	# 433
	add		x9, x6, x5	# 438
	flw		f2, 0(x9)	# 438
	fmul	f1, f1, f2	# 1266
	mul		x9, x30, x10	# 1266
	add		x12, x14, x9	# 1266
	flw		f3, 0(x12)	# 1266
	add		x12, x6, x9	# 448
	flw		f4, 0(x12)	# 448
	fmul	f3, f3, f4	# 1266
	fadd	f1, f1, f3	# 1266
	mul		x7, x30, x7	# 1266
	add		x12, x14, x7	# 1266
	flw		f3, 0(x12)	# 1266
	add		x6, x6, x7	# 458
	flw		f5, 0(x6)	# 458
	fmul	f3, f3, f5	# 1266
	fadd	f1, f1, f3	# 1266
	flw		f3, -12(x2)	# 121
	fle		f1, f3, fle.32395	# 121
	fdiv	f3, f22, f1	# 1270
	add		x5, x4, x5	# 1270
	fsw		f3, 0(x5)	# 1270
	fdiv	f2, f2, f1	# 1272
	fsub	f2, f0, f2	# 123
	addi	x5, x9, 0	# 1272
	add		x5, x4, x5	# 1272
	fsw		f2, 0(x5)	# 1272
	fdiv	f2, f4, f1	# 1273
	fsub	f2, f0, f2	# 123
	addi	x5, x7, 0	# 1273
	add		x5, x4, x5	# 1273
	fsw		f2, 0(x5)	# 1273
	fdiv	f1, f5, f1	# 1274
	fsub	f1, f0, f1	# 123
	mul		x5, x30, x8	# 1274
	add		x5, x4, x5	# 1274
	fsw		f1, 0(x5)	# 1274
	jal		x0, fle_cont.32394	# 121
fle.32395:
	add		x5, x4, x5	# 1276
	fsw		f3, 0(x5)	# 1276
fle_cont.32394:
	addi	x5, x11, 0	# 1320
	add		x5, x13, x5	# 1320
	sw		x4, 0(x5)	# 1320
	jal		x0, beq_cont.32384	# 1317
beq.32385:
	addi	x15, x0, 6	# 1237
	fsw		f1, -12(x2)	# 1237
	addi	x4, x15, 0	# 1237
	sw		x1, -16(x2)	# 1237
	addi	x2, x2, -20	# 1237
	jal		x1, min_caml_create_float_array	# 1237
	addi	x2, x2, 20	# 1237
	lw		x1, -16(x2)	# 1237
	mul		x5, x30, x9	# 1239
	add		x15, x14, x5	# 1239
	flw		f1, 0(x15)	# 1239
	flw		f2, -12(x2)	# 120
	feq		f1, f2, feq.32397	# 120
	lw		x15, 24(x12)	# 415
	fle		f2, f1, fle.32399	# 122
	addi	x16, x0, 1	# 122
	jal		x0, fle_cont.32398	# 122
fle.32399:
	addi	x16, x0, 0	# 122
fle_cont.32398:
	beq		x15, x9, beq.32401	# 246
	fle		f2, f1, fle.32403	# 122
	addi	x15, x0, 0	# 246
	jal		x0, beq_cont.32400	# 122
fle.32403:
	addi	x15, x0, 1	# 246
	jal		x0, beq_cont.32400	# 246
beq.32401:
	addi	x15, x16, 0	# 246
beq_cont.32400:
	lw		x16, 16(x12)	# 433
	add		x16, x16, x5	# 438
	flw		f1, 0(x16)	# 438
	beq		x15, x9, beq.32405	# 261
	jal		x0, beq_cont.32404	# 261
beq.32405:
	fsub	f1, f0, f1	# 123
beq_cont.32404:
	add		x15, x4, x5	# 1243
	fsw		f1, 0(x15)	# 1243
	add		x5, x14, x5	# 1245
	flw		f3, 0(x5)	# 1245
	fdiv	f1, f30, f3	# 1245
	mul		x5, x30, x10	# 1245
	add		x5, x4, x5	# 1245
	fsw		f1, 0(x5)	# 1245
	jal		x0, feq_cont.32396	# 120
feq.32397:
	mul		x5, x30, x10	# 1240
	add		x5, x4, x5	# 1240
	fsw		f2, 0(x5)	# 1240
feq_cont.32396:
	mul		x5, x30, x10	# 1247
	add		x15, x14, x5	# 1247
	flw		f1, 0(x15)	# 1247
	feq		f1, f2, feq.32407	# 120
	lw		x15, 24(x12)	# 415
	fle		f2, f1, fle.32409	# 122
	addi	x16, x0, 1	# 122
	jal		x0, fle_cont.32408	# 122
fle.32409:
	addi	x16, x0, 0	# 122
fle_cont.32408:
	beq		x15, x9, beq.32411	# 246
	fle		f2, f1, fle.32413	# 122
	addi	x15, x0, 0	# 246
	jal		x0, beq_cont.32410	# 122
fle.32413:
	addi	x15, x0, 1	# 246
	jal		x0, beq_cont.32410	# 246
beq.32411:
	addi	x15, x16, 0	# 246
beq_cont.32410:
	lw		x16, 16(x12)	# 443
	add		x16, x16, x5	# 448
	flw		f1, 0(x16)	# 448
	beq		x15, x9, beq.32415	# 261
	jal		x0, beq_cont.32414	# 261
beq.32415:
	fsub	f1, f0, f1	# 123
beq_cont.32414:
	mul		x15, x30, x7	# 1250
	add		x15, x4, x15	# 1250
	fsw		f1, 0(x15)	# 1250
	add		x5, x14, x5	# 1251
	flw		f3, 0(x5)	# 1251
	fdiv	f1, f30, f3	# 1251
	mul		x5, x30, x8	# 1251
	add		x5, x4, x5	# 1251
	fsw		f1, 0(x5)	# 1251
	jal		x0, feq_cont.32406	# 120
feq.32407:
	mul		x5, x30, x8	# 1248
	add		x5, x4, x5	# 1248
	fsw		f2, 0(x5)	# 1248
feq_cont.32406:
	mul		x5, x30, x7	# 1253
	add		x7, x14, x5	# 1253
	flw		f1, 0(x7)	# 1253
	feq		f1, f2, feq.32417	# 120
	addi	x7, x0, 4	# 1256
	lw		x8, 24(x12)	# 415
	fle		f2, f1, fle.32419	# 122
	addi	x15, x0, 1	# 122
	jal		x0, fle_cont.32418	# 122
fle.32419:
	addi	x15, x0, 0	# 122
fle_cont.32418:
	beq		x8, x9, beq.32421	# 246
	fle		f2, f1, fle.32423	# 122
	addi	x8, x0, 0	# 246
	jal		x0, beq_cont.32420	# 122
fle.32423:
	addi	x8, x0, 1	# 246
	jal		x0, beq_cont.32420	# 246
beq.32421:
	addi	x8, x15, 0	# 246
beq_cont.32420:
	lw		x12, 16(x12)	# 453
	add		x12, x12, x5	# 458
	flw		f1, 0(x12)	# 458
	beq		x8, x9, beq.32425	# 261
	jal		x0, beq_cont.32424	# 261
beq.32425:
	fsub	f1, f0, f1	# 123
beq_cont.32424:
	mul		x7, x30, x7	# 1256
	add		x7, x4, x7	# 1256
	fsw		f1, 0(x7)	# 1256
	add		x5, x14, x5	# 1257
	flw		f2, 0(x5)	# 1257
	fdiv	f1, f30, f2	# 1257
	mul		x5, x30, x6	# 1257
	add		x5, x4, x5	# 1257
	fsw		f1, 0(x5)	# 1257
	jal		x0, feq_cont.32416	# 120
feq.32417:
	mul		x5, x30, x6	# 1254
	add		x5, x4, x5	# 1254
	fsw		f2, 0(x5)	# 1254
feq_cont.32416:
	addi	x5, x11, 0	# 1318
	add		x5, x13, x5	# 1318
	sw		x4, 0(x5)	# 1318
beq_cont.32384:
	lw		x4, -8(x2)	# 1324
	sub		x5, x4, x10	# 1324
	lw		x4, 0(x2)	# 1324
	lw		x29, -4(x2)	# 1324
	lw		x31, 0(x29)	# 1324
	jalr	x0, x31, 0	# 1324
setup_startp_constants.2763.17908:
	lw		x6, 16(x29)	# 1337
	lw		x7, 12(x29)	# 1337
	lw		x8, 8(x29)	# 1337
	lw		x9, 4(x29)	# 1337
	ble		x8, x5, ble.32426	# 1337
	jalr	x0, x1, 0	# 1352
ble.32426:
	mul		x10, x30, x5	# 1338
	addi	x10, x10, 63844	# 1338
	lw		x10, 0(x10)	# 1338
	lw		x11, 40(x10)	# 590
	lw		x12, 4(x10)	# 395
	mul		x13, x30, x8	# 1341
	add		x14, x4, x13	# 1341
	flw		f1, 0(x14)	# 1341
	lw		x14, 20(x10)	# 473
	add		x14, x14, x13	# 478
	flw		f2, 0(x14)	# 478
	fsub	f1, f1, f2	# 1341
	add		x14, x11, x13	# 1341
	fsw		f1, 0(x14)	# 1341
	mul		x14, x30, x9	# 1342
	add		x15, x4, x14	# 1342
	flw		f1, 0(x15)	# 1342
	lw		x15, 20(x10)	# 483
	add		x15, x15, x14	# 488
	flw		f2, 0(x15)	# 488
	fsub	f1, f1, f2	# 1342
	add		x15, x11, x14	# 1342
	fsw		f1, 0(x15)	# 1342
	mul		x15, x30, x6	# 1343
	add		x16, x4, x15	# 1343
	flw		f1, 0(x16)	# 1343
	lw		x16, 20(x10)	# 493
	add		x16, x16, x15	# 498
	flw		f2, 0(x16)	# 498
	fsub	f1, f1, f2	# 1343
	add		x16, x11, x15	# 1343
	fsw		f1, 0(x16)	# 1343
	beq		x12, x6, beq.32429	# 1344
	ble		x12, x6, beq_cont.32428	# 1347
	addi	x6, x13, 0	# 1348
	add		x13, x11, x6	# 1348
	flw		f1, 0(x13)	# 1348
	addi	x13, x14, 0	# 1348
	add		x14, x11, x13	# 1348
	flw		f2, 0(x14)	# 1348
	addi	x14, x15, 0	# 1348
	add		x15, x11, x14	# 1348
	flw		f3, 0(x15)	# 1348
	fmul	f4, f1, f1	# 127
	lw		x15, 16(x10)	# 433
	add		x16, x15, x6	# 438
	flw		f5, 0(x16)	# 438
	fmul	f4, f4, f5	# 1009
	fmul	f5, f2, f2	# 127
	add		x16, x15, x13	# 448
	flw		f6, 0(x16)	# 448
	fmul	f5, f5, f6	# 1009
	fadd	f4, f4, f5	# 1009
	fmul	f5, f3, f3	# 127
	add		x15, x15, x14	# 458
	flw		f6, 0(x15)	# 458
	fmul	f5, f5, f6	# 1009
	fadd	f4, f4, f5	# 1009
	lw		x15, 12(x10)	# 424
	beq		x15, x8, beq.32433	# 1011
	fmul	f5, f2, f3	# 1015
	lw		x8, 36(x10)	# 553
	add		x6, x8, x6	# 558
	flw		f6, 0(x6)	# 558
	fmul	f5, f5, f6	# 1015
	fadd	f4, f4, f5	# 1014
	fmul	f3, f3, f1	# 1016
	addi	x6, x8, 0	# 563
	addi	x8, x13, 0	# 568
	add		x8, x6, x8	# 568
	flw		f5, 0(x8)	# 568
	fmul	f3, f3, f5	# 1016
	fadd	f3, f4, f3	# 1014
	fmul	f1, f1, f2	# 1017
	addi	x8, x14, 0	# 578
	add		x6, x6, x8	# 578
	flw		f2, 0(x6)	# 578
	fmul	f1, f1, f2	# 1017
	fadd	f1, f3, f1	# 1014
	jal		x0, beq_cont.32432	# 1011
beq.32433:
	fadd	f1, f0, f4	# 1012
beq_cont.32432:
	beq		x12, x7, beq.32435	# 1349
	jal		x0, beq_cont.32434	# 1349
beq.32435:
	fsub	f1, f1, f30	# 1349
beq_cont.32434:
	mul		x6, x30, x7	# 1349
	add		x6, x11, x6	# 1349
	fsw		f1, 0(x6)	# 1349
	jal		x0, beq_cont.32428	# 1347
	jal		x0, beq_cont.32428	# 1344
beq.32429:
	lw		x6, 16(x10)	# 463
	addi	x8, x13, 0	# 1346
	add		x10, x11, x8	# 1346
	flw		f1, 0(x10)	# 1346
	addi	x10, x14, 0	# 1346
	add		x12, x11, x10	# 1346
	flw		f2, 0(x12)	# 1346
	addi	x12, x15, 0	# 1346
	add		x13, x11, x12	# 1346
	flw		f3, 0(x13)	# 1346
	add		x8, x6, x8	# 339
	flw		f4, 0(x8)	# 339
	fmul	f1, f4, f1	# 339
	addi	x8, x10, 0	# 339
	add		x8, x6, x8	# 339
	flw		f4, 0(x8)	# 339
	fmul	f2, f4, f2	# 339
	fadd	f1, f1, f2	# 339
	addi	x8, x12, 0	# 339
	add		x6, x6, x8	# 339
	flw		f2, 0(x6)	# 339
	fmul	f2, f2, f3	# 339
	fadd	f1, f1, f2	# 339
	mul		x6, x30, x7	# 1345
	add		x6, x11, x6	# 1345
	fsw		f1, 0(x6)	# 1345
beq_cont.32428:
	sub		x5, x5, x9	# 1351
	lw		x31, 0(x29)	# 1351
	jalr	x0, x31, 0	# 1351
check_all_inside.2788.17911:
	lw		x6, 24(x29)	# 1406
	lw		x7, 20(x29)	# 1406
	lw		x8, 16(x29)	# 1406
	lw		x9, 12(x29)	# 1406
	lw		x10, 8(x29)	# 1406
	flw		f4, 4(x29)	# 1406
	mul		x11, x30, x4	# 1406
	add		x11, x5, x11	# 1406
	lw		x11, 0(x11)	# 1406
	beq		x11, x7, beq.32436	# 1407
	mul		x7, x30, x11	# 1410
	addi	x7, x7, 63844	# 1410
	lw		x7, 0(x7)	# 1410
	lw		x11, 20(x7)	# 473
	mul		x12, x30, x9	# 478
	add		x13, x11, x12	# 478
	flw		f5, 0(x13)	# 478
	fsub	f5, f1, f5	# 1392
	mul		x13, x30, x10	# 488
	add		x14, x11, x13	# 488
	flw		f6, 0(x14)	# 488
	fsub	f6, f2, f6	# 1393
	mul		x14, x30, x6	# 498
	add		x11, x11, x14	# 498
	flw		f7, 0(x11)	# 498
	fsub	f7, f3, f7	# 1394
	lw		x11, 4(x7)	# 395
	beq		x11, x10, beq.32438	# 1396
	beq		x11, x6, beq.32440	# 1398
	fmul	f8, f5, f5	# 127
	lw		x6, 16(x7)	# 433
	add		x15, x6, x12	# 438
	flw		f9, 0(x15)	# 438
	fmul	f8, f8, f9	# 1009
	fmul	f9, f6, f6	# 127
	add		x15, x6, x13	# 448
	flw		f10, 0(x15)	# 448
	fmul	f9, f9, f10	# 1009
	fadd	f8, f8, f9	# 1009
	fmul	f9, f7, f7	# 127
	add		x6, x6, x14	# 458
	flw		f10, 0(x6)	# 458
	fmul	f9, f9, f10	# 1009
	fadd	f8, f8, f9	# 1009
	lw		x6, 12(x7)	# 424
	beq		x6, x9, beq.32442	# 1011
	fmul	f9, f6, f7	# 1015
	lw		x6, 36(x7)	# 553
	add		x12, x6, x12	# 558
	flw		f10, 0(x12)	# 558
	fmul	f9, f9, f10	# 1015
	fadd	f8, f8, f9	# 1014
	fmul	f7, f7, f5	# 1016
	addi	x12, x13, 0	# 568
	add		x12, x6, x12	# 568
	flw		f9, 0(x12)	# 568
	fmul	f7, f7, f9	# 1016
	fadd	f7, f8, f7	# 1014
	fmul	f5, f5, f6	# 1017
	addi	x12, x14, 0	# 578
	add		x6, x6, x12	# 578
	flw		f6, 0(x6)	# 578
	fmul	f5, f5, f6	# 1017
	fadd	f5, f7, f5	# 1014
	jal		x0, beq_cont.32441	# 1011
beq.32442:
	fadd	f5, f0, f8	# 1012
beq_cont.32441:
	addi	x6, x11, 0	# 395
	beq		x6, x8, beq.32444	# 1386
	jal		x0, beq_cont.32443	# 1386
beq.32444:
	fsub	f5, f5, f30	# 1386
beq_cont.32443:
	lw		x6, 24(x7)	# 415
	fle		f4, f5, fle.32446	# 122
	addi	x7, x0, 1	# 122
	jal		x0, fle_cont.32445	# 122
fle.32446:
	addi	x7, x0, 0	# 122
fle_cont.32445:
	beq		x6, x9, beq.32448	# 246
	fle		f4, f5, fle.32450	# 122
	addi	x6, x0, 0	# 246
	jal		x0, beq_cont.32447	# 122
fle.32450:
	addi	x6, x0, 1	# 246
	jal		x0, beq_cont.32447	# 246
beq.32448:
	addi	x6, x7, 0	# 246
beq_cont.32447:
	beq		x6, x9, beq.32452	# 1387
	addi	x6, x0, 0	# 1387
	jal		x0, beq_cont.32437	# 1387
beq.32452:
	addi	x6, x0, 1	# 1387
	jal		x0, beq_cont.32437	# 1398
beq.32440:
	lw		x6, 16(x7)	# 463
	addi	x8, x12, 0	# 339
	add		x8, x6, x8	# 339
	flw		f8, 0(x8)	# 339
	fmul	f5, f8, f5	# 339
	addi	x8, x13, 0	# 339
	add		x8, x6, x8	# 339
	flw		f8, 0(x8)	# 339
	fmul	f6, f8, f6	# 339
	fadd	f5, f5, f6	# 339
	addi	x8, x14, 0	# 339
	add		x6, x6, x8	# 339
	flw		f6, 0(x6)	# 339
	fmul	f6, f6, f7	# 339
	fadd	f5, f5, f6	# 339
	lw		x6, 24(x7)	# 415
	fle		f4, f5, fle.32454	# 122
	addi	x7, x0, 1	# 122
	jal		x0, fle_cont.32453	# 122
fle.32454:
	addi	x7, x0, 0	# 122
fle_cont.32453:
	beq		x6, x9, beq.32456	# 246
	fle		f4, f5, fle.32458	# 122
	addi	x6, x0, 0	# 246
	jal		x0, beq_cont.32455	# 122
fle.32458:
	addi	x6, x0, 1	# 246
	jal		x0, beq_cont.32455	# 246
beq.32456:
	addi	x6, x7, 0	# 246
beq_cont.32455:
	beq		x6, x9, beq.32460	# 1380
	addi	x6, x0, 0	# 1380
	jal		x0, beq_cont.32437	# 1380
beq.32460:
	addi	x6, x0, 1	# 1380
	jal		x0, beq_cont.32437	# 1396
beq.32438:
	fle		f5, f4, fle.32462	# 124
	jal		x0, fle_cont.32461	# 124
fle.32462:
	fsub	f5, f0, f5	# 124
fle_cont.32461:
	lw		x6, 16(x7)	# 433
	addi	x8, x12, 0	# 438
	add		x8, x6, x8	# 438
	flw		f8, 0(x8)	# 438
	fle		f8, f5, fle.32464	# 125
	fle		f6, f4, fle.32466	# 124
	fadd	f5, f0, f6	# 124
	jal		x0, fle_cont.32465	# 124
fle.32466:
	fsub	f5, f0, f6	# 124
fle_cont.32465:
	addi	x8, x13, 0	# 448
	add		x8, x6, x8	# 448
	flw		f6, 0(x8)	# 448
	fle		f6, f5, fle.32468	# 125
	fle		f7, f4, fle.32470	# 124
	fadd	f4, f0, f7	# 124
	jal		x0, fle_cont.32469	# 124
fle.32470:
	fsub	f4, f0, f7	# 124
fle_cont.32469:
	addi	x8, x14, 0	# 458
	add		x6, x6, x8	# 458
	flw		f5, 0(x6)	# 458
	fle		f5, f4, fle.32472	# 125
	addi	x6, x0, 1	# 125
	jal		x0, fle_cont.32463	# 125
fle.32472:
	addi	x6, x0, 0	# 125
	jal		x0, fle_cont.32463	# 125
fle.32468:
	addi	x6, x0, 0	# 1372
	jal		x0, fle_cont.32463	# 125
fle.32464:
	addi	x6, x0, 0	# 1373
fle_cont.32463:
	beq		x6, x9, beq.32474	# 1368
	lw		x6, 24(x7)	# 415
	jal		x0, beq_cont.32437	# 1368
beq.32474:
	lw		x6, 24(x7)	# 415
	beq		x6, x9, beq.32476	# 1374
	addi	x6, x0, 0	# 1374
	jal		x0, beq_cont.32437	# 1374
beq.32476:
	addi	x6, x0, 1	# 1374
beq_cont.32437:
	beq		x6, x9, beq.32477	# 1410
	addi	x4, x0, 0	# 1411
	jalr	x0, x1, 0	# 1411
beq.32477:
	add		x4, x4, x10	# 1413
	lw		x31, 0(x29)	# 1413
	jalr	x0, x31, 0	# 1413
beq.32436:
	addi	x4, x0, 1	# 1408
	jalr	x0, x1, 0	# 1408
shadow_check_and_group.2794.17917:
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
	beq		x13, x9, beq.32478	# 1426
	mul		x9, x30, x13	# 1168
	addi	x13, x9, 63844	# 1168
	lw		x13, 0(x13)	# 1168
	mul		x14, x30, x11	# 1169
	addi	x15, x14, 64348	# 1169
	flw		f2, 0(x15)	# 1169
	lw		x15, 20(x13)	# 473
	add		x16, x15, x14	# 478
	flw		f3, 0(x16)	# 478
	fsub	f2, f2, f3	# 1169
	mul		x16, x30, x12	# 1170
	addi	x17, x16, 64348	# 1170
	flw		f3, 0(x17)	# 1170
	add		x17, x15, x16	# 488
	flw		f4, 0(x17)	# 488
	fsub	f3, f3, f4	# 1170
	mul		x17, x30, x8	# 1171
	addi	x18, x17, 64348	# 1171
	flw		f4, 0(x18)	# 1171
	add		x15, x15, x17	# 498
	flw		f5, 0(x15)	# 498
	fsub	f4, f4, f5	# 1171
	addi	x15, x9, 64544	# 1173
	lw		x15, 0(x15)	# 1173
	lw		x18, 4(x13)	# 395
	beq		x18, x12, beq.32480	# 1175
	beq		x18, x8, beq.32482	# 1177
	addi	x7, x14, 0	# 1149
	add		x8, x15, x7	# 1149
	flw		f5, 0(x8)	# 1149
	feq		f5, f1, feq.32484	# 120
	addi	x8, x16, 0	# 1153
	add		x19, x15, x8	# 1153
	flw		f6, 0(x19)	# 1153
	fmul	f6, f6, f2	# 1153
	addi	x19, x17, 0	# 1153
	add		x20, x15, x19	# 1153
	flw		f7, 0(x20)	# 1153
	fmul	f7, f7, f3	# 1153
	fadd	f6, f6, f7	# 1153
	mul		x20, x30, x10	# 1153
	add		x20, x15, x20	# 1153
	flw		f7, 0(x20)	# 1153
	fmul	f7, f7, f4	# 1153
	fadd	f6, f6, f7	# 1153
	fmul	f7, f2, f2	# 127
	lw		x20, 16(x13)	# 433
	add		x21, x20, x7	# 438
	flw		f8, 0(x21)	# 438
	fmul	f7, f7, f8	# 1009
	fmul	f8, f3, f3	# 127
	add		x21, x20, x8	# 448
	flw		f9, 0(x21)	# 448
	fmul	f8, f8, f9	# 1009
	fadd	f7, f7, f8	# 1009
	fmul	f8, f4, f4	# 127
	add		x20, x20, x19	# 458
	flw		f9, 0(x20)	# 458
	fmul	f8, f8, f9	# 1009
	fadd	f7, f7, f8	# 1009
	lw		x20, 12(x13)	# 424
	beq		x20, x11, beq.32486	# 1011
	fmul	f8, f3, f4	# 1015
	lw		x20, 36(x13)	# 553
	addi	x21, x7, 0	# 558
	add		x21, x20, x21	# 558
	flw		f9, 0(x21)	# 558
	fmul	f8, f8, f9	# 1015
	fadd	f7, f7, f8	# 1014
	fmul	f4, f4, f2	# 1016
	add		x8, x20, x8	# 568
	flw		f8, 0(x8)	# 568
	fmul	f4, f4, f8	# 1016
	fadd	f4, f7, f4	# 1014
	fmul	f2, f2, f3	# 1017
	addi	x8, x20, 0	# 573
	add		x8, x8, x19	# 578
	flw		f3, 0(x8)	# 578
	fmul	f2, f2, f3	# 1017
	fadd	f2, f4, f2	# 1014
	jal		x0, beq_cont.32485	# 1011
beq.32486:
	fadd	f2, f0, f7	# 1012
beq_cont.32485:
	addi	x8, x18, 0	# 395
	beq		x8, x10, beq.32488	# 1155
	jal		x0, beq_cont.32487	# 1155
beq.32488:
	fsub	f2, f2, f30	# 1155
beq_cont.32487:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1156
	fsub	f2, f3, f2	# 1156
	fle		f2, f1, fle.32490	# 121
	lw		x8, 24(x13)	# 415
	beq		x8, x11, beq.32492	# 1158
	fsqrt	f1, f2	# 1159
	fadd	f1, f6, f1	# 1159
	addi	x8, x0, 4	# 1159
	mul		x8, x30, x8	# 1159
	add		x8, x15, x8	# 1159
	flw		f2, 0(x8)	# 1159
	fmul	f1, f1, f2	# 1159
	addi	x7, x7, 64336	# 1159
	fsw		f1, 0(x7)	# 1159
	jal		x0, beq_cont.32491	# 1158
beq.32492:
	fsqrt	f1, f2	# 1161
	fsub	f1, f6, f1	# 1161
	addi	x8, x0, 4	# 1161
	mul		x8, x30, x8	# 1161
	add		x8, x15, x8	# 1161
	flw		f2, 0(x8)	# 1161
	fmul	f1, f1, f2	# 1161
	addi	x7, x7, 64336	# 1161
	fsw		f1, 0(x7)	# 1161
beq_cont.32491:
	addi	x7, x0, 1	# 1162
	jal		x0, beq_cont.32479	# 121
fle.32490:
	addi	x7, x0, 0	# 1163
	jal		x0, beq_cont.32479	# 120
feq.32484:
	addi	x7, x0, 0	# 1151
	jal		x0, beq_cont.32479	# 1177
beq.32482:
	addi	x7, x14, 0	# 1139
	add		x8, x15, x7	# 1139
	flw		f5, 0(x8)	# 1139
	fle		f1, f5, fle.32494	# 122
	addi	x8, x16, 0	# 1141
	add		x8, x15, x8	# 1141
	flw		f1, 0(x8)	# 1141
	fmul	f1, f1, f2	# 1141
	addi	x8, x17, 0	# 1141
	add		x8, x15, x8	# 1141
	flw		f2, 0(x8)	# 1141
	fmul	f2, f2, f3	# 1141
	fadd	f1, f1, f2	# 1141
	mul		x8, x30, x10	# 1141
	add		x8, x15, x8	# 1141
	flw		f2, 0(x8)	# 1141
	fmul	f2, f2, f4	# 1141
	fadd	f1, f1, f2	# 1141
	addi	x7, x7, 64336	# 1140
	fsw		f1, 0(x7)	# 1140
	addi	x7, x0, 1	# 1142
	jal		x0, beq_cont.32479	# 122
fle.32494:
	addi	x7, x0, 0	# 1143
	jal		x0, beq_cont.32479	# 1175
beq.32480:
	addi	x8, x14, 0	# 1106
	add		x18, x15, x8	# 1106
	flw		f5, 0(x18)	# 1106
	fsub	f5, f5, f2	# 1106
	addi	x18, x16, 0	# 1106
	add		x19, x15, x18	# 1106
	flw		f6, 0(x19)	# 1106
	fmul	f5, f5, f6	# 1106
	addi	x19, x18, 64532	# 1108
	flw		f7, 0(x19)	# 1108
	fmul	f8, f5, f7	# 1108
	fadd	f8, f8, f3	# 1108
	fle		f8, f1, fle.32496	# 124
	jal		x0, fle_cont.32495	# 124
fle.32496:
	fsub	f8, f0, f8	# 124
fle_cont.32495:
	lw		x13, 16(x13)	# 443
	add		x19, x13, x18	# 448
	flw		f9, 0(x19)	# 448
	fle		f9, f8, fle.32498	# 125
	addi	x19, x17, 0	# 1109
	addi	x20, x19, 64532	# 1109
	flw		f8, 0(x20)	# 1109
	fmul	f8, f5, f8	# 1109
	fadd	f8, f8, f4	# 1109
	fle		f8, f1, fle.32500	# 124
	jal		x0, fle_cont.32499	# 124
fle.32500:
	fsub	f8, f0, f8	# 124
fle_cont.32499:
	addi	x20, x13, 0	# 453
	add		x19, x20, x19	# 458
	flw		f9, 0(x19)	# 458
	fle		f9, f8, fle.32502	# 125
	feq		f6, f1, feq.32504	# 120
	addi	x19, x0, 1	# 1110
	jal		x0, fle_cont.32497	# 120
feq.32504:
	addi	x19, x0, 0	# 1110
	jal		x0, fle_cont.32497	# 125
fle.32502:
	addi	x19, x0, 0	# 1111
	jal		x0, fle_cont.32497	# 125
fle.32498:
	addi	x19, x0, 0	# 1112
fle_cont.32497:
	beq		x19, x11, beq.32506	# 1107
	addi	x7, x8, 0	# 1114
	addi	x7, x7, 64336	# 1114
	fsw		f5, 0(x7)	# 1114
	addi	x7, x0, 1	# 1114
	jal		x0, beq_cont.32479	# 1107
beq.32506:
	addi	x19, x17, 0	# 1115
	add		x20, x15, x19	# 1115
	flw		f5, 0(x20)	# 1115
	fsub	f5, f5, f3	# 1115
	mul		x10, x30, x10	# 1115
	add		x10, x15, x10	# 1115
	flw		f6, 0(x10)	# 1115
	fmul	f5, f5, f6	# 1115
	addi	x10, x8, 64532	# 1117
	flw		f8, 0(x10)	# 1117
	fmul	f9, f5, f8	# 1117
	fadd	f9, f9, f2	# 1117
	fle		f9, f1, fle.32508	# 124
	jal		x0, fle_cont.32507	# 124
fle.32508:
	fsub	f9, f0, f9	# 124
fle_cont.32507:
	addi	x10, x13, 0	# 433
	add		x13, x10, x8	# 438
	flw		f10, 0(x13)	# 438
	fle		f10, f9, fle.32510	# 125
	addi	x13, x19, 0	# 1118
	addi	x19, x13, 64532	# 1118
	flw		f9, 0(x19)	# 1118
	fmul	f9, f5, f9	# 1118
	fadd	f9, f9, f4	# 1118
	fle		f9, f1, fle.32512	# 124
	jal		x0, fle_cont.32511	# 124
fle.32512:
	fsub	f9, f0, f9	# 124
fle_cont.32511:
	addi	x19, x10, 0	# 453
	add		x13, x19, x13	# 458
	flw		f10, 0(x13)	# 458
	fle		f10, f9, fle.32514	# 125
	feq		f6, f1, feq.32516	# 120
	addi	x13, x0, 1	# 1119
	jal		x0, fle_cont.32509	# 120
feq.32516:
	addi	x13, x0, 0	# 1119
	jal		x0, fle_cont.32509	# 125
fle.32514:
	addi	x13, x0, 0	# 1120
	jal		x0, fle_cont.32509	# 125
fle.32510:
	addi	x13, x0, 0	# 1121
fle_cont.32509:
	beq		x13, x11, beq.32518	# 1116
	addi	x7, x8, 0	# 1123
	addi	x7, x7, 64336	# 1123
	fsw		f5, 0(x7)	# 1123
	addi	x7, x0, 2	# 1123
	jal		x0, beq_cont.32479	# 1116
beq.32518:
	addi	x13, x0, 4	# 1124
	mul		x13, x30, x13	# 1124
	add		x13, x15, x13	# 1124
	flw		f5, 0(x13)	# 1124
	fsub	f4, f5, f4	# 1124
	mul		x7, x30, x7	# 1124
	add		x7, x15, x7	# 1124
	flw		f5, 0(x7)	# 1124
	fmul	f4, f4, f5	# 1124
	fmul	f6, f4, f8	# 1126
	fadd	f2, f6, f2	# 1126
	fle		f2, f1, fle.32520	# 124
	jal		x0, fle_cont.32519	# 124
fle.32520:
	fsub	f2, f0, f2	# 124
fle_cont.32519:
	addi	x7, x10, 0	# 433
	add		x10, x7, x8	# 438
	flw		f6, 0(x10)	# 438
	fle		f6, f2, fle.32522	# 125
	fmul	f2, f4, f7	# 1127
	fadd	f2, f2, f3	# 1127
	fle		f2, f1, fle.32524	# 124
	jal		x0, fle_cont.32523	# 124
fle.32524:
	fsub	f2, f0, f2	# 124
fle_cont.32523:
	addi	x10, x18, 0	# 448
	add		x7, x7, x10	# 448
	flw		f3, 0(x7)	# 448
	fle		f3, f2, fle.32526	# 125
	feq		f5, f1, feq.32528	# 120
	addi	x7, x0, 1	# 1128
	jal		x0, fle_cont.32521	# 120
feq.32528:
	addi	x7, x0, 0	# 1128
	jal		x0, fle_cont.32521	# 125
fle.32526:
	addi	x7, x0, 0	# 1129
	jal		x0, fle_cont.32521	# 125
fle.32522:
	addi	x7, x0, 0	# 1130
fle_cont.32521:
	beq		x7, x11, beq.32530	# 1125
	addi	x7, x8, 0	# 1132
	addi	x7, x7, 64336	# 1132
	fsw		f4, 0(x7)	# 1132
	addi	x7, x0, 3	# 1132
	jal		x0, beq_cont.32479	# 1125
beq.32530:
	addi	x7, x0, 0	# 1134
beq_cont.32479:
	addi	x8, x14, 0	# 1431
	addi	x10, x8, 64336	# 1431
	flw		f1, 0(x10)	# 1431
	beq		x7, x11, beq.32532	# 1432
	fle		f17, f1, fle.32534	# 125
	addi	x7, x0, 1	# 125
	jal		x0, beq_cont.32531	# 125
fle.32534:
	addi	x7, x0, 0	# 125
	jal		x0, beq_cont.32531	# 1432
beq.32532:
	addi	x7, x0, 0	# 1432
beq_cont.32531:
	beq		x7, x11, beq.32535	# 1432
	fadd	f1, f1, f16	# 1435
	addi	x7, x8, 0	# 1436
	addi	x8, x7, 64108	# 1436
	flw		f2, 0(x8)	# 1436
	fmul	f2, f2, f1	# 1436
	addi	x7, x7, 64348	# 1436
	flw		f3, 0(x7)	# 1436
	fadd	f2, f2, f3	# 1436
	addi	x7, x16, 0	# 1437
	addi	x8, x7, 64108	# 1437
	flw		f3, 0(x8)	# 1437
	fmul	f3, f3, f1	# 1437
	addi	x7, x7, 64348	# 1437
	flw		f4, 0(x7)	# 1437
	fadd	f3, f3, f4	# 1437
	addi	x7, x17, 0	# 1438
	addi	x8, x7, 64108	# 1438
	flw		f4, 0(x8)	# 1438
	fmul	f1, f4, f1	# 1438
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
	beq		x4, x5, beq.32536	# 1439
	addi	x4, x0, 1	# 1440
	jalr	x0, x1, 0	# 1440
beq.32536:
	lw		x4, -12(x2)	# 1442
	lw		x5, -8(x2)	# 1442
	add		x4, x4, x5	# 1442
	lw		x5, 0(x2)	# 1442
	lw		x29, -4(x2)	# 1442
	lw		x31, 0(x29)	# 1442
	jalr	x0, x31, 0	# 1442
beq.32535:
	addi	x6, x9, 0	# 1448
	addi	x6, x6, 63844	# 1448
	lw		x6, 0(x6)	# 1448
	lw		x6, 24(x6)	# 415
	beq		x6, x11, beq.32537	# 1448
	add		x4, x4, x12	# 1449
	lw		x31, 0(x29)	# 1449
	jalr	x0, x31, 0	# 1449
beq.32537:
	addi	x4, x0, 0	# 1451
	jalr	x0, x1, 0	# 1451
beq.32478:
	addi	x4, x0, 0	# 1427
	jalr	x0, x1, 0	# 1427
shadow_check_one_or_group.2797.17920:
	lw		x6, 16(x29)	# 1456
	lw		x7, 12(x29)	# 1456
	lw		x8, 8(x29)	# 1456
	lw		x9, 4(x29)	# 1456
	mul		x10, x30, x4	# 1456
	add		x10, x5, x10	# 1456
	lw		x10, 0(x10)	# 1456
	beq		x10, x7, beq.32538	# 1457
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
	beq		x4, x5, beq.32539	# 1462
	addi	x4, x0, 1	# 1463
	jalr	x0, x1, 0	# 1463
beq.32539:
	lw		x4, -12(x2)	# 1465
	lw		x5, -8(x2)	# 1465
	add		x4, x4, x5	# 1465
	lw		x5, 0(x2)	# 1465
	lw		x29, -4(x2)	# 1465
	lw		x31, 0(x29)	# 1465
	jalr	x0, x31, 0	# 1465
beq.32538:
	addi	x4, x0, 0	# 1458
	jalr	x0, x1, 0	# 1458
shadow_check_one_or_matrix.2800.17923:
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
	add		x15, x13, x14	# 1472
	lw		x15, 0(x15)	# 1472
	beq		x15, x9, beq.32540	# 1473
	addi	x9, x0, 99	# 1477
	sw		x13, 0(x2)	# 1477
	sw		x6, -4(x2)	# 1477
	sw		x5, -8(x2)	# 1477
	sw		x29, -12(x2)	# 1477
	sw		x12, -16(x2)	# 1477
	sw		x4, -20(x2)	# 1477
	sw		x11, -24(x2)	# 1477
	beq		x15, x9, beq.32542	# 1477
	mul		x9, x30, x15	# 1168
	addi	x15, x9, 63844	# 1168
	lw		x15, 0(x15)	# 1168
	addi	x16, x14, 64348	# 1169
	flw		f2, 0(x16)	# 1169
	lw		x16, 20(x15)	# 473
	add		x17, x16, x14	# 478
	flw		f3, 0(x17)	# 478
	fsub	f2, f2, f3	# 1169
	mul		x17, x30, x12	# 1170
	addi	x18, x17, 64348	# 1170
	flw		f3, 0(x18)	# 1170
	add		x18, x16, x17	# 488
	flw		f4, 0(x18)	# 488
	fsub	f3, f3, f4	# 1170
	mul		x18, x30, x8	# 1171
	addi	x19, x18, 64348	# 1171
	flw		f4, 0(x19)	# 1171
	add		x16, x16, x18	# 498
	flw		f5, 0(x16)	# 498
	fsub	f4, f4, f5	# 1171
	addi	x9, x9, 64544	# 1173
	lw		x9, 0(x9)	# 1173
	lw		x16, 4(x15)	# 395
	beq		x16, x12, beq.32544	# 1175
	beq		x16, x8, beq.32546	# 1177
	addi	x7, x14, 0	# 1149
	add		x8, x9, x7	# 1149
	flw		f5, 0(x8)	# 1149
	feq		f5, f1, feq.32548	# 120
	addi	x8, x17, 0	# 1153
	add		x17, x9, x8	# 1153
	flw		f6, 0(x17)	# 1153
	fmul	f6, f6, f2	# 1153
	addi	x17, x18, 0	# 1153
	add		x18, x9, x17	# 1153
	flw		f7, 0(x18)	# 1153
	fmul	f7, f7, f3	# 1153
	fadd	f6, f6, f7	# 1153
	mul		x18, x30, x10	# 1153
	add		x18, x9, x18	# 1153
	flw		f7, 0(x18)	# 1153
	fmul	f7, f7, f4	# 1153
	fadd	f6, f6, f7	# 1153
	fmul	f7, f2, f2	# 127
	lw		x18, 16(x15)	# 433
	add		x19, x18, x7	# 438
	flw		f8, 0(x19)	# 438
	fmul	f7, f7, f8	# 1009
	fmul	f8, f3, f3	# 127
	add		x19, x18, x8	# 448
	flw		f9, 0(x19)	# 448
	fmul	f8, f8, f9	# 1009
	fadd	f7, f7, f8	# 1009
	fmul	f8, f4, f4	# 127
	add		x18, x18, x17	# 458
	flw		f9, 0(x18)	# 458
	fmul	f8, f8, f9	# 1009
	fadd	f7, f7, f8	# 1009
	lw		x18, 12(x15)	# 424
	beq		x18, x11, beq.32550	# 1011
	fmul	f8, f3, f4	# 1015
	lw		x18, 36(x15)	# 553
	addi	x19, x7, 0	# 558
	add		x19, x18, x19	# 558
	flw		f9, 0(x19)	# 558
	fmul	f8, f8, f9	# 1015
	fadd	f7, f7, f8	# 1014
	fmul	f4, f4, f2	# 1016
	add		x8, x18, x8	# 568
	flw		f8, 0(x8)	# 568
	fmul	f4, f4, f8	# 1016
	fadd	f4, f7, f4	# 1014
	fmul	f2, f2, f3	# 1017
	addi	x8, x18, 0	# 573
	add		x8, x8, x17	# 578
	flw		f3, 0(x8)	# 578
	fmul	f2, f2, f3	# 1017
	fadd	f2, f4, f2	# 1014
	jal		x0, beq_cont.32549	# 1011
beq.32550:
	fadd	f2, f0, f7	# 1012
beq_cont.32549:
	addi	x8, x16, 0	# 395
	beq		x8, x10, beq.32552	# 1155
	jal		x0, beq_cont.32551	# 1155
beq.32552:
	fsub	f2, f2, f30	# 1155
beq_cont.32551:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1156
	fsub	f2, f3, f2	# 1156
	fle		f2, f1, fle.32554	# 121
	lw		x8, 24(x15)	# 415
	beq		x8, x11, beq.32556	# 1158
	fsqrt	f1, f2	# 1159
	fadd	f1, f6, f1	# 1159
	addi	x8, x0, 4	# 1159
	mul		x8, x30, x8	# 1159
	add		x8, x9, x8	# 1159
	flw		f2, 0(x8)	# 1159
	fmul	f1, f1, f2	# 1159
	addi	x7, x7, 64336	# 1159
	fsw		f1, 0(x7)	# 1159
	jal		x0, beq_cont.32555	# 1158
beq.32556:
	fsqrt	f1, f2	# 1161
	fsub	f1, f6, f1	# 1161
	addi	x8, x0, 4	# 1161
	mul		x8, x30, x8	# 1161
	add		x8, x9, x8	# 1161
	flw		f2, 0(x8)	# 1161
	fmul	f1, f1, f2	# 1161
	addi	x7, x7, 64336	# 1161
	fsw		f1, 0(x7)	# 1161
beq_cont.32555:
	addi	x7, x0, 1	# 1162
	jal		x0, beq_cont.32543	# 121
fle.32554:
	addi	x7, x0, 0	# 1163
	jal		x0, beq_cont.32543	# 120
feq.32548:
	addi	x7, x0, 0	# 1151
	jal		x0, beq_cont.32543	# 1177
beq.32546:
	addi	x7, x14, 0	# 1139
	add		x8, x9, x7	# 1139
	flw		f5, 0(x8)	# 1139
	fle		f1, f5, fle.32558	# 122
	addi	x8, x17, 0	# 1141
	add		x8, x9, x8	# 1141
	flw		f1, 0(x8)	# 1141
	fmul	f1, f1, f2	# 1141
	addi	x8, x18, 0	# 1141
	add		x8, x9, x8	# 1141
	flw		f2, 0(x8)	# 1141
	fmul	f2, f2, f3	# 1141
	fadd	f1, f1, f2	# 1141
	mul		x8, x30, x10	# 1141
	add		x8, x9, x8	# 1141
	flw		f2, 0(x8)	# 1141
	fmul	f2, f2, f4	# 1141
	fadd	f1, f1, f2	# 1141
	addi	x7, x7, 64336	# 1140
	fsw		f1, 0(x7)	# 1140
	addi	x7, x0, 1	# 1142
	jal		x0, beq_cont.32543	# 122
fle.32558:
	addi	x7, x0, 0	# 1143
	jal		x0, beq_cont.32543	# 1175
beq.32544:
	addi	x8, x14, 0	# 1106
	add		x16, x9, x8	# 1106
	flw		f5, 0(x16)	# 1106
	fsub	f5, f5, f2	# 1106
	addi	x16, x17, 0	# 1106
	add		x17, x9, x16	# 1106
	flw		f6, 0(x17)	# 1106
	fmul	f5, f5, f6	# 1106
	addi	x17, x16, 64532	# 1108
	flw		f7, 0(x17)	# 1108
	fmul	f8, f5, f7	# 1108
	fadd	f8, f8, f3	# 1108
	fle		f8, f1, fle.32560	# 124
	jal		x0, fle_cont.32559	# 124
fle.32560:
	fsub	f8, f0, f8	# 124
fle_cont.32559:
	lw		x15, 16(x15)	# 443
	add		x17, x15, x16	# 448
	flw		f9, 0(x17)	# 448
	fle		f9, f8, fle.32562	# 125
	addi	x17, x18, 0	# 1109
	addi	x19, x17, 64532	# 1109
	flw		f8, 0(x19)	# 1109
	fmul	f8, f5, f8	# 1109
	fadd	f8, f8, f4	# 1109
	fle		f8, f1, fle.32564	# 124
	jal		x0, fle_cont.32563	# 124
fle.32564:
	fsub	f8, f0, f8	# 124
fle_cont.32563:
	addi	x19, x15, 0	# 453
	add		x17, x19, x17	# 458
	flw		f9, 0(x17)	# 458
	fle		f9, f8, fle.32566	# 125
	feq		f6, f1, feq.32568	# 120
	addi	x17, x0, 1	# 1110
	jal		x0, fle_cont.32561	# 120
feq.32568:
	addi	x17, x0, 0	# 1110
	jal		x0, fle_cont.32561	# 125
fle.32566:
	addi	x17, x0, 0	# 1111
	jal		x0, fle_cont.32561	# 125
fle.32562:
	addi	x17, x0, 0	# 1112
fle_cont.32561:
	beq		x17, x11, beq.32570	# 1107
	addi	x7, x8, 0	# 1114
	addi	x7, x7, 64336	# 1114
	fsw		f5, 0(x7)	# 1114
	addi	x7, x0, 1	# 1114
	jal		x0, beq_cont.32543	# 1107
beq.32570:
	addi	x17, x18, 0	# 1115
	add		x18, x9, x17	# 1115
	flw		f5, 0(x18)	# 1115
	fsub	f5, f5, f3	# 1115
	mul		x10, x30, x10	# 1115
	add		x10, x9, x10	# 1115
	flw		f6, 0(x10)	# 1115
	fmul	f5, f5, f6	# 1115
	addi	x10, x8, 64532	# 1117
	flw		f8, 0(x10)	# 1117
	fmul	f9, f5, f8	# 1117
	fadd	f9, f9, f2	# 1117
	fle		f9, f1, fle.32572	# 124
	jal		x0, fle_cont.32571	# 124
fle.32572:
	fsub	f9, f0, f9	# 124
fle_cont.32571:
	addi	x10, x15, 0	# 433
	add		x15, x10, x8	# 438
	flw		f10, 0(x15)	# 438
	fle		f10, f9, fle.32574	# 125
	addi	x15, x17, 0	# 1118
	addi	x17, x15, 64532	# 1118
	flw		f9, 0(x17)	# 1118
	fmul	f9, f5, f9	# 1118
	fadd	f9, f9, f4	# 1118
	fle		f9, f1, fle.32576	# 124
	jal		x0, fle_cont.32575	# 124
fle.32576:
	fsub	f9, f0, f9	# 124
fle_cont.32575:
	addi	x17, x10, 0	# 453
	add		x15, x17, x15	# 458
	flw		f10, 0(x15)	# 458
	fle		f10, f9, fle.32578	# 125
	feq		f6, f1, feq.32580	# 120
	addi	x15, x0, 1	# 1119
	jal		x0, fle_cont.32573	# 120
feq.32580:
	addi	x15, x0, 0	# 1119
	jal		x0, fle_cont.32573	# 125
fle.32578:
	addi	x15, x0, 0	# 1120
	jal		x0, fle_cont.32573	# 125
fle.32574:
	addi	x15, x0, 0	# 1121
fle_cont.32573:
	beq		x15, x11, beq.32582	# 1116
	addi	x7, x8, 0	# 1123
	addi	x7, x7, 64336	# 1123
	fsw		f5, 0(x7)	# 1123
	addi	x7, x0, 2	# 1123
	jal		x0, beq_cont.32543	# 1116
beq.32582:
	addi	x15, x0, 4	# 1124
	mul		x15, x30, x15	# 1124
	add		x15, x9, x15	# 1124
	flw		f5, 0(x15)	# 1124
	fsub	f4, f5, f4	# 1124
	mul		x7, x30, x7	# 1124
	add		x7, x9, x7	# 1124
	flw		f5, 0(x7)	# 1124
	fmul	f4, f4, f5	# 1124
	fmul	f6, f4, f8	# 1126
	fadd	f2, f6, f2	# 1126
	fle		f2, f1, fle.32584	# 124
	jal		x0, fle_cont.32583	# 124
fle.32584:
	fsub	f2, f0, f2	# 124
fle_cont.32583:
	addi	x7, x10, 0	# 433
	add		x9, x7, x8	# 438
	flw		f6, 0(x9)	# 438
	fle		f6, f2, fle.32586	# 125
	fmul	f2, f4, f7	# 1127
	fadd	f2, f2, f3	# 1127
	fle		f2, f1, fle.32588	# 124
	jal		x0, fle_cont.32587	# 124
fle.32588:
	fsub	f2, f0, f2	# 124
fle_cont.32587:
	addi	x9, x16, 0	# 448
	add		x7, x7, x9	# 448
	flw		f3, 0(x7)	# 448
	fle		f3, f2, fle.32590	# 125
	feq		f5, f1, feq.32592	# 120
	addi	x7, x0, 1	# 1128
	jal		x0, fle_cont.32585	# 120
feq.32592:
	addi	x7, x0, 0	# 1128
	jal		x0, fle_cont.32585	# 125
fle.32590:
	addi	x7, x0, 0	# 1129
	jal		x0, fle_cont.32585	# 125
fle.32586:
	addi	x7, x0, 0	# 1130
fle_cont.32585:
	beq		x7, x11, beq.32594	# 1125
	addi	x7, x8, 0	# 1132
	addi	x7, x7, 64336	# 1132
	fsw		f4, 0(x7)	# 1132
	addi	x7, x0, 3	# 1132
	jal		x0, beq_cont.32543	# 1125
beq.32594:
	addi	x7, x0, 0	# 1134
beq_cont.32543:
	beq		x7, x11, beq.32596	# 1483
	addi	x7, x14, 0	# 1484
	addi	x7, x7, 64336	# 1484
	flw		f1, 0(x7)	# 1484
	fle		f18, f1, fle.32598	# 125
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
	beq		x4, x5, beq.32600	# 1485
	addi	x4, x0, 1	# 1486
	jal		x0, beq_cont.32541	# 1485
beq.32600:
	addi	x4, x0, 0	# 1487
	jal		x0, beq_cont.32541	# 125
fle.32598:
	addi	x4, x0, 0	# 1488
	jal		x0, beq_cont.32541	# 1483
beq.32596:
	addi	x4, x0, 0	# 1489
	jal		x0, beq_cont.32541	# 1477
beq.32542:
	addi	x4, x0, 1	# 1478
beq_cont.32541:
	lw		x5, -24(x2)	# 1476
	beq		x4, x5, beq.32601	# 1476
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
	beq		x4, x5, beq.32602	# 1491
	addi	x4, x0, 1	# 1492
	jalr	x0, x1, 0	# 1492
beq.32602:
	lw		x4, -20(x2)	# 1494
	lw		x5, -16(x2)	# 1494
	add		x4, x4, x5	# 1494
	lw		x5, -8(x2)	# 1494
	lw		x29, -12(x2)	# 1494
	lw		x31, 0(x29)	# 1494
	jalr	x0, x31, 0	# 1494
beq.32601:
	lw		x4, -20(x2)	# 1496
	lw		x5, -16(x2)	# 1496
	add		x4, x4, x5	# 1496
	lw		x5, -8(x2)	# 1496
	lw		x29, -12(x2)	# 1496
	lw		x31, 0(x29)	# 1496
	jalr	x0, x31, 0	# 1496
beq.32540:
	addi	x4, x0, 0	# 1474
	jalr	x0, x1, 0	# 1474
solve_each_element.2803.17926:
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
	beq		x13, x9, beq.32603	# 1508
	mul		x9, x30, x13	# 1074
	addi	x14, x9, 63844	# 1074
	lw		x14, 0(x14)	# 1074
	mul		x15, x30, x11	# 1076
	addi	x16, x15, 64432	# 1076
	flw		f2, 0(x16)	# 1076
	lw		x16, 20(x14)	# 473
	add		x17, x16, x15	# 478
	flw		f3, 0(x17)	# 478
	fsub	f2, f2, f3	# 1076
	mul		x17, x30, x12	# 1077
	addi	x18, x17, 64432	# 1077
	flw		f3, 0(x18)	# 1077
	add		x18, x16, x17	# 488
	flw		f4, 0(x18)	# 488
	fsub	f3, f3, f4	# 1077
	mul		x18, x30, x8	# 1078
	addi	x19, x18, 64432	# 1078
	flw		f4, 0(x19)	# 1078
	add		x16, x16, x18	# 498
	flw		f5, 0(x16)	# 498
	fsub	f4, f4, f5	# 1078
	lw		x16, 4(x14)	# 395
	beq		x16, x12, beq.32605	# 1081
	beq		x16, x8, beq.32607	# 1082
	addi	x8, x15, 0	# 1048
	add		x19, x6, x8	# 1048
	flw		f5, 0(x19)	# 1048
	addi	x19, x17, 0	# 1048
	add		x20, x6, x19	# 1048
	flw		f6, 0(x20)	# 1048
	addi	x20, x18, 0	# 1048
	add		x21, x6, x20	# 1048
	flw		f7, 0(x21)	# 1048
	fmul	f8, f5, f5	# 127
	lw		x21, 16(x14)	# 433
	add		x22, x21, x8	# 438
	flw		f9, 0(x22)	# 438
	fmul	f8, f8, f9	# 1009
	fmul	f10, f6, f6	# 127
	add		x22, x21, x19	# 448
	flw		f11, 0(x22)	# 448
	fmul	f10, f10, f11	# 1009
	fadd	f8, f8, f10	# 1009
	fmul	f10, f7, f7	# 127
	add		x21, x21, x20	# 458
	flw		f12, 0(x21)	# 458
	fmul	f10, f10, f12	# 1009
	fadd	f8, f8, f10	# 1009
	lw		x21, 12(x14)	# 424
	beq		x21, x11, beq_cont.32608	# 1011
	fmul	f10, f6, f7	# 1015
	lw		x22, 36(x14)	# 553
	addi	x23, x8, 0	# 558
	add		x23, x22, x23	# 558
	flw		f13, 0(x23)	# 558
	fmul	f10, f10, f13	# 1015
	fadd	f8, f8, f10	# 1014
	fmul	f10, f7, f5	# 1016
	addi	x23, x19, 0	# 568
	add		x23, x22, x23	# 568
	flw		f13, 0(x23)	# 568
	fmul	f10, f10, f13	# 1016
	fadd	f8, f8, f10	# 1014
	fmul	f10, f5, f6	# 1017
	addi	x23, x20, 0	# 578
	add		x22, x22, x23	# 578
	flw		f13, 0(x22)	# 578
	fmul	f10, f10, f13	# 1017
	fadd	f8, f8, f10	# 1014
	jal		x0, beq_cont.32608	# 1011
beq_cont.32608:
	feq		f8, f1, feq.32611	# 120
	fmul	f10, f5, f2	# 1023
	fmul	f10, f10, f9	# 1023
	fmul	f13, f6, f3	# 1024
	fmul	f13, f13, f11	# 1024
	fadd	f10, f10, f13	# 1023
	fmul	f13, f7, f4	# 1025
	fmul	f13, f13, f12	# 1025
	fadd	f10, f10, f13	# 1023
	beq		x21, x11, beq.32613	# 1027
	fmul	f13, f7, f3	# 1031
	fmul	f14, f6, f4	# 1031
	fadd	f13, f13, f14	# 1031
	lw		x22, 36(x14)	# 553
	addi	x23, x8, 0	# 558
	add		x23, x22, x23	# 558
	flw		f14, 0(x23)	# 558
	fmul	f13, f13, f14	# 1031
	fmul	f14, f5, f4	# 1032
	fmul	f7, f7, f2	# 1032
	fadd	f7, f14, f7	# 1032
	addi	x23, x19, 0	# 568
	add		x23, x22, x23	# 568
	flw		f14, 0(x23)	# 568
	fmul	f7, f7, f14	# 1032
	fadd	f7, f13, f7	# 1031
	fmul	f5, f5, f3	# 1033
	fmul	f6, f6, f2	# 1033
	fadd	f5, f5, f6	# 1033
	addi	x23, x20, 0	# 578
	add		x22, x22, x23	# 578
	flw		f6, 0(x22)	# 578
	fmul	f5, f5, f6	# 1033
	fadd	f5, f7, f5	# 1031
	fmul	f5, f5, f26	# 126
	fadd	f5, f10, f5	# 1030
	jal		x0, beq_cont.32612	# 1027
beq.32613:
	fadd	f5, f0, f10	# 1028
beq_cont.32612:
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f9	# 1009
	fmul	f7, f3, f3	# 127
	fmul	f7, f7, f11	# 1009
	fadd	f6, f6, f7	# 1009
	fmul	f7, f4, f4	# 127
	fmul	f7, f7, f12	# 1009
	fadd	f6, f6, f7	# 1009
	beq		x21, x11, beq.32615	# 1011
	fmul	f7, f3, f4	# 1015
	lw		x21, 36(x14)	# 553
	addi	x22, x8, 0	# 558
	add		x22, x21, x22	# 558
	flw		f9, 0(x22)	# 558
	fmul	f7, f7, f9	# 1015
	fadd	f6, f6, f7	# 1014
	fmul	f4, f4, f2	# 1016
	add		x19, x21, x19	# 568
	flw		f7, 0(x19)	# 568
	fmul	f4, f4, f7	# 1016
	fadd	f4, f6, f4	# 1014
	fmul	f2, f2, f3	# 1017
	addi	x19, x21, 0	# 573
	add		x19, x19, x20	# 578
	flw		f3, 0(x19)	# 578
	fmul	f2, f2, f3	# 1017
	fadd	f2, f4, f2	# 1014
	jal		x0, beq_cont.32614	# 1011
beq.32615:
	fadd	f2, f0, f6	# 1012
beq_cont.32614:
	beq		x16, x10, beq.32617	# 1058
	jal		x0, beq_cont.32616	# 1058
beq.32617:
	fsub	f2, f2, f30	# 1058
beq_cont.32616:
	fmul	f3, f5, f5	# 127
	fmul	f2, f8, f2	# 1060
	fsub	f2, f3, f2	# 1060
	fle		f2, f1, fle.32619	# 121
	fsqrt	f2, f2	# 1063
	lw		x10, 24(x14)	# 415
	beq		x10, x11, beq.32621	# 1064
	jal		x0, beq_cont.32620	# 1064
beq.32621:
	fsub	f2, f0, f2	# 123
beq_cont.32620:
	fsub	f2, f2, f5	# 1065
	fdiv	f2, f2, f8	# 1065
	addi	x8, x8, 64336	# 1065
	fsw		f2, 0(x8)	# 1065
	addi	x8, x0, 1	# 1065
	jal		x0, beq_cont.32604	# 121
fle.32619:
	addi	x8, x0, 0	# 1068
	jal		x0, beq_cont.32604	# 120
feq.32611:
	addi	x8, x0, 0	# 1051
	jal		x0, beq_cont.32604	# 1082
beq.32607:
	lw		x8, 16(x14)	# 463
	addi	x10, x15, 0	# 334
	add		x14, x6, x10	# 334
	flw		f5, 0(x14)	# 334
	add		x14, x8, x10	# 334
	flw		f6, 0(x14)	# 334
	fmul	f5, f5, f6	# 334
	addi	x14, x17, 0	# 334
	add		x16, x6, x14	# 334
	flw		f7, 0(x16)	# 334
	add		x14, x8, x14	# 334
	flw		f8, 0(x14)	# 334
	fmul	f7, f7, f8	# 334
	fadd	f5, f5, f7	# 334
	addi	x14, x18, 0	# 334
	add		x16, x6, x14	# 334
	flw		f7, 0(x16)	# 334
	add		x8, x8, x14	# 334
	flw		f9, 0(x8)	# 334
	fmul	f7, f7, f9	# 334
	fadd	f5, f5, f7	# 334
	fle		f5, f1, fle.32623	# 121
	fmul	f2, f6, f2	# 339
	fmul	f3, f8, f3	# 339
	fadd	f2, f2, f3	# 339
	fmul	f3, f9, f4	# 339
	fadd	f2, f2, f3	# 339
	fsub	f2, f0, f2	# 123
	fdiv	f2, f2, f5	# 999
	addi	x8, x10, 0	# 999
	addi	x8, x8, 64336	# 999
	fsw		f2, 0(x8)	# 999
	addi	x8, x0, 1	# 1000
	jal		x0, beq_cont.32604	# 121
fle.32623:
	addi	x8, x0, 0	# 1001
	jal		x0, beq_cont.32604	# 1081
beq.32605:
	addi	x8, x15, 0	# 970
	add		x10, x6, x8	# 970
	flw		f5, 0(x10)	# 970
	feq		f5, f1, feq.32625	# 120
	lw		x10, 16(x14)	# 463
	lw		x16, 24(x14)	# 415
	fle		f1, f5, fle.32627	# 122
	addi	x19, x0, 1	# 122
	jal		x0, fle_cont.32626	# 122
fle.32627:
	addi	x19, x0, 0	# 122
fle_cont.32626:
	beq		x16, x11, beq.32629	# 246
	fle		f1, f5, fle.32631	# 122
	addi	x16, x0, 0	# 246
	jal		x0, beq_cont.32628	# 122
fle.32631:
	addi	x16, x0, 1	# 246
	jal		x0, beq_cont.32628	# 246
beq.32629:
	addi	x16, x19, 0	# 246
beq_cont.32628:
	addi	x19, x8, 0	# 972
	add		x20, x10, x19	# 972
	flw		f6, 0(x20)	# 972
	beq		x16, x11, beq.32633	# 261
	jal		x0, beq_cont.32632	# 261
beq.32633:
	fsub	f6, f0, f6	# 123
beq_cont.32632:
	fsub	f6, f6, f2	# 974
	fdiv	f5, f6, f5	# 974
	addi	x16, x17, 0	# 975
	add		x20, x6, x16	# 975
	flw		f6, 0(x20)	# 975
	fmul	f6, f5, f6	# 975
	fadd	f6, f6, f3	# 975
	fle		f6, f1, fle.32635	# 124
	jal		x0, fle_cont.32634	# 124
fle.32635:
	fsub	f6, f0, f6	# 124
fle_cont.32634:
	add		x16, x10, x16	# 975
	flw		f7, 0(x16)	# 975
	fle		f7, f6, fle.32637	# 125
	addi	x16, x18, 0	# 976
	add		x20, x6, x16	# 976
	flw		f6, 0(x20)	# 976
	fmul	f6, f5, f6	# 976
	fadd	f6, f6, f4	# 976
	fle		f6, f1, fle.32639	# 124
	jal		x0, fle_cont.32638	# 124
fle.32639:
	fsub	f6, f0, f6	# 124
fle_cont.32638:
	add		x10, x10, x16	# 976
	flw		f7, 0(x10)	# 976
	fle		f7, f6, fle.32641	# 125
	addi	x10, x19, 0	# 977
	addi	x10, x10, 64336	# 977
	fsw		f5, 0(x10)	# 977
	addi	x10, x0, 1	# 977
	jal		x0, feq_cont.32624	# 125
fle.32641:
	addi	x10, x0, 0	# 978
	jal		x0, feq_cont.32624	# 125
fle.32637:
	addi	x10, x0, 0	# 979
	jal		x0, feq_cont.32624	# 120
feq.32625:
	addi	x10, x0, 0	# 970
feq_cont.32624:
	beq		x10, x11, beq.32643	# 985
	addi	x8, x0, 1	# 985
	jal		x0, beq_cont.32604	# 985
beq.32643:
	addi	x10, x17, 0	# 970
	add		x16, x6, x10	# 970
	flw		f5, 0(x16)	# 970
	feq		f5, f1, feq.32645	# 120
	lw		x16, 16(x14)	# 463
	lw		x19, 24(x14)	# 415
	fle		f1, f5, fle.32647	# 122
	addi	x20, x0, 1	# 122
	jal		x0, fle_cont.32646	# 122
fle.32647:
	addi	x20, x0, 0	# 122
fle_cont.32646:
	beq		x19, x11, beq.32649	# 246
	fle		f1, f5, fle.32651	# 122
	addi	x19, x0, 0	# 246
	jal		x0, beq_cont.32648	# 122
fle.32651:
	addi	x19, x0, 1	# 246
	jal		x0, beq_cont.32648	# 246
beq.32649:
	addi	x19, x20, 0	# 246
beq_cont.32648:
	addi	x20, x10, 0	# 972
	add		x20, x16, x20	# 972
	flw		f6, 0(x20)	# 972
	beq		x19, x11, beq.32653	# 261
	jal		x0, beq_cont.32652	# 261
beq.32653:
	fsub	f6, f0, f6	# 123
beq_cont.32652:
	fsub	f6, f6, f3	# 974
	fdiv	f5, f6, f5	# 974
	addi	x19, x18, 0	# 975
	add		x20, x6, x19	# 975
	flw		f6, 0(x20)	# 975
	fmul	f6, f5, f6	# 975
	fadd	f6, f6, f4	# 975
	fle		f6, f1, fle.32655	# 124
	jal		x0, fle_cont.32654	# 124
fle.32655:
	fsub	f6, f0, f6	# 124
fle_cont.32654:
	add		x19, x16, x19	# 975
	flw		f7, 0(x19)	# 975
	fle		f7, f6, fle.32657	# 125
	addi	x19, x8, 0	# 976
	add		x20, x6, x19	# 976
	flw		f6, 0(x20)	# 976
	fmul	f6, f5, f6	# 976
	fadd	f6, f6, f2	# 976
	fle		f6, f1, fle.32659	# 124
	jal		x0, fle_cont.32658	# 124
fle.32659:
	fsub	f6, f0, f6	# 124
fle_cont.32658:
	add		x16, x16, x19	# 976
	flw		f7, 0(x16)	# 976
	fle		f7, f6, fle.32661	# 125
	addi	x16, x19, 0	# 977
	addi	x16, x16, 64336	# 977
	fsw		f5, 0(x16)	# 977
	addi	x16, x0, 1	# 977
	jal		x0, feq_cont.32644	# 125
fle.32661:
	addi	x16, x0, 0	# 978
	jal		x0, feq_cont.32644	# 125
fle.32657:
	addi	x16, x0, 0	# 979
	jal		x0, feq_cont.32644	# 120
feq.32645:
	addi	x16, x0, 0	# 970
feq_cont.32644:
	beq		x16, x11, beq.32663	# 986
	addi	x8, x0, 2	# 986
	jal		x0, beq_cont.32604	# 986
beq.32663:
	addi	x16, x18, 0	# 970
	add		x19, x6, x16	# 970
	flw		f5, 0(x19)	# 970
	feq		f5, f1, feq.32665	# 120
	lw		x19, 16(x14)	# 463
	lw		x14, 24(x14)	# 415
	fle		f1, f5, fle.32667	# 122
	addi	x20, x0, 1	# 122
	jal		x0, fle_cont.32666	# 122
fle.32667:
	addi	x20, x0, 0	# 122
fle_cont.32666:
	beq		x14, x11, beq.32669	# 246
	fle		f1, f5, fle.32671	# 122
	addi	x14, x0, 0	# 246
	jal		x0, beq_cont.32668	# 122
fle.32671:
	addi	x14, x0, 1	# 246
	jal		x0, beq_cont.32668	# 246
beq.32669:
	addi	x14, x20, 0	# 246
beq_cont.32668:
	add		x16, x19, x16	# 972
	flw		f6, 0(x16)	# 972
	beq		x14, x11, beq.32673	# 261
	jal		x0, beq_cont.32672	# 261
beq.32673:
	fsub	f6, f0, f6	# 123
beq_cont.32672:
	fsub	f4, f6, f4	# 974
	fdiv	f4, f4, f5	# 974
	add		x14, x6, x8	# 975
	flw		f5, 0(x14)	# 975
	fmul	f5, f4, f5	# 975
	fadd	f2, f5, f2	# 975
	fle		f2, f1, fle.32675	# 124
	jal		x0, fle_cont.32674	# 124
fle.32675:
	fsub	f2, f0, f2	# 124
fle_cont.32674:
	add		x14, x19, x8	# 975
	flw		f5, 0(x14)	# 975
	fle		f5, f2, fle.32677	# 125
	add		x14, x6, x10	# 976
	flw		f2, 0(x14)	# 976
	fmul	f2, f4, f2	# 976
	fadd	f2, f2, f3	# 976
	fle		f2, f1, fle.32679	# 124
	jal		x0, fle_cont.32678	# 124
fle.32679:
	fsub	f2, f0, f2	# 124
fle_cont.32678:
	add		x10, x19, x10	# 976
	flw		f3, 0(x10)	# 976
	fle		f3, f2, fle.32681	# 125
	addi	x8, x8, 64336	# 977
	fsw		f4, 0(x8)	# 977
	addi	x8, x0, 1	# 977
	jal		x0, feq_cont.32664	# 125
fle.32681:
	addi	x8, x0, 0	# 978
	jal		x0, feq_cont.32664	# 125
fle.32677:
	addi	x8, x0, 0	# 979
	jal		x0, feq_cont.32664	# 120
feq.32665:
	addi	x8, x0, 0	# 970
feq_cont.32664:
	beq		x8, x11, beq.32683	# 987
	addi	x8, x0, 3	# 987
	jal		x0, beq_cont.32604	# 987
beq.32683:
	addi	x8, x0, 0	# 988
beq_cont.32604:
	beq		x8, x11, beq.32684	# 1511
	addi	x9, x15, 0	# 1515
	addi	x10, x9, 64336	# 1515
	flw		f2, 0(x10)	# 1515
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x29, -8(x2)	# 125
	sw		x12, -12(x2)	# 125
	sw		x4, -16(x2)	# 125
	fle		f2, f1, fle_cont.32685	# 125
	addi	x10, x9, 64344	# 1518
	flw		f1, 0(x10)	# 1518
	fle		f1, f2, fle_cont.32685	# 125
	fadd	f1, f2, f16	# 1520
	add		x10, x6, x9	# 1521
	flw		f2, 0(x10)	# 1521
	fmul	f2, f2, f1	# 1521
	addi	x10, x9, 64432	# 1521
	flw		f3, 0(x10)	# 1521
	fadd	f2, f2, f3	# 1521
	addi	x10, x17, 0	# 1522
	add		x14, x6, x10	# 1522
	flw		f3, 0(x14)	# 1522
	fmul	f3, f3, f1	# 1522
	addi	x14, x10, 64432	# 1522
	flw		f4, 0(x14)	# 1522
	fadd	f3, f3, f4	# 1522
	addi	x14, x18, 0	# 1523
	add		x15, x6, x14	# 1523
	flw		f4, 0(x15)	# 1523
	fmul	f4, f4, f1	# 1523
	addi	x15, x14, 64432	# 1523
	flw		f5, 0(x15)	# 1523
	fadd	f4, f4, f5	# 1523
	sw		x8, -20(x2)	# 1524
	sw		x13, -24(x2)	# 1524
	fsw		f4, -28(x2)	# 1524
	sw		x14, -32(x2)	# 1524
	fsw		f3, -36(x2)	# 1524
	sw		x10, -40(x2)	# 1524
	fsw		f2, -44(x2)	# 1524
	fsw		f1, -48(x2)	# 1524
	sw		x9, -52(x2)	# 1524
	sw		x11, -56(x2)	# 1524
	addi	x4, x11, 0	# 1524
	addi	x29, x7, 0	# 1524
	fadd	f1, f0, f2	# 1524
	fadd	f2, f0, f3	# 1524
	fadd	f3, f0, f4	# 1524
	sw		x1, -60(x2)	# 1524
	addi	x2, x2, -64	# 1524
	lw		x31, 0(x29)	# 1524
	jalr	x1, x31, 0	# 1524
	addi	x2, x2, 64	# 1524
	lw		x1, -60(x2)	# 1524
	lw		x5, -56(x2)	# 1524
	beq		x4, x5, fle_cont.32685	# 1524
	lw		x4, -52(x2)	# 1526
	addi	x5, x4, 64344	# 1526
	flw		f1, -48(x2)	# 1526
	fsw		f1, 0(x5)	# 1526
	addi	x5, x4, 64348	# 282
	flw		f1, -44(x2)	# 282
	fsw		f1, 0(x5)	# 282
	lw		x5, -40(x2)	# 283
	addi	x5, x5, 64348	# 283
	flw		f1, -36(x2)	# 283
	fsw		f1, 0(x5)	# 283
	lw		x5, -32(x2)	# 284
	addi	x5, x5, 64348	# 284
	flw		f1, -28(x2)	# 284
	fsw		f1, 0(x5)	# 284
	addi	x5, x4, 64360	# 1528
	lw		x6, -24(x2)	# 1528
	sw		x6, 0(x5)	# 1528
	addi	x4, x4, 64340	# 1529
	lw		x5, -20(x2)	# 1529
	sw		x5, 0(x4)	# 1529
	jal		x0, fle_cont.32685	# 1524
	jal		x0, fle_cont.32685	# 125
	jal		x0, fle_cont.32685	# 125
fle_cont.32685:
	lw		x4, -16(x2)	# 1535
	lw		x5, -12(x2)	# 1535
	add		x4, x4, x5	# 1535
	lw		x5, -4(x2)	# 1535
	lw		x6, 0(x2)	# 1535
	lw		x29, -8(x2)	# 1535
	lw		x31, 0(x29)	# 1535
	jalr	x0, x31, 0	# 1535
beq.32684:
	addi	x7, x9, 0	# 1539
	addi	x7, x7, 63844	# 1539
	lw		x7, 0(x7)	# 1539
	lw		x7, 24(x7)	# 415
	beq		x7, x11, beq.32691	# 1539
	add		x4, x4, x12	# 1540
	lw		x31, 0(x29)	# 1540
	jalr	x0, x31, 0	# 1540
beq.32691:
	jalr	x0, x1, 0	# 1541
beq.32603:
	jalr	x0, x1, 0	# 1508
solve_one_or_network.2807.17930:
	lw		x7, 16(x29)	# 1548
	lw		x8, 12(x29)	# 1548
	lw		x9, 8(x29)	# 1548
	lw		x10, 4(x29)	# 1548
	mul		x11, x30, x4	# 1548
	add		x11, x5, x11	# 1548
	lw		x11, 0(x11)	# 1548
	beq		x11, x8, beq.32694	# 1549
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
beq.32694:
	jalr	x0, x1, 0	# 1553
trace_or_matrix.2811.17934:
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
	add		x15, x13, x14	# 1559
	lw		x15, 0(x15)	# 1559
	beq		x15, x9, beq.32696	# 1560
	addi	x9, x0, 99	# 1563
	sw		x6, 0(x2)	# 1563
	sw		x5, -4(x2)	# 1563
	sw		x29, -8(x2)	# 1563
	sw		x12, -12(x2)	# 1563
	sw		x4, -16(x2)	# 1563
	beq		x15, x9, beq.32698	# 1563
	mul		x9, x30, x15	# 1074
	addi	x9, x9, 63844	# 1074
	lw		x9, 0(x9)	# 1074
	addi	x15, x14, 64432	# 1076
	flw		f2, 0(x15)	# 1076
	lw		x15, 20(x9)	# 473
	add		x16, x15, x14	# 478
	flw		f3, 0(x16)	# 478
	fsub	f2, f2, f3	# 1076
	mul		x16, x30, x12	# 1077
	addi	x17, x16, 64432	# 1077
	flw		f3, 0(x17)	# 1077
	add		x17, x15, x16	# 488
	flw		f4, 0(x17)	# 488
	fsub	f3, f3, f4	# 1077
	mul		x17, x30, x8	# 1078
	addi	x18, x17, 64432	# 1078
	flw		f4, 0(x18)	# 1078
	add		x15, x15, x17	# 498
	flw		f5, 0(x15)	# 498
	fsub	f4, f4, f5	# 1078
	lw		x15, 4(x9)	# 395
	beq		x15, x12, beq.32700	# 1081
	beq		x15, x8, beq.32702	# 1082
	addi	x8, x14, 0	# 1048
	add		x18, x6, x8	# 1048
	flw		f5, 0(x18)	# 1048
	add		x18, x6, x16	# 1048
	flw		f6, 0(x18)	# 1048
	add		x18, x6, x17	# 1048
	flw		f7, 0(x18)	# 1048
	fmul	f8, f5, f5	# 127
	lw		x18, 16(x9)	# 433
	add		x19, x18, x8	# 438
	flw		f9, 0(x19)	# 438
	fmul	f8, f8, f9	# 1009
	fmul	f10, f6, f6	# 127
	add		x19, x18, x16	# 448
	flw		f11, 0(x19)	# 448
	fmul	f10, f10, f11	# 1009
	fadd	f8, f8, f10	# 1009
	fmul	f10, f7, f7	# 127
	add		x18, x18, x17	# 458
	flw		f12, 0(x18)	# 458
	fmul	f10, f10, f12	# 1009
	fadd	f8, f8, f10	# 1009
	lw		x18, 12(x9)	# 424
	beq		x18, x11, beq_cont.32703	# 1011
	fmul	f10, f6, f7	# 1015
	lw		x19, 36(x9)	# 553
	addi	x20, x8, 0	# 558
	add		x20, x19, x20	# 558
	flw		f13, 0(x20)	# 558
	fmul	f10, f10, f13	# 1015
	fadd	f8, f8, f10	# 1014
	fmul	f10, f7, f5	# 1016
	addi	x20, x16, 0	# 568
	add		x20, x19, x20	# 568
	flw		f13, 0(x20)	# 568
	fmul	f10, f10, f13	# 1016
	fadd	f8, f8, f10	# 1014
	fmul	f10, f5, f6	# 1017
	addi	x20, x17, 0	# 578
	add		x19, x19, x20	# 578
	flw		f13, 0(x19)	# 578
	fmul	f10, f10, f13	# 1017
	fadd	f8, f8, f10	# 1014
	jal		x0, beq_cont.32703	# 1011
beq_cont.32703:
	feq		f8, f1, feq.32706	# 120
	fmul	f10, f5, f2	# 1023
	fmul	f10, f10, f9	# 1023
	fmul	f13, f6, f3	# 1024
	fmul	f13, f13, f11	# 1024
	fadd	f10, f10, f13	# 1023
	fmul	f13, f7, f4	# 1025
	fmul	f13, f13, f12	# 1025
	fadd	f10, f10, f13	# 1023
	beq		x18, x11, beq.32708	# 1027
	fmul	f13, f7, f3	# 1031
	fmul	f14, f6, f4	# 1031
	fadd	f13, f13, f14	# 1031
	lw		x19, 36(x9)	# 553
	addi	x20, x8, 0	# 558
	add		x20, x19, x20	# 558
	flw		f14, 0(x20)	# 558
	fmul	f13, f13, f14	# 1031
	fmul	f14, f5, f4	# 1032
	fmul	f7, f7, f2	# 1032
	fadd	f7, f14, f7	# 1032
	addi	x20, x16, 0	# 568
	add		x20, x19, x20	# 568
	flw		f14, 0(x20)	# 568
	fmul	f7, f7, f14	# 1032
	fadd	f7, f13, f7	# 1031
	fmul	f5, f5, f3	# 1033
	fmul	f6, f6, f2	# 1033
	fadd	f5, f5, f6	# 1033
	addi	x20, x17, 0	# 578
	add		x19, x19, x20	# 578
	flw		f6, 0(x19)	# 578
	fmul	f5, f5, f6	# 1033
	fadd	f5, f7, f5	# 1031
	fmul	f5, f5, f26	# 126
	fadd	f5, f10, f5	# 1030
	jal		x0, beq_cont.32707	# 1027
beq.32708:
	fadd	f5, f0, f10	# 1028
beq_cont.32707:
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f9	# 1009
	fmul	f7, f3, f3	# 127
	fmul	f7, f7, f11	# 1009
	fadd	f6, f6, f7	# 1009
	fmul	f7, f4, f4	# 127
	fmul	f7, f7, f12	# 1009
	fadd	f6, f6, f7	# 1009
	beq		x18, x11, beq.32710	# 1011
	fmul	f7, f3, f4	# 1015
	lw		x18, 36(x9)	# 553
	addi	x19, x8, 0	# 558
	add		x19, x18, x19	# 558
	flw		f9, 0(x19)	# 558
	fmul	f7, f7, f9	# 1015
	fadd	f6, f6, f7	# 1014
	fmul	f4, f4, f2	# 1016
	add		x16, x18, x16	# 568
	flw		f7, 0(x16)	# 568
	fmul	f4, f4, f7	# 1016
	fadd	f4, f6, f4	# 1014
	fmul	f2, f2, f3	# 1017
	addi	x16, x18, 0	# 573
	add		x16, x16, x17	# 578
	flw		f3, 0(x16)	# 578
	fmul	f2, f2, f3	# 1017
	fadd	f2, f4, f2	# 1014
	jal		x0, beq_cont.32709	# 1011
beq.32710:
	fadd	f2, f0, f6	# 1012
beq_cont.32709:
	beq		x15, x10, beq.32712	# 1058
	jal		x0, beq_cont.32711	# 1058
beq.32712:
	fsub	f2, f2, f30	# 1058
beq_cont.32711:
	fmul	f3, f5, f5	# 127
	fmul	f2, f8, f2	# 1060
	fsub	f2, f3, f2	# 1060
	fle		f2, f1, fle.32714	# 121
	fsqrt	f1, f2	# 1063
	lw		x9, 24(x9)	# 415
	beq		x9, x11, beq.32716	# 1064
	jal		x0, beq_cont.32715	# 1064
beq.32716:
	fsub	f1, f0, f1	# 123
beq_cont.32715:
	fsub	f1, f1, f5	# 1065
	fdiv	f1, f1, f8	# 1065
	addi	x8, x8, 64336	# 1065
	fsw		f1, 0(x8)	# 1065
	addi	x8, x0, 1	# 1065
	jal		x0, beq_cont.32699	# 121
fle.32714:
	addi	x8, x0, 0	# 1068
	jal		x0, beq_cont.32699	# 120
feq.32706:
	addi	x8, x0, 0	# 1051
	jal		x0, beq_cont.32699	# 1082
beq.32702:
	lw		x8, 16(x9)	# 463
	addi	x9, x14, 0	# 334
	add		x10, x6, x9	# 334
	flw		f5, 0(x10)	# 334
	add		x10, x8, x9	# 334
	flw		f6, 0(x10)	# 334
	fmul	f5, f5, f6	# 334
	addi	x10, x16, 0	# 334
	add		x15, x6, x10	# 334
	flw		f7, 0(x15)	# 334
	add		x10, x8, x10	# 334
	flw		f8, 0(x10)	# 334
	fmul	f7, f7, f8	# 334
	fadd	f5, f5, f7	# 334
	addi	x10, x17, 0	# 334
	add		x15, x6, x10	# 334
	flw		f7, 0(x15)	# 334
	add		x8, x8, x10	# 334
	flw		f9, 0(x8)	# 334
	fmul	f7, f7, f9	# 334
	fadd	f5, f5, f7	# 334
	fle		f5, f1, fle.32718	# 121
	fmul	f1, f6, f2	# 339
	fmul	f2, f8, f3	# 339
	fadd	f1, f1, f2	# 339
	fmul	f2, f9, f4	# 339
	fadd	f1, f1, f2	# 339
	fsub	f1, f0, f1	# 123
	fdiv	f1, f1, f5	# 999
	addi	x8, x9, 0	# 999
	addi	x8, x8, 64336	# 999
	fsw		f1, 0(x8)	# 999
	addi	x8, x0, 1	# 1000
	jal		x0, beq_cont.32699	# 121
fle.32718:
	addi	x8, x0, 0	# 1001
	jal		x0, beq_cont.32699	# 1081
beq.32700:
	addi	x8, x14, 0	# 970
	add		x10, x6, x8	# 970
	flw		f5, 0(x10)	# 970
	feq		f5, f1, feq.32720	# 120
	lw		x10, 16(x9)	# 463
	lw		x15, 24(x9)	# 415
	fle		f1, f5, fle.32722	# 122
	addi	x18, x0, 1	# 122
	jal		x0, fle_cont.32721	# 122
fle.32722:
	addi	x18, x0, 0	# 122
fle_cont.32721:
	beq		x15, x11, beq.32724	# 246
	fle		f1, f5, fle.32726	# 122
	addi	x15, x0, 0	# 246
	jal		x0, beq_cont.32723	# 122
fle.32726:
	addi	x15, x0, 1	# 246
	jal		x0, beq_cont.32723	# 246
beq.32724:
	addi	x15, x18, 0	# 246
beq_cont.32723:
	addi	x18, x8, 0	# 972
	add		x19, x10, x18	# 972
	flw		f6, 0(x19)	# 972
	beq		x15, x11, beq.32728	# 261
	jal		x0, beq_cont.32727	# 261
beq.32728:
	fsub	f6, f0, f6	# 123
beq_cont.32727:
	fsub	f6, f6, f2	# 974
	fdiv	f5, f6, f5	# 974
	addi	x15, x16, 0	# 975
	add		x19, x6, x15	# 975
	flw		f6, 0(x19)	# 975
	fmul	f6, f5, f6	# 975
	fadd	f6, f6, f3	# 975
	fle		f6, f1, fle.32730	# 124
	jal		x0, fle_cont.32729	# 124
fle.32730:
	fsub	f6, f0, f6	# 124
fle_cont.32729:
	add		x15, x10, x15	# 975
	flw		f7, 0(x15)	# 975
	fle		f7, f6, fle.32732	# 125
	addi	x15, x17, 0	# 976
	add		x19, x6, x15	# 976
	flw		f6, 0(x19)	# 976
	fmul	f6, f5, f6	# 976
	fadd	f6, f6, f4	# 976
	fle		f6, f1, fle.32734	# 124
	jal		x0, fle_cont.32733	# 124
fle.32734:
	fsub	f6, f0, f6	# 124
fle_cont.32733:
	add		x10, x10, x15	# 976
	flw		f7, 0(x10)	# 976
	fle		f7, f6, fle.32736	# 125
	addi	x10, x18, 0	# 977
	addi	x10, x10, 64336	# 977
	fsw		f5, 0(x10)	# 977
	addi	x10, x0, 1	# 977
	jal		x0, feq_cont.32719	# 125
fle.32736:
	addi	x10, x0, 0	# 978
	jal		x0, feq_cont.32719	# 125
fle.32732:
	addi	x10, x0, 0	# 979
	jal		x0, feq_cont.32719	# 120
feq.32720:
	addi	x10, x0, 0	# 970
feq_cont.32719:
	beq		x10, x11, beq.32738	# 985
	addi	x8, x0, 1	# 985
	jal		x0, beq_cont.32699	# 985
beq.32738:
	addi	x10, x16, 0	# 970
	add		x15, x6, x10	# 970
	flw		f5, 0(x15)	# 970
	feq		f5, f1, feq.32740	# 120
	lw		x15, 16(x9)	# 463
	lw		x16, 24(x9)	# 415
	fle		f1, f5, fle.32742	# 122
	addi	x18, x0, 1	# 122
	jal		x0, fle_cont.32741	# 122
fle.32742:
	addi	x18, x0, 0	# 122
fle_cont.32741:
	beq		x16, x11, beq.32744	# 246
	fle		f1, f5, fle.32746	# 122
	addi	x16, x0, 0	# 246
	jal		x0, beq_cont.32743	# 122
fle.32746:
	addi	x16, x0, 1	# 246
	jal		x0, beq_cont.32743	# 246
beq.32744:
	addi	x16, x18, 0	# 246
beq_cont.32743:
	addi	x18, x10, 0	# 972
	add		x18, x15, x18	# 972
	flw		f6, 0(x18)	# 972
	beq		x16, x11, beq.32748	# 261
	jal		x0, beq_cont.32747	# 261
beq.32748:
	fsub	f6, f0, f6	# 123
beq_cont.32747:
	fsub	f6, f6, f3	# 974
	fdiv	f5, f6, f5	# 974
	addi	x16, x17, 0	# 975
	add		x18, x6, x16	# 975
	flw		f6, 0(x18)	# 975
	fmul	f6, f5, f6	# 975
	fadd	f6, f6, f4	# 975
	fle		f6, f1, fle.32750	# 124
	jal		x0, fle_cont.32749	# 124
fle.32750:
	fsub	f6, f0, f6	# 124
fle_cont.32749:
	add		x16, x15, x16	# 975
	flw		f7, 0(x16)	# 975
	fle		f7, f6, fle.32752	# 125
	addi	x16, x8, 0	# 976
	add		x18, x6, x16	# 976
	flw		f6, 0(x18)	# 976
	fmul	f6, f5, f6	# 976
	fadd	f6, f6, f2	# 976
	fle		f6, f1, fle.32754	# 124
	jal		x0, fle_cont.32753	# 124
fle.32754:
	fsub	f6, f0, f6	# 124
fle_cont.32753:
	add		x15, x15, x16	# 976
	flw		f7, 0(x15)	# 976
	fle		f7, f6, fle.32756	# 125
	addi	x15, x16, 0	# 977
	addi	x15, x15, 64336	# 977
	fsw		f5, 0(x15)	# 977
	addi	x15, x0, 1	# 977
	jal		x0, feq_cont.32739	# 125
fle.32756:
	addi	x15, x0, 0	# 978
	jal		x0, feq_cont.32739	# 125
fle.32752:
	addi	x15, x0, 0	# 979
	jal		x0, feq_cont.32739	# 120
feq.32740:
	addi	x15, x0, 0	# 970
feq_cont.32739:
	beq		x15, x11, beq.32758	# 986
	addi	x8, x0, 2	# 986
	jal		x0, beq_cont.32699	# 986
beq.32758:
	addi	x15, x17, 0	# 970
	add		x16, x6, x15	# 970
	flw		f5, 0(x16)	# 970
	feq		f5, f1, feq.32760	# 120
	lw		x16, 16(x9)	# 463
	lw		x9, 24(x9)	# 415
	fle		f1, f5, fle.32762	# 122
	addi	x17, x0, 1	# 122
	jal		x0, fle_cont.32761	# 122
fle.32762:
	addi	x17, x0, 0	# 122
fle_cont.32761:
	beq		x9, x11, beq.32764	# 246
	fle		f1, f5, fle.32766	# 122
	addi	x9, x0, 0	# 246
	jal		x0, beq_cont.32763	# 122
fle.32766:
	addi	x9, x0, 1	# 246
	jal		x0, beq_cont.32763	# 246
beq.32764:
	addi	x9, x17, 0	# 246
beq_cont.32763:
	add		x15, x16, x15	# 972
	flw		f6, 0(x15)	# 972
	beq		x9, x11, beq.32768	# 261
	jal		x0, beq_cont.32767	# 261
beq.32768:
	fsub	f6, f0, f6	# 123
beq_cont.32767:
	fsub	f4, f6, f4	# 974
	fdiv	f4, f4, f5	# 974
	add		x9, x6, x8	# 975
	flw		f5, 0(x9)	# 975
	fmul	f5, f4, f5	# 975
	fadd	f2, f5, f2	# 975
	fle		f2, f1, fle.32770	# 124
	jal		x0, fle_cont.32769	# 124
fle.32770:
	fsub	f2, f0, f2	# 124
fle_cont.32769:
	add		x9, x16, x8	# 975
	flw		f5, 0(x9)	# 975
	fle		f5, f2, fle.32772	# 125
	addi	x9, x10, 0	# 976
	add		x10, x6, x9	# 976
	flw		f2, 0(x10)	# 976
	fmul	f2, f4, f2	# 976
	fadd	f2, f2, f3	# 976
	fle		f2, f1, fle.32774	# 124
	fadd	f1, f0, f2	# 124
	jal		x0, fle_cont.32773	# 124
fle.32774:
	fsub	f1, f0, f2	# 124
fle_cont.32773:
	add		x9, x16, x9	# 976
	flw		f2, 0(x9)	# 976
	fle		f2, f1, fle.32776	# 125
	addi	x8, x8, 64336	# 977
	fsw		f4, 0(x8)	# 977
	addi	x8, x0, 1	# 977
	jal		x0, feq_cont.32759	# 125
fle.32776:
	addi	x8, x0, 0	# 978
	jal		x0, feq_cont.32759	# 125
fle.32772:
	addi	x8, x0, 0	# 979
	jal		x0, feq_cont.32759	# 120
feq.32760:
	addi	x8, x0, 0	# 970
feq_cont.32759:
	beq		x8, x11, beq.32778	# 987
	addi	x8, x0, 3	# 987
	jal		x0, beq_cont.32699	# 987
beq.32778:
	addi	x8, x0, 0	# 988
beq_cont.32699:
	beq		x8, x11, beq_cont.32697	# 1569
	addi	x8, x14, 0	# 1570
	addi	x9, x8, 64336	# 1570
	flw		f1, 0(x9)	# 1570
	addi	x8, x8, 64344	# 1571
	flw		f2, 0(x8)	# 1571
	fle		f2, f1, beq_cont.32697	# 125
	addi	x5, x13, 0	# 1572
	addi	x4, x12, 0	# 1572
	addi	x29, x7, 0	# 1572
	sw		x1, -20(x2)	# 1572
	addi	x2, x2, -24	# 1572
	lw		x31, 0(x29)	# 1572
	jalr	x1, x31, 0	# 1572
	addi	x2, x2, 24	# 1572
	lw		x1, -20(x2)	# 1572
	jal		x0, beq_cont.32697	# 125
	jal		x0, beq_cont.32697	# 1569
	jal		x0, beq_cont.32697	# 1563
beq.32698:
	addi	x5, x13, 0	# 1564
	addi	x4, x12, 0	# 1564
	addi	x29, x7, 0	# 1564
	sw		x1, -20(x2)	# 1564
	addi	x2, x2, -24	# 1564
	lw		x31, 0(x29)	# 1564
	jalr	x1, x31, 0	# 1564
	addi	x2, x2, 24	# 1564
	lw		x1, -20(x2)	# 1564
beq_cont.32697:
	lw		x4, -16(x2)	# 1576
	lw		x5, -12(x2)	# 1576
	add		x4, x4, x5	# 1576
	lw		x5, -4(x2)	# 1576
	lw		x6, 0(x2)	# 1576
	lw		x29, -8(x2)	# 1576
	lw		x31, 0(x29)	# 1576
	jalr	x0, x31, 0	# 1576
beq.32696:
	jalr	x0, x1, 0	# 1561
solve_each_element_fast.2817.17938:
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
	beq		x15, x10, beq.32784	# 1602
	mul		x16, x30, x15	# 1215
	addi	x17, x16, 63844	# 1215
	lw		x17, 0(x17)	# 1215
	lw		x18, 40(x17)	# 590
	mul		x19, x30, x12	# 1217
	add		x20, x18, x19	# 1217
	flw		f2, 0(x20)	# 1217
	mul		x20, x30, x13	# 1218
	add		x21, x18, x20	# 1218
	flw		f3, 0(x21)	# 1218
	mul		x21, x30, x9	# 1219
	add		x22, x18, x21	# 1219
	flw		f4, 0(x22)	# 1219
	lw		x22, 4(x6)	# 687
	add		x22, x22, x16	# 1221
	lw		x22, 0(x22)	# 1221
	lw		x23, 4(x17)	# 395
	beq		x23, x13, beq.32786	# 1223
	beq		x23, x9, beq.32788	# 1225
	addi	x23, x19, 0	# 1197
	add		x24, x22, x23	# 1197
	flw		f5, 0(x24)	# 1197
	feq		f5, f1, feq.32790	# 120
	addi	x24, x20, 0	# 1201
	add		x24, x22, x24	# 1201
	flw		f6, 0(x24)	# 1201
	fmul	f2, f6, f2	# 1201
	addi	x24, x21, 0	# 1201
	add		x24, x22, x24	# 1201
	flw		f6, 0(x24)	# 1201
	fmul	f3, f6, f3	# 1201
	fadd	f2, f2, f3	# 1201
	mul		x24, x30, x11	# 1201
	add		x25, x22, x24	# 1201
	flw		f3, 0(x25)	# 1201
	fmul	f3, f3, f4	# 1201
	fadd	f2, f2, f3	# 1201
	add		x18, x18, x24	# 1202
	flw		f3, 0(x18)	# 1202
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1203
	fsub	f3, f4, f3	# 1203
	fle		f3, f1, fle.32792	# 121
	lw		x17, 24(x17)	# 415
	beq		x17, x12, beq.32794	# 1205
	fsqrt	f3, f3	# 1206
	fadd	f2, f2, f3	# 1206
	addi	x17, x0, 4	# 1206
	mul		x17, x30, x17	# 1206
	add		x17, x22, x17	# 1206
	flw		f3, 0(x17)	# 1206
	fmul	f2, f2, f3	# 1206
	addi	x17, x23, 0	# 1206
	addi	x17, x17, 64336	# 1206
	fsw		f2, 0(x17)	# 1206
	jal		x0, beq_cont.32793	# 1205
beq.32794:
	fsqrt	f3, f3	# 1208
	fsub	f2, f2, f3	# 1208
	addi	x17, x0, 4	# 1208
	mul		x17, x30, x17	# 1208
	add		x17, x22, x17	# 1208
	flw		f3, 0(x17)	# 1208
	fmul	f2, f2, f3	# 1208
	addi	x17, x23, 0	# 1208
	addi	x17, x17, 64336	# 1208
	fsw		f2, 0(x17)	# 1208
beq_cont.32793:
	addi	x17, x0, 1	# 1209
	jal		x0, beq_cont.32785	# 121
fle.32792:
	addi	x17, x0, 0	# 1210
	jal		x0, beq_cont.32785	# 120
feq.32790:
	addi	x17, x0, 0	# 1199
	jal		x0, beq_cont.32785	# 1225
beq.32788:
	addi	x17, x19, 0	# 1188
	add		x22, x22, x17	# 1188
	flw		f2, 0(x22)	# 1188
	fle		f1, f2, fle.32796	# 122
	mul		x22, x30, x11	# 1189
	add		x18, x18, x22	# 1189
	flw		f3, 0(x18)	# 1189
	fmul	f2, f2, f3	# 1189
	addi	x17, x17, 64336	# 1189
	fsw		f2, 0(x17)	# 1189
	addi	x17, x0, 1	# 1190
	jal		x0, beq_cont.32785	# 122
fle.32796:
	addi	x17, x0, 0	# 1191
	jal		x0, beq_cont.32785	# 1223
beq.32786:
	addi	x18, x14, 0	# 681
	addi	x23, x19, 0	# 1106
	add		x24, x22, x23	# 1106
	flw		f5, 0(x24)	# 1106
	fsub	f5, f5, f2	# 1106
	addi	x24, x20, 0	# 1106
	add		x25, x22, x24	# 1106
	flw		f6, 0(x25)	# 1106
	fmul	f5, f5, f6	# 1106
	add		x25, x18, x24	# 1108
	flw		f7, 0(x25)	# 1108
	fmul	f8, f5, f7	# 1108
	fadd	f8, f8, f3	# 1108
	fle		f8, f1, fle.32798	# 124
	jal		x0, fle_cont.32797	# 124
fle.32798:
	fsub	f8, f0, f8	# 124
fle_cont.32797:
	lw		x17, 16(x17)	# 443
	add		x25, x17, x24	# 448
	flw		f9, 0(x25)	# 448
	fle		f9, f8, fle.32800	# 125
	addi	x25, x21, 0	# 1109
	add		x26, x18, x25	# 1109
	flw		f8, 0(x26)	# 1109
	fmul	f8, f5, f8	# 1109
	fadd	f8, f8, f4	# 1109
	fle		f8, f1, fle.32802	# 124
	jal		x0, fle_cont.32801	# 124
fle.32802:
	fsub	f8, f0, f8	# 124
fle_cont.32801:
	addi	x26, x17, 0	# 453
	add		x25, x26, x25	# 458
	flw		f9, 0(x25)	# 458
	fle		f9, f8, fle.32804	# 125
	feq		f6, f1, feq.32806	# 120
	addi	x25, x0, 1	# 1110
	jal		x0, fle_cont.32799	# 120
feq.32806:
	addi	x25, x0, 0	# 1110
	jal		x0, fle_cont.32799	# 125
fle.32804:
	addi	x25, x0, 0	# 1111
	jal		x0, fle_cont.32799	# 125
fle.32800:
	addi	x25, x0, 0	# 1112
fle_cont.32799:
	beq		x25, x12, beq.32808	# 1107
	addi	x17, x23, 0	# 1114
	addi	x17, x17, 64336	# 1114
	fsw		f5, 0(x17)	# 1114
	addi	x17, x0, 1	# 1114
	jal		x0, beq_cont.32785	# 1107
beq.32808:
	addi	x25, x21, 0	# 1115
	add		x26, x22, x25	# 1115
	flw		f5, 0(x26)	# 1115
	fsub	f5, f5, f3	# 1115
	mul		x26, x30, x11	# 1115
	add		x26, x22, x26	# 1115
	flw		f6, 0(x26)	# 1115
	fmul	f5, f5, f6	# 1115
	add		x26, x18, x23	# 1117
	flw		f8, 0(x26)	# 1117
	fmul	f9, f5, f8	# 1117
	fadd	f9, f9, f2	# 1117
	fle		f9, f1, fle.32810	# 124
	jal		x0, fle_cont.32809	# 124
fle.32810:
	fsub	f9, f0, f9	# 124
fle_cont.32809:
	add		x26, x17, x23	# 438
	flw		f10, 0(x26)	# 438
	fle		f10, f9, fle.32812	# 125
	add		x18, x18, x25	# 1118
	flw		f9, 0(x18)	# 1118
	fmul	f9, f5, f9	# 1118
	fadd	f9, f9, f4	# 1118
	fle		f9, f1, fle.32814	# 124
	jal		x0, fle_cont.32813	# 124
fle.32814:
	fsub	f9, f0, f9	# 124
fle_cont.32813:
	addi	x18, x17, 0	# 453
	add		x18, x18, x25	# 458
	flw		f10, 0(x18)	# 458
	fle		f10, f9, fle.32816	# 125
	feq		f6, f1, feq.32818	# 120
	addi	x18, x0, 1	# 1119
	jal		x0, fle_cont.32811	# 120
feq.32818:
	addi	x18, x0, 0	# 1119
	jal		x0, fle_cont.32811	# 125
fle.32816:
	addi	x18, x0, 0	# 1120
	jal		x0, fle_cont.32811	# 125
fle.32812:
	addi	x18, x0, 0	# 1121
fle_cont.32811:
	beq		x18, x12, beq.32820	# 1116
	addi	x17, x23, 0	# 1123
	addi	x17, x17, 64336	# 1123
	fsw		f5, 0(x17)	# 1123
	addi	x17, x0, 2	# 1123
	jal		x0, beq_cont.32785	# 1116
beq.32820:
	addi	x18, x0, 4	# 1124
	mul		x18, x30, x18	# 1124
	add		x18, x22, x18	# 1124
	flw		f5, 0(x18)	# 1124
	fsub	f4, f5, f4	# 1124
	mul		x18, x30, x8	# 1124
	add		x18, x22, x18	# 1124
	flw		f5, 0(x18)	# 1124
	fmul	f4, f4, f5	# 1124
	fmul	f6, f4, f8	# 1126
	fadd	f2, f6, f2	# 1126
	fle		f2, f1, fle.32822	# 124
	jal		x0, fle_cont.32821	# 124
fle.32822:
	fsub	f2, f0, f2	# 124
fle_cont.32821:
	addi	x18, x23, 0	# 438
	add		x22, x17, x18	# 438
	flw		f6, 0(x22)	# 438
	fle		f6, f2, fle.32824	# 125
	fmul	f2, f4, f7	# 1127
	fadd	f2, f2, f3	# 1127
	fle		f2, f1, fle.32826	# 124
	jal		x0, fle_cont.32825	# 124
fle.32826:
	fsub	f2, f0, f2	# 124
fle_cont.32825:
	addi	x22, x24, 0	# 448
	add		x17, x17, x22	# 448
	flw		f3, 0(x17)	# 448
	fle		f3, f2, fle.32828	# 125
	feq		f5, f1, feq.32830	# 120
	addi	x17, x0, 1	# 1128
	jal		x0, fle_cont.32823	# 120
feq.32830:
	addi	x17, x0, 0	# 1128
	jal		x0, fle_cont.32823	# 125
fle.32828:
	addi	x17, x0, 0	# 1129
	jal		x0, fle_cont.32823	# 125
fle.32824:
	addi	x17, x0, 0	# 1130
fle_cont.32823:
	beq		x17, x12, beq.32832	# 1125
	addi	x17, x18, 0	# 1132
	addi	x17, x17, 64336	# 1132
	fsw		f4, 0(x17)	# 1132
	addi	x17, x0, 3	# 1132
	jal		x0, beq_cont.32785	# 1125
beq.32832:
	addi	x17, x0, 0	# 1134
beq_cont.32785:
	beq		x17, x12, beq.32833	# 1605
	addi	x16, x19, 0	# 1609
	addi	x18, x16, 64336	# 1609
	flw		f2, 0(x18)	# 1609
	sw		x7, 0(x2)	# 125
	sw		x29, -4(x2)	# 125
	sw		x9, -8(x2)	# 125
	sw		x8, -12(x2)	# 125
	sw		x11, -16(x2)	# 125
	sw		x12, -20(x2)	# 125
	fsw		f1, -24(x2)	# 125
	sw		x10, -28(x2)	# 125
	sw		x5, -32(x2)	# 125
	sw		x6, -36(x2)	# 125
	sw		x13, -40(x2)	# 125
	sw		x4, -44(x2)	# 125
	fle		f2, f1, fle_cont.32834	# 125
	addi	x18, x16, 0	# 1612
	addi	x19, x18, 64344	# 1612
	flw		f3, 0(x19)	# 1612
	fle		f3, f2, fle_cont.32834	# 125
	fadd	f2, f2, f16	# 1614
	add		x19, x14, x18	# 1615
	flw		f3, 0(x19)	# 1615
	fmul	f3, f3, f2	# 1615
	addi	x19, x18, 64444	# 1615
	flw		f4, 0(x19)	# 1615
	fadd	f3, f3, f4	# 1615
	addi	x19, x20, 0	# 1616
	add		x22, x14, x19	# 1616
	flw		f4, 0(x22)	# 1616
	fmul	f4, f4, f2	# 1616
	addi	x22, x19, 64444	# 1616
	flw		f5, 0(x22)	# 1616
	fadd	f4, f4, f5	# 1616
	addi	x22, x21, 0	# 1617
	add		x14, x14, x22	# 1617
	flw		f5, 0(x14)	# 1617
	fmul	f5, f5, f2	# 1617
	addi	x14, x22, 0	# 1617
	addi	x22, x14, 64444	# 1617
	flw		f6, 0(x22)	# 1617
	fadd	f5, f5, f6	# 1617
	sw		x15, -48(x2)	# 1618
	fsw		f5, -52(x2)	# 1618
	sw		x14, -56(x2)	# 1618
	fsw		f4, -60(x2)	# 1618
	fsw		f3, -64(x2)	# 1618
	fsw		f2, -68(x2)	# 1618
	addi	x4, x12, 0	# 1618
	addi	x29, x7, 0	# 1618
	fadd	f2, f0, f4	# 1618
	fadd	f1, f0, f3	# 1618
	fadd	f3, f0, f5	# 1618
	sw		x1, -72(x2)	# 1618
	addi	x2, x2, -76	# 1618
	lw		x31, 0(x29)	# 1618
	jalr	x1, x31, 0	# 1618
	addi	x2, x2, 76	# 1618
	lw		x1, -72(x2)	# 1618
	lw		x5, -20(x2)	# 1618
	beq		x4, x5, fle_cont.32834	# 1618
	addi	x4, x18, 0	# 1620
	addi	x6, x4, 64344	# 1620
	flw		f1, -68(x2)	# 1620
	fsw		f1, 0(x6)	# 1620
	addi	x6, x4, 64348	# 282
	flw		f1, -64(x2)	# 282
	fsw		f1, 0(x6)	# 282
	addi	x6, x19, 0	# 283
	addi	x6, x6, 64348	# 283
	flw		f1, -60(x2)	# 283
	fsw		f1, 0(x6)	# 283
	lw		x6, -56(x2)	# 284
	addi	x6, x6, 64348	# 284
	flw		f1, -52(x2)	# 284
	fsw		f1, 0(x6)	# 284
	addi	x6, x4, 64360	# 1622
	lw		x7, -48(x2)	# 1622
	sw		x7, 0(x6)	# 1622
	addi	x4, x4, 64340	# 1623
	sw		x17, 0(x4)	# 1623
	jal		x0, fle_cont.32834	# 1618
	jal		x0, fle_cont.32834	# 125
	jal		x0, fle_cont.32834	# 125
fle_cont.32834:
	lw		x4, -44(x2)	# 1629
	lw		x5, -40(x2)	# 1629
	add		x4, x4, x5	# 1629
	lw		x6, -36(x2)	# 681
	lw		x7, 0(x6)	# 681
	mul		x8, x30, x4	# 1601
	lw		x9, -32(x2)	# 1601
	add		x8, x9, x8	# 1601
	lw		x8, 0(x8)	# 1601
	lw		x10, -28(x2)	# 1602
	beq		x8, x10, beq.32840	# 1602
	mul		x10, x30, x8	# 1215
	addi	x11, x10, 63844	# 1215
	lw		x11, 0(x11)	# 1215
	lw		x12, 40(x11)	# 590
	addi	x13, x16, 0	# 1217
	add		x14, x12, x13	# 1217
	flw		f1, 0(x14)	# 1217
	addi	x14, x20, 0	# 1218
	add		x15, x12, x14	# 1218
	flw		f2, 0(x15)	# 1218
	addi	x15, x21, 0	# 1219
	add		x16, x12, x15	# 1219
	flw		f3, 0(x16)	# 1219
	lw		x16, 4(x6)	# 687
	add		x16, x16, x10	# 1221
	lw		x16, 0(x16)	# 1221
	lw		x17, 4(x11)	# 395
	beq		x17, x5, beq.32842	# 1223
	lw		x18, -8(x2)	# 1225
	beq		x17, x18, beq.32844	# 1225
	addi	x17, x13, 0	# 1197
	add		x18, x16, x17	# 1197
	flw		f4, 0(x18)	# 1197
	flw		f5, -24(x2)	# 120
	feq		f4, f5, feq.32846	# 120
	addi	x18, x14, 0	# 1201
	add		x18, x16, x18	# 1201
	flw		f6, 0(x18)	# 1201
	fmul	f1, f6, f1	# 1201
	addi	x18, x15, 0	# 1201
	add		x18, x16, x18	# 1201
	flw		f6, 0(x18)	# 1201
	fmul	f2, f6, f2	# 1201
	fadd	f1, f1, f2	# 1201
	lw		x18, -16(x2)	# 1201
	mul		x18, x30, x18	# 1201
	add		x19, x16, x18	# 1201
	flw		f2, 0(x19)	# 1201
	fmul	f2, f2, f3	# 1201
	fadd	f1, f1, f2	# 1201
	add		x12, x12, x18	# 1202
	flw		f2, 0(x12)	# 1202
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1203
	fsub	f2, f3, f2	# 1203
	fle		f2, f5, fle.32848	# 121
	lw		x11, 24(x11)	# 415
	lw		x12, -20(x2)	# 1205
	beq		x11, x12, beq.32850	# 1205
	fsqrt	f2, f2	# 1206
	fadd	f1, f1, f2	# 1206
	addi	x11, x0, 4	# 1206
	mul		x11, x30, x11	# 1206
	add		x11, x16, x11	# 1206
	flw		f2, 0(x11)	# 1206
	fmul	f1, f1, f2	# 1206
	addi	x11, x17, 0	# 1206
	addi	x11, x11, 64336	# 1206
	fsw		f1, 0(x11)	# 1206
	jal		x0, beq_cont.32849	# 1205
beq.32850:
	fsqrt	f2, f2	# 1208
	fsub	f1, f1, f2	# 1208
	addi	x11, x0, 4	# 1208
	mul		x11, x30, x11	# 1208
	add		x11, x16, x11	# 1208
	flw		f2, 0(x11)	# 1208
	fmul	f1, f1, f2	# 1208
	addi	x11, x17, 0	# 1208
	addi	x11, x11, 64336	# 1208
	fsw		f1, 0(x11)	# 1208
beq_cont.32849:
	addi	x11, x0, 1	# 1209
	jal		x0, beq_cont.32841	# 121
fle.32848:
	addi	x11, x0, 0	# 1210
	jal		x0, beq_cont.32841	# 120
feq.32846:
	addi	x11, x0, 0	# 1199
	jal		x0, beq_cont.32841	# 1225
beq.32844:
	addi	x11, x13, 0	# 1188
	add		x16, x16, x11	# 1188
	flw		f1, 0(x16)	# 1188
	flw		f2, -24(x2)	# 122
	fle		f2, f1, fle.32852	# 122
	lw		x16, -16(x2)	# 1189
	mul		x16, x30, x16	# 1189
	add		x12, x12, x16	# 1189
	flw		f3, 0(x12)	# 1189
	fmul	f1, f1, f3	# 1189
	addi	x11, x11, 64336	# 1189
	fsw		f1, 0(x11)	# 1189
	addi	x11, x0, 1	# 1190
	jal		x0, beq_cont.32841	# 122
fle.32852:
	addi	x11, x0, 0	# 1191
	jal		x0, beq_cont.32841	# 1223
beq.32842:
	addi	x12, x7, 0	# 681
	addi	x17, x13, 0	# 1106
	add		x18, x16, x17	# 1106
	flw		f4, 0(x18)	# 1106
	fsub	f4, f4, f1	# 1106
	addi	x18, x14, 0	# 1106
	add		x19, x16, x18	# 1106
	flw		f5, 0(x19)	# 1106
	fmul	f4, f4, f5	# 1106
	add		x19, x12, x18	# 1108
	flw		f6, 0(x19)	# 1108
	fmul	f7, f4, f6	# 1108
	fadd	f7, f7, f2	# 1108
	flw		f8, -24(x2)	# 124
	fle		f7, f8, fle.32854	# 124
	jal		x0, fle_cont.32853	# 124
fle.32854:
	fsub	f7, f0, f7	# 124
fle_cont.32853:
	lw		x11, 16(x11)	# 443
	add		x18, x11, x18	# 448
	flw		f9, 0(x18)	# 448
	fle		f9, f7, fle.32856	# 125
	addi	x18, x15, 0	# 1109
	add		x19, x12, x18	# 1109
	flw		f7, 0(x19)	# 1109
	fmul	f7, f4, f7	# 1109
	fadd	f7, f7, f3	# 1109
	fle		f7, f8, fle.32858	# 124
	jal		x0, fle_cont.32857	# 124
fle.32858:
	fsub	f7, f0, f7	# 124
fle_cont.32857:
	addi	x19, x11, 0	# 453
	add		x18, x19, x18	# 458
	flw		f10, 0(x18)	# 458
	fle		f10, f7, fle.32860	# 125
	feq		f5, f8, feq.32862	# 120
	addi	x18, x0, 1	# 1110
	jal		x0, fle_cont.32855	# 120
feq.32862:
	addi	x18, x0, 0	# 1110
	jal		x0, fle_cont.32855	# 125
fle.32860:
	addi	x18, x0, 0	# 1111
	jal		x0, fle_cont.32855	# 125
fle.32856:
	addi	x18, x0, 0	# 1112
fle_cont.32855:
	lw		x19, -20(x2)	# 1107
	beq		x18, x19, beq.32864	# 1107
	addi	x11, x17, 0	# 1114
	addi	x11, x11, 64336	# 1114
	fsw		f4, 0(x11)	# 1114
	addi	x11, x0, 1	# 1114
	jal		x0, beq_cont.32841	# 1107
beq.32864:
	addi	x18, x15, 0	# 1115
	add		x20, x16, x18	# 1115
	flw		f4, 0(x20)	# 1115
	fsub	f4, f4, f2	# 1115
	lw		x20, -16(x2)	# 1115
	mul		x20, x30, x20	# 1115
	add		x20, x16, x20	# 1115
	flw		f5, 0(x20)	# 1115
	fmul	f4, f4, f5	# 1115
	add		x20, x12, x17	# 1117
	flw		f7, 0(x20)	# 1117
	fmul	f10, f4, f7	# 1117
	fadd	f10, f10, f1	# 1117
	fle		f10, f8, fle.32866	# 124
	jal		x0, fle_cont.32865	# 124
fle.32866:
	fsub	f10, f0, f10	# 124
fle_cont.32865:
	add		x20, x11, x17	# 438
	flw		f11, 0(x20)	# 438
	fle		f11, f10, fle.32868	# 125
	add		x12, x12, x18	# 1118
	flw		f10, 0(x12)	# 1118
	fmul	f10, f4, f10	# 1118
	fadd	f10, f10, f3	# 1118
	fle		f10, f8, fle.32870	# 124
	jal		x0, fle_cont.32869	# 124
fle.32870:
	fsub	f10, f0, f10	# 124
fle_cont.32869:
	addi	x12, x18, 0	# 458
	add		x11, x11, x12	# 458
	flw		f12, 0(x11)	# 458
	fle		f12, f10, fle.32872	# 125
	feq		f5, f8, feq.32874	# 120
	addi	x11, x0, 1	# 1119
	jal		x0, fle_cont.32867	# 120
feq.32874:
	addi	x11, x0, 0	# 1119
	jal		x0, fle_cont.32867	# 125
fle.32872:
	addi	x11, x0, 0	# 1120
	jal		x0, fle_cont.32867	# 125
fle.32868:
	addi	x11, x0, 0	# 1121
fle_cont.32867:
	beq		x11, x19, beq.32876	# 1116
	addi	x11, x17, 0	# 1123
	addi	x11, x11, 64336	# 1123
	fsw		f4, 0(x11)	# 1123
	addi	x11, x0, 2	# 1123
	jal		x0, beq_cont.32841	# 1116
beq.32876:
	addi	x11, x0, 4	# 1124
	mul		x11, x30, x11	# 1124
	add		x11, x16, x11	# 1124
	flw		f4, 0(x11)	# 1124
	fsub	f3, f4, f3	# 1124
	lw		x11, -12(x2)	# 1124
	mul		x11, x30, x11	# 1124
	add		x11, x16, x11	# 1124
	flw		f4, 0(x11)	# 1124
	fmul	f3, f3, f4	# 1124
	fmul	f5, f3, f7	# 1126
	fadd	f1, f5, f1	# 1126
	fle		f1, f8, fle.32878	# 124
	jal		x0, fle_cont.32877	# 124
fle.32878:
	fsub	f1, f0, f1	# 124
fle_cont.32877:
	fle		f11, f1, fle.32880	# 125
	fmul	f1, f3, f6	# 1127
	fadd	f1, f1, f2	# 1127
	fle		f1, f8, fle.32882	# 124
	jal		x0, fle_cont.32881	# 124
fle.32882:
	fsub	f1, f0, f1	# 124
fle_cont.32881:
	fle		f9, f1, fle.32884	# 125
	feq		f4, f8, feq.32886	# 120
	addi	x11, x0, 1	# 1128
	jal		x0, fle_cont.32879	# 120
feq.32886:
	addi	x11, x0, 0	# 1128
	jal		x0, fle_cont.32879	# 125
fle.32884:
	addi	x11, x0, 0	# 1129
	jal		x0, fle_cont.32879	# 125
fle.32880:
	addi	x11, x0, 0	# 1130
fle_cont.32879:
	beq		x11, x19, beq.32888	# 1125
	addi	x11, x17, 0	# 1132
	addi	x11, x11, 64336	# 1132
	fsw		f3, 0(x11)	# 1132
	addi	x11, x0, 3	# 1132
	jal		x0, beq_cont.32841	# 1125
beq.32888:
	addi	x11, x0, 0	# 1134
beq_cont.32841:
	lw		x12, -20(x2)	# 1605
	beq		x11, x12, beq.32889	# 1605
	addi	x10, x13, 0	# 1609
	addi	x13, x10, 64336	# 1609
	flw		f1, 0(x13)	# 1609
	flw		f2, -24(x2)	# 125
	sw		x4, -72(x2)	# 125
	fle		f1, f2, fle_cont.32890	# 125
	addi	x13, x10, 64344	# 1612
	flw		f2, 0(x13)	# 1612
	fle		f2, f1, fle_cont.32890	# 125
	fadd	f1, f1, f16	# 1614
	add		x13, x7, x10	# 1615
	flw		f2, 0(x13)	# 1615
	fmul	f2, f2, f1	# 1615
	addi	x13, x10, 64444	# 1615
	flw		f3, 0(x13)	# 1615
	fadd	f2, f2, f3	# 1615
	addi	x13, x14, 0	# 1616
	add		x14, x7, x13	# 1616
	flw		f3, 0(x14)	# 1616
	fmul	f3, f3, f1	# 1616
	addi	x14, x13, 64444	# 1616
	flw		f4, 0(x14)	# 1616
	fadd	f3, f3, f4	# 1616
	addi	x14, x15, 0	# 1617
	add		x7, x7, x14	# 1617
	flw		f4, 0(x7)	# 1617
	fmul	f4, f4, f1	# 1617
	addi	x7, x14, 0	# 1617
	addi	x14, x7, 64444	# 1617
	flw		f5, 0(x14)	# 1617
	fadd	f4, f4, f5	# 1617
	lw		x29, 0(x2)	# 1618
	sw		x11, -76(x2)	# 1618
	sw		x8, -80(x2)	# 1618
	fsw		f4, -84(x2)	# 1618
	sw		x7, -88(x2)	# 1618
	fsw		f3, -92(x2)	# 1618
	sw		x13, -96(x2)	# 1618
	fsw		f2, -100(x2)	# 1618
	fsw		f1, -104(x2)	# 1618
	sw		x10, -108(x2)	# 1618
	addi	x5, x9, 0	# 1618
	addi	x4, x12, 0	# 1618
	fadd	f1, f0, f2	# 1618
	fadd	f2, f0, f3	# 1618
	fadd	f3, f0, f4	# 1618
	sw		x1, -112(x2)	# 1618
	addi	x2, x2, -116	# 1618
	lw		x31, 0(x29)	# 1618
	jalr	x1, x31, 0	# 1618
	addi	x2, x2, 116	# 1618
	lw		x1, -112(x2)	# 1618
	lw		x5, -20(x2)	# 1618
	beq		x4, x5, fle_cont.32890	# 1618
	lw		x4, -108(x2)	# 1620
	addi	x5, x4, 64344	# 1620
	flw		f1, -104(x2)	# 1620
	fsw		f1, 0(x5)	# 1620
	addi	x5, x4, 64348	# 282
	flw		f1, -100(x2)	# 282
	fsw		f1, 0(x5)	# 282
	lw		x5, -96(x2)	# 283
	addi	x5, x5, 64348	# 283
	flw		f1, -92(x2)	# 283
	fsw		f1, 0(x5)	# 283
	lw		x5, -88(x2)	# 284
	addi	x5, x5, 64348	# 284
	flw		f1, -84(x2)	# 284
	fsw		f1, 0(x5)	# 284
	addi	x5, x4, 64360	# 1622
	lw		x6, -80(x2)	# 1622
	sw		x6, 0(x5)	# 1622
	addi	x4, x4, 64340	# 1623
	lw		x5, -76(x2)	# 1623
	sw		x5, 0(x4)	# 1623
	jal		x0, fle_cont.32890	# 1618
	jal		x0, fle_cont.32890	# 125
	jal		x0, fle_cont.32890	# 125
fle_cont.32890:
	lw		x4, -72(x2)	# 1629
	lw		x5, -40(x2)	# 1629
	add		x4, x4, x5	# 1629
	lw		x5, -32(x2)	# 1629
	lw		x6, -36(x2)	# 1629
	lw		x29, -4(x2)	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x0, x31, 0	# 1629
beq.32889:
	addi	x7, x10, 0	# 1633
	addi	x7, x7, 63844	# 1633
	lw		x7, 0(x7)	# 1633
	lw		x7, 24(x7)	# 415
	beq		x7, x12, beq.32896	# 1633
	add		x4, x4, x5	# 1634
	lw		x29, -4(x2)	# 1634
	addi	x5, x9, 0	# 1634
	lw		x31, 0(x29)	# 1634
	jalr	x0, x31, 0	# 1634
beq.32896:
	jalr	x0, x1, 0	# 1635
beq.32840:
	jalr	x0, x1, 0	# 1602
beq.32833:
	addi	x14, x16, 0	# 1633
	addi	x14, x14, 63844	# 1633
	lw		x14, 0(x14)	# 1633
	lw		x14, 24(x14)	# 415
	beq		x14, x12, beq.32899	# 1633
	add		x4, x4, x13	# 1634
	lw		x14, 0(x6)	# 681
	mul		x15, x30, x4	# 1601
	add		x15, x5, x15	# 1601
	lw		x15, 0(x15)	# 1601
	beq		x15, x10, beq.32900	# 1602
	mul		x10, x30, x15	# 1215
	addi	x16, x10, 63844	# 1215
	lw		x16, 0(x16)	# 1215
	lw		x17, 40(x16)	# 590
	addi	x18, x19, 0	# 1217
	add		x19, x17, x18	# 1217
	flw		f2, 0(x19)	# 1217
	addi	x19, x20, 0	# 1218
	add		x20, x17, x19	# 1218
	flw		f3, 0(x20)	# 1218
	addi	x20, x21, 0	# 1219
	add		x21, x17, x20	# 1219
	flw		f4, 0(x21)	# 1219
	lw		x21, 4(x6)	# 687
	add		x21, x21, x10	# 1221
	lw		x21, 0(x21)	# 1221
	lw		x22, 4(x16)	# 395
	beq		x22, x13, beq.32902	# 1223
	beq		x22, x9, beq.32904	# 1225
	addi	x8, x18, 0	# 1197
	add		x9, x21, x8	# 1197
	flw		f5, 0(x9)	# 1197
	feq		f5, f1, feq.32906	# 120
	addi	x9, x19, 0	# 1201
	add		x9, x21, x9	# 1201
	flw		f6, 0(x9)	# 1201
	fmul	f2, f6, f2	# 1201
	addi	x9, x20, 0	# 1201
	add		x9, x21, x9	# 1201
	flw		f6, 0(x9)	# 1201
	fmul	f3, f6, f3	# 1201
	fadd	f2, f2, f3	# 1201
	mul		x9, x30, x11	# 1201
	add		x11, x21, x9	# 1201
	flw		f3, 0(x11)	# 1201
	fmul	f3, f3, f4	# 1201
	fadd	f2, f2, f3	# 1201
	add		x9, x17, x9	# 1202
	flw		f3, 0(x9)	# 1202
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1203
	fsub	f3, f4, f3	# 1203
	fle		f3, f1, fle.32908	# 121
	lw		x9, 24(x16)	# 415
	beq		x9, x12, beq.32910	# 1205
	fsqrt	f3, f3	# 1206
	fadd	f2, f2, f3	# 1206
	addi	x9, x0, 4	# 1206
	mul		x9, x30, x9	# 1206
	add		x9, x21, x9	# 1206
	flw		f3, 0(x9)	# 1206
	fmul	f2, f2, f3	# 1206
	addi	x8, x8, 64336	# 1206
	fsw		f2, 0(x8)	# 1206
	jal		x0, beq_cont.32909	# 1205
beq.32910:
	fsqrt	f3, f3	# 1208
	fsub	f2, f2, f3	# 1208
	addi	x9, x0, 4	# 1208
	mul		x9, x30, x9	# 1208
	add		x9, x21, x9	# 1208
	flw		f3, 0(x9)	# 1208
	fmul	f2, f2, f3	# 1208
	addi	x8, x8, 64336	# 1208
	fsw		f2, 0(x8)	# 1208
beq_cont.32909:
	addi	x8, x0, 1	# 1209
	jal		x0, beq_cont.32901	# 121
fle.32908:
	addi	x8, x0, 0	# 1210
	jal		x0, beq_cont.32901	# 120
feq.32906:
	addi	x8, x0, 0	# 1199
	jal		x0, beq_cont.32901	# 1225
beq.32904:
	addi	x8, x18, 0	# 1188
	add		x9, x21, x8	# 1188
	flw		f2, 0(x9)	# 1188
	fle		f1, f2, fle.32912	# 122
	mul		x9, x30, x11	# 1189
	add		x9, x17, x9	# 1189
	flw		f3, 0(x9)	# 1189
	fmul	f2, f2, f3	# 1189
	addi	x8, x8, 64336	# 1189
	fsw		f2, 0(x8)	# 1189
	addi	x8, x0, 1	# 1190
	jal		x0, beq_cont.32901	# 122
fle.32912:
	addi	x8, x0, 0	# 1191
	jal		x0, beq_cont.32901	# 1223
beq.32902:
	addi	x9, x14, 0	# 681
	addi	x17, x18, 0	# 1106
	add		x22, x21, x17	# 1106
	flw		f5, 0(x22)	# 1106
	fsub	f5, f5, f2	# 1106
	addi	x22, x19, 0	# 1106
	add		x23, x21, x22	# 1106
	flw		f6, 0(x23)	# 1106
	fmul	f5, f5, f6	# 1106
	add		x23, x9, x22	# 1108
	flw		f7, 0(x23)	# 1108
	fmul	f8, f5, f7	# 1108
	fadd	f8, f8, f3	# 1108
	fle		f8, f1, fle.32914	# 124
	jal		x0, fle_cont.32913	# 124
fle.32914:
	fsub	f8, f0, f8	# 124
fle_cont.32913:
	lw		x16, 16(x16)	# 443
	add		x22, x16, x22	# 448
	flw		f9, 0(x22)	# 448
	fle		f9, f8, fle.32916	# 125
	addi	x22, x20, 0	# 1109
	add		x23, x9, x22	# 1109
	flw		f8, 0(x23)	# 1109
	fmul	f8, f5, f8	# 1109
	fadd	f8, f8, f4	# 1109
	fle		f8, f1, fle.32918	# 124
	jal		x0, fle_cont.32917	# 124
fle.32918:
	fsub	f8, f0, f8	# 124
fle_cont.32917:
	addi	x23, x16, 0	# 453
	add		x22, x23, x22	# 458
	flw		f10, 0(x22)	# 458
	fle		f10, f8, fle.32920	# 125
	feq		f6, f1, feq.32922	# 120
	addi	x22, x0, 1	# 1110
	jal		x0, fle_cont.32915	# 120
feq.32922:
	addi	x22, x0, 0	# 1110
	jal		x0, fle_cont.32915	# 125
fle.32920:
	addi	x22, x0, 0	# 1111
	jal		x0, fle_cont.32915	# 125
fle.32916:
	addi	x22, x0, 0	# 1112
fle_cont.32915:
	beq		x22, x12, beq.32924	# 1107
	addi	x8, x17, 0	# 1114
	addi	x8, x8, 64336	# 1114
	fsw		f5, 0(x8)	# 1114
	addi	x8, x0, 1	# 1114
	jal		x0, beq_cont.32901	# 1107
beq.32924:
	addi	x22, x20, 0	# 1115
	add		x23, x21, x22	# 1115
	flw		f5, 0(x23)	# 1115
	fsub	f5, f5, f3	# 1115
	mul		x11, x30, x11	# 1115
	add		x11, x21, x11	# 1115
	flw		f6, 0(x11)	# 1115
	fmul	f5, f5, f6	# 1115
	addi	x11, x17, 0	# 1117
	add		x17, x9, x11	# 1117
	flw		f8, 0(x17)	# 1117
	fmul	f10, f5, f8	# 1117
	fadd	f10, f10, f2	# 1117
	fle		f10, f1, fle.32926	# 124
	jal		x0, fle_cont.32925	# 124
fle.32926:
	fsub	f10, f0, f10	# 124
fle_cont.32925:
	add		x17, x16, x11	# 438
	flw		f11, 0(x17)	# 438
	fle		f11, f10, fle.32928	# 125
	addi	x17, x22, 0	# 1118
	add		x9, x9, x17	# 1118
	flw		f10, 0(x9)	# 1118
	fmul	f10, f5, f10	# 1118
	fadd	f10, f10, f4	# 1118
	fle		f10, f1, fle.32930	# 124
	jal		x0, fle_cont.32929	# 124
fle.32930:
	fsub	f10, f0, f10	# 124
fle_cont.32929:
	addi	x9, x16, 0	# 453
	addi	x16, x17, 0	# 458
	add		x9, x9, x16	# 458
	flw		f12, 0(x9)	# 458
	fle		f12, f10, fle.32932	# 125
	feq		f6, f1, feq.32934	# 120
	addi	x9, x0, 1	# 1119
	jal		x0, fle_cont.32927	# 120
feq.32934:
	addi	x9, x0, 0	# 1119
	jal		x0, fle_cont.32927	# 125
fle.32932:
	addi	x9, x0, 0	# 1120
	jal		x0, fle_cont.32927	# 125
fle.32928:
	addi	x9, x0, 0	# 1121
fle_cont.32927:
	beq		x9, x12, beq.32936	# 1116
	addi	x8, x11, 0	# 1123
	addi	x8, x8, 64336	# 1123
	fsw		f5, 0(x8)	# 1123
	addi	x8, x0, 2	# 1123
	jal		x0, beq_cont.32901	# 1116
beq.32936:
	addi	x9, x0, 4	# 1124
	mul		x9, x30, x9	# 1124
	add		x9, x21, x9	# 1124
	flw		f5, 0(x9)	# 1124
	fsub	f4, f5, f4	# 1124
	mul		x8, x30, x8	# 1124
	add		x8, x21, x8	# 1124
	flw		f5, 0(x8)	# 1124
	fmul	f4, f4, f5	# 1124
	fmul	f6, f4, f8	# 1126
	fadd	f2, f6, f2	# 1126
	fle		f2, f1, fle.32938	# 124
	jal		x0, fle_cont.32937	# 124
fle.32938:
	fsub	f2, f0, f2	# 124
fle_cont.32937:
	fle		f11, f2, fle.32940	# 125
	fmul	f2, f4, f7	# 1127
	fadd	f2, f2, f3	# 1127
	fle		f2, f1, fle.32942	# 124
	jal		x0, fle_cont.32941	# 124
fle.32942:
	fsub	f2, f0, f2	# 124
fle_cont.32941:
	fle		f9, f2, fle.32944	# 125
	feq		f5, f1, feq.32946	# 120
	addi	x8, x0, 1	# 1128
	jal		x0, fle_cont.32939	# 120
feq.32946:
	addi	x8, x0, 0	# 1128
	jal		x0, fle_cont.32939	# 125
fle.32944:
	addi	x8, x0, 0	# 1129
	jal		x0, fle_cont.32939	# 125
fle.32940:
	addi	x8, x0, 0	# 1130
fle_cont.32939:
	beq		x8, x12, beq.32948	# 1125
	addi	x8, x11, 0	# 1132
	addi	x8, x8, 64336	# 1132
	fsw		f4, 0(x8)	# 1132
	addi	x8, x0, 3	# 1132
	jal		x0, beq_cont.32901	# 1125
beq.32948:
	addi	x8, x0, 0	# 1134
beq_cont.32901:
	beq		x8, x12, beq.32949	# 1605
	addi	x9, x18, 0	# 1609
	addi	x10, x9, 64336	# 1609
	flw		f2, 0(x10)	# 1609
	sw		x6, -36(x2)	# 125
	sw		x5, -32(x2)	# 125
	sw		x29, -4(x2)	# 125
	sw		x13, -40(x2)	# 125
	sw		x4, -112(x2)	# 125
	fle		f2, f1, fle_cont.32950	# 125
	addi	x10, x9, 64344	# 1612
	flw		f1, 0(x10)	# 1612
	fle		f1, f2, fle_cont.32950	# 125
	fadd	f1, f2, f16	# 1614
	add		x10, x14, x9	# 1615
	flw		f2, 0(x10)	# 1615
	fmul	f2, f2, f1	# 1615
	addi	x10, x9, 64444	# 1615
	flw		f3, 0(x10)	# 1615
	fadd	f2, f2, f3	# 1615
	addi	x10, x19, 0	# 1616
	add		x11, x14, x10	# 1616
	flw		f3, 0(x11)	# 1616
	fmul	f3, f3, f1	# 1616
	addi	x11, x10, 64444	# 1616
	flw		f4, 0(x11)	# 1616
	fadd	f3, f3, f4	# 1616
	addi	x11, x20, 0	# 1617
	add		x14, x14, x11	# 1617
	flw		f4, 0(x14)	# 1617
	fmul	f4, f4, f1	# 1617
	addi	x14, x11, 64444	# 1617
	flw		f5, 0(x14)	# 1617
	fadd	f4, f4, f5	# 1617
	sw		x8, -116(x2)	# 1618
	sw		x15, -120(x2)	# 1618
	fsw		f4, -124(x2)	# 1618
	sw		x11, -128(x2)	# 1618
	fsw		f3, -132(x2)	# 1618
	sw		x10, -136(x2)	# 1618
	fsw		f2, -140(x2)	# 1618
	fsw		f1, -144(x2)	# 1618
	sw		x9, -148(x2)	# 1618
	sw		x12, -20(x2)	# 1618
	addi	x4, x12, 0	# 1618
	addi	x29, x7, 0	# 1618
	fadd	f1, f0, f2	# 1618
	fadd	f2, f0, f3	# 1618
	fadd	f3, f0, f4	# 1618
	sw		x1, -152(x2)	# 1618
	addi	x2, x2, -156	# 1618
	lw		x31, 0(x29)	# 1618
	jalr	x1, x31, 0	# 1618
	addi	x2, x2, 156	# 1618
	lw		x1, -152(x2)	# 1618
	lw		x5, -20(x2)	# 1618
	beq		x4, x5, fle_cont.32950	# 1618
	lw		x4, -148(x2)	# 1620
	addi	x5, x4, 64344	# 1620
	flw		f1, -144(x2)	# 1620
	fsw		f1, 0(x5)	# 1620
	addi	x5, x4, 64348	# 282
	flw		f1, -140(x2)	# 282
	fsw		f1, 0(x5)	# 282
	lw		x5, -136(x2)	# 283
	addi	x5, x5, 64348	# 283
	flw		f1, -132(x2)	# 283
	fsw		f1, 0(x5)	# 283
	lw		x5, -128(x2)	# 284
	addi	x5, x5, 64348	# 284
	flw		f1, -124(x2)	# 284
	fsw		f1, 0(x5)	# 284
	addi	x5, x4, 64360	# 1622
	lw		x6, -120(x2)	# 1622
	sw		x6, 0(x5)	# 1622
	addi	x4, x4, 64340	# 1623
	lw		x5, -116(x2)	# 1623
	sw		x5, 0(x4)	# 1623
	jal		x0, fle_cont.32950	# 1618
	jal		x0, fle_cont.32950	# 125
	jal		x0, fle_cont.32950	# 125
fle_cont.32950:
	lw		x4, -112(x2)	# 1629
	lw		x5, -40(x2)	# 1629
	add		x4, x4, x5	# 1629
	lw		x5, -32(x2)	# 1629
	lw		x6, -36(x2)	# 1629
	lw		x29, -4(x2)	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x0, x31, 0	# 1629
beq.32949:
	addi	x7, x10, 0	# 1633
	addi	x7, x7, 63844	# 1633
	lw		x7, 0(x7)	# 1633
	lw		x7, 24(x7)	# 415
	beq		x7, x12, beq.32956	# 1633
	add		x4, x4, x13	# 1634
	lw		x31, 0(x29)	# 1634
	jalr	x0, x31, 0	# 1634
beq.32956:
	jalr	x0, x1, 0	# 1635
beq.32900:
	jalr	x0, x1, 0	# 1602
beq.32899:
	jalr	x0, x1, 0	# 1635
beq.32784:
	jalr	x0, x1, 0	# 1602
solve_one_or_network_fast.2821.17942:
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
	beq		x15, x11, beq.32961	# 1642
	mul		x15, x30, x15	# 1643
	addi	x15, x15, 64128	# 1643
	lw		x15, 0(x15)	# 1643
	lw		x16, 0(x6)	# 681
	mul		x17, x30, x13	# 1601
	add		x18, x15, x17	# 1601
	lw		x18, 0(x18)	# 1601
	sw		x29, 0(x2)	# 1602
	sw		x6, -4(x2)	# 1602
	sw		x13, -8(x2)	# 1602
	sw		x7, -12(x2)	# 1602
	sw		x11, -16(x2)	# 1602
	sw		x5, -20(x2)	# 1602
	sw		x14, -24(x2)	# 1602
	sw		x4, -28(x2)	# 1602
	beq		x18, x11, beq_cont.32962	# 1602
	mul		x19, x30, x18	# 1215
	addi	x20, x19, 63844	# 1215
	lw		x20, 0(x20)	# 1215
	lw		x21, 40(x20)	# 590
	add		x22, x21, x17	# 1217
	flw		f2, 0(x22)	# 1217
	mul		x22, x30, x14	# 1218
	add		x23, x21, x22	# 1218
	flw		f3, 0(x23)	# 1218
	mul		x23, x30, x10	# 1219
	add		x24, x21, x23	# 1219
	flw		f4, 0(x24)	# 1219
	lw		x24, 4(x6)	# 687
	add		x24, x24, x19	# 1221
	lw		x24, 0(x24)	# 1221
	lw		x25, 4(x20)	# 395
	beq		x25, x14, beq.32965	# 1223
	beq		x25, x10, beq.32967	# 1225
	addi	x9, x17, 0	# 1197
	add		x10, x24, x9	# 1197
	flw		f5, 0(x10)	# 1197
	feq		f5, f1, feq.32969	# 120
	addi	x10, x22, 0	# 1201
	add		x10, x24, x10	# 1201
	flw		f6, 0(x10)	# 1201
	fmul	f2, f6, f2	# 1201
	addi	x10, x23, 0	# 1201
	add		x10, x24, x10	# 1201
	flw		f6, 0(x10)	# 1201
	fmul	f3, f6, f3	# 1201
	fadd	f2, f2, f3	# 1201
	mul		x10, x30, x12	# 1201
	add		x12, x24, x10	# 1201
	flw		f3, 0(x12)	# 1201
	fmul	f3, f3, f4	# 1201
	fadd	f2, f2, f3	# 1201
	add		x10, x21, x10	# 1202
	flw		f3, 0(x10)	# 1202
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1203
	fsub	f3, f4, f3	# 1203
	fle		f3, f1, fle.32971	# 121
	lw		x10, 24(x20)	# 415
	beq		x10, x13, beq.32973	# 1205
	fsqrt	f3, f3	# 1206
	fadd	f2, f2, f3	# 1206
	addi	x10, x0, 4	# 1206
	mul		x10, x30, x10	# 1206
	add		x10, x24, x10	# 1206
	flw		f3, 0(x10)	# 1206
	fmul	f2, f2, f3	# 1206
	addi	x9, x9, 64336	# 1206
	fsw		f2, 0(x9)	# 1206
	jal		x0, beq_cont.32972	# 1205
beq.32973:
	fsqrt	f3, f3	# 1208
	fsub	f2, f2, f3	# 1208
	addi	x10, x0, 4	# 1208
	mul		x10, x30, x10	# 1208
	add		x10, x24, x10	# 1208
	flw		f3, 0(x10)	# 1208
	fmul	f2, f2, f3	# 1208
	addi	x9, x9, 64336	# 1208
	fsw		f2, 0(x9)	# 1208
beq_cont.32972:
	addi	x9, x0, 1	# 1209
	jal		x0, beq_cont.32964	# 121
fle.32971:
	addi	x9, x0, 0	# 1210
	jal		x0, beq_cont.32964	# 120
feq.32969:
	addi	x9, x0, 0	# 1199
	jal		x0, beq_cont.32964	# 1225
beq.32967:
	addi	x9, x17, 0	# 1188
	add		x10, x24, x9	# 1188
	flw		f2, 0(x10)	# 1188
	fle		f1, f2, fle.32975	# 122
	mul		x10, x30, x12	# 1189
	add		x10, x21, x10	# 1189
	flw		f3, 0(x10)	# 1189
	fmul	f2, f2, f3	# 1189
	addi	x9, x9, 64336	# 1189
	fsw		f2, 0(x9)	# 1189
	addi	x9, x0, 1	# 1190
	jal		x0, beq_cont.32964	# 122
fle.32975:
	addi	x9, x0, 0	# 1191
	jal		x0, beq_cont.32964	# 1223
beq.32965:
	addi	x10, x16, 0	# 681
	addi	x21, x17, 0	# 1106
	add		x25, x24, x21	# 1106
	flw		f5, 0(x25)	# 1106
	fsub	f5, f5, f2	# 1106
	addi	x25, x22, 0	# 1106
	add		x26, x24, x25	# 1106
	flw		f6, 0(x26)	# 1106
	fmul	f5, f5, f6	# 1106
	add		x26, x10, x25	# 1108
	flw		f7, 0(x26)	# 1108
	fmul	f8, f5, f7	# 1108
	fadd	f8, f8, f3	# 1108
	fle		f8, f1, fle.32977	# 124
	jal		x0, fle_cont.32976	# 124
fle.32977:
	fsub	f8, f0, f8	# 124
fle_cont.32976:
	lw		x20, 16(x20)	# 443
	add		x25, x20, x25	# 448
	flw		f9, 0(x25)	# 448
	fle		f9, f8, fle.32979	# 125
	addi	x25, x23, 0	# 1109
	add		x26, x10, x25	# 1109
	flw		f8, 0(x26)	# 1109
	fmul	f8, f5, f8	# 1109
	fadd	f8, f8, f4	# 1109
	fle		f8, f1, fle.32981	# 124
	jal		x0, fle_cont.32980	# 124
fle.32981:
	fsub	f8, f0, f8	# 124
fle_cont.32980:
	addi	x26, x20, 0	# 453
	add		x25, x26, x25	# 458
	flw		f10, 0(x25)	# 458
	fle		f10, f8, fle.32983	# 125
	feq		f6, f1, feq.32985	# 120
	addi	x25, x0, 1	# 1110
	jal		x0, fle_cont.32978	# 120
feq.32985:
	addi	x25, x0, 0	# 1110
	jal		x0, fle_cont.32978	# 125
fle.32983:
	addi	x25, x0, 0	# 1111
	jal		x0, fle_cont.32978	# 125
fle.32979:
	addi	x25, x0, 0	# 1112
fle_cont.32978:
	beq		x25, x13, beq.32987	# 1107
	addi	x9, x21, 0	# 1114
	addi	x9, x9, 64336	# 1114
	fsw		f5, 0(x9)	# 1114
	addi	x9, x0, 1	# 1114
	jal		x0, beq_cont.32964	# 1107
beq.32987:
	addi	x25, x23, 0	# 1115
	add		x26, x24, x25	# 1115
	flw		f5, 0(x26)	# 1115
	fsub	f5, f5, f3	# 1115
	mul		x12, x30, x12	# 1115
	add		x12, x24, x12	# 1115
	flw		f6, 0(x12)	# 1115
	fmul	f5, f5, f6	# 1115
	addi	x12, x21, 0	# 1117
	add		x21, x10, x12	# 1117
	flw		f8, 0(x21)	# 1117
	fmul	f10, f5, f8	# 1117
	fadd	f10, f10, f2	# 1117
	fle		f10, f1, fle.32989	# 124
	jal		x0, fle_cont.32988	# 124
fle.32989:
	fsub	f10, f0, f10	# 124
fle_cont.32988:
	add		x21, x20, x12	# 438
	flw		f11, 0(x21)	# 438
	fle		f11, f10, fle.32991	# 125
	addi	x21, x25, 0	# 1118
	add		x10, x10, x21	# 1118
	flw		f10, 0(x10)	# 1118
	fmul	f10, f5, f10	# 1118
	fadd	f10, f10, f4	# 1118
	fle		f10, f1, fle.32993	# 124
	jal		x0, fle_cont.32992	# 124
fle.32993:
	fsub	f10, f0, f10	# 124
fle_cont.32992:
	addi	x10, x20, 0	# 453
	addi	x20, x21, 0	# 458
	add		x10, x10, x20	# 458
	flw		f12, 0(x10)	# 458
	fle		f12, f10, fle.32995	# 125
	feq		f6, f1, feq.32997	# 120
	addi	x10, x0, 1	# 1119
	jal		x0, fle_cont.32990	# 120
feq.32997:
	addi	x10, x0, 0	# 1119
	jal		x0, fle_cont.32990	# 125
fle.32995:
	addi	x10, x0, 0	# 1120
	jal		x0, fle_cont.32990	# 125
fle.32991:
	addi	x10, x0, 0	# 1121
fle_cont.32990:
	beq		x10, x13, beq.32999	# 1116
	addi	x9, x12, 0	# 1123
	addi	x9, x9, 64336	# 1123
	fsw		f5, 0(x9)	# 1123
	addi	x9, x0, 2	# 1123
	jal		x0, beq_cont.32964	# 1116
beq.32999:
	addi	x10, x0, 4	# 1124
	mul		x10, x30, x10	# 1124
	add		x10, x24, x10	# 1124
	flw		f5, 0(x10)	# 1124
	fsub	f4, f5, f4	# 1124
	mul		x9, x30, x9	# 1124
	add		x9, x24, x9	# 1124
	flw		f5, 0(x9)	# 1124
	fmul	f4, f4, f5	# 1124
	fmul	f6, f4, f8	# 1126
	fadd	f2, f6, f2	# 1126
	fle		f2, f1, fle.33001	# 124
	jal		x0, fle_cont.33000	# 124
fle.33001:
	fsub	f2, f0, f2	# 124
fle_cont.33000:
	fle		f11, f2, fle.33003	# 125
	fmul	f2, f4, f7	# 1127
	fadd	f2, f2, f3	# 1127
	fle		f2, f1, fle.33005	# 124
	jal		x0, fle_cont.33004	# 124
fle.33005:
	fsub	f2, f0, f2	# 124
fle_cont.33004:
	fle		f9, f2, fle.33007	# 125
	feq		f5, f1, feq.33009	# 120
	addi	x9, x0, 1	# 1128
	jal		x0, fle_cont.33002	# 120
feq.33009:
	addi	x9, x0, 0	# 1128
	jal		x0, fle_cont.33002	# 125
fle.33007:
	addi	x9, x0, 0	# 1129
	jal		x0, fle_cont.33002	# 125
fle.33003:
	addi	x9, x0, 0	# 1130
fle_cont.33002:
	beq		x9, x13, beq.33011	# 1125
	addi	x9, x12, 0	# 1132
	addi	x9, x9, 64336	# 1132
	fsw		f4, 0(x9)	# 1132
	addi	x9, x0, 3	# 1132
	jal		x0, beq_cont.32964	# 1125
beq.33011:
	addi	x9, x0, 0	# 1134
beq_cont.32964:
	beq		x9, x13, beq.33013	# 1605
	addi	x10, x17, 0	# 1609
	addi	x12, x10, 64336	# 1609
	flw		f2, 0(x12)	# 1609
	sw		x15, -32(x2)	# 125
	fle		f2, f1, fle_cont.33014	# 125
	addi	x12, x10, 64344	# 1612
	flw		f1, 0(x12)	# 1612
	fle		f1, f2, fle_cont.33014	# 125
	fadd	f1, f2, f16	# 1614
	add		x12, x16, x10	# 1615
	flw		f2, 0(x12)	# 1615
	fmul	f2, f2, f1	# 1615
	addi	x12, x10, 64444	# 1615
	flw		f3, 0(x12)	# 1615
	fadd	f2, f2, f3	# 1615
	addi	x12, x22, 0	# 1616
	add		x17, x16, x12	# 1616
	flw		f3, 0(x17)	# 1616
	fmul	f3, f3, f1	# 1616
	addi	x17, x12, 64444	# 1616
	flw		f4, 0(x17)	# 1616
	fadd	f3, f3, f4	# 1616
	addi	x17, x23, 0	# 1617
	add		x16, x16, x17	# 1617
	flw		f4, 0(x16)	# 1617
	fmul	f4, f4, f1	# 1617
	addi	x16, x17, 0	# 1617
	addi	x17, x16, 64444	# 1617
	flw		f5, 0(x17)	# 1617
	fadd	f4, f4, f5	# 1617
	sw		x9, -36(x2)	# 1618
	fsw		f4, -40(x2)	# 1618
	fsw		f3, -44(x2)	# 1618
	sw		x12, -48(x2)	# 1618
	fsw		f2, -52(x2)	# 1618
	fsw		f1, -56(x2)	# 1618
	sw		x10, -60(x2)	# 1618
	addi	x5, x15, 0	# 1618
	addi	x4, x13, 0	# 1618
	addi	x29, x8, 0	# 1618
	fadd	f1, f0, f2	# 1618
	fadd	f2, f0, f3	# 1618
	fadd	f3, f0, f4	# 1618
	sw		x1, -64(x2)	# 1618
	addi	x2, x2, -68	# 1618
	lw		x31, 0(x29)	# 1618
	jalr	x1, x31, 0	# 1618
	addi	x2, x2, 68	# 1618
	lw		x1, -64(x2)	# 1618
	lw		x5, -8(x2)	# 1618
	beq		x4, x5, fle_cont.33014	# 1618
	lw		x4, -60(x2)	# 1620
	addi	x6, x4, 64344	# 1620
	flw		f1, -56(x2)	# 1620
	fsw		f1, 0(x6)	# 1620
	addi	x6, x4, 64348	# 282
	flw		f1, -52(x2)	# 282
	fsw		f1, 0(x6)	# 282
	lw		x6, -48(x2)	# 283
	addi	x6, x6, 64348	# 283
	flw		f1, -44(x2)	# 283
	fsw		f1, 0(x6)	# 283
	addi	x6, x16, 0	# 284
	addi	x6, x6, 64348	# 284
	flw		f1, -40(x2)	# 284
	fsw		f1, 0(x6)	# 284
	addi	x6, x4, 64360	# 1622
	sw		x18, 0(x6)	# 1622
	addi	x4, x4, 64340	# 1623
	lw		x6, -36(x2)	# 1623
	sw		x6, 0(x4)	# 1623
	jal		x0, fle_cont.33014	# 1618
	jal		x0, fle_cont.33014	# 125
	jal		x0, fle_cont.33014	# 125
fle_cont.33014:
	lw		x4, -24(x2)	# 1629
	lw		x5, -32(x2)	# 1629
	lw		x6, -4(x2)	# 1629
	lw		x29, -12(x2)	# 1629
	sw		x1, -64(x2)	# 1629
	addi	x2, x2, -68	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x1, x31, 0	# 1629
	addi	x2, x2, 68	# 1629
	lw		x1, -64(x2)	# 1629
	jal		x0, beq_cont.32962	# 1605
beq.33013:
	addi	x8, x19, 0	# 1633
	addi	x8, x8, 63844	# 1633
	lw		x8, 0(x8)	# 1633
	lw		x8, 24(x8)	# 415
	beq		x8, x13, beq_cont.32962	# 1633
	addi	x5, x15, 0	# 1634
	addi	x4, x14, 0	# 1634
	addi	x29, x7, 0	# 1634
	sw		x1, -64(x2)	# 1634
	addi	x2, x2, -68	# 1634
	lw		x31, 0(x29)	# 1634
	jalr	x1, x31, 0	# 1634
	addi	x2, x2, 68	# 1634
	lw		x1, -64(x2)	# 1634
	jal		x0, beq_cont.32962	# 1633
	jal		x0, beq_cont.32962	# 1602
beq_cont.32962:
	lw		x4, -28(x2)	# 1645
	lw		x5, -24(x2)	# 1645
	add		x4, x4, x5	# 1645
	mul		x6, x30, x4	# 1641
	lw		x7, -20(x2)	# 1641
	add		x6, x7, x6	# 1641
	lw		x6, 0(x6)	# 1641
	lw		x8, -16(x2)	# 1642
	beq		x6, x8, beq.33022	# 1642
	mul		x6, x30, x6	# 1643
	addi	x6, x6, 64128	# 1643
	lw		x6, 0(x6)	# 1643
	lw		x8, -8(x2)	# 1644
	lw		x9, -4(x2)	# 1644
	lw		x29, -12(x2)	# 1644
	sw		x4, -64(x2)	# 1644
	addi	x5, x6, 0	# 1644
	addi	x4, x8, 0	# 1644
	addi	x6, x9, 0	# 1644
	sw		x1, -68(x2)	# 1644
	addi	x2, x2, -72	# 1644
	lw		x31, 0(x29)	# 1644
	jalr	x1, x31, 0	# 1644
	addi	x2, x2, 72	# 1644
	lw		x1, -68(x2)	# 1644
	lw		x4, -64(x2)	# 1645
	lw		x5, -24(x2)	# 1645
	add		x4, x4, x5	# 1645
	lw		x5, -20(x2)	# 1645
	lw		x6, -4(x2)	# 1645
	lw		x29, 0(x2)	# 1645
	lw		x31, 0(x29)	# 1645
	jalr	x0, x31, 0	# 1645
beq.33022:
	jalr	x0, x1, 0	# 1646
beq.32961:
	jalr	x0, x1, 0	# 1646
trace_or_matrix_fast.2825.17946:
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
	add		x17, x15, x16	# 1652
	lw		x17, 0(x17)	# 1652
	beq		x17, x11, beq.33025	# 1653
	addi	x18, x0, 99	# 1656
	sw		x6, 0(x2)	# 1656
	sw		x5, -4(x2)	# 1656
	sw		x29, -8(x2)	# 1656
	sw		x14, -12(x2)	# 1656
	sw		x4, -16(x2)	# 1656
	beq		x17, x18, beq.33027	# 1656
	mul		x17, x30, x17	# 1215
	addi	x18, x17, 63844	# 1215
	lw		x18, 0(x18)	# 1215
	lw		x19, 40(x18)	# 590
	add		x20, x19, x16	# 1217
	flw		f2, 0(x20)	# 1217
	mul		x20, x30, x14	# 1218
	add		x21, x19, x20	# 1218
	flw		f3, 0(x21)	# 1218
	mul		x21, x30, x10	# 1219
	add		x22, x19, x21	# 1219
	flw		f4, 0(x22)	# 1219
	lw		x22, 4(x6)	# 687
	add		x17, x22, x17	# 1221
	lw		x17, 0(x17)	# 1221
	lw		x22, 4(x18)	# 395
	beq		x22, x14, beq.33029	# 1223
	beq		x22, x10, beq.33031	# 1225
	addi	x9, x16, 0	# 1197
	add		x22, x17, x9	# 1197
	flw		f5, 0(x22)	# 1197
	feq		f5, f1, feq.33033	# 120
	addi	x22, x20, 0	# 1201
	add		x22, x17, x22	# 1201
	flw		f6, 0(x22)	# 1201
	fmul	f2, f6, f2	# 1201
	add		x21, x17, x21	# 1201
	flw		f6, 0(x21)	# 1201
	fmul	f3, f6, f3	# 1201
	fadd	f2, f2, f3	# 1201
	mul		x12, x30, x12	# 1201
	add		x21, x17, x12	# 1201
	flw		f3, 0(x21)	# 1201
	fmul	f3, f3, f4	# 1201
	fadd	f2, f2, f3	# 1201
	add		x12, x19, x12	# 1202
	flw		f3, 0(x12)	# 1202
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1203
	fsub	f3, f4, f3	# 1203
	fle		f3, f1, fle.33035	# 121
	lw		x12, 24(x18)	# 415
	beq		x12, x13, beq.33037	# 1205
	fsqrt	f1, f3	# 1206
	fadd	f1, f2, f1	# 1206
	addi	x12, x0, 4	# 1206
	mul		x12, x30, x12	# 1206
	add		x12, x17, x12	# 1206
	flw		f2, 0(x12)	# 1206
	fmul	f1, f1, f2	# 1206
	addi	x9, x9, 64336	# 1206
	fsw		f1, 0(x9)	# 1206
	jal		x0, beq_cont.33036	# 1205
beq.33037:
	fsqrt	f1, f3	# 1208
	fsub	f1, f2, f1	# 1208
	addi	x12, x0, 4	# 1208
	mul		x12, x30, x12	# 1208
	add		x12, x17, x12	# 1208
	flw		f2, 0(x12)	# 1208
	fmul	f1, f1, f2	# 1208
	addi	x9, x9, 64336	# 1208
	fsw		f1, 0(x9)	# 1208
beq_cont.33036:
	addi	x9, x0, 1	# 1209
	jal		x0, beq_cont.33028	# 121
fle.33035:
	addi	x9, x0, 0	# 1210
	jal		x0, beq_cont.33028	# 120
feq.33033:
	addi	x9, x0, 0	# 1199
	jal		x0, beq_cont.33028	# 1225
beq.33031:
	addi	x9, x16, 0	# 1188
	add		x17, x17, x9	# 1188
	flw		f2, 0(x17)	# 1188
	fle		f1, f2, fle.33039	# 122
	mul		x12, x30, x12	# 1189
	add		x12, x19, x12	# 1189
	flw		f1, 0(x12)	# 1189
	fmul	f1, f2, f1	# 1189
	addi	x9, x9, 64336	# 1189
	fsw		f1, 0(x9)	# 1189
	addi	x9, x0, 1	# 1190
	jal		x0, beq_cont.33028	# 122
fle.33039:
	addi	x9, x0, 0	# 1191
	jal		x0, beq_cont.33028	# 1223
beq.33029:
	lw		x19, 0(x6)	# 681
	addi	x22, x16, 0	# 1106
	add		x23, x17, x22	# 1106
	flw		f5, 0(x23)	# 1106
	fsub	f5, f5, f2	# 1106
	addi	x23, x20, 0	# 1106
	add		x24, x17, x23	# 1106
	flw		f6, 0(x24)	# 1106
	fmul	f5, f5, f6	# 1106
	add		x24, x19, x23	# 1108
	flw		f7, 0(x24)	# 1108
	fmul	f8, f5, f7	# 1108
	fadd	f8, f8, f3	# 1108
	fle		f8, f1, fle.33041	# 124
	jal		x0, fle_cont.33040	# 124
fle.33041:
	fsub	f8, f0, f8	# 124
fle_cont.33040:
	lw		x18, 16(x18)	# 443
	add		x24, x18, x23	# 448
	flw		f9, 0(x24)	# 448
	fle		f9, f8, fle.33043	# 125
	addi	x24, x21, 0	# 1109
	add		x25, x19, x24	# 1109
	flw		f8, 0(x25)	# 1109
	fmul	f8, f5, f8	# 1109
	fadd	f8, f8, f4	# 1109
	fle		f8, f1, fle.33045	# 124
	jal		x0, fle_cont.33044	# 124
fle.33045:
	fsub	f8, f0, f8	# 124
fle_cont.33044:
	addi	x25, x18, 0	# 453
	add		x24, x25, x24	# 458
	flw		f9, 0(x24)	# 458
	fle		f9, f8, fle.33047	# 125
	feq		f6, f1, feq.33049	# 120
	addi	x24, x0, 1	# 1110
	jal		x0, fle_cont.33042	# 120
feq.33049:
	addi	x24, x0, 0	# 1110
	jal		x0, fle_cont.33042	# 125
fle.33047:
	addi	x24, x0, 0	# 1111
	jal		x0, fle_cont.33042	# 125
fle.33043:
	addi	x24, x0, 0	# 1112
fle_cont.33042:
	beq		x24, x13, beq.33051	# 1107
	addi	x9, x22, 0	# 1114
	addi	x9, x9, 64336	# 1114
	fsw		f5, 0(x9)	# 1114
	addi	x9, x0, 1	# 1114
	jal		x0, beq_cont.33028	# 1107
beq.33051:
	add		x24, x17, x21	# 1115
	flw		f5, 0(x24)	# 1115
	fsub	f5, f5, f3	# 1115
	mul		x12, x30, x12	# 1115
	add		x12, x17, x12	# 1115
	flw		f6, 0(x12)	# 1115
	fmul	f5, f5, f6	# 1115
	addi	x12, x22, 0	# 1117
	add		x22, x19, x12	# 1117
	flw		f8, 0(x22)	# 1117
	fmul	f9, f5, f8	# 1117
	fadd	f9, f9, f2	# 1117
	fle		f9, f1, fle.33053	# 124
	jal		x0, fle_cont.33052	# 124
fle.33053:
	fsub	f9, f0, f9	# 124
fle_cont.33052:
	add		x22, x18, x12	# 438
	flw		f10, 0(x22)	# 438
	fle		f10, f9, fle.33055	# 125
	add		x19, x19, x21	# 1118
	flw		f9, 0(x19)	# 1118
	fmul	f9, f5, f9	# 1118
	fadd	f9, f9, f4	# 1118
	fle		f9, f1, fle.33057	# 124
	jal		x0, fle_cont.33056	# 124
fle.33057:
	fsub	f9, f0, f9	# 124
fle_cont.33056:
	addi	x19, x18, 0	# 453
	add		x19, x19, x21	# 458
	flw		f10, 0(x19)	# 458
	fle		f10, f9, fle.33059	# 125
	feq		f6, f1, feq.33061	# 120
	addi	x19, x0, 1	# 1119
	jal		x0, fle_cont.33054	# 120
feq.33061:
	addi	x19, x0, 0	# 1119
	jal		x0, fle_cont.33054	# 125
fle.33059:
	addi	x19, x0, 0	# 1120
	jal		x0, fle_cont.33054	# 125
fle.33055:
	addi	x19, x0, 0	# 1121
fle_cont.33054:
	beq		x19, x13, beq.33063	# 1116
	addi	x9, x12, 0	# 1123
	addi	x9, x9, 64336	# 1123
	fsw		f5, 0(x9)	# 1123
	addi	x9, x0, 2	# 1123
	jal		x0, beq_cont.33028	# 1116
beq.33063:
	addi	x19, x0, 4	# 1124
	mul		x19, x30, x19	# 1124
	add		x19, x17, x19	# 1124
	flw		f5, 0(x19)	# 1124
	fsub	f4, f5, f4	# 1124
	mul		x9, x30, x9	# 1124
	add		x9, x17, x9	# 1124
	flw		f5, 0(x9)	# 1124
	fmul	f4, f4, f5	# 1124
	fmul	f6, f4, f8	# 1126
	fadd	f2, f6, f2	# 1126
	fle		f2, f1, fle.33065	# 124
	jal		x0, fle_cont.33064	# 124
fle.33065:
	fsub	f2, f0, f2	# 124
fle_cont.33064:
	addi	x9, x18, 0	# 433
	add		x17, x9, x12	# 438
	flw		f6, 0(x17)	# 438
	fle		f6, f2, fle.33067	# 125
	fmul	f2, f4, f7	# 1127
	fadd	f2, f2, f3	# 1127
	fle		f2, f1, fle.33069	# 124
	jal		x0, fle_cont.33068	# 124
fle.33069:
	fsub	f2, f0, f2	# 124
fle_cont.33068:
	addi	x17, x23, 0	# 448
	add		x9, x9, x17	# 448
	flw		f3, 0(x9)	# 448
	fle		f3, f2, fle.33071	# 125
	feq		f5, f1, feq.33073	# 120
	addi	x9, x0, 1	# 1128
	jal		x0, fle_cont.33066	# 120
feq.33073:
	addi	x9, x0, 0	# 1128
	jal		x0, fle_cont.33066	# 125
fle.33071:
	addi	x9, x0, 0	# 1129
	jal		x0, fle_cont.33066	# 125
fle.33067:
	addi	x9, x0, 0	# 1130
fle_cont.33066:
	beq		x9, x13, beq.33075	# 1125
	addi	x9, x12, 0	# 1132
	addi	x9, x9, 64336	# 1132
	fsw		f4, 0(x9)	# 1132
	addi	x9, x0, 3	# 1132
	jal		x0, beq_cont.33028	# 1125
beq.33075:
	addi	x9, x0, 0	# 1134
beq_cont.33028:
	beq		x9, x13, beq_cont.33026	# 1662
	addi	x9, x16, 0	# 1663
	addi	x12, x9, 64336	# 1663
	flw		f1, 0(x12)	# 1663
	addi	x9, x9, 64344	# 1664
	flw		f2, 0(x9)	# 1664
	fle		f2, f1, beq_cont.33026	# 125
	addi	x9, x20, 0	# 1641
	add		x9, x15, x9	# 1641
	lw		x9, 0(x9)	# 1641
	beq		x9, x11, beq_cont.33026	# 1642
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
	jal		x0, beq_cont.33026	# 1642
	jal		x0, beq_cont.33026	# 125
	jal		x0, beq_cont.33026	# 1662
	jal		x0, beq_cont.33026	# 1656
beq.33027:
	mul		x9, x30, x14	# 1641
	add		x9, x15, x9	# 1641
	lw		x9, 0(x9)	# 1641
	beq		x9, x11, beq_cont.33026	# 1642
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
	jal		x0, beq_cont.33026	# 1642
beq_cont.33026:
	lw		x4, -16(x2)	# 1669
	lw		x5, -12(x2)	# 1669
	add		x4, x4, x5	# 1669
	lw		x5, -4(x2)	# 1669
	lw		x6, 0(x2)	# 1669
	lw		x29, -8(x2)	# 1669
	lw		x31, 0(x29)	# 1669
	jalr	x0, x31, 0	# 1669
beq.33025:
	jalr	x0, x1, 0	# 1654
trace_reflections.2847.17950:
	lw		x6, 28(x29)	# 1846
	lw		x7, 24(x29)	# 1846
	lw		x8, 20(x29)	# 1846
	lw		x9, 16(x29)	# 1846
	lw		x10, 12(x29)	# 1846
	flw		f3, 8(x29)	# 1846
	flw		f4, 4(x29)	# 1846
	ble		x9, x4, ble.33085	# 1846
	jalr	x0, x1, 0	# 1866
ble.33085:
	mul		x11, x30, x4	# 1847
	addi	x11, x11, 64812	# 1847
	lw		x11, 0(x11)	# 1847
	lw		x12, 4(x11)	# 703
	mul		x13, x30, x9	# 1676
	addi	x14, x13, 64344	# 1676
	fsw		f3, 0(x14)	# 1676
	addi	x14, x13, 64332	# 1677
	lw		x14, 0(x14)	# 1677
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
	sw		x13, -48(x2)	# 1677
	addi	x5, x14, 0	# 1677
	addi	x4, x9, 0	# 1677
	addi	x29, x6, 0	# 1677
	addi	x6, x12, 0	# 1677
	sw		x1, -52(x2)	# 1677
	addi	x2, x2, -56	# 1677
	lw		x31, 0(x29)	# 1677
	jalr	x1, x31, 0	# 1677
	addi	x2, x2, 56	# 1677
	lw		x1, -52(x2)	# 1677
	lw		x4, -48(x2)	# 1678
	addi	x5, x4, 64344	# 1678
	flw		f1, 0(x5)	# 1678
	fle		f1, f18, fle.33088	# 125
	fle		f19, f1, fle.33090	# 125
	addi	x5, x0, 1	# 125
	jal		x0, fle_cont.33087	# 125
fle.33090:
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.33087	# 125
fle.33088:
	addi	x5, x0, 0	# 1682
fle_cont.33087:
	lw		x6, -44(x2)	# 1851
	beq		x5, x6, beq_cont.33091	# 1851
	addi	x5, x4, 64360	# 1852
	lw		x5, 0(x5)	# 1852
	addi	x7, x0, 4	# 1852
	mul		x5, x5, x7	# 1852
	addi	x7, x4, 64340	# 1852
	lw		x7, 0(x7)	# 1852
	add		x5, x5, x7	# 1852
	lw		x7, -40(x2)	# 697
	lw		x8, 0(x7)	# 697
	beq		x5, x8, beq.33094	# 1853
	jal		x0, beq_cont.33091	# 1853
beq.33094:
	addi	x5, x4, 64332	# 1855
	lw		x5, 0(x5)	# 1855
	lw		x29, -36(x2)	# 1855
	sw		x4, -52(x2)	# 1855
	addi	x4, x6, 0	# 1855
	sw		x1, -56(x2)	# 1855
	addi	x2, x2, -60	# 1855
	lw		x31, 0(x29)	# 1855
	jalr	x1, x31, 0	# 1855
	addi	x2, x2, 60	# 1855
	lw		x1, -56(x2)	# 1855
	lw		x5, -44(x2)	# 1855
	beq		x4, x5, beq.33096	# 1855
	jal		x0, beq_cont.33091	# 1855
beq.33096:
	lw		x4, -32(x2)	# 681
	lw		x4, 0(x4)	# 681
	lw		x5, -52(x2)	# 334
	addi	x6, x5, 64364	# 334
	flw		f1, 0(x6)	# 334
	add		x6, x4, x5	# 334
	flw		f2, 0(x6)	# 334
	fmul	f1, f1, f2	# 334
	lw		x6, -28(x2)	# 334
	mul		x7, x30, x6	# 334
	addi	x8, x7, 64364	# 334
	flw		f2, 0(x8)	# 334
	add		x8, x4, x7	# 334
	flw		f3, 0(x8)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	lw		x8, -24(x2)	# 334
	mul		x8, x30, x8	# 334
	addi	x9, x8, 64364	# 334
	flw		f2, 0(x9)	# 334
	add		x9, x4, x8	# 334
	flw		f3, 0(x9)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	lw		x9, -40(x2)	# 1859
	flw		f2, 8(x9)	# 1859
	flw		f3, -20(x2)	# 1859
	fmul	f4, f2, f3	# 1859
	fmul	f1, f4, f1	# 1859
	lw		x9, -16(x2)	# 334
	add		x10, x9, x5	# 334
	flw		f4, 0(x10)	# 334
	add		x10, x4, x5	# 334
	flw		f5, 0(x10)	# 334
	fmul	f4, f4, f5	# 334
	add		x10, x9, x7	# 334
	flw		f5, 0(x10)	# 334
	add		x10, x4, x7	# 334
	flw		f6, 0(x10)	# 334
	fmul	f5, f5, f6	# 334
	fadd	f4, f4, f5	# 334
	add		x10, x9, x8	# 334
	flw		f5, 0(x10)	# 334
	add		x4, x4, x8	# 334
	flw		f6, 0(x4)	# 334
	fmul	f5, f5, f6	# 334
	fadd	f4, f4, f5	# 334
	fmul	f2, f2, f4	# 1860
	flw		f4, -12(x2)	# 121
	fle		f1, f4, fle_cont.33097	# 121
	addi	x4, x5, 0	# 344
	addi	x10, x4, 64400	# 344
	flw		f5, 0(x10)	# 344
	addi	x10, x4, 64376	# 344
	flw		f6, 0(x10)	# 344
	fmul	f6, f1, f6	# 344
	fadd	f5, f5, f6	# 344
	addi	x4, x4, 64400	# 344
	fsw		f5, 0(x4)	# 344
	addi	x4, x7, 0	# 345
	addi	x10, x4, 64400	# 345
	flw		f5, 0(x10)	# 345
	addi	x10, x4, 64376	# 345
	flw		f6, 0(x10)	# 345
	fmul	f6, f1, f6	# 345
	fadd	f5, f5, f6	# 345
	addi	x4, x4, 64400	# 345
	fsw		f5, 0(x4)	# 345
	addi	x4, x8, 0	# 346
	addi	x10, x4, 64400	# 346
	flw		f5, 0(x10)	# 346
	addi	x10, x4, 64376	# 346
	flw		f6, 0(x10)	# 346
	fmul	f1, f1, f6	# 346
	fadd	f1, f5, f1	# 346
	addi	x4, x4, 64400	# 346
	fsw		f1, 0(x4)	# 346
	jal		x0, fle_cont.33097	# 121
fle_cont.33097:
	fle		f2, f4, beq_cont.33091	# 121
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -8(x2)	# 1836
	fmul	f1, f1, f2	# 1836
	addi	x4, x5, 0	# 1837
	addi	x5, x4, 64400	# 1837
	flw		f4, 0(x5)	# 1837
	fadd	f4, f4, f1	# 1837
	addi	x4, x4, 64400	# 1837
	fsw		f4, 0(x4)	# 1837
	addi	x4, x7, 0	# 1838
	addi	x5, x4, 64400	# 1838
	flw		f4, 0(x5)	# 1838
	fadd	f4, f4, f1	# 1838
	addi	x4, x4, 64400	# 1838
	fsw		f4, 0(x4)	# 1838
	addi	x4, x8, 0	# 1839
	addi	x5, x4, 64400	# 1839
	flw		f4, 0(x5)	# 1839
	fadd	f1, f4, f1	# 1839
	addi	x4, x4, 64400	# 1839
	fsw		f1, 0(x4)	# 1839
	jal		x0, beq_cont.33091	# 121
	jal		x0, beq_cont.33091	# 1851
beq_cont.33091:
	lw		x4, -4(x2)	# 1865
	lw		x5, -28(x2)	# 1865
	sub		x4, x4, x5	# 1865
	lw		x5, -16(x2)	# 1865
	flw		f1, -20(x2)	# 1865
	flw		f2, -8(x2)	# 1865
	lw		x29, 0(x2)	# 1865
	lw		x31, 0(x29)	# 1865
	jalr	x0, x31, 0	# 1865
trace_ray.2852.17955:
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
	ble		x4, x19, ble.33101	# 1874
	jalr	x0, x1, 0	# 1955
ble.33101:
	lw		x20, 8(x6)	# 619
	mul		x21, x30, x17	# 1585
	addi	x22, x21, 64344	# 1585
	fsw		f3, 0(x22)	# 1585
	addi	x22, x21, 64332	# 1586
	lw		x22, 0(x22)	# 1586
	sw		x29, 0(x2)	# 1586
	fsw		f2, -4(x2)	# 1586
	sw		x7, -8(x2)	# 1586
	sw		x11, -12(x2)	# 1586
	sw		x10, -16(x2)	# 1586
	sw		x6, -20(x2)	# 1586
	sw		x13, -24(x2)	# 1586
	sw		x19, -28(x2)	# 1586
	sw		x12, -32(x2)	# 1586
	sw		x16, -36(x2)	# 1586
	sw		x9, -40(x2)	# 1586
	fsw		f4, -44(x2)	# 1586
	fsw		f1, -48(x2)	# 1586
	fsw		f5, -52(x2)	# 1586
	sw		x14, -56(x2)	# 1586
	sw		x18, -60(x2)	# 1586
	sw		x5, -64(x2)	# 1586
	sw		x15, -68(x2)	# 1586
	sw		x20, -72(x2)	# 1586
	sw		x4, -76(x2)	# 1586
	sw		x17, -80(x2)	# 1586
	sw		x21, -84(x2)	# 1586
	addi	x6, x5, 0	# 1586
	addi	x4, x17, 0	# 1586
	addi	x29, x8, 0	# 1586
	addi	x5, x22, 0	# 1586
	sw		x1, -88(x2)	# 1586
	addi	x2, x2, -92	# 1586
	lw		x31, 0(x29)	# 1586
	jalr	x1, x31, 0	# 1586
	addi	x2, x2, 92	# 1586
	lw		x1, -88(x2)	# 1586
	lw		x4, -84(x2)	# 1587
	addi	x5, x4, 64344	# 1587
	flw		f1, 0(x5)	# 1587
	fle		f1, f18, fle.33104	# 125
	fle		f19, f1, fle.33106	# 125
	addi	x5, x0, 1	# 125
	jal		x0, fle_cont.33103	# 125
fle.33106:
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.33103	# 125
fle.33104:
	addi	x5, x0, 0	# 1591
fle_cont.33103:
	lw		x6, -80(x2)	# 1876
	beq		x5, x6, beq.33107	# 1876
	addi	x5, x4, 64360	# 1878
	lw		x5, 0(x5)	# 1878
	mul		x7, x30, x5	# 1879
	addi	x7, x7, 63844	# 1879
	lw		x7, 0(x7)	# 1879
	lw		x8, 8(x7)	# 405
	lw		x9, 28(x7)	# 503
	add		x9, x9, x4	# 508
	flw		f1, 0(x9)	# 508
	flw		f2, -48(x2)	# 1881
	fmul	f1, f1, f2	# 1881
	lw		x9, 4(x7)	# 395
	lw		x10, -60(x2)	# 1735
	beq		x9, x10, beq.33109	# 1735
	lw		x11, -56(x2)	# 1737
	beq		x9, x11, beq.33111	# 1737
	addi	x9, x4, 0	# 1712
	addi	x12, x9, 64348	# 1712
	flw		f3, 0(x12)	# 1712
	lw		x12, 20(x7)	# 473
	add		x13, x12, x9	# 478
	flw		f4, 0(x13)	# 478
	fsub	f3, f3, f4	# 1712
	mul		x13, x30, x10	# 1713
	addi	x14, x13, 64348	# 1713
	flw		f4, 0(x14)	# 1713
	add		x14, x12, x13	# 488
	flw		f5, 0(x14)	# 488
	fsub	f4, f4, f5	# 1713
	mul		x14, x30, x11	# 1714
	addi	x15, x14, 64348	# 1714
	flw		f5, 0(x15)	# 1714
	add		x12, x12, x14	# 498
	flw		f6, 0(x12)	# 498
	fsub	f5, f5, f6	# 1714
	lw		x12, 16(x7)	# 433
	add		x15, x12, x9	# 438
	flw		f6, 0(x15)	# 438
	fmul	f6, f3, f6	# 1716
	add		x15, x12, x13	# 448
	flw		f7, 0(x15)	# 448
	fmul	f7, f4, f7	# 1717
	add		x12, x12, x14	# 458
	flw		f8, 0(x12)	# 458
	fmul	f8, f5, f8	# 1718
	lw		x12, 12(x7)	# 424
	beq		x12, x6, beq.33113	# 1720
	lw		x12, 36(x7)	# 573
	addi	x15, x14, 0	# 578
	add		x16, x12, x15	# 578
	flw		f9, 0(x16)	# 578
	fmul	f9, f4, f9	# 1725
	addi	x16, x13, 0	# 568
	add		x12, x12, x16	# 568
	flw		f10, 0(x12)	# 568
	fmul	f10, f5, f10	# 1725
	fadd	f9, f9, f10	# 1725
	fmul	f9, f9, f26	# 126
	fadd	f6, f6, f9	# 1725
	addi	x12, x9, 0	# 1725
	addi	x17, x12, 64364	# 1725
	fsw		f6, 0(x17)	# 1725
	lw		x17, 36(x7)	# 573
	add		x18, x17, x15	# 578
	flw		f6, 0(x18)	# 578
	fmul	f6, f3, f6	# 1726
	add		x17, x17, x12	# 558
	flw		f9, 0(x17)	# 558
	fmul	f5, f5, f9	# 1726
	fadd	f5, f6, f5	# 1726
	fmul	f5, f5, f26	# 126
	fadd	f5, f7, f5	# 1726
	addi	x17, x16, 64364	# 1726
	fsw		f5, 0(x17)	# 1726
	lw		x17, 36(x7)	# 563
	add		x16, x17, x16	# 568
	flw		f5, 0(x16)	# 568
	fmul	f3, f3, f5	# 1727
	addi	x16, x17, 0	# 553
	add		x12, x16, x12	# 558
	flw		f5, 0(x12)	# 558
	fmul	f4, f4, f5	# 1727
	fadd	f3, f3, f4	# 1727
	fmul	f3, f3, f26	# 126
	fadd	f3, f8, f3	# 1727
	addi	x12, x15, 0	# 1727
	addi	x12, x12, 64364	# 1727
	fsw		f3, 0(x12)	# 1727
	jal		x0, beq_cont.33112	# 1720
beq.33113:
	addi	x12, x9, 0	# 1721
	addi	x12, x12, 64364	# 1721
	fsw		f6, 0(x12)	# 1721
	addi	x12, x13, 0	# 1722
	addi	x12, x12, 64364	# 1722
	fsw		f7, 0(x12)	# 1722
	addi	x12, x14, 0	# 1723
	addi	x12, x12, 64364	# 1723
	fsw		f8, 0(x12)	# 1723
beq_cont.33112:
	lw		x12, 24(x7)	# 415
	addi	x15, x9, 64364	# 325
	flw		f3, 0(x15)	# 325
	fmul	f3, f3, f3	# 127
	addi	x15, x13, 64364	# 325
	flw		f4, 0(x15)	# 325
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 325
	addi	x15, x14, 64364	# 325
	flw		f4, 0(x15)	# 325
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 325
	fsqrt	f3, f3	# 325
	flw		f4, -52(x2)	# 120
	feq		f3, f4, feq.33115	# 120
	beq		x12, x6, beq.33117	# 326
	fdiv	f3, f22, f3	# 326
	jal		x0, feq_cont.33114	# 326
beq.33117:
	fdiv	f3, f30, f3	# 326
	jal		x0, feq_cont.33114	# 120
feq.33115:
	fadd	f3, f0, f30	# 326
feq_cont.33114:
	addi	x12, x9, 64364	# 327
	flw		f5, 0(x12)	# 327
	fmul	f5, f5, f3	# 327
	addi	x9, x9, 64364	# 327
	fsw		f5, 0(x9)	# 327
	addi	x9, x13, 0	# 328
	addi	x12, x9, 64364	# 328
	flw		f5, 0(x12)	# 328
	fmul	f5, f5, f3	# 328
	addi	x9, x9, 64364	# 328
	fsw		f5, 0(x9)	# 328
	addi	x9, x14, 0	# 329
	addi	x12, x9, 64364	# 329
	flw		f5, 0(x12)	# 329
	fmul	f3, f5, f3	# 329
	addi	x9, x9, 64364	# 329
	fsw		f3, 0(x9)	# 329
	jal		x0, beq_cont.33108	# 1737
beq.33111:
	lw		x9, 16(x7)	# 433
	addi	x12, x4, 0	# 438
	add		x9, x9, x12	# 438
	flw		f3, 0(x9)	# 438
	fsub	f3, f0, f3	# 123
	addi	x9, x12, 0	# 1705
	addi	x9, x9, 64364	# 1705
	fsw		f3, 0(x9)	# 1705
	lw		x9, 16(x7)	# 443
	mul		x12, x30, x10	# 448
	add		x9, x9, x12	# 448
	flw		f3, 0(x9)	# 448
	fsub	f3, f0, f3	# 123
	addi	x9, x12, 0	# 1706
	addi	x9, x9, 64364	# 1706
	fsw		f3, 0(x9)	# 1706
	lw		x9, 16(x7)	# 453
	mul		x12, x30, x11	# 458
	add		x9, x9, x12	# 458
	flw		f3, 0(x9)	# 458
	fsub	f3, f0, f3	# 123
	addi	x9, x12, 0	# 1707
	addi	x9, x9, 64364	# 1707
	fsw		f3, 0(x9)	# 1707
	jal		x0, beq_cont.33108	# 1735
beq.33109:
	addi	x9, x4, 0	# 1696
	addi	x11, x9, 64340	# 1696
	lw		x11, 0(x11)	# 1696
	addi	x9, x9, 64364	# 289
	flw		f3, -52(x2)	# 289
	fsw		f3, 0(x9)	# 289
	mul		x9, x30, x10	# 290
	addi	x9, x9, 64364	# 290
	fsw		f3, 0(x9)	# 290
	lw		x9, -56(x2)	# 291
	mul		x12, x30, x9	# 291
	addi	x12, x12, 64364	# 291
	fsw		f3, 0(x12)	# 291
	sub		x11, x11, x10	# 1699
	mul		x11, x30, x11	# 1699
	lw		x12, -64(x2)	# 1699
	add		x13, x12, x11	# 1699
	flw		f4, 0(x13)	# 1699
	feq		f4, f3, feq.33119	# 120
	fle		f4, f3, fle.33121	# 121
	fadd	f4, f0, f30	# 255
	jal		x0, feq_cont.33118	# 121
fle.33121:
	fadd	f4, f0, f22	# 256
	jal		x0, feq_cont.33118	# 120
feq.33119:
	fadd	f4, f0, f3	# 254
feq_cont.33118:
	fsub	f4, f0, f4	# 123
	addi	x11, x11, 64364	# 1699
	fsw		f4, 0(x11)	# 1699
beq_cont.33108:
	addi	x9, x4, 64348	# 301
	flw		f3, 0(x9)	# 301
	addi	x9, x4, 64432	# 301
	fsw		f3, 0(x9)	# 301
	mul		x9, x30, x10	# 302
	addi	x11, x9, 64348	# 302
	flw		f3, 0(x11)	# 302
	addi	x11, x9, 64432	# 302
	fsw		f3, 0(x11)	# 302
	lw		x11, -56(x2)	# 303
	mul		x12, x30, x11	# 303
	addi	x13, x12, 64348	# 303
	flw		f3, 0(x13)	# 303
	addi	x13, x12, 64432	# 303
	fsw		f3, 0(x13)	# 303
	lw		x13, 0(x7)	# 385
	lw		x14, 32(x7)	# 523
	add		x14, x14, x4	# 528
	flw		f3, 0(x14)	# 528
	addi	x14, x4, 64376	# 1752
	fsw		f3, 0(x14)	# 1752
	lw		x14, 32(x7)	# 533
	add		x14, x14, x9	# 538
	flw		f3, 0(x14)	# 538
	addi	x14, x9, 64376	# 1753
	fsw		f3, 0(x14)	# 1753
	lw		x14, 32(x7)	# 543
	add		x14, x14, x12	# 548
	flw		f3, 0(x14)	# 548
	addi	x14, x12, 64376	# 1754
	fsw		f3, 0(x14)	# 1754
	fsw		f1, -88(x2)	# 1755
	sw		x7, -92(x2)	# 1755
	sw		x4, -96(x2)	# 1755
	sw		x5, -100(x2)	# 1755
	beq		x13, x10, beq.33123	# 1755
	beq		x13, x11, beq.33125	# 1773
	lw		x14, -36(x2)	# 1780
	beq		x13, x14, beq.33127	# 1780
	lw		x14, -28(x2)	# 1791
	beq		x13, x14, beq.33129	# 1791
	jal		x0, beq_cont.33122	# 1791
beq.33129:
	addi	x13, x4, 0	# 1793
	addi	x15, x13, 64348	# 1793
	flw		f3, 0(x15)	# 1793
	lw		x15, 20(x7)	# 473
	add		x16, x15, x13	# 478
	flw		f4, 0(x16)	# 478
	fsub	f3, f3, f4	# 1793
	lw		x16, 16(x7)	# 433
	add		x13, x16, x13	# 438
	flw		f4, 0(x13)	# 438
	fsqrt	f4, f4	# 1793
	fmul	f3, f3, f4	# 1793
	addi	x13, x12, 0	# 1794
	addi	x17, x13, 64348	# 1794
	flw		f4, 0(x17)	# 1794
	add		x17, x15, x13	# 498
	flw		f5, 0(x17)	# 498
	fsub	f4, f4, f5	# 1794
	add		x17, x16, x13	# 458
	flw		f5, 0(x17)	# 458
	fsqrt	f5, f5	# 1794
	fmul	f4, f4, f5	# 1794
	fmul	f5, f3, f3	# 127
	fmul	f6, f4, f4	# 127
	fadd	f5, f5, f6	# 1795
	flw		f6, -52(x2)	# 124
	fle		f3, f6, fle.33131	# 124
	fadd	f7, f0, f3	# 124
	jal		x0, fle_cont.33130	# 124
fle.33131:
	fsub	f7, f0, f3	# 124
fle_cont.33130:
	lui		x17, %hi(l.27807)	# 1797
	ori		x17, x0, %lo(l.27807)	# 1797
	flw		f8, 0(x17)	# 1797
	fsw		f5, -104(x2)	# 125
	fle		f8, f7, fle.33133	# 125
	lui		x17, %hi(l.27809)	# 1798
	ori		x17, x0, %lo(l.27809)	# 1798
	flw		f1, 0(x17)	# 1798
	jal		x0, fle_cont.33132	# 125
fle.33133:
	fdiv	f3, f4, f3	# 1800
	fle		f3, f6, fle.33135	# 124
	jal		x0, fle_cont.33134	# 124
fle.33135:
	fsub	f3, f0, f3	# 124
fle_cont.33134:
	lw		x29, -24(x2)	# 1802
	fadd	f1, f0, f3	# 1802
	sw		x1, -108(x2)	# 1802
	addi	x2, x2, -112	# 1802
	lw		x31, 0(x29)	# 1802
	jalr	x1, x31, 0	# 1802
	addi	x2, x2, 112	# 1802
	lw		x1, -108(x2)	# 1802
	lui		x4, %hi(l.27811)	# 1802
	ori		x4, x0, %lo(l.27811)	# 1802
	flw		f2, 0(x4)	# 1802
	fmul	f1, f1, f2	# 1802
	lui		x4, %hi(l.27813)	# 1802
	ori		x4, x0, %lo(l.27813)	# 1802
	flw		f2, 0(x4)	# 1802
	fdiv	f1, f1, f2	# 1802
fle_cont.33132:
	fsw		f1, -108(x2)	# 1804
	sw		x1, -112(x2)	# 1804
	addi	x2, x2, -116	# 1804
	jal		x1, min_caml_floor	# 1804
	addi	x2, x2, 116	# 1804
	lw		x1, -112(x2)	# 1804
	flw		f2, -108(x2)	# 1804
	fsub	f1, f2, f1	# 1804
	addi	x4, x9, 0	# 1806
	addi	x5, x4, 64348	# 1806
	flw		f2, 0(x5)	# 1806
	addi	x5, x15, 0	# 483
	add		x5, x5, x4	# 488
	flw		f3, 0(x5)	# 488
	fsub	f2, f2, f3	# 1806
	addi	x5, x16, 0	# 443
	add		x4, x5, x4	# 448
	flw		f3, 0(x4)	# 448
	fsqrt	f3, f3	# 1806
	fmul	f2, f2, f3	# 1806
	flw		f3, -104(x2)	# 124
	fle		f3, f6, fle.33137	# 124
	fadd	f4, f0, f3	# 124
	jal		x0, fle_cont.33136	# 124
fle.33137:
	fsub	f4, f0, f3	# 124
fle_cont.33136:
	fsw		f1, -112(x2)	# 125
	fle		f8, f4, fle.33139	# 125
	lui		x4, %hi(l.27809)	# 1809
	ori		x4, x0, %lo(l.27809)	# 1809
	flw		f1, 0(x4)	# 1809
	jal		x0, fle_cont.33138	# 125
fle.33139:
	fdiv	f2, f2, f3	# 1811
	fle		f2, f6, fle.33141	# 124
	jal		x0, fle_cont.33140	# 124
fle.33141:
	fsub	f2, f0, f2	# 124
fle_cont.33140:
	lw		x29, -24(x2)	# 1812
	fadd	f1, f0, f2	# 1812
	sw		x1, -116(x2)	# 1812
	addi	x2, x2, -120	# 1812
	lw		x31, 0(x29)	# 1812
	jalr	x1, x31, 0	# 1812
	addi	x2, x2, 120	# 1812
	lw		x1, -116(x2)	# 1812
	lui		x4, %hi(l.27811)	# 1812
	ori		x4, x0, %lo(l.27811)	# 1812
	flw		f2, 0(x4)	# 1812
	fmul	f1, f1, f2	# 1812
	lui		x4, %hi(l.27813)	# 1812
	ori		x4, x0, %lo(l.27813)	# 1812
	flw		f2, 0(x4)	# 1812
	fdiv	f1, f1, f2	# 1812
fle_cont.33138:
	fsw		f1, -116(x2)	# 1814
	sw		x1, -120(x2)	# 1814
	addi	x2, x2, -124	# 1814
	jal		x1, min_caml_floor	# 1814
	addi	x2, x2, 124	# 1814
	lw		x1, -120(x2)	# 1814
	flw		f2, -116(x2)	# 1814
	fsub	f1, f2, f1	# 1814
	lui		x4, %hi(l.27824)	# 1815
	ori		x4, x0, %lo(l.27824)	# 1815
	flw		f2, 0(x4)	# 1815
	flw		f4, -112(x2)	# 1815
	fsub	f4, f26, f4	# 1815
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1815
	fsub	f1, f26, f1	# 1815
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1815
	fle		f6, f1, fle_cont.33142	# 122
	fadd	f1, f0, f6	# 1816
	jal		x0, fle_cont.33142	# 122
fle_cont.33142:
	flw		f2, -44(x2)	# 1817
	fmul	f1, f2, f1	# 1817
	lui		x4, %hi(l.27827)	# 1817
	ori		x4, x0, %lo(l.27827)	# 1817
	flw		f2, 0(x4)	# 1817
	fdiv	f1, f1, f2	# 1817
	addi	x4, x13, 0	# 1817
	addi	x4, x4, 64376	# 1817
	fsw		f1, 0(x4)	# 1817
	jal		x0, beq_cont.33122	# 1780
beq.33127:
	addi	x13, x4, 0	# 1783
	addi	x14, x13, 64348	# 1783
	flw		f3, 0(x14)	# 1783
	lw		x14, 20(x7)	# 473
	add		x13, x14, x13	# 478
	flw		f4, 0(x13)	# 478
	fsub	f3, f3, f4	# 1783
	addi	x13, x12, 0	# 1784
	addi	x15, x13, 64348	# 1784
	flw		f4, 0(x15)	# 1784
	add		x14, x14, x13	# 498
	flw		f5, 0(x14)	# 498
	fsub	f4, f4, f5	# 1784
	fmul	f3, f3, f3	# 127
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 1785
	fsqrt	f3, f3	# 1785
	fdiv	f3, f3, f23	# 1785
	fsw		f3, -120(x2)	# 1786
	fadd	f1, f0, f3	# 1786
	sw		x1, -124(x2)	# 1786
	addi	x2, x2, -128	# 1786
	jal		x1, min_caml_floor	# 1786
	addi	x2, x2, 128	# 1786
	lw		x1, -124(x2)	# 1786
	flw		f2, -120(x2)	# 1786
	fsub	f1, f2, f1	# 1786
	lui		x4, %hi(l.27813)	# 1786
	ori		x4, x0, %lo(l.27813)	# 1786
	flw		f2, 0(x4)	# 1786
	fmul	f1, f1, f2	# 1786
	lw		x29, -32(x2)	# 1787
	sw		x1, -124(x2)	# 1787
	addi	x2, x2, -128	# 1787
	lw		x31, 0(x29)	# 1787
	jalr	x1, x31, 0	# 1787
	addi	x2, x2, 128	# 1787
	lw		x1, -124(x2)	# 1787
	fmul	f1, f1, f1	# 127
	flw		f2, -44(x2)	# 1788
	fmul	f3, f1, f2	# 1788
	addi	x4, x9, 0	# 1788
	addi	x4, x4, 64376	# 1788
	fsw		f3, 0(x4)	# 1788
	fsub	f1, f30, f1	# 1789
	fmul	f1, f1, f2	# 1789
	addi	x4, x13, 0	# 1789
	addi	x4, x4, 64376	# 1789
	fsw		f1, 0(x4)	# 1789
	jal		x0, beq_cont.33122	# 1773
beq.33125:
	addi	x13, x9, 0	# 1776
	addi	x14, x13, 64348	# 1776
	flw		f3, 0(x14)	# 1776
	lui		x14, %hi(l.27849)	# 1776
	ori		x14, x0, %lo(l.27849)	# 1776
	flw		f4, 0(x14)	# 1776
	fmul	f3, f3, f4	# 1776
	lw		x29, -40(x2)	# 1776
	fadd	f1, f0, f3	# 1776
	sw		x1, -124(x2)	# 1776
	addi	x2, x2, -128	# 1776
	lw		x31, 0(x29)	# 1776
	jalr	x1, x31, 0	# 1776
	addi	x2, x2, 128	# 1776
	lw		x1, -124(x2)	# 1776
	fmul	f1, f1, f1	# 127
	flw		f2, -44(x2)	# 1777
	fmul	f3, f2, f1	# 1777
	lw		x4, -96(x2)	# 1777
	addi	x14, x4, 0	# 1777
	addi	x14, x14, 64376	# 1777
	fsw		f3, 0(x14)	# 1777
	fsub	f1, f30, f1	# 1778
	fmul	f1, f2, f1	# 1778
	addi	x13, x13, 64376	# 1778
	fsw		f1, 0(x13)	# 1778
	jal		x0, beq_cont.33122	# 1755
beq.33123:
	addi	x13, x4, 0	# 1758
	addi	x14, x13, 64348	# 1758
	flw		f3, 0(x14)	# 1758
	lw		x14, 20(x7)	# 473
	add		x13, x14, x13	# 478
	flw		f4, 0(x13)	# 478
	fsub	f3, f3, f4	# 1758
	fmul	f5, f3, f24	# 1760
	fadd	f1, f0, f5	# 1760
	sw		x1, -124(x2)	# 1760
	addi	x2, x2, -128	# 1760
	jal		x1, min_caml_floor	# 1760
	addi	x2, x2, 128	# 1760
	lw		x1, -124(x2)	# 1760
	fmul	f1, f1, f25	# 1760
	fsub	f1, f3, f1	# 1761
	addi	x4, x12, 0	# 1763
	addi	x5, x4, 64348	# 1763
	flw		f5, 0(x5)	# 1763
	addi	x5, x14, 0	# 493
	add		x4, x5, x4	# 498
	flw		f6, 0(x4)	# 498
	fsub	f5, f5, f6	# 1763
	fmul	f4, f5, f24	# 1765
	fsw		f1, -124(x2)	# 1765
	fsw		f25, -128(x2)	# 1765
	fadd	f1, f0, f4	# 1765
	sw		x1, -132(x2)	# 1765
	addi	x2, x2, -136	# 1765
	jal		x1, min_caml_floor	# 1765
	addi	x2, x2, 136	# 1765
	lw		x1, -132(x2)	# 1765
	flw		f2, -128(x2)	# 1765
	fmul	f1, f1, f2	# 1765
	fsub	f1, f5, f1	# 1766
	flw		f2, -124(x2)	# 125
	fle		f23, f2, fle.33145	# 125
	fle		f23, f1, fle.33147	# 125
	flw		f1, -44(x2)	# 1770
	jal		x0, fle_cont.33144	# 125
fle.33147:
	flw		f1, -52(x2)	# 1770
	jal		x0, fle_cont.33144	# 125
fle.33145:
	fle		f23, f1, fle.33149	# 125
	flw		f1, -52(x2)	# 1771
	jal		x0, fle_cont.33144	# 125
fle.33149:
	flw		f1, -44(x2)	# 1771
fle_cont.33144:
	addi	x4, x9, 0	# 1768
	addi	x4, x4, 64376	# 1768
	fsw		f1, 0(x4)	# 1768
beq_cont.33122:
	lw		x4, -100(x2)	# 1888
	lw		x5, -28(x2)	# 1888
	mul		x4, x4, x5	# 1888
	lw		x6, -96(x2)	# 1888
	addi	x7, x6, 64340	# 1888
	lw		x7, 0(x7)	# 1888
	add		x4, x4, x7	# 1888
	lw		x7, -76(x2)	# 1888
	mul		x13, x30, x7	# 1888
	lw		x14, -72(x2)	# 1888
	add		x15, x14, x13	# 1888
	sw		x4, 0(x15)	# 1888
	lw		x4, -20(x2)	# 611
	lw		x15, 4(x4)	# 611
	add		x15, x15, x13	# 1890
	lw		x15, 0(x15)	# 1890
	addi	x16, x6, 64348	# 301
	flw		f1, 0(x16)	# 301
	add		x16, x15, x6	# 301
	fsw		f1, 0(x16)	# 301
	addi	x16, x9, 64348	# 302
	flw		f1, 0(x16)	# 302
	add		x16, x15, x9	# 302
	fsw		f1, 0(x16)	# 302
	addi	x16, x12, 64348	# 303
	flw		f1, 0(x16)	# 303
	add		x15, x15, x12	# 303
	fsw		f1, 0(x15)	# 303
	lw		x15, 12(x4)	# 626
	lw		x16, -92(x2)	# 503
	lw		x17, 28(x16)	# 503
	add		x17, x17, x6	# 508
	flw		f1, 0(x17)	# 508
	fle		f26, f1, fle.33151	# 125
	add		x13, x15, x13	# 1895
	lw		x15, -80(x2)	# 1895
	sw		x15, 0(x13)	# 1895
	jal		x0, fle_cont.33150	# 125
fle.33151:
	add		x15, x15, x13	# 1897
	sw		x10, 0(x15)	# 1897
	lw		x15, 16(x4)	# 633
	add		x17, x15, x13	# 1899
	lw		x17, 0(x17)	# 1899
	addi	x18, x6, 0	# 301
	addi	x19, x18, 64376	# 301
	flw		f1, 0(x19)	# 301
	add		x19, x17, x18	# 301
	fsw		f1, 0(x19)	# 301
	addi	x19, x9, 0	# 302
	addi	x20, x19, 64376	# 302
	flw		f1, 0(x20)	# 302
	add		x20, x17, x19	# 302
	fsw		f1, 0(x20)	# 302
	addi	x20, x12, 0	# 303
	addi	x21, x20, 64376	# 303
	flw		f1, 0(x21)	# 303
	add		x17, x17, x20	# 303
	fsw		f1, 0(x17)	# 303
	add		x15, x15, x13	# 1900
	lw		x15, 0(x15)	# 1900
	lui		x17, %hi(l.27912)	# 1900
	ori		x17, x0, %lo(l.27912)	# 1900
	flw		f1, 0(x17)	# 1900
	flw		f2, -88(x2)	# 1900
	fmul	f1, f1, f2	# 1900
	addi	x17, x18, 0	# 367
	add		x18, x15, x17	# 367
	flw		f3, 0(x18)	# 367
	fmul	f3, f3, f1	# 367
	add		x18, x15, x17	# 367
	fsw		f3, 0(x18)	# 367
	addi	x18, x19, 0	# 368
	add		x19, x15, x18	# 368
	flw		f3, 0(x19)	# 368
	fmul	f3, f3, f1	# 368
	add		x19, x15, x18	# 368
	fsw		f3, 0(x19)	# 368
	addi	x19, x20, 0	# 369
	add		x20, x15, x19	# 369
	flw		f3, 0(x20)	# 369
	fmul	f1, f3, f1	# 369
	add		x15, x15, x19	# 369
	fsw		f1, 0(x15)	# 369
	lw		x15, 28(x4)	# 670
	add		x13, x15, x13	# 1902
	lw		x13, 0(x13)	# 1902
	addi	x15, x17, 0	# 301
	addi	x17, x15, 64364	# 301
	flw		f1, 0(x17)	# 301
	add		x15, x13, x15	# 301
	fsw		f1, 0(x15)	# 301
	addi	x15, x18, 0	# 302
	addi	x17, x15, 64364	# 302
	flw		f1, 0(x17)	# 302
	add		x15, x13, x15	# 302
	fsw		f1, 0(x15)	# 302
	addi	x15, x19, 0	# 303
	addi	x17, x15, 64364	# 303
	flw		f1, 0(x17)	# 303
	add		x13, x13, x15	# 303
	fsw		f1, 0(x13)	# 303
fle_cont.33150:
	lw		x13, -64(x2)	# 334
	add		x15, x13, x6	# 334
	flw		f2, 0(x15)	# 334
	addi	x15, x6, 64364	# 334
	flw		f3, 0(x15)	# 334
	fmul	f4, f2, f3	# 334
	add		x15, x13, x9	# 334
	flw		f5, 0(x15)	# 334
	addi	x15, x9, 64364	# 334
	flw		f6, 0(x15)	# 334
	fmul	f5, f5, f6	# 334
	fadd	f4, f4, f5	# 334
	add		x15, x13, x12	# 334
	flw		f5, 0(x15)	# 334
	addi	x15, x12, 64364	# 334
	flw		f6, 0(x15)	# 334
	fmul	f5, f5, f6	# 334
	fadd	f4, f4, f5	# 334
	fmul	f1, f28, f4	# 1905
	fmul	f3, f1, f3	# 344
	fadd	f2, f2, f3	# 344
	add		x15, x13, x6	# 344
	fsw		f2, 0(x15)	# 344
	add		x15, x13, x9	# 345
	flw		f2, 0(x15)	# 345
	addi	x15, x9, 64364	# 345
	flw		f3, 0(x15)	# 345
	fmul	f3, f1, f3	# 345
	fadd	f2, f2, f3	# 345
	add		x15, x13, x9	# 345
	fsw		f2, 0(x15)	# 345
	add		x15, x13, x12	# 346
	flw		f2, 0(x15)	# 346
	addi	x15, x12, 64364	# 346
	flw		f3, 0(x15)	# 346
	fmul	f1, f1, f3	# 346
	fadd	f1, f2, f1	# 346
	add		x15, x13, x12	# 346
	fsw		f1, 0(x15)	# 346
	lw		x15, 28(x16)	# 513
	add		x15, x15, x9	# 518
	flw		f1, 0(x15)	# 518
	flw		f2, -48(x2)	# 1909
	fmul	f1, f2, f1	# 1909
	addi	x15, x6, 64332	# 1912
	lw		x15, 0(x15)	# 1912
	lw		x17, -80(x2)	# 1912
	lw		x29, -16(x2)	# 1912
	sw		x8, -132(x2)	# 1912
	fsw		f1, -136(x2)	# 1912
	sw		x12, -140(x2)	# 1912
	sw		x9, -144(x2)	# 1912
	sw		x6, -148(x2)	# 1912
	addi	x5, x15, 0	# 1912
	addi	x4, x17, 0	# 1912
	sw		x1, -152(x2)	# 1912
	addi	x2, x2, -156	# 1912
	lw		x31, 0(x29)	# 1912
	jalr	x1, x31, 0	# 1912
	addi	x2, x2, 156	# 1912
	lw		x1, -152(x2)	# 1912
	lw		x5, -80(x2)	# 1912
	beq		x4, x5, beq.33153	# 1912
	jal		x0, beq_cont.33152	# 1912
beq.33153:
	lw		x4, -148(x2)	# 334
	addi	x5, x4, 0	# 334
	addi	x6, x5, 64364	# 334
	flw		f1, 0(x6)	# 334
	addi	x6, x5, 64108	# 334
	flw		f2, 0(x6)	# 334
	fmul	f1, f1, f2	# 334
	lw		x6, -144(x2)	# 334
	addi	x7, x6, 0	# 334
	addi	x8, x7, 64364	# 334
	flw		f3, 0(x8)	# 334
	addi	x8, x7, 64108	# 334
	flw		f4, 0(x8)	# 334
	fmul	f3, f3, f4	# 334
	fadd	f1, f1, f3	# 334
	lw		x8, -140(x2)	# 334
	addi	x9, x8, 0	# 334
	addi	x10, x9, 64364	# 334
	flw		f3, 0(x10)	# 334
	addi	x10, x9, 64108	# 334
	flw		f5, 0(x10)	# 334
	fmul	f3, f3, f5	# 334
	fadd	f1, f1, f3	# 334
	fsub	f1, f0, f1	# 123
	flw		f3, -88(x2)	# 1913
	fmul	f1, f1, f3	# 1913
	lw		x10, -64(x2)	# 334
	add		x11, x10, x5	# 334
	flw		f6, 0(x11)	# 334
	fmul	f2, f6, f2	# 334
	add		x11, x10, x7	# 334
	flw		f6, 0(x11)	# 334
	fmul	f4, f6, f4	# 334
	fadd	f2, f2, f4	# 334
	add		x11, x10, x9	# 334
	flw		f4, 0(x11)	# 334
	fmul	f4, f4, f5	# 334
	fadd	f2, f2, f4	# 334
	fsub	f2, f0, f2	# 123
	flw		f4, -52(x2)	# 121
	fle		f1, f4, fle_cont.33154	# 121
	addi	x11, x5, 0	# 344
	addi	x12, x11, 64400	# 344
	flw		f5, 0(x12)	# 344
	addi	x12, x11, 64376	# 344
	flw		f6, 0(x12)	# 344
	fmul	f6, f1, f6	# 344
	fadd	f5, f5, f6	# 344
	addi	x11, x11, 64400	# 344
	fsw		f5, 0(x11)	# 344
	addi	x11, x7, 0	# 345
	addi	x12, x11, 64400	# 345
	flw		f5, 0(x12)	# 345
	addi	x12, x11, 64376	# 345
	flw		f6, 0(x12)	# 345
	fmul	f6, f1, f6	# 345
	fadd	f5, f5, f6	# 345
	addi	x11, x11, 64400	# 345
	fsw		f5, 0(x11)	# 345
	addi	x11, x9, 0	# 346
	addi	x12, x11, 64400	# 346
	flw		f5, 0(x12)	# 346
	addi	x12, x11, 64376	# 346
	flw		f6, 0(x12)	# 346
	fmul	f1, f1, f6	# 346
	fadd	f1, f5, f1	# 346
	addi	x11, x11, 64400	# 346
	fsw		f1, 0(x11)	# 346
	jal		x0, fle_cont.33154	# 121
fle_cont.33154:
	fle		f2, f4, beq_cont.33152	# 121
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -136(x2)	# 1836
	fmul	f1, f1, f2	# 1836
	addi	x11, x5, 64400	# 1837
	flw		f4, 0(x11)	# 1837
	fadd	f4, f4, f1	# 1837
	addi	x5, x5, 64400	# 1837
	fsw		f4, 0(x5)	# 1837
	addi	x5, x7, 0	# 1838
	addi	x7, x5, 64400	# 1838
	flw		f4, 0(x7)	# 1838
	fadd	f4, f4, f1	# 1838
	addi	x5, x5, 64400	# 1838
	fsw		f4, 0(x5)	# 1838
	addi	x5, x9, 0	# 1839
	addi	x7, x5, 64400	# 1839
	flw		f4, 0(x7)	# 1839
	fadd	f1, f4, f1	# 1839
	addi	x5, x5, 64400	# 1839
	fsw		f1, 0(x5)	# 1839
	jal		x0, beq_cont.33152	# 121
beq_cont.33152:
	lw		x4, -148(x2)	# 301
	addi	x5, x4, 64348	# 301
	flw		f1, 0(x5)	# 301
	addi	x5, x4, 64444	# 301
	fsw		f1, 0(x5)	# 301
	lw		x5, -144(x2)	# 302
	addi	x6, x5, 64348	# 302
	flw		f1, 0(x6)	# 302
	addi	x5, x5, 64444	# 302
	fsw		f1, 0(x5)	# 302
	lw		x5, -140(x2)	# 303
	addi	x6, x5, 64348	# 303
	flw		f1, 0(x6)	# 303
	addi	x5, x5, 64444	# 303
	fsw		f1, 0(x5)	# 303
	addi	x5, x4, 63796	# 1357
	lw		x5, 0(x5)	# 1357
	lw		x6, -60(x2)	# 1357
	sub		x5, x5, x6	# 1357
	addi	x7, x0, 64348	# 1357
	lw		x29, -12(x2)	# 1357
	sw		x4, -152(x2)	# 1357
	addi	x4, x7, 0	# 1357
	sw		x1, -156(x2)	# 1357
	addi	x2, x2, -160	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 160	# 1357
	lw		x1, -156(x2)	# 1357
	lw		x4, -152(x2)	# 1920
	addi	x5, x4, 65532	# 1920
	lw		x5, 0(x5)	# 1920
	lw		x6, -60(x2)	# 1920
	sub		x5, x5, x6	# 1920
	lw		x7, -64(x2)	# 1920
	flw		f1, -88(x2)	# 1920
	flw		f2, -136(x2)	# 1920
	lw		x29, -8(x2)	# 1920
	sw		x4, -156(x2)	# 1920
	addi	x4, x5, 0	# 1920
	addi	x5, x7, 0	# 1920
	sw		x1, -160(x2)	# 1920
	addi	x2, x2, -164	# 1920
	lw		x31, 0(x29)	# 1920
	jalr	x1, x31, 0	# 1920
	addi	x2, x2, 164	# 1920
	lw		x1, -160(x2)	# 1920
	flw		f2, -48(x2)	# 125
	fle		f2, f27, fle.33158	# 125
	lw		x4, -76(x2)	# 1925
	lw		x5, -28(x2)	# 1925
	ble		x5, x4, ble_cont.33159	# 1925
	lw		x5, -60(x2)	# 1926
	add		x6, x4, x5	# 1926
	mul		x6, x30, x6	# 1926
	lw		x7, -72(x2)	# 1926
	add		x6, x7, x6	# 1926
	lw		x7, -68(x2)	# 1926
	sw		x7, 0(x6)	# 1926
	jal		x0, ble_cont.33159	# 1925
ble_cont.33159:
	lw		x5, -56(x2)	# 1929
	lw		x6, -132(x2)	# 1929
	beq		x6, x5, beq.33161	# 1929
	jalr	x0, x1, 0	# 1932
beq.33161:
	lw		x5, -92(x2)	# 503
	lw		x5, 28(x5)	# 503
	lw		x6, -156(x2)	# 508
	add		x5, x5, x6	# 508
	flw		f3, 0(x5)	# 508
	fsub	f1, f30, f3	# 1930
	fmul	f1, f2, f1	# 1930
	lw		x5, -60(x2)	# 1931
	add		x4, x4, x5	# 1931
	addi	x5, x6, 0	# 1931
	addi	x5, x5, 64344	# 1931
	flw		f2, 0(x5)	# 1931
	flw		f3, -4(x2)	# 1931
	fadd	f2, f3, f2	# 1931
	lw		x5, -64(x2)	# 1931
	lw		x6, -20(x2)	# 1931
	lw		x29, 0(x2)	# 1931
	lw		x31, 0(x29)	# 1931
	jalr	x0, x31, 0	# 1931
fle.33158:
	jalr	x0, x1, 0	# 1934
beq.33107:
	lw		x5, -76(x2)	# 1939
	mul		x7, x30, x5	# 1939
	lw		x8, -72(x2)	# 1939
	add		x7, x8, x7	# 1939
	lw		x8, -68(x2)	# 1939
	sw		x8, 0(x7)	# 1939
	beq		x5, x6, beq.33164	# 1941
	lw		x5, -64(x2)	# 334
	add		x6, x5, x4	# 334
	flw		f1, 0(x6)	# 334
	addi	x6, x4, 64108	# 334
	flw		f2, 0(x6)	# 334
	fmul	f1, f1, f2	# 334
	lw		x6, -60(x2)	# 334
	mul		x6, x30, x6	# 334
	add		x7, x5, x6	# 334
	flw		f2, 0(x7)	# 334
	addi	x7, x6, 64108	# 334
	flw		f3, 0(x7)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	lw		x7, -56(x2)	# 334
	mul		x7, x30, x7	# 334
	add		x5, x5, x7	# 334
	flw		f2, 0(x5)	# 334
	addi	x5, x7, 0	# 334
	addi	x7, x5, 64108	# 334
	flw		f3, 0(x7)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	fsub	f1, f0, f1	# 123
	flw		f2, -52(x2)	# 121
	fle		f1, f2, fle.33165	# 121
	fmul	f2, f1, f1	# 127
	fmul	f1, f2, f1	# 1947
	flw		f2, -48(x2)	# 1947
	fmul	f1, f1, f2	# 1947
	addi	x7, x4, 64120	# 1947
	flw		f2, 0(x7)	# 1947
	fmul	f1, f1, f2	# 1947
	addi	x7, x4, 64400	# 1948
	flw		f2, 0(x7)	# 1948
	fadd	f2, f2, f1	# 1948
	addi	x4, x4, 64400	# 1948
	fsw		f2, 0(x4)	# 1948
	addi	x4, x6, 0	# 1949
	addi	x6, x4, 64400	# 1949
	flw		f2, 0(x6)	# 1949
	fadd	f2, f2, f1	# 1949
	addi	x4, x4, 64400	# 1949
	fsw		f2, 0(x4)	# 1949
	addi	x4, x5, 0	# 1950
	addi	x5, x4, 64400	# 1950
	flw		f2, 0(x5)	# 1950
	fadd	f1, f2, f1	# 1950
	addi	x4, x4, 64400	# 1950
	fsw		f1, 0(x4)	# 1950
	jalr	x0, x1, 0	# 1950
fle.33165:
	jalr	x0, x1, 0	# 1952
beq.33164:
	jalr	x0, x1, 0	# 1953
iter_trace_diffuse_rays.2861.17961:
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
	ble		x15, x7, ble.33169	# 1986
	jalr	x0, x1, 0	# 1997
ble.33169:
	mul		x17, x30, x7	# 1987
	add		x17, x4, x17	# 1987
	lw		x17, 0(x17)	# 1987
	lw		x18, 0(x17)	# 681
	mul		x19, x30, x15	# 334
	add		x20, x18, x19	# 334
	flw		f4, 0(x20)	# 334
	add		x20, x5, x19	# 334
	flw		f5, 0(x20)	# 334
	fmul	f4, f4, f5	# 334
	mul		x20, x30, x16	# 334
	add		x21, x18, x20	# 334
	flw		f5, 0(x21)	# 334
	add		x21, x5, x20	# 334
	flw		f6, 0(x21)	# 334
	fmul	f5, f5, f6	# 334
	fadd	f4, f4, f5	# 334
	mul		x21, x30, x13	# 334
	add		x18, x18, x21	# 334
	flw		f5, 0(x18)	# 334
	addi	x18, x21, 0	# 334
	add		x21, x5, x18	# 334
	flw		f6, 0(x21)	# 334
	fmul	f5, f5, f6	# 334
	fadd	f4, f4, f5	# 334
	sw		x6, 0(x2)	# 122
	sw		x5, -4(x2)	# 122
	sw		x4, -8(x2)	# 122
	sw		x29, -12(x2)	# 122
	sw		x13, -16(x2)	# 122
	sw		x7, -20(x2)	# 122
	fle		f3, f4, fle.33172	# 122
	add		x17, x7, x16	# 1992
	mul		x17, x30, x17	# 1992
	add		x17, x4, x17	# 1992
	lw		x17, 0(x17)	# 1992
	fdiv	f4, f4, f21	# 1992
	addi	x21, x19, 64344	# 1676
	fsw		f1, 0(x21)	# 1676
	addi	x21, x19, 64332	# 1677
	lw		x21, 0(x21)	# 1677
	fsw		f4, -24(x2)	# 1677
	sw		x10, -28(x2)	# 1677
	sw		x12, -32(x2)	# 1677
	sw		x11, -36(x2)	# 1677
	sw		x14, -40(x2)	# 1677
	sw		x9, -44(x2)	# 1677
	fsw		f2, -48(x2)	# 1677
	sw		x18, -52(x2)	# 1677
	sw		x20, -56(x2)	# 1677
	fsw		f3, -60(x2)	# 1677
	sw		x16, -64(x2)	# 1677
	sw		x17, -68(x2)	# 1677
	sw		x15, -72(x2)	# 1677
	sw		x19, -76(x2)	# 1677
	addi	x6, x17, 0	# 1677
	addi	x5, x21, 0	# 1677
	addi	x4, x15, 0	# 1677
	addi	x29, x8, 0	# 1677
	sw		x1, -80(x2)	# 1677
	addi	x2, x2, -84	# 1677
	lw		x31, 0(x29)	# 1677
	jalr	x1, x31, 0	# 1677
	addi	x2, x2, 84	# 1677
	lw		x1, -80(x2)	# 1677
	lw		x4, -76(x2)	# 1678
	addi	x5, x4, 64344	# 1678
	flw		f1, 0(x5)	# 1678
	fle		f1, f18, fle.33174	# 125
	fle		f19, f1, fle.33176	# 125
	addi	x5, x0, 1	# 125
	jal		x0, fle_cont.33173	# 125
fle.33176:
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.33173	# 125
fle.33174:
	addi	x5, x0, 0	# 1682
fle_cont.33173:
	lw		x6, -72(x2)	# 1969
	beq		x5, x6, fle_cont.33171	# 1969
	addi	x5, x4, 64360	# 1970
	lw		x5, 0(x5)	# 1970
	mul		x5, x30, x5	# 1970
	addi	x5, x5, 63844	# 1970
	lw		x5, 0(x5)	# 1970
	lw		x7, -68(x2)	# 681
	lw		x7, 0(x7)	# 681
	lw		x8, 4(x5)	# 395
	lw		x9, -64(x2)	# 1735
	beq		x8, x9, beq.33180	# 1735
	lw		x7, -16(x2)	# 1737
	beq		x8, x7, beq.33182	# 1737
	addi	x8, x4, 0	# 1712
	addi	x10, x8, 64348	# 1712
	flw		f1, 0(x10)	# 1712
	lw		x10, 20(x5)	# 473
	add		x11, x10, x8	# 478
	flw		f2, 0(x11)	# 478
	fsub	f1, f1, f2	# 1712
	lw		x11, -56(x2)	# 1713
	addi	x12, x11, 0	# 1713
	addi	x13, x12, 64348	# 1713
	flw		f2, 0(x13)	# 1713
	add		x13, x10, x12	# 488
	flw		f3, 0(x13)	# 488
	fsub	f2, f2, f3	# 1713
	lw		x13, -52(x2)	# 1714
	addi	x14, x13, 0	# 1714
	addi	x15, x14, 64348	# 1714
	flw		f3, 0(x15)	# 1714
	add		x10, x10, x14	# 498
	flw		f4, 0(x10)	# 498
	fsub	f3, f3, f4	# 1714
	lw		x10, 16(x5)	# 433
	add		x15, x10, x8	# 438
	flw		f4, 0(x15)	# 438
	fmul	f4, f1, f4	# 1716
	add		x15, x10, x12	# 448
	flw		f5, 0(x15)	# 448
	fmul	f5, f2, f5	# 1717
	add		x10, x10, x14	# 458
	flw		f6, 0(x10)	# 458
	fmul	f6, f3, f6	# 1718
	lw		x10, 12(x5)	# 424
	beq		x10, x6, beq.33184	# 1720
	lw		x10, 36(x5)	# 573
	addi	x15, x14, 0	# 578
	add		x16, x10, x15	# 578
	flw		f7, 0(x16)	# 578
	fmul	f8, f2, f7	# 1725
	addi	x16, x12, 0	# 568
	add		x10, x10, x16	# 568
	flw		f9, 0(x10)	# 568
	fmul	f10, f3, f9	# 1725
	fadd	f8, f8, f10	# 1725
	fmul	f8, f8, f26	# 126
	fadd	f4, f4, f8	# 1725
	addi	x10, x8, 0	# 1725
	addi	x17, x10, 64364	# 1725
	fsw		f4, 0(x17)	# 1725
	fmul	f4, f1, f7	# 1726
	lw		x17, 36(x5)	# 553
	add		x10, x17, x10	# 558
	flw		f7, 0(x10)	# 558
	fmul	f3, f3, f7	# 1726
	fadd	f3, f4, f3	# 1726
	fmul	f3, f3, f26	# 126
	fadd	f3, f5, f3	# 1726
	addi	x10, x16, 0	# 1726
	addi	x10, x10, 64364	# 1726
	fsw		f3, 0(x10)	# 1726
	fmul	f1, f1, f9	# 1727
	fmul	f2, f2, f7	# 1727
	fadd	f1, f1, f2	# 1727
	fmul	f1, f1, f26	# 126
	fadd	f1, f6, f1	# 1727
	addi	x10, x15, 0	# 1727
	addi	x10, x10, 64364	# 1727
	fsw		f1, 0(x10)	# 1727
	jal		x0, beq_cont.33183	# 1720
beq.33184:
	addi	x10, x8, 0	# 1721
	addi	x10, x10, 64364	# 1721
	fsw		f4, 0(x10)	# 1721
	addi	x10, x12, 0	# 1722
	addi	x10, x10, 64364	# 1722
	fsw		f5, 0(x10)	# 1722
	addi	x10, x14, 0	# 1723
	addi	x10, x10, 64364	# 1723
	fsw		f6, 0(x10)	# 1723
beq_cont.33183:
	lw		x10, 24(x5)	# 415
	addi	x15, x8, 64364	# 325
	flw		f1, 0(x15)	# 325
	fmul	f1, f1, f1	# 127
	addi	x15, x12, 64364	# 325
	flw		f2, 0(x15)	# 325
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 325
	addi	x15, x14, 64364	# 325
	flw		f2, 0(x15)	# 325
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 325
	fsqrt	f1, f1	# 325
	flw		f2, -60(x2)	# 120
	feq		f1, f2, feq.33186	# 120
	beq		x10, x6, beq.33188	# 326
	fdiv	f1, f22, f1	# 326
	jal		x0, feq_cont.33185	# 326
beq.33188:
	fdiv	f1, f30, f1	# 326
	jal		x0, feq_cont.33185	# 120
feq.33186:
	fadd	f1, f0, f30	# 326
feq_cont.33185:
	addi	x10, x8, 64364	# 327
	flw		f3, 0(x10)	# 327
	fmul	f3, f3, f1	# 327
	addi	x8, x8, 64364	# 327
	fsw		f3, 0(x8)	# 327
	addi	x8, x12, 0	# 328
	addi	x10, x8, 64364	# 328
	flw		f3, 0(x10)	# 328
	fmul	f3, f3, f1	# 328
	addi	x8, x8, 64364	# 328
	fsw		f3, 0(x8)	# 328
	addi	x8, x14, 0	# 329
	addi	x10, x8, 64364	# 329
	flw		f3, 0(x10)	# 329
	fmul	f1, f3, f1	# 329
	addi	x8, x8, 64364	# 329
	fsw		f1, 0(x8)	# 329
	jal		x0, beq_cont.33179	# 1737
beq.33182:
	lw		x8, 16(x5)	# 433
	addi	x10, x4, 0	# 438
	add		x8, x8, x10	# 438
	flw		f1, 0(x8)	# 438
	fsub	f1, f0, f1	# 123
	addi	x8, x10, 0	# 1705
	addi	x8, x8, 64364	# 1705
	fsw		f1, 0(x8)	# 1705
	lw		x8, 16(x5)	# 443
	lw		x10, -56(x2)	# 448
	addi	x11, x10, 0	# 448
	add		x8, x8, x11	# 448
	flw		f1, 0(x8)	# 448
	fsub	f1, f0, f1	# 123
	addi	x8, x11, 0	# 1706
	addi	x8, x8, 64364	# 1706
	fsw		f1, 0(x8)	# 1706
	lw		x8, 16(x5)	# 453
	lw		x11, -52(x2)	# 458
	addi	x12, x11, 0	# 458
	add		x8, x8, x12	# 458
	flw		f1, 0(x8)	# 458
	fsub	f1, f0, f1	# 123
	addi	x8, x12, 0	# 1707
	addi	x8, x8, 64364	# 1707
	fsw		f1, 0(x8)	# 1707
	jal		x0, beq_cont.33179	# 1735
beq.33180:
	addi	x8, x4, 0	# 1696
	addi	x10, x8, 64340	# 1696
	lw		x10, 0(x10)	# 1696
	addi	x8, x8, 64364	# 289
	flw		f1, -60(x2)	# 289
	fsw		f1, 0(x8)	# 289
	lw		x8, -56(x2)	# 290
	addi	x11, x8, 0	# 290
	addi	x11, x11, 64364	# 290
	fsw		f1, 0(x11)	# 290
	lw		x11, -52(x2)	# 291
	addi	x12, x11, 0	# 291
	addi	x12, x12, 64364	# 291
	fsw		f1, 0(x12)	# 291
	sub		x10, x10, x9	# 1699
	mul		x10, x30, x10	# 1699
	add		x7, x7, x10	# 1699
	flw		f2, 0(x7)	# 1699
	feq		f2, f1, feq.33190	# 120
	fle		f2, f1, fle.33192	# 121
	fadd	f2, f0, f30	# 255
	jal		x0, feq_cont.33189	# 121
fle.33192:
	fadd	f2, f0, f22	# 256
	jal		x0, feq_cont.33189	# 120
feq.33190:
	fadd	f2, f0, f1	# 254
feq_cont.33189:
	fsub	f2, f0, f2	# 123
	addi	x7, x10, 0	# 1699
	addi	x7, x7, 64364	# 1699
	fsw		f2, 0(x7)	# 1699
beq_cont.33179:
	lw		x7, 0(x5)	# 385
	lw		x8, 32(x5)	# 523
	add		x8, x8, x4	# 528
	flw		f1, 0(x8)	# 528
	addi	x8, x4, 64376	# 1752
	fsw		f1, 0(x8)	# 1752
	lw		x8, 32(x5)	# 533
	lw		x10, -56(x2)	# 538
	add		x8, x8, x10	# 538
	flw		f1, 0(x8)	# 538
	addi	x8, x10, 0	# 1753
	addi	x10, x8, 64376	# 1753
	fsw		f1, 0(x10)	# 1753
	lw		x10, 32(x5)	# 543
	lw		x11, -52(x2)	# 548
	add		x10, x10, x11	# 548
	flw		f1, 0(x10)	# 548
	addi	x10, x11, 0	# 1754
	addi	x11, x10, 64376	# 1754
	fsw		f1, 0(x11)	# 1754
	sw		x5, -80(x2)	# 1755
	sw		x4, -84(x2)	# 1755
	beq		x7, x9, beq.33194	# 1755
	lw		x9, -16(x2)	# 1773
	beq		x7, x9, beq.33196	# 1773
	lw		x11, -40(x2)	# 1780
	beq		x7, x11, beq.33198	# 1780
	addi	x11, x0, 4	# 1791
	beq		x7, x11, beq.33200	# 1791
	jal		x0, beq_cont.33193	# 1791
beq.33200:
	addi	x7, x4, 0	# 1793
	addi	x11, x7, 64348	# 1793
	flw		f1, 0(x11)	# 1793
	lw		x11, 20(x5)	# 473
	add		x12, x11, x7	# 478
	flw		f2, 0(x12)	# 478
	fsub	f1, f1, f2	# 1793
	lw		x12, 16(x5)	# 433
	add		x7, x12, x7	# 438
	flw		f2, 0(x7)	# 438
	fsqrt	f2, f2	# 1793
	fmul	f1, f1, f2	# 1793
	addi	x7, x10, 0	# 1794
	addi	x13, x7, 64348	# 1794
	flw		f2, 0(x13)	# 1794
	add		x13, x11, x7	# 498
	flw		f3, 0(x13)	# 498
	fsub	f2, f2, f3	# 1794
	add		x13, x12, x7	# 458
	flw		f3, 0(x13)	# 458
	fsqrt	f3, f3	# 1794
	fmul	f2, f2, f3	# 1794
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1795
	flw		f4, -60(x2)	# 124
	fle		f1, f4, fle.33202	# 124
	fadd	f5, f0, f1	# 124
	jal		x0, fle_cont.33201	# 124
fle.33202:
	fsub	f5, f0, f1	# 124
fle_cont.33201:
	lui		x13, %hi(l.27807)	# 1797
	ori		x13, x0, %lo(l.27807)	# 1797
	flw		f6, 0(x13)	# 1797
	fsw		f3, -88(x2)	# 125
	fle		f6, f5, fle.33204	# 125
	lui		x13, %hi(l.27809)	# 1798
	ori		x13, x0, %lo(l.27809)	# 1798
	flw		f1, 0(x13)	# 1798
	jal		x0, fle_cont.33203	# 125
fle.33204:
	fdiv	f1, f2, f1	# 1800
	fle		f1, f4, fle.33206	# 124
	jal		x0, fle_cont.33205	# 124
fle.33206:
	fsub	f1, f0, f1	# 124
fle_cont.33205:
	lw		x29, -32(x2)	# 1802
	sw		x1, -92(x2)	# 1802
	addi	x2, x2, -96	# 1802
	lw		x31, 0(x29)	# 1802
	jalr	x1, x31, 0	# 1802
	addi	x2, x2, 96	# 1802
	lw		x1, -92(x2)	# 1802
	lui		x4, %hi(l.27811)	# 1802
	ori		x4, x0, %lo(l.27811)	# 1802
	flw		f2, 0(x4)	# 1802
	fmul	f1, f1, f2	# 1802
	lui		x4, %hi(l.27813)	# 1802
	ori		x4, x0, %lo(l.27813)	# 1802
	flw		f2, 0(x4)	# 1802
	fdiv	f1, f1, f2	# 1802
fle_cont.33203:
	sw		x7, -92(x2)	# 1804
	fsw		f1, -96(x2)	# 1804
	sw		x1, -100(x2)	# 1804
	addi	x2, x2, -104	# 1804
	jal		x1, min_caml_floor	# 1804
	addi	x2, x2, 104	# 1804
	lw		x1, -100(x2)	# 1804
	flw		f2, -96(x2)	# 1804
	fsub	f1, f2, f1	# 1804
	addi	x4, x8, 0	# 1806
	addi	x5, x4, 64348	# 1806
	flw		f2, 0(x5)	# 1806
	addi	x5, x11, 0	# 483
	add		x5, x5, x4	# 488
	flw		f3, 0(x5)	# 488
	fsub	f2, f2, f3	# 1806
	addi	x5, x12, 0	# 443
	add		x4, x5, x4	# 448
	flw		f3, 0(x4)	# 448
	fsqrt	f3, f3	# 1806
	fmul	f2, f2, f3	# 1806
	flw		f3, -60(x2)	# 124
	flw		f4, -88(x2)	# 124
	fle		f4, f3, fle.33208	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.33207	# 124
fle.33208:
	fsub	f5, f0, f4	# 124
fle_cont.33207:
	fsw		f1, -100(x2)	# 125
	fle		f6, f5, fle.33210	# 125
	lui		x4, %hi(l.27809)	# 1809
	ori		x4, x0, %lo(l.27809)	# 1809
	flw		f1, 0(x4)	# 1809
	jal		x0, fle_cont.33209	# 125
fle.33210:
	fdiv	f2, f2, f4	# 1811
	fle		f2, f3, fle.33212	# 124
	jal		x0, fle_cont.33211	# 124
fle.33212:
	fsub	f2, f0, f2	# 124
fle_cont.33211:
	lw		x29, -32(x2)	# 1812
	fadd	f1, f0, f2	# 1812
	sw		x1, -104(x2)	# 1812
	addi	x2, x2, -108	# 1812
	lw		x31, 0(x29)	# 1812
	jalr	x1, x31, 0	# 1812
	addi	x2, x2, 108	# 1812
	lw		x1, -104(x2)	# 1812
	lui		x4, %hi(l.27811)	# 1812
	ori		x4, x0, %lo(l.27811)	# 1812
	flw		f2, 0(x4)	# 1812
	fmul	f1, f1, f2	# 1812
	lui		x4, %hi(l.27813)	# 1812
	ori		x4, x0, %lo(l.27813)	# 1812
	flw		f2, 0(x4)	# 1812
	fdiv	f1, f1, f2	# 1812
fle_cont.33209:
	fsw		f1, -104(x2)	# 1814
	sw		x1, -108(x2)	# 1814
	addi	x2, x2, -112	# 1814
	jal		x1, min_caml_floor	# 1814
	addi	x2, x2, 112	# 1814
	lw		x1, -108(x2)	# 1814
	flw		f2, -104(x2)	# 1814
	fsub	f1, f2, f1	# 1814
	lui		x4, %hi(l.27824)	# 1815
	ori		x4, x0, %lo(l.27824)	# 1815
	flw		f2, 0(x4)	# 1815
	flw		f4, -100(x2)	# 1815
	fsub	f4, f26, f4	# 1815
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1815
	fsub	f1, f26, f1	# 1815
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1815
	flw		f2, -60(x2)	# 122
	fle		f2, f1, fle_cont.33213	# 122
	fadd	f1, f0, f2	# 1816
	jal		x0, fle_cont.33213	# 122
fle_cont.33213:
	flw		f3, -48(x2)	# 1817
	fmul	f1, f3, f1	# 1817
	lui		x4, %hi(l.27827)	# 1817
	ori		x4, x0, %lo(l.27827)	# 1817
	flw		f3, 0(x4)	# 1817
	fdiv	f1, f1, f3	# 1817
	lw		x4, -92(x2)	# 1817
	addi	x4, x4, 64376	# 1817
	fsw		f1, 0(x4)	# 1817
	jal		x0, beq_cont.33193	# 1780
beq.33198:
	addi	x7, x4, 0	# 1783
	addi	x11, x7, 64348	# 1783
	flw		f1, 0(x11)	# 1783
	lw		x11, 20(x5)	# 473
	add		x7, x11, x7	# 478
	flw		f2, 0(x7)	# 478
	fsub	f1, f1, f2	# 1783
	addi	x7, x10, 0	# 1784
	addi	x12, x7, 64348	# 1784
	flw		f2, 0(x12)	# 1784
	add		x11, x11, x7	# 498
	flw		f3, 0(x11)	# 498
	fsub	f2, f2, f3	# 1784
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1785
	fsqrt	f1, f1	# 1785
	fdiv	f1, f1, f23	# 1785
	sw		x7, -108(x2)	# 1786
	fsw		f1, -112(x2)	# 1786
	sw		x1, -116(x2)	# 1786
	addi	x2, x2, -120	# 1786
	jal		x1, min_caml_floor	# 1786
	addi	x2, x2, 120	# 1786
	lw		x1, -116(x2)	# 1786
	flw		f2, -112(x2)	# 1786
	fsub	f1, f2, f1	# 1786
	lui		x4, %hi(l.27813)	# 1786
	ori		x4, x0, %lo(l.27813)	# 1786
	flw		f2, 0(x4)	# 1786
	fmul	f1, f1, f2	# 1786
	lw		x29, -36(x2)	# 1787
	sw		x1, -116(x2)	# 1787
	addi	x2, x2, -120	# 1787
	lw		x31, 0(x29)	# 1787
	jalr	x1, x31, 0	# 1787
	addi	x2, x2, 120	# 1787
	lw		x1, -116(x2)	# 1787
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1788
	fmul	f3, f1, f2	# 1788
	addi	x4, x8, 0	# 1788
	addi	x4, x4, 64376	# 1788
	fsw		f3, 0(x4)	# 1788
	fsub	f1, f30, f1	# 1789
	fmul	f1, f1, f2	# 1789
	lw		x4, -108(x2)	# 1789
	addi	x4, x4, 64376	# 1789
	fsw		f1, 0(x4)	# 1789
	jal		x0, beq_cont.33193	# 1773
beq.33196:
	addi	x7, x8, 0	# 1776
	addi	x11, x7, 64348	# 1776
	flw		f1, 0(x11)	# 1776
	lui		x11, %hi(l.27849)	# 1776
	ori		x11, x0, %lo(l.27849)	# 1776
	flw		f2, 0(x11)	# 1776
	fmul	f1, f1, f2	# 1776
	lw		x29, -44(x2)	# 1776
	sw		x1, -116(x2)	# 1776
	addi	x2, x2, -120	# 1776
	lw		x31, 0(x29)	# 1776
	jalr	x1, x31, 0	# 1776
	addi	x2, x2, 120	# 1776
	lw		x1, -116(x2)	# 1776
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1777
	fmul	f3, f2, f1	# 1777
	lw		x4, -84(x2)	# 1777
	addi	x11, x4, 0	# 1777
	addi	x11, x11, 64376	# 1777
	fsw		f3, 0(x11)	# 1777
	fsub	f1, f30, f1	# 1778
	fmul	f1, f2, f1	# 1778
	addi	x7, x7, 64376	# 1778
	fsw		f1, 0(x7)	# 1778
	jal		x0, beq_cont.33193	# 1755
beq.33194:
	addi	x7, x4, 0	# 1758
	addi	x9, x7, 64348	# 1758
	flw		f1, 0(x9)	# 1758
	lw		x9, 20(x5)	# 473
	add		x7, x9, x7	# 478
	flw		f2, 0(x7)	# 478
	fsub	f1, f1, f2	# 1758
	fmul	f3, f1, f24	# 1760
	fsw		f24, -116(x2)	# 1760
	fsw		f1, -120(x2)	# 1760
	fadd	f1, f0, f3	# 1760
	sw		x1, -124(x2)	# 1760
	addi	x2, x2, -128	# 1760
	jal		x1, min_caml_floor	# 1760
	addi	x2, x2, 128	# 1760
	lw		x1, -124(x2)	# 1760
	fmul	f1, f1, f25	# 1760
	flw		f3, -120(x2)	# 1761
	fsub	f1, f3, f1	# 1761
	addi	x4, x10, 0	# 1763
	addi	x5, x4, 64348	# 1763
	flw		f4, 0(x5)	# 1763
	addi	x5, x9, 0	# 493
	add		x4, x5, x4	# 498
	flw		f5, 0(x4)	# 498
	fsub	f4, f4, f5	# 1763
	flw		f5, -116(x2)	# 1765
	fmul	f5, f4, f5	# 1765
	fsw		f1, -124(x2)	# 1765
	fsw		f25, -128(x2)	# 1765
	fadd	f1, f0, f5	# 1765
	sw		x1, -132(x2)	# 1765
	addi	x2, x2, -136	# 1765
	jal		x1, min_caml_floor	# 1765
	addi	x2, x2, 136	# 1765
	lw		x1, -132(x2)	# 1765
	flw		f2, -128(x2)	# 1765
	fmul	f1, f1, f2	# 1765
	fsub	f1, f4, f1	# 1766
	flw		f2, -124(x2)	# 125
	fle		f23, f2, fle.33216	# 125
	fle		f23, f1, fle.33218	# 125
	flw		f1, -48(x2)	# 1770
	jal		x0, fle_cont.33215	# 125
fle.33218:
	flw		f1, -60(x2)	# 1770
	jal		x0, fle_cont.33215	# 125
fle.33216:
	fle		f23, f1, fle.33220	# 125
	flw		f1, -60(x2)	# 1771
	jal		x0, fle_cont.33215	# 125
fle.33220:
	flw		f1, -48(x2)	# 1771
fle_cont.33215:
	addi	x4, x8, 0	# 1768
	addi	x4, x4, 64376	# 1768
	fsw		f1, 0(x4)	# 1768
beq_cont.33193:
	lw		x4, -84(x2)	# 1975
	addi	x5, x4, 64332	# 1975
	lw		x5, 0(x5)	# 1975
	lw		x6, -72(x2)	# 1975
	lw		x29, -28(x2)	# 1975
	sw		x10, -132(x2)	# 1975
	sw		x8, -136(x2)	# 1975
	sw		x4, -140(x2)	# 1975
	addi	x4, x6, 0	# 1975
	sw		x1, -144(x2)	# 1975
	addi	x2, x2, -148	# 1975
	lw		x31, 0(x29)	# 1975
	jalr	x1, x31, 0	# 1975
	addi	x2, x2, 148	# 1975
	lw		x1, -144(x2)	# 1975
	lw		x5, -72(x2)	# 1975
	beq		x4, x5, beq.33222	# 1975
	jal		x0, fle_cont.33171	# 1975
beq.33222:
	lw		x4, -140(x2)	# 334
	addi	x5, x4, 64364	# 334
	flw		f1, 0(x5)	# 334
	addi	x5, x4, 64108	# 334
	flw		f2, 0(x5)	# 334
	fmul	f1, f1, f2	# 334
	lw		x5, -136(x2)	# 334
	addi	x6, x5, 64364	# 334
	flw		f2, 0(x6)	# 334
	addi	x6, x5, 64108	# 334
	flw		f3, 0(x6)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	lw		x6, -132(x2)	# 334
	addi	x7, x6, 64364	# 334
	flw		f2, 0(x7)	# 334
	addi	x7, x6, 64108	# 334
	flw		f3, 0(x7)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	fsub	f1, f0, f1	# 123
	flw		f2, -60(x2)	# 121
	fle		f1, f2, fle.33224	# 121
	jal		x0, fle_cont.33223	# 121
fle.33224:
	fadd	f1, f0, f2	# 1977
fle_cont.33223:
	flw		f2, -24(x2)	# 1978
	fmul	f1, f2, f1	# 1978
	lw		x7, -80(x2)	# 503
	lw		x7, 28(x7)	# 503
	add		x7, x7, x4	# 508
	flw		f2, 0(x7)	# 508
	fmul	f1, f1, f2	# 1978
	addi	x7, x4, 64388	# 344
	flw		f2, 0(x7)	# 344
	addi	x7, x4, 64376	# 344
	flw		f3, 0(x7)	# 344
	fmul	f3, f1, f3	# 344
	fadd	f2, f2, f3	# 344
	addi	x4, x4, 64388	# 344
	fsw		f2, 0(x4)	# 344
	addi	x4, x5, 0	# 345
	addi	x5, x4, 64388	# 345
	flw		f2, 0(x5)	# 345
	addi	x5, x4, 64376	# 345
	flw		f3, 0(x5)	# 345
	fmul	f3, f1, f3	# 345
	fadd	f2, f2, f3	# 345
	addi	x4, x4, 64388	# 345
	fsw		f2, 0(x4)	# 345
	addi	x4, x6, 0	# 346
	addi	x5, x4, 64388	# 346
	flw		f2, 0(x5)	# 346
	addi	x5, x4, 64376	# 346
	flw		f3, 0(x5)	# 346
	fmul	f1, f1, f3	# 346
	fadd	f1, f2, f1	# 346
	addi	x4, x4, 64388	# 346
	fsw		f1, 0(x4)	# 346
	jal		x0, fle_cont.33171	# 1969
	jal		x0, fle_cont.33171	# 122
fle.33172:
	fdiv	f4, f4, f20	# 1994
	addi	x21, x19, 64344	# 1676
	fsw		f1, 0(x21)	# 1676
	addi	x21, x19, 64332	# 1677
	lw		x21, 0(x21)	# 1677
	fsw		f4, -144(x2)	# 1677
	sw		x10, -28(x2)	# 1677
	sw		x12, -32(x2)	# 1677
	sw		x11, -36(x2)	# 1677
	sw		x14, -40(x2)	# 1677
	sw		x9, -44(x2)	# 1677
	fsw		f2, -48(x2)	# 1677
	sw		x18, -52(x2)	# 1677
	sw		x20, -56(x2)	# 1677
	fsw		f3, -60(x2)	# 1677
	sw		x16, -64(x2)	# 1677
	sw		x17, -148(x2)	# 1677
	sw		x15, -72(x2)	# 1677
	sw		x19, -152(x2)	# 1677
	addi	x6, x17, 0	# 1677
	addi	x5, x21, 0	# 1677
	addi	x4, x15, 0	# 1677
	addi	x29, x8, 0	# 1677
	sw		x1, -156(x2)	# 1677
	addi	x2, x2, -160	# 1677
	lw		x31, 0(x29)	# 1677
	jalr	x1, x31, 0	# 1677
	addi	x2, x2, 160	# 1677
	lw		x1, -156(x2)	# 1677
	lw		x4, -152(x2)	# 1678
	addi	x5, x4, 64344	# 1678
	flw		f1, 0(x5)	# 1678
	fle		f1, f18, fle.33226	# 125
	fle		f19, f1, fle.33228	# 125
	addi	x5, x0, 1	# 125
	jal		x0, fle_cont.33225	# 125
fle.33228:
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.33225	# 125
fle.33226:
	addi	x5, x0, 0	# 1682
fle_cont.33225:
	lw		x6, -72(x2)	# 1969
	beq		x5, x6, fle_cont.33171	# 1969
	addi	x5, x4, 64360	# 1970
	lw		x5, 0(x5)	# 1970
	mul		x5, x30, x5	# 1970
	addi	x5, x5, 63844	# 1970
	lw		x5, 0(x5)	# 1970
	lw		x7, -148(x2)	# 681
	lw		x7, 0(x7)	# 681
	lw		x8, 4(x5)	# 395
	lw		x9, -64(x2)	# 1735
	beq		x8, x9, beq.33232	# 1735
	lw		x7, -16(x2)	# 1737
	beq		x8, x7, beq.33234	# 1737
	addi	x8, x4, 0	# 1712
	addi	x10, x8, 64348	# 1712
	flw		f1, 0(x10)	# 1712
	lw		x10, 20(x5)	# 473
	add		x11, x10, x8	# 478
	flw		f2, 0(x11)	# 478
	fsub	f1, f1, f2	# 1712
	lw		x11, -56(x2)	# 1713
	addi	x12, x11, 0	# 1713
	addi	x13, x12, 64348	# 1713
	flw		f2, 0(x13)	# 1713
	add		x13, x10, x12	# 488
	flw		f3, 0(x13)	# 488
	fsub	f2, f2, f3	# 1713
	lw		x13, -52(x2)	# 1714
	addi	x14, x13, 0	# 1714
	addi	x15, x14, 64348	# 1714
	flw		f3, 0(x15)	# 1714
	add		x10, x10, x14	# 498
	flw		f4, 0(x10)	# 498
	fsub	f3, f3, f4	# 1714
	lw		x10, 16(x5)	# 433
	add		x15, x10, x8	# 438
	flw		f4, 0(x15)	# 438
	fmul	f4, f1, f4	# 1716
	add		x15, x10, x12	# 448
	flw		f5, 0(x15)	# 448
	fmul	f5, f2, f5	# 1717
	add		x10, x10, x14	# 458
	flw		f6, 0(x10)	# 458
	fmul	f6, f3, f6	# 1718
	lw		x10, 12(x5)	# 424
	beq		x10, x6, beq.33236	# 1720
	lw		x10, 36(x5)	# 573
	addi	x15, x14, 0	# 578
	add		x16, x10, x15	# 578
	flw		f7, 0(x16)	# 578
	fmul	f8, f2, f7	# 1725
	addi	x16, x12, 0	# 568
	add		x10, x10, x16	# 568
	flw		f9, 0(x10)	# 568
	fmul	f10, f3, f9	# 1725
	fadd	f8, f8, f10	# 1725
	fmul	f8, f8, f26	# 126
	fadd	f4, f4, f8	# 1725
	addi	x10, x8, 0	# 1725
	addi	x17, x10, 64364	# 1725
	fsw		f4, 0(x17)	# 1725
	fmul	f4, f1, f7	# 1726
	lw		x17, 36(x5)	# 553
	add		x10, x17, x10	# 558
	flw		f7, 0(x10)	# 558
	fmul	f3, f3, f7	# 1726
	fadd	f3, f4, f3	# 1726
	fmul	f3, f3, f26	# 126
	fadd	f3, f5, f3	# 1726
	addi	x10, x16, 0	# 1726
	addi	x10, x10, 64364	# 1726
	fsw		f3, 0(x10)	# 1726
	fmul	f1, f1, f9	# 1727
	fmul	f2, f2, f7	# 1727
	fadd	f1, f1, f2	# 1727
	fmul	f1, f1, f26	# 126
	fadd	f1, f6, f1	# 1727
	addi	x10, x15, 0	# 1727
	addi	x10, x10, 64364	# 1727
	fsw		f1, 0(x10)	# 1727
	jal		x0, beq_cont.33235	# 1720
beq.33236:
	addi	x10, x8, 0	# 1721
	addi	x10, x10, 64364	# 1721
	fsw		f4, 0(x10)	# 1721
	addi	x10, x12, 0	# 1722
	addi	x10, x10, 64364	# 1722
	fsw		f5, 0(x10)	# 1722
	addi	x10, x14, 0	# 1723
	addi	x10, x10, 64364	# 1723
	fsw		f6, 0(x10)	# 1723
beq_cont.33235:
	lw		x10, 24(x5)	# 415
	addi	x15, x8, 64364	# 325
	flw		f1, 0(x15)	# 325
	fmul	f1, f1, f1	# 127
	addi	x15, x12, 64364	# 325
	flw		f2, 0(x15)	# 325
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 325
	addi	x15, x14, 64364	# 325
	flw		f2, 0(x15)	# 325
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 325
	fsqrt	f1, f1	# 325
	flw		f2, -60(x2)	# 120
	feq		f1, f2, feq.33238	# 120
	beq		x10, x6, beq.33240	# 326
	fdiv	f1, f22, f1	# 326
	jal		x0, feq_cont.33237	# 326
beq.33240:
	fdiv	f1, f30, f1	# 326
	jal		x0, feq_cont.33237	# 120
feq.33238:
	fadd	f1, f0, f30	# 326
feq_cont.33237:
	addi	x10, x8, 64364	# 327
	flw		f3, 0(x10)	# 327
	fmul	f3, f3, f1	# 327
	addi	x8, x8, 64364	# 327
	fsw		f3, 0(x8)	# 327
	addi	x8, x12, 0	# 328
	addi	x10, x8, 64364	# 328
	flw		f3, 0(x10)	# 328
	fmul	f3, f3, f1	# 328
	addi	x8, x8, 64364	# 328
	fsw		f3, 0(x8)	# 328
	addi	x8, x14, 0	# 329
	addi	x10, x8, 64364	# 329
	flw		f3, 0(x10)	# 329
	fmul	f1, f3, f1	# 329
	addi	x8, x8, 64364	# 329
	fsw		f1, 0(x8)	# 329
	jal		x0, beq_cont.33231	# 1737
beq.33234:
	lw		x8, 16(x5)	# 433
	addi	x10, x4, 0	# 438
	add		x8, x8, x10	# 438
	flw		f1, 0(x8)	# 438
	fsub	f1, f0, f1	# 123
	addi	x8, x10, 0	# 1705
	addi	x8, x8, 64364	# 1705
	fsw		f1, 0(x8)	# 1705
	lw		x8, 16(x5)	# 443
	lw		x10, -56(x2)	# 448
	addi	x11, x10, 0	# 448
	add		x8, x8, x11	# 448
	flw		f1, 0(x8)	# 448
	fsub	f1, f0, f1	# 123
	addi	x8, x11, 0	# 1706
	addi	x8, x8, 64364	# 1706
	fsw		f1, 0(x8)	# 1706
	lw		x8, 16(x5)	# 453
	lw		x11, -52(x2)	# 458
	addi	x12, x11, 0	# 458
	add		x8, x8, x12	# 458
	flw		f1, 0(x8)	# 458
	fsub	f1, f0, f1	# 123
	addi	x8, x12, 0	# 1707
	addi	x8, x8, 64364	# 1707
	fsw		f1, 0(x8)	# 1707
	jal		x0, beq_cont.33231	# 1735
beq.33232:
	addi	x8, x4, 0	# 1696
	addi	x10, x8, 64340	# 1696
	lw		x10, 0(x10)	# 1696
	addi	x8, x8, 64364	# 289
	flw		f1, -60(x2)	# 289
	fsw		f1, 0(x8)	# 289
	lw		x8, -56(x2)	# 290
	addi	x11, x8, 0	# 290
	addi	x11, x11, 64364	# 290
	fsw		f1, 0(x11)	# 290
	lw		x11, -52(x2)	# 291
	addi	x12, x11, 0	# 291
	addi	x12, x12, 64364	# 291
	fsw		f1, 0(x12)	# 291
	sub		x10, x10, x9	# 1699
	mul		x10, x30, x10	# 1699
	add		x7, x7, x10	# 1699
	flw		f2, 0(x7)	# 1699
	feq		f2, f1, feq.33242	# 120
	fle		f2, f1, fle.33244	# 121
	fadd	f2, f0, f30	# 255
	jal		x0, feq_cont.33241	# 121
fle.33244:
	fadd	f2, f0, f22	# 256
	jal		x0, feq_cont.33241	# 120
feq.33242:
	fadd	f2, f0, f1	# 254
feq_cont.33241:
	fsub	f2, f0, f2	# 123
	addi	x7, x10, 0	# 1699
	addi	x7, x7, 64364	# 1699
	fsw		f2, 0(x7)	# 1699
beq_cont.33231:
	lw		x7, 0(x5)	# 385
	lw		x8, 32(x5)	# 523
	add		x8, x8, x4	# 528
	flw		f1, 0(x8)	# 528
	addi	x8, x4, 64376	# 1752
	fsw		f1, 0(x8)	# 1752
	lw		x8, 32(x5)	# 533
	lw		x10, -56(x2)	# 538
	add		x8, x8, x10	# 538
	flw		f1, 0(x8)	# 538
	addi	x8, x10, 0	# 1753
	addi	x10, x8, 64376	# 1753
	fsw		f1, 0(x10)	# 1753
	lw		x10, 32(x5)	# 543
	lw		x11, -52(x2)	# 548
	add		x10, x10, x11	# 548
	flw		f1, 0(x10)	# 548
	addi	x10, x11, 0	# 1754
	addi	x11, x10, 64376	# 1754
	fsw		f1, 0(x11)	# 1754
	sw		x5, -156(x2)	# 1755
	sw		x4, -160(x2)	# 1755
	beq		x7, x9, beq.33246	# 1755
	lw		x9, -16(x2)	# 1773
	beq		x7, x9, beq.33248	# 1773
	lw		x11, -40(x2)	# 1780
	beq		x7, x11, beq.33250	# 1780
	addi	x11, x0, 4	# 1791
	beq		x7, x11, beq.33252	# 1791
	jal		x0, beq_cont.33245	# 1791
beq.33252:
	addi	x7, x4, 0	# 1793
	addi	x11, x7, 64348	# 1793
	flw		f1, 0(x11)	# 1793
	lw		x11, 20(x5)	# 473
	add		x12, x11, x7	# 478
	flw		f2, 0(x12)	# 478
	fsub	f1, f1, f2	# 1793
	lw		x12, 16(x5)	# 433
	add		x7, x12, x7	# 438
	flw		f2, 0(x7)	# 438
	fsqrt	f2, f2	# 1793
	fmul	f1, f1, f2	# 1793
	addi	x7, x10, 0	# 1794
	addi	x13, x7, 64348	# 1794
	flw		f2, 0(x13)	# 1794
	add		x13, x11, x7	# 498
	flw		f3, 0(x13)	# 498
	fsub	f2, f2, f3	# 1794
	add		x13, x12, x7	# 458
	flw		f3, 0(x13)	# 458
	fsqrt	f3, f3	# 1794
	fmul	f2, f2, f3	# 1794
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1795
	flw		f4, -60(x2)	# 124
	fle		f1, f4, fle.33254	# 124
	fadd	f5, f0, f1	# 124
	jal		x0, fle_cont.33253	# 124
fle.33254:
	fsub	f5, f0, f1	# 124
fle_cont.33253:
	lui		x13, %hi(l.27807)	# 1797
	ori		x13, x0, %lo(l.27807)	# 1797
	flw		f6, 0(x13)	# 1797
	fsw		f3, -164(x2)	# 125
	fle		f6, f5, fle.33256	# 125
	lui		x13, %hi(l.27809)	# 1798
	ori		x13, x0, %lo(l.27809)	# 1798
	flw		f1, 0(x13)	# 1798
	jal		x0, fle_cont.33255	# 125
fle.33256:
	fdiv	f1, f2, f1	# 1800
	fle		f1, f4, fle.33258	# 124
	jal		x0, fle_cont.33257	# 124
fle.33258:
	fsub	f1, f0, f1	# 124
fle_cont.33257:
	lw		x29, -32(x2)	# 1802
	sw		x1, -168(x2)	# 1802
	addi	x2, x2, -172	# 1802
	lw		x31, 0(x29)	# 1802
	jalr	x1, x31, 0	# 1802
	addi	x2, x2, 172	# 1802
	lw		x1, -168(x2)	# 1802
	lui		x4, %hi(l.27811)	# 1802
	ori		x4, x0, %lo(l.27811)	# 1802
	flw		f2, 0(x4)	# 1802
	fmul	f1, f1, f2	# 1802
	lui		x4, %hi(l.27813)	# 1802
	ori		x4, x0, %lo(l.27813)	# 1802
	flw		f2, 0(x4)	# 1802
	fdiv	f1, f1, f2	# 1802
fle_cont.33255:
	sw		x7, -168(x2)	# 1804
	fsw		f1, -172(x2)	# 1804
	sw		x1, -176(x2)	# 1804
	addi	x2, x2, -180	# 1804
	jal		x1, min_caml_floor	# 1804
	addi	x2, x2, 180	# 1804
	lw		x1, -176(x2)	# 1804
	flw		f2, -172(x2)	# 1804
	fsub	f1, f2, f1	# 1804
	addi	x4, x8, 0	# 1806
	addi	x5, x4, 64348	# 1806
	flw		f2, 0(x5)	# 1806
	addi	x5, x11, 0	# 483
	add		x5, x5, x4	# 488
	flw		f3, 0(x5)	# 488
	fsub	f2, f2, f3	# 1806
	addi	x5, x12, 0	# 443
	add		x4, x5, x4	# 448
	flw		f3, 0(x4)	# 448
	fsqrt	f3, f3	# 1806
	fmul	f2, f2, f3	# 1806
	flw		f3, -60(x2)	# 124
	flw		f4, -164(x2)	# 124
	fle		f4, f3, fle.33260	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.33259	# 124
fle.33260:
	fsub	f5, f0, f4	# 124
fle_cont.33259:
	fsw		f1, -176(x2)	# 125
	fle		f6, f5, fle.33262	# 125
	lui		x4, %hi(l.27809)	# 1809
	ori		x4, x0, %lo(l.27809)	# 1809
	flw		f1, 0(x4)	# 1809
	jal		x0, fle_cont.33261	# 125
fle.33262:
	fdiv	f2, f2, f4	# 1811
	fle		f2, f3, fle.33264	# 124
	jal		x0, fle_cont.33263	# 124
fle.33264:
	fsub	f2, f0, f2	# 124
fle_cont.33263:
	lw		x29, -32(x2)	# 1812
	fadd	f1, f0, f2	# 1812
	sw		x1, -180(x2)	# 1812
	addi	x2, x2, -184	# 1812
	lw		x31, 0(x29)	# 1812
	jalr	x1, x31, 0	# 1812
	addi	x2, x2, 184	# 1812
	lw		x1, -180(x2)	# 1812
	lui		x4, %hi(l.27811)	# 1812
	ori		x4, x0, %lo(l.27811)	# 1812
	flw		f2, 0(x4)	# 1812
	fmul	f1, f1, f2	# 1812
	lui		x4, %hi(l.27813)	# 1812
	ori		x4, x0, %lo(l.27813)	# 1812
	flw		f2, 0(x4)	# 1812
	fdiv	f1, f1, f2	# 1812
fle_cont.33261:
	fsw		f1, -180(x2)	# 1814
	sw		x1, -184(x2)	# 1814
	addi	x2, x2, -188	# 1814
	jal		x1, min_caml_floor	# 1814
	addi	x2, x2, 188	# 1814
	lw		x1, -184(x2)	# 1814
	flw		f2, -180(x2)	# 1814
	fsub	f1, f2, f1	# 1814
	lui		x4, %hi(l.27824)	# 1815
	ori		x4, x0, %lo(l.27824)	# 1815
	flw		f2, 0(x4)	# 1815
	flw		f4, -176(x2)	# 1815
	fsub	f4, f26, f4	# 1815
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1815
	fsub	f1, f26, f1	# 1815
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1815
	flw		f2, -60(x2)	# 122
	fle		f2, f1, fle_cont.33265	# 122
	fadd	f1, f0, f2	# 1816
	jal		x0, fle_cont.33265	# 122
fle_cont.33265:
	flw		f3, -48(x2)	# 1817
	fmul	f1, f3, f1	# 1817
	lui		x4, %hi(l.27827)	# 1817
	ori		x4, x0, %lo(l.27827)	# 1817
	flw		f3, 0(x4)	# 1817
	fdiv	f1, f1, f3	# 1817
	lw		x4, -168(x2)	# 1817
	addi	x4, x4, 64376	# 1817
	fsw		f1, 0(x4)	# 1817
	jal		x0, beq_cont.33245	# 1780
beq.33250:
	addi	x7, x4, 0	# 1783
	addi	x11, x7, 64348	# 1783
	flw		f1, 0(x11)	# 1783
	lw		x11, 20(x5)	# 473
	add		x7, x11, x7	# 478
	flw		f2, 0(x7)	# 478
	fsub	f1, f1, f2	# 1783
	addi	x7, x10, 0	# 1784
	addi	x12, x7, 64348	# 1784
	flw		f2, 0(x12)	# 1784
	add		x11, x11, x7	# 498
	flw		f3, 0(x11)	# 498
	fsub	f2, f2, f3	# 1784
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1785
	fsqrt	f1, f1	# 1785
	fdiv	f1, f1, f23	# 1785
	sw		x7, -184(x2)	# 1786
	fsw		f1, -188(x2)	# 1786
	sw		x1, -192(x2)	# 1786
	addi	x2, x2, -196	# 1786
	jal		x1, min_caml_floor	# 1786
	addi	x2, x2, 196	# 1786
	lw		x1, -192(x2)	# 1786
	flw		f2, -188(x2)	# 1786
	fsub	f1, f2, f1	# 1786
	lui		x4, %hi(l.27813)	# 1786
	ori		x4, x0, %lo(l.27813)	# 1786
	flw		f2, 0(x4)	# 1786
	fmul	f1, f1, f2	# 1786
	lw		x29, -36(x2)	# 1787
	sw		x1, -192(x2)	# 1787
	addi	x2, x2, -196	# 1787
	lw		x31, 0(x29)	# 1787
	jalr	x1, x31, 0	# 1787
	addi	x2, x2, 196	# 1787
	lw		x1, -192(x2)	# 1787
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1788
	fmul	f3, f1, f2	# 1788
	addi	x4, x8, 0	# 1788
	addi	x4, x4, 64376	# 1788
	fsw		f3, 0(x4)	# 1788
	fsub	f1, f30, f1	# 1789
	fmul	f1, f1, f2	# 1789
	lw		x4, -184(x2)	# 1789
	addi	x4, x4, 64376	# 1789
	fsw		f1, 0(x4)	# 1789
	jal		x0, beq_cont.33245	# 1773
beq.33248:
	addi	x7, x8, 0	# 1776
	addi	x11, x7, 64348	# 1776
	flw		f1, 0(x11)	# 1776
	lui		x11, %hi(l.27849)	# 1776
	ori		x11, x0, %lo(l.27849)	# 1776
	flw		f2, 0(x11)	# 1776
	fmul	f1, f1, f2	# 1776
	lw		x29, -44(x2)	# 1776
	sw		x1, -192(x2)	# 1776
	addi	x2, x2, -196	# 1776
	lw		x31, 0(x29)	# 1776
	jalr	x1, x31, 0	# 1776
	addi	x2, x2, 196	# 1776
	lw		x1, -192(x2)	# 1776
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1777
	fmul	f3, f2, f1	# 1777
	lw		x4, -160(x2)	# 1777
	addi	x11, x4, 0	# 1777
	addi	x11, x11, 64376	# 1777
	fsw		f3, 0(x11)	# 1777
	fsub	f1, f30, f1	# 1778
	fmul	f1, f2, f1	# 1778
	addi	x7, x7, 64376	# 1778
	fsw		f1, 0(x7)	# 1778
	jal		x0, beq_cont.33245	# 1755
beq.33246:
	addi	x7, x4, 0	# 1758
	addi	x9, x7, 64348	# 1758
	flw		f1, 0(x9)	# 1758
	lw		x9, 20(x5)	# 473
	add		x7, x9, x7	# 478
	flw		f2, 0(x7)	# 478
	fsub	f1, f1, f2	# 1758
	fmul	f3, f1, f24	# 1760
	fsw		f24, -192(x2)	# 1760
	fsw		f1, -196(x2)	# 1760
	fadd	f1, f0, f3	# 1760
	sw		x1, -200(x2)	# 1760
	addi	x2, x2, -204	# 1760
	jal		x1, min_caml_floor	# 1760
	addi	x2, x2, 204	# 1760
	lw		x1, -200(x2)	# 1760
	fmul	f1, f1, f25	# 1760
	flw		f3, -196(x2)	# 1761
	fsub	f1, f3, f1	# 1761
	addi	x4, x10, 0	# 1763
	addi	x5, x4, 64348	# 1763
	flw		f4, 0(x5)	# 1763
	addi	x5, x9, 0	# 493
	add		x4, x5, x4	# 498
	flw		f5, 0(x4)	# 498
	fsub	f4, f4, f5	# 1763
	flw		f5, -192(x2)	# 1765
	fmul	f5, f4, f5	# 1765
	fsw		f1, -200(x2)	# 1765
	fsw		f25, -204(x2)	# 1765
	fadd	f1, f0, f5	# 1765
	sw		x1, -208(x2)	# 1765
	addi	x2, x2, -212	# 1765
	jal		x1, min_caml_floor	# 1765
	addi	x2, x2, 212	# 1765
	lw		x1, -208(x2)	# 1765
	flw		f2, -204(x2)	# 1765
	fmul	f1, f1, f2	# 1765
	fsub	f1, f4, f1	# 1766
	flw		f2, -200(x2)	# 125
	fle		f23, f2, fle.33268	# 125
	fle		f23, f1, fle.33270	# 125
	flw		f1, -48(x2)	# 1770
	jal		x0, fle_cont.33267	# 125
fle.33270:
	flw		f1, -60(x2)	# 1770
	jal		x0, fle_cont.33267	# 125
fle.33268:
	fle		f23, f1, fle.33272	# 125
	flw		f1, -60(x2)	# 1771
	jal		x0, fle_cont.33267	# 125
fle.33272:
	flw		f1, -48(x2)	# 1771
fle_cont.33267:
	addi	x4, x8, 0	# 1768
	addi	x4, x4, 64376	# 1768
	fsw		f1, 0(x4)	# 1768
beq_cont.33245:
	lw		x4, -160(x2)	# 1975
	addi	x5, x4, 64332	# 1975
	lw		x5, 0(x5)	# 1975
	lw		x6, -72(x2)	# 1975
	lw		x29, -28(x2)	# 1975
	sw		x10, -208(x2)	# 1975
	sw		x8, -212(x2)	# 1975
	sw		x4, -216(x2)	# 1975
	addi	x4, x6, 0	# 1975
	sw		x1, -220(x2)	# 1975
	addi	x2, x2, -224	# 1975
	lw		x31, 0(x29)	# 1975
	jalr	x1, x31, 0	# 1975
	addi	x2, x2, 224	# 1975
	lw		x1, -220(x2)	# 1975
	lw		x5, -72(x2)	# 1975
	beq		x4, x5, beq.33274	# 1975
	jal		x0, fle_cont.33171	# 1975
beq.33274:
	lw		x4, -216(x2)	# 334
	addi	x5, x4, 64364	# 334
	flw		f1, 0(x5)	# 334
	addi	x5, x4, 64108	# 334
	flw		f2, 0(x5)	# 334
	fmul	f1, f1, f2	# 334
	lw		x5, -212(x2)	# 334
	addi	x6, x5, 64364	# 334
	flw		f2, 0(x6)	# 334
	addi	x6, x5, 64108	# 334
	flw		f3, 0(x6)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	lw		x6, -208(x2)	# 334
	addi	x7, x6, 64364	# 334
	flw		f2, 0(x7)	# 334
	addi	x7, x6, 64108	# 334
	flw		f3, 0(x7)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	fsub	f1, f0, f1	# 123
	flw		f2, -60(x2)	# 121
	fle		f1, f2, fle.33276	# 121
	jal		x0, fle_cont.33275	# 121
fle.33276:
	fadd	f1, f0, f2	# 1977
fle_cont.33275:
	flw		f2, -144(x2)	# 1978
	fmul	f1, f2, f1	# 1978
	lw		x7, -156(x2)	# 503
	lw		x7, 28(x7)	# 503
	add		x7, x7, x4	# 508
	flw		f2, 0(x7)	# 508
	fmul	f1, f1, f2	# 1978
	addi	x7, x4, 64388	# 344
	flw		f2, 0(x7)	# 344
	addi	x7, x4, 64376	# 344
	flw		f3, 0(x7)	# 344
	fmul	f3, f1, f3	# 344
	fadd	f2, f2, f3	# 344
	addi	x4, x4, 64388	# 344
	fsw		f2, 0(x4)	# 344
	addi	x4, x5, 0	# 345
	addi	x5, x4, 64388	# 345
	flw		f2, 0(x5)	# 345
	addi	x5, x4, 64376	# 345
	flw		f3, 0(x5)	# 345
	fmul	f3, f1, f3	# 345
	fadd	f2, f2, f3	# 345
	addi	x4, x4, 64388	# 345
	fsw		f2, 0(x4)	# 345
	addi	x4, x6, 0	# 346
	addi	x5, x4, 64388	# 346
	flw		f2, 0(x5)	# 346
	addi	x5, x4, 64376	# 346
	flw		f3, 0(x5)	# 346
	fmul	f1, f1, f3	# 346
	fadd	f1, f2, f1	# 346
	addi	x4, x4, 64388	# 346
	fsw		f1, 0(x4)	# 346
	jal		x0, fle_cont.33171	# 1969
fle_cont.33171:
	lw		x4, -20(x2)	# 1996
	lw		x5, -16(x2)	# 1996
	sub		x7, x4, x5	# 1996
	lw		x4, -8(x2)	# 1996
	lw		x5, -4(x2)	# 1996
	lw		x6, 0(x2)	# 1996
	lw		x29, -12(x2)	# 1996
	lw		x31, 0(x29)	# 1996
	jalr	x0, x31, 0	# 1996
do_without_neighbors.2883.17966:
	lw		x6, 24(x29)	# 2077
	lw		x7, 20(x29)	# 2077
	lw		x8, 16(x29)	# 2077
	lw		x9, 12(x29)	# 2077
	lw		x10, 8(x29)	# 2077
	lw		x11, 4(x29)	# 2077
	addi	x12, x0, 4	# 2077
	ble		x5, x12, ble.33277	# 2077
	jalr	x0, x1, 0	# 2087
ble.33277:
	lw		x13, 8(x4)	# 619
	mul		x14, x30, x5	# 2080
	add		x13, x13, x14	# 2080
	lw		x13, 0(x13)	# 2080
	ble		x10, x13, ble.33279	# 2080
	jalr	x0, x1, 0	# 2086
ble.33279:
	lw		x13, 12(x4)	# 626
	add		x13, x13, x14	# 2082
	lw		x13, 0(x13)	# 2082
	sw		x4, 0(x2)	# 2082
	sw		x29, -4(x2)	# 2082
	sw		x11, -8(x2)	# 2082
	sw		x5, -12(x2)	# 2082
	beq		x13, x10, beq_cont.33281	# 2082
	lw		x13, 20(x4)	# 640
	lw		x15, 28(x4)	# 670
	lw		x16, 4(x4)	# 611
	lw		x17, 16(x4)	# 633
	add		x13, x13, x14	# 2044
	lw		x13, 0(x13)	# 2044
	mul		x18, x30, x10	# 301
	add		x19, x13, x18	# 301
	flw		f1, 0(x19)	# 301
	addi	x19, x18, 64388	# 301
	fsw		f1, 0(x19)	# 301
	mul		x19, x30, x11	# 302
	add		x20, x13, x19	# 302
	flw		f1, 0(x20)	# 302
	addi	x20, x19, 64388	# 302
	fsw		f1, 0(x20)	# 302
	mul		x20, x30, x8	# 303
	add		x13, x13, x20	# 303
	flw		f1, 0(x13)	# 303
	addi	x13, x20, 0	# 303
	addi	x20, x13, 64388	# 303
	fsw		f1, 0(x20)	# 303
	lw		x20, 24(x4)	# 656
	add		x20, x20, x18	# 658
	lw		x20, 0(x20)	# 658
	add		x15, x15, x14	# 2047
	lw		x15, 0(x15)	# 2047
	add		x16, x16, x14	# 2048
	lw		x16, 0(x16)	# 2048
	sw		x17, -16(x2)	# 2013
	sw		x14, -20(x2)	# 2013
	sw		x12, -24(x2)	# 2013
	sw		x9, -28(x2)	# 2013
	sw		x8, -32(x2)	# 2013
	sw		x15, -36(x2)	# 2013
	sw		x7, -40(x2)	# 2013
	sw		x6, -44(x2)	# 2013
	sw		x13, -48(x2)	# 2013
	sw		x16, -52(x2)	# 2013
	sw		x18, -56(x2)	# 2013
	sw		x19, -60(x2)	# 2013
	sw		x20, -64(x2)	# 2013
	beq		x20, x10, beq_cont.33283	# 2013
	addi	x10, x18, 0	# 2014
	addi	x21, x10, 64512	# 2014
	lw		x21, 0(x21)	# 2014
	add		x22, x16, x10	# 301
	flw		f1, 0(x22)	# 301
	addi	x22, x10, 64444	# 301
	fsw		f1, 0(x22)	# 301
	addi	x22, x19, 0	# 302
	add		x23, x16, x22	# 302
	flw		f1, 0(x23)	# 302
	addi	x22, x22, 64444	# 302
	fsw		f1, 0(x22)	# 302
	addi	x22, x13, 0	# 303
	add		x23, x16, x22	# 303
	flw		f1, 0(x23)	# 303
	addi	x22, x22, 64444	# 303
	fsw		f1, 0(x22)	# 303
	addi	x10, x10, 63796	# 1357
	lw		x10, 0(x10)	# 1357
	sub		x10, x10, x11	# 1357
	addi	x5, x10, 0	# 1357
	addi	x4, x16, 0	# 1357
	addi	x29, x6, 0	# 1357
	sw		x1, -68(x2)	# 1357
	addi	x2, x2, -72	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 72	# 1357
	lw		x1, -68(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x5, -36(x2)	# 2006
	lw		x6, -52(x2)	# 2006
	lw		x29, -40(x2)	# 2006
	addi	x4, x21, 0	# 2006
	sw		x1, -68(x2)	# 2006
	addi	x2, x2, -72	# 2006
	lw		x31, 0(x29)	# 2006
	jalr	x1, x31, 0	# 2006
	addi	x2, x2, 72	# 2006
	lw		x1, -68(x2)	# 2006
	jal		x0, beq_cont.33283	# 2013
beq_cont.33283:
	lw		x4, -8(x2)	# 2017
	lw		x5, -64(x2)	# 2017
	beq		x5, x4, beq_cont.33285	# 2017
	lw		x6, -60(x2)	# 2018
	addi	x7, x6, 0	# 2018
	addi	x8, x7, 64512	# 2018
	lw		x8, 0(x8)	# 2018
	lw		x9, -56(x2)	# 301
	addi	x10, x9, 0	# 301
	lw		x11, -52(x2)	# 301
	add		x12, x11, x10	# 301
	flw		f1, 0(x12)	# 301
	addi	x12, x10, 64444	# 301
	fsw		f1, 0(x12)	# 301
	add		x12, x11, x7	# 302
	flw		f1, 0(x12)	# 302
	addi	x7, x7, 64444	# 302
	fsw		f1, 0(x7)	# 302
	lw		x7, -48(x2)	# 303
	addi	x12, x7, 0	# 303
	add		x13, x11, x12	# 303
	flw		f1, 0(x13)	# 303
	addi	x12, x12, 64444	# 303
	fsw		f1, 0(x12)	# 303
	addi	x10, x10, 63796	# 1357
	lw		x10, 0(x10)	# 1357
	sub		x10, x10, x4	# 1357
	lw		x29, -44(x2)	# 1357
	sw		x8, -68(x2)	# 1357
	addi	x5, x10, 0	# 1357
	addi	x4, x11, 0	# 1357
	sw		x1, -72(x2)	# 1357
	addi	x2, x2, -76	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 76	# 1357
	lw		x1, -72(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -68(x2)	# 2006
	lw		x5, -36(x2)	# 2006
	lw		x6, -52(x2)	# 2006
	lw		x29, -40(x2)	# 2006
	sw		x1, -72(x2)	# 2006
	addi	x2, x2, -76	# 2006
	lw		x31, 0(x29)	# 2006
	jalr	x1, x31, 0	# 2006
	addi	x2, x2, 76	# 2006
	lw		x1, -72(x2)	# 2006
	jal		x0, beq_cont.33285	# 2017
beq_cont.33285:
	lw		x4, -32(x2)	# 2021
	lw		x5, -64(x2)	# 2021
	beq		x5, x4, beq_cont.33287	# 2021
	lw		x4, -48(x2)	# 2022
	addi	x6, x4, 0	# 2022
	addi	x7, x6, 64512	# 2022
	lw		x7, 0(x7)	# 2022
	lw		x8, -56(x2)	# 301
	addi	x9, x8, 0	# 301
	lw		x10, -52(x2)	# 301
	add		x11, x10, x9	# 301
	flw		f1, 0(x11)	# 301
	addi	x11, x9, 64444	# 301
	fsw		f1, 0(x11)	# 301
	lw		x11, -60(x2)	# 302
	addi	x12, x11, 0	# 302
	add		x13, x10, x12	# 302
	flw		f1, 0(x13)	# 302
	addi	x12, x12, 64444	# 302
	fsw		f1, 0(x12)	# 302
	add		x12, x10, x6	# 303
	flw		f1, 0(x12)	# 303
	addi	x6, x6, 64444	# 303
	fsw		f1, 0(x6)	# 303
	addi	x6, x9, 0	# 1357
	addi	x6, x6, 63796	# 1357
	lw		x6, 0(x6)	# 1357
	lw		x9, -8(x2)	# 1357
	sub		x6, x6, x9	# 1357
	lw		x29, -44(x2)	# 1357
	sw		x7, -72(x2)	# 1357
	addi	x5, x6, 0	# 1357
	addi	x4, x10, 0	# 1357
	sw		x1, -76(x2)	# 1357
	addi	x2, x2, -80	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 80	# 1357
	lw		x1, -76(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -72(x2)	# 2006
	lw		x5, -36(x2)	# 2006
	lw		x6, -52(x2)	# 2006
	lw		x29, -40(x2)	# 2006
	sw		x1, -76(x2)	# 2006
	addi	x2, x2, -80	# 2006
	lw		x31, 0(x29)	# 2006
	jalr	x1, x31, 0	# 2006
	addi	x2, x2, 80	# 2006
	lw		x1, -76(x2)	# 2006
	jal		x0, beq_cont.33287	# 2021
beq_cont.33287:
	lw		x4, -28(x2)	# 2025
	lw		x5, -64(x2)	# 2025
	beq		x5, x4, beq_cont.33289	# 2025
	mul		x4, x30, x4	# 2026
	addi	x4, x4, 64512	# 2026
	lw		x4, 0(x4)	# 2026
	lw		x6, -56(x2)	# 301
	addi	x7, x6, 0	# 301
	lw		x8, -52(x2)	# 301
	add		x9, x8, x7	# 301
	flw		f1, 0(x9)	# 301
	addi	x9, x7, 64444	# 301
	fsw		f1, 0(x9)	# 301
	lw		x9, -60(x2)	# 302
	addi	x10, x9, 0	# 302
	add		x11, x8, x10	# 302
	flw		f1, 0(x11)	# 302
	addi	x10, x10, 64444	# 302
	fsw		f1, 0(x10)	# 302
	lw		x10, -48(x2)	# 303
	addi	x11, x10, 0	# 303
	add		x12, x8, x11	# 303
	flw		f1, 0(x12)	# 303
	addi	x11, x11, 64444	# 303
	fsw		f1, 0(x11)	# 303
	addi	x7, x7, 63796	# 1357
	lw		x7, 0(x7)	# 1357
	lw		x11, -8(x2)	# 1357
	sub		x7, x7, x11	# 1357
	lw		x29, -44(x2)	# 1357
	sw		x4, -76(x2)	# 1357
	addi	x5, x7, 0	# 1357
	addi	x4, x8, 0	# 1357
	sw		x1, -80(x2)	# 1357
	addi	x2, x2, -84	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 84	# 1357
	lw		x1, -80(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -76(x2)	# 2006
	lw		x5, -36(x2)	# 2006
	lw		x6, -52(x2)	# 2006
	lw		x29, -40(x2)	# 2006
	sw		x1, -80(x2)	# 2006
	addi	x2, x2, -84	# 2006
	lw		x31, 0(x29)	# 2006
	jalr	x1, x31, 0	# 2006
	addi	x2, x2, 84	# 2006
	lw		x1, -80(x2)	# 2006
	jal		x0, beq_cont.33289	# 2025
beq_cont.33289:
	lw		x4, -24(x2)	# 2029
	lw		x5, -64(x2)	# 2029
	beq		x5, x4, beq_cont.33291	# 2029
	mul		x4, x30, x4	# 2030
	addi	x4, x4, 64512	# 2030
	lw		x4, 0(x4)	# 2030
	lw		x5, -56(x2)	# 301
	addi	x6, x5, 0	# 301
	lw		x7, -52(x2)	# 301
	add		x8, x7, x6	# 301
	flw		f1, 0(x8)	# 301
	addi	x8, x6, 64444	# 301
	fsw		f1, 0(x8)	# 301
	lw		x8, -60(x2)	# 302
	addi	x9, x8, 0	# 302
	add		x10, x7, x9	# 302
	flw		f1, 0(x10)	# 302
	addi	x9, x9, 64444	# 302
	fsw		f1, 0(x9)	# 302
	lw		x9, -48(x2)	# 303
	addi	x10, x9, 0	# 303
	add		x11, x7, x10	# 303
	flw		f1, 0(x11)	# 303
	addi	x10, x10, 64444	# 303
	fsw		f1, 0(x10)	# 303
	addi	x6, x6, 63796	# 1357
	lw		x6, 0(x6)	# 1357
	lw		x10, -8(x2)	# 1357
	sub		x6, x6, x10	# 1357
	lw		x29, -44(x2)	# 1357
	sw		x4, -80(x2)	# 1357
	addi	x5, x6, 0	# 1357
	addi	x4, x7, 0	# 1357
	sw		x1, -84(x2)	# 1357
	addi	x2, x2, -88	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 88	# 1357
	lw		x1, -84(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -80(x2)	# 2006
	lw		x5, -36(x2)	# 2006
	lw		x6, -52(x2)	# 2006
	lw		x29, -40(x2)	# 2006
	sw		x1, -84(x2)	# 2006
	addi	x2, x2, -88	# 2006
	lw		x31, 0(x29)	# 2006
	jalr	x1, x31, 0	# 2006
	addi	x2, x2, 88	# 2006
	lw		x1, -84(x2)	# 2006
	jal		x0, beq_cont.33291	# 2029
beq_cont.33291:
	lw		x4, -20(x2)	# 2049
	lw		x5, -16(x2)	# 2049
	add		x4, x5, x4	# 2049
	lw		x4, 0(x4)	# 2049
	lw		x5, -56(x2)	# 374
	addi	x6, x5, 64400	# 374
	flw		f1, 0(x6)	# 374
	add		x6, x4, x5	# 374
	flw		f2, 0(x6)	# 374
	addi	x6, x5, 64388	# 374
	flw		f3, 0(x6)	# 374
	fmul	f2, f2, f3	# 374
	fadd	f1, f1, f2	# 374
	addi	x5, x5, 64400	# 374
	fsw		f1, 0(x5)	# 374
	lw		x5, -60(x2)	# 375
	addi	x6, x5, 64400	# 375
	flw		f1, 0(x6)	# 375
	add		x6, x4, x5	# 375
	flw		f2, 0(x6)	# 375
	addi	x6, x5, 64388	# 375
	flw		f3, 0(x6)	# 375
	fmul	f2, f2, f3	# 375
	fadd	f1, f1, f2	# 375
	addi	x5, x5, 64400	# 375
	fsw		f1, 0(x5)	# 375
	lw		x5, -48(x2)	# 376
	addi	x6, x5, 64400	# 376
	flw		f1, 0(x6)	# 376
	add		x4, x4, x5	# 376
	flw		f2, 0(x4)	# 376
	addi	x4, x5, 0	# 376
	addi	x5, x4, 64388	# 376
	flw		f3, 0(x5)	# 376
	fmul	f2, f2, f3	# 376
	fadd	f1, f1, f2	# 376
	addi	x4, x4, 64400	# 376
	fsw		f1, 0(x4)	# 376
	jal		x0, beq_cont.33281	# 2082
beq_cont.33281:
	lw		x4, -12(x2)	# 2085
	lw		x5, -8(x2)	# 2085
	add		x5, x4, x5	# 2085
	lw		x4, 0(x2)	# 2085
	lw		x29, -4(x2)	# 2085
	lw		x31, 0(x29)	# 2085
	jalr	x0, x31, 0	# 2085
try_exploit_neighbors.2899.17969:
	lw		x10, 16(x29)	# 2129
	lw		x11, 12(x29)	# 2129
	lw		x12, 8(x29)	# 2129
	lw		x13, 4(x29)	# 2129
	mul		x14, x30, x4	# 2129
	add		x15, x7, x14	# 2129
	lw		x15, 0(x15)	# 2129
	addi	x16, x0, 4	# 2130
	ble		x9, x16, ble.33293	# 2130
	jalr	x0, x1, 0	# 2149
ble.33293:
	lw		x16, 8(x15)	# 619
	mul		x17, x30, x9	# 2105
	add		x18, x16, x17	# 2105
	lw		x18, 0(x18)	# 2105
	ble		x12, x18, ble.33295	# 2133
	jalr	x0, x1, 0	# 2148
ble.33295:
	add		x16, x16, x17	# 2105
	lw		x16, 0(x16)	# 2105
	add		x18, x6, x14	# 2113
	lw		x18, 0(x18)	# 2113
	lw		x19, 8(x18)	# 619
	add		x19, x19, x17	# 2105
	lw		x19, 0(x19)	# 2105
	beq		x19, x16, beq.33298	# 2113
	addi	x16, x0, 0	# 2121
	jal		x0, beq_cont.33297	# 2113
beq.33298:
	addi	x19, x14, 0	# 2114
	add		x19, x8, x19	# 2114
	lw		x19, 0(x19)	# 2114
	lw		x19, 8(x19)	# 619
	addi	x20, x17, 0	# 2105
	add		x19, x19, x20	# 2105
	lw		x19, 0(x19)	# 2105
	beq		x19, x16, beq.33300	# 2114
	addi	x16, x0, 0	# 2120
	jal		x0, beq_cont.33297	# 2114
beq.33300:
	sub		x19, x4, x13	# 2115
	mul		x19, x30, x19	# 2115
	add		x19, x7, x19	# 2115
	lw		x19, 0(x19)	# 2115
	lw		x19, 8(x19)	# 619
	add		x19, x19, x20	# 2105
	lw		x19, 0(x19)	# 2105
	beq		x19, x16, beq.33302	# 2115
	addi	x16, x0, 0	# 2119
	jal		x0, beq_cont.33297	# 2115
beq.33302:
	add		x19, x4, x13	# 2116
	mul		x19, x30, x19	# 2116
	add		x19, x7, x19	# 2116
	lw		x19, 0(x19)	# 2116
	lw		x19, 8(x19)	# 619
	add		x19, x19, x20	# 2105
	lw		x19, 0(x19)	# 2105
	beq		x19, x16, beq.33304	# 2116
	addi	x16, x0, 0	# 2118
	jal		x0, beq_cont.33297	# 2116
beq.33304:
	addi	x16, x0, 1	# 2117
beq_cont.33297:
	beq		x16, x12, beq.33305	# 2135
	lw		x10, 12(x15)	# 626
	addi	x16, x17, 0	# 2139
	add		x10, x10, x16	# 2139
	lw		x10, 0(x10)	# 2139
	beq		x10, x12, beq_cont.33306	# 2139
	lw		x10, 20(x18)	# 640
	sub		x17, x4, x13	# 2059
	mul		x17, x30, x17	# 2059
	add		x17, x7, x17	# 2059
	lw		x17, 0(x17)	# 2059
	lw		x17, 20(x17)	# 640
	lw		x15, 20(x15)	# 640
	add		x18, x4, x13	# 2061
	mul		x18, x30, x18	# 2061
	add		x18, x7, x18	# 2061
	lw		x18, 0(x18)	# 2061
	lw		x18, 20(x18)	# 640
	add		x19, x8, x14	# 2062
	lw		x19, 0(x19)	# 2062
	lw		x19, 20(x19)	# 640
	add		x10, x10, x16	# 2064
	lw		x10, 0(x10)	# 2064
	mul		x12, x30, x12	# 301
	add		x20, x10, x12	# 301
	flw		f1, 0(x20)	# 301
	addi	x20, x12, 64388	# 301
	fsw		f1, 0(x20)	# 301
	mul		x20, x30, x13	# 302
	add		x21, x10, x20	# 302
	flw		f1, 0(x21)	# 302
	addi	x21, x20, 64388	# 302
	fsw		f1, 0(x21)	# 302
	mul		x11, x30, x11	# 303
	add		x10, x10, x11	# 303
	flw		f1, 0(x10)	# 303
	addi	x10, x11, 0	# 303
	addi	x11, x10, 64388	# 303
	fsw		f1, 0(x11)	# 303
	addi	x11, x16, 0	# 2065
	add		x16, x17, x11	# 2065
	lw		x16, 0(x16)	# 2065
	addi	x17, x12, 64388	# 351
	flw		f1, 0(x17)	# 351
	add		x17, x16, x12	# 351
	flw		f2, 0(x17)	# 351
	fadd	f1, f1, f2	# 351
	addi	x17, x12, 64388	# 351
	fsw		f1, 0(x17)	# 351
	addi	x17, x20, 0	# 352
	addi	x20, x17, 64388	# 352
	flw		f1, 0(x20)	# 352
	add		x20, x16, x17	# 352
	flw		f2, 0(x20)	# 352
	fadd	f1, f1, f2	# 352
	addi	x20, x17, 64388	# 352
	fsw		f1, 0(x20)	# 352
	addi	x20, x10, 64388	# 353
	flw		f1, 0(x20)	# 353
	add		x16, x16, x10	# 353
	flw		f2, 0(x16)	# 353
	fadd	f1, f1, f2	# 353
	addi	x16, x10, 64388	# 353
	fsw		f1, 0(x16)	# 353
	add		x15, x15, x11	# 2066
	lw		x15, 0(x15)	# 2066
	addi	x16, x12, 64388	# 351
	flw		f1, 0(x16)	# 351
	add		x16, x15, x12	# 351
	flw		f2, 0(x16)	# 351
	fadd	f1, f1, f2	# 351
	addi	x16, x12, 64388	# 351
	fsw		f1, 0(x16)	# 351
	addi	x16, x17, 0	# 352
	addi	x17, x16, 64388	# 352
	flw		f1, 0(x17)	# 352
	add		x17, x15, x16	# 352
	flw		f2, 0(x17)	# 352
	fadd	f1, f1, f2	# 352
	addi	x17, x16, 64388	# 352
	fsw		f1, 0(x17)	# 352
	addi	x17, x10, 64388	# 353
	flw		f1, 0(x17)	# 353
	add		x15, x15, x10	# 353
	flw		f2, 0(x15)	# 353
	fadd	f1, f1, f2	# 353
	addi	x15, x10, 64388	# 353
	fsw		f1, 0(x15)	# 353
	add		x15, x18, x11	# 2067
	lw		x15, 0(x15)	# 2067
	addi	x17, x12, 64388	# 351
	flw		f1, 0(x17)	# 351
	add		x17, x15, x12	# 351
	flw		f2, 0(x17)	# 351
	fadd	f1, f1, f2	# 351
	addi	x17, x12, 64388	# 351
	fsw		f1, 0(x17)	# 351
	addi	x17, x16, 64388	# 352
	flw		f1, 0(x17)	# 352
	add		x17, x15, x16	# 352
	flw		f2, 0(x17)	# 352
	fadd	f1, f1, f2	# 352
	addi	x17, x16, 64388	# 352
	fsw		f1, 0(x17)	# 352
	addi	x17, x10, 64388	# 353
	flw		f1, 0(x17)	# 353
	add		x15, x15, x10	# 353
	flw		f2, 0(x15)	# 353
	fadd	f1, f1, f2	# 353
	addi	x15, x10, 64388	# 353
	fsw		f1, 0(x15)	# 353
	add		x15, x19, x11	# 2068
	lw		x15, 0(x15)	# 2068
	addi	x17, x12, 64388	# 351
	flw		f1, 0(x17)	# 351
	add		x17, x15, x12	# 351
	flw		f2, 0(x17)	# 351
	fadd	f1, f1, f2	# 351
	addi	x17, x12, 64388	# 351
	fsw		f1, 0(x17)	# 351
	addi	x17, x16, 64388	# 352
	flw		f1, 0(x17)	# 352
	add		x17, x15, x16	# 352
	flw		f2, 0(x17)	# 352
	fadd	f1, f1, f2	# 352
	addi	x17, x16, 64388	# 352
	fsw		f1, 0(x17)	# 352
	addi	x17, x10, 64388	# 353
	flw		f1, 0(x17)	# 353
	add		x15, x15, x10	# 353
	flw		f2, 0(x15)	# 353
	fadd	f1, f1, f2	# 353
	addi	x15, x10, 64388	# 353
	fsw		f1, 0(x15)	# 353
	add		x14, x7, x14	# 2070
	lw		x14, 0(x14)	# 2070
	lw		x14, 16(x14)	# 633
	add		x11, x14, x11	# 2071
	lw		x11, 0(x11)	# 2071
	addi	x14, x12, 64400	# 374
	flw		f1, 0(x14)	# 374
	add		x14, x11, x12	# 374
	flw		f2, 0(x14)	# 374
	addi	x14, x12, 64388	# 374
	flw		f3, 0(x14)	# 374
	fmul	f2, f2, f3	# 374
	fadd	f1, f1, f2	# 374
	addi	x12, x12, 64400	# 374
	fsw		f1, 0(x12)	# 374
	addi	x12, x16, 0	# 375
	addi	x14, x12, 64400	# 375
	flw		f1, 0(x14)	# 375
	add		x14, x11, x12	# 375
	flw		f2, 0(x14)	# 375
	addi	x14, x12, 64388	# 375
	flw		f3, 0(x14)	# 375
	fmul	f2, f2, f3	# 375
	fadd	f1, f1, f2	# 375
	addi	x12, x12, 64400	# 375
	fsw		f1, 0(x12)	# 375
	addi	x12, x10, 64400	# 376
	flw		f1, 0(x12)	# 376
	add		x11, x11, x10	# 376
	flw		f2, 0(x11)	# 376
	addi	x11, x10, 64388	# 376
	flw		f3, 0(x11)	# 376
	fmul	f2, f2, f3	# 376
	fadd	f1, f1, f2	# 376
	addi	x10, x10, 64400	# 376
	fsw		f1, 0(x10)	# 376
	jal		x0, beq_cont.33306	# 2139
beq_cont.33306:
	add		x9, x9, x13	# 2144
	lw		x31, 0(x29)	# 2144
	jalr	x0, x31, 0	# 2144
beq.33305:
	addi	x5, x9, 0	# 2147
	addi	x4, x15, 0	# 2147
	addi	x29, x10, 0	# 2147
	lw		x31, 0(x29)	# 2147
	jalr	x0, x31, 0	# 2147
pretrace_diffuse_rays.2914.17976:
	lw		x6, 24(x29)	# 2205
	lw		x7, 20(x29)	# 2205
	lw		x8, 16(x29)	# 2205
	lw		x9, 12(x29)	# 2205
	lw		x10, 8(x29)	# 2205
	flw		f1, 4(x29)	# 2205
	addi	x11, x0, 4	# 2205
	ble		x5, x11, ble.33308	# 2205
	jalr	x0, x1, 0	# 2229
ble.33308:
	lw		x11, 8(x4)	# 619
	mul		x12, x30, x5	# 2105
	add		x11, x11, x12	# 2105
	lw		x11, 0(x11)	# 2105
	ble		x9, x11, ble.33310	# 2209
	jalr	x0, x1, 0	# 2228
ble.33310:
	lw		x11, 12(x4)	# 626
	add		x11, x11, x12	# 2212
	lw		x11, 0(x11)	# 2212
	sw		x29, 0(x2)	# 2212
	sw		x10, -4(x2)	# 2212
	sw		x5, -8(x2)	# 2212
	beq		x11, x9, beq_cont.33312	# 2212
	lw		x11, 24(x4)	# 656
	mul		x9, x30, x9	# 658
	add		x11, x11, x9	# 658
	lw		x11, 0(x11)	# 658
	addi	x13, x9, 64388	# 289
	fsw		f1, 0(x13)	# 289
	mul		x13, x30, x10	# 290
	addi	x14, x13, 64388	# 290
	fsw		f1, 0(x14)	# 290
	mul		x8, x30, x8	# 291
	addi	x14, x8, 64388	# 291
	fsw		f1, 0(x14)	# 291
	lw		x14, 28(x4)	# 670
	lw		x15, 4(x4)	# 611
	mul		x11, x30, x11	# 2221
	addi	x11, x11, 64512	# 2221
	lw		x11, 0(x11)	# 2221
	add		x14, x14, x12	# 2222
	lw		x14, 0(x14)	# 2222
	add		x15, x15, x12	# 2223
	lw		x15, 0(x15)	# 2223
	add		x16, x15, x9	# 301
	flw		f1, 0(x16)	# 301
	addi	x16, x9, 64444	# 301
	fsw		f1, 0(x16)	# 301
	add		x16, x15, x13	# 302
	flw		f1, 0(x16)	# 302
	addi	x16, x13, 64444	# 302
	fsw		f1, 0(x16)	# 302
	add		x16, x15, x8	# 303
	flw		f1, 0(x16)	# 303
	addi	x16, x8, 64444	# 303
	fsw		f1, 0(x16)	# 303
	addi	x16, x9, 63796	# 1357
	lw		x16, 0(x16)	# 1357
	sub		x16, x16, x10	# 1357
	sw		x8, -12(x2)	# 1357
	sw		x13, -16(x2)	# 1357
	sw		x9, -20(x2)	# 1357
	sw		x12, -24(x2)	# 1357
	sw		x4, -28(x2)	# 1357
	sw		x15, -32(x2)	# 1357
	sw		x14, -36(x2)	# 1357
	sw		x11, -40(x2)	# 1357
	sw		x7, -44(x2)	# 1357
	addi	x5, x16, 0	# 1357
	addi	x4, x15, 0	# 1357
	addi	x29, x6, 0	# 1357
	sw		x1, -48(x2)	# 1357
	addi	x2, x2, -52	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 52	# 1357
	lw		x1, -48(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -40(x2)	# 2006
	lw		x5, -36(x2)	# 2006
	lw		x6, -32(x2)	# 2006
	lw		x29, -44(x2)	# 2006
	sw		x1, -48(x2)	# 2006
	addi	x2, x2, -52	# 2006
	lw		x31, 0(x29)	# 2006
	jalr	x1, x31, 0	# 2006
	addi	x2, x2, 52	# 2006
	lw		x1, -48(x2)	# 2006
	lw		x4, -28(x2)	# 640
	lw		x5, 20(x4)	# 640
	lw		x6, -24(x2)	# 2225
	add		x5, x5, x6	# 2225
	lw		x5, 0(x5)	# 2225
	lw		x6, -20(x2)	# 301
	addi	x7, x6, 64388	# 301
	flw		f1, 0(x7)	# 301
	add		x6, x5, x6	# 301
	fsw		f1, 0(x6)	# 301
	lw		x6, -16(x2)	# 302
	addi	x7, x6, 64388	# 302
	flw		f1, 0(x7)	# 302
	add		x6, x5, x6	# 302
	fsw		f1, 0(x6)	# 302
	lw		x6, -12(x2)	# 303
	addi	x7, x6, 64388	# 303
	flw		f1, 0(x7)	# 303
	add		x5, x5, x6	# 303
	fsw		f1, 0(x5)	# 303
	jal		x0, beq_cont.33312	# 2212
beq_cont.33312:
	lw		x5, -8(x2)	# 2227
	lw		x6, -4(x2)	# 2227
	add		x5, x5, x6	# 2227
	lw		x29, 0(x2)	# 2227
	lw		x31, 0(x29)	# 2227
	jalr	x0, x31, 0	# 2227
pretrace_pixels.2917.17979:
	lw		x7, 28(x29)	# 2235
	lw		x8, 24(x29)	# 2235
	lw		x9, 20(x29)	# 2235
	lw		x10, 16(x29)	# 2235
	lw		x11, 12(x29)	# 2235
	lw		x12, 8(x29)	# 2235
	flw		f4, 4(x29)	# 2235
	ble		x11, x5, ble.33314	# 2235
	jalr	x0, x1, 0	# 2255
ble.33314:
	mul		x13, x30, x11	# 2237
	addi	x14, x13, 64428	# 2237
	flw		f5, 0(x14)	# 2237
	addi	x14, x13, 64420	# 2237
	lw		x14, 0(x14)	# 2237
	sub		x14, x5, x14	# 2237
	sw		x29, 0(x2)	# 2237
	sw		x6, -4(x2)	# 2237
	sw		x4, -8(x2)	# 2237
	sw		x5, -12(x2)	# 2237
	fsw		f2, -16(x2)	# 2237
	fsw		f1, -20(x2)	# 2237
	addi	x4, x14, 0	# 2237
	sw		x1, -24(x2)	# 2237
	addi	x2, x2, -28	# 2237
	jal		x1, min_caml_float_of_int	# 2237
	addi	x2, x2, 28	# 2237
	lw		x1, -24(x2)	# 2237
	fmul	f1, f5, f1	# 2237
	addi	x4, x13, 0	# 2238
	addi	x5, x4, 64456	# 2238
	flw		f2, 0(x5)	# 2238
	fmul	f2, f1, f2	# 2238
	flw		f5, -20(x2)	# 2238
	fadd	f2, f2, f5	# 2238
	addi	x5, x4, 64492	# 2238
	fsw		f2, 0(x5)	# 2238
	mul		x5, x30, x12	# 2239
	addi	x6, x5, 64456	# 2239
	flw		f2, 0(x6)	# 2239
	fmul	f2, f1, f2	# 2239
	flw		f6, -16(x2)	# 2239
	fadd	f2, f2, f6	# 2239
	addi	x6, x5, 64492	# 2239
	fsw		f2, 0(x6)	# 2239
	mul		x6, x30, x10	# 2240
	addi	x10, x6, 64456	# 2240
	flw		f2, 0(x10)	# 2240
	fmul	f1, f1, f2	# 2240
	fadd	f1, f1, f3	# 2240
	addi	x10, x6, 64492	# 2240
	fsw		f1, 0(x10)	# 2240
	addi	x10, x4, 64492	# 325
	flw		f1, 0(x10)	# 325
	fmul	f1, f1, f1	# 127
	addi	x10, x5, 64492	# 325
	flw		f2, 0(x10)	# 325
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 325
	addi	x10, x6, 64492	# 325
	flw		f2, 0(x10)	# 325
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 325
	fsqrt	f1, f1	# 325
	feq		f1, f4, feq.33317	# 120
	fdiv	f1, f30, f1	# 326
	jal		x0, feq_cont.33316	# 120
feq.33317:
	fadd	f1, f0, f30	# 326
feq_cont.33316:
	addi	x10, x4, 64492	# 327
	flw		f2, 0(x10)	# 327
	fmul	f2, f2, f1	# 327
	addi	x10, x4, 64492	# 327
	fsw		f2, 0(x10)	# 327
	addi	x10, x5, 64492	# 328
	flw		f2, 0(x10)	# 328
	fmul	f2, f2, f1	# 328
	addi	x10, x5, 64492	# 328
	fsw		f2, 0(x10)	# 328
	addi	x10, x6, 64492	# 329
	flw		f2, 0(x10)	# 329
	fmul	f1, f2, f1	# 329
	addi	x10, x6, 64492	# 329
	fsw		f1, 0(x10)	# 329
	addi	x10, x4, 64400	# 289
	fsw		f4, 0(x10)	# 289
	addi	x10, x5, 64400	# 290
	fsw		f4, 0(x10)	# 290
	addi	x10, x6, 64400	# 291
	fsw		f4, 0(x10)	# 291
	addi	x10, x4, 64096	# 301
	flw		f1, 0(x10)	# 301
	addi	x10, x4, 64432	# 301
	fsw		f1, 0(x10)	# 301
	addi	x10, x5, 64096	# 302
	flw		f1, 0(x10)	# 302
	addi	x10, x5, 64432	# 302
	fsw		f1, 0(x10)	# 302
	addi	x10, x6, 64096	# 303
	flw		f1, 0(x10)	# 303
	addi	x10, x6, 64432	# 303
	fsw		f1, 0(x10)	# 303
	fadd	f1, f0, f30	# 2246
	lw		x10, -12(x2)	# 2246
	mul		x13, x30, x10	# 2246
	lw		x14, -8(x2)	# 2246
	add		x15, x14, x13	# 2246
	lw		x15, 0(x15)	# 2246
	addi	x16, x0, 64492	# 2246
	fsw		f3, -24(x2)	# 2246
	sw		x9, -28(x2)	# 2246
	sw		x12, -32(x2)	# 2246
	sw		x11, -36(x2)	# 2246
	sw		x8, -40(x2)	# 2246
	sw		x6, -44(x2)	# 2246
	sw		x5, -48(x2)	# 2246
	sw		x4, -52(x2)	# 2246
	sw		x13, -56(x2)	# 2246
	addi	x6, x15, 0	# 2246
	addi	x5, x16, 0	# 2246
	addi	x4, x11, 0	# 2246
	addi	x29, x7, 0	# 2246
	fadd	f2, f0, f4	# 2246
	sw		x1, -60(x2)	# 2246
	addi	x2, x2, -64	# 2246
	lw		x31, 0(x29)	# 2246
	jalr	x1, x31, 0	# 2246
	addi	x2, x2, 64	# 2246
	lw		x1, -60(x2)	# 2246
	lw		x4, -56(x2)	# 2247
	lw		x5, -8(x2)	# 2247
	add		x6, x5, x4	# 2247
	lw		x6, 0(x6)	# 2247
	lw		x6, 0(x6)	# 604
	lw		x7, -52(x2)	# 301
	addi	x8, x7, 64400	# 301
	flw		f1, 0(x8)	# 301
	add		x8, x6, x7	# 301
	fsw		f1, 0(x8)	# 301
	lw		x8, -48(x2)	# 302
	addi	x9, x8, 64400	# 302
	flw		f1, 0(x9)	# 302
	add		x8, x6, x8	# 302
	fsw		f1, 0(x8)	# 302
	lw		x8, -44(x2)	# 303
	addi	x9, x8, 64400	# 303
	flw		f1, 0(x9)	# 303
	add		x6, x6, x8	# 303
	fsw		f1, 0(x6)	# 303
	add		x6, x5, x4	# 2248
	lw		x6, 0(x6)	# 2248
	lw		x6, 24(x6)	# 663
	add		x6, x6, x7	# 665
	lw		x7, -4(x2)	# 665
	sw		x7, 0(x6)	# 665
	add		x4, x5, x4	# 2251
	lw		x4, 0(x4)	# 2251
	lw		x6, -36(x2)	# 2251
	lw		x29, -40(x2)	# 2251
	addi	x5, x6, 0	# 2251
	sw		x1, -60(x2)	# 2251
	addi	x2, x2, -64	# 2251
	lw		x31, 0(x29)	# 2251
	jalr	x1, x31, 0	# 2251
	addi	x2, x2, 64	# 2251
	lw		x1, -60(x2)	# 2251
	lw		x4, -12(x2)	# 2253
	lw		x5, -32(x2)	# 2253
	sub		x4, x4, x5	# 2253
	lw		x6, -4(x2)	# 266
	add		x5, x6, x5	# 266
	lw		x6, -28(x2)	# 267
	ble		x6, x5, ble.33319	# 267
	addi	x6, x5, 0	# 267
	jal		x0, ble_cont.33318	# 267
ble.33319:
	sub		x6, x5, x6	# 267
ble_cont.33318:
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
scan_pixel.2928.17986:
	lw		x10, 24(x29)	# 2276
	lw		x11, 20(x29)	# 2276
	lw		x12, 16(x29)	# 2276
	lw		x13, 12(x29)	# 2276
	lw		x14, 8(x29)	# 2276
	lw		x15, 4(x29)	# 2276
	mul		x16, x30, x14	# 2276
	addi	x17, x16, 64412	# 2276
	lw		x17, 0(x17)	# 2276
	ble		x17, x4, ble.33320	# 2276
	mul		x17, x30, x4	# 2279
	add		x18, x7, x17	# 2279
	lw		x18, 0(x18)	# 2279
	lw		x18, 0(x18)	# 604
	add		x19, x18, x16	# 301
	flw		f1, 0(x19)	# 301
	addi	x19, x16, 64400	# 301
	fsw		f1, 0(x19)	# 301
	mul		x19, x30, x15	# 302
	add		x20, x18, x19	# 302
	flw		f1, 0(x20)	# 302
	addi	x20, x19, 64400	# 302
	fsw		f1, 0(x20)	# 302
	mul		x12, x30, x12	# 303
	add		x18, x18, x12	# 303
	flw		f1, 0(x18)	# 303
	addi	x18, x12, 64400	# 303
	fsw		f1, 0(x18)	# 303
	addi	x18, x19, 0	# 2092
	addi	x19, x18, 64412	# 2092
	lw		x19, 0(x19)	# 2092
	add		x20, x5, x15	# 2092
	ble		x19, x20, ble.33322	# 2092
	ble		x5, x14, ble.33324	# 2093
	addi	x19, x16, 0	# 2094
	addi	x19, x19, 64412	# 2094
	lw		x19, 0(x19)	# 2094
	add		x20, x4, x15	# 2094
	ble		x19, x20, ble.33326	# 2094
	ble		x4, x14, ble.33328	# 2095
	addi	x19, x0, 1	# 2096
	jal		x0, ble_cont.33321	# 2095
ble.33328:
	addi	x19, x0, 0	# 2097
	jal		x0, ble_cont.33321	# 2094
ble.33326:
	addi	x19, x0, 0	# 2098
	jal		x0, ble_cont.33321	# 2093
ble.33324:
	addi	x19, x0, 0	# 2099
	jal		x0, ble_cont.33321	# 2092
ble.33322:
	addi	x19, x0, 0	# 2100
ble_cont.33321:
	sw		x8, 0(x2)	# 2282
	sw		x7, -4(x2)	# 2282
	sw		x6, -8(x2)	# 2282
	sw		x5, -12(x2)	# 2282
	sw		x29, -16(x2)	# 2282
	sw		x15, -20(x2)	# 2282
	sw		x4, -24(x2)	# 2282
	sw		x12, -28(x2)	# 2282
	sw		x18, -32(x2)	# 2282
	sw		x14, -36(x2)	# 2282
	sw		x16, -40(x2)	# 2282
	sw		x13, -44(x2)	# 2282
	sw		x9, -48(x2)	# 2282
	beq		x19, x14, beq.33330	# 2282
	addi	x9, x14, 0	# 2283
	addi	x29, x10, 0	# 2283
	sw		x1, -52(x2)	# 2283
	addi	x2, x2, -56	# 2283
	lw		x31, 0(x29)	# 2283
	jalr	x1, x31, 0	# 2283
	addi	x2, x2, 56	# 2283
	lw		x1, -52(x2)	# 2283
	jal		x0, beq_cont.33329	# 2282
beq.33330:
	addi	x10, x17, 0	# 2285
	add		x10, x7, x10	# 2285
	lw		x10, 0(x10)	# 2285
	addi	x5, x14, 0	# 2285
	addi	x4, x10, 0	# 2285
	addi	x29, x11, 0	# 2285
	sw		x1, -52(x2)	# 2285
	addi	x2, x2, -56	# 2285
	lw		x31, 0(x29)	# 2285
	jalr	x1, x31, 0	# 2285
	addi	x2, x2, 56	# 2285
	lw		x1, -52(x2)	# 2285
beq_cont.33329:
	lw		x4, -44(x2)	# 2182
	lw		x5, -48(x2)	# 2182
	beq		x5, x4, beq.33332	# 2182
	lw		x4, -40(x2)	# 2190
	addi	x4, x4, 64400	# 2190
	flw		f1, 0(x4)	# 2190
	sw		x1, -52(x2)	# 2176
	addi	x2, x2, -56	# 2176
	jal		x1, min_caml_int_of_float	# 2176
	addi	x2, x2, 56	# 2176
	lw		x1, -52(x2)	# 2176
	addi	x5, x0, 255	# 2177
	ble		x4, x5, ble.33334	# 2177
	addi	x4, x0, 255	# 2177
	jal		x0, ble_cont.33333	# 2177
ble.33334:
	lw		x6, -36(x2)	# 2177
	ble		x6, x4, ble_cont.33333	# 2177
	addi	x4, x0, 0	# 2177
	jal		x0, ble_cont.33333	# 2177
ble_cont.33333:
	sw		x1, -52(x2)	# 2178
	addi	x2, x2, -56	# 2178
	jal		x1, min_caml_print_char	# 2178
	addi	x2, x2, 56	# 2178
	lw		x1, -52(x2)	# 2178
	lw		x4, -32(x2)	# 2191
	addi	x4, x4, 64400	# 2191
	flw		f1, 0(x4)	# 2191
	sw		x5, -52(x2)	# 2176
	sw		x1, -56(x2)	# 2176
	addi	x2, x2, -60	# 2176
	jal		x1, min_caml_int_of_float	# 2176
	addi	x2, x2, 60	# 2176
	lw		x1, -56(x2)	# 2176
	lw		x5, -52(x2)	# 2177
	ble		x4, x5, ble.33338	# 2177
	addi	x4, x0, 255	# 2177
	jal		x0, ble_cont.33337	# 2177
ble.33338:
	lw		x6, -36(x2)	# 2177
	ble		x6, x4, ble_cont.33337	# 2177
	addi	x4, x0, 0	# 2177
	jal		x0, ble_cont.33337	# 2177
ble_cont.33337:
	sw		x1, -56(x2)	# 2178
	addi	x2, x2, -60	# 2178
	jal		x1, min_caml_print_char	# 2178
	addi	x2, x2, 60	# 2178
	lw		x1, -56(x2)	# 2178
	lw		x4, -28(x2)	# 2192
	addi	x4, x4, 64400	# 2192
	flw		f1, 0(x4)	# 2192
	sw		x1, -56(x2)	# 2176
	addi	x2, x2, -60	# 2176
	jal		x1, min_caml_int_of_float	# 2176
	addi	x2, x2, 60	# 2176
	lw		x1, -56(x2)	# 2176
	lw		x5, -52(x2)	# 2177
	ble		x4, x5, ble.33342	# 2177
	addi	x4, x0, 255	# 2177
	jal		x0, ble_cont.33341	# 2177
ble.33342:
	lw		x5, -36(x2)	# 2177
	ble		x5, x4, ble_cont.33341	# 2177
	addi	x4, x0, 0	# 2177
	jal		x0, ble_cont.33341	# 2177
ble_cont.33341:
	sw		x1, -56(x2)	# 2178
	addi	x2, x2, -60	# 2178
	jal		x1, min_caml_print_char	# 2178
	addi	x2, x2, 60	# 2178
	lw		x1, -56(x2)	# 2178
	jal		x0, beq_cont.33331	# 2182
beq.33332:
	lw		x4, -40(x2)	# 2183
	addi	x4, x4, 64400	# 2183
	flw		f1, 0(x4)	# 2183
	sw		x1, -56(x2)	# 2170
	addi	x2, x2, -60	# 2170
	jal		x1, min_caml_int_of_float	# 2170
	addi	x2, x2, 60	# 2170
	lw		x1, -56(x2)	# 2170
	addi	x5, x0, 255	# 2171
	ble		x4, x5, ble.33346	# 2171
	addi	x4, x0, 255	# 2171
	jal		x0, ble_cont.33345	# 2171
ble.33346:
	lw		x6, -36(x2)	# 2171
	ble		x6, x4, ble_cont.33345	# 2171
	addi	x4, x0, 0	# 2171
	jal		x0, ble_cont.33345	# 2171
ble_cont.33345:
	sw		x1, -56(x2)	# 2172
	addi	x2, x2, -60	# 2172
	jal		x1, min_caml_print_int	# 2172
	addi	x2, x2, 60	# 2172
	lw		x1, -56(x2)	# 2172
	addi	x4, x0, 32	# 2184
	sw		x4, -56(x2)	# 2184
	sw		x1, -60(x2)	# 2184
	addi	x2, x2, -64	# 2184
	jal		x1, min_caml_print_char	# 2184
	addi	x2, x2, 64	# 2184
	lw		x1, -60(x2)	# 2184
	lw		x4, -32(x2)	# 2185
	addi	x4, x4, 64400	# 2185
	flw		f1, 0(x4)	# 2185
	sw		x5, -60(x2)	# 2170
	sw		x1, -64(x2)	# 2170
	addi	x2, x2, -68	# 2170
	jal		x1, min_caml_int_of_float	# 2170
	addi	x2, x2, 68	# 2170
	lw		x1, -64(x2)	# 2170
	lw		x5, -60(x2)	# 2171
	ble		x4, x5, ble.33350	# 2171
	addi	x4, x0, 255	# 2171
	jal		x0, ble_cont.33349	# 2171
ble.33350:
	lw		x6, -36(x2)	# 2171
	ble		x6, x4, ble_cont.33349	# 2171
	addi	x4, x0, 0	# 2171
	jal		x0, ble_cont.33349	# 2171
ble_cont.33349:
	sw		x1, -64(x2)	# 2172
	addi	x2, x2, -68	# 2172
	jal		x1, min_caml_print_int	# 2172
	addi	x2, x2, 68	# 2172
	lw		x1, -64(x2)	# 2172
	lw		x4, -56(x2)	# 2186
	sw		x1, -64(x2)	# 2186
	addi	x2, x2, -68	# 2186
	jal		x1, min_caml_print_char	# 2186
	addi	x2, x2, 68	# 2186
	lw		x1, -64(x2)	# 2186
	lw		x4, -28(x2)	# 2187
	addi	x4, x4, 64400	# 2187
	flw		f1, 0(x4)	# 2187
	sw		x1, -64(x2)	# 2170
	addi	x2, x2, -68	# 2170
	jal		x1, min_caml_int_of_float	# 2170
	addi	x2, x2, 68	# 2170
	lw		x1, -64(x2)	# 2170
	lw		x5, -60(x2)	# 2171
	ble		x4, x5, ble.33354	# 2171
	addi	x4, x0, 255	# 2171
	jal		x0, ble_cont.33353	# 2171
ble.33354:
	lw		x5, -36(x2)	# 2171
	ble		x5, x4, ble_cont.33353	# 2171
	addi	x4, x0, 0	# 2171
	jal		x0, ble_cont.33353	# 2171
ble_cont.33353:
	sw		x1, -64(x2)	# 2172
	addi	x2, x2, -68	# 2172
	jal		x1, min_caml_print_int	# 2172
	addi	x2, x2, 68	# 2172
	lw		x1, -64(x2)	# 2172
	addi	x4, x0, 10	# 2188
	sw		x1, -64(x2)	# 2188
	addi	x2, x2, -68	# 2188
	jal		x1, min_caml_print_char	# 2188
	addi	x2, x2, 68	# 2188
	lw		x1, -64(x2)	# 2188
beq_cont.33331:
	lw		x4, -24(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	add		x4, x4, x5	# 2290
	lw		x5, -12(x2)	# 2290
	lw		x6, -8(x2)	# 2290
	lw		x7, -4(x2)	# 2290
	lw		x8, 0(x2)	# 2290
	lw		x9, -48(x2)	# 2290
	lw		x29, -16(x2)	# 2290
	lw		x31, 0(x29)	# 2290
	jalr	x0, x31, 0	# 2290
ble.33320:
	jalr	x0, x1, 0	# 2291
scan_line.2935.17993:
	lw		x10, 24(x29)	# 2297
	lw		x11, 20(x29)	# 2297
	lw		x12, 16(x29)	# 2297
	lw		x13, 12(x29)	# 2297
	lw		x14, 8(x29)	# 2297
	lw		x15, 4(x29)	# 2297
	mul		x16, x30, x15	# 2297
	addi	x17, x16, 64412	# 2297
	lw		x17, 0(x17)	# 2297
	ble		x17, x4, ble.33358	# 2297
	sub		x17, x17, x15	# 2299
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
	ble		x17, x4, ble_cont.33359	# 2299
	add		x17, x4, x15	# 2300
	mul		x18, x30, x14	# 2260
	addi	x19, x18, 64428	# 2260
	flw		f1, 0(x19)	# 2260
	addi	x19, x16, 64420	# 2260
	lw		x19, 0(x19)	# 2260
	sub		x17, x17, x19	# 2260
	fsw		f1, -48(x2)	# 2260
	addi	x4, x17, 0	# 2260
	sw		x1, -52(x2)	# 2260
	addi	x2, x2, -56	# 2260
	jal		x1, min_caml_float_of_int	# 2260
	addi	x2, x2, 56	# 2260
	lw		x1, -52(x2)	# 2260
	flw		f2, -48(x2)	# 2260
	fmul	f1, f2, f1	# 2260
	addi	x4, x18, 0	# 2263
	addi	x5, x4, 64468	# 2263
	flw		f2, 0(x5)	# 2263
	fmul	f2, f1, f2	# 2263
	addi	x5, x4, 64480	# 2263
	flw		f3, 0(x5)	# 2263
	fadd	f2, f2, f3	# 2263
	addi	x5, x16, 0	# 2264
	addi	x6, x5, 64468	# 2264
	flw		f3, 0(x6)	# 2264
	fmul	f3, f1, f3	# 2264
	addi	x5, x5, 64480	# 2264
	flw		f4, 0(x5)	# 2264
	fadd	f3, f3, f4	# 2264
	mul		x5, x30, x13	# 2265
	addi	x6, x5, 64468	# 2265
	flw		f4, 0(x6)	# 2265
	fmul	f1, f1, f4	# 2265
	addi	x5, x5, 64480	# 2265
	flw		f4, 0(x5)	# 2265
	fadd	f1, f1, f4	# 2265
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
	jal		x0, ble_cont.33359	# 2299
ble_cont.33359:
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
	ble		x6, x5, ble.33362	# 267
	addi	x8, x5, 0	# 267
	jal		x0, ble_cont.33361	# 267
ble.33362:
	sub		x8, x5, x6	# 267
ble_cont.33361:
	lw		x5, -28(x2)	# 2303
	lw		x6, -24(x2)	# 2303
	lw		x7, -32(x2)	# 2303
	lw		x9, -20(x2)	# 2303
	lw		x29, 0(x2)	# 2303
	lw		x31, 0(x29)	# 2303
	jalr	x0, x31, 0	# 2303
ble.33358:
	jalr	x0, x1, 0	# 2304
init_line_elements.2946.18000:
	lw		x6, 24(x29)	# 2339
	lw		x7, 20(x29)	# 2339
	lw		x8, 16(x29)	# 2339
	lw		x9, 12(x29)	# 2339
	lw		x10, 8(x29)	# 2339
	flw		f1, 4(x29)	# 2339
	ble		x9, x5, ble.33364	# 2339
	jalr	x0, x1, 0	# 2343
ble.33364:
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
	add		x8, x6, x5	# 2316
	sw		x4, 0(x8)	# 2316
	lw		x4, -16(x2)	# 2317
	flw		f1, -12(x2)	# 2317
	sw		x5, -32(x2)	# 2317
	sw		x1, -36(x2)	# 2317
	addi	x2, x2, -40	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 40	# 2317
	lw		x1, -36(x2)	# 2317
	mul		x5, x30, x7	# 2317
	add		x7, x6, x5	# 2317
	sw		x4, 0(x7)	# 2317
	lw		x4, -16(x2)	# 2318
	flw		f1, -12(x2)	# 2318
	sw		x5, -36(x2)	# 2318
	sw		x1, -40(x2)	# 2318
	addi	x2, x2, -44	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 44	# 2318
	lw		x1, -40(x2)	# 2318
	lw		x5, -16(x2)	# 2318
	mul		x7, x30, x5	# 2318
	add		x8, x6, x7	# 2318
	sw		x4, 0(x8)	# 2318
	addi	x4, x0, 4	# 2319
	flw		f1, -12(x2)	# 2319
	sw		x4, -40(x2)	# 2319
	addi	x4, x5, 0	# 2319
	sw		x1, -44(x2)	# 2319
	addi	x2, x2, -48	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 48	# 2319
	lw		x1, -44(x2)	# 2319
	lw		x5, -40(x2)	# 2319
	mul		x5, x30, x5	# 2319
	add		x8, x6, x5	# 2319
	sw		x4, 0(x8)	# 2319
	lw		x4, -24(x2)	# 2328
	sw		x5, -44(x2)	# 2328
	sw		x9, -48(x2)	# 2328
	addi	x5, x9, 0	# 2328
	sw		x1, -52(x2)	# 2328
	addi	x2, x2, -56	# 2328
	jal		x1, min_caml_create_array	# 2328
	addi	x2, x2, 56	# 2328
	lw		x1, -52(x2)	# 2328
	lw		x5, -24(x2)	# 2329
	lw		x6, -48(x2)	# 2329
	sw		x4, -52(x2)	# 2329
	addi	x4, x5, 0	# 2329
	addi	x5, x6, 0	# 2329
	sw		x1, -56(x2)	# 2329
	addi	x2, x2, -60	# 2329
	jal		x1, min_caml_create_array	# 2329
	addi	x2, x2, 60	# 2329
	lw		x1, -56(x2)	# 2329
	lw		x5, -16(x2)	# 2314
	flw		f1, -12(x2)	# 2314
	sw		x4, -56(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -60(x2)	# 2314
	addi	x2, x2, -64	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 64	# 2314
	lw		x1, -60(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -24(x2)	# 2315
	sw		x1, -60(x2)	# 2315
	addi	x2, x2, -64	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 64	# 2315
	lw		x1, -60(x2)	# 2315
	lw		x5, -16(x2)	# 2316
	flw		f1, -12(x2)	# 2316
	sw		x4, -60(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -64(x2)	# 2316
	addi	x2, x2, -68	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 68	# 2316
	lw		x1, -64(x2)	# 2316
	lw		x5, -32(x2)	# 2316
	lw		x6, -60(x2)	# 2316
	add		x8, x6, x5	# 2316
	sw		x4, 0(x8)	# 2316
	lw		x4, -16(x2)	# 2317
	flw		f1, -12(x2)	# 2317
	sw		x5, -64(x2)	# 2317
	sw		x1, -68(x2)	# 2317
	addi	x2, x2, -72	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 72	# 2317
	lw		x1, -68(x2)	# 2317
	lw		x5, -36(x2)	# 2317
	add		x8, x6, x5	# 2317
	sw		x4, 0(x8)	# 2317
	lw		x4, -16(x2)	# 2318
	flw		f1, -12(x2)	# 2318
	sw		x5, -68(x2)	# 2318
	sw		x1, -72(x2)	# 2318
	addi	x2, x2, -76	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 76	# 2318
	lw		x1, -72(x2)	# 2318
	addi	x5, x7, 0	# 2318
	add		x7, x6, x5	# 2318
	sw		x4, 0(x7)	# 2318
	lw		x4, -16(x2)	# 2319
	flw		f1, -12(x2)	# 2319
	sw		x5, -72(x2)	# 2319
	sw		x1, -76(x2)	# 2319
	addi	x2, x2, -80	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 80	# 2319
	lw		x1, -76(x2)	# 2319
	lw		x5, -44(x2)	# 2319
	add		x7, x6, x5	# 2319
	sw		x4, 0(x7)	# 2319
	lw		x4, -16(x2)	# 2314
	flw		f1, -12(x2)	# 2314
	sw		x5, -76(x2)	# 2314
	sw		x1, -80(x2)	# 2314
	addi	x2, x2, -84	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 84	# 2314
	lw		x1, -80(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -24(x2)	# 2315
	sw		x1, -80(x2)	# 2315
	addi	x2, x2, -84	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 84	# 2315
	lw		x1, -80(x2)	# 2315
	lw		x5, -16(x2)	# 2316
	flw		f1, -12(x2)	# 2316
	sw		x4, -80(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -84(x2)	# 2316
	addi	x2, x2, -88	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 88	# 2316
	lw		x1, -84(x2)	# 2316
	lw		x5, -64(x2)	# 2316
	lw		x6, -80(x2)	# 2316
	add		x7, x6, x5	# 2316
	sw		x4, 0(x7)	# 2316
	lw		x4, -16(x2)	# 2317
	flw		f1, -12(x2)	# 2317
	sw		x5, -84(x2)	# 2317
	sw		x1, -88(x2)	# 2317
	addi	x2, x2, -92	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 92	# 2317
	lw		x1, -88(x2)	# 2317
	lw		x5, -68(x2)	# 2317
	add		x7, x6, x5	# 2317
	sw		x4, 0(x7)	# 2317
	lw		x4, -16(x2)	# 2318
	flw		f1, -12(x2)	# 2318
	sw		x5, -88(x2)	# 2318
	sw		x1, -92(x2)	# 2318
	addi	x2, x2, -96	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 96	# 2318
	lw		x1, -92(x2)	# 2318
	lw		x5, -72(x2)	# 2318
	add		x7, x6, x5	# 2318
	sw		x4, 0(x7)	# 2318
	lw		x4, -16(x2)	# 2319
	flw		f1, -12(x2)	# 2319
	sw		x5, -92(x2)	# 2319
	sw		x1, -96(x2)	# 2319
	addi	x2, x2, -100	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 100	# 2319
	lw		x1, -96(x2)	# 2319
	lw		x5, -76(x2)	# 2319
	add		x7, x6, x5	# 2319
	sw		x4, 0(x7)	# 2319
	lw		x4, -48(x2)	# 2332
	sw		x10, -96(x2)	# 2332
	sw		x5, -100(x2)	# 2332
	addi	x5, x4, 0	# 2332
	addi	x4, x10, 0	# 2332
	sw		x1, -104(x2)	# 2332
	addi	x2, x2, -108	# 2332
	jal		x1, min_caml_create_array	# 2332
	addi	x2, x2, 108	# 2332
	lw		x1, -104(x2)	# 2332
	lw		x5, -16(x2)	# 2314
	flw		f1, -12(x2)	# 2314
	sw		x4, -104(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -108(x2)	# 2314
	addi	x2, x2, -112	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 112	# 2314
	lw		x1, -108(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -24(x2)	# 2315
	sw		x1, -108(x2)	# 2315
	addi	x2, x2, -112	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 112	# 2315
	lw		x1, -108(x2)	# 2315
	lw		x5, -16(x2)	# 2316
	flw		f1, -12(x2)	# 2316
	sw		x4, -108(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -112(x2)	# 2316
	addi	x2, x2, -116	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 116	# 2316
	lw		x1, -112(x2)	# 2316
	lw		x5, -84(x2)	# 2316
	lw		x6, -108(x2)	# 2316
	add		x5, x6, x5	# 2316
	sw		x4, 0(x5)	# 2316
	lw		x4, -16(x2)	# 2317
	flw		f1, -12(x2)	# 2317
	sw		x1, -112(x2)	# 2317
	addi	x2, x2, -116	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 116	# 2317
	lw		x1, -112(x2)	# 2317
	lw		x5, -88(x2)	# 2317
	add		x5, x6, x5	# 2317
	sw		x4, 0(x5)	# 2317
	lw		x4, -16(x2)	# 2318
	flw		f1, -12(x2)	# 2318
	sw		x1, -112(x2)	# 2318
	addi	x2, x2, -116	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 116	# 2318
	lw		x1, -112(x2)	# 2318
	lw		x5, -92(x2)	# 2318
	add		x5, x6, x5	# 2318
	sw		x4, 0(x5)	# 2318
	lw		x4, -16(x2)	# 2319
	flw		f1, -12(x2)	# 2319
	sw		x1, -112(x2)	# 2319
	addi	x2, x2, -116	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 116	# 2319
	lw		x1, -112(x2)	# 2319
	lw		x5, -100(x2)	# 2319
	add		x5, x6, x5	# 2319
	sw		x4, 0(x5)	# 2319
	addi	x4, x3, 0	# 2334
	addi	x3, x3, 32	# 2334
	sw		x6, 28(x4)	# 2334
	lw		x5, -104(x2)	# 2334
	sw		x5, 24(x4)	# 2334
	lw		x5, -80(x2)	# 2334
	sw		x5, 20(x4)	# 2334
	lw		x5, -60(x2)	# 2334
	sw		x5, 16(x4)	# 2334
	lw		x5, -56(x2)	# 2334
	sw		x5, 12(x4)	# 2334
	lw		x5, -52(x2)	# 2334
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
	lw		x4, -96(x2)	# 2341
	sub		x5, x5, x4	# 2341
	lw		x29, 0(x2)	# 2341
	addi	x4, x7, 0	# 2341
	lw		x31, 0(x29)	# 2341
	jalr	x0, x31, 0	# 2341
calc_dirvec.2956.18003:
	lw		x7, 28(x29)	# 2376
	lw		x8, 24(x29)	# 2376
	lw		x9, 20(x29)	# 2376
	lw		x10, 16(x29)	# 2376
	lw		x11, 12(x29)	# 2376
	lw		x12, 8(x29)	# 2376
	lw		x13, 4(x29)	# 2376
	ble		x10, x4, ble.33365	# 2376
	fmul	f1, f2, f2	# 2367
	fadd	f1, f1, f27	# 2367
	fsqrt	f1, f1	# 2367
	fdiv	f6, f30, f1	# 2368
	sw		x29, 0(x2)	# 2369
	fsw		f4, -4(x2)	# 2369
	fsw		f30, -8(x2)	# 2369
	fsw		f27, -12(x2)	# 2369
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
ble.33365:
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
	add		x8, x5, x7	# 282
	fsw		f1, 0(x8)	# 282
	mul		x8, x30, x13	# 283
	add		x9, x5, x8	# 283
	fsw		f2, 0(x9)	# 283
	mul		x9, x30, x11	# 284
	add		x5, x5, x9	# 284
	fsw		f3, 0(x5)	# 284
	addi	x5, x6, 40	# 2385
	mul		x5, x30, x5	# 2385
	add		x5, x4, x5	# 2385
	lw		x5, 0(x5)	# 2385
	lw		x5, 0(x5)	# 681
	fsub	f4, f0, f2	# 123
	add		x10, x5, x7	# 282
	fsw		f1, 0(x10)	# 282
	add		x10, x5, x8	# 283
	fsw		f3, 0(x10)	# 283
	add		x5, x5, x9	# 284
	fsw		f4, 0(x5)	# 284
	addi	x5, x6, 80	# 2386
	mul		x5, x30, x5	# 2386
	add		x5, x4, x5	# 2386
	lw		x5, 0(x5)	# 2386
	lw		x5, 0(x5)	# 681
	fsub	f5, f0, f1	# 123
	add		x10, x5, x7	# 282
	fsw		f3, 0(x10)	# 282
	add		x10, x5, x8	# 283
	fsw		f5, 0(x10)	# 283
	add		x5, x5, x9	# 284
	fsw		f4, 0(x5)	# 284
	add		x5, x6, x13	# 2387
	mul		x5, x30, x5	# 2387
	add		x5, x4, x5	# 2387
	lw		x5, 0(x5)	# 2387
	lw		x5, 0(x5)	# 681
	fsub	f3, f0, f3	# 123
	add		x10, x5, x7	# 282
	fsw		f5, 0(x10)	# 282
	add		x10, x5, x8	# 283
	fsw		f4, 0(x10)	# 283
	add		x5, x5, x9	# 284
	fsw		f3, 0(x5)	# 284
	addi	x5, x6, 41	# 2388
	mul		x5, x30, x5	# 2388
	add		x5, x4, x5	# 2388
	lw		x5, 0(x5)	# 2388
	lw		x5, 0(x5)	# 681
	add		x10, x5, x7	# 282
	fsw		f5, 0(x10)	# 282
	add		x10, x5, x8	# 283
	fsw		f3, 0(x10)	# 283
	add		x5, x5, x9	# 284
	fsw		f2, 0(x5)	# 284
	addi	x5, x6, 81	# 2389
	mul		x5, x30, x5	# 2389
	add		x4, x4, x5	# 2389
	lw		x4, 0(x4)	# 2389
	lw		x4, 0(x4)	# 681
	addi	x5, x7, 0	# 282
	add		x5, x4, x5	# 282
	fsw		f3, 0(x5)	# 282
	addi	x5, x8, 0	# 283
	add		x5, x4, x5	# 283
	fsw		f1, 0(x5)	# 283
	addi	x5, x9, 0	# 284
	add		x4, x4, x5	# 284
	fsw		f2, 0(x4)	# 284
	jalr	x0, x1, 0	# 284
calc_dirvecs.2964.18011:
	lw		x7, 24(x29)	# 2397
	lw		x8, 20(x29)	# 2397
	lw		x9, 16(x29)	# 2397
	lw		x10, 12(x29)	# 2397
	lw		x11, 8(x29)	# 2397
	flw		f2, 4(x29)	# 2397
	ble		x10, x4, ble.33367	# 2397
	jalr	x0, x1, 0	# 2406
ble.33367:
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
	lui		x4, %hi(l.26268)	# 2399
	ori		x4, x0, %lo(l.26268)	# 2399
	flw		f2, 0(x4)	# 2399
	fmul	f1, f1, f2	# 2399
	lui		x4, %hi(l.29065)	# 2399
	ori		x4, x0, %lo(l.29065)	# 2399
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
	flw		f2, -44(x2)	# 2402
	fadd	f3, f2, f27	# 2402
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
	ble		x6, x5, ble.33370	# 267
	jal		x0, ble_cont.33369	# 267
ble.33370:
	sub		x5, x5, x6	# 267
ble_cont.33369:
	lw		x6, -16(x2)	# 2405
	flw		f1, -8(x2)	# 2405
	lw		x29, 0(x2)	# 2405
	lw		x31, 0(x29)	# 2405
	jalr	x0, x31, 0	# 2405
calc_dirvec_rows.2969.18016:
	lw		x7, 20(x29)	# 2411
	lw		x8, 16(x29)	# 2411
	lw		x9, 12(x29)	# 2411
	lw		x10, 8(x29)	# 2411
	lw		x11, 4(x29)	# 2411
	ble		x10, x4, ble.33371	# 2411
	jalr	x0, x1, 0	# 2415
ble.33371:
	sw		x29, 0(x2)	# 2412
	sw		x4, -4(x2)	# 2412
	sw		x6, -8(x2)	# 2412
	sw		x5, -12(x2)	# 2412
	sw		x1, -16(x2)	# 2412
	addi	x2, x2, -20	# 2412
	jal		x1, min_caml_float_of_int	# 2412
	addi	x2, x2, 20	# 2412
	lw		x1, -16(x2)	# 2412
	lui		x4, %hi(l.26268)	# 2412
	ori		x4, x0, %lo(l.26268)	# 2412
	flw		f2, 0(x4)	# 2412
	fmul	f1, f1, f2	# 2412
	lui		x4, %hi(l.29065)	# 2412
	ori		x4, x0, %lo(l.29065)	# 2412
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
	ble		x6, x5, ble.33374	# 267
	jal		x0, ble_cont.33373	# 267
ble.33374:
	sub		x5, x5, x6	# 267
ble_cont.33373:
	lw		x6, -8(x2)	# 2414
	addi	x6, x6, 4	# 2414
	lw		x29, 0(x2)	# 2414
	lw		x31, 0(x29)	# 2414
	jalr	x0, x31, 0	# 2414
create_dirvec_elements.2975.18020:
	lw		x6, 16(x29)	# 2430
	lw		x7, 12(x29)	# 2430
	lw		x8, 8(x29)	# 2430
	flw		f1, 4(x29)	# 2430
	ble		x7, x5, ble.33375	# 2430
	jalr	x0, x1, 0	# 2433
ble.33375:
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
create_dirvecs.2978.18023:
	lw		x5, 20(x29)	# 2437
	lw		x6, 16(x29)	# 2437
	lw		x7, 12(x29)	# 2437
	lw		x8, 8(x29)	# 2437
	flw		f1, 4(x29)	# 2437
	ble		x7, x4, ble.33377	# 2437
	jalr	x0, x1, 0	# 2441
ble.33377:
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
	addi	x7, x6, 64512	# 2438
	sw		x4, 0(x7)	# 2438
	addi	x4, x6, 0	# 2439
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
init_dirvec_constants.2980.18025:
	lw		x6, 12(x29)	# 2449
	lw		x7, 8(x29)	# 2449
	lw		x8, 4(x29)	# 2449
	ble		x7, x5, ble.33379	# 2449
	jalr	x0, x1, 0	# 2452
ble.33379:
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
init_vecset_constants.2983.18028:
	lw		x5, 12(x29)	# 2456
	lw		x6, 8(x29)	# 2456
	lw		x7, 4(x29)	# 2456
	ble		x6, x4, ble.33381	# 2456
	jalr	x0, x1, 0	# 2459
ble.33381:
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
	lui		x4, %hi(l.29092)	# 0
	ori		x4, x0, %lo(l.29092)	# 0
	flw		f0, 0(x4)	# 0
	lui		x4, %hi(l.26249)	# 0
	ori		x4, x0, %lo(l.26249)	# 0
	flw		f30, 0(x4)	# 0
	lui		x4, %hi(l.32327)	# 0
	ori		x4, x0, %lo(l.32327)	# 0
	flw		f29, 0(x4)	# 0
	lui		x4, %hi(l.26718)	# 0
	ori		x4, x0, %lo(l.26718)	# 0
	flw		f16, 0(x4)	# 0
	lui		x4, %hi(l.26716)	# 0
	ori		x4, x0, %lo(l.26716)	# 0
	flw		f17, 0(x4)	# 0
	lui		x4, %hi(l.26837)	# 0
	ori		x4, x0, %lo(l.26837)	# 0
	flw		f18, 0(x4)	# 0
	lui		x4, %hi(l.27605)	# 0
	ori		x4, x0, %lo(l.27605)	# 0
	flw		f19, 0(x4)	# 0
	lui		x4, %hi(l.28299)	# 0
	ori		x4, x0, %lo(l.28299)	# 0
	flw		f20, 0(x4)	# 0
	lui		x4, %hi(l.28089)	# 0
	ori		x4, x0, %lo(l.28089)	# 0
	flw		f21, 0(x4)	# 0
	lui		x4, %hi(l.26328)	# 0
	ori		x4, x0, %lo(l.26328)	# 0
	flw		f22, 0(x4)	# 0
	lui		x4, %hi(l.27839)	# 0
	ori		x4, x0, %lo(l.27839)	# 0
	flw		f23, 0(x4)	# 0
	lui		x4, %hi(l.27860)	# 0
	ori		x4, x0, %lo(l.27860)	# 0
	flw		f24, 0(x4)	# 0
	lui		x4, %hi(l.27862)	# 0
	ori		x4, x0, %lo(l.27862)	# 0
	flw		f25, 0(x4)	# 0
	lui		x4, %hi(l.26251)	# 0
	ori		x4, x0, %lo(l.26251)	# 0
	flw		f26, 0(x4)	# 0
	lui		x4, %hi(l.28036)	# 0
	ori		x4, x0, %lo(l.28036)	# 0
	flw		f27, 0(x4)	# 0
	lui		x4, %hi(l.27940)	# 0
	ori		x4, x0, %lo(l.27940)	# 0
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
	lui		x4, %hi(l.29106)	# 25
	ori		x4, x0, %lo(l.29106)	# 25
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
	addi	x5, x4, 64128	# 31
	lw		x5, 0(x5)	# 31
	addi	x6, x0, 64328	# 31
	lw		x8, 0(x2)	# 31
	sw		x4, -40(x2)	# 31
	sw		x6, -44(x2)	# 31
	addi	x4, x8, 0	# 31
	sw		x1, -48(x2)	# 31
	addi	x2, x2, -52	# 31
	jal		x1, min_caml_create_array	# 31
	addi	x2, x2, 52	# 31
	lw		x1, -48(x2)	# 31
	lw		x4, 0(x2)	# 31
	lw		x5, -44(x2)	# 31
	sw		x1, -48(x2)	# 31
	addi	x2, x2, -52	# 31
	jal		x1, min_caml_create_array	# 31
	addi	x2, x2, 52	# 31
	lw		x1, -48(x2)	# 31
	lw		x4, 0(x2)	# 36
	flw		f1, -8(x2)	# 36
	sw		x1, -48(x2)	# 36
	addi	x2, x2, -52	# 36
	jal		x1, min_caml_create_float_array	# 36
	addi	x2, x2, 52	# 36
	lw		x1, -48(x2)	# 36
	lw		x4, 0(x2)	# 39
	addi	x5, x7, 0	# 39
	sw		x1, -48(x2)	# 39
	addi	x2, x2, -52	# 39
	jal		x1, min_caml_create_array	# 39
	addi	x2, x2, 52	# 39
	lw		x1, -48(x2)	# 39
	lui		x4, %hi(l.29110)	# 42
	ori		x4, x0, %lo(l.29110)	# 42
	flw		f1, 0(x4)	# 42
	lw		x4, 0(x2)	# 42
	fsw		f1, -48(x2)	# 42
	sw		x1, -52(x2)	# 42
	addi	x2, x2, -56	# 42
	jal		x1, min_caml_create_float_array	# 42
	addi	x2, x2, 56	# 42
	lw		x1, -52(x2)	# 42
	lw		x4, -20(x2)	# 45
	flw		f1, -8(x2)	# 45
	sw		x1, -52(x2)	# 45
	addi	x2, x2, -56	# 45
	jal		x1, min_caml_create_float_array	# 45
	addi	x2, x2, 56	# 45
	lw		x1, -52(x2)	# 45
	lw		x4, 0(x2)	# 48
	lw		x5, -4(x2)	# 48
	sw		x1, -52(x2)	# 48
	addi	x2, x2, -56	# 48
	jal		x1, min_caml_create_array	# 48
	addi	x2, x2, 56	# 48
	lw		x1, -52(x2)	# 48
	lw		x4, -20(x2)	# 51
	flw		f1, -8(x2)	# 51
	sw		x1, -52(x2)	# 51
	addi	x2, x2, -56	# 51
	jal		x1, min_caml_create_float_array	# 51
	addi	x2, x2, 56	# 51
	lw		x1, -52(x2)	# 51
	lw		x4, -20(x2)	# 54
	flw		f1, -8(x2)	# 54
	sw		x1, -52(x2)	# 54
	addi	x2, x2, -56	# 54
	jal		x1, min_caml_create_float_array	# 54
	addi	x2, x2, 56	# 54
	lw		x1, -52(x2)	# 54
	lw		x4, -20(x2)	# 58
	flw		f1, -8(x2)	# 58
	sw		x1, -52(x2)	# 58
	addi	x2, x2, -56	# 58
	jal		x1, min_caml_create_float_array	# 58
	addi	x2, x2, 56	# 58
	lw		x1, -52(x2)	# 58
	lw		x4, -20(x2)	# 61
	flw		f1, -8(x2)	# 61
	sw		x1, -52(x2)	# 61
	addi	x2, x2, -56	# 61
	jal		x1, min_caml_create_float_array	# 61
	addi	x2, x2, 56	# 61
	lw		x1, -52(x2)	# 61
	addi	x4, x0, 2	# 65
	lw		x5, -4(x2)	# 65
	sw		x4, -52(x2)	# 65
	sw		x1, -56(x2)	# 65
	addi	x2, x2, -60	# 65
	jal		x1, min_caml_create_array	# 65
	addi	x2, x2, 60	# 65
	lw		x1, -56(x2)	# 65
	lw		x4, -52(x2)	# 68
	lw		x5, -4(x2)	# 68
	sw		x1, -56(x2)	# 68
	addi	x2, x2, -60	# 68
	jal		x1, min_caml_create_array	# 68
	addi	x2, x2, 60	# 68
	lw		x1, -56(x2)	# 68
	lw		x4, 0(x2)	# 71
	flw		f1, -8(x2)	# 71
	sw		x1, -56(x2)	# 71
	addi	x2, x2, -60	# 71
	jal		x1, min_caml_create_float_array	# 71
	addi	x2, x2, 60	# 71
	lw		x1, -56(x2)	# 71
	lw		x4, -20(x2)	# 75
	flw		f1, -8(x2)	# 75
	sw		x1, -56(x2)	# 75
	addi	x2, x2, -60	# 75
	jal		x1, min_caml_create_float_array	# 75
	addi	x2, x2, 60	# 75
	lw		x1, -56(x2)	# 75
	lw		x4, -20(x2)	# 78
	flw		f1, -8(x2)	# 78
	sw		x1, -56(x2)	# 78
	addi	x2, x2, -60	# 78
	jal		x1, min_caml_create_float_array	# 78
	addi	x2, x2, 60	# 78
	lw		x1, -56(x2)	# 78
	lw		x4, -20(x2)	# 82
	flw		f1, -8(x2)	# 82
	sw		x1, -56(x2)	# 82
	addi	x2, x2, -60	# 82
	jal		x1, min_caml_create_float_array	# 82
	addi	x2, x2, 60	# 82
	lw		x1, -56(x2)	# 82
	lw		x4, -20(x2)	# 84
	flw		f1, -8(x2)	# 84
	sw		x1, -56(x2)	# 84
	addi	x2, x2, -60	# 84
	jal		x1, min_caml_create_float_array	# 84
	addi	x2, x2, 60	# 84
	lw		x1, -56(x2)	# 84
	lw		x4, -20(x2)	# 86
	flw		f1, -8(x2)	# 86
	sw		x1, -56(x2)	# 86
	addi	x2, x2, -60	# 86
	jal		x1, min_caml_create_float_array	# 86
	addi	x2, x2, 60	# 86
	lw		x1, -56(x2)	# 86
	lw		x4, -20(x2)	# 90
	flw		f1, -8(x2)	# 90
	sw		x1, -56(x2)	# 90
	addi	x2, x2, -60	# 90
	jal		x1, min_caml_create_float_array	# 90
	addi	x2, x2, 60	# 90
	lw		x1, -56(x2)	# 90
	addi	x4, x0, 64504	# 95
	lw		x5, -4(x2)	# 95
	flw		f1, -8(x2)	# 95
	sw		x4, -56(x2)	# 95
	addi	x4, x5, 0	# 95
	sw		x1, -60(x2)	# 95
	addi	x2, x2, -64	# 95
	jal		x1, min_caml_create_float_array	# 95
	addi	x2, x2, 64	# 95
	lw		x1, -60(x2)	# 95
	lw		x5, -56(x2)	# 96
	addi	x4, x5, 0	# 96
	lw		x6, -4(x2)	# 96
	sw		x4, -60(x2)	# 96
	addi	x4, x6, 0	# 96
	sw		x1, -64(x2)	# 96
	addi	x2, x2, -68	# 96
	jal		x1, min_caml_create_array	# 96
	addi	x2, x2, 68	# 96
	lw		x1, -64(x2)	# 96
	addi	x4, x3, 0	# 97
	addi	x3, x3, 8	# 97
	lw		x5, -60(x2)	# 97
	sw		x5, 4(x4)	# 97
	lw		x5, -56(x2)	# 97
	sw		x5, 0(x4)	# 97
	addi	x5, x4, 0	# 97
	addi	x4, x0, 64512	# 97
	lw		x6, -4(x2)	# 97
	sw		x4, -64(x2)	# 97
	addi	x4, x6, 0	# 97
	sw		x1, -68(x2)	# 97
	addi	x2, x2, -72	# 97
	jal		x1, min_caml_create_array	# 97
	addi	x2, x2, 72	# 97
	lw		x1, -68(x2)	# 97
	addi	x4, x0, 5	# 98
	lw		x5, -64(x2)	# 98
	sw		x4, -68(x2)	# 98
	sw		x1, -72(x2)	# 98
	addi	x2, x2, -76	# 98
	jal		x1, min_caml_create_array	# 98
	addi	x2, x2, 76	# 98
	lw		x1, -72(x2)	# 98
	addi	x4, x0, 64532	# 103
	lw		x5, -4(x2)	# 103
	flw		f1, -8(x2)	# 103
	sw		x4, -72(x2)	# 103
	addi	x4, x5, 0	# 103
	sw		x1, -76(x2)	# 103
	addi	x2, x2, -80	# 103
	jal		x1, min_caml_create_float_array	# 103
	addi	x2, x2, 80	# 103
	lw		x1, -76(x2)	# 103
	lw		x4, -72(x2)	# 104
	addi	x5, x4, 0	# 104
	lw		x6, -20(x2)	# 104
	flw		f1, -8(x2)	# 104
	sw		x5, -76(x2)	# 104
	addi	x4, x6, 0	# 104
	sw		x1, -80(x2)	# 104
	addi	x2, x2, -84	# 104
	jal		x1, min_caml_create_float_array	# 104
	addi	x2, x2, 84	# 104
	lw		x1, -80(x2)	# 104
	addi	x4, x0, 64544	# 105
	lw		x5, -16(x2)	# 105
	lw		x6, -72(x2)	# 105
	sw		x4, -80(x2)	# 105
	addi	x4, x5, 0	# 105
	addi	x5, x6, 0	# 105
	sw		x1, -84(x2)	# 105
	addi	x2, x2, -88	# 105
	jal		x1, min_caml_create_array	# 105
	addi	x2, x2, 88	# 105
	lw		x1, -84(x2)	# 105
	addi	x4, x3, 0	# 106
	addi	x3, x3, 8	# 106
	lw		x5, -80(x2)	# 106
	sw		x5, 4(x4)	# 106
	lw		x5, -76(x2)	# 106
	sw		x5, 0(x4)	# 106
	addi	x5, x0, 64792	# 111
	lw		x6, -4(x2)	# 111
	flw		f1, -8(x2)	# 111
	sw		x4, -84(x2)	# 111
	sw		x5, -88(x2)	# 111
	addi	x4, x6, 0	# 111
	sw		x1, -92(x2)	# 111
	addi	x2, x2, -96	# 111
	jal		x1, min_caml_create_float_array	# 111
	addi	x2, x2, 96	# 111
	lw		x1, -92(x2)	# 111
	lw		x5, -88(x2)	# 112
	addi	x4, x5, 0	# 112
	lw		x6, -4(x2)	# 112
	sw		x4, -92(x2)	# 112
	addi	x4, x6, 0	# 112
	sw		x1, -96(x2)	# 112
	addi	x2, x2, -100	# 112
	jal		x1, min_caml_create_array	# 112
	addi	x2, x2, 100	# 112
	lw		x1, -96(x2)	# 112
	addi	x4, x3, 0	# 113
	addi	x3, x3, 8	# 113
	lw		x5, -92(x2)	# 113
	sw		x5, 4(x4)	# 113
	lw		x5, -88(x2)	# 113
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
	sw		x1, -96(x2)	# 114
	addi	x2, x2, -100	# 114
	jal		x1, min_caml_create_array	# 114
	addi	x2, x2, 100	# 114
	lw		x1, -96(x2)	# 114
	lw		x4, 0(x2)	# 118
	lw		x5, -4(x2)	# 118
	sw		x1, -96(x2)	# 118
	addi	x2, x2, -100	# 118
	jal		x1, min_caml_create_array	# 118
	addi	x2, x2, 100	# 118
	lw		x1, -96(x2)	# 118
	lui		x4, %hi(l.29125)	# 178
	ori		x4, x0, %lo(l.29125)	# 178
	flw		f2, 0(x4)	# 178
	lui		x4, %hi(l.29127)	# 179
	ori		x4, x0, %lo(l.29127)	# 179
	flw		f3, 0(x4)	# 179
	lui		x4, %hi(l.29129)	# 180
	ori		x4, x0, %lo(l.29129)	# 180
	flw		f4, 0(x4)	# 180
	lui		x4, %hi(l.29131)	# 181
	ori		x4, x0, %lo(l.29131)	# 181
	flw		f5, 0(x4)	# 181
	addi	x4, x3, 0	# 203
	addi	x3, x3, 24	# 203
	lui		x5, %hi(sin.2512.17891)	# 203
	ori		x5, x0, %lo(sin.2512.17891)	# 203
	sw		x5, 0(x4)	# 211
	fsw		f5, 20(x4)	# 211
	fsw		f4, 16(x4)	# 211
	fsw		f3, 12(x4)	# 211
	fsw		f2, 8(x4)	# 211
	fsw		f1, 4(x4)	# 211
	addi	x5, x3, 0	# 211
	addi	x3, x3, 20	# 211
	lui		x6, %hi(cos.2514.17893)	# 211
	ori		x6, x0, %lo(cos.2514.17893)	# 211
	sw		x6, 0(x5)	# 216
	sw		x4, 16(x5)	# 216
	fsw		f5, 12(x5)	# 216
	fsw		f4, 8(x5)	# 216
	fsw		f1, 4(x5)	# 216
	addi	x6, x3, 0	# 216
	addi	x3, x3, 16	# 216
	lui		x7, %hi(atan.2516.17895)	# 216
	ori		x7, x0, %lo(atan.2516.17895)	# 216
	sw		x7, 0(x6)	# 902
	fsw		f5, 12(x6)	# 902
	fsw		f4, 8(x6)	# 902
	fsw		f1, 4(x6)	# 902
	addi	x7, x3, 0	# 902
	addi	x3, x3, 40	# 902
	lui		x8, %hi(read_object.2653.17897)	# 902
	ori		x8, x0, %lo(read_object.2653.17897)	# 902
	sw		x8, 0(x7)	# 918
	sw		x4, 36(x7)	# 918
	sw		x5, 32(x7)	# 918
	lw		x8, -52(x2)	# 918
	sw		x8, 28(x7)	# 918
	lw		x9, -28(x2)	# 918
	sw		x9, 24(x7)	# 918
	lw		x10, -20(x2)	# 918
	sw		x10, 20(x7)	# 918
	lw		x11, -16(x2)	# 918
	sw		x11, 16(x7)	# 918
	lw		x11, -4(x2)	# 918
	sw		x11, 12(x7)	# 918
	lw		x12, 0(x2)	# 918
	sw		x12, 8(x7)	# 918
	fsw		f1, 4(x7)	# 918
	addi	x13, x3, 0	# 918
	addi	x3, x3, 12	# 918
	lui		x14, %hi(read_net_item.2657.17899)	# 918
	ori		x14, x0, %lo(read_net_item.2657.17899)	# 918
	sw		x14, 0(x13)	# 926
	sw		x9, 8(x13)	# 926
	sw		x12, 4(x13)	# 926
	addi	x14, x3, 0	# 926
	addi	x3, x3, 20	# 926
	lui		x15, %hi(read_or_network.2659.17901)	# 926
	ori		x15, x0, %lo(read_or_network.2659.17901)	# 926
	sw		x15, 0(x14)	# 935
	sw		x13, 16(x14)	# 935
	sw		x9, 12(x14)	# 935
	sw		x11, 8(x14)	# 935
	sw		x12, 4(x14)	# 935
	addi	x15, x3, 0	# 935
	addi	x3, x3, 20	# 935
	lui		x16, %hi(read_and_network.2661.17903)	# 935
	ori		x16, x0, %lo(read_and_network.2661.17903)	# 935
	sw		x16, 0(x15)	# 1311
	sw		x13, 16(x15)	# 1311
	sw		x9, 12(x15)	# 1311
	sw		x11, 8(x15)	# 1311
	sw		x12, 4(x15)	# 1311
	addi	x13, x3, 0	# 1311
	addi	x3, x3, 28	# 1311
	lui		x16, %hi(iter_setup_dirvec_constants.2758.17905)	# 1311
	ori		x16, x0, %lo(iter_setup_dirvec_constants.2758.17905)	# 1311
	sw		x16, 0(x13)	# 1336
	lw		x16, -68(x2)	# 1336
	sw		x16, 24(x13)	# 1336
	sw		x8, 20(x13)	# 1336
	sw		x10, 16(x13)	# 1336
	sw		x11, 12(x13)	# 1336
	sw		x12, 8(x13)	# 1336
	fsw		f1, 4(x13)	# 1336
	addi	x17, x3, 0	# 1336
	addi	x3, x3, 20	# 1336
	lui		x18, %hi(setup_startp_constants.2763.17908)	# 1336
	ori		x18, x0, %lo(setup_startp_constants.2763.17908)	# 1336
	sw		x18, 0(x17)	# 1405
	sw		x8, 16(x17)	# 1405
	sw		x10, 12(x17)	# 1405
	sw		x11, 8(x17)	# 1405
	sw		x12, 4(x17)	# 1405
	addi	x18, x3, 0	# 1405
	addi	x3, x3, 28	# 1405
	lui		x19, %hi(check_all_inside.2788.17911)	# 1405
	ori		x19, x0, %lo(check_all_inside.2788.17911)	# 1405
	sw		x19, 0(x18)	# 1425
	sw		x8, 24(x18)	# 1425
	sw		x9, 20(x18)	# 1425
	sw		x10, 16(x18)	# 1425
	sw		x11, 12(x18)	# 1425
	sw		x12, 8(x18)	# 1425
	fsw		f1, 4(x18)	# 1425
	addi	x19, x3, 0	# 1425
	addi	x3, x3, 36	# 1425
	lui		x20, %hi(shadow_check_and_group.2794.17917)	# 1425
	ori		x20, x0, %lo(shadow_check_and_group.2794.17917)	# 1425
	sw		x20, 0(x19)	# 1455
	sw		x18, 32(x19)	# 1455
	sw		x16, 28(x19)	# 1455
	sw		x8, 24(x19)	# 1455
	sw		x9, 20(x19)	# 1455
	sw		x10, 16(x19)	# 1455
	sw		x11, 12(x19)	# 1455
	sw		x12, 8(x19)	# 1455
	fsw		f1, 4(x19)	# 1455
	addi	x20, x3, 0	# 1455
	addi	x3, x3, 20	# 1455
	lui		x21, %hi(shadow_check_one_or_group.2797.17920)	# 1455
	ori		x21, x0, %lo(shadow_check_one_or_group.2797.17920)	# 1455
	sw		x21, 0(x20)	# 1470
	sw		x19, 16(x20)	# 1470
	sw		x9, 12(x20)	# 1470
	sw		x11, 8(x20)	# 1470
	sw		x12, 4(x20)	# 1470
	addi	x19, x3, 0	# 1470
	addi	x3, x3, 36	# 1470
	lui		x21, %hi(shadow_check_one_or_matrix.2800.17923)	# 1470
	ori		x21, x0, %lo(shadow_check_one_or_matrix.2800.17923)	# 1470
	sw		x21, 0(x19)	# 1506
	sw		x20, 32(x19)	# 1506
	sw		x16, 28(x19)	# 1506
	sw		x8, 24(x19)	# 1506
	sw		x9, 20(x19)	# 1506
	sw		x10, 16(x19)	# 1506
	sw		x11, 12(x19)	# 1506
	sw		x12, 8(x19)	# 1506
	fsw		f1, 4(x19)	# 1506
	addi	x20, x3, 0	# 1506
	addi	x3, x3, 32	# 1506
	lui		x21, %hi(solve_each_element.2803.17926)	# 1506
	ori		x21, x0, %lo(solve_each_element.2803.17926)	# 1506
	sw		x21, 0(x20)	# 1547
	sw		x18, 28(x20)	# 1547
	sw		x8, 24(x20)	# 1547
	sw		x9, 20(x20)	# 1547
	sw		x10, 16(x20)	# 1547
	sw		x11, 12(x20)	# 1547
	sw		x12, 8(x20)	# 1547
	fsw		f1, 4(x20)	# 1547
	addi	x21, x3, 0	# 1547
	addi	x3, x3, 20	# 1547
	lui		x22, %hi(solve_one_or_network.2807.17930)	# 1547
	ori		x22, x0, %lo(solve_one_or_network.2807.17930)	# 1547
	sw		x22, 0(x21)	# 1557
	sw		x20, 16(x21)	# 1557
	sw		x9, 12(x21)	# 1557
	sw		x11, 8(x21)	# 1557
	sw		x12, 4(x21)	# 1557
	addi	x20, x3, 0	# 1557
	addi	x3, x3, 32	# 1557
	lui		x22, %hi(trace_or_matrix.2811.17934)	# 1557
	ori		x22, x0, %lo(trace_or_matrix.2811.17934)	# 1557
	sw		x22, 0(x20)	# 1599
	sw		x21, 28(x20)	# 1599
	sw		x8, 24(x20)	# 1599
	sw		x9, 20(x20)	# 1599
	sw		x10, 16(x20)	# 1599
	sw		x11, 12(x20)	# 1599
	sw		x12, 8(x20)	# 1599
	fsw		f1, 4(x20)	# 1599
	addi	x21, x3, 0	# 1599
	addi	x3, x3, 36	# 1599
	lui		x22, %hi(solve_each_element_fast.2817.17938)	# 1599
	ori		x22, x0, %lo(solve_each_element_fast.2817.17938)	# 1599
	sw		x22, 0(x21)	# 1640
	sw		x18, 32(x21)	# 1640
	sw		x16, 28(x21)	# 1640
	sw		x8, 24(x21)	# 1640
	sw		x9, 20(x21)	# 1640
	sw		x10, 16(x21)	# 1640
	sw		x11, 12(x21)	# 1640
	sw		x12, 8(x21)	# 1640
	fsw		f1, 4(x21)	# 1640
	addi	x22, x3, 0	# 1640
	addi	x3, x3, 40	# 1640
	lui		x23, %hi(solve_one_or_network_fast.2821.17942)	# 1640
	ori		x23, x0, %lo(solve_one_or_network_fast.2821.17942)	# 1640
	sw		x23, 0(x22)	# 1650
	sw		x21, 36(x22)	# 1650
	sw		x18, 32(x22)	# 1650
	sw		x16, 28(x22)	# 1650
	sw		x8, 24(x22)	# 1650
	sw		x9, 20(x22)	# 1650
	sw		x10, 16(x22)	# 1650
	sw		x11, 12(x22)	# 1650
	sw		x12, 8(x22)	# 1650
	fsw		f1, 4(x22)	# 1650
	addi	x18, x3, 0	# 1650
	addi	x3, x3, 40	# 1650
	lui		x23, %hi(trace_or_matrix_fast.2825.17946)	# 1650
	ori		x23, x0, %lo(trace_or_matrix_fast.2825.17946)	# 1650
	sw		x23, 0(x18)	# 1844
	sw		x22, 36(x18)	# 1844
	sw		x21, 32(x18)	# 1844
	sw		x16, 28(x18)	# 1844
	sw		x8, 24(x18)	# 1844
	sw		x9, 20(x18)	# 1844
	sw		x10, 16(x18)	# 1844
	sw		x11, 12(x18)	# 1844
	sw		x12, 8(x18)	# 1844
	fsw		f1, 4(x18)	# 1844
	addi	x21, x3, 0	# 1844
	addi	x3, x3, 32	# 1844
	lui		x22, %hi(trace_reflections.2847.17950)	# 1844
	ori		x22, x0, %lo(trace_reflections.2847.17950)	# 1844
	sw		x22, 0(x21)	# 1873
	sw		x18, 28(x21)	# 1873
	sw		x19, 24(x21)	# 1873
	sw		x8, 20(x21)	# 1873
	sw		x11, 16(x21)	# 1873
	sw		x12, 12(x21)	# 1873
	flw		f2, -48(x2)	# 1873
	fsw		f2, 8(x21)	# 1873
	fsw		f1, 4(x21)	# 1873
	addi	x22, x3, 0	# 1873
	addi	x3, x3, 64	# 1873
	lui		x23, %hi(trace_ray.2852.17955)	# 1873
	ori		x23, x0, %lo(trace_ray.2852.17955)	# 1873
	sw		x23, 0(x22)	# 1985
	sw		x21, 60(x22)	# 1985
	sw		x20, 56(x22)	# 1985
	sw		x4, 52(x22)	# 1985
	sw		x19, 48(x22)	# 1985
	sw		x17, 44(x22)	# 1985
	sw		x5, 40(x22)	# 1985
	sw		x6, 36(x22)	# 1985
	sw		x8, 32(x22)	# 1985
	sw		x9, 28(x22)	# 1985
	sw		x10, 24(x22)	# 1985
	sw		x11, 20(x22)	# 1985
	sw		x12, 16(x22)	# 1985
	fsw		f2, 12(x22)	# 1985
	flw		f3, -24(x2)	# 1985
	fsw		f3, 8(x22)	# 1985
	fsw		f1, 4(x22)	# 1985
	addi	x9, x3, 0	# 1985
	addi	x3, x3, 52	# 1985
	lui		x20, %hi(iter_trace_diffuse_rays.2861.17961)	# 1985
	ori		x20, x0, %lo(iter_trace_diffuse_rays.2861.17961)	# 1985
	sw		x20, 0(x9)	# 2076
	sw		x18, 48(x9)	# 2076
	sw		x4, 44(x9)	# 2076
	sw		x19, 40(x9)	# 2076
	sw		x5, 36(x9)	# 2076
	sw		x6, 32(x9)	# 2076
	sw		x8, 28(x9)	# 2076
	sw		x10, 24(x9)	# 2076
	sw		x11, 20(x9)	# 2076
	sw		x12, 16(x9)	# 2076
	fsw		f2, 12(x9)	# 2076
	fsw		f3, 8(x9)	# 2076
	fsw		f1, 4(x9)	# 2076
	addi	x18, x3, 0	# 2076
	addi	x3, x3, 28	# 2076
	lui		x19, %hi(do_without_neighbors.2883.17966)	# 2076
	ori		x19, x0, %lo(do_without_neighbors.2883.17966)	# 2076
	sw		x19, 0(x18)	# 2128
	sw		x17, 24(x18)	# 2128
	sw		x9, 20(x18)	# 2128
	sw		x8, 16(x18)	# 2128
	sw		x10, 12(x18)	# 2128
	sw		x11, 8(x18)	# 2128
	sw		x12, 4(x18)	# 2128
	addi	x19, x3, 0	# 2128
	addi	x3, x3, 20	# 2128
	lui		x20, %hi(try_exploit_neighbors.2899.17969)	# 2128
	ori		x20, x0, %lo(try_exploit_neighbors.2899.17969)	# 2128
	sw		x20, 0(x19)	# 2204
	sw		x18, 16(x19)	# 2204
	sw		x8, 12(x19)	# 2204
	sw		x11, 8(x19)	# 2204
	sw		x12, 4(x19)	# 2204
	addi	x20, x3, 0	# 2204
	addi	x3, x3, 28	# 2204
	lui		x21, %hi(pretrace_diffuse_rays.2914.17976)	# 2204
	ori		x21, x0, %lo(pretrace_diffuse_rays.2914.17976)	# 2204
	sw		x21, 0(x20)	# 2234
	sw		x17, 24(x20)	# 2234
	sw		x9, 20(x20)	# 2234
	sw		x8, 16(x20)	# 2234
	sw		x11, 12(x20)	# 2234
	sw		x12, 8(x20)	# 2234
	fsw		f1, 4(x20)	# 2234
	addi	x9, x3, 0	# 2234
	addi	x3, x3, 32	# 2234
	lui		x17, %hi(pretrace_pixels.2917.17979)	# 2234
	ori		x17, x0, %lo(pretrace_pixels.2917.17979)	# 2234
	sw		x17, 0(x9)	# 2275
	sw		x22, 28(x9)	# 2275
	sw		x20, 24(x9)	# 2275
	sw		x16, 20(x9)	# 2275
	sw		x8, 16(x9)	# 2275
	sw		x11, 12(x9)	# 2275
	sw		x12, 8(x9)	# 2275
	fsw		f1, 4(x9)	# 2275
	addi	x17, x3, 0	# 2275
	addi	x3, x3, 28	# 2275
	lui		x20, %hi(scan_pixel.2928.17986)	# 2275
	ori		x20, x0, %lo(scan_pixel.2928.17986)	# 2275
	sw		x20, 0(x17)	# 2295
	sw		x19, 24(x17)	# 2295
	sw		x18, 20(x17)	# 2295
	sw		x8, 16(x17)	# 2295
	sw		x10, 12(x17)	# 2295
	sw		x11, 8(x17)	# 2295
	sw		x12, 4(x17)	# 2295
	addi	x18, x3, 0	# 2295
	addi	x3, x3, 28	# 2295
	lui		x19, %hi(scan_line.2935.17993)	# 2295
	ori		x19, x0, %lo(scan_line.2935.17993)	# 2295
	sw		x19, 0(x18)	# 2338
	sw		x17, 24(x18)	# 2338
	sw		x9, 20(x18)	# 2338
	sw		x16, 16(x18)	# 2338
	sw		x8, 12(x18)	# 2338
	sw		x11, 8(x18)	# 2338
	sw		x12, 4(x18)	# 2338
	addi	x17, x3, 0	# 2338
	addi	x3, x3, 28	# 2338
	lui		x19, %hi(init_line_elements.2946.18000)	# 2338
	ori		x19, x0, %lo(init_line_elements.2946.18000)	# 2338
	sw		x19, 0(x17)	# 2375
	sw		x16, 24(x17)	# 2375
	sw		x8, 20(x17)	# 2375
	sw		x10, 16(x17)	# 2375
	sw		x11, 12(x17)	# 2375
	sw		x12, 8(x17)	# 2375
	fsw		f1, 4(x17)	# 2375
	addi	x19, x3, 0	# 2375
	addi	x3, x3, 32	# 2375
	lui		x20, %hi(calc_dirvec.2956.18003)	# 2375
	ori		x20, x0, %lo(calc_dirvec.2956.18003)	# 2375
	sw		x20, 0(x19)	# 2396
	sw		x4, 28(x19)	# 2396
	sw		x5, 24(x19)	# 2396
	sw		x6, 20(x19)	# 2396
	sw		x16, 16(x19)	# 2396
	sw		x8, 12(x19)	# 2396
	sw		x11, 8(x19)	# 2396
	sw		x12, 4(x19)	# 2396
	addi	x6, x3, 0	# 2396
	addi	x3, x3, 28	# 2396
	lui		x20, %hi(calc_dirvecs.2964.18011)	# 2396
	ori		x20, x0, %lo(calc_dirvecs.2964.18011)	# 2396
	sw		x20, 0(x6)	# 2410
	sw		x19, 24(x6)	# 2410
	sw		x16, 20(x6)	# 2410
	sw		x8, 16(x6)	# 2410
	sw		x11, 12(x6)	# 2410
	sw		x12, 8(x6)	# 2410
	fsw		f1, 4(x6)	# 2410
	addi	x19, x3, 0	# 2410
	addi	x3, x3, 24	# 2410
	lui		x20, %hi(calc_dirvec_rows.2969.18016)	# 2410
	ori		x20, x0, %lo(calc_dirvec_rows.2969.18016)	# 2410
	sw		x20, 0(x19)	# 2429
	sw		x6, 20(x19)	# 2429
	sw		x16, 16(x19)	# 2429
	sw		x8, 12(x19)	# 2429
	sw		x11, 8(x19)	# 2429
	sw		x12, 4(x19)	# 2429
	addi	x6, x3, 0	# 2429
	addi	x3, x3, 20	# 2429
	lui		x20, %hi(create_dirvec_elements.2975.18020)	# 2429
	ori		x20, x0, %lo(create_dirvec_elements.2975.18020)	# 2429
	sw		x20, 0(x6)	# 2436
	sw		x10, 16(x6)	# 2436
	sw		x11, 12(x6)	# 2436
	sw		x12, 8(x6)	# 2436
	fsw		f1, 4(x6)	# 2436
	addi	x20, x3, 0	# 2436
	addi	x3, x3, 24	# 2436
	lui		x21, %hi(create_dirvecs.2978.18023)	# 2436
	ori		x21, x0, %lo(create_dirvecs.2978.18023)	# 2436
	sw		x21, 0(x20)	# 2448
	sw		x6, 20(x20)	# 2448
	sw		x10, 16(x20)	# 2448
	sw		x11, 12(x20)	# 2448
	sw		x12, 8(x20)	# 2448
	fsw		f1, 4(x20)	# 2448
	addi	x6, x3, 0	# 2448
	addi	x3, x3, 16	# 2448
	lui		x21, %hi(init_dirvec_constants.2980.18025)	# 2448
	ori		x21, x0, %lo(init_dirvec_constants.2980.18025)	# 2448
	sw		x21, 0(x6)	# 2455
	sw		x13, 12(x6)	# 2455
	sw		x11, 8(x6)	# 2455
	sw		x12, 4(x6)	# 2455
	addi	x21, x3, 0	# 2455
	addi	x3, x3, 16	# 2455
	lui		x22, %hi(init_vecset_constants.2983.18028)	# 2455
	ori		x22, x0, %lo(init_vecset_constants.2983.18028)	# 2455
	sw		x22, 0(x21)	# 2554
	sw		x6, 12(x21)	# 2554
	sw		x11, 8(x21)	# 2554
	sw		x12, 4(x21)	# 2554
	addi	x6, x0, 128	# 2554
	lw		x22, -40(x2)	# 2534
	addi	x23, x22, 64412	# 2534
	sw		x6, 0(x23)	# 2534
	mul		x23, x30, x12	# 2535
	addi	x24, x23, 64412	# 2535
	sw		x6, 0(x24)	# 2535
	addi	x24, x0, 64	# 2536
	addi	x25, x22, 64420	# 2536
	sw		x24, 0(x25)	# 2536
	addi	x25, x23, 64420	# 2537
	sw		x24, 0(x25)	# 2537
	lui		x24, %hi(l.29141)	# 2538
	ori		x24, x0, %lo(l.29141)	# 2538
	flw		f2, 0(x24)	# 2538
	sw		x4, -96(x2)	# 2538
	sw		x5, -100(x2)	# 2538
	fsw		f2, -104(x2)	# 2538
	addi	x4, x6, 0	# 2538
	sw		x1, -108(x2)	# 2538
	addi	x2, x2, -112	# 2538
	jal		x1, min_caml_float_of_int	# 2538
	addi	x2, x2, 112	# 2538
	lw		x1, -108(x2)	# 2538
	flw		f2, -104(x2)	# 2538
	fdiv	f1, f2, f1	# 2538
	addi	x4, x22, 0	# 2538
	addi	x5, x4, 64428	# 2538
	fsw		f1, 0(x5)	# 2538
	addi	x5, x4, 64412	# 2348
	lw		x5, 0(x5)	# 2348
	flw		f1, -8(x2)	# 2326
	sw		x4, -108(x2)	# 2326
	sw		x5, -112(x2)	# 2326
	addi	x4, x10, 0	# 2326
	sw		x1, -116(x2)	# 2326
	addi	x2, x2, -120	# 2326
	jal		x1, min_caml_create_float_array	# 2326
	addi	x2, x2, 120	# 2326
	lw		x1, -116(x2)	# 2326
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -116(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -120(x2)	# 2314
	addi	x2, x2, -124	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 124	# 2314
	lw		x1, -120(x2)	# 2314
	addi	x5, x4, 0	# 2314
	addi	x4, x16, 0	# 2315
	sw		x1, -120(x2)	# 2315
	addi	x2, x2, -124	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 124	# 2315
	lw		x1, -120(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -120(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -124(x2)	# 2316
	addi	x2, x2, -128	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 128	# 2316
	lw		x1, -124(x2)	# 2316
	addi	x5, x23, 0	# 2316
	lw		x6, -120(x2)	# 2316
	add		x10, x6, x5	# 2316
	sw		x4, 0(x10)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x5, -124(x2)	# 2317
	sw		x1, -128(x2)	# 2317
	addi	x2, x2, -132	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 132	# 2317
	lw		x1, -128(x2)	# 2317
	mul		x5, x30, x8	# 2317
	add		x10, x6, x5	# 2317
	sw		x4, 0(x10)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x5, -128(x2)	# 2318
	sw		x1, -132(x2)	# 2318
	addi	x2, x2, -136	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 136	# 2318
	lw		x1, -132(x2)	# 2318
	lw		x5, -20(x2)	# 2318
	mul		x10, x30, x5	# 2318
	add		x16, x6, x10	# 2318
	sw		x4, 0(x16)	# 2318
	addi	x4, x0, 4	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x4, -132(x2)	# 2319
	addi	x4, x5, 0	# 2319
	sw		x1, -136(x2)	# 2319
	addi	x2, x2, -140	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 140	# 2319
	lw		x1, -136(x2)	# 2319
	lw		x5, -132(x2)	# 2319
	mul		x16, x30, x5	# 2319
	add		x22, x6, x16	# 2319
	sw		x4, 0(x22)	# 2319
	lw		x4, -68(x2)	# 2328
	addi	x5, x11, 0	# 2328
	sw		x1, -136(x2)	# 2328
	addi	x2, x2, -140	# 2328
	jal		x1, min_caml_create_array	# 2328
	addi	x2, x2, 140	# 2328
	lw		x1, -136(x2)	# 2328
	lw		x5, -68(x2)	# 2329
	lw		x6, -4(x2)	# 2329
	sw		x4, -136(x2)	# 2329
	addi	x4, x5, 0	# 2329
	addi	x5, x6, 0	# 2329
	sw		x1, -140(x2)	# 2329
	addi	x2, x2, -144	# 2329
	jal		x1, min_caml_create_array	# 2329
	addi	x2, x2, 144	# 2329
	lw		x1, -140(x2)	# 2329
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -140(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -144(x2)	# 2314
	addi	x2, x2, -148	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 148	# 2314
	lw		x1, -144(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -68(x2)	# 2315
	sw		x1, -144(x2)	# 2315
	addi	x2, x2, -148	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 148	# 2315
	lw		x1, -144(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -144(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -148(x2)	# 2316
	addi	x2, x2, -152	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 152	# 2316
	lw		x1, -148(x2)	# 2316
	lw		x5, -124(x2)	# 2316
	lw		x6, -144(x2)	# 2316
	add		x11, x6, x5	# 2316
	sw		x4, 0(x11)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x5, -148(x2)	# 2317
	sw		x1, -152(x2)	# 2317
	addi	x2, x2, -156	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 156	# 2317
	lw		x1, -152(x2)	# 2317
	lw		x5, -128(x2)	# 2317
	add		x11, x6, x5	# 2317
	sw		x4, 0(x11)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x5, -152(x2)	# 2318
	sw		x1, -156(x2)	# 2318
	addi	x2, x2, -160	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 160	# 2318
	lw		x1, -156(x2)	# 2318
	addi	x5, x10, 0	# 2318
	add		x10, x6, x5	# 2318
	sw		x4, 0(x10)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x5, -156(x2)	# 2319
	sw		x1, -160(x2)	# 2319
	addi	x2, x2, -164	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 164	# 2319
	lw		x1, -160(x2)	# 2319
	addi	x5, x16, 0	# 2319
	add		x10, x6, x5	# 2319
	sw		x4, 0(x10)	# 2319
	lw		x4, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x5, -160(x2)	# 2314
	sw		x1, -164(x2)	# 2314
	addi	x2, x2, -168	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 168	# 2314
	lw		x1, -164(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -68(x2)	# 2315
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
	lw		x5, -148(x2)	# 2316
	lw		x6, -164(x2)	# 2316
	add		x10, x6, x5	# 2316
	sw		x4, 0(x10)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x5, -168(x2)	# 2317
	sw		x1, -172(x2)	# 2317
	addi	x2, x2, -176	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 176	# 2317
	lw		x1, -172(x2)	# 2317
	lw		x5, -152(x2)	# 2317
	add		x10, x6, x5	# 2317
	sw		x4, 0(x10)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x5, -172(x2)	# 2318
	sw		x1, -176(x2)	# 2318
	addi	x2, x2, -180	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 180	# 2318
	lw		x1, -176(x2)	# 2318
	lw		x5, -156(x2)	# 2318
	add		x10, x6, x5	# 2318
	sw		x4, 0(x10)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x5, -176(x2)	# 2319
	sw		x1, -180(x2)	# 2319
	addi	x2, x2, -184	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 184	# 2319
	lw		x1, -180(x2)	# 2319
	lw		x5, -160(x2)	# 2319
	add		x10, x6, x5	# 2319
	sw		x4, 0(x10)	# 2319
	lw		x4, -4(x2)	# 2332
	sw		x5, -180(x2)	# 2332
	addi	x5, x4, 0	# 2332
	addi	x4, x12, 0	# 2332
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
	lw		x4, -68(x2)	# 2315
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
	lw		x5, -168(x2)	# 2316
	lw		x6, -188(x2)	# 2316
	add		x10, x6, x5	# 2316
	sw		x4, 0(x10)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x5, -192(x2)	# 2317
	sw		x1, -196(x2)	# 2317
	addi	x2, x2, -200	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 200	# 2317
	lw		x1, -196(x2)	# 2317
	lw		x5, -172(x2)	# 2317
	add		x10, x6, x5	# 2317
	sw		x4, 0(x10)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x5, -196(x2)	# 2318
	sw		x1, -200(x2)	# 2318
	addi	x2, x2, -204	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 204	# 2318
	lw		x1, -200(x2)	# 2318
	lw		x5, -176(x2)	# 2318
	add		x10, x6, x5	# 2318
	sw		x4, 0(x10)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x5, -200(x2)	# 2319
	sw		x1, -204(x2)	# 2319
	addi	x2, x2, -208	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 208	# 2319
	lw		x1, -204(x2)	# 2319
	lw		x5, -180(x2)	# 2319
	add		x10, x6, x5	# 2319
	sw		x4, 0(x10)	# 2319
	addi	x4, x3, 0	# 2334
	addi	x3, x3, 32	# 2334
	sw		x6, 28(x4)	# 2334
	lw		x6, -184(x2)	# 2334
	sw		x6, 24(x4)	# 2334
	lw		x6, -164(x2)	# 2334
	sw		x6, 20(x4)	# 2334
	lw		x6, -144(x2)	# 2334
	sw		x6, 16(x4)	# 2334
	lw		x6, -140(x2)	# 2334
	sw		x6, 12(x4)	# 2334
	lw		x6, -136(x2)	# 2334
	sw		x6, 8(x4)	# 2334
	lw		x6, -120(x2)	# 2334
	sw		x6, 4(x4)	# 2334
	lw		x6, -116(x2)	# 2334
	sw		x6, 0(x4)	# 2334
	lw		x6, -112(x2)	# 2348
	sw		x5, -204(x2)	# 2348
	addi	x5, x4, 0	# 2348
	addi	x4, x6, 0	# 2348
	sw		x1, -208(x2)	# 2348
	addi	x2, x2, -212	# 2348
	jal		x1, min_caml_create_array	# 2348
	addi	x2, x2, 212	# 2348
	lw		x1, -208(x2)	# 2348
	lw		x5, -108(x2)	# 2349
	addi	x6, x5, 64412	# 2349
	lw		x6, 0(x6)	# 2349
	sub		x6, x6, x8	# 2349
	sw		x9, -208(x2)	# 2349
	sw		x7, -212(x2)	# 2349
	sw		x5, -216(x2)	# 2349
	addi	x5, x6, 0	# 2349
	addi	x29, x17, 0	# 2349
	sw		x1, -220(x2)	# 2349
	addi	x2, x2, -224	# 2349
	lw		x31, 0(x29)	# 2349
	jalr	x1, x31, 0	# 2349
	addi	x2, x2, 224	# 2349
	lw		x1, -220(x2)	# 2349
	lw		x5, -216(x2)	# 2348
	addi	x6, x5, 64412	# 2348
	lw		x6, 0(x6)	# 2348
	lw		x7, -20(x2)	# 2326
	flw		f1, -8(x2)	# 2326
	sw		x4, -220(x2)	# 2326
	sw		x5, -224(x2)	# 2326
	addi	x4, x7, 0	# 2326
	sw		x1, -228(x2)	# 2326
	addi	x2, x2, -232	# 2326
	jal		x1, min_caml_create_float_array	# 2326
	addi	x2, x2, 232	# 2326
	lw		x1, -228(x2)	# 2326
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -228(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -232(x2)	# 2314
	addi	x2, x2, -236	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 236	# 2314
	lw		x1, -232(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -68(x2)	# 2315
	sw		x6, -232(x2)	# 2315
	sw		x1, -236(x2)	# 2315
	addi	x2, x2, -240	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 240	# 2315
	lw		x1, -236(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -236(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -240(x2)	# 2316
	addi	x2, x2, -244	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 244	# 2316
	lw		x1, -240(x2)	# 2316
	lw		x5, -192(x2)	# 2316
	lw		x6, -236(x2)	# 2316
	add		x7, x6, x5	# 2316
	sw		x4, 0(x7)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x5, -240(x2)	# 2317
	sw		x1, -244(x2)	# 2317
	addi	x2, x2, -248	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 248	# 2317
	lw		x1, -244(x2)	# 2317
	lw		x5, -196(x2)	# 2317
	add		x7, x6, x5	# 2317
	sw		x4, 0(x7)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x5, -244(x2)	# 2318
	sw		x1, -248(x2)	# 2318
	addi	x2, x2, -252	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 252	# 2318
	lw		x1, -248(x2)	# 2318
	lw		x5, -200(x2)	# 2318
	add		x7, x6, x5	# 2318
	sw		x4, 0(x7)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x5, -248(x2)	# 2319
	sw		x1, -252(x2)	# 2319
	addi	x2, x2, -256	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 256	# 2319
	lw		x1, -252(x2)	# 2319
	lw		x5, -204(x2)	# 2319
	add		x7, x6, x5	# 2319
	sw		x4, 0(x7)	# 2319
	lw		x4, -68(x2)	# 2328
	lw		x7, -4(x2)	# 2328
	sw		x5, -252(x2)	# 2328
	addi	x5, x7, 0	# 2328
	sw		x1, -256(x2)	# 2328
	addi	x2, x2, -260	# 2328
	jal		x1, min_caml_create_array	# 2328
	addi	x2, x2, 260	# 2328
	lw		x1, -256(x2)	# 2328
	lw		x5, -68(x2)	# 2329
	lw		x6, -4(x2)	# 2329
	sw		x4, -256(x2)	# 2329
	addi	x4, x5, 0	# 2329
	addi	x5, x6, 0	# 2329
	sw		x1, -260(x2)	# 2329
	addi	x2, x2, -264	# 2329
	jal		x1, min_caml_create_array	# 2329
	addi	x2, x2, 264	# 2329
	lw		x1, -260(x2)	# 2329
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -260(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -264(x2)	# 2314
	addi	x2, x2, -268	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 268	# 2314
	lw		x1, -264(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -68(x2)	# 2315
	sw		x1, -264(x2)	# 2315
	addi	x2, x2, -268	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 268	# 2315
	lw		x1, -264(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -264(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -268(x2)	# 2316
	addi	x2, x2, -272	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 272	# 2316
	lw		x1, -268(x2)	# 2316
	lw		x5, -240(x2)	# 2316
	lw		x6, -264(x2)	# 2316
	add		x7, x6, x5	# 2316
	sw		x4, 0(x7)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x5, -268(x2)	# 2317
	sw		x1, -272(x2)	# 2317
	addi	x2, x2, -276	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 276	# 2317
	lw		x1, -272(x2)	# 2317
	lw		x5, -244(x2)	# 2317
	add		x7, x6, x5	# 2317
	sw		x4, 0(x7)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x5, -272(x2)	# 2318
	sw		x1, -276(x2)	# 2318
	addi	x2, x2, -280	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 280	# 2318
	lw		x1, -276(x2)	# 2318
	lw		x5, -248(x2)	# 2318
	add		x7, x6, x5	# 2318
	sw		x4, 0(x7)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x5, -276(x2)	# 2319
	sw		x1, -280(x2)	# 2319
	addi	x2, x2, -284	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 284	# 2319
	lw		x1, -280(x2)	# 2319
	lw		x5, -252(x2)	# 2319
	add		x7, x6, x5	# 2319
	sw		x4, 0(x7)	# 2319
	lw		x4, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x5, -280(x2)	# 2314
	sw		x1, -284(x2)	# 2314
	addi	x2, x2, -288	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 288	# 2314
	lw		x1, -284(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -68(x2)	# 2315
	sw		x1, -284(x2)	# 2315
	addi	x2, x2, -288	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 288	# 2315
	lw		x1, -284(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -284(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -288(x2)	# 2316
	addi	x2, x2, -292	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 292	# 2316
	lw		x1, -288(x2)	# 2316
	lw		x5, -268(x2)	# 2316
	lw		x6, -284(x2)	# 2316
	add		x7, x6, x5	# 2316
	sw		x4, 0(x7)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x5, -288(x2)	# 2317
	sw		x1, -292(x2)	# 2317
	addi	x2, x2, -296	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 296	# 2317
	lw		x1, -292(x2)	# 2317
	lw		x5, -272(x2)	# 2317
	add		x7, x6, x5	# 2317
	sw		x4, 0(x7)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x5, -292(x2)	# 2318
	sw		x1, -296(x2)	# 2318
	addi	x2, x2, -300	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 300	# 2318
	lw		x1, -296(x2)	# 2318
	lw		x5, -276(x2)	# 2318
	add		x7, x6, x5	# 2318
	sw		x4, 0(x7)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x5, -296(x2)	# 2319
	sw		x1, -300(x2)	# 2319
	addi	x2, x2, -304	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 304	# 2319
	lw		x1, -300(x2)	# 2319
	lw		x5, -280(x2)	# 2319
	add		x7, x6, x5	# 2319
	sw		x4, 0(x7)	# 2319
	lw		x4, 0(x2)	# 2332
	lw		x7, -4(x2)	# 2332
	sw		x5, -300(x2)	# 2332
	addi	x5, x7, 0	# 2332
	sw		x1, -304(x2)	# 2332
	addi	x2, x2, -308	# 2332
	jal		x1, min_caml_create_array	# 2332
	addi	x2, x2, 308	# 2332
	lw		x1, -304(x2)	# 2332
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -304(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -308(x2)	# 2314
	addi	x2, x2, -312	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 312	# 2314
	lw		x1, -308(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -68(x2)	# 2315
	sw		x1, -308(x2)	# 2315
	addi	x2, x2, -312	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 312	# 2315
	lw		x1, -308(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -308(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -312(x2)	# 2316
	addi	x2, x2, -316	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 316	# 2316
	lw		x1, -312(x2)	# 2316
	lw		x5, -288(x2)	# 2316
	lw		x6, -308(x2)	# 2316
	add		x7, x6, x5	# 2316
	sw		x4, 0(x7)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x5, -312(x2)	# 2317
	sw		x1, -316(x2)	# 2317
	addi	x2, x2, -320	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 320	# 2317
	lw		x1, -316(x2)	# 2317
	lw		x5, -292(x2)	# 2317
	add		x7, x6, x5	# 2317
	sw		x4, 0(x7)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x5, -316(x2)	# 2318
	sw		x1, -320(x2)	# 2318
	addi	x2, x2, -324	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 324	# 2318
	lw		x1, -320(x2)	# 2318
	lw		x5, -296(x2)	# 2318
	add		x7, x6, x5	# 2318
	sw		x4, 0(x7)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x5, -320(x2)	# 2319
	sw		x1, -324(x2)	# 2319
	addi	x2, x2, -328	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 328	# 2319
	lw		x1, -324(x2)	# 2319
	lw		x5, -300(x2)	# 2319
	add		x7, x6, x5	# 2319
	sw		x4, 0(x7)	# 2319
	addi	x4, x3, 0	# 2334
	addi	x3, x3, 32	# 2334
	sw		x6, 28(x4)	# 2334
	lw		x6, -304(x2)	# 2334
	sw		x6, 24(x4)	# 2334
	lw		x6, -284(x2)	# 2334
	sw		x6, 20(x4)	# 2334
	lw		x6, -264(x2)	# 2334
	sw		x6, 16(x4)	# 2334
	lw		x6, -260(x2)	# 2334
	sw		x6, 12(x4)	# 2334
	lw		x6, -256(x2)	# 2334
	sw		x6, 8(x4)	# 2334
	lw		x6, -236(x2)	# 2334
	sw		x6, 4(x4)	# 2334
	lw		x6, -228(x2)	# 2334
	sw		x6, 0(x4)	# 2334
	lw		x6, -232(x2)	# 2348
	sw		x5, -324(x2)	# 2348
	addi	x5, x4, 0	# 2348
	addi	x4, x6, 0	# 2348
	sw		x1, -328(x2)	# 2348
	addi	x2, x2, -332	# 2348
	jal		x1, min_caml_create_array	# 2348
	addi	x2, x2, 332	# 2348
	lw		x1, -328(x2)	# 2348
	lw		x5, -224(x2)	# 2349
	addi	x6, x5, 64412	# 2349
	lw		x6, 0(x6)	# 2349
	lw		x7, -52(x2)	# 2349
	sub		x6, x6, x7	# 2349
	sw		x5, -328(x2)	# 2349
	addi	x5, x6, 0	# 2349
	addi	x29, x17, 0	# 2349
	sw		x1, -332(x2)	# 2349
	addi	x2, x2, -336	# 2349
	lw		x31, 0(x29)	# 2349
	jalr	x1, x31, 0	# 2349
	addi	x2, x2, 336	# 2349
	lw		x1, -332(x2)	# 2349
	lw		x5, -328(x2)	# 2348
	addi	x6, x5, 64412	# 2348
	lw		x6, 0(x6)	# 2348
	lw		x7, -20(x2)	# 2326
	flw		f1, -8(x2)	# 2326
	sw		x4, -332(x2)	# 2326
	sw		x5, -336(x2)	# 2326
	addi	x4, x7, 0	# 2326
	sw		x1, -340(x2)	# 2326
	addi	x2, x2, -344	# 2326
	jal		x1, min_caml_create_float_array	# 2326
	addi	x2, x2, 344	# 2326
	lw		x1, -340(x2)	# 2326
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -340(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -344(x2)	# 2314
	addi	x2, x2, -348	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 348	# 2314
	lw		x1, -344(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -68(x2)	# 2315
	sw		x6, -344(x2)	# 2315
	sw		x1, -348(x2)	# 2315
	addi	x2, x2, -352	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 352	# 2315
	lw		x1, -348(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -348(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -352(x2)	# 2316
	addi	x2, x2, -356	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 356	# 2316
	lw		x1, -352(x2)	# 2316
	lw		x5, -312(x2)	# 2316
	lw		x6, -348(x2)	# 2316
	add		x7, x6, x5	# 2316
	sw		x4, 0(x7)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x5, -352(x2)	# 2317
	sw		x1, -356(x2)	# 2317
	addi	x2, x2, -360	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 360	# 2317
	lw		x1, -356(x2)	# 2317
	lw		x5, -316(x2)	# 2317
	add		x7, x6, x5	# 2317
	sw		x4, 0(x7)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x5, -356(x2)	# 2318
	sw		x1, -360(x2)	# 2318
	addi	x2, x2, -364	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 364	# 2318
	lw		x1, -360(x2)	# 2318
	lw		x5, -320(x2)	# 2318
	add		x7, x6, x5	# 2318
	sw		x4, 0(x7)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x5, -360(x2)	# 2319
	sw		x1, -364(x2)	# 2319
	addi	x2, x2, -368	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 368	# 2319
	lw		x1, -364(x2)	# 2319
	lw		x5, -324(x2)	# 2319
	add		x7, x6, x5	# 2319
	sw		x4, 0(x7)	# 2319
	lw		x4, -68(x2)	# 2328
	lw		x7, -4(x2)	# 2328
	sw		x5, -364(x2)	# 2328
	addi	x5, x7, 0	# 2328
	sw		x1, -368(x2)	# 2328
	addi	x2, x2, -372	# 2328
	jal		x1, min_caml_create_array	# 2328
	addi	x2, x2, 372	# 2328
	lw		x1, -368(x2)	# 2328
	lw		x5, -68(x2)	# 2329
	lw		x6, -4(x2)	# 2329
	sw		x4, -368(x2)	# 2329
	addi	x4, x5, 0	# 2329
	addi	x5, x6, 0	# 2329
	sw		x1, -372(x2)	# 2329
	addi	x2, x2, -376	# 2329
	jal		x1, min_caml_create_array	# 2329
	addi	x2, x2, 376	# 2329
	lw		x1, -372(x2)	# 2329
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -372(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -376(x2)	# 2314
	addi	x2, x2, -380	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 380	# 2314
	lw		x1, -376(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -68(x2)	# 2315
	sw		x1, -376(x2)	# 2315
	addi	x2, x2, -380	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 380	# 2315
	lw		x1, -376(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -376(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -380(x2)	# 2316
	addi	x2, x2, -384	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 384	# 2316
	lw		x1, -380(x2)	# 2316
	lw		x5, -352(x2)	# 2316
	lw		x6, -376(x2)	# 2316
	add		x7, x6, x5	# 2316
	sw		x4, 0(x7)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x5, -380(x2)	# 2317
	sw		x1, -384(x2)	# 2317
	addi	x2, x2, -388	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 388	# 2317
	lw		x1, -384(x2)	# 2317
	lw		x5, -356(x2)	# 2317
	add		x7, x6, x5	# 2317
	sw		x4, 0(x7)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x5, -384(x2)	# 2318
	sw		x1, -388(x2)	# 2318
	addi	x2, x2, -392	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 392	# 2318
	lw		x1, -388(x2)	# 2318
	lw		x5, -360(x2)	# 2318
	add		x7, x6, x5	# 2318
	sw		x4, 0(x7)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x5, -388(x2)	# 2319
	sw		x1, -392(x2)	# 2319
	addi	x2, x2, -396	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 396	# 2319
	lw		x1, -392(x2)	# 2319
	lw		x5, -364(x2)	# 2319
	add		x7, x6, x5	# 2319
	sw		x4, 0(x7)	# 2319
	lw		x4, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x5, -392(x2)	# 2314
	sw		x1, -396(x2)	# 2314
	addi	x2, x2, -400	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 400	# 2314
	lw		x1, -396(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -68(x2)	# 2315
	sw		x1, -396(x2)	# 2315
	addi	x2, x2, -400	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 400	# 2315
	lw		x1, -396(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -396(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -400(x2)	# 2316
	addi	x2, x2, -404	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 404	# 2316
	lw		x1, -400(x2)	# 2316
	lw		x5, -380(x2)	# 2316
	lw		x6, -396(x2)	# 2316
	add		x7, x6, x5	# 2316
	sw		x4, 0(x7)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x5, -400(x2)	# 2317
	sw		x1, -404(x2)	# 2317
	addi	x2, x2, -408	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 408	# 2317
	lw		x1, -404(x2)	# 2317
	lw		x5, -384(x2)	# 2317
	add		x7, x6, x5	# 2317
	sw		x4, 0(x7)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x5, -404(x2)	# 2318
	sw		x1, -408(x2)	# 2318
	addi	x2, x2, -412	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 412	# 2318
	lw		x1, -408(x2)	# 2318
	lw		x5, -388(x2)	# 2318
	add		x7, x6, x5	# 2318
	sw		x4, 0(x7)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x5, -408(x2)	# 2319
	sw		x1, -412(x2)	# 2319
	addi	x2, x2, -416	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 416	# 2319
	lw		x1, -412(x2)	# 2319
	lw		x5, -392(x2)	# 2319
	add		x7, x6, x5	# 2319
	sw		x4, 0(x7)	# 2319
	lw		x4, 0(x2)	# 2332
	lw		x7, -4(x2)	# 2332
	sw		x5, -412(x2)	# 2332
	addi	x5, x7, 0	# 2332
	sw		x1, -416(x2)	# 2332
	addi	x2, x2, -420	# 2332
	jal		x1, min_caml_create_array	# 2332
	addi	x2, x2, 420	# 2332
	lw		x1, -416(x2)	# 2332
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -416(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -420(x2)	# 2314
	addi	x2, x2, -424	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 424	# 2314
	lw		x1, -420(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -68(x2)	# 2315
	sw		x1, -420(x2)	# 2315
	addi	x2, x2, -424	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 424	# 2315
	lw		x1, -420(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -420(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -424(x2)	# 2316
	addi	x2, x2, -428	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 428	# 2316
	lw		x1, -424(x2)	# 2316
	lw		x5, -400(x2)	# 2316
	lw		x6, -420(x2)	# 2316
	add		x7, x6, x5	# 2316
	sw		x4, 0(x7)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x5, -424(x2)	# 2317
	sw		x1, -428(x2)	# 2317
	addi	x2, x2, -432	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 432	# 2317
	lw		x1, -428(x2)	# 2317
	lw		x5, -404(x2)	# 2317
	add		x7, x6, x5	# 2317
	sw		x4, 0(x7)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x5, -428(x2)	# 2318
	sw		x1, -432(x2)	# 2318
	addi	x2, x2, -436	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 436	# 2318
	lw		x1, -432(x2)	# 2318
	lw		x5, -408(x2)	# 2318
	add		x5, x6, x5	# 2318
	sw		x4, 0(x5)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -432(x2)	# 2319
	addi	x2, x2, -436	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 436	# 2319
	lw		x1, -432(x2)	# 2319
	lw		x5, -412(x2)	# 2319
	add		x5, x6, x5	# 2319
	sw		x4, 0(x5)	# 2319
	addi	x4, x3, 0	# 2334
	addi	x3, x3, 32	# 2334
	sw		x6, 28(x4)	# 2334
	lw		x5, -416(x2)	# 2334
	sw		x5, 24(x4)	# 2334
	lw		x5, -396(x2)	# 2334
	sw		x5, 20(x4)	# 2334
	lw		x5, -376(x2)	# 2334
	sw		x5, 16(x4)	# 2334
	lw		x5, -372(x2)	# 2334
	sw		x5, 12(x4)	# 2334
	lw		x5, -368(x2)	# 2334
	sw		x5, 8(x4)	# 2334
	lw		x5, -348(x2)	# 2334
	sw		x5, 4(x4)	# 2334
	lw		x5, -340(x2)	# 2334
	sw		x5, 0(x4)	# 2334
	addi	x5, x4, 0	# 2334
	lw		x4, -344(x2)	# 2348
	sw		x1, -432(x2)	# 2348
	addi	x2, x2, -436	# 2348
	jal		x1, min_caml_create_array	# 2348
	addi	x2, x2, 436	# 2348
	lw		x1, -432(x2)	# 2348
	lw		x5, -336(x2)	# 2349
	addi	x6, x5, 64412	# 2349
	lw		x6, 0(x6)	# 2349
	lw		x7, -52(x2)	# 2349
	sub		x6, x6, x7	# 2349
	sw		x5, -432(x2)	# 2349
	addi	x5, x6, 0	# 2349
	addi	x29, x17, 0	# 2349
	sw		x1, -436(x2)	# 2349
	addi	x2, x2, -440	# 2349
	lw		x31, 0(x29)	# 2349
	jalr	x1, x31, 0	# 2349
	addi	x2, x2, 440	# 2349
	lw		x1, -436(x2)	# 2349
	sw		x1, -436(x2)	# 726
	addi	x2, x2, -440	# 726
	jal		x1, min_caml_read_float	# 726
	addi	x2, x2, 440	# 726
	lw		x1, -436(x2)	# 726
	lw		x5, -432(x2)	# 726
	addi	x6, x5, 64084	# 726
	fsw		f1, 0(x6)	# 726
	sw		x1, -436(x2)	# 727
	addi	x2, x2, -440	# 727
	jal		x1, min_caml_read_float	# 727
	addi	x2, x2, 440	# 727
	lw		x1, -436(x2)	# 727
	lw		x6, -424(x2)	# 727
	addi	x7, x6, 64084	# 727
	fsw		f1, 0(x7)	# 727
	sw		x1, -436(x2)	# 728
	addi	x2, x2, -440	# 728
	jal		x1, min_caml_read_float	# 728
	addi	x2, x2, 440	# 728
	lw		x1, -436(x2)	# 728
	lw		x7, -428(x2)	# 728
	addi	x8, x7, 64084	# 728
	fsw		f1, 0(x8)	# 728
	sw		x1, -436(x2)	# 730
	addi	x2, x2, -440	# 730
	jal		x1, min_caml_read_float	# 730
	addi	x2, x2, 440	# 730
	lw		x1, -436(x2)	# 730
	lui		x8, %hi(l.26299)	# 719
	ori		x8, x0, %lo(l.26299)	# 719
	flw		f2, 0(x8)	# 719
	fmul	f1, f1, f2	# 719
	lw		x29, -100(x2)	# 731
	sw		x4, -436(x2)	# 731
	fsw		f2, -440(x2)	# 731
	fsw		f1, -444(x2)	# 731
	sw		x1, -448(x2)	# 731
	addi	x2, x2, -452	# 731
	lw		x31, 0(x29)	# 731
	jalr	x1, x31, 0	# 731
	addi	x2, x2, 452	# 731
	lw		x1, -448(x2)	# 731
	flw		f2, -444(x2)	# 732
	lw		x29, -96(x2)	# 732
	fsw		f1, -448(x2)	# 732
	fadd	f1, f0, f2	# 732
	sw		x1, -452(x2)	# 732
	addi	x2, x2, -456	# 732
	lw		x31, 0(x29)	# 732
	jalr	x1, x31, 0	# 732
	addi	x2, x2, 456	# 732
	lw		x1, -452(x2)	# 732
	fsw		f1, -452(x2)	# 733
	sw		x1, -456(x2)	# 733
	addi	x2, x2, -460	# 733
	jal		x1, min_caml_read_float	# 733
	addi	x2, x2, 460	# 733
	lw		x1, -456(x2)	# 733
	flw		f2, -440(x2)	# 719
	fmul	f1, f1, f2	# 719
	lw		x29, -100(x2)	# 734
	fsw		f1, -456(x2)	# 734
	sw		x1, -460(x2)	# 734
	addi	x2, x2, -464	# 734
	lw		x31, 0(x29)	# 734
	jalr	x1, x31, 0	# 734
	addi	x2, x2, 464	# 734
	lw		x1, -460(x2)	# 734
	flw		f2, -456(x2)	# 735
	lw		x29, -96(x2)	# 735
	fsw		f1, -460(x2)	# 735
	fadd	f1, f0, f2	# 735
	sw		x1, -464(x2)	# 735
	addi	x2, x2, -468	# 735
	lw		x31, 0(x29)	# 735
	jalr	x1, x31, 0	# 735
	addi	x2, x2, 468	# 735
	lw		x1, -464(x2)	# 735
	flw		f2, -448(x2)	# 737
	fmul	f3, f2, f1	# 737
	lui		x4, %hi(l.29287)	# 737
	ori		x4, x0, %lo(l.29287)	# 737
	flw		f4, 0(x4)	# 737
	fmul	f3, f3, f4	# 737
	addi	x4, x5, 0	# 737
	addi	x5, x4, 64480	# 737
	fsw		f3, 0(x5)	# 737
	lui		x5, %hi(l.29291)	# 738
	ori		x5, x0, %lo(l.29291)	# 738
	flw		f3, 0(x5)	# 738
	flw		f5, -452(x2)	# 738
	fmul	f3, f5, f3	# 738
	addi	x5, x6, 0	# 738
	addi	x6, x5, 64480	# 738
	fsw		f3, 0(x6)	# 738
	flw		f3, -460(x2)	# 739
	fmul	f6, f2, f3	# 739
	fmul	f4, f6, f4	# 739
	addi	x6, x7, 0	# 739
	addi	x7, x6, 64480	# 739
	fsw		f4, 0(x7)	# 739
	addi	x7, x4, 64456	# 741
	fsw		f3, 0(x7)	# 741
	addi	x7, x5, 64456	# 742
	flw		f4, -8(x2)	# 742
	fsw		f4, 0(x7)	# 742
	fsub	f6, f0, f1	# 123
	addi	x7, x6, 64456	# 743
	fsw		f6, 0(x7)	# 743
	fsub	f5, f0, f5	# 123
	fmul	f1, f5, f1	# 745
	addi	x7, x4, 64468	# 745
	fsw		f1, 0(x7)	# 745
	fsub	f1, f0, f2	# 123
	addi	x7, x5, 64468	# 746
	fsw		f1, 0(x7)	# 746
	fmul	f1, f5, f3	# 747
	addi	x7, x6, 64468	# 747
	fsw		f1, 0(x7)	# 747
	addi	x7, x4, 64084	# 749
	flw		f1, 0(x7)	# 749
	addi	x7, x4, 64480	# 749
	flw		f2, 0(x7)	# 749
	fsub	f1, f1, f2	# 749
	addi	x7, x4, 64096	# 749
	fsw		f1, 0(x7)	# 749
	addi	x7, x5, 64084	# 750
	flw		f1, 0(x7)	# 750
	addi	x7, x5, 64480	# 750
	flw		f2, 0(x7)	# 750
	fsub	f1, f1, f2	# 750
	addi	x7, x5, 64096	# 750
	fsw		f1, 0(x7)	# 750
	addi	x7, x6, 64084	# 751
	flw		f1, 0(x7)	# 751
	addi	x7, x6, 64480	# 751
	flw		f2, 0(x7)	# 751
	fsub	f1, f1, f2	# 751
	addi	x7, x6, 64096	# 751
	fsw		f1, 0(x7)	# 751
	sw		x4, -464(x2)	# 758
	sw		x1, -468(x2)	# 758
	addi	x2, x2, -472	# 758
	jal		x1, min_caml_read_int	# 758
	addi	x2, x2, 472	# 758
	lw		x1, -468(x2)	# 758
	sw		x1, -468(x2)	# 761
	addi	x2, x2, -472	# 761
	jal		x1, min_caml_read_float	# 761
	addi	x2, x2, 472	# 761
	lw		x1, -468(x2)	# 761
	flw		f2, -440(x2)	# 719
	fmul	f1, f1, f2	# 719
	lw		x29, -96(x2)	# 762
	fsw		f1, -468(x2)	# 762
	sw		x1, -472(x2)	# 762
	addi	x2, x2, -476	# 762
	lw		x31, 0(x29)	# 762
	jalr	x1, x31, 0	# 762
	addi	x2, x2, 476	# 762
	lw		x1, -472(x2)	# 762
	fsub	f1, f0, f1	# 123
	addi	x4, x5, 0	# 763
	addi	x5, x4, 64108	# 763
	fsw		f1, 0(x5)	# 763
	sw		x1, -472(x2)	# 764
	addi	x2, x2, -476	# 764
	jal		x1, min_caml_read_float	# 764
	addi	x2, x2, 476	# 764
	lw		x1, -472(x2)	# 764
	flw		f2, -440(x2)	# 719
	fmul	f1, f1, f2	# 719
	flw		f2, -468(x2)	# 765
	lw		x29, -100(x2)	# 765
	sw		x4, -472(x2)	# 765
	fsw		f1, -476(x2)	# 765
	fadd	f1, f0, f2	# 765
	sw		x1, -480(x2)	# 765
	addi	x2, x2, -484	# 765
	lw		x31, 0(x29)	# 765
	jalr	x1, x31, 0	# 765
	addi	x2, x2, 484	# 765
	lw		x1, -480(x2)	# 765
	flw		f2, -476(x2)	# 766
	lw		x29, -96(x2)	# 766
	fsw		f1, -480(x2)	# 766
	fadd	f1, f0, f2	# 766
	sw		x1, -484(x2)	# 766
	addi	x2, x2, -488	# 766
	lw		x31, 0(x29)	# 766
	jalr	x1, x31, 0	# 766
	addi	x2, x2, 488	# 766
	lw		x1, -484(x2)	# 766
	flw		f2, -480(x2)	# 767
	fmul	f1, f2, f1	# 767
	lw		x4, -464(x2)	# 767
	addi	x5, x4, 64108	# 767
	fsw		f1, 0(x5)	# 767
	flw		f1, -476(x2)	# 768
	lw		x29, -100(x2)	# 768
	sw		x4, -484(x2)	# 768
	sw		x1, -488(x2)	# 768
	addi	x2, x2, -492	# 768
	lw		x31, 0(x29)	# 768
	jalr	x1, x31, 0	# 768
	addi	x2, x2, 492	# 768
	lw		x1, -488(x2)	# 768
	flw		f2, -480(x2)	# 769
	fmul	f1, f2, f1	# 769
	addi	x4, x6, 0	# 769
	addi	x5, x4, 64108	# 769
	fsw		f1, 0(x5)	# 769
	sw		x1, -488(x2)	# 770
	addi	x2, x2, -492	# 770
	jal		x1, min_caml_read_float	# 770
	addi	x2, x2, 492	# 770
	lw		x1, -488(x2)	# 770
	lw		x5, -484(x2)	# 770
	addi	x6, x5, 64120	# 770
	fsw		f1, 0(x6)	# 770
	lw		x6, -4(x2)	# 912
	lw		x29, -212(x2)	# 912
	sw		x13, -488(x2)	# 912
	sw		x4, -492(x2)	# 912
	sw		x5, -496(x2)	# 912
	sw		x14, -500(x2)	# 912
	sw		x15, -504(x2)	# 912
	addi	x4, x6, 0	# 912
	sw		x1, -508(x2)	# 912
	addi	x2, x2, -512	# 912
	lw		x31, 0(x29)	# 912
	jalr	x1, x31, 0	# 912
	addi	x2, x2, 512	# 912
	lw		x1, -508(x2)	# 912
	lw		x4, -4(x2)	# 949
	lw		x29, -504(x2)	# 949
	sw		x1, -508(x2)	# 949
	addi	x2, x2, -512	# 949
	lw		x31, 0(x29)	# 949
	jalr	x1, x31, 0	# 949
	addi	x2, x2, 512	# 949
	lw		x1, -508(x2)	# 949
	lw		x4, -4(x2)	# 950
	lw		x29, -500(x2)	# 950
	sw		x1, -508(x2)	# 950
	addi	x2, x2, -512	# 950
	lw		x31, 0(x29)	# 950
	jalr	x1, x31, 0	# 950
	addi	x2, x2, 512	# 950
	lw		x1, -508(x2)	# 950
	lw		x5, -496(x2)	# 950
	addi	x6, x5, 64332	# 950
	sw		x4, 0(x6)	# 950
	addi	x4, x0, 80	# 2157
	sw		x1, -508(x2)	# 2157
	addi	x2, x2, -512	# 2157
	jal		x1, min_caml_print_char	# 2157
	addi	x2, x2, 512	# 2157
	lw		x1, -508(x2)	# 2157
	addi	x4, x0, 51	# 2158
	sw		x1, -508(x2)	# 2158
	addi	x2, x2, -512	# 2158
	jal		x1, min_caml_print_char	# 2158
	addi	x2, x2, 512	# 2158
	lw		x1, -508(x2)	# 2158
	addi	x4, x0, 10	# 2159
	sw		x4, -508(x2)	# 2159
	sw		x1, -512(x2)	# 2159
	addi	x2, x2, -516	# 2159
	jal		x1, min_caml_print_char	# 2159
	addi	x2, x2, 516	# 2159
	lw		x1, -512(x2)	# 2159
	addi	x4, x5, 0	# 2160
	addi	x5, x4, 64412	# 2160
	lw		x5, 0(x5)	# 2160
	sw		x4, -512(x2)	# 2160
	addi	x4, x5, 0	# 2160
	sw		x1, -516(x2)	# 2160
	addi	x2, x2, -520	# 2160
	jal		x1, min_caml_print_int	# 2160
	addi	x2, x2, 520	# 2160
	lw		x1, -516(x2)	# 2160
	addi	x4, x0, 32	# 2161
	sw		x4, -516(x2)	# 2161
	sw		x1, -520(x2)	# 2161
	addi	x2, x2, -524	# 2161
	jal		x1, min_caml_print_char	# 2161
	addi	x2, x2, 524	# 2161
	lw		x1, -520(x2)	# 2161
	lw		x4, -472(x2)	# 2162
	addi	x5, x4, 64412	# 2162
	lw		x5, 0(x5)	# 2162
	sw		x4, -520(x2)	# 2162
	addi	x4, x5, 0	# 2162
	sw		x1, -524(x2)	# 2162
	addi	x2, x2, -528	# 2162
	jal		x1, min_caml_print_int	# 2162
	addi	x2, x2, 528	# 2162
	lw		x1, -524(x2)	# 2162
	lw		x4, -516(x2)	# 2163
	sw		x1, -524(x2)	# 2163
	addi	x2, x2, -528	# 2163
	jal		x1, min_caml_print_char	# 2163
	addi	x2, x2, 528	# 2163
	lw		x1, -524(x2)	# 2163
	addi	x4, x0, 255	# 2164
	sw		x1, -524(x2)	# 2164
	addi	x2, x2, -528	# 2164
	jal		x1, min_caml_print_int	# 2164
	addi	x2, x2, 528	# 2164
	lw		x1, -524(x2)	# 2164
	lw		x4, -508(x2)	# 2165
	sw		x1, -524(x2)	# 2165
	addi	x2, x2, -528	# 2165
	jal		x1, min_caml_print_char	# 2165
	addi	x2, x2, 528	# 2165
	lw		x1, -524(x2)	# 2165
	lw		x4, -132(x2)	# 2463
	addi	x29, x20, 0	# 2463
	sw		x1, -524(x2)	# 2463
	addi	x2, x2, -528	# 2463
	lw		x31, 0(x29)	# 2463
	jalr	x1, x31, 0	# 2463
	addi	x2, x2, 528	# 2463
	lw		x1, -524(x2)	# 2463
	addi	x4, x0, 9	# 2464
	lw		x5, -4(x2)	# 2464
	addi	x6, x5, 0	# 2464
	addi	x29, x19, 0	# 2464
	sw		x1, -524(x2)	# 2464
	addi	x2, x2, -528	# 2464
	lw		x31, 0(x29)	# 2464
	jalr	x1, x31, 0	# 2464
	addi	x2, x2, 528	# 2464
	lw		x1, -524(x2)	# 2464
	lw		x4, -132(x2)	# 2465
	addi	x29, x21, 0	# 2465
	sw		x1, -524(x2)	# 2465
	addi	x2, x2, -528	# 2465
	lw		x31, 0(x29)	# 2465
	jalr	x1, x31, 0	# 2465
	addi	x2, x2, 528	# 2465
	lw		x1, -524(x2)	# 2465
	lw		x4, -512(x2)	# 301
	addi	x5, x4, 64108	# 301
	flw		f1, 0(x5)	# 301
	addi	x5, x4, 64532	# 301
	fsw		f1, 0(x5)	# 301
	lw		x5, -520(x2)	# 302
	addi	x6, x5, 64108	# 302
	flw		f1, 0(x6)	# 302
	addi	x6, x5, 64532	# 302
	fsw		f1, 0(x6)	# 302
	lw		x6, -492(x2)	# 303
	addi	x7, x6, 64108	# 303
	flw		f1, 0(x7)	# 303
	addi	x7, x6, 64532	# 303
	fsw		f1, 0(x7)	# 303
	addi	x7, x4, 63796	# 1329
	lw		x7, 0(x7)	# 1329
	lw		x8, 0(x2)	# 1329
	sub		x7, x7, x8	# 1329
	lw		x9, -84(x2)	# 1329
	lw		x29, -488(x2)	# 1329
	sw		x6, -524(x2)	# 1329
	sw		x5, -528(x2)	# 1329
	sw		x4, -532(x2)	# 1329
	addi	x5, x7, 0	# 1329
	addi	x4, x9, 0	# 1329
	sw		x1, -536(x2)	# 1329
	addi	x2, x2, -540	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 540	# 1329
	lw		x1, -536(x2)	# 1329
	lw		x4, -532(x2)	# 2547
	addi	x5, x4, 63796	# 2547
	lw		x5, 0(x5)	# 2547
	lw		x6, 0(x2)	# 2547
	sub		x5, x5, x6	# 2547
	lw		x7, -4(x2)	# 2512
	sw		x4, -536(x2)	# 2512
	ble		x7, x5, ble.33384	# 2512
	jal		x0, ble_cont.33383	# 2512
ble.33384:
	mul		x8, x30, x5	# 2513
	addi	x8, x8, 63844	# 2513
	lw		x8, 0(x8)	# 2513
	lw		x9, 8(x8)	# 405
	lw		x10, -52(x2)	# 2514
	beq		x9, x10, beq.33386	# 2514
	jal		x0, ble_cont.33383	# 2514
beq.33386:
	lw		x9, 28(x8)	# 503
	addi	x11, x4, 0	# 508
	add		x12, x9, x11	# 508
	flw		f1, 0(x12)	# 508
	fle		f30, f1, ble_cont.33383	# 125
	lw		x12, 4(x8)	# 395
	beq		x12, x6, beq.33390	# 2518
	beq		x12, x10, beq.33392	# 2520
	jal		x0, ble_cont.33383	# 2520
beq.33392:
	lw		x12, -132(x2)	# 2497
	mul		x5, x5, x12	# 2497
	addi	x5, x5, 1	# 2497
	addi	x12, x11, 65532	# 2498
	lw		x12, 0(x12)	# 2498
	add		x9, x9, x11	# 508
	flw		f1, 0(x9)	# 508
	fsub	f1, f30, f1	# 2499
	lw		x8, 16(x8)	# 463
	addi	x9, x11, 0	# 334
	addi	x11, x9, 64108	# 334
	flw		f2, 0(x11)	# 334
	add		x11, x8, x9	# 334
	flw		f3, 0(x11)	# 334
	fmul	f3, f2, f3	# 334
	lw		x11, -528(x2)	# 334
	addi	x13, x11, 0	# 334
	addi	x14, x13, 64108	# 334
	flw		f4, 0(x14)	# 334
	add		x14, x8, x13	# 334
	flw		f5, 0(x14)	# 334
	fmul	f5, f4, f5	# 334
	fadd	f3, f3, f5	# 334
	lw		x14, -524(x2)	# 334
	addi	x15, x14, 0	# 334
	addi	x16, x15, 64108	# 334
	flw		f5, 0(x16)	# 334
	add		x16, x8, x15	# 334
	flw		f6, 0(x16)	# 334
	fmul	f6, f5, f6	# 334
	fadd	f3, f3, f6	# 334
	lui		x16, %hi(l.26379)	# 2503
	ori		x16, x0, %lo(l.26379)	# 2503
	flw		f6, 0(x16)	# 2503
	add		x16, x8, x9	# 438
	flw		f7, 0(x16)	# 438
	fmul	f7, f6, f7	# 2503
	fmul	f7, f7, f3	# 2503
	fsub	f2, f7, f2	# 2503
	add		x16, x8, x13	# 448
	flw		f7, 0(x16)	# 448
	fmul	f7, f6, f7	# 2504
	fmul	f7, f7, f3	# 2504
	fsub	f4, f7, f4	# 2504
	add		x8, x8, x15	# 458
	flw		f7, 0(x8)	# 458
	fmul	f6, f6, f7	# 2505
	fmul	f3, f6, f3	# 2505
	fsub	f3, f3, f5	# 2505
	lw		x8, -20(x2)	# 2424
	flw		f5, -8(x2)	# 2424
	sw		x5, -540(x2)	# 2424
	fsw		f1, -544(x2)	# 2424
	addi	x4, x8, 0	# 2424
	fadd	f1, f0, f5	# 2424
	sw		x1, -548(x2)	# 2424
	addi	x2, x2, -552	# 2424
	jal		x1, min_caml_create_float_array	# 2424
	addi	x2, x2, 552	# 2424
	lw		x1, -548(x2)	# 2424
	addi	x5, x4, 0	# 2424
	addi	x4, x9, 0	# 2425
	addi	x8, x4, 63796	# 2425
	lw		x8, 0(x8)	# 2425
	sw		x4, -548(x2)	# 2425
	sw		x5, -552(x2)	# 2425
	addi	x4, x8, 0	# 2425
	sw		x1, -556(x2)	# 2425
	addi	x2, x2, -560	# 2425
	jal		x1, min_caml_create_array	# 2425
	addi	x2, x2, 560	# 2425
	lw		x1, -556(x2)	# 2425
	addi	x5, x3, 0	# 2426
	addi	x3, x3, 8	# 2426
	sw		x4, 4(x5)	# 2426
	lw		x4, -552(x2)	# 2426
	sw		x4, 0(x5)	# 2426
	lw		x6, -548(x2)	# 282
	add		x8, x4, x6	# 282
	fsw		f2, 0(x8)	# 282
	addi	x8, x13, 0	# 283
	add		x8, x4, x8	# 283
	fsw		f4, 0(x8)	# 283
	addi	x8, x15, 0	# 284
	add		x4, x4, x8	# 284
	fsw		f3, 0(x4)	# 284
	addi	x4, x6, 0	# 1329
	addi	x6, x4, 63796	# 1329
	lw		x6, 0(x6)	# 1329
	lw		x8, 0(x2)	# 1329
	sub		x6, x6, x8	# 1329
	lw		x29, -488(x2)	# 1329
	sw		x4, -556(x2)	# 1329
	sw		x12, -560(x2)	# 1329
	sw		x5, -564(x2)	# 1329
	addi	x4, x5, 0	# 1329
	addi	x5, x6, 0	# 1329
	sw		x1, -568(x2)	# 1329
	addi	x2, x2, -572	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 572	# 1329
	lw		x1, -568(x2)	# 1329
	addi	x4, x3, 0	# 2478
	addi	x3, x3, 12	# 2478
	flw		f1, -544(x2)	# 2478
	fsw		f1, 8(x4)	# 2478
	lw		x5, -564(x2)	# 2478
	sw		x5, 4(x4)	# 2478
	lw		x5, -540(x2)	# 2478
	sw		x5, 0(x4)	# 2478
	lw		x5, -560(x2)	# 2478
	mul		x6, x30, x5	# 2478
	addi	x6, x6, 64812	# 2478
	sw		x4, 0(x6)	# 2478
	addi	x4, x5, 1	# 2506
	lw		x5, -556(x2)	# 2506
	addi	x5, x5, 65532	# 2506
	sw		x4, 0(x5)	# 2506
	jal		x0, ble_cont.33383	# 2518
beq.33390:
	lw		x8, -132(x2)	# 2483
	mul		x5, x5, x8	# 2483
	addi	x8, x11, 0	# 2484
	addi	x11, x8, 65532	# 2484
	lw		x11, 0(x11)	# 2484
	add		x9, x9, x8	# 508
	flw		f1, 0(x9)	# 508
	fsub	f1, f30, f1	# 2485
	addi	x9, x8, 64108	# 2486
	flw		f2, 0(x9)	# 2486
	fsub	f3, f0, f2	# 123
	lw		x9, -528(x2)	# 2487
	addi	x12, x9, 0	# 2487
	addi	x13, x12, 64108	# 2487
	flw		f4, 0(x13)	# 2487
	fsub	f4, f0, f4	# 123
	lw		x13, -524(x2)	# 2488
	addi	x14, x13, 0	# 2488
	addi	x15, x14, 64108	# 2488
	flw		f5, 0(x15)	# 2488
	fsub	f5, f0, f5	# 123
	addi	x15, x5, 1	# 2489
	lw		x16, -20(x2)	# 2424
	flw		f6, -8(x2)	# 2424
	sw		x5, -568(x2)	# 2424
	fsw		f1, -572(x2)	# 2424
	addi	x4, x16, 0	# 2424
	fadd	f1, f0, f6	# 2424
	sw		x1, -576(x2)	# 2424
	addi	x2, x2, -580	# 2424
	jal		x1, min_caml_create_float_array	# 2424
	addi	x2, x2, 580	# 2424
	lw		x1, -576(x2)	# 2424
	addi	x5, x4, 0	# 2424
	addi	x4, x8, 0	# 2425
	addi	x8, x4, 63796	# 2425
	lw		x8, 0(x8)	# 2425
	sw		x4, -576(x2)	# 2425
	sw		x5, -580(x2)	# 2425
	addi	x4, x8, 0	# 2425
	sw		x1, -584(x2)	# 2425
	addi	x2, x2, -588	# 2425
	jal		x1, min_caml_create_array	# 2425
	addi	x2, x2, 588	# 2425
	lw		x1, -584(x2)	# 2425
	addi	x5, x3, 0	# 2426
	addi	x3, x3, 8	# 2426
	sw		x4, 4(x5)	# 2426
	lw		x4, -580(x2)	# 2426
	sw		x4, 0(x5)	# 2426
	lw		x6, -576(x2)	# 282
	add		x8, x4, x6	# 282
	fsw		f2, 0(x8)	# 282
	addi	x8, x12, 0	# 283
	add		x12, x4, x8	# 283
	fsw		f4, 0(x12)	# 283
	addi	x12, x14, 0	# 284
	add		x4, x4, x12	# 284
	fsw		f5, 0(x4)	# 284
	addi	x4, x6, 0	# 1329
	addi	x6, x4, 63796	# 1329
	lw		x6, 0(x6)	# 1329
	lw		x14, 0(x2)	# 1329
	sub		x6, x6, x14	# 1329
	lw		x29, -488(x2)	# 1329
	fsw		f4, -584(x2)	# 1329
	fsw		f5, -588(x2)	# 1329
	sw		x12, -592(x2)	# 1329
	fsw		f3, -596(x2)	# 1329
	sw		x4, -600(x2)	# 1329
	sw		x8, -604(x2)	# 1329
	sw		x11, -608(x2)	# 1329
	sw		x15, -612(x2)	# 1329
	sw		x5, -616(x2)	# 1329
	addi	x4, x5, 0	# 1329
	addi	x5, x6, 0	# 1329
	sw		x1, -620(x2)	# 1329
	addi	x2, x2, -624	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 624	# 1329
	lw		x1, -620(x2)	# 1329
	addi	x4, x3, 0	# 2478
	addi	x3, x3, 12	# 2478
	flw		f1, -572(x2)	# 2478
	fsw		f1, 8(x4)	# 2478
	lw		x5, -616(x2)	# 2478
	sw		x5, 4(x4)	# 2478
	lw		x5, -612(x2)	# 2478
	sw		x5, 0(x4)	# 2478
	lw		x5, -608(x2)	# 2478
	mul		x6, x30, x5	# 2478
	addi	x6, x6, 64812	# 2478
	sw		x4, 0(x6)	# 2478
	addi	x4, x5, 1	# 2490
	lw		x6, -568(x2)	# 2490
	addi	x7, x6, 2	# 2490
	lw		x8, -604(x2)	# 2490
	addi	x9, x8, 64108	# 2490
	flw		f2, 0(x9)	# 2490
	lw		x9, -20(x2)	# 2424
	flw		f3, -8(x2)	# 2424
	sw		x4, -620(x2)	# 2424
	addi	x4, x9, 0	# 2424
	fadd	f1, f0, f3	# 2424
	sw		x1, -624(x2)	# 2424
	addi	x2, x2, -628	# 2424
	jal		x1, min_caml_create_float_array	# 2424
	addi	x2, x2, 628	# 2424
	lw		x1, -624(x2)	# 2424
	addi	x5, x4, 0	# 2424
	lw		x4, -600(x2)	# 2425
	addi	x9, x4, 63796	# 2425
	lw		x9, 0(x9)	# 2425
	sw		x4, -624(x2)	# 2425
	sw		x5, -628(x2)	# 2425
	addi	x4, x9, 0	# 2425
	sw		x1, -632(x2)	# 2425
	addi	x2, x2, -636	# 2425
	jal		x1, min_caml_create_array	# 2425
	addi	x2, x2, 636	# 2425
	lw		x1, -632(x2)	# 2425
	addi	x5, x3, 0	# 2426
	addi	x3, x3, 8	# 2426
	sw		x4, 4(x5)	# 2426
	lw		x4, -628(x2)	# 2426
	sw		x4, 0(x5)	# 2426
	lw		x6, -624(x2)	# 282
	add		x9, x4, x6	# 282
	flw		f1, -596(x2)	# 282
	fsw		f1, 0(x9)	# 282
	add		x9, x4, x8	# 283
	fsw		f2, 0(x9)	# 283
	lw		x9, -592(x2)	# 284
	add		x4, x4, x9	# 284
	flw		f2, -588(x2)	# 284
	fsw		f2, 0(x4)	# 284
	addi	x4, x6, 0	# 1329
	addi	x6, x4, 63796	# 1329
	lw		x6, 0(x6)	# 1329
	lw		x10, 0(x2)	# 1329
	sub		x6, x6, x10	# 1329
	lw		x29, -488(x2)	# 1329
	sw		x8, -632(x2)	# 1329
	sw		x4, -636(x2)	# 1329
	sw		x9, -640(x2)	# 1329
	sw		x7, -644(x2)	# 1329
	sw		x5, -648(x2)	# 1329
	addi	x4, x5, 0	# 1329
	addi	x5, x6, 0	# 1329
	sw		x1, -652(x2)	# 1329
	addi	x2, x2, -656	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 656	# 1329
	lw		x1, -652(x2)	# 1329
	addi	x4, x3, 0	# 2478
	addi	x3, x3, 12	# 2478
	flw		f1, -572(x2)	# 2478
	fsw		f1, 8(x4)	# 2478
	lw		x5, -648(x2)	# 2478
	sw		x5, 4(x4)	# 2478
	lw		x5, -644(x2)	# 2478
	sw		x5, 0(x4)	# 2478
	lw		x5, -620(x2)	# 2478
	mul		x5, x30, x5	# 2478
	addi	x5, x5, 64812	# 2478
	sw		x4, 0(x5)	# 2478
	lw		x4, -608(x2)	# 2491
	addi	x5, x4, 2	# 2491
	lw		x6, -568(x2)	# 2491
	addi	x6, x6, 3	# 2491
	lw		x7, -640(x2)	# 2491
	addi	x8, x7, 64108	# 2491
	flw		f2, 0(x8)	# 2491
	lw		x8, -20(x2)	# 2424
	flw		f3, -8(x2)	# 2424
	sw		x5, -652(x2)	# 2424
	addi	x4, x8, 0	# 2424
	fadd	f1, f0, f3	# 2424
	sw		x1, -656(x2)	# 2424
	addi	x2, x2, -660	# 2424
	jal		x1, min_caml_create_float_array	# 2424
	addi	x2, x2, 660	# 2424
	lw		x1, -656(x2)	# 2424
	addi	x5, x4, 0	# 2424
	lw		x4, -636(x2)	# 2425
	addi	x8, x4, 63796	# 2425
	lw		x8, 0(x8)	# 2425
	sw		x6, -656(x2)	# 2425
	sw		x4, -660(x2)	# 2425
	sw		x5, -664(x2)	# 2425
	addi	x4, x8, 0	# 2425
	sw		x1, -668(x2)	# 2425
	addi	x2, x2, -672	# 2425
	jal		x1, min_caml_create_array	# 2425
	addi	x2, x2, 672	# 2425
	lw		x1, -668(x2)	# 2425
	addi	x5, x3, 0	# 2426
	addi	x3, x3, 8	# 2426
	sw		x4, 4(x5)	# 2426
	lw		x4, -664(x2)	# 2426
	sw		x4, 0(x5)	# 2426
	lw		x6, -660(x2)	# 282
	add		x8, x4, x6	# 282
	flw		f1, -596(x2)	# 282
	fsw		f1, 0(x8)	# 282
	lw		x8, -632(x2)	# 283
	add		x8, x4, x8	# 283
	flw		f1, -584(x2)	# 283
	fsw		f1, 0(x8)	# 283
	add		x4, x4, x7	# 284
	fsw		f2, 0(x4)	# 284
	addi	x4, x6, 0	# 1329
	addi	x6, x4, 63796	# 1329
	lw		x6, 0(x6)	# 1329
	lw		x7, 0(x2)	# 1329
	sub		x6, x6, x7	# 1329
	lw		x29, -488(x2)	# 1329
	sw		x4, -668(x2)	# 1329
	sw		x5, -672(x2)	# 1329
	addi	x4, x5, 0	# 1329
	addi	x5, x6, 0	# 1329
	sw		x1, -676(x2)	# 1329
	addi	x2, x2, -680	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 680	# 1329
	lw		x1, -676(x2)	# 1329
	addi	x4, x3, 0	# 2478
	addi	x3, x3, 12	# 2478
	flw		f1, -572(x2)	# 2478
	fsw		f1, 8(x4)	# 2478
	lw		x5, -672(x2)	# 2478
	sw		x5, 4(x4)	# 2478
	lw		x5, -656(x2)	# 2478
	sw		x5, 0(x4)	# 2478
	lw		x5, -652(x2)	# 2478
	mul		x5, x30, x5	# 2478
	addi	x5, x5, 64812	# 2478
	sw		x4, 0(x5)	# 2478
	lw		x4, -608(x2)	# 2492
	addi	x4, x4, 3	# 2492
	lw		x5, -668(x2)	# 2492
	addi	x5, x5, 65532	# 2492
	sw		x4, 0(x5)	# 2492
	jal		x0, ble_cont.33383	# 125
ble_cont.33383:
	lw		x4, -536(x2)	# 2260
	addi	x5, x4, 64428	# 2260
	flw		f1, 0(x5)	# 2260
	lw		x5, -528(x2)	# 2260
	addi	x6, x5, 64420	# 2260
	lw		x6, 0(x6)	# 2260
	lw		x7, -4(x2)	# 2260
	sub		x6, x7, x6	# 2260
	sw		x5, -676(x2)	# 2260
	sw		x4, -680(x2)	# 2260
	fsw		f1, -684(x2)	# 2260
	addi	x4, x6, 0	# 2260
	sw		x1, -688(x2)	# 2260
	addi	x2, x2, -692	# 2260
	jal		x1, min_caml_float_of_int	# 2260
	addi	x2, x2, 692	# 2260
	lw		x1, -688(x2)	# 2260
	flw		f2, -684(x2)	# 2260
	fmul	f1, f2, f1	# 2260
	lw		x4, -680(x2)	# 2263
	addi	x5, x4, 64468	# 2263
	flw		f2, 0(x5)	# 2263
	fmul	f2, f1, f2	# 2263
	addi	x5, x4, 64480	# 2263
	flw		f3, 0(x5)	# 2263
	fadd	f2, f2, f3	# 2263
	lw		x5, -676(x2)	# 2264
	addi	x6, x5, 64468	# 2264
	flw		f3, 0(x6)	# 2264
	fmul	f3, f1, f3	# 2264
	addi	x5, x5, 64480	# 2264
	flw		f4, 0(x5)	# 2264
	fadd	f3, f3, f4	# 2264
	lw		x5, -524(x2)	# 2265
	addi	x6, x5, 64468	# 2265
	flw		f4, 0(x6)	# 2265
	fmul	f1, f1, f4	# 2265
	addi	x5, x5, 64480	# 2265
	flw		f4, 0(x5)	# 2265
	fadd	f1, f1, f4	# 2265
	addi	x4, x4, 64412	# 2266
	lw		x4, 0(x4)	# 2266
	lw		x5, 0(x2)	# 2266
	sub		x5, x4, x5	# 2266
	lw		x4, -332(x2)	# 2266
	lw		x29, -208(x2)	# 2266
	sw		x18, -688(x2)	# 2266
	addi	x6, x7, 0	# 2266
	fadd	f31, f0, f3	# 2266
	fadd	f3, f0, f1	# 2266
	fadd	f1, f0, f2	# 2266
	fadd	f2, f0, f31	# 2266
	sw		x1, -692(x2)	# 2266
	addi	x2, x2, -696	# 2266
	lw		x31, 0(x29)	# 2266
	jalr	x1, x31, 0	# 2266
	addi	x2, x2, 696	# 2266
	lw		x1, -692(x2)	# 2266
	lw		x4, -4(x2)	# 2549
	lw		x5, -220(x2)	# 2549
	lw		x6, -332(x2)	# 2549
	lw		x7, -436(x2)	# 2549
	lw		x8, -52(x2)	# 2549
	lw		x9, -20(x2)	# 2549
	lw		x29, -688(x2)	# 2549
	sw		x1, -692(x2)	# 2549
	addi	x2, x2, -696	# 2549
	lw		x31, 0(x29)	# 2549
	jalr	x1, x31, 0	# 2549
	addi	x2, x2, 696	# 2549
	lw		x1, -692(x2)	# 2549
	EXIT	
