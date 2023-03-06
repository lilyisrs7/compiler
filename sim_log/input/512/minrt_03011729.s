l.33459:	# 8388608.000000
	.word	8388608.000000
l.28445:	# 0.010000
	.word	0.010000
l.28443:	# -0.200000
	.word	-0.200000
l.28568:	# -0.100000
	.word	-0.100000
l.29402:	# 1000000000.000000
	.word	1000000000.000000
l.29411:	# 100000000.000000
	.word	100000000.000000
l.30096:	# 150.000000
	.word	150.000000
l.29869:	# -150.000000
	.word	-150.000000
l.28027:	# -1.000000
	.word	-1.000000
l.29635:	# 255.000000
	.word	255.000000
l.29666:	# 0.050000
	.word	0.050000
l.29668:	# 20.000000
	.word	20.000000
l.29645:	# 10.000000
	.word	10.000000
l.27933:	# 0.500000
	.word	0.500000
l.29816:	# 0.100000
	.word	0.100000
l.29740:	# -2.000000
	.word	-2.000000
l.31099:	# -200.000000
	.word	-200.000000
l.31095:	# 200.000000
	.word	200.000000
l.30959:	# 128.000000
	.word	128.000000
l.30890:	# 0.900000
	.word	0.900000
l.29712:	# 0.003906
	.word	0.003906
l.29655:	# 0.250000
	.word	0.250000
l.29637:	# 0.300000
	.word	0.300000
l.29630:	# 0.150000
	.word	0.150000
l.29619:	# 3.141593
	.word	3.141593
l.29617:	# 30.000000
	.word	30.000000
l.29614:	# 15.000000
	.word	15.000000
l.29612:	# 0.000100
	.word	0.000100
l.28087:	# 2.000000
	.word	2.000000
l.27995:	# 0.017453
	.word	0.017453
l.27963:	# 0.089764
	.word	0.089764
l.27961:	# 0.111111
	.word	0.111111
l.27959:	# 0.142857
	.word	0.142857
l.27957:	# 0.200000
	.word	0.200000
l.27955:	# 0.333333
	.word	0.333333
l.27953:	# 0.437500
	.word	0.437500
l.27949:	# 2.437500
	.word	2.437500
l.27937:	# 0.001370
	.word	0.001370
l.27935:	# 0.041664
	.word	0.041664
l.27931:	# 1.000000
	.word	1.000000
l.27928:	# 0.000196
	.word	0.000196
l.27926:	# 0.008333
	.word	0.008333
l.27924:	# 0.166667
	.word	0.166667
l.27922:	# 0.785398
	.word	0.785398
l.27919:	# 1.570796
	.word	1.570796
l.27917:	# 3.141593
	.word	3.141593
l.27915:	# 6.283185
	.word	6.283185
l.27913:	# 0.000000
	.word	0.000000
sin.2636.17992:
	fle		f0, f1, fle.33460	# 204
	fsub	f1, f0, f1	# 204
	sw		x1, 0(x2)	# 204
	addi	x2, x2, -4	# 204
	jal		x1, sin.2636.17992	# 204
	addi	x2, x2, 4	# 204
	lw		x1, 0(x2)	# 204
	fsub	f1, f0, f1	# 204
	jalr	x0, x1, 0	# 204
fle.33460:
	lui		x4, %hi(l.27915)	# 179
	ori		x4, x4, %lo(l.27915)	# 179
	flw		f2, 0(x4)	# 179
	fle		f2, f1, fle.33461	# 205
	lui		x4, %hi(l.27917)	# 178
	ori		x4, x4, %lo(l.27917)	# 178
	flw		f2, 0(x4)	# 178
	fle		f2, f1, fle.33462	# 206
	lui		x4, %hi(l.27919)	# 180
	ori		x4, x4, %lo(l.27919)	# 180
	flw		f3, 0(x4)	# 180
	fle		f1, f3, fle.33463	# 207
	fsub	f1, f2, f1	# 207
	jal		x0, sin.2636.17992	# 207
fle.33463:
	lui		x4, %hi(l.27922)	# 181
	ori		x4, x4, %lo(l.27922)	# 181
	flw		f2, 0(x4)	# 181
	fle		f2, f1, fle.33464	# 208
	fmul	f2, f1, f1	# 194
	fmul	f3, f1, f2	# 195
	lui		x4, %hi(l.27924)	# 196
	ori		x4, x4, %lo(l.27924)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f3	# 196
	fsub	f1, f1, f4	# 196
	lui		x4, %hi(l.27926)	# 196
	ori		x4, x4, %lo(l.27926)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f2	# 196
	fmul	f4, f4, f3	# 196
	fadd	f1, f1, f4	# 196
	lui		x4, %hi(l.27928)	# 196
	ori		x4, x4, %lo(l.27928)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f2	# 196
	fmul	f2, f4, f2	# 196
	fmul	f2, f2, f3	# 196
	fsub	f1, f1, f2	# 196
	jalr	x0, x1, 0	# 196
fle.33464:
	fsub	f1, f3, f1	# 208
	fmul	f1, f1, f1	# 199
	fmul	f2, f1, f1	# 200
	lui		x4, %hi(l.27933)	# 201
	ori		x4, x4, %lo(l.27933)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f4, f4, f1	# 201
	fsub	f3, f30, f4	# 201
	lui		x4, %hi(l.27935)	# 201
	ori		x4, x4, %lo(l.27935)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f4, f4, f2	# 201
	fadd	f3, f3, f4	# 201
	lui		x4, %hi(l.27937)	# 201
	ori		x4, x4, %lo(l.27937)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f1, f4, f1	# 201
	fmul	f1, f1, f2	# 201
	fsub	f1, f3, f1	# 201
	jalr	x0, x1, 0	# 201
fle.33462:
	fsub	f1, f1, f2	# 206
	sw		x1, 0(x2)	# 206
	addi	x2, x2, -4	# 206
	jal		x1, sin.2636.17992	# 206
	addi	x2, x2, 4	# 206
	lw		x1, 0(x2)	# 206
	fsub	f1, f0, f1	# 206
	jalr	x0, x1, 0	# 206
fle.33461:
	fsub	f1, f1, f2	# 205
	jal		x0, sin.2636.17992	# 205
cos.2638.17994:
	fle		f0, f1, fle.33465	# 212
	fsub	f1, f0, f1	# 212
	jal		x0, cos.2638.17994	# 212
fle.33465:
	lui		x4, %hi(l.27922)	# 181
	ori		x4, x4, %lo(l.27922)	# 181
	flw		f2, 0(x4)	# 181
	fle		f1, f2, fle.33466	# 213
	lui		x4, %hi(l.27919)	# 180
	ori		x4, x4, %lo(l.27919)	# 180
	flw		f2, 0(x4)	# 180
	fsub	f1, f2, f1	# 213
	jal		x0, sin.2636.17992	# 213
fle.33466:
	fmul	f1, f1, f1	# 199
	fmul	f2, f1, f1	# 200
	lui		x4, %hi(l.27933)	# 201
	ori		x4, x4, %lo(l.27933)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f4, f4, f1	# 201
	fsub	f3, f30, f4	# 201
	lui		x4, %hi(l.27935)	# 201
	ori		x4, x4, %lo(l.27935)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f4, f4, f2	# 201
	fadd	f3, f3, f4	# 201
	lui		x4, %hi(l.27937)	# 201
	ori		x4, x4, %lo(l.27937)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f1, f4, f1	# 201
	fmul	f1, f1, f2	# 201
	fsub	f1, f3, f1	# 201
	jalr	x0, x1, 0	# 201
atan.2640.17996:
	fle		f0, f1, fle.33467	# 217
	fsub	f1, f0, f1	# 217
	sw		x1, 0(x2)	# 217
	addi	x2, x2, -4	# 217
	jal		x1, atan.2640.17996	# 217
	addi	x2, x2, 4	# 217
	lw		x1, 0(x2)	# 217
	fsub	f1, f0, f1	# 217
	jalr	x0, x1, 0	# 217
fle.33467:
	lui		x4, %hi(l.27949)	# 218
	ori		x4, x4, %lo(l.27949)	# 218
	flw		f2, 0(x4)	# 218
	fle		f1, f2, fle.33468	# 218
	fdiv	f1, f30, f1	# 218
	sw		x1, 0(x2)	# 218
	addi	x2, x2, -4	# 218
	jal		x1, atan.2640.17996	# 218
	addi	x2, x2, 4	# 218
	lw		x1, 0(x2)	# 218
	lui		x4, %hi(l.27919)	# 180
	ori		x4, x4, %lo(l.27919)	# 180
	flw		f2, 0(x4)	# 180
	fsub	f1, f2, f1	# 218
	jalr	x0, x1, 0	# 218
fle.33468:
	lui		x4, %hi(l.27953)	# 219
	ori		x4, x4, %lo(l.27953)	# 219
	flw		f2, 0(x4)	# 219
	fle		f2, f1, fle.33469	# 219
	fmul	f2, f1, f1	# 221
	fmul	f3, f1, f2	# 222
	fmul	f4, f2, f2	# 223
	lui		x4, %hi(l.27955)	# 224
	ori		x4, x4, %lo(l.27955)	# 224
	flw		f5, 0(x4)	# 224
	fmul	f5, f5, f3	# 224
	fsub	f1, f1, f5	# 224
	lui		x4, %hi(l.27957)	# 224
	ori		x4, x4, %lo(l.27957)	# 224
	flw		f5, 0(x4)	# 224
	fmul	f5, f5, f2	# 224
	fmul	f5, f5, f3	# 224
	fadd	f1, f1, f5	# 224
	lui		x4, %hi(l.27959)	# 224
	ori		x4, x4, %lo(l.27959)	# 224
	flw		f5, 0(x4)	# 224
	fmul	f5, f5, f4	# 224
	fmul	f5, f5, f3	# 224
	fsub	f1, f1, f5	# 224
	lui		x4, %hi(l.27961)	# 225
	ori		x4, x4, %lo(l.27961)	# 225
	flw		f5, 0(x4)	# 225
	fmul	f2, f5, f2	# 225
	fmul	f2, f2, f4	# 225
	fmul	f2, f2, f3	# 225
	fadd	f1, f1, f2	# 224
	lui		x4, %hi(l.27963)	# 225
	ori		x4, x4, %lo(l.27963)	# 225
	flw		f2, 0(x4)	# 225
	fmul	f2, f2, f4	# 225
	fmul	f2, f2, f4	# 225
	fmul	f2, f2, f3	# 225
	fsub	f1, f1, f2	# 224
	jalr	x0, x1, 0	# 224
fle.33469:
	fsub	f3, f1, f30	# 219
	fadd	f1, f1, f30	# 219
	fdiv	f1, f3, f1	# 219
	sw		x1, 0(x2)	# 219
	addi	x2, x2, -4	# 219
	jal		x1, atan.2640.17996	# 219
	addi	x2, x2, 4	# 219
	lw		x1, 0(x2)	# 219
	lui		x4, %hi(l.27922)	# 181
	ori		x4, x4, %lo(l.27922)	# 181
	flw		f2, 0(x4)	# 181
	fadd	f1, f2, f1	# 219
	jalr	x0, x1, 0	# 219
div_rem.2642.17998:
	addi	x6, x0, 10	# 228
	ble		x6, x4, ble.33470	# 228
	addi	x4, x5, 0	# 228
	jalr	x0, x1, 0	# 228
ble.33470:
	addi	x4, x4, -10	# 228
	addi	x5, x5, 1	# 228
	jal		x0, div_rem.2642.17998	# 228
div_fifty.2645.18001:
	addi	x6, x0, 50	# 28
	ble		x6, x4, ble.33471	# 230
	jal		x0, div_rem.2642.17998	# 230
ble.33471:
	addi	x4, x4, -50	# 230
	addi	x5, x5, 5	# 230
	jal		x0, div_fifty.2645.18001	# 230
print_int_main.2648.18004:
	addi	x5, x0, 10	# 232
	ble		x5, x4, ble.33472	# 232
	addi	x4, x4, 48	# 232
	jal		x0, min_caml_print_char	# 232
ble.33472:
	add		x6, x0, x0	# 6
	sw		x4, 0(x2)	# 234
	sw		x5, -4(x2)	# 234
	addi	x5, x0, 0	# 234
	sw		x1, -8(x2)	# 234
	addi	x2, x2, -12	# 234
	jal		x1, div_fifty.2645.18001	# 234
	addi	x2, x2, 12	# 234
	lw		x1, -8(x2)	# 234
	sw		x4, -8(x2)	# 235
	sw		x1, -12(x2)	# 235
	addi	x2, x2, -16	# 235
	jal		x1, print_int_main.2648.18004	# 235
	addi	x2, x2, 16	# 235
	lw		x1, -12(x2)	# 235
	lw		x4, -8(x2)	# 235
	lw		x5, -4(x2)	# 235
	mul		x4, x4, x5	# 235
	lw		x5, 0(x2)	# 235
	sub		x4, x5, x4	# 235
	addi	x4, x4, 48	# 235
	jal		x0, min_caml_print_char	# 235
read_object.2787.18006:
	addi	x5, x0, 60	# 12
	ble		x5, x4, ble.33473	# 918
	sw		x4, 0(x2)	# 836
	sw		x1, -4(x2)	# 836
	addi	x2, x2, -8	# 836
	jal		x1, min_caml_read_int	# 836
	addi	x2, x2, 8	# 836
	lw		x1, -4(x2)	# 836
	beq		x4, x20, beq.33475	# 837
	sw		x4, -4(x2)	# 839
	sw		x1, -8(x2)	# 839
	addi	x2, x2, -12	# 839
	jal		x1, min_caml_read_int	# 839
	addi	x2, x2, 12	# 839
	lw		x1, -8(x2)	# 839
	sw		x4, -8(x2)	# 840
	sw		x1, -12(x2)	# 840
	addi	x2, x2, -16	# 840
	jal		x1, min_caml_read_int	# 840
	addi	x2, x2, 16	# 840
	lw		x1, -12(x2)	# 840
	sw		x4, -12(x2)	# 841
	sw		x1, -16(x2)	# 841
	addi	x2, x2, -20	# 841
	jal		x1, min_caml_read_int	# 841
	addi	x2, x2, 20	# 841
	lw		x1, -16(x2)	# 841
	fadd	f1, f0, f0	# 11
	add		x5, x0, x23	# 16
	sw		x4, -16(x2)	# 843
	fsw		f0, -20(x2)	# 843
	sw		x23, -24(x2)	# 843
	addi	x4, x23, 0	# 843
	sw		x1, -28(x2)	# 843
	addi	x2, x2, -32	# 843
	jal		x1, min_caml_create_float_array	# 843
	addi	x2, x2, 32	# 843
	lw		x1, -28(x2)	# 843
	sw		x1, -28(x2)	# 844
	addi	x2, x2, -32	# 844
	jal		x1, min_caml_read_float	# 844
	addi	x2, x2, 32	# 844
	lw		x1, -28(x2)	# 844
	arrfsw	f1, x4, x0	# 844
	sw		x1, -28(x2)	# 845
	addi	x2, x2, -32	# 845
	jal		x1, min_caml_read_float	# 845
	addi	x2, x2, 32	# 845
	lw		x1, -28(x2)	# 845
	arrfsw	f1, x4, x21	# 845
	sw		x1, -28(x2)	# 846
	addi	x2, x2, -32	# 846
	jal		x1, min_caml_read_float	# 846
	addi	x2, x2, 32	# 846
	lw		x1, -28(x2)	# 846
	add		x7, x0, x22	# 65
	arrfsw	f1, x4, x22	# 846
	lw		x8, -24(x2)	# 848
	flw		f1, -20(x2)	# 848
	sw		x4, -28(x2)	# 848
	sw		x0, -32(x2)	# 848
	addi	x4, x8, 0	# 848
	sw		x1, -36(x2)	# 848
	addi	x2, x2, -40	# 848
	jal		x1, min_caml_create_float_array	# 848
	addi	x2, x2, 40	# 848
	lw		x1, -36(x2)	# 848
	sw		x1, -36(x2)	# 849
	addi	x2, x2, -40	# 849
	jal		x1, min_caml_read_float	# 849
	addi	x2, x2, 40	# 849
	lw		x1, -36(x2)	# 849
	lw		x5, -32(x2)	# 849
	arrfsw	f1, x4, x5	# 849
	sw		x1, -36(x2)	# 850
	addi	x2, x2, -40	# 850
	jal		x1, min_caml_read_float	# 850
	addi	x2, x2, 40	# 850
	lw		x1, -36(x2)	# 850
	arrfsw	f1, x4, x21	# 850
	sw		x1, -36(x2)	# 851
	addi	x2, x2, -40	# 851
	jal		x1, min_caml_read_float	# 851
	addi	x2, x2, 40	# 851
	lw		x1, -36(x2)	# 851
	arrfsw	f1, x4, x22	# 851
	sw		x1, -36(x2)	# 853
	addi	x2, x2, -40	# 853
	jal		x1, min_caml_read_float	# 853
	addi	x2, x2, 40	# 853
	lw		x1, -36(x2)	# 853
	flw		f2, -20(x2)	# 122
	fle		f2, f1, fle.33477	# 122
	addi	x8, x0, 1	# 122
	jal		x0, fle_cont.33476	# 122
fle.33477:
	addi	x8, x0, 0	# 122
fle_cont.33476:
	fsw		f1, -36(x2)	# 855
	sw		x4, -40(x2)	# 855
	sw		x22, -44(x2)	# 855
	addi	x4, x22, 0	# 855
	fadd	f1, f0, f2	# 855
	sw		x1, -48(x2)	# 855
	addi	x2, x2, -52	# 855
	jal		x1, min_caml_create_float_array	# 855
	addi	x2, x2, 52	# 855
	lw		x1, -48(x2)	# 855
	sw		x1, -48(x2)	# 856
	addi	x2, x2, -52	# 856
	jal		x1, min_caml_read_float	# 856
	addi	x2, x2, 52	# 856
	lw		x1, -48(x2)	# 856
	lw		x5, -32(x2)	# 856
	arrfsw	f1, x4, x5	# 856
	sw		x1, -48(x2)	# 857
	addi	x2, x2, -52	# 857
	jal		x1, min_caml_read_float	# 857
	addi	x2, x2, 52	# 857
	lw		x1, -48(x2)	# 857
	arrfsw	f1, x4, x21	# 857
	lw		x7, -24(x2)	# 859
	flw		f1, -20(x2)	# 859
	sw		x4, -48(x2)	# 859
	addi	x4, x7, 0	# 859
	sw		x1, -52(x2)	# 859
	addi	x2, x2, -56	# 859
	jal		x1, min_caml_create_float_array	# 859
	addi	x2, x2, 56	# 859
	lw		x1, -52(x2)	# 859
	sw		x1, -52(x2)	# 860
	addi	x2, x2, -56	# 860
	jal		x1, min_caml_read_float	# 860
	addi	x2, x2, 56	# 860
	lw		x1, -52(x2)	# 860
	lw		x5, -32(x2)	# 860
	arrfsw	f1, x4, x5	# 860
	sw		x1, -52(x2)	# 861
	addi	x2, x2, -56	# 861
	jal		x1, min_caml_read_float	# 861
	addi	x2, x2, 56	# 861
	lw		x1, -52(x2)	# 861
	arrfsw	f1, x4, x21	# 861
	sw		x1, -52(x2)	# 862
	addi	x2, x2, -56	# 862
	jal		x1, min_caml_read_float	# 862
	addi	x2, x2, 56	# 862
	lw		x1, -52(x2)	# 862
	lw		x7, -44(x2)	# 862
	arrfsw	f1, x4, x7	# 862
	lw		x9, -24(x2)	# 864
	flw		f1, -20(x2)	# 864
	sw		x4, -52(x2)	# 864
	addi	x4, x9, 0	# 864
	sw		x1, -56(x2)	# 864
	addi	x2, x2, -60	# 864
	jal		x1, min_caml_create_float_array	# 864
	addi	x2, x2, 60	# 864
	lw		x1, -56(x2)	# 864
	lw		x5, -32(x2)	# 865
	lw		x9, -16(x2)	# 865
	beq		x9, x5, beq_cont.33478	# 865
	sw		x1, -56(x2)	# 867
	addi	x2, x2, -60	# 867
	jal		x1, min_caml_read_float	# 867
	addi	x2, x2, 60	# 867
	lw		x1, -56(x2)	# 867
	lui		x10, %hi(l.27995)	# 734
	ori		x10, x10, %lo(l.27995)	# 734
	flw		f2, 0(x10)	# 734
	fmul	f1, f1, f2	# 734
	arrfsw	f1, x4, x5	# 867
	sw		x1, -56(x2)	# 868
	addi	x2, x2, -60	# 868
	jal		x1, min_caml_read_float	# 868
	addi	x2, x2, 60	# 868
	lw		x1, -56(x2)	# 868
	fmul	f1, f1, f2	# 734
	arrfsw	f1, x4, x21	# 868
	sw		x1, -56(x2)	# 869
	addi	x2, x2, -60	# 869
	jal		x1, min_caml_read_float	# 869
	addi	x2, x2, 60	# 869
	lw		x1, -56(x2)	# 869
	fmul	f1, f1, f2	# 734
	arrfsw	f1, x4, x7	# 869
beq_cont.33478:
	lw		x10, -8(x2)	# 876
	beq		x10, x7, beq.33481	# 876
	jal		x0, beq_cont.33480	# 876
beq.33481:
	addi	x8, x0, 1	# 876
beq_cont.33480:
	add		x11, x0, x30	# 877
	flw		f1, -20(x2)	# 877
	sw		x4, -56(x2)	# 877
	addi	x4, x30, 0	# 877
	sw		x1, -60(x2)	# 877
	addi	x2, x2, -64	# 877
	jal		x1, min_caml_create_float_array	# 877
	addi	x2, x2, 64	# 877
	lw		x1, -60(x2)	# 877
	addi	x5, x3, 0	# 880
	addi	x3, x3, 44	# 880
	sw		x4, 40(x5)	# 880
	lw		x4, -56(x2)	# 880
	sw		x4, 36(x5)	# 880
	lw		x11, -52(x2)	# 880
	sw		x11, 32(x5)	# 880
	lw		x11, -48(x2)	# 880
	sw		x11, 28(x5)	# 880
	sw		x8, 24(x5)	# 880
	lw		x8, -40(x2)	# 880
	sw		x8, 20(x5)	# 880
	lw		x8, -28(x2)	# 880
	sw		x8, 16(x5)	# 880
	sw		x9, 12(x5)	# 880
	lw		x11, -12(x2)	# 880
	sw		x11, 8(x5)	# 880
	sw		x10, 4(x5)	# 880
	lw		x11, -4(x2)	# 880
	sw		x11, 0(x5)	# 880
	lw		x12, 0(x2)	# 888
	arrsw	x5, x24, x12	# 888
	lw		x5, -24(x2)	# 890
	beq		x10, x5, beq.33483	# 890
	beq		x10, x7, beq.33485	# 900
	jal		x0, beq_cont.33482	# 900
beq.33485:
	lw		x5, -32(x2)	# 340
	arrflw	f1, x8, x5	# 340
	fmul	f2, f1, f1	# 127
	arrflw	f3, x8, x21	# 340
	fmul	f4, f3, f3	# 127
	fadd	f2, f2, f4	# 340
	arrflw	f4, x8, x7	# 340
	fmul	f5, f4, f4	# 127
	fadd	f2, f2, f5	# 340
	fsqrt	f2, f2	# 340
	flw		f5, -20(x2)	# 120
	feq		f2, f5, feq.33487	# 120
	flw		f6, -36(x2)	# 122
	fle		f5, f6, fle.33489	# 122
	fdiv	f2, f30, f2	# 341
	jal		x0, feq_cont.33486	# 122
fle.33489:
	fdiv	f2, f25, f2	# 341
	jal		x0, feq_cont.33486	# 120
feq.33487:
	fadd	f2, f0, f30	# 341
feq_cont.33486:
	fmul	f1, f1, f2	# 342
	arrfsw	f1, x8, x5	# 342
	fmul	f1, f3, f2	# 343
	arrfsw	f1, x8, x21	# 343
	fmul	f1, f4, f2	# 344
	arrfsw	f1, x8, x7	# 344
	jal		x0, beq_cont.33482	# 890
beq.33483:
	lw		x5, -32(x2)	# 893
	arrflw	f1, x8, x5	# 893
	flw		f2, -20(x2)	# 120
	feq		f1, f2, feq.33491	# 120
	fle		f1, f2, fle.33495	# 121
	fadd	f3, f0, f30	# 270
	jal		x0, feq_cont.33492	# 121
fle.33495:
	fadd	f3, f0, f25	# 271
	jal		x0, feq_cont.33492	# 120
feq.33493:
	fadd	f3, f0, f2	# 269
feq_cont.33492:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 894
	jal		x0, feq_cont.33490	# 120
feq.33491:
	fadd	f1, f0, f2	# 894
feq_cont.33490:
	arrfsw	f1, x8, x5	# 894
	arrflw	f1, x8, x21	# 895
	feq		f1, f2, feq.33497	# 120
	fle		f1, f2, fle.33501	# 121
	fadd	f3, f0, f30	# 270
	jal		x0, feq_cont.33498	# 121
fle.33501:
	fadd	f3, f0, f25	# 271
	jal		x0, feq_cont.33498	# 120
feq.33499:
	fadd	f3, f0, f2	# 269
feq_cont.33498:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 896
	jal		x0, feq_cont.33496	# 120
feq.33497:
	fadd	f1, f0, f2	# 896
feq_cont.33496:
	arrfsw	f1, x8, x21	# 896
	arrflw	f1, x8, x7	# 897
	feq		f1, f2, feq.33503	# 120
	fle		f1, f2, fle.33507	# 121
	fadd	f2, f0, f30	# 270
	jal		x0, feq_cont.33504	# 121
fle.33507:
	fadd	f2, f0, f25	# 271
feq_cont.33504:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f2, f1	# 898
	jal		x0, feq_cont.33502	# 120
feq.33503:
	fadd	f1, f0, f2	# 898
feq_cont.33502:
	arrfsw	f1, x8, x7	# 898
beq_cont.33482:
	lw		x5, -32(x2)	# 906
	beq		x9, x5, beq_cont.33508	# 906
	arrflw	f1, x4, x5	# 795
	fsw		f1, -60(x2)	# 795
	sw		x1, -64(x2)	# 795
	addi	x2, x2, -68	# 795
	jal		x1, cos.2638.17994	# 795
	addi	x2, x2, 68	# 795
	lw		x1, -64(x2)	# 795
	flw		f2, -60(x2)	# 796
	fsw		f1, -64(x2)	# 796
	fadd	f1, f0, f2	# 796
	sw		x1, -68(x2)	# 796
	addi	x2, x2, -72	# 796
	jal		x1, sin.2636.17992	# 796
	addi	x2, x2, 72	# 796
	lw		x1, -68(x2)	# 796
	lw		x4, -56(x2)	# 797
	arrflw	f2, x4, x21	# 797
	fsw		f1, -68(x2)	# 797
	fsw		f2, -72(x2)	# 797
	fadd	f1, f0, f2	# 797
	sw		x1, -76(x2)	# 797
	addi	x2, x2, -80	# 797
	jal		x1, cos.2638.17994	# 797
	addi	x2, x2, 80	# 797
	lw		x1, -76(x2)	# 797
	flw		f2, -72(x2)	# 798
	fsw		f1, -76(x2)	# 798
	fadd	f1, f0, f2	# 798
	sw		x1, -80(x2)	# 798
	addi	x2, x2, -84	# 798
	jal		x1, sin.2636.17992	# 798
	addi	x2, x2, 84	# 798
	lw		x1, -80(x2)	# 798
	lw		x4, -56(x2)	# 799
	arrflw	f2, x4, x7	# 799
	fsw		f1, -80(x2)	# 799
	fsw		f2, -84(x2)	# 799
	fadd	f1, f0, f2	# 799
	sw		x1, -88(x2)	# 799
	addi	x2, x2, -92	# 799
	jal		x1, cos.2638.17994	# 799
	addi	x2, x2, 92	# 799
	lw		x1, -88(x2)	# 799
	flw		f2, -84(x2)	# 800
	fsw		f1, -88(x2)	# 800
	fadd	f1, f0, f2	# 800
	sw		x1, -92(x2)	# 800
	addi	x2, x2, -96	# 800
	jal		x1, sin.2636.17992	# 800
	addi	x2, x2, 96	# 800
	lw		x1, -92(x2)	# 800
	flw		f2, -76(x2)	# 802
	flw		f3, -88(x2)	# 802
	fmul	f4, f2, f3	# 802
	flw		f5, -68(x2)	# 803
	flw		f6, -80(x2)	# 803
	fmul	f7, f5, f6	# 803
	fmul	f8, f7, f3	# 803
	flw		f9, -64(x2)	# 803
	fmul	f10, f9, f1	# 803
	fsub	f8, f8, f10	# 803
	fmul	f10, f9, f6	# 804
	fmul	f11, f10, f3	# 804
	fmul	f12, f5, f1	# 804
	fadd	f11, f11, f12	# 804
	fmul	f12, f2, f1	# 806
	fmul	f7, f7, f1	# 807
	fmul	f13, f9, f3	# 807
	fadd	f7, f7, f13	# 807
	fmul	f1, f10, f1	# 808
	fmul	f3, f5, f3	# 808
	fsub	f1, f1, f3	# 808
	fsub	f3, f0, f6	# 123
	fmul	f5, f5, f2	# 811
	fmul	f2, f9, f2	# 812
	arrflw	f6, x8, x5	# 815
	arrflw	f9, x8, x21	# 816
	arrflw	f10, x8, x7	# 817
	fmul	f13, f4, f4	# 127
	fmul	f13, f6, f13	# 822
	fmul	f14, f12, f12	# 127
	fmul	f14, f9, f14	# 822
	fadd	f13, f13, f14	# 822
	fmul	f14, f3, f3	# 127
	fmul	f14, f10, f14	# 822
	fadd	f13, f13, f14	# 822
	arrfsw	f13, x8, x5	# 822
	fmul	f13, f8, f8	# 127
	fmul	f13, f6, f13	# 823
	fmul	f14, f7, f7	# 127
	fmul	f14, f9, f14	# 823
	fadd	f13, f13, f14	# 823
	fmul	f14, f5, f5	# 127
	fmul	f14, f10, f14	# 823
	fadd	f13, f13, f14	# 823
	arrfsw	f13, x8, x21	# 823
	fmul	f13, f11, f11	# 127
	fmul	f13, f6, f13	# 824
	fmul	f14, f1, f1	# 127
	fmul	f14, f9, f14	# 824
	fadd	f13, f13, f14	# 824
	fmul	f14, f2, f2	# 127
	fmul	f14, f10, f14	# 824
	fadd	f13, f13, f14	# 824
	arrfsw	f13, x8, x7	# 824
	lui		x4, %hi(l.28087)	# 827
	ori		x4, x4, %lo(l.28087)	# 827
	flw		f13, 0(x4)	# 827
	fmul	f14, f6, f8	# 827
	fmul	f14, f14, f11	# 827
	fmul	f15, f9, f7	# 827
	fmul	f15, f15, f1	# 827
	fadd	f14, f14, f15	# 827
	fmul	f15, f10, f5	# 827
	fmul	f15, f15, f2	# 827
	fadd	f14, f14, f15	# 827
	fmul	f14, f13, f14	# 827
	lw		x4, -56(x2)	# 827
	arrfsw	f14, x4, x5	# 827
	fmul	f4, f6, f4	# 828
	fmul	f6, f4, f11	# 828
	fmul	f9, f9, f12	# 828
	fmul	f1, f9, f1	# 828
	fadd	f1, f6, f1	# 828
	fmul	f3, f10, f3	# 828
	fmul	f2, f3, f2	# 828
	fadd	f1, f1, f2	# 828
	fmul	f1, f13, f1	# 828
	arrfsw	f1, x4, x21	# 828
	fmul	f1, f4, f8	# 829
	fmul	f2, f9, f7	# 829
	fadd	f1, f1, f2	# 829
	fmul	f2, f3, f5	# 829
	fadd	f1, f1, f2	# 829
	fmul	f1, f13, f1	# 829
	arrfsw	f1, x4, x7	# 829
beq_cont.33508:
	addi	x4, x0, 1	# 910
	jal		x0, beq_cont.33474	# 837
beq.33475:
	addi	x4, x0, 0	# 913
beq_cont.33474:
	beq		x4, x0, beq.33510	# 919
	lw		x4, 0(x2)	# 920
	addi	x4, x4, 1	# 920
	jal		x0, read_object.2787.18006	# 920
beq.33510:
	addi	x4, x0, 40000	# 6
	lw		x6, 0(x2)	# 922
	arrsw	x6, x4, x0	# 922
	jalr	x0, x1, 0	# 922
ble.33473:
	jalr	x0, x1, 0	# 923
read_net_item.2791.18008:
	sw		x4, 0(x2)	# 934
	sw		x1, -4(x2)	# 934
	addi	x2, x2, -8	# 934
	jal		x1, min_caml_read_int	# 934
	addi	x2, x2, 8	# 934
	lw		x1, -4(x2)	# 934
	add		x5, x0, x20	# 28
	beq		x4, x20, beq.33513	# 935
	lw		x5, 0(x2)	# 937
	addi	x6, x5, 1	# 937
	sw		x4, -4(x2)	# 937
	addi	x4, x6, 0	# 937
	sw		x1, -8(x2)	# 937
	addi	x2, x2, -12	# 937
	jal		x1, read_net_item.2791.18008	# 937
	addi	x2, x2, 12	# 937
	lw		x1, -8(x2)	# 937
	lw		x5, -4(x2)	# 938
	lw		x6, 0(x2)	# 938
	arrsw	x5, x4, x6	# 938
	jalr	x0, x1, 0	# 938
beq.33513:
	lw		x4, 0(x2)	# 935
	addi	x4, x4, 1	# 935
	jal		x0, min_caml_create_array	# 935
read_or_network.2793.18010:
	add		x5, x0, x0	# 6
	sw		x4, 0(x2)	# 942
	sw		x0, -4(x2)	# 942
	addi	x4, x0, 0	# 942
	sw		x1, -8(x2)	# 942
	addi	x2, x2, -12	# 942
	jal		x1, read_net_item.2791.18008	# 942
	addi	x2, x2, 12	# 942
	lw		x1, -8(x2)	# 942
	addi	x5, x4, 0	# 942
	lw		x4, -4(x2)	# 943
	arrlw	x4, x5, x4	# 943
	beq		x4, x20, beq.33514	# 943
	lw		x4, 0(x2)	# 946
	addi	x6, x4, 1	# 946
	sw		x5, -8(x2)	# 946
	addi	x4, x6, 0	# 946
	sw		x1, -12(x2)	# 946
	addi	x2, x2, -16	# 946
	jal		x1, read_or_network.2793.18010	# 946
	addi	x2, x2, 16	# 946
	lw		x1, -12(x2)	# 946
	lw		x5, -8(x2)	# 947
	lw		x6, 0(x2)	# 947
	arrsw	x5, x4, x6	# 947
	jalr	x0, x1, 0	# 947
beq.33514:
	lw		x4, 0(x2)	# 944
	addi	x4, x4, 1	# 944
	jal		x0, min_caml_create_array	# 944
read_and_network.2795.18012:
	add		x5, x0, x0	# 6
	sw		x4, 0(x2)	# 951
	sw		x0, -4(x2)	# 951
	addi	x4, x0, 0	# 951
	sw		x1, -8(x2)	# 951
	addi	x2, x2, -12	# 951
	jal		x1, read_net_item.2791.18008	# 951
	addi	x2, x2, 12	# 951
	lw		x1, -8(x2)	# 951
	lw		x5, -4(x2)	# 952
	arrlw	x5, x4, x5	# 952
	beq		x5, x20, beq.33515	# 952
	lw		x6, 0(x2)	# 954
	arrsw	x4, x25, x6	# 954
	addi	x4, x6, 1	# 955
	jal		x0, read_and_network.2795.18012	# 955
beq.33515:
	jalr	x0, x1, 0	# 952
iter_setup_dirvec_constants.2892.18014:
	ble		x0, x5, ble.33517	# 1327
	jalr	x0, x1, 0	# 1340
ble.33517:
	arrlw	x7, x24, x5	# 1328
	lw		x8, 4(x4)	# 702
	lw		x9, 0(x4)	# 696
	lw		x10, 4(x7)	# 410
	sw		x4, 0(x2)	# 1332
	beq		x10, x21, beq.33520	# 1332
	beq		x10, x22, beq.33522	# 1334
	fadd	f1, f0, f0	# 11
	addi	x10, x0, 5	# 98
	sw		x5, -4(x2)	# 1298
	fsw		f0, -8(x2)	# 1298
	addi	x4, x10, 0	# 1298
	sw		x1, -12(x2)	# 1298
	addi	x2, x2, -16	# 1298
	jal		x1, min_caml_create_float_array	# 1298
	addi	x2, x2, 16	# 1298
	lw		x1, -12(x2)	# 1298
	arrflw	f1, x9, x0	# 1300
	arrflw	f2, x9, x21	# 1300
	arrflw	f3, x9, x22	# 1300
	fmul	f4, f1, f1	# 127
	lw		x5, 16(x7)	# 448
	arrflw	f5, x5, x0	# 453
	fmul	f4, f4, f5	# 1024
	fmul	f6, f2, f2	# 127
	arrflw	f7, x5, x21	# 463
	fmul	f6, f6, f7	# 1024
	fadd	f4, f4, f6	# 1024
	fmul	f6, f3, f3	# 127
	arrflw	f8, x5, x22	# 473
	fmul	f6, f6, f8	# 1024
	fadd	f4, f4, f6	# 1024
	lw		x5, 12(x7)	# 439
	beq		x5, x0, beq_cont.33523	# 1026
	fmul	f6, f2, f3	# 1030
	lw		x9, 36(x7)	# 568
	arrflw	f9, x9, x0	# 573
	fmul	f6, f6, f9	# 1030
	fadd	f4, f4, f6	# 1029
	fmul	f6, f3, f1	# 1031
	arrflw	f9, x9, x21	# 583
	fmul	f6, f6, f9	# 1031
	fadd	f4, f4, f6	# 1029
	fmul	f6, f1, f2	# 1032
	arrflw	f9, x9, x22	# 593
	fmul	f6, f6, f9	# 1032
	fadd	f4, f4, f6	# 1029
beq_cont.33523:
	fmul	f5, f1, f5	# 1301
	fsub	f5, f0, f5	# 123
	fmul	f6, f2, f7	# 1302
	fsub	f6, f0, f6	# 123
	fmul	f7, f3, f8	# 1303
	fsub	f7, f0, f7	# 123
	arrfsw	f4, x4, x0	# 1305
	beq		x5, x0, beq.33526	# 1309
	lw		x5, 36(x7)	# 578
	arrflw	f8, x5, x21	# 583
	fmul	f9, f3, f8	# 1310
	arrflw	f10, x5, x22	# 593
	fmul	f11, f2, f10	# 1310
	fadd	f9, f9, f11	# 1310
	lui		x7, %hi(l.27933)	# 126
	ori		x7, x7, %lo(l.27933)	# 126
	flw		f11, 0(x7)	# 126
	fmul	f9, f9, f11	# 126
	fsub	f5, f5, f9	# 1310
	arrfsw	f5, x4, x21	# 1310
	arrflw	f5, x5, x0	# 573
	fmul	f3, f3, f5	# 1311
	fmul	f9, f1, f10	# 1311
	fadd	f3, f3, f9	# 1311
	fmul	f3, f3, f11	# 126
	fsub	f3, f6, f3	# 1311
	arrfsw	f3, x4, x22	# 1311
	fmul	f2, f2, f5	# 1312
	fmul	f1, f1, f8	# 1312
	fadd	f1, f2, f1	# 1312
	fmul	f1, f1, f11	# 126
	fsub	f1, f7, f1	# 1312
	arrfsw	f1, x4, x23	# 1312
	jal		x0, beq_cont.33525	# 1309
beq.33526:
	arrfsw	f5, x4, x21	# 1314
	arrfsw	f6, x4, x22	# 1315
	arrfsw	f7, x4, x23	# 1316
beq_cont.33525:
	flw		f1, -8(x2)	# 120
	feq		f4, f1, feq_cont.33527	# 120
	fdiv	f1, f30, f4	# 1319
	arrfsw	f1, x4, x30	# 1319
feq_cont.33527:
	lw		x5, -4(x2)	# 1337
	arrsw	x4, x8, x5	# 1337
	jal		x0, beq_cont.33519	# 1334
beq.33522:
	add		x10, x0, x30	# 1279
	fadd	f1, f0, f0	# 11
	sw		x5, -4(x2)	# 1279
	fsw		f0, -12(x2)	# 1279
	addi	x4, x30, 0	# 1279
	sw		x1, -16(x2)	# 1279
	addi	x2, x2, -20	# 1279
	jal		x1, min_caml_create_float_array	# 1279
	addi	x2, x2, 20	# 1279
	lw		x1, -16(x2)	# 1279
	arrflw	f1, x9, x0	# 1281
	lw		x5, 16(x7)	# 448
	arrflw	f2, x5, x0	# 453
	fmul	f1, f1, f2	# 1281
	arrflw	f3, x9, x21	# 1281
	arrflw	f4, x5, x21	# 463
	fmul	f3, f3, f4	# 1281
	fadd	f1, f1, f3	# 1281
	arrflw	f3, x9, x22	# 1281
	arrflw	f5, x5, x22	# 473
	fmul	f3, f3, f5	# 1281
	fadd	f1, f1, f3	# 1281
	flw		f3, -12(x2)	# 121
	fle		f1, f3, fle.33530	# 121
	fdiv	f3, f25, f1	# 1285
	arrfsw	f3, x4, x0	# 1285
	fdiv	f2, f2, f1	# 1287
	fsub	f2, f0, f2	# 123
	arrfsw	f2, x4, x21	# 1287
	fdiv	f2, f4, f1	# 1288
	fsub	f2, f0, f2	# 123
	arrfsw	f2, x4, x22	# 1288
	fdiv	f1, f5, f1	# 1289
	fsub	f1, f0, f1	# 123
	arrfsw	f1, x4, x23	# 1289
	jal		x0, fle_cont.33529	# 121
fle.33530:
	arrfsw	f3, x4, x0	# 1291
fle_cont.33529:
	lw		x5, -4(x2)	# 1335
	arrsw	x4, x8, x5	# 1335
	jal		x0, beq_cont.33519	# 1332
beq.33520:
	addi	x10, x0, 6	# 1252
	fadd	f1, f0, f0	# 11
	sw		x5, -4(x2)	# 1252
	fsw		f0, -16(x2)	# 1252
	addi	x4, x10, 0	# 1252
	sw		x1, -20(x2)	# 1252
	addi	x2, x2, -24	# 1252
	jal		x1, min_caml_create_float_array	# 1252
	addi	x2, x2, 24	# 1252
	lw		x1, -20(x2)	# 1252
	arrflw	f1, x9, x0	# 1254
	flw		f2, -16(x2)	# 120
	feq		f1, f2, feq.33532	# 120
	lw		x5, 24(x7)	# 430
	fle		f2, f1, fle.33534	# 122
	addi	x10, x0, 1	# 122
	jal		x0, fle_cont.33533	# 122
fle.33534:
	addi	x10, x0, 0	# 122
fle_cont.33533:
	beq		x5, x0, beq.33536	# 261
	fle		f2, f1, fle.33538	# 122
	addi	x5, x0, 0	# 261
	jal		x0, beq_cont.33535	# 122
fle.33538:
	addi	x5, x0, 1	# 261
	jal		x0, beq_cont.33535	# 261
beq.33536:
	addi	x5, x10, 0	# 261
beq_cont.33535:
	lw		x10, 16(x7)	# 448
	arrflw	f3, x10, x0	# 453
	beq		x5, x0, beq.33540	# 276
	jal		x0, beq_cont.33539	# 276
beq.33540:
	fsub	f3, f0, f3	# 123
beq_cont.33539:
	arrfsw	f3, x4, x0	# 1258
	fdiv	f1, f30, f1	# 1260
	arrfsw	f1, x4, x21	# 1260
	jal		x0, feq_cont.33531	# 120
feq.33532:
	arrfsw	f2, x4, x21	# 1255
feq_cont.33531:
	arrflw	f1, x9, x21	# 1262
	feq		f1, f2, feq.33542	# 120
	lw		x5, 24(x7)	# 430
	fle		f2, f1, fle.33544	# 122
	addi	x10, x0, 1	# 122
	jal		x0, fle_cont.33543	# 122
fle.33544:
	addi	x10, x0, 0	# 122
fle_cont.33543:
	beq		x5, x0, beq.33546	# 261
	fle		f2, f1, fle.33548	# 122
	addi	x5, x0, 0	# 261
	jal		x0, beq_cont.33545	# 122
fle.33548:
	addi	x5, x0, 1	# 261
	jal		x0, beq_cont.33545	# 261
beq.33546:
	addi	x5, x10, 0	# 261
beq_cont.33545:
	lw		x10, 16(x7)	# 458
	arrflw	f3, x10, x21	# 463
	beq		x5, x0, beq.33550	# 276
	jal		x0, beq_cont.33549	# 276
beq.33550:
	fsub	f3, f0, f3	# 123
beq_cont.33549:
	arrfsw	f3, x4, x22	# 1265
	fdiv	f1, f30, f1	# 1266
	arrfsw	f1, x4, x23	# 1266
	jal		x0, feq_cont.33541	# 120
feq.33542:
	arrfsw	f2, x4, x23	# 1263
feq_cont.33541:
	arrflw	f1, x9, x22	# 1268
	feq		f1, f2, feq.33552	# 120
	lw		x10, 24(x7)	# 430
	fle		f2, f1, fle.33554	# 122
	addi	x11, x0, 1	# 122
	jal		x0, fle_cont.33553	# 122
fle.33554:
	addi	x11, x0, 0	# 122
fle_cont.33553:
	beq		x10, x0, beq.33556	# 261
	fle		f2, f1, fle.33558	# 122
	addi	x10, x0, 0	# 261
	jal		x0, beq_cont.33555	# 122
fle.33558:
	addi	x10, x0, 1	# 261
	jal		x0, beq_cont.33555	# 261
beq.33556:
	addi	x10, x11, 0	# 261
beq_cont.33555:
	lw		x7, 16(x7)	# 468
	arrflw	f2, x7, x22	# 473
	beq		x10, x0, beq.33560	# 276
	jal		x0, beq_cont.33559	# 276
beq.33560:
	fsub	f2, f0, f2	# 123
beq_cont.33559:
	arrfsw	f2, x4, x30	# 1271
	fdiv	f1, f30, f1	# 1272
	addi	x5, x0, 5	# 98
	arrfsw	f1, x4, x5	# 1272
	jal		x0, feq_cont.33551	# 120
feq.33552:
	addi	x5, x0, 5	# 98
	arrfsw	f2, x4, x5	# 1269
feq_cont.33551:
	lw		x5, -4(x2)	# 1333
	arrsw	x4, x8, x5	# 1333
beq_cont.33519:
	addi	x5, x5, -1	# 1339
	lw		x4, 0(x2)	# 1339
	jal		x0, iter_setup_dirvec_constants.2892.18014	# 1339
setup_startp_constants.2897.18017:
	ble		x0, x5, ble.33561	# 1352
	jalr	x0, x1, 0	# 1367
ble.33561:
	arrlw	x7, x24, x5	# 1353
	lw		x8, 40(x7)	# 605
	lw		x9, 4(x7)	# 410
	arrflw	f1, x4, x0	# 1356
	lw		x10, 20(x7)	# 488
	arrflw	f2, x10, x0	# 493
	fsub	f1, f1, f2	# 1356
	arrfsw	f1, x8, x0	# 1356
	arrflw	f1, x4, x21	# 1357
	arrflw	f2, x10, x21	# 503
	fsub	f1, f1, f2	# 1357
	arrfsw	f1, x8, x21	# 1357
	arrflw	f1, x4, x22	# 1358
	arrflw	f2, x10, x22	# 513
	fsub	f1, f1, f2	# 1358
	arrfsw	f1, x8, x22	# 1358
	beq		x9, x22, beq.33564	# 1359
	ble		x9, x22, beq_cont.33563	# 1362
	arrflw	f1, x8, x0	# 1363
	arrflw	f2, x8, x21	# 1363
	arrflw	f3, x8, x22	# 1363
	fmul	f4, f1, f1	# 127
	lw		x10, 16(x7)	# 448
	arrflw	f5, x10, x0	# 453
	fmul	f4, f4, f5	# 1024
	fmul	f5, f2, f2	# 127
	arrflw	f6, x10, x21	# 463
	fmul	f5, f5, f6	# 1024
	fadd	f4, f4, f5	# 1024
	fmul	f5, f3, f3	# 127
	arrflw	f6, x10, x22	# 473
	fmul	f5, f5, f6	# 1024
	fadd	f4, f4, f5	# 1024
	lw		x10, 12(x7)	# 439
	beq		x10, x0, beq.33568	# 1026
	fmul	f5, f2, f3	# 1030
	lw		x7, 36(x7)	# 568
	arrflw	f6, x7, x0	# 573
	fmul	f5, f5, f6	# 1030
	fadd	f4, f4, f5	# 1029
	fmul	f3, f3, f1	# 1031
	arrflw	f5, x7, x21	# 583
	fmul	f3, f3, f5	# 1031
	fadd	f3, f4, f3	# 1029
	fmul	f1, f1, f2	# 1032
	arrflw	f2, x7, x22	# 593
	fmul	f1, f1, f2	# 1032
	fadd	f1, f3, f1	# 1029
	jal		x0, beq_cont.33567	# 1026
beq.33568:
	fadd	f1, f0, f4	# 1027
beq_cont.33567:
	beq		x9, x23, beq.33570	# 1364
	jal		x0, beq_cont.33569	# 1364
beq.33570:
	fsub	f1, f1, f30	# 1364
beq_cont.33569:
	arrfsw	f1, x8, x23	# 1364
	jal		x0, beq_cont.33563	# 1362
beq.33564:
	lw		x7, 16(x7)	# 478
	arrflw	f1, x8, x0	# 1361
	arrflw	f2, x8, x21	# 1361
	arrflw	f3, x8, x22	# 1361
	arrflw	f4, x7, x0	# 354
	fmul	f1, f4, f1	# 354
	arrflw	f4, x7, x21	# 354
	fmul	f2, f4, f2	# 354
	fadd	f1, f1, f2	# 354
	arrflw	f2, x7, x22	# 354
	fmul	f2, f2, f3	# 354
	fadd	f1, f1, f2	# 354
	arrfsw	f1, x8, x23	# 1360
beq_cont.33563:
	addi	x5, x5, -1	# 1366
	jal		x0, setup_startp_constants.2897.18017	# 1366
check_all_inside.2922.18020:
	arrlw	x6, x5, x4	# 1421
	beq		x6, x20, beq.33571	# 1422
	arrlw	x6, x24, x6	# 1425
	lw		x7, 20(x6)	# 488
	arrflw	f4, x7, x0	# 493
	fsub	f4, f1, f4	# 1407
	arrflw	f5, x7, x21	# 503
	fsub	f5, f2, f5	# 1408
	arrflw	f6, x7, x22	# 513
	fsub	f6, f3, f6	# 1409
	lw		x7, 4(x6)	# 410
	beq		x7, x21, beq.33573	# 1411
	beq		x7, x22, beq.33575	# 1413
	fmul	f7, f4, f4	# 127
	lw		x11, 16(x6)	# 448
	arrflw	f8, x11, x0	# 453
	fmul	f7, f7, f8	# 1024
	fmul	f8, f5, f5	# 127
	arrflw	f9, x11, x21	# 463
	fmul	f8, f8, f9	# 1024
	fadd	f7, f7, f8	# 1024
	fmul	f8, f6, f6	# 127
	arrflw	f9, x11, x22	# 473
	fmul	f8, f8, f9	# 1024
	fadd	f7, f7, f8	# 1024
	lw		x11, 12(x6)	# 439
	beq		x11, x0, beq.33577	# 1026
	fmul	f8, f5, f6	# 1030
	lw		x11, 36(x6)	# 568
	arrflw	f9, x11, x0	# 573
	fmul	f8, f8, f9	# 1030
	fadd	f7, f7, f8	# 1029
	fmul	f6, f6, f4	# 1031
	arrflw	f8, x11, x21	# 583
	fmul	f6, f6, f8	# 1031
	fadd	f6, f7, f6	# 1029
	fmul	f4, f4, f5	# 1032
	arrflw	f5, x11, x22	# 593
	fmul	f4, f4, f5	# 1032
	fadd	f4, f6, f4	# 1029
	jal		x0, beq_cont.33576	# 1026
beq.33577:
	fadd	f4, f0, f7	# 1027
beq_cont.33576:
	beq		x7, x23, beq.33579	# 1401
	jal		x0, beq_cont.33578	# 1401
beq.33579:
	fsub	f4, f4, f30	# 1401
beq_cont.33578:
	lw		x6, 24(x6)	# 430
	fle		f0, f4, fle.33581	# 122
	addi	x7, x0, 1	# 122
	jal		x0, fle_cont.33580	# 122
fle.33581:
	addi	x7, x0, 0	# 122
fle_cont.33580:
	beq		x6, x0, beq.33583	# 261
	fle		f0, f4, fle.33585	# 122
	addi	x6, x0, 0	# 261
	jal		x0, beq_cont.33582	# 122
fle.33585:
	addi	x6, x0, 1	# 261
	jal		x0, beq_cont.33582	# 261
beq.33583:
	addi	x6, x7, 0	# 261
beq_cont.33582:
	beq		x6, x0, beq.33587	# 1402
	addi	x6, x0, 0	# 1402
	jal		x0, beq_cont.33572	# 1402
beq.33587:
	addi	x6, x0, 1	# 1402
	jal		x0, beq_cont.33572	# 1413
beq.33575:
	lw		x7, 16(x6)	# 478
	arrflw	f7, x7, x0	# 354
	fmul	f4, f7, f4	# 354
	arrflw	f7, x7, x21	# 354
	fmul	f5, f7, f5	# 354
	fadd	f4, f4, f5	# 354
	arrflw	f5, x7, x22	# 354
	fmul	f5, f5, f6	# 354
	fadd	f4, f4, f5	# 354
	lw		x6, 24(x6)	# 430
	fle		f0, f4, fle.33589	# 122
	addi	x7, x0, 1	# 122
	jal		x0, fle_cont.33588	# 122
fle.33589:
	addi	x7, x0, 0	# 122
fle_cont.33588:
	beq		x6, x0, beq.33591	# 261
	fle		f0, f4, fle.33593	# 122
	addi	x6, x0, 0	# 261
	jal		x0, beq_cont.33590	# 122
fle.33593:
	addi	x6, x0, 1	# 261
	jal		x0, beq_cont.33590	# 261
beq.33591:
	addi	x6, x7, 0	# 261
beq_cont.33590:
	beq		x6, x0, beq.33595	# 1395
	addi	x6, x0, 0	# 1395
	jal		x0, beq_cont.33572	# 1395
beq.33595:
	addi	x6, x0, 1	# 1395
	jal		x0, beq_cont.33572	# 1411
beq.33573:
	fle		f4, f0, fle.33597	# 124
	jal		x0, fle_cont.33596	# 124
fle.33597:
	fsub	f4, f0, f4	# 124
fle_cont.33596:
	lw		x7, 16(x6)	# 448
	arrflw	f8, x7, x0	# 453
	fle		f8, f4, fle.33599	# 125
	fle		f5, f0, fle.33601	# 124
	fadd	f4, f0, f5	# 124
	jal		x0, fle_cont.33600	# 124
fle.33601:
	fsub	f4, f0, f5	# 124
fle_cont.33600:
	arrflw	f5, x7, x21	# 463
	fle		f5, f4, fle.33603	# 125
	fle		f6, f0, fle.33605	# 124
	fadd	f4, f0, f6	# 124
	jal		x0, fle_cont.33604	# 124
fle.33605:
	fsub	f4, f0, f6	# 124
fle_cont.33604:
	arrflw	f5, x7, x22	# 473
	fle		f5, f4, fle.33607	# 125
	addi	x7, x0, 1	# 125
	jal		x0, fle_cont.33598	# 125
fle.33607:
	addi	x7, x0, 0	# 125
	jal		x0, fle_cont.33598	# 125
fle.33603:
	addi	x7, x0, 0	# 1387
	jal		x0, fle_cont.33598	# 125
fle.33599:
	addi	x7, x0, 0	# 1388
fle_cont.33598:
	beq		x7, x0, beq.33609	# 1383
	lw		x6, 24(x6)	# 430
	jal		x0, beq_cont.33572	# 1383
beq.33609:
	lw		x6, 24(x6)	# 430
	beq		x6, x0, beq.33611	# 1389
	addi	x6, x0, 0	# 1389
	jal		x0, beq_cont.33572	# 1389
beq.33611:
	addi	x6, x0, 1	# 1389
beq_cont.33572:
	beq		x6, x0, beq.33612	# 1425
	addi	x4, x0, 0	# 1426
	jalr	x0, x1, 0	# 1426
beq.33612:
	addi	x4, x4, 1	# 1428
	jal		x0, check_all_inside.2922.18020	# 1428
beq.33571:
	addi	x4, x0, 1	# 1423
	jalr	x0, x1, 0	# 1423
shadow_check_and_group.2928.18026:
	arrlw	x6, x5, x4	# 1441
	beq		x6, x20, beq.33613	# 1441
	arrlw	x7, x24, x6	# 1183
	add		x9, x0, x0	# 6
	arrflw	f1, x27, x0	# 1184
	lw		x10, 20(x7)	# 488
	arrflw	f2, x10, x0	# 493
	fsub	f2, f1, f2	# 1184
	arrflw	f3, x27, x21	# 1185
	arrflw	f4, x10, x21	# 503
	fsub	f4, f3, f4	# 1185
	arrflw	f5, x27, x22	# 1186
	arrflw	f6, x10, x22	# 513
	fsub	f6, f5, f6	# 1186
	arrlw	x6, x28, x6	# 1188
	lw		x8, 4(x7)	# 410
	beq		x8, x21, beq.33615	# 1190
	beq		x8, x22, beq.33617	# 1192
	arrflw	f7, x6, x0	# 1164
	feq		f7, f0, feq.33619	# 120
	arrflw	f9, x6, x21	# 1168
	fmul	f9, f9, f2	# 1168
	arrflw	f10, x6, x22	# 1168
	fmul	f10, f10, f4	# 1168
	fadd	f9, f9, f10	# 1168
	arrflw	f10, x6, x23	# 1168
	fmul	f10, f10, f6	# 1168
	fadd	f9, f9, f10	# 1168
	fmul	f10, f2, f2	# 127
	lw		x13, 16(x7)	# 448
	arrflw	f11, x13, x0	# 453
	fmul	f10, f10, f11	# 1024
	fmul	f11, f4, f4	# 127
	arrflw	f12, x13, x21	# 463
	fmul	f11, f11, f12	# 1024
	fadd	f10, f10, f11	# 1024
	fmul	f11, f6, f6	# 127
	arrflw	f12, x13, x22	# 473
	fmul	f11, f11, f12	# 1024
	fadd	f10, f10, f11	# 1024
	lw		x13, 12(x7)	# 439
	beq		x13, x0, beq.33621	# 1026
	fmul	f11, f4, f6	# 1030
	lw		x13, 36(x7)	# 568
	arrflw	f12, x13, x0	# 573
	fmul	f11, f11, f12	# 1030
	fadd	f10, f10, f11	# 1029
	fmul	f6, f6, f2	# 1031
	arrflw	f11, x13, x21	# 583
	fmul	f6, f6, f11	# 1031
	fadd	f6, f10, f6	# 1029
	fmul	f2, f2, f4	# 1032
	arrflw	f4, x13, x22	# 593
	fmul	f2, f2, f4	# 1032
	fadd	f2, f6, f2	# 1029
	jal		x0, beq_cont.33620	# 1026
beq.33621:
	fadd	f2, f0, f10	# 1027
beq_cont.33620:
	beq		x8, x23, beq.33623	# 1170
	jal		x0, beq_cont.33622	# 1170
beq.33623:
	fsub	f2, f2, f30	# 1170
beq_cont.33622:
	fmul	f4, f9, f9	# 127
	fmul	f2, f7, f2	# 1171
	fsub	f2, f4, f2	# 1171
	fle		f2, f0, fle.33625	# 121
	lw		x8, 24(x7)	# 430
	beq		x8, x0, beq.33627	# 1173
	fsqrt	f2, f2	# 1174
	fadd	f2, f9, f2	# 1174
	arrflw	f4, x6, x30	# 1174
	fmul	f2, f2, f4	# 1174
	arrfsw	f2, x26, x0	# 1174
	jal		x0, beq_cont.33626	# 1173
beq.33627:
	fsqrt	f2, f2	# 1176
	fsub	f2, f9, f2	# 1176
	arrflw	f4, x6, x30	# 1176
	fmul	f2, f2, f4	# 1176
	arrfsw	f2, x26, x0	# 1176
beq_cont.33626:
	addi	x6, x0, 1	# 1177
	jal		x0, beq_cont.33614	# 121
fle.33625:
	addi	x6, x0, 0	# 1178
	jal		x0, beq_cont.33614	# 120
feq.33619:
	addi	x6, x0, 0	# 1166
	jal		x0, beq_cont.33614	# 1192
beq.33617:
	arrflw	f7, x6, x0	# 1154
	fle		f0, f7, fle.33629	# 122
	arrflw	f7, x6, x21	# 1156
	fmul	f2, f7, f2	# 1156
	arrflw	f7, x6, x22	# 1156
	fmul	f4, f7, f4	# 1156
	fadd	f2, f2, f4	# 1156
	arrflw	f4, x6, x23	# 1156
	fmul	f4, f4, f6	# 1156
	fadd	f2, f2, f4	# 1156
	arrfsw	f2, x26, x0	# 1155
	addi	x6, x0, 1	# 1157
	jal		x0, beq_cont.33614	# 122
fle.33629:
	addi	x6, x0, 0	# 1158
	jal		x0, beq_cont.33614	# 1190
beq.33615:
	arrflw	f7, x6, x0	# 1121
	fsub	f7, f7, f2	# 1121
	arrflw	f8, x6, x21	# 1121
	fmul	f7, f7, f8	# 1121
	addi	x8, x0, 40736	# 104
	arrflw	f9, x8, x21	# 1123
	fmul	f10, f7, f9	# 1123
	fadd	f10, f10, f4	# 1123
	fle		f10, f0, fle.33631	# 124
	jal		x0, fle_cont.33630	# 124
fle.33631:
	fsub	f10, f0, f10	# 124
fle_cont.33630:
	lw		x10, 16(x7)	# 458
	arrflw	f12, x10, x21	# 463
	fle		f12, f10, fle.33633	# 125
	arrflw	f10, x8, x22	# 1124
	fmul	f10, f7, f10	# 1124
	fadd	f10, f10, f6	# 1124
	fle		f10, f0, fle.33635	# 124
	jal		x0, fle_cont.33634	# 124
fle.33635:
	fsub	f10, f0, f10	# 124
fle_cont.33634:
	arrflw	f13, x10, x22	# 473
	fle		f13, f10, fle.33637	# 125
	feq		f8, f0, feq.33639	# 120
	addi	x13, x0, 1	# 1125
	jal		x0, fle_cont.33632	# 120
feq.33639:
	addi	x13, x0, 0	# 1125
	jal		x0, fle_cont.33632	# 125
fle.33637:
	addi	x13, x0, 0	# 1126
	jal		x0, fle_cont.33632	# 125
fle.33633:
	addi	x13, x0, 0	# 1127
fle_cont.33632:
	beq		x13, x0, beq.33641	# 1122
	arrfsw	f7, x26, x0	# 1129
	addi	x6, x0, 1	# 1129
	jal		x0, beq_cont.33614	# 1122
beq.33641:
	arrflw	f7, x6, x22	# 1130
	fsub	f7, f7, f4	# 1130
	arrflw	f8, x6, x23	# 1130
	fmul	f7, f7, f8	# 1130
	arrflw	f10, x8, x0	# 1132
	fmul	f13, f7, f10	# 1132
	fadd	f13, f13, f2	# 1132
	fle		f13, f0, fle.33643	# 124
	jal		x0, fle_cont.33642	# 124
fle.33643:
	fsub	f13, f0, f13	# 124
fle_cont.33642:
	arrflw	f14, x10, x0	# 453
	fle		f14, f13, fle.33645	# 125
	arrflw	f13, x8, x22	# 1133
	fmul	f13, f7, f13	# 1133
	fadd	f13, f13, f6	# 1133
	fle		f13, f0, fle.33647	# 124
	jal		x0, fle_cont.33646	# 124
fle.33647:
	fsub	f13, f0, f13	# 124
fle_cont.33646:
	arrflw	f15, x10, x22	# 473
	fle		f15, f13, fle.33649	# 125
	feq		f8, f0, feq.33651	# 120
	addi	x8, x0, 1	# 1134
	jal		x0, fle_cont.33644	# 120
feq.33651:
	addi	x8, x0, 0	# 1134
	jal		x0, fle_cont.33644	# 125
fle.33649:
	addi	x8, x0, 0	# 1135
	jal		x0, fle_cont.33644	# 125
fle.33645:
	addi	x8, x0, 0	# 1136
fle_cont.33644:
	beq		x8, x0, beq.33653	# 1131
	arrfsw	f7, x26, x0	# 1138
	addi	x6, x0, 2	# 1138
	jal		x0, beq_cont.33614	# 1131
beq.33653:
	arrflw	f7, x6, x30	# 1139
	fsub	f6, f7, f6	# 1139
	addi	x8, x0, 5	# 98
	arrflw	f7, x6, x8	# 1139
	fmul	f6, f6, f7	# 1139
	fmul	f8, f6, f10	# 1141
	fadd	f2, f8, f2	# 1141
	fle		f2, f0, fle.33655	# 124
	jal		x0, fle_cont.33654	# 124
fle.33655:
	fsub	f2, f0, f2	# 124
fle_cont.33654:
	fle		f14, f2, fle.33657	# 125
	fmul	f2, f6, f9	# 1142
	fadd	f2, f2, f4	# 1142
	fle		f2, f0, fle.33659	# 124
	jal		x0, fle_cont.33658	# 124
fle.33659:
	fsub	f2, f0, f2	# 124
fle_cont.33658:
	fle		f12, f2, fle.33661	# 125
	feq		f7, f0, feq.33663	# 120
	addi	x6, x0, 1	# 1143
	jal		x0, fle_cont.33656	# 120
feq.33663:
	addi	x6, x0, 0	# 1143
	jal		x0, fle_cont.33656	# 125
fle.33661:
	addi	x6, x0, 0	# 1144
	jal		x0, fle_cont.33656	# 125
fle.33657:
	addi	x6, x0, 0	# 1145
fle_cont.33656:
	beq		x6, x0, beq.33665	# 1140
	arrfsw	f6, x26, x0	# 1147
	addi	x6, x0, 3	# 1147
	jal		x0, beq_cont.33614	# 1140
beq.33665:
	addi	x6, x0, 0	# 1149
beq_cont.33614:
	arrflw	f2, x26, x0	# 1446
	beq		x6, x0, beq.33667	# 1447
	fle		f19, f2, fle.33669	# 125
	addi	x6, x0, 1	# 125
	jal		x0, beq_cont.33666	# 125
fle.33669:
	addi	x6, x0, 0	# 125
	jal		x0, beq_cont.33666	# 1447
beq.33667:
	addi	x6, x0, 0	# 1447
beq_cont.33666:
	beq		x6, x0, beq.33670	# 1447
	fadd	f2, f2, f18	# 1450
	addi	x6, x0, 40312	# 22
	arrflw	f4, x6, x0	# 1451
	fmul	f4, f4, f2	# 1451
	fadd	f1, f4, f1	# 1451
	arrflw	f4, x6, x21	# 1452
	fmul	f4, f4, f2	# 1452
	fadd	f3, f4, f3	# 1452
	arrflw	f4, x6, x22	# 1453
	fmul	f2, f4, f2	# 1453
	fadd	f2, f2, f5	# 1453
	sw		x5, 0(x2)	# 1454
	sw		x4, -4(x2)	# 1454
	sw		x0, -8(x2)	# 1454
	addi	x4, x0, 0	# 1454
	fadd	f31, f0, f3	# 1454
	fadd	f3, f0, f2	# 1454
	fadd	f2, f0, f31	# 1454
	sw		x1, -12(x2)	# 1454
	addi	x2, x2, -16	# 1454
	jal		x1, check_all_inside.2922.18020	# 1454
	addi	x2, x2, 16	# 1454
	lw		x1, -12(x2)	# 1454
	lw		x5, -8(x2)	# 1454
	beq		x4, x5, beq.33671	# 1454
	addi	x4, x0, 1	# 1455
	jalr	x0, x1, 0	# 1455
beq.33671:
	lw		x4, -4(x2)	# 1457
	addi	x4, x4, 1	# 1457
	lw		x5, 0(x2)	# 1457
	jal		x0, shadow_check_and_group.2928.18026	# 1457
beq.33670:
	lw		x6, 24(x7)	# 430
	beq		x6, x0, beq.33672	# 1463
	addi	x4, x4, 1	# 1464
	jal		x0, shadow_check_and_group.2928.18026	# 1464
beq.33672:
	addi	x4, x0, 0	# 1466
	jalr	x0, x1, 0	# 1466
beq.33613:
	addi	x4, x0, 0	# 1442
	jalr	x0, x1, 0	# 1442
shadow_check_one_or_group.2931.18029:
	arrlw	x6, x5, x4	# 1471
	beq		x6, x20, beq.33673	# 1472
	arrlw	x6, x25, x6	# 1475
	add		x7, x0, x0	# 6
	sw		x5, 0(x2)	# 1476
	sw		x4, -4(x2)	# 1476
	sw		x0, -8(x2)	# 1476
	addi	x5, x6, 0	# 1476
	addi	x4, x0, 0	# 1476
	sw		x1, -12(x2)	# 1476
	addi	x2, x2, -16	# 1476
	jal		x1, shadow_check_and_group.2928.18026	# 1476
	addi	x2, x2, 16	# 1476
	lw		x1, -12(x2)	# 1476
	lw		x5, -8(x2)	# 1477
	beq		x4, x5, beq.33674	# 1477
	addi	x4, x0, 1	# 1478
	jalr	x0, x1, 0	# 1478
beq.33674:
	lw		x4, -4(x2)	# 1480
	addi	x4, x4, 1	# 1480
	lw		x5, 0(x2)	# 1480
	jal		x0, shadow_check_one_or_group.2931.18029	# 1480
beq.33673:
	addi	x4, x0, 0	# 1473
	jalr	x0, x1, 0	# 1473
shadow_check_one_or_matrix.2934.18032:
	arrlw	x6, x5, x4	# 1486
	arrlw	x8, x6, x0	# 1487
	beq		x8, x20, beq.33675	# 1488
	addi	x9, x0, 99	# 1492
	sw		x6, 0(x2)	# 1492
	sw		x5, -4(x2)	# 1492
	sw		x4, -8(x2)	# 1492
	sw		x0, -12(x2)	# 1492
	beq		x8, x9, beq.33677	# 1492
	arrlw	x9, x24, x8	# 1183
	arrflw	f1, x27, x0	# 1184
	lw		x11, 20(x9)	# 488
	arrflw	f2, x11, x0	# 493
	fsub	f1, f1, f2	# 1184
	add		x12, x0, x21	# 6
	arrflw	f2, x27, x21	# 1185
	arrflw	f3, x11, x21	# 503
	fsub	f2, f2, f3	# 1185
	arrflw	f3, x27, x22	# 1186
	arrflw	f4, x11, x22	# 513
	fsub	f3, f3, f4	# 1186
	arrlw	x8, x28, x8	# 1188
	lw		x10, 4(x9)	# 410
	beq		x10, x21, beq.33679	# 1190
	beq		x10, x22, beq.33681	# 1192
	arrflw	f4, x8, x0	# 1164
	feq		f4, f0, feq.33683	# 120
	arrflw	f6, x8, x21	# 1168
	fmul	f6, f6, f1	# 1168
	arrflw	f7, x8, x22	# 1168
	fmul	f7, f7, f2	# 1168
	fadd	f6, f6, f7	# 1168
	arrflw	f7, x8, x23	# 1168
	fmul	f7, f7, f3	# 1168
	fadd	f6, f6, f7	# 1168
	fmul	f7, f1, f1	# 127
	lw		x14, 16(x9)	# 448
	arrflw	f8, x14, x0	# 453
	fmul	f7, f7, f8	# 1024
	fmul	f8, f2, f2	# 127
	arrflw	f9, x14, x21	# 463
	fmul	f8, f8, f9	# 1024
	fadd	f7, f7, f8	# 1024
	fmul	f8, f3, f3	# 127
	arrflw	f9, x14, x22	# 473
	fmul	f8, f8, f9	# 1024
	fadd	f7, f7, f8	# 1024
	lw		x14, 12(x9)	# 439
	beq		x14, x0, beq.33685	# 1026
	fmul	f8, f2, f3	# 1030
	lw		x14, 36(x9)	# 568
	arrflw	f9, x14, x0	# 573
	fmul	f8, f8, f9	# 1030
	fadd	f7, f7, f8	# 1029
	fmul	f3, f3, f1	# 1031
	arrflw	f8, x14, x21	# 583
	fmul	f3, f3, f8	# 1031
	fadd	f3, f7, f3	# 1029
	fmul	f1, f1, f2	# 1032
	arrflw	f2, x14, x22	# 593
	fmul	f1, f1, f2	# 1032
	fadd	f1, f3, f1	# 1029
	jal		x0, beq_cont.33684	# 1026
beq.33685:
	fadd	f1, f0, f7	# 1027
beq_cont.33684:
	beq		x10, x23, beq.33687	# 1170
	jal		x0, beq_cont.33686	# 1170
beq.33687:
	fsub	f1, f1, f30	# 1170
beq_cont.33686:
	fmul	f2, f6, f6	# 127
	fmul	f1, f4, f1	# 1171
	fsub	f1, f2, f1	# 1171
	fle		f1, f0, fle.33689	# 121
	lw		x9, 24(x9)	# 430
	beq		x9, x0, beq.33691	# 1173
	fsqrt	f1, f1	# 1174
	fadd	f1, f6, f1	# 1174
	arrflw	f2, x8, x30	# 1174
	fmul	f1, f1, f2	# 1174
	arrfsw	f1, x26, x0	# 1174
	jal		x0, beq_cont.33690	# 1173
beq.33691:
	fsqrt	f1, f1	# 1176
	fsub	f1, f6, f1	# 1176
	arrflw	f2, x8, x30	# 1176
	fmul	f1, f1, f2	# 1176
	arrfsw	f1, x26, x0	# 1176
beq_cont.33690:
	addi	x8, x0, 1	# 1177
	jal		x0, beq_cont.33678	# 121
fle.33689:
	addi	x8, x0, 0	# 1178
	jal		x0, beq_cont.33678	# 120
feq.33683:
	addi	x8, x0, 0	# 1166
	jal		x0, beq_cont.33678	# 1192
beq.33681:
	arrflw	f4, x8, x0	# 1154
	fle		f0, f4, fle.33693	# 122
	arrflw	f4, x8, x21	# 1156
	fmul	f1, f4, f1	# 1156
	arrflw	f4, x8, x22	# 1156
	fmul	f2, f4, f2	# 1156
	fadd	f1, f1, f2	# 1156
	arrflw	f2, x8, x23	# 1156
	fmul	f2, f2, f3	# 1156
	fadd	f1, f1, f2	# 1156
	arrfsw	f1, x26, x0	# 1155
	addi	x8, x0, 1	# 1157
	jal		x0, beq_cont.33678	# 122
fle.33693:
	addi	x8, x0, 0	# 1158
	jal		x0, beq_cont.33678	# 1190
beq.33679:
	arrflw	f4, x8, x0	# 1121
	fsub	f4, f4, f1	# 1121
	arrflw	f5, x8, x21	# 1121
	fmul	f4, f4, f5	# 1121
	addi	x10, x0, 40736	# 104
	arrflw	f6, x10, x21	# 1123
	fmul	f7, f4, f6	# 1123
	fadd	f7, f7, f2	# 1123
	fle		f7, f0, fle.33695	# 124
	jal		x0, fle_cont.33694	# 124
fle.33695:
	fsub	f7, f0, f7	# 124
fle_cont.33694:
	lw		x9, 16(x9)	# 458
	arrflw	f9, x9, x21	# 463
	fle		f9, f7, fle.33697	# 125
	arrflw	f7, x10, x22	# 1124
	fmul	f7, f4, f7	# 1124
	fadd	f7, f7, f3	# 1124
	fle		f7, f0, fle.33699	# 124
	jal		x0, fle_cont.33698	# 124
fle.33699:
	fsub	f7, f0, f7	# 124
fle_cont.33698:
	arrflw	f10, x9, x22	# 473
	fle		f10, f7, fle.33701	# 125
	feq		f5, f0, feq.33703	# 120
	addi	x11, x0, 1	# 1125
	jal		x0, fle_cont.33696	# 120
feq.33703:
	addi	x11, x0, 0	# 1125
	jal		x0, fle_cont.33696	# 125
fle.33701:
	addi	x11, x0, 0	# 1126
	jal		x0, fle_cont.33696	# 125
fle.33697:
	addi	x11, x0, 0	# 1127
fle_cont.33696:
	beq		x11, x0, beq.33705	# 1122
	arrfsw	f4, x26, x0	# 1129
	addi	x8, x0, 1	# 1129
	jal		x0, beq_cont.33678	# 1122
beq.33705:
	arrflw	f4, x8, x22	# 1130
	fsub	f4, f4, f2	# 1130
	arrflw	f5, x8, x23	# 1130
	fmul	f4, f4, f5	# 1130
	arrflw	f7, x10, x0	# 1132
	fmul	f10, f4, f7	# 1132
	fadd	f10, f10, f1	# 1132
	fle		f10, f0, fle.33707	# 124
	jal		x0, fle_cont.33706	# 124
fle.33707:
	fsub	f10, f0, f10	# 124
fle_cont.33706:
	arrflw	f11, x9, x0	# 453
	fle		f11, f10, fle.33709	# 125
	arrflw	f10, x10, x22	# 1133
	fmul	f10, f4, f10	# 1133
	fadd	f10, f10, f3	# 1133
	fle		f10, f0, fle.33711	# 124
	jal		x0, fle_cont.33710	# 124
fle.33711:
	fsub	f10, f0, f10	# 124
fle_cont.33710:
	arrflw	f12, x9, x22	# 473
	fle		f12, f10, fle.33713	# 125
	feq		f5, f0, feq.33715	# 120
	addi	x9, x0, 1	# 1134
	jal		x0, fle_cont.33708	# 120
feq.33715:
	addi	x9, x0, 0	# 1134
	jal		x0, fle_cont.33708	# 125
fle.33713:
	addi	x9, x0, 0	# 1135
	jal		x0, fle_cont.33708	# 125
fle.33709:
	addi	x9, x0, 0	# 1136
fle_cont.33708:
	beq		x9, x0, beq.33717	# 1131
	arrfsw	f4, x26, x0	# 1138
	addi	x8, x0, 2	# 1138
	jal		x0, beq_cont.33678	# 1131
beq.33717:
	arrflw	f4, x8, x30	# 1139
	fsub	f3, f4, f3	# 1139
	addi	x9, x0, 5	# 98
	arrflw	f4, x8, x9	# 1139
	fmul	f3, f3, f4	# 1139
	fmul	f5, f3, f7	# 1141
	fadd	f1, f5, f1	# 1141
	fle		f1, f0, fle.33719	# 124
	jal		x0, fle_cont.33718	# 124
fle.33719:
	fsub	f1, f0, f1	# 124
fle_cont.33718:
	fle		f11, f1, fle.33721	# 125
	fmul	f1, f3, f6	# 1142
	fadd	f1, f1, f2	# 1142
	fle		f1, f0, fle.33723	# 124
	jal		x0, fle_cont.33722	# 124
fle.33723:
	fsub	f1, f0, f1	# 124
fle_cont.33722:
	fle		f9, f1, fle.33725	# 125
	feq		f4, f0, feq.33727	# 120
	addi	x8, x0, 1	# 1143
	jal		x0, fle_cont.33720	# 120
feq.33727:
	addi	x8, x0, 0	# 1143
	jal		x0, fle_cont.33720	# 125
fle.33725:
	addi	x8, x0, 0	# 1144
	jal		x0, fle_cont.33720	# 125
fle.33721:
	addi	x8, x0, 0	# 1145
fle_cont.33720:
	beq		x8, x0, beq.33729	# 1140
	arrfsw	f3, x26, x0	# 1147
	addi	x8, x0, 3	# 1147
	jal		x0, beq_cont.33678	# 1140
beq.33729:
	addi	x8, x0, 0	# 1149
beq_cont.33678:
	beq		x8, x0, beq.33731	# 1498
	arrflw	f1, x26, x0	# 1499
	fle		f20, f1, fle.33733	# 125
	addi	x5, x6, 0	# 1500
	addi	x4, x21, 0	# 1500
	sw		x1, -16(x2)	# 1500
	addi	x2, x2, -20	# 1500
	jal		x1, shadow_check_one_or_group.2931.18029	# 1500
	addi	x2, x2, 20	# 1500
	lw		x1, -16(x2)	# 1500
	lw		x5, -12(x2)	# 1500
	beq		x4, x5, beq.33735	# 1500
	addi	x4, x0, 1	# 1501
	jal		x0, beq_cont.33676	# 1500
beq.33735:
	addi	x4, x0, 0	# 1502
	jal		x0, beq_cont.33676	# 125
fle.33733:
	addi	x4, x0, 0	# 1503
	jal		x0, beq_cont.33676	# 1498
beq.33731:
	addi	x4, x0, 0	# 1504
	jal		x0, beq_cont.33676	# 1492
beq.33677:
	addi	x4, x0, 1	# 1493
beq_cont.33676:
	lw		x5, -12(x2)	# 1491
	beq		x4, x5, beq.33736	# 1491
	add		x4, x0, x21	# 6
	lw		x6, 0(x2)	# 1506
	addi	x5, x6, 0	# 1506
	sw		x1, -16(x2)	# 1506
	addi	x2, x2, -20	# 1506
	jal		x1, shadow_check_one_or_group.2931.18029	# 1506
	addi	x2, x2, 20	# 1506
	lw		x1, -16(x2)	# 1506
	lw		x5, -12(x2)	# 1506
	beq		x4, x5, beq.33737	# 1506
	addi	x4, x0, 1	# 1507
	jalr	x0, x1, 0	# 1507
beq.33737:
	lw		x4, -8(x2)	# 1509
	addi	x4, x4, 1	# 1509
	lw		x5, -4(x2)	# 1509
	jal		x0, shadow_check_one_or_matrix.2934.18032	# 1509
beq.33736:
	lw		x4, -8(x2)	# 1511
	addi	x4, x4, 1	# 1511
	lw		x5, -4(x2)	# 1511
	jal		x0, shadow_check_one_or_matrix.2934.18032	# 1511
beq.33675:
	addi	x4, x0, 0	# 1489
	jalr	x0, x1, 0	# 1489
solve_each_element.2937.18035:
	arrlw	x7, x5, x4	# 1522
	beq		x7, x20, beq.33738	# 1523
	arrlw	x8, x24, x7	# 1089
	addi	x9, x0, 40636	# 75
	add		x10, x0, x0	# 6
	arrflw	f1, x9, x0	# 1091
	lw		x11, 20(x8)	# 488
	arrflw	f2, x11, x0	# 493
	fsub	f2, f1, f2	# 1091
	arrflw	f3, x9, x21	# 1092
	arrflw	f4, x11, x21	# 503
	fsub	f4, f3, f4	# 1092
	arrflw	f5, x9, x22	# 1093
	arrflw	f6, x11, x22	# 513
	fsub	f6, f5, f6	# 1093
	lw		x9, 4(x8)	# 410
	beq		x9, x21, beq.33740	# 1096
	beq		x9, x22, beq.33742	# 1097
	arrflw	f7, x6, x0	# 1063
	arrflw	f8, x6, x21	# 1063
	arrflw	f9, x6, x22	# 1063
	fmul	f10, f7, f7	# 127
	lw		x11, 16(x8)	# 448
	arrflw	f11, x11, x0	# 453
	fmul	f10, f10, f11	# 1024
	fmul	f12, f8, f8	# 127
	arrflw	f13, x11, x21	# 463
	fmul	f12, f12, f13	# 1024
	fadd	f10, f10, f12	# 1024
	fmul	f12, f9, f9	# 127
	arrflw	f14, x11, x22	# 473
	fmul	f12, f12, f14	# 1024
	fadd	f10, f10, f12	# 1024
	lw		x11, 12(x8)	# 439
	beq		x11, x0, beq_cont.33743	# 1026
	fmul	f12, f8, f9	# 1030
	lw		x14, 36(x8)	# 568
	arrflw	f15, x14, x0	# 573
	fmul	f12, f12, f15	# 1030
	fadd	f10, f10, f12	# 1029
	fmul	f12, f9, f7	# 1031
	arrflw	f15, x14, x21	# 583
	fmul	f12, f12, f15	# 1031
	fadd	f10, f10, f12	# 1029
	fmul	f12, f7, f8	# 1032
	arrflw	f15, x14, x22	# 593
	fmul	f12, f12, f15	# 1032
	fadd	f10, f10, f12	# 1029
beq_cont.33743:
	feq		f10, f0, feq.33746	# 120
	fmul	f15, f7, f2	# 1038
	fmul	f15, f15, f11	# 1038
	fmul	f16, f8, f4	# 1039
	fmul	f16, f16, f13	# 1039
	fadd	f15, f15, f16	# 1038
	fmul	f16, f9, f6	# 1040
	fmul	f16, f16, f14	# 1040
	fadd	f15, f15, f16	# 1038
	beq		x11, x0, beq.33748	# 1042
	fmul	f16, f9, f4	# 1046
	fmul	f17, f8, f6	# 1046
	fadd	f16, f16, f17	# 1046
	lw		x14, 36(x8)	# 568
	arrflw	f17, x14, x0	# 573
	fmul	f16, f16, f17	# 1046
	fmul	f17, f7, f6	# 1047
	fmul	f9, f9, f2	# 1047
	fadd	f9, f17, f9	# 1047
	arrflw	f17, x14, x21	# 583
	fmul	f9, f9, f17	# 1047
	fadd	f9, f16, f9	# 1046
	fmul	f7, f7, f4	# 1048
	fmul	f8, f8, f2	# 1048
	fadd	f7, f7, f8	# 1048
	arrflw	f8, x14, x22	# 593
	fmul	f7, f7, f8	# 1048
	fadd	f7, f9, f7	# 1046
	lui		x14, %hi(l.27933)	# 126
	ori		x14, x14, %lo(l.27933)	# 126
	flw		f8, 0(x14)	# 126
	fmul	f7, f7, f8	# 126
	fadd	f7, f15, f7	# 1045
	jal		x0, beq_cont.33747	# 1042
beq.33748:
	fadd	f7, f0, f15	# 1043
beq_cont.33747:
	fmul	f8, f2, f2	# 127
	fmul	f8, f8, f11	# 1024
	fmul	f9, f4, f4	# 127
	fmul	f9, f9, f13	# 1024
	fadd	f8, f8, f9	# 1024
	fmul	f9, f6, f6	# 127
	fmul	f9, f9, f14	# 1024
	fadd	f8, f8, f9	# 1024
	beq		x11, x0, beq.33750	# 1026
	fmul	f9, f4, f6	# 1030
	lw		x11, 36(x8)	# 568
	arrflw	f11, x11, x0	# 573
	fmul	f9, f9, f11	# 1030
	fadd	f8, f8, f9	# 1029
	fmul	f6, f6, f2	# 1031
	arrflw	f9, x11, x21	# 583
	fmul	f6, f6, f9	# 1031
	fadd	f6, f8, f6	# 1029
	fmul	f2, f2, f4	# 1032
	arrflw	f4, x11, x22	# 593
	fmul	f2, f2, f4	# 1032
	fadd	f2, f6, f2	# 1029
	jal		x0, beq_cont.33749	# 1026
beq.33750:
	fadd	f2, f0, f8	# 1027
beq_cont.33749:
	beq		x9, x23, beq.33752	# 1073
	jal		x0, beq_cont.33751	# 1073
beq.33752:
	fsub	f2, f2, f30	# 1073
beq_cont.33751:
	fmul	f4, f7, f7	# 127
	fmul	f2, f10, f2	# 1075
	fsub	f2, f4, f2	# 1075
	fle		f2, f0, fle.33754	# 121
	fsqrt	f2, f2	# 1078
	lw		x9, 24(x8)	# 430
	beq		x9, x0, beq.33756	# 1079
	jal		x0, beq_cont.33755	# 1079
beq.33756:
	fsub	f2, f0, f2	# 123
beq_cont.33755:
	fsub	f2, f2, f7	# 1080
	fdiv	f2, f2, f10	# 1080
	arrfsw	f2, x26, x0	# 1080
	addi	x9, x0, 1	# 1080
	jal		x0, beq_cont.33739	# 121
fle.33754:
	addi	x9, x0, 0	# 1083
	jal		x0, beq_cont.33739	# 120
feq.33746:
	addi	x9, x0, 0	# 1066
	jal		x0, beq_cont.33739	# 1097
beq.33742:
	lw		x9, 16(x8)	# 478
	arrflw	f7, x6, x0	# 349
	arrflw	f8, x9, x0	# 349
	fmul	f7, f7, f8	# 349
	arrflw	f9, x6, x21	# 349
	arrflw	f10, x9, x21	# 349
	fmul	f9, f9, f10	# 349
	fadd	f7, f7, f9	# 349
	arrflw	f9, x6, x22	# 349
	arrflw	f11, x9, x22	# 349
	fmul	f9, f9, f11	# 349
	fadd	f7, f7, f9	# 349
	fle		f7, f0, fle.33758	# 121
	fmul	f2, f8, f2	# 354
	fmul	f4, f10, f4	# 354
	fadd	f2, f2, f4	# 354
	fmul	f4, f11, f6	# 354
	fadd	f2, f2, f4	# 354
	fsub	f2, f0, f2	# 123
	fdiv	f2, f2, f7	# 1014
	arrfsw	f2, x26, x0	# 1014
	addi	x9, x0, 1	# 1015
	jal		x0, beq_cont.33739	# 121
fle.33758:
	addi	x9, x0, 0	# 1016
	jal		x0, beq_cont.33739	# 1096
beq.33740:
	arrflw	f7, x6, x0	# 985
	feq		f7, f0, feq.33760	# 120
	lw		x9, 16(x8)	# 478
	lw		x11, 24(x8)	# 430
	fle		f0, f7, fle.33762	# 122
	addi	x14, x0, 1	# 122
	jal		x0, fle_cont.33761	# 122
fle.33762:
	addi	x14, x0, 0	# 122
fle_cont.33761:
	beq		x11, x0, beq.33764	# 261
	fle		f0, f7, fle.33766	# 122
	addi	x11, x0, 0	# 261
	jal		x0, beq_cont.33763	# 122
fle.33766:
	addi	x11, x0, 1	# 261
	jal		x0, beq_cont.33763	# 261
beq.33764:
	addi	x11, x14, 0	# 261
beq_cont.33763:
	arrflw	f9, x9, x0	# 987
	beq		x11, x0, beq.33768	# 276
	jal		x0, beq_cont.33767	# 276
beq.33768:
	fsub	f9, f0, f9	# 123
beq_cont.33767:
	fsub	f9, f9, f2	# 989
	fdiv	f9, f9, f7	# 989
	arrflw	f10, x6, x21	# 990
	fmul	f10, f9, f10	# 990
	fadd	f10, f10, f4	# 990
	fle		f10, f0, fle.33770	# 124
	jal		x0, fle_cont.33769	# 124
fle.33770:
	fsub	f10, f0, f10	# 124
fle_cont.33769:
	arrflw	f11, x9, x21	# 990
	fle		f11, f10, fle.33772	# 125
	arrflw	f10, x6, x22	# 991
	fmul	f10, f9, f10	# 991
	fadd	f10, f10, f6	# 991
	fle		f10, f0, fle.33774	# 124
	jal		x0, fle_cont.33773	# 124
fle.33774:
	fsub	f10, f0, f10	# 124
fle_cont.33773:
	arrflw	f11, x9, x22	# 991
	fle		f11, f10, fle.33776	# 125
	arrfsw	f9, x26, x0	# 992
	addi	x9, x0, 1	# 992
	jal		x0, feq_cont.33759	# 125
fle.33776:
	addi	x9, x0, 0	# 993
	jal		x0, feq_cont.33759	# 125
fle.33772:
	addi	x9, x0, 0	# 994
	jal		x0, feq_cont.33759	# 120
feq.33760:
	addi	x9, x0, 0	# 985
feq_cont.33759:
	beq		x9, x0, beq.33778	# 1000
	addi	x9, x0, 1	# 1000
	jal		x0, beq_cont.33739	# 1000
beq.33778:
	arrflw	f9, x6, x21	# 985
	feq		f9, f0, feq.33780	# 120
	lw		x9, 16(x8)	# 478
	lw		x11, 24(x8)	# 430
	fle		f0, f9, fle.33782	# 122
	addi	x14, x0, 1	# 122
	jal		x0, fle_cont.33781	# 122
fle.33782:
	addi	x14, x0, 0	# 122
fle_cont.33781:
	beq		x11, x0, beq.33784	# 261
	fle		f0, f9, fle.33786	# 122
	addi	x11, x0, 0	# 261
	jal		x0, beq_cont.33783	# 122
fle.33786:
	addi	x11, x0, 1	# 261
	jal		x0, beq_cont.33783	# 261
beq.33784:
	addi	x11, x14, 0	# 261
beq_cont.33783:
	arrflw	f10, x9, x21	# 987
	beq		x11, x0, beq.33788	# 276
	jal		x0, beq_cont.33787	# 276
beq.33788:
	fsub	f10, f0, f10	# 123
beq_cont.33787:
	fsub	f10, f10, f4	# 989
	fdiv	f10, f10, f9	# 989
	arrflw	f11, x6, x22	# 990
	fmul	f11, f10, f11	# 990
	fadd	f11, f11, f6	# 990
	fle		f11, f0, fle.33790	# 124
	jal		x0, fle_cont.33789	# 124
fle.33790:
	fsub	f11, f0, f11	# 124
fle_cont.33789:
	arrflw	f12, x9, x22	# 990
	fle		f12, f11, fle.33792	# 125
	fmul	f11, f10, f7	# 991
	fadd	f11, f11, f2	# 991
	fle		f11, f0, fle.33794	# 124
	jal		x0, fle_cont.33793	# 124
fle.33794:
	fsub	f11, f0, f11	# 124
fle_cont.33793:
	arrflw	f12, x9, x0	# 991
	fle		f12, f11, fle.33796	# 125
	arrfsw	f10, x26, x0	# 992
	addi	x9, x0, 1	# 992
	jal		x0, feq_cont.33779	# 125
fle.33796:
	addi	x9, x0, 0	# 993
	jal		x0, feq_cont.33779	# 125
fle.33792:
	addi	x9, x0, 0	# 994
	jal		x0, feq_cont.33779	# 120
feq.33780:
	addi	x9, x0, 0	# 985
feq_cont.33779:
	beq		x9, x0, beq.33798	# 1001
	addi	x9, x0, 2	# 1001
	jal		x0, beq_cont.33739	# 1001
beq.33798:
	arrflw	f10, x6, x22	# 985
	feq		f10, f0, feq.33800	# 120
	lw		x9, 16(x8)	# 478
	lw		x11, 24(x8)	# 430
	fle		f0, f10, fle.33802	# 122
	addi	x14, x0, 1	# 122
	jal		x0, fle_cont.33801	# 122
fle.33802:
	addi	x14, x0, 0	# 122
fle_cont.33801:
	beq		x11, x0, beq.33804	# 261
	fle		f0, f10, fle.33806	# 122
	addi	x11, x0, 0	# 261
	jal		x0, beq_cont.33803	# 122
fle.33806:
	addi	x11, x0, 1	# 261
	jal		x0, beq_cont.33803	# 261
beq.33804:
	addi	x11, x14, 0	# 261
beq_cont.33803:
	arrflw	f11, x9, x22	# 987
	beq		x11, x0, beq.33808	# 276
	jal		x0, beq_cont.33807	# 276
beq.33808:
	fsub	f11, f0, f11	# 123
beq_cont.33807:
	fsub	f6, f11, f6	# 989
	fdiv	f6, f6, f10	# 989
	fmul	f7, f6, f7	# 990
	fadd	f2, f7, f2	# 990
	fle		f2, f0, fle.33810	# 124
	jal		x0, fle_cont.33809	# 124
fle.33810:
	fsub	f2, f0, f2	# 124
fle_cont.33809:
	arrflw	f7, x9, x0	# 990
	fle		f7, f2, fle.33812	# 125
	fmul	f2, f6, f9	# 991
	fadd	f2, f2, f4	# 991
	fle		f2, f0, fle.33814	# 124
	jal		x0, fle_cont.33813	# 124
fle.33814:
	fsub	f2, f0, f2	# 124
fle_cont.33813:
	arrflw	f4, x9, x21	# 991
	fle		f4, f2, fle.33816	# 125
	arrfsw	f6, x26, x0	# 992
	addi	x9, x0, 1	# 992
	jal		x0, feq_cont.33799	# 125
fle.33816:
	addi	x9, x0, 0	# 993
	jal		x0, feq_cont.33799	# 125
fle.33812:
	addi	x9, x0, 0	# 994
	jal		x0, feq_cont.33799	# 120
feq.33800:
	addi	x9, x0, 0	# 985
feq_cont.33799:
	beq		x9, x0, beq.33818	# 1002
	addi	x9, x0, 3	# 1002
	jal		x0, beq_cont.33739	# 1002
beq.33818:
	addi	x9, x0, 0	# 1003
beq_cont.33739:
	beq		x9, x0, beq.33819	# 1526
	arrflw	f2, x26, x0	# 1530
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x4, -8(x2)	# 125
	fle		f2, f0, fle_cont.33820	# 125
	addi	x8, x0, 40548	# 42
	arrflw	f4, x8, x0	# 1533
	fle		f4, f2, fle_cont.33820	# 125
	fadd	f2, f2, f18	# 1535
	arrflw	f4, x6, x0	# 1536
	fmul	f4, f4, f2	# 1536
	fadd	f1, f4, f1	# 1536
	arrflw	f4, x6, x21	# 1537
	fmul	f4, f4, f2	# 1537
	fadd	f3, f4, f3	# 1537
	arrflw	f4, x6, x22	# 1538
	fmul	f4, f4, f2	# 1538
	fadd	f4, f4, f5	# 1538
	sw		x9, -12(x2)	# 1539
	sw		x7, -16(x2)	# 1539
	fsw		f4, -20(x2)	# 1539
	fsw		f3, -24(x2)	# 1539
	fsw		f1, -28(x2)	# 1539
	sw		x8, -32(x2)	# 1539
	fsw		f2, -36(x2)	# 1539
	sw		x0, -40(x2)	# 1539
	addi	x4, x0, 0	# 1539
	fadd	f2, f0, f3	# 1539
	fadd	f3, f0, f4	# 1539
	sw		x1, -44(x2)	# 1539
	addi	x2, x2, -48	# 1539
	jal		x1, check_all_inside.2922.18020	# 1539
	addi	x2, x2, 48	# 1539
	lw		x1, -44(x2)	# 1539
	lw		x5, -40(x2)	# 1539
	beq		x4, x5, fle_cont.33820	# 1539
	flw		f1, -36(x2)	# 1541
	lw		x4, -32(x2)	# 1541
	arrfsw	f1, x4, x5	# 1541
	flw		f1, -28(x2)	# 297
	arrfsw	f1, x27, x5	# 297
	flw		f1, -24(x2)	# 298
	arrfsw	f1, x27, x21	# 298
	flw		f1, -20(x2)	# 299
	arrfsw	f1, x27, x22	# 299
	addi	x4, x0, 40564	# 48
	lw		x6, -16(x2)	# 1543
	arrsw	x6, x4, x5	# 1543
	addi	x4, x0, 40544	# 39
	lw		x6, -12(x2)	# 1544
	arrsw	x6, x4, x5	# 1544
fle_cont.33820:
	lw		x4, -8(x2)	# 1550
	addi	x4, x4, 1	# 1550
	lw		x5, -4(x2)	# 1550
	lw		x6, 0(x2)	# 1550
	jal		x0, solve_each_element.2937.18035	# 1550
beq.33819:
	lw		x7, 24(x8)	# 430
	beq		x7, x0, beq.33826	# 1554
	addi	x4, x4, 1	# 1555
	jal		x0, solve_each_element.2937.18035	# 1555
beq.33826:
	jalr	x0, x1, 0	# 1556
beq.33738:
	jalr	x0, x1, 0	# 1523
solve_one_or_network.2941.18039:
	arrlw	x7, x5, x4	# 1563
	beq		x7, x20, beq.33829	# 1564
	arrlw	x7, x25, x7	# 1565
	add		x8, x0, x0	# 6
	sw		x6, 0(x2)	# 1566
	sw		x5, -4(x2)	# 1566
	sw		x4, -8(x2)	# 1566
	addi	x5, x7, 0	# 1566
	addi	x4, x0, 0	# 1566
	sw		x1, -12(x2)	# 1566
	addi	x2, x2, -16	# 1566
	jal		x1, solve_each_element.2937.18035	# 1566
	addi	x2, x2, 16	# 1566
	lw		x1, -12(x2)	# 1566
	lw		x4, -8(x2)	# 1567
	addi	x4, x4, 1	# 1567
	lw		x5, -4(x2)	# 1567
	lw		x6, 0(x2)	# 1567
	jal		x0, solve_one_or_network.2941.18039	# 1567
beq.33829:
	jalr	x0, x1, 0	# 1568
trace_or_matrix.2945.18043:
	arrlw	x7, x5, x4	# 1573
	arrlw	x9, x7, x0	# 1574
	beq		x9, x20, beq.33831	# 1575
	addi	x10, x0, 99	# 1578
	sw		x6, 0(x2)	# 1578
	sw		x5, -4(x2)	# 1578
	sw		x4, -8(x2)	# 1578
	beq		x9, x10, beq.33833	# 1578
	arrlw	x9, x24, x9	# 1089
	addi	x10, x0, 40636	# 75
	arrflw	f1, x10, x0	# 1091
	lw		x11, 20(x9)	# 488
	arrflw	f2, x11, x0	# 493
	fsub	f1, f1, f2	# 1091
	add		x12, x0, x21	# 6
	arrflw	f2, x10, x21	# 1092
	arrflw	f3, x11, x21	# 503
	fsub	f2, f2, f3	# 1092
	arrflw	f3, x10, x22	# 1093
	arrflw	f4, x11, x22	# 513
	fsub	f3, f3, f4	# 1093
	lw		x10, 4(x9)	# 410
	beq		x10, x21, beq.33835	# 1096
	beq		x10, x22, beq.33837	# 1097
	arrflw	f4, x6, x0	# 1063
	arrflw	f5, x6, x21	# 1063
	arrflw	f6, x6, x22	# 1063
	fmul	f7, f4, f4	# 127
	lw		x11, 16(x9)	# 448
	arrflw	f8, x11, x0	# 453
	fmul	f7, f7, f8	# 1024
	fmul	f9, f5, f5	# 127
	arrflw	f10, x11, x21	# 463
	fmul	f9, f9, f10	# 1024
	fadd	f7, f7, f9	# 1024
	fmul	f9, f6, f6	# 127
	arrflw	f11, x11, x22	# 473
	fmul	f9, f9, f11	# 1024
	fadd	f7, f7, f9	# 1024
	lw		x11, 12(x9)	# 439
	beq		x11, x0, beq_cont.33838	# 1026
	fmul	f9, f5, f6	# 1030
	lw		x14, 36(x9)	# 568
	arrflw	f12, x14, x0	# 573
	fmul	f9, f9, f12	# 1030
	fadd	f7, f7, f9	# 1029
	fmul	f9, f6, f4	# 1031
	arrflw	f12, x14, x21	# 583
	fmul	f9, f9, f12	# 1031
	fadd	f7, f7, f9	# 1029
	fmul	f9, f4, f5	# 1032
	arrflw	f12, x14, x22	# 593
	fmul	f9, f9, f12	# 1032
	fadd	f7, f7, f9	# 1029
beq_cont.33838:
	feq		f7, f0, feq.33841	# 120
	fmul	f12, f4, f1	# 1038
	fmul	f12, f12, f8	# 1038
	fmul	f13, f5, f2	# 1039
	fmul	f13, f13, f10	# 1039
	fadd	f12, f12, f13	# 1038
	fmul	f13, f6, f3	# 1040
	fmul	f13, f13, f11	# 1040
	fadd	f12, f12, f13	# 1038
	beq		x11, x0, beq.33843	# 1042
	fmul	f13, f6, f2	# 1046
	fmul	f14, f5, f3	# 1046
	fadd	f13, f13, f14	# 1046
	lw		x14, 36(x9)	# 568
	arrflw	f14, x14, x0	# 573
	fmul	f13, f13, f14	# 1046
	fmul	f14, f4, f3	# 1047
	fmul	f6, f6, f1	# 1047
	fadd	f6, f14, f6	# 1047
	arrflw	f14, x14, x21	# 583
	fmul	f6, f6, f14	# 1047
	fadd	f6, f13, f6	# 1046
	fmul	f4, f4, f2	# 1048
	fmul	f5, f5, f1	# 1048
	fadd	f4, f4, f5	# 1048
	arrflw	f5, x14, x22	# 593
	fmul	f4, f4, f5	# 1048
	fadd	f4, f6, f4	# 1046
	lui		x14, %hi(l.27933)	# 126
	ori		x14, x14, %lo(l.27933)	# 126
	flw		f5, 0(x14)	# 126
	fmul	f4, f4, f5	# 126
	fadd	f4, f12, f4	# 1045
	jal		x0, beq_cont.33842	# 1042
beq.33843:
	fadd	f4, f0, f12	# 1043
beq_cont.33842:
	fmul	f5, f1, f1	# 127
	fmul	f5, f5, f8	# 1024
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f10	# 1024
	fadd	f5, f5, f6	# 1024
	fmul	f6, f3, f3	# 127
	fmul	f6, f6, f11	# 1024
	fadd	f5, f5, f6	# 1024
	beq		x11, x0, beq.33845	# 1026
	fmul	f6, f2, f3	# 1030
	lw		x11, 36(x9)	# 568
	arrflw	f8, x11, x0	# 573
	fmul	f6, f6, f8	# 1030
	fadd	f5, f5, f6	# 1029
	fmul	f3, f3, f1	# 1031
	arrflw	f6, x11, x21	# 583
	fmul	f3, f3, f6	# 1031
	fadd	f3, f5, f3	# 1029
	fmul	f1, f1, f2	# 1032
	arrflw	f2, x11, x22	# 593
	fmul	f1, f1, f2	# 1032
	fadd	f1, f3, f1	# 1029
	jal		x0, beq_cont.33844	# 1026
beq.33845:
	fadd	f1, f0, f5	# 1027
beq_cont.33844:
	beq		x10, x23, beq.33847	# 1073
	jal		x0, beq_cont.33846	# 1073
beq.33847:
	fsub	f1, f1, f30	# 1073
beq_cont.33846:
	fmul	f2, f4, f4	# 127
	fmul	f1, f7, f1	# 1075
	fsub	f1, f2, f1	# 1075
	fle		f1, f0, fle.33849	# 121
	fsqrt	f1, f1	# 1078
	lw		x9, 24(x9)	# 430
	beq		x9, x0, beq.33851	# 1079
	jal		x0, beq_cont.33850	# 1079
beq.33851:
	fsub	f1, f0, f1	# 123
beq_cont.33850:
	fsub	f1, f1, f4	# 1080
	fdiv	f1, f1, f7	# 1080
	arrfsw	f1, x26, x0	# 1080
	addi	x9, x0, 1	# 1080
	jal		x0, beq_cont.33834	# 121
fle.33849:
	addi	x9, x0, 0	# 1083
	jal		x0, beq_cont.33834	# 120
feq.33841:
	addi	x9, x0, 0	# 1066
	jal		x0, beq_cont.33834	# 1097
beq.33837:
	lw		x9, 16(x9)	# 478
	arrflw	f4, x6, x0	# 349
	arrflw	f5, x9, x0	# 349
	fmul	f4, f4, f5	# 349
	arrflw	f6, x6, x21	# 349
	arrflw	f7, x9, x21	# 349
	fmul	f6, f6, f7	# 349
	fadd	f4, f4, f6	# 349
	arrflw	f6, x6, x22	# 349
	arrflw	f8, x9, x22	# 349
	fmul	f6, f6, f8	# 349
	fadd	f4, f4, f6	# 349
	fle		f4, f0, fle.33853	# 121
	fmul	f1, f5, f1	# 354
	fmul	f2, f7, f2	# 354
	fadd	f1, f1, f2	# 354
	fmul	f2, f8, f3	# 354
	fadd	f1, f1, f2	# 354
	fsub	f1, f0, f1	# 123
	fdiv	f1, f1, f4	# 1014
	arrfsw	f1, x26, x0	# 1014
	addi	x9, x0, 1	# 1015
	jal		x0, beq_cont.33834	# 121
fle.33853:
	addi	x9, x0, 0	# 1016
	jal		x0, beq_cont.33834	# 1096
beq.33835:
	arrflw	f4, x6, x0	# 985
	feq		f4, f0, feq.33855	# 120
	lw		x10, 16(x9)	# 478
	lw		x11, 24(x9)	# 430
	fle		f0, f4, fle.33857	# 122
	addi	x14, x0, 1	# 122
	jal		x0, fle_cont.33856	# 122
fle.33857:
	addi	x14, x0, 0	# 122
fle_cont.33856:
	beq		x11, x0, beq.33859	# 261
	fle		f0, f4, fle.33861	# 122
	addi	x11, x0, 0	# 261
	jal		x0, beq_cont.33858	# 122
fle.33861:
	addi	x11, x0, 1	# 261
	jal		x0, beq_cont.33858	# 261
beq.33859:
	addi	x11, x14, 0	# 261
beq_cont.33858:
	arrflw	f6, x10, x0	# 987
	beq		x11, x0, beq.33863	# 276
	jal		x0, beq_cont.33862	# 276
beq.33863:
	fsub	f6, f0, f6	# 123
beq_cont.33862:
	fsub	f6, f6, f1	# 989
	fdiv	f6, f6, f4	# 989
	arrflw	f7, x6, x21	# 990
	fmul	f7, f6, f7	# 990
	fadd	f7, f7, f2	# 990
	fle		f7, f0, fle.33865	# 124
	jal		x0, fle_cont.33864	# 124
fle.33865:
	fsub	f7, f0, f7	# 124
fle_cont.33864:
	arrflw	f8, x10, x21	# 990
	fle		f8, f7, fle.33867	# 125
	arrflw	f7, x6, x22	# 991
	fmul	f7, f6, f7	# 991
	fadd	f7, f7, f3	# 991
	fle		f7, f0, fle.33869	# 124
	jal		x0, fle_cont.33868	# 124
fle.33869:
	fsub	f7, f0, f7	# 124
fle_cont.33868:
	arrflw	f8, x10, x22	# 991
	fle		f8, f7, fle.33871	# 125
	arrfsw	f6, x26, x0	# 992
	addi	x10, x0, 1	# 992
	jal		x0, feq_cont.33854	# 125
fle.33871:
	addi	x10, x0, 0	# 993
	jal		x0, feq_cont.33854	# 125
fle.33867:
	addi	x10, x0, 0	# 994
	jal		x0, feq_cont.33854	# 120
feq.33855:
	addi	x10, x0, 0	# 985
feq_cont.33854:
	beq		x10, x0, beq.33873	# 1000
	addi	x9, x0, 1	# 1000
	jal		x0, beq_cont.33834	# 1000
beq.33873:
	arrflw	f6, x6, x21	# 985
	feq		f6, f0, feq.33875	# 120
	lw		x10, 16(x9)	# 478
	lw		x11, 24(x9)	# 430
	fle		f0, f6, fle.33877	# 122
	addi	x14, x0, 1	# 122
	jal		x0, fle_cont.33876	# 122
fle.33877:
	addi	x14, x0, 0	# 122
fle_cont.33876:
	beq		x11, x0, beq.33879	# 261
	fle		f0, f6, fle.33881	# 122
	addi	x11, x0, 0	# 261
	jal		x0, beq_cont.33878	# 122
fle.33881:
	addi	x11, x0, 1	# 261
	jal		x0, beq_cont.33878	# 261
beq.33879:
	addi	x11, x14, 0	# 261
beq_cont.33878:
	arrflw	f7, x10, x21	# 987
	beq		x11, x0, beq.33883	# 276
	jal		x0, beq_cont.33882	# 276
beq.33883:
	fsub	f7, f0, f7	# 123
beq_cont.33882:
	fsub	f7, f7, f2	# 989
	fdiv	f7, f7, f6	# 989
	arrflw	f8, x6, x22	# 990
	fmul	f8, f7, f8	# 990
	fadd	f8, f8, f3	# 990
	fle		f8, f0, fle.33885	# 124
	jal		x0, fle_cont.33884	# 124
fle.33885:
	fsub	f8, f0, f8	# 124
fle_cont.33884:
	arrflw	f9, x10, x22	# 990
	fle		f9, f8, fle.33887	# 125
	fmul	f8, f7, f4	# 991
	fadd	f8, f8, f1	# 991
	fle		f8, f0, fle.33889	# 124
	jal		x0, fle_cont.33888	# 124
fle.33889:
	fsub	f8, f0, f8	# 124
fle_cont.33888:
	arrflw	f9, x10, x0	# 991
	fle		f9, f8, fle.33891	# 125
	arrfsw	f7, x26, x0	# 992
	addi	x10, x0, 1	# 992
	jal		x0, feq_cont.33874	# 125
fle.33891:
	addi	x10, x0, 0	# 993
	jal		x0, feq_cont.33874	# 125
fle.33887:
	addi	x10, x0, 0	# 994
	jal		x0, feq_cont.33874	# 120
feq.33875:
	addi	x10, x0, 0	# 985
feq_cont.33874:
	beq		x10, x0, beq.33893	# 1001
	addi	x9, x0, 2	# 1001
	jal		x0, beq_cont.33834	# 1001
beq.33893:
	arrflw	f7, x6, x22	# 985
	feq		f7, f0, feq.33895	# 120
	lw		x10, 16(x9)	# 478
	lw		x9, 24(x9)	# 430
	fle		f0, f7, fle.33897	# 122
	addi	x11, x0, 1	# 122
	jal		x0, fle_cont.33896	# 122
fle.33897:
	addi	x11, x0, 0	# 122
fle_cont.33896:
	beq		x9, x0, beq.33899	# 261
	fle		f0, f7, fle.33901	# 122
	addi	x9, x0, 0	# 261
	jal		x0, beq_cont.33898	# 122
fle.33901:
	addi	x9, x0, 1	# 261
	jal		x0, beq_cont.33898	# 261
beq.33899:
	addi	x9, x11, 0	# 261
beq_cont.33898:
	arrflw	f8, x10, x22	# 987
	beq		x9, x0, beq.33903	# 276
	jal		x0, beq_cont.33902	# 276
beq.33903:
	fsub	f8, f0, f8	# 123
beq_cont.33902:
	fsub	f3, f8, f3	# 989
	fdiv	f3, f3, f7	# 989
	fmul	f4, f3, f4	# 990
	fadd	f1, f4, f1	# 990
	fle		f1, f0, fle.33905	# 124
	jal		x0, fle_cont.33904	# 124
fle.33905:
	fsub	f1, f0, f1	# 124
fle_cont.33904:
	arrflw	f4, x10, x0	# 990
	fle		f4, f1, fle.33907	# 125
	fmul	f1, f3, f6	# 991
	fadd	f1, f1, f2	# 991
	fle		f1, f0, fle.33909	# 124
	jal		x0, fle_cont.33908	# 124
fle.33909:
	fsub	f1, f0, f1	# 124
fle_cont.33908:
	arrflw	f2, x10, x21	# 991
	fle		f2, f1, fle.33911	# 125
	arrfsw	f3, x26, x0	# 992
	addi	x9, x0, 1	# 992
	jal		x0, feq_cont.33894	# 125
fle.33911:
	addi	x9, x0, 0	# 993
	jal		x0, feq_cont.33894	# 125
fle.33907:
	addi	x9, x0, 0	# 994
	jal		x0, feq_cont.33894	# 120
feq.33895:
	addi	x9, x0, 0	# 985
feq_cont.33894:
	beq		x9, x0, beq.33913	# 1002
	addi	x9, x0, 3	# 1002
	jal		x0, beq_cont.33834	# 1002
beq.33913:
	addi	x9, x0, 0	# 1003
beq_cont.33834:
	beq		x9, x0, beq_cont.33832	# 1584
	arrflw	f1, x26, x0	# 1585
	addi	x9, x0, 40548	# 42
	arrflw	f2, x9, x0	# 1586
	fle		f2, f1, beq_cont.33832	# 125
	addi	x5, x7, 0	# 1587
	addi	x4, x21, 0	# 1587
	sw		x1, -12(x2)	# 1587
	addi	x2, x2, -16	# 1587
	jal		x1, solve_one_or_network.2941.18039	# 1587
	addi	x2, x2, 16	# 1587
	lw		x1, -12(x2)	# 1587
	jal		x0, beq_cont.33832	# 125
beq.33833:
	add		x8, x0, x21	# 6
	addi	x5, x7, 0	# 1579
	addi	x4, x21, 0	# 1579
	sw		x1, -12(x2)	# 1579
	addi	x2, x2, -16	# 1579
	jal		x1, solve_one_or_network.2941.18039	# 1579
	addi	x2, x2, 16	# 1579
	lw		x1, -12(x2)	# 1579
beq_cont.33832:
	lw		x4, -8(x2)	# 1591
	addi	x4, x4, 1	# 1591
	lw		x5, -4(x2)	# 1591
	lw		x6, 0(x2)	# 1591
	jal		x0, trace_or_matrix.2945.18043	# 1591
beq.33831:
	jalr	x0, x1, 0	# 1576
solve_each_element_fast.2951.18047:
	lw		x7, 0(x6)	# 696
	arrlw	x8, x5, x4	# 1616
	beq		x8, x20, beq.33919	# 1617
	arrlw	x11, x24, x8	# 1230
	lw		x12, 40(x11)	# 605
	add		x13, x0, x0	# 6
	arrflw	f1, x12, x0	# 1232
	arrflw	f2, x12, x21	# 1233
	arrflw	f3, x12, x22	# 1234
	lw		x16, 4(x6)	# 702
	arrlw	x17, x16, x8	# 1236
	lw		x18, 4(x11)	# 410
	beq		x18, x21, beq.33921	# 1238
	beq		x18, x22, beq.33923	# 1240
	arrflw	f4, x17, x0	# 1212
	feq		f4, f0, feq.33925	# 120
	arrflw	f6, x17, x21	# 1216
	fmul	f1, f6, f1	# 1216
	arrflw	f6, x17, x22	# 1216
	fmul	f2, f6, f2	# 1216
	fadd	f1, f1, f2	# 1216
	arrflw	f2, x17, x23	# 1216
	fmul	f2, f2, f3	# 1216
	fadd	f1, f1, f2	# 1216
	arrflw	f2, x12, x23	# 1217
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1218
	fsub	f2, f3, f2	# 1218
	fle		f2, f0, fle.33927	# 121
	lw		x12, 24(x11)	# 430
	beq		x12, x0, beq.33929	# 1220
	fsqrt	f2, f2	# 1221
	fadd	f1, f1, f2	# 1221
	arrflw	f2, x17, x30	# 1221
	fmul	f1, f1, f2	# 1221
	arrfsw	f1, x26, x0	# 1221
	jal		x0, beq_cont.33928	# 1220
beq.33929:
	fsqrt	f2, f2	# 1223
	fsub	f1, f1, f2	# 1223
	arrflw	f2, x17, x30	# 1223
	fmul	f1, f1, f2	# 1223
	arrfsw	f1, x26, x0	# 1223
beq_cont.33928:
	addi	x12, x0, 1	# 1224
	jal		x0, beq_cont.33920	# 121
fle.33927:
	addi	x12, x0, 0	# 1225
	jal		x0, beq_cont.33920	# 120
feq.33925:
	addi	x12, x0, 0	# 1214
	jal		x0, beq_cont.33920	# 1240
beq.33923:
	arrflw	f1, x17, x0	# 1203
	fle		f0, f1, fle.33931	# 122
	arrflw	f2, x12, x23	# 1204
	fmul	f1, f1, f2	# 1204
	arrfsw	f1, x26, x0	# 1204
	addi	x12, x0, 1	# 1205
	jal		x0, beq_cont.33920	# 122
fle.33931:
	addi	x12, x0, 0	# 1206
	jal		x0, beq_cont.33920	# 1238
beq.33921:
	arrflw	f4, x17, x0	# 1121
	fsub	f4, f4, f1	# 1121
	arrflw	f5, x17, x21	# 1121
	fmul	f4, f4, f5	# 1121
	arrflw	f6, x7, x21	# 1123
	fmul	f7, f4, f6	# 1123
	fadd	f7, f7, f2	# 1123
	fle		f7, f0, fle.33933	# 124
	jal		x0, fle_cont.33932	# 124
fle.33933:
	fsub	f7, f0, f7	# 124
fle_cont.33932:
	lw		x12, 16(x11)	# 458
	arrflw	f9, x12, x21	# 463
	fle		f9, f7, fle.33935	# 125
	arrflw	f7, x7, x22	# 1124
	fmul	f7, f4, f7	# 1124
	fadd	f7, f7, f3	# 1124
	fle		f7, f0, fle.33937	# 124
	jal		x0, fle_cont.33936	# 124
fle.33937:
	fsub	f7, f0, f7	# 124
fle_cont.33936:
	arrflw	f10, x12, x22	# 473
	fle		f10, f7, fle.33939	# 125
	feq		f5, f0, feq.33941	# 120
	addi	x18, x0, 1	# 1125
	jal		x0, fle_cont.33934	# 120
feq.33941:
	addi	x18, x0, 0	# 1125
	jal		x0, fle_cont.33934	# 125
fle.33939:
	addi	x18, x0, 0	# 1126
	jal		x0, fle_cont.33934	# 125
fle.33935:
	addi	x18, x0, 0	# 1127
fle_cont.33934:
	beq		x18, x0, beq.33943	# 1122
	arrfsw	f4, x26, x0	# 1129
	addi	x12, x0, 1	# 1129
	jal		x0, beq_cont.33920	# 1122
beq.33943:
	arrflw	f4, x17, x22	# 1130
	fsub	f4, f4, f2	# 1130
	arrflw	f5, x17, x23	# 1130
	fmul	f4, f4, f5	# 1130
	arrflw	f7, x7, x0	# 1132
	fmul	f10, f4, f7	# 1132
	fadd	f10, f10, f1	# 1132
	fle		f10, f0, fle.33945	# 124
	jal		x0, fle_cont.33944	# 124
fle.33945:
	fsub	f10, f0, f10	# 124
fle_cont.33944:
	arrflw	f11, x12, x0	# 453
	fle		f11, f10, fle.33947	# 125
	arrflw	f10, x7, x22	# 1133
	fmul	f10, f4, f10	# 1133
	fadd	f10, f10, f3	# 1133
	fle		f10, f0, fle.33949	# 124
	jal		x0, fle_cont.33948	# 124
fle.33949:
	fsub	f10, f0, f10	# 124
fle_cont.33948:
	arrflw	f12, x12, x22	# 473
	fle		f12, f10, fle.33951	# 125
	feq		f5, f0, feq.33953	# 120
	addi	x12, x0, 1	# 1134
	jal		x0, fle_cont.33946	# 120
feq.33953:
	addi	x12, x0, 0	# 1134
	jal		x0, fle_cont.33946	# 125
fle.33951:
	addi	x12, x0, 0	# 1135
	jal		x0, fle_cont.33946	# 125
fle.33947:
	addi	x12, x0, 0	# 1136
fle_cont.33946:
	beq		x12, x0, beq.33955	# 1131
	arrfsw	f4, x26, x0	# 1138
	addi	x12, x0, 2	# 1138
	jal		x0, beq_cont.33920	# 1131
beq.33955:
	arrflw	f4, x17, x30	# 1139
	fsub	f3, f4, f3	# 1139
	addi	x12, x0, 5	# 98
	arrflw	f4, x17, x12	# 1139
	fmul	f3, f3, f4	# 1139
	fmul	f5, f3, f7	# 1141
	fadd	f1, f5, f1	# 1141
	fle		f1, f0, fle.33957	# 124
	jal		x0, fle_cont.33956	# 124
fle.33957:
	fsub	f1, f0, f1	# 124
fle_cont.33956:
	fle		f11, f1, fle.33959	# 125
	fmul	f1, f3, f6	# 1142
	fadd	f1, f1, f2	# 1142
	fle		f1, f0, fle.33961	# 124
	jal		x0, fle_cont.33960	# 124
fle.33961:
	fsub	f1, f0, f1	# 124
fle_cont.33960:
	fle		f9, f1, fle.33963	# 125
	feq		f4, f0, feq.33965	# 120
	addi	x12, x0, 1	# 1143
	jal		x0, fle_cont.33958	# 120
feq.33965:
	addi	x12, x0, 0	# 1143
	jal		x0, fle_cont.33958	# 125
fle.33963:
	addi	x12, x0, 0	# 1144
	jal		x0, fle_cont.33958	# 125
fle.33959:
	addi	x12, x0, 0	# 1145
fle_cont.33958:
	beq		x12, x0, beq.33967	# 1140
	arrfsw	f3, x26, x0	# 1147
	addi	x12, x0, 3	# 1147
	jal		x0, beq_cont.33920	# 1140
beq.33967:
	addi	x12, x0, 0	# 1149
beq_cont.33920:
	beq		x12, x0, beq.33968	# 1620
	arrflw	f1, x26, x0	# 1624
	sw		x6, 0(x2)	# 125
	sw		x26, -4(x2)	# 125
	fsw		f0, -8(x2)	# 125
	sw		x7, -12(x2)	# 125
	sw		x0, -16(x2)	# 125
	sw		x24, -20(x2)	# 125
	sw		x20, -24(x2)	# 125
	sw		x5, -28(x2)	# 125
	sw		x4, -32(x2)	# 125
	fle		f1, f0, fle_cont.33969	# 125
	addi	x17, x0, 40548	# 42
	arrflw	f3, x17, x0	# 1627
	fle		f3, f1, fle_cont.33969	# 125
	fadd	f1, f1, f18	# 1629
	arrflw	f3, x7, x0	# 1630
	fmul	f3, f3, f1	# 1630
	addi	x18, x0, 40648	# 78
	arrflw	f4, x18, x0	# 1630
	fadd	f3, f3, f4	# 1630
	arrflw	f4, x7, x21	# 1631
	fmul	f4, f4, f1	# 1631
	arrflw	f5, x18, x21	# 1631
	fadd	f4, f4, f5	# 1631
	arrflw	f5, x7, x22	# 1632
	fmul	f5, f5, f1	# 1632
	arrflw	f6, x18, x22	# 1632
	fadd	f5, f5, f6	# 1632
	sw		x8, -36(x2)	# 1633
	fsw		f5, -40(x2)	# 1633
	fsw		f4, -44(x2)	# 1633
	fsw		f3, -48(x2)	# 1633
	fsw		f1, -52(x2)	# 1633
	addi	x4, x0, 0	# 1633
	fadd	f2, f0, f4	# 1633
	fadd	f1, f0, f3	# 1633
	fadd	f3, f0, f5	# 1633
	sw		x1, -56(x2)	# 1633
	addi	x2, x2, -60	# 1633
	jal		x1, check_all_inside.2922.18020	# 1633
	addi	x2, x2, 60	# 1633
	lw		x1, -56(x2)	# 1633
	lw		x5, -16(x2)	# 1633
	beq		x4, x5, fle_cont.33969	# 1633
	flw		f1, -52(x2)	# 1635
	arrfsw	f1, x17, x5	# 1635
	flw		f1, -48(x2)	# 297
	arrfsw	f1, x27, x5	# 297
	flw		f1, -44(x2)	# 298
	arrfsw	f1, x27, x21	# 298
	flw		f1, -40(x2)	# 299
	arrfsw	f1, x27, x22	# 299
	addi	x4, x0, 40564	# 48
	lw		x6, -36(x2)	# 1637
	arrsw	x6, x4, x5	# 1637
	addi	x4, x0, 40544	# 39
	arrsw	x12, x4, x5	# 1638
fle_cont.33969:
	lw		x4, -32(x2)	# 1644
	addi	x4, x4, 1	# 1644
	lw		x5, -28(x2)	# 1616
	arrlw	x6, x5, x4	# 1616
	lw		x7, -24(x2)	# 1617
	beq		x6, x7, beq.33975	# 1617
	lw		x7, -20(x2)	# 1230
	arrlw	x7, x7, x6	# 1230
	lw		x8, 40(x7)	# 605
	lw		x9, -16(x2)	# 1232
	arrflw	f1, x8, x9	# 1232
	arrflw	f2, x8, x21	# 1233
	arrflw	f3, x8, x22	# 1234
	arrlw	x10, x16, x6	# 1236
	lw		x11, 4(x7)	# 410
	beq		x11, x21, beq.33977	# 1238
	beq		x11, x22, beq.33979	# 1240
	arrflw	f4, x10, x9	# 1212
	flw		f5, -8(x2)	# 120
	feq		f4, f5, feq.33981	# 120
	arrflw	f6, x10, x21	# 1216
	fmul	f1, f6, f1	# 1216
	arrflw	f6, x10, x22	# 1216
	fmul	f2, f6, f2	# 1216
	fadd	f1, f1, f2	# 1216
	arrflw	f2, x10, x23	# 1216
	fmul	f2, f2, f3	# 1216
	fadd	f1, f1, f2	# 1216
	arrflw	f2, x8, x23	# 1217
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1218
	fsub	f2, f3, f2	# 1218
	fle		f2, f5, fle.33983	# 121
	lw		x8, 24(x7)	# 430
	beq		x8, x9, beq.33985	# 1220
	fsqrt	f2, f2	# 1221
	fadd	f1, f1, f2	# 1221
	arrflw	f2, x10, x30	# 1221
	fmul	f1, f1, f2	# 1221
	lw		x8, -4(x2)	# 1221
	arrfsw	f1, x8, x9	# 1221
	jal		x0, beq_cont.33984	# 1220
beq.33985:
	fsqrt	f2, f2	# 1223
	fsub	f1, f1, f2	# 1223
	arrflw	f2, x10, x30	# 1223
	fmul	f1, f1, f2	# 1223
	lw		x8, -4(x2)	# 1223
	arrfsw	f1, x8, x9	# 1223
beq_cont.33984:
	addi	x8, x0, 1	# 1224
	jal		x0, beq_cont.33976	# 121
fle.33983:
	addi	x8, x0, 0	# 1225
	jal		x0, beq_cont.33976	# 120
feq.33981:
	addi	x8, x0, 0	# 1214
	jal		x0, beq_cont.33976	# 1240
beq.33979:
	arrflw	f1, x10, x9	# 1203
	flw		f2, -8(x2)	# 122
	fle		f2, f1, fle.33987	# 122
	arrflw	f3, x8, x23	# 1204
	fmul	f1, f1, f3	# 1204
	lw		x8, -4(x2)	# 1204
	arrfsw	f1, x8, x9	# 1204
	addi	x8, x0, 1	# 1205
	jal		x0, beq_cont.33976	# 122
fle.33987:
	addi	x8, x0, 0	# 1206
	jal		x0, beq_cont.33976	# 1238
beq.33977:
	arrflw	f4, x10, x9	# 1121
	fsub	f4, f4, f1	# 1121
	arrflw	f5, x10, x21	# 1121
	fmul	f4, f4, f5	# 1121
	lw		x8, -12(x2)	# 1123
	arrflw	f6, x8, x21	# 1123
	fmul	f7, f4, f6	# 1123
	fadd	f7, f7, f2	# 1123
	flw		f8, -8(x2)	# 124
	fle		f7, f8, fle.33989	# 124
	jal		x0, fle_cont.33988	# 124
fle.33989:
	fsub	f7, f0, f7	# 124
fle_cont.33988:
	lw		x11, 16(x7)	# 458
	arrflw	f9, x11, x21	# 463
	fle		f9, f7, fle.33991	# 125
	arrflw	f7, x8, x22	# 1124
	fmul	f7, f4, f7	# 1124
	fadd	f7, f7, f3	# 1124
	fle		f7, f8, fle.33993	# 124
	jal		x0, fle_cont.33992	# 124
fle.33993:
	fsub	f7, f0, f7	# 124
fle_cont.33992:
	arrflw	f10, x11, x22	# 473
	fle		f10, f7, fle.33995	# 125
	feq		f5, f8, feq.33997	# 120
	addi	x12, x0, 1	# 1125
	jal		x0, fle_cont.33990	# 120
feq.33997:
	addi	x12, x0, 0	# 1125
	jal		x0, fle_cont.33990	# 125
fle.33995:
	addi	x12, x0, 0	# 1126
	jal		x0, fle_cont.33990	# 125
fle.33991:
	addi	x12, x0, 0	# 1127
fle_cont.33990:
	beq		x12, x9, beq.33999	# 1122
	lw		x10, -4(x2)	# 1129
	arrfsw	f4, x10, x9	# 1129
	addi	x8, x0, 1	# 1129
	jal		x0, beq_cont.33976	# 1122
beq.33999:
	arrflw	f4, x10, x22	# 1130
	fsub	f4, f4, f2	# 1130
	arrflw	f5, x10, x23	# 1130
	fmul	f4, f4, f5	# 1130
	arrflw	f7, x8, x9	# 1132
	fmul	f10, f4, f7	# 1132
	fadd	f10, f10, f1	# 1132
	fle		f10, f8, fle.34001	# 124
	jal		x0, fle_cont.34000	# 124
fle.34001:
	fsub	f10, f0, f10	# 124
fle_cont.34000:
	arrflw	f11, x11, x9	# 453
	fle		f11, f10, fle.34003	# 125
	arrflw	f10, x8, x22	# 1133
	fmul	f10, f4, f10	# 1133
	fadd	f10, f10, f3	# 1133
	fle		f10, f8, fle.34005	# 124
	jal		x0, fle_cont.34004	# 124
fle.34005:
	fsub	f10, f0, f10	# 124
fle_cont.34004:
	arrflw	f12, x11, x22	# 473
	fle		f12, f10, fle.34007	# 125
	feq		f5, f8, feq.34009	# 120
	addi	x11, x0, 1	# 1134
	jal		x0, fle_cont.34002	# 120
feq.34009:
	addi	x11, x0, 0	# 1134
	jal		x0, fle_cont.34002	# 125
fle.34007:
	addi	x11, x0, 0	# 1135
	jal		x0, fle_cont.34002	# 125
fle.34003:
	addi	x11, x0, 0	# 1136
fle_cont.34002:
	beq		x11, x9, beq.34011	# 1131
	lw		x10, -4(x2)	# 1138
	arrfsw	f4, x10, x9	# 1138
	addi	x8, x0, 2	# 1138
	jal		x0, beq_cont.33976	# 1131
beq.34011:
	arrflw	f4, x10, x30	# 1139
	fsub	f3, f4, f3	# 1139
	addi	x11, x0, 5	# 98
	arrflw	f4, x10, x11	# 1139
	fmul	f3, f3, f4	# 1139
	fmul	f5, f3, f7	# 1141
	fadd	f1, f5, f1	# 1141
	fle		f1, f8, fle.34013	# 124
	jal		x0, fle_cont.34012	# 124
fle.34013:
	fsub	f1, f0, f1	# 124
fle_cont.34012:
	fle		f11, f1, fle.34015	# 125
	fmul	f1, f3, f6	# 1142
	fadd	f1, f1, f2	# 1142
	fle		f1, f8, fle.34017	# 124
	jal		x0, fle_cont.34016	# 124
fle.34017:
	fsub	f1, f0, f1	# 124
fle_cont.34016:
	fle		f9, f1, fle.34019	# 125
	feq		f4, f8, feq.34021	# 120
	addi	x10, x0, 1	# 1143
	jal		x0, fle_cont.34014	# 120
feq.34021:
	addi	x10, x0, 0	# 1143
	jal		x0, fle_cont.34014	# 125
fle.34019:
	addi	x10, x0, 0	# 1144
	jal		x0, fle_cont.34014	# 125
fle.34015:
	addi	x10, x0, 0	# 1145
fle_cont.34014:
	beq		x10, x9, beq.34023	# 1140
	lw		x10, -4(x2)	# 1147
	arrfsw	f3, x10, x9	# 1147
	addi	x8, x0, 3	# 1147
	jal		x0, beq_cont.33976	# 1140
beq.34023:
	addi	x8, x0, 0	# 1149
beq_cont.33976:
	beq		x8, x9, beq.34024	# 1620
	lw		x7, -4(x2)	# 1624
	arrflw	f1, x7, x9	# 1624
	flw		f2, -8(x2)	# 125
	sw		x4, -56(x2)	# 125
	fle		f1, f2, fle_cont.34025	# 125
	addi	x7, x0, 40548	# 42
	arrflw	f2, x7, x9	# 1627
	fle		f2, f1, fle_cont.34025	# 125
	fadd	f1, f1, f18	# 1629
	lw		x10, -12(x2)	# 1630
	arrflw	f2, x10, x9	# 1630
	fmul	f2, f2, f1	# 1630
	addi	x11, x0, 40648	# 78
	arrflw	f3, x11, x9	# 1630
	fadd	f2, f2, f3	# 1630
	arrflw	f3, x10, x21	# 1631
	fmul	f3, f3, f1	# 1631
	arrflw	f4, x11, x21	# 1631
	fadd	f3, f3, f4	# 1631
	arrflw	f4, x10, x22	# 1632
	fmul	f4, f4, f1	# 1632
	arrflw	f5, x11, x22	# 1632
	fadd	f4, f4, f5	# 1632
	sw		x8, -60(x2)	# 1633
	sw		x6, -64(x2)	# 1633
	fsw		f4, -68(x2)	# 1633
	fsw		f3, -72(x2)	# 1633
	fsw		f2, -76(x2)	# 1633
	sw		x7, -80(x2)	# 1633
	fsw		f1, -84(x2)	# 1633
	addi	x4, x9, 0	# 1633
	fadd	f1, f0, f2	# 1633
	fadd	f2, f0, f3	# 1633
	fadd	f3, f0, f4	# 1633
	sw		x1, -88(x2)	# 1633
	addi	x2, x2, -92	# 1633
	jal		x1, check_all_inside.2922.18020	# 1633
	addi	x2, x2, 92	# 1633
	lw		x1, -88(x2)	# 1633
	lw		x5, -16(x2)	# 1633
	beq		x4, x5, fle_cont.34025	# 1633
	flw		f1, -84(x2)	# 1635
	lw		x4, -80(x2)	# 1635
	arrfsw	f1, x4, x5	# 1635
	flw		f1, -76(x2)	# 297
	arrfsw	f1, x27, x5	# 297
	flw		f1, -72(x2)	# 298
	arrfsw	f1, x27, x21	# 298
	flw		f1, -68(x2)	# 299
	arrfsw	f1, x27, x22	# 299
	addi	x4, x0, 40564	# 48
	lw		x6, -64(x2)	# 1637
	arrsw	x6, x4, x5	# 1637
	addi	x4, x0, 40544	# 39
	lw		x6, -60(x2)	# 1638
	arrsw	x6, x4, x5	# 1638
fle_cont.34025:
	lw		x4, -56(x2)	# 1644
	addi	x4, x4, 1	# 1644
	lw		x5, -28(x2)	# 1644
	lw		x6, 0(x2)	# 1644
	jal		x0, solve_each_element_fast.2951.18047	# 1644
beq.34024:
	lw		x6, 24(x7)	# 430
	beq		x6, x9, beq.34031	# 1648
	addi	x4, x4, 1	# 1649
	lw		x6, 0(x2)	# 1649
	jal		x0, solve_each_element_fast.2951.18047	# 1649
beq.34031:
	jalr	x0, x1, 0	# 1650
beq.33975:
	jalr	x0, x1, 0	# 1617
beq.33968:
	lw		x8, 24(x11)	# 430
	beq		x8, x0, beq.34034	# 1648
	addi	x4, x4, 1	# 1649
	arrlw	x8, x5, x4	# 1616
	beq		x8, x20, beq.34035	# 1617
	arrlw	x9, x24, x8	# 1230
	lw		x10, 40(x9)	# 605
	arrflw	f1, x10, x0	# 1232
	arrflw	f2, x10, x21	# 1233
	arrflw	f3, x10, x22	# 1234
	arrlw	x11, x16, x8	# 1236
	lw		x12, 4(x9)	# 410
	beq		x12, x21, beq.34037	# 1238
	beq		x12, x22, beq.34039	# 1240
	arrflw	f4, x11, x0	# 1212
	feq		f4, f0, feq.34041	# 120
	arrflw	f6, x11, x21	# 1216
	fmul	f1, f6, f1	# 1216
	arrflw	f6, x11, x22	# 1216
	fmul	f2, f6, f2	# 1216
	fadd	f1, f1, f2	# 1216
	arrflw	f2, x11, x23	# 1216
	fmul	f2, f2, f3	# 1216
	fadd	f1, f1, f2	# 1216
	arrflw	f2, x10, x23	# 1217
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1218
	fsub	f2, f3, f2	# 1218
	fle		f2, f0, fle.34043	# 121
	lw		x10, 24(x9)	# 430
	beq		x10, x0, beq.34045	# 1220
	fsqrt	f2, f2	# 1221
	fadd	f1, f1, f2	# 1221
	arrflw	f2, x11, x30	# 1221
	fmul	f1, f1, f2	# 1221
	arrfsw	f1, x26, x0	# 1221
	jal		x0, beq_cont.34044	# 1220
beq.34045:
	fsqrt	f2, f2	# 1223
	fsub	f1, f1, f2	# 1223
	arrflw	f2, x11, x30	# 1223
	fmul	f1, f1, f2	# 1223
	arrfsw	f1, x26, x0	# 1223
beq_cont.34044:
	addi	x10, x0, 1	# 1224
	jal		x0, beq_cont.34036	# 121
fle.34043:
	addi	x10, x0, 0	# 1225
	jal		x0, beq_cont.34036	# 120
feq.34041:
	addi	x10, x0, 0	# 1214
	jal		x0, beq_cont.34036	# 1240
beq.34039:
	arrflw	f1, x11, x0	# 1203
	fle		f0, f1, fle.34047	# 122
	arrflw	f2, x10, x23	# 1204
	fmul	f1, f1, f2	# 1204
	arrfsw	f1, x26, x0	# 1204
	addi	x10, x0, 1	# 1205
	jal		x0, beq_cont.34036	# 122
fle.34047:
	addi	x10, x0, 0	# 1206
	jal		x0, beq_cont.34036	# 1238
beq.34037:
	arrflw	f4, x11, x0	# 1121
	fsub	f4, f4, f1	# 1121
	arrflw	f5, x11, x21	# 1121
	fmul	f4, f4, f5	# 1121
	arrflw	f6, x7, x21	# 1123
	fmul	f7, f4, f6	# 1123
	fadd	f7, f7, f2	# 1123
	fle		f7, f0, fle.34049	# 124
	jal		x0, fle_cont.34048	# 124
fle.34049:
	fsub	f7, f0, f7	# 124
fle_cont.34048:
	lw		x10, 16(x9)	# 458
	arrflw	f9, x10, x21	# 463
	fle		f9, f7, fle.34051	# 125
	arrflw	f7, x7, x22	# 1124
	fmul	f7, f4, f7	# 1124
	fadd	f7, f7, f3	# 1124
	fle		f7, f0, fle.34053	# 124
	jal		x0, fle_cont.34052	# 124
fle.34053:
	fsub	f7, f0, f7	# 124
fle_cont.34052:
	arrflw	f10, x10, x22	# 473
	fle		f10, f7, fle.34055	# 125
	feq		f5, f0, feq.34057	# 120
	addi	x12, x0, 1	# 1125
	jal		x0, fle_cont.34050	# 120
feq.34057:
	addi	x12, x0, 0	# 1125
	jal		x0, fle_cont.34050	# 125
fle.34055:
	addi	x12, x0, 0	# 1126
	jal		x0, fle_cont.34050	# 125
fle.34051:
	addi	x12, x0, 0	# 1127
fle_cont.34050:
	beq		x12, x0, beq.34059	# 1122
	arrfsw	f4, x26, x0	# 1129
	addi	x10, x0, 1	# 1129
	jal		x0, beq_cont.34036	# 1122
beq.34059:
	arrflw	f4, x11, x22	# 1130
	fsub	f4, f4, f2	# 1130
	arrflw	f5, x11, x23	# 1130
	fmul	f4, f4, f5	# 1130
	arrflw	f7, x7, x0	# 1132
	fmul	f10, f4, f7	# 1132
	fadd	f10, f10, f1	# 1132
	fle		f10, f0, fle.34061	# 124
	jal		x0, fle_cont.34060	# 124
fle.34061:
	fsub	f10, f0, f10	# 124
fle_cont.34060:
	arrflw	f11, x10, x0	# 453
	fle		f11, f10, fle.34063	# 125
	arrflw	f10, x7, x22	# 1133
	fmul	f10, f4, f10	# 1133
	fadd	f10, f10, f3	# 1133
	fle		f10, f0, fle.34065	# 124
	jal		x0, fle_cont.34064	# 124
fle.34065:
	fsub	f10, f0, f10	# 124
fle_cont.34064:
	arrflw	f12, x10, x22	# 473
	fle		f12, f10, fle.34067	# 125
	feq		f5, f0, feq.34069	# 120
	addi	x10, x0, 1	# 1134
	jal		x0, fle_cont.34062	# 120
feq.34069:
	addi	x10, x0, 0	# 1134
	jal		x0, fle_cont.34062	# 125
fle.34067:
	addi	x10, x0, 0	# 1135
	jal		x0, fle_cont.34062	# 125
fle.34063:
	addi	x10, x0, 0	# 1136
fle_cont.34062:
	beq		x10, x0, beq.34071	# 1131
	arrfsw	f4, x26, x0	# 1138
	addi	x10, x0, 2	# 1138
	jal		x0, beq_cont.34036	# 1131
beq.34071:
	arrflw	f4, x11, x30	# 1139
	fsub	f3, f4, f3	# 1139
	addi	x10, x0, 5	# 98
	arrflw	f4, x11, x10	# 1139
	fmul	f3, f3, f4	# 1139
	fmul	f5, f3, f7	# 1141
	fadd	f1, f5, f1	# 1141
	fle		f1, f0, fle.34073	# 124
	jal		x0, fle_cont.34072	# 124
fle.34073:
	fsub	f1, f0, f1	# 124
fle_cont.34072:
	fle		f11, f1, fle.34075	# 125
	fmul	f1, f3, f6	# 1142
	fadd	f1, f1, f2	# 1142
	fle		f1, f0, fle.34077	# 124
	jal		x0, fle_cont.34076	# 124
fle.34077:
	fsub	f1, f0, f1	# 124
fle_cont.34076:
	fle		f9, f1, fle.34079	# 125
	feq		f4, f0, feq.34081	# 120
	addi	x10, x0, 1	# 1143
	jal		x0, fle_cont.34074	# 120
feq.34081:
	addi	x10, x0, 0	# 1143
	jal		x0, fle_cont.34074	# 125
fle.34079:
	addi	x10, x0, 0	# 1144
	jal		x0, fle_cont.34074	# 125
fle.34075:
	addi	x10, x0, 0	# 1145
fle_cont.34074:
	beq		x10, x0, beq.34083	# 1140
	arrfsw	f3, x26, x0	# 1147
	addi	x10, x0, 3	# 1147
	jal		x0, beq_cont.34036	# 1140
beq.34083:
	addi	x10, x0, 0	# 1149
beq_cont.34036:
	beq		x10, x0, beq.34084	# 1620
	arrflw	f1, x26, x0	# 1624
	sw		x6, 0(x2)	# 125
	sw		x5, -28(x2)	# 125
	sw		x4, -88(x2)	# 125
	fle		f1, f0, fle_cont.34085	# 125
	addi	x9, x0, 40548	# 42
	arrflw	f2, x9, x0	# 1627
	fle		f2, f1, fle_cont.34085	# 125
	fadd	f1, f1, f18	# 1629
	arrflw	f2, x7, x0	# 1630
	fmul	f2, f2, f1	# 1630
	addi	x11, x0, 40648	# 78
	arrflw	f3, x11, x0	# 1630
	fadd	f2, f2, f3	# 1630
	arrflw	f3, x7, x21	# 1631
	fmul	f3, f3, f1	# 1631
	arrflw	f4, x11, x21	# 1631
	fadd	f3, f3, f4	# 1631
	arrflw	f4, x7, x22	# 1632
	fmul	f4, f4, f1	# 1632
	arrflw	f5, x11, x22	# 1632
	fadd	f4, f4, f5	# 1632
	sw		x10, -92(x2)	# 1633
	sw		x8, -96(x2)	# 1633
	fsw		f4, -100(x2)	# 1633
	fsw		f3, -104(x2)	# 1633
	fsw		f2, -108(x2)	# 1633
	sw		x9, -112(x2)	# 1633
	fsw		f1, -116(x2)	# 1633
	sw		x0, -16(x2)	# 1633
	addi	x4, x0, 0	# 1633
	fadd	f1, f0, f2	# 1633
	fadd	f2, f0, f3	# 1633
	fadd	f3, f0, f4	# 1633
	sw		x1, -120(x2)	# 1633
	addi	x2, x2, -124	# 1633
	jal		x1, check_all_inside.2922.18020	# 1633
	addi	x2, x2, 124	# 1633
	lw		x1, -120(x2)	# 1633
	lw		x5, -16(x2)	# 1633
	beq		x4, x5, fle_cont.34085	# 1633
	flw		f1, -116(x2)	# 1635
	lw		x4, -112(x2)	# 1635
	arrfsw	f1, x4, x5	# 1635
	flw		f1, -108(x2)	# 297
	arrfsw	f1, x27, x5	# 297
	flw		f1, -104(x2)	# 298
	arrfsw	f1, x27, x21	# 298
	flw		f1, -100(x2)	# 299
	arrfsw	f1, x27, x22	# 299
	addi	x4, x0, 40564	# 48
	lw		x6, -96(x2)	# 1637
	arrsw	x6, x4, x5	# 1637
	addi	x4, x0, 40544	# 39
	lw		x6, -92(x2)	# 1638
	arrsw	x6, x4, x5	# 1638
fle_cont.34085:
	lw		x4, -88(x2)	# 1644
	addi	x4, x4, 1	# 1644
	lw		x5, -28(x2)	# 1644
	lw		x6, 0(x2)	# 1644
	jal		x0, solve_each_element_fast.2951.18047	# 1644
beq.34084:
	lw		x7, 24(x9)	# 430
	beq		x7, x0, beq.34091	# 1648
	addi	x4, x4, 1	# 1649
	jal		x0, solve_each_element_fast.2951.18047	# 1649
beq.34091:
	jalr	x0, x1, 0	# 1650
beq.34035:
	jalr	x0, x1, 0	# 1617
beq.34034:
	jalr	x0, x1, 0	# 1650
beq.33919:
	jalr	x0, x1, 0	# 1617
solve_one_or_network_fast.2955.18051:
	arrlw	x7, x5, x4	# 1656
	beq		x7, x20, beq.34096	# 1657
	arrlw	x7, x25, x7	# 1658
	lw		x10, 0(x6)	# 696
	add		x11, x0, x0	# 6
	arrlw	x12, x7, x0	# 1616
	sw		x6, 0(x2)	# 1617
	sw		x0, -4(x2)	# 1617
	sw		x25, -8(x2)	# 1617
	sw		x20, -12(x2)	# 1617
	sw		x5, -16(x2)	# 1617
	sw		x4, -20(x2)	# 1617
	beq		x12, x20, beq_cont.34097	# 1617
	arrlw	x13, x24, x12	# 1230
	lw		x14, 40(x13)	# 605
	arrflw	f1, x14, x0	# 1232
	add		x15, x0, x21	# 6
	arrflw	f2, x14, x21	# 1233
	arrflw	f3, x14, x22	# 1234
	lw		x17, 4(x6)	# 702
	arrlw	x17, x17, x12	# 1236
	lw		x18, 4(x13)	# 410
	beq		x18, x21, beq.34100	# 1238
	beq		x18, x22, beq.34102	# 1240
	arrflw	f4, x17, x0	# 1212
	feq		f4, f0, feq.34104	# 120
	arrflw	f6, x17, x21	# 1216
	fmul	f1, f6, f1	# 1216
	arrflw	f6, x17, x22	# 1216
	fmul	f2, f6, f2	# 1216
	fadd	f1, f1, f2	# 1216
	arrflw	f2, x17, x23	# 1216
	fmul	f2, f2, f3	# 1216
	fadd	f1, f1, f2	# 1216
	arrflw	f2, x14, x23	# 1217
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1218
	fsub	f2, f3, f2	# 1218
	fle		f2, f0, fle.34106	# 121
	lw		x14, 24(x13)	# 430
	beq		x14, x0, beq.34108	# 1220
	fsqrt	f2, f2	# 1221
	fadd	f1, f1, f2	# 1221
	arrflw	f2, x17, x30	# 1221
	fmul	f1, f1, f2	# 1221
	arrfsw	f1, x26, x0	# 1221
	jal		x0, beq_cont.34107	# 1220
beq.34108:
	fsqrt	f2, f2	# 1223
	fsub	f1, f1, f2	# 1223
	arrflw	f2, x17, x30	# 1223
	fmul	f1, f1, f2	# 1223
	arrfsw	f1, x26, x0	# 1223
beq_cont.34107:
	addi	x14, x0, 1	# 1224
	jal		x0, beq_cont.34099	# 121
fle.34106:
	addi	x14, x0, 0	# 1225
	jal		x0, beq_cont.34099	# 120
feq.34104:
	addi	x14, x0, 0	# 1214
	jal		x0, beq_cont.34099	# 1240
beq.34102:
	arrflw	f1, x17, x0	# 1203
	fle		f0, f1, fle.34110	# 122
	arrflw	f2, x14, x23	# 1204
	fmul	f1, f1, f2	# 1204
	arrfsw	f1, x26, x0	# 1204
	addi	x14, x0, 1	# 1205
	jal		x0, beq_cont.34099	# 122
fle.34110:
	addi	x14, x0, 0	# 1206
	jal		x0, beq_cont.34099	# 1238
beq.34100:
	arrflw	f4, x17, x0	# 1121
	fsub	f4, f4, f1	# 1121
	arrflw	f5, x17, x21	# 1121
	fmul	f4, f4, f5	# 1121
	arrflw	f6, x10, x21	# 1123
	fmul	f7, f4, f6	# 1123
	fadd	f7, f7, f2	# 1123
	fle		f7, f0, fle.34112	# 124
	jal		x0, fle_cont.34111	# 124
fle.34112:
	fsub	f7, f0, f7	# 124
fle_cont.34111:
	lw		x14, 16(x13)	# 458
	arrflw	f9, x14, x21	# 463
	fle		f9, f7, fle.34114	# 125
	arrflw	f7, x10, x22	# 1124
	fmul	f7, f4, f7	# 1124
	fadd	f7, f7, f3	# 1124
	fle		f7, f0, fle.34116	# 124
	jal		x0, fle_cont.34115	# 124
fle.34116:
	fsub	f7, f0, f7	# 124
fle_cont.34115:
	arrflw	f10, x14, x22	# 473
	fle		f10, f7, fle.34118	# 125
	feq		f5, f0, feq.34120	# 120
	addi	x18, x0, 1	# 1125
	jal		x0, fle_cont.34113	# 120
feq.34120:
	addi	x18, x0, 0	# 1125
	jal		x0, fle_cont.34113	# 125
fle.34118:
	addi	x18, x0, 0	# 1126
	jal		x0, fle_cont.34113	# 125
fle.34114:
	addi	x18, x0, 0	# 1127
fle_cont.34113:
	beq		x18, x0, beq.34122	# 1122
	arrfsw	f4, x26, x0	# 1129
	addi	x14, x0, 1	# 1129
	jal		x0, beq_cont.34099	# 1122
beq.34122:
	arrflw	f4, x17, x22	# 1130
	fsub	f4, f4, f2	# 1130
	arrflw	f5, x17, x23	# 1130
	fmul	f4, f4, f5	# 1130
	arrflw	f7, x10, x0	# 1132
	fmul	f10, f4, f7	# 1132
	fadd	f10, f10, f1	# 1132
	fle		f10, f0, fle.34124	# 124
	jal		x0, fle_cont.34123	# 124
fle.34124:
	fsub	f10, f0, f10	# 124
fle_cont.34123:
	arrflw	f11, x14, x0	# 453
	fle		f11, f10, fle.34126	# 125
	arrflw	f10, x10, x22	# 1133
	fmul	f10, f4, f10	# 1133
	fadd	f10, f10, f3	# 1133
	fle		f10, f0, fle.34128	# 124
	jal		x0, fle_cont.34127	# 124
fle.34128:
	fsub	f10, f0, f10	# 124
fle_cont.34127:
	arrflw	f12, x14, x22	# 473
	fle		f12, f10, fle.34130	# 125
	feq		f5, f0, feq.34132	# 120
	addi	x14, x0, 1	# 1134
	jal		x0, fle_cont.34125	# 120
feq.34132:
	addi	x14, x0, 0	# 1134
	jal		x0, fle_cont.34125	# 125
fle.34130:
	addi	x14, x0, 0	# 1135
	jal		x0, fle_cont.34125	# 125
fle.34126:
	addi	x14, x0, 0	# 1136
fle_cont.34125:
	beq		x14, x0, beq.34134	# 1131
	arrfsw	f4, x26, x0	# 1138
	addi	x14, x0, 2	# 1138
	jal		x0, beq_cont.34099	# 1131
beq.34134:
	arrflw	f4, x17, x30	# 1139
	fsub	f3, f4, f3	# 1139
	addi	x14, x0, 5	# 98
	arrflw	f4, x17, x14	# 1139
	fmul	f3, f3, f4	# 1139
	fmul	f5, f3, f7	# 1141
	fadd	f1, f5, f1	# 1141
	fle		f1, f0, fle.34136	# 124
	jal		x0, fle_cont.34135	# 124
fle.34136:
	fsub	f1, f0, f1	# 124
fle_cont.34135:
	fle		f11, f1, fle.34138	# 125
	fmul	f1, f3, f6	# 1142
	fadd	f1, f1, f2	# 1142
	fle		f1, f0, fle.34140	# 124
	jal		x0, fle_cont.34139	# 124
fle.34140:
	fsub	f1, f0, f1	# 124
fle_cont.34139:
	fle		f9, f1, fle.34142	# 125
	feq		f4, f0, feq.34144	# 120
	addi	x14, x0, 1	# 1143
	jal		x0, fle_cont.34137	# 120
feq.34144:
	addi	x14, x0, 0	# 1143
	jal		x0, fle_cont.34137	# 125
fle.34142:
	addi	x14, x0, 0	# 1144
	jal		x0, fle_cont.34137	# 125
fle.34138:
	addi	x14, x0, 0	# 1145
fle_cont.34137:
	beq		x14, x0, beq.34146	# 1140
	arrfsw	f3, x26, x0	# 1147
	addi	x14, x0, 3	# 1147
	jal		x0, beq_cont.34099	# 1140
beq.34146:
	addi	x14, x0, 0	# 1149
beq_cont.34099:
	beq		x14, x0, beq.34148	# 1620
	arrflw	f1, x26, x0	# 1624
	sw		x7, -24(x2)	# 125
	fle		f1, f0, fle_cont.34149	# 125
	addi	x13, x0, 40548	# 42
	arrflw	f2, x13, x0	# 1627
	fle		f2, f1, fle_cont.34149	# 125
	fadd	f1, f1, f18	# 1629
	arrflw	f2, x10, x0	# 1630
	fmul	f2, f2, f1	# 1630
	addi	x17, x0, 40648	# 78
	arrflw	f3, x17, x0	# 1630
	fadd	f2, f2, f3	# 1630
	arrflw	f3, x10, x21	# 1631
	fmul	f3, f3, f1	# 1631
	arrflw	f4, x17, x21	# 1631
	fadd	f3, f3, f4	# 1631
	arrflw	f4, x10, x22	# 1632
	fmul	f4, f4, f1	# 1632
	arrflw	f5, x17, x22	# 1632
	fadd	f4, f4, f5	# 1632
	fsw		f4, -28(x2)	# 1633
	fsw		f3, -32(x2)	# 1633
	fsw		f2, -36(x2)	# 1633
	fsw		f1, -40(x2)	# 1633
	addi	x5, x7, 0	# 1633
	addi	x4, x0, 0	# 1633
	fadd	f1, f0, f2	# 1633
	fadd	f2, f0, f3	# 1633
	fadd	f3, f0, f4	# 1633
	sw		x1, -44(x2)	# 1633
	addi	x2, x2, -48	# 1633
	jal		x1, check_all_inside.2922.18020	# 1633
	addi	x2, x2, 48	# 1633
	lw		x1, -44(x2)	# 1633
	lw		x5, -4(x2)	# 1633
	beq		x4, x5, fle_cont.34149	# 1633
	flw		f1, -40(x2)	# 1635
	arrfsw	f1, x13, x5	# 1635
	flw		f1, -36(x2)	# 297
	arrfsw	f1, x27, x5	# 297
	flw		f1, -32(x2)	# 298
	arrfsw	f1, x27, x21	# 298
	flw		f1, -28(x2)	# 299
	arrfsw	f1, x27, x22	# 299
	addi	x4, x0, 40564	# 48
	arrsw	x12, x4, x5	# 1637
	addi	x4, x0, 40544	# 39
	arrsw	x14, x4, x5	# 1638
fle_cont.34149:
	lw		x5, -24(x2)	# 1644
	lw		x6, 0(x2)	# 1644
	addi	x4, x21, 0	# 1644
	sw		x1, -44(x2)	# 1644
	addi	x2, x2, -48	# 1644
	jal		x1, solve_each_element_fast.2951.18047	# 1644
	addi	x2, x2, 48	# 1644
	lw		x1, -44(x2)	# 1644
	jal		x0, beq_cont.34097	# 1620
beq.34148:
	lw		x10, 24(x13)	# 430
	beq		x10, x0, beq_cont.34097	# 1648
	addi	x5, x7, 0	# 1649
	addi	x4, x21, 0	# 1649
	sw		x1, -44(x2)	# 1649
	addi	x2, x2, -48	# 1649
	jal		x1, solve_each_element_fast.2951.18047	# 1649
	addi	x2, x2, 48	# 1649
	lw		x1, -44(x2)	# 1649
beq_cont.34097:
	lw		x4, -20(x2)	# 1660
	addi	x4, x4, 1	# 1660
	lw		x5, -16(x2)	# 1656
	arrlw	x6, x5, x4	# 1656
	lw		x7, -12(x2)	# 1657
	beq		x6, x7, beq.34157	# 1657
	lw		x7, -8(x2)	# 1658
	arrlw	x6, x7, x6	# 1658
	lw		x7, -4(x2)	# 1659
	lw		x8, 0(x2)	# 1659
	sw		x4, -44(x2)	# 1659
	addi	x5, x6, 0	# 1659
	addi	x4, x7, 0	# 1659
	addi	x6, x8, 0	# 1659
	sw		x1, -48(x2)	# 1659
	addi	x2, x2, -52	# 1659
	jal		x1, solve_each_element_fast.2951.18047	# 1659
	addi	x2, x2, 52	# 1659
	lw		x1, -48(x2)	# 1659
	lw		x4, -44(x2)	# 1660
	addi	x4, x4, 1	# 1660
	lw		x5, -16(x2)	# 1660
	lw		x6, 0(x2)	# 1660
	jal		x0, solve_one_or_network_fast.2955.18051	# 1660
beq.34157:
	jalr	x0, x1, 0	# 1661
beq.34096:
	jalr	x0, x1, 0	# 1661
trace_or_matrix_fast.2959.18055:
	arrlw	x7, x5, x4	# 1666
	add		x8, x0, x0	# 6
	arrlw	x9, x7, x0	# 1667
	beq		x9, x20, beq.34160	# 1668
	addi	x11, x0, 99	# 1671
	sw		x6, 0(x2)	# 1671
	sw		x5, -4(x2)	# 1671
	sw		x4, -8(x2)	# 1671
	beq		x9, x11, beq.34162	# 1671
	arrlw	x11, x24, x9	# 1230
	lw		x12, 40(x11)	# 605
	arrflw	f1, x12, x0	# 1232
	arrflw	f2, x12, x21	# 1233
	add		x14, x0, x22	# 65
	arrflw	f3, x12, x22	# 1234
	lw		x15, 4(x6)	# 702
	arrlw	x9, x15, x9	# 1236
	lw		x15, 4(x11)	# 410
	beq		x15, x21, beq.34164	# 1238
	beq		x15, x22, beq.34166	# 1240
	arrflw	f4, x9, x0	# 1212
	feq		f4, f0, feq.34168	# 120
	arrflw	f6, x9, x21	# 1216
	fmul	f1, f6, f1	# 1216
	arrflw	f6, x9, x22	# 1216
	fmul	f2, f6, f2	# 1216
	fadd	f1, f1, f2	# 1216
	arrflw	f2, x9, x23	# 1216
	fmul	f2, f2, f3	# 1216
	fadd	f1, f1, f2	# 1216
	arrflw	f2, x12, x23	# 1217
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1218
	fsub	f2, f3, f2	# 1218
	fle		f2, f0, fle.34170	# 121
	lw		x11, 24(x11)	# 430
	beq		x11, x0, beq.34172	# 1220
	fsqrt	f2, f2	# 1221
	fadd	f1, f1, f2	# 1221
	arrflw	f2, x9, x30	# 1221
	fmul	f1, f1, f2	# 1221
	arrfsw	f1, x26, x0	# 1221
	jal		x0, beq_cont.34171	# 1220
beq.34172:
	fsqrt	f2, f2	# 1223
	fsub	f1, f1, f2	# 1223
	arrflw	f2, x9, x30	# 1223
	fmul	f1, f1, f2	# 1223
	arrfsw	f1, x26, x0	# 1223
beq_cont.34171:
	addi	x9, x0, 1	# 1224
	jal		x0, beq_cont.34163	# 121
fle.34170:
	addi	x9, x0, 0	# 1225
	jal		x0, beq_cont.34163	# 120
feq.34168:
	addi	x9, x0, 0	# 1214
	jal		x0, beq_cont.34163	# 1240
beq.34166:
	arrflw	f1, x9, x0	# 1203
	fle		f0, f1, fle.34174	# 122
	arrflw	f2, x12, x23	# 1204
	fmul	f1, f1, f2	# 1204
	arrfsw	f1, x26, x0	# 1204
	addi	x9, x0, 1	# 1205
	jal		x0, beq_cont.34163	# 122
fle.34174:
	addi	x9, x0, 0	# 1206
	jal		x0, beq_cont.34163	# 1238
beq.34164:
	lw		x12, 0(x6)	# 696
	arrflw	f4, x9, x0	# 1121
	fsub	f4, f4, f1	# 1121
	arrflw	f5, x9, x21	# 1121
	fmul	f4, f4, f5	# 1121
	arrflw	f6, x12, x21	# 1123
	fmul	f7, f4, f6	# 1123
	fadd	f7, f7, f2	# 1123
	fle		f7, f0, fle.34176	# 124
	jal		x0, fle_cont.34175	# 124
fle.34176:
	fsub	f7, f0, f7	# 124
fle_cont.34175:
	lw		x11, 16(x11)	# 458
	arrflw	f9, x11, x21	# 463
	fle		f9, f7, fle.34178	# 125
	arrflw	f7, x12, x22	# 1124
	fmul	f7, f4, f7	# 1124
	fadd	f7, f7, f3	# 1124
	fle		f7, f0, fle.34180	# 124
	jal		x0, fle_cont.34179	# 124
fle.34180:
	fsub	f7, f0, f7	# 124
fle_cont.34179:
	arrflw	f10, x11, x22	# 473
	fle		f10, f7, fle.34182	# 125
	feq		f5, f0, feq.34184	# 120
	addi	x15, x0, 1	# 1125
	jal		x0, fle_cont.34177	# 120
feq.34184:
	addi	x15, x0, 0	# 1125
	jal		x0, fle_cont.34177	# 125
fle.34182:
	addi	x15, x0, 0	# 1126
	jal		x0, fle_cont.34177	# 125
fle.34178:
	addi	x15, x0, 0	# 1127
fle_cont.34177:
	beq		x15, x0, beq.34186	# 1122
	arrfsw	f4, x26, x0	# 1129
	addi	x9, x0, 1	# 1129
	jal		x0, beq_cont.34163	# 1122
beq.34186:
	arrflw	f4, x9, x22	# 1130
	fsub	f4, f4, f2	# 1130
	arrflw	f5, x9, x23	# 1130
	fmul	f4, f4, f5	# 1130
	arrflw	f7, x12, x0	# 1132
	fmul	f10, f4, f7	# 1132
	fadd	f10, f10, f1	# 1132
	fle		f10, f0, fle.34188	# 124
	jal		x0, fle_cont.34187	# 124
fle.34188:
	fsub	f10, f0, f10	# 124
fle_cont.34187:
	arrflw	f11, x11, x0	# 453
	fle		f11, f10, fle.34190	# 125
	arrflw	f10, x12, x22	# 1133
	fmul	f10, f4, f10	# 1133
	fadd	f10, f10, f3	# 1133
	fle		f10, f0, fle.34192	# 124
	jal		x0, fle_cont.34191	# 124
fle.34192:
	fsub	f10, f0, f10	# 124
fle_cont.34191:
	arrflw	f12, x11, x22	# 473
	fle		f12, f10, fle.34194	# 125
	feq		f5, f0, feq.34196	# 120
	addi	x11, x0, 1	# 1134
	jal		x0, fle_cont.34189	# 120
feq.34196:
	addi	x11, x0, 0	# 1134
	jal		x0, fle_cont.34189	# 125
fle.34194:
	addi	x11, x0, 0	# 1135
	jal		x0, fle_cont.34189	# 125
fle.34190:
	addi	x11, x0, 0	# 1136
fle_cont.34189:
	beq		x11, x0, beq.34198	# 1131
	arrfsw	f4, x26, x0	# 1138
	addi	x9, x0, 2	# 1138
	jal		x0, beq_cont.34163	# 1131
beq.34198:
	arrflw	f4, x9, x30	# 1139
	fsub	f3, f4, f3	# 1139
	addi	x11, x0, 5	# 98
	arrflw	f4, x9, x11	# 1139
	fmul	f3, f3, f4	# 1139
	fmul	f5, f3, f7	# 1141
	fadd	f1, f5, f1	# 1141
	fle		f1, f0, fle.34200	# 124
	jal		x0, fle_cont.34199	# 124
fle.34200:
	fsub	f1, f0, f1	# 124
fle_cont.34199:
	fle		f11, f1, fle.34202	# 125
	fmul	f1, f3, f6	# 1142
	fadd	f1, f1, f2	# 1142
	fle		f1, f0, fle.34204	# 124
	jal		x0, fle_cont.34203	# 124
fle.34204:
	fsub	f1, f0, f1	# 124
fle_cont.34203:
	fle		f9, f1, fle.34206	# 125
	feq		f4, f0, feq.34208	# 120
	addi	x9, x0, 1	# 1143
	jal		x0, fle_cont.34201	# 120
feq.34208:
	addi	x9, x0, 0	# 1143
	jal		x0, fle_cont.34201	# 125
fle.34206:
	addi	x9, x0, 0	# 1144
	jal		x0, fle_cont.34201	# 125
fle.34202:
	addi	x9, x0, 0	# 1145
fle_cont.34201:
	beq		x9, x0, beq.34210	# 1140
	arrfsw	f3, x26, x0	# 1147
	addi	x9, x0, 3	# 1147
	jal		x0, beq_cont.34163	# 1140
beq.34210:
	addi	x9, x0, 0	# 1149
beq_cont.34163:
	beq		x9, x0, beq_cont.34161	# 1677
	arrflw	f1, x26, x0	# 1678
	addi	x9, x0, 40548	# 42
	arrflw	f2, x9, x0	# 1679
	fle		f2, f1, beq_cont.34161	# 125
	arrlw	x9, x7, x21	# 1656
	beq		x9, x20, beq_cont.34161	# 1657
	arrlw	x9, x25, x9	# 1658
	sw		x7, -12(x2)	# 1659
	sw		x22, -16(x2)	# 1659
	addi	x5, x9, 0	# 1659
	addi	x4, x0, 0	# 1659
	sw		x1, -20(x2)	# 1659
	addi	x2, x2, -24	# 1659
	jal		x1, solve_each_element_fast.2951.18047	# 1659
	addi	x2, x2, 24	# 1659
	lw		x1, -20(x2)	# 1659
	lw		x4, -16(x2)	# 1660
	lw		x5, -12(x2)	# 1660
	lw		x6, 0(x2)	# 1660
	sw		x1, -20(x2)	# 1660
	addi	x2, x2, -24	# 1660
	jal		x1, solve_one_or_network_fast.2955.18051	# 1660
	addi	x2, x2, 24	# 1660
	lw		x1, -20(x2)	# 1660
	jal		x0, beq_cont.34161	# 1657
beq.34162:
	arrlw	x9, x7, x21	# 1656
	beq		x9, x20, beq_cont.34161	# 1657
	arrlw	x9, x25, x9	# 1658
	sw		x7, -12(x2)	# 1659
	addi	x5, x9, 0	# 1659
	addi	x4, x0, 0	# 1659
	sw		x1, -20(x2)	# 1659
	addi	x2, x2, -24	# 1659
	jal		x1, solve_each_element_fast.2951.18047	# 1659
	addi	x2, x2, 24	# 1659
	lw		x1, -20(x2)	# 1659
	add		x4, x0, x22	# 65
	lw		x5, -12(x2)	# 1660
	lw		x6, 0(x2)	# 1660
	sw		x1, -20(x2)	# 1660
	addi	x2, x2, -24	# 1660
	jal		x1, solve_one_or_network_fast.2955.18051	# 1660
	addi	x2, x2, 24	# 1660
	lw		x1, -20(x2)	# 1660
beq_cont.34161:
	lw		x4, -8(x2)	# 1684
	addi	x4, x4, 1	# 1684
	lw		x5, -4(x2)	# 1684
	lw		x6, 0(x2)	# 1684
	jal		x0, trace_or_matrix_fast.2959.18055	# 1684
beq.34160:
	jalr	x0, x1, 0	# 1669
trace_reflections.2981.18059:
	add		x6, x0, x0	# 6
	ble		x0, x4, ble.34220	# 1861
	jalr	x0, x1, 0	# 1881
ble.34220:
	addi	x7, x0, 41016	# 114
	arrlw	x7, x7, x4	# 1862
	lw		x8, 4(x7)	# 718
	addi	x9, x0, 40548	# 42
	arrfsw	f21, x9, x0	# 1691
	addi	x10, x0, 40536	# 31
	arrlw	x10, x10, x0	# 1692
	sw		x4, 0(x2)	# 1692
	fsw		f2, -4(x2)	# 1692
	sw		x5, -8(x2)	# 1692
	fsw		f1, -12(x2)	# 1692
	sw		x8, -16(x2)	# 1692
	sw		x10, -20(x2)	# 1692
	sw		x7, -24(x2)	# 1692
	sw		x0, -28(x2)	# 1692
	sw		x9, -32(x2)	# 1692
	addi	x5, x10, 0	# 1692
	addi	x4, x0, 0	# 1692
	addi	x6, x8, 0	# 1692
	sw		x1, -36(x2)	# 1692
	addi	x2, x2, -40	# 1692
	jal		x1, trace_or_matrix_fast.2959.18055	# 1692
	addi	x2, x2, 40	# 1692
	lw		x1, -36(x2)	# 1692
	lw		x4, -32(x2)	# 1693
	lw		x5, -28(x2)	# 1693
	arrflw	f1, x4, x5	# 1693
	fle		f1, f20, fle.34223	# 125
	fle		f22, f1, fle.34225	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.34222	# 125
fle.34225:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.34222	# 125
fle.34223:
	addi	x4, x0, 0	# 1697
fle_cont.34222:
	beq		x4, x5, beq_cont.34226	# 1866
	addi	x4, x0, 40564	# 48
	arrlw	x4, x4, x5	# 1867
	mul		x4, x4, x30	# 1867
	addi	x6, x0, 40544	# 39
	arrlw	x6, x6, x5	# 1867
	add		x4, x4, x6	# 1867
	lw		x6, -24(x2)	# 712
	lw		x7, 0(x6)	# 712
	beq		x4, x7, beq.34229	# 1868
	jal		x0, beq_cont.34226	# 1868
beq.34229:
	lw		x4, -20(x2)	# 1870
	addi	x31, x5, 0	# 1870
	addi	x5, x4, 0	# 1870
	addi	x4, x31, 0	# 1870
	sw		x1, -36(x2)	# 1870
	addi	x2, x2, -40	# 1870
	jal		x1, shadow_check_one_or_matrix.2934.18032	# 1870
	addi	x2, x2, 40	# 1870
	lw		x1, -36(x2)	# 1870
	lw		x5, -28(x2)	# 1870
	beq		x4, x5, beq.34231	# 1870
	jal		x0, beq_cont.34226	# 1870
beq.34231:
	lw		x4, -16(x2)	# 696
	lw		x4, 0(x4)	# 696
	addi	x6, x0, 40568	# 51
	arrflw	f1, x6, x5	# 349
	arrflw	f2, x4, x5	# 349
	fmul	f1, f1, f2	# 349
	arrflw	f3, x6, x21	# 349
	arrflw	f4, x4, x21	# 349
	fmul	f3, f3, f4	# 349
	fadd	f1, f1, f3	# 349
	arrflw	f3, x6, x22	# 349
	arrflw	f5, x4, x22	# 349
	fmul	f3, f3, f5	# 349
	fadd	f1, f1, f3	# 349
	lw		x4, -24(x2)	# 1874
	flw		f3, 8(x4)	# 1874
	flw		f6, -12(x2)	# 1874
	fmul	f7, f3, f6	# 1874
	fmul	f1, f7, f1	# 1874
	lw		x4, -8(x2)	# 349
	arrflw	f7, x4, x5	# 349
	fmul	f2, f7, f2	# 349
	arrflw	f7, x4, x21	# 349
	fmul	f4, f7, f4	# 349
	fadd	f2, f2, f4	# 349
	arrflw	f4, x4, x22	# 349
	fmul	f4, f4, f5	# 349
	fadd	f2, f2, f4	# 349
	fmul	f2, f3, f2	# 1875
	fle		f1, f0, fle_cont.34232	# 121
	addi	x6, x0, 40604	# 61
	arrflw	f4, x6, x5	# 359
	addi	x9, x0, 40580	# 54
	arrflw	f5, x9, x5	# 359
	fmul	f5, f1, f5	# 359
	fadd	f4, f4, f5	# 359
	arrfsw	f4, x6, x5	# 359
	arrflw	f4, x6, x21	# 360
	arrflw	f5, x9, x21	# 360
	fmul	f5, f1, f5	# 360
	fadd	f4, f4, f5	# 360
	arrfsw	f4, x6, x21	# 360
	arrflw	f4, x6, x22	# 361
	arrflw	f5, x9, x22	# 361
	fmul	f1, f1, f5	# 361
	fadd	f1, f4, f1	# 361
	arrfsw	f1, x6, x22	# 361
fle_cont.34232:
	fle		f2, f0, beq_cont.34226	# 121
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -4(x2)	# 1851
	fmul	f1, f1, f2	# 1851
	addi	x6, x0, 40604	# 61
	arrflw	f3, x6, x5	# 1852
	fadd	f3, f3, f1	# 1852
	arrfsw	f3, x6, x5	# 1852
	arrflw	f3, x6, x21	# 1853
	fadd	f3, f3, f1	# 1853
	arrfsw	f3, x6, x21	# 1853
	arrflw	f3, x6, x22	# 1854
	fadd	f1, f3, f1	# 1854
	arrfsw	f1, x6, x22	# 1854
beq_cont.34226:
	lw		x4, 0(x2)	# 1880
	addi	x4, x4, -1	# 1880
	lw		x5, -8(x2)	# 1880
	flw		f1, -12(x2)	# 1880
	flw		f2, -4(x2)	# 1880
	jal		x0, trace_reflections.2981.18059	# 1880
trace_ray.2986.18064:
	ble		x4, x30, ble.34236	# 1889
	jalr	x0, x1, 0	# 1970
ble.34236:
	lw		x8, 8(x6)	# 634
	addi	x9, x0, 40548	# 42
	add		x10, x0, x0	# 6
	arrfsw	f21, x9, x0	# 1600
	addi	x11, x0, 40536	# 31
	arrlw	x11, x11, x0	# 1601
	fsw		f2, 0(x2)	# 1601
	sw		x11, -4(x2)	# 1601
	sw		x6, -8(x2)	# 1601
	sw		x30, -12(x2)	# 1601
	fsw		f1, -16(x2)	# 1601
	sw		x5, -20(x2)	# 1601
	sw		x4, -24(x2)	# 1601
	sw		x8, -28(x2)	# 1601
	sw		x0, -32(x2)	# 1601
	sw		x9, -36(x2)	# 1601
	addi	x6, x5, 0	# 1601
	addi	x4, x0, 0	# 1601
	addi	x5, x11, 0	# 1601
	sw		x1, -40(x2)	# 1601
	addi	x2, x2, -44	# 1601
	jal		x1, trace_or_matrix.2945.18043	# 1601
	addi	x2, x2, 44	# 1601
	lw		x1, -40(x2)	# 1601
	lw		x4, -36(x2)	# 1602
	lw		x5, -32(x2)	# 1602
	arrflw	f1, x4, x5	# 1602
	fle		f1, f20, fle.34239	# 125
	fle		f22, f1, fle.34241	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.34238	# 125
fle.34241:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.34238	# 125
fle.34239:
	addi	x4, x0, 0	# 1606
fle_cont.34238:
	beq		x4, x5, beq.34242	# 1891
	addi	x4, x0, 40564	# 48
	arrlw	x4, x4, x5	# 1893
	arrlw	x6, x24, x4	# 1894
	lw		x7, 8(x6)	# 420
	lw		x8, 28(x6)	# 518
	arrflw	f2, x8, x5	# 523
	flw		f3, -16(x2)	# 1896
	fmul	f4, f2, f3	# 1896
	lw		x9, 4(x6)	# 410
	beq		x9, x21, beq.34244	# 1750
	beq		x9, x22, beq.34246	# 1752
	arrflw	f5, x27, x5	# 1727
	lw		x12, 20(x6)	# 488
	arrflw	f6, x12, x5	# 493
	fsub	f5, f5, f6	# 1727
	arrflw	f6, x27, x21	# 1728
	arrflw	f7, x12, x21	# 503
	fsub	f6, f6, f7	# 1728
	arrflw	f7, x27, x22	# 1729
	arrflw	f8, x12, x22	# 513
	fsub	f7, f7, f8	# 1729
	lw		x9, 16(x6)	# 448
	arrflw	f8, x9, x5	# 453
	fmul	f8, f5, f8	# 1731
	arrflw	f9, x9, x21	# 463
	fmul	f9, f6, f9	# 1732
	arrflw	f10, x9, x22	# 473
	fmul	f10, f7, f10	# 1733
	lw		x9, 12(x6)	# 439
	beq		x9, x5, beq.34248	# 1735
	lw		x9, 36(x6)	# 588
	arrflw	f11, x9, x22	# 593
	fmul	f12, f6, f11	# 1740
	arrflw	f13, x9, x21	# 583
	fmul	f14, f7, f13	# 1740
	fadd	f12, f12, f14	# 1740
	lui		x12, %hi(l.27933)	# 126
	ori		x12, x12, %lo(l.27933)	# 126
	flw		f14, 0(x12)	# 126
	fmul	f12, f12, f14	# 126
	fadd	f8, f8, f12	# 1740
	addi	x12, x0, 40568	# 51
	arrfsw	f8, x12, x5	# 1740
	fmul	f8, f5, f11	# 1741
	arrflw	f11, x9, x5	# 573
	fmul	f7, f7, f11	# 1741
	fadd	f7, f8, f7	# 1741
	fmul	f7, f7, f14	# 126
	fadd	f7, f9, f7	# 1741
	arrfsw	f7, x12, x21	# 1741
	fmul	f5, f5, f13	# 1742
	fmul	f6, f6, f11	# 1742
	fadd	f5, f5, f6	# 1742
	fmul	f5, f5, f14	# 126
	fadd	f5, f10, f5	# 1742
	arrfsw	f5, x12, x22	# 1742
	jal		x0, beq_cont.34247	# 1735
beq.34248:
	addi	x9, x0, 40568	# 51
	arrfsw	f8, x9, x5	# 1736
	arrfsw	f9, x9, x21	# 1737
	arrfsw	f10, x9, x22	# 1738
beq_cont.34247:
	lw		x9, 24(x6)	# 430
	addi	x12, x0, 40568	# 51
	arrflw	f5, x12, x5	# 340
	fmul	f6, f5, f5	# 127
	arrflw	f7, x12, x21	# 340
	fmul	f8, f7, f7	# 127
	fadd	f6, f6, f8	# 340
	arrflw	f8, x12, x22	# 340
	fmul	f9, f8, f8	# 127
	fadd	f6, f6, f9	# 340
	fsqrt	f6, f6	# 340
	feq		f6, f0, feq.34250	# 120
	beq		x9, x5, beq.34252	# 341
	fdiv	f6, f25, f6	# 341
	jal		x0, feq_cont.34249	# 341
beq.34252:
	fdiv	f6, f30, f6	# 341
	jal		x0, feq_cont.34249	# 120
feq.34250:
	fadd	f6, f0, f30	# 341
feq_cont.34249:
	fmul	f5, f5, f6	# 342
	arrfsw	f5, x12, x5	# 342
	fmul	f5, f7, f6	# 343
	arrfsw	f5, x12, x21	# 343
	fmul	f5, f8, f6	# 344
	arrfsw	f5, x12, x22	# 344
	jal		x0, beq_cont.34243	# 1752
beq.34246:
	lw		x9, 16(x6)	# 448
	arrflw	f5, x9, x5	# 453
	fsub	f5, f0, f5	# 123
	addi	x12, x0, 40568	# 51
	arrfsw	f5, x12, x5	# 1720
	arrflw	f5, x9, x21	# 463
	fsub	f5, f0, f5	# 123
	arrfsw	f5, x12, x21	# 1721
	arrflw	f5, x9, x22	# 473
	fsub	f5, f0, f5	# 123
	arrfsw	f5, x12, x22	# 1722
	jal		x0, beq_cont.34243	# 1750
beq.34244:
	addi	x9, x0, 40544	# 39
	arrlw	x9, x9, x5	# 1711
	addi	x11, x0, 40568	# 51
	arrfsw	f0, x11, x5	# 304
	arrfsw	f0, x11, x21	# 305
	arrfsw	f0, x11, x22	# 306
	addi	x9, x9, -1	# 1714
	lw		x12, -20(x2)	# 1714
	arrflw	f6, x12, x9	# 1714
	feq		f6, f0, feq.34254	# 120
	fle		f6, f0, fle.34256	# 121
	fadd	f5, f0, f30	# 270
	jal		x0, feq_cont.34253	# 121
fle.34256:
	fadd	f5, f0, f25	# 271
	jal		x0, feq_cont.34253	# 120
feq.34254:
	fadd	f5, f0, f0	# 269
feq_cont.34253:
	fsub	f5, f0, f5	# 123
	arrfsw	f5, x11, x9	# 1714
beq_cont.34243:
	add		x9, x0, x27	# 45
	arrflw	f5, x27, x5	# 316
	addi	x11, x0, 40636	# 75
	arrfsw	f5, x11, x5	# 316
	arrflw	f6, x27, x21	# 317
	arrfsw	f6, x11, x21	# 317
	arrflw	f7, x27, x22	# 318
	arrfsw	f7, x11, x22	# 318
	lw		x11, 0(x6)	# 400
	lw		x13, 32(x6)	# 538
	arrflw	f8, x13, x5	# 543
	addi	x14, x0, 40580	# 54
	arrfsw	f8, x14, x5	# 1767
	arrflw	f8, x13, x21	# 553
	arrfsw	f8, x14, x21	# 1768
	arrflw	f8, x13, x22	# 563
	arrfsw	f8, x14, x22	# 1769
	fsw		f1, -40(x2)	# 1770
	sw		x7, -44(x2)	# 1770
	fsw		f4, -48(x2)	# 1770
	fsw		f2, -52(x2)	# 1770
	fsw		f5, -56(x2)	# 1770
	sw		x4, -60(x2)	# 1770
	beq		x11, x21, beq.34258	# 1770
	beq		x11, x22, beq.34260	# 1788
	beq		x11, x23, beq.34262	# 1795
	lw		x13, -12(x2)	# 1806
	beq		x11, x13, beq.34264	# 1806
	jal		x0, beq_cont.34257	# 1806
beq.34264:
	lw		x11, 20(x6)	# 488
	arrflw	f8, x11, x5	# 493
	fsub	f8, f5, f8	# 1808
	lw		x6, 16(x6)	# 448
	arrflw	f9, x6, x5	# 453
	fsqrt	f9, f9	# 1808
	fmul	f8, f8, f9	# 1808
	arrflw	f9, x11, x22	# 513
	fsub	f9, f7, f9	# 1809
	arrflw	f10, x6, x22	# 473
	fsqrt	f10, f10	# 1809
	fmul	f9, f9, f10	# 1809
	fmul	f10, f8, f8	# 127
	fmul	f11, f9, f9	# 127
	fadd	f10, f10, f11	# 1810
	fle		f8, f0, fle.34266	# 124
	fadd	f12, f0, f8	# 124
	jal		x0, fle_cont.34265	# 124
fle.34266:
	fsub	f12, f0, f8	# 124
fle_cont.34265:
	lui		x15, %hi(l.29612)	# 1812
	ori		x15, x15, %lo(l.29612)	# 1812
	flw		f13, 0(x15)	# 1812
	fle		f13, f12, fle.34268	# 125
	lui		x15, %hi(l.29614)	# 1813
	ori		x15, x15, %lo(l.29614)	# 1813
	flw		f1, 0(x15)	# 1813
	jal		x0, fle_cont.34267	# 125
fle.34268:
	fdiv	f8, f9, f8	# 1815
	fle		f8, f0, fle.34270	# 124
	jal		x0, fle_cont.34269	# 124
fle.34270:
	fsub	f8, f0, f8	# 124
fle_cont.34269:
	fadd	f1, f0, f8	# 1817
	sw		x1, -64(x2)	# 1817
	addi	x2, x2, -68	# 1817
	jal		x1, atan.2640.17996	# 1817
	addi	x2, x2, 68	# 1817
	lw		x1, -64(x2)	# 1817
	lui		x4, %hi(l.29617)	# 1817
	ori		x4, x4, %lo(l.29617)	# 1817
	flw		f2, 0(x4)	# 1817
	fmul	f1, f1, f2	# 1817
	lui		x4, %hi(l.29619)	# 1817
	ori		x4, x4, %lo(l.29619)	# 1817
	flw		f2, 0(x4)	# 1817
	fdiv	f1, f1, f2	# 1817
fle_cont.34267:
	sw		x6, -64(x2)	# 1819
	fsw		f1, -68(x2)	# 1819
	sw		x1, -72(x2)	# 1819
	addi	x2, x2, -76	# 1819
	jal		x1, min_caml_floor	# 1819
	addi	x2, x2, 76	# 1819
	lw		x1, -72(x2)	# 1819
	flw		f2, -68(x2)	# 1819
	fsub	f1, f2, f1	# 1819
	arrflw	f2, x11, x21	# 503
	fsub	f2, f6, f2	# 1821
	lw		x4, -64(x2)	# 463
	arrflw	f3, x4, x21	# 463
	fsqrt	f3, f3	# 1821
	fmul	f2, f2, f3	# 1821
	fle		f10, f0, fle.34272	# 124
	fadd	f3, f0, f10	# 124
	jal		x0, fle_cont.34271	# 124
fle.34272:
	fsub	f3, f0, f10	# 124
fle_cont.34271:
	fsw		f1, -72(x2)	# 125
	fle		f13, f3, fle.34274	# 125
	lui		x4, %hi(l.29614)	# 1824
	ori		x4, x4, %lo(l.29614)	# 1824
	flw		f1, 0(x4)	# 1824
	jal		x0, fle_cont.34273	# 125
fle.34274:
	fdiv	f2, f2, f10	# 1826
	fle		f2, f0, fle.34276	# 124
	jal		x0, fle_cont.34275	# 124
fle.34276:
	fsub	f2, f0, f2	# 124
fle_cont.34275:
	fadd	f1, f0, f2	# 1827
	sw		x1, -76(x2)	# 1827
	addi	x2, x2, -80	# 1827
	jal		x1, atan.2640.17996	# 1827
	addi	x2, x2, 80	# 1827
	lw		x1, -76(x2)	# 1827
	lui		x4, %hi(l.29617)	# 1827
	ori		x4, x4, %lo(l.29617)	# 1827
	flw		f2, 0(x4)	# 1827
	fmul	f1, f1, f2	# 1827
	lui		x4, %hi(l.29619)	# 1827
	ori		x4, x4, %lo(l.29619)	# 1827
	flw		f2, 0(x4)	# 1827
	fdiv	f1, f1, f2	# 1827
fle_cont.34273:
	fsw		f1, -76(x2)	# 1829
	sw		x1, -80(x2)	# 1829
	addi	x2, x2, -84	# 1829
	jal		x1, min_caml_floor	# 1829
	addi	x2, x2, 84	# 1829
	lw		x1, -80(x2)	# 1829
	flw		f2, -76(x2)	# 1829
	fsub	f1, f2, f1	# 1829
	lui		x4, %hi(l.29630)	# 1830
	ori		x4, x4, %lo(l.29630)	# 1830
	flw		f2, 0(x4)	# 1830
	lui		x4, %hi(l.27933)	# 1830
	ori		x4, x4, %lo(l.27933)	# 1830
	flw		f3, 0(x4)	# 1830
	flw		f4, -72(x2)	# 1830
	fsub	f4, f3, f4	# 1830
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1830
	fsub	f1, f3, f1	# 1830
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1830
	fle		f0, f1, fle_cont.34277	# 122
	fadd	f1, f0, f0	# 1831
fle_cont.34277:
	fmul	f1, f26, f1	# 1832
	lui		x4, %hi(l.29637)	# 1832
	ori		x4, x4, %lo(l.29637)	# 1832
	flw		f2, 0(x4)	# 1832
	fdiv	f1, f1, f2	# 1832
	arrfsw	f1, x14, x22	# 1832
	jal		x0, beq_cont.34257	# 1795
beq.34262:
	lw		x6, 20(x6)	# 488
	arrflw	f8, x6, x5	# 493
	fsub	f8, f5, f8	# 1798
	arrflw	f9, x6, x22	# 513
	fsub	f9, f7, f9	# 1799
	fmul	f8, f8, f8	# 127
	fmul	f9, f9, f9	# 127
	fadd	f8, f8, f9	# 1800
	fsqrt	f8, f8	# 1800
	lui		x6, %hi(l.29645)	# 1800
	ori		x6, x6, %lo(l.29645)	# 1800
	flw		f9, 0(x6)	# 1800
	fdiv	f8, f8, f9	# 1800
	fsw		f8, -80(x2)	# 1801
	fadd	f1, f0, f8	# 1801
	sw		x1, -84(x2)	# 1801
	addi	x2, x2, -88	# 1801
	jal		x1, min_caml_floor	# 1801
	addi	x2, x2, 88	# 1801
	lw		x1, -84(x2)	# 1801
	flw		f2, -80(x2)	# 1801
	fsub	f1, f2, f1	# 1801
	lui		x4, %hi(l.29619)	# 1801
	ori		x4, x4, %lo(l.29619)	# 1801
	flw		f2, 0(x4)	# 1801
	fmul	f1, f1, f2	# 1801
	sw		x1, -84(x2)	# 1802
	addi	x2, x2, -88	# 1802
	jal		x1, cos.2638.17994	# 1802
	addi	x2, x2, 88	# 1802
	lw		x1, -84(x2)	# 1802
	fmul	f1, f1, f1	# 127
	fmul	f3, f1, f26	# 1803
	arrfsw	f3, x14, x21	# 1803
	fsub	f1, f30, f1	# 1804
	fmul	f1, f1, f26	# 1804
	arrfsw	f1, x14, x22	# 1804
	jal		x0, beq_cont.34257	# 1788
beq.34260:
	lui		x6, %hi(l.29655)	# 1791
	ori		x6, x6, %lo(l.29655)	# 1791
	flw		f8, 0(x6)	# 1791
	fmul	f8, f6, f8	# 1791
	fadd	f1, f0, f8	# 1791
	sw		x1, -84(x2)	# 1791
	addi	x2, x2, -88	# 1791
	jal		x1, sin.2636.17992	# 1791
	addi	x2, x2, 88	# 1791
	lw		x1, -84(x2)	# 1791
	fmul	f1, f1, f1	# 127
	fmul	f3, f26, f1	# 1792
	arrfsw	f3, x14, x5	# 1792
	fsub	f1, f30, f1	# 1793
	fmul	f1, f26, f1	# 1793
	arrfsw	f1, x14, x21	# 1793
	jal		x0, beq_cont.34257	# 1770
beq.34258:
	lw		x6, 20(x6)	# 488
	arrflw	f8, x6, x5	# 493
	fsub	f8, f5, f8	# 1773
	fmul	f10, f8, f27	# 1775
	sw		x6, -84(x2)	# 1775
	fadd	f1, f0, f10	# 1775
	sw		x1, -88(x2)	# 1775
	addi	x2, x2, -92	# 1775
	jal		x1, min_caml_floor	# 1775
	addi	x2, x2, 92	# 1775
	lw		x1, -88(x2)	# 1775
	fmul	f1, f1, f28	# 1775
	fsub	f1, f8, f1	# 1776
	lui		x4, %hi(l.29645)	# 1776
	ori		x4, x4, %lo(l.29645)	# 1776
	flw		f8, 0(x4)	# 1776
	lw		x4, -84(x2)	# 513
	arrflw	f10, x4, x22	# 513
	fsub	f10, f7, f10	# 1778
	fmul	f9, f10, f27	# 1780
	fsw		f1, -88(x2)	# 1780
	fsw		f28, -92(x2)	# 1780
	fadd	f1, f0, f9	# 1780
	sw		x1, -96(x2)	# 1780
	addi	x2, x2, -100	# 1780
	jal		x1, min_caml_floor	# 1780
	addi	x2, x2, 100	# 1780
	lw		x1, -96(x2)	# 1780
	flw		f2, -92(x2)	# 1780
	fmul	f1, f1, f2	# 1780
	fsub	f1, f10, f1	# 1781
	flw		f2, -88(x2)	# 125
	fle		f8, f2, fle.34280	# 125
	fle		f8, f1, fle.34282	# 125
	fadd	f1, f0, f26	# 1785
	jal		x0, fle_cont.34279	# 125
fle.34282:
	fadd	f1, f0, f0	# 1785
	jal		x0, fle_cont.34279	# 125
fle.34280:
	fle		f8, f1, fle.34284	# 125
	fadd	f1, f0, f0	# 1786
	jal		x0, fle_cont.34279	# 125
fle.34284:
	fadd	f1, f0, f26	# 1786
fle_cont.34279:
	arrfsw	f1, x14, x21	# 1783
beq_cont.34257:
	lw		x4, -60(x2)	# 1903
	lw		x5, -12(x2)	# 1903
	mul		x4, x4, x5	# 1903
	addi	x6, x0, 40544	# 39
	lw		x7, -32(x2)	# 1903
	arrlw	x6, x6, x7	# 1903
	add		x4, x4, x6	# 1903
	lw		x6, -28(x2)	# 1903
	lw		x11, -24(x2)	# 1903
	arrsw	x4, x6, x11	# 1903
	lw		x4, -8(x2)	# 626
	lw		x13, 4(x4)	# 626
	arrlw	x13, x13, x11	# 1905
	flw		f1, -56(x2)	# 316
	arrfsw	f1, x13, x7	# 316
	arrfsw	f6, x13, x21	# 317
	arrfsw	f7, x13, x22	# 318
	lw		x13, 12(x4)	# 641
	lui		x15, %hi(l.27933)	# 1909
	ori		x15, x15, %lo(l.27933)	# 1909
	flw		f2, 0(x15)	# 1909
	flw		f3, -52(x2)	# 125
	fle		f2, f3, fle.34286	# 125
	arrsw	x7, x13, x11	# 1910
	jal		x0, fle_cont.34285	# 125
fle.34286:
	arrsw	x21, x13, x11	# 1912
	lw		x13, 16(x4)	# 648
	arrlw	x13, x13, x11	# 1914
	arrflw	f2, x14, x7	# 316
	arrfsw	f2, x13, x7	# 316
	arrflw	f2, x14, x21	# 317
	arrfsw	f2, x13, x21	# 317
	arrflw	f2, x14, x22	# 318
	arrfsw	f2, x13, x22	# 318
	lui		x15, %hi(l.29712)	# 1915
	ori		x15, x15, %lo(l.29712)	# 1915
	flw		f2, 0(x15)	# 1915
	flw		f4, -48(x2)	# 1915
	fmul	f2, f2, f4	# 1915
	arrflw	f5, x13, x7	# 382
	fmul	f5, f5, f2	# 382
	arrfsw	f5, x13, x7	# 382
	arrflw	f5, x13, x21	# 383
	fmul	f5, f5, f2	# 383
	arrfsw	f5, x13, x21	# 383
	arrflw	f5, x13, x22	# 384
	fmul	f2, f5, f2	# 384
	arrfsw	f2, x13, x22	# 384
	lw		x13, 28(x4)	# 685
	arrlw	x13, x13, x11	# 1917
	addi	x15, x0, 40568	# 51
	arrflw	f2, x15, x7	# 316
	arrfsw	f2, x13, x7	# 316
	arrflw	f2, x15, x21	# 317
	arrfsw	f2, x13, x21	# 317
	arrflw	f2, x15, x22	# 318
	arrfsw	f2, x13, x22	# 318
fle_cont.34285:
	lui		x13, %hi(l.29740)	# 1920
	ori		x13, x13, %lo(l.29740)	# 1920
	flw		f2, 0(x13)	# 1920
	lw		x13, -20(x2)	# 349
	arrflw	f4, x13, x7	# 349
	addi	x15, x0, 40568	# 51
	arrflw	f5, x15, x7	# 349
	fmul	f8, f4, f5	# 349
	arrflw	f9, x13, x21	# 349
	arrflw	f10, x15, x21	# 349
	fmul	f11, f9, f10	# 349
	fadd	f8, f8, f11	# 349
	arrflw	f11, x13, x22	# 349
	arrflw	f12, x15, x22	# 349
	fmul	f13, f11, f12	# 349
	fadd	f8, f8, f13	# 349
	fmul	f2, f2, f8	# 1920
	fmul	f8, f2, f5	# 359
	fadd	f4, f4, f8	# 359
	arrfsw	f4, x13, x7	# 359
	fmul	f4, f2, f10	# 360
	fadd	f4, f9, f4	# 360
	arrfsw	f4, x13, x21	# 360
	fmul	f2, f2, f12	# 361
	fadd	f2, f11, f2	# 361
	arrfsw	f2, x13, x22	# 361
	arrflw	f2, x8, x21	# 533
	flw		f4, -16(x2)	# 1924
	fmul	f2, f4, f2	# 1924
	lw		x8, -4(x2)	# 1927
	sw		x27, -96(x2)	# 1927
	fsw		f7, -100(x2)	# 1927
	fsw		f6, -104(x2)	# 1927
	fsw		f2, -108(x2)	# 1927
	sw		x14, -112(x2)	# 1927
	fsw		f12, -116(x2)	# 1927
	sw		x22, -120(x2)	# 1927
	fsw		f10, -124(x2)	# 1927
	sw		x21, -128(x2)	# 1927
	fsw		f5, -132(x2)	# 1927
	addi	x5, x8, 0	# 1927
	addi	x4, x7, 0	# 1927
	sw		x1, -136(x2)	# 1927
	addi	x2, x2, -140	# 1927
	jal		x1, shadow_check_one_or_matrix.2934.18032	# 1927
	addi	x2, x2, 140	# 1927
	lw		x1, -136(x2)	# 1927
	lw		x5, -32(x2)	# 1927
	beq		x4, x5, beq.34288	# 1927
	jal		x0, beq_cont.34287	# 1927
beq.34288:
	addi	x4, x0, 40312	# 22
	arrflw	f1, x4, x5	# 349
	flw		f2, -132(x2)	# 349
	fmul	f2, f2, f1	# 349
	lw		x6, -128(x2)	# 349
	arrflw	f3, x4, x6	# 349
	flw		f4, -124(x2)	# 349
	fmul	f4, f4, f3	# 349
	fadd	f2, f2, f4	# 349
	lw		x7, -120(x2)	# 349
	arrflw	f4, x4, x7	# 349
	flw		f5, -116(x2)	# 349
	fmul	f5, f5, f4	# 349
	fadd	f2, f2, f5	# 349
	fsub	f2, f0, f2	# 123
	flw		f5, -48(x2)	# 1928
	fmul	f2, f2, f5	# 1928
	lw		x4, -20(x2)	# 349
	arrflw	f6, x4, x5	# 349
	fmul	f1, f6, f1	# 349
	arrflw	f6, x4, x6	# 349
	fmul	f3, f6, f3	# 349
	fadd	f1, f1, f3	# 349
	arrflw	f3, x4, x7	# 349
	fmul	f3, f3, f4	# 349
	fadd	f1, f1, f3	# 349
	fsub	f1, f0, f1	# 123
	fle		f2, f0, fle_cont.34289	# 121
	addi	x8, x0, 40604	# 61
	arrflw	f4, x8, x5	# 359
	lw		x9, -112(x2)	# 359
	arrflw	f6, x9, x5	# 359
	fmul	f6, f2, f6	# 359
	fadd	f4, f4, f6	# 359
	arrfsw	f4, x8, x5	# 359
	arrflw	f4, x8, x6	# 360
	arrflw	f6, x9, x6	# 360
	fmul	f6, f2, f6	# 360
	fadd	f4, f4, f6	# 360
	arrfsw	f4, x8, x6	# 360
	arrflw	f4, x8, x7	# 361
	arrflw	f6, x9, x7	# 361
	fmul	f2, f2, f6	# 361
	fadd	f2, f4, f2	# 361
	arrfsw	f2, x8, x7	# 361
fle_cont.34289:
	fle		f1, f0, beq_cont.34287	# 121
	fmul	f1, f1, f1	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -108(x2)	# 1851
	fmul	f1, f1, f2	# 1851
	addi	x8, x0, 40604	# 61
	arrflw	f3, x8, x5	# 1852
	fadd	f3, f3, f1	# 1852
	arrfsw	f3, x8, x5	# 1852
	arrflw	f3, x8, x6	# 1853
	fadd	f3, f3, f1	# 1853
	arrfsw	f3, x8, x6	# 1853
	arrflw	f3, x8, x7	# 1854
	fadd	f1, f3, f1	# 1854
	arrfsw	f1, x8, x7	# 1854
beq_cont.34287:
	addi	x4, x0, 40648	# 78
	flw		f1, -56(x2)	# 316
	arrfsw	f1, x4, x5	# 316
	flw		f1, -104(x2)	# 317
	lw		x6, -128(x2)	# 317
	arrfsw	f1, x4, x6	# 317
	flw		f1, -100(x2)	# 318
	lw		x6, -120(x2)	# 318
	arrfsw	f1, x4, x6	# 318
	addi	x4, x0, 40000	# 6
	arrlw	x4, x4, x5	# 1372
	addi	x4, x4, -1	# 1372
	lw		x7, -96(x2)	# 1372
	addi	x5, x4, 0	# 1372
	addi	x4, x7, 0	# 1372
	sw		x1, -136(x2)	# 1372
	addi	x2, x2, -140	# 1372
	jal		x1, setup_startp_constants.2897.18017	# 1372
	addi	x2, x2, 140	# 1372
	lw		x1, -136(x2)	# 1372
	addi	x4, x0, 41736	# 118
	lw		x5, -32(x2)	# 1935
	arrlw	x4, x4, x5	# 1935
	addi	x4, x4, -1	# 1935
	lw		x5, -20(x2)	# 1935
	flw		f1, -48(x2)	# 1935
	flw		f2, -108(x2)	# 1935
	sw		x1, -136(x2)	# 1935
	addi	x2, x2, -140	# 1935
	jal		x1, trace_reflections.2981.18059	# 1935
	addi	x2, x2, 140	# 1935
	lw		x1, -136(x2)	# 1935
	lui		x4, %hi(l.29816)	# 1938
	ori		x4, x4, %lo(l.29816)	# 1938
	flw		f1, 0(x4)	# 1938
	flw		f2, -16(x2)	# 125
	fle		f2, f1, fle.34293	# 125
	lw		x4, -24(x2)	# 1940
	lw		x5, -12(x2)	# 1940
	ble		x5, x4, ble_cont.34294	# 1940
	addi	x5, x4, 1	# 1941
	lw		x7, -28(x2)	# 1941
	arrsw	x20, x7, x5	# 1941
ble_cont.34294:
	lw		x5, -120(x2)	# 1944
	lw		x6, -44(x2)	# 1944
	beq		x6, x5, beq.34296	# 1944
	jalr	x0, x1, 0	# 1947
beq.34296:
	flw		f3, -52(x2)	# 1945
	fsub	f1, f30, f3	# 1945
	fmul	f1, f2, f1	# 1945
	addi	x4, x4, 1	# 1946
	flw		f2, 0(x2)	# 1946
	flw		f3, -40(x2)	# 1946
	fadd	f2, f2, f3	# 1946
	lw		x5, -20(x2)	# 1946
	lw		x6, -8(x2)	# 1946
	jal		x0, trace_ray.2986.18064	# 1946
fle.34293:
	jalr	x0, x1, 0	# 1949
beq.34242:
	lw		x6, -28(x2)	# 1954
	lw		x7, -24(x2)	# 1954
	arrsw	x20, x6, x7	# 1954
	beq		x7, x5, beq.34299	# 1956
	lw		x4, -20(x2)	# 349
	arrflw	f1, x4, x5	# 349
	addi	x6, x0, 40312	# 22
	arrflw	f2, x6, x5	# 349
	fmul	f1, f1, f2	# 349
	arrflw	f2, x4, x21	# 349
	arrflw	f3, x6, x21	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	arrflw	f2, x4, x22	# 349
	arrflw	f3, x6, x22	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	fsub	f1, f0, f1	# 123
	fle		f1, f0, fle.34300	# 121
	fmul	f2, f1, f1	# 127
	fmul	f1, f2, f1	# 1962
	flw		f2, -16(x2)	# 1962
	fmul	f1, f1, f2	# 1962
	addi	x4, x0, 40324	# 25
	arrflw	f2, x4, x5	# 1962
	fmul	f1, f1, f2	# 1962
	addi	x4, x0, 40604	# 61
	arrflw	f2, x4, x5	# 1963
	fadd	f2, f2, f1	# 1963
	arrfsw	f2, x4, x5	# 1963
	arrflw	f2, x4, x21	# 1964
	fadd	f2, f2, f1	# 1964
	arrfsw	f2, x4, x21	# 1964
	arrflw	f2, x4, x22	# 1965
	fadd	f1, f2, f1	# 1965
	arrfsw	f1, x4, x22	# 1965
	jalr	x0, x1, 0	# 1965
fle.34300:
	jalr	x0, x1, 0	# 1967
beq.34299:
	jalr	x0, x1, 0	# 1968
iter_trace_diffuse_rays.2995.18070:
	add		x8, x0, x0	# 6
	ble		x0, x7, ble.34304	# 2001
	jalr	x0, x1, 0	# 2012
ble.34304:
	arrlw	x9, x4, x7	# 2002
	lw		x10, 0(x9)	# 696
	arrflw	f1, x10, x0	# 349
	arrflw	f2, x5, x0	# 349
	fmul	f1, f1, f2	# 349
	arrflw	f2, x10, x21	# 349
	arrflw	f3, x5, x21	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	arrflw	f2, x10, x22	# 349
	arrflw	f3, x5, x22	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	sw		x6, 0(x2)	# 122
	sw		x5, -4(x2)	# 122
	sw		x4, -8(x2)	# 122
	sw		x7, -12(x2)	# 122
	fle		f0, f1, fle.34307	# 122
	addi	x9, x7, 1	# 2007
	arrlw	x9, x4, x9	# 2007
	fdiv	f1, f1, f24	# 2007
	addi	x10, x0, 40548	# 42
	arrfsw	f21, x10, x0	# 1691
	addi	x13, x0, 40536	# 31
	arrlw	x13, x13, x0	# 1692
	fsw		f1, -16(x2)	# 1692
	sw		x13, -20(x2)	# 1692
	sw		x22, -24(x2)	# 1692
	fsw		f0, -28(x2)	# 1692
	sw		x21, -32(x2)	# 1692
	sw		x9, -36(x2)	# 1692
	sw		x0, -40(x2)	# 1692
	sw		x10, -44(x2)	# 1692
	addi	x6, x9, 0	# 1692
	addi	x5, x13, 0	# 1692
	addi	x4, x0, 0	# 1692
	sw		x1, -48(x2)	# 1692
	addi	x2, x2, -52	# 1692
	jal		x1, trace_or_matrix_fast.2959.18055	# 1692
	addi	x2, x2, 52	# 1692
	lw		x1, -48(x2)	# 1692
	lw		x4, -44(x2)	# 1693
	lw		x5, -40(x2)	# 1693
	arrflw	f1, x4, x5	# 1693
	fle		f1, f20, fle.34309	# 125
	fle		f22, f1, fle.34311	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.34308	# 125
fle.34311:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.34308	# 125
fle.34309:
	addi	x4, x0, 0	# 1697
fle_cont.34308:
	beq		x4, x5, fle_cont.34306	# 1984
	addi	x4, x0, 40564	# 48
	arrlw	x4, x4, x5	# 1985
	arrlw	x4, x24, x4	# 1985
	lw		x6, -36(x2)	# 696
	lw		x6, 0(x6)	# 696
	lw		x7, 4(x4)	# 410
	lw		x8, -32(x2)	# 1750
	beq		x7, x8, beq.34315	# 1750
	lw		x6, -24(x2)	# 1752
	beq		x7, x6, beq.34317	# 1752
	arrflw	f1, x27, x5	# 1727
	lw		x9, 20(x4)	# 488
	arrflw	f2, x9, x5	# 493
	fsub	f1, f1, f2	# 1727
	arrflw	f2, x27, x8	# 1728
	arrflw	f3, x9, x8	# 503
	fsub	f2, f2, f3	# 1728
	arrflw	f3, x27, x6	# 1729
	arrflw	f4, x9, x6	# 513
	fsub	f3, f3, f4	# 1729
	lw		x7, 16(x4)	# 448
	arrflw	f4, x7, x5	# 453
	fmul	f4, f1, f4	# 1731
	arrflw	f5, x7, x8	# 463
	fmul	f5, f2, f5	# 1732
	arrflw	f6, x7, x6	# 473
	fmul	f6, f3, f6	# 1733
	lw		x7, 12(x4)	# 439
	beq		x7, x5, beq.34319	# 1735
	lw		x7, 36(x4)	# 588
	arrflw	f7, x7, x6	# 593
	fmul	f8, f2, f7	# 1740
	arrflw	f9, x7, x8	# 583
	fmul	f10, f3, f9	# 1740
	fadd	f8, f8, f10	# 1740
	lui		x9, %hi(l.27933)	# 126
	ori		x9, x9, %lo(l.27933)	# 126
	flw		f10, 0(x9)	# 126
	fmul	f8, f8, f10	# 126
	fadd	f4, f4, f8	# 1740
	addi	x9, x0, 40568	# 51
	arrfsw	f4, x9, x5	# 1740
	fmul	f4, f1, f7	# 1741
	arrflw	f7, x7, x5	# 573
	fmul	f3, f3, f7	# 1741
	fadd	f3, f4, f3	# 1741
	fmul	f3, f3, f10	# 126
	fadd	f3, f5, f3	# 1741
	arrfsw	f3, x9, x8	# 1741
	fmul	f1, f1, f9	# 1742
	fmul	f2, f2, f7	# 1742
	fadd	f1, f1, f2	# 1742
	fmul	f1, f1, f10	# 126
	fadd	f1, f6, f1	# 1742
	arrfsw	f1, x9, x6	# 1742
	jal		x0, beq_cont.34318	# 1735
beq.34319:
	addi	x7, x0, 40568	# 51
	arrfsw	f4, x7, x5	# 1736
	arrfsw	f5, x7, x8	# 1737
	arrfsw	f6, x7, x6	# 1738
beq_cont.34318:
	lw		x7, 24(x4)	# 430
	addi	x9, x0, 40568	# 51
	arrflw	f1, x9, x5	# 340
	fmul	f2, f1, f1	# 127
	arrflw	f3, x9, x8	# 340
	fmul	f4, f3, f3	# 127
	fadd	f2, f2, f4	# 340
	arrflw	f4, x9, x6	# 340
	fmul	f5, f4, f4	# 127
	fadd	f2, f2, f5	# 340
	fsqrt	f2, f2	# 340
	flw		f5, -28(x2)	# 120
	feq		f2, f5, feq.34321	# 120
	beq		x7, x5, beq.34323	# 341
	fdiv	f2, f25, f2	# 341
	jal		x0, feq_cont.34320	# 341
beq.34323:
	fdiv	f2, f30, f2	# 341
	jal		x0, feq_cont.34320	# 120
feq.34321:
	fadd	f2, f0, f30	# 341
feq_cont.34320:
	fmul	f1, f1, f2	# 342
	arrfsw	f1, x9, x5	# 342
	fmul	f1, f3, f2	# 343
	arrfsw	f1, x9, x8	# 343
	fmul	f1, f4, f2	# 344
	arrfsw	f1, x9, x6	# 344
	jal		x0, beq_cont.34314	# 1752
beq.34317:
	lw		x7, 16(x4)	# 448
	arrflw	f1, x7, x5	# 453
	fsub	f1, f0, f1	# 123
	addi	x9, x0, 40568	# 51
	arrfsw	f1, x9, x5	# 1720
	arrflw	f1, x7, x8	# 463
	fsub	f1, f0, f1	# 123
	arrfsw	f1, x9, x8	# 1721
	arrflw	f1, x7, x6	# 473
	fsub	f1, f0, f1	# 123
	arrfsw	f1, x9, x6	# 1722
	jal		x0, beq_cont.34314	# 1750
beq.34315:
	addi	x7, x0, 40544	# 39
	arrlw	x7, x7, x5	# 1711
	addi	x9, x0, 40568	# 51
	flw		f1, -28(x2)	# 304
	arrfsw	f1, x9, x5	# 304
	arrfsw	f1, x9, x8	# 305
	lw		x10, -24(x2)	# 306
	arrfsw	f1, x9, x10	# 306
	addi	x7, x7, -1	# 1714
	arrflw	f2, x6, x7	# 1714
	feq		f2, f1, feq.34325	# 120
	fle		f2, f1, fle.34327	# 121
	fadd	f2, f0, f30	# 270
	jal		x0, feq_cont.34324	# 121
fle.34327:
	fadd	f2, f0, f25	# 271
	jal		x0, feq_cont.34324	# 120
feq.34325:
	fadd	f2, f0, f1	# 269
feq_cont.34324:
	fsub	f2, f0, f2	# 123
	arrfsw	f2, x9, x7	# 1714
beq_cont.34314:
	lw		x6, 0(x4)	# 400
	lw		x7, 32(x4)	# 538
	arrflw	f1, x7, x5	# 543
	addi	x9, x0, 40580	# 54
	arrfsw	f1, x9, x5	# 1767
	arrflw	f1, x7, x8	# 553
	arrfsw	f1, x9, x8	# 1768
	lw		x10, -24(x2)	# 563
	arrflw	f1, x7, x10	# 563
	arrfsw	f1, x9, x10	# 1769
	sw		x4, -48(x2)	# 1770
	beq		x6, x8, beq.34329	# 1770
	beq		x6, x10, beq.34331	# 1788
	beq		x6, x23, beq.34333	# 1795
	beq		x6, x30, beq.34335	# 1806
	jal		x0, beq_cont.34328	# 1806
beq.34335:
	arrflw	f1, x27, x5	# 1808
	lw		x7, 20(x4)	# 488
	arrflw	f2, x7, x5	# 493
	fsub	f1, f1, f2	# 1808
	lw		x11, 16(x4)	# 448
	arrflw	f2, x11, x5	# 453
	fsqrt	f2, f2	# 1808
	fmul	f1, f1, f2	# 1808
	arrflw	f2, x27, x10	# 1809
	arrflw	f3, x7, x10	# 513
	fsub	f2, f2, f3	# 1809
	arrflw	f3, x11, x10	# 473
	fsqrt	f3, f3	# 1809
	fmul	f2, f2, f3	# 1809
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1810
	flw		f4, -28(x2)	# 124
	fle		f1, f4, fle.34337	# 124
	fadd	f5, f0, f1	# 124
	jal		x0, fle_cont.34336	# 124
fle.34337:
	fsub	f5, f0, f1	# 124
fle_cont.34336:
	lui		x12, %hi(l.29612)	# 1812
	ori		x12, x12, %lo(l.29612)	# 1812
	flw		f6, 0(x12)	# 1812
	fsw		f3, -52(x2)	# 125
	fle		f6, f5, fle.34339	# 125
	lui		x12, %hi(l.29614)	# 1813
	ori		x12, x12, %lo(l.29614)	# 1813
	flw		f1, 0(x12)	# 1813
	jal		x0, fle_cont.34338	# 125
fle.34339:
	fdiv	f1, f2, f1	# 1815
	fle		f1, f4, fle.34341	# 124
	jal		x0, fle_cont.34340	# 124
fle.34341:
	fsub	f1, f0, f1	# 124
fle_cont.34340:
	sw		x1, -56(x2)	# 1817
	addi	x2, x2, -60	# 1817
	jal		x1, atan.2640.17996	# 1817
	addi	x2, x2, 60	# 1817
	lw		x1, -56(x2)	# 1817
	lui		x4, %hi(l.29617)	# 1817
	ori		x4, x4, %lo(l.29617)	# 1817
	flw		f2, 0(x4)	# 1817
	fmul	f1, f1, f2	# 1817
	lui		x4, %hi(l.29619)	# 1817
	ori		x4, x4, %lo(l.29619)	# 1817
	flw		f2, 0(x4)	# 1817
	fdiv	f1, f1, f2	# 1817
fle_cont.34338:
	sw		x7, -56(x2)	# 1819
	sw		x27, -60(x2)	# 1819
	fsw		f1, -64(x2)	# 1819
	sw		x1, -68(x2)	# 1819
	addi	x2, x2, -72	# 1819
	jal		x1, min_caml_floor	# 1819
	addi	x2, x2, 72	# 1819
	lw		x1, -68(x2)	# 1819
	flw		f2, -64(x2)	# 1819
	fsub	f1, f2, f1	# 1819
	lw		x4, -60(x2)	# 1821
	arrflw	f2, x4, x8	# 1821
	lw		x4, -56(x2)	# 503
	arrflw	f3, x4, x8	# 503
	fsub	f2, f2, f3	# 1821
	arrflw	f3, x11, x8	# 463
	fsqrt	f3, f3	# 1821
	fmul	f2, f2, f3	# 1821
	flw		f3, -28(x2)	# 124
	flw		f4, -52(x2)	# 124
	fle		f4, f3, fle.34343	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.34342	# 124
fle.34343:
	fsub	f5, f0, f4	# 124
fle_cont.34342:
	fsw		f1, -68(x2)	# 125
	fle		f6, f5, fle.34345	# 125
	lui		x4, %hi(l.29614)	# 1824
	ori		x4, x4, %lo(l.29614)	# 1824
	flw		f1, 0(x4)	# 1824
	jal		x0, fle_cont.34344	# 125
fle.34345:
	fdiv	f2, f2, f4	# 1826
	fle		f2, f3, fle.34347	# 124
	jal		x0, fle_cont.34346	# 124
fle.34347:
	fsub	f2, f0, f2	# 124
fle_cont.34346:
	fadd	f1, f0, f2	# 1827
	sw		x1, -72(x2)	# 1827
	addi	x2, x2, -76	# 1827
	jal		x1, atan.2640.17996	# 1827
	addi	x2, x2, 76	# 1827
	lw		x1, -72(x2)	# 1827
	lui		x4, %hi(l.29617)	# 1827
	ori		x4, x4, %lo(l.29617)	# 1827
	flw		f2, 0(x4)	# 1827
	fmul	f1, f1, f2	# 1827
	lui		x4, %hi(l.29619)	# 1827
	ori		x4, x4, %lo(l.29619)	# 1827
	flw		f2, 0(x4)	# 1827
	fdiv	f1, f1, f2	# 1827
fle_cont.34344:
	fsw		f1, -72(x2)	# 1829
	sw		x1, -76(x2)	# 1829
	addi	x2, x2, -80	# 1829
	jal		x1, min_caml_floor	# 1829
	addi	x2, x2, 80	# 1829
	lw		x1, -76(x2)	# 1829
	flw		f2, -72(x2)	# 1829
	fsub	f1, f2, f1	# 1829
	lui		x4, %hi(l.29630)	# 1830
	ori		x4, x4, %lo(l.29630)	# 1830
	flw		f2, 0(x4)	# 1830
	lui		x4, %hi(l.27933)	# 1830
	ori		x4, x4, %lo(l.27933)	# 1830
	flw		f3, 0(x4)	# 1830
	flw		f4, -68(x2)	# 1830
	fsub	f4, f3, f4	# 1830
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1830
	fsub	f1, f3, f1	# 1830
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1830
	flw		f2, -28(x2)	# 122
	fle		f2, f1, fle_cont.34348	# 122
	fadd	f1, f0, f2	# 1831
fle_cont.34348:
	fmul	f1, f26, f1	# 1832
	lui		x4, %hi(l.29637)	# 1832
	ori		x4, x4, %lo(l.29637)	# 1832
	flw		f3, 0(x4)	# 1832
	fdiv	f1, f1, f3	# 1832
	arrfsw	f1, x9, x10	# 1832
	jal		x0, beq_cont.34328	# 1795
beq.34333:
	arrflw	f1, x27, x5	# 1798
	lw		x7, 20(x4)	# 488
	arrflw	f2, x7, x5	# 493
	fsub	f1, f1, f2	# 1798
	arrflw	f2, x27, x10	# 1799
	arrflw	f3, x7, x10	# 513
	fsub	f2, f2, f3	# 1799
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1800
	fsqrt	f1, f1	# 1800
	lui		x6, %hi(l.29645)	# 1800
	ori		x6, x6, %lo(l.29645)	# 1800
	flw		f2, 0(x6)	# 1800
	fdiv	f1, f1, f2	# 1800
	fsw		f1, -76(x2)	# 1801
	sw		x1, -80(x2)	# 1801
	addi	x2, x2, -84	# 1801
	jal		x1, min_caml_floor	# 1801
	addi	x2, x2, 84	# 1801
	lw		x1, -80(x2)	# 1801
	flw		f2, -76(x2)	# 1801
	fsub	f1, f2, f1	# 1801
	lui		x4, %hi(l.29619)	# 1801
	ori		x4, x4, %lo(l.29619)	# 1801
	flw		f2, 0(x4)	# 1801
	fmul	f1, f1, f2	# 1801
	sw		x1, -80(x2)	# 1802
	addi	x2, x2, -84	# 1802
	jal		x1, cos.2638.17994	# 1802
	addi	x2, x2, 84	# 1802
	lw		x1, -80(x2)	# 1802
	fmul	f1, f1, f1	# 127
	fmul	f3, f1, f26	# 1803
	arrfsw	f3, x9, x8	# 1803
	fsub	f1, f30, f1	# 1804
	fmul	f1, f1, f26	# 1804
	arrfsw	f1, x9, x10	# 1804
	jal		x0, beq_cont.34328	# 1788
beq.34331:
	arrflw	f1, x27, x8	# 1791
	lui		x6, %hi(l.29655)	# 1791
	ori		x6, x6, %lo(l.29655)	# 1791
	flw		f2, 0(x6)	# 1791
	fmul	f1, f1, f2	# 1791
	sw		x1, -80(x2)	# 1791
	addi	x2, x2, -84	# 1791
	jal		x1, sin.2636.17992	# 1791
	addi	x2, x2, 84	# 1791
	lw		x1, -80(x2)	# 1791
	fmul	f1, f1, f1	# 127
	fmul	f3, f26, f1	# 1792
	arrfsw	f3, x9, x5	# 1792
	fsub	f1, f30, f1	# 1793
	fmul	f1, f26, f1	# 1793
	arrfsw	f1, x9, x8	# 1793
	jal		x0, beq_cont.34328	# 1770
beq.34329:
	arrflw	f1, x27, x5	# 1773
	lw		x7, 20(x4)	# 488
	arrflw	f2, x7, x5	# 493
	fsub	f1, f1, f2	# 1773
	fmul	f3, f1, f27	# 1775
	fsw		f27, -80(x2)	# 1775
	sw		x7, -84(x2)	# 1775
	sw		x27, -88(x2)	# 1775
	fsw		f1, -92(x2)	# 1775
	fadd	f1, f0, f3	# 1775
	sw		x1, -96(x2)	# 1775
	addi	x2, x2, -100	# 1775
	jal		x1, min_caml_floor	# 1775
	addi	x2, x2, 100	# 1775
	lw		x1, -96(x2)	# 1775
	fmul	f1, f1, f28	# 1775
	flw		f3, -92(x2)	# 1776
	fsub	f1, f3, f1	# 1776
	lui		x4, %hi(l.29645)	# 1776
	ori		x4, x4, %lo(l.29645)	# 1776
	flw		f3, 0(x4)	# 1776
	lw		x4, -88(x2)	# 1778
	arrflw	f4, x4, x10	# 1778
	lw		x4, -84(x2)	# 513
	arrflw	f5, x4, x10	# 513
	fsub	f4, f4, f5	# 1778
	flw		f5, -80(x2)	# 1780
	fmul	f5, f4, f5	# 1780
	fsw		f1, -96(x2)	# 1780
	fsw		f28, -100(x2)	# 1780
	fadd	f1, f0, f5	# 1780
	sw		x1, -104(x2)	# 1780
	addi	x2, x2, -108	# 1780
	jal		x1, min_caml_floor	# 1780
	addi	x2, x2, 108	# 1780
	lw		x1, -104(x2)	# 1780
	flw		f2, -100(x2)	# 1780
	fmul	f1, f1, f2	# 1780
	fsub	f1, f4, f1	# 1781
	flw		f2, -96(x2)	# 125
	fle		f3, f2, fle.34351	# 125
	fle		f3, f1, fle.34353	# 125
	fadd	f1, f0, f26	# 1785
	jal		x0, fle_cont.34350	# 125
fle.34353:
	flw		f1, -28(x2)	# 1785
	jal		x0, fle_cont.34350	# 125
fle.34351:
	fle		f3, f1, fle.34355	# 125
	flw		f1, -28(x2)	# 1786
	jal		x0, fle_cont.34350	# 125
fle.34355:
	fadd	f1, f0, f26	# 1786
fle_cont.34350:
	arrfsw	f1, x9, x8	# 1783
beq_cont.34328:
	lw		x4, -40(x2)	# 1990
	lw		x5, -20(x2)	# 1990
	sw		x9, -104(x2)	# 1990
	sw		x1, -108(x2)	# 1990
	addi	x2, x2, -112	# 1990
	jal		x1, shadow_check_one_or_matrix.2934.18032	# 1990
	addi	x2, x2, 112	# 1990
	lw		x1, -108(x2)	# 1990
	lw		x5, -40(x2)	# 1990
	beq		x4, x5, beq.34357	# 1990
	jal		x0, fle_cont.34306	# 1990
beq.34357:
	addi	x4, x0, 40568	# 51
	arrflw	f1, x4, x5	# 349
	addi	x6, x0, 40312	# 22
	arrflw	f2, x6, x5	# 349
	fmul	f1, f1, f2	# 349
	lw		x7, -32(x2)	# 349
	arrflw	f2, x4, x7	# 349
	arrflw	f3, x6, x7	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	lw		x8, -24(x2)	# 349
	arrflw	f2, x4, x8	# 349
	arrflw	f3, x6, x8	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	fsub	f1, f0, f1	# 123
	flw		f2, -28(x2)	# 121
	fle		f1, f2, fle.34359	# 121
	jal		x0, fle_cont.34358	# 121
fle.34359:
	fadd	f1, f0, f2	# 1992
fle_cont.34358:
	flw		f2, -16(x2)	# 1993
	fmul	f1, f2, f1	# 1993
	lw		x4, -48(x2)	# 518
	lw		x4, 28(x4)	# 518
	arrflw	f2, x4, x5	# 523
	fmul	f1, f1, f2	# 1993
	addi	x4, x0, 40592	# 58
	arrflw	f2, x4, x5	# 359
	lw		x6, -104(x2)	# 359
	arrflw	f3, x6, x5	# 359
	fmul	f3, f1, f3	# 359
	fadd	f2, f2, f3	# 359
	arrfsw	f2, x4, x5	# 359
	arrflw	f2, x4, x7	# 360
	arrflw	f3, x6, x7	# 360
	fmul	f3, f1, f3	# 360
	fadd	f2, f2, f3	# 360
	arrfsw	f2, x4, x7	# 360
	arrflw	f2, x4, x8	# 361
	arrflw	f3, x6, x8	# 361
	fmul	f1, f1, f3	# 361
	fadd	f1, f2, f1	# 361
	arrfsw	f1, x4, x8	# 361
	jal		x0, fle_cont.34306	# 1984
fle.34307:
	fdiv	f1, f1, f23	# 2009
	addi	x13, x0, 40548	# 42
	arrfsw	f21, x13, x0	# 1691
	addi	x14, x0, 40536	# 31
	arrlw	x14, x14, x0	# 1692
	fsw		f1, -108(x2)	# 1692
	sw		x14, -112(x2)	# 1692
	sw		x10, -116(x2)	# 1692
	sw		x22, -24(x2)	# 1692
	fsw		f0, -28(x2)	# 1692
	sw		x21, -32(x2)	# 1692
	sw		x0, -40(x2)	# 1692
	sw		x13, -120(x2)	# 1692
	addi	x6, x9, 0	# 1692
	addi	x5, x14, 0	# 1692
	addi	x4, x0, 0	# 1692
	sw		x1, -124(x2)	# 1692
	addi	x2, x2, -128	# 1692
	jal		x1, trace_or_matrix_fast.2959.18055	# 1692
	addi	x2, x2, 128	# 1692
	lw		x1, -124(x2)	# 1692
	lw		x4, -120(x2)	# 1693
	lw		x5, -40(x2)	# 1693
	arrflw	f1, x4, x5	# 1693
	fle		f1, f20, fle.34361	# 125
	fle		f22, f1, fle.34363	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.34360	# 125
fle.34363:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.34360	# 125
fle.34361:
	addi	x4, x0, 0	# 1697
fle_cont.34360:
	beq		x4, x5, fle_cont.34306	# 1984
	addi	x4, x0, 40564	# 48
	arrlw	x4, x4, x5	# 1985
	arrlw	x4, x24, x4	# 1985
	lw		x6, 4(x4)	# 410
	lw		x7, -32(x2)	# 1750
	beq		x6, x7, beq.34367	# 1750
	lw		x8, -24(x2)	# 1752
	beq		x6, x8, beq.34369	# 1752
	arrflw	f1, x27, x5	# 1727
	lw		x9, 20(x4)	# 488
	arrflw	f2, x9, x5	# 493
	fsub	f1, f1, f2	# 1727
	arrflw	f2, x27, x7	# 1728
	arrflw	f3, x9, x7	# 503
	fsub	f2, f2, f3	# 1728
	arrflw	f3, x27, x8	# 1729
	arrflw	f4, x9, x8	# 513
	fsub	f3, f3, f4	# 1729
	lw		x6, 16(x4)	# 448
	arrflw	f4, x6, x5	# 453
	fmul	f4, f1, f4	# 1731
	arrflw	f5, x6, x7	# 463
	fmul	f5, f2, f5	# 1732
	arrflw	f6, x6, x8	# 473
	fmul	f6, f3, f6	# 1733
	lw		x6, 12(x4)	# 439
	beq		x6, x5, beq.34371	# 1735
	lw		x6, 36(x4)	# 588
	arrflw	f7, x6, x8	# 593
	fmul	f8, f2, f7	# 1740
	arrflw	f9, x6, x7	# 583
	fmul	f10, f3, f9	# 1740
	fadd	f8, f8, f10	# 1740
	lui		x9, %hi(l.27933)	# 126
	ori		x9, x9, %lo(l.27933)	# 126
	flw		f10, 0(x9)	# 126
	fmul	f8, f8, f10	# 126
	fadd	f4, f4, f8	# 1740
	addi	x9, x0, 40568	# 51
	arrfsw	f4, x9, x5	# 1740
	fmul	f4, f1, f7	# 1741
	arrflw	f7, x6, x5	# 573
	fmul	f3, f3, f7	# 1741
	fadd	f3, f4, f3	# 1741
	fmul	f3, f3, f10	# 126
	fadd	f3, f5, f3	# 1741
	arrfsw	f3, x9, x7	# 1741
	fmul	f1, f1, f9	# 1742
	fmul	f2, f2, f7	# 1742
	fadd	f1, f1, f2	# 1742
	fmul	f1, f1, f10	# 126
	fadd	f1, f6, f1	# 1742
	arrfsw	f1, x9, x8	# 1742
	jal		x0, beq_cont.34370	# 1735
beq.34371:
	addi	x6, x0, 40568	# 51
	arrfsw	f4, x6, x5	# 1736
	arrfsw	f5, x6, x7	# 1737
	arrfsw	f6, x6, x8	# 1738
beq_cont.34370:
	lw		x6, 24(x4)	# 430
	addi	x9, x0, 40568	# 51
	arrflw	f1, x9, x5	# 340
	fmul	f2, f1, f1	# 127
	arrflw	f3, x9, x7	# 340
	fmul	f4, f3, f3	# 127
	fadd	f2, f2, f4	# 340
	arrflw	f4, x9, x8	# 340
	fmul	f5, f4, f4	# 127
	fadd	f2, f2, f5	# 340
	fsqrt	f2, f2	# 340
	flw		f5, -28(x2)	# 120
	feq		f2, f5, feq.34373	# 120
	beq		x6, x5, beq.34375	# 341
	fdiv	f2, f25, f2	# 341
	jal		x0, feq_cont.34372	# 341
beq.34375:
	fdiv	f2, f30, f2	# 341
	jal		x0, feq_cont.34372	# 120
feq.34373:
	fadd	f2, f0, f30	# 341
feq_cont.34372:
	fmul	f1, f1, f2	# 342
	arrfsw	f1, x9, x5	# 342
	fmul	f1, f3, f2	# 343
	arrfsw	f1, x9, x7	# 343
	fmul	f1, f4, f2	# 344
	arrfsw	f1, x9, x8	# 344
	jal		x0, beq_cont.34366	# 1752
beq.34369:
	lw		x6, 16(x4)	# 448
	arrflw	f1, x6, x5	# 453
	fsub	f1, f0, f1	# 123
	addi	x9, x0, 40568	# 51
	arrfsw	f1, x9, x5	# 1720
	arrflw	f1, x6, x7	# 463
	fsub	f1, f0, f1	# 123
	arrfsw	f1, x9, x7	# 1721
	arrflw	f1, x6, x8	# 473
	fsub	f1, f0, f1	# 123
	arrfsw	f1, x9, x8	# 1722
	jal		x0, beq_cont.34366	# 1750
beq.34367:
	addi	x6, x0, 40544	# 39
	arrlw	x6, x6, x5	# 1711
	addi	x8, x0, 40568	# 51
	flw		f1, -28(x2)	# 304
	arrfsw	f1, x8, x5	# 304
	arrfsw	f1, x8, x7	# 305
	lw		x9, -24(x2)	# 306
	arrfsw	f1, x8, x9	# 306
	addi	x6, x6, -1	# 1714
	lw		x10, -116(x2)	# 1714
	arrflw	f2, x10, x6	# 1714
	feq		f2, f1, feq.34377	# 120
	fle		f2, f1, fle.34379	# 121
	fadd	f2, f0, f30	# 270
	jal		x0, feq_cont.34376	# 121
fle.34379:
	fadd	f2, f0, f25	# 271
	jal		x0, feq_cont.34376	# 120
feq.34377:
	fadd	f2, f0, f1	# 269
feq_cont.34376:
	fsub	f2, f0, f2	# 123
	arrfsw	f2, x8, x6	# 1714
beq_cont.34366:
	lw		x6, 0(x4)	# 400
	lw		x8, 32(x4)	# 538
	arrflw	f1, x8, x5	# 543
	addi	x9, x0, 40580	# 54
	arrfsw	f1, x9, x5	# 1767
	arrflw	f1, x8, x7	# 553
	arrfsw	f1, x9, x7	# 1768
	lw		x10, -24(x2)	# 563
	arrflw	f1, x8, x10	# 563
	arrfsw	f1, x9, x10	# 1769
	sw		x4, -124(x2)	# 1770
	beq		x6, x7, beq.34381	# 1770
	beq		x6, x10, beq.34383	# 1788
	beq		x6, x23, beq.34385	# 1795
	beq		x6, x30, beq.34387	# 1806
	jal		x0, beq_cont.34380	# 1806
beq.34387:
	arrflw	f1, x27, x5	# 1808
	lw		x8, 20(x4)	# 488
	arrflw	f2, x8, x5	# 493
	fsub	f1, f1, f2	# 1808
	lw		x11, 16(x4)	# 448
	arrflw	f2, x11, x5	# 453
	fsqrt	f2, f2	# 1808
	fmul	f1, f1, f2	# 1808
	arrflw	f2, x27, x10	# 1809
	arrflw	f3, x8, x10	# 513
	fsub	f2, f2, f3	# 1809
	arrflw	f3, x11, x10	# 473
	fsqrt	f3, f3	# 1809
	fmul	f2, f2, f3	# 1809
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1810
	flw		f4, -28(x2)	# 124
	fle		f1, f4, fle.34389	# 124
	fadd	f5, f0, f1	# 124
	jal		x0, fle_cont.34388	# 124
fle.34389:
	fsub	f5, f0, f1	# 124
fle_cont.34388:
	lui		x12, %hi(l.29612)	# 1812
	ori		x12, x12, %lo(l.29612)	# 1812
	flw		f6, 0(x12)	# 1812
	fsw		f3, -128(x2)	# 125
	fle		f6, f5, fle.34391	# 125
	lui		x12, %hi(l.29614)	# 1813
	ori		x12, x12, %lo(l.29614)	# 1813
	flw		f1, 0(x12)	# 1813
	jal		x0, fle_cont.34390	# 125
fle.34391:
	fdiv	f1, f2, f1	# 1815
	fle		f1, f4, fle.34393	# 124
	jal		x0, fle_cont.34392	# 124
fle.34393:
	fsub	f1, f0, f1	# 124
fle_cont.34392:
	sw		x1, -132(x2)	# 1817
	addi	x2, x2, -136	# 1817
	jal		x1, atan.2640.17996	# 1817
	addi	x2, x2, 136	# 1817
	lw		x1, -132(x2)	# 1817
	lui		x4, %hi(l.29617)	# 1817
	ori		x4, x4, %lo(l.29617)	# 1817
	flw		f2, 0(x4)	# 1817
	fmul	f1, f1, f2	# 1817
	lui		x4, %hi(l.29619)	# 1817
	ori		x4, x4, %lo(l.29619)	# 1817
	flw		f2, 0(x4)	# 1817
	fdiv	f1, f1, f2	# 1817
fle_cont.34390:
	sw		x27, -132(x2)	# 1819
	fsw		f1, -136(x2)	# 1819
	sw		x1, -140(x2)	# 1819
	addi	x2, x2, -144	# 1819
	jal		x1, min_caml_floor	# 1819
	addi	x2, x2, 144	# 1819
	lw		x1, -140(x2)	# 1819
	flw		f2, -136(x2)	# 1819
	fsub	f1, f2, f1	# 1819
	lw		x4, -132(x2)	# 1821
	lw		x5, -32(x2)	# 1821
	arrflw	f2, x4, x5	# 1821
	arrflw	f3, x8, x5	# 503
	fsub	f2, f2, f3	# 1821
	arrflw	f3, x11, x5	# 463
	fsqrt	f3, f3	# 1821
	fmul	f2, f2, f3	# 1821
	flw		f3, -28(x2)	# 124
	flw		f4, -128(x2)	# 124
	fle		f4, f3, fle.34395	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.34394	# 124
fle.34395:
	fsub	f5, f0, f4	# 124
fle_cont.34394:
	fsw		f1, -140(x2)	# 125
	fle		f6, f5, fle.34397	# 125
	lui		x4, %hi(l.29614)	# 1824
	ori		x4, x4, %lo(l.29614)	# 1824
	flw		f1, 0(x4)	# 1824
	jal		x0, fle_cont.34396	# 125
fle.34397:
	fdiv	f2, f2, f4	# 1826
	fle		f2, f3, fle.34399	# 124
	jal		x0, fle_cont.34398	# 124
fle.34399:
	fsub	f2, f0, f2	# 124
fle_cont.34398:
	fadd	f1, f0, f2	# 1827
	sw		x1, -144(x2)	# 1827
	addi	x2, x2, -148	# 1827
	jal		x1, atan.2640.17996	# 1827
	addi	x2, x2, 148	# 1827
	lw		x1, -144(x2)	# 1827
	lui		x4, %hi(l.29617)	# 1827
	ori		x4, x4, %lo(l.29617)	# 1827
	flw		f2, 0(x4)	# 1827
	fmul	f1, f1, f2	# 1827
	lui		x4, %hi(l.29619)	# 1827
	ori		x4, x4, %lo(l.29619)	# 1827
	flw		f2, 0(x4)	# 1827
	fdiv	f1, f1, f2	# 1827
fle_cont.34396:
	fsw		f1, -144(x2)	# 1829
	sw		x1, -148(x2)	# 1829
	addi	x2, x2, -152	# 1829
	jal		x1, min_caml_floor	# 1829
	addi	x2, x2, 152	# 1829
	lw		x1, -148(x2)	# 1829
	flw		f2, -144(x2)	# 1829
	fsub	f1, f2, f1	# 1829
	lui		x4, %hi(l.29630)	# 1830
	ori		x4, x4, %lo(l.29630)	# 1830
	flw		f2, 0(x4)	# 1830
	lui		x4, %hi(l.27933)	# 1830
	ori		x4, x4, %lo(l.27933)	# 1830
	flw		f3, 0(x4)	# 1830
	flw		f4, -140(x2)	# 1830
	fsub	f4, f3, f4	# 1830
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1830
	fsub	f1, f3, f1	# 1830
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1830
	flw		f2, -28(x2)	# 122
	fle		f2, f1, fle_cont.34400	# 122
	fadd	f1, f0, f2	# 1831
fle_cont.34400:
	fmul	f1, f26, f1	# 1832
	lui		x4, %hi(l.29637)	# 1832
	ori		x4, x4, %lo(l.29637)	# 1832
	flw		f3, 0(x4)	# 1832
	fdiv	f1, f1, f3	# 1832
	arrfsw	f1, x9, x10	# 1832
	jal		x0, beq_cont.34380	# 1795
beq.34385:
	arrflw	f1, x27, x5	# 1798
	lw		x8, 20(x4)	# 488
	arrflw	f2, x8, x5	# 493
	fsub	f1, f1, f2	# 1798
	arrflw	f2, x27, x10	# 1799
	arrflw	f3, x8, x10	# 513
	fsub	f2, f2, f3	# 1799
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1800
	fsqrt	f1, f1	# 1800
	lui		x6, %hi(l.29645)	# 1800
	ori		x6, x6, %lo(l.29645)	# 1800
	flw		f2, 0(x6)	# 1800
	fdiv	f1, f1, f2	# 1800
	fsw		f1, -148(x2)	# 1801
	sw		x1, -152(x2)	# 1801
	addi	x2, x2, -156	# 1801
	jal		x1, min_caml_floor	# 1801
	addi	x2, x2, 156	# 1801
	lw		x1, -152(x2)	# 1801
	flw		f2, -148(x2)	# 1801
	fsub	f1, f2, f1	# 1801
	lui		x4, %hi(l.29619)	# 1801
	ori		x4, x4, %lo(l.29619)	# 1801
	flw		f2, 0(x4)	# 1801
	fmul	f1, f1, f2	# 1801
	sw		x1, -152(x2)	# 1802
	addi	x2, x2, -156	# 1802
	jal		x1, cos.2638.17994	# 1802
	addi	x2, x2, 156	# 1802
	lw		x1, -152(x2)	# 1802
	fmul	f1, f1, f1	# 127
	fmul	f3, f1, f26	# 1803
	lw		x4, -32(x2)	# 1803
	arrfsw	f3, x9, x4	# 1803
	fsub	f1, f30, f1	# 1804
	fmul	f1, f1, f26	# 1804
	arrfsw	f1, x9, x10	# 1804
	jal		x0, beq_cont.34380	# 1788
beq.34383:
	arrflw	f1, x27, x7	# 1791
	lui		x6, %hi(l.29655)	# 1791
	ori		x6, x6, %lo(l.29655)	# 1791
	flw		f2, 0(x6)	# 1791
	fmul	f1, f1, f2	# 1791
	sw		x1, -152(x2)	# 1791
	addi	x2, x2, -156	# 1791
	jal		x1, sin.2636.17992	# 1791
	addi	x2, x2, 156	# 1791
	lw		x1, -152(x2)	# 1791
	fmul	f1, f1, f1	# 127
	fmul	f3, f26, f1	# 1792
	arrfsw	f3, x9, x5	# 1792
	fsub	f1, f30, f1	# 1793
	fmul	f1, f26, f1	# 1793
	arrfsw	f1, x9, x7	# 1793
	jal		x0, beq_cont.34380	# 1770
beq.34381:
	arrflw	f1, x27, x5	# 1773
	lw		x8, 20(x4)	# 488
	arrflw	f2, x8, x5	# 493
	fsub	f1, f1, f2	# 1773
	fmul	f3, f1, f27	# 1775
	fsw		f27, -152(x2)	# 1775
	sw		x27, -156(x2)	# 1775
	fsw		f1, -160(x2)	# 1775
	fadd	f1, f0, f3	# 1775
	sw		x1, -164(x2)	# 1775
	addi	x2, x2, -168	# 1775
	jal		x1, min_caml_floor	# 1775
	addi	x2, x2, 168	# 1775
	lw		x1, -164(x2)	# 1775
	fmul	f1, f1, f28	# 1775
	flw		f3, -160(x2)	# 1776
	fsub	f1, f3, f1	# 1776
	lui		x4, %hi(l.29645)	# 1776
	ori		x4, x4, %lo(l.29645)	# 1776
	flw		f3, 0(x4)	# 1776
	lw		x4, -156(x2)	# 1778
	arrflw	f4, x4, x10	# 1778
	arrflw	f5, x8, x10	# 513
	fsub	f4, f4, f5	# 1778
	flw		f5, -152(x2)	# 1780
	fmul	f5, f4, f5	# 1780
	fsw		f1, -164(x2)	# 1780
	fsw		f28, -168(x2)	# 1780
	fadd	f1, f0, f5	# 1780
	sw		x1, -172(x2)	# 1780
	addi	x2, x2, -176	# 1780
	jal		x1, min_caml_floor	# 1780
	addi	x2, x2, 176	# 1780
	lw		x1, -172(x2)	# 1780
	flw		f2, -168(x2)	# 1780
	fmul	f1, f1, f2	# 1780
	fsub	f1, f4, f1	# 1781
	flw		f2, -164(x2)	# 125
	fle		f3, f2, fle.34403	# 125
	fle		f3, f1, fle.34405	# 125
	fadd	f1, f0, f26	# 1785
	jal		x0, fle_cont.34402	# 125
fle.34405:
	flw		f1, -28(x2)	# 1785
	jal		x0, fle_cont.34402	# 125
fle.34403:
	fle		f3, f1, fle.34407	# 125
	flw		f1, -28(x2)	# 1786
	jal		x0, fle_cont.34402	# 125
fle.34407:
	fadd	f1, f0, f26	# 1786
fle_cont.34402:
	lw		x4, -32(x2)	# 1783
	arrfsw	f1, x9, x4	# 1783
beq_cont.34380:
	lw		x4, -40(x2)	# 1990
	lw		x5, -112(x2)	# 1990
	sw		x9, -172(x2)	# 1990
	sw		x1, -176(x2)	# 1990
	addi	x2, x2, -180	# 1990
	jal		x1, shadow_check_one_or_matrix.2934.18032	# 1990
	addi	x2, x2, 180	# 1990
	lw		x1, -176(x2)	# 1990
	lw		x5, -40(x2)	# 1990
	beq		x4, x5, beq.34409	# 1990
	jal		x0, fle_cont.34306	# 1990
beq.34409:
	addi	x4, x0, 40568	# 51
	arrflw	f1, x4, x5	# 349
	addi	x6, x0, 40312	# 22
	arrflw	f2, x6, x5	# 349
	fmul	f1, f1, f2	# 349
	lw		x7, -32(x2)	# 349
	arrflw	f2, x4, x7	# 349
	arrflw	f3, x6, x7	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	lw		x8, -24(x2)	# 349
	arrflw	f2, x4, x8	# 349
	arrflw	f3, x6, x8	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	fsub	f1, f0, f1	# 123
	flw		f2, -28(x2)	# 121
	fle		f1, f2, fle.34411	# 121
	jal		x0, fle_cont.34410	# 121
fle.34411:
	fadd	f1, f0, f2	# 1992
fle_cont.34410:
	flw		f2, -108(x2)	# 1993
	fmul	f1, f2, f1	# 1993
	lw		x4, -124(x2)	# 518
	lw		x4, 28(x4)	# 518
	arrflw	f2, x4, x5	# 523
	fmul	f1, f1, f2	# 1993
	addi	x4, x0, 40592	# 58
	arrflw	f2, x4, x5	# 359
	lw		x6, -172(x2)	# 359
	arrflw	f3, x6, x5	# 359
	fmul	f3, f1, f3	# 359
	fadd	f2, f2, f3	# 359
	arrfsw	f2, x4, x5	# 359
	arrflw	f2, x4, x7	# 360
	arrflw	f3, x6, x7	# 360
	fmul	f3, f1, f3	# 360
	fadd	f2, f2, f3	# 360
	arrfsw	f2, x4, x7	# 360
	arrflw	f2, x4, x8	# 361
	arrflw	f3, x6, x8	# 361
	fmul	f1, f1, f3	# 361
	fadd	f1, f2, f1	# 361
	arrfsw	f1, x4, x8	# 361
fle_cont.34306:
	lw		x4, -12(x2)	# 2011
	addi	x7, x4, -2	# 2011
	lw		x4, -8(x2)	# 2011
	lw		x5, -4(x2)	# 2011
	lw		x6, 0(x2)	# 2011
	jal		x0, iter_trace_diffuse_rays.2995.18070	# 2011
do_without_neighbors.3017.18075:
	ble		x5, x30, ble.34412	# 2092
	jalr	x0, x1, 0	# 2102
ble.34412:
	lw		x7, 8(x4)	# 634
	arrlw	x7, x7, x5	# 2095
	ble		x0, x7, ble.34414	# 2095
	jalr	x0, x1, 0	# 2101
ble.34414:
	lw		x7, 12(x4)	# 641
	arrlw	x7, x7, x5	# 2097
	sw		x4, 0(x2)	# 2097
	beq		x7, x0, beq_cont.34416	# 2097
	lw		x7, 20(x4)	# 655
	lw		x9, 28(x4)	# 685
	lw		x10, 4(x4)	# 626
	lw		x11, 16(x4)	# 648
	arrlw	x7, x7, x5	# 2059
	arrflw	f1, x7, x0	# 316
	addi	x12, x0, 40592	# 58
	arrfsw	f1, x12, x0	# 316
	arrflw	f1, x7, x21	# 317
	arrfsw	f1, x12, x21	# 317
	arrflw	f1, x7, x22	# 318
	arrfsw	f1, x12, x22	# 318
	lw		x7, 24(x4)	# 671
	arrlw	x7, x7, x0	# 673
	arrlw	x9, x9, x5	# 2062
	arrlw	x10, x10, x5	# 2063
	sw		x12, -4(x2)	# 2028
	sw		x5, -8(x2)	# 2028
	sw		x11, -12(x2)	# 2028
	sw		x30, -16(x2)	# 2028
	sw		x9, -20(x2)	# 2028
	sw		x22, -24(x2)	# 2028
	sw		x0, -28(x2)	# 2028
	sw		x10, -32(x2)	# 2028
	sw		x21, -36(x2)	# 2028
	sw		x7, -40(x2)	# 2028
	beq		x7, x0, beq_cont.34418	# 2028
	addi	x15, x0, 40716	# 98
	arrlw	x15, x15, x0	# 2029
	arrflw	f1, x10, x0	# 316
	addi	x16, x0, 40648	# 78
	arrfsw	f1, x16, x0	# 316
	arrflw	f1, x10, x21	# 317
	arrfsw	f1, x16, x21	# 317
	arrflw	f1, x10, x22	# 318
	arrfsw	f1, x16, x22	# 318
	addi	x16, x0, 40000	# 6
	arrlw	x16, x16, x0	# 1372
	addi	x16, x16, -1	# 1372
	addi	x5, x16, 0	# 1372
	addi	x4, x10, 0	# 1372
	sw		x1, -44(x2)	# 1372
	addi	x2, x2, -48	# 1372
	jal		x1, setup_startp_constants.2897.18017	# 1372
	addi	x2, x2, 48	# 1372
	lw		x1, -44(x2)	# 1372
	addi	x7, x0, 118	# 2021
	lw		x5, -20(x2)	# 2021
	lw		x6, -32(x2)	# 2021
	addi	x4, x15, 0	# 2021
	sw		x1, -44(x2)	# 2021
	addi	x2, x2, -48	# 2021
	jal		x1, iter_trace_diffuse_rays.2995.18070	# 2021
	addi	x2, x2, 48	# 2021
	lw		x1, -44(x2)	# 2021
beq_cont.34418:
	lw		x4, -36(x2)	# 2032
	lw		x5, -40(x2)	# 2032
	beq		x5, x4, beq_cont.34420	# 2032
	addi	x6, x0, 40716	# 98
	arrlw	x6, x6, x4	# 2033
	lw		x7, -32(x2)	# 316
	lw		x8, -28(x2)	# 316
	arrflw	f1, x7, x8	# 316
	addi	x9, x0, 40648	# 78
	arrfsw	f1, x9, x8	# 316
	arrflw	f1, x7, x4	# 317
	arrfsw	f1, x9, x4	# 317
	lw		x10, -24(x2)	# 318
	arrflw	f1, x7, x10	# 318
	arrfsw	f1, x9, x10	# 318
	addi	x9, x0, 40000	# 6
	arrlw	x9, x9, x8	# 1372
	addi	x9, x9, -1	# 1372
	sw		x6, -44(x2)	# 1372
	addi	x5, x9, 0	# 1372
	addi	x4, x7, 0	# 1372
	sw		x1, -48(x2)	# 1372
	addi	x2, x2, -52	# 1372
	jal		x1, setup_startp_constants.2897.18017	# 1372
	addi	x2, x2, 52	# 1372
	lw		x1, -48(x2)	# 1372
	addi	x7, x0, 118	# 2021
	lw		x4, -44(x2)	# 2021
	lw		x5, -20(x2)	# 2021
	lw		x6, -32(x2)	# 2021
	sw		x1, -48(x2)	# 2021
	addi	x2, x2, -52	# 2021
	jal		x1, iter_trace_diffuse_rays.2995.18070	# 2021
	addi	x2, x2, 52	# 2021
	lw		x1, -48(x2)	# 2021
beq_cont.34420:
	lw		x4, -24(x2)	# 2036
	lw		x5, -40(x2)	# 2036
	beq		x5, x4, beq_cont.34422	# 2036
	addi	x6, x0, 40716	# 98
	arrlw	x6, x6, x4	# 2037
	lw		x7, -32(x2)	# 316
	lw		x8, -28(x2)	# 316
	arrflw	f1, x7, x8	# 316
	addi	x9, x0, 40648	# 78
	arrfsw	f1, x9, x8	# 316
	lw		x10, -36(x2)	# 317
	arrflw	f1, x7, x10	# 317
	arrfsw	f1, x9, x10	# 317
	arrflw	f1, x7, x4	# 318
	arrfsw	f1, x9, x4	# 318
	addi	x9, x0, 40000	# 6
	arrlw	x9, x9, x8	# 1372
	addi	x9, x9, -1	# 1372
	sw		x6, -48(x2)	# 1372
	addi	x5, x9, 0	# 1372
	addi	x4, x7, 0	# 1372
	sw		x1, -52(x2)	# 1372
	addi	x2, x2, -56	# 1372
	jal		x1, setup_startp_constants.2897.18017	# 1372
	addi	x2, x2, 56	# 1372
	lw		x1, -52(x2)	# 1372
	addi	x7, x0, 118	# 2021
	lw		x4, -48(x2)	# 2021
	lw		x5, -20(x2)	# 2021
	lw		x6, -32(x2)	# 2021
	sw		x1, -52(x2)	# 2021
	addi	x2, x2, -56	# 2021
	jal		x1, iter_trace_diffuse_rays.2995.18070	# 2021
	addi	x2, x2, 56	# 2021
	lw		x1, -52(x2)	# 2021
beq_cont.34422:
	lw		x5, -40(x2)	# 2040
	beq		x5, x23, beq_cont.34424	# 2040
	addi	x6, x0, 40716	# 98
	arrlw	x4, x6, x23	# 2041
	lw		x6, -32(x2)	# 316
	lw		x7, -28(x2)	# 316
	arrflw	f1, x6, x7	# 316
	addi	x8, x0, 40648	# 78
	arrfsw	f1, x8, x7	# 316
	lw		x9, -36(x2)	# 317
	arrflw	f1, x6, x9	# 317
	arrfsw	f1, x8, x9	# 317
	lw		x10, -24(x2)	# 318
	arrflw	f1, x6, x10	# 318
	arrfsw	f1, x8, x10	# 318
	addi	x8, x0, 40000	# 6
	arrlw	x8, x8, x7	# 1372
	addi	x8, x8, -1	# 1372
	sw		x4, -52(x2)	# 1372
	addi	x5, x8, 0	# 1372
	addi	x4, x6, 0	# 1372
	sw		x1, -56(x2)	# 1372
	addi	x2, x2, -60	# 1372
	jal		x1, setup_startp_constants.2897.18017	# 1372
	addi	x2, x2, 60	# 1372
	lw		x1, -56(x2)	# 1372
	addi	x7, x0, 118	# 2021
	lw		x4, -52(x2)	# 2021
	lw		x5, -20(x2)	# 2021
	lw		x6, -32(x2)	# 2021
	sw		x1, -56(x2)	# 2021
	addi	x2, x2, -60	# 2021
	jal		x1, iter_trace_diffuse_rays.2995.18070	# 2021
	addi	x2, x2, 60	# 2021
	lw		x1, -56(x2)	# 2021
beq_cont.34424:
	lw		x4, -16(x2)	# 2044
	lw		x5, -40(x2)	# 2044
	beq		x5, x4, beq_cont.34426	# 2044
	addi	x5, x0, 40716	# 98
	arrlw	x4, x5, x4	# 2045
	lw		x5, -32(x2)	# 316
	lw		x6, -28(x2)	# 316
	arrflw	f1, x5, x6	# 316
	addi	x7, x0, 40648	# 78
	arrfsw	f1, x7, x6	# 316
	lw		x8, -36(x2)	# 317
	arrflw	f1, x5, x8	# 317
	arrfsw	f1, x7, x8	# 317
	lw		x9, -24(x2)	# 318
	arrflw	f1, x5, x9	# 318
	arrfsw	f1, x7, x9	# 318
	addi	x7, x0, 40000	# 6
	arrlw	x7, x7, x6	# 1372
	addi	x7, x7, -1	# 1372
	sw		x4, -56(x2)	# 1372
	addi	x4, x5, 0	# 1372
	addi	x5, x7, 0	# 1372
	sw		x1, -60(x2)	# 1372
	addi	x2, x2, -64	# 1372
	jal		x1, setup_startp_constants.2897.18017	# 1372
	addi	x2, x2, 64	# 1372
	lw		x1, -60(x2)	# 1372
	addi	x7, x0, 118	# 2021
	lw		x4, -56(x2)	# 2021
	lw		x5, -20(x2)	# 2021
	lw		x6, -32(x2)	# 2021
	sw		x1, -60(x2)	# 2021
	addi	x2, x2, -64	# 2021
	jal		x1, iter_trace_diffuse_rays.2995.18070	# 2021
	addi	x2, x2, 64	# 2021
	lw		x1, -60(x2)	# 2021
beq_cont.34426:
	lw		x4, -12(x2)	# 2064
	lw		x5, -8(x2)	# 2064
	arrlw	x4, x4, x5	# 2064
	addi	x6, x0, 40604	# 61
	lw		x7, -28(x2)	# 389
	arrflw	f1, x6, x7	# 389
	arrflw	f2, x4, x7	# 389
	lw		x8, -4(x2)	# 389
	arrflw	f3, x8, x7	# 389
	fmul	f2, f2, f3	# 389
	fadd	f1, f1, f2	# 389
	arrfsw	f1, x6, x7	# 389
	lw		x7, -36(x2)	# 390
	arrflw	f1, x6, x7	# 390
	arrflw	f2, x4, x7	# 390
	arrflw	f3, x8, x7	# 390
	fmul	f2, f2, f3	# 390
	fadd	f1, f1, f2	# 390
	arrfsw	f1, x6, x7	# 390
	lw		x7, -24(x2)	# 391
	arrflw	f1, x6, x7	# 391
	arrflw	f2, x4, x7	# 391
	arrflw	f3, x8, x7	# 391
	fmul	f2, f2, f3	# 391
	fadd	f1, f1, f2	# 391
	arrfsw	f1, x6, x7	# 391
beq_cont.34416:
	addi	x5, x5, 1	# 2100
	lw		x4, 0(x2)	# 2100
	jal		x0, do_without_neighbors.3017.18075	# 2100
try_exploit_neighbors.3033.18078:
	arrlw	x10, x7, x4	# 2144
	ble		x9, x30, ble.34428	# 2145
	jalr	x0, x1, 0	# 2164
ble.34428:
	lw		x11, 8(x10)	# 634
	arrlw	x11, x11, x9	# 2120
	ble		x0, x11, ble.34430	# 2148
	jalr	x0, x1, 0	# 2163
ble.34430:
	arrlw	x13, x6, x4	# 2128
	lw		x14, 8(x13)	# 634
	arrlw	x14, x14, x9	# 2120
	beq		x14, x11, beq.34433	# 2128
	addi	x11, x0, 0	# 2136
	jal		x0, beq_cont.34432	# 2128
beq.34433:
	arrlw	x14, x8, x4	# 2129
	lw		x14, 8(x14)	# 634
	arrlw	x14, x14, x9	# 2120
	beq		x14, x11, beq.34435	# 2129
	addi	x11, x0, 0	# 2135
	jal		x0, beq_cont.34432	# 2129
beq.34435:
	addi	x14, x4, -1	# 2130
	arrlw	x14, x7, x14	# 2130
	lw		x14, 8(x14)	# 634
	arrlw	x14, x14, x9	# 2120
	beq		x14, x11, beq.34437	# 2130
	addi	x11, x0, 0	# 2134
	jal		x0, beq_cont.34432	# 2130
beq.34437:
	addi	x14, x4, 1	# 2131
	arrlw	x14, x7, x14	# 2131
	lw		x14, 8(x14)	# 634
	arrlw	x14, x14, x9	# 2120
	beq		x14, x11, beq.34439	# 2131
	addi	x11, x0, 0	# 2133
	jal		x0, beq_cont.34432	# 2131
beq.34439:
	addi	x11, x0, 1	# 2132
beq_cont.34432:
	beq		x11, x0, beq.34440	# 2150
	lw		x11, 12(x10)	# 641
	arrlw	x11, x11, x9	# 2154
	beq		x11, x0, beq_cont.34441	# 2154
	lw		x11, 20(x13)	# 655
	addi	x14, x4, -1	# 2074
	arrlw	x14, x7, x14	# 2074
	lw		x14, 20(x14)	# 655
	lw		x15, 20(x10)	# 655
	addi	x16, x4, 1	# 2076
	arrlw	x16, x7, x16	# 2076
	lw		x16, 20(x16)	# 655
	arrlw	x17, x8, x4	# 2077
	lw		x17, 20(x17)	# 655
	arrlw	x11, x11, x9	# 2079
	arrflw	f1, x11, x0	# 316
	addi	x18, x0, 40592	# 58
	arrfsw	f1, x18, x0	# 316
	arrflw	f1, x11, x21	# 317
	arrfsw	f1, x18, x21	# 317
	arrflw	f1, x11, x22	# 318
	arrfsw	f1, x18, x22	# 318
	arrlw	x11, x14, x9	# 2080
	arrflw	f1, x18, x0	# 366
	arrflw	f2, x11, x0	# 366
	fadd	f1, f1, f2	# 366
	arrfsw	f1, x18, x0	# 366
	arrflw	f1, x18, x21	# 367
	arrflw	f2, x11, x21	# 367
	fadd	f1, f1, f2	# 367
	arrfsw	f1, x18, x21	# 367
	arrflw	f1, x18, x22	# 368
	arrflw	f2, x11, x22	# 368
	fadd	f1, f1, f2	# 368
	arrfsw	f1, x18, x22	# 368
	arrlw	x11, x15, x9	# 2081
	arrflw	f1, x18, x0	# 366
	arrflw	f2, x11, x0	# 366
	fadd	f1, f1, f2	# 366
	arrfsw	f1, x18, x0	# 366
	arrflw	f1, x18, x21	# 367
	arrflw	f2, x11, x21	# 367
	fadd	f1, f1, f2	# 367
	arrfsw	f1, x18, x21	# 367
	arrflw	f1, x18, x22	# 368
	arrflw	f2, x11, x22	# 368
	fadd	f1, f1, f2	# 368
	arrfsw	f1, x18, x22	# 368
	arrlw	x11, x16, x9	# 2082
	arrflw	f1, x18, x0	# 366
	arrflw	f2, x11, x0	# 366
	fadd	f1, f1, f2	# 366
	arrfsw	f1, x18, x0	# 366
	arrflw	f1, x18, x21	# 367
	arrflw	f2, x11, x21	# 367
	fadd	f1, f1, f2	# 367
	arrfsw	f1, x18, x21	# 367
	arrflw	f1, x18, x22	# 368
	arrflw	f2, x11, x22	# 368
	fadd	f1, f1, f2	# 368
	arrfsw	f1, x18, x22	# 368
	arrlw	x11, x17, x9	# 2083
	arrflw	f1, x18, x0	# 366
	arrflw	f2, x11, x0	# 366
	fadd	f1, f1, f2	# 366
	arrfsw	f1, x18, x0	# 366
	arrflw	f1, x18, x21	# 367
	arrflw	f2, x11, x21	# 367
	fadd	f1, f1, f2	# 367
	arrfsw	f1, x18, x21	# 367
	arrflw	f1, x18, x22	# 368
	arrflw	f2, x11, x22	# 368
	fadd	f1, f1, f2	# 368
	arrfsw	f1, x18, x22	# 368
	lw		x10, 16(x10)	# 648
	arrlw	x10, x10, x9	# 2086
	addi	x11, x0, 40604	# 61
	arrflw	f1, x11, x0	# 389
	arrflw	f2, x10, x0	# 389
	arrflw	f3, x18, x0	# 389
	fmul	f2, f2, f3	# 389
	fadd	f1, f1, f2	# 389
	arrfsw	f1, x11, x0	# 389
	arrflw	f1, x11, x21	# 390
	arrflw	f2, x10, x21	# 390
	arrflw	f3, x18, x21	# 390
	fmul	f2, f2, f3	# 390
	fadd	f1, f1, f2	# 390
	arrfsw	f1, x11, x21	# 390
	arrflw	f1, x11, x22	# 391
	arrflw	f2, x10, x22	# 391
	arrflw	f3, x18, x22	# 391
	fmul	f2, f2, f3	# 391
	fadd	f1, f1, f2	# 391
	arrfsw	f1, x11, x22	# 391
beq_cont.34441:
	addi	x9, x9, 1	# 2159
	jal		x0, try_exploit_neighbors.3033.18078	# 2159
beq.34440:
	addi	x5, x9, 0	# 2162
	addi	x4, x10, 0	# 2162
	jal		x0, do_without_neighbors.3017.18075	# 2162
pretrace_diffuse_rays.3048.18085:
	ble		x5, x30, ble.34443	# 2220
	jalr	x0, x1, 0	# 2244
ble.34443:
	lw		x6, 8(x4)	# 634
	arrlw	x6, x6, x5	# 2120
	ble		x0, x6, ble.34445	# 2224
	jalr	x0, x1, 0	# 2243
ble.34445:
	lw		x6, 12(x4)	# 641
	arrlw	x6, x6, x5	# 2227
	sw		x5, 0(x2)	# 2227
	beq		x6, x0, beq_cont.34447	# 2227
	lw		x6, 24(x4)	# 671
	arrlw	x6, x6, x0	# 673
	addi	x8, x0, 40592	# 58
	arrfsw	f0, x8, x0	# 304
	arrfsw	f0, x8, x21	# 305
	arrfsw	f0, x8, x22	# 306
	lw		x11, 28(x4)	# 685
	lw		x12, 4(x4)	# 626
	addi	x13, x0, 40716	# 98
	arrlw	x6, x13, x6	# 2236
	arrlw	x11, x11, x5	# 2237
	arrlw	x12, x12, x5	# 2238
	arrflw	f1, x12, x0	# 316
	addi	x13, x0, 40648	# 78
	arrfsw	f1, x13, x0	# 316
	arrflw	f1, x12, x21	# 317
	arrfsw	f1, x13, x21	# 317
	arrflw	f1, x12, x22	# 318
	arrfsw	f1, x13, x22	# 318
	addi	x13, x0, 40000	# 6
	arrlw	x13, x13, x0	# 1372
	addi	x13, x13, -1	# 1372
	sw		x22, -4(x2)	# 1372
	sw		x21, -8(x2)	# 1372
	sw		x0, -12(x2)	# 1372
	sw		x8, -16(x2)	# 1372
	sw		x4, -20(x2)	# 1372
	sw		x12, -24(x2)	# 1372
	sw		x11, -28(x2)	# 1372
	sw		x6, -32(x2)	# 1372
	addi	x5, x13, 0	# 1372
	addi	x4, x12, 0	# 1372
	sw		x1, -36(x2)	# 1372
	addi	x2, x2, -40	# 1372
	jal		x1, setup_startp_constants.2897.18017	# 1372
	addi	x2, x2, 40	# 1372
	lw		x1, -36(x2)	# 1372
	addi	x7, x0, 118	# 2021
	lw		x4, -32(x2)	# 2021
	lw		x5, -28(x2)	# 2021
	lw		x6, -24(x2)	# 2021
	sw		x1, -36(x2)	# 2021
	addi	x2, x2, -40	# 2021
	jal		x1, iter_trace_diffuse_rays.2995.18070	# 2021
	addi	x2, x2, 40	# 2021
	lw		x1, -36(x2)	# 2021
	lw		x4, -20(x2)	# 655
	lw		x5, 20(x4)	# 655
	lw		x6, 0(x2)	# 2240
	arrlw	x5, x5, x6	# 2240
	lw		x7, -16(x2)	# 316
	lw		x8, -12(x2)	# 316
	arrflw	f1, x7, x8	# 316
	arrfsw	f1, x5, x8	# 316
	lw		x8, -8(x2)	# 317
	arrflw	f1, x7, x8	# 317
	arrfsw	f1, x5, x8	# 317
	lw		x8, -4(x2)	# 318
	arrflw	f1, x7, x8	# 318
	arrfsw	f1, x5, x8	# 318
beq_cont.34447:
	lw		x5, 0(x2)	# 2242
	addi	x5, x5, 1	# 2242
	jal		x0, pretrace_diffuse_rays.3048.18085	# 2242
pretrace_pixels.3051.18088:
	add		x7, x0, x0	# 6
	ble		x0, x5, ble.34449	# 2250
	jalr	x0, x1, 0	# 2270
ble.34449:
	addi	x8, x0, 40632	# 71
	arrflw	f4, x8, x0	# 2252
	addi	x8, x0, 40624	# 68
	arrlw	x8, x8, x0	# 2252
	sub		x8, x5, x8	# 2252
	sw		x6, 0(x2)	# 2252
	sw		x5, -4(x2)	# 2252
	sw		x4, -8(x2)	# 2252
	fsw		f2, -12(x2)	# 2252
	fsw		f1, -16(x2)	# 2252
	addi	x4, x8, 0	# 2252
	sw		x1, -20(x2)	# 2252
	addi	x2, x2, -24	# 2252
	jal		x1, min_caml_float_of_int	# 2252
	addi	x2, x2, 24	# 2252
	lw		x1, -20(x2)	# 2252
	fmul	f1, f4, f1	# 2252
	addi	x4, x0, 40660	# 82
	arrflw	f2, x4, x0	# 2253
	fmul	f2, f1, f2	# 2253
	flw		f4, -16(x2)	# 2253
	fadd	f2, f2, f4	# 2253
	addi	x5, x0, 40696	# 90
	arrfsw	f2, x5, x0	# 2253
	arrflw	f2, x4, x21	# 2254
	fmul	f2, f1, f2	# 2254
	flw		f5, -12(x2)	# 2254
	fadd	f2, f2, f5	# 2254
	arrfsw	f2, x5, x21	# 2254
	arrflw	f2, x4, x22	# 2255
	fmul	f1, f1, f2	# 2255
	fadd	f1, f1, f3	# 2255
	arrfsw	f1, x5, x22	# 2255
	arrflw	f1, x5, x0	# 340
	fmul	f2, f1, f1	# 127
	arrflw	f6, x5, x21	# 340
	fmul	f7, f6, f6	# 127
	fadd	f2, f2, f7	# 340
	arrflw	f7, x5, x22	# 340
	fmul	f8, f7, f7	# 127
	fadd	f2, f2, f8	# 340
	fsqrt	f2, f2	# 340
	fadd	f8, f0, f0	# 11
	feq		f2, f0, feq.34452	# 120
	fdiv	f2, f30, f2	# 341
	jal		x0, feq_cont.34451	# 120
feq.34452:
	fadd	f2, f0, f30	# 341
feq_cont.34451:
	fmul	f1, f1, f2	# 342
	arrfsw	f1, x5, x0	# 342
	fmul	f1, f6, f2	# 343
	arrfsw	f1, x5, x21	# 343
	fmul	f1, f7, f2	# 344
	arrfsw	f1, x5, x22	# 344
	addi	x4, x0, 40604	# 61
	arrfsw	f0, x4, x0	# 304
	arrfsw	f0, x4, x21	# 305
	arrfsw	f0, x4, x22	# 306
	addi	x9, x0, 40300	# 19
	arrflw	f1, x9, x0	# 316
	addi	x10, x0, 40636	# 75
	arrfsw	f1, x10, x0	# 316
	arrflw	f1, x9, x21	# 317
	arrfsw	f1, x10, x21	# 317
	arrflw	f1, x9, x22	# 318
	arrfsw	f1, x10, x22	# 318
	fadd	f1, f0, f30	# 2261
	lw		x9, -8(x2)	# 2261
	lw		x10, -4(x2)	# 2261
	arrlw	x11, x9, x10	# 2261
	fsw		f3, -20(x2)	# 2261
	sw		x22, -24(x2)	# 2261
	sw		x21, -28(x2)	# 2261
	sw		x0, -32(x2)	# 2261
	sw		x4, -36(x2)	# 2261
	sw		x11, -40(x2)	# 2261
	addi	x6, x11, 0	# 2261
	addi	x4, x0, 0	# 2261
	fadd	f2, f0, f0	# 2261
	sw		x1, -44(x2)	# 2261
	addi	x2, x2, -48	# 2261
	jal		x1, trace_ray.2986.18064	# 2261
	addi	x2, x2, 48	# 2261
	lw		x1, -44(x2)	# 2261
	lw		x4, -40(x2)	# 619
	lw		x5, 0(x4)	# 619
	lw		x6, -36(x2)	# 316
	lw		x7, -32(x2)	# 316
	arrflw	f1, x6, x7	# 316
	arrfsw	f1, x5, x7	# 316
	lw		x8, -28(x2)	# 317
	arrflw	f1, x6, x8	# 317
	arrfsw	f1, x5, x8	# 317
	lw		x8, -24(x2)	# 318
	arrflw	f1, x6, x8	# 318
	arrfsw	f1, x5, x8	# 318
	lw		x5, 24(x4)	# 678
	lw		x6, 0(x2)	# 680
	arrsw	x6, x5, x7	# 680
	addi	x5, x7, 0	# 2266
	sw		x1, -44(x2)	# 2266
	addi	x2, x2, -48	# 2266
	jal		x1, pretrace_diffuse_rays.3048.18085	# 2266
	addi	x2, x2, 48	# 2266
	lw		x1, -44(x2)	# 2266
	lw		x4, -4(x2)	# 2268
	addi	x5, x4, -1	# 2268
	lw		x4, 0(x2)	# 281
	addi	x4, x4, 1	# 281
	addi	x6, x0, 5	# 98
	ble		x6, x4, ble.34454	# 282
	addi	x6, x4, 0	# 282
	jal		x0, ble_cont.34453	# 282
ble.34454:
	addi	x6, x4, -5	# 282
ble_cont.34453:
	lw		x4, -8(x2)	# 2268
	flw		f1, -16(x2)	# 2268
	flw		f2, -12(x2)	# 2268
	flw		f3, -20(x2)	# 2268
	jal		x0, pretrace_pixels.3051.18088	# 2268
scan_pixel.3062.18095:
	addi	x10, x0, 40616	# 65
	add		x11, x0, x0	# 6
	arrlw	x12, x10, x0	# 2291
	ble		x12, x4, ble.34455	# 2291
	arrlw	x13, x7, x4	# 2294
	lw		x14, 0(x13)	# 619
	arrflw	f1, x14, x0	# 316
	addi	x15, x0, 40604	# 61
	arrfsw	f1, x15, x0	# 316
	arrflw	f1, x14, x21	# 317
	arrfsw	f1, x15, x21	# 317
	arrflw	f1, x14, x22	# 318
	arrfsw	f1, x15, x22	# 318
	arrlw	x10, x10, x21	# 2107
	addi	x14, x5, 1	# 2107
	ble		x10, x14, ble.34457	# 2107
	ble		x5, x0, ble.34459	# 2108
	addi	x10, x4, 1	# 2109
	ble		x12, x10, ble.34461	# 2109
	ble		x4, x0, ble.34463	# 2110
	addi	x10, x0, 1	# 2111
	jal		x0, ble_cont.34456	# 2110
ble.34463:
	addi	x10, x0, 0	# 2112
	jal		x0, ble_cont.34456	# 2109
ble.34461:
	addi	x10, x0, 0	# 2113
	jal		x0, ble_cont.34456	# 2108
ble.34459:
	addi	x10, x0, 0	# 2114
	jal		x0, ble_cont.34456	# 2107
ble.34457:
	addi	x10, x0, 0	# 2115
ble_cont.34456:
	sw		x8, 0(x2)	# 2297
	sw		x7, -4(x2)	# 2297
	sw		x6, -8(x2)	# 2297
	sw		x5, -12(x2)	# 2297
	sw		x4, -16(x2)	# 2297
	sw		x22, -20(x2)	# 2297
	sw		x21, -24(x2)	# 2297
	sw		x0, -28(x2)	# 2297
	sw		x15, -32(x2)	# 2297
	sw		x9, -36(x2)	# 2297
	beq		x10, x0, beq.34465	# 2297
	addi	x9, x0, 0	# 2298
	sw		x1, -40(x2)	# 2298
	addi	x2, x2, -44	# 2298
	jal		x1, try_exploit_neighbors.3033.18078	# 2298
	addi	x2, x2, 44	# 2298
	lw		x1, -40(x2)	# 2298
	jal		x0, beq_cont.34464	# 2297
beq.34465:
	addi	x5, x0, 0	# 2300
	addi	x4, x13, 0	# 2300
	sw		x1, -40(x2)	# 2300
	addi	x2, x2, -44	# 2300
	jal		x1, do_without_neighbors.3017.18075	# 2300
	addi	x2, x2, 44	# 2300
	lw		x1, -40(x2)	# 2300
beq_cont.34464:
	lw		x5, -36(x2)	# 2197
	beq		x5, x23, beq.34467	# 2197
	lw		x4, -32(x2)	# 2205
	lw		x6, -28(x2)	# 2205
	arrflw	f1, x4, x6	# 2205
	sw		x1, -40(x2)	# 2191
	addi	x2, x2, -44	# 2191
	jal		x1, min_caml_int_of_float	# 2191
	addi	x2, x2, 44	# 2191
	lw		x1, -40(x2)	# 2191
	addi	x5, x0, 255	# 2192
	ble		x4, x5, ble.34469	# 2192
	addi	x4, x0, 255	# 2192
	jal		x0, ble_cont.34468	# 2192
ble.34469:
	lw		x6, -28(x2)	# 2192
	ble		x6, x4, ble_cont.34468	# 2192
	addi	x4, x0, 0	# 2192
ble_cont.34468:
	sw		x1, -40(x2)	# 2193
	addi	x2, x2, -44	# 2193
	jal		x1, min_caml_print_char	# 2193
	addi	x2, x2, 44	# 2193
	lw		x1, -40(x2)	# 2193
	lw		x4, -32(x2)	# 2206
	lw		x6, -24(x2)	# 2206
	arrflw	f1, x4, x6	# 2206
	sw		x5, -40(x2)	# 2191
	sw		x1, -44(x2)	# 2191
	addi	x2, x2, -48	# 2191
	jal		x1, min_caml_int_of_float	# 2191
	addi	x2, x2, 48	# 2191
	lw		x1, -44(x2)	# 2191
	lw		x5, -40(x2)	# 2192
	ble		x4, x5, ble.34473	# 2192
	addi	x4, x0, 255	# 2192
	jal		x0, ble_cont.34472	# 2192
ble.34473:
	lw		x6, -28(x2)	# 2192
	ble		x6, x4, ble_cont.34472	# 2192
	addi	x4, x0, 0	# 2192
ble_cont.34472:
	sw		x1, -44(x2)	# 2193
	addi	x2, x2, -48	# 2193
	jal		x1, min_caml_print_char	# 2193
	addi	x2, x2, 48	# 2193
	lw		x1, -44(x2)	# 2193
	lw		x4, -32(x2)	# 2207
	lw		x6, -20(x2)	# 2207
	arrflw	f1, x4, x6	# 2207
	sw		x1, -44(x2)	# 2191
	addi	x2, x2, -48	# 2191
	jal		x1, min_caml_int_of_float	# 2191
	addi	x2, x2, 48	# 2191
	lw		x1, -44(x2)	# 2191
	lw		x5, -40(x2)	# 2192
	ble		x4, x5, ble.34477	# 2192
	addi	x4, x0, 255	# 2192
	jal		x0, ble_cont.34476	# 2192
ble.34477:
	lw		x5, -28(x2)	# 2192
	ble		x5, x4, ble_cont.34476	# 2192
	addi	x4, x0, 0	# 2192
ble_cont.34476:
	sw		x1, -44(x2)	# 2193
	addi	x2, x2, -48	# 2193
	jal		x1, min_caml_print_char	# 2193
	addi	x2, x2, 48	# 2193
	lw		x1, -44(x2)	# 2193
	jal		x0, beq_cont.34466	# 2197
beq.34467:
	lw		x4, -32(x2)	# 2198
	lw		x6, -28(x2)	# 2198
	arrflw	f1, x4, x6	# 2198
	sw		x1, -44(x2)	# 2185
	addi	x2, x2, -48	# 2185
	jal		x1, min_caml_int_of_float	# 2185
	addi	x2, x2, 48	# 2185
	lw		x1, -44(x2)	# 2185
	addi	x5, x0, 255	# 2186
	ble		x4, x5, ble.34481	# 2186
	addi	x4, x0, 255	# 2186
	jal		x0, ble_cont.34480	# 2186
ble.34481:
	lw		x6, -28(x2)	# 2186
	ble		x6, x4, ble_cont.34480	# 2186
	addi	x4, x0, 0	# 2186
ble_cont.34480:
	addi	x6, x0, 100	# 238
	sw		x4, -44(x2)	# 238
	ble		x6, x4, ble_cont.34484	# 238
	addi	x7, x0, 48	# 238
	addi	x4, x7, 0	# 238
	sw		x1, -48(x2)	# 238
	addi	x2, x2, -52	# 238
	jal		x1, min_caml_print_char	# 238
	addi	x2, x2, 52	# 238
	lw		x1, -48(x2)	# 238
ble_cont.34484:
	addi	x4, x0, 10	# 239
	lw		x7, -44(x2)	# 239
	sw		x4, -48(x2)	# 239
	ble		x4, x7, ble_cont.34486	# 239
	addi	x8, x0, 48	# 239
	addi	x4, x8, 0	# 239
	sw		x1, -52(x2)	# 239
	addi	x2, x2, -56	# 239
	jal		x1, min_caml_print_char	# 239
	addi	x2, x2, 56	# 239
	lw		x1, -52(x2)	# 239
ble_cont.34486:
	sw		x6, -52(x2)	# 240
	sw		x5, -56(x2)	# 240
	addi	x4, x7, 0	# 240
	sw		x1, -60(x2)	# 240
	addi	x2, x2, -64	# 240
	jal		x1, print_int_main.2648.18004	# 240
	addi	x2, x2, 64	# 240
	lw		x1, -60(x2)	# 240
	addi	x4, x0, 32	# 2199
	sw		x4, -60(x2)	# 2199
	sw		x1, -64(x2)	# 2199
	addi	x2, x2, -68	# 2199
	jal		x1, min_caml_print_char	# 2199
	addi	x2, x2, 68	# 2199
	lw		x1, -64(x2)	# 2199
	lw		x4, -32(x2)	# 2200
	lw		x5, -24(x2)	# 2200
	arrflw	f1, x4, x5	# 2200
	sw		x1, -64(x2)	# 2185
	addi	x2, x2, -68	# 2185
	jal		x1, min_caml_int_of_float	# 2185
	addi	x2, x2, 68	# 2185
	lw		x1, -64(x2)	# 2185
	lw		x5, -56(x2)	# 2186
	ble		x4, x5, ble.34489	# 2186
	addi	x4, x0, 255	# 2186
	jal		x0, ble_cont.34488	# 2186
ble.34489:
	lw		x6, -28(x2)	# 2186
	ble		x6, x4, ble_cont.34488	# 2186
	addi	x4, x0, 0	# 2186
ble_cont.34488:
	lw		x6, -52(x2)	# 238
	sw		x4, -64(x2)	# 238
	ble		x6, x4, ble_cont.34492	# 238
	addi	x7, x0, 48	# 238
	addi	x4, x7, 0	# 238
	sw		x1, -68(x2)	# 238
	addi	x2, x2, -72	# 238
	jal		x1, min_caml_print_char	# 238
	addi	x2, x2, 72	# 238
	lw		x1, -68(x2)	# 238
ble_cont.34492:
	lw		x4, -64(x2)	# 239
	lw		x7, -48(x2)	# 239
	ble		x7, x4, ble_cont.34494	# 239
	addi	x8, x0, 48	# 239
	addi	x4, x8, 0	# 239
	sw		x1, -68(x2)	# 239
	addi	x2, x2, -72	# 239
	jal		x1, min_caml_print_char	# 239
	addi	x2, x2, 72	# 239
	lw		x1, -68(x2)	# 239
ble_cont.34494:
	lw		x4, -64(x2)	# 240
	sw		x1, -68(x2)	# 240
	addi	x2, x2, -72	# 240
	jal		x1, print_int_main.2648.18004	# 240
	addi	x2, x2, 72	# 240
	lw		x1, -68(x2)	# 240
	lw		x4, -60(x2)	# 2201
	sw		x1, -68(x2)	# 2201
	addi	x2, x2, -72	# 2201
	jal		x1, min_caml_print_char	# 2201
	addi	x2, x2, 72	# 2201
	lw		x1, -68(x2)	# 2201
	lw		x4, -32(x2)	# 2202
	lw		x5, -20(x2)	# 2202
	arrflw	f1, x4, x5	# 2202
	sw		x1, -68(x2)	# 2185
	addi	x2, x2, -72	# 2185
	jal		x1, min_caml_int_of_float	# 2185
	addi	x2, x2, 72	# 2185
	lw		x1, -68(x2)	# 2185
	lw		x5, -56(x2)	# 2186
	ble		x4, x5, ble.34497	# 2186
	addi	x4, x0, 255	# 2186
	jal		x0, ble_cont.34496	# 2186
ble.34497:
	lw		x5, -28(x2)	# 2186
	ble		x5, x4, ble_cont.34496	# 2186
	addi	x4, x0, 0	# 2186
ble_cont.34496:
	lw		x5, -52(x2)	# 238
	sw		x4, -68(x2)	# 238
	ble		x5, x4, ble_cont.34500	# 238
	addi	x5, x0, 48	# 238
	addi	x4, x5, 0	# 238
	sw		x1, -72(x2)	# 238
	addi	x2, x2, -76	# 238
	jal		x1, min_caml_print_char	# 238
	addi	x2, x2, 76	# 238
	lw		x1, -72(x2)	# 238
ble_cont.34500:
	lw		x4, -68(x2)	# 239
	lw		x5, -48(x2)	# 239
	ble		x5, x4, ble_cont.34502	# 239
	addi	x6, x0, 48	# 239
	addi	x4, x6, 0	# 239
	sw		x1, -72(x2)	# 239
	addi	x2, x2, -76	# 239
	jal		x1, min_caml_print_char	# 239
	addi	x2, x2, 76	# 239
	lw		x1, -72(x2)	# 239
ble_cont.34502:
	lw		x4, -68(x2)	# 240
	sw		x1, -72(x2)	# 240
	addi	x2, x2, -76	# 240
	jal		x1, print_int_main.2648.18004	# 240
	addi	x2, x2, 76	# 240
	lw		x1, -72(x2)	# 240
	lw		x4, -48(x2)	# 2203
	sw		x1, -72(x2)	# 2203
	addi	x2, x2, -76	# 2203
	jal		x1, min_caml_print_char	# 2203
	addi	x2, x2, 76	# 2203
	lw		x1, -72(x2)	# 2203
beq_cont.34466:
	lw		x4, -16(x2)	# 2305
	addi	x4, x4, 1	# 2305
	lw		x5, -12(x2)	# 2305
	lw		x6, -8(x2)	# 2305
	lw		x7, -4(x2)	# 2305
	lw		x8, 0(x2)	# 2305
	lw		x9, -36(x2)	# 2305
	jal		x0, scan_pixel.3062.18095	# 2305
ble.34455:
	jalr	x0, x1, 0	# 2306
scan_line.3069.18102:
	addi	x10, x0, 40616	# 65
	arrlw	x12, x10, x21	# 2312
	ble		x12, x4, ble.34505	# 2312
	addi	x12, x12, -1	# 2314
	sw		x8, 0(x2)	# 2314
	sw		x9, -4(x2)	# 2314
	sw		x7, -8(x2)	# 2314
	sw		x6, -12(x2)	# 2314
	sw		x5, -16(x2)	# 2314
	sw		x4, -20(x2)	# 2314
	ble		x12, x4, ble_cont.34506	# 2314
	addi	x12, x4, 1	# 2315
	addi	x13, x0, 40632	# 71
	arrflw	f1, x13, x0	# 2275
	addi	x13, x0, 40624	# 68
	arrlw	x13, x13, x21	# 2275
	sub		x12, x12, x13	# 2275
	fsw		f1, -24(x2)	# 2275
	addi	x4, x12, 0	# 2275
	sw		x1, -28(x2)	# 2275
	addi	x2, x2, -32	# 2275
	jal		x1, min_caml_float_of_int	# 2275
	addi	x2, x2, 32	# 2275
	lw		x1, -28(x2)	# 2275
	flw		f2, -24(x2)	# 2275
	fmul	f1, f2, f1	# 2275
	addi	x4, x0, 40672	# 84
	arrflw	f2, x4, x0	# 2278
	fmul	f2, f1, f2	# 2278
	addi	x5, x0, 40684	# 86
	arrflw	f3, x5, x0	# 2278
	fadd	f2, f2, f3	# 2278
	arrflw	f3, x4, x21	# 2279
	fmul	f3, f1, f3	# 2279
	arrflw	f4, x5, x21	# 2279
	fadd	f3, f3, f4	# 2279
	arrflw	f4, x4, x22	# 2280
	fmul	f1, f1, f4	# 2280
	arrflw	f4, x5, x22	# 2280
	fadd	f1, f1, f4	# 2280
	arrlw	x4, x10, x0	# 2281
	addi	x5, x4, -1	# 2281
	addi	x6, x8, 0	# 2281
	addi	x4, x7, 0	# 2281
	fadd	f31, f0, f3	# 2281
	fadd	f3, f0, f1	# 2281
	fadd	f1, f0, f2	# 2281
	fadd	f2, f0, f31	# 2281
	sw		x1, -28(x2)	# 2281
	addi	x2, x2, -32	# 2281
	jal		x1, pretrace_pixels.3051.18088	# 2281
	addi	x2, x2, 32	# 2281
	lw		x1, -28(x2)	# 2281
ble_cont.34506:
	add		x4, x0, x0	# 6
	lw		x5, -20(x2)	# 2317
	lw		x6, -16(x2)	# 2317
	lw		x7, -12(x2)	# 2317
	lw		x8, -8(x2)	# 2317
	lw		x9, -4(x2)	# 2317
	sw		x1, -28(x2)	# 2317
	addi	x2, x2, -32	# 2317
	jal		x1, scan_pixel.3062.18095	# 2317
	addi	x2, x2, 32	# 2317
	lw		x1, -28(x2)	# 2317
	lw		x4, -20(x2)	# 2318
	addi	x4, x4, 1	# 2318
	lw		x5, 0(x2)	# 281
	addi	x5, x5, 2	# 281
	addi	x6, x0, 5	# 98
	ble		x6, x5, ble.34509	# 282
	addi	x8, x5, 0	# 282
	jal		x0, ble_cont.34508	# 282
ble.34509:
	addi	x8, x5, -5	# 282
ble_cont.34508:
	lw		x5, -12(x2)	# 2318
	lw		x6, -8(x2)	# 2318
	lw		x7, -16(x2)	# 2318
	lw		x9, -4(x2)	# 2318
	jal		x0, scan_line.3069.18102	# 2318
ble.34505:
	jalr	x0, x1, 0	# 2319
init_line_elements.3080.18109:
	add		x6, x0, x0	# 6
	ble		x0, x5, ble.34511	# 2354
	jalr	x0, x1, 0	# 2358
ble.34511:
	fadd	f1, f0, f0	# 11
	add		x7, x0, x23	# 16
	sw		x5, 0(x2)	# 2341
	sw		x4, -4(x2)	# 2341
	fsw		f0, -8(x2)	# 2341
	sw		x23, -12(x2)	# 2341
	addi	x4, x23, 0	# 2341
	sw		x1, -16(x2)	# 2341
	addi	x2, x2, -20	# 2341
	jal		x1, min_caml_create_float_array	# 2341
	addi	x2, x2, 20	# 2341
	lw		x1, -16(x2)	# 2341
	lw		x5, -12(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x4, -16(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -20(x2)	# 2329
	addi	x2, x2, -24	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 24	# 2329
	lw		x1, -20(x2)	# 2329
	addi	x5, x4, 0	# 2329
	addi	x4, x0, 5	# 98
	sw		x0, -20(x2)	# 2330
	sw		x4, -24(x2)	# 2330
	sw		x1, -28(x2)	# 2330
	addi	x2, x2, -32	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 32	# 2330
	lw		x1, -28(x2)	# 2330
	lw		x5, -12(x2)	# 2331
	flw		f1, -8(x2)	# 2331
	sw		x4, -28(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -32(x2)	# 2331
	addi	x2, x2, -36	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 36	# 2331
	lw		x1, -32(x2)	# 2331
	add		x5, x0, x21	# 6
	lw		x6, -28(x2)	# 2331
	arrsw	x4, x6, x21	# 2331
	lw		x4, -12(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x21, -32(x2)	# 2332
	sw		x1, -36(x2)	# 2332
	addi	x2, x2, -40	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 40	# 2332
	lw		x1, -36(x2)	# 2332
	arrsw	x4, x6, x22	# 2332
	lw		x4, -12(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x22, -36(x2)	# 2333
	sw		x1, -40(x2)	# 2333
	addi	x2, x2, -44	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 44	# 2333
	lw		x1, -40(x2)	# 2333
	lw		x5, -12(x2)	# 2333
	arrsw	x4, x6, x5	# 2333
	flw		f1, -8(x2)	# 2334
	sw		x30, -40(x2)	# 2334
	addi	x4, x5, 0	# 2334
	sw		x1, -44(x2)	# 2334
	addi	x2, x2, -48	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 48	# 2334
	lw		x1, -44(x2)	# 2334
	lw		x5, -40(x2)	# 2334
	arrsw	x4, x6, x5	# 2334
	lw		x4, -24(x2)	# 2343
	lw		x7, -20(x2)	# 2343
	addi	x5, x7, 0	# 2343
	sw		x1, -44(x2)	# 2343
	addi	x2, x2, -48	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 48	# 2343
	lw		x1, -44(x2)	# 2343
	lw		x5, -24(x2)	# 2344
	lw		x6, -20(x2)	# 2344
	sw		x4, -44(x2)	# 2344
	addi	x4, x5, 0	# 2344
	addi	x5, x6, 0	# 2344
	sw		x1, -48(x2)	# 2344
	addi	x2, x2, -52	# 2344
	jal		x1, min_caml_create_array	# 2344
	addi	x2, x2, 52	# 2344
	lw		x1, -48(x2)	# 2344
	lw		x5, -12(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x4, -48(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -52(x2)	# 2329
	addi	x2, x2, -56	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 56	# 2329
	lw		x1, -52(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -24(x2)	# 2330
	sw		x1, -52(x2)	# 2330
	addi	x2, x2, -56	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 56	# 2330
	lw		x1, -52(x2)	# 2330
	lw		x5, -12(x2)	# 2331
	flw		f1, -8(x2)	# 2331
	sw		x4, -52(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -56(x2)	# 2331
	addi	x2, x2, -60	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 60	# 2331
	lw		x1, -56(x2)	# 2331
	lw		x5, -52(x2)	# 2331
	lw		x6, -32(x2)	# 2331
	arrsw	x4, x5, x6	# 2331
	lw		x4, -12(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -56(x2)	# 2332
	addi	x2, x2, -60	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 60	# 2332
	lw		x1, -56(x2)	# 2332
	lw		x5, -52(x2)	# 2332
	lw		x7, -36(x2)	# 2332
	arrsw	x4, x5, x7	# 2332
	lw		x4, -12(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -56(x2)	# 2333
	addi	x2, x2, -60	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 60	# 2333
	lw		x1, -56(x2)	# 2333
	lw		x5, -52(x2)	# 2333
	lw		x8, -12(x2)	# 2333
	arrsw	x4, x5, x8	# 2333
	flw		f1, -8(x2)	# 2334
	addi	x4, x8, 0	# 2334
	sw		x1, -56(x2)	# 2334
	addi	x2, x2, -60	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 60	# 2334
	lw		x1, -56(x2)	# 2334
	lw		x5, -52(x2)	# 2334
	lw		x8, -40(x2)	# 2334
	arrsw	x4, x5, x8	# 2334
	lw		x4, -12(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x1, -56(x2)	# 2329
	addi	x2, x2, -60	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 60	# 2329
	lw		x1, -56(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -24(x2)	# 2330
	sw		x1, -56(x2)	# 2330
	addi	x2, x2, -60	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 60	# 2330
	lw		x1, -56(x2)	# 2330
	lw		x5, -12(x2)	# 2331
	flw		f1, -8(x2)	# 2331
	sw		x4, -56(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -60(x2)	# 2331
	addi	x2, x2, -64	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 64	# 2331
	lw		x1, -60(x2)	# 2331
	lw		x5, -56(x2)	# 2331
	lw		x6, -32(x2)	# 2331
	arrsw	x4, x5, x6	# 2331
	lw		x4, -12(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -60(x2)	# 2332
	addi	x2, x2, -64	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 64	# 2332
	lw		x1, -60(x2)	# 2332
	lw		x5, -56(x2)	# 2332
	arrsw	x4, x5, x7	# 2332
	lw		x4, -12(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -60(x2)	# 2333
	addi	x2, x2, -64	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 64	# 2333
	lw		x1, -60(x2)	# 2333
	lw		x5, -56(x2)	# 2333
	lw		x9, -12(x2)	# 2333
	arrsw	x4, x5, x9	# 2333
	flw		f1, -8(x2)	# 2334
	addi	x4, x9, 0	# 2334
	sw		x1, -60(x2)	# 2334
	addi	x2, x2, -64	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 64	# 2334
	lw		x1, -60(x2)	# 2334
	lw		x5, -56(x2)	# 2334
	arrsw	x4, x5, x8	# 2334
	lw		x4, -20(x2)	# 2347
	addi	x5, x4, 0	# 2347
	addi	x4, x6, 0	# 2347
	sw		x1, -60(x2)	# 2347
	addi	x2, x2, -64	# 2347
	jal		x1, min_caml_create_array	# 2347
	addi	x2, x2, 64	# 2347
	lw		x1, -60(x2)	# 2347
	lw		x5, -12(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x4, -60(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -64(x2)	# 2329
	addi	x2, x2, -68	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 68	# 2329
	lw		x1, -64(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -24(x2)	# 2330
	sw		x1, -64(x2)	# 2330
	addi	x2, x2, -68	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 68	# 2330
	lw		x1, -64(x2)	# 2330
	lw		x5, -12(x2)	# 2331
	flw		f1, -8(x2)	# 2331
	sw		x4, -64(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -68(x2)	# 2331
	addi	x2, x2, -72	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 72	# 2331
	lw		x1, -68(x2)	# 2331
	lw		x5, -64(x2)	# 2331
	lw		x6, -32(x2)	# 2331
	arrsw	x4, x5, x6	# 2331
	lw		x4, -12(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -68(x2)	# 2332
	addi	x2, x2, -72	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 72	# 2332
	lw		x1, -68(x2)	# 2332
	lw		x5, -64(x2)	# 2332
	arrsw	x4, x5, x7	# 2332
	lw		x4, -12(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -68(x2)	# 2333
	addi	x2, x2, -72	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 72	# 2333
	lw		x1, -68(x2)	# 2333
	lw		x5, -64(x2)	# 2333
	lw		x6, -12(x2)	# 2333
	arrsw	x4, x5, x6	# 2333
	flw		f1, -8(x2)	# 2334
	addi	x4, x6, 0	# 2334
	sw		x1, -68(x2)	# 2334
	addi	x2, x2, -72	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 72	# 2334
	lw		x1, -68(x2)	# 2334
	lw		x5, -64(x2)	# 2334
	arrsw	x4, x5, x8	# 2334
	addi	x4, x3, 0	# 2349
	addi	x3, x3, 32	# 2349
	sw		x5, 28(x4)	# 2349
	lw		x5, -60(x2)	# 2349
	sw		x5, 24(x4)	# 2349
	lw		x5, -56(x2)	# 2349
	sw		x5, 20(x4)	# 2349
	lw		x5, -52(x2)	# 2349
	sw		x5, 16(x4)	# 2349
	lw		x5, -48(x2)	# 2349
	sw		x5, 12(x4)	# 2349
	lw		x5, -44(x2)	# 2349
	sw		x5, 8(x4)	# 2349
	lw		x5, -28(x2)	# 2349
	sw		x5, 4(x4)	# 2349
	lw		x5, -16(x2)	# 2349
	sw		x5, 0(x4)	# 2349
	lw		x5, -4(x2)	# 2355
	lw		x6, 0(x2)	# 2355
	arrsw	x4, x5, x6	# 2355
	addi	x4, x6, -1	# 2356
	addi	x31, x5, 0	# 2356
	addi	x5, x4, 0	# 2356
	addi	x4, x31, 0	# 2356
	jal		x0, init_line_elements.3080.18109	# 2356
calc_dirvec.3090.18112:
	addi	x7, x0, 5	# 98
	ble		x7, x4, ble.34512	# 2391
	fmul	f1, f2, f2	# 2382
	lui		x7, %hi(l.29816)	# 2382
	ori		x7, x7, %lo(l.29816)	# 2382
	flw		f2, 0(x7)	# 2382
	fadd	f1, f1, f2	# 2382
	fsqrt	f1, f1	# 2382
	fdiv	f6, f30, f1	# 2383
	fsw		f4, 0(x2)	# 2384
	fsw		f30, -4(x2)	# 2384
	fsw		f2, -8(x2)	# 2384
	sw		x4, -12(x2)	# 2384
	fsw		f1, -16(x2)	# 2384
	fsw		f3, -20(x2)	# 2384
	fadd	f1, f0, f6	# 2384
	sw		x1, -24(x2)	# 2384
	addi	x2, x2, -28	# 2384
	jal		x1, atan.2640.17996	# 2384
	addi	x2, x2, 28	# 2384
	lw		x1, -24(x2)	# 2384
	flw		f2, -20(x2)	# 2385
	fmul	f1, f1, f2	# 2385
	fsw		f1, -24(x2)	# 2377
	sw		x1, -28(x2)	# 2377
	addi	x2, x2, -32	# 2377
	jal		x1, sin.2636.17992	# 2377
	addi	x2, x2, 32	# 2377
	lw		x1, -28(x2)	# 2377
	flw		f2, -24(x2)	# 2377
	fsw		f1, -28(x2)	# 2377
	fadd	f1, f0, f2	# 2377
	sw		x1, -32(x2)	# 2377
	addi	x2, x2, -36	# 2377
	jal		x1, cos.2638.17994	# 2377
	addi	x2, x2, 36	# 2377
	lw		x1, -32(x2)	# 2377
	flw		f2, -28(x2)	# 2377
	fdiv	f1, f2, f1	# 2377
	flw		f2, -16(x2)	# 2386
	fmul	f1, f1, f2	# 2386
	lw		x4, -12(x2)	# 2407
	addi	x4, x4, 1	# 2407
	fmul	f2, f1, f1	# 2382
	flw		f3, -8(x2)	# 2382
	fadd	f2, f2, f3	# 2382
	fsqrt	f2, f2	# 2382
	flw		f3, -4(x2)	# 2383
	fdiv	f3, f3, f2	# 2383
	fsw		f1, -32(x2)	# 2384
	sw		x4, -36(x2)	# 2384
	fsw		f2, -40(x2)	# 2384
	fadd	f1, f0, f3	# 2384
	sw		x1, -44(x2)	# 2384
	addi	x2, x2, -48	# 2384
	jal		x1, atan.2640.17996	# 2384
	addi	x2, x2, 48	# 2384
	lw		x1, -44(x2)	# 2384
	flw		f2, 0(x2)	# 2385
	fmul	f1, f1, f2	# 2385
	fsw		f1, -44(x2)	# 2377
	sw		x1, -48(x2)	# 2377
	addi	x2, x2, -52	# 2377
	jal		x1, sin.2636.17992	# 2377
	addi	x2, x2, 52	# 2377
	lw		x1, -48(x2)	# 2377
	flw		f2, -44(x2)	# 2377
	fsw		f1, -48(x2)	# 2377
	fadd	f1, f0, f2	# 2377
	sw		x1, -52(x2)	# 2377
	addi	x2, x2, -56	# 2377
	jal		x1, cos.2638.17994	# 2377
	addi	x2, x2, 56	# 2377
	lw		x1, -52(x2)	# 2377
	flw		f2, -48(x2)	# 2377
	fdiv	f1, f2, f1	# 2377
	flw		f2, -40(x2)	# 2386
	fmul	f2, f1, f2	# 2386
	lw		x4, -36(x2)	# 2407
	flw		f1, -32(x2)	# 2407
	flw		f3, -20(x2)	# 2407
	flw		f4, 0(x2)	# 2407
	jal		x0, calc_dirvec.3090.18112	# 2407
ble.34512:
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 2392
	fadd	f3, f3, f30	# 2392
	fsqrt	f3, f3	# 2392
	fdiv	f1, f1, f3	# 2393
	fdiv	f2, f2, f3	# 2394
	fdiv	f3, f30, f3	# 2395
	addi	x4, x0, 40716	# 98
	arrlw	x4, x4, x5	# 2398
	arrlw	x5, x4, x6	# 2399
	lw		x5, 0(x5)	# 696
	arrfsw	f1, x5, x0	# 297
	arrfsw	f2, x5, x21	# 298
	arrfsw	f3, x5, x22	# 299
	addi	x5, x6, 40	# 2400
	arrlw	x5, x4, x5	# 2400
	lw		x5, 0(x5)	# 696
	fsub	f4, f0, f2	# 123
	arrfsw	f1, x5, x0	# 297
	arrfsw	f3, x5, x21	# 298
	arrfsw	f4, x5, x22	# 299
	addi	x5, x6, 80	# 2401
	arrlw	x5, x4, x5	# 2401
	lw		x5, 0(x5)	# 696
	fsub	f5, f0, f1	# 123
	arrfsw	f3, x5, x0	# 297
	arrfsw	f5, x5, x21	# 298
	arrfsw	f4, x5, x22	# 299
	addi	x5, x6, 1	# 2402
	arrlw	x5, x4, x5	# 2402
	lw		x5, 0(x5)	# 696
	fsub	f3, f0, f3	# 123
	arrfsw	f5, x5, x0	# 297
	arrfsw	f4, x5, x21	# 298
	arrfsw	f3, x5, x22	# 299
	addi	x5, x6, 41	# 2403
	arrlw	x5, x4, x5	# 2403
	lw		x5, 0(x5)	# 696
	arrfsw	f5, x5, x0	# 297
	arrfsw	f3, x5, x21	# 298
	arrfsw	f2, x5, x22	# 299
	addi	x5, x6, 81	# 2404
	arrlw	x4, x4, x5	# 2404
	lw		x4, 0(x4)	# 696
	arrfsw	f3, x4, x0	# 297
	arrfsw	f1, x4, x21	# 298
	arrfsw	f2, x4, x22	# 299
	jalr	x0, x1, 0	# 299
calc_dirvecs.3098.18120:
	add		x7, x0, x0	# 6
	ble		x0, x4, ble.34514	# 2412
	jalr	x0, x1, 0	# 2421
ble.34514:
	sw		x4, 0(x2)	# 2414
	fsw		f1, -4(x2)	# 2414
	sw		x6, -8(x2)	# 2414
	sw		x5, -12(x2)	# 2414
	sw		x1, -16(x2)	# 2414
	addi	x2, x2, -20	# 2414
	jal		x1, min_caml_float_of_int	# 2414
	addi	x2, x2, 20	# 2414
	lw		x1, -16(x2)	# 2414
	lui		x4, %hi(l.27957)	# 2414
	ori		x4, x4, %lo(l.27957)	# 2414
	flw		f2, 0(x4)	# 2414
	fmul	f1, f1, f2	# 2414
	lui		x4, %hi(l.30890)	# 2414
	ori		x4, x4, %lo(l.30890)	# 2414
	flw		f2, 0(x4)	# 2414
	fsub	f3, f1, f2	# 2414
	fadd	f2, f0, f0	# 11
	lw		x5, -12(x2)	# 2415
	lw		x6, -8(x2)	# 2415
	flw		f4, -4(x2)	# 2415
	fsw		f0, -16(x2)	# 2415
	sw		x0, -20(x2)	# 2415
	fsw		f1, -24(x2)	# 2415
	addi	x4, x0, 0	# 2415
	fadd	f1, f0, f0	# 2415
	sw		x1, -28(x2)	# 2415
	addi	x2, x2, -32	# 2415
	jal		x1, calc_dirvec.3090.18112	# 2415
	addi	x2, x2, 32	# 2415
	lw		x1, -28(x2)	# 2415
	lui		x4, %hi(l.29816)	# 2417
	ori		x4, x4, %lo(l.29816)	# 2417
	flw		f1, 0(x4)	# 2417
	flw		f2, -24(x2)	# 2417
	fadd	f3, f2, f1	# 2417
	lw		x4, -8(x2)	# 2418
	addi	x6, x4, 2	# 2418
	lw		x5, -20(x2)	# 2418
	lw		x7, -12(x2)	# 2418
	flw		f1, -16(x2)	# 2418
	flw		f4, -4(x2)	# 2418
	addi	x4, x5, 0	# 2418
	addi	x5, x7, 0	# 2418
	fadd	f2, f0, f1	# 2418
	sw		x1, -28(x2)	# 2418
	addi	x2, x2, -32	# 2418
	jal		x1, calc_dirvec.3090.18112	# 2418
	addi	x2, x2, 32	# 2418
	lw		x1, -28(x2)	# 2418
	lw		x4, 0(x2)	# 2420
	addi	x4, x4, -1	# 2420
	lw		x5, -12(x2)	# 281
	addi	x5, x5, 1	# 281
	addi	x6, x0, 5	# 98
	ble		x6, x5, ble.34517	# 282
	jal		x0, ble_cont.34516	# 282
ble.34517:
	addi	x5, x5, -5	# 282
ble_cont.34516:
	lw		x6, -8(x2)	# 2420
	flw		f1, -4(x2)	# 2420
	jal		x0, calc_dirvecs.3098.18120	# 2420
calc_dirvec_rows.3103.18125:
	ble		x0, x4, ble.34518	# 2426
	jalr	x0, x1, 0	# 2430
ble.34518:
	sw		x4, 0(x2)	# 2427
	sw		x6, -4(x2)	# 2427
	sw		x5, -8(x2)	# 2427
	sw		x1, -12(x2)	# 2427
	addi	x2, x2, -16	# 2427
	jal		x1, min_caml_float_of_int	# 2427
	addi	x2, x2, 16	# 2427
	lw		x1, -12(x2)	# 2427
	lui		x4, %hi(l.27957)	# 2427
	ori		x4, x4, %lo(l.27957)	# 2427
	flw		f2, 0(x4)	# 2427
	fmul	f1, f1, f2	# 2427
	lui		x4, %hi(l.30890)	# 2427
	ori		x4, x4, %lo(l.30890)	# 2427
	flw		f2, 0(x4)	# 2427
	fsub	f1, f1, f2	# 2427
	add		x4, x0, x30	# 2428
	lw		x5, -8(x2)	# 2428
	lw		x6, -4(x2)	# 2428
	sw		x1, -12(x2)	# 2428
	addi	x2, x2, -16	# 2428
	jal		x1, calc_dirvecs.3098.18120	# 2428
	addi	x2, x2, 16	# 2428
	lw		x1, -12(x2)	# 2428
	lw		x4, 0(x2)	# 2429
	addi	x4, x4, -1	# 2429
	lw		x5, -8(x2)	# 281
	addi	x5, x5, 2	# 281
	addi	x6, x0, 5	# 98
	ble		x6, x5, ble.34521	# 282
	jal		x0, ble_cont.34520	# 282
ble.34521:
	addi	x5, x5, -5	# 282
ble_cont.34520:
	lw		x6, -4(x2)	# 2429
	addi	x6, x6, 4	# 2429
	jal		x0, calc_dirvec_rows.3103.18125	# 2429
create_dirvec_elements.3109.18129:
	ble		x0, x5, ble.34522	# 2445
	jalr	x0, x1, 0	# 2448
ble.34522:
	fadd	f1, f0, f0	# 11
	add		x7, x0, x23	# 16
	sw		x5, 0(x2)	# 2439
	sw		x4, -4(x2)	# 2439
	addi	x4, x23, 0	# 2439
	sw		x1, -8(x2)	# 2439
	addi	x2, x2, -12	# 2439
	jal		x1, min_caml_create_float_array	# 2439
	addi	x2, x2, 12	# 2439
	lw		x1, -8(x2)	# 2439
	addi	x5, x4, 0	# 2439
	addi	x4, x0, 40000	# 6
	arrlw	x4, x4, x0	# 2440
	sw		x5, -8(x2)	# 2440
	sw		x1, -12(x2)	# 2440
	addi	x2, x2, -16	# 2440
	jal		x1, min_caml_create_array	# 2440
	addi	x2, x2, 16	# 2440
	lw		x1, -12(x2)	# 2440
	addi	x5, x3, 0	# 2441
	addi	x3, x3, 8	# 2441
	sw		x4, 4(x5)	# 2441
	lw		x4, -8(x2)	# 2441
	sw		x4, 0(x5)	# 2441
	lw		x4, -4(x2)	# 2446
	lw		x6, 0(x2)	# 2446
	arrsw	x5, x4, x6	# 2446
	addi	x5, x6, -1	# 2447
	jal		x0, create_dirvec_elements.3109.18129	# 2447
create_dirvecs.3112.18132:
	ble		x0, x4, ble.34524	# 2452
	jalr	x0, x1, 0	# 2456
ble.34524:
	addi	x6, x0, 120	# 2453
	fadd	f1, f0, f0	# 11
	add		x7, x0, x23	# 16
	sw		x4, 0(x2)	# 2439
	sw		x0, -4(x2)	# 2439
	addi	x4, x23, 0	# 2439
	sw		x1, -8(x2)	# 2439
	addi	x2, x2, -12	# 2439
	jal		x1, min_caml_create_float_array	# 2439
	addi	x2, x2, 12	# 2439
	lw		x1, -8(x2)	# 2439
	addi	x5, x4, 0	# 2439
	addi	x4, x0, 40000	# 6
	lw		x7, -4(x2)	# 2440
	arrlw	x4, x4, x7	# 2440
	sw		x6, -8(x2)	# 2440
	sw		x5, -12(x2)	# 2440
	sw		x1, -16(x2)	# 2440
	addi	x2, x2, -20	# 2440
	jal		x1, min_caml_create_array	# 2440
	addi	x2, x2, 20	# 2440
	lw		x1, -16(x2)	# 2440
	addi	x5, x3, 0	# 2441
	addi	x3, x3, 8	# 2441
	sw		x4, 4(x5)	# 2441
	lw		x4, -12(x2)	# 2441
	sw		x4, 0(x5)	# 2441
	lw		x4, -8(x2)	# 2453
	sw		x1, -16(x2)	# 2453
	addi	x2, x2, -20	# 2453
	jal		x1, min_caml_create_array	# 2453
	addi	x2, x2, 20	# 2453
	lw		x1, -16(x2)	# 2453
	addi	x5, x0, 40716	# 98
	lw		x6, 0(x2)	# 2453
	arrsw	x4, x5, x6	# 2453
	arrlw	x4, x5, x6	# 2454
	addi	x5, x0, 118	# 2454
	sw		x1, -16(x2)	# 2454
	addi	x2, x2, -20	# 2454
	jal		x1, create_dirvec_elements.3109.18129	# 2454
	addi	x2, x2, 20	# 2454
	lw		x1, -16(x2)	# 2454
	lw		x4, 0(x2)	# 2455
	addi	x4, x4, -1	# 2455
	jal		x0, create_dirvecs.3112.18132	# 2455
init_dirvec_constants.3114.18134:
	ble		x0, x5, ble.34526	# 2464
	jalr	x0, x1, 0	# 2467
ble.34526:
	arrlw	x7, x4, x5	# 2465
	addi	x8, x0, 40000	# 6
	arrlw	x6, x8, x0	# 1344
	addi	x6, x6, -1	# 1344
	sw		x4, 0(x2)	# 1344
	sw		x5, -4(x2)	# 1344
	addi	x5, x6, 0	# 1344
	addi	x4, x7, 0	# 1344
	sw		x1, -8(x2)	# 1344
	addi	x2, x2, -12	# 1344
	jal		x1, iter_setup_dirvec_constants.2892.18014	# 1344
	addi	x2, x2, 12	# 1344
	lw		x1, -8(x2)	# 1344
	lw		x4, -4(x2)	# 2466
	addi	x5, x4, -1	# 2466
	lw		x4, 0(x2)	# 2466
	jal		x0, init_dirvec_constants.3114.18134	# 2466
init_vecset_constants.3117.18137:
	ble		x0, x4, ble.34528	# 2471
	jalr	x0, x1, 0	# 2474
ble.34528:
	addi	x5, x0, 40716	# 98
	arrlw	x5, x5, x4	# 2472
	addi	x6, x0, 119	# 2472
	sw		x4, 0(x2)	# 2472
	addi	x4, x5, 0	# 2472
	addi	x5, x6, 0	# 2472
	sw		x1, -4(x2)	# 2472
	addi	x2, x2, -8	# 2472
	jal		x1, init_dirvec_constants.3114.18134	# 2472
	addi	x2, x2, 8	# 2472
	lw		x1, -4(x2)	# 2472
	lw		x4, 0(x2)	# 2473
	addi	x4, x4, -1	# 2473
	jal		x0, init_vecset_constants.3117.18137	# 2473
min_caml_start:
	addi	x2, x2, -4	# 0
	addi	x30, x0, 4	# 0
	addi	x3, x0, 40000	# 0
	lui		x4, %hi(l.27913)	# 0
	ori		x4, x4, %lo(l.27913)	# 0
	flw		f0, 0(x4)	# 0
	lui		x4, %hi(l.27931)	# 0
	ori		x4, x4, %lo(l.27931)	# 0
	flw		f30, 0(x4)	# 0
	lui		x4, %hi(l.33459)	# 0
	ori		x4, x4, %lo(l.33459)	# 0
	flw		f29, 0(x4)	# 0
	lui		x4, %hi(l.28445)	# 0
	ori		x4, x4, %lo(l.28445)	# 0
	flw		f18, 0(x4)	# 0
	lui		x4, %hi(l.28443)	# 0
	ori		x4, x4, %lo(l.28443)	# 0
	flw		f19, 0(x4)	# 0
	lui		x4, %hi(l.28568)	# 0
	ori		x4, x4, %lo(l.28568)	# 0
	flw		f20, 0(x4)	# 0
	lui		x4, %hi(l.29402)	# 0
	ori		x4, x4, %lo(l.29402)	# 0
	flw		f21, 0(x4)	# 0
	lui		x4, %hi(l.29411)	# 0
	ori		x4, x4, %lo(l.29411)	# 0
	flw		f22, 0(x4)	# 0
	lui		x4, %hi(l.30096)	# 0
	ori		x4, x4, %lo(l.30096)	# 0
	flw		f23, 0(x4)	# 0
	lui		x4, %hi(l.29869)	# 0
	ori		x4, x4, %lo(l.29869)	# 0
	flw		f24, 0(x4)	# 0
	lui		x4, %hi(l.28027)	# 0
	ori		x4, x4, %lo(l.28027)	# 0
	flw		f25, 0(x4)	# 0
	lui		x4, %hi(l.29635)	# 0
	ori		x4, x4, %lo(l.29635)	# 0
	flw		f26, 0(x4)	# 0
	lui		x4, %hi(l.29666)	# 0
	ori		x4, x4, %lo(l.29666)	# 0
	flw		f27, 0(x4)	# 0
	lui		x4, %hi(l.29668)	# 0
	ori		x4, x4, %lo(l.29668)	# 0
	flw		f28, 0(x4)	# 0
	addi	x20, x0, -1	# 0
	addi	x21, x0, 1	# 0
	addi	x22, x0, 2	# 0
	addi	x23, x0, 3	# 0
	addi	x24, x0, 40048	# 0
	addi	x25, x0, 40332	# 0
	addi	x26, x0, 40540	# 0
	addi	x27, x0, 40552	# 0
	addi	x28, x0, 40748	# 0
	add		x4, x0, x21	# 6
	add		x5, x0, x0	# 6
	addi	x6, x0, 40000	# 6
	sw		x6, 0(x2)	# 6
	sw		x21, -4(x2)	# 6
	sw		x0, -8(x2)	# 6
	sw		x1, -12(x2)	# 6
	addi	x2, x2, -16	# 6
	jal		x1, min_caml_create_array	# 6
	addi	x2, x2, 16	# 6
	lw		x1, -12(x2)	# 6
	fadd	f1, f0, f0	# 11
	addi	x4, x0, 40004	# 11
	lw		x5, -8(x2)	# 11
	fsw		f0, -12(x2)	# 11
	sw		x4, -16(x2)	# 11
	addi	x4, x5, 0	# 11
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
	sw		x24, -20(x2)	# 12
	sw		x4, -24(x2)	# 12
	sw		x1, -28(x2)	# 12
	addi	x2, x2, -32	# 12
	jal		x1, min_caml_create_array	# 12
	addi	x2, x2, 32	# 12
	lw		x1, -28(x2)	# 12
	add		x4, x0, x23	# 16
	addi	x5, x0, 40288	# 16
	flw		f1, -12(x2)	# 16
	sw		x5, -28(x2)	# 16
	sw		x23, -32(x2)	# 16
	sw		x1, -36(x2)	# 16
	addi	x2, x2, -40	# 16
	jal		x1, min_caml_create_float_array	# 16
	addi	x2, x2, 40	# 16
	lw		x1, -36(x2)	# 16
	addi	x4, x0, 40300	# 19
	lw		x5, -32(x2)	# 19
	flw		f1, -12(x2)	# 19
	sw		x4, -36(x2)	# 19
	addi	x4, x5, 0	# 19
	sw		x1, -40(x2)	# 19
	addi	x2, x2, -44	# 19
	jal		x1, min_caml_create_float_array	# 19
	addi	x2, x2, 44	# 19
	lw		x1, -40(x2)	# 19
	addi	x4, x0, 40312	# 22
	lw		x5, -32(x2)	# 22
	flw		f1, -12(x2)	# 22
	sw		x4, -40(x2)	# 22
	addi	x4, x5, 0	# 22
	sw		x1, -44(x2)	# 22
	addi	x2, x2, -48	# 22
	jal		x1, min_caml_create_float_array	# 22
	addi	x2, x2, 48	# 22
	lw		x1, -44(x2)	# 22
	fadd	f1, f0, f26	# 25
	addi	x4, x0, 40324	# 25
	lw		x5, -4(x2)	# 25
	sw		x4, -44(x2)	# 25
	addi	x4, x5, 0	# 25
	sw		x1, -48(x2)	# 25
	addi	x2, x2, -52	# 25
	jal		x1, min_caml_create_float_array	# 25
	addi	x2, x2, 52	# 25
	lw		x1, -48(x2)	# 25
	addi	x4, x0, 50	# 28
	add		x5, x0, x20	# 28
	addi	x6, x0, 40328	# 28
	lw		x8, -4(x2)	# 28
	sw		x6, -48(x2)	# 28
	sw		x4, -52(x2)	# 28
	addi	x4, x8, 0	# 28
	sw		x1, -56(x2)	# 28
	addi	x2, x2, -60	# 28
	jal		x1, min_caml_create_array	# 28
	addi	x2, x2, 60	# 28
	lw		x1, -56(x2)	# 28
	lw		x5, -52(x2)	# 28
	lw		x6, -48(x2)	# 28
	sw		x25, -56(x2)	# 28
	addi	x4, x5, 0	# 28
	addi	x5, x6, 0	# 28
	sw		x1, -60(x2)	# 28
	addi	x2, x2, -64	# 28
	jal		x1, min_caml_create_array	# 28
	addi	x2, x2, 64	# 28
	lw		x1, -60(x2)	# 28
	lw		x4, -56(x2)	# 31
	arrlw	x5, x4, x7	# 31
	addi	x4, x0, 40532	# 31
	lw		x6, -4(x2)	# 31
	sw		x4, -60(x2)	# 31
	addi	x4, x6, 0	# 31
	sw		x1, -64(x2)	# 31
	addi	x2, x2, -68	# 31
	jal		x1, min_caml_create_array	# 31
	addi	x2, x2, 68	# 31
	lw		x1, -64(x2)	# 31
	addi	x4, x0, 40536	# 31
	lw		x5, -4(x2)	# 31
	lw		x6, -60(x2)	# 31
	sw		x4, -64(x2)	# 31
	addi	x4, x5, 0	# 31
	addi	x5, x6, 0	# 31
	sw		x1, -68(x2)	# 31
	addi	x2, x2, -72	# 31
	jal		x1, min_caml_create_array	# 31
	addi	x2, x2, 72	# 31
	lw		x1, -68(x2)	# 31
	lw		x4, -4(x2)	# 36
	flw		f1, -12(x2)	# 36
	sw		x1, -68(x2)	# 36
	addi	x2, x2, -72	# 36
	jal		x1, min_caml_create_float_array	# 36
	addi	x2, x2, 72	# 36
	lw		x1, -68(x2)	# 36
	lw		x4, -4(x2)	# 39
	addi	x5, x7, 0	# 39
	sw		x1, -68(x2)	# 39
	addi	x2, x2, -72	# 39
	jal		x1, min_caml_create_array	# 39
	addi	x2, x2, 72	# 39
	lw		x1, -68(x2)	# 39
	fadd	f1, f0, f21	# 42
	lw		x4, -4(x2)	# 42
	sw		x1, -68(x2)	# 42
	addi	x2, x2, -72	# 42
	jal		x1, min_caml_create_float_array	# 42
	addi	x2, x2, 72	# 42
	lw		x1, -68(x2)	# 42
	lw		x4, -32(x2)	# 45
	flw		f1, -12(x2)	# 45
	sw		x1, -68(x2)	# 45
	addi	x2, x2, -72	# 45
	jal		x1, min_caml_create_float_array	# 45
	addi	x2, x2, 72	# 45
	lw		x1, -68(x2)	# 45
	lw		x4, -4(x2)	# 48
	lw		x5, -8(x2)	# 48
	sw		x1, -68(x2)	# 48
	addi	x2, x2, -72	# 48
	jal		x1, min_caml_create_array	# 48
	addi	x2, x2, 72	# 48
	lw		x1, -68(x2)	# 48
	lw		x4, -32(x2)	# 51
	flw		f1, -12(x2)	# 51
	sw		x1, -68(x2)	# 51
	addi	x2, x2, -72	# 51
	jal		x1, min_caml_create_float_array	# 51
	addi	x2, x2, 72	# 51
	lw		x1, -68(x2)	# 51
	lw		x4, -32(x2)	# 54
	flw		f1, -12(x2)	# 54
	sw		x1, -68(x2)	# 54
	addi	x2, x2, -72	# 54
	jal		x1, min_caml_create_float_array	# 54
	addi	x2, x2, 72	# 54
	lw		x1, -68(x2)	# 54
	lw		x4, -32(x2)	# 58
	flw		f1, -12(x2)	# 58
	sw		x1, -68(x2)	# 58
	addi	x2, x2, -72	# 58
	jal		x1, min_caml_create_float_array	# 58
	addi	x2, x2, 72	# 58
	lw		x1, -68(x2)	# 58
	lw		x4, -32(x2)	# 61
	flw		f1, -12(x2)	# 61
	sw		x1, -68(x2)	# 61
	addi	x2, x2, -72	# 61
	jal		x1, min_caml_create_float_array	# 61
	addi	x2, x2, 72	# 61
	lw		x1, -68(x2)	# 61
	add		x4, x0, x22	# 65
	addi	x5, x0, 40616	# 65
	lw		x6, -8(x2)	# 65
	sw		x5, -68(x2)	# 65
	sw		x22, -72(x2)	# 65
	addi	x5, x6, 0	# 65
	sw		x1, -76(x2)	# 65
	addi	x2, x2, -80	# 65
	jal		x1, min_caml_create_array	# 65
	addi	x2, x2, 80	# 65
	lw		x1, -76(x2)	# 65
	addi	x4, x0, 40624	# 68
	lw		x5, -72(x2)	# 68
	lw		x6, -8(x2)	# 68
	sw		x4, -76(x2)	# 68
	addi	x4, x5, 0	# 68
	addi	x5, x6, 0	# 68
	sw		x1, -80(x2)	# 68
	addi	x2, x2, -84	# 68
	jal		x1, min_caml_create_array	# 68
	addi	x2, x2, 84	# 68
	lw		x1, -80(x2)	# 68
	addi	x4, x0, 40632	# 71
	lw		x5, -4(x2)	# 71
	flw		f1, -12(x2)	# 71
	sw		x4, -80(x2)	# 71
	addi	x4, x5, 0	# 71
	sw		x1, -84(x2)	# 71
	addi	x2, x2, -88	# 71
	jal		x1, min_caml_create_float_array	# 71
	addi	x2, x2, 88	# 71
	lw		x1, -84(x2)	# 71
	lw		x4, -32(x2)	# 75
	flw		f1, -12(x2)	# 75
	sw		x1, -84(x2)	# 75
	addi	x2, x2, -88	# 75
	jal		x1, min_caml_create_float_array	# 75
	addi	x2, x2, 88	# 75
	lw		x1, -84(x2)	# 75
	lw		x4, -32(x2)	# 78
	flw		f1, -12(x2)	# 78
	sw		x1, -84(x2)	# 78
	addi	x2, x2, -88	# 78
	jal		x1, min_caml_create_float_array	# 78
	addi	x2, x2, 88	# 78
	lw		x1, -84(x2)	# 78
	addi	x4, x0, 40660	# 82
	lw		x5, -32(x2)	# 82
	flw		f1, -12(x2)	# 82
	sw		x4, -84(x2)	# 82
	addi	x4, x5, 0	# 82
	sw		x1, -88(x2)	# 82
	addi	x2, x2, -92	# 82
	jal		x1, min_caml_create_float_array	# 82
	addi	x2, x2, 92	# 82
	lw		x1, -88(x2)	# 82
	addi	x4, x0, 40672	# 84
	lw		x5, -32(x2)	# 84
	flw		f1, -12(x2)	# 84
	sw		x4, -88(x2)	# 84
	addi	x4, x5, 0	# 84
	sw		x1, -92(x2)	# 84
	addi	x2, x2, -96	# 84
	jal		x1, min_caml_create_float_array	# 84
	addi	x2, x2, 96	# 84
	lw		x1, -92(x2)	# 84
	addi	x4, x0, 40684	# 86
	lw		x5, -32(x2)	# 86
	flw		f1, -12(x2)	# 86
	sw		x4, -92(x2)	# 86
	addi	x4, x5, 0	# 86
	sw		x1, -96(x2)	# 86
	addi	x2, x2, -100	# 86
	jal		x1, min_caml_create_float_array	# 86
	addi	x2, x2, 100	# 86
	lw		x1, -96(x2)	# 86
	lw		x4, -32(x2)	# 90
	flw		f1, -12(x2)	# 90
	sw		x1, -96(x2)	# 90
	addi	x2, x2, -100	# 90
	jal		x1, min_caml_create_float_array	# 90
	addi	x2, x2, 100	# 90
	lw		x1, -96(x2)	# 90
	addi	x4, x0, 40708	# 95
	lw		x5, -8(x2)	# 95
	flw		f1, -12(x2)	# 95
	sw		x4, -96(x2)	# 95
	addi	x4, x5, 0	# 95
	sw		x1, -100(x2)	# 95
	addi	x2, x2, -104	# 95
	jal		x1, min_caml_create_float_array	# 95
	addi	x2, x2, 104	# 95
	lw		x1, -100(x2)	# 95
	lw		x4, -8(x2)	# 96
	lw		x5, -96(x2)	# 96
	sw		x1, -100(x2)	# 96
	addi	x2, x2, -104	# 96
	jal		x1, min_caml_create_array	# 96
	addi	x2, x2, 104	# 96
	lw		x1, -100(x2)	# 96
	addi	x5, x3, 0	# 97
	addi	x3, x3, 8	# 97
	lw		x4, -96(x2)	# 97
	sw		x4, 4(x5)	# 97
	sw		x4, 0(x5)	# 97
	addi	x4, x0, 40716	# 97
	lw		x6, -8(x2)	# 97
	sw		x4, -100(x2)	# 97
	addi	x4, x6, 0	# 97
	sw		x1, -104(x2)	# 97
	addi	x2, x2, -108	# 97
	jal		x1, min_caml_create_array	# 97
	addi	x2, x2, 108	# 97
	lw		x1, -104(x2)	# 97
	addi	x4, x0, 5	# 98
	lw		x5, -100(x2)	# 98
	sw		x4, -104(x2)	# 98
	sw		x1, -108(x2)	# 98
	addi	x2, x2, -112	# 98
	jal		x1, min_caml_create_array	# 98
	addi	x2, x2, 112	# 98
	lw		x1, -108(x2)	# 98
	addi	x4, x0, 40736	# 103
	lw		x5, -8(x2)	# 103
	flw		f1, -12(x2)	# 103
	sw		x4, -108(x2)	# 103
	addi	x4, x5, 0	# 103
	sw		x1, -112(x2)	# 103
	addi	x2, x2, -116	# 103
	jal		x1, min_caml_create_float_array	# 103
	addi	x2, x2, 116	# 103
	lw		x1, -112(x2)	# 103
	lw		x4, -32(x2)	# 104
	flw		f1, -12(x2)	# 104
	sw		x1, -112(x2)	# 104
	addi	x2, x2, -116	# 104
	jal		x1, min_caml_create_float_array	# 104
	addi	x2, x2, 116	# 104
	lw		x1, -112(x2)	# 104
	lw		x5, -24(x2)	# 105
	lw		x6, -108(x2)	# 105
	sw		x28, -112(x2)	# 105
	addi	x4, x5, 0	# 105
	addi	x5, x6, 0	# 105
	sw		x1, -116(x2)	# 105
	addi	x2, x2, -120	# 105
	jal		x1, min_caml_create_array	# 105
	addi	x2, x2, 120	# 105
	lw		x1, -116(x2)	# 105
	addi	x4, x3, 0	# 106
	addi	x3, x3, 8	# 106
	lw		x5, -112(x2)	# 106
	sw		x5, 4(x4)	# 106
	lw		x5, -108(x2)	# 106
	sw		x5, 0(x4)	# 106
	addi	x6, x0, 40996	# 111
	lw		x7, -8(x2)	# 111
	flw		f1, -12(x2)	# 111
	sw		x4, -116(x2)	# 111
	addi	x4, x7, 0	# 111
	sw		x1, -120(x2)	# 111
	addi	x2, x2, -124	# 111
	jal		x1, min_caml_create_float_array	# 111
	addi	x2, x2, 124	# 111
	lw		x1, -120(x2)	# 111
	lw		x4, -8(x2)	# 112
	sw		x6, -120(x2)	# 112
	addi	x5, x6, 0	# 112
	sw		x1, -124(x2)	# 112
	addi	x2, x2, -128	# 112
	jal		x1, min_caml_create_array	# 112
	addi	x2, x2, 128	# 112
	lw		x1, -124(x2)	# 112
	addi	x4, x3, 0	# 113
	addi	x3, x3, 8	# 113
	lw		x5, -120(x2)	# 113
	sw		x5, 4(x4)	# 113
	sw		x5, 0(x4)	# 113
	addi	x5, x0, 180	# 114
	addi	x6, x3, 0	# 114
	addi	x3, x3, 12	# 114
	flw		f1, -12(x2)	# 114
	fsw		f1, 8(x6)	# 114
	sw		x4, 4(x6)	# 114
	lw		x4, -8(x2)	# 114
	sw		x4, 0(x6)	# 114
	addi	x7, x0, 41016	# 114
	addi	x4, x5, 0	# 114
	addi	x5, x6, 0	# 114
	sw		x1, -124(x2)	# 114
	addi	x2, x2, -128	# 114
	jal		x1, min_caml_create_array	# 114
	addi	x2, x2, 128	# 114
	lw		x1, -124(x2)	# 114
	addi	x4, x0, 41736	# 118
	lw		x5, -4(x2)	# 118
	lw		x6, -8(x2)	# 118
	sw		x4, -124(x2)	# 118
	addi	x4, x5, 0	# 118
	addi	x5, x6, 0	# 118
	sw		x1, -128(x2)	# 118
	addi	x2, x2, -132	# 118
	jal		x1, min_caml_create_array	# 118
	addi	x2, x2, 132	# 118
	lw		x1, -128(x2)	# 118
	addi	x4, x0, 512	# 2569
	lw		x5, -68(x2)	# 2549
	lw		x6, -8(x2)	# 2549
	arrsw	x4, x5, x6	# 2549
	lw		x8, -4(x2)	# 2550
	arrsw	x4, x5, x8	# 2550
	addi	x9, x0, 256	# 2551
	lw		x10, -76(x2)	# 2551
	arrsw	x9, x10, x6	# 2551
	arrsw	x9, x10, x8	# 2552
	lui		x9, %hi(l.30959)	# 2553
	ori		x9, x9, %lo(l.30959)	# 2553
	flw		f2, 0(x9)	# 2553
	fsw		f2, -128(x2)	# 2553
	sw		x1, -132(x2)	# 2553
	addi	x2, x2, -136	# 2553
	jal		x1, min_caml_float_of_int	# 2553
	addi	x2, x2, 136	# 2553
	lw		x1, -132(x2)	# 2553
	flw		f2, -128(x2)	# 2553
	fdiv	f1, f2, f1	# 2553
	lw		x4, -80(x2)	# 2553
	lw		x5, -8(x2)	# 2553
	arrfsw	f1, x4, x5	# 2553
	lw		x6, -68(x2)	# 2363
	arrlw	x9, x6, x5	# 2363
	lw		x11, -32(x2)	# 2341
	flw		f1, -12(x2)	# 2341
	addi	x4, x11, 0	# 2341
	sw		x1, -132(x2)	# 2341
	addi	x2, x2, -136	# 2341
	jal		x1, min_caml_create_float_array	# 2341
	addi	x2, x2, 136	# 2341
	lw		x1, -132(x2)	# 2341
	lw		x5, -32(x2)	# 2329
	flw		f1, -12(x2)	# 2329
	sw		x4, -132(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -136(x2)	# 2329
	addi	x2, x2, -140	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 140	# 2329
	lw		x1, -136(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -104(x2)	# 2330
	sw		x1, -136(x2)	# 2330
	addi	x2, x2, -140	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 140	# 2330
	lw		x1, -136(x2)	# 2330
	lw		x5, -32(x2)	# 2331
	flw		f1, -12(x2)	# 2331
	sw		x4, -136(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -140(x2)	# 2331
	addi	x2, x2, -144	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 144	# 2331
	lw		x1, -140(x2)	# 2331
	lw		x5, -136(x2)	# 2331
	arrsw	x4, x5, x8	# 2331
	lw		x4, -32(x2)	# 2332
	flw		f1, -12(x2)	# 2332
	sw		x1, -140(x2)	# 2332
	addi	x2, x2, -144	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 144	# 2332
	lw		x1, -140(x2)	# 2332
	lw		x5, -136(x2)	# 2332
	lw		x6, -72(x2)	# 2332
	arrsw	x4, x5, x6	# 2332
	lw		x4, -32(x2)	# 2333
	flw		f1, -12(x2)	# 2333
	sw		x1, -140(x2)	# 2333
	addi	x2, x2, -144	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 144	# 2333
	lw		x1, -140(x2)	# 2333
	lw		x5, -136(x2)	# 2333
	lw		x11, -32(x2)	# 2333
	arrsw	x4, x5, x11	# 2333
	add		x4, x0, x30	# 2334
	flw		f1, -12(x2)	# 2334
	sw		x30, -140(x2)	# 2334
	addi	x4, x11, 0	# 2334
	sw		x1, -144(x2)	# 2334
	addi	x2, x2, -148	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 148	# 2334
	lw		x1, -144(x2)	# 2334
	lw		x5, -136(x2)	# 2334
	lw		x11, -140(x2)	# 2334
	arrsw	x4, x5, x11	# 2334
	lw		x4, -104(x2)	# 2343
	lw		x12, -8(x2)	# 2343
	addi	x5, x12, 0	# 2343
	sw		x1, -144(x2)	# 2343
	addi	x2, x2, -148	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 148	# 2343
	lw		x1, -144(x2)	# 2343
	lw		x5, -104(x2)	# 2344
	lw		x6, -8(x2)	# 2344
	sw		x4, -144(x2)	# 2344
	addi	x4, x5, 0	# 2344
	addi	x5, x6, 0	# 2344
	sw		x1, -148(x2)	# 2344
	addi	x2, x2, -152	# 2344
	jal		x1, min_caml_create_array	# 2344
	addi	x2, x2, 152	# 2344
	lw		x1, -148(x2)	# 2344
	lw		x5, -32(x2)	# 2329
	flw		f1, -12(x2)	# 2329
	sw		x4, -148(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -152(x2)	# 2329
	addi	x2, x2, -156	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 156	# 2329
	lw		x1, -152(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -104(x2)	# 2330
	sw		x1, -152(x2)	# 2330
	addi	x2, x2, -156	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 156	# 2330
	lw		x1, -152(x2)	# 2330
	lw		x5, -32(x2)	# 2331
	flw		f1, -12(x2)	# 2331
	sw		x4, -152(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -156(x2)	# 2331
	addi	x2, x2, -160	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 160	# 2331
	lw		x1, -156(x2)	# 2331
	lw		x5, -152(x2)	# 2331
	arrsw	x4, x5, x8	# 2331
	lw		x4, -32(x2)	# 2332
	flw		f1, -12(x2)	# 2332
	sw		x1, -156(x2)	# 2332
	addi	x2, x2, -160	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 160	# 2332
	lw		x1, -156(x2)	# 2332
	lw		x5, -152(x2)	# 2332
	lw		x6, -72(x2)	# 2332
	arrsw	x4, x5, x6	# 2332
	lw		x4, -32(x2)	# 2333
	flw		f1, -12(x2)	# 2333
	sw		x1, -156(x2)	# 2333
	addi	x2, x2, -160	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 160	# 2333
	lw		x1, -156(x2)	# 2333
	lw		x5, -152(x2)	# 2333
	lw		x12, -32(x2)	# 2333
	arrsw	x4, x5, x12	# 2333
	flw		f1, -12(x2)	# 2334
	addi	x4, x12, 0	# 2334
	sw		x1, -156(x2)	# 2334
	addi	x2, x2, -160	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 160	# 2334
	lw		x1, -156(x2)	# 2334
	lw		x5, -152(x2)	# 2334
	arrsw	x4, x5, x11	# 2334
	lw		x4, -32(x2)	# 2329
	flw		f1, -12(x2)	# 2329
	sw		x1, -156(x2)	# 2329
	addi	x2, x2, -160	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 160	# 2329
	lw		x1, -156(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -104(x2)	# 2330
	sw		x1, -156(x2)	# 2330
	addi	x2, x2, -160	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 160	# 2330
	lw		x1, -156(x2)	# 2330
	lw		x5, -32(x2)	# 2331
	flw		f1, -12(x2)	# 2331
	sw		x4, -156(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -160(x2)	# 2331
	addi	x2, x2, -164	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 164	# 2331
	lw		x1, -160(x2)	# 2331
	lw		x5, -156(x2)	# 2331
	arrsw	x4, x5, x8	# 2331
	lw		x4, -32(x2)	# 2332
	flw		f1, -12(x2)	# 2332
	sw		x1, -160(x2)	# 2332
	addi	x2, x2, -164	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 164	# 2332
	lw		x1, -160(x2)	# 2332
	lw		x5, -156(x2)	# 2332
	lw		x6, -72(x2)	# 2332
	arrsw	x4, x5, x6	# 2332
	lw		x4, -32(x2)	# 2333
	flw		f1, -12(x2)	# 2333
	sw		x1, -160(x2)	# 2333
	addi	x2, x2, -164	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 164	# 2333
	lw		x1, -160(x2)	# 2333
	lw		x5, -156(x2)	# 2333
	lw		x12, -32(x2)	# 2333
	arrsw	x4, x5, x12	# 2333
	flw		f1, -12(x2)	# 2334
	addi	x4, x12, 0	# 2334
	sw		x1, -160(x2)	# 2334
	addi	x2, x2, -164	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 164	# 2334
	lw		x1, -160(x2)	# 2334
	lw		x5, -156(x2)	# 2334
	arrsw	x4, x5, x11	# 2334
	lw		x4, -8(x2)	# 2347
	addi	x5, x4, 0	# 2347
	addi	x4, x8, 0	# 2347
	sw		x1, -160(x2)	# 2347
	addi	x2, x2, -164	# 2347
	jal		x1, min_caml_create_array	# 2347
	addi	x2, x2, 164	# 2347
	lw		x1, -160(x2)	# 2347
	lw		x5, -32(x2)	# 2329
	flw		f1, -12(x2)	# 2329
	sw		x4, -160(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -164(x2)	# 2329
	addi	x2, x2, -168	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 168	# 2329
	lw		x1, -164(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -104(x2)	# 2330
	sw		x1, -164(x2)	# 2330
	addi	x2, x2, -168	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 168	# 2330
	lw		x1, -164(x2)	# 2330
	lw		x5, -32(x2)	# 2331
	flw		f1, -12(x2)	# 2331
	sw		x4, -164(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -168(x2)	# 2331
	addi	x2, x2, -172	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 172	# 2331
	lw		x1, -168(x2)	# 2331
	lw		x5, -164(x2)	# 2331
	lw		x6, -4(x2)	# 2331
	arrsw	x4, x5, x6	# 2331
	lw		x4, -32(x2)	# 2332
	flw		f1, -12(x2)	# 2332
	sw		x1, -168(x2)	# 2332
	addi	x2, x2, -172	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 172	# 2332
	lw		x1, -168(x2)	# 2332
	lw		x5, -164(x2)	# 2332
	lw		x8, -72(x2)	# 2332
	arrsw	x4, x5, x8	# 2332
	lw		x4, -32(x2)	# 2333
	flw		f1, -12(x2)	# 2333
	sw		x1, -168(x2)	# 2333
	addi	x2, x2, -172	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 172	# 2333
	lw		x1, -168(x2)	# 2333
	lw		x5, -164(x2)	# 2333
	lw		x12, -32(x2)	# 2333
	arrsw	x4, x5, x12	# 2333
	flw		f1, -12(x2)	# 2334
	addi	x4, x12, 0	# 2334
	sw		x1, -168(x2)	# 2334
	addi	x2, x2, -172	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 172	# 2334
	lw		x1, -168(x2)	# 2334
	lw		x5, -164(x2)	# 2334
	arrsw	x4, x5, x11	# 2334
	addi	x4, x3, 0	# 2349
	addi	x3, x3, 32	# 2349
	sw		x5, 28(x4)	# 2349
	lw		x5, -160(x2)	# 2349
	sw		x5, 24(x4)	# 2349
	lw		x5, -156(x2)	# 2349
	sw		x5, 20(x4)	# 2349
	lw		x5, -152(x2)	# 2349
	sw		x5, 16(x4)	# 2349
	lw		x5, -148(x2)	# 2349
	sw		x5, 12(x4)	# 2349
	lw		x5, -144(x2)	# 2349
	sw		x5, 8(x4)	# 2349
	lw		x5, -136(x2)	# 2349
	sw		x5, 4(x4)	# 2349
	lw		x5, -132(x2)	# 2349
	sw		x5, 0(x4)	# 2349
	sw		x9, -168(x2)	# 2363
	addi	x5, x4, 0	# 2363
	addi	x4, x9, 0	# 2363
	sw		x1, -172(x2)	# 2363
	addi	x2, x2, -176	# 2363
	jal		x1, min_caml_create_array	# 2363
	addi	x2, x2, 176	# 2363
	lw		x1, -172(x2)	# 2363
	lw		x5, -168(x2)	# 2364
	addi	x6, x5, -2	# 2364
	sw		x7, -172(x2)	# 2364
	sw		x6, -176(x2)	# 2364
	addi	x5, x6, 0	# 2364
	sw		x1, -180(x2)	# 2364
	addi	x2, x2, -184	# 2364
	jal		x1, init_line_elements.3080.18109	# 2364
	addi	x2, x2, 184	# 2364
	lw		x1, -180(x2)	# 2364
	lw		x5, -32(x2)	# 2341
	flw		f1, -12(x2)	# 2341
	sw		x4, -180(x2)	# 2341
	addi	x4, x5, 0	# 2341
	sw		x1, -184(x2)	# 2341
	addi	x2, x2, -188	# 2341
	jal		x1, min_caml_create_float_array	# 2341
	addi	x2, x2, 188	# 2341
	lw		x1, -184(x2)	# 2341
	lw		x5, -32(x2)	# 2329
	flw		f1, -12(x2)	# 2329
	sw		x4, -184(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -188(x2)	# 2329
	addi	x2, x2, -192	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 192	# 2329
	lw		x1, -188(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -104(x2)	# 2330
	sw		x1, -188(x2)	# 2330
	addi	x2, x2, -192	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 192	# 2330
	lw		x1, -188(x2)	# 2330
	lw		x5, -32(x2)	# 2331
	flw		f1, -12(x2)	# 2331
	sw		x4, -188(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -192(x2)	# 2331
	addi	x2, x2, -196	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 196	# 2331
	lw		x1, -192(x2)	# 2331
	lw		x5, -188(x2)	# 2331
	lw		x6, -4(x2)	# 2331
	arrsw	x4, x5, x6	# 2331
	lw		x4, -32(x2)	# 2332
	flw		f1, -12(x2)	# 2332
	sw		x1, -192(x2)	# 2332
	addi	x2, x2, -196	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 196	# 2332
	lw		x1, -192(x2)	# 2332
	lw		x5, -188(x2)	# 2332
	lw		x7, -72(x2)	# 2332
	arrsw	x4, x5, x7	# 2332
	lw		x4, -32(x2)	# 2333
	flw		f1, -12(x2)	# 2333
	sw		x1, -192(x2)	# 2333
	addi	x2, x2, -196	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 196	# 2333
	lw		x1, -192(x2)	# 2333
	lw		x5, -188(x2)	# 2333
	lw		x8, -32(x2)	# 2333
	arrsw	x4, x5, x8	# 2333
	flw		f1, -12(x2)	# 2334
	addi	x4, x8, 0	# 2334
	sw		x1, -192(x2)	# 2334
	addi	x2, x2, -196	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 196	# 2334
	lw		x1, -192(x2)	# 2334
	lw		x5, -188(x2)	# 2334
	arrsw	x4, x5, x11	# 2334
	lw		x4, -104(x2)	# 2343
	lw		x8, -8(x2)	# 2343
	addi	x5, x8, 0	# 2343
	sw		x1, -192(x2)	# 2343
	addi	x2, x2, -196	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 196	# 2343
	lw		x1, -192(x2)	# 2343
	lw		x5, -104(x2)	# 2344
	lw		x6, -8(x2)	# 2344
	sw		x4, -192(x2)	# 2344
	addi	x4, x5, 0	# 2344
	addi	x5, x6, 0	# 2344
	sw		x1, -196(x2)	# 2344
	addi	x2, x2, -200	# 2344
	jal		x1, min_caml_create_array	# 2344
	addi	x2, x2, 200	# 2344
	lw		x1, -196(x2)	# 2344
	lw		x5, -32(x2)	# 2329
	flw		f1, -12(x2)	# 2329
	sw		x4, -196(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -200(x2)	# 2329
	addi	x2, x2, -204	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 204	# 2329
	lw		x1, -200(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -104(x2)	# 2330
	sw		x1, -200(x2)	# 2330
	addi	x2, x2, -204	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 204	# 2330
	lw		x1, -200(x2)	# 2330
	lw		x5, -32(x2)	# 2331
	flw		f1, -12(x2)	# 2331
	sw		x4, -200(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -204(x2)	# 2331
	addi	x2, x2, -208	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 208	# 2331
	lw		x1, -204(x2)	# 2331
	lw		x5, -200(x2)	# 2331
	lw		x6, -4(x2)	# 2331
	arrsw	x4, x5, x6	# 2331
	lw		x4, -32(x2)	# 2332
	flw		f1, -12(x2)	# 2332
	sw		x1, -204(x2)	# 2332
	addi	x2, x2, -208	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 208	# 2332
	lw		x1, -204(x2)	# 2332
	lw		x5, -200(x2)	# 2332
	arrsw	x4, x5, x7	# 2332
	lw		x4, -32(x2)	# 2333
	flw		f1, -12(x2)	# 2333
	sw		x1, -204(x2)	# 2333
	addi	x2, x2, -208	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 208	# 2333
	lw		x1, -204(x2)	# 2333
	lw		x5, -200(x2)	# 2333
	lw		x8, -32(x2)	# 2333
	arrsw	x4, x5, x8	# 2333
	flw		f1, -12(x2)	# 2334
	addi	x4, x8, 0	# 2334
	sw		x1, -204(x2)	# 2334
	addi	x2, x2, -208	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 208	# 2334
	lw		x1, -204(x2)	# 2334
	lw		x5, -200(x2)	# 2334
	arrsw	x4, x5, x11	# 2334
	lw		x4, -32(x2)	# 2329
	flw		f1, -12(x2)	# 2329
	sw		x1, -204(x2)	# 2329
	addi	x2, x2, -208	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 208	# 2329
	lw		x1, -204(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -104(x2)	# 2330
	sw		x1, -204(x2)	# 2330
	addi	x2, x2, -208	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 208	# 2330
	lw		x1, -204(x2)	# 2330
	lw		x5, -32(x2)	# 2331
	flw		f1, -12(x2)	# 2331
	sw		x4, -204(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -208(x2)	# 2331
	addi	x2, x2, -212	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 212	# 2331
	lw		x1, -208(x2)	# 2331
	lw		x5, -204(x2)	# 2331
	lw		x6, -4(x2)	# 2331
	arrsw	x4, x5, x6	# 2331
	lw		x4, -32(x2)	# 2332
	flw		f1, -12(x2)	# 2332
	sw		x1, -208(x2)	# 2332
	addi	x2, x2, -212	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 212	# 2332
	lw		x1, -208(x2)	# 2332
	lw		x5, -204(x2)	# 2332
	arrsw	x4, x5, x7	# 2332
	lw		x4, -32(x2)	# 2333
	flw		f1, -12(x2)	# 2333
	sw		x1, -208(x2)	# 2333
	addi	x2, x2, -212	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 212	# 2333
	lw		x1, -208(x2)	# 2333
	lw		x5, -204(x2)	# 2333
	lw		x8, -32(x2)	# 2333
	arrsw	x4, x5, x8	# 2333
	flw		f1, -12(x2)	# 2334
	addi	x4, x8, 0	# 2334
	sw		x1, -208(x2)	# 2334
	addi	x2, x2, -212	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 212	# 2334
	lw		x1, -208(x2)	# 2334
	lw		x5, -204(x2)	# 2334
	arrsw	x4, x5, x11	# 2334
	lw		x4, -8(x2)	# 2347
	addi	x5, x4, 0	# 2347
	addi	x4, x6, 0	# 2347
	sw		x1, -208(x2)	# 2347
	addi	x2, x2, -212	# 2347
	jal		x1, min_caml_create_array	# 2347
	addi	x2, x2, 212	# 2347
	lw		x1, -208(x2)	# 2347
	lw		x5, -32(x2)	# 2329
	flw		f1, -12(x2)	# 2329
	sw		x4, -208(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -212(x2)	# 2329
	addi	x2, x2, -216	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 216	# 2329
	lw		x1, -212(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -104(x2)	# 2330
	sw		x1, -212(x2)	# 2330
	addi	x2, x2, -216	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 216	# 2330
	lw		x1, -212(x2)	# 2330
	lw		x5, -32(x2)	# 2331
	flw		f1, -12(x2)	# 2331
	sw		x4, -212(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -216(x2)	# 2331
	addi	x2, x2, -220	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 220	# 2331
	lw		x1, -216(x2)	# 2331
	lw		x5, -212(x2)	# 2331
	lw		x6, -4(x2)	# 2331
	arrsw	x4, x5, x6	# 2331
	lw		x4, -32(x2)	# 2332
	flw		f1, -12(x2)	# 2332
	sw		x1, -216(x2)	# 2332
	addi	x2, x2, -220	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 220	# 2332
	lw		x1, -216(x2)	# 2332
	lw		x5, -212(x2)	# 2332
	arrsw	x4, x5, x7	# 2332
	lw		x4, -32(x2)	# 2333
	flw		f1, -12(x2)	# 2333
	sw		x1, -216(x2)	# 2333
	addi	x2, x2, -220	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 220	# 2333
	lw		x1, -216(x2)	# 2333
	lw		x5, -212(x2)	# 2333
	lw		x8, -32(x2)	# 2333
	arrsw	x4, x5, x8	# 2333
	flw		f1, -12(x2)	# 2334
	addi	x4, x8, 0	# 2334
	sw		x1, -216(x2)	# 2334
	addi	x2, x2, -220	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 220	# 2334
	lw		x1, -216(x2)	# 2334
	lw		x5, -212(x2)	# 2334
	arrsw	x4, x5, x11	# 2334
	addi	x4, x3, 0	# 2349
	addi	x3, x3, 32	# 2349
	sw		x5, 28(x4)	# 2349
	lw		x5, -208(x2)	# 2349
	sw		x5, 24(x4)	# 2349
	lw		x5, -204(x2)	# 2349
	sw		x5, 20(x4)	# 2349
	lw		x5, -200(x2)	# 2349
	sw		x5, 16(x4)	# 2349
	lw		x5, -196(x2)	# 2349
	sw		x5, 12(x4)	# 2349
	lw		x5, -192(x2)	# 2349
	sw		x5, 8(x4)	# 2349
	lw		x5, -188(x2)	# 2349
	sw		x5, 4(x4)	# 2349
	lw		x5, -184(x2)	# 2349
	sw		x5, 0(x4)	# 2349
	lw		x5, -168(x2)	# 2363
	addi	x31, x5, 0	# 2363
	addi	x5, x4, 0	# 2363
	addi	x4, x31, 0	# 2363
	sw		x1, -216(x2)	# 2363
	addi	x2, x2, -220	# 2363
	jal		x1, min_caml_create_array	# 2363
	addi	x2, x2, 220	# 2363
	lw		x1, -216(x2)	# 2363
	lw		x5, -176(x2)	# 2364
	sw		x1, -216(x2)	# 2364
	addi	x2, x2, -220	# 2364
	jal		x1, init_line_elements.3080.18109	# 2364
	addi	x2, x2, 220	# 2364
	lw		x1, -216(x2)	# 2364
	lw		x5, -32(x2)	# 2341
	flw		f1, -12(x2)	# 2341
	sw		x4, -216(x2)	# 2341
	addi	x4, x5, 0	# 2341
	sw		x1, -220(x2)	# 2341
	addi	x2, x2, -224	# 2341
	jal		x1, min_caml_create_float_array	# 2341
	addi	x2, x2, 224	# 2341
	lw		x1, -220(x2)	# 2341
	lw		x5, -32(x2)	# 2329
	flw		f1, -12(x2)	# 2329
	sw		x4, -220(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -224(x2)	# 2329
	addi	x2, x2, -228	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 228	# 2329
	lw		x1, -224(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -104(x2)	# 2330
	sw		x1, -224(x2)	# 2330
	addi	x2, x2, -228	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 228	# 2330
	lw		x1, -224(x2)	# 2330
	lw		x5, -32(x2)	# 2331
	flw		f1, -12(x2)	# 2331
	sw		x4, -224(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -228(x2)	# 2331
	addi	x2, x2, -232	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 232	# 2331
	lw		x1, -228(x2)	# 2331
	lw		x5, -224(x2)	# 2331
	lw		x6, -4(x2)	# 2331
	arrsw	x4, x5, x6	# 2331
	lw		x4, -32(x2)	# 2332
	flw		f1, -12(x2)	# 2332
	sw		x1, -228(x2)	# 2332
	addi	x2, x2, -232	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 232	# 2332
	lw		x1, -228(x2)	# 2332
	lw		x5, -224(x2)	# 2332
	lw		x7, -72(x2)	# 2332
	arrsw	x4, x5, x7	# 2332
	lw		x4, -32(x2)	# 2333
	flw		f1, -12(x2)	# 2333
	sw		x1, -228(x2)	# 2333
	addi	x2, x2, -232	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 232	# 2333
	lw		x1, -228(x2)	# 2333
	lw		x5, -224(x2)	# 2333
	lw		x8, -32(x2)	# 2333
	arrsw	x4, x5, x8	# 2333
	flw		f1, -12(x2)	# 2334
	addi	x4, x8, 0	# 2334
	sw		x1, -228(x2)	# 2334
	addi	x2, x2, -232	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 232	# 2334
	lw		x1, -228(x2)	# 2334
	lw		x5, -224(x2)	# 2334
	arrsw	x4, x5, x11	# 2334
	lw		x4, -104(x2)	# 2343
	lw		x8, -8(x2)	# 2343
	addi	x5, x8, 0	# 2343
	sw		x1, -228(x2)	# 2343
	addi	x2, x2, -232	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 232	# 2343
	lw		x1, -228(x2)	# 2343
	lw		x5, -104(x2)	# 2344
	lw		x6, -8(x2)	# 2344
	sw		x4, -228(x2)	# 2344
	addi	x4, x5, 0	# 2344
	addi	x5, x6, 0	# 2344
	sw		x1, -232(x2)	# 2344
	addi	x2, x2, -236	# 2344
	jal		x1, min_caml_create_array	# 2344
	addi	x2, x2, 236	# 2344
	lw		x1, -232(x2)	# 2344
	lw		x5, -32(x2)	# 2329
	flw		f1, -12(x2)	# 2329
	sw		x4, -232(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -236(x2)	# 2329
	addi	x2, x2, -240	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 240	# 2329
	lw		x1, -236(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -104(x2)	# 2330
	sw		x1, -236(x2)	# 2330
	addi	x2, x2, -240	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 240	# 2330
	lw		x1, -236(x2)	# 2330
	lw		x5, -32(x2)	# 2331
	flw		f1, -12(x2)	# 2331
	sw		x4, -236(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -240(x2)	# 2331
	addi	x2, x2, -244	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 244	# 2331
	lw		x1, -240(x2)	# 2331
	lw		x5, -236(x2)	# 2331
	lw		x6, -4(x2)	# 2331
	arrsw	x4, x5, x6	# 2331
	lw		x4, -32(x2)	# 2332
	flw		f1, -12(x2)	# 2332
	sw		x1, -240(x2)	# 2332
	addi	x2, x2, -244	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 244	# 2332
	lw		x1, -240(x2)	# 2332
	lw		x5, -236(x2)	# 2332
	arrsw	x4, x5, x7	# 2332
	lw		x4, -32(x2)	# 2333
	flw		f1, -12(x2)	# 2333
	sw		x1, -240(x2)	# 2333
	addi	x2, x2, -244	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 244	# 2333
	lw		x1, -240(x2)	# 2333
	lw		x5, -236(x2)	# 2333
	lw		x8, -32(x2)	# 2333
	arrsw	x4, x5, x8	# 2333
	flw		f1, -12(x2)	# 2334
	addi	x4, x8, 0	# 2334
	sw		x1, -240(x2)	# 2334
	addi	x2, x2, -244	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 244	# 2334
	lw		x1, -240(x2)	# 2334
	lw		x5, -236(x2)	# 2334
	arrsw	x4, x5, x11	# 2334
	lw		x4, -32(x2)	# 2329
	flw		f1, -12(x2)	# 2329
	sw		x1, -240(x2)	# 2329
	addi	x2, x2, -244	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 244	# 2329
	lw		x1, -240(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -104(x2)	# 2330
	sw		x1, -240(x2)	# 2330
	addi	x2, x2, -244	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 244	# 2330
	lw		x1, -240(x2)	# 2330
	lw		x5, -32(x2)	# 2331
	flw		f1, -12(x2)	# 2331
	sw		x4, -240(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -244(x2)	# 2331
	addi	x2, x2, -248	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 248	# 2331
	lw		x1, -244(x2)	# 2331
	lw		x5, -240(x2)	# 2331
	lw		x6, -4(x2)	# 2331
	arrsw	x4, x5, x6	# 2331
	lw		x4, -32(x2)	# 2332
	flw		f1, -12(x2)	# 2332
	sw		x1, -244(x2)	# 2332
	addi	x2, x2, -248	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 248	# 2332
	lw		x1, -244(x2)	# 2332
	lw		x5, -240(x2)	# 2332
	arrsw	x4, x5, x7	# 2332
	lw		x4, -32(x2)	# 2333
	flw		f1, -12(x2)	# 2333
	sw		x1, -244(x2)	# 2333
	addi	x2, x2, -248	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 248	# 2333
	lw		x1, -244(x2)	# 2333
	lw		x5, -240(x2)	# 2333
	lw		x8, -32(x2)	# 2333
	arrsw	x4, x5, x8	# 2333
	flw		f1, -12(x2)	# 2334
	addi	x4, x8, 0	# 2334
	sw		x1, -244(x2)	# 2334
	addi	x2, x2, -248	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 248	# 2334
	lw		x1, -244(x2)	# 2334
	lw		x5, -240(x2)	# 2334
	arrsw	x4, x5, x11	# 2334
	lw		x4, -8(x2)	# 2347
	addi	x5, x4, 0	# 2347
	addi	x4, x6, 0	# 2347
	sw		x1, -244(x2)	# 2347
	addi	x2, x2, -248	# 2347
	jal		x1, min_caml_create_array	# 2347
	addi	x2, x2, 248	# 2347
	lw		x1, -244(x2)	# 2347
	lw		x5, -32(x2)	# 2329
	flw		f1, -12(x2)	# 2329
	sw		x4, -244(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -248(x2)	# 2329
	addi	x2, x2, -252	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 252	# 2329
	lw		x1, -248(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -104(x2)	# 2330
	sw		x1, -248(x2)	# 2330
	addi	x2, x2, -252	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 252	# 2330
	lw		x1, -248(x2)	# 2330
	lw		x5, -32(x2)	# 2331
	flw		f1, -12(x2)	# 2331
	sw		x4, -248(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -252(x2)	# 2331
	addi	x2, x2, -256	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 256	# 2331
	lw		x1, -252(x2)	# 2331
	lw		x5, -248(x2)	# 2331
	lw		x6, -4(x2)	# 2331
	arrsw	x4, x5, x6	# 2331
	lw		x4, -32(x2)	# 2332
	flw		f1, -12(x2)	# 2332
	sw		x1, -252(x2)	# 2332
	addi	x2, x2, -256	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 256	# 2332
	lw		x1, -252(x2)	# 2332
	lw		x5, -248(x2)	# 2332
	arrsw	x4, x5, x7	# 2332
	lw		x4, -32(x2)	# 2333
	flw		f1, -12(x2)	# 2333
	sw		x1, -252(x2)	# 2333
	addi	x2, x2, -256	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 256	# 2333
	lw		x1, -252(x2)	# 2333
	lw		x5, -248(x2)	# 2333
	lw		x8, -32(x2)	# 2333
	arrsw	x4, x5, x8	# 2333
	flw		f1, -12(x2)	# 2334
	addi	x4, x8, 0	# 2334
	sw		x1, -252(x2)	# 2334
	addi	x2, x2, -256	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 256	# 2334
	lw		x1, -252(x2)	# 2334
	lw		x5, -248(x2)	# 2334
	arrsw	x4, x5, x11	# 2334
	addi	x4, x3, 0	# 2349
	addi	x3, x3, 32	# 2349
	sw		x5, 28(x4)	# 2349
	lw		x5, -244(x2)	# 2349
	sw		x5, 24(x4)	# 2349
	lw		x5, -240(x2)	# 2349
	sw		x5, 20(x4)	# 2349
	lw		x5, -236(x2)	# 2349
	sw		x5, 16(x4)	# 2349
	lw		x5, -232(x2)	# 2349
	sw		x5, 12(x4)	# 2349
	lw		x5, -228(x2)	# 2349
	sw		x5, 8(x4)	# 2349
	lw		x5, -224(x2)	# 2349
	sw		x5, 4(x4)	# 2349
	lw		x5, -220(x2)	# 2349
	sw		x5, 0(x4)	# 2349
	lw		x5, -168(x2)	# 2363
	addi	x31, x5, 0	# 2363
	addi	x5, x4, 0	# 2363
	addi	x4, x31, 0	# 2363
	sw		x1, -252(x2)	# 2363
	addi	x2, x2, -256	# 2363
	jal		x1, min_caml_create_array	# 2363
	addi	x2, x2, 256	# 2363
	lw		x1, -252(x2)	# 2363
	lw		x5, -176(x2)	# 2364
	sw		x1, -252(x2)	# 2364
	addi	x2, x2, -256	# 2364
	jal		x1, init_line_elements.3080.18109	# 2364
	addi	x2, x2, 256	# 2364
	lw		x1, -252(x2)	# 2364
	sw		x1, -252(x2)	# 741
	addi	x2, x2, -256	# 741
	jal		x1, min_caml_read_float	# 741
	addi	x2, x2, 256	# 741
	lw		x1, -252(x2)	# 741
	lw		x5, -28(x2)	# 741
	lw		x6, -8(x2)	# 741
	arrfsw	f1, x5, x6	# 741
	sw		x1, -252(x2)	# 742
	addi	x2, x2, -256	# 742
	jal		x1, min_caml_read_float	# 742
	addi	x2, x2, 256	# 742
	lw		x1, -252(x2)	# 742
	lw		x7, -4(x2)	# 742
	arrfsw	f1, x5, x7	# 742
	sw		x1, -252(x2)	# 743
	addi	x2, x2, -256	# 743
	jal		x1, min_caml_read_float	# 743
	addi	x2, x2, 256	# 743
	lw		x1, -252(x2)	# 743
	lw		x8, -72(x2)	# 743
	arrfsw	f1, x5, x8	# 743
	sw		x1, -252(x2)	# 745
	addi	x2, x2, -256	# 745
	jal		x1, min_caml_read_float	# 745
	addi	x2, x2, 256	# 745
	lw		x1, -252(x2)	# 745
	lui		x9, %hi(l.27995)	# 734
	ori		x9, x9, %lo(l.27995)	# 734
	flw		f2, 0(x9)	# 734
	fmul	f1, f1, f2	# 734
	sw		x4, -252(x2)	# 746
	fsw		f2, -256(x2)	# 746
	fsw		f1, -260(x2)	# 746
	sw		x1, -264(x2)	# 746
	addi	x2, x2, -268	# 746
	jal		x1, cos.2638.17994	# 746
	addi	x2, x2, 268	# 746
	lw		x1, -264(x2)	# 746
	flw		f2, -260(x2)	# 747
	fsw		f1, -264(x2)	# 747
	fadd	f1, f0, f2	# 747
	sw		x1, -268(x2)	# 747
	addi	x2, x2, -272	# 747
	jal		x1, sin.2636.17992	# 747
	addi	x2, x2, 272	# 747
	lw		x1, -268(x2)	# 747
	fsw		f1, -268(x2)	# 748
	sw		x1, -272(x2)	# 748
	addi	x2, x2, -276	# 748
	jal		x1, min_caml_read_float	# 748
	addi	x2, x2, 276	# 748
	lw		x1, -272(x2)	# 748
	flw		f2, -256(x2)	# 734
	fmul	f1, f1, f2	# 734
	fsw		f1, -272(x2)	# 749
	sw		x1, -276(x2)	# 749
	addi	x2, x2, -280	# 749
	jal		x1, cos.2638.17994	# 749
	addi	x2, x2, 280	# 749
	lw		x1, -276(x2)	# 749
	flw		f2, -272(x2)	# 750
	fsw		f1, -276(x2)	# 750
	fadd	f1, f0, f2	# 750
	sw		x1, -280(x2)	# 750
	addi	x2, x2, -284	# 750
	jal		x1, sin.2636.17992	# 750
	addi	x2, x2, 284	# 750
	lw		x1, -280(x2)	# 750
	flw		f2, -264(x2)	# 752
	fmul	f3, f2, f1	# 752
	lui		x4, %hi(l.31095)	# 752
	ori		x4, x4, %lo(l.31095)	# 752
	flw		f4, 0(x4)	# 752
	fmul	f3, f3, f4	# 752
	lw		x4, -92(x2)	# 752
	arrfsw	f3, x4, x6	# 752
	lui		x9, %hi(l.31099)	# 753
	ori		x9, x9, %lo(l.31099)	# 753
	flw		f3, 0(x9)	# 753
	flw		f5, -268(x2)	# 753
	fmul	f3, f5, f3	# 753
	arrfsw	f3, x4, x7	# 753
	flw		f3, -276(x2)	# 754
	fmul	f6, f2, f3	# 754
	fmul	f4, f6, f4	# 754
	arrfsw	f4, x4, x8	# 754
	lw		x9, -84(x2)	# 756
	arrfsw	f3, x9, x6	# 756
	flw		f4, -12(x2)	# 757
	arrfsw	f4, x9, x7	# 757
	fsub	f6, f0, f1	# 123
	arrfsw	f6, x9, x8	# 758
	fsub	f5, f0, f5	# 123
	fmul	f1, f5, f1	# 760
	lw		x9, -88(x2)	# 760
	arrfsw	f1, x9, x6	# 760
	fsub	f1, f0, f2	# 123
	arrfsw	f1, x9, x7	# 761
	fmul	f1, f5, f3	# 762
	arrfsw	f1, x9, x8	# 762
	arrflw	f1, x5, x6	# 764
	arrflw	f2, x4, x6	# 764
	fsub	f1, f1, f2	# 764
	lw		x12, -36(x2)	# 764
	arrfsw	f1, x12, x6	# 764
	arrflw	f1, x5, x7	# 765
	arrflw	f3, x4, x7	# 765
	fsub	f1, f1, f3	# 765
	arrfsw	f1, x12, x7	# 765
	arrflw	f1, x5, x8	# 766
	arrflw	f5, x4, x8	# 766
	fsub	f1, f1, f5	# 766
	arrfsw	f1, x12, x8	# 766
	sw		x1, -280(x2)	# 773
	addi	x2, x2, -284	# 773
	jal		x1, min_caml_read_int	# 773
	addi	x2, x2, 284	# 773
	lw		x1, -280(x2)	# 773
	sw		x1, -280(x2)	# 776
	addi	x2, x2, -284	# 776
	jal		x1, min_caml_read_float	# 776
	addi	x2, x2, 284	# 776
	lw		x1, -280(x2)	# 776
	flw		f6, -256(x2)	# 734
	fmul	f1, f1, f6	# 734
	fsw		f3, -280(x2)	# 777
	fsw		f2, -284(x2)	# 777
	fsw		f1, -288(x2)	# 777
	sw		x1, -292(x2)	# 777
	addi	x2, x2, -296	# 777
	jal		x1, sin.2636.17992	# 777
	addi	x2, x2, 296	# 777
	lw		x1, -292(x2)	# 777
	fsub	f1, f0, f1	# 123
	lw		x4, -40(x2)	# 778
	arrfsw	f1, x4, x7	# 778
	sw		x1, -292(x2)	# 779
	addi	x2, x2, -296	# 779
	jal		x1, min_caml_read_float	# 779
	addi	x2, x2, 296	# 779
	lw		x1, -292(x2)	# 779
	fmul	f1, f1, f6	# 734
	flw		f2, -288(x2)	# 780
	fsw		f1, -292(x2)	# 780
	fadd	f1, f0, f2	# 780
	sw		x1, -296(x2)	# 780
	addi	x2, x2, -300	# 780
	jal		x1, cos.2638.17994	# 780
	addi	x2, x2, 300	# 780
	lw		x1, -296(x2)	# 780
	flw		f2, -292(x2)	# 781
	fsw		f1, -296(x2)	# 781
	fadd	f1, f0, f2	# 781
	sw		x1, -300(x2)	# 781
	addi	x2, x2, -304	# 781
	jal		x1, sin.2636.17992	# 781
	addi	x2, x2, 304	# 781
	lw		x1, -300(x2)	# 781
	flw		f2, -296(x2)	# 782
	fmul	f1, f2, f1	# 782
	lw		x4, -40(x2)	# 782
	arrfsw	f1, x4, x6	# 782
	flw		f1, -292(x2)	# 783
	sw		x1, -300(x2)	# 783
	addi	x2, x2, -304	# 783
	jal		x1, cos.2638.17994	# 783
	addi	x2, x2, 304	# 783
	lw		x1, -300(x2)	# 783
	flw		f2, -296(x2)	# 784
	fmul	f1, f2, f1	# 784
	lw		x4, -40(x2)	# 784
	arrfsw	f1, x4, x8	# 784
	sw		x1, -300(x2)	# 785
	addi	x2, x2, -304	# 785
	jal		x1, min_caml_read_float	# 785
	addi	x2, x2, 304	# 785
	lw		x1, -300(x2)	# 785
	lw		x5, -44(x2)	# 785
	arrfsw	f1, x5, x6	# 785
	fsw		f5, -300(x2)	# 927
	addi	x4, x6, 0	# 927
	sw		x1, -304(x2)	# 927
	addi	x2, x2, -308	# 927
	jal		x1, read_object.2787.18006	# 927
	addi	x2, x2, 308	# 927
	lw		x1, -304(x2)	# 927
	lw		x4, -8(x2)	# 964
	sw		x1, -304(x2)	# 964
	addi	x2, x2, -308	# 964
	jal		x1, read_and_network.2795.18012	# 964
	addi	x2, x2, 308	# 964
	lw		x1, -304(x2)	# 964
	lw		x4, -8(x2)	# 965
	sw		x1, -304(x2)	# 965
	addi	x2, x2, -308	# 965
	jal		x1, read_or_network.2793.18010	# 965
	addi	x2, x2, 308	# 965
	lw		x1, -304(x2)	# 965
	lw		x5, -64(x2)	# 965
	lw		x6, -8(x2)	# 965
	arrsw	x4, x5, x6	# 965
	addi	x4, x0, 80	# 2172
	sw		x1, -304(x2)	# 2172
	addi	x2, x2, -308	# 2172
	jal		x1, min_caml_print_char	# 2172
	addi	x2, x2, 308	# 2172
	lw		x1, -304(x2)	# 2172
	addi	x4, x0, 48	# 2173
	addi	x5, x0, 51	# 2173
	sw		x4, -304(x2)	# 2173
	addi	x4, x5, 0	# 2173
	sw		x1, -308(x2)	# 2173
	addi	x2, x2, -312	# 2173
	jal		x1, min_caml_print_char	# 2173
	addi	x2, x2, 312	# 2173
	lw		x1, -308(x2)	# 2173
	addi	x4, x0, 10	# 2174
	sw		x4, -308(x2)	# 2174
	sw		x1, -312(x2)	# 2174
	addi	x2, x2, -316	# 2174
	jal		x1, min_caml_print_char	# 2174
	addi	x2, x2, 316	# 2174
	lw		x1, -312(x2)	# 2174
	addi	x4, x0, 100	# 238
	lw		x5, -168(x2)	# 238
	sw		x4, -312(x2)	# 238
	ble		x4, x5, ble_cont.34530	# 238
	lw		x7, -304(x2)	# 238
	addi	x4, x7, 0	# 238
	sw		x1, -316(x2)	# 238
	addi	x2, x2, -320	# 238
	jal		x1, min_caml_print_char	# 238
	addi	x2, x2, 320	# 238
	lw		x1, -316(x2)	# 238
ble_cont.34530:
	lw		x4, -308(x2)	# 239
	ble		x4, x5, ble_cont.34532	# 239
	lw		x7, -304(x2)	# 239
	addi	x4, x7, 0	# 239
	sw		x1, -316(x2)	# 239
	addi	x2, x2, -320	# 239
	jal		x1, min_caml_print_char	# 239
	addi	x2, x2, 320	# 239
	lw		x1, -316(x2)	# 239
ble_cont.34532:
	addi	x4, x5, 0	# 240
	sw		x1, -316(x2)	# 240
	addi	x2, x2, -320	# 240
	jal		x1, print_int_main.2648.18004	# 240
	addi	x2, x2, 320	# 240
	lw		x1, -316(x2)	# 240
	addi	x4, x0, 32	# 2176
	sw		x4, -316(x2)	# 2176
	sw		x1, -320(x2)	# 2176
	addi	x2, x2, -324	# 2176
	jal		x1, min_caml_print_char	# 2176
	addi	x2, x2, 324	# 2176
	lw		x1, -320(x2)	# 2176
	lw		x4, -68(x2)	# 2177
	lw		x5, -4(x2)	# 2177
	arrlw	x4, x4, x5	# 2177
	lw		x6, -312(x2)	# 238
	sw		x4, -320(x2)	# 238
	ble		x6, x4, ble_cont.34534	# 238
	lw		x6, -304(x2)	# 238
	addi	x4, x6, 0	# 238
	sw		x1, -324(x2)	# 238
	addi	x2, x2, -328	# 238
	jal		x1, min_caml_print_char	# 238
	addi	x2, x2, 328	# 238
	lw		x1, -324(x2)	# 238
ble_cont.34534:
	lw		x4, -320(x2)	# 239
	lw		x6, -308(x2)	# 239
	ble		x6, x4, ble_cont.34536	# 239
	lw		x7, -304(x2)	# 239
	addi	x4, x7, 0	# 239
	sw		x1, -324(x2)	# 239
	addi	x2, x2, -328	# 239
	jal		x1, min_caml_print_char	# 239
	addi	x2, x2, 328	# 239
	lw		x1, -324(x2)	# 239
ble_cont.34536:
	lw		x4, -320(x2)	# 240
	sw		x1, -324(x2)	# 240
	addi	x2, x2, -328	# 240
	jal		x1, print_int_main.2648.18004	# 240
	addi	x2, x2, 328	# 240
	lw		x1, -324(x2)	# 240
	lw		x4, -316(x2)	# 2178
	sw		x1, -324(x2)	# 2178
	addi	x2, x2, -328	# 2178
	jal		x1, min_caml_print_char	# 2178
	addi	x2, x2, 328	# 2178
	lw		x1, -324(x2)	# 2178
	addi	x4, x0, 255	# 2179
	sw		x1, -324(x2)	# 240
	addi	x2, x2, -328	# 240
	jal		x1, print_int_main.2648.18004	# 240
	addi	x2, x2, 328	# 240
	lw		x1, -324(x2)	# 240
	lw		x4, -308(x2)	# 2180
	sw		x1, -324(x2)	# 2180
	addi	x2, x2, -328	# 2180
	jal		x1, min_caml_print_char	# 2180
	addi	x2, x2, 328	# 2180
	lw		x1, -324(x2)	# 2180
	lw		x4, -140(x2)	# 2478
	sw		x1, -324(x2)	# 2478
	addi	x2, x2, -328	# 2478
	jal		x1, create_dirvecs.3112.18132	# 2478
	addi	x2, x2, 328	# 2478
	lw		x1, -324(x2)	# 2478
	addi	x4, x0, 9	# 2479
	lw		x5, -8(x2)	# 2479
	addi	x6, x5, 0	# 2479
	sw		x1, -324(x2)	# 2479
	addi	x2, x2, -328	# 2479
	jal		x1, calc_dirvec_rows.3103.18125	# 2479
	addi	x2, x2, 328	# 2479
	lw		x1, -324(x2)	# 2479
	lw		x4, -140(x2)	# 2480
	sw		x1, -324(x2)	# 2480
	addi	x2, x2, -328	# 2480
	jal		x1, init_vecset_constants.3117.18137	# 2480
	addi	x2, x2, 328	# 2480
	lw		x1, -324(x2)	# 2480
	lw		x4, -40(x2)	# 316
	lw		x5, -8(x2)	# 316
	arrflw	f1, x4, x5	# 316
	lw		x6, -108(x2)	# 316
	arrfsw	f1, x6, x5	# 316
	lw		x7, -4(x2)	# 317
	arrflw	f2, x4, x7	# 317
	arrfsw	f2, x6, x7	# 317
	lw		x8, -72(x2)	# 318
	arrflw	f3, x4, x8	# 318
	arrfsw	f3, x6, x8	# 318
	lw		x4, 0(x2)	# 1344
	arrlw	x4, x4, x5	# 1344
	addi	x6, x4, -1	# 1344
	lw		x9, -116(x2)	# 1344
	sw		x4, -324(x2)	# 1344
	fsw		f3, -328(x2)	# 1344
	fsw		f2, -332(x2)	# 1344
	fsw		f1, -336(x2)	# 1344
	sw		x6, -340(x2)	# 1344
	addi	x5, x6, 0	# 1344
	addi	x4, x9, 0	# 1344
	sw		x1, -344(x2)	# 1344
	addi	x2, x2, -348	# 1344
	jal		x1, iter_setup_dirvec_constants.2892.18014	# 1344
	addi	x2, x2, 348	# 1344
	lw		x1, -344(x2)	# 1344
	lw		x4, -340(x2)	# 2527
	lw		x5, -8(x2)	# 2527
	ble		x5, x4, ble.34539	# 2527
	jal		x0, ble_cont.34538	# 2527
ble.34539:
	lw		x6, -20(x2)	# 2528
	arrlw	x6, x6, x4	# 2528
	lw		x7, 8(x6)	# 420
	lw		x8, -72(x2)	# 2529
	beq		x7, x8, beq.34541	# 2529
	jal		x0, ble_cont.34538	# 2529
beq.34541:
	lw		x7, 28(x6)	# 518
	arrflw	f1, x7, x5	# 523
	fle		f30, f1, ble_cont.34538	# 125
	lw		x7, 4(x6)	# 410
	lw		x9, -4(x2)	# 2533
	beq		x7, x9, beq.34545	# 2533
	beq		x7, x8, beq.34547	# 2535
	jal		x0, ble_cont.34538	# 2535
beq.34547:
	lw		x7, -140(x2)	# 2512
	mul		x7, x4, x7	# 2512
	addi	x7, x7, 1	# 2512
	lw		x10, -124(x2)	# 2513
	arrlw	x11, x10, x5	# 2513
	fsub	f1, f30, f1	# 2514
	lw		x6, 16(x6)	# 478
	arrflw	f2, x6, x5	# 349
	flw		f3, -336(x2)	# 349
	fmul	f4, f3, f2	# 349
	arrflw	f5, x6, x9	# 349
	flw		f6, -332(x2)	# 349
	fmul	f7, f6, f5	# 349
	fadd	f4, f4, f7	# 349
	arrflw	f7, x6, x8	# 349
	flw		f8, -328(x2)	# 349
	fmul	f9, f8, f7	# 349
	fadd	f4, f4, f9	# 349
	lui		x6, %hi(l.28087)	# 2518
	ori		x6, x6, %lo(l.28087)	# 2518
	flw		f9, 0(x6)	# 2518
	fmul	f2, f9, f2	# 2518
	fmul	f2, f2, f4	# 2518
	fsub	f2, f2, f3	# 2518
	fmul	f3, f9, f5	# 2519
	fmul	f3, f3, f4	# 2519
	fsub	f3, f3, f6	# 2519
	fmul	f5, f9, f7	# 2520
	fmul	f4, f5, f4	# 2520
	fsub	f4, f4, f8	# 2520
	lw		x6, -32(x2)	# 2439
	flw		f5, -12(x2)	# 2439
	fsw		f1, -344(x2)	# 2439
	addi	x4, x6, 0	# 2439
	fadd	f1, f0, f5	# 2439
	sw		x1, -348(x2)	# 2439
	addi	x2, x2, -352	# 2439
	jal		x1, min_caml_create_float_array	# 2439
	addi	x2, x2, 352	# 2439
	lw		x1, -348(x2)	# 2439
	addi	x5, x4, 0	# 2439
	lw		x4, -324(x2)	# 2440
	sw		x5, -348(x2)	# 2440
	sw		x1, -352(x2)	# 2440
	addi	x2, x2, -356	# 2440
	jal		x1, min_caml_create_array	# 2440
	addi	x2, x2, 356	# 2440
	lw		x1, -352(x2)	# 2440
	addi	x5, x3, 0	# 2441
	addi	x3, x3, 8	# 2441
	sw		x4, 4(x5)	# 2441
	lw		x4, -348(x2)	# 2441
	sw		x4, 0(x5)	# 2441
	lw		x6, -8(x2)	# 297
	arrfsw	f2, x4, x6	# 297
	arrfsw	f3, x4, x9	# 298
	arrfsw	f4, x4, x8	# 299
	lw		x4, -340(x2)	# 1344
	sw		x11, -352(x2)	# 1344
	sw		x7, -356(x2)	# 1344
	sw		x5, -360(x2)	# 1344
	addi	x31, x5, 0	# 1344
	addi	x5, x4, 0	# 1344
	addi	x4, x31, 0	# 1344
	sw		x1, -364(x2)	# 1344
	addi	x2, x2, -368	# 1344
	jal		x1, iter_setup_dirvec_constants.2892.18014	# 1344
	addi	x2, x2, 368	# 1344
	lw		x1, -364(x2)	# 1344
	addi	x4, x3, 0	# 2493
	addi	x3, x3, 12	# 2493
	flw		f1, -344(x2)	# 2493
	fsw		f1, 8(x4)	# 2493
	lw		x5, -360(x2)	# 2493
	sw		x5, 4(x4)	# 2493
	lw		x5, -356(x2)	# 2493
	sw		x5, 0(x4)	# 2493
	lw		x5, -172(x2)	# 2493
	lw		x6, -352(x2)	# 2493
	arrsw	x4, x5, x6	# 2493
	addi	x4, x6, 1	# 2521
	lw		x5, -124(x2)	# 2521
	lw		x6, -8(x2)	# 2521
	arrsw	x4, x5, x6	# 2521
	jal		x0, ble_cont.34538	# 2533
beq.34545:
	lw		x6, -140(x2)	# 2498
	mul		x6, x4, x6	# 2498
	lw		x7, -124(x2)	# 2499
	arrlw	x10, x7, x5	# 2499
	fsub	f1, f30, f1	# 2500
	flw		f2, -336(x2)	# 123
	fsub	f3, f0, f2	# 123
	flw		f4, -332(x2)	# 123
	fsub	f5, f0, f4	# 123
	flw		f6, -328(x2)	# 123
	fsub	f7, f0, f6	# 123
	addi	x11, x6, 1	# 2504
	lw		x12, -32(x2)	# 2439
	flw		f8, -12(x2)	# 2439
	fsw		f1, -364(x2)	# 2439
	addi	x4, x12, 0	# 2439
	fadd	f1, f0, f8	# 2439
	sw		x1, -368(x2)	# 2439
	addi	x2, x2, -372	# 2439
	jal		x1, min_caml_create_float_array	# 2439
	addi	x2, x2, 372	# 2439
	lw		x1, -368(x2)	# 2439
	addi	x5, x4, 0	# 2439
	lw		x4, -324(x2)	# 2440
	sw		x6, -368(x2)	# 2440
	sw		x5, -372(x2)	# 2440
	sw		x1, -376(x2)	# 2440
	addi	x2, x2, -380	# 2440
	jal		x1, min_caml_create_array	# 2440
	addi	x2, x2, 380	# 2440
	lw		x1, -376(x2)	# 2440
	addi	x5, x3, 0	# 2441
	addi	x3, x3, 8	# 2441
	sw		x4, 4(x5)	# 2441
	lw		x4, -372(x2)	# 2441
	sw		x4, 0(x5)	# 2441
	lw		x6, -8(x2)	# 297
	arrfsw	f2, x4, x6	# 297
	arrfsw	f5, x4, x9	# 298
	arrfsw	f7, x4, x8	# 299
	lw		x4, -340(x2)	# 1344
	fsw		f5, -376(x2)	# 1344
	fsw		f7, -380(x2)	# 1344
	fsw		f3, -384(x2)	# 1344
	sw		x10, -388(x2)	# 1344
	sw		x11, -392(x2)	# 1344
	sw		x5, -396(x2)	# 1344
	addi	x31, x5, 0	# 1344
	addi	x5, x4, 0	# 1344
	addi	x4, x31, 0	# 1344
	sw		x1, -400(x2)	# 1344
	addi	x2, x2, -404	# 1344
	jal		x1, iter_setup_dirvec_constants.2892.18014	# 1344
	addi	x2, x2, 404	# 1344
	lw		x1, -400(x2)	# 1344
	addi	x4, x3, 0	# 2493
	addi	x3, x3, 12	# 2493
	flw		f1, -364(x2)	# 2493
	fsw		f1, 8(x4)	# 2493
	lw		x5, -396(x2)	# 2493
	sw		x5, 4(x4)	# 2493
	lw		x5, -392(x2)	# 2493
	sw		x5, 0(x4)	# 2493
	lw		x5, -172(x2)	# 2493
	lw		x6, -388(x2)	# 2493
	arrsw	x4, x5, x6	# 2493
	addi	x4, x6, 1	# 2505
	lw		x7, -368(x2)	# 2505
	addi	x8, x7, 2	# 2505
	lw		x9, -32(x2)	# 2439
	flw		f2, -12(x2)	# 2439
	sw		x4, -400(x2)	# 2439
	addi	x4, x9, 0	# 2439
	fadd	f1, f0, f2	# 2439
	sw		x1, -404(x2)	# 2439
	addi	x2, x2, -408	# 2439
	jal		x1, min_caml_create_float_array	# 2439
	addi	x2, x2, 408	# 2439
	lw		x1, -404(x2)	# 2439
	addi	x5, x4, 0	# 2439
	lw		x4, -324(x2)	# 2440
	sw		x5, -404(x2)	# 2440
	sw		x1, -408(x2)	# 2440
	addi	x2, x2, -412	# 2440
	jal		x1, min_caml_create_array	# 2440
	addi	x2, x2, 412	# 2440
	lw		x1, -408(x2)	# 2440
	addi	x5, x3, 0	# 2441
	addi	x3, x3, 8	# 2441
	sw		x4, 4(x5)	# 2441
	lw		x4, -404(x2)	# 2441
	sw		x4, 0(x5)	# 2441
	flw		f1, -384(x2)	# 297
	lw		x6, -8(x2)	# 297
	arrfsw	f1, x4, x6	# 297
	flw		f2, -332(x2)	# 298
	lw		x9, -4(x2)	# 298
	arrfsw	f2, x4, x9	# 298
	flw		f2, -380(x2)	# 299
	lw		x10, -72(x2)	# 299
	arrfsw	f2, x4, x10	# 299
	lw		x4, -340(x2)	# 1344
	sw		x8, -408(x2)	# 1344
	sw		x5, -412(x2)	# 1344
	addi	x31, x5, 0	# 1344
	addi	x5, x4, 0	# 1344
	addi	x4, x31, 0	# 1344
	sw		x1, -416(x2)	# 1344
	addi	x2, x2, -420	# 1344
	jal		x1, iter_setup_dirvec_constants.2892.18014	# 1344
	addi	x2, x2, 420	# 1344
	lw		x1, -416(x2)	# 1344
	addi	x4, x3, 0	# 2493
	addi	x3, x3, 12	# 2493
	flw		f1, -364(x2)	# 2493
	fsw		f1, 8(x4)	# 2493
	lw		x5, -412(x2)	# 2493
	sw		x5, 4(x4)	# 2493
	lw		x5, -408(x2)	# 2493
	sw		x5, 0(x4)	# 2493
	lw		x5, -172(x2)	# 2493
	lw		x6, -400(x2)	# 2493
	arrsw	x4, x5, x6	# 2493
	lw		x4, -388(x2)	# 2506
	addi	x6, x4, 2	# 2506
	lw		x7, -368(x2)	# 2506
	addi	x7, x7, 3	# 2506
	lw		x8, -32(x2)	# 2439
	flw		f2, -12(x2)	# 2439
	addi	x4, x8, 0	# 2439
	fadd	f1, f0, f2	# 2439
	sw		x1, -416(x2)	# 2439
	addi	x2, x2, -420	# 2439
	jal		x1, min_caml_create_float_array	# 2439
	addi	x2, x2, 420	# 2439
	lw		x1, -416(x2)	# 2439
	addi	x5, x4, 0	# 2439
	lw		x4, -324(x2)	# 2440
	sw		x6, -416(x2)	# 2440
	sw		x5, -420(x2)	# 2440
	sw		x1, -424(x2)	# 2440
	addi	x2, x2, -428	# 2440
	jal		x1, min_caml_create_array	# 2440
	addi	x2, x2, 428	# 2440
	lw		x1, -424(x2)	# 2440
	addi	x5, x3, 0	# 2441
	addi	x3, x3, 8	# 2441
	sw		x4, 4(x5)	# 2441
	lw		x4, -420(x2)	# 2441
	sw		x4, 0(x5)	# 2441
	flw		f1, -384(x2)	# 297
	lw		x6, -8(x2)	# 297
	arrfsw	f1, x4, x6	# 297
	flw		f1, -376(x2)	# 298
	lw		x8, -4(x2)	# 298
	arrfsw	f1, x4, x8	# 298
	flw		f1, -328(x2)	# 299
	lw		x9, -72(x2)	# 299
	arrfsw	f1, x4, x9	# 299
	lw		x4, -340(x2)	# 1344
	sw		x7, -424(x2)	# 1344
	sw		x5, -428(x2)	# 1344
	addi	x31, x5, 0	# 1344
	addi	x5, x4, 0	# 1344
	addi	x4, x31, 0	# 1344
	sw		x1, -432(x2)	# 1344
	addi	x2, x2, -436	# 1344
	jal		x1, iter_setup_dirvec_constants.2892.18014	# 1344
	addi	x2, x2, 436	# 1344
	lw		x1, -432(x2)	# 1344
	addi	x4, x3, 0	# 2493
	addi	x3, x3, 12	# 2493
	flw		f1, -364(x2)	# 2493
	fsw		f1, 8(x4)	# 2493
	lw		x5, -428(x2)	# 2493
	sw		x5, 4(x4)	# 2493
	lw		x5, -424(x2)	# 2493
	sw		x5, 0(x4)	# 2493
	lw		x5, -172(x2)	# 2493
	lw		x6, -416(x2)	# 2493
	arrsw	x4, x5, x6	# 2493
	lw		x4, -388(x2)	# 2507
	addi	x4, x4, 3	# 2507
	lw		x5, -124(x2)	# 2507
	lw		x6, -8(x2)	# 2507
	arrsw	x4, x5, x6	# 2507
ble_cont.34538:
	lw		x4, -80(x2)	# 2275
	lw		x5, -8(x2)	# 2275
	arrflw	f1, x4, x5	# 2275
	lw		x4, -76(x2)	# 2275
	lw		x6, -4(x2)	# 2275
	arrlw	x4, x4, x6	# 2275
	sub		x4, x5, x4	# 2275
	fsw		f1, -432(x2)	# 2275
	sw		x1, -436(x2)	# 2275
	addi	x2, x2, -440	# 2275
	jal		x1, min_caml_float_of_int	# 2275
	addi	x2, x2, 440	# 2275
	lw		x1, -436(x2)	# 2275
	flw		f2, -432(x2)	# 2275
	fmul	f1, f2, f1	# 2275
	lw		x4, -88(x2)	# 2278
	lw		x6, -8(x2)	# 2278
	arrflw	f2, x4, x6	# 2278
	fmul	f2, f1, f2	# 2278
	flw		f3, -284(x2)	# 2278
	fadd	f2, f2, f3	# 2278
	lw		x5, -4(x2)	# 2279
	arrflw	f3, x4, x5	# 2279
	fmul	f3, f1, f3	# 2279
	flw		f4, -280(x2)	# 2279
	fadd	f3, f3, f4	# 2279
	lw		x5, -72(x2)	# 2280
	arrflw	f4, x4, x5	# 2280
	fmul	f1, f1, f4	# 2280
	flw		f4, -300(x2)	# 2280
	fadd	f1, f1, f4	# 2280
	lw		x4, -168(x2)	# 2281
	addi	x4, x4, -1	# 2281
	lw		x7, -216(x2)	# 2281
	addi	x5, x4, 0	# 2281
	addi	x4, x7, 0	# 2281
	fadd	f31, f0, f3	# 2281
	fadd	f3, f0, f1	# 2281
	fadd	f1, f0, f2	# 2281
	fadd	f2, f0, f31	# 2281
	sw		x1, -436(x2)	# 2281
	addi	x2, x2, -440	# 2281
	jal		x1, pretrace_pixels.3051.18088	# 2281
	addi	x2, x2, 440	# 2281
	lw		x1, -436(x2)	# 2281
	lw		x4, -8(x2)	# 2564
	lw		x5, -180(x2)	# 2564
	lw		x6, -216(x2)	# 2564
	lw		x7, -252(x2)	# 2564
	lw		x8, -72(x2)	# 2564
	lw		x9, -32(x2)	# 2564
	sw		x1, -436(x2)	# 2564
	addi	x2, x2, -440	# 2564
	jal		x1, scan_line.3069.18102	# 2564
	addi	x2, x2, 440	# 2564
	lw		x1, -436(x2)	# 2564
	EXIT	
