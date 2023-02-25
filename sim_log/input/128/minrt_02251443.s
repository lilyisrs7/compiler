l.33619:	# 8388608.000000
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
	fle		f0, f1, fle.33620	# 204
	fsub	f1, f0, f1	# 204
	sw		x1, 0(x2)	# 204
	addi	x2, x2, -4	# 204
	jal		x1, sin.2636.17992	# 204
	addi	x2, x2, 4	# 204
	lw		x1, 0(x2)	# 204
	fsub	f1, f0, f1	# 204
	jalr	x0, x1, 0	# 204
fle.33620:
	lui		x4, %hi(l.27915)	# 179
	ori		x4, x4, %lo(l.27915)	# 179
	flw		f2, 0(x4)	# 179
	fle		f2, f1, fle.33621	# 205
	lui		x4, %hi(l.27917)	# 178
	ori		x4, x4, %lo(l.27917)	# 178
	flw		f2, 0(x4)	# 178
	fle		f2, f1, fle.33622	# 206
	lui		x4, %hi(l.27919)	# 180
	ori		x4, x4, %lo(l.27919)	# 180
	flw		f3, 0(x4)	# 180
	fle		f1, f3, fle.33623	# 207
	fsub	f1, f2, f1	# 207
	jal		x0, sin.2636.17992	# 207
fle.33623:
	lui		x4, %hi(l.27922)	# 181
	ori		x4, x4, %lo(l.27922)	# 181
	flw		f2, 0(x4)	# 181
	fle		f2, f1, fle.33624	# 208
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
fle.33624:
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
fle.33622:
	fsub	f1, f1, f2	# 206
	sw		x1, 0(x2)	# 206
	addi	x2, x2, -4	# 206
	jal		x1, sin.2636.17992	# 206
	addi	x2, x2, 4	# 206
	lw		x1, 0(x2)	# 206
	fsub	f1, f0, f1	# 206
	jalr	x0, x1, 0	# 206
fle.33621:
	fsub	f1, f1, f2	# 205
	jal		x0, sin.2636.17992	# 205
cos.2638.17994:
	fle		f0, f1, fle.33625	# 212
	fsub	f1, f0, f1	# 212
	jal		x0, cos.2638.17994	# 212
fle.33625:
	lui		x4, %hi(l.27922)	# 181
	ori		x4, x4, %lo(l.27922)	# 181
	flw		f2, 0(x4)	# 181
	fle		f1, f2, fle.33626	# 213
	lui		x4, %hi(l.27919)	# 180
	ori		x4, x4, %lo(l.27919)	# 180
	flw		f2, 0(x4)	# 180
	fsub	f1, f2, f1	# 213
	jal		x0, sin.2636.17992	# 213
fle.33626:
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
	fle		f0, f1, fle.33627	# 217
	fsub	f1, f0, f1	# 217
	sw		x1, 0(x2)	# 217
	addi	x2, x2, -4	# 217
	jal		x1, atan.2640.17996	# 217
	addi	x2, x2, 4	# 217
	lw		x1, 0(x2)	# 217
	fsub	f1, f0, f1	# 217
	jalr	x0, x1, 0	# 217
fle.33627:
	lui		x4, %hi(l.27949)	# 218
	ori		x4, x4, %lo(l.27949)	# 218
	flw		f2, 0(x4)	# 218
	fle		f1, f2, fle.33628	# 218
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
fle.33628:
	lui		x4, %hi(l.27953)	# 219
	ori		x4, x4, %lo(l.27953)	# 219
	flw		f2, 0(x4)	# 219
	fle		f2, f1, fle.33629	# 219
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
fle.33629:
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
	ble		x6, x4, ble.33630	# 228
	addi	x4, x5, 0	# 228
	jalr	x0, x1, 0	# 228
ble.33630:
	addi	x4, x4, -10	# 228
	addi	x5, x5, 1	# 228
	jal		x0, div_rem.2642.17998	# 228
div_fifty.2645.18001:
	addi	x6, x0, 50	# 28
	ble		x6, x4, ble.33631	# 230
	jal		x0, div_rem.2642.17998	# 230
ble.33631:
	addi	x4, x4, -50	# 230
	addi	x5, x5, 5	# 230
	jal		x0, div_fifty.2645.18001	# 230
print_int_main.2648.18004:
	addi	x5, x0, 10	# 232
	ble		x5, x4, ble.33632	# 232
	addi	x4, x4, 48	# 232
	jal		x0, min_caml_print_char	# 232
ble.33632:
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
	ble		x5, x4, ble.33633	# 918
	sw		x4, 0(x2)	# 836
	sw		x1, -4(x2)	# 836
	addi	x2, x2, -8	# 836
	jal		x1, min_caml_read_int	# 836
	addi	x2, x2, 8	# 836
	lw		x1, -4(x2)	# 836
	beq		x4, x20, beq.33635	# 837
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
	add		x5, x0, x24	# 16
	sw		x4, -16(x2)	# 843
	fsw		f0, -20(x2)	# 843
	sw		x24, -24(x2)	# 843
	addi	x4, x24, 0	# 843
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
	addi	x6, x4, 0	# 844
	fsw		f1, 0(x6)	# 844
	sw		x1, -28(x2)	# 845
	addi	x2, x2, -32	# 845
	jal		x1, min_caml_read_float	# 845
	addi	x2, x2, 32	# 845
	lw		x1, -28(x2)	# 845
	add		x7, x0, x30	# 845
	addi	x8, x4, 4	# 845
	fsw		f1, 0(x8)	# 845
	sw		x1, -28(x2)	# 846
	addi	x2, x2, -32	# 846
	jal		x1, min_caml_read_float	# 846
	addi	x2, x2, 32	# 846
	lw		x1, -28(x2)	# 846
	add		x9, x0, x22	# 65
	addi	x10, x4, 8	# 846
	fsw		f1, 0(x10)	# 846
	lw		x11, -24(x2)	# 848
	flw		f1, -20(x2)	# 848
	sw		x4, -28(x2)	# 848
	sw		x0, -32(x2)	# 848
	addi	x4, x11, 0	# 848
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
	addi	x5, x4, 0	# 849
	fsw		f1, 0(x5)	# 849
	sw		x1, -36(x2)	# 850
	addi	x2, x2, -40	# 850
	jal		x1, min_caml_read_float	# 850
	addi	x2, x2, 40	# 850
	lw		x1, -36(x2)	# 850
	addi	x5, x4, 4	# 850
	fsw		f1, 0(x5)	# 850
	sw		x1, -36(x2)	# 851
	addi	x2, x2, -40	# 851
	jal		x1, min_caml_read_float	# 851
	addi	x2, x2, 40	# 851
	lw		x1, -36(x2)	# 851
	addi	x5, x4, 8	# 851
	fsw		f1, 0(x5)	# 851
	sw		x1, -36(x2)	# 853
	addi	x2, x2, -40	# 853
	jal		x1, min_caml_read_float	# 853
	addi	x2, x2, 40	# 853
	lw		x1, -36(x2)	# 853
	flw		f2, -20(x2)	# 122
	fle		f2, f1, fle.33637	# 122
	addi	x5, x0, 1	# 122
	jal		x0, fle_cont.33636	# 122
fle.33637:
	addi	x5, x0, 0	# 122
fle_cont.33636:
	fsw		f1, -36(x2)	# 855
	sw		x4, -40(x2)	# 855
	sw		x5, -44(x2)	# 855
	sw		x22, -48(x2)	# 855
	addi	x4, x22, 0	# 855
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
	addi	x5, x4, 0	# 856
	fsw		f1, 0(x5)	# 856
	sw		x1, -52(x2)	# 857
	addi	x2, x2, -56	# 857
	jal		x1, min_caml_read_float	# 857
	addi	x2, x2, 56	# 857
	lw		x1, -52(x2)	# 857
	addi	x5, x4, 4	# 857
	fsw		f1, 0(x5)	# 857
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
	addi	x5, x4, 0	# 860
	fsw		f1, 0(x5)	# 860
	sw		x1, -56(x2)	# 861
	addi	x2, x2, -60	# 861
	jal		x1, min_caml_read_float	# 861
	addi	x2, x2, 60	# 861
	lw		x1, -56(x2)	# 861
	addi	x5, x4, 4	# 861
	fsw		f1, 0(x5)	# 861
	sw		x1, -56(x2)	# 862
	addi	x2, x2, -60	# 862
	jal		x1, min_caml_read_float	# 862
	addi	x2, x2, 60	# 862
	lw		x1, -56(x2)	# 862
	addi	x5, x4, 8	# 862
	fsw		f1, 0(x5)	# 862
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
	lw		x9, -16(x2)	# 865
	beq		x9, x5, beq_cont.33638	# 865
	sw		x1, -60(x2)	# 867
	addi	x2, x2, -64	# 867
	jal		x1, min_caml_read_float	# 867
	addi	x2, x2, 64	# 867
	lw		x1, -60(x2)	# 867
	lui		x11, %hi(l.27995)	# 734
	ori		x11, x11, %lo(l.27995)	# 734
	flw		f2, 0(x11)	# 734
	fmul	f1, f1, f2	# 734
	addi	x11, x4, 0	# 867
	fsw		f1, 0(x11)	# 867
	sw		x1, -60(x2)	# 868
	addi	x2, x2, -64	# 868
	jal		x1, min_caml_read_float	# 868
	addi	x2, x2, 64	# 868
	lw		x1, -60(x2)	# 868
	fmul	f1, f1, f2	# 734
	addi	x11, x4, 4	# 868
	fsw		f1, 0(x11)	# 868
	sw		x1, -60(x2)	# 869
	addi	x2, x2, -64	# 869
	jal		x1, min_caml_read_float	# 869
	addi	x2, x2, 64	# 869
	lw		x1, -60(x2)	# 869
	fmul	f1, f1, f2	# 734
	addi	x11, x4, 8	# 869
	fsw		f1, 0(x11)	# 869
beq_cont.33638:
	lw		x11, -48(x2)	# 876
	lw		x12, -8(x2)	# 876
	beq		x12, x11, beq.33641	# 876
	lw		x13, -44(x2)	# 876
	jal		x0, beq_cont.33640	# 876
beq.33641:
	addi	x13, x0, 1	# 876
beq_cont.33640:
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
	lw		x7, -56(x2)	# 880
	sw		x7, 32(x5)	# 880
	lw		x7, -52(x2)	# 880
	sw		x7, 28(x5)	# 880
	sw		x13, 24(x5)	# 880
	lw		x7, -40(x2)	# 880
	sw		x7, 20(x5)	# 880
	lw		x7, -28(x2)	# 880
	sw		x7, 16(x5)	# 880
	sw		x9, 12(x5)	# 880
	lw		x7, -12(x2)	# 880
	sw		x7, 8(x5)	# 880
	sw		x12, 4(x5)	# 880
	lw		x7, -4(x2)	# 880
	sw		x7, 0(x5)	# 880
	lw		x7, 0(x2)	# 888
	mul		x13, x30, x7	# 888
	addi	x13, x13, 40048	# 888
	sw		x5, 0(x13)	# 888
	lw		x5, -24(x2)	# 890
	beq		x12, x5, beq.33643	# 890
	beq		x12, x11, beq.33645	# 900
	jal		x0, beq_cont.33642	# 900
beq.33645:
	flw		f1, 0(x6)	# 340
	fmul	f2, f1, f1	# 127
	flw		f3, 0(x8)	# 340
	fmul	f4, f3, f3	# 127
	fadd	f2, f2, f4	# 340
	flw		f4, 0(x10)	# 340
	fmul	f5, f4, f4	# 127
	fadd	f2, f2, f5	# 340
	fsqrt	f2, f2	# 340
	flw		f5, -20(x2)	# 120
	feq		f2, f5, feq.33647	# 120
	flw		f6, -36(x2)	# 122
	fle		f5, f6, fle.33649	# 122
	fdiv	f2, f30, f2	# 341
	jal		x0, feq_cont.33646	# 122
fle.33649:
	fdiv	f2, f25, f2	# 341
	jal		x0, feq_cont.33646	# 120
feq.33647:
	fadd	f2, f0, f30	# 341
feq_cont.33646:
	fmul	f1, f1, f2	# 342
	fsw		f1, 0(x6)	# 342
	fmul	f1, f3, f2	# 343
	fsw		f1, 0(x8)	# 343
	fmul	f1, f4, f2	# 344
	fsw		f1, 0(x10)	# 344
	jal		x0, beq_cont.33642	# 890
beq.33643:
	flw		f1, 0(x6)	# 893
	flw		f2, -20(x2)	# 120
	feq		f1, f2, feq.33651	# 120
	fle		f1, f2, fle.33655	# 121
	fadd	f3, f0, f30	# 270
	jal		x0, feq_cont.33652	# 121
fle.33655:
	fadd	f3, f0, f25	# 271
	jal		x0, feq_cont.33652	# 120
feq.33653:
	fadd	f3, f0, f2	# 269
feq_cont.33652:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 894
	jal		x0, feq_cont.33650	# 120
feq.33651:
	fadd	f1, f0, f2	# 894
feq_cont.33650:
	fsw		f1, 0(x6)	# 894
	flw		f1, 0(x8)	# 895
	feq		f1, f2, feq.33657	# 120
	fle		f1, f2, fle.33661	# 121
	fadd	f3, f0, f30	# 270
	jal		x0, feq_cont.33658	# 121
fle.33661:
	fadd	f3, f0, f25	# 271
	jal		x0, feq_cont.33658	# 120
feq.33659:
	fadd	f3, f0, f2	# 269
feq_cont.33658:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 896
	jal		x0, feq_cont.33656	# 120
feq.33657:
	fadd	f1, f0, f2	# 896
feq_cont.33656:
	fsw		f1, 0(x8)	# 896
	flw		f1, 0(x10)	# 897
	feq		f1, f2, feq.33663	# 120
	fle		f1, f2, fle.33667	# 121
	fadd	f2, f0, f30	# 270
	jal		x0, feq_cont.33664	# 121
fle.33667:
	fadd	f2, f0, f25	# 271
feq_cont.33664:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f2, f1	# 898
	jal		x0, feq_cont.33662	# 120
feq.33663:
	fadd	f1, f0, f2	# 898
feq_cont.33662:
	fsw		f1, 0(x10)	# 898
beq_cont.33642:
	lw		x5, -32(x2)	# 906
	beq		x9, x5, beq_cont.33668	# 906
	addi	x5, x4, 0	# 795
	flw		f1, 0(x5)	# 795
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
	addi	x9, x4, 4	# 797
	flw		f2, 0(x9)	# 797
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
	addi	x4, x4, 8	# 799
	flw		f2, 0(x4)	# 799
	sw		x4, -84(x2)	# 799
	fsw		f1, -88(x2)	# 799
	fsw		f2, -92(x2)	# 799
	fadd	f1, f0, f2	# 799
	sw		x1, -96(x2)	# 799
	addi	x2, x2, -100	# 799
	jal		x1, cos.2638.17994	# 799
	addi	x2, x2, 100	# 799
	lw		x1, -96(x2)	# 799
	flw		f2, -92(x2)	# 800
	fsw		f1, -96(x2)	# 800
	fadd	f1, f0, f2	# 800
	sw		x1, -100(x2)	# 800
	addi	x2, x2, -104	# 800
	jal		x1, sin.2636.17992	# 800
	addi	x2, x2, 104	# 800
	lw		x1, -100(x2)	# 800
	flw		f2, -80(x2)	# 802
	flw		f3, -96(x2)	# 802
	fmul	f4, f2, f3	# 802
	flw		f5, -72(x2)	# 803
	flw		f6, -88(x2)	# 803
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
	flw		f6, 0(x6)	# 815
	flw		f9, 0(x8)	# 816
	flw		f10, 0(x10)	# 817
	fmul	f13, f4, f4	# 127
	fmul	f13, f6, f13	# 822
	fmul	f14, f12, f12	# 127
	fmul	f14, f9, f14	# 822
	fadd	f13, f13, f14	# 822
	fmul	f14, f3, f3	# 127
	fmul	f14, f10, f14	# 822
	fadd	f13, f13, f14	# 822
	fsw		f13, 0(x6)	# 822
	fmul	f13, f8, f8	# 127
	fmul	f13, f6, f13	# 823
	fmul	f14, f7, f7	# 127
	fmul	f14, f9, f14	# 823
	fadd	f13, f13, f14	# 823
	fmul	f14, f5, f5	# 127
	fmul	f14, f10, f14	# 823
	fadd	f13, f13, f14	# 823
	fsw		f13, 0(x8)	# 823
	fmul	f13, f11, f11	# 127
	fmul	f13, f6, f13	# 824
	fmul	f14, f1, f1	# 127
	fmul	f14, f9, f14	# 824
	fadd	f13, f13, f14	# 824
	fmul	f14, f2, f2	# 127
	fmul	f14, f10, f14	# 824
	fadd	f13, f13, f14	# 824
	fsw		f13, 0(x10)	# 824
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
	fsw		f14, 0(x5)	# 827
	fmul	f4, f6, f4	# 828
	fmul	f6, f4, f11	# 828
	fmul	f9, f9, f12	# 828
	fmul	f1, f9, f1	# 828
	fadd	f1, f6, f1	# 828
	fmul	f3, f10, f3	# 828
	fmul	f2, f3, f2	# 828
	fadd	f1, f1, f2	# 828
	fmul	f1, f13, f1	# 828
	fsw		f1, 0(x9)	# 828
	fmul	f1, f4, f8	# 829
	fmul	f2, f9, f7	# 829
	fadd	f1, f1, f2	# 829
	fmul	f2, f3, f5	# 829
	fadd	f1, f1, f2	# 829
	fmul	f1, f13, f1	# 829
	lw		x4, -84(x2)	# 829
	fsw		f1, 0(x4)	# 829
beq_cont.33668:
	addi	x4, x0, 1	# 910
	jal		x0, beq_cont.33634	# 837
beq.33635:
	addi	x4, x0, 0	# 913
beq_cont.33634:
	beq		x4, x0, beq.33670	# 919
	lw		x4, 0(x2)	# 920
	addi	x4, x4, 1	# 920
	jal		x0, read_object.2787.18006	# 920
beq.33670:
	addi	x4, x0, 40000	# 922
	lw		x5, 0(x2)	# 922
	sw		x5, 0(x4)	# 922
	jalr	x0, x1, 0	# 922
ble.33633:
	jalr	x0, x1, 0	# 923
read_net_item.2791.18008:
	sw		x4, 0(x2)	# 934
	sw		x1, -4(x2)	# 934
	addi	x2, x2, -8	# 934
	jal		x1, min_caml_read_int	# 934
	addi	x2, x2, 8	# 934
	lw		x1, -4(x2)	# 934
	add		x5, x0, x20	# 28
	beq		x4, x20, beq.33673	# 935
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
beq.33673:
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
	addi	x4, x5, 0	# 943
	lw		x4, 0(x4)	# 943
	beq		x4, x20, beq.33674	# 943
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
beq.33674:
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
	addi	x5, x4, 0	# 952
	lw		x5, 0(x5)	# 952
	beq		x5, x20, beq.33675	# 952
	lw		x5, 0(x2)	# 954
	mul		x6, x30, x5	# 954
	addi	x6, x6, 40332	# 954
	sw		x4, 0(x6)	# 954
	addi	x4, x5, 1	# 955
	jal		x0, read_and_network.2795.18012	# 955
beq.33675:
	jalr	x0, x1, 0	# 952
iter_setup_dirvec_constants.2892.18014:
	ble		x0, x5, ble.33677	# 1327
	jalr	x0, x1, 0	# 1340
ble.33677:
	mul		x7, x30, x5	# 1328
	addi	x8, x7, 40048	# 1328
	lw		x8, 0(x8)	# 1328
	lw		x9, 4(x4)	# 702
	lw		x10, 0(x4)	# 696
	lw		x11, 4(x8)	# 410
	sw		x4, 0(x2)	# 1332
	sw		x5, -4(x2)	# 1332
	beq		x11, x21, beq.33680	# 1332
	beq		x11, x22, beq.33682	# 1334
	fadd	f1, f0, f0	# 11
	addi	x11, x0, 5	# 98
	fsw		f0, -8(x2)	# 1298
	addi	x4, x11, 0	# 1298
	sw		x1, -12(x2)	# 1298
	addi	x2, x2, -16	# 1298
	jal		x1, min_caml_create_float_array	# 1298
	addi	x2, x2, 16	# 1298
	lw		x1, -12(x2)	# 1298
	addi	x5, x10, 0	# 1300
	flw		f1, 0(x5)	# 1300
	addi	x5, x10, 4	# 1300
	flw		f2, 0(x5)	# 1300
	addi	x5, x10, 8	# 1300
	flw		f3, 0(x5)	# 1300
	fmul	f4, f1, f1	# 127
	lw		x5, 16(x8)	# 448
	addi	x10, x5, 0	# 453
	flw		f5, 0(x10)	# 453
	fmul	f4, f4, f5	# 1024
	fmul	f6, f2, f2	# 127
	addi	x10, x5, 4	# 463
	flw		f7, 0(x10)	# 463
	fmul	f6, f6, f7	# 1024
	fadd	f4, f4, f6	# 1024
	fmul	f6, f3, f3	# 127
	addi	x5, x5, 8	# 473
	flw		f8, 0(x5)	# 473
	fmul	f6, f6, f8	# 1024
	fadd	f4, f4, f6	# 1024
	lw		x5, 12(x8)	# 439
	beq		x5, x0, beq_cont.33683	# 1026
	fmul	f6, f2, f3	# 1030
	lw		x10, 36(x8)	# 568
	addi	x11, x10, 0	# 573
	flw		f9, 0(x11)	# 573
	fmul	f6, f6, f9	# 1030
	fadd	f4, f4, f6	# 1029
	fmul	f6, f3, f1	# 1031
	addi	x11, x10, 4	# 583
	flw		f9, 0(x11)	# 583
	fmul	f6, f6, f9	# 1031
	fadd	f4, f4, f6	# 1029
	fmul	f6, f1, f2	# 1032
	addi	x10, x10, 8	# 593
	flw		f9, 0(x10)	# 593
	fmul	f6, f6, f9	# 1032
	fadd	f4, f4, f6	# 1029
beq_cont.33683:
	fmul	f5, f1, f5	# 1301
	fsub	f5, f0, f5	# 123
	fmul	f6, f2, f7	# 1302
	fsub	f6, f0, f6	# 123
	fmul	f7, f3, f8	# 1303
	fsub	f7, f0, f7	# 123
	addi	x10, x4, 0	# 1305
	fsw		f4, 0(x10)	# 1305
	beq		x5, x0, beq.33686	# 1309
	lw		x5, 36(x8)	# 578
	addi	x6, x5, 4	# 583
	flw		f8, 0(x6)	# 583
	fmul	f9, f3, f8	# 1310
	addi	x6, x5, 8	# 593
	flw		f10, 0(x6)	# 593
	fmul	f11, f2, f10	# 1310
	fadd	f9, f9, f11	# 1310
	lui		x6, %hi(l.27933)	# 126
	ori		x6, x6, %lo(l.27933)	# 126
	flw		f11, 0(x6)	# 126
	fmul	f9, f9, f11	# 126
	fsub	f5, f5, f9	# 1310
	addi	x6, x4, 4	# 1310
	fsw		f5, 0(x6)	# 1310
	addi	x5, x5, 0	# 573
	flw		f5, 0(x5)	# 573
	fmul	f3, f3, f5	# 1311
	fmul	f9, f1, f10	# 1311
	fadd	f3, f3, f9	# 1311
	fmul	f3, f3, f11	# 126
	fsub	f3, f6, f3	# 1311
	addi	x5, x4, 8	# 1311
	fsw		f3, 0(x5)	# 1311
	fmul	f2, f2, f5	# 1312
	fmul	f1, f1, f8	# 1312
	fadd	f1, f2, f1	# 1312
	fmul	f1, f1, f11	# 126
	fsub	f1, f7, f1	# 1312
	addi	x5, x4, 12	# 1312
	fsw		f1, 0(x5)	# 1312
	jal		x0, beq_cont.33685	# 1309
beq.33686:
	addi	x5, x4, 4	# 1314
	fsw		f5, 0(x5)	# 1314
	addi	x5, x4, 8	# 1315
	fsw		f6, 0(x5)	# 1315
	addi	x5, x4, 12	# 1316
	fsw		f7, 0(x5)	# 1316
beq_cont.33685:
	flw		f1, -8(x2)	# 120
	feq		f4, f1, feq_cont.33687	# 120
	fdiv	f1, f30, f4	# 1319
	addi	x5, x4, 16	# 1319
	fsw		f1, 0(x5)	# 1319
feq_cont.33687:
	add		x5, x9, x7	# 1337
	sw		x4, 0(x5)	# 1337
	jal		x0, beq_cont.33679	# 1334
beq.33682:
	add		x6, x0, x30	# 1279
	fadd	f1, f0, f0	# 11
	fsw		f0, -12(x2)	# 1279
	addi	x4, x30, 0	# 1279
	sw		x1, -16(x2)	# 1279
	addi	x2, x2, -20	# 1279
	jal		x1, min_caml_create_float_array	# 1279
	addi	x2, x2, 20	# 1279
	lw		x1, -16(x2)	# 1279
	addi	x5, x10, 0	# 1281
	flw		f1, 0(x5)	# 1281
	lw		x5, 16(x8)	# 448
	addi	x6, x5, 0	# 453
	flw		f2, 0(x6)	# 453
	fmul	f1, f1, f2	# 1281
	addi	x6, x10, 4	# 1281
	flw		f3, 0(x6)	# 1281
	addi	x6, x5, 4	# 463
	flw		f4, 0(x6)	# 463
	fmul	f3, f3, f4	# 1281
	fadd	f1, f1, f3	# 1281
	addi	x6, x10, 8	# 1281
	flw		f3, 0(x6)	# 1281
	addi	x5, x5, 8	# 473
	flw		f5, 0(x5)	# 473
	fmul	f3, f3, f5	# 1281
	fadd	f1, f1, f3	# 1281
	flw		f3, -12(x2)	# 121
	fle		f1, f3, fle.33690	# 121
	fdiv	f3, f25, f1	# 1285
	addi	x5, x4, 0	# 1285
	fsw		f3, 0(x5)	# 1285
	fdiv	f2, f2, f1	# 1287
	fsub	f2, f0, f2	# 123
	addi	x5, x4, 4	# 1287
	fsw		f2, 0(x5)	# 1287
	fdiv	f2, f4, f1	# 1288
	fsub	f2, f0, f2	# 123
	addi	x5, x4, 8	# 1288
	fsw		f2, 0(x5)	# 1288
	fdiv	f1, f5, f1	# 1289
	fsub	f1, f0, f1	# 123
	addi	x5, x4, 12	# 1289
	fsw		f1, 0(x5)	# 1289
	jal		x0, fle_cont.33689	# 121
fle.33690:
	addi	x5, x4, 0	# 1291
	fsw		f3, 0(x5)	# 1291
fle_cont.33689:
	add		x5, x9, x7	# 1335
	sw		x4, 0(x5)	# 1335
	jal		x0, beq_cont.33679	# 1332
beq.33680:
	addi	x11, x0, 6	# 1252
	fadd	f1, f0, f0	# 11
	fsw		f0, -16(x2)	# 1252
	addi	x4, x11, 0	# 1252
	sw		x1, -20(x2)	# 1252
	addi	x2, x2, -24	# 1252
	jal		x1, min_caml_create_float_array	# 1252
	addi	x2, x2, 24	# 1252
	lw		x1, -20(x2)	# 1252
	addi	x5, x10, 0	# 1254
	flw		f1, 0(x5)	# 1254
	flw		f2, -16(x2)	# 120
	feq		f1, f2, feq.33692	# 120
	lw		x5, 24(x8)	# 430
	fle		f2, f1, fle.33694	# 122
	addi	x11, x0, 1	# 122
	jal		x0, fle_cont.33693	# 122
fle.33694:
	addi	x11, x0, 0	# 122
fle_cont.33693:
	beq		x5, x0, beq.33696	# 261
	fle		f2, f1, fle.33698	# 122
	addi	x5, x0, 0	# 261
	jal		x0, beq_cont.33695	# 122
fle.33698:
	addi	x5, x0, 1	# 261
	jal		x0, beq_cont.33695	# 261
beq.33696:
	addi	x5, x11, 0	# 261
beq_cont.33695:
	lw		x11, 16(x8)	# 448
	addi	x11, x11, 0	# 453
	flw		f3, 0(x11)	# 453
	beq		x5, x0, beq.33700	# 276
	jal		x0, beq_cont.33699	# 276
beq.33700:
	fsub	f3, f0, f3	# 123
beq_cont.33699:
	addi	x5, x4, 0	# 1258
	fsw		f3, 0(x5)	# 1258
	fdiv	f1, f30, f1	# 1260
	addi	x5, x4, 4	# 1260
	fsw		f1, 0(x5)	# 1260
	jal		x0, feq_cont.33691	# 120
feq.33692:
	addi	x5, x4, 4	# 1255
	fsw		f2, 0(x5)	# 1255
feq_cont.33691:
	addi	x5, x10, 4	# 1262
	flw		f1, 0(x5)	# 1262
	feq		f1, f2, feq.33702	# 120
	lw		x5, 24(x8)	# 430
	fle		f2, f1, fle.33704	# 122
	addi	x11, x0, 1	# 122
	jal		x0, fle_cont.33703	# 122
fle.33704:
	addi	x11, x0, 0	# 122
fle_cont.33703:
	beq		x5, x0, beq.33706	# 261
	fle		f2, f1, fle.33708	# 122
	addi	x5, x0, 0	# 261
	jal		x0, beq_cont.33705	# 122
fle.33708:
	addi	x5, x0, 1	# 261
	jal		x0, beq_cont.33705	# 261
beq.33706:
	addi	x5, x11, 0	# 261
beq_cont.33705:
	lw		x11, 16(x8)	# 458
	addi	x11, x11, 4	# 463
	flw		f3, 0(x11)	# 463
	beq		x5, x0, beq.33710	# 276
	jal		x0, beq_cont.33709	# 276
beq.33710:
	fsub	f3, f0, f3	# 123
beq_cont.33709:
	addi	x5, x4, 8	# 1265
	fsw		f3, 0(x5)	# 1265
	fdiv	f1, f30, f1	# 1266
	addi	x5, x4, 12	# 1266
	fsw		f1, 0(x5)	# 1266
	jal		x0, feq_cont.33701	# 120
feq.33702:
	addi	x5, x4, 12	# 1263
	fsw		f2, 0(x5)	# 1263
feq_cont.33701:
	addi	x5, x10, 8	# 1268
	flw		f1, 0(x5)	# 1268
	feq		f1, f2, feq.33712	# 120
	lw		x5, 24(x8)	# 430
	fle		f2, f1, fle.33714	# 122
	addi	x10, x0, 1	# 122
	jal		x0, fle_cont.33713	# 122
fle.33714:
	addi	x10, x0, 0	# 122
fle_cont.33713:
	beq		x5, x0, beq.33716	# 261
	fle		f2, f1, fle.33718	# 122
	addi	x5, x0, 0	# 261
	jal		x0, beq_cont.33715	# 122
fle.33718:
	addi	x5, x0, 1	# 261
	jal		x0, beq_cont.33715	# 261
beq.33716:
	addi	x5, x10, 0	# 261
beq_cont.33715:
	lw		x8, 16(x8)	# 468
	addi	x8, x8, 8	# 473
	flw		f2, 0(x8)	# 473
	beq		x5, x0, beq.33720	# 276
	jal		x0, beq_cont.33719	# 276
beq.33720:
	fsub	f2, f0, f2	# 123
beq_cont.33719:
	addi	x5, x4, 16	# 1271
	fsw		f2, 0(x5)	# 1271
	fdiv	f1, f30, f1	# 1272
	addi	x5, x4, 20	# 1272
	fsw		f1, 0(x5)	# 1272
	jal		x0, feq_cont.33711	# 120
feq.33712:
	addi	x5, x4, 20	# 1269
	fsw		f2, 0(x5)	# 1269
feq_cont.33711:
	add		x5, x9, x7	# 1333
	sw		x4, 0(x5)	# 1333
beq_cont.33679:
	lw		x4, -4(x2)	# 1339
	addi	x5, x4, -1	# 1339
	lw		x4, 0(x2)	# 1339
	jal		x0, iter_setup_dirvec_constants.2892.18014	# 1339
setup_startp_constants.2897.18017:
	ble		x0, x5, ble.33721	# 1352
	jalr	x0, x1, 0	# 1367
ble.33721:
	mul		x7, x30, x5	# 1353
	addi	x7, x7, 40048	# 1353
	lw		x7, 0(x7)	# 1353
	lw		x8, 40(x7)	# 605
	lw		x9, 4(x7)	# 410
	addi	x10, x4, 0	# 1356
	flw		f1, 0(x10)	# 1356
	lw		x10, 20(x7)	# 488
	addi	x11, x10, 0	# 493
	flw		f2, 0(x11)	# 493
	fsub	f1, f1, f2	# 1356
	addi	x11, x8, 0	# 1356
	fsw		f1, 0(x11)	# 1356
	addi	x12, x4, 4	# 1357
	flw		f1, 0(x12)	# 1357
	addi	x12, x10, 4	# 503
	flw		f2, 0(x12)	# 503
	fsub	f1, f1, f2	# 1357
	addi	x12, x8, 4	# 1357
	fsw		f1, 0(x12)	# 1357
	addi	x14, x4, 8	# 1358
	flw		f1, 0(x14)	# 1358
	addi	x10, x10, 8	# 513
	flw		f2, 0(x10)	# 513
	fsub	f1, f1, f2	# 1358
	addi	x10, x8, 8	# 1358
	fsw		f1, 0(x10)	# 1358
	beq		x9, x22, beq.33724	# 1359
	ble		x9, x22, beq_cont.33723	# 1362
	flw		f1, 0(x11)	# 1363
	flw		f2, 0(x12)	# 1363
	flw		f3, 0(x10)	# 1363
	fmul	f4, f1, f1	# 127
	lw		x10, 16(x7)	# 448
	addi	x11, x10, 0	# 453
	flw		f5, 0(x11)	# 453
	fmul	f4, f4, f5	# 1024
	fmul	f5, f2, f2	# 127
	addi	x11, x10, 4	# 463
	flw		f6, 0(x11)	# 463
	fmul	f5, f5, f6	# 1024
	fadd	f4, f4, f5	# 1024
	fmul	f5, f3, f3	# 127
	addi	x10, x10, 8	# 473
	flw		f6, 0(x10)	# 473
	fmul	f5, f5, f6	# 1024
	fadd	f4, f4, f5	# 1024
	lw		x10, 12(x7)	# 439
	beq		x10, x0, beq.33728	# 1026
	fmul	f5, f2, f3	# 1030
	lw		x6, 36(x7)	# 568
	addi	x7, x6, 0	# 573
	flw		f6, 0(x7)	# 573
	fmul	f5, f5, f6	# 1030
	fadd	f4, f4, f5	# 1029
	fmul	f3, f3, f1	# 1031
	addi	x7, x6, 4	# 583
	flw		f5, 0(x7)	# 583
	fmul	f3, f3, f5	# 1031
	fadd	f3, f4, f3	# 1029
	fmul	f1, f1, f2	# 1032
	addi	x6, x6, 8	# 593
	flw		f2, 0(x6)	# 593
	fmul	f1, f1, f2	# 1032
	fadd	f1, f3, f1	# 1029
	jal		x0, beq_cont.33727	# 1026
beq.33728:
	fadd	f1, f0, f4	# 1027
beq_cont.33727:
	beq		x9, x24, beq.33730	# 1364
	jal		x0, beq_cont.33729	# 1364
beq.33730:
	fsub	f1, f1, f30	# 1364
beq_cont.33729:
	addi	x6, x8, 12	# 1364
	fsw		f1, 0(x6)	# 1364
	jal		x0, beq_cont.33723	# 1362
beq.33724:
	lw		x6, 16(x7)	# 478
	flw		f1, 0(x11)	# 1361
	flw		f2, 0(x12)	# 1361
	flw		f3, 0(x10)	# 1361
	addi	x7, x6, 0	# 354
	flw		f4, 0(x7)	# 354
	fmul	f1, f4, f1	# 354
	addi	x7, x6, 4	# 354
	flw		f4, 0(x7)	# 354
	fmul	f2, f4, f2	# 354
	fadd	f1, f1, f2	# 354
	addi	x6, x6, 8	# 354
	flw		f2, 0(x6)	# 354
	fmul	f2, f2, f3	# 354
	fadd	f1, f1, f2	# 354
	addi	x6, x8, 12	# 1360
	fsw		f1, 0(x6)	# 1360
beq_cont.33723:
	addi	x5, x5, -1	# 1366
	jal		x0, setup_startp_constants.2897.18017	# 1366
check_all_inside.2922.18020:
	mul		x6, x30, x4	# 1421
	add		x6, x5, x6	# 1421
	lw		x6, 0(x6)	# 1421
	beq		x6, x20, beq.33731	# 1422
	mul		x6, x30, x6	# 1425
	addi	x6, x6, 40048	# 1425
	lw		x6, 0(x6)	# 1425
	lw		x7, 20(x6)	# 488
	addi	x9, x7, 0	# 493
	flw		f4, 0(x9)	# 493
	fsub	f4, f1, f4	# 1407
	addi	x10, x7, 4	# 503
	flw		f5, 0(x10)	# 503
	fsub	f5, f2, f5	# 1408
	addi	x7, x7, 8	# 513
	flw		f6, 0(x7)	# 513
	fsub	f6, f3, f6	# 1409
	lw		x7, 4(x6)	# 410
	beq		x7, x21, beq.33733	# 1411
	beq		x7, x22, beq.33735	# 1413
	fmul	f7, f4, f4	# 127
	lw		x9, 16(x6)	# 448
	addi	x10, x9, 0	# 453
	flw		f8, 0(x10)	# 453
	fmul	f7, f7, f8	# 1024
	fmul	f8, f5, f5	# 127
	addi	x10, x9, 4	# 463
	flw		f9, 0(x10)	# 463
	fmul	f8, f8, f9	# 1024
	fadd	f7, f7, f8	# 1024
	fmul	f8, f6, f6	# 127
	addi	x9, x9, 8	# 473
	flw		f9, 0(x9)	# 473
	fmul	f8, f8, f9	# 1024
	fadd	f7, f7, f8	# 1024
	lw		x9, 12(x6)	# 439
	beq		x9, x0, beq.33737	# 1026
	fmul	f8, f5, f6	# 1030
	lw		x9, 36(x6)	# 568
	addi	x10, x9, 0	# 573
	flw		f9, 0(x10)	# 573
	fmul	f8, f8, f9	# 1030
	fadd	f7, f7, f8	# 1029
	fmul	f6, f6, f4	# 1031
	addi	x10, x9, 4	# 583
	flw		f8, 0(x10)	# 583
	fmul	f6, f6, f8	# 1031
	fadd	f6, f7, f6	# 1029
	fmul	f4, f4, f5	# 1032
	addi	x9, x9, 8	# 593
	flw		f5, 0(x9)	# 593
	fmul	f4, f4, f5	# 1032
	fadd	f4, f6, f4	# 1029
	jal		x0, beq_cont.33736	# 1026
beq.33737:
	fadd	f4, f0, f7	# 1027
beq_cont.33736:
	beq		x7, x24, beq.33739	# 1401
	jal		x0, beq_cont.33738	# 1401
beq.33739:
	fsub	f4, f4, f30	# 1401
beq_cont.33738:
	lw		x6, 24(x6)	# 430
	fle		f0, f4, fle.33741	# 122
	addi	x7, x0, 1	# 122
	jal		x0, fle_cont.33740	# 122
fle.33741:
	addi	x7, x0, 0	# 122
fle_cont.33740:
	beq		x6, x0, beq.33743	# 261
	fle		f0, f4, fle.33745	# 122
	addi	x6, x0, 0	# 261
	jal		x0, beq_cont.33742	# 122
fle.33745:
	addi	x6, x0, 1	# 261
	jal		x0, beq_cont.33742	# 261
beq.33743:
	addi	x6, x7, 0	# 261
beq_cont.33742:
	beq		x6, x0, beq.33747	# 1402
	addi	x6, x0, 0	# 1402
	jal		x0, beq_cont.33732	# 1402
beq.33747:
	addi	x6, x0, 1	# 1402
	jal		x0, beq_cont.33732	# 1413
beq.33735:
	lw		x7, 16(x6)	# 478
	addi	x9, x7, 0	# 354
	flw		f7, 0(x9)	# 354
	fmul	f4, f7, f4	# 354
	addi	x9, x7, 4	# 354
	flw		f7, 0(x9)	# 354
	fmul	f5, f7, f5	# 354
	fadd	f4, f4, f5	# 354
	addi	x7, x7, 8	# 354
	flw		f5, 0(x7)	# 354
	fmul	f5, f5, f6	# 354
	fadd	f4, f4, f5	# 354
	lw		x6, 24(x6)	# 430
	fle		f0, f4, fle.33749	# 122
	addi	x7, x0, 1	# 122
	jal		x0, fle_cont.33748	# 122
fle.33749:
	addi	x7, x0, 0	# 122
fle_cont.33748:
	beq		x6, x0, beq.33751	# 261
	fle		f0, f4, fle.33753	# 122
	addi	x6, x0, 0	# 261
	jal		x0, beq_cont.33750	# 122
fle.33753:
	addi	x6, x0, 1	# 261
	jal		x0, beq_cont.33750	# 261
beq.33751:
	addi	x6, x7, 0	# 261
beq_cont.33750:
	beq		x6, x0, beq.33755	# 1395
	addi	x6, x0, 0	# 1395
	jal		x0, beq_cont.33732	# 1395
beq.33755:
	addi	x6, x0, 1	# 1395
	jal		x0, beq_cont.33732	# 1411
beq.33733:
	fle		f4, f0, fle.33757	# 124
	jal		x0, fle_cont.33756	# 124
fle.33757:
	fsub	f4, f0, f4	# 124
fle_cont.33756:
	lw		x7, 16(x6)	# 448
	addi	x9, x7, 0	# 453
	flw		f8, 0(x9)	# 453
	fle		f8, f4, fle.33759	# 125
	fle		f5, f0, fle.33761	# 124
	fadd	f4, f0, f5	# 124
	jal		x0, fle_cont.33760	# 124
fle.33761:
	fsub	f4, f0, f5	# 124
fle_cont.33760:
	addi	x9, x7, 4	# 463
	flw		f5, 0(x9)	# 463
	fle		f5, f4, fle.33763	# 125
	fle		f6, f0, fle.33765	# 124
	fadd	f4, f0, f6	# 124
	jal		x0, fle_cont.33764	# 124
fle.33765:
	fsub	f4, f0, f6	# 124
fle_cont.33764:
	addi	x7, x7, 8	# 473
	flw		f5, 0(x7)	# 473
	fle		f5, f4, fle.33767	# 125
	addi	x7, x0, 1	# 125
	jal		x0, fle_cont.33758	# 125
fle.33767:
	addi	x7, x0, 0	# 125
	jal		x0, fle_cont.33758	# 125
fle.33763:
	addi	x7, x0, 0	# 1387
	jal		x0, fle_cont.33758	# 125
fle.33759:
	addi	x7, x0, 0	# 1388
fle_cont.33758:
	beq		x7, x0, beq.33769	# 1383
	lw		x6, 24(x6)	# 430
	jal		x0, beq_cont.33732	# 1383
beq.33769:
	lw		x6, 24(x6)	# 430
	beq		x6, x0, beq.33771	# 1389
	addi	x6, x0, 0	# 1389
	jal		x0, beq_cont.33732	# 1389
beq.33771:
	addi	x6, x0, 1	# 1389
beq_cont.33732:
	beq		x6, x0, beq.33772	# 1425
	addi	x4, x0, 0	# 1426
	jalr	x0, x1, 0	# 1426
beq.33772:
	addi	x4, x4, 1	# 1428
	jal		x0, check_all_inside.2922.18020	# 1428
beq.33731:
	addi	x4, x0, 1	# 1423
	jalr	x0, x1, 0	# 1423
shadow_check_and_group.2928.18026:
	mul		x6, x30, x4	# 1441
	add		x6, x5, x6	# 1441
	lw		x6, 0(x6)	# 1441
	beq		x6, x20, beq.33773	# 1441
	mul		x6, x30, x6	# 1183
	addi	x7, x6, 40048	# 1183
	lw		x7, 0(x7)	# 1183
	add		x8, x0, x0	# 6
	flw		f1, 0(x25)	# 1184
	lw		x9, 20(x7)	# 488
	addi	x10, x9, 0	# 493
	flw		f2, 0(x10)	# 493
	fsub	f2, f1, f2	# 1184
	flw		f3, 0(x27)	# 1185
	addi	x11, x9, 4	# 503
	flw		f4, 0(x11)	# 503
	fsub	f4, f3, f4	# 1185
	flw		f5, 0(x26)	# 1186
	addi	x9, x9, 8	# 513
	flw		f6, 0(x9)	# 513
	fsub	f6, f5, f6	# 1186
	addi	x6, x6, 40748	# 1188
	lw		x6, 0(x6)	# 1188
	lw		x9, 4(x7)	# 410
	beq		x9, x21, beq.33775	# 1190
	beq		x9, x22, beq.33777	# 1192
	addi	x10, x6, 0	# 1164
	flw		f7, 0(x10)	# 1164
	feq		f7, f0, feq.33779	# 120
	addi	x10, x6, 4	# 1168
	flw		f9, 0(x10)	# 1168
	fmul	f9, f9, f2	# 1168
	addi	x10, x6, 8	# 1168
	flw		f10, 0(x10)	# 1168
	fmul	f10, f10, f4	# 1168
	fadd	f9, f9, f10	# 1168
	addi	x11, x6, 12	# 1168
	flw		f10, 0(x11)	# 1168
	fmul	f10, f10, f6	# 1168
	fadd	f9, f9, f10	# 1168
	fmul	f10, f2, f2	# 127
	lw		x11, 16(x7)	# 448
	addi	x12, x11, 0	# 453
	flw		f11, 0(x12)	# 453
	fmul	f10, f10, f11	# 1024
	fmul	f11, f4, f4	# 127
	addi	x12, x11, 4	# 463
	flw		f12, 0(x12)	# 463
	fmul	f11, f11, f12	# 1024
	fadd	f10, f10, f11	# 1024
	fmul	f11, f6, f6	# 127
	addi	x11, x11, 8	# 473
	flw		f12, 0(x11)	# 473
	fmul	f11, f11, f12	# 1024
	fadd	f10, f10, f11	# 1024
	lw		x11, 12(x7)	# 439
	beq		x11, x0, beq.33781	# 1026
	fmul	f11, f4, f6	# 1030
	lw		x11, 36(x7)	# 568
	addi	x12, x11, 0	# 573
	flw		f12, 0(x12)	# 573
	fmul	f11, f11, f12	# 1030
	fadd	f10, f10, f11	# 1029
	fmul	f6, f6, f2	# 1031
	addi	x12, x11, 4	# 583
	flw		f11, 0(x12)	# 583
	fmul	f6, f6, f11	# 1031
	fadd	f6, f10, f6	# 1029
	fmul	f2, f2, f4	# 1032
	addi	x11, x11, 8	# 593
	flw		f4, 0(x11)	# 593
	fmul	f2, f2, f4	# 1032
	fadd	f2, f6, f2	# 1029
	jal		x0, beq_cont.33780	# 1026
beq.33781:
	fadd	f2, f0, f10	# 1027
beq_cont.33780:
	beq		x9, x24, beq.33783	# 1170
	jal		x0, beq_cont.33782	# 1170
beq.33783:
	fsub	f2, f2, f30	# 1170
beq_cont.33782:
	fmul	f4, f9, f9	# 127
	fmul	f2, f7, f2	# 1171
	fsub	f2, f4, f2	# 1171
	fle		f2, f0, fle.33785	# 121
	lw		x9, 24(x7)	# 430
	beq		x9, x0, beq.33787	# 1173
	fsqrt	f2, f2	# 1174
	fadd	f2, f9, f2	# 1174
	addi	x6, x6, 16	# 1174
	flw		f4, 0(x6)	# 1174
	fmul	f2, f2, f4	# 1174
	fsw		f2, 0(x23)	# 1174
	jal		x0, beq_cont.33786	# 1173
beq.33787:
	fsqrt	f2, f2	# 1176
	fsub	f2, f9, f2	# 1176
	addi	x6, x6, 16	# 1176
	flw		f4, 0(x6)	# 1176
	fmul	f2, f2, f4	# 1176
	fsw		f2, 0(x23)	# 1176
beq_cont.33786:
	addi	x6, x0, 1	# 1177
	jal		x0, beq_cont.33774	# 121
fle.33785:
	addi	x6, x0, 0	# 1178
	jal		x0, beq_cont.33774	# 120
feq.33779:
	addi	x6, x0, 0	# 1166
	jal		x0, beq_cont.33774	# 1192
beq.33777:
	addi	x9, x6, 0	# 1154
	flw		f7, 0(x9)	# 1154
	fle		f0, f7, fle.33789	# 122
	addi	x9, x6, 4	# 1156
	flw		f7, 0(x9)	# 1156
	fmul	f2, f7, f2	# 1156
	addi	x9, x6, 8	# 1156
	flw		f7, 0(x9)	# 1156
	fmul	f4, f7, f4	# 1156
	fadd	f2, f2, f4	# 1156
	addi	x6, x6, 12	# 1156
	flw		f4, 0(x6)	# 1156
	fmul	f4, f4, f6	# 1156
	fadd	f2, f2, f4	# 1156
	fsw		f2, 0(x23)	# 1155
	addi	x6, x0, 1	# 1157
	jal		x0, beq_cont.33774	# 122
fle.33789:
	addi	x6, x0, 0	# 1158
	jal		x0, beq_cont.33774	# 1190
beq.33775:
	addi	x9, x6, 0	# 1121
	flw		f7, 0(x9)	# 1121
	fsub	f7, f7, f2	# 1121
	addi	x9, x6, 4	# 1121
	flw		f8, 0(x9)	# 1121
	fmul	f7, f7, f8	# 1121
	addi	x9, x0, 40740	# 1123
	flw		f9, 0(x9)	# 1123
	fmul	f10, f7, f9	# 1123
	fadd	f10, f10, f4	# 1123
	fle		f10, f0, fle.33791	# 124
	jal		x0, fle_cont.33790	# 124
fle.33791:
	fsub	f10, f0, f10	# 124
fle_cont.33790:
	lw		x9, 16(x7)	# 458
	addi	x10, x9, 4	# 463
	flw		f12, 0(x10)	# 463
	fle		f12, f10, fle.33793	# 125
	addi	x10, x0, 40744	# 1124
	flw		f10, 0(x10)	# 1124
	fmul	f10, f7, f10	# 1124
	fadd	f10, f10, f6	# 1124
	fle		f10, f0, fle.33795	# 124
	jal		x0, fle_cont.33794	# 124
fle.33795:
	fsub	f10, f0, f10	# 124
fle_cont.33794:
	addi	x10, x9, 8	# 473
	flw		f13, 0(x10)	# 473
	fle		f13, f10, fle.33797	# 125
	feq		f8, f0, feq.33799	# 120
	addi	x10, x0, 1	# 1125
	jal		x0, fle_cont.33792	# 120
feq.33799:
	addi	x10, x0, 0	# 1125
	jal		x0, fle_cont.33792	# 125
fle.33797:
	addi	x10, x0, 0	# 1126
	jal		x0, fle_cont.33792	# 125
fle.33793:
	addi	x10, x0, 0	# 1127
fle_cont.33792:
	beq		x10, x0, beq.33801	# 1122
	fsw		f7, 0(x23)	# 1129
	addi	x6, x0, 1	# 1129
	jal		x0, beq_cont.33774	# 1122
beq.33801:
	addi	x10, x6, 8	# 1130
	flw		f7, 0(x10)	# 1130
	fsub	f7, f7, f4	# 1130
	addi	x10, x6, 12	# 1130
	flw		f8, 0(x10)	# 1130
	fmul	f7, f7, f8	# 1130
	addi	x10, x0, 40736	# 1132
	flw		f10, 0(x10)	# 1132
	fmul	f13, f7, f10	# 1132
	fadd	f13, f13, f2	# 1132
	fle		f13, f0, fle.33803	# 124
	jal		x0, fle_cont.33802	# 124
fle.33803:
	fsub	f13, f0, f13	# 124
fle_cont.33802:
	addi	x10, x9, 0	# 453
	flw		f14, 0(x10)	# 453
	fle		f14, f13, fle.33805	# 125
	addi	x10, x0, 40744	# 1133
	flw		f13, 0(x10)	# 1133
	fmul	f13, f7, f13	# 1133
	fadd	f13, f13, f6	# 1133
	fle		f13, f0, fle.33807	# 124
	jal		x0, fle_cont.33806	# 124
fle.33807:
	fsub	f13, f0, f13	# 124
fle_cont.33806:
	addi	x9, x9, 8	# 473
	flw		f15, 0(x9)	# 473
	fle		f15, f13, fle.33809	# 125
	feq		f8, f0, feq.33811	# 120
	addi	x9, x0, 1	# 1134
	jal		x0, fle_cont.33804	# 120
feq.33811:
	addi	x9, x0, 0	# 1134
	jal		x0, fle_cont.33804	# 125
fle.33809:
	addi	x9, x0, 0	# 1135
	jal		x0, fle_cont.33804	# 125
fle.33805:
	addi	x9, x0, 0	# 1136
fle_cont.33804:
	beq		x9, x0, beq.33813	# 1131
	fsw		f7, 0(x23)	# 1138
	addi	x6, x0, 2	# 1138
	jal		x0, beq_cont.33774	# 1131
beq.33813:
	addi	x9, x6, 16	# 1139
	flw		f7, 0(x9)	# 1139
	fsub	f6, f7, f6	# 1139
	addi	x6, x6, 20	# 1139
	flw		f7, 0(x6)	# 1139
	fmul	f6, f6, f7	# 1139
	fmul	f8, f6, f10	# 1141
	fadd	f2, f8, f2	# 1141
	fle		f2, f0, fle.33815	# 124
	jal		x0, fle_cont.33814	# 124
fle.33815:
	fsub	f2, f0, f2	# 124
fle_cont.33814:
	fle		f14, f2, fle.33817	# 125
	fmul	f2, f6, f9	# 1142
	fadd	f2, f2, f4	# 1142
	fle		f2, f0, fle.33819	# 124
	jal		x0, fle_cont.33818	# 124
fle.33819:
	fsub	f2, f0, f2	# 124
fle_cont.33818:
	fle		f12, f2, fle.33821	# 125
	feq		f7, f0, feq.33823	# 120
	addi	x6, x0, 1	# 1143
	jal		x0, fle_cont.33816	# 120
feq.33823:
	addi	x6, x0, 0	# 1143
	jal		x0, fle_cont.33816	# 125
fle.33821:
	addi	x6, x0, 0	# 1144
	jal		x0, fle_cont.33816	# 125
fle.33817:
	addi	x6, x0, 0	# 1145
fle_cont.33816:
	beq		x6, x0, beq.33825	# 1140
	fsw		f6, 0(x23)	# 1147
	addi	x6, x0, 3	# 1147
	jal		x0, beq_cont.33774	# 1140
beq.33825:
	addi	x6, x0, 0	# 1149
beq_cont.33774:
	flw		f2, 0(x23)	# 1446
	beq		x6, x0, beq.33827	# 1447
	fle		f19, f2, fle.33829	# 125
	addi	x6, x0, 1	# 125
	jal		x0, beq_cont.33826	# 125
fle.33829:
	addi	x6, x0, 0	# 125
	jal		x0, beq_cont.33826	# 1447
beq.33827:
	addi	x6, x0, 0	# 1447
beq_cont.33826:
	beq		x6, x0, beq.33830	# 1447
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
	beq		x4, x5, beq.33831	# 1454
	addi	x4, x0, 1	# 1455
	jalr	x0, x1, 0	# 1455
beq.33831:
	lw		x4, -4(x2)	# 1457
	addi	x4, x4, 1	# 1457
	lw		x5, 0(x2)	# 1457
	jal		x0, shadow_check_and_group.2928.18026	# 1457
beq.33830:
	lw		x6, 24(x7)	# 430
	beq		x6, x0, beq.33832	# 1463
	addi	x4, x4, 1	# 1464
	jal		x0, shadow_check_and_group.2928.18026	# 1464
beq.33832:
	addi	x4, x0, 0	# 1466
	jalr	x0, x1, 0	# 1466
beq.33773:
	addi	x4, x0, 0	# 1442
	jalr	x0, x1, 0	# 1442
shadow_check_one_or_group.2931.18029:
	mul		x6, x30, x4	# 1471
	add		x6, x5, x6	# 1471
	lw		x6, 0(x6)	# 1471
	beq		x6, x20, beq.33833	# 1472
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
	beq		x4, x5, beq.33834	# 1477
	addi	x4, x0, 1	# 1478
	jalr	x0, x1, 0	# 1478
beq.33834:
	lw		x4, -4(x2)	# 1480
	addi	x4, x4, 1	# 1480
	lw		x5, 0(x2)	# 1480
	jal		x0, shadow_check_one_or_group.2931.18029	# 1480
beq.33833:
	addi	x4, x0, 0	# 1473
	jalr	x0, x1, 0	# 1473
shadow_check_one_or_matrix.2934.18032:
	mul		x6, x30, x4	# 1486
	add		x6, x5, x6	# 1486
	lw		x6, 0(x6)	# 1486
	addi	x8, x6, 0	# 1487
	lw		x8, 0(x8)	# 1487
	beq		x8, x20, beq.33835	# 1488
	sw		x6, 0(x2)	# 1492
	sw		x5, -4(x2)	# 1492
	sw		x4, -8(x2)	# 1492
	sw		x0, -12(x2)	# 1492
	beq		x8, x28, beq.33837	# 1492
	mul		x8, x30, x8	# 1183
	addi	x9, x8, 40048	# 1183
	lw		x9, 0(x9)	# 1183
	flw		f1, 0(x25)	# 1184
	lw		x10, 20(x9)	# 488
	addi	x11, x10, 0	# 493
	flw		f2, 0(x11)	# 493
	fsub	f1, f1, f2	# 1184
	add		x11, x0, x21	# 6
	flw		f2, 0(x27)	# 1185
	addi	x12, x10, 4	# 503
	flw		f3, 0(x12)	# 503
	fsub	f2, f2, f3	# 1185
	flw		f3, 0(x26)	# 1186
	addi	x10, x10, 8	# 513
	flw		f4, 0(x10)	# 513
	fsub	f3, f3, f4	# 1186
	addi	x8, x8, 40748	# 1188
	lw		x8, 0(x8)	# 1188
	lw		x10, 4(x9)	# 410
	beq		x10, x21, beq.33839	# 1190
	beq		x10, x22, beq.33841	# 1192
	addi	x12, x8, 0	# 1164
	flw		f4, 0(x12)	# 1164
	feq		f4, f0, feq.33843	# 120
	addi	x12, x8, 4	# 1168
	flw		f6, 0(x12)	# 1168
	fmul	f6, f6, f1	# 1168
	addi	x12, x8, 8	# 1168
	flw		f7, 0(x12)	# 1168
	fmul	f7, f7, f2	# 1168
	fadd	f6, f6, f7	# 1168
	addi	x13, x8, 12	# 1168
	flw		f7, 0(x13)	# 1168
	fmul	f7, f7, f3	# 1168
	fadd	f6, f6, f7	# 1168
	fmul	f7, f1, f1	# 127
	lw		x13, 16(x9)	# 448
	addi	x14, x13, 0	# 453
	flw		f8, 0(x14)	# 453
	fmul	f7, f7, f8	# 1024
	fmul	f8, f2, f2	# 127
	addi	x14, x13, 4	# 463
	flw		f9, 0(x14)	# 463
	fmul	f8, f8, f9	# 1024
	fadd	f7, f7, f8	# 1024
	fmul	f8, f3, f3	# 127
	addi	x13, x13, 8	# 473
	flw		f9, 0(x13)	# 473
	fmul	f8, f8, f9	# 1024
	fadd	f7, f7, f8	# 1024
	lw		x13, 12(x9)	# 439
	beq		x13, x0, beq.33845	# 1026
	fmul	f8, f2, f3	# 1030
	lw		x13, 36(x9)	# 568
	addi	x14, x13, 0	# 573
	flw		f9, 0(x14)	# 573
	fmul	f8, f8, f9	# 1030
	fadd	f7, f7, f8	# 1029
	fmul	f3, f3, f1	# 1031
	addi	x14, x13, 4	# 583
	flw		f8, 0(x14)	# 583
	fmul	f3, f3, f8	# 1031
	fadd	f3, f7, f3	# 1029
	fmul	f1, f1, f2	# 1032
	addi	x13, x13, 8	# 593
	flw		f2, 0(x13)	# 593
	fmul	f1, f1, f2	# 1032
	fadd	f1, f3, f1	# 1029
	jal		x0, beq_cont.33844	# 1026
beq.33845:
	fadd	f1, f0, f7	# 1027
beq_cont.33844:
	beq		x10, x24, beq.33847	# 1170
	jal		x0, beq_cont.33846	# 1170
beq.33847:
	fsub	f1, f1, f30	# 1170
beq_cont.33846:
	fmul	f2, f6, f6	# 127
	fmul	f1, f4, f1	# 1171
	fsub	f1, f2, f1	# 1171
	fle		f1, f0, fle.33849	# 121
	lw		x9, 24(x9)	# 430
	beq		x9, x0, beq.33851	# 1173
	fsqrt	f1, f1	# 1174
	fadd	f1, f6, f1	# 1174
	addi	x8, x8, 16	# 1174
	flw		f2, 0(x8)	# 1174
	fmul	f1, f1, f2	# 1174
	fsw		f1, 0(x23)	# 1174
	jal		x0, beq_cont.33850	# 1173
beq.33851:
	fsqrt	f1, f1	# 1176
	fsub	f1, f6, f1	# 1176
	addi	x8, x8, 16	# 1176
	flw		f2, 0(x8)	# 1176
	fmul	f1, f1, f2	# 1176
	fsw		f1, 0(x23)	# 1176
beq_cont.33850:
	addi	x8, x0, 1	# 1177
	jal		x0, beq_cont.33838	# 121
fle.33849:
	addi	x8, x0, 0	# 1178
	jal		x0, beq_cont.33838	# 120
feq.33843:
	addi	x8, x0, 0	# 1166
	jal		x0, beq_cont.33838	# 1192
beq.33841:
	addi	x9, x8, 0	# 1154
	flw		f4, 0(x9)	# 1154
	fle		f0, f4, fle.33853	# 122
	addi	x9, x8, 4	# 1156
	flw		f4, 0(x9)	# 1156
	fmul	f1, f4, f1	# 1156
	addi	x9, x8, 8	# 1156
	flw		f4, 0(x9)	# 1156
	fmul	f2, f4, f2	# 1156
	fadd	f1, f1, f2	# 1156
	addi	x8, x8, 12	# 1156
	flw		f2, 0(x8)	# 1156
	fmul	f2, f2, f3	# 1156
	fadd	f1, f1, f2	# 1156
	fsw		f1, 0(x23)	# 1155
	addi	x8, x0, 1	# 1157
	jal		x0, beq_cont.33838	# 122
fle.33853:
	addi	x8, x0, 0	# 1158
	jal		x0, beq_cont.33838	# 1190
beq.33839:
	addi	x10, x8, 0	# 1121
	flw		f4, 0(x10)	# 1121
	fsub	f4, f4, f1	# 1121
	addi	x10, x8, 4	# 1121
	flw		f5, 0(x10)	# 1121
	fmul	f4, f4, f5	# 1121
	addi	x10, x0, 40740	# 1123
	flw		f6, 0(x10)	# 1123
	fmul	f7, f4, f6	# 1123
	fadd	f7, f7, f2	# 1123
	fle		f7, f0, fle.33855	# 124
	jal		x0, fle_cont.33854	# 124
fle.33855:
	fsub	f7, f0, f7	# 124
fle_cont.33854:
	lw		x9, 16(x9)	# 458
	addi	x10, x9, 4	# 463
	flw		f9, 0(x10)	# 463
	fle		f9, f7, fle.33857	# 125
	addi	x10, x0, 40744	# 1124
	flw		f7, 0(x10)	# 1124
	fmul	f7, f4, f7	# 1124
	fadd	f7, f7, f3	# 1124
	fle		f7, f0, fle.33859	# 124
	jal		x0, fle_cont.33858	# 124
fle.33859:
	fsub	f7, f0, f7	# 124
fle_cont.33858:
	addi	x10, x9, 8	# 473
	flw		f10, 0(x10)	# 473
	fle		f10, f7, fle.33861	# 125
	feq		f5, f0, feq.33863	# 120
	addi	x10, x0, 1	# 1125
	jal		x0, fle_cont.33856	# 120
feq.33863:
	addi	x10, x0, 0	# 1125
	jal		x0, fle_cont.33856	# 125
fle.33861:
	addi	x10, x0, 0	# 1126
	jal		x0, fle_cont.33856	# 125
fle.33857:
	addi	x10, x0, 0	# 1127
fle_cont.33856:
	beq		x10, x0, beq.33865	# 1122
	fsw		f4, 0(x23)	# 1129
	addi	x8, x0, 1	# 1129
	jal		x0, beq_cont.33838	# 1122
beq.33865:
	addi	x10, x8, 8	# 1130
	flw		f4, 0(x10)	# 1130
	fsub	f4, f4, f2	# 1130
	addi	x10, x8, 12	# 1130
	flw		f5, 0(x10)	# 1130
	fmul	f4, f4, f5	# 1130
	addi	x10, x0, 40736	# 1132
	flw		f7, 0(x10)	# 1132
	fmul	f10, f4, f7	# 1132
	fadd	f10, f10, f1	# 1132
	fle		f10, f0, fle.33867	# 124
	jal		x0, fle_cont.33866	# 124
fle.33867:
	fsub	f10, f0, f10	# 124
fle_cont.33866:
	addi	x10, x9, 0	# 453
	flw		f11, 0(x10)	# 453
	fle		f11, f10, fle.33869	# 125
	addi	x10, x0, 40744	# 1133
	flw		f10, 0(x10)	# 1133
	fmul	f10, f4, f10	# 1133
	fadd	f10, f10, f3	# 1133
	fle		f10, f0, fle.33871	# 124
	jal		x0, fle_cont.33870	# 124
fle.33871:
	fsub	f10, f0, f10	# 124
fle_cont.33870:
	addi	x9, x9, 8	# 473
	flw		f12, 0(x9)	# 473
	fle		f12, f10, fle.33873	# 125
	feq		f5, f0, feq.33875	# 120
	addi	x9, x0, 1	# 1134
	jal		x0, fle_cont.33868	# 120
feq.33875:
	addi	x9, x0, 0	# 1134
	jal		x0, fle_cont.33868	# 125
fle.33873:
	addi	x9, x0, 0	# 1135
	jal		x0, fle_cont.33868	# 125
fle.33869:
	addi	x9, x0, 0	# 1136
fle_cont.33868:
	beq		x9, x0, beq.33877	# 1131
	fsw		f4, 0(x23)	# 1138
	addi	x8, x0, 2	# 1138
	jal		x0, beq_cont.33838	# 1131
beq.33877:
	addi	x9, x8, 16	# 1139
	flw		f4, 0(x9)	# 1139
	fsub	f3, f4, f3	# 1139
	addi	x8, x8, 20	# 1139
	flw		f4, 0(x8)	# 1139
	fmul	f3, f3, f4	# 1139
	fmul	f5, f3, f7	# 1141
	fadd	f1, f5, f1	# 1141
	fle		f1, f0, fle.33879	# 124
	jal		x0, fle_cont.33878	# 124
fle.33879:
	fsub	f1, f0, f1	# 124
fle_cont.33878:
	fle		f11, f1, fle.33881	# 125
	fmul	f1, f3, f6	# 1142
	fadd	f1, f1, f2	# 1142
	fle		f1, f0, fle.33883	# 124
	jal		x0, fle_cont.33882	# 124
fle.33883:
	fsub	f1, f0, f1	# 124
fle_cont.33882:
	fle		f9, f1, fle.33885	# 125
	feq		f4, f0, feq.33887	# 120
	addi	x8, x0, 1	# 1143
	jal		x0, fle_cont.33880	# 120
feq.33887:
	addi	x8, x0, 0	# 1143
	jal		x0, fle_cont.33880	# 125
fle.33885:
	addi	x8, x0, 0	# 1144
	jal		x0, fle_cont.33880	# 125
fle.33881:
	addi	x8, x0, 0	# 1145
fle_cont.33880:
	beq		x8, x0, beq.33889	# 1140
	fsw		f3, 0(x23)	# 1147
	addi	x8, x0, 3	# 1147
	jal		x0, beq_cont.33838	# 1140
beq.33889:
	addi	x8, x0, 0	# 1149
beq_cont.33838:
	beq		x8, x0, beq.33891	# 1498
	flw		f1, 0(x23)	# 1499
	fle		f20, f1, fle.33893	# 125
	addi	x5, x6, 0	# 1500
	addi	x4, x21, 0	# 1500
	sw		x1, -16(x2)	# 1500
	addi	x2, x2, -20	# 1500
	jal		x1, shadow_check_one_or_group.2931.18029	# 1500
	addi	x2, x2, 20	# 1500
	lw		x1, -16(x2)	# 1500
	lw		x5, -12(x2)	# 1500
	beq		x4, x5, beq.33895	# 1500
	addi	x4, x0, 1	# 1501
	jal		x0, beq_cont.33836	# 1500
beq.33895:
	addi	x4, x0, 0	# 1502
	jal		x0, beq_cont.33836	# 125
fle.33893:
	addi	x4, x0, 0	# 1503
	jal		x0, beq_cont.33836	# 1498
beq.33891:
	addi	x4, x0, 0	# 1504
	jal		x0, beq_cont.33836	# 1492
beq.33837:
	addi	x4, x0, 1	# 1493
beq_cont.33836:
	lw		x5, -12(x2)	# 1491
	beq		x4, x5, beq.33896	# 1491
	add		x4, x0, x21	# 6
	lw		x6, 0(x2)	# 1506
	addi	x5, x6, 0	# 1506
	sw		x1, -16(x2)	# 1506
	addi	x2, x2, -20	# 1506
	jal		x1, shadow_check_one_or_group.2931.18029	# 1506
	addi	x2, x2, 20	# 1506
	lw		x1, -16(x2)	# 1506
	lw		x5, -12(x2)	# 1506
	beq		x4, x5, beq.33897	# 1506
	addi	x4, x0, 1	# 1507
	jalr	x0, x1, 0	# 1507
beq.33897:
	lw		x4, -8(x2)	# 1509
	addi	x4, x4, 1	# 1509
	lw		x5, -4(x2)	# 1509
	jal		x0, shadow_check_one_or_matrix.2934.18032	# 1509
beq.33896:
	lw		x4, -8(x2)	# 1511
	addi	x4, x4, 1	# 1511
	lw		x5, -4(x2)	# 1511
	jal		x0, shadow_check_one_or_matrix.2934.18032	# 1511
beq.33835:
	addi	x4, x0, 0	# 1489
	jalr	x0, x1, 0	# 1489
solve_each_element.2937.18035:
	mul		x7, x30, x4	# 1522
	add		x7, x5, x7	# 1522
	lw		x7, 0(x7)	# 1522
	beq		x7, x20, beq.33898	# 1523
	mul		x8, x30, x7	# 1089
	addi	x8, x8, 40048	# 1089
	lw		x8, 0(x8)	# 1089
	add		x9, x0, x0	# 6
	addi	x10, x0, 40636	# 1091
	flw		f1, 0(x10)	# 1091
	lw		x10, 20(x8)	# 488
	addi	x11, x10, 0	# 493
	flw		f2, 0(x11)	# 493
	fsub	f2, f1, f2	# 1091
	addi	x12, x0, 40640	# 1092
	flw		f3, 0(x12)	# 1092
	addi	x12, x10, 4	# 503
	flw		f4, 0(x12)	# 503
	fsub	f4, f3, f4	# 1092
	addi	x13, x0, 40644	# 1093
	flw		f5, 0(x13)	# 1093
	addi	x10, x10, 8	# 513
	flw		f6, 0(x10)	# 513
	fsub	f6, f5, f6	# 1093
	lw		x10, 4(x8)	# 410
	beq		x10, x21, beq.33900	# 1096
	beq		x10, x22, beq.33902	# 1097
	addi	x11, x6, 0	# 1063
	flw		f7, 0(x11)	# 1063
	addi	x11, x6, 4	# 1063
	flw		f8, 0(x11)	# 1063
	addi	x11, x6, 8	# 1063
	flw		f9, 0(x11)	# 1063
	fmul	f10, f7, f7	# 127
	lw		x11, 16(x8)	# 448
	addi	x12, x11, 0	# 453
	flw		f11, 0(x12)	# 453
	fmul	f10, f10, f11	# 1024
	fmul	f12, f8, f8	# 127
	addi	x12, x11, 4	# 463
	flw		f13, 0(x12)	# 463
	fmul	f12, f12, f13	# 1024
	fadd	f10, f10, f12	# 1024
	fmul	f12, f9, f9	# 127
	addi	x11, x11, 8	# 473
	flw		f14, 0(x11)	# 473
	fmul	f12, f12, f14	# 1024
	fadd	f10, f10, f12	# 1024
	lw		x11, 12(x8)	# 439
	beq		x11, x0, beq_cont.33903	# 1026
	fmul	f12, f8, f9	# 1030
	lw		x12, 36(x8)	# 568
	addi	x13, x12, 0	# 573
	flw		f15, 0(x13)	# 573
	fmul	f12, f12, f15	# 1030
	fadd	f10, f10, f12	# 1029
	fmul	f12, f9, f7	# 1031
	addi	x13, x12, 4	# 583
	flw		f15, 0(x13)	# 583
	fmul	f12, f12, f15	# 1031
	fadd	f10, f10, f12	# 1029
	fmul	f12, f7, f8	# 1032
	addi	x12, x12, 8	# 593
	flw		f15, 0(x12)	# 593
	fmul	f12, f12, f15	# 1032
	fadd	f10, f10, f12	# 1029
beq_cont.33903:
	feq		f10, f0, feq.33906	# 120
	fmul	f15, f7, f2	# 1038
	fmul	f15, f15, f11	# 1038
	fmul	f16, f8, f4	# 1039
	fmul	f16, f16, f13	# 1039
	fadd	f15, f15, f16	# 1038
	fmul	f16, f9, f6	# 1040
	fmul	f16, f16, f14	# 1040
	fadd	f15, f15, f16	# 1038
	beq		x11, x0, beq.33908	# 1042
	fmul	f16, f9, f4	# 1046
	fmul	f17, f8, f6	# 1046
	fadd	f16, f16, f17	# 1046
	lw		x12, 36(x8)	# 568
	addi	x13, x12, 0	# 573
	flw		f17, 0(x13)	# 573
	fmul	f16, f16, f17	# 1046
	fmul	f17, f7, f6	# 1047
	fmul	f9, f9, f2	# 1047
	fadd	f9, f17, f9	# 1047
	addi	x13, x12, 4	# 583
	flw		f17, 0(x13)	# 583
	fmul	f9, f9, f17	# 1047
	fadd	f9, f16, f9	# 1046
	fmul	f7, f7, f4	# 1048
	fmul	f8, f8, f2	# 1048
	fadd	f7, f7, f8	# 1048
	addi	x12, x12, 8	# 593
	flw		f8, 0(x12)	# 593
	fmul	f7, f7, f8	# 1048
	fadd	f7, f9, f7	# 1046
	lui		x12, %hi(l.27933)	# 126
	ori		x12, x12, %lo(l.27933)	# 126
	flw		f8, 0(x12)	# 126
	fmul	f7, f7, f8	# 126
	fadd	f7, f15, f7	# 1045
	jal		x0, beq_cont.33907	# 1042
beq.33908:
	fadd	f7, f0, f15	# 1043
beq_cont.33907:
	fmul	f8, f2, f2	# 127
	fmul	f8, f8, f11	# 1024
	fmul	f9, f4, f4	# 127
	fmul	f9, f9, f13	# 1024
	fadd	f8, f8, f9	# 1024
	fmul	f9, f6, f6	# 127
	fmul	f9, f9, f14	# 1024
	fadd	f8, f8, f9	# 1024
	beq		x11, x0, beq.33910	# 1026
	fmul	f9, f4, f6	# 1030
	lw		x11, 36(x8)	# 568
	addi	x12, x11, 0	# 573
	flw		f11, 0(x12)	# 573
	fmul	f9, f9, f11	# 1030
	fadd	f8, f8, f9	# 1029
	fmul	f6, f6, f2	# 1031
	addi	x12, x11, 4	# 583
	flw		f9, 0(x12)	# 583
	fmul	f6, f6, f9	# 1031
	fadd	f6, f8, f6	# 1029
	fmul	f2, f2, f4	# 1032
	addi	x11, x11, 8	# 593
	flw		f4, 0(x11)	# 593
	fmul	f2, f2, f4	# 1032
	fadd	f2, f6, f2	# 1029
	jal		x0, beq_cont.33909	# 1026
beq.33910:
	fadd	f2, f0, f8	# 1027
beq_cont.33909:
	beq		x10, x24, beq.33912	# 1073
	jal		x0, beq_cont.33911	# 1073
beq.33912:
	fsub	f2, f2, f30	# 1073
beq_cont.33911:
	fmul	f4, f7, f7	# 127
	fmul	f2, f10, f2	# 1075
	fsub	f2, f4, f2	# 1075
	fle		f2, f0, fle.33914	# 121
	fsqrt	f2, f2	# 1078
	lw		x10, 24(x8)	# 430
	beq		x10, x0, beq.33916	# 1079
	jal		x0, beq_cont.33915	# 1079
beq.33916:
	fsub	f2, f0, f2	# 123
beq_cont.33915:
	fsub	f2, f2, f7	# 1080
	fdiv	f2, f2, f10	# 1080
	fsw		f2, 0(x23)	# 1080
	addi	x10, x0, 1	# 1080
	jal		x0, beq_cont.33899	# 121
fle.33914:
	addi	x10, x0, 0	# 1083
	jal		x0, beq_cont.33899	# 120
feq.33906:
	addi	x10, x0, 0	# 1066
	jal		x0, beq_cont.33899	# 1097
beq.33902:
	lw		x10, 16(x8)	# 478
	addi	x11, x6, 0	# 349
	flw		f7, 0(x11)	# 349
	addi	x11, x10, 0	# 349
	flw		f8, 0(x11)	# 349
	fmul	f7, f7, f8	# 349
	addi	x11, x6, 4	# 349
	flw		f9, 0(x11)	# 349
	addi	x11, x10, 4	# 349
	flw		f10, 0(x11)	# 349
	fmul	f9, f9, f10	# 349
	fadd	f7, f7, f9	# 349
	addi	x11, x6, 8	# 349
	flw		f9, 0(x11)	# 349
	addi	x10, x10, 8	# 349
	flw		f11, 0(x10)	# 349
	fmul	f9, f9, f11	# 349
	fadd	f7, f7, f9	# 349
	fle		f7, f0, fle.33918	# 121
	fmul	f2, f8, f2	# 354
	fmul	f4, f10, f4	# 354
	fadd	f2, f2, f4	# 354
	fmul	f4, f11, f6	# 354
	fadd	f2, f2, f4	# 354
	fsub	f2, f0, f2	# 123
	fdiv	f2, f2, f7	# 1014
	fsw		f2, 0(x23)	# 1014
	addi	x10, x0, 1	# 1015
	jal		x0, beq_cont.33899	# 121
fle.33918:
	addi	x10, x0, 0	# 1016
	jal		x0, beq_cont.33899	# 1096
beq.33900:
	addi	x10, x6, 0	# 985
	flw		f7, 0(x10)	# 985
	feq		f7, f0, feq.33920	# 120
	lw		x10, 16(x8)	# 478
	lw		x11, 24(x8)	# 430
	fle		f0, f7, fle.33922	# 122
	addi	x12, x0, 1	# 122
	jal		x0, fle_cont.33921	# 122
fle.33922:
	addi	x12, x0, 0	# 122
fle_cont.33921:
	beq		x11, x0, beq.33924	# 261
	fle		f0, f7, fle.33926	# 122
	addi	x11, x0, 0	# 261
	jal		x0, beq_cont.33923	# 122
fle.33926:
	addi	x11, x0, 1	# 261
	jal		x0, beq_cont.33923	# 261
beq.33924:
	addi	x11, x12, 0	# 261
beq_cont.33923:
	addi	x12, x10, 0	# 987
	flw		f9, 0(x12)	# 987
	beq		x11, x0, beq.33928	# 276
	jal		x0, beq_cont.33927	# 276
beq.33928:
	fsub	f9, f0, f9	# 123
beq_cont.33927:
	fsub	f9, f9, f2	# 989
	fdiv	f9, f9, f7	# 989
	addi	x11, x6, 4	# 990
	flw		f10, 0(x11)	# 990
	fmul	f10, f9, f10	# 990
	fadd	f10, f10, f4	# 990
	fle		f10, f0, fle.33930	# 124
	jal		x0, fle_cont.33929	# 124
fle.33930:
	fsub	f10, f0, f10	# 124
fle_cont.33929:
	addi	x11, x10, 4	# 990
	flw		f11, 0(x11)	# 990
	fle		f11, f10, fle.33932	# 125
	addi	x11, x6, 8	# 991
	flw		f10, 0(x11)	# 991
	fmul	f10, f9, f10	# 991
	fadd	f10, f10, f6	# 991
	fle		f10, f0, fle.33934	# 124
	jal		x0, fle_cont.33933	# 124
fle.33934:
	fsub	f10, f0, f10	# 124
fle_cont.33933:
	addi	x10, x10, 8	# 991
	flw		f11, 0(x10)	# 991
	fle		f11, f10, fle.33936	# 125
	fsw		f9, 0(x23)	# 992
	addi	x10, x0, 1	# 992
	jal		x0, feq_cont.33919	# 125
fle.33936:
	addi	x10, x0, 0	# 993
	jal		x0, feq_cont.33919	# 125
fle.33932:
	addi	x10, x0, 0	# 994
	jal		x0, feq_cont.33919	# 120
feq.33920:
	addi	x10, x0, 0	# 985
feq_cont.33919:
	beq		x10, x0, beq.33938	# 1000
	addi	x10, x0, 1	# 1000
	jal		x0, beq_cont.33899	# 1000
beq.33938:
	addi	x10, x6, 4	# 985
	flw		f9, 0(x10)	# 985
	feq		f9, f0, feq.33940	# 120
	lw		x10, 16(x8)	# 478
	lw		x11, 24(x8)	# 430
	fle		f0, f9, fle.33942	# 122
	addi	x12, x0, 1	# 122
	jal		x0, fle_cont.33941	# 122
fle.33942:
	addi	x12, x0, 0	# 122
fle_cont.33941:
	beq		x11, x0, beq.33944	# 261
	fle		f0, f9, fle.33946	# 122
	addi	x11, x0, 0	# 261
	jal		x0, beq_cont.33943	# 122
fle.33946:
	addi	x11, x0, 1	# 261
	jal		x0, beq_cont.33943	# 261
beq.33944:
	addi	x11, x12, 0	# 261
beq_cont.33943:
	addi	x12, x10, 4	# 987
	flw		f10, 0(x12)	# 987
	beq		x11, x0, beq.33948	# 276
	jal		x0, beq_cont.33947	# 276
beq.33948:
	fsub	f10, f0, f10	# 123
beq_cont.33947:
	fsub	f10, f10, f4	# 989
	fdiv	f10, f10, f9	# 989
	addi	x11, x6, 8	# 990
	flw		f11, 0(x11)	# 990
	fmul	f11, f10, f11	# 990
	fadd	f11, f11, f6	# 990
	fle		f11, f0, fle.33950	# 124
	jal		x0, fle_cont.33949	# 124
fle.33950:
	fsub	f11, f0, f11	# 124
fle_cont.33949:
	addi	x11, x10, 8	# 990
	flw		f12, 0(x11)	# 990
	fle		f12, f11, fle.33952	# 125
	fmul	f11, f10, f7	# 991
	fadd	f11, f11, f2	# 991
	fle		f11, f0, fle.33954	# 124
	jal		x0, fle_cont.33953	# 124
fle.33954:
	fsub	f11, f0, f11	# 124
fle_cont.33953:
	addi	x10, x10, 0	# 991
	flw		f12, 0(x10)	# 991
	fle		f12, f11, fle.33956	# 125
	fsw		f10, 0(x23)	# 992
	addi	x10, x0, 1	# 992
	jal		x0, feq_cont.33939	# 125
fle.33956:
	addi	x10, x0, 0	# 993
	jal		x0, feq_cont.33939	# 125
fle.33952:
	addi	x10, x0, 0	# 994
	jal		x0, feq_cont.33939	# 120
feq.33940:
	addi	x10, x0, 0	# 985
feq_cont.33939:
	beq		x10, x0, beq.33958	# 1001
	addi	x10, x0, 2	# 1001
	jal		x0, beq_cont.33899	# 1001
beq.33958:
	addi	x10, x6, 8	# 985
	flw		f10, 0(x10)	# 985
	feq		f10, f0, feq.33960	# 120
	lw		x10, 16(x8)	# 478
	lw		x11, 24(x8)	# 430
	fle		f0, f10, fle.33962	# 122
	addi	x12, x0, 1	# 122
	jal		x0, fle_cont.33961	# 122
fle.33962:
	addi	x12, x0, 0	# 122
fle_cont.33961:
	beq		x11, x0, beq.33964	# 261
	fle		f0, f10, fle.33966	# 122
	addi	x11, x0, 0	# 261
	jal		x0, beq_cont.33963	# 122
fle.33966:
	addi	x11, x0, 1	# 261
	jal		x0, beq_cont.33963	# 261
beq.33964:
	addi	x11, x12, 0	# 261
beq_cont.33963:
	addi	x12, x10, 8	# 987
	flw		f11, 0(x12)	# 987
	beq		x11, x0, beq.33968	# 276
	jal		x0, beq_cont.33967	# 276
beq.33968:
	fsub	f11, f0, f11	# 123
beq_cont.33967:
	fsub	f6, f11, f6	# 989
	fdiv	f6, f6, f10	# 989
	fmul	f7, f6, f7	# 990
	fadd	f2, f7, f2	# 990
	fle		f2, f0, fle.33970	# 124
	jal		x0, fle_cont.33969	# 124
fle.33970:
	fsub	f2, f0, f2	# 124
fle_cont.33969:
	addi	x11, x10, 0	# 990
	flw		f7, 0(x11)	# 990
	fle		f7, f2, fle.33972	# 125
	fmul	f2, f6, f9	# 991
	fadd	f2, f2, f4	# 991
	fle		f2, f0, fle.33974	# 124
	jal		x0, fle_cont.33973	# 124
fle.33974:
	fsub	f2, f0, f2	# 124
fle_cont.33973:
	addi	x10, x10, 4	# 991
	flw		f4, 0(x10)	# 991
	fle		f4, f2, fle.33976	# 125
	fsw		f6, 0(x23)	# 992
	addi	x10, x0, 1	# 992
	jal		x0, feq_cont.33959	# 125
fle.33976:
	addi	x10, x0, 0	# 993
	jal		x0, feq_cont.33959	# 125
fle.33972:
	addi	x10, x0, 0	# 994
	jal		x0, feq_cont.33959	# 120
feq.33960:
	addi	x10, x0, 0	# 985
feq_cont.33959:
	beq		x10, x0, beq.33978	# 1002
	addi	x10, x0, 3	# 1002
	jal		x0, beq_cont.33899	# 1002
beq.33978:
	addi	x10, x0, 0	# 1003
beq_cont.33899:
	beq		x10, x0, beq.33979	# 1526
	flw		f2, 0(x23)	# 1530
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x4, -8(x2)	# 125
	fle		f2, f0, fle_cont.33980	# 125
	addi	x8, x0, 40548	# 1533
	flw		f4, 0(x8)	# 1533
	fle		f4, f2, fle_cont.33980	# 125
	fadd	f2, f2, f18	# 1535
	addi	x11, x6, 0	# 1536
	flw		f4, 0(x11)	# 1536
	fmul	f4, f4, f2	# 1536
	fadd	f1, f4, f1	# 1536
	addi	x11, x6, 4	# 1537
	flw		f4, 0(x11)	# 1537
	fmul	f4, f4, f2	# 1537
	fadd	f3, f4, f3	# 1537
	addi	x11, x6, 8	# 1538
	flw		f4, 0(x11)	# 1538
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
	beq		x4, x5, fle_cont.33980	# 1539
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
fle_cont.33980:
	lw		x4, -8(x2)	# 1550
	addi	x4, x4, 1	# 1550
	lw		x5, -4(x2)	# 1550
	lw		x6, 0(x2)	# 1550
	jal		x0, solve_each_element.2937.18035	# 1550
beq.33979:
	lw		x7, 24(x8)	# 430
	beq		x7, x0, beq.33986	# 1554
	addi	x4, x4, 1	# 1555
	jal		x0, solve_each_element.2937.18035	# 1555
beq.33986:
	jalr	x0, x1, 0	# 1556
beq.33898:
	jalr	x0, x1, 0	# 1523
solve_one_or_network.2941.18039:
	mul		x7, x30, x4	# 1563
	add		x7, x5, x7	# 1563
	lw		x7, 0(x7)	# 1563
	beq		x7, x20, beq.33989	# 1564
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
beq.33989:
	jalr	x0, x1, 0	# 1568
trace_or_matrix.2945.18043:
	mul		x7, x30, x4	# 1573
	add		x7, x5, x7	# 1573
	lw		x7, 0(x7)	# 1573
	addi	x9, x7, 0	# 1574
	lw		x9, 0(x9)	# 1574
	beq		x9, x20, beq.33991	# 1575
	sw		x6, 0(x2)	# 1578
	sw		x5, -4(x2)	# 1578
	sw		x4, -8(x2)	# 1578
	beq		x9, x28, beq.33993	# 1578
	mul		x9, x30, x9	# 1089
	addi	x9, x9, 40048	# 1089
	lw		x9, 0(x9)	# 1089
	addi	x10, x0, 40636	# 1091
	flw		f1, 0(x10)	# 1091
	lw		x10, 20(x9)	# 488
	addi	x11, x10, 0	# 493
	flw		f2, 0(x11)	# 493
	fsub	f1, f1, f2	# 1091
	add		x11, x0, x21	# 6
	addi	x12, x0, 40640	# 1092
	flw		f2, 0(x12)	# 1092
	addi	x12, x10, 4	# 503
	flw		f3, 0(x12)	# 503
	fsub	f2, f2, f3	# 1092
	addi	x13, x0, 40644	# 1093
	flw		f3, 0(x13)	# 1093
	addi	x10, x10, 8	# 513
	flw		f4, 0(x10)	# 513
	fsub	f3, f3, f4	# 1093
	lw		x10, 4(x9)	# 410
	beq		x10, x21, beq.33995	# 1096
	beq		x10, x22, beq.33997	# 1097
	addi	x12, x6, 0	# 1063
	flw		f4, 0(x12)	# 1063
	addi	x12, x6, 4	# 1063
	flw		f5, 0(x12)	# 1063
	addi	x12, x6, 8	# 1063
	flw		f6, 0(x12)	# 1063
	fmul	f7, f4, f4	# 127
	lw		x12, 16(x9)	# 448
	addi	x13, x12, 0	# 453
	flw		f8, 0(x13)	# 453
	fmul	f7, f7, f8	# 1024
	fmul	f9, f5, f5	# 127
	addi	x13, x12, 4	# 463
	flw		f10, 0(x13)	# 463
	fmul	f9, f9, f10	# 1024
	fadd	f7, f7, f9	# 1024
	fmul	f9, f6, f6	# 127
	addi	x12, x12, 8	# 473
	flw		f11, 0(x12)	# 473
	fmul	f9, f9, f11	# 1024
	fadd	f7, f7, f9	# 1024
	lw		x12, 12(x9)	# 439
	beq		x12, x0, beq_cont.33998	# 1026
	fmul	f9, f5, f6	# 1030
	lw		x13, 36(x9)	# 568
	addi	x14, x13, 0	# 573
	flw		f12, 0(x14)	# 573
	fmul	f9, f9, f12	# 1030
	fadd	f7, f7, f9	# 1029
	fmul	f9, f6, f4	# 1031
	addi	x14, x13, 4	# 583
	flw		f12, 0(x14)	# 583
	fmul	f9, f9, f12	# 1031
	fadd	f7, f7, f9	# 1029
	fmul	f9, f4, f5	# 1032
	addi	x13, x13, 8	# 593
	flw		f12, 0(x13)	# 593
	fmul	f9, f9, f12	# 1032
	fadd	f7, f7, f9	# 1029
beq_cont.33998:
	feq		f7, f0, feq.34001	# 120
	fmul	f12, f4, f1	# 1038
	fmul	f12, f12, f8	# 1038
	fmul	f13, f5, f2	# 1039
	fmul	f13, f13, f10	# 1039
	fadd	f12, f12, f13	# 1038
	fmul	f13, f6, f3	# 1040
	fmul	f13, f13, f11	# 1040
	fadd	f12, f12, f13	# 1038
	beq		x12, x0, beq.34003	# 1042
	fmul	f13, f6, f2	# 1046
	fmul	f14, f5, f3	# 1046
	fadd	f13, f13, f14	# 1046
	lw		x13, 36(x9)	# 568
	addi	x14, x13, 0	# 573
	flw		f14, 0(x14)	# 573
	fmul	f13, f13, f14	# 1046
	fmul	f14, f4, f3	# 1047
	fmul	f6, f6, f1	# 1047
	fadd	f6, f14, f6	# 1047
	addi	x14, x13, 4	# 583
	flw		f14, 0(x14)	# 583
	fmul	f6, f6, f14	# 1047
	fadd	f6, f13, f6	# 1046
	fmul	f4, f4, f2	# 1048
	fmul	f5, f5, f1	# 1048
	fadd	f4, f4, f5	# 1048
	addi	x13, x13, 8	# 593
	flw		f5, 0(x13)	# 593
	fmul	f4, f4, f5	# 1048
	fadd	f4, f6, f4	# 1046
	lui		x13, %hi(l.27933)	# 126
	ori		x13, x13, %lo(l.27933)	# 126
	flw		f5, 0(x13)	# 126
	fmul	f4, f4, f5	# 126
	fadd	f4, f12, f4	# 1045
	jal		x0, beq_cont.34002	# 1042
beq.34003:
	fadd	f4, f0, f12	# 1043
beq_cont.34002:
	fmul	f5, f1, f1	# 127
	fmul	f5, f5, f8	# 1024
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f10	# 1024
	fadd	f5, f5, f6	# 1024
	fmul	f6, f3, f3	# 127
	fmul	f6, f6, f11	# 1024
	fadd	f5, f5, f6	# 1024
	beq		x12, x0, beq.34005	# 1026
	fmul	f6, f2, f3	# 1030
	lw		x12, 36(x9)	# 568
	addi	x13, x12, 0	# 573
	flw		f8, 0(x13)	# 573
	fmul	f6, f6, f8	# 1030
	fadd	f5, f5, f6	# 1029
	fmul	f3, f3, f1	# 1031
	addi	x13, x12, 4	# 583
	flw		f6, 0(x13)	# 583
	fmul	f3, f3, f6	# 1031
	fadd	f3, f5, f3	# 1029
	fmul	f1, f1, f2	# 1032
	addi	x12, x12, 8	# 593
	flw		f2, 0(x12)	# 593
	fmul	f1, f1, f2	# 1032
	fadd	f1, f3, f1	# 1029
	jal		x0, beq_cont.34004	# 1026
beq.34005:
	fadd	f1, f0, f5	# 1027
beq_cont.34004:
	beq		x10, x24, beq.34007	# 1073
	jal		x0, beq_cont.34006	# 1073
beq.34007:
	fsub	f1, f1, f30	# 1073
beq_cont.34006:
	fmul	f2, f4, f4	# 127
	fmul	f1, f7, f1	# 1075
	fsub	f1, f2, f1	# 1075
	fle		f1, f0, fle.34009	# 121
	fsqrt	f1, f1	# 1078
	lw		x9, 24(x9)	# 430
	beq		x9, x0, beq.34011	# 1079
	jal		x0, beq_cont.34010	# 1079
beq.34011:
	fsub	f1, f0, f1	# 123
beq_cont.34010:
	fsub	f1, f1, f4	# 1080
	fdiv	f1, f1, f7	# 1080
	fsw		f1, 0(x23)	# 1080
	addi	x9, x0, 1	# 1080
	jal		x0, beq_cont.33994	# 121
fle.34009:
	addi	x9, x0, 0	# 1083
	jal		x0, beq_cont.33994	# 120
feq.34001:
	addi	x9, x0, 0	# 1066
	jal		x0, beq_cont.33994	# 1097
beq.33997:
	lw		x9, 16(x9)	# 478
	addi	x10, x6, 0	# 349
	flw		f4, 0(x10)	# 349
	addi	x10, x9, 0	# 349
	flw		f5, 0(x10)	# 349
	fmul	f4, f4, f5	# 349
	addi	x10, x6, 4	# 349
	flw		f6, 0(x10)	# 349
	addi	x10, x9, 4	# 349
	flw		f7, 0(x10)	# 349
	fmul	f6, f6, f7	# 349
	fadd	f4, f4, f6	# 349
	addi	x10, x6, 8	# 349
	flw		f6, 0(x10)	# 349
	addi	x9, x9, 8	# 349
	flw		f8, 0(x9)	# 349
	fmul	f6, f6, f8	# 349
	fadd	f4, f4, f6	# 349
	fle		f4, f0, fle.34013	# 121
	fmul	f1, f5, f1	# 354
	fmul	f2, f7, f2	# 354
	fadd	f1, f1, f2	# 354
	fmul	f2, f8, f3	# 354
	fadd	f1, f1, f2	# 354
	fsub	f1, f0, f1	# 123
	fdiv	f1, f1, f4	# 1014
	fsw		f1, 0(x23)	# 1014
	addi	x9, x0, 1	# 1015
	jal		x0, beq_cont.33994	# 121
fle.34013:
	addi	x9, x0, 0	# 1016
	jal		x0, beq_cont.33994	# 1096
beq.33995:
	addi	x10, x6, 0	# 985
	flw		f4, 0(x10)	# 985
	feq		f4, f0, feq.34015	# 120
	lw		x10, 16(x9)	# 478
	lw		x12, 24(x9)	# 430
	fle		f0, f4, fle.34017	# 122
	addi	x13, x0, 1	# 122
	jal		x0, fle_cont.34016	# 122
fle.34017:
	addi	x13, x0, 0	# 122
fle_cont.34016:
	beq		x12, x0, beq.34019	# 261
	fle		f0, f4, fle.34021	# 122
	addi	x12, x0, 0	# 261
	jal		x0, beq_cont.34018	# 122
fle.34021:
	addi	x12, x0, 1	# 261
	jal		x0, beq_cont.34018	# 261
beq.34019:
	addi	x12, x13, 0	# 261
beq_cont.34018:
	addi	x13, x10, 0	# 987
	flw		f6, 0(x13)	# 987
	beq		x12, x0, beq.34023	# 276
	jal		x0, beq_cont.34022	# 276
beq.34023:
	fsub	f6, f0, f6	# 123
beq_cont.34022:
	fsub	f6, f6, f1	# 989
	fdiv	f6, f6, f4	# 989
	addi	x12, x6, 4	# 990
	flw		f7, 0(x12)	# 990
	fmul	f7, f6, f7	# 990
	fadd	f7, f7, f2	# 990
	fle		f7, f0, fle.34025	# 124
	jal		x0, fle_cont.34024	# 124
fle.34025:
	fsub	f7, f0, f7	# 124
fle_cont.34024:
	addi	x12, x10, 4	# 990
	flw		f8, 0(x12)	# 990
	fle		f8, f7, fle.34027	# 125
	addi	x12, x6, 8	# 991
	flw		f7, 0(x12)	# 991
	fmul	f7, f6, f7	# 991
	fadd	f7, f7, f3	# 991
	fle		f7, f0, fle.34029	# 124
	jal		x0, fle_cont.34028	# 124
fle.34029:
	fsub	f7, f0, f7	# 124
fle_cont.34028:
	addi	x10, x10, 8	# 991
	flw		f8, 0(x10)	# 991
	fle		f8, f7, fle.34031	# 125
	fsw		f6, 0(x23)	# 992
	addi	x10, x0, 1	# 992
	jal		x0, feq_cont.34014	# 125
fle.34031:
	addi	x10, x0, 0	# 993
	jal		x0, feq_cont.34014	# 125
fle.34027:
	addi	x10, x0, 0	# 994
	jal		x0, feq_cont.34014	# 120
feq.34015:
	addi	x10, x0, 0	# 985
feq_cont.34014:
	beq		x10, x0, beq.34033	# 1000
	addi	x9, x0, 1	# 1000
	jal		x0, beq_cont.33994	# 1000
beq.34033:
	addi	x10, x6, 4	# 985
	flw		f6, 0(x10)	# 985
	feq		f6, f0, feq.34035	# 120
	lw		x10, 16(x9)	# 478
	lw		x12, 24(x9)	# 430
	fle		f0, f6, fle.34037	# 122
	addi	x13, x0, 1	# 122
	jal		x0, fle_cont.34036	# 122
fle.34037:
	addi	x13, x0, 0	# 122
fle_cont.34036:
	beq		x12, x0, beq.34039	# 261
	fle		f0, f6, fle.34041	# 122
	addi	x12, x0, 0	# 261
	jal		x0, beq_cont.34038	# 122
fle.34041:
	addi	x12, x0, 1	# 261
	jal		x0, beq_cont.34038	# 261
beq.34039:
	addi	x12, x13, 0	# 261
beq_cont.34038:
	addi	x13, x10, 4	# 987
	flw		f7, 0(x13)	# 987
	beq		x12, x0, beq.34043	# 276
	jal		x0, beq_cont.34042	# 276
beq.34043:
	fsub	f7, f0, f7	# 123
beq_cont.34042:
	fsub	f7, f7, f2	# 989
	fdiv	f7, f7, f6	# 989
	addi	x12, x6, 8	# 990
	flw		f8, 0(x12)	# 990
	fmul	f8, f7, f8	# 990
	fadd	f8, f8, f3	# 990
	fle		f8, f0, fle.34045	# 124
	jal		x0, fle_cont.34044	# 124
fle.34045:
	fsub	f8, f0, f8	# 124
fle_cont.34044:
	addi	x12, x10, 8	# 990
	flw		f9, 0(x12)	# 990
	fle		f9, f8, fle.34047	# 125
	fmul	f8, f7, f4	# 991
	fadd	f8, f8, f1	# 991
	fle		f8, f0, fle.34049	# 124
	jal		x0, fle_cont.34048	# 124
fle.34049:
	fsub	f8, f0, f8	# 124
fle_cont.34048:
	addi	x10, x10, 0	# 991
	flw		f9, 0(x10)	# 991
	fle		f9, f8, fle.34051	# 125
	fsw		f7, 0(x23)	# 992
	addi	x10, x0, 1	# 992
	jal		x0, feq_cont.34034	# 125
fle.34051:
	addi	x10, x0, 0	# 993
	jal		x0, feq_cont.34034	# 125
fle.34047:
	addi	x10, x0, 0	# 994
	jal		x0, feq_cont.34034	# 120
feq.34035:
	addi	x10, x0, 0	# 985
feq_cont.34034:
	beq		x10, x0, beq.34053	# 1001
	addi	x9, x0, 2	# 1001
	jal		x0, beq_cont.33994	# 1001
beq.34053:
	addi	x10, x6, 8	# 985
	flw		f7, 0(x10)	# 985
	feq		f7, f0, feq.34055	# 120
	lw		x10, 16(x9)	# 478
	lw		x9, 24(x9)	# 430
	fle		f0, f7, fle.34057	# 122
	addi	x12, x0, 1	# 122
	jal		x0, fle_cont.34056	# 122
fle.34057:
	addi	x12, x0, 0	# 122
fle_cont.34056:
	beq		x9, x0, beq.34059	# 261
	fle		f0, f7, fle.34061	# 122
	addi	x9, x0, 0	# 261
	jal		x0, beq_cont.34058	# 122
fle.34061:
	addi	x9, x0, 1	# 261
	jal		x0, beq_cont.34058	# 261
beq.34059:
	addi	x9, x12, 0	# 261
beq_cont.34058:
	addi	x12, x10, 8	# 987
	flw		f8, 0(x12)	# 987
	beq		x9, x0, beq.34063	# 276
	jal		x0, beq_cont.34062	# 276
beq.34063:
	fsub	f8, f0, f8	# 123
beq_cont.34062:
	fsub	f3, f8, f3	# 989
	fdiv	f3, f3, f7	# 989
	fmul	f4, f3, f4	# 990
	fadd	f1, f4, f1	# 990
	fle		f1, f0, fle.34065	# 124
	jal		x0, fle_cont.34064	# 124
fle.34065:
	fsub	f1, f0, f1	# 124
fle_cont.34064:
	addi	x9, x10, 0	# 990
	flw		f4, 0(x9)	# 990
	fle		f4, f1, fle.34067	# 125
	fmul	f1, f3, f6	# 991
	fadd	f1, f1, f2	# 991
	fle		f1, f0, fle.34069	# 124
	jal		x0, fle_cont.34068	# 124
fle.34069:
	fsub	f1, f0, f1	# 124
fle_cont.34068:
	addi	x9, x10, 4	# 991
	flw		f2, 0(x9)	# 991
	fle		f2, f1, fle.34071	# 125
	fsw		f3, 0(x23)	# 992
	addi	x9, x0, 1	# 992
	jal		x0, feq_cont.34054	# 125
fle.34071:
	addi	x9, x0, 0	# 993
	jal		x0, feq_cont.34054	# 125
fle.34067:
	addi	x9, x0, 0	# 994
	jal		x0, feq_cont.34054	# 120
feq.34055:
	addi	x9, x0, 0	# 985
feq_cont.34054:
	beq		x9, x0, beq.34073	# 1002
	addi	x9, x0, 3	# 1002
	jal		x0, beq_cont.33994	# 1002
beq.34073:
	addi	x9, x0, 0	# 1003
beq_cont.33994:
	beq		x9, x0, beq_cont.33992	# 1584
	flw		f1, 0(x23)	# 1585
	addi	x8, x0, 40548	# 1586
	flw		f2, 0(x8)	# 1586
	fle		f2, f1, beq_cont.33992	# 125
	addi	x5, x7, 0	# 1587
	addi	x4, x21, 0	# 1587
	sw		x1, -12(x2)	# 1587
	addi	x2, x2, -16	# 1587
	jal		x1, solve_one_or_network.2941.18039	# 1587
	addi	x2, x2, 16	# 1587
	lw		x1, -12(x2)	# 1587
	jal		x0, beq_cont.33992	# 125
beq.33993:
	add		x8, x0, x21	# 6
	addi	x5, x7, 0	# 1579
	addi	x4, x21, 0	# 1579
	sw		x1, -12(x2)	# 1579
	addi	x2, x2, -16	# 1579
	jal		x1, solve_one_or_network.2941.18039	# 1579
	addi	x2, x2, 16	# 1579
	lw		x1, -12(x2)	# 1579
beq_cont.33992:
	lw		x4, -8(x2)	# 1591
	addi	x4, x4, 1	# 1591
	lw		x5, -4(x2)	# 1591
	lw		x6, 0(x2)	# 1591
	jal		x0, trace_or_matrix.2945.18043	# 1591
beq.33991:
	jalr	x0, x1, 0	# 1576
solve_each_element_fast.2951.18047:
	lw		x7, 0(x6)	# 696
	mul		x8, x30, x4	# 1616
	add		x8, x5, x8	# 1616
	lw		x8, 0(x8)	# 1616
	beq		x8, x20, beq.34079	# 1617
	mul		x10, x30, x8	# 1230
	addi	x11, x10, 40048	# 1230
	lw		x11, 0(x11)	# 1230
	lw		x12, 40(x11)	# 605
	add		x13, x0, x0	# 6
	addi	x14, x12, 0	# 1232
	flw		f1, 0(x14)	# 1232
	addi	x15, x12, 4	# 1233
	flw		f2, 0(x15)	# 1233
	addi	x16, x12, 8	# 1234
	flw		f3, 0(x16)	# 1234
	lw		x16, 4(x6)	# 702
	add		x10, x16, x10	# 1236
	lw		x10, 0(x10)	# 1236
	lw		x17, 4(x11)	# 410
	beq		x17, x21, beq.34081	# 1238
	beq		x17, x22, beq.34083	# 1240
	addi	x17, x10, 0	# 1212
	flw		f4, 0(x17)	# 1212
	feq		f4, f0, feq.34085	# 120
	addi	x17, x10, 4	# 1216
	flw		f6, 0(x17)	# 1216
	fmul	f1, f6, f1	# 1216
	addi	x17, x10, 8	# 1216
	flw		f6, 0(x17)	# 1216
	fmul	f2, f6, f2	# 1216
	fadd	f1, f1, f2	# 1216
	addi	x17, x10, 12	# 1216
	flw		f2, 0(x17)	# 1216
	fmul	f2, f2, f3	# 1216
	fadd	f1, f1, f2	# 1216
	addi	x12, x12, 12	# 1217
	flw		f2, 0(x12)	# 1217
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1218
	fsub	f2, f3, f2	# 1218
	fle		f2, f0, fle.34087	# 121
	lw		x12, 24(x11)	# 430
	beq		x12, x0, beq.34089	# 1220
	fsqrt	f2, f2	# 1221
	fadd	f1, f1, f2	# 1221
	addi	x10, x10, 16	# 1221
	flw		f2, 0(x10)	# 1221
	fmul	f1, f1, f2	# 1221
	fsw		f1, 0(x23)	# 1221
	jal		x0, beq_cont.34088	# 1220
beq.34089:
	fsqrt	f2, f2	# 1223
	fsub	f1, f1, f2	# 1223
	addi	x10, x10, 16	# 1223
	flw		f2, 0(x10)	# 1223
	fmul	f1, f1, f2	# 1223
	fsw		f1, 0(x23)	# 1223
beq_cont.34088:
	addi	x10, x0, 1	# 1224
	jal		x0, beq_cont.34080	# 121
fle.34087:
	addi	x10, x0, 0	# 1225
	jal		x0, beq_cont.34080	# 120
feq.34085:
	addi	x10, x0, 0	# 1214
	jal		x0, beq_cont.34080	# 1240
beq.34083:
	addi	x10, x10, 0	# 1203
	flw		f1, 0(x10)	# 1203
	fle		f0, f1, fle.34091	# 122
	addi	x10, x12, 12	# 1204
	flw		f2, 0(x10)	# 1204
	fmul	f1, f1, f2	# 1204
	fsw		f1, 0(x23)	# 1204
	addi	x10, x0, 1	# 1205
	jal		x0, beq_cont.34080	# 122
fle.34091:
	addi	x10, x0, 0	# 1206
	jal		x0, beq_cont.34080	# 1238
beq.34081:
	addi	x12, x10, 0	# 1121
	flw		f4, 0(x12)	# 1121
	fsub	f4, f4, f1	# 1121
	addi	x12, x10, 4	# 1121
	flw		f5, 0(x12)	# 1121
	fmul	f4, f4, f5	# 1121
	addi	x12, x7, 4	# 1123
	flw		f6, 0(x12)	# 1123
	fmul	f7, f4, f6	# 1123
	fadd	f7, f7, f2	# 1123
	fle		f7, f0, fle.34093	# 124
	jal		x0, fle_cont.34092	# 124
fle.34093:
	fsub	f7, f0, f7	# 124
fle_cont.34092:
	lw		x12, 16(x11)	# 458
	addi	x17, x12, 4	# 463
	flw		f9, 0(x17)	# 463
	fle		f9, f7, fle.34095	# 125
	addi	x17, x7, 8	# 1124
	flw		f7, 0(x17)	# 1124
	fmul	f7, f4, f7	# 1124
	fadd	f7, f7, f3	# 1124
	fle		f7, f0, fle.34097	# 124
	jal		x0, fle_cont.34096	# 124
fle.34097:
	fsub	f7, f0, f7	# 124
fle_cont.34096:
	addi	x17, x12, 8	# 473
	flw		f10, 0(x17)	# 473
	fle		f10, f7, fle.34099	# 125
	feq		f5, f0, feq.34101	# 120
	addi	x17, x0, 1	# 1125
	jal		x0, fle_cont.34094	# 120
feq.34101:
	addi	x17, x0, 0	# 1125
	jal		x0, fle_cont.34094	# 125
fle.34099:
	addi	x17, x0, 0	# 1126
	jal		x0, fle_cont.34094	# 125
fle.34095:
	addi	x17, x0, 0	# 1127
fle_cont.34094:
	beq		x17, x0, beq.34103	# 1122
	fsw		f4, 0(x23)	# 1129
	addi	x10, x0, 1	# 1129
	jal		x0, beq_cont.34080	# 1122
beq.34103:
	addi	x17, x10, 8	# 1130
	flw		f4, 0(x17)	# 1130
	fsub	f4, f4, f2	# 1130
	addi	x17, x10, 12	# 1130
	flw		f5, 0(x17)	# 1130
	fmul	f4, f4, f5	# 1130
	addi	x17, x7, 0	# 1132
	flw		f7, 0(x17)	# 1132
	fmul	f10, f4, f7	# 1132
	fadd	f10, f10, f1	# 1132
	fle		f10, f0, fle.34105	# 124
	jal		x0, fle_cont.34104	# 124
fle.34105:
	fsub	f10, f0, f10	# 124
fle_cont.34104:
	addi	x17, x12, 0	# 453
	flw		f11, 0(x17)	# 453
	fle		f11, f10, fle.34107	# 125
	addi	x17, x7, 8	# 1133
	flw		f10, 0(x17)	# 1133
	fmul	f10, f4, f10	# 1133
	fadd	f10, f10, f3	# 1133
	fle		f10, f0, fle.34109	# 124
	jal		x0, fle_cont.34108	# 124
fle.34109:
	fsub	f10, f0, f10	# 124
fle_cont.34108:
	addi	x12, x12, 8	# 473
	flw		f12, 0(x12)	# 473
	fle		f12, f10, fle.34111	# 125
	feq		f5, f0, feq.34113	# 120
	addi	x12, x0, 1	# 1134
	jal		x0, fle_cont.34106	# 120
feq.34113:
	addi	x12, x0, 0	# 1134
	jal		x0, fle_cont.34106	# 125
fle.34111:
	addi	x12, x0, 0	# 1135
	jal		x0, fle_cont.34106	# 125
fle.34107:
	addi	x12, x0, 0	# 1136
fle_cont.34106:
	beq		x12, x0, beq.34115	# 1131
	fsw		f4, 0(x23)	# 1138
	addi	x10, x0, 2	# 1138
	jal		x0, beq_cont.34080	# 1131
beq.34115:
	addi	x12, x10, 16	# 1139
	flw		f4, 0(x12)	# 1139
	fsub	f3, f4, f3	# 1139
	addi	x10, x10, 20	# 1139
	flw		f4, 0(x10)	# 1139
	fmul	f3, f3, f4	# 1139
	fmul	f5, f3, f7	# 1141
	fadd	f1, f5, f1	# 1141
	fle		f1, f0, fle.34117	# 124
	jal		x0, fle_cont.34116	# 124
fle.34117:
	fsub	f1, f0, f1	# 124
fle_cont.34116:
	fle		f11, f1, fle.34119	# 125
	fmul	f1, f3, f6	# 1142
	fadd	f1, f1, f2	# 1142
	fle		f1, f0, fle.34121	# 124
	jal		x0, fle_cont.34120	# 124
fle.34121:
	fsub	f1, f0, f1	# 124
fle_cont.34120:
	fle		f9, f1, fle.34123	# 125
	feq		f4, f0, feq.34125	# 120
	addi	x10, x0, 1	# 1143
	jal		x0, fle_cont.34118	# 120
feq.34125:
	addi	x10, x0, 0	# 1143
	jal		x0, fle_cont.34118	# 125
fle.34123:
	addi	x10, x0, 0	# 1144
	jal		x0, fle_cont.34118	# 125
fle.34119:
	addi	x10, x0, 0	# 1145
fle_cont.34118:
	beq		x10, x0, beq.34127	# 1140
	fsw		f3, 0(x23)	# 1147
	addi	x10, x0, 3	# 1147
	jal		x0, beq_cont.34080	# 1140
beq.34127:
	addi	x10, x0, 0	# 1149
beq_cont.34080:
	beq		x10, x0, beq.34128	# 1620
	flw		f1, 0(x23)	# 1624
	sw		x6, 0(x2)	# 125
	sw		x0, -4(x2)	# 125
	fsw		f0, -8(x2)	# 125
	sw		x7, -12(x2)	# 125
	sw		x20, -16(x2)	# 125
	sw		x5, -20(x2)	# 125
	sw		x4, -24(x2)	# 125
	fle		f1, f0, fle_cont.34129	# 125
	addi	x12, x0, 40548	# 1627
	flw		f3, 0(x12)	# 1627
	fle		f3, f1, fle_cont.34129	# 125
	fadd	f1, f1, f18	# 1629
	addi	x17, x7, 0	# 1630
	flw		f3, 0(x17)	# 1630
	fmul	f3, f3, f1	# 1630
	addi	x17, x0, 40648	# 1630
	flw		f4, 0(x17)	# 1630
	fadd	f3, f3, f4	# 1630
	addi	x17, x7, 4	# 1631
	flw		f4, 0(x17)	# 1631
	fmul	f4, f4, f1	# 1631
	addi	x17, x0, 40652	# 1631
	flw		f5, 0(x17)	# 1631
	fadd	f4, f4, f5	# 1631
	addi	x17, x7, 8	# 1632
	flw		f5, 0(x17)	# 1632
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
	beq		x4, x5, fle_cont.34129	# 1633
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
fle_cont.34129:
	lw		x4, -24(x2)	# 1644
	addi	x4, x4, 1	# 1644
	mul		x5, x30, x4	# 1616
	lw		x6, -20(x2)	# 1616
	add		x5, x6, x5	# 1616
	lw		x5, 0(x5)	# 1616
	lw		x7, -16(x2)	# 1617
	beq		x5, x7, beq.34135	# 1617
	mul		x7, x30, x5	# 1230
	addi	x8, x7, 40048	# 1230
	lw		x8, 0(x8)	# 1230
	lw		x9, 40(x8)	# 605
	addi	x10, x9, 0	# 1232
	flw		f1, 0(x10)	# 1232
	addi	x10, x9, 4	# 1233
	flw		f2, 0(x10)	# 1233
	addi	x10, x9, 8	# 1234
	flw		f3, 0(x10)	# 1234
	add		x7, x16, x7	# 1236
	lw		x7, 0(x7)	# 1236
	lw		x10, 4(x8)	# 410
	beq		x10, x21, beq.34137	# 1238
	beq		x10, x22, beq.34139	# 1240
	addi	x10, x7, 0	# 1212
	flw		f4, 0(x10)	# 1212
	flw		f5, -8(x2)	# 120
	feq		f4, f5, feq.34141	# 120
	addi	x10, x7, 4	# 1216
	flw		f6, 0(x10)	# 1216
	fmul	f1, f6, f1	# 1216
	addi	x10, x7, 8	# 1216
	flw		f6, 0(x10)	# 1216
	fmul	f2, f6, f2	# 1216
	fadd	f1, f1, f2	# 1216
	addi	x10, x7, 12	# 1216
	flw		f2, 0(x10)	# 1216
	fmul	f2, f2, f3	# 1216
	fadd	f1, f1, f2	# 1216
	addi	x9, x9, 12	# 1217
	flw		f2, 0(x9)	# 1217
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1218
	fsub	f2, f3, f2	# 1218
	fle		f2, f5, fle.34143	# 121
	lw		x9, 24(x8)	# 430
	lw		x10, -4(x2)	# 1220
	beq		x9, x10, beq.34145	# 1220
	fsqrt	f2, f2	# 1221
	fadd	f1, f1, f2	# 1221
	addi	x7, x7, 16	# 1221
	flw		f2, 0(x7)	# 1221
	fmul	f1, f1, f2	# 1221
	fsw		f1, 0(x23)	# 1221
	jal		x0, beq_cont.34144	# 1220
beq.34145:
	fsqrt	f2, f2	# 1223
	fsub	f1, f1, f2	# 1223
	addi	x7, x7, 16	# 1223
	flw		f2, 0(x7)	# 1223
	fmul	f1, f1, f2	# 1223
	fsw		f1, 0(x23)	# 1223
beq_cont.34144:
	addi	x7, x0, 1	# 1224
	jal		x0, beq_cont.34136	# 121
fle.34143:
	addi	x7, x0, 0	# 1225
	jal		x0, beq_cont.34136	# 120
feq.34141:
	addi	x7, x0, 0	# 1214
	jal		x0, beq_cont.34136	# 1240
beq.34139:
	addi	x7, x7, 0	# 1203
	flw		f1, 0(x7)	# 1203
	flw		f2, -8(x2)	# 122
	fle		f2, f1, fle.34147	# 122
	addi	x7, x9, 12	# 1204
	flw		f3, 0(x7)	# 1204
	fmul	f1, f1, f3	# 1204
	fsw		f1, 0(x23)	# 1204
	addi	x7, x0, 1	# 1205
	jal		x0, beq_cont.34136	# 122
fle.34147:
	addi	x7, x0, 0	# 1206
	jal		x0, beq_cont.34136	# 1238
beq.34137:
	addi	x9, x7, 0	# 1121
	flw		f4, 0(x9)	# 1121
	fsub	f4, f4, f1	# 1121
	addi	x9, x7, 4	# 1121
	flw		f5, 0(x9)	# 1121
	fmul	f4, f4, f5	# 1121
	lw		x9, -12(x2)	# 1123
	addi	x10, x9, 4	# 1123
	flw		f6, 0(x10)	# 1123
	fmul	f7, f4, f6	# 1123
	fadd	f7, f7, f2	# 1123
	flw		f8, -8(x2)	# 124
	fle		f7, f8, fle.34149	# 124
	jal		x0, fle_cont.34148	# 124
fle.34149:
	fsub	f7, f0, f7	# 124
fle_cont.34148:
	lw		x10, 16(x8)	# 458
	addi	x12, x10, 4	# 463
	flw		f9, 0(x12)	# 463
	fle		f9, f7, fle.34151	# 125
	addi	x12, x9, 8	# 1124
	flw		f7, 0(x12)	# 1124
	fmul	f7, f4, f7	# 1124
	fadd	f7, f7, f3	# 1124
	fle		f7, f8, fle.34153	# 124
	jal		x0, fle_cont.34152	# 124
fle.34153:
	fsub	f7, f0, f7	# 124
fle_cont.34152:
	addi	x12, x10, 8	# 473
	flw		f10, 0(x12)	# 473
	fle		f10, f7, fle.34155	# 125
	feq		f5, f8, feq.34157	# 120
	addi	x12, x0, 1	# 1125
	jal		x0, fle_cont.34150	# 120
feq.34157:
	addi	x12, x0, 0	# 1125
	jal		x0, fle_cont.34150	# 125
fle.34155:
	addi	x12, x0, 0	# 1126
	jal		x0, fle_cont.34150	# 125
fle.34151:
	addi	x12, x0, 0	# 1127
fle_cont.34150:
	lw		x13, -4(x2)	# 1122
	beq		x12, x13, beq.34159	# 1122
	fsw		f4, 0(x23)	# 1129
	addi	x7, x0, 1	# 1129
	jal		x0, beq_cont.34136	# 1122
beq.34159:
	addi	x12, x7, 8	# 1130
	flw		f4, 0(x12)	# 1130
	fsub	f4, f4, f2	# 1130
	addi	x12, x7, 12	# 1130
	flw		f5, 0(x12)	# 1130
	fmul	f4, f4, f5	# 1130
	addi	x12, x9, 0	# 1132
	flw		f7, 0(x12)	# 1132
	fmul	f10, f4, f7	# 1132
	fadd	f10, f10, f1	# 1132
	fle		f10, f8, fle.34161	# 124
	jal		x0, fle_cont.34160	# 124
fle.34161:
	fsub	f10, f0, f10	# 124
fle_cont.34160:
	addi	x12, x10, 0	# 453
	flw		f11, 0(x12)	# 453
	fle		f11, f10, fle.34163	# 125
	addi	x12, x9, 8	# 1133
	flw		f10, 0(x12)	# 1133
	fmul	f10, f4, f10	# 1133
	fadd	f10, f10, f3	# 1133
	fle		f10, f8, fle.34165	# 124
	jal		x0, fle_cont.34164	# 124
fle.34165:
	fsub	f10, f0, f10	# 124
fle_cont.34164:
	addi	x10, x10, 8	# 473
	flw		f12, 0(x10)	# 473
	fle		f12, f10, fle.34167	# 125
	feq		f5, f8, feq.34169	# 120
	addi	x10, x0, 1	# 1134
	jal		x0, fle_cont.34162	# 120
feq.34169:
	addi	x10, x0, 0	# 1134
	jal		x0, fle_cont.34162	# 125
fle.34167:
	addi	x10, x0, 0	# 1135
	jal		x0, fle_cont.34162	# 125
fle.34163:
	addi	x10, x0, 0	# 1136
fle_cont.34162:
	beq		x10, x13, beq.34171	# 1131
	fsw		f4, 0(x23)	# 1138
	addi	x7, x0, 2	# 1138
	jal		x0, beq_cont.34136	# 1131
beq.34171:
	addi	x10, x7, 16	# 1139
	flw		f4, 0(x10)	# 1139
	fsub	f3, f4, f3	# 1139
	addi	x7, x7, 20	# 1139
	flw		f4, 0(x7)	# 1139
	fmul	f3, f3, f4	# 1139
	fmul	f5, f3, f7	# 1141
	fadd	f1, f5, f1	# 1141
	fle		f1, f8, fle.34173	# 124
	jal		x0, fle_cont.34172	# 124
fle.34173:
	fsub	f1, f0, f1	# 124
fle_cont.34172:
	fle		f11, f1, fle.34175	# 125
	fmul	f1, f3, f6	# 1142
	fadd	f1, f1, f2	# 1142
	fle		f1, f8, fle.34177	# 124
	jal		x0, fle_cont.34176	# 124
fle.34177:
	fsub	f1, f0, f1	# 124
fle_cont.34176:
	fle		f9, f1, fle.34179	# 125
	feq		f4, f8, feq.34181	# 120
	addi	x7, x0, 1	# 1143
	jal		x0, fle_cont.34174	# 120
feq.34181:
	addi	x7, x0, 0	# 1143
	jal		x0, fle_cont.34174	# 125
fle.34179:
	addi	x7, x0, 0	# 1144
	jal		x0, fle_cont.34174	# 125
fle.34175:
	addi	x7, x0, 0	# 1145
fle_cont.34174:
	beq		x7, x13, beq.34183	# 1140
	fsw		f3, 0(x23)	# 1147
	addi	x7, x0, 3	# 1147
	jal		x0, beq_cont.34136	# 1140
beq.34183:
	addi	x7, x0, 0	# 1149
beq_cont.34136:
	lw		x9, -4(x2)	# 1620
	beq		x7, x9, beq.34184	# 1620
	flw		f1, 0(x23)	# 1624
	flw		f2, -8(x2)	# 125
	sw		x4, -52(x2)	# 125
	fle		f1, f2, fle_cont.34185	# 125
	addi	x8, x0, 40548	# 1627
	flw		f2, 0(x8)	# 1627
	fle		f2, f1, fle_cont.34185	# 125
	fadd	f1, f1, f18	# 1629
	lw		x10, -12(x2)	# 1630
	addi	x11, x10, 0	# 1630
	flw		f2, 0(x11)	# 1630
	fmul	f2, f2, f1	# 1630
	addi	x11, x0, 40648	# 1630
	flw		f3, 0(x11)	# 1630
	fadd	f2, f2, f3	# 1630
	addi	x11, x10, 4	# 1631
	flw		f3, 0(x11)	# 1631
	fmul	f3, f3, f1	# 1631
	addi	x11, x0, 40652	# 1631
	flw		f4, 0(x11)	# 1631
	fadd	f3, f3, f4	# 1631
	addi	x10, x10, 8	# 1632
	flw		f4, 0(x10)	# 1632
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
	beq		x4, x5, fle_cont.34185	# 1633
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
fle_cont.34185:
	lw		x4, -52(x2)	# 1644
	addi	x4, x4, 1	# 1644
	lw		x5, -20(x2)	# 1644
	lw		x6, 0(x2)	# 1644
	jal		x0, solve_each_element_fast.2951.18047	# 1644
beq.34184:
	lw		x5, 24(x8)	# 430
	beq		x5, x9, beq.34191	# 1648
	addi	x4, x4, 1	# 1649
	lw		x5, 0(x2)	# 1649
	addi	x31, x6, 0	# 1649
	addi	x6, x5, 0	# 1649
	addi	x5, x31, 0	# 1649
	jal		x0, solve_each_element_fast.2951.18047	# 1649
beq.34191:
	jalr	x0, x1, 0	# 1650
beq.34135:
	jalr	x0, x1, 0	# 1617
beq.34128:
	lw		x8, 24(x11)	# 430
	beq		x8, x0, beq.34194	# 1648
	addi	x4, x4, 1	# 1649
	mul		x8, x30, x4	# 1616
	add		x8, x5, x8	# 1616
	lw		x8, 0(x8)	# 1616
	beq		x8, x20, beq.34195	# 1617
	mul		x9, x30, x8	# 1230
	addi	x10, x9, 40048	# 1230
	lw		x10, 0(x10)	# 1230
	lw		x11, 40(x10)	# 605
	addi	x12, x11, 0	# 1232
	flw		f1, 0(x12)	# 1232
	addi	x12, x11, 4	# 1233
	flw		f2, 0(x12)	# 1233
	addi	x12, x11, 8	# 1234
	flw		f3, 0(x12)	# 1234
	add		x9, x16, x9	# 1236
	lw		x9, 0(x9)	# 1236
	lw		x12, 4(x10)	# 410
	beq		x12, x21, beq.34197	# 1238
	beq		x12, x22, beq.34199	# 1240
	addi	x12, x9, 0	# 1212
	flw		f4, 0(x12)	# 1212
	feq		f4, f0, feq.34201	# 120
	addi	x12, x9, 4	# 1216
	flw		f6, 0(x12)	# 1216
	fmul	f1, f6, f1	# 1216
	addi	x12, x9, 8	# 1216
	flw		f6, 0(x12)	# 1216
	fmul	f2, f6, f2	# 1216
	fadd	f1, f1, f2	# 1216
	addi	x12, x9, 12	# 1216
	flw		f2, 0(x12)	# 1216
	fmul	f2, f2, f3	# 1216
	fadd	f1, f1, f2	# 1216
	addi	x11, x11, 12	# 1217
	flw		f2, 0(x11)	# 1217
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1218
	fsub	f2, f3, f2	# 1218
	fle		f2, f0, fle.34203	# 121
	lw		x11, 24(x10)	# 430
	beq		x11, x0, beq.34205	# 1220
	fsqrt	f2, f2	# 1221
	fadd	f1, f1, f2	# 1221
	addi	x9, x9, 16	# 1221
	flw		f2, 0(x9)	# 1221
	fmul	f1, f1, f2	# 1221
	fsw		f1, 0(x23)	# 1221
	jal		x0, beq_cont.34204	# 1220
beq.34205:
	fsqrt	f2, f2	# 1223
	fsub	f1, f1, f2	# 1223
	addi	x9, x9, 16	# 1223
	flw		f2, 0(x9)	# 1223
	fmul	f1, f1, f2	# 1223
	fsw		f1, 0(x23)	# 1223
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
	addi	x9, x9, 0	# 1203
	flw		f1, 0(x9)	# 1203
	fle		f0, f1, fle.34207	# 122
	addi	x9, x11, 12	# 1204
	flw		f2, 0(x9)	# 1204
	fmul	f1, f1, f2	# 1204
	fsw		f1, 0(x23)	# 1204
	addi	x9, x0, 1	# 1205
	jal		x0, beq_cont.34196	# 122
fle.34207:
	addi	x9, x0, 0	# 1206
	jal		x0, beq_cont.34196	# 1238
beq.34197:
	addi	x11, x9, 0	# 1121
	flw		f4, 0(x11)	# 1121
	fsub	f4, f4, f1	# 1121
	addi	x11, x9, 4	# 1121
	flw		f5, 0(x11)	# 1121
	fmul	f4, f4, f5	# 1121
	addi	x11, x7, 4	# 1123
	flw		f6, 0(x11)	# 1123
	fmul	f7, f4, f6	# 1123
	fadd	f7, f7, f2	# 1123
	fle		f7, f0, fle.34209	# 124
	jal		x0, fle_cont.34208	# 124
fle.34209:
	fsub	f7, f0, f7	# 124
fle_cont.34208:
	lw		x11, 16(x10)	# 458
	addi	x12, x11, 4	# 463
	flw		f9, 0(x12)	# 463
	fle		f9, f7, fle.34211	# 125
	addi	x12, x7, 8	# 1124
	flw		f7, 0(x12)	# 1124
	fmul	f7, f4, f7	# 1124
	fadd	f7, f7, f3	# 1124
	fle		f7, f0, fle.34213	# 124
	jal		x0, fle_cont.34212	# 124
fle.34213:
	fsub	f7, f0, f7	# 124
fle_cont.34212:
	addi	x12, x11, 8	# 473
	flw		f10, 0(x12)	# 473
	fle		f10, f7, fle.34215	# 125
	feq		f5, f0, feq.34217	# 120
	addi	x12, x0, 1	# 1125
	jal		x0, fle_cont.34210	# 120
feq.34217:
	addi	x12, x0, 0	# 1125
	jal		x0, fle_cont.34210	# 125
fle.34215:
	addi	x12, x0, 0	# 1126
	jal		x0, fle_cont.34210	# 125
fle.34211:
	addi	x12, x0, 0	# 1127
fle_cont.34210:
	beq		x12, x0, beq.34219	# 1122
	fsw		f4, 0(x23)	# 1129
	addi	x9, x0, 1	# 1129
	jal		x0, beq_cont.34196	# 1122
beq.34219:
	addi	x12, x9, 8	# 1130
	flw		f4, 0(x12)	# 1130
	fsub	f4, f4, f2	# 1130
	addi	x12, x9, 12	# 1130
	flw		f5, 0(x12)	# 1130
	fmul	f4, f4, f5	# 1130
	addi	x12, x7, 0	# 1132
	flw		f7, 0(x12)	# 1132
	fmul	f10, f4, f7	# 1132
	fadd	f10, f10, f1	# 1132
	fle		f10, f0, fle.34221	# 124
	jal		x0, fle_cont.34220	# 124
fle.34221:
	fsub	f10, f0, f10	# 124
fle_cont.34220:
	addi	x12, x11, 0	# 453
	flw		f11, 0(x12)	# 453
	fle		f11, f10, fle.34223	# 125
	addi	x12, x7, 8	# 1133
	flw		f10, 0(x12)	# 1133
	fmul	f10, f4, f10	# 1133
	fadd	f10, f10, f3	# 1133
	fle		f10, f0, fle.34225	# 124
	jal		x0, fle_cont.34224	# 124
fle.34225:
	fsub	f10, f0, f10	# 124
fle_cont.34224:
	addi	x11, x11, 8	# 473
	flw		f12, 0(x11)	# 473
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
	fsw		f4, 0(x23)	# 1138
	addi	x9, x0, 2	# 1138
	jal		x0, beq_cont.34196	# 1131
beq.34231:
	addi	x11, x9, 16	# 1139
	flw		f4, 0(x11)	# 1139
	fsub	f3, f4, f3	# 1139
	addi	x9, x9, 20	# 1139
	flw		f4, 0(x9)	# 1139
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
	fsw		f3, 0(x23)	# 1147
	addi	x9, x0, 3	# 1147
	jal		x0, beq_cont.34196	# 1140
beq.34243:
	addi	x9, x0, 0	# 1149
beq_cont.34196:
	beq		x9, x0, beq.34244	# 1620
	flw		f1, 0(x23)	# 1624
	sw		x6, 0(x2)	# 125
	sw		x5, -20(x2)	# 125
	sw		x4, -84(x2)	# 125
	fle		f1, f0, fle_cont.34245	# 125
	addi	x10, x0, 40548	# 1627
	flw		f2, 0(x10)	# 1627
	fle		f2, f1, fle_cont.34245	# 125
	fadd	f1, f1, f18	# 1629
	addi	x11, x7, 0	# 1630
	flw		f2, 0(x11)	# 1630
	fmul	f2, f2, f1	# 1630
	addi	x11, x0, 40648	# 1630
	flw		f3, 0(x11)	# 1630
	fadd	f2, f2, f3	# 1630
	addi	x11, x7, 4	# 1631
	flw		f3, 0(x11)	# 1631
	fmul	f3, f3, f1	# 1631
	addi	x11, x0, 40652	# 1631
	flw		f4, 0(x11)	# 1631
	fadd	f3, f3, f4	# 1631
	addi	x7, x7, 8	# 1632
	flw		f4, 0(x7)	# 1632
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
	beq		x4, x5, fle_cont.34245	# 1633
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
fle_cont.34245:
	lw		x4, -84(x2)	# 1644
	addi	x4, x4, 1	# 1644
	lw		x5, -20(x2)	# 1644
	lw		x6, 0(x2)	# 1644
	jal		x0, solve_each_element_fast.2951.18047	# 1644
beq.34244:
	lw		x7, 24(x10)	# 430
	beq		x7, x0, beq.34251	# 1648
	addi	x4, x4, 1	# 1649
	jal		x0, solve_each_element_fast.2951.18047	# 1649
beq.34251:
	jalr	x0, x1, 0	# 1650
beq.34195:
	jalr	x0, x1, 0	# 1617
beq.34194:
	jalr	x0, x1, 0	# 1650
beq.34079:
	jalr	x0, x1, 0	# 1617
solve_one_or_network_fast.2955.18051:
	mul		x7, x30, x4	# 1656
	add		x7, x5, x7	# 1656
	lw		x7, 0(x7)	# 1656
	beq		x7, x20, beq.34256	# 1657
	mul		x7, x30, x7	# 1658
	addi	x7, x7, 40332	# 1658
	lw		x7, 0(x7)	# 1658
	lw		x9, 0(x6)	# 696
	add		x10, x0, x0	# 6
	addi	x11, x7, 0	# 1616
	lw		x11, 0(x11)	# 1616
	sw		x6, 0(x2)	# 1617
	sw		x0, -4(x2)	# 1617
	sw		x20, -8(x2)	# 1617
	sw		x5, -12(x2)	# 1617
	sw		x4, -16(x2)	# 1617
	beq		x11, x20, beq_cont.34257	# 1617
	mul		x12, x30, x11	# 1230
	addi	x13, x12, 40048	# 1230
	lw		x13, 0(x13)	# 1230
	lw		x14, 40(x13)	# 605
	addi	x15, x14, 0	# 1232
	flw		f1, 0(x15)	# 1232
	add		x15, x0, x21	# 6
	addi	x16, x14, 4	# 1233
	flw		f2, 0(x16)	# 1233
	addi	x17, x14, 8	# 1234
	flw		f3, 0(x17)	# 1234
	lw		x17, 4(x6)	# 702
	add		x12, x17, x12	# 1236
	lw		x12, 0(x12)	# 1236
	lw		x17, 4(x13)	# 410
	beq		x17, x21, beq.34260	# 1238
	beq		x17, x22, beq.34262	# 1240
	addi	x16, x12, 0	# 1212
	flw		f4, 0(x16)	# 1212
	feq		f4, f0, feq.34264	# 120
	addi	x16, x12, 4	# 1216
	flw		f6, 0(x16)	# 1216
	fmul	f1, f6, f1	# 1216
	addi	x16, x12, 8	# 1216
	flw		f6, 0(x16)	# 1216
	fmul	f2, f6, f2	# 1216
	fadd	f1, f1, f2	# 1216
	addi	x16, x12, 12	# 1216
	flw		f2, 0(x16)	# 1216
	fmul	f2, f2, f3	# 1216
	fadd	f1, f1, f2	# 1216
	addi	x14, x14, 12	# 1217
	flw		f2, 0(x14)	# 1217
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1218
	fsub	f2, f3, f2	# 1218
	fle		f2, f0, fle.34266	# 121
	lw		x14, 24(x13)	# 430
	beq		x14, x0, beq.34268	# 1220
	fsqrt	f2, f2	# 1221
	fadd	f1, f1, f2	# 1221
	addi	x12, x12, 16	# 1221
	flw		f2, 0(x12)	# 1221
	fmul	f1, f1, f2	# 1221
	fsw		f1, 0(x23)	# 1221
	jal		x0, beq_cont.34267	# 1220
beq.34268:
	fsqrt	f2, f2	# 1223
	fsub	f1, f1, f2	# 1223
	addi	x12, x12, 16	# 1223
	flw		f2, 0(x12)	# 1223
	fmul	f1, f1, f2	# 1223
	fsw		f1, 0(x23)	# 1223
beq_cont.34267:
	addi	x12, x0, 1	# 1224
	jal		x0, beq_cont.34259	# 121
fle.34266:
	addi	x12, x0, 0	# 1225
	jal		x0, beq_cont.34259	# 120
feq.34264:
	addi	x12, x0, 0	# 1214
	jal		x0, beq_cont.34259	# 1240
beq.34262:
	addi	x12, x12, 0	# 1203
	flw		f1, 0(x12)	# 1203
	fle		f0, f1, fle.34270	# 122
	addi	x12, x14, 12	# 1204
	flw		f2, 0(x12)	# 1204
	fmul	f1, f1, f2	# 1204
	fsw		f1, 0(x23)	# 1204
	addi	x12, x0, 1	# 1205
	jal		x0, beq_cont.34259	# 122
fle.34270:
	addi	x12, x0, 0	# 1206
	jal		x0, beq_cont.34259	# 1238
beq.34260:
	addi	x14, x12, 0	# 1121
	flw		f4, 0(x14)	# 1121
	fsub	f4, f4, f1	# 1121
	addi	x14, x12, 4	# 1121
	flw		f5, 0(x14)	# 1121
	fmul	f4, f4, f5	# 1121
	addi	x14, x9, 4	# 1123
	flw		f6, 0(x14)	# 1123
	fmul	f7, f4, f6	# 1123
	fadd	f7, f7, f2	# 1123
	fle		f7, f0, fle.34272	# 124
	jal		x0, fle_cont.34271	# 124
fle.34272:
	fsub	f7, f0, f7	# 124
fle_cont.34271:
	lw		x14, 16(x13)	# 458
	addi	x16, x14, 4	# 463
	flw		f9, 0(x16)	# 463
	fle		f9, f7, fle.34274	# 125
	addi	x16, x9, 8	# 1124
	flw		f7, 0(x16)	# 1124
	fmul	f7, f4, f7	# 1124
	fadd	f7, f7, f3	# 1124
	fle		f7, f0, fle.34276	# 124
	jal		x0, fle_cont.34275	# 124
fle.34276:
	fsub	f7, f0, f7	# 124
fle_cont.34275:
	addi	x16, x14, 8	# 473
	flw		f10, 0(x16)	# 473
	fle		f10, f7, fle.34278	# 125
	feq		f5, f0, feq.34280	# 120
	addi	x16, x0, 1	# 1125
	jal		x0, fle_cont.34273	# 120
feq.34280:
	addi	x16, x0, 0	# 1125
	jal		x0, fle_cont.34273	# 125
fle.34278:
	addi	x16, x0, 0	# 1126
	jal		x0, fle_cont.34273	# 125
fle.34274:
	addi	x16, x0, 0	# 1127
fle_cont.34273:
	beq		x16, x0, beq.34282	# 1122
	fsw		f4, 0(x23)	# 1129
	addi	x12, x0, 1	# 1129
	jal		x0, beq_cont.34259	# 1122
beq.34282:
	addi	x16, x12, 8	# 1130
	flw		f4, 0(x16)	# 1130
	fsub	f4, f4, f2	# 1130
	addi	x16, x12, 12	# 1130
	flw		f5, 0(x16)	# 1130
	fmul	f4, f4, f5	# 1130
	addi	x16, x9, 0	# 1132
	flw		f7, 0(x16)	# 1132
	fmul	f10, f4, f7	# 1132
	fadd	f10, f10, f1	# 1132
	fle		f10, f0, fle.34284	# 124
	jal		x0, fle_cont.34283	# 124
fle.34284:
	fsub	f10, f0, f10	# 124
fle_cont.34283:
	addi	x16, x14, 0	# 453
	flw		f11, 0(x16)	# 453
	fle		f11, f10, fle.34286	# 125
	addi	x16, x9, 8	# 1133
	flw		f10, 0(x16)	# 1133
	fmul	f10, f4, f10	# 1133
	fadd	f10, f10, f3	# 1133
	fle		f10, f0, fle.34288	# 124
	jal		x0, fle_cont.34287	# 124
fle.34288:
	fsub	f10, f0, f10	# 124
fle_cont.34287:
	addi	x14, x14, 8	# 473
	flw		f12, 0(x14)	# 473
	fle		f12, f10, fle.34290	# 125
	feq		f5, f0, feq.34292	# 120
	addi	x14, x0, 1	# 1134
	jal		x0, fle_cont.34285	# 120
feq.34292:
	addi	x14, x0, 0	# 1134
	jal		x0, fle_cont.34285	# 125
fle.34290:
	addi	x14, x0, 0	# 1135
	jal		x0, fle_cont.34285	# 125
fle.34286:
	addi	x14, x0, 0	# 1136
fle_cont.34285:
	beq		x14, x0, beq.34294	# 1131
	fsw		f4, 0(x23)	# 1138
	addi	x12, x0, 2	# 1138
	jal		x0, beq_cont.34259	# 1131
beq.34294:
	addi	x14, x12, 16	# 1139
	flw		f4, 0(x14)	# 1139
	fsub	f3, f4, f3	# 1139
	addi	x12, x12, 20	# 1139
	flw		f4, 0(x12)	# 1139
	fmul	f3, f3, f4	# 1139
	fmul	f5, f3, f7	# 1141
	fadd	f1, f5, f1	# 1141
	fle		f1, f0, fle.34296	# 124
	jal		x0, fle_cont.34295	# 124
fle.34296:
	fsub	f1, f0, f1	# 124
fle_cont.34295:
	fle		f11, f1, fle.34298	# 125
	fmul	f1, f3, f6	# 1142
	fadd	f1, f1, f2	# 1142
	fle		f1, f0, fle.34300	# 124
	jal		x0, fle_cont.34299	# 124
fle.34300:
	fsub	f1, f0, f1	# 124
fle_cont.34299:
	fle		f9, f1, fle.34302	# 125
	feq		f4, f0, feq.34304	# 120
	addi	x12, x0, 1	# 1143
	jal		x0, fle_cont.34297	# 120
feq.34304:
	addi	x12, x0, 0	# 1143
	jal		x0, fle_cont.34297	# 125
fle.34302:
	addi	x12, x0, 0	# 1144
	jal		x0, fle_cont.34297	# 125
fle.34298:
	addi	x12, x0, 0	# 1145
fle_cont.34297:
	beq		x12, x0, beq.34306	# 1140
	fsw		f3, 0(x23)	# 1147
	addi	x12, x0, 3	# 1147
	jal		x0, beq_cont.34259	# 1140
beq.34306:
	addi	x12, x0, 0	# 1149
beq_cont.34259:
	beq		x12, x0, beq.34308	# 1620
	flw		f1, 0(x23)	# 1624
	sw		x7, -20(x2)	# 125
	fle		f1, f0, fle_cont.34309	# 125
	addi	x13, x0, 40548	# 1627
	flw		f2, 0(x13)	# 1627
	fle		f2, f1, fle_cont.34309	# 125
	fadd	f1, f1, f18	# 1629
	addi	x14, x9, 0	# 1630
	flw		f2, 0(x14)	# 1630
	fmul	f2, f2, f1	# 1630
	addi	x14, x0, 40648	# 1630
	flw		f3, 0(x14)	# 1630
	fadd	f2, f2, f3	# 1630
	addi	x14, x9, 4	# 1631
	flw		f3, 0(x14)	# 1631
	fmul	f3, f3, f1	# 1631
	addi	x14, x0, 40652	# 1631
	flw		f4, 0(x14)	# 1631
	fadd	f3, f3, f4	# 1631
	addi	x9, x9, 8	# 1632
	flw		f4, 0(x9)	# 1632
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
	beq		x4, x5, fle_cont.34309	# 1633
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
fle_cont.34309:
	lw		x5, -20(x2)	# 1644
	lw		x6, 0(x2)	# 1644
	addi	x4, x21, 0	# 1644
	sw		x1, -40(x2)	# 1644
	addi	x2, x2, -44	# 1644
	jal		x1, solve_each_element_fast.2951.18047	# 1644
	addi	x2, x2, 44	# 1644
	lw		x1, -40(x2)	# 1644
	jal		x0, beq_cont.34257	# 1620
beq.34308:
	lw		x9, 24(x13)	# 430
	beq		x9, x0, beq_cont.34257	# 1648
	addi	x5, x7, 0	# 1649
	addi	x4, x21, 0	# 1649
	sw		x1, -40(x2)	# 1649
	addi	x2, x2, -44	# 1649
	jal		x1, solve_each_element_fast.2951.18047	# 1649
	addi	x2, x2, 44	# 1649
	lw		x1, -40(x2)	# 1649
beq_cont.34257:
	lw		x4, -16(x2)	# 1660
	addi	x4, x4, 1	# 1660
	mul		x5, x30, x4	# 1656
	lw		x6, -12(x2)	# 1656
	add		x5, x6, x5	# 1656
	lw		x5, 0(x5)	# 1656
	lw		x7, -8(x2)	# 1657
	beq		x5, x7, beq.34317	# 1657
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
beq.34317:
	jalr	x0, x1, 0	# 1661
beq.34256:
	jalr	x0, x1, 0	# 1661
trace_or_matrix_fast.2959.18055:
	mul		x7, x30, x4	# 1666
	add		x7, x5, x7	# 1666
	lw		x7, 0(x7)	# 1666
	add		x8, x0, x0	# 6
	addi	x9, x7, 0	# 1667
	lw		x9, 0(x9)	# 1667
	beq		x9, x20, beq.34320	# 1668
	sw		x6, 0(x2)	# 1671
	sw		x5, -4(x2)	# 1671
	sw		x4, -8(x2)	# 1671
	beq		x9, x28, beq.34322	# 1671
	mul		x9, x30, x9	# 1230
	addi	x11, x9, 40048	# 1230
	lw		x11, 0(x11)	# 1230
	lw		x12, 40(x11)	# 605
	addi	x13, x12, 0	# 1232
	flw		f1, 0(x13)	# 1232
	addi	x14, x12, 4	# 1233
	flw		f2, 0(x14)	# 1233
	add		x14, x0, x22	# 65
	addi	x15, x12, 8	# 1234
	flw		f3, 0(x15)	# 1234
	lw		x15, 4(x6)	# 702
	add		x9, x15, x9	# 1236
	lw		x9, 0(x9)	# 1236
	lw		x15, 4(x11)	# 410
	beq		x15, x21, beq.34324	# 1238
	beq		x15, x22, beq.34326	# 1240
	addi	x13, x9, 0	# 1212
	flw		f4, 0(x13)	# 1212
	feq		f4, f0, feq.34328	# 120
	addi	x13, x9, 4	# 1216
	flw		f6, 0(x13)	# 1216
	fmul	f1, f6, f1	# 1216
	addi	x13, x9, 8	# 1216
	flw		f6, 0(x13)	# 1216
	fmul	f2, f6, f2	# 1216
	fadd	f1, f1, f2	# 1216
	addi	x13, x9, 12	# 1216
	flw		f2, 0(x13)	# 1216
	fmul	f2, f2, f3	# 1216
	fadd	f1, f1, f2	# 1216
	addi	x12, x12, 12	# 1217
	flw		f2, 0(x12)	# 1217
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1218
	fsub	f2, f3, f2	# 1218
	fle		f2, f0, fle.34330	# 121
	lw		x11, 24(x11)	# 430
	beq		x11, x0, beq.34332	# 1220
	fsqrt	f2, f2	# 1221
	fadd	f1, f1, f2	# 1221
	addi	x9, x9, 16	# 1221
	flw		f2, 0(x9)	# 1221
	fmul	f1, f1, f2	# 1221
	fsw		f1, 0(x23)	# 1221
	jal		x0, beq_cont.34331	# 1220
beq.34332:
	fsqrt	f2, f2	# 1223
	fsub	f1, f1, f2	# 1223
	addi	x9, x9, 16	# 1223
	flw		f2, 0(x9)	# 1223
	fmul	f1, f1, f2	# 1223
	fsw		f1, 0(x23)	# 1223
beq_cont.34331:
	addi	x9, x0, 1	# 1224
	jal		x0, beq_cont.34323	# 121
fle.34330:
	addi	x9, x0, 0	# 1225
	jal		x0, beq_cont.34323	# 120
feq.34328:
	addi	x9, x0, 0	# 1214
	jal		x0, beq_cont.34323	# 1240
beq.34326:
	addi	x9, x9, 0	# 1203
	flw		f1, 0(x9)	# 1203
	fle		f0, f1, fle.34334	# 122
	addi	x9, x12, 12	# 1204
	flw		f2, 0(x9)	# 1204
	fmul	f1, f1, f2	# 1204
	fsw		f1, 0(x23)	# 1204
	addi	x9, x0, 1	# 1205
	jal		x0, beq_cont.34323	# 122
fle.34334:
	addi	x9, x0, 0	# 1206
	jal		x0, beq_cont.34323	# 1238
beq.34324:
	lw		x12, 0(x6)	# 696
	addi	x13, x9, 0	# 1121
	flw		f4, 0(x13)	# 1121
	fsub	f4, f4, f1	# 1121
	addi	x13, x9, 4	# 1121
	flw		f5, 0(x13)	# 1121
	fmul	f4, f4, f5	# 1121
	addi	x13, x12, 4	# 1123
	flw		f6, 0(x13)	# 1123
	fmul	f7, f4, f6	# 1123
	fadd	f7, f7, f2	# 1123
	fle		f7, f0, fle.34336	# 124
	jal		x0, fle_cont.34335	# 124
fle.34336:
	fsub	f7, f0, f7	# 124
fle_cont.34335:
	lw		x11, 16(x11)	# 458
	addi	x13, x11, 4	# 463
	flw		f9, 0(x13)	# 463
	fle		f9, f7, fle.34338	# 125
	addi	x13, x12, 8	# 1124
	flw		f7, 0(x13)	# 1124
	fmul	f7, f4, f7	# 1124
	fadd	f7, f7, f3	# 1124
	fle		f7, f0, fle.34340	# 124
	jal		x0, fle_cont.34339	# 124
fle.34340:
	fsub	f7, f0, f7	# 124
fle_cont.34339:
	addi	x13, x11, 8	# 473
	flw		f10, 0(x13)	# 473
	fle		f10, f7, fle.34342	# 125
	feq		f5, f0, feq.34344	# 120
	addi	x13, x0, 1	# 1125
	jal		x0, fle_cont.34337	# 120
feq.34344:
	addi	x13, x0, 0	# 1125
	jal		x0, fle_cont.34337	# 125
fle.34342:
	addi	x13, x0, 0	# 1126
	jal		x0, fle_cont.34337	# 125
fle.34338:
	addi	x13, x0, 0	# 1127
fle_cont.34337:
	beq		x13, x0, beq.34346	# 1122
	fsw		f4, 0(x23)	# 1129
	addi	x9, x0, 1	# 1129
	jal		x0, beq_cont.34323	# 1122
beq.34346:
	addi	x13, x9, 8	# 1130
	flw		f4, 0(x13)	# 1130
	fsub	f4, f4, f2	# 1130
	addi	x13, x9, 12	# 1130
	flw		f5, 0(x13)	# 1130
	fmul	f4, f4, f5	# 1130
	addi	x13, x12, 0	# 1132
	flw		f7, 0(x13)	# 1132
	fmul	f10, f4, f7	# 1132
	fadd	f10, f10, f1	# 1132
	fle		f10, f0, fle.34348	# 124
	jal		x0, fle_cont.34347	# 124
fle.34348:
	fsub	f10, f0, f10	# 124
fle_cont.34347:
	addi	x13, x11, 0	# 453
	flw		f11, 0(x13)	# 453
	fle		f11, f10, fle.34350	# 125
	addi	x12, x12, 8	# 1133
	flw		f10, 0(x12)	# 1133
	fmul	f10, f4, f10	# 1133
	fadd	f10, f10, f3	# 1133
	fle		f10, f0, fle.34352	# 124
	jal		x0, fle_cont.34351	# 124
fle.34352:
	fsub	f10, f0, f10	# 124
fle_cont.34351:
	addi	x11, x11, 8	# 473
	flw		f12, 0(x11)	# 473
	fle		f12, f10, fle.34354	# 125
	feq		f5, f0, feq.34356	# 120
	addi	x11, x0, 1	# 1134
	jal		x0, fle_cont.34349	# 120
feq.34356:
	addi	x11, x0, 0	# 1134
	jal		x0, fle_cont.34349	# 125
fle.34354:
	addi	x11, x0, 0	# 1135
	jal		x0, fle_cont.34349	# 125
fle.34350:
	addi	x11, x0, 0	# 1136
fle_cont.34349:
	beq		x11, x0, beq.34358	# 1131
	fsw		f4, 0(x23)	# 1138
	addi	x9, x0, 2	# 1138
	jal		x0, beq_cont.34323	# 1131
beq.34358:
	addi	x11, x9, 16	# 1139
	flw		f4, 0(x11)	# 1139
	fsub	f3, f4, f3	# 1139
	addi	x9, x9, 20	# 1139
	flw		f4, 0(x9)	# 1139
	fmul	f3, f3, f4	# 1139
	fmul	f5, f3, f7	# 1141
	fadd	f1, f5, f1	# 1141
	fle		f1, f0, fle.34360	# 124
	jal		x0, fle_cont.34359	# 124
fle.34360:
	fsub	f1, f0, f1	# 124
fle_cont.34359:
	fle		f11, f1, fle.34362	# 125
	fmul	f1, f3, f6	# 1142
	fadd	f1, f1, f2	# 1142
	fle		f1, f0, fle.34364	# 124
	jal		x0, fle_cont.34363	# 124
fle.34364:
	fsub	f1, f0, f1	# 124
fle_cont.34363:
	fle		f9, f1, fle.34366	# 125
	feq		f4, f0, feq.34368	# 120
	addi	x9, x0, 1	# 1143
	jal		x0, fle_cont.34361	# 120
feq.34368:
	addi	x9, x0, 0	# 1143
	jal		x0, fle_cont.34361	# 125
fle.34366:
	addi	x9, x0, 0	# 1144
	jal		x0, fle_cont.34361	# 125
fle.34362:
	addi	x9, x0, 0	# 1145
fle_cont.34361:
	beq		x9, x0, beq.34370	# 1140
	fsw		f3, 0(x23)	# 1147
	addi	x9, x0, 3	# 1147
	jal		x0, beq_cont.34323	# 1140
beq.34370:
	addi	x9, x0, 0	# 1149
beq_cont.34323:
	beq		x9, x0, beq_cont.34321	# 1677
	flw		f1, 0(x23)	# 1678
	addi	x9, x0, 40548	# 1679
	flw		f2, 0(x9)	# 1679
	fle		f2, f1, beq_cont.34321	# 125
	addi	x9, x7, 4	# 1656
	lw		x9, 0(x9)	# 1656
	beq		x9, x20, beq_cont.34321	# 1657
	mul		x9, x30, x9	# 1658
	addi	x9, x9, 40332	# 1658
	lw		x9, 0(x9)	# 1658
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
	jal		x0, beq_cont.34321	# 1657
beq.34322:
	addi	x9, x7, 4	# 1656
	lw		x9, 0(x9)	# 1656
	beq		x9, x20, beq_cont.34321	# 1657
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
	add		x4, x0, x22	# 65
	lw		x5, -12(x2)	# 1660
	lw		x6, 0(x2)	# 1660
	sw		x1, -20(x2)	# 1660
	addi	x2, x2, -24	# 1660
	jal		x1, solve_one_or_network_fast.2955.18051	# 1660
	addi	x2, x2, 24	# 1660
	lw		x1, -20(x2)	# 1660
beq_cont.34321:
	lw		x4, -8(x2)	# 1684
	addi	x4, x4, 1	# 1684
	lw		x5, -4(x2)	# 1684
	lw		x6, 0(x2)	# 1684
	jal		x0, trace_or_matrix_fast.2959.18055	# 1684
beq.34320:
	jalr	x0, x1, 0	# 1669
trace_reflections.2981.18059:
	add		x6, x0, x0	# 6
	ble		x0, x4, ble.34380	# 1861
	jalr	x0, x1, 0	# 1881
ble.34380:
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
	fle		f1, f20, fle.34383	# 125
	fle		f22, f1, fle.34385	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.34382	# 125
fle.34385:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.34382	# 125
fle.34383:
	addi	x4, x0, 0	# 1697
fle_cont.34382:
	lw		x5, -28(x2)	# 1866
	beq		x4, x5, beq_cont.34386	# 1866
	addi	x4, x0, 40564	# 1867
	lw		x4, 0(x4)	# 1867
	mul		x4, x4, x30	# 1867
	addi	x6, x0, 40544	# 1867
	lw		x6, 0(x6)	# 1867
	add		x4, x4, x6	# 1867
	lw		x6, -24(x2)	# 712
	lw		x7, 0(x6)	# 712
	beq		x4, x7, beq.34389	# 1868
	jal		x0, beq_cont.34386	# 1868
beq.34389:
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
	beq		x4, x5, beq.34391	# 1870
	jal		x0, beq_cont.34386	# 1870
beq.34391:
	lw		x4, -16(x2)	# 696
	lw		x4, 0(x4)	# 696
	addi	x5, x0, 40568	# 349
	flw		f1, 0(x5)	# 349
	addi	x5, x4, 0	# 349
	flw		f2, 0(x5)	# 349
	fmul	f1, f1, f2	# 349
	addi	x5, x0, 40572	# 349
	flw		f3, 0(x5)	# 349
	addi	x5, x4, 4	# 349
	flw		f4, 0(x5)	# 349
	fmul	f3, f3, f4	# 349
	fadd	f1, f1, f3	# 349
	addi	x5, x0, 40576	# 349
	flw		f3, 0(x5)	# 349
	addi	x4, x4, 8	# 349
	flw		f5, 0(x4)	# 349
	fmul	f3, f3, f5	# 349
	fadd	f1, f1, f3	# 349
	lw		x4, -24(x2)	# 1874
	flw		f3, 8(x4)	# 1874
	flw		f6, -12(x2)	# 1874
	fmul	f7, f3, f6	# 1874
	fmul	f1, f7, f1	# 1874
	lw		x5, -8(x2)	# 349
	addi	x4, x5, 0	# 349
	flw		f7, 0(x4)	# 349
	fmul	f2, f7, f2	# 349
	addi	x4, x5, 4	# 349
	flw		f7, 0(x4)	# 349
	fmul	f4, f7, f4	# 349
	fadd	f2, f2, f4	# 349
	addi	x4, x5, 8	# 349
	flw		f4, 0(x4)	# 349
	fmul	f4, f4, f5	# 349
	fadd	f2, f2, f4	# 349
	fmul	f2, f3, f2	# 1875
	fle		f1, f0, fle_cont.34392	# 121
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
fle_cont.34392:
	fle		f2, f0, beq_cont.34386	# 121
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
beq_cont.34386:
	lw		x4, 0(x2)	# 1880
	addi	x4, x4, -1	# 1880
	lw		x5, -8(x2)	# 1880
	flw		f1, -12(x2)	# 1880
	flw		f2, -4(x2)	# 1880
	jal		x0, trace_reflections.2981.18059	# 1880
trace_ray.2986.18064:
	ble		x4, x30, ble.34396	# 1889
	jalr	x0, x1, 0	# 1970
ble.34396:
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
	fle		f1, f20, fle.34399	# 125
	fle		f22, f1, fle.34401	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.34398	# 125
fle.34401:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.34398	# 125
fle.34399:
	addi	x4, x0, 0	# 1606
fle_cont.34398:
	lw		x5, -32(x2)	# 1891
	beq		x4, x5, beq.34402	# 1891
	addi	x4, x0, 40564	# 1893
	lw		x4, 0(x4)	# 1893
	mul		x6, x30, x4	# 1894
	addi	x6, x6, 40048	# 1894
	lw		x6, 0(x6)	# 1894
	lw		x7, 8(x6)	# 420
	lw		x8, 28(x6)	# 518
	addi	x9, x8, 0	# 523
	flw		f2, 0(x9)	# 523
	flw		f3, -16(x2)	# 1896
	fmul	f4, f2, f3	# 1896
	lw		x9, 4(x6)	# 410
	beq		x9, x21, beq.34404	# 1750
	beq		x9, x22, beq.34406	# 1752
	flw		f5, 0(x25)	# 1727
	lw		x9, 20(x6)	# 488
	addi	x11, x9, 0	# 493
	flw		f6, 0(x11)	# 493
	fsub	f5, f5, f6	# 1727
	flw		f6, 0(x27)	# 1728
	addi	x11, x9, 4	# 503
	flw		f7, 0(x11)	# 503
	fsub	f6, f6, f7	# 1728
	flw		f7, 0(x26)	# 1729
	addi	x9, x9, 8	# 513
	flw		f8, 0(x9)	# 513
	fsub	f7, f7, f8	# 1729
	lw		x9, 16(x6)	# 448
	addi	x11, x9, 0	# 453
	flw		f8, 0(x11)	# 453
	fmul	f8, f5, f8	# 1731
	addi	x11, x9, 4	# 463
	flw		f9, 0(x11)	# 463
	fmul	f9, f6, f9	# 1732
	addi	x9, x9, 8	# 473
	flw		f10, 0(x9)	# 473
	fmul	f10, f7, f10	# 1733
	lw		x9, 12(x6)	# 439
	beq		x9, x5, beq.34408	# 1735
	lw		x9, 36(x6)	# 588
	addi	x11, x9, 8	# 593
	flw		f11, 0(x11)	# 593
	fmul	f12, f6, f11	# 1740
	addi	x11, x9, 4	# 583
	flw		f13, 0(x11)	# 583
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
	addi	x9, x9, 0	# 573
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
	jal		x0, beq_cont.34407	# 1735
beq.34408:
	addi	x9, x0, 40568	# 1736
	fsw		f8, 0(x9)	# 1736
	addi	x9, x0, 40572	# 1737
	fsw		f9, 0(x9)	# 1737
	addi	x9, x0, 40576	# 1738
	fsw		f10, 0(x9)	# 1738
beq_cont.34407:
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
	feq		f6, f0, feq.34410	# 120
	beq		x9, x5, beq.34412	# 341
	fdiv	f6, f25, f6	# 341
	jal		x0, feq_cont.34409	# 341
beq.34412:
	fdiv	f6, f30, f6	# 341
	jal		x0, feq_cont.34409	# 120
feq.34410:
	fadd	f6, f0, f30	# 341
feq_cont.34409:
	fmul	f5, f5, f6	# 342
	fsw		f5, 0(x11)	# 342
	fmul	f5, f7, f6	# 343
	fsw		f5, 0(x12)	# 343
	fmul	f5, f8, f6	# 344
	fsw		f5, 0(x13)	# 344
	jal		x0, beq_cont.34403	# 1752
beq.34406:
	lw		x9, 16(x6)	# 448
	addi	x11, x9, 0	# 453
	flw		f5, 0(x11)	# 453
	fsub	f5, f0, f5	# 123
	addi	x11, x0, 40568	# 1720
	fsw		f5, 0(x11)	# 1720
	addi	x11, x9, 4	# 463
	flw		f5, 0(x11)	# 463
	fsub	f5, f0, f5	# 123
	addi	x11, x0, 40572	# 1721
	fsw		f5, 0(x11)	# 1721
	addi	x9, x9, 8	# 473
	flw		f5, 0(x9)	# 473
	fsub	f5, f0, f5	# 123
	addi	x9, x0, 40576	# 1722
	fsw		f5, 0(x9)	# 1722
	jal		x0, beq_cont.34403	# 1750
beq.34404:
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
	feq		f6, f0, feq.34414	# 120
	fle		f6, f0, fle.34416	# 121
	fadd	f5, f0, f30	# 270
	jal		x0, feq_cont.34413	# 121
fle.34416:
	fadd	f5, f0, f25	# 271
	jal		x0, feq_cont.34413	# 120
feq.34414:
	fadd	f5, f0, f0	# 269
feq_cont.34413:
	fsub	f5, f0, f5	# 123
	addi	x9, x9, 40568	# 1714
	fsw		f5, 0(x9)	# 1714
beq_cont.34403:
	addi	x9, x0, 40552	# 45
	flw		f5, 0(x9)	# 316
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
	addi	x14, x13, 0	# 543
	flw		f8, 0(x14)	# 543
	addi	x14, x0, 40580	# 1767
	fsw		f8, 0(x14)	# 1767
	addi	x15, x13, 4	# 553
	flw		f8, 0(x15)	# 553
	addi	x15, x0, 40584	# 1768
	fsw		f8, 0(x15)	# 1768
	addi	x13, x13, 8	# 563
	flw		f8, 0(x13)	# 563
	addi	x13, x0, 40588	# 1769
	fsw		f8, 0(x13)	# 1769
	fsw		f1, -40(x2)	# 1770
	sw		x7, -44(x2)	# 1770
	fsw		f4, -48(x2)	# 1770
	fsw		f2, -52(x2)	# 1770
	fsw		f5, -56(x2)	# 1770
	sw		x4, -60(x2)	# 1770
	beq		x12, x21, beq.34418	# 1770
	beq		x12, x22, beq.34420	# 1788
	beq		x12, x24, beq.34422	# 1795
	lw		x16, -12(x2)	# 1806
	beq		x12, x16, beq.34424	# 1806
	jal		x0, beq_cont.34417	# 1806
beq.34424:
	lw		x12, 20(x6)	# 488
	addi	x17, x12, 0	# 493
	flw		f8, 0(x17)	# 493
	fsub	f8, f5, f8	# 1808
	lw		x6, 16(x6)	# 448
	addi	x17, x6, 0	# 453
	flw		f9, 0(x17)	# 453
	fsqrt	f9, f9	# 1808
	fmul	f8, f8, f9	# 1808
	addi	x17, x12, 8	# 513
	flw		f9, 0(x17)	# 513
	fsub	f9, f7, f9	# 1809
	addi	x17, x6, 8	# 473
	flw		f10, 0(x17)	# 473
	fsqrt	f10, f10	# 1809
	fmul	f9, f9, f10	# 1809
	fmul	f10, f8, f8	# 127
	fmul	f11, f9, f9	# 127
	fadd	f10, f10, f11	# 1810
	fle		f8, f0, fle.34426	# 124
	fadd	f12, f0, f8	# 124
	jal		x0, fle_cont.34425	# 124
fle.34426:
	fsub	f12, f0, f8	# 124
fle_cont.34425:
	lui		x17, %hi(l.29612)	# 1812
	ori		x17, x17, %lo(l.29612)	# 1812
	flw		f13, 0(x17)	# 1812
	fle		f13, f12, fle.34428	# 125
	lui		x17, %hi(l.29614)	# 1813
	ori		x17, x17, %lo(l.29614)	# 1813
	flw		f1, 0(x17)	# 1813
	jal		x0, fle_cont.34427	# 125
fle.34428:
	fdiv	f8, f9, f8	# 1815
	fle		f8, f0, fle.34430	# 124
	jal		x0, fle_cont.34429	# 124
fle.34430:
	fsub	f8, f0, f8	# 124
fle_cont.34429:
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
fle_cont.34427:
	sw		x6, -64(x2)	# 1819
	fsw		f1, -68(x2)	# 1819
	sw		x1, -72(x2)	# 1819
	addi	x2, x2, -76	# 1819
	jal		x1, min_caml_floor	# 1819
	addi	x2, x2, 76	# 1819
	lw		x1, -72(x2)	# 1819
	flw		f2, -68(x2)	# 1819
	fsub	f1, f2, f1	# 1819
	addi	x4, x12, 4	# 503
	flw		f2, 0(x4)	# 503
	fsub	f2, f6, f2	# 1821
	lw		x4, -64(x2)	# 463
	addi	x4, x4, 4	# 463
	flw		f3, 0(x4)	# 463
	fsqrt	f3, f3	# 1821
	fmul	f2, f2, f3	# 1821
	fle		f10, f0, fle.34432	# 124
	fadd	f3, f0, f10	# 124
	jal		x0, fle_cont.34431	# 124
fle.34432:
	fsub	f3, f0, f10	# 124
fle_cont.34431:
	fsw		f1, -72(x2)	# 125
	fle		f13, f3, fle.34434	# 125
	lui		x4, %hi(l.29614)	# 1824
	ori		x4, x4, %lo(l.29614)	# 1824
	flw		f1, 0(x4)	# 1824
	jal		x0, fle_cont.34433	# 125
fle.34434:
	fdiv	f2, f2, f10	# 1826
	fle		f2, f0, fle.34436	# 124
	jal		x0, fle_cont.34435	# 124
fle.34436:
	fsub	f2, f0, f2	# 124
fle_cont.34435:
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
fle_cont.34433:
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
	fle		f0, f1, fle_cont.34437	# 122
	fadd	f1, f0, f0	# 1831
fle_cont.34437:
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f2, 0(x4)	# 25
	fmul	f1, f2, f1	# 1832
	lui		x4, %hi(l.29637)	# 1832
	ori		x4, x4, %lo(l.29637)	# 1832
	flw		f2, 0(x4)	# 1832
	fdiv	f1, f1, f2	# 1832
	fsw		f1, 0(x13)	# 1832
	jal		x0, beq_cont.34417	# 1795
beq.34422:
	lw		x6, 20(x6)	# 488
	addi	x12, x6, 0	# 493
	flw		f8, 0(x12)	# 493
	fsub	f8, f5, f8	# 1798
	addi	x6, x6, 8	# 513
	flw		f9, 0(x6)	# 513
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
	jal		x0, beq_cont.34417	# 1788
beq.34420:
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
	jal		x0, beq_cont.34417	# 1770
beq.34418:
	lw		x6, 20(x6)	# 488
	addi	x12, x6, 0	# 493
	flw		f8, 0(x12)	# 493
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
	addi	x4, x4, 8	# 513
	flw		f10, 0(x4)	# 513
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
	fle		f28, f2, fle.34440	# 125
	fle		f28, f1, fle.34442	# 125
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f1, 0(x4)	# 25
	jal		x0, fle_cont.34439	# 125
fle.34442:
	fadd	f1, f0, f0	# 1785
	jal		x0, fle_cont.34439	# 125
fle.34440:
	fle		f28, f1, fle.34444	# 125
	fadd	f1, f0, f0	# 1786
	jal		x0, fle_cont.34439	# 125
fle.34444:
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f1, 0(x4)	# 25
fle_cont.34439:
	fsw		f1, 0(x15)	# 1783
beq_cont.34417:
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
	addi	x17, x16, 0	# 316
	flw		f1, -56(x2)	# 316
	fsw		f1, 0(x17)	# 316
	addi	x17, x16, 4	# 317
	fsw		f6, 0(x17)	# 317
	addi	x16, x16, 8	# 318
	fsw		f7, 0(x16)	# 318
	lw		x16, 12(x4)	# 641
	lui		x17, %hi(l.27933)	# 1909
	ori		x17, x17, %lo(l.27933)	# 1909
	flw		f2, 0(x17)	# 1909
	flw		f3, -52(x2)	# 125
	fle		f2, f3, fle.34446	# 125
	add		x7, x16, x7	# 1910
	lw		x10, -32(x2)	# 1910
	sw		x10, 0(x7)	# 1910
	jal		x0, fle_cont.34445	# 125
fle.34446:
	add		x16, x16, x7	# 1912
	sw		x21, 0(x16)	# 1912
	lw		x10, 16(x4)	# 648
	add		x10, x10, x7	# 1914
	lw		x10, 0(x10)	# 1914
	flw		f2, 0(x14)	# 316
	addi	x16, x10, 0	# 316
	fsw		f2, 0(x16)	# 316
	flw		f2, 0(x15)	# 317
	addi	x17, x10, 4	# 317
	fsw		f2, 0(x17)	# 317
	flw		f2, 0(x13)	# 318
	addi	x10, x10, 8	# 318
	fsw		f2, 0(x10)	# 318
	lui		x18, %hi(l.29712)	# 1915
	ori		x18, x18, %lo(l.29712)	# 1915
	flw		f2, 0(x18)	# 1915
	flw		f4, -48(x2)	# 1915
	fmul	f2, f2, f4	# 1915
	flw		f5, 0(x16)	# 382
	fmul	f5, f5, f2	# 382
	fsw		f5, 0(x16)	# 382
	flw		f5, 0(x17)	# 383
	fmul	f5, f5, f2	# 383
	fsw		f5, 0(x17)	# 383
	flw		f5, 0(x10)	# 384
	fmul	f2, f5, f2	# 384
	fsw		f2, 0(x10)	# 384
	lw		x10, 28(x4)	# 685
	add		x7, x10, x7	# 1917
	lw		x7, 0(x7)	# 1917
	addi	x10, x0, 40568	# 316
	flw		f2, 0(x10)	# 316
	addi	x10, x7, 0	# 316
	fsw		f2, 0(x10)	# 316
	addi	x10, x0, 40572	# 317
	flw		f2, 0(x10)	# 317
	addi	x10, x7, 4	# 317
	fsw		f2, 0(x10)	# 317
	addi	x10, x0, 40576	# 318
	flw		f2, 0(x10)	# 318
	addi	x7, x7, 8	# 318
	fsw		f2, 0(x7)	# 318
fle_cont.34445:
	lui		x7, %hi(l.29740)	# 1920
	ori		x7, x7, %lo(l.29740)	# 1920
	flw		f2, 0(x7)	# 1920
	lw		x7, -20(x2)	# 349
	addi	x10, x7, 0	# 349
	flw		f4, 0(x10)	# 349
	addi	x16, x0, 40568	# 349
	flw		f5, 0(x16)	# 349
	fmul	f8, f4, f5	# 349
	addi	x16, x7, 4	# 349
	flw		f9, 0(x16)	# 349
	addi	x17, x0, 40572	# 349
	flw		f10, 0(x17)	# 349
	fmul	f11, f9, f10	# 349
	fadd	f8, f8, f11	# 349
	addi	x17, x7, 8	# 349
	flw		f11, 0(x17)	# 349
	addi	x18, x0, 40576	# 349
	flw		f12, 0(x18)	# 349
	fmul	f13, f11, f12	# 349
	fadd	f8, f8, f13	# 349
	fmul	f2, f2, f8	# 1920
	fmul	f8, f2, f5	# 359
	fadd	f4, f4, f8	# 359
	fsw		f4, 0(x10)	# 359
	fmul	f4, f2, f10	# 360
	fadd	f4, f9, f4	# 360
	fsw		f4, 0(x16)	# 360
	fmul	f2, f2, f12	# 361
	fadd	f2, f11, f2	# 361
	fsw		f2, 0(x17)	# 361
	addi	x8, x8, 4	# 533
	flw		f2, 0(x8)	# 533
	flw		f4, -16(x2)	# 1924
	fmul	f2, f4, f2	# 1924
	lw		x8, -32(x2)	# 1927
	lw		x18, -4(x2)	# 1927
	sw		x22, -96(x2)	# 1927
	sw		x9, -100(x2)	# 1927
	fsw		f7, -104(x2)	# 1927
	fsw		f6, -108(x2)	# 1927
	fsw		f2, -112(x2)	# 1927
	sw		x13, -116(x2)	# 1927
	sw		x14, -120(x2)	# 1927
	sw		x10, -124(x2)	# 1927
	fsw		f12, -128(x2)	# 1927
	fsw		f10, -132(x2)	# 1927
	fsw		f5, -136(x2)	# 1927
	addi	x5, x18, 0	# 1927
	addi	x4, x8, 0	# 1927
	sw		x1, -140(x2)	# 1927
	addi	x2, x2, -144	# 1927
	jal		x1, shadow_check_one_or_matrix.2934.18032	# 1927
	addi	x2, x2, 144	# 1927
	lw		x1, -140(x2)	# 1927
	lw		x5, -32(x2)	# 1927
	beq		x4, x5, beq.34448	# 1927
	jal		x0, beq_cont.34447	# 1927
beq.34448:
	addi	x4, x0, 40312	# 349
	flw		f1, 0(x4)	# 349
	flw		f2, -136(x2)	# 349
	fmul	f2, f2, f1	# 349
	addi	x4, x0, 40316	# 349
	flw		f3, 0(x4)	# 349
	flw		f4, -132(x2)	# 349
	fmul	f4, f4, f3	# 349
	fadd	f2, f2, f4	# 349
	addi	x4, x0, 40320	# 349
	flw		f4, 0(x4)	# 349
	flw		f5, -128(x2)	# 349
	fmul	f5, f5, f4	# 349
	fadd	f2, f2, f5	# 349
	fsub	f2, f0, f2	# 123
	flw		f5, -48(x2)	# 1928
	fmul	f2, f2, f5	# 1928
	lw		x4, -124(x2)	# 349
	flw		f6, 0(x4)	# 349
	fmul	f1, f6, f1	# 349
	flw		f6, 0(x16)	# 349
	fmul	f3, f6, f3	# 349
	fadd	f1, f1, f3	# 349
	flw		f3, 0(x17)	# 349
	fmul	f3, f3, f4	# 349
	fadd	f1, f1, f3	# 349
	fsub	f1, f0, f1	# 123
	fle		f2, f0, fle_cont.34449	# 121
	addi	x4, x0, 40604	# 359
	flw		f4, 0(x4)	# 359
	lw		x5, -120(x2)	# 359
	flw		f6, 0(x5)	# 359
	fmul	f6, f2, f6	# 359
	fadd	f4, f4, f6	# 359
	fsw		f4, 0(x4)	# 359
	addi	x4, x0, 40608	# 360
	flw		f4, 0(x4)	# 360
	flw		f6, 0(x15)	# 360
	fmul	f6, f2, f6	# 360
	fadd	f4, f4, f6	# 360
	fsw		f4, 0(x4)	# 360
	addi	x4, x0, 40612	# 361
	flw		f4, 0(x4)	# 361
	lw		x5, -116(x2)	# 361
	flw		f6, 0(x5)	# 361
	fmul	f2, f2, f6	# 361
	fadd	f2, f4, f2	# 361
	fsw		f2, 0(x4)	# 361
fle_cont.34449:
	fle		f1, f0, beq_cont.34447	# 121
	fmul	f1, f1, f1	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -112(x2)	# 1851
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
beq_cont.34447:
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
	sw		x1, -140(x2)	# 1372
	addi	x2, x2, -144	# 1372
	jal		x1, setup_startp_constants.2897.18017	# 1372
	addi	x2, x2, 144	# 1372
	lw		x1, -140(x2)	# 1372
	addi	x4, x0, 41736	# 1935
	lw		x4, 0(x4)	# 1935
	addi	x4, x4, -1	# 1935
	lw		x5, -20(x2)	# 1935
	flw		f1, -48(x2)	# 1935
	flw		f2, -112(x2)	# 1935
	sw		x1, -140(x2)	# 1935
	addi	x2, x2, -144	# 1935
	jal		x1, trace_reflections.2981.18059	# 1935
	addi	x2, x2, 144	# 1935
	lw		x1, -140(x2)	# 1935
	lui		x4, %hi(l.29816)	# 1938
	ori		x4, x4, %lo(l.29816)	# 1938
	flw		f1, 0(x4)	# 1938
	flw		f2, -16(x2)	# 125
	fle		f2, f1, fle.34453	# 125
	lw		x4, -28(x2)	# 1940
	lw		x5, -12(x2)	# 1940
	ble		x5, x4, ble_cont.34454	# 1940
	addi	x5, x4, 1	# 1941
	mul		x5, x30, x5	# 1941
	lw		x7, -24(x2)	# 1941
	add		x5, x7, x5	# 1941
	sw		x20, 0(x5)	# 1941
ble_cont.34454:
	lw		x5, -96(x2)	# 1944
	lw		x6, -44(x2)	# 1944
	beq		x6, x5, beq.34456	# 1944
	jalr	x0, x1, 0	# 1947
beq.34456:
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
fle.34453:
	jalr	x0, x1, 0	# 1949
beq.34402:
	lw		x6, -28(x2)	# 1954
	mul		x7, x30, x6	# 1954
	lw		x8, -24(x2)	# 1954
	add		x7, x8, x7	# 1954
	sw		x20, 0(x7)	# 1954
	beq		x6, x5, beq.34459	# 1956
	lw		x4, -20(x2)	# 349
	addi	x5, x4, 0	# 349
	flw		f1, 0(x5)	# 349
	addi	x5, x0, 40312	# 349
	flw		f2, 0(x5)	# 349
	fmul	f1, f1, f2	# 349
	addi	x5, x4, 4	# 349
	flw		f2, 0(x5)	# 349
	addi	x5, x0, 40316	# 349
	flw		f3, 0(x5)	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	addi	x4, x4, 8	# 349
	flw		f2, 0(x4)	# 349
	addi	x4, x0, 40320	# 349
	flw		f3, 0(x4)	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	fsub	f1, f0, f1	# 123
	fle		f1, f0, fle.34460	# 121
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
fle.34460:
	jalr	x0, x1, 0	# 1967
beq.34459:
	jalr	x0, x1, 0	# 1968
iter_trace_diffuse_rays.2995.18070:
	add		x8, x0, x0	# 6
	ble		x0, x7, ble.34464	# 2001
	jalr	x0, x1, 0	# 2012
ble.34464:
	mul		x9, x30, x7	# 2002
	add		x9, x4, x9	# 2002
	lw		x9, 0(x9)	# 2002
	lw		x10, 0(x9)	# 696
	addi	x11, x10, 0	# 349
	flw		f1, 0(x11)	# 349
	addi	x11, x5, 0	# 349
	flw		f2, 0(x11)	# 349
	fmul	f1, f1, f2	# 349
	addi	x13, x10, 4	# 349
	flw		f2, 0(x13)	# 349
	addi	x13, x5, 4	# 349
	flw		f3, 0(x13)	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	addi	x14, x10, 8	# 349
	flw		f2, 0(x14)	# 349
	addi	x14, x5, 8	# 349
	flw		f3, 0(x14)	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	sw		x6, 0(x2)	# 122
	sw		x5, -4(x2)	# 122
	sw		x4, -8(x2)	# 122
	sw		x7, -12(x2)	# 122
	fle		f0, f1, fle.34467	# 122
	addi	x9, x7, 1	# 2007
	mul		x9, x30, x9	# 2007
	add		x9, x4, x9	# 2007
	lw		x9, 0(x9)	# 2007
	fdiv	f1, f1, f24	# 2007
	addi	x10, x0, 40548	# 1691
	fsw		f21, 0(x10)	# 1691
	addi	x14, x0, 40536	# 1692
	lw		x14, 0(x14)	# 1692
	fsw		f1, -16(x2)	# 1692
	sw		x14, -20(x2)	# 1692
	sw		x30, -24(x2)	# 1692
	sw		x22, -28(x2)	# 1692
	fsw		f0, -32(x2)	# 1692
	sw		x21, -36(x2)	# 1692
	sw		x9, -40(x2)	# 1692
	sw		x0, -44(x2)	# 1692
	sw		x10, -48(x2)	# 1692
	addi	x6, x9, 0	# 1692
	addi	x5, x14, 0	# 1692
	addi	x4, x0, 0	# 1692
	sw		x1, -52(x2)	# 1692
	addi	x2, x2, -56	# 1692
	jal		x1, trace_or_matrix_fast.2959.18055	# 1692
	addi	x2, x2, 56	# 1692
	lw		x1, -52(x2)	# 1692
	lw		x4, -48(x2)	# 1693
	flw		f1, 0(x4)	# 1693
	fle		f1, f20, fle.34469	# 125
	fle		f22, f1, fle.34471	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.34468	# 125
fle.34471:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.34468	# 125
fle.34469:
	addi	x4, x0, 0	# 1697
fle_cont.34468:
	lw		x5, -44(x2)	# 1984
	beq		x4, x5, fle_cont.34466	# 1984
	addi	x4, x0, 40564	# 1985
	lw		x4, 0(x4)	# 1985
	mul		x4, x30, x4	# 1985
	addi	x4, x4, 40048	# 1985
	lw		x4, 0(x4)	# 1985
	lw		x6, -40(x2)	# 696
	lw		x6, 0(x6)	# 696
	lw		x7, 4(x4)	# 410
	lw		x8, -36(x2)	# 1750
	beq		x7, x8, beq.34475	# 1750
	lw		x6, -28(x2)	# 1752
	beq		x7, x6, beq.34477	# 1752
	flw		f1, 0(x25)	# 1727
	lw		x7, 20(x4)	# 488
	addi	x9, x7, 0	# 493
	flw		f2, 0(x9)	# 493
	fsub	f1, f1, f2	# 1727
	flw		f2, 0(x27)	# 1728
	addi	x9, x7, 4	# 503
	flw		f3, 0(x9)	# 503
	fsub	f2, f2, f3	# 1728
	flw		f3, 0(x26)	# 1729
	addi	x7, x7, 8	# 513
	flw		f4, 0(x7)	# 513
	fsub	f3, f3, f4	# 1729
	lw		x7, 16(x4)	# 448
	addi	x9, x7, 0	# 453
	flw		f4, 0(x9)	# 453
	fmul	f4, f1, f4	# 1731
	addi	x9, x7, 4	# 463
	flw		f5, 0(x9)	# 463
	fmul	f5, f2, f5	# 1732
	addi	x7, x7, 8	# 473
	flw		f6, 0(x7)	# 473
	fmul	f6, f3, f6	# 1733
	lw		x7, 12(x4)	# 439
	beq		x7, x5, beq.34479	# 1735
	lw		x7, 36(x4)	# 588
	addi	x9, x7, 8	# 593
	flw		f7, 0(x9)	# 593
	fmul	f8, f2, f7	# 1740
	addi	x9, x7, 4	# 583
	flw		f9, 0(x9)	# 583
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
	addi	x7, x7, 0	# 573
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
	jal		x0, beq_cont.34478	# 1735
beq.34479:
	addi	x7, x0, 40568	# 1736
	fsw		f4, 0(x7)	# 1736
	addi	x7, x0, 40572	# 1737
	fsw		f5, 0(x7)	# 1737
	addi	x7, x0, 40576	# 1738
	fsw		f6, 0(x7)	# 1738
beq_cont.34478:
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
	flw		f5, -32(x2)	# 120
	feq		f2, f5, feq.34481	# 120
	beq		x7, x5, beq.34483	# 341
	fdiv	f2, f25, f2	# 341
	jal		x0, feq_cont.34480	# 341
beq.34483:
	fdiv	f2, f30, f2	# 341
	jal		x0, feq_cont.34480	# 120
feq.34481:
	fadd	f2, f0, f30	# 341
feq_cont.34480:
	fmul	f1, f1, f2	# 342
	fsw		f1, 0(x9)	# 342
	fmul	f1, f3, f2	# 343
	fsw		f1, 0(x10)	# 343
	fmul	f1, f4, f2	# 344
	fsw		f1, 0(x11)	# 344
	jal		x0, beq_cont.34474	# 1752
beq.34477:
	lw		x7, 16(x4)	# 448
	addi	x9, x7, 0	# 453
	flw		f1, 0(x9)	# 453
	fsub	f1, f0, f1	# 123
	addi	x9, x0, 40568	# 1720
	fsw		f1, 0(x9)	# 1720
	addi	x9, x7, 4	# 463
	flw		f1, 0(x9)	# 463
	fsub	f1, f0, f1	# 123
	addi	x9, x0, 40572	# 1721
	fsw		f1, 0(x9)	# 1721
	addi	x7, x7, 8	# 473
	flw		f1, 0(x7)	# 473
	fsub	f1, f0, f1	# 123
	addi	x7, x0, 40576	# 1722
	fsw		f1, 0(x7)	# 1722
	jal		x0, beq_cont.34474	# 1750
beq.34475:
	addi	x7, x0, 40544	# 1711
	lw		x7, 0(x7)	# 1711
	addi	x9, x0, 40568	# 51
	flw		f1, -32(x2)	# 304
	fsw		f1, 0(x9)	# 304
	addi	x9, x0, 40572	# 305
	fsw		f1, 0(x9)	# 305
	addi	x9, x0, 40576	# 306
	fsw		f1, 0(x9)	# 306
	addi	x7, x7, -1	# 1714
	mul		x7, x30, x7	# 1714
	add		x6, x6, x7	# 1714
	flw		f2, 0(x6)	# 1714
	feq		f2, f1, feq.34485	# 120
	fle		f2, f1, fle.34487	# 121
	fadd	f2, f0, f30	# 270
	jal		x0, feq_cont.34484	# 121
fle.34487:
	fadd	f2, f0, f25	# 271
	jal		x0, feq_cont.34484	# 120
feq.34485:
	fadd	f2, f0, f1	# 269
feq_cont.34484:
	fsub	f2, f0, f2	# 123
	addi	x6, x7, 40568	# 1714
	fsw		f2, 0(x6)	# 1714
beq_cont.34474:
	lw		x6, 0(x4)	# 400
	lw		x7, 32(x4)	# 538
	addi	x9, x7, 0	# 543
	flw		f1, 0(x9)	# 543
	addi	x9, x0, 40580	# 1767
	fsw		f1, 0(x9)	# 1767
	addi	x10, x7, 4	# 553
	flw		f1, 0(x10)	# 553
	addi	x10, x0, 40584	# 1768
	fsw		f1, 0(x10)	# 1768
	addi	x7, x7, 8	# 563
	flw		f1, 0(x7)	# 563
	addi	x7, x0, 40588	# 1769
	fsw		f1, 0(x7)	# 1769
	sw		x7, -52(x2)	# 1770
	sw		x4, -56(x2)	# 1770
	beq		x6, x8, beq.34489	# 1770
	lw		x8, -28(x2)	# 1788
	beq		x6, x8, beq.34491	# 1788
	beq		x6, x24, beq.34493	# 1795
	lw		x8, -24(x2)	# 1806
	beq		x6, x8, beq.34495	# 1806
	jal		x0, beq_cont.34488	# 1806
beq.34495:
	flw		f1, 0(x25)	# 1808
	lw		x6, 20(x4)	# 488
	addi	x8, x6, 0	# 493
	flw		f2, 0(x8)	# 493
	fsub	f1, f1, f2	# 1808
	lw		x8, 16(x4)	# 448
	addi	x11, x8, 0	# 453
	flw		f2, 0(x11)	# 453
	fsqrt	f2, f2	# 1808
	fmul	f1, f1, f2	# 1808
	flw		f2, 0(x26)	# 1809
	addi	x11, x6, 8	# 513
	flw		f3, 0(x11)	# 513
	fsub	f2, f2, f3	# 1809
	addi	x11, x8, 8	# 473
	flw		f3, 0(x11)	# 473
	fsqrt	f3, f3	# 1809
	fmul	f2, f2, f3	# 1809
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1810
	flw		f4, -32(x2)	# 124
	fle		f1, f4, fle.34497	# 124
	fadd	f5, f0, f1	# 124
	jal		x0, fle_cont.34496	# 124
fle.34497:
	fsub	f5, f0, f1	# 124
fle_cont.34496:
	lui		x11, %hi(l.29612)	# 1812
	ori		x11, x11, %lo(l.29612)	# 1812
	flw		f6, 0(x11)	# 1812
	fsw		f3, -60(x2)	# 125
	fle		f6, f5, fle.34499	# 125
	lui		x11, %hi(l.29614)	# 1813
	ori		x11, x11, %lo(l.29614)	# 1813
	flw		f1, 0(x11)	# 1813
	jal		x0, fle_cont.34498	# 125
fle.34499:
	fdiv	f1, f2, f1	# 1815
	fle		f1, f4, fle.34501	# 124
	jal		x0, fle_cont.34500	# 124
fle.34501:
	fsub	f1, f0, f1	# 124
fle_cont.34500:
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
fle_cont.34498:
	sw		x6, -64(x2)	# 1819
	fsw		f1, -68(x2)	# 1819
	sw		x1, -72(x2)	# 1819
	addi	x2, x2, -76	# 1819
	jal		x1, min_caml_floor	# 1819
	addi	x2, x2, 76	# 1819
	lw		x1, -72(x2)	# 1819
	flw		f2, -68(x2)	# 1819
	fsub	f1, f2, f1	# 1819
	flw		f2, 0(x27)	# 1821
	lw		x4, -64(x2)	# 503
	addi	x4, x4, 4	# 503
	flw		f3, 0(x4)	# 503
	fsub	f2, f2, f3	# 1821
	addi	x4, x8, 4	# 463
	flw		f3, 0(x4)	# 463
	fsqrt	f3, f3	# 1821
	fmul	f2, f2, f3	# 1821
	flw		f3, -32(x2)	# 124
	flw		f4, -60(x2)	# 124
	fle		f4, f3, fle.34503	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.34502	# 124
fle.34503:
	fsub	f5, f0, f4	# 124
fle_cont.34502:
	fsw		f1, -72(x2)	# 125
	fle		f6, f5, fle.34505	# 125
	lui		x4, %hi(l.29614)	# 1824
	ori		x4, x4, %lo(l.29614)	# 1824
	flw		f1, 0(x4)	# 1824
	jal		x0, fle_cont.34504	# 125
fle.34505:
	fdiv	f2, f2, f4	# 1826
	fle		f2, f3, fle.34507	# 124
	jal		x0, fle_cont.34506	# 124
fle.34507:
	fsub	f2, f0, f2	# 124
fle_cont.34506:
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
fle_cont.34504:
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
	flw		f2, -32(x2)	# 122
	fle		f2, f1, fle_cont.34508	# 122
	fadd	f1, f0, f2	# 1831
fle_cont.34508:
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f3, 0(x4)	# 25
	fmul	f1, f3, f1	# 1832
	lui		x4, %hi(l.29637)	# 1832
	ori		x4, x4, %lo(l.29637)	# 1832
	flw		f3, 0(x4)	# 1832
	fdiv	f1, f1, f3	# 1832
	lw		x4, -52(x2)	# 1832
	fsw		f1, 0(x4)	# 1832
	jal		x0, beq_cont.34488	# 1795
beq.34493:
	flw		f1, 0(x25)	# 1798
	lw		x6, 20(x4)	# 488
	addi	x8, x6, 0	# 493
	flw		f2, 0(x8)	# 493
	fsub	f1, f1, f2	# 1798
	flw		f2, 0(x26)	# 1799
	addi	x6, x6, 8	# 513
	flw		f3, 0(x6)	# 513
	fsub	f2, f2, f3	# 1799
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1800
	fsqrt	f1, f1	# 1800
	fdiv	f1, f1, f28	# 1800
	fsw		f1, -80(x2)	# 1801
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
	fsw		f3, 0(x10)	# 1803
	fsub	f1, f30, f1	# 1804
	fmul	f1, f1, f2	# 1804
	lw		x4, -52(x2)	# 1804
	fsw		f1, 0(x4)	# 1804
	jal		x0, beq_cont.34488	# 1788
beq.34491:
	flw		f1, 0(x27)	# 1791
	lui		x6, %hi(l.29655)	# 1791
	ori		x6, x6, %lo(l.29655)	# 1791
	flw		f2, 0(x6)	# 1791
	fmul	f1, f1, f2	# 1791
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
	fsw		f3, 0(x9)	# 1792
	fsub	f1, f30, f1	# 1793
	fmul	f1, f2, f1	# 1793
	fsw		f1, 0(x10)	# 1793
	jal		x0, beq_cont.34488	# 1770
beq.34489:
	flw		f1, 0(x25)	# 1773
	lw		x6, 20(x4)	# 488
	addi	x8, x6, 0	# 493
	flw		f2, 0(x8)	# 493
	fsub	f1, f1, f2	# 1773
	fmul	f3, f1, f26	# 1775
	fsw		f26, -84(x2)	# 1775
	sw		x6, -88(x2)	# 1775
	fsw		f1, -92(x2)	# 1775
	fadd	f1, f0, f3	# 1775
	sw		x1, -96(x2)	# 1775
	addi	x2, x2, -100	# 1775
	jal		x1, min_caml_floor	# 1775
	addi	x2, x2, 100	# 1775
	lw		x1, -96(x2)	# 1775
	fmul	f1, f1, f27	# 1775
	flw		f3, -92(x2)	# 1776
	fsub	f1, f3, f1	# 1776
	flw		f4, 0(x26)	# 1778
	lw		x4, -88(x2)	# 513
	addi	x4, x4, 8	# 513
	flw		f5, 0(x4)	# 513
	fsub	f4, f4, f5	# 1778
	flw		f5, -84(x2)	# 1780
	fmul	f5, f4, f5	# 1780
	fsw		f1, -96(x2)	# 1780
	fsw		f27, -100(x2)	# 1780
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
	fle		f28, f2, fle.34511	# 125
	fle		f28, f1, fle.34513	# 125
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f1, 0(x4)	# 25
	jal		x0, fle_cont.34510	# 125
fle.34513:
	flw		f1, -32(x2)	# 1785
	jal		x0, fle_cont.34510	# 125
fle.34511:
	fle		f28, f1, fle.34515	# 125
	flw		f1, -32(x2)	# 1786
	jal		x0, fle_cont.34510	# 125
fle.34515:
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f1, 0(x4)	# 25
fle_cont.34510:
	fsw		f1, 0(x10)	# 1783
beq_cont.34488:
	lw		x4, -44(x2)	# 1990
	lw		x5, -20(x2)	# 1990
	sw		x10, -104(x2)	# 1990
	sw		x9, -108(x2)	# 1990
	sw		x1, -112(x2)	# 1990
	addi	x2, x2, -116	# 1990
	jal		x1, shadow_check_one_or_matrix.2934.18032	# 1990
	addi	x2, x2, 116	# 1990
	lw		x1, -112(x2)	# 1990
	lw		x5, -44(x2)	# 1990
	beq		x4, x5, beq.34517	# 1990
	jal		x0, fle_cont.34466	# 1990
beq.34517:
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
	flw		f2, -32(x2)	# 121
	fle		f1, f2, fle.34519	# 121
	jal		x0, fle_cont.34518	# 121
fle.34519:
	fadd	f1, f0, f2	# 1992
fle_cont.34518:
	flw		f2, -16(x2)	# 1993
	fmul	f1, f2, f1	# 1993
	lw		x4, -56(x2)	# 518
	lw		x4, 28(x4)	# 518
	addi	x4, x4, 0	# 523
	flw		f2, 0(x4)	# 523
	fmul	f1, f1, f2	# 1993
	addi	x4, x0, 40592	# 359
	flw		f2, 0(x4)	# 359
	lw		x5, -108(x2)	# 359
	flw		f3, 0(x5)	# 359
	fmul	f3, f1, f3	# 359
	fadd	f2, f2, f3	# 359
	fsw		f2, 0(x4)	# 359
	addi	x4, x0, 40596	# 360
	flw		f2, 0(x4)	# 360
	lw		x5, -104(x2)	# 360
	flw		f3, 0(x5)	# 360
	fmul	f3, f1, f3	# 360
	fadd	f2, f2, f3	# 360
	fsw		f2, 0(x4)	# 360
	addi	x4, x0, 40600	# 361
	flw		f2, 0(x4)	# 361
	lw		x5, -52(x2)	# 361
	flw		f3, 0(x5)	# 361
	fmul	f1, f1, f3	# 361
	fadd	f1, f2, f1	# 361
	fsw		f1, 0(x4)	# 361
	jal		x0, fle_cont.34466	# 1984
fle.34467:
	fdiv	f1, f1, f23	# 2009
	addi	x14, x0, 40548	# 1691
	fsw		f21, 0(x14)	# 1691
	addi	x15, x0, 40536	# 1692
	lw		x15, 0(x15)	# 1692
	fsw		f1, -112(x2)	# 1692
	sw		x15, -116(x2)	# 1692
	sw		x30, -24(x2)	# 1692
	sw		x22, -28(x2)	# 1692
	sw		x10, -120(x2)	# 1692
	fsw		f0, -32(x2)	# 1692
	sw		x21, -36(x2)	# 1692
	sw		x0, -44(x2)	# 1692
	sw		x14, -124(x2)	# 1692
	addi	x6, x9, 0	# 1692
	addi	x5, x15, 0	# 1692
	addi	x4, x0, 0	# 1692
	sw		x1, -128(x2)	# 1692
	addi	x2, x2, -132	# 1692
	jal		x1, trace_or_matrix_fast.2959.18055	# 1692
	addi	x2, x2, 132	# 1692
	lw		x1, -128(x2)	# 1692
	lw		x4, -124(x2)	# 1693
	flw		f1, 0(x4)	# 1693
	fle		f1, f20, fle.34521	# 125
	fle		f22, f1, fle.34523	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.34520	# 125
fle.34523:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.34520	# 125
fle.34521:
	addi	x4, x0, 0	# 1697
fle_cont.34520:
	lw		x5, -44(x2)	# 1984
	beq		x4, x5, fle_cont.34466	# 1984
	addi	x4, x0, 40564	# 1985
	lw		x4, 0(x4)	# 1985
	mul		x4, x30, x4	# 1985
	addi	x4, x4, 40048	# 1985
	lw		x4, 0(x4)	# 1985
	lw		x6, 4(x4)	# 410
	lw		x7, -36(x2)	# 1750
	beq		x6, x7, beq.34527	# 1750
	lw		x8, -28(x2)	# 1752
	beq		x6, x8, beq.34529	# 1752
	flw		f1, 0(x25)	# 1727
	lw		x6, 20(x4)	# 488
	addi	x9, x6, 0	# 493
	flw		f2, 0(x9)	# 493
	fsub	f1, f1, f2	# 1727
	flw		f2, 0(x27)	# 1728
	addi	x9, x6, 4	# 503
	flw		f3, 0(x9)	# 503
	fsub	f2, f2, f3	# 1728
	flw		f3, 0(x26)	# 1729
	addi	x6, x6, 8	# 513
	flw		f4, 0(x6)	# 513
	fsub	f3, f3, f4	# 1729
	lw		x6, 16(x4)	# 448
	addi	x9, x6, 0	# 453
	flw		f4, 0(x9)	# 453
	fmul	f4, f1, f4	# 1731
	addi	x9, x6, 4	# 463
	flw		f5, 0(x9)	# 463
	fmul	f5, f2, f5	# 1732
	addi	x6, x6, 8	# 473
	flw		f6, 0(x6)	# 473
	fmul	f6, f3, f6	# 1733
	lw		x6, 12(x4)	# 439
	beq		x6, x5, beq.34531	# 1735
	lw		x6, 36(x4)	# 588
	addi	x9, x6, 8	# 593
	flw		f7, 0(x9)	# 593
	fmul	f8, f2, f7	# 1740
	addi	x9, x6, 4	# 583
	flw		f9, 0(x9)	# 583
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
	addi	x6, x6, 0	# 573
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
	jal		x0, beq_cont.34530	# 1735
beq.34531:
	addi	x6, x0, 40568	# 1736
	fsw		f4, 0(x6)	# 1736
	addi	x6, x0, 40572	# 1737
	fsw		f5, 0(x6)	# 1737
	addi	x6, x0, 40576	# 1738
	fsw		f6, 0(x6)	# 1738
beq_cont.34530:
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
	flw		f5, -32(x2)	# 120
	feq		f2, f5, feq.34533	# 120
	beq		x6, x5, beq.34535	# 341
	fdiv	f2, f25, f2	# 341
	jal		x0, feq_cont.34532	# 341
beq.34535:
	fdiv	f2, f30, f2	# 341
	jal		x0, feq_cont.34532	# 120
feq.34533:
	fadd	f2, f0, f30	# 341
feq_cont.34532:
	fmul	f1, f1, f2	# 342
	fsw		f1, 0(x9)	# 342
	fmul	f1, f3, f2	# 343
	fsw		f1, 0(x10)	# 343
	fmul	f1, f4, f2	# 344
	fsw		f1, 0(x11)	# 344
	jal		x0, beq_cont.34526	# 1752
beq.34529:
	lw		x6, 16(x4)	# 448
	addi	x9, x6, 0	# 453
	flw		f1, 0(x9)	# 453
	fsub	f1, f0, f1	# 123
	addi	x9, x0, 40568	# 1720
	fsw		f1, 0(x9)	# 1720
	addi	x9, x6, 4	# 463
	flw		f1, 0(x9)	# 463
	fsub	f1, f0, f1	# 123
	addi	x9, x0, 40572	# 1721
	fsw		f1, 0(x9)	# 1721
	addi	x6, x6, 8	# 473
	flw		f1, 0(x6)	# 473
	fsub	f1, f0, f1	# 123
	addi	x6, x0, 40576	# 1722
	fsw		f1, 0(x6)	# 1722
	jal		x0, beq_cont.34526	# 1750
beq.34527:
	addi	x6, x0, 40544	# 1711
	lw		x6, 0(x6)	# 1711
	addi	x8, x0, 40568	# 51
	flw		f1, -32(x2)	# 304
	fsw		f1, 0(x8)	# 304
	addi	x8, x0, 40572	# 305
	fsw		f1, 0(x8)	# 305
	addi	x8, x0, 40576	# 306
	fsw		f1, 0(x8)	# 306
	addi	x6, x6, -1	# 1714
	mul		x6, x30, x6	# 1714
	lw		x8, -120(x2)	# 1714
	add		x8, x8, x6	# 1714
	flw		f2, 0(x8)	# 1714
	feq		f2, f1, feq.34537	# 120
	fle		f2, f1, fle.34539	# 121
	fadd	f2, f0, f30	# 270
	jal		x0, feq_cont.34536	# 121
fle.34539:
	fadd	f2, f0, f25	# 271
	jal		x0, feq_cont.34536	# 120
feq.34537:
	fadd	f2, f0, f1	# 269
feq_cont.34536:
	fsub	f2, f0, f2	# 123
	addi	x6, x6, 40568	# 1714
	fsw		f2, 0(x6)	# 1714
beq_cont.34526:
	lw		x6, 0(x4)	# 400
	lw		x8, 32(x4)	# 538
	addi	x9, x8, 0	# 543
	flw		f1, 0(x9)	# 543
	addi	x9, x0, 40580	# 1767
	fsw		f1, 0(x9)	# 1767
	addi	x10, x8, 4	# 553
	flw		f1, 0(x10)	# 553
	addi	x10, x0, 40584	# 1768
	fsw		f1, 0(x10)	# 1768
	addi	x8, x8, 8	# 563
	flw		f1, 0(x8)	# 563
	addi	x8, x0, 40588	# 1769
	fsw		f1, 0(x8)	# 1769
	sw		x4, -128(x2)	# 1770
	beq		x6, x7, beq.34541	# 1770
	lw		x7, -28(x2)	# 1788
	beq		x6, x7, beq.34543	# 1788
	beq		x6, x24, beq.34545	# 1795
	lw		x7, -24(x2)	# 1806
	beq		x6, x7, beq.34547	# 1806
	jal		x0, beq_cont.34540	# 1806
beq.34547:
	flw		f1, 0(x25)	# 1808
	lw		x6, 20(x4)	# 488
	addi	x7, x6, 0	# 493
	flw		f2, 0(x7)	# 493
	fsub	f1, f1, f2	# 1808
	lw		x7, 16(x4)	# 448
	addi	x11, x7, 0	# 453
	flw		f2, 0(x11)	# 453
	fsqrt	f2, f2	# 1808
	fmul	f1, f1, f2	# 1808
	flw		f2, 0(x26)	# 1809
	addi	x11, x6, 8	# 513
	flw		f3, 0(x11)	# 513
	fsub	f2, f2, f3	# 1809
	addi	x11, x7, 8	# 473
	flw		f3, 0(x11)	# 473
	fsqrt	f3, f3	# 1809
	fmul	f2, f2, f3	# 1809
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1810
	flw		f4, -32(x2)	# 124
	fle		f1, f4, fle.34549	# 124
	fadd	f5, f0, f1	# 124
	jal		x0, fle_cont.34548	# 124
fle.34549:
	fsub	f5, f0, f1	# 124
fle_cont.34548:
	lui		x11, %hi(l.29612)	# 1812
	ori		x11, x11, %lo(l.29612)	# 1812
	flw		f6, 0(x11)	# 1812
	fsw		f3, -132(x2)	# 125
	fle		f6, f5, fle.34551	# 125
	lui		x11, %hi(l.29614)	# 1813
	ori		x11, x11, %lo(l.29614)	# 1813
	flw		f1, 0(x11)	# 1813
	jal		x0, fle_cont.34550	# 125
fle.34551:
	fdiv	f1, f2, f1	# 1815
	fle		f1, f4, fle.34553	# 124
	jal		x0, fle_cont.34552	# 124
fle.34553:
	fsub	f1, f0, f1	# 124
fle_cont.34552:
	sw		x1, -136(x2)	# 1817
	addi	x2, x2, -140	# 1817
	jal		x1, atan.2640.17996	# 1817
	addi	x2, x2, 140	# 1817
	lw		x1, -136(x2)	# 1817
	lui		x4, %hi(l.29617)	# 1817
	ori		x4, x4, %lo(l.29617)	# 1817
	flw		f2, 0(x4)	# 1817
	fmul	f1, f1, f2	# 1817
	lui		x4, %hi(l.29619)	# 1817
	ori		x4, x4, %lo(l.29619)	# 1817
	flw		f2, 0(x4)	# 1817
	fdiv	f1, f1, f2	# 1817
fle_cont.34550:
	sw		x7, -136(x2)	# 1819
	sw		x6, -140(x2)	# 1819
	fsw		f1, -144(x2)	# 1819
	sw		x1, -148(x2)	# 1819
	addi	x2, x2, -152	# 1819
	jal		x1, min_caml_floor	# 1819
	addi	x2, x2, 152	# 1819
	lw		x1, -148(x2)	# 1819
	flw		f2, -144(x2)	# 1819
	fsub	f1, f2, f1	# 1819
	flw		f2, 0(x27)	# 1821
	lw		x4, -140(x2)	# 503
	addi	x4, x4, 4	# 503
	flw		f3, 0(x4)	# 503
	fsub	f2, f2, f3	# 1821
	lw		x4, -136(x2)	# 463
	addi	x4, x4, 4	# 463
	flw		f3, 0(x4)	# 463
	fsqrt	f3, f3	# 1821
	fmul	f2, f2, f3	# 1821
	flw		f3, -32(x2)	# 124
	flw		f4, -132(x2)	# 124
	fle		f4, f3, fle.34555	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.34554	# 124
fle.34555:
	fsub	f5, f0, f4	# 124
fle_cont.34554:
	fsw		f1, -148(x2)	# 125
	fle		f6, f5, fle.34557	# 125
	lui		x4, %hi(l.29614)	# 1824
	ori		x4, x4, %lo(l.29614)	# 1824
	flw		f1, 0(x4)	# 1824
	jal		x0, fle_cont.34556	# 125
fle.34557:
	fdiv	f2, f2, f4	# 1826
	fle		f2, f3, fle.34559	# 124
	jal		x0, fle_cont.34558	# 124
fle.34559:
	fsub	f2, f0, f2	# 124
fle_cont.34558:
	fadd	f1, f0, f2	# 1827
	sw		x1, -152(x2)	# 1827
	addi	x2, x2, -156	# 1827
	jal		x1, atan.2640.17996	# 1827
	addi	x2, x2, 156	# 1827
	lw		x1, -152(x2)	# 1827
	lui		x4, %hi(l.29617)	# 1827
	ori		x4, x4, %lo(l.29617)	# 1827
	flw		f2, 0(x4)	# 1827
	fmul	f1, f1, f2	# 1827
	lui		x4, %hi(l.29619)	# 1827
	ori		x4, x4, %lo(l.29619)	# 1827
	flw		f2, 0(x4)	# 1827
	fdiv	f1, f1, f2	# 1827
fle_cont.34556:
	fsw		f1, -152(x2)	# 1829
	sw		x1, -156(x2)	# 1829
	addi	x2, x2, -160	# 1829
	jal		x1, min_caml_floor	# 1829
	addi	x2, x2, 160	# 1829
	lw		x1, -156(x2)	# 1829
	flw		f2, -152(x2)	# 1829
	fsub	f1, f2, f1	# 1829
	lui		x4, %hi(l.29630)	# 1830
	ori		x4, x4, %lo(l.29630)	# 1830
	flw		f2, 0(x4)	# 1830
	lui		x4, %hi(l.27933)	# 1830
	ori		x4, x4, %lo(l.27933)	# 1830
	flw		f3, 0(x4)	# 1830
	flw		f4, -148(x2)	# 1830
	fsub	f4, f3, f4	# 1830
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1830
	fsub	f1, f3, f1	# 1830
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1830
	flw		f2, -32(x2)	# 122
	fle		f2, f1, fle_cont.34560	# 122
	fadd	f1, f0, f2	# 1831
fle_cont.34560:
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f3, 0(x4)	# 25
	fmul	f1, f3, f1	# 1832
	lui		x4, %hi(l.29637)	# 1832
	ori		x4, x4, %lo(l.29637)	# 1832
	flw		f3, 0(x4)	# 1832
	fdiv	f1, f1, f3	# 1832
	fsw		f1, 0(x8)	# 1832
	jal		x0, beq_cont.34540	# 1795
beq.34545:
	flw		f1, 0(x25)	# 1798
	lw		x6, 20(x4)	# 488
	addi	x7, x6, 0	# 493
	flw		f2, 0(x7)	# 493
	fsub	f1, f1, f2	# 1798
	flw		f2, 0(x26)	# 1799
	addi	x6, x6, 8	# 513
	flw		f3, 0(x6)	# 513
	fsub	f2, f2, f3	# 1799
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1800
	fsqrt	f1, f1	# 1800
	fdiv	f1, f1, f28	# 1800
	fsw		f1, -156(x2)	# 1801
	sw		x1, -160(x2)	# 1801
	addi	x2, x2, -164	# 1801
	jal		x1, min_caml_floor	# 1801
	addi	x2, x2, 164	# 1801
	lw		x1, -160(x2)	# 1801
	flw		f2, -156(x2)	# 1801
	fsub	f1, f2, f1	# 1801
	lui		x4, %hi(l.29619)	# 1801
	ori		x4, x4, %lo(l.29619)	# 1801
	flw		f2, 0(x4)	# 1801
	fmul	f1, f1, f2	# 1801
	sw		x1, -160(x2)	# 1802
	addi	x2, x2, -164	# 1802
	jal		x1, cos.2638.17994	# 1802
	addi	x2, x2, 164	# 1802
	lw		x1, -160(x2)	# 1802
	fmul	f1, f1, f1	# 127
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f2, 0(x4)	# 25
	fmul	f3, f1, f2	# 1803
	fsw		f3, 0(x10)	# 1803
	fsub	f1, f30, f1	# 1804
	fmul	f1, f1, f2	# 1804
	fsw		f1, 0(x8)	# 1804
	jal		x0, beq_cont.34540	# 1788
beq.34543:
	flw		f1, 0(x27)	# 1791
	lui		x6, %hi(l.29655)	# 1791
	ori		x6, x6, %lo(l.29655)	# 1791
	flw		f2, 0(x6)	# 1791
	fmul	f1, f1, f2	# 1791
	sw		x1, -160(x2)	# 1791
	addi	x2, x2, -164	# 1791
	jal		x1, sin.2636.17992	# 1791
	addi	x2, x2, 164	# 1791
	lw		x1, -160(x2)	# 1791
	fmul	f1, f1, f1	# 127
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f2, 0(x4)	# 25
	fmul	f3, f2, f1	# 1792
	fsw		f3, 0(x9)	# 1792
	fsub	f1, f30, f1	# 1793
	fmul	f1, f2, f1	# 1793
	fsw		f1, 0(x10)	# 1793
	jal		x0, beq_cont.34540	# 1770
beq.34541:
	flw		f1, 0(x25)	# 1773
	lw		x6, 20(x4)	# 488
	addi	x7, x6, 0	# 493
	flw		f2, 0(x7)	# 493
	fsub	f1, f1, f2	# 1773
	fmul	f3, f1, f26	# 1775
	fsw		f26, -160(x2)	# 1775
	sw		x6, -164(x2)	# 1775
	fsw		f1, -168(x2)	# 1775
	fadd	f1, f0, f3	# 1775
	sw		x1, -172(x2)	# 1775
	addi	x2, x2, -176	# 1775
	jal		x1, min_caml_floor	# 1775
	addi	x2, x2, 176	# 1775
	lw		x1, -172(x2)	# 1775
	fmul	f1, f1, f27	# 1775
	flw		f3, -168(x2)	# 1776
	fsub	f1, f3, f1	# 1776
	flw		f4, 0(x26)	# 1778
	lw		x4, -164(x2)	# 513
	addi	x4, x4, 8	# 513
	flw		f5, 0(x4)	# 513
	fsub	f4, f4, f5	# 1778
	flw		f5, -160(x2)	# 1780
	fmul	f5, f4, f5	# 1780
	fsw		f1, -172(x2)	# 1780
	fsw		f27, -176(x2)	# 1780
	fadd	f1, f0, f5	# 1780
	sw		x1, -180(x2)	# 1780
	addi	x2, x2, -184	# 1780
	jal		x1, min_caml_floor	# 1780
	addi	x2, x2, 184	# 1780
	lw		x1, -180(x2)	# 1780
	flw		f2, -176(x2)	# 1780
	fmul	f1, f1, f2	# 1780
	fsub	f1, f4, f1	# 1781
	flw		f2, -172(x2)	# 125
	fle		f28, f2, fle.34563	# 125
	fle		f28, f1, fle.34565	# 125
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f1, 0(x4)	# 25
	jal		x0, fle_cont.34562	# 125
fle.34565:
	flw		f1, -32(x2)	# 1785
	jal		x0, fle_cont.34562	# 125
fle.34563:
	fle		f28, f1, fle.34567	# 125
	flw		f1, -32(x2)	# 1786
	jal		x0, fle_cont.34562	# 125
fle.34567:
	lui		x4, %hi(l.29635)	# 25
	ori		x4, x4, %lo(l.29635)	# 25
	flw		f1, 0(x4)	# 25
fle_cont.34562:
	fsw		f1, 0(x10)	# 1783
beq_cont.34540:
	lw		x4, -44(x2)	# 1990
	lw		x5, -116(x2)	# 1990
	sw		x8, -180(x2)	# 1990
	sw		x10, -184(x2)	# 1990
	sw		x9, -188(x2)	# 1990
	sw		x1, -192(x2)	# 1990
	addi	x2, x2, -196	# 1990
	jal		x1, shadow_check_one_or_matrix.2934.18032	# 1990
	addi	x2, x2, 196	# 1990
	lw		x1, -192(x2)	# 1990
	lw		x5, -44(x2)	# 1990
	beq		x4, x5, beq.34569	# 1990
	jal		x0, fle_cont.34466	# 1990
beq.34569:
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
	flw		f2, -32(x2)	# 121
	fle		f1, f2, fle.34571	# 121
	jal		x0, fle_cont.34570	# 121
fle.34571:
	fadd	f1, f0, f2	# 1992
fle_cont.34570:
	flw		f2, -112(x2)	# 1993
	fmul	f1, f2, f1	# 1993
	lw		x4, -128(x2)	# 518
	lw		x4, 28(x4)	# 518
	addi	x4, x4, 0	# 523
	flw		f2, 0(x4)	# 523
	fmul	f1, f1, f2	# 1993
	addi	x4, x0, 40592	# 359
	flw		f2, 0(x4)	# 359
	lw		x5, -188(x2)	# 359
	flw		f3, 0(x5)	# 359
	fmul	f3, f1, f3	# 359
	fadd	f2, f2, f3	# 359
	fsw		f2, 0(x4)	# 359
	addi	x4, x0, 40596	# 360
	flw		f2, 0(x4)	# 360
	lw		x5, -184(x2)	# 360
	flw		f3, 0(x5)	# 360
	fmul	f3, f1, f3	# 360
	fadd	f2, f2, f3	# 360
	fsw		f2, 0(x4)	# 360
	addi	x4, x0, 40600	# 361
	flw		f2, 0(x4)	# 361
	lw		x5, -180(x2)	# 361
	flw		f3, 0(x5)	# 361
	fmul	f1, f1, f3	# 361
	fadd	f1, f2, f1	# 361
	fsw		f1, 0(x4)	# 361
fle_cont.34466:
	lw		x4, -12(x2)	# 2011
	addi	x7, x4, -2	# 2011
	lw		x4, -8(x2)	# 2011
	lw		x5, -4(x2)	# 2011
	lw		x6, 0(x2)	# 2011
	jal		x0, iter_trace_diffuse_rays.2995.18070	# 2011
do_without_neighbors.3017.18075:
	ble		x5, x30, ble.34572	# 2092
	jalr	x0, x1, 0	# 2102
ble.34572:
	lw		x7, 8(x4)	# 634
	mul		x8, x30, x5	# 2095
	add		x7, x7, x8	# 2095
	lw		x7, 0(x7)	# 2095
	ble		x0, x7, ble.34574	# 2095
	jalr	x0, x1, 0	# 2101
ble.34574:
	lw		x7, 12(x4)	# 641
	add		x7, x7, x8	# 2097
	lw		x7, 0(x7)	# 2097
	sw		x4, 0(x2)	# 2097
	sw		x5, -4(x2)	# 2097
	beq		x7, x0, beq_cont.34576	# 2097
	lw		x7, 20(x4)	# 655
	lw		x10, 28(x4)	# 685
	lw		x11, 4(x4)	# 626
	lw		x12, 16(x4)	# 648
	add		x7, x7, x8	# 2059
	lw		x7, 0(x7)	# 2059
	addi	x13, x7, 0	# 316
	flw		f1, 0(x13)	# 316
	addi	x13, x0, 40592	# 316
	fsw		f1, 0(x13)	# 316
	addi	x15, x7, 4	# 317
	flw		f1, 0(x15)	# 317
	addi	x15, x0, 40596	# 317
	fsw		f1, 0(x15)	# 317
	addi	x7, x7, 8	# 318
	flw		f1, 0(x7)	# 318
	addi	x7, x0, 40600	# 318
	fsw		f1, 0(x7)	# 318
	lw		x17, 24(x4)	# 671
	addi	x17, x17, 0	# 673
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
	sw		x22, -32(x2)	# 2028
	sw		x10, -36(x2)	# 2028
	sw		x11, -40(x2)	# 2028
	sw		x21, -44(x2)	# 2028
	sw		x17, -48(x2)	# 2028
	beq		x17, x0, beq_cont.34578	# 2028
	addi	x9, x0, 40716	# 2029
	lw		x9, 0(x9)	# 2029
	addi	x18, x11, 0	# 316
	flw		f1, 0(x18)	# 316
	addi	x18, x0, 40648	# 316
	fsw		f1, 0(x18)	# 316
	addi	x18, x11, 4	# 317
	flw		f1, 0(x18)	# 317
	addi	x18, x0, 40652	# 317
	fsw		f1, 0(x18)	# 317
	addi	x18, x11, 8	# 318
	flw		f1, 0(x18)	# 318
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
beq_cont.34578:
	lw		x4, -44(x2)	# 2032
	lw		x5, -48(x2)	# 2032
	beq		x5, x4, beq_cont.34580	# 2032
	addi	x4, x0, 40720	# 2033
	lw		x4, 0(x4)	# 2033
	lw		x6, -40(x2)	# 316
	addi	x7, x6, 0	# 316
	flw		f1, 0(x7)	# 316
	addi	x7, x0, 40648	# 316
	fsw		f1, 0(x7)	# 316
	addi	x7, x6, 4	# 317
	flw		f1, 0(x7)	# 317
	addi	x7, x0, 40652	# 317
	fsw		f1, 0(x7)	# 317
	addi	x7, x6, 8	# 318
	flw		f1, 0(x7)	# 318
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
beq_cont.34580:
	lw		x4, -32(x2)	# 2036
	lw		x5, -48(x2)	# 2036
	beq		x5, x4, beq_cont.34582	# 2036
	addi	x4, x0, 40724	# 2037
	lw		x4, 0(x4)	# 2037
	lw		x6, -40(x2)	# 316
	addi	x7, x6, 0	# 316
	flw		f1, 0(x7)	# 316
	addi	x7, x0, 40648	# 316
	fsw		f1, 0(x7)	# 316
	addi	x7, x6, 4	# 317
	flw		f1, 0(x7)	# 317
	addi	x7, x0, 40652	# 317
	fsw		f1, 0(x7)	# 317
	addi	x7, x6, 8	# 318
	flw		f1, 0(x7)	# 318
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
beq_cont.34582:
	lw		x5, -48(x2)	# 2040
	beq		x5, x24, beq_cont.34584	# 2040
	addi	x4, x0, 40728	# 2041
	lw		x4, 0(x4)	# 2041
	lw		x6, -40(x2)	# 316
	addi	x7, x6, 0	# 316
	flw		f1, 0(x7)	# 316
	addi	x7, x0, 40648	# 316
	fsw		f1, 0(x7)	# 316
	addi	x7, x6, 4	# 317
	flw		f1, 0(x7)	# 317
	addi	x7, x0, 40652	# 317
	fsw		f1, 0(x7)	# 317
	addi	x7, x6, 8	# 318
	flw		f1, 0(x7)	# 318
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
beq_cont.34584:
	lw		x4, -28(x2)	# 2044
	lw		x5, -48(x2)	# 2044
	beq		x5, x4, beq_cont.34586	# 2044
	addi	x4, x0, 40732	# 2045
	lw		x4, 0(x4)	# 2045
	lw		x5, -40(x2)	# 316
	addi	x6, x5, 0	# 316
	flw		f1, 0(x6)	# 316
	addi	x6, x0, 40648	# 316
	fsw		f1, 0(x6)	# 316
	addi	x6, x5, 4	# 317
	flw		f1, 0(x6)	# 317
	addi	x6, x0, 40652	# 317
	fsw		f1, 0(x6)	# 317
	addi	x6, x5, 8	# 318
	flw		f1, 0(x6)	# 318
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
beq_cont.34586:
	lw		x4, -24(x2)	# 2064
	lw		x5, -20(x2)	# 2064
	add		x4, x4, x5	# 2064
	lw		x4, 0(x4)	# 2064
	addi	x5, x0, 40604	# 389
	flw		f1, 0(x5)	# 389
	addi	x6, x4, 0	# 389
	flw		f2, 0(x6)	# 389
	lw		x6, -16(x2)	# 389
	flw		f3, 0(x6)	# 389
	fmul	f2, f2, f3	# 389
	fadd	f1, f1, f2	# 389
	fsw		f1, 0(x5)	# 389
	addi	x5, x0, 40608	# 390
	flw		f1, 0(x5)	# 390
	addi	x6, x4, 4	# 390
	flw		f2, 0(x6)	# 390
	lw		x6, -12(x2)	# 390
	flw		f3, 0(x6)	# 390
	fmul	f2, f2, f3	# 390
	fadd	f1, f1, f2	# 390
	fsw		f1, 0(x5)	# 390
	addi	x5, x0, 40612	# 391
	flw		f1, 0(x5)	# 391
	addi	x4, x4, 8	# 391
	flw		f2, 0(x4)	# 391
	lw		x4, -8(x2)	# 391
	flw		f3, 0(x4)	# 391
	fmul	f2, f2, f3	# 391
	fadd	f1, f1, f2	# 391
	fsw		f1, 0(x5)	# 391
beq_cont.34576:
	lw		x4, -4(x2)	# 2100
	addi	x5, x4, 1	# 2100
	lw		x4, 0(x2)	# 2100
	jal		x0, do_without_neighbors.3017.18075	# 2100
try_exploit_neighbors.3033.18078:
	mul		x10, x30, x4	# 2144
	add		x11, x7, x10	# 2144
	lw		x11, 0(x11)	# 2144
	ble		x9, x30, ble.34588	# 2145
	jalr	x0, x1, 0	# 2164
ble.34588:
	lw		x12, 8(x11)	# 634
	mul		x13, x30, x9	# 2120
	add		x12, x12, x13	# 2120
	lw		x12, 0(x12)	# 2120
	ble		x0, x12, ble.34590	# 2148
	jalr	x0, x1, 0	# 2163
ble.34590:
	add		x15, x6, x10	# 2128
	lw		x15, 0(x15)	# 2128
	lw		x16, 8(x15)	# 634
	add		x16, x16, x13	# 2120
	lw		x16, 0(x16)	# 2120
	beq		x16, x12, beq.34593	# 2128
	addi	x12, x0, 0	# 2136
	jal		x0, beq_cont.34592	# 2128
beq.34593:
	add		x16, x8, x10	# 2129
	lw		x16, 0(x16)	# 2129
	lw		x16, 8(x16)	# 634
	add		x16, x16, x13	# 2120
	lw		x16, 0(x16)	# 2120
	beq		x16, x12, beq.34595	# 2129
	addi	x12, x0, 0	# 2135
	jal		x0, beq_cont.34592	# 2129
beq.34595:
	addi	x16, x4, -1	# 2130
	mul		x16, x30, x16	# 2130
	add		x16, x7, x16	# 2130
	lw		x16, 0(x16)	# 2130
	lw		x16, 8(x16)	# 634
	add		x16, x16, x13	# 2120
	lw		x16, 0(x16)	# 2120
	beq		x16, x12, beq.34597	# 2130
	addi	x12, x0, 0	# 2134
	jal		x0, beq_cont.34592	# 2130
beq.34597:
	addi	x16, x4, 1	# 2131
	mul		x16, x30, x16	# 2131
	add		x16, x7, x16	# 2131
	lw		x16, 0(x16)	# 2131
	lw		x16, 8(x16)	# 634
	add		x16, x16, x13	# 2120
	lw		x16, 0(x16)	# 2120
	beq		x16, x12, beq.34599	# 2131
	addi	x12, x0, 0	# 2133
	jal		x0, beq_cont.34592	# 2131
beq.34599:
	addi	x12, x0, 1	# 2132
beq_cont.34592:
	beq		x12, x0, beq.34600	# 2150
	lw		x12, 12(x11)	# 641
	add		x12, x12, x13	# 2154
	lw		x12, 0(x12)	# 2154
	beq		x12, x0, beq_cont.34601	# 2154
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
	addi	x17, x12, 0	# 316
	flw		f1, 0(x17)	# 316
	addi	x17, x0, 40592	# 316
	fsw		f1, 0(x17)	# 316
	addi	x18, x12, 4	# 317
	flw		f1, 0(x18)	# 317
	addi	x18, x0, 40596	# 317
	fsw		f1, 0(x18)	# 317
	addi	x12, x12, 8	# 318
	flw		f1, 0(x12)	# 318
	addi	x12, x0, 40600	# 318
	fsw		f1, 0(x12)	# 318
	add		x14, x14, x13	# 2080
	lw		x14, 0(x14)	# 2080
	flw		f1, 0(x17)	# 366
	addi	x19, x14, 0	# 366
	flw		f2, 0(x19)	# 366
	fadd	f1, f1, f2	# 366
	fsw		f1, 0(x17)	# 366
	flw		f1, 0(x18)	# 367
	addi	x19, x14, 4	# 367
	flw		f2, 0(x19)	# 367
	fadd	f1, f1, f2	# 367
	fsw		f1, 0(x18)	# 367
	flw		f1, 0(x12)	# 368
	addi	x14, x14, 8	# 368
	flw		f2, 0(x14)	# 368
	fadd	f1, f1, f2	# 368
	fsw		f1, 0(x12)	# 368
	add		x14, x15, x13	# 2081
	lw		x14, 0(x14)	# 2081
	flw		f1, 0(x17)	# 366
	addi	x15, x14, 0	# 366
	flw		f2, 0(x15)	# 366
	fadd	f1, f1, f2	# 366
	fsw		f1, 0(x17)	# 366
	flw		f1, 0(x18)	# 367
	addi	x15, x14, 4	# 367
	flw		f2, 0(x15)	# 367
	fadd	f1, f1, f2	# 367
	fsw		f1, 0(x18)	# 367
	flw		f1, 0(x12)	# 368
	addi	x14, x14, 8	# 368
	flw		f2, 0(x14)	# 368
	fadd	f1, f1, f2	# 368
	fsw		f1, 0(x12)	# 368
	add		x14, x16, x13	# 2082
	lw		x14, 0(x14)	# 2082
	flw		f1, 0(x17)	# 366
	addi	x15, x14, 0	# 366
	flw		f2, 0(x15)	# 366
	fadd	f1, f1, f2	# 366
	fsw		f1, 0(x17)	# 366
	flw		f1, 0(x18)	# 367
	addi	x15, x14, 4	# 367
	flw		f2, 0(x15)	# 367
	fadd	f1, f1, f2	# 367
	fsw		f1, 0(x18)	# 367
	flw		f1, 0(x12)	# 368
	addi	x14, x14, 8	# 368
	flw		f2, 0(x14)	# 368
	fadd	f1, f1, f2	# 368
	fsw		f1, 0(x12)	# 368
	add		x10, x10, x13	# 2083
	lw		x10, 0(x10)	# 2083
	flw		f1, 0(x17)	# 366
	addi	x14, x10, 0	# 366
	flw		f2, 0(x14)	# 366
	fadd	f1, f1, f2	# 366
	fsw		f1, 0(x17)	# 366
	flw		f1, 0(x18)	# 367
	addi	x14, x10, 4	# 367
	flw		f2, 0(x14)	# 367
	fadd	f1, f1, f2	# 367
	fsw		f1, 0(x18)	# 367
	flw		f1, 0(x12)	# 368
	addi	x10, x10, 8	# 368
	flw		f2, 0(x10)	# 368
	fadd	f1, f1, f2	# 368
	fsw		f1, 0(x12)	# 368
	lw		x10, 16(x11)	# 648
	add		x10, x10, x13	# 2086
	lw		x10, 0(x10)	# 2086
	addi	x11, x0, 40604	# 389
	flw		f1, 0(x11)	# 389
	addi	x13, x10, 0	# 389
	flw		f2, 0(x13)	# 389
	flw		f3, 0(x17)	# 389
	fmul	f2, f2, f3	# 389
	fadd	f1, f1, f2	# 389
	fsw		f1, 0(x11)	# 389
	addi	x11, x0, 40608	# 390
	flw		f1, 0(x11)	# 390
	addi	x13, x10, 4	# 390
	flw		f2, 0(x13)	# 390
	flw		f3, 0(x18)	# 390
	fmul	f2, f2, f3	# 390
	fadd	f1, f1, f2	# 390
	fsw		f1, 0(x11)	# 390
	addi	x11, x0, 40612	# 391
	flw		f1, 0(x11)	# 391
	addi	x10, x10, 8	# 391
	flw		f2, 0(x10)	# 391
	flw		f3, 0(x12)	# 391
	fmul	f2, f2, f3	# 391
	fadd	f1, f1, f2	# 391
	fsw		f1, 0(x11)	# 391
beq_cont.34601:
	addi	x9, x9, 1	# 2159
	jal		x0, try_exploit_neighbors.3033.18078	# 2159
beq.34600:
	addi	x5, x9, 0	# 2162
	addi	x4, x11, 0	# 2162
	jal		x0, do_without_neighbors.3017.18075	# 2162
pretrace_diffuse_rays.3048.18085:
	ble		x5, x30, ble.34603	# 2220
	jalr	x0, x1, 0	# 2244
ble.34603:
	lw		x6, 8(x4)	# 634
	mul		x7, x30, x5	# 2120
	add		x6, x6, x7	# 2120
	lw		x6, 0(x6)	# 2120
	ble		x0, x6, ble.34605	# 2224
	jalr	x0, x1, 0	# 2243
ble.34605:
	lw		x6, 12(x4)	# 641
	add		x6, x6, x7	# 2227
	lw		x6, 0(x6)	# 2227
	sw		x5, 0(x2)	# 2227
	beq		x6, x0, beq_cont.34607	# 2227
	lw		x6, 24(x4)	# 671
	addi	x6, x6, 0	# 673
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
	addi	x13, x12, 0	# 316
	flw		f1, 0(x13)	# 316
	addi	x13, x0, 40648	# 316
	fsw		f1, 0(x13)	# 316
	addi	x13, x12, 4	# 317
	flw		f1, 0(x13)	# 317
	addi	x13, x0, 40652	# 317
	fsw		f1, 0(x13)	# 317
	addi	x13, x12, 8	# 318
	flw		f1, 0(x13)	# 318
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
	addi	x6, x5, 0	# 316
	fsw		f1, 0(x6)	# 316
	lw		x6, -8(x2)	# 317
	flw		f1, 0(x6)	# 317
	addi	x6, x5, 4	# 317
	fsw		f1, 0(x6)	# 317
	lw		x6, -4(x2)	# 318
	flw		f1, 0(x6)	# 318
	addi	x5, x5, 8	# 318
	fsw		f1, 0(x5)	# 318
beq_cont.34607:
	lw		x5, 0(x2)	# 2242
	addi	x5, x5, 1	# 2242
	jal		x0, pretrace_diffuse_rays.3048.18085	# 2242
pretrace_pixels.3051.18088:
	add		x7, x0, x0	# 6
	ble		x0, x5, ble.34609	# 2250
	jalr	x0, x1, 0	# 2270
ble.34609:
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
	feq		f2, f0, feq.34612	# 120
	fdiv	f2, f30, f2	# 341
	jal		x0, feq_cont.34611	# 120
feq.34612:
	fadd	f2, f0, f30	# 341
feq_cont.34611:
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
	addi	x6, x5, 0	# 316
	fsw		f1, 0(x6)	# 316
	lw		x6, -32(x2)	# 317
	flw		f1, 0(x6)	# 317
	addi	x6, x5, 4	# 317
	fsw		f1, 0(x6)	# 317
	lw		x6, -28(x2)	# 318
	flw		f1, 0(x6)	# 318
	addi	x5, x5, 8	# 318
	fsw		f1, 0(x5)	# 318
	lw		x5, 24(x4)	# 678
	addi	x5, x5, 0	# 680
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
	ble		x6, x4, ble.34614	# 282
	addi	x6, x4, 0	# 282
	jal		x0, ble_cont.34613	# 282
ble.34614:
	addi	x6, x4, -5	# 282
ble_cont.34613:
	lw		x4, -4(x2)	# 2268
	flw		f1, -16(x2)	# 2268
	flw		f2, -12(x2)	# 2268
	flw		f3, -20(x2)	# 2268
	jal		x0, pretrace_pixels.3051.18088	# 2268
scan_pixel.3062.18095:
	add		x10, x0, x0	# 6
	addi	x11, x0, 40616	# 2291
	lw		x11, 0(x11)	# 2291
	ble		x11, x4, ble.34615	# 2291
	mul		x12, x30, x4	# 2294
	add		x12, x7, x12	# 2294
	lw		x12, 0(x12)	# 2294
	lw		x13, 0(x12)	# 619
	addi	x14, x13, 0	# 316
	flw		f1, 0(x14)	# 316
	addi	x14, x0, 40604	# 316
	fsw		f1, 0(x14)	# 316
	addi	x15, x13, 4	# 317
	flw		f1, 0(x15)	# 317
	addi	x15, x0, 40608	# 317
	fsw		f1, 0(x15)	# 317
	addi	x13, x13, 8	# 318
	flw		f1, 0(x13)	# 318
	addi	x13, x0, 40612	# 318
	fsw		f1, 0(x13)	# 318
	addi	x16, x0, 40620	# 2107
	lw		x16, 0(x16)	# 2107
	addi	x17, x5, 1	# 2107
	ble		x16, x17, ble.34617	# 2107
	ble		x5, x0, ble.34619	# 2108
	addi	x16, x4, 1	# 2109
	ble		x11, x16, ble.34621	# 2109
	ble		x4, x0, ble.34623	# 2110
	addi	x11, x0, 1	# 2111
	jal		x0, ble_cont.34616	# 2110
ble.34623:
	addi	x11, x0, 0	# 2112
	jal		x0, ble_cont.34616	# 2109
ble.34621:
	addi	x11, x0, 0	# 2113
	jal		x0, ble_cont.34616	# 2108
ble.34619:
	addi	x11, x0, 0	# 2114
	jal		x0, ble_cont.34616	# 2107
ble.34617:
	addi	x11, x0, 0	# 2115
ble_cont.34616:
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
	beq		x11, x0, beq.34625	# 2297
	addi	x9, x0, 0	# 2298
	sw		x1, -40(x2)	# 2298
	addi	x2, x2, -44	# 2298
	jal		x1, try_exploit_neighbors.3033.18078	# 2298
	addi	x2, x2, 44	# 2298
	lw		x1, -40(x2)	# 2298
	jal		x0, beq_cont.34624	# 2297
beq.34625:
	addi	x5, x0, 0	# 2300
	addi	x4, x12, 0	# 2300
	sw		x1, -40(x2)	# 2300
	addi	x2, x2, -44	# 2300
	jal		x1, do_without_neighbors.3017.18075	# 2300
	addi	x2, x2, 44	# 2300
	lw		x1, -40(x2)	# 2300
beq_cont.34624:
	lw		x5, -36(x2)	# 2197
	beq		x5, x24, beq.34627	# 2197
	lw		x4, -32(x2)	# 2205
	flw		f1, 0(x4)	# 2205
	sw		x1, -40(x2)	# 2191
	addi	x2, x2, -44	# 2191
	jal		x1, min_caml_int_of_float	# 2191
	addi	x2, x2, 44	# 2191
	lw		x1, -40(x2)	# 2191
	addi	x5, x0, 255	# 2192
	ble		x4, x5, ble.34629	# 2192
	addi	x4, x0, 255	# 2192
	jal		x0, ble_cont.34628	# 2192
ble.34629:
	lw		x6, -28(x2)	# 2192
	ble		x6, x4, ble_cont.34628	# 2192
	addi	x4, x0, 0	# 2192
ble_cont.34628:
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
	ble		x4, x5, ble.34633	# 2192
	addi	x4, x0, 255	# 2192
	jal		x0, ble_cont.34632	# 2192
ble.34633:
	lw		x6, -28(x2)	# 2192
	ble		x6, x4, ble_cont.34632	# 2192
	addi	x4, x0, 0	# 2192
ble_cont.34632:
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
	ble		x4, x5, ble.34637	# 2192
	addi	x4, x0, 255	# 2192
	jal		x0, ble_cont.34636	# 2192
ble.34637:
	lw		x5, -28(x2)	# 2192
	ble		x5, x4, ble_cont.34636	# 2192
	addi	x4, x0, 0	# 2192
ble_cont.34636:
	sw		x1, -44(x2)	# 2193
	addi	x2, x2, -48	# 2193
	jal		x1, min_caml_print_char	# 2193
	addi	x2, x2, 48	# 2193
	lw		x1, -44(x2)	# 2193
	jal		x0, beq_cont.34626	# 2197
beq.34627:
	lw		x4, -32(x2)	# 2198
	flw		f1, 0(x4)	# 2198
	sw		x1, -44(x2)	# 2185
	addi	x2, x2, -48	# 2185
	jal		x1, min_caml_int_of_float	# 2185
	addi	x2, x2, 48	# 2185
	lw		x1, -44(x2)	# 2185
	addi	x5, x0, 255	# 2186
	ble		x4, x5, ble.34641	# 2186
	addi	x4, x0, 255	# 2186
	jal		x0, ble_cont.34640	# 2186
ble.34641:
	lw		x6, -28(x2)	# 2186
	ble		x6, x4, ble_cont.34640	# 2186
	addi	x4, x0, 0	# 2186
ble_cont.34640:
	addi	x6, x0, 100	# 238
	sw		x4, -44(x2)	# 238
	ble		x6, x4, ble_cont.34644	# 238
	addi	x7, x0, 48	# 238
	addi	x4, x7, 0	# 238
	sw		x1, -48(x2)	# 238
	addi	x2, x2, -52	# 238
	jal		x1, min_caml_print_char	# 238
	addi	x2, x2, 52	# 238
	lw		x1, -48(x2)	# 238
ble_cont.34644:
	addi	x4, x0, 10	# 239
	lw		x7, -44(x2)	# 239
	sw		x4, -48(x2)	# 239
	ble		x4, x7, ble_cont.34646	# 239
	addi	x8, x0, 48	# 239
	addi	x4, x8, 0	# 239
	sw		x1, -52(x2)	# 239
	addi	x2, x2, -56	# 239
	jal		x1, min_caml_print_char	# 239
	addi	x2, x2, 56	# 239
	lw		x1, -52(x2)	# 239
ble_cont.34646:
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
	ble		x4, x5, ble.34649	# 2186
	addi	x4, x0, 255	# 2186
	jal		x0, ble_cont.34648	# 2186
ble.34649:
	lw		x6, -28(x2)	# 2186
	ble		x6, x4, ble_cont.34648	# 2186
	addi	x4, x0, 0	# 2186
ble_cont.34648:
	lw		x6, -52(x2)	# 238
	sw		x4, -64(x2)	# 238
	ble		x6, x4, ble_cont.34652	# 238
	addi	x7, x0, 48	# 238
	addi	x4, x7, 0	# 238
	sw		x1, -68(x2)	# 238
	addi	x2, x2, -72	# 238
	jal		x1, min_caml_print_char	# 238
	addi	x2, x2, 72	# 238
	lw		x1, -68(x2)	# 238
ble_cont.34652:
	lw		x4, -64(x2)	# 239
	lw		x7, -48(x2)	# 239
	ble		x7, x4, ble_cont.34654	# 239
	addi	x8, x0, 48	# 239
	addi	x4, x8, 0	# 239
	sw		x1, -68(x2)	# 239
	addi	x2, x2, -72	# 239
	jal		x1, min_caml_print_char	# 239
	addi	x2, x2, 72	# 239
	lw		x1, -68(x2)	# 239
ble_cont.34654:
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
	ble		x4, x5, ble.34657	# 2186
	addi	x4, x0, 255	# 2186
	jal		x0, ble_cont.34656	# 2186
ble.34657:
	lw		x5, -28(x2)	# 2186
	ble		x5, x4, ble_cont.34656	# 2186
	addi	x4, x0, 0	# 2186
ble_cont.34656:
	lw		x5, -52(x2)	# 238
	sw		x4, -68(x2)	# 238
	ble		x5, x4, ble_cont.34660	# 238
	addi	x5, x0, 48	# 238
	addi	x4, x5, 0	# 238
	sw		x1, -72(x2)	# 238
	addi	x2, x2, -76	# 238
	jal		x1, min_caml_print_char	# 238
	addi	x2, x2, 76	# 238
	lw		x1, -72(x2)	# 238
ble_cont.34660:
	lw		x4, -68(x2)	# 239
	lw		x5, -48(x2)	# 239
	ble		x5, x4, ble_cont.34662	# 239
	addi	x6, x0, 48	# 239
	addi	x4, x6, 0	# 239
	sw		x1, -72(x2)	# 239
	addi	x2, x2, -76	# 239
	jal		x1, min_caml_print_char	# 239
	addi	x2, x2, 76	# 239
	lw		x1, -72(x2)	# 239
ble_cont.34662:
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
beq_cont.34626:
	lw		x4, -16(x2)	# 2305
	addi	x4, x4, 1	# 2305
	lw		x5, -12(x2)	# 2305
	lw		x6, -8(x2)	# 2305
	lw		x7, -4(x2)	# 2305
	lw		x8, 0(x2)	# 2305
	lw		x9, -36(x2)	# 2305
	jal		x0, scan_pixel.3062.18095	# 2305
ble.34615:
	jalr	x0, x1, 0	# 2306
scan_line.3069.18102:
	addi	x10, x0, 40620	# 2312
	lw		x10, 0(x10)	# 2312
	ble		x10, x4, ble.34665	# 2312
	addi	x10, x10, -1	# 2314
	sw		x8, 0(x2)	# 2314
	sw		x9, -4(x2)	# 2314
	sw		x7, -8(x2)	# 2314
	sw		x6, -12(x2)	# 2314
	sw		x5, -16(x2)	# 2314
	sw		x4, -20(x2)	# 2314
	ble		x10, x4, ble_cont.34666	# 2314
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
ble_cont.34666:
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
	ble		x6, x5, ble.34669	# 282
	addi	x8, x5, 0	# 282
	jal		x0, ble_cont.34668	# 282
ble.34669:
	addi	x8, x5, -5	# 282
ble_cont.34668:
	lw		x5, -12(x2)	# 2318
	lw		x6, -8(x2)	# 2318
	lw		x7, -16(x2)	# 2318
	lw		x9, -4(x2)	# 2318
	jal		x0, scan_line.3069.18102	# 2318
ble.34665:
	jalr	x0, x1, 0	# 2319
init_line_elements.3080.18109:
	add		x6, x0, x0	# 6
	ble		x0, x5, ble.34671	# 2354
	jalr	x0, x1, 0	# 2358
ble.34671:
	fadd	f1, f0, f0	# 11
	add		x7, x0, x24	# 16
	sw		x4, 0(x2)	# 2341
	sw		x5, -4(x2)	# 2341
	fsw		f0, -8(x2)	# 2341
	sw		x24, -12(x2)	# 2341
	addi	x4, x24, 0	# 2341
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
	addi	x7, x6, 4	# 2331
	sw		x4, 0(x7)	# 2331
	lw		x4, -12(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x21, -32(x2)	# 2332
	sw		x1, -36(x2)	# 2332
	addi	x2, x2, -40	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 40	# 2332
	lw		x1, -36(x2)	# 2332
	addi	x5, x6, 8	# 2332
	sw		x4, 0(x5)	# 2332
	lw		x4, -12(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -36(x2)	# 2333
	addi	x2, x2, -40	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 40	# 2333
	lw		x1, -36(x2)	# 2333
	addi	x5, x6, 12	# 2333
	sw		x4, 0(x5)	# 2333
	lw		x4, -12(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -36(x2)	# 2334
	addi	x2, x2, -40	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 40	# 2334
	lw		x1, -36(x2)	# 2334
	addi	x5, x6, 16	# 2334
	sw		x4, 0(x5)	# 2334
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
	addi	x6, x5, 4	# 2331
	sw		x4, 0(x6)	# 2331
	lw		x4, -12(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -48(x2)	# 2332
	addi	x2, x2, -52	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 52	# 2332
	lw		x1, -48(x2)	# 2332
	lw		x5, -44(x2)	# 2332
	addi	x6, x5, 8	# 2332
	sw		x4, 0(x6)	# 2332
	lw		x4, -12(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -48(x2)	# 2333
	addi	x2, x2, -52	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 52	# 2333
	lw		x1, -48(x2)	# 2333
	lw		x5, -44(x2)	# 2333
	addi	x6, x5, 12	# 2333
	sw		x4, 0(x6)	# 2333
	lw		x4, -12(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -48(x2)	# 2334
	addi	x2, x2, -52	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 52	# 2334
	lw		x1, -48(x2)	# 2334
	lw		x5, -44(x2)	# 2334
	addi	x6, x5, 16	# 2334
	sw		x4, 0(x6)	# 2334
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
	addi	x6, x5, 4	# 2331
	sw		x4, 0(x6)	# 2331
	lw		x4, -12(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -52(x2)	# 2332
	addi	x2, x2, -56	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 56	# 2332
	lw		x1, -52(x2)	# 2332
	lw		x5, -48(x2)	# 2332
	addi	x6, x5, 8	# 2332
	sw		x4, 0(x6)	# 2332
	lw		x4, -12(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -52(x2)	# 2333
	addi	x2, x2, -56	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 56	# 2333
	lw		x1, -52(x2)	# 2333
	lw		x5, -48(x2)	# 2333
	addi	x6, x5, 12	# 2333
	sw		x4, 0(x6)	# 2333
	lw		x4, -12(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -52(x2)	# 2334
	addi	x2, x2, -56	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 56	# 2334
	lw		x1, -52(x2)	# 2334
	lw		x5, -48(x2)	# 2334
	addi	x6, x5, 16	# 2334
	sw		x4, 0(x6)	# 2334
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
	addi	x6, x5, 4	# 2331
	sw		x4, 0(x6)	# 2331
	lw		x4, -12(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -60(x2)	# 2332
	addi	x2, x2, -64	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 64	# 2332
	lw		x1, -60(x2)	# 2332
	lw		x5, -56(x2)	# 2332
	addi	x6, x5, 8	# 2332
	sw		x4, 0(x6)	# 2332
	lw		x4, -12(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -60(x2)	# 2333
	addi	x2, x2, -64	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 64	# 2333
	lw		x1, -60(x2)	# 2333
	lw		x5, -56(x2)	# 2333
	addi	x6, x5, 12	# 2333
	sw		x4, 0(x6)	# 2333
	lw		x4, -12(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -60(x2)	# 2334
	addi	x2, x2, -64	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 64	# 2334
	lw		x1, -60(x2)	# 2334
	lw		x5, -56(x2)	# 2334
	addi	x6, x5, 16	# 2334
	sw		x4, 0(x6)	# 2334
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
	ble		x7, x4, ble.34672	# 2391
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
ble.34672:
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
	addi	x7, x5, 0	# 297
	fsw		f1, 0(x7)	# 297
	addi	x7, x5, 4	# 298
	fsw		f2, 0(x7)	# 298
	addi	x5, x5, 8	# 299
	fsw		f3, 0(x5)	# 299
	addi	x5, x6, 40	# 2400
	mul		x5, x30, x5	# 2400
	add		x5, x4, x5	# 2400
	lw		x5, 0(x5)	# 2400
	lw		x5, 0(x5)	# 696
	fsub	f4, f0, f2	# 123
	addi	x7, x5, 0	# 297
	fsw		f1, 0(x7)	# 297
	addi	x7, x5, 4	# 298
	fsw		f3, 0(x7)	# 298
	addi	x5, x5, 8	# 299
	fsw		f4, 0(x5)	# 299
	addi	x5, x6, 80	# 2401
	mul		x5, x30, x5	# 2401
	add		x5, x4, x5	# 2401
	lw		x5, 0(x5)	# 2401
	lw		x5, 0(x5)	# 696
	fsub	f5, f0, f1	# 123
	addi	x7, x5, 0	# 297
	fsw		f3, 0(x7)	# 297
	addi	x7, x5, 4	# 298
	fsw		f5, 0(x7)	# 298
	addi	x5, x5, 8	# 299
	fsw		f4, 0(x5)	# 299
	addi	x5, x6, 1	# 2402
	mul		x5, x30, x5	# 2402
	add		x5, x4, x5	# 2402
	lw		x5, 0(x5)	# 2402
	lw		x5, 0(x5)	# 696
	fsub	f3, f0, f3	# 123
	addi	x7, x5, 0	# 297
	fsw		f5, 0(x7)	# 297
	addi	x7, x5, 4	# 298
	fsw		f4, 0(x7)	# 298
	addi	x5, x5, 8	# 299
	fsw		f3, 0(x5)	# 299
	addi	x5, x6, 41	# 2403
	mul		x5, x30, x5	# 2403
	add		x5, x4, x5	# 2403
	lw		x5, 0(x5)	# 2403
	lw		x5, 0(x5)	# 696
	addi	x7, x5, 0	# 297
	fsw		f5, 0(x7)	# 297
	addi	x7, x5, 4	# 298
	fsw		f3, 0(x7)	# 298
	addi	x5, x5, 8	# 299
	fsw		f2, 0(x5)	# 299
	addi	x5, x6, 81	# 2404
	mul		x5, x30, x5	# 2404
	add		x4, x4, x5	# 2404
	lw		x4, 0(x4)	# 2404
	lw		x4, 0(x4)	# 696
	addi	x5, x4, 0	# 297
	fsw		f3, 0(x5)	# 297
	addi	x5, x4, 4	# 298
	fsw		f1, 0(x5)	# 298
	addi	x4, x4, 8	# 299
	fsw		f2, 0(x4)	# 299
	jalr	x0, x1, 0	# 299
calc_dirvecs.3098.18120:
	add		x7, x0, x0	# 6
	ble		x0, x4, ble.34674	# 2412
	jalr	x0, x1, 0	# 2421
ble.34674:
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
	ble		x6, x5, ble.34677	# 282
	jal		x0, ble_cont.34676	# 282
ble.34677:
	addi	x5, x5, -5	# 282
ble_cont.34676:
	lw		x6, -8(x2)	# 2420
	flw		f1, -4(x2)	# 2420
	jal		x0, calc_dirvecs.3098.18120	# 2420
calc_dirvec_rows.3103.18125:
	ble		x0, x4, ble.34678	# 2426
	jalr	x0, x1, 0	# 2430
ble.34678:
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
	ble		x6, x5, ble.34681	# 282
	jal		x0, ble_cont.34680	# 282
ble.34681:
	addi	x5, x5, -5	# 282
ble_cont.34680:
	lw		x6, -4(x2)	# 2429
	addi	x6, x6, 4	# 2429
	jal		x0, calc_dirvec_rows.3103.18125	# 2429
create_dirvec_elements.3109.18129:
	ble		x0, x5, ble.34682	# 2445
	jalr	x0, x1, 0	# 2448
ble.34682:
	fadd	f1, f0, f0	# 11
	add		x6, x0, x24	# 16
	sw		x4, 0(x2)	# 2439
	sw		x5, -4(x2)	# 2439
	addi	x4, x24, 0	# 2439
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
	ble		x0, x4, ble.34684	# 2452
	jalr	x0, x1, 0	# 2456
ble.34684:
	addi	x5, x0, 120	# 2453
	fadd	f1, f0, f0	# 11
	add		x6, x0, x24	# 16
	sw		x4, 0(x2)	# 2439
	sw		x5, -4(x2)	# 2439
	addi	x4, x24, 0	# 2439
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
	ble		x0, x5, ble.34686	# 2464
	jalr	x0, x1, 0	# 2467
ble.34686:
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
	ble		x0, x4, ble.34688	# 2471
	jalr	x0, x1, 0	# 2474
ble.34688:
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
	lui		x4, %hi(l.33619)	# 0
	ori		x4, x4, %lo(l.33619)	# 0
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
	addi	x20, x0, -1	# 0
	addi	x21, x0, 1	# 0
	addi	x22, x0, 2	# 0
	addi	x23, x0, 40540	# 0
	addi	x24, x0, 3	# 0
	addi	x25, x0, 40552	# 0
	addi	x26, x0, 40560	# 0
	addi	x27, x0, 40556	# 0
	addi	x28, x0, 99	# 0
	add		x4, x0, x21	# 6
	add		x5, x0, x0	# 6
	sw		x21, 0(x2)	# 6
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
	add		x4, x0, x24	# 16
	flw		f1, -8(x2)	# 16
	sw		x24, -20(x2)	# 16
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
	add		x5, x0, x20	# 28
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
	add		x4, x0, x22	# 65
	lw		x5, -4(x2)	# 65
	sw		x22, -36(x2)	# 65
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
	addi	x4, x0, 128	# 2569
	addi	x5, x0, 40616	# 2549
	sw		x4, 0(x5)	# 2549
	add		x6, x0, x30	# 2550
	addi	x7, x0, 40620	# 2550
	sw		x4, 0(x7)	# 2550
	addi	x8, x0, 64	# 2551
	addi	x9, x0, 40624	# 2551
	sw		x8, 0(x9)	# 2551
	addi	x9, x0, 40628	# 2552
	sw		x8, 0(x9)	# 2552
	lui		x8, %hi(l.30959)	# 2553
	ori		x8, x8, %lo(l.30959)	# 2553
	flw		f2, 0(x8)	# 2553
	sw		x30, -68(x2)	# 2553
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
	addi	x6, x5, 4	# 2331
	sw		x4, 0(x6)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -96(x2)	# 2332
	addi	x2, x2, -100	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 100	# 2332
	lw		x1, -96(x2)	# 2332
	lw		x5, -92(x2)	# 2332
	addi	x6, x5, 8	# 2332
	sw		x4, 0(x6)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -96(x2)	# 2333
	addi	x2, x2, -100	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 100	# 2333
	lw		x1, -96(x2)	# 2333
	lw		x5, -92(x2)	# 2333
	addi	x6, x5, 12	# 2333
	sw		x4, 0(x6)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -96(x2)	# 2334
	addi	x2, x2, -100	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 100	# 2334
	lw		x1, -96(x2)	# 2334
	lw		x5, -92(x2)	# 2334
	addi	x6, x5, 16	# 2334
	sw		x4, 0(x6)	# 2334
	lw		x4, -48(x2)	# 2343
	lw		x6, -4(x2)	# 2343
	addi	x5, x6, 0	# 2343
	sw		x1, -96(x2)	# 2343
	addi	x2, x2, -100	# 2343
	jal		x1, min_caml_create_array	# 2343
	addi	x2, x2, 100	# 2343
	lw		x1, -96(x2)	# 2343
	lw		x5, -48(x2)	# 2344
	lw		x6, -4(x2)	# 2344
	sw		x4, -96(x2)	# 2344
	addi	x4, x5, 0	# 2344
	addi	x5, x6, 0	# 2344
	sw		x1, -100(x2)	# 2344
	addi	x2, x2, -104	# 2344
	jal		x1, min_caml_create_array	# 2344
	addi	x2, x2, 104	# 2344
	lw		x1, -100(x2)	# 2344
	lw		x5, -20(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x4, -100(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -104(x2)	# 2329
	addi	x2, x2, -108	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 108	# 2329
	lw		x1, -104(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -48(x2)	# 2330
	sw		x1, -104(x2)	# 2330
	addi	x2, x2, -108	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 108	# 2330
	lw		x1, -104(x2)	# 2330
	lw		x5, -20(x2)	# 2331
	flw		f1, -8(x2)	# 2331
	sw		x4, -104(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -108(x2)	# 2331
	addi	x2, x2, -112	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 112	# 2331
	lw		x1, -108(x2)	# 2331
	lw		x5, -104(x2)	# 2331
	addi	x6, x5, 4	# 2331
	sw		x4, 0(x6)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -108(x2)	# 2332
	addi	x2, x2, -112	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 112	# 2332
	lw		x1, -108(x2)	# 2332
	lw		x5, -104(x2)	# 2332
	addi	x6, x5, 8	# 2332
	sw		x4, 0(x6)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -108(x2)	# 2333
	addi	x2, x2, -112	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 112	# 2333
	lw		x1, -108(x2)	# 2333
	lw		x5, -104(x2)	# 2333
	addi	x6, x5, 12	# 2333
	sw		x4, 0(x6)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -108(x2)	# 2334
	addi	x2, x2, -112	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 112	# 2334
	lw		x1, -108(x2)	# 2334
	lw		x5, -104(x2)	# 2334
	addi	x6, x5, 16	# 2334
	sw		x4, 0(x6)	# 2334
	lw		x4, -20(x2)	# 2329
	flw		f1, -8(x2)	# 2329
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
	addi	x6, x5, 4	# 2331
	sw		x4, 0(x6)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -112(x2)	# 2332
	addi	x2, x2, -116	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 116	# 2332
	lw		x1, -112(x2)	# 2332
	lw		x5, -108(x2)	# 2332
	addi	x6, x5, 8	# 2332
	sw		x4, 0(x6)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -112(x2)	# 2333
	addi	x2, x2, -116	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 116	# 2333
	lw		x1, -112(x2)	# 2333
	lw		x5, -108(x2)	# 2333
	addi	x6, x5, 12	# 2333
	sw		x4, 0(x6)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -112(x2)	# 2334
	addi	x2, x2, -116	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 116	# 2334
	lw		x1, -112(x2)	# 2334
	lw		x5, -108(x2)	# 2334
	addi	x6, x5, 16	# 2334
	sw		x4, 0(x6)	# 2334
	lw		x4, 0(x2)	# 2347
	lw		x6, -4(x2)	# 2347
	addi	x5, x6, 0	# 2347
	sw		x1, -112(x2)	# 2347
	addi	x2, x2, -116	# 2347
	jal		x1, min_caml_create_array	# 2347
	addi	x2, x2, 116	# 2347
	lw		x1, -112(x2)	# 2347
	lw		x5, -20(x2)	# 2329
	flw		f1, -8(x2)	# 2329
	sw		x4, -112(x2)	# 2329
	addi	x4, x5, 0	# 2329
	sw		x1, -116(x2)	# 2329
	addi	x2, x2, -120	# 2329
	jal		x1, min_caml_create_float_array	# 2329
	addi	x2, x2, 120	# 2329
	lw		x1, -116(x2)	# 2329
	addi	x5, x4, 0	# 2329
	lw		x4, -48(x2)	# 2330
	sw		x1, -116(x2)	# 2330
	addi	x2, x2, -120	# 2330
	jal		x1, min_caml_create_array	# 2330
	addi	x2, x2, 120	# 2330
	lw		x1, -116(x2)	# 2330
	lw		x5, -20(x2)	# 2331
	flw		f1, -8(x2)	# 2331
	sw		x4, -116(x2)	# 2331
	addi	x4, x5, 0	# 2331
	sw		x1, -120(x2)	# 2331
	addi	x2, x2, -124	# 2331
	jal		x1, min_caml_create_float_array	# 2331
	addi	x2, x2, 124	# 2331
	lw		x1, -120(x2)	# 2331
	lw		x5, -116(x2)	# 2331
	addi	x6, x5, 4	# 2331
	sw		x4, 0(x6)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -120(x2)	# 2332
	addi	x2, x2, -124	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 124	# 2332
	lw		x1, -120(x2)	# 2332
	lw		x5, -116(x2)	# 2332
	addi	x6, x5, 8	# 2332
	sw		x4, 0(x6)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -120(x2)	# 2333
	addi	x2, x2, -124	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 124	# 2333
	lw		x1, -120(x2)	# 2333
	lw		x5, -116(x2)	# 2333
	addi	x6, x5, 12	# 2333
	sw		x4, 0(x6)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -120(x2)	# 2334
	addi	x2, x2, -124	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 124	# 2334
	lw		x1, -120(x2)	# 2334
	lw		x5, -116(x2)	# 2334
	addi	x6, x5, 16	# 2334
	sw		x4, 0(x6)	# 2334
	addi	x4, x3, 0	# 2349
	addi	x3, x3, 32	# 2349
	sw		x5, 28(x4)	# 2349
	lw		x5, -112(x2)	# 2349
	sw		x5, 24(x4)	# 2349
	lw		x5, -108(x2)	# 2349
	sw		x5, 20(x4)	# 2349
	lw		x5, -104(x2)	# 2349
	sw		x5, 16(x4)	# 2349
	lw		x5, -100(x2)	# 2349
	sw		x5, 12(x4)	# 2349
	lw		x5, -96(x2)	# 2349
	sw		x5, 8(x4)	# 2349
	lw		x5, -92(x2)	# 2349
	sw		x5, 4(x4)	# 2349
	lw		x5, -88(x2)	# 2349
	sw		x5, 0(x4)	# 2349
	lw		x5, -84(x2)	# 2363
	addi	x31, x5, 0	# 2363
	addi	x5, x4, 0	# 2363
	addi	x4, x31, 0	# 2363
	sw		x1, -120(x2)	# 2363
	addi	x2, x2, -124	# 2363
	jal		x1, min_caml_create_array	# 2363
	addi	x2, x2, 124	# 2363
	lw		x1, -120(x2)	# 2363
	lw		x5, -84(x2)	# 2364
	addi	x6, x5, -2	# 2364
	sw		x7, -120(x2)	# 2364
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
	addi	x6, x5, 4	# 2331
	sw		x4, 0(x6)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -140(x2)	# 2332
	addi	x2, x2, -144	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 144	# 2332
	lw		x1, -140(x2)	# 2332
	lw		x5, -136(x2)	# 2332
	addi	x6, x5, 8	# 2332
	sw		x4, 0(x6)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -140(x2)	# 2333
	addi	x2, x2, -144	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 144	# 2333
	lw		x1, -140(x2)	# 2333
	lw		x5, -136(x2)	# 2333
	addi	x6, x5, 12	# 2333
	sw		x4, 0(x6)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -140(x2)	# 2334
	addi	x2, x2, -144	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 144	# 2334
	lw		x1, -140(x2)	# 2334
	lw		x5, -136(x2)	# 2334
	addi	x6, x5, 16	# 2334
	sw		x4, 0(x6)	# 2334
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
	addi	x6, x5, 4	# 2331
	sw		x4, 0(x6)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -152(x2)	# 2332
	addi	x2, x2, -156	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 156	# 2332
	lw		x1, -152(x2)	# 2332
	lw		x5, -148(x2)	# 2332
	addi	x6, x5, 8	# 2332
	sw		x4, 0(x6)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -152(x2)	# 2333
	addi	x2, x2, -156	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 156	# 2333
	lw		x1, -152(x2)	# 2333
	lw		x5, -148(x2)	# 2333
	addi	x6, x5, 12	# 2333
	sw		x4, 0(x6)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -152(x2)	# 2334
	addi	x2, x2, -156	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 156	# 2334
	lw		x1, -152(x2)	# 2334
	lw		x5, -148(x2)	# 2334
	addi	x6, x5, 16	# 2334
	sw		x4, 0(x6)	# 2334
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
	addi	x6, x5, 4	# 2331
	sw		x4, 0(x6)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -156(x2)	# 2332
	addi	x2, x2, -160	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 160	# 2332
	lw		x1, -156(x2)	# 2332
	lw		x5, -152(x2)	# 2332
	addi	x6, x5, 8	# 2332
	sw		x4, 0(x6)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -156(x2)	# 2333
	addi	x2, x2, -160	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 160	# 2333
	lw		x1, -156(x2)	# 2333
	lw		x5, -152(x2)	# 2333
	addi	x6, x5, 12	# 2333
	sw		x4, 0(x6)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -156(x2)	# 2334
	addi	x2, x2, -160	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 160	# 2334
	lw		x1, -156(x2)	# 2334
	lw		x5, -152(x2)	# 2334
	addi	x6, x5, 16	# 2334
	sw		x4, 0(x6)	# 2334
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
	addi	x6, x5, 4	# 2331
	sw		x4, 0(x6)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -164(x2)	# 2332
	addi	x2, x2, -168	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 168	# 2332
	lw		x1, -164(x2)	# 2332
	lw		x5, -160(x2)	# 2332
	addi	x6, x5, 8	# 2332
	sw		x4, 0(x6)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -164(x2)	# 2333
	addi	x2, x2, -168	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 168	# 2333
	lw		x1, -164(x2)	# 2333
	lw		x5, -160(x2)	# 2333
	addi	x6, x5, 12	# 2333
	sw		x4, 0(x6)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -164(x2)	# 2334
	addi	x2, x2, -168	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 168	# 2334
	lw		x1, -164(x2)	# 2334
	lw		x5, -160(x2)	# 2334
	addi	x6, x5, 16	# 2334
	sw		x4, 0(x6)	# 2334
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
	addi	x6, x5, 4	# 2331
	sw		x4, 0(x6)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -176(x2)	# 2332
	addi	x2, x2, -180	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 180	# 2332
	lw		x1, -176(x2)	# 2332
	lw		x5, -172(x2)	# 2332
	addi	x6, x5, 8	# 2332
	sw		x4, 0(x6)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -176(x2)	# 2333
	addi	x2, x2, -180	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 180	# 2333
	lw		x1, -176(x2)	# 2333
	lw		x5, -172(x2)	# 2333
	addi	x6, x5, 12	# 2333
	sw		x4, 0(x6)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -176(x2)	# 2334
	addi	x2, x2, -180	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 180	# 2334
	lw		x1, -176(x2)	# 2334
	lw		x5, -172(x2)	# 2334
	addi	x6, x5, 16	# 2334
	sw		x4, 0(x6)	# 2334
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
	addi	x6, x5, 4	# 2331
	sw		x4, 0(x6)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -188(x2)	# 2332
	addi	x2, x2, -192	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 192	# 2332
	lw		x1, -188(x2)	# 2332
	lw		x5, -184(x2)	# 2332
	addi	x6, x5, 8	# 2332
	sw		x4, 0(x6)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -188(x2)	# 2333
	addi	x2, x2, -192	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 192	# 2333
	lw		x1, -188(x2)	# 2333
	lw		x5, -184(x2)	# 2333
	addi	x6, x5, 12	# 2333
	sw		x4, 0(x6)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -188(x2)	# 2334
	addi	x2, x2, -192	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 192	# 2334
	lw		x1, -188(x2)	# 2334
	lw		x5, -184(x2)	# 2334
	addi	x6, x5, 16	# 2334
	sw		x4, 0(x6)	# 2334
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
	addi	x6, x5, 4	# 2331
	sw		x4, 0(x6)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -192(x2)	# 2332
	addi	x2, x2, -196	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 196	# 2332
	lw		x1, -192(x2)	# 2332
	lw		x5, -188(x2)	# 2332
	addi	x6, x5, 8	# 2332
	sw		x4, 0(x6)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -192(x2)	# 2333
	addi	x2, x2, -196	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 196	# 2333
	lw		x1, -192(x2)	# 2333
	lw		x5, -188(x2)	# 2333
	addi	x6, x5, 12	# 2333
	sw		x4, 0(x6)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -192(x2)	# 2334
	addi	x2, x2, -196	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 196	# 2334
	lw		x1, -192(x2)	# 2334
	lw		x5, -188(x2)	# 2334
	addi	x6, x5, 16	# 2334
	sw		x4, 0(x6)	# 2334
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
	addi	x6, x5, 4	# 2331
	sw		x4, 0(x6)	# 2331
	lw		x4, -20(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x1, -200(x2)	# 2332
	addi	x2, x2, -204	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 204	# 2332
	lw		x1, -200(x2)	# 2332
	lw		x5, -196(x2)	# 2332
	addi	x6, x5, 8	# 2332
	sw		x4, 0(x6)	# 2332
	lw		x4, -20(x2)	# 2333
	flw		f1, -8(x2)	# 2333
	sw		x1, -200(x2)	# 2333
	addi	x2, x2, -204	# 2333
	jal		x1, min_caml_create_float_array	# 2333
	addi	x2, x2, 204	# 2333
	lw		x1, -200(x2)	# 2333
	lw		x5, -196(x2)	# 2333
	addi	x6, x5, 12	# 2333
	sw		x4, 0(x6)	# 2333
	lw		x4, -20(x2)	# 2334
	flw		f1, -8(x2)	# 2334
	sw		x1, -200(x2)	# 2334
	addi	x2, x2, -204	# 2334
	jal		x1, min_caml_create_float_array	# 2334
	addi	x2, x2, 204	# 2334
	lw		x1, -200(x2)	# 2334
	lw		x5, -196(x2)	# 2334
	addi	x6, x5, 16	# 2334
	sw		x4, 0(x6)	# 2334
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
	lui		x8, %hi(l.27995)	# 734
	ori		x8, x8, %lo(l.27995)	# 734
	flw		f2, 0(x8)	# 734
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
	lui		x8, %hi(l.31099)	# 753
	ori		x8, x8, %lo(l.31099)	# 753
	flw		f3, 0(x8)	# 753
	flw		f5, -216(x2)	# 753
	fmul	f3, f5, f3	# 753
	addi	x8, x0, 40688	# 753
	fsw		f3, 0(x8)	# 753
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
	flw		f3, 0(x8)	# 765
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
	sw		x13, -260(x2)	# 927
	sw		x12, -264(x2)	# 927
	sw		x11, -268(x2)	# 927
	sw		x9, -272(x2)	# 927
	sw		x4, -276(x2)	# 927
	addi	x4, x5, 0	# 927
	sw		x1, -280(x2)	# 927
	addi	x2, x2, -284	# 927
	jal		x1, read_object.2787.18006	# 927
	addi	x2, x2, 284	# 927
	lw		x1, -280(x2)	# 927
	lw		x4, -4(x2)	# 964
	sw		x1, -280(x2)	# 964
	addi	x2, x2, -284	# 964
	jal		x1, read_and_network.2795.18012	# 964
	addi	x2, x2, 284	# 964
	lw		x1, -280(x2)	# 964
	lw		x4, -4(x2)	# 965
	sw		x1, -280(x2)	# 965
	addi	x2, x2, -284	# 965
	jal		x1, read_or_network.2793.18010	# 965
	addi	x2, x2, 284	# 965
	lw		x1, -280(x2)	# 965
	addi	x5, x0, 40536	# 965
	sw		x4, 0(x5)	# 965
	addi	x4, x0, 80	# 2172
	sw		x1, -280(x2)	# 2172
	addi	x2, x2, -284	# 2172
	jal		x1, min_caml_print_char	# 2172
	addi	x2, x2, 284	# 2172
	lw		x1, -280(x2)	# 2172
	addi	x4, x0, 48	# 2173
	addi	x5, x0, 51	# 2173
	sw		x4, -280(x2)	# 2173
	addi	x4, x5, 0	# 2173
	sw		x1, -284(x2)	# 2173
	addi	x2, x2, -288	# 2173
	jal		x1, min_caml_print_char	# 2173
	addi	x2, x2, 288	# 2173
	lw		x1, -284(x2)	# 2173
	addi	x4, x0, 10	# 2174
	sw		x4, -284(x2)	# 2174
	sw		x1, -288(x2)	# 2174
	addi	x2, x2, -292	# 2174
	jal		x1, min_caml_print_char	# 2174
	addi	x2, x2, 292	# 2174
	lw		x1, -288(x2)	# 2174
	addi	x4, x0, 100	# 238
	lw		x5, -84(x2)	# 238
	sw		x4, -288(x2)	# 238
	ble		x4, x5, ble_cont.34690	# 238
	lw		x6, -280(x2)	# 238
	addi	x4, x6, 0	# 238
	sw		x1, -292(x2)	# 238
	addi	x2, x2, -296	# 238
	jal		x1, min_caml_print_char	# 238
	addi	x2, x2, 296	# 238
	lw		x1, -292(x2)	# 238
ble_cont.34690:
	lw		x4, -284(x2)	# 239
	ble		x4, x5, ble_cont.34692	# 239
	lw		x6, -280(x2)	# 239
	addi	x4, x6, 0	# 239
	sw		x1, -292(x2)	# 239
	addi	x2, x2, -296	# 239
	jal		x1, min_caml_print_char	# 239
	addi	x2, x2, 296	# 239
	lw		x1, -292(x2)	# 239
ble_cont.34692:
	addi	x4, x5, 0	# 240
	sw		x1, -292(x2)	# 240
	addi	x2, x2, -296	# 240
	jal		x1, print_int_main.2648.18004	# 240
	addi	x2, x2, 296	# 240
	lw		x1, -292(x2)	# 240
	addi	x4, x0, 32	# 2176
	sw		x4, -292(x2)	# 2176
	sw		x1, -296(x2)	# 2176
	addi	x2, x2, -300	# 2176
	jal		x1, min_caml_print_char	# 2176
	addi	x2, x2, 300	# 2176
	lw		x1, -296(x2)	# 2176
	lw		x4, -120(x2)	# 2177
	lw		x4, 0(x4)	# 2177
	lw		x5, -288(x2)	# 238
	sw		x4, -296(x2)	# 238
	ble		x5, x4, ble_cont.34694	# 238
	lw		x5, -280(x2)	# 238
	addi	x4, x5, 0	# 238
	sw		x1, -300(x2)	# 238
	addi	x2, x2, -304	# 238
	jal		x1, min_caml_print_char	# 238
	addi	x2, x2, 304	# 238
	lw		x1, -300(x2)	# 238
ble_cont.34694:
	lw		x4, -296(x2)	# 239
	lw		x5, -284(x2)	# 239
	ble		x5, x4, ble_cont.34696	# 239
	lw		x6, -280(x2)	# 239
	addi	x4, x6, 0	# 239
	sw		x1, -300(x2)	# 239
	addi	x2, x2, -304	# 239
	jal		x1, min_caml_print_char	# 239
	addi	x2, x2, 304	# 239
	lw		x1, -300(x2)	# 239
ble_cont.34696:
	lw		x4, -296(x2)	# 240
	sw		x1, -300(x2)	# 240
	addi	x2, x2, -304	# 240
	jal		x1, print_int_main.2648.18004	# 240
	addi	x2, x2, 304	# 240
	lw		x1, -300(x2)	# 240
	lw		x4, -292(x2)	# 2178
	sw		x1, -300(x2)	# 2178
	addi	x2, x2, -304	# 2178
	jal		x1, min_caml_print_char	# 2178
	addi	x2, x2, 304	# 2178
	lw		x1, -300(x2)	# 2178
	addi	x4, x0, 255	# 2179
	sw		x1, -300(x2)	# 240
	addi	x2, x2, -304	# 240
	jal		x1, print_int_main.2648.18004	# 240
	addi	x2, x2, 304	# 240
	lw		x1, -300(x2)	# 240
	lw		x4, -284(x2)	# 2180
	sw		x1, -300(x2)	# 2180
	addi	x2, x2, -304	# 2180
	jal		x1, min_caml_print_char	# 2180
	addi	x2, x2, 304	# 2180
	lw		x1, -300(x2)	# 2180
	lw		x4, -68(x2)	# 2478
	sw		x1, -300(x2)	# 2478
	addi	x2, x2, -304	# 2478
	jal		x1, create_dirvecs.3112.18132	# 2478
	addi	x2, x2, 304	# 2478
	lw		x1, -300(x2)	# 2478
	addi	x4, x0, 9	# 2479
	lw		x5, -4(x2)	# 2479
	addi	x6, x5, 0	# 2479
	sw		x1, -300(x2)	# 2479
	addi	x2, x2, -304	# 2479
	jal		x1, calc_dirvec_rows.3103.18125	# 2479
	addi	x2, x2, 304	# 2479
	lw		x1, -300(x2)	# 2479
	lw		x4, -68(x2)	# 2480
	sw		x1, -300(x2)	# 2480
	addi	x2, x2, -304	# 2480
	jal		x1, init_vecset_constants.3117.18137	# 2480
	addi	x2, x2, 304	# 2480
	lw		x1, -300(x2)	# 2480
	lw		x4, -252(x2)	# 316
	flw		f1, 0(x4)	# 316
	lw		x4, -52(x2)	# 316
	fsw		f1, 0(x4)	# 316
	lw		x4, -240(x2)	# 317
	flw		f2, 0(x4)	# 317
	addi	x4, x0, 40740	# 317
	fsw		f2, 0(x4)	# 317
	lw		x4, -276(x2)	# 318
	flw		f3, 0(x4)	# 318
	addi	x4, x0, 40744	# 318
	fsw		f3, 0(x4)	# 318
	addi	x4, x0, 40000	# 1344
	lw		x4, 0(x4)	# 1344
	addi	x5, x4, -1	# 1344
	lw		x6, -60(x2)	# 1344
	sw		x4, -300(x2)	# 1344
	fsw		f3, -304(x2)	# 1344
	fsw		f2, -308(x2)	# 1344
	fsw		f1, -312(x2)	# 1344
	sw		x5, -316(x2)	# 1344
	addi	x4, x6, 0	# 1344
	sw		x1, -320(x2)	# 1344
	addi	x2, x2, -324	# 1344
	jal		x1, iter_setup_dirvec_constants.2892.18014	# 1344
	addi	x2, x2, 324	# 1344
	lw		x1, -320(x2)	# 1344
	lw		x4, -316(x2)	# 2527
	lw		x5, -4(x2)	# 2527
	ble		x5, x4, ble.34699	# 2527
	jal		x0, ble_cont.34698	# 2527
ble.34699:
	mul		x6, x30, x4	# 2528
	addi	x6, x6, 40048	# 2528
	lw		x6, 0(x6)	# 2528
	lw		x7, 8(x6)	# 420
	lw		x8, -36(x2)	# 2529
	beq		x7, x8, beq.34701	# 2529
	jal		x0, ble_cont.34698	# 2529
beq.34701:
	lw		x7, 28(x6)	# 518
	addi	x7, x7, 0	# 523
	flw		f1, 0(x7)	# 523
	fle		f30, f1, ble_cont.34698	# 125
	lw		x7, 4(x6)	# 410
	lw		x9, 0(x2)	# 2533
	beq		x7, x9, beq.34705	# 2533
	beq		x7, x8, beq.34707	# 2535
	jal		x0, ble_cont.34698	# 2535
beq.34707:
	lw		x7, -68(x2)	# 2512
	mul		x7, x4, x7	# 2512
	addi	x7, x7, 1	# 2512
	addi	x9, x0, 41736	# 2513
	lw		x10, 0(x9)	# 2513
	fsub	f1, f30, f1	# 2514
	lw		x6, 16(x6)	# 478
	addi	x11, x6, 0	# 349
	flw		f2, 0(x11)	# 349
	flw		f3, -312(x2)	# 349
	fmul	f4, f3, f2	# 349
	addi	x11, x6, 4	# 349
	flw		f5, 0(x11)	# 349
	flw		f6, -308(x2)	# 349
	fmul	f7, f6, f5	# 349
	fadd	f4, f4, f7	# 349
	addi	x6, x6, 8	# 349
	flw		f7, 0(x6)	# 349
	flw		f8, -304(x2)	# 349
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
	fsw		f1, -320(x2)	# 2439
	addi	x4, x6, 0	# 2439
	fadd	f1, f0, f5	# 2439
	sw		x1, -324(x2)	# 2439
	addi	x2, x2, -328	# 2439
	jal		x1, min_caml_create_float_array	# 2439
	addi	x2, x2, 328	# 2439
	lw		x1, -324(x2)	# 2439
	addi	x5, x4, 0	# 2439
	lw		x4, -300(x2)	# 2440
	sw		x5, -324(x2)	# 2440
	sw		x1, -328(x2)	# 2440
	addi	x2, x2, -332	# 2440
	jal		x1, min_caml_create_array	# 2440
	addi	x2, x2, 332	# 2440
	lw		x1, -328(x2)	# 2440
	addi	x5, x3, 0	# 2441
	addi	x3, x3, 8	# 2441
	sw		x4, 4(x5)	# 2441
	lw		x4, -324(x2)	# 2441
	sw		x4, 0(x5)	# 2441
	addi	x6, x4, 0	# 297
	fsw		f2, 0(x6)	# 297
	addi	x6, x4, 4	# 298
	fsw		f3, 0(x6)	# 298
	addi	x4, x4, 8	# 299
	fsw		f4, 0(x4)	# 299
	lw		x4, -316(x2)	# 1344
	sw		x9, -328(x2)	# 1344
	sw		x10, -332(x2)	# 1344
	sw		x7, -336(x2)	# 1344
	sw		x5, -340(x2)	# 1344
	addi	x31, x5, 0	# 1344
	addi	x5, x4, 0	# 1344
	addi	x4, x31, 0	# 1344
	sw		x1, -344(x2)	# 1344
	addi	x2, x2, -348	# 1344
	jal		x1, iter_setup_dirvec_constants.2892.18014	# 1344
	addi	x2, x2, 348	# 1344
	lw		x1, -344(x2)	# 1344
	addi	x4, x3, 0	# 2493
	addi	x3, x3, 12	# 2493
	flw		f1, -320(x2)	# 2493
	fsw		f1, 8(x4)	# 2493
	lw		x5, -340(x2)	# 2493
	sw		x5, 4(x4)	# 2493
	lw		x5, -336(x2)	# 2493
	sw		x5, 0(x4)	# 2493
	lw		x5, -332(x2)	# 2493
	mul		x6, x30, x5	# 2493
	addi	x6, x6, 41016	# 2493
	sw		x4, 0(x6)	# 2493
	addi	x4, x5, 1	# 2521
	lw		x5, -328(x2)	# 2521
	sw		x4, 0(x5)	# 2521
	jal		x0, ble_cont.34698	# 2533
beq.34705:
	lw		x6, -68(x2)	# 2498
	mul		x6, x4, x6	# 2498
	addi	x7, x0, 41736	# 2499
	lw		x9, 0(x7)	# 2499
	fsub	f1, f30, f1	# 2500
	flw		f2, -312(x2)	# 123
	fsub	f3, f0, f2	# 123
	flw		f4, -308(x2)	# 123
	fsub	f5, f0, f4	# 123
	flw		f6, -304(x2)	# 123
	fsub	f7, f0, f6	# 123
	addi	x10, x6, 1	# 2504
	lw		x11, -20(x2)	# 2439
	flw		f8, -8(x2)	# 2439
	fsw		f1, -344(x2)	# 2439
	addi	x4, x11, 0	# 2439
	fadd	f1, f0, f8	# 2439
	sw		x1, -348(x2)	# 2439
	addi	x2, x2, -352	# 2439
	jal		x1, min_caml_create_float_array	# 2439
	addi	x2, x2, 352	# 2439
	lw		x1, -348(x2)	# 2439
	addi	x5, x4, 0	# 2439
	lw		x4, -300(x2)	# 2440
	sw		x6, -348(x2)	# 2440
	sw		x5, -352(x2)	# 2440
	sw		x1, -356(x2)	# 2440
	addi	x2, x2, -360	# 2440
	jal		x1, min_caml_create_array	# 2440
	addi	x2, x2, 360	# 2440
	lw		x1, -356(x2)	# 2440
	addi	x5, x3, 0	# 2441
	addi	x3, x3, 8	# 2441
	sw		x4, 4(x5)	# 2441
	lw		x4, -352(x2)	# 2441
	sw		x4, 0(x5)	# 2441
	addi	x6, x4, 0	# 297
	fsw		f2, 0(x6)	# 297
	addi	x6, x4, 4	# 298
	fsw		f5, 0(x6)	# 298
	addi	x4, x4, 8	# 299
	fsw		f7, 0(x4)	# 299
	lw		x4, -316(x2)	# 1344
	sw		x7, -356(x2)	# 1344
	fsw		f5, -360(x2)	# 1344
	fsw		f7, -364(x2)	# 1344
	fsw		f3, -368(x2)	# 1344
	sw		x9, -372(x2)	# 1344
	sw		x10, -376(x2)	# 1344
	sw		x5, -380(x2)	# 1344
	addi	x31, x5, 0	# 1344
	addi	x5, x4, 0	# 1344
	addi	x4, x31, 0	# 1344
	sw		x1, -384(x2)	# 1344
	addi	x2, x2, -388	# 1344
	jal		x1, iter_setup_dirvec_constants.2892.18014	# 1344
	addi	x2, x2, 388	# 1344
	lw		x1, -384(x2)	# 1344
	addi	x4, x3, 0	# 2493
	addi	x3, x3, 12	# 2493
	flw		f1, -344(x2)	# 2493
	fsw		f1, 8(x4)	# 2493
	lw		x5, -380(x2)	# 2493
	sw		x5, 4(x4)	# 2493
	lw		x5, -376(x2)	# 2493
	sw		x5, 0(x4)	# 2493
	lw		x5, -372(x2)	# 2493
	mul		x6, x30, x5	# 2493
	addi	x6, x6, 41016	# 2493
	sw		x4, 0(x6)	# 2493
	addi	x4, x5, 1	# 2505
	lw		x6, -348(x2)	# 2505
	addi	x7, x6, 2	# 2505
	lw		x8, -20(x2)	# 2439
	flw		f2, -8(x2)	# 2439
	sw		x4, -384(x2)	# 2439
	addi	x4, x8, 0	# 2439
	fadd	f1, f0, f2	# 2439
	sw		x1, -388(x2)	# 2439
	addi	x2, x2, -392	# 2439
	jal		x1, min_caml_create_float_array	# 2439
	addi	x2, x2, 392	# 2439
	lw		x1, -388(x2)	# 2439
	addi	x5, x4, 0	# 2439
	lw		x4, -300(x2)	# 2440
	sw		x5, -388(x2)	# 2440
	sw		x1, -392(x2)	# 2440
	addi	x2, x2, -396	# 2440
	jal		x1, min_caml_create_array	# 2440
	addi	x2, x2, 396	# 2440
	lw		x1, -392(x2)	# 2440
	addi	x5, x3, 0	# 2441
	addi	x3, x3, 8	# 2441
	sw		x4, 4(x5)	# 2441
	lw		x4, -388(x2)	# 2441
	sw		x4, 0(x5)	# 2441
	addi	x6, x4, 0	# 297
	flw		f1, -368(x2)	# 297
	fsw		f1, 0(x6)	# 297
	addi	x6, x4, 4	# 298
	flw		f2, -308(x2)	# 298
	fsw		f2, 0(x6)	# 298
	addi	x4, x4, 8	# 299
	flw		f2, -364(x2)	# 299
	fsw		f2, 0(x4)	# 299
	lw		x4, -316(x2)	# 1344
	sw		x7, -392(x2)	# 1344
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
	flw		f1, -344(x2)	# 2493
	fsw		f1, 8(x4)	# 2493
	lw		x5, -396(x2)	# 2493
	sw		x5, 4(x4)	# 2493
	lw		x5, -392(x2)	# 2493
	sw		x5, 0(x4)	# 2493
	lw		x5, -384(x2)	# 2493
	mul		x5, x30, x5	# 2493
	addi	x5, x5, 41016	# 2493
	sw		x4, 0(x5)	# 2493
	lw		x4, -372(x2)	# 2506
	addi	x5, x4, 2	# 2506
	lw		x6, -348(x2)	# 2506
	addi	x6, x6, 3	# 2506
	lw		x7, -20(x2)	# 2439
	flw		f2, -8(x2)	# 2439
	sw		x5, -400(x2)	# 2439
	addi	x4, x7, 0	# 2439
	fadd	f1, f0, f2	# 2439
	sw		x1, -404(x2)	# 2439
	addi	x2, x2, -408	# 2439
	jal		x1, min_caml_create_float_array	# 2439
	addi	x2, x2, 408	# 2439
	lw		x1, -404(x2)	# 2439
	addi	x5, x4, 0	# 2439
	lw		x4, -300(x2)	# 2440
	sw		x6, -404(x2)	# 2440
	sw		x5, -408(x2)	# 2440
	sw		x1, -412(x2)	# 2440
	addi	x2, x2, -416	# 2440
	jal		x1, min_caml_create_array	# 2440
	addi	x2, x2, 416	# 2440
	lw		x1, -412(x2)	# 2440
	addi	x5, x3, 0	# 2441
	addi	x3, x3, 8	# 2441
	sw		x4, 4(x5)	# 2441
	lw		x4, -408(x2)	# 2441
	sw		x4, 0(x5)	# 2441
	addi	x6, x4, 0	# 297
	flw		f1, -368(x2)	# 297
	fsw		f1, 0(x6)	# 297
	addi	x6, x4, 4	# 298
	flw		f1, -360(x2)	# 298
	fsw		f1, 0(x6)	# 298
	addi	x4, x4, 8	# 299
	flw		f1, -304(x2)	# 299
	fsw		f1, 0(x4)	# 299
	lw		x4, -316(x2)	# 1344
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
	flw		f1, -344(x2)	# 2493
	fsw		f1, 8(x4)	# 2493
	lw		x5, -412(x2)	# 2493
	sw		x5, 4(x4)	# 2493
	lw		x5, -404(x2)	# 2493
	sw		x5, 0(x4)	# 2493
	lw		x5, -400(x2)	# 2493
	mul		x5, x30, x5	# 2493
	addi	x5, x5, 41016	# 2493
	sw		x4, 0(x5)	# 2493
	lw		x4, -372(x2)	# 2507
	addi	x4, x4, 3	# 2507
	lw		x5, -356(x2)	# 2507
	sw		x4, 0(x5)	# 2507
ble_cont.34698:
	lw		x4, -80(x2)	# 2275
	flw		f1, 0(x4)	# 2275
	lw		x4, -272(x2)	# 2275
	lw		x4, 0(x4)	# 2275
	lw		x5, -4(x2)	# 2275
	sub		x4, x5, x4	# 2275
	fsw		f1, -416(x2)	# 2275
	sw		x1, -420(x2)	# 2275
	addi	x2, x2, -424	# 2275
	jal		x1, min_caml_float_of_int	# 2275
	addi	x2, x2, 424	# 2275
	lw		x1, -420(x2)	# 2275
	flw		f2, -416(x2)	# 2275
	fmul	f1, f2, f1	# 2275
	lw		x4, -268(x2)	# 2278
	flw		f2, 0(x4)	# 2278
	fmul	f2, f1, f2	# 2278
	flw		f3, -232(x2)	# 2278
	fadd	f2, f2, f3	# 2278
	lw		x4, -264(x2)	# 2279
	flw		f3, 0(x4)	# 2279
	fmul	f3, f1, f3	# 2279
	flw		f4, -228(x2)	# 2279
	fadd	f3, f3, f4	# 2279
	lw		x4, -260(x2)	# 2280
	flw		f4, 0(x4)	# 2280
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
	sw		x1, -420(x2)	# 2281
	addi	x2, x2, -424	# 2281
	jal		x1, pretrace_pixels.3051.18088	# 2281
	addi	x2, x2, 424	# 2281
	lw		x1, -420(x2)	# 2281
	lw		x4, -4(x2)	# 2564
	lw		x5, -128(x2)	# 2564
	lw		x6, -164(x2)	# 2564
	lw		x7, -200(x2)	# 2564
	lw		x8, -36(x2)	# 2564
	lw		x9, -20(x2)	# 2564
	sw		x1, -420(x2)	# 2564
	addi	x2, x2, -424	# 2564
	jal		x1, scan_line.3069.18102	# 2564
	addi	x2, x2, 424	# 2564
	lw		x1, -420(x2)	# 2564
	EXIT	
