l.33470:	# 8388608.000000
	.word	8388608.000000
l.28322:	# 0.010000
	.word	0.010000
l.28320:	# -0.200000
	.word	-0.200000
l.28445:	# -0.100000
	.word	-0.100000
l.29279:	# 1000000000.000000
	.word	1000000000.000000
l.29288:	# 100000000.000000
	.word	100000000.000000
l.29973:	# 150.000000
	.word	150.000000
l.29746:	# -150.000000
	.word	-150.000000
l.27904:	# -1.000000
	.word	-1.000000
l.29543:	# 0.050000
	.word	0.050000
l.29545:	# 20.000000
	.word	20.000000
l.29522:	# 10.000000
	.word	10.000000
l.29512:	# 255.000000
	.word	255.000000
l.27810:	# 0.500000
	.word	0.500000
l.29693:	# 0.100000
	.word	0.100000
l.29617:	# -2.000000
	.word	-2.000000
l.30976:	# -200.000000
	.word	-200.000000
l.30972:	# 200.000000
	.word	200.000000
l.30836:	# 128.000000
	.word	128.000000
l.30767:	# 0.900000
	.word	0.900000
l.29589:	# 0.003906
	.word	0.003906
l.29532:	# 0.250000
	.word	0.250000
l.29514:	# 0.300000
	.word	0.300000
l.29507:	# 0.150000
	.word	0.150000
l.29496:	# 3.141593
	.word	3.141593
l.29494:	# 30.000000
	.word	30.000000
l.29491:	# 15.000000
	.word	15.000000
l.29489:	# 0.000100
	.word	0.000100
l.27964:	# 2.000000
	.word	2.000000
l.27872:	# 0.017453
	.word	0.017453
l.27840:	# 0.089764
	.word	0.089764
l.27838:	# 0.111111
	.word	0.111111
l.27836:	# 0.142857
	.word	0.142857
l.27834:	# 0.200000
	.word	0.200000
l.27832:	# 0.333333
	.word	0.333333
l.27830:	# 0.437500
	.word	0.437500
l.27826:	# 2.437500
	.word	2.437500
l.27814:	# 0.001370
	.word	0.001370
l.27812:	# 0.041664
	.word	0.041664
l.27808:	# 1.000000
	.word	1.000000
l.27805:	# 0.000196
	.word	0.000196
l.27803:	# 0.008333
	.word	0.008333
l.27801:	# 0.166667
	.word	0.166667
l.27799:	# 0.785398
	.word	0.785398
l.27796:	# 1.570796
	.word	1.570796
l.27794:	# 3.141593
	.word	3.141593
l.27792:	# 6.283185
	.word	6.283185
l.27790:	# 0.000000
	.word	0.000000
sin.2620.17904:
	fle		f0, f1, fle.33471	# 204
	fsub	f1, f0, f1	# 204
	sw		x1, 0(x2)	# 204
	addi	x2, x2, -4	# 204
	jal		x1, sin.2620.17904	# 204
	addi	x2, x2, 4	# 204
	lw		x1, 0(x2)	# 204
	fsub	f1, f0, f1	# 204
	jalr	x0, x1, 0	# 204
fle.33471:
	lui		x4, %hi(l.27792)	# 179
	ori		x4, x4, %lo(l.27792)	# 179
	flw		f2, 0(x4)	# 179
	fle		f2, f1, fle.33472	# 205
	lui		x4, %hi(l.27794)	# 178
	ori		x4, x4, %lo(l.27794)	# 178
	flw		f2, 0(x4)	# 178
	fle		f2, f1, fle.33473	# 206
	lui		x4, %hi(l.27796)	# 180
	ori		x4, x4, %lo(l.27796)	# 180
	flw		f3, 0(x4)	# 180
	fle		f1, f3, fle.33474	# 207
	fsub	f1, f2, f1	# 207
	jal		x0, sin.2620.17904	# 207
fle.33474:
	lui		x4, %hi(l.27799)	# 181
	ori		x4, x4, %lo(l.27799)	# 181
	flw		f2, 0(x4)	# 181
	fle		f2, f1, fle.33475	# 208
	fmul	f2, f1, f1	# 194
	fmul	f3, f1, f2	# 195
	lui		x4, %hi(l.27801)	# 196
	ori		x4, x4, %lo(l.27801)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f3	# 196
	fsub	f1, f1, f4	# 196
	lui		x4, %hi(l.27803)	# 196
	ori		x4, x4, %lo(l.27803)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f2	# 196
	fmul	f4, f4, f3	# 196
	fadd	f1, f1, f4	# 196
	lui		x4, %hi(l.27805)	# 196
	ori		x4, x4, %lo(l.27805)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f2	# 196
	fmul	f2, f4, f2	# 196
	fmul	f2, f2, f3	# 196
	fsub	f1, f1, f2	# 196
	jalr	x0, x1, 0	# 196
fle.33475:
	fsub	f1, f3, f1	# 208
	fmul	f1, f1, f1	# 199
	fmul	f2, f1, f1	# 200
	lui		x4, %hi(l.27810)	# 201
	ori		x4, x4, %lo(l.27810)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f4, f4, f1	# 201
	fsub	f3, f30, f4	# 201
	lui		x4, %hi(l.27812)	# 201
	ori		x4, x4, %lo(l.27812)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f4, f4, f2	# 201
	fadd	f3, f3, f4	# 201
	lui		x4, %hi(l.27814)	# 201
	ori		x4, x4, %lo(l.27814)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f1, f4, f1	# 201
	fmul	f1, f1, f2	# 201
	fsub	f1, f3, f1	# 201
	jalr	x0, x1, 0	# 201
fle.33473:
	fsub	f1, f1, f2	# 206
	sw		x1, 0(x2)	# 206
	addi	x2, x2, -4	# 206
	jal		x1, sin.2620.17904	# 206
	addi	x2, x2, 4	# 206
	lw		x1, 0(x2)	# 206
	fsub	f1, f0, f1	# 206
	jalr	x0, x1, 0	# 206
fle.33472:
	fsub	f1, f1, f2	# 205
	jal		x0, sin.2620.17904	# 205
cos.2622.17906:
	fle		f0, f1, fle.33476	# 212
	fsub	f1, f0, f1	# 212
	jal		x0, cos.2622.17906	# 212
fle.33476:
	lui		x4, %hi(l.27799)	# 181
	ori		x4, x4, %lo(l.27799)	# 181
	flw		f2, 0(x4)	# 181
	fle		f1, f2, fle.33477	# 213
	lui		x4, %hi(l.27796)	# 180
	ori		x4, x4, %lo(l.27796)	# 180
	flw		f2, 0(x4)	# 180
	fsub	f1, f2, f1	# 213
	jal		x0, sin.2620.17904	# 213
fle.33477:
	fmul	f1, f1, f1	# 199
	fmul	f2, f1, f1	# 200
	lui		x4, %hi(l.27810)	# 201
	ori		x4, x4, %lo(l.27810)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f4, f4, f1	# 201
	fsub	f3, f30, f4	# 201
	lui		x4, %hi(l.27812)	# 201
	ori		x4, x4, %lo(l.27812)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f4, f4, f2	# 201
	fadd	f3, f3, f4	# 201
	lui		x4, %hi(l.27814)	# 201
	ori		x4, x4, %lo(l.27814)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f1, f4, f1	# 201
	fmul	f1, f1, f2	# 201
	fsub	f1, f3, f1	# 201
	jalr	x0, x1, 0	# 201
atan.2624.17908:
	fle		f0, f1, fle.33478	# 217
	fsub	f1, f0, f1	# 217
	sw		x1, 0(x2)	# 217
	addi	x2, x2, -4	# 217
	jal		x1, atan.2624.17908	# 217
	addi	x2, x2, 4	# 217
	lw		x1, 0(x2)	# 217
	fsub	f1, f0, f1	# 217
	jalr	x0, x1, 0	# 217
fle.33478:
	lui		x4, %hi(l.27826)	# 218
	ori		x4, x4, %lo(l.27826)	# 218
	flw		f2, 0(x4)	# 218
	fle		f1, f2, fle.33479	# 218
	fdiv	f1, f30, f1	# 218
	sw		x1, 0(x2)	# 218
	addi	x2, x2, -4	# 218
	jal		x1, atan.2624.17908	# 218
	addi	x2, x2, 4	# 218
	lw		x1, 0(x2)	# 218
	lui		x4, %hi(l.27796)	# 180
	ori		x4, x4, %lo(l.27796)	# 180
	flw		f2, 0(x4)	# 180
	fsub	f1, f2, f1	# 218
	jalr	x0, x1, 0	# 218
fle.33479:
	lui		x4, %hi(l.27830)	# 219
	ori		x4, x4, %lo(l.27830)	# 219
	flw		f2, 0(x4)	# 219
	fle		f2, f1, fle.33480	# 219
	fmul	f2, f1, f1	# 221
	fmul	f3, f1, f2	# 222
	fmul	f4, f2, f2	# 223
	lui		x4, %hi(l.27832)	# 224
	ori		x4, x4, %lo(l.27832)	# 224
	flw		f5, 0(x4)	# 224
	fmul	f5, f5, f3	# 224
	fsub	f1, f1, f5	# 224
	lui		x4, %hi(l.27834)	# 224
	ori		x4, x4, %lo(l.27834)	# 224
	flw		f5, 0(x4)	# 224
	fmul	f5, f5, f2	# 224
	fmul	f5, f5, f3	# 224
	fadd	f1, f1, f5	# 224
	lui		x4, %hi(l.27836)	# 224
	ori		x4, x4, %lo(l.27836)	# 224
	flw		f5, 0(x4)	# 224
	fmul	f5, f5, f4	# 224
	fmul	f5, f5, f3	# 224
	fsub	f1, f1, f5	# 224
	lui		x4, %hi(l.27838)	# 225
	ori		x4, x4, %lo(l.27838)	# 225
	flw		f5, 0(x4)	# 225
	fmul	f2, f5, f2	# 225
	fmul	f2, f2, f4	# 225
	fmul	f2, f2, f3	# 225
	fadd	f1, f1, f2	# 224
	lui		x4, %hi(l.27840)	# 225
	ori		x4, x4, %lo(l.27840)	# 225
	flw		f2, 0(x4)	# 225
	fmul	f2, f2, f4	# 225
	fmul	f2, f2, f4	# 225
	fmul	f2, f2, f3	# 225
	fsub	f1, f1, f2	# 224
	jalr	x0, x1, 0	# 224
fle.33480:
	fsub	f3, f1, f30	# 219
	fadd	f1, f1, f30	# 219
	fdiv	f1, f3, f1	# 219
	sw		x1, 0(x2)	# 219
	addi	x2, x2, -4	# 219
	jal		x1, atan.2624.17908	# 219
	addi	x2, x2, 4	# 219
	lw		x1, 0(x2)	# 219
	lui		x4, %hi(l.27799)	# 181
	ori		x4, x4, %lo(l.27799)	# 181
	flw		f2, 0(x4)	# 181
	fadd	f1, f2, f1	# 219
	jalr	x0, x1, 0	# 219
print_int.2626.17910:
	addi	x5, x0, 10	# 228
	ble		x5, x4, ble.33481	# 228
	addi	x4, x4, 48	# 228
	jal		x0, min_caml_print_char	# 228
ble.33481:
	div		x6, x4, x5	# 230
	sw		x4, 0(x2)	# 231
	sw		x5, -4(x2)	# 231
	sw		x6, -8(x2)	# 231
	addi	x4, x6, 0	# 231
	sw		x1, -12(x2)	# 231
	addi	x2, x2, -16	# 231
	jal		x1, print_int.2626.17910	# 231
	addi	x2, x2, 16	# 231
	lw		x1, -12(x2)	# 231
	lw		x4, -8(x2)	# 231
	lw		x5, -4(x2)	# 231
	mul		x4, x4, x5	# 231
	lw		x5, 0(x2)	# 231
	sub		x4, x5, x4	# 231
	addi	x4, x4, 48	# 231
	jal		x0, min_caml_print_char	# 231
read_object.2763.17912:
	addi	x5, x0, 60	# 12
	ble		x5, x4, ble.33482	# 909
	sw		x4, 0(x2)	# 827
	sw		x1, -4(x2)	# 827
	addi	x2, x2, -8	# 827
	jal		x1, min_caml_read_int	# 827
	addi	x2, x2, 8	# 827
	lw		x1, -4(x2)	# 827
	beq		x4, x20, beq.33484	# 828
	sw		x4, -4(x2)	# 830
	sw		x1, -8(x2)	# 830
	addi	x2, x2, -12	# 830
	jal		x1, min_caml_read_int	# 830
	addi	x2, x2, 12	# 830
	lw		x1, -8(x2)	# 830
	sw		x4, -8(x2)	# 831
	sw		x1, -12(x2)	# 831
	addi	x2, x2, -16	# 831
	jal		x1, min_caml_read_int	# 831
	addi	x2, x2, 16	# 831
	lw		x1, -12(x2)	# 831
	sw		x4, -12(x2)	# 832
	sw		x1, -16(x2)	# 832
	addi	x2, x2, -20	# 832
	jal		x1, min_caml_read_int	# 832
	addi	x2, x2, 20	# 832
	lw		x1, -16(x2)	# 832
	fadd	f1, f0, f0	# 11
	add		x5, x0, x24	# 16
	sw		x4, -16(x2)	# 834
	fsw		f0, -20(x2)	# 834
	sw		x24, -24(x2)	# 834
	addi	x4, x24, 0	# 834
	sw		x1, -28(x2)	# 834
	addi	x2, x2, -32	# 834
	jal		x1, min_caml_create_float_array	# 834
	addi	x2, x2, 32	# 834
	lw		x1, -28(x2)	# 834
	sw		x1, -28(x2)	# 835
	addi	x2, x2, -32	# 835
	jal		x1, min_caml_read_float	# 835
	addi	x2, x2, 32	# 835
	lw		x1, -28(x2)	# 835
	addi	x6, x4, 0	# 835
	fsw		f1, 0(x6)	# 835
	sw		x1, -28(x2)	# 836
	addi	x2, x2, -32	# 836
	jal		x1, min_caml_read_float	# 836
	addi	x2, x2, 32	# 836
	lw		x1, -28(x2)	# 836
	add		x7, x0, x30	# 836
	addi	x8, x4, 4	# 836
	fsw		f1, 0(x8)	# 836
	sw		x1, -28(x2)	# 837
	addi	x2, x2, -32	# 837
	jal		x1, min_caml_read_float	# 837
	addi	x2, x2, 32	# 837
	lw		x1, -28(x2)	# 837
	add		x9, x0, x22	# 65
	addi	x10, x4, 8	# 837
	fsw		f1, 0(x10)	# 837
	lw		x11, -24(x2)	# 839
	flw		f1, -20(x2)	# 839
	sw		x4, -28(x2)	# 839
	sw		x0, -32(x2)	# 839
	addi	x4, x11, 0	# 839
	sw		x1, -36(x2)	# 839
	addi	x2, x2, -40	# 839
	jal		x1, min_caml_create_float_array	# 839
	addi	x2, x2, 40	# 839
	lw		x1, -36(x2)	# 839
	sw		x1, -36(x2)	# 840
	addi	x2, x2, -40	# 840
	jal		x1, min_caml_read_float	# 840
	addi	x2, x2, 40	# 840
	lw		x1, -36(x2)	# 840
	addi	x5, x4, 0	# 840
	fsw		f1, 0(x5)	# 840
	sw		x1, -36(x2)	# 841
	addi	x2, x2, -40	# 841
	jal		x1, min_caml_read_float	# 841
	addi	x2, x2, 40	# 841
	lw		x1, -36(x2)	# 841
	addi	x5, x4, 4	# 841
	fsw		f1, 0(x5)	# 841
	sw		x1, -36(x2)	# 842
	addi	x2, x2, -40	# 842
	jal		x1, min_caml_read_float	# 842
	addi	x2, x2, 40	# 842
	lw		x1, -36(x2)	# 842
	addi	x5, x4, 8	# 842
	fsw		f1, 0(x5)	# 842
	sw		x1, -36(x2)	# 844
	addi	x2, x2, -40	# 844
	jal		x1, min_caml_read_float	# 844
	addi	x2, x2, 40	# 844
	lw		x1, -36(x2)	# 844
	flw		f2, -20(x2)	# 122
	fle		f2, f1, fle.33486	# 122
	addi	x5, x0, 1	# 122
	jal		x0, fle_cont.33485	# 122
fle.33486:
	addi	x5, x0, 0	# 122
fle_cont.33485:
	fsw		f1, -36(x2)	# 846
	sw		x4, -40(x2)	# 846
	sw		x5, -44(x2)	# 846
	sw		x22, -48(x2)	# 846
	addi	x4, x22, 0	# 846
	fadd	f1, f0, f2	# 846
	sw		x1, -52(x2)	# 846
	addi	x2, x2, -56	# 846
	jal		x1, min_caml_create_float_array	# 846
	addi	x2, x2, 56	# 846
	lw		x1, -52(x2)	# 846
	sw		x1, -52(x2)	# 847
	addi	x2, x2, -56	# 847
	jal		x1, min_caml_read_float	# 847
	addi	x2, x2, 56	# 847
	lw		x1, -52(x2)	# 847
	addi	x5, x4, 0	# 847
	fsw		f1, 0(x5)	# 847
	sw		x1, -52(x2)	# 848
	addi	x2, x2, -56	# 848
	jal		x1, min_caml_read_float	# 848
	addi	x2, x2, 56	# 848
	lw		x1, -52(x2)	# 848
	addi	x5, x4, 4	# 848
	fsw		f1, 0(x5)	# 848
	lw		x5, -24(x2)	# 850
	flw		f1, -20(x2)	# 850
	sw		x4, -52(x2)	# 850
	addi	x4, x5, 0	# 850
	sw		x1, -56(x2)	# 850
	addi	x2, x2, -60	# 850
	jal		x1, min_caml_create_float_array	# 850
	addi	x2, x2, 60	# 850
	lw		x1, -56(x2)	# 850
	sw		x1, -56(x2)	# 851
	addi	x2, x2, -60	# 851
	jal		x1, min_caml_read_float	# 851
	addi	x2, x2, 60	# 851
	lw		x1, -56(x2)	# 851
	addi	x5, x4, 0	# 851
	fsw		f1, 0(x5)	# 851
	sw		x1, -56(x2)	# 852
	addi	x2, x2, -60	# 852
	jal		x1, min_caml_read_float	# 852
	addi	x2, x2, 60	# 852
	lw		x1, -56(x2)	# 852
	addi	x5, x4, 4	# 852
	fsw		f1, 0(x5)	# 852
	sw		x1, -56(x2)	# 853
	addi	x2, x2, -60	# 853
	jal		x1, min_caml_read_float	# 853
	addi	x2, x2, 60	# 853
	lw		x1, -56(x2)	# 853
	addi	x5, x4, 8	# 853
	fsw		f1, 0(x5)	# 853
	lw		x5, -24(x2)	# 855
	flw		f1, -20(x2)	# 855
	sw		x4, -56(x2)	# 855
	addi	x4, x5, 0	# 855
	sw		x1, -60(x2)	# 855
	addi	x2, x2, -64	# 855
	jal		x1, min_caml_create_float_array	# 855
	addi	x2, x2, 64	# 855
	lw		x1, -60(x2)	# 855
	lw		x5, -32(x2)	# 856
	lw		x9, -16(x2)	# 856
	beq		x9, x5, beq_cont.33487	# 856
	sw		x1, -60(x2)	# 858
	addi	x2, x2, -64	# 858
	jal		x1, min_caml_read_float	# 858
	addi	x2, x2, 64	# 858
	lw		x1, -60(x2)	# 858
	lui		x11, %hi(l.27872)	# 725
	ori		x11, x11, %lo(l.27872)	# 725
	flw		f2, 0(x11)	# 725
	fmul	f1, f1, f2	# 725
	addi	x11, x4, 0	# 858
	fsw		f1, 0(x11)	# 858
	sw		x1, -60(x2)	# 859
	addi	x2, x2, -64	# 859
	jal		x1, min_caml_read_float	# 859
	addi	x2, x2, 64	# 859
	lw		x1, -60(x2)	# 859
	fmul	f1, f1, f2	# 725
	addi	x11, x4, 4	# 859
	fsw		f1, 0(x11)	# 859
	sw		x1, -60(x2)	# 860
	addi	x2, x2, -64	# 860
	jal		x1, min_caml_read_float	# 860
	addi	x2, x2, 64	# 860
	lw		x1, -60(x2)	# 860
	fmul	f1, f1, f2	# 725
	addi	x11, x4, 8	# 860
	fsw		f1, 0(x11)	# 860
beq_cont.33487:
	lw		x11, -48(x2)	# 867
	lw		x12, -8(x2)	# 867
	beq		x12, x11, beq.33490	# 867
	lw		x13, -44(x2)	# 867
	jal		x0, beq_cont.33489	# 867
beq.33490:
	addi	x13, x0, 1	# 867
beq_cont.33489:
	flw		f1, -20(x2)	# 868
	sw		x4, -60(x2)	# 868
	addi	x4, x30, 0	# 868
	sw		x1, -64(x2)	# 868
	addi	x2, x2, -68	# 868
	jal		x1, min_caml_create_float_array	# 868
	addi	x2, x2, 68	# 868
	lw		x1, -64(x2)	# 868
	addi	x5, x3, 0	# 871
	addi	x3, x3, 44	# 871
	sw		x4, 40(x5)	# 871
	lw		x4, -60(x2)	# 871
	sw		x4, 36(x5)	# 871
	lw		x7, -56(x2)	# 871
	sw		x7, 32(x5)	# 871
	lw		x7, -52(x2)	# 871
	sw		x7, 28(x5)	# 871
	sw		x13, 24(x5)	# 871
	lw		x7, -40(x2)	# 871
	sw		x7, 20(x5)	# 871
	lw		x7, -28(x2)	# 871
	sw		x7, 16(x5)	# 871
	sw		x9, 12(x5)	# 871
	lw		x7, -12(x2)	# 871
	sw		x7, 8(x5)	# 871
	sw		x12, 4(x5)	# 871
	lw		x7, -4(x2)	# 871
	sw		x7, 0(x5)	# 871
	lui		x7, 130048	# 12
	ori		x7, x7, 130048	# 12
	lw		x13, 0(x2)	# 879
	mul		x14, x30, x13	# 879
	add		x7, x7, x14	# 879
	sw		x5, 0(x7)	# 879
	lw		x5, -24(x2)	# 881
	beq		x12, x5, beq.33492	# 881
	beq		x12, x11, beq.33494	# 891
	jal		x0, beq_cont.33491	# 891
beq.33494:
	flw		f1, 0(x6)	# 331
	fmul	f2, f1, f1	# 127
	flw		f3, 0(x8)	# 331
	fmul	f4, f3, f3	# 127
	fadd	f2, f2, f4	# 331
	flw		f4, 0(x10)	# 331
	fmul	f5, f4, f4	# 127
	fadd	f2, f2, f5	# 331
	fsqrt	f2, f2	# 331
	flw		f5, -20(x2)	# 120
	feq		f2, f5, feq.33496	# 120
	flw		f6, -36(x2)	# 122
	fle		f5, f6, fle.33498	# 122
	fdiv	f2, f30, f2	# 332
	jal		x0, feq_cont.33495	# 122
fle.33498:
	fdiv	f2, f25, f2	# 332
	jal		x0, feq_cont.33495	# 120
feq.33496:
	fadd	f2, f0, f30	# 332
feq_cont.33495:
	fmul	f1, f1, f2	# 333
	fsw		f1, 0(x6)	# 333
	fmul	f1, f3, f2	# 334
	fsw		f1, 0(x8)	# 334
	fmul	f1, f4, f2	# 335
	fsw		f1, 0(x10)	# 335
	jal		x0, beq_cont.33491	# 881
beq.33492:
	flw		f1, 0(x6)	# 884
	flw		f2, -20(x2)	# 120
	feq		f1, f2, feq.33500	# 120
	fle		f1, f2, fle.33504	# 121
	fadd	f3, f0, f30	# 261
	jal		x0, feq_cont.33501	# 121
fle.33504:
	fadd	f3, f0, f25	# 262
	jal		x0, feq_cont.33501	# 120
feq.33502:
	fadd	f3, f0, f2	# 260
feq_cont.33501:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 885
	jal		x0, feq_cont.33499	# 120
feq.33500:
	fadd	f1, f0, f2	# 885
feq_cont.33499:
	fsw		f1, 0(x6)	# 885
	flw		f1, 0(x8)	# 886
	feq		f1, f2, feq.33506	# 120
	fle		f1, f2, fle.33510	# 121
	fadd	f3, f0, f30	# 261
	jal		x0, feq_cont.33507	# 121
fle.33510:
	fadd	f3, f0, f25	# 262
	jal		x0, feq_cont.33507	# 120
feq.33508:
	fadd	f3, f0, f2	# 260
feq_cont.33507:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 887
	jal		x0, feq_cont.33505	# 120
feq.33506:
	fadd	f1, f0, f2	# 887
feq_cont.33505:
	fsw		f1, 0(x8)	# 887
	flw		f1, 0(x10)	# 888
	feq		f1, f2, feq.33512	# 120
	fle		f1, f2, fle.33516	# 121
	fadd	f2, f0, f30	# 261
	jal		x0, feq_cont.33513	# 121
fle.33516:
	fadd	f2, f0, f25	# 262
feq_cont.33513:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f2, f1	# 889
	jal		x0, feq_cont.33511	# 120
feq.33512:
	fadd	f1, f0, f2	# 889
feq_cont.33511:
	fsw		f1, 0(x10)	# 889
beq_cont.33491:
	lw		x5, -32(x2)	# 897
	beq		x9, x5, beq_cont.33517	# 897
	addi	x5, x4, 0	# 786
	flw		f1, 0(x5)	# 786
	fsw		f1, -64(x2)	# 786
	sw		x1, -68(x2)	# 786
	addi	x2, x2, -72	# 786
	jal		x1, cos.2622.17906	# 786
	addi	x2, x2, 72	# 786
	lw		x1, -68(x2)	# 786
	flw		f2, -64(x2)	# 787
	fsw		f1, -68(x2)	# 787
	fadd	f1, f0, f2	# 787
	sw		x1, -72(x2)	# 787
	addi	x2, x2, -76	# 787
	jal		x1, sin.2620.17904	# 787
	addi	x2, x2, 76	# 787
	lw		x1, -72(x2)	# 787
	lw		x4, -60(x2)	# 788
	addi	x7, x4, 4	# 788
	flw		f2, 0(x7)	# 788
	fsw		f1, -72(x2)	# 788
	fsw		f2, -76(x2)	# 788
	fadd	f1, f0, f2	# 788
	sw		x1, -80(x2)	# 788
	addi	x2, x2, -84	# 788
	jal		x1, cos.2622.17906	# 788
	addi	x2, x2, 84	# 788
	lw		x1, -80(x2)	# 788
	flw		f2, -76(x2)	# 789
	fsw		f1, -80(x2)	# 789
	fadd	f1, f0, f2	# 789
	sw		x1, -84(x2)	# 789
	addi	x2, x2, -88	# 789
	jal		x1, sin.2620.17904	# 789
	addi	x2, x2, 88	# 789
	lw		x1, -84(x2)	# 789
	lw		x4, -60(x2)	# 790
	addi	x4, x4, 8	# 790
	flw		f2, 0(x4)	# 790
	sw		x4, -84(x2)	# 790
	fsw		f1, -88(x2)	# 790
	fsw		f2, -92(x2)	# 790
	fadd	f1, f0, f2	# 790
	sw		x1, -96(x2)	# 790
	addi	x2, x2, -100	# 790
	jal		x1, cos.2622.17906	# 790
	addi	x2, x2, 100	# 790
	lw		x1, -96(x2)	# 790
	flw		f2, -92(x2)	# 791
	fsw		f1, -96(x2)	# 791
	fadd	f1, f0, f2	# 791
	sw		x1, -100(x2)	# 791
	addi	x2, x2, -104	# 791
	jal		x1, sin.2620.17904	# 791
	addi	x2, x2, 104	# 791
	lw		x1, -100(x2)	# 791
	flw		f2, -80(x2)	# 793
	flw		f3, -96(x2)	# 793
	fmul	f4, f2, f3	# 793
	flw		f5, -72(x2)	# 794
	flw		f6, -88(x2)	# 794
	fmul	f7, f5, f6	# 794
	fmul	f8, f7, f3	# 794
	flw		f9, -68(x2)	# 794
	fmul	f10, f9, f1	# 794
	fsub	f8, f8, f10	# 794
	fmul	f10, f9, f6	# 795
	fmul	f11, f10, f3	# 795
	fmul	f12, f5, f1	# 795
	fadd	f11, f11, f12	# 795
	fmul	f12, f2, f1	# 797
	fmul	f7, f7, f1	# 798
	fmul	f13, f9, f3	# 798
	fadd	f7, f7, f13	# 798
	fmul	f1, f10, f1	# 799
	fmul	f3, f5, f3	# 799
	fsub	f1, f1, f3	# 799
	fsub	f3, f0, f6	# 123
	fmul	f5, f5, f2	# 802
	fmul	f2, f9, f2	# 803
	flw		f6, 0(x6)	# 806
	flw		f9, 0(x8)	# 807
	flw		f10, 0(x10)	# 808
	fmul	f13, f4, f4	# 127
	fmul	f13, f6, f13	# 813
	fmul	f14, f12, f12	# 127
	fmul	f14, f9, f14	# 813
	fadd	f13, f13, f14	# 813
	fmul	f14, f3, f3	# 127
	fmul	f14, f10, f14	# 813
	fadd	f13, f13, f14	# 813
	fsw		f13, 0(x6)	# 813
	fmul	f13, f8, f8	# 127
	fmul	f13, f6, f13	# 814
	fmul	f14, f7, f7	# 127
	fmul	f14, f9, f14	# 814
	fadd	f13, f13, f14	# 814
	fmul	f14, f5, f5	# 127
	fmul	f14, f10, f14	# 814
	fadd	f13, f13, f14	# 814
	fsw		f13, 0(x8)	# 814
	fmul	f13, f11, f11	# 127
	fmul	f13, f6, f13	# 815
	fmul	f14, f1, f1	# 127
	fmul	f14, f9, f14	# 815
	fadd	f13, f13, f14	# 815
	fmul	f14, f2, f2	# 127
	fmul	f14, f10, f14	# 815
	fadd	f13, f13, f14	# 815
	fsw		f13, 0(x10)	# 815
	lui		x4, %hi(l.27964)	# 818
	ori		x4, x4, %lo(l.27964)	# 818
	flw		f13, 0(x4)	# 818
	fmul	f14, f6, f8	# 818
	fmul	f14, f14, f11	# 818
	fmul	f15, f9, f7	# 818
	fmul	f15, f15, f1	# 818
	fadd	f14, f14, f15	# 818
	fmul	f15, f10, f5	# 818
	fmul	f15, f15, f2	# 818
	fadd	f14, f14, f15	# 818
	fmul	f14, f13, f14	# 818
	fsw		f14, 0(x5)	# 818
	fmul	f4, f6, f4	# 819
	fmul	f6, f4, f11	# 819
	fmul	f9, f9, f12	# 819
	fmul	f1, f9, f1	# 819
	fadd	f1, f6, f1	# 819
	fmul	f3, f10, f3	# 819
	fmul	f2, f3, f2	# 819
	fadd	f1, f1, f2	# 819
	fmul	f1, f13, f1	# 819
	fsw		f1, 0(x7)	# 819
	fmul	f1, f4, f8	# 820
	fmul	f2, f9, f7	# 820
	fadd	f1, f1, f2	# 820
	fmul	f2, f3, f5	# 820
	fadd	f1, f1, f2	# 820
	fmul	f1, f13, f1	# 820
	lw		x4, -84(x2)	# 820
	fsw		f1, 0(x4)	# 820
beq_cont.33517:
	addi	x4, x0, 1	# 901
	jal		x0, beq_cont.33483	# 828
beq.33484:
	addi	x4, x0, 0	# 904
beq_cont.33483:
	beq		x4, x0, beq.33519	# 910
	lw		x4, 0(x2)	# 911
	addi	x4, x4, 1	# 911
	jal		x0, read_object.2763.17912	# 911
beq.33519:
	lui		x4, 130000	# 913
	ori		x4, x4, 130000	# 913
	lw		x5, 0(x2)	# 913
	sw		x5, 0(x4)	# 913
	jalr	x0, x1, 0	# 913
ble.33482:
	jalr	x0, x1, 0	# 914
read_net_item.2767.17914:
	sw		x4, 0(x2)	# 925
	sw		x1, -4(x2)	# 925
	addi	x2, x2, -8	# 925
	jal		x1, min_caml_read_int	# 925
	addi	x2, x2, 8	# 925
	lw		x1, -4(x2)	# 925
	add		x5, x0, x20	# 28
	beq		x4, x20, beq.33522	# 926
	lw		x5, 0(x2)	# 928
	addi	x6, x5, 1	# 928
	sw		x4, -4(x2)	# 928
	addi	x4, x6, 0	# 928
	sw		x1, -8(x2)	# 928
	addi	x2, x2, -12	# 928
	jal		x1, read_net_item.2767.17914	# 928
	addi	x2, x2, 12	# 928
	lw		x1, -8(x2)	# 928
	lw		x5, 0(x2)	# 929
	mul		x5, x30, x5	# 929
	add		x5, x4, x5	# 929
	lw		x6, -4(x2)	# 929
	sw		x6, 0(x5)	# 929
	jalr	x0, x1, 0	# 929
beq.33522:
	lw		x4, 0(x2)	# 926
	addi	x4, x4, 1	# 926
	jal		x0, min_caml_create_array	# 926
read_or_network.2769.17916:
	add		x5, x0, x0	# 6
	sw		x4, 0(x2)	# 933
	addi	x4, x0, 0	# 933
	sw		x1, -4(x2)	# 933
	addi	x2, x2, -8	# 933
	jal		x1, read_net_item.2767.17914	# 933
	addi	x2, x2, 8	# 933
	lw		x1, -4(x2)	# 933
	addi	x5, x4, 0	# 933
	addi	x4, x5, 0	# 934
	lw		x4, 0(x4)	# 934
	beq		x4, x20, beq.33523	# 934
	lw		x4, 0(x2)	# 937
	addi	x6, x4, 1	# 937
	sw		x5, -4(x2)	# 937
	addi	x4, x6, 0	# 937
	sw		x1, -8(x2)	# 937
	addi	x2, x2, -12	# 937
	jal		x1, read_or_network.2769.17916	# 937
	addi	x2, x2, 12	# 937
	lw		x1, -8(x2)	# 937
	lw		x5, 0(x2)	# 938
	mul		x5, x30, x5	# 938
	add		x5, x4, x5	# 938
	lw		x6, -4(x2)	# 938
	sw		x6, 0(x5)	# 938
	jalr	x0, x1, 0	# 938
beq.33523:
	lw		x4, 0(x2)	# 935
	addi	x4, x4, 1	# 935
	jal		x0, min_caml_create_array	# 935
read_and_network.2771.17918:
	add		x5, x0, x0	# 6
	sw		x4, 0(x2)	# 942
	addi	x4, x0, 0	# 942
	sw		x1, -4(x2)	# 942
	addi	x2, x2, -8	# 942
	jal		x1, read_net_item.2767.17914	# 942
	addi	x2, x2, 8	# 942
	lw		x1, -4(x2)	# 942
	addi	x5, x4, 0	# 943
	lw		x5, 0(x5)	# 943
	beq		x5, x20, beq.33524	# 943
	lui		x5, 130332	# 28
	ori		x5, x5, 130332	# 28
	lw		x6, 0(x2)	# 945
	mul		x7, x30, x6	# 945
	add		x5, x5, x7	# 945
	sw		x4, 0(x5)	# 945
	addi	x4, x6, 1	# 946
	jal		x0, read_and_network.2771.17918	# 946
beq.33524:
	jalr	x0, x1, 0	# 943
iter_setup_dirvec_constants.2868.17920:
	ble		x0, x5, ble.33526	# 1318
	jalr	x0, x1, 0	# 1331
ble.33526:
	lui		x7, 130048	# 12
	ori		x7, x7, 130048	# 12
	mul		x8, x30, x5	# 1319
	add		x7, x7, x8	# 1319
	lw		x7, 0(x7)	# 1319
	lw		x9, 4(x4)	# 693
	lw		x10, 0(x4)	# 687
	lw		x11, 4(x7)	# 401
	sw		x4, 0(x2)	# 1323
	sw		x5, -4(x2)	# 1323
	beq		x11, x21, beq.33529	# 1323
	beq		x11, x22, beq.33531	# 1325
	fadd	f1, f0, f0	# 11
	addi	x11, x0, 5	# 98
	fsw		f0, -8(x2)	# 1289
	addi	x4, x11, 0	# 1289
	sw		x1, -12(x2)	# 1289
	addi	x2, x2, -16	# 1289
	jal		x1, min_caml_create_float_array	# 1289
	addi	x2, x2, 16	# 1289
	lw		x1, -12(x2)	# 1289
	addi	x5, x10, 0	# 1291
	flw		f1, 0(x5)	# 1291
	addi	x5, x10, 4	# 1291
	flw		f2, 0(x5)	# 1291
	addi	x5, x10, 8	# 1291
	flw		f3, 0(x5)	# 1291
	fmul	f4, f1, f1	# 127
	lw		x5, 16(x7)	# 439
	addi	x10, x5, 0	# 444
	flw		f5, 0(x10)	# 444
	fmul	f4, f4, f5	# 1015
	fmul	f6, f2, f2	# 127
	addi	x10, x5, 4	# 454
	flw		f7, 0(x10)	# 454
	fmul	f6, f6, f7	# 1015
	fadd	f4, f4, f6	# 1015
	fmul	f6, f3, f3	# 127
	addi	x5, x5, 8	# 464
	flw		f8, 0(x5)	# 464
	fmul	f6, f6, f8	# 1015
	fadd	f4, f4, f6	# 1015
	lw		x5, 12(x7)	# 430
	beq		x5, x0, beq_cont.33532	# 1017
	fmul	f6, f2, f3	# 1021
	lw		x10, 36(x7)	# 559
	addi	x11, x10, 0	# 564
	flw		f9, 0(x11)	# 564
	fmul	f6, f6, f9	# 1021
	fadd	f4, f4, f6	# 1020
	fmul	f6, f3, f1	# 1022
	addi	x11, x10, 4	# 574
	flw		f9, 0(x11)	# 574
	fmul	f6, f6, f9	# 1022
	fadd	f4, f4, f6	# 1020
	fmul	f6, f1, f2	# 1023
	addi	x10, x10, 8	# 584
	flw		f9, 0(x10)	# 584
	fmul	f6, f6, f9	# 1023
	fadd	f4, f4, f6	# 1020
beq_cont.33532:
	fmul	f5, f1, f5	# 1292
	fsub	f5, f0, f5	# 123
	fmul	f6, f2, f7	# 1293
	fsub	f6, f0, f6	# 123
	fmul	f7, f3, f8	# 1294
	fsub	f7, f0, f7	# 123
	addi	x10, x4, 0	# 1296
	fsw		f4, 0(x10)	# 1296
	beq		x5, x0, beq.33535	# 1300
	lw		x5, 36(x7)	# 569
	addi	x6, x5, 4	# 574
	flw		f8, 0(x6)	# 574
	fmul	f9, f3, f8	# 1301
	addi	x6, x5, 8	# 584
	flw		f10, 0(x6)	# 584
	fmul	f11, f2, f10	# 1301
	fadd	f9, f9, f11	# 1301
	lui		x6, %hi(l.27810)	# 126
	ori		x6, x6, %lo(l.27810)	# 126
	flw		f11, 0(x6)	# 126
	fmul	f9, f9, f11	# 126
	fsub	f5, f5, f9	# 1301
	addi	x6, x4, 4	# 1301
	fsw		f5, 0(x6)	# 1301
	addi	x5, x5, 0	# 564
	flw		f5, 0(x5)	# 564
	fmul	f3, f3, f5	# 1302
	fmul	f9, f1, f10	# 1302
	fadd	f3, f3, f9	# 1302
	fmul	f3, f3, f11	# 126
	fsub	f3, f6, f3	# 1302
	addi	x5, x4, 8	# 1302
	fsw		f3, 0(x5)	# 1302
	fmul	f2, f2, f5	# 1303
	fmul	f1, f1, f8	# 1303
	fadd	f1, f2, f1	# 1303
	fmul	f1, f1, f11	# 126
	fsub	f1, f7, f1	# 1303
	addi	x5, x4, 12	# 1303
	fsw		f1, 0(x5)	# 1303
	jal		x0, beq_cont.33534	# 1300
beq.33535:
	addi	x5, x4, 4	# 1305
	fsw		f5, 0(x5)	# 1305
	addi	x5, x4, 8	# 1306
	fsw		f6, 0(x5)	# 1306
	addi	x5, x4, 12	# 1307
	fsw		f7, 0(x5)	# 1307
beq_cont.33534:
	flw		f1, -8(x2)	# 120
	feq		f4, f1, feq_cont.33536	# 120
	fdiv	f1, f30, f4	# 1310
	addi	x5, x4, 16	# 1310
	fsw		f1, 0(x5)	# 1310
feq_cont.33536:
	add		x5, x9, x8	# 1328
	sw		x4, 0(x5)	# 1328
	jal		x0, beq_cont.33528	# 1325
beq.33531:
	add		x6, x0, x30	# 1270
	fadd	f1, f0, f0	# 11
	fsw		f0, -12(x2)	# 1270
	addi	x4, x30, 0	# 1270
	sw		x1, -16(x2)	# 1270
	addi	x2, x2, -20	# 1270
	jal		x1, min_caml_create_float_array	# 1270
	addi	x2, x2, 20	# 1270
	lw		x1, -16(x2)	# 1270
	addi	x5, x10, 0	# 1272
	flw		f1, 0(x5)	# 1272
	lw		x5, 16(x7)	# 439
	addi	x6, x5, 0	# 444
	flw		f2, 0(x6)	# 444
	fmul	f1, f1, f2	# 1272
	addi	x6, x10, 4	# 1272
	flw		f3, 0(x6)	# 1272
	addi	x6, x5, 4	# 454
	flw		f4, 0(x6)	# 454
	fmul	f3, f3, f4	# 1272
	fadd	f1, f1, f3	# 1272
	addi	x6, x10, 8	# 1272
	flw		f3, 0(x6)	# 1272
	addi	x5, x5, 8	# 464
	flw		f5, 0(x5)	# 464
	fmul	f3, f3, f5	# 1272
	fadd	f1, f1, f3	# 1272
	flw		f3, -12(x2)	# 121
	fle		f1, f3, fle.33539	# 121
	fdiv	f3, f25, f1	# 1276
	addi	x5, x4, 0	# 1276
	fsw		f3, 0(x5)	# 1276
	fdiv	f2, f2, f1	# 1278
	fsub	f2, f0, f2	# 123
	addi	x5, x4, 4	# 1278
	fsw		f2, 0(x5)	# 1278
	fdiv	f2, f4, f1	# 1279
	fsub	f2, f0, f2	# 123
	addi	x5, x4, 8	# 1279
	fsw		f2, 0(x5)	# 1279
	fdiv	f1, f5, f1	# 1280
	fsub	f1, f0, f1	# 123
	addi	x5, x4, 12	# 1280
	fsw		f1, 0(x5)	# 1280
	jal		x0, fle_cont.33538	# 121
fle.33539:
	addi	x5, x4, 0	# 1282
	fsw		f3, 0(x5)	# 1282
fle_cont.33538:
	add		x5, x9, x8	# 1326
	sw		x4, 0(x5)	# 1326
	jal		x0, beq_cont.33528	# 1323
beq.33529:
	addi	x11, x0, 6	# 1243
	fadd	f1, f0, f0	# 11
	fsw		f0, -16(x2)	# 1243
	addi	x4, x11, 0	# 1243
	sw		x1, -20(x2)	# 1243
	addi	x2, x2, -24	# 1243
	jal		x1, min_caml_create_float_array	# 1243
	addi	x2, x2, 24	# 1243
	lw		x1, -20(x2)	# 1243
	addi	x5, x10, 0	# 1245
	flw		f1, 0(x5)	# 1245
	flw		f2, -16(x2)	# 120
	feq		f1, f2, feq.33541	# 120
	lw		x5, 24(x7)	# 421
	fle		f2, f1, fle.33543	# 122
	addi	x11, x0, 1	# 122
	jal		x0, fle_cont.33542	# 122
fle.33543:
	addi	x11, x0, 0	# 122
fle_cont.33542:
	beq		x5, x0, beq.33545	# 252
	fle		f2, f1, fle.33547	# 122
	addi	x5, x0, 0	# 252
	jal		x0, beq_cont.33544	# 122
fle.33547:
	addi	x5, x0, 1	# 252
	jal		x0, beq_cont.33544	# 252
beq.33545:
	addi	x5, x11, 0	# 252
beq_cont.33544:
	lw		x11, 16(x7)	# 439
	addi	x11, x11, 0	# 444
	flw		f3, 0(x11)	# 444
	beq		x5, x0, beq.33549	# 267
	jal		x0, beq_cont.33548	# 267
beq.33549:
	fsub	f3, f0, f3	# 123
beq_cont.33548:
	addi	x5, x4, 0	# 1249
	fsw		f3, 0(x5)	# 1249
	fdiv	f1, f30, f1	# 1251
	addi	x5, x4, 4	# 1251
	fsw		f1, 0(x5)	# 1251
	jal		x0, feq_cont.33540	# 120
feq.33541:
	addi	x5, x4, 4	# 1246
	fsw		f2, 0(x5)	# 1246
feq_cont.33540:
	addi	x5, x10, 4	# 1253
	flw		f1, 0(x5)	# 1253
	feq		f1, f2, feq.33551	# 120
	lw		x5, 24(x7)	# 421
	fle		f2, f1, fle.33553	# 122
	addi	x11, x0, 1	# 122
	jal		x0, fle_cont.33552	# 122
fle.33553:
	addi	x11, x0, 0	# 122
fle_cont.33552:
	beq		x5, x0, beq.33555	# 252
	fle		f2, f1, fle.33557	# 122
	addi	x5, x0, 0	# 252
	jal		x0, beq_cont.33554	# 122
fle.33557:
	addi	x5, x0, 1	# 252
	jal		x0, beq_cont.33554	# 252
beq.33555:
	addi	x5, x11, 0	# 252
beq_cont.33554:
	lw		x11, 16(x7)	# 449
	addi	x11, x11, 4	# 454
	flw		f3, 0(x11)	# 454
	beq		x5, x0, beq.33559	# 267
	jal		x0, beq_cont.33558	# 267
beq.33559:
	fsub	f3, f0, f3	# 123
beq_cont.33558:
	addi	x5, x4, 8	# 1256
	fsw		f3, 0(x5)	# 1256
	fdiv	f1, f30, f1	# 1257
	addi	x5, x4, 12	# 1257
	fsw		f1, 0(x5)	# 1257
	jal		x0, feq_cont.33550	# 120
feq.33551:
	addi	x5, x4, 12	# 1254
	fsw		f2, 0(x5)	# 1254
feq_cont.33550:
	addi	x5, x10, 8	# 1259
	flw		f1, 0(x5)	# 1259
	feq		f1, f2, feq.33561	# 120
	lw		x5, 24(x7)	# 421
	fle		f2, f1, fle.33563	# 122
	addi	x10, x0, 1	# 122
	jal		x0, fle_cont.33562	# 122
fle.33563:
	addi	x10, x0, 0	# 122
fle_cont.33562:
	beq		x5, x0, beq.33565	# 252
	fle		f2, f1, fle.33567	# 122
	addi	x5, x0, 0	# 252
	jal		x0, beq_cont.33564	# 122
fle.33567:
	addi	x5, x0, 1	# 252
	jal		x0, beq_cont.33564	# 252
beq.33565:
	addi	x5, x10, 0	# 252
beq_cont.33564:
	lw		x7, 16(x7)	# 459
	addi	x7, x7, 8	# 464
	flw		f2, 0(x7)	# 464
	beq		x5, x0, beq.33569	# 267
	jal		x0, beq_cont.33568	# 267
beq.33569:
	fsub	f2, f0, f2	# 123
beq_cont.33568:
	addi	x5, x4, 16	# 1262
	fsw		f2, 0(x5)	# 1262
	fdiv	f1, f30, f1	# 1263
	addi	x5, x4, 20	# 1263
	fsw		f1, 0(x5)	# 1263
	jal		x0, feq_cont.33560	# 120
feq.33561:
	addi	x5, x4, 20	# 1260
	fsw		f2, 0(x5)	# 1260
feq_cont.33560:
	add		x5, x9, x8	# 1324
	sw		x4, 0(x5)	# 1324
beq_cont.33528:
	lw		x4, -4(x2)	# 1330
	addi	x5, x4, -1	# 1330
	lw		x4, 0(x2)	# 1330
	jal		x0, iter_setup_dirvec_constants.2868.17920	# 1330
setup_startp_constants.2873.17923:
	ble		x0, x5, ble.33570	# 1343
	jalr	x0, x1, 0	# 1358
ble.33570:
	lui		x7, 130048	# 12
	ori		x7, x7, 130048	# 12
	mul		x8, x30, x5	# 1344
	add		x7, x7, x8	# 1344
	lw		x7, 0(x7)	# 1344
	lw		x8, 40(x7)	# 596
	lw		x9, 4(x7)	# 401
	addi	x10, x4, 0	# 1347
	flw		f1, 0(x10)	# 1347
	lw		x10, 20(x7)	# 479
	addi	x11, x10, 0	# 484
	flw		f2, 0(x11)	# 484
	fsub	f1, f1, f2	# 1347
	addi	x11, x8, 0	# 1347
	fsw		f1, 0(x11)	# 1347
	addi	x12, x4, 4	# 1348
	flw		f1, 0(x12)	# 1348
	addi	x12, x10, 4	# 494
	flw		f2, 0(x12)	# 494
	fsub	f1, f1, f2	# 1348
	addi	x12, x8, 4	# 1348
	fsw		f1, 0(x12)	# 1348
	addi	x14, x4, 8	# 1349
	flw		f1, 0(x14)	# 1349
	addi	x10, x10, 8	# 504
	flw		f2, 0(x10)	# 504
	fsub	f1, f1, f2	# 1349
	addi	x10, x8, 8	# 1349
	fsw		f1, 0(x10)	# 1349
	beq		x9, x22, beq.33573	# 1350
	ble		x9, x22, beq_cont.33572	# 1353
	flw		f1, 0(x11)	# 1354
	flw		f2, 0(x12)	# 1354
	flw		f3, 0(x10)	# 1354
	fmul	f4, f1, f1	# 127
	lw		x10, 16(x7)	# 439
	addi	x11, x10, 0	# 444
	flw		f5, 0(x11)	# 444
	fmul	f4, f4, f5	# 1015
	fmul	f5, f2, f2	# 127
	addi	x11, x10, 4	# 454
	flw		f6, 0(x11)	# 454
	fmul	f5, f5, f6	# 1015
	fadd	f4, f4, f5	# 1015
	fmul	f5, f3, f3	# 127
	addi	x10, x10, 8	# 464
	flw		f6, 0(x10)	# 464
	fmul	f5, f5, f6	# 1015
	fadd	f4, f4, f5	# 1015
	lw		x10, 12(x7)	# 430
	beq		x10, x0, beq.33577	# 1017
	fmul	f5, f2, f3	# 1021
	lw		x6, 36(x7)	# 559
	addi	x7, x6, 0	# 564
	flw		f6, 0(x7)	# 564
	fmul	f5, f5, f6	# 1021
	fadd	f4, f4, f5	# 1020
	fmul	f3, f3, f1	# 1022
	addi	x7, x6, 4	# 574
	flw		f5, 0(x7)	# 574
	fmul	f3, f3, f5	# 1022
	fadd	f3, f4, f3	# 1020
	fmul	f1, f1, f2	# 1023
	addi	x6, x6, 8	# 584
	flw		f2, 0(x6)	# 584
	fmul	f1, f1, f2	# 1023
	fadd	f1, f3, f1	# 1020
	jal		x0, beq_cont.33576	# 1017
beq.33577:
	fadd	f1, f0, f4	# 1018
beq_cont.33576:
	beq		x9, x24, beq.33579	# 1355
	jal		x0, beq_cont.33578	# 1355
beq.33579:
	fsub	f1, f1, f30	# 1355
beq_cont.33578:
	addi	x6, x8, 12	# 1355
	fsw		f1, 0(x6)	# 1355
	jal		x0, beq_cont.33572	# 1353
beq.33573:
	lw		x6, 16(x7)	# 469
	flw		f1, 0(x11)	# 1352
	flw		f2, 0(x12)	# 1352
	flw		f3, 0(x10)	# 1352
	addi	x7, x6, 0	# 345
	flw		f4, 0(x7)	# 345
	fmul	f1, f4, f1	# 345
	addi	x7, x6, 4	# 345
	flw		f4, 0(x7)	# 345
	fmul	f2, f4, f2	# 345
	fadd	f1, f1, f2	# 345
	addi	x6, x6, 8	# 345
	flw		f2, 0(x6)	# 345
	fmul	f2, f2, f3	# 345
	fadd	f1, f1, f2	# 345
	addi	x6, x8, 12	# 1351
	fsw		f1, 0(x6)	# 1351
beq_cont.33572:
	addi	x5, x5, -1	# 1357
	jal		x0, setup_startp_constants.2873.17923	# 1357
check_all_inside.2898.17926:
	mul		x6, x30, x4	# 1412
	add		x6, x5, x6	# 1412
	lw		x6, 0(x6)	# 1412
	beq		x6, x20, beq.33580	# 1413
	lui		x7, 130048	# 12
	ori		x7, x7, 130048	# 12
	mul		x6, x30, x6	# 1416
	add		x6, x7, x6	# 1416
	lw		x6, 0(x6)	# 1416
	lw		x7, 20(x6)	# 479
	addi	x9, x7, 0	# 484
	flw		f4, 0(x9)	# 484
	fsub	f4, f1, f4	# 1398
	addi	x10, x7, 4	# 494
	flw		f5, 0(x10)	# 494
	fsub	f5, f2, f5	# 1399
	addi	x7, x7, 8	# 504
	flw		f6, 0(x7)	# 504
	fsub	f6, f3, f6	# 1400
	lw		x7, 4(x6)	# 401
	beq		x7, x21, beq.33582	# 1402
	beq		x7, x22, beq.33584	# 1404
	fmul	f7, f4, f4	# 127
	lw		x9, 16(x6)	# 439
	addi	x10, x9, 0	# 444
	flw		f8, 0(x10)	# 444
	fmul	f7, f7, f8	# 1015
	fmul	f8, f5, f5	# 127
	addi	x10, x9, 4	# 454
	flw		f9, 0(x10)	# 454
	fmul	f8, f8, f9	# 1015
	fadd	f7, f7, f8	# 1015
	fmul	f8, f6, f6	# 127
	addi	x9, x9, 8	# 464
	flw		f9, 0(x9)	# 464
	fmul	f8, f8, f9	# 1015
	fadd	f7, f7, f8	# 1015
	lw		x9, 12(x6)	# 430
	beq		x9, x0, beq.33586	# 1017
	fmul	f8, f5, f6	# 1021
	lw		x9, 36(x6)	# 559
	addi	x10, x9, 0	# 564
	flw		f9, 0(x10)	# 564
	fmul	f8, f8, f9	# 1021
	fadd	f7, f7, f8	# 1020
	fmul	f6, f6, f4	# 1022
	addi	x10, x9, 4	# 574
	flw		f8, 0(x10)	# 574
	fmul	f6, f6, f8	# 1022
	fadd	f6, f7, f6	# 1020
	fmul	f4, f4, f5	# 1023
	addi	x9, x9, 8	# 584
	flw		f5, 0(x9)	# 584
	fmul	f4, f4, f5	# 1023
	fadd	f4, f6, f4	# 1020
	jal		x0, beq_cont.33585	# 1017
beq.33586:
	fadd	f4, f0, f7	# 1018
beq_cont.33585:
	beq		x7, x24, beq.33588	# 1392
	jal		x0, beq_cont.33587	# 1392
beq.33588:
	fsub	f4, f4, f30	# 1392
beq_cont.33587:
	lw		x6, 24(x6)	# 421
	fle		f0, f4, fle.33590	# 122
	addi	x7, x0, 1	# 122
	jal		x0, fle_cont.33589	# 122
fle.33590:
	addi	x7, x0, 0	# 122
fle_cont.33589:
	beq		x6, x0, beq.33592	# 252
	fle		f0, f4, fle.33594	# 122
	addi	x6, x0, 0	# 252
	jal		x0, beq_cont.33591	# 122
fle.33594:
	addi	x6, x0, 1	# 252
	jal		x0, beq_cont.33591	# 252
beq.33592:
	addi	x6, x7, 0	# 252
beq_cont.33591:
	beq		x6, x0, beq.33596	# 1393
	addi	x6, x0, 0	# 1393
	jal		x0, beq_cont.33581	# 1393
beq.33596:
	addi	x6, x0, 1	# 1393
	jal		x0, beq_cont.33581	# 1404
beq.33584:
	lw		x7, 16(x6)	# 469
	addi	x9, x7, 0	# 345
	flw		f7, 0(x9)	# 345
	fmul	f4, f7, f4	# 345
	addi	x9, x7, 4	# 345
	flw		f7, 0(x9)	# 345
	fmul	f5, f7, f5	# 345
	fadd	f4, f4, f5	# 345
	addi	x7, x7, 8	# 345
	flw		f5, 0(x7)	# 345
	fmul	f5, f5, f6	# 345
	fadd	f4, f4, f5	# 345
	lw		x6, 24(x6)	# 421
	fle		f0, f4, fle.33598	# 122
	addi	x7, x0, 1	# 122
	jal		x0, fle_cont.33597	# 122
fle.33598:
	addi	x7, x0, 0	# 122
fle_cont.33597:
	beq		x6, x0, beq.33600	# 252
	fle		f0, f4, fle.33602	# 122
	addi	x6, x0, 0	# 252
	jal		x0, beq_cont.33599	# 122
fle.33602:
	addi	x6, x0, 1	# 252
	jal		x0, beq_cont.33599	# 252
beq.33600:
	addi	x6, x7, 0	# 252
beq_cont.33599:
	beq		x6, x0, beq.33604	# 1386
	addi	x6, x0, 0	# 1386
	jal		x0, beq_cont.33581	# 1386
beq.33604:
	addi	x6, x0, 1	# 1386
	jal		x0, beq_cont.33581	# 1402
beq.33582:
	fle		f4, f0, fle.33606	# 124
	jal		x0, fle_cont.33605	# 124
fle.33606:
	fsub	f4, f0, f4	# 124
fle_cont.33605:
	lw		x7, 16(x6)	# 439
	addi	x9, x7, 0	# 444
	flw		f8, 0(x9)	# 444
	fle		f8, f4, fle.33608	# 125
	fle		f5, f0, fle.33610	# 124
	fadd	f4, f0, f5	# 124
	jal		x0, fle_cont.33609	# 124
fle.33610:
	fsub	f4, f0, f5	# 124
fle_cont.33609:
	addi	x9, x7, 4	# 454
	flw		f5, 0(x9)	# 454
	fle		f5, f4, fle.33612	# 125
	fle		f6, f0, fle.33614	# 124
	fadd	f4, f0, f6	# 124
	jal		x0, fle_cont.33613	# 124
fle.33614:
	fsub	f4, f0, f6	# 124
fle_cont.33613:
	addi	x7, x7, 8	# 464
	flw		f5, 0(x7)	# 464
	fle		f5, f4, fle.33616	# 125
	addi	x7, x0, 1	# 125
	jal		x0, fle_cont.33607	# 125
fle.33616:
	addi	x7, x0, 0	# 125
	jal		x0, fle_cont.33607	# 125
fle.33612:
	addi	x7, x0, 0	# 1378
	jal		x0, fle_cont.33607	# 125
fle.33608:
	addi	x7, x0, 0	# 1379
fle_cont.33607:
	beq		x7, x0, beq.33618	# 1374
	lw		x6, 24(x6)	# 421
	jal		x0, beq_cont.33581	# 1374
beq.33618:
	lw		x6, 24(x6)	# 421
	beq		x6, x0, beq.33620	# 1380
	addi	x6, x0, 0	# 1380
	jal		x0, beq_cont.33581	# 1380
beq.33620:
	addi	x6, x0, 1	# 1380
beq_cont.33581:
	beq		x6, x0, beq.33621	# 1416
	addi	x4, x0, 0	# 1417
	jalr	x0, x1, 0	# 1417
beq.33621:
	addi	x4, x4, 1	# 1419
	jal		x0, check_all_inside.2898.17926	# 1419
beq.33580:
	addi	x4, x0, 1	# 1414
	jalr	x0, x1, 0	# 1414
shadow_check_and_group.2904.17932:
	mul		x6, x30, x4	# 1432
	add		x6, x5, x6	# 1432
	lw		x6, 0(x6)	# 1432
	beq		x6, x20, beq.33622	# 1432
	lui		x7, 130048	# 12
	ori		x7, x7, 130048	# 12
	mul		x6, x30, x6	# 1174
	add		x7, x7, x6	# 1174
	lw		x7, 0(x7)	# 1174
	add		x8, x0, x0	# 6
	flw		f1, 0(x25)	# 1175
	lw		x9, 20(x7)	# 479
	addi	x10, x9, 0	# 484
	flw		f2, 0(x10)	# 484
	fsub	f2, f1, f2	# 1175
	flw		f3, 0(x27)	# 1176
	addi	x11, x9, 4	# 494
	flw		f4, 0(x11)	# 494
	fsub	f4, f3, f4	# 1176
	flw		f5, 0(x26)	# 1177
	addi	x9, x9, 8	# 504
	flw		f6, 0(x9)	# 504
	fsub	f6, f5, f6	# 1177
	lui		x9, 130748	# 105
	ori		x9, x9, 130748	# 105
	add		x6, x9, x6	# 1179
	lw		x6, 0(x6)	# 1179
	lw		x9, 4(x7)	# 401
	beq		x9, x21, beq.33624	# 1181
	beq		x9, x22, beq.33626	# 1183
	addi	x10, x6, 0	# 1155
	flw		f7, 0(x10)	# 1155
	feq		f7, f0, feq.33628	# 120
	addi	x10, x6, 4	# 1159
	flw		f9, 0(x10)	# 1159
	fmul	f9, f9, f2	# 1159
	addi	x10, x6, 8	# 1159
	flw		f10, 0(x10)	# 1159
	fmul	f10, f10, f4	# 1159
	fadd	f9, f9, f10	# 1159
	addi	x11, x6, 12	# 1159
	flw		f10, 0(x11)	# 1159
	fmul	f10, f10, f6	# 1159
	fadd	f9, f9, f10	# 1159
	fmul	f10, f2, f2	# 127
	lw		x11, 16(x7)	# 439
	addi	x12, x11, 0	# 444
	flw		f11, 0(x12)	# 444
	fmul	f10, f10, f11	# 1015
	fmul	f11, f4, f4	# 127
	addi	x12, x11, 4	# 454
	flw		f12, 0(x12)	# 454
	fmul	f11, f11, f12	# 1015
	fadd	f10, f10, f11	# 1015
	fmul	f11, f6, f6	# 127
	addi	x11, x11, 8	# 464
	flw		f12, 0(x11)	# 464
	fmul	f11, f11, f12	# 1015
	fadd	f10, f10, f11	# 1015
	lw		x11, 12(x7)	# 430
	beq		x11, x0, beq.33630	# 1017
	fmul	f11, f4, f6	# 1021
	lw		x11, 36(x7)	# 559
	addi	x12, x11, 0	# 564
	flw		f12, 0(x12)	# 564
	fmul	f11, f11, f12	# 1021
	fadd	f10, f10, f11	# 1020
	fmul	f6, f6, f2	# 1022
	addi	x12, x11, 4	# 574
	flw		f11, 0(x12)	# 574
	fmul	f6, f6, f11	# 1022
	fadd	f6, f10, f6	# 1020
	fmul	f2, f2, f4	# 1023
	addi	x11, x11, 8	# 584
	flw		f4, 0(x11)	# 584
	fmul	f2, f2, f4	# 1023
	fadd	f2, f6, f2	# 1020
	jal		x0, beq_cont.33629	# 1017
beq.33630:
	fadd	f2, f0, f10	# 1018
beq_cont.33629:
	beq		x9, x24, beq.33632	# 1161
	jal		x0, beq_cont.33631	# 1161
beq.33632:
	fsub	f2, f2, f30	# 1161
beq_cont.33631:
	fmul	f4, f9, f9	# 127
	fmul	f2, f7, f2	# 1162
	fsub	f2, f4, f2	# 1162
	fle		f2, f0, fle.33634	# 121
	lw		x9, 24(x7)	# 421
	beq		x9, x0, beq.33636	# 1164
	fsqrt	f2, f2	# 1165
	fadd	f2, f9, f2	# 1165
	addi	x6, x6, 16	# 1165
	flw		f4, 0(x6)	# 1165
	fmul	f2, f2, f4	# 1165
	fsw		f2, 0(x23)	# 1165
	jal		x0, beq_cont.33635	# 1164
beq.33636:
	fsqrt	f2, f2	# 1167
	fsub	f2, f9, f2	# 1167
	addi	x6, x6, 16	# 1167
	flw		f4, 0(x6)	# 1167
	fmul	f2, f2, f4	# 1167
	fsw		f2, 0(x23)	# 1167
beq_cont.33635:
	addi	x6, x0, 1	# 1168
	jal		x0, beq_cont.33623	# 121
fle.33634:
	addi	x6, x0, 0	# 1169
	jal		x0, beq_cont.33623	# 120
feq.33628:
	addi	x6, x0, 0	# 1157
	jal		x0, beq_cont.33623	# 1183
beq.33626:
	addi	x9, x6, 0	# 1145
	flw		f7, 0(x9)	# 1145
	fle		f0, f7, fle.33638	# 122
	addi	x9, x6, 4	# 1147
	flw		f7, 0(x9)	# 1147
	fmul	f2, f7, f2	# 1147
	addi	x9, x6, 8	# 1147
	flw		f7, 0(x9)	# 1147
	fmul	f4, f7, f4	# 1147
	fadd	f2, f2, f4	# 1147
	addi	x6, x6, 12	# 1147
	flw		f4, 0(x6)	# 1147
	fmul	f4, f4, f6	# 1147
	fadd	f2, f2, f4	# 1147
	fsw		f2, 0(x23)	# 1146
	addi	x6, x0, 1	# 1148
	jal		x0, beq_cont.33623	# 122
fle.33638:
	addi	x6, x0, 0	# 1149
	jal		x0, beq_cont.33623	# 1181
beq.33624:
	addi	x9, x6, 0	# 1112
	flw		f7, 0(x9)	# 1112
	fsub	f7, f7, f2	# 1112
	addi	x9, x6, 4	# 1112
	flw		f8, 0(x9)	# 1112
	fmul	f7, f7, f8	# 1112
	lui		x9, 130740	# 1114
	ori		x9, x9, 130740	# 1114
	flw		f9, 0(x9)	# 1114
	fmul	f10, f7, f9	# 1114
	fadd	f10, f10, f4	# 1114
	fle		f10, f0, fle.33640	# 124
	jal		x0, fle_cont.33639	# 124
fle.33640:
	fsub	f10, f0, f10	# 124
fle_cont.33639:
	lw		x9, 16(x7)	# 449
	addi	x10, x9, 4	# 454
	flw		f12, 0(x10)	# 454
	fle		f12, f10, fle.33642	# 125
	lui		x10, 130744	# 1115
	ori		x10, x10, 130744	# 1115
	flw		f10, 0(x10)	# 1115
	fmul	f10, f7, f10	# 1115
	fadd	f10, f10, f6	# 1115
	fle		f10, f0, fle.33644	# 124
	jal		x0, fle_cont.33643	# 124
fle.33644:
	fsub	f10, f0, f10	# 124
fle_cont.33643:
	addi	x10, x9, 8	# 464
	flw		f13, 0(x10)	# 464
	fle		f13, f10, fle.33646	# 125
	feq		f8, f0, feq.33648	# 120
	addi	x10, x0, 1	# 1116
	jal		x0, fle_cont.33641	# 120
feq.33648:
	addi	x10, x0, 0	# 1116
	jal		x0, fle_cont.33641	# 125
fle.33646:
	addi	x10, x0, 0	# 1117
	jal		x0, fle_cont.33641	# 125
fle.33642:
	addi	x10, x0, 0	# 1118
fle_cont.33641:
	beq		x10, x0, beq.33650	# 1113
	fsw		f7, 0(x23)	# 1120
	addi	x6, x0, 1	# 1120
	jal		x0, beq_cont.33623	# 1113
beq.33650:
	addi	x10, x6, 8	# 1121
	flw		f7, 0(x10)	# 1121
	fsub	f7, f7, f4	# 1121
	addi	x10, x6, 12	# 1121
	flw		f8, 0(x10)	# 1121
	fmul	f7, f7, f8	# 1121
	lui		x10, 130736	# 1123
	ori		x10, x10, 130736	# 1123
	flw		f10, 0(x10)	# 1123
	fmul	f13, f7, f10	# 1123
	fadd	f13, f13, f2	# 1123
	fle		f13, f0, fle.33652	# 124
	jal		x0, fle_cont.33651	# 124
fle.33652:
	fsub	f13, f0, f13	# 124
fle_cont.33651:
	addi	x10, x9, 0	# 444
	flw		f14, 0(x10)	# 444
	fle		f14, f13, fle.33654	# 125
	lui		x10, 130744	# 1124
	ori		x10, x10, 130744	# 1124
	flw		f13, 0(x10)	# 1124
	fmul	f13, f7, f13	# 1124
	fadd	f13, f13, f6	# 1124
	fle		f13, f0, fle.33656	# 124
	jal		x0, fle_cont.33655	# 124
fle.33656:
	fsub	f13, f0, f13	# 124
fle_cont.33655:
	addi	x9, x9, 8	# 464
	flw		f15, 0(x9)	# 464
	fle		f15, f13, fle.33658	# 125
	feq		f8, f0, feq.33660	# 120
	addi	x9, x0, 1	# 1125
	jal		x0, fle_cont.33653	# 120
feq.33660:
	addi	x9, x0, 0	# 1125
	jal		x0, fle_cont.33653	# 125
fle.33658:
	addi	x9, x0, 0	# 1126
	jal		x0, fle_cont.33653	# 125
fle.33654:
	addi	x9, x0, 0	# 1127
fle_cont.33653:
	beq		x9, x0, beq.33662	# 1122
	fsw		f7, 0(x23)	# 1129
	addi	x6, x0, 2	# 1129
	jal		x0, beq_cont.33623	# 1122
beq.33662:
	addi	x9, x6, 16	# 1130
	flw		f7, 0(x9)	# 1130
	fsub	f6, f7, f6	# 1130
	addi	x6, x6, 20	# 1130
	flw		f7, 0(x6)	# 1130
	fmul	f6, f6, f7	# 1130
	fmul	f8, f6, f10	# 1132
	fadd	f2, f8, f2	# 1132
	fle		f2, f0, fle.33664	# 124
	jal		x0, fle_cont.33663	# 124
fle.33664:
	fsub	f2, f0, f2	# 124
fle_cont.33663:
	fle		f14, f2, fle.33666	# 125
	fmul	f2, f6, f9	# 1133
	fadd	f2, f2, f4	# 1133
	fle		f2, f0, fle.33668	# 124
	jal		x0, fle_cont.33667	# 124
fle.33668:
	fsub	f2, f0, f2	# 124
fle_cont.33667:
	fle		f12, f2, fle.33670	# 125
	feq		f7, f0, feq.33672	# 120
	addi	x6, x0, 1	# 1134
	jal		x0, fle_cont.33665	# 120
feq.33672:
	addi	x6, x0, 0	# 1134
	jal		x0, fle_cont.33665	# 125
fle.33670:
	addi	x6, x0, 0	# 1135
	jal		x0, fle_cont.33665	# 125
fle.33666:
	addi	x6, x0, 0	# 1136
fle_cont.33665:
	beq		x6, x0, beq.33674	# 1131
	fsw		f6, 0(x23)	# 1138
	addi	x6, x0, 3	# 1138
	jal		x0, beq_cont.33623	# 1131
beq.33674:
	addi	x6, x0, 0	# 1140
beq_cont.33623:
	flw		f2, 0(x23)	# 1437
	beq		x6, x0, beq.33676	# 1438
	fle		f19, f2, fle.33678	# 125
	addi	x6, x0, 1	# 125
	jal		x0, beq_cont.33675	# 125
fle.33678:
	addi	x6, x0, 0	# 125
	jal		x0, beq_cont.33675	# 1438
beq.33676:
	addi	x6, x0, 0	# 1438
beq_cont.33675:
	beq		x6, x0, beq.33679	# 1438
	fadd	f2, f2, f18	# 1441
	lui		x6, 130312	# 1442
	ori		x6, x6, 130312	# 1442
	flw		f4, 0(x6)	# 1442
	fmul	f4, f4, f2	# 1442
	fadd	f1, f4, f1	# 1442
	lui		x6, 130316	# 1443
	ori		x6, x6, 130316	# 1443
	flw		f4, 0(x6)	# 1443
	fmul	f4, f4, f2	# 1443
	fadd	f3, f4, f3	# 1443
	lui		x6, 130320	# 1444
	ori		x6, x6, 130320	# 1444
	flw		f4, 0(x6)	# 1444
	fmul	f2, f4, f2	# 1444
	fadd	f2, f2, f5	# 1444
	sw		x5, 0(x2)	# 1445
	sw		x4, -4(x2)	# 1445
	sw		x0, -8(x2)	# 1445
	addi	x4, x0, 0	# 1445
	fadd	f31, f0, f3	# 1445
	fadd	f3, f0, f2	# 1445
	fadd	f2, f0, f31	# 1445
	sw		x1, -12(x2)	# 1445
	addi	x2, x2, -16	# 1445
	jal		x1, check_all_inside.2898.17926	# 1445
	addi	x2, x2, 16	# 1445
	lw		x1, -12(x2)	# 1445
	lw		x5, -8(x2)	# 1445
	beq		x4, x5, beq.33680	# 1445
	addi	x4, x0, 1	# 1446
	jalr	x0, x1, 0	# 1446
beq.33680:
	lw		x4, -4(x2)	# 1448
	addi	x4, x4, 1	# 1448
	lw		x5, 0(x2)	# 1448
	jal		x0, shadow_check_and_group.2904.17932	# 1448
beq.33679:
	lw		x6, 24(x7)	# 421
	beq		x6, x0, beq.33681	# 1454
	addi	x4, x4, 1	# 1455
	jal		x0, shadow_check_and_group.2904.17932	# 1455
beq.33681:
	addi	x4, x0, 0	# 1457
	jalr	x0, x1, 0	# 1457
beq.33622:
	addi	x4, x0, 0	# 1433
	jalr	x0, x1, 0	# 1433
shadow_check_one_or_group.2907.17935:
	mul		x6, x30, x4	# 1462
	add		x6, x5, x6	# 1462
	lw		x6, 0(x6)	# 1462
	beq		x6, x20, beq.33682	# 1463
	lui		x7, 130332	# 28
	ori		x7, x7, 130332	# 28
	mul		x6, x30, x6	# 1466
	add		x6, x7, x6	# 1466
	lw		x6, 0(x6)	# 1466
	add		x7, x0, x0	# 6
	sw		x5, 0(x2)	# 1467
	sw		x4, -4(x2)	# 1467
	sw		x0, -8(x2)	# 1467
	addi	x5, x6, 0	# 1467
	addi	x4, x0, 0	# 1467
	sw		x1, -12(x2)	# 1467
	addi	x2, x2, -16	# 1467
	jal		x1, shadow_check_and_group.2904.17932	# 1467
	addi	x2, x2, 16	# 1467
	lw		x1, -12(x2)	# 1467
	lw		x5, -8(x2)	# 1468
	beq		x4, x5, beq.33683	# 1468
	addi	x4, x0, 1	# 1469
	jalr	x0, x1, 0	# 1469
beq.33683:
	lw		x4, -4(x2)	# 1471
	addi	x4, x4, 1	# 1471
	lw		x5, 0(x2)	# 1471
	jal		x0, shadow_check_one_or_group.2907.17935	# 1471
beq.33682:
	addi	x4, x0, 0	# 1464
	jalr	x0, x1, 0	# 1464
shadow_check_one_or_matrix.2910.17938:
	mul		x6, x30, x4	# 1477
	add		x6, x5, x6	# 1477
	lw		x6, 0(x6)	# 1477
	addi	x8, x6, 0	# 1478
	lw		x8, 0(x8)	# 1478
	beq		x8, x20, beq.33684	# 1479
	sw		x6, 0(x2)	# 1483
	sw		x5, -4(x2)	# 1483
	sw		x4, -8(x2)	# 1483
	sw		x0, -12(x2)	# 1483
	beq		x8, x28, beq.33686	# 1483
	lui		x9, 130048	# 12
	ori		x9, x9, 130048	# 12
	mul		x8, x30, x8	# 1174
	add		x9, x9, x8	# 1174
	lw		x9, 0(x9)	# 1174
	flw		f1, 0(x25)	# 1175
	lw		x10, 20(x9)	# 479
	addi	x11, x10, 0	# 484
	flw		f2, 0(x11)	# 484
	fsub	f1, f1, f2	# 1175
	add		x11, x0, x21	# 6
	flw		f2, 0(x27)	# 1176
	addi	x12, x10, 4	# 494
	flw		f3, 0(x12)	# 494
	fsub	f2, f2, f3	# 1176
	flw		f3, 0(x26)	# 1177
	addi	x10, x10, 8	# 504
	flw		f4, 0(x10)	# 504
	fsub	f3, f3, f4	# 1177
	lui		x10, 130748	# 105
	ori		x10, x10, 130748	# 105
	add		x8, x10, x8	# 1179
	lw		x8, 0(x8)	# 1179
	lw		x10, 4(x9)	# 401
	beq		x10, x21, beq.33688	# 1181
	beq		x10, x22, beq.33690	# 1183
	addi	x12, x8, 0	# 1155
	flw		f4, 0(x12)	# 1155
	feq		f4, f0, feq.33692	# 120
	addi	x12, x8, 4	# 1159
	flw		f6, 0(x12)	# 1159
	fmul	f6, f6, f1	# 1159
	addi	x12, x8, 8	# 1159
	flw		f7, 0(x12)	# 1159
	fmul	f7, f7, f2	# 1159
	fadd	f6, f6, f7	# 1159
	addi	x13, x8, 12	# 1159
	flw		f7, 0(x13)	# 1159
	fmul	f7, f7, f3	# 1159
	fadd	f6, f6, f7	# 1159
	fmul	f7, f1, f1	# 127
	lw		x13, 16(x9)	# 439
	addi	x14, x13, 0	# 444
	flw		f8, 0(x14)	# 444
	fmul	f7, f7, f8	# 1015
	fmul	f8, f2, f2	# 127
	addi	x14, x13, 4	# 454
	flw		f9, 0(x14)	# 454
	fmul	f8, f8, f9	# 1015
	fadd	f7, f7, f8	# 1015
	fmul	f8, f3, f3	# 127
	addi	x13, x13, 8	# 464
	flw		f9, 0(x13)	# 464
	fmul	f8, f8, f9	# 1015
	fadd	f7, f7, f8	# 1015
	lw		x13, 12(x9)	# 430
	beq		x13, x0, beq.33694	# 1017
	fmul	f8, f2, f3	# 1021
	lw		x13, 36(x9)	# 559
	addi	x14, x13, 0	# 564
	flw		f9, 0(x14)	# 564
	fmul	f8, f8, f9	# 1021
	fadd	f7, f7, f8	# 1020
	fmul	f3, f3, f1	# 1022
	addi	x14, x13, 4	# 574
	flw		f8, 0(x14)	# 574
	fmul	f3, f3, f8	# 1022
	fadd	f3, f7, f3	# 1020
	fmul	f1, f1, f2	# 1023
	addi	x13, x13, 8	# 584
	flw		f2, 0(x13)	# 584
	fmul	f1, f1, f2	# 1023
	fadd	f1, f3, f1	# 1020
	jal		x0, beq_cont.33693	# 1017
beq.33694:
	fadd	f1, f0, f7	# 1018
beq_cont.33693:
	beq		x10, x24, beq.33696	# 1161
	jal		x0, beq_cont.33695	# 1161
beq.33696:
	fsub	f1, f1, f30	# 1161
beq_cont.33695:
	fmul	f2, f6, f6	# 127
	fmul	f1, f4, f1	# 1162
	fsub	f1, f2, f1	# 1162
	fle		f1, f0, fle.33698	# 121
	lw		x9, 24(x9)	# 421
	beq		x9, x0, beq.33700	# 1164
	fsqrt	f1, f1	# 1165
	fadd	f1, f6, f1	# 1165
	addi	x8, x8, 16	# 1165
	flw		f2, 0(x8)	# 1165
	fmul	f1, f1, f2	# 1165
	fsw		f1, 0(x23)	# 1165
	jal		x0, beq_cont.33699	# 1164
beq.33700:
	fsqrt	f1, f1	# 1167
	fsub	f1, f6, f1	# 1167
	addi	x8, x8, 16	# 1167
	flw		f2, 0(x8)	# 1167
	fmul	f1, f1, f2	# 1167
	fsw		f1, 0(x23)	# 1167
beq_cont.33699:
	addi	x8, x0, 1	# 1168
	jal		x0, beq_cont.33687	# 121
fle.33698:
	addi	x8, x0, 0	# 1169
	jal		x0, beq_cont.33687	# 120
feq.33692:
	addi	x8, x0, 0	# 1157
	jal		x0, beq_cont.33687	# 1183
beq.33690:
	addi	x9, x8, 0	# 1145
	flw		f4, 0(x9)	# 1145
	fle		f0, f4, fle.33702	# 122
	addi	x9, x8, 4	# 1147
	flw		f4, 0(x9)	# 1147
	fmul	f1, f4, f1	# 1147
	addi	x9, x8, 8	# 1147
	flw		f4, 0(x9)	# 1147
	fmul	f2, f4, f2	# 1147
	fadd	f1, f1, f2	# 1147
	addi	x8, x8, 12	# 1147
	flw		f2, 0(x8)	# 1147
	fmul	f2, f2, f3	# 1147
	fadd	f1, f1, f2	# 1147
	fsw		f1, 0(x23)	# 1146
	addi	x8, x0, 1	# 1148
	jal		x0, beq_cont.33687	# 122
fle.33702:
	addi	x8, x0, 0	# 1149
	jal		x0, beq_cont.33687	# 1181
beq.33688:
	addi	x10, x8, 0	# 1112
	flw		f4, 0(x10)	# 1112
	fsub	f4, f4, f1	# 1112
	addi	x10, x8, 4	# 1112
	flw		f5, 0(x10)	# 1112
	fmul	f4, f4, f5	# 1112
	lui		x10, 130740	# 1114
	ori		x10, x10, 130740	# 1114
	flw		f6, 0(x10)	# 1114
	fmul	f7, f4, f6	# 1114
	fadd	f7, f7, f2	# 1114
	fle		f7, f0, fle.33704	# 124
	jal		x0, fle_cont.33703	# 124
fle.33704:
	fsub	f7, f0, f7	# 124
fle_cont.33703:
	lw		x9, 16(x9)	# 449
	addi	x10, x9, 4	# 454
	flw		f9, 0(x10)	# 454
	fle		f9, f7, fle.33706	# 125
	lui		x10, 130744	# 1115
	ori		x10, x10, 130744	# 1115
	flw		f7, 0(x10)	# 1115
	fmul	f7, f4, f7	# 1115
	fadd	f7, f7, f3	# 1115
	fle		f7, f0, fle.33708	# 124
	jal		x0, fle_cont.33707	# 124
fle.33708:
	fsub	f7, f0, f7	# 124
fle_cont.33707:
	addi	x10, x9, 8	# 464
	flw		f10, 0(x10)	# 464
	fle		f10, f7, fle.33710	# 125
	feq		f5, f0, feq.33712	# 120
	addi	x10, x0, 1	# 1116
	jal		x0, fle_cont.33705	# 120
feq.33712:
	addi	x10, x0, 0	# 1116
	jal		x0, fle_cont.33705	# 125
fle.33710:
	addi	x10, x0, 0	# 1117
	jal		x0, fle_cont.33705	# 125
fle.33706:
	addi	x10, x0, 0	# 1118
fle_cont.33705:
	beq		x10, x0, beq.33714	# 1113
	fsw		f4, 0(x23)	# 1120
	addi	x8, x0, 1	# 1120
	jal		x0, beq_cont.33687	# 1113
beq.33714:
	addi	x10, x8, 8	# 1121
	flw		f4, 0(x10)	# 1121
	fsub	f4, f4, f2	# 1121
	addi	x10, x8, 12	# 1121
	flw		f5, 0(x10)	# 1121
	fmul	f4, f4, f5	# 1121
	lui		x10, 130736	# 1123
	ori		x10, x10, 130736	# 1123
	flw		f7, 0(x10)	# 1123
	fmul	f10, f4, f7	# 1123
	fadd	f10, f10, f1	# 1123
	fle		f10, f0, fle.33716	# 124
	jal		x0, fle_cont.33715	# 124
fle.33716:
	fsub	f10, f0, f10	# 124
fle_cont.33715:
	addi	x10, x9, 0	# 444
	flw		f11, 0(x10)	# 444
	fle		f11, f10, fle.33718	# 125
	lui		x10, 130744	# 1124
	ori		x10, x10, 130744	# 1124
	flw		f10, 0(x10)	# 1124
	fmul	f10, f4, f10	# 1124
	fadd	f10, f10, f3	# 1124
	fle		f10, f0, fle.33720	# 124
	jal		x0, fle_cont.33719	# 124
fle.33720:
	fsub	f10, f0, f10	# 124
fle_cont.33719:
	addi	x9, x9, 8	# 464
	flw		f12, 0(x9)	# 464
	fle		f12, f10, fle.33722	# 125
	feq		f5, f0, feq.33724	# 120
	addi	x9, x0, 1	# 1125
	jal		x0, fle_cont.33717	# 120
feq.33724:
	addi	x9, x0, 0	# 1125
	jal		x0, fle_cont.33717	# 125
fle.33722:
	addi	x9, x0, 0	# 1126
	jal		x0, fle_cont.33717	# 125
fle.33718:
	addi	x9, x0, 0	# 1127
fle_cont.33717:
	beq		x9, x0, beq.33726	# 1122
	fsw		f4, 0(x23)	# 1129
	addi	x8, x0, 2	# 1129
	jal		x0, beq_cont.33687	# 1122
beq.33726:
	addi	x9, x8, 16	# 1130
	flw		f4, 0(x9)	# 1130
	fsub	f3, f4, f3	# 1130
	addi	x8, x8, 20	# 1130
	flw		f4, 0(x8)	# 1130
	fmul	f3, f3, f4	# 1130
	fmul	f5, f3, f7	# 1132
	fadd	f1, f5, f1	# 1132
	fle		f1, f0, fle.33728	# 124
	jal		x0, fle_cont.33727	# 124
fle.33728:
	fsub	f1, f0, f1	# 124
fle_cont.33727:
	fle		f11, f1, fle.33730	# 125
	fmul	f1, f3, f6	# 1133
	fadd	f1, f1, f2	# 1133
	fle		f1, f0, fle.33732	# 124
	jal		x0, fle_cont.33731	# 124
fle.33732:
	fsub	f1, f0, f1	# 124
fle_cont.33731:
	fle		f9, f1, fle.33734	# 125
	feq		f4, f0, feq.33736	# 120
	addi	x8, x0, 1	# 1134
	jal		x0, fle_cont.33729	# 120
feq.33736:
	addi	x8, x0, 0	# 1134
	jal		x0, fle_cont.33729	# 125
fle.33734:
	addi	x8, x0, 0	# 1135
	jal		x0, fle_cont.33729	# 125
fle.33730:
	addi	x8, x0, 0	# 1136
fle_cont.33729:
	beq		x8, x0, beq.33738	# 1131
	fsw		f3, 0(x23)	# 1138
	addi	x8, x0, 3	# 1138
	jal		x0, beq_cont.33687	# 1131
beq.33738:
	addi	x8, x0, 0	# 1140
beq_cont.33687:
	beq		x8, x0, beq.33740	# 1489
	flw		f1, 0(x23)	# 1490
	fle		f20, f1, fle.33742	# 125
	addi	x5, x6, 0	# 1491
	addi	x4, x21, 0	# 1491
	sw		x1, -16(x2)	# 1491
	addi	x2, x2, -20	# 1491
	jal		x1, shadow_check_one_or_group.2907.17935	# 1491
	addi	x2, x2, 20	# 1491
	lw		x1, -16(x2)	# 1491
	lw		x5, -12(x2)	# 1491
	beq		x4, x5, beq.33744	# 1491
	addi	x4, x0, 1	# 1492
	jal		x0, beq_cont.33685	# 1491
beq.33744:
	addi	x4, x0, 0	# 1493
	jal		x0, beq_cont.33685	# 125
fle.33742:
	addi	x4, x0, 0	# 1494
	jal		x0, beq_cont.33685	# 1489
beq.33740:
	addi	x4, x0, 0	# 1495
	jal		x0, beq_cont.33685	# 1483
beq.33686:
	addi	x4, x0, 1	# 1484
beq_cont.33685:
	lw		x5, -12(x2)	# 1482
	beq		x4, x5, beq.33745	# 1482
	add		x4, x0, x21	# 6
	lw		x6, 0(x2)	# 1497
	addi	x5, x6, 0	# 1497
	sw		x1, -16(x2)	# 1497
	addi	x2, x2, -20	# 1497
	jal		x1, shadow_check_one_or_group.2907.17935	# 1497
	addi	x2, x2, 20	# 1497
	lw		x1, -16(x2)	# 1497
	lw		x5, -12(x2)	# 1497
	beq		x4, x5, beq.33746	# 1497
	addi	x4, x0, 1	# 1498
	jalr	x0, x1, 0	# 1498
beq.33746:
	lw		x4, -8(x2)	# 1500
	addi	x4, x4, 1	# 1500
	lw		x5, -4(x2)	# 1500
	jal		x0, shadow_check_one_or_matrix.2910.17938	# 1500
beq.33745:
	lw		x4, -8(x2)	# 1502
	addi	x4, x4, 1	# 1502
	lw		x5, -4(x2)	# 1502
	jal		x0, shadow_check_one_or_matrix.2910.17938	# 1502
beq.33684:
	addi	x4, x0, 0	# 1480
	jalr	x0, x1, 0	# 1480
solve_each_element.2913.17941:
	mul		x7, x30, x4	# 1513
	add		x7, x5, x7	# 1513
	lw		x7, 0(x7)	# 1513
	beq		x7, x20, beq.33747	# 1514
	lui		x8, 130048	# 12
	ori		x8, x8, 130048	# 12
	mul		x9, x30, x7	# 1080
	add		x8, x8, x9	# 1080
	lw		x8, 0(x8)	# 1080
	add		x9, x0, x0	# 6
	lui		x10, 130636	# 1082
	ori		x10, x10, 130636	# 1082
	flw		f1, 0(x10)	# 1082
	lw		x10, 20(x8)	# 479
	addi	x11, x10, 0	# 484
	flw		f2, 0(x11)	# 484
	fsub	f2, f1, f2	# 1082
	lui		x12, 130640	# 1083
	ori		x12, x12, 130640	# 1083
	flw		f3, 0(x12)	# 1083
	addi	x12, x10, 4	# 494
	flw		f4, 0(x12)	# 494
	fsub	f4, f3, f4	# 1083
	lui		x13, 130644	# 1084
	ori		x13, x13, 130644	# 1084
	flw		f5, 0(x13)	# 1084
	addi	x10, x10, 8	# 504
	flw		f6, 0(x10)	# 504
	fsub	f6, f5, f6	# 1084
	lw		x10, 4(x8)	# 401
	beq		x10, x21, beq.33749	# 1087
	beq		x10, x22, beq.33751	# 1088
	addi	x11, x6, 0	# 1054
	flw		f7, 0(x11)	# 1054
	addi	x11, x6, 4	# 1054
	flw		f8, 0(x11)	# 1054
	addi	x11, x6, 8	# 1054
	flw		f9, 0(x11)	# 1054
	fmul	f10, f7, f7	# 127
	lw		x11, 16(x8)	# 439
	addi	x12, x11, 0	# 444
	flw		f11, 0(x12)	# 444
	fmul	f10, f10, f11	# 1015
	fmul	f12, f8, f8	# 127
	addi	x12, x11, 4	# 454
	flw		f13, 0(x12)	# 454
	fmul	f12, f12, f13	# 1015
	fadd	f10, f10, f12	# 1015
	fmul	f12, f9, f9	# 127
	addi	x11, x11, 8	# 464
	flw		f14, 0(x11)	# 464
	fmul	f12, f12, f14	# 1015
	fadd	f10, f10, f12	# 1015
	lw		x11, 12(x8)	# 430
	beq		x11, x0, beq_cont.33752	# 1017
	fmul	f12, f8, f9	# 1021
	lw		x12, 36(x8)	# 559
	addi	x13, x12, 0	# 564
	flw		f15, 0(x13)	# 564
	fmul	f12, f12, f15	# 1021
	fadd	f10, f10, f12	# 1020
	fmul	f12, f9, f7	# 1022
	addi	x13, x12, 4	# 574
	flw		f15, 0(x13)	# 574
	fmul	f12, f12, f15	# 1022
	fadd	f10, f10, f12	# 1020
	fmul	f12, f7, f8	# 1023
	addi	x12, x12, 8	# 584
	flw		f15, 0(x12)	# 584
	fmul	f12, f12, f15	# 1023
	fadd	f10, f10, f12	# 1020
beq_cont.33752:
	feq		f10, f0, feq.33755	# 120
	fmul	f15, f7, f2	# 1029
	fmul	f15, f15, f11	# 1029
	fmul	f16, f8, f4	# 1030
	fmul	f16, f16, f13	# 1030
	fadd	f15, f15, f16	# 1029
	fmul	f16, f9, f6	# 1031
	fmul	f16, f16, f14	# 1031
	fadd	f15, f15, f16	# 1029
	beq		x11, x0, beq.33757	# 1033
	fmul	f16, f9, f4	# 1037
	fmul	f17, f8, f6	# 1037
	fadd	f16, f16, f17	# 1037
	lw		x12, 36(x8)	# 559
	addi	x13, x12, 0	# 564
	flw		f17, 0(x13)	# 564
	fmul	f16, f16, f17	# 1037
	fmul	f17, f7, f6	# 1038
	fmul	f9, f9, f2	# 1038
	fadd	f9, f17, f9	# 1038
	addi	x13, x12, 4	# 574
	flw		f17, 0(x13)	# 574
	fmul	f9, f9, f17	# 1038
	fadd	f9, f16, f9	# 1037
	fmul	f7, f7, f4	# 1039
	fmul	f8, f8, f2	# 1039
	fadd	f7, f7, f8	# 1039
	addi	x12, x12, 8	# 584
	flw		f8, 0(x12)	# 584
	fmul	f7, f7, f8	# 1039
	fadd	f7, f9, f7	# 1037
	lui		x12, %hi(l.27810)	# 126
	ori		x12, x12, %lo(l.27810)	# 126
	flw		f8, 0(x12)	# 126
	fmul	f7, f7, f8	# 126
	fadd	f7, f15, f7	# 1036
	jal		x0, beq_cont.33756	# 1033
beq.33757:
	fadd	f7, f0, f15	# 1034
beq_cont.33756:
	fmul	f8, f2, f2	# 127
	fmul	f8, f8, f11	# 1015
	fmul	f9, f4, f4	# 127
	fmul	f9, f9, f13	# 1015
	fadd	f8, f8, f9	# 1015
	fmul	f9, f6, f6	# 127
	fmul	f9, f9, f14	# 1015
	fadd	f8, f8, f9	# 1015
	beq		x11, x0, beq.33759	# 1017
	fmul	f9, f4, f6	# 1021
	lw		x11, 36(x8)	# 559
	addi	x12, x11, 0	# 564
	flw		f11, 0(x12)	# 564
	fmul	f9, f9, f11	# 1021
	fadd	f8, f8, f9	# 1020
	fmul	f6, f6, f2	# 1022
	addi	x12, x11, 4	# 574
	flw		f9, 0(x12)	# 574
	fmul	f6, f6, f9	# 1022
	fadd	f6, f8, f6	# 1020
	fmul	f2, f2, f4	# 1023
	addi	x11, x11, 8	# 584
	flw		f4, 0(x11)	# 584
	fmul	f2, f2, f4	# 1023
	fadd	f2, f6, f2	# 1020
	jal		x0, beq_cont.33758	# 1017
beq.33759:
	fadd	f2, f0, f8	# 1018
beq_cont.33758:
	beq		x10, x24, beq.33761	# 1064
	jal		x0, beq_cont.33760	# 1064
beq.33761:
	fsub	f2, f2, f30	# 1064
beq_cont.33760:
	fmul	f4, f7, f7	# 127
	fmul	f2, f10, f2	# 1066
	fsub	f2, f4, f2	# 1066
	fle		f2, f0, fle.33763	# 121
	fsqrt	f2, f2	# 1069
	lw		x10, 24(x8)	# 421
	beq		x10, x0, beq.33765	# 1070
	jal		x0, beq_cont.33764	# 1070
beq.33765:
	fsub	f2, f0, f2	# 123
beq_cont.33764:
	fsub	f2, f2, f7	# 1071
	fdiv	f2, f2, f10	# 1071
	fsw		f2, 0(x23)	# 1071
	addi	x10, x0, 1	# 1071
	jal		x0, beq_cont.33748	# 121
fle.33763:
	addi	x10, x0, 0	# 1074
	jal		x0, beq_cont.33748	# 120
feq.33755:
	addi	x10, x0, 0	# 1057
	jal		x0, beq_cont.33748	# 1088
beq.33751:
	lw		x10, 16(x8)	# 469
	addi	x11, x6, 0	# 340
	flw		f7, 0(x11)	# 340
	addi	x11, x10, 0	# 340
	flw		f8, 0(x11)	# 340
	fmul	f7, f7, f8	# 340
	addi	x11, x6, 4	# 340
	flw		f9, 0(x11)	# 340
	addi	x11, x10, 4	# 340
	flw		f10, 0(x11)	# 340
	fmul	f9, f9, f10	# 340
	fadd	f7, f7, f9	# 340
	addi	x11, x6, 8	# 340
	flw		f9, 0(x11)	# 340
	addi	x10, x10, 8	# 340
	flw		f11, 0(x10)	# 340
	fmul	f9, f9, f11	# 340
	fadd	f7, f7, f9	# 340
	fle		f7, f0, fle.33767	# 121
	fmul	f2, f8, f2	# 345
	fmul	f4, f10, f4	# 345
	fadd	f2, f2, f4	# 345
	fmul	f4, f11, f6	# 345
	fadd	f2, f2, f4	# 345
	fsub	f2, f0, f2	# 123
	fdiv	f2, f2, f7	# 1005
	fsw		f2, 0(x23)	# 1005
	addi	x10, x0, 1	# 1006
	jal		x0, beq_cont.33748	# 121
fle.33767:
	addi	x10, x0, 0	# 1007
	jal		x0, beq_cont.33748	# 1087
beq.33749:
	addi	x10, x6, 0	# 976
	flw		f7, 0(x10)	# 976
	feq		f7, f0, feq.33769	# 120
	lw		x10, 16(x8)	# 469
	lw		x11, 24(x8)	# 421
	fle		f0, f7, fle.33771	# 122
	addi	x12, x0, 1	# 122
	jal		x0, fle_cont.33770	# 122
fle.33771:
	addi	x12, x0, 0	# 122
fle_cont.33770:
	beq		x11, x0, beq.33773	# 252
	fle		f0, f7, fle.33775	# 122
	addi	x11, x0, 0	# 252
	jal		x0, beq_cont.33772	# 122
fle.33775:
	addi	x11, x0, 1	# 252
	jal		x0, beq_cont.33772	# 252
beq.33773:
	addi	x11, x12, 0	# 252
beq_cont.33772:
	addi	x12, x10, 0	# 978
	flw		f9, 0(x12)	# 978
	beq		x11, x0, beq.33777	# 267
	jal		x0, beq_cont.33776	# 267
beq.33777:
	fsub	f9, f0, f9	# 123
beq_cont.33776:
	fsub	f9, f9, f2	# 980
	fdiv	f9, f9, f7	# 980
	addi	x11, x6, 4	# 981
	flw		f10, 0(x11)	# 981
	fmul	f10, f9, f10	# 981
	fadd	f10, f10, f4	# 981
	fle		f10, f0, fle.33779	# 124
	jal		x0, fle_cont.33778	# 124
fle.33779:
	fsub	f10, f0, f10	# 124
fle_cont.33778:
	addi	x11, x10, 4	# 981
	flw		f11, 0(x11)	# 981
	fle		f11, f10, fle.33781	# 125
	addi	x11, x6, 8	# 982
	flw		f10, 0(x11)	# 982
	fmul	f10, f9, f10	# 982
	fadd	f10, f10, f6	# 982
	fle		f10, f0, fle.33783	# 124
	jal		x0, fle_cont.33782	# 124
fle.33783:
	fsub	f10, f0, f10	# 124
fle_cont.33782:
	addi	x10, x10, 8	# 982
	flw		f11, 0(x10)	# 982
	fle		f11, f10, fle.33785	# 125
	fsw		f9, 0(x23)	# 983
	addi	x10, x0, 1	# 983
	jal		x0, feq_cont.33768	# 125
fle.33785:
	addi	x10, x0, 0	# 984
	jal		x0, feq_cont.33768	# 125
fle.33781:
	addi	x10, x0, 0	# 985
	jal		x0, feq_cont.33768	# 120
feq.33769:
	addi	x10, x0, 0	# 976
feq_cont.33768:
	beq		x10, x0, beq.33787	# 991
	addi	x10, x0, 1	# 991
	jal		x0, beq_cont.33748	# 991
beq.33787:
	addi	x10, x6, 4	# 976
	flw		f9, 0(x10)	# 976
	feq		f9, f0, feq.33789	# 120
	lw		x10, 16(x8)	# 469
	lw		x11, 24(x8)	# 421
	fle		f0, f9, fle.33791	# 122
	addi	x12, x0, 1	# 122
	jal		x0, fle_cont.33790	# 122
fle.33791:
	addi	x12, x0, 0	# 122
fle_cont.33790:
	beq		x11, x0, beq.33793	# 252
	fle		f0, f9, fle.33795	# 122
	addi	x11, x0, 0	# 252
	jal		x0, beq_cont.33792	# 122
fle.33795:
	addi	x11, x0, 1	# 252
	jal		x0, beq_cont.33792	# 252
beq.33793:
	addi	x11, x12, 0	# 252
beq_cont.33792:
	addi	x12, x10, 4	# 978
	flw		f10, 0(x12)	# 978
	beq		x11, x0, beq.33797	# 267
	jal		x0, beq_cont.33796	# 267
beq.33797:
	fsub	f10, f0, f10	# 123
beq_cont.33796:
	fsub	f10, f10, f4	# 980
	fdiv	f10, f10, f9	# 980
	addi	x11, x6, 8	# 981
	flw		f11, 0(x11)	# 981
	fmul	f11, f10, f11	# 981
	fadd	f11, f11, f6	# 981
	fle		f11, f0, fle.33799	# 124
	jal		x0, fle_cont.33798	# 124
fle.33799:
	fsub	f11, f0, f11	# 124
fle_cont.33798:
	addi	x11, x10, 8	# 981
	flw		f12, 0(x11)	# 981
	fle		f12, f11, fle.33801	# 125
	fmul	f11, f10, f7	# 982
	fadd	f11, f11, f2	# 982
	fle		f11, f0, fle.33803	# 124
	jal		x0, fle_cont.33802	# 124
fle.33803:
	fsub	f11, f0, f11	# 124
fle_cont.33802:
	addi	x10, x10, 0	# 982
	flw		f12, 0(x10)	# 982
	fle		f12, f11, fle.33805	# 125
	fsw		f10, 0(x23)	# 983
	addi	x10, x0, 1	# 983
	jal		x0, feq_cont.33788	# 125
fle.33805:
	addi	x10, x0, 0	# 984
	jal		x0, feq_cont.33788	# 125
fle.33801:
	addi	x10, x0, 0	# 985
	jal		x0, feq_cont.33788	# 120
feq.33789:
	addi	x10, x0, 0	# 976
feq_cont.33788:
	beq		x10, x0, beq.33807	# 992
	addi	x10, x0, 2	# 992
	jal		x0, beq_cont.33748	# 992
beq.33807:
	addi	x10, x6, 8	# 976
	flw		f10, 0(x10)	# 976
	feq		f10, f0, feq.33809	# 120
	lw		x10, 16(x8)	# 469
	lw		x11, 24(x8)	# 421
	fle		f0, f10, fle.33811	# 122
	addi	x12, x0, 1	# 122
	jal		x0, fle_cont.33810	# 122
fle.33811:
	addi	x12, x0, 0	# 122
fle_cont.33810:
	beq		x11, x0, beq.33813	# 252
	fle		f0, f10, fle.33815	# 122
	addi	x11, x0, 0	# 252
	jal		x0, beq_cont.33812	# 122
fle.33815:
	addi	x11, x0, 1	# 252
	jal		x0, beq_cont.33812	# 252
beq.33813:
	addi	x11, x12, 0	# 252
beq_cont.33812:
	addi	x12, x10, 8	# 978
	flw		f11, 0(x12)	# 978
	beq		x11, x0, beq.33817	# 267
	jal		x0, beq_cont.33816	# 267
beq.33817:
	fsub	f11, f0, f11	# 123
beq_cont.33816:
	fsub	f6, f11, f6	# 980
	fdiv	f6, f6, f10	# 980
	fmul	f7, f6, f7	# 981
	fadd	f2, f7, f2	# 981
	fle		f2, f0, fle.33819	# 124
	jal		x0, fle_cont.33818	# 124
fle.33819:
	fsub	f2, f0, f2	# 124
fle_cont.33818:
	addi	x11, x10, 0	# 981
	flw		f7, 0(x11)	# 981
	fle		f7, f2, fle.33821	# 125
	fmul	f2, f6, f9	# 982
	fadd	f2, f2, f4	# 982
	fle		f2, f0, fle.33823	# 124
	jal		x0, fle_cont.33822	# 124
fle.33823:
	fsub	f2, f0, f2	# 124
fle_cont.33822:
	addi	x10, x10, 4	# 982
	flw		f4, 0(x10)	# 982
	fle		f4, f2, fle.33825	# 125
	fsw		f6, 0(x23)	# 983
	addi	x10, x0, 1	# 983
	jal		x0, feq_cont.33808	# 125
fle.33825:
	addi	x10, x0, 0	# 984
	jal		x0, feq_cont.33808	# 125
fle.33821:
	addi	x10, x0, 0	# 985
	jal		x0, feq_cont.33808	# 120
feq.33809:
	addi	x10, x0, 0	# 976
feq_cont.33808:
	beq		x10, x0, beq.33827	# 993
	addi	x10, x0, 3	# 993
	jal		x0, beq_cont.33748	# 993
beq.33827:
	addi	x10, x0, 0	# 994
beq_cont.33748:
	beq		x10, x0, beq.33828	# 1517
	flw		f2, 0(x23)	# 1521
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x4, -8(x2)	# 125
	fle		f2, f0, fle_cont.33829	# 125
	lui		x8, 130548	# 1524
	ori		x8, x8, 130548	# 1524
	flw		f4, 0(x8)	# 1524
	fle		f4, f2, fle_cont.33829	# 125
	fadd	f2, f2, f18	# 1526
	addi	x11, x6, 0	# 1527
	flw		f4, 0(x11)	# 1527
	fmul	f4, f4, f2	# 1527
	fadd	f1, f4, f1	# 1527
	addi	x11, x6, 4	# 1528
	flw		f4, 0(x11)	# 1528
	fmul	f4, f4, f2	# 1528
	fadd	f3, f4, f3	# 1528
	addi	x11, x6, 8	# 1529
	flw		f4, 0(x11)	# 1529
	fmul	f4, f4, f2	# 1529
	fadd	f4, f4, f5	# 1529
	sw		x10, -12(x2)	# 1530
	sw		x7, -16(x2)	# 1530
	fsw		f4, -20(x2)	# 1530
	fsw		f3, -24(x2)	# 1530
	fsw		f1, -28(x2)	# 1530
	sw		x8, -32(x2)	# 1530
	fsw		f2, -36(x2)	# 1530
	sw		x0, -40(x2)	# 1530
	addi	x4, x0, 0	# 1530
	fadd	f2, f0, f3	# 1530
	fadd	f3, f0, f4	# 1530
	sw		x1, -44(x2)	# 1530
	addi	x2, x2, -48	# 1530
	jal		x1, check_all_inside.2898.17926	# 1530
	addi	x2, x2, 48	# 1530
	lw		x1, -44(x2)	# 1530
	lw		x5, -40(x2)	# 1530
	beq		x4, x5, fle_cont.33829	# 1530
	flw		f1, -36(x2)	# 1532
	lw		x4, -32(x2)	# 1532
	fsw		f1, 0(x4)	# 1532
	flw		f1, -28(x2)	# 288
	fsw		f1, 0(x25)	# 288
	flw		f1, -24(x2)	# 289
	fsw		f1, 0(x27)	# 289
	flw		f1, -20(x2)	# 290
	fsw		f1, 0(x26)	# 290
	lui		x4, 130564	# 1534
	ori		x4, x4, 130564	# 1534
	lw		x5, -16(x2)	# 1534
	sw		x5, 0(x4)	# 1534
	lui		x4, 130544	# 1535
	ori		x4, x4, 130544	# 1535
	lw		x5, -12(x2)	# 1535
	sw		x5, 0(x4)	# 1535
fle_cont.33829:
	lw		x4, -8(x2)	# 1541
	addi	x4, x4, 1	# 1541
	lw		x5, -4(x2)	# 1541
	lw		x6, 0(x2)	# 1541
	jal		x0, solve_each_element.2913.17941	# 1541
beq.33828:
	lw		x7, 24(x8)	# 421
	beq		x7, x0, beq.33835	# 1545
	addi	x4, x4, 1	# 1546
	jal		x0, solve_each_element.2913.17941	# 1546
beq.33835:
	jalr	x0, x1, 0	# 1547
beq.33747:
	jalr	x0, x1, 0	# 1514
solve_one_or_network.2917.17945:
	mul		x7, x30, x4	# 1554
	add		x7, x5, x7	# 1554
	lw		x7, 0(x7)	# 1554
	beq		x7, x20, beq.33838	# 1555
	lui		x8, 130332	# 28
	ori		x8, x8, 130332	# 28
	mul		x7, x30, x7	# 1556
	add		x7, x8, x7	# 1556
	lw		x7, 0(x7)	# 1556
	add		x8, x0, x0	# 6
	sw		x6, 0(x2)	# 1557
	sw		x5, -4(x2)	# 1557
	sw		x4, -8(x2)	# 1557
	addi	x5, x7, 0	# 1557
	addi	x4, x0, 0	# 1557
	sw		x1, -12(x2)	# 1557
	addi	x2, x2, -16	# 1557
	jal		x1, solve_each_element.2913.17941	# 1557
	addi	x2, x2, 16	# 1557
	lw		x1, -12(x2)	# 1557
	lw		x4, -8(x2)	# 1558
	addi	x4, x4, 1	# 1558
	lw		x5, -4(x2)	# 1558
	lw		x6, 0(x2)	# 1558
	jal		x0, solve_one_or_network.2917.17945	# 1558
beq.33838:
	jalr	x0, x1, 0	# 1559
trace_or_matrix.2921.17949:
	mul		x7, x30, x4	# 1564
	add		x7, x5, x7	# 1564
	lw		x7, 0(x7)	# 1564
	addi	x9, x7, 0	# 1565
	lw		x9, 0(x9)	# 1565
	beq		x9, x20, beq.33840	# 1566
	sw		x6, 0(x2)	# 1569
	sw		x5, -4(x2)	# 1569
	sw		x4, -8(x2)	# 1569
	beq		x9, x28, beq.33842	# 1569
	lui		x10, 130048	# 12
	ori		x10, x10, 130048	# 12
	mul		x9, x30, x9	# 1080
	add		x9, x10, x9	# 1080
	lw		x9, 0(x9)	# 1080
	lui		x10, 130636	# 1082
	ori		x10, x10, 130636	# 1082
	flw		f1, 0(x10)	# 1082
	lw		x10, 20(x9)	# 479
	addi	x11, x10, 0	# 484
	flw		f2, 0(x11)	# 484
	fsub	f1, f1, f2	# 1082
	add		x11, x0, x21	# 6
	lui		x12, 130640	# 1083
	ori		x12, x12, 130640	# 1083
	flw		f2, 0(x12)	# 1083
	addi	x12, x10, 4	# 494
	flw		f3, 0(x12)	# 494
	fsub	f2, f2, f3	# 1083
	lui		x13, 130644	# 1084
	ori		x13, x13, 130644	# 1084
	flw		f3, 0(x13)	# 1084
	addi	x10, x10, 8	# 504
	flw		f4, 0(x10)	# 504
	fsub	f3, f3, f4	# 1084
	lw		x10, 4(x9)	# 401
	beq		x10, x21, beq.33844	# 1087
	beq		x10, x22, beq.33846	# 1088
	addi	x12, x6, 0	# 1054
	flw		f4, 0(x12)	# 1054
	addi	x12, x6, 4	# 1054
	flw		f5, 0(x12)	# 1054
	addi	x12, x6, 8	# 1054
	flw		f6, 0(x12)	# 1054
	fmul	f7, f4, f4	# 127
	lw		x12, 16(x9)	# 439
	addi	x13, x12, 0	# 444
	flw		f8, 0(x13)	# 444
	fmul	f7, f7, f8	# 1015
	fmul	f9, f5, f5	# 127
	addi	x13, x12, 4	# 454
	flw		f10, 0(x13)	# 454
	fmul	f9, f9, f10	# 1015
	fadd	f7, f7, f9	# 1015
	fmul	f9, f6, f6	# 127
	addi	x12, x12, 8	# 464
	flw		f11, 0(x12)	# 464
	fmul	f9, f9, f11	# 1015
	fadd	f7, f7, f9	# 1015
	lw		x12, 12(x9)	# 430
	beq		x12, x0, beq_cont.33847	# 1017
	fmul	f9, f5, f6	# 1021
	lw		x13, 36(x9)	# 559
	addi	x14, x13, 0	# 564
	flw		f12, 0(x14)	# 564
	fmul	f9, f9, f12	# 1021
	fadd	f7, f7, f9	# 1020
	fmul	f9, f6, f4	# 1022
	addi	x14, x13, 4	# 574
	flw		f12, 0(x14)	# 574
	fmul	f9, f9, f12	# 1022
	fadd	f7, f7, f9	# 1020
	fmul	f9, f4, f5	# 1023
	addi	x13, x13, 8	# 584
	flw		f12, 0(x13)	# 584
	fmul	f9, f9, f12	# 1023
	fadd	f7, f7, f9	# 1020
beq_cont.33847:
	feq		f7, f0, feq.33850	# 120
	fmul	f12, f4, f1	# 1029
	fmul	f12, f12, f8	# 1029
	fmul	f13, f5, f2	# 1030
	fmul	f13, f13, f10	# 1030
	fadd	f12, f12, f13	# 1029
	fmul	f13, f6, f3	# 1031
	fmul	f13, f13, f11	# 1031
	fadd	f12, f12, f13	# 1029
	beq		x12, x0, beq.33852	# 1033
	fmul	f13, f6, f2	# 1037
	fmul	f14, f5, f3	# 1037
	fadd	f13, f13, f14	# 1037
	lw		x13, 36(x9)	# 559
	addi	x14, x13, 0	# 564
	flw		f14, 0(x14)	# 564
	fmul	f13, f13, f14	# 1037
	fmul	f14, f4, f3	# 1038
	fmul	f6, f6, f1	# 1038
	fadd	f6, f14, f6	# 1038
	addi	x14, x13, 4	# 574
	flw		f14, 0(x14)	# 574
	fmul	f6, f6, f14	# 1038
	fadd	f6, f13, f6	# 1037
	fmul	f4, f4, f2	# 1039
	fmul	f5, f5, f1	# 1039
	fadd	f4, f4, f5	# 1039
	addi	x13, x13, 8	# 584
	flw		f5, 0(x13)	# 584
	fmul	f4, f4, f5	# 1039
	fadd	f4, f6, f4	# 1037
	lui		x13, %hi(l.27810)	# 126
	ori		x13, x13, %lo(l.27810)	# 126
	flw		f5, 0(x13)	# 126
	fmul	f4, f4, f5	# 126
	fadd	f4, f12, f4	# 1036
	jal		x0, beq_cont.33851	# 1033
beq.33852:
	fadd	f4, f0, f12	# 1034
beq_cont.33851:
	fmul	f5, f1, f1	# 127
	fmul	f5, f5, f8	# 1015
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f10	# 1015
	fadd	f5, f5, f6	# 1015
	fmul	f6, f3, f3	# 127
	fmul	f6, f6, f11	# 1015
	fadd	f5, f5, f6	# 1015
	beq		x12, x0, beq.33854	# 1017
	fmul	f6, f2, f3	# 1021
	lw		x12, 36(x9)	# 559
	addi	x13, x12, 0	# 564
	flw		f8, 0(x13)	# 564
	fmul	f6, f6, f8	# 1021
	fadd	f5, f5, f6	# 1020
	fmul	f3, f3, f1	# 1022
	addi	x13, x12, 4	# 574
	flw		f6, 0(x13)	# 574
	fmul	f3, f3, f6	# 1022
	fadd	f3, f5, f3	# 1020
	fmul	f1, f1, f2	# 1023
	addi	x12, x12, 8	# 584
	flw		f2, 0(x12)	# 584
	fmul	f1, f1, f2	# 1023
	fadd	f1, f3, f1	# 1020
	jal		x0, beq_cont.33853	# 1017
beq.33854:
	fadd	f1, f0, f5	# 1018
beq_cont.33853:
	beq		x10, x24, beq.33856	# 1064
	jal		x0, beq_cont.33855	# 1064
beq.33856:
	fsub	f1, f1, f30	# 1064
beq_cont.33855:
	fmul	f2, f4, f4	# 127
	fmul	f1, f7, f1	# 1066
	fsub	f1, f2, f1	# 1066
	fle		f1, f0, fle.33858	# 121
	fsqrt	f1, f1	# 1069
	lw		x9, 24(x9)	# 421
	beq		x9, x0, beq.33860	# 1070
	jal		x0, beq_cont.33859	# 1070
beq.33860:
	fsub	f1, f0, f1	# 123
beq_cont.33859:
	fsub	f1, f1, f4	# 1071
	fdiv	f1, f1, f7	# 1071
	fsw		f1, 0(x23)	# 1071
	addi	x9, x0, 1	# 1071
	jal		x0, beq_cont.33843	# 121
fle.33858:
	addi	x9, x0, 0	# 1074
	jal		x0, beq_cont.33843	# 120
feq.33850:
	addi	x9, x0, 0	# 1057
	jal		x0, beq_cont.33843	# 1088
beq.33846:
	lw		x9, 16(x9)	# 469
	addi	x10, x6, 0	# 340
	flw		f4, 0(x10)	# 340
	addi	x10, x9, 0	# 340
	flw		f5, 0(x10)	# 340
	fmul	f4, f4, f5	# 340
	addi	x10, x6, 4	# 340
	flw		f6, 0(x10)	# 340
	addi	x10, x9, 4	# 340
	flw		f7, 0(x10)	# 340
	fmul	f6, f6, f7	# 340
	fadd	f4, f4, f6	# 340
	addi	x10, x6, 8	# 340
	flw		f6, 0(x10)	# 340
	addi	x9, x9, 8	# 340
	flw		f8, 0(x9)	# 340
	fmul	f6, f6, f8	# 340
	fadd	f4, f4, f6	# 340
	fle		f4, f0, fle.33862	# 121
	fmul	f1, f5, f1	# 345
	fmul	f2, f7, f2	# 345
	fadd	f1, f1, f2	# 345
	fmul	f2, f8, f3	# 345
	fadd	f1, f1, f2	# 345
	fsub	f1, f0, f1	# 123
	fdiv	f1, f1, f4	# 1005
	fsw		f1, 0(x23)	# 1005
	addi	x9, x0, 1	# 1006
	jal		x0, beq_cont.33843	# 121
fle.33862:
	addi	x9, x0, 0	# 1007
	jal		x0, beq_cont.33843	# 1087
beq.33844:
	addi	x10, x6, 0	# 976
	flw		f4, 0(x10)	# 976
	feq		f4, f0, feq.33864	# 120
	lw		x10, 16(x9)	# 469
	lw		x12, 24(x9)	# 421
	fle		f0, f4, fle.33866	# 122
	addi	x13, x0, 1	# 122
	jal		x0, fle_cont.33865	# 122
fle.33866:
	addi	x13, x0, 0	# 122
fle_cont.33865:
	beq		x12, x0, beq.33868	# 252
	fle		f0, f4, fle.33870	# 122
	addi	x12, x0, 0	# 252
	jal		x0, beq_cont.33867	# 122
fle.33870:
	addi	x12, x0, 1	# 252
	jal		x0, beq_cont.33867	# 252
beq.33868:
	addi	x12, x13, 0	# 252
beq_cont.33867:
	addi	x13, x10, 0	# 978
	flw		f6, 0(x13)	# 978
	beq		x12, x0, beq.33872	# 267
	jal		x0, beq_cont.33871	# 267
beq.33872:
	fsub	f6, f0, f6	# 123
beq_cont.33871:
	fsub	f6, f6, f1	# 980
	fdiv	f6, f6, f4	# 980
	addi	x12, x6, 4	# 981
	flw		f7, 0(x12)	# 981
	fmul	f7, f6, f7	# 981
	fadd	f7, f7, f2	# 981
	fle		f7, f0, fle.33874	# 124
	jal		x0, fle_cont.33873	# 124
fle.33874:
	fsub	f7, f0, f7	# 124
fle_cont.33873:
	addi	x12, x10, 4	# 981
	flw		f8, 0(x12)	# 981
	fle		f8, f7, fle.33876	# 125
	addi	x12, x6, 8	# 982
	flw		f7, 0(x12)	# 982
	fmul	f7, f6, f7	# 982
	fadd	f7, f7, f3	# 982
	fle		f7, f0, fle.33878	# 124
	jal		x0, fle_cont.33877	# 124
fle.33878:
	fsub	f7, f0, f7	# 124
fle_cont.33877:
	addi	x10, x10, 8	# 982
	flw		f8, 0(x10)	# 982
	fle		f8, f7, fle.33880	# 125
	fsw		f6, 0(x23)	# 983
	addi	x10, x0, 1	# 983
	jal		x0, feq_cont.33863	# 125
fle.33880:
	addi	x10, x0, 0	# 984
	jal		x0, feq_cont.33863	# 125
fle.33876:
	addi	x10, x0, 0	# 985
	jal		x0, feq_cont.33863	# 120
feq.33864:
	addi	x10, x0, 0	# 976
feq_cont.33863:
	beq		x10, x0, beq.33882	# 991
	addi	x9, x0, 1	# 991
	jal		x0, beq_cont.33843	# 991
beq.33882:
	addi	x10, x6, 4	# 976
	flw		f6, 0(x10)	# 976
	feq		f6, f0, feq.33884	# 120
	lw		x10, 16(x9)	# 469
	lw		x12, 24(x9)	# 421
	fle		f0, f6, fle.33886	# 122
	addi	x13, x0, 1	# 122
	jal		x0, fle_cont.33885	# 122
fle.33886:
	addi	x13, x0, 0	# 122
fle_cont.33885:
	beq		x12, x0, beq.33888	# 252
	fle		f0, f6, fle.33890	# 122
	addi	x12, x0, 0	# 252
	jal		x0, beq_cont.33887	# 122
fle.33890:
	addi	x12, x0, 1	# 252
	jal		x0, beq_cont.33887	# 252
beq.33888:
	addi	x12, x13, 0	# 252
beq_cont.33887:
	addi	x13, x10, 4	# 978
	flw		f7, 0(x13)	# 978
	beq		x12, x0, beq.33892	# 267
	jal		x0, beq_cont.33891	# 267
beq.33892:
	fsub	f7, f0, f7	# 123
beq_cont.33891:
	fsub	f7, f7, f2	# 980
	fdiv	f7, f7, f6	# 980
	addi	x12, x6, 8	# 981
	flw		f8, 0(x12)	# 981
	fmul	f8, f7, f8	# 981
	fadd	f8, f8, f3	# 981
	fle		f8, f0, fle.33894	# 124
	jal		x0, fle_cont.33893	# 124
fle.33894:
	fsub	f8, f0, f8	# 124
fle_cont.33893:
	addi	x12, x10, 8	# 981
	flw		f9, 0(x12)	# 981
	fle		f9, f8, fle.33896	# 125
	fmul	f8, f7, f4	# 982
	fadd	f8, f8, f1	# 982
	fle		f8, f0, fle.33898	# 124
	jal		x0, fle_cont.33897	# 124
fle.33898:
	fsub	f8, f0, f8	# 124
fle_cont.33897:
	addi	x10, x10, 0	# 982
	flw		f9, 0(x10)	# 982
	fle		f9, f8, fle.33900	# 125
	fsw		f7, 0(x23)	# 983
	addi	x10, x0, 1	# 983
	jal		x0, feq_cont.33883	# 125
fle.33900:
	addi	x10, x0, 0	# 984
	jal		x0, feq_cont.33883	# 125
fle.33896:
	addi	x10, x0, 0	# 985
	jal		x0, feq_cont.33883	# 120
feq.33884:
	addi	x10, x0, 0	# 976
feq_cont.33883:
	beq		x10, x0, beq.33902	# 992
	addi	x9, x0, 2	# 992
	jal		x0, beq_cont.33843	# 992
beq.33902:
	addi	x10, x6, 8	# 976
	flw		f7, 0(x10)	# 976
	feq		f7, f0, feq.33904	# 120
	lw		x10, 16(x9)	# 469
	lw		x9, 24(x9)	# 421
	fle		f0, f7, fle.33906	# 122
	addi	x12, x0, 1	# 122
	jal		x0, fle_cont.33905	# 122
fle.33906:
	addi	x12, x0, 0	# 122
fle_cont.33905:
	beq		x9, x0, beq.33908	# 252
	fle		f0, f7, fle.33910	# 122
	addi	x9, x0, 0	# 252
	jal		x0, beq_cont.33907	# 122
fle.33910:
	addi	x9, x0, 1	# 252
	jal		x0, beq_cont.33907	# 252
beq.33908:
	addi	x9, x12, 0	# 252
beq_cont.33907:
	addi	x12, x10, 8	# 978
	flw		f8, 0(x12)	# 978
	beq		x9, x0, beq.33912	# 267
	jal		x0, beq_cont.33911	# 267
beq.33912:
	fsub	f8, f0, f8	# 123
beq_cont.33911:
	fsub	f3, f8, f3	# 980
	fdiv	f3, f3, f7	# 980
	fmul	f4, f3, f4	# 981
	fadd	f1, f4, f1	# 981
	fle		f1, f0, fle.33914	# 124
	jal		x0, fle_cont.33913	# 124
fle.33914:
	fsub	f1, f0, f1	# 124
fle_cont.33913:
	addi	x9, x10, 0	# 981
	flw		f4, 0(x9)	# 981
	fle		f4, f1, fle.33916	# 125
	fmul	f1, f3, f6	# 982
	fadd	f1, f1, f2	# 982
	fle		f1, f0, fle.33918	# 124
	jal		x0, fle_cont.33917	# 124
fle.33918:
	fsub	f1, f0, f1	# 124
fle_cont.33917:
	addi	x9, x10, 4	# 982
	flw		f2, 0(x9)	# 982
	fle		f2, f1, fle.33920	# 125
	fsw		f3, 0(x23)	# 983
	addi	x9, x0, 1	# 983
	jal		x0, feq_cont.33903	# 125
fle.33920:
	addi	x9, x0, 0	# 984
	jal		x0, feq_cont.33903	# 125
fle.33916:
	addi	x9, x0, 0	# 985
	jal		x0, feq_cont.33903	# 120
feq.33904:
	addi	x9, x0, 0	# 976
feq_cont.33903:
	beq		x9, x0, beq.33922	# 993
	addi	x9, x0, 3	# 993
	jal		x0, beq_cont.33843	# 993
beq.33922:
	addi	x9, x0, 0	# 994
beq_cont.33843:
	beq		x9, x0, beq_cont.33841	# 1575
	flw		f1, 0(x23)	# 1576
	lui		x8, 130548	# 1577
	ori		x8, x8, 130548	# 1577
	flw		f2, 0(x8)	# 1577
	fle		f2, f1, beq_cont.33841	# 125
	addi	x5, x7, 0	# 1578
	addi	x4, x21, 0	# 1578
	sw		x1, -12(x2)	# 1578
	addi	x2, x2, -16	# 1578
	jal		x1, solve_one_or_network.2917.17945	# 1578
	addi	x2, x2, 16	# 1578
	lw		x1, -12(x2)	# 1578
	jal		x0, beq_cont.33841	# 125
beq.33842:
	add		x8, x0, x21	# 6
	addi	x5, x7, 0	# 1570
	addi	x4, x21, 0	# 1570
	sw		x1, -12(x2)	# 1570
	addi	x2, x2, -16	# 1570
	jal		x1, solve_one_or_network.2917.17945	# 1570
	addi	x2, x2, 16	# 1570
	lw		x1, -12(x2)	# 1570
beq_cont.33841:
	lw		x4, -8(x2)	# 1582
	addi	x4, x4, 1	# 1582
	lw		x5, -4(x2)	# 1582
	lw		x6, 0(x2)	# 1582
	jal		x0, trace_or_matrix.2921.17949	# 1582
beq.33840:
	jalr	x0, x1, 0	# 1567
solve_each_element_fast.2927.17953:
	lw		x7, 0(x6)	# 687
	mul		x8, x30, x4	# 1607
	add		x8, x5, x8	# 1607
	lw		x8, 0(x8)	# 1607
	beq		x8, x20, beq.33928	# 1608
	lui		x10, 130048	# 12
	ori		x10, x10, 130048	# 12
	mul		x11, x30, x8	# 1221
	add		x12, x10, x11	# 1221
	lw		x12, 0(x12)	# 1221
	lw		x13, 40(x12)	# 596
	add		x14, x0, x0	# 6
	addi	x15, x13, 0	# 1223
	flw		f1, 0(x15)	# 1223
	addi	x16, x13, 4	# 1224
	flw		f2, 0(x16)	# 1224
	addi	x17, x13, 8	# 1225
	flw		f3, 0(x17)	# 1225
	lw		x17, 4(x6)	# 693
	add		x11, x17, x11	# 1227
	lw		x11, 0(x11)	# 1227
	lw		x18, 4(x12)	# 401
	beq		x18, x21, beq.33930	# 1229
	beq		x18, x22, beq.33932	# 1231
	addi	x18, x11, 0	# 1203
	flw		f4, 0(x18)	# 1203
	feq		f4, f0, feq.33934	# 120
	addi	x18, x11, 4	# 1207
	flw		f6, 0(x18)	# 1207
	fmul	f1, f6, f1	# 1207
	addi	x18, x11, 8	# 1207
	flw		f6, 0(x18)	# 1207
	fmul	f2, f6, f2	# 1207
	fadd	f1, f1, f2	# 1207
	addi	x18, x11, 12	# 1207
	flw		f2, 0(x18)	# 1207
	fmul	f2, f2, f3	# 1207
	fadd	f1, f1, f2	# 1207
	addi	x13, x13, 12	# 1208
	flw		f2, 0(x13)	# 1208
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1209
	fsub	f2, f3, f2	# 1209
	fle		f2, f0, fle.33936	# 121
	lw		x13, 24(x12)	# 421
	beq		x13, x0, beq.33938	# 1211
	fsqrt	f2, f2	# 1212
	fadd	f1, f1, f2	# 1212
	addi	x11, x11, 16	# 1212
	flw		f2, 0(x11)	# 1212
	fmul	f1, f1, f2	# 1212
	fsw		f1, 0(x23)	# 1212
	jal		x0, beq_cont.33937	# 1211
beq.33938:
	fsqrt	f2, f2	# 1214
	fsub	f1, f1, f2	# 1214
	addi	x11, x11, 16	# 1214
	flw		f2, 0(x11)	# 1214
	fmul	f1, f1, f2	# 1214
	fsw		f1, 0(x23)	# 1214
beq_cont.33937:
	addi	x11, x0, 1	# 1215
	jal		x0, beq_cont.33929	# 121
fle.33936:
	addi	x11, x0, 0	# 1216
	jal		x0, beq_cont.33929	# 120
feq.33934:
	addi	x11, x0, 0	# 1205
	jal		x0, beq_cont.33929	# 1231
beq.33932:
	addi	x11, x11, 0	# 1194
	flw		f1, 0(x11)	# 1194
	fle		f0, f1, fle.33940	# 122
	addi	x11, x13, 12	# 1195
	flw		f2, 0(x11)	# 1195
	fmul	f1, f1, f2	# 1195
	fsw		f1, 0(x23)	# 1195
	addi	x11, x0, 1	# 1196
	jal		x0, beq_cont.33929	# 122
fle.33940:
	addi	x11, x0, 0	# 1197
	jal		x0, beq_cont.33929	# 1229
beq.33930:
	addi	x13, x11, 0	# 1112
	flw		f4, 0(x13)	# 1112
	fsub	f4, f4, f1	# 1112
	addi	x13, x11, 4	# 1112
	flw		f5, 0(x13)	# 1112
	fmul	f4, f4, f5	# 1112
	addi	x13, x7, 4	# 1114
	flw		f6, 0(x13)	# 1114
	fmul	f7, f4, f6	# 1114
	fadd	f7, f7, f2	# 1114
	fle		f7, f0, fle.33942	# 124
	jal		x0, fle_cont.33941	# 124
fle.33942:
	fsub	f7, f0, f7	# 124
fle_cont.33941:
	lw		x13, 16(x12)	# 449
	addi	x18, x13, 4	# 454
	flw		f9, 0(x18)	# 454
	fle		f9, f7, fle.33944	# 125
	addi	x18, x7, 8	# 1115
	flw		f7, 0(x18)	# 1115
	fmul	f7, f4, f7	# 1115
	fadd	f7, f7, f3	# 1115
	fle		f7, f0, fle.33946	# 124
	jal		x0, fle_cont.33945	# 124
fle.33946:
	fsub	f7, f0, f7	# 124
fle_cont.33945:
	addi	x18, x13, 8	# 464
	flw		f10, 0(x18)	# 464
	fle		f10, f7, fle.33948	# 125
	feq		f5, f0, feq.33950	# 120
	addi	x18, x0, 1	# 1116
	jal		x0, fle_cont.33943	# 120
feq.33950:
	addi	x18, x0, 0	# 1116
	jal		x0, fle_cont.33943	# 125
fle.33948:
	addi	x18, x0, 0	# 1117
	jal		x0, fle_cont.33943	# 125
fle.33944:
	addi	x18, x0, 0	# 1118
fle_cont.33943:
	beq		x18, x0, beq.33952	# 1113
	fsw		f4, 0(x23)	# 1120
	addi	x11, x0, 1	# 1120
	jal		x0, beq_cont.33929	# 1113
beq.33952:
	addi	x18, x11, 8	# 1121
	flw		f4, 0(x18)	# 1121
	fsub	f4, f4, f2	# 1121
	addi	x18, x11, 12	# 1121
	flw		f5, 0(x18)	# 1121
	fmul	f4, f4, f5	# 1121
	addi	x18, x7, 0	# 1123
	flw		f7, 0(x18)	# 1123
	fmul	f10, f4, f7	# 1123
	fadd	f10, f10, f1	# 1123
	fle		f10, f0, fle.33954	# 124
	jal		x0, fle_cont.33953	# 124
fle.33954:
	fsub	f10, f0, f10	# 124
fle_cont.33953:
	addi	x18, x13, 0	# 444
	flw		f11, 0(x18)	# 444
	fle		f11, f10, fle.33956	# 125
	addi	x18, x7, 8	# 1124
	flw		f10, 0(x18)	# 1124
	fmul	f10, f4, f10	# 1124
	fadd	f10, f10, f3	# 1124
	fle		f10, f0, fle.33958	# 124
	jal		x0, fle_cont.33957	# 124
fle.33958:
	fsub	f10, f0, f10	# 124
fle_cont.33957:
	addi	x13, x13, 8	# 464
	flw		f12, 0(x13)	# 464
	fle		f12, f10, fle.33960	# 125
	feq		f5, f0, feq.33962	# 120
	addi	x13, x0, 1	# 1125
	jal		x0, fle_cont.33955	# 120
feq.33962:
	addi	x13, x0, 0	# 1125
	jal		x0, fle_cont.33955	# 125
fle.33960:
	addi	x13, x0, 0	# 1126
	jal		x0, fle_cont.33955	# 125
fle.33956:
	addi	x13, x0, 0	# 1127
fle_cont.33955:
	beq		x13, x0, beq.33964	# 1122
	fsw		f4, 0(x23)	# 1129
	addi	x11, x0, 2	# 1129
	jal		x0, beq_cont.33929	# 1122
beq.33964:
	addi	x13, x11, 16	# 1130
	flw		f4, 0(x13)	# 1130
	fsub	f3, f4, f3	# 1130
	addi	x11, x11, 20	# 1130
	flw		f4, 0(x11)	# 1130
	fmul	f3, f3, f4	# 1130
	fmul	f5, f3, f7	# 1132
	fadd	f1, f5, f1	# 1132
	fle		f1, f0, fle.33966	# 124
	jal		x0, fle_cont.33965	# 124
fle.33966:
	fsub	f1, f0, f1	# 124
fle_cont.33965:
	fle		f11, f1, fle.33968	# 125
	fmul	f1, f3, f6	# 1133
	fadd	f1, f1, f2	# 1133
	fle		f1, f0, fle.33970	# 124
	jal		x0, fle_cont.33969	# 124
fle.33970:
	fsub	f1, f0, f1	# 124
fle_cont.33969:
	fle		f9, f1, fle.33972	# 125
	feq		f4, f0, feq.33974	# 120
	addi	x11, x0, 1	# 1134
	jal		x0, fle_cont.33967	# 120
feq.33974:
	addi	x11, x0, 0	# 1134
	jal		x0, fle_cont.33967	# 125
fle.33972:
	addi	x11, x0, 0	# 1135
	jal		x0, fle_cont.33967	# 125
fle.33968:
	addi	x11, x0, 0	# 1136
fle_cont.33967:
	beq		x11, x0, beq.33976	# 1131
	fsw		f3, 0(x23)	# 1138
	addi	x11, x0, 3	# 1138
	jal		x0, beq_cont.33929	# 1131
beq.33976:
	addi	x11, x0, 0	# 1140
beq_cont.33929:
	beq		x11, x0, beq.33977	# 1611
	flw		f1, 0(x23)	# 1615
	sw		x6, 0(x2)	# 125
	sw		x0, -4(x2)	# 125
	fsw		f0, -8(x2)	# 125
	sw		x7, -12(x2)	# 125
	sw		x10, -16(x2)	# 125
	sw		x20, -20(x2)	# 125
	sw		x5, -24(x2)	# 125
	sw		x4, -28(x2)	# 125
	fle		f1, f0, fle_cont.33978	# 125
	lui		x13, 130548	# 1618
	ori		x13, x13, 130548	# 1618
	flw		f3, 0(x13)	# 1618
	fle		f3, f1, fle_cont.33978	# 125
	fadd	f1, f1, f18	# 1620
	addi	x18, x7, 0	# 1621
	flw		f3, 0(x18)	# 1621
	fmul	f3, f3, f1	# 1621
	lui		x18, 130648	# 1621
	ori		x18, x18, 130648	# 1621
	flw		f4, 0(x18)	# 1621
	fadd	f3, f3, f4	# 1621
	addi	x18, x7, 4	# 1622
	flw		f4, 0(x18)	# 1622
	fmul	f4, f4, f1	# 1622
	lui		x18, 130652	# 1622
	ori		x18, x18, 130652	# 1622
	flw		f5, 0(x18)	# 1622
	fadd	f4, f4, f5	# 1622
	addi	x18, x7, 8	# 1623
	flw		f5, 0(x18)	# 1623
	fmul	f5, f5, f1	# 1623
	lui		x18, 130656	# 1623
	ori		x18, x18, 130656	# 1623
	flw		f6, 0(x18)	# 1623
	fadd	f5, f5, f6	# 1623
	sw		x8, -32(x2)	# 1624
	fsw		f5, -36(x2)	# 1624
	fsw		f4, -40(x2)	# 1624
	fsw		f3, -44(x2)	# 1624
	fsw		f1, -48(x2)	# 1624
	addi	x4, x0, 0	# 1624
	fadd	f2, f0, f4	# 1624
	fadd	f1, f0, f3	# 1624
	fadd	f3, f0, f5	# 1624
	sw		x1, -52(x2)	# 1624
	addi	x2, x2, -56	# 1624
	jal		x1, check_all_inside.2898.17926	# 1624
	addi	x2, x2, 56	# 1624
	lw		x1, -52(x2)	# 1624
	lw		x5, -4(x2)	# 1624
	beq		x4, x5, fle_cont.33978	# 1624
	flw		f1, -48(x2)	# 1626
	fsw		f1, 0(x13)	# 1626
	flw		f1, -44(x2)	# 288
	fsw		f1, 0(x25)	# 288
	flw		f1, -40(x2)	# 289
	fsw		f1, 0(x27)	# 289
	flw		f1, -36(x2)	# 290
	fsw		f1, 0(x26)	# 290
	lui		x4, 130564	# 1628
	ori		x4, x4, 130564	# 1628
	lw		x6, -32(x2)	# 1628
	sw		x6, 0(x4)	# 1628
	lui		x4, 130544	# 1629
	ori		x4, x4, 130544	# 1629
	sw		x11, 0(x4)	# 1629
fle_cont.33978:
	lw		x4, -28(x2)	# 1635
	addi	x4, x4, 1	# 1635
	mul		x5, x30, x4	# 1607
	lw		x6, -24(x2)	# 1607
	add		x5, x6, x5	# 1607
	lw		x5, 0(x5)	# 1607
	lw		x7, -20(x2)	# 1608
	beq		x5, x7, beq.33984	# 1608
	mul		x7, x30, x5	# 1221
	lw		x8, -16(x2)	# 1221
	add		x8, x8, x7	# 1221
	lw		x8, 0(x8)	# 1221
	lw		x9, 40(x8)	# 596
	addi	x10, x9, 0	# 1223
	flw		f1, 0(x10)	# 1223
	addi	x10, x9, 4	# 1224
	flw		f2, 0(x10)	# 1224
	addi	x10, x9, 8	# 1225
	flw		f3, 0(x10)	# 1225
	add		x7, x17, x7	# 1227
	lw		x7, 0(x7)	# 1227
	lw		x10, 4(x8)	# 401
	beq		x10, x21, beq.33986	# 1229
	beq		x10, x22, beq.33988	# 1231
	addi	x10, x7, 0	# 1203
	flw		f4, 0(x10)	# 1203
	flw		f5, -8(x2)	# 120
	feq		f4, f5, feq.33990	# 120
	addi	x10, x7, 4	# 1207
	flw		f6, 0(x10)	# 1207
	fmul	f1, f6, f1	# 1207
	addi	x10, x7, 8	# 1207
	flw		f6, 0(x10)	# 1207
	fmul	f2, f6, f2	# 1207
	fadd	f1, f1, f2	# 1207
	addi	x10, x7, 12	# 1207
	flw		f2, 0(x10)	# 1207
	fmul	f2, f2, f3	# 1207
	fadd	f1, f1, f2	# 1207
	addi	x9, x9, 12	# 1208
	flw		f2, 0(x9)	# 1208
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1209
	fsub	f2, f3, f2	# 1209
	fle		f2, f5, fle.33992	# 121
	lw		x9, 24(x8)	# 421
	lw		x10, -4(x2)	# 1211
	beq		x9, x10, beq.33994	# 1211
	fsqrt	f2, f2	# 1212
	fadd	f1, f1, f2	# 1212
	addi	x7, x7, 16	# 1212
	flw		f2, 0(x7)	# 1212
	fmul	f1, f1, f2	# 1212
	fsw		f1, 0(x23)	# 1212
	jal		x0, beq_cont.33993	# 1211
beq.33994:
	fsqrt	f2, f2	# 1214
	fsub	f1, f1, f2	# 1214
	addi	x7, x7, 16	# 1214
	flw		f2, 0(x7)	# 1214
	fmul	f1, f1, f2	# 1214
	fsw		f1, 0(x23)	# 1214
beq_cont.33993:
	addi	x7, x0, 1	# 1215
	jal		x0, beq_cont.33985	# 121
fle.33992:
	addi	x7, x0, 0	# 1216
	jal		x0, beq_cont.33985	# 120
feq.33990:
	addi	x7, x0, 0	# 1205
	jal		x0, beq_cont.33985	# 1231
beq.33988:
	addi	x7, x7, 0	# 1194
	flw		f1, 0(x7)	# 1194
	flw		f2, -8(x2)	# 122
	fle		f2, f1, fle.33996	# 122
	addi	x7, x9, 12	# 1195
	flw		f3, 0(x7)	# 1195
	fmul	f1, f1, f3	# 1195
	fsw		f1, 0(x23)	# 1195
	addi	x7, x0, 1	# 1196
	jal		x0, beq_cont.33985	# 122
fle.33996:
	addi	x7, x0, 0	# 1197
	jal		x0, beq_cont.33985	# 1229
beq.33986:
	addi	x9, x7, 0	# 1112
	flw		f4, 0(x9)	# 1112
	fsub	f4, f4, f1	# 1112
	addi	x9, x7, 4	# 1112
	flw		f5, 0(x9)	# 1112
	fmul	f4, f4, f5	# 1112
	lw		x9, -12(x2)	# 1114
	addi	x10, x9, 4	# 1114
	flw		f6, 0(x10)	# 1114
	fmul	f7, f4, f6	# 1114
	fadd	f7, f7, f2	# 1114
	flw		f8, -8(x2)	# 124
	fle		f7, f8, fle.33998	# 124
	jal		x0, fle_cont.33997	# 124
fle.33998:
	fsub	f7, f0, f7	# 124
fle_cont.33997:
	lw		x10, 16(x8)	# 449
	addi	x11, x10, 4	# 454
	flw		f9, 0(x11)	# 454
	fle		f9, f7, fle.34000	# 125
	addi	x11, x9, 8	# 1115
	flw		f7, 0(x11)	# 1115
	fmul	f7, f4, f7	# 1115
	fadd	f7, f7, f3	# 1115
	fle		f7, f8, fle.34002	# 124
	jal		x0, fle_cont.34001	# 124
fle.34002:
	fsub	f7, f0, f7	# 124
fle_cont.34001:
	addi	x11, x10, 8	# 464
	flw		f10, 0(x11)	# 464
	fle		f10, f7, fle.34004	# 125
	feq		f5, f8, feq.34006	# 120
	addi	x11, x0, 1	# 1116
	jal		x0, fle_cont.33999	# 120
feq.34006:
	addi	x11, x0, 0	# 1116
	jal		x0, fle_cont.33999	# 125
fle.34004:
	addi	x11, x0, 0	# 1117
	jal		x0, fle_cont.33999	# 125
fle.34000:
	addi	x11, x0, 0	# 1118
fle_cont.33999:
	lw		x13, -4(x2)	# 1113
	beq		x11, x13, beq.34008	# 1113
	fsw		f4, 0(x23)	# 1120
	addi	x7, x0, 1	# 1120
	jal		x0, beq_cont.33985	# 1113
beq.34008:
	addi	x11, x7, 8	# 1121
	flw		f4, 0(x11)	# 1121
	fsub	f4, f4, f2	# 1121
	addi	x11, x7, 12	# 1121
	flw		f5, 0(x11)	# 1121
	fmul	f4, f4, f5	# 1121
	addi	x11, x9, 0	# 1123
	flw		f7, 0(x11)	# 1123
	fmul	f10, f4, f7	# 1123
	fadd	f10, f10, f1	# 1123
	fle		f10, f8, fle.34010	# 124
	jal		x0, fle_cont.34009	# 124
fle.34010:
	fsub	f10, f0, f10	# 124
fle_cont.34009:
	addi	x11, x10, 0	# 444
	flw		f11, 0(x11)	# 444
	fle		f11, f10, fle.34012	# 125
	addi	x11, x9, 8	# 1124
	flw		f10, 0(x11)	# 1124
	fmul	f10, f4, f10	# 1124
	fadd	f10, f10, f3	# 1124
	fle		f10, f8, fle.34014	# 124
	jal		x0, fle_cont.34013	# 124
fle.34014:
	fsub	f10, f0, f10	# 124
fle_cont.34013:
	addi	x10, x10, 8	# 464
	flw		f12, 0(x10)	# 464
	fle		f12, f10, fle.34016	# 125
	feq		f5, f8, feq.34018	# 120
	addi	x10, x0, 1	# 1125
	jal		x0, fle_cont.34011	# 120
feq.34018:
	addi	x10, x0, 0	# 1125
	jal		x0, fle_cont.34011	# 125
fle.34016:
	addi	x10, x0, 0	# 1126
	jal		x0, fle_cont.34011	# 125
fle.34012:
	addi	x10, x0, 0	# 1127
fle_cont.34011:
	beq		x10, x13, beq.34020	# 1122
	fsw		f4, 0(x23)	# 1129
	addi	x7, x0, 2	# 1129
	jal		x0, beq_cont.33985	# 1122
beq.34020:
	addi	x10, x7, 16	# 1130
	flw		f4, 0(x10)	# 1130
	fsub	f3, f4, f3	# 1130
	addi	x7, x7, 20	# 1130
	flw		f4, 0(x7)	# 1130
	fmul	f3, f3, f4	# 1130
	fmul	f5, f3, f7	# 1132
	fadd	f1, f5, f1	# 1132
	fle		f1, f8, fle.34022	# 124
	jal		x0, fle_cont.34021	# 124
fle.34022:
	fsub	f1, f0, f1	# 124
fle_cont.34021:
	fle		f11, f1, fle.34024	# 125
	fmul	f1, f3, f6	# 1133
	fadd	f1, f1, f2	# 1133
	fle		f1, f8, fle.34026	# 124
	jal		x0, fle_cont.34025	# 124
fle.34026:
	fsub	f1, f0, f1	# 124
fle_cont.34025:
	fle		f9, f1, fle.34028	# 125
	feq		f4, f8, feq.34030	# 120
	addi	x7, x0, 1	# 1134
	jal		x0, fle_cont.34023	# 120
feq.34030:
	addi	x7, x0, 0	# 1134
	jal		x0, fle_cont.34023	# 125
fle.34028:
	addi	x7, x0, 0	# 1135
	jal		x0, fle_cont.34023	# 125
fle.34024:
	addi	x7, x0, 0	# 1136
fle_cont.34023:
	beq		x7, x13, beq.34032	# 1131
	fsw		f3, 0(x23)	# 1138
	addi	x7, x0, 3	# 1138
	jal		x0, beq_cont.33985	# 1131
beq.34032:
	addi	x7, x0, 0	# 1140
beq_cont.33985:
	lw		x9, -4(x2)	# 1611
	beq		x7, x9, beq.34033	# 1611
	flw		f1, 0(x23)	# 1615
	flw		f2, -8(x2)	# 125
	sw		x4, -52(x2)	# 125
	fle		f1, f2, fle_cont.34034	# 125
	lui		x8, 130548	# 1618
	ori		x8, x8, 130548	# 1618
	flw		f2, 0(x8)	# 1618
	fle		f2, f1, fle_cont.34034	# 125
	fadd	f1, f1, f18	# 1620
	lw		x10, -12(x2)	# 1621
	addi	x11, x10, 0	# 1621
	flw		f2, 0(x11)	# 1621
	fmul	f2, f2, f1	# 1621
	lui		x11, 130648	# 1621
	ori		x11, x11, 130648	# 1621
	flw		f3, 0(x11)	# 1621
	fadd	f2, f2, f3	# 1621
	addi	x11, x10, 4	# 1622
	flw		f3, 0(x11)	# 1622
	fmul	f3, f3, f1	# 1622
	lui		x11, 130652	# 1622
	ori		x11, x11, 130652	# 1622
	flw		f4, 0(x11)	# 1622
	fadd	f3, f3, f4	# 1622
	addi	x10, x10, 8	# 1623
	flw		f4, 0(x10)	# 1623
	fmul	f4, f4, f1	# 1623
	lui		x10, 130656	# 1623
	ori		x10, x10, 130656	# 1623
	flw		f5, 0(x10)	# 1623
	fadd	f4, f4, f5	# 1623
	sw		x7, -56(x2)	# 1624
	sw		x5, -60(x2)	# 1624
	fsw		f4, -64(x2)	# 1624
	fsw		f3, -68(x2)	# 1624
	fsw		f2, -72(x2)	# 1624
	sw		x8, -76(x2)	# 1624
	fsw		f1, -80(x2)	# 1624
	addi	x5, x6, 0	# 1624
	addi	x4, x9, 0	# 1624
	fadd	f1, f0, f2	# 1624
	fadd	f2, f0, f3	# 1624
	fadd	f3, f0, f4	# 1624
	sw		x1, -84(x2)	# 1624
	addi	x2, x2, -88	# 1624
	jal		x1, check_all_inside.2898.17926	# 1624
	addi	x2, x2, 88	# 1624
	lw		x1, -84(x2)	# 1624
	lw		x5, -4(x2)	# 1624
	beq		x4, x5, fle_cont.34034	# 1624
	flw		f1, -80(x2)	# 1626
	lw		x4, -76(x2)	# 1626
	fsw		f1, 0(x4)	# 1626
	flw		f1, -72(x2)	# 288
	fsw		f1, 0(x25)	# 288
	flw		f1, -68(x2)	# 289
	fsw		f1, 0(x27)	# 289
	flw		f1, -64(x2)	# 290
	fsw		f1, 0(x26)	# 290
	lui		x4, 130564	# 1628
	ori		x4, x4, 130564	# 1628
	lw		x5, -60(x2)	# 1628
	sw		x5, 0(x4)	# 1628
	lui		x4, 130544	# 1629
	ori		x4, x4, 130544	# 1629
	lw		x5, -56(x2)	# 1629
	sw		x5, 0(x4)	# 1629
fle_cont.34034:
	lw		x4, -52(x2)	# 1635
	addi	x4, x4, 1	# 1635
	lw		x5, -24(x2)	# 1635
	lw		x6, 0(x2)	# 1635
	jal		x0, solve_each_element_fast.2927.17953	# 1635
beq.34033:
	lw		x5, 24(x8)	# 421
	beq		x5, x9, beq.34040	# 1639
	addi	x4, x4, 1	# 1640
	lw		x5, 0(x2)	# 1640
	addi	x31, x6, 0	# 1640
	addi	x6, x5, 0	# 1640
	addi	x5, x31, 0	# 1640
	jal		x0, solve_each_element_fast.2927.17953	# 1640
beq.34040:
	jalr	x0, x1, 0	# 1641
beq.33984:
	jalr	x0, x1, 0	# 1608
beq.33977:
	lw		x8, 24(x12)	# 421
	beq		x8, x0, beq.34043	# 1639
	addi	x4, x4, 1	# 1640
	mul		x8, x30, x4	# 1607
	add		x8, x5, x8	# 1607
	lw		x8, 0(x8)	# 1607
	beq		x8, x20, beq.34044	# 1608
	mul		x9, x30, x8	# 1221
	add		x10, x10, x9	# 1221
	lw		x10, 0(x10)	# 1221
	lw		x11, 40(x10)	# 596
	addi	x12, x11, 0	# 1223
	flw		f1, 0(x12)	# 1223
	addi	x12, x11, 4	# 1224
	flw		f2, 0(x12)	# 1224
	addi	x12, x11, 8	# 1225
	flw		f3, 0(x12)	# 1225
	add		x9, x17, x9	# 1227
	lw		x9, 0(x9)	# 1227
	lw		x12, 4(x10)	# 401
	beq		x12, x21, beq.34046	# 1229
	beq		x12, x22, beq.34048	# 1231
	addi	x12, x9, 0	# 1203
	flw		f4, 0(x12)	# 1203
	feq		f4, f0, feq.34050	# 120
	addi	x12, x9, 4	# 1207
	flw		f6, 0(x12)	# 1207
	fmul	f1, f6, f1	# 1207
	addi	x12, x9, 8	# 1207
	flw		f6, 0(x12)	# 1207
	fmul	f2, f6, f2	# 1207
	fadd	f1, f1, f2	# 1207
	addi	x12, x9, 12	# 1207
	flw		f2, 0(x12)	# 1207
	fmul	f2, f2, f3	# 1207
	fadd	f1, f1, f2	# 1207
	addi	x11, x11, 12	# 1208
	flw		f2, 0(x11)	# 1208
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1209
	fsub	f2, f3, f2	# 1209
	fle		f2, f0, fle.34052	# 121
	lw		x11, 24(x10)	# 421
	beq		x11, x0, beq.34054	# 1211
	fsqrt	f2, f2	# 1212
	fadd	f1, f1, f2	# 1212
	addi	x9, x9, 16	# 1212
	flw		f2, 0(x9)	# 1212
	fmul	f1, f1, f2	# 1212
	fsw		f1, 0(x23)	# 1212
	jal		x0, beq_cont.34053	# 1211
beq.34054:
	fsqrt	f2, f2	# 1214
	fsub	f1, f1, f2	# 1214
	addi	x9, x9, 16	# 1214
	flw		f2, 0(x9)	# 1214
	fmul	f1, f1, f2	# 1214
	fsw		f1, 0(x23)	# 1214
beq_cont.34053:
	addi	x9, x0, 1	# 1215
	jal		x0, beq_cont.34045	# 121
fle.34052:
	addi	x9, x0, 0	# 1216
	jal		x0, beq_cont.34045	# 120
feq.34050:
	addi	x9, x0, 0	# 1205
	jal		x0, beq_cont.34045	# 1231
beq.34048:
	addi	x9, x9, 0	# 1194
	flw		f1, 0(x9)	# 1194
	fle		f0, f1, fle.34056	# 122
	addi	x9, x11, 12	# 1195
	flw		f2, 0(x9)	# 1195
	fmul	f1, f1, f2	# 1195
	fsw		f1, 0(x23)	# 1195
	addi	x9, x0, 1	# 1196
	jal		x0, beq_cont.34045	# 122
fle.34056:
	addi	x9, x0, 0	# 1197
	jal		x0, beq_cont.34045	# 1229
beq.34046:
	addi	x11, x9, 0	# 1112
	flw		f4, 0(x11)	# 1112
	fsub	f4, f4, f1	# 1112
	addi	x11, x9, 4	# 1112
	flw		f5, 0(x11)	# 1112
	fmul	f4, f4, f5	# 1112
	addi	x11, x7, 4	# 1114
	flw		f6, 0(x11)	# 1114
	fmul	f7, f4, f6	# 1114
	fadd	f7, f7, f2	# 1114
	fle		f7, f0, fle.34058	# 124
	jal		x0, fle_cont.34057	# 124
fle.34058:
	fsub	f7, f0, f7	# 124
fle_cont.34057:
	lw		x11, 16(x10)	# 449
	addi	x12, x11, 4	# 454
	flw		f9, 0(x12)	# 454
	fle		f9, f7, fle.34060	# 125
	addi	x12, x7, 8	# 1115
	flw		f7, 0(x12)	# 1115
	fmul	f7, f4, f7	# 1115
	fadd	f7, f7, f3	# 1115
	fle		f7, f0, fle.34062	# 124
	jal		x0, fle_cont.34061	# 124
fle.34062:
	fsub	f7, f0, f7	# 124
fle_cont.34061:
	addi	x12, x11, 8	# 464
	flw		f10, 0(x12)	# 464
	fle		f10, f7, fle.34064	# 125
	feq		f5, f0, feq.34066	# 120
	addi	x12, x0, 1	# 1116
	jal		x0, fle_cont.34059	# 120
feq.34066:
	addi	x12, x0, 0	# 1116
	jal		x0, fle_cont.34059	# 125
fle.34064:
	addi	x12, x0, 0	# 1117
	jal		x0, fle_cont.34059	# 125
fle.34060:
	addi	x12, x0, 0	# 1118
fle_cont.34059:
	beq		x12, x0, beq.34068	# 1113
	fsw		f4, 0(x23)	# 1120
	addi	x9, x0, 1	# 1120
	jal		x0, beq_cont.34045	# 1113
beq.34068:
	addi	x12, x9, 8	# 1121
	flw		f4, 0(x12)	# 1121
	fsub	f4, f4, f2	# 1121
	addi	x12, x9, 12	# 1121
	flw		f5, 0(x12)	# 1121
	fmul	f4, f4, f5	# 1121
	addi	x12, x7, 0	# 1123
	flw		f7, 0(x12)	# 1123
	fmul	f10, f4, f7	# 1123
	fadd	f10, f10, f1	# 1123
	fle		f10, f0, fle.34070	# 124
	jal		x0, fle_cont.34069	# 124
fle.34070:
	fsub	f10, f0, f10	# 124
fle_cont.34069:
	addi	x12, x11, 0	# 444
	flw		f11, 0(x12)	# 444
	fle		f11, f10, fle.34072	# 125
	addi	x12, x7, 8	# 1124
	flw		f10, 0(x12)	# 1124
	fmul	f10, f4, f10	# 1124
	fadd	f10, f10, f3	# 1124
	fle		f10, f0, fle.34074	# 124
	jal		x0, fle_cont.34073	# 124
fle.34074:
	fsub	f10, f0, f10	# 124
fle_cont.34073:
	addi	x11, x11, 8	# 464
	flw		f12, 0(x11)	# 464
	fle		f12, f10, fle.34076	# 125
	feq		f5, f0, feq.34078	# 120
	addi	x11, x0, 1	# 1125
	jal		x0, fle_cont.34071	# 120
feq.34078:
	addi	x11, x0, 0	# 1125
	jal		x0, fle_cont.34071	# 125
fle.34076:
	addi	x11, x0, 0	# 1126
	jal		x0, fle_cont.34071	# 125
fle.34072:
	addi	x11, x0, 0	# 1127
fle_cont.34071:
	beq		x11, x0, beq.34080	# 1122
	fsw		f4, 0(x23)	# 1129
	addi	x9, x0, 2	# 1129
	jal		x0, beq_cont.34045	# 1122
beq.34080:
	addi	x11, x9, 16	# 1130
	flw		f4, 0(x11)	# 1130
	fsub	f3, f4, f3	# 1130
	addi	x9, x9, 20	# 1130
	flw		f4, 0(x9)	# 1130
	fmul	f3, f3, f4	# 1130
	fmul	f5, f3, f7	# 1132
	fadd	f1, f5, f1	# 1132
	fle		f1, f0, fle.34082	# 124
	jal		x0, fle_cont.34081	# 124
fle.34082:
	fsub	f1, f0, f1	# 124
fle_cont.34081:
	fle		f11, f1, fle.34084	# 125
	fmul	f1, f3, f6	# 1133
	fadd	f1, f1, f2	# 1133
	fle		f1, f0, fle.34086	# 124
	jal		x0, fle_cont.34085	# 124
fle.34086:
	fsub	f1, f0, f1	# 124
fle_cont.34085:
	fle		f9, f1, fle.34088	# 125
	feq		f4, f0, feq.34090	# 120
	addi	x9, x0, 1	# 1134
	jal		x0, fle_cont.34083	# 120
feq.34090:
	addi	x9, x0, 0	# 1134
	jal		x0, fle_cont.34083	# 125
fle.34088:
	addi	x9, x0, 0	# 1135
	jal		x0, fle_cont.34083	# 125
fle.34084:
	addi	x9, x0, 0	# 1136
fle_cont.34083:
	beq		x9, x0, beq.34092	# 1131
	fsw		f3, 0(x23)	# 1138
	addi	x9, x0, 3	# 1138
	jal		x0, beq_cont.34045	# 1131
beq.34092:
	addi	x9, x0, 0	# 1140
beq_cont.34045:
	beq		x9, x0, beq.34093	# 1611
	flw		f1, 0(x23)	# 1615
	sw		x6, 0(x2)	# 125
	sw		x5, -24(x2)	# 125
	sw		x4, -84(x2)	# 125
	fle		f1, f0, fle_cont.34094	# 125
	lui		x10, 130548	# 1618
	ori		x10, x10, 130548	# 1618
	flw		f2, 0(x10)	# 1618
	fle		f2, f1, fle_cont.34094	# 125
	fadd	f1, f1, f18	# 1620
	addi	x11, x7, 0	# 1621
	flw		f2, 0(x11)	# 1621
	fmul	f2, f2, f1	# 1621
	lui		x11, 130648	# 1621
	ori		x11, x11, 130648	# 1621
	flw		f3, 0(x11)	# 1621
	fadd	f2, f2, f3	# 1621
	addi	x11, x7, 4	# 1622
	flw		f3, 0(x11)	# 1622
	fmul	f3, f3, f1	# 1622
	lui		x11, 130652	# 1622
	ori		x11, x11, 130652	# 1622
	flw		f4, 0(x11)	# 1622
	fadd	f3, f3, f4	# 1622
	addi	x7, x7, 8	# 1623
	flw		f4, 0(x7)	# 1623
	fmul	f4, f4, f1	# 1623
	lui		x7, 130656	# 1623
	ori		x7, x7, 130656	# 1623
	flw		f5, 0(x7)	# 1623
	fadd	f4, f4, f5	# 1623
	sw		x9, -88(x2)	# 1624
	sw		x8, -92(x2)	# 1624
	fsw		f4, -96(x2)	# 1624
	fsw		f3, -100(x2)	# 1624
	fsw		f2, -104(x2)	# 1624
	sw		x10, -108(x2)	# 1624
	fsw		f1, -112(x2)	# 1624
	sw		x0, -4(x2)	# 1624
	addi	x4, x0, 0	# 1624
	fadd	f1, f0, f2	# 1624
	fadd	f2, f0, f3	# 1624
	fadd	f3, f0, f4	# 1624
	sw		x1, -116(x2)	# 1624
	addi	x2, x2, -120	# 1624
	jal		x1, check_all_inside.2898.17926	# 1624
	addi	x2, x2, 120	# 1624
	lw		x1, -116(x2)	# 1624
	lw		x5, -4(x2)	# 1624
	beq		x4, x5, fle_cont.34094	# 1624
	flw		f1, -112(x2)	# 1626
	lw		x4, -108(x2)	# 1626
	fsw		f1, 0(x4)	# 1626
	flw		f1, -104(x2)	# 288
	fsw		f1, 0(x25)	# 288
	flw		f1, -100(x2)	# 289
	fsw		f1, 0(x27)	# 289
	flw		f1, -96(x2)	# 290
	fsw		f1, 0(x26)	# 290
	lui		x4, 130564	# 1628
	ori		x4, x4, 130564	# 1628
	lw		x5, -92(x2)	# 1628
	sw		x5, 0(x4)	# 1628
	lui		x4, 130544	# 1629
	ori		x4, x4, 130544	# 1629
	lw		x5, -88(x2)	# 1629
	sw		x5, 0(x4)	# 1629
fle_cont.34094:
	lw		x4, -84(x2)	# 1635
	addi	x4, x4, 1	# 1635
	lw		x5, -24(x2)	# 1635
	lw		x6, 0(x2)	# 1635
	jal		x0, solve_each_element_fast.2927.17953	# 1635
beq.34093:
	lw		x7, 24(x10)	# 421
	beq		x7, x0, beq.34100	# 1639
	addi	x4, x4, 1	# 1640
	jal		x0, solve_each_element_fast.2927.17953	# 1640
beq.34100:
	jalr	x0, x1, 0	# 1641
beq.34044:
	jalr	x0, x1, 0	# 1608
beq.34043:
	jalr	x0, x1, 0	# 1641
beq.33928:
	jalr	x0, x1, 0	# 1608
solve_one_or_network_fast.2931.17957:
	mul		x7, x30, x4	# 1647
	add		x7, x5, x7	# 1647
	lw		x7, 0(x7)	# 1647
	beq		x7, x20, beq.34105	# 1648
	lui		x9, 130332	# 28
	ori		x9, x9, 130332	# 28
	mul		x7, x30, x7	# 1649
	add		x7, x9, x7	# 1649
	lw		x7, 0(x7)	# 1649
	lw		x10, 0(x6)	# 687
	add		x11, x0, x0	# 6
	addi	x12, x7, 0	# 1607
	lw		x12, 0(x12)	# 1607
	sw		x6, 0(x2)	# 1608
	sw		x0, -4(x2)	# 1608
	sw		x9, -8(x2)	# 1608
	sw		x20, -12(x2)	# 1608
	sw		x5, -16(x2)	# 1608
	sw		x4, -20(x2)	# 1608
	beq		x12, x20, beq_cont.34106	# 1608
	lui		x13, 130048	# 12
	ori		x13, x13, 130048	# 12
	mul		x14, x30, x12	# 1221
	add		x13, x13, x14	# 1221
	lw		x13, 0(x13)	# 1221
	lw		x15, 40(x13)	# 596
	addi	x16, x15, 0	# 1223
	flw		f1, 0(x16)	# 1223
	add		x16, x0, x21	# 6
	addi	x17, x15, 4	# 1224
	flw		f2, 0(x17)	# 1224
	addi	x18, x15, 8	# 1225
	flw		f3, 0(x18)	# 1225
	lw		x18, 4(x6)	# 693
	add		x14, x18, x14	# 1227
	lw		x14, 0(x14)	# 1227
	lw		x18, 4(x13)	# 401
	beq		x18, x21, beq.34109	# 1229
	beq		x18, x22, beq.34111	# 1231
	addi	x17, x14, 0	# 1203
	flw		f4, 0(x17)	# 1203
	feq		f4, f0, feq.34113	# 120
	addi	x17, x14, 4	# 1207
	flw		f6, 0(x17)	# 1207
	fmul	f1, f6, f1	# 1207
	addi	x17, x14, 8	# 1207
	flw		f6, 0(x17)	# 1207
	fmul	f2, f6, f2	# 1207
	fadd	f1, f1, f2	# 1207
	addi	x17, x14, 12	# 1207
	flw		f2, 0(x17)	# 1207
	fmul	f2, f2, f3	# 1207
	fadd	f1, f1, f2	# 1207
	addi	x15, x15, 12	# 1208
	flw		f2, 0(x15)	# 1208
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1209
	fsub	f2, f3, f2	# 1209
	fle		f2, f0, fle.34115	# 121
	lw		x15, 24(x13)	# 421
	beq		x15, x0, beq.34117	# 1211
	fsqrt	f2, f2	# 1212
	fadd	f1, f1, f2	# 1212
	addi	x14, x14, 16	# 1212
	flw		f2, 0(x14)	# 1212
	fmul	f1, f1, f2	# 1212
	fsw		f1, 0(x23)	# 1212
	jal		x0, beq_cont.34116	# 1211
beq.34117:
	fsqrt	f2, f2	# 1214
	fsub	f1, f1, f2	# 1214
	addi	x14, x14, 16	# 1214
	flw		f2, 0(x14)	# 1214
	fmul	f1, f1, f2	# 1214
	fsw		f1, 0(x23)	# 1214
beq_cont.34116:
	addi	x14, x0, 1	# 1215
	jal		x0, beq_cont.34108	# 121
fle.34115:
	addi	x14, x0, 0	# 1216
	jal		x0, beq_cont.34108	# 120
feq.34113:
	addi	x14, x0, 0	# 1205
	jal		x0, beq_cont.34108	# 1231
beq.34111:
	addi	x14, x14, 0	# 1194
	flw		f1, 0(x14)	# 1194
	fle		f0, f1, fle.34119	# 122
	addi	x14, x15, 12	# 1195
	flw		f2, 0(x14)	# 1195
	fmul	f1, f1, f2	# 1195
	fsw		f1, 0(x23)	# 1195
	addi	x14, x0, 1	# 1196
	jal		x0, beq_cont.34108	# 122
fle.34119:
	addi	x14, x0, 0	# 1197
	jal		x0, beq_cont.34108	# 1229
beq.34109:
	addi	x15, x14, 0	# 1112
	flw		f4, 0(x15)	# 1112
	fsub	f4, f4, f1	# 1112
	addi	x15, x14, 4	# 1112
	flw		f5, 0(x15)	# 1112
	fmul	f4, f4, f5	# 1112
	addi	x15, x10, 4	# 1114
	flw		f6, 0(x15)	# 1114
	fmul	f7, f4, f6	# 1114
	fadd	f7, f7, f2	# 1114
	fle		f7, f0, fle.34121	# 124
	jal		x0, fle_cont.34120	# 124
fle.34121:
	fsub	f7, f0, f7	# 124
fle_cont.34120:
	lw		x15, 16(x13)	# 449
	addi	x17, x15, 4	# 454
	flw		f9, 0(x17)	# 454
	fle		f9, f7, fle.34123	# 125
	addi	x17, x10, 8	# 1115
	flw		f7, 0(x17)	# 1115
	fmul	f7, f4, f7	# 1115
	fadd	f7, f7, f3	# 1115
	fle		f7, f0, fle.34125	# 124
	jal		x0, fle_cont.34124	# 124
fle.34125:
	fsub	f7, f0, f7	# 124
fle_cont.34124:
	addi	x17, x15, 8	# 464
	flw		f10, 0(x17)	# 464
	fle		f10, f7, fle.34127	# 125
	feq		f5, f0, feq.34129	# 120
	addi	x17, x0, 1	# 1116
	jal		x0, fle_cont.34122	# 120
feq.34129:
	addi	x17, x0, 0	# 1116
	jal		x0, fle_cont.34122	# 125
fle.34127:
	addi	x17, x0, 0	# 1117
	jal		x0, fle_cont.34122	# 125
fle.34123:
	addi	x17, x0, 0	# 1118
fle_cont.34122:
	beq		x17, x0, beq.34131	# 1113
	fsw		f4, 0(x23)	# 1120
	addi	x14, x0, 1	# 1120
	jal		x0, beq_cont.34108	# 1113
beq.34131:
	addi	x17, x14, 8	# 1121
	flw		f4, 0(x17)	# 1121
	fsub	f4, f4, f2	# 1121
	addi	x17, x14, 12	# 1121
	flw		f5, 0(x17)	# 1121
	fmul	f4, f4, f5	# 1121
	addi	x17, x10, 0	# 1123
	flw		f7, 0(x17)	# 1123
	fmul	f10, f4, f7	# 1123
	fadd	f10, f10, f1	# 1123
	fle		f10, f0, fle.34133	# 124
	jal		x0, fle_cont.34132	# 124
fle.34133:
	fsub	f10, f0, f10	# 124
fle_cont.34132:
	addi	x17, x15, 0	# 444
	flw		f11, 0(x17)	# 444
	fle		f11, f10, fle.34135	# 125
	addi	x17, x10, 8	# 1124
	flw		f10, 0(x17)	# 1124
	fmul	f10, f4, f10	# 1124
	fadd	f10, f10, f3	# 1124
	fle		f10, f0, fle.34137	# 124
	jal		x0, fle_cont.34136	# 124
fle.34137:
	fsub	f10, f0, f10	# 124
fle_cont.34136:
	addi	x15, x15, 8	# 464
	flw		f12, 0(x15)	# 464
	fle		f12, f10, fle.34139	# 125
	feq		f5, f0, feq.34141	# 120
	addi	x15, x0, 1	# 1125
	jal		x0, fle_cont.34134	# 120
feq.34141:
	addi	x15, x0, 0	# 1125
	jal		x0, fle_cont.34134	# 125
fle.34139:
	addi	x15, x0, 0	# 1126
	jal		x0, fle_cont.34134	# 125
fle.34135:
	addi	x15, x0, 0	# 1127
fle_cont.34134:
	beq		x15, x0, beq.34143	# 1122
	fsw		f4, 0(x23)	# 1129
	addi	x14, x0, 2	# 1129
	jal		x0, beq_cont.34108	# 1122
beq.34143:
	addi	x15, x14, 16	# 1130
	flw		f4, 0(x15)	# 1130
	fsub	f3, f4, f3	# 1130
	addi	x14, x14, 20	# 1130
	flw		f4, 0(x14)	# 1130
	fmul	f3, f3, f4	# 1130
	fmul	f5, f3, f7	# 1132
	fadd	f1, f5, f1	# 1132
	fle		f1, f0, fle.34145	# 124
	jal		x0, fle_cont.34144	# 124
fle.34145:
	fsub	f1, f0, f1	# 124
fle_cont.34144:
	fle		f11, f1, fle.34147	# 125
	fmul	f1, f3, f6	# 1133
	fadd	f1, f1, f2	# 1133
	fle		f1, f0, fle.34149	# 124
	jal		x0, fle_cont.34148	# 124
fle.34149:
	fsub	f1, f0, f1	# 124
fle_cont.34148:
	fle		f9, f1, fle.34151	# 125
	feq		f4, f0, feq.34153	# 120
	addi	x14, x0, 1	# 1134
	jal		x0, fle_cont.34146	# 120
feq.34153:
	addi	x14, x0, 0	# 1134
	jal		x0, fle_cont.34146	# 125
fle.34151:
	addi	x14, x0, 0	# 1135
	jal		x0, fle_cont.34146	# 125
fle.34147:
	addi	x14, x0, 0	# 1136
fle_cont.34146:
	beq		x14, x0, beq.34155	# 1131
	fsw		f3, 0(x23)	# 1138
	addi	x14, x0, 3	# 1138
	jal		x0, beq_cont.34108	# 1131
beq.34155:
	addi	x14, x0, 0	# 1140
beq_cont.34108:
	beq		x14, x0, beq.34157	# 1611
	flw		f1, 0(x23)	# 1615
	sw		x7, -24(x2)	# 125
	fle		f1, f0, fle_cont.34158	# 125
	lui		x13, 130548	# 1618
	ori		x13, x13, 130548	# 1618
	flw		f2, 0(x13)	# 1618
	fle		f2, f1, fle_cont.34158	# 125
	fadd	f1, f1, f18	# 1620
	addi	x15, x10, 0	# 1621
	flw		f2, 0(x15)	# 1621
	fmul	f2, f2, f1	# 1621
	lui		x15, 130648	# 1621
	ori		x15, x15, 130648	# 1621
	flw		f3, 0(x15)	# 1621
	fadd	f2, f2, f3	# 1621
	addi	x15, x10, 4	# 1622
	flw		f3, 0(x15)	# 1622
	fmul	f3, f3, f1	# 1622
	lui		x15, 130652	# 1622
	ori		x15, x15, 130652	# 1622
	flw		f4, 0(x15)	# 1622
	fadd	f3, f3, f4	# 1622
	addi	x10, x10, 8	# 1623
	flw		f4, 0(x10)	# 1623
	fmul	f4, f4, f1	# 1623
	lui		x10, 130656	# 1623
	ori		x10, x10, 130656	# 1623
	flw		f5, 0(x10)	# 1623
	fadd	f4, f4, f5	# 1623
	fsw		f4, -28(x2)	# 1624
	fsw		f3, -32(x2)	# 1624
	fsw		f2, -36(x2)	# 1624
	fsw		f1, -40(x2)	# 1624
	addi	x5, x7, 0	# 1624
	addi	x4, x0, 0	# 1624
	fadd	f1, f0, f2	# 1624
	fadd	f2, f0, f3	# 1624
	fadd	f3, f0, f4	# 1624
	sw		x1, -44(x2)	# 1624
	addi	x2, x2, -48	# 1624
	jal		x1, check_all_inside.2898.17926	# 1624
	addi	x2, x2, 48	# 1624
	lw		x1, -44(x2)	# 1624
	lw		x5, -4(x2)	# 1624
	beq		x4, x5, fle_cont.34158	# 1624
	flw		f1, -40(x2)	# 1626
	fsw		f1, 0(x13)	# 1626
	flw		f1, -36(x2)	# 288
	fsw		f1, 0(x25)	# 288
	flw		f1, -32(x2)	# 289
	fsw		f1, 0(x27)	# 289
	flw		f1, -28(x2)	# 290
	fsw		f1, 0(x26)	# 290
	lui		x4, 130564	# 1628
	ori		x4, x4, 130564	# 1628
	sw		x12, 0(x4)	# 1628
	lui		x4, 130544	# 1629
	ori		x4, x4, 130544	# 1629
	sw		x14, 0(x4)	# 1629
fle_cont.34158:
	lw		x5, -24(x2)	# 1635
	lw		x6, 0(x2)	# 1635
	addi	x4, x21, 0	# 1635
	sw		x1, -44(x2)	# 1635
	addi	x2, x2, -48	# 1635
	jal		x1, solve_each_element_fast.2927.17953	# 1635
	addi	x2, x2, 48	# 1635
	lw		x1, -44(x2)	# 1635
	jal		x0, beq_cont.34106	# 1611
beq.34157:
	lw		x10, 24(x13)	# 421
	beq		x10, x0, beq_cont.34106	# 1639
	addi	x5, x7, 0	# 1640
	addi	x4, x21, 0	# 1640
	sw		x1, -44(x2)	# 1640
	addi	x2, x2, -48	# 1640
	jal		x1, solve_each_element_fast.2927.17953	# 1640
	addi	x2, x2, 48	# 1640
	lw		x1, -44(x2)	# 1640
beq_cont.34106:
	lw		x4, -20(x2)	# 1651
	addi	x4, x4, 1	# 1651
	mul		x5, x30, x4	# 1647
	lw		x6, -16(x2)	# 1647
	add		x5, x6, x5	# 1647
	lw		x5, 0(x5)	# 1647
	lw		x7, -12(x2)	# 1648
	beq		x5, x7, beq.34166	# 1648
	mul		x5, x30, x5	# 1649
	lw		x7, -8(x2)	# 1649
	add		x5, x7, x5	# 1649
	lw		x5, 0(x5)	# 1649
	lw		x7, -4(x2)	# 1650
	lw		x8, 0(x2)	# 1650
	sw		x4, -44(x2)	# 1650
	addi	x6, x8, 0	# 1650
	addi	x4, x7, 0	# 1650
	sw		x1, -48(x2)	# 1650
	addi	x2, x2, -52	# 1650
	jal		x1, solve_each_element_fast.2927.17953	# 1650
	addi	x2, x2, 52	# 1650
	lw		x1, -48(x2)	# 1650
	lw		x4, -44(x2)	# 1651
	addi	x4, x4, 1	# 1651
	lw		x5, -16(x2)	# 1651
	lw		x6, 0(x2)	# 1651
	jal		x0, solve_one_or_network_fast.2931.17957	# 1651
beq.34166:
	jalr	x0, x1, 0	# 1652
beq.34105:
	jalr	x0, x1, 0	# 1652
trace_or_matrix_fast.2935.17961:
	mul		x7, x30, x4	# 1657
	add		x7, x5, x7	# 1657
	lw		x7, 0(x7)	# 1657
	add		x8, x0, x0	# 6
	addi	x9, x7, 0	# 1658
	lw		x9, 0(x9)	# 1658
	beq		x9, x20, beq.34169	# 1659
	sw		x6, 0(x2)	# 1662
	sw		x5, -4(x2)	# 1662
	sw		x4, -8(x2)	# 1662
	beq		x9, x28, beq.34171	# 1662
	lui		x11, 130048	# 12
	ori		x11, x11, 130048	# 12
	mul		x9, x30, x9	# 1221
	add		x11, x11, x9	# 1221
	lw		x11, 0(x11)	# 1221
	lw		x12, 40(x11)	# 596
	addi	x13, x12, 0	# 1223
	flw		f1, 0(x13)	# 1223
	addi	x14, x12, 4	# 1224
	flw		f2, 0(x14)	# 1224
	add		x14, x0, x22	# 65
	addi	x15, x12, 8	# 1225
	flw		f3, 0(x15)	# 1225
	lw		x15, 4(x6)	# 693
	add		x9, x15, x9	# 1227
	lw		x9, 0(x9)	# 1227
	lw		x15, 4(x11)	# 401
	beq		x15, x21, beq.34173	# 1229
	beq		x15, x22, beq.34175	# 1231
	addi	x13, x9, 0	# 1203
	flw		f4, 0(x13)	# 1203
	feq		f4, f0, feq.34177	# 120
	addi	x13, x9, 4	# 1207
	flw		f6, 0(x13)	# 1207
	fmul	f1, f6, f1	# 1207
	addi	x13, x9, 8	# 1207
	flw		f6, 0(x13)	# 1207
	fmul	f2, f6, f2	# 1207
	fadd	f1, f1, f2	# 1207
	addi	x13, x9, 12	# 1207
	flw		f2, 0(x13)	# 1207
	fmul	f2, f2, f3	# 1207
	fadd	f1, f1, f2	# 1207
	addi	x12, x12, 12	# 1208
	flw		f2, 0(x12)	# 1208
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1209
	fsub	f2, f3, f2	# 1209
	fle		f2, f0, fle.34179	# 121
	lw		x11, 24(x11)	# 421
	beq		x11, x0, beq.34181	# 1211
	fsqrt	f2, f2	# 1212
	fadd	f1, f1, f2	# 1212
	addi	x9, x9, 16	# 1212
	flw		f2, 0(x9)	# 1212
	fmul	f1, f1, f2	# 1212
	fsw		f1, 0(x23)	# 1212
	jal		x0, beq_cont.34180	# 1211
beq.34181:
	fsqrt	f2, f2	# 1214
	fsub	f1, f1, f2	# 1214
	addi	x9, x9, 16	# 1214
	flw		f2, 0(x9)	# 1214
	fmul	f1, f1, f2	# 1214
	fsw		f1, 0(x23)	# 1214
beq_cont.34180:
	addi	x9, x0, 1	# 1215
	jal		x0, beq_cont.34172	# 121
fle.34179:
	addi	x9, x0, 0	# 1216
	jal		x0, beq_cont.34172	# 120
feq.34177:
	addi	x9, x0, 0	# 1205
	jal		x0, beq_cont.34172	# 1231
beq.34175:
	addi	x9, x9, 0	# 1194
	flw		f1, 0(x9)	# 1194
	fle		f0, f1, fle.34183	# 122
	addi	x9, x12, 12	# 1195
	flw		f2, 0(x9)	# 1195
	fmul	f1, f1, f2	# 1195
	fsw		f1, 0(x23)	# 1195
	addi	x9, x0, 1	# 1196
	jal		x0, beq_cont.34172	# 122
fle.34183:
	addi	x9, x0, 0	# 1197
	jal		x0, beq_cont.34172	# 1229
beq.34173:
	lw		x12, 0(x6)	# 687
	addi	x13, x9, 0	# 1112
	flw		f4, 0(x13)	# 1112
	fsub	f4, f4, f1	# 1112
	addi	x13, x9, 4	# 1112
	flw		f5, 0(x13)	# 1112
	fmul	f4, f4, f5	# 1112
	addi	x13, x12, 4	# 1114
	flw		f6, 0(x13)	# 1114
	fmul	f7, f4, f6	# 1114
	fadd	f7, f7, f2	# 1114
	fle		f7, f0, fle.34185	# 124
	jal		x0, fle_cont.34184	# 124
fle.34185:
	fsub	f7, f0, f7	# 124
fle_cont.34184:
	lw		x11, 16(x11)	# 449
	addi	x13, x11, 4	# 454
	flw		f9, 0(x13)	# 454
	fle		f9, f7, fle.34187	# 125
	addi	x13, x12, 8	# 1115
	flw		f7, 0(x13)	# 1115
	fmul	f7, f4, f7	# 1115
	fadd	f7, f7, f3	# 1115
	fle		f7, f0, fle.34189	# 124
	jal		x0, fle_cont.34188	# 124
fle.34189:
	fsub	f7, f0, f7	# 124
fle_cont.34188:
	addi	x13, x11, 8	# 464
	flw		f10, 0(x13)	# 464
	fle		f10, f7, fle.34191	# 125
	feq		f5, f0, feq.34193	# 120
	addi	x13, x0, 1	# 1116
	jal		x0, fle_cont.34186	# 120
feq.34193:
	addi	x13, x0, 0	# 1116
	jal		x0, fle_cont.34186	# 125
fle.34191:
	addi	x13, x0, 0	# 1117
	jal		x0, fle_cont.34186	# 125
fle.34187:
	addi	x13, x0, 0	# 1118
fle_cont.34186:
	beq		x13, x0, beq.34195	# 1113
	fsw		f4, 0(x23)	# 1120
	addi	x9, x0, 1	# 1120
	jal		x0, beq_cont.34172	# 1113
beq.34195:
	addi	x13, x9, 8	# 1121
	flw		f4, 0(x13)	# 1121
	fsub	f4, f4, f2	# 1121
	addi	x13, x9, 12	# 1121
	flw		f5, 0(x13)	# 1121
	fmul	f4, f4, f5	# 1121
	addi	x13, x12, 0	# 1123
	flw		f7, 0(x13)	# 1123
	fmul	f10, f4, f7	# 1123
	fadd	f10, f10, f1	# 1123
	fle		f10, f0, fle.34197	# 124
	jal		x0, fle_cont.34196	# 124
fle.34197:
	fsub	f10, f0, f10	# 124
fle_cont.34196:
	addi	x13, x11, 0	# 444
	flw		f11, 0(x13)	# 444
	fle		f11, f10, fle.34199	# 125
	addi	x12, x12, 8	# 1124
	flw		f10, 0(x12)	# 1124
	fmul	f10, f4, f10	# 1124
	fadd	f10, f10, f3	# 1124
	fle		f10, f0, fle.34201	# 124
	jal		x0, fle_cont.34200	# 124
fle.34201:
	fsub	f10, f0, f10	# 124
fle_cont.34200:
	addi	x11, x11, 8	# 464
	flw		f12, 0(x11)	# 464
	fle		f12, f10, fle.34203	# 125
	feq		f5, f0, feq.34205	# 120
	addi	x11, x0, 1	# 1125
	jal		x0, fle_cont.34198	# 120
feq.34205:
	addi	x11, x0, 0	# 1125
	jal		x0, fle_cont.34198	# 125
fle.34203:
	addi	x11, x0, 0	# 1126
	jal		x0, fle_cont.34198	# 125
fle.34199:
	addi	x11, x0, 0	# 1127
fle_cont.34198:
	beq		x11, x0, beq.34207	# 1122
	fsw		f4, 0(x23)	# 1129
	addi	x9, x0, 2	# 1129
	jal		x0, beq_cont.34172	# 1122
beq.34207:
	addi	x11, x9, 16	# 1130
	flw		f4, 0(x11)	# 1130
	fsub	f3, f4, f3	# 1130
	addi	x9, x9, 20	# 1130
	flw		f4, 0(x9)	# 1130
	fmul	f3, f3, f4	# 1130
	fmul	f5, f3, f7	# 1132
	fadd	f1, f5, f1	# 1132
	fle		f1, f0, fle.34209	# 124
	jal		x0, fle_cont.34208	# 124
fle.34209:
	fsub	f1, f0, f1	# 124
fle_cont.34208:
	fle		f11, f1, fle.34211	# 125
	fmul	f1, f3, f6	# 1133
	fadd	f1, f1, f2	# 1133
	fle		f1, f0, fle.34213	# 124
	jal		x0, fle_cont.34212	# 124
fle.34213:
	fsub	f1, f0, f1	# 124
fle_cont.34212:
	fle		f9, f1, fle.34215	# 125
	feq		f4, f0, feq.34217	# 120
	addi	x9, x0, 1	# 1134
	jal		x0, fle_cont.34210	# 120
feq.34217:
	addi	x9, x0, 0	# 1134
	jal		x0, fle_cont.34210	# 125
fle.34215:
	addi	x9, x0, 0	# 1135
	jal		x0, fle_cont.34210	# 125
fle.34211:
	addi	x9, x0, 0	# 1136
fle_cont.34210:
	beq		x9, x0, beq.34219	# 1131
	fsw		f3, 0(x23)	# 1138
	addi	x9, x0, 3	# 1138
	jal		x0, beq_cont.34172	# 1131
beq.34219:
	addi	x9, x0, 0	# 1140
beq_cont.34172:
	beq		x9, x0, beq_cont.34170	# 1668
	flw		f1, 0(x23)	# 1669
	lui		x9, 130548	# 1670
	ori		x9, x9, 130548	# 1670
	flw		f2, 0(x9)	# 1670
	fle		f2, f1, beq_cont.34170	# 125
	addi	x9, x7, 4	# 1647
	lw		x9, 0(x9)	# 1647
	beq		x9, x20, beq_cont.34170	# 1648
	lui		x10, 130332	# 28
	ori		x10, x10, 130332	# 28
	mul		x9, x30, x9	# 1649
	add		x9, x10, x9	# 1649
	lw		x9, 0(x9)	# 1649
	sw		x7, -12(x2)	# 1650
	sw		x22, -16(x2)	# 1650
	addi	x5, x9, 0	# 1650
	addi	x4, x0, 0	# 1650
	sw		x1, -20(x2)	# 1650
	addi	x2, x2, -24	# 1650
	jal		x1, solve_each_element_fast.2927.17953	# 1650
	addi	x2, x2, 24	# 1650
	lw		x1, -20(x2)	# 1650
	lw		x4, -16(x2)	# 1651
	lw		x5, -12(x2)	# 1651
	lw		x6, 0(x2)	# 1651
	sw		x1, -20(x2)	# 1651
	addi	x2, x2, -24	# 1651
	jal		x1, solve_one_or_network_fast.2931.17957	# 1651
	addi	x2, x2, 24	# 1651
	lw		x1, -20(x2)	# 1651
	jal		x0, beq_cont.34170	# 1648
beq.34171:
	addi	x9, x7, 4	# 1647
	lw		x9, 0(x9)	# 1647
	beq		x9, x20, beq_cont.34170	# 1648
	lui		x10, 130332	# 28
	ori		x10, x10, 130332	# 28
	mul		x9, x30, x9	# 1649
	add		x9, x10, x9	# 1649
	lw		x9, 0(x9)	# 1649
	sw		x7, -12(x2)	# 1650
	addi	x5, x9, 0	# 1650
	addi	x4, x0, 0	# 1650
	sw		x1, -20(x2)	# 1650
	addi	x2, x2, -24	# 1650
	jal		x1, solve_each_element_fast.2927.17953	# 1650
	addi	x2, x2, 24	# 1650
	lw		x1, -20(x2)	# 1650
	add		x4, x0, x22	# 65
	lw		x5, -12(x2)	# 1651
	lw		x6, 0(x2)	# 1651
	sw		x1, -20(x2)	# 1651
	addi	x2, x2, -24	# 1651
	jal		x1, solve_one_or_network_fast.2931.17957	# 1651
	addi	x2, x2, 24	# 1651
	lw		x1, -20(x2)	# 1651
beq_cont.34170:
	lw		x4, -8(x2)	# 1675
	addi	x4, x4, 1	# 1675
	lw		x5, -4(x2)	# 1675
	lw		x6, 0(x2)	# 1675
	jal		x0, trace_or_matrix_fast.2935.17961	# 1675
beq.34169:
	jalr	x0, x1, 0	# 1660
trace_reflections.2957.17965:
	add		x6, x0, x0	# 6
	ble		x0, x4, ble.34229	# 1852
	jalr	x0, x1, 0	# 1872
ble.34229:
	lui		x7, 131016	# 114
	ori		x7, x7, 131016	# 114
	mul		x8, x30, x4	# 1853
	add		x7, x7, x8	# 1853
	lw		x7, 0(x7)	# 1853
	lw		x8, 4(x7)	# 709
	lui		x9, 130548	# 1682
	ori		x9, x9, 130548	# 1682
	fsw		f21, 0(x9)	# 1682
	lui		x10, 130536	# 1683
	ori		x10, x10, 130536	# 1683
	lw		x10, 0(x10)	# 1683
	sw		x4, 0(x2)	# 1683
	fsw		f2, -4(x2)	# 1683
	sw		x5, -8(x2)	# 1683
	fsw		f1, -12(x2)	# 1683
	sw		x8, -16(x2)	# 1683
	sw		x10, -20(x2)	# 1683
	sw		x7, -24(x2)	# 1683
	sw		x0, -28(x2)	# 1683
	sw		x9, -32(x2)	# 1683
	addi	x5, x10, 0	# 1683
	addi	x4, x0, 0	# 1683
	addi	x6, x8, 0	# 1683
	sw		x1, -36(x2)	# 1683
	addi	x2, x2, -40	# 1683
	jal		x1, trace_or_matrix_fast.2935.17961	# 1683
	addi	x2, x2, 40	# 1683
	lw		x1, -36(x2)	# 1683
	lw		x4, -32(x2)	# 1684
	flw		f1, 0(x4)	# 1684
	fle		f1, f20, fle.34232	# 125
	fle		f22, f1, fle.34234	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.34231	# 125
fle.34234:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.34231	# 125
fle.34232:
	addi	x4, x0, 0	# 1688
fle_cont.34231:
	lw		x5, -28(x2)	# 1857
	beq		x4, x5, beq_cont.34235	# 1857
	lui		x4, 130564	# 1858
	ori		x4, x4, 130564	# 1858
	lw		x4, 0(x4)	# 1858
	mul		x4, x4, x30	# 1858
	lui		x6, 130544	# 1858
	ori		x6, x6, 130544	# 1858
	lw		x6, 0(x6)	# 1858
	add		x4, x4, x6	# 1858
	lw		x6, -24(x2)	# 703
	lw		x7, 0(x6)	# 703
	beq		x4, x7, beq.34238	# 1859
	jal		x0, beq_cont.34235	# 1859
beq.34238:
	lw		x4, -20(x2)	# 1861
	addi	x31, x5, 0	# 1861
	addi	x5, x4, 0	# 1861
	addi	x4, x31, 0	# 1861
	sw		x1, -36(x2)	# 1861
	addi	x2, x2, -40	# 1861
	jal		x1, shadow_check_one_or_matrix.2910.17938	# 1861
	addi	x2, x2, 40	# 1861
	lw		x1, -36(x2)	# 1861
	lw		x5, -28(x2)	# 1861
	beq		x4, x5, beq.34240	# 1861
	jal		x0, beq_cont.34235	# 1861
beq.34240:
	lw		x4, -16(x2)	# 687
	lw		x4, 0(x4)	# 687
	lui		x5, 130568	# 340
	ori		x5, x5, 130568	# 340
	flw		f1, 0(x5)	# 340
	addi	x5, x4, 0	# 340
	flw		f2, 0(x5)	# 340
	fmul	f1, f1, f2	# 340
	lui		x5, 130572	# 340
	ori		x5, x5, 130572	# 340
	flw		f3, 0(x5)	# 340
	addi	x5, x4, 4	# 340
	flw		f4, 0(x5)	# 340
	fmul	f3, f3, f4	# 340
	fadd	f1, f1, f3	# 340
	lui		x5, 130576	# 340
	ori		x5, x5, 130576	# 340
	flw		f3, 0(x5)	# 340
	addi	x4, x4, 8	# 340
	flw		f5, 0(x4)	# 340
	fmul	f3, f3, f5	# 340
	fadd	f1, f1, f3	# 340
	lw		x4, -24(x2)	# 1865
	flw		f3, 8(x4)	# 1865
	flw		f6, -12(x2)	# 1865
	fmul	f7, f3, f6	# 1865
	fmul	f1, f7, f1	# 1865
	lw		x5, -8(x2)	# 340
	addi	x4, x5, 0	# 340
	flw		f7, 0(x4)	# 340
	fmul	f2, f7, f2	# 340
	addi	x4, x5, 4	# 340
	flw		f7, 0(x4)	# 340
	fmul	f4, f7, f4	# 340
	fadd	f2, f2, f4	# 340
	addi	x4, x5, 8	# 340
	flw		f4, 0(x4)	# 340
	fmul	f4, f4, f5	# 340
	fadd	f2, f2, f4	# 340
	fmul	f2, f3, f2	# 1866
	fle		f1, f0, fle_cont.34241	# 121
	lui		x4, 130604	# 350
	ori		x4, x4, 130604	# 350
	flw		f4, 0(x4)	# 350
	lui		x6, 130580	# 350
	ori		x6, x6, 130580	# 350
	flw		f5, 0(x6)	# 350
	fmul	f5, f1, f5	# 350
	fadd	f4, f4, f5	# 350
	fsw		f4, 0(x4)	# 350
	lui		x4, 130608	# 351
	ori		x4, x4, 130608	# 351
	flw		f4, 0(x4)	# 351
	lui		x6, 130584	# 351
	ori		x6, x6, 130584	# 351
	flw		f5, 0(x6)	# 351
	fmul	f5, f1, f5	# 351
	fadd	f4, f4, f5	# 351
	fsw		f4, 0(x4)	# 351
	lui		x4, 130612	# 352
	ori		x4, x4, 130612	# 352
	flw		f4, 0(x4)	# 352
	lui		x6, 130588	# 352
	ori		x6, x6, 130588	# 352
	flw		f5, 0(x6)	# 352
	fmul	f1, f1, f5	# 352
	fadd	f1, f4, f1	# 352
	fsw		f1, 0(x4)	# 352
fle_cont.34241:
	fle		f2, f0, beq_cont.34235	# 121
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -4(x2)	# 1842
	fmul	f1, f1, f2	# 1842
	lui		x4, 130604	# 1843
	ori		x4, x4, 130604	# 1843
	flw		f3, 0(x4)	# 1843
	fadd	f3, f3, f1	# 1843
	fsw		f3, 0(x4)	# 1843
	lui		x4, 130608	# 1844
	ori		x4, x4, 130608	# 1844
	flw		f3, 0(x4)	# 1844
	fadd	f3, f3, f1	# 1844
	fsw		f3, 0(x4)	# 1844
	lui		x4, 130612	# 1845
	ori		x4, x4, 130612	# 1845
	flw		f3, 0(x4)	# 1845
	fadd	f1, f3, f1	# 1845
	fsw		f1, 0(x4)	# 1845
beq_cont.34235:
	lw		x4, 0(x2)	# 1871
	addi	x4, x4, -1	# 1871
	lw		x5, -8(x2)	# 1871
	flw		f1, -12(x2)	# 1871
	flw		f2, -4(x2)	# 1871
	jal		x0, trace_reflections.2957.17965	# 1871
trace_ray.2962.17970:
	ble		x4, x30, ble.34245	# 1880
	jalr	x0, x1, 0	# 1961
ble.34245:
	lw		x8, 8(x6)	# 625
	add		x9, x0, x0	# 6
	lui		x10, 130548	# 1591
	ori		x10, x10, 130548	# 1591
	fsw		f21, 0(x10)	# 1591
	lui		x11, 130536	# 1592
	ori		x11, x11, 130536	# 1592
	lw		x11, 0(x11)	# 1592
	fsw		f2, 0(x2)	# 1592
	sw		x11, -4(x2)	# 1592
	sw		x6, -8(x2)	# 1592
	sw		x30, -12(x2)	# 1592
	fsw		f1, -16(x2)	# 1592
	sw		x5, -20(x2)	# 1592
	sw		x8, -24(x2)	# 1592
	sw		x4, -28(x2)	# 1592
	sw		x0, -32(x2)	# 1592
	sw		x10, -36(x2)	# 1592
	addi	x6, x5, 0	# 1592
	addi	x4, x0, 0	# 1592
	addi	x5, x11, 0	# 1592
	sw		x1, -40(x2)	# 1592
	addi	x2, x2, -44	# 1592
	jal		x1, trace_or_matrix.2921.17949	# 1592
	addi	x2, x2, 44	# 1592
	lw		x1, -40(x2)	# 1592
	lw		x4, -36(x2)	# 1593
	flw		f1, 0(x4)	# 1593
	fle		f1, f20, fle.34248	# 125
	fle		f22, f1, fle.34250	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.34247	# 125
fle.34250:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.34247	# 125
fle.34248:
	addi	x4, x0, 0	# 1597
fle_cont.34247:
	lw		x5, -32(x2)	# 1882
	beq		x4, x5, beq.34251	# 1882
	lui		x4, 130564	# 1884
	ori		x4, x4, 130564	# 1884
	lw		x4, 0(x4)	# 1884
	lui		x6, 130048	# 12
	ori		x6, x6, 130048	# 12
	mul		x7, x30, x4	# 1885
	add		x6, x6, x7	# 1885
	lw		x6, 0(x6)	# 1885
	lw		x7, 8(x6)	# 411
	lw		x8, 28(x6)	# 509
	addi	x9, x8, 0	# 514
	flw		f2, 0(x9)	# 514
	flw		f3, -16(x2)	# 1887
	fmul	f4, f2, f3	# 1887
	lw		x9, 4(x6)	# 401
	beq		x9, x21, beq.34253	# 1741
	beq		x9, x22, beq.34255	# 1743
	flw		f5, 0(x25)	# 1718
	lw		x9, 20(x6)	# 479
	addi	x11, x9, 0	# 484
	flw		f6, 0(x11)	# 484
	fsub	f5, f5, f6	# 1718
	flw		f6, 0(x27)	# 1719
	addi	x11, x9, 4	# 494
	flw		f7, 0(x11)	# 494
	fsub	f6, f6, f7	# 1719
	flw		f7, 0(x26)	# 1720
	addi	x9, x9, 8	# 504
	flw		f8, 0(x9)	# 504
	fsub	f7, f7, f8	# 1720
	lw		x9, 16(x6)	# 439
	addi	x11, x9, 0	# 444
	flw		f8, 0(x11)	# 444
	fmul	f8, f5, f8	# 1722
	addi	x11, x9, 4	# 454
	flw		f9, 0(x11)	# 454
	fmul	f9, f6, f9	# 1723
	addi	x9, x9, 8	# 464
	flw		f10, 0(x9)	# 464
	fmul	f10, f7, f10	# 1724
	lw		x9, 12(x6)	# 430
	beq		x9, x5, beq.34257	# 1726
	lw		x9, 36(x6)	# 579
	addi	x11, x9, 8	# 584
	flw		f11, 0(x11)	# 584
	fmul	f12, f6, f11	# 1731
	addi	x11, x9, 4	# 574
	flw		f13, 0(x11)	# 574
	fmul	f14, f7, f13	# 1731
	fadd	f12, f12, f14	# 1731
	lui		x11, %hi(l.27810)	# 126
	ori		x11, x11, %lo(l.27810)	# 126
	flw		f14, 0(x11)	# 126
	fmul	f12, f12, f14	# 126
	fadd	f8, f8, f12	# 1731
	lui		x11, 130568	# 1731
	ori		x11, x11, 130568	# 1731
	fsw		f8, 0(x11)	# 1731
	fmul	f8, f5, f11	# 1732
	addi	x9, x9, 0	# 564
	flw		f11, 0(x9)	# 564
	fmul	f7, f7, f11	# 1732
	fadd	f7, f8, f7	# 1732
	fmul	f7, f7, f14	# 126
	fadd	f7, f9, f7	# 1732
	lui		x9, 130572	# 1732
	ori		x9, x9, 130572	# 1732
	fsw		f7, 0(x9)	# 1732
	fmul	f5, f5, f13	# 1733
	fmul	f6, f6, f11	# 1733
	fadd	f5, f5, f6	# 1733
	fmul	f5, f5, f14	# 126
	fadd	f5, f10, f5	# 1733
	lui		x9, 130576	# 1733
	ori		x9, x9, 130576	# 1733
	fsw		f5, 0(x9)	# 1733
	jal		x0, beq_cont.34256	# 1726
beq.34257:
	lui		x9, 130568	# 1727
	ori		x9, x9, 130568	# 1727
	fsw		f8, 0(x9)	# 1727
	lui		x9, 130572	# 1728
	ori		x9, x9, 130572	# 1728
	fsw		f9, 0(x9)	# 1728
	lui		x9, 130576	# 1729
	ori		x9, x9, 130576	# 1729
	fsw		f10, 0(x9)	# 1729
beq_cont.34256:
	lw		x9, 24(x6)	# 421
	lui		x11, 130568	# 331
	ori		x11, x11, 130568	# 331
	flw		f5, 0(x11)	# 331
	fmul	f6, f5, f5	# 127
	lui		x12, 130572	# 331
	ori		x12, x12, 130572	# 331
	flw		f7, 0(x12)	# 331
	fmul	f8, f7, f7	# 127
	fadd	f6, f6, f8	# 331
	lui		x13, 130576	# 331
	ori		x13, x13, 130576	# 331
	flw		f8, 0(x13)	# 331
	fmul	f9, f8, f8	# 127
	fadd	f6, f6, f9	# 331
	fsqrt	f6, f6	# 331
	feq		f6, f0, feq.34259	# 120
	beq		x9, x5, beq.34261	# 332
	fdiv	f6, f25, f6	# 332
	jal		x0, feq_cont.34258	# 332
beq.34261:
	fdiv	f6, f30, f6	# 332
	jal		x0, feq_cont.34258	# 120
feq.34259:
	fadd	f6, f0, f30	# 332
feq_cont.34258:
	fmul	f5, f5, f6	# 333
	fsw		f5, 0(x11)	# 333
	fmul	f5, f7, f6	# 334
	fsw		f5, 0(x12)	# 334
	fmul	f5, f8, f6	# 335
	fsw		f5, 0(x13)	# 335
	jal		x0, beq_cont.34252	# 1743
beq.34255:
	lw		x9, 16(x6)	# 439
	addi	x11, x9, 0	# 444
	flw		f5, 0(x11)	# 444
	fsub	f5, f0, f5	# 123
	lui		x11, 130568	# 1711
	ori		x11, x11, 130568	# 1711
	fsw		f5, 0(x11)	# 1711
	addi	x11, x9, 4	# 454
	flw		f5, 0(x11)	# 454
	fsub	f5, f0, f5	# 123
	lui		x11, 130572	# 1712
	ori		x11, x11, 130572	# 1712
	fsw		f5, 0(x11)	# 1712
	addi	x9, x9, 8	# 464
	flw		f5, 0(x9)	# 464
	fsub	f5, f0, f5	# 123
	lui		x9, 130576	# 1713
	ori		x9, x9, 130576	# 1713
	fsw		f5, 0(x9)	# 1713
	jal		x0, beq_cont.34252	# 1741
beq.34253:
	lui		x9, 130544	# 1702
	ori		x9, x9, 130544	# 1702
	lw		x9, 0(x9)	# 1702
	lui		x11, 130568	# 51
	ori		x11, x11, 130568	# 51
	fsw		f0, 0(x11)	# 295
	lui		x12, 130572	# 296
	ori		x12, x12, 130572	# 296
	fsw		f0, 0(x12)	# 296
	lui		x12, 130576	# 297
	ori		x12, x12, 130576	# 297
	fsw		f0, 0(x12)	# 297
	addi	x9, x9, -1	# 1705
	mul		x9, x30, x9	# 1705
	lw		x12, -20(x2)	# 1705
	add		x13, x12, x9	# 1705
	flw		f6, 0(x13)	# 1705
	feq		f6, f0, feq.34263	# 120
	fle		f6, f0, fle.34265	# 121
	fadd	f5, f0, f30	# 261
	jal		x0, feq_cont.34262	# 121
fle.34265:
	fadd	f5, f0, f25	# 262
	jal		x0, feq_cont.34262	# 120
feq.34263:
	fadd	f5, f0, f0	# 260
feq_cont.34262:
	fsub	f5, f0, f5	# 123
	add		x9, x11, x9	# 1705
	fsw		f5, 0(x9)	# 1705
beq_cont.34252:
	lui		x9, 130552	# 45
	ori		x9, x9, 130552	# 45
	flw		f5, 0(x9)	# 307
	lui		x11, 130636	# 307
	ori		x11, x11, 130636	# 307
	fsw		f5, 0(x11)	# 307
	flw		f6, 0(x27)	# 308
	lui		x11, 130640	# 308
	ori		x11, x11, 130640	# 308
	fsw		f6, 0(x11)	# 308
	flw		f7, 0(x26)	# 309
	lui		x12, 130644	# 309
	ori		x12, x12, 130644	# 309
	fsw		f7, 0(x12)	# 309
	lw		x12, 0(x6)	# 391
	lw		x13, 32(x6)	# 529
	addi	x14, x13, 0	# 534
	flw		f8, 0(x14)	# 534
	lui		x14, 130580	# 1758
	ori		x14, x14, 130580	# 1758
	fsw		f8, 0(x14)	# 1758
	addi	x15, x13, 4	# 544
	flw		f8, 0(x15)	# 544
	lui		x15, 130584	# 1759
	ori		x15, x15, 130584	# 1759
	fsw		f8, 0(x15)	# 1759
	addi	x13, x13, 8	# 554
	flw		f8, 0(x13)	# 554
	lui		x13, 130588	# 1760
	ori		x13, x13, 130588	# 1760
	fsw		f8, 0(x13)	# 1760
	fsw		f1, -40(x2)	# 1761
	sw		x7, -44(x2)	# 1761
	fsw		f4, -48(x2)	# 1761
	fsw		f2, -52(x2)	# 1761
	fsw		f5, -56(x2)	# 1761
	sw		x4, -60(x2)	# 1761
	beq		x12, x21, beq.34267	# 1761
	beq		x12, x22, beq.34269	# 1779
	beq		x12, x24, beq.34271	# 1786
	lw		x16, -12(x2)	# 1797
	beq		x12, x16, beq.34273	# 1797
	jal		x0, beq_cont.34266	# 1797
beq.34273:
	lw		x12, 20(x6)	# 479
	addi	x17, x12, 0	# 484
	flw		f8, 0(x17)	# 484
	fsub	f8, f5, f8	# 1799
	lw		x6, 16(x6)	# 439
	addi	x17, x6, 0	# 444
	flw		f9, 0(x17)	# 444
	fsqrt	f9, f9	# 1799
	fmul	f8, f8, f9	# 1799
	addi	x17, x12, 8	# 504
	flw		f9, 0(x17)	# 504
	fsub	f9, f7, f9	# 1800
	addi	x17, x6, 8	# 464
	flw		f10, 0(x17)	# 464
	fsqrt	f10, f10	# 1800
	fmul	f9, f9, f10	# 1800
	fmul	f10, f8, f8	# 127
	fmul	f11, f9, f9	# 127
	fadd	f10, f10, f11	# 1801
	fle		f8, f0, fle.34275	# 124
	fadd	f12, f0, f8	# 124
	jal		x0, fle_cont.34274	# 124
fle.34275:
	fsub	f12, f0, f8	# 124
fle_cont.34274:
	lui		x17, %hi(l.29489)	# 1803
	ori		x17, x17, %lo(l.29489)	# 1803
	flw		f13, 0(x17)	# 1803
	fle		f13, f12, fle.34277	# 125
	lui		x17, %hi(l.29491)	# 1804
	ori		x17, x17, %lo(l.29491)	# 1804
	flw		f1, 0(x17)	# 1804
	jal		x0, fle_cont.34276	# 125
fle.34277:
	fdiv	f8, f9, f8	# 1806
	fle		f8, f0, fle.34279	# 124
	jal		x0, fle_cont.34278	# 124
fle.34279:
	fsub	f8, f0, f8	# 124
fle_cont.34278:
	fadd	f1, f0, f8	# 1808
	sw		x1, -64(x2)	# 1808
	addi	x2, x2, -68	# 1808
	jal		x1, atan.2624.17908	# 1808
	addi	x2, x2, 68	# 1808
	lw		x1, -64(x2)	# 1808
	lui		x4, %hi(l.29494)	# 1808
	ori		x4, x4, %lo(l.29494)	# 1808
	flw		f2, 0(x4)	# 1808
	fmul	f1, f1, f2	# 1808
	lui		x4, %hi(l.29496)	# 1808
	ori		x4, x4, %lo(l.29496)	# 1808
	flw		f2, 0(x4)	# 1808
	fdiv	f1, f1, f2	# 1808
fle_cont.34276:
	sw		x6, -64(x2)	# 1810
	fsw		f1, -68(x2)	# 1810
	sw		x1, -72(x2)	# 1810
	addi	x2, x2, -76	# 1810
	jal		x1, min_caml_floor	# 1810
	addi	x2, x2, 76	# 1810
	lw		x1, -72(x2)	# 1810
	flw		f2, -68(x2)	# 1810
	fsub	f1, f2, f1	# 1810
	addi	x4, x12, 4	# 494
	flw		f2, 0(x4)	# 494
	fsub	f2, f6, f2	# 1812
	lw		x4, -64(x2)	# 454
	addi	x4, x4, 4	# 454
	flw		f3, 0(x4)	# 454
	fsqrt	f3, f3	# 1812
	fmul	f2, f2, f3	# 1812
	fle		f10, f0, fle.34281	# 124
	fadd	f3, f0, f10	# 124
	jal		x0, fle_cont.34280	# 124
fle.34281:
	fsub	f3, f0, f10	# 124
fle_cont.34280:
	fsw		f1, -72(x2)	# 125
	fle		f13, f3, fle.34283	# 125
	lui		x4, %hi(l.29491)	# 1815
	ori		x4, x4, %lo(l.29491)	# 1815
	flw		f1, 0(x4)	# 1815
	jal		x0, fle_cont.34282	# 125
fle.34283:
	fdiv	f2, f2, f10	# 1817
	fle		f2, f0, fle.34285	# 124
	jal		x0, fle_cont.34284	# 124
fle.34285:
	fsub	f2, f0, f2	# 124
fle_cont.34284:
	fadd	f1, f0, f2	# 1818
	sw		x1, -76(x2)	# 1818
	addi	x2, x2, -80	# 1818
	jal		x1, atan.2624.17908	# 1818
	addi	x2, x2, 80	# 1818
	lw		x1, -76(x2)	# 1818
	lui		x4, %hi(l.29494)	# 1818
	ori		x4, x4, %lo(l.29494)	# 1818
	flw		f2, 0(x4)	# 1818
	fmul	f1, f1, f2	# 1818
	lui		x4, %hi(l.29496)	# 1818
	ori		x4, x4, %lo(l.29496)	# 1818
	flw		f2, 0(x4)	# 1818
	fdiv	f1, f1, f2	# 1818
fle_cont.34282:
	fsw		f1, -76(x2)	# 1820
	sw		x1, -80(x2)	# 1820
	addi	x2, x2, -84	# 1820
	jal		x1, min_caml_floor	# 1820
	addi	x2, x2, 84	# 1820
	lw		x1, -80(x2)	# 1820
	flw		f2, -76(x2)	# 1820
	fsub	f1, f2, f1	# 1820
	lui		x4, %hi(l.29507)	# 1821
	ori		x4, x4, %lo(l.29507)	# 1821
	flw		f2, 0(x4)	# 1821
	lui		x4, %hi(l.27810)	# 1821
	ori		x4, x4, %lo(l.27810)	# 1821
	flw		f3, 0(x4)	# 1821
	flw		f4, -72(x2)	# 1821
	fsub	f4, f3, f4	# 1821
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1821
	fsub	f1, f3, f1	# 1821
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1821
	fle		f0, f1, fle_cont.34286	# 122
	fadd	f1, f0, f0	# 1822
fle_cont.34286:
	lui		x4, %hi(l.29512)	# 25
	ori		x4, x4, %lo(l.29512)	# 25
	flw		f2, 0(x4)	# 25
	fmul	f1, f2, f1	# 1823
	lui		x4, %hi(l.29514)	# 1823
	ori		x4, x4, %lo(l.29514)	# 1823
	flw		f2, 0(x4)	# 1823
	fdiv	f1, f1, f2	# 1823
	fsw		f1, 0(x13)	# 1823
	jal		x0, beq_cont.34266	# 1786
beq.34271:
	lw		x6, 20(x6)	# 479
	addi	x12, x6, 0	# 484
	flw		f8, 0(x12)	# 484
	fsub	f8, f5, f8	# 1789
	addi	x6, x6, 8	# 504
	flw		f9, 0(x6)	# 504
	fsub	f9, f7, f9	# 1790
	fmul	f8, f8, f8	# 127
	fmul	f9, f9, f9	# 127
	fadd	f8, f8, f9	# 1791
	fsqrt	f8, f8	# 1791
	fdiv	f8, f8, f28	# 1791
	fsw		f8, -80(x2)	# 1792
	fadd	f1, f0, f8	# 1792
	sw		x1, -84(x2)	# 1792
	addi	x2, x2, -88	# 1792
	jal		x1, min_caml_floor	# 1792
	addi	x2, x2, 88	# 1792
	lw		x1, -84(x2)	# 1792
	flw		f2, -80(x2)	# 1792
	fsub	f1, f2, f1	# 1792
	lui		x4, %hi(l.29496)	# 1792
	ori		x4, x4, %lo(l.29496)	# 1792
	flw		f2, 0(x4)	# 1792
	fmul	f1, f1, f2	# 1792
	sw		x1, -84(x2)	# 1793
	addi	x2, x2, -88	# 1793
	jal		x1, cos.2622.17906	# 1793
	addi	x2, x2, 88	# 1793
	lw		x1, -84(x2)	# 1793
	fmul	f1, f1, f1	# 127
	lui		x4, %hi(l.29512)	# 25
	ori		x4, x4, %lo(l.29512)	# 25
	flw		f2, 0(x4)	# 25
	fmul	f3, f1, f2	# 1794
	fsw		f3, 0(x15)	# 1794
	fsub	f1, f30, f1	# 1795
	fmul	f1, f1, f2	# 1795
	fsw		f1, 0(x13)	# 1795
	jal		x0, beq_cont.34266	# 1779
beq.34269:
	lui		x6, %hi(l.29532)	# 1782
	ori		x6, x6, %lo(l.29532)	# 1782
	flw		f8, 0(x6)	# 1782
	fmul	f8, f6, f8	# 1782
	fadd	f1, f0, f8	# 1782
	sw		x1, -84(x2)	# 1782
	addi	x2, x2, -88	# 1782
	jal		x1, sin.2620.17904	# 1782
	addi	x2, x2, 88	# 1782
	lw		x1, -84(x2)	# 1782
	fmul	f1, f1, f1	# 127
	lui		x4, %hi(l.29512)	# 25
	ori		x4, x4, %lo(l.29512)	# 25
	flw		f2, 0(x4)	# 25
	fmul	f3, f2, f1	# 1783
	fsw		f3, 0(x14)	# 1783
	fsub	f1, f30, f1	# 1784
	fmul	f1, f2, f1	# 1784
	fsw		f1, 0(x15)	# 1784
	jal		x0, beq_cont.34266	# 1761
beq.34267:
	lw		x6, 20(x6)	# 479
	addi	x12, x6, 0	# 484
	flw		f8, 0(x12)	# 484
	fsub	f8, f5, f8	# 1764
	fmul	f10, f8, f26	# 1766
	sw		x6, -84(x2)	# 1766
	fadd	f1, f0, f10	# 1766
	sw		x1, -88(x2)	# 1766
	addi	x2, x2, -92	# 1766
	jal		x1, min_caml_floor	# 1766
	addi	x2, x2, 92	# 1766
	lw		x1, -88(x2)	# 1766
	fmul	f1, f1, f27	# 1766
	fsub	f1, f8, f1	# 1767
	lw		x4, -84(x2)	# 504
	addi	x4, x4, 8	# 504
	flw		f10, 0(x4)	# 504
	fsub	f10, f7, f10	# 1769
	fmul	f9, f10, f26	# 1771
	fsw		f1, -88(x2)	# 1771
	fsw		f27, -92(x2)	# 1771
	fadd	f1, f0, f9	# 1771
	sw		x1, -96(x2)	# 1771
	addi	x2, x2, -100	# 1771
	jal		x1, min_caml_floor	# 1771
	addi	x2, x2, 100	# 1771
	lw		x1, -96(x2)	# 1771
	flw		f2, -92(x2)	# 1771
	fmul	f1, f1, f2	# 1771
	fsub	f1, f10, f1	# 1772
	flw		f2, -88(x2)	# 125
	fle		f28, f2, fle.34289	# 125
	fle		f28, f1, fle.34291	# 125
	lui		x4, %hi(l.29512)	# 25
	ori		x4, x4, %lo(l.29512)	# 25
	flw		f1, 0(x4)	# 25
	jal		x0, fle_cont.34288	# 125
fle.34291:
	fadd	f1, f0, f0	# 1776
	jal		x0, fle_cont.34288	# 125
fle.34289:
	fle		f28, f1, fle.34293	# 125
	fadd	f1, f0, f0	# 1777
	jal		x0, fle_cont.34288	# 125
fle.34293:
	lui		x4, %hi(l.29512)	# 25
	ori		x4, x4, %lo(l.29512)	# 25
	flw		f1, 0(x4)	# 25
fle_cont.34288:
	fsw		f1, 0(x15)	# 1774
beq_cont.34266:
	lw		x4, -60(x2)	# 1894
	lw		x5, -12(x2)	# 1894
	mul		x4, x4, x5	# 1894
	lui		x6, 130544	# 1894
	ori		x6, x6, 130544	# 1894
	lw		x6, 0(x6)	# 1894
	add		x4, x4, x6	# 1894
	lw		x6, -28(x2)	# 1894
	mul		x7, x30, x6	# 1894
	lw		x12, -24(x2)	# 1894
	add		x16, x12, x7	# 1894
	sw		x4, 0(x16)	# 1894
	lw		x4, -8(x2)	# 617
	lw		x16, 4(x4)	# 617
	add		x16, x16, x7	# 1896
	lw		x16, 0(x16)	# 1896
	addi	x17, x16, 0	# 307
	flw		f1, -56(x2)	# 307
	fsw		f1, 0(x17)	# 307
	addi	x17, x16, 4	# 308
	fsw		f6, 0(x17)	# 308
	addi	x16, x16, 8	# 309
	fsw		f7, 0(x16)	# 309
	lw		x16, 12(x4)	# 632
	lui		x17, %hi(l.27810)	# 1900
	ori		x17, x17, %lo(l.27810)	# 1900
	flw		f2, 0(x17)	# 1900
	flw		f3, -52(x2)	# 125
	fle		f2, f3, fle.34295	# 125
	add		x7, x16, x7	# 1901
	lw		x10, -32(x2)	# 1901
	sw		x10, 0(x7)	# 1901
	jal		x0, fle_cont.34294	# 125
fle.34295:
	add		x16, x16, x7	# 1903
	sw		x21, 0(x16)	# 1903
	lw		x10, 16(x4)	# 639
	add		x10, x10, x7	# 1905
	lw		x10, 0(x10)	# 1905
	flw		f2, 0(x14)	# 307
	addi	x16, x10, 0	# 307
	fsw		f2, 0(x16)	# 307
	flw		f2, 0(x15)	# 308
	addi	x17, x10, 4	# 308
	fsw		f2, 0(x17)	# 308
	flw		f2, 0(x13)	# 309
	addi	x10, x10, 8	# 309
	fsw		f2, 0(x10)	# 309
	lui		x18, %hi(l.29589)	# 1906
	ori		x18, x18, %lo(l.29589)	# 1906
	flw		f2, 0(x18)	# 1906
	flw		f4, -48(x2)	# 1906
	fmul	f2, f2, f4	# 1906
	flw		f5, 0(x16)	# 373
	fmul	f5, f5, f2	# 373
	fsw		f5, 0(x16)	# 373
	flw		f5, 0(x17)	# 374
	fmul	f5, f5, f2	# 374
	fsw		f5, 0(x17)	# 374
	flw		f5, 0(x10)	# 375
	fmul	f2, f5, f2	# 375
	fsw		f2, 0(x10)	# 375
	lw		x10, 28(x4)	# 676
	add		x7, x10, x7	# 1908
	lw		x7, 0(x7)	# 1908
	lui		x10, 130568	# 307
	ori		x10, x10, 130568	# 307
	flw		f2, 0(x10)	# 307
	addi	x10, x7, 0	# 307
	fsw		f2, 0(x10)	# 307
	lui		x10, 130572	# 308
	ori		x10, x10, 130572	# 308
	flw		f2, 0(x10)	# 308
	addi	x10, x7, 4	# 308
	fsw		f2, 0(x10)	# 308
	lui		x10, 130576	# 309
	ori		x10, x10, 130576	# 309
	flw		f2, 0(x10)	# 309
	addi	x7, x7, 8	# 309
	fsw		f2, 0(x7)	# 309
fle_cont.34294:
	lui		x7, %hi(l.29617)	# 1911
	ori		x7, x7, %lo(l.29617)	# 1911
	flw		f2, 0(x7)	# 1911
	lw		x7, -20(x2)	# 340
	addi	x10, x7, 0	# 340
	flw		f4, 0(x10)	# 340
	lui		x16, 130568	# 340
	ori		x16, x16, 130568	# 340
	flw		f5, 0(x16)	# 340
	fmul	f8, f4, f5	# 340
	addi	x16, x7, 4	# 340
	flw		f9, 0(x16)	# 340
	lui		x17, 130572	# 340
	ori		x17, x17, 130572	# 340
	flw		f10, 0(x17)	# 340
	fmul	f11, f9, f10	# 340
	fadd	f8, f8, f11	# 340
	addi	x17, x7, 8	# 340
	flw		f11, 0(x17)	# 340
	lui		x18, 130576	# 340
	ori		x18, x18, 130576	# 340
	flw		f12, 0(x18)	# 340
	fmul	f13, f11, f12	# 340
	fadd	f8, f8, f13	# 340
	fmul	f2, f2, f8	# 1911
	fmul	f8, f2, f5	# 350
	fadd	f4, f4, f8	# 350
	fsw		f4, 0(x10)	# 350
	fmul	f4, f2, f10	# 351
	fadd	f4, f9, f4	# 351
	fsw		f4, 0(x16)	# 351
	fmul	f2, f2, f12	# 352
	fadd	f2, f11, f2	# 352
	fsw		f2, 0(x17)	# 352
	addi	x8, x8, 4	# 524
	flw		f2, 0(x8)	# 524
	flw		f4, -16(x2)	# 1915
	fmul	f2, f4, f2	# 1915
	lw		x8, -32(x2)	# 1918
	lw		x18, -4(x2)	# 1918
	sw		x22, -96(x2)	# 1918
	sw		x9, -100(x2)	# 1918
	fsw		f7, -104(x2)	# 1918
	fsw		f6, -108(x2)	# 1918
	fsw		f2, -112(x2)	# 1918
	sw		x13, -116(x2)	# 1918
	sw		x14, -120(x2)	# 1918
	sw		x10, -124(x2)	# 1918
	fsw		f12, -128(x2)	# 1918
	fsw		f10, -132(x2)	# 1918
	fsw		f5, -136(x2)	# 1918
	addi	x5, x18, 0	# 1918
	addi	x4, x8, 0	# 1918
	sw		x1, -140(x2)	# 1918
	addi	x2, x2, -144	# 1918
	jal		x1, shadow_check_one_or_matrix.2910.17938	# 1918
	addi	x2, x2, 144	# 1918
	lw		x1, -140(x2)	# 1918
	lw		x5, -32(x2)	# 1918
	beq		x4, x5, beq.34297	# 1918
	jal		x0, beq_cont.34296	# 1918
beq.34297:
	lui		x4, 130312	# 340
	ori		x4, x4, 130312	# 340
	flw		f1, 0(x4)	# 340
	flw		f2, -136(x2)	# 340
	fmul	f2, f2, f1	# 340
	lui		x4, 130316	# 340
	ori		x4, x4, 130316	# 340
	flw		f3, 0(x4)	# 340
	flw		f4, -132(x2)	# 340
	fmul	f4, f4, f3	# 340
	fadd	f2, f2, f4	# 340
	lui		x4, 130320	# 340
	ori		x4, x4, 130320	# 340
	flw		f4, 0(x4)	# 340
	flw		f5, -128(x2)	# 340
	fmul	f5, f5, f4	# 340
	fadd	f2, f2, f5	# 340
	fsub	f2, f0, f2	# 123
	flw		f5, -48(x2)	# 1919
	fmul	f2, f2, f5	# 1919
	lw		x4, -124(x2)	# 340
	flw		f6, 0(x4)	# 340
	fmul	f1, f6, f1	# 340
	flw		f6, 0(x16)	# 340
	fmul	f3, f6, f3	# 340
	fadd	f1, f1, f3	# 340
	flw		f3, 0(x17)	# 340
	fmul	f3, f3, f4	# 340
	fadd	f1, f1, f3	# 340
	fsub	f1, f0, f1	# 123
	fle		f2, f0, fle_cont.34298	# 121
	lui		x4, 130604	# 350
	ori		x4, x4, 130604	# 350
	flw		f4, 0(x4)	# 350
	lw		x5, -120(x2)	# 350
	flw		f6, 0(x5)	# 350
	fmul	f6, f2, f6	# 350
	fadd	f4, f4, f6	# 350
	fsw		f4, 0(x4)	# 350
	lui		x4, 130608	# 351
	ori		x4, x4, 130608	# 351
	flw		f4, 0(x4)	# 351
	flw		f6, 0(x15)	# 351
	fmul	f6, f2, f6	# 351
	fadd	f4, f4, f6	# 351
	fsw		f4, 0(x4)	# 351
	lui		x4, 130612	# 352
	ori		x4, x4, 130612	# 352
	flw		f4, 0(x4)	# 352
	lw		x5, -116(x2)	# 352
	flw		f6, 0(x5)	# 352
	fmul	f2, f2, f6	# 352
	fadd	f2, f4, f2	# 352
	fsw		f2, 0(x4)	# 352
fle_cont.34298:
	fle		f1, f0, beq_cont.34296	# 121
	fmul	f1, f1, f1	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -112(x2)	# 1842
	fmul	f1, f1, f2	# 1842
	lui		x4, 130604	# 1843
	ori		x4, x4, 130604	# 1843
	flw		f3, 0(x4)	# 1843
	fadd	f3, f3, f1	# 1843
	fsw		f3, 0(x4)	# 1843
	lui		x4, 130608	# 1844
	ori		x4, x4, 130608	# 1844
	flw		f3, 0(x4)	# 1844
	fadd	f3, f3, f1	# 1844
	fsw		f3, 0(x4)	# 1844
	lui		x4, 130612	# 1845
	ori		x4, x4, 130612	# 1845
	flw		f3, 0(x4)	# 1845
	fadd	f1, f3, f1	# 1845
	fsw		f1, 0(x4)	# 1845
beq_cont.34296:
	lui		x4, 130648	# 307
	ori		x4, x4, 130648	# 307
	flw		f1, -56(x2)	# 307
	fsw		f1, 0(x4)	# 307
	lui		x4, 130652	# 308
	ori		x4, x4, 130652	# 308
	flw		f1, -108(x2)	# 308
	fsw		f1, 0(x4)	# 308
	lui		x4, 130656	# 309
	ori		x4, x4, 130656	# 309
	flw		f1, -104(x2)	# 309
	fsw		f1, 0(x4)	# 309
	lui		x4, 130000	# 1363
	ori		x4, x4, 130000	# 1363
	lw		x4, 0(x4)	# 1363
	addi	x5, x4, -1	# 1363
	lw		x4, -100(x2)	# 1363
	sw		x1, -140(x2)	# 1363
	addi	x2, x2, -144	# 1363
	jal		x1, setup_startp_constants.2873.17923	# 1363
	addi	x2, x2, 144	# 1363
	lw		x1, -140(x2)	# 1363
	lui		x4, 131736	# 1926
	ori		x4, x4, 131736	# 1926
	lw		x4, 0(x4)	# 1926
	addi	x4, x4, -1	# 1926
	lw		x5, -20(x2)	# 1926
	flw		f1, -48(x2)	# 1926
	flw		f2, -112(x2)	# 1926
	sw		x1, -140(x2)	# 1926
	addi	x2, x2, -144	# 1926
	jal		x1, trace_reflections.2957.17965	# 1926
	addi	x2, x2, 144	# 1926
	lw		x1, -140(x2)	# 1926
	lui		x4, %hi(l.29693)	# 1929
	ori		x4, x4, %lo(l.29693)	# 1929
	flw		f1, 0(x4)	# 1929
	flw		f2, -16(x2)	# 125
	fle		f2, f1, fle.34302	# 125
	lw		x4, -28(x2)	# 1931
	lw		x5, -12(x2)	# 1931
	ble		x5, x4, ble_cont.34303	# 1931
	addi	x5, x4, 1	# 1932
	mul		x5, x30, x5	# 1932
	lw		x7, -24(x2)	# 1932
	add		x5, x7, x5	# 1932
	sw		x20, 0(x5)	# 1932
ble_cont.34303:
	lw		x5, -96(x2)	# 1935
	lw		x6, -44(x2)	# 1935
	beq		x6, x5, beq.34305	# 1935
	jalr	x0, x1, 0	# 1938
beq.34305:
	flw		f3, -52(x2)	# 1936
	fsub	f1, f30, f3	# 1936
	fmul	f1, f2, f1	# 1936
	addi	x4, x4, 1	# 1937
	flw		f2, 0(x2)	# 1937
	flw		f3, -40(x2)	# 1937
	fadd	f2, f2, f3	# 1937
	lw		x5, -20(x2)	# 1937
	lw		x6, -8(x2)	# 1937
	jal		x0, trace_ray.2962.17970	# 1937
fle.34302:
	jalr	x0, x1, 0	# 1940
beq.34251:
	lw		x6, -28(x2)	# 1945
	mul		x7, x30, x6	# 1945
	lw		x8, -24(x2)	# 1945
	add		x7, x8, x7	# 1945
	sw		x20, 0(x7)	# 1945
	beq		x6, x5, beq.34308	# 1947
	lw		x4, -20(x2)	# 340
	addi	x5, x4, 0	# 340
	flw		f1, 0(x5)	# 340
	lui		x5, 130312	# 340
	ori		x5, x5, 130312	# 340
	flw		f2, 0(x5)	# 340
	fmul	f1, f1, f2	# 340
	addi	x5, x4, 4	# 340
	flw		f2, 0(x5)	# 340
	lui		x5, 130316	# 340
	ori		x5, x5, 130316	# 340
	flw		f3, 0(x5)	# 340
	fmul	f2, f2, f3	# 340
	fadd	f1, f1, f2	# 340
	addi	x4, x4, 8	# 340
	flw		f2, 0(x4)	# 340
	lui		x4, 130320	# 340
	ori		x4, x4, 130320	# 340
	flw		f3, 0(x4)	# 340
	fmul	f2, f2, f3	# 340
	fadd	f1, f1, f2	# 340
	fsub	f1, f0, f1	# 123
	fle		f1, f0, fle.34309	# 121
	fmul	f2, f1, f1	# 127
	fmul	f1, f2, f1	# 1953
	flw		f2, -16(x2)	# 1953
	fmul	f1, f1, f2	# 1953
	lui		x4, 130324	# 1953
	ori		x4, x4, 130324	# 1953
	flw		f2, 0(x4)	# 1953
	fmul	f1, f1, f2	# 1953
	lui		x4, 130604	# 1954
	ori		x4, x4, 130604	# 1954
	flw		f2, 0(x4)	# 1954
	fadd	f2, f2, f1	# 1954
	fsw		f2, 0(x4)	# 1954
	lui		x4, 130608	# 1955
	ori		x4, x4, 130608	# 1955
	flw		f2, 0(x4)	# 1955
	fadd	f2, f2, f1	# 1955
	fsw		f2, 0(x4)	# 1955
	lui		x4, 130612	# 1956
	ori		x4, x4, 130612	# 1956
	flw		f2, 0(x4)	# 1956
	fadd	f1, f2, f1	# 1956
	fsw		f1, 0(x4)	# 1956
	jalr	x0, x1, 0	# 1956
fle.34309:
	jalr	x0, x1, 0	# 1958
beq.34308:
	jalr	x0, x1, 0	# 1959
iter_trace_diffuse_rays.2971.17976:
	add		x8, x0, x0	# 6
	ble		x0, x7, ble.34313	# 1992
	jalr	x0, x1, 0	# 2003
ble.34313:
	mul		x9, x30, x7	# 1993
	add		x9, x4, x9	# 1993
	lw		x9, 0(x9)	# 1993
	lw		x10, 0(x9)	# 687
	addi	x11, x10, 0	# 340
	flw		f1, 0(x11)	# 340
	addi	x11, x5, 0	# 340
	flw		f2, 0(x11)	# 340
	fmul	f1, f1, f2	# 340
	addi	x13, x10, 4	# 340
	flw		f2, 0(x13)	# 340
	addi	x13, x5, 4	# 340
	flw		f3, 0(x13)	# 340
	fmul	f2, f2, f3	# 340
	fadd	f1, f1, f2	# 340
	addi	x14, x10, 8	# 340
	flw		f2, 0(x14)	# 340
	addi	x14, x5, 8	# 340
	flw		f3, 0(x14)	# 340
	fmul	f2, f2, f3	# 340
	fadd	f1, f1, f2	# 340
	sw		x6, 0(x2)	# 122
	sw		x5, -4(x2)	# 122
	sw		x4, -8(x2)	# 122
	sw		x7, -12(x2)	# 122
	fle		f0, f1, fle.34316	# 122
	addi	x9, x7, 1	# 1998
	mul		x9, x30, x9	# 1998
	add		x9, x4, x9	# 1998
	lw		x9, 0(x9)	# 1998
	fdiv	f1, f1, f24	# 1998
	lui		x10, 130548	# 1682
	ori		x10, x10, 130548	# 1682
	fsw		f21, 0(x10)	# 1682
	lui		x14, 130536	# 1683
	ori		x14, x14, 130536	# 1683
	lw		x14, 0(x14)	# 1683
	fsw		f1, -16(x2)	# 1683
	sw		x14, -20(x2)	# 1683
	sw		x30, -24(x2)	# 1683
	sw		x22, -28(x2)	# 1683
	fsw		f0, -32(x2)	# 1683
	sw		x21, -36(x2)	# 1683
	sw		x9, -40(x2)	# 1683
	sw		x0, -44(x2)	# 1683
	sw		x10, -48(x2)	# 1683
	addi	x6, x9, 0	# 1683
	addi	x5, x14, 0	# 1683
	addi	x4, x0, 0	# 1683
	sw		x1, -52(x2)	# 1683
	addi	x2, x2, -56	# 1683
	jal		x1, trace_or_matrix_fast.2935.17961	# 1683
	addi	x2, x2, 56	# 1683
	lw		x1, -52(x2)	# 1683
	lw		x4, -48(x2)	# 1684
	flw		f1, 0(x4)	# 1684
	fle		f1, f20, fle.34318	# 125
	fle		f22, f1, fle.34320	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.34317	# 125
fle.34320:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.34317	# 125
fle.34318:
	addi	x4, x0, 0	# 1688
fle_cont.34317:
	lw		x5, -44(x2)	# 1975
	beq		x4, x5, fle_cont.34315	# 1975
	lui		x4, 130564	# 1976
	ori		x4, x4, 130564	# 1976
	lw		x4, 0(x4)	# 1976
	lui		x6, 130048	# 12
	ori		x6, x6, 130048	# 12
	mul		x4, x30, x4	# 1976
	add		x4, x6, x4	# 1976
	lw		x4, 0(x4)	# 1976
	lw		x6, -40(x2)	# 687
	lw		x6, 0(x6)	# 687
	lw		x7, 4(x4)	# 401
	lw		x8, -36(x2)	# 1741
	beq		x7, x8, beq.34324	# 1741
	lw		x6, -28(x2)	# 1743
	beq		x7, x6, beq.34326	# 1743
	flw		f1, 0(x25)	# 1718
	lw		x7, 20(x4)	# 479
	addi	x9, x7, 0	# 484
	flw		f2, 0(x9)	# 484
	fsub	f1, f1, f2	# 1718
	flw		f2, 0(x27)	# 1719
	addi	x9, x7, 4	# 494
	flw		f3, 0(x9)	# 494
	fsub	f2, f2, f3	# 1719
	flw		f3, 0(x26)	# 1720
	addi	x7, x7, 8	# 504
	flw		f4, 0(x7)	# 504
	fsub	f3, f3, f4	# 1720
	lw		x7, 16(x4)	# 439
	addi	x9, x7, 0	# 444
	flw		f4, 0(x9)	# 444
	fmul	f4, f1, f4	# 1722
	addi	x9, x7, 4	# 454
	flw		f5, 0(x9)	# 454
	fmul	f5, f2, f5	# 1723
	addi	x7, x7, 8	# 464
	flw		f6, 0(x7)	# 464
	fmul	f6, f3, f6	# 1724
	lw		x7, 12(x4)	# 430
	beq		x7, x5, beq.34328	# 1726
	lw		x7, 36(x4)	# 579
	addi	x9, x7, 8	# 584
	flw		f7, 0(x9)	# 584
	fmul	f8, f2, f7	# 1731
	addi	x9, x7, 4	# 574
	flw		f9, 0(x9)	# 574
	fmul	f10, f3, f9	# 1731
	fadd	f8, f8, f10	# 1731
	lui		x9, %hi(l.27810)	# 126
	ori		x9, x9, %lo(l.27810)	# 126
	flw		f10, 0(x9)	# 126
	fmul	f8, f8, f10	# 126
	fadd	f4, f4, f8	# 1731
	lui		x9, 130568	# 1731
	ori		x9, x9, 130568	# 1731
	fsw		f4, 0(x9)	# 1731
	fmul	f4, f1, f7	# 1732
	addi	x7, x7, 0	# 564
	flw		f7, 0(x7)	# 564
	fmul	f3, f3, f7	# 1732
	fadd	f3, f4, f3	# 1732
	fmul	f3, f3, f10	# 126
	fadd	f3, f5, f3	# 1732
	lui		x7, 130572	# 1732
	ori		x7, x7, 130572	# 1732
	fsw		f3, 0(x7)	# 1732
	fmul	f1, f1, f9	# 1733
	fmul	f2, f2, f7	# 1733
	fadd	f1, f1, f2	# 1733
	fmul	f1, f1, f10	# 126
	fadd	f1, f6, f1	# 1733
	lui		x7, 130576	# 1733
	ori		x7, x7, 130576	# 1733
	fsw		f1, 0(x7)	# 1733
	jal		x0, beq_cont.34327	# 1726
beq.34328:
	lui		x7, 130568	# 1727
	ori		x7, x7, 130568	# 1727
	fsw		f4, 0(x7)	# 1727
	lui		x7, 130572	# 1728
	ori		x7, x7, 130572	# 1728
	fsw		f5, 0(x7)	# 1728
	lui		x7, 130576	# 1729
	ori		x7, x7, 130576	# 1729
	fsw		f6, 0(x7)	# 1729
beq_cont.34327:
	lw		x7, 24(x4)	# 421
	lui		x9, 130568	# 331
	ori		x9, x9, 130568	# 331
	flw		f1, 0(x9)	# 331
	fmul	f2, f1, f1	# 127
	lui		x10, 130572	# 331
	ori		x10, x10, 130572	# 331
	flw		f3, 0(x10)	# 331
	fmul	f4, f3, f3	# 127
	fadd	f2, f2, f4	# 331
	lui		x11, 130576	# 331
	ori		x11, x11, 130576	# 331
	flw		f4, 0(x11)	# 331
	fmul	f5, f4, f4	# 127
	fadd	f2, f2, f5	# 331
	fsqrt	f2, f2	# 331
	flw		f5, -32(x2)	# 120
	feq		f2, f5, feq.34330	# 120
	beq		x7, x5, beq.34332	# 332
	fdiv	f2, f25, f2	# 332
	jal		x0, feq_cont.34329	# 332
beq.34332:
	fdiv	f2, f30, f2	# 332
	jal		x0, feq_cont.34329	# 120
feq.34330:
	fadd	f2, f0, f30	# 332
feq_cont.34329:
	fmul	f1, f1, f2	# 333
	fsw		f1, 0(x9)	# 333
	fmul	f1, f3, f2	# 334
	fsw		f1, 0(x10)	# 334
	fmul	f1, f4, f2	# 335
	fsw		f1, 0(x11)	# 335
	jal		x0, beq_cont.34323	# 1743
beq.34326:
	lw		x7, 16(x4)	# 439
	addi	x9, x7, 0	# 444
	flw		f1, 0(x9)	# 444
	fsub	f1, f0, f1	# 123
	lui		x9, 130568	# 1711
	ori		x9, x9, 130568	# 1711
	fsw		f1, 0(x9)	# 1711
	addi	x9, x7, 4	# 454
	flw		f1, 0(x9)	# 454
	fsub	f1, f0, f1	# 123
	lui		x9, 130572	# 1712
	ori		x9, x9, 130572	# 1712
	fsw		f1, 0(x9)	# 1712
	addi	x7, x7, 8	# 464
	flw		f1, 0(x7)	# 464
	fsub	f1, f0, f1	# 123
	lui		x7, 130576	# 1713
	ori		x7, x7, 130576	# 1713
	fsw		f1, 0(x7)	# 1713
	jal		x0, beq_cont.34323	# 1741
beq.34324:
	lui		x7, 130544	# 1702
	ori		x7, x7, 130544	# 1702
	lw		x7, 0(x7)	# 1702
	lui		x9, 130568	# 51
	ori		x9, x9, 130568	# 51
	flw		f1, -32(x2)	# 295
	fsw		f1, 0(x9)	# 295
	lui		x10, 130572	# 296
	ori		x10, x10, 130572	# 296
	fsw		f1, 0(x10)	# 296
	lui		x10, 130576	# 297
	ori		x10, x10, 130576	# 297
	fsw		f1, 0(x10)	# 297
	addi	x7, x7, -1	# 1705
	mul		x7, x30, x7	# 1705
	add		x6, x6, x7	# 1705
	flw		f2, 0(x6)	# 1705
	feq		f2, f1, feq.34334	# 120
	fle		f2, f1, fle.34336	# 121
	fadd	f2, f0, f30	# 261
	jal		x0, feq_cont.34333	# 121
fle.34336:
	fadd	f2, f0, f25	# 262
	jal		x0, feq_cont.34333	# 120
feq.34334:
	fadd	f2, f0, f1	# 260
feq_cont.34333:
	fsub	f2, f0, f2	# 123
	add		x6, x9, x7	# 1705
	fsw		f2, 0(x6)	# 1705
beq_cont.34323:
	lw		x6, 0(x4)	# 391
	lw		x7, 32(x4)	# 529
	addi	x9, x7, 0	# 534
	flw		f1, 0(x9)	# 534
	lui		x9, 130580	# 1758
	ori		x9, x9, 130580	# 1758
	fsw		f1, 0(x9)	# 1758
	addi	x10, x7, 4	# 544
	flw		f1, 0(x10)	# 544
	lui		x10, 130584	# 1759
	ori		x10, x10, 130584	# 1759
	fsw		f1, 0(x10)	# 1759
	addi	x7, x7, 8	# 554
	flw		f1, 0(x7)	# 554
	lui		x7, 130588	# 1760
	ori		x7, x7, 130588	# 1760
	fsw		f1, 0(x7)	# 1760
	sw		x7, -52(x2)	# 1761
	sw		x4, -56(x2)	# 1761
	beq		x6, x8, beq.34338	# 1761
	lw		x8, -28(x2)	# 1779
	beq		x6, x8, beq.34340	# 1779
	beq		x6, x24, beq.34342	# 1786
	lw		x8, -24(x2)	# 1797
	beq		x6, x8, beq.34344	# 1797
	jal		x0, beq_cont.34337	# 1797
beq.34344:
	flw		f1, 0(x25)	# 1799
	lw		x6, 20(x4)	# 479
	addi	x8, x6, 0	# 484
	flw		f2, 0(x8)	# 484
	fsub	f1, f1, f2	# 1799
	lw		x8, 16(x4)	# 439
	addi	x11, x8, 0	# 444
	flw		f2, 0(x11)	# 444
	fsqrt	f2, f2	# 1799
	fmul	f1, f1, f2	# 1799
	flw		f2, 0(x26)	# 1800
	addi	x11, x6, 8	# 504
	flw		f3, 0(x11)	# 504
	fsub	f2, f2, f3	# 1800
	addi	x11, x8, 8	# 464
	flw		f3, 0(x11)	# 464
	fsqrt	f3, f3	# 1800
	fmul	f2, f2, f3	# 1800
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1801
	flw		f4, -32(x2)	# 124
	fle		f1, f4, fle.34346	# 124
	fadd	f5, f0, f1	# 124
	jal		x0, fle_cont.34345	# 124
fle.34346:
	fsub	f5, f0, f1	# 124
fle_cont.34345:
	lui		x11, %hi(l.29489)	# 1803
	ori		x11, x11, %lo(l.29489)	# 1803
	flw		f6, 0(x11)	# 1803
	fsw		f3, -60(x2)	# 125
	fle		f6, f5, fle.34348	# 125
	lui		x11, %hi(l.29491)	# 1804
	ori		x11, x11, %lo(l.29491)	# 1804
	flw		f1, 0(x11)	# 1804
	jal		x0, fle_cont.34347	# 125
fle.34348:
	fdiv	f1, f2, f1	# 1806
	fle		f1, f4, fle.34350	# 124
	jal		x0, fle_cont.34349	# 124
fle.34350:
	fsub	f1, f0, f1	# 124
fle_cont.34349:
	sw		x1, -64(x2)	# 1808
	addi	x2, x2, -68	# 1808
	jal		x1, atan.2624.17908	# 1808
	addi	x2, x2, 68	# 1808
	lw		x1, -64(x2)	# 1808
	lui		x4, %hi(l.29494)	# 1808
	ori		x4, x4, %lo(l.29494)	# 1808
	flw		f2, 0(x4)	# 1808
	fmul	f1, f1, f2	# 1808
	lui		x4, %hi(l.29496)	# 1808
	ori		x4, x4, %lo(l.29496)	# 1808
	flw		f2, 0(x4)	# 1808
	fdiv	f1, f1, f2	# 1808
fle_cont.34347:
	sw		x6, -64(x2)	# 1810
	fsw		f1, -68(x2)	# 1810
	sw		x1, -72(x2)	# 1810
	addi	x2, x2, -76	# 1810
	jal		x1, min_caml_floor	# 1810
	addi	x2, x2, 76	# 1810
	lw		x1, -72(x2)	# 1810
	flw		f2, -68(x2)	# 1810
	fsub	f1, f2, f1	# 1810
	flw		f2, 0(x27)	# 1812
	lw		x4, -64(x2)	# 494
	addi	x4, x4, 4	# 494
	flw		f3, 0(x4)	# 494
	fsub	f2, f2, f3	# 1812
	addi	x4, x8, 4	# 454
	flw		f3, 0(x4)	# 454
	fsqrt	f3, f3	# 1812
	fmul	f2, f2, f3	# 1812
	flw		f3, -32(x2)	# 124
	flw		f4, -60(x2)	# 124
	fle		f4, f3, fle.34352	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.34351	# 124
fle.34352:
	fsub	f5, f0, f4	# 124
fle_cont.34351:
	fsw		f1, -72(x2)	# 125
	fle		f6, f5, fle.34354	# 125
	lui		x4, %hi(l.29491)	# 1815
	ori		x4, x4, %lo(l.29491)	# 1815
	flw		f1, 0(x4)	# 1815
	jal		x0, fle_cont.34353	# 125
fle.34354:
	fdiv	f2, f2, f4	# 1817
	fle		f2, f3, fle.34356	# 124
	jal		x0, fle_cont.34355	# 124
fle.34356:
	fsub	f2, f0, f2	# 124
fle_cont.34355:
	fadd	f1, f0, f2	# 1818
	sw		x1, -76(x2)	# 1818
	addi	x2, x2, -80	# 1818
	jal		x1, atan.2624.17908	# 1818
	addi	x2, x2, 80	# 1818
	lw		x1, -76(x2)	# 1818
	lui		x4, %hi(l.29494)	# 1818
	ori		x4, x4, %lo(l.29494)	# 1818
	flw		f2, 0(x4)	# 1818
	fmul	f1, f1, f2	# 1818
	lui		x4, %hi(l.29496)	# 1818
	ori		x4, x4, %lo(l.29496)	# 1818
	flw		f2, 0(x4)	# 1818
	fdiv	f1, f1, f2	# 1818
fle_cont.34353:
	fsw		f1, -76(x2)	# 1820
	sw		x1, -80(x2)	# 1820
	addi	x2, x2, -84	# 1820
	jal		x1, min_caml_floor	# 1820
	addi	x2, x2, 84	# 1820
	lw		x1, -80(x2)	# 1820
	flw		f2, -76(x2)	# 1820
	fsub	f1, f2, f1	# 1820
	lui		x4, %hi(l.29507)	# 1821
	ori		x4, x4, %lo(l.29507)	# 1821
	flw		f2, 0(x4)	# 1821
	lui		x4, %hi(l.27810)	# 1821
	ori		x4, x4, %lo(l.27810)	# 1821
	flw		f3, 0(x4)	# 1821
	flw		f4, -72(x2)	# 1821
	fsub	f4, f3, f4	# 1821
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1821
	fsub	f1, f3, f1	# 1821
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1821
	flw		f2, -32(x2)	# 122
	fle		f2, f1, fle_cont.34357	# 122
	fadd	f1, f0, f2	# 1822
fle_cont.34357:
	lui		x4, %hi(l.29512)	# 25
	ori		x4, x4, %lo(l.29512)	# 25
	flw		f3, 0(x4)	# 25
	fmul	f1, f3, f1	# 1823
	lui		x4, %hi(l.29514)	# 1823
	ori		x4, x4, %lo(l.29514)	# 1823
	flw		f3, 0(x4)	# 1823
	fdiv	f1, f1, f3	# 1823
	lw		x4, -52(x2)	# 1823
	fsw		f1, 0(x4)	# 1823
	jal		x0, beq_cont.34337	# 1786
beq.34342:
	flw		f1, 0(x25)	# 1789
	lw		x6, 20(x4)	# 479
	addi	x8, x6, 0	# 484
	flw		f2, 0(x8)	# 484
	fsub	f1, f1, f2	# 1789
	flw		f2, 0(x26)	# 1790
	addi	x6, x6, 8	# 504
	flw		f3, 0(x6)	# 504
	fsub	f2, f2, f3	# 1790
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1791
	fsqrt	f1, f1	# 1791
	fdiv	f1, f1, f28	# 1791
	fsw		f1, -80(x2)	# 1792
	sw		x1, -84(x2)	# 1792
	addi	x2, x2, -88	# 1792
	jal		x1, min_caml_floor	# 1792
	addi	x2, x2, 88	# 1792
	lw		x1, -84(x2)	# 1792
	flw		f2, -80(x2)	# 1792
	fsub	f1, f2, f1	# 1792
	lui		x4, %hi(l.29496)	# 1792
	ori		x4, x4, %lo(l.29496)	# 1792
	flw		f2, 0(x4)	# 1792
	fmul	f1, f1, f2	# 1792
	sw		x1, -84(x2)	# 1793
	addi	x2, x2, -88	# 1793
	jal		x1, cos.2622.17906	# 1793
	addi	x2, x2, 88	# 1793
	lw		x1, -84(x2)	# 1793
	fmul	f1, f1, f1	# 127
	lui		x4, %hi(l.29512)	# 25
	ori		x4, x4, %lo(l.29512)	# 25
	flw		f2, 0(x4)	# 25
	fmul	f3, f1, f2	# 1794
	fsw		f3, 0(x10)	# 1794
	fsub	f1, f30, f1	# 1795
	fmul	f1, f1, f2	# 1795
	lw		x4, -52(x2)	# 1795
	fsw		f1, 0(x4)	# 1795
	jal		x0, beq_cont.34337	# 1779
beq.34340:
	flw		f1, 0(x27)	# 1782
	lui		x6, %hi(l.29532)	# 1782
	ori		x6, x6, %lo(l.29532)	# 1782
	flw		f2, 0(x6)	# 1782
	fmul	f1, f1, f2	# 1782
	sw		x1, -84(x2)	# 1782
	addi	x2, x2, -88	# 1782
	jal		x1, sin.2620.17904	# 1782
	addi	x2, x2, 88	# 1782
	lw		x1, -84(x2)	# 1782
	fmul	f1, f1, f1	# 127
	lui		x4, %hi(l.29512)	# 25
	ori		x4, x4, %lo(l.29512)	# 25
	flw		f2, 0(x4)	# 25
	fmul	f3, f2, f1	# 1783
	fsw		f3, 0(x9)	# 1783
	fsub	f1, f30, f1	# 1784
	fmul	f1, f2, f1	# 1784
	fsw		f1, 0(x10)	# 1784
	jal		x0, beq_cont.34337	# 1761
beq.34338:
	flw		f1, 0(x25)	# 1764
	lw		x6, 20(x4)	# 479
	addi	x8, x6, 0	# 484
	flw		f2, 0(x8)	# 484
	fsub	f1, f1, f2	# 1764
	fmul	f3, f1, f26	# 1766
	fsw		f26, -84(x2)	# 1766
	sw		x6, -88(x2)	# 1766
	fsw		f1, -92(x2)	# 1766
	fadd	f1, f0, f3	# 1766
	sw		x1, -96(x2)	# 1766
	addi	x2, x2, -100	# 1766
	jal		x1, min_caml_floor	# 1766
	addi	x2, x2, 100	# 1766
	lw		x1, -96(x2)	# 1766
	fmul	f1, f1, f27	# 1766
	flw		f3, -92(x2)	# 1767
	fsub	f1, f3, f1	# 1767
	flw		f4, 0(x26)	# 1769
	lw		x4, -88(x2)	# 504
	addi	x4, x4, 8	# 504
	flw		f5, 0(x4)	# 504
	fsub	f4, f4, f5	# 1769
	flw		f5, -84(x2)	# 1771
	fmul	f5, f4, f5	# 1771
	fsw		f1, -96(x2)	# 1771
	fsw		f27, -100(x2)	# 1771
	fadd	f1, f0, f5	# 1771
	sw		x1, -104(x2)	# 1771
	addi	x2, x2, -108	# 1771
	jal		x1, min_caml_floor	# 1771
	addi	x2, x2, 108	# 1771
	lw		x1, -104(x2)	# 1771
	flw		f2, -100(x2)	# 1771
	fmul	f1, f1, f2	# 1771
	fsub	f1, f4, f1	# 1772
	flw		f2, -96(x2)	# 125
	fle		f28, f2, fle.34360	# 125
	fle		f28, f1, fle.34362	# 125
	lui		x4, %hi(l.29512)	# 25
	ori		x4, x4, %lo(l.29512)	# 25
	flw		f1, 0(x4)	# 25
	jal		x0, fle_cont.34359	# 125
fle.34362:
	flw		f1, -32(x2)	# 1776
	jal		x0, fle_cont.34359	# 125
fle.34360:
	fle		f28, f1, fle.34364	# 125
	flw		f1, -32(x2)	# 1777
	jal		x0, fle_cont.34359	# 125
fle.34364:
	lui		x4, %hi(l.29512)	# 25
	ori		x4, x4, %lo(l.29512)	# 25
	flw		f1, 0(x4)	# 25
fle_cont.34359:
	fsw		f1, 0(x10)	# 1774
beq_cont.34337:
	lw		x4, -44(x2)	# 1981
	lw		x5, -20(x2)	# 1981
	sw		x10, -104(x2)	# 1981
	sw		x9, -108(x2)	# 1981
	sw		x1, -112(x2)	# 1981
	addi	x2, x2, -116	# 1981
	jal		x1, shadow_check_one_or_matrix.2910.17938	# 1981
	addi	x2, x2, 116	# 1981
	lw		x1, -112(x2)	# 1981
	lw		x5, -44(x2)	# 1981
	beq		x4, x5, beq.34366	# 1981
	jal		x0, fle_cont.34315	# 1981
beq.34366:
	lui		x4, 130568	# 340
	ori		x4, x4, 130568	# 340
	flw		f1, 0(x4)	# 340
	lui		x4, 130312	# 340
	ori		x4, x4, 130312	# 340
	flw		f2, 0(x4)	# 340
	fmul	f1, f1, f2	# 340
	lui		x4, 130572	# 340
	ori		x4, x4, 130572	# 340
	flw		f2, 0(x4)	# 340
	lui		x4, 130316	# 340
	ori		x4, x4, 130316	# 340
	flw		f3, 0(x4)	# 340
	fmul	f2, f2, f3	# 340
	fadd	f1, f1, f2	# 340
	lui		x4, 130576	# 340
	ori		x4, x4, 130576	# 340
	flw		f2, 0(x4)	# 340
	lui		x4, 130320	# 340
	ori		x4, x4, 130320	# 340
	flw		f3, 0(x4)	# 340
	fmul	f2, f2, f3	# 340
	fadd	f1, f1, f2	# 340
	fsub	f1, f0, f1	# 123
	flw		f2, -32(x2)	# 121
	fle		f1, f2, fle.34368	# 121
	jal		x0, fle_cont.34367	# 121
fle.34368:
	fadd	f1, f0, f2	# 1983
fle_cont.34367:
	flw		f2, -16(x2)	# 1984
	fmul	f1, f2, f1	# 1984
	lw		x4, -56(x2)	# 509
	lw		x4, 28(x4)	# 509
	addi	x4, x4, 0	# 514
	flw		f2, 0(x4)	# 514
	fmul	f1, f1, f2	# 1984
	lui		x4, 130592	# 350
	ori		x4, x4, 130592	# 350
	flw		f2, 0(x4)	# 350
	lw		x5, -108(x2)	# 350
	flw		f3, 0(x5)	# 350
	fmul	f3, f1, f3	# 350
	fadd	f2, f2, f3	# 350
	fsw		f2, 0(x4)	# 350
	lui		x4, 130596	# 351
	ori		x4, x4, 130596	# 351
	flw		f2, 0(x4)	# 351
	lw		x5, -104(x2)	# 351
	flw		f3, 0(x5)	# 351
	fmul	f3, f1, f3	# 351
	fadd	f2, f2, f3	# 351
	fsw		f2, 0(x4)	# 351
	lui		x4, 130600	# 352
	ori		x4, x4, 130600	# 352
	flw		f2, 0(x4)	# 352
	lw		x5, -52(x2)	# 352
	flw		f3, 0(x5)	# 352
	fmul	f1, f1, f3	# 352
	fadd	f1, f2, f1	# 352
	fsw		f1, 0(x4)	# 352
	jal		x0, fle_cont.34315	# 1975
fle.34316:
	fdiv	f1, f1, f23	# 2000
	lui		x14, 130548	# 1682
	ori		x14, x14, 130548	# 1682
	fsw		f21, 0(x14)	# 1682
	lui		x15, 130536	# 1683
	ori		x15, x15, 130536	# 1683
	lw		x15, 0(x15)	# 1683
	fsw		f1, -112(x2)	# 1683
	sw		x15, -116(x2)	# 1683
	sw		x30, -24(x2)	# 1683
	sw		x22, -28(x2)	# 1683
	sw		x10, -120(x2)	# 1683
	fsw		f0, -32(x2)	# 1683
	sw		x21, -36(x2)	# 1683
	sw		x0, -44(x2)	# 1683
	sw		x14, -124(x2)	# 1683
	addi	x6, x9, 0	# 1683
	addi	x5, x15, 0	# 1683
	addi	x4, x0, 0	# 1683
	sw		x1, -128(x2)	# 1683
	addi	x2, x2, -132	# 1683
	jal		x1, trace_or_matrix_fast.2935.17961	# 1683
	addi	x2, x2, 132	# 1683
	lw		x1, -128(x2)	# 1683
	lw		x4, -124(x2)	# 1684
	flw		f1, 0(x4)	# 1684
	fle		f1, f20, fle.34370	# 125
	fle		f22, f1, fle.34372	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.34369	# 125
fle.34372:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.34369	# 125
fle.34370:
	addi	x4, x0, 0	# 1688
fle_cont.34369:
	lw		x5, -44(x2)	# 1975
	beq		x4, x5, fle_cont.34315	# 1975
	lui		x4, 130564	# 1976
	ori		x4, x4, 130564	# 1976
	lw		x4, 0(x4)	# 1976
	lui		x6, 130048	# 12
	ori		x6, x6, 130048	# 12
	mul		x4, x30, x4	# 1976
	add		x4, x6, x4	# 1976
	lw		x4, 0(x4)	# 1976
	lw		x6, 4(x4)	# 401
	lw		x7, -36(x2)	# 1741
	beq		x6, x7, beq.34376	# 1741
	lw		x8, -28(x2)	# 1743
	beq		x6, x8, beq.34378	# 1743
	flw		f1, 0(x25)	# 1718
	lw		x6, 20(x4)	# 479
	addi	x9, x6, 0	# 484
	flw		f2, 0(x9)	# 484
	fsub	f1, f1, f2	# 1718
	flw		f2, 0(x27)	# 1719
	addi	x9, x6, 4	# 494
	flw		f3, 0(x9)	# 494
	fsub	f2, f2, f3	# 1719
	flw		f3, 0(x26)	# 1720
	addi	x6, x6, 8	# 504
	flw		f4, 0(x6)	# 504
	fsub	f3, f3, f4	# 1720
	lw		x6, 16(x4)	# 439
	addi	x9, x6, 0	# 444
	flw		f4, 0(x9)	# 444
	fmul	f4, f1, f4	# 1722
	addi	x9, x6, 4	# 454
	flw		f5, 0(x9)	# 454
	fmul	f5, f2, f5	# 1723
	addi	x6, x6, 8	# 464
	flw		f6, 0(x6)	# 464
	fmul	f6, f3, f6	# 1724
	lw		x6, 12(x4)	# 430
	beq		x6, x5, beq.34380	# 1726
	lw		x6, 36(x4)	# 579
	addi	x9, x6, 8	# 584
	flw		f7, 0(x9)	# 584
	fmul	f8, f2, f7	# 1731
	addi	x9, x6, 4	# 574
	flw		f9, 0(x9)	# 574
	fmul	f10, f3, f9	# 1731
	fadd	f8, f8, f10	# 1731
	lui		x9, %hi(l.27810)	# 126
	ori		x9, x9, %lo(l.27810)	# 126
	flw		f10, 0(x9)	# 126
	fmul	f8, f8, f10	# 126
	fadd	f4, f4, f8	# 1731
	lui		x9, 130568	# 1731
	ori		x9, x9, 130568	# 1731
	fsw		f4, 0(x9)	# 1731
	fmul	f4, f1, f7	# 1732
	addi	x6, x6, 0	# 564
	flw		f7, 0(x6)	# 564
	fmul	f3, f3, f7	# 1732
	fadd	f3, f4, f3	# 1732
	fmul	f3, f3, f10	# 126
	fadd	f3, f5, f3	# 1732
	lui		x6, 130572	# 1732
	ori		x6, x6, 130572	# 1732
	fsw		f3, 0(x6)	# 1732
	fmul	f1, f1, f9	# 1733
	fmul	f2, f2, f7	# 1733
	fadd	f1, f1, f2	# 1733
	fmul	f1, f1, f10	# 126
	fadd	f1, f6, f1	# 1733
	lui		x6, 130576	# 1733
	ori		x6, x6, 130576	# 1733
	fsw		f1, 0(x6)	# 1733
	jal		x0, beq_cont.34379	# 1726
beq.34380:
	lui		x6, 130568	# 1727
	ori		x6, x6, 130568	# 1727
	fsw		f4, 0(x6)	# 1727
	lui		x6, 130572	# 1728
	ori		x6, x6, 130572	# 1728
	fsw		f5, 0(x6)	# 1728
	lui		x6, 130576	# 1729
	ori		x6, x6, 130576	# 1729
	fsw		f6, 0(x6)	# 1729
beq_cont.34379:
	lw		x6, 24(x4)	# 421
	lui		x9, 130568	# 331
	ori		x9, x9, 130568	# 331
	flw		f1, 0(x9)	# 331
	fmul	f2, f1, f1	# 127
	lui		x10, 130572	# 331
	ori		x10, x10, 130572	# 331
	flw		f3, 0(x10)	# 331
	fmul	f4, f3, f3	# 127
	fadd	f2, f2, f4	# 331
	lui		x11, 130576	# 331
	ori		x11, x11, 130576	# 331
	flw		f4, 0(x11)	# 331
	fmul	f5, f4, f4	# 127
	fadd	f2, f2, f5	# 331
	fsqrt	f2, f2	# 331
	flw		f5, -32(x2)	# 120
	feq		f2, f5, feq.34382	# 120
	beq		x6, x5, beq.34384	# 332
	fdiv	f2, f25, f2	# 332
	jal		x0, feq_cont.34381	# 332
beq.34384:
	fdiv	f2, f30, f2	# 332
	jal		x0, feq_cont.34381	# 120
feq.34382:
	fadd	f2, f0, f30	# 332
feq_cont.34381:
	fmul	f1, f1, f2	# 333
	fsw		f1, 0(x9)	# 333
	fmul	f1, f3, f2	# 334
	fsw		f1, 0(x10)	# 334
	fmul	f1, f4, f2	# 335
	fsw		f1, 0(x11)	# 335
	jal		x0, beq_cont.34375	# 1743
beq.34378:
	lw		x6, 16(x4)	# 439
	addi	x9, x6, 0	# 444
	flw		f1, 0(x9)	# 444
	fsub	f1, f0, f1	# 123
	lui		x9, 130568	# 1711
	ori		x9, x9, 130568	# 1711
	fsw		f1, 0(x9)	# 1711
	addi	x9, x6, 4	# 454
	flw		f1, 0(x9)	# 454
	fsub	f1, f0, f1	# 123
	lui		x9, 130572	# 1712
	ori		x9, x9, 130572	# 1712
	fsw		f1, 0(x9)	# 1712
	addi	x6, x6, 8	# 464
	flw		f1, 0(x6)	# 464
	fsub	f1, f0, f1	# 123
	lui		x6, 130576	# 1713
	ori		x6, x6, 130576	# 1713
	fsw		f1, 0(x6)	# 1713
	jal		x0, beq_cont.34375	# 1741
beq.34376:
	lui		x6, 130544	# 1702
	ori		x6, x6, 130544	# 1702
	lw		x6, 0(x6)	# 1702
	lui		x8, 130568	# 51
	ori		x8, x8, 130568	# 51
	flw		f1, -32(x2)	# 295
	fsw		f1, 0(x8)	# 295
	lui		x9, 130572	# 296
	ori		x9, x9, 130572	# 296
	fsw		f1, 0(x9)	# 296
	lui		x9, 130576	# 297
	ori		x9, x9, 130576	# 297
	fsw		f1, 0(x9)	# 297
	addi	x6, x6, -1	# 1705
	mul		x6, x30, x6	# 1705
	lw		x9, -120(x2)	# 1705
	add		x9, x9, x6	# 1705
	flw		f2, 0(x9)	# 1705
	feq		f2, f1, feq.34386	# 120
	fle		f2, f1, fle.34388	# 121
	fadd	f2, f0, f30	# 261
	jal		x0, feq_cont.34385	# 121
fle.34388:
	fadd	f2, f0, f25	# 262
	jal		x0, feq_cont.34385	# 120
feq.34386:
	fadd	f2, f0, f1	# 260
feq_cont.34385:
	fsub	f2, f0, f2	# 123
	add		x6, x8, x6	# 1705
	fsw		f2, 0(x6)	# 1705
beq_cont.34375:
	lw		x6, 0(x4)	# 391
	lw		x8, 32(x4)	# 529
	addi	x9, x8, 0	# 534
	flw		f1, 0(x9)	# 534
	lui		x9, 130580	# 1758
	ori		x9, x9, 130580	# 1758
	fsw		f1, 0(x9)	# 1758
	addi	x10, x8, 4	# 544
	flw		f1, 0(x10)	# 544
	lui		x10, 130584	# 1759
	ori		x10, x10, 130584	# 1759
	fsw		f1, 0(x10)	# 1759
	addi	x8, x8, 8	# 554
	flw		f1, 0(x8)	# 554
	lui		x8, 130588	# 1760
	ori		x8, x8, 130588	# 1760
	fsw		f1, 0(x8)	# 1760
	sw		x4, -128(x2)	# 1761
	beq		x6, x7, beq.34390	# 1761
	lw		x7, -28(x2)	# 1779
	beq		x6, x7, beq.34392	# 1779
	beq		x6, x24, beq.34394	# 1786
	lw		x7, -24(x2)	# 1797
	beq		x6, x7, beq.34396	# 1797
	jal		x0, beq_cont.34389	# 1797
beq.34396:
	flw		f1, 0(x25)	# 1799
	lw		x6, 20(x4)	# 479
	addi	x7, x6, 0	# 484
	flw		f2, 0(x7)	# 484
	fsub	f1, f1, f2	# 1799
	lw		x7, 16(x4)	# 439
	addi	x11, x7, 0	# 444
	flw		f2, 0(x11)	# 444
	fsqrt	f2, f2	# 1799
	fmul	f1, f1, f2	# 1799
	flw		f2, 0(x26)	# 1800
	addi	x11, x6, 8	# 504
	flw		f3, 0(x11)	# 504
	fsub	f2, f2, f3	# 1800
	addi	x11, x7, 8	# 464
	flw		f3, 0(x11)	# 464
	fsqrt	f3, f3	# 1800
	fmul	f2, f2, f3	# 1800
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1801
	flw		f4, -32(x2)	# 124
	fle		f1, f4, fle.34398	# 124
	fadd	f5, f0, f1	# 124
	jal		x0, fle_cont.34397	# 124
fle.34398:
	fsub	f5, f0, f1	# 124
fle_cont.34397:
	lui		x11, %hi(l.29489)	# 1803
	ori		x11, x11, %lo(l.29489)	# 1803
	flw		f6, 0(x11)	# 1803
	fsw		f3, -132(x2)	# 125
	fle		f6, f5, fle.34400	# 125
	lui		x11, %hi(l.29491)	# 1804
	ori		x11, x11, %lo(l.29491)	# 1804
	flw		f1, 0(x11)	# 1804
	jal		x0, fle_cont.34399	# 125
fle.34400:
	fdiv	f1, f2, f1	# 1806
	fle		f1, f4, fle.34402	# 124
	jal		x0, fle_cont.34401	# 124
fle.34402:
	fsub	f1, f0, f1	# 124
fle_cont.34401:
	sw		x1, -136(x2)	# 1808
	addi	x2, x2, -140	# 1808
	jal		x1, atan.2624.17908	# 1808
	addi	x2, x2, 140	# 1808
	lw		x1, -136(x2)	# 1808
	lui		x4, %hi(l.29494)	# 1808
	ori		x4, x4, %lo(l.29494)	# 1808
	flw		f2, 0(x4)	# 1808
	fmul	f1, f1, f2	# 1808
	lui		x4, %hi(l.29496)	# 1808
	ori		x4, x4, %lo(l.29496)	# 1808
	flw		f2, 0(x4)	# 1808
	fdiv	f1, f1, f2	# 1808
fle_cont.34399:
	sw		x7, -136(x2)	# 1810
	sw		x6, -140(x2)	# 1810
	fsw		f1, -144(x2)	# 1810
	sw		x1, -148(x2)	# 1810
	addi	x2, x2, -152	# 1810
	jal		x1, min_caml_floor	# 1810
	addi	x2, x2, 152	# 1810
	lw		x1, -148(x2)	# 1810
	flw		f2, -144(x2)	# 1810
	fsub	f1, f2, f1	# 1810
	flw		f2, 0(x27)	# 1812
	lw		x4, -140(x2)	# 494
	addi	x4, x4, 4	# 494
	flw		f3, 0(x4)	# 494
	fsub	f2, f2, f3	# 1812
	lw		x4, -136(x2)	# 454
	addi	x4, x4, 4	# 454
	flw		f3, 0(x4)	# 454
	fsqrt	f3, f3	# 1812
	fmul	f2, f2, f3	# 1812
	flw		f3, -32(x2)	# 124
	flw		f4, -132(x2)	# 124
	fle		f4, f3, fle.34404	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.34403	# 124
fle.34404:
	fsub	f5, f0, f4	# 124
fle_cont.34403:
	fsw		f1, -148(x2)	# 125
	fle		f6, f5, fle.34406	# 125
	lui		x4, %hi(l.29491)	# 1815
	ori		x4, x4, %lo(l.29491)	# 1815
	flw		f1, 0(x4)	# 1815
	jal		x0, fle_cont.34405	# 125
fle.34406:
	fdiv	f2, f2, f4	# 1817
	fle		f2, f3, fle.34408	# 124
	jal		x0, fle_cont.34407	# 124
fle.34408:
	fsub	f2, f0, f2	# 124
fle_cont.34407:
	fadd	f1, f0, f2	# 1818
	sw		x1, -152(x2)	# 1818
	addi	x2, x2, -156	# 1818
	jal		x1, atan.2624.17908	# 1818
	addi	x2, x2, 156	# 1818
	lw		x1, -152(x2)	# 1818
	lui		x4, %hi(l.29494)	# 1818
	ori		x4, x4, %lo(l.29494)	# 1818
	flw		f2, 0(x4)	# 1818
	fmul	f1, f1, f2	# 1818
	lui		x4, %hi(l.29496)	# 1818
	ori		x4, x4, %lo(l.29496)	# 1818
	flw		f2, 0(x4)	# 1818
	fdiv	f1, f1, f2	# 1818
fle_cont.34405:
	fsw		f1, -152(x2)	# 1820
	sw		x1, -156(x2)	# 1820
	addi	x2, x2, -160	# 1820
	jal		x1, min_caml_floor	# 1820
	addi	x2, x2, 160	# 1820
	lw		x1, -156(x2)	# 1820
	flw		f2, -152(x2)	# 1820
	fsub	f1, f2, f1	# 1820
	lui		x4, %hi(l.29507)	# 1821
	ori		x4, x4, %lo(l.29507)	# 1821
	flw		f2, 0(x4)	# 1821
	lui		x4, %hi(l.27810)	# 1821
	ori		x4, x4, %lo(l.27810)	# 1821
	flw		f3, 0(x4)	# 1821
	flw		f4, -148(x2)	# 1821
	fsub	f4, f3, f4	# 1821
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1821
	fsub	f1, f3, f1	# 1821
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1821
	flw		f2, -32(x2)	# 122
	fle		f2, f1, fle_cont.34409	# 122
	fadd	f1, f0, f2	# 1822
fle_cont.34409:
	lui		x4, %hi(l.29512)	# 25
	ori		x4, x4, %lo(l.29512)	# 25
	flw		f3, 0(x4)	# 25
	fmul	f1, f3, f1	# 1823
	lui		x4, %hi(l.29514)	# 1823
	ori		x4, x4, %lo(l.29514)	# 1823
	flw		f3, 0(x4)	# 1823
	fdiv	f1, f1, f3	# 1823
	fsw		f1, 0(x8)	# 1823
	jal		x0, beq_cont.34389	# 1786
beq.34394:
	flw		f1, 0(x25)	# 1789
	lw		x6, 20(x4)	# 479
	addi	x7, x6, 0	# 484
	flw		f2, 0(x7)	# 484
	fsub	f1, f1, f2	# 1789
	flw		f2, 0(x26)	# 1790
	addi	x6, x6, 8	# 504
	flw		f3, 0(x6)	# 504
	fsub	f2, f2, f3	# 1790
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1791
	fsqrt	f1, f1	# 1791
	fdiv	f1, f1, f28	# 1791
	fsw		f1, -156(x2)	# 1792
	sw		x1, -160(x2)	# 1792
	addi	x2, x2, -164	# 1792
	jal		x1, min_caml_floor	# 1792
	addi	x2, x2, 164	# 1792
	lw		x1, -160(x2)	# 1792
	flw		f2, -156(x2)	# 1792
	fsub	f1, f2, f1	# 1792
	lui		x4, %hi(l.29496)	# 1792
	ori		x4, x4, %lo(l.29496)	# 1792
	flw		f2, 0(x4)	# 1792
	fmul	f1, f1, f2	# 1792
	sw		x1, -160(x2)	# 1793
	addi	x2, x2, -164	# 1793
	jal		x1, cos.2622.17906	# 1793
	addi	x2, x2, 164	# 1793
	lw		x1, -160(x2)	# 1793
	fmul	f1, f1, f1	# 127
	lui		x4, %hi(l.29512)	# 25
	ori		x4, x4, %lo(l.29512)	# 25
	flw		f2, 0(x4)	# 25
	fmul	f3, f1, f2	# 1794
	fsw		f3, 0(x10)	# 1794
	fsub	f1, f30, f1	# 1795
	fmul	f1, f1, f2	# 1795
	fsw		f1, 0(x8)	# 1795
	jal		x0, beq_cont.34389	# 1779
beq.34392:
	flw		f1, 0(x27)	# 1782
	lui		x6, %hi(l.29532)	# 1782
	ori		x6, x6, %lo(l.29532)	# 1782
	flw		f2, 0(x6)	# 1782
	fmul	f1, f1, f2	# 1782
	sw		x1, -160(x2)	# 1782
	addi	x2, x2, -164	# 1782
	jal		x1, sin.2620.17904	# 1782
	addi	x2, x2, 164	# 1782
	lw		x1, -160(x2)	# 1782
	fmul	f1, f1, f1	# 127
	lui		x4, %hi(l.29512)	# 25
	ori		x4, x4, %lo(l.29512)	# 25
	flw		f2, 0(x4)	# 25
	fmul	f3, f2, f1	# 1783
	fsw		f3, 0(x9)	# 1783
	fsub	f1, f30, f1	# 1784
	fmul	f1, f2, f1	# 1784
	fsw		f1, 0(x10)	# 1784
	jal		x0, beq_cont.34389	# 1761
beq.34390:
	flw		f1, 0(x25)	# 1764
	lw		x6, 20(x4)	# 479
	addi	x7, x6, 0	# 484
	flw		f2, 0(x7)	# 484
	fsub	f1, f1, f2	# 1764
	fmul	f3, f1, f26	# 1766
	fsw		f26, -160(x2)	# 1766
	sw		x6, -164(x2)	# 1766
	fsw		f1, -168(x2)	# 1766
	fadd	f1, f0, f3	# 1766
	sw		x1, -172(x2)	# 1766
	addi	x2, x2, -176	# 1766
	jal		x1, min_caml_floor	# 1766
	addi	x2, x2, 176	# 1766
	lw		x1, -172(x2)	# 1766
	fmul	f1, f1, f27	# 1766
	flw		f3, -168(x2)	# 1767
	fsub	f1, f3, f1	# 1767
	flw		f4, 0(x26)	# 1769
	lw		x4, -164(x2)	# 504
	addi	x4, x4, 8	# 504
	flw		f5, 0(x4)	# 504
	fsub	f4, f4, f5	# 1769
	flw		f5, -160(x2)	# 1771
	fmul	f5, f4, f5	# 1771
	fsw		f1, -172(x2)	# 1771
	fsw		f27, -176(x2)	# 1771
	fadd	f1, f0, f5	# 1771
	sw		x1, -180(x2)	# 1771
	addi	x2, x2, -184	# 1771
	jal		x1, min_caml_floor	# 1771
	addi	x2, x2, 184	# 1771
	lw		x1, -180(x2)	# 1771
	flw		f2, -176(x2)	# 1771
	fmul	f1, f1, f2	# 1771
	fsub	f1, f4, f1	# 1772
	flw		f2, -172(x2)	# 125
	fle		f28, f2, fle.34412	# 125
	fle		f28, f1, fle.34414	# 125
	lui		x4, %hi(l.29512)	# 25
	ori		x4, x4, %lo(l.29512)	# 25
	flw		f1, 0(x4)	# 25
	jal		x0, fle_cont.34411	# 125
fle.34414:
	flw		f1, -32(x2)	# 1776
	jal		x0, fle_cont.34411	# 125
fle.34412:
	fle		f28, f1, fle.34416	# 125
	flw		f1, -32(x2)	# 1777
	jal		x0, fle_cont.34411	# 125
fle.34416:
	lui		x4, %hi(l.29512)	# 25
	ori		x4, x4, %lo(l.29512)	# 25
	flw		f1, 0(x4)	# 25
fle_cont.34411:
	fsw		f1, 0(x10)	# 1774
beq_cont.34389:
	lw		x4, -44(x2)	# 1981
	lw		x5, -116(x2)	# 1981
	sw		x8, -180(x2)	# 1981
	sw		x10, -184(x2)	# 1981
	sw		x9, -188(x2)	# 1981
	sw		x1, -192(x2)	# 1981
	addi	x2, x2, -196	# 1981
	jal		x1, shadow_check_one_or_matrix.2910.17938	# 1981
	addi	x2, x2, 196	# 1981
	lw		x1, -192(x2)	# 1981
	lw		x5, -44(x2)	# 1981
	beq		x4, x5, beq.34418	# 1981
	jal		x0, fle_cont.34315	# 1981
beq.34418:
	lui		x4, 130568	# 340
	ori		x4, x4, 130568	# 340
	flw		f1, 0(x4)	# 340
	lui		x4, 130312	# 340
	ori		x4, x4, 130312	# 340
	flw		f2, 0(x4)	# 340
	fmul	f1, f1, f2	# 340
	lui		x4, 130572	# 340
	ori		x4, x4, 130572	# 340
	flw		f2, 0(x4)	# 340
	lui		x4, 130316	# 340
	ori		x4, x4, 130316	# 340
	flw		f3, 0(x4)	# 340
	fmul	f2, f2, f3	# 340
	fadd	f1, f1, f2	# 340
	lui		x4, 130576	# 340
	ori		x4, x4, 130576	# 340
	flw		f2, 0(x4)	# 340
	lui		x4, 130320	# 340
	ori		x4, x4, 130320	# 340
	flw		f3, 0(x4)	# 340
	fmul	f2, f2, f3	# 340
	fadd	f1, f1, f2	# 340
	fsub	f1, f0, f1	# 123
	flw		f2, -32(x2)	# 121
	fle		f1, f2, fle.34420	# 121
	jal		x0, fle_cont.34419	# 121
fle.34420:
	fadd	f1, f0, f2	# 1983
fle_cont.34419:
	flw		f2, -112(x2)	# 1984
	fmul	f1, f2, f1	# 1984
	lw		x4, -128(x2)	# 509
	lw		x4, 28(x4)	# 509
	addi	x4, x4, 0	# 514
	flw		f2, 0(x4)	# 514
	fmul	f1, f1, f2	# 1984
	lui		x4, 130592	# 350
	ori		x4, x4, 130592	# 350
	flw		f2, 0(x4)	# 350
	lw		x5, -188(x2)	# 350
	flw		f3, 0(x5)	# 350
	fmul	f3, f1, f3	# 350
	fadd	f2, f2, f3	# 350
	fsw		f2, 0(x4)	# 350
	lui		x4, 130596	# 351
	ori		x4, x4, 130596	# 351
	flw		f2, 0(x4)	# 351
	lw		x5, -184(x2)	# 351
	flw		f3, 0(x5)	# 351
	fmul	f3, f1, f3	# 351
	fadd	f2, f2, f3	# 351
	fsw		f2, 0(x4)	# 351
	lui		x4, 130600	# 352
	ori		x4, x4, 130600	# 352
	flw		f2, 0(x4)	# 352
	lw		x5, -180(x2)	# 352
	flw		f3, 0(x5)	# 352
	fmul	f1, f1, f3	# 352
	fadd	f1, f2, f1	# 352
	fsw		f1, 0(x4)	# 352
fle_cont.34315:
	lw		x4, -12(x2)	# 2002
	addi	x7, x4, -2	# 2002
	lw		x4, -8(x2)	# 2002
	lw		x5, -4(x2)	# 2002
	lw		x6, 0(x2)	# 2002
	jal		x0, iter_trace_diffuse_rays.2971.17976	# 2002
do_without_neighbors.2993.17981:
	ble		x5, x30, ble.34421	# 2083
	jalr	x0, x1, 0	# 2093
ble.34421:
	lw		x7, 8(x4)	# 625
	mul		x8, x30, x5	# 2086
	add		x7, x7, x8	# 2086
	lw		x7, 0(x7)	# 2086
	ble		x0, x7, ble.34423	# 2086
	jalr	x0, x1, 0	# 2092
ble.34423:
	lw		x7, 12(x4)	# 632
	add		x7, x7, x8	# 2088
	lw		x7, 0(x7)	# 2088
	sw		x4, 0(x2)	# 2088
	sw		x5, -4(x2)	# 2088
	beq		x7, x0, beq_cont.34425	# 2088
	lw		x7, 20(x4)	# 646
	lw		x10, 28(x4)	# 676
	lw		x11, 4(x4)	# 617
	lw		x12, 16(x4)	# 639
	add		x7, x7, x8	# 2050
	lw		x7, 0(x7)	# 2050
	addi	x13, x7, 0	# 307
	flw		f1, 0(x13)	# 307
	lui		x13, 130592	# 307
	ori		x13, x13, 130592	# 307
	fsw		f1, 0(x13)	# 307
	addi	x15, x7, 4	# 308
	flw		f1, 0(x15)	# 308
	lui		x15, 130596	# 308
	ori		x15, x15, 130596	# 308
	fsw		f1, 0(x15)	# 308
	addi	x7, x7, 8	# 309
	flw		f1, 0(x7)	# 309
	lui		x7, 130600	# 309
	ori		x7, x7, 130600	# 309
	fsw		f1, 0(x7)	# 309
	lw		x17, 24(x4)	# 662
	addi	x17, x17, 0	# 664
	lw		x17, 0(x17)	# 664
	add		x10, x10, x8	# 2053
	lw		x10, 0(x10)	# 2053
	add		x11, x11, x8	# 2054
	lw		x11, 0(x11)	# 2054
	sw		x7, -8(x2)	# 2019
	sw		x15, -12(x2)	# 2019
	sw		x13, -16(x2)	# 2019
	sw		x8, -20(x2)	# 2019
	sw		x12, -24(x2)	# 2019
	sw		x30, -28(x2)	# 2019
	sw		x22, -32(x2)	# 2019
	sw		x10, -36(x2)	# 2019
	sw		x11, -40(x2)	# 2019
	sw		x21, -44(x2)	# 2019
	sw		x17, -48(x2)	# 2019
	beq		x17, x0, beq_cont.34427	# 2019
	lui		x9, 130716	# 2020
	ori		x9, x9, 130716	# 2020
	lw		x9, 0(x9)	# 2020
	addi	x18, x11, 0	# 307
	flw		f1, 0(x18)	# 307
	lui		x18, 130648	# 307
	ori		x18, x18, 130648	# 307
	fsw		f1, 0(x18)	# 307
	addi	x18, x11, 4	# 308
	flw		f1, 0(x18)	# 308
	lui		x18, 130652	# 308
	ori		x18, x18, 130652	# 308
	fsw		f1, 0(x18)	# 308
	addi	x18, x11, 8	# 309
	flw		f1, 0(x18)	# 309
	lui		x18, 130656	# 309
	ori		x18, x18, 130656	# 309
	fsw		f1, 0(x18)	# 309
	lui		x18, 130000	# 1363
	ori		x18, x18, 130000	# 1363
	lw		x18, 0(x18)	# 1363
	addi	x18, x18, -1	# 1363
	sw		x9, -52(x2)	# 1363
	addi	x5, x18, 0	# 1363
	addi	x4, x11, 0	# 1363
	sw		x1, -56(x2)	# 1363
	addi	x2, x2, -60	# 1363
	jal		x1, setup_startp_constants.2873.17923	# 1363
	addi	x2, x2, 60	# 1363
	lw		x1, -56(x2)	# 1363
	addi	x7, x0, 118	# 2012
	lw		x4, -52(x2)	# 2012
	lw		x5, -36(x2)	# 2012
	lw		x6, -40(x2)	# 2012
	sw		x1, -56(x2)	# 2012
	addi	x2, x2, -60	# 2012
	jal		x1, iter_trace_diffuse_rays.2971.17976	# 2012
	addi	x2, x2, 60	# 2012
	lw		x1, -56(x2)	# 2012
beq_cont.34427:
	lw		x4, -44(x2)	# 2023
	lw		x5, -48(x2)	# 2023
	beq		x5, x4, beq_cont.34429	# 2023
	lui		x4, 130720	# 2024
	ori		x4, x4, 130720	# 2024
	lw		x4, 0(x4)	# 2024
	lw		x6, -40(x2)	# 307
	addi	x7, x6, 0	# 307
	flw		f1, 0(x7)	# 307
	lui		x7, 130648	# 307
	ori		x7, x7, 130648	# 307
	fsw		f1, 0(x7)	# 307
	addi	x7, x6, 4	# 308
	flw		f1, 0(x7)	# 308
	lui		x7, 130652	# 308
	ori		x7, x7, 130652	# 308
	fsw		f1, 0(x7)	# 308
	addi	x7, x6, 8	# 309
	flw		f1, 0(x7)	# 309
	lui		x7, 130656	# 309
	ori		x7, x7, 130656	# 309
	fsw		f1, 0(x7)	# 309
	lui		x7, 130000	# 1363
	ori		x7, x7, 130000	# 1363
	lw		x7, 0(x7)	# 1363
	addi	x7, x7, -1	# 1363
	sw		x4, -56(x2)	# 1363
	addi	x5, x7, 0	# 1363
	addi	x4, x6, 0	# 1363
	sw		x1, -60(x2)	# 1363
	addi	x2, x2, -64	# 1363
	jal		x1, setup_startp_constants.2873.17923	# 1363
	addi	x2, x2, 64	# 1363
	lw		x1, -60(x2)	# 1363
	addi	x7, x0, 118	# 2012
	lw		x4, -56(x2)	# 2012
	lw		x5, -36(x2)	# 2012
	lw		x6, -40(x2)	# 2012
	sw		x1, -60(x2)	# 2012
	addi	x2, x2, -64	# 2012
	jal		x1, iter_trace_diffuse_rays.2971.17976	# 2012
	addi	x2, x2, 64	# 2012
	lw		x1, -60(x2)	# 2012
beq_cont.34429:
	lw		x4, -32(x2)	# 2027
	lw		x5, -48(x2)	# 2027
	beq		x5, x4, beq_cont.34431	# 2027
	lui		x4, 130724	# 2028
	ori		x4, x4, 130724	# 2028
	lw		x4, 0(x4)	# 2028
	lw		x6, -40(x2)	# 307
	addi	x7, x6, 0	# 307
	flw		f1, 0(x7)	# 307
	lui		x7, 130648	# 307
	ori		x7, x7, 130648	# 307
	fsw		f1, 0(x7)	# 307
	addi	x7, x6, 4	# 308
	flw		f1, 0(x7)	# 308
	lui		x7, 130652	# 308
	ori		x7, x7, 130652	# 308
	fsw		f1, 0(x7)	# 308
	addi	x7, x6, 8	# 309
	flw		f1, 0(x7)	# 309
	lui		x7, 130656	# 309
	ori		x7, x7, 130656	# 309
	fsw		f1, 0(x7)	# 309
	lui		x7, 130000	# 1363
	ori		x7, x7, 130000	# 1363
	lw		x7, 0(x7)	# 1363
	addi	x7, x7, -1	# 1363
	sw		x4, -60(x2)	# 1363
	addi	x5, x7, 0	# 1363
	addi	x4, x6, 0	# 1363
	sw		x1, -64(x2)	# 1363
	addi	x2, x2, -68	# 1363
	jal		x1, setup_startp_constants.2873.17923	# 1363
	addi	x2, x2, 68	# 1363
	lw		x1, -64(x2)	# 1363
	addi	x7, x0, 118	# 2012
	lw		x4, -60(x2)	# 2012
	lw		x5, -36(x2)	# 2012
	lw		x6, -40(x2)	# 2012
	sw		x1, -64(x2)	# 2012
	addi	x2, x2, -68	# 2012
	jal		x1, iter_trace_diffuse_rays.2971.17976	# 2012
	addi	x2, x2, 68	# 2012
	lw		x1, -64(x2)	# 2012
beq_cont.34431:
	lw		x5, -48(x2)	# 2031
	beq		x5, x24, beq_cont.34433	# 2031
	lui		x4, 130728	# 2032
	ori		x4, x4, 130728	# 2032
	lw		x4, 0(x4)	# 2032
	lw		x6, -40(x2)	# 307
	addi	x7, x6, 0	# 307
	flw		f1, 0(x7)	# 307
	lui		x7, 130648	# 307
	ori		x7, x7, 130648	# 307
	fsw		f1, 0(x7)	# 307
	addi	x7, x6, 4	# 308
	flw		f1, 0(x7)	# 308
	lui		x7, 130652	# 308
	ori		x7, x7, 130652	# 308
	fsw		f1, 0(x7)	# 308
	addi	x7, x6, 8	# 309
	flw		f1, 0(x7)	# 309
	lui		x7, 130656	# 309
	ori		x7, x7, 130656	# 309
	fsw		f1, 0(x7)	# 309
	lui		x7, 130000	# 1363
	ori		x7, x7, 130000	# 1363
	lw		x7, 0(x7)	# 1363
	addi	x7, x7, -1	# 1363
	sw		x4, -64(x2)	# 1363
	addi	x5, x7, 0	# 1363
	addi	x4, x6, 0	# 1363
	sw		x1, -68(x2)	# 1363
	addi	x2, x2, -72	# 1363
	jal		x1, setup_startp_constants.2873.17923	# 1363
	addi	x2, x2, 72	# 1363
	lw		x1, -68(x2)	# 1363
	addi	x7, x0, 118	# 2012
	lw		x4, -64(x2)	# 2012
	lw		x5, -36(x2)	# 2012
	lw		x6, -40(x2)	# 2012
	sw		x1, -68(x2)	# 2012
	addi	x2, x2, -72	# 2012
	jal		x1, iter_trace_diffuse_rays.2971.17976	# 2012
	addi	x2, x2, 72	# 2012
	lw		x1, -68(x2)	# 2012
beq_cont.34433:
	lw		x4, -28(x2)	# 2035
	lw		x5, -48(x2)	# 2035
	beq		x5, x4, beq_cont.34435	# 2035
	lui		x4, 130732	# 2036
	ori		x4, x4, 130732	# 2036
	lw		x4, 0(x4)	# 2036
	lw		x5, -40(x2)	# 307
	addi	x6, x5, 0	# 307
	flw		f1, 0(x6)	# 307
	lui		x6, 130648	# 307
	ori		x6, x6, 130648	# 307
	fsw		f1, 0(x6)	# 307
	addi	x6, x5, 4	# 308
	flw		f1, 0(x6)	# 308
	lui		x6, 130652	# 308
	ori		x6, x6, 130652	# 308
	fsw		f1, 0(x6)	# 308
	addi	x6, x5, 8	# 309
	flw		f1, 0(x6)	# 309
	lui		x6, 130656	# 309
	ori		x6, x6, 130656	# 309
	fsw		f1, 0(x6)	# 309
	lui		x6, 130000	# 1363
	ori		x6, x6, 130000	# 1363
	lw		x6, 0(x6)	# 1363
	addi	x6, x6, -1	# 1363
	sw		x4, -68(x2)	# 1363
	addi	x4, x5, 0	# 1363
	addi	x5, x6, 0	# 1363
	sw		x1, -72(x2)	# 1363
	addi	x2, x2, -76	# 1363
	jal		x1, setup_startp_constants.2873.17923	# 1363
	addi	x2, x2, 76	# 1363
	lw		x1, -72(x2)	# 1363
	addi	x7, x0, 118	# 2012
	lw		x4, -68(x2)	# 2012
	lw		x5, -36(x2)	# 2012
	lw		x6, -40(x2)	# 2012
	sw		x1, -72(x2)	# 2012
	addi	x2, x2, -76	# 2012
	jal		x1, iter_trace_diffuse_rays.2971.17976	# 2012
	addi	x2, x2, 76	# 2012
	lw		x1, -72(x2)	# 2012
beq_cont.34435:
	lw		x4, -24(x2)	# 2055
	lw		x5, -20(x2)	# 2055
	add		x4, x4, x5	# 2055
	lw		x4, 0(x4)	# 2055
	lui		x5, 130604	# 380
	ori		x5, x5, 130604	# 380
	flw		f1, 0(x5)	# 380
	addi	x6, x4, 0	# 380
	flw		f2, 0(x6)	# 380
	lw		x6, -16(x2)	# 380
	flw		f3, 0(x6)	# 380
	fmul	f2, f2, f3	# 380
	fadd	f1, f1, f2	# 380
	fsw		f1, 0(x5)	# 380
	lui		x5, 130608	# 381
	ori		x5, x5, 130608	# 381
	flw		f1, 0(x5)	# 381
	addi	x6, x4, 4	# 381
	flw		f2, 0(x6)	# 381
	lw		x6, -12(x2)	# 381
	flw		f3, 0(x6)	# 381
	fmul	f2, f2, f3	# 381
	fadd	f1, f1, f2	# 381
	fsw		f1, 0(x5)	# 381
	lui		x5, 130612	# 382
	ori		x5, x5, 130612	# 382
	flw		f1, 0(x5)	# 382
	addi	x4, x4, 8	# 382
	flw		f2, 0(x4)	# 382
	lw		x4, -8(x2)	# 382
	flw		f3, 0(x4)	# 382
	fmul	f2, f2, f3	# 382
	fadd	f1, f1, f2	# 382
	fsw		f1, 0(x5)	# 382
beq_cont.34425:
	lw		x4, -4(x2)	# 2091
	addi	x5, x4, 1	# 2091
	lw		x4, 0(x2)	# 2091
	jal		x0, do_without_neighbors.2993.17981	# 2091
try_exploit_neighbors.3009.17984:
	mul		x10, x30, x4	# 2135
	add		x11, x7, x10	# 2135
	lw		x11, 0(x11)	# 2135
	ble		x9, x30, ble.34437	# 2136
	jalr	x0, x1, 0	# 2155
ble.34437:
	lw		x12, 8(x11)	# 625
	mul		x13, x30, x9	# 2111
	add		x12, x12, x13	# 2111
	lw		x12, 0(x12)	# 2111
	ble		x0, x12, ble.34439	# 2139
	jalr	x0, x1, 0	# 2154
ble.34439:
	add		x15, x6, x10	# 2119
	lw		x15, 0(x15)	# 2119
	lw		x16, 8(x15)	# 625
	add		x16, x16, x13	# 2111
	lw		x16, 0(x16)	# 2111
	beq		x16, x12, beq.34442	# 2119
	addi	x12, x0, 0	# 2127
	jal		x0, beq_cont.34441	# 2119
beq.34442:
	add		x16, x8, x10	# 2120
	lw		x16, 0(x16)	# 2120
	lw		x16, 8(x16)	# 625
	add		x16, x16, x13	# 2111
	lw		x16, 0(x16)	# 2111
	beq		x16, x12, beq.34444	# 2120
	addi	x12, x0, 0	# 2126
	jal		x0, beq_cont.34441	# 2120
beq.34444:
	addi	x16, x4, -1	# 2121
	mul		x16, x30, x16	# 2121
	add		x16, x7, x16	# 2121
	lw		x16, 0(x16)	# 2121
	lw		x16, 8(x16)	# 625
	add		x16, x16, x13	# 2111
	lw		x16, 0(x16)	# 2111
	beq		x16, x12, beq.34446	# 2121
	addi	x12, x0, 0	# 2125
	jal		x0, beq_cont.34441	# 2121
beq.34446:
	addi	x16, x4, 1	# 2122
	mul		x16, x30, x16	# 2122
	add		x16, x7, x16	# 2122
	lw		x16, 0(x16)	# 2122
	lw		x16, 8(x16)	# 625
	add		x16, x16, x13	# 2111
	lw		x16, 0(x16)	# 2111
	beq		x16, x12, beq.34448	# 2122
	addi	x12, x0, 0	# 2124
	jal		x0, beq_cont.34441	# 2122
beq.34448:
	addi	x12, x0, 1	# 2123
beq_cont.34441:
	beq		x12, x0, beq.34449	# 2141
	lw		x12, 12(x11)	# 632
	add		x12, x12, x13	# 2145
	lw		x12, 0(x12)	# 2145
	beq		x12, x0, beq_cont.34450	# 2145
	lw		x12, 20(x15)	# 646
	addi	x14, x4, -1	# 2065
	mul		x14, x30, x14	# 2065
	add		x14, x7, x14	# 2065
	lw		x14, 0(x14)	# 2065
	lw		x14, 20(x14)	# 646
	lw		x15, 20(x11)	# 646
	addi	x16, x4, 1	# 2067
	mul		x16, x30, x16	# 2067
	add		x16, x7, x16	# 2067
	lw		x16, 0(x16)	# 2067
	lw		x16, 20(x16)	# 646
	add		x10, x8, x10	# 2068
	lw		x10, 0(x10)	# 2068
	lw		x10, 20(x10)	# 646
	add		x12, x12, x13	# 2070
	lw		x12, 0(x12)	# 2070
	addi	x17, x12, 0	# 307
	flw		f1, 0(x17)	# 307
	lui		x17, 130592	# 307
	ori		x17, x17, 130592	# 307
	fsw		f1, 0(x17)	# 307
	addi	x18, x12, 4	# 308
	flw		f1, 0(x18)	# 308
	lui		x18, 130596	# 308
	ori		x18, x18, 130596	# 308
	fsw		f1, 0(x18)	# 308
	addi	x12, x12, 8	# 309
	flw		f1, 0(x12)	# 309
	lui		x12, 130600	# 309
	ori		x12, x12, 130600	# 309
	fsw		f1, 0(x12)	# 309
	add		x14, x14, x13	# 2071
	lw		x14, 0(x14)	# 2071
	flw		f1, 0(x17)	# 357
	addi	x19, x14, 0	# 357
	flw		f2, 0(x19)	# 357
	fadd	f1, f1, f2	# 357
	fsw		f1, 0(x17)	# 357
	flw		f1, 0(x18)	# 358
	addi	x19, x14, 4	# 358
	flw		f2, 0(x19)	# 358
	fadd	f1, f1, f2	# 358
	fsw		f1, 0(x18)	# 358
	flw		f1, 0(x12)	# 359
	addi	x14, x14, 8	# 359
	flw		f2, 0(x14)	# 359
	fadd	f1, f1, f2	# 359
	fsw		f1, 0(x12)	# 359
	add		x14, x15, x13	# 2072
	lw		x14, 0(x14)	# 2072
	flw		f1, 0(x17)	# 357
	addi	x15, x14, 0	# 357
	flw		f2, 0(x15)	# 357
	fadd	f1, f1, f2	# 357
	fsw		f1, 0(x17)	# 357
	flw		f1, 0(x18)	# 358
	addi	x15, x14, 4	# 358
	flw		f2, 0(x15)	# 358
	fadd	f1, f1, f2	# 358
	fsw		f1, 0(x18)	# 358
	flw		f1, 0(x12)	# 359
	addi	x14, x14, 8	# 359
	flw		f2, 0(x14)	# 359
	fadd	f1, f1, f2	# 359
	fsw		f1, 0(x12)	# 359
	add		x14, x16, x13	# 2073
	lw		x14, 0(x14)	# 2073
	flw		f1, 0(x17)	# 357
	addi	x15, x14, 0	# 357
	flw		f2, 0(x15)	# 357
	fadd	f1, f1, f2	# 357
	fsw		f1, 0(x17)	# 357
	flw		f1, 0(x18)	# 358
	addi	x15, x14, 4	# 358
	flw		f2, 0(x15)	# 358
	fadd	f1, f1, f2	# 358
	fsw		f1, 0(x18)	# 358
	flw		f1, 0(x12)	# 359
	addi	x14, x14, 8	# 359
	flw		f2, 0(x14)	# 359
	fadd	f1, f1, f2	# 359
	fsw		f1, 0(x12)	# 359
	add		x10, x10, x13	# 2074
	lw		x10, 0(x10)	# 2074
	flw		f1, 0(x17)	# 357
	addi	x14, x10, 0	# 357
	flw		f2, 0(x14)	# 357
	fadd	f1, f1, f2	# 357
	fsw		f1, 0(x17)	# 357
	flw		f1, 0(x18)	# 358
	addi	x14, x10, 4	# 358
	flw		f2, 0(x14)	# 358
	fadd	f1, f1, f2	# 358
	fsw		f1, 0(x18)	# 358
	flw		f1, 0(x12)	# 359
	addi	x10, x10, 8	# 359
	flw		f2, 0(x10)	# 359
	fadd	f1, f1, f2	# 359
	fsw		f1, 0(x12)	# 359
	lw		x10, 16(x11)	# 639
	add		x10, x10, x13	# 2077
	lw		x10, 0(x10)	# 2077
	lui		x11, 130604	# 380
	ori		x11, x11, 130604	# 380
	flw		f1, 0(x11)	# 380
	addi	x13, x10, 0	# 380
	flw		f2, 0(x13)	# 380
	flw		f3, 0(x17)	# 380
	fmul	f2, f2, f3	# 380
	fadd	f1, f1, f2	# 380
	fsw		f1, 0(x11)	# 380
	lui		x11, 130608	# 381
	ori		x11, x11, 130608	# 381
	flw		f1, 0(x11)	# 381
	addi	x13, x10, 4	# 381
	flw		f2, 0(x13)	# 381
	flw		f3, 0(x18)	# 381
	fmul	f2, f2, f3	# 381
	fadd	f1, f1, f2	# 381
	fsw		f1, 0(x11)	# 381
	lui		x11, 130612	# 382
	ori		x11, x11, 130612	# 382
	flw		f1, 0(x11)	# 382
	addi	x10, x10, 8	# 382
	flw		f2, 0(x10)	# 382
	flw		f3, 0(x12)	# 382
	fmul	f2, f2, f3	# 382
	fadd	f1, f1, f2	# 382
	fsw		f1, 0(x11)	# 382
beq_cont.34450:
	addi	x9, x9, 1	# 2150
	jal		x0, try_exploit_neighbors.3009.17984	# 2150
beq.34449:
	addi	x5, x9, 0	# 2153
	addi	x4, x11, 0	# 2153
	jal		x0, do_without_neighbors.2993.17981	# 2153
pretrace_diffuse_rays.3024.17991:
	ble		x5, x30, ble.34452	# 2211
	jalr	x0, x1, 0	# 2235
ble.34452:
	lw		x6, 8(x4)	# 625
	mul		x7, x30, x5	# 2111
	add		x6, x6, x7	# 2111
	lw		x6, 0(x6)	# 2111
	ble		x0, x6, ble.34454	# 2215
	jalr	x0, x1, 0	# 2234
ble.34454:
	lw		x6, 12(x4)	# 632
	add		x6, x6, x7	# 2218
	lw		x6, 0(x6)	# 2218
	sw		x5, 0(x2)	# 2218
	beq		x6, x0, beq_cont.34456	# 2218
	lw		x6, 24(x4)	# 662
	addi	x6, x6, 0	# 664
	lw		x6, 0(x6)	# 664
	lui		x8, 130592	# 295
	ori		x8, x8, 130592	# 295
	fsw		f0, 0(x8)	# 295
	lui		x9, 130596	# 296
	ori		x9, x9, 130596	# 296
	fsw		f0, 0(x9)	# 296
	lui		x10, 130600	# 297
	ori		x10, x10, 130600	# 297
	fsw		f0, 0(x10)	# 297
	lw		x11, 28(x4)	# 676
	lw		x12, 4(x4)	# 617
	lui		x13, 130716	# 98
	ori		x13, x13, 130716	# 98
	mul		x6, x30, x6	# 2227
	add		x6, x13, x6	# 2227
	lw		x6, 0(x6)	# 2227
	add		x11, x11, x7	# 2228
	lw		x11, 0(x11)	# 2228
	add		x12, x12, x7	# 2229
	lw		x12, 0(x12)	# 2229
	addi	x13, x12, 0	# 307
	flw		f1, 0(x13)	# 307
	lui		x13, 130648	# 307
	ori		x13, x13, 130648	# 307
	fsw		f1, 0(x13)	# 307
	addi	x13, x12, 4	# 308
	flw		f1, 0(x13)	# 308
	lui		x13, 130652	# 308
	ori		x13, x13, 130652	# 308
	fsw		f1, 0(x13)	# 308
	addi	x13, x12, 8	# 309
	flw		f1, 0(x13)	# 309
	lui		x13, 130656	# 309
	ori		x13, x13, 130656	# 309
	fsw		f1, 0(x13)	# 309
	lui		x13, 130000	# 1363
	ori		x13, x13, 130000	# 1363
	lw		x13, 0(x13)	# 1363
	addi	x13, x13, -1	# 1363
	sw		x10, -4(x2)	# 1363
	sw		x9, -8(x2)	# 1363
	sw		x8, -12(x2)	# 1363
	sw		x7, -16(x2)	# 1363
	sw		x4, -20(x2)	# 1363
	sw		x12, -24(x2)	# 1363
	sw		x11, -28(x2)	# 1363
	sw		x6, -32(x2)	# 1363
	addi	x5, x13, 0	# 1363
	addi	x4, x12, 0	# 1363
	sw		x1, -36(x2)	# 1363
	addi	x2, x2, -40	# 1363
	jal		x1, setup_startp_constants.2873.17923	# 1363
	addi	x2, x2, 40	# 1363
	lw		x1, -36(x2)	# 1363
	addi	x7, x0, 118	# 2012
	lw		x4, -32(x2)	# 2012
	lw		x5, -28(x2)	# 2012
	lw		x6, -24(x2)	# 2012
	sw		x1, -36(x2)	# 2012
	addi	x2, x2, -40	# 2012
	jal		x1, iter_trace_diffuse_rays.2971.17976	# 2012
	addi	x2, x2, 40	# 2012
	lw		x1, -36(x2)	# 2012
	lw		x4, -20(x2)	# 646
	lw		x5, 20(x4)	# 646
	lw		x6, -16(x2)	# 2231
	add		x5, x5, x6	# 2231
	lw		x5, 0(x5)	# 2231
	lw		x6, -12(x2)	# 307
	flw		f1, 0(x6)	# 307
	addi	x6, x5, 0	# 307
	fsw		f1, 0(x6)	# 307
	lw		x6, -8(x2)	# 308
	flw		f1, 0(x6)	# 308
	addi	x6, x5, 4	# 308
	fsw		f1, 0(x6)	# 308
	lw		x6, -4(x2)	# 309
	flw		f1, 0(x6)	# 309
	addi	x5, x5, 8	# 309
	fsw		f1, 0(x5)	# 309
beq_cont.34456:
	lw		x5, 0(x2)	# 2233
	addi	x5, x5, 1	# 2233
	jal		x0, pretrace_diffuse_rays.3024.17991	# 2233
pretrace_pixels.3027.17994:
	add		x7, x0, x0	# 6
	ble		x0, x5, ble.34458	# 2241
	jalr	x0, x1, 0	# 2261
ble.34458:
	lui		x8, 130632	# 2243
	ori		x8, x8, 130632	# 2243
	flw		f4, 0(x8)	# 2243
	lui		x8, 130624	# 2243
	ori		x8, x8, 130624	# 2243
	lw		x8, 0(x8)	# 2243
	sub		x8, x5, x8	# 2243
	sw		x6, 0(x2)	# 2243
	sw		x4, -4(x2)	# 2243
	sw		x5, -8(x2)	# 2243
	fsw		f2, -12(x2)	# 2243
	fsw		f1, -16(x2)	# 2243
	addi	x4, x8, 0	# 2243
	sw		x1, -20(x2)	# 2243
	addi	x2, x2, -24	# 2243
	jal		x1, min_caml_float_of_int	# 2243
	addi	x2, x2, 24	# 2243
	lw		x1, -20(x2)	# 2243
	fmul	f1, f4, f1	# 2243
	lui		x4, 130660	# 2244
	ori		x4, x4, 130660	# 2244
	flw		f2, 0(x4)	# 2244
	fmul	f2, f1, f2	# 2244
	flw		f4, -16(x2)	# 2244
	fadd	f2, f2, f4	# 2244
	lui		x5, 130696	# 90
	ori		x5, x5, 130696	# 90
	fsw		f2, 0(x5)	# 2244
	lui		x4, 130664	# 2245
	ori		x4, x4, 130664	# 2245
	flw		f2, 0(x4)	# 2245
	fmul	f2, f1, f2	# 2245
	flw		f5, -12(x2)	# 2245
	fadd	f2, f2, f5	# 2245
	lui		x4, 130700	# 2245
	ori		x4, x4, 130700	# 2245
	fsw		f2, 0(x4)	# 2245
	lui		x6, 130668	# 2246
	ori		x6, x6, 130668	# 2246
	flw		f2, 0(x6)	# 2246
	fmul	f1, f1, f2	# 2246
	fadd	f1, f1, f3	# 2246
	lui		x6, 130704	# 2246
	ori		x6, x6, 130704	# 2246
	fsw		f1, 0(x6)	# 2246
	flw		f1, 0(x5)	# 331
	fmul	f2, f1, f1	# 127
	flw		f6, 0(x4)	# 331
	fmul	f7, f6, f6	# 127
	fadd	f2, f2, f7	# 331
	flw		f7, 0(x6)	# 331
	fmul	f8, f7, f7	# 127
	fadd	f2, f2, f8	# 331
	fsqrt	f2, f2	# 331
	fadd	f8, f0, f0	# 11
	feq		f2, f0, feq.34461	# 120
	fdiv	f2, f30, f2	# 332
	jal		x0, feq_cont.34460	# 120
feq.34461:
	fadd	f2, f0, f30	# 332
feq_cont.34460:
	fmul	f1, f1, f2	# 333
	fsw		f1, 0(x5)	# 333
	fmul	f1, f6, f2	# 334
	fsw		f1, 0(x4)	# 334
	fmul	f1, f7, f2	# 335
	fsw		f1, 0(x6)	# 335
	lui		x4, 130604	# 295
	ori		x4, x4, 130604	# 295
	fsw		f0, 0(x4)	# 295
	lui		x6, 130608	# 296
	ori		x6, x6, 130608	# 296
	fsw		f0, 0(x6)	# 296
	lui		x8, 130612	# 297
	ori		x8, x8, 130612	# 297
	fsw		f0, 0(x8)	# 297
	lui		x9, 130300	# 307
	ori		x9, x9, 130300	# 307
	flw		f1, 0(x9)	# 307
	lui		x9, 130636	# 307
	ori		x9, x9, 130636	# 307
	fsw		f1, 0(x9)	# 307
	lui		x9, 130304	# 308
	ori		x9, x9, 130304	# 308
	flw		f1, 0(x9)	# 308
	lui		x9, 130640	# 308
	ori		x9, x9, 130640	# 308
	fsw		f1, 0(x9)	# 308
	lui		x9, 130308	# 309
	ori		x9, x9, 130308	# 309
	flw		f1, 0(x9)	# 309
	lui		x9, 130644	# 309
	ori		x9, x9, 130644	# 309
	fsw		f1, 0(x9)	# 309
	fadd	f1, f0, f30	# 2252
	lw		x9, -8(x2)	# 2252
	mul		x10, x30, x9	# 2252
	lw		x11, -4(x2)	# 2252
	add		x10, x11, x10	# 2252
	lw		x10, 0(x10)	# 2252
	fsw		f3, -20(x2)	# 2252
	sw		x0, -24(x2)	# 2252
	sw		x8, -28(x2)	# 2252
	sw		x6, -32(x2)	# 2252
	sw		x4, -36(x2)	# 2252
	sw		x10, -40(x2)	# 2252
	addi	x6, x10, 0	# 2252
	addi	x4, x0, 0	# 2252
	fadd	f2, f0, f0	# 2252
	sw		x1, -44(x2)	# 2252
	addi	x2, x2, -48	# 2252
	jal		x1, trace_ray.2962.17970	# 2252
	addi	x2, x2, 48	# 2252
	lw		x1, -44(x2)	# 2252
	lw		x4, -40(x2)	# 610
	lw		x5, 0(x4)	# 610
	lw		x6, -36(x2)	# 307
	flw		f1, 0(x6)	# 307
	addi	x6, x5, 0	# 307
	fsw		f1, 0(x6)	# 307
	lw		x6, -32(x2)	# 308
	flw		f1, 0(x6)	# 308
	addi	x6, x5, 4	# 308
	fsw		f1, 0(x6)	# 308
	lw		x6, -28(x2)	# 309
	flw		f1, 0(x6)	# 309
	addi	x5, x5, 8	# 309
	fsw		f1, 0(x5)	# 309
	lw		x5, 24(x4)	# 669
	addi	x5, x5, 0	# 671
	lw		x6, 0(x2)	# 671
	sw		x6, 0(x5)	# 671
	lw		x5, -24(x2)	# 2257
	sw		x1, -44(x2)	# 2257
	addi	x2, x2, -48	# 2257
	jal		x1, pretrace_diffuse_rays.3024.17991	# 2257
	addi	x2, x2, 48	# 2257
	lw		x1, -44(x2)	# 2257
	lw		x4, -8(x2)	# 2259
	addi	x5, x4, -1	# 2259
	lw		x4, 0(x2)	# 272
	addi	x4, x4, 1	# 272
	addi	x6, x0, 5	# 98
	ble		x6, x4, ble.34463	# 273
	addi	x6, x4, 0	# 273
	jal		x0, ble_cont.34462	# 273
ble.34463:
	addi	x6, x4, -5	# 273
ble_cont.34462:
	lw		x4, -4(x2)	# 2259
	flw		f1, -16(x2)	# 2259
	flw		f2, -12(x2)	# 2259
	flw		f3, -20(x2)	# 2259
	jal		x0, pretrace_pixels.3027.17994	# 2259
scan_pixel.3038.18001:
	add		x10, x0, x0	# 6
	lui		x11, 130616	# 2282
	ori		x11, x11, 130616	# 2282
	lw		x11, 0(x11)	# 2282
	ble		x11, x4, ble.34464	# 2282
	mul		x12, x30, x4	# 2285
	add		x12, x7, x12	# 2285
	lw		x12, 0(x12)	# 2285
	lw		x13, 0(x12)	# 610
	addi	x14, x13, 0	# 307
	flw		f1, 0(x14)	# 307
	lui		x14, 130604	# 307
	ori		x14, x14, 130604	# 307
	fsw		f1, 0(x14)	# 307
	addi	x15, x13, 4	# 308
	flw		f1, 0(x15)	# 308
	lui		x15, 130608	# 308
	ori		x15, x15, 130608	# 308
	fsw		f1, 0(x15)	# 308
	addi	x13, x13, 8	# 309
	flw		f1, 0(x13)	# 309
	lui		x13, 130612	# 309
	ori		x13, x13, 130612	# 309
	fsw		f1, 0(x13)	# 309
	lui		x16, 130620	# 2098
	ori		x16, x16, 130620	# 2098
	lw		x16, 0(x16)	# 2098
	addi	x17, x5, 1	# 2098
	ble		x16, x17, ble.34466	# 2098
	ble		x5, x0, ble.34468	# 2099
	addi	x16, x4, 1	# 2100
	ble		x11, x16, ble.34470	# 2100
	ble		x4, x0, ble.34472	# 2101
	addi	x11, x0, 1	# 2102
	jal		x0, ble_cont.34465	# 2101
ble.34472:
	addi	x11, x0, 0	# 2103
	jal		x0, ble_cont.34465	# 2100
ble.34470:
	addi	x11, x0, 0	# 2104
	jal		x0, ble_cont.34465	# 2099
ble.34468:
	addi	x11, x0, 0	# 2105
	jal		x0, ble_cont.34465	# 2098
ble.34466:
	addi	x11, x0, 0	# 2106
ble_cont.34465:
	sw		x8, 0(x2)	# 2288
	sw		x7, -4(x2)	# 2288
	sw		x6, -8(x2)	# 2288
	sw		x5, -12(x2)	# 2288
	sw		x4, -16(x2)	# 2288
	sw		x13, -20(x2)	# 2288
	sw		x15, -24(x2)	# 2288
	sw		x0, -28(x2)	# 2288
	sw		x14, -32(x2)	# 2288
	sw		x9, -36(x2)	# 2288
	beq		x11, x0, beq.34474	# 2288
	addi	x9, x0, 0	# 2289
	sw		x1, -40(x2)	# 2289
	addi	x2, x2, -44	# 2289
	jal		x1, try_exploit_neighbors.3009.17984	# 2289
	addi	x2, x2, 44	# 2289
	lw		x1, -40(x2)	# 2289
	jal		x0, beq_cont.34473	# 2288
beq.34474:
	addi	x5, x0, 0	# 2291
	addi	x4, x12, 0	# 2291
	sw		x1, -40(x2)	# 2291
	addi	x2, x2, -44	# 2291
	jal		x1, do_without_neighbors.2993.17981	# 2291
	addi	x2, x2, 44	# 2291
	lw		x1, -40(x2)	# 2291
beq_cont.34473:
	lw		x5, -36(x2)	# 2188
	beq		x5, x24, beq.34476	# 2188
	lw		x4, -32(x2)	# 2196
	flw		f1, 0(x4)	# 2196
	sw		x1, -40(x2)	# 2182
	addi	x2, x2, -44	# 2182
	jal		x1, min_caml_int_of_float	# 2182
	addi	x2, x2, 44	# 2182
	lw		x1, -40(x2)	# 2182
	addi	x5, x0, 255	# 2183
	ble		x4, x5, ble.34478	# 2183
	addi	x4, x0, 255	# 2183
	jal		x0, ble_cont.34477	# 2183
ble.34478:
	lw		x6, -28(x2)	# 2183
	ble		x6, x4, ble_cont.34477	# 2183
	addi	x4, x0, 0	# 2183
ble_cont.34477:
	sw		x1, -40(x2)	# 2184
	addi	x2, x2, -44	# 2184
	jal		x1, min_caml_print_char	# 2184
	addi	x2, x2, 44	# 2184
	lw		x1, -40(x2)	# 2184
	lw		x4, -24(x2)	# 2197
	flw		f1, 0(x4)	# 2197
	sw		x5, -40(x2)	# 2182
	sw		x1, -44(x2)	# 2182
	addi	x2, x2, -48	# 2182
	jal		x1, min_caml_int_of_float	# 2182
	addi	x2, x2, 48	# 2182
	lw		x1, -44(x2)	# 2182
	lw		x5, -40(x2)	# 2183
	ble		x4, x5, ble.34482	# 2183
	addi	x4, x0, 255	# 2183
	jal		x0, ble_cont.34481	# 2183
ble.34482:
	lw		x6, -28(x2)	# 2183
	ble		x6, x4, ble_cont.34481	# 2183
	addi	x4, x0, 0	# 2183
ble_cont.34481:
	sw		x1, -44(x2)	# 2184
	addi	x2, x2, -48	# 2184
	jal		x1, min_caml_print_char	# 2184
	addi	x2, x2, 48	# 2184
	lw		x1, -44(x2)	# 2184
	lw		x4, -20(x2)	# 2198
	flw		f1, 0(x4)	# 2198
	sw		x1, -44(x2)	# 2182
	addi	x2, x2, -48	# 2182
	jal		x1, min_caml_int_of_float	# 2182
	addi	x2, x2, 48	# 2182
	lw		x1, -44(x2)	# 2182
	lw		x5, -40(x2)	# 2183
	ble		x4, x5, ble.34486	# 2183
	addi	x4, x0, 255	# 2183
	jal		x0, ble_cont.34485	# 2183
ble.34486:
	lw		x5, -28(x2)	# 2183
	ble		x5, x4, ble_cont.34485	# 2183
	addi	x4, x0, 0	# 2183
ble_cont.34485:
	sw		x1, -44(x2)	# 2184
	addi	x2, x2, -48	# 2184
	jal		x1, min_caml_print_char	# 2184
	addi	x2, x2, 48	# 2184
	lw		x1, -44(x2)	# 2184
	jal		x0, beq_cont.34475	# 2188
beq.34476:
	lw		x4, -32(x2)	# 2189
	flw		f1, 0(x4)	# 2189
	sw		x1, -44(x2)	# 2176
	addi	x2, x2, -48	# 2176
	jal		x1, min_caml_int_of_float	# 2176
	addi	x2, x2, 48	# 2176
	lw		x1, -44(x2)	# 2176
	addi	x5, x0, 255	# 2177
	ble		x4, x5, ble.34490	# 2177
	addi	x4, x0, 255	# 2177
	jal		x0, ble_cont.34489	# 2177
ble.34490:
	lw		x6, -28(x2)	# 2177
	ble		x6, x4, ble_cont.34489	# 2177
	addi	x4, x0, 0	# 2177
ble_cont.34489:
	sw		x5, -44(x2)	# 2178
	sw		x1, -48(x2)	# 2178
	addi	x2, x2, -52	# 2178
	jal		x1, print_int.2626.17910	# 2178
	addi	x2, x2, 52	# 2178
	lw		x1, -48(x2)	# 2178
	addi	x4, x0, 32	# 2190
	sw		x4, -48(x2)	# 2190
	sw		x1, -52(x2)	# 2190
	addi	x2, x2, -56	# 2190
	jal		x1, min_caml_print_char	# 2190
	addi	x2, x2, 56	# 2190
	lw		x1, -52(x2)	# 2190
	lw		x4, -24(x2)	# 2191
	flw		f1, 0(x4)	# 2191
	sw		x1, -52(x2)	# 2176
	addi	x2, x2, -56	# 2176
	jal		x1, min_caml_int_of_float	# 2176
	addi	x2, x2, 56	# 2176
	lw		x1, -52(x2)	# 2176
	lw		x5, -44(x2)	# 2177
	ble		x4, x5, ble.34494	# 2177
	addi	x4, x0, 255	# 2177
	jal		x0, ble_cont.34493	# 2177
ble.34494:
	lw		x6, -28(x2)	# 2177
	ble		x6, x4, ble_cont.34493	# 2177
	addi	x4, x0, 0	# 2177
ble_cont.34493:
	sw		x1, -52(x2)	# 2178
	addi	x2, x2, -56	# 2178
	jal		x1, print_int.2626.17910	# 2178
	addi	x2, x2, 56	# 2178
	lw		x1, -52(x2)	# 2178
	lw		x4, -48(x2)	# 2192
	sw		x1, -52(x2)	# 2192
	addi	x2, x2, -56	# 2192
	jal		x1, min_caml_print_char	# 2192
	addi	x2, x2, 56	# 2192
	lw		x1, -52(x2)	# 2192
	lw		x4, -20(x2)	# 2193
	flw		f1, 0(x4)	# 2193
	sw		x1, -52(x2)	# 2176
	addi	x2, x2, -56	# 2176
	jal		x1, min_caml_int_of_float	# 2176
	addi	x2, x2, 56	# 2176
	lw		x1, -52(x2)	# 2176
	lw		x5, -44(x2)	# 2177
	ble		x4, x5, ble.34498	# 2177
	addi	x4, x0, 255	# 2177
	jal		x0, ble_cont.34497	# 2177
ble.34498:
	lw		x5, -28(x2)	# 2177
	ble		x5, x4, ble_cont.34497	# 2177
	addi	x4, x0, 0	# 2177
ble_cont.34497:
	sw		x1, -52(x2)	# 2178
	addi	x2, x2, -56	# 2178
	jal		x1, print_int.2626.17910	# 2178
	addi	x2, x2, 56	# 2178
	lw		x1, -52(x2)	# 2178
	addi	x4, x0, 10	# 2194
	sw		x1, -52(x2)	# 2194
	addi	x2, x2, -56	# 2194
	jal		x1, min_caml_print_char	# 2194
	addi	x2, x2, 56	# 2194
	lw		x1, -52(x2)	# 2194
beq_cont.34475:
	lw		x4, -16(x2)	# 2296
	addi	x4, x4, 1	# 2296
	lw		x5, -12(x2)	# 2296
	lw		x6, -8(x2)	# 2296
	lw		x7, -4(x2)	# 2296
	lw		x8, 0(x2)	# 2296
	lw		x9, -36(x2)	# 2296
	jal		x0, scan_pixel.3038.18001	# 2296
ble.34464:
	jalr	x0, x1, 0	# 2297
scan_line.3045.18008:
	lui		x10, 130620	# 2303
	ori		x10, x10, 130620	# 2303
	lw		x10, 0(x10)	# 2303
	ble		x10, x4, ble.34502	# 2303
	addi	x10, x10, -1	# 2305
	sw		x8, 0(x2)	# 2305
	sw		x9, -4(x2)	# 2305
	sw		x7, -8(x2)	# 2305
	sw		x6, -12(x2)	# 2305
	sw		x5, -16(x2)	# 2305
	sw		x4, -20(x2)	# 2305
	ble		x10, x4, ble_cont.34503	# 2305
	addi	x10, x4, 1	# 2306
	lui		x11, 130632	# 2266
	ori		x11, x11, 130632	# 2266
	flw		f1, 0(x11)	# 2266
	lui		x11, 130628	# 2266
	ori		x11, x11, 130628	# 2266
	lw		x11, 0(x11)	# 2266
	sub		x10, x10, x11	# 2266
	fsw		f1, -24(x2)	# 2266
	addi	x4, x10, 0	# 2266
	sw		x1, -28(x2)	# 2266
	addi	x2, x2, -32	# 2266
	jal		x1, min_caml_float_of_int	# 2266
	addi	x2, x2, 32	# 2266
	lw		x1, -28(x2)	# 2266
	flw		f2, -24(x2)	# 2266
	fmul	f1, f2, f1	# 2266
	lui		x4, 130672	# 2269
	ori		x4, x4, 130672	# 2269
	flw		f2, 0(x4)	# 2269
	fmul	f2, f1, f2	# 2269
	lui		x4, 130684	# 2269
	ori		x4, x4, 130684	# 2269
	flw		f3, 0(x4)	# 2269
	fadd	f2, f2, f3	# 2269
	lui		x4, 130676	# 2270
	ori		x4, x4, 130676	# 2270
	flw		f3, 0(x4)	# 2270
	fmul	f3, f1, f3	# 2270
	lui		x4, 130688	# 2270
	ori		x4, x4, 130688	# 2270
	flw		f4, 0(x4)	# 2270
	fadd	f3, f3, f4	# 2270
	lui		x4, 130680	# 2271
	ori		x4, x4, 130680	# 2271
	flw		f4, 0(x4)	# 2271
	fmul	f1, f1, f4	# 2271
	lui		x4, 130692	# 2271
	ori		x4, x4, 130692	# 2271
	flw		f4, 0(x4)	# 2271
	fadd	f1, f1, f4	# 2271
	lui		x4, 130616	# 2272
	ori		x4, x4, 130616	# 2272
	lw		x4, 0(x4)	# 2272
	addi	x5, x4, -1	# 2272
	addi	x6, x8, 0	# 2272
	addi	x4, x7, 0	# 2272
	fadd	f31, f0, f3	# 2272
	fadd	f3, f0, f1	# 2272
	fadd	f1, f0, f2	# 2272
	fadd	f2, f0, f31	# 2272
	sw		x1, -28(x2)	# 2272
	addi	x2, x2, -32	# 2272
	jal		x1, pretrace_pixels.3027.17994	# 2272
	addi	x2, x2, 32	# 2272
	lw		x1, -28(x2)	# 2272
ble_cont.34503:
	add		x4, x0, x0	# 6
	lw		x5, -20(x2)	# 2308
	lw		x6, -16(x2)	# 2308
	lw		x7, -12(x2)	# 2308
	lw		x8, -8(x2)	# 2308
	lw		x9, -4(x2)	# 2308
	sw		x1, -28(x2)	# 2308
	addi	x2, x2, -32	# 2308
	jal		x1, scan_pixel.3038.18001	# 2308
	addi	x2, x2, 32	# 2308
	lw		x1, -28(x2)	# 2308
	lw		x4, -20(x2)	# 2309
	addi	x4, x4, 1	# 2309
	lw		x5, 0(x2)	# 272
	addi	x5, x5, 2	# 272
	addi	x6, x0, 5	# 98
	ble		x6, x5, ble.34506	# 273
	addi	x8, x5, 0	# 273
	jal		x0, ble_cont.34505	# 273
ble.34506:
	addi	x8, x5, -5	# 273
ble_cont.34505:
	lw		x5, -12(x2)	# 2309
	lw		x6, -8(x2)	# 2309
	lw		x7, -16(x2)	# 2309
	lw		x9, -4(x2)	# 2309
	jal		x0, scan_line.3045.18008	# 2309
ble.34502:
	jalr	x0, x1, 0	# 2310
init_line_elements.3056.18015:
	add		x6, x0, x0	# 6
	ble		x0, x5, ble.34508	# 2345
	jalr	x0, x1, 0	# 2349
ble.34508:
	fadd	f1, f0, f0	# 11
	add		x7, x0, x24	# 16
	sw		x4, 0(x2)	# 2332
	sw		x5, -4(x2)	# 2332
	fsw		f0, -8(x2)	# 2332
	sw		x24, -12(x2)	# 2332
	addi	x4, x24, 0	# 2332
	sw		x1, -16(x2)	# 2332
	addi	x2, x2, -20	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 20	# 2332
	lw		x1, -16(x2)	# 2332
	lw		x5, -12(x2)	# 2320
	flw		f1, -8(x2)	# 2320
	sw		x4, -16(x2)	# 2320
	addi	x4, x5, 0	# 2320
	sw		x1, -20(x2)	# 2320
	addi	x2, x2, -24	# 2320
	jal		x1, min_caml_create_float_array	# 2320
	addi	x2, x2, 24	# 2320
	lw		x1, -20(x2)	# 2320
	addi	x5, x4, 0	# 2320
	addi	x4, x0, 5	# 98
	sw		x0, -20(x2)	# 2321
	sw		x4, -24(x2)	# 2321
	sw		x1, -28(x2)	# 2321
	addi	x2, x2, -32	# 2321
	jal		x1, min_caml_create_array	# 2321
	addi	x2, x2, 32	# 2321
	lw		x1, -28(x2)	# 2321
	lw		x5, -12(x2)	# 2322
	flw		f1, -8(x2)	# 2322
	sw		x4, -28(x2)	# 2322
	addi	x4, x5, 0	# 2322
	sw		x1, -32(x2)	# 2322
	addi	x2, x2, -36	# 2322
	jal		x1, min_caml_create_float_array	# 2322
	addi	x2, x2, 36	# 2322
	lw		x1, -32(x2)	# 2322
	add		x5, x0, x21	# 6
	lw		x6, -28(x2)	# 2322
	addi	x7, x6, 4	# 2322
	sw		x4, 0(x7)	# 2322
	lw		x4, -12(x2)	# 2323
	flw		f1, -8(x2)	# 2323
	sw		x21, -32(x2)	# 2323
	sw		x1, -36(x2)	# 2323
	addi	x2, x2, -40	# 2323
	jal		x1, min_caml_create_float_array	# 2323
	addi	x2, x2, 40	# 2323
	lw		x1, -36(x2)	# 2323
	addi	x5, x6, 8	# 2323
	sw		x4, 0(x5)	# 2323
	lw		x4, -12(x2)	# 2324
	flw		f1, -8(x2)	# 2324
	sw		x1, -36(x2)	# 2324
	addi	x2, x2, -40	# 2324
	jal		x1, min_caml_create_float_array	# 2324
	addi	x2, x2, 40	# 2324
	lw		x1, -36(x2)	# 2324
	addi	x5, x6, 12	# 2324
	sw		x4, 0(x5)	# 2324
	lw		x4, -12(x2)	# 2325
	flw		f1, -8(x2)	# 2325
	sw		x1, -36(x2)	# 2325
	addi	x2, x2, -40	# 2325
	jal		x1, min_caml_create_float_array	# 2325
	addi	x2, x2, 40	# 2325
	lw		x1, -36(x2)	# 2325
	addi	x5, x6, 16	# 2325
	sw		x4, 0(x5)	# 2325
	lw		x4, -24(x2)	# 2334
	lw		x5, -20(x2)	# 2334
	sw		x1, -36(x2)	# 2334
	addi	x2, x2, -40	# 2334
	jal		x1, min_caml_create_array	# 2334
	addi	x2, x2, 40	# 2334
	lw		x1, -36(x2)	# 2334
	lw		x5, -24(x2)	# 2335
	lw		x6, -20(x2)	# 2335
	sw		x4, -36(x2)	# 2335
	addi	x4, x5, 0	# 2335
	addi	x5, x6, 0	# 2335
	sw		x1, -40(x2)	# 2335
	addi	x2, x2, -44	# 2335
	jal		x1, min_caml_create_array	# 2335
	addi	x2, x2, 44	# 2335
	lw		x1, -40(x2)	# 2335
	lw		x5, -12(x2)	# 2320
	flw		f1, -8(x2)	# 2320
	sw		x4, -40(x2)	# 2320
	addi	x4, x5, 0	# 2320
	sw		x1, -44(x2)	# 2320
	addi	x2, x2, -48	# 2320
	jal		x1, min_caml_create_float_array	# 2320
	addi	x2, x2, 48	# 2320
	lw		x1, -44(x2)	# 2320
	addi	x5, x4, 0	# 2320
	lw		x4, -24(x2)	# 2321
	sw		x1, -44(x2)	# 2321
	addi	x2, x2, -48	# 2321
	jal		x1, min_caml_create_array	# 2321
	addi	x2, x2, 48	# 2321
	lw		x1, -44(x2)	# 2321
	lw		x5, -12(x2)	# 2322
	flw		f1, -8(x2)	# 2322
	sw		x4, -44(x2)	# 2322
	addi	x4, x5, 0	# 2322
	sw		x1, -48(x2)	# 2322
	addi	x2, x2, -52	# 2322
	jal		x1, min_caml_create_float_array	# 2322
	addi	x2, x2, 52	# 2322
	lw		x1, -48(x2)	# 2322
	lw		x5, -44(x2)	# 2322
	addi	x6, x5, 4	# 2322
	sw		x4, 0(x6)	# 2322
	lw		x4, -12(x2)	# 2323
	flw		f1, -8(x2)	# 2323
	sw		x1, -48(x2)	# 2323
	addi	x2, x2, -52	# 2323
	jal		x1, min_caml_create_float_array	# 2323
	addi	x2, x2, 52	# 2323
	lw		x1, -48(x2)	# 2323
	lw		x5, -44(x2)	# 2323
	addi	x6, x5, 8	# 2323
	sw		x4, 0(x6)	# 2323
	lw		x4, -12(x2)	# 2324
	flw		f1, -8(x2)	# 2324
	sw		x1, -48(x2)	# 2324
	addi	x2, x2, -52	# 2324
	jal		x1, min_caml_create_float_array	# 2324
	addi	x2, x2, 52	# 2324
	lw		x1, -48(x2)	# 2324
	lw		x5, -44(x2)	# 2324
	addi	x6, x5, 12	# 2324
	sw		x4, 0(x6)	# 2324
	lw		x4, -12(x2)	# 2325
	flw		f1, -8(x2)	# 2325
	sw		x1, -48(x2)	# 2325
	addi	x2, x2, -52	# 2325
	jal		x1, min_caml_create_float_array	# 2325
	addi	x2, x2, 52	# 2325
	lw		x1, -48(x2)	# 2325
	lw		x5, -44(x2)	# 2325
	addi	x6, x5, 16	# 2325
	sw		x4, 0(x6)	# 2325
	lw		x4, -12(x2)	# 2320
	flw		f1, -8(x2)	# 2320
	sw		x1, -48(x2)	# 2320
	addi	x2, x2, -52	# 2320
	jal		x1, min_caml_create_float_array	# 2320
	addi	x2, x2, 52	# 2320
	lw		x1, -48(x2)	# 2320
	addi	x5, x4, 0	# 2320
	lw		x4, -24(x2)	# 2321
	sw		x1, -48(x2)	# 2321
	addi	x2, x2, -52	# 2321
	jal		x1, min_caml_create_array	# 2321
	addi	x2, x2, 52	# 2321
	lw		x1, -48(x2)	# 2321
	lw		x5, -12(x2)	# 2322
	flw		f1, -8(x2)	# 2322
	sw		x4, -48(x2)	# 2322
	addi	x4, x5, 0	# 2322
	sw		x1, -52(x2)	# 2322
	addi	x2, x2, -56	# 2322
	jal		x1, min_caml_create_float_array	# 2322
	addi	x2, x2, 56	# 2322
	lw		x1, -52(x2)	# 2322
	lw		x5, -48(x2)	# 2322
	addi	x6, x5, 4	# 2322
	sw		x4, 0(x6)	# 2322
	lw		x4, -12(x2)	# 2323
	flw		f1, -8(x2)	# 2323
	sw		x1, -52(x2)	# 2323
	addi	x2, x2, -56	# 2323
	jal		x1, min_caml_create_float_array	# 2323
	addi	x2, x2, 56	# 2323
	lw		x1, -52(x2)	# 2323
	lw		x5, -48(x2)	# 2323
	addi	x6, x5, 8	# 2323
	sw		x4, 0(x6)	# 2323
	lw		x4, -12(x2)	# 2324
	flw		f1, -8(x2)	# 2324
	sw		x1, -52(x2)	# 2324
	addi	x2, x2, -56	# 2324
	jal		x1, min_caml_create_float_array	# 2324
	addi	x2, x2, 56	# 2324
	lw		x1, -52(x2)	# 2324
	lw		x5, -48(x2)	# 2324
	addi	x6, x5, 12	# 2324
	sw		x4, 0(x6)	# 2324
	lw		x4, -12(x2)	# 2325
	flw		f1, -8(x2)	# 2325
	sw		x1, -52(x2)	# 2325
	addi	x2, x2, -56	# 2325
	jal		x1, min_caml_create_float_array	# 2325
	addi	x2, x2, 56	# 2325
	lw		x1, -52(x2)	# 2325
	lw		x5, -48(x2)	# 2325
	addi	x6, x5, 16	# 2325
	sw		x4, 0(x6)	# 2325
	lw		x4, -32(x2)	# 2338
	lw		x6, -20(x2)	# 2338
	addi	x5, x6, 0	# 2338
	sw		x1, -52(x2)	# 2338
	addi	x2, x2, -56	# 2338
	jal		x1, min_caml_create_array	# 2338
	addi	x2, x2, 56	# 2338
	lw		x1, -52(x2)	# 2338
	lw		x5, -12(x2)	# 2320
	flw		f1, -8(x2)	# 2320
	sw		x4, -52(x2)	# 2320
	addi	x4, x5, 0	# 2320
	sw		x1, -56(x2)	# 2320
	addi	x2, x2, -60	# 2320
	jal		x1, min_caml_create_float_array	# 2320
	addi	x2, x2, 60	# 2320
	lw		x1, -56(x2)	# 2320
	addi	x5, x4, 0	# 2320
	lw		x4, -24(x2)	# 2321
	sw		x1, -56(x2)	# 2321
	addi	x2, x2, -60	# 2321
	jal		x1, min_caml_create_array	# 2321
	addi	x2, x2, 60	# 2321
	lw		x1, -56(x2)	# 2321
	lw		x5, -12(x2)	# 2322
	flw		f1, -8(x2)	# 2322
	sw		x4, -56(x2)	# 2322
	addi	x4, x5, 0	# 2322
	sw		x1, -60(x2)	# 2322
	addi	x2, x2, -64	# 2322
	jal		x1, min_caml_create_float_array	# 2322
	addi	x2, x2, 64	# 2322
	lw		x1, -60(x2)	# 2322
	lw		x5, -56(x2)	# 2322
	addi	x6, x5, 4	# 2322
	sw		x4, 0(x6)	# 2322
	lw		x4, -12(x2)	# 2323
	flw		f1, -8(x2)	# 2323
	sw		x1, -60(x2)	# 2323
	addi	x2, x2, -64	# 2323
	jal		x1, min_caml_create_float_array	# 2323
	addi	x2, x2, 64	# 2323
	lw		x1, -60(x2)	# 2323
	lw		x5, -56(x2)	# 2323
	addi	x6, x5, 8	# 2323
	sw		x4, 0(x6)	# 2323
	lw		x4, -12(x2)	# 2324
	flw		f1, -8(x2)	# 2324
	sw		x1, -60(x2)	# 2324
	addi	x2, x2, -64	# 2324
	jal		x1, min_caml_create_float_array	# 2324
	addi	x2, x2, 64	# 2324
	lw		x1, -60(x2)	# 2324
	lw		x5, -56(x2)	# 2324
	addi	x6, x5, 12	# 2324
	sw		x4, 0(x6)	# 2324
	lw		x4, -12(x2)	# 2325
	flw		f1, -8(x2)	# 2325
	sw		x1, -60(x2)	# 2325
	addi	x2, x2, -64	# 2325
	jal		x1, min_caml_create_float_array	# 2325
	addi	x2, x2, 64	# 2325
	lw		x1, -60(x2)	# 2325
	lw		x5, -56(x2)	# 2325
	addi	x6, x5, 16	# 2325
	sw		x4, 0(x6)	# 2325
	addi	x4, x3, 0	# 2340
	addi	x3, x3, 32	# 2340
	sw		x5, 28(x4)	# 2340
	lw		x5, -52(x2)	# 2340
	sw		x5, 24(x4)	# 2340
	lw		x5, -48(x2)	# 2340
	sw		x5, 20(x4)	# 2340
	lw		x5, -44(x2)	# 2340
	sw		x5, 16(x4)	# 2340
	lw		x5, -40(x2)	# 2340
	sw		x5, 12(x4)	# 2340
	lw		x5, -36(x2)	# 2340
	sw		x5, 8(x4)	# 2340
	lw		x5, -28(x2)	# 2340
	sw		x5, 4(x4)	# 2340
	lw		x5, -16(x2)	# 2340
	sw		x5, 0(x4)	# 2340
	lw		x5, -4(x2)	# 2346
	mul		x6, x30, x5	# 2346
	lw		x7, 0(x2)	# 2346
	add		x6, x7, x6	# 2346
	sw		x4, 0(x6)	# 2346
	addi	x5, x5, -1	# 2347
	addi	x4, x7, 0	# 2347
	jal		x0, init_line_elements.3056.18015	# 2347
calc_dirvec.3066.18018:
	addi	x7, x0, 5	# 98
	ble		x7, x4, ble.34509	# 2382
	fmul	f1, f2, f2	# 2373
	lui		x7, %hi(l.29693)	# 2373
	ori		x7, x7, %lo(l.29693)	# 2373
	flw		f2, 0(x7)	# 2373
	fadd	f1, f1, f2	# 2373
	fsqrt	f1, f1	# 2373
	fdiv	f6, f30, f1	# 2374
	fsw		f4, 0(x2)	# 2375
	fsw		f30, -4(x2)	# 2375
	fsw		f2, -8(x2)	# 2375
	sw		x4, -12(x2)	# 2375
	fsw		f1, -16(x2)	# 2375
	fsw		f3, -20(x2)	# 2375
	fadd	f1, f0, f6	# 2375
	sw		x1, -24(x2)	# 2375
	addi	x2, x2, -28	# 2375
	jal		x1, atan.2624.17908	# 2375
	addi	x2, x2, 28	# 2375
	lw		x1, -24(x2)	# 2375
	flw		f2, -20(x2)	# 2376
	fmul	f1, f1, f2	# 2376
	fsw		f1, -24(x2)	# 2368
	sw		x1, -28(x2)	# 2368
	addi	x2, x2, -32	# 2368
	jal		x1, sin.2620.17904	# 2368
	addi	x2, x2, 32	# 2368
	lw		x1, -28(x2)	# 2368
	flw		f2, -24(x2)	# 2368
	fsw		f1, -28(x2)	# 2368
	fadd	f1, f0, f2	# 2368
	sw		x1, -32(x2)	# 2368
	addi	x2, x2, -36	# 2368
	jal		x1, cos.2622.17906	# 2368
	addi	x2, x2, 36	# 2368
	lw		x1, -32(x2)	# 2368
	flw		f2, -28(x2)	# 2368
	fdiv	f1, f2, f1	# 2368
	flw		f2, -16(x2)	# 2377
	fmul	f1, f1, f2	# 2377
	lw		x4, -12(x2)	# 2398
	addi	x4, x4, 1	# 2398
	fmul	f2, f1, f1	# 2373
	flw		f3, -8(x2)	# 2373
	fadd	f2, f2, f3	# 2373
	fsqrt	f2, f2	# 2373
	flw		f3, -4(x2)	# 2374
	fdiv	f3, f3, f2	# 2374
	fsw		f1, -32(x2)	# 2375
	sw		x4, -36(x2)	# 2375
	fsw		f2, -40(x2)	# 2375
	fadd	f1, f0, f3	# 2375
	sw		x1, -44(x2)	# 2375
	addi	x2, x2, -48	# 2375
	jal		x1, atan.2624.17908	# 2375
	addi	x2, x2, 48	# 2375
	lw		x1, -44(x2)	# 2375
	flw		f2, 0(x2)	# 2376
	fmul	f1, f1, f2	# 2376
	fsw		f1, -44(x2)	# 2368
	sw		x1, -48(x2)	# 2368
	addi	x2, x2, -52	# 2368
	jal		x1, sin.2620.17904	# 2368
	addi	x2, x2, 52	# 2368
	lw		x1, -48(x2)	# 2368
	flw		f2, -44(x2)	# 2368
	fsw		f1, -48(x2)	# 2368
	fadd	f1, f0, f2	# 2368
	sw		x1, -52(x2)	# 2368
	addi	x2, x2, -56	# 2368
	jal		x1, cos.2622.17906	# 2368
	addi	x2, x2, 56	# 2368
	lw		x1, -52(x2)	# 2368
	flw		f2, -48(x2)	# 2368
	fdiv	f1, f2, f1	# 2368
	flw		f2, -40(x2)	# 2377
	fmul	f2, f1, f2	# 2377
	lw		x4, -36(x2)	# 2398
	flw		f1, -32(x2)	# 2398
	flw		f3, -20(x2)	# 2398
	flw		f4, 0(x2)	# 2398
	jal		x0, calc_dirvec.3066.18018	# 2398
ble.34509:
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 2383
	fadd	f3, f3, f30	# 2383
	fsqrt	f3, f3	# 2383
	fdiv	f1, f1, f3	# 2384
	fdiv	f2, f2, f3	# 2385
	fdiv	f3, f30, f3	# 2386
	lui		x4, 130716	# 98
	ori		x4, x4, 130716	# 98
	mul		x5, x30, x5	# 2389
	add		x4, x4, x5	# 2389
	lw		x4, 0(x4)	# 2389
	mul		x5, x30, x6	# 2390
	add		x5, x4, x5	# 2390
	lw		x5, 0(x5)	# 2390
	lw		x5, 0(x5)	# 687
	addi	x7, x5, 0	# 288
	fsw		f1, 0(x7)	# 288
	addi	x7, x5, 4	# 289
	fsw		f2, 0(x7)	# 289
	addi	x5, x5, 8	# 290
	fsw		f3, 0(x5)	# 290
	addi	x5, x6, 40	# 2391
	mul		x5, x30, x5	# 2391
	add		x5, x4, x5	# 2391
	lw		x5, 0(x5)	# 2391
	lw		x5, 0(x5)	# 687
	fsub	f4, f0, f2	# 123
	addi	x7, x5, 0	# 288
	fsw		f1, 0(x7)	# 288
	addi	x7, x5, 4	# 289
	fsw		f3, 0(x7)	# 289
	addi	x5, x5, 8	# 290
	fsw		f4, 0(x5)	# 290
	addi	x5, x6, 80	# 2392
	mul		x5, x30, x5	# 2392
	add		x5, x4, x5	# 2392
	lw		x5, 0(x5)	# 2392
	lw		x5, 0(x5)	# 687
	fsub	f5, f0, f1	# 123
	addi	x7, x5, 0	# 288
	fsw		f3, 0(x7)	# 288
	addi	x7, x5, 4	# 289
	fsw		f5, 0(x7)	# 289
	addi	x5, x5, 8	# 290
	fsw		f4, 0(x5)	# 290
	addi	x5, x6, 1	# 2393
	mul		x5, x30, x5	# 2393
	add		x5, x4, x5	# 2393
	lw		x5, 0(x5)	# 2393
	lw		x5, 0(x5)	# 687
	fsub	f3, f0, f3	# 123
	addi	x7, x5, 0	# 288
	fsw		f5, 0(x7)	# 288
	addi	x7, x5, 4	# 289
	fsw		f4, 0(x7)	# 289
	addi	x5, x5, 8	# 290
	fsw		f3, 0(x5)	# 290
	addi	x5, x6, 41	# 2394
	mul		x5, x30, x5	# 2394
	add		x5, x4, x5	# 2394
	lw		x5, 0(x5)	# 2394
	lw		x5, 0(x5)	# 687
	addi	x7, x5, 0	# 288
	fsw		f5, 0(x7)	# 288
	addi	x7, x5, 4	# 289
	fsw		f3, 0(x7)	# 289
	addi	x5, x5, 8	# 290
	fsw		f2, 0(x5)	# 290
	addi	x5, x6, 81	# 2395
	mul		x5, x30, x5	# 2395
	add		x4, x4, x5	# 2395
	lw		x4, 0(x4)	# 2395
	lw		x4, 0(x4)	# 687
	addi	x5, x4, 0	# 288
	fsw		f3, 0(x5)	# 288
	addi	x5, x4, 4	# 289
	fsw		f1, 0(x5)	# 289
	addi	x4, x4, 8	# 290
	fsw		f2, 0(x4)	# 290
	jalr	x0, x1, 0	# 290
calc_dirvecs.3074.18026:
	add		x7, x0, x0	# 6
	ble		x0, x4, ble.34511	# 2403
	jalr	x0, x1, 0	# 2412
ble.34511:
	sw		x4, 0(x2)	# 2405
	fsw		f1, -4(x2)	# 2405
	sw		x6, -8(x2)	# 2405
	sw		x5, -12(x2)	# 2405
	sw		x1, -16(x2)	# 2405
	addi	x2, x2, -20	# 2405
	jal		x1, min_caml_float_of_int	# 2405
	addi	x2, x2, 20	# 2405
	lw		x1, -16(x2)	# 2405
	lui		x4, %hi(l.27834)	# 2405
	ori		x4, x4, %lo(l.27834)	# 2405
	flw		f2, 0(x4)	# 2405
	fmul	f1, f1, f2	# 2405
	lui		x4, %hi(l.30767)	# 2405
	ori		x4, x4, %lo(l.30767)	# 2405
	flw		f2, 0(x4)	# 2405
	fsub	f3, f1, f2	# 2405
	fadd	f2, f0, f0	# 11
	lw		x5, -12(x2)	# 2406
	lw		x6, -8(x2)	# 2406
	flw		f4, -4(x2)	# 2406
	fsw		f0, -16(x2)	# 2406
	sw		x0, -20(x2)	# 2406
	fsw		f1, -24(x2)	# 2406
	addi	x4, x0, 0	# 2406
	fadd	f1, f0, f0	# 2406
	sw		x1, -28(x2)	# 2406
	addi	x2, x2, -32	# 2406
	jal		x1, calc_dirvec.3066.18018	# 2406
	addi	x2, x2, 32	# 2406
	lw		x1, -28(x2)	# 2406
	lui		x4, %hi(l.29693)	# 2408
	ori		x4, x4, %lo(l.29693)	# 2408
	flw		f1, 0(x4)	# 2408
	flw		f2, -24(x2)	# 2408
	fadd	f3, f2, f1	# 2408
	lw		x4, -8(x2)	# 2409
	addi	x6, x4, 2	# 2409
	lw		x5, -20(x2)	# 2409
	lw		x7, -12(x2)	# 2409
	flw		f1, -16(x2)	# 2409
	flw		f4, -4(x2)	# 2409
	addi	x4, x5, 0	# 2409
	addi	x5, x7, 0	# 2409
	fadd	f2, f0, f1	# 2409
	sw		x1, -28(x2)	# 2409
	addi	x2, x2, -32	# 2409
	jal		x1, calc_dirvec.3066.18018	# 2409
	addi	x2, x2, 32	# 2409
	lw		x1, -28(x2)	# 2409
	lw		x4, 0(x2)	# 2411
	addi	x4, x4, -1	# 2411
	lw		x5, -12(x2)	# 272
	addi	x5, x5, 1	# 272
	addi	x6, x0, 5	# 98
	ble		x6, x5, ble.34514	# 273
	jal		x0, ble_cont.34513	# 273
ble.34514:
	addi	x5, x5, -5	# 273
ble_cont.34513:
	lw		x6, -8(x2)	# 2411
	flw		f1, -4(x2)	# 2411
	jal		x0, calc_dirvecs.3074.18026	# 2411
calc_dirvec_rows.3079.18031:
	ble		x0, x4, ble.34515	# 2417
	jalr	x0, x1, 0	# 2421
ble.34515:
	sw		x4, 0(x2)	# 2418
	sw		x6, -4(x2)	# 2418
	sw		x5, -8(x2)	# 2418
	sw		x1, -12(x2)	# 2418
	addi	x2, x2, -16	# 2418
	jal		x1, min_caml_float_of_int	# 2418
	addi	x2, x2, 16	# 2418
	lw		x1, -12(x2)	# 2418
	lui		x4, %hi(l.27834)	# 2418
	ori		x4, x4, %lo(l.27834)	# 2418
	flw		f2, 0(x4)	# 2418
	fmul	f1, f1, f2	# 2418
	lui		x4, %hi(l.30767)	# 2418
	ori		x4, x4, %lo(l.30767)	# 2418
	flw		f2, 0(x4)	# 2418
	fsub	f1, f1, f2	# 2418
	add		x4, x0, x30	# 2419
	lw		x5, -8(x2)	# 2419
	lw		x6, -4(x2)	# 2419
	sw		x1, -12(x2)	# 2419
	addi	x2, x2, -16	# 2419
	jal		x1, calc_dirvecs.3074.18026	# 2419
	addi	x2, x2, 16	# 2419
	lw		x1, -12(x2)	# 2419
	lw		x4, 0(x2)	# 2420
	addi	x4, x4, -1	# 2420
	lw		x5, -8(x2)	# 272
	addi	x5, x5, 2	# 272
	addi	x6, x0, 5	# 98
	ble		x6, x5, ble.34518	# 273
	jal		x0, ble_cont.34517	# 273
ble.34518:
	addi	x5, x5, -5	# 273
ble_cont.34517:
	lw		x6, -4(x2)	# 2420
	addi	x6, x6, 4	# 2420
	jal		x0, calc_dirvec_rows.3079.18031	# 2420
create_dirvec_elements.3085.18035:
	ble		x0, x5, ble.34519	# 2436
	jalr	x0, x1, 0	# 2439
ble.34519:
	fadd	f1, f0, f0	# 11
	add		x6, x0, x24	# 16
	sw		x4, 0(x2)	# 2430
	sw		x5, -4(x2)	# 2430
	addi	x4, x24, 0	# 2430
	sw		x1, -8(x2)	# 2430
	addi	x2, x2, -12	# 2430
	jal		x1, min_caml_create_float_array	# 2430
	addi	x2, x2, 12	# 2430
	lw		x1, -8(x2)	# 2430
	addi	x5, x4, 0	# 2430
	lui		x4, 130000	# 2431
	ori		x4, x4, 130000	# 2431
	lw		x4, 0(x4)	# 2431
	sw		x5, -8(x2)	# 2431
	sw		x1, -12(x2)	# 2431
	addi	x2, x2, -16	# 2431
	jal		x1, min_caml_create_array	# 2431
	addi	x2, x2, 16	# 2431
	lw		x1, -12(x2)	# 2431
	addi	x5, x3, 0	# 2432
	addi	x3, x3, 8	# 2432
	sw		x4, 4(x5)	# 2432
	lw		x4, -8(x2)	# 2432
	sw		x4, 0(x5)	# 2432
	lw		x4, -4(x2)	# 2437
	mul		x6, x30, x4	# 2437
	lw		x7, 0(x2)	# 2437
	add		x6, x7, x6	# 2437
	sw		x5, 0(x6)	# 2437
	addi	x5, x4, -1	# 2438
	addi	x4, x7, 0	# 2438
	jal		x0, create_dirvec_elements.3085.18035	# 2438
create_dirvecs.3088.18038:
	ble		x0, x4, ble.34521	# 2443
	jalr	x0, x1, 0	# 2447
ble.34521:
	addi	x5, x0, 120	# 2444
	fadd	f1, f0, f0	# 11
	add		x6, x0, x24	# 16
	sw		x4, 0(x2)	# 2430
	sw		x5, -4(x2)	# 2430
	addi	x4, x24, 0	# 2430
	sw		x1, -8(x2)	# 2430
	addi	x2, x2, -12	# 2430
	jal		x1, min_caml_create_float_array	# 2430
	addi	x2, x2, 12	# 2430
	lw		x1, -8(x2)	# 2430
	addi	x5, x4, 0	# 2430
	lui		x4, 130000	# 2431
	ori		x4, x4, 130000	# 2431
	lw		x4, 0(x4)	# 2431
	sw		x5, -8(x2)	# 2431
	sw		x1, -12(x2)	# 2431
	addi	x2, x2, -16	# 2431
	jal		x1, min_caml_create_array	# 2431
	addi	x2, x2, 16	# 2431
	lw		x1, -12(x2)	# 2431
	addi	x5, x3, 0	# 2432
	addi	x3, x3, 8	# 2432
	sw		x4, 4(x5)	# 2432
	lw		x4, -8(x2)	# 2432
	sw		x4, 0(x5)	# 2432
	lw		x4, -4(x2)	# 2444
	sw		x1, -12(x2)	# 2444
	addi	x2, x2, -16	# 2444
	jal		x1, min_caml_create_array	# 2444
	addi	x2, x2, 16	# 2444
	lw		x1, -12(x2)	# 2444
	lui		x5, 130716	# 98
	ori		x5, x5, 130716	# 98
	lw		x6, 0(x2)	# 2444
	mul		x7, x30, x6	# 2444
	add		x5, x5, x7	# 2444
	sw		x4, 0(x5)	# 2444
	lw		x4, 0(x5)	# 2445
	addi	x5, x0, 118	# 2445
	sw		x1, -12(x2)	# 2445
	addi	x2, x2, -16	# 2445
	jal		x1, create_dirvec_elements.3085.18035	# 2445
	addi	x2, x2, 16	# 2445
	lw		x1, -12(x2)	# 2445
	lw		x4, 0(x2)	# 2446
	addi	x4, x4, -1	# 2446
	jal		x0, create_dirvecs.3088.18038	# 2446
init_dirvec_constants.3090.18040:
	ble		x0, x5, ble.34523	# 2455
	jalr	x0, x1, 0	# 2458
ble.34523:
	mul		x6, x30, x5	# 2456
	add		x6, x4, x6	# 2456
	lw		x6, 0(x6)	# 2456
	lui		x7, 130000	# 1335
	ori		x7, x7, 130000	# 1335
	lw		x7, 0(x7)	# 1335
	addi	x7, x7, -1	# 1335
	sw		x4, 0(x2)	# 1335
	sw		x5, -4(x2)	# 1335
	addi	x5, x7, 0	# 1335
	addi	x4, x6, 0	# 1335
	sw		x1, -8(x2)	# 1335
	addi	x2, x2, -12	# 1335
	jal		x1, iter_setup_dirvec_constants.2868.17920	# 1335
	addi	x2, x2, 12	# 1335
	lw		x1, -8(x2)	# 1335
	lw		x4, -4(x2)	# 2457
	addi	x5, x4, -1	# 2457
	lw		x4, 0(x2)	# 2457
	jal		x0, init_dirvec_constants.3090.18040	# 2457
init_vecset_constants.3093.18043:
	ble		x0, x4, ble.34525	# 2462
	jalr	x0, x1, 0	# 2465
ble.34525:
	lui		x5, 130716	# 98
	ori		x5, x5, 130716	# 98
	mul		x6, x30, x4	# 2463
	add		x5, x5, x6	# 2463
	lw		x5, 0(x5)	# 2463
	addi	x6, x0, 119	# 2463
	sw		x4, 0(x2)	# 2463
	addi	x4, x5, 0	# 2463
	addi	x5, x6, 0	# 2463
	sw		x1, -4(x2)	# 2463
	addi	x2, x2, -8	# 2463
	jal		x1, init_dirvec_constants.3090.18040	# 2463
	addi	x2, x2, 8	# 2463
	lw		x1, -4(x2)	# 2463
	lw		x4, 0(x2)	# 2464
	addi	x4, x4, -1	# 2464
	jal		x0, init_vecset_constants.3093.18043	# 2464
min_caml_start:
	addi	x2, x2, -4	# 0
	addi	x30, x0, 4	# 0
	lui		x3, 130000	# 0
	ori		x3, x3, 130000	# 0
	lui		x4, %hi(l.27790)	# 0
	ori		x4, x4, %lo(l.27790)	# 0
	flw		f0, 0(x4)	# 0
	lui		x4, %hi(l.27808)	# 0
	ori		x4, x4, %lo(l.27808)	# 0
	flw		f30, 0(x4)	# 0
	lui		x4, %hi(l.33470)	# 0
	ori		x4, x4, %lo(l.33470)	# 0
	flw		f29, 0(x4)	# 0
	lui		x4, %hi(l.28322)	# 0
	ori		x4, x4, %lo(l.28322)	# 0
	flw		f18, 0(x4)	# 0
	lui		x4, %hi(l.28320)	# 0
	ori		x4, x4, %lo(l.28320)	# 0
	flw		f19, 0(x4)	# 0
	lui		x4, %hi(l.28445)	# 0
	ori		x4, x4, %lo(l.28445)	# 0
	flw		f20, 0(x4)	# 0
	lui		x4, %hi(l.29279)	# 0
	ori		x4, x4, %lo(l.29279)	# 0
	flw		f21, 0(x4)	# 0
	lui		x4, %hi(l.29288)	# 0
	ori		x4, x4, %lo(l.29288)	# 0
	flw		f22, 0(x4)	# 0
	lui		x4, %hi(l.29973)	# 0
	ori		x4, x4, %lo(l.29973)	# 0
	flw		f23, 0(x4)	# 0
	lui		x4, %hi(l.29746)	# 0
	ori		x4, x4, %lo(l.29746)	# 0
	flw		f24, 0(x4)	# 0
	lui		x4, %hi(l.27904)	# 0
	ori		x4, x4, %lo(l.27904)	# 0
	flw		f25, 0(x4)	# 0
	lui		x4, %hi(l.29543)	# 0
	ori		x4, x4, %lo(l.29543)	# 0
	flw		f26, 0(x4)	# 0
	lui		x4, %hi(l.29545)	# 0
	ori		x4, x4, %lo(l.29545)	# 0
	flw		f27, 0(x4)	# 0
	lui		x4, %hi(l.29522)	# 0
	ori		x4, x4, %lo(l.29522)	# 0
	flw		f28, 0(x4)	# 0
	addi	x20, x0, -1	# 0
	addi	x21, x0, 1	# 0
	addi	x22, x0, 2	# 0
	lui		x23, 130540	# 0
	ori		x23, x23, 130540	# 0
	addi	x24, x0, 3	# 0
	lui		x25, 130552	# 0
	ori		x25, x25, 130552	# 0
	lui		x26, 130560	# 0
	ori		x26, x26, 130560	# 0
	lui		x27, 130556	# 0
	ori		x27, x27, 130556	# 0
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
	lui		x4, 130004	# 11
	ori		x4, x4, 130004	# 11
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
	lui		x6, 130048	# 12
	ori		x6, x6, 130048	# 12
	sw		x6, -16(x2)	# 12
	sw		x4, -20(x2)	# 12
	sw		x1, -24(x2)	# 12
	addi	x2, x2, -28	# 12
	jal		x1, min_caml_create_array	# 12
	addi	x2, x2, 28	# 12
	lw		x1, -24(x2)	# 12
	add		x4, x0, x24	# 16
	flw		f1, -8(x2)	# 16
	sw		x24, -24(x2)	# 16
	sw		x1, -28(x2)	# 16
	addi	x2, x2, -32	# 16
	jal		x1, min_caml_create_float_array	# 16
	addi	x2, x2, 32	# 16
	lw		x1, -28(x2)	# 16
	lw		x4, -24(x2)	# 19
	flw		f1, -8(x2)	# 19
	sw		x1, -28(x2)	# 19
	addi	x2, x2, -32	# 19
	jal		x1, min_caml_create_float_array	# 19
	addi	x2, x2, 32	# 19
	lw		x1, -28(x2)	# 19
	lw		x4, -24(x2)	# 22
	flw		f1, -8(x2)	# 22
	sw		x1, -28(x2)	# 22
	addi	x2, x2, -32	# 22
	jal		x1, min_caml_create_float_array	# 22
	addi	x2, x2, 32	# 22
	lw		x1, -28(x2)	# 22
	lui		x4, %hi(l.29512)	# 25
	ori		x4, x4, %lo(l.29512)	# 25
	flw		f1, 0(x4)	# 25
	lw		x4, 0(x2)	# 25
	sw		x1, -28(x2)	# 25
	addi	x2, x2, -32	# 25
	jal		x1, min_caml_create_float_array	# 25
	addi	x2, x2, 32	# 25
	lw		x1, -28(x2)	# 25
	addi	x4, x0, 50	# 28
	add		x5, x0, x20	# 28
	lui		x6, 130328	# 28
	ori		x6, x6, 130328	# 28
	lw		x8, 0(x2)	# 28
	sw		x6, -28(x2)	# 28
	sw		x4, -32(x2)	# 28
	addi	x4, x8, 0	# 28
	sw		x1, -36(x2)	# 28
	addi	x2, x2, -40	# 28
	jal		x1, min_caml_create_array	# 28
	addi	x2, x2, 40	# 28
	lw		x1, -36(x2)	# 28
	lw		x4, -32(x2)	# 28
	lw		x5, -28(x2)	# 28
	sw		x1, -36(x2)	# 28
	addi	x2, x2, -40	# 28
	jal		x1, min_caml_create_array	# 28
	addi	x2, x2, 40	# 28
	lw		x1, -36(x2)	# 28
	lui		x4, 130332	# 31
	ori		x4, x4, 130332	# 31
	lw		x5, 0(x4)	# 31
	lui		x4, 130532	# 31
	ori		x4, x4, 130532	# 31
	lw		x6, 0(x2)	# 31
	sw		x4, -36(x2)	# 31
	addi	x4, x6, 0	# 31
	sw		x1, -40(x2)	# 31
	addi	x2, x2, -44	# 31
	jal		x1, min_caml_create_array	# 31
	addi	x2, x2, 44	# 31
	lw		x1, -40(x2)	# 31
	lw		x4, 0(x2)	# 31
	lw		x5, -36(x2)	# 31
	sw		x1, -40(x2)	# 31
	addi	x2, x2, -44	# 31
	jal		x1, min_caml_create_array	# 31
	addi	x2, x2, 44	# 31
	lw		x1, -40(x2)	# 31
	lw		x4, 0(x2)	# 36
	flw		f1, -8(x2)	# 36
	sw		x1, -40(x2)	# 36
	addi	x2, x2, -44	# 36
	jal		x1, min_caml_create_float_array	# 36
	addi	x2, x2, 44	# 36
	lw		x1, -40(x2)	# 36
	lw		x4, 0(x2)	# 39
	addi	x5, x7, 0	# 39
	sw		x1, -40(x2)	# 39
	addi	x2, x2, -44	# 39
	jal		x1, min_caml_create_array	# 39
	addi	x2, x2, 44	# 39
	lw		x1, -40(x2)	# 39
	fadd	f1, f0, f21	# 42
	lw		x4, 0(x2)	# 42
	sw		x1, -40(x2)	# 42
	addi	x2, x2, -44	# 42
	jal		x1, min_caml_create_float_array	# 42
	addi	x2, x2, 44	# 42
	lw		x1, -40(x2)	# 42
	lw		x4, -24(x2)	# 45
	flw		f1, -8(x2)	# 45
	sw		x1, -40(x2)	# 45
	addi	x2, x2, -44	# 45
	jal		x1, min_caml_create_float_array	# 45
	addi	x2, x2, 44	# 45
	lw		x1, -40(x2)	# 45
	lw		x4, 0(x2)	# 48
	lw		x5, -4(x2)	# 48
	sw		x1, -40(x2)	# 48
	addi	x2, x2, -44	# 48
	jal		x1, min_caml_create_array	# 48
	addi	x2, x2, 44	# 48
	lw		x1, -40(x2)	# 48
	lw		x4, -24(x2)	# 51
	flw		f1, -8(x2)	# 51
	sw		x1, -40(x2)	# 51
	addi	x2, x2, -44	# 51
	jal		x1, min_caml_create_float_array	# 51
	addi	x2, x2, 44	# 51
	lw		x1, -40(x2)	# 51
	lw		x4, -24(x2)	# 54
	flw		f1, -8(x2)	# 54
	sw		x1, -40(x2)	# 54
	addi	x2, x2, -44	# 54
	jal		x1, min_caml_create_float_array	# 54
	addi	x2, x2, 44	# 54
	lw		x1, -40(x2)	# 54
	lw		x4, -24(x2)	# 58
	flw		f1, -8(x2)	# 58
	sw		x1, -40(x2)	# 58
	addi	x2, x2, -44	# 58
	jal		x1, min_caml_create_float_array	# 58
	addi	x2, x2, 44	# 58
	lw		x1, -40(x2)	# 58
	lw		x4, -24(x2)	# 61
	flw		f1, -8(x2)	# 61
	sw		x1, -40(x2)	# 61
	addi	x2, x2, -44	# 61
	jal		x1, min_caml_create_float_array	# 61
	addi	x2, x2, 44	# 61
	lw		x1, -40(x2)	# 61
	add		x4, x0, x22	# 65
	lw		x5, -4(x2)	# 65
	sw		x22, -40(x2)	# 65
	sw		x1, -44(x2)	# 65
	addi	x2, x2, -48	# 65
	jal		x1, min_caml_create_array	# 65
	addi	x2, x2, 48	# 65
	lw		x1, -44(x2)	# 65
	lw		x4, -40(x2)	# 68
	lw		x5, -4(x2)	# 68
	sw		x1, -44(x2)	# 68
	addi	x2, x2, -48	# 68
	jal		x1, min_caml_create_array	# 68
	addi	x2, x2, 48	# 68
	lw		x1, -44(x2)	# 68
	lw		x4, 0(x2)	# 71
	flw		f1, -8(x2)	# 71
	sw		x1, -44(x2)	# 71
	addi	x2, x2, -48	# 71
	jal		x1, min_caml_create_float_array	# 71
	addi	x2, x2, 48	# 71
	lw		x1, -44(x2)	# 71
	lw		x4, -24(x2)	# 75
	flw		f1, -8(x2)	# 75
	sw		x1, -44(x2)	# 75
	addi	x2, x2, -48	# 75
	jal		x1, min_caml_create_float_array	# 75
	addi	x2, x2, 48	# 75
	lw		x1, -44(x2)	# 75
	lw		x4, -24(x2)	# 78
	flw		f1, -8(x2)	# 78
	sw		x1, -44(x2)	# 78
	addi	x2, x2, -48	# 78
	jal		x1, min_caml_create_float_array	# 78
	addi	x2, x2, 48	# 78
	lw		x1, -44(x2)	# 78
	lw		x4, -24(x2)	# 82
	flw		f1, -8(x2)	# 82
	sw		x1, -44(x2)	# 82
	addi	x2, x2, -48	# 82
	jal		x1, min_caml_create_float_array	# 82
	addi	x2, x2, 48	# 82
	lw		x1, -44(x2)	# 82
	lw		x4, -24(x2)	# 84
	flw		f1, -8(x2)	# 84
	sw		x1, -44(x2)	# 84
	addi	x2, x2, -48	# 84
	jal		x1, min_caml_create_float_array	# 84
	addi	x2, x2, 48	# 84
	lw		x1, -44(x2)	# 84
	lw		x4, -24(x2)	# 86
	flw		f1, -8(x2)	# 86
	sw		x1, -44(x2)	# 86
	addi	x2, x2, -48	# 86
	jal		x1, min_caml_create_float_array	# 86
	addi	x2, x2, 48	# 86
	lw		x1, -44(x2)	# 86
	lw		x4, -24(x2)	# 90
	flw		f1, -8(x2)	# 90
	sw		x1, -44(x2)	# 90
	addi	x2, x2, -48	# 90
	jal		x1, min_caml_create_float_array	# 90
	addi	x2, x2, 48	# 90
	lw		x1, -44(x2)	# 90
	lui		x4, 130708	# 95
	ori		x4, x4, 130708	# 95
	lw		x5, -4(x2)	# 95
	flw		f1, -8(x2)	# 95
	sw		x4, -44(x2)	# 95
	addi	x4, x5, 0	# 95
	sw		x1, -48(x2)	# 95
	addi	x2, x2, -52	# 95
	jal		x1, min_caml_create_float_array	# 95
	addi	x2, x2, 52	# 95
	lw		x1, -48(x2)	# 95
	lw		x4, -4(x2)	# 96
	lw		x5, -44(x2)	# 96
	sw		x1, -48(x2)	# 96
	addi	x2, x2, -52	# 96
	jal		x1, min_caml_create_array	# 96
	addi	x2, x2, 52	# 96
	lw		x1, -48(x2)	# 96
	addi	x5, x3, 0	# 97
	addi	x3, x3, 8	# 97
	lw		x4, -44(x2)	# 97
	sw		x4, 4(x5)	# 97
	sw		x4, 0(x5)	# 97
	lui		x4, 130716	# 97
	ori		x4, x4, 130716	# 97
	lw		x6, -4(x2)	# 97
	sw		x4, -48(x2)	# 97
	addi	x4, x6, 0	# 97
	sw		x1, -52(x2)	# 97
	addi	x2, x2, -56	# 97
	jal		x1, min_caml_create_array	# 97
	addi	x2, x2, 56	# 97
	lw		x1, -52(x2)	# 97
	addi	x4, x0, 5	# 98
	lw		x5, -48(x2)	# 98
	sw		x4, -52(x2)	# 98
	sw		x1, -56(x2)	# 98
	addi	x2, x2, -60	# 98
	jal		x1, min_caml_create_array	# 98
	addi	x2, x2, 60	# 98
	lw		x1, -56(x2)	# 98
	lui		x4, 130736	# 103
	ori		x4, x4, 130736	# 103
	lw		x5, -4(x2)	# 103
	flw		f1, -8(x2)	# 103
	sw		x4, -56(x2)	# 103
	addi	x4, x5, 0	# 103
	sw		x1, -60(x2)	# 103
	addi	x2, x2, -64	# 103
	jal		x1, min_caml_create_float_array	# 103
	addi	x2, x2, 64	# 103
	lw		x1, -60(x2)	# 103
	lw		x4, -24(x2)	# 104
	flw		f1, -8(x2)	# 104
	sw		x1, -60(x2)	# 104
	addi	x2, x2, -64	# 104
	jal		x1, min_caml_create_float_array	# 104
	addi	x2, x2, 64	# 104
	lw		x1, -60(x2)	# 104
	lui		x4, 130748	# 105
	ori		x4, x4, 130748	# 105
	lw		x5, -20(x2)	# 105
	lw		x6, -56(x2)	# 105
	sw		x4, -60(x2)	# 105
	addi	x4, x5, 0	# 105
	addi	x5, x6, 0	# 105
	sw		x1, -64(x2)	# 105
	addi	x2, x2, -68	# 105
	jal		x1, min_caml_create_array	# 105
	addi	x2, x2, 68	# 105
	lw		x1, -64(x2)	# 105
	addi	x4, x3, 0	# 106
	addi	x3, x3, 8	# 106
	lw		x5, -60(x2)	# 106
	sw		x5, 4(x4)	# 106
	lw		x5, -56(x2)	# 106
	sw		x5, 0(x4)	# 106
	lui		x6, 130996	# 111
	ori		x6, x6, 130996	# 111
	lw		x7, -4(x2)	# 111
	flw		f1, -8(x2)	# 111
	sw		x4, -64(x2)	# 111
	addi	x4, x7, 0	# 111
	sw		x1, -68(x2)	# 111
	addi	x2, x2, -72	# 111
	jal		x1, min_caml_create_float_array	# 111
	addi	x2, x2, 72	# 111
	lw		x1, -68(x2)	# 111
	lw		x4, -4(x2)	# 112
	sw		x6, -68(x2)	# 112
	addi	x5, x6, 0	# 112
	sw		x1, -72(x2)	# 112
	addi	x2, x2, -76	# 112
	jal		x1, min_caml_create_array	# 112
	addi	x2, x2, 76	# 112
	lw		x1, -72(x2)	# 112
	addi	x4, x3, 0	# 113
	addi	x3, x3, 8	# 113
	lw		x5, -68(x2)	# 113
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
	lui		x7, 131016	# 114
	ori		x7, x7, 131016	# 114
	addi	x4, x5, 0	# 114
	addi	x5, x6, 0	# 114
	sw		x1, -72(x2)	# 114
	addi	x2, x2, -76	# 114
	jal		x1, min_caml_create_array	# 114
	addi	x2, x2, 76	# 114
	lw		x1, -72(x2)	# 114
	lw		x4, 0(x2)	# 118
	lw		x5, -4(x2)	# 118
	sw		x1, -72(x2)	# 118
	addi	x2, x2, -76	# 118
	jal		x1, min_caml_create_array	# 118
	addi	x2, x2, 76	# 118
	lw		x1, -72(x2)	# 118
	addi	x4, x0, 256	# 2560
	lui		x5, 130616	# 2540
	ori		x5, x5, 130616	# 2540
	sw		x4, 0(x5)	# 2540
	add		x6, x0, x30	# 2541
	lui		x8, 130620	# 2541
	ori		x8, x8, 130620	# 2541
	sw		x4, 0(x8)	# 2541
	addi	x9, x0, 128	# 2542
	lui		x10, 130624	# 2542
	ori		x10, x10, 130624	# 2542
	sw		x9, 0(x10)	# 2542
	lui		x10, 130628	# 2543
	ori		x10, x10, 130628	# 2543
	sw		x9, 0(x10)	# 2543
	lui		x9, %hi(l.30836)	# 2544
	ori		x9, x9, %lo(l.30836)	# 2544
	flw		f2, 0(x9)	# 2544
	sw		x30, -72(x2)	# 2544
	sw		x5, -76(x2)	# 2544
	fsw		f2, -80(x2)	# 2544
	sw		x1, -84(x2)	# 2544
	addi	x2, x2, -88	# 2544
	jal		x1, min_caml_float_of_int	# 2544
	addi	x2, x2, 88	# 2544
	lw		x1, -84(x2)	# 2544
	flw		f2, -80(x2)	# 2544
	fdiv	f1, f2, f1	# 2544
	lui		x4, 130632	# 2544
	ori		x4, x4, 130632	# 2544
	fsw		f1, 0(x4)	# 2544
	lw		x5, -76(x2)	# 2354
	lw		x5, 0(x5)	# 2354
	lw		x6, -24(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x4, -84(x2)	# 2332
	sw		x5, -88(x2)	# 2332
	addi	x4, x6, 0	# 2332
	sw		x1, -92(x2)	# 2332
	addi	x2, x2, -96	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 96	# 2332
	lw		x1, -92(x2)	# 2332
	lw		x5, -24(x2)	# 2320
	flw		f1, -8(x2)	# 2320
	sw		x4, -92(x2)	# 2320
	addi	x4, x5, 0	# 2320
	sw		x1, -96(x2)	# 2320
	addi	x2, x2, -100	# 2320
	jal		x1, min_caml_create_float_array	# 2320
	addi	x2, x2, 100	# 2320
	lw		x1, -96(x2)	# 2320
	addi	x5, x4, 0	# 2320
	lw		x4, -52(x2)	# 2321
	sw		x1, -96(x2)	# 2321
	addi	x2, x2, -100	# 2321
	jal		x1, min_caml_create_array	# 2321
	addi	x2, x2, 100	# 2321
	lw		x1, -96(x2)	# 2321
	lw		x5, -24(x2)	# 2322
	flw		f1, -8(x2)	# 2322
	sw		x4, -96(x2)	# 2322
	addi	x4, x5, 0	# 2322
	sw		x1, -100(x2)	# 2322
	addi	x2, x2, -104	# 2322
	jal		x1, min_caml_create_float_array	# 2322
	addi	x2, x2, 104	# 2322
	lw		x1, -100(x2)	# 2322
	lw		x5, -96(x2)	# 2322
	addi	x6, x5, 4	# 2322
	sw		x4, 0(x6)	# 2322
	lw		x4, -24(x2)	# 2323
	flw		f1, -8(x2)	# 2323
	sw		x1, -100(x2)	# 2323
	addi	x2, x2, -104	# 2323
	jal		x1, min_caml_create_float_array	# 2323
	addi	x2, x2, 104	# 2323
	lw		x1, -100(x2)	# 2323
	lw		x5, -96(x2)	# 2323
	addi	x6, x5, 8	# 2323
	sw		x4, 0(x6)	# 2323
	lw		x4, -24(x2)	# 2324
	flw		f1, -8(x2)	# 2324
	sw		x1, -100(x2)	# 2324
	addi	x2, x2, -104	# 2324
	jal		x1, min_caml_create_float_array	# 2324
	addi	x2, x2, 104	# 2324
	lw		x1, -100(x2)	# 2324
	lw		x5, -96(x2)	# 2324
	addi	x6, x5, 12	# 2324
	sw		x4, 0(x6)	# 2324
	lw		x4, -24(x2)	# 2325
	flw		f1, -8(x2)	# 2325
	sw		x1, -100(x2)	# 2325
	addi	x2, x2, -104	# 2325
	jal		x1, min_caml_create_float_array	# 2325
	addi	x2, x2, 104	# 2325
	lw		x1, -100(x2)	# 2325
	lw		x5, -96(x2)	# 2325
	addi	x6, x5, 16	# 2325
	sw		x4, 0(x6)	# 2325
	lw		x4, -52(x2)	# 2334
	lw		x6, -4(x2)	# 2334
	addi	x5, x6, 0	# 2334
	sw		x1, -100(x2)	# 2334
	addi	x2, x2, -104	# 2334
	jal		x1, min_caml_create_array	# 2334
	addi	x2, x2, 104	# 2334
	lw		x1, -100(x2)	# 2334
	lw		x5, -52(x2)	# 2335
	lw		x6, -4(x2)	# 2335
	sw		x4, -100(x2)	# 2335
	addi	x4, x5, 0	# 2335
	addi	x5, x6, 0	# 2335
	sw		x1, -104(x2)	# 2335
	addi	x2, x2, -108	# 2335
	jal		x1, min_caml_create_array	# 2335
	addi	x2, x2, 108	# 2335
	lw		x1, -104(x2)	# 2335
	lw		x5, -24(x2)	# 2320
	flw		f1, -8(x2)	# 2320
	sw		x4, -104(x2)	# 2320
	addi	x4, x5, 0	# 2320
	sw		x1, -108(x2)	# 2320
	addi	x2, x2, -112	# 2320
	jal		x1, min_caml_create_float_array	# 2320
	addi	x2, x2, 112	# 2320
	lw		x1, -108(x2)	# 2320
	addi	x5, x4, 0	# 2320
	lw		x4, -52(x2)	# 2321
	sw		x1, -108(x2)	# 2321
	addi	x2, x2, -112	# 2321
	jal		x1, min_caml_create_array	# 2321
	addi	x2, x2, 112	# 2321
	lw		x1, -108(x2)	# 2321
	lw		x5, -24(x2)	# 2322
	flw		f1, -8(x2)	# 2322
	sw		x4, -108(x2)	# 2322
	addi	x4, x5, 0	# 2322
	sw		x1, -112(x2)	# 2322
	addi	x2, x2, -116	# 2322
	jal		x1, min_caml_create_float_array	# 2322
	addi	x2, x2, 116	# 2322
	lw		x1, -112(x2)	# 2322
	lw		x5, -108(x2)	# 2322
	addi	x6, x5, 4	# 2322
	sw		x4, 0(x6)	# 2322
	lw		x4, -24(x2)	# 2323
	flw		f1, -8(x2)	# 2323
	sw		x1, -112(x2)	# 2323
	addi	x2, x2, -116	# 2323
	jal		x1, min_caml_create_float_array	# 2323
	addi	x2, x2, 116	# 2323
	lw		x1, -112(x2)	# 2323
	lw		x5, -108(x2)	# 2323
	addi	x6, x5, 8	# 2323
	sw		x4, 0(x6)	# 2323
	lw		x4, -24(x2)	# 2324
	flw		f1, -8(x2)	# 2324
	sw		x1, -112(x2)	# 2324
	addi	x2, x2, -116	# 2324
	jal		x1, min_caml_create_float_array	# 2324
	addi	x2, x2, 116	# 2324
	lw		x1, -112(x2)	# 2324
	lw		x5, -108(x2)	# 2324
	addi	x6, x5, 12	# 2324
	sw		x4, 0(x6)	# 2324
	lw		x4, -24(x2)	# 2325
	flw		f1, -8(x2)	# 2325
	sw		x1, -112(x2)	# 2325
	addi	x2, x2, -116	# 2325
	jal		x1, min_caml_create_float_array	# 2325
	addi	x2, x2, 116	# 2325
	lw		x1, -112(x2)	# 2325
	lw		x5, -108(x2)	# 2325
	addi	x6, x5, 16	# 2325
	sw		x4, 0(x6)	# 2325
	lw		x4, -24(x2)	# 2320
	flw		f1, -8(x2)	# 2320
	sw		x1, -112(x2)	# 2320
	addi	x2, x2, -116	# 2320
	jal		x1, min_caml_create_float_array	# 2320
	addi	x2, x2, 116	# 2320
	lw		x1, -112(x2)	# 2320
	addi	x5, x4, 0	# 2320
	lw		x4, -52(x2)	# 2321
	sw		x1, -112(x2)	# 2321
	addi	x2, x2, -116	# 2321
	jal		x1, min_caml_create_array	# 2321
	addi	x2, x2, 116	# 2321
	lw		x1, -112(x2)	# 2321
	lw		x5, -24(x2)	# 2322
	flw		f1, -8(x2)	# 2322
	sw		x4, -112(x2)	# 2322
	addi	x4, x5, 0	# 2322
	sw		x1, -116(x2)	# 2322
	addi	x2, x2, -120	# 2322
	jal		x1, min_caml_create_float_array	# 2322
	addi	x2, x2, 120	# 2322
	lw		x1, -116(x2)	# 2322
	lw		x5, -112(x2)	# 2322
	addi	x6, x5, 4	# 2322
	sw		x4, 0(x6)	# 2322
	lw		x4, -24(x2)	# 2323
	flw		f1, -8(x2)	# 2323
	sw		x1, -116(x2)	# 2323
	addi	x2, x2, -120	# 2323
	jal		x1, min_caml_create_float_array	# 2323
	addi	x2, x2, 120	# 2323
	lw		x1, -116(x2)	# 2323
	lw		x5, -112(x2)	# 2323
	addi	x6, x5, 8	# 2323
	sw		x4, 0(x6)	# 2323
	lw		x4, -24(x2)	# 2324
	flw		f1, -8(x2)	# 2324
	sw		x1, -116(x2)	# 2324
	addi	x2, x2, -120	# 2324
	jal		x1, min_caml_create_float_array	# 2324
	addi	x2, x2, 120	# 2324
	lw		x1, -116(x2)	# 2324
	lw		x5, -112(x2)	# 2324
	addi	x6, x5, 12	# 2324
	sw		x4, 0(x6)	# 2324
	lw		x4, -24(x2)	# 2325
	flw		f1, -8(x2)	# 2325
	sw		x1, -116(x2)	# 2325
	addi	x2, x2, -120	# 2325
	jal		x1, min_caml_create_float_array	# 2325
	addi	x2, x2, 120	# 2325
	lw		x1, -116(x2)	# 2325
	lw		x5, -112(x2)	# 2325
	addi	x6, x5, 16	# 2325
	sw		x4, 0(x6)	# 2325
	lw		x4, 0(x2)	# 2338
	lw		x6, -4(x2)	# 2338
	addi	x5, x6, 0	# 2338
	sw		x1, -116(x2)	# 2338
	addi	x2, x2, -120	# 2338
	jal		x1, min_caml_create_array	# 2338
	addi	x2, x2, 120	# 2338
	lw		x1, -116(x2)	# 2338
	lw		x5, -24(x2)	# 2320
	flw		f1, -8(x2)	# 2320
	sw		x4, -116(x2)	# 2320
	addi	x4, x5, 0	# 2320
	sw		x1, -120(x2)	# 2320
	addi	x2, x2, -124	# 2320
	jal		x1, min_caml_create_float_array	# 2320
	addi	x2, x2, 124	# 2320
	lw		x1, -120(x2)	# 2320
	addi	x5, x4, 0	# 2320
	lw		x4, -52(x2)	# 2321
	sw		x1, -120(x2)	# 2321
	addi	x2, x2, -124	# 2321
	jal		x1, min_caml_create_array	# 2321
	addi	x2, x2, 124	# 2321
	lw		x1, -120(x2)	# 2321
	lw		x5, -24(x2)	# 2322
	flw		f1, -8(x2)	# 2322
	sw		x4, -120(x2)	# 2322
	addi	x4, x5, 0	# 2322
	sw		x1, -124(x2)	# 2322
	addi	x2, x2, -128	# 2322
	jal		x1, min_caml_create_float_array	# 2322
	addi	x2, x2, 128	# 2322
	lw		x1, -124(x2)	# 2322
	lw		x5, -120(x2)	# 2322
	addi	x6, x5, 4	# 2322
	sw		x4, 0(x6)	# 2322
	lw		x4, -24(x2)	# 2323
	flw		f1, -8(x2)	# 2323
	sw		x1, -124(x2)	# 2323
	addi	x2, x2, -128	# 2323
	jal		x1, min_caml_create_float_array	# 2323
	addi	x2, x2, 128	# 2323
	lw		x1, -124(x2)	# 2323
	lw		x5, -120(x2)	# 2323
	addi	x6, x5, 8	# 2323
	sw		x4, 0(x6)	# 2323
	lw		x4, -24(x2)	# 2324
	flw		f1, -8(x2)	# 2324
	sw		x1, -124(x2)	# 2324
	addi	x2, x2, -128	# 2324
	jal		x1, min_caml_create_float_array	# 2324
	addi	x2, x2, 128	# 2324
	lw		x1, -124(x2)	# 2324
	lw		x5, -120(x2)	# 2324
	addi	x6, x5, 12	# 2324
	sw		x4, 0(x6)	# 2324
	lw		x4, -24(x2)	# 2325
	flw		f1, -8(x2)	# 2325
	sw		x1, -124(x2)	# 2325
	addi	x2, x2, -128	# 2325
	jal		x1, min_caml_create_float_array	# 2325
	addi	x2, x2, 128	# 2325
	lw		x1, -124(x2)	# 2325
	lw		x5, -120(x2)	# 2325
	addi	x6, x5, 16	# 2325
	sw		x4, 0(x6)	# 2325
	addi	x4, x3, 0	# 2340
	addi	x3, x3, 32	# 2340
	sw		x5, 28(x4)	# 2340
	lw		x5, -116(x2)	# 2340
	sw		x5, 24(x4)	# 2340
	lw		x5, -112(x2)	# 2340
	sw		x5, 20(x4)	# 2340
	lw		x5, -108(x2)	# 2340
	sw		x5, 16(x4)	# 2340
	lw		x5, -104(x2)	# 2340
	sw		x5, 12(x4)	# 2340
	lw		x5, -100(x2)	# 2340
	sw		x5, 8(x4)	# 2340
	lw		x5, -96(x2)	# 2340
	sw		x5, 4(x4)	# 2340
	lw		x5, -92(x2)	# 2340
	sw		x5, 0(x4)	# 2340
	lw		x5, -88(x2)	# 2354
	addi	x31, x5, 0	# 2354
	addi	x5, x4, 0	# 2354
	addi	x4, x31, 0	# 2354
	sw		x1, -124(x2)	# 2354
	addi	x2, x2, -128	# 2354
	jal		x1, min_caml_create_array	# 2354
	addi	x2, x2, 128	# 2354
	lw		x1, -124(x2)	# 2354
	lw		x5, -88(x2)	# 2355
	addi	x6, x5, -2	# 2355
	sw		x7, -124(x2)	# 2355
	sw		x6, -128(x2)	# 2355
	addi	x5, x6, 0	# 2355
	sw		x1, -132(x2)	# 2355
	addi	x2, x2, -136	# 2355
	jal		x1, init_line_elements.3056.18015	# 2355
	addi	x2, x2, 136	# 2355
	lw		x1, -132(x2)	# 2355
	lw		x5, -24(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x4, -132(x2)	# 2332
	addi	x4, x5, 0	# 2332
	sw		x1, -136(x2)	# 2332
	addi	x2, x2, -140	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 140	# 2332
	lw		x1, -136(x2)	# 2332
	lw		x5, -24(x2)	# 2320
	flw		f1, -8(x2)	# 2320
	sw		x4, -136(x2)	# 2320
	addi	x4, x5, 0	# 2320
	sw		x1, -140(x2)	# 2320
	addi	x2, x2, -144	# 2320
	jal		x1, min_caml_create_float_array	# 2320
	addi	x2, x2, 144	# 2320
	lw		x1, -140(x2)	# 2320
	addi	x5, x4, 0	# 2320
	lw		x4, -52(x2)	# 2321
	sw		x1, -140(x2)	# 2321
	addi	x2, x2, -144	# 2321
	jal		x1, min_caml_create_array	# 2321
	addi	x2, x2, 144	# 2321
	lw		x1, -140(x2)	# 2321
	lw		x5, -24(x2)	# 2322
	flw		f1, -8(x2)	# 2322
	sw		x4, -140(x2)	# 2322
	addi	x4, x5, 0	# 2322
	sw		x1, -144(x2)	# 2322
	addi	x2, x2, -148	# 2322
	jal		x1, min_caml_create_float_array	# 2322
	addi	x2, x2, 148	# 2322
	lw		x1, -144(x2)	# 2322
	lw		x5, -140(x2)	# 2322
	addi	x6, x5, 4	# 2322
	sw		x4, 0(x6)	# 2322
	lw		x4, -24(x2)	# 2323
	flw		f1, -8(x2)	# 2323
	sw		x1, -144(x2)	# 2323
	addi	x2, x2, -148	# 2323
	jal		x1, min_caml_create_float_array	# 2323
	addi	x2, x2, 148	# 2323
	lw		x1, -144(x2)	# 2323
	lw		x5, -140(x2)	# 2323
	addi	x6, x5, 8	# 2323
	sw		x4, 0(x6)	# 2323
	lw		x4, -24(x2)	# 2324
	flw		f1, -8(x2)	# 2324
	sw		x1, -144(x2)	# 2324
	addi	x2, x2, -148	# 2324
	jal		x1, min_caml_create_float_array	# 2324
	addi	x2, x2, 148	# 2324
	lw		x1, -144(x2)	# 2324
	lw		x5, -140(x2)	# 2324
	addi	x6, x5, 12	# 2324
	sw		x4, 0(x6)	# 2324
	lw		x4, -24(x2)	# 2325
	flw		f1, -8(x2)	# 2325
	sw		x1, -144(x2)	# 2325
	addi	x2, x2, -148	# 2325
	jal		x1, min_caml_create_float_array	# 2325
	addi	x2, x2, 148	# 2325
	lw		x1, -144(x2)	# 2325
	lw		x5, -140(x2)	# 2325
	addi	x6, x5, 16	# 2325
	sw		x4, 0(x6)	# 2325
	lw		x4, -52(x2)	# 2334
	lw		x6, -4(x2)	# 2334
	addi	x5, x6, 0	# 2334
	sw		x1, -144(x2)	# 2334
	addi	x2, x2, -148	# 2334
	jal		x1, min_caml_create_array	# 2334
	addi	x2, x2, 148	# 2334
	lw		x1, -144(x2)	# 2334
	lw		x5, -52(x2)	# 2335
	lw		x6, -4(x2)	# 2335
	sw		x4, -144(x2)	# 2335
	addi	x4, x5, 0	# 2335
	addi	x5, x6, 0	# 2335
	sw		x1, -148(x2)	# 2335
	addi	x2, x2, -152	# 2335
	jal		x1, min_caml_create_array	# 2335
	addi	x2, x2, 152	# 2335
	lw		x1, -148(x2)	# 2335
	lw		x5, -24(x2)	# 2320
	flw		f1, -8(x2)	# 2320
	sw		x4, -148(x2)	# 2320
	addi	x4, x5, 0	# 2320
	sw		x1, -152(x2)	# 2320
	addi	x2, x2, -156	# 2320
	jal		x1, min_caml_create_float_array	# 2320
	addi	x2, x2, 156	# 2320
	lw		x1, -152(x2)	# 2320
	addi	x5, x4, 0	# 2320
	lw		x4, -52(x2)	# 2321
	sw		x1, -152(x2)	# 2321
	addi	x2, x2, -156	# 2321
	jal		x1, min_caml_create_array	# 2321
	addi	x2, x2, 156	# 2321
	lw		x1, -152(x2)	# 2321
	lw		x5, -24(x2)	# 2322
	flw		f1, -8(x2)	# 2322
	sw		x4, -152(x2)	# 2322
	addi	x4, x5, 0	# 2322
	sw		x1, -156(x2)	# 2322
	addi	x2, x2, -160	# 2322
	jal		x1, min_caml_create_float_array	# 2322
	addi	x2, x2, 160	# 2322
	lw		x1, -156(x2)	# 2322
	lw		x5, -152(x2)	# 2322
	addi	x6, x5, 4	# 2322
	sw		x4, 0(x6)	# 2322
	lw		x4, -24(x2)	# 2323
	flw		f1, -8(x2)	# 2323
	sw		x1, -156(x2)	# 2323
	addi	x2, x2, -160	# 2323
	jal		x1, min_caml_create_float_array	# 2323
	addi	x2, x2, 160	# 2323
	lw		x1, -156(x2)	# 2323
	lw		x5, -152(x2)	# 2323
	addi	x6, x5, 8	# 2323
	sw		x4, 0(x6)	# 2323
	lw		x4, -24(x2)	# 2324
	flw		f1, -8(x2)	# 2324
	sw		x1, -156(x2)	# 2324
	addi	x2, x2, -160	# 2324
	jal		x1, min_caml_create_float_array	# 2324
	addi	x2, x2, 160	# 2324
	lw		x1, -156(x2)	# 2324
	lw		x5, -152(x2)	# 2324
	addi	x6, x5, 12	# 2324
	sw		x4, 0(x6)	# 2324
	lw		x4, -24(x2)	# 2325
	flw		f1, -8(x2)	# 2325
	sw		x1, -156(x2)	# 2325
	addi	x2, x2, -160	# 2325
	jal		x1, min_caml_create_float_array	# 2325
	addi	x2, x2, 160	# 2325
	lw		x1, -156(x2)	# 2325
	lw		x5, -152(x2)	# 2325
	addi	x6, x5, 16	# 2325
	sw		x4, 0(x6)	# 2325
	lw		x4, -24(x2)	# 2320
	flw		f1, -8(x2)	# 2320
	sw		x1, -156(x2)	# 2320
	addi	x2, x2, -160	# 2320
	jal		x1, min_caml_create_float_array	# 2320
	addi	x2, x2, 160	# 2320
	lw		x1, -156(x2)	# 2320
	addi	x5, x4, 0	# 2320
	lw		x4, -52(x2)	# 2321
	sw		x1, -156(x2)	# 2321
	addi	x2, x2, -160	# 2321
	jal		x1, min_caml_create_array	# 2321
	addi	x2, x2, 160	# 2321
	lw		x1, -156(x2)	# 2321
	lw		x5, -24(x2)	# 2322
	flw		f1, -8(x2)	# 2322
	sw		x4, -156(x2)	# 2322
	addi	x4, x5, 0	# 2322
	sw		x1, -160(x2)	# 2322
	addi	x2, x2, -164	# 2322
	jal		x1, min_caml_create_float_array	# 2322
	addi	x2, x2, 164	# 2322
	lw		x1, -160(x2)	# 2322
	lw		x5, -156(x2)	# 2322
	addi	x6, x5, 4	# 2322
	sw		x4, 0(x6)	# 2322
	lw		x4, -24(x2)	# 2323
	flw		f1, -8(x2)	# 2323
	sw		x1, -160(x2)	# 2323
	addi	x2, x2, -164	# 2323
	jal		x1, min_caml_create_float_array	# 2323
	addi	x2, x2, 164	# 2323
	lw		x1, -160(x2)	# 2323
	lw		x5, -156(x2)	# 2323
	addi	x6, x5, 8	# 2323
	sw		x4, 0(x6)	# 2323
	lw		x4, -24(x2)	# 2324
	flw		f1, -8(x2)	# 2324
	sw		x1, -160(x2)	# 2324
	addi	x2, x2, -164	# 2324
	jal		x1, min_caml_create_float_array	# 2324
	addi	x2, x2, 164	# 2324
	lw		x1, -160(x2)	# 2324
	lw		x5, -156(x2)	# 2324
	addi	x6, x5, 12	# 2324
	sw		x4, 0(x6)	# 2324
	lw		x4, -24(x2)	# 2325
	flw		f1, -8(x2)	# 2325
	sw		x1, -160(x2)	# 2325
	addi	x2, x2, -164	# 2325
	jal		x1, min_caml_create_float_array	# 2325
	addi	x2, x2, 164	# 2325
	lw		x1, -160(x2)	# 2325
	lw		x5, -156(x2)	# 2325
	addi	x6, x5, 16	# 2325
	sw		x4, 0(x6)	# 2325
	lw		x4, 0(x2)	# 2338
	lw		x6, -4(x2)	# 2338
	addi	x5, x6, 0	# 2338
	sw		x1, -160(x2)	# 2338
	addi	x2, x2, -164	# 2338
	jal		x1, min_caml_create_array	# 2338
	addi	x2, x2, 164	# 2338
	lw		x1, -160(x2)	# 2338
	lw		x5, -24(x2)	# 2320
	flw		f1, -8(x2)	# 2320
	sw		x4, -160(x2)	# 2320
	addi	x4, x5, 0	# 2320
	sw		x1, -164(x2)	# 2320
	addi	x2, x2, -168	# 2320
	jal		x1, min_caml_create_float_array	# 2320
	addi	x2, x2, 168	# 2320
	lw		x1, -164(x2)	# 2320
	addi	x5, x4, 0	# 2320
	lw		x4, -52(x2)	# 2321
	sw		x1, -164(x2)	# 2321
	addi	x2, x2, -168	# 2321
	jal		x1, min_caml_create_array	# 2321
	addi	x2, x2, 168	# 2321
	lw		x1, -164(x2)	# 2321
	lw		x5, -24(x2)	# 2322
	flw		f1, -8(x2)	# 2322
	sw		x4, -164(x2)	# 2322
	addi	x4, x5, 0	# 2322
	sw		x1, -168(x2)	# 2322
	addi	x2, x2, -172	# 2322
	jal		x1, min_caml_create_float_array	# 2322
	addi	x2, x2, 172	# 2322
	lw		x1, -168(x2)	# 2322
	lw		x5, -164(x2)	# 2322
	addi	x6, x5, 4	# 2322
	sw		x4, 0(x6)	# 2322
	lw		x4, -24(x2)	# 2323
	flw		f1, -8(x2)	# 2323
	sw		x1, -168(x2)	# 2323
	addi	x2, x2, -172	# 2323
	jal		x1, min_caml_create_float_array	# 2323
	addi	x2, x2, 172	# 2323
	lw		x1, -168(x2)	# 2323
	lw		x5, -164(x2)	# 2323
	addi	x6, x5, 8	# 2323
	sw		x4, 0(x6)	# 2323
	lw		x4, -24(x2)	# 2324
	flw		f1, -8(x2)	# 2324
	sw		x1, -168(x2)	# 2324
	addi	x2, x2, -172	# 2324
	jal		x1, min_caml_create_float_array	# 2324
	addi	x2, x2, 172	# 2324
	lw		x1, -168(x2)	# 2324
	lw		x5, -164(x2)	# 2324
	addi	x6, x5, 12	# 2324
	sw		x4, 0(x6)	# 2324
	lw		x4, -24(x2)	# 2325
	flw		f1, -8(x2)	# 2325
	sw		x1, -168(x2)	# 2325
	addi	x2, x2, -172	# 2325
	jal		x1, min_caml_create_float_array	# 2325
	addi	x2, x2, 172	# 2325
	lw		x1, -168(x2)	# 2325
	lw		x5, -164(x2)	# 2325
	addi	x6, x5, 16	# 2325
	sw		x4, 0(x6)	# 2325
	addi	x4, x3, 0	# 2340
	addi	x3, x3, 32	# 2340
	sw		x5, 28(x4)	# 2340
	lw		x5, -160(x2)	# 2340
	sw		x5, 24(x4)	# 2340
	lw		x5, -156(x2)	# 2340
	sw		x5, 20(x4)	# 2340
	lw		x5, -152(x2)	# 2340
	sw		x5, 16(x4)	# 2340
	lw		x5, -148(x2)	# 2340
	sw		x5, 12(x4)	# 2340
	lw		x5, -144(x2)	# 2340
	sw		x5, 8(x4)	# 2340
	lw		x5, -140(x2)	# 2340
	sw		x5, 4(x4)	# 2340
	lw		x5, -136(x2)	# 2340
	sw		x5, 0(x4)	# 2340
	lw		x5, -88(x2)	# 2354
	addi	x31, x5, 0	# 2354
	addi	x5, x4, 0	# 2354
	addi	x4, x31, 0	# 2354
	sw		x1, -168(x2)	# 2354
	addi	x2, x2, -172	# 2354
	jal		x1, min_caml_create_array	# 2354
	addi	x2, x2, 172	# 2354
	lw		x1, -168(x2)	# 2354
	lw		x5, -128(x2)	# 2355
	sw		x1, -168(x2)	# 2355
	addi	x2, x2, -172	# 2355
	jal		x1, init_line_elements.3056.18015	# 2355
	addi	x2, x2, 172	# 2355
	lw		x1, -168(x2)	# 2355
	lw		x5, -24(x2)	# 2332
	flw		f1, -8(x2)	# 2332
	sw		x4, -168(x2)	# 2332
	addi	x4, x5, 0	# 2332
	sw		x1, -172(x2)	# 2332
	addi	x2, x2, -176	# 2332
	jal		x1, min_caml_create_float_array	# 2332
	addi	x2, x2, 176	# 2332
	lw		x1, -172(x2)	# 2332
	lw		x5, -24(x2)	# 2320
	flw		f1, -8(x2)	# 2320
	sw		x4, -172(x2)	# 2320
	addi	x4, x5, 0	# 2320
	sw		x1, -176(x2)	# 2320
	addi	x2, x2, -180	# 2320
	jal		x1, min_caml_create_float_array	# 2320
	addi	x2, x2, 180	# 2320
	lw		x1, -176(x2)	# 2320
	addi	x5, x4, 0	# 2320
	lw		x4, -52(x2)	# 2321
	sw		x1, -176(x2)	# 2321
	addi	x2, x2, -180	# 2321
	jal		x1, min_caml_create_array	# 2321
	addi	x2, x2, 180	# 2321
	lw		x1, -176(x2)	# 2321
	lw		x5, -24(x2)	# 2322
	flw		f1, -8(x2)	# 2322
	sw		x4, -176(x2)	# 2322
	addi	x4, x5, 0	# 2322
	sw		x1, -180(x2)	# 2322
	addi	x2, x2, -184	# 2322
	jal		x1, min_caml_create_float_array	# 2322
	addi	x2, x2, 184	# 2322
	lw		x1, -180(x2)	# 2322
	lw		x5, -176(x2)	# 2322
	addi	x6, x5, 4	# 2322
	sw		x4, 0(x6)	# 2322
	lw		x4, -24(x2)	# 2323
	flw		f1, -8(x2)	# 2323
	sw		x1, -180(x2)	# 2323
	addi	x2, x2, -184	# 2323
	jal		x1, min_caml_create_float_array	# 2323
	addi	x2, x2, 184	# 2323
	lw		x1, -180(x2)	# 2323
	lw		x5, -176(x2)	# 2323
	addi	x6, x5, 8	# 2323
	sw		x4, 0(x6)	# 2323
	lw		x4, -24(x2)	# 2324
	flw		f1, -8(x2)	# 2324
	sw		x1, -180(x2)	# 2324
	addi	x2, x2, -184	# 2324
	jal		x1, min_caml_create_float_array	# 2324
	addi	x2, x2, 184	# 2324
	lw		x1, -180(x2)	# 2324
	lw		x5, -176(x2)	# 2324
	addi	x6, x5, 12	# 2324
	sw		x4, 0(x6)	# 2324
	lw		x4, -24(x2)	# 2325
	flw		f1, -8(x2)	# 2325
	sw		x1, -180(x2)	# 2325
	addi	x2, x2, -184	# 2325
	jal		x1, min_caml_create_float_array	# 2325
	addi	x2, x2, 184	# 2325
	lw		x1, -180(x2)	# 2325
	lw		x5, -176(x2)	# 2325
	addi	x6, x5, 16	# 2325
	sw		x4, 0(x6)	# 2325
	lw		x4, -52(x2)	# 2334
	lw		x6, -4(x2)	# 2334
	addi	x5, x6, 0	# 2334
	sw		x1, -180(x2)	# 2334
	addi	x2, x2, -184	# 2334
	jal		x1, min_caml_create_array	# 2334
	addi	x2, x2, 184	# 2334
	lw		x1, -180(x2)	# 2334
	lw		x5, -52(x2)	# 2335
	lw		x6, -4(x2)	# 2335
	sw		x4, -180(x2)	# 2335
	addi	x4, x5, 0	# 2335
	addi	x5, x6, 0	# 2335
	sw		x1, -184(x2)	# 2335
	addi	x2, x2, -188	# 2335
	jal		x1, min_caml_create_array	# 2335
	addi	x2, x2, 188	# 2335
	lw		x1, -184(x2)	# 2335
	lw		x5, -24(x2)	# 2320
	flw		f1, -8(x2)	# 2320
	sw		x4, -184(x2)	# 2320
	addi	x4, x5, 0	# 2320
	sw		x1, -188(x2)	# 2320
	addi	x2, x2, -192	# 2320
	jal		x1, min_caml_create_float_array	# 2320
	addi	x2, x2, 192	# 2320
	lw		x1, -188(x2)	# 2320
	addi	x5, x4, 0	# 2320
	lw		x4, -52(x2)	# 2321
	sw		x1, -188(x2)	# 2321
	addi	x2, x2, -192	# 2321
	jal		x1, min_caml_create_array	# 2321
	addi	x2, x2, 192	# 2321
	lw		x1, -188(x2)	# 2321
	lw		x5, -24(x2)	# 2322
	flw		f1, -8(x2)	# 2322
	sw		x4, -188(x2)	# 2322
	addi	x4, x5, 0	# 2322
	sw		x1, -192(x2)	# 2322
	addi	x2, x2, -196	# 2322
	jal		x1, min_caml_create_float_array	# 2322
	addi	x2, x2, 196	# 2322
	lw		x1, -192(x2)	# 2322
	lw		x5, -188(x2)	# 2322
	addi	x6, x5, 4	# 2322
	sw		x4, 0(x6)	# 2322
	lw		x4, -24(x2)	# 2323
	flw		f1, -8(x2)	# 2323
	sw		x1, -192(x2)	# 2323
	addi	x2, x2, -196	# 2323
	jal		x1, min_caml_create_float_array	# 2323
	addi	x2, x2, 196	# 2323
	lw		x1, -192(x2)	# 2323
	lw		x5, -188(x2)	# 2323
	addi	x6, x5, 8	# 2323
	sw		x4, 0(x6)	# 2323
	lw		x4, -24(x2)	# 2324
	flw		f1, -8(x2)	# 2324
	sw		x1, -192(x2)	# 2324
	addi	x2, x2, -196	# 2324
	jal		x1, min_caml_create_float_array	# 2324
	addi	x2, x2, 196	# 2324
	lw		x1, -192(x2)	# 2324
	lw		x5, -188(x2)	# 2324
	addi	x6, x5, 12	# 2324
	sw		x4, 0(x6)	# 2324
	lw		x4, -24(x2)	# 2325
	flw		f1, -8(x2)	# 2325
	sw		x1, -192(x2)	# 2325
	addi	x2, x2, -196	# 2325
	jal		x1, min_caml_create_float_array	# 2325
	addi	x2, x2, 196	# 2325
	lw		x1, -192(x2)	# 2325
	lw		x5, -188(x2)	# 2325
	addi	x6, x5, 16	# 2325
	sw		x4, 0(x6)	# 2325
	lw		x4, -24(x2)	# 2320
	flw		f1, -8(x2)	# 2320
	sw		x1, -192(x2)	# 2320
	addi	x2, x2, -196	# 2320
	jal		x1, min_caml_create_float_array	# 2320
	addi	x2, x2, 196	# 2320
	lw		x1, -192(x2)	# 2320
	addi	x5, x4, 0	# 2320
	lw		x4, -52(x2)	# 2321
	sw		x1, -192(x2)	# 2321
	addi	x2, x2, -196	# 2321
	jal		x1, min_caml_create_array	# 2321
	addi	x2, x2, 196	# 2321
	lw		x1, -192(x2)	# 2321
	lw		x5, -24(x2)	# 2322
	flw		f1, -8(x2)	# 2322
	sw		x4, -192(x2)	# 2322
	addi	x4, x5, 0	# 2322
	sw		x1, -196(x2)	# 2322
	addi	x2, x2, -200	# 2322
	jal		x1, min_caml_create_float_array	# 2322
	addi	x2, x2, 200	# 2322
	lw		x1, -196(x2)	# 2322
	lw		x5, -192(x2)	# 2322
	addi	x6, x5, 4	# 2322
	sw		x4, 0(x6)	# 2322
	lw		x4, -24(x2)	# 2323
	flw		f1, -8(x2)	# 2323
	sw		x1, -196(x2)	# 2323
	addi	x2, x2, -200	# 2323
	jal		x1, min_caml_create_float_array	# 2323
	addi	x2, x2, 200	# 2323
	lw		x1, -196(x2)	# 2323
	lw		x5, -192(x2)	# 2323
	addi	x6, x5, 8	# 2323
	sw		x4, 0(x6)	# 2323
	lw		x4, -24(x2)	# 2324
	flw		f1, -8(x2)	# 2324
	sw		x1, -196(x2)	# 2324
	addi	x2, x2, -200	# 2324
	jal		x1, min_caml_create_float_array	# 2324
	addi	x2, x2, 200	# 2324
	lw		x1, -196(x2)	# 2324
	lw		x5, -192(x2)	# 2324
	addi	x6, x5, 12	# 2324
	sw		x4, 0(x6)	# 2324
	lw		x4, -24(x2)	# 2325
	flw		f1, -8(x2)	# 2325
	sw		x1, -196(x2)	# 2325
	addi	x2, x2, -200	# 2325
	jal		x1, min_caml_create_float_array	# 2325
	addi	x2, x2, 200	# 2325
	lw		x1, -196(x2)	# 2325
	lw		x5, -192(x2)	# 2325
	addi	x6, x5, 16	# 2325
	sw		x4, 0(x6)	# 2325
	lw		x4, 0(x2)	# 2338
	lw		x6, -4(x2)	# 2338
	addi	x5, x6, 0	# 2338
	sw		x1, -196(x2)	# 2338
	addi	x2, x2, -200	# 2338
	jal		x1, min_caml_create_array	# 2338
	addi	x2, x2, 200	# 2338
	lw		x1, -196(x2)	# 2338
	lw		x5, -24(x2)	# 2320
	flw		f1, -8(x2)	# 2320
	sw		x4, -196(x2)	# 2320
	addi	x4, x5, 0	# 2320
	sw		x1, -200(x2)	# 2320
	addi	x2, x2, -204	# 2320
	jal		x1, min_caml_create_float_array	# 2320
	addi	x2, x2, 204	# 2320
	lw		x1, -200(x2)	# 2320
	addi	x5, x4, 0	# 2320
	lw		x4, -52(x2)	# 2321
	sw		x1, -200(x2)	# 2321
	addi	x2, x2, -204	# 2321
	jal		x1, min_caml_create_array	# 2321
	addi	x2, x2, 204	# 2321
	lw		x1, -200(x2)	# 2321
	lw		x5, -24(x2)	# 2322
	flw		f1, -8(x2)	# 2322
	sw		x4, -200(x2)	# 2322
	addi	x4, x5, 0	# 2322
	sw		x1, -204(x2)	# 2322
	addi	x2, x2, -208	# 2322
	jal		x1, min_caml_create_float_array	# 2322
	addi	x2, x2, 208	# 2322
	lw		x1, -204(x2)	# 2322
	lw		x5, -200(x2)	# 2322
	addi	x6, x5, 4	# 2322
	sw		x4, 0(x6)	# 2322
	lw		x4, -24(x2)	# 2323
	flw		f1, -8(x2)	# 2323
	sw		x1, -204(x2)	# 2323
	addi	x2, x2, -208	# 2323
	jal		x1, min_caml_create_float_array	# 2323
	addi	x2, x2, 208	# 2323
	lw		x1, -204(x2)	# 2323
	lw		x5, -200(x2)	# 2323
	addi	x6, x5, 8	# 2323
	sw		x4, 0(x6)	# 2323
	lw		x4, -24(x2)	# 2324
	flw		f1, -8(x2)	# 2324
	sw		x1, -204(x2)	# 2324
	addi	x2, x2, -208	# 2324
	jal		x1, min_caml_create_float_array	# 2324
	addi	x2, x2, 208	# 2324
	lw		x1, -204(x2)	# 2324
	lw		x5, -200(x2)	# 2324
	addi	x6, x5, 12	# 2324
	sw		x4, 0(x6)	# 2324
	lw		x4, -24(x2)	# 2325
	flw		f1, -8(x2)	# 2325
	sw		x1, -204(x2)	# 2325
	addi	x2, x2, -208	# 2325
	jal		x1, min_caml_create_float_array	# 2325
	addi	x2, x2, 208	# 2325
	lw		x1, -204(x2)	# 2325
	lw		x5, -200(x2)	# 2325
	addi	x6, x5, 16	# 2325
	sw		x4, 0(x6)	# 2325
	addi	x4, x3, 0	# 2340
	addi	x3, x3, 32	# 2340
	sw		x5, 28(x4)	# 2340
	lw		x5, -196(x2)	# 2340
	sw		x5, 24(x4)	# 2340
	lw		x5, -192(x2)	# 2340
	sw		x5, 20(x4)	# 2340
	lw		x5, -188(x2)	# 2340
	sw		x5, 16(x4)	# 2340
	lw		x5, -184(x2)	# 2340
	sw		x5, 12(x4)	# 2340
	lw		x5, -180(x2)	# 2340
	sw		x5, 8(x4)	# 2340
	lw		x5, -176(x2)	# 2340
	sw		x5, 4(x4)	# 2340
	lw		x5, -172(x2)	# 2340
	sw		x5, 0(x4)	# 2340
	lw		x5, -88(x2)	# 2354
	addi	x31, x5, 0	# 2354
	addi	x5, x4, 0	# 2354
	addi	x4, x31, 0	# 2354
	sw		x1, -204(x2)	# 2354
	addi	x2, x2, -208	# 2354
	jal		x1, min_caml_create_array	# 2354
	addi	x2, x2, 208	# 2354
	lw		x1, -204(x2)	# 2354
	lw		x5, -128(x2)	# 2355
	sw		x1, -204(x2)	# 2355
	addi	x2, x2, -208	# 2355
	jal		x1, init_line_elements.3056.18015	# 2355
	addi	x2, x2, 208	# 2355
	lw		x1, -204(x2)	# 2355
	sw		x1, -204(x2)	# 732
	addi	x2, x2, -208	# 732
	jal		x1, min_caml_read_float	# 732
	addi	x2, x2, 208	# 732
	lw		x1, -204(x2)	# 732
	lui		x5, 130288	# 732
	ori		x5, x5, 130288	# 732
	fsw		f1, 0(x5)	# 732
	sw		x1, -204(x2)	# 733
	addi	x2, x2, -208	# 733
	jal		x1, min_caml_read_float	# 733
	addi	x2, x2, 208	# 733
	lw		x1, -204(x2)	# 733
	lui		x6, 130292	# 733
	ori		x6, x6, 130292	# 733
	fsw		f1, 0(x6)	# 733
	sw		x1, -204(x2)	# 734
	addi	x2, x2, -208	# 734
	jal		x1, min_caml_read_float	# 734
	addi	x2, x2, 208	# 734
	lw		x1, -204(x2)	# 734
	lui		x7, 130296	# 734
	ori		x7, x7, 130296	# 734
	fsw		f1, 0(x7)	# 734
	sw		x1, -204(x2)	# 736
	addi	x2, x2, -208	# 736
	jal		x1, min_caml_read_float	# 736
	addi	x2, x2, 208	# 736
	lw		x1, -204(x2)	# 736
	lui		x9, %hi(l.27872)	# 725
	ori		x9, x9, %lo(l.27872)	# 725
	flw		f2, 0(x9)	# 725
	fmul	f1, f1, f2	# 725
	sw		x4, -204(x2)	# 737
	fsw		f2, -208(x2)	# 737
	fsw		f1, -212(x2)	# 737
	sw		x1, -216(x2)	# 737
	addi	x2, x2, -220	# 737
	jal		x1, cos.2622.17906	# 737
	addi	x2, x2, 220	# 737
	lw		x1, -216(x2)	# 737
	flw		f2, -212(x2)	# 738
	fsw		f1, -216(x2)	# 738
	fadd	f1, f0, f2	# 738
	sw		x1, -220(x2)	# 738
	addi	x2, x2, -224	# 738
	jal		x1, sin.2620.17904	# 738
	addi	x2, x2, 224	# 738
	lw		x1, -220(x2)	# 738
	fsw		f1, -220(x2)	# 739
	sw		x1, -224(x2)	# 739
	addi	x2, x2, -228	# 739
	jal		x1, min_caml_read_float	# 739
	addi	x2, x2, 228	# 739
	lw		x1, -224(x2)	# 739
	flw		f2, -208(x2)	# 725
	fmul	f1, f1, f2	# 725
	fsw		f1, -224(x2)	# 740
	sw		x1, -228(x2)	# 740
	addi	x2, x2, -232	# 740
	jal		x1, cos.2622.17906	# 740
	addi	x2, x2, 232	# 740
	lw		x1, -228(x2)	# 740
	flw		f2, -224(x2)	# 741
	fsw		f1, -228(x2)	# 741
	fadd	f1, f0, f2	# 741
	sw		x1, -232(x2)	# 741
	addi	x2, x2, -236	# 741
	jal		x1, sin.2620.17904	# 741
	addi	x2, x2, 236	# 741
	lw		x1, -232(x2)	# 741
	flw		f2, -216(x2)	# 743
	fmul	f3, f2, f1	# 743
	lui		x4, %hi(l.30972)	# 743
	ori		x4, x4, %lo(l.30972)	# 743
	flw		f4, 0(x4)	# 743
	fmul	f3, f3, f4	# 743
	lui		x4, 130684	# 743
	ori		x4, x4, 130684	# 743
	fsw		f3, 0(x4)	# 743
	lui		x9, %hi(l.30976)	# 744
	ori		x9, x9, %lo(l.30976)	# 744
	flw		f3, 0(x9)	# 744
	flw		f5, -220(x2)	# 744
	fmul	f3, f5, f3	# 744
	lui		x9, 130688	# 744
	ori		x9, x9, 130688	# 744
	fsw		f3, 0(x9)	# 744
	flw		f3, -228(x2)	# 745
	fmul	f6, f2, f3	# 745
	fmul	f4, f6, f4	# 745
	lui		x11, 130692	# 745
	ori		x11, x11, 130692	# 745
	fsw		f4, 0(x11)	# 745
	lui		x12, 130660	# 747
	ori		x12, x12, 130660	# 747
	fsw		f3, 0(x12)	# 747
	lui		x12, 130664	# 748
	ori		x12, x12, 130664	# 748
	flw		f4, -8(x2)	# 748
	fsw		f4, 0(x12)	# 748
	fsub	f6, f0, f1	# 123
	lui		x12, 130668	# 749
	ori		x12, x12, 130668	# 749
	fsw		f6, 0(x12)	# 749
	fsub	f5, f0, f5	# 123
	fmul	f1, f5, f1	# 751
	lui		x12, 130672	# 751
	ori		x12, x12, 130672	# 751
	fsw		f1, 0(x12)	# 751
	fsub	f1, f0, f2	# 123
	lui		x13, 130676	# 752
	ori		x13, x13, 130676	# 752
	fsw		f1, 0(x13)	# 752
	fmul	f1, f5, f3	# 753
	lui		x14, 130680	# 753
	ori		x14, x14, 130680	# 753
	fsw		f1, 0(x14)	# 753
	flw		f1, 0(x5)	# 755
	flw		f2, 0(x4)	# 755
	fsub	f1, f1, f2	# 755
	lui		x4, 130300	# 755
	ori		x4, x4, 130300	# 755
	fsw		f1, 0(x4)	# 755
	flw		f1, 0(x6)	# 756
	flw		f3, 0(x9)	# 756
	fsub	f1, f1, f3	# 756
	lui		x4, 130304	# 756
	ori		x4, x4, 130304	# 756
	fsw		f1, 0(x4)	# 756
	flw		f1, 0(x7)	# 757
	flw		f5, 0(x11)	# 757
	fsub	f1, f1, f5	# 757
	lui		x4, 130308	# 757
	ori		x4, x4, 130308	# 757
	fsw		f1, 0(x4)	# 757
	sw		x1, -232(x2)	# 764
	addi	x2, x2, -236	# 764
	jal		x1, min_caml_read_int	# 764
	addi	x2, x2, 236	# 764
	lw		x1, -232(x2)	# 764
	sw		x1, -232(x2)	# 767
	addi	x2, x2, -236	# 767
	jal		x1, min_caml_read_float	# 767
	addi	x2, x2, 236	# 767
	lw		x1, -232(x2)	# 767
	flw		f6, -208(x2)	# 725
	fmul	f1, f1, f6	# 725
	fsw		f3, -232(x2)	# 768
	fsw		f2, -236(x2)	# 768
	fsw		f1, -240(x2)	# 768
	sw		x1, -244(x2)	# 768
	addi	x2, x2, -248	# 768
	jal		x1, sin.2620.17904	# 768
	addi	x2, x2, 248	# 768
	lw		x1, -244(x2)	# 768
	fsub	f1, f0, f1	# 123
	lui		x4, 130316	# 769
	ori		x4, x4, 130316	# 769
	fsw		f1, 0(x4)	# 769
	sw		x1, -244(x2)	# 770
	addi	x2, x2, -248	# 770
	jal		x1, min_caml_read_float	# 770
	addi	x2, x2, 248	# 770
	lw		x1, -244(x2)	# 770
	fmul	f1, f1, f6	# 725
	flw		f2, -240(x2)	# 771
	sw		x4, -244(x2)	# 771
	fsw		f1, -248(x2)	# 771
	fadd	f1, f0, f2	# 771
	sw		x1, -252(x2)	# 771
	addi	x2, x2, -256	# 771
	jal		x1, cos.2622.17906	# 771
	addi	x2, x2, 256	# 771
	lw		x1, -252(x2)	# 771
	flw		f2, -248(x2)	# 772
	fsw		f1, -252(x2)	# 772
	fadd	f1, f0, f2	# 772
	sw		x1, -256(x2)	# 772
	addi	x2, x2, -260	# 772
	jal		x1, sin.2620.17904	# 772
	addi	x2, x2, 260	# 772
	lw		x1, -256(x2)	# 772
	flw		f2, -252(x2)	# 773
	fmul	f1, f2, f1	# 773
	lui		x4, 130312	# 773
	ori		x4, x4, 130312	# 773
	fsw		f1, 0(x4)	# 773
	flw		f1, -248(x2)	# 774
	sw		x4, -256(x2)	# 774
	sw		x1, -260(x2)	# 774
	addi	x2, x2, -264	# 774
	jal		x1, cos.2622.17906	# 774
	addi	x2, x2, 264	# 774
	lw		x1, -260(x2)	# 774
	flw		f2, -252(x2)	# 775
	fmul	f1, f2, f1	# 775
	lui		x4, 130320	# 775
	ori		x4, x4, 130320	# 775
	fsw		f1, 0(x4)	# 775
	sw		x1, -260(x2)	# 776
	addi	x2, x2, -264	# 776
	jal		x1, min_caml_read_float	# 776
	addi	x2, x2, 264	# 776
	lw		x1, -260(x2)	# 776
	lui		x5, 130324	# 776
	ori		x5, x5, 130324	# 776
	fsw		f1, 0(x5)	# 776
	lw		x5, -4(x2)	# 918
	fsw		f5, -260(x2)	# 918
	sw		x14, -264(x2)	# 918
	sw		x13, -268(x2)	# 918
	sw		x12, -272(x2)	# 918
	sw		x10, -276(x2)	# 918
	sw		x4, -280(x2)	# 918
	sw		x8, -284(x2)	# 918
	addi	x4, x5, 0	# 918
	sw		x1, -288(x2)	# 918
	addi	x2, x2, -292	# 918
	jal		x1, read_object.2763.17912	# 918
	addi	x2, x2, 292	# 918
	lw		x1, -288(x2)	# 918
	lw		x4, -4(x2)	# 955
	sw		x1, -288(x2)	# 955
	addi	x2, x2, -292	# 955
	jal		x1, read_and_network.2771.17918	# 955
	addi	x2, x2, 292	# 955
	lw		x1, -288(x2)	# 955
	lw		x4, -4(x2)	# 956
	sw		x1, -288(x2)	# 956
	addi	x2, x2, -292	# 956
	jal		x1, read_or_network.2769.17916	# 956
	addi	x2, x2, 292	# 956
	lw		x1, -288(x2)	# 956
	lui		x5, 130536	# 956
	ori		x5, x5, 130536	# 956
	sw		x4, 0(x5)	# 956
	addi	x4, x0, 80	# 2163
	sw		x1, -288(x2)	# 2163
	addi	x2, x2, -292	# 2163
	jal		x1, min_caml_print_char	# 2163
	addi	x2, x2, 292	# 2163
	lw		x1, -288(x2)	# 2163
	addi	x4, x0, 51	# 2164
	sw		x1, -288(x2)	# 2164
	addi	x2, x2, -292	# 2164
	jal		x1, min_caml_print_char	# 2164
	addi	x2, x2, 292	# 2164
	lw		x1, -288(x2)	# 2164
	addi	x4, x0, 10	# 2165
	sw		x4, -288(x2)	# 2165
	sw		x1, -292(x2)	# 2165
	addi	x2, x2, -296	# 2165
	jal		x1, min_caml_print_char	# 2165
	addi	x2, x2, 296	# 2165
	lw		x1, -292(x2)	# 2165
	lw		x4, -88(x2)	# 2166
	sw		x1, -292(x2)	# 2166
	addi	x2, x2, -296	# 2166
	jal		x1, print_int.2626.17910	# 2166
	addi	x2, x2, 296	# 2166
	lw		x1, -292(x2)	# 2166
	addi	x4, x0, 32	# 2167
	sw		x4, -292(x2)	# 2167
	sw		x1, -296(x2)	# 2167
	addi	x2, x2, -300	# 2167
	jal		x1, min_caml_print_char	# 2167
	addi	x2, x2, 300	# 2167
	lw		x1, -296(x2)	# 2167
	lw		x4, -284(x2)	# 2168
	lw		x4, 0(x4)	# 2168
	sw		x1, -296(x2)	# 2168
	addi	x2, x2, -300	# 2168
	jal		x1, print_int.2626.17910	# 2168
	addi	x2, x2, 300	# 2168
	lw		x1, -296(x2)	# 2168
	lw		x4, -292(x2)	# 2169
	sw		x1, -296(x2)	# 2169
	addi	x2, x2, -300	# 2169
	jal		x1, min_caml_print_char	# 2169
	addi	x2, x2, 300	# 2169
	lw		x1, -296(x2)	# 2169
	addi	x4, x0, 255	# 2170
	sw		x1, -296(x2)	# 2170
	addi	x2, x2, -300	# 2170
	jal		x1, print_int.2626.17910	# 2170
	addi	x2, x2, 300	# 2170
	lw		x1, -296(x2)	# 2170
	lw		x4, -288(x2)	# 2171
	sw		x1, -296(x2)	# 2171
	addi	x2, x2, -300	# 2171
	jal		x1, min_caml_print_char	# 2171
	addi	x2, x2, 300	# 2171
	lw		x1, -296(x2)	# 2171
	lw		x4, -72(x2)	# 2469
	sw		x1, -296(x2)	# 2469
	addi	x2, x2, -300	# 2469
	jal		x1, create_dirvecs.3088.18038	# 2469
	addi	x2, x2, 300	# 2469
	lw		x1, -296(x2)	# 2469
	addi	x4, x0, 9	# 2470
	lw		x5, -4(x2)	# 2470
	addi	x6, x5, 0	# 2470
	sw		x1, -296(x2)	# 2470
	addi	x2, x2, -300	# 2470
	jal		x1, calc_dirvec_rows.3079.18031	# 2470
	addi	x2, x2, 300	# 2470
	lw		x1, -296(x2)	# 2470
	lw		x4, -72(x2)	# 2471
	sw		x1, -296(x2)	# 2471
	addi	x2, x2, -300	# 2471
	jal		x1, init_vecset_constants.3093.18043	# 2471
	addi	x2, x2, 300	# 2471
	lw		x1, -296(x2)	# 2471
	lw		x4, -256(x2)	# 307
	flw		f1, 0(x4)	# 307
	lw		x4, -56(x2)	# 307
	fsw		f1, 0(x4)	# 307
	lw		x4, -244(x2)	# 308
	flw		f2, 0(x4)	# 308
	lui		x4, 130740	# 308
	ori		x4, x4, 130740	# 308
	fsw		f2, 0(x4)	# 308
	lw		x4, -280(x2)	# 309
	flw		f3, 0(x4)	# 309
	lui		x4, 130744	# 309
	ori		x4, x4, 130744	# 309
	fsw		f3, 0(x4)	# 309
	lui		x4, 130000	# 1335
	ori		x4, x4, 130000	# 1335
	lw		x4, 0(x4)	# 1335
	addi	x5, x4, -1	# 1335
	lw		x6, -64(x2)	# 1335
	sw		x4, -296(x2)	# 1335
	fsw		f3, -300(x2)	# 1335
	fsw		f2, -304(x2)	# 1335
	fsw		f1, -308(x2)	# 1335
	sw		x5, -312(x2)	# 1335
	addi	x4, x6, 0	# 1335
	sw		x1, -316(x2)	# 1335
	addi	x2, x2, -320	# 1335
	jal		x1, iter_setup_dirvec_constants.2868.17920	# 1335
	addi	x2, x2, 320	# 1335
	lw		x1, -316(x2)	# 1335
	lw		x4, -312(x2)	# 2518
	lw		x5, -4(x2)	# 2518
	ble		x5, x4, ble.34528	# 2518
	jal		x0, ble_cont.34527	# 2518
ble.34528:
	mul		x6, x30, x4	# 2519
	lw		x7, -16(x2)	# 2519
	add		x6, x7, x6	# 2519
	lw		x6, 0(x6)	# 2519
	lw		x7, 8(x6)	# 411
	lw		x8, -40(x2)	# 2520
	beq		x7, x8, beq.34530	# 2520
	jal		x0, ble_cont.34527	# 2520
beq.34530:
	lw		x7, 28(x6)	# 509
	addi	x7, x7, 0	# 514
	flw		f1, 0(x7)	# 514
	fle		f30, f1, ble_cont.34527	# 125
	lw		x7, 4(x6)	# 401
	lw		x9, 0(x2)	# 2524
	beq		x7, x9, beq.34534	# 2524
	beq		x7, x8, beq.34536	# 2526
	jal		x0, ble_cont.34527	# 2526
beq.34536:
	lw		x7, -72(x2)	# 2503
	mul		x7, x4, x7	# 2503
	addi	x7, x7, 1	# 2503
	lui		x9, 131736	# 2504
	ori		x9, x9, 131736	# 2504
	lw		x10, 0(x9)	# 2504
	fsub	f1, f30, f1	# 2505
	lw		x6, 16(x6)	# 469
	addi	x11, x6, 0	# 340
	flw		f2, 0(x11)	# 340
	flw		f3, -308(x2)	# 340
	fmul	f4, f3, f2	# 340
	addi	x11, x6, 4	# 340
	flw		f5, 0(x11)	# 340
	flw		f6, -304(x2)	# 340
	fmul	f7, f6, f5	# 340
	fadd	f4, f4, f7	# 340
	addi	x6, x6, 8	# 340
	flw		f7, 0(x6)	# 340
	flw		f8, -300(x2)	# 340
	fmul	f9, f8, f7	# 340
	fadd	f4, f4, f9	# 340
	lui		x6, %hi(l.27964)	# 2509
	ori		x6, x6, %lo(l.27964)	# 2509
	flw		f9, 0(x6)	# 2509
	fmul	f2, f9, f2	# 2509
	fmul	f2, f2, f4	# 2509
	fsub	f2, f2, f3	# 2509
	fmul	f3, f9, f5	# 2510
	fmul	f3, f3, f4	# 2510
	fsub	f3, f3, f6	# 2510
	fmul	f5, f9, f7	# 2511
	fmul	f4, f5, f4	# 2511
	fsub	f4, f4, f8	# 2511
	lw		x6, -24(x2)	# 2430
	flw		f5, -8(x2)	# 2430
	fsw		f1, -316(x2)	# 2430
	addi	x4, x6, 0	# 2430
	fadd	f1, f0, f5	# 2430
	sw		x1, -320(x2)	# 2430
	addi	x2, x2, -324	# 2430
	jal		x1, min_caml_create_float_array	# 2430
	addi	x2, x2, 324	# 2430
	lw		x1, -320(x2)	# 2430
	addi	x5, x4, 0	# 2430
	lw		x4, -296(x2)	# 2431
	sw		x5, -320(x2)	# 2431
	sw		x1, -324(x2)	# 2431
	addi	x2, x2, -328	# 2431
	jal		x1, min_caml_create_array	# 2431
	addi	x2, x2, 328	# 2431
	lw		x1, -324(x2)	# 2431
	addi	x5, x3, 0	# 2432
	addi	x3, x3, 8	# 2432
	sw		x4, 4(x5)	# 2432
	lw		x4, -320(x2)	# 2432
	sw		x4, 0(x5)	# 2432
	addi	x6, x4, 0	# 288
	fsw		f2, 0(x6)	# 288
	addi	x6, x4, 4	# 289
	fsw		f3, 0(x6)	# 289
	addi	x4, x4, 8	# 290
	fsw		f4, 0(x4)	# 290
	lw		x4, -312(x2)	# 1335
	sw		x9, -324(x2)	# 1335
	sw		x10, -328(x2)	# 1335
	sw		x7, -332(x2)	# 1335
	sw		x5, -336(x2)	# 1335
	addi	x31, x5, 0	# 1335
	addi	x5, x4, 0	# 1335
	addi	x4, x31, 0	# 1335
	sw		x1, -340(x2)	# 1335
	addi	x2, x2, -344	# 1335
	jal		x1, iter_setup_dirvec_constants.2868.17920	# 1335
	addi	x2, x2, 344	# 1335
	lw		x1, -340(x2)	# 1335
	addi	x4, x3, 0	# 2484
	addi	x3, x3, 12	# 2484
	flw		f1, -316(x2)	# 2484
	fsw		f1, 8(x4)	# 2484
	lw		x5, -336(x2)	# 2484
	sw		x5, 4(x4)	# 2484
	lw		x5, -332(x2)	# 2484
	sw		x5, 0(x4)	# 2484
	lw		x5, -328(x2)	# 2484
	mul		x6, x30, x5	# 2484
	lw		x7, -124(x2)	# 2484
	add		x6, x7, x6	# 2484
	sw		x4, 0(x6)	# 2484
	addi	x4, x5, 1	# 2512
	lw		x5, -324(x2)	# 2512
	sw		x4, 0(x5)	# 2512
	jal		x0, ble_cont.34527	# 2524
beq.34534:
	lw		x6, -72(x2)	# 2489
	mul		x6, x4, x6	# 2489
	lui		x7, 131736	# 2490
	ori		x7, x7, 131736	# 2490
	lw		x9, 0(x7)	# 2490
	fsub	f1, f30, f1	# 2491
	flw		f2, -308(x2)	# 123
	fsub	f3, f0, f2	# 123
	flw		f4, -304(x2)	# 123
	fsub	f5, f0, f4	# 123
	flw		f6, -300(x2)	# 123
	fsub	f7, f0, f6	# 123
	addi	x10, x6, 1	# 2495
	lw		x11, -24(x2)	# 2430
	flw		f8, -8(x2)	# 2430
	fsw		f1, -340(x2)	# 2430
	addi	x4, x11, 0	# 2430
	fadd	f1, f0, f8	# 2430
	sw		x1, -344(x2)	# 2430
	addi	x2, x2, -348	# 2430
	jal		x1, min_caml_create_float_array	# 2430
	addi	x2, x2, 348	# 2430
	lw		x1, -344(x2)	# 2430
	addi	x5, x4, 0	# 2430
	lw		x4, -296(x2)	# 2431
	sw		x6, -344(x2)	# 2431
	sw		x5, -348(x2)	# 2431
	sw		x1, -352(x2)	# 2431
	addi	x2, x2, -356	# 2431
	jal		x1, min_caml_create_array	# 2431
	addi	x2, x2, 356	# 2431
	lw		x1, -352(x2)	# 2431
	addi	x5, x3, 0	# 2432
	addi	x3, x3, 8	# 2432
	sw		x4, 4(x5)	# 2432
	lw		x4, -348(x2)	# 2432
	sw		x4, 0(x5)	# 2432
	addi	x6, x4, 0	# 288
	fsw		f2, 0(x6)	# 288
	addi	x6, x4, 4	# 289
	fsw		f5, 0(x6)	# 289
	addi	x4, x4, 8	# 290
	fsw		f7, 0(x4)	# 290
	lw		x4, -312(x2)	# 1335
	sw		x7, -352(x2)	# 1335
	fsw		f5, -356(x2)	# 1335
	fsw		f7, -360(x2)	# 1335
	fsw		f3, -364(x2)	# 1335
	sw		x9, -368(x2)	# 1335
	sw		x10, -372(x2)	# 1335
	sw		x5, -376(x2)	# 1335
	addi	x31, x5, 0	# 1335
	addi	x5, x4, 0	# 1335
	addi	x4, x31, 0	# 1335
	sw		x1, -380(x2)	# 1335
	addi	x2, x2, -384	# 1335
	jal		x1, iter_setup_dirvec_constants.2868.17920	# 1335
	addi	x2, x2, 384	# 1335
	lw		x1, -380(x2)	# 1335
	addi	x4, x3, 0	# 2484
	addi	x3, x3, 12	# 2484
	flw		f1, -340(x2)	# 2484
	fsw		f1, 8(x4)	# 2484
	lw		x5, -376(x2)	# 2484
	sw		x5, 4(x4)	# 2484
	lw		x5, -372(x2)	# 2484
	sw		x5, 0(x4)	# 2484
	lw		x5, -368(x2)	# 2484
	mul		x6, x30, x5	# 2484
	lw		x7, -124(x2)	# 2484
	add		x6, x7, x6	# 2484
	sw		x4, 0(x6)	# 2484
	addi	x4, x5, 1	# 2496
	lw		x6, -344(x2)	# 2496
	addi	x8, x6, 2	# 2496
	lw		x9, -24(x2)	# 2430
	flw		f2, -8(x2)	# 2430
	sw		x4, -380(x2)	# 2430
	addi	x4, x9, 0	# 2430
	fadd	f1, f0, f2	# 2430
	sw		x1, -384(x2)	# 2430
	addi	x2, x2, -388	# 2430
	jal		x1, min_caml_create_float_array	# 2430
	addi	x2, x2, 388	# 2430
	lw		x1, -384(x2)	# 2430
	addi	x5, x4, 0	# 2430
	lw		x4, -296(x2)	# 2431
	sw		x5, -384(x2)	# 2431
	sw		x1, -388(x2)	# 2431
	addi	x2, x2, -392	# 2431
	jal		x1, min_caml_create_array	# 2431
	addi	x2, x2, 392	# 2431
	lw		x1, -388(x2)	# 2431
	addi	x5, x3, 0	# 2432
	addi	x3, x3, 8	# 2432
	sw		x4, 4(x5)	# 2432
	lw		x4, -384(x2)	# 2432
	sw		x4, 0(x5)	# 2432
	addi	x6, x4, 0	# 288
	flw		f1, -364(x2)	# 288
	fsw		f1, 0(x6)	# 288
	addi	x6, x4, 4	# 289
	flw		f2, -304(x2)	# 289
	fsw		f2, 0(x6)	# 289
	addi	x4, x4, 8	# 290
	flw		f2, -360(x2)	# 290
	fsw		f2, 0(x4)	# 290
	lw		x4, -312(x2)	# 1335
	sw		x8, -388(x2)	# 1335
	sw		x5, -392(x2)	# 1335
	addi	x31, x5, 0	# 1335
	addi	x5, x4, 0	# 1335
	addi	x4, x31, 0	# 1335
	sw		x1, -396(x2)	# 1335
	addi	x2, x2, -400	# 1335
	jal		x1, iter_setup_dirvec_constants.2868.17920	# 1335
	addi	x2, x2, 400	# 1335
	lw		x1, -396(x2)	# 1335
	addi	x4, x3, 0	# 2484
	addi	x3, x3, 12	# 2484
	flw		f1, -340(x2)	# 2484
	fsw		f1, 8(x4)	# 2484
	lw		x5, -392(x2)	# 2484
	sw		x5, 4(x4)	# 2484
	lw		x5, -388(x2)	# 2484
	sw		x5, 0(x4)	# 2484
	lw		x5, -380(x2)	# 2484
	mul		x5, x30, x5	# 2484
	lw		x6, -124(x2)	# 2484
	add		x5, x6, x5	# 2484
	sw		x4, 0(x5)	# 2484
	lw		x4, -368(x2)	# 2497
	addi	x5, x4, 2	# 2497
	lw		x7, -344(x2)	# 2497
	addi	x7, x7, 3	# 2497
	lw		x8, -24(x2)	# 2430
	flw		f2, -8(x2)	# 2430
	sw		x5, -396(x2)	# 2430
	addi	x4, x8, 0	# 2430
	fadd	f1, f0, f2	# 2430
	sw		x1, -400(x2)	# 2430
	addi	x2, x2, -404	# 2430
	jal		x1, min_caml_create_float_array	# 2430
	addi	x2, x2, 404	# 2430
	lw		x1, -400(x2)	# 2430
	addi	x5, x4, 0	# 2430
	lw		x4, -296(x2)	# 2431
	sw		x5, -400(x2)	# 2431
	sw		x1, -404(x2)	# 2431
	addi	x2, x2, -408	# 2431
	jal		x1, min_caml_create_array	# 2431
	addi	x2, x2, 408	# 2431
	lw		x1, -404(x2)	# 2431
	addi	x5, x3, 0	# 2432
	addi	x3, x3, 8	# 2432
	sw		x4, 4(x5)	# 2432
	lw		x4, -400(x2)	# 2432
	sw		x4, 0(x5)	# 2432
	addi	x6, x4, 0	# 288
	flw		f1, -364(x2)	# 288
	fsw		f1, 0(x6)	# 288
	addi	x6, x4, 4	# 289
	flw		f1, -356(x2)	# 289
	fsw		f1, 0(x6)	# 289
	addi	x4, x4, 8	# 290
	flw		f1, -300(x2)	# 290
	fsw		f1, 0(x4)	# 290
	lw		x4, -312(x2)	# 1335
	sw		x7, -404(x2)	# 1335
	sw		x5, -408(x2)	# 1335
	addi	x31, x5, 0	# 1335
	addi	x5, x4, 0	# 1335
	addi	x4, x31, 0	# 1335
	sw		x1, -412(x2)	# 1335
	addi	x2, x2, -416	# 1335
	jal		x1, iter_setup_dirvec_constants.2868.17920	# 1335
	addi	x2, x2, 416	# 1335
	lw		x1, -412(x2)	# 1335
	addi	x4, x3, 0	# 2484
	addi	x3, x3, 12	# 2484
	flw		f1, -340(x2)	# 2484
	fsw		f1, 8(x4)	# 2484
	lw		x5, -408(x2)	# 2484
	sw		x5, 4(x4)	# 2484
	lw		x5, -404(x2)	# 2484
	sw		x5, 0(x4)	# 2484
	lw		x5, -396(x2)	# 2484
	mul		x5, x30, x5	# 2484
	lw		x6, -124(x2)	# 2484
	add		x5, x6, x5	# 2484
	sw		x4, 0(x5)	# 2484
	lw		x4, -368(x2)	# 2498
	addi	x4, x4, 3	# 2498
	lw		x5, -352(x2)	# 2498
	sw		x4, 0(x5)	# 2498
ble_cont.34527:
	lw		x4, -84(x2)	# 2266
	flw		f1, 0(x4)	# 2266
	lw		x4, -276(x2)	# 2266
	lw		x4, 0(x4)	# 2266
	lw		x5, -4(x2)	# 2266
	sub		x4, x5, x4	# 2266
	fsw		f1, -412(x2)	# 2266
	sw		x1, -416(x2)	# 2266
	addi	x2, x2, -420	# 2266
	jal		x1, min_caml_float_of_int	# 2266
	addi	x2, x2, 420	# 2266
	lw		x1, -416(x2)	# 2266
	flw		f2, -412(x2)	# 2266
	fmul	f1, f2, f1	# 2266
	lw		x4, -272(x2)	# 2269
	flw		f2, 0(x4)	# 2269
	fmul	f2, f1, f2	# 2269
	flw		f3, -236(x2)	# 2269
	fadd	f2, f2, f3	# 2269
	lw		x4, -268(x2)	# 2270
	flw		f3, 0(x4)	# 2270
	fmul	f3, f1, f3	# 2270
	flw		f4, -232(x2)	# 2270
	fadd	f3, f3, f4	# 2270
	lw		x4, -264(x2)	# 2271
	flw		f4, 0(x4)	# 2271
	fmul	f1, f1, f4	# 2271
	flw		f4, -260(x2)	# 2271
	fadd	f1, f1, f4	# 2271
	lw		x4, -88(x2)	# 2272
	addi	x5, x4, -1	# 2272
	lw		x4, -168(x2)	# 2272
	lw		x6, -4(x2)	# 2272
	fadd	f31, f0, f3	# 2272
	fadd	f3, f0, f1	# 2272
	fadd	f1, f0, f2	# 2272
	fadd	f2, f0, f31	# 2272
	sw		x1, -416(x2)	# 2272
	addi	x2, x2, -420	# 2272
	jal		x1, pretrace_pixels.3027.17994	# 2272
	addi	x2, x2, 420	# 2272
	lw		x1, -416(x2)	# 2272
	lw		x4, -4(x2)	# 2555
	lw		x5, -132(x2)	# 2555
	lw		x6, -168(x2)	# 2555
	lw		x7, -204(x2)	# 2555
	lw		x8, -40(x2)	# 2555
	lw		x9, -24(x2)	# 2555
	sw		x1, -416(x2)	# 2555
	addi	x2, x2, -420	# 2555
	jal		x1, scan_line.3045.18008	# 2555
	addi	x2, x2, 420	# 2555
	lw		x1, -416(x2)	# 2555
	EXIT	
