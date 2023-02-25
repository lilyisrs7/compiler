l.33397:	# 8388608.000000
	.word	8388608.000000
l.28288:	# 0.010000
	.word	0.010000
l.28286:	# -0.200000
	.word	-0.200000
l.28411:	# -0.100000
	.word	-0.100000
l.29254:	# 100000000.000000
	.word	100000000.000000
l.29939:	# 150.000000
	.word	150.000000
l.29712:	# -150.000000
	.word	-150.000000
l.27870:	# -1.000000
	.word	-1.000000
l.29488:	# 10.000000
	.word	10.000000
l.29509:	# 0.050000
	.word	0.050000
l.29511:	# 20.000000
	.word	20.000000
l.29478:	# 255.000000
	.word	255.000000
l.27776:	# 0.500000
	.word	0.500000
l.29659:	# 0.100000
	.word	0.100000
l.29583:	# -2.000000
	.word	-2.000000
l.30942:	# -200.000000
	.word	-200.000000
l.30938:	# 200.000000
	.word	200.000000
l.30802:	# 128.000000
	.word	128.000000
l.30733:	# 0.900000
	.word	0.900000
l.29555:	# 0.003906
	.word	0.003906
l.29498:	# 0.250000
	.word	0.250000
l.29480:	# 0.300000
	.word	0.300000
l.29473:	# 0.150000
	.word	0.150000
l.29462:	# 3.141593
	.word	3.141593
l.29460:	# 30.000000
	.word	30.000000
l.29457:	# 15.000000
	.word	15.000000
l.29455:	# 0.000100
	.word	0.000100
l.29245:	# 1000000000.000000
	.word	1000000000.000000
l.27930:	# 2.000000
	.word	2.000000
l.27838:	# 0.017453
	.word	0.017453
l.27806:	# 0.089764
	.word	0.089764
l.27804:	# 0.111111
	.word	0.111111
l.27802:	# 0.142857
	.word	0.142857
l.27800:	# 0.200000
	.word	0.200000
l.27798:	# 0.333333
	.word	0.333333
l.27796:	# 0.437500
	.word	0.437500
l.27792:	# 2.437500
	.word	2.437500
l.27780:	# 0.001370
	.word	0.001370
l.27778:	# 0.041664
	.word	0.041664
l.27774:	# 1.000000
	.word	1.000000
l.27771:	# 0.000196
	.word	0.000196
l.27769:	# 0.008333
	.word	0.008333
l.27767:	# 0.166667
	.word	0.166667
l.27765:	# 0.785398
	.word	0.785398
l.27762:	# 1.570796
	.word	1.570796
l.27760:	# 3.141593
	.word	3.141593
l.27758:	# 6.283185
	.word	6.283185
l.27756:	# 0.000000
	.word	0.000000
sin.2610.17881:
	fle		f0, f1, fle.33398	# 204
	fsub	f1, f0, f1	# 204
	sw		x1, 0(x2)	# 204
	addi	x2, x2, -4	# 204
	jal		x1, sin.2610.17881	# 204
	addi	x2, x2, 4	# 204
	lw		x1, 0(x2)	# 204
	fsub	f1, f0, f1	# 204
	jalr	x0, x1, 0	# 204
fle.33398:
	lui		x4, %hi(l.27758)	# 179
	ori		x4, x0, %lo(l.27758)	# 179
	flw		f2, 0(x4)	# 179
	fle		f2, f1, fle.33399	# 205
	lui		x4, %hi(l.27760)	# 178
	ori		x4, x0, %lo(l.27760)	# 178
	flw		f2, 0(x4)	# 178
	fle		f2, f1, fle.33400	# 206
	lui		x4, %hi(l.27762)	# 180
	ori		x4, x0, %lo(l.27762)	# 180
	flw		f3, 0(x4)	# 180
	fle		f1, f3, fle.33401	# 207
	fsub	f1, f2, f1	# 207
	jal		x0, sin.2610.17881	# 207
fle.33401:
	lui		x4, %hi(l.27765)	# 181
	ori		x4, x0, %lo(l.27765)	# 181
	flw		f2, 0(x4)	# 181
	fle		f2, f1, fle.33402	# 208
	fmul	f2, f1, f1	# 194
	fmul	f3, f1, f2	# 195
	lui		x4, %hi(l.27767)	# 196
	ori		x4, x0, %lo(l.27767)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f3	# 196
	fsub	f1, f1, f4	# 196
	lui		x4, %hi(l.27769)	# 196
	ori		x4, x0, %lo(l.27769)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f2	# 196
	fmul	f4, f4, f3	# 196
	fadd	f1, f1, f4	# 196
	lui		x4, %hi(l.27771)	# 196
	ori		x4, x0, %lo(l.27771)	# 196
	flw		f4, 0(x4)	# 196
	fmul	f4, f4, f2	# 196
	fmul	f2, f4, f2	# 196
	fmul	f2, f2, f3	# 196
	fsub	f1, f1, f2	# 196
	jalr	x0, x1, 0	# 196
fle.33402:
	fsub	f1, f3, f1	# 208
	fmul	f1, f1, f1	# 199
	fmul	f2, f1, f1	# 200
	lui		x4, %hi(l.27776)	# 201
	ori		x4, x0, %lo(l.27776)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f4, f4, f1	# 201
	fsub	f3, f30, f4	# 201
	lui		x4, %hi(l.27778)	# 201
	ori		x4, x0, %lo(l.27778)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f4, f4, f2	# 201
	fadd	f3, f3, f4	# 201
	lui		x4, %hi(l.27780)	# 201
	ori		x4, x0, %lo(l.27780)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f1, f4, f1	# 201
	fmul	f1, f1, f2	# 201
	fsub	f1, f3, f1	# 201
	jalr	x0, x1, 0	# 201
fle.33400:
	fsub	f1, f1, f2	# 206
	sw		x1, 0(x2)	# 206
	addi	x2, x2, -4	# 206
	jal		x1, sin.2610.17881	# 206
	addi	x2, x2, 4	# 206
	lw		x1, 0(x2)	# 206
	fsub	f1, f0, f1	# 206
	jalr	x0, x1, 0	# 206
fle.33399:
	fsub	f1, f1, f2	# 205
	jal		x0, sin.2610.17881	# 205
cos.2612.17883:
	fle		f0, f1, fle.33403	# 212
	fsub	f1, f0, f1	# 212
	jal		x0, cos.2612.17883	# 212
fle.33403:
	lui		x4, %hi(l.27765)	# 181
	ori		x4, x0, %lo(l.27765)	# 181
	flw		f2, 0(x4)	# 181
	fle		f1, f2, fle.33404	# 213
	lui		x4, %hi(l.27762)	# 180
	ori		x4, x0, %lo(l.27762)	# 180
	flw		f2, 0(x4)	# 180
	fsub	f1, f2, f1	# 213
	jal		x0, sin.2610.17881	# 213
fle.33404:
	fmul	f1, f1, f1	# 199
	fmul	f2, f1, f1	# 200
	lui		x4, %hi(l.27776)	# 201
	ori		x4, x0, %lo(l.27776)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f4, f4, f1	# 201
	fsub	f3, f30, f4	# 201
	lui		x4, %hi(l.27778)	# 201
	ori		x4, x0, %lo(l.27778)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f4, f4, f2	# 201
	fadd	f3, f3, f4	# 201
	lui		x4, %hi(l.27780)	# 201
	ori		x4, x0, %lo(l.27780)	# 201
	flw		f4, 0(x4)	# 201
	fmul	f1, f4, f1	# 201
	fmul	f1, f1, f2	# 201
	fsub	f1, f3, f1	# 201
	jalr	x0, x1, 0	# 201
atan.2614.17885:
	fle		f0, f1, fle.33405	# 217
	fsub	f1, f0, f1	# 217
	sw		x1, 0(x2)	# 217
	addi	x2, x2, -4	# 217
	jal		x1, atan.2614.17885	# 217
	addi	x2, x2, 4	# 217
	lw		x1, 0(x2)	# 217
	fsub	f1, f0, f1	# 217
	jalr	x0, x1, 0	# 217
fle.33405:
	lui		x4, %hi(l.27792)	# 218
	ori		x4, x0, %lo(l.27792)	# 218
	flw		f2, 0(x4)	# 218
	fle		f1, f2, fle.33406	# 218
	fdiv	f1, f30, f1	# 218
	sw		x1, 0(x2)	# 218
	addi	x2, x2, -4	# 218
	jal		x1, atan.2614.17885	# 218
	addi	x2, x2, 4	# 218
	lw		x1, 0(x2)	# 218
	lui		x4, %hi(l.27762)	# 180
	ori		x4, x0, %lo(l.27762)	# 180
	flw		f2, 0(x4)	# 180
	fsub	f1, f2, f1	# 218
	jalr	x0, x1, 0	# 218
fle.33406:
	lui		x4, %hi(l.27796)	# 219
	ori		x4, x0, %lo(l.27796)	# 219
	flw		f2, 0(x4)	# 219
	fle		f2, f1, fle.33407	# 219
	fmul	f2, f1, f1	# 221
	fmul	f3, f1, f2	# 222
	fmul	f4, f2, f2	# 223
	lui		x4, %hi(l.27798)	# 224
	ori		x4, x0, %lo(l.27798)	# 224
	flw		f5, 0(x4)	# 224
	fmul	f5, f5, f3	# 224
	fsub	f1, f1, f5	# 224
	lui		x4, %hi(l.27800)	# 224
	ori		x4, x0, %lo(l.27800)	# 224
	flw		f5, 0(x4)	# 224
	fmul	f5, f5, f2	# 224
	fmul	f5, f5, f3	# 224
	fadd	f1, f1, f5	# 224
	lui		x4, %hi(l.27802)	# 224
	ori		x4, x0, %lo(l.27802)	# 224
	flw		f5, 0(x4)	# 224
	fmul	f5, f5, f4	# 224
	fmul	f5, f5, f3	# 224
	fsub	f1, f1, f5	# 224
	lui		x4, %hi(l.27804)	# 225
	ori		x4, x0, %lo(l.27804)	# 225
	flw		f5, 0(x4)	# 225
	fmul	f2, f5, f2	# 225
	fmul	f2, f2, f4	# 225
	fmul	f2, f2, f3	# 225
	fadd	f1, f1, f2	# 224
	lui		x4, %hi(l.27806)	# 225
	ori		x4, x0, %lo(l.27806)	# 225
	flw		f2, 0(x4)	# 225
	fmul	f2, f2, f4	# 225
	fmul	f2, f2, f4	# 225
	fmul	f2, f2, f3	# 225
	fsub	f1, f1, f2	# 224
	jalr	x0, x1, 0	# 224
fle.33407:
	fsub	f3, f1, f30	# 219
	fadd	f1, f1, f30	# 219
	fdiv	f1, f3, f1	# 219
	sw		x1, 0(x2)	# 219
	addi	x2, x2, -4	# 219
	jal		x1, atan.2614.17885	# 219
	addi	x2, x2, 4	# 219
	lw		x1, 0(x2)	# 219
	lui		x4, %hi(l.27765)	# 181
	ori		x4, x0, %lo(l.27765)	# 181
	flw		f2, 0(x4)	# 181
	fadd	f1, f2, f1	# 219
	jalr	x0, x1, 0	# 219
read_object.2751.17887:
	addi	x5, x0, 60	# 12
	ble		x5, x4, ble.33408	# 903
	sw		x4, 0(x2)	# 821
	sw		x1, -4(x2)	# 821
	addi	x2, x2, -8	# 821
	jal		x1, min_caml_read_int	# 821
	addi	x2, x2, 8	# 821
	lw		x1, -4(x2)	# 821
	addi	x5, x0, -1	# 28
	beq		x4, x5, beq.33410	# 822
	sw		x4, -4(x2)	# 824
	sw		x1, -8(x2)	# 824
	addi	x2, x2, -12	# 824
	jal		x1, min_caml_read_int	# 824
	addi	x2, x2, 12	# 824
	lw		x1, -8(x2)	# 824
	sw		x4, -8(x2)	# 825
	sw		x1, -12(x2)	# 825
	addi	x2, x2, -16	# 825
	jal		x1, min_caml_read_int	# 825
	addi	x2, x2, 16	# 825
	lw		x1, -12(x2)	# 825
	sw		x4, -12(x2)	# 826
	sw		x1, -16(x2)	# 826
	addi	x2, x2, -20	# 826
	jal		x1, min_caml_read_int	# 826
	addi	x2, x2, 20	# 826
	lw		x1, -16(x2)	# 826
	fadd	f1, f0, f0	# 11
	addi	x5, x0, 3	# 16
	sw		x4, -16(x2)	# 828
	fsw		f0, -20(x2)	# 828
	sw		x5, -24(x2)	# 828
	addi	x4, x5, 0	# 828
	sw		x1, -28(x2)	# 828
	addi	x2, x2, -32	# 828
	jal		x1, min_caml_create_float_array	# 828
	addi	x2, x2, 32	# 828
	lw		x1, -28(x2)	# 828
	sw		x1, -28(x2)	# 829
	addi	x2, x2, -32	# 829
	jal		x1, min_caml_read_float	# 829
	addi	x2, x2, 32	# 829
	lw		x1, -28(x2)	# 829
	addi	x6, x4, 0	# 829
	fsw		f1, 0(x6)	# 829
	sw		x1, -28(x2)	# 830
	addi	x2, x2, -32	# 830
	jal		x1, min_caml_read_float	# 830
	addi	x2, x2, 32	# 830
	lw		x1, -28(x2)	# 830
	addi	x7, x0, 4	# 830
	addi	x8, x4, 4	# 830
	fsw		f1, 0(x8)	# 830
	sw		x1, -28(x2)	# 831
	addi	x2, x2, -32	# 831
	jal		x1, min_caml_read_float	# 831
	addi	x2, x2, 32	# 831
	lw		x1, -28(x2)	# 831
	addi	x9, x0, 2	# 65
	addi	x10, x4, 8	# 831
	fsw		f1, 0(x10)	# 831
	lw		x11, -24(x2)	# 833
	flw		f1, -20(x2)	# 833
	sw		x4, -28(x2)	# 833
	sw		x0, -32(x2)	# 833
	addi	x4, x11, 0	# 833
	sw		x1, -36(x2)	# 833
	addi	x2, x2, -40	# 833
	jal		x1, min_caml_create_float_array	# 833
	addi	x2, x2, 40	# 833
	lw		x1, -36(x2)	# 833
	sw		x1, -36(x2)	# 834
	addi	x2, x2, -40	# 834
	jal		x1, min_caml_read_float	# 834
	addi	x2, x2, 40	# 834
	lw		x1, -36(x2)	# 834
	addi	x5, x4, 0	# 834
	fsw		f1, 0(x5)	# 834
	sw		x1, -36(x2)	# 835
	addi	x2, x2, -40	# 835
	jal		x1, min_caml_read_float	# 835
	addi	x2, x2, 40	# 835
	lw		x1, -36(x2)	# 835
	addi	x5, x4, 4	# 835
	fsw		f1, 0(x5)	# 835
	sw		x1, -36(x2)	# 836
	addi	x2, x2, -40	# 836
	jal		x1, min_caml_read_float	# 836
	addi	x2, x2, 40	# 836
	lw		x1, -36(x2)	# 836
	addi	x5, x4, 8	# 836
	fsw		f1, 0(x5)	# 836
	sw		x1, -36(x2)	# 838
	addi	x2, x2, -40	# 838
	jal		x1, min_caml_read_float	# 838
	addi	x2, x2, 40	# 838
	lw		x1, -36(x2)	# 838
	flw		f2, -20(x2)	# 122
	fle		f2, f1, fle.33412	# 122
	addi	x5, x0, 1	# 122
	jal		x0, fle_cont.33411	# 122
fle.33412:
	addi	x5, x0, 0	# 122
fle_cont.33411:
	fsw		f1, -36(x2)	# 840
	sw		x4, -40(x2)	# 840
	sw		x5, -44(x2)	# 840
	sw		x9, -48(x2)	# 840
	addi	x4, x9, 0	# 840
	fadd	f1, f0, f2	# 840
	sw		x1, -52(x2)	# 840
	addi	x2, x2, -56	# 840
	jal		x1, min_caml_create_float_array	# 840
	addi	x2, x2, 56	# 840
	lw		x1, -52(x2)	# 840
	sw		x1, -52(x2)	# 841
	addi	x2, x2, -56	# 841
	jal		x1, min_caml_read_float	# 841
	addi	x2, x2, 56	# 841
	lw		x1, -52(x2)	# 841
	addi	x5, x4, 0	# 841
	fsw		f1, 0(x5)	# 841
	sw		x1, -52(x2)	# 842
	addi	x2, x2, -56	# 842
	jal		x1, min_caml_read_float	# 842
	addi	x2, x2, 56	# 842
	lw		x1, -52(x2)	# 842
	addi	x5, x4, 4	# 842
	fsw		f1, 0(x5)	# 842
	lw		x5, -24(x2)	# 844
	flw		f1, -20(x2)	# 844
	sw		x4, -52(x2)	# 844
	addi	x4, x5, 0	# 844
	sw		x1, -56(x2)	# 844
	addi	x2, x2, -60	# 844
	jal		x1, min_caml_create_float_array	# 844
	addi	x2, x2, 60	# 844
	lw		x1, -56(x2)	# 844
	sw		x1, -56(x2)	# 845
	addi	x2, x2, -60	# 845
	jal		x1, min_caml_read_float	# 845
	addi	x2, x2, 60	# 845
	lw		x1, -56(x2)	# 845
	addi	x5, x4, 0	# 845
	fsw		f1, 0(x5)	# 845
	sw		x1, -56(x2)	# 846
	addi	x2, x2, -60	# 846
	jal		x1, min_caml_read_float	# 846
	addi	x2, x2, 60	# 846
	lw		x1, -56(x2)	# 846
	addi	x5, x4, 4	# 846
	fsw		f1, 0(x5)	# 846
	sw		x1, -56(x2)	# 847
	addi	x2, x2, -60	# 847
	jal		x1, min_caml_read_float	# 847
	addi	x2, x2, 60	# 847
	lw		x1, -56(x2)	# 847
	addi	x5, x4, 8	# 847
	fsw		f1, 0(x5)	# 847
	lw		x5, -24(x2)	# 849
	flw		f1, -20(x2)	# 849
	sw		x4, -56(x2)	# 849
	addi	x4, x5, 0	# 849
	sw		x1, -60(x2)	# 849
	addi	x2, x2, -64	# 849
	jal		x1, min_caml_create_float_array	# 849
	addi	x2, x2, 64	# 849
	lw		x1, -60(x2)	# 849
	lw		x5, -32(x2)	# 850
	lw		x9, -16(x2)	# 850
	beq		x9, x5, beq_cont.33413	# 850
	sw		x1, -60(x2)	# 852
	addi	x2, x2, -64	# 852
	jal		x1, min_caml_read_float	# 852
	addi	x2, x2, 64	# 852
	lw		x1, -60(x2)	# 852
	lui		x11, %hi(l.27838)	# 719
	ori		x11, x0, %lo(l.27838)	# 719
	flw		f2, 0(x11)	# 719
	fmul	f1, f1, f2	# 719
	addi	x11, x4, 0	# 852
	fsw		f1, 0(x11)	# 852
	sw		x1, -60(x2)	# 853
	addi	x2, x2, -64	# 853
	jal		x1, min_caml_read_float	# 853
	addi	x2, x2, 64	# 853
	lw		x1, -60(x2)	# 853
	fmul	f1, f1, f2	# 719
	addi	x11, x4, 4	# 853
	fsw		f1, 0(x11)	# 853
	sw		x1, -60(x2)	# 854
	addi	x2, x2, -64	# 854
	jal		x1, min_caml_read_float	# 854
	addi	x2, x2, 64	# 854
	lw		x1, -60(x2)	# 854
	fmul	f1, f1, f2	# 719
	addi	x11, x4, 8	# 854
	fsw		f1, 0(x11)	# 854
beq_cont.33413:
	lw		x11, -48(x2)	# 861
	lw		x12, -8(x2)	# 861
	beq		x12, x11, beq.33416	# 861
	lw		x13, -44(x2)	# 861
	jal		x0, beq_cont.33415	# 861
beq.33416:
	addi	x13, x0, 1	# 861
beq_cont.33415:
	flw		f1, -20(x2)	# 862
	sw		x4, -60(x2)	# 862
	addi	x4, x7, 0	# 862
	sw		x1, -64(x2)	# 862
	addi	x2, x2, -68	# 862
	jal		x1, min_caml_create_float_array	# 862
	addi	x2, x2, 68	# 862
	lw		x1, -64(x2)	# 862
	addi	x5, x3, 0	# 865
	addi	x3, x3, 44	# 865
	sw		x4, 40(x5)	# 865
	lw		x4, -60(x2)	# 865
	sw		x4, 36(x5)	# 865
	lw		x7, -56(x2)	# 865
	sw		x7, 32(x5)	# 865
	lw		x7, -52(x2)	# 865
	sw		x7, 28(x5)	# 865
	sw		x13, 24(x5)	# 865
	lw		x7, -40(x2)	# 865
	sw		x7, 20(x5)	# 865
	lw		x7, -28(x2)	# 865
	sw		x7, 16(x5)	# 865
	sw		x9, 12(x5)	# 865
	lw		x7, -12(x2)	# 865
	sw		x7, 8(x5)	# 865
	sw		x12, 4(x5)	# 865
	lw		x7, -4(x2)	# 865
	sw		x7, 0(x5)	# 865
	lw		x7, 0(x2)	# 873
	mul		x13, x30, x7	# 873
	addi	x13, x13, 44308	# 873
	sw		x5, 0(x13)	# 873
	lw		x5, -24(x2)	# 875
	beq		x12, x5, beq.33418	# 875
	beq		x12, x11, beq.33420	# 885
	jal		x0, beq_cont.33417	# 885
beq.33420:
	flw		f1, 0(x6)	# 325
	fmul	f2, f1, f1	# 127
	flw		f3, 0(x8)	# 325
	fmul	f4, f3, f3	# 127
	fadd	f2, f2, f4	# 325
	flw		f4, 0(x10)	# 325
	fmul	f5, f4, f4	# 127
	fadd	f2, f2, f5	# 325
	fsqrt	f2, f2	# 325
	flw		f5, -20(x2)	# 120
	feq		f2, f5, feq.33422	# 120
	flw		f6, -36(x2)	# 122
	fle		f5, f6, fle.33424	# 122
	fdiv	f2, f30, f2	# 326
	jal		x0, feq_cont.33421	# 122
fle.33424:
	fdiv	f2, f24, f2	# 326
	jal		x0, feq_cont.33421	# 120
feq.33422:
	fadd	f2, f0, f30	# 326
feq_cont.33421:
	fmul	f1, f1, f2	# 327
	fsw		f1, 0(x6)	# 327
	fmul	f1, f3, f2	# 328
	fsw		f1, 0(x8)	# 328
	fmul	f1, f4, f2	# 329
	fsw		f1, 0(x10)	# 329
	jal		x0, beq_cont.33417	# 875
beq.33418:
	flw		f1, 0(x6)	# 878
	flw		f2, -20(x2)	# 120
	feq		f1, f2, feq.33426	# 120
	fle		f1, f2, fle.33430	# 121
	fadd	f3, f0, f30	# 255
	jal		x0, feq_cont.33427	# 121
fle.33430:
	fadd	f3, f0, f24	# 256
	jal		x0, feq_cont.33427	# 120
feq.33428:
	fadd	f3, f0, f2	# 254
feq_cont.33427:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 879
	jal		x0, feq_cont.33425	# 120
feq.33426:
	fadd	f1, f0, f2	# 879
feq_cont.33425:
	fsw		f1, 0(x6)	# 879
	flw		f1, 0(x8)	# 880
	feq		f1, f2, feq.33432	# 120
	fle		f1, f2, fle.33436	# 121
	fadd	f3, f0, f30	# 255
	jal		x0, feq_cont.33433	# 121
fle.33436:
	fadd	f3, f0, f24	# 256
	jal		x0, feq_cont.33433	# 120
feq.33434:
	fadd	f3, f0, f2	# 254
feq_cont.33433:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 881
	jal		x0, feq_cont.33431	# 120
feq.33432:
	fadd	f1, f0, f2	# 881
feq_cont.33431:
	fsw		f1, 0(x8)	# 881
	flw		f1, 0(x10)	# 882
	feq		f1, f2, feq.33438	# 120
	fle		f1, f2, fle.33442	# 121
	fadd	f2, f0, f30	# 255
	jal		x0, feq_cont.33439	# 121
fle.33442:
	fadd	f2, f0, f24	# 256
feq_cont.33439:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f2, f1	# 883
	jal		x0, feq_cont.33437	# 120
feq.33438:
	fadd	f1, f0, f2	# 883
feq_cont.33437:
	fsw		f1, 0(x10)	# 883
beq_cont.33417:
	lw		x5, -32(x2)	# 891
	beq		x9, x5, beq_cont.33443	# 891
	addi	x5, x4, 0	# 780
	flw		f1, 0(x5)	# 780
	fsw		f1, -64(x2)	# 780
	sw		x1, -68(x2)	# 780
	addi	x2, x2, -72	# 780
	jal		x1, cos.2612.17883	# 780
	addi	x2, x2, 72	# 780
	lw		x1, -68(x2)	# 780
	flw		f2, -64(x2)	# 781
	fsw		f1, -68(x2)	# 781
	fadd	f1, f0, f2	# 781
	sw		x1, -72(x2)	# 781
	addi	x2, x2, -76	# 781
	jal		x1, sin.2610.17881	# 781
	addi	x2, x2, 76	# 781
	lw		x1, -72(x2)	# 781
	lw		x4, -60(x2)	# 782
	addi	x9, x4, 4	# 782
	flw		f2, 0(x9)	# 782
	fsw		f1, -72(x2)	# 782
	fsw		f2, -76(x2)	# 782
	fadd	f1, f0, f2	# 782
	sw		x1, -80(x2)	# 782
	addi	x2, x2, -84	# 782
	jal		x1, cos.2612.17883	# 782
	addi	x2, x2, 84	# 782
	lw		x1, -80(x2)	# 782
	flw		f2, -76(x2)	# 783
	fsw		f1, -80(x2)	# 783
	fadd	f1, f0, f2	# 783
	sw		x1, -84(x2)	# 783
	addi	x2, x2, -88	# 783
	jal		x1, sin.2610.17881	# 783
	addi	x2, x2, 88	# 783
	lw		x1, -84(x2)	# 783
	lw		x4, -60(x2)	# 784
	addi	x4, x4, 8	# 784
	flw		f2, 0(x4)	# 784
	sw		x4, -84(x2)	# 784
	fsw		f1, -88(x2)	# 784
	fsw		f2, -92(x2)	# 784
	fadd	f1, f0, f2	# 784
	sw		x1, -96(x2)	# 784
	addi	x2, x2, -100	# 784
	jal		x1, cos.2612.17883	# 784
	addi	x2, x2, 100	# 784
	lw		x1, -96(x2)	# 784
	flw		f2, -92(x2)	# 785
	fsw		f1, -96(x2)	# 785
	fadd	f1, f0, f2	# 785
	sw		x1, -100(x2)	# 785
	addi	x2, x2, -104	# 785
	jal		x1, sin.2610.17881	# 785
	addi	x2, x2, 104	# 785
	lw		x1, -100(x2)	# 785
	flw		f2, -80(x2)	# 787
	flw		f3, -96(x2)	# 787
	fmul	f4, f2, f3	# 787
	flw		f5, -72(x2)	# 788
	flw		f6, -88(x2)	# 788
	fmul	f7, f5, f6	# 788
	fmul	f8, f7, f3	# 788
	flw		f9, -68(x2)	# 788
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
	flw		f6, 0(x6)	# 800
	flw		f9, 0(x8)	# 801
	flw		f10, 0(x10)	# 802
	fmul	f13, f4, f4	# 127
	fmul	f13, f6, f13	# 807
	fmul	f14, f12, f12	# 127
	fmul	f14, f9, f14	# 807
	fadd	f13, f13, f14	# 807
	fmul	f14, f3, f3	# 127
	fmul	f14, f10, f14	# 807
	fadd	f13, f13, f14	# 807
	fsw		f13, 0(x6)	# 807
	fmul	f13, f8, f8	# 127
	fmul	f13, f6, f13	# 808
	fmul	f14, f7, f7	# 127
	fmul	f14, f9, f14	# 808
	fadd	f13, f13, f14	# 808
	fmul	f14, f5, f5	# 127
	fmul	f14, f10, f14	# 808
	fadd	f13, f13, f14	# 808
	fsw		f13, 0(x8)	# 808
	fmul	f13, f11, f11	# 127
	fmul	f13, f6, f13	# 809
	fmul	f14, f1, f1	# 127
	fmul	f14, f9, f14	# 809
	fadd	f13, f13, f14	# 809
	fmul	f14, f2, f2	# 127
	fmul	f14, f10, f14	# 809
	fadd	f13, f13, f14	# 809
	fsw		f13, 0(x10)	# 809
	lui		x4, %hi(l.27930)	# 812
	ori		x4, x0, %lo(l.27930)	# 812
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
	fsw		f1, 0(x9)	# 813
	fmul	f1, f4, f8	# 814
	fmul	f2, f9, f7	# 814
	fadd	f1, f1, f2	# 814
	fmul	f2, f3, f5	# 814
	fadd	f1, f1, f2	# 814
	fmul	f1, f13, f1	# 814
	lw		x4, -84(x2)	# 814
	fsw		f1, 0(x4)	# 814
beq_cont.33443:
	addi	x4, x0, 1	# 895
	jal		x0, beq_cont.33409	# 822
beq.33410:
	addi	x4, x0, 0	# 898
beq_cont.33409:
	beq		x4, x0, beq.33445	# 904
	lw		x4, 0(x2)	# 905
	addi	x4, x4, 1	# 905
	jal		x0, read_object.2751.17887	# 905
beq.33445:
	addi	x4, x0, 44260	# 907
	lw		x5, 0(x2)	# 907
	sw		x5, 0(x4)	# 907
	jalr	x0, x1, 0	# 907
ble.33408:
	jalr	x0, x1, 0	# 908
read_net_item.2755.17889:
	sw		x4, 0(x2)	# 919
	sw		x1, -4(x2)	# 919
	addi	x2, x2, -8	# 919
	jal		x1, min_caml_read_int	# 919
	addi	x2, x2, 8	# 919
	lw		x1, -4(x2)	# 919
	addi	x5, x0, -1	# 28
	beq		x4, x5, beq.33448	# 920
	lw		x5, 0(x2)	# 922
	addi	x6, x5, 1	# 922
	sw		x4, -4(x2)	# 922
	addi	x4, x6, 0	# 922
	sw		x1, -8(x2)	# 922
	addi	x2, x2, -12	# 922
	jal		x1, read_net_item.2755.17889	# 922
	addi	x2, x2, 12	# 922
	lw		x1, -8(x2)	# 922
	lw		x5, 0(x2)	# 923
	mul		x5, x30, x5	# 923
	add		x5, x4, x5	# 923
	lw		x6, -4(x2)	# 923
	sw		x6, 0(x5)	# 923
	jalr	x0, x1, 0	# 923
beq.33448:
	lw		x4, 0(x2)	# 920
	addi	x4, x4, 1	# 920
	jal		x0, min_caml_create_array	# 920
read_or_network.2757.17891:
	addi	x5, x0, 0	# 6
	sw		x4, 0(x2)	# 927
	addi	x4, x0, 0	# 927
	sw		x1, -4(x2)	# 927
	addi	x2, x2, -8	# 927
	jal		x1, read_net_item.2755.17889	# 927
	addi	x2, x2, 8	# 927
	lw		x1, -4(x2)	# 927
	addi	x5, x4, 0	# 927
	addi	x4, x5, 0	# 928
	lw		x4, 0(x4)	# 928
	addi	x6, x0, -1	# 28
	beq		x4, x6, beq.33449	# 928
	lw		x4, 0(x2)	# 931
	addi	x6, x4, 1	# 931
	sw		x5, -4(x2)	# 931
	addi	x4, x6, 0	# 931
	sw		x1, -8(x2)	# 931
	addi	x2, x2, -12	# 931
	jal		x1, read_or_network.2757.17891	# 931
	addi	x2, x2, 12	# 931
	lw		x1, -8(x2)	# 931
	lw		x5, 0(x2)	# 932
	mul		x5, x30, x5	# 932
	add		x5, x4, x5	# 932
	lw		x6, -4(x2)	# 932
	sw		x6, 0(x5)	# 932
	jalr	x0, x1, 0	# 932
beq.33449:
	lw		x4, 0(x2)	# 929
	addi	x4, x4, 1	# 929
	jal		x0, min_caml_create_array	# 929
read_and_network.2759.17893:
	addi	x5, x0, 0	# 6
	sw		x4, 0(x2)	# 936
	addi	x4, x0, 0	# 936
	sw		x1, -4(x2)	# 936
	addi	x2, x2, -8	# 936
	jal		x1, read_net_item.2755.17889	# 936
	addi	x2, x2, 8	# 936
	lw		x1, -4(x2)	# 936
	addi	x5, x4, 0	# 937
	lw		x5, 0(x5)	# 937
	addi	x6, x0, -1	# 28
	beq		x5, x6, beq.33450	# 937
	lw		x5, 0(x2)	# 939
	mul		x6, x30, x5	# 939
	addi	x6, x6, 44592	# 939
	sw		x4, 0(x6)	# 939
	addi	x4, x5, 1	# 940
	jal		x0, read_and_network.2759.17893	# 940
beq.33450:
	jalr	x0, x1, 0	# 937
iter_setup_dirvec_constants.2856.17895:
	ble		x0, x5, ble.33452	# 1312
	jalr	x0, x1, 0	# 1325
ble.33452:
	mul		x7, x30, x5	# 1313
	addi	x8, x7, 44308	# 1313
	lw		x8, 0(x8)	# 1313
	lw		x9, 4(x4)	# 687
	lw		x10, 0(x4)	# 681
	lw		x11, 4(x8)	# 395
	addi	x12, x0, 1	# 6
	sw		x4, 0(x2)	# 1317
	sw		x5, -4(x2)	# 1317
	beq		x11, x12, beq.33455	# 1317
	addi	x12, x0, 2	# 65
	beq		x11, x12, beq.33457	# 1319
	fadd	f1, f0, f0	# 11
	addi	x11, x0, 5	# 98
	fsw		f0, -8(x2)	# 1283
	addi	x4, x11, 0	# 1283
	sw		x1, -12(x2)	# 1283
	addi	x2, x2, -16	# 1283
	jal		x1, min_caml_create_float_array	# 1283
	addi	x2, x2, 16	# 1283
	lw		x1, -12(x2)	# 1283
	addi	x5, x10, 0	# 1285
	flw		f1, 0(x5)	# 1285
	addi	x5, x10, 4	# 1285
	flw		f2, 0(x5)	# 1285
	addi	x5, x10, 8	# 1285
	flw		f3, 0(x5)	# 1285
	fmul	f4, f1, f1	# 127
	lw		x5, 16(x8)	# 433
	addi	x10, x5, 0	# 438
	flw		f5, 0(x10)	# 438
	fmul	f4, f4, f5	# 1009
	fmul	f6, f2, f2	# 127
	addi	x10, x5, 4	# 448
	flw		f7, 0(x10)	# 448
	fmul	f6, f6, f7	# 1009
	fadd	f4, f4, f6	# 1009
	fmul	f6, f3, f3	# 127
	addi	x5, x5, 8	# 458
	flw		f8, 0(x5)	# 458
	fmul	f6, f6, f8	# 1009
	fadd	f4, f4, f6	# 1009
	lw		x5, 12(x8)	# 424
	beq		x5, x0, beq_cont.33458	# 1011
	fmul	f6, f2, f3	# 1015
	lw		x10, 36(x8)	# 553
	addi	x11, x10, 0	# 558
	flw		f9, 0(x11)	# 558
	fmul	f6, f6, f9	# 1015
	fadd	f4, f4, f6	# 1014
	fmul	f6, f3, f1	# 1016
	addi	x11, x10, 4	# 568
	flw		f9, 0(x11)	# 568
	fmul	f6, f6, f9	# 1016
	fadd	f4, f4, f6	# 1014
	fmul	f6, f1, f2	# 1017
	addi	x10, x10, 8	# 578
	flw		f9, 0(x10)	# 578
	fmul	f6, f6, f9	# 1017
	fadd	f4, f4, f6	# 1014
beq_cont.33458:
	fmul	f5, f1, f5	# 1286
	fsub	f5, f0, f5	# 123
	fmul	f6, f2, f7	# 1287
	fsub	f6, f0, f6	# 123
	fmul	f7, f3, f8	# 1288
	fsub	f7, f0, f7	# 123
	addi	x10, x4, 0	# 1290
	fsw		f4, 0(x10)	# 1290
	beq		x5, x0, beq.33461	# 1294
	lw		x5, 36(x8)	# 563
	addi	x6, x5, 4	# 568
	flw		f8, 0(x6)	# 568
	fmul	f9, f3, f8	# 1295
	addi	x6, x5, 8	# 578
	flw		f10, 0(x6)	# 578
	fmul	f11, f2, f10	# 1295
	fadd	f9, f9, f11	# 1295
	lui		x6, %hi(l.27776)	# 126
	ori		x6, x0, %lo(l.27776)	# 126
	flw		f11, 0(x6)	# 126
	fmul	f9, f9, f11	# 126
	fsub	f5, f5, f9	# 1295
	addi	x6, x4, 4	# 1295
	fsw		f5, 0(x6)	# 1295
	addi	x5, x5, 0	# 558
	flw		f5, 0(x5)	# 558
	fmul	f3, f3, f5	# 1296
	fmul	f9, f1, f10	# 1296
	fadd	f3, f3, f9	# 1296
	fmul	f3, f3, f11	# 126
	fsub	f3, f6, f3	# 1296
	addi	x5, x4, 8	# 1296
	fsw		f3, 0(x5)	# 1296
	fmul	f2, f2, f5	# 1297
	fmul	f1, f1, f8	# 1297
	fadd	f1, f2, f1	# 1297
	fmul	f1, f1, f11	# 126
	fsub	f1, f7, f1	# 1297
	addi	x5, x4, 12	# 1297
	fsw		f1, 0(x5)	# 1297
	jal		x0, beq_cont.33460	# 1294
beq.33461:
	addi	x5, x4, 4	# 1299
	fsw		f5, 0(x5)	# 1299
	addi	x5, x4, 8	# 1300
	fsw		f6, 0(x5)	# 1300
	addi	x5, x4, 12	# 1301
	fsw		f7, 0(x5)	# 1301
beq_cont.33460:
	flw		f1, -8(x2)	# 120
	feq		f4, f1, feq_cont.33462	# 120
	fdiv	f1, f30, f4	# 1304
	addi	x5, x4, 16	# 1304
	fsw		f1, 0(x5)	# 1304
feq_cont.33462:
	add		x5, x9, x7	# 1322
	sw		x4, 0(x5)	# 1322
	jal		x0, beq_cont.33454	# 1319
beq.33457:
	addi	x6, x0, 4	# 1264
	fadd	f1, f0, f0	# 11
	fsw		f0, -12(x2)	# 1264
	addi	x4, x6, 0	# 1264
	sw		x1, -16(x2)	# 1264
	addi	x2, x2, -20	# 1264
	jal		x1, min_caml_create_float_array	# 1264
	addi	x2, x2, 20	# 1264
	lw		x1, -16(x2)	# 1264
	addi	x5, x10, 0	# 1266
	flw		f1, 0(x5)	# 1266
	lw		x5, 16(x8)	# 433
	addi	x6, x5, 0	# 438
	flw		f2, 0(x6)	# 438
	fmul	f1, f1, f2	# 1266
	addi	x6, x10, 4	# 1266
	flw		f3, 0(x6)	# 1266
	addi	x6, x5, 4	# 448
	flw		f4, 0(x6)	# 448
	fmul	f3, f3, f4	# 1266
	fadd	f1, f1, f3	# 1266
	addi	x6, x10, 8	# 1266
	flw		f3, 0(x6)	# 1266
	addi	x5, x5, 8	# 458
	flw		f5, 0(x5)	# 458
	fmul	f3, f3, f5	# 1266
	fadd	f1, f1, f3	# 1266
	flw		f3, -12(x2)	# 121
	fle		f1, f3, fle.33465	# 121
	fdiv	f3, f24, f1	# 1270
	addi	x5, x4, 0	# 1270
	fsw		f3, 0(x5)	# 1270
	fdiv	f2, f2, f1	# 1272
	fsub	f2, f0, f2	# 123
	addi	x5, x4, 4	# 1272
	fsw		f2, 0(x5)	# 1272
	fdiv	f2, f4, f1	# 1273
	fsub	f2, f0, f2	# 123
	addi	x5, x4, 8	# 1273
	fsw		f2, 0(x5)	# 1273
	fdiv	f1, f5, f1	# 1274
	fsub	f1, f0, f1	# 123
	addi	x5, x4, 12	# 1274
	fsw		f1, 0(x5)	# 1274
	jal		x0, fle_cont.33464	# 121
fle.33465:
	addi	x5, x4, 0	# 1276
	fsw		f3, 0(x5)	# 1276
fle_cont.33464:
	add		x5, x9, x7	# 1320
	sw		x4, 0(x5)	# 1320
	jal		x0, beq_cont.33454	# 1317
beq.33455:
	addi	x11, x0, 6	# 1237
	fadd	f1, f0, f0	# 11
	fsw		f0, -16(x2)	# 1237
	addi	x4, x11, 0	# 1237
	sw		x1, -20(x2)	# 1237
	addi	x2, x2, -24	# 1237
	jal		x1, min_caml_create_float_array	# 1237
	addi	x2, x2, 24	# 1237
	lw		x1, -20(x2)	# 1237
	addi	x5, x10, 0	# 1239
	flw		f1, 0(x5)	# 1239
	flw		f2, -16(x2)	# 120
	feq		f1, f2, feq.33467	# 120
	lw		x5, 24(x8)	# 415
	fle		f2, f1, fle.33469	# 122
	addi	x11, x0, 1	# 122
	jal		x0, fle_cont.33468	# 122
fle.33469:
	addi	x11, x0, 0	# 122
fle_cont.33468:
	beq		x5, x0, beq.33471	# 246
	fle		f2, f1, fle.33473	# 122
	addi	x5, x0, 0	# 246
	jal		x0, beq_cont.33470	# 122
fle.33473:
	addi	x5, x0, 1	# 246
	jal		x0, beq_cont.33470	# 246
beq.33471:
	addi	x5, x11, 0	# 246
beq_cont.33470:
	lw		x11, 16(x8)	# 433
	addi	x11, x11, 0	# 438
	flw		f3, 0(x11)	# 438
	beq		x5, x0, beq.33475	# 261
	jal		x0, beq_cont.33474	# 261
beq.33475:
	fsub	f3, f0, f3	# 123
beq_cont.33474:
	addi	x5, x4, 0	# 1243
	fsw		f3, 0(x5)	# 1243
	fdiv	f1, f30, f1	# 1245
	addi	x5, x4, 4	# 1245
	fsw		f1, 0(x5)	# 1245
	jal		x0, feq_cont.33466	# 120
feq.33467:
	addi	x5, x4, 4	# 1240
	fsw		f2, 0(x5)	# 1240
feq_cont.33466:
	addi	x5, x10, 4	# 1247
	flw		f1, 0(x5)	# 1247
	feq		f1, f2, feq.33477	# 120
	lw		x5, 24(x8)	# 415
	fle		f2, f1, fle.33479	# 122
	addi	x11, x0, 1	# 122
	jal		x0, fle_cont.33478	# 122
fle.33479:
	addi	x11, x0, 0	# 122
fle_cont.33478:
	beq		x5, x0, beq.33481	# 246
	fle		f2, f1, fle.33483	# 122
	addi	x5, x0, 0	# 246
	jal		x0, beq_cont.33480	# 122
fle.33483:
	addi	x5, x0, 1	# 246
	jal		x0, beq_cont.33480	# 246
beq.33481:
	addi	x5, x11, 0	# 246
beq_cont.33480:
	lw		x11, 16(x8)	# 443
	addi	x11, x11, 4	# 448
	flw		f3, 0(x11)	# 448
	beq		x5, x0, beq.33485	# 261
	jal		x0, beq_cont.33484	# 261
beq.33485:
	fsub	f3, f0, f3	# 123
beq_cont.33484:
	addi	x5, x4, 8	# 1250
	fsw		f3, 0(x5)	# 1250
	fdiv	f1, f30, f1	# 1251
	addi	x5, x4, 12	# 1251
	fsw		f1, 0(x5)	# 1251
	jal		x0, feq_cont.33476	# 120
feq.33477:
	addi	x5, x4, 12	# 1248
	fsw		f2, 0(x5)	# 1248
feq_cont.33476:
	addi	x5, x10, 8	# 1253
	flw		f1, 0(x5)	# 1253
	feq		f1, f2, feq.33487	# 120
	lw		x5, 24(x8)	# 415
	fle		f2, f1, fle.33489	# 122
	addi	x10, x0, 1	# 122
	jal		x0, fle_cont.33488	# 122
fle.33489:
	addi	x10, x0, 0	# 122
fle_cont.33488:
	beq		x5, x0, beq.33491	# 246
	fle		f2, f1, fle.33493	# 122
	addi	x5, x0, 0	# 246
	jal		x0, beq_cont.33490	# 122
fle.33493:
	addi	x5, x0, 1	# 246
	jal		x0, beq_cont.33490	# 246
beq.33491:
	addi	x5, x10, 0	# 246
beq_cont.33490:
	lw		x8, 16(x8)	# 453
	addi	x8, x8, 8	# 458
	flw		f2, 0(x8)	# 458
	beq		x5, x0, beq.33495	# 261
	jal		x0, beq_cont.33494	# 261
beq.33495:
	fsub	f2, f0, f2	# 123
beq_cont.33494:
	addi	x5, x4, 16	# 1256
	fsw		f2, 0(x5)	# 1256
	fdiv	f1, f30, f1	# 1257
	addi	x5, x4, 20	# 1257
	fsw		f1, 0(x5)	# 1257
	jal		x0, feq_cont.33486	# 120
feq.33487:
	addi	x5, x4, 20	# 1254
	fsw		f2, 0(x5)	# 1254
feq_cont.33486:
	add		x5, x9, x7	# 1318
	sw		x4, 0(x5)	# 1318
beq_cont.33454:
	lw		x4, -4(x2)	# 1324
	addi	x5, x4, -1	# 1324
	lw		x4, 0(x2)	# 1324
	jal		x0, iter_setup_dirvec_constants.2856.17895	# 1324
setup_startp_constants.2861.17898:
	ble		x0, x5, ble.33496	# 1337
	jalr	x0, x1, 0	# 1352
ble.33496:
	mul		x7, x30, x5	# 1338
	addi	x7, x7, 44308	# 1338
	lw		x7, 0(x7)	# 1338
	lw		x8, 40(x7)	# 590
	lw		x9, 4(x7)	# 395
	addi	x10, x4, 0	# 1341
	flw		f1, 0(x10)	# 1341
	lw		x10, 20(x7)	# 473
	addi	x11, x10, 0	# 478
	flw		f2, 0(x11)	# 478
	fsub	f1, f1, f2	# 1341
	addi	x11, x8, 0	# 1341
	fsw		f1, 0(x11)	# 1341
	addi	x12, x4, 4	# 1342
	flw		f1, 0(x12)	# 1342
	addi	x12, x10, 4	# 488
	flw		f2, 0(x12)	# 488
	fsub	f1, f1, f2	# 1342
	addi	x12, x8, 4	# 1342
	fsw		f1, 0(x12)	# 1342
	addi	x13, x0, 2	# 65
	addi	x14, x4, 8	# 1343
	flw		f1, 0(x14)	# 1343
	addi	x10, x10, 8	# 498
	flw		f2, 0(x10)	# 498
	fsub	f1, f1, f2	# 1343
	addi	x10, x8, 8	# 1343
	fsw		f1, 0(x10)	# 1343
	beq		x9, x13, beq.33499	# 1344
	ble		x9, x13, beq_cont.33498	# 1347
	flw		f1, 0(x11)	# 1348
	flw		f2, 0(x12)	# 1348
	flw		f3, 0(x10)	# 1348
	fmul	f4, f1, f1	# 127
	lw		x10, 16(x7)	# 433
	addi	x11, x10, 0	# 438
	flw		f5, 0(x11)	# 438
	fmul	f4, f4, f5	# 1009
	fmul	f5, f2, f2	# 127
	addi	x11, x10, 4	# 448
	flw		f6, 0(x11)	# 448
	fmul	f5, f5, f6	# 1009
	fadd	f4, f4, f5	# 1009
	fmul	f5, f3, f3	# 127
	addi	x10, x10, 8	# 458
	flw		f6, 0(x10)	# 458
	fmul	f5, f5, f6	# 1009
	fadd	f4, f4, f5	# 1009
	lw		x10, 12(x7)	# 424
	beq		x10, x0, beq.33503	# 1011
	fmul	f5, f2, f3	# 1015
	lw		x6, 36(x7)	# 553
	addi	x7, x6, 0	# 558
	flw		f6, 0(x7)	# 558
	fmul	f5, f5, f6	# 1015
	fadd	f4, f4, f5	# 1014
	fmul	f3, f3, f1	# 1016
	addi	x7, x6, 4	# 568
	flw		f5, 0(x7)	# 568
	fmul	f3, f3, f5	# 1016
	fadd	f3, f4, f3	# 1014
	fmul	f1, f1, f2	# 1017
	addi	x6, x6, 8	# 578
	flw		f2, 0(x6)	# 578
	fmul	f1, f1, f2	# 1017
	fadd	f1, f3, f1	# 1014
	jal		x0, beq_cont.33502	# 1011
beq.33503:
	fadd	f1, f0, f4	# 1012
beq_cont.33502:
	addi	x6, x0, 3	# 16
	beq		x9, x6, beq.33505	# 1349
	jal		x0, beq_cont.33504	# 1349
beq.33505:
	fsub	f1, f1, f30	# 1349
beq_cont.33504:
	addi	x6, x8, 12	# 1349
	fsw		f1, 0(x6)	# 1349
	jal		x0, beq_cont.33498	# 1347
beq.33499:
	lw		x6, 16(x7)	# 463
	flw		f1, 0(x11)	# 1346
	flw		f2, 0(x12)	# 1346
	flw		f3, 0(x10)	# 1346
	addi	x7, x6, 0	# 339
	flw		f4, 0(x7)	# 339
	fmul	f1, f4, f1	# 339
	addi	x7, x6, 4	# 339
	flw		f4, 0(x7)	# 339
	fmul	f2, f4, f2	# 339
	fadd	f1, f1, f2	# 339
	addi	x6, x6, 8	# 339
	flw		f2, 0(x6)	# 339
	fmul	f2, f2, f3	# 339
	fadd	f1, f1, f2	# 339
	addi	x6, x8, 12	# 1345
	fsw		f1, 0(x6)	# 1345
beq_cont.33498:
	addi	x5, x5, -1	# 1351
	jal		x0, setup_startp_constants.2861.17898	# 1351
check_all_inside.2886.17901:
	mul		x6, x30, x4	# 1406
	add		x6, x5, x6	# 1406
	lw		x6, 0(x6)	# 1406
	addi	x7, x0, -1	# 28
	beq		x6, x7, beq.33506	# 1407
	mul		x6, x30, x6	# 1410
	addi	x6, x6, 44308	# 1410
	lw		x6, 0(x6)	# 1410
	lw		x7, 20(x6)	# 473
	addi	x9, x7, 0	# 478
	flw		f4, 0(x9)	# 478
	fsub	f4, f1, f4	# 1392
	addi	x9, x0, 1	# 6
	addi	x10, x7, 4	# 488
	flw		f5, 0(x10)	# 488
	fsub	f5, f2, f5	# 1393
	addi	x10, x0, 2	# 65
	addi	x7, x7, 8	# 498
	flw		f6, 0(x7)	# 498
	fsub	f6, f3, f6	# 1394
	lw		x7, 4(x6)	# 395
	beq		x7, x9, beq.33508	# 1396
	beq		x7, x10, beq.33510	# 1398
	fmul	f7, f4, f4	# 127
	lw		x9, 16(x6)	# 433
	addi	x10, x9, 0	# 438
	flw		f8, 0(x10)	# 438
	fmul	f7, f7, f8	# 1009
	fmul	f8, f5, f5	# 127
	addi	x10, x9, 4	# 448
	flw		f9, 0(x10)	# 448
	fmul	f8, f8, f9	# 1009
	fadd	f7, f7, f8	# 1009
	fmul	f8, f6, f6	# 127
	addi	x9, x9, 8	# 458
	flw		f9, 0(x9)	# 458
	fmul	f8, f8, f9	# 1009
	fadd	f7, f7, f8	# 1009
	lw		x9, 12(x6)	# 424
	beq		x9, x0, beq.33512	# 1011
	fmul	f8, f5, f6	# 1015
	lw		x9, 36(x6)	# 553
	addi	x10, x9, 0	# 558
	flw		f9, 0(x10)	# 558
	fmul	f8, f8, f9	# 1015
	fadd	f7, f7, f8	# 1014
	fmul	f6, f6, f4	# 1016
	addi	x10, x9, 4	# 568
	flw		f8, 0(x10)	# 568
	fmul	f6, f6, f8	# 1016
	fadd	f6, f7, f6	# 1014
	fmul	f4, f4, f5	# 1017
	addi	x9, x9, 8	# 578
	flw		f5, 0(x9)	# 578
	fmul	f4, f4, f5	# 1017
	fadd	f4, f6, f4	# 1014
	jal		x0, beq_cont.33511	# 1011
beq.33512:
	fadd	f4, f0, f7	# 1012
beq_cont.33511:
	addi	x9, x0, 3	# 16
	beq		x7, x9, beq.33514	# 1386
	jal		x0, beq_cont.33513	# 1386
beq.33514:
	fsub	f4, f4, f30	# 1386
beq_cont.33513:
	lw		x6, 24(x6)	# 415
	fle		f0, f4, fle.33516	# 122
	addi	x7, x0, 1	# 122
	jal		x0, fle_cont.33515	# 122
fle.33516:
	addi	x7, x0, 0	# 122
fle_cont.33515:
	beq		x6, x0, beq.33518	# 246
	fle		f0, f4, fle.33520	# 122
	addi	x6, x0, 0	# 246
	jal		x0, beq_cont.33517	# 122
fle.33520:
	addi	x6, x0, 1	# 246
	jal		x0, beq_cont.33517	# 246
beq.33518:
	addi	x6, x7, 0	# 246
beq_cont.33517:
	beq		x6, x0, beq.33522	# 1387
	addi	x6, x0, 0	# 1387
	jal		x0, beq_cont.33507	# 1387
beq.33522:
	addi	x6, x0, 1	# 1387
	jal		x0, beq_cont.33507	# 1398
beq.33510:
	lw		x7, 16(x6)	# 463
	addi	x9, x7, 0	# 339
	flw		f7, 0(x9)	# 339
	fmul	f4, f7, f4	# 339
	addi	x9, x7, 4	# 339
	flw		f7, 0(x9)	# 339
	fmul	f5, f7, f5	# 339
	fadd	f4, f4, f5	# 339
	addi	x7, x7, 8	# 339
	flw		f5, 0(x7)	# 339
	fmul	f5, f5, f6	# 339
	fadd	f4, f4, f5	# 339
	lw		x6, 24(x6)	# 415
	fle		f0, f4, fle.33524	# 122
	addi	x7, x0, 1	# 122
	jal		x0, fle_cont.33523	# 122
fle.33524:
	addi	x7, x0, 0	# 122
fle_cont.33523:
	beq		x6, x0, beq.33526	# 246
	fle		f0, f4, fle.33528	# 122
	addi	x6, x0, 0	# 246
	jal		x0, beq_cont.33525	# 122
fle.33528:
	addi	x6, x0, 1	# 246
	jal		x0, beq_cont.33525	# 246
beq.33526:
	addi	x6, x7, 0	# 246
beq_cont.33525:
	beq		x6, x0, beq.33530	# 1380
	addi	x6, x0, 0	# 1380
	jal		x0, beq_cont.33507	# 1380
beq.33530:
	addi	x6, x0, 1	# 1380
	jal		x0, beq_cont.33507	# 1396
beq.33508:
	fle		f4, f0, fle.33532	# 124
	jal		x0, fle_cont.33531	# 124
fle.33532:
	fsub	f4, f0, f4	# 124
fle_cont.33531:
	lw		x7, 16(x6)	# 433
	addi	x9, x7, 0	# 438
	flw		f8, 0(x9)	# 438
	fle		f8, f4, fle.33534	# 125
	fle		f5, f0, fle.33536	# 124
	fadd	f4, f0, f5	# 124
	jal		x0, fle_cont.33535	# 124
fle.33536:
	fsub	f4, f0, f5	# 124
fle_cont.33535:
	addi	x9, x7, 4	# 448
	flw		f5, 0(x9)	# 448
	fle		f5, f4, fle.33538	# 125
	fle		f6, f0, fle.33540	# 124
	fadd	f4, f0, f6	# 124
	jal		x0, fle_cont.33539	# 124
fle.33540:
	fsub	f4, f0, f6	# 124
fle_cont.33539:
	addi	x7, x7, 8	# 458
	flw		f5, 0(x7)	# 458
	fle		f5, f4, fle.33542	# 125
	addi	x7, x0, 1	# 125
	jal		x0, fle_cont.33533	# 125
fle.33542:
	addi	x7, x0, 0	# 125
	jal		x0, fle_cont.33533	# 125
fle.33538:
	addi	x7, x0, 0	# 1372
	jal		x0, fle_cont.33533	# 125
fle.33534:
	addi	x7, x0, 0	# 1373
fle_cont.33533:
	beq		x7, x0, beq.33544	# 1368
	lw		x6, 24(x6)	# 415
	jal		x0, beq_cont.33507	# 1368
beq.33544:
	lw		x6, 24(x6)	# 415
	beq		x6, x0, beq.33546	# 1374
	addi	x6, x0, 0	# 1374
	jal		x0, beq_cont.33507	# 1374
beq.33546:
	addi	x6, x0, 1	# 1374
beq_cont.33507:
	beq		x6, x0, beq.33547	# 1410
	addi	x4, x0, 0	# 1411
	jalr	x0, x1, 0	# 1411
beq.33547:
	addi	x4, x4, 1	# 1413
	jal		x0, check_all_inside.2886.17901	# 1413
beq.33506:
	addi	x4, x0, 1	# 1408
	jalr	x0, x1, 0	# 1408
shadow_check_and_group.2892.17907:
	mul		x6, x30, x4	# 1426
	add		x6, x5, x6	# 1426
	lw		x6, 0(x6)	# 1426
	addi	x7, x0, -1	# 28
	beq		x6, x7, beq.33548	# 1426
	mul		x6, x30, x6	# 1168
	addi	x7, x6, 44308	# 1168
	lw		x7, 0(x7)	# 1168
	addi	x8, x0, 0	# 6
	addi	x9, x0, 44812	# 1169
	flw		f1, 0(x9)	# 1169
	lw		x9, 20(x7)	# 473
	addi	x10, x9, 0	# 478
	flw		f2, 0(x10)	# 478
	fsub	f2, f1, f2	# 1169
	addi	x10, x0, 1	# 6
	addi	x11, x0, 44816	# 1170
	flw		f3, 0(x11)	# 1170
	addi	x11, x9, 4	# 488
	flw		f4, 0(x11)	# 488
	fsub	f4, f3, f4	# 1170
	addi	x11, x0, 2	# 65
	addi	x12, x0, 44820	# 1171
	flw		f5, 0(x12)	# 1171
	addi	x9, x9, 8	# 498
	flw		f6, 0(x9)	# 498
	fsub	f6, f5, f6	# 1171
	addi	x6, x6, 45008	# 1173
	lw		x6, 0(x6)	# 1173
	lw		x9, 4(x7)	# 395
	beq		x9, x10, beq.33550	# 1175
	beq		x9, x11, beq.33552	# 1177
	addi	x10, x6, 0	# 1149
	flw		f7, 0(x10)	# 1149
	feq		f7, f0, feq.33554	# 120
	addi	x10, x6, 4	# 1153
	flw		f9, 0(x10)	# 1153
	fmul	f9, f9, f2	# 1153
	addi	x10, x6, 8	# 1153
	flw		f10, 0(x10)	# 1153
	fmul	f10, f10, f4	# 1153
	fadd	f9, f9, f10	# 1153
	addi	x10, x0, 3	# 16
	addi	x11, x6, 12	# 1153
	flw		f10, 0(x11)	# 1153
	fmul	f10, f10, f6	# 1153
	fadd	f9, f9, f10	# 1153
	fmul	f10, f2, f2	# 127
	lw		x11, 16(x7)	# 433
	addi	x12, x11, 0	# 438
	flw		f11, 0(x12)	# 438
	fmul	f10, f10, f11	# 1009
	fmul	f11, f4, f4	# 127
	addi	x12, x11, 4	# 448
	flw		f12, 0(x12)	# 448
	fmul	f11, f11, f12	# 1009
	fadd	f10, f10, f11	# 1009
	fmul	f11, f6, f6	# 127
	addi	x11, x11, 8	# 458
	flw		f12, 0(x11)	# 458
	fmul	f11, f11, f12	# 1009
	fadd	f10, f10, f11	# 1009
	lw		x11, 12(x7)	# 424
	beq		x11, x0, beq.33556	# 1011
	fmul	f11, f4, f6	# 1015
	lw		x11, 36(x7)	# 553
	addi	x12, x11, 0	# 558
	flw		f12, 0(x12)	# 558
	fmul	f11, f11, f12	# 1015
	fadd	f10, f10, f11	# 1014
	fmul	f6, f6, f2	# 1016
	addi	x12, x11, 4	# 568
	flw		f11, 0(x12)	# 568
	fmul	f6, f6, f11	# 1016
	fadd	f6, f10, f6	# 1014
	fmul	f2, f2, f4	# 1017
	addi	x11, x11, 8	# 578
	flw		f4, 0(x11)	# 578
	fmul	f2, f2, f4	# 1017
	fadd	f2, f6, f2	# 1014
	jal		x0, beq_cont.33555	# 1011
beq.33556:
	fadd	f2, f0, f10	# 1012
beq_cont.33555:
	beq		x9, x10, beq.33558	# 1155
	jal		x0, beq_cont.33557	# 1155
beq.33558:
	fsub	f2, f2, f30	# 1155
beq_cont.33557:
	fmul	f4, f9, f9	# 127
	fmul	f2, f7, f2	# 1156
	fsub	f2, f4, f2	# 1156
	fle		f2, f0, fle.33560	# 121
	lw		x9, 24(x7)	# 415
	beq		x9, x0, beq.33562	# 1158
	fsqrt	f2, f2	# 1159
	fadd	f2, f9, f2	# 1159
	addi	x6, x6, 16	# 1159
	flw		f4, 0(x6)	# 1159
	fmul	f2, f2, f4	# 1159
	addi	x6, x0, 44800	# 1159
	fsw		f2, 0(x6)	# 1159
	jal		x0, beq_cont.33561	# 1158
beq.33562:
	fsqrt	f2, f2	# 1161
	fsub	f2, f9, f2	# 1161
	addi	x6, x6, 16	# 1161
	flw		f4, 0(x6)	# 1161
	fmul	f2, f2, f4	# 1161
	addi	x6, x0, 44800	# 1161
	fsw		f2, 0(x6)	# 1161
beq_cont.33561:
	addi	x6, x0, 1	# 1162
	jal		x0, beq_cont.33549	# 121
fle.33560:
	addi	x6, x0, 0	# 1163
	jal		x0, beq_cont.33549	# 120
feq.33554:
	addi	x6, x0, 0	# 1151
	jal		x0, beq_cont.33549	# 1177
beq.33552:
	addi	x9, x6, 0	# 1139
	flw		f7, 0(x9)	# 1139
	fle		f0, f7, fle.33564	# 122
	addi	x9, x6, 4	# 1141
	flw		f7, 0(x9)	# 1141
	fmul	f2, f7, f2	# 1141
	addi	x9, x6, 8	# 1141
	flw		f7, 0(x9)	# 1141
	fmul	f4, f7, f4	# 1141
	fadd	f2, f2, f4	# 1141
	addi	x6, x6, 12	# 1141
	flw		f4, 0(x6)	# 1141
	fmul	f4, f4, f6	# 1141
	fadd	f2, f2, f4	# 1141
	addi	x6, x0, 44800	# 1140
	fsw		f2, 0(x6)	# 1140
	addi	x6, x0, 1	# 1142
	jal		x0, beq_cont.33549	# 122
fle.33564:
	addi	x6, x0, 0	# 1143
	jal		x0, beq_cont.33549	# 1175
beq.33550:
	addi	x9, x6, 0	# 1106
	flw		f7, 0(x9)	# 1106
	fsub	f7, f7, f2	# 1106
	addi	x9, x6, 4	# 1106
	flw		f8, 0(x9)	# 1106
	fmul	f7, f7, f8	# 1106
	addi	x9, x0, 45000	# 1108
	flw		f9, 0(x9)	# 1108
	fmul	f10, f7, f9	# 1108
	fadd	f10, f10, f4	# 1108
	fle		f10, f0, fle.33566	# 124
	jal		x0, fle_cont.33565	# 124
fle.33566:
	fsub	f10, f0, f10	# 124
fle_cont.33565:
	lw		x9, 16(x7)	# 443
	addi	x10, x9, 4	# 448
	flw		f12, 0(x10)	# 448
	fle		f12, f10, fle.33568	# 125
	addi	x10, x0, 45004	# 1109
	flw		f10, 0(x10)	# 1109
	fmul	f10, f7, f10	# 1109
	fadd	f10, f10, f6	# 1109
	fle		f10, f0, fle.33570	# 124
	jal		x0, fle_cont.33569	# 124
fle.33570:
	fsub	f10, f0, f10	# 124
fle_cont.33569:
	addi	x10, x9, 8	# 458
	flw		f13, 0(x10)	# 458
	fle		f13, f10, fle.33572	# 125
	feq		f8, f0, feq.33574	# 120
	addi	x10, x0, 1	# 1110
	jal		x0, fle_cont.33567	# 120
feq.33574:
	addi	x10, x0, 0	# 1110
	jal		x0, fle_cont.33567	# 125
fle.33572:
	addi	x10, x0, 0	# 1111
	jal		x0, fle_cont.33567	# 125
fle.33568:
	addi	x10, x0, 0	# 1112
fle_cont.33567:
	beq		x10, x0, beq.33576	# 1107
	addi	x6, x0, 44800	# 1114
	fsw		f7, 0(x6)	# 1114
	addi	x6, x0, 1	# 1114
	jal		x0, beq_cont.33549	# 1107
beq.33576:
	addi	x10, x6, 8	# 1115
	flw		f7, 0(x10)	# 1115
	fsub	f7, f7, f4	# 1115
	addi	x10, x6, 12	# 1115
	flw		f8, 0(x10)	# 1115
	fmul	f7, f7, f8	# 1115
	addi	x10, x0, 44996	# 1117
	flw		f10, 0(x10)	# 1117
	fmul	f13, f7, f10	# 1117
	fadd	f13, f13, f2	# 1117
	fle		f13, f0, fle.33578	# 124
	jal		x0, fle_cont.33577	# 124
fle.33578:
	fsub	f13, f0, f13	# 124
fle_cont.33577:
	addi	x10, x9, 0	# 438
	flw		f14, 0(x10)	# 438
	fle		f14, f13, fle.33580	# 125
	addi	x10, x0, 45004	# 1118
	flw		f13, 0(x10)	# 1118
	fmul	f13, f7, f13	# 1118
	fadd	f13, f13, f6	# 1118
	fle		f13, f0, fle.33582	# 124
	jal		x0, fle_cont.33581	# 124
fle.33582:
	fsub	f13, f0, f13	# 124
fle_cont.33581:
	addi	x9, x9, 8	# 458
	flw		f15, 0(x9)	# 458
	fle		f15, f13, fle.33584	# 125
	feq		f8, f0, feq.33586	# 120
	addi	x9, x0, 1	# 1119
	jal		x0, fle_cont.33579	# 120
feq.33586:
	addi	x9, x0, 0	# 1119
	jal		x0, fle_cont.33579	# 125
fle.33584:
	addi	x9, x0, 0	# 1120
	jal		x0, fle_cont.33579	# 125
fle.33580:
	addi	x9, x0, 0	# 1121
fle_cont.33579:
	beq		x9, x0, beq.33588	# 1116
	addi	x6, x0, 44800	# 1123
	fsw		f7, 0(x6)	# 1123
	addi	x6, x0, 2	# 1123
	jal		x0, beq_cont.33549	# 1116
beq.33588:
	addi	x9, x6, 16	# 1124
	flw		f7, 0(x9)	# 1124
	fsub	f6, f7, f6	# 1124
	addi	x6, x6, 20	# 1124
	flw		f7, 0(x6)	# 1124
	fmul	f6, f6, f7	# 1124
	fmul	f8, f6, f10	# 1126
	fadd	f2, f8, f2	# 1126
	fle		f2, f0, fle.33590	# 124
	jal		x0, fle_cont.33589	# 124
fle.33590:
	fsub	f2, f0, f2	# 124
fle_cont.33589:
	fle		f14, f2, fle.33592	# 125
	fmul	f2, f6, f9	# 1127
	fadd	f2, f2, f4	# 1127
	fle		f2, f0, fle.33594	# 124
	jal		x0, fle_cont.33593	# 124
fle.33594:
	fsub	f2, f0, f2	# 124
fle_cont.33593:
	fle		f12, f2, fle.33596	# 125
	feq		f7, f0, feq.33598	# 120
	addi	x6, x0, 1	# 1128
	jal		x0, fle_cont.33591	# 120
feq.33598:
	addi	x6, x0, 0	# 1128
	jal		x0, fle_cont.33591	# 125
fle.33596:
	addi	x6, x0, 0	# 1129
	jal		x0, fle_cont.33591	# 125
fle.33592:
	addi	x6, x0, 0	# 1130
fle_cont.33591:
	beq		x6, x0, beq.33600	# 1125
	addi	x6, x0, 44800	# 1132
	fsw		f6, 0(x6)	# 1132
	addi	x6, x0, 3	# 1132
	jal		x0, beq_cont.33549	# 1125
beq.33600:
	addi	x6, x0, 0	# 1134
beq_cont.33549:
	addi	x9, x0, 44800	# 1431
	flw		f2, 0(x9)	# 1431
	beq		x6, x0, beq.33602	# 1432
	fle		f19, f2, fle.33604	# 125
	addi	x6, x0, 1	# 125
	jal		x0, beq_cont.33601	# 125
fle.33604:
	addi	x6, x0, 0	# 125
	jal		x0, beq_cont.33601	# 1432
beq.33602:
	addi	x6, x0, 0	# 1432
beq_cont.33601:
	beq		x6, x0, beq.33605	# 1432
	fadd	f2, f2, f18	# 1435
	addi	x6, x0, 44572	# 1436
	flw		f4, 0(x6)	# 1436
	fmul	f4, f4, f2	# 1436
	fadd	f1, f4, f1	# 1436
	addi	x6, x0, 44576	# 1437
	flw		f4, 0(x6)	# 1437
	fmul	f4, f4, f2	# 1437
	fadd	f3, f4, f3	# 1437
	addi	x6, x0, 44580	# 1438
	flw		f4, 0(x6)	# 1438
	fmul	f2, f4, f2	# 1438
	fadd	f2, f2, f5	# 1438
	sw		x5, 0(x2)	# 1439
	sw		x4, -4(x2)	# 1439
	sw		x0, -8(x2)	# 1439
	addi	x4, x0, 0	# 1439
	fadd	f31, f0, f3	# 1439
	fadd	f3, f0, f2	# 1439
	fadd	f2, f0, f31	# 1439
	sw		x1, -12(x2)	# 1439
	addi	x2, x2, -16	# 1439
	jal		x1, check_all_inside.2886.17901	# 1439
	addi	x2, x2, 16	# 1439
	lw		x1, -12(x2)	# 1439
	lw		x5, -8(x2)	# 1439
	beq		x4, x5, beq.33606	# 1439
	addi	x4, x0, 1	# 1440
	jalr	x0, x1, 0	# 1440
beq.33606:
	lw		x4, -4(x2)	# 1442
	addi	x4, x4, 1	# 1442
	lw		x5, 0(x2)	# 1442
	jal		x0, shadow_check_and_group.2892.17907	# 1442
beq.33605:
	lw		x6, 24(x7)	# 415
	beq		x6, x0, beq.33607	# 1448
	addi	x4, x4, 1	# 1449
	jal		x0, shadow_check_and_group.2892.17907	# 1449
beq.33607:
	addi	x4, x0, 0	# 1451
	jalr	x0, x1, 0	# 1451
beq.33548:
	addi	x4, x0, 0	# 1427
	jalr	x0, x1, 0	# 1427
shadow_check_one_or_group.2895.17910:
	mul		x6, x30, x4	# 1456
	add		x6, x5, x6	# 1456
	lw		x6, 0(x6)	# 1456
	addi	x7, x0, -1	# 28
	beq		x6, x7, beq.33608	# 1457
	mul		x6, x30, x6	# 1460
	addi	x6, x6, 44592	# 1460
	lw		x6, 0(x6)	# 1460
	addi	x7, x0, 0	# 6
	sw		x5, 0(x2)	# 1461
	sw		x4, -4(x2)	# 1461
	sw		x0, -8(x2)	# 1461
	addi	x5, x6, 0	# 1461
	addi	x4, x0, 0	# 1461
	sw		x1, -12(x2)	# 1461
	addi	x2, x2, -16	# 1461
	jal		x1, shadow_check_and_group.2892.17907	# 1461
	addi	x2, x2, 16	# 1461
	lw		x1, -12(x2)	# 1461
	lw		x5, -8(x2)	# 1462
	beq		x4, x5, beq.33609	# 1462
	addi	x4, x0, 1	# 1463
	jalr	x0, x1, 0	# 1463
beq.33609:
	lw		x4, -4(x2)	# 1465
	addi	x4, x4, 1	# 1465
	lw		x5, 0(x2)	# 1465
	jal		x0, shadow_check_one_or_group.2895.17910	# 1465
beq.33608:
	addi	x4, x0, 0	# 1458
	jalr	x0, x1, 0	# 1458
shadow_check_one_or_matrix.2898.17913:
	mul		x6, x30, x4	# 1471
	add		x6, x5, x6	# 1471
	lw		x6, 0(x6)	# 1471
	addi	x8, x6, 0	# 1472
	lw		x8, 0(x8)	# 1472
	addi	x9, x0, -1	# 28
	beq		x8, x9, beq.33610	# 1473
	addi	x9, x0, 99	# 1477
	sw		x6, 0(x2)	# 1477
	sw		x5, -4(x2)	# 1477
	sw		x4, -8(x2)	# 1477
	sw		x0, -12(x2)	# 1477
	beq		x8, x9, beq.33612	# 1477
	mul		x8, x30, x8	# 1168
	addi	x9, x8, 44308	# 1168
	lw		x9, 0(x9)	# 1168
	addi	x10, x0, 44812	# 1169
	flw		f1, 0(x10)	# 1169
	lw		x10, 20(x9)	# 473
	addi	x11, x10, 0	# 478
	flw		f2, 0(x11)	# 478
	fsub	f1, f1, f2	# 1169
	addi	x11, x0, 1	# 6
	addi	x12, x0, 44816	# 1170
	flw		f2, 0(x12)	# 1170
	addi	x12, x10, 4	# 488
	flw		f3, 0(x12)	# 488
	fsub	f2, f2, f3	# 1170
	addi	x12, x0, 2	# 65
	addi	x13, x0, 44820	# 1171
	flw		f3, 0(x13)	# 1171
	addi	x10, x10, 8	# 498
	flw		f4, 0(x10)	# 498
	fsub	f3, f3, f4	# 1171
	addi	x8, x8, 45008	# 1173
	lw		x8, 0(x8)	# 1173
	lw		x10, 4(x9)	# 395
	beq		x10, x11, beq.33614	# 1175
	beq		x10, x12, beq.33616	# 1177
	addi	x12, x8, 0	# 1149
	flw		f4, 0(x12)	# 1149
	feq		f4, f0, feq.33618	# 120
	addi	x12, x8, 4	# 1153
	flw		f6, 0(x12)	# 1153
	fmul	f6, f6, f1	# 1153
	addi	x12, x8, 8	# 1153
	flw		f7, 0(x12)	# 1153
	fmul	f7, f7, f2	# 1153
	fadd	f6, f6, f7	# 1153
	addi	x12, x0, 3	# 16
	addi	x13, x8, 12	# 1153
	flw		f7, 0(x13)	# 1153
	fmul	f7, f7, f3	# 1153
	fadd	f6, f6, f7	# 1153
	fmul	f7, f1, f1	# 127
	lw		x13, 16(x9)	# 433
	addi	x14, x13, 0	# 438
	flw		f8, 0(x14)	# 438
	fmul	f7, f7, f8	# 1009
	fmul	f8, f2, f2	# 127
	addi	x14, x13, 4	# 448
	flw		f9, 0(x14)	# 448
	fmul	f8, f8, f9	# 1009
	fadd	f7, f7, f8	# 1009
	fmul	f8, f3, f3	# 127
	addi	x13, x13, 8	# 458
	flw		f9, 0(x13)	# 458
	fmul	f8, f8, f9	# 1009
	fadd	f7, f7, f8	# 1009
	lw		x13, 12(x9)	# 424
	beq		x13, x0, beq.33620	# 1011
	fmul	f8, f2, f3	# 1015
	lw		x13, 36(x9)	# 553
	addi	x14, x13, 0	# 558
	flw		f9, 0(x14)	# 558
	fmul	f8, f8, f9	# 1015
	fadd	f7, f7, f8	# 1014
	fmul	f3, f3, f1	# 1016
	addi	x14, x13, 4	# 568
	flw		f8, 0(x14)	# 568
	fmul	f3, f3, f8	# 1016
	fadd	f3, f7, f3	# 1014
	fmul	f1, f1, f2	# 1017
	addi	x13, x13, 8	# 578
	flw		f2, 0(x13)	# 578
	fmul	f1, f1, f2	# 1017
	fadd	f1, f3, f1	# 1014
	jal		x0, beq_cont.33619	# 1011
beq.33620:
	fadd	f1, f0, f7	# 1012
beq_cont.33619:
	beq		x10, x12, beq.33622	# 1155
	jal		x0, beq_cont.33621	# 1155
beq.33622:
	fsub	f1, f1, f30	# 1155
beq_cont.33621:
	fmul	f2, f6, f6	# 127
	fmul	f1, f4, f1	# 1156
	fsub	f1, f2, f1	# 1156
	fle		f1, f0, fle.33624	# 121
	lw		x9, 24(x9)	# 415
	beq		x9, x0, beq.33626	# 1158
	fsqrt	f1, f1	# 1159
	fadd	f1, f6, f1	# 1159
	addi	x8, x8, 16	# 1159
	flw		f2, 0(x8)	# 1159
	fmul	f1, f1, f2	# 1159
	addi	x8, x0, 44800	# 1159
	fsw		f1, 0(x8)	# 1159
	jal		x0, beq_cont.33625	# 1158
beq.33626:
	fsqrt	f1, f1	# 1161
	fsub	f1, f6, f1	# 1161
	addi	x8, x8, 16	# 1161
	flw		f2, 0(x8)	# 1161
	fmul	f1, f1, f2	# 1161
	addi	x8, x0, 44800	# 1161
	fsw		f1, 0(x8)	# 1161
beq_cont.33625:
	addi	x8, x0, 1	# 1162
	jal		x0, beq_cont.33613	# 121
fle.33624:
	addi	x8, x0, 0	# 1163
	jal		x0, beq_cont.33613	# 120
feq.33618:
	addi	x8, x0, 0	# 1151
	jal		x0, beq_cont.33613	# 1177
beq.33616:
	addi	x9, x8, 0	# 1139
	flw		f4, 0(x9)	# 1139
	fle		f0, f4, fle.33628	# 122
	addi	x9, x8, 4	# 1141
	flw		f4, 0(x9)	# 1141
	fmul	f1, f4, f1	# 1141
	addi	x9, x8, 8	# 1141
	flw		f4, 0(x9)	# 1141
	fmul	f2, f4, f2	# 1141
	fadd	f1, f1, f2	# 1141
	addi	x8, x8, 12	# 1141
	flw		f2, 0(x8)	# 1141
	fmul	f2, f2, f3	# 1141
	fadd	f1, f1, f2	# 1141
	addi	x8, x0, 44800	# 1140
	fsw		f1, 0(x8)	# 1140
	addi	x8, x0, 1	# 1142
	jal		x0, beq_cont.33613	# 122
fle.33628:
	addi	x8, x0, 0	# 1143
	jal		x0, beq_cont.33613	# 1175
beq.33614:
	addi	x10, x8, 0	# 1106
	flw		f4, 0(x10)	# 1106
	fsub	f4, f4, f1	# 1106
	addi	x10, x8, 4	# 1106
	flw		f5, 0(x10)	# 1106
	fmul	f4, f4, f5	# 1106
	addi	x10, x0, 45000	# 1108
	flw		f6, 0(x10)	# 1108
	fmul	f7, f4, f6	# 1108
	fadd	f7, f7, f2	# 1108
	fle		f7, f0, fle.33630	# 124
	jal		x0, fle_cont.33629	# 124
fle.33630:
	fsub	f7, f0, f7	# 124
fle_cont.33629:
	lw		x9, 16(x9)	# 443
	addi	x10, x9, 4	# 448
	flw		f9, 0(x10)	# 448
	fle		f9, f7, fle.33632	# 125
	addi	x10, x0, 45004	# 1109
	flw		f7, 0(x10)	# 1109
	fmul	f7, f4, f7	# 1109
	fadd	f7, f7, f3	# 1109
	fle		f7, f0, fle.33634	# 124
	jal		x0, fle_cont.33633	# 124
fle.33634:
	fsub	f7, f0, f7	# 124
fle_cont.33633:
	addi	x10, x9, 8	# 458
	flw		f10, 0(x10)	# 458
	fle		f10, f7, fle.33636	# 125
	feq		f5, f0, feq.33638	# 120
	addi	x10, x0, 1	# 1110
	jal		x0, fle_cont.33631	# 120
feq.33638:
	addi	x10, x0, 0	# 1110
	jal		x0, fle_cont.33631	# 125
fle.33636:
	addi	x10, x0, 0	# 1111
	jal		x0, fle_cont.33631	# 125
fle.33632:
	addi	x10, x0, 0	# 1112
fle_cont.33631:
	beq		x10, x0, beq.33640	# 1107
	addi	x8, x0, 44800	# 1114
	fsw		f4, 0(x8)	# 1114
	addi	x8, x0, 1	# 1114
	jal		x0, beq_cont.33613	# 1107
beq.33640:
	addi	x10, x8, 8	# 1115
	flw		f4, 0(x10)	# 1115
	fsub	f4, f4, f2	# 1115
	addi	x10, x8, 12	# 1115
	flw		f5, 0(x10)	# 1115
	fmul	f4, f4, f5	# 1115
	addi	x10, x0, 44996	# 1117
	flw		f7, 0(x10)	# 1117
	fmul	f10, f4, f7	# 1117
	fadd	f10, f10, f1	# 1117
	fle		f10, f0, fle.33642	# 124
	jal		x0, fle_cont.33641	# 124
fle.33642:
	fsub	f10, f0, f10	# 124
fle_cont.33641:
	addi	x10, x9, 0	# 438
	flw		f11, 0(x10)	# 438
	fle		f11, f10, fle.33644	# 125
	addi	x10, x0, 45004	# 1118
	flw		f10, 0(x10)	# 1118
	fmul	f10, f4, f10	# 1118
	fadd	f10, f10, f3	# 1118
	fle		f10, f0, fle.33646	# 124
	jal		x0, fle_cont.33645	# 124
fle.33646:
	fsub	f10, f0, f10	# 124
fle_cont.33645:
	addi	x9, x9, 8	# 458
	flw		f12, 0(x9)	# 458
	fle		f12, f10, fle.33648	# 125
	feq		f5, f0, feq.33650	# 120
	addi	x9, x0, 1	# 1119
	jal		x0, fle_cont.33643	# 120
feq.33650:
	addi	x9, x0, 0	# 1119
	jal		x0, fle_cont.33643	# 125
fle.33648:
	addi	x9, x0, 0	# 1120
	jal		x0, fle_cont.33643	# 125
fle.33644:
	addi	x9, x0, 0	# 1121
fle_cont.33643:
	beq		x9, x0, beq.33652	# 1116
	addi	x8, x0, 44800	# 1123
	fsw		f4, 0(x8)	# 1123
	addi	x8, x0, 2	# 1123
	jal		x0, beq_cont.33613	# 1116
beq.33652:
	addi	x9, x8, 16	# 1124
	flw		f4, 0(x9)	# 1124
	fsub	f3, f4, f3	# 1124
	addi	x8, x8, 20	# 1124
	flw		f4, 0(x8)	# 1124
	fmul	f3, f3, f4	# 1124
	fmul	f5, f3, f7	# 1126
	fadd	f1, f5, f1	# 1126
	fle		f1, f0, fle.33654	# 124
	jal		x0, fle_cont.33653	# 124
fle.33654:
	fsub	f1, f0, f1	# 124
fle_cont.33653:
	fle		f11, f1, fle.33656	# 125
	fmul	f1, f3, f6	# 1127
	fadd	f1, f1, f2	# 1127
	fle		f1, f0, fle.33658	# 124
	jal		x0, fle_cont.33657	# 124
fle.33658:
	fsub	f1, f0, f1	# 124
fle_cont.33657:
	fle		f9, f1, fle.33660	# 125
	feq		f4, f0, feq.33662	# 120
	addi	x8, x0, 1	# 1128
	jal		x0, fle_cont.33655	# 120
feq.33662:
	addi	x8, x0, 0	# 1128
	jal		x0, fle_cont.33655	# 125
fle.33660:
	addi	x8, x0, 0	# 1129
	jal		x0, fle_cont.33655	# 125
fle.33656:
	addi	x8, x0, 0	# 1130
fle_cont.33655:
	beq		x8, x0, beq.33664	# 1125
	addi	x8, x0, 44800	# 1132
	fsw		f3, 0(x8)	# 1132
	addi	x8, x0, 3	# 1132
	jal		x0, beq_cont.33613	# 1125
beq.33664:
	addi	x8, x0, 0	# 1134
beq_cont.33613:
	beq		x8, x0, beq.33666	# 1483
	addi	x8, x0, 44800	# 1484
	flw		f1, 0(x8)	# 1484
	fle		f20, f1, fle.33668	# 125
	addi	x5, x6, 0	# 1485
	addi	x4, x11, 0	# 1485
	sw		x1, -16(x2)	# 1485
	addi	x2, x2, -20	# 1485
	jal		x1, shadow_check_one_or_group.2895.17910	# 1485
	addi	x2, x2, 20	# 1485
	lw		x1, -16(x2)	# 1485
	lw		x5, -12(x2)	# 1485
	beq		x4, x5, beq.33670	# 1485
	addi	x4, x0, 1	# 1486
	jal		x0, beq_cont.33611	# 1485
beq.33670:
	addi	x4, x0, 0	# 1487
	jal		x0, beq_cont.33611	# 125
fle.33668:
	addi	x4, x0, 0	# 1488
	jal		x0, beq_cont.33611	# 1483
beq.33666:
	addi	x4, x0, 0	# 1489
	jal		x0, beq_cont.33611	# 1477
beq.33612:
	addi	x4, x0, 1	# 1478
beq_cont.33611:
	lw		x5, -12(x2)	# 1476
	beq		x4, x5, beq.33671	# 1476
	addi	x4, x0, 1	# 6
	lw		x6, 0(x2)	# 1491
	addi	x5, x6, 0	# 1491
	sw		x1, -16(x2)	# 1491
	addi	x2, x2, -20	# 1491
	jal		x1, shadow_check_one_or_group.2895.17910	# 1491
	addi	x2, x2, 20	# 1491
	lw		x1, -16(x2)	# 1491
	lw		x5, -12(x2)	# 1491
	beq		x4, x5, beq.33672	# 1491
	addi	x4, x0, 1	# 1492
	jalr	x0, x1, 0	# 1492
beq.33672:
	lw		x4, -8(x2)	# 1494
	addi	x4, x4, 1	# 1494
	lw		x5, -4(x2)	# 1494
	jal		x0, shadow_check_one_or_matrix.2898.17913	# 1494
beq.33671:
	lw		x4, -8(x2)	# 1496
	addi	x4, x4, 1	# 1496
	lw		x5, -4(x2)	# 1496
	jal		x0, shadow_check_one_or_matrix.2898.17913	# 1496
beq.33610:
	addi	x4, x0, 0	# 1474
	jalr	x0, x1, 0	# 1474
solve_each_element.2901.17916:
	mul		x7, x30, x4	# 1507
	add		x7, x5, x7	# 1507
	lw		x7, 0(x7)	# 1507
	addi	x8, x0, -1	# 28
	beq		x7, x8, beq.33673	# 1508
	mul		x8, x30, x7	# 1074
	addi	x8, x8, 44308	# 1074
	lw		x8, 0(x8)	# 1074
	addi	x9, x0, 0	# 6
	addi	x10, x0, 44896	# 1076
	flw		f1, 0(x10)	# 1076
	lw		x10, 20(x8)	# 473
	addi	x11, x10, 0	# 478
	flw		f2, 0(x11)	# 478
	fsub	f2, f1, f2	# 1076
	addi	x11, x0, 1	# 6
	addi	x12, x0, 44900	# 1077
	flw		f3, 0(x12)	# 1077
	addi	x12, x10, 4	# 488
	flw		f4, 0(x12)	# 488
	fsub	f4, f3, f4	# 1077
	addi	x12, x0, 2	# 65
	addi	x13, x0, 44904	# 1078
	flw		f5, 0(x13)	# 1078
	addi	x10, x10, 8	# 498
	flw		f6, 0(x10)	# 498
	fsub	f6, f5, f6	# 1078
	lw		x10, 4(x8)	# 395
	beq		x10, x11, beq.33675	# 1081
	beq		x10, x12, beq.33677	# 1082
	addi	x11, x6, 0	# 1048
	flw		f7, 0(x11)	# 1048
	addi	x11, x6, 4	# 1048
	flw		f8, 0(x11)	# 1048
	addi	x11, x6, 8	# 1048
	flw		f9, 0(x11)	# 1048
	fmul	f10, f7, f7	# 127
	lw		x11, 16(x8)	# 433
	addi	x12, x11, 0	# 438
	flw		f11, 0(x12)	# 438
	fmul	f10, f10, f11	# 1009
	fmul	f12, f8, f8	# 127
	addi	x12, x11, 4	# 448
	flw		f13, 0(x12)	# 448
	fmul	f12, f12, f13	# 1009
	fadd	f10, f10, f12	# 1009
	fmul	f12, f9, f9	# 127
	addi	x11, x11, 8	# 458
	flw		f14, 0(x11)	# 458
	fmul	f12, f12, f14	# 1009
	fadd	f10, f10, f12	# 1009
	lw		x11, 12(x8)	# 424
	beq		x11, x0, beq_cont.33678	# 1011
	fmul	f12, f8, f9	# 1015
	lw		x12, 36(x8)	# 553
	addi	x13, x12, 0	# 558
	flw		f15, 0(x13)	# 558
	fmul	f12, f12, f15	# 1015
	fadd	f10, f10, f12	# 1014
	fmul	f12, f9, f7	# 1016
	addi	x13, x12, 4	# 568
	flw		f15, 0(x13)	# 568
	fmul	f12, f12, f15	# 1016
	fadd	f10, f10, f12	# 1014
	fmul	f12, f7, f8	# 1017
	addi	x12, x12, 8	# 578
	flw		f15, 0(x12)	# 578
	fmul	f12, f12, f15	# 1017
	fadd	f10, f10, f12	# 1014
beq_cont.33678:
	feq		f10, f0, feq.33681	# 120
	fmul	f15, f7, f2	# 1023
	fmul	f15, f15, f11	# 1023
	fmul	f16, f8, f4	# 1024
	fmul	f16, f16, f13	# 1024
	fadd	f15, f15, f16	# 1023
	fmul	f16, f9, f6	# 1025
	fmul	f16, f16, f14	# 1025
	fadd	f15, f15, f16	# 1023
	beq		x11, x0, beq.33683	# 1027
	fmul	f16, f9, f4	# 1031
	fmul	f17, f8, f6	# 1031
	fadd	f16, f16, f17	# 1031
	lw		x12, 36(x8)	# 553
	addi	x13, x12, 0	# 558
	flw		f17, 0(x13)	# 558
	fmul	f16, f16, f17	# 1031
	fmul	f17, f7, f6	# 1032
	fmul	f9, f9, f2	# 1032
	fadd	f9, f17, f9	# 1032
	addi	x13, x12, 4	# 568
	flw		f17, 0(x13)	# 568
	fmul	f9, f9, f17	# 1032
	fadd	f9, f16, f9	# 1031
	fmul	f7, f7, f4	# 1033
	fmul	f8, f8, f2	# 1033
	fadd	f7, f7, f8	# 1033
	addi	x12, x12, 8	# 578
	flw		f8, 0(x12)	# 578
	fmul	f7, f7, f8	# 1033
	fadd	f7, f9, f7	# 1031
	lui		x12, %hi(l.27776)	# 126
	ori		x12, x0, %lo(l.27776)	# 126
	flw		f8, 0(x12)	# 126
	fmul	f7, f7, f8	# 126
	fadd	f7, f15, f7	# 1030
	jal		x0, beq_cont.33682	# 1027
beq.33683:
	fadd	f7, f0, f15	# 1028
beq_cont.33682:
	fmul	f8, f2, f2	# 127
	fmul	f8, f8, f11	# 1009
	fmul	f9, f4, f4	# 127
	fmul	f9, f9, f13	# 1009
	fadd	f8, f8, f9	# 1009
	fmul	f9, f6, f6	# 127
	fmul	f9, f9, f14	# 1009
	fadd	f8, f8, f9	# 1009
	beq		x11, x0, beq.33685	# 1011
	fmul	f9, f4, f6	# 1015
	lw		x11, 36(x8)	# 553
	addi	x12, x11, 0	# 558
	flw		f11, 0(x12)	# 558
	fmul	f9, f9, f11	# 1015
	fadd	f8, f8, f9	# 1014
	fmul	f6, f6, f2	# 1016
	addi	x12, x11, 4	# 568
	flw		f9, 0(x12)	# 568
	fmul	f6, f6, f9	# 1016
	fadd	f6, f8, f6	# 1014
	fmul	f2, f2, f4	# 1017
	addi	x11, x11, 8	# 578
	flw		f4, 0(x11)	# 578
	fmul	f2, f2, f4	# 1017
	fadd	f2, f6, f2	# 1014
	jal		x0, beq_cont.33684	# 1011
beq.33685:
	fadd	f2, f0, f8	# 1012
beq_cont.33684:
	addi	x11, x0, 3	# 16
	beq		x10, x11, beq.33687	# 1058
	jal		x0, beq_cont.33686	# 1058
beq.33687:
	fsub	f2, f2, f30	# 1058
beq_cont.33686:
	fmul	f4, f7, f7	# 127
	fmul	f2, f10, f2	# 1060
	fsub	f2, f4, f2	# 1060
	fle		f2, f0, fle.33689	# 121
	fsqrt	f2, f2	# 1063
	lw		x10, 24(x8)	# 415
	beq		x10, x0, beq.33691	# 1064
	jal		x0, beq_cont.33690	# 1064
beq.33691:
	fsub	f2, f0, f2	# 123
beq_cont.33690:
	fsub	f2, f2, f7	# 1065
	fdiv	f2, f2, f10	# 1065
	addi	x10, x0, 44800	# 1065
	fsw		f2, 0(x10)	# 1065
	addi	x10, x0, 1	# 1065
	jal		x0, beq_cont.33674	# 121
fle.33689:
	addi	x10, x0, 0	# 1068
	jal		x0, beq_cont.33674	# 120
feq.33681:
	addi	x10, x0, 0	# 1051
	jal		x0, beq_cont.33674	# 1082
beq.33677:
	lw		x10, 16(x8)	# 463
	addi	x11, x6, 0	# 334
	flw		f7, 0(x11)	# 334
	addi	x11, x10, 0	# 334
	flw		f8, 0(x11)	# 334
	fmul	f7, f7, f8	# 334
	addi	x11, x6, 4	# 334
	flw		f9, 0(x11)	# 334
	addi	x11, x10, 4	# 334
	flw		f10, 0(x11)	# 334
	fmul	f9, f9, f10	# 334
	fadd	f7, f7, f9	# 334
	addi	x11, x6, 8	# 334
	flw		f9, 0(x11)	# 334
	addi	x10, x10, 8	# 334
	flw		f11, 0(x10)	# 334
	fmul	f9, f9, f11	# 334
	fadd	f7, f7, f9	# 334
	fle		f7, f0, fle.33693	# 121
	fmul	f2, f8, f2	# 339
	fmul	f4, f10, f4	# 339
	fadd	f2, f2, f4	# 339
	fmul	f4, f11, f6	# 339
	fadd	f2, f2, f4	# 339
	fsub	f2, f0, f2	# 123
	fdiv	f2, f2, f7	# 999
	addi	x10, x0, 44800	# 999
	fsw		f2, 0(x10)	# 999
	addi	x10, x0, 1	# 1000
	jal		x0, beq_cont.33674	# 121
fle.33693:
	addi	x10, x0, 0	# 1001
	jal		x0, beq_cont.33674	# 1081
beq.33675:
	addi	x10, x6, 0	# 970
	flw		f7, 0(x10)	# 970
	feq		f7, f0, feq.33695	# 120
	lw		x10, 16(x8)	# 463
	lw		x11, 24(x8)	# 415
	fle		f0, f7, fle.33697	# 122
	addi	x12, x0, 1	# 122
	jal		x0, fle_cont.33696	# 122
fle.33697:
	addi	x12, x0, 0	# 122
fle_cont.33696:
	beq		x11, x0, beq.33699	# 246
	fle		f0, f7, fle.33701	# 122
	addi	x11, x0, 0	# 246
	jal		x0, beq_cont.33698	# 122
fle.33701:
	addi	x11, x0, 1	# 246
	jal		x0, beq_cont.33698	# 246
beq.33699:
	addi	x11, x12, 0	# 246
beq_cont.33698:
	addi	x12, x10, 0	# 972
	flw		f9, 0(x12)	# 972
	beq		x11, x0, beq.33703	# 261
	jal		x0, beq_cont.33702	# 261
beq.33703:
	fsub	f9, f0, f9	# 123
beq_cont.33702:
	fsub	f9, f9, f2	# 974
	fdiv	f9, f9, f7	# 974
	addi	x11, x6, 4	# 975
	flw		f10, 0(x11)	# 975
	fmul	f10, f9, f10	# 975
	fadd	f10, f10, f4	# 975
	fle		f10, f0, fle.33705	# 124
	jal		x0, fle_cont.33704	# 124
fle.33705:
	fsub	f10, f0, f10	# 124
fle_cont.33704:
	addi	x11, x10, 4	# 975
	flw		f11, 0(x11)	# 975
	fle		f11, f10, fle.33707	# 125
	addi	x11, x6, 8	# 976
	flw		f10, 0(x11)	# 976
	fmul	f10, f9, f10	# 976
	fadd	f10, f10, f6	# 976
	fle		f10, f0, fle.33709	# 124
	jal		x0, fle_cont.33708	# 124
fle.33709:
	fsub	f10, f0, f10	# 124
fle_cont.33708:
	addi	x10, x10, 8	# 976
	flw		f11, 0(x10)	# 976
	fle		f11, f10, fle.33711	# 125
	addi	x10, x0, 44800	# 977
	fsw		f9, 0(x10)	# 977
	addi	x10, x0, 1	# 977
	jal		x0, feq_cont.33694	# 125
fle.33711:
	addi	x10, x0, 0	# 978
	jal		x0, feq_cont.33694	# 125
fle.33707:
	addi	x10, x0, 0	# 979
	jal		x0, feq_cont.33694	# 120
feq.33695:
	addi	x10, x0, 0	# 970
feq_cont.33694:
	beq		x10, x0, beq.33713	# 985
	addi	x10, x0, 1	# 985
	jal		x0, beq_cont.33674	# 985
beq.33713:
	addi	x10, x6, 4	# 970
	flw		f9, 0(x10)	# 970
	feq		f9, f0, feq.33715	# 120
	lw		x10, 16(x8)	# 463
	lw		x11, 24(x8)	# 415
	fle		f0, f9, fle.33717	# 122
	addi	x12, x0, 1	# 122
	jal		x0, fle_cont.33716	# 122
fle.33717:
	addi	x12, x0, 0	# 122
fle_cont.33716:
	beq		x11, x0, beq.33719	# 246
	fle		f0, f9, fle.33721	# 122
	addi	x11, x0, 0	# 246
	jal		x0, beq_cont.33718	# 122
fle.33721:
	addi	x11, x0, 1	# 246
	jal		x0, beq_cont.33718	# 246
beq.33719:
	addi	x11, x12, 0	# 246
beq_cont.33718:
	addi	x12, x10, 4	# 972
	flw		f10, 0(x12)	# 972
	beq		x11, x0, beq.33723	# 261
	jal		x0, beq_cont.33722	# 261
beq.33723:
	fsub	f10, f0, f10	# 123
beq_cont.33722:
	fsub	f10, f10, f4	# 974
	fdiv	f10, f10, f9	# 974
	addi	x11, x6, 8	# 975
	flw		f11, 0(x11)	# 975
	fmul	f11, f10, f11	# 975
	fadd	f11, f11, f6	# 975
	fle		f11, f0, fle.33725	# 124
	jal		x0, fle_cont.33724	# 124
fle.33725:
	fsub	f11, f0, f11	# 124
fle_cont.33724:
	addi	x11, x10, 8	# 975
	flw		f12, 0(x11)	# 975
	fle		f12, f11, fle.33727	# 125
	fmul	f11, f10, f7	# 976
	fadd	f11, f11, f2	# 976
	fle		f11, f0, fle.33729	# 124
	jal		x0, fle_cont.33728	# 124
fle.33729:
	fsub	f11, f0, f11	# 124
fle_cont.33728:
	addi	x10, x10, 0	# 976
	flw		f12, 0(x10)	# 976
	fle		f12, f11, fle.33731	# 125
	addi	x10, x0, 44800	# 977
	fsw		f10, 0(x10)	# 977
	addi	x10, x0, 1	# 977
	jal		x0, feq_cont.33714	# 125
fle.33731:
	addi	x10, x0, 0	# 978
	jal		x0, feq_cont.33714	# 125
fle.33727:
	addi	x10, x0, 0	# 979
	jal		x0, feq_cont.33714	# 120
feq.33715:
	addi	x10, x0, 0	# 970
feq_cont.33714:
	beq		x10, x0, beq.33733	# 986
	addi	x10, x0, 2	# 986
	jal		x0, beq_cont.33674	# 986
beq.33733:
	addi	x10, x6, 8	# 970
	flw		f10, 0(x10)	# 970
	feq		f10, f0, feq.33735	# 120
	lw		x10, 16(x8)	# 463
	lw		x11, 24(x8)	# 415
	fle		f0, f10, fle.33737	# 122
	addi	x12, x0, 1	# 122
	jal		x0, fle_cont.33736	# 122
fle.33737:
	addi	x12, x0, 0	# 122
fle_cont.33736:
	beq		x11, x0, beq.33739	# 246
	fle		f0, f10, fle.33741	# 122
	addi	x11, x0, 0	# 246
	jal		x0, beq_cont.33738	# 122
fle.33741:
	addi	x11, x0, 1	# 246
	jal		x0, beq_cont.33738	# 246
beq.33739:
	addi	x11, x12, 0	# 246
beq_cont.33738:
	addi	x12, x10, 8	# 972
	flw		f11, 0(x12)	# 972
	beq		x11, x0, beq.33743	# 261
	jal		x0, beq_cont.33742	# 261
beq.33743:
	fsub	f11, f0, f11	# 123
beq_cont.33742:
	fsub	f6, f11, f6	# 974
	fdiv	f6, f6, f10	# 974
	fmul	f7, f6, f7	# 975
	fadd	f2, f7, f2	# 975
	fle		f2, f0, fle.33745	# 124
	jal		x0, fle_cont.33744	# 124
fle.33745:
	fsub	f2, f0, f2	# 124
fle_cont.33744:
	addi	x11, x10, 0	# 975
	flw		f7, 0(x11)	# 975
	fle		f7, f2, fle.33747	# 125
	fmul	f2, f6, f9	# 976
	fadd	f2, f2, f4	# 976
	fle		f2, f0, fle.33749	# 124
	jal		x0, fle_cont.33748	# 124
fle.33749:
	fsub	f2, f0, f2	# 124
fle_cont.33748:
	addi	x10, x10, 4	# 976
	flw		f4, 0(x10)	# 976
	fle		f4, f2, fle.33751	# 125
	addi	x10, x0, 44800	# 977
	fsw		f6, 0(x10)	# 977
	addi	x10, x0, 1	# 977
	jal		x0, feq_cont.33734	# 125
fle.33751:
	addi	x10, x0, 0	# 978
	jal		x0, feq_cont.33734	# 125
fle.33747:
	addi	x10, x0, 0	# 979
	jal		x0, feq_cont.33734	# 120
feq.33735:
	addi	x10, x0, 0	# 970
feq_cont.33734:
	beq		x10, x0, beq.33753	# 987
	addi	x10, x0, 3	# 987
	jal		x0, beq_cont.33674	# 987
beq.33753:
	addi	x10, x0, 0	# 988
beq_cont.33674:
	beq		x10, x0, beq.33754	# 1511
	addi	x8, x0, 44800	# 1515
	flw		f2, 0(x8)	# 1515
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x4, -8(x2)	# 125
	fle		f2, f0, fle_cont.33755	# 125
	addi	x8, x0, 44808	# 1518
	flw		f4, 0(x8)	# 1518
	fle		f4, f2, fle_cont.33755	# 125
	fadd	f2, f2, f18	# 1520
	addi	x11, x6, 0	# 1521
	flw		f4, 0(x11)	# 1521
	fmul	f4, f4, f2	# 1521
	fadd	f1, f4, f1	# 1521
	addi	x11, x6, 4	# 1522
	flw		f4, 0(x11)	# 1522
	fmul	f4, f4, f2	# 1522
	fadd	f3, f4, f3	# 1522
	addi	x11, x6, 8	# 1523
	flw		f4, 0(x11)	# 1523
	fmul	f4, f4, f2	# 1523
	fadd	f4, f4, f5	# 1523
	sw		x10, -12(x2)	# 1524
	sw		x7, -16(x2)	# 1524
	fsw		f4, -20(x2)	# 1524
	fsw		f3, -24(x2)	# 1524
	fsw		f1, -28(x2)	# 1524
	sw		x8, -32(x2)	# 1524
	fsw		f2, -36(x2)	# 1524
	sw		x0, -40(x2)	# 1524
	addi	x4, x0, 0	# 1524
	fadd	f2, f0, f3	# 1524
	fadd	f3, f0, f4	# 1524
	sw		x1, -44(x2)	# 1524
	addi	x2, x2, -48	# 1524
	jal		x1, check_all_inside.2886.17901	# 1524
	addi	x2, x2, 48	# 1524
	lw		x1, -44(x2)	# 1524
	lw		x5, -40(x2)	# 1524
	beq		x4, x5, fle_cont.33755	# 1524
	flw		f1, -36(x2)	# 1526
	lw		x4, -32(x2)	# 1526
	fsw		f1, 0(x4)	# 1526
	addi	x4, x0, 44812	# 282
	flw		f1, -28(x2)	# 282
	fsw		f1, 0(x4)	# 282
	addi	x4, x0, 44816	# 283
	flw		f1, -24(x2)	# 283
	fsw		f1, 0(x4)	# 283
	addi	x4, x0, 44820	# 284
	flw		f1, -20(x2)	# 284
	fsw		f1, 0(x4)	# 284
	addi	x4, x0, 44824	# 1528
	lw		x5, -16(x2)	# 1528
	sw		x5, 0(x4)	# 1528
	addi	x4, x0, 44804	# 1529
	lw		x5, -12(x2)	# 1529
	sw		x5, 0(x4)	# 1529
fle_cont.33755:
	lw		x4, -8(x2)	# 1535
	addi	x4, x4, 1	# 1535
	lw		x5, -4(x2)	# 1535
	lw		x6, 0(x2)	# 1535
	jal		x0, solve_each_element.2901.17916	# 1535
beq.33754:
	lw		x7, 24(x8)	# 415
	beq		x7, x0, beq.33761	# 1539
	addi	x4, x4, 1	# 1540
	jal		x0, solve_each_element.2901.17916	# 1540
beq.33761:
	jalr	x0, x1, 0	# 1541
beq.33673:
	jalr	x0, x1, 0	# 1508
solve_one_or_network.2905.17920:
	mul		x7, x30, x4	# 1548
	add		x7, x5, x7	# 1548
	lw		x7, 0(x7)	# 1548
	addi	x8, x0, -1	# 28
	beq		x7, x8, beq.33764	# 1549
	mul		x7, x30, x7	# 1550
	addi	x7, x7, 44592	# 1550
	lw		x7, 0(x7)	# 1550
	addi	x8, x0, 0	# 6
	sw		x6, 0(x2)	# 1551
	sw		x5, -4(x2)	# 1551
	sw		x4, -8(x2)	# 1551
	addi	x5, x7, 0	# 1551
	addi	x4, x0, 0	# 1551
	sw		x1, -12(x2)	# 1551
	addi	x2, x2, -16	# 1551
	jal		x1, solve_each_element.2901.17916	# 1551
	addi	x2, x2, 16	# 1551
	lw		x1, -12(x2)	# 1551
	lw		x4, -8(x2)	# 1552
	addi	x4, x4, 1	# 1552
	lw		x5, -4(x2)	# 1552
	lw		x6, 0(x2)	# 1552
	jal		x0, solve_one_or_network.2905.17920	# 1552
beq.33764:
	jalr	x0, x1, 0	# 1553
trace_or_matrix.2909.17924:
	mul		x7, x30, x4	# 1558
	add		x7, x5, x7	# 1558
	lw		x7, 0(x7)	# 1558
	addi	x9, x7, 0	# 1559
	lw		x9, 0(x9)	# 1559
	addi	x10, x0, -1	# 28
	beq		x9, x10, beq.33766	# 1560
	addi	x10, x0, 99	# 1563
	sw		x6, 0(x2)	# 1563
	sw		x5, -4(x2)	# 1563
	sw		x4, -8(x2)	# 1563
	beq		x9, x10, beq.33768	# 1563
	mul		x9, x30, x9	# 1074
	addi	x9, x9, 44308	# 1074
	lw		x9, 0(x9)	# 1074
	addi	x10, x0, 44896	# 1076
	flw		f1, 0(x10)	# 1076
	lw		x10, 20(x9)	# 473
	addi	x11, x10, 0	# 478
	flw		f2, 0(x11)	# 478
	fsub	f1, f1, f2	# 1076
	addi	x11, x0, 1	# 6
	addi	x12, x0, 44900	# 1077
	flw		f2, 0(x12)	# 1077
	addi	x12, x10, 4	# 488
	flw		f3, 0(x12)	# 488
	fsub	f2, f2, f3	# 1077
	addi	x12, x0, 2	# 65
	addi	x13, x0, 44904	# 1078
	flw		f3, 0(x13)	# 1078
	addi	x10, x10, 8	# 498
	flw		f4, 0(x10)	# 498
	fsub	f3, f3, f4	# 1078
	lw		x10, 4(x9)	# 395
	beq		x10, x11, beq.33770	# 1081
	beq		x10, x12, beq.33772	# 1082
	addi	x12, x6, 0	# 1048
	flw		f4, 0(x12)	# 1048
	addi	x12, x6, 4	# 1048
	flw		f5, 0(x12)	# 1048
	addi	x12, x6, 8	# 1048
	flw		f6, 0(x12)	# 1048
	fmul	f7, f4, f4	# 127
	lw		x12, 16(x9)	# 433
	addi	x13, x12, 0	# 438
	flw		f8, 0(x13)	# 438
	fmul	f7, f7, f8	# 1009
	fmul	f9, f5, f5	# 127
	addi	x13, x12, 4	# 448
	flw		f10, 0(x13)	# 448
	fmul	f9, f9, f10	# 1009
	fadd	f7, f7, f9	# 1009
	fmul	f9, f6, f6	# 127
	addi	x12, x12, 8	# 458
	flw		f11, 0(x12)	# 458
	fmul	f9, f9, f11	# 1009
	fadd	f7, f7, f9	# 1009
	lw		x12, 12(x9)	# 424
	beq		x12, x0, beq_cont.33773	# 1011
	fmul	f9, f5, f6	# 1015
	lw		x13, 36(x9)	# 553
	addi	x14, x13, 0	# 558
	flw		f12, 0(x14)	# 558
	fmul	f9, f9, f12	# 1015
	fadd	f7, f7, f9	# 1014
	fmul	f9, f6, f4	# 1016
	addi	x14, x13, 4	# 568
	flw		f12, 0(x14)	# 568
	fmul	f9, f9, f12	# 1016
	fadd	f7, f7, f9	# 1014
	fmul	f9, f4, f5	# 1017
	addi	x13, x13, 8	# 578
	flw		f12, 0(x13)	# 578
	fmul	f9, f9, f12	# 1017
	fadd	f7, f7, f9	# 1014
beq_cont.33773:
	feq		f7, f0, feq.33776	# 120
	fmul	f12, f4, f1	# 1023
	fmul	f12, f12, f8	# 1023
	fmul	f13, f5, f2	# 1024
	fmul	f13, f13, f10	# 1024
	fadd	f12, f12, f13	# 1023
	fmul	f13, f6, f3	# 1025
	fmul	f13, f13, f11	# 1025
	fadd	f12, f12, f13	# 1023
	beq		x12, x0, beq.33778	# 1027
	fmul	f13, f6, f2	# 1031
	fmul	f14, f5, f3	# 1031
	fadd	f13, f13, f14	# 1031
	lw		x13, 36(x9)	# 553
	addi	x14, x13, 0	# 558
	flw		f14, 0(x14)	# 558
	fmul	f13, f13, f14	# 1031
	fmul	f14, f4, f3	# 1032
	fmul	f6, f6, f1	# 1032
	fadd	f6, f14, f6	# 1032
	addi	x14, x13, 4	# 568
	flw		f14, 0(x14)	# 568
	fmul	f6, f6, f14	# 1032
	fadd	f6, f13, f6	# 1031
	fmul	f4, f4, f2	# 1033
	fmul	f5, f5, f1	# 1033
	fadd	f4, f4, f5	# 1033
	addi	x13, x13, 8	# 578
	flw		f5, 0(x13)	# 578
	fmul	f4, f4, f5	# 1033
	fadd	f4, f6, f4	# 1031
	lui		x13, %hi(l.27776)	# 126
	ori		x13, x0, %lo(l.27776)	# 126
	flw		f5, 0(x13)	# 126
	fmul	f4, f4, f5	# 126
	fadd	f4, f12, f4	# 1030
	jal		x0, beq_cont.33777	# 1027
beq.33778:
	fadd	f4, f0, f12	# 1028
beq_cont.33777:
	fmul	f5, f1, f1	# 127
	fmul	f5, f5, f8	# 1009
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f10	# 1009
	fadd	f5, f5, f6	# 1009
	fmul	f6, f3, f3	# 127
	fmul	f6, f6, f11	# 1009
	fadd	f5, f5, f6	# 1009
	beq		x12, x0, beq.33780	# 1011
	fmul	f6, f2, f3	# 1015
	lw		x12, 36(x9)	# 553
	addi	x13, x12, 0	# 558
	flw		f8, 0(x13)	# 558
	fmul	f6, f6, f8	# 1015
	fadd	f5, f5, f6	# 1014
	fmul	f3, f3, f1	# 1016
	addi	x13, x12, 4	# 568
	flw		f6, 0(x13)	# 568
	fmul	f3, f3, f6	# 1016
	fadd	f3, f5, f3	# 1014
	fmul	f1, f1, f2	# 1017
	addi	x12, x12, 8	# 578
	flw		f2, 0(x12)	# 578
	fmul	f1, f1, f2	# 1017
	fadd	f1, f3, f1	# 1014
	jal		x0, beq_cont.33779	# 1011
beq.33780:
	fadd	f1, f0, f5	# 1012
beq_cont.33779:
	addi	x12, x0, 3	# 16
	beq		x10, x12, beq.33782	# 1058
	jal		x0, beq_cont.33781	# 1058
beq.33782:
	fsub	f1, f1, f30	# 1058
beq_cont.33781:
	fmul	f2, f4, f4	# 127
	fmul	f1, f7, f1	# 1060
	fsub	f1, f2, f1	# 1060
	fle		f1, f0, fle.33784	# 121
	fsqrt	f1, f1	# 1063
	lw		x9, 24(x9)	# 415
	beq		x9, x0, beq.33786	# 1064
	jal		x0, beq_cont.33785	# 1064
beq.33786:
	fsub	f1, f0, f1	# 123
beq_cont.33785:
	fsub	f1, f1, f4	# 1065
	fdiv	f1, f1, f7	# 1065
	addi	x9, x0, 44800	# 1065
	fsw		f1, 0(x9)	# 1065
	addi	x9, x0, 1	# 1065
	jal		x0, beq_cont.33769	# 121
fle.33784:
	addi	x9, x0, 0	# 1068
	jal		x0, beq_cont.33769	# 120
feq.33776:
	addi	x9, x0, 0	# 1051
	jal		x0, beq_cont.33769	# 1082
beq.33772:
	lw		x9, 16(x9)	# 463
	addi	x10, x6, 0	# 334
	flw		f4, 0(x10)	# 334
	addi	x10, x9, 0	# 334
	flw		f5, 0(x10)	# 334
	fmul	f4, f4, f5	# 334
	addi	x10, x6, 4	# 334
	flw		f6, 0(x10)	# 334
	addi	x10, x9, 4	# 334
	flw		f7, 0(x10)	# 334
	fmul	f6, f6, f7	# 334
	fadd	f4, f4, f6	# 334
	addi	x10, x6, 8	# 334
	flw		f6, 0(x10)	# 334
	addi	x9, x9, 8	# 334
	flw		f8, 0(x9)	# 334
	fmul	f6, f6, f8	# 334
	fadd	f4, f4, f6	# 334
	fle		f4, f0, fle.33788	# 121
	fmul	f1, f5, f1	# 339
	fmul	f2, f7, f2	# 339
	fadd	f1, f1, f2	# 339
	fmul	f2, f8, f3	# 339
	fadd	f1, f1, f2	# 339
	fsub	f1, f0, f1	# 123
	fdiv	f1, f1, f4	# 999
	addi	x9, x0, 44800	# 999
	fsw		f1, 0(x9)	# 999
	addi	x9, x0, 1	# 1000
	jal		x0, beq_cont.33769	# 121
fle.33788:
	addi	x9, x0, 0	# 1001
	jal		x0, beq_cont.33769	# 1081
beq.33770:
	addi	x10, x6, 0	# 970
	flw		f4, 0(x10)	# 970
	feq		f4, f0, feq.33790	# 120
	lw		x10, 16(x9)	# 463
	lw		x12, 24(x9)	# 415
	fle		f0, f4, fle.33792	# 122
	addi	x13, x0, 1	# 122
	jal		x0, fle_cont.33791	# 122
fle.33792:
	addi	x13, x0, 0	# 122
fle_cont.33791:
	beq		x12, x0, beq.33794	# 246
	fle		f0, f4, fle.33796	# 122
	addi	x12, x0, 0	# 246
	jal		x0, beq_cont.33793	# 122
fle.33796:
	addi	x12, x0, 1	# 246
	jal		x0, beq_cont.33793	# 246
beq.33794:
	addi	x12, x13, 0	# 246
beq_cont.33793:
	addi	x13, x10, 0	# 972
	flw		f6, 0(x13)	# 972
	beq		x12, x0, beq.33798	# 261
	jal		x0, beq_cont.33797	# 261
beq.33798:
	fsub	f6, f0, f6	# 123
beq_cont.33797:
	fsub	f6, f6, f1	# 974
	fdiv	f6, f6, f4	# 974
	addi	x12, x6, 4	# 975
	flw		f7, 0(x12)	# 975
	fmul	f7, f6, f7	# 975
	fadd	f7, f7, f2	# 975
	fle		f7, f0, fle.33800	# 124
	jal		x0, fle_cont.33799	# 124
fle.33800:
	fsub	f7, f0, f7	# 124
fle_cont.33799:
	addi	x12, x10, 4	# 975
	flw		f8, 0(x12)	# 975
	fle		f8, f7, fle.33802	# 125
	addi	x12, x6, 8	# 976
	flw		f7, 0(x12)	# 976
	fmul	f7, f6, f7	# 976
	fadd	f7, f7, f3	# 976
	fle		f7, f0, fle.33804	# 124
	jal		x0, fle_cont.33803	# 124
fle.33804:
	fsub	f7, f0, f7	# 124
fle_cont.33803:
	addi	x10, x10, 8	# 976
	flw		f8, 0(x10)	# 976
	fle		f8, f7, fle.33806	# 125
	addi	x10, x0, 44800	# 977
	fsw		f6, 0(x10)	# 977
	addi	x10, x0, 1	# 977
	jal		x0, feq_cont.33789	# 125
fle.33806:
	addi	x10, x0, 0	# 978
	jal		x0, feq_cont.33789	# 125
fle.33802:
	addi	x10, x0, 0	# 979
	jal		x0, feq_cont.33789	# 120
feq.33790:
	addi	x10, x0, 0	# 970
feq_cont.33789:
	beq		x10, x0, beq.33808	# 985
	addi	x9, x0, 1	# 985
	jal		x0, beq_cont.33769	# 985
beq.33808:
	addi	x10, x6, 4	# 970
	flw		f6, 0(x10)	# 970
	feq		f6, f0, feq.33810	# 120
	lw		x10, 16(x9)	# 463
	lw		x12, 24(x9)	# 415
	fle		f0, f6, fle.33812	# 122
	addi	x13, x0, 1	# 122
	jal		x0, fle_cont.33811	# 122
fle.33812:
	addi	x13, x0, 0	# 122
fle_cont.33811:
	beq		x12, x0, beq.33814	# 246
	fle		f0, f6, fle.33816	# 122
	addi	x12, x0, 0	# 246
	jal		x0, beq_cont.33813	# 122
fle.33816:
	addi	x12, x0, 1	# 246
	jal		x0, beq_cont.33813	# 246
beq.33814:
	addi	x12, x13, 0	# 246
beq_cont.33813:
	addi	x13, x10, 4	# 972
	flw		f7, 0(x13)	# 972
	beq		x12, x0, beq.33818	# 261
	jal		x0, beq_cont.33817	# 261
beq.33818:
	fsub	f7, f0, f7	# 123
beq_cont.33817:
	fsub	f7, f7, f2	# 974
	fdiv	f7, f7, f6	# 974
	addi	x12, x6, 8	# 975
	flw		f8, 0(x12)	# 975
	fmul	f8, f7, f8	# 975
	fadd	f8, f8, f3	# 975
	fle		f8, f0, fle.33820	# 124
	jal		x0, fle_cont.33819	# 124
fle.33820:
	fsub	f8, f0, f8	# 124
fle_cont.33819:
	addi	x12, x10, 8	# 975
	flw		f9, 0(x12)	# 975
	fle		f9, f8, fle.33822	# 125
	fmul	f8, f7, f4	# 976
	fadd	f8, f8, f1	# 976
	fle		f8, f0, fle.33824	# 124
	jal		x0, fle_cont.33823	# 124
fle.33824:
	fsub	f8, f0, f8	# 124
fle_cont.33823:
	addi	x10, x10, 0	# 976
	flw		f9, 0(x10)	# 976
	fle		f9, f8, fle.33826	# 125
	addi	x10, x0, 44800	# 977
	fsw		f7, 0(x10)	# 977
	addi	x10, x0, 1	# 977
	jal		x0, feq_cont.33809	# 125
fle.33826:
	addi	x10, x0, 0	# 978
	jal		x0, feq_cont.33809	# 125
fle.33822:
	addi	x10, x0, 0	# 979
	jal		x0, feq_cont.33809	# 120
feq.33810:
	addi	x10, x0, 0	# 970
feq_cont.33809:
	beq		x10, x0, beq.33828	# 986
	addi	x9, x0, 2	# 986
	jal		x0, beq_cont.33769	# 986
beq.33828:
	addi	x10, x6, 8	# 970
	flw		f7, 0(x10)	# 970
	feq		f7, f0, feq.33830	# 120
	lw		x10, 16(x9)	# 463
	lw		x9, 24(x9)	# 415
	fle		f0, f7, fle.33832	# 122
	addi	x12, x0, 1	# 122
	jal		x0, fle_cont.33831	# 122
fle.33832:
	addi	x12, x0, 0	# 122
fle_cont.33831:
	beq		x9, x0, beq.33834	# 246
	fle		f0, f7, fle.33836	# 122
	addi	x9, x0, 0	# 246
	jal		x0, beq_cont.33833	# 122
fle.33836:
	addi	x9, x0, 1	# 246
	jal		x0, beq_cont.33833	# 246
beq.33834:
	addi	x9, x12, 0	# 246
beq_cont.33833:
	addi	x12, x10, 8	# 972
	flw		f8, 0(x12)	# 972
	beq		x9, x0, beq.33838	# 261
	jal		x0, beq_cont.33837	# 261
beq.33838:
	fsub	f8, f0, f8	# 123
beq_cont.33837:
	fsub	f3, f8, f3	# 974
	fdiv	f3, f3, f7	# 974
	fmul	f4, f3, f4	# 975
	fadd	f1, f4, f1	# 975
	fle		f1, f0, fle.33840	# 124
	jal		x0, fle_cont.33839	# 124
fle.33840:
	fsub	f1, f0, f1	# 124
fle_cont.33839:
	addi	x9, x10, 0	# 975
	flw		f4, 0(x9)	# 975
	fle		f4, f1, fle.33842	# 125
	fmul	f1, f3, f6	# 976
	fadd	f1, f1, f2	# 976
	fle		f1, f0, fle.33844	# 124
	jal		x0, fle_cont.33843	# 124
fle.33844:
	fsub	f1, f0, f1	# 124
fle_cont.33843:
	addi	x9, x10, 4	# 976
	flw		f2, 0(x9)	# 976
	fle		f2, f1, fle.33846	# 125
	addi	x9, x0, 44800	# 977
	fsw		f3, 0(x9)	# 977
	addi	x9, x0, 1	# 977
	jal		x0, feq_cont.33829	# 125
fle.33846:
	addi	x9, x0, 0	# 978
	jal		x0, feq_cont.33829	# 125
fle.33842:
	addi	x9, x0, 0	# 979
	jal		x0, feq_cont.33829	# 120
feq.33830:
	addi	x9, x0, 0	# 970
feq_cont.33829:
	beq		x9, x0, beq.33848	# 987
	addi	x9, x0, 3	# 987
	jal		x0, beq_cont.33769	# 987
beq.33848:
	addi	x9, x0, 0	# 988
beq_cont.33769:
	beq		x9, x0, beq_cont.33767	# 1569
	addi	x8, x0, 44800	# 1570
	flw		f1, 0(x8)	# 1570
	addi	x8, x0, 44808	# 1571
	flw		f2, 0(x8)	# 1571
	fle		f2, f1, beq_cont.33767	# 125
	addi	x5, x7, 0	# 1572
	addi	x4, x11, 0	# 1572
	sw		x1, -12(x2)	# 1572
	addi	x2, x2, -16	# 1572
	jal		x1, solve_one_or_network.2905.17920	# 1572
	addi	x2, x2, 16	# 1572
	lw		x1, -12(x2)	# 1572
	jal		x0, beq_cont.33767	# 125
beq.33768:
	addi	x8, x0, 1	# 6
	addi	x5, x7, 0	# 1564
	addi	x4, x8, 0	# 1564
	sw		x1, -12(x2)	# 1564
	addi	x2, x2, -16	# 1564
	jal		x1, solve_one_or_network.2905.17920	# 1564
	addi	x2, x2, 16	# 1564
	lw		x1, -12(x2)	# 1564
beq_cont.33767:
	lw		x4, -8(x2)	# 1576
	addi	x4, x4, 1	# 1576
	lw		x5, -4(x2)	# 1576
	lw		x6, 0(x2)	# 1576
	jal		x0, trace_or_matrix.2909.17924	# 1576
beq.33766:
	jalr	x0, x1, 0	# 1561
solve_each_element_fast.2915.17928:
	lw		x7, 0(x6)	# 681
	mul		x8, x30, x4	# 1601
	add		x8, x5, x8	# 1601
	lw		x8, 0(x8)	# 1601
	addi	x9, x0, -1	# 28
	beq		x8, x9, beq.33854	# 1602
	mul		x10, x30, x8	# 1215
	addi	x11, x10, 44308	# 1215
	lw		x11, 0(x11)	# 1215
	lw		x12, 40(x11)	# 590
	addi	x13, x0, 0	# 6
	addi	x14, x12, 0	# 1217
	flw		f1, 0(x14)	# 1217
	addi	x14, x0, 1	# 6
	addi	x15, x12, 4	# 1218
	flw		f2, 0(x15)	# 1218
	addi	x15, x0, 2	# 65
	addi	x16, x12, 8	# 1219
	flw		f3, 0(x16)	# 1219
	lw		x16, 4(x6)	# 687
	add		x10, x16, x10	# 1221
	lw		x10, 0(x10)	# 1221
	lw		x17, 4(x11)	# 395
	beq		x17, x14, beq.33856	# 1223
	beq		x17, x15, beq.33858	# 1225
	addi	x17, x10, 0	# 1197
	flw		f4, 0(x17)	# 1197
	feq		f4, f0, feq.33860	# 120
	addi	x17, x10, 4	# 1201
	flw		f6, 0(x17)	# 1201
	fmul	f1, f6, f1	# 1201
	addi	x17, x10, 8	# 1201
	flw		f6, 0(x17)	# 1201
	fmul	f2, f6, f2	# 1201
	fadd	f1, f1, f2	# 1201
	addi	x17, x10, 12	# 1201
	flw		f2, 0(x17)	# 1201
	fmul	f2, f2, f3	# 1201
	fadd	f1, f1, f2	# 1201
	addi	x12, x12, 12	# 1202
	flw		f2, 0(x12)	# 1202
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1203
	fsub	f2, f3, f2	# 1203
	fle		f2, f0, fle.33862	# 121
	lw		x12, 24(x11)	# 415
	beq		x12, x0, beq.33864	# 1205
	fsqrt	f2, f2	# 1206
	fadd	f1, f1, f2	# 1206
	addi	x10, x10, 16	# 1206
	flw		f2, 0(x10)	# 1206
	fmul	f1, f1, f2	# 1206
	addi	x10, x0, 44800	# 1206
	fsw		f1, 0(x10)	# 1206
	jal		x0, beq_cont.33863	# 1205
beq.33864:
	fsqrt	f2, f2	# 1208
	fsub	f1, f1, f2	# 1208
	addi	x10, x10, 16	# 1208
	flw		f2, 0(x10)	# 1208
	fmul	f1, f1, f2	# 1208
	addi	x10, x0, 44800	# 1208
	fsw		f1, 0(x10)	# 1208
beq_cont.33863:
	addi	x10, x0, 1	# 1209
	jal		x0, beq_cont.33855	# 121
fle.33862:
	addi	x10, x0, 0	# 1210
	jal		x0, beq_cont.33855	# 120
feq.33860:
	addi	x10, x0, 0	# 1199
	jal		x0, beq_cont.33855	# 1225
beq.33858:
	addi	x10, x10, 0	# 1188
	flw		f1, 0(x10)	# 1188
	fle		f0, f1, fle.33866	# 122
	addi	x10, x12, 12	# 1189
	flw		f2, 0(x10)	# 1189
	fmul	f1, f1, f2	# 1189
	addi	x10, x0, 44800	# 1189
	fsw		f1, 0(x10)	# 1189
	addi	x10, x0, 1	# 1190
	jal		x0, beq_cont.33855	# 122
fle.33866:
	addi	x10, x0, 0	# 1191
	jal		x0, beq_cont.33855	# 1223
beq.33856:
	addi	x12, x10, 0	# 1106
	flw		f4, 0(x12)	# 1106
	fsub	f4, f4, f1	# 1106
	addi	x12, x10, 4	# 1106
	flw		f5, 0(x12)	# 1106
	fmul	f4, f4, f5	# 1106
	addi	x12, x7, 4	# 1108
	flw		f6, 0(x12)	# 1108
	fmul	f7, f4, f6	# 1108
	fadd	f7, f7, f2	# 1108
	fle		f7, f0, fle.33868	# 124
	jal		x0, fle_cont.33867	# 124
fle.33868:
	fsub	f7, f0, f7	# 124
fle_cont.33867:
	lw		x12, 16(x11)	# 443
	addi	x17, x12, 4	# 448
	flw		f9, 0(x17)	# 448
	fle		f9, f7, fle.33870	# 125
	addi	x17, x7, 8	# 1109
	flw		f7, 0(x17)	# 1109
	fmul	f7, f4, f7	# 1109
	fadd	f7, f7, f3	# 1109
	fle		f7, f0, fle.33872	# 124
	jal		x0, fle_cont.33871	# 124
fle.33872:
	fsub	f7, f0, f7	# 124
fle_cont.33871:
	addi	x17, x12, 8	# 458
	flw		f10, 0(x17)	# 458
	fle		f10, f7, fle.33874	# 125
	feq		f5, f0, feq.33876	# 120
	addi	x17, x0, 1	# 1110
	jal		x0, fle_cont.33869	# 120
feq.33876:
	addi	x17, x0, 0	# 1110
	jal		x0, fle_cont.33869	# 125
fle.33874:
	addi	x17, x0, 0	# 1111
	jal		x0, fle_cont.33869	# 125
fle.33870:
	addi	x17, x0, 0	# 1112
fle_cont.33869:
	beq		x17, x0, beq.33878	# 1107
	addi	x10, x0, 44800	# 1114
	fsw		f4, 0(x10)	# 1114
	addi	x10, x0, 1	# 1114
	jal		x0, beq_cont.33855	# 1107
beq.33878:
	addi	x17, x10, 8	# 1115
	flw		f4, 0(x17)	# 1115
	fsub	f4, f4, f2	# 1115
	addi	x17, x10, 12	# 1115
	flw		f5, 0(x17)	# 1115
	fmul	f4, f4, f5	# 1115
	addi	x17, x7, 0	# 1117
	flw		f7, 0(x17)	# 1117
	fmul	f10, f4, f7	# 1117
	fadd	f10, f10, f1	# 1117
	fle		f10, f0, fle.33880	# 124
	jal		x0, fle_cont.33879	# 124
fle.33880:
	fsub	f10, f0, f10	# 124
fle_cont.33879:
	addi	x17, x12, 0	# 438
	flw		f11, 0(x17)	# 438
	fle		f11, f10, fle.33882	# 125
	addi	x17, x7, 8	# 1118
	flw		f10, 0(x17)	# 1118
	fmul	f10, f4, f10	# 1118
	fadd	f10, f10, f3	# 1118
	fle		f10, f0, fle.33884	# 124
	jal		x0, fle_cont.33883	# 124
fle.33884:
	fsub	f10, f0, f10	# 124
fle_cont.33883:
	addi	x12, x12, 8	# 458
	flw		f12, 0(x12)	# 458
	fle		f12, f10, fle.33886	# 125
	feq		f5, f0, feq.33888	# 120
	addi	x12, x0, 1	# 1119
	jal		x0, fle_cont.33881	# 120
feq.33888:
	addi	x12, x0, 0	# 1119
	jal		x0, fle_cont.33881	# 125
fle.33886:
	addi	x12, x0, 0	# 1120
	jal		x0, fle_cont.33881	# 125
fle.33882:
	addi	x12, x0, 0	# 1121
fle_cont.33881:
	beq		x12, x0, beq.33890	# 1116
	addi	x10, x0, 44800	# 1123
	fsw		f4, 0(x10)	# 1123
	addi	x10, x0, 2	# 1123
	jal		x0, beq_cont.33855	# 1116
beq.33890:
	addi	x12, x10, 16	# 1124
	flw		f4, 0(x12)	# 1124
	fsub	f3, f4, f3	# 1124
	addi	x10, x10, 20	# 1124
	flw		f4, 0(x10)	# 1124
	fmul	f3, f3, f4	# 1124
	fmul	f5, f3, f7	# 1126
	fadd	f1, f5, f1	# 1126
	fle		f1, f0, fle.33892	# 124
	jal		x0, fle_cont.33891	# 124
fle.33892:
	fsub	f1, f0, f1	# 124
fle_cont.33891:
	fle		f11, f1, fle.33894	# 125
	fmul	f1, f3, f6	# 1127
	fadd	f1, f1, f2	# 1127
	fle		f1, f0, fle.33896	# 124
	jal		x0, fle_cont.33895	# 124
fle.33896:
	fsub	f1, f0, f1	# 124
fle_cont.33895:
	fle		f9, f1, fle.33898	# 125
	feq		f4, f0, feq.33900	# 120
	addi	x10, x0, 1	# 1128
	jal		x0, fle_cont.33893	# 120
feq.33900:
	addi	x10, x0, 0	# 1128
	jal		x0, fle_cont.33893	# 125
fle.33898:
	addi	x10, x0, 0	# 1129
	jal		x0, fle_cont.33893	# 125
fle.33894:
	addi	x10, x0, 0	# 1130
fle_cont.33893:
	beq		x10, x0, beq.33902	# 1125
	addi	x10, x0, 44800	# 1132
	fsw		f3, 0(x10)	# 1132
	addi	x10, x0, 3	# 1132
	jal		x0, beq_cont.33855	# 1125
beq.33902:
	addi	x10, x0, 0	# 1134
beq_cont.33855:
	beq		x10, x0, beq.33903	# 1605
	addi	x11, x0, 44800	# 1609
	flw		f1, 0(x11)	# 1609
	sw		x6, 0(x2)	# 125
	sw		x0, -4(x2)	# 125
	fsw		f0, -8(x2)	# 125
	sw		x7, -12(x2)	# 125
	sw		x9, -16(x2)	# 125
	sw		x5, -20(x2)	# 125
	sw		x4, -24(x2)	# 125
	fle		f1, f0, fle_cont.33904	# 125
	addi	x12, x0, 44808	# 1612
	flw		f3, 0(x12)	# 1612
	fle		f3, f1, fle_cont.33904	# 125
	fadd	f1, f1, f18	# 1614
	addi	x17, x7, 0	# 1615
	flw		f3, 0(x17)	# 1615
	fmul	f3, f3, f1	# 1615
	addi	x17, x0, 44908	# 1615
	flw		f4, 0(x17)	# 1615
	fadd	f3, f3, f4	# 1615
	addi	x17, x7, 4	# 1616
	flw		f4, 0(x17)	# 1616
	fmul	f4, f4, f1	# 1616
	addi	x17, x0, 44912	# 1616
	flw		f5, 0(x17)	# 1616
	fadd	f4, f4, f5	# 1616
	addi	x17, x7, 8	# 1617
	flw		f5, 0(x17)	# 1617
	fmul	f5, f5, f1	# 1617
	addi	x17, x0, 44916	# 1617
	flw		f6, 0(x17)	# 1617
	fadd	f5, f5, f6	# 1617
	sw		x10, -28(x2)	# 1618
	sw		x8, -32(x2)	# 1618
	fsw		f5, -36(x2)	# 1618
	fsw		f4, -40(x2)	# 1618
	fsw		f3, -44(x2)	# 1618
	fsw		f1, -48(x2)	# 1618
	addi	x4, x0, 0	# 1618
	fadd	f2, f0, f4	# 1618
	fadd	f1, f0, f3	# 1618
	fadd	f3, f0, f5	# 1618
	sw		x1, -52(x2)	# 1618
	addi	x2, x2, -56	# 1618
	jal		x1, check_all_inside.2886.17901	# 1618
	addi	x2, x2, 56	# 1618
	lw		x1, -52(x2)	# 1618
	lw		x5, -4(x2)	# 1618
	beq		x4, x5, fle_cont.33904	# 1618
	flw		f1, -48(x2)	# 1620
	fsw		f1, 0(x12)	# 1620
	addi	x4, x0, 44812	# 282
	flw		f1, -44(x2)	# 282
	fsw		f1, 0(x4)	# 282
	addi	x4, x0, 44816	# 283
	flw		f1, -40(x2)	# 283
	fsw		f1, 0(x4)	# 283
	addi	x4, x0, 44820	# 284
	flw		f1, -36(x2)	# 284
	fsw		f1, 0(x4)	# 284
	addi	x4, x0, 44824	# 1622
	lw		x6, -32(x2)	# 1622
	sw		x6, 0(x4)	# 1622
	addi	x4, x0, 44804	# 1623
	lw		x6, -28(x2)	# 1623
	sw		x6, 0(x4)	# 1623
fle_cont.33904:
	lw		x4, -24(x2)	# 1629
	addi	x4, x4, 1	# 1629
	mul		x5, x30, x4	# 1601
	lw		x6, -20(x2)	# 1601
	add		x5, x6, x5	# 1601
	lw		x5, 0(x5)	# 1601
	lw		x7, -16(x2)	# 1602
	beq		x5, x7, beq.33910	# 1602
	mul		x7, x30, x5	# 1215
	addi	x8, x7, 44308	# 1215
	lw		x8, 0(x8)	# 1215
	lw		x9, 40(x8)	# 590
	addi	x10, x9, 0	# 1217
	flw		f1, 0(x10)	# 1217
	addi	x10, x9, 4	# 1218
	flw		f2, 0(x10)	# 1218
	addi	x10, x9, 8	# 1219
	flw		f3, 0(x10)	# 1219
	add		x7, x16, x7	# 1221
	lw		x7, 0(x7)	# 1221
	lw		x10, 4(x8)	# 395
	beq		x10, x14, beq.33912	# 1223
	beq		x10, x15, beq.33914	# 1225
	addi	x10, x7, 0	# 1197
	flw		f4, 0(x10)	# 1197
	flw		f5, -8(x2)	# 120
	feq		f4, f5, feq.33916	# 120
	addi	x10, x7, 4	# 1201
	flw		f6, 0(x10)	# 1201
	fmul	f1, f6, f1	# 1201
	addi	x10, x7, 8	# 1201
	flw		f6, 0(x10)	# 1201
	fmul	f2, f6, f2	# 1201
	fadd	f1, f1, f2	# 1201
	addi	x10, x7, 12	# 1201
	flw		f2, 0(x10)	# 1201
	fmul	f2, f2, f3	# 1201
	fadd	f1, f1, f2	# 1201
	addi	x9, x9, 12	# 1202
	flw		f2, 0(x9)	# 1202
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1203
	fsub	f2, f3, f2	# 1203
	fle		f2, f5, fle.33918	# 121
	lw		x9, 24(x8)	# 415
	lw		x10, -4(x2)	# 1205
	beq		x9, x10, beq.33920	# 1205
	fsqrt	f2, f2	# 1206
	fadd	f1, f1, f2	# 1206
	addi	x7, x7, 16	# 1206
	flw		f2, 0(x7)	# 1206
	fmul	f1, f1, f2	# 1206
	fsw		f1, 0(x11)	# 1206
	jal		x0, beq_cont.33919	# 1205
beq.33920:
	fsqrt	f2, f2	# 1208
	fsub	f1, f1, f2	# 1208
	addi	x7, x7, 16	# 1208
	flw		f2, 0(x7)	# 1208
	fmul	f1, f1, f2	# 1208
	fsw		f1, 0(x11)	# 1208
beq_cont.33919:
	addi	x7, x0, 1	# 1209
	jal		x0, beq_cont.33911	# 121
fle.33918:
	addi	x7, x0, 0	# 1210
	jal		x0, beq_cont.33911	# 120
feq.33916:
	addi	x7, x0, 0	# 1199
	jal		x0, beq_cont.33911	# 1225
beq.33914:
	addi	x7, x7, 0	# 1188
	flw		f1, 0(x7)	# 1188
	flw		f2, -8(x2)	# 122
	fle		f2, f1, fle.33922	# 122
	addi	x7, x9, 12	# 1189
	flw		f3, 0(x7)	# 1189
	fmul	f1, f1, f3	# 1189
	fsw		f1, 0(x11)	# 1189
	addi	x7, x0, 1	# 1190
	jal		x0, beq_cont.33911	# 122
fle.33922:
	addi	x7, x0, 0	# 1191
	jal		x0, beq_cont.33911	# 1223
beq.33912:
	addi	x9, x7, 0	# 1106
	flw		f4, 0(x9)	# 1106
	fsub	f4, f4, f1	# 1106
	addi	x9, x7, 4	# 1106
	flw		f5, 0(x9)	# 1106
	fmul	f4, f4, f5	# 1106
	lw		x9, -12(x2)	# 1108
	addi	x10, x9, 4	# 1108
	flw		f6, 0(x10)	# 1108
	fmul	f7, f4, f6	# 1108
	fadd	f7, f7, f2	# 1108
	flw		f8, -8(x2)	# 124
	fle		f7, f8, fle.33924	# 124
	jal		x0, fle_cont.33923	# 124
fle.33924:
	fsub	f7, f0, f7	# 124
fle_cont.33923:
	lw		x10, 16(x8)	# 443
	addi	x12, x10, 4	# 448
	flw		f9, 0(x12)	# 448
	fle		f9, f7, fle.33926	# 125
	addi	x12, x9, 8	# 1109
	flw		f7, 0(x12)	# 1109
	fmul	f7, f4, f7	# 1109
	fadd	f7, f7, f3	# 1109
	fle		f7, f8, fle.33928	# 124
	jal		x0, fle_cont.33927	# 124
fle.33928:
	fsub	f7, f0, f7	# 124
fle_cont.33927:
	addi	x12, x10, 8	# 458
	flw		f10, 0(x12)	# 458
	fle		f10, f7, fle.33930	# 125
	feq		f5, f8, feq.33932	# 120
	addi	x12, x0, 1	# 1110
	jal		x0, fle_cont.33925	# 120
feq.33932:
	addi	x12, x0, 0	# 1110
	jal		x0, fle_cont.33925	# 125
fle.33930:
	addi	x12, x0, 0	# 1111
	jal		x0, fle_cont.33925	# 125
fle.33926:
	addi	x12, x0, 0	# 1112
fle_cont.33925:
	lw		x13, -4(x2)	# 1107
	beq		x12, x13, beq.33934	# 1107
	fsw		f4, 0(x11)	# 1114
	addi	x7, x0, 1	# 1114
	jal		x0, beq_cont.33911	# 1107
beq.33934:
	addi	x12, x7, 8	# 1115
	flw		f4, 0(x12)	# 1115
	fsub	f4, f4, f2	# 1115
	addi	x12, x7, 12	# 1115
	flw		f5, 0(x12)	# 1115
	fmul	f4, f4, f5	# 1115
	addi	x12, x9, 0	# 1117
	flw		f7, 0(x12)	# 1117
	fmul	f10, f4, f7	# 1117
	fadd	f10, f10, f1	# 1117
	fle		f10, f8, fle.33936	# 124
	jal		x0, fle_cont.33935	# 124
fle.33936:
	fsub	f10, f0, f10	# 124
fle_cont.33935:
	addi	x12, x10, 0	# 438
	flw		f11, 0(x12)	# 438
	fle		f11, f10, fle.33938	# 125
	addi	x12, x9, 8	# 1118
	flw		f10, 0(x12)	# 1118
	fmul	f10, f4, f10	# 1118
	fadd	f10, f10, f3	# 1118
	fle		f10, f8, fle.33940	# 124
	jal		x0, fle_cont.33939	# 124
fle.33940:
	fsub	f10, f0, f10	# 124
fle_cont.33939:
	addi	x10, x10, 8	# 458
	flw		f12, 0(x10)	# 458
	fle		f12, f10, fle.33942	# 125
	feq		f5, f8, feq.33944	# 120
	addi	x10, x0, 1	# 1119
	jal		x0, fle_cont.33937	# 120
feq.33944:
	addi	x10, x0, 0	# 1119
	jal		x0, fle_cont.33937	# 125
fle.33942:
	addi	x10, x0, 0	# 1120
	jal		x0, fle_cont.33937	# 125
fle.33938:
	addi	x10, x0, 0	# 1121
fle_cont.33937:
	beq		x10, x13, beq.33946	# 1116
	fsw		f4, 0(x11)	# 1123
	addi	x7, x0, 2	# 1123
	jal		x0, beq_cont.33911	# 1116
beq.33946:
	addi	x10, x7, 16	# 1124
	flw		f4, 0(x10)	# 1124
	fsub	f3, f4, f3	# 1124
	addi	x7, x7, 20	# 1124
	flw		f4, 0(x7)	# 1124
	fmul	f3, f3, f4	# 1124
	fmul	f5, f3, f7	# 1126
	fadd	f1, f5, f1	# 1126
	fle		f1, f8, fle.33948	# 124
	jal		x0, fle_cont.33947	# 124
fle.33948:
	fsub	f1, f0, f1	# 124
fle_cont.33947:
	fle		f11, f1, fle.33950	# 125
	fmul	f1, f3, f6	# 1127
	fadd	f1, f1, f2	# 1127
	fle		f1, f8, fle.33952	# 124
	jal		x0, fle_cont.33951	# 124
fle.33952:
	fsub	f1, f0, f1	# 124
fle_cont.33951:
	fle		f9, f1, fle.33954	# 125
	feq		f4, f8, feq.33956	# 120
	addi	x7, x0, 1	# 1128
	jal		x0, fle_cont.33949	# 120
feq.33956:
	addi	x7, x0, 0	# 1128
	jal		x0, fle_cont.33949	# 125
fle.33954:
	addi	x7, x0, 0	# 1129
	jal		x0, fle_cont.33949	# 125
fle.33950:
	addi	x7, x0, 0	# 1130
fle_cont.33949:
	beq		x7, x13, beq.33958	# 1125
	fsw		f3, 0(x11)	# 1132
	addi	x7, x0, 3	# 1132
	jal		x0, beq_cont.33911	# 1125
beq.33958:
	addi	x7, x0, 0	# 1134
beq_cont.33911:
	lw		x9, -4(x2)	# 1605
	beq		x7, x9, beq.33959	# 1605
	flw		f1, 0(x11)	# 1609
	flw		f2, -8(x2)	# 125
	sw		x4, -52(x2)	# 125
	fle		f1, f2, fle_cont.33960	# 125
	addi	x8, x0, 44808	# 1612
	flw		f2, 0(x8)	# 1612
	fle		f2, f1, fle_cont.33960	# 125
	fadd	f1, f1, f18	# 1614
	lw		x10, -12(x2)	# 1615
	addi	x11, x10, 0	# 1615
	flw		f2, 0(x11)	# 1615
	fmul	f2, f2, f1	# 1615
	addi	x11, x0, 44908	# 1615
	flw		f3, 0(x11)	# 1615
	fadd	f2, f2, f3	# 1615
	addi	x11, x10, 4	# 1616
	flw		f3, 0(x11)	# 1616
	fmul	f3, f3, f1	# 1616
	addi	x11, x0, 44912	# 1616
	flw		f4, 0(x11)	# 1616
	fadd	f3, f3, f4	# 1616
	addi	x10, x10, 8	# 1617
	flw		f4, 0(x10)	# 1617
	fmul	f4, f4, f1	# 1617
	addi	x10, x0, 44916	# 1617
	flw		f5, 0(x10)	# 1617
	fadd	f4, f4, f5	# 1617
	sw		x7, -56(x2)	# 1618
	sw		x5, -60(x2)	# 1618
	fsw		f4, -64(x2)	# 1618
	fsw		f3, -68(x2)	# 1618
	fsw		f2, -72(x2)	# 1618
	sw		x8, -76(x2)	# 1618
	fsw		f1, -80(x2)	# 1618
	addi	x5, x6, 0	# 1618
	addi	x4, x9, 0	# 1618
	fadd	f1, f0, f2	# 1618
	fadd	f2, f0, f3	# 1618
	fadd	f3, f0, f4	# 1618
	sw		x1, -84(x2)	# 1618
	addi	x2, x2, -88	# 1618
	jal		x1, check_all_inside.2886.17901	# 1618
	addi	x2, x2, 88	# 1618
	lw		x1, -84(x2)	# 1618
	lw		x5, -4(x2)	# 1618
	beq		x4, x5, fle_cont.33960	# 1618
	flw		f1, -80(x2)	# 1620
	lw		x4, -76(x2)	# 1620
	fsw		f1, 0(x4)	# 1620
	addi	x4, x0, 44812	# 282
	flw		f1, -72(x2)	# 282
	fsw		f1, 0(x4)	# 282
	addi	x4, x0, 44816	# 283
	flw		f1, -68(x2)	# 283
	fsw		f1, 0(x4)	# 283
	addi	x4, x0, 44820	# 284
	flw		f1, -64(x2)	# 284
	fsw		f1, 0(x4)	# 284
	addi	x4, x0, 44824	# 1622
	lw		x5, -60(x2)	# 1622
	sw		x5, 0(x4)	# 1622
	addi	x4, x0, 44804	# 1623
	lw		x5, -56(x2)	# 1623
	sw		x5, 0(x4)	# 1623
fle_cont.33960:
	lw		x4, -52(x2)	# 1629
	addi	x4, x4, 1	# 1629
	lw		x5, -20(x2)	# 1629
	lw		x6, 0(x2)	# 1629
	jal		x0, solve_each_element_fast.2915.17928	# 1629
beq.33959:
	lw		x5, 24(x8)	# 415
	beq		x5, x9, beq.33966	# 1633
	addi	x4, x4, 1	# 1634
	lw		x5, 0(x2)	# 1634
	addi	x31, x6, 0	# 1634
	addi	x6, x5, 0	# 1634
	addi	x5, x31, 0	# 1634
	jal		x0, solve_each_element_fast.2915.17928	# 1634
beq.33966:
	jalr	x0, x1, 0	# 1635
beq.33910:
	jalr	x0, x1, 0	# 1602
beq.33903:
	lw		x8, 24(x11)	# 415
	beq		x8, x0, beq.33969	# 1633
	addi	x4, x4, 1	# 1634
	mul		x8, x30, x4	# 1601
	add		x8, x5, x8	# 1601
	lw		x8, 0(x8)	# 1601
	beq		x8, x9, beq.33970	# 1602
	mul		x9, x30, x8	# 1215
	addi	x10, x9, 44308	# 1215
	lw		x10, 0(x10)	# 1215
	lw		x11, 40(x10)	# 590
	addi	x12, x11, 0	# 1217
	flw		f1, 0(x12)	# 1217
	addi	x12, x11, 4	# 1218
	flw		f2, 0(x12)	# 1218
	addi	x12, x11, 8	# 1219
	flw		f3, 0(x12)	# 1219
	add		x9, x16, x9	# 1221
	lw		x9, 0(x9)	# 1221
	lw		x12, 4(x10)	# 395
	beq		x12, x14, beq.33972	# 1223
	beq		x12, x15, beq.33974	# 1225
	addi	x12, x9, 0	# 1197
	flw		f4, 0(x12)	# 1197
	feq		f4, f0, feq.33976	# 120
	addi	x12, x9, 4	# 1201
	flw		f6, 0(x12)	# 1201
	fmul	f1, f6, f1	# 1201
	addi	x12, x9, 8	# 1201
	flw		f6, 0(x12)	# 1201
	fmul	f2, f6, f2	# 1201
	fadd	f1, f1, f2	# 1201
	addi	x12, x9, 12	# 1201
	flw		f2, 0(x12)	# 1201
	fmul	f2, f2, f3	# 1201
	fadd	f1, f1, f2	# 1201
	addi	x11, x11, 12	# 1202
	flw		f2, 0(x11)	# 1202
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1203
	fsub	f2, f3, f2	# 1203
	fle		f2, f0, fle.33978	# 121
	lw		x11, 24(x10)	# 415
	beq		x11, x0, beq.33980	# 1205
	fsqrt	f2, f2	# 1206
	fadd	f1, f1, f2	# 1206
	addi	x9, x9, 16	# 1206
	flw		f2, 0(x9)	# 1206
	fmul	f1, f1, f2	# 1206
	addi	x9, x0, 44800	# 1206
	fsw		f1, 0(x9)	# 1206
	jal		x0, beq_cont.33979	# 1205
beq.33980:
	fsqrt	f2, f2	# 1208
	fsub	f1, f1, f2	# 1208
	addi	x9, x9, 16	# 1208
	flw		f2, 0(x9)	# 1208
	fmul	f1, f1, f2	# 1208
	addi	x9, x0, 44800	# 1208
	fsw		f1, 0(x9)	# 1208
beq_cont.33979:
	addi	x9, x0, 1	# 1209
	jal		x0, beq_cont.33971	# 121
fle.33978:
	addi	x9, x0, 0	# 1210
	jal		x0, beq_cont.33971	# 120
feq.33976:
	addi	x9, x0, 0	# 1199
	jal		x0, beq_cont.33971	# 1225
beq.33974:
	addi	x9, x9, 0	# 1188
	flw		f1, 0(x9)	# 1188
	fle		f0, f1, fle.33982	# 122
	addi	x9, x11, 12	# 1189
	flw		f2, 0(x9)	# 1189
	fmul	f1, f1, f2	# 1189
	addi	x9, x0, 44800	# 1189
	fsw		f1, 0(x9)	# 1189
	addi	x9, x0, 1	# 1190
	jal		x0, beq_cont.33971	# 122
fle.33982:
	addi	x9, x0, 0	# 1191
	jal		x0, beq_cont.33971	# 1223
beq.33972:
	addi	x11, x9, 0	# 1106
	flw		f4, 0(x11)	# 1106
	fsub	f4, f4, f1	# 1106
	addi	x11, x9, 4	# 1106
	flw		f5, 0(x11)	# 1106
	fmul	f4, f4, f5	# 1106
	addi	x11, x7, 4	# 1108
	flw		f6, 0(x11)	# 1108
	fmul	f7, f4, f6	# 1108
	fadd	f7, f7, f2	# 1108
	fle		f7, f0, fle.33984	# 124
	jal		x0, fle_cont.33983	# 124
fle.33984:
	fsub	f7, f0, f7	# 124
fle_cont.33983:
	lw		x11, 16(x10)	# 443
	addi	x12, x11, 4	# 448
	flw		f9, 0(x12)	# 448
	fle		f9, f7, fle.33986	# 125
	addi	x12, x7, 8	# 1109
	flw		f7, 0(x12)	# 1109
	fmul	f7, f4, f7	# 1109
	fadd	f7, f7, f3	# 1109
	fle		f7, f0, fle.33988	# 124
	jal		x0, fle_cont.33987	# 124
fle.33988:
	fsub	f7, f0, f7	# 124
fle_cont.33987:
	addi	x12, x11, 8	# 458
	flw		f10, 0(x12)	# 458
	fle		f10, f7, fle.33990	# 125
	feq		f5, f0, feq.33992	# 120
	addi	x12, x0, 1	# 1110
	jal		x0, fle_cont.33985	# 120
feq.33992:
	addi	x12, x0, 0	# 1110
	jal		x0, fle_cont.33985	# 125
fle.33990:
	addi	x12, x0, 0	# 1111
	jal		x0, fle_cont.33985	# 125
fle.33986:
	addi	x12, x0, 0	# 1112
fle_cont.33985:
	beq		x12, x0, beq.33994	# 1107
	addi	x9, x0, 44800	# 1114
	fsw		f4, 0(x9)	# 1114
	addi	x9, x0, 1	# 1114
	jal		x0, beq_cont.33971	# 1107
beq.33994:
	addi	x12, x9, 8	# 1115
	flw		f4, 0(x12)	# 1115
	fsub	f4, f4, f2	# 1115
	addi	x12, x9, 12	# 1115
	flw		f5, 0(x12)	# 1115
	fmul	f4, f4, f5	# 1115
	addi	x12, x7, 0	# 1117
	flw		f7, 0(x12)	# 1117
	fmul	f10, f4, f7	# 1117
	fadd	f10, f10, f1	# 1117
	fle		f10, f0, fle.33996	# 124
	jal		x0, fle_cont.33995	# 124
fle.33996:
	fsub	f10, f0, f10	# 124
fle_cont.33995:
	addi	x12, x11, 0	# 438
	flw		f11, 0(x12)	# 438
	fle		f11, f10, fle.33998	# 125
	addi	x12, x7, 8	# 1118
	flw		f10, 0(x12)	# 1118
	fmul	f10, f4, f10	# 1118
	fadd	f10, f10, f3	# 1118
	fle		f10, f0, fle.34000	# 124
	jal		x0, fle_cont.33999	# 124
fle.34000:
	fsub	f10, f0, f10	# 124
fle_cont.33999:
	addi	x11, x11, 8	# 458
	flw		f12, 0(x11)	# 458
	fle		f12, f10, fle.34002	# 125
	feq		f5, f0, feq.34004	# 120
	addi	x11, x0, 1	# 1119
	jal		x0, fle_cont.33997	# 120
feq.34004:
	addi	x11, x0, 0	# 1119
	jal		x0, fle_cont.33997	# 125
fle.34002:
	addi	x11, x0, 0	# 1120
	jal		x0, fle_cont.33997	# 125
fle.33998:
	addi	x11, x0, 0	# 1121
fle_cont.33997:
	beq		x11, x0, beq.34006	# 1116
	addi	x9, x0, 44800	# 1123
	fsw		f4, 0(x9)	# 1123
	addi	x9, x0, 2	# 1123
	jal		x0, beq_cont.33971	# 1116
beq.34006:
	addi	x11, x9, 16	# 1124
	flw		f4, 0(x11)	# 1124
	fsub	f3, f4, f3	# 1124
	addi	x9, x9, 20	# 1124
	flw		f4, 0(x9)	# 1124
	fmul	f3, f3, f4	# 1124
	fmul	f5, f3, f7	# 1126
	fadd	f1, f5, f1	# 1126
	fle		f1, f0, fle.34008	# 124
	jal		x0, fle_cont.34007	# 124
fle.34008:
	fsub	f1, f0, f1	# 124
fle_cont.34007:
	fle		f11, f1, fle.34010	# 125
	fmul	f1, f3, f6	# 1127
	fadd	f1, f1, f2	# 1127
	fle		f1, f0, fle.34012	# 124
	jal		x0, fle_cont.34011	# 124
fle.34012:
	fsub	f1, f0, f1	# 124
fle_cont.34011:
	fle		f9, f1, fle.34014	# 125
	feq		f4, f0, feq.34016	# 120
	addi	x9, x0, 1	# 1128
	jal		x0, fle_cont.34009	# 120
feq.34016:
	addi	x9, x0, 0	# 1128
	jal		x0, fle_cont.34009	# 125
fle.34014:
	addi	x9, x0, 0	# 1129
	jal		x0, fle_cont.34009	# 125
fle.34010:
	addi	x9, x0, 0	# 1130
fle_cont.34009:
	beq		x9, x0, beq.34018	# 1125
	addi	x9, x0, 44800	# 1132
	fsw		f3, 0(x9)	# 1132
	addi	x9, x0, 3	# 1132
	jal		x0, beq_cont.33971	# 1125
beq.34018:
	addi	x9, x0, 0	# 1134
beq_cont.33971:
	beq		x9, x0, beq.34019	# 1605
	addi	x10, x0, 44800	# 1609
	flw		f1, 0(x10)	# 1609
	sw		x6, 0(x2)	# 125
	sw		x5, -20(x2)	# 125
	sw		x4, -84(x2)	# 125
	fle		f1, f0, fle_cont.34020	# 125
	addi	x10, x0, 44808	# 1612
	flw		f2, 0(x10)	# 1612
	fle		f2, f1, fle_cont.34020	# 125
	fadd	f1, f1, f18	# 1614
	addi	x11, x7, 0	# 1615
	flw		f2, 0(x11)	# 1615
	fmul	f2, f2, f1	# 1615
	addi	x11, x0, 44908	# 1615
	flw		f3, 0(x11)	# 1615
	fadd	f2, f2, f3	# 1615
	addi	x11, x7, 4	# 1616
	flw		f3, 0(x11)	# 1616
	fmul	f3, f3, f1	# 1616
	addi	x11, x0, 44912	# 1616
	flw		f4, 0(x11)	# 1616
	fadd	f3, f3, f4	# 1616
	addi	x7, x7, 8	# 1617
	flw		f4, 0(x7)	# 1617
	fmul	f4, f4, f1	# 1617
	addi	x7, x0, 44916	# 1617
	flw		f5, 0(x7)	# 1617
	fadd	f4, f4, f5	# 1617
	sw		x9, -88(x2)	# 1618
	sw		x8, -92(x2)	# 1618
	fsw		f4, -96(x2)	# 1618
	fsw		f3, -100(x2)	# 1618
	fsw		f2, -104(x2)	# 1618
	sw		x10, -108(x2)	# 1618
	fsw		f1, -112(x2)	# 1618
	sw		x0, -4(x2)	# 1618
	addi	x4, x0, 0	# 1618
	fadd	f1, f0, f2	# 1618
	fadd	f2, f0, f3	# 1618
	fadd	f3, f0, f4	# 1618
	sw		x1, -116(x2)	# 1618
	addi	x2, x2, -120	# 1618
	jal		x1, check_all_inside.2886.17901	# 1618
	addi	x2, x2, 120	# 1618
	lw		x1, -116(x2)	# 1618
	lw		x5, -4(x2)	# 1618
	beq		x4, x5, fle_cont.34020	# 1618
	flw		f1, -112(x2)	# 1620
	lw		x4, -108(x2)	# 1620
	fsw		f1, 0(x4)	# 1620
	addi	x4, x0, 44812	# 282
	flw		f1, -104(x2)	# 282
	fsw		f1, 0(x4)	# 282
	addi	x4, x0, 44816	# 283
	flw		f1, -100(x2)	# 283
	fsw		f1, 0(x4)	# 283
	addi	x4, x0, 44820	# 284
	flw		f1, -96(x2)	# 284
	fsw		f1, 0(x4)	# 284
	addi	x4, x0, 44824	# 1622
	lw		x5, -92(x2)	# 1622
	sw		x5, 0(x4)	# 1622
	addi	x4, x0, 44804	# 1623
	lw		x5, -88(x2)	# 1623
	sw		x5, 0(x4)	# 1623
fle_cont.34020:
	lw		x4, -84(x2)	# 1629
	addi	x4, x4, 1	# 1629
	lw		x5, -20(x2)	# 1629
	lw		x6, 0(x2)	# 1629
	jal		x0, solve_each_element_fast.2915.17928	# 1629
beq.34019:
	lw		x7, 24(x10)	# 415
	beq		x7, x0, beq.34026	# 1633
	addi	x4, x4, 1	# 1634
	jal		x0, solve_each_element_fast.2915.17928	# 1634
beq.34026:
	jalr	x0, x1, 0	# 1635
beq.33970:
	jalr	x0, x1, 0	# 1602
beq.33969:
	jalr	x0, x1, 0	# 1635
beq.33854:
	jalr	x0, x1, 0	# 1602
solve_one_or_network_fast.2919.17932:
	mul		x7, x30, x4	# 1641
	add		x7, x5, x7	# 1641
	lw		x7, 0(x7)	# 1641
	addi	x8, x0, -1	# 28
	beq		x7, x8, beq.34031	# 1642
	mul		x7, x30, x7	# 1643
	addi	x7, x7, 44592	# 1643
	lw		x7, 0(x7)	# 1643
	lw		x9, 0(x6)	# 681
	addi	x10, x0, 0	# 6
	addi	x11, x7, 0	# 1601
	lw		x11, 0(x11)	# 1601
	sw		x6, 0(x2)	# 1602
	sw		x0, -4(x2)	# 1602
	sw		x8, -8(x2)	# 1602
	sw		x5, -12(x2)	# 1602
	sw		x4, -16(x2)	# 1602
	beq		x11, x8, beq_cont.34032	# 1602
	mul		x12, x30, x11	# 1215
	addi	x13, x12, 44308	# 1215
	lw		x13, 0(x13)	# 1215
	lw		x14, 40(x13)	# 590
	addi	x15, x14, 0	# 1217
	flw		f1, 0(x15)	# 1217
	addi	x15, x0, 1	# 6
	addi	x16, x14, 4	# 1218
	flw		f2, 0(x16)	# 1218
	addi	x16, x0, 2	# 65
	addi	x17, x14, 8	# 1219
	flw		f3, 0(x17)	# 1219
	lw		x17, 4(x6)	# 687
	add		x12, x17, x12	# 1221
	lw		x12, 0(x12)	# 1221
	lw		x17, 4(x13)	# 395
	beq		x17, x15, beq.34035	# 1223
	beq		x17, x16, beq.34037	# 1225
	addi	x16, x12, 0	# 1197
	flw		f4, 0(x16)	# 1197
	feq		f4, f0, feq.34039	# 120
	addi	x16, x12, 4	# 1201
	flw		f6, 0(x16)	# 1201
	fmul	f1, f6, f1	# 1201
	addi	x16, x12, 8	# 1201
	flw		f6, 0(x16)	# 1201
	fmul	f2, f6, f2	# 1201
	fadd	f1, f1, f2	# 1201
	addi	x16, x12, 12	# 1201
	flw		f2, 0(x16)	# 1201
	fmul	f2, f2, f3	# 1201
	fadd	f1, f1, f2	# 1201
	addi	x14, x14, 12	# 1202
	flw		f2, 0(x14)	# 1202
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1203
	fsub	f2, f3, f2	# 1203
	fle		f2, f0, fle.34041	# 121
	lw		x14, 24(x13)	# 415
	beq		x14, x0, beq.34043	# 1205
	fsqrt	f2, f2	# 1206
	fadd	f1, f1, f2	# 1206
	addi	x12, x12, 16	# 1206
	flw		f2, 0(x12)	# 1206
	fmul	f1, f1, f2	# 1206
	addi	x12, x0, 44800	# 1206
	fsw		f1, 0(x12)	# 1206
	jal		x0, beq_cont.34042	# 1205
beq.34043:
	fsqrt	f2, f2	# 1208
	fsub	f1, f1, f2	# 1208
	addi	x12, x12, 16	# 1208
	flw		f2, 0(x12)	# 1208
	fmul	f1, f1, f2	# 1208
	addi	x12, x0, 44800	# 1208
	fsw		f1, 0(x12)	# 1208
beq_cont.34042:
	addi	x12, x0, 1	# 1209
	jal		x0, beq_cont.34034	# 121
fle.34041:
	addi	x12, x0, 0	# 1210
	jal		x0, beq_cont.34034	# 120
feq.34039:
	addi	x12, x0, 0	# 1199
	jal		x0, beq_cont.34034	# 1225
beq.34037:
	addi	x12, x12, 0	# 1188
	flw		f1, 0(x12)	# 1188
	fle		f0, f1, fle.34045	# 122
	addi	x12, x14, 12	# 1189
	flw		f2, 0(x12)	# 1189
	fmul	f1, f1, f2	# 1189
	addi	x12, x0, 44800	# 1189
	fsw		f1, 0(x12)	# 1189
	addi	x12, x0, 1	# 1190
	jal		x0, beq_cont.34034	# 122
fle.34045:
	addi	x12, x0, 0	# 1191
	jal		x0, beq_cont.34034	# 1223
beq.34035:
	addi	x14, x12, 0	# 1106
	flw		f4, 0(x14)	# 1106
	fsub	f4, f4, f1	# 1106
	addi	x14, x12, 4	# 1106
	flw		f5, 0(x14)	# 1106
	fmul	f4, f4, f5	# 1106
	addi	x14, x9, 4	# 1108
	flw		f6, 0(x14)	# 1108
	fmul	f7, f4, f6	# 1108
	fadd	f7, f7, f2	# 1108
	fle		f7, f0, fle.34047	# 124
	jal		x0, fle_cont.34046	# 124
fle.34047:
	fsub	f7, f0, f7	# 124
fle_cont.34046:
	lw		x14, 16(x13)	# 443
	addi	x16, x14, 4	# 448
	flw		f9, 0(x16)	# 448
	fle		f9, f7, fle.34049	# 125
	addi	x16, x9, 8	# 1109
	flw		f7, 0(x16)	# 1109
	fmul	f7, f4, f7	# 1109
	fadd	f7, f7, f3	# 1109
	fle		f7, f0, fle.34051	# 124
	jal		x0, fle_cont.34050	# 124
fle.34051:
	fsub	f7, f0, f7	# 124
fle_cont.34050:
	addi	x16, x14, 8	# 458
	flw		f10, 0(x16)	# 458
	fle		f10, f7, fle.34053	# 125
	feq		f5, f0, feq.34055	# 120
	addi	x16, x0, 1	# 1110
	jal		x0, fle_cont.34048	# 120
feq.34055:
	addi	x16, x0, 0	# 1110
	jal		x0, fle_cont.34048	# 125
fle.34053:
	addi	x16, x0, 0	# 1111
	jal		x0, fle_cont.34048	# 125
fle.34049:
	addi	x16, x0, 0	# 1112
fle_cont.34048:
	beq		x16, x0, beq.34057	# 1107
	addi	x12, x0, 44800	# 1114
	fsw		f4, 0(x12)	# 1114
	addi	x12, x0, 1	# 1114
	jal		x0, beq_cont.34034	# 1107
beq.34057:
	addi	x16, x12, 8	# 1115
	flw		f4, 0(x16)	# 1115
	fsub	f4, f4, f2	# 1115
	addi	x16, x12, 12	# 1115
	flw		f5, 0(x16)	# 1115
	fmul	f4, f4, f5	# 1115
	addi	x16, x9, 0	# 1117
	flw		f7, 0(x16)	# 1117
	fmul	f10, f4, f7	# 1117
	fadd	f10, f10, f1	# 1117
	fle		f10, f0, fle.34059	# 124
	jal		x0, fle_cont.34058	# 124
fle.34059:
	fsub	f10, f0, f10	# 124
fle_cont.34058:
	addi	x16, x14, 0	# 438
	flw		f11, 0(x16)	# 438
	fle		f11, f10, fle.34061	# 125
	addi	x16, x9, 8	# 1118
	flw		f10, 0(x16)	# 1118
	fmul	f10, f4, f10	# 1118
	fadd	f10, f10, f3	# 1118
	fle		f10, f0, fle.34063	# 124
	jal		x0, fle_cont.34062	# 124
fle.34063:
	fsub	f10, f0, f10	# 124
fle_cont.34062:
	addi	x14, x14, 8	# 458
	flw		f12, 0(x14)	# 458
	fle		f12, f10, fle.34065	# 125
	feq		f5, f0, feq.34067	# 120
	addi	x14, x0, 1	# 1119
	jal		x0, fle_cont.34060	# 120
feq.34067:
	addi	x14, x0, 0	# 1119
	jal		x0, fle_cont.34060	# 125
fle.34065:
	addi	x14, x0, 0	# 1120
	jal		x0, fle_cont.34060	# 125
fle.34061:
	addi	x14, x0, 0	# 1121
fle_cont.34060:
	beq		x14, x0, beq.34069	# 1116
	addi	x12, x0, 44800	# 1123
	fsw		f4, 0(x12)	# 1123
	addi	x12, x0, 2	# 1123
	jal		x0, beq_cont.34034	# 1116
beq.34069:
	addi	x14, x12, 16	# 1124
	flw		f4, 0(x14)	# 1124
	fsub	f3, f4, f3	# 1124
	addi	x12, x12, 20	# 1124
	flw		f4, 0(x12)	# 1124
	fmul	f3, f3, f4	# 1124
	fmul	f5, f3, f7	# 1126
	fadd	f1, f5, f1	# 1126
	fle		f1, f0, fle.34071	# 124
	jal		x0, fle_cont.34070	# 124
fle.34071:
	fsub	f1, f0, f1	# 124
fle_cont.34070:
	fle		f11, f1, fle.34073	# 125
	fmul	f1, f3, f6	# 1127
	fadd	f1, f1, f2	# 1127
	fle		f1, f0, fle.34075	# 124
	jal		x0, fle_cont.34074	# 124
fle.34075:
	fsub	f1, f0, f1	# 124
fle_cont.34074:
	fle		f9, f1, fle.34077	# 125
	feq		f4, f0, feq.34079	# 120
	addi	x12, x0, 1	# 1128
	jal		x0, fle_cont.34072	# 120
feq.34079:
	addi	x12, x0, 0	# 1128
	jal		x0, fle_cont.34072	# 125
fle.34077:
	addi	x12, x0, 0	# 1129
	jal		x0, fle_cont.34072	# 125
fle.34073:
	addi	x12, x0, 0	# 1130
fle_cont.34072:
	beq		x12, x0, beq.34081	# 1125
	addi	x12, x0, 44800	# 1132
	fsw		f3, 0(x12)	# 1132
	addi	x12, x0, 3	# 1132
	jal		x0, beq_cont.34034	# 1125
beq.34081:
	addi	x12, x0, 0	# 1134
beq_cont.34034:
	beq		x12, x0, beq.34083	# 1605
	addi	x13, x0, 44800	# 1609
	flw		f1, 0(x13)	# 1609
	sw		x7, -20(x2)	# 125
	fle		f1, f0, fle_cont.34084	# 125
	addi	x13, x0, 44808	# 1612
	flw		f2, 0(x13)	# 1612
	fle		f2, f1, fle_cont.34084	# 125
	fadd	f1, f1, f18	# 1614
	addi	x14, x9, 0	# 1615
	flw		f2, 0(x14)	# 1615
	fmul	f2, f2, f1	# 1615
	addi	x14, x0, 44908	# 1615
	flw		f3, 0(x14)	# 1615
	fadd	f2, f2, f3	# 1615
	addi	x14, x9, 4	# 1616
	flw		f3, 0(x14)	# 1616
	fmul	f3, f3, f1	# 1616
	addi	x14, x0, 44912	# 1616
	flw		f4, 0(x14)	# 1616
	fadd	f3, f3, f4	# 1616
	addi	x9, x9, 8	# 1617
	flw		f4, 0(x9)	# 1617
	fmul	f4, f4, f1	# 1617
	addi	x9, x0, 44916	# 1617
	flw		f5, 0(x9)	# 1617
	fadd	f4, f4, f5	# 1617
	fsw		f4, -24(x2)	# 1618
	fsw		f3, -28(x2)	# 1618
	fsw		f2, -32(x2)	# 1618
	fsw		f1, -36(x2)	# 1618
	addi	x5, x7, 0	# 1618
	addi	x4, x0, 0	# 1618
	fadd	f1, f0, f2	# 1618
	fadd	f2, f0, f3	# 1618
	fadd	f3, f0, f4	# 1618
	sw		x1, -40(x2)	# 1618
	addi	x2, x2, -44	# 1618
	jal		x1, check_all_inside.2886.17901	# 1618
	addi	x2, x2, 44	# 1618
	lw		x1, -40(x2)	# 1618
	lw		x5, -4(x2)	# 1618
	beq		x4, x5, fle_cont.34084	# 1618
	flw		f1, -36(x2)	# 1620
	fsw		f1, 0(x13)	# 1620
	addi	x4, x0, 44812	# 282
	flw		f1, -32(x2)	# 282
	fsw		f1, 0(x4)	# 282
	addi	x4, x0, 44816	# 283
	flw		f1, -28(x2)	# 283
	fsw		f1, 0(x4)	# 283
	addi	x4, x0, 44820	# 284
	flw		f1, -24(x2)	# 284
	fsw		f1, 0(x4)	# 284
	addi	x4, x0, 44824	# 1622
	sw		x11, 0(x4)	# 1622
	addi	x4, x0, 44804	# 1623
	sw		x12, 0(x4)	# 1623
fle_cont.34084:
	lw		x5, -20(x2)	# 1629
	lw		x6, 0(x2)	# 1629
	addi	x4, x15, 0	# 1629
	sw		x1, -40(x2)	# 1629
	addi	x2, x2, -44	# 1629
	jal		x1, solve_each_element_fast.2915.17928	# 1629
	addi	x2, x2, 44	# 1629
	lw		x1, -40(x2)	# 1629
	jal		x0, beq_cont.34032	# 1605
beq.34083:
	lw		x9, 24(x13)	# 415
	beq		x9, x0, beq_cont.34032	# 1633
	addi	x5, x7, 0	# 1634
	addi	x4, x15, 0	# 1634
	sw		x1, -40(x2)	# 1634
	addi	x2, x2, -44	# 1634
	jal		x1, solve_each_element_fast.2915.17928	# 1634
	addi	x2, x2, 44	# 1634
	lw		x1, -40(x2)	# 1634
beq_cont.34032:
	lw		x4, -16(x2)	# 1645
	addi	x4, x4, 1	# 1645
	mul		x5, x30, x4	# 1641
	lw		x6, -12(x2)	# 1641
	add		x5, x6, x5	# 1641
	lw		x5, 0(x5)	# 1641
	lw		x7, -8(x2)	# 1642
	beq		x5, x7, beq.34092	# 1642
	mul		x5, x30, x5	# 1643
	addi	x5, x5, 44592	# 1643
	lw		x5, 0(x5)	# 1643
	lw		x7, -4(x2)	# 1644
	lw		x8, 0(x2)	# 1644
	sw		x4, -40(x2)	# 1644
	addi	x6, x8, 0	# 1644
	addi	x4, x7, 0	# 1644
	sw		x1, -44(x2)	# 1644
	addi	x2, x2, -48	# 1644
	jal		x1, solve_each_element_fast.2915.17928	# 1644
	addi	x2, x2, 48	# 1644
	lw		x1, -44(x2)	# 1644
	lw		x4, -40(x2)	# 1645
	addi	x4, x4, 1	# 1645
	lw		x5, -12(x2)	# 1645
	lw		x6, 0(x2)	# 1645
	jal		x0, solve_one_or_network_fast.2919.17932	# 1645
beq.34092:
	jalr	x0, x1, 0	# 1646
beq.34031:
	jalr	x0, x1, 0	# 1646
trace_or_matrix_fast.2923.17936:
	mul		x7, x30, x4	# 1651
	add		x7, x5, x7	# 1651
	lw		x7, 0(x7)	# 1651
	addi	x8, x0, 0	# 6
	addi	x9, x7, 0	# 1652
	lw		x9, 0(x9)	# 1652
	addi	x10, x0, -1	# 28
	beq		x9, x10, beq.34095	# 1653
	addi	x11, x0, 99	# 1656
	sw		x6, 0(x2)	# 1656
	sw		x5, -4(x2)	# 1656
	sw		x4, -8(x2)	# 1656
	beq		x9, x11, beq.34097	# 1656
	mul		x9, x30, x9	# 1215
	addi	x11, x9, 44308	# 1215
	lw		x11, 0(x11)	# 1215
	lw		x12, 40(x11)	# 590
	addi	x13, x12, 0	# 1217
	flw		f1, 0(x13)	# 1217
	addi	x13, x0, 1	# 6
	addi	x14, x12, 4	# 1218
	flw		f2, 0(x14)	# 1218
	addi	x14, x0, 2	# 65
	addi	x15, x12, 8	# 1219
	flw		f3, 0(x15)	# 1219
	lw		x15, 4(x6)	# 687
	add		x9, x15, x9	# 1221
	lw		x9, 0(x9)	# 1221
	lw		x15, 4(x11)	# 395
	beq		x15, x13, beq.34099	# 1223
	beq		x15, x14, beq.34101	# 1225
	addi	x13, x9, 0	# 1197
	flw		f4, 0(x13)	# 1197
	feq		f4, f0, feq.34103	# 120
	addi	x13, x9, 4	# 1201
	flw		f6, 0(x13)	# 1201
	fmul	f1, f6, f1	# 1201
	addi	x13, x9, 8	# 1201
	flw		f6, 0(x13)	# 1201
	fmul	f2, f6, f2	# 1201
	fadd	f1, f1, f2	# 1201
	addi	x13, x9, 12	# 1201
	flw		f2, 0(x13)	# 1201
	fmul	f2, f2, f3	# 1201
	fadd	f1, f1, f2	# 1201
	addi	x12, x12, 12	# 1202
	flw		f2, 0(x12)	# 1202
	fmul	f3, f1, f1	# 127
	fmul	f2, f4, f2	# 1203
	fsub	f2, f3, f2	# 1203
	fle		f2, f0, fle.34105	# 121
	lw		x11, 24(x11)	# 415
	beq		x11, x0, beq.34107	# 1205
	fsqrt	f2, f2	# 1206
	fadd	f1, f1, f2	# 1206
	addi	x9, x9, 16	# 1206
	flw		f2, 0(x9)	# 1206
	fmul	f1, f1, f2	# 1206
	addi	x9, x0, 44800	# 1206
	fsw		f1, 0(x9)	# 1206
	jal		x0, beq_cont.34106	# 1205
beq.34107:
	fsqrt	f2, f2	# 1208
	fsub	f1, f1, f2	# 1208
	addi	x9, x9, 16	# 1208
	flw		f2, 0(x9)	# 1208
	fmul	f1, f1, f2	# 1208
	addi	x9, x0, 44800	# 1208
	fsw		f1, 0(x9)	# 1208
beq_cont.34106:
	addi	x9, x0, 1	# 1209
	jal		x0, beq_cont.34098	# 121
fle.34105:
	addi	x9, x0, 0	# 1210
	jal		x0, beq_cont.34098	# 120
feq.34103:
	addi	x9, x0, 0	# 1199
	jal		x0, beq_cont.34098	# 1225
beq.34101:
	addi	x9, x9, 0	# 1188
	flw		f1, 0(x9)	# 1188
	fle		f0, f1, fle.34109	# 122
	addi	x9, x12, 12	# 1189
	flw		f2, 0(x9)	# 1189
	fmul	f1, f1, f2	# 1189
	addi	x9, x0, 44800	# 1189
	fsw		f1, 0(x9)	# 1189
	addi	x9, x0, 1	# 1190
	jal		x0, beq_cont.34098	# 122
fle.34109:
	addi	x9, x0, 0	# 1191
	jal		x0, beq_cont.34098	# 1223
beq.34099:
	lw		x12, 0(x6)	# 681
	addi	x13, x9, 0	# 1106
	flw		f4, 0(x13)	# 1106
	fsub	f4, f4, f1	# 1106
	addi	x13, x9, 4	# 1106
	flw		f5, 0(x13)	# 1106
	fmul	f4, f4, f5	# 1106
	addi	x13, x12, 4	# 1108
	flw		f6, 0(x13)	# 1108
	fmul	f7, f4, f6	# 1108
	fadd	f7, f7, f2	# 1108
	fle		f7, f0, fle.34111	# 124
	jal		x0, fle_cont.34110	# 124
fle.34111:
	fsub	f7, f0, f7	# 124
fle_cont.34110:
	lw		x11, 16(x11)	# 443
	addi	x13, x11, 4	# 448
	flw		f9, 0(x13)	# 448
	fle		f9, f7, fle.34113	# 125
	addi	x13, x12, 8	# 1109
	flw		f7, 0(x13)	# 1109
	fmul	f7, f4, f7	# 1109
	fadd	f7, f7, f3	# 1109
	fle		f7, f0, fle.34115	# 124
	jal		x0, fle_cont.34114	# 124
fle.34115:
	fsub	f7, f0, f7	# 124
fle_cont.34114:
	addi	x13, x11, 8	# 458
	flw		f10, 0(x13)	# 458
	fle		f10, f7, fle.34117	# 125
	feq		f5, f0, feq.34119	# 120
	addi	x13, x0, 1	# 1110
	jal		x0, fle_cont.34112	# 120
feq.34119:
	addi	x13, x0, 0	# 1110
	jal		x0, fle_cont.34112	# 125
fle.34117:
	addi	x13, x0, 0	# 1111
	jal		x0, fle_cont.34112	# 125
fle.34113:
	addi	x13, x0, 0	# 1112
fle_cont.34112:
	beq		x13, x0, beq.34121	# 1107
	addi	x9, x0, 44800	# 1114
	fsw		f4, 0(x9)	# 1114
	addi	x9, x0, 1	# 1114
	jal		x0, beq_cont.34098	# 1107
beq.34121:
	addi	x13, x9, 8	# 1115
	flw		f4, 0(x13)	# 1115
	fsub	f4, f4, f2	# 1115
	addi	x13, x9, 12	# 1115
	flw		f5, 0(x13)	# 1115
	fmul	f4, f4, f5	# 1115
	addi	x13, x12, 0	# 1117
	flw		f7, 0(x13)	# 1117
	fmul	f10, f4, f7	# 1117
	fadd	f10, f10, f1	# 1117
	fle		f10, f0, fle.34123	# 124
	jal		x0, fle_cont.34122	# 124
fle.34123:
	fsub	f10, f0, f10	# 124
fle_cont.34122:
	addi	x13, x11, 0	# 438
	flw		f11, 0(x13)	# 438
	fle		f11, f10, fle.34125	# 125
	addi	x12, x12, 8	# 1118
	flw		f10, 0(x12)	# 1118
	fmul	f10, f4, f10	# 1118
	fadd	f10, f10, f3	# 1118
	fle		f10, f0, fle.34127	# 124
	jal		x0, fle_cont.34126	# 124
fle.34127:
	fsub	f10, f0, f10	# 124
fle_cont.34126:
	addi	x11, x11, 8	# 458
	flw		f12, 0(x11)	# 458
	fle		f12, f10, fle.34129	# 125
	feq		f5, f0, feq.34131	# 120
	addi	x11, x0, 1	# 1119
	jal		x0, fle_cont.34124	# 120
feq.34131:
	addi	x11, x0, 0	# 1119
	jal		x0, fle_cont.34124	# 125
fle.34129:
	addi	x11, x0, 0	# 1120
	jal		x0, fle_cont.34124	# 125
fle.34125:
	addi	x11, x0, 0	# 1121
fle_cont.34124:
	beq		x11, x0, beq.34133	# 1116
	addi	x9, x0, 44800	# 1123
	fsw		f4, 0(x9)	# 1123
	addi	x9, x0, 2	# 1123
	jal		x0, beq_cont.34098	# 1116
beq.34133:
	addi	x11, x9, 16	# 1124
	flw		f4, 0(x11)	# 1124
	fsub	f3, f4, f3	# 1124
	addi	x9, x9, 20	# 1124
	flw		f4, 0(x9)	# 1124
	fmul	f3, f3, f4	# 1124
	fmul	f5, f3, f7	# 1126
	fadd	f1, f5, f1	# 1126
	fle		f1, f0, fle.34135	# 124
	jal		x0, fle_cont.34134	# 124
fle.34135:
	fsub	f1, f0, f1	# 124
fle_cont.34134:
	fle		f11, f1, fle.34137	# 125
	fmul	f1, f3, f6	# 1127
	fadd	f1, f1, f2	# 1127
	fle		f1, f0, fle.34139	# 124
	jal		x0, fle_cont.34138	# 124
fle.34139:
	fsub	f1, f0, f1	# 124
fle_cont.34138:
	fle		f9, f1, fle.34141	# 125
	feq		f4, f0, feq.34143	# 120
	addi	x9, x0, 1	# 1128
	jal		x0, fle_cont.34136	# 120
feq.34143:
	addi	x9, x0, 0	# 1128
	jal		x0, fle_cont.34136	# 125
fle.34141:
	addi	x9, x0, 0	# 1129
	jal		x0, fle_cont.34136	# 125
fle.34137:
	addi	x9, x0, 0	# 1130
fle_cont.34136:
	beq		x9, x0, beq.34145	# 1125
	addi	x9, x0, 44800	# 1132
	fsw		f3, 0(x9)	# 1132
	addi	x9, x0, 3	# 1132
	jal		x0, beq_cont.34098	# 1125
beq.34145:
	addi	x9, x0, 0	# 1134
beq_cont.34098:
	beq		x9, x0, beq_cont.34096	# 1662
	addi	x9, x0, 44800	# 1663
	flw		f1, 0(x9)	# 1663
	addi	x9, x0, 44808	# 1664
	flw		f2, 0(x9)	# 1664
	fle		f2, f1, beq_cont.34096	# 125
	addi	x9, x7, 4	# 1641
	lw		x9, 0(x9)	# 1641
	beq		x9, x10, beq_cont.34096	# 1642
	mul		x9, x30, x9	# 1643
	addi	x9, x9, 44592	# 1643
	lw		x9, 0(x9)	# 1643
	sw		x7, -12(x2)	# 1644
	sw		x14, -16(x2)	# 1644
	addi	x5, x9, 0	# 1644
	addi	x4, x0, 0	# 1644
	sw		x1, -20(x2)	# 1644
	addi	x2, x2, -24	# 1644
	jal		x1, solve_each_element_fast.2915.17928	# 1644
	addi	x2, x2, 24	# 1644
	lw		x1, -20(x2)	# 1644
	lw		x4, -16(x2)	# 1645
	lw		x5, -12(x2)	# 1645
	lw		x6, 0(x2)	# 1645
	sw		x1, -20(x2)	# 1645
	addi	x2, x2, -24	# 1645
	jal		x1, solve_one_or_network_fast.2919.17932	# 1645
	addi	x2, x2, 24	# 1645
	lw		x1, -20(x2)	# 1645
	jal		x0, beq_cont.34096	# 1642
beq.34097:
	addi	x9, x7, 4	# 1641
	lw		x9, 0(x9)	# 1641
	beq		x9, x10, beq_cont.34096	# 1642
	mul		x9, x30, x9	# 1643
	addi	x9, x9, 44592	# 1643
	lw		x9, 0(x9)	# 1643
	sw		x7, -12(x2)	# 1644
	addi	x5, x9, 0	# 1644
	addi	x4, x0, 0	# 1644
	sw		x1, -20(x2)	# 1644
	addi	x2, x2, -24	# 1644
	jal		x1, solve_each_element_fast.2915.17928	# 1644
	addi	x2, x2, 24	# 1644
	lw		x1, -20(x2)	# 1644
	addi	x4, x0, 2	# 65
	lw		x5, -12(x2)	# 1645
	lw		x6, 0(x2)	# 1645
	sw		x1, -20(x2)	# 1645
	addi	x2, x2, -24	# 1645
	jal		x1, solve_one_or_network_fast.2919.17932	# 1645
	addi	x2, x2, 24	# 1645
	lw		x1, -20(x2)	# 1645
beq_cont.34096:
	lw		x4, -8(x2)	# 1669
	addi	x4, x4, 1	# 1669
	lw		x5, -4(x2)	# 1669
	lw		x6, 0(x2)	# 1669
	jal		x0, trace_or_matrix_fast.2923.17936	# 1669
beq.34095:
	jalr	x0, x1, 0	# 1654
trace_reflections.2945.17940:
	addi	x6, x0, 0	# 6
	ble		x0, x4, ble.34155	# 1846
	jalr	x0, x1, 0	# 1866
ble.34155:
	mul		x7, x30, x4	# 1847
	addi	x7, x7, 45276	# 1847
	lw		x7, 0(x7)	# 1847
	lw		x8, 4(x7)	# 703
	lui		x9, %hi(l.29245)	# 42
	ori		x9, x0, %lo(l.29245)	# 42
	flw		f3, 0(x9)	# 42
	addi	x9, x0, 44808	# 1676
	fsw		f3, 0(x9)	# 1676
	addi	x10, x0, 44796	# 1677
	lw		x10, 0(x10)	# 1677
	sw		x4, 0(x2)	# 1677
	fsw		f2, -4(x2)	# 1677
	sw		x5, -8(x2)	# 1677
	fsw		f1, -12(x2)	# 1677
	sw		x8, -16(x2)	# 1677
	sw		x10, -20(x2)	# 1677
	sw		x7, -24(x2)	# 1677
	sw		x0, -28(x2)	# 1677
	sw		x9, -32(x2)	# 1677
	addi	x5, x10, 0	# 1677
	addi	x4, x0, 0	# 1677
	addi	x6, x8, 0	# 1677
	sw		x1, -36(x2)	# 1677
	addi	x2, x2, -40	# 1677
	jal		x1, trace_or_matrix_fast.2923.17936	# 1677
	addi	x2, x2, 40	# 1677
	lw		x1, -36(x2)	# 1677
	lw		x4, -32(x2)	# 1678
	flw		f1, 0(x4)	# 1678
	fle		f1, f20, fle.34158	# 125
	fle		f21, f1, fle.34160	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.34157	# 125
fle.34160:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.34157	# 125
fle.34158:
	addi	x4, x0, 0	# 1682
fle_cont.34157:
	lw		x5, -28(x2)	# 1851
	beq		x4, x5, beq_cont.34161	# 1851
	addi	x4, x0, 44824	# 1852
	lw		x4, 0(x4)	# 1852
	addi	x6, x0, 4	# 1852
	mul		x4, x4, x6	# 1852
	addi	x6, x0, 44804	# 1852
	lw		x6, 0(x6)	# 1852
	add		x4, x4, x6	# 1852
	lw		x6, -24(x2)	# 697
	lw		x7, 0(x6)	# 697
	beq		x4, x7, beq.34164	# 1853
	jal		x0, beq_cont.34161	# 1853
beq.34164:
	lw		x4, -20(x2)	# 1855
	addi	x31, x5, 0	# 1855
	addi	x5, x4, 0	# 1855
	addi	x4, x31, 0	# 1855
	sw		x1, -36(x2)	# 1855
	addi	x2, x2, -40	# 1855
	jal		x1, shadow_check_one_or_matrix.2898.17913	# 1855
	addi	x2, x2, 40	# 1855
	lw		x1, -36(x2)	# 1855
	lw		x5, -28(x2)	# 1855
	beq		x4, x5, beq.34166	# 1855
	jal		x0, beq_cont.34161	# 1855
beq.34166:
	lw		x4, -16(x2)	# 681
	lw		x4, 0(x4)	# 681
	addi	x5, x0, 44828	# 334
	flw		f1, 0(x5)	# 334
	addi	x5, x4, 0	# 334
	flw		f2, 0(x5)	# 334
	fmul	f1, f1, f2	# 334
	addi	x5, x0, 44832	# 334
	flw		f3, 0(x5)	# 334
	addi	x5, x4, 4	# 334
	flw		f4, 0(x5)	# 334
	fmul	f3, f3, f4	# 334
	fadd	f1, f1, f3	# 334
	addi	x5, x0, 44836	# 334
	flw		f3, 0(x5)	# 334
	addi	x4, x4, 8	# 334
	flw		f5, 0(x4)	# 334
	fmul	f3, f3, f5	# 334
	fadd	f1, f1, f3	# 334
	lw		x4, -24(x2)	# 1859
	flw		f3, 8(x4)	# 1859
	flw		f6, -12(x2)	# 1859
	fmul	f7, f3, f6	# 1859
	fmul	f1, f7, f1	# 1859
	lw		x5, -8(x2)	# 334
	addi	x4, x5, 0	# 334
	flw		f7, 0(x4)	# 334
	fmul	f2, f7, f2	# 334
	addi	x4, x5, 4	# 334
	flw		f7, 0(x4)	# 334
	fmul	f4, f7, f4	# 334
	fadd	f2, f2, f4	# 334
	addi	x4, x5, 8	# 334
	flw		f4, 0(x4)	# 334
	fmul	f4, f4, f5	# 334
	fadd	f2, f2, f4	# 334
	fmul	f2, f3, f2	# 1860
	fle		f1, f0, fle_cont.34167	# 121
	addi	x4, x0, 44864	# 344
	flw		f4, 0(x4)	# 344
	addi	x6, x0, 44840	# 344
	flw		f5, 0(x6)	# 344
	fmul	f5, f1, f5	# 344
	fadd	f4, f4, f5	# 344
	fsw		f4, 0(x4)	# 344
	addi	x4, x0, 44868	# 345
	flw		f4, 0(x4)	# 345
	addi	x6, x0, 44844	# 345
	flw		f5, 0(x6)	# 345
	fmul	f5, f1, f5	# 345
	fadd	f4, f4, f5	# 345
	fsw		f4, 0(x4)	# 345
	addi	x4, x0, 44872	# 346
	flw		f4, 0(x4)	# 346
	addi	x6, x0, 44848	# 346
	flw		f5, 0(x6)	# 346
	fmul	f1, f1, f5	# 346
	fadd	f1, f4, f1	# 346
	fsw		f1, 0(x4)	# 346
fle_cont.34167:
	fle		f2, f0, beq_cont.34161	# 121
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -4(x2)	# 1836
	fmul	f1, f1, f2	# 1836
	addi	x4, x0, 44864	# 1837
	flw		f3, 0(x4)	# 1837
	fadd	f3, f3, f1	# 1837
	fsw		f3, 0(x4)	# 1837
	addi	x4, x0, 44868	# 1838
	flw		f3, 0(x4)	# 1838
	fadd	f3, f3, f1	# 1838
	fsw		f3, 0(x4)	# 1838
	addi	x4, x0, 44872	# 1839
	flw		f3, 0(x4)	# 1839
	fadd	f1, f3, f1	# 1839
	fsw		f1, 0(x4)	# 1839
beq_cont.34161:
	lw		x4, 0(x2)	# 1865
	addi	x4, x4, -1	# 1865
	lw		x5, -8(x2)	# 1865
	flw		f1, -12(x2)	# 1865
	flw		f2, -4(x2)	# 1865
	jal		x0, trace_reflections.2945.17940	# 1865
trace_ray.2950.17945:
	addi	x7, x0, 4	# 1874
	ble		x4, x7, ble.34171	# 1874
	jalr	x0, x1, 0	# 1955
ble.34171:
	lw		x8, 8(x6)	# 619
	addi	x9, x0, 0	# 6
	lui		x10, %hi(l.29245)	# 42
	ori		x10, x0, %lo(l.29245)	# 42
	flw		f3, 0(x10)	# 42
	addi	x10, x0, 44808	# 1585
	fsw		f3, 0(x10)	# 1585
	addi	x11, x0, 44796	# 1586
	lw		x11, 0(x11)	# 1586
	fsw		f2, 0(x2)	# 1586
	sw		x11, -4(x2)	# 1586
	sw		x6, -8(x2)	# 1586
	sw		x7, -12(x2)	# 1586
	fsw		f1, -16(x2)	# 1586
	sw		x5, -20(x2)	# 1586
	sw		x8, -24(x2)	# 1586
	sw		x4, -28(x2)	# 1586
	sw		x0, -32(x2)	# 1586
	sw		x10, -36(x2)	# 1586
	addi	x6, x5, 0	# 1586
	addi	x4, x0, 0	# 1586
	addi	x5, x11, 0	# 1586
	sw		x1, -40(x2)	# 1586
	addi	x2, x2, -44	# 1586
	jal		x1, trace_or_matrix.2909.17924	# 1586
	addi	x2, x2, 44	# 1586
	lw		x1, -40(x2)	# 1586
	lw		x4, -36(x2)	# 1587
	flw		f1, 0(x4)	# 1587
	fle		f1, f20, fle.34174	# 125
	fle		f21, f1, fle.34176	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.34173	# 125
fle.34176:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.34173	# 125
fle.34174:
	addi	x4, x0, 0	# 1591
fle_cont.34173:
	lw		x5, -32(x2)	# 1876
	beq		x4, x5, beq.34177	# 1876
	addi	x4, x0, 44824	# 1878
	lw		x4, 0(x4)	# 1878
	mul		x6, x30, x4	# 1879
	addi	x6, x6, 44308	# 1879
	lw		x6, 0(x6)	# 1879
	lw		x7, 8(x6)	# 405
	lw		x8, 28(x6)	# 503
	addi	x9, x8, 0	# 508
	flw		f2, 0(x9)	# 508
	flw		f3, -16(x2)	# 1881
	fmul	f4, f2, f3	# 1881
	lw		x9, 4(x6)	# 395
	addi	x10, x0, 1	# 6
	beq		x9, x10, beq.34179	# 1735
	addi	x11, x0, 2	# 65
	beq		x9, x11, beq.34181	# 1737
	addi	x9, x0, 44812	# 1712
	flw		f5, 0(x9)	# 1712
	lw		x9, 20(x6)	# 473
	addi	x11, x9, 0	# 478
	flw		f6, 0(x11)	# 478
	fsub	f5, f5, f6	# 1712
	addi	x11, x0, 44816	# 1713
	flw		f6, 0(x11)	# 1713
	addi	x11, x9, 4	# 488
	flw		f7, 0(x11)	# 488
	fsub	f6, f6, f7	# 1713
	addi	x11, x0, 44820	# 1714
	flw		f7, 0(x11)	# 1714
	addi	x9, x9, 8	# 498
	flw		f8, 0(x9)	# 498
	fsub	f7, f7, f8	# 1714
	lw		x9, 16(x6)	# 433
	addi	x11, x9, 0	# 438
	flw		f8, 0(x11)	# 438
	fmul	f8, f5, f8	# 1716
	addi	x11, x9, 4	# 448
	flw		f9, 0(x11)	# 448
	fmul	f9, f6, f9	# 1717
	addi	x9, x9, 8	# 458
	flw		f10, 0(x9)	# 458
	fmul	f10, f7, f10	# 1718
	lw		x9, 12(x6)	# 424
	beq		x9, x5, beq.34183	# 1720
	lw		x9, 36(x6)	# 573
	addi	x11, x9, 8	# 578
	flw		f11, 0(x11)	# 578
	fmul	f12, f6, f11	# 1725
	addi	x11, x9, 4	# 568
	flw		f13, 0(x11)	# 568
	fmul	f14, f7, f13	# 1725
	fadd	f12, f12, f14	# 1725
	lui		x11, %hi(l.27776)	# 126
	ori		x11, x0, %lo(l.27776)	# 126
	flw		f14, 0(x11)	# 126
	fmul	f12, f12, f14	# 126
	fadd	f8, f8, f12	# 1725
	addi	x11, x0, 44828	# 1725
	fsw		f8, 0(x11)	# 1725
	fmul	f8, f5, f11	# 1726
	addi	x9, x9, 0	# 558
	flw		f11, 0(x9)	# 558
	fmul	f7, f7, f11	# 1726
	fadd	f7, f8, f7	# 1726
	fmul	f7, f7, f14	# 126
	fadd	f7, f9, f7	# 1726
	addi	x9, x0, 44832	# 1726
	fsw		f7, 0(x9)	# 1726
	fmul	f5, f5, f13	# 1727
	fmul	f6, f6, f11	# 1727
	fadd	f5, f5, f6	# 1727
	fmul	f5, f5, f14	# 126
	fadd	f5, f10, f5	# 1727
	addi	x9, x0, 44836	# 1727
	fsw		f5, 0(x9)	# 1727
	jal		x0, beq_cont.34182	# 1720
beq.34183:
	addi	x9, x0, 44828	# 1721
	fsw		f8, 0(x9)	# 1721
	addi	x9, x0, 44832	# 1722
	fsw		f9, 0(x9)	# 1722
	addi	x9, x0, 44836	# 1723
	fsw		f10, 0(x9)	# 1723
beq_cont.34182:
	lw		x9, 24(x6)	# 415
	addi	x11, x0, 44828	# 325
	flw		f5, 0(x11)	# 325
	fmul	f6, f5, f5	# 127
	addi	x12, x0, 44832	# 325
	flw		f7, 0(x12)	# 325
	fmul	f8, f7, f7	# 127
	fadd	f6, f6, f8	# 325
	addi	x13, x0, 44836	# 325
	flw		f8, 0(x13)	# 325
	fmul	f9, f8, f8	# 127
	fadd	f6, f6, f9	# 325
	fsqrt	f6, f6	# 325
	feq		f6, f0, feq.34185	# 120
	beq		x9, x5, beq.34187	# 326
	fdiv	f6, f24, f6	# 326
	jal		x0, feq_cont.34184	# 326
beq.34187:
	fdiv	f6, f30, f6	# 326
	jal		x0, feq_cont.34184	# 120
feq.34185:
	fadd	f6, f0, f30	# 326
feq_cont.34184:
	fmul	f5, f5, f6	# 327
	fsw		f5, 0(x11)	# 327
	fmul	f5, f7, f6	# 328
	fsw		f5, 0(x12)	# 328
	fmul	f5, f8, f6	# 329
	fsw		f5, 0(x13)	# 329
	jal		x0, beq_cont.34178	# 1737
beq.34181:
	lw		x9, 16(x6)	# 433
	addi	x11, x9, 0	# 438
	flw		f5, 0(x11)	# 438
	fsub	f5, f0, f5	# 123
	addi	x11, x0, 44828	# 1705
	fsw		f5, 0(x11)	# 1705
	addi	x11, x9, 4	# 448
	flw		f5, 0(x11)	# 448
	fsub	f5, f0, f5	# 123
	addi	x11, x0, 44832	# 1706
	fsw		f5, 0(x11)	# 1706
	addi	x9, x9, 8	# 458
	flw		f5, 0(x9)	# 458
	fsub	f5, f0, f5	# 123
	addi	x9, x0, 44836	# 1707
	fsw		f5, 0(x9)	# 1707
	jal		x0, beq_cont.34178	# 1735
beq.34179:
	addi	x9, x0, 44804	# 1696
	lw		x9, 0(x9)	# 1696
	addi	x11, x0, 44828	# 51
	fsw		f0, 0(x11)	# 289
	addi	x11, x0, 44832	# 290
	fsw		f0, 0(x11)	# 290
	addi	x11, x0, 44836	# 291
	fsw		f0, 0(x11)	# 291
	addi	x9, x9, -1	# 1699
	mul		x9, x30, x9	# 1699
	lw		x11, -20(x2)	# 1699
	add		x12, x11, x9	# 1699
	flw		f6, 0(x12)	# 1699
	feq		f6, f0, feq.34189	# 120
	fle		f6, f0, fle.34191	# 121
	fadd	f5, f0, f30	# 255
	jal		x0, feq_cont.34188	# 121
fle.34191:
	fadd	f5, f0, f24	# 256
	jal		x0, feq_cont.34188	# 120
feq.34189:
	fadd	f5, f0, f0	# 254
feq_cont.34188:
	fsub	f5, f0, f5	# 123
	addi	x9, x9, 44828	# 1699
	fsw		f5, 0(x9)	# 1699
beq_cont.34178:
	addi	x9, x0, 44812	# 45
	flw		f5, 0(x9)	# 301
	addi	x11, x0, 44896	# 301
	fsw		f5, 0(x11)	# 301
	addi	x11, x0, 44816	# 302
	flw		f6, 0(x11)	# 302
	addi	x11, x0, 44900	# 302
	fsw		f6, 0(x11)	# 302
	addi	x11, x0, 2	# 65
	addi	x12, x0, 44820	# 303
	flw		f7, 0(x12)	# 303
	addi	x12, x0, 44904	# 303
	fsw		f7, 0(x12)	# 303
	lw		x12, 0(x6)	# 385
	lw		x13, 32(x6)	# 523
	addi	x14, x13, 0	# 528
	flw		f8, 0(x14)	# 528
	addi	x14, x0, 44840	# 1752
	fsw		f8, 0(x14)	# 1752
	addi	x15, x13, 4	# 538
	flw		f8, 0(x15)	# 538
	addi	x15, x0, 44844	# 1753
	fsw		f8, 0(x15)	# 1753
	addi	x13, x13, 8	# 548
	flw		f8, 0(x13)	# 548
	addi	x13, x0, 44848	# 1754
	fsw		f8, 0(x13)	# 1754
	fsw		f1, -40(x2)	# 1755
	sw		x7, -44(x2)	# 1755
	fsw		f4, -48(x2)	# 1755
	fsw		f2, -52(x2)	# 1755
	fsw		f5, -56(x2)	# 1755
	sw		x4, -60(x2)	# 1755
	beq		x12, x10, beq.34193	# 1755
	beq		x12, x11, beq.34195	# 1773
	addi	x16, x0, 3	# 16
	beq		x12, x16, beq.34197	# 1780
	lw		x16, -12(x2)	# 1791
	beq		x12, x16, beq.34199	# 1791
	jal		x0, beq_cont.34192	# 1791
beq.34199:
	lw		x12, 20(x6)	# 473
	addi	x17, x12, 0	# 478
	flw		f8, 0(x17)	# 478
	fsub	f8, f5, f8	# 1793
	lw		x6, 16(x6)	# 433
	addi	x17, x6, 0	# 438
	flw		f9, 0(x17)	# 438
	fsqrt	f9, f9	# 1793
	fmul	f8, f8, f9	# 1793
	addi	x17, x12, 8	# 498
	flw		f9, 0(x17)	# 498
	fsub	f9, f7, f9	# 1794
	addi	x17, x6, 8	# 458
	flw		f10, 0(x17)	# 458
	fsqrt	f10, f10	# 1794
	fmul	f9, f9, f10	# 1794
	fmul	f10, f8, f8	# 127
	fmul	f11, f9, f9	# 127
	fadd	f10, f10, f11	# 1795
	fle		f8, f0, fle.34201	# 124
	fadd	f12, f0, f8	# 124
	jal		x0, fle_cont.34200	# 124
fle.34201:
	fsub	f12, f0, f8	# 124
fle_cont.34200:
	lui		x17, %hi(l.29455)	# 1797
	ori		x17, x0, %lo(l.29455)	# 1797
	flw		f13, 0(x17)	# 1797
	fle		f13, f12, fle.34203	# 125
	lui		x17, %hi(l.29457)	# 1798
	ori		x17, x0, %lo(l.29457)	# 1798
	flw		f1, 0(x17)	# 1798
	jal		x0, fle_cont.34202	# 125
fle.34203:
	fdiv	f8, f9, f8	# 1800
	fle		f8, f0, fle.34205	# 124
	jal		x0, fle_cont.34204	# 124
fle.34205:
	fsub	f8, f0, f8	# 124
fle_cont.34204:
	fadd	f1, f0, f8	# 1802
	sw		x1, -64(x2)	# 1802
	addi	x2, x2, -68	# 1802
	jal		x1, atan.2614.17885	# 1802
	addi	x2, x2, 68	# 1802
	lw		x1, -64(x2)	# 1802
	lui		x4, %hi(l.29460)	# 1802
	ori		x4, x0, %lo(l.29460)	# 1802
	flw		f2, 0(x4)	# 1802
	fmul	f1, f1, f2	# 1802
	lui		x4, %hi(l.29462)	# 1802
	ori		x4, x0, %lo(l.29462)	# 1802
	flw		f2, 0(x4)	# 1802
	fdiv	f1, f1, f2	# 1802
fle_cont.34202:
	sw		x6, -64(x2)	# 1804
	fsw		f1, -68(x2)	# 1804
	sw		x1, -72(x2)	# 1804
	addi	x2, x2, -76	# 1804
	jal		x1, min_caml_floor	# 1804
	addi	x2, x2, 76	# 1804
	lw		x1, -72(x2)	# 1804
	flw		f2, -68(x2)	# 1804
	fsub	f1, f2, f1	# 1804
	addi	x4, x12, 4	# 488
	flw		f2, 0(x4)	# 488
	fsub	f2, f6, f2	# 1806
	lw		x4, -64(x2)	# 448
	addi	x4, x4, 4	# 448
	flw		f3, 0(x4)	# 448
	fsqrt	f3, f3	# 1806
	fmul	f2, f2, f3	# 1806
	fle		f10, f0, fle.34207	# 124
	fadd	f3, f0, f10	# 124
	jal		x0, fle_cont.34206	# 124
fle.34207:
	fsub	f3, f0, f10	# 124
fle_cont.34206:
	fsw		f1, -72(x2)	# 125
	fle		f13, f3, fle.34209	# 125
	lui		x4, %hi(l.29457)	# 1809
	ori		x4, x0, %lo(l.29457)	# 1809
	flw		f1, 0(x4)	# 1809
	jal		x0, fle_cont.34208	# 125
fle.34209:
	fdiv	f2, f2, f10	# 1811
	fle		f2, f0, fle.34211	# 124
	jal		x0, fle_cont.34210	# 124
fle.34211:
	fsub	f2, f0, f2	# 124
fle_cont.34210:
	fadd	f1, f0, f2	# 1812
	sw		x1, -76(x2)	# 1812
	addi	x2, x2, -80	# 1812
	jal		x1, atan.2614.17885	# 1812
	addi	x2, x2, 80	# 1812
	lw		x1, -76(x2)	# 1812
	lui		x4, %hi(l.29460)	# 1812
	ori		x4, x0, %lo(l.29460)	# 1812
	flw		f2, 0(x4)	# 1812
	fmul	f1, f1, f2	# 1812
	lui		x4, %hi(l.29462)	# 1812
	ori		x4, x0, %lo(l.29462)	# 1812
	flw		f2, 0(x4)	# 1812
	fdiv	f1, f1, f2	# 1812
fle_cont.34208:
	fsw		f1, -76(x2)	# 1814
	sw		x1, -80(x2)	# 1814
	addi	x2, x2, -84	# 1814
	jal		x1, min_caml_floor	# 1814
	addi	x2, x2, 84	# 1814
	lw		x1, -80(x2)	# 1814
	flw		f2, -76(x2)	# 1814
	fsub	f1, f2, f1	# 1814
	lui		x4, %hi(l.29473)	# 1815
	ori		x4, x0, %lo(l.29473)	# 1815
	flw		f2, 0(x4)	# 1815
	lui		x4, %hi(l.27776)	# 1815
	ori		x4, x0, %lo(l.27776)	# 1815
	flw		f3, 0(x4)	# 1815
	flw		f4, -72(x2)	# 1815
	fsub	f4, f3, f4	# 1815
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1815
	fsub	f1, f3, f1	# 1815
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1815
	fle		f0, f1, fle_cont.34212	# 122
	fadd	f1, f0, f0	# 1816
fle_cont.34212:
	fmul	f1, f28, f1	# 1817
	lui		x4, %hi(l.29480)	# 1817
	ori		x4, x0, %lo(l.29480)	# 1817
	flw		f2, 0(x4)	# 1817
	fdiv	f1, f1, f2	# 1817
	fsw		f1, 0(x13)	# 1817
	jal		x0, beq_cont.34192	# 1780
beq.34197:
	lw		x6, 20(x6)	# 473
	addi	x12, x6, 0	# 478
	flw		f8, 0(x12)	# 478
	fsub	f8, f5, f8	# 1783
	addi	x6, x6, 8	# 498
	flw		f9, 0(x6)	# 498
	fsub	f9, f7, f9	# 1784
	fmul	f8, f8, f8	# 127
	fmul	f9, f9, f9	# 127
	fadd	f8, f8, f9	# 1785
	fsqrt	f8, f8	# 1785
	fdiv	f8, f8, f25	# 1785
	fsw		f8, -80(x2)	# 1786
	fadd	f1, f0, f8	# 1786
	sw		x1, -84(x2)	# 1786
	addi	x2, x2, -88	# 1786
	jal		x1, min_caml_floor	# 1786
	addi	x2, x2, 88	# 1786
	lw		x1, -84(x2)	# 1786
	flw		f2, -80(x2)	# 1786
	fsub	f1, f2, f1	# 1786
	lui		x4, %hi(l.29462)	# 1786
	ori		x4, x0, %lo(l.29462)	# 1786
	flw		f2, 0(x4)	# 1786
	fmul	f1, f1, f2	# 1786
	sw		x1, -84(x2)	# 1787
	addi	x2, x2, -88	# 1787
	jal		x1, cos.2612.17883	# 1787
	addi	x2, x2, 88	# 1787
	lw		x1, -84(x2)	# 1787
	fmul	f1, f1, f1	# 127
	fmul	f3, f1, f28	# 1788
	fsw		f3, 0(x15)	# 1788
	fsub	f1, f30, f1	# 1789
	fmul	f1, f1, f28	# 1789
	fsw		f1, 0(x13)	# 1789
	jal		x0, beq_cont.34192	# 1773
beq.34195:
	lui		x6, %hi(l.29498)	# 1776
	ori		x6, x0, %lo(l.29498)	# 1776
	flw		f8, 0(x6)	# 1776
	fmul	f8, f6, f8	# 1776
	fadd	f1, f0, f8	# 1776
	sw		x1, -84(x2)	# 1776
	addi	x2, x2, -88	# 1776
	jal		x1, sin.2610.17881	# 1776
	addi	x2, x2, 88	# 1776
	lw		x1, -84(x2)	# 1776
	fmul	f1, f1, f1	# 127
	fmul	f3, f28, f1	# 1777
	fsw		f3, 0(x14)	# 1777
	fsub	f1, f30, f1	# 1778
	fmul	f1, f28, f1	# 1778
	fsw		f1, 0(x15)	# 1778
	jal		x0, beq_cont.34192	# 1755
beq.34193:
	lw		x6, 20(x6)	# 473
	addi	x12, x6, 0	# 478
	flw		f8, 0(x12)	# 478
	fsub	f8, f5, f8	# 1758
	fmul	f10, f8, f26	# 1760
	sw		x6, -84(x2)	# 1760
	fadd	f1, f0, f10	# 1760
	sw		x1, -88(x2)	# 1760
	addi	x2, x2, -92	# 1760
	jal		x1, min_caml_floor	# 1760
	addi	x2, x2, 92	# 1760
	lw		x1, -88(x2)	# 1760
	fmul	f1, f1, f27	# 1760
	fsub	f1, f8, f1	# 1761
	lw		x4, -84(x2)	# 498
	addi	x4, x4, 8	# 498
	flw		f10, 0(x4)	# 498
	fsub	f10, f7, f10	# 1763
	fmul	f9, f10, f26	# 1765
	fsw		f1, -88(x2)	# 1765
	fsw		f27, -92(x2)	# 1765
	fadd	f1, f0, f9	# 1765
	sw		x1, -96(x2)	# 1765
	addi	x2, x2, -100	# 1765
	jal		x1, min_caml_floor	# 1765
	addi	x2, x2, 100	# 1765
	lw		x1, -96(x2)	# 1765
	flw		f2, -92(x2)	# 1765
	fmul	f1, f1, f2	# 1765
	fsub	f1, f10, f1	# 1766
	flw		f2, -88(x2)	# 125
	fle		f25, f2, fle.34215	# 125
	fle		f25, f1, fle.34217	# 125
	fadd	f1, f0, f28	# 1770
	jal		x0, fle_cont.34214	# 125
fle.34217:
	fadd	f1, f0, f0	# 1770
	jal		x0, fle_cont.34214	# 125
fle.34215:
	fle		f25, f1, fle.34219	# 125
	fadd	f1, f0, f0	# 1771
	jal		x0, fle_cont.34214	# 125
fle.34219:
	fadd	f1, f0, f28	# 1771
fle_cont.34214:
	fsw		f1, 0(x15)	# 1768
beq_cont.34192:
	lw		x4, -60(x2)	# 1888
	lw		x5, -12(x2)	# 1888
	mul		x4, x4, x5	# 1888
	addi	x6, x0, 44804	# 1888
	lw		x6, 0(x6)	# 1888
	add		x4, x4, x6	# 1888
	lw		x6, -28(x2)	# 1888
	mul		x7, x30, x6	# 1888
	lw		x12, -24(x2)	# 1888
	add		x16, x12, x7	# 1888
	sw		x4, 0(x16)	# 1888
	lw		x4, -8(x2)	# 611
	lw		x16, 4(x4)	# 611
	add		x16, x16, x7	# 1890
	lw		x16, 0(x16)	# 1890
	addi	x17, x16, 0	# 301
	flw		f1, -56(x2)	# 301
	fsw		f1, 0(x17)	# 301
	addi	x17, x16, 4	# 302
	fsw		f6, 0(x17)	# 302
	addi	x16, x16, 8	# 303
	fsw		f7, 0(x16)	# 303
	lw		x16, 12(x4)	# 626
	lui		x17, %hi(l.27776)	# 1894
	ori		x17, x0, %lo(l.27776)	# 1894
	flw		f2, 0(x17)	# 1894
	flw		f3, -52(x2)	# 125
	fle		f2, f3, fle.34221	# 125
	add		x7, x16, x7	# 1895
	lw		x10, -32(x2)	# 1895
	sw		x10, 0(x7)	# 1895
	jal		x0, fle_cont.34220	# 125
fle.34221:
	add		x16, x16, x7	# 1897
	sw		x10, 0(x16)	# 1897
	lw		x10, 16(x4)	# 633
	add		x10, x10, x7	# 1899
	lw		x10, 0(x10)	# 1899
	flw		f2, 0(x14)	# 301
	addi	x16, x10, 0	# 301
	fsw		f2, 0(x16)	# 301
	flw		f2, 0(x15)	# 302
	addi	x17, x10, 4	# 302
	fsw		f2, 0(x17)	# 302
	flw		f2, 0(x13)	# 303
	addi	x10, x10, 8	# 303
	fsw		f2, 0(x10)	# 303
	lui		x18, %hi(l.29555)	# 1900
	ori		x18, x0, %lo(l.29555)	# 1900
	flw		f2, 0(x18)	# 1900
	flw		f4, -48(x2)	# 1900
	fmul	f2, f2, f4	# 1900
	flw		f5, 0(x16)	# 367
	fmul	f5, f5, f2	# 367
	fsw		f5, 0(x16)	# 367
	flw		f5, 0(x17)	# 368
	fmul	f5, f5, f2	# 368
	fsw		f5, 0(x17)	# 368
	flw		f5, 0(x10)	# 369
	fmul	f2, f5, f2	# 369
	fsw		f2, 0(x10)	# 369
	lw		x10, 28(x4)	# 670
	add		x7, x10, x7	# 1902
	lw		x7, 0(x7)	# 1902
	addi	x10, x0, 44828	# 301
	flw		f2, 0(x10)	# 301
	addi	x10, x7, 0	# 301
	fsw		f2, 0(x10)	# 301
	addi	x10, x0, 44832	# 302
	flw		f2, 0(x10)	# 302
	addi	x10, x7, 4	# 302
	fsw		f2, 0(x10)	# 302
	addi	x10, x0, 44836	# 303
	flw		f2, 0(x10)	# 303
	addi	x7, x7, 8	# 303
	fsw		f2, 0(x7)	# 303
fle_cont.34220:
	lui		x7, %hi(l.29583)	# 1905
	ori		x7, x0, %lo(l.29583)	# 1905
	flw		f2, 0(x7)	# 1905
	lw		x7, -20(x2)	# 334
	addi	x10, x7, 0	# 334
	flw		f4, 0(x10)	# 334
	addi	x16, x0, 44828	# 334
	flw		f5, 0(x16)	# 334
	fmul	f8, f4, f5	# 334
	addi	x16, x7, 4	# 334
	flw		f9, 0(x16)	# 334
	addi	x17, x0, 44832	# 334
	flw		f10, 0(x17)	# 334
	fmul	f11, f9, f10	# 334
	fadd	f8, f8, f11	# 334
	addi	x17, x7, 8	# 334
	flw		f11, 0(x17)	# 334
	addi	x18, x0, 44836	# 334
	flw		f12, 0(x18)	# 334
	fmul	f13, f11, f12	# 334
	fadd	f8, f8, f13	# 334
	fmul	f2, f2, f8	# 1905
	fmul	f8, f2, f5	# 344
	fadd	f4, f4, f8	# 344
	fsw		f4, 0(x10)	# 344
	fmul	f4, f2, f10	# 345
	fadd	f4, f9, f4	# 345
	fsw		f4, 0(x16)	# 345
	fmul	f2, f2, f12	# 346
	fadd	f2, f11, f2	# 346
	fsw		f2, 0(x17)	# 346
	addi	x8, x8, 4	# 518
	flw		f2, 0(x8)	# 518
	flw		f4, -16(x2)	# 1909
	fmul	f2, f4, f2	# 1909
	lw		x8, -32(x2)	# 1912
	lw		x18, -4(x2)	# 1912
	sw		x11, -96(x2)	# 1912
	sw		x9, -100(x2)	# 1912
	fsw		f7, -104(x2)	# 1912
	fsw		f6, -108(x2)	# 1912
	fsw		f2, -112(x2)	# 1912
	sw		x13, -116(x2)	# 1912
	sw		x14, -120(x2)	# 1912
	sw		x10, -124(x2)	# 1912
	fsw		f12, -128(x2)	# 1912
	fsw		f10, -132(x2)	# 1912
	fsw		f5, -136(x2)	# 1912
	addi	x5, x18, 0	# 1912
	addi	x4, x8, 0	# 1912
	sw		x1, -140(x2)	# 1912
	addi	x2, x2, -144	# 1912
	jal		x1, shadow_check_one_or_matrix.2898.17913	# 1912
	addi	x2, x2, 144	# 1912
	lw		x1, -140(x2)	# 1912
	lw		x5, -32(x2)	# 1912
	beq		x4, x5, beq.34223	# 1912
	jal		x0, beq_cont.34222	# 1912
beq.34223:
	addi	x4, x0, 44572	# 334
	flw		f1, 0(x4)	# 334
	flw		f2, -136(x2)	# 334
	fmul	f2, f2, f1	# 334
	addi	x4, x0, 44576	# 334
	flw		f3, 0(x4)	# 334
	flw		f4, -132(x2)	# 334
	fmul	f4, f4, f3	# 334
	fadd	f2, f2, f4	# 334
	addi	x4, x0, 44580	# 334
	flw		f4, 0(x4)	# 334
	flw		f5, -128(x2)	# 334
	fmul	f5, f5, f4	# 334
	fadd	f2, f2, f5	# 334
	fsub	f2, f0, f2	# 123
	flw		f5, -48(x2)	# 1913
	fmul	f2, f2, f5	# 1913
	lw		x4, -124(x2)	# 334
	flw		f6, 0(x4)	# 334
	fmul	f1, f6, f1	# 334
	flw		f6, 0(x16)	# 334
	fmul	f3, f6, f3	# 334
	fadd	f1, f1, f3	# 334
	flw		f3, 0(x17)	# 334
	fmul	f3, f3, f4	# 334
	fadd	f1, f1, f3	# 334
	fsub	f1, f0, f1	# 123
	fle		f2, f0, fle_cont.34224	# 121
	addi	x4, x0, 44864	# 344
	flw		f4, 0(x4)	# 344
	lw		x5, -120(x2)	# 344
	flw		f6, 0(x5)	# 344
	fmul	f6, f2, f6	# 344
	fadd	f4, f4, f6	# 344
	fsw		f4, 0(x4)	# 344
	addi	x4, x0, 44868	# 345
	flw		f4, 0(x4)	# 345
	flw		f6, 0(x15)	# 345
	fmul	f6, f2, f6	# 345
	fadd	f4, f4, f6	# 345
	fsw		f4, 0(x4)	# 345
	addi	x4, x0, 44872	# 346
	flw		f4, 0(x4)	# 346
	lw		x5, -116(x2)	# 346
	flw		f6, 0(x5)	# 346
	fmul	f2, f2, f6	# 346
	fadd	f2, f4, f2	# 346
	fsw		f2, 0(x4)	# 346
fle_cont.34224:
	fle		f1, f0, beq_cont.34222	# 121
	fmul	f1, f1, f1	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -112(x2)	# 1836
	fmul	f1, f1, f2	# 1836
	addi	x4, x0, 44864	# 1837
	flw		f3, 0(x4)	# 1837
	fadd	f3, f3, f1	# 1837
	fsw		f3, 0(x4)	# 1837
	addi	x4, x0, 44868	# 1838
	flw		f3, 0(x4)	# 1838
	fadd	f3, f3, f1	# 1838
	fsw		f3, 0(x4)	# 1838
	addi	x4, x0, 44872	# 1839
	flw		f3, 0(x4)	# 1839
	fadd	f1, f3, f1	# 1839
	fsw		f1, 0(x4)	# 1839
beq_cont.34222:
	addi	x4, x0, 44908	# 301
	flw		f1, -56(x2)	# 301
	fsw		f1, 0(x4)	# 301
	addi	x4, x0, 44912	# 302
	flw		f1, -108(x2)	# 302
	fsw		f1, 0(x4)	# 302
	addi	x4, x0, 44916	# 303
	flw		f1, -104(x2)	# 303
	fsw		f1, 0(x4)	# 303
	addi	x4, x0, 44260	# 1357
	lw		x4, 0(x4)	# 1357
	addi	x5, x4, -1	# 1357
	lw		x4, -100(x2)	# 1357
	sw		x1, -140(x2)	# 1357
	addi	x2, x2, -144	# 1357
	jal		x1, setup_startp_constants.2861.17898	# 1357
	addi	x2, x2, 144	# 1357
	lw		x1, -140(x2)	# 1357
	addi	x4, x0, 45996	# 1920
	lw		x4, 0(x4)	# 1920
	addi	x4, x4, -1	# 1920
	lw		x5, -20(x2)	# 1920
	flw		f1, -48(x2)	# 1920
	flw		f2, -112(x2)	# 1920
	sw		x1, -140(x2)	# 1920
	addi	x2, x2, -144	# 1920
	jal		x1, trace_reflections.2945.17940	# 1920
	addi	x2, x2, 144	# 1920
	lw		x1, -140(x2)	# 1920
	lui		x4, %hi(l.29659)	# 1923
	ori		x4, x0, %lo(l.29659)	# 1923
	flw		f1, 0(x4)	# 1923
	flw		f2, -16(x2)	# 125
	fle		f2, f1, fle.34228	# 125
	lw		x4, -28(x2)	# 1925
	lw		x5, -12(x2)	# 1925
	ble		x5, x4, ble_cont.34229	# 1925
	addi	x5, x4, 1	# 1926
	addi	x6, x0, -1	# 28
	mul		x5, x30, x5	# 1926
	lw		x7, -24(x2)	# 1926
	add		x5, x7, x5	# 1926
	sw		x6, 0(x5)	# 1926
ble_cont.34229:
	lw		x5, -96(x2)	# 1929
	lw		x6, -44(x2)	# 1929
	beq		x6, x5, beq.34231	# 1929
	jalr	x0, x1, 0	# 1932
beq.34231:
	flw		f3, -52(x2)	# 1930
	fsub	f1, f30, f3	# 1930
	fmul	f1, f2, f1	# 1930
	addi	x4, x4, 1	# 1931
	flw		f2, 0(x2)	# 1931
	flw		f3, -40(x2)	# 1931
	fadd	f2, f2, f3	# 1931
	lw		x5, -20(x2)	# 1931
	lw		x6, -8(x2)	# 1931
	jal		x0, trace_ray.2950.17945	# 1931
fle.34228:
	jalr	x0, x1, 0	# 1934
beq.34177:
	addi	x4, x0, -1	# 28
	lw		x6, -28(x2)	# 1939
	mul		x7, x30, x6	# 1939
	lw		x8, -24(x2)	# 1939
	add		x7, x8, x7	# 1939
	sw		x4, 0(x7)	# 1939
	beq		x6, x5, beq.34234	# 1941
	lw		x4, -20(x2)	# 334
	addi	x5, x4, 0	# 334
	flw		f1, 0(x5)	# 334
	addi	x5, x0, 44572	# 334
	flw		f2, 0(x5)	# 334
	fmul	f1, f1, f2	# 334
	addi	x5, x4, 4	# 334
	flw		f2, 0(x5)	# 334
	addi	x5, x0, 44576	# 334
	flw		f3, 0(x5)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	addi	x4, x4, 8	# 334
	flw		f2, 0(x4)	# 334
	addi	x4, x0, 44580	# 334
	flw		f3, 0(x4)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	fsub	f1, f0, f1	# 123
	fle		f1, f0, fle.34235	# 121
	fmul	f2, f1, f1	# 127
	fmul	f1, f2, f1	# 1947
	flw		f2, -16(x2)	# 1947
	fmul	f1, f1, f2	# 1947
	addi	x4, x0, 44584	# 1947
	flw		f2, 0(x4)	# 1947
	fmul	f1, f1, f2	# 1947
	addi	x4, x0, 44864	# 1948
	flw		f2, 0(x4)	# 1948
	fadd	f2, f2, f1	# 1948
	fsw		f2, 0(x4)	# 1948
	addi	x4, x0, 44868	# 1949
	flw		f2, 0(x4)	# 1949
	fadd	f2, f2, f1	# 1949
	fsw		f2, 0(x4)	# 1949
	addi	x4, x0, 44872	# 1950
	flw		f2, 0(x4)	# 1950
	fadd	f1, f2, f1	# 1950
	fsw		f1, 0(x4)	# 1950
	jalr	x0, x1, 0	# 1950
fle.34235:
	jalr	x0, x1, 0	# 1952
beq.34234:
	jalr	x0, x1, 0	# 1953
iter_trace_diffuse_rays.2959.17951:
	addi	x8, x0, 0	# 6
	ble		x0, x7, ble.34239	# 1986
	jalr	x0, x1, 0	# 1997
ble.34239:
	mul		x9, x30, x7	# 1987
	add		x9, x4, x9	# 1987
	lw		x9, 0(x9)	# 1987
	lw		x10, 0(x9)	# 681
	addi	x11, x10, 0	# 334
	flw		f1, 0(x11)	# 334
	addi	x11, x5, 0	# 334
	flw		f2, 0(x11)	# 334
	fmul	f1, f1, f2	# 334
	addi	x11, x0, 1	# 6
	addi	x12, x0, 4	# 334
	addi	x13, x10, 4	# 334
	flw		f2, 0(x13)	# 334
	addi	x13, x5, 4	# 334
	flw		f3, 0(x13)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	addi	x13, x0, 2	# 65
	addi	x14, x10, 8	# 334
	flw		f2, 0(x14)	# 334
	addi	x14, x5, 8	# 334
	flw		f3, 0(x14)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	sw		x6, 0(x2)	# 122
	sw		x5, -4(x2)	# 122
	sw		x4, -8(x2)	# 122
	sw		x7, -12(x2)	# 122
	fle		f0, f1, fle.34242	# 122
	addi	x9, x7, 1	# 1992
	mul		x9, x30, x9	# 1992
	add		x9, x4, x9	# 1992
	lw		x9, 0(x9)	# 1992
	fdiv	f1, f1, f23	# 1992
	lui		x10, %hi(l.29245)	# 42
	ori		x10, x0, %lo(l.29245)	# 42
	flw		f3, 0(x10)	# 42
	addi	x10, x0, 44808	# 1676
	fsw		f3, 0(x10)	# 1676
	addi	x14, x0, 44796	# 1677
	lw		x14, 0(x14)	# 1677
	fsw		f1, -16(x2)	# 1677
	sw		x14, -20(x2)	# 1677
	sw		x12, -24(x2)	# 1677
	sw		x13, -28(x2)	# 1677
	fsw		f0, -32(x2)	# 1677
	sw		x11, -36(x2)	# 1677
	sw		x9, -40(x2)	# 1677
	sw		x0, -44(x2)	# 1677
	sw		x10, -48(x2)	# 1677
	addi	x6, x9, 0	# 1677
	addi	x5, x14, 0	# 1677
	addi	x4, x0, 0	# 1677
	sw		x1, -52(x2)	# 1677
	addi	x2, x2, -56	# 1677
	jal		x1, trace_or_matrix_fast.2923.17936	# 1677
	addi	x2, x2, 56	# 1677
	lw		x1, -52(x2)	# 1677
	lw		x4, -48(x2)	# 1678
	flw		f1, 0(x4)	# 1678
	fle		f1, f20, fle.34244	# 125
	fle		f21, f1, fle.34246	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.34243	# 125
fle.34246:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.34243	# 125
fle.34244:
	addi	x4, x0, 0	# 1682
fle_cont.34243:
	lw		x5, -44(x2)	# 1969
	beq		x4, x5, fle_cont.34241	# 1969
	addi	x4, x0, 44824	# 1970
	lw		x4, 0(x4)	# 1970
	mul		x4, x30, x4	# 1970
	addi	x4, x4, 44308	# 1970
	lw		x4, 0(x4)	# 1970
	lw		x6, -40(x2)	# 681
	lw		x6, 0(x6)	# 681
	lw		x7, 4(x4)	# 395
	lw		x8, -36(x2)	# 1735
	beq		x7, x8, beq.34250	# 1735
	lw		x6, -28(x2)	# 1737
	beq		x7, x6, beq.34252	# 1737
	addi	x7, x0, 44812	# 1712
	flw		f1, 0(x7)	# 1712
	lw		x7, 20(x4)	# 473
	addi	x9, x7, 0	# 478
	flw		f2, 0(x9)	# 478
	fsub	f1, f1, f2	# 1712
	addi	x9, x0, 44816	# 1713
	flw		f2, 0(x9)	# 1713
	addi	x9, x7, 4	# 488
	flw		f3, 0(x9)	# 488
	fsub	f2, f2, f3	# 1713
	addi	x9, x0, 44820	# 1714
	flw		f3, 0(x9)	# 1714
	addi	x7, x7, 8	# 498
	flw		f4, 0(x7)	# 498
	fsub	f3, f3, f4	# 1714
	lw		x7, 16(x4)	# 433
	addi	x9, x7, 0	# 438
	flw		f4, 0(x9)	# 438
	fmul	f4, f1, f4	# 1716
	addi	x9, x7, 4	# 448
	flw		f5, 0(x9)	# 448
	fmul	f5, f2, f5	# 1717
	addi	x7, x7, 8	# 458
	flw		f6, 0(x7)	# 458
	fmul	f6, f3, f6	# 1718
	lw		x7, 12(x4)	# 424
	beq		x7, x5, beq.34254	# 1720
	lw		x7, 36(x4)	# 573
	addi	x9, x7, 8	# 578
	flw		f7, 0(x9)	# 578
	fmul	f8, f2, f7	# 1725
	addi	x9, x7, 4	# 568
	flw		f9, 0(x9)	# 568
	fmul	f10, f3, f9	# 1725
	fadd	f8, f8, f10	# 1725
	lui		x9, %hi(l.27776)	# 126
	ori		x9, x0, %lo(l.27776)	# 126
	flw		f10, 0(x9)	# 126
	fmul	f8, f8, f10	# 126
	fadd	f4, f4, f8	# 1725
	addi	x9, x0, 44828	# 1725
	fsw		f4, 0(x9)	# 1725
	fmul	f4, f1, f7	# 1726
	addi	x7, x7, 0	# 558
	flw		f7, 0(x7)	# 558
	fmul	f3, f3, f7	# 1726
	fadd	f3, f4, f3	# 1726
	fmul	f3, f3, f10	# 126
	fadd	f3, f5, f3	# 1726
	addi	x7, x0, 44832	# 1726
	fsw		f3, 0(x7)	# 1726
	fmul	f1, f1, f9	# 1727
	fmul	f2, f2, f7	# 1727
	fadd	f1, f1, f2	# 1727
	fmul	f1, f1, f10	# 126
	fadd	f1, f6, f1	# 1727
	addi	x7, x0, 44836	# 1727
	fsw		f1, 0(x7)	# 1727
	jal		x0, beq_cont.34253	# 1720
beq.34254:
	addi	x7, x0, 44828	# 1721
	fsw		f4, 0(x7)	# 1721
	addi	x7, x0, 44832	# 1722
	fsw		f5, 0(x7)	# 1722
	addi	x7, x0, 44836	# 1723
	fsw		f6, 0(x7)	# 1723
beq_cont.34253:
	lw		x7, 24(x4)	# 415
	addi	x9, x0, 44828	# 325
	flw		f1, 0(x9)	# 325
	fmul	f2, f1, f1	# 127
	addi	x10, x0, 44832	# 325
	flw		f3, 0(x10)	# 325
	fmul	f4, f3, f3	# 127
	fadd	f2, f2, f4	# 325
	addi	x11, x0, 44836	# 325
	flw		f4, 0(x11)	# 325
	fmul	f5, f4, f4	# 127
	fadd	f2, f2, f5	# 325
	fsqrt	f2, f2	# 325
	flw		f5, -32(x2)	# 120
	feq		f2, f5, feq.34256	# 120
	beq		x7, x5, beq.34258	# 326
	fdiv	f2, f24, f2	# 326
	jal		x0, feq_cont.34255	# 326
beq.34258:
	fdiv	f2, f30, f2	# 326
	jal		x0, feq_cont.34255	# 120
feq.34256:
	fadd	f2, f0, f30	# 326
feq_cont.34255:
	fmul	f1, f1, f2	# 327
	fsw		f1, 0(x9)	# 327
	fmul	f1, f3, f2	# 328
	fsw		f1, 0(x10)	# 328
	fmul	f1, f4, f2	# 329
	fsw		f1, 0(x11)	# 329
	jal		x0, beq_cont.34249	# 1737
beq.34252:
	lw		x7, 16(x4)	# 433
	addi	x9, x7, 0	# 438
	flw		f1, 0(x9)	# 438
	fsub	f1, f0, f1	# 123
	addi	x9, x0, 44828	# 1705
	fsw		f1, 0(x9)	# 1705
	addi	x9, x7, 4	# 448
	flw		f1, 0(x9)	# 448
	fsub	f1, f0, f1	# 123
	addi	x9, x0, 44832	# 1706
	fsw		f1, 0(x9)	# 1706
	addi	x7, x7, 8	# 458
	flw		f1, 0(x7)	# 458
	fsub	f1, f0, f1	# 123
	addi	x7, x0, 44836	# 1707
	fsw		f1, 0(x7)	# 1707
	jal		x0, beq_cont.34249	# 1735
beq.34250:
	addi	x7, x0, 44804	# 1696
	lw		x7, 0(x7)	# 1696
	addi	x9, x0, 44828	# 51
	flw		f1, -32(x2)	# 289
	fsw		f1, 0(x9)	# 289
	addi	x9, x0, 44832	# 290
	fsw		f1, 0(x9)	# 290
	addi	x9, x0, 44836	# 291
	fsw		f1, 0(x9)	# 291
	addi	x7, x7, -1	# 1699
	mul		x7, x30, x7	# 1699
	add		x6, x6, x7	# 1699
	flw		f2, 0(x6)	# 1699
	feq		f2, f1, feq.34260	# 120
	fle		f2, f1, fle.34262	# 121
	fadd	f2, f0, f30	# 255
	jal		x0, feq_cont.34259	# 121
fle.34262:
	fadd	f2, f0, f24	# 256
	jal		x0, feq_cont.34259	# 120
feq.34260:
	fadd	f2, f0, f1	# 254
feq_cont.34259:
	fsub	f2, f0, f2	# 123
	addi	x6, x7, 44828	# 1699
	fsw		f2, 0(x6)	# 1699
beq_cont.34249:
	lw		x6, 0(x4)	# 385
	lw		x7, 32(x4)	# 523
	addi	x9, x7, 0	# 528
	flw		f1, 0(x9)	# 528
	addi	x9, x0, 44840	# 1752
	fsw		f1, 0(x9)	# 1752
	addi	x10, x7, 4	# 538
	flw		f1, 0(x10)	# 538
	addi	x10, x0, 44844	# 1753
	fsw		f1, 0(x10)	# 1753
	addi	x7, x7, 8	# 548
	flw		f1, 0(x7)	# 548
	addi	x7, x0, 44848	# 1754
	fsw		f1, 0(x7)	# 1754
	sw		x7, -52(x2)	# 1755
	sw		x4, -56(x2)	# 1755
	beq		x6, x8, beq.34264	# 1755
	lw		x8, -28(x2)	# 1773
	beq		x6, x8, beq.34266	# 1773
	addi	x8, x0, 3	# 16
	beq		x6, x8, beq.34268	# 1780
	lw		x8, -24(x2)	# 1791
	beq		x6, x8, beq.34270	# 1791
	jal		x0, beq_cont.34263	# 1791
beq.34270:
	addi	x6, x0, 44812	# 1793
	flw		f1, 0(x6)	# 1793
	lw		x6, 20(x4)	# 473
	addi	x8, x6, 0	# 478
	flw		f2, 0(x8)	# 478
	fsub	f1, f1, f2	# 1793
	lw		x8, 16(x4)	# 433
	addi	x11, x8, 0	# 438
	flw		f2, 0(x11)	# 438
	fsqrt	f2, f2	# 1793
	fmul	f1, f1, f2	# 1793
	addi	x11, x0, 44820	# 1794
	flw		f2, 0(x11)	# 1794
	addi	x11, x6, 8	# 498
	flw		f3, 0(x11)	# 498
	fsub	f2, f2, f3	# 1794
	addi	x11, x8, 8	# 458
	flw		f3, 0(x11)	# 458
	fsqrt	f3, f3	# 1794
	fmul	f2, f2, f3	# 1794
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1795
	flw		f4, -32(x2)	# 124
	fle		f1, f4, fle.34272	# 124
	fadd	f5, f0, f1	# 124
	jal		x0, fle_cont.34271	# 124
fle.34272:
	fsub	f5, f0, f1	# 124
fle_cont.34271:
	lui		x11, %hi(l.29455)	# 1797
	ori		x11, x0, %lo(l.29455)	# 1797
	flw		f6, 0(x11)	# 1797
	fsw		f3, -60(x2)	# 125
	fle		f6, f5, fle.34274	# 125
	lui		x11, %hi(l.29457)	# 1798
	ori		x11, x0, %lo(l.29457)	# 1798
	flw		f1, 0(x11)	# 1798
	jal		x0, fle_cont.34273	# 125
fle.34274:
	fdiv	f1, f2, f1	# 1800
	fle		f1, f4, fle.34276	# 124
	jal		x0, fle_cont.34275	# 124
fle.34276:
	fsub	f1, f0, f1	# 124
fle_cont.34275:
	sw		x1, -64(x2)	# 1802
	addi	x2, x2, -68	# 1802
	jal		x1, atan.2614.17885	# 1802
	addi	x2, x2, 68	# 1802
	lw		x1, -64(x2)	# 1802
	lui		x4, %hi(l.29460)	# 1802
	ori		x4, x0, %lo(l.29460)	# 1802
	flw		f2, 0(x4)	# 1802
	fmul	f1, f1, f2	# 1802
	lui		x4, %hi(l.29462)	# 1802
	ori		x4, x0, %lo(l.29462)	# 1802
	flw		f2, 0(x4)	# 1802
	fdiv	f1, f1, f2	# 1802
fle_cont.34273:
	sw		x6, -64(x2)	# 1804
	fsw		f1, -68(x2)	# 1804
	sw		x1, -72(x2)	# 1804
	addi	x2, x2, -76	# 1804
	jal		x1, min_caml_floor	# 1804
	addi	x2, x2, 76	# 1804
	lw		x1, -72(x2)	# 1804
	flw		f2, -68(x2)	# 1804
	fsub	f1, f2, f1	# 1804
	addi	x4, x0, 44816	# 1806
	flw		f2, 0(x4)	# 1806
	lw		x4, -64(x2)	# 488
	addi	x4, x4, 4	# 488
	flw		f3, 0(x4)	# 488
	fsub	f2, f2, f3	# 1806
	addi	x4, x8, 4	# 448
	flw		f3, 0(x4)	# 448
	fsqrt	f3, f3	# 1806
	fmul	f2, f2, f3	# 1806
	flw		f3, -32(x2)	# 124
	flw		f4, -60(x2)	# 124
	fle		f4, f3, fle.34278	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.34277	# 124
fle.34278:
	fsub	f5, f0, f4	# 124
fle_cont.34277:
	fsw		f1, -72(x2)	# 125
	fle		f6, f5, fle.34280	# 125
	lui		x4, %hi(l.29457)	# 1809
	ori		x4, x0, %lo(l.29457)	# 1809
	flw		f1, 0(x4)	# 1809
	jal		x0, fle_cont.34279	# 125
fle.34280:
	fdiv	f2, f2, f4	# 1811
	fle		f2, f3, fle.34282	# 124
	jal		x0, fle_cont.34281	# 124
fle.34282:
	fsub	f2, f0, f2	# 124
fle_cont.34281:
	fadd	f1, f0, f2	# 1812
	sw		x1, -76(x2)	# 1812
	addi	x2, x2, -80	# 1812
	jal		x1, atan.2614.17885	# 1812
	addi	x2, x2, 80	# 1812
	lw		x1, -76(x2)	# 1812
	lui		x4, %hi(l.29460)	# 1812
	ori		x4, x0, %lo(l.29460)	# 1812
	flw		f2, 0(x4)	# 1812
	fmul	f1, f1, f2	# 1812
	lui		x4, %hi(l.29462)	# 1812
	ori		x4, x0, %lo(l.29462)	# 1812
	flw		f2, 0(x4)	# 1812
	fdiv	f1, f1, f2	# 1812
fle_cont.34279:
	fsw		f1, -76(x2)	# 1814
	sw		x1, -80(x2)	# 1814
	addi	x2, x2, -84	# 1814
	jal		x1, min_caml_floor	# 1814
	addi	x2, x2, 84	# 1814
	lw		x1, -80(x2)	# 1814
	flw		f2, -76(x2)	# 1814
	fsub	f1, f2, f1	# 1814
	lui		x4, %hi(l.29473)	# 1815
	ori		x4, x0, %lo(l.29473)	# 1815
	flw		f2, 0(x4)	# 1815
	lui		x4, %hi(l.27776)	# 1815
	ori		x4, x0, %lo(l.27776)	# 1815
	flw		f3, 0(x4)	# 1815
	flw		f4, -72(x2)	# 1815
	fsub	f4, f3, f4	# 1815
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1815
	fsub	f1, f3, f1	# 1815
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1815
	flw		f2, -32(x2)	# 122
	fle		f2, f1, fle_cont.34283	# 122
	fadd	f1, f0, f2	# 1816
fle_cont.34283:
	fmul	f1, f28, f1	# 1817
	lui		x4, %hi(l.29480)	# 1817
	ori		x4, x0, %lo(l.29480)	# 1817
	flw		f3, 0(x4)	# 1817
	fdiv	f1, f1, f3	# 1817
	lw		x4, -52(x2)	# 1817
	fsw		f1, 0(x4)	# 1817
	jal		x0, beq_cont.34263	# 1780
beq.34268:
	addi	x6, x0, 44812	# 1783
	flw		f1, 0(x6)	# 1783
	lw		x6, 20(x4)	# 473
	addi	x8, x6, 0	# 478
	flw		f2, 0(x8)	# 478
	fsub	f1, f1, f2	# 1783
	addi	x8, x0, 44820	# 1784
	flw		f2, 0(x8)	# 1784
	addi	x6, x6, 8	# 498
	flw		f3, 0(x6)	# 498
	fsub	f2, f2, f3	# 1784
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1785
	fsqrt	f1, f1	# 1785
	fdiv	f1, f1, f25	# 1785
	fsw		f1, -80(x2)	# 1786
	sw		x1, -84(x2)	# 1786
	addi	x2, x2, -88	# 1786
	jal		x1, min_caml_floor	# 1786
	addi	x2, x2, 88	# 1786
	lw		x1, -84(x2)	# 1786
	flw		f2, -80(x2)	# 1786
	fsub	f1, f2, f1	# 1786
	lui		x4, %hi(l.29462)	# 1786
	ori		x4, x0, %lo(l.29462)	# 1786
	flw		f2, 0(x4)	# 1786
	fmul	f1, f1, f2	# 1786
	sw		x1, -84(x2)	# 1787
	addi	x2, x2, -88	# 1787
	jal		x1, cos.2612.17883	# 1787
	addi	x2, x2, 88	# 1787
	lw		x1, -84(x2)	# 1787
	fmul	f1, f1, f1	# 127
	fmul	f3, f1, f28	# 1788
	fsw		f3, 0(x10)	# 1788
	fsub	f1, f30, f1	# 1789
	fmul	f1, f1, f28	# 1789
	lw		x4, -52(x2)	# 1789
	fsw		f1, 0(x4)	# 1789
	jal		x0, beq_cont.34263	# 1773
beq.34266:
	addi	x6, x0, 44816	# 1776
	flw		f1, 0(x6)	# 1776
	lui		x6, %hi(l.29498)	# 1776
	ori		x6, x0, %lo(l.29498)	# 1776
	flw		f2, 0(x6)	# 1776
	fmul	f1, f1, f2	# 1776
	sw		x1, -84(x2)	# 1776
	addi	x2, x2, -88	# 1776
	jal		x1, sin.2610.17881	# 1776
	addi	x2, x2, 88	# 1776
	lw		x1, -84(x2)	# 1776
	fmul	f1, f1, f1	# 127
	fmul	f3, f28, f1	# 1777
	fsw		f3, 0(x9)	# 1777
	fsub	f1, f30, f1	# 1778
	fmul	f1, f28, f1	# 1778
	fsw		f1, 0(x10)	# 1778
	jal		x0, beq_cont.34263	# 1755
beq.34264:
	addi	x6, x0, 44812	# 1758
	flw		f1, 0(x6)	# 1758
	lw		x6, 20(x4)	# 473
	addi	x8, x6, 0	# 478
	flw		f2, 0(x8)	# 478
	fsub	f1, f1, f2	# 1758
	fmul	f3, f1, f26	# 1760
	fsw		f26, -84(x2)	# 1760
	sw		x6, -88(x2)	# 1760
	fsw		f1, -92(x2)	# 1760
	fadd	f1, f0, f3	# 1760
	sw		x1, -96(x2)	# 1760
	addi	x2, x2, -100	# 1760
	jal		x1, min_caml_floor	# 1760
	addi	x2, x2, 100	# 1760
	lw		x1, -96(x2)	# 1760
	fmul	f1, f1, f27	# 1760
	flw		f3, -92(x2)	# 1761
	fsub	f1, f3, f1	# 1761
	addi	x4, x0, 44820	# 1763
	flw		f4, 0(x4)	# 1763
	lw		x4, -88(x2)	# 498
	addi	x4, x4, 8	# 498
	flw		f5, 0(x4)	# 498
	fsub	f4, f4, f5	# 1763
	flw		f5, -84(x2)	# 1765
	fmul	f5, f4, f5	# 1765
	fsw		f1, -96(x2)	# 1765
	fsw		f27, -100(x2)	# 1765
	fadd	f1, f0, f5	# 1765
	sw		x1, -104(x2)	# 1765
	addi	x2, x2, -108	# 1765
	jal		x1, min_caml_floor	# 1765
	addi	x2, x2, 108	# 1765
	lw		x1, -104(x2)	# 1765
	flw		f2, -100(x2)	# 1765
	fmul	f1, f1, f2	# 1765
	fsub	f1, f4, f1	# 1766
	flw		f2, -96(x2)	# 125
	fle		f25, f2, fle.34286	# 125
	fle		f25, f1, fle.34288	# 125
	fadd	f1, f0, f28	# 1770
	jal		x0, fle_cont.34285	# 125
fle.34288:
	flw		f1, -32(x2)	# 1770
	jal		x0, fle_cont.34285	# 125
fle.34286:
	fle		f25, f1, fle.34290	# 125
	flw		f1, -32(x2)	# 1771
	jal		x0, fle_cont.34285	# 125
fle.34290:
	fadd	f1, f0, f28	# 1771
fle_cont.34285:
	fsw		f1, 0(x10)	# 1768
beq_cont.34263:
	lw		x4, -44(x2)	# 1975
	lw		x5, -20(x2)	# 1975
	sw		x10, -104(x2)	# 1975
	sw		x9, -108(x2)	# 1975
	sw		x1, -112(x2)	# 1975
	addi	x2, x2, -116	# 1975
	jal		x1, shadow_check_one_or_matrix.2898.17913	# 1975
	addi	x2, x2, 116	# 1975
	lw		x1, -112(x2)	# 1975
	lw		x5, -44(x2)	# 1975
	beq		x4, x5, beq.34292	# 1975
	jal		x0, fle_cont.34241	# 1975
beq.34292:
	addi	x4, x0, 44828	# 334
	flw		f1, 0(x4)	# 334
	addi	x4, x0, 44572	# 334
	flw		f2, 0(x4)	# 334
	fmul	f1, f1, f2	# 334
	addi	x4, x0, 44832	# 334
	flw		f2, 0(x4)	# 334
	addi	x4, x0, 44576	# 334
	flw		f3, 0(x4)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	addi	x4, x0, 44836	# 334
	flw		f2, 0(x4)	# 334
	addi	x4, x0, 44580	# 334
	flw		f3, 0(x4)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	fsub	f1, f0, f1	# 123
	flw		f2, -32(x2)	# 121
	fle		f1, f2, fle.34294	# 121
	jal		x0, fle_cont.34293	# 121
fle.34294:
	fadd	f1, f0, f2	# 1977
fle_cont.34293:
	flw		f2, -16(x2)	# 1978
	fmul	f1, f2, f1	# 1978
	lw		x4, -56(x2)	# 503
	lw		x4, 28(x4)	# 503
	addi	x4, x4, 0	# 508
	flw		f2, 0(x4)	# 508
	fmul	f1, f1, f2	# 1978
	addi	x4, x0, 44852	# 344
	flw		f2, 0(x4)	# 344
	lw		x5, -108(x2)	# 344
	flw		f3, 0(x5)	# 344
	fmul	f3, f1, f3	# 344
	fadd	f2, f2, f3	# 344
	fsw		f2, 0(x4)	# 344
	addi	x4, x0, 44856	# 345
	flw		f2, 0(x4)	# 345
	lw		x5, -104(x2)	# 345
	flw		f3, 0(x5)	# 345
	fmul	f3, f1, f3	# 345
	fadd	f2, f2, f3	# 345
	fsw		f2, 0(x4)	# 345
	addi	x4, x0, 44860	# 346
	flw		f2, 0(x4)	# 346
	lw		x5, -52(x2)	# 346
	flw		f3, 0(x5)	# 346
	fmul	f1, f1, f3	# 346
	fadd	f1, f2, f1	# 346
	fsw		f1, 0(x4)	# 346
	jal		x0, fle_cont.34241	# 1969
fle.34242:
	fdiv	f1, f1, f22	# 1994
	lui		x14, %hi(l.29245)	# 42
	ori		x14, x0, %lo(l.29245)	# 42
	flw		f3, 0(x14)	# 42
	addi	x14, x0, 44808	# 1676
	fsw		f3, 0(x14)	# 1676
	addi	x15, x0, 44796	# 1677
	lw		x15, 0(x15)	# 1677
	fsw		f1, -112(x2)	# 1677
	sw		x15, -116(x2)	# 1677
	sw		x12, -24(x2)	# 1677
	sw		x13, -28(x2)	# 1677
	sw		x10, -120(x2)	# 1677
	fsw		f0, -32(x2)	# 1677
	sw		x11, -36(x2)	# 1677
	sw		x0, -44(x2)	# 1677
	sw		x14, -124(x2)	# 1677
	addi	x6, x9, 0	# 1677
	addi	x5, x15, 0	# 1677
	addi	x4, x0, 0	# 1677
	sw		x1, -128(x2)	# 1677
	addi	x2, x2, -132	# 1677
	jal		x1, trace_or_matrix_fast.2923.17936	# 1677
	addi	x2, x2, 132	# 1677
	lw		x1, -128(x2)	# 1677
	lw		x4, -124(x2)	# 1678
	flw		f1, 0(x4)	# 1678
	fle		f1, f20, fle.34296	# 125
	fle		f21, f1, fle.34298	# 125
	addi	x4, x0, 1	# 125
	jal		x0, fle_cont.34295	# 125
fle.34298:
	addi	x4, x0, 0	# 125
	jal		x0, fle_cont.34295	# 125
fle.34296:
	addi	x4, x0, 0	# 1682
fle_cont.34295:
	lw		x5, -44(x2)	# 1969
	beq		x4, x5, fle_cont.34241	# 1969
	addi	x4, x0, 44824	# 1970
	lw		x4, 0(x4)	# 1970
	mul		x4, x30, x4	# 1970
	addi	x4, x4, 44308	# 1970
	lw		x4, 0(x4)	# 1970
	lw		x6, 4(x4)	# 395
	lw		x7, -36(x2)	# 1735
	beq		x6, x7, beq.34302	# 1735
	lw		x8, -28(x2)	# 1737
	beq		x6, x8, beq.34304	# 1737
	addi	x6, x0, 44812	# 1712
	flw		f1, 0(x6)	# 1712
	lw		x6, 20(x4)	# 473
	addi	x9, x6, 0	# 478
	flw		f2, 0(x9)	# 478
	fsub	f1, f1, f2	# 1712
	addi	x9, x0, 44816	# 1713
	flw		f2, 0(x9)	# 1713
	addi	x9, x6, 4	# 488
	flw		f3, 0(x9)	# 488
	fsub	f2, f2, f3	# 1713
	addi	x9, x0, 44820	# 1714
	flw		f3, 0(x9)	# 1714
	addi	x6, x6, 8	# 498
	flw		f4, 0(x6)	# 498
	fsub	f3, f3, f4	# 1714
	lw		x6, 16(x4)	# 433
	addi	x9, x6, 0	# 438
	flw		f4, 0(x9)	# 438
	fmul	f4, f1, f4	# 1716
	addi	x9, x6, 4	# 448
	flw		f5, 0(x9)	# 448
	fmul	f5, f2, f5	# 1717
	addi	x6, x6, 8	# 458
	flw		f6, 0(x6)	# 458
	fmul	f6, f3, f6	# 1718
	lw		x6, 12(x4)	# 424
	beq		x6, x5, beq.34306	# 1720
	lw		x6, 36(x4)	# 573
	addi	x9, x6, 8	# 578
	flw		f7, 0(x9)	# 578
	fmul	f8, f2, f7	# 1725
	addi	x9, x6, 4	# 568
	flw		f9, 0(x9)	# 568
	fmul	f10, f3, f9	# 1725
	fadd	f8, f8, f10	# 1725
	lui		x9, %hi(l.27776)	# 126
	ori		x9, x0, %lo(l.27776)	# 126
	flw		f10, 0(x9)	# 126
	fmul	f8, f8, f10	# 126
	fadd	f4, f4, f8	# 1725
	addi	x9, x0, 44828	# 1725
	fsw		f4, 0(x9)	# 1725
	fmul	f4, f1, f7	# 1726
	addi	x6, x6, 0	# 558
	flw		f7, 0(x6)	# 558
	fmul	f3, f3, f7	# 1726
	fadd	f3, f4, f3	# 1726
	fmul	f3, f3, f10	# 126
	fadd	f3, f5, f3	# 1726
	addi	x6, x0, 44832	# 1726
	fsw		f3, 0(x6)	# 1726
	fmul	f1, f1, f9	# 1727
	fmul	f2, f2, f7	# 1727
	fadd	f1, f1, f2	# 1727
	fmul	f1, f1, f10	# 126
	fadd	f1, f6, f1	# 1727
	addi	x6, x0, 44836	# 1727
	fsw		f1, 0(x6)	# 1727
	jal		x0, beq_cont.34305	# 1720
beq.34306:
	addi	x6, x0, 44828	# 1721
	fsw		f4, 0(x6)	# 1721
	addi	x6, x0, 44832	# 1722
	fsw		f5, 0(x6)	# 1722
	addi	x6, x0, 44836	# 1723
	fsw		f6, 0(x6)	# 1723
beq_cont.34305:
	lw		x6, 24(x4)	# 415
	addi	x9, x0, 44828	# 325
	flw		f1, 0(x9)	# 325
	fmul	f2, f1, f1	# 127
	addi	x10, x0, 44832	# 325
	flw		f3, 0(x10)	# 325
	fmul	f4, f3, f3	# 127
	fadd	f2, f2, f4	# 325
	addi	x11, x0, 44836	# 325
	flw		f4, 0(x11)	# 325
	fmul	f5, f4, f4	# 127
	fadd	f2, f2, f5	# 325
	fsqrt	f2, f2	# 325
	flw		f5, -32(x2)	# 120
	feq		f2, f5, feq.34308	# 120
	beq		x6, x5, beq.34310	# 326
	fdiv	f2, f24, f2	# 326
	jal		x0, feq_cont.34307	# 326
beq.34310:
	fdiv	f2, f30, f2	# 326
	jal		x0, feq_cont.34307	# 120
feq.34308:
	fadd	f2, f0, f30	# 326
feq_cont.34307:
	fmul	f1, f1, f2	# 327
	fsw		f1, 0(x9)	# 327
	fmul	f1, f3, f2	# 328
	fsw		f1, 0(x10)	# 328
	fmul	f1, f4, f2	# 329
	fsw		f1, 0(x11)	# 329
	jal		x0, beq_cont.34301	# 1737
beq.34304:
	lw		x6, 16(x4)	# 433
	addi	x9, x6, 0	# 438
	flw		f1, 0(x9)	# 438
	fsub	f1, f0, f1	# 123
	addi	x9, x0, 44828	# 1705
	fsw		f1, 0(x9)	# 1705
	addi	x9, x6, 4	# 448
	flw		f1, 0(x9)	# 448
	fsub	f1, f0, f1	# 123
	addi	x9, x0, 44832	# 1706
	fsw		f1, 0(x9)	# 1706
	addi	x6, x6, 8	# 458
	flw		f1, 0(x6)	# 458
	fsub	f1, f0, f1	# 123
	addi	x6, x0, 44836	# 1707
	fsw		f1, 0(x6)	# 1707
	jal		x0, beq_cont.34301	# 1735
beq.34302:
	addi	x6, x0, 44804	# 1696
	lw		x6, 0(x6)	# 1696
	addi	x8, x0, 44828	# 51
	flw		f1, -32(x2)	# 289
	fsw		f1, 0(x8)	# 289
	addi	x8, x0, 44832	# 290
	fsw		f1, 0(x8)	# 290
	addi	x8, x0, 44836	# 291
	fsw		f1, 0(x8)	# 291
	addi	x6, x6, -1	# 1699
	mul		x6, x30, x6	# 1699
	lw		x8, -120(x2)	# 1699
	add		x8, x8, x6	# 1699
	flw		f2, 0(x8)	# 1699
	feq		f2, f1, feq.34312	# 120
	fle		f2, f1, fle.34314	# 121
	fadd	f2, f0, f30	# 255
	jal		x0, feq_cont.34311	# 121
fle.34314:
	fadd	f2, f0, f24	# 256
	jal		x0, feq_cont.34311	# 120
feq.34312:
	fadd	f2, f0, f1	# 254
feq_cont.34311:
	fsub	f2, f0, f2	# 123
	addi	x6, x6, 44828	# 1699
	fsw		f2, 0(x6)	# 1699
beq_cont.34301:
	lw		x6, 0(x4)	# 385
	lw		x8, 32(x4)	# 523
	addi	x9, x8, 0	# 528
	flw		f1, 0(x9)	# 528
	addi	x9, x0, 44840	# 1752
	fsw		f1, 0(x9)	# 1752
	addi	x10, x8, 4	# 538
	flw		f1, 0(x10)	# 538
	addi	x10, x0, 44844	# 1753
	fsw		f1, 0(x10)	# 1753
	addi	x8, x8, 8	# 548
	flw		f1, 0(x8)	# 548
	addi	x8, x0, 44848	# 1754
	fsw		f1, 0(x8)	# 1754
	sw		x4, -128(x2)	# 1755
	beq		x6, x7, beq.34316	# 1755
	lw		x7, -28(x2)	# 1773
	beq		x6, x7, beq.34318	# 1773
	addi	x7, x0, 3	# 16
	beq		x6, x7, beq.34320	# 1780
	lw		x7, -24(x2)	# 1791
	beq		x6, x7, beq.34322	# 1791
	jal		x0, beq_cont.34315	# 1791
beq.34322:
	addi	x6, x0, 44812	# 1793
	flw		f1, 0(x6)	# 1793
	lw		x6, 20(x4)	# 473
	addi	x7, x6, 0	# 478
	flw		f2, 0(x7)	# 478
	fsub	f1, f1, f2	# 1793
	lw		x7, 16(x4)	# 433
	addi	x11, x7, 0	# 438
	flw		f2, 0(x11)	# 438
	fsqrt	f2, f2	# 1793
	fmul	f1, f1, f2	# 1793
	addi	x11, x0, 44820	# 1794
	flw		f2, 0(x11)	# 1794
	addi	x11, x6, 8	# 498
	flw		f3, 0(x11)	# 498
	fsub	f2, f2, f3	# 1794
	addi	x11, x7, 8	# 458
	flw		f3, 0(x11)	# 458
	fsqrt	f3, f3	# 1794
	fmul	f2, f2, f3	# 1794
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1795
	flw		f4, -32(x2)	# 124
	fle		f1, f4, fle.34324	# 124
	fadd	f5, f0, f1	# 124
	jal		x0, fle_cont.34323	# 124
fle.34324:
	fsub	f5, f0, f1	# 124
fle_cont.34323:
	lui		x11, %hi(l.29455)	# 1797
	ori		x11, x0, %lo(l.29455)	# 1797
	flw		f6, 0(x11)	# 1797
	fsw		f3, -132(x2)	# 125
	fle		f6, f5, fle.34326	# 125
	lui		x11, %hi(l.29457)	# 1798
	ori		x11, x0, %lo(l.29457)	# 1798
	flw		f1, 0(x11)	# 1798
	jal		x0, fle_cont.34325	# 125
fle.34326:
	fdiv	f1, f2, f1	# 1800
	fle		f1, f4, fle.34328	# 124
	jal		x0, fle_cont.34327	# 124
fle.34328:
	fsub	f1, f0, f1	# 124
fle_cont.34327:
	sw		x1, -136(x2)	# 1802
	addi	x2, x2, -140	# 1802
	jal		x1, atan.2614.17885	# 1802
	addi	x2, x2, 140	# 1802
	lw		x1, -136(x2)	# 1802
	lui		x4, %hi(l.29460)	# 1802
	ori		x4, x0, %lo(l.29460)	# 1802
	flw		f2, 0(x4)	# 1802
	fmul	f1, f1, f2	# 1802
	lui		x4, %hi(l.29462)	# 1802
	ori		x4, x0, %lo(l.29462)	# 1802
	flw		f2, 0(x4)	# 1802
	fdiv	f1, f1, f2	# 1802
fle_cont.34325:
	sw		x7, -136(x2)	# 1804
	sw		x6, -140(x2)	# 1804
	fsw		f1, -144(x2)	# 1804
	sw		x1, -148(x2)	# 1804
	addi	x2, x2, -152	# 1804
	jal		x1, min_caml_floor	# 1804
	addi	x2, x2, 152	# 1804
	lw		x1, -148(x2)	# 1804
	flw		f2, -144(x2)	# 1804
	fsub	f1, f2, f1	# 1804
	addi	x4, x0, 44816	# 1806
	flw		f2, 0(x4)	# 1806
	lw		x4, -140(x2)	# 488
	addi	x4, x4, 4	# 488
	flw		f3, 0(x4)	# 488
	fsub	f2, f2, f3	# 1806
	lw		x4, -136(x2)	# 448
	addi	x4, x4, 4	# 448
	flw		f3, 0(x4)	# 448
	fsqrt	f3, f3	# 1806
	fmul	f2, f2, f3	# 1806
	flw		f3, -32(x2)	# 124
	flw		f4, -132(x2)	# 124
	fle		f4, f3, fle.34330	# 124
	fadd	f5, f0, f4	# 124
	jal		x0, fle_cont.34329	# 124
fle.34330:
	fsub	f5, f0, f4	# 124
fle_cont.34329:
	fsw		f1, -148(x2)	# 125
	fle		f6, f5, fle.34332	# 125
	lui		x4, %hi(l.29457)	# 1809
	ori		x4, x0, %lo(l.29457)	# 1809
	flw		f1, 0(x4)	# 1809
	jal		x0, fle_cont.34331	# 125
fle.34332:
	fdiv	f2, f2, f4	# 1811
	fle		f2, f3, fle.34334	# 124
	jal		x0, fle_cont.34333	# 124
fle.34334:
	fsub	f2, f0, f2	# 124
fle_cont.34333:
	fadd	f1, f0, f2	# 1812
	sw		x1, -152(x2)	# 1812
	addi	x2, x2, -156	# 1812
	jal		x1, atan.2614.17885	# 1812
	addi	x2, x2, 156	# 1812
	lw		x1, -152(x2)	# 1812
	lui		x4, %hi(l.29460)	# 1812
	ori		x4, x0, %lo(l.29460)	# 1812
	flw		f2, 0(x4)	# 1812
	fmul	f1, f1, f2	# 1812
	lui		x4, %hi(l.29462)	# 1812
	ori		x4, x0, %lo(l.29462)	# 1812
	flw		f2, 0(x4)	# 1812
	fdiv	f1, f1, f2	# 1812
fle_cont.34331:
	fsw		f1, -152(x2)	# 1814
	sw		x1, -156(x2)	# 1814
	addi	x2, x2, -160	# 1814
	jal		x1, min_caml_floor	# 1814
	addi	x2, x2, 160	# 1814
	lw		x1, -156(x2)	# 1814
	flw		f2, -152(x2)	# 1814
	fsub	f1, f2, f1	# 1814
	lui		x4, %hi(l.29473)	# 1815
	ori		x4, x0, %lo(l.29473)	# 1815
	flw		f2, 0(x4)	# 1815
	lui		x4, %hi(l.27776)	# 1815
	ori		x4, x0, %lo(l.27776)	# 1815
	flw		f3, 0(x4)	# 1815
	flw		f4, -148(x2)	# 1815
	fsub	f4, f3, f4	# 1815
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1815
	fsub	f1, f3, f1	# 1815
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1815
	flw		f2, -32(x2)	# 122
	fle		f2, f1, fle_cont.34335	# 122
	fadd	f1, f0, f2	# 1816
fle_cont.34335:
	fmul	f1, f28, f1	# 1817
	lui		x4, %hi(l.29480)	# 1817
	ori		x4, x0, %lo(l.29480)	# 1817
	flw		f3, 0(x4)	# 1817
	fdiv	f1, f1, f3	# 1817
	fsw		f1, 0(x8)	# 1817
	jal		x0, beq_cont.34315	# 1780
beq.34320:
	addi	x6, x0, 44812	# 1783
	flw		f1, 0(x6)	# 1783
	lw		x6, 20(x4)	# 473
	addi	x7, x6, 0	# 478
	flw		f2, 0(x7)	# 478
	fsub	f1, f1, f2	# 1783
	addi	x7, x0, 44820	# 1784
	flw		f2, 0(x7)	# 1784
	addi	x6, x6, 8	# 498
	flw		f3, 0(x6)	# 498
	fsub	f2, f2, f3	# 1784
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1785
	fsqrt	f1, f1	# 1785
	fdiv	f1, f1, f25	# 1785
	fsw		f1, -156(x2)	# 1786
	sw		x1, -160(x2)	# 1786
	addi	x2, x2, -164	# 1786
	jal		x1, min_caml_floor	# 1786
	addi	x2, x2, 164	# 1786
	lw		x1, -160(x2)	# 1786
	flw		f2, -156(x2)	# 1786
	fsub	f1, f2, f1	# 1786
	lui		x4, %hi(l.29462)	# 1786
	ori		x4, x0, %lo(l.29462)	# 1786
	flw		f2, 0(x4)	# 1786
	fmul	f1, f1, f2	# 1786
	sw		x1, -160(x2)	# 1787
	addi	x2, x2, -164	# 1787
	jal		x1, cos.2612.17883	# 1787
	addi	x2, x2, 164	# 1787
	lw		x1, -160(x2)	# 1787
	fmul	f1, f1, f1	# 127
	fmul	f3, f1, f28	# 1788
	fsw		f3, 0(x10)	# 1788
	fsub	f1, f30, f1	# 1789
	fmul	f1, f1, f28	# 1789
	fsw		f1, 0(x8)	# 1789
	jal		x0, beq_cont.34315	# 1773
beq.34318:
	addi	x6, x0, 44816	# 1776
	flw		f1, 0(x6)	# 1776
	lui		x6, %hi(l.29498)	# 1776
	ori		x6, x0, %lo(l.29498)	# 1776
	flw		f2, 0(x6)	# 1776
	fmul	f1, f1, f2	# 1776
	sw		x1, -160(x2)	# 1776
	addi	x2, x2, -164	# 1776
	jal		x1, sin.2610.17881	# 1776
	addi	x2, x2, 164	# 1776
	lw		x1, -160(x2)	# 1776
	fmul	f1, f1, f1	# 127
	fmul	f3, f28, f1	# 1777
	fsw		f3, 0(x9)	# 1777
	fsub	f1, f30, f1	# 1778
	fmul	f1, f28, f1	# 1778
	fsw		f1, 0(x10)	# 1778
	jal		x0, beq_cont.34315	# 1755
beq.34316:
	addi	x6, x0, 44812	# 1758
	flw		f1, 0(x6)	# 1758
	lw		x6, 20(x4)	# 473
	addi	x7, x6, 0	# 478
	flw		f2, 0(x7)	# 478
	fsub	f1, f1, f2	# 1758
	fmul	f3, f1, f26	# 1760
	fsw		f26, -160(x2)	# 1760
	sw		x6, -164(x2)	# 1760
	fsw		f1, -168(x2)	# 1760
	fadd	f1, f0, f3	# 1760
	sw		x1, -172(x2)	# 1760
	addi	x2, x2, -176	# 1760
	jal		x1, min_caml_floor	# 1760
	addi	x2, x2, 176	# 1760
	lw		x1, -172(x2)	# 1760
	fmul	f1, f1, f27	# 1760
	flw		f3, -168(x2)	# 1761
	fsub	f1, f3, f1	# 1761
	addi	x4, x0, 44820	# 1763
	flw		f4, 0(x4)	# 1763
	lw		x4, -164(x2)	# 498
	addi	x4, x4, 8	# 498
	flw		f5, 0(x4)	# 498
	fsub	f4, f4, f5	# 1763
	flw		f5, -160(x2)	# 1765
	fmul	f5, f4, f5	# 1765
	fsw		f1, -172(x2)	# 1765
	fsw		f27, -176(x2)	# 1765
	fadd	f1, f0, f5	# 1765
	sw		x1, -180(x2)	# 1765
	addi	x2, x2, -184	# 1765
	jal		x1, min_caml_floor	# 1765
	addi	x2, x2, 184	# 1765
	lw		x1, -180(x2)	# 1765
	flw		f2, -176(x2)	# 1765
	fmul	f1, f1, f2	# 1765
	fsub	f1, f4, f1	# 1766
	flw		f2, -172(x2)	# 125
	fle		f25, f2, fle.34338	# 125
	fle		f25, f1, fle.34340	# 125
	fadd	f1, f0, f28	# 1770
	jal		x0, fle_cont.34337	# 125
fle.34340:
	flw		f1, -32(x2)	# 1770
	jal		x0, fle_cont.34337	# 125
fle.34338:
	fle		f25, f1, fle.34342	# 125
	flw		f1, -32(x2)	# 1771
	jal		x0, fle_cont.34337	# 125
fle.34342:
	fadd	f1, f0, f28	# 1771
fle_cont.34337:
	fsw		f1, 0(x10)	# 1768
beq_cont.34315:
	lw		x4, -44(x2)	# 1975
	lw		x5, -116(x2)	# 1975
	sw		x8, -180(x2)	# 1975
	sw		x10, -184(x2)	# 1975
	sw		x9, -188(x2)	# 1975
	sw		x1, -192(x2)	# 1975
	addi	x2, x2, -196	# 1975
	jal		x1, shadow_check_one_or_matrix.2898.17913	# 1975
	addi	x2, x2, 196	# 1975
	lw		x1, -192(x2)	# 1975
	lw		x5, -44(x2)	# 1975
	beq		x4, x5, beq.34344	# 1975
	jal		x0, fle_cont.34241	# 1975
beq.34344:
	addi	x4, x0, 44828	# 334
	flw		f1, 0(x4)	# 334
	addi	x4, x0, 44572	# 334
	flw		f2, 0(x4)	# 334
	fmul	f1, f1, f2	# 334
	addi	x4, x0, 44832	# 334
	flw		f2, 0(x4)	# 334
	addi	x4, x0, 44576	# 334
	flw		f3, 0(x4)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	addi	x4, x0, 44836	# 334
	flw		f2, 0(x4)	# 334
	addi	x4, x0, 44580	# 334
	flw		f3, 0(x4)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	fsub	f1, f0, f1	# 123
	flw		f2, -32(x2)	# 121
	fle		f1, f2, fle.34346	# 121
	jal		x0, fle_cont.34345	# 121
fle.34346:
	fadd	f1, f0, f2	# 1977
fle_cont.34345:
	flw		f2, -112(x2)	# 1978
	fmul	f1, f2, f1	# 1978
	lw		x4, -128(x2)	# 503
	lw		x4, 28(x4)	# 503
	addi	x4, x4, 0	# 508
	flw		f2, 0(x4)	# 508
	fmul	f1, f1, f2	# 1978
	addi	x4, x0, 44852	# 344
	flw		f2, 0(x4)	# 344
	lw		x5, -188(x2)	# 344
	flw		f3, 0(x5)	# 344
	fmul	f3, f1, f3	# 344
	fadd	f2, f2, f3	# 344
	fsw		f2, 0(x4)	# 344
	addi	x4, x0, 44856	# 345
	flw		f2, 0(x4)	# 345
	lw		x5, -184(x2)	# 345
	flw		f3, 0(x5)	# 345
	fmul	f3, f1, f3	# 345
	fadd	f2, f2, f3	# 345
	fsw		f2, 0(x4)	# 345
	addi	x4, x0, 44860	# 346
	flw		f2, 0(x4)	# 346
	lw		x5, -180(x2)	# 346
	flw		f3, 0(x5)	# 346
	fmul	f1, f1, f3	# 346
	fadd	f1, f2, f1	# 346
	fsw		f1, 0(x4)	# 346
fle_cont.34241:
	lw		x4, -12(x2)	# 1996
	addi	x7, x4, -2	# 1996
	lw		x4, -8(x2)	# 1996
	lw		x5, -4(x2)	# 1996
	lw		x6, 0(x2)	# 1996
	jal		x0, iter_trace_diffuse_rays.2959.17951	# 1996
do_without_neighbors.2981.17956:
	addi	x6, x0, 4	# 2077
	ble		x5, x6, ble.34347	# 2077
	jalr	x0, x1, 0	# 2087
ble.34347:
	lw		x7, 8(x4)	# 619
	mul		x8, x30, x5	# 2080
	add		x7, x7, x8	# 2080
	lw		x7, 0(x7)	# 2080
	ble		x0, x7, ble.34349	# 2080
	jalr	x0, x1, 0	# 2086
ble.34349:
	lw		x7, 12(x4)	# 626
	add		x7, x7, x8	# 2082
	lw		x7, 0(x7)	# 2082
	sw		x4, 0(x2)	# 2082
	sw		x5, -4(x2)	# 2082
	beq		x7, x0, beq_cont.34351	# 2082
	lw		x7, 20(x4)	# 640
	lw		x10, 28(x4)	# 670
	lw		x11, 4(x4)	# 611
	lw		x12, 16(x4)	# 633
	add		x7, x7, x8	# 2044
	lw		x7, 0(x7)	# 2044
	addi	x13, x7, 0	# 301
	flw		f1, 0(x13)	# 301
	addi	x13, x0, 44852	# 301
	fsw		f1, 0(x13)	# 301
	addi	x14, x0, 1	# 6
	addi	x15, x7, 4	# 302
	flw		f1, 0(x15)	# 302
	addi	x15, x0, 44856	# 302
	fsw		f1, 0(x15)	# 302
	addi	x16, x0, 2	# 65
	addi	x7, x7, 8	# 303
	flw		f1, 0(x7)	# 303
	addi	x7, x0, 44860	# 303
	fsw		f1, 0(x7)	# 303
	lw		x17, 24(x4)	# 656
	addi	x17, x17, 0	# 658
	lw		x17, 0(x17)	# 658
	add		x10, x10, x8	# 2047
	lw		x10, 0(x10)	# 2047
	add		x11, x11, x8	# 2048
	lw		x11, 0(x11)	# 2048
	sw		x7, -8(x2)	# 2013
	sw		x15, -12(x2)	# 2013
	sw		x13, -16(x2)	# 2013
	sw		x8, -20(x2)	# 2013
	sw		x12, -24(x2)	# 2013
	sw		x6, -28(x2)	# 2013
	sw		x16, -32(x2)	# 2013
	sw		x10, -36(x2)	# 2013
	sw		x11, -40(x2)	# 2013
	sw		x14, -44(x2)	# 2013
	sw		x17, -48(x2)	# 2013
	beq		x17, x0, beq_cont.34353	# 2013
	addi	x9, x0, 44976	# 2014
	lw		x9, 0(x9)	# 2014
	addi	x18, x11, 0	# 301
	flw		f1, 0(x18)	# 301
	addi	x18, x0, 44908	# 301
	fsw		f1, 0(x18)	# 301
	addi	x18, x11, 4	# 302
	flw		f1, 0(x18)	# 302
	addi	x18, x0, 44912	# 302
	fsw		f1, 0(x18)	# 302
	addi	x18, x11, 8	# 303
	flw		f1, 0(x18)	# 303
	addi	x18, x0, 44916	# 303
	fsw		f1, 0(x18)	# 303
	addi	x18, x0, 44260	# 1357
	lw		x18, 0(x18)	# 1357
	addi	x18, x18, -1	# 1357
	sw		x9, -52(x2)	# 1357
	addi	x5, x18, 0	# 1357
	addi	x4, x11, 0	# 1357
	sw		x1, -56(x2)	# 1357
	addi	x2, x2, -60	# 1357
	jal		x1, setup_startp_constants.2861.17898	# 1357
	addi	x2, x2, 60	# 1357
	lw		x1, -56(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -52(x2)	# 2006
	lw		x5, -36(x2)	# 2006
	lw		x6, -40(x2)	# 2006
	sw		x1, -56(x2)	# 2006
	addi	x2, x2, -60	# 2006
	jal		x1, iter_trace_diffuse_rays.2959.17951	# 2006
	addi	x2, x2, 60	# 2006
	lw		x1, -56(x2)	# 2006
beq_cont.34353:
	lw		x4, -44(x2)	# 2017
	lw		x5, -48(x2)	# 2017
	beq		x5, x4, beq_cont.34355	# 2017
	addi	x4, x0, 44980	# 2018
	lw		x4, 0(x4)	# 2018
	lw		x6, -40(x2)	# 301
	addi	x7, x6, 0	# 301
	flw		f1, 0(x7)	# 301
	addi	x7, x0, 44908	# 301
	fsw		f1, 0(x7)	# 301
	addi	x7, x6, 4	# 302
	flw		f1, 0(x7)	# 302
	addi	x7, x0, 44912	# 302
	fsw		f1, 0(x7)	# 302
	addi	x7, x6, 8	# 303
	flw		f1, 0(x7)	# 303
	addi	x7, x0, 44916	# 303
	fsw		f1, 0(x7)	# 303
	addi	x7, x0, 44260	# 1357
	lw		x7, 0(x7)	# 1357
	addi	x7, x7, -1	# 1357
	sw		x4, -56(x2)	# 1357
	addi	x5, x7, 0	# 1357
	addi	x4, x6, 0	# 1357
	sw		x1, -60(x2)	# 1357
	addi	x2, x2, -64	# 1357
	jal		x1, setup_startp_constants.2861.17898	# 1357
	addi	x2, x2, 64	# 1357
	lw		x1, -60(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -56(x2)	# 2006
	lw		x5, -36(x2)	# 2006
	lw		x6, -40(x2)	# 2006
	sw		x1, -60(x2)	# 2006
	addi	x2, x2, -64	# 2006
	jal		x1, iter_trace_diffuse_rays.2959.17951	# 2006
	addi	x2, x2, 64	# 2006
	lw		x1, -60(x2)	# 2006
beq_cont.34355:
	lw		x4, -32(x2)	# 2021
	lw		x5, -48(x2)	# 2021
	beq		x5, x4, beq_cont.34357	# 2021
	addi	x4, x0, 44984	# 2022
	lw		x4, 0(x4)	# 2022
	lw		x6, -40(x2)	# 301
	addi	x7, x6, 0	# 301
	flw		f1, 0(x7)	# 301
	addi	x7, x0, 44908	# 301
	fsw		f1, 0(x7)	# 301
	addi	x7, x6, 4	# 302
	flw		f1, 0(x7)	# 302
	addi	x7, x0, 44912	# 302
	fsw		f1, 0(x7)	# 302
	addi	x7, x6, 8	# 303
	flw		f1, 0(x7)	# 303
	addi	x7, x0, 44916	# 303
	fsw		f1, 0(x7)	# 303
	addi	x7, x0, 44260	# 1357
	lw		x7, 0(x7)	# 1357
	addi	x7, x7, -1	# 1357
	sw		x4, -60(x2)	# 1357
	addi	x5, x7, 0	# 1357
	addi	x4, x6, 0	# 1357
	sw		x1, -64(x2)	# 1357
	addi	x2, x2, -68	# 1357
	jal		x1, setup_startp_constants.2861.17898	# 1357
	addi	x2, x2, 68	# 1357
	lw		x1, -64(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -60(x2)	# 2006
	lw		x5, -36(x2)	# 2006
	lw		x6, -40(x2)	# 2006
	sw		x1, -64(x2)	# 2006
	addi	x2, x2, -68	# 2006
	jal		x1, iter_trace_diffuse_rays.2959.17951	# 2006
	addi	x2, x2, 68	# 2006
	lw		x1, -64(x2)	# 2006
beq_cont.34357:
	addi	x4, x0, 3	# 16
	lw		x5, -48(x2)	# 2025
	beq		x5, x4, beq_cont.34359	# 2025
	addi	x4, x0, 44988	# 2026
	lw		x4, 0(x4)	# 2026
	lw		x6, -40(x2)	# 301
	addi	x7, x6, 0	# 301
	flw		f1, 0(x7)	# 301
	addi	x7, x0, 44908	# 301
	fsw		f1, 0(x7)	# 301
	addi	x7, x6, 4	# 302
	flw		f1, 0(x7)	# 302
	addi	x7, x0, 44912	# 302
	fsw		f1, 0(x7)	# 302
	addi	x7, x6, 8	# 303
	flw		f1, 0(x7)	# 303
	addi	x7, x0, 44916	# 303
	fsw		f1, 0(x7)	# 303
	addi	x7, x0, 44260	# 1357
	lw		x7, 0(x7)	# 1357
	addi	x7, x7, -1	# 1357
	sw		x4, -64(x2)	# 1357
	addi	x5, x7, 0	# 1357
	addi	x4, x6, 0	# 1357
	sw		x1, -68(x2)	# 1357
	addi	x2, x2, -72	# 1357
	jal		x1, setup_startp_constants.2861.17898	# 1357
	addi	x2, x2, 72	# 1357
	lw		x1, -68(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -64(x2)	# 2006
	lw		x5, -36(x2)	# 2006
	lw		x6, -40(x2)	# 2006
	sw		x1, -68(x2)	# 2006
	addi	x2, x2, -72	# 2006
	jal		x1, iter_trace_diffuse_rays.2959.17951	# 2006
	addi	x2, x2, 72	# 2006
	lw		x1, -68(x2)	# 2006
beq_cont.34359:
	lw		x4, -28(x2)	# 2029
	lw		x5, -48(x2)	# 2029
	beq		x5, x4, beq_cont.34361	# 2029
	addi	x4, x0, 44992	# 2030
	lw		x4, 0(x4)	# 2030
	lw		x5, -40(x2)	# 301
	addi	x6, x5, 0	# 301
	flw		f1, 0(x6)	# 301
	addi	x6, x0, 44908	# 301
	fsw		f1, 0(x6)	# 301
	addi	x6, x5, 4	# 302
	flw		f1, 0(x6)	# 302
	addi	x6, x0, 44912	# 302
	fsw		f1, 0(x6)	# 302
	addi	x6, x5, 8	# 303
	flw		f1, 0(x6)	# 303
	addi	x6, x0, 44916	# 303
	fsw		f1, 0(x6)	# 303
	addi	x6, x0, 44260	# 1357
	lw		x6, 0(x6)	# 1357
	addi	x6, x6, -1	# 1357
	sw		x4, -68(x2)	# 1357
	addi	x4, x5, 0	# 1357
	addi	x5, x6, 0	# 1357
	sw		x1, -72(x2)	# 1357
	addi	x2, x2, -76	# 1357
	jal		x1, setup_startp_constants.2861.17898	# 1357
	addi	x2, x2, 76	# 1357
	lw		x1, -72(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -68(x2)	# 2006
	lw		x5, -36(x2)	# 2006
	lw		x6, -40(x2)	# 2006
	sw		x1, -72(x2)	# 2006
	addi	x2, x2, -76	# 2006
	jal		x1, iter_trace_diffuse_rays.2959.17951	# 2006
	addi	x2, x2, 76	# 2006
	lw		x1, -72(x2)	# 2006
beq_cont.34361:
	lw		x4, -24(x2)	# 2049
	lw		x5, -20(x2)	# 2049
	add		x4, x4, x5	# 2049
	lw		x4, 0(x4)	# 2049
	addi	x5, x0, 44864	# 374
	flw		f1, 0(x5)	# 374
	addi	x6, x4, 0	# 374
	flw		f2, 0(x6)	# 374
	lw		x6, -16(x2)	# 374
	flw		f3, 0(x6)	# 374
	fmul	f2, f2, f3	# 374
	fadd	f1, f1, f2	# 374
	fsw		f1, 0(x5)	# 374
	addi	x5, x0, 44868	# 375
	flw		f1, 0(x5)	# 375
	addi	x6, x4, 4	# 375
	flw		f2, 0(x6)	# 375
	lw		x6, -12(x2)	# 375
	flw		f3, 0(x6)	# 375
	fmul	f2, f2, f3	# 375
	fadd	f1, f1, f2	# 375
	fsw		f1, 0(x5)	# 375
	addi	x5, x0, 44872	# 376
	flw		f1, 0(x5)	# 376
	addi	x4, x4, 8	# 376
	flw		f2, 0(x4)	# 376
	lw		x4, -8(x2)	# 376
	flw		f3, 0(x4)	# 376
	fmul	f2, f2, f3	# 376
	fadd	f1, f1, f2	# 376
	fsw		f1, 0(x5)	# 376
beq_cont.34351:
	lw		x4, -4(x2)	# 2085
	addi	x5, x4, 1	# 2085
	lw		x4, 0(x2)	# 2085
	jal		x0, do_without_neighbors.2981.17956	# 2085
try_exploit_neighbors.2997.17959:
	mul		x10, x30, x4	# 2129
	add		x11, x7, x10	# 2129
	lw		x11, 0(x11)	# 2129
	addi	x12, x0, 4	# 2130
	ble		x9, x12, ble.34363	# 2130
	jalr	x0, x1, 0	# 2149
ble.34363:
	lw		x12, 8(x11)	# 619
	mul		x13, x30, x9	# 2105
	add		x12, x12, x13	# 2105
	lw		x12, 0(x12)	# 2105
	ble		x0, x12, ble.34365	# 2133
	jalr	x0, x1, 0	# 2148
ble.34365:
	add		x15, x6, x10	# 2113
	lw		x15, 0(x15)	# 2113
	lw		x16, 8(x15)	# 619
	add		x16, x16, x13	# 2105
	lw		x16, 0(x16)	# 2105
	beq		x16, x12, beq.34368	# 2113
	addi	x12, x0, 0	# 2121
	jal		x0, beq_cont.34367	# 2113
beq.34368:
	add		x16, x8, x10	# 2114
	lw		x16, 0(x16)	# 2114
	lw		x16, 8(x16)	# 619
	add		x16, x16, x13	# 2105
	lw		x16, 0(x16)	# 2105
	beq		x16, x12, beq.34370	# 2114
	addi	x12, x0, 0	# 2120
	jal		x0, beq_cont.34367	# 2114
beq.34370:
	addi	x16, x4, -1	# 2115
	mul		x16, x30, x16	# 2115
	add		x16, x7, x16	# 2115
	lw		x16, 0(x16)	# 2115
	lw		x16, 8(x16)	# 619
	add		x16, x16, x13	# 2105
	lw		x16, 0(x16)	# 2105
	beq		x16, x12, beq.34372	# 2115
	addi	x12, x0, 0	# 2119
	jal		x0, beq_cont.34367	# 2115
beq.34372:
	addi	x16, x4, 1	# 2116
	mul		x16, x30, x16	# 2116
	add		x16, x7, x16	# 2116
	lw		x16, 0(x16)	# 2116
	lw		x16, 8(x16)	# 619
	add		x16, x16, x13	# 2105
	lw		x16, 0(x16)	# 2105
	beq		x16, x12, beq.34374	# 2116
	addi	x12, x0, 0	# 2118
	jal		x0, beq_cont.34367	# 2116
beq.34374:
	addi	x12, x0, 1	# 2117
beq_cont.34367:
	beq		x12, x0, beq.34375	# 2135
	lw		x12, 12(x11)	# 626
	add		x12, x12, x13	# 2139
	lw		x12, 0(x12)	# 2139
	beq		x12, x0, beq_cont.34376	# 2139
	lw		x12, 20(x15)	# 640
	addi	x14, x4, -1	# 2059
	mul		x14, x30, x14	# 2059
	add		x14, x7, x14	# 2059
	lw		x14, 0(x14)	# 2059
	lw		x14, 20(x14)	# 640
	lw		x15, 20(x11)	# 640
	addi	x16, x4, 1	# 2061
	mul		x16, x30, x16	# 2061
	add		x16, x7, x16	# 2061
	lw		x16, 0(x16)	# 2061
	lw		x16, 20(x16)	# 640
	add		x10, x8, x10	# 2062
	lw		x10, 0(x10)	# 2062
	lw		x10, 20(x10)	# 640
	add		x12, x12, x13	# 2064
	lw		x12, 0(x12)	# 2064
	addi	x17, x12, 0	# 301
	flw		f1, 0(x17)	# 301
	addi	x17, x0, 44852	# 301
	fsw		f1, 0(x17)	# 301
	addi	x18, x12, 4	# 302
	flw		f1, 0(x18)	# 302
	addi	x18, x0, 44856	# 302
	fsw		f1, 0(x18)	# 302
	addi	x12, x12, 8	# 303
	flw		f1, 0(x12)	# 303
	addi	x12, x0, 44860	# 303
	fsw		f1, 0(x12)	# 303
	add		x14, x14, x13	# 2065
	lw		x14, 0(x14)	# 2065
	flw		f1, 0(x17)	# 351
	addi	x19, x14, 0	# 351
	flw		f2, 0(x19)	# 351
	fadd	f1, f1, f2	# 351
	fsw		f1, 0(x17)	# 351
	flw		f1, 0(x18)	# 352
	addi	x19, x14, 4	# 352
	flw		f2, 0(x19)	# 352
	fadd	f1, f1, f2	# 352
	fsw		f1, 0(x18)	# 352
	flw		f1, 0(x12)	# 353
	addi	x14, x14, 8	# 353
	flw		f2, 0(x14)	# 353
	fadd	f1, f1, f2	# 353
	fsw		f1, 0(x12)	# 353
	add		x14, x15, x13	# 2066
	lw		x14, 0(x14)	# 2066
	flw		f1, 0(x17)	# 351
	addi	x15, x14, 0	# 351
	flw		f2, 0(x15)	# 351
	fadd	f1, f1, f2	# 351
	fsw		f1, 0(x17)	# 351
	flw		f1, 0(x18)	# 352
	addi	x15, x14, 4	# 352
	flw		f2, 0(x15)	# 352
	fadd	f1, f1, f2	# 352
	fsw		f1, 0(x18)	# 352
	flw		f1, 0(x12)	# 353
	addi	x14, x14, 8	# 353
	flw		f2, 0(x14)	# 353
	fadd	f1, f1, f2	# 353
	fsw		f1, 0(x12)	# 353
	add		x14, x16, x13	# 2067
	lw		x14, 0(x14)	# 2067
	flw		f1, 0(x17)	# 351
	addi	x15, x14, 0	# 351
	flw		f2, 0(x15)	# 351
	fadd	f1, f1, f2	# 351
	fsw		f1, 0(x17)	# 351
	flw		f1, 0(x18)	# 352
	addi	x15, x14, 4	# 352
	flw		f2, 0(x15)	# 352
	fadd	f1, f1, f2	# 352
	fsw		f1, 0(x18)	# 352
	flw		f1, 0(x12)	# 353
	addi	x14, x14, 8	# 353
	flw		f2, 0(x14)	# 353
	fadd	f1, f1, f2	# 353
	fsw		f1, 0(x12)	# 353
	add		x10, x10, x13	# 2068
	lw		x10, 0(x10)	# 2068
	flw		f1, 0(x17)	# 351
	addi	x14, x10, 0	# 351
	flw		f2, 0(x14)	# 351
	fadd	f1, f1, f2	# 351
	fsw		f1, 0(x17)	# 351
	flw		f1, 0(x18)	# 352
	addi	x14, x10, 4	# 352
	flw		f2, 0(x14)	# 352
	fadd	f1, f1, f2	# 352
	fsw		f1, 0(x18)	# 352
	flw		f1, 0(x12)	# 353
	addi	x10, x10, 8	# 353
	flw		f2, 0(x10)	# 353
	fadd	f1, f1, f2	# 353
	fsw		f1, 0(x12)	# 353
	lw		x10, 16(x11)	# 633
	add		x10, x10, x13	# 2071
	lw		x10, 0(x10)	# 2071
	addi	x11, x0, 44864	# 374
	flw		f1, 0(x11)	# 374
	addi	x13, x10, 0	# 374
	flw		f2, 0(x13)	# 374
	flw		f3, 0(x17)	# 374
	fmul	f2, f2, f3	# 374
	fadd	f1, f1, f2	# 374
	fsw		f1, 0(x11)	# 374
	addi	x11, x0, 44868	# 375
	flw		f1, 0(x11)	# 375
	addi	x13, x10, 4	# 375
	flw		f2, 0(x13)	# 375
	flw		f3, 0(x18)	# 375
	fmul	f2, f2, f3	# 375
	fadd	f1, f1, f2	# 375
	fsw		f1, 0(x11)	# 375
	addi	x11, x0, 44872	# 376
	flw		f1, 0(x11)	# 376
	addi	x10, x10, 8	# 376
	flw		f2, 0(x10)	# 376
	flw		f3, 0(x12)	# 376
	fmul	f2, f2, f3	# 376
	fadd	f1, f1, f2	# 376
	fsw		f1, 0(x11)	# 376
beq_cont.34376:
	addi	x9, x9, 1	# 2144
	jal		x0, try_exploit_neighbors.2997.17959	# 2144
beq.34375:
	addi	x5, x9, 0	# 2147
	addi	x4, x11, 0	# 2147
	jal		x0, do_without_neighbors.2981.17956	# 2147
pretrace_diffuse_rays.3012.17966:
	addi	x6, x0, 4	# 2205
	ble		x5, x6, ble.34378	# 2205
	jalr	x0, x1, 0	# 2229
ble.34378:
	lw		x6, 8(x4)	# 619
	mul		x7, x30, x5	# 2105
	add		x6, x6, x7	# 2105
	lw		x6, 0(x6)	# 2105
	ble		x0, x6, ble.34380	# 2209
	jalr	x0, x1, 0	# 2228
ble.34380:
	lw		x6, 12(x4)	# 626
	add		x6, x6, x7	# 2212
	lw		x6, 0(x6)	# 2212
	sw		x5, 0(x2)	# 2212
	beq		x6, x0, beq_cont.34382	# 2212
	lw		x6, 24(x4)	# 656
	addi	x6, x6, 0	# 658
	lw		x6, 0(x6)	# 658
	addi	x8, x0, 44852	# 289
	fsw		f0, 0(x8)	# 289
	addi	x9, x0, 44856	# 290
	fsw		f0, 0(x9)	# 290
	addi	x10, x0, 44860	# 291
	fsw		f0, 0(x10)	# 291
	lw		x11, 28(x4)	# 670
	lw		x12, 4(x4)	# 611
	mul		x6, x30, x6	# 2221
	addi	x6, x6, 44976	# 2221
	lw		x6, 0(x6)	# 2221
	add		x11, x11, x7	# 2222
	lw		x11, 0(x11)	# 2222
	add		x12, x12, x7	# 2223
	lw		x12, 0(x12)	# 2223
	addi	x13, x12, 0	# 301
	flw		f1, 0(x13)	# 301
	addi	x13, x0, 44908	# 301
	fsw		f1, 0(x13)	# 301
	addi	x13, x12, 4	# 302
	flw		f1, 0(x13)	# 302
	addi	x13, x0, 44912	# 302
	fsw		f1, 0(x13)	# 302
	addi	x13, x12, 8	# 303
	flw		f1, 0(x13)	# 303
	addi	x13, x0, 44916	# 303
	fsw		f1, 0(x13)	# 303
	addi	x13, x0, 44260	# 1357
	lw		x13, 0(x13)	# 1357
	addi	x13, x13, -1	# 1357
	sw		x10, -4(x2)	# 1357
	sw		x9, -8(x2)	# 1357
	sw		x8, -12(x2)	# 1357
	sw		x7, -16(x2)	# 1357
	sw		x4, -20(x2)	# 1357
	sw		x12, -24(x2)	# 1357
	sw		x11, -28(x2)	# 1357
	sw		x6, -32(x2)	# 1357
	addi	x5, x13, 0	# 1357
	addi	x4, x12, 0	# 1357
	sw		x1, -36(x2)	# 1357
	addi	x2, x2, -40	# 1357
	jal		x1, setup_startp_constants.2861.17898	# 1357
	addi	x2, x2, 40	# 1357
	lw		x1, -36(x2)	# 1357
	addi	x7, x0, 118	# 2006
	lw		x4, -32(x2)	# 2006
	lw		x5, -28(x2)	# 2006
	lw		x6, -24(x2)	# 2006
	sw		x1, -36(x2)	# 2006
	addi	x2, x2, -40	# 2006
	jal		x1, iter_trace_diffuse_rays.2959.17951	# 2006
	addi	x2, x2, 40	# 2006
	lw		x1, -36(x2)	# 2006
	lw		x4, -20(x2)	# 640
	lw		x5, 20(x4)	# 640
	lw		x6, -16(x2)	# 2225
	add		x5, x5, x6	# 2225
	lw		x5, 0(x5)	# 2225
	lw		x6, -12(x2)	# 301
	flw		f1, 0(x6)	# 301
	addi	x6, x5, 0	# 301
	fsw		f1, 0(x6)	# 301
	lw		x6, -8(x2)	# 302
	flw		f1, 0(x6)	# 302
	addi	x6, x5, 4	# 302
	fsw		f1, 0(x6)	# 302
	lw		x6, -4(x2)	# 303
	flw		f1, 0(x6)	# 303
	addi	x5, x5, 8	# 303
	fsw		f1, 0(x5)	# 303
beq_cont.34382:
	lw		x5, 0(x2)	# 2227
	addi	x5, x5, 1	# 2227
	jal		x0, pretrace_diffuse_rays.3012.17966	# 2227
pretrace_pixels.3015.17969:
	addi	x7, x0, 0	# 6
	ble		x0, x5, ble.34384	# 2235
	jalr	x0, x1, 0	# 2255
ble.34384:
	addi	x8, x0, 44892	# 2237
	flw		f4, 0(x8)	# 2237
	addi	x8, x0, 44884	# 2237
	lw		x8, 0(x8)	# 2237
	sub		x8, x5, x8	# 2237
	sw		x6, 0(x2)	# 2237
	sw		x4, -4(x2)	# 2237
	sw		x5, -8(x2)	# 2237
	fsw		f2, -12(x2)	# 2237
	fsw		f1, -16(x2)	# 2237
	addi	x4, x8, 0	# 2237
	sw		x1, -20(x2)	# 2237
	addi	x2, x2, -24	# 2237
	jal		x1, min_caml_float_of_int	# 2237
	addi	x2, x2, 24	# 2237
	lw		x1, -20(x2)	# 2237
	fmul	f1, f4, f1	# 2237
	addi	x4, x0, 44920	# 2238
	flw		f2, 0(x4)	# 2238
	fmul	f2, f1, f2	# 2238
	flw		f4, -16(x2)	# 2238
	fadd	f2, f2, f4	# 2238
	addi	x5, x0, 44956	# 90
	fsw		f2, 0(x5)	# 2238
	addi	x4, x0, 44924	# 2239
	flw		f2, 0(x4)	# 2239
	fmul	f2, f1, f2	# 2239
	flw		f5, -12(x2)	# 2239
	fadd	f2, f2, f5	# 2239
	addi	x4, x0, 44960	# 2239
	fsw		f2, 0(x4)	# 2239
	addi	x6, x0, 44928	# 2240
	flw		f2, 0(x6)	# 2240
	fmul	f1, f1, f2	# 2240
	fadd	f1, f1, f3	# 2240
	addi	x6, x0, 44964	# 2240
	fsw		f1, 0(x6)	# 2240
	flw		f1, 0(x5)	# 325
	fmul	f2, f1, f1	# 127
	flw		f6, 0(x4)	# 325
	fmul	f7, f6, f6	# 127
	fadd	f2, f2, f7	# 325
	flw		f7, 0(x6)	# 325
	fmul	f8, f7, f7	# 127
	fadd	f2, f2, f8	# 325
	fsqrt	f2, f2	# 325
	fadd	f8, f0, f0	# 11
	feq		f2, f0, feq.34387	# 120
	fdiv	f2, f30, f2	# 326
	jal		x0, feq_cont.34386	# 120
feq.34387:
	fadd	f2, f0, f30	# 326
feq_cont.34386:
	fmul	f1, f1, f2	# 327
	fsw		f1, 0(x5)	# 327
	fmul	f1, f6, f2	# 328
	fsw		f1, 0(x4)	# 328
	fmul	f1, f7, f2	# 329
	fsw		f1, 0(x6)	# 329
	addi	x4, x0, 44864	# 289
	fsw		f0, 0(x4)	# 289
	addi	x6, x0, 44868	# 290
	fsw		f0, 0(x6)	# 290
	addi	x8, x0, 44872	# 291
	fsw		f0, 0(x8)	# 291
	addi	x9, x0, 44560	# 301
	flw		f1, 0(x9)	# 301
	addi	x9, x0, 44896	# 301
	fsw		f1, 0(x9)	# 301
	addi	x9, x0, 44564	# 302
	flw		f1, 0(x9)	# 302
	addi	x9, x0, 44900	# 302
	fsw		f1, 0(x9)	# 302
	addi	x9, x0, 44568	# 303
	flw		f1, 0(x9)	# 303
	addi	x9, x0, 44904	# 303
	fsw		f1, 0(x9)	# 303
	fadd	f1, f0, f30	# 2246
	lw		x9, -8(x2)	# 2246
	mul		x10, x30, x9	# 2246
	lw		x11, -4(x2)	# 2246
	add		x10, x11, x10	# 2246
	lw		x10, 0(x10)	# 2246
	fsw		f3, -20(x2)	# 2246
	sw		x0, -24(x2)	# 2246
	sw		x8, -28(x2)	# 2246
	sw		x6, -32(x2)	# 2246
	sw		x4, -36(x2)	# 2246
	sw		x10, -40(x2)	# 2246
	addi	x6, x10, 0	# 2246
	addi	x4, x0, 0	# 2246
	fadd	f2, f0, f0	# 2246
	sw		x1, -44(x2)	# 2246
	addi	x2, x2, -48	# 2246
	jal		x1, trace_ray.2950.17945	# 2246
	addi	x2, x2, 48	# 2246
	lw		x1, -44(x2)	# 2246
	lw		x4, -40(x2)	# 604
	lw		x5, 0(x4)	# 604
	lw		x6, -36(x2)	# 301
	flw		f1, 0(x6)	# 301
	addi	x6, x5, 0	# 301
	fsw		f1, 0(x6)	# 301
	lw		x6, -32(x2)	# 302
	flw		f1, 0(x6)	# 302
	addi	x6, x5, 4	# 302
	fsw		f1, 0(x6)	# 302
	lw		x6, -28(x2)	# 303
	flw		f1, 0(x6)	# 303
	addi	x5, x5, 8	# 303
	fsw		f1, 0(x5)	# 303
	lw		x5, 24(x4)	# 663
	addi	x5, x5, 0	# 665
	lw		x6, 0(x2)	# 665
	sw		x6, 0(x5)	# 665
	lw		x5, -24(x2)	# 2251
	sw		x1, -44(x2)	# 2251
	addi	x2, x2, -48	# 2251
	jal		x1, pretrace_diffuse_rays.3012.17966	# 2251
	addi	x2, x2, 48	# 2251
	lw		x1, -44(x2)	# 2251
	lw		x4, -8(x2)	# 2253
	addi	x5, x4, -1	# 2253
	lw		x4, 0(x2)	# 266
	addi	x4, x4, 1	# 266
	addi	x6, x0, 5	# 98
	ble		x6, x4, ble.34389	# 267
	addi	x6, x4, 0	# 267
	jal		x0, ble_cont.34388	# 267
ble.34389:
	addi	x6, x4, -5	# 267
ble_cont.34388:
	lw		x4, -4(x2)	# 2253
	flw		f1, -16(x2)	# 2253
	flw		f2, -12(x2)	# 2253
	flw		f3, -20(x2)	# 2253
	jal		x0, pretrace_pixels.3015.17969	# 2253
scan_pixel.3026.17976:
	addi	x10, x0, 0	# 6
	addi	x11, x0, 44876	# 2276
	lw		x11, 0(x11)	# 2276
	ble		x11, x4, ble.34390	# 2276
	mul		x12, x30, x4	# 2279
	add		x12, x7, x12	# 2279
	lw		x12, 0(x12)	# 2279
	lw		x13, 0(x12)	# 604
	addi	x14, x13, 0	# 301
	flw		f1, 0(x14)	# 301
	addi	x14, x0, 44864	# 301
	fsw		f1, 0(x14)	# 301
	addi	x15, x13, 4	# 302
	flw		f1, 0(x15)	# 302
	addi	x15, x0, 44868	# 302
	fsw		f1, 0(x15)	# 302
	addi	x13, x13, 8	# 303
	flw		f1, 0(x13)	# 303
	addi	x13, x0, 44872	# 303
	fsw		f1, 0(x13)	# 303
	addi	x16, x0, 44880	# 2092
	lw		x16, 0(x16)	# 2092
	addi	x17, x5, 1	# 2092
	ble		x16, x17, ble.34392	# 2092
	ble		x5, x0, ble.34394	# 2093
	addi	x16, x4, 1	# 2094
	ble		x11, x16, ble.34396	# 2094
	ble		x4, x0, ble.34398	# 2095
	addi	x11, x0, 1	# 2096
	jal		x0, ble_cont.34391	# 2095
ble.34398:
	addi	x11, x0, 0	# 2097
	jal		x0, ble_cont.34391	# 2094
ble.34396:
	addi	x11, x0, 0	# 2098
	jal		x0, ble_cont.34391	# 2093
ble.34394:
	addi	x11, x0, 0	# 2099
	jal		x0, ble_cont.34391	# 2092
ble.34392:
	addi	x11, x0, 0	# 2100
ble_cont.34391:
	sw		x8, 0(x2)	# 2282
	sw		x7, -4(x2)	# 2282
	sw		x6, -8(x2)	# 2282
	sw		x5, -12(x2)	# 2282
	sw		x4, -16(x2)	# 2282
	sw		x13, -20(x2)	# 2282
	sw		x15, -24(x2)	# 2282
	sw		x0, -28(x2)	# 2282
	sw		x14, -32(x2)	# 2282
	sw		x9, -36(x2)	# 2282
	beq		x11, x0, beq.34400	# 2282
	addi	x9, x0, 0	# 2283
	sw		x1, -40(x2)	# 2283
	addi	x2, x2, -44	# 2283
	jal		x1, try_exploit_neighbors.2997.17959	# 2283
	addi	x2, x2, 44	# 2283
	lw		x1, -40(x2)	# 2283
	jal		x0, beq_cont.34399	# 2282
beq.34400:
	addi	x5, x0, 0	# 2285
	addi	x4, x12, 0	# 2285
	sw		x1, -40(x2)	# 2285
	addi	x2, x2, -44	# 2285
	jal		x1, do_without_neighbors.2981.17956	# 2285
	addi	x2, x2, 44	# 2285
	lw		x1, -40(x2)	# 2285
beq_cont.34399:
	addi	x4, x0, 3	# 16
	lw		x5, -36(x2)	# 2182
	beq		x5, x4, beq.34402	# 2182
	lw		x4, -32(x2)	# 2190
	flw		f1, 0(x4)	# 2190
	sw		x1, -40(x2)	# 2176
	addi	x2, x2, -44	# 2176
	jal		x1, min_caml_int_of_float	# 2176
	addi	x2, x2, 44	# 2176
	lw		x1, -40(x2)	# 2176
	addi	x5, x0, 255	# 2177
	ble		x4, x5, ble.34404	# 2177
	addi	x4, x0, 255	# 2177
	jal		x0, ble_cont.34403	# 2177
ble.34404:
	lw		x6, -28(x2)	# 2177
	ble		x6, x4, ble_cont.34403	# 2177
	addi	x4, x0, 0	# 2177
ble_cont.34403:
	sw		x1, -40(x2)	# 2178
	addi	x2, x2, -44	# 2178
	jal		x1, min_caml_print_char	# 2178
	addi	x2, x2, 44	# 2178
	lw		x1, -40(x2)	# 2178
	lw		x4, -24(x2)	# 2191
	flw		f1, 0(x4)	# 2191
	sw		x5, -40(x2)	# 2176
	sw		x1, -44(x2)	# 2176
	addi	x2, x2, -48	# 2176
	jal		x1, min_caml_int_of_float	# 2176
	addi	x2, x2, 48	# 2176
	lw		x1, -44(x2)	# 2176
	lw		x5, -40(x2)	# 2177
	ble		x4, x5, ble.34408	# 2177
	addi	x4, x0, 255	# 2177
	jal		x0, ble_cont.34407	# 2177
ble.34408:
	lw		x6, -28(x2)	# 2177
	ble		x6, x4, ble_cont.34407	# 2177
	addi	x4, x0, 0	# 2177
ble_cont.34407:
	sw		x1, -44(x2)	# 2178
	addi	x2, x2, -48	# 2178
	jal		x1, min_caml_print_char	# 2178
	addi	x2, x2, 48	# 2178
	lw		x1, -44(x2)	# 2178
	lw		x4, -20(x2)	# 2192
	flw		f1, 0(x4)	# 2192
	sw		x1, -44(x2)	# 2176
	addi	x2, x2, -48	# 2176
	jal		x1, min_caml_int_of_float	# 2176
	addi	x2, x2, 48	# 2176
	lw		x1, -44(x2)	# 2176
	lw		x5, -40(x2)	# 2177
	ble		x4, x5, ble.34412	# 2177
	addi	x4, x0, 255	# 2177
	jal		x0, ble_cont.34411	# 2177
ble.34412:
	lw		x5, -28(x2)	# 2177
	ble		x5, x4, ble_cont.34411	# 2177
	addi	x4, x0, 0	# 2177
ble_cont.34411:
	sw		x1, -44(x2)	# 2178
	addi	x2, x2, -48	# 2178
	jal		x1, min_caml_print_char	# 2178
	addi	x2, x2, 48	# 2178
	lw		x1, -44(x2)	# 2178
	jal		x0, beq_cont.34401	# 2182
beq.34402:
	lw		x4, -32(x2)	# 2183
	flw		f1, 0(x4)	# 2183
	sw		x1, -44(x2)	# 2170
	addi	x2, x2, -48	# 2170
	jal		x1, min_caml_int_of_float	# 2170
	addi	x2, x2, 48	# 2170
	lw		x1, -44(x2)	# 2170
	addi	x5, x0, 255	# 2171
	ble		x4, x5, ble.34416	# 2171
	addi	x4, x0, 255	# 2171
	jal		x0, ble_cont.34415	# 2171
ble.34416:
	lw		x6, -28(x2)	# 2171
	ble		x6, x4, ble_cont.34415	# 2171
	addi	x4, x0, 0	# 2171
ble_cont.34415:
	sw		x1, -44(x2)	# 2172
	addi	x2, x2, -48	# 2172
	jal		x1, min_caml_print_int	# 2172
	addi	x2, x2, 48	# 2172
	lw		x1, -44(x2)	# 2172
	addi	x4, x0, 32	# 2184
	sw		x4, -44(x2)	# 2184
	sw		x1, -48(x2)	# 2184
	addi	x2, x2, -52	# 2184
	jal		x1, min_caml_print_char	# 2184
	addi	x2, x2, 52	# 2184
	lw		x1, -48(x2)	# 2184
	lw		x4, -24(x2)	# 2185
	flw		f1, 0(x4)	# 2185
	sw		x5, -48(x2)	# 2170
	sw		x1, -52(x2)	# 2170
	addi	x2, x2, -56	# 2170
	jal		x1, min_caml_int_of_float	# 2170
	addi	x2, x2, 56	# 2170
	lw		x1, -52(x2)	# 2170
	lw		x5, -48(x2)	# 2171
	ble		x4, x5, ble.34420	# 2171
	addi	x4, x0, 255	# 2171
	jal		x0, ble_cont.34419	# 2171
ble.34420:
	lw		x6, -28(x2)	# 2171
	ble		x6, x4, ble_cont.34419	# 2171
	addi	x4, x0, 0	# 2171
ble_cont.34419:
	sw		x1, -52(x2)	# 2172
	addi	x2, x2, -56	# 2172
	jal		x1, min_caml_print_int	# 2172
	addi	x2, x2, 56	# 2172
	lw		x1, -52(x2)	# 2172
	lw		x4, -44(x2)	# 2186
	sw		x1, -52(x2)	# 2186
	addi	x2, x2, -56	# 2186
	jal		x1, min_caml_print_char	# 2186
	addi	x2, x2, 56	# 2186
	lw		x1, -52(x2)	# 2186
	lw		x4, -20(x2)	# 2187
	flw		f1, 0(x4)	# 2187
	sw		x1, -52(x2)	# 2170
	addi	x2, x2, -56	# 2170
	jal		x1, min_caml_int_of_float	# 2170
	addi	x2, x2, 56	# 2170
	lw		x1, -52(x2)	# 2170
	lw		x5, -48(x2)	# 2171
	ble		x4, x5, ble.34424	# 2171
	addi	x4, x0, 255	# 2171
	jal		x0, ble_cont.34423	# 2171
ble.34424:
	lw		x5, -28(x2)	# 2171
	ble		x5, x4, ble_cont.34423	# 2171
	addi	x4, x0, 0	# 2171
ble_cont.34423:
	sw		x1, -52(x2)	# 2172
	addi	x2, x2, -56	# 2172
	jal		x1, min_caml_print_int	# 2172
	addi	x2, x2, 56	# 2172
	lw		x1, -52(x2)	# 2172
	addi	x4, x0, 10	# 2188
	sw		x1, -52(x2)	# 2188
	addi	x2, x2, -56	# 2188
	jal		x1, min_caml_print_char	# 2188
	addi	x2, x2, 56	# 2188
	lw		x1, -52(x2)	# 2188
beq_cont.34401:
	lw		x4, -16(x2)	# 2290
	addi	x4, x4, 1	# 2290
	lw		x5, -12(x2)	# 2290
	lw		x6, -8(x2)	# 2290
	lw		x7, -4(x2)	# 2290
	lw		x8, 0(x2)	# 2290
	lw		x9, -36(x2)	# 2290
	jal		x0, scan_pixel.3026.17976	# 2290
ble.34390:
	jalr	x0, x1, 0	# 2291
scan_line.3033.17983:
	addi	x10, x0, 44880	# 2297
	lw		x10, 0(x10)	# 2297
	ble		x10, x4, ble.34428	# 2297
	addi	x10, x10, -1	# 2299
	sw		x8, 0(x2)	# 2299
	sw		x9, -4(x2)	# 2299
	sw		x7, -8(x2)	# 2299
	sw		x6, -12(x2)	# 2299
	sw		x5, -16(x2)	# 2299
	sw		x4, -20(x2)	# 2299
	ble		x10, x4, ble_cont.34429	# 2299
	addi	x10, x4, 1	# 2300
	addi	x11, x0, 44892	# 2260
	flw		f1, 0(x11)	# 2260
	addi	x11, x0, 44888	# 2260
	lw		x11, 0(x11)	# 2260
	sub		x10, x10, x11	# 2260
	fsw		f1, -24(x2)	# 2260
	addi	x4, x10, 0	# 2260
	sw		x1, -28(x2)	# 2260
	addi	x2, x2, -32	# 2260
	jal		x1, min_caml_float_of_int	# 2260
	addi	x2, x2, 32	# 2260
	lw		x1, -28(x2)	# 2260
	flw		f2, -24(x2)	# 2260
	fmul	f1, f2, f1	# 2260
	addi	x4, x0, 44932	# 2263
	flw		f2, 0(x4)	# 2263
	fmul	f2, f1, f2	# 2263
	addi	x4, x0, 44944	# 2263
	flw		f3, 0(x4)	# 2263
	fadd	f2, f2, f3	# 2263
	addi	x4, x0, 44936	# 2264
	flw		f3, 0(x4)	# 2264
	fmul	f3, f1, f3	# 2264
	addi	x4, x0, 44948	# 2264
	flw		f4, 0(x4)	# 2264
	fadd	f3, f3, f4	# 2264
	addi	x4, x0, 44940	# 2265
	flw		f4, 0(x4)	# 2265
	fmul	f1, f1, f4	# 2265
	addi	x4, x0, 44952	# 2265
	flw		f4, 0(x4)	# 2265
	fadd	f1, f1, f4	# 2265
	addi	x4, x0, 44876	# 2266
	lw		x4, 0(x4)	# 2266
	addi	x5, x4, -1	# 2266
	addi	x6, x8, 0	# 2266
	addi	x4, x7, 0	# 2266
	fadd	f31, f0, f3	# 2266
	fadd	f3, f0, f1	# 2266
	fadd	f1, f0, f2	# 2266
	fadd	f2, f0, f31	# 2266
	sw		x1, -28(x2)	# 2266
	addi	x2, x2, -32	# 2266
	jal		x1, pretrace_pixels.3015.17969	# 2266
	addi	x2, x2, 32	# 2266
	lw		x1, -28(x2)	# 2266
ble_cont.34429:
	addi	x4, x0, 0	# 6
	lw		x5, -20(x2)	# 2302
	lw		x6, -16(x2)	# 2302
	lw		x7, -12(x2)	# 2302
	lw		x8, -8(x2)	# 2302
	lw		x9, -4(x2)	# 2302
	sw		x1, -28(x2)	# 2302
	addi	x2, x2, -32	# 2302
	jal		x1, scan_pixel.3026.17976	# 2302
	addi	x2, x2, 32	# 2302
	lw		x1, -28(x2)	# 2302
	lw		x4, -20(x2)	# 2303
	addi	x4, x4, 1	# 2303
	lw		x5, 0(x2)	# 266
	addi	x5, x5, 2	# 266
	addi	x6, x0, 5	# 98
	ble		x6, x5, ble.34432	# 267
	addi	x8, x5, 0	# 267
	jal		x0, ble_cont.34431	# 267
ble.34432:
	addi	x8, x5, -5	# 267
ble_cont.34431:
	lw		x5, -12(x2)	# 2303
	lw		x6, -8(x2)	# 2303
	lw		x7, -16(x2)	# 2303
	lw		x9, -4(x2)	# 2303
	jal		x0, scan_line.3033.17983	# 2303
ble.34428:
	jalr	x0, x1, 0	# 2304
init_line_elements.3044.17990:
	addi	x6, x0, 0	# 6
	ble		x0, x5, ble.34434	# 2339
	jalr	x0, x1, 0	# 2343
ble.34434:
	fadd	f1, f0, f0	# 11
	addi	x7, x0, 3	# 16
	sw		x4, 0(x2)	# 2326
	sw		x5, -4(x2)	# 2326
	fsw		f0, -8(x2)	# 2326
	sw		x7, -12(x2)	# 2326
	addi	x4, x7, 0	# 2326
	sw		x1, -16(x2)	# 2326
	addi	x2, x2, -20	# 2326
	jal		x1, min_caml_create_float_array	# 2326
	addi	x2, x2, 20	# 2326
	lw		x1, -16(x2)	# 2326
	lw		x5, -12(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -16(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -20(x2)	# 2314
	addi	x2, x2, -24	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 24	# 2314
	lw		x1, -20(x2)	# 2314
	addi	x5, x4, 0	# 2314
	addi	x4, x0, 5	# 98
	sw		x0, -20(x2)	# 2315
	sw		x4, -24(x2)	# 2315
	sw		x1, -28(x2)	# 2315
	addi	x2, x2, -32	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 32	# 2315
	lw		x1, -28(x2)	# 2315
	lw		x5, -12(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -28(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -32(x2)	# 2316
	addi	x2, x2, -36	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 36	# 2316
	lw		x1, -32(x2)	# 2316
	addi	x5, x0, 1	# 6
	lw		x6, -28(x2)	# 2316
	addi	x7, x6, 4	# 2316
	sw		x4, 0(x7)	# 2316
	lw		x4, -12(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x5, -32(x2)	# 2317
	sw		x1, -36(x2)	# 2317
	addi	x2, x2, -40	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 40	# 2317
	lw		x1, -36(x2)	# 2317
	addi	x5, x6, 8	# 2317
	sw		x4, 0(x5)	# 2317
	lw		x4, -12(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -36(x2)	# 2318
	addi	x2, x2, -40	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 40	# 2318
	lw		x1, -36(x2)	# 2318
	addi	x5, x6, 12	# 2318
	sw		x4, 0(x5)	# 2318
	lw		x4, -12(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -36(x2)	# 2319
	addi	x2, x2, -40	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 40	# 2319
	lw		x1, -36(x2)	# 2319
	addi	x5, x6, 16	# 2319
	sw		x4, 0(x5)	# 2319
	lw		x4, -24(x2)	# 2328
	lw		x5, -20(x2)	# 2328
	sw		x1, -36(x2)	# 2328
	addi	x2, x2, -40	# 2328
	jal		x1, min_caml_create_array	# 2328
	addi	x2, x2, 40	# 2328
	lw		x1, -36(x2)	# 2328
	lw		x5, -24(x2)	# 2329
	lw		x6, -20(x2)	# 2329
	sw		x4, -36(x2)	# 2329
	addi	x4, x5, 0	# 2329
	addi	x5, x6, 0	# 2329
	sw		x1, -40(x2)	# 2329
	addi	x2, x2, -44	# 2329
	jal		x1, min_caml_create_array	# 2329
	addi	x2, x2, 44	# 2329
	lw		x1, -40(x2)	# 2329
	lw		x5, -12(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -40(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -44(x2)	# 2314
	addi	x2, x2, -48	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 48	# 2314
	lw		x1, -44(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -24(x2)	# 2315
	sw		x1, -44(x2)	# 2315
	addi	x2, x2, -48	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 48	# 2315
	lw		x1, -44(x2)	# 2315
	lw		x5, -12(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -44(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -48(x2)	# 2316
	addi	x2, x2, -52	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 52	# 2316
	lw		x1, -48(x2)	# 2316
	lw		x5, -44(x2)	# 2316
	addi	x6, x5, 4	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -12(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -48(x2)	# 2317
	addi	x2, x2, -52	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 52	# 2317
	lw		x1, -48(x2)	# 2317
	lw		x5, -44(x2)	# 2317
	addi	x6, x5, 8	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -12(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -48(x2)	# 2318
	addi	x2, x2, -52	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 52	# 2318
	lw		x1, -48(x2)	# 2318
	lw		x5, -44(x2)	# 2318
	addi	x6, x5, 12	# 2318
	sw		x4, 0(x6)	# 2318
	lw		x4, -12(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -48(x2)	# 2319
	addi	x2, x2, -52	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 52	# 2319
	lw		x1, -48(x2)	# 2319
	lw		x5, -44(x2)	# 2319
	addi	x6, x5, 16	# 2319
	sw		x4, 0(x6)	# 2319
	lw		x4, -12(x2)	# 2314
	flw		f1, -8(x2)	# 2314
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
	lw		x5, -12(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -48(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -52(x2)	# 2316
	addi	x2, x2, -56	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 56	# 2316
	lw		x1, -52(x2)	# 2316
	lw		x5, -48(x2)	# 2316
	addi	x6, x5, 4	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -12(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -52(x2)	# 2317
	addi	x2, x2, -56	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 56	# 2317
	lw		x1, -52(x2)	# 2317
	lw		x5, -48(x2)	# 2317
	addi	x6, x5, 8	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -12(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -52(x2)	# 2318
	addi	x2, x2, -56	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 56	# 2318
	lw		x1, -52(x2)	# 2318
	lw		x5, -48(x2)	# 2318
	addi	x6, x5, 12	# 2318
	sw		x4, 0(x6)	# 2318
	lw		x4, -12(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -52(x2)	# 2319
	addi	x2, x2, -56	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 56	# 2319
	lw		x1, -52(x2)	# 2319
	lw		x5, -48(x2)	# 2319
	addi	x6, x5, 16	# 2319
	sw		x4, 0(x6)	# 2319
	lw		x4, -32(x2)	# 2332
	lw		x6, -20(x2)	# 2332
	addi	x5, x6, 0	# 2332
	sw		x1, -52(x2)	# 2332
	addi	x2, x2, -56	# 2332
	jal		x1, min_caml_create_array	# 2332
	addi	x2, x2, 56	# 2332
	lw		x1, -52(x2)	# 2332
	lw		x5, -12(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -52(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -56(x2)	# 2314
	addi	x2, x2, -60	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 60	# 2314
	lw		x1, -56(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -24(x2)	# 2315
	sw		x1, -56(x2)	# 2315
	addi	x2, x2, -60	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 60	# 2315
	lw		x1, -56(x2)	# 2315
	lw		x5, -12(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -56(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -60(x2)	# 2316
	addi	x2, x2, -64	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 64	# 2316
	lw		x1, -60(x2)	# 2316
	lw		x5, -56(x2)	# 2316
	addi	x6, x5, 4	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -12(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -60(x2)	# 2317
	addi	x2, x2, -64	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 64	# 2317
	lw		x1, -60(x2)	# 2317
	lw		x5, -56(x2)	# 2317
	addi	x6, x5, 8	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -12(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -60(x2)	# 2318
	addi	x2, x2, -64	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 64	# 2318
	lw		x1, -60(x2)	# 2318
	lw		x5, -56(x2)	# 2318
	addi	x6, x5, 12	# 2318
	sw		x4, 0(x6)	# 2318
	lw		x4, -12(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -60(x2)	# 2319
	addi	x2, x2, -64	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 64	# 2319
	lw		x1, -60(x2)	# 2319
	lw		x5, -56(x2)	# 2319
	addi	x6, x5, 16	# 2319
	sw		x4, 0(x6)	# 2319
	addi	x4, x3, 0	# 2334
	addi	x3, x3, 32	# 2334
	sw		x5, 28(x4)	# 2334
	lw		x5, -52(x2)	# 2334
	sw		x5, 24(x4)	# 2334
	lw		x5, -48(x2)	# 2334
	sw		x5, 20(x4)	# 2334
	lw		x5, -44(x2)	# 2334
	sw		x5, 16(x4)	# 2334
	lw		x5, -40(x2)	# 2334
	sw		x5, 12(x4)	# 2334
	lw		x5, -36(x2)	# 2334
	sw		x5, 8(x4)	# 2334
	lw		x5, -28(x2)	# 2334
	sw		x5, 4(x4)	# 2334
	lw		x5, -16(x2)	# 2334
	sw		x5, 0(x4)	# 2334
	lw		x5, -4(x2)	# 2340
	mul		x6, x30, x5	# 2340
	lw		x7, 0(x2)	# 2340
	add		x6, x7, x6	# 2340
	sw		x4, 0(x6)	# 2340
	addi	x5, x5, -1	# 2341
	addi	x4, x7, 0	# 2341
	jal		x0, init_line_elements.3044.17990	# 2341
calc_dirvec.3054.17993:
	addi	x7, x0, 5	# 98
	ble		x7, x4, ble.34435	# 2376
	fmul	f1, f2, f2	# 2367
	lui		x7, %hi(l.29659)	# 2367
	ori		x7, x0, %lo(l.29659)	# 2367
	flw		f2, 0(x7)	# 2367
	fadd	f1, f1, f2	# 2367
	fsqrt	f1, f1	# 2367
	fdiv	f6, f30, f1	# 2368
	fsw		f4, 0(x2)	# 2369
	fsw		f30, -4(x2)	# 2369
	fsw		f2, -8(x2)	# 2369
	sw		x4, -12(x2)	# 2369
	fsw		f1, -16(x2)	# 2369
	fsw		f3, -20(x2)	# 2369
	fadd	f1, f0, f6	# 2369
	sw		x1, -24(x2)	# 2369
	addi	x2, x2, -28	# 2369
	jal		x1, atan.2614.17885	# 2369
	addi	x2, x2, 28	# 2369
	lw		x1, -24(x2)	# 2369
	flw		f2, -20(x2)	# 2370
	fmul	f1, f1, f2	# 2370
	fsw		f1, -24(x2)	# 2362
	sw		x1, -28(x2)	# 2362
	addi	x2, x2, -32	# 2362
	jal		x1, sin.2610.17881	# 2362
	addi	x2, x2, 32	# 2362
	lw		x1, -28(x2)	# 2362
	flw		f2, -24(x2)	# 2362
	fsw		f1, -28(x2)	# 2362
	fadd	f1, f0, f2	# 2362
	sw		x1, -32(x2)	# 2362
	addi	x2, x2, -36	# 2362
	jal		x1, cos.2612.17883	# 2362
	addi	x2, x2, 36	# 2362
	lw		x1, -32(x2)	# 2362
	flw		f2, -28(x2)	# 2362
	fdiv	f1, f2, f1	# 2362
	flw		f2, -16(x2)	# 2371
	fmul	f1, f1, f2	# 2371
	lw		x4, -12(x2)	# 2392
	addi	x4, x4, 1	# 2392
	fmul	f2, f1, f1	# 2367
	flw		f3, -8(x2)	# 2367
	fadd	f2, f2, f3	# 2367
	fsqrt	f2, f2	# 2367
	flw		f3, -4(x2)	# 2368
	fdiv	f3, f3, f2	# 2368
	fsw		f1, -32(x2)	# 2369
	sw		x4, -36(x2)	# 2369
	fsw		f2, -40(x2)	# 2369
	fadd	f1, f0, f3	# 2369
	sw		x1, -44(x2)	# 2369
	addi	x2, x2, -48	# 2369
	jal		x1, atan.2614.17885	# 2369
	addi	x2, x2, 48	# 2369
	lw		x1, -44(x2)	# 2369
	flw		f2, 0(x2)	# 2370
	fmul	f1, f1, f2	# 2370
	fsw		f1, -44(x2)	# 2362
	sw		x1, -48(x2)	# 2362
	addi	x2, x2, -52	# 2362
	jal		x1, sin.2610.17881	# 2362
	addi	x2, x2, 52	# 2362
	lw		x1, -48(x2)	# 2362
	flw		f2, -44(x2)	# 2362
	fsw		f1, -48(x2)	# 2362
	fadd	f1, f0, f2	# 2362
	sw		x1, -52(x2)	# 2362
	addi	x2, x2, -56	# 2362
	jal		x1, cos.2612.17883	# 2362
	addi	x2, x2, 56	# 2362
	lw		x1, -52(x2)	# 2362
	flw		f2, -48(x2)	# 2362
	fdiv	f1, f2, f1	# 2362
	flw		f2, -40(x2)	# 2371
	fmul	f2, f1, f2	# 2371
	lw		x4, -36(x2)	# 2392
	flw		f1, -32(x2)	# 2392
	flw		f3, -20(x2)	# 2392
	flw		f4, 0(x2)	# 2392
	jal		x0, calc_dirvec.3054.17993	# 2392
ble.34435:
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 2377
	fadd	f3, f3, f30	# 2377
	fsqrt	f3, f3	# 2377
	fdiv	f1, f1, f3	# 2378
	fdiv	f2, f2, f3	# 2379
	fdiv	f3, f30, f3	# 2380
	mul		x4, x30, x5	# 2383
	addi	x4, x4, 44976	# 2383
	lw		x4, 0(x4)	# 2383
	mul		x5, x30, x6	# 2384
	add		x5, x4, x5	# 2384
	lw		x5, 0(x5)	# 2384
	lw		x5, 0(x5)	# 681
	addi	x7, x5, 0	# 282
	fsw		f1, 0(x7)	# 282
	addi	x7, x5, 4	# 283
	fsw		f2, 0(x7)	# 283
	addi	x5, x5, 8	# 284
	fsw		f3, 0(x5)	# 284
	addi	x5, x6, 40	# 2385
	mul		x5, x30, x5	# 2385
	add		x5, x4, x5	# 2385
	lw		x5, 0(x5)	# 2385
	lw		x5, 0(x5)	# 681
	fsub	f4, f0, f2	# 123
	addi	x7, x5, 0	# 282
	fsw		f1, 0(x7)	# 282
	addi	x7, x5, 4	# 283
	fsw		f3, 0(x7)	# 283
	addi	x5, x5, 8	# 284
	fsw		f4, 0(x5)	# 284
	addi	x5, x6, 80	# 2386
	mul		x5, x30, x5	# 2386
	add		x5, x4, x5	# 2386
	lw		x5, 0(x5)	# 2386
	lw		x5, 0(x5)	# 681
	fsub	f5, f0, f1	# 123
	addi	x7, x5, 0	# 282
	fsw		f3, 0(x7)	# 282
	addi	x7, x5, 4	# 283
	fsw		f5, 0(x7)	# 283
	addi	x5, x5, 8	# 284
	fsw		f4, 0(x5)	# 284
	addi	x5, x6, 1	# 2387
	mul		x5, x30, x5	# 2387
	add		x5, x4, x5	# 2387
	lw		x5, 0(x5)	# 2387
	lw		x5, 0(x5)	# 681
	fsub	f3, f0, f3	# 123
	addi	x7, x5, 0	# 282
	fsw		f5, 0(x7)	# 282
	addi	x7, x5, 4	# 283
	fsw		f4, 0(x7)	# 283
	addi	x5, x5, 8	# 284
	fsw		f3, 0(x5)	# 284
	addi	x5, x6, 41	# 2388
	mul		x5, x30, x5	# 2388
	add		x5, x4, x5	# 2388
	lw		x5, 0(x5)	# 2388
	lw		x5, 0(x5)	# 681
	addi	x7, x5, 0	# 282
	fsw		f5, 0(x7)	# 282
	addi	x7, x5, 4	# 283
	fsw		f3, 0(x7)	# 283
	addi	x5, x5, 8	# 284
	fsw		f2, 0(x5)	# 284
	addi	x5, x6, 81	# 2389
	mul		x5, x30, x5	# 2389
	add		x4, x4, x5	# 2389
	lw		x4, 0(x4)	# 2389
	lw		x4, 0(x4)	# 681
	addi	x5, x4, 0	# 282
	fsw		f3, 0(x5)	# 282
	addi	x5, x4, 4	# 283
	fsw		f1, 0(x5)	# 283
	addi	x4, x4, 8	# 284
	fsw		f2, 0(x4)	# 284
	jalr	x0, x1, 0	# 284
calc_dirvecs.3062.18001:
	addi	x7, x0, 0	# 6
	ble		x0, x4, ble.34437	# 2397
	jalr	x0, x1, 0	# 2406
ble.34437:
	sw		x4, 0(x2)	# 2399
	fsw		f1, -4(x2)	# 2399
	sw		x6, -8(x2)	# 2399
	sw		x5, -12(x2)	# 2399
	sw		x1, -16(x2)	# 2399
	addi	x2, x2, -20	# 2399
	jal		x1, min_caml_float_of_int	# 2399
	addi	x2, x2, 20	# 2399
	lw		x1, -16(x2)	# 2399
	lui		x4, %hi(l.27800)	# 2399
	ori		x4, x0, %lo(l.27800)	# 2399
	flw		f2, 0(x4)	# 2399
	fmul	f1, f1, f2	# 2399
	lui		x4, %hi(l.30733)	# 2399
	ori		x4, x0, %lo(l.30733)	# 2399
	flw		f2, 0(x4)	# 2399
	fsub	f3, f1, f2	# 2399
	fadd	f2, f0, f0	# 11
	lw		x5, -12(x2)	# 2400
	lw		x6, -8(x2)	# 2400
	flw		f4, -4(x2)	# 2400
	fsw		f0, -16(x2)	# 2400
	sw		x0, -20(x2)	# 2400
	fsw		f1, -24(x2)	# 2400
	addi	x4, x0, 0	# 2400
	fadd	f1, f0, f0	# 2400
	sw		x1, -28(x2)	# 2400
	addi	x2, x2, -32	# 2400
	jal		x1, calc_dirvec.3054.17993	# 2400
	addi	x2, x2, 32	# 2400
	lw		x1, -28(x2)	# 2400
	lui		x4, %hi(l.29659)	# 2402
	ori		x4, x0, %lo(l.29659)	# 2402
	flw		f1, 0(x4)	# 2402
	flw		f2, -24(x2)	# 2402
	fadd	f3, f2, f1	# 2402
	lw		x4, -8(x2)	# 2403
	addi	x6, x4, 2	# 2403
	lw		x5, -20(x2)	# 2403
	lw		x7, -12(x2)	# 2403
	flw		f1, -16(x2)	# 2403
	flw		f4, -4(x2)	# 2403
	addi	x4, x5, 0	# 2403
	addi	x5, x7, 0	# 2403
	fadd	f2, f0, f1	# 2403
	sw		x1, -28(x2)	# 2403
	addi	x2, x2, -32	# 2403
	jal		x1, calc_dirvec.3054.17993	# 2403
	addi	x2, x2, 32	# 2403
	lw		x1, -28(x2)	# 2403
	lw		x4, 0(x2)	# 2405
	addi	x4, x4, -1	# 2405
	lw		x5, -12(x2)	# 266
	addi	x5, x5, 1	# 266
	addi	x6, x0, 5	# 98
	ble		x6, x5, ble.34440	# 267
	jal		x0, ble_cont.34439	# 267
ble.34440:
	addi	x5, x5, -5	# 267
ble_cont.34439:
	lw		x6, -8(x2)	# 2405
	flw		f1, -4(x2)	# 2405
	jal		x0, calc_dirvecs.3062.18001	# 2405
calc_dirvec_rows.3067.18006:
	ble		x0, x4, ble.34441	# 2411
	jalr	x0, x1, 0	# 2415
ble.34441:
	sw		x4, 0(x2)	# 2412
	sw		x6, -4(x2)	# 2412
	sw		x5, -8(x2)	# 2412
	sw		x1, -12(x2)	# 2412
	addi	x2, x2, -16	# 2412
	jal		x1, min_caml_float_of_int	# 2412
	addi	x2, x2, 16	# 2412
	lw		x1, -12(x2)	# 2412
	lui		x4, %hi(l.27800)	# 2412
	ori		x4, x0, %lo(l.27800)	# 2412
	flw		f2, 0(x4)	# 2412
	fmul	f1, f1, f2	# 2412
	lui		x4, %hi(l.30733)	# 2412
	ori		x4, x0, %lo(l.30733)	# 2412
	flw		f2, 0(x4)	# 2412
	fsub	f1, f1, f2	# 2412
	addi	x4, x0, 4	# 2413
	lw		x5, -8(x2)	# 2413
	lw		x6, -4(x2)	# 2413
	sw		x1, -12(x2)	# 2413
	addi	x2, x2, -16	# 2413
	jal		x1, calc_dirvecs.3062.18001	# 2413
	addi	x2, x2, 16	# 2413
	lw		x1, -12(x2)	# 2413
	lw		x4, 0(x2)	# 2414
	addi	x4, x4, -1	# 2414
	lw		x5, -8(x2)	# 266
	addi	x5, x5, 2	# 266
	addi	x6, x0, 5	# 98
	ble		x6, x5, ble.34444	# 267
	jal		x0, ble_cont.34443	# 267
ble.34444:
	addi	x5, x5, -5	# 267
ble_cont.34443:
	lw		x6, -4(x2)	# 2414
	addi	x6, x6, 4	# 2414
	jal		x0, calc_dirvec_rows.3067.18006	# 2414
create_dirvec_elements.3073.18010:
	ble		x0, x5, ble.34445	# 2430
	jalr	x0, x1, 0	# 2433
ble.34445:
	fadd	f1, f0, f0	# 11
	addi	x6, x0, 3	# 16
	sw		x4, 0(x2)	# 2424
	sw		x5, -4(x2)	# 2424
	addi	x4, x6, 0	# 2424
	sw		x1, -8(x2)	# 2424
	addi	x2, x2, -12	# 2424
	jal		x1, min_caml_create_float_array	# 2424
	addi	x2, x2, 12	# 2424
	lw		x1, -8(x2)	# 2424
	addi	x5, x4, 0	# 2424
	addi	x4, x0, 44260	# 2425
	lw		x4, 0(x4)	# 2425
	sw		x5, -8(x2)	# 2425
	sw		x1, -12(x2)	# 2425
	addi	x2, x2, -16	# 2425
	jal		x1, min_caml_create_array	# 2425
	addi	x2, x2, 16	# 2425
	lw		x1, -12(x2)	# 2425
	addi	x5, x3, 0	# 2426
	addi	x3, x3, 8	# 2426
	sw		x4, 4(x5)	# 2426
	lw		x4, -8(x2)	# 2426
	sw		x4, 0(x5)	# 2426
	lw		x4, -4(x2)	# 2431
	mul		x6, x30, x4	# 2431
	lw		x7, 0(x2)	# 2431
	add		x6, x7, x6	# 2431
	sw		x5, 0(x6)	# 2431
	addi	x5, x4, -1	# 2432
	addi	x4, x7, 0	# 2432
	jal		x0, create_dirvec_elements.3073.18010	# 2432
create_dirvecs.3076.18013:
	ble		x0, x4, ble.34447	# 2437
	jalr	x0, x1, 0	# 2441
ble.34447:
	addi	x5, x0, 120	# 2438
	fadd	f1, f0, f0	# 11
	addi	x6, x0, 3	# 16
	sw		x4, 0(x2)	# 2424
	sw		x5, -4(x2)	# 2424
	addi	x4, x6, 0	# 2424
	sw		x1, -8(x2)	# 2424
	addi	x2, x2, -12	# 2424
	jal		x1, min_caml_create_float_array	# 2424
	addi	x2, x2, 12	# 2424
	lw		x1, -8(x2)	# 2424
	addi	x5, x4, 0	# 2424
	addi	x4, x0, 44260	# 2425
	lw		x4, 0(x4)	# 2425
	sw		x5, -8(x2)	# 2425
	sw		x1, -12(x2)	# 2425
	addi	x2, x2, -16	# 2425
	jal		x1, min_caml_create_array	# 2425
	addi	x2, x2, 16	# 2425
	lw		x1, -12(x2)	# 2425
	addi	x5, x3, 0	# 2426
	addi	x3, x3, 8	# 2426
	sw		x4, 4(x5)	# 2426
	lw		x4, -8(x2)	# 2426
	sw		x4, 0(x5)	# 2426
	lw		x4, -4(x2)	# 2438
	sw		x1, -12(x2)	# 2438
	addi	x2, x2, -16	# 2438
	jal		x1, min_caml_create_array	# 2438
	addi	x2, x2, 16	# 2438
	lw		x1, -12(x2)	# 2438
	lw		x5, 0(x2)	# 2438
	mul		x6, x30, x5	# 2438
	addi	x6, x6, 44976	# 2438
	sw		x4, 0(x6)	# 2438
	lw		x4, 0(x6)	# 2439
	addi	x6, x0, 118	# 2439
	addi	x5, x6, 0	# 2439
	sw		x1, -12(x2)	# 2439
	addi	x2, x2, -16	# 2439
	jal		x1, create_dirvec_elements.3073.18010	# 2439
	addi	x2, x2, 16	# 2439
	lw		x1, -12(x2)	# 2439
	lw		x4, 0(x2)	# 2440
	addi	x4, x4, -1	# 2440
	jal		x0, create_dirvecs.3076.18013	# 2440
init_dirvec_constants.3078.18015:
	ble		x0, x5, ble.34449	# 2449
	jalr	x0, x1, 0	# 2452
ble.34449:
	mul		x6, x30, x5	# 2450
	add		x6, x4, x6	# 2450
	lw		x6, 0(x6)	# 2450
	addi	x7, x0, 44260	# 1329
	lw		x7, 0(x7)	# 1329
	addi	x7, x7, -1	# 1329
	sw		x4, 0(x2)	# 1329
	sw		x5, -4(x2)	# 1329
	addi	x5, x7, 0	# 1329
	addi	x4, x6, 0	# 1329
	sw		x1, -8(x2)	# 1329
	addi	x2, x2, -12	# 1329
	jal		x1, iter_setup_dirvec_constants.2856.17895	# 1329
	addi	x2, x2, 12	# 1329
	lw		x1, -8(x2)	# 1329
	lw		x4, -4(x2)	# 2451
	addi	x5, x4, -1	# 2451
	lw		x4, 0(x2)	# 2451
	jal		x0, init_dirvec_constants.3078.18015	# 2451
init_vecset_constants.3081.18018:
	ble		x0, x4, ble.34451	# 2456
	jalr	x0, x1, 0	# 2459
ble.34451:
	mul		x5, x30, x4	# 2457
	addi	x5, x5, 44976	# 2457
	lw		x5, 0(x5)	# 2457
	addi	x6, x0, 119	# 2457
	sw		x4, 0(x2)	# 2457
	addi	x4, x5, 0	# 2457
	addi	x5, x6, 0	# 2457
	sw		x1, -4(x2)	# 2457
	addi	x2, x2, -8	# 2457
	jal		x1, init_dirvec_constants.3078.18015	# 2457
	addi	x2, x2, 8	# 2457
	lw		x1, -4(x2)	# 2457
	lw		x4, 0(x2)	# 2458
	addi	x4, x4, -1	# 2458
	jal		x0, init_vecset_constants.3081.18018	# 2458
min_caml_start:
	addi	x2, x2, -4	# 0
	addi	x30, x0, 4	# 0
	addi	x3, x0, 44260	# 0
	lui		x4, %hi(l.27756)	# 0
	ori		x4, x0, %lo(l.27756)	# 0
	flw		f0, 0(x4)	# 0
	lui		x4, %hi(l.27774)	# 0
	ori		x4, x0, %lo(l.27774)	# 0
	flw		f30, 0(x4)	# 0
	lui		x4, %hi(l.33397)	# 0
	ori		x4, x0, %lo(l.33397)	# 0
	flw		f29, 0(x4)	# 0
	lui		x4, %hi(l.28288)	# 0
	ori		x4, x0, %lo(l.28288)	# 0
	flw		f18, 0(x4)	# 0
	lui		x4, %hi(l.28286)	# 0
	ori		x4, x0, %lo(l.28286)	# 0
	flw		f19, 0(x4)	# 0
	lui		x4, %hi(l.28411)	# 0
	ori		x4, x0, %lo(l.28411)	# 0
	flw		f20, 0(x4)	# 0
	lui		x4, %hi(l.29254)	# 0
	ori		x4, x0, %lo(l.29254)	# 0
	flw		f21, 0(x4)	# 0
	lui		x4, %hi(l.29939)	# 0
	ori		x4, x0, %lo(l.29939)	# 0
	flw		f22, 0(x4)	# 0
	lui		x4, %hi(l.29712)	# 0
	ori		x4, x0, %lo(l.29712)	# 0
	flw		f23, 0(x4)	# 0
	lui		x4, %hi(l.27870)	# 0
	ori		x4, x0, %lo(l.27870)	# 0
	flw		f24, 0(x4)	# 0
	lui		x4, %hi(l.29488)	# 0
	ori		x4, x0, %lo(l.29488)	# 0
	flw		f25, 0(x4)	# 0
	lui		x4, %hi(l.29509)	# 0
	ori		x4, x0, %lo(l.29509)	# 0
	flw		f26, 0(x4)	# 0
	lui		x4, %hi(l.29511)	# 0
	ori		x4, x0, %lo(l.29511)	# 0
	flw		f27, 0(x4)	# 0
	lui		x4, %hi(l.29478)	# 0
	ori		x4, x0, %lo(l.29478)	# 0
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
	addi	x4, x0, 44264	# 11
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
	fadd	f1, f0, f28	# 25
	lw		x4, 0(x2)	# 25
	sw		x1, -24(x2)	# 25
	addi	x2, x2, -28	# 25
	jal		x1, min_caml_create_float_array	# 25
	addi	x2, x2, 28	# 25
	lw		x1, -24(x2)	# 25
	addi	x4, x0, 50	# 28
	addi	x5, x0, -1	# 28
	addi	x6, x0, 44588	# 28
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
	addi	x4, x0, 44592	# 31
	lw		x5, 0(x4)	# 31
	addi	x4, x0, 44792	# 31
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
	lui		x4, %hi(l.29245)	# 42
	ori		x4, x0, %lo(l.29245)	# 42
	flw		f1, 0(x4)	# 42
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
	addi	x4, x0, 2	# 65
	lw		x5, -4(x2)	# 65
	sw		x4, -36(x2)	# 65
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
	addi	x4, x0, 44968	# 95
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
	addi	x4, x0, 44976	# 97
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
	addi	x4, x0, 44996	# 103
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
	addi	x4, x0, 45008	# 105
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
	addi	x6, x0, 45256	# 111
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
	addi	x4, x0, 256	# 2554
	addi	x5, x0, 44876	# 2534
	sw		x4, 0(x5)	# 2534
	addi	x6, x0, 4	# 2535
	addi	x7, x0, 44880	# 2535
	sw		x4, 0(x7)	# 2535
	addi	x8, x0, 128	# 2536
	addi	x9, x0, 44884	# 2536
	sw		x8, 0(x9)	# 2536
	addi	x9, x0, 44888	# 2537
	sw		x8, 0(x9)	# 2537
	lui		x8, %hi(l.30802)	# 2538
	ori		x8, x0, %lo(l.30802)	# 2538
	flw		f2, 0(x8)	# 2538
	sw		x6, -68(x2)	# 2538
	sw		x5, -72(x2)	# 2538
	fsw		f2, -76(x2)	# 2538
	sw		x1, -80(x2)	# 2538
	addi	x2, x2, -84	# 2538
	jal		x1, min_caml_float_of_int	# 2538
	addi	x2, x2, 84	# 2538
	lw		x1, -80(x2)	# 2538
	flw		f2, -76(x2)	# 2538
	fdiv	f1, f2, f1	# 2538
	addi	x4, x0, 44892	# 2538
	fsw		f1, 0(x4)	# 2538
	lw		x5, -72(x2)	# 2348
	lw		x5, 0(x5)	# 2348
	lw		x6, -20(x2)	# 2326
	flw		f1, -8(x2)	# 2326
	sw		x4, -80(x2)	# 2326
	sw		x5, -84(x2)	# 2326
	addi	x4, x6, 0	# 2326
	sw		x1, -88(x2)	# 2326
	addi	x2, x2, -92	# 2326
	jal		x1, min_caml_create_float_array	# 2326
	addi	x2, x2, 92	# 2326
	lw		x1, -88(x2)	# 2326
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -88(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -92(x2)	# 2314
	addi	x2, x2, -96	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 96	# 2314
	lw		x1, -92(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -48(x2)	# 2315
	sw		x1, -92(x2)	# 2315
	addi	x2, x2, -96	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 96	# 2315
	lw		x1, -92(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -92(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -96(x2)	# 2316
	addi	x2, x2, -100	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 100	# 2316
	lw		x1, -96(x2)	# 2316
	lw		x5, -92(x2)	# 2316
	addi	x6, x5, 4	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -96(x2)	# 2317
	addi	x2, x2, -100	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 100	# 2317
	lw		x1, -96(x2)	# 2317
	lw		x5, -92(x2)	# 2317
	addi	x6, x5, 8	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -96(x2)	# 2318
	addi	x2, x2, -100	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 100	# 2318
	lw		x1, -96(x2)	# 2318
	lw		x5, -92(x2)	# 2318
	addi	x6, x5, 12	# 2318
	sw		x4, 0(x6)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -96(x2)	# 2319
	addi	x2, x2, -100	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 100	# 2319
	lw		x1, -96(x2)	# 2319
	lw		x5, -92(x2)	# 2319
	addi	x6, x5, 16	# 2319
	sw		x4, 0(x6)	# 2319
	lw		x4, -48(x2)	# 2328
	lw		x6, -4(x2)	# 2328
	addi	x5, x6, 0	# 2328
	sw		x1, -96(x2)	# 2328
	addi	x2, x2, -100	# 2328
	jal		x1, min_caml_create_array	# 2328
	addi	x2, x2, 100	# 2328
	lw		x1, -96(x2)	# 2328
	lw		x5, -48(x2)	# 2329
	lw		x6, -4(x2)	# 2329
	sw		x4, -96(x2)	# 2329
	addi	x4, x5, 0	# 2329
	addi	x5, x6, 0	# 2329
	sw		x1, -100(x2)	# 2329
	addi	x2, x2, -104	# 2329
	jal		x1, min_caml_create_array	# 2329
	addi	x2, x2, 104	# 2329
	lw		x1, -100(x2)	# 2329
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -100(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -104(x2)	# 2314
	addi	x2, x2, -108	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 108	# 2314
	lw		x1, -104(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -48(x2)	# 2315
	sw		x1, -104(x2)	# 2315
	addi	x2, x2, -108	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 108	# 2315
	lw		x1, -104(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -104(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -108(x2)	# 2316
	addi	x2, x2, -112	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 112	# 2316
	lw		x1, -108(x2)	# 2316
	lw		x5, -104(x2)	# 2316
	addi	x6, x5, 4	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -108(x2)	# 2317
	addi	x2, x2, -112	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 112	# 2317
	lw		x1, -108(x2)	# 2317
	lw		x5, -104(x2)	# 2317
	addi	x6, x5, 8	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -108(x2)	# 2318
	addi	x2, x2, -112	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 112	# 2318
	lw		x1, -108(x2)	# 2318
	lw		x5, -104(x2)	# 2318
	addi	x6, x5, 12	# 2318
	sw		x4, 0(x6)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -108(x2)	# 2319
	addi	x2, x2, -112	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 112	# 2319
	lw		x1, -108(x2)	# 2319
	lw		x5, -104(x2)	# 2319
	addi	x6, x5, 16	# 2319
	sw		x4, 0(x6)	# 2319
	lw		x4, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x1, -108(x2)	# 2314
	addi	x2, x2, -112	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 112	# 2314
	lw		x1, -108(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -48(x2)	# 2315
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
	addi	x6, x5, 4	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -112(x2)	# 2317
	addi	x2, x2, -116	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 116	# 2317
	lw		x1, -112(x2)	# 2317
	lw		x5, -108(x2)	# 2317
	addi	x6, x5, 8	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -112(x2)	# 2318
	addi	x2, x2, -116	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 116	# 2318
	lw		x1, -112(x2)	# 2318
	lw		x5, -108(x2)	# 2318
	addi	x6, x5, 12	# 2318
	sw		x4, 0(x6)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -112(x2)	# 2319
	addi	x2, x2, -116	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 116	# 2319
	lw		x1, -112(x2)	# 2319
	lw		x5, -108(x2)	# 2319
	addi	x6, x5, 16	# 2319
	sw		x4, 0(x6)	# 2319
	lw		x4, 0(x2)	# 2332
	lw		x6, -4(x2)	# 2332
	addi	x5, x6, 0	# 2332
	sw		x1, -112(x2)	# 2332
	addi	x2, x2, -116	# 2332
	jal		x1, min_caml_create_array	# 2332
	addi	x2, x2, 116	# 2332
	lw		x1, -112(x2)	# 2332
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -112(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -116(x2)	# 2314
	addi	x2, x2, -120	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 120	# 2314
	lw		x1, -116(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -48(x2)	# 2315
	sw		x1, -116(x2)	# 2315
	addi	x2, x2, -120	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 120	# 2315
	lw		x1, -116(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -116(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -120(x2)	# 2316
	addi	x2, x2, -124	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 124	# 2316
	lw		x1, -120(x2)	# 2316
	lw		x5, -116(x2)	# 2316
	addi	x6, x5, 4	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -120(x2)	# 2317
	addi	x2, x2, -124	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 124	# 2317
	lw		x1, -120(x2)	# 2317
	lw		x5, -116(x2)	# 2317
	addi	x6, x5, 8	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -120(x2)	# 2318
	addi	x2, x2, -124	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 124	# 2318
	lw		x1, -120(x2)	# 2318
	lw		x5, -116(x2)	# 2318
	addi	x6, x5, 12	# 2318
	sw		x4, 0(x6)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -120(x2)	# 2319
	addi	x2, x2, -124	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 124	# 2319
	lw		x1, -120(x2)	# 2319
	lw		x5, -116(x2)	# 2319
	addi	x6, x5, 16	# 2319
	sw		x4, 0(x6)	# 2319
	addi	x4, x3, 0	# 2334
	addi	x3, x3, 32	# 2334
	sw		x5, 28(x4)	# 2334
	lw		x5, -112(x2)	# 2334
	sw		x5, 24(x4)	# 2334
	lw		x5, -108(x2)	# 2334
	sw		x5, 20(x4)	# 2334
	lw		x5, -104(x2)	# 2334
	sw		x5, 16(x4)	# 2334
	lw		x5, -100(x2)	# 2334
	sw		x5, 12(x4)	# 2334
	lw		x5, -96(x2)	# 2334
	sw		x5, 8(x4)	# 2334
	lw		x5, -92(x2)	# 2334
	sw		x5, 4(x4)	# 2334
	lw		x5, -88(x2)	# 2334
	sw		x5, 0(x4)	# 2334
	lw		x5, -84(x2)	# 2348
	addi	x31, x5, 0	# 2348
	addi	x5, x4, 0	# 2348
	addi	x4, x31, 0	# 2348
	sw		x1, -120(x2)	# 2348
	addi	x2, x2, -124	# 2348
	jal		x1, min_caml_create_array	# 2348
	addi	x2, x2, 124	# 2348
	lw		x1, -120(x2)	# 2348
	lw		x5, -84(x2)	# 2349
	addi	x6, x5, -2	# 2349
	sw		x7, -120(x2)	# 2349
	sw		x6, -124(x2)	# 2349
	addi	x5, x6, 0	# 2349
	sw		x1, -128(x2)	# 2349
	addi	x2, x2, -132	# 2349
	jal		x1, init_line_elements.3044.17990	# 2349
	addi	x2, x2, 132	# 2349
	lw		x1, -128(x2)	# 2349
	lw		x5, -20(x2)	# 2326
	flw		f1, -8(x2)	# 2326
	sw		x4, -128(x2)	# 2326
	addi	x4, x5, 0	# 2326
	sw		x1, -132(x2)	# 2326
	addi	x2, x2, -136	# 2326
	jal		x1, min_caml_create_float_array	# 2326
	addi	x2, x2, 136	# 2326
	lw		x1, -132(x2)	# 2326
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -132(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -136(x2)	# 2314
	addi	x2, x2, -140	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 140	# 2314
	lw		x1, -136(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -48(x2)	# 2315
	sw		x1, -136(x2)	# 2315
	addi	x2, x2, -140	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 140	# 2315
	lw		x1, -136(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -136(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -140(x2)	# 2316
	addi	x2, x2, -144	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 144	# 2316
	lw		x1, -140(x2)	# 2316
	lw		x5, -136(x2)	# 2316
	addi	x6, x5, 4	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -140(x2)	# 2317
	addi	x2, x2, -144	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 144	# 2317
	lw		x1, -140(x2)	# 2317
	lw		x5, -136(x2)	# 2317
	addi	x6, x5, 8	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -140(x2)	# 2318
	addi	x2, x2, -144	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 144	# 2318
	lw		x1, -140(x2)	# 2318
	lw		x5, -136(x2)	# 2318
	addi	x6, x5, 12	# 2318
	sw		x4, 0(x6)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -140(x2)	# 2319
	addi	x2, x2, -144	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 144	# 2319
	lw		x1, -140(x2)	# 2319
	lw		x5, -136(x2)	# 2319
	addi	x6, x5, 16	# 2319
	sw		x4, 0(x6)	# 2319
	lw		x4, -48(x2)	# 2328
	lw		x6, -4(x2)	# 2328
	addi	x5, x6, 0	# 2328
	sw		x1, -140(x2)	# 2328
	addi	x2, x2, -144	# 2328
	jal		x1, min_caml_create_array	# 2328
	addi	x2, x2, 144	# 2328
	lw		x1, -140(x2)	# 2328
	lw		x5, -48(x2)	# 2329
	lw		x6, -4(x2)	# 2329
	sw		x4, -140(x2)	# 2329
	addi	x4, x5, 0	# 2329
	addi	x5, x6, 0	# 2329
	sw		x1, -144(x2)	# 2329
	addi	x2, x2, -148	# 2329
	jal		x1, min_caml_create_array	# 2329
	addi	x2, x2, 148	# 2329
	lw		x1, -144(x2)	# 2329
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -144(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -148(x2)	# 2314
	addi	x2, x2, -152	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 152	# 2314
	lw		x1, -148(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -48(x2)	# 2315
	sw		x1, -148(x2)	# 2315
	addi	x2, x2, -152	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 152	# 2315
	lw		x1, -148(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -148(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -152(x2)	# 2316
	addi	x2, x2, -156	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 156	# 2316
	lw		x1, -152(x2)	# 2316
	lw		x5, -148(x2)	# 2316
	addi	x6, x5, 4	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -152(x2)	# 2317
	addi	x2, x2, -156	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 156	# 2317
	lw		x1, -152(x2)	# 2317
	lw		x5, -148(x2)	# 2317
	addi	x6, x5, 8	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -152(x2)	# 2318
	addi	x2, x2, -156	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 156	# 2318
	lw		x1, -152(x2)	# 2318
	lw		x5, -148(x2)	# 2318
	addi	x6, x5, 12	# 2318
	sw		x4, 0(x6)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -152(x2)	# 2319
	addi	x2, x2, -156	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 156	# 2319
	lw		x1, -152(x2)	# 2319
	lw		x5, -148(x2)	# 2319
	addi	x6, x5, 16	# 2319
	sw		x4, 0(x6)	# 2319
	lw		x4, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x1, -152(x2)	# 2314
	addi	x2, x2, -156	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 156	# 2314
	lw		x1, -152(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -48(x2)	# 2315
	sw		x1, -152(x2)	# 2315
	addi	x2, x2, -156	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 156	# 2315
	lw		x1, -152(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -152(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -156(x2)	# 2316
	addi	x2, x2, -160	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 160	# 2316
	lw		x1, -156(x2)	# 2316
	lw		x5, -152(x2)	# 2316
	addi	x6, x5, 4	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -156(x2)	# 2317
	addi	x2, x2, -160	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 160	# 2317
	lw		x1, -156(x2)	# 2317
	lw		x5, -152(x2)	# 2317
	addi	x6, x5, 8	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -156(x2)	# 2318
	addi	x2, x2, -160	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 160	# 2318
	lw		x1, -156(x2)	# 2318
	lw		x5, -152(x2)	# 2318
	addi	x6, x5, 12	# 2318
	sw		x4, 0(x6)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -156(x2)	# 2319
	addi	x2, x2, -160	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 160	# 2319
	lw		x1, -156(x2)	# 2319
	lw		x5, -152(x2)	# 2319
	addi	x6, x5, 16	# 2319
	sw		x4, 0(x6)	# 2319
	lw		x4, 0(x2)	# 2332
	lw		x6, -4(x2)	# 2332
	addi	x5, x6, 0	# 2332
	sw		x1, -156(x2)	# 2332
	addi	x2, x2, -160	# 2332
	jal		x1, min_caml_create_array	# 2332
	addi	x2, x2, 160	# 2332
	lw		x1, -156(x2)	# 2332
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
	lw		x4, -48(x2)	# 2315
	sw		x1, -160(x2)	# 2315
	addi	x2, x2, -164	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 164	# 2315
	lw		x1, -160(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -160(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -164(x2)	# 2316
	addi	x2, x2, -168	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 168	# 2316
	lw		x1, -164(x2)	# 2316
	lw		x5, -160(x2)	# 2316
	addi	x6, x5, 4	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -164(x2)	# 2317
	addi	x2, x2, -168	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 168	# 2317
	lw		x1, -164(x2)	# 2317
	lw		x5, -160(x2)	# 2317
	addi	x6, x5, 8	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -164(x2)	# 2318
	addi	x2, x2, -168	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 168	# 2318
	lw		x1, -164(x2)	# 2318
	lw		x5, -160(x2)	# 2318
	addi	x6, x5, 12	# 2318
	sw		x4, 0(x6)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -164(x2)	# 2319
	addi	x2, x2, -168	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 168	# 2319
	lw		x1, -164(x2)	# 2319
	lw		x5, -160(x2)	# 2319
	addi	x6, x5, 16	# 2319
	sw		x4, 0(x6)	# 2319
	addi	x4, x3, 0	# 2334
	addi	x3, x3, 32	# 2334
	sw		x5, 28(x4)	# 2334
	lw		x5, -156(x2)	# 2334
	sw		x5, 24(x4)	# 2334
	lw		x5, -152(x2)	# 2334
	sw		x5, 20(x4)	# 2334
	lw		x5, -148(x2)	# 2334
	sw		x5, 16(x4)	# 2334
	lw		x5, -144(x2)	# 2334
	sw		x5, 12(x4)	# 2334
	lw		x5, -140(x2)	# 2334
	sw		x5, 8(x4)	# 2334
	lw		x5, -136(x2)	# 2334
	sw		x5, 4(x4)	# 2334
	lw		x5, -132(x2)	# 2334
	sw		x5, 0(x4)	# 2334
	lw		x5, -84(x2)	# 2348
	addi	x31, x5, 0	# 2348
	addi	x5, x4, 0	# 2348
	addi	x4, x31, 0	# 2348
	sw		x1, -164(x2)	# 2348
	addi	x2, x2, -168	# 2348
	jal		x1, min_caml_create_array	# 2348
	addi	x2, x2, 168	# 2348
	lw		x1, -164(x2)	# 2348
	lw		x5, -124(x2)	# 2349
	sw		x1, -164(x2)	# 2349
	addi	x2, x2, -168	# 2349
	jal		x1, init_line_elements.3044.17990	# 2349
	addi	x2, x2, 168	# 2349
	lw		x1, -164(x2)	# 2349
	lw		x5, -20(x2)	# 2326
	flw		f1, -8(x2)	# 2326
	sw		x4, -164(x2)	# 2326
	addi	x4, x5, 0	# 2326
	sw		x1, -168(x2)	# 2326
	addi	x2, x2, -172	# 2326
	jal		x1, min_caml_create_float_array	# 2326
	addi	x2, x2, 172	# 2326
	lw		x1, -168(x2)	# 2326
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -168(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -172(x2)	# 2314
	addi	x2, x2, -176	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 176	# 2314
	lw		x1, -172(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -48(x2)	# 2315
	sw		x1, -172(x2)	# 2315
	addi	x2, x2, -176	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 176	# 2315
	lw		x1, -172(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -172(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -176(x2)	# 2316
	addi	x2, x2, -180	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 180	# 2316
	lw		x1, -176(x2)	# 2316
	lw		x5, -172(x2)	# 2316
	addi	x6, x5, 4	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -176(x2)	# 2317
	addi	x2, x2, -180	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 180	# 2317
	lw		x1, -176(x2)	# 2317
	lw		x5, -172(x2)	# 2317
	addi	x6, x5, 8	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -176(x2)	# 2318
	addi	x2, x2, -180	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 180	# 2318
	lw		x1, -176(x2)	# 2318
	lw		x5, -172(x2)	# 2318
	addi	x6, x5, 12	# 2318
	sw		x4, 0(x6)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -176(x2)	# 2319
	addi	x2, x2, -180	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 180	# 2319
	lw		x1, -176(x2)	# 2319
	lw		x5, -172(x2)	# 2319
	addi	x6, x5, 16	# 2319
	sw		x4, 0(x6)	# 2319
	lw		x4, -48(x2)	# 2328
	lw		x6, -4(x2)	# 2328
	addi	x5, x6, 0	# 2328
	sw		x1, -176(x2)	# 2328
	addi	x2, x2, -180	# 2328
	jal		x1, min_caml_create_array	# 2328
	addi	x2, x2, 180	# 2328
	lw		x1, -176(x2)	# 2328
	lw		x5, -48(x2)	# 2329
	lw		x6, -4(x2)	# 2329
	sw		x4, -176(x2)	# 2329
	addi	x4, x5, 0	# 2329
	addi	x5, x6, 0	# 2329
	sw		x1, -180(x2)	# 2329
	addi	x2, x2, -184	# 2329
	jal		x1, min_caml_create_array	# 2329
	addi	x2, x2, 184	# 2329
	lw		x1, -180(x2)	# 2329
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -180(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -184(x2)	# 2314
	addi	x2, x2, -188	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 188	# 2314
	lw		x1, -184(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -48(x2)	# 2315
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
	addi	x6, x5, 4	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -188(x2)	# 2317
	addi	x2, x2, -192	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 192	# 2317
	lw		x1, -188(x2)	# 2317
	lw		x5, -184(x2)	# 2317
	addi	x6, x5, 8	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -188(x2)	# 2318
	addi	x2, x2, -192	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 192	# 2318
	lw		x1, -188(x2)	# 2318
	lw		x5, -184(x2)	# 2318
	addi	x6, x5, 12	# 2318
	sw		x4, 0(x6)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -188(x2)	# 2319
	addi	x2, x2, -192	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 192	# 2319
	lw		x1, -188(x2)	# 2319
	lw		x5, -184(x2)	# 2319
	addi	x6, x5, 16	# 2319
	sw		x4, 0(x6)	# 2319
	lw		x4, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x1, -188(x2)	# 2314
	addi	x2, x2, -192	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 192	# 2314
	lw		x1, -188(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -48(x2)	# 2315
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
	lw		x5, -188(x2)	# 2316
	addi	x6, x5, 4	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -192(x2)	# 2317
	addi	x2, x2, -196	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 196	# 2317
	lw		x1, -192(x2)	# 2317
	lw		x5, -188(x2)	# 2317
	addi	x6, x5, 8	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -192(x2)	# 2318
	addi	x2, x2, -196	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 196	# 2318
	lw		x1, -192(x2)	# 2318
	lw		x5, -188(x2)	# 2318
	addi	x6, x5, 12	# 2318
	sw		x4, 0(x6)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -192(x2)	# 2319
	addi	x2, x2, -196	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 196	# 2319
	lw		x1, -192(x2)	# 2319
	lw		x5, -188(x2)	# 2319
	addi	x6, x5, 16	# 2319
	sw		x4, 0(x6)	# 2319
	lw		x4, 0(x2)	# 2332
	lw		x6, -4(x2)	# 2332
	addi	x5, x6, 0	# 2332
	sw		x1, -192(x2)	# 2332
	addi	x2, x2, -196	# 2332
	jal		x1, min_caml_create_array	# 2332
	addi	x2, x2, 196	# 2332
	lw		x1, -192(x2)	# 2332
	lw		x5, -20(x2)	# 2314
	flw		f1, -8(x2)	# 2314
	sw		x4, -192(x2)	# 2314
	addi	x4, x5, 0	# 2314
	sw		x1, -196(x2)	# 2314
	addi	x2, x2, -200	# 2314
	jal		x1, min_caml_create_float_array	# 2314
	addi	x2, x2, 200	# 2314
	lw		x1, -196(x2)	# 2314
	addi	x5, x4, 0	# 2314
	lw		x4, -48(x2)	# 2315
	sw		x1, -196(x2)	# 2315
	addi	x2, x2, -200	# 2315
	jal		x1, min_caml_create_array	# 2315
	addi	x2, x2, 200	# 2315
	lw		x1, -196(x2)	# 2315
	lw		x5, -20(x2)	# 2316
	flw		f1, -8(x2)	# 2316
	sw		x4, -196(x2)	# 2316
	addi	x4, x5, 0	# 2316
	sw		x1, -200(x2)	# 2316
	addi	x2, x2, -204	# 2316
	jal		x1, min_caml_create_float_array	# 2316
	addi	x2, x2, 204	# 2316
	lw		x1, -200(x2)	# 2316
	lw		x5, -196(x2)	# 2316
	addi	x6, x5, 4	# 2316
	sw		x4, 0(x6)	# 2316
	lw		x4, -20(x2)	# 2317
	flw		f1, -8(x2)	# 2317
	sw		x1, -200(x2)	# 2317
	addi	x2, x2, -204	# 2317
	jal		x1, min_caml_create_float_array	# 2317
	addi	x2, x2, 204	# 2317
	lw		x1, -200(x2)	# 2317
	lw		x5, -196(x2)	# 2317
	addi	x6, x5, 8	# 2317
	sw		x4, 0(x6)	# 2317
	lw		x4, -20(x2)	# 2318
	flw		f1, -8(x2)	# 2318
	sw		x1, -200(x2)	# 2318
	addi	x2, x2, -204	# 2318
	jal		x1, min_caml_create_float_array	# 2318
	addi	x2, x2, 204	# 2318
	lw		x1, -200(x2)	# 2318
	lw		x5, -196(x2)	# 2318
	addi	x6, x5, 12	# 2318
	sw		x4, 0(x6)	# 2318
	lw		x4, -20(x2)	# 2319
	flw		f1, -8(x2)	# 2319
	sw		x1, -200(x2)	# 2319
	addi	x2, x2, -204	# 2319
	jal		x1, min_caml_create_float_array	# 2319
	addi	x2, x2, 204	# 2319
	lw		x1, -200(x2)	# 2319
	lw		x5, -196(x2)	# 2319
	addi	x6, x5, 16	# 2319
	sw		x4, 0(x6)	# 2319
	addi	x4, x3, 0	# 2334
	addi	x3, x3, 32	# 2334
	sw		x5, 28(x4)	# 2334
	lw		x5, -192(x2)	# 2334
	sw		x5, 24(x4)	# 2334
	lw		x5, -188(x2)	# 2334
	sw		x5, 20(x4)	# 2334
	lw		x5, -184(x2)	# 2334
	sw		x5, 16(x4)	# 2334
	lw		x5, -180(x2)	# 2334
	sw		x5, 12(x4)	# 2334
	lw		x5, -176(x2)	# 2334
	sw		x5, 8(x4)	# 2334
	lw		x5, -172(x2)	# 2334
	sw		x5, 4(x4)	# 2334
	lw		x5, -168(x2)	# 2334
	sw		x5, 0(x4)	# 2334
	lw		x5, -84(x2)	# 2348
	addi	x31, x5, 0	# 2348
	addi	x5, x4, 0	# 2348
	addi	x4, x31, 0	# 2348
	sw		x1, -200(x2)	# 2348
	addi	x2, x2, -204	# 2348
	jal		x1, min_caml_create_array	# 2348
	addi	x2, x2, 204	# 2348
	lw		x1, -200(x2)	# 2348
	lw		x5, -124(x2)	# 2349
	sw		x1, -200(x2)	# 2349
	addi	x2, x2, -204	# 2349
	jal		x1, init_line_elements.3044.17990	# 2349
	addi	x2, x2, 204	# 2349
	lw		x1, -200(x2)	# 2349
	sw		x1, -200(x2)	# 726
	addi	x2, x2, -204	# 726
	jal		x1, min_caml_read_float	# 726
	addi	x2, x2, 204	# 726
	lw		x1, -200(x2)	# 726
	addi	x5, x0, 44548	# 726
	fsw		f1, 0(x5)	# 726
	sw		x1, -200(x2)	# 727
	addi	x2, x2, -204	# 727
	jal		x1, min_caml_read_float	# 727
	addi	x2, x2, 204	# 727
	lw		x1, -200(x2)	# 727
	addi	x6, x0, 44552	# 727
	fsw		f1, 0(x6)	# 727
	sw		x1, -200(x2)	# 728
	addi	x2, x2, -204	# 728
	jal		x1, min_caml_read_float	# 728
	addi	x2, x2, 204	# 728
	lw		x1, -200(x2)	# 728
	addi	x7, x0, 44556	# 728
	fsw		f1, 0(x7)	# 728
	sw		x1, -200(x2)	# 730
	addi	x2, x2, -204	# 730
	jal		x1, min_caml_read_float	# 730
	addi	x2, x2, 204	# 730
	lw		x1, -200(x2)	# 730
	lui		x8, %hi(l.27838)	# 719
	ori		x8, x0, %lo(l.27838)	# 719
	flw		f2, 0(x8)	# 719
	fmul	f1, f1, f2	# 719
	sw		x4, -200(x2)	# 731
	fsw		f2, -204(x2)	# 731
	fsw		f1, -208(x2)	# 731
	sw		x1, -212(x2)	# 731
	addi	x2, x2, -216	# 731
	jal		x1, cos.2612.17883	# 731
	addi	x2, x2, 216	# 731
	lw		x1, -212(x2)	# 731
	flw		f2, -208(x2)	# 732
	fsw		f1, -212(x2)	# 732
	fadd	f1, f0, f2	# 732
	sw		x1, -216(x2)	# 732
	addi	x2, x2, -220	# 732
	jal		x1, sin.2610.17881	# 732
	addi	x2, x2, 220	# 732
	lw		x1, -216(x2)	# 732
	fsw		f1, -216(x2)	# 733
	sw		x1, -220(x2)	# 733
	addi	x2, x2, -224	# 733
	jal		x1, min_caml_read_float	# 733
	addi	x2, x2, 224	# 733
	lw		x1, -220(x2)	# 733
	flw		f2, -204(x2)	# 719
	fmul	f1, f1, f2	# 719
	fsw		f1, -220(x2)	# 734
	sw		x1, -224(x2)	# 734
	addi	x2, x2, -228	# 734
	jal		x1, cos.2612.17883	# 734
	addi	x2, x2, 228	# 734
	lw		x1, -224(x2)	# 734
	flw		f2, -220(x2)	# 735
	fsw		f1, -224(x2)	# 735
	fadd	f1, f0, f2	# 735
	sw		x1, -228(x2)	# 735
	addi	x2, x2, -232	# 735
	jal		x1, sin.2610.17881	# 735
	addi	x2, x2, 232	# 735
	lw		x1, -228(x2)	# 735
	flw		f2, -212(x2)	# 737
	fmul	f3, f2, f1	# 737
	lui		x4, %hi(l.30938)	# 737
	ori		x4, x0, %lo(l.30938)	# 737
	flw		f4, 0(x4)	# 737
	fmul	f3, f3, f4	# 737
	addi	x4, x0, 44944	# 737
	fsw		f3, 0(x4)	# 737
	lui		x8, %hi(l.30942)	# 738
	ori		x8, x0, %lo(l.30942)	# 738
	flw		f3, 0(x8)	# 738
	flw		f5, -216(x2)	# 738
	fmul	f3, f5, f3	# 738
	addi	x8, x0, 44948	# 738
	fsw		f3, 0(x8)	# 738
	flw		f3, -224(x2)	# 739
	fmul	f6, f2, f3	# 739
	fmul	f4, f6, f4	# 739
	addi	x10, x0, 44952	# 739
	fsw		f4, 0(x10)	# 739
	addi	x11, x0, 44920	# 741
	fsw		f3, 0(x11)	# 741
	addi	x11, x0, 44924	# 742
	flw		f4, -8(x2)	# 742
	fsw		f4, 0(x11)	# 742
	fsub	f6, f0, f1	# 123
	addi	x11, x0, 44928	# 743
	fsw		f6, 0(x11)	# 743
	fsub	f5, f0, f5	# 123
	fmul	f1, f5, f1	# 745
	addi	x11, x0, 44932	# 745
	fsw		f1, 0(x11)	# 745
	fsub	f1, f0, f2	# 123
	addi	x12, x0, 44936	# 746
	fsw		f1, 0(x12)	# 746
	fmul	f1, f5, f3	# 747
	addi	x13, x0, 44940	# 747
	fsw		f1, 0(x13)	# 747
	flw		f1, 0(x5)	# 749
	flw		f2, 0(x4)	# 749
	fsub	f1, f1, f2	# 749
	addi	x4, x0, 44560	# 749
	fsw		f1, 0(x4)	# 749
	flw		f1, 0(x6)	# 750
	flw		f3, 0(x8)	# 750
	fsub	f1, f1, f3	# 750
	addi	x4, x0, 44564	# 750
	fsw		f1, 0(x4)	# 750
	flw		f1, 0(x7)	# 751
	flw		f5, 0(x10)	# 751
	fsub	f1, f1, f5	# 751
	addi	x4, x0, 44568	# 751
	fsw		f1, 0(x4)	# 751
	sw		x1, -228(x2)	# 758
	addi	x2, x2, -232	# 758
	jal		x1, min_caml_read_int	# 758
	addi	x2, x2, 232	# 758
	lw		x1, -228(x2)	# 758
	sw		x1, -228(x2)	# 761
	addi	x2, x2, -232	# 761
	jal		x1, min_caml_read_float	# 761
	addi	x2, x2, 232	# 761
	lw		x1, -228(x2)	# 761
	flw		f6, -204(x2)	# 719
	fmul	f1, f1, f6	# 719
	fsw		f3, -228(x2)	# 762
	fsw		f2, -232(x2)	# 762
	fsw		f1, -236(x2)	# 762
	sw		x1, -240(x2)	# 762
	addi	x2, x2, -244	# 762
	jal		x1, sin.2610.17881	# 762
	addi	x2, x2, 244	# 762
	lw		x1, -240(x2)	# 762
	fsub	f1, f0, f1	# 123
	addi	x4, x0, 44576	# 763
	fsw		f1, 0(x4)	# 763
	sw		x1, -240(x2)	# 764
	addi	x2, x2, -244	# 764
	jal		x1, min_caml_read_float	# 764
	addi	x2, x2, 244	# 764
	lw		x1, -240(x2)	# 764
	fmul	f1, f1, f6	# 719
	flw		f2, -236(x2)	# 765
	sw		x4, -240(x2)	# 765
	fsw		f1, -244(x2)	# 765
	fadd	f1, f0, f2	# 765
	sw		x1, -248(x2)	# 765
	addi	x2, x2, -252	# 765
	jal		x1, cos.2612.17883	# 765
	addi	x2, x2, 252	# 765
	lw		x1, -248(x2)	# 765
	flw		f2, -244(x2)	# 766
	fsw		f1, -248(x2)	# 766
	fadd	f1, f0, f2	# 766
	sw		x1, -252(x2)	# 766
	addi	x2, x2, -256	# 766
	jal		x1, sin.2610.17881	# 766
	addi	x2, x2, 256	# 766
	lw		x1, -252(x2)	# 766
	flw		f2, -248(x2)	# 767
	fmul	f1, f2, f1	# 767
	addi	x4, x0, 44572	# 767
	fsw		f1, 0(x4)	# 767
	flw		f1, -244(x2)	# 768
	sw		x4, -252(x2)	# 768
	sw		x1, -256(x2)	# 768
	addi	x2, x2, -260	# 768
	jal		x1, cos.2612.17883	# 768
	addi	x2, x2, 260	# 768
	lw		x1, -256(x2)	# 768
	flw		f2, -248(x2)	# 769
	fmul	f1, f2, f1	# 769
	addi	x4, x0, 44580	# 769
	fsw		f1, 0(x4)	# 769
	sw		x1, -256(x2)	# 770
	addi	x2, x2, -260	# 770
	jal		x1, min_caml_read_float	# 770
	addi	x2, x2, 260	# 770
	lw		x1, -256(x2)	# 770
	addi	x5, x0, 44584	# 770
	fsw		f1, 0(x5)	# 770
	lw		x5, -4(x2)	# 912
	fsw		f5, -256(x2)	# 912
	sw		x13, -260(x2)	# 912
	sw		x12, -264(x2)	# 912
	sw		x11, -268(x2)	# 912
	sw		x9, -272(x2)	# 912
	sw		x4, -276(x2)	# 912
	addi	x4, x5, 0	# 912
	sw		x1, -280(x2)	# 912
	addi	x2, x2, -284	# 912
	jal		x1, read_object.2751.17887	# 912
	addi	x2, x2, 284	# 912
	lw		x1, -280(x2)	# 912
	lw		x4, -4(x2)	# 949
	sw		x1, -280(x2)	# 949
	addi	x2, x2, -284	# 949
	jal		x1, read_and_network.2759.17893	# 949
	addi	x2, x2, 284	# 949
	lw		x1, -280(x2)	# 949
	lw		x4, -4(x2)	# 950
	sw		x1, -280(x2)	# 950
	addi	x2, x2, -284	# 950
	jal		x1, read_or_network.2757.17891	# 950
	addi	x2, x2, 284	# 950
	lw		x1, -280(x2)	# 950
	addi	x5, x0, 44796	# 950
	sw		x4, 0(x5)	# 950
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
	lw		x4, -84(x2)	# 2160
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
	lw		x4, -120(x2)	# 2162
	lw		x4, 0(x4)	# 2162
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
	lw		x4, -68(x2)	# 2463
	sw		x1, -288(x2)	# 2463
	addi	x2, x2, -292	# 2463
	jal		x1, create_dirvecs.3076.18013	# 2463
	addi	x2, x2, 292	# 2463
	lw		x1, -288(x2)	# 2463
	addi	x4, x0, 9	# 2464
	lw		x5, -4(x2)	# 2464
	addi	x6, x5, 0	# 2464
	sw		x1, -288(x2)	# 2464
	addi	x2, x2, -292	# 2464
	jal		x1, calc_dirvec_rows.3067.18006	# 2464
	addi	x2, x2, 292	# 2464
	lw		x1, -288(x2)	# 2464
	lw		x4, -68(x2)	# 2465
	sw		x1, -288(x2)	# 2465
	addi	x2, x2, -292	# 2465
	jal		x1, init_vecset_constants.3081.18018	# 2465
	addi	x2, x2, 292	# 2465
	lw		x1, -288(x2)	# 2465
	lw		x4, -252(x2)	# 301
	flw		f1, 0(x4)	# 301
	lw		x4, -52(x2)	# 301
	fsw		f1, 0(x4)	# 301
	lw		x4, -240(x2)	# 302
	flw		f2, 0(x4)	# 302
	addi	x4, x0, 45000	# 302
	fsw		f2, 0(x4)	# 302
	lw		x4, -276(x2)	# 303
	flw		f3, 0(x4)	# 303
	addi	x4, x0, 45004	# 303
	fsw		f3, 0(x4)	# 303
	addi	x4, x0, 44260	# 1329
	lw		x4, 0(x4)	# 1329
	addi	x5, x4, -1	# 1329
	lw		x6, -60(x2)	# 1329
	sw		x4, -288(x2)	# 1329
	fsw		f3, -292(x2)	# 1329
	fsw		f2, -296(x2)	# 1329
	fsw		f1, -300(x2)	# 1329
	sw		x5, -304(x2)	# 1329
	addi	x4, x6, 0	# 1329
	sw		x1, -308(x2)	# 1329
	addi	x2, x2, -312	# 1329
	jal		x1, iter_setup_dirvec_constants.2856.17895	# 1329
	addi	x2, x2, 312	# 1329
	lw		x1, -308(x2)	# 1329
	lw		x4, -304(x2)	# 2512
	lw		x5, -4(x2)	# 2512
	ble		x5, x4, ble.34454	# 2512
	jal		x0, ble_cont.34453	# 2512
ble.34454:
	mul		x6, x30, x4	# 2513
	addi	x6, x6, 44308	# 2513
	lw		x6, 0(x6)	# 2513
	lw		x7, 8(x6)	# 405
	lw		x8, -36(x2)	# 2514
	beq		x7, x8, beq.34456	# 2514
	jal		x0, ble_cont.34453	# 2514
beq.34456:
	lw		x7, 28(x6)	# 503
	addi	x7, x7, 0	# 508
	flw		f1, 0(x7)	# 508
	fle		f30, f1, ble_cont.34453	# 125
	lw		x7, 4(x6)	# 395
	lw		x9, 0(x2)	# 2518
	beq		x7, x9, beq.34460	# 2518
	beq		x7, x8, beq.34462	# 2520
	jal		x0, ble_cont.34453	# 2520
beq.34462:
	lw		x7, -68(x2)	# 2497
	mul		x7, x4, x7	# 2497
	addi	x7, x7, 1	# 2497
	addi	x9, x0, 45996	# 2498
	lw		x10, 0(x9)	# 2498
	fsub	f1, f30, f1	# 2499
	lw		x6, 16(x6)	# 463
	addi	x11, x6, 0	# 334
	flw		f2, 0(x11)	# 334
	flw		f3, -300(x2)	# 334
	fmul	f4, f3, f2	# 334
	addi	x11, x6, 4	# 334
	flw		f5, 0(x11)	# 334
	flw		f6, -296(x2)	# 334
	fmul	f7, f6, f5	# 334
	fadd	f4, f4, f7	# 334
	addi	x6, x6, 8	# 334
	flw		f7, 0(x6)	# 334
	flw		f8, -292(x2)	# 334
	fmul	f9, f8, f7	# 334
	fadd	f4, f4, f9	# 334
	lui		x6, %hi(l.27930)	# 2503
	ori		x6, x0, %lo(l.27930)	# 2503
	flw		f9, 0(x6)	# 2503
	fmul	f2, f9, f2	# 2503
	fmul	f2, f2, f4	# 2503
	fsub	f2, f2, f3	# 2503
	fmul	f3, f9, f5	# 2504
	fmul	f3, f3, f4	# 2504
	fsub	f3, f3, f6	# 2504
	fmul	f5, f9, f7	# 2505
	fmul	f4, f5, f4	# 2505
	fsub	f4, f4, f8	# 2505
	lw		x6, -20(x2)	# 2424
	flw		f5, -8(x2)	# 2424
	fsw		f1, -308(x2)	# 2424
	addi	x4, x6, 0	# 2424
	fadd	f1, f0, f5	# 2424
	sw		x1, -312(x2)	# 2424
	addi	x2, x2, -316	# 2424
	jal		x1, min_caml_create_float_array	# 2424
	addi	x2, x2, 316	# 2424
	lw		x1, -312(x2)	# 2424
	addi	x5, x4, 0	# 2424
	lw		x4, -288(x2)	# 2425
	sw		x5, -312(x2)	# 2425
	sw		x1, -316(x2)	# 2425
	addi	x2, x2, -320	# 2425
	jal		x1, min_caml_create_array	# 2425
	addi	x2, x2, 320	# 2425
	lw		x1, -316(x2)	# 2425
	addi	x5, x3, 0	# 2426
	addi	x3, x3, 8	# 2426
	sw		x4, 4(x5)	# 2426
	lw		x4, -312(x2)	# 2426
	sw		x4, 0(x5)	# 2426
	addi	x6, x4, 0	# 282
	fsw		f2, 0(x6)	# 282
	addi	x6, x4, 4	# 283
	fsw		f3, 0(x6)	# 283
	addi	x4, x4, 8	# 284
	fsw		f4, 0(x4)	# 284
	lw		x4, -304(x2)	# 1329
	sw		x9, -316(x2)	# 1329
	sw		x10, -320(x2)	# 1329
	sw		x7, -324(x2)	# 1329
	sw		x5, -328(x2)	# 1329
	addi	x31, x5, 0	# 1329
	addi	x5, x4, 0	# 1329
	addi	x4, x31, 0	# 1329
	sw		x1, -332(x2)	# 1329
	addi	x2, x2, -336	# 1329
	jal		x1, iter_setup_dirvec_constants.2856.17895	# 1329
	addi	x2, x2, 336	# 1329
	lw		x1, -332(x2)	# 1329
	addi	x4, x3, 0	# 2478
	addi	x3, x3, 12	# 2478
	flw		f1, -308(x2)	# 2478
	fsw		f1, 8(x4)	# 2478
	lw		x5, -328(x2)	# 2478
	sw		x5, 4(x4)	# 2478
	lw		x5, -324(x2)	# 2478
	sw		x5, 0(x4)	# 2478
	lw		x5, -320(x2)	# 2478
	mul		x6, x30, x5	# 2478
	addi	x6, x6, 45276	# 2478
	sw		x4, 0(x6)	# 2478
	addi	x4, x5, 1	# 2506
	lw		x5, -316(x2)	# 2506
	sw		x4, 0(x5)	# 2506
	jal		x0, ble_cont.34453	# 2518
beq.34460:
	lw		x6, -68(x2)	# 2483
	mul		x6, x4, x6	# 2483
	addi	x7, x0, 45996	# 2484
	lw		x9, 0(x7)	# 2484
	fsub	f1, f30, f1	# 2485
	flw		f2, -300(x2)	# 123
	fsub	f3, f0, f2	# 123
	flw		f4, -296(x2)	# 123
	fsub	f5, f0, f4	# 123
	flw		f6, -292(x2)	# 123
	fsub	f7, f0, f6	# 123
	addi	x10, x6, 1	# 2489
	lw		x11, -20(x2)	# 2424
	flw		f8, -8(x2)	# 2424
	fsw		f1, -332(x2)	# 2424
	addi	x4, x11, 0	# 2424
	fadd	f1, f0, f8	# 2424
	sw		x1, -336(x2)	# 2424
	addi	x2, x2, -340	# 2424
	jal		x1, min_caml_create_float_array	# 2424
	addi	x2, x2, 340	# 2424
	lw		x1, -336(x2)	# 2424
	addi	x5, x4, 0	# 2424
	lw		x4, -288(x2)	# 2425
	sw		x6, -336(x2)	# 2425
	sw		x5, -340(x2)	# 2425
	sw		x1, -344(x2)	# 2425
	addi	x2, x2, -348	# 2425
	jal		x1, min_caml_create_array	# 2425
	addi	x2, x2, 348	# 2425
	lw		x1, -344(x2)	# 2425
	addi	x5, x3, 0	# 2426
	addi	x3, x3, 8	# 2426
	sw		x4, 4(x5)	# 2426
	lw		x4, -340(x2)	# 2426
	sw		x4, 0(x5)	# 2426
	addi	x6, x4, 0	# 282
	fsw		f2, 0(x6)	# 282
	addi	x6, x4, 4	# 283
	fsw		f5, 0(x6)	# 283
	addi	x4, x4, 8	# 284
	fsw		f7, 0(x4)	# 284
	lw		x4, -304(x2)	# 1329
	sw		x7, -344(x2)	# 1329
	fsw		f5, -348(x2)	# 1329
	fsw		f7, -352(x2)	# 1329
	fsw		f3, -356(x2)	# 1329
	sw		x9, -360(x2)	# 1329
	sw		x10, -364(x2)	# 1329
	sw		x5, -368(x2)	# 1329
	addi	x31, x5, 0	# 1329
	addi	x5, x4, 0	# 1329
	addi	x4, x31, 0	# 1329
	sw		x1, -372(x2)	# 1329
	addi	x2, x2, -376	# 1329
	jal		x1, iter_setup_dirvec_constants.2856.17895	# 1329
	addi	x2, x2, 376	# 1329
	lw		x1, -372(x2)	# 1329
	addi	x4, x3, 0	# 2478
	addi	x3, x3, 12	# 2478
	flw		f1, -332(x2)	# 2478
	fsw		f1, 8(x4)	# 2478
	lw		x5, -368(x2)	# 2478
	sw		x5, 4(x4)	# 2478
	lw		x5, -364(x2)	# 2478
	sw		x5, 0(x4)	# 2478
	lw		x5, -360(x2)	# 2478
	mul		x6, x30, x5	# 2478
	addi	x6, x6, 45276	# 2478
	sw		x4, 0(x6)	# 2478
	addi	x4, x5, 1	# 2490
	lw		x6, -336(x2)	# 2490
	addi	x7, x6, 2	# 2490
	lw		x8, -20(x2)	# 2424
	flw		f2, -8(x2)	# 2424
	sw		x4, -372(x2)	# 2424
	addi	x4, x8, 0	# 2424
	fadd	f1, f0, f2	# 2424
	sw		x1, -376(x2)	# 2424
	addi	x2, x2, -380	# 2424
	jal		x1, min_caml_create_float_array	# 2424
	addi	x2, x2, 380	# 2424
	lw		x1, -376(x2)	# 2424
	addi	x5, x4, 0	# 2424
	lw		x4, -288(x2)	# 2425
	sw		x5, -376(x2)	# 2425
	sw		x1, -380(x2)	# 2425
	addi	x2, x2, -384	# 2425
	jal		x1, min_caml_create_array	# 2425
	addi	x2, x2, 384	# 2425
	lw		x1, -380(x2)	# 2425
	addi	x5, x3, 0	# 2426
	addi	x3, x3, 8	# 2426
	sw		x4, 4(x5)	# 2426
	lw		x4, -376(x2)	# 2426
	sw		x4, 0(x5)	# 2426
	addi	x6, x4, 0	# 282
	flw		f1, -356(x2)	# 282
	fsw		f1, 0(x6)	# 282
	addi	x6, x4, 4	# 283
	flw		f2, -296(x2)	# 283
	fsw		f2, 0(x6)	# 283
	addi	x4, x4, 8	# 284
	flw		f2, -352(x2)	# 284
	fsw		f2, 0(x4)	# 284
	lw		x4, -304(x2)	# 1329
	sw		x7, -380(x2)	# 1329
	sw		x5, -384(x2)	# 1329
	addi	x31, x5, 0	# 1329
	addi	x5, x4, 0	# 1329
	addi	x4, x31, 0	# 1329
	sw		x1, -388(x2)	# 1329
	addi	x2, x2, -392	# 1329
	jal		x1, iter_setup_dirvec_constants.2856.17895	# 1329
	addi	x2, x2, 392	# 1329
	lw		x1, -388(x2)	# 1329
	addi	x4, x3, 0	# 2478
	addi	x3, x3, 12	# 2478
	flw		f1, -332(x2)	# 2478
	fsw		f1, 8(x4)	# 2478
	lw		x5, -384(x2)	# 2478
	sw		x5, 4(x4)	# 2478
	lw		x5, -380(x2)	# 2478
	sw		x5, 0(x4)	# 2478
	lw		x5, -372(x2)	# 2478
	mul		x5, x30, x5	# 2478
	addi	x5, x5, 45276	# 2478
	sw		x4, 0(x5)	# 2478
	lw		x4, -360(x2)	# 2491
	addi	x5, x4, 2	# 2491
	lw		x6, -336(x2)	# 2491
	addi	x6, x6, 3	# 2491
	lw		x7, -20(x2)	# 2424
	flw		f2, -8(x2)	# 2424
	sw		x5, -388(x2)	# 2424
	addi	x4, x7, 0	# 2424
	fadd	f1, f0, f2	# 2424
	sw		x1, -392(x2)	# 2424
	addi	x2, x2, -396	# 2424
	jal		x1, min_caml_create_float_array	# 2424
	addi	x2, x2, 396	# 2424
	lw		x1, -392(x2)	# 2424
	addi	x5, x4, 0	# 2424
	lw		x4, -288(x2)	# 2425
	sw		x6, -392(x2)	# 2425
	sw		x5, -396(x2)	# 2425
	sw		x1, -400(x2)	# 2425
	addi	x2, x2, -404	# 2425
	jal		x1, min_caml_create_array	# 2425
	addi	x2, x2, 404	# 2425
	lw		x1, -400(x2)	# 2425
	addi	x5, x3, 0	# 2426
	addi	x3, x3, 8	# 2426
	sw		x4, 4(x5)	# 2426
	lw		x4, -396(x2)	# 2426
	sw		x4, 0(x5)	# 2426
	addi	x6, x4, 0	# 282
	flw		f1, -356(x2)	# 282
	fsw		f1, 0(x6)	# 282
	addi	x6, x4, 4	# 283
	flw		f1, -348(x2)	# 283
	fsw		f1, 0(x6)	# 283
	addi	x4, x4, 8	# 284
	flw		f1, -292(x2)	# 284
	fsw		f1, 0(x4)	# 284
	lw		x4, -304(x2)	# 1329
	sw		x5, -400(x2)	# 1329
	addi	x31, x5, 0	# 1329
	addi	x5, x4, 0	# 1329
	addi	x4, x31, 0	# 1329
	sw		x1, -404(x2)	# 1329
	addi	x2, x2, -408	# 1329
	jal		x1, iter_setup_dirvec_constants.2856.17895	# 1329
	addi	x2, x2, 408	# 1329
	lw		x1, -404(x2)	# 1329
	addi	x4, x3, 0	# 2478
	addi	x3, x3, 12	# 2478
	flw		f1, -332(x2)	# 2478
	fsw		f1, 8(x4)	# 2478
	lw		x5, -400(x2)	# 2478
	sw		x5, 4(x4)	# 2478
	lw		x5, -392(x2)	# 2478
	sw		x5, 0(x4)	# 2478
	lw		x5, -388(x2)	# 2478
	mul		x5, x30, x5	# 2478
	addi	x5, x5, 45276	# 2478
	sw		x4, 0(x5)	# 2478
	lw		x4, -360(x2)	# 2492
	addi	x4, x4, 3	# 2492
	lw		x5, -344(x2)	# 2492
	sw		x4, 0(x5)	# 2492
ble_cont.34453:
	lw		x4, -80(x2)	# 2260
	flw		f1, 0(x4)	# 2260
	lw		x4, -272(x2)	# 2260
	lw		x4, 0(x4)	# 2260
	lw		x5, -4(x2)	# 2260
	sub		x4, x5, x4	# 2260
	fsw		f1, -404(x2)	# 2260
	sw		x1, -408(x2)	# 2260
	addi	x2, x2, -412	# 2260
	jal		x1, min_caml_float_of_int	# 2260
	addi	x2, x2, 412	# 2260
	lw		x1, -408(x2)	# 2260
	flw		f2, -404(x2)	# 2260
	fmul	f1, f2, f1	# 2260
	lw		x4, -268(x2)	# 2263
	flw		f2, 0(x4)	# 2263
	fmul	f2, f1, f2	# 2263
	flw		f3, -232(x2)	# 2263
	fadd	f2, f2, f3	# 2263
	lw		x4, -264(x2)	# 2264
	flw		f3, 0(x4)	# 2264
	fmul	f3, f1, f3	# 2264
	flw		f4, -228(x2)	# 2264
	fadd	f3, f3, f4	# 2264
	lw		x4, -260(x2)	# 2265
	flw		f4, 0(x4)	# 2265
	fmul	f1, f1, f4	# 2265
	flw		f4, -256(x2)	# 2265
	fadd	f1, f1, f4	# 2265
	lw		x4, -84(x2)	# 2266
	addi	x5, x4, -1	# 2266
	lw		x4, -164(x2)	# 2266
	lw		x6, -4(x2)	# 2266
	fadd	f31, f0, f3	# 2266
	fadd	f3, f0, f1	# 2266
	fadd	f1, f0, f2	# 2266
	fadd	f2, f0, f31	# 2266
	sw		x1, -408(x2)	# 2266
	addi	x2, x2, -412	# 2266
	jal		x1, pretrace_pixels.3015.17969	# 2266
	addi	x2, x2, 412	# 2266
	lw		x1, -408(x2)	# 2266
	lw		x4, -4(x2)	# 2549
	lw		x5, -128(x2)	# 2549
	lw		x6, -164(x2)	# 2549
	lw		x7, -200(x2)	# 2549
	lw		x8, -36(x2)	# 2549
	lw		x9, -20(x2)	# 2549
	sw		x1, -408(x2)	# 2549
	addi	x2, x2, -412	# 2549
	jal		x1, scan_line.3033.17983	# 2549
	addi	x2, x2, 412	# 2549
	lw		x1, -408(x2)	# 2549
	EXIT	
