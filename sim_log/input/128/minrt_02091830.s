l.32288:	# 8388608.000000
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
	fle		f6, f1, fle.32289	# 204
	fsub	f1, f0, f1	# 204
	sw		x1, 0(x2)	# 204
	addi	x2, x2, -4	# 204
	lw		x31, 0(x29)	# 204
	jalr	x1, x31, 0	# 204
	addi	x2, x2, 4	# 204
	lw		x1, 0(x2)	# 204
	fsub	f1, f0, f1	# 204
	jalr	x0, x1, 0	# 204
fle.32289:
	fle		f4, f1, fle.32290	# 205
	fle		f5, f1, fle.32291	# 206
	fle		f1, f3, fle.32292	# 207
	fsub	f1, f5, f1	# 207
	lw		x31, 0(x29)	# 207
	jalr	x0, x31, 0	# 207
fle.32292:
	fle		f2, f1, fle.32293	# 208
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
fle.32293:
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
fle.32291:
	fsub	f1, f1, f5	# 206
	sw		x1, 0(x2)	# 206
	addi	x2, x2, -4	# 206
	lw		x31, 0(x29)	# 206
	jalr	x1, x31, 0	# 206
	addi	x2, x2, 4	# 206
	lw		x1, 0(x2)	# 206
	fsub	f1, f0, f1	# 206
	jalr	x0, x1, 0	# 206
fle.32290:
	fsub	f1, f1, f4	# 205
	lw		x31, 0(x29)	# 205
	jalr	x0, x31, 0	# 205
cos.2514.17893:
	lw		x4, 16(x29)	# 212
	flw		f2, 12(x29)	# 212
	flw		f3, 8(x29)	# 212
	flw		f4, 4(x29)	# 212
	fle		f4, f1, fle.32294	# 212
	fsub	f1, f0, f1	# 212
	lw		x31, 0(x29)	# 212
	jalr	x0, x31, 0	# 212
fle.32294:
	fle		f1, f2, fle.32295	# 213
	fsub	f1, f3, f1	# 213
	addi	x29, x4, 0	# 213
	lw		x31, 0(x29)	# 213
	jalr	x0, x31, 0	# 213
fle.32295:
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
	fle		f4, f1, fle.32296	# 217
	fsub	f1, f0, f1	# 217
	sw		x1, 0(x2)	# 217
	addi	x2, x2, -4	# 217
	lw		x31, 0(x29)	# 217
	jalr	x1, x31, 0	# 217
	addi	x2, x2, 4	# 217
	lw		x1, 0(x2)	# 217
	fsub	f1, f0, f1	# 217
	jalr	x0, x1, 0	# 217
fle.32296:
	lui		x4, %hi(l.26261)	# 218
	ori		x4, x0, %lo(l.26261)	# 218
	flw		f4, 0(x4)	# 218
	fle		f1, f4, fle.32297	# 218
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
fle.32297:
	lui		x4, %hi(l.26264)	# 219
	ori		x4, x0, %lo(l.26264)	# 219
	flw		f3, 0(x4)	# 219
	fle		f3, f1, fle.32298	# 219
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
fle.32298:
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
	ble		x10, x4, ble.32299	# 903
	sw		x29, 0(x2)	# 821
	sw		x4, -4(x2)	# 821
	sw		x1, -8(x2)	# 821
	addi	x2, x2, -12	# 821
	jal		x1, min_caml_read_int	# 821
	addi	x2, x2, 12	# 821
	lw		x1, -8(x2)	# 821
	beq		x4, x8, beq.32301	# 822
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
	mul		x9, x30, x12	# 830
	add		x10, x4, x9	# 830
	fsw		f1, 0(x10)	# 830
	sw		x1, -36(x2)	# 831
	addi	x2, x2, -40	# 831
	jal		x1, min_caml_read_float	# 831
	addi	x2, x2, 40	# 831
	lw		x1, -36(x2)	# 831
	mul		x13, x30, x7	# 831
	add		x14, x4, x13	# 831
	fsw		f1, 0(x14)	# 831
	lw		x15, -32(x2)	# 833
	flw		f1, -28(x2)	# 833
	sw		x4, -36(x2)	# 833
	sw		x5, -40(x2)	# 833
	addi	x4, x15, 0	# 833
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
	add		x15, x4, x5	# 834
	fsw		f1, 0(x15)	# 834
	sw		x1, -44(x2)	# 835
	addi	x2, x2, -48	# 835
	jal		x1, min_caml_read_float	# 835
	addi	x2, x2, 48	# 835
	lw		x1, -44(x2)	# 835
	add		x15, x4, x9	# 835
	fsw		f1, 0(x15)	# 835
	sw		x1, -44(x2)	# 836
	addi	x2, x2, -48	# 836
	jal		x1, min_caml_read_float	# 836
	addi	x2, x2, 48	# 836
	lw		x1, -44(x2)	# 836
	add		x15, x4, x13	# 836
	fsw		f1, 0(x15)	# 836
	sw		x1, -44(x2)	# 838
	addi	x2, x2, -48	# 838
	jal		x1, min_caml_read_float	# 838
	addi	x2, x2, 48	# 838
	lw		x1, -44(x2)	# 838
	flw		f2, -28(x2)	# 122
	fle		f2, f1, fle.32303	# 122
	addi	x15, x0, 1	# 122
	jal		x0, fle_cont.32302	# 122
fle.32303:
	addi	x15, x0, 0	# 122
fle_cont.32302:
	fsw		f1, -44(x2)	# 840
	sw		x4, -48(x2)	# 840
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
	lw		x5, -40(x2)	# 841
	add		x7, x4, x5	# 841
	fsw		f1, 0(x7)	# 841
	sw		x1, -56(x2)	# 842
	addi	x2, x2, -60	# 842
	jal		x1, min_caml_read_float	# 842
	addi	x2, x2, 60	# 842
	lw		x1, -56(x2)	# 842
	add		x7, x4, x9	# 842
	fsw		f1, 0(x7)	# 842
	lw		x7, -32(x2)	# 844
	flw		f1, -28(x2)	# 844
	sw		x4, -56(x2)	# 844
	addi	x4, x7, 0	# 844
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
	lw		x5, -40(x2)	# 845
	add		x7, x4, x5	# 845
	fsw		f1, 0(x7)	# 845
	sw		x1, -60(x2)	# 846
	addi	x2, x2, -64	# 846
	jal		x1, min_caml_read_float	# 846
	addi	x2, x2, 64	# 846
	lw		x1, -60(x2)	# 846
	add		x7, x4, x9	# 846
	fsw		f1, 0(x7)	# 846
	sw		x1, -60(x2)	# 847
	addi	x2, x2, -64	# 847
	jal		x1, min_caml_read_float	# 847
	addi	x2, x2, 64	# 847
	lw		x1, -60(x2)	# 847
	add		x7, x4, x13	# 847
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
	beq		x5, x11, beq_cont.32304	# 850
	sw		x1, -64(x2)	# 852
	addi	x2, x2, -68	# 852
	jal		x1, min_caml_read_float	# 852
	addi	x2, x2, 68	# 852
	lw		x1, -64(x2)	# 852
	lui		x7, %hi(l.26299)	# 719
	ori		x7, x0, %lo(l.26299)	# 719
	flw		f2, 0(x7)	# 719
	fmul	f1, f1, f2	# 719
	lw		x7, -40(x2)	# 852
	add		x16, x4, x7	# 852
	fsw		f1, 0(x16)	# 852
	sw		x1, -64(x2)	# 853
	addi	x2, x2, -68	# 853
	jal		x1, min_caml_read_float	# 853
	addi	x2, x2, 68	# 853
	lw		x1, -64(x2)	# 853
	fmul	f1, f1, f2	# 719
	add		x16, x4, x9	# 853
	fsw		f1, 0(x16)	# 853
	sw		x1, -64(x2)	# 854
	addi	x2, x2, -68	# 854
	jal		x1, min_caml_read_float	# 854
	addi	x2, x2, 68	# 854
	lw		x1, -64(x2)	# 854
	fmul	f1, f1, f2	# 719
	add		x16, x4, x13	# 854
	fsw		f1, 0(x16)	# 854
	jal		x0, beq_cont.32304	# 850
beq_cont.32304:
	lw		x7, -52(x2)	# 861
	lw		x16, -12(x2)	# 861
	beq		x16, x7, beq.32307	# 861
	jal		x0, beq_cont.32306	# 861
beq.32307:
	addi	x15, x0, 1	# 861
beq_cont.32306:
	addi	x17, x0, 4	# 862
	flw		f1, -28(x2)	# 862
	sw		x4, -64(x2)	# 862
	addi	x4, x17, 0	# 862
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
	lw		x17, -60(x2)	# 865
	sw		x17, 32(x5)	# 865
	lw		x17, -56(x2)	# 865
	sw		x17, 28(x5)	# 865
	sw		x15, 24(x5)	# 865
	lw		x15, -48(x2)	# 865
	sw		x15, 20(x5)	# 865
	lw		x15, -36(x2)	# 865
	sw		x15, 16(x5)	# 865
	lw		x15, -24(x2)	# 865
	sw		x15, 12(x5)	# 865
	lw		x17, -16(x2)	# 865
	sw		x17, 8(x5)	# 865
	sw		x16, 4(x5)	# 865
	lw		x17, -8(x2)	# 865
	sw		x17, 0(x5)	# 865
	lw		x17, -4(x2)	# 873
	mul		x18, x30, x17	# 873
	addi	x18, x18, 63844	# 873
	sw		x5, 0(x18)	# 873
	lw		x5, -32(x2)	# 875
	beq		x16, x5, beq.32309	# 875
	beq		x16, x7, beq.32311	# 885
	jal		x0, beq_cont.32308	# 885
beq.32311:
	flw		f1, 0(x8)	# 325
	fmul	f2, f1, f1	# 127
	flw		f3, 0(x10)	# 325
	fmul	f3, f3, f3	# 127
	fadd	f2, f2, f3	# 325
	flw		f3, 0(x14)	# 325
	fmul	f3, f3, f3	# 127
	fadd	f2, f2, f3	# 325
	fsqrt	f2, f2	# 325
	flw		f3, -28(x2)	# 120
	feq		f2, f3, feq.32313	# 120
	flw		f4, -44(x2)	# 122
	fle		f3, f4, fle.32315	# 122
	fdiv	f2, f30, f2	# 326
	jal		x0, feq_cont.32312	# 122
fle.32315:
	fdiv	f2, f22, f2	# 326
	jal		x0, feq_cont.32312	# 120
feq.32313:
	fadd	f2, f0, f30	# 326
feq_cont.32312:
	fmul	f1, f1, f2	# 327
	fsw		f1, 0(x8)	# 327
	flw		f1, 0(x10)	# 328
	fmul	f1, f1, f2	# 328
	fsw		f1, 0(x10)	# 328
	flw		f1, 0(x14)	# 329
	fmul	f1, f1, f2	# 329
	fsw		f1, 0(x14)	# 329
	jal		x0, beq_cont.32308	# 875
beq.32309:
	flw		f1, 0(x8)	# 878
	flw		f2, -28(x2)	# 120
	feq		f1, f2, feq.32317	# 120
	fle		f1, f2, fle.32321	# 121
	fadd	f3, f0, f30	# 255
	jal		x0, feq_cont.32318	# 121
fle.32321:
	fadd	f3, f0, f22	# 256
	jal		x0, feq_cont.32318	# 120
feq.32319:
	fadd	f3, f0, f2	# 254
feq_cont.32318:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 879
	jal		x0, feq_cont.32316	# 120
feq.32317:
	fadd	f1, f0, f2	# 879
feq_cont.32316:
	fsw		f1, 0(x8)	# 879
	flw		f1, 0(x10)	# 880
	feq		f1, f2, feq.32323	# 120
	fle		f1, f2, fle.32327	# 121
	fadd	f3, f0, f30	# 255
	jal		x0, feq_cont.32324	# 121
fle.32327:
	fadd	f3, f0, f22	# 256
	jal		x0, feq_cont.32324	# 120
feq.32325:
	fadd	f3, f0, f2	# 254
feq_cont.32324:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 881
	jal		x0, feq_cont.32322	# 120
feq.32323:
	fadd	f1, f0, f2	# 881
feq_cont.32322:
	fsw		f1, 0(x10)	# 881
	flw		f1, 0(x14)	# 882
	feq		f1, f2, feq.32329	# 120
	fle		f1, f2, fle.32333	# 121
	fadd	f2, f0, f30	# 255
	jal		x0, feq_cont.32330	# 121
fle.32333:
	fadd	f2, f0, f22	# 256
	jal		x0, feq_cont.32330	# 120
feq_cont.32330:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f2, f1	# 883
	jal		x0, feq_cont.32328	# 120
feq.32329:
	fadd	f1, f0, f2	# 883
feq_cont.32328:
	fsw		f1, 0(x14)	# 883
beq_cont.32308:
	beq		x15, x11, beq_cont.32334	# 891
	lw		x5, -40(x2)	# 780
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
	lw		x4, -64(x2)	# 782
	add		x7, x4, x9	# 782
	flw		f2, 0(x7)	# 782
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
	lw		x4, -64(x2)	# 784
	add		x4, x4, x13	# 784
	flw		f2, 0(x4)	# 784
	sw		x4, -88(x2)	# 784
	fsw		f1, -92(x2)	# 784
	fsw		f2, -96(x2)	# 784
	addi	x29, x6, 0	# 784
	fadd	f1, f0, f2	# 784
	sw		x1, -100(x2)	# 784
	addi	x2, x2, -104	# 784
	lw		x31, 0(x29)	# 784
	jalr	x1, x31, 0	# 784
	addi	x2, x2, 104	# 784
	lw		x1, -100(x2)	# 784
	flw		f2, -96(x2)	# 785
	lw		x29, -20(x2)	# 785
	fsw		f1, -100(x2)	# 785
	fadd	f1, f0, f2	# 785
	sw		x1, -104(x2)	# 785
	addi	x2, x2, -108	# 785
	lw		x31, 0(x29)	# 785
	jalr	x1, x31, 0	# 785
	addi	x2, x2, 108	# 785
	lw		x1, -104(x2)	# 785
	flw		f2, -84(x2)	# 787
	flw		f3, -100(x2)	# 787
	fmul	f4, f2, f3	# 787
	flw		f5, -76(x2)	# 788
	flw		f6, -92(x2)	# 788
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
	flw		f6, 0(x8)	# 800
	flw		f9, 0(x10)	# 801
	flw		f10, 0(x14)	# 802
	fmul	f13, f4, f4	# 127
	fmul	f13, f6, f13	# 807
	fmul	f14, f12, f12	# 127
	fmul	f14, f9, f14	# 807
	fadd	f13, f13, f14	# 807
	fmul	f14, f3, f3	# 127
	fmul	f14, f10, f14	# 807
	fadd	f13, f13, f14	# 807
	fsw		f13, 0(x8)	# 807
	fmul	f13, f8, f8	# 127
	fmul	f13, f6, f13	# 808
	fmul	f14, f7, f7	# 127
	fmul	f14, f9, f14	# 808
	fadd	f13, f13, f14	# 808
	fmul	f14, f5, f5	# 127
	fmul	f14, f10, f14	# 808
	fadd	f13, f13, f14	# 808
	fsw		f13, 0(x10)	# 808
	fmul	f13, f11, f11	# 127
	fmul	f13, f6, f13	# 809
	fmul	f14, f1, f1	# 127
	fmul	f14, f9, f14	# 809
	fadd	f13, f13, f14	# 809
	fmul	f14, f2, f2	# 127
	fmul	f14, f10, f14	# 809
	fadd	f13, f13, f14	# 809
	fsw		f13, 0(x14)	# 809
	lui		x4, %hi(l.26379)	# 812
	ori		x4, x0, %lo(l.26379)	# 812
	flw		f13, 0(x4)	# 812
	fmul	f14, f6, f8	# 812
	fmul	f14, f14, f11	# 812
	fmul	f15, f9, f7	# 812
	fmul	f15, f15, f1	# 812
	fadd	f14, f14, f15	# 812
	fmul	f15, f10, f5	# 812
	fmul	f15, f15, f2	# 812
	fadd	f14, f14, f15	# 812
	fmul	f14, f13, f14	# 812
	fsw		f14, 0(x5)	# 812
	fmul	f4, f6, f4	# 813
	fmul	f6, f4, f11	# 813
	fmul	f9, f9, f12	# 813
	fmul	f1, f9, f1	# 813
	fadd	f1, f6, f1	# 813
	fmul	f3, f10, f3	# 813
	fmul	f2, f3, f2	# 813
	fadd	f1, f1, f2	# 813
	fmul	f1, f13, f1	# 813
	fsw		f1, 0(x7)	# 813
	fmul	f1, f4, f8	# 814
	fmul	f2, f9, f7	# 814
	fadd	f1, f1, f2	# 814
	fmul	f2, f3, f5	# 814
	fadd	f1, f1, f2	# 814
	fmul	f1, f13, f1	# 814
	lw		x4, -88(x2)	# 814
	fsw		f1, 0(x4)	# 814
	jal		x0, beq_cont.32334	# 891
beq_cont.32334:
	addi	x4, x0, 1	# 895
	jal		x0, beq_cont.32300	# 822
beq.32301:
	addi	x4, x0, 0	# 898
beq_cont.32300:
	beq		x4, x11, beq.32336	# 904
	lw		x4, -4(x2)	# 905
	add		x4, x4, x12	# 905
	lw		x29, 0(x2)	# 905
	lw		x31, 0(x29)	# 905
	jalr	x0, x31, 0	# 905
beq.32336:
	mul		x4, x30, x11	# 907
	addi	x4, x4, 63796	# 907
	lw		x5, -4(x2)	# 907
	sw		x5, 0(x4)	# 907
	jalr	x0, x1, 0	# 907
ble.32299:
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
	beq		x4, x5, beq.32339	# 920
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
beq.32339:
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
	beq		x4, x6, beq.32340	# 928
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
beq.32340:
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
	beq		x5, x6, beq.32341	# 937
	lw		x5, -4(x2)	# 939
	mul		x6, x30, x5	# 939
	addi	x6, x6, 64128	# 939
	sw		x4, 0(x6)	# 939
	add		x4, x5, x8	# 940
	lw		x29, 0(x2)	# 940
	lw		x31, 0(x29)	# 940
	jalr	x0, x31, 0	# 940
beq.32341:
	jalr	x0, x1, 0	# 937
iter_setup_dirvec_constants.2758.17905:
	lw		x6, 24(x29)	# 1312
	lw		x7, 20(x29)	# 1312
	lw		x8, 16(x29)	# 1312
	lw		x9, 12(x29)	# 1312
	lw		x10, 8(x29)	# 1312
	flw		f1, 4(x29)	# 1312
	ble		x9, x5, ble.32343	# 1312
	jalr	x0, x1, 0	# 1325
ble.32343:
	mul		x11, x30, x5	# 1313
	addi	x12, x11, 63844	# 1313
	lw		x12, 0(x12)	# 1313
	lw		x13, 4(x4)	# 687
	lw		x14, 0(x4)	# 681
	lw		x15, 4(x12)	# 395
	sw		x4, 0(x2)	# 1317
	sw		x29, -4(x2)	# 1317
	sw		x5, -8(x2)	# 1317
	beq		x15, x10, beq.32346	# 1317
	beq		x15, x7, beq.32348	# 1319
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
	mul		x15, x30, x10	# 1285
	add		x16, x14, x15	# 1285
	flw		f2, 0(x16)	# 1285
	mul		x7, x30, x7	# 1285
	add		x14, x14, x7	# 1285
	flw		f3, 0(x14)	# 1285
	fmul	f4, f1, f1	# 127
	lw		x17, 16(x12)	# 433
	add		x18, x17, x5	# 438
	flw		f5, 0(x18)	# 438
	fmul	f4, f4, f5	# 1009
	fmul	f6, f2, f2	# 127
	add		x18, x17, x15	# 448
	flw		f7, 0(x18)	# 448
	fmul	f6, f6, f7	# 1009
	fadd	f4, f4, f6	# 1009
	fmul	f6, f3, f3	# 127
	add		x17, x17, x7	# 458
	flw		f8, 0(x17)	# 458
	fmul	f6, f6, f8	# 1009
	fadd	f4, f4, f6	# 1009
	lw		x17, 12(x12)	# 424
	beq		x17, x9, beq_cont.32349	# 1011
	fmul	f6, f2, f3	# 1015
	lw		x17, 36(x12)	# 553
	add		x18, x17, x5	# 558
	flw		f9, 0(x18)	# 558
	fmul	f6, f6, f9	# 1015
	fadd	f4, f4, f6	# 1014
	fmul	f6, f3, f1	# 1016
	add		x18, x17, x15	# 568
	flw		f9, 0(x18)	# 568
	fmul	f6, f6, f9	# 1016
	fadd	f4, f4, f6	# 1014
	fmul	f6, f1, f2	# 1017
	add		x17, x17, x7	# 578
	flw		f9, 0(x17)	# 578
	fmul	f6, f6, f9	# 1017
	fadd	f4, f4, f6	# 1014
	jal		x0, beq_cont.32349	# 1011
beq_cont.32349:
	fmul	f1, f1, f5	# 1286
	fsub	f1, f0, f1	# 123
	fmul	f2, f2, f7	# 1287
	fsub	f2, f0, f2	# 123
	fmul	f3, f3, f8	# 1288
	fsub	f3, f0, f3	# 123
	add		x17, x4, x5	# 1290
	fsw		f4, 0(x17)	# 1290
	lw		x17, 12(x12)	# 424
	beq		x17, x9, beq.32352	# 1294
	flw		f5, 0(x14)	# 1295
	lw		x9, 36(x12)	# 563
	add		x17, x9, x15	# 568
	flw		f6, 0(x17)	# 568
	fmul	f5, f5, f6	# 1295
	flw		f7, 0(x16)	# 1295
	add		x9, x9, x7	# 578
	flw		f8, 0(x9)	# 578
	fmul	f7, f7, f8	# 1295
	fadd	f5, f5, f7	# 1295
	fmul	f5, f5, f26	# 126
	fsub	f1, f1, f5	# 1295
	add		x9, x4, x15	# 1295
	fsw		f1, 0(x9)	# 1295
	flw		f1, 0(x14)	# 1296
	lw		x9, 36(x12)	# 553
	add		x5, x9, x5	# 558
	flw		f5, 0(x5)	# 558
	fmul	f1, f1, f5	# 1296
	flw		f9, 0(x6)	# 1296
	fmul	f8, f9, f8	# 1296
	fadd	f1, f1, f8	# 1296
	fmul	f1, f1, f26	# 126
	fsub	f1, f2, f1	# 1296
	add		x5, x4, x7	# 1296
	fsw		f1, 0(x5)	# 1296
	flw		f1, 0(x16)	# 1297
	fmul	f1, f1, f5	# 1297
	flw		f2, 0(x6)	# 1297
	fmul	f2, f2, f6	# 1297
	fadd	f1, f1, f2	# 1297
	fmul	f1, f1, f26	# 126
	fsub	f1, f3, f1	# 1297
	mul		x5, x30, x8	# 1297
	add		x5, x4, x5	# 1297
	fsw		f1, 0(x5)	# 1297
	jal		x0, beq_cont.32351	# 1294
beq.32352:
	add		x5, x4, x15	# 1299
	fsw		f1, 0(x5)	# 1299
	add		x5, x4, x7	# 1300
	fsw		f2, 0(x5)	# 1300
	mul		x5, x30, x8	# 1301
	add		x5, x4, x5	# 1301
	fsw		f3, 0(x5)	# 1301
beq_cont.32351:
	flw		f1, -12(x2)	# 120
	feq		f4, f1, feq_cont.32353	# 120
	addi	x5, x0, 4	# 1304
	fdiv	f1, f30, f4	# 1304
	mul		x5, x30, x5	# 1304
	add		x5, x4, x5	# 1304
	fsw		f1, 0(x5)	# 1304
	jal		x0, feq_cont.32353	# 120
feq_cont.32353:
	add		x5, x13, x11	# 1322
	sw		x4, 0(x5)	# 1322
	jal		x0, beq_cont.32345	# 1319
beq.32348:
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
	fle		f1, f3, fle.32356	# 121
	fdiv	f3, f22, f1	# 1270
	add		x5, x4, x5	# 1270
	fsw		f3, 0(x5)	# 1270
	fdiv	f2, f2, f1	# 1272
	fsub	f2, f0, f2	# 123
	add		x5, x4, x9	# 1272
	fsw		f2, 0(x5)	# 1272
	fdiv	f2, f4, f1	# 1273
	fsub	f2, f0, f2	# 123
	add		x5, x4, x7	# 1273
	fsw		f2, 0(x5)	# 1273
	fdiv	f1, f5, f1	# 1274
	fsub	f1, f0, f1	# 123
	mul		x5, x30, x8	# 1274
	add		x5, x4, x5	# 1274
	fsw		f1, 0(x5)	# 1274
	jal		x0, fle_cont.32355	# 121
fle.32356:
	add		x5, x4, x5	# 1276
	fsw		f3, 0(x5)	# 1276
fle_cont.32355:
	add		x5, x13, x11	# 1320
	sw		x4, 0(x5)	# 1320
	jal		x0, beq_cont.32345	# 1317
beq.32346:
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
	feq		f1, f2, feq.32358	# 120
	lw		x16, 24(x12)	# 415
	fle		f2, f1, fle.32360	# 122
	addi	x17, x0, 1	# 122
	jal		x0, fle_cont.32359	# 122
fle.32360:
	addi	x17, x0, 0	# 122
fle_cont.32359:
	beq		x16, x9, beq.32362	# 246
	fle		f2, f1, fle.32364	# 122
	addi	x16, x0, 0	# 246
	jal		x0, beq_cont.32361	# 122
fle.32364:
	addi	x16, x0, 1	# 246
	jal		x0, beq_cont.32361	# 246
beq.32362:
	addi	x16, x17, 0	# 246
beq_cont.32361:
	lw		x17, 16(x12)	# 433
	add		x17, x17, x5	# 438
	flw		f1, 0(x17)	# 438
	beq		x16, x9, beq.32366	# 261
	jal		x0, beq_cont.32365	# 261
beq.32366:
	fsub	f1, f0, f1	# 123
beq_cont.32365:
	add		x5, x4, x5	# 1243
	fsw		f1, 0(x5)	# 1243
	flw		f3, 0(x15)	# 1245
	fdiv	f1, f30, f3	# 1245
	mul		x5, x30, x10	# 1245
	add		x5, x4, x5	# 1245
	fsw		f1, 0(x5)	# 1245
	jal		x0, feq_cont.32357	# 120
feq.32358:
	mul		x5, x30, x10	# 1240
	add		x5, x4, x5	# 1240
	fsw		f2, 0(x5)	# 1240
feq_cont.32357:
	mul		x5, x30, x10	# 1247
	add		x15, x14, x5	# 1247
	flw		f1, 0(x15)	# 1247
	feq		f1, f2, feq.32368	# 120
	lw		x16, 24(x12)	# 415
	fle		f2, f1, fle.32370	# 122
	addi	x17, x0, 1	# 122
	jal		x0, fle_cont.32369	# 122
fle.32370:
	addi	x17, x0, 0	# 122
fle_cont.32369:
	beq		x16, x9, beq.32372	# 246
	fle		f2, f1, fle.32374	# 122
	addi	x16, x0, 0	# 246
	jal		x0, beq_cont.32371	# 122
fle.32374:
	addi	x16, x0, 1	# 246
	jal		x0, beq_cont.32371	# 246
beq.32372:
	addi	x16, x17, 0	# 246
beq_cont.32371:
	lw		x17, 16(x12)	# 443
	add		x5, x17, x5	# 448
	flw		f1, 0(x5)	# 448
	beq		x16, x9, beq.32376	# 261
	jal		x0, beq_cont.32375	# 261
beq.32376:
	fsub	f1, f0, f1	# 123
beq_cont.32375:
	mul		x5, x30, x7	# 1250
	add		x5, x4, x5	# 1250
	fsw		f1, 0(x5)	# 1250
	flw		f3, 0(x15)	# 1251
	fdiv	f1, f30, f3	# 1251
	mul		x5, x30, x8	# 1251
	add		x5, x4, x5	# 1251
	fsw		f1, 0(x5)	# 1251
	jal		x0, feq_cont.32367	# 120
feq.32368:
	mul		x5, x30, x8	# 1248
	add		x5, x4, x5	# 1248
	fsw		f2, 0(x5)	# 1248
feq_cont.32367:
	mul		x5, x30, x7	# 1253
	add		x7, x14, x5	# 1253
	flw		f1, 0(x7)	# 1253
	feq		f1, f2, feq.32378	# 120
	addi	x8, x0, 4	# 1256
	lw		x14, 24(x12)	# 415
	fle		f2, f1, fle.32380	# 122
	addi	x15, x0, 1	# 122
	jal		x0, fle_cont.32379	# 122
fle.32380:
	addi	x15, x0, 0	# 122
fle_cont.32379:
	beq		x14, x9, beq.32382	# 246
	fle		f2, f1, fle.32384	# 122
	addi	x14, x0, 0	# 246
	jal		x0, beq_cont.32381	# 122
fle.32384:
	addi	x14, x0, 1	# 246
	jal		x0, beq_cont.32381	# 246
beq.32382:
	addi	x14, x15, 0	# 246
beq_cont.32381:
	lw		x12, 16(x12)	# 453
	add		x5, x12, x5	# 458
	flw		f1, 0(x5)	# 458
	beq		x14, x9, beq.32386	# 261
	jal		x0, beq_cont.32385	# 261
beq.32386:
	fsub	f1, f0, f1	# 123
beq_cont.32385:
	mul		x5, x30, x8	# 1256
	add		x5, x4, x5	# 1256
	fsw		f1, 0(x5)	# 1256
	flw		f2, 0(x7)	# 1257
	fdiv	f1, f30, f2	# 1257
	mul		x5, x30, x6	# 1257
	add		x5, x4, x5	# 1257
	fsw		f1, 0(x5)	# 1257
	jal		x0, feq_cont.32377	# 120
feq.32378:
	mul		x5, x30, x6	# 1254
	add		x5, x4, x5	# 1254
	fsw		f2, 0(x5)	# 1254
feq_cont.32377:
	add		x5, x13, x11	# 1318
	sw		x4, 0(x5)	# 1318
beq_cont.32345:
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
	ble		x8, x5, ble.32387	# 1337
	jalr	x0, x1, 0	# 1352
ble.32387:
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
	mul		x15, x30, x9	# 1342
	add		x16, x4, x15	# 1342
	flw		f1, 0(x16)	# 1342
	lw		x16, 20(x10)	# 483
	add		x16, x16, x15	# 488
	flw		f2, 0(x16)	# 488
	fsub	f1, f1, f2	# 1342
	add		x16, x11, x15	# 1342
	fsw		f1, 0(x16)	# 1342
	mul		x17, x30, x6	# 1343
	add		x18, x4, x17	# 1343
	flw		f1, 0(x18)	# 1343
	lw		x18, 20(x10)	# 493
	add		x18, x18, x17	# 498
	flw		f2, 0(x18)	# 498
	fsub	f1, f1, f2	# 1343
	add		x18, x11, x17	# 1343
	fsw		f1, 0(x18)	# 1343
	beq		x12, x6, beq.32390	# 1344
	ble		x12, x6, beq_cont.32389	# 1347
	flw		f1, 0(x14)	# 1348
	flw		f2, 0(x16)	# 1348
	flw		f3, 0(x18)	# 1348
	fmul	f4, f1, f1	# 127
	lw		x6, 16(x10)	# 433
	add		x14, x6, x13	# 438
	flw		f5, 0(x14)	# 438
	fmul	f4, f4, f5	# 1009
	fmul	f5, f2, f2	# 127
	add		x14, x6, x15	# 448
	flw		f6, 0(x14)	# 448
	fmul	f5, f5, f6	# 1009
	fadd	f4, f4, f5	# 1009
	fmul	f5, f3, f3	# 127
	add		x6, x6, x17	# 458
	flw		f6, 0(x6)	# 458
	fmul	f5, f5, f6	# 1009
	fadd	f4, f4, f5	# 1009
	lw		x6, 12(x10)	# 424
	beq		x6, x8, beq.32394	# 1011
	fmul	f5, f2, f3	# 1015
	lw		x6, 36(x10)	# 553
	add		x8, x6, x13	# 558
	flw		f6, 0(x8)	# 558
	fmul	f5, f5, f6	# 1015
	fadd	f4, f4, f5	# 1014
	fmul	f3, f3, f1	# 1016
	add		x8, x6, x15	# 568
	flw		f5, 0(x8)	# 568
	fmul	f3, f3, f5	# 1016
	fadd	f3, f4, f3	# 1014
	fmul	f1, f1, f2	# 1017
	add		x6, x6, x17	# 578
	flw		f2, 0(x6)	# 578
	fmul	f1, f1, f2	# 1017
	fadd	f1, f3, f1	# 1014
	jal		x0, beq_cont.32393	# 1011
beq.32394:
	fadd	f1, f0, f4	# 1012
beq_cont.32393:
	beq		x12, x7, beq.32396	# 1349
	jal		x0, beq_cont.32395	# 1349
beq.32396:
	fsub	f1, f1, f30	# 1349
beq_cont.32395:
	mul		x6, x30, x7	# 1349
	add		x6, x11, x6	# 1349
	fsw		f1, 0(x6)	# 1349
	jal		x0, beq_cont.32389	# 1347
	jal		x0, beq_cont.32389	# 1344
beq.32390:
	lw		x6, 16(x10)	# 463
	flw		f1, 0(x14)	# 1346
	flw		f2, 0(x16)	# 1346
	flw		f3, 0(x18)	# 1346
	add		x8, x6, x13	# 339
	flw		f4, 0(x8)	# 339
	fmul	f1, f4, f1	# 339
	add		x8, x6, x15	# 339
	flw		f4, 0(x8)	# 339
	fmul	f2, f4, f2	# 339
	fadd	f1, f1, f2	# 339
	add		x6, x6, x17	# 339
	flw		f2, 0(x6)	# 339
	fmul	f2, f2, f3	# 339
	fadd	f1, f1, f2	# 339
	mul		x6, x30, x7	# 1345
	add		x6, x11, x6	# 1345
	fsw		f1, 0(x6)	# 1345
beq_cont.32389:
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
	beq		x11, x7, beq.32397	# 1407
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
	beq		x11, x10, beq.32399	# 1396
	beq		x11, x6, beq.32401	# 1398
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
	beq		x6, x9, beq.32403	# 1011
	fmul	f9, f6, f7	# 1015
	lw		x6, 36(x7)	# 553
	add		x12, x6, x12	# 558
	flw		f10, 0(x12)	# 558
	fmul	f9, f9, f10	# 1015
	fadd	f8, f8, f9	# 1014
	fmul	f7, f7, f5	# 1016
	add		x12, x6, x13	# 568
	flw		f9, 0(x12)	# 568
	fmul	f7, f7, f9	# 1016
	fadd	f7, f8, f7	# 1014
	fmul	f5, f5, f6	# 1017
	add		x6, x6, x14	# 578
	flw		f6, 0(x6)	# 578
	fmul	f5, f5, f6	# 1017
	fadd	f5, f7, f5	# 1014
	jal		x0, beq_cont.32402	# 1011
beq.32403:
	fadd	f5, f0, f8	# 1012
beq_cont.32402:
	beq		x11, x8, beq.32405	# 1386
	jal		x0, beq_cont.32404	# 1386
beq.32405:
	fsub	f5, f5, f30	# 1386
beq_cont.32404:
	lw		x6, 24(x7)	# 415
	fle		f4, f5, fle.32407	# 122
	addi	x7, x0, 1	# 122
	jal		x0, fle_cont.32406	# 122
fle.32407:
	addi	x7, x0, 0	# 122
fle_cont.32406:
	beq		x6, x9, beq.32409	# 246
	fle		f4, f5, fle.32411	# 122
	addi	x6, x0, 0	# 246
	jal		x0, beq_cont.32408	# 122
fle.32411:
	addi	x6, x0, 1	# 246
	jal		x0, beq_cont.32408	# 246
beq.32409:
	addi	x6, x7, 0	# 246
beq_cont.32408:
	beq		x6, x9, beq.32413	# 1387
	addi	x6, x0, 0	# 1387
	jal		x0, beq_cont.32398	# 1387
beq.32413:
	addi	x6, x0, 1	# 1387
	jal		x0, beq_cont.32398	# 1398
beq.32401:
	lw		x6, 16(x7)	# 463
	add		x8, x6, x12	# 339
	flw		f8, 0(x8)	# 339
	fmul	f5, f8, f5	# 339
	add		x8, x6, x13	# 339
	flw		f8, 0(x8)	# 339
	fmul	f6, f8, f6	# 339
	fadd	f5, f5, f6	# 339
	add		x6, x6, x14	# 339
	flw		f6, 0(x6)	# 339
	fmul	f6, f6, f7	# 339
	fadd	f5, f5, f6	# 339
	lw		x6, 24(x7)	# 415
	fle		f4, f5, fle.32415	# 122
	addi	x7, x0, 1	# 122
	jal		x0, fle_cont.32414	# 122
fle.32415:
	addi	x7, x0, 0	# 122
fle_cont.32414:
	beq		x6, x9, beq.32417	# 246
	fle		f4, f5, fle.32419	# 122
	addi	x6, x0, 0	# 246
	jal		x0, beq_cont.32416	# 122
fle.32419:
	addi	x6, x0, 1	# 246
	jal		x0, beq_cont.32416	# 246
beq.32417:
	addi	x6, x7, 0	# 246
beq_cont.32416:
	beq		x6, x9, beq.32421	# 1380
	addi	x6, x0, 0	# 1380
	jal		x0, beq_cont.32398	# 1380
beq.32421:
	addi	x6, x0, 1	# 1380
	jal		x0, beq_cont.32398	# 1396
beq.32399:
	fle		f5, f4, fle.32423	# 124
	jal		x0, fle_cont.32422	# 124
fle.32423:
	fsub	f5, f0, f5	# 124
fle_cont.32422:
	lw		x6, 16(x7)	# 433
	add		x8, x6, x12	# 438
	flw		f8, 0(x8)	# 438
	fle		f8, f5, fle.32425	# 125
	fle		f6, f4, fle.32427	# 124
	fadd	f5, f0, f6	# 124
	jal		x0, fle_cont.32426	# 124
fle.32427:
	fsub	f5, f0, f6	# 124
fle_cont.32426:
	add		x8, x6, x13	# 448
	flw		f6, 0(x8)	# 448
	fle		f6, f5, fle.32429	# 125
	fle		f7, f4, fle.32431	# 124
	fadd	f4, f0, f7	# 124
	jal		x0, fle_cont.32430	# 124
fle.32431:
	fsub	f4, f0, f7	# 124
fle_cont.32430:
	add		x6, x6, x14	# 458
	flw		f5, 0(x6)	# 458
	fle		f5, f4, fle.32433	# 125
	addi	x6, x0, 1	# 125
	jal		x0, fle_cont.32424	# 125
fle.32433:
	addi	x6, x0, 0	# 125
	jal		x0, fle_cont.32424	# 125
fle.32429:
	addi	x6, x0, 0	# 1372
	jal		x0, fle_cont.32424	# 125
fle.32425:
	addi	x6, x0, 0	# 1373
fle_cont.32424:
	beq		x6, x9, beq.32435	# 1368
	lw		x6, 24(x7)	# 415
	jal		x0, beq_cont.32398	# 1368
beq.32435:
	lw		x6, 24(x7)	# 415
	beq		x6, x9, beq.32437	# 1374
	addi	x6, x0, 0	# 1374
	jal		x0, beq_cont.32398	# 1374
beq.32437:
	addi	x6, x0, 1	# 1374
beq_cont.32398:
	beq		x6, x9, beq.32438	# 1410
	addi	x4, x0, 0	# 1411
	jalr	x0, x1, 0	# 1411
beq.32438:
	add		x4, x4, x10	# 1413
	lw		x31, 0(x29)	# 1413
	jalr	x0, x31, 0	# 1413
beq.32397:
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
	beq		x13, x9, beq.32439	# 1426
	mul		x9, x30, x13	# 1168
	addi	x13, x9, 63844	# 1168
	lw		x14, 0(x13)	# 1168
	mul		x15, x30, x11	# 1169
	addi	x16, x15, 64348	# 1169
	flw		f2, 0(x16)	# 1169
	lw		x17, 20(x14)	# 473
	add		x18, x17, x15	# 478
	flw		f3, 0(x18)	# 478
	fsub	f2, f2, f3	# 1169
	mul		x18, x30, x12	# 1170
	addi	x19, x18, 64348	# 1170
	flw		f3, 0(x19)	# 1170
	add		x20, x17, x18	# 488
	flw		f4, 0(x20)	# 488
	fsub	f3, f3, f4	# 1170
	mul		x20, x30, x8	# 1171
	addi	x21, x20, 64348	# 1171
	flw		f4, 0(x21)	# 1171
	add		x17, x17, x20	# 498
	flw		f5, 0(x17)	# 498
	fsub	f4, f4, f5	# 1171
	addi	x9, x9, 64544	# 1173
	lw		x9, 0(x9)	# 1173
	lw		x17, 4(x14)	# 395
	beq		x17, x12, beq.32441	# 1175
	beq		x17, x8, beq.32443	# 1177
	add		x7, x9, x15	# 1149
	flw		f5, 0(x7)	# 1149
	feq		f5, f1, feq.32445	# 120
	add		x7, x9, x18	# 1153
	flw		f6, 0(x7)	# 1153
	fmul	f6, f6, f2	# 1153
	add		x7, x9, x20	# 1153
	flw		f7, 0(x7)	# 1153
	fmul	f7, f7, f3	# 1153
	fadd	f6, f6, f7	# 1153
	mul		x7, x30, x10	# 1153
	add		x7, x9, x7	# 1153
	flw		f7, 0(x7)	# 1153
	fmul	f7, f7, f4	# 1153
	fadd	f6, f6, f7	# 1153
	fmul	f7, f2, f2	# 127
	lw		x7, 16(x14)	# 433
	add		x8, x7, x15	# 438
	flw		f8, 0(x8)	# 438
	fmul	f7, f7, f8	# 1009
	fmul	f8, f3, f3	# 127
	add		x8, x7, x18	# 448
	flw		f9, 0(x8)	# 448
	fmul	f8, f8, f9	# 1009
	fadd	f7, f7, f8	# 1009
	fmul	f8, f4, f4	# 127
	add		x7, x7, x20	# 458
	flw		f9, 0(x7)	# 458
	fmul	f8, f8, f9	# 1009
	fadd	f7, f7, f8	# 1009
	lw		x7, 12(x14)	# 424
	beq		x7, x11, beq.32447	# 1011
	fmul	f8, f3, f4	# 1015
	lw		x7, 36(x14)	# 553
	add		x8, x7, x15	# 558
	flw		f9, 0(x8)	# 558
	fmul	f8, f8, f9	# 1015
	fadd	f7, f7, f8	# 1014
	fmul	f4, f4, f2	# 1016
	add		x8, x7, x18	# 568
	flw		f8, 0(x8)	# 568
	fmul	f4, f4, f8	# 1016
	fadd	f4, f7, f4	# 1014
	fmul	f2, f2, f3	# 1017
	add		x7, x7, x20	# 578
	flw		f3, 0(x7)	# 578
	fmul	f2, f2, f3	# 1017
	fadd	f2, f4, f2	# 1014
	jal		x0, beq_cont.32446	# 1011
beq.32447:
	fadd	f2, f0, f7	# 1012
beq_cont.32446:
	beq		x17, x10, beq.32449	# 1155
	jal		x0, beq_cont.32448	# 1155
beq.32449:
	fsub	f2, f2, f30	# 1155
beq_cont.32448:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1156
	fsub	f2, f3, f2	# 1156
	fle		f2, f1, fle.32451	# 121
	lw		x7, 24(x14)	# 415
	beq		x7, x11, beq.32453	# 1158
	fsqrt	f1, f2	# 1159
	fadd	f1, f6, f1	# 1159
	addi	x7, x0, 4	# 1159
	mul		x7, x30, x7	# 1159
	add		x7, x9, x7	# 1159
	flw		f2, 0(x7)	# 1159
	fmul	f1, f1, f2	# 1159
	addi	x7, x15, 64336	# 1159
	fsw		f1, 0(x7)	# 1159
	jal		x0, beq_cont.32452	# 1158
beq.32453:
	fsqrt	f1, f2	# 1161
	fsub	f1, f6, f1	# 1161
	addi	x7, x0, 4	# 1161
	mul		x7, x30, x7	# 1161
	add		x7, x9, x7	# 1161
	flw		f2, 0(x7)	# 1161
	fmul	f1, f1, f2	# 1161
	addi	x7, x15, 64336	# 1161
	fsw		f1, 0(x7)	# 1161
beq_cont.32452:
	addi	x7, x0, 1	# 1162
	jal		x0, beq_cont.32440	# 121
fle.32451:
	addi	x7, x0, 0	# 1163
	jal		x0, beq_cont.32440	# 120
feq.32445:
	addi	x7, x0, 0	# 1151
	jal		x0, beq_cont.32440	# 1177
beq.32443:
	add		x7, x9, x15	# 1139
	flw		f5, 0(x7)	# 1139
	fle		f1, f5, fle.32455	# 122
	add		x7, x9, x18	# 1141
	flw		f1, 0(x7)	# 1141
	fmul	f1, f1, f2	# 1141
	add		x7, x9, x20	# 1141
	flw		f2, 0(x7)	# 1141
	fmul	f2, f2, f3	# 1141
	fadd	f1, f1, f2	# 1141
	mul		x7, x30, x10	# 1141
	add		x7, x9, x7	# 1141
	flw		f2, 0(x7)	# 1141
	fmul	f2, f2, f4	# 1141
	fadd	f1, f1, f2	# 1141
	addi	x7, x15, 64336	# 1140
	fsw		f1, 0(x7)	# 1140
	addi	x7, x0, 1	# 1142
	jal		x0, beq_cont.32440	# 122
fle.32455:
	addi	x7, x0, 0	# 1143
	jal		x0, beq_cont.32440	# 1175
beq.32441:
	add		x8, x9, x15	# 1106
	flw		f5, 0(x8)	# 1106
	fsub	f5, f5, f2	# 1106
	add		x8, x9, x18	# 1106
	flw		f6, 0(x8)	# 1106
	fmul	f5, f5, f6	# 1106
	addi	x8, x18, 64532	# 1108
	flw		f7, 0(x8)	# 1108
	fmul	f8, f5, f7	# 1108
	fadd	f8, f8, f3	# 1108
	fle		f8, f1, fle.32457	# 124
	jal		x0, fle_cont.32456	# 124
fle.32457:
	fsub	f8, f0, f8	# 124
fle_cont.32456:
	lw		x8, 16(x14)	# 443
	add		x14, x8, x18	# 448
	flw		f9, 0(x14)	# 448
	fle		f9, f8, fle.32459	# 125
	addi	x14, x20, 64532	# 1109
	flw		f8, 0(x14)	# 1109
	fmul	f8, f5, f8	# 1109
	fadd	f8, f8, f4	# 1109
	fle		f8, f1, fle.32461	# 124
	jal		x0, fle_cont.32460	# 124
fle.32461:
	fsub	f8, f0, f8	# 124
fle_cont.32460:
	add		x14, x8, x20	# 458
	flw		f10, 0(x14)	# 458
	fle		f10, f8, fle.32463	# 125
	feq		f6, f1, feq.32465	# 120
	addi	x14, x0, 1	# 1110
	jal		x0, fle_cont.32458	# 120
feq.32465:
	addi	x14, x0, 0	# 1110
	jal		x0, fle_cont.32458	# 125
fle.32463:
	addi	x14, x0, 0	# 1111
	jal		x0, fle_cont.32458	# 125
fle.32459:
	addi	x14, x0, 0	# 1112
fle_cont.32458:
	beq		x14, x11, beq.32467	# 1107
	addi	x7, x15, 64336	# 1114
	fsw		f5, 0(x7)	# 1114
	addi	x7, x0, 1	# 1114
	jal		x0, beq_cont.32440	# 1107
beq.32467:
	add		x14, x9, x20	# 1115
	flw		f5, 0(x14)	# 1115
	fsub	f5, f5, f3	# 1115
	mul		x10, x30, x10	# 1115
	add		x10, x9, x10	# 1115
	flw		f6, 0(x10)	# 1115
	fmul	f5, f5, f6	# 1115
	addi	x10, x15, 64532	# 1117
	flw		f8, 0(x10)	# 1117
	fmul	f10, f5, f8	# 1117
	fadd	f10, f10, f2	# 1117
	fle		f10, f1, fle.32469	# 124
	jal		x0, fle_cont.32468	# 124
fle.32469:
	fsub	f10, f0, f10	# 124
fle_cont.32468:
	add		x10, x8, x15	# 438
	flw		f11, 0(x10)	# 438
	fle		f11, f10, fle.32471	# 125
	addi	x10, x20, 64532	# 1118
	flw		f10, 0(x10)	# 1118
	fmul	f10, f5, f10	# 1118
	fadd	f10, f10, f4	# 1118
	fle		f10, f1, fle.32473	# 124
	jal		x0, fle_cont.32472	# 124
fle.32473:
	fsub	f10, f0, f10	# 124
fle_cont.32472:
	add		x8, x8, x20	# 458
	flw		f12, 0(x8)	# 458
	fle		f12, f10, fle.32475	# 125
	feq		f6, f1, feq.32477	# 120
	addi	x8, x0, 1	# 1119
	jal		x0, fle_cont.32470	# 120
feq.32477:
	addi	x8, x0, 0	# 1119
	jal		x0, fle_cont.32470	# 125
fle.32475:
	addi	x8, x0, 0	# 1120
	jal		x0, fle_cont.32470	# 125
fle.32471:
	addi	x8, x0, 0	# 1121
fle_cont.32470:
	beq		x8, x11, beq.32479	# 1116
	addi	x7, x15, 64336	# 1123
	fsw		f5, 0(x7)	# 1123
	addi	x7, x0, 2	# 1123
	jal		x0, beq_cont.32440	# 1116
beq.32479:
	addi	x8, x0, 4	# 1124
	mul		x8, x30, x8	# 1124
	add		x8, x9, x8	# 1124
	flw		f5, 0(x8)	# 1124
	fsub	f4, f5, f4	# 1124
	mul		x7, x30, x7	# 1124
	add		x7, x9, x7	# 1124
	flw		f5, 0(x7)	# 1124
	fmul	f4, f4, f5	# 1124
	fmul	f6, f4, f8	# 1126
	fadd	f2, f6, f2	# 1126
	fle		f2, f1, fle.32481	# 124
	jal		x0, fle_cont.32480	# 124
fle.32481:
	fsub	f2, f0, f2	# 124
fle_cont.32480:
	fle		f11, f2, fle.32483	# 125
	fmul	f2, f4, f7	# 1127
	fadd	f2, f2, f3	# 1127
	fle		f2, f1, fle.32485	# 124
	jal		x0, fle_cont.32484	# 124
fle.32485:
	fsub	f2, f0, f2	# 124
fle_cont.32484:
	fle		f9, f2, fle.32487	# 125
	feq		f5, f1, feq.32489	# 120
	addi	x7, x0, 1	# 1128
	jal		x0, fle_cont.32482	# 120
feq.32489:
	addi	x7, x0, 0	# 1128
	jal		x0, fle_cont.32482	# 125
fle.32487:
	addi	x7, x0, 0	# 1129
	jal		x0, fle_cont.32482	# 125
fle.32483:
	addi	x7, x0, 0	# 1130
fle_cont.32482:
	beq		x7, x11, beq.32491	# 1125
	addi	x7, x15, 64336	# 1132
	fsw		f4, 0(x7)	# 1132
	addi	x7, x0, 3	# 1132
	jal		x0, beq_cont.32440	# 1125
beq.32491:
	addi	x7, x0, 0	# 1134
beq_cont.32440:
	addi	x8, x15, 64336	# 1431
	flw		f1, 0(x8)	# 1431
	beq		x7, x11, beq.32493	# 1432
	fle		f17, f1, fle.32495	# 125
	addi	x7, x0, 1	# 125
	jal		x0, beq_cont.32492	# 125
fle.32495:
	addi	x7, x0, 0	# 125
	jal		x0, beq_cont.32492	# 1432
beq.32493:
	addi	x7, x0, 0	# 1432
beq_cont.32492:
	beq		x7, x11, beq.32496	# 1432
	fadd	f1, f1, f16	# 1435
	addi	x7, x15, 64108	# 1436
	flw		f2, 0(x7)	# 1436
	fmul	f2, f2, f1	# 1436
	flw		f3, 0(x16)	# 1436
	fadd	f2, f2, f3	# 1436
	addi	x7, x18, 64108	# 1437
	flw		f3, 0(x7)	# 1437
	fmul	f3, f3, f1	# 1437
	flw		f4, 0(x19)	# 1437
	fadd	f3, f3, f4	# 1437
	addi	x7, x20, 64108	# 1438
	flw		f4, 0(x7)	# 1438
	fmul	f1, f4, f1	# 1438
	flw		f4, 0(x21)	# 1438
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
	beq		x4, x5, beq.32497	# 1439
	addi	x4, x0, 1	# 1440
	jalr	x0, x1, 0	# 1440
beq.32497:
	lw		x4, -12(x2)	# 1442
	lw		x5, -8(x2)	# 1442
	add		x4, x4, x5	# 1442
	lw		x5, 0(x2)	# 1442
	lw		x29, -4(x2)	# 1442
	lw		x31, 0(x29)	# 1442
	jalr	x0, x31, 0	# 1442
beq.32496:
	lw		x6, 0(x13)	# 1448
	lw		x6, 24(x6)	# 415
	beq		x6, x11, beq.32498	# 1448
	add		x4, x4, x12	# 1449
	lw		x31, 0(x29)	# 1449
	jalr	x0, x31, 0	# 1449
beq.32498:
	addi	x4, x0, 0	# 1451
	jalr	x0, x1, 0	# 1451
beq.32439:
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
	beq		x10, x7, beq.32499	# 1457
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
	beq		x4, x5, beq.32500	# 1462
	addi	x4, x0, 1	# 1463
	jalr	x0, x1, 0	# 1463
beq.32500:
	lw		x4, -12(x2)	# 1465
	lw		x5, -8(x2)	# 1465
	add		x4, x4, x5	# 1465
	lw		x5, 0(x2)	# 1465
	lw		x29, -4(x2)	# 1465
	lw		x31, 0(x29)	# 1465
	jalr	x0, x31, 0	# 1465
beq.32499:
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
	beq		x15, x9, beq.32501	# 1473
	addi	x9, x0, 99	# 1477
	sw		x13, 0(x2)	# 1477
	sw		x6, -4(x2)	# 1477
	sw		x5, -8(x2)	# 1477
	sw		x29, -12(x2)	# 1477
	sw		x12, -16(x2)	# 1477
	sw		x4, -20(x2)	# 1477
	sw		x11, -24(x2)	# 1477
	beq		x15, x9, beq.32503	# 1477
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
	beq		x16, x12, beq.32505	# 1175
	beq		x16, x8, beq.32507	# 1177
	add		x7, x9, x14	# 1149
	flw		f5, 0(x7)	# 1149
	feq		f5, f1, feq.32509	# 120
	add		x7, x9, x17	# 1153
	flw		f6, 0(x7)	# 1153
	fmul	f6, f6, f2	# 1153
	add		x7, x9, x18	# 1153
	flw		f7, 0(x7)	# 1153
	fmul	f7, f7, f3	# 1153
	fadd	f6, f6, f7	# 1153
	mul		x7, x30, x10	# 1153
	add		x7, x9, x7	# 1153
	flw		f7, 0(x7)	# 1153
	fmul	f7, f7, f4	# 1153
	fadd	f6, f6, f7	# 1153
	fmul	f7, f2, f2	# 127
	lw		x7, 16(x15)	# 433
	add		x8, x7, x14	# 438
	flw		f8, 0(x8)	# 438
	fmul	f7, f7, f8	# 1009
	fmul	f8, f3, f3	# 127
	add		x8, x7, x17	# 448
	flw		f9, 0(x8)	# 448
	fmul	f8, f8, f9	# 1009
	fadd	f7, f7, f8	# 1009
	fmul	f8, f4, f4	# 127
	add		x7, x7, x18	# 458
	flw		f9, 0(x7)	# 458
	fmul	f8, f8, f9	# 1009
	fadd	f7, f7, f8	# 1009
	lw		x7, 12(x15)	# 424
	beq		x7, x11, beq.32511	# 1011
	fmul	f8, f3, f4	# 1015
	lw		x7, 36(x15)	# 553
	add		x8, x7, x14	# 558
	flw		f9, 0(x8)	# 558
	fmul	f8, f8, f9	# 1015
	fadd	f7, f7, f8	# 1014
	fmul	f4, f4, f2	# 1016
	add		x8, x7, x17	# 568
	flw		f8, 0(x8)	# 568
	fmul	f4, f4, f8	# 1016
	fadd	f4, f7, f4	# 1014
	fmul	f2, f2, f3	# 1017
	add		x7, x7, x18	# 578
	flw		f3, 0(x7)	# 578
	fmul	f2, f2, f3	# 1017
	fadd	f2, f4, f2	# 1014
	jal		x0, beq_cont.32510	# 1011
beq.32511:
	fadd	f2, f0, f7	# 1012
beq_cont.32510:
	beq		x16, x10, beq.32513	# 1155
	jal		x0, beq_cont.32512	# 1155
beq.32513:
	fsub	f2, f2, f30	# 1155
beq_cont.32512:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1156
	fsub	f2, f3, f2	# 1156
	fle		f2, f1, fle.32515	# 121
	lw		x7, 24(x15)	# 415
	beq		x7, x11, beq.32517	# 1158
	fsqrt	f1, f2	# 1159
	fadd	f1, f6, f1	# 1159
	addi	x7, x0, 4	# 1159
	mul		x7, x30, x7	# 1159
	add		x7, x9, x7	# 1159
	flw		f2, 0(x7)	# 1159
	fmul	f1, f1, f2	# 1159
	addi	x7, x14, 64336	# 1159
	fsw		f1, 0(x7)	# 1159
	jal		x0, beq_cont.32516	# 1158
beq.32517:
	fsqrt	f1, f2	# 1161
	fsub	f1, f6, f1	# 1161
	addi	x7, x0, 4	# 1161
	mul		x7, x30, x7	# 1161
	add		x7, x9, x7	# 1161
	flw		f2, 0(x7)	# 1161
	fmul	f1, f1, f2	# 1161
	addi	x7, x14, 64336	# 1161
	fsw		f1, 0(x7)	# 1161
beq_cont.32516:
	addi	x7, x0, 1	# 1162
	jal		x0, beq_cont.32504	# 121
fle.32515:
	addi	x7, x0, 0	# 1163
	jal		x0, beq_cont.32504	# 120
feq.32509:
	addi	x7, x0, 0	# 1151
	jal		x0, beq_cont.32504	# 1177
beq.32507:
	add		x7, x9, x14	# 1139
	flw		f5, 0(x7)	# 1139
	fle		f1, f5, fle.32519	# 122
	add		x7, x9, x17	# 1141
	flw		f1, 0(x7)	# 1141
	fmul	f1, f1, f2	# 1141
	add		x7, x9, x18	# 1141
	flw		f2, 0(x7)	# 1141
	fmul	f2, f2, f3	# 1141
	fadd	f1, f1, f2	# 1141
	mul		x7, x30, x10	# 1141
	add		x7, x9, x7	# 1141
	flw		f2, 0(x7)	# 1141
	fmul	f2, f2, f4	# 1141
	fadd	f1, f1, f2	# 1141
	addi	x7, x14, 64336	# 1140
	fsw		f1, 0(x7)	# 1140
	addi	x7, x0, 1	# 1142
	jal		x0, beq_cont.32504	# 122
fle.32519:
	addi	x7, x0, 0	# 1143
	jal		x0, beq_cont.32504	# 1175
beq.32505:
	add		x8, x9, x14	# 1106
	flw		f5, 0(x8)	# 1106
	fsub	f5, f5, f2	# 1106
	add		x8, x9, x17	# 1106
	flw		f6, 0(x8)	# 1106
	fmul	f5, f5, f6	# 1106
	addi	x8, x17, 64532	# 1108
	flw		f7, 0(x8)	# 1108
	fmul	f8, f5, f7	# 1108
	fadd	f8, f8, f3	# 1108
	fle		f8, f1, fle.32521	# 124
	jal		x0, fle_cont.32520	# 124
fle.32521:
	fsub	f8, f0, f8	# 124
fle_cont.32520:
	lw		x8, 16(x15)	# 443
	add		x15, x8, x17	# 448
	flw		f9, 0(x15)	# 448
	fle		f9, f8, fle.32523	# 125
	addi	x15, x18, 64532	# 1109
	flw		f8, 0(x15)	# 1109
	fmul	f8, f5, f8	# 1109
	fadd	f8, f8, f4	# 1109
	fle		f8, f1, fle.32525	# 124
	jal		x0, fle_cont.32524	# 124
fle.32525:
	fsub	f8, f0, f8	# 124
fle_cont.32524:
	add		x15, x8, x18	# 458
	flw		f10, 0(x15)	# 458
	fle		f10, f8, fle.32527	# 125
	feq		f6, f1, feq.32529	# 120
	addi	x15, x0, 1	# 1110
	jal		x0, fle_cont.32522	# 120
feq.32529:
	addi	x15, x0, 0	# 1110
	jal		x0, fle_cont.32522	# 125
fle.32527:
	addi	x15, x0, 0	# 1111
	jal		x0, fle_cont.32522	# 125
fle.32523:
	addi	x15, x0, 0	# 1112
fle_cont.32522:
	beq		x15, x11, beq.32531	# 1107
	addi	x7, x14, 64336	# 1114
	fsw		f5, 0(x7)	# 1114
	addi	x7, x0, 1	# 1114
	jal		x0, beq_cont.32504	# 1107
beq.32531:
	add		x15, x9, x18	# 1115
	flw		f5, 0(x15)	# 1115
	fsub	f5, f5, f3	# 1115
	mul		x10, x30, x10	# 1115
	add		x10, x9, x10	# 1115
	flw		f6, 0(x10)	# 1115
	fmul	f5, f5, f6	# 1115
	addi	x10, x14, 64532	# 1117
	flw		f8, 0(x10)	# 1117
	fmul	f10, f5, f8	# 1117
	fadd	f10, f10, f2	# 1117
	fle		f10, f1, fle.32533	# 124
	jal		x0, fle_cont.32532	# 124
fle.32533:
	fsub	f10, f0, f10	# 124
fle_cont.32532:
	add		x10, x8, x14	# 438
	flw		f11, 0(x10)	# 438
	fle		f11, f10, fle.32535	# 125
	addi	x10, x18, 64532	# 1118
	flw		f10, 0(x10)	# 1118
	fmul	f10, f5, f10	# 1118
	fadd	f10, f10, f4	# 1118
	fle		f10, f1, fle.32537	# 124
	jal		x0, fle_cont.32536	# 124
fle.32537:
	fsub	f10, f0, f10	# 124
fle_cont.32536:
	add		x8, x8, x18	# 458
	flw		f12, 0(x8)	# 458
	fle		f12, f10, fle.32539	# 125
	feq		f6, f1, feq.32541	# 120
	addi	x8, x0, 1	# 1119
	jal		x0, fle_cont.32534	# 120
feq.32541:
	addi	x8, x0, 0	# 1119
	jal		x0, fle_cont.32534	# 125
fle.32539:
	addi	x8, x0, 0	# 1120
	jal		x0, fle_cont.32534	# 125
fle.32535:
	addi	x8, x0, 0	# 1121
fle_cont.32534:
	beq		x8, x11, beq.32543	# 1116
	addi	x7, x14, 64336	# 1123
	fsw		f5, 0(x7)	# 1123
	addi	x7, x0, 2	# 1123
	jal		x0, beq_cont.32504	# 1116
beq.32543:
	addi	x8, x0, 4	# 1124
	mul		x8, x30, x8	# 1124
	add		x8, x9, x8	# 1124
	flw		f5, 0(x8)	# 1124
	fsub	f4, f5, f4	# 1124
	mul		x7, x30, x7	# 1124
	add		x7, x9, x7	# 1124
	flw		f5, 0(x7)	# 1124
	fmul	f4, f4, f5	# 1124
	fmul	f6, f4, f8	# 1126
	fadd	f2, f6, f2	# 1126
	fle		f2, f1, fle.32545	# 124
	jal		x0, fle_cont.32544	# 124
fle.32545:
	fsub	f2, f0, f2	# 124
fle_cont.32544:
	fle		f11, f2, fle.32547	# 125
	fmul	f2, f4, f7	# 1127
	fadd	f2, f2, f3	# 1127
	fle		f2, f1, fle.32549	# 124
	jal		x0, fle_cont.32548	# 124
fle.32549:
	fsub	f2, f0, f2	# 124
fle_cont.32548:
	fle		f9, f2, fle.32551	# 125
	feq		f5, f1, feq.32553	# 120
	addi	x7, x0, 1	# 1128
	jal		x0, fle_cont.32546	# 120
feq.32553:
	addi	x7, x0, 0	# 1128
	jal		x0, fle_cont.32546	# 125
fle.32551:
	addi	x7, x0, 0	# 1129
	jal		x0, fle_cont.32546	# 125
fle.32547:
	addi	x7, x0, 0	# 1130
fle_cont.32546:
	beq		x7, x11, beq.32555	# 1125
	addi	x7, x14, 64336	# 1132
	fsw		f4, 0(x7)	# 1132
	addi	x7, x0, 3	# 1132
	jal		x0, beq_cont.32504	# 1125
beq.32555:
	addi	x7, x0, 0	# 1134
beq_cont.32504:
	beq		x7, x11, beq.32557	# 1483
	addi	x7, x14, 64336	# 1484
	flw		f1, 0(x7)	# 1484
	fle		f18, f1, fle.32559	# 125
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
	beq		x4, x5, beq.32561	# 1485
	addi	x4, x0, 1	# 1486
	jal		x0, beq_cont.32502	# 1485
beq.32561:
	addi	x4, x0, 0	# 1487
	jal		x0, beq_cont.32502	# 125
fle.32559:
	addi	x4, x0, 0	# 1488
	jal		x0, beq_cont.32502	# 1483
beq.32557:
	addi	x4, x0, 0	# 1489
	jal		x0, beq_cont.32502	# 1477
beq.32503:
	addi	x4, x0, 1	# 1478
beq_cont.32502:
	lw		x5, -24(x2)	# 1476
	beq		x4, x5, beq.32562	# 1476
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
	beq		x4, x5, beq.32563	# 1491
	addi	x4, x0, 1	# 1492
	jalr	x0, x1, 0	# 1492
beq.32563:
	lw		x4, -20(x2)	# 1494
	lw		x5, -16(x2)	# 1494
	add		x4, x4, x5	# 1494
	lw		x5, -8(x2)	# 1494
	lw		x29, -12(x2)	# 1494
	lw		x31, 0(x29)	# 1494
	jalr	x0, x31, 0	# 1494
beq.32562:
	lw		x4, -20(x2)	# 1496
	lw		x5, -16(x2)	# 1496
	add		x4, x4, x5	# 1496
	lw		x5, -8(x2)	# 1496
	lw		x29, -12(x2)	# 1496
	lw		x31, 0(x29)	# 1496
	jalr	x0, x31, 0	# 1496
beq.32501:
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
	beq		x13, x9, beq.32564	# 1508
	mul		x9, x30, x13	# 1074
	addi	x9, x9, 63844	# 1074
	lw		x14, 0(x9)	# 1074
	mul		x15, x30, x11	# 1076
	addi	x16, x15, 64432	# 1076
	flw		f2, 0(x16)	# 1076
	lw		x17, 20(x14)	# 473
	add		x18, x17, x15	# 478
	flw		f3, 0(x18)	# 478
	fsub	f2, f2, f3	# 1076
	mul		x18, x30, x12	# 1077
	addi	x19, x18, 64432	# 1077
	flw		f3, 0(x19)	# 1077
	add		x20, x17, x18	# 488
	flw		f4, 0(x20)	# 488
	fsub	f3, f3, f4	# 1077
	mul		x20, x30, x8	# 1078
	addi	x21, x20, 64432	# 1078
	flw		f4, 0(x21)	# 1078
	add		x17, x17, x20	# 498
	flw		f5, 0(x17)	# 498
	fsub	f4, f4, f5	# 1078
	lw		x17, 4(x14)	# 395
	beq		x17, x12, beq.32566	# 1081
	beq		x17, x8, beq.32568	# 1082
	add		x8, x6, x15	# 1048
	flw		f5, 0(x8)	# 1048
	add		x8, x6, x18	# 1048
	flw		f6, 0(x8)	# 1048
	add		x8, x6, x20	# 1048
	flw		f7, 0(x8)	# 1048
	fmul	f8, f5, f5	# 127
	lw		x8, 16(x14)	# 433
	add		x22, x8, x15	# 438
	flw		f9, 0(x22)	# 438
	fmul	f8, f8, f9	# 1009
	fmul	f10, f6, f6	# 127
	add		x22, x8, x18	# 448
	flw		f11, 0(x22)	# 448
	fmul	f10, f10, f11	# 1009
	fadd	f8, f8, f10	# 1009
	fmul	f10, f7, f7	# 127
	add		x8, x8, x20	# 458
	flw		f12, 0(x8)	# 458
	fmul	f10, f10, f12	# 1009
	fadd	f8, f8, f10	# 1009
	lw		x8, 12(x14)	# 424
	beq		x8, x11, beq_cont.32569	# 1011
	fmul	f10, f6, f7	# 1015
	lw		x22, 36(x14)	# 553
	add		x23, x22, x15	# 558
	flw		f13, 0(x23)	# 558
	fmul	f10, f10, f13	# 1015
	fadd	f8, f8, f10	# 1014
	fmul	f10, f7, f5	# 1016
	add		x23, x22, x18	# 568
	flw		f13, 0(x23)	# 568
	fmul	f10, f10, f13	# 1016
	fadd	f8, f8, f10	# 1014
	fmul	f10, f5, f6	# 1017
	add		x22, x22, x20	# 578
	flw		f13, 0(x22)	# 578
	fmul	f10, f10, f13	# 1017
	fadd	f8, f8, f10	# 1014
	jal		x0, beq_cont.32569	# 1011
beq_cont.32569:
	feq		f8, f1, feq.32572	# 120
	fmul	f10, f5, f2	# 1023
	fmul	f10, f10, f9	# 1023
	fmul	f13, f6, f3	# 1024
	fmul	f13, f13, f11	# 1024
	fadd	f10, f10, f13	# 1023
	fmul	f13, f7, f4	# 1025
	fmul	f13, f13, f12	# 1025
	fadd	f10, f10, f13	# 1023
	beq		x8, x11, beq.32574	# 1027
	fmul	f13, f7, f3	# 1031
	fmul	f14, f6, f4	# 1031
	fadd	f13, f13, f14	# 1031
	lw		x22, 36(x14)	# 553
	add		x23, x22, x15	# 558
	flw		f14, 0(x23)	# 558
	fmul	f13, f13, f14	# 1031
	fmul	f14, f5, f4	# 1032
	fmul	f7, f7, f2	# 1032
	fadd	f7, f14, f7	# 1032
	add		x23, x22, x18	# 568
	flw		f14, 0(x23)	# 568
	fmul	f7, f7, f14	# 1032
	fadd	f7, f13, f7	# 1031
	fmul	f5, f5, f3	# 1033
	fmul	f6, f6, f2	# 1033
	fadd	f5, f5, f6	# 1033
	add		x22, x22, x20	# 578
	flw		f6, 0(x22)	# 578
	fmul	f5, f5, f6	# 1033
	fadd	f5, f7, f5	# 1031
	fmul	f5, f5, f26	# 126
	fadd	f5, f10, f5	# 1030
	jal		x0, beq_cont.32573	# 1027
beq.32574:
	fadd	f5, f0, f10	# 1028
beq_cont.32573:
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f9	# 1009
	fmul	f7, f3, f3	# 127
	fmul	f7, f7, f11	# 1009
	fadd	f6, f6, f7	# 1009
	fmul	f7, f4, f4	# 127
	fmul	f7, f7, f12	# 1009
	fadd	f6, f6, f7	# 1009
	beq		x8, x11, beq.32576	# 1011
	fmul	f7, f3, f4	# 1015
	lw		x8, 36(x14)	# 553
	add		x22, x8, x15	# 558
	flw		f9, 0(x22)	# 558
	fmul	f7, f7, f9	# 1015
	fadd	f6, f6, f7	# 1014
	fmul	f4, f4, f2	# 1016
	add		x22, x8, x18	# 568
	flw		f7, 0(x22)	# 568
	fmul	f4, f4, f7	# 1016
	fadd	f4, f6, f4	# 1014
	fmul	f2, f2, f3	# 1017
	add		x8, x8, x20	# 578
	flw		f3, 0(x8)	# 578
	fmul	f2, f2, f3	# 1017
	fadd	f2, f4, f2	# 1014
	jal		x0, beq_cont.32575	# 1011
beq.32576:
	fadd	f2, f0, f6	# 1012
beq_cont.32575:
	beq		x17, x10, beq.32578	# 1058
	jal		x0, beq_cont.32577	# 1058
beq.32578:
	fsub	f2, f2, f30	# 1058
beq_cont.32577:
	fmul	f3, f5, f5	# 127
	fmul	f2, f8, f2	# 1060
	fsub	f2, f3, f2	# 1060
	fle		f2, f1, fle.32580	# 121
	fsqrt	f2, f2	# 1063
	lw		x8, 24(x14)	# 415
	beq		x8, x11, beq.32582	# 1064
	jal		x0, beq_cont.32581	# 1064
beq.32582:
	fsub	f2, f0, f2	# 123
beq_cont.32581:
	fsub	f2, f2, f5	# 1065
	fdiv	f2, f2, f8	# 1065
	addi	x8, x15, 64336	# 1065
	fsw		f2, 0(x8)	# 1065
	addi	x8, x0, 1	# 1065
	jal		x0, beq_cont.32565	# 121
fle.32580:
	addi	x8, x0, 0	# 1068
	jal		x0, beq_cont.32565	# 120
feq.32572:
	addi	x8, x0, 0	# 1051
	jal		x0, beq_cont.32565	# 1082
beq.32568:
	lw		x8, 16(x14)	# 463
	add		x10, x6, x15	# 334
	flw		f5, 0(x10)	# 334
	add		x10, x8, x15	# 334
	flw		f6, 0(x10)	# 334
	fmul	f5, f5, f6	# 334
	add		x10, x6, x18	# 334
	flw		f7, 0(x10)	# 334
	add		x10, x8, x18	# 334
	flw		f8, 0(x10)	# 334
	fmul	f7, f7, f8	# 334
	fadd	f5, f5, f7	# 334
	add		x10, x6, x20	# 334
	flw		f7, 0(x10)	# 334
	add		x8, x8, x20	# 334
	flw		f9, 0(x8)	# 334
	fmul	f7, f7, f9	# 334
	fadd	f5, f5, f7	# 334
	fle		f5, f1, fle.32584	# 121
	fmul	f2, f6, f2	# 339
	fmul	f3, f8, f3	# 339
	fadd	f2, f2, f3	# 339
	fmul	f3, f9, f4	# 339
	fadd	f2, f2, f3	# 339
	fsub	f2, f0, f2	# 123
	fdiv	f2, f2, f5	# 999
	addi	x8, x15, 64336	# 999
	fsw		f2, 0(x8)	# 999
	addi	x8, x0, 1	# 1000
	jal		x0, beq_cont.32565	# 121
fle.32584:
	addi	x8, x0, 0	# 1001
	jal		x0, beq_cont.32565	# 1081
beq.32566:
	add		x8, x6, x15	# 970
	flw		f5, 0(x8)	# 970
	feq		f5, f1, feq.32586	# 120
	lw		x10, 16(x14)	# 463
	lw		x17, 24(x14)	# 415
	fle		f1, f5, fle.32588	# 122
	addi	x22, x0, 1	# 122
	jal		x0, fle_cont.32587	# 122
fle.32588:
	addi	x22, x0, 0	# 122
fle_cont.32587:
	beq		x17, x11, beq.32590	# 246
	fle		f1, f5, fle.32592	# 122
	addi	x17, x0, 0	# 246
	jal		x0, beq_cont.32589	# 122
fle.32592:
	addi	x17, x0, 1	# 246
	jal		x0, beq_cont.32589	# 246
beq.32590:
	addi	x17, x22, 0	# 246
beq_cont.32589:
	add		x22, x10, x15	# 972
	flw		f6, 0(x22)	# 972
	beq		x17, x11, beq.32594	# 261
	jal		x0, beq_cont.32593	# 261
beq.32594:
	fsub	f6, f0, f6	# 123
beq_cont.32593:
	fsub	f6, f6, f2	# 974
	fdiv	f5, f6, f5	# 974
	add		x17, x6, x18	# 975
	flw		f6, 0(x17)	# 975
	fmul	f6, f5, f6	# 975
	fadd	f6, f6, f3	# 975
	fle		f6, f1, fle.32596	# 124
	jal		x0, fle_cont.32595	# 124
fle.32596:
	fsub	f6, f0, f6	# 124
fle_cont.32595:
	add		x17, x10, x18	# 975
	flw		f7, 0(x17)	# 975
	fle		f7, f6, fle.32598	# 125
	add		x17, x6, x20	# 976
	flw		f6, 0(x17)	# 976
	fmul	f6, f5, f6	# 976
	fadd	f6, f6, f4	# 976
	fle		f6, f1, fle.32600	# 124
	jal		x0, fle_cont.32599	# 124
fle.32600:
	fsub	f6, f0, f6	# 124
fle_cont.32599:
	add		x10, x10, x20	# 976
	flw		f7, 0(x10)	# 976
	fle		f7, f6, fle.32602	# 125
	addi	x10, x15, 64336	# 977
	fsw		f5, 0(x10)	# 977
	addi	x10, x0, 1	# 977
	jal		x0, feq_cont.32585	# 125
fle.32602:
	addi	x10, x0, 0	# 978
	jal		x0, feq_cont.32585	# 125
fle.32598:
	addi	x10, x0, 0	# 979
	jal		x0, feq_cont.32585	# 120
feq.32586:
	addi	x10, x0, 0	# 970
feq_cont.32585:
	beq		x10, x11, beq.32604	# 985
	addi	x8, x0, 1	# 985
	jal		x0, beq_cont.32565	# 985
beq.32604:
	add		x10, x6, x18	# 970
	flw		f5, 0(x10)	# 970
	feq		f5, f1, feq.32606	# 120
	lw		x17, 16(x14)	# 463
	lw		x22, 24(x14)	# 415
	fle		f1, f5, fle.32608	# 122
	addi	x23, x0, 1	# 122
	jal		x0, fle_cont.32607	# 122
fle.32608:
	addi	x23, x0, 0	# 122
fle_cont.32607:
	beq		x22, x11, beq.32610	# 246
	fle		f1, f5, fle.32612	# 122
	addi	x22, x0, 0	# 246
	jal		x0, beq_cont.32609	# 122
fle.32612:
	addi	x22, x0, 1	# 246
	jal		x0, beq_cont.32609	# 246
beq.32610:
	addi	x22, x23, 0	# 246
beq_cont.32609:
	add		x23, x17, x18	# 972
	flw		f6, 0(x23)	# 972
	beq		x22, x11, beq.32614	# 261
	jal		x0, beq_cont.32613	# 261
beq.32614:
	fsub	f6, f0, f6	# 123
beq_cont.32613:
	fsub	f6, f6, f3	# 974
	fdiv	f5, f6, f5	# 974
	add		x22, x6, x20	# 975
	flw		f6, 0(x22)	# 975
	fmul	f6, f5, f6	# 975
	fadd	f6, f6, f4	# 975
	fle		f6, f1, fle.32616	# 124
	jal		x0, fle_cont.32615	# 124
fle.32616:
	fsub	f6, f0, f6	# 124
fle_cont.32615:
	add		x22, x17, x20	# 975
	flw		f7, 0(x22)	# 975
	fle		f7, f6, fle.32618	# 125
	flw		f6, 0(x8)	# 976
	fmul	f6, f5, f6	# 976
	fadd	f6, f6, f2	# 976
	fle		f6, f1, fle.32620	# 124
	jal		x0, fle_cont.32619	# 124
fle.32620:
	fsub	f6, f0, f6	# 124
fle_cont.32619:
	add		x17, x17, x15	# 976
	flw		f7, 0(x17)	# 976
	fle		f7, f6, fle.32622	# 125
	addi	x17, x15, 64336	# 977
	fsw		f5, 0(x17)	# 977
	addi	x17, x0, 1	# 977
	jal		x0, feq_cont.32605	# 125
fle.32622:
	addi	x17, x0, 0	# 978
	jal		x0, feq_cont.32605	# 125
fle.32618:
	addi	x17, x0, 0	# 979
	jal		x0, feq_cont.32605	# 120
feq.32606:
	addi	x17, x0, 0	# 970
feq_cont.32605:
	beq		x17, x11, beq.32624	# 986
	addi	x8, x0, 2	# 986
	jal		x0, beq_cont.32565	# 986
beq.32624:
	add		x17, x6, x20	# 970
	flw		f5, 0(x17)	# 970
	feq		f5, f1, feq.32626	# 120
	lw		x17, 16(x14)	# 463
	lw		x14, 24(x14)	# 415
	fle		f1, f5, fle.32628	# 122
	addi	x22, x0, 1	# 122
	jal		x0, fle_cont.32627	# 122
fle.32628:
	addi	x22, x0, 0	# 122
fle_cont.32627:
	beq		x14, x11, beq.32630	# 246
	fle		f1, f5, fle.32632	# 122
	addi	x14, x0, 0	# 246
	jal		x0, beq_cont.32629	# 122
fle.32632:
	addi	x14, x0, 1	# 246
	jal		x0, beq_cont.32629	# 246
beq.32630:
	addi	x14, x22, 0	# 246
beq_cont.32629:
	add		x22, x17, x20	# 972
	flw		f6, 0(x22)	# 972
	beq		x14, x11, beq.32634	# 261
	jal		x0, beq_cont.32633	# 261
beq.32634:
	fsub	f6, f0, f6	# 123
beq_cont.32633:
	fsub	f4, f6, f4	# 974
	fdiv	f4, f4, f5	# 974
	flw		f5, 0(x8)	# 975
	fmul	f5, f4, f5	# 975
	fadd	f2, f5, f2	# 975
	fle		f2, f1, fle.32636	# 124
	jal		x0, fle_cont.32635	# 124
fle.32636:
	fsub	f2, f0, f2	# 124
fle_cont.32635:
	add		x8, x17, x15	# 975
	flw		f5, 0(x8)	# 975
	fle		f5, f2, fle.32638	# 125
	flw		f2, 0(x10)	# 976
	fmul	f2, f4, f2	# 976
	fadd	f2, f2, f3	# 976
	fle		f2, f1, fle.32640	# 124
	jal		x0, fle_cont.32639	# 124
fle.32640:
	fsub	f2, f0, f2	# 124
fle_cont.32639:
	add		x8, x17, x18	# 976
	flw		f3, 0(x8)	# 976
	fle		f3, f2, fle.32642	# 125
	addi	x8, x15, 64336	# 977
	fsw		f4, 0(x8)	# 977
	addi	x8, x0, 1	# 977
	jal		x0, feq_cont.32625	# 125
fle.32642:
	addi	x8, x0, 0	# 978
	jal		x0, feq_cont.32625	# 125
fle.32638:
	addi	x8, x0, 0	# 979
	jal		x0, feq_cont.32625	# 120
feq.32626:
	addi	x8, x0, 0	# 970
feq_cont.32625:
	beq		x8, x11, beq.32644	# 987
	addi	x8, x0, 3	# 987
	jal		x0, beq_cont.32565	# 987
beq.32644:
	addi	x8, x0, 0	# 988
beq_cont.32565:
	beq		x8, x11, beq.32645	# 1511
	addi	x9, x15, 64336	# 1515
	flw		f2, 0(x9)	# 1515
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x29, -8(x2)	# 125
	sw		x12, -12(x2)	# 125
	sw		x4, -16(x2)	# 125
	fle		f2, f1, fle_cont.32646	# 125
	addi	x9, x15, 64344	# 1518
	flw		f1, 0(x9)	# 1518
	fle		f1, f2, fle_cont.32646	# 125
	fadd	f1, f2, f16	# 1520
	add		x10, x6, x15	# 1521
	flw		f2, 0(x10)	# 1521
	fmul	f2, f2, f1	# 1521
	flw		f3, 0(x16)	# 1521
	fadd	f2, f2, f3	# 1521
	add		x10, x6, x18	# 1522
	flw		f3, 0(x10)	# 1522
	fmul	f3, f3, f1	# 1522
	flw		f4, 0(x19)	# 1522
	fadd	f3, f3, f4	# 1522
	add		x10, x6, x20	# 1523
	flw		f4, 0(x10)	# 1523
	fmul	f4, f4, f1	# 1523
	flw		f5, 0(x21)	# 1523
	fadd	f4, f4, f5	# 1523
	sw		x8, -20(x2)	# 1524
	sw		x13, -24(x2)	# 1524
	fsw		f4, -28(x2)	# 1524
	fsw		f3, -32(x2)	# 1524
	fsw		f2, -36(x2)	# 1524
	sw		x15, -40(x2)	# 1524
	sw		x9, -44(x2)	# 1524
	fsw		f1, -48(x2)	# 1524
	sw		x11, -52(x2)	# 1524
	addi	x4, x11, 0	# 1524
	addi	x29, x7, 0	# 1524
	fadd	f1, f0, f2	# 1524
	fadd	f2, f0, f3	# 1524
	fadd	f3, f0, f4	# 1524
	sw		x1, -56(x2)	# 1524
	addi	x2, x2, -60	# 1524
	lw		x31, 0(x29)	# 1524
	jalr	x1, x31, 0	# 1524
	addi	x2, x2, 60	# 1524
	lw		x1, -56(x2)	# 1524
	lw		x5, -52(x2)	# 1524
	beq		x4, x5, fle_cont.32646	# 1524
	flw		f1, -48(x2)	# 1526
	lw		x4, -44(x2)	# 1526
	fsw		f1, 0(x4)	# 1526
	lw		x4, -40(x2)	# 282
	addi	x5, x4, 64348	# 282
	flw		f1, -36(x2)	# 282
	fsw		f1, 0(x5)	# 282
	addi	x5, x18, 64348	# 283
	flw		f1, -32(x2)	# 283
	fsw		f1, 0(x5)	# 283
	addi	x5, x20, 64348	# 284
	flw		f1, -28(x2)	# 284
	fsw		f1, 0(x5)	# 284
	addi	x5, x4, 64360	# 1528
	lw		x6, -24(x2)	# 1528
	sw		x6, 0(x5)	# 1528
	addi	x4, x4, 64340	# 1529
	lw		x5, -20(x2)	# 1529
	sw		x5, 0(x4)	# 1529
	jal		x0, fle_cont.32646	# 1524
	jal		x0, fle_cont.32646	# 125
	jal		x0, fle_cont.32646	# 125
fle_cont.32646:
	lw		x4, -16(x2)	# 1535
	lw		x5, -12(x2)	# 1535
	add		x4, x4, x5	# 1535
	lw		x5, -4(x2)	# 1535
	lw		x6, 0(x2)	# 1535
	lw		x29, -8(x2)	# 1535
	lw		x31, 0(x29)	# 1535
	jalr	x0, x31, 0	# 1535
beq.32645:
	lw		x7, 0(x9)	# 1539
	lw		x7, 24(x7)	# 415
	beq		x7, x11, beq.32652	# 1539
	add		x4, x4, x12	# 1540
	lw		x31, 0(x29)	# 1540
	jalr	x0, x31, 0	# 1540
beq.32652:
	jalr	x0, x1, 0	# 1541
beq.32564:
	jalr	x0, x1, 0	# 1508
solve_one_or_network.2807.17930:
	lw		x7, 16(x29)	# 1548
	lw		x8, 12(x29)	# 1548
	lw		x9, 8(x29)	# 1548
	lw		x10, 4(x29)	# 1548
	mul		x11, x30, x4	# 1548
	add		x11, x5, x11	# 1548
	lw		x11, 0(x11)	# 1548
	beq		x11, x8, beq.32655	# 1549
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
beq.32655:
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
	beq		x15, x9, beq.32657	# 1560
	addi	x9, x0, 99	# 1563
	sw		x6, 0(x2)	# 1563
	sw		x5, -4(x2)	# 1563
	sw		x29, -8(x2)	# 1563
	sw		x12, -12(x2)	# 1563
	sw		x4, -16(x2)	# 1563
	beq		x15, x9, beq.32659	# 1563
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
	beq		x15, x12, beq.32661	# 1081
	beq		x15, x8, beq.32663	# 1082
	add		x8, x6, x14	# 1048
	flw		f5, 0(x8)	# 1048
	add		x8, x6, x16	# 1048
	flw		f6, 0(x8)	# 1048
	add		x8, x6, x17	# 1048
	flw		f7, 0(x8)	# 1048
	fmul	f8, f5, f5	# 127
	lw		x8, 16(x9)	# 433
	add		x18, x8, x14	# 438
	flw		f9, 0(x18)	# 438
	fmul	f8, f8, f9	# 1009
	fmul	f10, f6, f6	# 127
	add		x18, x8, x16	# 448
	flw		f11, 0(x18)	# 448
	fmul	f10, f10, f11	# 1009
	fadd	f8, f8, f10	# 1009
	fmul	f10, f7, f7	# 127
	add		x8, x8, x17	# 458
	flw		f12, 0(x8)	# 458
	fmul	f10, f10, f12	# 1009
	fadd	f8, f8, f10	# 1009
	lw		x8, 12(x9)	# 424
	beq		x8, x11, beq_cont.32664	# 1011
	fmul	f10, f6, f7	# 1015
	lw		x18, 36(x9)	# 553
	add		x19, x18, x14	# 558
	flw		f13, 0(x19)	# 558
	fmul	f10, f10, f13	# 1015
	fadd	f8, f8, f10	# 1014
	fmul	f10, f7, f5	# 1016
	add		x19, x18, x16	# 568
	flw		f13, 0(x19)	# 568
	fmul	f10, f10, f13	# 1016
	fadd	f8, f8, f10	# 1014
	fmul	f10, f5, f6	# 1017
	add		x18, x18, x17	# 578
	flw		f13, 0(x18)	# 578
	fmul	f10, f10, f13	# 1017
	fadd	f8, f8, f10	# 1014
	jal		x0, beq_cont.32664	# 1011
beq_cont.32664:
	feq		f8, f1, feq.32667	# 120
	fmul	f10, f5, f2	# 1023
	fmul	f10, f10, f9	# 1023
	fmul	f13, f6, f3	# 1024
	fmul	f13, f13, f11	# 1024
	fadd	f10, f10, f13	# 1023
	fmul	f13, f7, f4	# 1025
	fmul	f13, f13, f12	# 1025
	fadd	f10, f10, f13	# 1023
	beq		x8, x11, beq.32669	# 1027
	fmul	f13, f7, f3	# 1031
	fmul	f14, f6, f4	# 1031
	fadd	f13, f13, f14	# 1031
	lw		x18, 36(x9)	# 553
	add		x19, x18, x14	# 558
	flw		f14, 0(x19)	# 558
	fmul	f13, f13, f14	# 1031
	fmul	f14, f5, f4	# 1032
	fmul	f7, f7, f2	# 1032
	fadd	f7, f14, f7	# 1032
	add		x19, x18, x16	# 568
	flw		f14, 0(x19)	# 568
	fmul	f7, f7, f14	# 1032
	fadd	f7, f13, f7	# 1031
	fmul	f5, f5, f3	# 1033
	fmul	f6, f6, f2	# 1033
	fadd	f5, f5, f6	# 1033
	add		x18, x18, x17	# 578
	flw		f6, 0(x18)	# 578
	fmul	f5, f5, f6	# 1033
	fadd	f5, f7, f5	# 1031
	fmul	f5, f5, f26	# 126
	fadd	f5, f10, f5	# 1030
	jal		x0, beq_cont.32668	# 1027
beq.32669:
	fadd	f5, f0, f10	# 1028
beq_cont.32668:
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f9	# 1009
	fmul	f7, f3, f3	# 127
	fmul	f7, f7, f11	# 1009
	fadd	f6, f6, f7	# 1009
	fmul	f7, f4, f4	# 127
	fmul	f7, f7, f12	# 1009
	fadd	f6, f6, f7	# 1009
	beq		x8, x11, beq.32671	# 1011
	fmul	f7, f3, f4	# 1015
	lw		x8, 36(x9)	# 553
	add		x18, x8, x14	# 558
	flw		f9, 0(x18)	# 558
	fmul	f7, f7, f9	# 1015
	fadd	f6, f6, f7	# 1014
	fmul	f4, f4, f2	# 1016
	add		x16, x8, x16	# 568
	flw		f7, 0(x16)	# 568
	fmul	f4, f4, f7	# 1016
	fadd	f4, f6, f4	# 1014
	fmul	f2, f2, f3	# 1017
	add		x8, x8, x17	# 578
	flw		f3, 0(x8)	# 578
	fmul	f2, f2, f3	# 1017
	fadd	f2, f4, f2	# 1014
	jal		x0, beq_cont.32670	# 1011
beq.32671:
	fadd	f2, f0, f6	# 1012
beq_cont.32670:
	beq		x15, x10, beq.32673	# 1058
	jal		x0, beq_cont.32672	# 1058
beq.32673:
	fsub	f2, f2, f30	# 1058
beq_cont.32672:
	fmul	f3, f5, f5	# 127
	fmul	f2, f8, f2	# 1060
	fsub	f2, f3, f2	# 1060
	fle		f2, f1, fle.32675	# 121
	fsqrt	f1, f2	# 1063
	lw		x8, 24(x9)	# 415
	beq		x8, x11, beq.32677	# 1064
	jal		x0, beq_cont.32676	# 1064
beq.32677:
	fsub	f1, f0, f1	# 123
beq_cont.32676:
	fsub	f1, f1, f5	# 1065
	fdiv	f1, f1, f8	# 1065
	addi	x8, x14, 64336	# 1065
	fsw		f1, 0(x8)	# 1065
	addi	x8, x0, 1	# 1065
	jal		x0, beq_cont.32660	# 121
fle.32675:
	addi	x8, x0, 0	# 1068
	jal		x0, beq_cont.32660	# 120
feq.32667:
	addi	x8, x0, 0	# 1051
	jal		x0, beq_cont.32660	# 1082
beq.32663:
	lw		x8, 16(x9)	# 463
	add		x9, x6, x14	# 334
	flw		f5, 0(x9)	# 334
	add		x9, x8, x14	# 334
	flw		f6, 0(x9)	# 334
	fmul	f5, f5, f6	# 334
	add		x9, x6, x16	# 334
	flw		f7, 0(x9)	# 334
	add		x9, x8, x16	# 334
	flw		f8, 0(x9)	# 334
	fmul	f7, f7, f8	# 334
	fadd	f5, f5, f7	# 334
	add		x9, x6, x17	# 334
	flw		f7, 0(x9)	# 334
	add		x8, x8, x17	# 334
	flw		f9, 0(x8)	# 334
	fmul	f7, f7, f9	# 334
	fadd	f5, f5, f7	# 334
	fle		f5, f1, fle.32679	# 121
	fmul	f1, f6, f2	# 339
	fmul	f2, f8, f3	# 339
	fadd	f1, f1, f2	# 339
	fmul	f2, f9, f4	# 339
	fadd	f1, f1, f2	# 339
	fsub	f1, f0, f1	# 123
	fdiv	f1, f1, f5	# 999
	addi	x8, x14, 64336	# 999
	fsw		f1, 0(x8)	# 999
	addi	x8, x0, 1	# 1000
	jal		x0, beq_cont.32660	# 121
fle.32679:
	addi	x8, x0, 0	# 1001
	jal		x0, beq_cont.32660	# 1081
beq.32661:
	add		x8, x6, x14	# 970
	flw		f5, 0(x8)	# 970
	feq		f5, f1, feq.32681	# 120
	lw		x10, 16(x9)	# 463
	lw		x15, 24(x9)	# 415
	fle		f1, f5, fle.32683	# 122
	addi	x18, x0, 1	# 122
	jal		x0, fle_cont.32682	# 122
fle.32683:
	addi	x18, x0, 0	# 122
fle_cont.32682:
	beq		x15, x11, beq.32685	# 246
	fle		f1, f5, fle.32687	# 122
	addi	x15, x0, 0	# 246
	jal		x0, beq_cont.32684	# 122
fle.32687:
	addi	x15, x0, 1	# 246
	jal		x0, beq_cont.32684	# 246
beq.32685:
	addi	x15, x18, 0	# 246
beq_cont.32684:
	add		x18, x10, x14	# 972
	flw		f6, 0(x18)	# 972
	beq		x15, x11, beq.32689	# 261
	jal		x0, beq_cont.32688	# 261
beq.32689:
	fsub	f6, f0, f6	# 123
beq_cont.32688:
	fsub	f6, f6, f2	# 974
	fdiv	f5, f6, f5	# 974
	add		x15, x6, x16	# 975
	flw		f6, 0(x15)	# 975
	fmul	f6, f5, f6	# 975
	fadd	f6, f6, f3	# 975
	fle		f6, f1, fle.32691	# 124
	jal		x0, fle_cont.32690	# 124
fle.32691:
	fsub	f6, f0, f6	# 124
fle_cont.32690:
	add		x15, x10, x16	# 975
	flw		f7, 0(x15)	# 975
	fle		f7, f6, fle.32693	# 125
	add		x15, x6, x17	# 976
	flw		f6, 0(x15)	# 976
	fmul	f6, f5, f6	# 976
	fadd	f6, f6, f4	# 976
	fle		f6, f1, fle.32695	# 124
	jal		x0, fle_cont.32694	# 124
fle.32695:
	fsub	f6, f0, f6	# 124
fle_cont.32694:
	add		x10, x10, x17	# 976
	flw		f7, 0(x10)	# 976
	fle		f7, f6, fle.32697	# 125
	addi	x10, x14, 64336	# 977
	fsw		f5, 0(x10)	# 977
	addi	x10, x0, 1	# 977
	jal		x0, feq_cont.32680	# 125
fle.32697:
	addi	x10, x0, 0	# 978
	jal		x0, feq_cont.32680	# 125
fle.32693:
	addi	x10, x0, 0	# 979
	jal		x0, feq_cont.32680	# 120
feq.32681:
	addi	x10, x0, 0	# 970
feq_cont.32680:
	beq		x10, x11, beq.32699	# 985
	addi	x8, x0, 1	# 985
	jal		x0, beq_cont.32660	# 985
beq.32699:
	add		x10, x6, x16	# 970
	flw		f5, 0(x10)	# 970
	feq		f5, f1, feq.32701	# 120
	lw		x15, 16(x9)	# 463
	lw		x18, 24(x9)	# 415
	fle		f1, f5, fle.32703	# 122
	addi	x19, x0, 1	# 122
	jal		x0, fle_cont.32702	# 122
fle.32703:
	addi	x19, x0, 0	# 122
fle_cont.32702:
	beq		x18, x11, beq.32705	# 246
	fle		f1, f5, fle.32707	# 122
	addi	x18, x0, 0	# 246
	jal		x0, beq_cont.32704	# 122
fle.32707:
	addi	x18, x0, 1	# 246
	jal		x0, beq_cont.32704	# 246
beq.32705:
	addi	x18, x19, 0	# 246
beq_cont.32704:
	add		x19, x15, x16	# 972
	flw		f6, 0(x19)	# 972
	beq		x18, x11, beq.32709	# 261
	jal		x0, beq_cont.32708	# 261
beq.32709:
	fsub	f6, f0, f6	# 123
beq_cont.32708:
	fsub	f6, f6, f3	# 974
	fdiv	f5, f6, f5	# 974
	add		x18, x6, x17	# 975
	flw		f6, 0(x18)	# 975
	fmul	f6, f5, f6	# 975
	fadd	f6, f6, f4	# 975
	fle		f6, f1, fle.32711	# 124
	jal		x0, fle_cont.32710	# 124
fle.32711:
	fsub	f6, f0, f6	# 124
fle_cont.32710:
	add		x18, x15, x17	# 975
	flw		f7, 0(x18)	# 975
	fle		f7, f6, fle.32713	# 125
	flw		f6, 0(x8)	# 976
	fmul	f6, f5, f6	# 976
	fadd	f6, f6, f2	# 976
	fle		f6, f1, fle.32715	# 124
	jal		x0, fle_cont.32714	# 124
fle.32715:
	fsub	f6, f0, f6	# 124
fle_cont.32714:
	add		x15, x15, x14	# 976
	flw		f7, 0(x15)	# 976
	fle		f7, f6, fle.32717	# 125
	addi	x15, x14, 64336	# 977
	fsw		f5, 0(x15)	# 977
	addi	x15, x0, 1	# 977
	jal		x0, feq_cont.32700	# 125
fle.32717:
	addi	x15, x0, 0	# 978
	jal		x0, feq_cont.32700	# 125
fle.32713:
	addi	x15, x0, 0	# 979
	jal		x0, feq_cont.32700	# 120
feq.32701:
	addi	x15, x0, 0	# 970
feq_cont.32700:
	beq		x15, x11, beq.32719	# 986
	addi	x8, x0, 2	# 986
	jal		x0, beq_cont.32660	# 986
beq.32719:
	add		x15, x6, x17	# 970
	flw		f5, 0(x15)	# 970
	feq		f5, f1, feq.32721	# 120
	lw		x15, 16(x9)	# 463
	lw		x9, 24(x9)	# 415
	fle		f1, f5, fle.32723	# 122
	addi	x18, x0, 1	# 122
	jal		x0, fle_cont.32722	# 122
fle.32723:
	addi	x18, x0, 0	# 122
fle_cont.32722:
	beq		x9, x11, beq.32725	# 246
	fle		f1, f5, fle.32727	# 122
	addi	x9, x0, 0	# 246
	jal		x0, beq_cont.32724	# 122
fle.32727:
	addi	x9, x0, 1	# 246
	jal		x0, beq_cont.32724	# 246
beq.32725:
	addi	x9, x18, 0	# 246
beq_cont.32724:
	add		x17, x15, x17	# 972
	flw		f6, 0(x17)	# 972
	beq		x9, x11, beq.32729	# 261
	jal		x0, beq_cont.32728	# 261
beq.32729:
	fsub	f6, f0, f6	# 123
beq_cont.32728:
	fsub	f4, f6, f4	# 974
	fdiv	f4, f4, f5	# 974
	flw		f5, 0(x8)	# 975
	fmul	f5, f4, f5	# 975
	fadd	f2, f5, f2	# 975
	fle		f2, f1, fle.32731	# 124
	jal		x0, fle_cont.32730	# 124
fle.32731:
	fsub	f2, f0, f2	# 124
fle_cont.32730:
	add		x8, x15, x14	# 975
	flw		f5, 0(x8)	# 975
	fle		f5, f2, fle.32733	# 125
	flw		f2, 0(x10)	# 976
	fmul	f2, f4, f2	# 976
	fadd	f2, f2, f3	# 976
	fle		f2, f1, fle.32735	# 124
	fadd	f1, f0, f2	# 124
	jal		x0, fle_cont.32734	# 124
fle.32735:
	fsub	f1, f0, f2	# 124
fle_cont.32734:
	add		x8, x15, x16	# 976
	flw		f2, 0(x8)	# 976
	fle		f2, f1, fle.32737	# 125
	addi	x8, x14, 64336	# 977
	fsw		f4, 0(x8)	# 977
	addi	x8, x0, 1	# 977
	jal		x0, feq_cont.32720	# 125
fle.32737:
	addi	x8, x0, 0	# 978
	jal		x0, feq_cont.32720	# 125
fle.32733:
	addi	x8, x0, 0	# 979
	jal		x0, feq_cont.32720	# 120
feq.32721:
	addi	x8, x0, 0	# 970
feq_cont.32720:
	beq		x8, x11, beq.32739	# 987
	addi	x8, x0, 3	# 987
	jal		x0, beq_cont.32660	# 987
beq.32739:
	addi	x8, x0, 0	# 988
beq_cont.32660:
	beq		x8, x11, beq_cont.32658	# 1569
	addi	x8, x14, 64336	# 1570
	flw		f1, 0(x8)	# 1570
	addi	x8, x14, 64344	# 1571
	flw		f2, 0(x8)	# 1571
	fle		f2, f1, beq_cont.32658	# 125
	addi	x5, x13, 0	# 1572
	addi	x4, x12, 0	# 1572
	addi	x29, x7, 0	# 1572
	sw		x1, -20(x2)	# 1572
	addi	x2, x2, -24	# 1572
	lw		x31, 0(x29)	# 1572
	jalr	x1, x31, 0	# 1572
	addi	x2, x2, 24	# 1572
	lw		x1, -20(x2)	# 1572
	jal		x0, beq_cont.32658	# 125
	jal		x0, beq_cont.32658	# 1569
	jal		x0, beq_cont.32658	# 1563
beq.32659:
	addi	x5, x13, 0	# 1564
	addi	x4, x12, 0	# 1564
	addi	x29, x7, 0	# 1564
	sw		x1, -20(x2)	# 1564
	addi	x2, x2, -24	# 1564
	lw		x31, 0(x29)	# 1564
	jalr	x1, x31, 0	# 1564
	addi	x2, x2, 24	# 1564
	lw		x1, -20(x2)	# 1564
beq_cont.32658:
	lw		x4, -16(x2)	# 1576
	lw		x5, -12(x2)	# 1576
	add		x4, x4, x5	# 1576
	lw		x5, -4(x2)	# 1576
	lw		x6, 0(x2)	# 1576
	lw		x29, -8(x2)	# 1576
	lw		x31, 0(x29)	# 1576
	jalr	x0, x31, 0	# 1576
beq.32657:
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
	beq		x15, x10, beq.32745	# 1602
	mul		x16, x30, x15	# 1215
	addi	x17, x16, 63844	# 1215
	lw		x18, 0(x17)	# 1215
	lw		x19, 40(x18)	# 590
	mul		x20, x30, x12	# 1217
	add		x21, x19, x20	# 1217
	flw		f2, 0(x21)	# 1217
	mul		x21, x30, x13	# 1218
	add		x22, x19, x21	# 1218
	flw		f3, 0(x22)	# 1218
	mul		x22, x30, x9	# 1219
	add		x23, x19, x22	# 1219
	flw		f4, 0(x23)	# 1219
	lw		x23, 4(x6)	# 687
	add		x16, x23, x16	# 1221
	lw		x16, 0(x16)	# 1221
	lw		x23, 4(x18)	# 395
	beq		x23, x13, beq.32747	# 1223
	beq		x23, x9, beq.32749	# 1225
	add		x23, x16, x20	# 1197
	flw		f5, 0(x23)	# 1197
	feq		f5, f1, feq.32751	# 120
	add		x23, x16, x21	# 1201
	flw		f6, 0(x23)	# 1201
	fmul	f2, f6, f2	# 1201
	add		x23, x16, x22	# 1201
	flw		f6, 0(x23)	# 1201
	fmul	f3, f6, f3	# 1201
	fadd	f2, f2, f3	# 1201
	mul		x23, x30, x11	# 1201
	add		x24, x16, x23	# 1201
	flw		f3, 0(x24)	# 1201
	fmul	f3, f3, f4	# 1201
	fadd	f2, f2, f3	# 1201
	add		x19, x19, x23	# 1202
	flw		f3, 0(x19)	# 1202
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1203
	fsub	f3, f4, f3	# 1203
	fle		f3, f1, fle.32753	# 121
	lw		x18, 24(x18)	# 415
	beq		x18, x12, beq.32755	# 1205
	fsqrt	f3, f3	# 1206
	fadd	f2, f2, f3	# 1206
	addi	x18, x0, 4	# 1206
	mul		x18, x30, x18	# 1206
	add		x16, x16, x18	# 1206
	flw		f3, 0(x16)	# 1206
	fmul	f2, f2, f3	# 1206
	addi	x16, x20, 64336	# 1206
	fsw		f2, 0(x16)	# 1206
	jal		x0, beq_cont.32754	# 1205
beq.32755:
	fsqrt	f3, f3	# 1208
	fsub	f2, f2, f3	# 1208
	addi	x18, x0, 4	# 1208
	mul		x18, x30, x18	# 1208
	add		x16, x16, x18	# 1208
	flw		f3, 0(x16)	# 1208
	fmul	f2, f2, f3	# 1208
	addi	x16, x20, 64336	# 1208
	fsw		f2, 0(x16)	# 1208
beq_cont.32754:
	addi	x16, x0, 1	# 1209
	jal		x0, beq_cont.32746	# 121
fle.32753:
	addi	x16, x0, 0	# 1210
	jal		x0, beq_cont.32746	# 120
feq.32751:
	addi	x16, x0, 0	# 1199
	jal		x0, beq_cont.32746	# 1225
beq.32749:
	add		x16, x16, x20	# 1188
	flw		f2, 0(x16)	# 1188
	fle		f1, f2, fle.32757	# 122
	mul		x16, x30, x11	# 1189
	add		x16, x19, x16	# 1189
	flw		f3, 0(x16)	# 1189
	fmul	f2, f2, f3	# 1189
	addi	x16, x20, 64336	# 1189
	fsw		f2, 0(x16)	# 1189
	addi	x16, x0, 1	# 1190
	jal		x0, beq_cont.32746	# 122
fle.32757:
	addi	x16, x0, 0	# 1191
	jal		x0, beq_cont.32746	# 1223
beq.32747:
	add		x19, x16, x20	# 1106
	flw		f5, 0(x19)	# 1106
	fsub	f5, f5, f2	# 1106
	add		x19, x16, x21	# 1106
	flw		f6, 0(x19)	# 1106
	fmul	f5, f5, f6	# 1106
	add		x19, x14, x21	# 1108
	flw		f7, 0(x19)	# 1108
	fmul	f8, f5, f7	# 1108
	fadd	f8, f8, f3	# 1108
	fle		f8, f1, fle.32759	# 124
	jal		x0, fle_cont.32758	# 124
fle.32759:
	fsub	f8, f0, f8	# 124
fle_cont.32758:
	lw		x18, 16(x18)	# 443
	add		x19, x18, x21	# 448
	flw		f9, 0(x19)	# 448
	fle		f9, f8, fle.32761	# 125
	add		x19, x14, x22	# 1109
	flw		f8, 0(x19)	# 1109
	fmul	f8, f5, f8	# 1109
	fadd	f8, f8, f4	# 1109
	fle		f8, f1, fle.32763	# 124
	jal		x0, fle_cont.32762	# 124
fle.32763:
	fsub	f8, f0, f8	# 124
fle_cont.32762:
	add		x19, x18, x22	# 458
	flw		f10, 0(x19)	# 458
	fle		f10, f8, fle.32765	# 125
	feq		f6, f1, feq.32767	# 120
	addi	x19, x0, 1	# 1110
	jal		x0, fle_cont.32760	# 120
feq.32767:
	addi	x19, x0, 0	# 1110
	jal		x0, fle_cont.32760	# 125
fle.32765:
	addi	x19, x0, 0	# 1111
	jal		x0, fle_cont.32760	# 125
fle.32761:
	addi	x19, x0, 0	# 1112
fle_cont.32760:
	beq		x19, x12, beq.32769	# 1107
	addi	x16, x20, 64336	# 1114
	fsw		f5, 0(x16)	# 1114
	addi	x16, x0, 1	# 1114
	jal		x0, beq_cont.32746	# 1107
beq.32769:
	add		x19, x16, x22	# 1115
	flw		f5, 0(x19)	# 1115
	fsub	f5, f5, f3	# 1115
	mul		x19, x30, x11	# 1115
	add		x19, x16, x19	# 1115
	flw		f6, 0(x19)	# 1115
	fmul	f5, f5, f6	# 1115
	add		x19, x14, x20	# 1117
	flw		f8, 0(x19)	# 1117
	fmul	f10, f5, f8	# 1117
	fadd	f10, f10, f2	# 1117
	fle		f10, f1, fle.32771	# 124
	jal		x0, fle_cont.32770	# 124
fle.32771:
	fsub	f10, f0, f10	# 124
fle_cont.32770:
	add		x19, x18, x20	# 438
	flw		f11, 0(x19)	# 438
	fle		f11, f10, fle.32773	# 125
	add		x19, x14, x22	# 1118
	flw		f10, 0(x19)	# 1118
	fmul	f10, f5, f10	# 1118
	fadd	f10, f10, f4	# 1118
	fle		f10, f1, fle.32775	# 124
	jal		x0, fle_cont.32774	# 124
fle.32775:
	fsub	f10, f0, f10	# 124
fle_cont.32774:
	add		x18, x18, x22	# 458
	flw		f12, 0(x18)	# 458
	fle		f12, f10, fle.32777	# 125
	feq		f6, f1, feq.32779	# 120
	addi	x18, x0, 1	# 1119
	jal		x0, fle_cont.32772	# 120
feq.32779:
	addi	x18, x0, 0	# 1119
	jal		x0, fle_cont.32772	# 125
fle.32777:
	addi	x18, x0, 0	# 1120
	jal		x0, fle_cont.32772	# 125
fle.32773:
	addi	x18, x0, 0	# 1121
fle_cont.32772:
	beq		x18, x12, beq.32781	# 1116
	addi	x16, x20, 64336	# 1123
	fsw		f5, 0(x16)	# 1123
	addi	x16, x0, 2	# 1123
	jal		x0, beq_cont.32746	# 1116
beq.32781:
	addi	x18, x0, 4	# 1124
	mul		x18, x30, x18	# 1124
	add		x18, x16, x18	# 1124
	flw		f5, 0(x18)	# 1124
	fsub	f4, f5, f4	# 1124
	mul		x18, x30, x8	# 1124
	add		x16, x16, x18	# 1124
	flw		f5, 0(x16)	# 1124
	fmul	f4, f4, f5	# 1124
	fmul	f6, f4, f8	# 1126
	fadd	f2, f6, f2	# 1126
	fle		f2, f1, fle.32783	# 124
	jal		x0, fle_cont.32782	# 124
fle.32783:
	fsub	f2, f0, f2	# 124
fle_cont.32782:
	fle		f11, f2, fle.32785	# 125
	fmul	f2, f4, f7	# 1127
	fadd	f2, f2, f3	# 1127
	fle		f2, f1, fle.32787	# 124
	jal		x0, fle_cont.32786	# 124
fle.32787:
	fsub	f2, f0, f2	# 124
fle_cont.32786:
	fle		f9, f2, fle.32789	# 125
	feq		f5, f1, feq.32791	# 120
	addi	x16, x0, 1	# 1128
	jal		x0, fle_cont.32784	# 120
feq.32791:
	addi	x16, x0, 0	# 1128
	jal		x0, fle_cont.32784	# 125
fle.32789:
	addi	x16, x0, 0	# 1129
	jal		x0, fle_cont.32784	# 125
fle.32785:
	addi	x16, x0, 0	# 1130
fle_cont.32784:
	beq		x16, x12, beq.32793	# 1125
	addi	x16, x20, 64336	# 1132
	fsw		f4, 0(x16)	# 1132
	addi	x16, x0, 3	# 1132
	jal		x0, beq_cont.32746	# 1125
beq.32793:
	addi	x16, x0, 0	# 1134
beq_cont.32746:
	beq		x16, x12, beq.32794	# 1605
	addi	x17, x20, 64336	# 1609
	flw		f2, 0(x17)	# 1609
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
	fle		f2, f1, fle_cont.32795	# 125
	addi	x18, x20, 64344	# 1612
	flw		f3, 0(x18)	# 1612
	fle		f3, f2, fle_cont.32795	# 125
	fadd	f2, f2, f16	# 1614
	add		x19, x14, x20	# 1615
	flw		f3, 0(x19)	# 1615
	fmul	f3, f3, f2	# 1615
	addi	x19, x20, 64444	# 1615
	flw		f4, 0(x19)	# 1615
	fadd	f3, f3, f4	# 1615
	add		x19, x14, x21	# 1616
	flw		f4, 0(x19)	# 1616
	fmul	f4, f4, f2	# 1616
	addi	x19, x21, 64444	# 1616
	flw		f5, 0(x19)	# 1616
	fadd	f4, f4, f5	# 1616
	add		x14, x14, x22	# 1617
	flw		f5, 0(x14)	# 1617
	fmul	f5, f5, f2	# 1617
	addi	x14, x22, 64444	# 1617
	flw		f6, 0(x14)	# 1617
	fadd	f5, f5, f6	# 1617
	sw		x15, -48(x2)	# 1618
	fsw		f5, -52(x2)	# 1618
	fsw		f4, -56(x2)	# 1618
	fsw		f3, -60(x2)	# 1618
	fsw		f2, -64(x2)	# 1618
	addi	x4, x12, 0	# 1618
	addi	x29, x7, 0	# 1618
	fadd	f2, f0, f4	# 1618
	fadd	f1, f0, f3	# 1618
	fadd	f3, f0, f5	# 1618
	sw		x1, -68(x2)	# 1618
	addi	x2, x2, -72	# 1618
	lw		x31, 0(x29)	# 1618
	jalr	x1, x31, 0	# 1618
	addi	x2, x2, 72	# 1618
	lw		x1, -68(x2)	# 1618
	lw		x5, -20(x2)	# 1618
	beq		x4, x5, fle_cont.32795	# 1618
	flw		f1, -64(x2)	# 1620
	fsw		f1, 0(x18)	# 1620
	addi	x4, x20, 64348	# 282
	flw		f1, -60(x2)	# 282
	fsw		f1, 0(x4)	# 282
	addi	x4, x21, 64348	# 283
	flw		f1, -56(x2)	# 283
	fsw		f1, 0(x4)	# 283
	addi	x4, x22, 64348	# 284
	flw		f1, -52(x2)	# 284
	fsw		f1, 0(x4)	# 284
	addi	x4, x20, 64360	# 1622
	lw		x6, -48(x2)	# 1622
	sw		x6, 0(x4)	# 1622
	addi	x4, x20, 64340	# 1623
	sw		x16, 0(x4)	# 1623
	jal		x0, fle_cont.32795	# 1618
	jal		x0, fle_cont.32795	# 125
	jal		x0, fle_cont.32795	# 125
fle_cont.32795:
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
	beq		x8, x10, beq.32801	# 1602
	mul		x10, x30, x8	# 1215
	addi	x11, x10, 63844	# 1215
	lw		x12, 0(x11)	# 1215
	lw		x13, 40(x12)	# 590
	add		x14, x13, x20	# 1217
	flw		f1, 0(x14)	# 1217
	add		x14, x13, x21	# 1218
	flw		f2, 0(x14)	# 1218
	add		x14, x13, x22	# 1219
	flw		f3, 0(x14)	# 1219
	lw		x14, 4(x6)	# 687
	add		x10, x14, x10	# 1221
	lw		x10, 0(x10)	# 1221
	lw		x14, 4(x12)	# 395
	beq		x14, x5, beq.32803	# 1223
	lw		x15, -8(x2)	# 1225
	beq		x14, x15, beq.32805	# 1225
	add		x14, x10, x20	# 1197
	flw		f4, 0(x14)	# 1197
	flw		f5, -24(x2)	# 120
	feq		f4, f5, feq.32807	# 120
	add		x14, x10, x21	# 1201
	flw		f6, 0(x14)	# 1201
	fmul	f1, f6, f1	# 1201
	add		x14, x10, x22	# 1201
	flw		f6, 0(x14)	# 1201
	fmul	f2, f6, f2	# 1201
	fadd	f1, f1, f2	# 1201
	lw		x14, -16(x2)	# 1201
	mul		x14, x30, x14	# 1201
	add		x15, x10, x14	# 1201
	flw		f2, 0(x15)	# 1201
	fmul	f2, f2, f3	# 1201
	fadd	f1, f1, f2	# 1201
	add		x13, x13, x14	# 1202
	flw		f2, 0(x13)	# 1202
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1203
	fsub	f2, f3, f2	# 1203
	fle		f2, f5, fle.32809	# 121
	lw		x12, 24(x12)	# 415
	lw		x13, -20(x2)	# 1205
	beq		x12, x13, beq.32811	# 1205
	fsqrt	f2, f2	# 1206
	fadd	f1, f1, f2	# 1206
	addi	x12, x0, 4	# 1206
	mul		x12, x30, x12	# 1206
	add		x10, x10, x12	# 1206
	flw		f2, 0(x10)	# 1206
	fmul	f1, f1, f2	# 1206
	fsw		f1, 0(x17)	# 1206
	jal		x0, beq_cont.32810	# 1205
beq.32811:
	fsqrt	f2, f2	# 1208
	fsub	f1, f1, f2	# 1208
	addi	x12, x0, 4	# 1208
	mul		x12, x30, x12	# 1208
	add		x10, x10, x12	# 1208
	flw		f2, 0(x10)	# 1208
	fmul	f1, f1, f2	# 1208
	fsw		f1, 0(x17)	# 1208
beq_cont.32810:
	addi	x10, x0, 1	# 1209
	jal		x0, beq_cont.32802	# 121
fle.32809:
	addi	x10, x0, 0	# 1210
	jal		x0, beq_cont.32802	# 120
feq.32807:
	addi	x10, x0, 0	# 1199
	jal		x0, beq_cont.32802	# 1225
beq.32805:
	add		x10, x10, x20	# 1188
	flw		f1, 0(x10)	# 1188
	flw		f2, -24(x2)	# 122
	fle		f2, f1, fle.32813	# 122
	lw		x10, -16(x2)	# 1189
	mul		x10, x30, x10	# 1189
	add		x10, x13, x10	# 1189
	flw		f3, 0(x10)	# 1189
	fmul	f1, f1, f3	# 1189
	fsw		f1, 0(x17)	# 1189
	addi	x10, x0, 1	# 1190
	jal		x0, beq_cont.32802	# 122
fle.32813:
	addi	x10, x0, 0	# 1191
	jal		x0, beq_cont.32802	# 1223
beq.32803:
	add		x13, x10, x20	# 1106
	flw		f4, 0(x13)	# 1106
	fsub	f4, f4, f1	# 1106
	add		x13, x10, x21	# 1106
	flw		f5, 0(x13)	# 1106
	fmul	f4, f4, f5	# 1106
	add		x13, x7, x21	# 1108
	flw		f6, 0(x13)	# 1108
	fmul	f7, f4, f6	# 1108
	fadd	f7, f7, f2	# 1108
	flw		f8, -24(x2)	# 124
	fle		f7, f8, fle.32815	# 124
	jal		x0, fle_cont.32814	# 124
fle.32815:
	fsub	f7, f0, f7	# 124
fle_cont.32814:
	lw		x12, 16(x12)	# 443
	add		x13, x12, x21	# 448
	flw		f9, 0(x13)	# 448
	fle		f9, f7, fle.32817	# 125
	add		x13, x7, x22	# 1109
	flw		f7, 0(x13)	# 1109
	fmul	f7, f4, f7	# 1109
	fadd	f7, f7, f3	# 1109
	fle		f7, f8, fle.32819	# 124
	jal		x0, fle_cont.32818	# 124
fle.32819:
	fsub	f7, f0, f7	# 124
fle_cont.32818:
	add		x13, x12, x22	# 458
	flw		f10, 0(x13)	# 458
	fle		f10, f7, fle.32821	# 125
	feq		f5, f8, feq.32823	# 120
	addi	x13, x0, 1	# 1110
	jal		x0, fle_cont.32816	# 120
feq.32823:
	addi	x13, x0, 0	# 1110
	jal		x0, fle_cont.32816	# 125
fle.32821:
	addi	x13, x0, 0	# 1111
	jal		x0, fle_cont.32816	# 125
fle.32817:
	addi	x13, x0, 0	# 1112
fle_cont.32816:
	lw		x14, -20(x2)	# 1107
	beq		x13, x14, beq.32825	# 1107
	fsw		f4, 0(x17)	# 1114
	addi	x10, x0, 1	# 1114
	jal		x0, beq_cont.32802	# 1107
beq.32825:
	add		x13, x10, x22	# 1115
	flw		f4, 0(x13)	# 1115
	fsub	f4, f4, f2	# 1115
	lw		x13, -16(x2)	# 1115
	mul		x13, x30, x13	# 1115
	add		x13, x10, x13	# 1115
	flw		f5, 0(x13)	# 1115
	fmul	f4, f4, f5	# 1115
	add		x13, x7, x20	# 1117
	flw		f7, 0(x13)	# 1117
	fmul	f10, f4, f7	# 1117
	fadd	f10, f10, f1	# 1117
	fle		f10, f8, fle.32827	# 124
	jal		x0, fle_cont.32826	# 124
fle.32827:
	fsub	f10, f0, f10	# 124
fle_cont.32826:
	add		x13, x12, x20	# 438
	flw		f11, 0(x13)	# 438
	fle		f11, f10, fle.32829	# 125
	add		x13, x7, x22	# 1118
	flw		f10, 0(x13)	# 1118
	fmul	f10, f4, f10	# 1118
	fadd	f10, f10, f3	# 1118
	fle		f10, f8, fle.32831	# 124
	jal		x0, fle_cont.32830	# 124
fle.32831:
	fsub	f10, f0, f10	# 124
fle_cont.32830:
	add		x12, x12, x22	# 458
	flw		f12, 0(x12)	# 458
	fle		f12, f10, fle.32833	# 125
	feq		f5, f8, feq.32835	# 120
	addi	x12, x0, 1	# 1119
	jal		x0, fle_cont.32828	# 120
feq.32835:
	addi	x12, x0, 0	# 1119
	jal		x0, fle_cont.32828	# 125
fle.32833:
	addi	x12, x0, 0	# 1120
	jal		x0, fle_cont.32828	# 125
fle.32829:
	addi	x12, x0, 0	# 1121
fle_cont.32828:
	beq		x12, x14, beq.32837	# 1116
	fsw		f4, 0(x17)	# 1123
	addi	x10, x0, 2	# 1123
	jal		x0, beq_cont.32802	# 1116
beq.32837:
	addi	x12, x0, 4	# 1124
	mul		x12, x30, x12	# 1124
	add		x12, x10, x12	# 1124
	flw		f4, 0(x12)	# 1124
	fsub	f3, f4, f3	# 1124
	lw		x12, -12(x2)	# 1124
	mul		x12, x30, x12	# 1124
	add		x10, x10, x12	# 1124
	flw		f4, 0(x10)	# 1124
	fmul	f3, f3, f4	# 1124
	fmul	f5, f3, f7	# 1126
	fadd	f1, f5, f1	# 1126
	fle		f1, f8, fle.32839	# 124
	jal		x0, fle_cont.32838	# 124
fle.32839:
	fsub	f1, f0, f1	# 124
fle_cont.32838:
	fle		f11, f1, fle.32841	# 125
	fmul	f1, f3, f6	# 1127
	fadd	f1, f1, f2	# 1127
	fle		f1, f8, fle.32843	# 124
	jal		x0, fle_cont.32842	# 124
fle.32843:
	fsub	f1, f0, f1	# 124
fle_cont.32842:
	fle		f9, f1, fle.32845	# 125
	feq		f4, f8, feq.32847	# 120
	addi	x10, x0, 1	# 1128
	jal		x0, fle_cont.32840	# 120
feq.32847:
	addi	x10, x0, 0	# 1128
	jal		x0, fle_cont.32840	# 125
fle.32845:
	addi	x10, x0, 0	# 1129
	jal		x0, fle_cont.32840	# 125
fle.32841:
	addi	x10, x0, 0	# 1130
fle_cont.32840:
	beq		x10, x14, beq.32849	# 1125
	fsw		f3, 0(x17)	# 1132
	addi	x10, x0, 3	# 1132
	jal		x0, beq_cont.32802	# 1125
beq.32849:
	addi	x10, x0, 0	# 1134
beq_cont.32802:
	lw		x12, -20(x2)	# 1605
	beq		x10, x12, beq.32850	# 1605
	flw		f1, 0(x17)	# 1609
	flw		f2, -24(x2)	# 125
	sw		x4, -68(x2)	# 125
	fle		f1, f2, fle_cont.32851	# 125
	addi	x11, x20, 64344	# 1612
	flw		f2, 0(x11)	# 1612
	fle		f2, f1, fle_cont.32851	# 125
	fadd	f1, f1, f16	# 1614
	add		x13, x7, x20	# 1615
	flw		f2, 0(x13)	# 1615
	fmul	f2, f2, f1	# 1615
	addi	x13, x20, 64444	# 1615
	flw		f3, 0(x13)	# 1615
	fadd	f2, f2, f3	# 1615
	add		x13, x7, x21	# 1616
	flw		f3, 0(x13)	# 1616
	fmul	f3, f3, f1	# 1616
	addi	x13, x21, 64444	# 1616
	flw		f4, 0(x13)	# 1616
	fadd	f3, f3, f4	# 1616
	add		x7, x7, x22	# 1617
	flw		f4, 0(x7)	# 1617
	fmul	f4, f4, f1	# 1617
	addi	x7, x22, 64444	# 1617
	flw		f5, 0(x7)	# 1617
	fadd	f4, f4, f5	# 1617
	lw		x29, 0(x2)	# 1618
	sw		x10, -72(x2)	# 1618
	sw		x8, -76(x2)	# 1618
	fsw		f4, -80(x2)	# 1618
	fsw		f3, -84(x2)	# 1618
	fsw		f2, -88(x2)	# 1618
	sw		x11, -92(x2)	# 1618
	fsw		f1, -96(x2)	# 1618
	addi	x5, x9, 0	# 1618
	addi	x4, x12, 0	# 1618
	fadd	f1, f0, f2	# 1618
	fadd	f2, f0, f3	# 1618
	fadd	f3, f0, f4	# 1618
	sw		x1, -100(x2)	# 1618
	addi	x2, x2, -104	# 1618
	lw		x31, 0(x29)	# 1618
	jalr	x1, x31, 0	# 1618
	addi	x2, x2, 104	# 1618
	lw		x1, -100(x2)	# 1618
	lw		x5, -20(x2)	# 1618
	beq		x4, x5, fle_cont.32851	# 1618
	flw		f1, -96(x2)	# 1620
	lw		x4, -92(x2)	# 1620
	fsw		f1, 0(x4)	# 1620
	addi	x4, x20, 64348	# 282
	flw		f1, -88(x2)	# 282
	fsw		f1, 0(x4)	# 282
	addi	x4, x21, 64348	# 283
	flw		f1, -84(x2)	# 283
	fsw		f1, 0(x4)	# 283
	addi	x4, x22, 64348	# 284
	flw		f1, -80(x2)	# 284
	fsw		f1, 0(x4)	# 284
	addi	x4, x20, 64360	# 1622
	lw		x5, -76(x2)	# 1622
	sw		x5, 0(x4)	# 1622
	addi	x4, x20, 64340	# 1623
	lw		x5, -72(x2)	# 1623
	sw		x5, 0(x4)	# 1623
	jal		x0, fle_cont.32851	# 1618
	jal		x0, fle_cont.32851	# 125
	jal		x0, fle_cont.32851	# 125
fle_cont.32851:
	lw		x4, -68(x2)	# 1629
	lw		x5, -40(x2)	# 1629
	add		x4, x4, x5	# 1629
	lw		x5, -32(x2)	# 1629
	lw		x6, -36(x2)	# 1629
	lw		x29, -4(x2)	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x0, x31, 0	# 1629
beq.32850:
	lw		x7, 0(x11)	# 1633
	lw		x7, 24(x7)	# 415
	beq		x7, x12, beq.32857	# 1633
	add		x4, x4, x5	# 1634
	lw		x29, -4(x2)	# 1634
	addi	x5, x9, 0	# 1634
	lw		x31, 0(x29)	# 1634
	jalr	x0, x31, 0	# 1634
beq.32857:
	jalr	x0, x1, 0	# 1635
beq.32801:
	jalr	x0, x1, 0	# 1602
beq.32794:
	lw		x14, 0(x17)	# 1633
	lw		x14, 24(x14)	# 415
	beq		x14, x12, beq.32860	# 1633
	add		x4, x4, x13	# 1634
	lw		x14, 0(x6)	# 681
	mul		x15, x30, x4	# 1601
	add		x15, x5, x15	# 1601
	lw		x15, 0(x15)	# 1601
	beq		x15, x10, beq.32861	# 1602
	mul		x10, x30, x15	# 1215
	addi	x16, x10, 63844	# 1215
	lw		x17, 0(x16)	# 1215
	lw		x18, 40(x17)	# 590
	add		x19, x18, x20	# 1217
	flw		f2, 0(x19)	# 1217
	add		x19, x18, x21	# 1218
	flw		f3, 0(x19)	# 1218
	add		x19, x18, x22	# 1219
	flw		f4, 0(x19)	# 1219
	lw		x19, 4(x6)	# 687
	add		x10, x19, x10	# 1221
	lw		x10, 0(x10)	# 1221
	lw		x19, 4(x17)	# 395
	beq		x19, x13, beq.32863	# 1223
	beq		x19, x9, beq.32865	# 1225
	add		x8, x10, x20	# 1197
	flw		f5, 0(x8)	# 1197
	feq		f5, f1, feq.32867	# 120
	add		x8, x10, x21	# 1201
	flw		f6, 0(x8)	# 1201
	fmul	f2, f6, f2	# 1201
	add		x8, x10, x22	# 1201
	flw		f6, 0(x8)	# 1201
	fmul	f3, f6, f3	# 1201
	fadd	f2, f2, f3	# 1201
	mul		x8, x30, x11	# 1201
	add		x9, x10, x8	# 1201
	flw		f3, 0(x9)	# 1201
	fmul	f3, f3, f4	# 1201
	fadd	f2, f2, f3	# 1201
	add		x8, x18, x8	# 1202
	flw		f3, 0(x8)	# 1202
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1203
	fsub	f3, f4, f3	# 1203
	fle		f3, f1, fle.32869	# 121
	lw		x8, 24(x17)	# 415
	beq		x8, x12, beq.32871	# 1205
	fsqrt	f3, f3	# 1206
	fadd	f2, f2, f3	# 1206
	addi	x8, x0, 4	# 1206
	mul		x8, x30, x8	# 1206
	add		x8, x10, x8	# 1206
	flw		f3, 0(x8)	# 1206
	fmul	f2, f2, f3	# 1206
	addi	x8, x20, 64336	# 1206
	fsw		f2, 0(x8)	# 1206
	jal		x0, beq_cont.32870	# 1205
beq.32871:
	fsqrt	f3, f3	# 1208
	fsub	f2, f2, f3	# 1208
	addi	x8, x0, 4	# 1208
	mul		x8, x30, x8	# 1208
	add		x8, x10, x8	# 1208
	flw		f3, 0(x8)	# 1208
	fmul	f2, f2, f3	# 1208
	addi	x8, x20, 64336	# 1208
	fsw		f2, 0(x8)	# 1208
beq_cont.32870:
	addi	x8, x0, 1	# 1209
	jal		x0, beq_cont.32862	# 121
fle.32869:
	addi	x8, x0, 0	# 1210
	jal		x0, beq_cont.32862	# 120
feq.32867:
	addi	x8, x0, 0	# 1199
	jal		x0, beq_cont.32862	# 1225
beq.32865:
	add		x8, x10, x20	# 1188
	flw		f2, 0(x8)	# 1188
	fle		f1, f2, fle.32873	# 122
	mul		x8, x30, x11	# 1189
	add		x8, x18, x8	# 1189
	flw		f3, 0(x8)	# 1189
	fmul	f2, f2, f3	# 1189
	addi	x8, x20, 64336	# 1189
	fsw		f2, 0(x8)	# 1189
	addi	x8, x0, 1	# 1190
	jal		x0, beq_cont.32862	# 122
fle.32873:
	addi	x8, x0, 0	# 1191
	jal		x0, beq_cont.32862	# 1223
beq.32863:
	add		x9, x10, x20	# 1106
	flw		f5, 0(x9)	# 1106
	fsub	f5, f5, f2	# 1106
	add		x9, x10, x21	# 1106
	flw		f6, 0(x9)	# 1106
	fmul	f5, f5, f6	# 1106
	add		x9, x14, x21	# 1108
	flw		f7, 0(x9)	# 1108
	fmul	f8, f5, f7	# 1108
	fadd	f8, f8, f3	# 1108
	fle		f8, f1, fle.32875	# 124
	jal		x0, fle_cont.32874	# 124
fle.32875:
	fsub	f8, f0, f8	# 124
fle_cont.32874:
	lw		x9, 16(x17)	# 443
	add		x17, x9, x21	# 448
	flw		f9, 0(x17)	# 448
	fle		f9, f8, fle.32877	# 125
	add		x17, x14, x22	# 1109
	flw		f8, 0(x17)	# 1109
	fmul	f8, f5, f8	# 1109
	fadd	f8, f8, f4	# 1109
	fle		f8, f1, fle.32879	# 124
	jal		x0, fle_cont.32878	# 124
fle.32879:
	fsub	f8, f0, f8	# 124
fle_cont.32878:
	add		x17, x9, x22	# 458
	flw		f10, 0(x17)	# 458
	fle		f10, f8, fle.32881	# 125
	feq		f6, f1, feq.32883	# 120
	addi	x17, x0, 1	# 1110
	jal		x0, fle_cont.32876	# 120
feq.32883:
	addi	x17, x0, 0	# 1110
	jal		x0, fle_cont.32876	# 125
fle.32881:
	addi	x17, x0, 0	# 1111
	jal		x0, fle_cont.32876	# 125
fle.32877:
	addi	x17, x0, 0	# 1112
fle_cont.32876:
	beq		x17, x12, beq.32885	# 1107
	addi	x8, x20, 64336	# 1114
	fsw		f5, 0(x8)	# 1114
	addi	x8, x0, 1	# 1114
	jal		x0, beq_cont.32862	# 1107
beq.32885:
	add		x17, x10, x22	# 1115
	flw		f5, 0(x17)	# 1115
	fsub	f5, f5, f3	# 1115
	mul		x11, x30, x11	# 1115
	add		x11, x10, x11	# 1115
	flw		f6, 0(x11)	# 1115
	fmul	f5, f5, f6	# 1115
	add		x11, x14, x20	# 1117
	flw		f8, 0(x11)	# 1117
	fmul	f10, f5, f8	# 1117
	fadd	f10, f10, f2	# 1117
	fle		f10, f1, fle.32887	# 124
	jal		x0, fle_cont.32886	# 124
fle.32887:
	fsub	f10, f0, f10	# 124
fle_cont.32886:
	add		x11, x9, x20	# 438
	flw		f11, 0(x11)	# 438
	fle		f11, f10, fle.32889	# 125
	add		x11, x14, x22	# 1118
	flw		f10, 0(x11)	# 1118
	fmul	f10, f5, f10	# 1118
	fadd	f10, f10, f4	# 1118
	fle		f10, f1, fle.32891	# 124
	jal		x0, fle_cont.32890	# 124
fle.32891:
	fsub	f10, f0, f10	# 124
fle_cont.32890:
	add		x9, x9, x22	# 458
	flw		f12, 0(x9)	# 458
	fle		f12, f10, fle.32893	# 125
	feq		f6, f1, feq.32895	# 120
	addi	x9, x0, 1	# 1119
	jal		x0, fle_cont.32888	# 120
feq.32895:
	addi	x9, x0, 0	# 1119
	jal		x0, fle_cont.32888	# 125
fle.32893:
	addi	x9, x0, 0	# 1120
	jal		x0, fle_cont.32888	# 125
fle.32889:
	addi	x9, x0, 0	# 1121
fle_cont.32888:
	beq		x9, x12, beq.32897	# 1116
	addi	x8, x20, 64336	# 1123
	fsw		f5, 0(x8)	# 1123
	addi	x8, x0, 2	# 1123
	jal		x0, beq_cont.32862	# 1116
beq.32897:
	addi	x9, x0, 4	# 1124
	mul		x9, x30, x9	# 1124
	add		x9, x10, x9	# 1124
	flw		f5, 0(x9)	# 1124
	fsub	f4, f5, f4	# 1124
	mul		x8, x30, x8	# 1124
	add		x8, x10, x8	# 1124
	flw		f5, 0(x8)	# 1124
	fmul	f4, f4, f5	# 1124
	fmul	f6, f4, f8	# 1126
	fadd	f2, f6, f2	# 1126
	fle		f2, f1, fle.32899	# 124
	jal		x0, fle_cont.32898	# 124
fle.32899:
	fsub	f2, f0, f2	# 124
fle_cont.32898:
	fle		f11, f2, fle.32901	# 125
	fmul	f2, f4, f7	# 1127
	fadd	f2, f2, f3	# 1127
	fle		f2, f1, fle.32903	# 124
	jal		x0, fle_cont.32902	# 124
fle.32903:
	fsub	f2, f0, f2	# 124
fle_cont.32902:
	fle		f9, f2, fle.32905	# 125
	feq		f5, f1, feq.32907	# 120
	addi	x8, x0, 1	# 1128
	jal		x0, fle_cont.32900	# 120
feq.32907:
	addi	x8, x0, 0	# 1128
	jal		x0, fle_cont.32900	# 125
fle.32905:
	addi	x8, x0, 0	# 1129
	jal		x0, fle_cont.32900	# 125
fle.32901:
	addi	x8, x0, 0	# 1130
fle_cont.32900:
	beq		x8, x12, beq.32909	# 1125
	addi	x8, x20, 64336	# 1132
	fsw		f4, 0(x8)	# 1132
	addi	x8, x0, 3	# 1132
	jal		x0, beq_cont.32862	# 1125
beq.32909:
	addi	x8, x0, 0	# 1134
beq_cont.32862:
	beq		x8, x12, beq.32910	# 1605
	addi	x9, x20, 64336	# 1609
	flw		f2, 0(x9)	# 1609
	sw		x6, -36(x2)	# 125
	sw		x5, -32(x2)	# 125
	sw		x29, -4(x2)	# 125
	sw		x13, -40(x2)	# 125
	sw		x4, -100(x2)	# 125
	fle		f2, f1, fle_cont.32911	# 125
	addi	x9, x20, 64344	# 1612
	flw		f1, 0(x9)	# 1612
	fle		f1, f2, fle_cont.32911	# 125
	fadd	f1, f2, f16	# 1614
	add		x10, x14, x20	# 1615
	flw		f2, 0(x10)	# 1615
	fmul	f2, f2, f1	# 1615
	addi	x10, x20, 64444	# 1615
	flw		f3, 0(x10)	# 1615
	fadd	f2, f2, f3	# 1615
	add		x10, x14, x21	# 1616
	flw		f3, 0(x10)	# 1616
	fmul	f3, f3, f1	# 1616
	addi	x10, x21, 64444	# 1616
	flw		f4, 0(x10)	# 1616
	fadd	f3, f3, f4	# 1616
	add		x10, x14, x22	# 1617
	flw		f4, 0(x10)	# 1617
	fmul	f4, f4, f1	# 1617
	addi	x10, x22, 64444	# 1617
	flw		f5, 0(x10)	# 1617
	fadd	f4, f4, f5	# 1617
	sw		x8, -104(x2)	# 1618
	sw		x15, -108(x2)	# 1618
	fsw		f4, -112(x2)	# 1618
	fsw		f3, -116(x2)	# 1618
	fsw		f2, -120(x2)	# 1618
	sw		x9, -124(x2)	# 1618
	fsw		f1, -128(x2)	# 1618
	sw		x12, -20(x2)	# 1618
	addi	x4, x12, 0	# 1618
	addi	x29, x7, 0	# 1618
	fadd	f1, f0, f2	# 1618
	fadd	f2, f0, f3	# 1618
	fadd	f3, f0, f4	# 1618
	sw		x1, -132(x2)	# 1618
	addi	x2, x2, -136	# 1618
	lw		x31, 0(x29)	# 1618
	jalr	x1, x31, 0	# 1618
	addi	x2, x2, 136	# 1618
	lw		x1, -132(x2)	# 1618
	lw		x5, -20(x2)	# 1618
	beq		x4, x5, fle_cont.32911	# 1618
	flw		f1, -128(x2)	# 1620
	lw		x4, -124(x2)	# 1620
	fsw		f1, 0(x4)	# 1620
	addi	x4, x20, 64348	# 282
	flw		f1, -120(x2)	# 282
	fsw		f1, 0(x4)	# 282
	addi	x4, x21, 64348	# 283
	flw		f1, -116(x2)	# 283
	fsw		f1, 0(x4)	# 283
	addi	x4, x22, 64348	# 284
	flw		f1, -112(x2)	# 284
	fsw		f1, 0(x4)	# 284
	addi	x4, x20, 64360	# 1622
	lw		x5, -108(x2)	# 1622
	sw		x5, 0(x4)	# 1622
	addi	x4, x20, 64340	# 1623
	lw		x5, -104(x2)	# 1623
	sw		x5, 0(x4)	# 1623
	jal		x0, fle_cont.32911	# 1618
	jal		x0, fle_cont.32911	# 125
	jal		x0, fle_cont.32911	# 125
fle_cont.32911:
	lw		x4, -100(x2)	# 1629
	lw		x5, -40(x2)	# 1629
	add		x4, x4, x5	# 1629
	lw		x5, -32(x2)	# 1629
	lw		x6, -36(x2)	# 1629
	lw		x29, -4(x2)	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x0, x31, 0	# 1629
beq.32910:
	lw		x7, 0(x16)	# 1633
	lw		x7, 24(x7)	# 415
	beq		x7, x12, beq.32917	# 1633
	add		x4, x4, x13	# 1634
	lw		x31, 0(x29)	# 1634
	jalr	x0, x31, 0	# 1634
beq.32917:
	jalr	x0, x1, 0	# 1635
beq.32861:
	jalr	x0, x1, 0	# 1602
beq.32860:
	jalr	x0, x1, 0	# 1635
beq.32745:
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
	beq		x15, x11, beq.32922	# 1642
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
	beq		x18, x11, beq_cont.32923	# 1602
	mul		x19, x30, x18	# 1215
	addi	x20, x19, 63844	# 1215
	lw		x21, 0(x20)	# 1215
	lw		x22, 40(x21)	# 590
	add		x23, x22, x17	# 1217
	flw		f2, 0(x23)	# 1217
	mul		x23, x30, x14	# 1218
	add		x24, x22, x23	# 1218
	flw		f3, 0(x24)	# 1218
	mul		x24, x30, x10	# 1219
	add		x25, x22, x24	# 1219
	flw		f4, 0(x25)	# 1219
	lw		x25, 4(x6)	# 687
	add		x19, x25, x19	# 1221
	lw		x19, 0(x19)	# 1221
	lw		x25, 4(x21)	# 395
	beq		x25, x14, beq.32926	# 1223
	beq		x25, x10, beq.32928	# 1225
	add		x9, x19, x17	# 1197
	flw		f5, 0(x9)	# 1197
	feq		f5, f1, feq.32930	# 120
	add		x9, x19, x23	# 1201
	flw		f6, 0(x9)	# 1201
	fmul	f2, f6, f2	# 1201
	add		x9, x19, x24	# 1201
	flw		f6, 0(x9)	# 1201
	fmul	f3, f6, f3	# 1201
	fadd	f2, f2, f3	# 1201
	mul		x9, x30, x12	# 1201
	add		x10, x19, x9	# 1201
	flw		f3, 0(x10)	# 1201
	fmul	f3, f3, f4	# 1201
	fadd	f2, f2, f3	# 1201
	add		x9, x22, x9	# 1202
	flw		f3, 0(x9)	# 1202
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1203
	fsub	f3, f4, f3	# 1203
	fle		f3, f1, fle.32932	# 121
	lw		x9, 24(x21)	# 415
	beq		x9, x13, beq.32934	# 1205
	fsqrt	f3, f3	# 1206
	fadd	f2, f2, f3	# 1206
	addi	x9, x0, 4	# 1206
	mul		x9, x30, x9	# 1206
	add		x9, x19, x9	# 1206
	flw		f3, 0(x9)	# 1206
	fmul	f2, f2, f3	# 1206
	addi	x9, x17, 64336	# 1206
	fsw		f2, 0(x9)	# 1206
	jal		x0, beq_cont.32933	# 1205
beq.32934:
	fsqrt	f3, f3	# 1208
	fsub	f2, f2, f3	# 1208
	addi	x9, x0, 4	# 1208
	mul		x9, x30, x9	# 1208
	add		x9, x19, x9	# 1208
	flw		f3, 0(x9)	# 1208
	fmul	f2, f2, f3	# 1208
	addi	x9, x17, 64336	# 1208
	fsw		f2, 0(x9)	# 1208
beq_cont.32933:
	addi	x9, x0, 1	# 1209
	jal		x0, beq_cont.32925	# 121
fle.32932:
	addi	x9, x0, 0	# 1210
	jal		x0, beq_cont.32925	# 120
feq.32930:
	addi	x9, x0, 0	# 1199
	jal		x0, beq_cont.32925	# 1225
beq.32928:
	add		x9, x19, x17	# 1188
	flw		f2, 0(x9)	# 1188
	fle		f1, f2, fle.32936	# 122
	mul		x9, x30, x12	# 1189
	add		x9, x22, x9	# 1189
	flw		f3, 0(x9)	# 1189
	fmul	f2, f2, f3	# 1189
	addi	x9, x17, 64336	# 1189
	fsw		f2, 0(x9)	# 1189
	addi	x9, x0, 1	# 1190
	jal		x0, beq_cont.32925	# 122
fle.32936:
	addi	x9, x0, 0	# 1191
	jal		x0, beq_cont.32925	# 1223
beq.32926:
	add		x10, x19, x17	# 1106
	flw		f5, 0(x10)	# 1106
	fsub	f5, f5, f2	# 1106
	add		x10, x19, x23	# 1106
	flw		f6, 0(x10)	# 1106
	fmul	f5, f5, f6	# 1106
	add		x10, x16, x23	# 1108
	flw		f7, 0(x10)	# 1108
	fmul	f8, f5, f7	# 1108
	fadd	f8, f8, f3	# 1108
	fle		f8, f1, fle.32938	# 124
	jal		x0, fle_cont.32937	# 124
fle.32938:
	fsub	f8, f0, f8	# 124
fle_cont.32937:
	lw		x10, 16(x21)	# 443
	add		x21, x10, x23	# 448
	flw		f9, 0(x21)	# 448
	fle		f9, f8, fle.32940	# 125
	add		x21, x16, x24	# 1109
	flw		f8, 0(x21)	# 1109
	fmul	f8, f5, f8	# 1109
	fadd	f8, f8, f4	# 1109
	fle		f8, f1, fle.32942	# 124
	jal		x0, fle_cont.32941	# 124
fle.32942:
	fsub	f8, f0, f8	# 124
fle_cont.32941:
	add		x21, x10, x24	# 458
	flw		f10, 0(x21)	# 458
	fle		f10, f8, fle.32944	# 125
	feq		f6, f1, feq.32946	# 120
	addi	x21, x0, 1	# 1110
	jal		x0, fle_cont.32939	# 120
feq.32946:
	addi	x21, x0, 0	# 1110
	jal		x0, fle_cont.32939	# 125
fle.32944:
	addi	x21, x0, 0	# 1111
	jal		x0, fle_cont.32939	# 125
fle.32940:
	addi	x21, x0, 0	# 1112
fle_cont.32939:
	beq		x21, x13, beq.32948	# 1107
	addi	x9, x17, 64336	# 1114
	fsw		f5, 0(x9)	# 1114
	addi	x9, x0, 1	# 1114
	jal		x0, beq_cont.32925	# 1107
beq.32948:
	add		x21, x19, x24	# 1115
	flw		f5, 0(x21)	# 1115
	fsub	f5, f5, f3	# 1115
	mul		x12, x30, x12	# 1115
	add		x12, x19, x12	# 1115
	flw		f6, 0(x12)	# 1115
	fmul	f5, f5, f6	# 1115
	add		x12, x16, x17	# 1117
	flw		f8, 0(x12)	# 1117
	fmul	f10, f5, f8	# 1117
	fadd	f10, f10, f2	# 1117
	fle		f10, f1, fle.32950	# 124
	jal		x0, fle_cont.32949	# 124
fle.32950:
	fsub	f10, f0, f10	# 124
fle_cont.32949:
	add		x12, x10, x17	# 438
	flw		f11, 0(x12)	# 438
	fle		f11, f10, fle.32952	# 125
	add		x12, x16, x24	# 1118
	flw		f10, 0(x12)	# 1118
	fmul	f10, f5, f10	# 1118
	fadd	f10, f10, f4	# 1118
	fle		f10, f1, fle.32954	# 124
	jal		x0, fle_cont.32953	# 124
fle.32954:
	fsub	f10, f0, f10	# 124
fle_cont.32953:
	add		x10, x10, x24	# 458
	flw		f12, 0(x10)	# 458
	fle		f12, f10, fle.32956	# 125
	feq		f6, f1, feq.32958	# 120
	addi	x10, x0, 1	# 1119
	jal		x0, fle_cont.32951	# 120
feq.32958:
	addi	x10, x0, 0	# 1119
	jal		x0, fle_cont.32951	# 125
fle.32956:
	addi	x10, x0, 0	# 1120
	jal		x0, fle_cont.32951	# 125
fle.32952:
	addi	x10, x0, 0	# 1121
fle_cont.32951:
	beq		x10, x13, beq.32960	# 1116
	addi	x9, x17, 64336	# 1123
	fsw		f5, 0(x9)	# 1123
	addi	x9, x0, 2	# 1123
	jal		x0, beq_cont.32925	# 1116
beq.32960:
	addi	x10, x0, 4	# 1124
	mul		x10, x30, x10	# 1124
	add		x10, x19, x10	# 1124
	flw		f5, 0(x10)	# 1124
	fsub	f4, f5, f4	# 1124
	mul		x9, x30, x9	# 1124
	add		x9, x19, x9	# 1124
	flw		f5, 0(x9)	# 1124
	fmul	f4, f4, f5	# 1124
	fmul	f6, f4, f8	# 1126
	fadd	f2, f6, f2	# 1126
	fle		f2, f1, fle.32962	# 124
	jal		x0, fle_cont.32961	# 124
fle.32962:
	fsub	f2, f0, f2	# 124
fle_cont.32961:
	fle		f11, f2, fle.32964	# 125
	fmul	f2, f4, f7	# 1127
	fadd	f2, f2, f3	# 1127
	fle		f2, f1, fle.32966	# 124
	jal		x0, fle_cont.32965	# 124
fle.32966:
	fsub	f2, f0, f2	# 124
fle_cont.32965:
	fle		f9, f2, fle.32968	# 125
	feq		f5, f1, feq.32970	# 120
	addi	x9, x0, 1	# 1128
	jal		x0, fle_cont.32963	# 120
feq.32970:
	addi	x9, x0, 0	# 1128
	jal		x0, fle_cont.32963	# 125
fle.32968:
	addi	x9, x0, 0	# 1129
	jal		x0, fle_cont.32963	# 125
fle.32964:
	addi	x9, x0, 0	# 1130
fle_cont.32963:
	beq		x9, x13, beq.32972	# 1125
	addi	x9, x17, 64336	# 1132
	fsw		f4, 0(x9)	# 1132
	addi	x9, x0, 3	# 1132
	jal		x0, beq_cont.32925	# 1125
beq.32972:
	addi	x9, x0, 0	# 1134
beq_cont.32925:
	beq		x9, x13, beq.32974	# 1605
	addi	x10, x17, 64336	# 1609
	flw		f2, 0(x10)	# 1609
	sw		x15, -32(x2)	# 125
	fle		f2, f1, fle_cont.32975	# 125
	addi	x10, x17, 64344	# 1612
	flw		f1, 0(x10)	# 1612
	fle		f1, f2, fle_cont.32975	# 125
	fadd	f1, f2, f16	# 1614
	add		x12, x16, x17	# 1615
	flw		f2, 0(x12)	# 1615
	fmul	f2, f2, f1	# 1615
	addi	x12, x17, 64444	# 1615
	flw		f3, 0(x12)	# 1615
	fadd	f2, f2, f3	# 1615
	add		x12, x16, x23	# 1616
	flw		f3, 0(x12)	# 1616
	fmul	f3, f3, f1	# 1616
	addi	x12, x23, 64444	# 1616
	flw		f4, 0(x12)	# 1616
	fadd	f3, f3, f4	# 1616
	add		x12, x16, x24	# 1617
	flw		f4, 0(x12)	# 1617
	fmul	f4, f4, f1	# 1617
	addi	x12, x24, 64444	# 1617
	flw		f5, 0(x12)	# 1617
	fadd	f4, f4, f5	# 1617
	sw		x9, -36(x2)	# 1618
	fsw		f4, -40(x2)	# 1618
	fsw		f3, -44(x2)	# 1618
	fsw		f2, -48(x2)	# 1618
	sw		x10, -52(x2)	# 1618
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
	beq		x4, x5, fle_cont.32975	# 1618
	flw		f1, -56(x2)	# 1620
	lw		x4, -52(x2)	# 1620
	fsw		f1, 0(x4)	# 1620
	addi	x4, x17, 64348	# 282
	flw		f1, -48(x2)	# 282
	fsw		f1, 0(x4)	# 282
	addi	x4, x23, 64348	# 283
	flw		f1, -44(x2)	# 283
	fsw		f1, 0(x4)	# 283
	addi	x4, x24, 64348	# 284
	flw		f1, -40(x2)	# 284
	fsw		f1, 0(x4)	# 284
	addi	x4, x17, 64360	# 1622
	sw		x18, 0(x4)	# 1622
	addi	x4, x17, 64340	# 1623
	lw		x6, -36(x2)	# 1623
	sw		x6, 0(x4)	# 1623
	jal		x0, fle_cont.32975	# 1618
	jal		x0, fle_cont.32975	# 125
	jal		x0, fle_cont.32975	# 125
fle_cont.32975:
	lw		x4, -24(x2)	# 1629
	lw		x5, -32(x2)	# 1629
	lw		x6, -4(x2)	# 1629
	lw		x29, -12(x2)	# 1629
	sw		x1, -60(x2)	# 1629
	addi	x2, x2, -64	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x1, x31, 0	# 1629
	addi	x2, x2, 64	# 1629
	lw		x1, -60(x2)	# 1629
	jal		x0, beq_cont.32923	# 1605
beq.32974:
	lw		x8, 0(x20)	# 1633
	lw		x8, 24(x8)	# 415
	beq		x8, x13, beq_cont.32923	# 1633
	addi	x5, x15, 0	# 1634
	addi	x4, x14, 0	# 1634
	addi	x29, x7, 0	# 1634
	sw		x1, -60(x2)	# 1634
	addi	x2, x2, -64	# 1634
	lw		x31, 0(x29)	# 1634
	jalr	x1, x31, 0	# 1634
	addi	x2, x2, 64	# 1634
	lw		x1, -60(x2)	# 1634
	jal		x0, beq_cont.32923	# 1633
	jal		x0, beq_cont.32923	# 1602
beq_cont.32923:
	lw		x4, -28(x2)	# 1645
	lw		x5, -24(x2)	# 1645
	add		x4, x4, x5	# 1645
	mul		x6, x30, x4	# 1641
	lw		x7, -20(x2)	# 1641
	add		x6, x7, x6	# 1641
	lw		x6, 0(x6)	# 1641
	lw		x8, -16(x2)	# 1642
	beq		x6, x8, beq.32983	# 1642
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
beq.32983:
	jalr	x0, x1, 0	# 1646
beq.32922:
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
	beq		x17, x11, beq.32986	# 1653
	addi	x18, x0, 99	# 1656
	sw		x6, 0(x2)	# 1656
	sw		x5, -4(x2)	# 1656
	sw		x29, -8(x2)	# 1656
	sw		x14, -12(x2)	# 1656
	sw		x4, -16(x2)	# 1656
	beq		x17, x18, beq.32988	# 1656
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
	beq		x22, x14, beq.32990	# 1223
	beq		x22, x10, beq.32992	# 1225
	add		x9, x17, x16	# 1197
	flw		f5, 0(x9)	# 1197
	feq		f5, f1, feq.32994	# 120
	add		x9, x17, x20	# 1201
	flw		f6, 0(x9)	# 1201
	fmul	f2, f6, f2	# 1201
	add		x9, x17, x21	# 1201
	flw		f6, 0(x9)	# 1201
	fmul	f3, f6, f3	# 1201
	fadd	f2, f2, f3	# 1201
	mul		x9, x30, x12	# 1201
	add		x12, x17, x9	# 1201
	flw		f3, 0(x12)	# 1201
	fmul	f3, f3, f4	# 1201
	fadd	f2, f2, f3	# 1201
	add		x9, x19, x9	# 1202
	flw		f3, 0(x9)	# 1202
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1203
	fsub	f3, f4, f3	# 1203
	fle		f3, f1, fle.32996	# 121
	lw		x9, 24(x18)	# 415
	beq		x9, x13, beq.32998	# 1205
	fsqrt	f1, f3	# 1206
	fadd	f1, f2, f1	# 1206
	addi	x9, x0, 4	# 1206
	mul		x9, x30, x9	# 1206
	add		x9, x17, x9	# 1206
	flw		f2, 0(x9)	# 1206
	fmul	f1, f1, f2	# 1206
	addi	x9, x16, 64336	# 1206
	fsw		f1, 0(x9)	# 1206
	jal		x0, beq_cont.32997	# 1205
beq.32998:
	fsqrt	f1, f3	# 1208
	fsub	f1, f2, f1	# 1208
	addi	x9, x0, 4	# 1208
	mul		x9, x30, x9	# 1208
	add		x9, x17, x9	# 1208
	flw		f2, 0(x9)	# 1208
	fmul	f1, f1, f2	# 1208
	addi	x9, x16, 64336	# 1208
	fsw		f1, 0(x9)	# 1208
beq_cont.32997:
	addi	x9, x0, 1	# 1209
	jal		x0, beq_cont.32989	# 121
fle.32996:
	addi	x9, x0, 0	# 1210
	jal		x0, beq_cont.32989	# 120
feq.32994:
	addi	x9, x0, 0	# 1199
	jal		x0, beq_cont.32989	# 1225
beq.32992:
	add		x9, x17, x16	# 1188
	flw		f2, 0(x9)	# 1188
	fle		f1, f2, fle.33000	# 122
	mul		x9, x30, x12	# 1189
	add		x9, x19, x9	# 1189
	flw		f1, 0(x9)	# 1189
	fmul	f1, f2, f1	# 1189
	addi	x9, x16, 64336	# 1189
	fsw		f1, 0(x9)	# 1189
	addi	x9, x0, 1	# 1190
	jal		x0, beq_cont.32989	# 122
fle.33000:
	addi	x9, x0, 0	# 1191
	jal		x0, beq_cont.32989	# 1223
beq.32990:
	lw		x19, 0(x6)	# 681
	add		x22, x17, x16	# 1106
	flw		f5, 0(x22)	# 1106
	fsub	f5, f5, f2	# 1106
	add		x22, x17, x20	# 1106
	flw		f6, 0(x22)	# 1106
	fmul	f5, f5, f6	# 1106
	add		x22, x19, x20	# 1108
	flw		f7, 0(x22)	# 1108
	fmul	f8, f5, f7	# 1108
	fadd	f8, f8, f3	# 1108
	fle		f8, f1, fle.33002	# 124
	jal		x0, fle_cont.33001	# 124
fle.33002:
	fsub	f8, f0, f8	# 124
fle_cont.33001:
	lw		x18, 16(x18)	# 443
	add		x22, x18, x20	# 448
	flw		f9, 0(x22)	# 448
	fle		f9, f8, fle.33004	# 125
	add		x22, x19, x21	# 1109
	flw		f8, 0(x22)	# 1109
	fmul	f8, f5, f8	# 1109
	fadd	f8, f8, f4	# 1109
	fle		f8, f1, fle.33006	# 124
	jal		x0, fle_cont.33005	# 124
fle.33006:
	fsub	f8, f0, f8	# 124
fle_cont.33005:
	add		x22, x18, x21	# 458
	flw		f10, 0(x22)	# 458
	fle		f10, f8, fle.33008	# 125
	feq		f6, f1, feq.33010	# 120
	addi	x22, x0, 1	# 1110
	jal		x0, fle_cont.33003	# 120
feq.33010:
	addi	x22, x0, 0	# 1110
	jal		x0, fle_cont.33003	# 125
fle.33008:
	addi	x22, x0, 0	# 1111
	jal		x0, fle_cont.33003	# 125
fle.33004:
	addi	x22, x0, 0	# 1112
fle_cont.33003:
	beq		x22, x13, beq.33012	# 1107
	addi	x9, x16, 64336	# 1114
	fsw		f5, 0(x9)	# 1114
	addi	x9, x0, 1	# 1114
	jal		x0, beq_cont.32989	# 1107
beq.33012:
	add		x22, x17, x21	# 1115
	flw		f5, 0(x22)	# 1115
	fsub	f5, f5, f3	# 1115
	mul		x12, x30, x12	# 1115
	add		x12, x17, x12	# 1115
	flw		f6, 0(x12)	# 1115
	fmul	f5, f5, f6	# 1115
	add		x12, x19, x16	# 1117
	flw		f8, 0(x12)	# 1117
	fmul	f10, f5, f8	# 1117
	fadd	f10, f10, f2	# 1117
	fle		f10, f1, fle.33014	# 124
	jal		x0, fle_cont.33013	# 124
fle.33014:
	fsub	f10, f0, f10	# 124
fle_cont.33013:
	add		x12, x18, x16	# 438
	flw		f11, 0(x12)	# 438
	fle		f11, f10, fle.33016	# 125
	add		x12, x19, x21	# 1118
	flw		f10, 0(x12)	# 1118
	fmul	f10, f5, f10	# 1118
	fadd	f10, f10, f4	# 1118
	fle		f10, f1, fle.33018	# 124
	jal		x0, fle_cont.33017	# 124
fle.33018:
	fsub	f10, f0, f10	# 124
fle_cont.33017:
	add		x12, x18, x21	# 458
	flw		f12, 0(x12)	# 458
	fle		f12, f10, fle.33020	# 125
	feq		f6, f1, feq.33022	# 120
	addi	x12, x0, 1	# 1119
	jal		x0, fle_cont.33015	# 120
feq.33022:
	addi	x12, x0, 0	# 1119
	jal		x0, fle_cont.33015	# 125
fle.33020:
	addi	x12, x0, 0	# 1120
	jal		x0, fle_cont.33015	# 125
fle.33016:
	addi	x12, x0, 0	# 1121
fle_cont.33015:
	beq		x12, x13, beq.33024	# 1116
	addi	x9, x16, 64336	# 1123
	fsw		f5, 0(x9)	# 1123
	addi	x9, x0, 2	# 1123
	jal		x0, beq_cont.32989	# 1116
beq.33024:
	addi	x12, x0, 4	# 1124
	mul		x12, x30, x12	# 1124
	add		x12, x17, x12	# 1124
	flw		f5, 0(x12)	# 1124
	fsub	f4, f5, f4	# 1124
	mul		x9, x30, x9	# 1124
	add		x9, x17, x9	# 1124
	flw		f5, 0(x9)	# 1124
	fmul	f4, f4, f5	# 1124
	fmul	f6, f4, f8	# 1126
	fadd	f2, f6, f2	# 1126
	fle		f2, f1, fle.33026	# 124
	jal		x0, fle_cont.33025	# 124
fle.33026:
	fsub	f2, f0, f2	# 124
fle_cont.33025:
	fle		f11, f2, fle.33028	# 125
	fmul	f2, f4, f7	# 1127
	fadd	f2, f2, f3	# 1127
	fle		f2, f1, fle.33030	# 124
	jal		x0, fle_cont.33029	# 124
fle.33030:
	fsub	f2, f0, f2	# 124
fle_cont.33029:
	fle		f9, f2, fle.33032	# 125
	feq		f5, f1, feq.33034	# 120
	addi	x9, x0, 1	# 1128
	jal		x0, fle_cont.33027	# 120
feq.33034:
	addi	x9, x0, 0	# 1128
	jal		x0, fle_cont.33027	# 125
fle.33032:
	addi	x9, x0, 0	# 1129
	jal		x0, fle_cont.33027	# 125
fle.33028:
	addi	x9, x0, 0	# 1130
fle_cont.33027:
	beq		x9, x13, beq.33036	# 1125
	addi	x9, x16, 64336	# 1132
	fsw		f4, 0(x9)	# 1132
	addi	x9, x0, 3	# 1132
	jal		x0, beq_cont.32989	# 1125
beq.33036:
	addi	x9, x0, 0	# 1134
beq_cont.32989:
	beq		x9, x13, beq_cont.32987	# 1662
	addi	x9, x16, 64336	# 1663
	flw		f1, 0(x9)	# 1663
	addi	x9, x16, 64344	# 1664
	flw		f2, 0(x9)	# 1664
	fle		f2, f1, beq_cont.32987	# 125
	add		x9, x15, x20	# 1641
	lw		x9, 0(x9)	# 1641
	beq		x9, x11, beq_cont.32987	# 1642
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
	jal		x0, beq_cont.32987	# 1642
	jal		x0, beq_cont.32987	# 125
	jal		x0, beq_cont.32987	# 1662
	jal		x0, beq_cont.32987	# 1656
beq.32988:
	mul		x9, x30, x14	# 1641
	add		x9, x15, x9	# 1641
	lw		x9, 0(x9)	# 1641
	beq		x9, x11, beq_cont.32987	# 1642
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
	jal		x0, beq_cont.32987	# 1642
beq_cont.32987:
	lw		x4, -16(x2)	# 1669
	lw		x5, -12(x2)	# 1669
	add		x4, x4, x5	# 1669
	lw		x5, -4(x2)	# 1669
	lw		x6, 0(x2)	# 1669
	lw		x29, -8(x2)	# 1669
	lw		x31, 0(x29)	# 1669
	jalr	x0, x31, 0	# 1669
beq.32986:
	jalr	x0, x1, 0	# 1654
trace_reflections.2847.17950:
	lw		x6, 28(x29)	# 1846
	lw		x7, 24(x29)	# 1846
	lw		x8, 20(x29)	# 1846
	lw		x9, 16(x29)	# 1846
	lw		x10, 12(x29)	# 1846
	flw		f3, 8(x29)	# 1846
	flw		f4, 4(x29)	# 1846
	ble		x9, x4, ble.33046	# 1846
	jalr	x0, x1, 0	# 1866
ble.33046:
	mul		x11, x30, x4	# 1847
	addi	x11, x11, 64812	# 1847
	lw		x11, 0(x11)	# 1847
	lw		x12, 4(x11)	# 703
	mul		x13, x30, x9	# 1676
	addi	x14, x13, 64344	# 1676
	fsw		f3, 0(x14)	# 1676
	addi	x15, x13, 64332	# 1677
	lw		x16, 0(x15)	# 1677
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
	sw		x15, -40(x2)	# 1677
	sw		x11, -44(x2)	# 1677
	sw		x13, -48(x2)	# 1677
	sw		x9, -52(x2)	# 1677
	sw		x14, -56(x2)	# 1677
	addi	x5, x16, 0	# 1677
	addi	x4, x9, 0	# 1677
	addi	x29, x6, 0	# 1677
	addi	x6, x12, 0	# 1677
	sw		x1, -60(x2)	# 1677
	addi	x2, x2, -64	# 1677
	lw		x31, 0(x29)	# 1677
	jalr	x1, x31, 0	# 1677
	addi	x2, x2, 64	# 1677
	lw		x1, -60(x2)	# 1677
	lw		x4, -56(x2)	# 1678
	flw		f1, 0(x4)	# 1678
	fle		f1, f18, fle.33049	# 125
	fle		f19, f1, fle.33051	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.33048	# 125
fle.33051:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.33048	# 125
fle.33049:
	addi	x4, x0, 0	# 1682
fle_cont.33048:
	lw		x5, -52(x2)	# 1851
	beq		x4, x5, beq_cont.33052	# 1851
	lw		x4, -48(x2)	# 1852
	addi	x6, x4, 64360	# 1852
	lw		x6, 0(x6)	# 1852
	addi	x7, x0, 4	# 1852
	mul		x6, x6, x7	# 1852
	addi	x7, x4, 64340	# 1852
	lw		x7, 0(x7)	# 1852
	add		x6, x6, x7	# 1852
	lw		x7, -44(x2)	# 697
	lw		x8, 0(x7)	# 697
	beq		x6, x8, beq.33055	# 1853
	jal		x0, beq_cont.33052	# 1853
beq.33055:
	lw		x6, -40(x2)	# 1855
	lw		x6, 0(x6)	# 1855
	lw		x29, -36(x2)	# 1855
	addi	x4, x5, 0	# 1855
	addi	x5, x6, 0	# 1855
	sw		x1, -60(x2)	# 1855
	addi	x2, x2, -64	# 1855
	lw		x31, 0(x29)	# 1855
	jalr	x1, x31, 0	# 1855
	addi	x2, x2, 64	# 1855
	lw		x1, -60(x2)	# 1855
	lw		x5, -52(x2)	# 1855
	beq		x4, x5, beq.33057	# 1855
	jal		x0, beq_cont.33052	# 1855
beq.33057:
	lw		x4, -32(x2)	# 681
	lw		x4, 0(x4)	# 681
	lw		x5, -48(x2)	# 334
	addi	x6, x5, 64364	# 334
	flw		f1, 0(x6)	# 334
	add		x6, x4, x5	# 334
	flw		f2, 0(x6)	# 334
	fmul	f1, f1, f2	# 334
	lw		x6, -28(x2)	# 334
	mul		x7, x30, x6	# 334
	addi	x8, x7, 64364	# 334
	flw		f3, 0(x8)	# 334
	add		x8, x4, x7	# 334
	flw		f4, 0(x8)	# 334
	fmul	f3, f3, f4	# 334
	fadd	f1, f1, f3	# 334
	lw		x8, -24(x2)	# 334
	mul		x8, x30, x8	# 334
	addi	x9, x8, 64364	# 334
	flw		f3, 0(x9)	# 334
	add		x4, x4, x8	# 334
	flw		f5, 0(x4)	# 334
	fmul	f3, f3, f5	# 334
	fadd	f1, f1, f3	# 334
	lw		x4, -44(x2)	# 1859
	flw		f3, 8(x4)	# 1859
	flw		f6, -20(x2)	# 1859
	fmul	f7, f3, f6	# 1859
	fmul	f1, f7, f1	# 1859
	lw		x4, -16(x2)	# 334
	add		x9, x4, x5	# 334
	flw		f7, 0(x9)	# 334
	fmul	f2, f7, f2	# 334
	add		x9, x4, x7	# 334
	flw		f7, 0(x9)	# 334
	fmul	f4, f7, f4	# 334
	fadd	f2, f2, f4	# 334
	add		x9, x4, x8	# 334
	flw		f4, 0(x9)	# 334
	fmul	f4, f4, f5	# 334
	fadd	f2, f2, f4	# 334
	fmul	f2, f3, f2	# 1860
	flw		f3, -12(x2)	# 121
	fle		f1, f3, fle_cont.33058	# 121
	addi	x9, x5, 64400	# 344
	flw		f4, 0(x9)	# 344
	addi	x10, x5, 64376	# 344
	flw		f5, 0(x10)	# 344
	fmul	f5, f1, f5	# 344
	fadd	f4, f4, f5	# 344
	fsw		f4, 0(x9)	# 344
	addi	x9, x7, 64400	# 345
	flw		f4, 0(x9)	# 345
	addi	x10, x7, 64376	# 345
	flw		f5, 0(x10)	# 345
	fmul	f5, f1, f5	# 345
	fadd	f4, f4, f5	# 345
	fsw		f4, 0(x9)	# 345
	addi	x9, x8, 64400	# 346
	flw		f4, 0(x9)	# 346
	addi	x10, x8, 64376	# 346
	flw		f5, 0(x10)	# 346
	fmul	f1, f1, f5	# 346
	fadd	f1, f4, f1	# 346
	fsw		f1, 0(x9)	# 346
	jal		x0, fle_cont.33058	# 121
fle_cont.33058:
	fle		f2, f3, beq_cont.33052	# 121
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -8(x2)	# 1836
	fmul	f1, f1, f2	# 1836
	addi	x5, x5, 64400	# 1837
	flw		f3, 0(x5)	# 1837
	fadd	f3, f3, f1	# 1837
	fsw		f3, 0(x5)	# 1837
	addi	x5, x7, 64400	# 1838
	flw		f3, 0(x5)	# 1838
	fadd	f3, f3, f1	# 1838
	fsw		f3, 0(x5)	# 1838
	addi	x5, x8, 64400	# 1839
	flw		f3, 0(x5)	# 1839
	fadd	f1, f3, f1	# 1839
	fsw		f1, 0(x5)	# 1839
	jal		x0, beq_cont.33052	# 121
	jal		x0, beq_cont.33052	# 1851
beq_cont.33052:
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
	ble		x4, x19, ble.33062	# 1874
	jalr	x0, x1, 0	# 1955
ble.33062:
	lw		x20, 8(x6)	# 619
	mul		x21, x30, x17	# 1585
	addi	x22, x21, 64344	# 1585
	fsw		f3, 0(x22)	# 1585
	addi	x23, x21, 64332	# 1586
	lw		x24, 0(x23)	# 1586
	sw		x29, 0(x2)	# 1586
	fsw		f2, -4(x2)	# 1586
	sw		x7, -8(x2)	# 1586
	sw		x11, -12(x2)	# 1586
	sw		x10, -16(x2)	# 1586
	sw		x23, -20(x2)	# 1586
	sw		x6, -24(x2)	# 1586
	sw		x13, -28(x2)	# 1586
	sw		x19, -32(x2)	# 1586
	sw		x12, -36(x2)	# 1586
	sw		x16, -40(x2)	# 1586
	sw		x9, -44(x2)	# 1586
	fsw		f4, -48(x2)	# 1586
	fsw		f1, -52(x2)	# 1586
	fsw		f5, -56(x2)	# 1586
	sw		x14, -60(x2)	# 1586
	sw		x18, -64(x2)	# 1586
	sw		x21, -68(x2)	# 1586
	sw		x5, -72(x2)	# 1586
	sw		x15, -76(x2)	# 1586
	sw		x20, -80(x2)	# 1586
	sw		x4, -84(x2)	# 1586
	sw		x17, -88(x2)	# 1586
	sw		x22, -92(x2)	# 1586
	addi	x6, x5, 0	# 1586
	addi	x4, x17, 0	# 1586
	addi	x29, x8, 0	# 1586
	addi	x5, x24, 0	# 1586
	sw		x1, -96(x2)	# 1586
	addi	x2, x2, -100	# 1586
	lw		x31, 0(x29)	# 1586
	jalr	x1, x31, 0	# 1586
	addi	x2, x2, 100	# 1586
	lw		x1, -96(x2)	# 1586
	lw		x4, -92(x2)	# 1587
	flw		f1, 0(x4)	# 1587
	fle		f1, f18, fle.33065	# 125
	fle		f19, f1, fle.33067	# 125
	addi	x5, x0, 1	# 125
	jal		x0, fle_cont.33064	# 125
fle.33067:
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.33064	# 125
fle.33065:
	addi	x5, x0, 0	# 1591
fle_cont.33064:
	lw		x6, -88(x2)	# 1876
	beq		x5, x6, beq.33068	# 1876
	lw		x5, -68(x2)	# 1878
	addi	x7, x5, 64360	# 1878
	lw		x7, 0(x7)	# 1878
	mul		x8, x30, x7	# 1879
	addi	x8, x8, 63844	# 1879
	lw		x8, 0(x8)	# 1879
	lw		x9, 8(x8)	# 405
	lw		x10, 28(x8)	# 503
	add		x10, x10, x5	# 508
	flw		f1, 0(x10)	# 508
	flw		f2, -52(x2)	# 1881
	fmul	f1, f1, f2	# 1881
	lw		x10, 4(x8)	# 395
	lw		x11, -64(x2)	# 1735
	beq		x10, x11, beq.33070	# 1735
	lw		x12, -60(x2)	# 1737
	beq		x10, x12, beq.33072	# 1737
	addi	x10, x5, 64348	# 1712
	flw		f3, 0(x10)	# 1712
	lw		x10, 20(x8)	# 473
	add		x13, x10, x5	# 478
	flw		f4, 0(x13)	# 478
	fsub	f3, f3, f4	# 1712
	mul		x13, x30, x11	# 1713
	addi	x14, x13, 64348	# 1713
	flw		f4, 0(x14)	# 1713
	add		x14, x10, x13	# 488
	flw		f5, 0(x14)	# 488
	fsub	f4, f4, f5	# 1713
	mul		x14, x30, x12	# 1714
	addi	x15, x14, 64348	# 1714
	flw		f5, 0(x15)	# 1714
	add		x10, x10, x14	# 498
	flw		f6, 0(x10)	# 498
	fsub	f5, f5, f6	# 1714
	lw		x10, 16(x8)	# 433
	add		x15, x10, x5	# 438
	flw		f6, 0(x15)	# 438
	fmul	f6, f3, f6	# 1716
	add		x15, x10, x13	# 448
	flw		f7, 0(x15)	# 448
	fmul	f7, f4, f7	# 1717
	add		x10, x10, x14	# 458
	flw		f8, 0(x10)	# 458
	fmul	f8, f5, f8	# 1718
	lw		x10, 12(x8)	# 424
	beq		x10, x6, beq.33074	# 1720
	lw		x10, 36(x8)	# 573
	add		x15, x10, x14	# 578
	flw		f9, 0(x15)	# 578
	fmul	f9, f4, f9	# 1725
	add		x10, x10, x13	# 568
	flw		f10, 0(x10)	# 568
	fmul	f10, f5, f10	# 1725
	fadd	f9, f9, f10	# 1725
	fmul	f9, f9, f26	# 126
	fadd	f6, f6, f9	# 1725
	addi	x10, x5, 64364	# 1725
	fsw		f6, 0(x10)	# 1725
	lw		x10, 36(x8)	# 573
	add		x15, x10, x14	# 578
	flw		f6, 0(x15)	# 578
	fmul	f6, f3, f6	# 1726
	add		x10, x10, x5	# 558
	flw		f9, 0(x10)	# 558
	fmul	f5, f5, f9	# 1726
	fadd	f5, f6, f5	# 1726
	fmul	f5, f5, f26	# 126
	fadd	f5, f7, f5	# 1726
	addi	x10, x13, 64364	# 1726
	fsw		f5, 0(x10)	# 1726
	lw		x10, 36(x8)	# 563
	add		x15, x10, x13	# 568
	flw		f5, 0(x15)	# 568
	fmul	f3, f3, f5	# 1727
	add		x10, x10, x5	# 558
	flw		f5, 0(x10)	# 558
	fmul	f4, f4, f5	# 1727
	fadd	f3, f3, f4	# 1727
	fmul	f3, f3, f26	# 126
	fadd	f3, f8, f3	# 1727
	addi	x10, x14, 64364	# 1727
	fsw		f3, 0(x10)	# 1727
	jal		x0, beq_cont.33073	# 1720
beq.33074:
	addi	x10, x5, 64364	# 1721
	fsw		f6, 0(x10)	# 1721
	addi	x10, x13, 64364	# 1722
	fsw		f7, 0(x10)	# 1722
	addi	x10, x14, 64364	# 1723
	fsw		f8, 0(x10)	# 1723
beq_cont.33073:
	lw		x10, 24(x8)	# 415
	addi	x15, x5, 64364	# 325
	flw		f3, 0(x15)	# 325
	fmul	f4, f3, f3	# 127
	addi	x13, x13, 64364	# 325
	flw		f5, 0(x13)	# 325
	fmul	f5, f5, f5	# 127
	fadd	f4, f4, f5	# 325
	addi	x14, x14, 64364	# 325
	flw		f5, 0(x14)	# 325
	fmul	f5, f5, f5	# 127
	fadd	f4, f4, f5	# 325
	fsqrt	f4, f4	# 325
	flw		f5, -56(x2)	# 120
	feq		f4, f5, feq.33076	# 120
	beq		x10, x6, beq.33078	# 326
	fdiv	f4, f22, f4	# 326
	jal		x0, feq_cont.33075	# 326
beq.33078:
	fdiv	f4, f30, f4	# 326
	jal		x0, feq_cont.33075	# 120
feq.33076:
	fadd	f4, f0, f30	# 326
feq_cont.33075:
	fmul	f3, f3, f4	# 327
	fsw		f3, 0(x15)	# 327
	flw		f3, 0(x13)	# 328
	fmul	f3, f3, f4	# 328
	fsw		f3, 0(x13)	# 328
	flw		f3, 0(x14)	# 329
	fmul	f3, f3, f4	# 329
	fsw		f3, 0(x14)	# 329
	jal		x0, beq_cont.33069	# 1737
beq.33072:
	lw		x10, 16(x8)	# 433
	add		x10, x10, x5	# 438
	flw		f3, 0(x10)	# 438
	fsub	f3, f0, f3	# 123
	addi	x10, x5, 64364	# 1705
	fsw		f3, 0(x10)	# 1705
	lw		x10, 16(x8)	# 443
	mul		x13, x30, x11	# 448
	add		x10, x10, x13	# 448
	flw		f3, 0(x10)	# 448
	fsub	f3, f0, f3	# 123
	addi	x10, x13, 64364	# 1706
	fsw		f3, 0(x10)	# 1706
	lw		x10, 16(x8)	# 453
	mul		x13, x30, x12	# 458
	add		x10, x10, x13	# 458
	flw		f3, 0(x10)	# 458
	fsub	f3, f0, f3	# 123
	addi	x10, x13, 64364	# 1707
	fsw		f3, 0(x10)	# 1707
	jal		x0, beq_cont.33069	# 1735
beq.33070:
	addi	x10, x5, 64340	# 1696
	lw		x10, 0(x10)	# 1696
	addi	x12, x5, 64364	# 289
	flw		f3, -56(x2)	# 289
	fsw		f3, 0(x12)	# 289
	mul		x12, x30, x11	# 290
	addi	x12, x12, 64364	# 290
	fsw		f3, 0(x12)	# 290
	lw		x12, -60(x2)	# 291
	mul		x13, x30, x12	# 291
	addi	x13, x13, 64364	# 291
	fsw		f3, 0(x13)	# 291
	sub		x10, x10, x11	# 1699
	mul		x10, x30, x10	# 1699
	lw		x13, -72(x2)	# 1699
	add		x14, x13, x10	# 1699
	flw		f4, 0(x14)	# 1699
	feq		f4, f3, feq.33080	# 120
	fle		f4, f3, fle.33082	# 121
	fadd	f4, f0, f30	# 255
	jal		x0, feq_cont.33079	# 121
fle.33082:
	fadd	f4, f0, f22	# 256
	jal		x0, feq_cont.33079	# 120
feq.33080:
	fadd	f4, f0, f3	# 254
feq_cont.33079:
	fsub	f4, f0, f4	# 123
	addi	x10, x10, 64364	# 1699
	fsw		f4, 0(x10)	# 1699
beq_cont.33069:
	addi	x10, x5, 64348	# 301
	flw		f3, 0(x10)	# 301
	addi	x13, x5, 64432	# 301
	fsw		f3, 0(x13)	# 301
	mul		x13, x30, x11	# 302
	addi	x14, x13, 64348	# 302
	flw		f3, 0(x14)	# 302
	addi	x15, x13, 64432	# 302
	fsw		f3, 0(x15)	# 302
	mul		x15, x30, x12	# 303
	addi	x16, x15, 64348	# 303
	flw		f3, 0(x16)	# 303
	addi	x17, x15, 64432	# 303
	fsw		f3, 0(x17)	# 303
	lw		x17, 0(x8)	# 385
	lw		x18, 32(x8)	# 523
	add		x18, x18, x5	# 528
	flw		f3, 0(x18)	# 528
	addi	x18, x5, 64376	# 1752
	fsw		f3, 0(x18)	# 1752
	lw		x19, 32(x8)	# 533
	add		x19, x19, x13	# 538
	flw		f3, 0(x19)	# 538
	addi	x19, x13, 64376	# 1753
	fsw		f3, 0(x19)	# 1753
	lw		x20, 32(x8)	# 543
	add		x20, x20, x15	# 548
	flw		f3, 0(x20)	# 548
	addi	x20, x15, 64376	# 1754
	fsw		f3, 0(x20)	# 1754
	fsw		f1, -96(x2)	# 1755
	sw		x7, -100(x2)	# 1755
	beq		x17, x11, beq.33084	# 1755
	beq		x17, x12, beq.33086	# 1773
	lw		x21, -40(x2)	# 1780
	beq		x17, x21, beq.33088	# 1780
	lw		x21, -32(x2)	# 1791
	beq		x17, x21, beq.33090	# 1791
	jal		x0, beq_cont.33083	# 1791
beq.33090:
	flw		f3, 0(x10)	# 1793
	lw		x17, 20(x8)	# 473
	add		x22, x17, x5	# 478
	flw		f4, 0(x22)	# 478
	fsub	f3, f3, f4	# 1793
	lw		x22, 16(x8)	# 433
	add		x23, x22, x5	# 438
	flw		f4, 0(x23)	# 438
	fsqrt	f4, f4	# 1793
	fmul	f3, f3, f4	# 1793
	flw		f4, 0(x16)	# 1794
	add		x23, x17, x15	# 498
	flw		f5, 0(x23)	# 498
	fsub	f4, f4, f5	# 1794
	add		x23, x22, x15	# 458
	flw		f5, 0(x23)	# 458
	fsqrt	f5, f5	# 1794
	fmul	f4, f4, f5	# 1794
	fmul	f5, f3, f3	# 127
	fmul	f6, f4, f4	# 127
	fadd	f5, f5, f6	# 1795
	flw		f6, -56(x2)	# 124
	fle		f3, f6, fle.33092	# 124
	fadd	f7, f0, f3	# 124
	jal		x0, fle_cont.33091	# 124
fle.33092:
	fsub	f7, f0, f3	# 124
fle_cont.33091:
	lui		x23, %hi(l.27807)	# 1797
	ori		x23, x0, %lo(l.27807)	# 1797
	flw		f8, 0(x23)	# 1797
	fsw		f5, -104(x2)	# 125
	fle		f8, f7, fle.33094	# 125
	lui		x23, %hi(l.27809)	# 1798
	ori		x23, x0, %lo(l.27809)	# 1798
	flw		f1, 0(x23)	# 1798
	jal		x0, fle_cont.33093	# 125
fle.33094:
	fdiv	f3, f4, f3	# 1800
	fle		f3, f6, fle.33096	# 124
	jal		x0, fle_cont.33095	# 124
fle.33096:
	fsub	f3, f0, f3	# 124
fle_cont.33095:
	lw		x29, -28(x2)	# 1802
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
fle_cont.33093:
	fsw		f1, -108(x2)	# 1804
	sw		x1, -112(x2)	# 1804
	addi	x2, x2, -116	# 1804
	jal		x1, min_caml_floor	# 1804
	addi	x2, x2, 116	# 1804
	lw		x1, -112(x2)	# 1804
	flw		f2, -108(x2)	# 1804
	fsub	f1, f2, f1	# 1804
	flw		f2, 0(x14)	# 1806
	add		x4, x17, x13	# 488
	flw		f3, 0(x4)	# 488
	fsub	f2, f2, f3	# 1806
	add		x4, x22, x13	# 448
	flw		f3, 0(x4)	# 448
	fsqrt	f3, f3	# 1806
	fmul	f2, f2, f3	# 1806
	flw		f3, -104(x2)	# 124
	fle		f3, f6, fle.33098	# 124
	fadd	f4, f0, f3	# 124
	jal		x0, fle_cont.33097	# 124
fle.33098:
	fsub	f4, f0, f3	# 124
fle_cont.33097:
	fsw		f1, -112(x2)	# 125
	fle		f8, f4, fle.33100	# 125
	lui		x4, %hi(l.27809)	# 1809
	ori		x4, x0, %lo(l.27809)	# 1809
	flw		f1, 0(x4)	# 1809
	jal		x0, fle_cont.33099	# 125
fle.33100:
	fdiv	f2, f2, f3	# 1811
	fle		f2, f6, fle.33102	# 124
	jal		x0, fle_cont.33101	# 124
fle.33102:
	fsub	f2, f0, f2	# 124
fle_cont.33101:
	lw		x29, -28(x2)	# 1812
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
fle_cont.33099:
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
	fle		f6, f1, fle_cont.33103	# 122
	fadd	f1, f0, f6	# 1816
	jal		x0, fle_cont.33103	# 122
fle_cont.33103:
	flw		f2, -48(x2)	# 1817
	fmul	f1, f2, f1	# 1817
	lui		x4, %hi(l.27827)	# 1817
	ori		x4, x0, %lo(l.27827)	# 1817
	flw		f2, 0(x4)	# 1817
	fdiv	f1, f1, f2	# 1817
	fsw		f1, 0(x20)	# 1817
	jal		x0, beq_cont.33083	# 1780
beq.33088:
	flw		f3, 0(x10)	# 1783
	lw		x17, 20(x8)	# 473
	add		x21, x17, x5	# 478
	flw		f4, 0(x21)	# 478
	fsub	f3, f3, f4	# 1783
	flw		f4, 0(x16)	# 1784
	add		x17, x17, x15	# 498
	flw		f5, 0(x17)	# 498
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
	lw		x29, -36(x2)	# 1787
	sw		x1, -124(x2)	# 1787
	addi	x2, x2, -128	# 1787
	lw		x31, 0(x29)	# 1787
	jalr	x1, x31, 0	# 1787
	addi	x2, x2, 128	# 1787
	lw		x1, -124(x2)	# 1787
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1788
	fmul	f3, f1, f2	# 1788
	fsw		f3, 0(x19)	# 1788
	fsub	f1, f30, f1	# 1789
	fmul	f1, f1, f2	# 1789
	fsw		f1, 0(x20)	# 1789
	jal		x0, beq_cont.33083	# 1773
beq.33086:
	flw		f3, 0(x14)	# 1776
	lui		x17, %hi(l.27849)	# 1776
	ori		x17, x0, %lo(l.27849)	# 1776
	flw		f4, 0(x17)	# 1776
	fmul	f3, f3, f4	# 1776
	lw		x29, -44(x2)	# 1776
	fadd	f1, f0, f3	# 1776
	sw		x1, -124(x2)	# 1776
	addi	x2, x2, -128	# 1776
	lw		x31, 0(x29)	# 1776
	jalr	x1, x31, 0	# 1776
	addi	x2, x2, 128	# 1776
	lw		x1, -124(x2)	# 1776
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1777
	fmul	f3, f2, f1	# 1777
	fsw		f3, 0(x18)	# 1777
	fsub	f1, f30, f1	# 1778
	fmul	f1, f2, f1	# 1778
	fsw		f1, 0(x19)	# 1778
	jal		x0, beq_cont.33083	# 1755
beq.33084:
	flw		f3, 0(x10)	# 1758
	lw		x17, 20(x8)	# 473
	add		x21, x17, x5	# 478
	flw		f4, 0(x21)	# 478
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
	flw		f5, 0(x16)	# 1763
	add		x4, x17, x15	# 498
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
	fle		f23, f2, fle.33106	# 125
	fle		f23, f1, fle.33108	# 125
	flw		f1, -48(x2)	# 1770
	jal		x0, fle_cont.33105	# 125
fle.33108:
	flw		f1, -56(x2)	# 1770
	jal		x0, fle_cont.33105	# 125
fle.33106:
	fle		f23, f1, fle.33110	# 125
	flw		f1, -56(x2)	# 1771
	jal		x0, fle_cont.33105	# 125
fle.33110:
	flw		f1, -48(x2)	# 1771
fle_cont.33105:
	fsw		f1, 0(x19)	# 1768
beq_cont.33083:
	lw		x4, -100(x2)	# 1888
	lw		x5, -32(x2)	# 1888
	mul		x4, x4, x5	# 1888
	lw		x6, -68(x2)	# 1888
	addi	x7, x6, 64340	# 1888
	lw		x7, 0(x7)	# 1888
	add		x4, x4, x7	# 1888
	lw		x7, -84(x2)	# 1888
	mul		x17, x30, x7	# 1888
	lw		x21, -80(x2)	# 1888
	add		x22, x21, x17	# 1888
	sw		x4, 0(x22)	# 1888
	lw		x4, -24(x2)	# 611
	lw		x22, 4(x4)	# 611
	add		x22, x22, x17	# 1890
	lw		x22, 0(x22)	# 1890
	flw		f1, 0(x10)	# 301
	add		x23, x22, x6	# 301
	fsw		f1, 0(x23)	# 301
	flw		f1, 0(x14)	# 302
	add		x23, x22, x13	# 302
	fsw		f1, 0(x23)	# 302
	flw		f1, 0(x16)	# 303
	add		x22, x22, x15	# 303
	fsw		f1, 0(x22)	# 303
	lw		x22, 12(x4)	# 626
	lw		x23, 28(x8)	# 503
	add		x23, x23, x6	# 508
	flw		f1, 0(x23)	# 508
	fle		f26, f1, fle.33112	# 125
	add		x17, x22, x17	# 1895
	lw		x22, -88(x2)	# 1895
	sw		x22, 0(x17)	# 1895
	jal		x0, fle_cont.33111	# 125
fle.33112:
	add		x22, x22, x17	# 1897
	sw		x11, 0(x22)	# 1897
	lw		x22, 16(x4)	# 633
	add		x22, x22, x17	# 1899
	lw		x23, 0(x22)	# 1899
	flw		f1, 0(x18)	# 301
	add		x24, x23, x6	# 301
	fsw		f1, 0(x24)	# 301
	flw		f1, 0(x19)	# 302
	add		x24, x23, x13	# 302
	fsw		f1, 0(x24)	# 302
	flw		f1, 0(x20)	# 303
	add		x23, x23, x15	# 303
	fsw		f1, 0(x23)	# 303
	lw		x22, 0(x22)	# 1900
	lui		x23, %hi(l.27912)	# 1900
	ori		x23, x0, %lo(l.27912)	# 1900
	flw		f1, 0(x23)	# 1900
	flw		f2, -96(x2)	# 1900
	fmul	f1, f1, f2	# 1900
	add		x23, x22, x6	# 367
	flw		f3, 0(x23)	# 367
	fmul	f3, f3, f1	# 367
	fsw		f3, 0(x23)	# 367
	add		x23, x22, x13	# 368
	flw		f3, 0(x23)	# 368
	fmul	f3, f3, f1	# 368
	fsw		f3, 0(x23)	# 368
	add		x22, x22, x15	# 369
	flw		f3, 0(x22)	# 369
	fmul	f1, f3, f1	# 369
	fsw		f1, 0(x22)	# 369
	lw		x22, 28(x4)	# 670
	add		x17, x22, x17	# 1902
	lw		x17, 0(x17)	# 1902
	addi	x22, x6, 64364	# 301
	flw		f1, 0(x22)	# 301
	add		x22, x17, x6	# 301
	fsw		f1, 0(x22)	# 301
	addi	x22, x13, 64364	# 302
	flw		f1, 0(x22)	# 302
	add		x22, x17, x13	# 302
	fsw		f1, 0(x22)	# 302
	addi	x22, x15, 64364	# 303
	flw		f1, 0(x22)	# 303
	add		x17, x17, x15	# 303
	fsw		f1, 0(x17)	# 303
fle_cont.33111:
	lw		x17, -72(x2)	# 334
	add		x22, x17, x6	# 334
	flw		f2, 0(x22)	# 334
	addi	x23, x6, 64364	# 334
	flw		f3, 0(x23)	# 334
	fmul	f4, f2, f3	# 334
	add		x24, x17, x13	# 334
	flw		f5, 0(x24)	# 334
	addi	x25, x13, 64364	# 334
	flw		f6, 0(x25)	# 334
	fmul	f5, f5, f6	# 334
	fadd	f4, f4, f5	# 334
	add		x26, x17, x15	# 334
	flw		f5, 0(x26)	# 334
	addi	x27, x15, 64364	# 334
	flw		f6, 0(x27)	# 334
	fmul	f5, f5, f6	# 334
	fadd	f4, f4, f5	# 334
	fmul	f1, f28, f4	# 1905
	fmul	f3, f1, f3	# 344
	fadd	f2, f2, f3	# 344
	fsw		f2, 0(x22)	# 344
	flw		f2, 0(x24)	# 345
	flw		f3, 0(x25)	# 345
	fmul	f3, f1, f3	# 345
	fadd	f2, f2, f3	# 345
	fsw		f2, 0(x24)	# 345
	flw		f2, 0(x26)	# 346
	flw		f3, 0(x27)	# 346
	fmul	f1, f1, f3	# 346
	fadd	f1, f2, f1	# 346
	fsw		f1, 0(x26)	# 346
	lw		x28, 28(x8)	# 513
	add		x28, x28, x13	# 518
	flw		f1, 0(x28)	# 518
	flw		f2, -52(x2)	# 1909
	fmul	f1, f2, f1	# 1909
	lw		x28, -20(x2)	# 1912
	lw		x28, 0(x28)	# 1912
	lw		x29, -88(x2)	# 1912
	lw		x31, -16(x2)	# 1912
	sw		x8, -132(x2)	# 1912
	sw		x9, -136(x2)	# 1912
	sw		x16, -140(x2)	# 1912
	sw		x14, -144(x2)	# 1912
	sw		x10, -148(x2)	# 1912
	fsw		f1, -152(x2)	# 1912
	sw		x20, -156(x2)	# 1912
	sw		x19, -160(x2)	# 1912
	sw		x18, -164(x2)	# 1912
	sw		x15, -168(x2)	# 1912
	sw		x13, -172(x2)	# 1912
	addi	x5, x28, 0	# 1912
	addi	x4, x29, 0	# 1912
	addi	x29, x31, 0	# 1912
	sw		x1, -176(x2)	# 1912
	addi	x2, x2, -180	# 1912
	lw		x31, 0(x29)	# 1912
	jalr	x1, x31, 0	# 1912
	addi	x2, x2, 180	# 1912
	lw		x1, -176(x2)	# 1912
	lw		x5, -88(x2)	# 1912
	beq		x4, x5, beq.33114	# 1912
	jal		x0, beq_cont.33113	# 1912
beq.33114:
	flw		f1, 0(x23)	# 334
	lw		x4, -68(x2)	# 334
	addi	x5, x4, 64108	# 334
	flw		f2, 0(x5)	# 334
	fmul	f1, f1, f2	# 334
	flw		f3, 0(x25)	# 334
	lw		x5, -172(x2)	# 334
	addi	x6, x5, 64108	# 334
	flw		f4, 0(x6)	# 334
	fmul	f3, f3, f4	# 334
	fadd	f1, f1, f3	# 334
	flw		f3, 0(x27)	# 334
	lw		x6, -168(x2)	# 334
	addi	x7, x6, 64108	# 334
	flw		f5, 0(x7)	# 334
	fmul	f3, f3, f5	# 334
	fadd	f1, f1, f3	# 334
	fsub	f1, f0, f1	# 123
	flw		f3, -96(x2)	# 1913
	fmul	f1, f1, f3	# 1913
	flw		f6, 0(x22)	# 334
	fmul	f2, f6, f2	# 334
	flw		f6, 0(x24)	# 334
	fmul	f4, f6, f4	# 334
	fadd	f2, f2, f4	# 334
	flw		f4, 0(x26)	# 334
	fmul	f4, f4, f5	# 334
	fadd	f2, f2, f4	# 334
	fsub	f2, f0, f2	# 123
	flw		f4, -56(x2)	# 121
	fle		f1, f4, fle_cont.33115	# 121
	addi	x7, x4, 64400	# 344
	flw		f5, 0(x7)	# 344
	lw		x8, -164(x2)	# 344
	flw		f6, 0(x8)	# 344
	fmul	f6, f1, f6	# 344
	fadd	f5, f5, f6	# 344
	fsw		f5, 0(x7)	# 344
	addi	x7, x5, 64400	# 345
	flw		f5, 0(x7)	# 345
	lw		x8, -160(x2)	# 345
	flw		f6, 0(x8)	# 345
	fmul	f6, f1, f6	# 345
	fadd	f5, f5, f6	# 345
	fsw		f5, 0(x7)	# 345
	addi	x7, x6, 64400	# 346
	flw		f5, 0(x7)	# 346
	lw		x8, -156(x2)	# 346
	flw		f6, 0(x8)	# 346
	fmul	f1, f1, f6	# 346
	fadd	f1, f5, f1	# 346
	fsw		f1, 0(x7)	# 346
	jal		x0, fle_cont.33115	# 121
fle_cont.33115:
	fle		f2, f4, beq_cont.33113	# 121
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -152(x2)	# 1836
	fmul	f1, f1, f2	# 1836
	addi	x7, x4, 64400	# 1837
	flw		f4, 0(x7)	# 1837
	fadd	f4, f4, f1	# 1837
	fsw		f4, 0(x7)	# 1837
	addi	x7, x5, 64400	# 1838
	flw		f4, 0(x7)	# 1838
	fadd	f4, f4, f1	# 1838
	fsw		f4, 0(x7)	# 1838
	addi	x7, x6, 64400	# 1839
	flw		f4, 0(x7)	# 1839
	fadd	f1, f4, f1	# 1839
	fsw		f1, 0(x7)	# 1839
	jal		x0, beq_cont.33113	# 121
beq_cont.33113:
	lw		x4, -148(x2)	# 301
	flw		f1, 0(x4)	# 301
	lw		x4, -68(x2)	# 301
	addi	x5, x4, 64444	# 301
	fsw		f1, 0(x5)	# 301
	lw		x5, -144(x2)	# 302
	flw		f1, 0(x5)	# 302
	lw		x5, -172(x2)	# 302
	addi	x5, x5, 64444	# 302
	fsw		f1, 0(x5)	# 302
	lw		x5, -140(x2)	# 303
	flw		f1, 0(x5)	# 303
	lw		x5, -168(x2)	# 303
	addi	x5, x5, 64444	# 303
	fsw		f1, 0(x5)	# 303
	addi	x5, x4, 63796	# 1357
	lw		x5, 0(x5)	# 1357
	lw		x6, -64(x2)	# 1357
	sub		x5, x5, x6	# 1357
	addi	x7, x0, 64348	# 1357
	lw		x29, -12(x2)	# 1357
	addi	x4, x7, 0	# 1357
	sw		x1, -176(x2)	# 1357
	addi	x2, x2, -180	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 180	# 1357
	lw		x1, -176(x2)	# 1357
	lw		x4, -68(x2)	# 1920
	addi	x5, x4, 65532	# 1920
	lw		x5, 0(x5)	# 1920
	lw		x6, -64(x2)	# 1920
	sub		x5, x5, x6	# 1920
	lw		x7, -72(x2)	# 1920
	flw		f1, -96(x2)	# 1920
	flw		f2, -152(x2)	# 1920
	lw		x29, -8(x2)	# 1920
	addi	x4, x5, 0	# 1920
	addi	x5, x7, 0	# 1920
	sw		x1, -176(x2)	# 1920
	addi	x2, x2, -180	# 1920
	lw		x31, 0(x29)	# 1920
	jalr	x1, x31, 0	# 1920
	addi	x2, x2, 180	# 1920
	lw		x1, -176(x2)	# 1920
	flw		f2, -52(x2)	# 125
	fle		f2, f27, fle.33119	# 125
	lw		x4, -84(x2)	# 1925
	lw		x5, -32(x2)	# 1925
	ble		x5, x4, ble_cont.33120	# 1925
	lw		x5, -64(x2)	# 1926
	add		x6, x4, x5	# 1926
	mul		x6, x30, x6	# 1926
	lw		x7, -80(x2)	# 1926
	add		x6, x7, x6	# 1926
	lw		x7, -76(x2)	# 1926
	sw		x7, 0(x6)	# 1926
	jal		x0, ble_cont.33120	# 1925
ble_cont.33120:
	lw		x5, -60(x2)	# 1929
	lw		x6, -136(x2)	# 1929
	beq		x6, x5, beq.33122	# 1929
	jalr	x0, x1, 0	# 1932
beq.33122:
	lw		x5, -132(x2)	# 503
	lw		x5, 28(x5)	# 503
	lw		x6, -68(x2)	# 508
	add		x5, x5, x6	# 508
	flw		f3, 0(x5)	# 508
	fsub	f1, f30, f3	# 1930
	fmul	f1, f2, f1	# 1930
	lw		x5, -64(x2)	# 1931
	add		x4, x4, x5	# 1931
	lw		x5, -92(x2)	# 1931
	flw		f2, 0(x5)	# 1931
	flw		f3, -4(x2)	# 1931
	fadd	f2, f3, f2	# 1931
	lw		x5, -72(x2)	# 1931
	lw		x6, -24(x2)	# 1931
	lw		x29, 0(x2)	# 1931
	lw		x31, 0(x29)	# 1931
	jalr	x0, x31, 0	# 1931
fle.33119:
	jalr	x0, x1, 0	# 1934
beq.33068:
	lw		x4, -84(x2)	# 1939
	mul		x5, x30, x4	# 1939
	lw		x7, -80(x2)	# 1939
	add		x5, x7, x5	# 1939
	lw		x7, -76(x2)	# 1939
	sw		x7, 0(x5)	# 1939
	beq		x4, x6, beq.33125	# 1941
	lw		x4, -72(x2)	# 334
	lw		x5, -68(x2)	# 334
	add		x6, x4, x5	# 334
	flw		f1, 0(x6)	# 334
	addi	x6, x5, 64108	# 334
	flw		f2, 0(x6)	# 334
	fmul	f1, f1, f2	# 334
	lw		x6, -64(x2)	# 334
	mul		x6, x30, x6	# 334
	add		x7, x4, x6	# 334
	flw		f2, 0(x7)	# 334
	addi	x7, x6, 64108	# 334
	flw		f3, 0(x7)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	lw		x7, -60(x2)	# 334
	mul		x7, x30, x7	# 334
	add		x4, x4, x7	# 334
	flw		f2, 0(x4)	# 334
	addi	x4, x7, 64108	# 334
	flw		f3, 0(x4)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	fsub	f1, f0, f1	# 123
	flw		f2, -56(x2)	# 121
	fle		f1, f2, fle.33126	# 121
	fmul	f2, f1, f1	# 127
	fmul	f1, f2, f1	# 1947
	flw		f2, -52(x2)	# 1947
	fmul	f1, f1, f2	# 1947
	addi	x4, x5, 64120	# 1947
	flw		f2, 0(x4)	# 1947
	fmul	f1, f1, f2	# 1947
	addi	x4, x5, 64400	# 1948
	flw		f2, 0(x4)	# 1948
	fadd	f2, f2, f1	# 1948
	fsw		f2, 0(x4)	# 1948
	addi	x4, x6, 64400	# 1949
	flw		f2, 0(x4)	# 1949
	fadd	f2, f2, f1	# 1949
	fsw		f2, 0(x4)	# 1949
	addi	x4, x7, 64400	# 1950
	flw		f2, 0(x4)	# 1950
	fadd	f1, f2, f1	# 1950
	fsw		f1, 0(x4)	# 1950
	jalr	x0, x1, 0	# 1950
fle.33126:
	jalr	x0, x1, 0	# 1952
beq.33125:
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
	ble		x15, x7, ble.33130	# 1986
	jalr	x0, x1, 0	# 1997
ble.33130:
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
	add		x18, x5, x21	# 334
	flw		f6, 0(x18)	# 334
	fmul	f5, f5, f6	# 334
	fadd	f4, f4, f5	# 334
	sw		x6, 0(x2)	# 122
	sw		x5, -4(x2)	# 122
	sw		x4, -8(x2)	# 122
	sw		x29, -12(x2)	# 122
	sw		x13, -16(x2)	# 122
	sw		x7, -20(x2)	# 122
	fle		f3, f4, fle.33133	# 122
	add		x17, x7, x16	# 1992
	mul		x17, x30, x17	# 1992
	add		x17, x4, x17	# 1992
	lw		x17, 0(x17)	# 1992
	fdiv	f4, f4, f21	# 1992
	addi	x18, x19, 64344	# 1676
	fsw		f1, 0(x18)	# 1676
	addi	x22, x19, 64332	# 1677
	lw		x23, 0(x22)	# 1677
	fsw		f4, -24(x2)	# 1677
	sw		x10, -28(x2)	# 1677
	sw		x22, -32(x2)	# 1677
	sw		x12, -36(x2)	# 1677
	sw		x11, -40(x2)	# 1677
	sw		x14, -44(x2)	# 1677
	sw		x9, -48(x2)	# 1677
	fsw		f2, -52(x2)	# 1677
	sw		x21, -56(x2)	# 1677
	sw		x20, -60(x2)	# 1677
	fsw		f3, -64(x2)	# 1677
	sw		x16, -68(x2)	# 1677
	sw		x17, -72(x2)	# 1677
	sw		x19, -76(x2)	# 1677
	sw		x15, -80(x2)	# 1677
	sw		x18, -84(x2)	# 1677
	addi	x6, x17, 0	# 1677
	addi	x5, x23, 0	# 1677
	addi	x4, x15, 0	# 1677
	addi	x29, x8, 0	# 1677
	sw		x1, -88(x2)	# 1677
	addi	x2, x2, -92	# 1677
	lw		x31, 0(x29)	# 1677
	jalr	x1, x31, 0	# 1677
	addi	x2, x2, 92	# 1677
	lw		x1, -88(x2)	# 1677
	lw		x4, -84(x2)	# 1678
	flw		f1, 0(x4)	# 1678
	fle		f1, f18, fle.33135	# 125
	fle		f19, f1, fle.33137	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.33134	# 125
fle.33137:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.33134	# 125
fle.33135:
	addi	x4, x0, 0	# 1682
fle_cont.33134:
	lw		x5, -80(x2)	# 1969
	beq		x4, x5, fle_cont.33132	# 1969
	lw		x4, -76(x2)	# 1970
	addi	x6, x4, 64360	# 1970
	lw		x6, 0(x6)	# 1970
	mul		x6, x30, x6	# 1970
	addi	x6, x6, 63844	# 1970
	lw		x6, 0(x6)	# 1970
	lw		x7, -72(x2)	# 681
	lw		x7, 0(x7)	# 681
	lw		x8, 4(x6)	# 395
	lw		x9, -68(x2)	# 1735
	beq		x8, x9, beq.33141	# 1735
	lw		x7, -16(x2)	# 1737
	beq		x8, x7, beq.33143	# 1737
	addi	x8, x4, 64348	# 1712
	flw		f1, 0(x8)	# 1712
	lw		x8, 20(x6)	# 473
	add		x10, x8, x4	# 478
	flw		f2, 0(x10)	# 478
	fsub	f1, f1, f2	# 1712
	lw		x10, -60(x2)	# 1713
	addi	x11, x10, 64348	# 1713
	flw		f2, 0(x11)	# 1713
	add		x11, x8, x10	# 488
	flw		f3, 0(x11)	# 488
	fsub	f2, f2, f3	# 1713
	lw		x11, -56(x2)	# 1714
	addi	x12, x11, 64348	# 1714
	flw		f3, 0(x12)	# 1714
	add		x8, x8, x11	# 498
	flw		f4, 0(x8)	# 498
	fsub	f3, f3, f4	# 1714
	lw		x8, 16(x6)	# 433
	add		x12, x8, x4	# 438
	flw		f4, 0(x12)	# 438
	fmul	f4, f1, f4	# 1716
	add		x12, x8, x10	# 448
	flw		f5, 0(x12)	# 448
	fmul	f5, f2, f5	# 1717
	add		x8, x8, x11	# 458
	flw		f6, 0(x8)	# 458
	fmul	f6, f3, f6	# 1718
	lw		x8, 12(x6)	# 424
	beq		x8, x5, beq.33145	# 1720
	lw		x8, 36(x6)	# 573
	add		x12, x8, x11	# 578
	flw		f7, 0(x12)	# 578
	fmul	f8, f2, f7	# 1725
	add		x8, x8, x10	# 568
	flw		f9, 0(x8)	# 568
	fmul	f10, f3, f9	# 1725
	fadd	f8, f8, f10	# 1725
	fmul	f8, f8, f26	# 126
	fadd	f4, f4, f8	# 1725
	addi	x8, x4, 64364	# 1725
	fsw		f4, 0(x8)	# 1725
	fmul	f4, f1, f7	# 1726
	lw		x8, 36(x6)	# 553
	add		x8, x8, x4	# 558
	flw		f7, 0(x8)	# 558
	fmul	f3, f3, f7	# 1726
	fadd	f3, f4, f3	# 1726
	fmul	f3, f3, f26	# 126
	fadd	f3, f5, f3	# 1726
	addi	x8, x10, 64364	# 1726
	fsw		f3, 0(x8)	# 1726
	fmul	f1, f1, f9	# 1727
	fmul	f2, f2, f7	# 1727
	fadd	f1, f1, f2	# 1727
	fmul	f1, f1, f26	# 126
	fadd	f1, f6, f1	# 1727
	addi	x8, x11, 64364	# 1727
	fsw		f1, 0(x8)	# 1727
	jal		x0, beq_cont.33144	# 1720
beq.33145:
	addi	x8, x4, 64364	# 1721
	fsw		f4, 0(x8)	# 1721
	addi	x8, x10, 64364	# 1722
	fsw		f5, 0(x8)	# 1722
	addi	x8, x11, 64364	# 1723
	fsw		f6, 0(x8)	# 1723
beq_cont.33144:
	lw		x8, 24(x6)	# 415
	addi	x12, x4, 64364	# 325
	flw		f1, 0(x12)	# 325
	fmul	f2, f1, f1	# 127
	addi	x13, x10, 64364	# 325
	flw		f3, 0(x13)	# 325
	fmul	f3, f3, f3	# 127
	fadd	f2, f2, f3	# 325
	addi	x14, x11, 64364	# 325
	flw		f3, 0(x14)	# 325
	fmul	f3, f3, f3	# 127
	fadd	f2, f2, f3	# 325
	fsqrt	f2, f2	# 325
	flw		f3, -64(x2)	# 120
	feq		f2, f3, feq.33147	# 120
	beq		x8, x5, beq.33149	# 326
	fdiv	f2, f22, f2	# 326
	jal		x0, feq_cont.33146	# 326
beq.33149:
	fdiv	f2, f30, f2	# 326
	jal		x0, feq_cont.33146	# 120
feq.33147:
	fadd	f2, f0, f30	# 326
feq_cont.33146:
	fmul	f1, f1, f2	# 327
	fsw		f1, 0(x12)	# 327
	flw		f1, 0(x13)	# 328
	fmul	f1, f1, f2	# 328
	fsw		f1, 0(x13)	# 328
	flw		f1, 0(x14)	# 329
	fmul	f1, f1, f2	# 329
	fsw		f1, 0(x14)	# 329
	jal		x0, beq_cont.33140	# 1737
beq.33143:
	lw		x8, 16(x6)	# 433
	add		x8, x8, x4	# 438
	flw		f1, 0(x8)	# 438
	fsub	f1, f0, f1	# 123
	addi	x8, x4, 64364	# 1705
	fsw		f1, 0(x8)	# 1705
	lw		x8, 16(x6)	# 443
	lw		x10, -60(x2)	# 448
	add		x8, x8, x10	# 448
	flw		f1, 0(x8)	# 448
	fsub	f1, f0, f1	# 123
	addi	x8, x10, 64364	# 1706
	fsw		f1, 0(x8)	# 1706
	lw		x8, 16(x6)	# 453
	lw		x11, -56(x2)	# 458
	add		x8, x8, x11	# 458
	flw		f1, 0(x8)	# 458
	fsub	f1, f0, f1	# 123
	addi	x8, x11, 64364	# 1707
	fsw		f1, 0(x8)	# 1707
	jal		x0, beq_cont.33140	# 1735
beq.33141:
	addi	x8, x4, 64340	# 1696
	lw		x8, 0(x8)	# 1696
	addi	x10, x4, 64364	# 289
	flw		f1, -64(x2)	# 289
	fsw		f1, 0(x10)	# 289
	lw		x10, -60(x2)	# 290
	addi	x11, x10, 64364	# 290
	fsw		f1, 0(x11)	# 290
	lw		x11, -56(x2)	# 291
	addi	x12, x11, 64364	# 291
	fsw		f1, 0(x12)	# 291
	sub		x8, x8, x9	# 1699
	mul		x8, x30, x8	# 1699
	add		x7, x7, x8	# 1699
	flw		f2, 0(x7)	# 1699
	feq		f2, f1, feq.33151	# 120
	fle		f2, f1, fle.33153	# 121
	fadd	f2, f0, f30	# 255
	jal		x0, feq_cont.33150	# 121
fle.33153:
	fadd	f2, f0, f22	# 256
	jal		x0, feq_cont.33150	# 120
feq.33151:
	fadd	f2, f0, f1	# 254
feq_cont.33150:
	fsub	f2, f0, f2	# 123
	addi	x7, x8, 64364	# 1699
	fsw		f2, 0(x7)	# 1699
beq_cont.33140:
	lw		x7, 0(x6)	# 385
	lw		x8, 32(x6)	# 523
	add		x8, x8, x4	# 528
	flw		f1, 0(x8)	# 528
	addi	x8, x4, 64376	# 1752
	fsw		f1, 0(x8)	# 1752
	lw		x12, 32(x6)	# 533
	add		x12, x12, x10	# 538
	flw		f1, 0(x12)	# 538
	addi	x12, x10, 64376	# 1753
	fsw		f1, 0(x12)	# 1753
	lw		x13, 32(x6)	# 543
	add		x13, x13, x11	# 548
	flw		f1, 0(x13)	# 548
	addi	x13, x11, 64376	# 1754
	fsw		f1, 0(x13)	# 1754
	sw		x6, -88(x2)	# 1755
	beq		x7, x9, beq.33155	# 1755
	lw		x9, -16(x2)	# 1773
	beq		x7, x9, beq.33157	# 1773
	lw		x14, -44(x2)	# 1780
	beq		x7, x14, beq.33159	# 1780
	addi	x14, x0, 4	# 1791
	beq		x7, x14, beq.33161	# 1791
	jal		x0, beq_cont.33154	# 1791
beq.33161:
	addi	x7, x4, 64348	# 1793
	flw		f1, 0(x7)	# 1793
	lw		x7, 20(x6)	# 473
	add		x14, x7, x4	# 478
	flw		f2, 0(x14)	# 478
	fsub	f1, f1, f2	# 1793
	lw		x14, 16(x6)	# 433
	add		x15, x14, x4	# 438
	flw		f2, 0(x15)	# 438
	fsqrt	f2, f2	# 1793
	fmul	f1, f1, f2	# 1793
	addi	x15, x11, 64348	# 1794
	flw		f2, 0(x15)	# 1794
	add		x15, x7, x11	# 498
	flw		f3, 0(x15)	# 498
	fsub	f2, f2, f3	# 1794
	add		x15, x14, x11	# 458
	flw		f3, 0(x15)	# 458
	fsqrt	f3, f3	# 1794
	fmul	f2, f2, f3	# 1794
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1795
	flw		f4, -64(x2)	# 124
	fle		f1, f4, fle.33163	# 124
	fadd	f5, f0, f1	# 124
	jal		x0, fle_cont.33162	# 124
fle.33163:
	fsub	f5, f0, f1	# 124
fle_cont.33162:
	lui		x15, %hi(l.27807)	# 1797
	ori		x15, x0, %lo(l.27807)	# 1797
	flw		f6, 0(x15)	# 1797
	fsw		f3, -92(x2)	# 125
	fle		f6, f5, fle.33165	# 125
	lui		x15, %hi(l.27809)	# 1798
	ori		x15, x0, %lo(l.27809)	# 1798
	flw		f1, 0(x15)	# 1798
	jal		x0, fle_cont.33164	# 125
fle.33165:
	fdiv	f1, f2, f1	# 1800
	fle		f1, f4, fle.33167	# 124
	jal		x0, fle_cont.33166	# 124
fle.33167:
	fsub	f1, f0, f1	# 124
fle_cont.33166:
	lw		x29, -36(x2)	# 1802
	sw		x1, -96(x2)	# 1802
	addi	x2, x2, -100	# 1802
	lw		x31, 0(x29)	# 1802
	jalr	x1, x31, 0	# 1802
	addi	x2, x2, 100	# 1802
	lw		x1, -96(x2)	# 1802
	lui		x4, %hi(l.27811)	# 1802
	ori		x4, x0, %lo(l.27811)	# 1802
	flw		f2, 0(x4)	# 1802
	fmul	f1, f1, f2	# 1802
	lui		x4, %hi(l.27813)	# 1802
	ori		x4, x0, %lo(l.27813)	# 1802
	flw		f2, 0(x4)	# 1802
	fdiv	f1, f1, f2	# 1802
fle_cont.33164:
	sw		x7, -96(x2)	# 1804
	fsw		f1, -100(x2)	# 1804
	sw		x1, -104(x2)	# 1804
	addi	x2, x2, -108	# 1804
	jal		x1, min_caml_floor	# 1804
	addi	x2, x2, 108	# 1804
	lw		x1, -104(x2)	# 1804
	flw		f2, -100(x2)	# 1804
	fsub	f1, f2, f1	# 1804
	addi	x4, x10, 64348	# 1806
	flw		f2, 0(x4)	# 1806
	lw		x4, -96(x2)	# 488
	add		x4, x4, x10	# 488
	flw		f3, 0(x4)	# 488
	fsub	f2, f2, f3	# 1806
	add		x4, x14, x10	# 448
	flw		f3, 0(x4)	# 448
	fsqrt	f3, f3	# 1806
	fmul	f2, f2, f3	# 1806
	flw		f3, -64(x2)	# 124
	flw		f4, -92(x2)	# 124
	fle		f4, f3, fle.33169	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.33168	# 124
fle.33169:
	fsub	f5, f0, f4	# 124
fle_cont.33168:
	fsw		f1, -104(x2)	# 125
	fle		f6, f5, fle.33171	# 125
	lui		x4, %hi(l.27809)	# 1809
	ori		x4, x0, %lo(l.27809)	# 1809
	flw		f1, 0(x4)	# 1809
	jal		x0, fle_cont.33170	# 125
fle.33171:
	fdiv	f2, f2, f4	# 1811
	fle		f2, f3, fle.33173	# 124
	jal		x0, fle_cont.33172	# 124
fle.33173:
	fsub	f2, f0, f2	# 124
fle_cont.33172:
	lw		x29, -36(x2)	# 1812
	fadd	f1, f0, f2	# 1812
	sw		x1, -108(x2)	# 1812
	addi	x2, x2, -112	# 1812
	lw		x31, 0(x29)	# 1812
	jalr	x1, x31, 0	# 1812
	addi	x2, x2, 112	# 1812
	lw		x1, -108(x2)	# 1812
	lui		x4, %hi(l.27811)	# 1812
	ori		x4, x0, %lo(l.27811)	# 1812
	flw		f2, 0(x4)	# 1812
	fmul	f1, f1, f2	# 1812
	lui		x4, %hi(l.27813)	# 1812
	ori		x4, x0, %lo(l.27813)	# 1812
	flw		f2, 0(x4)	# 1812
	fdiv	f1, f1, f2	# 1812
fle_cont.33170:
	fsw		f1, -108(x2)	# 1814
	sw		x1, -112(x2)	# 1814
	addi	x2, x2, -116	# 1814
	jal		x1, min_caml_floor	# 1814
	addi	x2, x2, 116	# 1814
	lw		x1, -112(x2)	# 1814
	flw		f2, -108(x2)	# 1814
	fsub	f1, f2, f1	# 1814
	lui		x4, %hi(l.27824)	# 1815
	ori		x4, x0, %lo(l.27824)	# 1815
	flw		f2, 0(x4)	# 1815
	flw		f4, -104(x2)	# 1815
	fsub	f4, f26, f4	# 1815
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1815
	fsub	f1, f26, f1	# 1815
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1815
	flw		f2, -64(x2)	# 122
	fle		f2, f1, fle_cont.33174	# 122
	fadd	f1, f0, f2	# 1816
	jal		x0, fle_cont.33174	# 122
fle_cont.33174:
	flw		f3, -52(x2)	# 1817
	fmul	f1, f3, f1	# 1817
	lui		x4, %hi(l.27827)	# 1817
	ori		x4, x0, %lo(l.27827)	# 1817
	flw		f3, 0(x4)	# 1817
	fdiv	f1, f1, f3	# 1817
	fsw		f1, 0(x13)	# 1817
	jal		x0, beq_cont.33154	# 1780
beq.33159:
	addi	x7, x4, 64348	# 1783
	flw		f1, 0(x7)	# 1783
	lw		x7, 20(x6)	# 473
	add		x14, x7, x4	# 478
	flw		f2, 0(x14)	# 478
	fsub	f1, f1, f2	# 1783
	addi	x14, x11, 64348	# 1784
	flw		f2, 0(x14)	# 1784
	add		x7, x7, x11	# 498
	flw		f3, 0(x7)	# 498
	fsub	f2, f2, f3	# 1784
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1785
	fsqrt	f1, f1	# 1785
	fdiv	f1, f1, f23	# 1785
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
	lw		x29, -40(x2)	# 1787
	sw		x1, -116(x2)	# 1787
	addi	x2, x2, -120	# 1787
	lw		x31, 0(x29)	# 1787
	jalr	x1, x31, 0	# 1787
	addi	x2, x2, 120	# 1787
	lw		x1, -116(x2)	# 1787
	fmul	f1, f1, f1	# 127
	flw		f2, -52(x2)	# 1788
	fmul	f3, f1, f2	# 1788
	fsw		f3, 0(x12)	# 1788
	fsub	f1, f30, f1	# 1789
	fmul	f1, f1, f2	# 1789
	fsw		f1, 0(x13)	# 1789
	jal		x0, beq_cont.33154	# 1773
beq.33157:
	addi	x7, x10, 64348	# 1776
	flw		f1, 0(x7)	# 1776
	lui		x7, %hi(l.27849)	# 1776
	ori		x7, x0, %lo(l.27849)	# 1776
	flw		f2, 0(x7)	# 1776
	fmul	f1, f1, f2	# 1776
	lw		x29, -48(x2)	# 1776
	sw		x1, -116(x2)	# 1776
	addi	x2, x2, -120	# 1776
	lw		x31, 0(x29)	# 1776
	jalr	x1, x31, 0	# 1776
	addi	x2, x2, 120	# 1776
	lw		x1, -116(x2)	# 1776
	fmul	f1, f1, f1	# 127
	flw		f2, -52(x2)	# 1777
	fmul	f3, f2, f1	# 1777
	fsw		f3, 0(x8)	# 1777
	fsub	f1, f30, f1	# 1778
	fmul	f1, f2, f1	# 1778
	fsw		f1, 0(x12)	# 1778
	jal		x0, beq_cont.33154	# 1755
beq.33155:
	addi	x7, x4, 64348	# 1758
	flw		f1, 0(x7)	# 1758
	lw		x7, 20(x6)	# 473
	add		x9, x7, x4	# 478
	flw		f2, 0(x9)	# 478
	fsub	f1, f1, f2	# 1758
	fmul	f3, f1, f24	# 1760
	fsw		f24, -116(x2)	# 1760
	sw		x7, -120(x2)	# 1760
	fsw		f1, -124(x2)	# 1760
	fadd	f1, f0, f3	# 1760
	sw		x1, -128(x2)	# 1760
	addi	x2, x2, -132	# 1760
	jal		x1, min_caml_floor	# 1760
	addi	x2, x2, 132	# 1760
	lw		x1, -128(x2)	# 1760
	fmul	f1, f1, f25	# 1760
	flw		f3, -124(x2)	# 1761
	fsub	f1, f3, f1	# 1761
	addi	x4, x11, 64348	# 1763
	flw		f4, 0(x4)	# 1763
	lw		x4, -120(x2)	# 498
	add		x4, x4, x11	# 498
	flw		f5, 0(x4)	# 498
	fsub	f4, f4, f5	# 1763
	flw		f5, -116(x2)	# 1765
	fmul	f5, f4, f5	# 1765
	fsw		f1, -128(x2)	# 1765
	fsw		f25, -132(x2)	# 1765
	fadd	f1, f0, f5	# 1765
	sw		x1, -136(x2)	# 1765
	addi	x2, x2, -140	# 1765
	jal		x1, min_caml_floor	# 1765
	addi	x2, x2, 140	# 1765
	lw		x1, -136(x2)	# 1765
	flw		f2, -132(x2)	# 1765
	fmul	f1, f1, f2	# 1765
	fsub	f1, f4, f1	# 1766
	flw		f2, -128(x2)	# 125
	fle		f23, f2, fle.33177	# 125
	fle		f23, f1, fle.33179	# 125
	flw		f1, -52(x2)	# 1770
	jal		x0, fle_cont.33176	# 125
fle.33179:
	flw		f1, -64(x2)	# 1770
	jal		x0, fle_cont.33176	# 125
fle.33177:
	fle		f23, f1, fle.33181	# 125
	flw		f1, -64(x2)	# 1771
	jal		x0, fle_cont.33176	# 125
fle.33181:
	flw		f1, -52(x2)	# 1771
fle_cont.33176:
	fsw		f1, 0(x12)	# 1768
beq_cont.33154:
	lw		x4, -32(x2)	# 1975
	lw		x5, 0(x4)	# 1975
	lw		x4, -80(x2)	# 1975
	lw		x29, -28(x2)	# 1975
	sw		x13, -136(x2)	# 1975
	sw		x12, -140(x2)	# 1975
	sw		x8, -144(x2)	# 1975
	sw		x1, -148(x2)	# 1975
	addi	x2, x2, -152	# 1975
	lw		x31, 0(x29)	# 1975
	jalr	x1, x31, 0	# 1975
	addi	x2, x2, 152	# 1975
	lw		x1, -148(x2)	# 1975
	lw		x5, -80(x2)	# 1975
	beq		x4, x5, beq.33183	# 1975
	jal		x0, fle_cont.33132	# 1975
beq.33183:
	lw		x4, -76(x2)	# 334
	addi	x5, x4, 64364	# 334
	flw		f1, 0(x5)	# 334
	addi	x5, x4, 64108	# 334
	flw		f2, 0(x5)	# 334
	fmul	f1, f1, f2	# 334
	lw		x5, -60(x2)	# 334
	addi	x6, x5, 64364	# 334
	flw		f2, 0(x6)	# 334
	addi	x6, x5, 64108	# 334
	flw		f3, 0(x6)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	lw		x6, -56(x2)	# 334
	addi	x7, x6, 64364	# 334
	flw		f2, 0(x7)	# 334
	addi	x7, x6, 64108	# 334
	flw		f3, 0(x7)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	fsub	f1, f0, f1	# 123
	flw		f2, -64(x2)	# 121
	fle		f1, f2, fle.33185	# 121
	jal		x0, fle_cont.33184	# 121
fle.33185:
	fadd	f1, f0, f2	# 1977
fle_cont.33184:
	flw		f2, -24(x2)	# 1978
	fmul	f1, f2, f1	# 1978
	lw		x7, -88(x2)	# 503
	lw		x7, 28(x7)	# 503
	add		x7, x7, x4	# 508
	flw		f2, 0(x7)	# 508
	fmul	f1, f1, f2	# 1978
	addi	x4, x4, 64388	# 344
	flw		f2, 0(x4)	# 344
	lw		x7, -144(x2)	# 344
	flw		f3, 0(x7)	# 344
	fmul	f3, f1, f3	# 344
	fadd	f2, f2, f3	# 344
	fsw		f2, 0(x4)	# 344
	addi	x4, x5, 64388	# 345
	flw		f2, 0(x4)	# 345
	lw		x5, -140(x2)	# 345
	flw		f3, 0(x5)	# 345
	fmul	f3, f1, f3	# 345
	fadd	f2, f2, f3	# 345
	fsw		f2, 0(x4)	# 345
	addi	x4, x6, 64388	# 346
	flw		f2, 0(x4)	# 346
	lw		x5, -136(x2)	# 346
	flw		f3, 0(x5)	# 346
	fmul	f1, f1, f3	# 346
	fadd	f1, f2, f1	# 346
	fsw		f1, 0(x4)	# 346
	jal		x0, fle_cont.33132	# 1969
	jal		x0, fle_cont.33132	# 122
fle.33133:
	fdiv	f4, f4, f20	# 1994
	addi	x18, x19, 64344	# 1676
	fsw		f1, 0(x18)	# 1676
	addi	x22, x19, 64332	# 1677
	lw		x23, 0(x22)	# 1677
	fsw		f4, -148(x2)	# 1677
	sw		x10, -28(x2)	# 1677
	sw		x22, -152(x2)	# 1677
	sw		x12, -36(x2)	# 1677
	sw		x11, -40(x2)	# 1677
	sw		x14, -44(x2)	# 1677
	sw		x9, -48(x2)	# 1677
	fsw		f2, -52(x2)	# 1677
	sw		x21, -56(x2)	# 1677
	sw		x20, -60(x2)	# 1677
	fsw		f3, -64(x2)	# 1677
	sw		x16, -68(x2)	# 1677
	sw		x17, -156(x2)	# 1677
	sw		x19, -76(x2)	# 1677
	sw		x15, -80(x2)	# 1677
	sw		x18, -160(x2)	# 1677
	addi	x6, x17, 0	# 1677
	addi	x5, x23, 0	# 1677
	addi	x4, x15, 0	# 1677
	addi	x29, x8, 0	# 1677
	sw		x1, -164(x2)	# 1677
	addi	x2, x2, -168	# 1677
	lw		x31, 0(x29)	# 1677
	jalr	x1, x31, 0	# 1677
	addi	x2, x2, 168	# 1677
	lw		x1, -164(x2)	# 1677
	lw		x4, -160(x2)	# 1678
	flw		f1, 0(x4)	# 1678
	fle		f1, f18, fle.33187	# 125
	fle		f19, f1, fle.33189	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.33186	# 125
fle.33189:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.33186	# 125
fle.33187:
	addi	x4, x0, 0	# 1682
fle_cont.33186:
	lw		x5, -80(x2)	# 1969
	beq		x4, x5, fle_cont.33132	# 1969
	lw		x4, -76(x2)	# 1970
	addi	x6, x4, 64360	# 1970
	lw		x6, 0(x6)	# 1970
	mul		x6, x30, x6	# 1970
	addi	x6, x6, 63844	# 1970
	lw		x6, 0(x6)	# 1970
	lw		x7, -156(x2)	# 681
	lw		x7, 0(x7)	# 681
	lw		x8, 4(x6)	# 395
	lw		x9, -68(x2)	# 1735
	beq		x8, x9, beq.33193	# 1735
	lw		x7, -16(x2)	# 1737
	beq		x8, x7, beq.33195	# 1737
	addi	x8, x4, 64348	# 1712
	flw		f1, 0(x8)	# 1712
	lw		x8, 20(x6)	# 473
	add		x10, x8, x4	# 478
	flw		f2, 0(x10)	# 478
	fsub	f1, f1, f2	# 1712
	lw		x10, -60(x2)	# 1713
	addi	x11, x10, 64348	# 1713
	flw		f2, 0(x11)	# 1713
	add		x11, x8, x10	# 488
	flw		f3, 0(x11)	# 488
	fsub	f2, f2, f3	# 1713
	lw		x11, -56(x2)	# 1714
	addi	x12, x11, 64348	# 1714
	flw		f3, 0(x12)	# 1714
	add		x8, x8, x11	# 498
	flw		f4, 0(x8)	# 498
	fsub	f3, f3, f4	# 1714
	lw		x8, 16(x6)	# 433
	add		x12, x8, x4	# 438
	flw		f4, 0(x12)	# 438
	fmul	f4, f1, f4	# 1716
	add		x12, x8, x10	# 448
	flw		f5, 0(x12)	# 448
	fmul	f5, f2, f5	# 1717
	add		x8, x8, x11	# 458
	flw		f6, 0(x8)	# 458
	fmul	f6, f3, f6	# 1718
	lw		x8, 12(x6)	# 424
	beq		x8, x5, beq.33197	# 1720
	lw		x8, 36(x6)	# 573
	add		x12, x8, x11	# 578
	flw		f7, 0(x12)	# 578
	fmul	f8, f2, f7	# 1725
	add		x8, x8, x10	# 568
	flw		f9, 0(x8)	# 568
	fmul	f10, f3, f9	# 1725
	fadd	f8, f8, f10	# 1725
	fmul	f8, f8, f26	# 126
	fadd	f4, f4, f8	# 1725
	addi	x8, x4, 64364	# 1725
	fsw		f4, 0(x8)	# 1725
	fmul	f4, f1, f7	# 1726
	lw		x8, 36(x6)	# 553
	add		x8, x8, x4	# 558
	flw		f7, 0(x8)	# 558
	fmul	f3, f3, f7	# 1726
	fadd	f3, f4, f3	# 1726
	fmul	f3, f3, f26	# 126
	fadd	f3, f5, f3	# 1726
	addi	x8, x10, 64364	# 1726
	fsw		f3, 0(x8)	# 1726
	fmul	f1, f1, f9	# 1727
	fmul	f2, f2, f7	# 1727
	fadd	f1, f1, f2	# 1727
	fmul	f1, f1, f26	# 126
	fadd	f1, f6, f1	# 1727
	addi	x8, x11, 64364	# 1727
	fsw		f1, 0(x8)	# 1727
	jal		x0, beq_cont.33196	# 1720
beq.33197:
	addi	x8, x4, 64364	# 1721
	fsw		f4, 0(x8)	# 1721
	addi	x8, x10, 64364	# 1722
	fsw		f5, 0(x8)	# 1722
	addi	x8, x11, 64364	# 1723
	fsw		f6, 0(x8)	# 1723
beq_cont.33196:
	lw		x8, 24(x6)	# 415
	addi	x12, x4, 64364	# 325
	flw		f1, 0(x12)	# 325
	fmul	f2, f1, f1	# 127
	addi	x13, x10, 64364	# 325
	flw		f3, 0(x13)	# 325
	fmul	f3, f3, f3	# 127
	fadd	f2, f2, f3	# 325
	addi	x14, x11, 64364	# 325
	flw		f3, 0(x14)	# 325
	fmul	f3, f3, f3	# 127
	fadd	f2, f2, f3	# 325
	fsqrt	f2, f2	# 325
	flw		f3, -64(x2)	# 120
	feq		f2, f3, feq.33199	# 120
	beq		x8, x5, beq.33201	# 326
	fdiv	f2, f22, f2	# 326
	jal		x0, feq_cont.33198	# 326
beq.33201:
	fdiv	f2, f30, f2	# 326
	jal		x0, feq_cont.33198	# 120
feq.33199:
	fadd	f2, f0, f30	# 326
feq_cont.33198:
	fmul	f1, f1, f2	# 327
	fsw		f1, 0(x12)	# 327
	flw		f1, 0(x13)	# 328
	fmul	f1, f1, f2	# 328
	fsw		f1, 0(x13)	# 328
	flw		f1, 0(x14)	# 329
	fmul	f1, f1, f2	# 329
	fsw		f1, 0(x14)	# 329
	jal		x0, beq_cont.33192	# 1737
beq.33195:
	lw		x8, 16(x6)	# 433
	add		x8, x8, x4	# 438
	flw		f1, 0(x8)	# 438
	fsub	f1, f0, f1	# 123
	addi	x8, x4, 64364	# 1705
	fsw		f1, 0(x8)	# 1705
	lw		x8, 16(x6)	# 443
	lw		x10, -60(x2)	# 448
	add		x8, x8, x10	# 448
	flw		f1, 0(x8)	# 448
	fsub	f1, f0, f1	# 123
	addi	x8, x10, 64364	# 1706
	fsw		f1, 0(x8)	# 1706
	lw		x8, 16(x6)	# 453
	lw		x11, -56(x2)	# 458
	add		x8, x8, x11	# 458
	flw		f1, 0(x8)	# 458
	fsub	f1, f0, f1	# 123
	addi	x8, x11, 64364	# 1707
	fsw		f1, 0(x8)	# 1707
	jal		x0, beq_cont.33192	# 1735
beq.33193:
	addi	x8, x4, 64340	# 1696
	lw		x8, 0(x8)	# 1696
	addi	x10, x4, 64364	# 289
	flw		f1, -64(x2)	# 289
	fsw		f1, 0(x10)	# 289
	lw		x10, -60(x2)	# 290
	addi	x11, x10, 64364	# 290
	fsw		f1, 0(x11)	# 290
	lw		x11, -56(x2)	# 291
	addi	x12, x11, 64364	# 291
	fsw		f1, 0(x12)	# 291
	sub		x8, x8, x9	# 1699
	mul		x8, x30, x8	# 1699
	add		x7, x7, x8	# 1699
	flw		f2, 0(x7)	# 1699
	feq		f2, f1, feq.33203	# 120
	fle		f2, f1, fle.33205	# 121
	fadd	f2, f0, f30	# 255
	jal		x0, feq_cont.33202	# 121
fle.33205:
	fadd	f2, f0, f22	# 256
	jal		x0, feq_cont.33202	# 120
feq.33203:
	fadd	f2, f0, f1	# 254
feq_cont.33202:
	fsub	f2, f0, f2	# 123
	addi	x7, x8, 64364	# 1699
	fsw		f2, 0(x7)	# 1699
beq_cont.33192:
	lw		x7, 0(x6)	# 385
	lw		x8, 32(x6)	# 523
	add		x8, x8, x4	# 528
	flw		f1, 0(x8)	# 528
	addi	x8, x4, 64376	# 1752
	fsw		f1, 0(x8)	# 1752
	lw		x12, 32(x6)	# 533
	add		x12, x12, x10	# 538
	flw		f1, 0(x12)	# 538
	addi	x12, x10, 64376	# 1753
	fsw		f1, 0(x12)	# 1753
	lw		x13, 32(x6)	# 543
	add		x13, x13, x11	# 548
	flw		f1, 0(x13)	# 548
	addi	x13, x11, 64376	# 1754
	fsw		f1, 0(x13)	# 1754
	sw		x6, -164(x2)	# 1755
	beq		x7, x9, beq.33207	# 1755
	lw		x9, -16(x2)	# 1773
	beq		x7, x9, beq.33209	# 1773
	lw		x14, -44(x2)	# 1780
	beq		x7, x14, beq.33211	# 1780
	addi	x14, x0, 4	# 1791
	beq		x7, x14, beq.33213	# 1791
	jal		x0, beq_cont.33206	# 1791
beq.33213:
	addi	x7, x4, 64348	# 1793
	flw		f1, 0(x7)	# 1793
	lw		x7, 20(x6)	# 473
	add		x14, x7, x4	# 478
	flw		f2, 0(x14)	# 478
	fsub	f1, f1, f2	# 1793
	lw		x14, 16(x6)	# 433
	add		x15, x14, x4	# 438
	flw		f2, 0(x15)	# 438
	fsqrt	f2, f2	# 1793
	fmul	f1, f1, f2	# 1793
	addi	x15, x11, 64348	# 1794
	flw		f2, 0(x15)	# 1794
	add		x15, x7, x11	# 498
	flw		f3, 0(x15)	# 498
	fsub	f2, f2, f3	# 1794
	add		x15, x14, x11	# 458
	flw		f3, 0(x15)	# 458
	fsqrt	f3, f3	# 1794
	fmul	f2, f2, f3	# 1794
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1795
	flw		f4, -64(x2)	# 124
	fle		f1, f4, fle.33215	# 124
	fadd	f5, f0, f1	# 124
	jal		x0, fle_cont.33214	# 124
fle.33215:
	fsub	f5, f0, f1	# 124
fle_cont.33214:
	lui		x15, %hi(l.27807)	# 1797
	ori		x15, x0, %lo(l.27807)	# 1797
	flw		f6, 0(x15)	# 1797
	fsw		f3, -168(x2)	# 125
	fle		f6, f5, fle.33217	# 125
	lui		x15, %hi(l.27809)	# 1798
	ori		x15, x0, %lo(l.27809)	# 1798
	flw		f1, 0(x15)	# 1798
	jal		x0, fle_cont.33216	# 125
fle.33217:
	fdiv	f1, f2, f1	# 1800
	fle		f1, f4, fle.33219	# 124
	jal		x0, fle_cont.33218	# 124
fle.33219:
	fsub	f1, f0, f1	# 124
fle_cont.33218:
	lw		x29, -36(x2)	# 1802
	sw		x1, -172(x2)	# 1802
	addi	x2, x2, -176	# 1802
	lw		x31, 0(x29)	# 1802
	jalr	x1, x31, 0	# 1802
	addi	x2, x2, 176	# 1802
	lw		x1, -172(x2)	# 1802
	lui		x4, %hi(l.27811)	# 1802
	ori		x4, x0, %lo(l.27811)	# 1802
	flw		f2, 0(x4)	# 1802
	fmul	f1, f1, f2	# 1802
	lui		x4, %hi(l.27813)	# 1802
	ori		x4, x0, %lo(l.27813)	# 1802
	flw		f2, 0(x4)	# 1802
	fdiv	f1, f1, f2	# 1802
fle_cont.33216:
	sw		x7, -172(x2)	# 1804
	fsw		f1, -176(x2)	# 1804
	sw		x1, -180(x2)	# 1804
	addi	x2, x2, -184	# 1804
	jal		x1, min_caml_floor	# 1804
	addi	x2, x2, 184	# 1804
	lw		x1, -180(x2)	# 1804
	flw		f2, -176(x2)	# 1804
	fsub	f1, f2, f1	# 1804
	addi	x4, x10, 64348	# 1806
	flw		f2, 0(x4)	# 1806
	lw		x4, -172(x2)	# 488
	add		x4, x4, x10	# 488
	flw		f3, 0(x4)	# 488
	fsub	f2, f2, f3	# 1806
	add		x4, x14, x10	# 448
	flw		f3, 0(x4)	# 448
	fsqrt	f3, f3	# 1806
	fmul	f2, f2, f3	# 1806
	flw		f3, -64(x2)	# 124
	flw		f4, -168(x2)	# 124
	fle		f4, f3, fle.33221	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.33220	# 124
fle.33221:
	fsub	f5, f0, f4	# 124
fle_cont.33220:
	fsw		f1, -180(x2)	# 125
	fle		f6, f5, fle.33223	# 125
	lui		x4, %hi(l.27809)	# 1809
	ori		x4, x0, %lo(l.27809)	# 1809
	flw		f1, 0(x4)	# 1809
	jal		x0, fle_cont.33222	# 125
fle.33223:
	fdiv	f2, f2, f4	# 1811
	fle		f2, f3, fle.33225	# 124
	jal		x0, fle_cont.33224	# 124
fle.33225:
	fsub	f2, f0, f2	# 124
fle_cont.33224:
	lw		x29, -36(x2)	# 1812
	fadd	f1, f0, f2	# 1812
	sw		x1, -184(x2)	# 1812
	addi	x2, x2, -188	# 1812
	lw		x31, 0(x29)	# 1812
	jalr	x1, x31, 0	# 1812
	addi	x2, x2, 188	# 1812
	lw		x1, -184(x2)	# 1812
	lui		x4, %hi(l.27811)	# 1812
	ori		x4, x0, %lo(l.27811)	# 1812
	flw		f2, 0(x4)	# 1812
	fmul	f1, f1, f2	# 1812
	lui		x4, %hi(l.27813)	# 1812
	ori		x4, x0, %lo(l.27813)	# 1812
	flw		f2, 0(x4)	# 1812
	fdiv	f1, f1, f2	# 1812
fle_cont.33222:
	fsw		f1, -184(x2)	# 1814
	sw		x1, -188(x2)	# 1814
	addi	x2, x2, -192	# 1814
	jal		x1, min_caml_floor	# 1814
	addi	x2, x2, 192	# 1814
	lw		x1, -188(x2)	# 1814
	flw		f2, -184(x2)	# 1814
	fsub	f1, f2, f1	# 1814
	lui		x4, %hi(l.27824)	# 1815
	ori		x4, x0, %lo(l.27824)	# 1815
	flw		f2, 0(x4)	# 1815
	flw		f4, -180(x2)	# 1815
	fsub	f4, f26, f4	# 1815
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1815
	fsub	f1, f26, f1	# 1815
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1815
	flw		f2, -64(x2)	# 122
	fle		f2, f1, fle_cont.33226	# 122
	fadd	f1, f0, f2	# 1816
	jal		x0, fle_cont.33226	# 122
fle_cont.33226:
	flw		f3, -52(x2)	# 1817
	fmul	f1, f3, f1	# 1817
	lui		x4, %hi(l.27827)	# 1817
	ori		x4, x0, %lo(l.27827)	# 1817
	flw		f3, 0(x4)	# 1817
	fdiv	f1, f1, f3	# 1817
	fsw		f1, 0(x13)	# 1817
	jal		x0, beq_cont.33206	# 1780
beq.33211:
	addi	x7, x4, 64348	# 1783
	flw		f1, 0(x7)	# 1783
	lw		x7, 20(x6)	# 473
	add		x14, x7, x4	# 478
	flw		f2, 0(x14)	# 478
	fsub	f1, f1, f2	# 1783
	addi	x14, x11, 64348	# 1784
	flw		f2, 0(x14)	# 1784
	add		x7, x7, x11	# 498
	flw		f3, 0(x7)	# 498
	fsub	f2, f2, f3	# 1784
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1785
	fsqrt	f1, f1	# 1785
	fdiv	f1, f1, f23	# 1785
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
	lw		x29, -40(x2)	# 1787
	sw		x1, -192(x2)	# 1787
	addi	x2, x2, -196	# 1787
	lw		x31, 0(x29)	# 1787
	jalr	x1, x31, 0	# 1787
	addi	x2, x2, 196	# 1787
	lw		x1, -192(x2)	# 1787
	fmul	f1, f1, f1	# 127
	flw		f2, -52(x2)	# 1788
	fmul	f3, f1, f2	# 1788
	fsw		f3, 0(x12)	# 1788
	fsub	f1, f30, f1	# 1789
	fmul	f1, f1, f2	# 1789
	fsw		f1, 0(x13)	# 1789
	jal		x0, beq_cont.33206	# 1773
beq.33209:
	addi	x7, x10, 64348	# 1776
	flw		f1, 0(x7)	# 1776
	lui		x7, %hi(l.27849)	# 1776
	ori		x7, x0, %lo(l.27849)	# 1776
	flw		f2, 0(x7)	# 1776
	fmul	f1, f1, f2	# 1776
	lw		x29, -48(x2)	# 1776
	sw		x1, -192(x2)	# 1776
	addi	x2, x2, -196	# 1776
	lw		x31, 0(x29)	# 1776
	jalr	x1, x31, 0	# 1776
	addi	x2, x2, 196	# 1776
	lw		x1, -192(x2)	# 1776
	fmul	f1, f1, f1	# 127
	flw		f2, -52(x2)	# 1777
	fmul	f3, f2, f1	# 1777
	fsw		f3, 0(x8)	# 1777
	fsub	f1, f30, f1	# 1778
	fmul	f1, f2, f1	# 1778
	fsw		f1, 0(x12)	# 1778
	jal		x0, beq_cont.33206	# 1755
beq.33207:
	addi	x7, x4, 64348	# 1758
	flw		f1, 0(x7)	# 1758
	lw		x7, 20(x6)	# 473
	add		x9, x7, x4	# 478
	flw		f2, 0(x9)	# 478
	fsub	f1, f1, f2	# 1758
	fmul	f3, f1, f24	# 1760
	fsw		f24, -192(x2)	# 1760
	sw		x7, -196(x2)	# 1760
	fsw		f1, -200(x2)	# 1760
	fadd	f1, f0, f3	# 1760
	sw		x1, -204(x2)	# 1760
	addi	x2, x2, -208	# 1760
	jal		x1, min_caml_floor	# 1760
	addi	x2, x2, 208	# 1760
	lw		x1, -204(x2)	# 1760
	fmul	f1, f1, f25	# 1760
	flw		f3, -200(x2)	# 1761
	fsub	f1, f3, f1	# 1761
	addi	x4, x11, 64348	# 1763
	flw		f4, 0(x4)	# 1763
	lw		x4, -196(x2)	# 498
	add		x4, x4, x11	# 498
	flw		f5, 0(x4)	# 498
	fsub	f4, f4, f5	# 1763
	flw		f5, -192(x2)	# 1765
	fmul	f5, f4, f5	# 1765
	fsw		f1, -204(x2)	# 1765
	fsw		f25, -208(x2)	# 1765
	fadd	f1, f0, f5	# 1765
	sw		x1, -212(x2)	# 1765
	addi	x2, x2, -216	# 1765
	jal		x1, min_caml_floor	# 1765
	addi	x2, x2, 216	# 1765
	lw		x1, -212(x2)	# 1765
	flw		f2, -208(x2)	# 1765
	fmul	f1, f1, f2	# 1765
	fsub	f1, f4, f1	# 1766
	flw		f2, -204(x2)	# 125
	fle		f23, f2, fle.33229	# 125
	fle		f23, f1, fle.33231	# 125
	flw		f1, -52(x2)	# 1770
	jal		x0, fle_cont.33228	# 125
fle.33231:
	flw		f1, -64(x2)	# 1770
	jal		x0, fle_cont.33228	# 125
fle.33229:
	fle		f23, f1, fle.33233	# 125
	flw		f1, -64(x2)	# 1771
	jal		x0, fle_cont.33228	# 125
fle.33233:
	flw		f1, -52(x2)	# 1771
fle_cont.33228:
	fsw		f1, 0(x12)	# 1768
beq_cont.33206:
	lw		x4, -152(x2)	# 1975
	lw		x5, 0(x4)	# 1975
	lw		x4, -80(x2)	# 1975
	lw		x29, -28(x2)	# 1975
	sw		x13, -212(x2)	# 1975
	sw		x12, -216(x2)	# 1975
	sw		x8, -220(x2)	# 1975
	sw		x1, -224(x2)	# 1975
	addi	x2, x2, -228	# 1975
	lw		x31, 0(x29)	# 1975
	jalr	x1, x31, 0	# 1975
	addi	x2, x2, 228	# 1975
	lw		x1, -224(x2)	# 1975
	lw		x5, -80(x2)	# 1975
	beq		x4, x5, beq.33235	# 1975
	jal		x0, fle_cont.33132	# 1975
beq.33235:
	lw		x4, -76(x2)	# 334
	addi	x5, x4, 64364	# 334
	flw		f1, 0(x5)	# 334
	addi	x5, x4, 64108	# 334
	flw		f2, 0(x5)	# 334
	fmul	f1, f1, f2	# 334
	lw		x5, -60(x2)	# 334
	addi	x6, x5, 64364	# 334
	flw		f2, 0(x6)	# 334
	addi	x6, x5, 64108	# 334
	flw		f3, 0(x6)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	lw		x6, -56(x2)	# 334
	addi	x7, x6, 64364	# 334
	flw		f2, 0(x7)	# 334
	addi	x7, x6, 64108	# 334
	flw		f3, 0(x7)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	fsub	f1, f0, f1	# 123
	flw		f2, -64(x2)	# 121
	fle		f1, f2, fle.33237	# 121
	jal		x0, fle_cont.33236	# 121
fle.33237:
	fadd	f1, f0, f2	# 1977
fle_cont.33236:
	flw		f2, -148(x2)	# 1978
	fmul	f1, f2, f1	# 1978
	lw		x7, -164(x2)	# 503
	lw		x7, 28(x7)	# 503
	add		x7, x7, x4	# 508
	flw		f2, 0(x7)	# 508
	fmul	f1, f1, f2	# 1978
	addi	x4, x4, 64388	# 344
	flw		f2, 0(x4)	# 344
	lw		x7, -220(x2)	# 344
	flw		f3, 0(x7)	# 344
	fmul	f3, f1, f3	# 344
	fadd	f2, f2, f3	# 344
	fsw		f2, 0(x4)	# 344
	addi	x4, x5, 64388	# 345
	flw		f2, 0(x4)	# 345
	lw		x5, -216(x2)	# 345
	flw		f3, 0(x5)	# 345
	fmul	f3, f1, f3	# 345
	fadd	f2, f2, f3	# 345
	fsw		f2, 0(x4)	# 345
	addi	x4, x6, 64388	# 346
	flw		f2, 0(x4)	# 346
	lw		x5, -212(x2)	# 346
	flw		f3, 0(x5)	# 346
	fmul	f1, f1, f3	# 346
	fadd	f1, f2, f1	# 346
	fsw		f1, 0(x4)	# 346
	jal		x0, fle_cont.33132	# 1969
fle_cont.33132:
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
	ble		x5, x12, ble.33238	# 2077
	jalr	x0, x1, 0	# 2087
ble.33238:
	lw		x13, 8(x4)	# 619
	mul		x14, x30, x5	# 2080
	add		x13, x13, x14	# 2080
	lw		x13, 0(x13)	# 2080
	ble		x10, x13, ble.33240	# 2080
	jalr	x0, x1, 0	# 2086
ble.33240:
	lw		x13, 12(x4)	# 626
	add		x13, x13, x14	# 2082
	lw		x13, 0(x13)	# 2082
	sw		x4, 0(x2)	# 2082
	sw		x29, -4(x2)	# 2082
	sw		x11, -8(x2)	# 2082
	sw		x5, -12(x2)	# 2082
	beq		x13, x10, beq_cont.33242	# 2082
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
	mul		x20, x30, x11	# 302
	add		x21, x13, x20	# 302
	flw		f1, 0(x21)	# 302
	addi	x21, x20, 64388	# 302
	fsw		f1, 0(x21)	# 302
	mul		x22, x30, x8	# 303
	add		x13, x13, x22	# 303
	flw		f1, 0(x13)	# 303
	addi	x13, x22, 64388	# 303
	fsw		f1, 0(x13)	# 303
	lw		x23, 24(x4)	# 656
	add		x23, x23, x18	# 658
	lw		x23, 0(x23)	# 658
	add		x15, x15, x14	# 2047
	lw		x15, 0(x15)	# 2047
	add		x16, x16, x14	# 2048
	lw		x16, 0(x16)	# 2048
	sw		x13, -16(x2)	# 2013
	sw		x21, -20(x2)	# 2013
	sw		x19, -24(x2)	# 2013
	sw		x14, -28(x2)	# 2013
	sw		x17, -32(x2)	# 2013
	sw		x12, -36(x2)	# 2013
	sw		x9, -40(x2)	# 2013
	sw		x8, -44(x2)	# 2013
	sw		x15, -48(x2)	# 2013
	sw		x7, -52(x2)	# 2013
	sw		x6, -56(x2)	# 2013
	sw		x22, -60(x2)	# 2013
	sw		x18, -64(x2)	# 2013
	sw		x16, -68(x2)	# 2013
	sw		x20, -72(x2)	# 2013
	sw		x23, -76(x2)	# 2013
	beq		x23, x10, beq_cont.33244	# 2013
	addi	x10, x18, 64512	# 2014
	lw		x10, 0(x10)	# 2014
	add		x24, x16, x18	# 301
	flw		f1, 0(x24)	# 301
	addi	x24, x18, 64444	# 301
	fsw		f1, 0(x24)	# 301
	add		x24, x16, x20	# 302
	flw		f1, 0(x24)	# 302
	addi	x24, x20, 64444	# 302
	fsw		f1, 0(x24)	# 302
	add		x24, x16, x22	# 303
	flw		f1, 0(x24)	# 303
	addi	x24, x22, 64444	# 303
	fsw		f1, 0(x24)	# 303
	addi	x24, x18, 63796	# 1357
	lw		x24, 0(x24)	# 1357
	sub		x24, x24, x11	# 1357
	sw		x10, -80(x2)	# 1357
	addi	x5, x24, 0	# 1357
	addi	x4, x16, 0	# 1357
	addi	x29, x6, 0	# 1357
	sw		x1, -84(x2)	# 1357
	addi	x2, x2, -88	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 88	# 1357
	lw		x1, -84(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -80(x2)	# 2006
	lw		x5, -48(x2)	# 2006
	lw		x6, -68(x2)	# 2006
	lw		x29, -52(x2)	# 2006
	sw		x1, -84(x2)	# 2006
	addi	x2, x2, -88	# 2006
	lw		x31, 0(x29)	# 2006
	jalr	x1, x31, 0	# 2006
	addi	x2, x2, 88	# 2006
	lw		x1, -84(x2)	# 2006
	jal		x0, beq_cont.33244	# 2013
beq_cont.33244:
	lw		x4, -8(x2)	# 2017
	lw		x5, -76(x2)	# 2017
	beq		x5, x4, beq_cont.33246	# 2017
	lw		x6, -72(x2)	# 2018
	addi	x7, x6, 64512	# 2018
	lw		x7, 0(x7)	# 2018
	lw		x8, -68(x2)	# 301
	lw		x9, -64(x2)	# 301
	add		x10, x8, x9	# 301
	flw		f1, 0(x10)	# 301
	addi	x10, x9, 64444	# 301
	fsw		f1, 0(x10)	# 301
	add		x10, x8, x6	# 302
	flw		f1, 0(x10)	# 302
	addi	x10, x6, 64444	# 302
	fsw		f1, 0(x10)	# 302
	lw		x10, -60(x2)	# 303
	add		x11, x8, x10	# 303
	flw		f1, 0(x11)	# 303
	addi	x11, x10, 64444	# 303
	fsw		f1, 0(x11)	# 303
	addi	x11, x9, 63796	# 1357
	lw		x11, 0(x11)	# 1357
	sub		x11, x11, x4	# 1357
	lw		x29, -56(x2)	# 1357
	sw		x7, -84(x2)	# 1357
	addi	x5, x11, 0	# 1357
	addi	x4, x8, 0	# 1357
	sw		x1, -88(x2)	# 1357
	addi	x2, x2, -92	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 92	# 1357
	lw		x1, -88(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -84(x2)	# 2006
	lw		x5, -48(x2)	# 2006
	lw		x6, -68(x2)	# 2006
	lw		x29, -52(x2)	# 2006
	sw		x1, -88(x2)	# 2006
	addi	x2, x2, -92	# 2006
	lw		x31, 0(x29)	# 2006
	jalr	x1, x31, 0	# 2006
	addi	x2, x2, 92	# 2006
	lw		x1, -88(x2)	# 2006
	jal		x0, beq_cont.33246	# 2017
beq_cont.33246:
	lw		x4, -44(x2)	# 2021
	lw		x5, -76(x2)	# 2021
	beq		x5, x4, beq_cont.33248	# 2021
	lw		x4, -60(x2)	# 2022
	addi	x6, x4, 64512	# 2022
	lw		x6, 0(x6)	# 2022
	lw		x7, -68(x2)	# 301
	lw		x8, -64(x2)	# 301
	add		x9, x7, x8	# 301
	flw		f1, 0(x9)	# 301
	addi	x9, x8, 64444	# 301
	fsw		f1, 0(x9)	# 301
	lw		x9, -72(x2)	# 302
	add		x10, x7, x9	# 302
	flw		f1, 0(x10)	# 302
	addi	x10, x9, 64444	# 302
	fsw		f1, 0(x10)	# 302
	add		x10, x7, x4	# 303
	flw		f1, 0(x10)	# 303
	addi	x10, x4, 64444	# 303
	fsw		f1, 0(x10)	# 303
	addi	x10, x8, 63796	# 1357
	lw		x10, 0(x10)	# 1357
	lw		x11, -8(x2)	# 1357
	sub		x10, x10, x11	# 1357
	lw		x29, -56(x2)	# 1357
	sw		x6, -88(x2)	# 1357
	addi	x5, x10, 0	# 1357
	addi	x4, x7, 0	# 1357
	sw		x1, -92(x2)	# 1357
	addi	x2, x2, -96	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 96	# 1357
	lw		x1, -92(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -88(x2)	# 2006
	lw		x5, -48(x2)	# 2006
	lw		x6, -68(x2)	# 2006
	lw		x29, -52(x2)	# 2006
	sw		x1, -92(x2)	# 2006
	addi	x2, x2, -96	# 2006
	lw		x31, 0(x29)	# 2006
	jalr	x1, x31, 0	# 2006
	addi	x2, x2, 96	# 2006
	lw		x1, -92(x2)	# 2006
	jal		x0, beq_cont.33248	# 2021
beq_cont.33248:
	lw		x4, -40(x2)	# 2025
	lw		x5, -76(x2)	# 2025
	beq		x5, x4, beq_cont.33250	# 2025
	mul		x4, x30, x4	# 2026
	addi	x4, x4, 64512	# 2026
	lw		x4, 0(x4)	# 2026
	lw		x6, -68(x2)	# 301
	lw		x7, -64(x2)	# 301
	add		x8, x6, x7	# 301
	flw		f1, 0(x8)	# 301
	addi	x8, x7, 64444	# 301
	fsw		f1, 0(x8)	# 301
	lw		x8, -72(x2)	# 302
	add		x9, x6, x8	# 302
	flw		f1, 0(x9)	# 302
	addi	x9, x8, 64444	# 302
	fsw		f1, 0(x9)	# 302
	lw		x9, -60(x2)	# 303
	add		x10, x6, x9	# 303
	flw		f1, 0(x10)	# 303
	addi	x10, x9, 64444	# 303
	fsw		f1, 0(x10)	# 303
	addi	x10, x7, 63796	# 1357
	lw		x10, 0(x10)	# 1357
	lw		x11, -8(x2)	# 1357
	sub		x10, x10, x11	# 1357
	lw		x29, -56(x2)	# 1357
	sw		x4, -92(x2)	# 1357
	addi	x5, x10, 0	# 1357
	addi	x4, x6, 0	# 1357
	sw		x1, -96(x2)	# 1357
	addi	x2, x2, -100	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 100	# 1357
	lw		x1, -96(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -92(x2)	# 2006
	lw		x5, -48(x2)	# 2006
	lw		x6, -68(x2)	# 2006
	lw		x29, -52(x2)	# 2006
	sw		x1, -96(x2)	# 2006
	addi	x2, x2, -100	# 2006
	lw		x31, 0(x29)	# 2006
	jalr	x1, x31, 0	# 2006
	addi	x2, x2, 100	# 2006
	lw		x1, -96(x2)	# 2006
	jal		x0, beq_cont.33250	# 2025
beq_cont.33250:
	lw		x4, -36(x2)	# 2029
	lw		x5, -76(x2)	# 2029
	beq		x5, x4, beq_cont.33252	# 2029
	mul		x4, x30, x4	# 2030
	addi	x4, x4, 64512	# 2030
	lw		x4, 0(x4)	# 2030
	lw		x5, -68(x2)	# 301
	lw		x6, -64(x2)	# 301
	add		x7, x5, x6	# 301
	flw		f1, 0(x7)	# 301
	addi	x7, x6, 64444	# 301
	fsw		f1, 0(x7)	# 301
	lw		x7, -72(x2)	# 302
	add		x8, x5, x7	# 302
	flw		f1, 0(x8)	# 302
	addi	x8, x7, 64444	# 302
	fsw		f1, 0(x8)	# 302
	lw		x8, -60(x2)	# 303
	add		x9, x5, x8	# 303
	flw		f1, 0(x9)	# 303
	addi	x9, x8, 64444	# 303
	fsw		f1, 0(x9)	# 303
	addi	x9, x6, 63796	# 1357
	lw		x9, 0(x9)	# 1357
	lw		x10, -8(x2)	# 1357
	sub		x9, x9, x10	# 1357
	lw		x29, -56(x2)	# 1357
	sw		x4, -96(x2)	# 1357
	addi	x4, x5, 0	# 1357
	addi	x5, x9, 0	# 1357
	sw		x1, -100(x2)	# 1357
	addi	x2, x2, -104	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 104	# 1357
	lw		x1, -100(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -96(x2)	# 2006
	lw		x5, -48(x2)	# 2006
	lw		x6, -68(x2)	# 2006
	lw		x29, -52(x2)	# 2006
	sw		x1, -100(x2)	# 2006
	addi	x2, x2, -104	# 2006
	lw		x31, 0(x29)	# 2006
	jalr	x1, x31, 0	# 2006
	addi	x2, x2, 104	# 2006
	lw		x1, -100(x2)	# 2006
	jal		x0, beq_cont.33252	# 2029
beq_cont.33252:
	lw		x4, -32(x2)	# 2049
	lw		x5, -28(x2)	# 2049
	add		x4, x4, x5	# 2049
	lw		x4, 0(x4)	# 2049
	lw		x5, -64(x2)	# 374
	addi	x6, x5, 64400	# 374
	flw		f1, 0(x6)	# 374
	add		x5, x4, x5	# 374
	flw		f2, 0(x5)	# 374
	lw		x5, -24(x2)	# 374
	flw		f3, 0(x5)	# 374
	fmul	f2, f2, f3	# 374
	fadd	f1, f1, f2	# 374
	fsw		f1, 0(x6)	# 374
	lw		x5, -72(x2)	# 375
	addi	x6, x5, 64400	# 375
	flw		f1, 0(x6)	# 375
	add		x5, x4, x5	# 375
	flw		f2, 0(x5)	# 375
	lw		x5, -20(x2)	# 375
	flw		f3, 0(x5)	# 375
	fmul	f2, f2, f3	# 375
	fadd	f1, f1, f2	# 375
	fsw		f1, 0(x6)	# 375
	lw		x5, -60(x2)	# 376
	addi	x6, x5, 64400	# 376
	flw		f1, 0(x6)	# 376
	add		x4, x4, x5	# 376
	flw		f2, 0(x4)	# 376
	lw		x4, -16(x2)	# 376
	flw		f3, 0(x4)	# 376
	fmul	f2, f2, f3	# 376
	fadd	f1, f1, f2	# 376
	fsw		f1, 0(x6)	# 376
	jal		x0, beq_cont.33242	# 2082
beq_cont.33242:
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
	lw		x16, 0(x15)	# 2129
	addi	x17, x0, 4	# 2130
	ble		x9, x17, ble.33254	# 2130
	jalr	x0, x1, 0	# 2149
ble.33254:
	lw		x17, 8(x16)	# 619
	mul		x18, x30, x9	# 2105
	add		x17, x17, x18	# 2105
	lw		x17, 0(x17)	# 2105
	ble		x12, x17, ble.33256	# 2133
	jalr	x0, x1, 0	# 2148
ble.33256:
	add		x19, x6, x14	# 2113
	lw		x19, 0(x19)	# 2113
	lw		x20, 8(x19)	# 619
	add		x20, x20, x18	# 2105
	lw		x20, 0(x20)	# 2105
	beq		x20, x17, beq.33259	# 2113
	addi	x17, x0, 0	# 2121
	jal		x0, beq_cont.33258	# 2113
beq.33259:
	add		x20, x8, x14	# 2114
	lw		x20, 0(x20)	# 2114
	lw		x20, 8(x20)	# 619
	add		x20, x20, x18	# 2105
	lw		x20, 0(x20)	# 2105
	beq		x20, x17, beq.33261	# 2114
	addi	x17, x0, 0	# 2120
	jal		x0, beq_cont.33258	# 2114
beq.33261:
	sub		x20, x4, x13	# 2115
	mul		x20, x30, x20	# 2115
	add		x20, x7, x20	# 2115
	lw		x20, 0(x20)	# 2115
	lw		x20, 8(x20)	# 619
	add		x20, x20, x18	# 2105
	lw		x20, 0(x20)	# 2105
	beq		x20, x17, beq.33263	# 2115
	addi	x17, x0, 0	# 2119
	jal		x0, beq_cont.33258	# 2115
beq.33263:
	add		x20, x4, x13	# 2116
	mul		x20, x30, x20	# 2116
	add		x20, x7, x20	# 2116
	lw		x20, 0(x20)	# 2116
	lw		x20, 8(x20)	# 619
	add		x20, x20, x18	# 2105
	lw		x20, 0(x20)	# 2105
	beq		x20, x17, beq.33265	# 2116
	addi	x17, x0, 0	# 2118
	jal		x0, beq_cont.33258	# 2116
beq.33265:
	addi	x17, x0, 1	# 2117
beq_cont.33258:
	beq		x17, x12, beq.33266	# 2135
	lw		x10, 12(x16)	# 626
	add		x10, x10, x18	# 2139
	lw		x10, 0(x10)	# 2139
	beq		x10, x12, beq_cont.33267	# 2139
	lw		x10, 20(x19)	# 640
	sub		x17, x4, x13	# 2059
	mul		x17, x30, x17	# 2059
	add		x17, x7, x17	# 2059
	lw		x17, 0(x17)	# 2059
	lw		x17, 20(x17)	# 640
	lw		x16, 20(x16)	# 640
	add		x19, x4, x13	# 2061
	mul		x19, x30, x19	# 2061
	add		x19, x7, x19	# 2061
	lw		x19, 0(x19)	# 2061
	lw		x19, 20(x19)	# 640
	add		x14, x8, x14	# 2062
	lw		x14, 0(x14)	# 2062
	lw		x14, 20(x14)	# 640
	add		x10, x10, x18	# 2064
	lw		x10, 0(x10)	# 2064
	mul		x12, x30, x12	# 301
	add		x20, x10, x12	# 301
	flw		f1, 0(x20)	# 301
	addi	x20, x12, 64388	# 301
	fsw		f1, 0(x20)	# 301
	mul		x21, x30, x13	# 302
	add		x22, x10, x21	# 302
	flw		f1, 0(x22)	# 302
	addi	x22, x21, 64388	# 302
	fsw		f1, 0(x22)	# 302
	mul		x11, x30, x11	# 303
	add		x10, x10, x11	# 303
	flw		f1, 0(x10)	# 303
	addi	x10, x11, 64388	# 303
	fsw		f1, 0(x10)	# 303
	add		x17, x17, x18	# 2065
	lw		x17, 0(x17)	# 2065
	flw		f1, 0(x20)	# 351
	add		x23, x17, x12	# 351
	flw		f2, 0(x23)	# 351
	fadd	f1, f1, f2	# 351
	fsw		f1, 0(x20)	# 351
	flw		f1, 0(x22)	# 352
	add		x23, x17, x21	# 352
	flw		f2, 0(x23)	# 352
	fadd	f1, f1, f2	# 352
	fsw		f1, 0(x22)	# 352
	flw		f1, 0(x10)	# 353
	add		x17, x17, x11	# 353
	flw		f2, 0(x17)	# 353
	fadd	f1, f1, f2	# 353
	fsw		f1, 0(x10)	# 353
	add		x16, x16, x18	# 2066
	lw		x16, 0(x16)	# 2066
	flw		f1, 0(x20)	# 351
	add		x17, x16, x12	# 351
	flw		f2, 0(x17)	# 351
	fadd	f1, f1, f2	# 351
	fsw		f1, 0(x20)	# 351
	flw		f1, 0(x22)	# 352
	add		x17, x16, x21	# 352
	flw		f2, 0(x17)	# 352
	fadd	f1, f1, f2	# 352
	fsw		f1, 0(x22)	# 352
	flw		f1, 0(x10)	# 353
	add		x16, x16, x11	# 353
	flw		f2, 0(x16)	# 353
	fadd	f1, f1, f2	# 353
	fsw		f1, 0(x10)	# 353
	add		x16, x19, x18	# 2067
	lw		x16, 0(x16)	# 2067
	flw		f1, 0(x20)	# 351
	add		x17, x16, x12	# 351
	flw		f2, 0(x17)	# 351
	fadd	f1, f1, f2	# 351
	fsw		f1, 0(x20)	# 351
	flw		f1, 0(x22)	# 352
	add		x17, x16, x21	# 352
	flw		f2, 0(x17)	# 352
	fadd	f1, f1, f2	# 352
	fsw		f1, 0(x22)	# 352
	flw		f1, 0(x10)	# 353
	add		x16, x16, x11	# 353
	flw		f2, 0(x16)	# 353
	fadd	f1, f1, f2	# 353
	fsw		f1, 0(x10)	# 353
	add		x14, x14, x18	# 2068
	lw		x14, 0(x14)	# 2068
	flw		f1, 0(x20)	# 351
	add		x16, x14, x12	# 351
	flw		f2, 0(x16)	# 351
	fadd	f1, f1, f2	# 351
	fsw		f1, 0(x20)	# 351
	flw		f1, 0(x22)	# 352
	add		x16, x14, x21	# 352
	flw		f2, 0(x16)	# 352
	fadd	f1, f1, f2	# 352
	fsw		f1, 0(x22)	# 352
	flw		f1, 0(x10)	# 353
	add		x14, x14, x11	# 353
	flw		f2, 0(x14)	# 353
	fadd	f1, f1, f2	# 353
	fsw		f1, 0(x10)	# 353
	lw		x14, 0(x15)	# 2070
	lw		x14, 16(x14)	# 633
	add		x14, x14, x18	# 2071
	lw		x14, 0(x14)	# 2071
	addi	x15, x12, 64400	# 374
	flw		f1, 0(x15)	# 374
	add		x12, x14, x12	# 374
	flw		f2, 0(x12)	# 374
	flw		f3, 0(x20)	# 374
	fmul	f2, f2, f3	# 374
	fadd	f1, f1, f2	# 374
	fsw		f1, 0(x15)	# 374
	addi	x12, x21, 64400	# 375
	flw		f1, 0(x12)	# 375
	add		x15, x14, x21	# 375
	flw		f2, 0(x15)	# 375
	flw		f3, 0(x22)	# 375
	fmul	f2, f2, f3	# 375
	fadd	f1, f1, f2	# 375
	fsw		f1, 0(x12)	# 375
	addi	x12, x11, 64400	# 376
	flw		f1, 0(x12)	# 376
	add		x11, x14, x11	# 376
	flw		f2, 0(x11)	# 376
	flw		f3, 0(x10)	# 376
	fmul	f2, f2, f3	# 376
	fadd	f1, f1, f2	# 376
	fsw		f1, 0(x12)	# 376
	jal		x0, beq_cont.33267	# 2139
beq_cont.33267:
	add		x9, x9, x13	# 2144
	lw		x31, 0(x29)	# 2144
	jalr	x0, x31, 0	# 2144
beq.33266:
	addi	x5, x9, 0	# 2147
	addi	x4, x16, 0	# 2147
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
	ble		x5, x11, ble.33269	# 2205
	jalr	x0, x1, 0	# 2229
ble.33269:
	lw		x11, 8(x4)	# 619
	mul		x12, x30, x5	# 2105
	add		x11, x11, x12	# 2105
	lw		x11, 0(x11)	# 2105
	ble		x9, x11, ble.33271	# 2209
	jalr	x0, x1, 0	# 2228
ble.33271:
	lw		x11, 12(x4)	# 626
	add		x11, x11, x12	# 2212
	lw		x11, 0(x11)	# 2212
	sw		x29, 0(x2)	# 2212
	sw		x10, -4(x2)	# 2212
	sw		x5, -8(x2)	# 2212
	beq		x11, x9, beq_cont.33273	# 2212
	lw		x11, 24(x4)	# 656
	mul		x9, x30, x9	# 658
	add		x11, x11, x9	# 658
	lw		x11, 0(x11)	# 658
	addi	x13, x9, 64388	# 289
	fsw		f1, 0(x13)	# 289
	mul		x14, x30, x10	# 290
	addi	x15, x14, 64388	# 290
	fsw		f1, 0(x15)	# 290
	mul		x8, x30, x8	# 291
	addi	x16, x8, 64388	# 291
	fsw		f1, 0(x16)	# 291
	lw		x17, 28(x4)	# 670
	lw		x18, 4(x4)	# 611
	mul		x11, x30, x11	# 2221
	addi	x11, x11, 64512	# 2221
	lw		x11, 0(x11)	# 2221
	add		x17, x17, x12	# 2222
	lw		x17, 0(x17)	# 2222
	add		x18, x18, x12	# 2223
	lw		x18, 0(x18)	# 2223
	add		x19, x18, x9	# 301
	flw		f1, 0(x19)	# 301
	addi	x19, x9, 64444	# 301
	fsw		f1, 0(x19)	# 301
	add		x19, x18, x14	# 302
	flw		f1, 0(x19)	# 302
	addi	x19, x14, 64444	# 302
	fsw		f1, 0(x19)	# 302
	add		x19, x18, x8	# 303
	flw		f1, 0(x19)	# 303
	addi	x19, x8, 64444	# 303
	fsw		f1, 0(x19)	# 303
	addi	x19, x9, 63796	# 1357
	lw		x19, 0(x19)	# 1357
	sub		x19, x19, x10	# 1357
	sw		x8, -12(x2)	# 1357
	sw		x16, -16(x2)	# 1357
	sw		x14, -20(x2)	# 1357
	sw		x15, -24(x2)	# 1357
	sw		x9, -28(x2)	# 1357
	sw		x13, -32(x2)	# 1357
	sw		x12, -36(x2)	# 1357
	sw		x4, -40(x2)	# 1357
	sw		x18, -44(x2)	# 1357
	sw		x17, -48(x2)	# 1357
	sw		x11, -52(x2)	# 1357
	sw		x7, -56(x2)	# 1357
	addi	x5, x19, 0	# 1357
	addi	x4, x18, 0	# 1357
	addi	x29, x6, 0	# 1357
	sw		x1, -60(x2)	# 1357
	addi	x2, x2, -64	# 1357
	lw		x31, 0(x29)	# 1357
	jalr	x1, x31, 0	# 1357
	addi	x2, x2, 64	# 1357
	lw		x1, -60(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -52(x2)	# 2006
	lw		x5, -48(x2)	# 2006
	lw		x6, -44(x2)	# 2006
	lw		x29, -56(x2)	# 2006
	sw		x1, -60(x2)	# 2006
	addi	x2, x2, -64	# 2006
	lw		x31, 0(x29)	# 2006
	jalr	x1, x31, 0	# 2006
	addi	x2, x2, 64	# 2006
	lw		x1, -60(x2)	# 2006
	lw		x4, -40(x2)	# 640
	lw		x5, 20(x4)	# 640
	lw		x6, -36(x2)	# 2225
	add		x5, x5, x6	# 2225
	lw		x5, 0(x5)	# 2225
	lw		x6, -32(x2)	# 301
	flw		f1, 0(x6)	# 301
	lw		x6, -28(x2)	# 301
	add		x6, x5, x6	# 301
	fsw		f1, 0(x6)	# 301
	lw		x6, -24(x2)	# 302
	flw		f1, 0(x6)	# 302
	lw		x6, -20(x2)	# 302
	add		x6, x5, x6	# 302
	fsw		f1, 0(x6)	# 302
	lw		x6, -16(x2)	# 303
	flw		f1, 0(x6)	# 303
	lw		x6, -12(x2)	# 303
	add		x5, x5, x6	# 303
	fsw		f1, 0(x5)	# 303
	jal		x0, beq_cont.33273	# 2212
beq_cont.33273:
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
	ble		x11, x5, ble.33275	# 2235
	jalr	x0, x1, 0	# 2255
ble.33275:
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
	addi	x4, x13, 64456	# 2238
	flw		f2, 0(x4)	# 2238
	fmul	f2, f1, f2	# 2238
	flw		f5, -20(x2)	# 2238
	fadd	f2, f2, f5	# 2238
	addi	x4, x13, 64492	# 2238
	fsw		f2, 0(x4)	# 2238
	mul		x5, x30, x12	# 2239
	addi	x6, x5, 64456	# 2239
	flw		f2, 0(x6)	# 2239
	fmul	f2, f1, f2	# 2239
	flw		f6, -16(x2)	# 2239
	fadd	f2, f2, f6	# 2239
	addi	x6, x5, 64492	# 2239
	fsw		f2, 0(x6)	# 2239
	mul		x10, x30, x10	# 2240
	addi	x14, x10, 64456	# 2240
	flw		f2, 0(x14)	# 2240
	fmul	f1, f1, f2	# 2240
	fadd	f1, f1, f3	# 2240
	addi	x14, x10, 64492	# 2240
	fsw		f1, 0(x14)	# 2240
	flw		f1, 0(x4)	# 325
	fmul	f2, f1, f1	# 127
	flw		f7, 0(x6)	# 325
	fmul	f7, f7, f7	# 127
	fadd	f2, f2, f7	# 325
	flw		f7, 0(x14)	# 325
	fmul	f7, f7, f7	# 127
	fadd	f2, f2, f7	# 325
	fsqrt	f2, f2	# 325
	feq		f2, f4, feq.33278	# 120
	fdiv	f2, f30, f2	# 326
	jal		x0, feq_cont.33277	# 120
feq.33278:
	fadd	f2, f0, f30	# 326
feq_cont.33277:
	fmul	f1, f1, f2	# 327
	fsw		f1, 0(x4)	# 327
	flw		f1, 0(x6)	# 328
	fmul	f1, f1, f2	# 328
	fsw		f1, 0(x6)	# 328
	flw		f1, 0(x14)	# 329
	fmul	f1, f1, f2	# 329
	fsw		f1, 0(x14)	# 329
	addi	x4, x13, 64400	# 289
	fsw		f4, 0(x4)	# 289
	addi	x6, x5, 64400	# 290
	fsw		f4, 0(x6)	# 290
	addi	x14, x10, 64400	# 291
	fsw		f4, 0(x14)	# 291
	addi	x15, x13, 64096	# 301
	flw		f1, 0(x15)	# 301
	addi	x15, x13, 64432	# 301
	fsw		f1, 0(x15)	# 301
	addi	x15, x5, 64096	# 302
	flw		f1, 0(x15)	# 302
	addi	x15, x5, 64432	# 302
	fsw		f1, 0(x15)	# 302
	addi	x15, x10, 64096	# 303
	flw		f1, 0(x15)	# 303
	addi	x15, x10, 64432	# 303
	fsw		f1, 0(x15)	# 303
	fadd	f1, f0, f30	# 2246
	lw		x15, -12(x2)	# 2246
	mul		x16, x30, x15	# 2246
	lw		x17, -8(x2)	# 2246
	add		x16, x17, x16	# 2246
	lw		x18, 0(x16)	# 2246
	addi	x19, x0, 64492	# 2246
	fsw		f3, -24(x2)	# 2246
	sw		x9, -28(x2)	# 2246
	sw		x12, -32(x2)	# 2246
	sw		x11, -36(x2)	# 2246
	sw		x8, -40(x2)	# 2246
	sw		x10, -44(x2)	# 2246
	sw		x14, -48(x2)	# 2246
	sw		x5, -52(x2)	# 2246
	sw		x6, -56(x2)	# 2246
	sw		x13, -60(x2)	# 2246
	sw		x4, -64(x2)	# 2246
	sw		x16, -68(x2)	# 2246
	addi	x6, x18, 0	# 2246
	addi	x5, x19, 0	# 2246
	addi	x4, x11, 0	# 2246
	addi	x29, x7, 0	# 2246
	fadd	f2, f0, f4	# 2246
	sw		x1, -72(x2)	# 2246
	addi	x2, x2, -76	# 2246
	lw		x31, 0(x29)	# 2246
	jalr	x1, x31, 0	# 2246
	addi	x2, x2, 76	# 2246
	lw		x1, -72(x2)	# 2246
	lw		x4, -68(x2)	# 2247
	lw		x5, 0(x4)	# 2247
	lw		x5, 0(x5)	# 604
	lw		x6, -64(x2)	# 301
	flw		f1, 0(x6)	# 301
	lw		x6, -60(x2)	# 301
	add		x7, x5, x6	# 301
	fsw		f1, 0(x7)	# 301
	lw		x7, -56(x2)	# 302
	flw		f1, 0(x7)	# 302
	lw		x7, -52(x2)	# 302
	add		x7, x5, x7	# 302
	fsw		f1, 0(x7)	# 302
	lw		x7, -48(x2)	# 303
	flw		f1, 0(x7)	# 303
	lw		x7, -44(x2)	# 303
	add		x5, x5, x7	# 303
	fsw		f1, 0(x5)	# 303
	lw		x5, 0(x4)	# 2248
	lw		x5, 24(x5)	# 663
	add		x5, x5, x6	# 665
	lw		x6, -4(x2)	# 665
	sw		x6, 0(x5)	# 665
	lw		x4, 0(x4)	# 2251
	lw		x5, -36(x2)	# 2251
	lw		x29, -40(x2)	# 2251
	sw		x1, -72(x2)	# 2251
	addi	x2, x2, -76	# 2251
	lw		x31, 0(x29)	# 2251
	jalr	x1, x31, 0	# 2251
	addi	x2, x2, 76	# 2251
	lw		x1, -72(x2)	# 2251
	lw		x4, -12(x2)	# 2253
	lw		x5, -32(x2)	# 2253
	sub		x4, x4, x5	# 2253
	lw		x6, -4(x2)	# 266
	add		x5, x6, x5	# 266
	lw		x6, -28(x2)	# 267
	ble		x6, x5, ble.33280	# 267
	addi	x6, x5, 0	# 267
	jal		x0, ble_cont.33279	# 267
ble.33280:
	sub		x6, x5, x6	# 267
ble_cont.33279:
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
	lw		x18, 0(x17)	# 2276
	ble		x18, x4, ble.33281	# 2276
	mul		x18, x30, x4	# 2279
	add		x18, x7, x18	# 2279
	lw		x19, 0(x18)	# 2279
	lw		x19, 0(x19)	# 604
	add		x20, x19, x16	# 301
	flw		f1, 0(x20)	# 301
	addi	x16, x16, 64400	# 301
	fsw		f1, 0(x16)	# 301
	mul		x20, x30, x15	# 302
	add		x21, x19, x20	# 302
	flw		f1, 0(x21)	# 302
	addi	x21, x20, 64400	# 302
	fsw		f1, 0(x21)	# 302
	mul		x12, x30, x12	# 303
	add		x19, x19, x12	# 303
	flw		f1, 0(x19)	# 303
	addi	x12, x12, 64400	# 303
	fsw		f1, 0(x12)	# 303
	addi	x19, x20, 64412	# 2092
	lw		x19, 0(x19)	# 2092
	add		x20, x5, x15	# 2092
	ble		x19, x20, ble.33283	# 2092
	ble		x5, x14, ble.33285	# 2093
	lw		x17, 0(x17)	# 2094
	add		x19, x4, x15	# 2094
	ble		x17, x19, ble.33287	# 2094
	ble		x4, x14, ble.33289	# 2095
	addi	x17, x0, 1	# 2096
	jal		x0, ble_cont.33282	# 2095
ble.33289:
	addi	x17, x0, 0	# 2097
	jal		x0, ble_cont.33282	# 2094
ble.33287:
	addi	x17, x0, 0	# 2098
	jal		x0, ble_cont.33282	# 2093
ble.33285:
	addi	x17, x0, 0	# 2099
	jal		x0, ble_cont.33282	# 2092
ble.33283:
	addi	x17, x0, 0	# 2100
ble_cont.33282:
	sw		x8, 0(x2)	# 2282
	sw		x7, -4(x2)	# 2282
	sw		x6, -8(x2)	# 2282
	sw		x5, -12(x2)	# 2282
	sw		x29, -16(x2)	# 2282
	sw		x15, -20(x2)	# 2282
	sw		x4, -24(x2)	# 2282
	sw		x12, -28(x2)	# 2282
	sw		x21, -32(x2)	# 2282
	sw		x14, -36(x2)	# 2282
	sw		x16, -40(x2)	# 2282
	sw		x13, -44(x2)	# 2282
	sw		x9, -48(x2)	# 2282
	beq		x17, x14, beq.33291	# 2282
	addi	x9, x14, 0	# 2283
	addi	x29, x10, 0	# 2283
	sw		x1, -52(x2)	# 2283
	addi	x2, x2, -56	# 2283
	lw		x31, 0(x29)	# 2283
	jalr	x1, x31, 0	# 2283
	addi	x2, x2, 56	# 2283
	lw		x1, -52(x2)	# 2283
	jal		x0, beq_cont.33290	# 2282
beq.33291:
	lw		x10, 0(x18)	# 2285
	addi	x5, x14, 0	# 2285
	addi	x4, x10, 0	# 2285
	addi	x29, x11, 0	# 2285
	sw		x1, -52(x2)	# 2285
	addi	x2, x2, -56	# 2285
	lw		x31, 0(x29)	# 2285
	jalr	x1, x31, 0	# 2285
	addi	x2, x2, 56	# 2285
	lw		x1, -52(x2)	# 2285
beq_cont.33290:
	lw		x4, -44(x2)	# 2182
	lw		x5, -48(x2)	# 2182
	beq		x5, x4, beq.33293	# 2182
	lw		x4, -40(x2)	# 2190
	flw		f1, 0(x4)	# 2190
	sw		x1, -52(x2)	# 2176
	addi	x2, x2, -56	# 2176
	jal		x1, min_caml_int_of_float	# 2176
	addi	x2, x2, 56	# 2176
	lw		x1, -52(x2)	# 2176
	addi	x5, x0, 255	# 2177
	ble		x4, x5, ble.33295	# 2177
	addi	x4, x0, 255	# 2177
	jal		x0, ble_cont.33294	# 2177
ble.33295:
	lw		x6, -36(x2)	# 2177
	ble		x6, x4, ble_cont.33294	# 2177
	addi	x4, x0, 0	# 2177
	jal		x0, ble_cont.33294	# 2177
ble_cont.33294:
	sw		x1, -52(x2)	# 2178
	addi	x2, x2, -56	# 2178
	jal		x1, min_caml_print_char	# 2178
	addi	x2, x2, 56	# 2178
	lw		x1, -52(x2)	# 2178
	lw		x4, -32(x2)	# 2191
	flw		f1, 0(x4)	# 2191
	sw		x5, -52(x2)	# 2176
	sw		x1, -56(x2)	# 2176
	addi	x2, x2, -60	# 2176
	jal		x1, min_caml_int_of_float	# 2176
	addi	x2, x2, 60	# 2176
	lw		x1, -56(x2)	# 2176
	lw		x5, -52(x2)	# 2177
	ble		x4, x5, ble.33299	# 2177
	addi	x4, x0, 255	# 2177
	jal		x0, ble_cont.33298	# 2177
ble.33299:
	lw		x6, -36(x2)	# 2177
	ble		x6, x4, ble_cont.33298	# 2177
	addi	x4, x0, 0	# 2177
	jal		x0, ble_cont.33298	# 2177
ble_cont.33298:
	sw		x1, -56(x2)	# 2178
	addi	x2, x2, -60	# 2178
	jal		x1, min_caml_print_char	# 2178
	addi	x2, x2, 60	# 2178
	lw		x1, -56(x2)	# 2178
	lw		x4, -28(x2)	# 2192
	flw		f1, 0(x4)	# 2192
	sw		x1, -56(x2)	# 2176
	addi	x2, x2, -60	# 2176
	jal		x1, min_caml_int_of_float	# 2176
	addi	x2, x2, 60	# 2176
	lw		x1, -56(x2)	# 2176
	lw		x5, -52(x2)	# 2177
	ble		x4, x5, ble.33303	# 2177
	addi	x4, x0, 255	# 2177
	jal		x0, ble_cont.33302	# 2177
ble.33303:
	lw		x5, -36(x2)	# 2177
	ble		x5, x4, ble_cont.33302	# 2177
	addi	x4, x0, 0	# 2177
	jal		x0, ble_cont.33302	# 2177
ble_cont.33302:
	sw		x1, -56(x2)	# 2178
	addi	x2, x2, -60	# 2178
	jal		x1, min_caml_print_char	# 2178
	addi	x2, x2, 60	# 2178
	lw		x1, -56(x2)	# 2178
	jal		x0, beq_cont.33292	# 2182
beq.33293:
	lw		x4, -40(x2)	# 2183
	flw		f1, 0(x4)	# 2183
	sw		x1, -56(x2)	# 2170
	addi	x2, x2, -60	# 2170
	jal		x1, min_caml_int_of_float	# 2170
	addi	x2, x2, 60	# 2170
	lw		x1, -56(x2)	# 2170
	addi	x5, x0, 255	# 2171
	ble		x4, x5, ble.33307	# 2171
	addi	x4, x0, 255	# 2171
	jal		x0, ble_cont.33306	# 2171
ble.33307:
	lw		x6, -36(x2)	# 2171
	ble		x6, x4, ble_cont.33306	# 2171
	addi	x4, x0, 0	# 2171
	jal		x0, ble_cont.33306	# 2171
ble_cont.33306:
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
	flw		f1, 0(x4)	# 2185
	sw		x5, -60(x2)	# 2170
	sw		x1, -64(x2)	# 2170
	addi	x2, x2, -68	# 2170
	jal		x1, min_caml_int_of_float	# 2170
	addi	x2, x2, 68	# 2170
	lw		x1, -64(x2)	# 2170
	lw		x5, -60(x2)	# 2171
	ble		x4, x5, ble.33311	# 2171
	addi	x4, x0, 255	# 2171
	jal		x0, ble_cont.33310	# 2171
ble.33311:
	lw		x6, -36(x2)	# 2171
	ble		x6, x4, ble_cont.33310	# 2171
	addi	x4, x0, 0	# 2171
	jal		x0, ble_cont.33310	# 2171
ble_cont.33310:
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
	flw		f1, 0(x4)	# 2187
	sw		x1, -64(x2)	# 2170
	addi	x2, x2, -68	# 2170
	jal		x1, min_caml_int_of_float	# 2170
	addi	x2, x2, 68	# 2170
	lw		x1, -64(x2)	# 2170
	lw		x5, -60(x2)	# 2171
	ble		x4, x5, ble.33315	# 2171
	addi	x4, x0, 255	# 2171
	jal		x0, ble_cont.33314	# 2171
ble.33315:
	lw		x5, -36(x2)	# 2171
	ble		x5, x4, ble_cont.33314	# 2171
	addi	x4, x0, 0	# 2171
	jal		x0, ble_cont.33314	# 2171
ble_cont.33314:
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
beq_cont.33292:
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
ble.33281:
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
	ble		x17, x4, ble.33319	# 2297
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
	ble		x17, x4, ble_cont.33320	# 2299
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
	addi	x4, x18, 64468	# 2263
	flw		f2, 0(x4)	# 2263
	fmul	f2, f1, f2	# 2263
	addi	x4, x18, 64480	# 2263
	flw		f3, 0(x4)	# 2263
	fadd	f2, f2, f3	# 2263
	addi	x4, x16, 64468	# 2264
	flw		f3, 0(x4)	# 2264
	fmul	f3, f1, f3	# 2264
	addi	x4, x16, 64480	# 2264
	flw		f4, 0(x4)	# 2264
	fadd	f3, f3, f4	# 2264
	mul		x4, x30, x13	# 2265
	addi	x5, x4, 64468	# 2265
	flw		f4, 0(x5)	# 2265
	fmul	f1, f1, f4	# 2265
	addi	x4, x4, 64480	# 2265
	flw		f4, 0(x4)	# 2265
	fadd	f1, f1, f4	# 2265
	addi	x4, x18, 64412	# 2266
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
	jal		x0, ble_cont.33320	# 2299
ble_cont.33320:
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
	ble		x6, x5, ble.33323	# 267
	addi	x8, x5, 0	# 267
	jal		x0, ble_cont.33322	# 267
ble.33323:
	sub		x8, x5, x6	# 267
ble_cont.33322:
	lw		x5, -28(x2)	# 2303
	lw		x6, -24(x2)	# 2303
	lw		x7, -32(x2)	# 2303
	lw		x9, -20(x2)	# 2303
	lw		x29, 0(x2)	# 2303
	lw		x31, 0(x29)	# 2303
	jalr	x0, x31, 0	# 2303
ble.33319:
	jalr	x0, x1, 0	# 2304
init_line_elements.2946.18000:
	lw		x6, 24(x29)	# 2339
	lw		x7, 20(x29)	# 2339
	lw		x8, 16(x29)	# 2339
	lw		x9, 12(x29)	# 2339
	lw		x10, 8(x29)	# 2339
	flw		f1, 4(x29)	# 2339
	ble		x9, x5, ble.33325	# 2339
	jalr	x0, x1, 0	# 2343
ble.33325:
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
	lw		x5, -60(x2)	# 2316
	lw		x6, -32(x2)	# 2316
	add		x8, x5, x6	# 2316
	sw		x4, 0(x8)	# 2316
	lw		x4, -16(x2)	# 2317
	flw		f1, -12(x2)	# 2317
	sw		x1, -64(x2)	# 2317
	addi	x2, x2, -68	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 68	# 2317
	lw		x1, -64(x2)	# 2317
	lw		x5, -60(x2)	# 2317
	lw		x8, -36(x2)	# 2317
	add		x9, x5, x8	# 2317
	sw		x4, 0(x9)	# 2317
	lw		x4, -16(x2)	# 2318
	flw		f1, -12(x2)	# 2318
	sw		x1, -64(x2)	# 2318
	addi	x2, x2, -68	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 68	# 2318
	lw		x1, -64(x2)	# 2318
	lw		x5, -60(x2)	# 2318
	add		x9, x5, x7	# 2318
	sw		x4, 0(x9)	# 2318
	lw		x4, -16(x2)	# 2319
	flw		f1, -12(x2)	# 2319
	sw		x1, -64(x2)	# 2319
	addi	x2, x2, -68	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 68	# 2319
	lw		x1, -64(x2)	# 2319
	lw		x5, -60(x2)	# 2319
	lw		x9, -44(x2)	# 2319
	add		x11, x5, x9	# 2319
	sw		x4, 0(x11)	# 2319
	lw		x4, -16(x2)	# 2314
	flw		f1, -12(x2)	# 2314
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
	lw		x5, -64(x2)	# 2316
	lw		x6, -32(x2)	# 2316
	add		x11, x5, x6	# 2316
	sw		x4, 0(x11)	# 2316
	lw		x4, -16(x2)	# 2317
	flw		f1, -12(x2)	# 2317
	sw		x1, -68(x2)	# 2317
	addi	x2, x2, -72	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 72	# 2317
	lw		x1, -68(x2)	# 2317
	lw		x5, -64(x2)	# 2317
	add		x11, x5, x8	# 2317
	sw		x4, 0(x11)	# 2317
	lw		x4, -16(x2)	# 2318
	flw		f1, -12(x2)	# 2318
	sw		x1, -68(x2)	# 2318
	addi	x2, x2, -72	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 72	# 2318
	lw		x1, -68(x2)	# 2318
	lw		x5, -64(x2)	# 2318
	add		x11, x5, x7	# 2318
	sw		x4, 0(x11)	# 2318
	lw		x4, -16(x2)	# 2319
	flw		f1, -12(x2)	# 2319
	sw		x1, -68(x2)	# 2319
	addi	x2, x2, -72	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 72	# 2319
	lw		x1, -68(x2)	# 2319
	lw		x5, -64(x2)	# 2319
	add		x11, x5, x9	# 2319
	sw		x4, 0(x11)	# 2319
	lw		x4, -48(x2)	# 2332
	sw		x10, -68(x2)	# 2332
	addi	x5, x4, 0	# 2332
	addi	x4, x10, 0	# 2332
	sw		x1, -72(x2)	# 2332
	addi	x2, x2, -76	# 2332
	jal		x1, min_caml_create_array	# 2332
	addi	x2, x2, 76	# 2332
	lw		x1, -72(x2)	# 2332
	lw		x5, -16(x2)	# 2314
	flw		f1, -12(x2)	# 2314
	sw		x4, -72(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -76(x2)	# 2314
	addi	x2, x2, -80	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 80	# 2314
	lw		x1, -76(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -24(x2)	# 2315
	sw		x1, -76(x2)	# 2315
	addi	x2, x2, -80	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 80	# 2315
	lw		x1, -76(x2)	# 2315
	lw		x5, -16(x2)	# 2316
	flw		f1, -12(x2)	# 2316
	sw		x4, -76(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -80(x2)	# 2316
	addi	x2, x2, -84	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 84	# 2316
	lw		x1, -80(x2)	# 2316
	lw		x5, -76(x2)	# 2316
	lw		x6, -32(x2)	# 2316
	add		x6, x5, x6	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -16(x2)	# 2317
	flw		f1, -12(x2)	# 2317
	sw		x1, -80(x2)	# 2317
	addi	x2, x2, -84	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 84	# 2317
	lw		x1, -80(x2)	# 2317
	lw		x5, -76(x2)	# 2317
	add		x6, x5, x8	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -16(x2)	# 2318
	flw		f1, -12(x2)	# 2318
	sw		x1, -80(x2)	# 2318
	addi	x2, x2, -84	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 84	# 2318
	lw		x1, -80(x2)	# 2318
	lw		x5, -76(x2)	# 2318
	add		x6, x5, x7	# 2318
	sw		x4, 0(x6)	# 2318
	lw		x4, -16(x2)	# 2319
	flw		f1, -12(x2)	# 2319
	sw		x1, -80(x2)	# 2319
	addi	x2, x2, -84	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 84	# 2319
	lw		x1, -80(x2)	# 2319
	lw		x5, -76(x2)	# 2319
	add		x6, x5, x9	# 2319
	sw		x4, 0(x6)	# 2319
	addi	x4, x3, 0	# 2334
	addi	x3, x3, 32	# 2334
	sw		x5, 28(x4)	# 2334
	lw		x5, -72(x2)	# 2334
	sw		x5, 24(x4)	# 2334
	lw		x5, -64(x2)	# 2334
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
	lw		x4, -68(x2)	# 2341
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
	ble		x10, x4, ble.33326	# 2376
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
ble.33326:
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
	add		x5, x4, x7	# 282
	fsw		f3, 0(x5)	# 282
	add		x5, x4, x8	# 283
	fsw		f1, 0(x5)	# 283
	add		x4, x4, x9	# 284
	fsw		f2, 0(x4)	# 284
	jalr	x0, x1, 0	# 284
calc_dirvecs.2964.18011:
	lw		x7, 24(x29)	# 2397
	lw		x8, 20(x29)	# 2397
	lw		x9, 16(x29)	# 2397
	lw		x10, 12(x29)	# 2397
	lw		x11, 8(x29)	# 2397
	flw		f2, 4(x29)	# 2397
	ble		x10, x4, ble.33328	# 2397
	jalr	x0, x1, 0	# 2406
ble.33328:
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
	ble		x6, x5, ble.33331	# 267
	jal		x0, ble_cont.33330	# 267
ble.33331:
	sub		x5, x5, x6	# 267
ble_cont.33330:
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
	ble		x10, x4, ble.33332	# 2411
	jalr	x0, x1, 0	# 2415
ble.33332:
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
	ble		x6, x5, ble.33335	# 267
	jal		x0, ble_cont.33334	# 267
ble.33335:
	sub		x5, x5, x6	# 267
ble_cont.33334:
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
	ble		x7, x5, ble.33336	# 2430
	jalr	x0, x1, 0	# 2433
ble.33336:
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
	lw		x4, -8(x2)	# 2431
	mul		x6, x30, x4	# 2431
	lw		x7, -4(x2)	# 2431
	add		x6, x7, x6	# 2431
	sw		x5, 0(x6)	# 2431
	sub		x5, x4, x8	# 2432
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
	ble		x7, x4, ble.33338	# 2437
	jalr	x0, x1, 0	# 2441
ble.33338:
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
	lw		x4, 0(x6)	# 2439
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
	ble		x7, x5, ble.33340	# 2449
	jalr	x0, x1, 0	# 2452
ble.33340:
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
	ble		x6, x4, ble.33342	# 2456
	jalr	x0, x1, 0	# 2459
ble.33342:
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
	lui		x4, %hi(l.32288)	# 0
	ori		x4, x0, %lo(l.32288)	# 0
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
	lw		x4, -4(x2)	# 96
	lw		x5, -56(x2)	# 96
	sw		x1, -60(x2)	# 96
	addi	x2, x2, -64	# 96
	jal		x1, min_caml_create_array	# 96
	addi	x2, x2, 64	# 96
	lw		x1, -60(x2)	# 96
	addi	x5, x3, 0	# 97
	addi	x3, x3, 8	# 97
	lw		x4, -56(x2)	# 97
	sw		x4, 4(x5)	# 97
	sw		x4, 0(x5)	# 97
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
	lw		x4, -20(x2)	# 104
	flw		f1, -8(x2)	# 104
	sw		x1, -72(x2)	# 104
	addi	x2, x2, -76	# 104
	jal		x1, min_caml_create_float_array	# 104
	addi	x2, x2, 76	# 104
	lw		x1, -72(x2)	# 104
	addi	x4, x0, 64544	# 105
	lw		x5, -16(x2)	# 105
	lw		x6, -68(x2)	# 105
	sw		x4, -72(x2)	# 105
	addi	x4, x5, 0	# 105
	addi	x5, x6, 0	# 105
	sw		x1, -76(x2)	# 105
	addi	x2, x2, -80	# 105
	jal		x1, min_caml_create_array	# 105
	addi	x2, x2, 80	# 105
	lw		x1, -76(x2)	# 105
	addi	x4, x3, 0	# 106
	addi	x3, x3, 8	# 106
	lw		x5, -72(x2)	# 106
	sw		x5, 4(x4)	# 106
	lw		x5, -68(x2)	# 106
	sw		x5, 0(x4)	# 106
	addi	x5, x0, 64792	# 111
	lw		x6, -4(x2)	# 111
	flw		f1, -8(x2)	# 111
	sw		x4, -76(x2)	# 111
	sw		x5, -80(x2)	# 111
	addi	x4, x6, 0	# 111
	sw		x1, -84(x2)	# 111
	addi	x2, x2, -88	# 111
	jal		x1, min_caml_create_float_array	# 111
	addi	x2, x2, 88	# 111
	lw		x1, -84(x2)	# 111
	lw		x4, -4(x2)	# 112
	lw		x5, -80(x2)	# 112
	sw		x1, -84(x2)	# 112
	addi	x2, x2, -88	# 112
	jal		x1, min_caml_create_array	# 112
	addi	x2, x2, 88	# 112
	lw		x1, -84(x2)	# 112
	addi	x4, x3, 0	# 113
	addi	x3, x3, 8	# 113
	lw		x5, -80(x2)	# 113
	sw		x5, 4(x4)	# 113
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
	sw		x1, -84(x2)	# 114
	addi	x2, x2, -88	# 114
	jal		x1, min_caml_create_array	# 114
	addi	x2, x2, 88	# 114
	lw		x1, -84(x2)	# 114
	lw		x4, 0(x2)	# 118
	lw		x5, -4(x2)	# 118
	sw		x1, -84(x2)	# 118
	addi	x2, x2, -88	# 118
	jal		x1, min_caml_create_array	# 118
	addi	x2, x2, 88	# 118
	lw		x1, -84(x2)	# 118
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
	lw		x16, -64(x2)	# 1336
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
	mul		x24, x30, x12	# 2535
	addi	x25, x24, 64412	# 2535
	sw		x6, 0(x25)	# 2535
	addi	x26, x0, 64	# 2536
	addi	x27, x22, 64420	# 2536
	sw		x26, 0(x27)	# 2536
	addi	x27, x24, 64420	# 2537
	sw		x26, 0(x27)	# 2537
	lui		x26, %hi(l.29141)	# 2538
	ori		x26, x0, %lo(l.29141)	# 2538
	flw		f2, 0(x26)	# 2538
	sw		x4, -84(x2)	# 2538
	sw		x5, -88(x2)	# 2538
	fsw		f2, -92(x2)	# 2538
	addi	x4, x6, 0	# 2538
	sw		x1, -96(x2)	# 2538
	addi	x2, x2, -100	# 2538
	jal		x1, min_caml_float_of_int	# 2538
	addi	x2, x2, 100	# 2538
	lw		x1, -96(x2)	# 2538
	flw		f2, -92(x2)	# 2538
	fdiv	f1, f2, f1	# 2538
	addi	x4, x22, 64428	# 2538
	fsw		f1, 0(x4)	# 2538
	lw		x5, 0(x23)	# 2348
	flw		f1, -8(x2)	# 2326
	sw		x4, -96(x2)	# 2326
	sw		x5, -100(x2)	# 2326
	addi	x4, x10, 0	# 2326
	sw		x1, -104(x2)	# 2326
	addi	x2, x2, -108	# 2326
	jal		x1, min_caml_create_float_array	# 2326
	addi	x2, x2, 108	# 2326
	lw		x1, -104(x2)	# 2326
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -104(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -108(x2)	# 2314
	addi	x2, x2, -112	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 112	# 2314
	lw		x1, -108(x2)	# 2314
	addi	x5, x4, 0	# 2314
	addi	x4, x16, 0	# 2315
	sw		x1, -108(x2)	# 2315
	addi	x2, x2, -112	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 112	# 2315
	lw		x1, -108(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -108(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -112(x2)	# 2316
	addi	x2, x2, -116	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 116	# 2316
	lw		x1, -112(x2)	# 2316
	lw		x5, -108(x2)	# 2316
	add		x6, x5, x24	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -112(x2)	# 2317
	addi	x2, x2, -116	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 116	# 2317
	lw		x1, -112(x2)	# 2317
	mul		x5, x30, x8	# 2317
	lw		x6, -108(x2)	# 2317
	add		x10, x6, x5	# 2317
	sw		x4, 0(x10)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x5, -112(x2)	# 2318
	sw		x1, -116(x2)	# 2318
	addi	x2, x2, -120	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 120	# 2318
	lw		x1, -116(x2)	# 2318
	lw		x5, -20(x2)	# 2318
	mul		x10, x30, x5	# 2318
	add		x16, x6, x10	# 2318
	sw		x4, 0(x16)	# 2318
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
	mul		x16, x30, x5	# 2319
	add		x26, x6, x16	# 2319
	sw		x4, 0(x26)	# 2319
	lw		x4, -64(x2)	# 2328
	addi	x5, x11, 0	# 2328
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
	lw		x5, -128(x2)	# 2316
	add		x6, x5, x24	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -132(x2)	# 2317
	addi	x2, x2, -136	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 136	# 2317
	lw		x1, -132(x2)	# 2317
	lw		x5, -128(x2)	# 2317
	lw		x6, -112(x2)	# 2317
	add		x11, x5, x6	# 2317
	sw		x4, 0(x11)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -132(x2)	# 2318
	addi	x2, x2, -136	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 136	# 2318
	lw		x1, -132(x2)	# 2318
	lw		x5, -128(x2)	# 2318
	add		x11, x5, x10	# 2318
	sw		x4, 0(x11)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -132(x2)	# 2319
	addi	x2, x2, -136	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 136	# 2319
	lw		x1, -132(x2)	# 2319
	lw		x5, -128(x2)	# 2319
	add		x11, x5, x16	# 2319
	sw		x4, 0(x11)	# 2319
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
	lw		x5, -132(x2)	# 2316
	add		x6, x5, x24	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -136(x2)	# 2317
	addi	x2, x2, -140	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 140	# 2317
	lw		x1, -136(x2)	# 2317
	lw		x5, -132(x2)	# 2317
	lw		x6, -112(x2)	# 2317
	add		x11, x5, x6	# 2317
	sw		x4, 0(x11)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -136(x2)	# 2318
	addi	x2, x2, -140	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 140	# 2318
	lw		x1, -136(x2)	# 2318
	lw		x5, -132(x2)	# 2318
	add		x11, x5, x10	# 2318
	sw		x4, 0(x11)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -136(x2)	# 2319
	addi	x2, x2, -140	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 140	# 2319
	lw		x1, -136(x2)	# 2319
	lw		x5, -132(x2)	# 2319
	add		x11, x5, x16	# 2319
	sw		x4, 0(x11)	# 2319
	lw		x4, -4(x2)	# 2332
	addi	x5, x4, 0	# 2332
	addi	x4, x12, 0	# 2332
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
	lw		x5, -140(x2)	# 2316
	add		x6, x5, x24	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -144(x2)	# 2317
	addi	x2, x2, -148	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 148	# 2317
	lw		x1, -144(x2)	# 2317
	lw		x5, -140(x2)	# 2317
	lw		x6, -112(x2)	# 2317
	add		x11, x5, x6	# 2317
	sw		x4, 0(x11)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -144(x2)	# 2318
	addi	x2, x2, -148	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 148	# 2318
	lw		x1, -144(x2)	# 2318
	lw		x5, -140(x2)	# 2318
	add		x11, x5, x10	# 2318
	sw		x4, 0(x11)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -144(x2)	# 2319
	addi	x2, x2, -148	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 148	# 2319
	lw		x1, -144(x2)	# 2319
	lw		x5, -140(x2)	# 2319
	add		x11, x5, x16	# 2319
	sw		x4, 0(x11)	# 2319
	addi	x4, x3, 0	# 2334
	addi	x3, x3, 32	# 2334
	sw		x5, 28(x4)	# 2334
	lw		x5, -136(x2)	# 2334
	sw		x5, 24(x4)	# 2334
	lw		x5, -132(x2)	# 2334
	sw		x5, 20(x4)	# 2334
	lw		x5, -128(x2)	# 2334
	sw		x5, 16(x4)	# 2334
	lw		x5, -124(x2)	# 2334
	sw		x5, 12(x4)	# 2334
	lw		x5, -120(x2)	# 2334
	sw		x5, 8(x4)	# 2334
	lw		x5, -108(x2)	# 2334
	sw		x5, 4(x4)	# 2334
	lw		x5, -104(x2)	# 2334
	sw		x5, 0(x4)	# 2334
	lw		x5, -100(x2)	# 2348
	addi	x31, x5, 0	# 2348
	addi	x5, x4, 0	# 2348
	addi	x4, x31, 0	# 2348
	sw		x1, -144(x2)	# 2348
	addi	x2, x2, -148	# 2348
	jal		x1, min_caml_create_array	# 2348
	addi	x2, x2, 148	# 2348
	lw		x1, -144(x2)	# 2348
	lw		x5, 0(x23)	# 2349
	sub		x5, x5, x8	# 2349
	sw		x9, -144(x2)	# 2349
	sw		x7, -148(x2)	# 2349
	sw		x10, -152(x2)	# 2349
	addi	x29, x17, 0	# 2349
	sw		x1, -156(x2)	# 2349
	addi	x2, x2, -160	# 2349
	lw		x31, 0(x29)	# 2349
	jalr	x1, x31, 0	# 2349
	addi	x2, x2, 160	# 2349
	lw		x1, -156(x2)	# 2349
	lw		x5, 0(x23)	# 2348
	lw		x6, -20(x2)	# 2326
	flw		f1, -8(x2)	# 2326
	sw		x4, -156(x2)	# 2326
	sw		x5, -160(x2)	# 2326
	addi	x4, x6, 0	# 2326
	sw		x1, -164(x2)	# 2326
	addi	x2, x2, -168	# 2326
	jal		x1, min_caml_create_float_array	# 2326
	addi	x2, x2, 168	# 2326
	lw		x1, -164(x2)	# 2326
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -164(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -168(x2)	# 2314
	addi	x2, x2, -172	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 172	# 2314
	lw		x1, -168(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -64(x2)	# 2315
	sw		x1, -168(x2)	# 2315
	addi	x2, x2, -172	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 172	# 2315
	lw		x1, -168(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -168(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -172(x2)	# 2316
	addi	x2, x2, -176	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 176	# 2316
	lw		x1, -172(x2)	# 2316
	lw		x5, -168(x2)	# 2316
	add		x6, x5, x24	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -172(x2)	# 2317
	addi	x2, x2, -176	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 176	# 2317
	lw		x1, -172(x2)	# 2317
	lw		x5, -168(x2)	# 2317
	lw		x6, -112(x2)	# 2317
	add		x7, x5, x6	# 2317
	sw		x4, 0(x7)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -172(x2)	# 2318
	addi	x2, x2, -176	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 176	# 2318
	lw		x1, -172(x2)	# 2318
	lw		x5, -168(x2)	# 2318
	lw		x7, -152(x2)	# 2318
	add		x8, x5, x7	# 2318
	sw		x4, 0(x8)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -172(x2)	# 2319
	addi	x2, x2, -176	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 176	# 2319
	lw		x1, -172(x2)	# 2319
	lw		x5, -168(x2)	# 2319
	add		x8, x5, x16	# 2319
	sw		x4, 0(x8)	# 2319
	lw		x4, -64(x2)	# 2328
	lw		x8, -4(x2)	# 2328
	addi	x5, x8, 0	# 2328
	sw		x1, -172(x2)	# 2328
	addi	x2, x2, -176	# 2328
	jal		x1, min_caml_create_array	# 2328
	addi	x2, x2, 176	# 2328
	lw		x1, -172(x2)	# 2328
	lw		x5, -64(x2)	# 2329
	lw		x6, -4(x2)	# 2329
	sw		x4, -172(x2)	# 2329
	addi	x4, x5, 0	# 2329
	addi	x5, x6, 0	# 2329
	sw		x1, -176(x2)	# 2329
	addi	x2, x2, -180	# 2329
	jal		x1, min_caml_create_array	# 2329
	addi	x2, x2, 180	# 2329
	lw		x1, -176(x2)	# 2329
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -176(x2)	# 2314
	addi	x4, x5, 0	# 2314
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
	lw		x5, -180(x2)	# 2316
	add		x6, x5, x24	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -184(x2)	# 2317
	addi	x2, x2, -188	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 188	# 2317
	lw		x1, -184(x2)	# 2317
	lw		x5, -180(x2)	# 2317
	lw		x6, -112(x2)	# 2317
	add		x8, x5, x6	# 2317
	sw		x4, 0(x8)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -184(x2)	# 2318
	addi	x2, x2, -188	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 188	# 2318
	lw		x1, -184(x2)	# 2318
	lw		x5, -180(x2)	# 2318
	add		x8, x5, x7	# 2318
	sw		x4, 0(x8)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -184(x2)	# 2319
	addi	x2, x2, -188	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 188	# 2319
	lw		x1, -184(x2)	# 2319
	lw		x5, -180(x2)	# 2319
	add		x8, x5, x16	# 2319
	sw		x4, 0(x8)	# 2319
	lw		x4, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x1, -184(x2)	# 2314
	addi	x2, x2, -188	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 188	# 2314
	lw		x1, -184(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -64(x2)	# 2315
	sw		x1, -184(x2)	# 2315
	addi	x2, x2, -188	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 188	# 2315
	lw		x1, -184(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -184(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -188(x2)	# 2316
	addi	x2, x2, -192	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 192	# 2316
	lw		x1, -188(x2)	# 2316
	lw		x5, -184(x2)	# 2316
	add		x6, x5, x24	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -188(x2)	# 2317
	addi	x2, x2, -192	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 192	# 2317
	lw		x1, -188(x2)	# 2317
	lw		x5, -184(x2)	# 2317
	lw		x6, -112(x2)	# 2317
	add		x8, x5, x6	# 2317
	sw		x4, 0(x8)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -188(x2)	# 2318
	addi	x2, x2, -192	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 192	# 2318
	lw		x1, -188(x2)	# 2318
	lw		x5, -184(x2)	# 2318
	add		x8, x5, x7	# 2318
	sw		x4, 0(x8)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -188(x2)	# 2319
	addi	x2, x2, -192	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 192	# 2319
	lw		x1, -188(x2)	# 2319
	lw		x5, -184(x2)	# 2319
	add		x8, x5, x16	# 2319
	sw		x4, 0(x8)	# 2319
	lw		x4, 0(x2)	# 2332
	lw		x8, -4(x2)	# 2332
	addi	x5, x8, 0	# 2332
	sw		x1, -188(x2)	# 2332
	addi	x2, x2, -192	# 2332
	jal		x1, min_caml_create_array	# 2332
	addi	x2, x2, 192	# 2332
	lw		x1, -188(x2)	# 2332
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -188(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -192(x2)	# 2314
	addi	x2, x2, -196	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 196	# 2314
	lw		x1, -192(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -64(x2)	# 2315
	sw		x1, -192(x2)	# 2315
	addi	x2, x2, -196	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 196	# 2315
	lw		x1, -192(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -192(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -196(x2)	# 2316
	addi	x2, x2, -200	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 200	# 2316
	lw		x1, -196(x2)	# 2316
	lw		x5, -192(x2)	# 2316
	add		x6, x5, x24	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -196(x2)	# 2317
	addi	x2, x2, -200	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 200	# 2317
	lw		x1, -196(x2)	# 2317
	lw		x5, -192(x2)	# 2317
	lw		x6, -112(x2)	# 2317
	add		x8, x5, x6	# 2317
	sw		x4, 0(x8)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -196(x2)	# 2318
	addi	x2, x2, -200	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 200	# 2318
	lw		x1, -196(x2)	# 2318
	lw		x5, -192(x2)	# 2318
	add		x8, x5, x7	# 2318
	sw		x4, 0(x8)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -196(x2)	# 2319
	addi	x2, x2, -200	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 200	# 2319
	lw		x1, -196(x2)	# 2319
	lw		x5, -192(x2)	# 2319
	add		x8, x5, x16	# 2319
	sw		x4, 0(x8)	# 2319
	addi	x4, x3, 0	# 2334
	addi	x3, x3, 32	# 2334
	sw		x5, 28(x4)	# 2334
	lw		x5, -188(x2)	# 2334
	sw		x5, 24(x4)	# 2334
	lw		x5, -184(x2)	# 2334
	sw		x5, 20(x4)	# 2334
	lw		x5, -180(x2)	# 2334
	sw		x5, 16(x4)	# 2334
	lw		x5, -176(x2)	# 2334
	sw		x5, 12(x4)	# 2334
	lw		x5, -172(x2)	# 2334
	sw		x5, 8(x4)	# 2334
	lw		x5, -168(x2)	# 2334
	sw		x5, 4(x4)	# 2334
	lw		x5, -164(x2)	# 2334
	sw		x5, 0(x4)	# 2334
	lw		x5, -160(x2)	# 2348
	addi	x31, x5, 0	# 2348
	addi	x5, x4, 0	# 2348
	addi	x4, x31, 0	# 2348
	sw		x1, -196(x2)	# 2348
	addi	x2, x2, -200	# 2348
	jal		x1, min_caml_create_array	# 2348
	addi	x2, x2, 200	# 2348
	lw		x1, -196(x2)	# 2348
	lw		x5, 0(x23)	# 2349
	lw		x6, -52(x2)	# 2349
	sub		x5, x5, x6	# 2349
	addi	x29, x17, 0	# 2349
	sw		x1, -196(x2)	# 2349
	addi	x2, x2, -200	# 2349
	lw		x31, 0(x29)	# 2349
	jalr	x1, x31, 0	# 2349
	addi	x2, x2, 200	# 2349
	lw		x1, -196(x2)	# 2349
	lw		x5, 0(x23)	# 2348
	lw		x6, -20(x2)	# 2326
	flw		f1, -8(x2)	# 2326
	sw		x4, -196(x2)	# 2326
	sw		x5, -200(x2)	# 2326
	addi	x4, x6, 0	# 2326
	sw		x1, -204(x2)	# 2326
	addi	x2, x2, -208	# 2326
	jal		x1, min_caml_create_float_array	# 2326
	addi	x2, x2, 208	# 2326
	lw		x1, -204(x2)	# 2326
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -204(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -208(x2)	# 2314
	addi	x2, x2, -212	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 212	# 2314
	lw		x1, -208(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -64(x2)	# 2315
	sw		x1, -208(x2)	# 2315
	addi	x2, x2, -212	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 212	# 2315
	lw		x1, -208(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -208(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -212(x2)	# 2316
	addi	x2, x2, -216	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 216	# 2316
	lw		x1, -212(x2)	# 2316
	lw		x5, -208(x2)	# 2316
	add		x6, x5, x24	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -212(x2)	# 2317
	addi	x2, x2, -216	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 216	# 2317
	lw		x1, -212(x2)	# 2317
	lw		x5, -208(x2)	# 2317
	lw		x6, -112(x2)	# 2317
	add		x7, x5, x6	# 2317
	sw		x4, 0(x7)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -212(x2)	# 2318
	addi	x2, x2, -216	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 216	# 2318
	lw		x1, -212(x2)	# 2318
	lw		x5, -208(x2)	# 2318
	lw		x7, -152(x2)	# 2318
	add		x8, x5, x7	# 2318
	sw		x4, 0(x8)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -212(x2)	# 2319
	addi	x2, x2, -216	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 216	# 2319
	lw		x1, -212(x2)	# 2319
	lw		x5, -208(x2)	# 2319
	add		x8, x5, x16	# 2319
	sw		x4, 0(x8)	# 2319
	lw		x4, -64(x2)	# 2328
	lw		x8, -4(x2)	# 2328
	addi	x5, x8, 0	# 2328
	sw		x1, -212(x2)	# 2328
	addi	x2, x2, -216	# 2328
	jal		x1, min_caml_create_array	# 2328
	addi	x2, x2, 216	# 2328
	lw		x1, -212(x2)	# 2328
	lw		x5, -64(x2)	# 2329
	lw		x6, -4(x2)	# 2329
	sw		x4, -212(x2)	# 2329
	addi	x4, x5, 0	# 2329
	addi	x5, x6, 0	# 2329
	sw		x1, -216(x2)	# 2329
	addi	x2, x2, -220	# 2329
	jal		x1, min_caml_create_array	# 2329
	addi	x2, x2, 220	# 2329
	lw		x1, -216(x2)	# 2329
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -216(x2)	# 2314
	addi	x4, x5, 0	# 2314
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
	lw		x5, -220(x2)	# 2316
	add		x6, x5, x24	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -224(x2)	# 2317
	addi	x2, x2, -228	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 228	# 2317
	lw		x1, -224(x2)	# 2317
	lw		x5, -220(x2)	# 2317
	lw		x6, -112(x2)	# 2317
	add		x8, x5, x6	# 2317
	sw		x4, 0(x8)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -224(x2)	# 2318
	addi	x2, x2, -228	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 228	# 2318
	lw		x1, -224(x2)	# 2318
	lw		x5, -220(x2)	# 2318
	add		x8, x5, x7	# 2318
	sw		x4, 0(x8)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -224(x2)	# 2319
	addi	x2, x2, -228	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 228	# 2319
	lw		x1, -224(x2)	# 2319
	lw		x5, -220(x2)	# 2319
	add		x8, x5, x16	# 2319
	sw		x4, 0(x8)	# 2319
	lw		x4, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x1, -224(x2)	# 2314
	addi	x2, x2, -228	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 228	# 2314
	lw		x1, -224(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -64(x2)	# 2315
	sw		x1, -224(x2)	# 2315
	addi	x2, x2, -228	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 228	# 2315
	lw		x1, -224(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -224(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -228(x2)	# 2316
	addi	x2, x2, -232	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 232	# 2316
	lw		x1, -228(x2)	# 2316
	lw		x5, -224(x2)	# 2316
	add		x6, x5, x24	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -228(x2)	# 2317
	addi	x2, x2, -232	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 232	# 2317
	lw		x1, -228(x2)	# 2317
	lw		x5, -224(x2)	# 2317
	lw		x6, -112(x2)	# 2317
	add		x8, x5, x6	# 2317
	sw		x4, 0(x8)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -228(x2)	# 2318
	addi	x2, x2, -232	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 232	# 2318
	lw		x1, -228(x2)	# 2318
	lw		x5, -224(x2)	# 2318
	add		x8, x5, x7	# 2318
	sw		x4, 0(x8)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -228(x2)	# 2319
	addi	x2, x2, -232	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 232	# 2319
	lw		x1, -228(x2)	# 2319
	lw		x5, -224(x2)	# 2319
	add		x8, x5, x16	# 2319
	sw		x4, 0(x8)	# 2319
	lw		x4, 0(x2)	# 2332
	lw		x8, -4(x2)	# 2332
	addi	x5, x8, 0	# 2332
	sw		x1, -228(x2)	# 2332
	addi	x2, x2, -232	# 2332
	jal		x1, min_caml_create_array	# 2332
	addi	x2, x2, 232	# 2332
	lw		x1, -228(x2)	# 2332
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
	lw		x4, -64(x2)	# 2315
	sw		x1, -232(x2)	# 2315
	addi	x2, x2, -236	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 236	# 2315
	lw		x1, -232(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -232(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -236(x2)	# 2316
	addi	x2, x2, -240	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 240	# 2316
	lw		x1, -236(x2)	# 2316
	lw		x5, -232(x2)	# 2316
	add		x6, x5, x24	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -236(x2)	# 2317
	addi	x2, x2, -240	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 240	# 2317
	lw		x1, -236(x2)	# 2317
	lw		x5, -232(x2)	# 2317
	lw		x6, -112(x2)	# 2317
	add		x8, x5, x6	# 2317
	sw		x4, 0(x8)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -236(x2)	# 2318
	addi	x2, x2, -240	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 240	# 2318
	lw		x1, -236(x2)	# 2318
	lw		x5, -232(x2)	# 2318
	add		x7, x5, x7	# 2318
	sw		x4, 0(x7)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -236(x2)	# 2319
	addi	x2, x2, -240	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 240	# 2319
	lw		x1, -236(x2)	# 2319
	lw		x5, -232(x2)	# 2319
	add		x7, x5, x16	# 2319
	sw		x4, 0(x7)	# 2319
	addi	x4, x3, 0	# 2334
	addi	x3, x3, 32	# 2334
	sw		x5, 28(x4)	# 2334
	lw		x5, -228(x2)	# 2334
	sw		x5, 24(x4)	# 2334
	lw		x5, -224(x2)	# 2334
	sw		x5, 20(x4)	# 2334
	lw		x5, -220(x2)	# 2334
	sw		x5, 16(x4)	# 2334
	lw		x5, -216(x2)	# 2334
	sw		x5, 12(x4)	# 2334
	lw		x5, -212(x2)	# 2334
	sw		x5, 8(x4)	# 2334
	lw		x5, -208(x2)	# 2334
	sw		x5, 4(x4)	# 2334
	lw		x5, -204(x2)	# 2334
	sw		x5, 0(x4)	# 2334
	lw		x5, -200(x2)	# 2348
	addi	x31, x5, 0	# 2348
	addi	x5, x4, 0	# 2348
	addi	x4, x31, 0	# 2348
	sw		x1, -236(x2)	# 2348
	addi	x2, x2, -240	# 2348
	jal		x1, min_caml_create_array	# 2348
	addi	x2, x2, 240	# 2348
	lw		x1, -236(x2)	# 2348
	lw		x5, 0(x23)	# 2349
	lw		x6, -52(x2)	# 2349
	sub		x5, x5, x6	# 2349
	addi	x29, x17, 0	# 2349
	sw		x1, -236(x2)	# 2349
	addi	x2, x2, -240	# 2349
	lw		x31, 0(x29)	# 2349
	jalr	x1, x31, 0	# 2349
	addi	x2, x2, 240	# 2349
	lw		x1, -236(x2)	# 2349
	sw		x1, -236(x2)	# 726
	addi	x2, x2, -240	# 726
	jal		x1, min_caml_read_float	# 726
	addi	x2, x2, 240	# 726
	lw		x1, -236(x2)	# 726
	addi	x5, x22, 64084	# 726
	fsw		f1, 0(x5)	# 726
	sw		x1, -236(x2)	# 727
	addi	x2, x2, -240	# 727
	jal		x1, min_caml_read_float	# 727
	addi	x2, x2, 240	# 727
	lw		x1, -236(x2)	# 727
	addi	x6, x24, 64084	# 727
	fsw		f1, 0(x6)	# 727
	sw		x1, -236(x2)	# 728
	addi	x2, x2, -240	# 728
	jal		x1, min_caml_read_float	# 728
	addi	x2, x2, 240	# 728
	lw		x1, -236(x2)	# 728
	lw		x7, -112(x2)	# 728
	addi	x8, x7, 64084	# 728
	fsw		f1, 0(x8)	# 728
	sw		x1, -236(x2)	# 730
	addi	x2, x2, -240	# 730
	jal		x1, min_caml_read_float	# 730
	addi	x2, x2, 240	# 730
	lw		x1, -236(x2)	# 730
	lui		x9, %hi(l.26299)	# 719
	ori		x9, x0, %lo(l.26299)	# 719
	flw		f2, 0(x9)	# 719
	fmul	f1, f1, f2	# 719
	lw		x29, -88(x2)	# 731
	sw		x4, -236(x2)	# 731
	fsw		f2, -240(x2)	# 731
	fsw		f1, -244(x2)	# 731
	sw		x1, -248(x2)	# 731
	addi	x2, x2, -252	# 731
	lw		x31, 0(x29)	# 731
	jalr	x1, x31, 0	# 731
	addi	x2, x2, 252	# 731
	lw		x1, -248(x2)	# 731
	flw		f2, -244(x2)	# 732
	lw		x29, -84(x2)	# 732
	fsw		f1, -248(x2)	# 732
	fadd	f1, f0, f2	# 732
	sw		x1, -252(x2)	# 732
	addi	x2, x2, -256	# 732
	lw		x31, 0(x29)	# 732
	jalr	x1, x31, 0	# 732
	addi	x2, x2, 256	# 732
	lw		x1, -252(x2)	# 732
	fsw		f1, -252(x2)	# 733
	sw		x1, -256(x2)	# 733
	addi	x2, x2, -260	# 733
	jal		x1, min_caml_read_float	# 733
	addi	x2, x2, 260	# 733
	lw		x1, -256(x2)	# 733
	flw		f2, -240(x2)	# 719
	fmul	f1, f1, f2	# 719
	lw		x29, -88(x2)	# 734
	fsw		f1, -256(x2)	# 734
	sw		x1, -260(x2)	# 734
	addi	x2, x2, -264	# 734
	lw		x31, 0(x29)	# 734
	jalr	x1, x31, 0	# 734
	addi	x2, x2, 264	# 734
	lw		x1, -260(x2)	# 734
	flw		f2, -256(x2)	# 735
	lw		x29, -84(x2)	# 735
	fsw		f1, -260(x2)	# 735
	fadd	f1, f0, f2	# 735
	sw		x1, -264(x2)	# 735
	addi	x2, x2, -268	# 735
	lw		x31, 0(x29)	# 735
	jalr	x1, x31, 0	# 735
	addi	x2, x2, 268	# 735
	lw		x1, -264(x2)	# 735
	flw		f2, -248(x2)	# 737
	fmul	f3, f2, f1	# 737
	lui		x4, %hi(l.29287)	# 737
	ori		x4, x0, %lo(l.29287)	# 737
	flw		f4, 0(x4)	# 737
	fmul	f3, f3, f4	# 737
	addi	x4, x22, 64480	# 737
	fsw		f3, 0(x4)	# 737
	lui		x9, %hi(l.29291)	# 738
	ori		x9, x0, %lo(l.29291)	# 738
	flw		f3, 0(x9)	# 738
	flw		f5, -252(x2)	# 738
	fmul	f3, f5, f3	# 738
	addi	x9, x24, 64480	# 738
	fsw		f3, 0(x9)	# 738
	flw		f3, -260(x2)	# 739
	fmul	f6, f2, f3	# 739
	fmul	f4, f6, f4	# 739
	addi	x10, x7, 64480	# 739
	fsw		f4, 0(x10)	# 739
	addi	x11, x22, 64456	# 741
	fsw		f3, 0(x11)	# 741
	addi	x11, x24, 64456	# 742
	flw		f4, -8(x2)	# 742
	fsw		f4, 0(x11)	# 742
	fsub	f6, f0, f1	# 123
	addi	x11, x7, 64456	# 743
	fsw		f6, 0(x11)	# 743
	fsub	f5, f0, f5	# 123
	fmul	f1, f5, f1	# 745
	addi	x11, x22, 64468	# 745
	fsw		f1, 0(x11)	# 745
	fsub	f1, f0, f2	# 123
	addi	x12, x24, 64468	# 746
	fsw		f1, 0(x12)	# 746
	fmul	f1, f5, f3	# 747
	addi	x16, x7, 64468	# 747
	fsw		f1, 0(x16)	# 747
	flw		f1, 0(x5)	# 749
	flw		f2, 0(x4)	# 749
	fsub	f1, f1, f2	# 749
	addi	x5, x22, 64096	# 749
	fsw		f1, 0(x5)	# 749
	flw		f1, 0(x6)	# 750
	flw		f2, 0(x9)	# 750
	fsub	f1, f1, f2	# 750
	addi	x5, x24, 64096	# 750
	fsw		f1, 0(x5)	# 750
	flw		f1, 0(x8)	# 751
	flw		f2, 0(x10)	# 751
	fsub	f1, f1, f2	# 751
	addi	x5, x7, 64096	# 751
	fsw		f1, 0(x5)	# 751
	sw		x4, -264(x2)	# 758
	sw		x1, -268(x2)	# 758
	addi	x2, x2, -272	# 758
	jal		x1, min_caml_read_int	# 758
	addi	x2, x2, 272	# 758
	lw		x1, -268(x2)	# 758
	sw		x1, -268(x2)	# 761
	addi	x2, x2, -272	# 761
	jal		x1, min_caml_read_float	# 761
	addi	x2, x2, 272	# 761
	lw		x1, -268(x2)	# 761
	flw		f2, -240(x2)	# 719
	fmul	f1, f1, f2	# 719
	lw		x29, -84(x2)	# 762
	fsw		f1, -268(x2)	# 762
	sw		x1, -272(x2)	# 762
	addi	x2, x2, -276	# 762
	lw		x31, 0(x29)	# 762
	jalr	x1, x31, 0	# 762
	addi	x2, x2, 276	# 762
	lw		x1, -272(x2)	# 762
	fsub	f1, f0, f1	# 123
	addi	x4, x24, 64108	# 763
	fsw		f1, 0(x4)	# 763
	sw		x1, -272(x2)	# 764
	addi	x2, x2, -276	# 764
	jal		x1, min_caml_read_float	# 764
	addi	x2, x2, 276	# 764
	lw		x1, -272(x2)	# 764
	flw		f2, -240(x2)	# 719
	fmul	f1, f1, f2	# 719
	flw		f2, -268(x2)	# 765
	lw		x29, -88(x2)	# 765
	sw		x4, -272(x2)	# 765
	fsw		f1, -276(x2)	# 765
	fadd	f1, f0, f2	# 765
	sw		x1, -280(x2)	# 765
	addi	x2, x2, -284	# 765
	lw		x31, 0(x29)	# 765
	jalr	x1, x31, 0	# 765
	addi	x2, x2, 284	# 765
	lw		x1, -280(x2)	# 765
	flw		f2, -276(x2)	# 766
	lw		x29, -84(x2)	# 766
	fsw		f1, -280(x2)	# 766
	fadd	f1, f0, f2	# 766
	sw		x1, -284(x2)	# 766
	addi	x2, x2, -288	# 766
	lw		x31, 0(x29)	# 766
	jalr	x1, x31, 0	# 766
	addi	x2, x2, 288	# 766
	lw		x1, -284(x2)	# 766
	flw		f2, -280(x2)	# 767
	fmul	f1, f2, f1	# 767
	addi	x4, x22, 64108	# 767
	fsw		f1, 0(x4)	# 767
	flw		f1, -276(x2)	# 768
	lw		x29, -88(x2)	# 768
	sw		x4, -284(x2)	# 768
	sw		x1, -288(x2)	# 768
	addi	x2, x2, -292	# 768
	lw		x31, 0(x29)	# 768
	jalr	x1, x31, 0	# 768
	addi	x2, x2, 292	# 768
	lw		x1, -288(x2)	# 768
	flw		f2, -280(x2)	# 769
	fmul	f1, f2, f1	# 769
	addi	x4, x7, 64108	# 769
	fsw		f1, 0(x4)	# 769
	sw		x1, -288(x2)	# 770
	addi	x2, x2, -292	# 770
	jal		x1, min_caml_read_float	# 770
	addi	x2, x2, 292	# 770
	lw		x1, -288(x2)	# 770
	addi	x5, x22, 64120	# 770
	fsw		f1, 0(x5)	# 770
	lw		x5, -4(x2)	# 912
	lw		x29, -148(x2)	# 912
	sw		x18, -288(x2)	# 912
	sw		x10, -292(x2)	# 912
	sw		x16, -296(x2)	# 912
	sw		x9, -300(x2)	# 912
	sw		x12, -304(x2)	# 912
	sw		x11, -308(x2)	# 912
	sw		x13, -312(x2)	# 912
	sw		x4, -316(x2)	# 912
	sw		x14, -320(x2)	# 912
	sw		x15, -324(x2)	# 912
	addi	x4, x5, 0	# 912
	sw		x1, -328(x2)	# 912
	addi	x2, x2, -332	# 912
	lw		x31, 0(x29)	# 912
	jalr	x1, x31, 0	# 912
	addi	x2, x2, 332	# 912
	lw		x1, -328(x2)	# 912
	lw		x4, -4(x2)	# 949
	lw		x29, -324(x2)	# 949
	sw		x1, -328(x2)	# 949
	addi	x2, x2, -332	# 949
	lw		x31, 0(x29)	# 949
	jalr	x1, x31, 0	# 949
	addi	x2, x2, 332	# 949
	lw		x1, -328(x2)	# 949
	lw		x4, -4(x2)	# 950
	lw		x29, -320(x2)	# 950
	sw		x1, -328(x2)	# 950
	addi	x2, x2, -332	# 950
	lw		x31, 0(x29)	# 950
	jalr	x1, x31, 0	# 950
	addi	x2, x2, 332	# 950
	lw		x1, -328(x2)	# 950
	addi	x5, x22, 64332	# 950
	sw		x4, 0(x5)	# 950
	addi	x4, x0, 80	# 2157
	sw		x1, -328(x2)	# 2157
	addi	x2, x2, -332	# 2157
	jal		x1, min_caml_print_char	# 2157
	addi	x2, x2, 332	# 2157
	lw		x1, -328(x2)	# 2157
	addi	x4, x0, 51	# 2158
	sw		x1, -328(x2)	# 2158
	addi	x2, x2, -332	# 2158
	jal		x1, min_caml_print_char	# 2158
	addi	x2, x2, 332	# 2158
	lw		x1, -328(x2)	# 2158
	addi	x4, x0, 10	# 2159
	sw		x4, -328(x2)	# 2159
	sw		x1, -332(x2)	# 2159
	addi	x2, x2, -336	# 2159
	jal		x1, min_caml_print_char	# 2159
	addi	x2, x2, 336	# 2159
	lw		x1, -332(x2)	# 2159
	lw		x4, 0(x23)	# 2160
	sw		x1, -332(x2)	# 2160
	addi	x2, x2, -336	# 2160
	jal		x1, min_caml_print_int	# 2160
	addi	x2, x2, 336	# 2160
	lw		x1, -332(x2)	# 2160
	addi	x4, x0, 32	# 2161
	sw		x4, -332(x2)	# 2161
	sw		x1, -336(x2)	# 2161
	addi	x2, x2, -340	# 2161
	jal		x1, min_caml_print_char	# 2161
	addi	x2, x2, 340	# 2161
	lw		x1, -336(x2)	# 2161
	lw		x4, 0(x25)	# 2162
	sw		x1, -336(x2)	# 2162
	addi	x2, x2, -340	# 2162
	jal		x1, min_caml_print_int	# 2162
	addi	x2, x2, 340	# 2162
	lw		x1, -336(x2)	# 2162
	lw		x4, -332(x2)	# 2163
	sw		x1, -336(x2)	# 2163
	addi	x2, x2, -340	# 2163
	jal		x1, min_caml_print_char	# 2163
	addi	x2, x2, 340	# 2163
	lw		x1, -336(x2)	# 2163
	addi	x4, x0, 255	# 2164
	sw		x1, -336(x2)	# 2164
	addi	x2, x2, -340	# 2164
	jal		x1, min_caml_print_int	# 2164
	addi	x2, x2, 340	# 2164
	lw		x1, -336(x2)	# 2164
	lw		x4, -328(x2)	# 2165
	sw		x1, -336(x2)	# 2165
	addi	x2, x2, -340	# 2165
	jal		x1, min_caml_print_char	# 2165
	addi	x2, x2, 340	# 2165
	lw		x1, -336(x2)	# 2165
	lw		x4, -116(x2)	# 2463
	addi	x29, x20, 0	# 2463
	sw		x1, -336(x2)	# 2463
	addi	x2, x2, -340	# 2463
	lw		x31, 0(x29)	# 2463
	jalr	x1, x31, 0	# 2463
	addi	x2, x2, 340	# 2463
	lw		x1, -336(x2)	# 2463
	addi	x4, x0, 9	# 2464
	lw		x5, -4(x2)	# 2464
	addi	x6, x5, 0	# 2464
	addi	x29, x19, 0	# 2464
	sw		x1, -336(x2)	# 2464
	addi	x2, x2, -340	# 2464
	lw		x31, 0(x29)	# 2464
	jalr	x1, x31, 0	# 2464
	addi	x2, x2, 340	# 2464
	lw		x1, -336(x2)	# 2464
	lw		x4, -116(x2)	# 2465
	addi	x29, x21, 0	# 2465
	sw		x1, -336(x2)	# 2465
	addi	x2, x2, -340	# 2465
	lw		x31, 0(x29)	# 2465
	jalr	x1, x31, 0	# 2465
	addi	x2, x2, 340	# 2465
	lw		x1, -336(x2)	# 2465
	lw		x4, -284(x2)	# 301
	flw		f1, 0(x4)	# 301
	addi	x5, x22, 64532	# 301
	fsw		f1, 0(x5)	# 301
	lw		x5, -272(x2)	# 302
	flw		f1, 0(x5)	# 302
	addi	x6, x24, 64532	# 302
	fsw		f1, 0(x6)	# 302
	lw		x6, -316(x2)	# 303
	flw		f1, 0(x6)	# 303
	lw		x7, -112(x2)	# 303
	addi	x8, x7, 64532	# 303
	fsw		f1, 0(x8)	# 303
	addi	x8, x22, 63796	# 1329
	lw		x9, 0(x8)	# 1329
	lw		x10, 0(x2)	# 1329
	sub		x9, x9, x10	# 1329
	lw		x11, -76(x2)	# 1329
	lw		x29, -312(x2)	# 1329
	sw		x8, -336(x2)	# 1329
	addi	x5, x9, 0	# 1329
	addi	x4, x11, 0	# 1329
	sw		x1, -340(x2)	# 1329
	addi	x2, x2, -344	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 344	# 1329
	lw		x1, -340(x2)	# 1329
	lw		x4, -336(x2)	# 2547
	lw		x5, 0(x4)	# 2547
	lw		x6, 0(x2)	# 2547
	sub		x5, x5, x6	# 2547
	lw		x7, -4(x2)	# 2512
	ble		x7, x5, ble.33345	# 2512
	jal		x0, ble_cont.33344	# 2512
ble.33345:
	mul		x8, x30, x5	# 2513
	addi	x8, x8, 63844	# 2513
	lw		x8, 0(x8)	# 2513
	lw		x9, 8(x8)	# 405
	lw		x10, -52(x2)	# 2514
	beq		x9, x10, beq.33347	# 2514
	jal		x0, ble_cont.33344	# 2514
beq.33347:
	lw		x9, 28(x8)	# 503
	add		x9, x9, x22	# 508
	flw		f1, 0(x9)	# 508
	fle		f30, f1, ble_cont.33344	# 125
	lw		x9, 4(x8)	# 395
	beq		x9, x6, beq.33351	# 2518
	beq		x9, x10, beq.33353	# 2520
	jal		x0, ble_cont.33344	# 2520
beq.33353:
	lw		x9, -116(x2)	# 2497
	mul		x5, x5, x9	# 2497
	addi	x5, x5, 1	# 2497
	addi	x9, x22, 65532	# 2498
	lw		x11, 0(x9)	# 2498
	fsub	f1, f30, f1	# 2499
	lw		x8, 16(x8)	# 463
	lw		x12, -284(x2)	# 334
	flw		f2, 0(x12)	# 334
	add		x12, x8, x22	# 334
	flw		f3, 0(x12)	# 334
	fmul	f4, f2, f3	# 334
	lw		x12, -272(x2)	# 334
	flw		f5, 0(x12)	# 334
	add		x12, x8, x24	# 334
	flw		f6, 0(x12)	# 334
	fmul	f7, f5, f6	# 334
	fadd	f4, f4, f7	# 334
	lw		x12, -316(x2)	# 334
	flw		f7, 0(x12)	# 334
	lw		x12, -112(x2)	# 334
	add		x8, x8, x12	# 334
	flw		f8, 0(x8)	# 334
	fmul	f9, f7, f8	# 334
	fadd	f4, f4, f9	# 334
	lui		x8, %hi(l.26379)	# 2503
	ori		x8, x0, %lo(l.26379)	# 2503
	flw		f9, 0(x8)	# 2503
	fmul	f3, f9, f3	# 2503
	fmul	f3, f3, f4	# 2503
	fsub	f2, f3, f2	# 2503
	fmul	f3, f9, f6	# 2504
	fmul	f3, f3, f4	# 2504
	fsub	f3, f3, f5	# 2504
	fmul	f5, f9, f8	# 2505
	fmul	f4, f5, f4	# 2505
	fsub	f4, f4, f7	# 2505
	lw		x8, -20(x2)	# 2424
	flw		f5, -8(x2)	# 2424
	sw		x5, -340(x2)	# 2424
	fsw		f1, -344(x2)	# 2424
	addi	x4, x8, 0	# 2424
	fadd	f1, f0, f5	# 2424
	sw		x1, -348(x2)	# 2424
	addi	x2, x2, -352	# 2424
	jal		x1, min_caml_create_float_array	# 2424
	addi	x2, x2, 352	# 2424
	lw		x1, -348(x2)	# 2424
	addi	x5, x4, 0	# 2424
	lw		x4, -336(x2)	# 2425
	lw		x8, 0(x4)	# 2425
	sw		x5, -348(x2)	# 2425
	addi	x4, x8, 0	# 2425
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
	add		x6, x4, x22	# 282
	fsw		f2, 0(x6)	# 282
	add		x6, x4, x24	# 283
	fsw		f3, 0(x6)	# 283
	add		x4, x4, x12	# 284
	fsw		f4, 0(x4)	# 284
	lw		x4, -336(x2)	# 1329
	lw		x4, 0(x4)	# 1329
	lw		x6, 0(x2)	# 1329
	sub		x4, x4, x6	# 1329
	lw		x29, -312(x2)	# 1329
	sw		x9, -352(x2)	# 1329
	sw		x11, -356(x2)	# 1329
	sw		x5, -360(x2)	# 1329
	addi	x31, x5, 0	# 1329
	addi	x5, x4, 0	# 1329
	addi	x4, x31, 0	# 1329
	sw		x1, -364(x2)	# 1329
	addi	x2, x2, -368	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 368	# 1329
	lw		x1, -364(x2)	# 1329
	addi	x4, x3, 0	# 2478
	addi	x3, x3, 12	# 2478
	flw		f1, -344(x2)	# 2478
	fsw		f1, 8(x4)	# 2478
	lw		x5, -360(x2)	# 2478
	sw		x5, 4(x4)	# 2478
	lw		x5, -340(x2)	# 2478
	sw		x5, 0(x4)	# 2478
	lw		x5, -356(x2)	# 2478
	mul		x6, x30, x5	# 2478
	addi	x6, x6, 64812	# 2478
	sw		x4, 0(x6)	# 2478
	addi	x4, x5, 1	# 2506
	lw		x5, -352(x2)	# 2506
	sw		x4, 0(x5)	# 2506
	jal		x0, ble_cont.33344	# 2518
beq.33351:
	lw		x8, -116(x2)	# 2483
	mul		x5, x5, x8	# 2483
	addi	x8, x22, 65532	# 2484
	lw		x9, 0(x8)	# 2484
	fsub	f1, f30, f1	# 2485
	lw		x11, -284(x2)	# 2486
	flw		f2, 0(x11)	# 2486
	fsub	f3, f0, f2	# 123
	lw		x11, -272(x2)	# 2487
	flw		f4, 0(x11)	# 2487
	fsub	f4, f0, f4	# 123
	lw		x12, -316(x2)	# 2488
	flw		f5, 0(x12)	# 2488
	fsub	f5, f0, f5	# 123
	addi	x13, x5, 1	# 2489
	lw		x14, -20(x2)	# 2424
	flw		f6, -8(x2)	# 2424
	sw		x5, -364(x2)	# 2424
	fsw		f1, -368(x2)	# 2424
	addi	x4, x14, 0	# 2424
	fadd	f1, f0, f6	# 2424
	sw		x1, -372(x2)	# 2424
	addi	x2, x2, -376	# 2424
	jal		x1, min_caml_create_float_array	# 2424
	addi	x2, x2, 376	# 2424
	lw		x1, -372(x2)	# 2424
	addi	x5, x4, 0	# 2424
	lw		x4, -336(x2)	# 2425
	lw		x14, 0(x4)	# 2425
	sw		x5, -372(x2)	# 2425
	addi	x4, x14, 0	# 2425
	sw		x1, -376(x2)	# 2425
	addi	x2, x2, -380	# 2425
	jal		x1, min_caml_create_array	# 2425
	addi	x2, x2, 380	# 2425
	lw		x1, -376(x2)	# 2425
	addi	x5, x3, 0	# 2426
	addi	x3, x3, 8	# 2426
	sw		x4, 4(x5)	# 2426
	lw		x4, -372(x2)	# 2426
	sw		x4, 0(x5)	# 2426
	add		x6, x4, x22	# 282
	fsw		f2, 0(x6)	# 282
	add		x6, x4, x24	# 283
	fsw		f4, 0(x6)	# 283
	lw		x6, -112(x2)	# 284
	add		x4, x4, x6	# 284
	fsw		f5, 0(x4)	# 284
	lw		x4, -336(x2)	# 1329
	lw		x14, 0(x4)	# 1329
	lw		x15, 0(x2)	# 1329
	sub		x14, x14, x15	# 1329
	lw		x29, -312(x2)	# 1329
	sw		x8, -376(x2)	# 1329
	fsw		f4, -380(x2)	# 1329
	fsw		f5, -384(x2)	# 1329
	fsw		f3, -388(x2)	# 1329
	sw		x9, -392(x2)	# 1329
	sw		x13, -396(x2)	# 1329
	sw		x5, -400(x2)	# 1329
	addi	x4, x5, 0	# 1329
	addi	x5, x14, 0	# 1329
	sw		x1, -404(x2)	# 1329
	addi	x2, x2, -408	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 408	# 1329
	lw		x1, -404(x2)	# 1329
	addi	x4, x3, 0	# 2478
	addi	x3, x3, 12	# 2478
	flw		f1, -368(x2)	# 2478
	fsw		f1, 8(x4)	# 2478
	lw		x5, -400(x2)	# 2478
	sw		x5, 4(x4)	# 2478
	lw		x5, -396(x2)	# 2478
	sw		x5, 0(x4)	# 2478
	lw		x5, -392(x2)	# 2478
	mul		x6, x30, x5	# 2478
	addi	x6, x6, 64812	# 2478
	sw		x4, 0(x6)	# 2478
	addi	x4, x5, 1	# 2490
	lw		x6, -364(x2)	# 2490
	addi	x7, x6, 2	# 2490
	lw		x8, -272(x2)	# 2490
	flw		f2, 0(x8)	# 2490
	lw		x8, -20(x2)	# 2424
	flw		f3, -8(x2)	# 2424
	sw		x4, -404(x2)	# 2424
	addi	x4, x8, 0	# 2424
	fadd	f1, f0, f3	# 2424
	sw		x1, -408(x2)	# 2424
	addi	x2, x2, -412	# 2424
	jal		x1, min_caml_create_float_array	# 2424
	addi	x2, x2, 412	# 2424
	lw		x1, -408(x2)	# 2424
	addi	x5, x4, 0	# 2424
	lw		x4, -336(x2)	# 2425
	lw		x8, 0(x4)	# 2425
	sw		x5, -408(x2)	# 2425
	addi	x4, x8, 0	# 2425
	sw		x1, -412(x2)	# 2425
	addi	x2, x2, -416	# 2425
	jal		x1, min_caml_create_array	# 2425
	addi	x2, x2, 416	# 2425
	lw		x1, -412(x2)	# 2425
	addi	x5, x3, 0	# 2426
	addi	x3, x3, 8	# 2426
	sw		x4, 4(x5)	# 2426
	lw		x4, -408(x2)	# 2426
	sw		x4, 0(x5)	# 2426
	add		x6, x4, x22	# 282
	flw		f1, -388(x2)	# 282
	fsw		f1, 0(x6)	# 282
	add		x6, x4, x24	# 283
	fsw		f2, 0(x6)	# 283
	lw		x6, -112(x2)	# 284
	add		x4, x4, x6	# 284
	flw		f2, -384(x2)	# 284
	fsw		f2, 0(x4)	# 284
	lw		x4, -336(x2)	# 1329
	lw		x8, 0(x4)	# 1329
	lw		x9, 0(x2)	# 1329
	sub		x8, x8, x9	# 1329
	lw		x29, -312(x2)	# 1329
	sw		x7, -412(x2)	# 1329
	sw		x5, -416(x2)	# 1329
	addi	x4, x5, 0	# 1329
	addi	x5, x8, 0	# 1329
	sw		x1, -420(x2)	# 1329
	addi	x2, x2, -424	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 424	# 1329
	lw		x1, -420(x2)	# 1329
	addi	x4, x3, 0	# 2478
	addi	x3, x3, 12	# 2478
	flw		f1, -368(x2)	# 2478
	fsw		f1, 8(x4)	# 2478
	lw		x5, -416(x2)	# 2478
	sw		x5, 4(x4)	# 2478
	lw		x5, -412(x2)	# 2478
	sw		x5, 0(x4)	# 2478
	lw		x5, -404(x2)	# 2478
	mul		x5, x30, x5	# 2478
	addi	x5, x5, 64812	# 2478
	sw		x4, 0(x5)	# 2478
	lw		x4, -392(x2)	# 2491
	addi	x5, x4, 2	# 2491
	lw		x6, -364(x2)	# 2491
	addi	x6, x6, 3	# 2491
	lw		x7, -316(x2)	# 2491
	flw		f2, 0(x7)	# 2491
	lw		x7, -20(x2)	# 2424
	flw		f3, -8(x2)	# 2424
	sw		x5, -420(x2)	# 2424
	addi	x4, x7, 0	# 2424
	fadd	f1, f0, f3	# 2424
	sw		x1, -424(x2)	# 2424
	addi	x2, x2, -428	# 2424
	jal		x1, min_caml_create_float_array	# 2424
	addi	x2, x2, 428	# 2424
	lw		x1, -424(x2)	# 2424
	addi	x5, x4, 0	# 2424
	lw		x4, -336(x2)	# 2425
	lw		x7, 0(x4)	# 2425
	sw		x6, -424(x2)	# 2425
	sw		x5, -428(x2)	# 2425
	addi	x4, x7, 0	# 2425
	sw		x1, -432(x2)	# 2425
	addi	x2, x2, -436	# 2425
	jal		x1, min_caml_create_array	# 2425
	addi	x2, x2, 436	# 2425
	lw		x1, -432(x2)	# 2425
	addi	x5, x3, 0	# 2426
	addi	x3, x3, 8	# 2426
	sw		x4, 4(x5)	# 2426
	lw		x4, -428(x2)	# 2426
	sw		x4, 0(x5)	# 2426
	add		x6, x4, x22	# 282
	flw		f1, -388(x2)	# 282
	fsw		f1, 0(x6)	# 282
	add		x6, x4, x24	# 283
	flw		f1, -380(x2)	# 283
	fsw		f1, 0(x6)	# 283
	lw		x6, -112(x2)	# 284
	add		x4, x4, x6	# 284
	fsw		f2, 0(x4)	# 284
	lw		x4, -336(x2)	# 1329
	lw		x4, 0(x4)	# 1329
	lw		x6, 0(x2)	# 1329
	sub		x4, x4, x6	# 1329
	lw		x29, -312(x2)	# 1329
	sw		x5, -432(x2)	# 1329
	addi	x31, x5, 0	# 1329
	addi	x5, x4, 0	# 1329
	addi	x4, x31, 0	# 1329
	sw		x1, -436(x2)	# 1329
	addi	x2, x2, -440	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 440	# 1329
	lw		x1, -436(x2)	# 1329
	addi	x4, x3, 0	# 2478
	addi	x3, x3, 12	# 2478
	flw		f1, -368(x2)	# 2478
	fsw		f1, 8(x4)	# 2478
	lw		x5, -432(x2)	# 2478
	sw		x5, 4(x4)	# 2478
	lw		x5, -424(x2)	# 2478
	sw		x5, 0(x4)	# 2478
	lw		x5, -420(x2)	# 2478
	mul		x5, x30, x5	# 2478
	addi	x5, x5, 64812	# 2478
	sw		x4, 0(x5)	# 2478
	lw		x4, -392(x2)	# 2492
	addi	x4, x4, 3	# 2492
	lw		x5, -376(x2)	# 2492
	sw		x4, 0(x5)	# 2492
	jal		x0, ble_cont.33344	# 125
ble_cont.33344:
	lw		x4, -96(x2)	# 2260
	flw		f1, 0(x4)	# 2260
	lw		x4, 0(x27)	# 2260
	lw		x5, -4(x2)	# 2260
	sub		x4, x5, x4	# 2260
	fsw		f1, -436(x2)	# 2260
	sw		x1, -440(x2)	# 2260
	addi	x2, x2, -444	# 2260
	jal		x1, min_caml_float_of_int	# 2260
	addi	x2, x2, 444	# 2260
	lw		x1, -440(x2)	# 2260
	flw		f2, -436(x2)	# 2260
	fmul	f1, f2, f1	# 2260
	lw		x4, -308(x2)	# 2263
	flw		f2, 0(x4)	# 2263
	fmul	f2, f1, f2	# 2263
	lw		x4, -264(x2)	# 2263
	flw		f3, 0(x4)	# 2263
	fadd	f2, f2, f3	# 2263
	lw		x4, -304(x2)	# 2264
	flw		f3, 0(x4)	# 2264
	fmul	f3, f1, f3	# 2264
	lw		x4, -300(x2)	# 2264
	flw		f4, 0(x4)	# 2264
	fadd	f3, f3, f4	# 2264
	lw		x4, -296(x2)	# 2265
	flw		f4, 0(x4)	# 2265
	fmul	f1, f1, f4	# 2265
	lw		x4, -292(x2)	# 2265
	flw		f4, 0(x4)	# 2265
	fadd	f1, f1, f4	# 2265
	lw		x4, 0(x23)	# 2266
	lw		x5, 0(x2)	# 2266
	sub		x5, x4, x5	# 2266
	lw		x4, -196(x2)	# 2266
	lw		x6, -4(x2)	# 2266
	lw		x29, -144(x2)	# 2266
	fadd	f31, f0, f3	# 2266
	fadd	f3, f0, f1	# 2266
	fadd	f1, f0, f2	# 2266
	fadd	f2, f0, f31	# 2266
	sw		x1, -440(x2)	# 2266
	addi	x2, x2, -444	# 2266
	lw		x31, 0(x29)	# 2266
	jalr	x1, x31, 0	# 2266
	addi	x2, x2, 444	# 2266
	lw		x1, -440(x2)	# 2266
	lw		x4, -4(x2)	# 2549
	lw		x5, -156(x2)	# 2549
	lw		x6, -196(x2)	# 2549
	lw		x7, -236(x2)	# 2549
	lw		x8, -52(x2)	# 2549
	lw		x9, -20(x2)	# 2549
	lw		x29, -288(x2)	# 2549
	sw		x1, -440(x2)	# 2549
	addi	x2, x2, -444	# 2549
	lw		x31, 0(x29)	# 2549
	jalr	x1, x31, 0	# 2549
	addi	x2, x2, 444	# 2549
	lw		x1, -440(x2)	# 2549
	EXIT	
