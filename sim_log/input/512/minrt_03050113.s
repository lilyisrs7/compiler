l.33492:	# 8388608.000000
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
l.29666:	# 0.050000
	.word	0.050000
l.29668:	# 20.000000
	.word	20.000000
l.29645:	# 10.000000
	.word	10.000000
l.29635:	# 255.000000
	.word	255.000000
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
	fle		f0, f1, fle.33493	# 204
	fsub	f1, f0, f1	# 204
	sw		x1, 0(x2)	# 204
	addi	x2, x2, -4	# 204
	jal		x1, sin.2636.17992	# 204
	addi	x2, x2, 4	# 204
	lw		x1, 0(x2)	# 204
	fsub	f1, f0, f1	# 204
	jalr	x0, x1, 0	# 204
fle.33493:
	lui		x4, %hi(l.27915)	# 179
	ori		x4, x4, %lo(l.27915)	# 179
	flw		f2, 0(x4)	# 179
	fle		f2, f1, fle.33494	# 205
	lui		x4, %hi(l.27917)	# 178
	ori		x4, x4, %lo(l.27917)	# 178
	flw		f2, 0(x4)	# 178
	fle		f2, f1, fle.33495	# 206
	lui		x4, %hi(l.27919)	# 180
	ori		x4, x4, %lo(l.27919)	# 180
	flw		f3, 0(x4)	# 180
	fle		f1, f3, fle.33496	# 207
	fsub	f1, f2, f1	# 207
	jal		x0, sin.2636.17992	# 207
fle.33496:
	lui		x4, %hi(l.27922)	# 181
	ori		x4, x4, %lo(l.27922)	# 181
	flw		f2, 0(x4)	# 181
	fle		f2, f1, fle.33497	# 208
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
fle.33497:
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
fle.33495:
	fsub	f1, f1, f2	# 206
	sw		x1, 0(x2)	# 206
	addi	x2, x2, -4	# 206
	jal		x1, sin.2636.17992	# 206
	addi	x2, x2, 4	# 206
	lw		x1, 0(x2)	# 206
	fsub	f1, f0, f1	# 206
	jalr	x0, x1, 0	# 206
fle.33494:
	fsub	f1, f1, f2	# 205
	jal		x0, sin.2636.17992	# 205
cos.2638.17994:
	fle		f0, f1, fle.33498	# 212
	fsub	f1, f0, f1	# 212
	jal		x0, cos.2638.17994	# 212
fle.33498:
	lui		x4, %hi(l.27922)	# 181
	ori		x4, x4, %lo(l.27922)	# 181
	flw		f2, 0(x4)	# 181
	fle		f1, f2, fle.33499	# 213
	lui		x4, %hi(l.27919)	# 180
	ori		x4, x4, %lo(l.27919)	# 180
	flw		f2, 0(x4)	# 180
	fsub	f1, f2, f1	# 213
	jal		x0, sin.2636.17992	# 213
fle.33499:
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
	fle		f0, f1, fle.33500	# 217
	fsub	f1, f0, f1	# 217
	sw		x1, 0(x2)	# 217
	addi	x2, x2, -4	# 217
	jal		x1, atan.2640.17996	# 217
	addi	x2, x2, 4	# 217
	lw		x1, 0(x2)	# 217
	fsub	f1, f0, f1	# 217
	jalr	x0, x1, 0	# 217
fle.33500:
	lui		x4, %hi(l.27949)	# 218
	ori		x4, x4, %lo(l.27949)	# 218
	flw		f2, 0(x4)	# 218
	fle		f1, f2, fle.33501	# 218
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
fle.33501:
	lui		x4, %hi(l.27953)	# 219
	ori		x4, x4, %lo(l.27953)	# 219
	flw		f2, 0(x4)	# 219
	fle		f2, f1, fle.33502	# 219
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
fle.33502:
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
	ble		x6, x4, ble.33503	# 228
	addi	x4, x5, 0	# 228
	jalr	x0, x1, 0	# 228
ble.33503:
	addi	x4, x4, -10	# 228
	addi	x5, x5, 1	# 228
	jal		x0, div_rem.2642.17998	# 228
div_fifty.2645.18001:
	addi	x6, x0, 50	# 28
	ble		x6, x4, ble.33504	# 230
	jal		x0, div_rem.2642.17998	# 230
ble.33504:
	addi	x4, x4, -50	# 230
	addi	x5, x5, 5	# 230
	jal		x0, div_fifty.2645.18001	# 230
print_int_main.2648.18004:
	addi	x5, x0, 10	# 232
	ble		x5, x4, ble.33505	# 232
	addi	x4, x4, 48	# 232
	jal		x0, min_caml_print_char	# 232
ble.33505:
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
	ble		x5, x4, ble.33506	# 918
	sw		x4, 0(x2)	# 836
	sw		x1, -4(x2)	# 836
	addi	x2, x2, -8	# 836
	jal		x1, min_caml_read_int	# 836
	addi	x2, x2, 8	# 836
	lw		x1, -4(x2)	# 836
	beq		x4, x19, beq.33508	# 837
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
	add		x5, x0, x22	# 16
	sw		x4, -16(x2)	# 843
	fsw		f0, -20(x2)	# 843
	sw		x22, -24(x2)	# 843
	addi	x4, x22, 0	# 843
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
	fsw		f1, 0(x4)	# 844
	sw		x1, -28(x2)	# 845
	addi	x2, x2, -32	# 845
	jal		x1, min_caml_read_float	# 845
	addi	x2, x2, 32	# 845
	lw		x1, -28(x2)	# 845
	fsw		f1, 4(x4)	# 845
	sw		x1, -28(x2)	# 846
	addi	x2, x2, -32	# 846
	jal		x1, min_caml_read_float	# 846
	addi	x2, x2, 32	# 846
	lw		x1, -28(x2)	# 846
	add		x6, x0, x21	# 65
	fsw		f1, 8(x4)	# 846
	lw		x7, -24(x2)	# 848
	flw		f1, -20(x2)	# 848
	sw		x4, -28(x2)	# 848
	sw		x0, -32(x2)	# 848
	addi	x4, x7, 0	# 848
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
	fsw		f1, 0(x4)	# 849
	sw		x1, -36(x2)	# 850
	addi	x2, x2, -40	# 850
	jal		x1, min_caml_read_float	# 850
	addi	x2, x2, 40	# 850
	lw		x1, -36(x2)	# 850
	fsw		f1, 4(x4)	# 850
	sw		x1, -36(x2)	# 851
	addi	x2, x2, -40	# 851
	jal		x1, min_caml_read_float	# 851
	addi	x2, x2, 40	# 851
	lw		x1, -36(x2)	# 851
	fsw		f1, 8(x4)	# 851
	sw		x1, -36(x2)	# 853
	addi	x2, x2, -40	# 853
	jal		x1, min_caml_read_float	# 853
	addi	x2, x2, 40	# 853
	lw		x1, -36(x2)	# 853
	flw		f2, -20(x2)	# 122
	fle		f2, f1, fle.33510	# 122
	addi	x5, x0, 1	# 122
	jal		x0, fle_cont.33509	# 122
fle.33510:
	addi	x5, x0, 0	# 122
fle_cont.33509:
	fsw		f1, -36(x2)	# 855
	sw		x4, -40(x2)	# 855
	sw		x5, -44(x2)	# 855
	sw		x21, -48(x2)	# 855
	addi	x4, x21, 0	# 855
	fadd	f1, f0, f2	# 855
	sw		x1, -52(x2)	# 855
	addi	x2, x2, -56	# 855
	jal		x1, min_caml_create_float_array	# 855
	addi	x2, x2, 56	# 855
	lw		x1, -52(x2)	# 855
	sw		x1, -52(x2)	# 856
	addi	x2, x2, -56	# 856
	jal		x1, min_caml_read_float	# 856
	addi	x2, x2, 56	# 856
	lw		x1, -52(x2)	# 856
	fsw		f1, 0(x4)	# 856
	sw		x1, -52(x2)	# 857
	addi	x2, x2, -56	# 857
	jal		x1, min_caml_read_float	# 857
	addi	x2, x2, 56	# 857
	lw		x1, -52(x2)	# 857
	fsw		f1, 4(x4)	# 857
	lw		x5, -24(x2)	# 859
	flw		f1, -20(x2)	# 859
	sw		x4, -52(x2)	# 859
	addi	x4, x5, 0	# 859
	sw		x1, -56(x2)	# 859
	addi	x2, x2, -60	# 859
	jal		x1, min_caml_create_float_array	# 859
	addi	x2, x2, 60	# 859
	lw		x1, -56(x2)	# 859
	sw		x1, -56(x2)	# 860
	addi	x2, x2, -60	# 860
	jal		x1, min_caml_read_float	# 860
	addi	x2, x2, 60	# 860
	lw		x1, -56(x2)	# 860
	fsw		f1, 0(x4)	# 860
	sw		x1, -56(x2)	# 861
	addi	x2, x2, -60	# 861
	jal		x1, min_caml_read_float	# 861
	addi	x2, x2, 60	# 861
	lw		x1, -56(x2)	# 861
	fsw		f1, 4(x4)	# 861
	sw		x1, -56(x2)	# 862
	addi	x2, x2, -60	# 862
	jal		x1, min_caml_read_float	# 862
	addi	x2, x2, 60	# 862
	lw		x1, -56(x2)	# 862
	fsw		f1, 8(x4)	# 862
	lw		x5, -24(x2)	# 864
	flw		f1, -20(x2)	# 864
	sw		x4, -56(x2)	# 864
	addi	x4, x5, 0	# 864
	sw		x1, -60(x2)	# 864
	addi	x2, x2, -64	# 864
	jal		x1, min_caml_create_float_array	# 864
	addi	x2, x2, 64	# 864
	lw		x1, -60(x2)	# 864
	lw		x5, -32(x2)	# 865
	lw		x6, -16(x2)	# 865
	beq		x6, x5, beq_cont.33511	# 865
	sw		x1, -60(x2)	# 867
	addi	x2, x2, -64	# 867
	jal		x1, min_caml_read_float	# 867
	addi	x2, x2, 64	# 867
	lw		x1, -60(x2)	# 867
	lui		x7, %hi(l.27995)	# 734
	ori		x7, x7, %lo(l.27995)	# 734
	flw		f2, 0(x7)	# 734
	fmul	f1, f1, f2	# 734
	fsw		f1, 0(x4)	# 867
	sw		x1, -60(x2)	# 868
	addi	x2, x2, -64	# 868
	jal		x1, min_caml_read_float	# 868
	addi	x2, x2, 64	# 868
	lw		x1, -60(x2)	# 868
	fmul	f1, f1, f2	# 734
	fsw		f1, 4(x4)	# 868
	sw		x1, -60(x2)	# 869
	addi	x2, x2, -64	# 869
	jal		x1, min_caml_read_float	# 869
	addi	x2, x2, 64	# 869
	lw		x1, -60(x2)	# 869
	fmul	f1, f1, f2	# 734
	fsw		f1, 8(x4)	# 869
beq_cont.33511:
	lw		x7, -48(x2)	# 876
	lw		x8, -8(x2)	# 876
	beq		x8, x7, beq.33514	# 876
	lw		x9, -44(x2)	# 876
	jal		x0, beq_cont.33513	# 876
beq.33514:
	addi	x9, x0, 1	# 876
beq_cont.33513:
	add		x10, x0, x30	# 877
	flw		f1, -20(x2)	# 877
	sw		x4, -60(x2)	# 877
	addi	x4, x30, 0	# 877
	sw		x1, -64(x2)	# 877
	addi	x2, x2, -68	# 877
	jal		x1, min_caml_create_float_array	# 877
	addi	x2, x2, 68	# 877
	lw		x1, -64(x2)	# 877
	addi	x5, x3, 0	# 880
	addi	x3, x3, 44	# 880
	sw		x4, 40(x5)	# 880
	lw		x4, -60(x2)	# 880
	sw		x4, 36(x5)	# 880
	lw		x10, -56(x2)	# 880
	sw		x10, 32(x5)	# 880
	lw		x10, -52(x2)	# 880
	sw		x10, 28(x5)	# 880
	sw		x9, 24(x5)	# 880
	lw		x9, -40(x2)	# 880
	sw		x9, 20(x5)	# 880
	lw		x9, -28(x2)	# 880
	sw		x9, 16(x5)	# 880
	sw		x6, 12(x5)	# 880
	lw		x10, -12(x2)	# 880
	sw		x10, 8(x5)	# 880
	sw		x8, 4(x5)	# 880
	lw		x10, -4(x2)	# 880
	sw		x10, 0(x5)	# 880
	lw		x10, 0(x2)	# 888
	mul		x11, x30, x10	# 888
	addi	x11, x11, 40048	# 888
	sw		x5, 0(x11)	# 888
	lw		x5, -24(x2)	# 890
	beq		x8, x5, beq.33516	# 890
	beq		x8, x7, beq.33518	# 900
	jal		x0, beq_cont.33515	# 900
beq.33518:
	flw		f1, 0(x9)	# 340
	fmul	f2, f1, f1	# 127
	flw		f3, 4(x9)	# 340
	fmul	f4, f3, f3	# 127
	fadd	f2, f2, f4	# 340
	flw		f4, 8(x9)	# 340
	fmul	f5, f4, f4	# 127
	fadd	f2, f2, f5	# 340
	fsqrt	f2, f2	# 340
	flw		f5, -20(x2)	# 120
	feq		f2, f5, feq.33520	# 120
	flw		f6, -36(x2)	# 122
	fle		f5, f6, fle.33522	# 122
	fdiv	f2, f30, f2	# 341
	jal		x0, feq_cont.33519	# 122
fle.33522:
	fdiv	f2, f25, f2	# 341
	jal		x0, feq_cont.33519	# 120
feq.33520:
	fadd	f2, f0, f30	# 341
feq_cont.33519:
	fmul	f1, f1, f2	# 342
	fsw		f1, 0(x9)	# 342
	fmul	f1, f3, f2	# 343
	fsw		f1, 4(x9)	# 343
	fmul	f1, f4, f2	# 344
	fsw		f1, 8(x9)	# 344
	jal		x0, beq_cont.33515	# 890
beq.33516:
	flw		f1, 0(x9)	# 893
	flw		f2, -20(x2)	# 120
	feq		f1, f2, feq.33524	# 120
	fle		f1, f2, fle.33528	# 121
	fadd	f3, f0, f30	# 270
	jal		x0, feq_cont.33525	# 121
fle.33528:
	fadd	f3, f0, f25	# 271
	jal		x0, feq_cont.33525	# 120
feq.33526:
	fadd	f3, f0, f2	# 269
feq_cont.33525:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 894
	jal		x0, feq_cont.33523	# 120
feq.33524:
	fadd	f1, f0, f2	# 894
feq_cont.33523:
	fsw		f1, 0(x9)	# 894
	flw		f1, 4(x9)	# 895
	feq		f1, f2, feq.33530	# 120
	fle		f1, f2, fle.33534	# 121
	fadd	f3, f0, f30	# 270
	jal		x0, feq_cont.33531	# 121
fle.33534:
	fadd	f3, f0, f25	# 271
	jal		x0, feq_cont.33531	# 120
feq.33532:
	fadd	f3, f0, f2	# 269
feq_cont.33531:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 896
	jal		x0, feq_cont.33529	# 120
feq.33530:
	fadd	f1, f0, f2	# 896
feq_cont.33529:
	fsw		f1, 4(x9)	# 896
	flw		f1, 8(x9)	# 897
	feq		f1, f2, feq.33536	# 120
	fle		f1, f2, fle.33540	# 121
	fadd	f2, f0, f30	# 270
	jal		x0, feq_cont.33537	# 121
fle.33540:
	fadd	f2, f0, f25	# 271
feq_cont.33537:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f2, f1	# 898
	jal		x0, feq_cont.33535	# 120
feq.33536:
	fadd	f1, f0, f2	# 898
feq_cont.33535:
	fsw		f1, 8(x9)	# 898
beq_cont.33515:
	lw		x5, -32(x2)	# 906
	beq		x6, x5, beq_cont.33541	# 906
	flw		f1, 0(x4)	# 795
	fsw		f1, -64(x2)	# 795
	sw		x1, -68(x2)	# 795
	addi	x2, x2, -72	# 795
	jal		x1, cos.2638.17994	# 795
	addi	x2, x2, 72	# 795
	lw		x1, -68(x2)	# 795
	flw		f2, -64(x2)	# 796
	fsw		f1, -68(x2)	# 796
	fadd	f1, f0, f2	# 796
	sw		x1, -72(x2)	# 796
	addi	x2, x2, -76	# 796
	jal		x1, sin.2636.17992	# 796
	addi	x2, x2, 76	# 796
	lw		x1, -72(x2)	# 796
	lw		x4, -60(x2)	# 797
	flw		f2, 4(x4)	# 797
	fsw		f1, -72(x2)	# 797
	fsw		f2, -76(x2)	# 797
	fadd	f1, f0, f2	# 797
	sw		x1, -80(x2)	# 797
	addi	x2, x2, -84	# 797
	jal		x1, cos.2638.17994	# 797
	addi	x2, x2, 84	# 797
	lw		x1, -80(x2)	# 797
	flw		f2, -76(x2)	# 798
	fsw		f1, -80(x2)	# 798
	fadd	f1, f0, f2	# 798
	sw		x1, -84(x2)	# 798
	addi	x2, x2, -88	# 798
	jal		x1, sin.2636.17992	# 798
	addi	x2, x2, 88	# 798
	lw		x1, -84(x2)	# 798
	lw		x4, -60(x2)	# 799
	flw		f2, 8(x4)	# 799
	fsw		f1, -84(x2)	# 799
	fsw		f2, -88(x2)	# 799
	fadd	f1, f0, f2	# 799
	sw		x1, -92(x2)	# 799
	addi	x2, x2, -96	# 799
	jal		x1, cos.2638.17994	# 799
	addi	x2, x2, 96	# 799
	lw		x1, -92(x2)	# 799
	flw		f2, -88(x2)	# 800
	fsw		f1, -92(x2)	# 800
	fadd	f1, f0, f2	# 800
	sw		x1, -96(x2)	# 800
	addi	x2, x2, -100	# 800
	jal		x1, sin.2636.17992	# 800
	addi	x2, x2, 100	# 800
	lw		x1, -96(x2)	# 800
	flw		f2, -80(x2)	# 802
	flw		f3, -92(x2)	# 802
	fmul	f4, f2, f3	# 802
	flw		f5, -72(x2)	# 803
	flw		f6, -84(x2)	# 803
	fmul	f7, f5, f6	# 803
	fmul	f8, f7, f3	# 803
	flw		f9, -68(x2)	# 803
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
	flw		f6, 0(x9)	# 815
	flw		f9, 4(x9)	# 816
	flw		f10, 8(x9)	# 817
	fmul	f13, f4, f4	# 127
	fmul	f13, f6, f13	# 822
	fmul	f14, f12, f12	# 127
	fmul	f14, f9, f14	# 822
	fadd	f13, f13, f14	# 822
	fmul	f14, f3, f3	# 127
	fmul	f14, f10, f14	# 822
	fadd	f13, f13, f14	# 822
	fsw		f13, 0(x9)	# 822
	fmul	f13, f8, f8	# 127
	fmul	f13, f6, f13	# 823
	fmul	f14, f7, f7	# 127
	fmul	f14, f9, f14	# 823
	fadd	f13, f13, f14	# 823
	fmul	f14, f5, f5	# 127
	fmul	f14, f10, f14	# 823
	fadd	f13, f13, f14	# 823
	fsw		f13, 4(x9)	# 823
	fmul	f13, f11, f11	# 127
	fmul	f13, f6, f13	# 824
	fmul	f14, f1, f1	# 127
	fmul	f14, f9, f14	# 824
	fadd	f13, f13, f14	# 824
	fmul	f14, f2, f2	# 127
	fmul	f14, f10, f14	# 824
	fadd	f13, f13, f14	# 824
	fsw		f13, 8(x9)	# 824
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
	lw		x4, -60(x2)	# 827
	fsw		f14, 0(x4)	# 827
	fmul	f4, f6, f4	# 828
	fmul	f6, f4, f11	# 828
	fmul	f9, f9, f12	# 828
	fmul	f1, f9, f1	# 828
	fadd	f1, f6, f1	# 828
	fmul	f3, f10, f3	# 828
	fmul	f2, f3, f2	# 828
	fadd	f1, f1, f2	# 828
	fmul	f1, f13, f1	# 828
	fsw		f1, 4(x4)	# 828
	fmul	f1, f4, f8	# 829
	fmul	f2, f9, f7	# 829
	fadd	f1, f1, f2	# 829
	fmul	f2, f3, f5	# 829
	fadd	f1, f1, f2	# 829
	fmul	f1, f13, f1	# 829
	fsw		f1, 8(x4)	# 829
beq_cont.33541:
	addi	x4, x0, 1	# 910
	jal		x0, beq_cont.33507	# 837
beq.33508:
	addi	x4, x0, 0	# 913
beq_cont.33507:
	beq		x4, x0, beq.33543	# 919
	lw		x4, 0(x2)	# 920
	addi	x4, x4, 1	# 920
	jal		x0, read_object.2787.18006	# 920
beq.33543:
	addi	x4, x0, 40000	# 922
	lw		x5, 0(x2)	# 922
	sw		x5, 0(x4)	# 922
	jalr	x0, x1, 0	# 922
ble.33506:
	jalr	x0, x1, 0	# 923
read_net_item.2791.18008:
	sw		x4, 0(x2)	# 934
	sw		x1, -4(x2)	# 934
	addi	x2, x2, -8	# 934
	jal		x1, min_caml_read_int	# 934
	addi	x2, x2, 8	# 934
	lw		x1, -4(x2)	# 934
	add		x5, x0, x19	# 28
	beq		x4, x19, beq.33546	# 935
	lw		x5, 0(x2)	# 937
	addi	x6, x5, 1	# 937
	sw		x4, -4(x2)	# 937
	addi	x4, x6, 0	# 937
	sw		x1, -8(x2)	# 937
	addi	x2, x2, -12	# 937
	jal		x1, read_net_item.2791.18008	# 937
	addi	x2, x2, 12	# 937
	lw		x1, -8(x2)	# 937
	lw		x5, 0(x2)	# 938
	mul		x5, x30, x5	# 938
	add		x5, x4, x5	# 938
	lw		x6, -4(x2)	# 938
	sw		x6, 0(x5)	# 938
	jalr	x0, x1, 0	# 938
beq.33546:
	lw		x4, 0(x2)	# 935
	addi	x4, x4, 1	# 935
	jal		x0, min_caml_create_array	# 935
read_or_network.2793.18010:
	add		x5, x0, x0	# 6
	sw		x4, 0(x2)	# 942
	addi	x4, x0, 0	# 942
	sw		x1, -4(x2)	# 942
	addi	x2, x2, -8	# 942
	jal		x1, read_net_item.2791.18008	# 942
	addi	x2, x2, 8	# 942
	lw		x1, -4(x2)	# 942
	addi	x5, x4, 0	# 942
	lw		x4, 0(x5)	# 943
	beq		x4, x19, beq.33547	# 943
	lw		x4, 0(x2)	# 946
	addi	x6, x4, 1	# 946
	sw		x5, -4(x2)	# 946
	addi	x4, x6, 0	# 946
	sw		x1, -8(x2)	# 946
	addi	x2, x2, -12	# 946
	jal		x1, read_or_network.2793.18010	# 946
	addi	x2, x2, 12	# 946
	lw		x1, -8(x2)	# 946
	lw		x5, 0(x2)	# 947
	mul		x5, x30, x5	# 947
	add		x5, x4, x5	# 947
	lw		x6, -4(x2)	# 947
	sw		x6, 0(x5)	# 947
	jalr	x0, x1, 0	# 947
beq.33547:
	lw		x4, 0(x2)	# 944
	addi	x4, x4, 1	# 944
	jal		x0, min_caml_create_array	# 944
read_and_network.2795.18012:
	add		x5, x0, x0	# 6
	sw		x4, 0(x2)	# 951
	addi	x4, x0, 0	# 951
	sw		x1, -4(x2)	# 951
	addi	x2, x2, -8	# 951
	jal		x1, read_net_item.2791.18008	# 951
	addi	x2, x2, 8	# 951
	lw		x1, -4(x2)	# 951
	lw		x5, 0(x4)	# 952
	beq		x5, x19, beq.33548	# 952
	lw		x5, 0(x2)	# 954
	mul		x6, x30, x5	# 954
	addi	x6, x6, 40332	# 954
	sw		x4, 0(x6)	# 954
	addi	x4, x5, 1	# 955
	jal		x0, read_and_network.2795.18012	# 955
beq.33548:
	jalr	x0, x1, 0	# 952
iter_setup_dirvec_constants.2892.18014:
	ble		x0, x5, ble.33550	# 1327
	jalr	x0, x1, 0	# 1340
ble.33550:
	mul		x7, x30, x5	# 1328
	addi	x8, x7, 40048	# 1328
	lw		x8, 0(x8)	# 1328
	lw		x9, 4(x4)	# 702
	lw		x10, 0(x4)	# 696
	lw		x11, 4(x8)	# 410
	sw		x4, 0(x2)	# 1332
	sw		x5, -4(x2)	# 1332
	beq		x11, x20, beq.33553	# 1332
	beq		x11, x21, beq.33555	# 1334
	fadd	f1, f0, f0	# 11
	addi	x11, x0, 5	# 98
	fsw		f0, -8(x2)	# 1298
	addi	x4, x11, 0	# 1298
	sw		x1, -12(x2)	# 1298
	addi	x2, x2, -16	# 1298
	jal		x1, min_caml_create_float_array	# 1298
	addi	x2, x2, 16	# 1298
	lw		x1, -12(x2)	# 1298
	flw		f1, 0(x10)	# 1300
	flw		f2, 4(x10)	# 1300
	flw		f3, 8(x10)	# 1300
	fmul	f4, f1, f1	# 127
	lw		x5, 16(x8)	# 448
	flw		f5, 0(x5)	# 453
	fmul	f4, f4, f5	# 1024
	fmul	f6, f2, f2	# 127
	flw		f7, 4(x5)	# 463
	fmul	f6, f6, f7	# 1024
	fadd	f4, f4, f6	# 1024
	fmul	f6, f3, f3	# 127
	flw		f8, 8(x5)	# 473
	fmul	f6, f6, f8	# 1024
	fadd	f4, f4, f6	# 1024
	lw		x5, 12(x8)	# 439
	beq		x5, x0, beq_cont.33556	# 1026
	fmul	f6, f2, f3	# 1030
	lw		x10, 36(x8)	# 568
	flw		f9, 0(x10)	# 573
	fmul	f6, f6, f9	# 1030
	fadd	f4, f4, f6	# 1029
	fmul	f6, f3, f1	# 1031
	flw		f9, 4(x10)	# 583
	fmul	f6, f6, f9	# 1031
	fadd	f4, f4, f6	# 1029
	fmul	f6, f1, f2	# 1032
	flw		f9, 8(x10)	# 593
	fmul	f6, f6, f9	# 1032
	fadd	f4, f4, f6	# 1029
beq_cont.33556:
	fmul	f5, f1, f5	# 1301
	fsub	f5, f0, f5	# 123
	fmul	f6, f2, f7	# 1302
	fsub	f6, f0, f6	# 123
	fmul	f7, f3, f8	# 1303
	fsub	f7, f0, f7	# 123
	fsw		f4, 0(x4)	# 1305
	beq		x5, x0, beq.33559	# 1309
	lw		x5, 36(x8)	# 578
	flw		f8, 4(x5)	# 583
	fmul	f9, f3, f8	# 1310
	flw		f10, 8(x5)	# 593
	fmul	f11, f2, f10	# 1310
	fadd	f9, f9, f11	# 1310
	lui		x6, %hi(l.27933)	# 126
	ori		x6, x6, %lo(l.27933)	# 126
	flw		f11, 0(x6)	# 126
	fmul	f9, f9, f11	# 126
	fsub	f5, f5, f9	# 1310
	fsw		f5, 4(x4)	# 1310
	flw		f5, 0(x5)	# 573
	fmul	f3, f3, f5	# 1311
	fmul	f9, f1, f10	# 1311
	fadd	f3, f3, f9	# 1311
	fmul	f3, f3, f11	# 126
	fsub	f3, f6, f3	# 1311
	fsw		f3, 8(x4)	# 1311
	fmul	f2, f2, f5	# 1312
	fmul	f1, f1, f8	# 1312
	fadd	f1, f2, f1	# 1312
	fmul	f1, f1, f11	# 126
	fsub	f1, f7, f1	# 1312
	fsw		f1, 12(x4)	# 1312
	jal		x0, beq_cont.33558	# 1309
beq.33559:
	fsw		f5, 4(x4)	# 1314
	fsw		f6, 8(x4)	# 1315
	fsw		f7, 12(x4)	# 1316
beq_cont.33558:
	flw		f1, -8(x2)	# 120
	feq		f4, f1, feq_cont.33560	# 120
	fdiv	f1, f30, f4	# 1319
	fsw		f1, 16(x4)	# 1319
feq_cont.33560:
	add		x5, x9, x7	# 1337
	sw		x4, 0(x5)	# 1337
	jal		x0, beq_cont.33552	# 1334
beq.33555:
	add		x6, x0, x30	# 1279
	fadd	f1, f0, f0	# 11
	fsw		f0, -12(x2)	# 1279
	addi	x4, x30, 0	# 1279
	sw		x1, -16(x2)	# 1279
	addi	x2, x2, -20	# 1279
	jal		x1, min_caml_create_float_array	# 1279
	addi	x2, x2, 20	# 1279
	lw		x1, -16(x2)	# 1279
	flw		f1, 0(x10)	# 1281
	lw		x5, 16(x8)	# 448
	flw		f2, 0(x5)	# 453
	fmul	f1, f1, f2	# 1281
	flw		f3, 4(x10)	# 1281
	flw		f4, 4(x5)	# 463
	fmul	f3, f3, f4	# 1281
	fadd	f1, f1, f3	# 1281
	flw		f3, 8(x10)	# 1281
	flw		f5, 8(x5)	# 473
	fmul	f3, f3, f5	# 1281
	fadd	f1, f1, f3	# 1281
	flw		f3, -12(x2)	# 121
	fle		f1, f3, fle.33563	# 121
	fdiv	f3, f25, f1	# 1285
	fsw		f3, 0(x4)	# 1285
	fdiv	f2, f2, f1	# 1287
	fsub	f2, f0, f2	# 123
	fsw		f2, 4(x4)	# 1287
	fdiv	f2, f4, f1	# 1288
	fsub	f2, f0, f2	# 123
	fsw		f2, 8(x4)	# 1288
	fdiv	f1, f5, f1	# 1289
	fsub	f1, f0, f1	# 123
	fsw		f1, 12(x4)	# 1289
	jal		x0, fle_cont.33562	# 121
fle.33563:
	fsw		f3, 0(x4)	# 1291
fle_cont.33562:
	add		x5, x9, x7	# 1335
	sw		x4, 0(x5)	# 1335
	jal		x0, beq_cont.33552	# 1332
beq.33553:
	addi	x11, x0, 6	# 1252
	fadd	f1, f0, f0	# 11
	fsw		f0, -16(x2)	# 1252
	addi	x4, x11, 0	# 1252
	sw		x1, -20(x2)	# 1252
	addi	x2, x2, -24	# 1252
	jal		x1, min_caml_create_float_array	# 1252
	addi	x2, x2, 24	# 1252
	lw		x1, -20(x2)	# 1252
	flw		f1, 0(x10)	# 1254
	flw		f2, -16(x2)	# 120
	feq		f1, f2, feq.33565	# 120
	lw		x5, 24(x8)	# 430
	fle		f2, f1, fle.33567	# 122
	addi	x11, x0, 1	# 122
	jal		x0, fle_cont.33566	# 122
fle.33567:
	addi	x11, x0, 0	# 122
fle_cont.33566:
	beq		x5, x0, beq.33569	# 261
	fle		f2, f1, fle.33571	# 122
	addi	x5, x0, 0	# 261
	jal		x0, beq_cont.33568	# 122
fle.33571:
	addi	x5, x0, 1	# 261
	jal		x0, beq_cont.33568	# 261
beq.33569:
	addi	x5, x11, 0	# 261
beq_cont.33568:
	lw		x11, 16(x8)	# 448
	flw		f3, 0(x11)	# 453
	beq		x5, x0, beq.33573	# 276
	jal		x0, beq_cont.33572	# 276
beq.33573:
	fsub	f3, f0, f3	# 123
beq_cont.33572:
	fsw		f3, 0(x4)	# 1258
	fdiv	f1, f30, f1	# 1260
	fsw		f1, 4(x4)	# 1260
	jal		x0, feq_cont.33564	# 120
feq.33565:
	fsw		f2, 4(x4)	# 1255
feq_cont.33564:
	flw		f1, 4(x10)	# 1262
	feq		f1, f2, feq.33575	# 120
	lw		x5, 24(x8)	# 430
	fle		f2, f1, fle.33577	# 122
	addi	x11, x0, 1	# 122
	jal		x0, fle_cont.33576	# 122
fle.33577:
	addi	x11, x0, 0	# 122
fle_cont.33576:
	beq		x5, x0, beq.33579	# 261
	fle		f2, f1, fle.33581	# 122
	addi	x5, x0, 0	# 261
	jal		x0, beq_cont.33578	# 122
fle.33581:
	addi	x5, x0, 1	# 261
	jal		x0, beq_cont.33578	# 261
beq.33579:
	addi	x5, x11, 0	# 261
beq_cont.33578:
	lw		x11, 16(x8)	# 458
	flw		f3, 4(x11)	# 463
	beq		x5, x0, beq.33583	# 276
	jal		x0, beq_cont.33582	# 276
beq.33583:
	fsub	f3, f0, f3	# 123
beq_cont.33582:
	fsw		f3, 8(x4)	# 1265
	fdiv	f1, f30, f1	# 1266
	fsw		f1, 12(x4)	# 1266
	jal		x0, feq_cont.33574	# 120
feq.33575:
	fsw		f2, 12(x4)	# 1263
feq_cont.33574:
	flw		f1, 8(x10)	# 1268
	feq		f1, f2, feq.33585	# 120
	lw		x5, 24(x8)	# 430
	fle		f2, f1, fle.33587	# 122
	addi	x10, x0, 1	# 122
	jal		x0, fle_cont.33586	# 122
fle.33587:
	addi	x10, x0, 0	# 122
fle_cont.33586:
	beq		x5, x0, beq.33589	# 261
	fle		f2, f1, fle.33591	# 122
	addi	x5, x0, 0	# 261
	jal		x0, beq_cont.33588	# 122
fle.33591:
	addi	x5, x0, 1	# 261
	jal		x0, beq_cont.33588	# 261
beq.33589:
	addi	x5, x10, 0	# 261
beq_cont.33588:
	lw		x8, 16(x8)	# 468
	flw		f2, 8(x8)	# 473
	beq		x5, x0, beq.33593	# 276
	jal		x0, beq_cont.33592	# 276
beq.33593:
	fsub	f2, f0, f2	# 123
beq_cont.33592:
	fsw		f2, 16(x4)	# 1271
	fdiv	f1, f30, f1	# 1272
	fsw		f1, 20(x4)	# 1272
	jal		x0, feq_cont.33584	# 120
feq.33585:
	fsw		f2, 20(x4)	# 1269
feq_cont.33584:
	add		x5, x9, x7	# 1333
	sw		x4, 0(x5)	# 1333
beq_cont.33552:
	lw		x4, -4(x2)	# 1339
	addi	x5, x4, -1	# 1339
	lw		x4, 0(x2)	# 1339
	jal		x0, iter_setup_dirvec_constants.2892.18014	# 1339
setup_startp_constants.2897.18017:
	ble		x0, x5, ble.33594	# 1352
	jalr	x0, x1, 0	# 1367
ble.33594:
	mul		x7, x30, x5	# 1353
	addi	x7, x7, 40048	# 1353
	lw		x7, 0(x7)	# 1353
	lw		x8, 40(x7)	# 605
	lw		x9, 4(x7)	# 410
	flw		f1, 0(x4)	# 1356
	lw		x10, 20(x7)	# 488
	flw		f2, 0(x10)	# 493
	fsub	f1, f1, f2	# 1356
	fsw		f1, 0(x8)	# 1356
	flw		f1, 4(x4)	# 1357
	flw		f2, 4(x10)	# 503
	fsub	f1, f1, f2	# 1357
	fsw		f1, 4(x8)	# 1357
	flw		f1, 8(x4)	# 1358
	flw		f2, 8(x10)	# 513
	fsub	f1, f1, f2	# 1358
	fsw		f1, 8(x8)	# 1358
	beq		x9, x21, beq.33597	# 1359
	ble		x9, x21, beq_cont.33596	# 1362
	flw		f1, 0(x8)	# 1363
	flw		f2, 4(x8)	# 1363
	flw		f3, 8(x8)	# 1363
	fmul	f4, f1, f1	# 127
	lw		x10, 16(x7)	# 448
	flw		f5, 0(x10)	# 453
	fmul	f4, f4, f5	# 1024
	fmul	f5, f2, f2	# 127
	flw		f6, 4(x10)	# 463
	fmul	f5, f5, f6	# 1024
	fadd	f4, f4, f5	# 1024
	fmul	f5, f3, f3	# 127
	flw		f6, 8(x10)	# 473
	fmul	f5, f5, f6	# 1024
	fadd	f4, f4, f5	# 1024
	lw		x10, 12(x7)	# 439
	beq		x10, x0, beq.33601	# 1026
	fmul	f5, f2, f3	# 1030
	lw		x6, 36(x7)	# 568
	flw		f6, 0(x6)	# 573
	fmul	f5, f5, f6	# 1030
	fadd	f4, f4, f5	# 1029
	fmul	f3, f3, f1	# 1031
	flw		f5, 4(x6)	# 583
	fmul	f3, f3, f5	# 1031
	fadd	f3, f4, f3	# 1029
	fmul	f1, f1, f2	# 1032
	flw		f2, 8(x6)	# 593
	fmul	f1, f1, f2	# 1032
	fadd	f1, f3, f1	# 1029
	jal		x0, beq_cont.33600	# 1026
beq.33601:
	fadd	f1, f0, f4	# 1027
beq_cont.33600:
	beq		x9, x22, beq.33603	# 1364
	jal		x0, beq_cont.33602	# 1364
beq.33603:
	fsub	f1, f1, f30	# 1364
beq_cont.33602:
	fsw		f1, 12(x8)	# 1364
	jal		x0, beq_cont.33596	# 1362
beq.33597:
	lw		x6, 16(x7)	# 478
	flw		f1, 0(x8)	# 1361
	flw		f2, 4(x8)	# 1361
	flw		f3, 8(x8)	# 1361
	flw		f4, 0(x6)	# 354
	fmul	f1, f4, f1	# 354
	flw		f4, 4(x6)	# 354
	fmul	f2, f4, f2	# 354
	fadd	f1, f1, f2	# 354
	flw		f2, 8(x6)	# 354
	fmul	f2, f2, f3	# 354
	fadd	f1, f1, f2	# 354
	fsw		f1, 12(x8)	# 1360
beq_cont.33596:
	addi	x5, x5, -1	# 1366
	jal		x0, setup_startp_constants.2897.18017	# 1366
check_all_inside.2922.18020:
	mul		x6, x30, x4	# 1421
	add		x6, x5, x6	# 1421
	lw		x6, 0(x6)	# 1421
	beq		x6, x19, beq.33604	# 1422
	mul		x6, x30, x6	# 1425
	addi	x6, x6, 40048	# 1425
	lw		x6, 0(x6)	# 1425
	lw		x7, 20(x6)	# 488
	flw		f4, 0(x7)	# 493
	fsub	f4, f1, f4	# 1407
	flw		f5, 4(x7)	# 503
	fsub	f5, f2, f5	# 1408
	flw		f6, 8(x7)	# 513
	fsub	f6, f3, f6	# 1409
	lw		x7, 4(x6)	# 410
	beq		x7, x20, beq.33606	# 1411
	beq		x7, x21, beq.33608	# 1413
	fmul	f7, f4, f4	# 127
	lw		x9, 16(x6)	# 448
	flw		f8, 0(x9)	# 453
	fmul	f7, f7, f8	# 1024
	fmul	f8, f5, f5	# 127
	flw		f9, 4(x9)	# 463
	fmul	f8, f8, f9	# 1024
	fadd	f7, f7, f8	# 1024
	fmul	f8, f6, f6	# 127
	flw		f9, 8(x9)	# 473
	fmul	f8, f8, f9	# 1024
	fadd	f7, f7, f8	# 1024
	lw		x9, 12(x6)	# 439
	beq		x9, x0, beq.33610	# 1026
	fmul	f8, f5, f6	# 1030
	lw		x9, 36(x6)	# 568
	flw		f9, 0(x9)	# 573
	fmul	f8, f8, f9	# 1030
	fadd	f7, f7, f8	# 1029
	fmul	f6, f6, f4	# 1031
	flw		f8, 4(x9)	# 583
	fmul	f6, f6, f8	# 1031
	fadd	f6, f7, f6	# 1029
	fmul	f4, f4, f5	# 1032
	flw		f5, 8(x9)	# 593
	fmul	f4, f4, f5	# 1032
	fadd	f4, f6, f4	# 1029
	jal		x0, beq_cont.33609	# 1026
beq.33610:
	fadd	f4, f0, f7	# 1027
beq_cont.33609:
	beq		x7, x22, beq.33612	# 1401
	jal		x0, beq_cont.33611	# 1401
beq.33612:
	fsub	f4, f4, f30	# 1401
beq_cont.33611:
	lw		x6, 24(x6)	# 430
	fle		f0, f4, fle.33614	# 122
	addi	x7, x0, 1	# 122
	jal		x0, fle_cont.33613	# 122
fle.33614:
	addi	x7, x0, 0	# 122
fle_cont.33613:
	beq		x6, x0, beq.33616	# 261
	fle		f0, f4, fle.33618	# 122
	addi	x6, x0, 0	# 261
	jal		x0, beq_cont.33615	# 122
fle.33618:
	addi	x6, x0, 1	# 261
	jal		x0, beq_cont.33615	# 261
beq.33616:
	addi	x6, x7, 0	# 261
beq_cont.33615:
	beq		x6, x0, beq.33620	# 1402
	addi	x6, x0, 0	# 1402
	jal		x0, beq_cont.33605	# 1402
beq.33620:
	addi	x6, x0, 1	# 1402
	jal		x0, beq_cont.33605	# 1413
beq.33608:
	lw		x7, 16(x6)	# 478
	flw		f7, 0(x7)	# 354
	fmul	f4, f7, f4	# 354
	flw		f7, 4(x7)	# 354
	fmul	f5, f7, f5	# 354
	fadd	f4, f4, f5	# 354
	flw		f5, 8(x7)	# 354
	fmul	f5, f5, f6	# 354
	fadd	f4, f4, f5	# 354
	lw		x6, 24(x6)	# 430
	fle		f0, f4, fle.33622	# 122
	addi	x7, x0, 1	# 122
	jal		x0, fle_cont.33621	# 122
fle.33622:
	addi	x7, x0, 0	# 122
fle_cont.33621:
	beq		x6, x0, beq.33624	# 261
	fle		f0, f4, fle.33626	# 122
	addi	x6, x0, 0	# 261
	jal		x0, beq_cont.33623	# 122
fle.33626:
	addi	x6, x0, 1	# 261
	jal		x0, beq_cont.33623	# 261
beq.33624:
	addi	x6, x7, 0	# 261
beq_cont.33623:
	beq		x6, x0, beq.33628	# 1395
	addi	x6, x0, 0	# 1395
	jal		x0, beq_cont.33605	# 1395
beq.33628:
	addi	x6, x0, 1	# 1395
	jal		x0, beq_cont.33605	# 1411
beq.33606:
	fle		f4, f0, fle.33630	# 124
	jal		x0, fle_cont.33629	# 124
fle.33630:
	fsub	f4, f0, f4	# 124
fle_cont.33629:
	lw		x7, 16(x6)	# 448
	flw		f8, 0(x7)	# 453
	fle		f8, f4, fle.33632	# 125
	fle		f5, f0, fle.33634	# 124
	fadd	f4, f0, f5	# 124
	jal		x0, fle_cont.33633	# 124
fle.33634:
	fsub	f4, f0, f5	# 124
fle_cont.33633:
	flw		f5, 4(x7)	# 463
	fle		f5, f4, fle.33636	# 125
	fle		f6, f0, fle.33638	# 124
	fadd	f4, f0, f6	# 124
	jal		x0, fle_cont.33637	# 124
fle.33638:
	fsub	f4, f0, f6	# 124
fle_cont.33637:
	flw		f5, 8(x7)	# 473
	fle		f5, f4, fle.33640	# 125
	addi	x7, x0, 1	# 125
	jal		x0, fle_cont.33631	# 125
fle.33640:
	addi	x7, x0, 0	# 125
	jal		x0, fle_cont.33631	# 125
fle.33636:
	addi	x7, x0, 0	# 1387
	jal		x0, fle_cont.33631	# 125
fle.33632:
	addi	x7, x0, 0	# 1388
fle_cont.33631:
	beq		x7, x0, beq.33642	# 1383
	lw		x6, 24(x6)	# 430
	jal		x0, beq_cont.33605	# 1383
beq.33642:
	lw		x6, 24(x6)	# 430
	beq		x6, x0, beq.33644	# 1389
	addi	x6, x0, 0	# 1389
	jal		x0, beq_cont.33605	# 1389
beq.33644:
	addi	x6, x0, 1	# 1389
beq_cont.33605:
	beq		x6, x0, beq.33645	# 1425
	addi	x4, x0, 0	# 1426
	jalr	x0, x1, 0	# 1426
beq.33645:
	addi	x4, x4, 1	# 1428
	jal		x0, check_all_inside.2922.18020	# 1428
beq.33604:
	addi	x4, x0, 1	# 1423
	jalr	x0, x1, 0	# 1423
shadow_check_and_group.2928.18026:
	mul		x6, x30, x4	# 1441
	add		x6, x5, x6	# 1441
	lw		x6, 0(x6)	# 1441
	beq		x6, x19, beq.33646	# 1441
	mul		x6, x30, x6	# 1183
	addi	x7, x6, 40048	# 1183
	lw		x7, 0(x7)	# 1183
	add		x8, x0, x0	# 6
	flw		f1, 0(x25)	# 1184
	lw		x9, 20(x7)	# 488
	flw		f2, 0(x9)	# 493
	fsub	f2, f1, f2	# 1184
	flw		f3, 0(x27)	# 1185
	flw		f4, 4(x9)	# 503
	fsub	f4, f3, f4	# 1185
	flw		f5, 0(x26)	# 1186
	flw		f6, 8(x9)	# 513
	fsub	f6, f5, f6	# 1186
	addi	x6, x6, 40748	# 1188
	lw		x6, 0(x6)	# 1188
	lw		x9, 4(x7)	# 410
	beq		x9, x20, beq.33648	# 1190
	beq		x9, x21, beq.33650	# 1192
	flw		f7, 0(x6)	# 1164
	feq		f7, f0, feq.33652	# 120
	flw		f9, 4(x6)	# 1168
	fmul	f9, f9, f2	# 1168
	flw		f10, 8(x6)	# 1168
	fmul	f10, f10, f4	# 1168
	fadd	f9, f9, f10	# 1168
	flw		f10, 12(x6)	# 1168
	fmul	f10, f10, f6	# 1168
	fadd	f9, f9, f10	# 1168
	fmul	f10, f2, f2	# 127
	lw		x11, 16(x7)	# 448
	flw		f11, 0(x11)	# 453
	fmul	f10, f10, f11	# 1024
	fmul	f11, f4, f4	# 127
	flw		f12, 4(x11)	# 463
	fmul	f11, f11, f12	# 1024
	fadd	f10, f10, f11	# 1024
	fmul	f11, f6, f6	# 127
	flw		f12, 8(x11)	# 473
	fmul	f11, f11, f12	# 1024
	fadd	f10, f10, f11	# 1024
	lw		x11, 12(x7)	# 439
	beq		x11, x0, beq.33654	# 1026
	fmul	f11, f4, f6	# 1030
	lw		x11, 36(x7)	# 568
	flw		f12, 0(x11)	# 573
	fmul	f11, f11, f12	# 1030
	fadd	f10, f10, f11	# 1029
	fmul	f6, f6, f2	# 1031
	flw		f11, 4(x11)	# 583
	fmul	f6, f6, f11	# 1031
	fadd	f6, f10, f6	# 1029
	fmul	f2, f2, f4	# 1032
	flw		f4, 8(x11)	# 593
	fmul	f2, f2, f4	# 1032
	fadd	f2, f6, f2	# 1029
	jal		x0, beq_cont.33653	# 1026
beq.33654:
	fadd	f2, f0, f10	# 1027
beq_cont.33653:
	beq		x9, x22, beq.33656	# 1170
	jal		x0, beq_cont.33655	# 1170
beq.33656:
	fsub	f2, f2, f30	# 1170
beq_cont.33655:
	fmul	f4, f9, f9	# 127
	fmul	f2, f7, f2	# 1171
	fsub	f2, f4, f2	# 1171
	fle		f2, f0, fle.33658	# 121
	lw		x9, 24(x7)	# 430
	beq		x9, x0, beq.33660	# 1173
	fsqrt	f2, f2	# 1174
	fadd	f2, f9, f2	# 1174
	flw		f4, 16(x6)	# 1174
	fmul	f2, f2, f4	# 1174
	fsw		f2, 0(x24)	# 1174
	jal		x0, beq_cont.33659	# 1173
beq.33660:
	fsqrt	f2, f2	# 1176
	fsub	f2, f9, f2	# 1176
	flw		f4, 16(x6)	# 1176
	fmul	f2, f2, f4	# 1176
	fsw		f2, 0(x24)	# 1176
beq_cont.33659:
	addi	x6, x0, 1	# 1177
	jal		x0, beq_cont.33647	# 121
fle.33658:
	addi	x6, x0, 0	# 1178
	jal		x0, beq_cont.33647	# 120
feq.33652:
	addi	x6, x0, 0	# 1166
	jal		x0, beq_cont.33647	# 1192
beq.33650:
	flw		f7, 0(x6)	# 1154
	fle		f0, f7, fle.33662	# 122
	flw		f7, 4(x6)	# 1156
	fmul	f2, f7, f2	# 1156
	flw		f7, 8(x6)	# 1156
	fmul	f4, f7, f4	# 1156
	fadd	f2, f2, f4	# 1156
	flw		f4, 12(x6)	# 1156
	fmul	f4, f4, f6	# 1156
	fadd	f2, f2, f4	# 1156
	fsw		f2, 0(x24)	# 1155
	addi	x6, x0, 1	# 1157
	jal		x0, beq_cont.33647	# 122
fle.33662:
	addi	x6, x0, 0	# 1158
	jal		x0, beq_cont.33647	# 1190
beq.33648:
	flw		f7, 0(x6)	# 1121
	fsub	f7, f7, f2	# 1121
	flw		f8, 4(x6)	# 1121
	fmul	f7, f7, f8	# 1121
	addi	x9, x0, 40740	# 1123
	flw		f9, 0(x9)	# 1123
	fmul	f10, f7, f9	# 1123
	fadd	f10, f10, f4	# 1123
	fle		f10, f0, fle.33664	# 124
	jal		x0, fle_cont.33663	# 124
fle.33664:
	fsub	f10, f0, f10	# 124
fle_cont.33663:
	lw		x9, 16(x7)	# 458
	flw		f12, 4(x9)	# 463
	fle		f12, f10, fle.33666	# 125
	addi	x10, x0, 40744	# 1124
	flw		f10, 0(x10)	# 1124
	fmul	f10, f7, f10	# 1124
	fadd	f10, f10, f6	# 1124
	fle		f10, f0, fle.33668	# 124
	jal		x0, fle_cont.33667	# 124
fle.33668:
	fsub	f10, f0, f10	# 124
fle_cont.33667:
	flw		f13, 8(x9)	# 473
	fle		f13, f10, fle.33670	# 125
	feq		f8, f0, feq.33672	# 120
	addi	x10, x0, 1	# 1125
	jal		x0, fle_cont.33665	# 120
feq.33672:
	addi	x10, x0, 0	# 1125
	jal		x0, fle_cont.33665	# 125
fle.33670:
	addi	x10, x0, 0	# 1126
	jal		x0, fle_cont.33665	# 125
fle.33666:
	addi	x10, x0, 0	# 1127
fle_cont.33665:
	beq		x10, x0, beq.33674	# 1122
	fsw		f7, 0(x24)	# 1129
	addi	x6, x0, 1	# 1129
	jal		x0, beq_cont.33647	# 1122
beq.33674:
	flw		f7, 8(x6)	# 1130
	fsub	f7, f7, f4	# 1130
	flw		f8, 12(x6)	# 1130
	fmul	f7, f7, f8	# 1130
	addi	x10, x0, 40736	# 1132
	flw		f10, 0(x10)	# 1132
	fmul	f13, f7, f10	# 1132
	fadd	f13, f13, f2	# 1132
	fle		f13, f0, fle.33676	# 124
	jal		x0, fle_cont.33675	# 124
fle.33676:
	fsub	f13, f0, f13	# 124
fle_cont.33675:
	flw		f14, 0(x9)	# 453
	fle		f14, f13, fle.33678	# 125
	addi	x10, x0, 40744	# 1133
	flw		f13, 0(x10)	# 1133
	fmul	f13, f7, f13	# 1133
	fadd	f13, f13, f6	# 1133
	fle		f13, f0, fle.33680	# 124
	jal		x0, fle_cont.33679	# 124
fle.33680:
	fsub	f13, f0, f13	# 124
fle_cont.33679:
	flw		f15, 8(x9)	# 473
	fle		f15, f13, fle.33682	# 125
	feq		f8, f0, feq.33684	# 120
	addi	x9, x0, 1	# 1134
	jal		x0, fle_cont.33677	# 120
feq.33684:
	addi	x9, x0, 0	# 1134
	jal		x0, fle_cont.33677	# 125
fle.33682:
	addi	x9, x0, 0	# 1135
	jal		x0, fle_cont.33677	# 125
fle.33678:
	addi	x9, x0, 0	# 1136
fle_cont.33677:
	beq		x9, x0, beq.33686	# 1131
	fsw		f7, 0(x24)	# 1138
	addi	x6, x0, 2	# 1138
	jal		x0, beq_cont.33647	# 1131
beq.33686:
	flw		f7, 16(x6)	# 1139
	fsub	f6, f7, f6	# 1139
	flw		f7, 20(x6)	# 1139
	fmul	f6, f6, f7	# 1139
	fmul	f8, f6, f10	# 1141
	fadd	f2, f8, f2	# 1141
	fle		f2, f0, fle.33688	# 124
	jal		x0, fle_cont.33687	# 124
fle.33688:
	fsub	f2, f0, f2	# 124
fle_cont.33687:
	fle		f14, f2, fle.33690	# 125
	fmul	f2, f6, f9	# 1142
	fadd	f2, f2, f4	# 1142
	fle		f2, f0, fle.33692	# 124
	jal		x0, fle_cont.33691	# 124
fle.33692:
	fsub	f2, f0, f2	# 124
fle_cont.33691:
	fle		f12, f2, fle.33694	# 125
	feq		f7, f0, feq.33696	# 120
	addi	x6, x0, 1	# 1143
	jal		x0, fle_cont.33689	# 120
feq.33696:
	addi	x6, x0, 0	# 1143
	jal		x0, fle_cont.33689	# 125
fle.33694:
	addi	x6, x0, 0	# 1144
	jal		x0, fle_cont.33689	# 125
fle.33690:
	addi	x6, x0, 0	# 1145
fle_cont.33689:
	beq		x6, x0, beq.33698	# 1140
	fsw		f6, 0(x24)	# 1147
	addi	x6, x0, 3	# 1147
	jal		x0, beq_cont.33647	# 1140
beq.33698:
	addi	x6, x0, 0	# 1149
beq_cont.33647:
	flw		f2, 0(x24)	# 1446
	beq		x6, x0, beq.33700	# 1447
	fle		f19, f2, fle.33702	# 125
	addi	x6, x0, 1	# 125
	jal		x0, beq_cont.33699	# 125
fle.33702:
	addi	x6, x0, 0	# 125
	jal		x0, beq_cont.33699	# 1447
beq.33700:
	addi	x6, x0, 0	# 1447
beq_cont.33699:
	beq		x6, x0, beq.33703	# 1447
	fadd	f2, f2, f18	# 1450
	addi	x6, x0, 40312	# 1451
	flw		f4, 0(x6)	# 1451
	fmul	f4, f4, f2	# 1451
	fadd	f1, f4, f1	# 1451
	addi	x6, x0, 40316	# 1452
	flw		f4, 0(x6)	# 1452
	fmul	f4, f4, f2	# 1452
	fadd	f3, f4, f3	# 1452
	addi	x6, x0, 40320	# 1453
	flw		f4, 0(x6)	# 1453
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
	beq		x4, x5, beq.33704	# 1454
	addi	x4, x0, 1	# 1455
	jalr	x0, x1, 0	# 1455
beq.33704:
	lw		x4, -4(x2)	# 1457
	addi	x4, x4, 1	# 1457
	lw		x5, 0(x2)	# 1457
	jal		x0, shadow_check_and_group.2928.18026	# 1457
beq.33703:
	lw		x6, 24(x7)	# 430
	beq		x6, x0, beq.33705	# 1463
	addi	x4, x4, 1	# 1464
	jal		x0, shadow_check_and_group.2928.18026	# 1464
beq.33705:
	addi	x4, x0, 0	# 1466
	jalr	x0, x1, 0	# 1466
beq.33646:
	addi	x4, x0, 0	# 1442
	jalr	x0, x1, 0	# 1442
shadow_check_one_or_group.2931.18029:
	mul		x6, x30, x4	# 1471
	add		x6, x5, x6	# 1471
	lw		x6, 0(x6)	# 1471
	beq		x6, x19, beq.33706	# 1472
	mul		x6, x30, x6	# 1475
	addi	x6, x6, 40332	# 1475
	lw		x6, 0(x6)	# 1475
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
	beq		x4, x5, beq.33707	# 1477
	addi	x4, x0, 1	# 1478
	jalr	x0, x1, 0	# 1478
beq.33707:
	lw		x4, -4(x2)	# 1480
	addi	x4, x4, 1	# 1480
	lw		x5, 0(x2)	# 1480
	jal		x0, shadow_check_one_or_group.2931.18029	# 1480
beq.33706:
	addi	x4, x0, 0	# 1473
	jalr	x0, x1, 0	# 1473
shadow_check_one_or_matrix.2934.18032:
	mul		x6, x30, x4	# 1486
	add		x6, x5, x6	# 1486
	lw		x6, 0(x6)	# 1486
	lw		x8, 0(x6)	# 1487
	beq		x8, x19, beq.33708	# 1488
	sw		x6, 0(x2)	# 1492
	sw		x5, -4(x2)	# 1492
	sw		x4, -8(x2)	# 1492
	sw		x0, -12(x2)	# 1492
	beq		x8, x23, beq.33710	# 1492
	mul		x8, x30, x8	# 1183
	addi	x9, x8, 40048	# 1183
	lw		x9, 0(x9)	# 1183
	flw		f1, 0(x25)	# 1184
	lw		x10, 20(x9)	# 488
	flw		f2, 0(x10)	# 493
	fsub	f1, f1, f2	# 1184
	add		x11, x0, x20	# 6
	flw		f2, 0(x27)	# 1185
	flw		f3, 4(x10)	# 503
	fsub	f2, f2, f3	# 1185
	flw		f3, 0(x26)	# 1186
	flw		f4, 8(x10)	# 513
	fsub	f3, f3, f4	# 1186
	addi	x8, x8, 40748	# 1188
	lw		x8, 0(x8)	# 1188
	lw		x10, 4(x9)	# 410
	beq		x10, x20, beq.33712	# 1190
	beq		x10, x21, beq.33714	# 1192
	flw		f4, 0(x8)	# 1164
	feq		f4, f0, feq.33716	# 120
	flw		f6, 4(x8)	# 1168
	fmul	f6, f6, f1	# 1168
	flw		f7, 8(x8)	# 1168
	fmul	f7, f7, f2	# 1168
	fadd	f6, f6, f7	# 1168
	flw		f7, 12(x8)	# 1168
	fmul	f7, f7, f3	# 1168
	fadd	f6, f6, f7	# 1168
	fmul	f7, f1, f1	# 127
	lw		x13, 16(x9)	# 448
	flw		f8, 0(x13)	# 453
	fmul	f7, f7, f8	# 1024
	fmul	f8, f2, f2	# 127
	flw		f9, 4(x13)	# 463
	fmul	f8, f8, f9	# 1024
	fadd	f7, f7, f8	# 1024
	fmul	f8, f3, f3	# 127
	flw		f9, 8(x13)	# 473
	fmul	f8, f8, f9	# 1024
	fadd	f7, f7, f8	# 1024
	lw		x13, 12(x9)	# 439
	beq		x13, x0, beq.33718	# 1026
	fmul	f8, f2, f3	# 1030
	lw		x13, 36(x9)	# 568
	flw		f9, 0(x13)	# 573
	fmul	f8, f8, f9	# 1030
	fadd	f7, f7, f8	# 1029
	fmul	f3, f3, f1	# 1031
	flw		f8, 4(x13)	# 583
	fmul	f3, f3, f8	# 1031
	fadd	f3, f7, f3	# 1029
	fmul	f1, f1, f2	# 1032
	flw		f2, 8(x13)	# 593
	fmul	f1, f1, f2	# 1032
	fadd	f1, f3, f1	# 1029
	jal		x0, beq_cont.33717	# 1026
beq.33718:
	fadd	f1, f0, f7	# 1027
beq_cont.33717:
	beq		x10, x22, beq.33720	# 1170
	jal		x0, beq_cont.33719	# 1170
beq.33720:
	fsub	f1, f1, f30	# 1170
beq_cont.33719:
	fmul	f2, f6, f6	# 127
	fmul	f1, f4, f1	# 1171
	fsub	f1, f2, f1	# 1171
	fle		f1, f0, fle.33722	# 121
	lw		x9, 24(x9)	# 430
	beq		x9, x0, beq.33724	# 1173
	fsqrt	f1, f1	# 1174
	fadd	f1, f6, f1	# 1174
	flw		f2, 16(x8)	# 1174
	fmul	f1, f1, f2	# 1174
	fsw		f1, 0(x24)	# 1174
	jal		x0, beq_cont.33723	# 1173
beq.33724:
	fsqrt	f1, f1	# 1176
	fsub	f1, f6, f1	# 1176
	flw		f2, 16(x8)	# 1176
	fmul	f1, f1, f2	# 1176
	fsw		f1, 0(x24)	# 1176
beq_cont.33723:
	addi	x8, x0, 1	# 1177
	jal		x0, beq_cont.33711	# 121
fle.33722:
	addi	x8, x0, 0	# 1178
	jal		x0, beq_cont.33711	# 120
feq.33716:
	addi	x8, x0, 0	# 1166
	jal		x0, beq_cont.33711	# 1192
beq.33714:
	flw		f4, 0(x8)	# 1154
	fle		f0, f4, fle.33726	# 122
	flw		f4, 4(x8)	# 1156
	fmul	f1, f4, f1	# 1156
	flw		f4, 8(x8)	# 1156
	fmul	f2, f4, f2	# 1156
	fadd	f1, f1, f2	# 1156
	flw		f2, 12(x8)	# 1156
	fmul	f2, f2, f3	# 1156
	fadd	f1, f1, f2	# 1156
	fsw		f1, 0(x24)	# 1155
	addi	x8, x0, 1	# 1157
	jal		x0, beq_cont.33711	# 122
fle.33726:
	addi	x8, x0, 0	# 1158
	jal		x0, beq_cont.33711	# 1190
beq.33712:
	flw		f4, 0(x8)	# 1121
	fsub	f4, f4, f1	# 1121
	flw		f5, 4(x8)	# 1121
	fmul	f4, f4, f5	# 1121
	addi	x10, x0, 40740	# 1123
	flw		f6, 0(x10)	# 1123
	fmul	f7, f4, f6	# 1123
	fadd	f7, f7, f2	# 1123
	fle		f7, f0, fle.33728	# 124
	jal		x0, fle_cont.33727	# 124
fle.33728:
	fsub	f7, f0, f7	# 124
fle_cont.33727:
	lw		x9, 16(x9)	# 458
	flw		f9, 4(x9)	# 463
	fle		f9, f7, fle.33730	# 125
	addi	x10, x0, 40744	# 1124
	flw		f7, 0(x10)	# 1124
	fmul	f7, f4, f7	# 1124
	fadd	f7, f7, f3	# 1124
	fle		f7, f0, fle.33732	# 124
	jal		x0, fle_cont.33731	# 124
fle.33732:
	fsub	f7, f0, f7	# 124
fle_cont.33731:
	flw		f10, 8(x9)	# 473
	fle		f10, f7, fle.33734	# 125
	feq		f5, f0, feq.33736	# 120
	addi	x10, x0, 1	# 1125
	jal		x0, fle_cont.33729	# 120
feq.33736:
	addi	x10, x0, 0	# 1125
	jal		x0, fle_cont.33729	# 125
fle.33734:
	addi	x10, x0, 0	# 1126
	jal		x0, fle_cont.33729	# 125
fle.33730:
	addi	x10, x0, 0	# 1127
fle_cont.33729:
	beq		x10, x0, beq.33738	# 1122
	fsw		f4, 0(x24)	# 1129
	addi	x8, x0, 1	# 1129
	jal		x0, beq_cont.33711	# 1122
beq.33738:
	flw		f4, 8(x8)	# 1130
	fsub	f4, f4, f2	# 1130
	flw		f5, 12(x8)	# 1130
	fmul	f4, f4, f5	# 1130
	addi	x10, x0, 40736	# 1132
	flw		f7, 0(x10)	# 1132
	fmul	f10, f4, f7	# 1132
	fadd	f10, f10, f1	# 1132
	fle		f10, f0, fle.33740	# 124
	jal		x0, fle_cont.33739	# 124
fle.33740:
	fsub	f10, f0, f10	# 124
fle_cont.33739:
	flw		f11, 0(x9)	# 453
	fle		f11, f10, fle.33742	# 125
	addi	x10, x0, 40744	# 1133
	flw		f10, 0(x10)	# 1133
	fmul	f10, f4, f10	# 1133
	fadd	f10, f10, f3	# 1133
	fle		f10, f0, fle.33744	# 124
	jal		x0, fle_cont.33743	# 124
fle.33744:
	fsub	f10, f0, f10	# 124
fle_cont.33743:
	flw		f12, 8(x9)	# 473
	fle		f12, f10, fle.33746	# 125
	feq		f5, f0, feq.33748	# 120
	addi	x9, x0, 1	# 1134
	jal		x0, fle_cont.33741	# 120
feq.33748:
	addi	x9, x0, 0	# 1134
	jal		x0, fle_cont.33741	# 125
fle.33746:
	addi	x9, x0, 0	# 1135
	jal		x0, fle_cont.33741	# 125
fle.33742:
	addi	x9, x0, 0	# 1136
fle_cont.33741:
	beq		x9, x0, beq.33750	# 1131
	fsw		f4, 0(x24)	# 1138
	addi	x8, x0, 2	# 1138
	jal		x0, beq_cont.33711	# 1131
beq.33750:
	flw		f4, 16(x8)	# 1139
	fsub	f3, f4, f3	# 1139
	flw		f4, 20(x8)	# 1139
	fmul	f3, f3, f4	# 1139
	fmul	f5, f3, f7	# 1141
	fadd	f1, f5, f1	# 1141
	fle		f1, f0, fle.33752	# 124
	jal		x0, fle_cont.33751	# 124
fle.33752:
	fsub	f1, f0, f1	# 124
fle_cont.33751:
	fle		f11, f1, fle.33754	# 125
	fmul	f1, f3, f6	# 1142
	fadd	f1, f1, f2	# 1142
	fle		f1, f0, fle.33756	# 124
	jal		x0, fle_cont.33755	# 124
fle.33756:
	fsub	f1, f0, f1	# 124
fle_cont.33755:
	fle		f9, f1, fle.33758	# 125
	feq		f4, f0, feq.33760	# 120
	addi	x8, x0, 1	# 1143
	jal		x0, fle_cont.33753	# 120
feq.33760:
	addi	x8, x0, 0	# 1143
	jal		x0, fle_cont.33753	# 125
fle.33758:
	addi	x8, x0, 0	# 1144
	jal		x0, fle_cont.33753	# 125
fle.33754:
	addi	x8, x0, 0	# 1145
fle_cont.33753:
	beq		x8, x0, beq.33762	# 1140
	fsw		f3, 0(x24)	# 1147
	addi	x8, x0, 3	# 1147
	jal		x0, beq_cont.33711	# 1140
beq.33762:
	addi	x8, x0, 0	# 1149
beq_cont.33711:
	beq		x8, x0, beq.33764	# 1498
	flw		f1, 0(x24)	# 1499
	fle		f20, f1, fle.33766	# 125
	addi	x5, x6, 0	# 1500
	addi	x4, x20, 0	# 1500
	sw		x1, -16(x2)	# 1500
	addi	x2, x2, -20	# 1500
	jal		x1, shadow_check_one_or_group.2931.18029	# 1500
	addi	x2, x2, 20	# 1500
	lw		x1, -16(x2)	# 1500
	lw		x5, -12(x2)	# 1500
	beq		x4, x5, beq.33768	# 1500
	addi	x4, x0, 1	# 1501
	jal		x0, beq_cont.33709	# 1500
beq.33768:
	addi	x4, x0, 0	# 1502
	jal		x0, beq_cont.33709	# 125
fle.33766:
	addi	x4, x0, 0	# 1503
	jal		x0, beq_cont.33709	# 1498
beq.33764:
	addi	x4, x0, 0	# 1504
	jal		x0, beq_cont.33709	# 1492
beq.33710:
	addi	x4, x0, 1	# 1493
beq_cont.33709:
	lw		x5, -12(x2)	# 1491
	beq		x4, x5, beq.33769	# 1491
	add		x4, x0, x20	# 6
	lw		x6, 0(x2)	# 1506
	addi	x5, x6, 0	# 1506
	sw		x1, -16(x2)	# 1506
	addi	x2, x2, -20	# 1506
	jal		x1, shadow_check_one_or_group.2931.18029	# 1506
	addi	x2, x2, 20	# 1506
	lw		x1, -16(x2)	# 1506
	lw		x5, -12(x2)	# 1506
	beq		x4, x5, beq.33770	# 1506
	addi	x4, x0, 1	# 1507
	jalr	x0, x1, 0	# 1507
beq.33770:
	lw		x4, -8(x2)	# 1509
	addi	x4, x4, 1	# 1509
	lw		x5, -4(x2)	# 1509
	jal		x0, shadow_check_one_or_matrix.2934.18032	# 1509
beq.33769:
	lw		x4, -8(x2)	# 1511
	addi	x4, x4, 1	# 1511
	lw		x5, -4(x2)	# 1511
	jal		x0, shadow_check_one_or_matrix.2934.18032	# 1511
beq.33708:
	addi	x4, x0, 0	# 1489
	jalr	x0, x1, 0	# 1489
solve_each_element.2937.18035:
	mul		x7, x30, x4	# 1522
	add		x7, x5, x7	# 1522
	lw		x7, 0(x7)	# 1522
	beq		x7, x19, beq.33771	# 1523
	mul		x8, x30, x7	# 1089
	addi	x8, x8, 40048	# 1089
	lw		x8, 0(x8)	# 1089
	add		x9, x0, x0	# 6
	addi	x10, x0, 40636	# 1091
	flw		f1, 0(x10)	# 1091
	lw		x10, 20(x8)	# 488
	flw		f2, 0(x10)	# 493
	fsub	f2, f1, f2	# 1091
	addi	x12, x0, 40640	# 1092
	flw		f3, 0(x12)	# 1092
	flw		f4, 4(x10)	# 503
	fsub	f4, f3, f4	# 1092
	addi	x13, x0, 40644	# 1093
	flw		f5, 0(x13)	# 1093
	flw		f6, 8(x10)	# 513
	fsub	f6, f5, f6	# 1093
	lw		x10, 4(x8)	# 410
	beq		x10, x20, beq.33773	# 1096
	beq		x10, x21, beq.33775	# 1097
	flw		f7, 0(x6)	# 1063
	flw		f8, 4(x6)	# 1063
	flw		f9, 8(x6)	# 1063
	fmul	f10, f7, f7	# 127
	lw		x11, 16(x8)	# 448
	flw		f11, 0(x11)	# 453
	fmul	f10, f10, f11	# 1024
	fmul	f12, f8, f8	# 127
	flw		f13, 4(x11)	# 463
	fmul	f12, f12, f13	# 1024
	fadd	f10, f10, f12	# 1024
	fmul	f12, f9, f9	# 127
	flw		f14, 8(x11)	# 473
	fmul	f12, f12, f14	# 1024
	fadd	f10, f10, f12	# 1024
	lw		x11, 12(x8)	# 439
	beq		x11, x0, beq_cont.33776	# 1026
	fmul	f12, f8, f9	# 1030
	lw		x12, 36(x8)	# 568
	flw		f15, 0(x12)	# 573
	fmul	f12, f12, f15	# 1030
	fadd	f10, f10, f12	# 1029
	fmul	f12, f9, f7	# 1031
	flw		f15, 4(x12)	# 583
	fmul	f12, f12, f15	# 1031
	fadd	f10, f10, f12	# 1029
	fmul	f12, f7, f8	# 1032
	flw		f15, 8(x12)	# 593
	fmul	f12, f12, f15	# 1032
	fadd	f10, f10, f12	# 1029
beq_cont.33776:
	feq		f10, f0, feq.33779	# 120
	fmul	f15, f7, f2	# 1038
	fmul	f15, f15, f11	# 1038
	fmul	f16, f8, f4	# 1039
	fmul	f16, f16, f13	# 1039
	fadd	f15, f15, f16	# 1038
	fmul	f16, f9, f6	# 1040
	fmul	f16, f16, f14	# 1040
	fadd	f15, f15, f16	# 1038
	beq		x11, x0, beq.33781	# 1042
	fmul	f16, f9, f4	# 1046
	fmul	f17, f8, f6	# 1046
	fadd	f16, f16, f17	# 1046
	lw		x12, 36(x8)	# 568
	flw		f17, 0(x12)	# 573
	fmul	f16, f16, f17	# 1046
	fmul	f17, f7, f6	# 1047
	fmul	f9, f9, f2	# 1047
	fadd	f9, f17, f9	# 1047
	flw		f17, 4(x12)	# 583
	fmul	f9, f9, f17	# 1047
	fadd	f9, f16, f9	# 1046
	fmul	f7, f7, f4	# 1048
	fmul	f8, f8, f2	# 1048
	fadd	f7, f7, f8	# 1048
	flw		f8, 8(x12)	# 593
	fmul	f7, f7, f8	# 1048
	fadd	f7, f9, f7	# 1046
	lui		x12, %hi(l.27933)	# 126
	ori		x12, x12, %lo(l.27933)	# 126
	flw		f8, 0(x12)	# 126
	fmul	f7, f7, f8	# 126
	fadd	f7, f15, f7	# 1045
	jal		x0, beq_cont.33780	# 1042
beq.33781:
	fadd	f7, f0, f15	# 1043
beq_cont.33780:
	fmul	f8, f2, f2	# 127
	fmul	f8, f8, f11	# 1024
	fmul	f9, f4, f4	# 127
	fmul	f9, f9, f13	# 1024
	fadd	f8, f8, f9	# 1024
	fmul	f9, f6, f6	# 127
	fmul	f9, f9, f14	# 1024
	fadd	f8, f8, f9	# 1024
	beq		x11, x0, beq.33783	# 1026
	fmul	f9, f4, f6	# 1030
	lw		x11, 36(x8)	# 568
	flw		f11, 0(x11)	# 573
	fmul	f9, f9, f11	# 1030
	fadd	f8, f8, f9	# 1029
	fmul	f6, f6, f2	# 1031
	flw		f9, 4(x11)	# 583
	fmul	f6, f6, f9	# 1031
	fadd	f6, f8, f6	# 1029
	fmul	f2, f2, f4	# 1032
	flw		f4, 8(x11)	# 593
	fmul	f2, f2, f4	# 1032
	fadd	f2, f6, f2	# 1029
	jal		x0, beq_cont.33782	# 1026
beq.33783:
	fadd	f2, f0, f8	# 1027
beq_cont.33782:
	beq		x10, x22, beq.33785	# 1073
	jal		x0, beq_cont.33784	# 1073
beq.33785:
	fsub	f2, f2, f30	# 1073
beq_cont.33784:
	fmul	f4, f7, f7	# 127
	fmul	f2, f10, f2	# 1075
	fsub	f2, f4, f2	# 1075
	fle		f2, f0, fle.33787	# 121
	fsqrt	f2, f2	# 1078
	lw		x10, 24(x8)	# 430
	beq		x10, x0, beq.33789	# 1079
	jal		x0, beq_cont.33788	# 1079
beq.33789:
	fsub	f2, f0, f2	# 123
beq_cont.33788:
	fsub	f2, f2, f7	# 1080
	fdiv	f2, f2, f10	# 1080
	fsw		f2, 0(x24)	# 1080
	addi	x10, x0, 1	# 1080
	jal		x0, beq_cont.33772	# 121
fle.33787:
	addi	x10, x0, 0	# 1083
	jal		x0, beq_cont.33772	# 120
feq.33779:
	addi	x10, x0, 0	# 1066
	jal		x0, beq_cont.33772	# 1097
beq.33775:
	lw		x10, 16(x8)	# 478
	flw		f7, 0(x6)	# 349
	flw		f8, 0(x10)	# 349
	fmul	f7, f7, f8	# 349
	flw		f9, 4(x6)	# 349
	flw		f10, 4(x10)	# 349
	fmul	f9, f9, f10	# 349
	fadd	f7, f7, f9	# 349
	flw		f9, 8(x6)	# 349
	flw		f11, 8(x10)	# 349
	fmul	f9, f9, f11	# 349
	fadd	f7, f7, f9	# 349
	fle		f7, f0, fle.33791	# 121
	fmul	f2, f8, f2	# 354
	fmul	f4, f10, f4	# 354
	fadd	f2, f2, f4	# 354
	fmul	f4, f11, f6	# 354
	fadd	f2, f2, f4	# 354
	fsub	f2, f0, f2	# 123
	fdiv	f2, f2, f7	# 1014
	fsw		f2, 0(x24)	# 1014
	addi	x10, x0, 1	# 1015
	jal		x0, beq_cont.33772	# 121
fle.33791:
	addi	x10, x0, 0	# 1016
	jal		x0, beq_cont.33772	# 1096
beq.33773:
	flw		f7, 0(x6)	# 985
	feq		f7, f0, feq.33793	# 120
	lw		x10, 16(x8)	# 478
	lw		x11, 24(x8)	# 430
	fle		f0, f7, fle.33795	# 122
	addi	x12, x0, 1	# 122
	jal		x0, fle_cont.33794	# 122
fle.33795:
	addi	x12, x0, 0	# 122
fle_cont.33794:
	beq		x11, x0, beq.33797	# 261
	fle		f0, f7, fle.33799	# 122
	addi	x11, x0, 0	# 261
	jal		x0, beq_cont.33796	# 122
fle.33799:
	addi	x11, x0, 1	# 261
	jal		x0, beq_cont.33796	# 261
beq.33797:
	addi	x11, x12, 0	# 261
beq_cont.33796:
	flw		f9, 0(x10)	# 987
	beq		x11, x0, beq.33801	# 276
	jal		x0, beq_cont.33800	# 276
beq.33801:
	fsub	f9, f0, f9	# 123
beq_cont.33800:
	fsub	f9, f9, f2	# 989
	fdiv	f9, f9, f7	# 989
	flw		f10, 4(x6)	# 990
	fmul	f10, f9, f10	# 990
	fadd	f10, f10, f4	# 990
	fle		f10, f0, fle.33803	# 124
	jal		x0, fle_cont.33802	# 124
fle.33803:
	fsub	f10, f0, f10	# 124
fle_cont.33802:
	flw		f11, 4(x10)	# 990
	fle		f11, f10, fle.33805	# 125
	flw		f10, 8(x6)	# 991
	fmul	f10, f9, f10	# 991
	fadd	f10, f10, f6	# 991
	fle		f10, f0, fle.33807	# 124
	jal		x0, fle_cont.33806	# 124
fle.33807:
	fsub	f10, f0, f10	# 124
fle_cont.33806:
	flw		f11, 8(x10)	# 991
	fle		f11, f10, fle.33809	# 125
	fsw		f9, 0(x24)	# 992
	addi	x10, x0, 1	# 992
	jal		x0, feq_cont.33792	# 125
fle.33809:
	addi	x10, x0, 0	# 993
	jal		x0, feq_cont.33792	# 125
fle.33805:
	addi	x10, x0, 0	# 994
	jal		x0, feq_cont.33792	# 120
feq.33793:
	addi	x10, x0, 0	# 985
feq_cont.33792:
	beq		x10, x0, beq.33811	# 1000
	addi	x10, x0, 1	# 1000
	jal		x0, beq_cont.33772	# 1000
beq.33811:
	flw		f9, 4(x6)	# 985
	feq		f9, f0, feq.33813	# 120
	lw		x10, 16(x8)	# 478
	lw		x11, 24(x8)	# 430
	fle		f0, f9, fle.33815	# 122
	addi	x12, x0, 1	# 122
	jal		x0, fle_cont.33814	# 122
fle.33815:
	addi	x12, x0, 0	# 122
fle_cont.33814:
	beq		x11, x0, beq.33817	# 261
	fle		f0, f9, fle.33819	# 122
	addi	x11, x0, 0	# 261
	jal		x0, beq_cont.33816	# 122
fle.33819:
	addi	x11, x0, 1	# 261
	jal		x0, beq_cont.33816	# 261
beq.33817:
	addi	x11, x12, 0	# 261
beq_cont.33816:
	flw		f10, 4(x10)	# 987
	beq		x11, x0, beq.33821	# 276
	jal		x0, beq_cont.33820	# 276
beq.33821:
	fsub	f10, f0, f10	# 123
beq_cont.33820:
	fsub	f10, f10, f4	# 989
	fdiv	f10, f10, f9	# 989
	flw		f11, 8(x6)	# 990
	fmul	f11, f10, f11	# 990
	fadd	f11, f11, f6	# 990
	fle		f11, f0, fle.33823	# 124
	jal		x0, fle_cont.33822	# 124
fle.33823:
	fsub	f11, f0, f11	# 124
fle_cont.33822:
	flw		f12, 8(x10)	# 990
	fle		f12, f11, fle.33825	# 125
	fmul	f11, f10, f7	# 991
	fadd	f11, f11, f2	# 991
	fle		f11, f0, fle.33827	# 124
	jal		x0, fle_cont.33826	# 124
fle.33827:
	fsub	f11, f0, f11	# 124
fle_cont.33826:
	flw		f12, 0(x10)	# 991
	fle		f12, f11, fle.33829	# 125
	fsw		f10, 0(x24)	# 992
	addi	x10, x0, 1	# 992
	jal		x0, feq_cont.33812	# 125
fle.33829:
	addi	x10, x0, 0	# 993
	jal		x0, feq_cont.33812	# 125
fle.33825:
	addi	x10, x0, 0	# 994
	jal		x0, feq_cont.33812	# 120
feq.33813:
	addi	x10, x0, 0	# 985
feq_cont.33812:
	beq		x10, x0, beq.33831	# 1001
	addi	x10, x0, 2	# 1001
	jal		x0, beq_cont.33772	# 1001
beq.33831:
	flw		f10, 8(x6)	# 985
	feq		f10, f0, feq.33833	# 120
	lw		x10, 16(x8)	# 478
	lw		x11, 24(x8)	# 430
	fle		f0, f10, fle.33835	# 122
	addi	x12, x0, 1	# 122
	jal		x0, fle_cont.33834	# 122
fle.33835:
	addi	x12, x0, 0	# 122
fle_cont.33834:
	beq		x11, x0, beq.33837	# 261
	fle		f0, f10, fle.33839	# 122
	addi	x11, x0, 0	# 261
	jal		x0, beq_cont.33836	# 122
fle.33839:
	addi	x11, x0, 1	# 261
	jal		x0, beq_cont.33836	# 261
beq.33837:
	addi	x11, x12, 0	# 261
beq_cont.33836:
	flw		f11, 8(x10)	# 987
	beq		x11, x0, beq.33841	# 276
	jal		x0, beq_cont.33840	# 276
beq.33841:
	fsub	f11, f0, f11	# 123
beq_cont.33840:
	fsub	f6, f11, f6	# 989
	fdiv	f6, f6, f10	# 989
	fmul	f7, f6, f7	# 990
	fadd	f2, f7, f2	# 990
	fle		f2, f0, fle.33843	# 124
	jal		x0, fle_cont.33842	# 124
fle.33843:
	fsub	f2, f0, f2	# 124
fle_cont.33842:
	flw		f7, 0(x10)	# 990
	fle		f7, f2, fle.33845	# 125
	fmul	f2, f6, f9	# 991
	fadd	f2, f2, f4	# 991
	fle		f2, f0, fle.33847	# 124
	jal		x0, fle_cont.33846	# 124
fle.33847:
	fsub	f2, f0, f2	# 124
fle_cont.33846:
	flw		f4, 4(x10)	# 991
	fle		f4, f2, fle.33849	# 125
	fsw		f6, 0(x24)	# 992
	addi	x10, x0, 1	# 992
	jal		x0, feq_cont.33832	# 125
fle.33849:
	addi	x10, x0, 0	# 993
	jal		x0, feq_cont.33832	# 125
fle.33845:
	addi	x10, x0, 0	# 994
	jal		x0, feq_cont.33832	# 120
feq.33833:
	addi	x10, x0, 0	# 985
feq_cont.33832:
	beq		x10, x0, beq.33851	# 1002
	addi	x10, x0, 3	# 1002
	jal		x0, beq_cont.33772	# 1002
beq.33851:
	addi	x10, x0, 0	# 1003
beq_cont.33772:
	beq		x10, x0, beq.33852	# 1526
	flw		f2, 0(x24)	# 1530
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x4, -8(x2)	# 125
	fle		f2, f0, fle_cont.33853	# 125
	addi	x8, x0, 40548	# 1533
	flw		f4, 0(x8)	# 1533
	fle		f4, f2, fle_cont.33853	# 125
	fadd	f2, f2, f18	# 1535
	flw		f4, 0(x6)	# 1536
	fmul	f4, f4, f2	# 1536
	fadd	f1, f4, f1	# 1536
	flw		f4, 4(x6)	# 1537
	fmul	f4, f4, f2	# 1537
	fadd	f3, f4, f3	# 1537
	flw		f4, 8(x6)	# 1538
	fmul	f4, f4, f2	# 1538
	fadd	f4, f4, f5	# 1538
	sw		x10, -12(x2)	# 1539
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
	beq		x4, x5, fle_cont.33853	# 1539
	flw		f1, -36(x2)	# 1541
	lw		x4, -32(x2)	# 1541
	fsw		f1, 0(x4)	# 1541
	flw		f1, -28(x2)	# 297
	fsw		f1, 0(x25)	# 297
	flw		f1, -24(x2)	# 298
	fsw		f1, 0(x27)	# 298
	flw		f1, -20(x2)	# 299
	fsw		f1, 0(x26)	# 299
	addi	x4, x0, 40564	# 1543
	lw		x5, -16(x2)	# 1543
	sw		x5, 0(x4)	# 1543
	addi	x4, x0, 40544	# 1544
	lw		x5, -12(x2)	# 1544
	sw		x5, 0(x4)	# 1544
fle_cont.33853:
	lw		x4, -8(x2)	# 1550
	addi	x4, x4, 1	# 1550
	lw		x5, -4(x2)	# 1550
	lw		x6, 0(x2)	# 1550
	jal		x0, solve_each_element.2937.18035	# 1550
beq.33852:
	lw		x7, 24(x8)	# 430
	beq		x7, x0, beq.33859	# 1554
	addi	x4, x4, 1	# 1555
	jal		x0, solve_each_element.2937.18035	# 1555
beq.33859:
	jalr	x0, x1, 0	# 1556
beq.33771:
	jalr	x0, x1, 0	# 1523
solve_one_or_network.2941.18039:
	mul		x7, x30, x4	# 1563
	add		x7, x5, x7	# 1563
	lw		x7, 0(x7)	# 1563
	beq		x7, x19, beq.33862	# 1564
	mul		x7, x30, x7	# 1565
	addi	x7, x7, 40332	# 1565
	lw		x7, 0(x7)	# 1565
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
beq.33862:
	jalr	x0, x1, 0	# 1568
trace_or_matrix.2945.18043:
	mul		x7, x30, x4	# 1573
	add		x7, x5, x7	# 1573
	lw		x7, 0(x7)	# 1573
	lw		x9, 0(x7)	# 1574
	beq		x9, x19, beq.33864	# 1575
	sw		x6, 0(x2)	# 1578
	sw		x5, -4(x2)	# 1578
	sw		x4, -8(x2)	# 1578
	beq		x9, x23, beq.33866	# 1578
	mul		x9, x30, x9	# 1089
	addi	x9, x9, 40048	# 1089
	lw		x9, 0(x9)	# 1089
	addi	x10, x0, 40636	# 1091
	flw		f1, 0(x10)	# 1091
	lw		x10, 20(x9)	# 488
	flw		f2, 0(x10)	# 493
	fsub	f1, f1, f2	# 1091
	add		x11, x0, x20	# 6
	addi	x12, x0, 40640	# 1092
	flw		f2, 0(x12)	# 1092
	flw		f3, 4(x10)	# 503
	fsub	f2, f2, f3	# 1092
	addi	x13, x0, 40644	# 1093
	flw		f3, 0(x13)	# 1093
	flw		f4, 8(x10)	# 513
	fsub	f3, f3, f4	# 1093
	lw		x10, 4(x9)	# 410
	beq		x10, x20, beq.33868	# 1096
	beq		x10, x21, beq.33870	# 1097
	flw		f4, 0(x6)	# 1063
	flw		f5, 4(x6)	# 1063
	flw		f6, 8(x6)	# 1063
	fmul	f7, f4, f4	# 127
	lw		x12, 16(x9)	# 448
	flw		f8, 0(x12)	# 453
	fmul	f7, f7, f8	# 1024
	fmul	f9, f5, f5	# 127
	flw		f10, 4(x12)	# 463
	fmul	f9, f9, f10	# 1024
	fadd	f7, f7, f9	# 1024
	fmul	f9, f6, f6	# 127
	flw		f11, 8(x12)	# 473
	fmul	f9, f9, f11	# 1024
	fadd	f7, f7, f9	# 1024
	lw		x12, 12(x9)	# 439
	beq		x12, x0, beq_cont.33871	# 1026
	fmul	f9, f5, f6	# 1030
	lw		x13, 36(x9)	# 568
	flw		f12, 0(x13)	# 573
	fmul	f9, f9, f12	# 1030
	fadd	f7, f7, f9	# 1029
	fmul	f9, f6, f4	# 1031
	flw		f12, 4(x13)	# 583
	fmul	f9, f9, f12	# 1031
	fadd	f7, f7, f9	# 1029
	fmul	f9, f4, f5	# 1032
	flw		f12, 8(x13)	# 593
	fmul	f9, f9, f12	# 1032
	fadd	f7, f7, f9	# 1029
beq_cont.33871:
	feq		f7, f0, feq.33874	# 120
	fmul	f12, f4, f1	# 1038
	fmul	f12, f12, f8	# 1038
	fmul	f13, f5, f2	# 1039
	fmul	f13, f13, f10	# 1039
	fadd	f12, f12, f13	# 1038
	fmul	f13, f6, f3	# 1040
	fmul	f13, f13, f11	# 1040
	fadd	f12, f12, f13	# 1038
	beq		x12, x0, beq.33876	# 1042
	fmul	f13, f6, f2	# 1046
	fmul	f14, f5, f3	# 1046
	fadd	f13, f13, f14	# 1046
	lw		x13, 36(x9)	# 568
	flw		f14, 0(x13)	# 573
	fmul	f13, f13, f14	# 1046
	fmul	f14, f4, f3	# 1047
	fmul	f6, f6, f1	# 1047
	fadd	f6, f14, f6	# 1047
	flw		f14, 4(x13)	# 583
	fmul	f6, f6, f14	# 1047
	fadd	f6, f13, f6	# 1046
	fmul	f4, f4, f2	# 1048
	fmul	f5, f5, f1	# 1048
	fadd	f4, f4, f5	# 1048
	flw		f5, 8(x13)	# 593
	fmul	f4, f4, f5	# 1048
	fadd	f4, f6, f4	# 1046
	lui		x13, %hi(l.27933)	# 126
	ori		x13, x13, %lo(l.27933)	# 126
	flw		f5, 0(x13)	# 126
	fmul	f4, f4, f5	# 126
	fadd	f4, f12, f4	# 1045
	jal		x0, beq_cont.33875	# 1042
beq.33876:
	fadd	f4, f0, f12	# 1043
beq_cont.33875:
	fmul	f5, f1, f1	# 127
	fmul	f5, f5, f8	# 1024
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f10	# 1024
	fadd	f5, f5, f6	# 1024
	fmul	f6, f3, f3	# 127
	fmul	f6, f6, f11	# 1024
	fadd	f5, f5, f6	# 1024
	beq		x12, x0, beq.33878	# 1026
	fmul	f6, f2, f3	# 1030
	lw		x12, 36(x9)	# 568
	flw		f8, 0(x12)	# 573
	fmul	f6, f6, f8	# 1030
	fadd	f5, f5, f6	# 1029
	fmul	f3, f3, f1	# 1031
	flw		f6, 4(x12)	# 583
	fmul	f3, f3, f6	# 1031
	fadd	f3, f5, f3	# 1029
	fmul	f1, f1, f2	# 1032
	flw		f2, 8(x12)	# 593
	fmul	f1, f1, f2	# 1032
	fadd	f1, f3, f1	# 1029
	jal		x0, beq_cont.33877	# 1026
beq.33878:
	fadd	f1, f0, f5	# 1027
beq_cont.33877:
	beq		x10, x22, beq.33880	# 1073
	jal		x0, beq_cont.33879	# 1073
beq.33880:
	fsub	f1, f1, f30	# 1073
beq_cont.33879:
	fmul	f2, f4, f4	# 127
	fmul	f1, f7, f1	# 1075
	fsub	f1, f2, f1	# 1075
	fle		f1, f0, fle.33882	# 121
	fsqrt	f1, f1	# 1078
	lw		x9, 24(x9)	# 430
	beq		x9, x0, beq.33884	# 1079
	jal		x0, beq_cont.33883	# 1079
beq.33884:
	fsub	f1, f0, f1	# 123
beq_cont.33883:
	fsub	f1, f1, f4	# 1080
	fdiv	f1, f1, f7	# 1080
	fsw		f1, 0(x24)	# 1080
	addi	x9, x0, 1	# 1080
	jal		x0, beq_cont.33867	# 121
fle.33882:
	addi	x9, x0, 0	# 1083
	jal		x0, beq_cont.33867	# 120
feq.33874:
	addi	x9, x0, 0	# 1066
	jal		x0, beq_cont.33867	# 1097
beq.33870:
	lw		x9, 16(x9)	# 478
	flw		f4, 0(x6)	# 349
	flw		f5, 0(x9)	# 349
	fmul	f4, f4, f5	# 349
	flw		f6, 4(x6)	# 349
	flw		f7, 4(x9)	# 349
	fmul	f6, f6, f7	# 349
	fadd	f4, f4, f6	# 349
	flw		f6, 8(x6)	# 349
	flw		f8, 8(x9)	# 349
	fmul	f6, f6, f8	# 349
	fadd	f4, f4, f6	# 349
	fle		f4, f0, fle.33886	# 121
	fmul	f1, f5, f1	# 354
	fmul	f2, f7, f2	# 354
	fadd	f1, f1, f2	# 354
	fmul	f2, f8, f3	# 354
	fadd	f1, f1, f2	# 354
	fsub	f1, f0, f1	# 123
	fdiv	f1, f1, f4	# 1014
	fsw		f1, 0(x24)	# 1014
	addi	x9, x0, 1	# 1015
	jal		x0, beq_cont.33867	# 121
fle.33886:
	addi	x9, x0, 0	# 1016
	jal		x0, beq_cont.33867	# 1096
beq.33868:
	flw		f4, 0(x6)	# 985
	feq		f4, f0, feq.33888	# 120
	lw		x10, 16(x9)	# 478
	lw		x12, 24(x9)	# 430
	fle		f0, f4, fle.33890	# 122
	addi	x13, x0, 1	# 122
	jal		x0, fle_cont.33889	# 122
fle.33890:
	addi	x13, x0, 0	# 122
fle_cont.33889:
	beq		x12, x0, beq.33892	# 261
	fle		f0, f4, fle.33894	# 122
	addi	x12, x0, 0	# 261
	jal		x0, beq_cont.33891	# 122
fle.33894:
	addi	x12, x0, 1	# 261
	jal		x0, beq_cont.33891	# 261
beq.33892:
	addi	x12, x13, 0	# 261
beq_cont.33891:
	flw		f6, 0(x10)	# 987
	beq		x12, x0, beq.33896	# 276
	jal		x0, beq_cont.33895	# 276
beq.33896:
	fsub	f6, f0, f6	# 123
beq_cont.33895:
	fsub	f6, f6, f1	# 989
	fdiv	f6, f6, f4	# 989
	flw		f7, 4(x6)	# 990
	fmul	f7, f6, f7	# 990
	fadd	f7, f7, f2	# 990
	fle		f7, f0, fle.33898	# 124
	jal		x0, fle_cont.33897	# 124
fle.33898:
	fsub	f7, f0, f7	# 124
fle_cont.33897:
	flw		f8, 4(x10)	# 990
	fle		f8, f7, fle.33900	# 125
	flw		f7, 8(x6)	# 991
	fmul	f7, f6, f7	# 991
	fadd	f7, f7, f3	# 991
	fle		f7, f0, fle.33902	# 124
	jal		x0, fle_cont.33901	# 124
fle.33902:
	fsub	f7, f0, f7	# 124
fle_cont.33901:
	flw		f8, 8(x10)	# 991
	fle		f8, f7, fle.33904	# 125
	fsw		f6, 0(x24)	# 992
	addi	x10, x0, 1	# 992
	jal		x0, feq_cont.33887	# 125
fle.33904:
	addi	x10, x0, 0	# 993
	jal		x0, feq_cont.33887	# 125
fle.33900:
	addi	x10, x0, 0	# 994
	jal		x0, feq_cont.33887	# 120
feq.33888:
	addi	x10, x0, 0	# 985
feq_cont.33887:
	beq		x10, x0, beq.33906	# 1000
	addi	x9, x0, 1	# 1000
	jal		x0, beq_cont.33867	# 1000
beq.33906:
	flw		f6, 4(x6)	# 985
	feq		f6, f0, feq.33908	# 120
	lw		x10, 16(x9)	# 478
	lw		x12, 24(x9)	# 430
	fle		f0, f6, fle.33910	# 122
	addi	x13, x0, 1	# 122
	jal		x0, fle_cont.33909	# 122
fle.33910:
	addi	x13, x0, 0	# 122
fle_cont.33909:
	beq		x12, x0, beq.33912	# 261
	fle		f0, f6, fle.33914	# 122
	addi	x12, x0, 0	# 261
	jal		x0, beq_cont.33911	# 122
fle.33914:
	addi	x12, x0, 1	# 261
	jal		x0, beq_cont.33911	# 261
beq.33912:
	addi	x12, x13, 0	# 261
beq_cont.33911:
	flw		f7, 4(x10)	# 987
	beq		x12, x0, beq.33916	# 276
	jal		x0, beq_cont.33915	# 276
beq.33916:
	fsub	f7, f0, f7	# 123
beq_cont.33915:
	fsub	f7, f7, f2	# 989
	fdiv	f7, f7, f6	# 989
	flw		f8, 8(x6)	# 990
	fmul	f8, f7, f8	# 990
	fadd	f8, f8, f3	# 990
	fle		f8, f0, fle.33918	# 124
	jal		x0, fle_cont.33917	# 124
fle.33918:
	fsub	f8, f0, f8	# 124
fle_cont.33917:
	flw		f9, 8(x10)	# 990
	fle		f9, f8, fle.33920	# 125
	fmul	f8, f7, f4	# 991
	fadd	f8, f8, f1	# 991
	fle		f8, f0, fle.33922	# 124
	jal		x0, fle_cont.33921	# 124
fle.33922:
	fsub	f8, f0, f8	# 124
fle_cont.33921:
	flw		f9, 0(x10)	# 991
	fle		f9, f8, fle.33924	# 125
	fsw		f7, 0(x24)	# 992
	addi	x10, x0, 1	# 992
	jal		x0, feq_cont.33907	# 125
fle.33924:
	addi	x10, x0, 0	# 993
	jal		x0, feq_cont.33907	# 125
fle.33920:
	addi	x10, x0, 0	# 994
	jal		x0, feq_cont.33907	# 120
feq.33908:
	addi	x10, x0, 0	# 985
feq_cont.33907:
	beq		x10, x0, beq.33926	# 1001
	addi	x9, x0, 2	# 1001
	jal		x0, beq_cont.33867	# 1001
beq.33926:
	flw		f7, 8(x6)	# 985
	feq		f7, f0, feq.33928	# 120
	lw		x10, 16(x9)	# 478
	lw		x9, 24(x9)	# 430
	fle		f0, f7, fle.33930	# 122
	addi	x12, x0, 1	# 122
	jal		x0, fle_cont.33929	# 122
fle.33930:
	addi	x12, x0, 0	# 122
fle_cont.33929:
	beq		x9, x0, beq.33932	# 261
	fle		f0, f7, fle.33934	# 122
	addi	x9, x0, 0	# 261
	jal		x0, beq_cont.33931	# 122
fle.33934:
	addi	x9, x0, 1	# 261
	jal		x0, beq_cont.33931	# 261
beq.33932:
	addi	x9, x12, 0	# 261
beq_cont.33931:
	flw		f8, 8(x10)	# 987
	beq		x9, x0, beq.33936	# 276
	jal		x0, beq_cont.33935	# 276
beq.33936:
	fsub	f8, f0, f8	# 123
beq_cont.33935:
	fsub	f3, f8, f3	# 989
	fdiv	f3, f3, f7	# 989
	fmul	f4, f3, f4	# 990
	fadd	f1, f4, f1	# 990
	fle		f1, f0, fle.33938	# 124
	jal		x0, fle_cont.33937	# 124
fle.33938:
	fsub	f1, f0, f1	# 124
fle_cont.33937:
	flw		f4, 0(x10)	# 990
	fle		f4, f1, fle.33940	# 125
	fmul	f1, f3, f6	# 991
	fadd	f1, f1, f2	# 991
	fle		f1, f0, fle.33942	# 124
	jal		x0, fle_cont.33941	# 124
fle.33942:
	fsub	f1, f0, f1	# 124
fle_cont.33941:
	flw		f2, 4(x10)	# 991
	fle		f2, f1, fle.33944	# 125
	fsw		f3, 0(x24)	# 992
	addi	x9, x0, 1	# 992
	jal		x0, feq_cont.33927	# 125
fle.33944:
	addi	x9, x0, 0	# 993
	jal		x0, feq_cont.33927	# 125
fle.33940:
	addi	x9, x0, 0	# 994
	jal		x0, feq_cont.33927	# 120
feq.33928:
	addi	x9, x0, 0	# 985
feq_cont.33927:
	beq		x9, x0, beq.33946	# 1002
	addi	x9, x0, 3	# 1002
	jal		x0, beq_cont.33867	# 1002
beq.33946:
	addi	x9, x0, 0	# 1003
beq_cont.33867:
	beq		x9, x0, beq_cont.33865	# 1584
	flw		f1, 0(x24)	# 1585
	addi	x8, x0, 40548	# 1586
	flw		f2, 0(x8)	# 1586
	fle		f2, f1, beq_cont.33865	# 125
	addi	x5, x7, 0	# 1587
	addi	x4, x20, 0	# 1587
	sw		x1, -12(x2)	# 1587
	addi	x2, x2, -16	# 1587
	jal		x1, solve_one_or_network.2941.18039	# 1587
	addi	x2, x2, 16	# 1587
	lw		x1, -12(x2)	# 1587
	jal		x0, beq_cont.33865	# 125
beq.33866:
	add		x8, x0, x20	# 6
	addi	x5, x7, 0	# 1579
	addi	x4, x20, 0	# 1579
	sw		x1, -12(x2)	# 1579
	addi	x2, x2, -16	# 1579
	jal		x1, solve_one_or_network.2941.18039	# 1579
	addi	x2, x2, 16	# 1579
	lw		x1, -12(x2)	# 1579
beq_cont.33865:
	lw		x4, -8(x2)	# 1591
	addi	x4, x4, 1	# 1591
	lw		x5, -4(x2)	# 1591
	lw		x6, 0(x2)	# 1591
	jal		x0, trace_or_matrix.2945.18043	# 1591
beq.33864:
	jalr	x0, x1, 0	# 1576
solve_each_element_fast.2951.18047:
	lw		x7, 0(x6)	# 696
	mul		x8, x30, x4	# 1616
	add		x8, x5, x8	# 1616
	lw		x8, 0(x8)	# 1616
	beq		x8, x19, beq.33952	# 1617
	mul		x10, x30, x8	# 1230
	addi	x11, x10, 40048	# 1230
	lw		x11, 0(x11)	# 1230
	lw		x12, 40(x11)	# 605
	add		x13, x0, x0	# 6
	flw		f1, 0(x12)	# 1232
	flw		f2, 4(x12)	# 1233
	flw		f3, 8(x12)	# 1234
	lw		x16, 4(x6)	# 702
	add		x10, x16, x10	# 1236
	lw		x10, 0(x10)	# 1236
	lw		x17, 4(x11)	# 410
	beq		x17, x20, beq.33954	# 1238
	beq		x17, x21, beq.33956	# 1240
	flw		f4, 0(x10)	# 1212
	feq		f4, f0, feq.33958	# 120
	flw		f6, 4(x10)	# 1216
	fmul	f1, f6, f1	# 1216
	flw		f6, 8(x10)	# 1216
	fmul	f2, f6, f2	# 1216
	fadd	f1, f1, f2	# 1216
	flw		f2, 12(x10)	# 1216
	fmul	f2, f2, f3	# 1216
	fadd	f1, f1, f2	# 1216
	flw		f2, 12(x12)	# 1217
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1218
	fsub	f2, f3, f2	# 1218
	fle		f2, f0, fle.33960	# 121
	lw		x12, 24(x11)	# 430
	beq		x12, x0, beq.33962	# 1220
	fsqrt	f2, f2	# 1221
	fadd	f1, f1, f2	# 1221
	flw		f2, 16(x10)	# 1221
	fmul	f1, f1, f2	# 1221
	fsw		f1, 0(x24)	# 1221
	jal		x0, beq_cont.33961	# 1220
beq.33962:
	fsqrt	f2, f2	# 1223
	fsub	f1, f1, f2	# 1223
	flw		f2, 16(x10)	# 1223
	fmul	f1, f1, f2	# 1223
	fsw		f1, 0(x24)	# 1223
beq_cont.33961:
	addi	x10, x0, 1	# 1224
	jal		x0, beq_cont.33953	# 121
fle.33960:
	addi	x10, x0, 0	# 1225
	jal		x0, beq_cont.33953	# 120
feq.33958:
	addi	x10, x0, 0	# 1214
	jal		x0, beq_cont.33953	# 1240
beq.33956:
	flw		f1, 0(x10)	# 1203
	fle		f0, f1, fle.33964	# 122
	flw		f2, 12(x12)	# 1204
	fmul	f1, f1, f2	# 1204
	fsw		f1, 0(x24)	# 1204
	addi	x10, x0, 1	# 1205
	jal		x0, beq_cont.33953	# 122
fle.33964:
	addi	x10, x0, 0	# 1206
	jal		x0, beq_cont.33953	# 1238
beq.33954:
	flw		f4, 0(x10)	# 1121
	fsub	f4, f4, f1	# 1121
	flw		f5, 4(x10)	# 1121
	fmul	f4, f4, f5	# 1121
	flw		f6, 4(x7)	# 1123
	fmul	f7, f4, f6	# 1123
	fadd	f7, f7, f2	# 1123
	fle		f7, f0, fle.33966	# 124
	jal		x0, fle_cont.33965	# 124
fle.33966:
	fsub	f7, f0, f7	# 124
fle_cont.33965:
	lw		x12, 16(x11)	# 458
	flw		f9, 4(x12)	# 463
	fle		f9, f7, fle.33968	# 125
	flw		f7, 8(x7)	# 1124
	fmul	f7, f4, f7	# 1124
	fadd	f7, f7, f3	# 1124
	fle		f7, f0, fle.33970	# 124
	jal		x0, fle_cont.33969	# 124
fle.33970:
	fsub	f7, f0, f7	# 124
fle_cont.33969:
	flw		f10, 8(x12)	# 473
	fle		f10, f7, fle.33972	# 125
	feq		f5, f0, feq.33974	# 120
	addi	x17, x0, 1	# 1125
	jal		x0, fle_cont.33967	# 120
feq.33974:
	addi	x17, x0, 0	# 1125
	jal		x0, fle_cont.33967	# 125
fle.33972:
	addi	x17, x0, 0	# 1126
	jal		x0, fle_cont.33967	# 125
fle.33968:
	addi	x17, x0, 0	# 1127
fle_cont.33967:
	beq		x17, x0, beq.33976	# 1122
	fsw		f4, 0(x24)	# 1129
	addi	x10, x0, 1	# 1129
	jal		x0, beq_cont.33953	# 1122
beq.33976:
	flw		f4, 8(x10)	# 1130
	fsub	f4, f4, f2	# 1130
	flw		f5, 12(x10)	# 1130
	fmul	f4, f4, f5	# 1130
	flw		f7, 0(x7)	# 1132
	fmul	f10, f4, f7	# 1132
	fadd	f10, f10, f1	# 1132
	fle		f10, f0, fle.33978	# 124
	jal		x0, fle_cont.33977	# 124
fle.33978:
	fsub	f10, f0, f10	# 124
fle_cont.33977:
	flw		f11, 0(x12)	# 453
	fle		f11, f10, fle.33980	# 125
	flw		f10, 8(x7)	# 1133
	fmul	f10, f4, f10	# 1133
	fadd	f10, f10, f3	# 1133
	fle		f10, f0, fle.33982	# 124
	jal		x0, fle_cont.33981	# 124
fle.33982:
	fsub	f10, f0, f10	# 124
fle_cont.33981:
	flw		f12, 8(x12)	# 473
	fle		f12, f10, fle.33984	# 125
	feq		f5, f0, feq.33986	# 120
	addi	x12, x0, 1	# 1134
	jal		x0, fle_cont.33979	# 120
feq.33986:
	addi	x12, x0, 0	# 1134
	jal		x0, fle_cont.33979	# 125
fle.33984:
	addi	x12, x0, 0	# 1135
	jal		x0, fle_cont.33979	# 125
fle.33980:
	addi	x12, x0, 0	# 1136
fle_cont.33979:
	beq		x12, x0, beq.33988	# 1131
	fsw		f4, 0(x24)	# 1138
	addi	x10, x0, 2	# 1138
	jal		x0, beq_cont.33953	# 1131
beq.33988:
	flw		f4, 16(x10)	# 1139
	fsub	f3, f4, f3	# 1139
	flw		f4, 20(x10)	# 1139
	fmul	f3, f3, f4	# 1139
	fmul	f5, f3, f7	# 1141
	fadd	f1, f5, f1	# 1141
	fle		f1, f0, fle.33990	# 124
	jal		x0, fle_cont.33989	# 124
fle.33990:
	fsub	f1, f0, f1	# 124
fle_cont.33989:
	fle		f11, f1, fle.33992	# 125
	fmul	f1, f3, f6	# 1142
	fadd	f1, f1, f2	# 1142
	fle		f1, f0, fle.33994	# 124
	jal		x0, fle_cont.33993	# 124
fle.33994:
	fsub	f1, f0, f1	# 124
fle_cont.33993:
	fle		f9, f1, fle.33996	# 125
	feq		f4, f0, feq.33998	# 120
	addi	x10, x0, 1	# 1143
	jal		x0, fle_cont.33991	# 120
feq.33998:
	addi	x10, x0, 0	# 1143
	jal		x0, fle_cont.33991	# 125
fle.33996:
	addi	x10, x0, 0	# 1144
	jal		x0, fle_cont.33991	# 125
fle.33992:
	addi	x10, x0, 0	# 1145
fle_cont.33991:
	beq		x10, x0, beq.34000	# 1140
	fsw		f3, 0(x24)	# 1147
	addi	x10, x0, 3	# 1147
	jal		x0, beq_cont.33953	# 1140
beq.34000:
	addi	x10, x0, 0	# 1149
beq_cont.33953:
	beq		x10, x0, beq.34001	# 1620
	flw		f1, 0(x24)	# 1624
	sw		x6, 0(x2)	# 125
	sw		x0, -4(x2)	# 125
	fsw		f0, -8(x2)	# 125
	sw		x7, -12(x2)	# 125
	sw		x19, -16(x2)	# 125
	sw		x5, -20(x2)	# 125
	sw		x4, -24(x2)	# 125
	fle		f1, f0, fle_cont.34002	# 125
	addi	x12, x0, 40548	# 1627
	flw		f3, 0(x12)	# 1627
	fle		f3, f1, fle_cont.34002	# 125
	fadd	f1, f1, f18	# 1629
	flw		f3, 0(x7)	# 1630
	fmul	f3, f3, f1	# 1630
	addi	x17, x0, 40648	# 1630
	flw		f4, 0(x17)	# 1630
	fadd	f3, f3, f4	# 1630
	flw		f4, 4(x7)	# 1631
	fmul	f4, f4, f1	# 1631
	addi	x17, x0, 40652	# 1631
	flw		f5, 0(x17)	# 1631
	fadd	f4, f4, f5	# 1631
	flw		f5, 8(x7)	# 1632
	fmul	f5, f5, f1	# 1632
	addi	x17, x0, 40656	# 1632
	flw		f6, 0(x17)	# 1632
	fadd	f5, f5, f6	# 1632
	sw		x10, -28(x2)	# 1633
	sw		x8, -32(x2)	# 1633
	fsw		f5, -36(x2)	# 1633
	fsw		f4, -40(x2)	# 1633
	fsw		f3, -44(x2)	# 1633
	fsw		f1, -48(x2)	# 1633
	addi	x4, x0, 0	# 1633
	fadd	f2, f0, f4	# 1633
	fadd	f1, f0, f3	# 1633
	fadd	f3, f0, f5	# 1633
	sw		x1, -52(x2)	# 1633
	addi	x2, x2, -56	# 1633
	jal		x1, check_all_inside.2922.18020	# 1633
	addi	x2, x2, 56	# 1633
	lw		x1, -52(x2)	# 1633
	lw		x5, -4(x2)	# 1633
	beq		x4, x5, fle_cont.34002	# 1633
	flw		f1, -48(x2)	# 1635
	fsw		f1, 0(x12)	# 1635
	flw		f1, -44(x2)	# 297
	fsw		f1, 0(x25)	# 297
	flw		f1, -40(x2)	# 298
	fsw		f1, 0(x27)	# 298
	flw		f1, -36(x2)	# 299
	fsw		f1, 0(x26)	# 299
	addi	x4, x0, 40564	# 1637
	lw		x6, -32(x2)	# 1637
	sw		x6, 0(x4)	# 1637
	addi	x4, x0, 40544	# 1638
	lw		x6, -28(x2)	# 1638
	sw		x6, 0(x4)	# 1638
fle_cont.34002:
	lw		x4, -24(x2)	# 1644
	addi	x4, x4, 1	# 1644
	mul		x5, x30, x4	# 1616
	lw		x6, -20(x2)	# 1616
	add		x5, x6, x5	# 1616
	lw		x5, 0(x5)	# 1616
	lw		x7, -16(x2)	# 1617
	beq		x5, x7, beq.34008	# 1617
	mul		x7, x30, x5	# 1230
	addi	x8, x7, 40048	# 1230
	lw		x8, 0(x8)	# 1230
	lw		x9, 40(x8)	# 605
	flw		f1, 0(x9)	# 1232
	flw		f2, 4(x9)	# 1233
	flw		f3, 8(x9)	# 1234
	add		x7, x16, x7	# 1236
	lw		x7, 0(x7)	# 1236
	lw		x10, 4(x8)	# 410
	beq		x10, x20, beq.34010	# 1238
	beq		x10, x21, beq.34012	# 1240
	flw		f4, 0(x7)	# 1212
	flw		f5, -8(x2)	# 120
	feq		f4, f5, feq.34014	# 120
	flw		f6, 4(x7)	# 1216
	fmul	f1, f6, f1	# 1216
	flw		f6, 8(x7)	# 1216
	fmul	f2, f6, f2	# 1216
	fadd	f1, f1, f2	# 1216
	flw		f2, 12(x7)	# 1216
	fmul	f2, f2, f3	# 1216
	fadd	f1, f1, f2	# 1216
	flw		f2, 12(x9)	# 1217
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1218
	fsub	f2, f3, f2	# 1218
	fle		f2, f5, fle.34016	# 121
	lw		x9, 24(x8)	# 430
	lw		x10, -4(x2)	# 1220
	beq		x9, x10, beq.34018	# 1220
	fsqrt	f2, f2	# 1221
	fadd	f1, f1, f2	# 1221
	flw		f2, 16(x7)	# 1221
	fmul	f1, f1, f2	# 1221
	fsw		f1, 0(x24)	# 1221
	jal		x0, beq_cont.34017	# 1220
beq.34018:
	fsqrt	f2, f2	# 1223
	fsub	f1, f1, f2	# 1223
	flw		f2, 16(x7)	# 1223
	fmul	f1, f1, f2	# 1223
	fsw		f1, 0(x24)	# 1223
beq_cont.34017:
	addi	x7, x0, 1	# 1224
	jal		x0, beq_cont.34009	# 121
fle.34016:
	addi	x7, x0, 0	# 1225
	jal		x0, beq_cont.34009	# 120
feq.34014:
	addi	x7, x0, 0	# 1214
	jal		x0, beq_cont.34009	# 1240
beq.34012:
	flw		f1, 0(x7)	# 1203
	flw		f2, -8(x2)	# 122
	fle		f2, f1, fle.34020	# 122
	flw		f3, 12(x9)	# 1204
	fmul	f1, f1, f3	# 1204
	fsw		f1, 0(x24)	# 1204
	addi	x7, x0, 1	# 1205
	jal		x0, beq_cont.34009	# 122
fle.34020:
	addi	x7, x0, 0	# 1206
	jal		x0, beq_cont.34009	# 1238
beq.34010:
	flw		f4, 0(x7)	# 1121
	fsub	f4, f4, f1	# 1121
	flw		f5, 4(x7)	# 1121
	fmul	f4, f4, f5	# 1121
	lw		x9, -12(x2)	# 1123
	flw		f6, 4(x9)	# 1123
	fmul	f7, f4, f6	# 1123
	fadd	f7, f7, f2	# 1123
	flw		f8, -8(x2)	# 124
	fle		f7, f8, fle.34022	# 124
	jal		x0, fle_cont.34021	# 124
fle.34022:
	fsub	f7, f0, f7	# 124
fle_cont.34021:
	lw		x10, 16(x8)	# 458
	flw		f9, 4(x10)	# 463
	fle		f9, f7, fle.34024	# 125
	flw		f7, 8(x9)	# 1124
	fmul	f7, f4, f7	# 1124
	fadd	f7, f7, f3	# 1124
	fle		f7, f8, fle.34026	# 124
	jal		x0, fle_cont.34025	# 124
fle.34026:
	fsub	f7, f0, f7	# 124
fle_cont.34025:
	flw		f10, 8(x10)	# 473
	fle		f10, f7, fle.34028	# 125
	feq		f5, f8, feq.34030	# 120
	addi	x12, x0, 1	# 1125
	jal		x0, fle_cont.34023	# 120
feq.34030:
	addi	x12, x0, 0	# 1125
	jal		x0, fle_cont.34023	# 125
fle.34028:
	addi	x12, x0, 0	# 1126
	jal		x0, fle_cont.34023	# 125
fle.34024:
	addi	x12, x0, 0	# 1127
fle_cont.34023:
	lw		x13, -4(x2)	# 1122
	beq		x12, x13, beq.34032	# 1122
	fsw		f4, 0(x24)	# 1129
	addi	x7, x0, 1	# 1129
	jal		x0, beq_cont.34009	# 1122
beq.34032:
	flw		f4, 8(x7)	# 1130
	fsub	f4, f4, f2	# 1130
	flw		f5, 12(x7)	# 1130
	fmul	f4, f4, f5	# 1130
	flw		f7, 0(x9)	# 1132
	fmul	f10, f4, f7	# 1132
	fadd	f10, f10, f1	# 1132
	fle		f10, f8, fle.34034	# 124
	jal		x0, fle_cont.34033	# 124
fle.34034:
	fsub	f10, f0, f10	# 124
fle_cont.34033:
	flw		f11, 0(x10)	# 453
	fle		f11, f10, fle.34036	# 125
	flw		f10, 8(x9)	# 1133
	fmul	f10, f4, f10	# 1133
	fadd	f10, f10, f3	# 1133
	fle		f10, f8, fle.34038	# 124
	jal		x0, fle_cont.34037	# 124
fle.34038:
	fsub	f10, f0, f10	# 124
fle_cont.34037:
	flw		f12, 8(x10)	# 473
	fle		f12, f10, fle.34040	# 125
	feq		f5, f8, feq.34042	# 120
	addi	x10, x0, 1	# 1134
	jal		x0, fle_cont.34035	# 120
feq.34042:
	addi	x10, x0, 0	# 1134
	jal		x0, fle_cont.34035	# 125
fle.34040:
	addi	x10, x0, 0	# 1135
	jal		x0, fle_cont.34035	# 125
fle.34036:
	addi	x10, x0, 0	# 1136
fle_cont.34035:
	beq		x10, x13, beq.34044	# 1131
	fsw		f4, 0(x24)	# 1138
	addi	x7, x0, 2	# 1138
	jal		x0, beq_cont.34009	# 1131
beq.34044:
	flw		f4, 16(x7)	# 1139
	fsub	f3, f4, f3	# 1139
	flw		f4, 20(x7)	# 1139
	fmul	f3, f3, f4	# 1139
	fmul	f5, f3, f7	# 1141
	fadd	f1, f5, f1	# 1141
	fle		f1, f8, fle.34046	# 124
	jal		x0, fle_cont.34045	# 124
fle.34046:
	fsub	f1, f0, f1	# 124
fle_cont.34045:
	fle		f11, f1, fle.34048	# 125
	fmul	f1, f3, f6	# 1142
	fadd	f1, f1, f2	# 1142
	fle		f1, f8, fle.34050	# 124
	jal		x0, fle_cont.34049	# 124
fle.34050:
	fsub	f1, f0, f1	# 124
fle_cont.34049:
	fle		f9, f1, fle.34052	# 125
	feq		f4, f8, feq.34054	# 120
	addi	x7, x0, 1	# 1143
	jal		x0, fle_cont.34047	# 120
feq.34054:
	addi	x7, x0, 0	# 1143
	jal		x0, fle_cont.34047	# 125
fle.34052:
	addi	x7, x0, 0	# 1144
	jal		x0, fle_cont.34047	# 125
fle.34048:
	addi	x7, x0, 0	# 1145
fle_cont.34047:
	beq		x7, x13, beq.34056	# 1140
	fsw		f3, 0(x24)	# 1147
	addi	x7, x0, 3	# 1147
	jal		x0, beq_cont.34009	# 1140
beq.34056:
	addi	x7, x0, 0	# 1149
beq_cont.34009:
	lw		x9, -4(x2)	# 1620
	beq		x7, x9, beq.34057	# 1620
	flw		f1, 0(x24)	# 1624
	flw		f2, -8(x2)	# 125
	sw		x4, -52(x2)	# 125
	fle		f1, f2, fle_cont.34058	# 125
	addi	x8, x0, 40548	# 1627
	flw		f2, 0(x8)	# 1627
	fle		f2, f1, fle_cont.34058	# 125
	fadd	f1, f1, f18	# 1629
	lw		x10, -12(x2)	# 1630
	flw		f2, 0(x10)	# 1630
	fmul	f2, f2, f1	# 1630
	addi	x11, x0, 40648	# 1630
	flw		f3, 0(x11)	# 1630
	fadd	f2, f2, f3	# 1630
	flw		f3, 4(x10)	# 1631
	fmul	f3, f3, f1	# 1631
	addi	x11, x0, 40652	# 1631
	flw		f4, 0(x11)	# 1631
	fadd	f3, f3, f4	# 1631
	flw		f4, 8(x10)	# 1632
	fmul	f4, f4, f1	# 1632
	addi	x10, x0, 40656	# 1632
	flw		f5, 0(x10)	# 1632
	fadd	f4, f4, f5	# 1632
	sw		x7, -56(x2)	# 1633
	sw		x5, -60(x2)	# 1633
	fsw		f4, -64(x2)	# 1633
	fsw		f3, -68(x2)	# 1633
	fsw		f2, -72(x2)	# 1633
	sw		x8, -76(x2)	# 1633
	fsw		f1, -80(x2)	# 1633
	addi	x5, x6, 0	# 1633
	addi	x4, x9, 0	# 1633
	fadd	f1, f0, f2	# 1633
	fadd	f2, f0, f3	# 1633
	fadd	f3, f0, f4	# 1633
	sw		x1, -84(x2)	# 1633
	addi	x2, x2, -88	# 1633
	jal		x1, check_all_inside.2922.18020	# 1633
	addi	x2, x2, 88	# 1633
	lw		x1, -84(x2)	# 1633
	lw		x5, -4(x2)	# 1633
	beq		x4, x5, fle_cont.34058	# 1633
	flw		f1, -80(x2)	# 1635
	lw		x4, -76(x2)	# 1635
	fsw		f1, 0(x4)	# 1635
	flw		f1, -72(x2)	# 297
	fsw		f1, 0(x25)	# 297
	flw		f1, -68(x2)	# 298
	fsw		f1, 0(x27)	# 298
	flw		f1, -64(x2)	# 299
	fsw		f1, 0(x26)	# 299
	addi	x4, x0, 40564	# 1637
	lw		x5, -60(x2)	# 1637
	sw		x5, 0(x4)	# 1637
	addi	x4, x0, 40544	# 1638
	lw		x5, -56(x2)	# 1638
	sw		x5, 0(x4)	# 1638
fle_cont.34058:
	lw		x4, -52(x2)	# 1644
	addi	x4, x4, 1	# 1644
	lw		x5, -20(x2)	# 1644
	lw		x6, 0(x2)	# 1644
	jal		x0, solve_each_element_fast.2951.18047	# 1644
beq.34057:
	lw		x5, 24(x8)	# 430
	beq		x5, x9, beq.34064	# 1648
	addi	x4, x4, 1	# 1649
	lw		x5, 0(x2)	# 1649
	addi	x31, x6, 0	# 1649
	addi	x6, x5, 0	# 1649
	addi	x5, x31, 0	# 1649
	jal		x0, solve_each_element_fast.2951.18047	# 1649
beq.34064:
	jalr	x0, x1, 0	# 1650
beq.34008:
	jalr	x0, x1, 0	# 1617
beq.34001:
	lw		x8, 24(x11)	# 430
	beq		x8, x0, beq.34067	# 1648
	addi	x4, x4, 1	# 1649
	mul		x8, x30, x4	# 1616
	add		x8, x5, x8	# 1616
	lw		x8, 0(x8)	# 1616
	beq		x8, x19, beq.34068	# 1617
	mul		x9, x30, x8	# 1230
	addi	x10, x9, 40048	# 1230
	lw		x10, 0(x10)	# 1230
	lw		x11, 40(x10)	# 605
	flw		f1, 0(x11)	# 1232
	flw		f2, 4(x11)	# 1233
	flw		f3, 8(x11)	# 1234
	add		x9, x16, x9	# 1236
	lw		x9, 0(x9)	# 1236
	lw		x12, 4(x10)	# 410
	beq		x12, x20, beq.34070	# 1238
	beq		x12, x21, beq.34072	# 1240
	flw		f4, 0(x9)	# 1212
	feq		f4, f0, feq.34074	# 120
	flw		f6, 4(x9)	# 1216
	fmul	f1, f6, f1	# 1216
	flw		f6, 8(x9)	# 1216
	fmul	f2, f6, f2	# 1216
	fadd	f1, f1, f2	# 1216
	flw		f2, 12(x9)	# 1216
	fmul	f2, f2, f3	# 1216
	fadd	f1, f1, f2	# 1216
	flw		f2, 12(x11)	# 1217
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1218
	fsub	f2, f3, f2	# 1218
	fle		f2, f0, fle.34076	# 121
	lw		x11, 24(x10)	# 430
	beq		x11, x0, beq.34078	# 1220
	fsqrt	f2, f2	# 1221
	fadd	f1, f1, f2	# 1221
	flw		f2, 16(x9)	# 1221
	fmul	f1, f1, f2	# 1221
	fsw		f1, 0(x24)	# 1221
	jal		x0, beq_cont.34077	# 1220
beq.34078:
	fsqrt	f2, f2	# 1223
	fsub	f1, f1, f2	# 1223
	flw		f2, 16(x9)	# 1223
	fmul	f1, f1, f2	# 1223
	fsw		f1, 0(x24)	# 1223
beq_cont.34077:
	addi	x9, x0, 1	# 1224
	jal		x0, beq_cont.34069	# 121
fle.34076:
	addi	x9, x0, 0	# 1225
	jal		x0, beq_cont.34069	# 120
feq.34074:
	addi	x9, x0, 0	# 1214
	jal		x0, beq_cont.34069	# 1240
beq.34072:
	flw		f1, 0(x9)	# 1203
	fle		f0, f1, fle.34080	# 122
	flw		f2, 12(x11)	# 1204
	fmul	f1, f1, f2	# 1204
	fsw		f1, 0(x24)	# 1204
	addi	x9, x0, 1	# 1205
	jal		x0, beq_cont.34069	# 122
fle.34080:
	addi	x9, x0, 0	# 1206
	jal		x0, beq_cont.34069	# 1238
beq.34070:
	flw		f4, 0(x9)	# 1121
	fsub	f4, f4, f1	# 1121
	flw		f5, 4(x9)	# 1121
	fmul	f4, f4, f5	# 1121
	flw		f6, 4(x7)	# 1123
	fmul	f7, f4, f6	# 1123
	fadd	f7, f7, f2	# 1123
	fle		f7, f0, fle.34082	# 124
	jal		x0, fle_cont.34081	# 124
fle.34082:
	fsub	f7, f0, f7	# 124
fle_cont.34081:
	lw		x11, 16(x10)	# 458
	flw		f9, 4(x11)	# 463
	fle		f9, f7, fle.34084	# 125
	flw		f7, 8(x7)	# 1124
	fmul	f7, f4, f7	# 1124
	fadd	f7, f7, f3	# 1124
	fle		f7, f0, fle.34086	# 124
	jal		x0, fle_cont.34085	# 124
fle.34086:
	fsub	f7, f0, f7	# 124
fle_cont.34085:
	flw		f10, 8(x11)	# 473
	fle		f10, f7, fle.34088	# 125
	feq		f5, f0, feq.34090	# 120
	addi	x12, x0, 1	# 1125
	jal		x0, fle_cont.34083	# 120
feq.34090:
	addi	x12, x0, 0	# 1125
	jal		x0, fle_cont.34083	# 125
fle.34088:
	addi	x12, x0, 0	# 1126
	jal		x0, fle_cont.34083	# 125
fle.34084:
	addi	x12, x0, 0	# 1127
fle_cont.34083:
	beq		x12, x0, beq.34092	# 1122
	fsw		f4, 0(x24)	# 1129
	addi	x9, x0, 1	# 1129
	jal		x0, beq_cont.34069	# 1122
beq.34092:
	flw		f4, 8(x9)	# 1130
	fsub	f4, f4, f2	# 1130
	flw		f5, 12(x9)	# 1130
	fmul	f4, f4, f5	# 1130
	flw		f7, 0(x7)	# 1132
	fmul	f10, f4, f7	# 1132
	fadd	f10, f10, f1	# 1132
	fle		f10, f0, fle.34094	# 124
	jal		x0, fle_cont.34093	# 124
fle.34094:
	fsub	f10, f0, f10	# 124
fle_cont.34093:
	flw		f11, 0(x11)	# 453
	fle		f11, f10, fle.34096	# 125
	flw		f10, 8(x7)	# 1133
	fmul	f10, f4, f10	# 1133
	fadd	f10, f10, f3	# 1133
	fle		f10, f0, fle.34098	# 124
	jal		x0, fle_cont.34097	# 124
fle.34098:
	fsub	f10, f0, f10	# 124
fle_cont.34097:
	flw		f12, 8(x11)	# 473
	fle		f12, f10, fle.34100	# 125
	feq		f5, f0, feq.34102	# 120
	addi	x11, x0, 1	# 1134
	jal		x0, fle_cont.34095	# 120
feq.34102:
	addi	x11, x0, 0	# 1134
	jal		x0, fle_cont.34095	# 125
fle.34100:
	addi	x11, x0, 0	# 1135
	jal		x0, fle_cont.34095	# 125
fle.34096:
	addi	x11, x0, 0	# 1136
fle_cont.34095:
	beq		x11, x0, beq.34104	# 1131
	fsw		f4, 0(x24)	# 1138
	addi	x9, x0, 2	# 1138
	jal		x0, beq_cont.34069	# 1131
beq.34104:
	flw		f4, 16(x9)	# 1139
	fsub	f3, f4, f3	# 1139
	flw		f4, 20(x9)	# 1139
	fmul	f3, f3, f4	# 1139
	fmul	f5, f3, f7	# 1141
	fadd	f1, f5, f1	# 1141
	fle		f1, f0, fle.34106	# 124
	jal		x0, fle_cont.34105	# 124
fle.34106:
	fsub	f1, f0, f1	# 124
fle_cont.34105:
	fle		f11, f1, fle.34108	# 125
	fmul	f1, f3, f6	# 1142
	fadd	f1, f1, f2	# 1142
	fle		f1, f0, fle.34110	# 124
	jal		x0, fle_cont.34109	# 124
fle.34110:
	fsub	f1, f0, f1	# 124
fle_cont.34109:
	fle		f9, f1, fle.34112	# 125
	feq		f4, f0, feq.34114	# 120
	addi	x9, x0, 1	# 1143
	jal		x0, fle_cont.34107	# 120
feq.34114:
	addi	x9, x0, 0	# 1143
	jal		x0, fle_cont.34107	# 125
fle.34112:
	addi	x9, x0, 0	# 1144
	jal		x0, fle_cont.34107	# 125
fle.34108:
	addi	x9, x0, 0	# 1145
fle_cont.34107:
	beq		x9, x0, beq.34116	# 1140
	fsw		f3, 0(x24)	# 1147
	addi	x9, x0, 3	# 1147
	jal		x0, beq_cont.34069	# 1140
beq.34116:
	addi	x9, x0, 0	# 1149
beq_cont.34069:
	beq		x9, x0, beq.34117	# 1620
	flw		f1, 0(x24)	# 1624
	sw		x6, 0(x2)	# 125
	sw		x5, -20(x2)	# 125
	sw		x4, -84(x2)	# 125
	fle		f1, f0, fle_cont.34118	# 125
	addi	x10, x0, 40548	# 1627
	flw		f2, 0(x10)	# 1627
	fle		f2, f1, fle_cont.34118	# 125
	fadd	f1, f1, f18	# 1629
	flw		f2, 0(x7)	# 1630
	fmul	f2, f2, f1	# 1630
	addi	x11, x0, 40648	# 1630
	flw		f3, 0(x11)	# 1630
	fadd	f2, f2, f3	# 1630
	flw		f3, 4(x7)	# 1631
	fmul	f3, f3, f1	# 1631
	addi	x11, x0, 40652	# 1631
	flw		f4, 0(x11)	# 1631
	fadd	f3, f3, f4	# 1631
	flw		f4, 8(x7)	# 1632
	fmul	f4, f4, f1	# 1632
	addi	x7, x0, 40656	# 1632
	flw		f5, 0(x7)	# 1632
	fadd	f4, f4, f5	# 1632
	sw		x9, -88(x2)	# 1633
	sw		x8, -92(x2)	# 1633
	fsw		f4, -96(x2)	# 1633
	fsw		f3, -100(x2)	# 1633
	fsw		f2, -104(x2)	# 1633
	sw		x10, -108(x2)	# 1633
	fsw		f1, -112(x2)	# 1633
	sw		x0, -4(x2)	# 1633
	addi	x4, x0, 0	# 1633
	fadd	f1, f0, f2	# 1633
	fadd	f2, f0, f3	# 1633
	fadd	f3, f0, f4	# 1633
	sw		x1, -116(x2)	# 1633
	addi	x2, x2, -120	# 1633
	jal		x1, check_all_inside.2922.18020	# 1633
	addi	x2, x2, 120	# 1633
	lw		x1, -116(x2)	# 1633
	lw		x5, -4(x2)	# 1633
	beq		x4, x5, fle_cont.34118	# 1633
	flw		f1, -112(x2)	# 1635
	lw		x4, -108(x2)	# 1635
	fsw		f1, 0(x4)	# 1635
	flw		f1, -104(x2)	# 297
	fsw		f1, 0(x25)	# 297
	flw		f1, -100(x2)	# 298
	fsw		f1, 0(x27)	# 298
	flw		f1, -96(x2)	# 299
	fsw		f1, 0(x26)	# 299
	addi	x4, x0, 40564	# 1637
	lw		x5, -92(x2)	# 1637
	sw		x5, 0(x4)	# 1637
	addi	x4, x0, 40544	# 1638
	lw		x5, -88(x2)	# 1638
	sw		x5, 0(x4)	# 1638
fle_cont.34118:
	lw		x4, -84(x2)	# 1644
	addi	x4, x4, 1	# 1644
	lw		x5, -20(x2)	# 1644
	lw		x6, 0(x2)	# 1644
	jal		x0, solve_each_element_fast.2951.18047	# 1644
beq.34117:
	lw		x7, 24(x10)	# 430
	beq		x7, x0, beq.34124	# 1648
	addi	x4, x4, 1	# 1649
	jal		x0, solve_each_element_fast.2951.18047	# 1649
beq.34124:
	jalr	x0, x1, 0	# 1650
beq.34068:
	jalr	x0, x1, 0	# 1617
beq.34067:
	jalr	x0, x1, 0	# 1650
beq.33952:
	jalr	x0, x1, 0	# 1617
solve_one_or_network_fast.2955.18051:
	mul		x7, x30, x4	# 1656
	add		x7, x5, x7	# 1656
	lw		x7, 0(x7)	# 1656
	beq		x7, x19, beq.34129	# 1657
	mul		x7, x30, x7	# 1658
	addi	x7, x7, 40332	# 1658
	lw		x7, 0(x7)	# 1658
	lw		x9, 0(x6)	# 696
	add		x10, x0, x0	# 6
	lw		x11, 0(x7)	# 1616
	sw		x6, 0(x2)	# 1617
	sw		x0, -4(x2)	# 1617
	sw		x19, -8(x2)	# 1617
	sw		x5, -12(x2)	# 1617
	sw		x4, -16(x2)	# 1617
	beq		x11, x19, beq_cont.34130	# 1617
	mul		x12, x30, x11	# 1230
	addi	x13, x12, 40048	# 1230
	lw		x13, 0(x13)	# 1230
	lw		x14, 40(x13)	# 605
	flw		f1, 0(x14)	# 1232
	add		x15, x0, x20	# 6
	flw		f2, 4(x14)	# 1233
	flw		f3, 8(x14)	# 1234
	lw		x17, 4(x6)	# 702
	add		x12, x17, x12	# 1236
	lw		x12, 0(x12)	# 1236
	lw		x17, 4(x13)	# 410
	beq		x17, x20, beq.34133	# 1238
	beq		x17, x21, beq.34135	# 1240
	flw		f4, 0(x12)	# 1212
	feq		f4, f0, feq.34137	# 120
	flw		f6, 4(x12)	# 1216
	fmul	f1, f6, f1	# 1216
	flw		f6, 8(x12)	# 1216
	fmul	f2, f6, f2	# 1216
	fadd	f1, f1, f2	# 1216
	flw		f2, 12(x12)	# 1216
	fmul	f2, f2, f3	# 1216
	fadd	f1, f1, f2	# 1216
	flw		f2, 12(x14)	# 1217
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1218
	fsub	f2, f3, f2	# 1218
	fle		f2, f0, fle.34139	# 121
	lw		x14, 24(x13)	# 430
	beq		x14, x0, beq.34141	# 1220
	fsqrt	f2, f2	# 1221
	fadd	f1, f1, f2	# 1221
	flw		f2, 16(x12)	# 1221
	fmul	f1, f1, f2	# 1221
	fsw		f1, 0(x24)	# 1221
	jal		x0, beq_cont.34140	# 1220
beq.34141:
	fsqrt	f2, f2	# 1223
	fsub	f1, f1, f2	# 1223
	flw		f2, 16(x12)	# 1223
	fmul	f1, f1, f2	# 1223
	fsw		f1, 0(x24)	# 1223
beq_cont.34140:
	addi	x12, x0, 1	# 1224
	jal		x0, beq_cont.34132	# 121
fle.34139:
	addi	x12, x0, 0	# 1225
	jal		x0, beq_cont.34132	# 120
feq.34137:
	addi	x12, x0, 0	# 1214
	jal		x0, beq_cont.34132	# 1240
beq.34135:
	flw		f1, 0(x12)	# 1203
	fle		f0, f1, fle.34143	# 122
	flw		f2, 12(x14)	# 1204
	fmul	f1, f1, f2	# 1204
	fsw		f1, 0(x24)	# 1204
	addi	x12, x0, 1	# 1205
	jal		x0, beq_cont.34132	# 122
fle.34143:
	addi	x12, x0, 0	# 1206
	jal		x0, beq_cont.34132	# 1238
beq.34133:
	flw		f4, 0(x12)	# 1121
	fsub	f4, f4, f1	# 1121
	flw		f5, 4(x12)	# 1121
	fmul	f4, f4, f5	# 1121
	flw		f6, 4(x9)	# 1123
	fmul	f7, f4, f6	# 1123
	fadd	f7, f7, f2	# 1123
	fle		f7, f0, fle.34145	# 124
	jal		x0, fle_cont.34144	# 124
fle.34145:
	fsub	f7, f0, f7	# 124
fle_cont.34144:
	lw		x14, 16(x13)	# 458
	flw		f9, 4(x14)	# 463
	fle		f9, f7, fle.34147	# 125
	flw		f7, 8(x9)	# 1124
	fmul	f7, f4, f7	# 1124
	fadd	f7, f7, f3	# 1124
	fle		f7, f0, fle.34149	# 124
	jal		x0, fle_cont.34148	# 124
fle.34149:
	fsub	f7, f0, f7	# 124
fle_cont.34148:
	flw		f10, 8(x14)	# 473
	fle		f10, f7, fle.34151	# 125
	feq		f5, f0, feq.34153	# 120
	addi	x16, x0, 1	# 1125
	jal		x0, fle_cont.34146	# 120
feq.34153:
	addi	x16, x0, 0	# 1125
	jal		x0, fle_cont.34146	# 125
fle.34151:
	addi	x16, x0, 0	# 1126
	jal		x0, fle_cont.34146	# 125
fle.34147:
	addi	x16, x0, 0	# 1127
fle_cont.34146:
	beq		x16, x0, beq.34155	# 1122
	fsw		f4, 0(x24)	# 1129
	addi	x12, x0, 1	# 1129
	jal		x0, beq_cont.34132	# 1122
beq.34155:
	flw		f4, 8(x12)	# 1130
	fsub	f4, f4, f2	# 1130
	flw		f5, 12(x12)	# 1130
	fmul	f4, f4, f5	# 1130
	flw		f7, 0(x9)	# 1132
	fmul	f10, f4, f7	# 1132
	fadd	f10, f10, f1	# 1132
	fle		f10, f0, fle.34157	# 124
	jal		x0, fle_cont.34156	# 124
fle.34157:
	fsub	f10, f0, f10	# 124
fle_cont.34156:
	flw		f11, 0(x14)	# 453
	fle		f11, f10, fle.34159	# 125
	flw		f10, 8(x9)	# 1133
	fmul	f10, f4, f10	# 1133
	fadd	f10, f10, f3	# 1133
	fle		f10, f0, fle.34161	# 124
	jal		x0, fle_cont.34160	# 124
fle.34161:
	fsub	f10, f0, f10	# 124
fle_cont.34160:
	flw		f12, 8(x14)	# 473
	fle		f12, f10, fle.34163	# 125
	feq		f5, f0, feq.34165	# 120
	addi	x14, x0, 1	# 1134
	jal		x0, fle_cont.34158	# 120
feq.34165:
	addi	x14, x0, 0	# 1134
	jal		x0, fle_cont.34158	# 125
fle.34163:
	addi	x14, x0, 0	# 1135
	jal		x0, fle_cont.34158	# 125
fle.34159:
	addi	x14, x0, 0	# 1136
fle_cont.34158:
	beq		x14, x0, beq.34167	# 1131
	fsw		f4, 0(x24)	# 1138
	addi	x12, x0, 2	# 1138
	jal		x0, beq_cont.34132	# 1131
beq.34167:
	flw		f4, 16(x12)	# 1139
	fsub	f3, f4, f3	# 1139
	flw		f4, 20(x12)	# 1139
	fmul	f3, f3, f4	# 1139
	fmul	f5, f3, f7	# 1141
	fadd	f1, f5, f1	# 1141
	fle		f1, f0, fle.34169	# 124
	jal		x0, fle_cont.34168	# 124
fle.34169:
	fsub	f1, f0, f1	# 124
fle_cont.34168:
	fle		f11, f1, fle.34171	# 125
	fmul	f1, f3, f6	# 1142
	fadd	f1, f1, f2	# 1142
	fle		f1, f0, fle.34173	# 124
	jal		x0, fle_cont.34172	# 124
fle.34173:
	fsub	f1, f0, f1	# 124
fle_cont.34172:
	fle		f9, f1, fle.34175	# 125
	feq		f4, f0, feq.34177	# 120
	addi	x12, x0, 1	# 1143
	jal		x0, fle_cont.34170	# 120
feq.34177:
	addi	x12, x0, 0	# 1143
	jal		x0, fle_cont.34170	# 125
fle.34175:
	addi	x12, x0, 0	# 1144
	jal		x0, fle_cont.34170	# 125
fle.34171:
	addi	x12, x0, 0	# 1145
fle_cont.34170:
	beq		x12, x0, beq.34179	# 1140
	fsw		f3, 0(x24)	# 1147
	addi	x12, x0, 3	# 1147
	jal		x0, beq_cont.34132	# 1140
beq.34179:
	addi	x12, x0, 0	# 1149
beq_cont.34132:
	beq		x12, x0, beq.34181	# 1620
	flw		f1, 0(x24)	# 1624
	sw		x7, -20(x2)	# 125
	fle		f1, f0, fle_cont.34182	# 125
	addi	x13, x0, 40548	# 1627
	flw		f2, 0(x13)	# 1627
	fle		f2, f1, fle_cont.34182	# 125
	fadd	f1, f1, f18	# 1629
	flw		f2, 0(x9)	# 1630
	fmul	f2, f2, f1	# 1630
	addi	x14, x0, 40648	# 1630
	flw		f3, 0(x14)	# 1630
	fadd	f2, f2, f3	# 1630
	flw		f3, 4(x9)	# 1631
	fmul	f3, f3, f1	# 1631
	addi	x14, x0, 40652	# 1631
	flw		f4, 0(x14)	# 1631
	fadd	f3, f3, f4	# 1631
	flw		f4, 8(x9)	# 1632
	fmul	f4, f4, f1	# 1632
	addi	x9, x0, 40656	# 1632
	flw		f5, 0(x9)	# 1632
	fadd	f4, f4, f5	# 1632
	fsw		f4, -24(x2)	# 1633
	fsw		f3, -28(x2)	# 1633
	fsw		f2, -32(x2)	# 1633
	fsw		f1, -36(x2)	# 1633
	addi	x5, x7, 0	# 1633
	addi	x4, x0, 0	# 1633
	fadd	f1, f0, f2	# 1633
	fadd	f2, f0, f3	# 1633
	fadd	f3, f0, f4	# 1633
	sw		x1, -40(x2)	# 1633
	addi	x2, x2, -44	# 1633
	jal		x1, check_all_inside.2922.18020	# 1633
	addi	x2, x2, 44	# 1633
	lw		x1, -40(x2)	# 1633
	lw		x5, -4(x2)	# 1633
	beq		x4, x5, fle_cont.34182	# 1633
	flw		f1, -36(x2)	# 1635
	fsw		f1, 0(x13)	# 1635
	flw		f1, -32(x2)	# 297
	fsw		f1, 0(x25)	# 297
	flw		f1, -28(x2)	# 298
	fsw		f1, 0(x27)	# 298
	flw		f1, -24(x2)	# 299
	fsw		f1, 0(x26)	# 299
	addi	x4, x0, 40564	# 1637
	sw		x11, 0(x4)	# 1637
	addi	x4, x0, 40544	# 1638
	sw		x12, 0(x4)	# 1638
fle_cont.34182:
	lw		x5, -20(x2)	# 1644
	lw		x6, 0(x2)	# 1644
	addi	x4, x20, 0	# 1644
	sw		x1, -40(x2)	# 1644
	addi	x2, x2, -44	# 1644
	jal		x1, solve_each_element_fast.2951.18047	# 1644
	addi	x2, x2, 44	# 1644
	lw		x1, -40(x2)	# 1644
	jal		x0, beq_cont.34130	# 1620
beq.34181:
	lw		x9, 24(x13)	# 430
	beq		x9, x0, beq_cont.34130	# 1648
	addi	x5, x7, 0	# 1649
	addi	x4, x20, 0	# 1649
	sw		x1, -40(x2)	# 1649
	addi	x2, x2, -44	# 1649
	jal		x1, solve_each_element_fast.2951.18047	# 1649
	addi	x2, x2, 44	# 1649
	lw		x1, -40(x2)	# 1649
beq_cont.34130:
	lw		x4, -16(x2)	# 1660
	addi	x4, x4, 1	# 1660
	mul		x5, x30, x4	# 1656
	lw		x6, -12(x2)	# 1656
	add		x5, x6, x5	# 1656
	lw		x5, 0(x5)	# 1656
	lw		x7, -8(x2)	# 1657
	beq		x5, x7, beq.34190	# 1657
	mul		x5, x30, x5	# 1658
	addi	x5, x5, 40332	# 1658
	lw		x5, 0(x5)	# 1658
	lw		x7, -4(x2)	# 1659
	lw		x8, 0(x2)	# 1659
	sw		x4, -40(x2)	# 1659
	addi	x6, x8, 0	# 1659
	addi	x4, x7, 0	# 1659
	sw		x1, -44(x2)	# 1659
	addi	x2, x2, -48	# 1659
	jal		x1, solve_each_element_fast.2951.18047	# 1659
	addi	x2, x2, 48	# 1659
	lw		x1, -44(x2)	# 1659
	lw		x4, -40(x2)	# 1660
	addi	x4, x4, 1	# 1660
	lw		x5, -12(x2)	# 1660
	lw		x6, 0(x2)	# 1660
	jal		x0, solve_one_or_network_fast.2955.18051	# 1660
beq.34190:
	jalr	x0, x1, 0	# 1661
beq.34129:
	jalr	x0, x1, 0	# 1661
trace_or_matrix_fast.2959.18055:
	mul		x7, x30, x4	# 1666
	add		x7, x5, x7	# 1666
	lw		x7, 0(x7)	# 1666
	add		x8, x0, x0	# 6
	lw		x9, 0(x7)	# 1667
	beq		x9, x19, beq.34193	# 1668
	sw		x6, 0(x2)	# 1671
	sw		x5, -4(x2)	# 1671
	sw		x4, -8(x2)	# 1671
	beq		x9, x23, beq.34195	# 1671
	mul		x9, x30, x9	# 1230
	addi	x11, x9, 40048	# 1230
	lw		x11, 0(x11)	# 1230
	lw		x12, 40(x11)	# 605
	flw		f1, 0(x12)	# 1232
	flw		f2, 4(x12)	# 1233
	add		x14, x0, x21	# 65
	flw		f3, 8(x12)	# 1234
	lw		x15, 4(x6)	# 702
	add		x9, x15, x9	# 1236
	lw		x9, 0(x9)	# 1236
	lw		x15, 4(x11)	# 410
	beq		x15, x20, beq.34197	# 1238
	beq		x15, x21, beq.34199	# 1240
	flw		f4, 0(x9)	# 1212
	feq		f4, f0, feq.34201	# 120
	flw		f6, 4(x9)	# 1216
	fmul	f1, f6, f1	# 1216
	flw		f6, 8(x9)	# 1216
	fmul	f2, f6, f2	# 1216
	fadd	f1, f1, f2	# 1216
	flw		f2, 12(x9)	# 1216
	fmul	f2, f2, f3	# 1216
	fadd	f1, f1, f2	# 1216
	flw		f2, 12(x12)	# 1217
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1218
	fsub	f2, f3, f2	# 1218
	fle		f2, f0, fle.34203	# 121
	lw		x11, 24(x11)	# 430
	beq		x11, x0, beq.34205	# 1220
	fsqrt	f2, f2	# 1221
	fadd	f1, f1, f2	# 1221
	flw		f2, 16(x9)	# 1221
	fmul	f1, f1, f2	# 1221
	fsw		f1, 0(x24)	# 1221
	jal		x0, beq_cont.34204	# 1220
beq.34205:
	fsqrt	f2, f2	# 1223
	fsub	f1, f1, f2	# 1223
	flw		f2, 16(x9)	# 1223
	fmul	f1, f1, f2	# 1223
	fsw		f1, 0(x24)	# 1223
beq_cont.34204:
	addi	x9, x0, 1	# 1224
	jal		x0, beq_cont.34196	# 121
fle.34203:
	addi	x9, x0, 0	# 1225
	jal		x0, beq_cont.34196	# 120
feq.34201:
	addi	x9, x0, 0	# 1214
	jal		x0, beq_cont.34196	# 1240
beq.34199:
	flw		f1, 0(x9)	# 1203
	fle		f0, f1, fle.34207	# 122
	flw		f2, 12(x12)	# 1204
	fmul	f1, f1, f2	# 1204
	fsw		f1, 0(x24)	# 1204
	addi	x9, x0, 1	# 1205
	jal		x0, beq_cont.34196	# 122
fle.34207:
	addi	x9, x0, 0	# 1206
	jal		x0, beq_cont.34196	# 1238
beq.34197:
	lw		x12, 0(x6)	# 696
	flw		f4, 0(x9)	# 1121
	fsub	f4, f4, f1	# 1121
	flw		f5, 4(x9)	# 1121
	fmul	f4, f4, f5	# 1121
	flw		f6, 4(x12)	# 1123
	fmul	f7, f4, f6	# 1123
	fadd	f7, f7, f2	# 1123
	fle		f7, f0, fle.34209	# 124
	jal		x0, fle_cont.34208	# 124
fle.34209:
	fsub	f7, f0, f7	# 124
fle_cont.34208:
	lw		x11, 16(x11)	# 458
	flw		f9, 4(x11)	# 463
	fle		f9, f7, fle.34211	# 125
	flw		f7, 8(x12)	# 1124
	fmul	f7, f4, f7	# 1124
	fadd	f7, f7, f3	# 1124
	fle		f7, f0, fle.34213	# 124
	jal		x0, fle_cont.34212	# 124
fle.34213:
	fsub	f7, f0, f7	# 124
fle_cont.34212:
	flw		f10, 8(x11)	# 473
	fle		f10, f7, fle.34215	# 125
	feq		f5, f0, feq.34217	# 120
	addi	x13, x0, 1	# 1125
	jal		x0, fle_cont.34210	# 120
feq.34217:
	addi	x13, x0, 0	# 1125
	jal		x0, fle_cont.34210	# 125
fle.34215:
	addi	x13, x0, 0	# 1126
	jal		x0, fle_cont.34210	# 125
fle.34211:
	addi	x13, x0, 0	# 1127
fle_cont.34210:
	beq		x13, x0, beq.34219	# 1122
	fsw		f4, 0(x24)	# 1129
	addi	x9, x0, 1	# 1129
	jal		x0, beq_cont.34196	# 1122
beq.34219:
	flw		f4, 8(x9)	# 1130
	fsub	f4, f4, f2	# 1130
	flw		f5, 12(x9)	# 1130
	fmul	f4, f4, f5	# 1130
	flw		f7, 0(x12)	# 1132
	fmul	f10, f4, f7	# 1132
	fadd	f10, f10, f1	# 1132
	fle		f10, f0, fle.34221	# 124
	jal		x0, fle_cont.34220	# 124
fle.34221:
	fsub	f10, f0, f10	# 124
fle_cont.34220:
	flw		f11, 0(x11)	# 453
	fle		f11, f10, fle.34223	# 125
	flw		f10, 8(x12)	# 1133
	fmul	f10, f4, f10	# 1133
	fadd	f10, f10, f3	# 1133
	fle		f10, f0, fle.34225	# 124
	jal		x0, fle_cont.34224	# 124
fle.34225:
	fsub	f10, f0, f10	# 124
fle_cont.34224:
	flw		f12, 8(x11)	# 473
	fle		f12, f10, fle.34227	# 125
	feq		f5, f0, feq.34229	# 120
	addi	x11, x0, 1	# 1134
	jal		x0, fle_cont.34222	# 120
feq.34229:
	addi	x11, x0, 0	# 1134
	jal		x0, fle_cont.34222	# 125
fle.34227:
	addi	x11, x0, 0	# 1135
	jal		x0, fle_cont.34222	# 125
fle.34223:
	addi	x11, x0, 0	# 1136
fle_cont.34222:
	beq		x11, x0, beq.34231	# 1131
	fsw		f4, 0(x24)	# 1138
	addi	x9, x0, 2	# 1138
	jal		x0, beq_cont.34196	# 1131
beq.34231:
	flw		f4, 16(x9)	# 1139
	fsub	f3, f4, f3	# 1139
	flw		f4, 20(x9)	# 1139
	fmul	f3, f3, f4	# 1139
	fmul	f5, f3, f7	# 1141
	fadd	f1, f5, f1	# 1141
	fle		f1, f0, fle.34233	# 124
	jal		x0, fle_cont.34232	# 124
fle.34233:
	fsub	f1, f0, f1	# 124
fle_cont.34232:
	fle		f11, f1, fle.34235	# 125
	fmul	f1, f3, f6	# 1142
	fadd	f1, f1, f2	# 1142
	fle		f1, f0, fle.34237	# 124
	jal		x0, fle_cont.34236	# 124
fle.34237:
	fsub	f1, f0, f1	# 124
fle_cont.34236:
	fle		f9, f1, fle.34239	# 125
	feq		f4, f0, feq.34241	# 120
	addi	x9, x0, 1	# 1143
	jal		x0, fle_cont.34234	# 120
feq.34241:
	addi	x9, x0, 0	# 1143
	jal		x0, fle_cont.34234	# 125
fle.34239:
	addi	x9, x0, 0	# 1144
	jal		x0, fle_cont.34234	# 125
fle.34235:
	addi	x9, x0, 0	# 1145
fle_cont.34234:
	beq		x9, x0, beq.34243	# 1140
	fsw		f3, 0(x24)	# 1147
	addi	x9, x0, 3	# 1147
	jal		x0, beq_cont.34196	# 1140
beq.34243:
	addi	x9, x0, 0	# 1149
beq_cont.34196:
	beq		x9, x0, beq_cont.34194	# 1677
	flw		f1, 0(x24)	# 1678
	addi	x9, x0, 40548	# 1679
	flw		f2, 0(x9)	# 1679
	fle		f2, f1, beq_cont.34194	# 125
	lw		x9, 4(x7)	# 1656
	beq		x9, x19, beq_cont.34194	# 1657
	mul		x9, x30, x9	# 1658
	addi	x9, x9, 40332	# 1658
	lw		x9, 0(x9)	# 1658
	sw		x7, -12(x2)	# 1659
	sw		x21, -16(x2)	# 1659
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
	jal		x0, beq_cont.34194	# 1657
beq.34195:
	lw		x9, 4(x7)	# 1656
	beq		x9, x19, beq_cont.34194	# 1657
	mul		x9, x30, x9	# 1658
	addi	x9, x9, 40332	# 1658
	lw		x9, 0(x9)	# 1658
	sw		x7, -12(x2)	# 1659
	addi	x5, x9, 0	# 1659
	addi	x4, x0, 0	# 1659
	sw		x1, -20(x2)	# 1659
	addi	x2, x2, -24	# 1659
	jal		x1, solve_each_element_fast.2951.18047	# 1659
	addi	x2, x2, 24	# 1659
	lw		x1, -20(x2)	# 1659
	add		x4, x0, x21	# 65
	lw		x5, -12(x2)	# 1660
	lw		x6, 0(x2)	# 1660
	sw		x1, -20(x2)	# 1660
	addi	x2, x2, -24	# 1660
	jal		x1, solve_one_or_network_fast.2955.18051	# 1660
	addi	x2, x2, 24	# 1660
	lw		x1, -20(x2)	# 1660
beq_cont.34194:
	lw		x4, -8(x2)	# 1684
	addi	x4, x4, 1	# 1684
	lw		x5, -4(x2)	# 1684
	lw		x6, 0(x2)	# 1684
	jal		x0, trace_or_matrix_fast.2959.18055	# 1684
beq.34193:
	jalr	x0, x1, 0	# 1669
trace_reflections.2981.18059:
	add		x6, x0, x0	# 6
	ble		x0, x4, ble.34253	# 1861
	jalr	x0, x1, 0	# 1881
ble.34253:
	mul		x7, x30, x4	# 1862
	addi	x7, x7, 41016	# 1862
	lw		x7, 0(x7)	# 1862
	lw		x8, 4(x7)	# 718
	addi	x9, x0, 40548	# 1691
	fsw		f21, 0(x9)	# 1691
	addi	x10, x0, 40536	# 1692
	lw		x10, 0(x10)	# 1692
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
	flw		f1, 0(x4)	# 1693
	fle		f1, f20, fle.34256	# 125
	fle		f22, f1, fle.34258	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.34255	# 125
fle.34258:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.34255	# 125
fle.34256:
	addi	x4, x0, 0	# 1697
fle_cont.34255:
	lw		x5, -28(x2)	# 1866
	beq		x4, x5, beq_cont.34259	# 1866
	addi	x4, x0, 40564	# 1867
	lw		x4, 0(x4)	# 1867
	mul		x4, x4, x30	# 1867
	addi	x6, x0, 40544	# 1867
	lw		x6, 0(x6)	# 1867
	add		x4, x4, x6	# 1867
	lw		x6, -24(x2)	# 712
	lw		x7, 0(x6)	# 712
	beq		x4, x7, beq.34262	# 1868
	jal		x0, beq_cont.34259	# 1868
beq.34262:
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
	beq		x4, x5, beq.34264	# 1870
	jal		x0, beq_cont.34259	# 1870
beq.34264:
	lw		x4, -16(x2)	# 696
	lw		x4, 0(x4)	# 696
	addi	x5, x0, 40568	# 349
	flw		f1, 0(x5)	# 349
	flw		f2, 0(x4)	# 349
	fmul	f1, f1, f2	# 349
	addi	x5, x0, 40572	# 349
	flw		f3, 0(x5)	# 349
	flw		f4, 4(x4)	# 349
	fmul	f3, f3, f4	# 349
	fadd	f1, f1, f3	# 349
	addi	x5, x0, 40576	# 349
	flw		f3, 0(x5)	# 349
	flw		f5, 8(x4)	# 349
	fmul	f3, f3, f5	# 349
	fadd	f1, f1, f3	# 349
	lw		x4, -24(x2)	# 1874
	flw		f3, 8(x4)	# 1874
	flw		f6, -12(x2)	# 1874
	fmul	f7, f3, f6	# 1874
	fmul	f1, f7, f1	# 1874
	lw		x5, -8(x2)	# 349
	flw		f7, 0(x5)	# 349
	fmul	f2, f7, f2	# 349
	flw		f7, 4(x5)	# 349
	fmul	f4, f7, f4	# 349
	fadd	f2, f2, f4	# 349
	flw		f4, 8(x5)	# 349
	fmul	f4, f4, f5	# 349
	fadd	f2, f2, f4	# 349
	fmul	f2, f3, f2	# 1875
	fle		f1, f0, fle_cont.34265	# 121
	addi	x4, x0, 40604	# 359
	flw		f4, 0(x4)	# 359
	addi	x6, x0, 40580	# 359
	flw		f5, 0(x6)	# 359
	fmul	f5, f1, f5	# 359
	fadd	f4, f4, f5	# 359
	fsw		f4, 0(x4)	# 359
	addi	x4, x0, 40608	# 360
	flw		f4, 0(x4)	# 360
	addi	x6, x0, 40584	# 360
	flw		f5, 0(x6)	# 360
	fmul	f5, f1, f5	# 360
	fadd	f4, f4, f5	# 360
	fsw		f4, 0(x4)	# 360
	addi	x4, x0, 40612	# 361
	flw		f4, 0(x4)	# 361
	addi	x6, x0, 40588	# 361
	flw		f5, 0(x6)	# 361
	fmul	f1, f1, f5	# 361
	fadd	f1, f4, f1	# 361
	fsw		f1, 0(x4)	# 361
fle_cont.34265:
	fle		f2, f0, beq_cont.34259	# 121
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -4(x2)	# 1851
	fmul	f1, f1, f2	# 1851
	addi	x4, x0, 40604	# 1852
	flw		f3, 0(x4)	# 1852
	fadd	f3, f3, f1	# 1852
	fsw		f3, 0(x4)	# 1852
	addi	x4, x0, 40608	# 1853
	flw		f3, 0(x4)	# 1853
	fadd	f3, f3, f1	# 1853
	fsw		f3, 0(x4)	# 1853
	addi	x4, x0, 40612	# 1854
	flw		f3, 0(x4)	# 1854
	fadd	f1, f3, f1	# 1854
	fsw		f1, 0(x4)	# 1854
beq_cont.34259:
	lw		x4, 0(x2)	# 1880
	addi	x4, x4, -1	# 1880
	lw		x5, -8(x2)	# 1880
	flw		f1, -12(x2)	# 1880
	flw		f2, -4(x2)	# 1880
	jal		x0, trace_reflections.2981.18059	# 1880
trace_ray.2986.18064:
	ble		x4, x30, ble.34269	# 1889
	jalr	x0, x1, 0	# 1970
ble.34269:
	lw		x8, 8(x6)	# 634
	add		x9, x0, x0	# 6
	addi	x10, x0, 40548	# 1600
	fsw		f21, 0(x10)	# 1600
	addi	x11, x0, 40536	# 1601
	lw		x11, 0(x11)	# 1601
	fsw		f2, 0(x2)	# 1601
	sw		x11, -4(x2)	# 1601
	sw		x6, -8(x2)	# 1601
	sw		x30, -12(x2)	# 1601
	fsw		f1, -16(x2)	# 1601
	sw		x5, -20(x2)	# 1601
	sw		x8, -24(x2)	# 1601
	sw		x4, -28(x2)	# 1601
	sw		x0, -32(x2)	# 1601
	sw		x10, -36(x2)	# 1601
	addi	x6, x5, 0	# 1601
	addi	x4, x0, 0	# 1601
	addi	x5, x11, 0	# 1601
	sw		x1, -40(x2)	# 1601
	addi	x2, x2, -44	# 1601
	jal		x1, trace_or_matrix.2945.18043	# 1601
	addi	x2, x2, 44	# 1601
	lw		x1, -40(x2)	# 1601
	lw		x4, -36(x2)	# 1602
	flw		f1, 0(x4)	# 1602
	fle		f1, f20, fle.34272	# 125
	fle		f22, f1, fle.34274	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.34271	# 125
fle.34274:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.34271	# 125
fle.34272:
	addi	x4, x0, 0	# 1606
fle_cont.34271:
	lw		x5, -32(x2)	# 1891
	beq		x4, x5, beq.34275	# 1891
	addi	x4, x0, 40564	# 1893
	lw		x4, 0(x4)	# 1893
	mul		x6, x30, x4	# 1894
	addi	x6, x6, 40048	# 1894
	lw		x6, 0(x6)	# 1894
	lw		x7, 8(x6)	# 420
	lw		x8, 28(x6)	# 518
	flw		f2, 0(x8)	# 523
	flw		f3, -16(x2)	# 1896
	fmul	f4, f2, f3	# 1896
	lw		x9, 4(x6)	# 410
	beq		x9, x20, beq.34277	# 1750
	beq		x9, x21, beq.34279	# 1752
	flw		f5, 0(x25)	# 1727
	lw		x9, 20(x6)	# 488
	flw		f6, 0(x9)	# 493
	fsub	f5, f5, f6	# 1727
	flw		f6, 0(x27)	# 1728
	flw		f7, 4(x9)	# 503
	fsub	f6, f6, f7	# 1728
	flw		f7, 0(x26)	# 1729
	flw		f8, 8(x9)	# 513
	fsub	f7, f7, f8	# 1729
	lw		x9, 16(x6)	# 448
	flw		f8, 0(x9)	# 453
	fmul	f8, f5, f8	# 1731
	flw		f9, 4(x9)	# 463
	fmul	f9, f6, f9	# 1732
	flw		f10, 8(x9)	# 473
	fmul	f10, f7, f10	# 1733
	lw		x9, 12(x6)	# 439
	beq		x9, x5, beq.34281	# 1735
	lw		x9, 36(x6)	# 588
	flw		f11, 8(x9)	# 593
	fmul	f12, f6, f11	# 1740
	flw		f13, 4(x9)	# 583
	fmul	f14, f7, f13	# 1740
	fadd	f12, f12, f14	# 1740
	lui		x11, %hi(l.27933)	# 126
	ori		x11, x11, %lo(l.27933)	# 126
	flw		f14, 0(x11)	# 126
	fmul	f12, f12, f14	# 126
	fadd	f8, f8, f12	# 1740
	addi	x11, x0, 40568	# 1740
	fsw		f8, 0(x11)	# 1740
	fmul	f8, f5, f11	# 1741
	flw		f11, 0(x9)	# 573
	fmul	f7, f7, f11	# 1741
	fadd	f7, f8, f7	# 1741
	fmul	f7, f7, f14	# 126
	fadd	f7, f9, f7	# 1741
	addi	x9, x0, 40572	# 1741
	fsw		f7, 0(x9)	# 1741
	fmul	f5, f5, f13	# 1742
	fmul	f6, f6, f11	# 1742
	fadd	f5, f5, f6	# 1742
	fmul	f5, f5, f14	# 126
	fadd	f5, f10, f5	# 1742
	addi	x9, x0, 40576	# 1742
	fsw		f5, 0(x9)	# 1742
	jal		x0, beq_cont.34280	# 1735
beq.34281:
	addi	x9, x0, 40568	# 1736
	fsw		f8, 0(x9)	# 1736
	addi	x9, x0, 40572	# 1737
	fsw		f9, 0(x9)	# 1737
	addi	x9, x0, 40576	# 1738
	fsw		f10, 0(x9)	# 1738
beq_cont.34280:
	lw		x9, 24(x6)	# 430
	addi	x11, x0, 40568	# 340
	flw		f5, 0(x11)	# 340
	fmul	f6, f5, f5	# 127
	addi	x12, x0, 40572	# 340
	flw		f7, 0(x12)	# 340
	fmul	f8, f7, f7	# 127
	fadd	f6, f6, f8	# 340
	addi	x13, x0, 40576	# 340
	flw		f8, 0(x13)	# 340
	fmul	f9, f8, f8	# 127
	fadd	f6, f6, f9	# 340
	fsqrt	f6, f6	# 340
	feq		f6, f0, feq.34283	# 120
	beq		x9, x5, beq.34285	# 341
	fdiv	f6, f25, f6	# 341
	jal		x0, feq_cont.34282	# 341
beq.34285:
	fdiv	f6, f30, f6	# 341
	jal		x0, feq_cont.34282	# 120
feq.34283:
	fadd	f6, f0, f30	# 341
feq_cont.34282:
	fmul	f5, f5, f6	# 342
	fsw		f5, 0(x11)	# 342
	fmul	f5, f7, f6	# 343
	fsw		f5, 0(x12)	# 343
	fmul	f5, f8, f6	# 344
	fsw		f5, 0(x13)	# 344
	jal		x0, beq_cont.34276	# 1752
beq.34279:
	lw		x9, 16(x6)	# 448
	flw		f5, 0(x9)	# 453
	fsub	f5, f0, f5	# 123
	addi	x11, x0, 40568	# 1720
	fsw		f5, 0(x11)	# 1720
	flw		f5, 4(x9)	# 463
	fsub	f5, f0, f5	# 123
	addi	x11, x0, 40572	# 1721
	fsw		f5, 0(x11)	# 1721
	flw		f5, 8(x9)	# 473
	fsub	f5, f0, f5	# 123
	addi	x9, x0, 40576	# 1722
	fsw		f5, 0(x9)	# 1722
	jal		x0, beq_cont.34276	# 1750
beq.34277:
	addi	x9, x0, 40544	# 1711
	lw		x9, 0(x9)	# 1711
	addi	x11, x0, 40568	# 51
	fsw		f0, 0(x11)	# 304
	addi	x11, x0, 40572	# 305
	fsw		f0, 0(x11)	# 305
	addi	x11, x0, 40576	# 306
	fsw		f0, 0(x11)	# 306
	addi	x9, x9, -1	# 1714
	mul		x9, x30, x9	# 1714
	lw		x11, -20(x2)	# 1714
	add		x12, x11, x9	# 1714
	flw		f6, 0(x12)	# 1714
	feq		f6, f0, feq.34287	# 120
	fle		f6, f0, fle.34289	# 121
	fadd	f5, f0, f30	# 270
	jal		x0, feq_cont.34286	# 121
fle.34289:
	fadd	f5, f0, f25	# 271
	jal		x0, feq_cont.34286	# 120
feq.34287:
	fadd	f5, f0, f0	# 269
feq_cont.34286:
	fsub	f5, f0, f5	# 123
	addi	x9, x9, 40568	# 1714
	fsw		f5, 0(x9)	# 1714
beq_cont.34276:
	add		x9, x0, x25	# 45
	flw		f5, 0(x25)	# 316
	addi	x11, x0, 40636	# 316
	fsw		f5, 0(x11)	# 316
	flw		f6, 0(x27)	# 317
	addi	x11, x0, 40640	# 317
	fsw		f6, 0(x11)	# 317
	flw		f7, 0(x26)	# 318
	addi	x12, x0, 40644	# 318
	fsw		f7, 0(x12)	# 318
	lw		x12, 0(x6)	# 400
	lw		x13, 32(x6)	# 538
	flw		f8, 0(x13)	# 543
	addi	x14, x0, 40580	# 1767
	fsw		f8, 0(x14)	# 1767
	flw		f8, 4(x13)	# 553
	addi	x15, x0, 40584	# 1768
	fsw		f8, 0(x15)	# 1768
	flw		f8, 8(x13)	# 563
	addi	x13, x0, 40588	# 1769
	fsw		f8, 0(x13)	# 1769
	fsw		f1, -40(x2)	# 1770
	sw		x7, -44(x2)	# 1770
	fsw		f4, -48(x2)	# 1770
	fsw		f2, -52(x2)	# 1770
	fsw		f5, -56(x2)	# 1770
	sw		x4, -60(x2)	# 1770
	beq		x12, x20, beq.34291	# 1770
	beq		x12, x21, beq.34293	# 1788
	beq		x12, x22, beq.34295	# 1795
	lw		x16, -12(x2)	# 1806
	beq		x12, x16, beq.34297	# 1806
	jal		x0, beq_cont.34290	# 1806
beq.34297:
	lw		x12, 20(x6)	# 488
	flw		f8, 0(x12)	# 493
	fsub	f8, f5, f8	# 1808
	lw		x6, 16(x6)	# 448
	flw		f9, 0(x6)	# 453
	fsqrt	f9, f9	# 1808
	fmul	f8, f8, f9	# 1808
	flw		f9, 8(x12)	# 513
	fsub	f9, f7, f9	# 1809
	flw		f10, 8(x6)	# 473
	fsqrt	f10, f10	# 1809
	fmul	f9, f9, f10	# 1809
	fmul	f10, f8, f8	# 127
	fmul	f11, f9, f9	# 127
	fadd	f10, f10, f11	# 1810
	fle		f8, f0, fle.34299	# 124
	fadd	f12, f0, f8	# 124
	jal		x0, fle_cont.34298	# 124
fle.34299:
	fsub	f12, f0, f8	# 124
fle_cont.34298:
	lui		x17, %hi(l.29612)	# 1812
	ori		x17, x17, %lo(l.29612)	# 1812
	flw		f13, 0(x17)	# 1812
	fle		f13, f12, fle.34301	# 125
	lui		x17, %hi(l.29614)	# 1813
	ori		x17, x17, %lo(l.29614)	# 1813
	flw		f1, 0(x17)	# 1813
	jal		x0, fle_cont.34300	# 125
fle.34301:
	fdiv	f8, f9, f8	# 1815
	fle		f8, f0, fle.34303	# 124
	jal		x0, fle_cont.34302	# 124
fle.34303:
	fsub	f8, f0, f8	# 124
fle_cont.34302:
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
fle_cont.34300:
	sw		x6, -64(x2)	# 1819
	fsw		f1, -68(x2)	# 1819
	sw		x1, -72(x2)	# 1819
	addi	x2, x2, -76	# 1819
	jal		x1, min_caml_floor	# 1819
	addi	x2, x2, 76	# 1819
	lw		x1, -72(x2)	# 1819
	flw		f2, -68(x2)	# 1819
	fsub	f1, f2, f1	# 1819
	flw		f2, 4(x12)	# 503
	fsub	f2, f6, f2	# 1821
	lw		x4, -64(x2)	# 463
	flw		f3, 4(x4)	# 463
	fsqrt	f3, f3	# 1821
	fmul	f2, f2, f3	# 1821
	fle		f10, f0, fle.34305	# 124
	fadd	f3, f0, f10	# 124
	jal		x0, fle_cont.34304	# 124
fle.34305:
	fsub	f3, f0, f10	# 124
fle_cont.34304:
	fsw		f1, -72(x2)	# 125
	fle		f13, f3, fle.34307	# 125
	lui		x4, %hi(l.29614)	# 1824
	ori		x4, x4, %lo(l.29614)	# 1824
	flw		f1, 0(x4)	# 1824
	jal		x0, fle_cont.34306	# 125
fle.34307:
	fdiv	f2, f2, f10	# 1826
	fle		f2, f0, fle.34309	# 124
	jal		x0, fle_cont.34308	# 124
fle.34309:
	fsub	f2, f0, f2	# 124
fle_cont.34308:
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
fle_cont.34306:
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
	fle		f0, f1, fle_cont.34310	# 122
	fadd	f1, f0, f0	# 1831
fle_cont.34310:
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f2, 0(x4)	# 25
	fmul	f1, f2, f1	# 1832
	lui		x4, %hi(l.29637)	# 1832
	ori		x4, x4, %lo(l.29637)	# 1832
	flw		f2, 0(x4)	# 1832
	fdiv	f1, f1, f2	# 1832
	fsw		f1, 0(x13)	# 1832
	jal		x0, beq_cont.34290	# 1795
beq.34295:
	lw		x6, 20(x6)	# 488
	flw		f8, 0(x6)	# 493
	fsub	f8, f5, f8	# 1798
	flw		f9, 8(x6)	# 513
	fsub	f9, f7, f9	# 1799
	fmul	f8, f8, f8	# 127
	fmul	f9, f9, f9	# 127
	fadd	f8, f8, f9	# 1800
	fsqrt	f8, f8	# 1800
	fdiv	f8, f8, f28	# 1800
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
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f2, 0(x4)	# 25
	fmul	f3, f1, f2	# 1803
	fsw		f3, 0(x15)	# 1803
	fsub	f1, f30, f1	# 1804
	fmul	f1, f1, f2	# 1804
	fsw		f1, 0(x13)	# 1804
	jal		x0, beq_cont.34290	# 1788
beq.34293:
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
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f2, 0(x4)	# 25
	fmul	f3, f2, f1	# 1792
	fsw		f3, 0(x14)	# 1792
	fsub	f1, f30, f1	# 1793
	fmul	f1, f2, f1	# 1793
	fsw		f1, 0(x15)	# 1793
	jal		x0, beq_cont.34290	# 1770
beq.34291:
	lw		x6, 20(x6)	# 488
	flw		f8, 0(x6)	# 493
	fsub	f8, f5, f8	# 1773
	fmul	f10, f8, f26	# 1775
	sw		x6, -84(x2)	# 1775
	fadd	f1, f0, f10	# 1775
	sw		x1, -88(x2)	# 1775
	addi	x2, x2, -92	# 1775
	jal		x1, min_caml_floor	# 1775
	addi	x2, x2, 92	# 1775
	lw		x1, -88(x2)	# 1775
	fmul	f1, f1, f27	# 1775
	fsub	f1, f8, f1	# 1776
	lw		x4, -84(x2)	# 513
	flw		f10, 8(x4)	# 513
	fsub	f10, f7, f10	# 1778
	fmul	f9, f10, f26	# 1780
	fsw		f1, -88(x2)	# 1780
	fsw		f27, -92(x2)	# 1780
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
	fle		f28, f2, fle.34313	# 125
	fle		f28, f1, fle.34315	# 125
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f1, 0(x4)	# 25
	jal		x0, fle_cont.34312	# 125
fle.34315:
	fadd	f1, f0, f0	# 1785
	jal		x0, fle_cont.34312	# 125
fle.34313:
	fle		f28, f1, fle.34317	# 125
	fadd	f1, f0, f0	# 1786
	jal		x0, fle_cont.34312	# 125
fle.34317:
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f1, 0(x4)	# 25
fle_cont.34312:
	fsw		f1, 0(x15)	# 1783
beq_cont.34290:
	lw		x4, -60(x2)	# 1903
	lw		x5, -12(x2)	# 1903
	mul		x4, x4, x5	# 1903
	addi	x6, x0, 40544	# 1903
	lw		x6, 0(x6)	# 1903
	add		x4, x4, x6	# 1903
	lw		x6, -28(x2)	# 1903
	mul		x7, x30, x6	# 1903
	lw		x12, -24(x2)	# 1903
	add		x16, x12, x7	# 1903
	sw		x4, 0(x16)	# 1903
	lw		x4, -8(x2)	# 626
	lw		x16, 4(x4)	# 626
	add		x16, x16, x7	# 1905
	lw		x16, 0(x16)	# 1905
	flw		f1, -56(x2)	# 316
	fsw		f1, 0(x16)	# 316
	fsw		f6, 4(x16)	# 317
	fsw		f7, 8(x16)	# 318
	lw		x16, 12(x4)	# 641
	lui		x17, %hi(l.27933)	# 1909
	ori		x17, x17, %lo(l.27933)	# 1909
	flw		f2, 0(x17)	# 1909
	flw		f3, -52(x2)	# 125
	fle		f2, f3, fle.34319	# 125
	add		x7, x16, x7	# 1910
	lw		x10, -32(x2)	# 1910
	sw		x10, 0(x7)	# 1910
	jal		x0, fle_cont.34318	# 125
fle.34319:
	add		x16, x16, x7	# 1912
	sw		x20, 0(x16)	# 1912
	lw		x10, 16(x4)	# 648
	add		x10, x10, x7	# 1914
	lw		x10, 0(x10)	# 1914
	flw		f2, 0(x14)	# 316
	fsw		f2, 0(x10)	# 316
	flw		f2, 0(x15)	# 317
	fsw		f2, 4(x10)	# 317
	flw		f2, 0(x13)	# 318
	fsw		f2, 8(x10)	# 318
	lui		x16, %hi(l.29712)	# 1915
	ori		x16, x16, %lo(l.29712)	# 1915
	flw		f2, 0(x16)	# 1915
	flw		f4, -48(x2)	# 1915
	fmul	f2, f2, f4	# 1915
	flw		f5, 0(x10)	# 382
	fmul	f5, f5, f2	# 382
	fsw		f5, 0(x10)	# 382
	flw		f5, 4(x10)	# 383
	fmul	f5, f5, f2	# 383
	fsw		f5, 4(x10)	# 383
	flw		f5, 8(x10)	# 384
	fmul	f2, f5, f2	# 384
	fsw		f2, 8(x10)	# 384
	lw		x10, 28(x4)	# 685
	add		x7, x10, x7	# 1917
	lw		x7, 0(x7)	# 1917
	addi	x10, x0, 40568	# 316
	flw		f2, 0(x10)	# 316
	fsw		f2, 0(x7)	# 316
	addi	x10, x0, 40572	# 317
	flw		f2, 0(x10)	# 317
	fsw		f2, 4(x7)	# 317
	addi	x10, x0, 40576	# 318
	flw		f2, 0(x10)	# 318
	fsw		f2, 8(x7)	# 318
fle_cont.34318:
	lui		x7, %hi(l.29740)	# 1920
	ori		x7, x7, %lo(l.29740)	# 1920
	flw		f2, 0(x7)	# 1920
	lw		x7, -20(x2)	# 349
	flw		f4, 0(x7)	# 349
	addi	x10, x0, 40568	# 349
	flw		f5, 0(x10)	# 349
	fmul	f8, f4, f5	# 349
	flw		f9, 4(x7)	# 349
	addi	x10, x0, 40572	# 349
	flw		f10, 0(x10)	# 349
	fmul	f11, f9, f10	# 349
	fadd	f8, f8, f11	# 349
	flw		f11, 8(x7)	# 349
	addi	x10, x0, 40576	# 349
	flw		f12, 0(x10)	# 349
	fmul	f13, f11, f12	# 349
	fadd	f8, f8, f13	# 349
	fmul	f2, f2, f8	# 1920
	fmul	f8, f2, f5	# 359
	fadd	f4, f4, f8	# 359
	fsw		f4, 0(x7)	# 359
	fmul	f4, f2, f10	# 360
	fadd	f4, f9, f4	# 360
	fsw		f4, 4(x7)	# 360
	fmul	f2, f2, f12	# 361
	fadd	f2, f11, f2	# 361
	fsw		f2, 8(x7)	# 361
	flw		f2, 4(x8)	# 533
	flw		f4, -16(x2)	# 1924
	fmul	f2, f4, f2	# 1924
	lw		x8, -32(x2)	# 1927
	lw		x10, -4(x2)	# 1927
	sw		x21, -96(x2)	# 1927
	sw		x25, -100(x2)	# 1927
	fsw		f7, -104(x2)	# 1927
	fsw		f6, -108(x2)	# 1927
	fsw		f2, -112(x2)	# 1927
	sw		x13, -116(x2)	# 1927
	fsw		f12, -120(x2)	# 1927
	fsw		f10, -124(x2)	# 1927
	fsw		f5, -128(x2)	# 1927
	addi	x5, x10, 0	# 1927
	addi	x4, x8, 0	# 1927
	sw		x1, -132(x2)	# 1927
	addi	x2, x2, -136	# 1927
	jal		x1, shadow_check_one_or_matrix.2934.18032	# 1927
	addi	x2, x2, 136	# 1927
	lw		x1, -132(x2)	# 1927
	lw		x5, -32(x2)	# 1927
	beq		x4, x5, beq.34321	# 1927
	jal		x0, beq_cont.34320	# 1927
beq.34321:
	addi	x4, x0, 40312	# 349
	flw		f1, 0(x4)	# 349
	flw		f2, -128(x2)	# 349
	fmul	f2, f2, f1	# 349
	addi	x4, x0, 40316	# 349
	flw		f3, 0(x4)	# 349
	flw		f4, -124(x2)	# 349
	fmul	f4, f4, f3	# 349
	fadd	f2, f2, f4	# 349
	addi	x4, x0, 40320	# 349
	flw		f4, 0(x4)	# 349
	flw		f5, -120(x2)	# 349
	fmul	f5, f5, f4	# 349
	fadd	f2, f2, f5	# 349
	fsub	f2, f0, f2	# 123
	flw		f5, -48(x2)	# 1928
	fmul	f2, f2, f5	# 1928
	lw		x4, -20(x2)	# 349
	flw		f6, 0(x4)	# 349
	fmul	f1, f6, f1	# 349
	flw		f6, 4(x4)	# 349
	fmul	f3, f6, f3	# 349
	fadd	f1, f1, f3	# 349
	flw		f3, 8(x4)	# 349
	fmul	f3, f3, f4	# 349
	fadd	f1, f1, f3	# 349
	fsub	f1, f0, f1	# 123
	fle		f2, f0, fle_cont.34322	# 121
	addi	x5, x0, 40604	# 359
	flw		f4, 0(x5)	# 359
	flw		f6, 0(x14)	# 359
	fmul	f6, f2, f6	# 359
	fadd	f4, f4, f6	# 359
	fsw		f4, 0(x5)	# 359
	addi	x5, x0, 40608	# 360
	flw		f4, 0(x5)	# 360
	flw		f6, 0(x15)	# 360
	fmul	f6, f2, f6	# 360
	fadd	f4, f4, f6	# 360
	fsw		f4, 0(x5)	# 360
	addi	x5, x0, 40612	# 361
	flw		f4, 0(x5)	# 361
	lw		x6, -116(x2)	# 361
	flw		f6, 0(x6)	# 361
	fmul	f2, f2, f6	# 361
	fadd	f2, f4, f2	# 361
	fsw		f2, 0(x5)	# 361
fle_cont.34322:
	fle		f1, f0, beq_cont.34320	# 121
	fmul	f1, f1, f1	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -112(x2)	# 1851
	fmul	f1, f1, f2	# 1851
	addi	x5, x0, 40604	# 1852
	flw		f3, 0(x5)	# 1852
	fadd	f3, f3, f1	# 1852
	fsw		f3, 0(x5)	# 1852
	addi	x5, x0, 40608	# 1853
	flw		f3, 0(x5)	# 1853
	fadd	f3, f3, f1	# 1853
	fsw		f3, 0(x5)	# 1853
	addi	x5, x0, 40612	# 1854
	flw		f3, 0(x5)	# 1854
	fadd	f1, f3, f1	# 1854
	fsw		f1, 0(x5)	# 1854
beq_cont.34320:
	addi	x4, x0, 40648	# 316
	flw		f1, -56(x2)	# 316
	fsw		f1, 0(x4)	# 316
	addi	x4, x0, 40652	# 317
	flw		f1, -108(x2)	# 317
	fsw		f1, 0(x4)	# 317
	addi	x4, x0, 40656	# 318
	flw		f1, -104(x2)	# 318
	fsw		f1, 0(x4)	# 318
	addi	x4, x0, 40000	# 1372
	lw		x4, 0(x4)	# 1372
	addi	x5, x4, -1	# 1372
	lw		x4, -100(x2)	# 1372
	sw		x1, -132(x2)	# 1372
	addi	x2, x2, -136	# 1372
	jal		x1, setup_startp_constants.2897.18017	# 1372
	addi	x2, x2, 136	# 1372
	lw		x1, -132(x2)	# 1372
	addi	x4, x0, 41736	# 1935
	lw		x4, 0(x4)	# 1935
	addi	x4, x4, -1	# 1935
	lw		x5, -20(x2)	# 1935
	flw		f1, -48(x2)	# 1935
	flw		f2, -112(x2)	# 1935
	sw		x1, -132(x2)	# 1935
	addi	x2, x2, -136	# 1935
	jal		x1, trace_reflections.2981.18059	# 1935
	addi	x2, x2, 136	# 1935
	lw		x1, -132(x2)	# 1935
	lui		x4, %hi(l.29816)	# 1938
	ori		x4, x4, %lo(l.29816)	# 1938
	flw		f1, 0(x4)	# 1938
	flw		f2, -16(x2)	# 125
	fle		f2, f1, fle.34326	# 125
	lw		x4, -28(x2)	# 1940
	lw		x5, -12(x2)	# 1940
	ble		x5, x4, ble_cont.34327	# 1940
	addi	x5, x4, 1	# 1941
	mul		x5, x30, x5	# 1941
	lw		x7, -24(x2)	# 1941
	add		x5, x7, x5	# 1941
	sw		x19, 0(x5)	# 1941
ble_cont.34327:
	lw		x5, -96(x2)	# 1944
	lw		x6, -44(x2)	# 1944
	beq		x6, x5, beq.34329	# 1944
	jalr	x0, x1, 0	# 1947
beq.34329:
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
fle.34326:
	jalr	x0, x1, 0	# 1949
beq.34275:
	lw		x6, -28(x2)	# 1954
	mul		x7, x30, x6	# 1954
	lw		x8, -24(x2)	# 1954
	add		x7, x8, x7	# 1954
	sw		x19, 0(x7)	# 1954
	beq		x6, x5, beq.34332	# 1956
	lw		x4, -20(x2)	# 349
	flw		f1, 0(x4)	# 349
	addi	x5, x0, 40312	# 349
	flw		f2, 0(x5)	# 349
	fmul	f1, f1, f2	# 349
	flw		f2, 4(x4)	# 349
	addi	x5, x0, 40316	# 349
	flw		f3, 0(x5)	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	flw		f2, 8(x4)	# 349
	addi	x4, x0, 40320	# 349
	flw		f3, 0(x4)	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	fsub	f1, f0, f1	# 123
	fle		f1, f0, fle.34333	# 121
	fmul	f2, f1, f1	# 127
	fmul	f1, f2, f1	# 1962
	flw		f2, -16(x2)	# 1962
	fmul	f1, f1, f2	# 1962
	addi	x4, x0, 40324	# 1962
	flw		f2, 0(x4)	# 1962
	fmul	f1, f1, f2	# 1962
	addi	x4, x0, 40604	# 1963
	flw		f2, 0(x4)	# 1963
	fadd	f2, f2, f1	# 1963
	fsw		f2, 0(x4)	# 1963
	addi	x4, x0, 40608	# 1964
	flw		f2, 0(x4)	# 1964
	fadd	f2, f2, f1	# 1964
	fsw		f2, 0(x4)	# 1964
	addi	x4, x0, 40612	# 1965
	flw		f2, 0(x4)	# 1965
	fadd	f1, f2, f1	# 1965
	fsw		f1, 0(x4)	# 1965
	jalr	x0, x1, 0	# 1965
fle.34333:
	jalr	x0, x1, 0	# 1967
beq.34332:
	jalr	x0, x1, 0	# 1968
iter_trace_diffuse_rays.2995.18070:
	add		x8, x0, x0	# 6
	ble		x0, x7, ble.34337	# 2001
	jalr	x0, x1, 0	# 2012
ble.34337:
	mul		x9, x30, x7	# 2002
	add		x9, x4, x9	# 2002
	lw		x9, 0(x9)	# 2002
	lw		x10, 0(x9)	# 696
	flw		f1, 0(x10)	# 349
	flw		f2, 0(x5)	# 349
	fmul	f1, f1, f2	# 349
	flw		f2, 4(x10)	# 349
	flw		f3, 4(x5)	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	flw		f2, 8(x10)	# 349
	flw		f3, 8(x5)	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	sw		x6, 0(x2)	# 122
	sw		x5, -4(x2)	# 122
	sw		x4, -8(x2)	# 122
	sw		x7, -12(x2)	# 122
	fle		f0, f1, fle.34340	# 122
	addi	x9, x7, 1	# 2007
	mul		x9, x30, x9	# 2007
	add		x9, x4, x9	# 2007
	lw		x9, 0(x9)	# 2007
	fdiv	f1, f1, f24	# 2007
	addi	x10, x0, 40548	# 1691
	fsw		f21, 0(x10)	# 1691
	addi	x13, x0, 40536	# 1692
	lw		x13, 0(x13)	# 1692
	fsw		f1, -16(x2)	# 1692
	sw		x13, -20(x2)	# 1692
	sw		x21, -24(x2)	# 1692
	fsw		f0, -28(x2)	# 1692
	sw		x20, -32(x2)	# 1692
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
	flw		f1, 0(x4)	# 1693
	fle		f1, f20, fle.34342	# 125
	fle		f22, f1, fle.34344	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.34341	# 125
fle.34344:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.34341	# 125
fle.34342:
	addi	x4, x0, 0	# 1697
fle_cont.34341:
	lw		x5, -40(x2)	# 1984
	beq		x4, x5, fle_cont.34339	# 1984
	addi	x4, x0, 40564	# 1985
	lw		x4, 0(x4)	# 1985
	mul		x4, x30, x4	# 1985
	addi	x4, x4, 40048	# 1985
	lw		x4, 0(x4)	# 1985
	lw		x6, -36(x2)	# 696
	lw		x6, 0(x6)	# 696
	lw		x7, 4(x4)	# 410
	lw		x8, -32(x2)	# 1750
	beq		x7, x8, beq.34348	# 1750
	lw		x6, -24(x2)	# 1752
	beq		x7, x6, beq.34350	# 1752
	flw		f1, 0(x25)	# 1727
	lw		x7, 20(x4)	# 488
	flw		f2, 0(x7)	# 493
	fsub	f1, f1, f2	# 1727
	flw		f2, 0(x27)	# 1728
	flw		f3, 4(x7)	# 503
	fsub	f2, f2, f3	# 1728
	flw		f3, 0(x26)	# 1729
	flw		f4, 8(x7)	# 513
	fsub	f3, f3, f4	# 1729
	lw		x7, 16(x4)	# 448
	flw		f4, 0(x7)	# 453
	fmul	f4, f1, f4	# 1731
	flw		f5, 4(x7)	# 463
	fmul	f5, f2, f5	# 1732
	flw		f6, 8(x7)	# 473
	fmul	f6, f3, f6	# 1733
	lw		x7, 12(x4)	# 439
	beq		x7, x5, beq.34352	# 1735
	lw		x7, 36(x4)	# 588
	flw		f7, 8(x7)	# 593
	fmul	f8, f2, f7	# 1740
	flw		f9, 4(x7)	# 583
	fmul	f10, f3, f9	# 1740
	fadd	f8, f8, f10	# 1740
	lui		x9, %hi(l.27933)	# 126
	ori		x9, x9, %lo(l.27933)	# 126
	flw		f10, 0(x9)	# 126
	fmul	f8, f8, f10	# 126
	fadd	f4, f4, f8	# 1740
	addi	x9, x0, 40568	# 1740
	fsw		f4, 0(x9)	# 1740
	fmul	f4, f1, f7	# 1741
	flw		f7, 0(x7)	# 573
	fmul	f3, f3, f7	# 1741
	fadd	f3, f4, f3	# 1741
	fmul	f3, f3, f10	# 126
	fadd	f3, f5, f3	# 1741
	addi	x7, x0, 40572	# 1741
	fsw		f3, 0(x7)	# 1741
	fmul	f1, f1, f9	# 1742
	fmul	f2, f2, f7	# 1742
	fadd	f1, f1, f2	# 1742
	fmul	f1, f1, f10	# 126
	fadd	f1, f6, f1	# 1742
	addi	x7, x0, 40576	# 1742
	fsw		f1, 0(x7)	# 1742
	jal		x0, beq_cont.34351	# 1735
beq.34352:
	addi	x7, x0, 40568	# 1736
	fsw		f4, 0(x7)	# 1736
	addi	x7, x0, 40572	# 1737
	fsw		f5, 0(x7)	# 1737
	addi	x7, x0, 40576	# 1738
	fsw		f6, 0(x7)	# 1738
beq_cont.34351:
	lw		x7, 24(x4)	# 430
	addi	x9, x0, 40568	# 340
	flw		f1, 0(x9)	# 340
	fmul	f2, f1, f1	# 127
	addi	x10, x0, 40572	# 340
	flw		f3, 0(x10)	# 340
	fmul	f4, f3, f3	# 127
	fadd	f2, f2, f4	# 340
	addi	x11, x0, 40576	# 340
	flw		f4, 0(x11)	# 340
	fmul	f5, f4, f4	# 127
	fadd	f2, f2, f5	# 340
	fsqrt	f2, f2	# 340
	flw		f5, -28(x2)	# 120
	feq		f2, f5, feq.34354	# 120
	beq		x7, x5, beq.34356	# 341
	fdiv	f2, f25, f2	# 341
	jal		x0, feq_cont.34353	# 341
beq.34356:
	fdiv	f2, f30, f2	# 341
	jal		x0, feq_cont.34353	# 120
feq.34354:
	fadd	f2, f0, f30	# 341
feq_cont.34353:
	fmul	f1, f1, f2	# 342
	fsw		f1, 0(x9)	# 342
	fmul	f1, f3, f2	# 343
	fsw		f1, 0(x10)	# 343
	fmul	f1, f4, f2	# 344
	fsw		f1, 0(x11)	# 344
	jal		x0, beq_cont.34347	# 1752
beq.34350:
	lw		x7, 16(x4)	# 448
	flw		f1, 0(x7)	# 453
	fsub	f1, f0, f1	# 123
	addi	x9, x0, 40568	# 1720
	fsw		f1, 0(x9)	# 1720
	flw		f1, 4(x7)	# 463
	fsub	f1, f0, f1	# 123
	addi	x9, x0, 40572	# 1721
	fsw		f1, 0(x9)	# 1721
	flw		f1, 8(x7)	# 473
	fsub	f1, f0, f1	# 123
	addi	x7, x0, 40576	# 1722
	fsw		f1, 0(x7)	# 1722
	jal		x0, beq_cont.34347	# 1750
beq.34348:
	addi	x7, x0, 40544	# 1711
	lw		x7, 0(x7)	# 1711
	addi	x9, x0, 40568	# 51
	flw		f1, -28(x2)	# 304
	fsw		f1, 0(x9)	# 304
	addi	x9, x0, 40572	# 305
	fsw		f1, 0(x9)	# 305
	addi	x9, x0, 40576	# 306
	fsw		f1, 0(x9)	# 306
	addi	x7, x7, -1	# 1714
	mul		x7, x30, x7	# 1714
	add		x6, x6, x7	# 1714
	flw		f2, 0(x6)	# 1714
	feq		f2, f1, feq.34358	# 120
	fle		f2, f1, fle.34360	# 121
	fadd	f2, f0, f30	# 270
	jal		x0, feq_cont.34357	# 121
fle.34360:
	fadd	f2, f0, f25	# 271
	jal		x0, feq_cont.34357	# 120
feq.34358:
	fadd	f2, f0, f1	# 269
feq_cont.34357:
	fsub	f2, f0, f2	# 123
	addi	x6, x7, 40568	# 1714
	fsw		f2, 0(x6)	# 1714
beq_cont.34347:
	lw		x6, 0(x4)	# 400
	lw		x7, 32(x4)	# 538
	flw		f1, 0(x7)	# 543
	addi	x9, x0, 40580	# 1767
	fsw		f1, 0(x9)	# 1767
	flw		f1, 4(x7)	# 553
	addi	x10, x0, 40584	# 1768
	fsw		f1, 0(x10)	# 1768
	flw		f1, 8(x7)	# 563
	addi	x7, x0, 40588	# 1769
	fsw		f1, 0(x7)	# 1769
	sw		x7, -48(x2)	# 1770
	sw		x4, -52(x2)	# 1770
	beq		x6, x8, beq.34362	# 1770
	lw		x8, -24(x2)	# 1788
	beq		x6, x8, beq.34364	# 1788
	beq		x6, x22, beq.34366	# 1795
	beq		x6, x30, beq.34368	# 1806
	jal		x0, beq_cont.34361	# 1806
beq.34368:
	flw		f1, 0(x25)	# 1808
	lw		x6, 20(x4)	# 488
	flw		f2, 0(x6)	# 493
	fsub	f1, f1, f2	# 1808
	lw		x8, 16(x4)	# 448
	flw		f2, 0(x8)	# 453
	fsqrt	f2, f2	# 1808
	fmul	f1, f1, f2	# 1808
	flw		f2, 0(x26)	# 1809
	flw		f3, 8(x6)	# 513
	fsub	f2, f2, f3	# 1809
	flw		f3, 8(x8)	# 473
	fsqrt	f3, f3	# 1809
	fmul	f2, f2, f3	# 1809
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1810
	flw		f4, -28(x2)	# 124
	fle		f1, f4, fle.34370	# 124
	fadd	f5, f0, f1	# 124
	jal		x0, fle_cont.34369	# 124
fle.34370:
	fsub	f5, f0, f1	# 124
fle_cont.34369:
	lui		x11, %hi(l.29612)	# 1812
	ori		x11, x11, %lo(l.29612)	# 1812
	flw		f6, 0(x11)	# 1812
	fsw		f3, -56(x2)	# 125
	fle		f6, f5, fle.34372	# 125
	lui		x11, %hi(l.29614)	# 1813
	ori		x11, x11, %lo(l.29614)	# 1813
	flw		f1, 0(x11)	# 1813
	jal		x0, fle_cont.34371	# 125
fle.34372:
	fdiv	f1, f2, f1	# 1815
	fle		f1, f4, fle.34374	# 124
	jal		x0, fle_cont.34373	# 124
fle.34374:
	fsub	f1, f0, f1	# 124
fle_cont.34373:
	sw		x1, -60(x2)	# 1817
	addi	x2, x2, -64	# 1817
	jal		x1, atan.2640.17996	# 1817
	addi	x2, x2, 64	# 1817
	lw		x1, -60(x2)	# 1817
	lui		x4, %hi(l.29617)	# 1817
	ori		x4, x4, %lo(l.29617)	# 1817
	flw		f2, 0(x4)	# 1817
	fmul	f1, f1, f2	# 1817
	lui		x4, %hi(l.29619)	# 1817
	ori		x4, x4, %lo(l.29619)	# 1817
	flw		f2, 0(x4)	# 1817
	fdiv	f1, f1, f2	# 1817
fle_cont.34371:
	sw		x6, -60(x2)	# 1819
	fsw		f1, -64(x2)	# 1819
	sw		x1, -68(x2)	# 1819
	addi	x2, x2, -72	# 1819
	jal		x1, min_caml_floor	# 1819
	addi	x2, x2, 72	# 1819
	lw		x1, -68(x2)	# 1819
	flw		f2, -64(x2)	# 1819
	fsub	f1, f2, f1	# 1819
	flw		f2, 0(x27)	# 1821
	lw		x4, -60(x2)	# 503
	flw		f3, 4(x4)	# 503
	fsub	f2, f2, f3	# 1821
	flw		f3, 4(x8)	# 463
	fsqrt	f3, f3	# 1821
	fmul	f2, f2, f3	# 1821
	flw		f3, -28(x2)	# 124
	flw		f4, -56(x2)	# 124
	fle		f4, f3, fle.34376	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.34375	# 124
fle.34376:
	fsub	f5, f0, f4	# 124
fle_cont.34375:
	fsw		f1, -68(x2)	# 125
	fle		f6, f5, fle.34378	# 125
	lui		x4, %hi(l.29614)	# 1824
	ori		x4, x4, %lo(l.29614)	# 1824
	flw		f1, 0(x4)	# 1824
	jal		x0, fle_cont.34377	# 125
fle.34378:
	fdiv	f2, f2, f4	# 1826
	fle		f2, f3, fle.34380	# 124
	jal		x0, fle_cont.34379	# 124
fle.34380:
	fsub	f2, f0, f2	# 124
fle_cont.34379:
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
fle_cont.34377:
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
	fle		f2, f1, fle_cont.34381	# 122
	fadd	f1, f0, f2	# 1831
fle_cont.34381:
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f3, 0(x4)	# 25
	fmul	f1, f3, f1	# 1832
	lui		x4, %hi(l.29637)	# 1832
	ori		x4, x4, %lo(l.29637)	# 1832
	flw		f3, 0(x4)	# 1832
	fdiv	f1, f1, f3	# 1832
	lw		x4, -48(x2)	# 1832
	fsw		f1, 0(x4)	# 1832
	jal		x0, beq_cont.34361	# 1795
beq.34366:
	flw		f1, 0(x25)	# 1798
	lw		x6, 20(x4)	# 488
	flw		f2, 0(x6)	# 493
	fsub	f1, f1, f2	# 1798
	flw		f2, 0(x26)	# 1799
	flw		f3, 8(x6)	# 513
	fsub	f2, f2, f3	# 1799
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1800
	fsqrt	f1, f1	# 1800
	fdiv	f1, f1, f28	# 1800
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
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f2, 0(x4)	# 25
	fmul	f3, f1, f2	# 1803
	fsw		f3, 0(x10)	# 1803
	fsub	f1, f30, f1	# 1804
	fmul	f1, f1, f2	# 1804
	lw		x4, -48(x2)	# 1804
	fsw		f1, 0(x4)	# 1804
	jal		x0, beq_cont.34361	# 1788
beq.34364:
	flw		f1, 0(x27)	# 1791
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
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f2, 0(x4)	# 25
	fmul	f3, f2, f1	# 1792
	fsw		f3, 0(x9)	# 1792
	fsub	f1, f30, f1	# 1793
	fmul	f1, f2, f1	# 1793
	fsw		f1, 0(x10)	# 1793
	jal		x0, beq_cont.34361	# 1770
beq.34362:
	flw		f1, 0(x25)	# 1773
	lw		x6, 20(x4)	# 488
	flw		f2, 0(x6)	# 493
	fsub	f1, f1, f2	# 1773
	fmul	f3, f1, f26	# 1775
	fsw		f26, -80(x2)	# 1775
	sw		x6, -84(x2)	# 1775
	fsw		f1, -88(x2)	# 1775
	fadd	f1, f0, f3	# 1775
	sw		x1, -92(x2)	# 1775
	addi	x2, x2, -96	# 1775
	jal		x1, min_caml_floor	# 1775
	addi	x2, x2, 96	# 1775
	lw		x1, -92(x2)	# 1775
	fmul	f1, f1, f27	# 1775
	flw		f3, -88(x2)	# 1776
	fsub	f1, f3, f1	# 1776
	flw		f4, 0(x26)	# 1778
	lw		x4, -84(x2)	# 513
	flw		f5, 8(x4)	# 513
	fsub	f4, f4, f5	# 1778
	flw		f5, -80(x2)	# 1780
	fmul	f5, f4, f5	# 1780
	fsw		f1, -92(x2)	# 1780
	fsw		f27, -96(x2)	# 1780
	fadd	f1, f0, f5	# 1780
	sw		x1, -100(x2)	# 1780
	addi	x2, x2, -104	# 1780
	jal		x1, min_caml_floor	# 1780
	addi	x2, x2, 104	# 1780
	lw		x1, -100(x2)	# 1780
	flw		f2, -96(x2)	# 1780
	fmul	f1, f1, f2	# 1780
	fsub	f1, f4, f1	# 1781
	flw		f2, -92(x2)	# 125
	fle		f28, f2, fle.34384	# 125
	fle		f28, f1, fle.34386	# 125
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f1, 0(x4)	# 25
	jal		x0, fle_cont.34383	# 125
fle.34386:
	flw		f1, -28(x2)	# 1785
	jal		x0, fle_cont.34383	# 125
fle.34384:
	fle		f28, f1, fle.34388	# 125
	flw		f1, -28(x2)	# 1786
	jal		x0, fle_cont.34383	# 125
fle.34388:
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f1, 0(x4)	# 25
fle_cont.34383:
	fsw		f1, 0(x10)	# 1783
beq_cont.34361:
	lw		x4, -40(x2)	# 1990
	lw		x5, -20(x2)	# 1990
	sw		x10, -100(x2)	# 1990
	sw		x9, -104(x2)	# 1990
	sw		x1, -108(x2)	# 1990
	addi	x2, x2, -112	# 1990
	jal		x1, shadow_check_one_or_matrix.2934.18032	# 1990
	addi	x2, x2, 112	# 1990
	lw		x1, -108(x2)	# 1990
	lw		x5, -40(x2)	# 1990
	beq		x4, x5, beq.34390	# 1990
	jal		x0, fle_cont.34339	# 1990
beq.34390:
	addi	x4, x0, 40568	# 349
	flw		f1, 0(x4)	# 349
	addi	x4, x0, 40312	# 349
	flw		f2, 0(x4)	# 349
	fmul	f1, f1, f2	# 349
	addi	x4, x0, 40572	# 349
	flw		f2, 0(x4)	# 349
	addi	x4, x0, 40316	# 349
	flw		f3, 0(x4)	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	addi	x4, x0, 40576	# 349
	flw		f2, 0(x4)	# 349
	addi	x4, x0, 40320	# 349
	flw		f3, 0(x4)	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	fsub	f1, f0, f1	# 123
	flw		f2, -28(x2)	# 121
	fle		f1, f2, fle.34392	# 121
	jal		x0, fle_cont.34391	# 121
fle.34392:
	fadd	f1, f0, f2	# 1992
fle_cont.34391:
	flw		f2, -16(x2)	# 1993
	fmul	f1, f2, f1	# 1993
	lw		x4, -52(x2)	# 518
	lw		x4, 28(x4)	# 518
	flw		f2, 0(x4)	# 523
	fmul	f1, f1, f2	# 1993
	addi	x4, x0, 40592	# 359
	flw		f2, 0(x4)	# 359
	lw		x5, -104(x2)	# 359
	flw		f3, 0(x5)	# 359
	fmul	f3, f1, f3	# 359
	fadd	f2, f2, f3	# 359
	fsw		f2, 0(x4)	# 359
	addi	x4, x0, 40596	# 360
	flw		f2, 0(x4)	# 360
	lw		x5, -100(x2)	# 360
	flw		f3, 0(x5)	# 360
	fmul	f3, f1, f3	# 360
	fadd	f2, f2, f3	# 360
	fsw		f2, 0(x4)	# 360
	addi	x4, x0, 40600	# 361
	flw		f2, 0(x4)	# 361
	lw		x5, -48(x2)	# 361
	flw		f3, 0(x5)	# 361
	fmul	f1, f1, f3	# 361
	fadd	f1, f2, f1	# 361
	fsw		f1, 0(x4)	# 361
	jal		x0, fle_cont.34339	# 1984
fle.34340:
	fdiv	f1, f1, f23	# 2009
	addi	x13, x0, 40548	# 1691
	fsw		f21, 0(x13)	# 1691
	addi	x14, x0, 40536	# 1692
	lw		x14, 0(x14)	# 1692
	fsw		f1, -108(x2)	# 1692
	sw		x14, -112(x2)	# 1692
	sw		x21, -24(x2)	# 1692
	sw		x10, -116(x2)	# 1692
	fsw		f0, -28(x2)	# 1692
	sw		x20, -32(x2)	# 1692
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
	flw		f1, 0(x4)	# 1693
	fle		f1, f20, fle.34394	# 125
	fle		f22, f1, fle.34396	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.34393	# 125
fle.34396:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.34393	# 125
fle.34394:
	addi	x4, x0, 0	# 1697
fle_cont.34393:
	lw		x5, -40(x2)	# 1984
	beq		x4, x5, fle_cont.34339	# 1984
	addi	x4, x0, 40564	# 1985
	lw		x4, 0(x4)	# 1985
	mul		x4, x30, x4	# 1985
	addi	x4, x4, 40048	# 1985
	lw		x4, 0(x4)	# 1985
	lw		x6, 4(x4)	# 410
	lw		x7, -32(x2)	# 1750
	beq		x6, x7, beq.34400	# 1750
	lw		x8, -24(x2)	# 1752
	beq		x6, x8, beq.34402	# 1752
	flw		f1, 0(x25)	# 1727
	lw		x6, 20(x4)	# 488
	flw		f2, 0(x6)	# 493
	fsub	f1, f1, f2	# 1727
	flw		f2, 0(x27)	# 1728
	flw		f3, 4(x6)	# 503
	fsub	f2, f2, f3	# 1728
	flw		f3, 0(x26)	# 1729
	flw		f4, 8(x6)	# 513
	fsub	f3, f3, f4	# 1729
	lw		x6, 16(x4)	# 448
	flw		f4, 0(x6)	# 453
	fmul	f4, f1, f4	# 1731
	flw		f5, 4(x6)	# 463
	fmul	f5, f2, f5	# 1732
	flw		f6, 8(x6)	# 473
	fmul	f6, f3, f6	# 1733
	lw		x6, 12(x4)	# 439
	beq		x6, x5, beq.34404	# 1735
	lw		x6, 36(x4)	# 588
	flw		f7, 8(x6)	# 593
	fmul	f8, f2, f7	# 1740
	flw		f9, 4(x6)	# 583
	fmul	f10, f3, f9	# 1740
	fadd	f8, f8, f10	# 1740
	lui		x9, %hi(l.27933)	# 126
	ori		x9, x9, %lo(l.27933)	# 126
	flw		f10, 0(x9)	# 126
	fmul	f8, f8, f10	# 126
	fadd	f4, f4, f8	# 1740
	addi	x9, x0, 40568	# 1740
	fsw		f4, 0(x9)	# 1740
	fmul	f4, f1, f7	# 1741
	flw		f7, 0(x6)	# 573
	fmul	f3, f3, f7	# 1741
	fadd	f3, f4, f3	# 1741
	fmul	f3, f3, f10	# 126
	fadd	f3, f5, f3	# 1741
	addi	x6, x0, 40572	# 1741
	fsw		f3, 0(x6)	# 1741
	fmul	f1, f1, f9	# 1742
	fmul	f2, f2, f7	# 1742
	fadd	f1, f1, f2	# 1742
	fmul	f1, f1, f10	# 126
	fadd	f1, f6, f1	# 1742
	addi	x6, x0, 40576	# 1742
	fsw		f1, 0(x6)	# 1742
	jal		x0, beq_cont.34403	# 1735
beq.34404:
	addi	x6, x0, 40568	# 1736
	fsw		f4, 0(x6)	# 1736
	addi	x6, x0, 40572	# 1737
	fsw		f5, 0(x6)	# 1737
	addi	x6, x0, 40576	# 1738
	fsw		f6, 0(x6)	# 1738
beq_cont.34403:
	lw		x6, 24(x4)	# 430
	addi	x9, x0, 40568	# 340
	flw		f1, 0(x9)	# 340
	fmul	f2, f1, f1	# 127
	addi	x10, x0, 40572	# 340
	flw		f3, 0(x10)	# 340
	fmul	f4, f3, f3	# 127
	fadd	f2, f2, f4	# 340
	addi	x11, x0, 40576	# 340
	flw		f4, 0(x11)	# 340
	fmul	f5, f4, f4	# 127
	fadd	f2, f2, f5	# 340
	fsqrt	f2, f2	# 340
	flw		f5, -28(x2)	# 120
	feq		f2, f5, feq.34406	# 120
	beq		x6, x5, beq.34408	# 341
	fdiv	f2, f25, f2	# 341
	jal		x0, feq_cont.34405	# 341
beq.34408:
	fdiv	f2, f30, f2	# 341
	jal		x0, feq_cont.34405	# 120
feq.34406:
	fadd	f2, f0, f30	# 341
feq_cont.34405:
	fmul	f1, f1, f2	# 342
	fsw		f1, 0(x9)	# 342
	fmul	f1, f3, f2	# 343
	fsw		f1, 0(x10)	# 343
	fmul	f1, f4, f2	# 344
	fsw		f1, 0(x11)	# 344
	jal		x0, beq_cont.34399	# 1752
beq.34402:
	lw		x6, 16(x4)	# 448
	flw		f1, 0(x6)	# 453
	fsub	f1, f0, f1	# 123
	addi	x9, x0, 40568	# 1720
	fsw		f1, 0(x9)	# 1720
	flw		f1, 4(x6)	# 463
	fsub	f1, f0, f1	# 123
	addi	x9, x0, 40572	# 1721
	fsw		f1, 0(x9)	# 1721
	flw		f1, 8(x6)	# 473
	fsub	f1, f0, f1	# 123
	addi	x6, x0, 40576	# 1722
	fsw		f1, 0(x6)	# 1722
	jal		x0, beq_cont.34399	# 1750
beq.34400:
	addi	x6, x0, 40544	# 1711
	lw		x6, 0(x6)	# 1711
	addi	x8, x0, 40568	# 51
	flw		f1, -28(x2)	# 304
	fsw		f1, 0(x8)	# 304
	addi	x8, x0, 40572	# 305
	fsw		f1, 0(x8)	# 305
	addi	x8, x0, 40576	# 306
	fsw		f1, 0(x8)	# 306
	addi	x6, x6, -1	# 1714
	mul		x6, x30, x6	# 1714
	lw		x8, -116(x2)	# 1714
	add		x8, x8, x6	# 1714
	flw		f2, 0(x8)	# 1714
	feq		f2, f1, feq.34410	# 120
	fle		f2, f1, fle.34412	# 121
	fadd	f2, f0, f30	# 270
	jal		x0, feq_cont.34409	# 121
fle.34412:
	fadd	f2, f0, f25	# 271
	jal		x0, feq_cont.34409	# 120
feq.34410:
	fadd	f2, f0, f1	# 269
feq_cont.34409:
	fsub	f2, f0, f2	# 123
	addi	x6, x6, 40568	# 1714
	fsw		f2, 0(x6)	# 1714
beq_cont.34399:
	lw		x6, 0(x4)	# 400
	lw		x8, 32(x4)	# 538
	flw		f1, 0(x8)	# 543
	addi	x9, x0, 40580	# 1767
	fsw		f1, 0(x9)	# 1767
	flw		f1, 4(x8)	# 553
	addi	x10, x0, 40584	# 1768
	fsw		f1, 0(x10)	# 1768
	flw		f1, 8(x8)	# 563
	addi	x8, x0, 40588	# 1769
	fsw		f1, 0(x8)	# 1769
	sw		x4, -124(x2)	# 1770
	beq		x6, x7, beq.34414	# 1770
	lw		x7, -24(x2)	# 1788
	beq		x6, x7, beq.34416	# 1788
	beq		x6, x22, beq.34418	# 1795
	beq		x6, x30, beq.34420	# 1806
	jal		x0, beq_cont.34413	# 1806
beq.34420:
	flw		f1, 0(x25)	# 1808
	lw		x6, 20(x4)	# 488
	flw		f2, 0(x6)	# 493
	fsub	f1, f1, f2	# 1808
	lw		x7, 16(x4)	# 448
	flw		f2, 0(x7)	# 453
	fsqrt	f2, f2	# 1808
	fmul	f1, f1, f2	# 1808
	flw		f2, 0(x26)	# 1809
	flw		f3, 8(x6)	# 513
	fsub	f2, f2, f3	# 1809
	flw		f3, 8(x7)	# 473
	fsqrt	f3, f3	# 1809
	fmul	f2, f2, f3	# 1809
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1810
	flw		f4, -28(x2)	# 124
	fle		f1, f4, fle.34422	# 124
	fadd	f5, f0, f1	# 124
	jal		x0, fle_cont.34421	# 124
fle.34422:
	fsub	f5, f0, f1	# 124
fle_cont.34421:
	lui		x11, %hi(l.29612)	# 1812
	ori		x11, x11, %lo(l.29612)	# 1812
	flw		f6, 0(x11)	# 1812
	fsw		f3, -128(x2)	# 125
	fle		f6, f5, fle.34424	# 125
	lui		x11, %hi(l.29614)	# 1813
	ori		x11, x11, %lo(l.29614)	# 1813
	flw		f1, 0(x11)	# 1813
	jal		x0, fle_cont.34423	# 125
fle.34424:
	fdiv	f1, f2, f1	# 1815
	fle		f1, f4, fle.34426	# 124
	jal		x0, fle_cont.34425	# 124
fle.34426:
	fsub	f1, f0, f1	# 124
fle_cont.34425:
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
fle_cont.34423:
	sw		x7, -132(x2)	# 1819
	sw		x6, -136(x2)	# 1819
	fsw		f1, -140(x2)	# 1819
	sw		x1, -144(x2)	# 1819
	addi	x2, x2, -148	# 1819
	jal		x1, min_caml_floor	# 1819
	addi	x2, x2, 148	# 1819
	lw		x1, -144(x2)	# 1819
	flw		f2, -140(x2)	# 1819
	fsub	f1, f2, f1	# 1819
	flw		f2, 0(x27)	# 1821
	lw		x4, -136(x2)	# 503
	flw		f3, 4(x4)	# 503
	fsub	f2, f2, f3	# 1821
	lw		x4, -132(x2)	# 463
	flw		f3, 4(x4)	# 463
	fsqrt	f3, f3	# 1821
	fmul	f2, f2, f3	# 1821
	flw		f3, -28(x2)	# 124
	flw		f4, -128(x2)	# 124
	fle		f4, f3, fle.34428	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.34427	# 124
fle.34428:
	fsub	f5, f0, f4	# 124
fle_cont.34427:
	fsw		f1, -144(x2)	# 125
	fle		f6, f5, fle.34430	# 125
	lui		x4, %hi(l.29614)	# 1824
	ori		x4, x4, %lo(l.29614)	# 1824
	flw		f1, 0(x4)	# 1824
	jal		x0, fle_cont.34429	# 125
fle.34430:
	fdiv	f2, f2, f4	# 1826
	fle		f2, f3, fle.34432	# 124
	jal		x0, fle_cont.34431	# 124
fle.34432:
	fsub	f2, f0, f2	# 124
fle_cont.34431:
	fadd	f1, f0, f2	# 1827
	sw		x1, -148(x2)	# 1827
	addi	x2, x2, -152	# 1827
	jal		x1, atan.2640.17996	# 1827
	addi	x2, x2, 152	# 1827
	lw		x1, -148(x2)	# 1827
	lui		x4, %hi(l.29617)	# 1827
	ori		x4, x4, %lo(l.29617)	# 1827
	flw		f2, 0(x4)	# 1827
	fmul	f1, f1, f2	# 1827
	lui		x4, %hi(l.29619)	# 1827
	ori		x4, x4, %lo(l.29619)	# 1827
	flw		f2, 0(x4)	# 1827
	fdiv	f1, f1, f2	# 1827
fle_cont.34429:
	fsw		f1, -148(x2)	# 1829
	sw		x1, -152(x2)	# 1829
	addi	x2, x2, -156	# 1829
	jal		x1, min_caml_floor	# 1829
	addi	x2, x2, 156	# 1829
	lw		x1, -152(x2)	# 1829
	flw		f2, -148(x2)	# 1829
	fsub	f1, f2, f1	# 1829
	lui		x4, %hi(l.29630)	# 1830
	ori		x4, x4, %lo(l.29630)	# 1830
	flw		f2, 0(x4)	# 1830
	lui		x4, %hi(l.27933)	# 1830
	ori		x4, x4, %lo(l.27933)	# 1830
	flw		f3, 0(x4)	# 1830
	flw		f4, -144(x2)	# 1830
	fsub	f4, f3, f4	# 1830
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1830
	fsub	f1, f3, f1	# 1830
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1830
	flw		f2, -28(x2)	# 122
	fle		f2, f1, fle_cont.34433	# 122
	fadd	f1, f0, f2	# 1831
fle_cont.34433:
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f3, 0(x4)	# 25
	fmul	f1, f3, f1	# 1832
	lui		x4, %hi(l.29637)	# 1832
	ori		x4, x4, %lo(l.29637)	# 1832
	flw		f3, 0(x4)	# 1832
	fdiv	f1, f1, f3	# 1832
	fsw		f1, 0(x8)	# 1832
	jal		x0, beq_cont.34413	# 1795
beq.34418:
	flw		f1, 0(x25)	# 1798
	lw		x6, 20(x4)	# 488
	flw		f2, 0(x6)	# 493
	fsub	f1, f1, f2	# 1798
	flw		f2, 0(x26)	# 1799
	flw		f3, 8(x6)	# 513
	fsub	f2, f2, f3	# 1799
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1800
	fsqrt	f1, f1	# 1800
	fdiv	f1, f1, f28	# 1800
	fsw		f1, -152(x2)	# 1801
	sw		x1, -156(x2)	# 1801
	addi	x2, x2, -160	# 1801
	jal		x1, min_caml_floor	# 1801
	addi	x2, x2, 160	# 1801
	lw		x1, -156(x2)	# 1801
	flw		f2, -152(x2)	# 1801
	fsub	f1, f2, f1	# 1801
	lui		x4, %hi(l.29619)	# 1801
	ori		x4, x4, %lo(l.29619)	# 1801
	flw		f2, 0(x4)	# 1801
	fmul	f1, f1, f2	# 1801
	sw		x1, -156(x2)	# 1802
	addi	x2, x2, -160	# 1802
	jal		x1, cos.2638.17994	# 1802
	addi	x2, x2, 160	# 1802
	lw		x1, -156(x2)	# 1802
	fmul	f1, f1, f1	# 127
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f2, 0(x4)	# 25
	fmul	f3, f1, f2	# 1803
	fsw		f3, 0(x10)	# 1803
	fsub	f1, f30, f1	# 1804
	fmul	f1, f1, f2	# 1804
	fsw		f1, 0(x8)	# 1804
	jal		x0, beq_cont.34413	# 1788
beq.34416:
	flw		f1, 0(x27)	# 1791
	lui		x6, %hi(l.29655)	# 1791
	ori		x6, x6, %lo(l.29655)	# 1791
	flw		f2, 0(x6)	# 1791
	fmul	f1, f1, f2	# 1791
	sw		x1, -156(x2)	# 1791
	addi	x2, x2, -160	# 1791
	jal		x1, sin.2636.17992	# 1791
	addi	x2, x2, 160	# 1791
	lw		x1, -156(x2)	# 1791
	fmul	f1, f1, f1	# 127
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f2, 0(x4)	# 25
	fmul	f3, f2, f1	# 1792
	fsw		f3, 0(x9)	# 1792
	fsub	f1, f30, f1	# 1793
	fmul	f1, f2, f1	# 1793
	fsw		f1, 0(x10)	# 1793
	jal		x0, beq_cont.34413	# 1770
beq.34414:
	flw		f1, 0(x25)	# 1773
	lw		x6, 20(x4)	# 488
	flw		f2, 0(x6)	# 493
	fsub	f1, f1, f2	# 1773
	fmul	f3, f1, f26	# 1775
	fsw		f26, -156(x2)	# 1775
	sw		x6, -160(x2)	# 1775
	fsw		f1, -164(x2)	# 1775
	fadd	f1, f0, f3	# 1775
	sw		x1, -168(x2)	# 1775
	addi	x2, x2, -172	# 1775
	jal		x1, min_caml_floor	# 1775
	addi	x2, x2, 172	# 1775
	lw		x1, -168(x2)	# 1775
	fmul	f1, f1, f27	# 1775
	flw		f3, -164(x2)	# 1776
	fsub	f1, f3, f1	# 1776
	flw		f4, 0(x26)	# 1778
	lw		x4, -160(x2)	# 513
	flw		f5, 8(x4)	# 513
	fsub	f4, f4, f5	# 1778
	flw		f5, -156(x2)	# 1780
	fmul	f5, f4, f5	# 1780
	fsw		f1, -168(x2)	# 1780
	fsw		f27, -172(x2)	# 1780
	fadd	f1, f0, f5	# 1780
	sw		x1, -176(x2)	# 1780
	addi	x2, x2, -180	# 1780
	jal		x1, min_caml_floor	# 1780
	addi	x2, x2, 180	# 1780
	lw		x1, -176(x2)	# 1780
	flw		f2, -172(x2)	# 1780
	fmul	f1, f1, f2	# 1780
	fsub	f1, f4, f1	# 1781
	flw		f2, -168(x2)	# 125
	fle		f28, f2, fle.34436	# 125
	fle		f28, f1, fle.34438	# 125
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f1, 0(x4)	# 25
	jal		x0, fle_cont.34435	# 125
fle.34438:
	flw		f1, -28(x2)	# 1785
	jal		x0, fle_cont.34435	# 125
fle.34436:
	fle		f28, f1, fle.34440	# 125
	flw		f1, -28(x2)	# 1786
	jal		x0, fle_cont.34435	# 125
fle.34440:
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f1, 0(x4)	# 25
fle_cont.34435:
	fsw		f1, 0(x10)	# 1783
beq_cont.34413:
	lw		x4, -40(x2)	# 1990
	lw		x5, -112(x2)	# 1990
	sw		x8, -176(x2)	# 1990
	sw		x10, -180(x2)	# 1990
	sw		x9, -184(x2)	# 1990
	sw		x1, -188(x2)	# 1990
	addi	x2, x2, -192	# 1990
	jal		x1, shadow_check_one_or_matrix.2934.18032	# 1990
	addi	x2, x2, 192	# 1990
	lw		x1, -188(x2)	# 1990
	lw		x5, -40(x2)	# 1990
	beq		x4, x5, beq.34442	# 1990
	jal		x0, fle_cont.34339	# 1990
beq.34442:
	addi	x4, x0, 40568	# 349
	flw		f1, 0(x4)	# 349
	addi	x4, x0, 40312	# 349
	flw		f2, 0(x4)	# 349
	fmul	f1, f1, f2	# 349
	addi	x4, x0, 40572	# 349
	flw		f2, 0(x4)	# 349
	addi	x4, x0, 40316	# 349
	flw		f3, 0(x4)	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	addi	x4, x0, 40576	# 349
	flw		f2, 0(x4)	# 349
	addi	x4, x0, 40320	# 349
	flw		f3, 0(x4)	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	fsub	f1, f0, f1	# 123
	flw		f2, -28(x2)	# 121
	fle		f1, f2, fle.34444	# 121
	jal		x0, fle_cont.34443	# 121
fle.34444:
	fadd	f1, f0, f2	# 1992
fle_cont.34443:
	flw		f2, -108(x2)	# 1993
	fmul	f1, f2, f1	# 1993
	lw		x4, -124(x2)	# 518
	lw		x4, 28(x4)	# 518
	flw		f2, 0(x4)	# 523
	fmul	f1, f1, f2	# 1993
	addi	x4, x0, 40592	# 359
	flw		f2, 0(x4)	# 359
	lw		x5, -184(x2)	# 359
	flw		f3, 0(x5)	# 359
	fmul	f3, f1, f3	# 359
	fadd	f2, f2, f3	# 359
	fsw		f2, 0(x4)	# 359
	addi	x4, x0, 40596	# 360
	flw		f2, 0(x4)	# 360
	lw		x5, -180(x2)	# 360
	flw		f3, 0(x5)	# 360
	fmul	f3, f1, f3	# 360
	fadd	f2, f2, f3	# 360
	fsw		f2, 0(x4)	# 360
	addi	x4, x0, 40600	# 361
	flw		f2, 0(x4)	# 361
	lw		x5, -176(x2)	# 361
	flw		f3, 0(x5)	# 361
	fmul	f1, f1, f3	# 361
	fadd	f1, f2, f1	# 361
	fsw		f1, 0(x4)	# 361
fle_cont.34339:
	lw		x4, -12(x2)	# 2011
	addi	x7, x4, -2	# 2011
	lw		x4, -8(x2)	# 2011
	lw		x5, -4(x2)	# 2011
	lw		x6, 0(x2)	# 2011
	jal		x0, iter_trace_diffuse_rays.2995.18070	# 2011
do_without_neighbors.3017.18075:
	ble		x5, x30, ble.34445	# 2092
	jalr	x0, x1, 0	# 2102
ble.34445:
	lw		x7, 8(x4)	# 634
	mul		x8, x30, x5	# 2095
	add		x7, x7, x8	# 2095
	lw		x7, 0(x7)	# 2095
	ble		x0, x7, ble.34447	# 2095
	jalr	x0, x1, 0	# 2101
ble.34447:
	lw		x7, 12(x4)	# 641
	add		x7, x7, x8	# 2097
	lw		x7, 0(x7)	# 2097
	sw		x4, 0(x2)	# 2097
	sw		x5, -4(x2)	# 2097
	beq		x7, x0, beq_cont.34449	# 2097
	lw		x7, 20(x4)	# 655
	lw		x10, 28(x4)	# 685
	lw		x11, 4(x4)	# 626
	lw		x12, 16(x4)	# 648
	add		x7, x7, x8	# 2059
	lw		x7, 0(x7)	# 2059
	flw		f1, 0(x7)	# 316
	addi	x13, x0, 40592	# 316
	fsw		f1, 0(x13)	# 316
	flw		f1, 4(x7)	# 317
	addi	x15, x0, 40596	# 317
	fsw		f1, 0(x15)	# 317
	flw		f1, 8(x7)	# 318
	addi	x7, x0, 40600	# 318
	fsw		f1, 0(x7)	# 318
	lw		x17, 24(x4)	# 671
	lw		x17, 0(x17)	# 673
	add		x10, x10, x8	# 2062
	lw		x10, 0(x10)	# 2062
	add		x11, x11, x8	# 2063
	lw		x11, 0(x11)	# 2063
	sw		x7, -8(x2)	# 2028
	sw		x15, -12(x2)	# 2028
	sw		x13, -16(x2)	# 2028
	sw		x8, -20(x2)	# 2028
	sw		x12, -24(x2)	# 2028
	sw		x30, -28(x2)	# 2028
	sw		x21, -32(x2)	# 2028
	sw		x10, -36(x2)	# 2028
	sw		x11, -40(x2)	# 2028
	sw		x20, -44(x2)	# 2028
	sw		x17, -48(x2)	# 2028
	beq		x17, x0, beq_cont.34451	# 2028
	addi	x9, x0, 40716	# 2029
	lw		x9, 0(x9)	# 2029
	flw		f1, 0(x11)	# 316
	addi	x18, x0, 40648	# 316
	fsw		f1, 0(x18)	# 316
	flw		f1, 4(x11)	# 317
	addi	x18, x0, 40652	# 317
	fsw		f1, 0(x18)	# 317
	flw		f1, 8(x11)	# 318
	addi	x18, x0, 40656	# 318
	fsw		f1, 0(x18)	# 318
	addi	x18, x0, 40000	# 1372
	lw		x18, 0(x18)	# 1372
	addi	x18, x18, -1	# 1372
	sw		x9, -52(x2)	# 1372
	addi	x5, x18, 0	# 1372
	addi	x4, x11, 0	# 1372
	sw		x1, -56(x2)	# 1372
	addi	x2, x2, -60	# 1372
	jal		x1, setup_startp_constants.2897.18017	# 1372
	addi	x2, x2, 60	# 1372
	lw		x1, -56(x2)	# 1372
	addi	x7, x0, 118	# 2021
	lw		x4, -52(x2)	# 2021
	lw		x5, -36(x2)	# 2021
	lw		x6, -40(x2)	# 2021
	sw		x1, -56(x2)	# 2021
	addi	x2, x2, -60	# 2021
	jal		x1, iter_trace_diffuse_rays.2995.18070	# 2021
	addi	x2, x2, 60	# 2021
	lw		x1, -56(x2)	# 2021
beq_cont.34451:
	lw		x4, -44(x2)	# 2032
	lw		x5, -48(x2)	# 2032
	beq		x5, x4, beq_cont.34453	# 2032
	addi	x4, x0, 40720	# 2033
	lw		x4, 0(x4)	# 2033
	lw		x6, -40(x2)	# 316
	flw		f1, 0(x6)	# 316
	addi	x7, x0, 40648	# 316
	fsw		f1, 0(x7)	# 316
	flw		f1, 4(x6)	# 317
	addi	x7, x0, 40652	# 317
	fsw		f1, 0(x7)	# 317
	flw		f1, 8(x6)	# 318
	addi	x7, x0, 40656	# 318
	fsw		f1, 0(x7)	# 318
	addi	x7, x0, 40000	# 1372
	lw		x7, 0(x7)	# 1372
	addi	x7, x7, -1	# 1372
	sw		x4, -56(x2)	# 1372
	addi	x5, x7, 0	# 1372
	addi	x4, x6, 0	# 1372
	sw		x1, -60(x2)	# 1372
	addi	x2, x2, -64	# 1372
	jal		x1, setup_startp_constants.2897.18017	# 1372
	addi	x2, x2, 64	# 1372
	lw		x1, -60(x2)	# 1372
	addi	x7, x0, 118	# 2021
	lw		x4, -56(x2)	# 2021
	lw		x5, -36(x2)	# 2021
	lw		x6, -40(x2)	# 2021
	sw		x1, -60(x2)	# 2021
	addi	x2, x2, -64	# 2021
	jal		x1, iter_trace_diffuse_rays.2995.18070	# 2021
	addi	x2, x2, 64	# 2021
	lw		x1, -60(x2)	# 2021
beq_cont.34453:
	lw		x4, -32(x2)	# 2036
	lw		x5, -48(x2)	# 2036
	beq		x5, x4, beq_cont.34455	# 2036
	addi	x4, x0, 40724	# 2037
	lw		x4, 0(x4)	# 2037
	lw		x6, -40(x2)	# 316
	flw		f1, 0(x6)	# 316
	addi	x7, x0, 40648	# 316
	fsw		f1, 0(x7)	# 316
	flw		f1, 4(x6)	# 317
	addi	x7, x0, 40652	# 317
	fsw		f1, 0(x7)	# 317
	flw		f1, 8(x6)	# 318
	addi	x7, x0, 40656	# 318
	fsw		f1, 0(x7)	# 318
	addi	x7, x0, 40000	# 1372
	lw		x7, 0(x7)	# 1372
	addi	x7, x7, -1	# 1372
	sw		x4, -60(x2)	# 1372
	addi	x5, x7, 0	# 1372
	addi	x4, x6, 0	# 1372
	sw		x1, -64(x2)	# 1372
	addi	x2, x2, -68	# 1372
	jal		x1, setup_startp_constants.2897.18017	# 1372
	addi	x2, x2, 68	# 1372
	lw		x1, -64(x2)	# 1372
	addi	x7, x0, 118	# 2021
	lw		x4, -60(x2)	# 2021
	lw		x5, -36(x2)	# 2021
	lw		x6, -40(x2)	# 2021
	sw		x1, -64(x2)	# 2021
	addi	x2, x2, -68	# 2021
	jal		x1, iter_trace_diffuse_rays.2995.18070	# 2021
	addi	x2, x2, 68	# 2021
	lw		x1, -64(x2)	# 2021
beq_cont.34455:
	lw		x5, -48(x2)	# 2040
	beq		x5, x22, beq_cont.34457	# 2040
	addi	x4, x0, 40728	# 2041
	lw		x4, 0(x4)	# 2041
	lw		x6, -40(x2)	# 316
	flw		f1, 0(x6)	# 316
	addi	x7, x0, 40648	# 316
	fsw		f1, 0(x7)	# 316
	flw		f1, 4(x6)	# 317
	addi	x7, x0, 40652	# 317
	fsw		f1, 0(x7)	# 317
	flw		f1, 8(x6)	# 318
	addi	x7, x0, 40656	# 318
	fsw		f1, 0(x7)	# 318
	addi	x7, x0, 40000	# 1372
	lw		x7, 0(x7)	# 1372
	addi	x7, x7, -1	# 1372
	sw		x4, -64(x2)	# 1372
	addi	x5, x7, 0	# 1372
	addi	x4, x6, 0	# 1372
	sw		x1, -68(x2)	# 1372
	addi	x2, x2, -72	# 1372
	jal		x1, setup_startp_constants.2897.18017	# 1372
	addi	x2, x2, 72	# 1372
	lw		x1, -68(x2)	# 1372
	addi	x7, x0, 118	# 2021
	lw		x4, -64(x2)	# 2021
	lw		x5, -36(x2)	# 2021
	lw		x6, -40(x2)	# 2021
	sw		x1, -68(x2)	# 2021
	addi	x2, x2, -72	# 2021
	jal		x1, iter_trace_diffuse_rays.2995.18070	# 2021
	addi	x2, x2, 72	# 2021
	lw		x1, -68(x2)	# 2021
beq_cont.34457:
	lw		x4, -28(x2)	# 2044
	lw		x5, -48(x2)	# 2044
	beq		x5, x4, beq_cont.34459	# 2044
	addi	x4, x0, 40732	# 2045
	lw		x4, 0(x4)	# 2045
	lw		x5, -40(x2)	# 316
	flw		f1, 0(x5)	# 316
	addi	x6, x0, 40648	# 316
	fsw		f1, 0(x6)	# 316
	flw		f1, 4(x5)	# 317
	addi	x6, x0, 40652	# 317
	fsw		f1, 0(x6)	# 317
	flw		f1, 8(x5)	# 318
	addi	x6, x0, 40656	# 318
	fsw		f1, 0(x6)	# 318
	addi	x6, x0, 40000	# 1372
	lw		x6, 0(x6)	# 1372
	addi	x6, x6, -1	# 1372
	sw		x4, -68(x2)	# 1372
	addi	x4, x5, 0	# 1372
	addi	x5, x6, 0	# 1372
	sw		x1, -72(x2)	# 1372
	addi	x2, x2, -76	# 1372
	jal		x1, setup_startp_constants.2897.18017	# 1372
	addi	x2, x2, 76	# 1372
	lw		x1, -72(x2)	# 1372
	addi	x7, x0, 118	# 2021
	lw		x4, -68(x2)	# 2021
	lw		x5, -36(x2)	# 2021
	lw		x6, -40(x2)	# 2021
	sw		x1, -72(x2)	# 2021
	addi	x2, x2, -76	# 2021
	jal		x1, iter_trace_diffuse_rays.2995.18070	# 2021
	addi	x2, x2, 76	# 2021
	lw		x1, -72(x2)	# 2021
beq_cont.34459:
	lw		x4, -24(x2)	# 2064
	lw		x5, -20(x2)	# 2064
	add		x4, x4, x5	# 2064
	lw		x4, 0(x4)	# 2064
	addi	x5, x0, 40604	# 389
	flw		f1, 0(x5)	# 389
	flw		f2, 0(x4)	# 389
	lw		x6, -16(x2)	# 389
	flw		f3, 0(x6)	# 389
	fmul	f2, f2, f3	# 389
	fadd	f1, f1, f2	# 389
	fsw		f1, 0(x5)	# 389
	addi	x5, x0, 40608	# 390
	flw		f1, 0(x5)	# 390
	flw		f2, 4(x4)	# 390
	lw		x6, -12(x2)	# 390
	flw		f3, 0(x6)	# 390
	fmul	f2, f2, f3	# 390
	fadd	f1, f1, f2	# 390
	fsw		f1, 0(x5)	# 390
	addi	x5, x0, 40612	# 391
	flw		f1, 0(x5)	# 391
	flw		f2, 8(x4)	# 391
	lw		x4, -8(x2)	# 391
	flw		f3, 0(x4)	# 391
	fmul	f2, f2, f3	# 391
	fadd	f1, f1, f2	# 391
	fsw		f1, 0(x5)	# 391
beq_cont.34449:
	lw		x4, -4(x2)	# 2100
	addi	x5, x4, 1	# 2100
	lw		x4, 0(x2)	# 2100
	jal		x0, do_without_neighbors.3017.18075	# 2100
try_exploit_neighbors.3033.18078:
	mul		x10, x30, x4	# 2144
	add		x11, x7, x10	# 2144
	lw		x11, 0(x11)	# 2144
	ble		x9, x30, ble.34461	# 2145
	jalr	x0, x1, 0	# 2164
ble.34461:
	lw		x12, 8(x11)	# 634
	mul		x13, x30, x9	# 2120
	add		x12, x12, x13	# 2120
	lw		x12, 0(x12)	# 2120
	ble		x0, x12, ble.34463	# 2148
	jalr	x0, x1, 0	# 2163
ble.34463:
	add		x15, x6, x10	# 2128
	lw		x15, 0(x15)	# 2128
	lw		x16, 8(x15)	# 634
	add		x16, x16, x13	# 2120
	lw		x16, 0(x16)	# 2120
	beq		x16, x12, beq.34466	# 2128
	addi	x12, x0, 0	# 2136
	jal		x0, beq_cont.34465	# 2128
beq.34466:
	add		x16, x8, x10	# 2129
	lw		x16, 0(x16)	# 2129
	lw		x16, 8(x16)	# 634
	add		x16, x16, x13	# 2120
	lw		x16, 0(x16)	# 2120
	beq		x16, x12, beq.34468	# 2129
	addi	x12, x0, 0	# 2135
	jal		x0, beq_cont.34465	# 2129
beq.34468:
	addi	x16, x4, -1	# 2130
	mul		x16, x30, x16	# 2130
	add		x16, x7, x16	# 2130
	lw		x16, 0(x16)	# 2130
	lw		x16, 8(x16)	# 634
	add		x16, x16, x13	# 2120
	lw		x16, 0(x16)	# 2120
	beq		x16, x12, beq.34470	# 2130
	addi	x12, x0, 0	# 2134
	jal		x0, beq_cont.34465	# 2130
beq.34470:
	addi	x16, x4, 1	# 2131
	mul		x16, x30, x16	# 2131
	add		x16, x7, x16	# 2131
	lw		x16, 0(x16)	# 2131
	lw		x16, 8(x16)	# 634
	add		x16, x16, x13	# 2120
	lw		x16, 0(x16)	# 2120
	beq		x16, x12, beq.34472	# 2131
	addi	x12, x0, 0	# 2133
	jal		x0, beq_cont.34465	# 2131
beq.34472:
	addi	x12, x0, 1	# 2132
beq_cont.34465:
	beq		x12, x0, beq.34473	# 2150
	lw		x12, 12(x11)	# 641
	add		x12, x12, x13	# 2154
	lw		x12, 0(x12)	# 2154
	beq		x12, x0, beq_cont.34474	# 2154
	lw		x12, 20(x15)	# 655
	addi	x14, x4, -1	# 2074
	mul		x14, x30, x14	# 2074
	add		x14, x7, x14	# 2074
	lw		x14, 0(x14)	# 2074
	lw		x14, 20(x14)	# 655
	lw		x15, 20(x11)	# 655
	addi	x16, x4, 1	# 2076
	mul		x16, x30, x16	# 2076
	add		x16, x7, x16	# 2076
	lw		x16, 0(x16)	# 2076
	lw		x16, 20(x16)	# 655
	add		x10, x8, x10	# 2077
	lw		x10, 0(x10)	# 2077
	lw		x10, 20(x10)	# 655
	add		x12, x12, x13	# 2079
	lw		x12, 0(x12)	# 2079
	flw		f1, 0(x12)	# 316
	addi	x17, x0, 40592	# 316
	fsw		f1, 0(x17)	# 316
	flw		f1, 4(x12)	# 317
	addi	x18, x0, 40596	# 317
	fsw		f1, 0(x18)	# 317
	flw		f1, 8(x12)	# 318
	addi	x12, x0, 40600	# 318
	fsw		f1, 0(x12)	# 318
	add		x14, x14, x13	# 2080
	lw		x14, 0(x14)	# 2080
	flw		f1, 0(x17)	# 366
	flw		f2, 0(x14)	# 366
	fadd	f1, f1, f2	# 366
	fsw		f1, 0(x17)	# 366
	flw		f1, 0(x18)	# 367
	flw		f2, 4(x14)	# 367
	fadd	f1, f1, f2	# 367
	fsw		f1, 0(x18)	# 367
	flw		f1, 0(x12)	# 368
	flw		f2, 8(x14)	# 368
	fadd	f1, f1, f2	# 368
	fsw		f1, 0(x12)	# 368
	add		x14, x15, x13	# 2081
	lw		x14, 0(x14)	# 2081
	flw		f1, 0(x17)	# 366
	flw		f2, 0(x14)	# 366
	fadd	f1, f1, f2	# 366
	fsw		f1, 0(x17)	# 366
	flw		f1, 0(x18)	# 367
	flw		f2, 4(x14)	# 367
	fadd	f1, f1, f2	# 367
	fsw		f1, 0(x18)	# 367
	flw		f1, 0(x12)	# 368
	flw		f2, 8(x14)	# 368
	fadd	f1, f1, f2	# 368
	fsw		f1, 0(x12)	# 368
	add		x14, x16, x13	# 2082
	lw		x14, 0(x14)	# 2082
	flw		f1, 0(x17)	# 366
	flw		f2, 0(x14)	# 366
	fadd	f1, f1, f2	# 366
	fsw		f1, 0(x17)	# 366
	flw		f1, 0(x18)	# 367
	flw		f2, 4(x14)	# 367
	fadd	f1, f1, f2	# 367
	fsw		f1, 0(x18)	# 367
	flw		f1, 0(x12)	# 368
	flw		f2, 8(x14)	# 368
	fadd	f1, f1, f2	# 368
	fsw		f1, 0(x12)	# 368
	add		x10, x10, x13	# 2083
	lw		x10, 0(x10)	# 2083
	flw		f1, 0(x17)	# 366
	flw		f2, 0(x10)	# 366
	fadd	f1, f1, f2	# 366
	fsw		f1, 0(x17)	# 366
	flw		f1, 0(x18)	# 367
	flw		f2, 4(x10)	# 367
	fadd	f1, f1, f2	# 367
	fsw		f1, 0(x18)	# 367
	flw		f1, 0(x12)	# 368
	flw		f2, 8(x10)	# 368
	fadd	f1, f1, f2	# 368
	fsw		f1, 0(x12)	# 368
	lw		x10, 16(x11)	# 648
	add		x10, x10, x13	# 2086
	lw		x10, 0(x10)	# 2086
	addi	x11, x0, 40604	# 389
	flw		f1, 0(x11)	# 389
	flw		f2, 0(x10)	# 389
	flw		f3, 0(x17)	# 389
	fmul	f2, f2, f3	# 389
	fadd	f1, f1, f2	# 389
	fsw		f1, 0(x11)	# 389
	addi	x11, x0, 40608	# 390
	flw		f1, 0(x11)	# 390
	flw		f2, 4(x10)	# 390
	flw		f3, 0(x18)	# 390
	fmul	f2, f2, f3	# 390
	fadd	f1, f1, f2	# 390
	fsw		f1, 0(x11)	# 390
	addi	x11, x0, 40612	# 391
	flw		f1, 0(x11)	# 391
	flw		f2, 8(x10)	# 391
	flw		f3, 0(x12)	# 391
	fmul	f2, f2, f3	# 391
	fadd	f1, f1, f2	# 391
	fsw		f1, 0(x11)	# 391
beq_cont.34474:
	addi	x9, x9, 1	# 2159
	jal		x0, try_exploit_neighbors.3033.18078	# 2159
beq.34473:
	addi	x5, x9, 0	# 2162
	addi	x4, x11, 0	# 2162
	jal		x0, do_without_neighbors.3017.18075	# 2162
pretrace_diffuse_rays.3048.18085:
	ble		x5, x30, ble.34476	# 2220
	jalr	x0, x1, 0	# 2244
ble.34476:
	lw		x6, 8(x4)	# 634
	mul		x7, x30, x5	# 2120
	add		x6, x6, x7	# 2120
	lw		x6, 0(x6)	# 2120
	ble		x0, x6, ble.34478	# 2224
	jalr	x0, x1, 0	# 2243
ble.34478:
	lw		x6, 12(x4)	# 641
	add		x6, x6, x7	# 2227
	lw		x6, 0(x6)	# 2227
	sw		x5, 0(x2)	# 2227
	beq		x6, x0, beq_cont.34480	# 2227
	lw		x6, 24(x4)	# 671
	lw		x6, 0(x6)	# 673
	addi	x8, x0, 40592	# 304
	fsw		f0, 0(x8)	# 304
	addi	x9, x0, 40596	# 305
	fsw		f0, 0(x9)	# 305
	addi	x10, x0, 40600	# 306
	fsw		f0, 0(x10)	# 306
	lw		x11, 28(x4)	# 685
	lw		x12, 4(x4)	# 626
	mul		x6, x30, x6	# 2236
	addi	x6, x6, 40716	# 2236
	lw		x6, 0(x6)	# 2236
	add		x11, x11, x7	# 2237
	lw		x11, 0(x11)	# 2237
	add		x12, x12, x7	# 2238
	lw		x12, 0(x12)	# 2238
	flw		f1, 0(x12)	# 316
	addi	x13, x0, 40648	# 316
	fsw		f1, 0(x13)	# 316
	flw		f1, 4(x12)	# 317
	addi	x13, x0, 40652	# 317
	fsw		f1, 0(x13)	# 317
	flw		f1, 8(x12)	# 318
	addi	x13, x0, 40656	# 318
	fsw		f1, 0(x13)	# 318
	addi	x13, x0, 40000	# 1372
	lw		x13, 0(x13)	# 1372
	addi	x13, x13, -1	# 1372
	sw		x10, -4(x2)	# 1372
	sw		x9, -8(x2)	# 1372
	sw		x8, -12(x2)	# 1372
	sw		x7, -16(x2)	# 1372
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
	lw		x6, -16(x2)	# 2240
	add		x5, x5, x6	# 2240
	lw		x5, 0(x5)	# 2240
	lw		x6, -12(x2)	# 316
	flw		f1, 0(x6)	# 316
	fsw		f1, 0(x5)	# 316
	lw		x6, -8(x2)	# 317
	flw		f1, 0(x6)	# 317
	fsw		f1, 4(x5)	# 317
	lw		x6, -4(x2)	# 318
	flw		f1, 0(x6)	# 318
	fsw		f1, 8(x5)	# 318
beq_cont.34480:
	lw		x5, 0(x2)	# 2242
	addi	x5, x5, 1	# 2242
	jal		x0, pretrace_diffuse_rays.3048.18085	# 2242
pretrace_pixels.3051.18088:
	add		x7, x0, x0	# 6
	ble		x0, x5, ble.34482	# 2250
	jalr	x0, x1, 0	# 2270
ble.34482:
	addi	x8, x0, 40632	# 2252
	flw		f4, 0(x8)	# 2252
	addi	x8, x0, 40624	# 2252
	lw		x8, 0(x8)	# 2252
	sub		x8, x5, x8	# 2252
	sw		x6, 0(x2)	# 2252
	sw		x4, -4(x2)	# 2252
	sw		x5, -8(x2)	# 2252
	fsw		f2, -12(x2)	# 2252
	fsw		f1, -16(x2)	# 2252
	addi	x4, x8, 0	# 2252
	sw		x1, -20(x2)	# 2252
	addi	x2, x2, -24	# 2252
	jal		x1, min_caml_float_of_int	# 2252
	addi	x2, x2, 24	# 2252
	lw		x1, -20(x2)	# 2252
	fmul	f1, f4, f1	# 2252
	addi	x4, x0, 40660	# 2253
	flw		f2, 0(x4)	# 2253
	fmul	f2, f1, f2	# 2253
	flw		f4, -16(x2)	# 2253
	fadd	f2, f2, f4	# 2253
	addi	x5, x0, 40696	# 90
	fsw		f2, 0(x5)	# 2253
	addi	x4, x0, 40664	# 2254
	flw		f2, 0(x4)	# 2254
	fmul	f2, f1, f2	# 2254
	flw		f5, -12(x2)	# 2254
	fadd	f2, f2, f5	# 2254
	addi	x4, x0, 40700	# 2254
	fsw		f2, 0(x4)	# 2254
	addi	x6, x0, 40668	# 2255
	flw		f2, 0(x6)	# 2255
	fmul	f1, f1, f2	# 2255
	fadd	f1, f1, f3	# 2255
	addi	x6, x0, 40704	# 2255
	fsw		f1, 0(x6)	# 2255
	flw		f1, 0(x5)	# 340
	fmul	f2, f1, f1	# 127
	flw		f6, 0(x4)	# 340
	fmul	f7, f6, f6	# 127
	fadd	f2, f2, f7	# 340
	flw		f7, 0(x6)	# 340
	fmul	f8, f7, f7	# 127
	fadd	f2, f2, f8	# 340
	fsqrt	f2, f2	# 340
	fadd	f8, f0, f0	# 11
	feq		f2, f0, feq.34485	# 120
	fdiv	f2, f30, f2	# 341
	jal		x0, feq_cont.34484	# 120
feq.34485:
	fadd	f2, f0, f30	# 341
feq_cont.34484:
	fmul	f1, f1, f2	# 342
	fsw		f1, 0(x5)	# 342
	fmul	f1, f6, f2	# 343
	fsw		f1, 0(x4)	# 343
	fmul	f1, f7, f2	# 344
	fsw		f1, 0(x6)	# 344
	addi	x4, x0, 40604	# 304
	fsw		f0, 0(x4)	# 304
	addi	x6, x0, 40608	# 305
	fsw		f0, 0(x6)	# 305
	addi	x8, x0, 40612	# 306
	fsw		f0, 0(x8)	# 306
	addi	x9, x0, 40300	# 316
	flw		f1, 0(x9)	# 316
	addi	x9, x0, 40636	# 316
	fsw		f1, 0(x9)	# 316
	addi	x9, x0, 40304	# 317
	flw		f1, 0(x9)	# 317
	addi	x9, x0, 40640	# 317
	fsw		f1, 0(x9)	# 317
	addi	x9, x0, 40308	# 318
	flw		f1, 0(x9)	# 318
	addi	x9, x0, 40644	# 318
	fsw		f1, 0(x9)	# 318
	fadd	f1, f0, f30	# 2261
	lw		x9, -8(x2)	# 2261
	mul		x10, x30, x9	# 2261
	lw		x11, -4(x2)	# 2261
	add		x10, x11, x10	# 2261
	lw		x10, 0(x10)	# 2261
	fsw		f3, -20(x2)	# 2261
	sw		x0, -24(x2)	# 2261
	sw		x8, -28(x2)	# 2261
	sw		x6, -32(x2)	# 2261
	sw		x4, -36(x2)	# 2261
	sw		x10, -40(x2)	# 2261
	addi	x6, x10, 0	# 2261
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
	flw		f1, 0(x6)	# 316
	fsw		f1, 0(x5)	# 316
	lw		x6, -32(x2)	# 317
	flw		f1, 0(x6)	# 317
	fsw		f1, 4(x5)	# 317
	lw		x6, -28(x2)	# 318
	flw		f1, 0(x6)	# 318
	fsw		f1, 8(x5)	# 318
	lw		x5, 24(x4)	# 678
	lw		x6, 0(x2)	# 680
	sw		x6, 0(x5)	# 680
	lw		x5, -24(x2)	# 2266
	sw		x1, -44(x2)	# 2266
	addi	x2, x2, -48	# 2266
	jal		x1, pretrace_diffuse_rays.3048.18085	# 2266
	addi	x2, x2, 48	# 2266
	lw		x1, -44(x2)	# 2266
	lw		x4, -8(x2)	# 2268
	addi	x5, x4, -1	# 2268
	lw		x4, 0(x2)	# 281
	addi	x4, x4, 1	# 281
	addi	x6, x0, 5	# 98
	ble		x6, x4, ble.34487	# 282
	addi	x6, x4, 0	# 282
	jal		x0, ble_cont.34486	# 282
ble.34487:
	addi	x6, x4, -5	# 282
ble_cont.34486:
	lw		x4, -4(x2)	# 2268
	flw		f1, -16(x2)	# 2268
	flw		f2, -12(x2)	# 2268
	flw		f3, -20(x2)	# 2268
	jal		x0, pretrace_pixels.3051.18088	# 2268
scan_pixel.3062.18095:
	add		x10, x0, x0	# 6
	addi	x11, x0, 40616	# 2291
	lw		x11, 0(x11)	# 2291
	ble		x11, x4, ble.34488	# 2291
	mul		x12, x30, x4	# 2294
	add		x12, x7, x12	# 2294
	lw		x12, 0(x12)	# 2294
	lw		x13, 0(x12)	# 619
	flw		f1, 0(x13)	# 316
	addi	x14, x0, 40604	# 316
	fsw		f1, 0(x14)	# 316
	flw		f1, 4(x13)	# 317
	addi	x15, x0, 40608	# 317
	fsw		f1, 0(x15)	# 317
	flw		f1, 8(x13)	# 318
	addi	x13, x0, 40612	# 318
	fsw		f1, 0(x13)	# 318
	addi	x16, x0, 40620	# 2107
	lw		x16, 0(x16)	# 2107
	addi	x17, x5, 1	# 2107
	ble		x16, x17, ble.34490	# 2107
	ble		x5, x0, ble.34492	# 2108
	addi	x16, x4, 1	# 2109
	ble		x11, x16, ble.34494	# 2109
	ble		x4, x0, ble.34496	# 2110
	addi	x11, x0, 1	# 2111
	jal		x0, ble_cont.34489	# 2110
ble.34496:
	addi	x11, x0, 0	# 2112
	jal		x0, ble_cont.34489	# 2109
ble.34494:
	addi	x11, x0, 0	# 2113
	jal		x0, ble_cont.34489	# 2108
ble.34492:
	addi	x11, x0, 0	# 2114
	jal		x0, ble_cont.34489	# 2107
ble.34490:
	addi	x11, x0, 0	# 2115
ble_cont.34489:
	sw		x8, 0(x2)	# 2297
	sw		x7, -4(x2)	# 2297
	sw		x6, -8(x2)	# 2297
	sw		x5, -12(x2)	# 2297
	sw		x4, -16(x2)	# 2297
	sw		x13, -20(x2)	# 2297
	sw		x15, -24(x2)	# 2297
	sw		x0, -28(x2)	# 2297
	sw		x14, -32(x2)	# 2297
	sw		x9, -36(x2)	# 2297
	beq		x11, x0, beq.34498	# 2297
	addi	x9, x0, 0	# 2298
	sw		x1, -40(x2)	# 2298
	addi	x2, x2, -44	# 2298
	jal		x1, try_exploit_neighbors.3033.18078	# 2298
	addi	x2, x2, 44	# 2298
	lw		x1, -40(x2)	# 2298
	jal		x0, beq_cont.34497	# 2297
beq.34498:
	addi	x5, x0, 0	# 2300
	addi	x4, x12, 0	# 2300
	sw		x1, -40(x2)	# 2300
	addi	x2, x2, -44	# 2300
	jal		x1, do_without_neighbors.3017.18075	# 2300
	addi	x2, x2, 44	# 2300
	lw		x1, -40(x2)	# 2300
beq_cont.34497:
	lw		x5, -36(x2)	# 2197
	beq		x5, x22, beq.34500	# 2197
	lw		x4, -32(x2)	# 2205
	flw		f1, 0(x4)	# 2205
	sw		x1, -40(x2)	# 2191
	addi	x2, x2, -44	# 2191
	jal		x1, min_caml_int_of_float	# 2191
	addi	x2, x2, 44	# 2191
	lw		x1, -40(x2)	# 2191
	addi	x5, x0, 255	# 2192
	ble		x4, x5, ble.34502	# 2192
	addi	x4, x0, 255	# 2192
	jal		x0, ble_cont.34501	# 2192
ble.34502:
	lw		x6, -28(x2)	# 2192
	ble		x6, x4, ble_cont.34501	# 2192
	addi	x4, x0, 0	# 2192
ble_cont.34501:
	sw		x1, -40(x2)	# 2193
	addi	x2, x2, -44	# 2193
	jal		x1, min_caml_print_char	# 2193
	addi	x2, x2, 44	# 2193
	lw		x1, -40(x2)	# 2193
	lw		x4, -24(x2)	# 2206
	flw		f1, 0(x4)	# 2206
	sw		x5, -40(x2)	# 2191
	sw		x1, -44(x2)	# 2191
	addi	x2, x2, -48	# 2191
	jal		x1, min_caml_int_of_float	# 2191
	addi	x2, x2, 48	# 2191
	lw		x1, -44(x2)	# 2191
	lw		x5, -40(x2)	# 2192
	ble		x4, x5, ble.34506	# 2192
	addi	x4, x0, 255	# 2192
	jal		x0, ble_cont.34505	# 2192
ble.34506:
	lw		x6, -28(x2)	# 2192
	ble		x6, x4, ble_cont.34505	# 2192
	addi	x4, x0, 0	# 2192
ble_cont.34505:
	sw		x1, -44(x2)	# 2193
	addi	x2, x2, -48	# 2193
	jal		x1, min_caml_print_char	# 2193
	addi	x2, x2, 48	# 2193
	lw		x1, -44(x2)	# 2193
	lw		x4, -20(x2)	# 2207
	flw		f1, 0(x4)	# 2207
	sw		x1, -44(x2)	# 2191
	addi	x2, x2, -48	# 2191
	jal		x1, min_caml_int_of_float	# 2191
	addi	x2, x2, 48	# 2191
	lw		x1, -44(x2)	# 2191
	lw		x5, -40(x2)	# 2192
	ble		x4, x5, ble.34510	# 2192
	addi	x4, x0, 255	# 2192
	jal		x0, ble_cont.34509	# 2192
ble.34510:
	lw		x5, -28(x2)	# 2192
	ble		x5, x4, ble_cont.34509	# 2192
	addi	x4, x0, 0	# 2192
ble_cont.34509:
	sw		x1, -44(x2)	# 2193
	addi	x2, x2, -48	# 2193
	jal		x1, min_caml_print_char	# 2193
	addi	x2, x2, 48	# 2193
	lw		x1, -44(x2)	# 2193
	jal		x0, beq_cont.34499	# 2197
beq.34500:
	lw		x4, -32(x2)	# 2198
	flw		f1, 0(x4)	# 2198
	sw		x1, -44(x2)	# 2185
	addi	x2, x2, -48	# 2185
	jal		x1, min_caml_int_of_float	# 2185
	addi	x2, x2, 48	# 2185
	lw		x1, -44(x2)	# 2185
	addi	x5, x0, 255	# 2186
	ble		x4, x5, ble.34514	# 2186
	addi	x4, x0, 255	# 2186
	jal		x0, ble_cont.34513	# 2186
ble.34514:
	lw		x6, -28(x2)	# 2186
	ble		x6, x4, ble_cont.34513	# 2186
	addi	x4, x0, 0	# 2186
ble_cont.34513:
	addi	x6, x0, 100	# 238
	sw		x4, -44(x2)	# 238
	ble		x6, x4, ble_cont.34517	# 238
	addi	x7, x0, 48	# 238
	addi	x4, x7, 0	# 238
	sw		x1, -48(x2)	# 238
	addi	x2, x2, -52	# 238
	jal		x1, min_caml_print_char	# 238
	addi	x2, x2, 52	# 238
	lw		x1, -48(x2)	# 238
ble_cont.34517:
	addi	x4, x0, 10	# 239
	lw		x7, -44(x2)	# 239
	sw		x4, -48(x2)	# 239
	ble		x4, x7, ble_cont.34519	# 239
	addi	x8, x0, 48	# 239
	addi	x4, x8, 0	# 239
	sw		x1, -52(x2)	# 239
	addi	x2, x2, -56	# 239
	jal		x1, min_caml_print_char	# 239
	addi	x2, x2, 56	# 239
	lw		x1, -52(x2)	# 239
ble_cont.34519:
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
	lw		x4, -24(x2)	# 2200
	flw		f1, 0(x4)	# 2200
	sw		x1, -64(x2)	# 2185
	addi	x2, x2, -68	# 2185
	jal		x1, min_caml_int_of_float	# 2185
	addi	x2, x2, 68	# 2185
	lw		x1, -64(x2)	# 2185
	lw		x5, -56(x2)	# 2186
	ble		x4, x5, ble.34522	# 2186
	addi	x4, x0, 255	# 2186
	jal		x0, ble_cont.34521	# 2186
ble.34522:
	lw		x6, -28(x2)	# 2186
	ble		x6, x4, ble_cont.34521	# 2186
	addi	x4, x0, 0	# 2186
ble_cont.34521:
	lw		x6, -52(x2)	# 238
	sw		x4, -64(x2)	# 238
	ble		x6, x4, ble_cont.34525	# 238
	addi	x7, x0, 48	# 238
	addi	x4, x7, 0	# 238
	sw		x1, -68(x2)	# 238
	addi	x2, x2, -72	# 238
	jal		x1, min_caml_print_char	# 238
	addi	x2, x2, 72	# 238
	lw		x1, -68(x2)	# 238
ble_cont.34525:
	lw		x4, -64(x2)	# 239
	lw		x7, -48(x2)	# 239
	ble		x7, x4, ble_cont.34527	# 239
	addi	x8, x0, 48	# 239
	addi	x4, x8, 0	# 239
	sw		x1, -68(x2)	# 239
	addi	x2, x2, -72	# 239
	jal		x1, min_caml_print_char	# 239
	addi	x2, x2, 72	# 239
	lw		x1, -68(x2)	# 239
ble_cont.34527:
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
	lw		x4, -20(x2)	# 2202
	flw		f1, 0(x4)	# 2202
	sw		x1, -68(x2)	# 2185
	addi	x2, x2, -72	# 2185
	jal		x1, min_caml_int_of_float	# 2185
	addi	x2, x2, 72	# 2185
	lw		x1, -68(x2)	# 2185
	lw		x5, -56(x2)	# 2186
	ble		x4, x5, ble.34530	# 2186
	addi	x4, x0, 255	# 2186
	jal		x0, ble_cont.34529	# 2186
ble.34530:
	lw		x5, -28(x2)	# 2186
	ble		x5, x4, ble_cont.34529	# 2186
	addi	x4, x0, 0	# 2186
ble_cont.34529:
	lw		x5, -52(x2)	# 238
	sw		x4, -68(x2)	# 238
	ble		x5, x4, ble_cont.34533	# 238
	addi	x5, x0, 48	# 238
	addi	x4, x5, 0	# 238
	sw		x1, -72(x2)	# 238
	addi	x2, x2, -76	# 238
	jal		x1, min_caml_print_char	# 238
	addi	x2, x2, 76	# 238
	lw		x1, -72(x2)	# 238
ble_cont.34533:
	lw		x4, -68(x2)	# 239
	lw		x5, -48(x2)	# 239
	ble		x5, x4, ble_cont.34535	# 239
	addi	x6, x0, 48	# 239
	addi	x4, x6, 0	# 239
	sw		x1, -72(x2)	# 239
	addi	x2, x2, -76	# 239
	jal		x1, min_caml_print_char	# 239
	addi	x2, x2, 76	# 239
	lw		x1, -72(x2)	# 239
ble_cont.34535:
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
beq_cont.34499:
	lw		x4, -16(x2)	# 2305
	addi	x4, x4, 1	# 2305
	lw		x5, -12(x2)	# 2305
	lw		x6, -8(x2)	# 2305
	lw		x7, -4(x2)	# 2305
	lw		x8, 0(x2)	# 2305
	lw		x9, -36(x2)	# 2305
	jal		x0, scan_pixel.3062.18095	# 2305
ble.34488:
	jalr	x0, x1, 0	# 2306
scan_line.3069.18102:
	addi	x10, x0, 40620	# 2312
	lw		x10, 0(x10)	# 2312
	ble		x10, x4, ble.34538	# 2312
	addi	x10, x10, -1	# 2314
	sw		x8, 0(x2)	# 2314
	sw		x9, -4(x2)	# 2314
	sw		x7, -8(x2)	# 2314
	sw		x6, -12(x2)	# 2314
	sw		x5, -16(x2)	# 2314
	sw		x4, -20(x2)	# 2314
	ble		x10, x4, ble_cont.34539	# 2314
	addi	x10, x4, 1	# 2315
	addi	x11, x0, 40632	# 2275
	flw		f1, 0(x11)	# 2275
	addi	x11, x0, 40628	# 2275
	lw		x11, 0(x11)	# 2275
	sub		x10, x10, x11	# 2275
	fsw		f1, -24(x2)	# 2275
	addi	x4, x10, 0	# 2275
	sw		x1, -28(x2)	# 2275
	addi	x2, x2, -32	# 2275
	jal		x1, min_caml_float_of_int	# 2275
	addi	x2, x2, 32	# 2275
	lw		x1, -28(x2)	# 2275
	flw		f2, -24(x2)	# 2275
	fmul	f1, f2, f1	# 2275
	addi	x4, x0, 40672	# 2278
	flw		f2, 0(x4)	# 2278
	fmul	f2, f1, f2	# 2278
	addi	x4, x0, 40684	# 2278
	flw		f3, 0(x4)	# 2278
	fadd	f2, f2, f3	# 2278
	addi	x4, x0, 40676	# 2279
	flw		f3, 0(x4)	# 2279
	fmul	f3, f1, f3	# 2279
	addi	x4, x0, 40688	# 2279
	flw		f4, 0(x4)	# 2279
	fadd	f3, f3, f4	# 2279
	addi	x4, x0, 40680	# 2280
	flw		f4, 0(x4)	# 2280
	fmul	f1, f1, f4	# 2280
	addi	x4, x0, 40692	# 2280
	flw		f4, 0(x4)	# 2280
	fadd	f1, f1, f4	# 2280
	addi	x4, x0, 40616	# 2281
	lw		x4, 0(x4)	# 2281
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
ble_cont.34539:
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
	ble		x6, x5, ble.34542	# 282
	addi	x8, x5, 0	# 282
	jal		x0, ble_cont.34541	# 282
ble.34542:
	addi	x8, x5, -5	# 282
ble_cont.34541:
	lw		x5, -12(x2)	# 2318
	lw		x6, -8(x2)	# 2318
	lw		x7, -16(x2)	# 2318
	lw		x9, -4(x2)	# 2318
	jal		x0, scan_line.3069.18102	# 2318
ble.34538:
	jalr	x0, x1, 0	# 2319
init_line_elements.3080.18109:
	add		x6, x0, x0	# 6
	ble		x0, x5, ble.34544	# 2354
	jalr	x0, x1, 0	# 2358
ble.34544:
	fadd	f1, f0, f0	# 11
	add		x7, x0, x22	# 16
	sw		x4, 0(x2)	# 2341
	sw		x5, -4(x2)	# 2341
	fsw		f0, -8(x2)	# 2341
	sw		x22, -12(x2)	# 2341
	addi	x4, x22, 0	# 2341
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
	add		x5, x0, x20	# 6
	lw		x6, -28(x2)	# 2331
	sw		x4, 4(x6)	# 2331
	lw		x4, -12(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x20, -32(x2)	# 2332
	sw		x1, -36(x2)	# 2332
	addi	x2, x2, -40	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 40	# 2332
	lw		x1, -36(x2)	# 2332
	sw		x4, 8(x6)	# 2332
	lw		x4, -12(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -36(x2)	# 2333
	addi	x2, x2, -40	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 40	# 2333
	lw		x1, -36(x2)	# 2333
	sw		x4, 12(x6)	# 2333
	lw		x4, -12(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -36(x2)	# 2334
	addi	x2, x2, -40	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 40	# 2334
	lw		x1, -36(x2)	# 2334
	sw		x4, 16(x6)	# 2334
	lw		x4, -24(x2)	# 2343
	lw		x5, -20(x2)	# 2343
	sw		x1, -36(x2)	# 2343
	addi	x2, x2, -40	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 40	# 2343
	lw		x1, -36(x2)	# 2343
	lw		x5, -24(x2)	# 2344
	lw		x6, -20(x2)	# 2344
	sw		x4, -36(x2)	# 2344
	addi	x4, x5, 0	# 2344
	addi	x5, x6, 0	# 2344
	sw		x1, -40(x2)	# 2344
	addi	x2, x2, -44	# 2344
	jal		x1, min_caml_create_array	# 2344
	addi	x2, x2, 44	# 2344
	lw		x1, -40(x2)	# 2344
	lw		x5, -12(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x4, -40(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -44(x2)	# 2329
	addi	x2, x2, -48	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 48	# 2329
	lw		x1, -44(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -24(x2)	# 2330
	sw		x1, -44(x2)	# 2330
	addi	x2, x2, -48	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 48	# 2330
	lw		x1, -44(x2)	# 2330
	lw		x5, -12(x2)	# 2331
	flw		f1, -8(x2)	# 2331
	sw		x4, -44(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -48(x2)	# 2331
	addi	x2, x2, -52	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 52	# 2331
	lw		x1, -48(x2)	# 2331
	lw		x5, -44(x2)	# 2331
	sw		x4, 4(x5)	# 2331
	lw		x4, -12(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -48(x2)	# 2332
	addi	x2, x2, -52	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 52	# 2332
	lw		x1, -48(x2)	# 2332
	lw		x5, -44(x2)	# 2332
	sw		x4, 8(x5)	# 2332
	lw		x4, -12(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -48(x2)	# 2333
	addi	x2, x2, -52	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 52	# 2333
	lw		x1, -48(x2)	# 2333
	lw		x5, -44(x2)	# 2333
	sw		x4, 12(x5)	# 2333
	lw		x4, -12(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -48(x2)	# 2334
	addi	x2, x2, -52	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 52	# 2334
	lw		x1, -48(x2)	# 2334
	lw		x5, -44(x2)	# 2334
	sw		x4, 16(x5)	# 2334
	lw		x4, -12(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x1, -48(x2)	# 2329
	addi	x2, x2, -52	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 52	# 2329
	lw		x1, -48(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -24(x2)	# 2330
	sw		x1, -48(x2)	# 2330
	addi	x2, x2, -52	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 52	# 2330
	lw		x1, -48(x2)	# 2330
	lw		x5, -12(x2)	# 2331
	flw		f1, -8(x2)	# 2331
	sw		x4, -48(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -52(x2)	# 2331
	addi	x2, x2, -56	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 56	# 2331
	lw		x1, -52(x2)	# 2331
	lw		x5, -48(x2)	# 2331
	sw		x4, 4(x5)	# 2331
	lw		x4, -12(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -52(x2)	# 2332
	addi	x2, x2, -56	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 56	# 2332
	lw		x1, -52(x2)	# 2332
	lw		x5, -48(x2)	# 2332
	sw		x4, 8(x5)	# 2332
	lw		x4, -12(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -52(x2)	# 2333
	addi	x2, x2, -56	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 56	# 2333
	lw		x1, -52(x2)	# 2333
	lw		x5, -48(x2)	# 2333
	sw		x4, 12(x5)	# 2333
	lw		x4, -12(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -52(x2)	# 2334
	addi	x2, x2, -56	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 56	# 2334
	lw		x1, -52(x2)	# 2334
	lw		x5, -48(x2)	# 2334
	sw		x4, 16(x5)	# 2334
	lw		x4, -32(x2)	# 2347
	lw		x6, -20(x2)	# 2347
	addi	x5, x6, 0	# 2347
	sw		x1, -52(x2)	# 2347
	addi	x2, x2, -56	# 2347
	jal		x1, min_caml_create_array	# 2347
	addi	x2, x2, 56	# 2347
	lw		x1, -52(x2)	# 2347
	lw		x5, -12(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x4, -52(x2)	# 2329
	addi	x4, x5, 0	# 2329
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
	sw		x4, 4(x5)	# 2331
	lw		x4, -12(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -60(x2)	# 2332
	addi	x2, x2, -64	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 64	# 2332
	lw		x1, -60(x2)	# 2332
	lw		x5, -56(x2)	# 2332
	sw		x4, 8(x5)	# 2332
	lw		x4, -12(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -60(x2)	# 2333
	addi	x2, x2, -64	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 64	# 2333
	lw		x1, -60(x2)	# 2333
	lw		x5, -56(x2)	# 2333
	sw		x4, 12(x5)	# 2333
	lw		x4, -12(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -60(x2)	# 2334
	addi	x2, x2, -64	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 64	# 2334
	lw		x1, -60(x2)	# 2334
	lw		x5, -56(x2)	# 2334
	sw		x4, 16(x5)	# 2334
	addi	x4, x3, 0	# 2349
	addi	x3, x3, 32	# 2349
	sw		x5, 28(x4)	# 2349
	lw		x5, -52(x2)	# 2349
	sw		x5, 24(x4)	# 2349
	lw		x5, -48(x2)	# 2349
	sw		x5, 20(x4)	# 2349
	lw		x5, -44(x2)	# 2349
	sw		x5, 16(x4)	# 2349
	lw		x5, -40(x2)	# 2349
	sw		x5, 12(x4)	# 2349
	lw		x5, -36(x2)	# 2349
	sw		x5, 8(x4)	# 2349
	lw		x5, -28(x2)	# 2349
	sw		x5, 4(x4)	# 2349
	lw		x5, -16(x2)	# 2349
	sw		x5, 0(x4)	# 2349
	lw		x5, -4(x2)	# 2355
	mul		x6, x30, x5	# 2355
	lw		x7, 0(x2)	# 2355
	add		x6, x7, x6	# 2355
	sw		x4, 0(x6)	# 2355
	addi	x5, x5, -1	# 2356
	addi	x4, x7, 0	# 2356
	jal		x0, init_line_elements.3080.18109	# 2356
calc_dirvec.3090.18112:
	addi	x7, x0, 5	# 98
	ble		x7, x4, ble.34545	# 2391
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
ble.34545:
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 2392
	fadd	f3, f3, f30	# 2392
	fsqrt	f3, f3	# 2392
	fdiv	f1, f1, f3	# 2393
	fdiv	f2, f2, f3	# 2394
	fdiv	f3, f30, f3	# 2395
	mul		x4, x30, x5	# 2398
	addi	x4, x4, 40716	# 2398
	lw		x4, 0(x4)	# 2398
	mul		x5, x30, x6	# 2399
	add		x5, x4, x5	# 2399
	lw		x5, 0(x5)	# 2399
	lw		x5, 0(x5)	# 696
	fsw		f1, 0(x5)	# 297
	fsw		f2, 4(x5)	# 298
	fsw		f3, 8(x5)	# 299
	addi	x5, x6, 40	# 2400
	mul		x5, x30, x5	# 2400
	add		x5, x4, x5	# 2400
	lw		x5, 0(x5)	# 2400
	lw		x5, 0(x5)	# 696
	fsub	f4, f0, f2	# 123
	fsw		f1, 0(x5)	# 297
	fsw		f3, 4(x5)	# 298
	fsw		f4, 8(x5)	# 299
	addi	x5, x6, 80	# 2401
	mul		x5, x30, x5	# 2401
	add		x5, x4, x5	# 2401
	lw		x5, 0(x5)	# 2401
	lw		x5, 0(x5)	# 696
	fsub	f5, f0, f1	# 123
	fsw		f3, 0(x5)	# 297
	fsw		f5, 4(x5)	# 298
	fsw		f4, 8(x5)	# 299
	addi	x5, x6, 1	# 2402
	mul		x5, x30, x5	# 2402
	add		x5, x4, x5	# 2402
	lw		x5, 0(x5)	# 2402
	lw		x5, 0(x5)	# 696
	fsub	f3, f0, f3	# 123
	fsw		f5, 0(x5)	# 297
	fsw		f4, 4(x5)	# 298
	fsw		f3, 8(x5)	# 299
	addi	x5, x6, 41	# 2403
	mul		x5, x30, x5	# 2403
	add		x5, x4, x5	# 2403
	lw		x5, 0(x5)	# 2403
	lw		x5, 0(x5)	# 696
	fsw		f5, 0(x5)	# 297
	fsw		f3, 4(x5)	# 298
	fsw		f2, 8(x5)	# 299
	addi	x5, x6, 81	# 2404
	mul		x5, x30, x5	# 2404
	add		x4, x4, x5	# 2404
	lw		x4, 0(x4)	# 2404
	lw		x4, 0(x4)	# 696
	fsw		f3, 0(x4)	# 297
	fsw		f1, 4(x4)	# 298
	fsw		f2, 8(x4)	# 299
	jalr	x0, x1, 0	# 299
calc_dirvecs.3098.18120:
	add		x7, x0, x0	# 6
	ble		x0, x4, ble.34547	# 2412
	jalr	x0, x1, 0	# 2421
ble.34547:
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
	ble		x6, x5, ble.34550	# 282
	jal		x0, ble_cont.34549	# 282
ble.34550:
	addi	x5, x5, -5	# 282
ble_cont.34549:
	lw		x6, -8(x2)	# 2420
	flw		f1, -4(x2)	# 2420
	jal		x0, calc_dirvecs.3098.18120	# 2420
calc_dirvec_rows.3103.18125:
	ble		x0, x4, ble.34551	# 2426
	jalr	x0, x1, 0	# 2430
ble.34551:
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
	ble		x6, x5, ble.34554	# 282
	jal		x0, ble_cont.34553	# 282
ble.34554:
	addi	x5, x5, -5	# 282
ble_cont.34553:
	lw		x6, -4(x2)	# 2429
	addi	x6, x6, 4	# 2429
	jal		x0, calc_dirvec_rows.3103.18125	# 2429
create_dirvec_elements.3109.18129:
	ble		x0, x5, ble.34555	# 2445
	jalr	x0, x1, 0	# 2448
ble.34555:
	fadd	f1, f0, f0	# 11
	add		x6, x0, x22	# 16
	sw		x4, 0(x2)	# 2439
	sw		x5, -4(x2)	# 2439
	addi	x4, x22, 0	# 2439
	sw		x1, -8(x2)	# 2439
	addi	x2, x2, -12	# 2439
	jal		x1, min_caml_create_float_array	# 2439
	addi	x2, x2, 12	# 2439
	lw		x1, -8(x2)	# 2439
	addi	x5, x4, 0	# 2439
	addi	x4, x0, 40000	# 2440
	lw		x4, 0(x4)	# 2440
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
	mul		x6, x30, x4	# 2446
	lw		x7, 0(x2)	# 2446
	add		x6, x7, x6	# 2446
	sw		x5, 0(x6)	# 2446
	addi	x5, x4, -1	# 2447
	addi	x4, x7, 0	# 2447
	jal		x0, create_dirvec_elements.3109.18129	# 2447
create_dirvecs.3112.18132:
	ble		x0, x4, ble.34557	# 2452
	jalr	x0, x1, 0	# 2456
ble.34557:
	addi	x5, x0, 120	# 2453
	fadd	f1, f0, f0	# 11
	add		x6, x0, x22	# 16
	sw		x4, 0(x2)	# 2439
	sw		x5, -4(x2)	# 2439
	addi	x4, x22, 0	# 2439
	sw		x1, -8(x2)	# 2439
	addi	x2, x2, -12	# 2439
	jal		x1, min_caml_create_float_array	# 2439
	addi	x2, x2, 12	# 2439
	lw		x1, -8(x2)	# 2439
	addi	x5, x4, 0	# 2439
	addi	x4, x0, 40000	# 2440
	lw		x4, 0(x4)	# 2440
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
	lw		x4, -4(x2)	# 2453
	sw		x1, -12(x2)	# 2453
	addi	x2, x2, -16	# 2453
	jal		x1, min_caml_create_array	# 2453
	addi	x2, x2, 16	# 2453
	lw		x1, -12(x2)	# 2453
	lw		x5, 0(x2)	# 2453
	mul		x6, x30, x5	# 2453
	addi	x6, x6, 40716	# 2453
	sw		x4, 0(x6)	# 2453
	lw		x4, 0(x6)	# 2454
	addi	x6, x0, 118	# 2454
	addi	x5, x6, 0	# 2454
	sw		x1, -12(x2)	# 2454
	addi	x2, x2, -16	# 2454
	jal		x1, create_dirvec_elements.3109.18129	# 2454
	addi	x2, x2, 16	# 2454
	lw		x1, -12(x2)	# 2454
	lw		x4, 0(x2)	# 2455
	addi	x4, x4, -1	# 2455
	jal		x0, create_dirvecs.3112.18132	# 2455
init_dirvec_constants.3114.18134:
	ble		x0, x5, ble.34559	# 2464
	jalr	x0, x1, 0	# 2467
ble.34559:
	mul		x6, x30, x5	# 2465
	add		x6, x4, x6	# 2465
	lw		x6, 0(x6)	# 2465
	addi	x7, x0, 40000	# 1344
	lw		x7, 0(x7)	# 1344
	addi	x7, x7, -1	# 1344
	sw		x4, 0(x2)	# 1344
	sw		x5, -4(x2)	# 1344
	addi	x5, x7, 0	# 1344
	addi	x4, x6, 0	# 1344
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
	ble		x0, x4, ble.34561	# 2471
	jalr	x0, x1, 0	# 2474
ble.34561:
	mul		x5, x30, x4	# 2472
	addi	x5, x5, 40716	# 2472
	lw		x5, 0(x5)	# 2472
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
	lui		x4, %hi(l.33492)	# 0
	ori		x4, x4, %lo(l.33492)	# 0
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
	lui		x4, %hi(l.29666)	# 0
	ori		x4, x4, %lo(l.29666)	# 0
	flw		f26, 0(x4)	# 0
	lui		x4, %hi(l.29668)	# 0
	ori		x4, x4, %lo(l.29668)	# 0
	flw		f27, 0(x4)	# 0
	lui		x4, %hi(l.29645)	# 0
	ori		x4, x4, %lo(l.29645)	# 0
	flw		f28, 0(x4)	# 0
	addi	x19, x0, -1	# 0
	addi	x20, x0, 1	# 0
	addi	x21, x0, 2	# 0
	addi	x22, x0, 3	# 0
	addi	x23, x0, 99	# 0
	addi	x24, x0, 40540	# 0
	addi	x25, x0, 40552	# 0
	addi	x26, x0, 40560	# 0
	addi	x27, x0, 40556	# 0
	add		x4, x0, x20	# 6
	add		x5, x0, x0	# 6
	sw		x20, 0(x2)	# 6
	sw		x0, -4(x2)	# 6
	sw		x1, -8(x2)	# 6
	addi	x2, x2, -12	# 6
	jal		x1, min_caml_create_array	# 6
	addi	x2, x2, 12	# 6
	lw		x1, -8(x2)	# 6
	fadd	f1, f0, f0	# 11
	addi	x4, x0, 40004	# 11
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
	add		x4, x0, x22	# 16
	flw		f1, -8(x2)	# 16
	sw		x22, -20(x2)	# 16
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
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f1, 0(x4)	# 25
	lw		x4, 0(x2)	# 25
	sw		x1, -24(x2)	# 25
	addi	x2, x2, -28	# 25
	jal		x1, min_caml_create_float_array	# 25
	addi	x2, x2, 28	# 25
	lw		x1, -24(x2)	# 25
	addi	x4, x0, 50	# 28
	add		x5, x0, x19	# 28
	addi	x6, x0, 40328	# 28
	lw		x8, 0(x2)	# 28
	sw		x6, -24(x2)	# 28
	sw		x4, -28(x2)	# 28
	addi	x4, x8, 0	# 28
	sw		x1, -32(x2)	# 28
	addi	x2, x2, -36	# 28
	jal		x1, min_caml_create_array	# 28
	addi	x2, x2, 36	# 28
	lw		x1, -32(x2)	# 28
	lw		x4, -28(x2)	# 28
	lw		x5, -24(x2)	# 28
	sw		x1, -32(x2)	# 28
	addi	x2, x2, -36	# 28
	jal		x1, min_caml_create_array	# 28
	addi	x2, x2, 36	# 28
	lw		x1, -32(x2)	# 28
	addi	x4, x0, 40332	# 31
	lw		x5, 0(x4)	# 31
	addi	x4, x0, 40532	# 31
	lw		x6, 0(x2)	# 31
	sw		x4, -32(x2)	# 31
	addi	x4, x6, 0	# 31
	sw		x1, -36(x2)	# 31
	addi	x2, x2, -40	# 31
	jal		x1, min_caml_create_array	# 31
	addi	x2, x2, 40	# 31
	lw		x1, -36(x2)	# 31
	lw		x4, 0(x2)	# 31
	lw		x5, -32(x2)	# 31
	sw		x1, -36(x2)	# 31
	addi	x2, x2, -40	# 31
	jal		x1, min_caml_create_array	# 31
	addi	x2, x2, 40	# 31
	lw		x1, -36(x2)	# 31
	lw		x4, 0(x2)	# 36
	flw		f1, -8(x2)	# 36
	sw		x1, -36(x2)	# 36
	addi	x2, x2, -40	# 36
	jal		x1, min_caml_create_float_array	# 36
	addi	x2, x2, 40	# 36
	lw		x1, -36(x2)	# 36
	lw		x4, 0(x2)	# 39
	addi	x5, x7, 0	# 39
	sw		x1, -36(x2)	# 39
	addi	x2, x2, -40	# 39
	jal		x1, min_caml_create_array	# 39
	addi	x2, x2, 40	# 39
	lw		x1, -36(x2)	# 39
	fadd	f1, f0, f21	# 42
	lw		x4, 0(x2)	# 42
	sw		x1, -36(x2)	# 42
	addi	x2, x2, -40	# 42
	jal		x1, min_caml_create_float_array	# 42
	addi	x2, x2, 40	# 42
	lw		x1, -36(x2)	# 42
	lw		x4, -20(x2)	# 45
	flw		f1, -8(x2)	# 45
	sw		x1, -36(x2)	# 45
	addi	x2, x2, -40	# 45
	jal		x1, min_caml_create_float_array	# 45
	addi	x2, x2, 40	# 45
	lw		x1, -36(x2)	# 45
	lw		x4, 0(x2)	# 48
	lw		x5, -4(x2)	# 48
	sw		x1, -36(x2)	# 48
	addi	x2, x2, -40	# 48
	jal		x1, min_caml_create_array	# 48
	addi	x2, x2, 40	# 48
	lw		x1, -36(x2)	# 48
	lw		x4, -20(x2)	# 51
	flw		f1, -8(x2)	# 51
	sw		x1, -36(x2)	# 51
	addi	x2, x2, -40	# 51
	jal		x1, min_caml_create_float_array	# 51
	addi	x2, x2, 40	# 51
	lw		x1, -36(x2)	# 51
	lw		x4, -20(x2)	# 54
	flw		f1, -8(x2)	# 54
	sw		x1, -36(x2)	# 54
	addi	x2, x2, -40	# 54
	jal		x1, min_caml_create_float_array	# 54
	addi	x2, x2, 40	# 54
	lw		x1, -36(x2)	# 54
	lw		x4, -20(x2)	# 58
	flw		f1, -8(x2)	# 58
	sw		x1, -36(x2)	# 58
	addi	x2, x2, -40	# 58
	jal		x1, min_caml_create_float_array	# 58
	addi	x2, x2, 40	# 58
	lw		x1, -36(x2)	# 58
	lw		x4, -20(x2)	# 61
	flw		f1, -8(x2)	# 61
	sw		x1, -36(x2)	# 61
	addi	x2, x2, -40	# 61
	jal		x1, min_caml_create_float_array	# 61
	addi	x2, x2, 40	# 61
	lw		x1, -36(x2)	# 61
	add		x4, x0, x21	# 65
	lw		x5, -4(x2)	# 65
	sw		x21, -36(x2)	# 65
	sw		x1, -40(x2)	# 65
	addi	x2, x2, -44	# 65
	jal		x1, min_caml_create_array	# 65
	addi	x2, x2, 44	# 65
	lw		x1, -40(x2)	# 65
	lw		x4, -36(x2)	# 68
	lw		x5, -4(x2)	# 68
	sw		x1, -40(x2)	# 68
	addi	x2, x2, -44	# 68
	jal		x1, min_caml_create_array	# 68
	addi	x2, x2, 44	# 68
	lw		x1, -40(x2)	# 68
	lw		x4, 0(x2)	# 71
	flw		f1, -8(x2)	# 71
	sw		x1, -40(x2)	# 71
	addi	x2, x2, -44	# 71
	jal		x1, min_caml_create_float_array	# 71
	addi	x2, x2, 44	# 71
	lw		x1, -40(x2)	# 71
	lw		x4, -20(x2)	# 75
	flw		f1, -8(x2)	# 75
	sw		x1, -40(x2)	# 75
	addi	x2, x2, -44	# 75
	jal		x1, min_caml_create_float_array	# 75
	addi	x2, x2, 44	# 75
	lw		x1, -40(x2)	# 75
	lw		x4, -20(x2)	# 78
	flw		f1, -8(x2)	# 78
	sw		x1, -40(x2)	# 78
	addi	x2, x2, -44	# 78
	jal		x1, min_caml_create_float_array	# 78
	addi	x2, x2, 44	# 78
	lw		x1, -40(x2)	# 78
	lw		x4, -20(x2)	# 82
	flw		f1, -8(x2)	# 82
	sw		x1, -40(x2)	# 82
	addi	x2, x2, -44	# 82
	jal		x1, min_caml_create_float_array	# 82
	addi	x2, x2, 44	# 82
	lw		x1, -40(x2)	# 82
	lw		x4, -20(x2)	# 84
	flw		f1, -8(x2)	# 84
	sw		x1, -40(x2)	# 84
	addi	x2, x2, -44	# 84
	jal		x1, min_caml_create_float_array	# 84
	addi	x2, x2, 44	# 84
	lw		x1, -40(x2)	# 84
	lw		x4, -20(x2)	# 86
	flw		f1, -8(x2)	# 86
	sw		x1, -40(x2)	# 86
	addi	x2, x2, -44	# 86
	jal		x1, min_caml_create_float_array	# 86
	addi	x2, x2, 44	# 86
	lw		x1, -40(x2)	# 86
	lw		x4, -20(x2)	# 90
	flw		f1, -8(x2)	# 90
	sw		x1, -40(x2)	# 90
	addi	x2, x2, -44	# 90
	jal		x1, min_caml_create_float_array	# 90
	addi	x2, x2, 44	# 90
	lw		x1, -40(x2)	# 90
	addi	x4, x0, 40708	# 95
	lw		x5, -4(x2)	# 95
	flw		f1, -8(x2)	# 95
	sw		x4, -40(x2)	# 95
	addi	x4, x5, 0	# 95
	sw		x1, -44(x2)	# 95
	addi	x2, x2, -48	# 95
	jal		x1, min_caml_create_float_array	# 95
	addi	x2, x2, 48	# 95
	lw		x1, -44(x2)	# 95
	lw		x4, -4(x2)	# 96
	lw		x5, -40(x2)	# 96
	sw		x1, -44(x2)	# 96
	addi	x2, x2, -48	# 96
	jal		x1, min_caml_create_array	# 96
	addi	x2, x2, 48	# 96
	lw		x1, -44(x2)	# 96
	addi	x5, x3, 0	# 97
	addi	x3, x3, 8	# 97
	lw		x4, -40(x2)	# 97
	sw		x4, 4(x5)	# 97
	sw		x4, 0(x5)	# 97
	addi	x4, x0, 40716	# 97
	lw		x6, -4(x2)	# 97
	sw		x4, -44(x2)	# 97
	addi	x4, x6, 0	# 97
	sw		x1, -48(x2)	# 97
	addi	x2, x2, -52	# 97
	jal		x1, min_caml_create_array	# 97
	addi	x2, x2, 52	# 97
	lw		x1, -48(x2)	# 97
	addi	x4, x0, 5	# 98
	lw		x5, -44(x2)	# 98
	sw		x4, -48(x2)	# 98
	sw		x1, -52(x2)	# 98
	addi	x2, x2, -56	# 98
	jal		x1, min_caml_create_array	# 98
	addi	x2, x2, 56	# 98
	lw		x1, -52(x2)	# 98
	addi	x4, x0, 40736	# 103
	lw		x5, -4(x2)	# 103
	flw		f1, -8(x2)	# 103
	sw		x4, -52(x2)	# 103
	addi	x4, x5, 0	# 103
	sw		x1, -56(x2)	# 103
	addi	x2, x2, -60	# 103
	jal		x1, min_caml_create_float_array	# 103
	addi	x2, x2, 60	# 103
	lw		x1, -56(x2)	# 103
	lw		x4, -20(x2)	# 104
	flw		f1, -8(x2)	# 104
	sw		x1, -56(x2)	# 104
	addi	x2, x2, -60	# 104
	jal		x1, min_caml_create_float_array	# 104
	addi	x2, x2, 60	# 104
	lw		x1, -56(x2)	# 104
	addi	x4, x0, 40748	# 105
	lw		x5, -16(x2)	# 105
	lw		x6, -52(x2)	# 105
	sw		x4, -56(x2)	# 105
	addi	x4, x5, 0	# 105
	addi	x5, x6, 0	# 105
	sw		x1, -60(x2)	# 105
	addi	x2, x2, -64	# 105
	jal		x1, min_caml_create_array	# 105
	addi	x2, x2, 64	# 105
	lw		x1, -60(x2)	# 105
	addi	x4, x3, 0	# 106
	addi	x3, x3, 8	# 106
	lw		x5, -56(x2)	# 106
	sw		x5, 4(x4)	# 106
	lw		x5, -52(x2)	# 106
	sw		x5, 0(x4)	# 106
	addi	x6, x0, 40996	# 111
	lw		x7, -4(x2)	# 111
	flw		f1, -8(x2)	# 111
	sw		x4, -60(x2)	# 111
	addi	x4, x7, 0	# 111
	sw		x1, -64(x2)	# 111
	addi	x2, x2, -68	# 111
	jal		x1, min_caml_create_float_array	# 111
	addi	x2, x2, 68	# 111
	lw		x1, -64(x2)	# 111
	lw		x4, -4(x2)	# 112
	sw		x6, -64(x2)	# 112
	addi	x5, x6, 0	# 112
	sw		x1, -68(x2)	# 112
	addi	x2, x2, -72	# 112
	jal		x1, min_caml_create_array	# 112
	addi	x2, x2, 72	# 112
	lw		x1, -68(x2)	# 112
	addi	x4, x3, 0	# 113
	addi	x3, x3, 8	# 113
	lw		x5, -64(x2)	# 113
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
	sw		x1, -68(x2)	# 114
	addi	x2, x2, -72	# 114
	jal		x1, min_caml_create_array	# 114
	addi	x2, x2, 72	# 114
	lw		x1, -68(x2)	# 114
	lw		x4, 0(x2)	# 118
	lw		x5, -4(x2)	# 118
	sw		x1, -68(x2)	# 118
	addi	x2, x2, -72	# 118
	jal		x1, min_caml_create_array	# 118
	addi	x2, x2, 72	# 118
	lw		x1, -68(x2)	# 118
	addi	x4, x0, 512	# 2569
	addi	x5, x0, 40616	# 2549
	sw		x4, 0(x5)	# 2549
	addi	x6, x0, 40620	# 2550
	sw		x4, 0(x6)	# 2550
	addi	x7, x0, 256	# 2551
	addi	x8, x0, 40624	# 2551
	sw		x7, 0(x8)	# 2551
	addi	x8, x0, 40628	# 2552
	sw		x7, 0(x8)	# 2552
	lui		x7, %hi(l.30959)	# 2553
	ori		x7, x7, %lo(l.30959)	# 2553
	flw		f2, 0(x7)	# 2553
	sw		x6, -68(x2)	# 2553
	sw		x5, -72(x2)	# 2553
	fsw		f2, -76(x2)	# 2553
	sw		x1, -80(x2)	# 2553
	addi	x2, x2, -84	# 2553
	jal		x1, min_caml_float_of_int	# 2553
	addi	x2, x2, 84	# 2553
	lw		x1, -80(x2)	# 2553
	flw		f2, -76(x2)	# 2553
	fdiv	f1, f2, f1	# 2553
	addi	x4, x0, 40632	# 2553
	fsw		f1, 0(x4)	# 2553
	lw		x5, -72(x2)	# 2363
	lw		x5, 0(x5)	# 2363
	lw		x6, -20(x2)	# 2341
	flw		f1, -8(x2)	# 2341
	sw		x4, -80(x2)	# 2341
	sw		x5, -84(x2)	# 2341
	addi	x4, x6, 0	# 2341
	sw		x1, -88(x2)	# 2341
	addi	x2, x2, -92	# 2341
	jal		x1, min_caml_create_float_array	# 2341
	addi	x2, x2, 92	# 2341
	lw		x1, -88(x2)	# 2341
	lw		x5, -20(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x4, -88(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -92(x2)	# 2329
	addi	x2, x2, -96	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 96	# 2329
	lw		x1, -92(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -48(x2)	# 2330
	sw		x1, -92(x2)	# 2330
	addi	x2, x2, -96	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 96	# 2330
	lw		x1, -92(x2)	# 2330
	lw		x5, -20(x2)	# 2331
	flw		f1, -8(x2)	# 2331
	sw		x4, -92(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -96(x2)	# 2331
	addi	x2, x2, -100	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 100	# 2331
	lw		x1, -96(x2)	# 2331
	lw		x5, -92(x2)	# 2331
	sw		x4, 4(x5)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -96(x2)	# 2332
	addi	x2, x2, -100	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 100	# 2332
	lw		x1, -96(x2)	# 2332
	lw		x5, -92(x2)	# 2332
	sw		x4, 8(x5)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -96(x2)	# 2333
	addi	x2, x2, -100	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 100	# 2333
	lw		x1, -96(x2)	# 2333
	lw		x5, -92(x2)	# 2333
	sw		x4, 12(x5)	# 2333
	add		x4, x0, x30	# 2334
	lw		x6, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x30, -96(x2)	# 2334
	addi	x4, x6, 0	# 2334
	sw		x1, -100(x2)	# 2334
	addi	x2, x2, -104	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 104	# 2334
	lw		x1, -100(x2)	# 2334
	lw		x5, -92(x2)	# 2334
	sw		x4, 16(x5)	# 2334
	lw		x4, -48(x2)	# 2343
	lw		x6, -4(x2)	# 2343
	addi	x5, x6, 0	# 2343
	sw		x1, -100(x2)	# 2343
	addi	x2, x2, -104	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 104	# 2343
	lw		x1, -100(x2)	# 2343
	lw		x5, -48(x2)	# 2344
	lw		x6, -4(x2)	# 2344
	sw		x4, -100(x2)	# 2344
	addi	x4, x5, 0	# 2344
	addi	x5, x6, 0	# 2344
	sw		x1, -104(x2)	# 2344
	addi	x2, x2, -108	# 2344
	jal		x1, min_caml_create_array	# 2344
	addi	x2, x2, 108	# 2344
	lw		x1, -104(x2)	# 2344
	lw		x5, -20(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x4, -104(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -108(x2)	# 2329
	addi	x2, x2, -112	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 112	# 2329
	lw		x1, -108(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -48(x2)	# 2330
	sw		x1, -108(x2)	# 2330
	addi	x2, x2, -112	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 112	# 2330
	lw		x1, -108(x2)	# 2330
	lw		x5, -20(x2)	# 2331
	flw		f1, -8(x2)	# 2331
	sw		x4, -108(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -112(x2)	# 2331
	addi	x2, x2, -116	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 116	# 2331
	lw		x1, -112(x2)	# 2331
	lw		x5, -108(x2)	# 2331
	sw		x4, 4(x5)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -112(x2)	# 2332
	addi	x2, x2, -116	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 116	# 2332
	lw		x1, -112(x2)	# 2332
	lw		x5, -108(x2)	# 2332
	sw		x4, 8(x5)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -112(x2)	# 2333
	addi	x2, x2, -116	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 116	# 2333
	lw		x1, -112(x2)	# 2333
	lw		x5, -108(x2)	# 2333
	sw		x4, 12(x5)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -112(x2)	# 2334
	addi	x2, x2, -116	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 116	# 2334
	lw		x1, -112(x2)	# 2334
	lw		x5, -108(x2)	# 2334
	sw		x4, 16(x5)	# 2334
	lw		x4, -20(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x1, -112(x2)	# 2329
	addi	x2, x2, -116	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 116	# 2329
	lw		x1, -112(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -48(x2)	# 2330
	sw		x1, -112(x2)	# 2330
	addi	x2, x2, -116	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 116	# 2330
	lw		x1, -112(x2)	# 2330
	lw		x5, -20(x2)	# 2331
	flw		f1, -8(x2)	# 2331
	sw		x4, -112(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -116(x2)	# 2331
	addi	x2, x2, -120	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 120	# 2331
	lw		x1, -116(x2)	# 2331
	lw		x5, -112(x2)	# 2331
	sw		x4, 4(x5)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -116(x2)	# 2332
	addi	x2, x2, -120	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 120	# 2332
	lw		x1, -116(x2)	# 2332
	lw		x5, -112(x2)	# 2332
	sw		x4, 8(x5)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -116(x2)	# 2333
	addi	x2, x2, -120	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 120	# 2333
	lw		x1, -116(x2)	# 2333
	lw		x5, -112(x2)	# 2333
	sw		x4, 12(x5)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -116(x2)	# 2334
	addi	x2, x2, -120	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 120	# 2334
	lw		x1, -116(x2)	# 2334
	lw		x5, -112(x2)	# 2334
	sw		x4, 16(x5)	# 2334
	lw		x4, 0(x2)	# 2347
	lw		x6, -4(x2)	# 2347
	addi	x5, x6, 0	# 2347
	sw		x1, -116(x2)	# 2347
	addi	x2, x2, -120	# 2347
	jal		x1, min_caml_create_array	# 2347
	addi	x2, x2, 120	# 2347
	lw		x1, -116(x2)	# 2347
	lw		x5, -20(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x4, -116(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -120(x2)	# 2329
	addi	x2, x2, -124	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 124	# 2329
	lw		x1, -120(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -48(x2)	# 2330
	sw		x1, -120(x2)	# 2330
	addi	x2, x2, -124	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 124	# 2330
	lw		x1, -120(x2)	# 2330
	lw		x5, -20(x2)	# 2331
	flw		f1, -8(x2)	# 2331
	sw		x4, -120(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -124(x2)	# 2331
	addi	x2, x2, -128	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 128	# 2331
	lw		x1, -124(x2)	# 2331
	lw		x5, -120(x2)	# 2331
	sw		x4, 4(x5)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -124(x2)	# 2332
	addi	x2, x2, -128	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 128	# 2332
	lw		x1, -124(x2)	# 2332
	lw		x5, -120(x2)	# 2332
	sw		x4, 8(x5)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -124(x2)	# 2333
	addi	x2, x2, -128	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 128	# 2333
	lw		x1, -124(x2)	# 2333
	lw		x5, -120(x2)	# 2333
	sw		x4, 12(x5)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -124(x2)	# 2334
	addi	x2, x2, -128	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 128	# 2334
	lw		x1, -124(x2)	# 2334
	lw		x5, -120(x2)	# 2334
	sw		x4, 16(x5)	# 2334
	addi	x4, x3, 0	# 2349
	addi	x3, x3, 32	# 2349
	sw		x5, 28(x4)	# 2349
	lw		x5, -116(x2)	# 2349
	sw		x5, 24(x4)	# 2349
	lw		x5, -112(x2)	# 2349
	sw		x5, 20(x4)	# 2349
	lw		x5, -108(x2)	# 2349
	sw		x5, 16(x4)	# 2349
	lw		x5, -104(x2)	# 2349
	sw		x5, 12(x4)	# 2349
	lw		x5, -100(x2)	# 2349
	sw		x5, 8(x4)	# 2349
	lw		x5, -92(x2)	# 2349
	sw		x5, 4(x4)	# 2349
	lw		x5, -88(x2)	# 2349
	sw		x5, 0(x4)	# 2349
	lw		x5, -84(x2)	# 2363
	addi	x31, x5, 0	# 2363
	addi	x5, x4, 0	# 2363
	addi	x4, x31, 0	# 2363
	sw		x1, -124(x2)	# 2363
	addi	x2, x2, -128	# 2363
	jal		x1, min_caml_create_array	# 2363
	addi	x2, x2, 128	# 2363
	lw		x1, -124(x2)	# 2363
	lw		x5, -84(x2)	# 2364
	addi	x6, x5, -2	# 2364
	sw		x6, -124(x2)	# 2364
	addi	x5, x6, 0	# 2364
	sw		x1, -128(x2)	# 2364
	addi	x2, x2, -132	# 2364
	jal		x1, init_line_elements.3080.18109	# 2364
	addi	x2, x2, 132	# 2364
	lw		x1, -128(x2)	# 2364
	lw		x5, -20(x2)	# 2341
	flw		f1, -8(x2)	# 2341
	sw		x4, -128(x2)	# 2341
	addi	x4, x5, 0	# 2341
	sw		x1, -132(x2)	# 2341
	addi	x2, x2, -136	# 2341
	jal		x1, min_caml_create_float_array	# 2341
	addi	x2, x2, 136	# 2341
	lw		x1, -132(x2)	# 2341
	lw		x5, -20(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x4, -132(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -136(x2)	# 2329
	addi	x2, x2, -140	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 140	# 2329
	lw		x1, -136(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -48(x2)	# 2330
	sw		x1, -136(x2)	# 2330
	addi	x2, x2, -140	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 140	# 2330
	lw		x1, -136(x2)	# 2330
	lw		x5, -20(x2)	# 2331
	flw		f1, -8(x2)	# 2331
	sw		x4, -136(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -140(x2)	# 2331
	addi	x2, x2, -144	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 144	# 2331
	lw		x1, -140(x2)	# 2331
	lw		x5, -136(x2)	# 2331
	sw		x4, 4(x5)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -140(x2)	# 2332
	addi	x2, x2, -144	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 144	# 2332
	lw		x1, -140(x2)	# 2332
	lw		x5, -136(x2)	# 2332
	sw		x4, 8(x5)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -140(x2)	# 2333
	addi	x2, x2, -144	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 144	# 2333
	lw		x1, -140(x2)	# 2333
	lw		x5, -136(x2)	# 2333
	sw		x4, 12(x5)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -140(x2)	# 2334
	addi	x2, x2, -144	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 144	# 2334
	lw		x1, -140(x2)	# 2334
	lw		x5, -136(x2)	# 2334
	sw		x4, 16(x5)	# 2334
	lw		x4, -48(x2)	# 2343
	lw		x6, -4(x2)	# 2343
	addi	x5, x6, 0	# 2343
	sw		x1, -140(x2)	# 2343
	addi	x2, x2, -144	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 144	# 2343
	lw		x1, -140(x2)	# 2343
	lw		x5, -48(x2)	# 2344
	lw		x6, -4(x2)	# 2344
	sw		x4, -140(x2)	# 2344
	addi	x4, x5, 0	# 2344
	addi	x5, x6, 0	# 2344
	sw		x1, -144(x2)	# 2344
	addi	x2, x2, -148	# 2344
	jal		x1, min_caml_create_array	# 2344
	addi	x2, x2, 148	# 2344
	lw		x1, -144(x2)	# 2344
	lw		x5, -20(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x4, -144(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -148(x2)	# 2329
	addi	x2, x2, -152	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 152	# 2329
	lw		x1, -148(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -48(x2)	# 2330
	sw		x1, -148(x2)	# 2330
	addi	x2, x2, -152	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 152	# 2330
	lw		x1, -148(x2)	# 2330
	lw		x5, -20(x2)	# 2331
	flw		f1, -8(x2)	# 2331
	sw		x4, -148(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -152(x2)	# 2331
	addi	x2, x2, -156	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 156	# 2331
	lw		x1, -152(x2)	# 2331
	lw		x5, -148(x2)	# 2331
	sw		x4, 4(x5)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -152(x2)	# 2332
	addi	x2, x2, -156	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 156	# 2332
	lw		x1, -152(x2)	# 2332
	lw		x5, -148(x2)	# 2332
	sw		x4, 8(x5)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -152(x2)	# 2333
	addi	x2, x2, -156	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 156	# 2333
	lw		x1, -152(x2)	# 2333
	lw		x5, -148(x2)	# 2333
	sw		x4, 12(x5)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -152(x2)	# 2334
	addi	x2, x2, -156	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 156	# 2334
	lw		x1, -152(x2)	# 2334
	lw		x5, -148(x2)	# 2334
	sw		x4, 16(x5)	# 2334
	lw		x4, -20(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x1, -152(x2)	# 2329
	addi	x2, x2, -156	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 156	# 2329
	lw		x1, -152(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -48(x2)	# 2330
	sw		x1, -152(x2)	# 2330
	addi	x2, x2, -156	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 156	# 2330
	lw		x1, -152(x2)	# 2330
	lw		x5, -20(x2)	# 2331
	flw		f1, -8(x2)	# 2331
	sw		x4, -152(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -156(x2)	# 2331
	addi	x2, x2, -160	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 160	# 2331
	lw		x1, -156(x2)	# 2331
	lw		x5, -152(x2)	# 2331
	sw		x4, 4(x5)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -156(x2)	# 2332
	addi	x2, x2, -160	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 160	# 2332
	lw		x1, -156(x2)	# 2332
	lw		x5, -152(x2)	# 2332
	sw		x4, 8(x5)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -156(x2)	# 2333
	addi	x2, x2, -160	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 160	# 2333
	lw		x1, -156(x2)	# 2333
	lw		x5, -152(x2)	# 2333
	sw		x4, 12(x5)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -156(x2)	# 2334
	addi	x2, x2, -160	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 160	# 2334
	lw		x1, -156(x2)	# 2334
	lw		x5, -152(x2)	# 2334
	sw		x4, 16(x5)	# 2334
	lw		x4, 0(x2)	# 2347
	lw		x6, -4(x2)	# 2347
	addi	x5, x6, 0	# 2347
	sw		x1, -156(x2)	# 2347
	addi	x2, x2, -160	# 2347
	jal		x1, min_caml_create_array	# 2347
	addi	x2, x2, 160	# 2347
	lw		x1, -156(x2)	# 2347
	lw		x5, -20(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x4, -156(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -160(x2)	# 2329
	addi	x2, x2, -164	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 164	# 2329
	lw		x1, -160(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -48(x2)	# 2330
	sw		x1, -160(x2)	# 2330
	addi	x2, x2, -164	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 164	# 2330
	lw		x1, -160(x2)	# 2330
	lw		x5, -20(x2)	# 2331
	flw		f1, -8(x2)	# 2331
	sw		x4, -160(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -164(x2)	# 2331
	addi	x2, x2, -168	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 168	# 2331
	lw		x1, -164(x2)	# 2331
	lw		x5, -160(x2)	# 2331
	sw		x4, 4(x5)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -164(x2)	# 2332
	addi	x2, x2, -168	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 168	# 2332
	lw		x1, -164(x2)	# 2332
	lw		x5, -160(x2)	# 2332
	sw		x4, 8(x5)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -164(x2)	# 2333
	addi	x2, x2, -168	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 168	# 2333
	lw		x1, -164(x2)	# 2333
	lw		x5, -160(x2)	# 2333
	sw		x4, 12(x5)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -164(x2)	# 2334
	addi	x2, x2, -168	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 168	# 2334
	lw		x1, -164(x2)	# 2334
	lw		x5, -160(x2)	# 2334
	sw		x4, 16(x5)	# 2334
	addi	x4, x3, 0	# 2349
	addi	x3, x3, 32	# 2349
	sw		x5, 28(x4)	# 2349
	lw		x5, -156(x2)	# 2349
	sw		x5, 24(x4)	# 2349
	lw		x5, -152(x2)	# 2349
	sw		x5, 20(x4)	# 2349
	lw		x5, -148(x2)	# 2349
	sw		x5, 16(x4)	# 2349
	lw		x5, -144(x2)	# 2349
	sw		x5, 12(x4)	# 2349
	lw		x5, -140(x2)	# 2349
	sw		x5, 8(x4)	# 2349
	lw		x5, -136(x2)	# 2349
	sw		x5, 4(x4)	# 2349
	lw		x5, -132(x2)	# 2349
	sw		x5, 0(x4)	# 2349
	lw		x5, -84(x2)	# 2363
	addi	x31, x5, 0	# 2363
	addi	x5, x4, 0	# 2363
	addi	x4, x31, 0	# 2363
	sw		x1, -164(x2)	# 2363
	addi	x2, x2, -168	# 2363
	jal		x1, min_caml_create_array	# 2363
	addi	x2, x2, 168	# 2363
	lw		x1, -164(x2)	# 2363
	lw		x5, -124(x2)	# 2364
	sw		x1, -164(x2)	# 2364
	addi	x2, x2, -168	# 2364
	jal		x1, init_line_elements.3080.18109	# 2364
	addi	x2, x2, 168	# 2364
	lw		x1, -164(x2)	# 2364
	lw		x5, -20(x2)	# 2341
	flw		f1, -8(x2)	# 2341
	sw		x4, -164(x2)	# 2341
	addi	x4, x5, 0	# 2341
	sw		x1, -168(x2)	# 2341
	addi	x2, x2, -172	# 2341
	jal		x1, min_caml_create_float_array	# 2341
	addi	x2, x2, 172	# 2341
	lw		x1, -168(x2)	# 2341
	lw		x5, -20(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x4, -168(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -172(x2)	# 2329
	addi	x2, x2, -176	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 176	# 2329
	lw		x1, -172(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -48(x2)	# 2330
	sw		x1, -172(x2)	# 2330
	addi	x2, x2, -176	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 176	# 2330
	lw		x1, -172(x2)	# 2330
	lw		x5, -20(x2)	# 2331
	flw		f1, -8(x2)	# 2331
	sw		x4, -172(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -176(x2)	# 2331
	addi	x2, x2, -180	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 180	# 2331
	lw		x1, -176(x2)	# 2331
	lw		x5, -172(x2)	# 2331
	sw		x4, 4(x5)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -176(x2)	# 2332
	addi	x2, x2, -180	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 180	# 2332
	lw		x1, -176(x2)	# 2332
	lw		x5, -172(x2)	# 2332
	sw		x4, 8(x5)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -176(x2)	# 2333
	addi	x2, x2, -180	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 180	# 2333
	lw		x1, -176(x2)	# 2333
	lw		x5, -172(x2)	# 2333
	sw		x4, 12(x5)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -176(x2)	# 2334
	addi	x2, x2, -180	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 180	# 2334
	lw		x1, -176(x2)	# 2334
	lw		x5, -172(x2)	# 2334
	sw		x4, 16(x5)	# 2334
	lw		x4, -48(x2)	# 2343
	lw		x6, -4(x2)	# 2343
	addi	x5, x6, 0	# 2343
	sw		x1, -176(x2)	# 2343
	addi	x2, x2, -180	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 180	# 2343
	lw		x1, -176(x2)	# 2343
	lw		x5, -48(x2)	# 2344
	lw		x6, -4(x2)	# 2344
	sw		x4, -176(x2)	# 2344
	addi	x4, x5, 0	# 2344
	addi	x5, x6, 0	# 2344
	sw		x1, -180(x2)	# 2344
	addi	x2, x2, -184	# 2344
	jal		x1, min_caml_create_array	# 2344
	addi	x2, x2, 184	# 2344
	lw		x1, -180(x2)	# 2344
	lw		x5, -20(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x4, -180(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -184(x2)	# 2329
	addi	x2, x2, -188	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 188	# 2329
	lw		x1, -184(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -48(x2)	# 2330
	sw		x1, -184(x2)	# 2330
	addi	x2, x2, -188	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 188	# 2330
	lw		x1, -184(x2)	# 2330
	lw		x5, -20(x2)	# 2331
	flw		f1, -8(x2)	# 2331
	sw		x4, -184(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -188(x2)	# 2331
	addi	x2, x2, -192	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 192	# 2331
	lw		x1, -188(x2)	# 2331
	lw		x5, -184(x2)	# 2331
	sw		x4, 4(x5)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -188(x2)	# 2332
	addi	x2, x2, -192	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 192	# 2332
	lw		x1, -188(x2)	# 2332
	lw		x5, -184(x2)	# 2332
	sw		x4, 8(x5)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -188(x2)	# 2333
	addi	x2, x2, -192	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 192	# 2333
	lw		x1, -188(x2)	# 2333
	lw		x5, -184(x2)	# 2333
	sw		x4, 12(x5)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -188(x2)	# 2334
	addi	x2, x2, -192	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 192	# 2334
	lw		x1, -188(x2)	# 2334
	lw		x5, -184(x2)	# 2334
	sw		x4, 16(x5)	# 2334
	lw		x4, -20(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x1, -188(x2)	# 2329
	addi	x2, x2, -192	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 192	# 2329
	lw		x1, -188(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -48(x2)	# 2330
	sw		x1, -188(x2)	# 2330
	addi	x2, x2, -192	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 192	# 2330
	lw		x1, -188(x2)	# 2330
	lw		x5, -20(x2)	# 2331
	flw		f1, -8(x2)	# 2331
	sw		x4, -188(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -192(x2)	# 2331
	addi	x2, x2, -196	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 196	# 2331
	lw		x1, -192(x2)	# 2331
	lw		x5, -188(x2)	# 2331
	sw		x4, 4(x5)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -192(x2)	# 2332
	addi	x2, x2, -196	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 196	# 2332
	lw		x1, -192(x2)	# 2332
	lw		x5, -188(x2)	# 2332
	sw		x4, 8(x5)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -192(x2)	# 2333
	addi	x2, x2, -196	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 196	# 2333
	lw		x1, -192(x2)	# 2333
	lw		x5, -188(x2)	# 2333
	sw		x4, 12(x5)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -192(x2)	# 2334
	addi	x2, x2, -196	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 196	# 2334
	lw		x1, -192(x2)	# 2334
	lw		x5, -188(x2)	# 2334
	sw		x4, 16(x5)	# 2334
	lw		x4, 0(x2)	# 2347
	lw		x6, -4(x2)	# 2347
	addi	x5, x6, 0	# 2347
	sw		x1, -192(x2)	# 2347
	addi	x2, x2, -196	# 2347
	jal		x1, min_caml_create_array	# 2347
	addi	x2, x2, 196	# 2347
	lw		x1, -192(x2)	# 2347
	lw		x5, -20(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x4, -192(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -196(x2)	# 2329
	addi	x2, x2, -200	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 200	# 2329
	lw		x1, -196(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -48(x2)	# 2330
	sw		x1, -196(x2)	# 2330
	addi	x2, x2, -200	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 200	# 2330
	lw		x1, -196(x2)	# 2330
	lw		x5, -20(x2)	# 2331
	flw		f1, -8(x2)	# 2331
	sw		x4, -196(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -200(x2)	# 2331
	addi	x2, x2, -204	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 204	# 2331
	lw		x1, -200(x2)	# 2331
	lw		x5, -196(x2)	# 2331
	sw		x4, 4(x5)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -200(x2)	# 2332
	addi	x2, x2, -204	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 204	# 2332
	lw		x1, -200(x2)	# 2332
	lw		x5, -196(x2)	# 2332
	sw		x4, 8(x5)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -200(x2)	# 2333
	addi	x2, x2, -204	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 204	# 2333
	lw		x1, -200(x2)	# 2333
	lw		x5, -196(x2)	# 2333
	sw		x4, 12(x5)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -200(x2)	# 2334
	addi	x2, x2, -204	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 204	# 2334
	lw		x1, -200(x2)	# 2334
	lw		x5, -196(x2)	# 2334
	sw		x4, 16(x5)	# 2334
	addi	x4, x3, 0	# 2349
	addi	x3, x3, 32	# 2349
	sw		x5, 28(x4)	# 2349
	lw		x5, -192(x2)	# 2349
	sw		x5, 24(x4)	# 2349
	lw		x5, -188(x2)	# 2349
	sw		x5, 20(x4)	# 2349
	lw		x5, -184(x2)	# 2349
	sw		x5, 16(x4)	# 2349
	lw		x5, -180(x2)	# 2349
	sw		x5, 12(x4)	# 2349
	lw		x5, -176(x2)	# 2349
	sw		x5, 8(x4)	# 2349
	lw		x5, -172(x2)	# 2349
	sw		x5, 4(x4)	# 2349
	lw		x5, -168(x2)	# 2349
	sw		x5, 0(x4)	# 2349
	lw		x5, -84(x2)	# 2363
	addi	x31, x5, 0	# 2363
	addi	x5, x4, 0	# 2363
	addi	x4, x31, 0	# 2363
	sw		x1, -200(x2)	# 2363
	addi	x2, x2, -204	# 2363
	jal		x1, min_caml_create_array	# 2363
	addi	x2, x2, 204	# 2363
	lw		x1, -200(x2)	# 2363
	lw		x5, -124(x2)	# 2364
	sw		x1, -200(x2)	# 2364
	addi	x2, x2, -204	# 2364
	jal		x1, init_line_elements.3080.18109	# 2364
	addi	x2, x2, 204	# 2364
	lw		x1, -200(x2)	# 2364
	sw		x1, -200(x2)	# 741
	addi	x2, x2, -204	# 741
	jal		x1, min_caml_read_float	# 741
	addi	x2, x2, 204	# 741
	lw		x1, -200(x2)	# 741
	addi	x5, x0, 40288	# 741
	fsw		f1, 0(x5)	# 741
	sw		x1, -200(x2)	# 742
	addi	x2, x2, -204	# 742
	jal		x1, min_caml_read_float	# 742
	addi	x2, x2, 204	# 742
	lw		x1, -200(x2)	# 742
	addi	x6, x0, 40292	# 742
	fsw		f1, 0(x6)	# 742
	sw		x1, -200(x2)	# 743
	addi	x2, x2, -204	# 743
	jal		x1, min_caml_read_float	# 743
	addi	x2, x2, 204	# 743
	lw		x1, -200(x2)	# 743
	addi	x7, x0, 40296	# 743
	fsw		f1, 0(x7)	# 743
	sw		x1, -200(x2)	# 745
	addi	x2, x2, -204	# 745
	jal		x1, min_caml_read_float	# 745
	addi	x2, x2, 204	# 745
	lw		x1, -200(x2)	# 745
	lui		x9, %hi(l.27995)	# 734
	ori		x9, x9, %lo(l.27995)	# 734
	flw		f2, 0(x9)	# 734
	fmul	f1, f1, f2	# 734
	sw		x4, -200(x2)	# 746
	fsw		f2, -204(x2)	# 746
	fsw		f1, -208(x2)	# 746
	sw		x1, -212(x2)	# 746
	addi	x2, x2, -216	# 746
	jal		x1, cos.2638.17994	# 746
	addi	x2, x2, 216	# 746
	lw		x1, -212(x2)	# 746
	flw		f2, -208(x2)	# 747
	fsw		f1, -212(x2)	# 747
	fadd	f1, f0, f2	# 747
	sw		x1, -216(x2)	# 747
	addi	x2, x2, -220	# 747
	jal		x1, sin.2636.17992	# 747
	addi	x2, x2, 220	# 747
	lw		x1, -216(x2)	# 747
	fsw		f1, -216(x2)	# 748
	sw		x1, -220(x2)	# 748
	addi	x2, x2, -224	# 748
	jal		x1, min_caml_read_float	# 748
	addi	x2, x2, 224	# 748
	lw		x1, -220(x2)	# 748
	flw		f2, -204(x2)	# 734
	fmul	f1, f1, f2	# 734
	fsw		f1, -220(x2)	# 749
	sw		x1, -224(x2)	# 749
	addi	x2, x2, -228	# 749
	jal		x1, cos.2638.17994	# 749
	addi	x2, x2, 228	# 749
	lw		x1, -224(x2)	# 749
	flw		f2, -220(x2)	# 750
	fsw		f1, -224(x2)	# 750
	fadd	f1, f0, f2	# 750
	sw		x1, -228(x2)	# 750
	addi	x2, x2, -232	# 750
	jal		x1, sin.2636.17992	# 750
	addi	x2, x2, 232	# 750
	lw		x1, -228(x2)	# 750
	flw		f2, -212(x2)	# 752
	fmul	f3, f2, f1	# 752
	lui		x4, %hi(l.31095)	# 752
	ori		x4, x4, %lo(l.31095)	# 752
	flw		f4, 0(x4)	# 752
	fmul	f3, f3, f4	# 752
	addi	x4, x0, 40684	# 752
	fsw		f3, 0(x4)	# 752
	lui		x9, %hi(l.31099)	# 753
	ori		x9, x9, %lo(l.31099)	# 753
	flw		f3, 0(x9)	# 753
	flw		f5, -216(x2)	# 753
	fmul	f3, f5, f3	# 753
	addi	x9, x0, 40688	# 753
	fsw		f3, 0(x9)	# 753
	flw		f3, -224(x2)	# 754
	fmul	f6, f2, f3	# 754
	fmul	f4, f6, f4	# 754
	addi	x10, x0, 40692	# 754
	fsw		f4, 0(x10)	# 754
	addi	x11, x0, 40660	# 756
	fsw		f3, 0(x11)	# 756
	addi	x11, x0, 40664	# 757
	flw		f4, -8(x2)	# 757
	fsw		f4, 0(x11)	# 757
	fsub	f6, f0, f1	# 123
	addi	x11, x0, 40668	# 758
	fsw		f6, 0(x11)	# 758
	fsub	f5, f0, f5	# 123
	fmul	f1, f5, f1	# 760
	addi	x11, x0, 40672	# 760
	fsw		f1, 0(x11)	# 760
	fsub	f1, f0, f2	# 123
	addi	x12, x0, 40676	# 761
	fsw		f1, 0(x12)	# 761
	fmul	f1, f5, f3	# 762
	addi	x13, x0, 40680	# 762
	fsw		f1, 0(x13)	# 762
	flw		f1, 0(x5)	# 764
	flw		f2, 0(x4)	# 764
	fsub	f1, f1, f2	# 764
	addi	x4, x0, 40300	# 764
	fsw		f1, 0(x4)	# 764
	flw		f1, 0(x6)	# 765
	flw		f3, 0(x9)	# 765
	fsub	f1, f1, f3	# 765
	addi	x4, x0, 40304	# 765
	fsw		f1, 0(x4)	# 765
	flw		f1, 0(x7)	# 766
	flw		f5, 0(x10)	# 766
	fsub	f1, f1, f5	# 766
	addi	x4, x0, 40308	# 766
	fsw		f1, 0(x4)	# 766
	sw		x1, -228(x2)	# 773
	addi	x2, x2, -232	# 773
	jal		x1, min_caml_read_int	# 773
	addi	x2, x2, 232	# 773
	lw		x1, -228(x2)	# 773
	sw		x1, -228(x2)	# 776
	addi	x2, x2, -232	# 776
	jal		x1, min_caml_read_float	# 776
	addi	x2, x2, 232	# 776
	lw		x1, -228(x2)	# 776
	flw		f6, -204(x2)	# 734
	fmul	f1, f1, f6	# 734
	fsw		f3, -228(x2)	# 777
	fsw		f2, -232(x2)	# 777
	fsw		f1, -236(x2)	# 777
	sw		x1, -240(x2)	# 777
	addi	x2, x2, -244	# 777
	jal		x1, sin.2636.17992	# 777
	addi	x2, x2, 244	# 777
	lw		x1, -240(x2)	# 777
	fsub	f1, f0, f1	# 123
	addi	x4, x0, 40316	# 778
	fsw		f1, 0(x4)	# 778
	sw		x1, -240(x2)	# 779
	addi	x2, x2, -244	# 779
	jal		x1, min_caml_read_float	# 779
	addi	x2, x2, 244	# 779
	lw		x1, -240(x2)	# 779
	fmul	f1, f1, f6	# 734
	flw		f2, -236(x2)	# 780
	sw		x4, -240(x2)	# 780
	fsw		f1, -244(x2)	# 780
	fadd	f1, f0, f2	# 780
	sw		x1, -248(x2)	# 780
	addi	x2, x2, -252	# 780
	jal		x1, cos.2638.17994	# 780
	addi	x2, x2, 252	# 780
	lw		x1, -248(x2)	# 780
	flw		f2, -244(x2)	# 781
	fsw		f1, -248(x2)	# 781
	fadd	f1, f0, f2	# 781
	sw		x1, -252(x2)	# 781
	addi	x2, x2, -256	# 781
	jal		x1, sin.2636.17992	# 781
	addi	x2, x2, 256	# 781
	lw		x1, -252(x2)	# 781
	flw		f2, -248(x2)	# 782
	fmul	f1, f2, f1	# 782
	addi	x4, x0, 40312	# 782
	fsw		f1, 0(x4)	# 782
	flw		f1, -244(x2)	# 783
	sw		x4, -252(x2)	# 783
	sw		x1, -256(x2)	# 783
	addi	x2, x2, -260	# 783
	jal		x1, cos.2638.17994	# 783
	addi	x2, x2, 260	# 783
	lw		x1, -256(x2)	# 783
	flw		f2, -248(x2)	# 784
	fmul	f1, f2, f1	# 784
	addi	x4, x0, 40320	# 784
	fsw		f1, 0(x4)	# 784
	sw		x1, -256(x2)	# 785
	addi	x2, x2, -260	# 785
	jal		x1, min_caml_read_float	# 785
	addi	x2, x2, 260	# 785
	lw		x1, -256(x2)	# 785
	addi	x5, x0, 40324	# 785
	fsw		f1, 0(x5)	# 785
	lw		x5, -4(x2)	# 927
	fsw		f5, -256(x2)	# 927
	sw		x11, -260(x2)	# 927
	sw		x8, -264(x2)	# 927
	sw		x4, -268(x2)	# 927
	addi	x4, x5, 0	# 927
	sw		x1, -272(x2)	# 927
	addi	x2, x2, -276	# 927
	jal		x1, read_object.2787.18006	# 927
	addi	x2, x2, 276	# 927
	lw		x1, -272(x2)	# 927
	lw		x4, -4(x2)	# 964
	sw		x1, -272(x2)	# 964
	addi	x2, x2, -276	# 964
	jal		x1, read_and_network.2795.18012	# 964
	addi	x2, x2, 276	# 964
	lw		x1, -272(x2)	# 964
	lw		x4, -4(x2)	# 965
	sw		x1, -272(x2)	# 965
	addi	x2, x2, -276	# 965
	jal		x1, read_or_network.2793.18010	# 965
	addi	x2, x2, 276	# 965
	lw		x1, -272(x2)	# 965
	addi	x5, x0, 40536	# 965
	sw		x4, 0(x5)	# 965
	addi	x4, x0, 80	# 2172
	sw		x1, -272(x2)	# 2172
	addi	x2, x2, -276	# 2172
	jal		x1, min_caml_print_char	# 2172
	addi	x2, x2, 276	# 2172
	lw		x1, -272(x2)	# 2172
	addi	x4, x0, 48	# 2173
	addi	x5, x0, 51	# 2173
	sw		x4, -272(x2)	# 2173
	addi	x4, x5, 0	# 2173
	sw		x1, -276(x2)	# 2173
	addi	x2, x2, -280	# 2173
	jal		x1, min_caml_print_char	# 2173
	addi	x2, x2, 280	# 2173
	lw		x1, -276(x2)	# 2173
	addi	x4, x0, 10	# 2174
	sw		x4, -276(x2)	# 2174
	sw		x1, -280(x2)	# 2174
	addi	x2, x2, -284	# 2174
	jal		x1, min_caml_print_char	# 2174
	addi	x2, x2, 284	# 2174
	lw		x1, -280(x2)	# 2174
	addi	x4, x0, 100	# 238
	lw		x5, -84(x2)	# 238
	sw		x4, -280(x2)	# 238
	ble		x4, x5, ble_cont.34563	# 238
	lw		x6, -272(x2)	# 238
	addi	x4, x6, 0	# 238
	sw		x1, -284(x2)	# 238
	addi	x2, x2, -288	# 238
	jal		x1, min_caml_print_char	# 238
	addi	x2, x2, 288	# 238
	lw		x1, -284(x2)	# 238
ble_cont.34563:
	lw		x4, -276(x2)	# 239
	ble		x4, x5, ble_cont.34565	# 239
	lw		x6, -272(x2)	# 239
	addi	x4, x6, 0	# 239
	sw		x1, -284(x2)	# 239
	addi	x2, x2, -288	# 239
	jal		x1, min_caml_print_char	# 239
	addi	x2, x2, 288	# 239
	lw		x1, -284(x2)	# 239
ble_cont.34565:
	addi	x4, x5, 0	# 240
	sw		x1, -284(x2)	# 240
	addi	x2, x2, -288	# 240
	jal		x1, print_int_main.2648.18004	# 240
	addi	x2, x2, 288	# 240
	lw		x1, -284(x2)	# 240
	addi	x4, x0, 32	# 2176
	sw		x4, -284(x2)	# 2176
	sw		x1, -288(x2)	# 2176
	addi	x2, x2, -292	# 2176
	jal		x1, min_caml_print_char	# 2176
	addi	x2, x2, 292	# 2176
	lw		x1, -288(x2)	# 2176
	lw		x4, -68(x2)	# 2177
	lw		x4, 0(x4)	# 2177
	lw		x5, -280(x2)	# 238
	sw		x4, -288(x2)	# 238
	ble		x5, x4, ble_cont.34567	# 238
	lw		x5, -272(x2)	# 238
	addi	x4, x5, 0	# 238
	sw		x1, -292(x2)	# 238
	addi	x2, x2, -296	# 238
	jal		x1, min_caml_print_char	# 238
	addi	x2, x2, 296	# 238
	lw		x1, -292(x2)	# 238
ble_cont.34567:
	lw		x4, -288(x2)	# 239
	lw		x5, -276(x2)	# 239
	ble		x5, x4, ble_cont.34569	# 239
	lw		x6, -272(x2)	# 239
	addi	x4, x6, 0	# 239
	sw		x1, -292(x2)	# 239
	addi	x2, x2, -296	# 239
	jal		x1, min_caml_print_char	# 239
	addi	x2, x2, 296	# 239
	lw		x1, -292(x2)	# 239
ble_cont.34569:
	lw		x4, -288(x2)	# 240
	sw		x1, -292(x2)	# 240
	addi	x2, x2, -296	# 240
	jal		x1, print_int_main.2648.18004	# 240
	addi	x2, x2, 296	# 240
	lw		x1, -292(x2)	# 240
	lw		x4, -284(x2)	# 2178
	sw		x1, -292(x2)	# 2178
	addi	x2, x2, -296	# 2178
	jal		x1, min_caml_print_char	# 2178
	addi	x2, x2, 296	# 2178
	lw		x1, -292(x2)	# 2178
	addi	x4, x0, 255	# 2179
	sw		x1, -292(x2)	# 240
	addi	x2, x2, -296	# 240
	jal		x1, print_int_main.2648.18004	# 240
	addi	x2, x2, 296	# 240
	lw		x1, -292(x2)	# 240
	lw		x4, -276(x2)	# 2180
	sw		x1, -292(x2)	# 2180
	addi	x2, x2, -296	# 2180
	jal		x1, min_caml_print_char	# 2180
	addi	x2, x2, 296	# 2180
	lw		x1, -292(x2)	# 2180
	lw		x4, -96(x2)	# 2478
	sw		x1, -292(x2)	# 2478
	addi	x2, x2, -296	# 2478
	jal		x1, create_dirvecs.3112.18132	# 2478
	addi	x2, x2, 296	# 2478
	lw		x1, -292(x2)	# 2478
	addi	x4, x0, 9	# 2479
	lw		x5, -4(x2)	# 2479
	addi	x6, x5, 0	# 2479
	sw		x1, -292(x2)	# 2479
	addi	x2, x2, -296	# 2479
	jal		x1, calc_dirvec_rows.3103.18125	# 2479
	addi	x2, x2, 296	# 2479
	lw		x1, -292(x2)	# 2479
	lw		x4, -96(x2)	# 2480
	sw		x12, -292(x2)	# 2480
	sw		x1, -296(x2)	# 2480
	addi	x2, x2, -300	# 2480
	jal		x1, init_vecset_constants.3117.18137	# 2480
	addi	x2, x2, 300	# 2480
	lw		x1, -296(x2)	# 2480
	lw		x4, -252(x2)	# 316
	flw		f1, 0(x4)	# 316
	lw		x4, -52(x2)	# 316
	fsw		f1, 0(x4)	# 316
	lw		x4, -240(x2)	# 317
	flw		f2, 0(x4)	# 317
	addi	x4, x0, 40740	# 317
	fsw		f2, 0(x4)	# 317
	lw		x4, -268(x2)	# 318
	flw		f3, 0(x4)	# 318
	addi	x4, x0, 40744	# 318
	fsw		f3, 0(x4)	# 318
	addi	x4, x0, 40000	# 1344
	lw		x4, 0(x4)	# 1344
	addi	x5, x4, -1	# 1344
	lw		x6, -60(x2)	# 1344
	sw		x4, -296(x2)	# 1344
	fsw		f3, -300(x2)	# 1344
	fsw		f2, -304(x2)	# 1344
	fsw		f1, -308(x2)	# 1344
	sw		x5, -312(x2)	# 1344
	addi	x4, x6, 0	# 1344
	sw		x1, -316(x2)	# 1344
	addi	x2, x2, -320	# 1344
	jal		x1, iter_setup_dirvec_constants.2892.18014	# 1344
	addi	x2, x2, 320	# 1344
	lw		x1, -316(x2)	# 1344
	lw		x4, -312(x2)	# 2527
	lw		x5, -4(x2)	# 2527
	ble		x5, x4, ble.34572	# 2527
	jal		x0, ble_cont.34571	# 2527
ble.34572:
	mul		x6, x30, x4	# 2528
	addi	x6, x6, 40048	# 2528
	lw		x6, 0(x6)	# 2528
	lw		x7, 8(x6)	# 420
	lw		x8, -36(x2)	# 2529
	beq		x7, x8, beq.34574	# 2529
	jal		x0, ble_cont.34571	# 2529
beq.34574:
	lw		x7, 28(x6)	# 518
	flw		f1, 0(x7)	# 523
	fle		f30, f1, ble_cont.34571	# 125
	lw		x7, 4(x6)	# 410
	lw		x9, 0(x2)	# 2533
	beq		x7, x9, beq.34578	# 2533
	beq		x7, x8, beq.34580	# 2535
	jal		x0, ble_cont.34571	# 2535
beq.34580:
	lw		x7, -96(x2)	# 2512
	mul		x7, x4, x7	# 2512
	addi	x7, x7, 1	# 2512
	addi	x9, x0, 41736	# 2513
	lw		x10, 0(x9)	# 2513
	fsub	f1, f30, f1	# 2514
	lw		x6, 16(x6)	# 478
	flw		f2, 0(x6)	# 349
	flw		f3, -308(x2)	# 349
	fmul	f4, f3, f2	# 349
	flw		f5, 4(x6)	# 349
	flw		f6, -304(x2)	# 349
	fmul	f7, f6, f5	# 349
	fadd	f4, f4, f7	# 349
	flw		f7, 8(x6)	# 349
	flw		f8, -300(x2)	# 349
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
	lw		x6, -20(x2)	# 2439
	flw		f5, -8(x2)	# 2439
	fsw		f1, -316(x2)	# 2439
	addi	x4, x6, 0	# 2439
	fadd	f1, f0, f5	# 2439
	sw		x1, -320(x2)	# 2439
	addi	x2, x2, -324	# 2439
	jal		x1, min_caml_create_float_array	# 2439
	addi	x2, x2, 324	# 2439
	lw		x1, -320(x2)	# 2439
	addi	x5, x4, 0	# 2439
	lw		x4, -296(x2)	# 2440
	sw		x5, -320(x2)	# 2440
	sw		x1, -324(x2)	# 2440
	addi	x2, x2, -328	# 2440
	jal		x1, min_caml_create_array	# 2440
	addi	x2, x2, 328	# 2440
	lw		x1, -324(x2)	# 2440
	addi	x5, x3, 0	# 2441
	addi	x3, x3, 8	# 2441
	sw		x4, 4(x5)	# 2441
	lw		x4, -320(x2)	# 2441
	sw		x4, 0(x5)	# 2441
	fsw		f2, 0(x4)	# 297
	fsw		f3, 4(x4)	# 298
	fsw		f4, 8(x4)	# 299
	lw		x4, -312(x2)	# 1344
	sw		x9, -324(x2)	# 1344
	sw		x10, -328(x2)	# 1344
	sw		x7, -332(x2)	# 1344
	sw		x5, -336(x2)	# 1344
	addi	x31, x5, 0	# 1344
	addi	x5, x4, 0	# 1344
	addi	x4, x31, 0	# 1344
	sw		x1, -340(x2)	# 1344
	addi	x2, x2, -344	# 1344
	jal		x1, iter_setup_dirvec_constants.2892.18014	# 1344
	addi	x2, x2, 344	# 1344
	lw		x1, -340(x2)	# 1344
	addi	x4, x3, 0	# 2493
	addi	x3, x3, 12	# 2493
	flw		f1, -316(x2)	# 2493
	fsw		f1, 8(x4)	# 2493
	lw		x5, -336(x2)	# 2493
	sw		x5, 4(x4)	# 2493
	lw		x5, -332(x2)	# 2493
	sw		x5, 0(x4)	# 2493
	lw		x5, -328(x2)	# 2493
	mul		x6, x30, x5	# 2493
	addi	x6, x6, 41016	# 2493
	sw		x4, 0(x6)	# 2493
	addi	x4, x5, 1	# 2521
	lw		x5, -324(x2)	# 2521
	sw		x4, 0(x5)	# 2521
	jal		x0, ble_cont.34571	# 2533
beq.34578:
	lw		x6, -96(x2)	# 2498
	mul		x6, x4, x6	# 2498
	addi	x7, x0, 41736	# 2499
	lw		x9, 0(x7)	# 2499
	fsub	f1, f30, f1	# 2500
	flw		f2, -308(x2)	# 123
	fsub	f3, f0, f2	# 123
	flw		f4, -304(x2)	# 123
	fsub	f5, f0, f4	# 123
	flw		f6, -300(x2)	# 123
	fsub	f7, f0, f6	# 123
	addi	x10, x6, 1	# 2504
	lw		x11, -20(x2)	# 2439
	flw		f8, -8(x2)	# 2439
	fsw		f1, -340(x2)	# 2439
	addi	x4, x11, 0	# 2439
	fadd	f1, f0, f8	# 2439
	sw		x1, -344(x2)	# 2439
	addi	x2, x2, -348	# 2439
	jal		x1, min_caml_create_float_array	# 2439
	addi	x2, x2, 348	# 2439
	lw		x1, -344(x2)	# 2439
	addi	x5, x4, 0	# 2439
	lw		x4, -296(x2)	# 2440
	sw		x6, -344(x2)	# 2440
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
	fsw		f2, 0(x4)	# 297
	fsw		f5, 4(x4)	# 298
	fsw		f7, 8(x4)	# 299
	lw		x4, -312(x2)	# 1344
	sw		x7, -352(x2)	# 1344
	fsw		f5, -356(x2)	# 1344
	fsw		f7, -360(x2)	# 1344
	fsw		f3, -364(x2)	# 1344
	sw		x9, -368(x2)	# 1344
	sw		x10, -372(x2)	# 1344
	sw		x5, -376(x2)	# 1344
	addi	x31, x5, 0	# 1344
	addi	x5, x4, 0	# 1344
	addi	x4, x31, 0	# 1344
	sw		x1, -380(x2)	# 1344
	addi	x2, x2, -384	# 1344
	jal		x1, iter_setup_dirvec_constants.2892.18014	# 1344
	addi	x2, x2, 384	# 1344
	lw		x1, -380(x2)	# 1344
	addi	x4, x3, 0	# 2493
	addi	x3, x3, 12	# 2493
	flw		f1, -340(x2)	# 2493
	fsw		f1, 8(x4)	# 2493
	lw		x5, -376(x2)	# 2493
	sw		x5, 4(x4)	# 2493
	lw		x5, -372(x2)	# 2493
	sw		x5, 0(x4)	# 2493
	lw		x5, -368(x2)	# 2493
	mul		x6, x30, x5	# 2493
	addi	x6, x6, 41016	# 2493
	sw		x4, 0(x6)	# 2493
	addi	x4, x5, 1	# 2505
	lw		x6, -344(x2)	# 2505
	addi	x7, x6, 2	# 2505
	lw		x8, -20(x2)	# 2439
	flw		f2, -8(x2)	# 2439
	sw		x4, -380(x2)	# 2439
	addi	x4, x8, 0	# 2439
	fadd	f1, f0, f2	# 2439
	sw		x1, -384(x2)	# 2439
	addi	x2, x2, -388	# 2439
	jal		x1, min_caml_create_float_array	# 2439
	addi	x2, x2, 388	# 2439
	lw		x1, -384(x2)	# 2439
	addi	x5, x4, 0	# 2439
	lw		x4, -296(x2)	# 2440
	sw		x5, -384(x2)	# 2440
	sw		x1, -388(x2)	# 2440
	addi	x2, x2, -392	# 2440
	jal		x1, min_caml_create_array	# 2440
	addi	x2, x2, 392	# 2440
	lw		x1, -388(x2)	# 2440
	addi	x5, x3, 0	# 2441
	addi	x3, x3, 8	# 2441
	sw		x4, 4(x5)	# 2441
	lw		x4, -384(x2)	# 2441
	sw		x4, 0(x5)	# 2441
	flw		f1, -364(x2)	# 297
	fsw		f1, 0(x4)	# 297
	flw		f2, -304(x2)	# 298
	fsw		f2, 4(x4)	# 298
	flw		f2, -360(x2)	# 299
	fsw		f2, 8(x4)	# 299
	lw		x4, -312(x2)	# 1344
	sw		x7, -388(x2)	# 1344
	sw		x5, -392(x2)	# 1344
	addi	x31, x5, 0	# 1344
	addi	x5, x4, 0	# 1344
	addi	x4, x31, 0	# 1344
	sw		x1, -396(x2)	# 1344
	addi	x2, x2, -400	# 1344
	jal		x1, iter_setup_dirvec_constants.2892.18014	# 1344
	addi	x2, x2, 400	# 1344
	lw		x1, -396(x2)	# 1344
	addi	x4, x3, 0	# 2493
	addi	x3, x3, 12	# 2493
	flw		f1, -340(x2)	# 2493
	fsw		f1, 8(x4)	# 2493
	lw		x5, -392(x2)	# 2493
	sw		x5, 4(x4)	# 2493
	lw		x5, -388(x2)	# 2493
	sw		x5, 0(x4)	# 2493
	lw		x5, -380(x2)	# 2493
	mul		x5, x30, x5	# 2493
	addi	x5, x5, 41016	# 2493
	sw		x4, 0(x5)	# 2493
	lw		x4, -368(x2)	# 2506
	addi	x5, x4, 2	# 2506
	lw		x6, -344(x2)	# 2506
	addi	x6, x6, 3	# 2506
	lw		x7, -20(x2)	# 2439
	flw		f2, -8(x2)	# 2439
	sw		x5, -396(x2)	# 2439
	addi	x4, x7, 0	# 2439
	fadd	f1, f0, f2	# 2439
	sw		x1, -400(x2)	# 2439
	addi	x2, x2, -404	# 2439
	jal		x1, min_caml_create_float_array	# 2439
	addi	x2, x2, 404	# 2439
	lw		x1, -400(x2)	# 2439
	addi	x5, x4, 0	# 2439
	lw		x4, -296(x2)	# 2440
	sw		x6, -400(x2)	# 2440
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
	flw		f1, -364(x2)	# 297
	fsw		f1, 0(x4)	# 297
	flw		f1, -356(x2)	# 298
	fsw		f1, 4(x4)	# 298
	flw		f1, -300(x2)	# 299
	fsw		f1, 8(x4)	# 299
	lw		x4, -312(x2)	# 1344
	sw		x5, -408(x2)	# 1344
	addi	x31, x5, 0	# 1344
	addi	x5, x4, 0	# 1344
	addi	x4, x31, 0	# 1344
	sw		x1, -412(x2)	# 1344
	addi	x2, x2, -416	# 1344
	jal		x1, iter_setup_dirvec_constants.2892.18014	# 1344
	addi	x2, x2, 416	# 1344
	lw		x1, -412(x2)	# 1344
	addi	x4, x3, 0	# 2493
	addi	x3, x3, 12	# 2493
	flw		f1, -340(x2)	# 2493
	fsw		f1, 8(x4)	# 2493
	lw		x5, -408(x2)	# 2493
	sw		x5, 4(x4)	# 2493
	lw		x5, -400(x2)	# 2493
	sw		x5, 0(x4)	# 2493
	lw		x5, -396(x2)	# 2493
	mul		x5, x30, x5	# 2493
	addi	x5, x5, 41016	# 2493
	sw		x4, 0(x5)	# 2493
	lw		x4, -368(x2)	# 2507
	addi	x4, x4, 3	# 2507
	lw		x5, -352(x2)	# 2507
	sw		x4, 0(x5)	# 2507
ble_cont.34571:
	lw		x4, -80(x2)	# 2275
	flw		f1, 0(x4)	# 2275
	lw		x4, -264(x2)	# 2275
	lw		x4, 0(x4)	# 2275
	lw		x5, -4(x2)	# 2275
	sub		x4, x5, x4	# 2275
	fsw		f1, -412(x2)	# 2275
	sw		x1, -416(x2)	# 2275
	addi	x2, x2, -420	# 2275
	jal		x1, min_caml_float_of_int	# 2275
	addi	x2, x2, 420	# 2275
	lw		x1, -416(x2)	# 2275
	flw		f2, -412(x2)	# 2275
	fmul	f1, f2, f1	# 2275
	lw		x4, -260(x2)	# 2278
	flw		f2, 0(x4)	# 2278
	fmul	f2, f1, f2	# 2278
	flw		f3, -232(x2)	# 2278
	fadd	f2, f2, f3	# 2278
	lw		x4, -292(x2)	# 2279
	flw		f3, 0(x4)	# 2279
	fmul	f3, f1, f3	# 2279
	flw		f4, -228(x2)	# 2279
	fadd	f3, f3, f4	# 2279
	flw		f4, 0(x13)	# 2280
	fmul	f1, f1, f4	# 2280
	flw		f4, -256(x2)	# 2280
	fadd	f1, f1, f4	# 2280
	lw		x4, -84(x2)	# 2281
	addi	x5, x4, -1	# 2281
	lw		x4, -164(x2)	# 2281
	lw		x6, -4(x2)	# 2281
	fadd	f31, f0, f3	# 2281
	fadd	f3, f0, f1	# 2281
	fadd	f1, f0, f2	# 2281
	fadd	f2, f0, f31	# 2281
	sw		x1, -416(x2)	# 2281
	addi	x2, x2, -420	# 2281
	jal		x1, pretrace_pixels.3051.18088	# 2281
	addi	x2, x2, 420	# 2281
	lw		x1, -416(x2)	# 2281
	lw		x4, -4(x2)	# 2564
	lw		x5, -128(x2)	# 2564
	lw		x6, -164(x2)	# 2564
	lw		x7, -200(x2)	# 2564
	lw		x8, -36(x2)	# 2564
	lw		x9, -20(x2)	# 2564
	sw		x1, -416(x2)	# 2564
	addi	x2, x2, -420	# 2564
	jal		x1, scan_line.3069.18102	# 2564
	addi	x2, x2, 420	# 2564
	lw		x1, -416(x2)	# 2564
	EXIT	
