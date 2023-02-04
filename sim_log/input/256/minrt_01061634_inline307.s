l.25729:	# 1.000000
	.word	1.000000
l.25768:	# 0.000000
	.word	0.000000
l.25742:	# 0.500000
	.word	0.500000
l.25828:	# -1.000000
	.word	-1.000000
l.27151:	# 3.141593
	.word	3.141593
l.27147:	# 15.000000
	.word	15.000000
l.27149:	# 30.000000
	.word	30.000000
l.27177:	# 10.000000
	.word	10.000000
l.26395:	# -0.100000
	.word	-0.100000
l.25796:	# 0.017453
	.word	0.017453
l.26940:	# 100000000.000000
	.word	100000000.000000
l.27187:	# 0.250000
	.word	0.250000
l.27165:	# 0.300000
	.word	0.300000
l.27198:	# 0.050000
	.word	0.050000
l.27200:	# 20.000000
	.word	20.000000
l.25759:	# 0.200000
	.word	0.200000
l.27380:	# 0.100000
	.word	0.100000
l.27162:	# 0.150000
	.word	0.150000
l.27145:	# 0.000100
	.word	0.000100
l.26268:	# 0.010000
	.word	0.010000
l.25888:	# 2.000000
	.word	2.000000
l.28434:	# 0.900000
	.word	0.900000
l.25746:	# 0.001370
	.word	0.001370
l.25731:	# 4.000000
	.word	4.000000
l.25744:	# 0.041664
	.word	0.041664
l.26266:	# -0.200000
	.word	-0.200000
l.25761:	# 0.142857
	.word	0.142857
l.25763:	# 0.111111
	.word	0.111111
l.25765:	# 0.089764
	.word	0.089764
l.28655:	# 200.000000
	.word	200.000000
l.28659:	# -200.000000
	.word	-200.000000
l.27433:	# -150.000000
	.word	-150.000000
l.27250:	# 0.003906
	.word	0.003906
l.27278:	# -2.000000
	.word	-2.000000
l.25757:	# 0.333333
	.word	0.333333
l.25755:	# 0.437500
	.word	0.437500
l.25752:	# 2.437500
	.word	2.437500
l.25739:	# 0.000196
	.word	0.000196
l.25737:	# 0.008333
	.word	0.008333
l.25735:	# 0.166667
	.word	0.166667
l.28509:	# 128.000000
	.word	128.000000
l.28499:	# 0.785398
	.word	0.785398
l.28497:	# 1.570796
	.word	1.570796
l.28495:	# 6.283185
	.word	6.283185
l.28493:	# 3.141593
	.word	3.141593
l.28478:	# 1000000000.000000
	.word	1000000000.000000
l.28474:	# 255.000000
	.word	255.000000
l.27654:	# 150.000000
	.word	150.000000
int_of_float_rem.2529.17724:
	lw		x5, 4(x29)	# 135
	fadd	f2, f0, f16	# 135
	fle		x31, f2, f1	# 135
	beq		x31, x0, fle_else.31658	# 135
	fsub	f1, f1, f2	# 135
	add		x4, x4, x5	# 135
	lw		x31, 0(x29)	# 135
	jalr	x0, x31, 0	# 135
fle_else.31658:
	jalr	x0, x1, 0	# 135
int_of_float_four.2532.17727:
	lw		x5, 4(x29)	# 137
	fadd	f2, f0, f30	# 137
	fle		x31, f2, f1	# 137
	beq		x31, x0, fle_else.31659	# 137
	fsub	f1, f1, f2	# 137
	addi	x4, x4, 4	# 137
	lw		x31, 0(x29)	# 137
	jalr	x0, x31, 0	# 137
fle_else.31659:
	addi	x29, x5, 0
	lw		x31, 0(x29)	# 137
	jalr	x0, x31, 0	# 137
int_of_float.2535.17730:
	lw		x4, 12(x29)	# 139
	lw		x5, 8(x29)	# 139
	flw		f2, 4(x29)	# 139
	fle		x31, f2, f1	# 139
	beq		x31, x0, fle_else.31660	# 139
	addi	x29, x4, 0
	addi	x4, x5, 0
	lw		x31, 0(x29)	# 139
	jalr	x0, x31, 0	# 139
fle_else.31660:
	fsub	f1, f0, f1	# 140
	sw		x1, 0(x2)	# 140
	addi	x2, x2, -4	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 4	# 140
	lw		x1, 0(x2)	# 140
	sub		x4, x0, x4	# 140
	jalr	x0, x1, 0	# 140
float_of_int_rem.2537.17732:
	lw		x5, 4(x29)	# 146
	ble		x5, x4, ble.31661	# 146
	jalr	x0, x1, 0	# 146
ble.31661:
	sub		x4, x4, x5	# 146
	fadd	f2, f0, f16	# 146
	fadd	f1, f1, f2	# 146
	lw		x31, 0(x29)	# 146
	jalr	x0, x31, 0	# 146
float_of_int_four.2540.17735:
	lw		x5, 4(x29)	# 148
	addi	x6, x0, 4	# 148
	ble		x6, x4, ble.31662	# 148
	addi	x29, x5, 0
	lw		x31, 0(x29)	# 148
	jalr	x0, x31, 0	# 148
ble.31662:
	sub		x4, x4, x6	# 148
	fadd	f2, f0, f30	# 148
	fadd	f1, f1, f2	# 148
	lw		x31, 0(x29)	# 148
	jalr	x0, x31, 0	# 148
float_of_int.2543.17738:
	lw		x5, 12(x29)	# 150
	lw		x6, 8(x29)	# 150
	flw		f1, 4(x29)	# 150
	ble		x6, x4, ble.31663	# 150
	sub		x4, x0, x4	# 151
	sw		x1, 0(x2)	# 151
	addi	x2, x2, -4	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 4	# 151
	lw		x1, 0(x2)	# 151
	fsub	f1, f0, f1	# 151
	jalr	x0, x1, 0	# 151
ble.31663:
	addi	x29, x5, 0
	lw		x31, 0(x29)	# 150
	jalr	x0, x31, 0	# 150
sin.2555.17744:
	flw		f2, 20(x29)	# 181
	flw		f3, 16(x29)	# 181
	flw		f4, 12(x29)	# 181
	flw		f5, 8(x29)	# 181
	flw		f6, 4(x29)	# 181
	fle		x31, f6, f1	# 181
	beq		x31, x0, fle_else.31664	# 181
	fle		x31, f4, f1	# 182
	beq		x31, x0, fle_else.31665	# 182
	fsub	f1, f1, f4	# 182
	lw		x31, 0(x29)	# 182
	jalr	x0, x31, 0	# 182
fle_else.31665:
	fle		x31, f5, f1	# 183
	beq		x31, x0, fle_else.31666	# 183
	fsub	f1, f1, f5	# 183
	sw		x1, 0(x2)	# 183
	addi	x2, x2, -4	# 183
	lw		x31, 0(x29)	# 183
	jalr	x1, x31, 0	# 183
	addi	x2, x2, 4	# 183
	lw		x1, 0(x2)	# 183
	fsub	f1, f0, f1	# 183
	jalr	x0, x1, 0	# 183
fle_else.31666:
	fle		x31, f1, f3	# 184
	beq		x31, x0, fle_else.31667	# 184
	fle		x31, f2, f1	# 185
	beq		x31, x0, fle_else.31668	# 185
	fsub	f1, f3, f1	# 185
	fmul	f1, f1, f1	# 176
	fmul	f2, f1, f1	# 177
	fadd	f3, f0, f16	# 178
	fadd	f4, f0, f17	# 178
	fmul	f4, f4, f1	# 178
	fsub	f3, f3, f4	# 178
	lui		x4, %hi(l.25744)	# 178
	ori		x4, x0, %lo(l.25744)	# 178
	flw		f4, 0(x4)	# 178
	fmul	f4, f4, f2	# 178
	fadd	f3, f3, f4	# 178
	lui		x4, %hi(l.25746)	# 178
	ori		x4, x0, %lo(l.25746)	# 178
	flw		f4, 0(x4)	# 178
	fmul	f1, f4, f1	# 178
	fmul	f1, f1, f2	# 178
	fsub	f1, f3, f1	# 178
	jalr	x0, x1, 0	# 178
fle_else.31668:
	fmul	f2, f1, f1	# 171
	fmul	f3, f1, f2	# 172
	lui		x4, %hi(l.25735)	# 173
	ori		x4, x0, %lo(l.25735)	# 173
	flw		f4, 0(x4)	# 173
	fmul	f4, f4, f3	# 173
	fsub	f1, f1, f4	# 173
	lui		x4, %hi(l.25737)	# 173
	ori		x4, x0, %lo(l.25737)	# 173
	flw		f4, 0(x4)	# 173
	fmul	f4, f4, f2	# 173
	fmul	f4, f4, f3	# 173
	fadd	f1, f1, f4	# 173
	lui		x4, %hi(l.25739)	# 173
	ori		x4, x0, %lo(l.25739)	# 173
	flw		f4, 0(x4)	# 173
	fmul	f4, f4, f2	# 173
	fmul	f2, f4, f2	# 173
	fmul	f2, f2, f3	# 173
	fsub	f1, f1, f2	# 173
	jalr	x0, x1, 0	# 173
fle_else.31667:
	fsub	f1, f5, f1	# 184
	lw		x31, 0(x29)	# 184
	jalr	x0, x31, 0	# 184
fle_else.31664:
	fsub	f1, f0, f1	# 181
	sw		x1, 0(x2)	# 181
	addi	x2, x2, -4	# 181
	lw		x31, 0(x29)	# 181
	jalr	x1, x31, 0	# 181
	addi	x2, x2, 4	# 181
	lw		x1, 0(x2)	# 181
	fsub	f1, f0, f1	# 181
	jalr	x0, x1, 0	# 181
cos.2557.17746:
	lw		x4, 16(x29)	# 189
	flw		f2, 12(x29)	# 189
	flw		f3, 8(x29)	# 189
	flw		f4, 4(x29)	# 189
	fle		x31, f4, f1	# 189
	beq		x31, x0, fle_else.31669	# 189
	fle		x31, f1, f2	# 190
	beq		x31, x0, fle_else.31670	# 190
	fmul	f1, f1, f1	# 176
	fmul	f2, f1, f1	# 177
	fadd	f3, f0, f16	# 178
	fadd	f4, f0, f17	# 178
	fmul	f4, f4, f1	# 178
	fsub	f3, f3, f4	# 178
	lui		x4, %hi(l.25744)	# 178
	ori		x4, x0, %lo(l.25744)	# 178
	flw		f4, 0(x4)	# 178
	fmul	f4, f4, f2	# 178
	fadd	f3, f3, f4	# 178
	lui		x4, %hi(l.25746)	# 178
	ori		x4, x0, %lo(l.25746)	# 178
	flw		f4, 0(x4)	# 178
	fmul	f1, f4, f1	# 178
	fmul	f1, f1, f2	# 178
	fsub	f1, f3, f1	# 178
	jalr	x0, x1, 0	# 178
fle_else.31670:
	fsub	f1, f3, f1	# 190
	addi	x29, x4, 0
	lw		x31, 0(x29)	# 190
	jalr	x0, x31, 0	# 190
fle_else.31669:
	fsub	f1, f0, f1	# 189
	lw		x31, 0(x29)	# 189
	jalr	x0, x31, 0	# 189
atan.2559.17748:
	flw		f2, 12(x29)	# 194
	flw		f3, 8(x29)	# 194
	flw		f4, 4(x29)	# 194
	fle		x31, f4, f1	# 194
	beq		x31, x0, fle_else.31671	# 194
	lui		x4, %hi(l.25752)	# 195
	ori		x4, x0, %lo(l.25752)	# 195
	flw		f4, 0(x4)	# 195
	fle		x31, f1, f4	# 195
	beq		x31, x0, fle_else.31672	# 195
	lui		x4, %hi(l.25755)	# 196
	ori		x4, x0, %lo(l.25755)	# 196
	flw		f3, 0(x4)	# 196
	fle		x31, f3, f1	# 196
	beq		x31, x0, fle_else.31673	# 196
	fadd	f3, f0, f16	# 196
	fsub	f4, f1, f3	# 196
	fadd	f1, f1, f3	# 196
	fdiv	f1, f4, f1	# 196
	fsw		f2, 0(x2)	# 196
	sw		x1, -4(x2)	# 196
	addi	x2, x2, -8	# 196
	lw		x31, 0(x29)	# 196
	jalr	x1, x31, 0	# 196
	addi	x2, x2, 8	# 196
	lw		x1, -4(x2)	# 196
	flw		f2, 0(x2)	# 196
	fadd	f1, f2, f1	# 196
	jalr	x0, x1, 0	# 196
fle_else.31673:
	fmul	f2, f1, f1	# 198
	fmul	f3, f1, f2	# 199
	fmul	f4, f2, f2	# 200
	lui		x4, %hi(l.25757)	# 201
	ori		x4, x0, %lo(l.25757)	# 201
	flw		f5, 0(x4)	# 201
	fmul	f5, f5, f3	# 201
	fsub	f1, f1, f5	# 201
	lui		x4, %hi(l.25759)	# 201
	ori		x4, x0, %lo(l.25759)	# 201
	flw		f5, 0(x4)	# 201
	fmul	f5, f5, f2	# 201
	fmul	f5, f5, f3	# 201
	fadd	f1, f1, f5	# 201
	lui		x4, %hi(l.25761)	# 201
	ori		x4, x0, %lo(l.25761)	# 201
	flw		f5, 0(x4)	# 201
	fmul	f5, f5, f4	# 201
	fmul	f5, f5, f3	# 201
	fsub	f1, f1, f5	# 201
	lui		x4, %hi(l.25763)	# 202
	ori		x4, x0, %lo(l.25763)	# 202
	flw		f5, 0(x4)	# 202
	fmul	f2, f5, f2	# 202
	fmul	f2, f2, f4	# 202
	fmul	f2, f2, f3	# 202
	fadd	f1, f1, f2	# 201
	lui		x4, %hi(l.25765)	# 202
	ori		x4, x0, %lo(l.25765)	# 202
	flw		f2, 0(x4)	# 202
	fmul	f2, f2, f4	# 202
	fmul	f2, f2, f4	# 202
	fmul	f2, f2, f3	# 202
	fsub	f1, f1, f2	# 201
	jalr	x0, x1, 0	# 201
fle_else.31672:
	fadd	f2, f0, f16	# 195
	fdiv	f1, f2, f1	# 195
	fsw		f3, -4(x2)	# 195
	sw		x1, -8(x2)	# 195
	addi	x2, x2, -12	# 195
	lw		x31, 0(x29)	# 195
	jalr	x1, x31, 0	# 195
	addi	x2, x2, 12	# 195
	lw		x1, -8(x2)	# 195
	flw		f2, -4(x2)	# 195
	fsub	f1, f2, f1	# 195
	jalr	x0, x1, 0	# 195
fle_else.31671:
	fsub	f1, f0, f1	# 194
	sw		x1, -8(x2)	# 194
	addi	x2, x2, -12	# 194
	lw		x31, 0(x29)	# 194
	jalr	x1, x31, 0	# 194
	addi	x2, x2, 12	# 194
	lw		x1, -8(x2)	# 194
	fsub	f1, f0, f1	# 194
	jalr	x0, x1, 0	# 194
read_object.2696.17750:
	lw		x5, 32(x29)	# 877
	lw		x6, 28(x29)	# 877
	lw		x7, 24(x29)	# 877
	lw		x8, 20(x29)	# 877
	lw		x9, 16(x29)	# 877
	lw		x10, 12(x29)	# 877
	lw		x11, 8(x29)	# 877
	flw		f1, 4(x29)	# 877
	ble		x9, x4, ble.31674	# 877
	sw		x29, 0(x2)	# 795
	sw		x5, -4(x2)	# 795
	sw		x6, -8(x2)	# 795
	sw		x7, -12(x2)	# 795
	sw		x11, -16(x2)	# 795
	sw		x10, -20(x2)	# 795
	sw		x4, -24(x2)	# 795
	fsw		f1, -28(x2)	# 795
	sw		x8, -32(x2)	# 795
	sw		x1, -36(x2)	# 795
	addi	x2, x2, -40	# 795
	jal		x1, min_caml_read_int	# 795
	addi	x2, x2, 40	# 795
	lw		x1, -36(x2)	# 795
	lw		x5, -32(x2)	# 796
	beq		x4, x5, beq.31676	# 796
	sw		x4, -36(x2)	# 798
	sw		x1, -40(x2)	# 798
	addi	x2, x2, -44	# 798
	jal		x1, min_caml_read_int	# 798
	addi	x2, x2, 44	# 798
	lw		x1, -40(x2)	# 798
	sw		x4, -40(x2)	# 799
	sw		x1, -44(x2)	# 799
	addi	x2, x2, -48	# 799
	jal		x1, min_caml_read_int	# 799
	addi	x2, x2, 48	# 799
	lw		x1, -44(x2)	# 799
	sw		x4, -44(x2)	# 800
	sw		x1, -48(x2)	# 800
	addi	x2, x2, -52	# 800
	jal		x1, min_caml_read_int	# 800
	addi	x2, x2, 52	# 800
	lw		x1, -48(x2)	# 800
	addi	x5, x0, 3	# 802
	fadd	f1, f0, f0	# 802
	sw		x4, -48(x2)	# 802
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 802
	addi	x2, x2, -56	# 802
	jal		x1, min_caml_create_float_array	# 802
	addi	x2, x2, 56	# 802
	lw		x1, -52(x2)	# 802
	addi	x5, x0, 0	# 803
	sw		x4, -52(x2)	# 803
	sw		x5, -56(x2)	# 803
	sw		x1, -60(x2)	# 803
	addi	x2, x2, -64	# 803
	jal		x1, min_caml_read_float	# 803
	addi	x2, x2, 64	# 803
	lw		x1, -60(x2)	# 803
	lw		x4, -56(x2)	# 803
	mul		x4, x30, x4	# 803
	lw		x5, -52(x2)	# 803
	add		x4, x5, x4	# 803
	fsw		f1, 0(x4)	# 803
	addi	x4, x0, 1	# 804
	sw		x4, -60(x2)	# 804
	sw		x1, -64(x2)	# 804
	addi	x2, x2, -68	# 804
	jal		x1, min_caml_read_float	# 804
	addi	x2, x2, 68	# 804
	lw		x1, -64(x2)	# 804
	lw		x4, -60(x2)	# 804
	mul		x4, x30, x4	# 804
	lw		x5, -52(x2)	# 804
	add		x4, x5, x4	# 804
	fsw		f1, 0(x4)	# 804
	addi	x4, x0, 2	# 805
	sw		x4, -64(x2)	# 805
	sw		x1, -68(x2)	# 805
	addi	x2, x2, -72	# 805
	jal		x1, min_caml_read_float	# 805
	addi	x2, x2, 72	# 805
	lw		x1, -68(x2)	# 805
	lw		x4, -64(x2)	# 805
	mul		x4, x30, x4	# 805
	lw		x5, -52(x2)	# 805
	add		x4, x5, x4	# 805
	fsw		f1, 0(x4)	# 805
	addi	x4, x0, 3	# 807
	fadd	f1, f0, f0	# 807
	sw		x1, -68(x2)	# 807
	addi	x2, x2, -72	# 807
	jal		x1, min_caml_create_float_array	# 807
	addi	x2, x2, 72	# 807
	lw		x1, -68(x2)	# 807
	addi	x5, x0, 0	# 808
	sw		x4, -68(x2)	# 808
	sw		x5, -72(x2)	# 808
	sw		x1, -76(x2)	# 808
	addi	x2, x2, -80	# 808
	jal		x1, min_caml_read_float	# 808
	addi	x2, x2, 80	# 808
	lw		x1, -76(x2)	# 808
	lw		x4, -72(x2)	# 808
	mul		x4, x30, x4	# 808
	lw		x5, -68(x2)	# 808
	add		x4, x5, x4	# 808
	fsw		f1, 0(x4)	# 808
	addi	x4, x0, 1	# 809
	sw		x4, -76(x2)	# 809
	sw		x1, -80(x2)	# 809
	addi	x2, x2, -84	# 809
	jal		x1, min_caml_read_float	# 809
	addi	x2, x2, 84	# 809
	lw		x1, -80(x2)	# 809
	lw		x4, -76(x2)	# 809
	mul		x4, x30, x4	# 809
	lw		x5, -68(x2)	# 809
	add		x4, x5, x4	# 809
	fsw		f1, 0(x4)	# 809
	addi	x4, x0, 2	# 810
	sw		x4, -80(x2)	# 810
	sw		x1, -84(x2)	# 810
	addi	x2, x2, -88	# 810
	jal		x1, min_caml_read_float	# 810
	addi	x2, x2, 88	# 810
	lw		x1, -84(x2)	# 810
	lw		x4, -80(x2)	# 810
	mul		x4, x30, x4	# 810
	lw		x5, -68(x2)	# 810
	add		x4, x5, x4	# 810
	fsw		f1, 0(x4)	# 810
	sw		x1, -84(x2)	# 812
	addi	x2, x2, -88	# 812
	jal		x1, min_caml_read_float	# 812
	addi	x2, x2, 88	# 812
	lw		x1, -84(x2)	# 812
	flw		f2, -28(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31678	# 122
	addi	x4, x0, 0	# 122
	jal		x0, fle_cont.31677	# 122
fle_else.31678:
	addi	x4, x0, 1	# 122
fle_cont.31677:
	addi	x5, x0, 2	# 814
	fadd	f3, f0, f0	# 814
	fsw		f1, -84(x2)	# 814
	sw		x4, -88(x2)	# 814
	addi	x4, x5, 0
	fadd	f1, f0, f3
	sw		x1, -92(x2)	# 814
	addi	x2, x2, -96	# 814
	jal		x1, min_caml_create_float_array	# 814
	addi	x2, x2, 96	# 814
	lw		x1, -92(x2)	# 814
	addi	x5, x0, 0	# 815
	sw		x4, -92(x2)	# 815
	sw		x5, -96(x2)	# 815
	sw		x1, -100(x2)	# 815
	addi	x2, x2, -104	# 815
	jal		x1, min_caml_read_float	# 815
	addi	x2, x2, 104	# 815
	lw		x1, -100(x2)	# 815
	lw		x4, -96(x2)	# 815
	mul		x4, x30, x4	# 815
	lw		x5, -92(x2)	# 815
	add		x4, x5, x4	# 815
	fsw		f1, 0(x4)	# 815
	addi	x4, x0, 1	# 816
	sw		x4, -100(x2)	# 816
	sw		x1, -104(x2)	# 816
	addi	x2, x2, -108	# 816
	jal		x1, min_caml_read_float	# 816
	addi	x2, x2, 108	# 816
	lw		x1, -104(x2)	# 816
	lw		x4, -100(x2)	# 816
	mul		x4, x30, x4	# 816
	lw		x5, -92(x2)	# 816
	add		x4, x5, x4	# 816
	fsw		f1, 0(x4)	# 816
	addi	x4, x0, 3	# 818
	fadd	f1, f0, f0	# 818
	sw		x1, -104(x2)	# 818
	addi	x2, x2, -108	# 818
	jal		x1, min_caml_create_float_array	# 818
	addi	x2, x2, 108	# 818
	lw		x1, -104(x2)	# 818
	addi	x5, x0, 0	# 819
	sw		x4, -104(x2)	# 819
	sw		x5, -108(x2)	# 819
	sw		x1, -112(x2)	# 819
	addi	x2, x2, -116	# 819
	jal		x1, min_caml_read_float	# 819
	addi	x2, x2, 116	# 819
	lw		x1, -112(x2)	# 819
	lw		x4, -108(x2)	# 819
	mul		x4, x30, x4	# 819
	lw		x5, -104(x2)	# 819
	add		x4, x5, x4	# 819
	fsw		f1, 0(x4)	# 819
	addi	x4, x0, 1	# 820
	sw		x4, -112(x2)	# 820
	sw		x1, -116(x2)	# 820
	addi	x2, x2, -120	# 820
	jal		x1, min_caml_read_float	# 820
	addi	x2, x2, 120	# 820
	lw		x1, -116(x2)	# 820
	lw		x4, -112(x2)	# 820
	mul		x4, x30, x4	# 820
	lw		x5, -104(x2)	# 820
	add		x4, x5, x4	# 820
	fsw		f1, 0(x4)	# 820
	addi	x4, x0, 2	# 821
	sw		x4, -116(x2)	# 821
	sw		x1, -120(x2)	# 821
	addi	x2, x2, -124	# 821
	jal		x1, min_caml_read_float	# 821
	addi	x2, x2, 124	# 821
	lw		x1, -120(x2)	# 821
	lw		x4, -116(x2)	# 821
	mul		x4, x30, x4	# 821
	lw		x5, -104(x2)	# 821
	add		x4, x5, x4	# 821
	fsw		f1, 0(x4)	# 821
	addi	x4, x0, 3	# 823
	fadd	f1, f0, f0	# 823
	sw		x1, -120(x2)	# 823
	addi	x2, x2, -124	# 823
	jal		x1, min_caml_create_float_array	# 823
	addi	x2, x2, 124	# 823
	lw		x1, -120(x2)	# 823
	addi	x5, x0, 0	# 824
	lw		x6, -48(x2)	# 824
	sw		x4, -120(x2)	# 824
	beq		x6, x5, beq_cont.31679	# 824
	addi	x5, x0, 0	# 826
	sw		x5, -124(x2)	# 826
	sw		x1, -128(x2)	# 826
	addi	x2, x2, -132	# 826
	jal		x1, min_caml_read_float	# 826
	addi	x2, x2, 132	# 826
	lw		x1, -128(x2)	# 826
	fadd	f2, f0, f24	# 693
	fmul	f1, f1, f2	# 693
	lw		x4, -124(x2)	# 826
	mul		x4, x30, x4	# 826
	lw		x5, -120(x2)	# 826
	add		x4, x5, x4	# 826
	fsw		f1, 0(x4)	# 826
	addi	x4, x0, 1	# 827
	sw		x4, -128(x2)	# 827
	sw		x1, -132(x2)	# 827
	addi	x2, x2, -136	# 827
	jal		x1, min_caml_read_float	# 827
	addi	x2, x2, 136	# 827
	lw		x1, -132(x2)	# 827
	fadd	f2, f0, f24	# 693
	fmul	f1, f1, f2	# 693
	lw		x4, -128(x2)	# 827
	mul		x4, x30, x4	# 827
	lw		x5, -120(x2)	# 827
	add		x4, x5, x4	# 827
	fsw		f1, 0(x4)	# 827
	addi	x4, x0, 2	# 828
	sw		x4, -132(x2)	# 828
	sw		x1, -136(x2)	# 828
	addi	x2, x2, -140	# 828
	jal		x1, min_caml_read_float	# 828
	addi	x2, x2, 140	# 828
	lw		x1, -136(x2)	# 828
	fadd	f2, f0, f24	# 693
	fmul	f1, f1, f2	# 693
	lw		x4, -132(x2)	# 828
	mul		x4, x30, x4	# 828
	lw		x5, -120(x2)	# 828
	add		x4, x5, x4	# 828
	fsw		f1, 0(x4)	# 828
beq_cont.31679:
	addi	x4, x0, 2	# 835
	lw		x5, -40(x2)	# 835
	beq		x5, x4, beq.31681	# 835
	lw		x4, -88(x2)	# 835
	jal		x0, beq_cont.31680	# 835
beq.31681:
	addi	x4, x0, 1	# 835
beq_cont.31680:
	addi	x6, x0, 4	# 836
	fadd	f1, f0, f0	# 836
	sw		x4, -136(x2)	# 836
	addi	x4, x6, 0
	sw		x1, -140(x2)	# 836
	addi	x2, x2, -144	# 836
	jal		x1, min_caml_create_float_array	# 836
	addi	x2, x2, 144	# 836
	lw		x1, -140(x2)	# 836
	addi	x5, x3, 0	# 839
	addi	x3, x3, 44	# 839
	sw		x4, 40(x5)	# 839
	lw		x4, -120(x2)	# 839
	sw		x4, 36(x5)	# 839
	lw		x6, -104(x2)	# 839
	sw		x6, 32(x5)	# 839
	lw		x6, -92(x2)	# 839
	sw		x6, 28(x5)	# 839
	lw		x6, -136(x2)	# 839
	sw		x6, 24(x5)	# 839
	lw		x6, -68(x2)	# 839
	sw		x6, 20(x5)	# 839
	lw		x6, -52(x2)	# 839
	sw		x6, 16(x5)	# 839
	lw		x7, -48(x2)	# 839
	sw		x7, 12(x5)	# 839
	lw		x8, -44(x2)	# 839
	sw		x8, 8(x5)	# 839
	lw		x8, -40(x2)	# 839
	sw		x8, 4(x5)	# 839
	lw		x9, -36(x2)	# 839
	sw		x9, 0(x5)	# 839
	lw		x9, -24(x2)	# 847
	mul		x10, x30, x9	# 847
	addi	x10, x10, 60048	# 847
	sw		x5, 0(x10)	# 847
	addi	x5, x0, 3	# 849
	beq		x8, x5, beq.31683	# 849
	addi	x5, x0, 2	# 859
	beq		x8, x5, beq.31685	# 859
	jal		x0, beq_cont.31684	# 859
beq.31685:
	lw		x5, -20(x2)	# 299
	mul		x8, x30, x5	# 299
	add		x8, x6, x8	# 299
	flw		f1, 0(x8)	# 299
	fmul	f1, f1, f1	# 127
	lw		x8, -16(x2)	# 299
	mul		x10, x30, x8	# 299
	add		x10, x6, x10	# 299
	flw		f2, 0(x10)	# 299
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 299
	lw		x10, -12(x2)	# 299
	mul		x11, x30, x10	# 299
	add		x11, x6, x11	# 299
	flw		f2, 0(x11)	# 299
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 299
	fsqrt	f1, f1	# 299
	flw		f2, -28(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31687	# 120
	fadd	f1, f0, f16	# 300
	jal		x0, feq_cont.31686	# 120
feq_else.31687:
	flw		f3, -84(x2)	# 122
	fle		x31, f2, f3	# 122
	beq		x31, x0, fle_else.31689	# 122
	fadd	f2, f0, f18	# 300
	fdiv	f1, f2, f1	# 300
	jal		x0, fle_cont.31688	# 122
fle_else.31689:
	fadd	f2, f0, f16	# 300
	fdiv	f1, f2, f1	# 300
fle_cont.31688:
feq_cont.31686:
	mul		x11, x30, x5	# 301
	add		x11, x6, x11	# 301
	flw		f2, 0(x11)	# 301
	fmul	f2, f2, f1	# 301
	mul		x11, x30, x5	# 301
	add		x11, x6, x11	# 301
	fsw		f2, 0(x11)	# 301
	mul		x11, x30, x8	# 302
	add		x11, x6, x11	# 302
	flw		f2, 0(x11)	# 302
	fmul	f2, f2, f1	# 302
	mul		x11, x30, x8	# 302
	add		x11, x6, x11	# 302
	fsw		f2, 0(x11)	# 302
	mul		x11, x30, x10	# 303
	add		x11, x6, x11	# 303
	flw		f2, 0(x11)	# 303
	fmul	f1, f2, f1	# 303
	mul		x11, x30, x10	# 303
	add		x11, x6, x11	# 303
	fsw		f1, 0(x11)	# 303
beq_cont.31684:
	jal		x0, beq_cont.31682	# 849
beq.31683:
	addi	x5, x0, 0	# 852
	mul		x5, x30, x5	# 852
	add		x5, x6, x5	# 852
	flw		f1, 0(x5)	# 852
	addi	x5, x0, 0	# 853
	flw		f2, -28(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31691	# 120
	fadd	f1, f0, f0	# 853
	jal		x0, feq_cont.31690	# 120
feq_else.31691:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31693	# 120
	fadd	f3, f0, f2	# 228
	jal		x0, feq_cont.31692	# 120
feq_else.31693:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.31695	# 121
	fadd	f3, f0, f18	# 230
	jal		x0, fle_cont.31694	# 121
fle_else.31695:
	fadd	f3, f0, f16	# 229
fle_cont.31694:
feq_cont.31692:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 853
feq_cont.31690:
	mul		x5, x30, x5	# 853
	add		x5, x6, x5	# 853
	fsw		f1, 0(x5)	# 853
	addi	x5, x0, 1	# 854
	mul		x5, x30, x5	# 854
	add		x5, x6, x5	# 854
	flw		f1, 0(x5)	# 854
	addi	x5, x0, 1	# 855
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31697	# 120
	fadd	f1, f0, f0	# 855
	jal		x0, feq_cont.31696	# 120
feq_else.31697:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31699	# 120
	fadd	f3, f0, f2	# 228
	jal		x0, feq_cont.31698	# 120
feq_else.31699:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.31701	# 121
	fadd	f3, f0, f18	# 230
	jal		x0, fle_cont.31700	# 121
fle_else.31701:
	fadd	f3, f0, f16	# 229
fle_cont.31700:
feq_cont.31698:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 855
feq_cont.31696:
	mul		x5, x30, x5	# 855
	add		x5, x6, x5	# 855
	fsw		f1, 0(x5)	# 855
	addi	x5, x0, 2	# 856
	mul		x5, x30, x5	# 856
	add		x5, x6, x5	# 856
	flw		f1, 0(x5)	# 856
	addi	x5, x0, 2	# 857
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31703	# 120
	fadd	f1, f0, f0	# 857
	jal		x0, feq_cont.31702	# 120
feq_else.31703:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31705	# 120
	jal		x0, feq_cont.31704	# 120
feq_else.31705:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.31707	# 121
	fadd	f2, f0, f18	# 230
	jal		x0, fle_cont.31706	# 121
fle_else.31707:
	fadd	f2, f0, f16	# 229
fle_cont.31706:
feq_cont.31704:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f2, f1	# 857
feq_cont.31702:
	mul		x5, x30, x5	# 857
	add		x5, x6, x5	# 857
	fsw		f1, 0(x5)	# 857
beq_cont.31682:
	addi	x5, x0, 0	# 865
	beq		x7, x5, beq_cont.31708	# 865
	lw		x5, -20(x2)	# 754
	mul		x7, x30, x5	# 754
	add		x7, x4, x7	# 754
	flw		f1, 0(x7)	# 754
	lw		x29, -8(x2)	# 754
	sw		x1, -140(x2)	# 754
	addi	x2, x2, -144	# 754
	lw		x31, 0(x29)	# 754
	jalr	x1, x31, 0	# 754
	addi	x2, x2, 144	# 754
	lw		x1, -140(x2)	# 754
	lw		x4, -20(x2)	# 755
	mul		x5, x30, x4	# 755
	lw		x6, -120(x2)	# 755
	add		x5, x6, x5	# 755
	flw		f2, 0(x5)	# 755
	lw		x29, -4(x2)	# 755
	fsw		f1, -140(x2)	# 755
	fadd	f1, f0, f2
	sw		x1, -144(x2)	# 755
	addi	x2, x2, -148	# 755
	lw		x31, 0(x29)	# 755
	jalr	x1, x31, 0	# 755
	addi	x2, x2, 148	# 755
	lw		x1, -144(x2)	# 755
	lw		x4, -16(x2)	# 756
	mul		x5, x30, x4	# 756
	lw		x6, -120(x2)	# 756
	add		x5, x6, x5	# 756
	flw		f2, 0(x5)	# 756
	lw		x29, -8(x2)	# 756
	fsw		f1, -144(x2)	# 756
	fadd	f1, f0, f2
	sw		x1, -148(x2)	# 756
	addi	x2, x2, -152	# 756
	lw		x31, 0(x29)	# 756
	jalr	x1, x31, 0	# 756
	addi	x2, x2, 152	# 756
	lw		x1, -148(x2)	# 756
	lw		x4, -16(x2)	# 757
	mul		x5, x30, x4	# 757
	lw		x6, -120(x2)	# 757
	add		x5, x6, x5	# 757
	flw		f2, 0(x5)	# 757
	lw		x29, -4(x2)	# 757
	fsw		f1, -148(x2)	# 757
	fadd	f1, f0, f2
	sw		x1, -152(x2)	# 757
	addi	x2, x2, -156	# 757
	lw		x31, 0(x29)	# 757
	jalr	x1, x31, 0	# 757
	addi	x2, x2, 156	# 757
	lw		x1, -152(x2)	# 757
	lw		x4, -12(x2)	# 758
	mul		x5, x30, x4	# 758
	lw		x6, -120(x2)	# 758
	add		x5, x6, x5	# 758
	flw		f2, 0(x5)	# 758
	lw		x29, -8(x2)	# 758
	fsw		f1, -152(x2)	# 758
	fadd	f1, f0, f2
	sw		x1, -156(x2)	# 758
	addi	x2, x2, -160	# 758
	lw		x31, 0(x29)	# 758
	jalr	x1, x31, 0	# 758
	addi	x2, x2, 160	# 758
	lw		x1, -156(x2)	# 758
	lw		x4, -12(x2)	# 759
	mul		x5, x30, x4	# 759
	lw		x6, -120(x2)	# 759
	add		x5, x6, x5	# 759
	flw		f2, 0(x5)	# 759
	lw		x29, -4(x2)	# 759
	fsw		f1, -156(x2)	# 759
	fadd	f1, f0, f2
	sw		x1, -160(x2)	# 759
	addi	x2, x2, -164	# 759
	lw		x31, 0(x29)	# 759
	jalr	x1, x31, 0	# 759
	addi	x2, x2, 164	# 759
	lw		x1, -160(x2)	# 759
	flw		f2, -156(x2)	# 761
	flw		f3, -148(x2)	# 761
	fmul	f4, f3, f2	# 761
	flw		f5, -152(x2)	# 762
	flw		f6, -144(x2)	# 762
	fmul	f7, f6, f5	# 762
	fmul	f8, f7, f2	# 762
	flw		f9, -140(x2)	# 762
	fmul	f10, f9, f1	# 762
	fsub	f8, f8, f10	# 762
	fmul	f10, f9, f5	# 763
	fmul	f11, f10, f2	# 763
	fmul	f12, f6, f1	# 763
	fadd	f11, f11, f12	# 763
	fmul	f12, f3, f1	# 765
	fmul	f7, f7, f1	# 766
	fmul	f13, f9, f2	# 766
	fadd	f7, f7, f13	# 766
	fmul	f1, f10, f1	# 767
	fmul	f2, f6, f2	# 767
	fsub	f1, f1, f2	# 767
	fsub	f2, f0, f5	# 123
	fmul	f5, f6, f3	# 770
	fmul	f3, f9, f3	# 771
	lw		x4, -20(x2)	# 774
	mul		x5, x30, x4	# 774
	lw		x6, -52(x2)	# 774
	add		x5, x6, x5	# 774
	flw		f6, 0(x5)	# 774
	lw		x5, -16(x2)	# 775
	mul		x7, x30, x5	# 775
	add		x7, x6, x7	# 775
	flw		f9, 0(x7)	# 775
	lw		x7, -12(x2)	# 776
	mul		x8, x30, x7	# 776
	add		x8, x6, x8	# 776
	flw		f10, 0(x8)	# 776
	fmul	f13, f4, f4	# 127
	fmul	f13, f6, f13	# 781
	fmul	f14, f12, f12	# 127
	fmul	f14, f9, f14	# 781
	fadd	f13, f13, f14	# 781
	fmul	f14, f2, f2	# 127
	fmul	f14, f10, f14	# 781
	fadd	f13, f13, f14	# 781
	mul		x8, x30, x4	# 781
	add		x8, x6, x8	# 781
	fsw		f13, 0(x8)	# 781
	fmul	f13, f8, f8	# 127
	fmul	f13, f6, f13	# 782
	fmul	f14, f7, f7	# 127
	fmul	f14, f9, f14	# 782
	fadd	f13, f13, f14	# 782
	fmul	f14, f5, f5	# 127
	fmul	f14, f10, f14	# 782
	fadd	f13, f13, f14	# 782
	mul		x8, x30, x5	# 782
	add		x8, x6, x8	# 782
	fsw		f13, 0(x8)	# 782
	fmul	f13, f11, f11	# 127
	fmul	f13, f6, f13	# 783
	fmul	f14, f1, f1	# 127
	fmul	f14, f9, f14	# 783
	fadd	f13, f13, f14	# 783
	fmul	f14, f3, f3	# 127
	fmul	f14, f10, f14	# 783
	fadd	f13, f13, f14	# 783
	mul		x8, x30, x7	# 783
	add		x6, x6, x8	# 783
	fsw		f13, 0(x6)	# 783
	lui		x6, %hi(l.25888)	# 786
	ori		x6, x0, %lo(l.25888)	# 786
	flw		f13, 0(x6)	# 786
	fmul	f14, f6, f8	# 786
	fmul	f14, f14, f11	# 786
	fmul	f15, f9, f7	# 786
	fmul	f15, f15, f1	# 786
	fadd	f14, f14, f15	# 786
	fmul	f15, f10, f5	# 786
	fmul	f15, f15, f3	# 786
	fadd	f14, f14, f15	# 786
	fmul	f14, f13, f14	# 786
	mul		x6, x30, x4	# 786
	lw		x8, -120(x2)	# 786
	add		x6, x8, x6	# 786
	fsw		f14, 0(x6)	# 786
	fmul	f4, f6, f4	# 787
	fmul	f6, f4, f11	# 787
	fmul	f9, f9, f12	# 787
	fmul	f1, f9, f1	# 787
	fadd	f1, f6, f1	# 787
	fmul	f2, f10, f2	# 787
	fmul	f3, f2, f3	# 787
	fadd	f1, f1, f3	# 787
	fmul	f1, f13, f1	# 787
	mul		x6, x30, x5	# 787
	add		x6, x8, x6	# 787
	fsw		f1, 0(x6)	# 787
	fmul	f1, f4, f8	# 788
	fmul	f3, f9, f7	# 788
	fadd	f1, f1, f3	# 788
	fmul	f2, f2, f5	# 788
	fadd	f1, f1, f2	# 788
	fmul	f1, f13, f1	# 788
	mul		x6, x30, x7	# 788
	add		x6, x8, x6	# 788
	fsw		f1, 0(x6)	# 788
beq_cont.31708:
	addi	x4, x0, 1	# 869
	jal		x0, beq_cont.31675	# 796
beq.31676:
	addi	x4, x0, 0	# 872
beq_cont.31675:
	lw		x5, -20(x2)	# 878
	beq		x4, x5, beq.31709	# 878
	lw		x4, -16(x2)	# 879
	lw		x5, -24(x2)	# 879
	add		x4, x5, x4	# 879
	lw		x29, 0(x2)	# 879
	lw		x31, 0(x29)	# 879
	jalr	x0, x31, 0	# 879
beq.31709:
	mul		x4, x30, x5	# 881
	addi	x4, x4, 60000	# 881
	lw		x5, -24(x2)	# 881
	sw		x5, 0(x4)	# 881
	jalr	x0, x1, 0	# 881
ble.31674:
	jalr	x0, x1, 0	# 882
read_net_item.2700.17752:
	lw		x5, 8(x29)	# 893
	lw		x6, 4(x29)	# 893
	sw		x29, 0(x2)	# 893
	sw		x6, -4(x2)	# 893
	sw		x4, -8(x2)	# 893
	sw		x5, -12(x2)	# 893
	sw		x1, -16(x2)	# 893
	addi	x2, x2, -20	# 893
	jal		x1, min_caml_read_int	# 893
	addi	x2, x2, 20	# 893
	lw		x1, -16(x2)	# 893
	lw		x5, -12(x2)	# 894
	beq		x4, x5, beq.31712	# 894
	lw		x5, -4(x2)	# 896
	lw		x6, -8(x2)	# 896
	add		x5, x6, x5	# 896
	lw		x29, 0(x2)	# 896
	sw		x4, -16(x2)	# 896
	addi	x4, x5, 0
	sw		x1, -20(x2)	# 896
	addi	x2, x2, -24	# 896
	lw		x31, 0(x29)	# 896
	jalr	x1, x31, 0	# 896
	addi	x2, x2, 24	# 896
	lw		x1, -20(x2)	# 896
	lw		x5, -8(x2)	# 897
	mul		x5, x30, x5	# 897
	add		x5, x4, x5	# 897
	lw		x6, -16(x2)	# 897
	sw		x6, 0(x5)	# 897
	jalr	x0, x1, 0	# 897
beq.31712:
	lw		x4, -4(x2)	# 894
	lw		x6, -8(x2)	# 894
	add		x4, x6, x4	# 894
	jal		x0, min_caml_create_array	# 894
read_or_network.2702.17754:
	lw		x5, 16(x29)	# 901
	lw		x6, 12(x29)	# 901
	lw		x7, 8(x29)	# 901
	lw		x8, 4(x29)	# 901
	sw		x29, 0(x2)	# 901
	sw		x8, -4(x2)	# 901
	sw		x4, -8(x2)	# 901
	sw		x6, -12(x2)	# 901
	sw		x7, -16(x2)	# 901
	addi	x4, x7, 0
	addi	x29, x5, 0
	sw		x1, -20(x2)	# 901
	addi	x2, x2, -24	# 901
	lw		x31, 0(x29)	# 901
	jalr	x1, x31, 0	# 901
	addi	x2, x2, 24	# 901
	lw		x1, -20(x2)	# 901
	addi	x5, x4, 0	# 901
	lw		x4, -16(x2)	# 902
	mul		x4, x30, x4	# 902
	add		x4, x5, x4	# 902
	lw		x4, 0(x4)	# 902
	lw		x6, -12(x2)	# 902
	beq		x4, x6, beq.31713	# 902
	lw		x4, -4(x2)	# 905
	lw		x6, -8(x2)	# 905
	add		x4, x6, x4	# 905
	lw		x29, 0(x2)	# 905
	sw		x5, -20(x2)	# 905
	sw		x1, -24(x2)	# 905
	addi	x2, x2, -28	# 905
	lw		x31, 0(x29)	# 905
	jalr	x1, x31, 0	# 905
	addi	x2, x2, 28	# 905
	lw		x1, -24(x2)	# 905
	lw		x5, -8(x2)	# 906
	mul		x5, x30, x5	# 906
	add		x5, x4, x5	# 906
	lw		x6, -20(x2)	# 906
	sw		x6, 0(x5)	# 906
	jalr	x0, x1, 0	# 906
beq.31713:
	lw		x4, -4(x2)	# 903
	lw		x6, -8(x2)	# 903
	add		x4, x6, x4	# 903
	jal		x0, min_caml_create_array	# 903
read_and_network.2704.17756:
	lw		x5, 16(x29)	# 910
	lw		x6, 12(x29)	# 910
	lw		x7, 8(x29)	# 910
	lw		x8, 4(x29)	# 910
	sw		x29, 0(x2)	# 910
	sw		x8, -4(x2)	# 910
	sw		x4, -8(x2)	# 910
	sw		x6, -12(x2)	# 910
	sw		x7, -16(x2)	# 910
	addi	x4, x7, 0
	addi	x29, x5, 0
	sw		x1, -20(x2)	# 910
	addi	x2, x2, -24	# 910
	lw		x31, 0(x29)	# 910
	jalr	x1, x31, 0	# 910
	addi	x2, x2, 24	# 910
	lw		x1, -20(x2)	# 910
	lw		x5, -16(x2)	# 911
	mul		x5, x30, x5	# 911
	add		x5, x4, x5	# 911
	lw		x5, 0(x5)	# 911
	lw		x6, -12(x2)	# 911
	beq		x5, x6, beq.31714	# 911
	lw		x5, -8(x2)	# 913
	mul		x6, x30, x5	# 913
	addi	x6, x6, 60332	# 913
	sw		x4, 0(x6)	# 913
	lw		x4, -4(x2)	# 914
	add		x4, x5, x4	# 914
	lw		x29, 0(x2)	# 914
	lw		x31, 0(x29)	# 914
	jalr	x0, x31, 0	# 914
beq.31714:
	jalr	x0, x1, 0	# 911
iter_setup_dirvec_constants.2801.17758:
	lw		x6, 16(x29)	# 1286
	lw		x7, 12(x29)	# 1286
	lw		x8, 8(x29)	# 1286
	flw		f1, 4(x29)	# 1286
	ble		x7, x5, ble.31716	# 1286
	jalr	x0, x1, 0	# 1299
ble.31716:
	mul		x9, x30, x5	# 1287
	addi	x9, x9, 60048	# 1287
	lw		x9, 0(x9)	# 1287
	lw		x10, 4(x4)	# 661
	lw		x11, 0(x4)	# 655
	lw		x12, 4(x9)	# 369
	sw		x4, 0(x2)	# 1291
	sw		x29, -4(x2)	# 1291
	sw		x8, -8(x2)	# 1291
	beq		x12, x8, beq.31719	# 1291
	addi	x13, x0, 2	# 1293
	beq		x12, x13, beq.31721	# 1293
	addi	x12, x0, 5	# 1257
	fadd	f2, f0, f0	# 1257
	sw		x10, -12(x2)	# 1257
	sw		x5, -16(x2)	# 1257
	fsw		f1, -20(x2)	# 1257
	sw		x6, -24(x2)	# 1257
	sw		x7, -28(x2)	# 1257
	sw		x9, -32(x2)	# 1257
	sw		x11, -36(x2)	# 1257
	addi	x4, x12, 0
	fadd	f1, f0, f2
	sw		x1, -40(x2)	# 1257
	addi	x2, x2, -44	# 1257
	jal		x1, min_caml_create_float_array	# 1257
	addi	x2, x2, 44	# 1257
	lw		x1, -40(x2)	# 1257
	addi	x5, x0, 0	# 1259
	mul		x5, x30, x5	# 1259
	lw		x6, -36(x2)	# 1259
	add		x5, x6, x5	# 1259
	flw		f1, 0(x5)	# 1259
	addi	x5, x0, 1	# 1259
	mul		x5, x30, x5	# 1259
	add		x5, x6, x5	# 1259
	flw		f2, 0(x5)	# 1259
	addi	x5, x0, 2	# 1259
	mul		x5, x30, x5	# 1259
	add		x5, x6, x5	# 1259
	flw		f3, 0(x5)	# 1259
	fmul	f4, f1, f1	# 127
	lw		x5, -32(x2)	# 407
	lw		x7, 16(x5)	# 407
	lw		x8, -28(x2)	# 412
	mul		x9, x30, x8	# 412
	add		x7, x7, x9	# 412
	flw		f5, 0(x7)	# 412
	fmul	f4, f4, f5	# 983
	fmul	f5, f2, f2	# 127
	lw		x7, 16(x5)	# 417
	lw		x9, -8(x2)	# 422
	mul		x10, x30, x9	# 422
	add		x7, x7, x10	# 422
	flw		f6, 0(x7)	# 422
	fmul	f5, f5, f6	# 983
	fadd	f4, f4, f5	# 983
	fmul	f5, f3, f3	# 127
	lw		x7, 16(x5)	# 427
	lw		x10, -24(x2)	# 432
	mul		x11, x30, x10	# 432
	add		x7, x7, x11	# 432
	flw		f6, 0(x7)	# 432
	fmul	f5, f5, f6	# 983
	fadd	f4, f4, f5	# 983
	lw		x7, 12(x5)	# 398
	beq		x7, x8, beq.31723	# 985
	fmul	f5, f2, f3	# 989
	lw		x7, 36(x5)	# 527
	mul		x11, x30, x8	# 532
	add		x7, x7, x11	# 532
	flw		f6, 0(x7)	# 532
	fmul	f5, f5, f6	# 989
	fadd	f4, f4, f5	# 988
	fmul	f3, f3, f1	# 990
	lw		x7, 36(x5)	# 537
	mul		x11, x30, x9	# 542
	add		x7, x7, x11	# 542
	flw		f5, 0(x7)	# 542
	fmul	f3, f3, f5	# 990
	fadd	f3, f4, f3	# 988
	fmul	f1, f1, f2	# 991
	lw		x7, 36(x5)	# 547
	mul		x11, x30, x10	# 552
	add		x7, x7, x11	# 552
	flw		f2, 0(x7)	# 552
	fmul	f1, f1, f2	# 991
	fadd	f1, f3, f1	# 988
	jal		x0, beq_cont.31722	# 985
beq.31723:
	fadd	f1, f0, f4	# 986
beq_cont.31722:
	addi	x7, x0, 0	# 1260
	mul		x7, x30, x7	# 1260
	add		x7, x6, x7	# 1260
	flw		f2, 0(x7)	# 1260
	lw		x7, 16(x5)	# 407
	mul		x11, x30, x8	# 412
	add		x7, x7, x11	# 412
	flw		f3, 0(x7)	# 412
	fmul	f2, f2, f3	# 1260
	fsub	f2, f0, f2	# 123
	addi	x7, x0, 1	# 1261
	mul		x7, x30, x7	# 1261
	add		x7, x6, x7	# 1261
	flw		f3, 0(x7)	# 1261
	lw		x7, 16(x5)	# 417
	mul		x11, x30, x9	# 422
	add		x7, x7, x11	# 422
	flw		f4, 0(x7)	# 422
	fmul	f3, f3, f4	# 1261
	fsub	f3, f0, f3	# 123
	addi	x7, x0, 2	# 1262
	mul		x7, x30, x7	# 1262
	add		x7, x6, x7	# 1262
	flw		f4, 0(x7)	# 1262
	lw		x7, 16(x5)	# 427
	mul		x11, x30, x10	# 432
	add		x7, x7, x11	# 432
	flw		f5, 0(x7)	# 432
	fmul	f4, f4, f5	# 1262
	fsub	f4, f0, f4	# 123
	addi	x7, x0, 0	# 1264
	mul		x7, x30, x7	# 1264
	add		x7, x4, x7	# 1264
	fsw		f1, 0(x7)	# 1264
	lw		x7, 12(x5)	# 398
	addi	x11, x0, 0	# 1268
	beq		x7, x11, beq.31725	# 1268
	addi	x7, x0, 1	# 1269
	addi	x11, x0, 2	# 1269
	mul		x11, x30, x11	# 1269
	add		x11, x6, x11	# 1269
	flw		f5, 0(x11)	# 1269
	lw		x11, 36(x5)	# 537
	mul		x12, x30, x9	# 542
	add		x11, x11, x12	# 542
	flw		f6, 0(x11)	# 542
	fmul	f5, f5, f6	# 1269
	addi	x11, x0, 1	# 1269
	mul		x11, x30, x11	# 1269
	add		x11, x6, x11	# 1269
	flw		f6, 0(x11)	# 1269
	lw		x11, 36(x5)	# 547
	mul		x12, x30, x10	# 552
	add		x11, x11, x12	# 552
	flw		f7, 0(x11)	# 552
	fmul	f6, f6, f7	# 1269
	fadd	f5, f5, f6	# 1269
	fadd	f6, f0, f17	# 126
	fmul	f5, f5, f6	# 126
	fsub	f2, f2, f5	# 1269
	mul		x7, x30, x7	# 1269
	add		x7, x4, x7	# 1269
	fsw		f2, 0(x7)	# 1269
	addi	x7, x0, 2	# 1270
	addi	x11, x0, 2	# 1270
	mul		x11, x30, x11	# 1270
	add		x11, x6, x11	# 1270
	flw		f2, 0(x11)	# 1270
	lw		x11, 36(x5)	# 527
	mul		x12, x30, x8	# 532
	add		x11, x11, x12	# 532
	flw		f5, 0(x11)	# 532
	fmul	f2, f2, f5	# 1270
	addi	x11, x0, 0	# 1270
	mul		x11, x30, x11	# 1270
	add		x11, x6, x11	# 1270
	flw		f5, 0(x11)	# 1270
	lw		x11, 36(x5)	# 547
	mul		x10, x30, x10	# 552
	add		x10, x11, x10	# 552
	flw		f6, 0(x10)	# 552
	fmul	f5, f5, f6	# 1270
	fadd	f2, f2, f5	# 1270
	fadd	f5, f0, f17	# 126
	fmul	f2, f2, f5	# 126
	fsub	f2, f3, f2	# 1270
	mul		x7, x30, x7	# 1270
	add		x7, x4, x7	# 1270
	fsw		f2, 0(x7)	# 1270
	addi	x7, x0, 3	# 1271
	addi	x10, x0, 1	# 1271
	mul		x10, x30, x10	# 1271
	add		x10, x6, x10	# 1271
	flw		f2, 0(x10)	# 1271
	lw		x10, 36(x5)	# 527
	mul		x8, x30, x8	# 532
	add		x8, x10, x8	# 532
	flw		f3, 0(x8)	# 532
	fmul	f2, f2, f3	# 1271
	addi	x8, x0, 0	# 1271
	mul		x8, x30, x8	# 1271
	add		x6, x6, x8	# 1271
	flw		f3, 0(x6)	# 1271
	lw		x5, 36(x5)	# 537
	mul		x6, x30, x9	# 542
	add		x5, x5, x6	# 542
	flw		f5, 0(x5)	# 542
	fmul	f3, f3, f5	# 1271
	fadd	f2, f2, f3	# 1271
	fadd	f3, f0, f17	# 126
	fmul	f2, f2, f3	# 126
	fsub	f2, f4, f2	# 1271
	mul		x5, x30, x7	# 1271
	add		x5, x4, x5	# 1271
	fsw		f2, 0(x5)	# 1271
	jal		x0, beq_cont.31724	# 1268
beq.31725:
	addi	x5, x0, 1	# 1273
	mul		x5, x30, x5	# 1273
	add		x5, x4, x5	# 1273
	fsw		f2, 0(x5)	# 1273
	addi	x5, x0, 2	# 1274
	mul		x5, x30, x5	# 1274
	add		x5, x4, x5	# 1274
	fsw		f3, 0(x5)	# 1274
	addi	x5, x0, 3	# 1275
	mul		x5, x30, x5	# 1275
	add		x5, x4, x5	# 1275
	fsw		f4, 0(x5)	# 1275
beq_cont.31724:
	flw		f2, -20(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31727	# 120
	jal		x0, feq_cont.31726	# 120
feq_else.31727:
	addi	x5, x0, 4	# 1278
	fadd	f2, f0, f16	# 1278
	fdiv	f1, f2, f1	# 1278
	mul		x5, x30, x5	# 1278
	add		x5, x4, x5	# 1278
	fsw		f1, 0(x5)	# 1278
feq_cont.31726:
	lw		x5, -16(x2)	# 1296
	mul		x6, x30, x5	# 1296
	lw		x7, -12(x2)	# 1296
	add		x6, x7, x6	# 1296
	sw		x4, 0(x6)	# 1296
	jal		x0, beq_cont.31720	# 1293
beq.31721:
	addi	x12, x0, 4	# 1238
	fadd	f2, f0, f0	# 1238
	sw		x10, -12(x2)	# 1238
	sw		x5, -16(x2)	# 1238
	fsw		f1, -20(x2)	# 1238
	sw		x6, -24(x2)	# 1238
	sw		x7, -28(x2)	# 1238
	sw		x9, -32(x2)	# 1238
	sw		x11, -36(x2)	# 1238
	addi	x4, x12, 0
	fadd	f1, f0, f2
	sw		x1, -40(x2)	# 1238
	addi	x2, x2, -44	# 1238
	jal		x1, min_caml_create_float_array	# 1238
	addi	x2, x2, 44	# 1238
	lw		x1, -40(x2)	# 1238
	addi	x5, x0, 0	# 1240
	mul		x5, x30, x5	# 1240
	lw		x6, -36(x2)	# 1240
	add		x5, x6, x5	# 1240
	flw		f1, 0(x5)	# 1240
	lw		x5, -32(x2)	# 407
	lw		x7, 16(x5)	# 407
	lw		x8, -28(x2)	# 412
	mul		x9, x30, x8	# 412
	add		x7, x7, x9	# 412
	flw		f2, 0(x7)	# 412
	fmul	f1, f1, f2	# 1240
	addi	x7, x0, 1	# 1240
	mul		x7, x30, x7	# 1240
	add		x7, x6, x7	# 1240
	flw		f2, 0(x7)	# 1240
	lw		x7, 16(x5)	# 417
	lw		x9, -8(x2)	# 422
	mul		x10, x30, x9	# 422
	add		x7, x7, x10	# 422
	flw		f3, 0(x7)	# 422
	fmul	f2, f2, f3	# 1240
	fadd	f1, f1, f2	# 1240
	addi	x7, x0, 2	# 1240
	mul		x7, x30, x7	# 1240
	add		x6, x6, x7	# 1240
	flw		f2, 0(x6)	# 1240
	lw		x6, 16(x5)	# 427
	lw		x7, -24(x2)	# 432
	mul		x10, x30, x7	# 432
	add		x6, x6, x10	# 432
	flw		f3, 0(x6)	# 432
	fmul	f2, f2, f3	# 1240
	fadd	f1, f1, f2	# 1240
	flw		f2, -20(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.31729	# 121
	addi	x5, x0, 0	# 1250
	fadd	f1, f0, f0	# 1250
	mul		x5, x30, x5	# 1250
	add		x5, x4, x5	# 1250
	fsw		f1, 0(x5)	# 1250
	jal		x0, fle_cont.31728	# 121
fle_else.31729:
	addi	x6, x0, 0	# 1244
	fadd	f2, f0, f18	# 1244
	fdiv	f2, f2, f1	# 1244
	mul		x6, x30, x6	# 1244
	add		x6, x4, x6	# 1244
	fsw		f2, 0(x6)	# 1244
	addi	x6, x0, 1	# 1246
	lw		x10, 16(x5)	# 407
	mul		x8, x30, x8	# 412
	add		x8, x10, x8	# 412
	flw		f2, 0(x8)	# 412
	fdiv	f2, f2, f1	# 1246
	fsub	f2, f0, f2	# 123
	mul		x6, x30, x6	# 1246
	add		x6, x4, x6	# 1246
	fsw		f2, 0(x6)	# 1246
	addi	x6, x0, 2	# 1247
	lw		x8, 16(x5)	# 417
	mul		x10, x30, x9	# 422
	add		x8, x8, x10	# 422
	flw		f2, 0(x8)	# 422
	fdiv	f2, f2, f1	# 1247
	fsub	f2, f0, f2	# 123
	mul		x6, x30, x6	# 1247
	add		x6, x4, x6	# 1247
	fsw		f2, 0(x6)	# 1247
	addi	x6, x0, 3	# 1248
	lw		x5, 16(x5)	# 427
	mul		x7, x30, x7	# 432
	add		x5, x5, x7	# 432
	flw		f2, 0(x5)	# 432
	fdiv	f1, f2, f1	# 1248
	fsub	f1, f0, f1	# 123
	mul		x5, x30, x6	# 1248
	add		x5, x4, x5	# 1248
	fsw		f1, 0(x5)	# 1248
fle_cont.31728:
	lw		x5, -16(x2)	# 1294
	mul		x6, x30, x5	# 1294
	lw		x7, -12(x2)	# 1294
	add		x6, x7, x6	# 1294
	sw		x4, 0(x6)	# 1294
beq_cont.31720:
	jal		x0, beq_cont.31718	# 1291
beq.31719:
	addi	x12, x0, 6	# 1211
	fadd	f2, f0, f0	# 1211
	sw		x10, -12(x2)	# 1211
	sw		x5, -16(x2)	# 1211
	sw		x6, -24(x2)	# 1211
	sw		x7, -28(x2)	# 1211
	sw		x9, -32(x2)	# 1211
	fsw		f1, -20(x2)	# 1211
	sw		x11, -36(x2)	# 1211
	addi	x4, x12, 0
	fadd	f1, f0, f2
	sw		x1, -40(x2)	# 1211
	addi	x2, x2, -44	# 1211
	jal		x1, min_caml_create_float_array	# 1211
	addi	x2, x2, 44	# 1211
	lw		x1, -40(x2)	# 1211
	addi	x5, x0, 0	# 1213
	mul		x5, x30, x5	# 1213
	lw		x6, -36(x2)	# 1213
	add		x5, x6, x5	# 1213
	flw		f1, 0(x5)	# 1213
	flw		f2, -20(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31731	# 120
	addi	x5, x0, 1	# 1214
	fadd	f1, f0, f0	# 1214
	mul		x5, x30, x5	# 1214
	add		x5, x4, x5	# 1214
	fsw		f1, 0(x5)	# 1214
	jal		x0, feq_cont.31730	# 120
feq_else.31731:
	addi	x5, x0, 0	# 1217
	lw		x7, -32(x2)	# 389
	lw		x8, 24(x7)	# 389
	addi	x9, x0, 0	# 1217
	mul		x9, x30, x9	# 1217
	add		x9, x6, x9	# 1217
	flw		f1, 0(x9)	# 1217
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31733	# 122
	addi	x9, x0, 0	# 122
	jal		x0, fle_cont.31732	# 122
fle_else.31733:
	addi	x9, x0, 1	# 122
fle_cont.31732:
	lw		x10, -28(x2)	# 220
	beq		x8, x10, beq.31735	# 220
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31737	# 122
	addi	x8, x0, 1	# 220
	jal		x0, fle_cont.31736	# 122
fle_else.31737:
	addi	x8, x0, 0	# 220
fle_cont.31736:
	jal		x0, beq_cont.31734	# 220
beq.31735:
	addi	x8, x9, 0	# 220
beq_cont.31734:
	lw		x9, 16(x7)	# 407
	mul		x11, x30, x10	# 412
	add		x9, x9, x11	# 412
	flw		f1, 0(x9)	# 412
	beq		x8, x10, beq.31739	# 235
	jal		x0, beq_cont.31738	# 235
beq.31739:
	fsub	f1, f0, f1	# 123
beq_cont.31738:
	mul		x5, x30, x5	# 1217
	add		x5, x4, x5	# 1217
	fsw		f1, 0(x5)	# 1217
	addi	x5, x0, 1	# 1219
	fadd	f1, f0, f16	# 1219
	addi	x8, x0, 0	# 1219
	mul		x8, x30, x8	# 1219
	add		x8, x6, x8	# 1219
	flw		f3, 0(x8)	# 1219
	fdiv	f1, f1, f3	# 1219
	mul		x5, x30, x5	# 1219
	add		x5, x4, x5	# 1219
	fsw		f1, 0(x5)	# 1219
feq_cont.31730:
	addi	x5, x0, 1	# 1221
	mul		x5, x30, x5	# 1221
	add		x5, x6, x5	# 1221
	flw		f1, 0(x5)	# 1221
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31741	# 120
	addi	x5, x0, 3	# 1222
	fadd	f1, f0, f0	# 1222
	mul		x5, x30, x5	# 1222
	add		x5, x4, x5	# 1222
	fsw		f1, 0(x5)	# 1222
	jal		x0, feq_cont.31740	# 120
feq_else.31741:
	addi	x5, x0, 2	# 1224
	lw		x7, -32(x2)	# 389
	lw		x8, 24(x7)	# 389
	addi	x9, x0, 1	# 1224
	mul		x9, x30, x9	# 1224
	add		x9, x6, x9	# 1224
	flw		f1, 0(x9)	# 1224
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31743	# 122
	addi	x9, x0, 0	# 122
	jal		x0, fle_cont.31742	# 122
fle_else.31743:
	addi	x9, x0, 1	# 122
fle_cont.31742:
	lw		x10, -28(x2)	# 220
	beq		x8, x10, beq.31745	# 220
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31747	# 122
	addi	x8, x0, 1	# 220
	jal		x0, fle_cont.31746	# 122
fle_else.31747:
	addi	x8, x0, 0	# 220
fle_cont.31746:
	jal		x0, beq_cont.31744	# 220
beq.31745:
	addi	x8, x9, 0	# 220
beq_cont.31744:
	lw		x9, 16(x7)	# 417
	lw		x11, -8(x2)	# 422
	mul		x12, x30, x11	# 422
	add		x9, x9, x12	# 422
	flw		f1, 0(x9)	# 422
	beq		x8, x10, beq.31749	# 235
	jal		x0, beq_cont.31748	# 235
beq.31749:
	fsub	f1, f0, f1	# 123
beq_cont.31748:
	mul		x5, x30, x5	# 1224
	add		x5, x4, x5	# 1224
	fsw		f1, 0(x5)	# 1224
	addi	x5, x0, 3	# 1225
	fadd	f1, f0, f16	# 1225
	addi	x8, x0, 1	# 1225
	mul		x8, x30, x8	# 1225
	add		x8, x6, x8	# 1225
	flw		f3, 0(x8)	# 1225
	fdiv	f1, f1, f3	# 1225
	mul		x5, x30, x5	# 1225
	add		x5, x4, x5	# 1225
	fsw		f1, 0(x5)	# 1225
feq_cont.31740:
	addi	x5, x0, 2	# 1227
	mul		x5, x30, x5	# 1227
	add		x5, x6, x5	# 1227
	flw		f1, 0(x5)	# 1227
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31751	# 120
	addi	x5, x0, 5	# 1228
	fadd	f1, f0, f0	# 1228
	mul		x5, x30, x5	# 1228
	add		x5, x4, x5	# 1228
	fsw		f1, 0(x5)	# 1228
	jal		x0, feq_cont.31750	# 120
feq_else.31751:
	addi	x5, x0, 4	# 1230
	lw		x7, -32(x2)	# 389
	lw		x8, 24(x7)	# 389
	addi	x9, x0, 2	# 1230
	mul		x9, x30, x9	# 1230
	add		x9, x6, x9	# 1230
	flw		f1, 0(x9)	# 1230
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31753	# 122
	addi	x9, x0, 0	# 122
	jal		x0, fle_cont.31752	# 122
fle_else.31753:
	addi	x9, x0, 1	# 122
fle_cont.31752:
	lw		x10, -28(x2)	# 220
	beq		x8, x10, beq.31755	# 220
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31757	# 122
	addi	x8, x0, 1	# 220
	jal		x0, fle_cont.31756	# 122
fle_else.31757:
	addi	x8, x0, 0	# 220
fle_cont.31756:
	jal		x0, beq_cont.31754	# 220
beq.31755:
	addi	x8, x9, 0	# 220
beq_cont.31754:
	lw		x7, 16(x7)	# 427
	lw		x9, -24(x2)	# 432
	mul		x9, x30, x9	# 432
	add		x7, x7, x9	# 432
	flw		f1, 0(x7)	# 432
	beq		x8, x10, beq.31759	# 235
	jal		x0, beq_cont.31758	# 235
beq.31759:
	fsub	f1, f0, f1	# 123
beq_cont.31758:
	mul		x5, x30, x5	# 1230
	add		x5, x4, x5	# 1230
	fsw		f1, 0(x5)	# 1230
	addi	x5, x0, 5	# 1231
	fadd	f1, f0, f16	# 1231
	addi	x7, x0, 2	# 1231
	mul		x7, x30, x7	# 1231
	add		x6, x6, x7	# 1231
	flw		f2, 0(x6)	# 1231
	fdiv	f1, f1, f2	# 1231
	mul		x5, x30, x5	# 1231
	add		x5, x4, x5	# 1231
	fsw		f1, 0(x5)	# 1231
feq_cont.31750:
	lw		x5, -16(x2)	# 1292
	mul		x6, x30, x5	# 1292
	lw		x7, -12(x2)	# 1292
	add		x6, x7, x6	# 1292
	sw		x4, 0(x6)	# 1292
beq_cont.31718:
	lw		x4, -8(x2)	# 1298
	sub		x5, x5, x4	# 1298
	lw		x4, 0(x2)	# 1298
	lw		x29, -4(x2)	# 1298
	lw		x31, 0(x29)	# 1298
	jalr	x0, x31, 0	# 1298
setup_startp_constants.2806.17761:
	lw		x6, 12(x29)	# 1311
	lw		x7, 8(x29)	# 1311
	lw		x8, 4(x29)	# 1311
	ble		x7, x5, ble.31760	# 1311
	jalr	x0, x1, 0	# 1326
ble.31760:
	mul		x9, x30, x5	# 1312
	addi	x9, x9, 60048	# 1312
	lw		x9, 0(x9)	# 1312
	lw		x10, 40(x9)	# 564
	lw		x11, 4(x9)	# 369
	mul		x12, x30, x7	# 1315
	add		x12, x4, x12	# 1315
	flw		f1, 0(x12)	# 1315
	lw		x12, 20(x9)	# 447
	mul		x13, x30, x7	# 452
	add		x12, x12, x13	# 452
	flw		f2, 0(x12)	# 452
	fsub	f1, f1, f2	# 1315
	mul		x12, x30, x7	# 1315
	add		x12, x10, x12	# 1315
	fsw		f1, 0(x12)	# 1315
	mul		x12, x30, x8	# 1316
	add		x12, x4, x12	# 1316
	flw		f1, 0(x12)	# 1316
	lw		x12, 20(x9)	# 457
	mul		x13, x30, x8	# 462
	add		x12, x12, x13	# 462
	flw		f2, 0(x12)	# 462
	fsub	f1, f1, f2	# 1316
	mul		x12, x30, x8	# 1316
	add		x12, x10, x12	# 1316
	fsw		f1, 0(x12)	# 1316
	mul		x12, x30, x6	# 1317
	add		x12, x4, x12	# 1317
	flw		f1, 0(x12)	# 1317
	lw		x12, 20(x9)	# 467
	mul		x13, x30, x6	# 472
	add		x12, x12, x13	# 472
	flw		f2, 0(x12)	# 472
	fsub	f1, f1, f2	# 1317
	mul		x12, x30, x6	# 1317
	add		x12, x10, x12	# 1317
	fsw		f1, 0(x12)	# 1317
	beq		x11, x6, beq.31763	# 1318
	addi	x12, x0, 2	# 1321
	ble		x11, x12, ble_cont.31764	# 1321
	addi	x12, x0, 0	# 1322
	mul		x12, x30, x12	# 1322
	add		x12, x10, x12	# 1322
	flw		f1, 0(x12)	# 1322
	addi	x12, x0, 1	# 1322
	mul		x12, x30, x12	# 1322
	add		x12, x10, x12	# 1322
	flw		f2, 0(x12)	# 1322
	addi	x12, x0, 2	# 1322
	mul		x12, x30, x12	# 1322
	add		x12, x10, x12	# 1322
	flw		f3, 0(x12)	# 1322
	fmul	f4, f1, f1	# 127
	lw		x12, 16(x9)	# 407
	mul		x13, x30, x7	# 412
	add		x12, x12, x13	# 412
	flw		f5, 0(x12)	# 412
	fmul	f4, f4, f5	# 983
	fmul	f5, f2, f2	# 127
	lw		x12, 16(x9)	# 417
	mul		x13, x30, x8	# 422
	add		x12, x12, x13	# 422
	flw		f6, 0(x12)	# 422
	fmul	f5, f5, f6	# 983
	fadd	f4, f4, f5	# 983
	fmul	f5, f3, f3	# 127
	lw		x12, 16(x9)	# 427
	mul		x13, x30, x6	# 432
	add		x12, x12, x13	# 432
	flw		f6, 0(x12)	# 432
	fmul	f5, f5, f6	# 983
	fadd	f4, f4, f5	# 983
	lw		x12, 12(x9)	# 398
	addi	x13, x0, 0	# 985
	beq		x12, x13, beq.31766	# 985
	fmul	f5, f2, f3	# 989
	lw		x12, 36(x9)	# 527
	mul		x7, x30, x7	# 532
	add		x7, x12, x7	# 532
	flw		f6, 0(x7)	# 532
	fmul	f5, f5, f6	# 989
	fadd	f4, f4, f5	# 988
	fmul	f3, f3, f1	# 990
	lw		x7, 36(x9)	# 537
	mul		x12, x30, x8	# 542
	add		x7, x7, x12	# 542
	flw		f5, 0(x7)	# 542
	fmul	f3, f3, f5	# 990
	fadd	f3, f4, f3	# 988
	fmul	f1, f1, f2	# 991
	lw		x7, 36(x9)	# 547
	mul		x6, x30, x6	# 552
	add		x6, x7, x6	# 552
	flw		f2, 0(x6)	# 552
	fmul	f1, f1, f2	# 991
	fadd	f1, f3, f1	# 988
	jal		x0, beq_cont.31765	# 985
beq.31766:
	fadd	f1, f0, f4	# 986
beq_cont.31765:
	addi	x6, x0, 3	# 1323
	addi	x7, x0, 3	# 1323
	beq		x11, x7, beq.31768	# 1323
	jal		x0, beq_cont.31767	# 1323
beq.31768:
	fadd	f2, f0, f16	# 1323
	fsub	f1, f1, f2	# 1323
beq_cont.31767:
	mul		x6, x30, x6	# 1323
	add		x6, x10, x6	# 1323
	fsw		f1, 0(x6)	# 1323
ble_cont.31764:
	jal		x0, beq_cont.31762	# 1318
beq.31763:
	addi	x6, x0, 3	# 1319
	lw		x7, 16(x9)	# 437
	addi	x9, x0, 0	# 1320
	mul		x9, x30, x9	# 1320
	add		x9, x10, x9	# 1320
	flw		f1, 0(x9)	# 1320
	addi	x9, x0, 1	# 1320
	mul		x9, x30, x9	# 1320
	add		x9, x10, x9	# 1320
	flw		f2, 0(x9)	# 1320
	addi	x9, x0, 2	# 1320
	mul		x9, x30, x9	# 1320
	add		x9, x10, x9	# 1320
	flw		f3, 0(x9)	# 1320
	addi	x9, x0, 0	# 313
	mul		x9, x30, x9	# 313
	add		x9, x7, x9	# 313
	flw		f4, 0(x9)	# 313
	fmul	f1, f4, f1	# 313
	addi	x9, x0, 1	# 313
	mul		x9, x30, x9	# 313
	add		x9, x7, x9	# 313
	flw		f4, 0(x9)	# 313
	fmul	f2, f4, f2	# 313
	fadd	f1, f1, f2	# 313
	addi	x9, x0, 2	# 313
	mul		x9, x30, x9	# 313
	add		x7, x7, x9	# 313
	flw		f2, 0(x7)	# 313
	fmul	f2, f2, f3	# 313
	fadd	f1, f1, f2	# 313
	mul		x6, x30, x6	# 1319
	add		x6, x10, x6	# 1319
	fsw		f1, 0(x6)	# 1319
beq_cont.31762:
	sub		x5, x5, x8	# 1325
	lw		x31, 0(x29)	# 1325
	jalr	x0, x31, 0	# 1325
check_all_inside.2831.17764:
	lw		x6, 24(x29)	# 1380
	lw		x7, 20(x29)	# 1380
	lw		x8, 16(x29)	# 1380
	lw		x9, 12(x29)	# 1380
	lw		x10, 8(x29)	# 1380
	flw		f4, 4(x29)	# 1380
	mul		x11, x30, x4	# 1380
	add		x11, x5, x11	# 1380
	lw		x11, 0(x11)	# 1380
	beq		x11, x7, beq.31769	# 1381
	mul		x7, x30, x11	# 1384
	addi	x7, x7, 60048	# 1384
	lw		x7, 0(x7)	# 1384
	lw		x11, 20(x7)	# 447
	mul		x12, x30, x9	# 452
	add		x11, x11, x12	# 452
	flw		f5, 0(x11)	# 452
	fsub	f5, f1, f5	# 1366
	lw		x11, 20(x7)	# 457
	mul		x12, x30, x10	# 462
	add		x11, x11, x12	# 462
	flw		f6, 0(x11)	# 462
	fsub	f6, f2, f6	# 1367
	lw		x11, 20(x7)	# 467
	mul		x12, x30, x6	# 472
	add		x11, x11, x12	# 472
	flw		f7, 0(x11)	# 472
	fsub	f7, f3, f7	# 1368
	lw		x11, 4(x7)	# 369
	beq		x11, x10, beq.31771	# 1370
	beq		x11, x6, beq.31773	# 1372
	fmul	f8, f5, f5	# 127
	lw		x11, 16(x7)	# 407
	mul		x12, x30, x9	# 412
	add		x11, x11, x12	# 412
	flw		f9, 0(x11)	# 412
	fmul	f8, f8, f9	# 983
	fmul	f9, f6, f6	# 127
	lw		x11, 16(x7)	# 417
	mul		x12, x30, x10	# 422
	add		x11, x11, x12	# 422
	flw		f10, 0(x11)	# 422
	fmul	f9, f9, f10	# 983
	fadd	f8, f8, f9	# 983
	fmul	f9, f7, f7	# 127
	lw		x11, 16(x7)	# 427
	mul		x12, x30, x6	# 432
	add		x11, x11, x12	# 432
	flw		f10, 0(x11)	# 432
	fmul	f9, f9, f10	# 983
	fadd	f8, f8, f9	# 983
	lw		x11, 12(x7)	# 398
	beq		x11, x9, beq.31775	# 985
	fmul	f9, f6, f7	# 989
	lw		x11, 36(x7)	# 527
	mul		x12, x30, x9	# 532
	add		x11, x11, x12	# 532
	flw		f10, 0(x11)	# 532
	fmul	f9, f9, f10	# 989
	fadd	f8, f8, f9	# 988
	fmul	f7, f7, f5	# 990
	lw		x11, 36(x7)	# 537
	mul		x12, x30, x10	# 542
	add		x11, x11, x12	# 542
	flw		f9, 0(x11)	# 542
	fmul	f7, f7, f9	# 990
	fadd	f7, f8, f7	# 988
	fmul	f5, f5, f6	# 991
	lw		x11, 36(x7)	# 547
	mul		x6, x30, x6	# 552
	add		x6, x11, x6	# 552
	flw		f6, 0(x6)	# 552
	fmul	f5, f5, f6	# 991
	fadd	f5, f7, f5	# 988
	jal		x0, beq_cont.31774	# 985
beq.31775:
	fadd	f5, f0, f8	# 986
beq_cont.31774:
	lw		x6, 4(x7)	# 369
	beq		x6, x8, beq.31777	# 1360
	jal		x0, beq_cont.31776	# 1360
beq.31777:
	fadd	f6, f0, f16	# 1360
	fsub	f5, f5, f6	# 1360
beq_cont.31776:
	lw		x6, 24(x7)	# 389
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.31779	# 122
	addi	x7, x0, 0	# 122
	jal		x0, fle_cont.31778	# 122
fle_else.31779:
	addi	x7, x0, 1	# 122
fle_cont.31778:
	beq		x6, x9, beq.31781	# 220
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.31783	# 122
	addi	x6, x0, 1	# 220
	jal		x0, fle_cont.31782	# 122
fle_else.31783:
	addi	x6, x0, 0	# 220
fle_cont.31782:
	jal		x0, beq_cont.31780	# 220
beq.31781:
	addi	x6, x7, 0	# 220
beq_cont.31780:
	beq		x6, x9, beq.31785	# 1361
	addi	x6, x0, 0	# 1361
	jal		x0, beq_cont.31784	# 1361
beq.31785:
	addi	x6, x0, 1	# 1361
beq_cont.31784:
	jal		x0, beq_cont.31772	# 1372
beq.31773:
	lw		x8, 16(x7)	# 437
	mul		x11, x30, x9	# 313
	add		x11, x8, x11	# 313
	flw		f8, 0(x11)	# 313
	fmul	f5, f8, f5	# 313
	mul		x11, x30, x10	# 313
	add		x11, x8, x11	# 313
	flw		f8, 0(x11)	# 313
	fmul	f6, f8, f6	# 313
	fadd	f5, f5, f6	# 313
	mul		x6, x30, x6	# 313
	add		x6, x8, x6	# 313
	flw		f6, 0(x6)	# 313
	fmul	f6, f6, f7	# 313
	fadd	f5, f5, f6	# 313
	lw		x6, 24(x7)	# 389
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.31787	# 122
	addi	x7, x0, 0	# 122
	jal		x0, fle_cont.31786	# 122
fle_else.31787:
	addi	x7, x0, 1	# 122
fle_cont.31786:
	beq		x6, x9, beq.31789	# 220
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.31791	# 122
	addi	x6, x0, 1	# 220
	jal		x0, fle_cont.31790	# 122
fle_else.31791:
	addi	x6, x0, 0	# 220
fle_cont.31790:
	jal		x0, beq_cont.31788	# 220
beq.31789:
	addi	x6, x7, 0	# 220
beq_cont.31788:
	beq		x6, x9, beq.31793	# 1354
	addi	x6, x0, 0	# 1354
	jal		x0, beq_cont.31792	# 1354
beq.31793:
	addi	x6, x0, 1	# 1354
beq_cont.31792:
beq_cont.31772:
	jal		x0, beq_cont.31770	# 1370
beq.31771:
	fle		x31, f5, f4	# 124
	beq		x31, x0, fle_cont.31794	# 124
	fsub	f5, f0, f5	# 124
fle_cont.31794:
	lw		x8, 16(x7)	# 407
	mul		x11, x30, x9	# 412
	add		x8, x8, x11	# 412
	flw		f8, 0(x8)	# 412
	fle		x31, f8, f5	# 125
	beq		x31, x0, fle_else.31796	# 125
	addi	x6, x0, 0	# 1347
	jal		x0, fle_cont.31795	# 125
fle_else.31796:
	fle		x31, f6, f4	# 124
	beq		x31, x0, fle_else.31798	# 124
	fsub	f5, f0, f6	# 124
	jal		x0, fle_cont.31797	# 124
fle_else.31798:
	fadd	f5, f0, f6	# 124
fle_cont.31797:
	lw		x8, 16(x7)	# 417
	mul		x11, x30, x10	# 422
	add		x8, x8, x11	# 422
	flw		f6, 0(x8)	# 422
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.31800	# 125
	addi	x6, x0, 0	# 1346
	jal		x0, fle_cont.31799	# 125
fle_else.31800:
	fle		x31, f7, f4	# 124
	beq		x31, x0, fle_else.31802	# 124
	fsub	f4, f0, f7	# 124
	jal		x0, fle_cont.31801	# 124
fle_else.31802:
	fadd	f4, f0, f7	# 124
fle_cont.31801:
	lw		x8, 16(x7)	# 427
	mul		x6, x30, x6	# 432
	add		x6, x8, x6	# 432
	flw		f5, 0(x6)	# 432
	fle		x31, f5, f4	# 125
	beq		x31, x0, fle_else.31804	# 125
	addi	x6, x0, 0	# 125
	jal		x0, fle_cont.31803	# 125
fle_else.31804:
	addi	x6, x0, 1	# 125
fle_cont.31803:
fle_cont.31799:
fle_cont.31795:
	beq		x6, x9, beq.31806	# 1342
	lw		x6, 24(x7)	# 389
	jal		x0, beq_cont.31805	# 1342
beq.31806:
	lw		x6, 24(x7)	# 389
	beq		x6, x9, beq.31808	# 1348
	addi	x6, x0, 0	# 1348
	jal		x0, beq_cont.31807	# 1348
beq.31808:
	addi	x6, x0, 1	# 1348
beq_cont.31807:
beq_cont.31805:
beq_cont.31770:
	beq		x6, x9, beq.31809	# 1384
	addi	x4, x0, 0	# 1385
	jalr	x0, x1, 0	# 1385
beq.31809:
	add		x4, x4, x10	# 1387
	lw		x31, 0(x29)	# 1387
	jalr	x0, x31, 0	# 1387
beq.31769:
	addi	x4, x0, 1	# 1382
	jalr	x0, x1, 0	# 1382
shadow_check_and_group.2837.17770:
	lw		x6, 32(x29)	# 1400
	lw		x7, 28(x29)	# 1400
	lw		x8, 24(x29)	# 1400
	lw		x9, 20(x29)	# 1400
	lw		x10, 16(x29)	# 1400
	lw		x11, 12(x29)	# 1400
	lw		x12, 8(x29)	# 1400
	flw		f1, 4(x29)	# 1400
	mul		x13, x30, x4	# 1400
	add		x13, x5, x13	# 1400
	lw		x13, 0(x13)	# 1400
	beq		x13, x9, beq.31810	# 1400
	mul		x9, x30, x13	# 1142
	addi	x9, x9, 60048	# 1142
	lw		x9, 0(x9)	# 1142
	mul		x14, x30, x11	# 1143
	addi	x14, x14, 60552	# 1143
	flw		f2, 0(x14)	# 1143
	lw		x14, 20(x9)	# 447
	mul		x15, x30, x11	# 452
	add		x14, x14, x15	# 452
	flw		f3, 0(x14)	# 452
	fsub	f2, f2, f3	# 1143
	mul		x14, x30, x12	# 1144
	addi	x14, x14, 60552	# 1144
	flw		f3, 0(x14)	# 1144
	lw		x14, 20(x9)	# 457
	mul		x15, x30, x12	# 462
	add		x14, x14, x15	# 462
	flw		f4, 0(x14)	# 462
	fsub	f3, f3, f4	# 1144
	mul		x14, x30, x8	# 1145
	addi	x14, x14, 60552	# 1145
	flw		f4, 0(x14)	# 1145
	lw		x14, 20(x9)	# 467
	mul		x15, x30, x8	# 472
	add		x14, x14, x15	# 472
	flw		f5, 0(x14)	# 472
	fsub	f4, f4, f5	# 1145
	mul		x14, x30, x13	# 1147
	addi	x14, x14, 60748	# 1147
	lw		x14, 0(x14)	# 1147
	lw		x15, 4(x9)	# 369
	beq		x15, x12, beq.31812	# 1149
	addi	x7, x0, 2	# 1151
	beq		x15, x7, beq.31814	# 1151
	mul		x7, x30, x11	# 1123
	add		x7, x14, x7	# 1123
	flw		f5, 0(x7)	# 1123
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31816	# 120
	addi	x7, x0, 0	# 1125
	jal		x0, feq_cont.31815	# 120
feq_else.31816:
	mul		x7, x30, x12	# 1127
	add		x7, x14, x7	# 1127
	flw		f6, 0(x7)	# 1127
	fmul	f6, f6, f2	# 1127
	mul		x7, x30, x8	# 1127
	add		x7, x14, x7	# 1127
	flw		f7, 0(x7)	# 1127
	fmul	f7, f7, f3	# 1127
	fadd	f6, f6, f7	# 1127
	mul		x7, x30, x10	# 1127
	add		x7, x14, x7	# 1127
	flw		f7, 0(x7)	# 1127
	fmul	f7, f7, f4	# 1127
	fadd	f6, f6, f7	# 1127
	fmul	f7, f2, f2	# 127
	lw		x7, 16(x9)	# 407
	mul		x15, x30, x11	# 412
	add		x7, x7, x15	# 412
	flw		f8, 0(x7)	# 412
	fmul	f7, f7, f8	# 983
	fmul	f8, f3, f3	# 127
	lw		x7, 16(x9)	# 417
	mul		x15, x30, x12	# 422
	add		x7, x7, x15	# 422
	flw		f9, 0(x7)	# 422
	fmul	f8, f8, f9	# 983
	fadd	f7, f7, f8	# 983
	fmul	f8, f4, f4	# 127
	lw		x7, 16(x9)	# 427
	mul		x15, x30, x8	# 432
	add		x7, x7, x15	# 432
	flw		f9, 0(x7)	# 432
	fmul	f8, f8, f9	# 983
	fadd	f7, f7, f8	# 983
	lw		x7, 12(x9)	# 398
	beq		x7, x11, beq.31818	# 985
	fmul	f8, f3, f4	# 989
	lw		x7, 36(x9)	# 527
	mul		x15, x30, x11	# 532
	add		x7, x7, x15	# 532
	flw		f9, 0(x7)	# 532
	fmul	f8, f8, f9	# 989
	fadd	f7, f7, f8	# 988
	fmul	f4, f4, f2	# 990
	lw		x7, 36(x9)	# 537
	mul		x15, x30, x12	# 542
	add		x7, x7, x15	# 542
	flw		f8, 0(x7)	# 542
	fmul	f4, f4, f8	# 990
	fadd	f4, f7, f4	# 988
	fmul	f2, f2, f3	# 991
	lw		x7, 36(x9)	# 547
	mul		x15, x30, x8	# 552
	add		x7, x7, x15	# 552
	flw		f3, 0(x7)	# 552
	fmul	f2, f2, f3	# 991
	fadd	f2, f4, f2	# 988
	jal		x0, beq_cont.31817	# 985
beq.31818:
	fadd	f2, f0, f7	# 986
beq_cont.31817:
	lw		x7, 4(x9)	# 369
	beq		x7, x10, beq.31820	# 1129
	jal		x0, beq_cont.31819	# 1129
beq.31820:
	fadd	f3, f0, f16	# 1129
	fsub	f2, f2, f3	# 1129
beq_cont.31819:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1130
	fsub	f2, f3, f2	# 1130
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.31822	# 121
	addi	x7, x0, 0	# 1137
	jal		x0, fle_cont.31821	# 121
fle_else.31822:
	lw		x7, 24(x9)	# 389
	beq		x7, x11, beq.31824	# 1132
	addi	x7, x0, 0	# 1133
	fsqrt	f1, f2	# 1133
	fadd	f1, f6, f1	# 1133
	addi	x9, x0, 4	# 1133
	mul		x9, x30, x9	# 1133
	add		x9, x14, x9	# 1133
	flw		f2, 0(x9)	# 1133
	fmul	f1, f1, f2	# 1133
	mul		x7, x30, x7	# 1133
	addi	x7, x7, 60540	# 1133
	fsw		f1, 0(x7)	# 1133
	jal		x0, beq_cont.31823	# 1132
beq.31824:
	addi	x7, x0, 0	# 1135
	fsqrt	f1, f2	# 1135
	fsub	f1, f6, f1	# 1135
	addi	x9, x0, 4	# 1135
	mul		x9, x30, x9	# 1135
	add		x9, x14, x9	# 1135
	flw		f2, 0(x9)	# 1135
	fmul	f1, f1, f2	# 1135
	mul		x7, x30, x7	# 1135
	addi	x7, x7, 60540	# 1135
	fsw		f1, 0(x7)	# 1135
beq_cont.31823:
	addi	x7, x0, 1	# 1136
fle_cont.31821:
feq_cont.31815:
	jal		x0, beq_cont.31813	# 1151
beq.31814:
	mul		x7, x30, x11	# 1113
	add		x7, x14, x7	# 1113
	flw		f5, 0(x7)	# 1113
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31826	# 122
	addi	x7, x0, 0	# 1117
	jal		x0, fle_cont.31825	# 122
fle_else.31826:
	mul		x7, x30, x12	# 1115
	add		x7, x14, x7	# 1115
	flw		f1, 0(x7)	# 1115
	fmul	f1, f1, f2	# 1115
	mul		x7, x30, x8	# 1115
	add		x7, x14, x7	# 1115
	flw		f2, 0(x7)	# 1115
	fmul	f2, f2, f3	# 1115
	fadd	f1, f1, f2	# 1115
	mul		x7, x30, x10	# 1115
	add		x7, x14, x7	# 1115
	flw		f2, 0(x7)	# 1115
	fmul	f2, f2, f4	# 1115
	fadd	f1, f1, f2	# 1115
	mul		x7, x30, x11	# 1114
	addi	x7, x7, 60540	# 1114
	fsw		f1, 0(x7)	# 1114
	addi	x7, x0, 1	# 1116
fle_cont.31825:
beq_cont.31813:
	jal		x0, beq_cont.31811	# 1149
beq.31812:
	mul		x15, x30, x11	# 1080
	add		x15, x14, x15	# 1080
	flw		f5, 0(x15)	# 1080
	fsub	f5, f5, f2	# 1080
	mul		x15, x30, x12	# 1080
	add		x15, x14, x15	# 1080
	flw		f6, 0(x15)	# 1080
	fmul	f5, f5, f6	# 1080
	mul		x15, x30, x12	# 1082
	addi	x15, x15, 60736	# 1082
	flw		f6, 0(x15)	# 1082
	fmul	f6, f5, f6	# 1082
	fadd	f6, f6, f3	# 1082
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31827	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31827:
	lw		x15, 16(x9)	# 417
	mul		x16, x30, x12	# 422
	add		x15, x15, x16	# 422
	flw		f7, 0(x15)	# 422
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31829	# 125
	addi	x15, x0, 0	# 1086
	jal		x0, fle_cont.31828	# 125
fle_else.31829:
	mul		x15, x30, x8	# 1083
	addi	x15, x15, 60736	# 1083
	flw		f6, 0(x15)	# 1083
	fmul	f6, f5, f6	# 1083
	fadd	f6, f6, f4	# 1083
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31830	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31830:
	lw		x15, 16(x9)	# 427
	mul		x16, x30, x8	# 432
	add		x15, x15, x16	# 432
	flw		f7, 0(x15)	# 432
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31832	# 125
	addi	x15, x0, 0	# 1085
	jal		x0, fle_cont.31831	# 125
fle_else.31832:
	mul		x15, x30, x12	# 1084
	add		x15, x14, x15	# 1084
	flw		f6, 0(x15)	# 1084
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.31834	# 120
	addi	x15, x0, 0	# 1084
	jal		x0, feq_cont.31833	# 120
feq_else.31834:
	addi	x15, x0, 1	# 1084
feq_cont.31833:
fle_cont.31831:
fle_cont.31828:
	beq		x15, x11, beq.31836	# 1081
	mul		x7, x30, x11	# 1088
	addi	x7, x7, 60540	# 1088
	fsw		f5, 0(x7)	# 1088
	addi	x7, x0, 1	# 1088
	jal		x0, beq_cont.31835	# 1081
beq.31836:
	mul		x15, x30, x8	# 1089
	add		x15, x14, x15	# 1089
	flw		f5, 0(x15)	# 1089
	fsub	f5, f5, f3	# 1089
	mul		x15, x30, x10	# 1089
	add		x15, x14, x15	# 1089
	flw		f6, 0(x15)	# 1089
	fmul	f5, f5, f6	# 1089
	mul		x15, x30, x11	# 1091
	addi	x15, x15, 60736	# 1091
	flw		f6, 0(x15)	# 1091
	fmul	f7, f5, f6	# 1091
	fadd	f7, f7, f2	# 1091
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.31837	# 124
	fsub	f7, f0, f7	# 124
fle_cont.31837:
	lw		x15, 16(x9)	# 407
	mul		x16, x30, x11	# 412
	add		x15, x15, x16	# 412
	flw		f8, 0(x15)	# 412
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.31839	# 125
	addi	x10, x0, 0	# 1095
	jal		x0, fle_cont.31838	# 125
fle_else.31839:
	mul		x15, x30, x8	# 1092
	addi	x15, x15, 60736	# 1092
	flw		f7, 0(x15)	# 1092
	fmul	f7, f5, f7	# 1092
	fadd	f7, f7, f4	# 1092
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.31840	# 124
	fsub	f7, f0, f7	# 124
fle_cont.31840:
	lw		x15, 16(x9)	# 427
	mul		x16, x30, x8	# 432
	add		x15, x15, x16	# 432
	flw		f8, 0(x15)	# 432
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.31842	# 125
	addi	x10, x0, 0	# 1094
	jal		x0, fle_cont.31841	# 125
fle_else.31842:
	mul		x10, x30, x10	# 1093
	add		x10, x14, x10	# 1093
	flw		f7, 0(x10)	# 1093
	feq		x31, f7, f1	# 120
	beq		x31, x0, feq_else.31844	# 120
	addi	x10, x0, 0	# 1093
	jal		x0, feq_cont.31843	# 120
feq_else.31844:
	addi	x10, x0, 1	# 1093
feq_cont.31843:
fle_cont.31841:
fle_cont.31838:
	beq		x10, x11, beq.31846	# 1090
	mul		x7, x30, x11	# 1097
	addi	x7, x7, 60540	# 1097
	fsw		f5, 0(x7)	# 1097
	addi	x7, x0, 2	# 1097
	jal		x0, beq_cont.31845	# 1090
beq.31846:
	addi	x10, x0, 4	# 1098
	mul		x10, x30, x10	# 1098
	add		x10, x14, x10	# 1098
	flw		f5, 0(x10)	# 1098
	fsub	f4, f5, f4	# 1098
	mul		x10, x30, x7	# 1098
	add		x10, x14, x10	# 1098
	flw		f5, 0(x10)	# 1098
	fmul	f4, f4, f5	# 1098
	fmul	f5, f4, f6	# 1100
	fadd	f2, f5, f2	# 1100
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.31847	# 124
	fsub	f2, f0, f2	# 124
fle_cont.31847:
	lw		x10, 16(x9)	# 407
	mul		x15, x30, x11	# 412
	add		x10, x10, x15	# 412
	flw		f5, 0(x10)	# 412
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.31849	# 125
	addi	x7, x0, 0	# 1104
	jal		x0, fle_cont.31848	# 125
fle_else.31849:
	mul		x10, x30, x12	# 1101
	addi	x10, x10, 60736	# 1101
	flw		f2, 0(x10)	# 1101
	fmul	f2, f4, f2	# 1101
	fadd	f2, f2, f3	# 1101
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.31850	# 124
	fsub	f2, f0, f2	# 124
fle_cont.31850:
	lw		x9, 16(x9)	# 417
	mul		x10, x30, x12	# 422
	add		x9, x9, x10	# 422
	flw		f3, 0(x9)	# 422
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.31852	# 125
	addi	x7, x0, 0	# 1103
	jal		x0, fle_cont.31851	# 125
fle_else.31852:
	mul		x7, x30, x7	# 1102
	add		x7, x14, x7	# 1102
	flw		f2, 0(x7)	# 1102
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.31854	# 120
	addi	x7, x0, 0	# 1102
	jal		x0, feq_cont.31853	# 120
feq_else.31854:
	addi	x7, x0, 1	# 1102
feq_cont.31853:
fle_cont.31851:
fle_cont.31848:
	beq		x7, x11, beq.31856	# 1099
	mul		x7, x30, x11	# 1106
	addi	x7, x7, 60540	# 1106
	fsw		f4, 0(x7)	# 1106
	addi	x7, x0, 3	# 1106
	jal		x0, beq_cont.31855	# 1099
beq.31856:
	addi	x7, x0, 0	# 1108
beq_cont.31855:
beq_cont.31845:
beq_cont.31835:
beq_cont.31811:
	mul		x9, x30, x11	# 1405
	addi	x9, x9, 60540	# 1405
	flw		f1, 0(x9)	# 1405
	beq		x7, x11, beq.31858	# 1406
	lui		x7, %hi(l.26266)	# 1406
	ori		x7, x0, %lo(l.26266)	# 1406
	flw		f2, 0(x7)	# 1406
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.31860	# 125
	addi	x7, x0, 0	# 125
	jal		x0, fle_cont.31859	# 125
fle_else.31860:
	addi	x7, x0, 1	# 125
fle_cont.31859:
	jal		x0, beq_cont.31857	# 1406
beq.31858:
	addi	x7, x0, 0	# 1406
beq_cont.31857:
	beq		x7, x11, beq.31861	# 1406
	lui		x7, %hi(l.26268)	# 1409
	ori		x7, x0, %lo(l.26268)	# 1409
	flw		f2, 0(x7)	# 1409
	fadd	f1, f1, f2	# 1409
	mul		x7, x30, x11	# 1410
	addi	x7, x7, 60312	# 1410
	flw		f2, 0(x7)	# 1410
	fmul	f2, f2, f1	# 1410
	mul		x7, x30, x11	# 1410
	addi	x7, x7, 60552	# 1410
	flw		f3, 0(x7)	# 1410
	fadd	f2, f2, f3	# 1410
	mul		x7, x30, x12	# 1411
	addi	x7, x7, 60312	# 1411
	flw		f3, 0(x7)	# 1411
	fmul	f3, f3, f1	# 1411
	mul		x7, x30, x12	# 1411
	addi	x7, x7, 60552	# 1411
	flw		f4, 0(x7)	# 1411
	fadd	f3, f3, f4	# 1411
	mul		x7, x30, x8	# 1412
	addi	x7, x7, 60312	# 1412
	flw		f4, 0(x7)	# 1412
	fmul	f1, f4, f1	# 1412
	mul		x7, x30, x8	# 1412
	addi	x7, x7, 60552	# 1412
	flw		f4, 0(x7)	# 1412
	fadd	f1, f1, f4	# 1412
	sw		x5, 0(x2)	# 1413
	sw		x29, -4(x2)	# 1413
	sw		x12, -8(x2)	# 1413
	sw		x4, -12(x2)	# 1413
	sw		x11, -16(x2)	# 1413
	addi	x4, x11, 0
	addi	x29, x6, 0
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -20(x2)	# 1413
	addi	x2, x2, -24	# 1413
	lw		x31, 0(x29)	# 1413
	jalr	x1, x31, 0	# 1413
	addi	x2, x2, 24	# 1413
	lw		x1, -20(x2)	# 1413
	lw		x5, -16(x2)	# 1413
	beq		x4, x5, beq.31862	# 1413
	addi	x4, x0, 1	# 1414
	jalr	x0, x1, 0	# 1414
beq.31862:
	lw		x4, -8(x2)	# 1416
	lw		x5, -12(x2)	# 1416
	add		x4, x5, x4	# 1416
	lw		x5, 0(x2)	# 1416
	lw		x29, -4(x2)	# 1416
	lw		x31, 0(x29)	# 1416
	jalr	x0, x31, 0	# 1416
beq.31861:
	mul		x6, x30, x13	# 1422
	addi	x6, x6, 60048	# 1422
	lw		x6, 0(x6)	# 1422
	lw		x6, 24(x6)	# 389
	beq		x6, x11, beq.31863	# 1422
	add		x4, x4, x12	# 1423
	lw		x31, 0(x29)	# 1423
	jalr	x0, x31, 0	# 1423
beq.31863:
	addi	x4, x0, 0	# 1425
	jalr	x0, x1, 0	# 1425
beq.31810:
	addi	x4, x0, 0	# 1401
	jalr	x0, x1, 0	# 1401
shadow_check_one_or_group.2840.17773:
	lw		x6, 16(x29)	# 1430
	lw		x7, 12(x29)	# 1430
	lw		x8, 8(x29)	# 1430
	lw		x9, 4(x29)	# 1430
	mul		x10, x30, x4	# 1430
	add		x10, x5, x10	# 1430
	lw		x10, 0(x10)	# 1430
	beq		x10, x7, beq.31864	# 1431
	mul		x7, x30, x10	# 1434
	addi	x7, x7, 60332	# 1434
	lw		x7, 0(x7)	# 1434
	sw		x5, 0(x2)	# 1435
	sw		x29, -4(x2)	# 1435
	sw		x9, -8(x2)	# 1435
	sw		x4, -12(x2)	# 1435
	sw		x8, -16(x2)	# 1435
	addi	x5, x7, 0
	addi	x4, x8, 0
	addi	x29, x6, 0
	sw		x1, -20(x2)	# 1435
	addi	x2, x2, -24	# 1435
	lw		x31, 0(x29)	# 1435
	jalr	x1, x31, 0	# 1435
	addi	x2, x2, 24	# 1435
	lw		x1, -20(x2)	# 1435
	lw		x5, -16(x2)	# 1436
	beq		x4, x5, beq.31865	# 1436
	addi	x4, x0, 1	# 1437
	jalr	x0, x1, 0	# 1437
beq.31865:
	lw		x4, -8(x2)	# 1439
	lw		x5, -12(x2)	# 1439
	add		x4, x5, x4	# 1439
	lw		x5, 0(x2)	# 1439
	lw		x29, -4(x2)	# 1439
	lw		x31, 0(x29)	# 1439
	jalr	x0, x31, 0	# 1439
beq.31864:
	addi	x4, x0, 0	# 1432
	jalr	x0, x1, 0	# 1432
shadow_check_one_or_matrix.2843.17776:
	lw		x6, 32(x29)	# 1445
	lw		x7, 28(x29)	# 1445
	lw		x8, 24(x29)	# 1445
	lw		x9, 20(x29)	# 1445
	lw		x10, 16(x29)	# 1445
	lw		x11, 12(x29)	# 1445
	lw		x12, 8(x29)	# 1445
	flw		f1, 4(x29)	# 1445
	mul		x13, x30, x4	# 1445
	add		x13, x5, x13	# 1445
	lw		x13, 0(x13)	# 1445
	mul		x14, x30, x11	# 1446
	add		x14, x13, x14	# 1446
	lw		x14, 0(x14)	# 1446
	beq		x14, x9, beq.31866	# 1447
	addi	x9, x0, 99	# 1451
	sw		x13, 0(x2)	# 1451
	sw		x6, -4(x2)	# 1451
	sw		x5, -8(x2)	# 1451
	sw		x29, -12(x2)	# 1451
	sw		x12, -16(x2)	# 1451
	sw		x4, -20(x2)	# 1451
	sw		x11, -24(x2)	# 1451
	beq		x14, x9, beq.31868	# 1451
	mul		x9, x30, x14	# 1142
	addi	x9, x9, 60048	# 1142
	lw		x9, 0(x9)	# 1142
	addi	x15, x0, 0	# 1143
	mul		x15, x30, x15	# 1143
	addi	x15, x15, 60552	# 1143
	flw		f2, 0(x15)	# 1143
	lw		x15, 20(x9)	# 447
	mul		x16, x30, x11	# 452
	add		x15, x15, x16	# 452
	flw		f3, 0(x15)	# 452
	fsub	f2, f2, f3	# 1143
	addi	x15, x0, 1	# 1144
	mul		x15, x30, x15	# 1144
	addi	x15, x15, 60552	# 1144
	flw		f3, 0(x15)	# 1144
	lw		x15, 20(x9)	# 457
	mul		x16, x30, x12	# 462
	add		x15, x15, x16	# 462
	flw		f4, 0(x15)	# 462
	fsub	f3, f3, f4	# 1144
	addi	x15, x0, 2	# 1145
	mul		x15, x30, x15	# 1145
	addi	x15, x15, 60552	# 1145
	flw		f4, 0(x15)	# 1145
	lw		x15, 20(x9)	# 467
	mul		x16, x30, x8	# 472
	add		x15, x15, x16	# 472
	flw		f5, 0(x15)	# 472
	fsub	f4, f4, f5	# 1145
	mul		x14, x30, x14	# 1147
	addi	x14, x14, 60748	# 1147
	lw		x14, 0(x14)	# 1147
	lw		x15, 4(x9)	# 369
	addi	x16, x0, 1	# 1149
	beq		x15, x16, beq.31870	# 1149
	addi	x7, x0, 2	# 1151
	beq		x15, x7, beq.31872	# 1151
	mul		x7, x30, x11	# 1123
	add		x7, x14, x7	# 1123
	flw		f5, 0(x7)	# 1123
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31874	# 120
	addi	x7, x0, 0	# 1125
	jal		x0, feq_cont.31873	# 120
feq_else.31874:
	mul		x7, x30, x12	# 1127
	add		x7, x14, x7	# 1127
	flw		f6, 0(x7)	# 1127
	fmul	f6, f6, f2	# 1127
	mul		x7, x30, x8	# 1127
	add		x7, x14, x7	# 1127
	flw		f7, 0(x7)	# 1127
	fmul	f7, f7, f3	# 1127
	fadd	f6, f6, f7	# 1127
	mul		x7, x30, x10	# 1127
	add		x7, x14, x7	# 1127
	flw		f7, 0(x7)	# 1127
	fmul	f7, f7, f4	# 1127
	fadd	f6, f6, f7	# 1127
	fmul	f7, f2, f2	# 127
	lw		x7, 16(x9)	# 407
	mul		x15, x30, x11	# 412
	add		x7, x7, x15	# 412
	flw		f8, 0(x7)	# 412
	fmul	f7, f7, f8	# 983
	fmul	f8, f3, f3	# 127
	lw		x7, 16(x9)	# 417
	mul		x15, x30, x12	# 422
	add		x7, x7, x15	# 422
	flw		f9, 0(x7)	# 422
	fmul	f8, f8, f9	# 983
	fadd	f7, f7, f8	# 983
	fmul	f8, f4, f4	# 127
	lw		x7, 16(x9)	# 427
	mul		x15, x30, x8	# 432
	add		x7, x7, x15	# 432
	flw		f9, 0(x7)	# 432
	fmul	f8, f8, f9	# 983
	fadd	f7, f7, f8	# 983
	lw		x7, 12(x9)	# 398
	beq		x7, x11, beq.31876	# 985
	fmul	f8, f3, f4	# 989
	lw		x7, 36(x9)	# 527
	mul		x15, x30, x11	# 532
	add		x7, x7, x15	# 532
	flw		f9, 0(x7)	# 532
	fmul	f8, f8, f9	# 989
	fadd	f7, f7, f8	# 988
	fmul	f4, f4, f2	# 990
	lw		x7, 36(x9)	# 537
	mul		x15, x30, x12	# 542
	add		x7, x7, x15	# 542
	flw		f8, 0(x7)	# 542
	fmul	f4, f4, f8	# 990
	fadd	f4, f7, f4	# 988
	fmul	f2, f2, f3	# 991
	lw		x7, 36(x9)	# 547
	mul		x8, x30, x8	# 552
	add		x7, x7, x8	# 552
	flw		f3, 0(x7)	# 552
	fmul	f2, f2, f3	# 991
	fadd	f2, f4, f2	# 988
	jal		x0, beq_cont.31875	# 985
beq.31876:
	fadd	f2, f0, f7	# 986
beq_cont.31875:
	lw		x7, 4(x9)	# 369
	beq		x7, x10, beq.31878	# 1129
	jal		x0, beq_cont.31877	# 1129
beq.31878:
	fadd	f3, f0, f16	# 1129
	fsub	f2, f2, f3	# 1129
beq_cont.31877:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1130
	fsub	f2, f3, f2	# 1130
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.31880	# 121
	addi	x7, x0, 0	# 1137
	jal		x0, fle_cont.31879	# 121
fle_else.31880:
	lw		x7, 24(x9)	# 389
	beq		x7, x11, beq.31882	# 1132
	addi	x7, x0, 0	# 1133
	fsqrt	f1, f2	# 1133
	fadd	f1, f6, f1	# 1133
	addi	x8, x0, 4	# 1133
	mul		x8, x30, x8	# 1133
	add		x8, x14, x8	# 1133
	flw		f2, 0(x8)	# 1133
	fmul	f1, f1, f2	# 1133
	mul		x7, x30, x7	# 1133
	addi	x7, x7, 60540	# 1133
	fsw		f1, 0(x7)	# 1133
	jal		x0, beq_cont.31881	# 1132
beq.31882:
	addi	x7, x0, 0	# 1135
	fsqrt	f1, f2	# 1135
	fsub	f1, f6, f1	# 1135
	addi	x8, x0, 4	# 1135
	mul		x8, x30, x8	# 1135
	add		x8, x14, x8	# 1135
	flw		f2, 0(x8)	# 1135
	fmul	f1, f1, f2	# 1135
	mul		x7, x30, x7	# 1135
	addi	x7, x7, 60540	# 1135
	fsw		f1, 0(x7)	# 1135
beq_cont.31881:
	addi	x7, x0, 1	# 1136
fle_cont.31879:
feq_cont.31873:
	jal		x0, beq_cont.31871	# 1151
beq.31872:
	mul		x7, x30, x11	# 1113
	add		x7, x14, x7	# 1113
	flw		f5, 0(x7)	# 1113
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31884	# 122
	addi	x7, x0, 0	# 1117
	jal		x0, fle_cont.31883	# 122
fle_else.31884:
	mul		x7, x30, x12	# 1115
	add		x7, x14, x7	# 1115
	flw		f1, 0(x7)	# 1115
	fmul	f1, f1, f2	# 1115
	mul		x7, x30, x8	# 1115
	add		x7, x14, x7	# 1115
	flw		f2, 0(x7)	# 1115
	fmul	f2, f2, f3	# 1115
	fadd	f1, f1, f2	# 1115
	mul		x7, x30, x10	# 1115
	add		x7, x14, x7	# 1115
	flw		f2, 0(x7)	# 1115
	fmul	f2, f2, f4	# 1115
	fadd	f1, f1, f2	# 1115
	mul		x7, x30, x11	# 1114
	addi	x7, x7, 60540	# 1114
	fsw		f1, 0(x7)	# 1114
	addi	x7, x0, 1	# 1116
fle_cont.31883:
beq_cont.31871:
	jal		x0, beq_cont.31869	# 1149
beq.31870:
	mul		x15, x30, x11	# 1080
	add		x15, x14, x15	# 1080
	flw		f5, 0(x15)	# 1080
	fsub	f5, f5, f2	# 1080
	mul		x15, x30, x12	# 1080
	add		x15, x14, x15	# 1080
	flw		f6, 0(x15)	# 1080
	fmul	f5, f5, f6	# 1080
	mul		x15, x30, x12	# 1082
	addi	x15, x15, 60736	# 1082
	flw		f6, 0(x15)	# 1082
	fmul	f6, f5, f6	# 1082
	fadd	f6, f6, f3	# 1082
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31885	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31885:
	lw		x15, 16(x9)	# 417
	mul		x16, x30, x12	# 422
	add		x15, x15, x16	# 422
	flw		f7, 0(x15)	# 422
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31887	# 125
	addi	x15, x0, 0	# 1086
	jal		x0, fle_cont.31886	# 125
fle_else.31887:
	mul		x15, x30, x8	# 1083
	addi	x15, x15, 60736	# 1083
	flw		f6, 0(x15)	# 1083
	fmul	f6, f5, f6	# 1083
	fadd	f6, f6, f4	# 1083
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31888	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31888:
	lw		x15, 16(x9)	# 427
	mul		x16, x30, x8	# 432
	add		x15, x15, x16	# 432
	flw		f7, 0(x15)	# 432
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31890	# 125
	addi	x15, x0, 0	# 1085
	jal		x0, fle_cont.31889	# 125
fle_else.31890:
	mul		x15, x30, x12	# 1084
	add		x15, x14, x15	# 1084
	flw		f6, 0(x15)	# 1084
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.31892	# 120
	addi	x15, x0, 0	# 1084
	jal		x0, feq_cont.31891	# 120
feq_else.31892:
	addi	x15, x0, 1	# 1084
feq_cont.31891:
fle_cont.31889:
fle_cont.31886:
	beq		x15, x11, beq.31894	# 1081
	mul		x7, x30, x11	# 1088
	addi	x7, x7, 60540	# 1088
	fsw		f5, 0(x7)	# 1088
	addi	x7, x0, 1	# 1088
	jal		x0, beq_cont.31893	# 1081
beq.31894:
	mul		x15, x30, x8	# 1089
	add		x15, x14, x15	# 1089
	flw		f5, 0(x15)	# 1089
	fsub	f5, f5, f3	# 1089
	mul		x15, x30, x10	# 1089
	add		x15, x14, x15	# 1089
	flw		f6, 0(x15)	# 1089
	fmul	f5, f5, f6	# 1089
	mul		x15, x30, x11	# 1091
	addi	x15, x15, 60736	# 1091
	flw		f6, 0(x15)	# 1091
	fmul	f7, f5, f6	# 1091
	fadd	f7, f7, f2	# 1091
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.31895	# 124
	fsub	f7, f0, f7	# 124
fle_cont.31895:
	lw		x15, 16(x9)	# 407
	mul		x16, x30, x11	# 412
	add		x15, x15, x16	# 412
	flw		f8, 0(x15)	# 412
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.31897	# 125
	addi	x8, x0, 0	# 1095
	jal		x0, fle_cont.31896	# 125
fle_else.31897:
	mul		x15, x30, x8	# 1092
	addi	x15, x15, 60736	# 1092
	flw		f7, 0(x15)	# 1092
	fmul	f7, f5, f7	# 1092
	fadd	f7, f7, f4	# 1092
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.31898	# 124
	fsub	f7, f0, f7	# 124
fle_cont.31898:
	lw		x15, 16(x9)	# 427
	mul		x8, x30, x8	# 432
	add		x8, x15, x8	# 432
	flw		f8, 0(x8)	# 432
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.31900	# 125
	addi	x8, x0, 0	# 1094
	jal		x0, fle_cont.31899	# 125
fle_else.31900:
	mul		x8, x30, x10	# 1093
	add		x8, x14, x8	# 1093
	flw		f7, 0(x8)	# 1093
	feq		x31, f7, f1	# 120
	beq		x31, x0, feq_else.31902	# 120
	addi	x8, x0, 0	# 1093
	jal		x0, feq_cont.31901	# 120
feq_else.31902:
	addi	x8, x0, 1	# 1093
feq_cont.31901:
fle_cont.31899:
fle_cont.31896:
	beq		x8, x11, beq.31904	# 1090
	mul		x7, x30, x11	# 1097
	addi	x7, x7, 60540	# 1097
	fsw		f5, 0(x7)	# 1097
	addi	x7, x0, 2	# 1097
	jal		x0, beq_cont.31903	# 1090
beq.31904:
	addi	x8, x0, 4	# 1098
	mul		x8, x30, x8	# 1098
	add		x8, x14, x8	# 1098
	flw		f5, 0(x8)	# 1098
	fsub	f4, f5, f4	# 1098
	mul		x8, x30, x7	# 1098
	add		x8, x14, x8	# 1098
	flw		f5, 0(x8)	# 1098
	fmul	f4, f4, f5	# 1098
	fmul	f5, f4, f6	# 1100
	fadd	f2, f5, f2	# 1100
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.31905	# 124
	fsub	f2, f0, f2	# 124
fle_cont.31905:
	lw		x8, 16(x9)	# 407
	mul		x10, x30, x11	# 412
	add		x8, x8, x10	# 412
	flw		f5, 0(x8)	# 412
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.31907	# 125
	addi	x7, x0, 0	# 1104
	jal		x0, fle_cont.31906	# 125
fle_else.31907:
	mul		x8, x30, x12	# 1101
	addi	x8, x8, 60736	# 1101
	flw		f2, 0(x8)	# 1101
	fmul	f2, f4, f2	# 1101
	fadd	f2, f2, f3	# 1101
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.31908	# 124
	fsub	f2, f0, f2	# 124
fle_cont.31908:
	lw		x8, 16(x9)	# 417
	mul		x9, x30, x12	# 422
	add		x8, x8, x9	# 422
	flw		f3, 0(x8)	# 422
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.31910	# 125
	addi	x7, x0, 0	# 1103
	jal		x0, fle_cont.31909	# 125
fle_else.31910:
	mul		x7, x30, x7	# 1102
	add		x7, x14, x7	# 1102
	flw		f2, 0(x7)	# 1102
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.31912	# 120
	addi	x7, x0, 0	# 1102
	jal		x0, feq_cont.31911	# 120
feq_else.31912:
	addi	x7, x0, 1	# 1102
feq_cont.31911:
fle_cont.31909:
fle_cont.31906:
	beq		x7, x11, beq.31914	# 1099
	mul		x7, x30, x11	# 1106
	addi	x7, x7, 60540	# 1106
	fsw		f4, 0(x7)	# 1106
	addi	x7, x0, 3	# 1106
	jal		x0, beq_cont.31913	# 1099
beq.31914:
	addi	x7, x0, 0	# 1108
beq_cont.31913:
beq_cont.31903:
beq_cont.31893:
beq_cont.31869:
	addi	x8, x0, 0	# 1457
	beq		x7, x8, beq.31916	# 1457
	addi	x7, x0, 0	# 1458
	mul		x7, x30, x7	# 1458
	addi	x7, x7, 60540	# 1458
	flw		f1, 0(x7)	# 1458
	fadd	f2, f0, f23	# 1458
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.31918	# 125
	addi	x4, x0, 0	# 1462
	jal		x0, fle_cont.31917	# 125
fle_else.31918:
	addi	x7, x0, 1	# 1459
	addi	x5, x13, 0
	addi	x4, x7, 0
	addi	x29, x6, 0
	sw		x1, -28(x2)	# 1459
	addi	x2, x2, -32	# 1459
	lw		x31, 0(x29)	# 1459
	jalr	x1, x31, 0	# 1459
	addi	x2, x2, 32	# 1459
	lw		x1, -28(x2)	# 1459
	addi	x5, x0, 0	# 1459
	beq		x4, x5, beq.31920	# 1459
	addi	x4, x0, 1	# 1460
	jal		x0, beq_cont.31919	# 1459
beq.31920:
	addi	x4, x0, 0	# 1461
beq_cont.31919:
fle_cont.31917:
	jal		x0, beq_cont.31915	# 1457
beq.31916:
	addi	x4, x0, 0	# 1463
beq_cont.31915:
	jal		x0, beq_cont.31867	# 1451
beq.31868:
	addi	x4, x0, 1	# 1452
beq_cont.31867:
	lw		x5, -24(x2)	# 1450
	beq		x4, x5, beq.31921	# 1450
	lw		x4, -16(x2)	# 1465
	lw		x6, 0(x2)	# 1465
	lw		x29, -4(x2)	# 1465
	addi	x5, x6, 0
	sw		x1, -28(x2)	# 1465
	addi	x2, x2, -32	# 1465
	lw		x31, 0(x29)	# 1465
	jalr	x1, x31, 0	# 1465
	addi	x2, x2, 32	# 1465
	lw		x1, -28(x2)	# 1465
	lw		x5, -24(x2)	# 1465
	beq		x4, x5, beq.31922	# 1465
	addi	x4, x0, 1	# 1466
	jalr	x0, x1, 0	# 1466
beq.31922:
	lw		x4, -16(x2)	# 1468
	lw		x5, -20(x2)	# 1468
	add		x4, x5, x4	# 1468
	lw		x5, -8(x2)	# 1468
	lw		x29, -12(x2)	# 1468
	lw		x31, 0(x29)	# 1468
	jalr	x0, x31, 0	# 1468
beq.31921:
	lw		x4, -16(x2)	# 1470
	lw		x5, -20(x2)	# 1470
	add		x4, x5, x4	# 1470
	lw		x5, -8(x2)	# 1470
	lw		x29, -12(x2)	# 1470
	lw		x31, 0(x29)	# 1470
	jalr	x0, x31, 0	# 1470
beq.31866:
	addi	x4, x0, 0	# 1448
	jalr	x0, x1, 0	# 1448
solve_each_element.2846.17779:
	lw		x7, 28(x29)	# 1481
	lw		x8, 24(x29)	# 1481
	lw		x9, 20(x29)	# 1481
	lw		x10, 16(x29)	# 1481
	lw		x11, 12(x29)	# 1481
	lw		x12, 8(x29)	# 1481
	flw		f1, 4(x29)	# 1481
	mul		x13, x30, x4	# 1481
	add		x13, x5, x13	# 1481
	lw		x13, 0(x13)	# 1481
	beq		x13, x9, beq.31923	# 1482
	mul		x9, x30, x13	# 1048
	addi	x9, x9, 60048	# 1048
	lw		x9, 0(x9)	# 1048
	mul		x14, x30, x11	# 1050
	addi	x14, x14, 60636	# 1050
	flw		f2, 0(x14)	# 1050
	lw		x14, 20(x9)	# 447
	mul		x15, x30, x11	# 452
	add		x14, x14, x15	# 452
	flw		f3, 0(x14)	# 452
	fsub	f2, f2, f3	# 1050
	mul		x14, x30, x12	# 1051
	addi	x14, x14, 60636	# 1051
	flw		f3, 0(x14)	# 1051
	lw		x14, 20(x9)	# 457
	mul		x15, x30, x12	# 462
	add		x14, x14, x15	# 462
	flw		f4, 0(x14)	# 462
	fsub	f3, f3, f4	# 1051
	mul		x14, x30, x8	# 1052
	addi	x14, x14, 60636	# 1052
	flw		f4, 0(x14)	# 1052
	lw		x14, 20(x9)	# 467
	mul		x15, x30, x8	# 472
	add		x14, x14, x15	# 472
	flw		f5, 0(x14)	# 472
	fsub	f4, f4, f5	# 1052
	lw		x14, 4(x9)	# 369
	beq		x14, x12, beq.31925	# 1055
	addi	x15, x0, 2	# 1056
	beq		x14, x15, beq.31927	# 1056
	mul		x14, x30, x11	# 1022
	add		x14, x6, x14	# 1022
	flw		f5, 0(x14)	# 1022
	mul		x14, x30, x12	# 1022
	add		x14, x6, x14	# 1022
	flw		f6, 0(x14)	# 1022
	mul		x14, x30, x8	# 1022
	add		x14, x6, x14	# 1022
	flw		f7, 0(x14)	# 1022
	fmul	f8, f5, f5	# 127
	lw		x14, 16(x9)	# 407
	mul		x15, x30, x11	# 412
	add		x14, x14, x15	# 412
	flw		f9, 0(x14)	# 412
	fmul	f8, f8, f9	# 983
	fmul	f9, f6, f6	# 127
	lw		x14, 16(x9)	# 417
	mul		x15, x30, x12	# 422
	add		x14, x14, x15	# 422
	flw		f10, 0(x14)	# 422
	fmul	f9, f9, f10	# 983
	fadd	f8, f8, f9	# 983
	fmul	f9, f7, f7	# 127
	lw		x14, 16(x9)	# 427
	mul		x15, x30, x8	# 432
	add		x14, x14, x15	# 432
	flw		f10, 0(x14)	# 432
	fmul	f9, f9, f10	# 983
	fadd	f8, f8, f9	# 983
	lw		x14, 12(x9)	# 398
	beq		x14, x11, beq.31929	# 985
	fmul	f9, f6, f7	# 989
	lw		x14, 36(x9)	# 527
	mul		x15, x30, x11	# 532
	add		x14, x14, x15	# 532
	flw		f10, 0(x14)	# 532
	fmul	f9, f9, f10	# 989
	fadd	f8, f8, f9	# 988
	fmul	f7, f7, f5	# 990
	lw		x14, 36(x9)	# 537
	mul		x15, x30, x12	# 542
	add		x14, x14, x15	# 542
	flw		f9, 0(x14)	# 542
	fmul	f7, f7, f9	# 990
	fadd	f7, f8, f7	# 988
	fmul	f5, f5, f6	# 991
	lw		x14, 36(x9)	# 547
	mul		x15, x30, x8	# 552
	add		x14, x14, x15	# 552
	flw		f6, 0(x14)	# 552
	fmul	f5, f5, f6	# 991
	fadd	f5, f7, f5	# 988
	jal		x0, beq_cont.31928	# 985
beq.31929:
	fadd	f5, f0, f8	# 986
beq_cont.31928:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31931	# 120
	addi	x8, x0, 0	# 1025
	jal		x0, feq_cont.31930	# 120
feq_else.31931:
	mul		x14, x30, x11	# 1029
	add		x14, x6, x14	# 1029
	flw		f6, 0(x14)	# 1029
	mul		x14, x30, x12	# 1029
	add		x14, x6, x14	# 1029
	flw		f7, 0(x14)	# 1029
	mul		x14, x30, x8	# 1029
	add		x14, x6, x14	# 1029
	flw		f8, 0(x14)	# 1029
	fmul	f9, f6, f2	# 997
	lw		x14, 16(x9)	# 407
	mul		x15, x30, x11	# 412
	add		x14, x14, x15	# 412
	flw		f10, 0(x14)	# 412
	fmul	f9, f9, f10	# 997
	fmul	f10, f7, f3	# 998
	lw		x14, 16(x9)	# 417
	mul		x15, x30, x12	# 422
	add		x14, x14, x15	# 422
	flw		f11, 0(x14)	# 422
	fmul	f10, f10, f11	# 998
	fadd	f9, f9, f10	# 997
	fmul	f10, f8, f4	# 999
	lw		x14, 16(x9)	# 427
	mul		x15, x30, x8	# 432
	add		x14, x14, x15	# 432
	flw		f11, 0(x14)	# 432
	fmul	f10, f10, f11	# 999
	fadd	f9, f9, f10	# 997
	lw		x14, 12(x9)	# 398
	beq		x14, x11, beq.31933	# 1001
	fmul	f10, f8, f3	# 1005
	fmul	f11, f7, f4	# 1005
	fadd	f10, f10, f11	# 1005
	lw		x14, 36(x9)	# 527
	mul		x15, x30, x11	# 532
	add		x14, x14, x15	# 532
	flw		f11, 0(x14)	# 532
	fmul	f10, f10, f11	# 1005
	fmul	f11, f6, f4	# 1006
	fmul	f8, f8, f2	# 1006
	fadd	f8, f11, f8	# 1006
	lw		x14, 36(x9)	# 537
	mul		x15, x30, x12	# 542
	add		x14, x14, x15	# 542
	flw		f11, 0(x14)	# 542
	fmul	f8, f8, f11	# 1006
	fadd	f8, f10, f8	# 1005
	fmul	f6, f6, f3	# 1007
	fmul	f7, f7, f2	# 1007
	fadd	f6, f6, f7	# 1007
	lw		x14, 36(x9)	# 547
	mul		x15, x30, x8	# 552
	add		x14, x14, x15	# 552
	flw		f7, 0(x14)	# 552
	fmul	f6, f6, f7	# 1007
	fadd	f6, f8, f6	# 1005
	fadd	f7, f0, f17	# 126
	fmul	f6, f6, f7	# 126
	fadd	f6, f9, f6	# 1004
	jal		x0, beq_cont.31932	# 1001
beq.31933:
	fadd	f6, f0, f9	# 1002
beq_cont.31932:
	fmul	f7, f2, f2	# 127
	lw		x14, 16(x9)	# 407
	mul		x15, x30, x11	# 412
	add		x14, x14, x15	# 412
	flw		f8, 0(x14)	# 412
	fmul	f7, f7, f8	# 983
	fmul	f8, f3, f3	# 127
	lw		x14, 16(x9)	# 417
	mul		x15, x30, x12	# 422
	add		x14, x14, x15	# 422
	flw		f9, 0(x14)	# 422
	fmul	f8, f8, f9	# 983
	fadd	f7, f7, f8	# 983
	fmul	f8, f4, f4	# 127
	lw		x14, 16(x9)	# 427
	mul		x15, x30, x8	# 432
	add		x14, x14, x15	# 432
	flw		f9, 0(x14)	# 432
	fmul	f8, f8, f9	# 983
	fadd	f7, f7, f8	# 983
	lw		x14, 12(x9)	# 398
	beq		x14, x11, beq.31935	# 985
	fmul	f8, f3, f4	# 989
	lw		x14, 36(x9)	# 527
	mul		x15, x30, x11	# 532
	add		x14, x14, x15	# 532
	flw		f9, 0(x14)	# 532
	fmul	f8, f8, f9	# 989
	fadd	f7, f7, f8	# 988
	fmul	f4, f4, f2	# 990
	lw		x14, 36(x9)	# 537
	mul		x15, x30, x12	# 542
	add		x14, x14, x15	# 542
	flw		f8, 0(x14)	# 542
	fmul	f4, f4, f8	# 990
	fadd	f4, f7, f4	# 988
	fmul	f2, f2, f3	# 991
	lw		x14, 36(x9)	# 547
	mul		x8, x30, x8	# 552
	add		x8, x14, x8	# 552
	flw		f3, 0(x8)	# 552
	fmul	f2, f2, f3	# 991
	fadd	f2, f4, f2	# 988
	jal		x0, beq_cont.31934	# 985
beq.31935:
	fadd	f2, f0, f7	# 986
beq_cont.31934:
	lw		x8, 4(x9)	# 369
	beq		x8, x10, beq.31937	# 1032
	jal		x0, beq_cont.31936	# 1032
beq.31937:
	fadd	f3, f0, f16	# 1032
	fsub	f2, f2, f3	# 1032
beq_cont.31936:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1034
	fsub	f2, f3, f2	# 1034
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.31939	# 121
	addi	x8, x0, 0	# 1042
	jal		x0, fle_cont.31938	# 121
fle_else.31939:
	fsqrt	f2, f2	# 1037
	lw		x8, 24(x9)	# 389
	beq		x8, x11, beq.31941	# 1038
	jal		x0, beq_cont.31940	# 1038
beq.31941:
	fsub	f2, f0, f2	# 123
beq_cont.31940:
	fsub	f2, f2, f6	# 1039
	fdiv	f2, f2, f5	# 1039
	mul		x8, x30, x11	# 1039
	addi	x8, x8, 60540	# 1039
	fsw		f2, 0(x8)	# 1039
	addi	x8, x0, 1	# 1039
fle_cont.31938:
feq_cont.31930:
	jal		x0, beq_cont.31926	# 1056
beq.31927:
	lw		x9, 16(x9)	# 437
	mul		x10, x30, x11	# 308
	add		x10, x6, x10	# 308
	flw		f5, 0(x10)	# 308
	mul		x10, x30, x11	# 308
	add		x10, x9, x10	# 308
	flw		f6, 0(x10)	# 308
	fmul	f5, f5, f6	# 308
	mul		x10, x30, x12	# 308
	add		x10, x6, x10	# 308
	flw		f6, 0(x10)	# 308
	mul		x10, x30, x12	# 308
	add		x10, x9, x10	# 308
	flw		f7, 0(x10)	# 308
	fmul	f6, f6, f7	# 308
	fadd	f5, f5, f6	# 308
	mul		x10, x30, x8	# 308
	add		x10, x6, x10	# 308
	flw		f6, 0(x10)	# 308
	mul		x10, x30, x8	# 308
	add		x10, x9, x10	# 308
	flw		f7, 0(x10)	# 308
	fmul	f6, f6, f7	# 308
	fadd	f5, f5, f6	# 308
	fle		x31, f5, f1	# 121
	beq		x31, x0, fle_else.31943	# 121
	addi	x8, x0, 0	# 975
	jal		x0, fle_cont.31942	# 121
fle_else.31943:
	mul		x10, x30, x11	# 313
	add		x10, x9, x10	# 313
	flw		f6, 0(x10)	# 313
	fmul	f2, f6, f2	# 313
	mul		x10, x30, x12	# 313
	add		x10, x9, x10	# 313
	flw		f6, 0(x10)	# 313
	fmul	f3, f6, f3	# 313
	fadd	f2, f2, f3	# 313
	mul		x8, x30, x8	# 313
	add		x8, x9, x8	# 313
	flw		f3, 0(x8)	# 313
	fmul	f3, f3, f4	# 313
	fadd	f2, f2, f3	# 313
	fsub	f2, f0, f2	# 123
	fdiv	f2, f2, f5	# 973
	mul		x8, x30, x11	# 973
	addi	x8, x8, 60540	# 973
	fsw		f2, 0(x8)	# 973
	addi	x8, x0, 1	# 974
fle_cont.31942:
beq_cont.31926:
	jal		x0, beq_cont.31924	# 1055
beq.31925:
	mul		x10, x30, x11	# 944
	add		x10, x6, x10	# 944
	flw		f5, 0(x10)	# 944
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31945	# 120
	addi	x10, x0, 0	# 944
	jal		x0, feq_cont.31944	# 120
feq_else.31945:
	lw		x10, 16(x9)	# 437
	lw		x14, 24(x9)	# 389
	mul		x15, x30, x11	# 946
	add		x15, x6, x15	# 946
	flw		f5, 0(x15)	# 946
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31947	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.31946	# 122
fle_else.31947:
	addi	x15, x0, 1	# 122
fle_cont.31946:
	beq		x14, x11, beq.31949	# 220
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31951	# 122
	addi	x14, x0, 1	# 220
	jal		x0, fle_cont.31950	# 122
fle_else.31951:
	addi	x14, x0, 0	# 220
fle_cont.31950:
	jal		x0, beq_cont.31948	# 220
beq.31949:
	addi	x14, x15, 0	# 220
beq_cont.31948:
	mul		x15, x30, x11	# 946
	add		x15, x10, x15	# 946
	flw		f5, 0(x15)	# 946
	beq		x14, x11, beq.31953	# 235
	jal		x0, beq_cont.31952	# 235
beq.31953:
	fsub	f5, f0, f5	# 123
beq_cont.31952:
	fsub	f5, f5, f2	# 948
	mul		x14, x30, x11	# 948
	add		x14, x6, x14	# 948
	flw		f6, 0(x14)	# 948
	fdiv	f5, f5, f6	# 948
	mul		x14, x30, x12	# 949
	add		x14, x6, x14	# 949
	flw		f6, 0(x14)	# 949
	fmul	f6, f5, f6	# 949
	fadd	f6, f6, f3	# 949
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31954	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31954:
	mul		x14, x30, x12	# 949
	add		x14, x10, x14	# 949
	flw		f7, 0(x14)	# 949
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31956	# 125
	addi	x10, x0, 0	# 953
	jal		x0, fle_cont.31955	# 125
fle_else.31956:
	mul		x14, x30, x8	# 950
	add		x14, x6, x14	# 950
	flw		f6, 0(x14)	# 950
	fmul	f6, f5, f6	# 950
	fadd	f6, f6, f4	# 950
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31957	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31957:
	mul		x14, x30, x8	# 950
	add		x10, x10, x14	# 950
	flw		f7, 0(x10)	# 950
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31959	# 125
	addi	x10, x0, 0	# 952
	jal		x0, fle_cont.31958	# 125
fle_else.31959:
	addi	x10, x0, 0	# 951
	mul		x10, x30, x10	# 951
	addi	x10, x10, 60540	# 951
	fsw		f5, 0(x10)	# 951
	addi	x10, x0, 1	# 951
fle_cont.31958:
fle_cont.31955:
feq_cont.31944:
	beq		x10, x11, beq.31961	# 959
	addi	x8, x0, 1	# 959
	jal		x0, beq_cont.31960	# 959
beq.31961:
	mul		x10, x30, x12	# 944
	add		x10, x6, x10	# 944
	flw		f5, 0(x10)	# 944
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31963	# 120
	addi	x10, x0, 0	# 944
	jal		x0, feq_cont.31962	# 120
feq_else.31963:
	lw		x10, 16(x9)	# 437
	lw		x14, 24(x9)	# 389
	mul		x15, x30, x12	# 946
	add		x15, x6, x15	# 946
	flw		f5, 0(x15)	# 946
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31965	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.31964	# 122
fle_else.31965:
	addi	x15, x0, 1	# 122
fle_cont.31964:
	beq		x14, x11, beq.31967	# 220
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31969	# 122
	addi	x14, x0, 1	# 220
	jal		x0, fle_cont.31968	# 122
fle_else.31969:
	addi	x14, x0, 0	# 220
fle_cont.31968:
	jal		x0, beq_cont.31966	# 220
beq.31967:
	addi	x14, x15, 0	# 220
beq_cont.31966:
	mul		x15, x30, x12	# 946
	add		x15, x10, x15	# 946
	flw		f5, 0(x15)	# 946
	beq		x14, x11, beq.31971	# 235
	jal		x0, beq_cont.31970	# 235
beq.31971:
	fsub	f5, f0, f5	# 123
beq_cont.31970:
	fsub	f5, f5, f3	# 948
	mul		x14, x30, x12	# 948
	add		x14, x6, x14	# 948
	flw		f6, 0(x14)	# 948
	fdiv	f5, f5, f6	# 948
	mul		x14, x30, x8	# 949
	add		x14, x6, x14	# 949
	flw		f6, 0(x14)	# 949
	fmul	f6, f5, f6	# 949
	fadd	f6, f6, f4	# 949
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31972	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31972:
	mul		x14, x30, x8	# 949
	add		x14, x10, x14	# 949
	flw		f7, 0(x14)	# 949
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31974	# 125
	addi	x10, x0, 0	# 953
	jal		x0, fle_cont.31973	# 125
fle_else.31974:
	mul		x14, x30, x11	# 950
	add		x14, x6, x14	# 950
	flw		f6, 0(x14)	# 950
	fmul	f6, f5, f6	# 950
	fadd	f6, f6, f2	# 950
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31975	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31975:
	mul		x14, x30, x11	# 950
	add		x10, x10, x14	# 950
	flw		f7, 0(x10)	# 950
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31977	# 125
	addi	x10, x0, 0	# 952
	jal		x0, fle_cont.31976	# 125
fle_else.31977:
	addi	x10, x0, 0	# 951
	mul		x10, x30, x10	# 951
	addi	x10, x10, 60540	# 951
	fsw		f5, 0(x10)	# 951
	addi	x10, x0, 1	# 951
fle_cont.31976:
fle_cont.31973:
feq_cont.31962:
	beq		x10, x11, beq.31979	# 960
	addi	x8, x0, 2	# 960
	jal		x0, beq_cont.31978	# 960
beq.31979:
	mul		x10, x30, x8	# 944
	add		x10, x6, x10	# 944
	flw		f5, 0(x10)	# 944
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31981	# 120
	addi	x8, x0, 0	# 944
	jal		x0, feq_cont.31980	# 120
feq_else.31981:
	lw		x10, 16(x9)	# 437
	lw		x9, 24(x9)	# 389
	mul		x14, x30, x8	# 946
	add		x14, x6, x14	# 946
	flw		f5, 0(x14)	# 946
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31983	# 122
	addi	x14, x0, 0	# 122
	jal		x0, fle_cont.31982	# 122
fle_else.31983:
	addi	x14, x0, 1	# 122
fle_cont.31982:
	beq		x9, x11, beq.31985	# 220
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31987	# 122
	addi	x9, x0, 1	# 220
	jal		x0, fle_cont.31986	# 122
fle_else.31987:
	addi	x9, x0, 0	# 220
fle_cont.31986:
	jal		x0, beq_cont.31984	# 220
beq.31985:
	addi	x9, x14, 0	# 220
beq_cont.31984:
	mul		x14, x30, x8	# 946
	add		x14, x10, x14	# 946
	flw		f5, 0(x14)	# 946
	beq		x9, x11, beq.31989	# 235
	jal		x0, beq_cont.31988	# 235
beq.31989:
	fsub	f5, f0, f5	# 123
beq_cont.31988:
	fsub	f4, f5, f4	# 948
	mul		x8, x30, x8	# 948
	add		x8, x6, x8	# 948
	flw		f5, 0(x8)	# 948
	fdiv	f4, f4, f5	# 948
	mul		x8, x30, x11	# 949
	add		x8, x6, x8	# 949
	flw		f5, 0(x8)	# 949
	fmul	f5, f4, f5	# 949
	fadd	f2, f5, f2	# 949
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.31990	# 124
	fsub	f2, f0, f2	# 124
fle_cont.31990:
	mul		x8, x30, x11	# 949
	add		x8, x10, x8	# 949
	flw		f5, 0(x8)	# 949
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.31992	# 125
	addi	x8, x0, 0	# 953
	jal		x0, fle_cont.31991	# 125
fle_else.31992:
	mul		x8, x30, x12	# 950
	add		x8, x6, x8	# 950
	flw		f2, 0(x8)	# 950
	fmul	f2, f4, f2	# 950
	fadd	f2, f2, f3	# 950
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.31993	# 124
	fsub	f2, f0, f2	# 124
fle_cont.31993:
	mul		x8, x30, x12	# 950
	add		x8, x10, x8	# 950
	flw		f3, 0(x8)	# 950
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.31995	# 125
	addi	x8, x0, 0	# 952
	jal		x0, fle_cont.31994	# 125
fle_else.31995:
	addi	x8, x0, 0	# 951
	mul		x8, x30, x8	# 951
	addi	x8, x8, 60540	# 951
	fsw		f4, 0(x8)	# 951
	addi	x8, x0, 1	# 951
fle_cont.31994:
fle_cont.31991:
feq_cont.31980:
	beq		x8, x11, beq.31997	# 961
	addi	x8, x0, 3	# 961
	jal		x0, beq_cont.31996	# 961
beq.31997:
	addi	x8, x0, 0	# 962
beq_cont.31996:
beq_cont.31978:
beq_cont.31960:
beq_cont.31924:
	beq		x8, x11, beq.31998	# 1485
	mul		x9, x30, x11	# 1489
	addi	x9, x9, 60540	# 1489
	flw		f2, 0(x9)	# 1489
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x29, -8(x2)	# 125
	sw		x12, -12(x2)	# 125
	sw		x4, -16(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32000	# 125
	jal		x0, fle_cont.31999	# 125
fle_else.32000:
	addi	x9, x0, 0	# 1492
	mul		x9, x30, x9	# 1492
	addi	x9, x9, 60548	# 1492
	flw		f1, 0(x9)	# 1492
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32002	# 125
	jal		x0, fle_cont.32001	# 125
fle_else.32002:
	lui		x9, %hi(l.26268)	# 1494
	ori		x9, x0, %lo(l.26268)	# 1494
	flw		f1, 0(x9)	# 1494
	fadd	f1, f2, f1	# 1494
	addi	x9, x0, 0	# 1495
	mul		x9, x30, x9	# 1495
	add		x9, x6, x9	# 1495
	flw		f2, 0(x9)	# 1495
	fmul	f2, f2, f1	# 1495
	addi	x9, x0, 0	# 1495
	mul		x9, x30, x9	# 1495
	addi	x9, x9, 60636	# 1495
	flw		f3, 0(x9)	# 1495
	fadd	f2, f2, f3	# 1495
	addi	x9, x0, 1	# 1496
	mul		x9, x30, x9	# 1496
	add		x9, x6, x9	# 1496
	flw		f3, 0(x9)	# 1496
	fmul	f3, f3, f1	# 1496
	addi	x9, x0, 1	# 1496
	mul		x9, x30, x9	# 1496
	addi	x9, x9, 60636	# 1496
	flw		f4, 0(x9)	# 1496
	fadd	f3, f3, f4	# 1496
	addi	x9, x0, 2	# 1497
	mul		x9, x30, x9	# 1497
	add		x9, x6, x9	# 1497
	flw		f4, 0(x9)	# 1497
	fmul	f4, f4, f1	# 1497
	addi	x9, x0, 2	# 1497
	mul		x9, x30, x9	# 1497
	addi	x9, x9, 60636	# 1497
	flw		f5, 0(x9)	# 1497
	fadd	f4, f4, f5	# 1497
	addi	x9, x0, 0	# 1498
	sw		x8, -20(x2)	# 1498
	sw		x13, -24(x2)	# 1498
	fsw		f4, -28(x2)	# 1498
	fsw		f3, -32(x2)	# 1498
	fsw		f2, -36(x2)	# 1498
	fsw		f1, -40(x2)	# 1498
	addi	x4, x9, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -44(x2)	# 1498
	addi	x2, x2, -48	# 1498
	lw		x31, 0(x29)	# 1498
	jalr	x1, x31, 0	# 1498
	addi	x2, x2, 48	# 1498
	lw		x1, -44(x2)	# 1498
	addi	x5, x0, 0	# 1498
	beq		x4, x5, beq_cont.32003	# 1498
	addi	x4, x0, 0	# 1500
	mul		x4, x30, x4	# 1500
	addi	x4, x4, 60548	# 1500
	flw		f1, -40(x2)	# 1500
	fsw		f1, 0(x4)	# 1500
	addi	x4, x0, 0	# 256
	mul		x4, x30, x4	# 256
	addi	x4, x4, 60552	# 256
	flw		f1, -36(x2)	# 256
	fsw		f1, 0(x4)	# 256
	addi	x4, x0, 1	# 257
	mul		x4, x30, x4	# 257
	addi	x4, x4, 60552	# 257
	flw		f1, -32(x2)	# 257
	fsw		f1, 0(x4)	# 257
	addi	x4, x0, 2	# 258
	mul		x4, x30, x4	# 258
	addi	x4, x4, 60552	# 258
	flw		f1, -28(x2)	# 258
	fsw		f1, 0(x4)	# 258
	addi	x4, x0, 0	# 1502
	mul		x4, x30, x4	# 1502
	addi	x4, x4, 60564	# 1502
	lw		x5, -24(x2)	# 1502
	sw		x5, 0(x4)	# 1502
	addi	x4, x0, 0	# 1503
	mul		x4, x30, x4	# 1503
	addi	x4, x4, 60544	# 1503
	lw		x5, -20(x2)	# 1503
	sw		x5, 0(x4)	# 1503
beq_cont.32003:
fle_cont.32001:
fle_cont.31999:
	lw		x4, -12(x2)	# 1509
	lw		x5, -16(x2)	# 1509
	add		x4, x5, x4	# 1509
	lw		x5, -4(x2)	# 1509
	lw		x6, 0(x2)	# 1509
	lw		x29, -8(x2)	# 1509
	lw		x31, 0(x29)	# 1509
	jalr	x0, x31, 0	# 1509
beq.31998:
	mul		x7, x30, x13	# 1513
	addi	x7, x7, 60048	# 1513
	lw		x7, 0(x7)	# 1513
	lw		x7, 24(x7)	# 389
	beq		x7, x11, beq.32004	# 1513
	add		x4, x4, x12	# 1514
	lw		x31, 0(x29)	# 1514
	jalr	x0, x31, 0	# 1514
beq.32004:
	jalr	x0, x1, 0	# 1515
beq.31923:
	jalr	x0, x1, 0	# 1482
solve_one_or_network.2850.17783:
	lw		x7, 16(x29)	# 1522
	lw		x8, 12(x29)	# 1522
	lw		x9, 8(x29)	# 1522
	lw		x10, 4(x29)	# 1522
	mul		x11, x30, x4	# 1522
	add		x11, x5, x11	# 1522
	lw		x11, 0(x11)	# 1522
	beq		x11, x8, beq.32007	# 1523
	mul		x8, x30, x11	# 1524
	addi	x8, x8, 60332	# 1524
	lw		x8, 0(x8)	# 1524
	sw		x6, 0(x2)	# 1525
	sw		x5, -4(x2)	# 1525
	sw		x29, -8(x2)	# 1525
	sw		x10, -12(x2)	# 1525
	sw		x4, -16(x2)	# 1525
	addi	x5, x8, 0
	addi	x4, x9, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1525
	addi	x2, x2, -24	# 1525
	lw		x31, 0(x29)	# 1525
	jalr	x1, x31, 0	# 1525
	addi	x2, x2, 24	# 1525
	lw		x1, -20(x2)	# 1525
	lw		x4, -12(x2)	# 1526
	lw		x5, -16(x2)	# 1526
	add		x4, x5, x4	# 1526
	lw		x5, -4(x2)	# 1526
	lw		x6, 0(x2)	# 1526
	lw		x29, -8(x2)	# 1526
	lw		x31, 0(x29)	# 1526
	jalr	x0, x31, 0	# 1526
beq.32007:
	jalr	x0, x1, 0	# 1527
trace_or_matrix.2854.17787:
	lw		x7, 28(x29)	# 1532
	lw		x8, 24(x29)	# 1532
	lw		x9, 20(x29)	# 1532
	lw		x10, 16(x29)	# 1532
	lw		x11, 12(x29)	# 1532
	lw		x12, 8(x29)	# 1532
	flw		f1, 4(x29)	# 1532
	mul		x13, x30, x4	# 1532
	add		x13, x5, x13	# 1532
	lw		x13, 0(x13)	# 1532
	mul		x14, x30, x11	# 1533
	add		x14, x13, x14	# 1533
	lw		x14, 0(x14)	# 1533
	beq		x14, x9, beq.32009	# 1534
	addi	x9, x0, 99	# 1537
	sw		x6, 0(x2)	# 1537
	sw		x5, -4(x2)	# 1537
	sw		x29, -8(x2)	# 1537
	sw		x12, -12(x2)	# 1537
	sw		x4, -16(x2)	# 1537
	beq		x14, x9, beq.32011	# 1537
	mul		x9, x30, x14	# 1048
	addi	x9, x9, 60048	# 1048
	lw		x9, 0(x9)	# 1048
	addi	x14, x0, 0	# 1050
	mul		x14, x30, x14	# 1050
	addi	x14, x14, 60636	# 1050
	flw		f2, 0(x14)	# 1050
	lw		x14, 20(x9)	# 447
	mul		x15, x30, x11	# 452
	add		x14, x14, x15	# 452
	flw		f3, 0(x14)	# 452
	fsub	f2, f2, f3	# 1050
	addi	x14, x0, 1	# 1051
	mul		x14, x30, x14	# 1051
	addi	x14, x14, 60636	# 1051
	flw		f3, 0(x14)	# 1051
	lw		x14, 20(x9)	# 457
	mul		x15, x30, x12	# 462
	add		x14, x14, x15	# 462
	flw		f4, 0(x14)	# 462
	fsub	f3, f3, f4	# 1051
	addi	x14, x0, 2	# 1052
	mul		x14, x30, x14	# 1052
	addi	x14, x14, 60636	# 1052
	flw		f4, 0(x14)	# 1052
	lw		x14, 20(x9)	# 467
	mul		x15, x30, x8	# 472
	add		x14, x14, x15	# 472
	flw		f5, 0(x14)	# 472
	fsub	f4, f4, f5	# 1052
	lw		x14, 4(x9)	# 369
	addi	x15, x0, 1	# 1055
	beq		x14, x15, beq.32013	# 1055
	addi	x15, x0, 2	# 1056
	beq		x14, x15, beq.32015	# 1056
	mul		x14, x30, x11	# 1022
	add		x14, x6, x14	# 1022
	flw		f5, 0(x14)	# 1022
	mul		x14, x30, x12	# 1022
	add		x14, x6, x14	# 1022
	flw		f6, 0(x14)	# 1022
	mul		x14, x30, x8	# 1022
	add		x14, x6, x14	# 1022
	flw		f7, 0(x14)	# 1022
	fmul	f8, f5, f5	# 127
	lw		x14, 16(x9)	# 407
	mul		x15, x30, x11	# 412
	add		x14, x14, x15	# 412
	flw		f9, 0(x14)	# 412
	fmul	f8, f8, f9	# 983
	fmul	f9, f6, f6	# 127
	lw		x14, 16(x9)	# 417
	mul		x15, x30, x12	# 422
	add		x14, x14, x15	# 422
	flw		f10, 0(x14)	# 422
	fmul	f9, f9, f10	# 983
	fadd	f8, f8, f9	# 983
	fmul	f9, f7, f7	# 127
	lw		x14, 16(x9)	# 427
	mul		x15, x30, x8	# 432
	add		x14, x14, x15	# 432
	flw		f10, 0(x14)	# 432
	fmul	f9, f9, f10	# 983
	fadd	f8, f8, f9	# 983
	lw		x14, 12(x9)	# 398
	beq		x14, x11, beq.32017	# 985
	fmul	f9, f6, f7	# 989
	lw		x14, 36(x9)	# 527
	mul		x15, x30, x11	# 532
	add		x14, x14, x15	# 532
	flw		f10, 0(x14)	# 532
	fmul	f9, f9, f10	# 989
	fadd	f8, f8, f9	# 988
	fmul	f7, f7, f5	# 990
	lw		x14, 36(x9)	# 537
	mul		x15, x30, x12	# 542
	add		x14, x14, x15	# 542
	flw		f9, 0(x14)	# 542
	fmul	f7, f7, f9	# 990
	fadd	f7, f8, f7	# 988
	fmul	f5, f5, f6	# 991
	lw		x14, 36(x9)	# 547
	mul		x15, x30, x8	# 552
	add		x14, x14, x15	# 552
	flw		f6, 0(x14)	# 552
	fmul	f5, f5, f6	# 991
	fadd	f5, f7, f5	# 988
	jal		x0, beq_cont.32016	# 985
beq.32017:
	fadd	f5, f0, f8	# 986
beq_cont.32016:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32019	# 120
	addi	x8, x0, 0	# 1025
	jal		x0, feq_cont.32018	# 120
feq_else.32019:
	mul		x14, x30, x11	# 1029
	add		x14, x6, x14	# 1029
	flw		f6, 0(x14)	# 1029
	mul		x14, x30, x12	# 1029
	add		x14, x6, x14	# 1029
	flw		f7, 0(x14)	# 1029
	mul		x14, x30, x8	# 1029
	add		x14, x6, x14	# 1029
	flw		f8, 0(x14)	# 1029
	fmul	f9, f6, f2	# 997
	lw		x14, 16(x9)	# 407
	mul		x15, x30, x11	# 412
	add		x14, x14, x15	# 412
	flw		f10, 0(x14)	# 412
	fmul	f9, f9, f10	# 997
	fmul	f10, f7, f3	# 998
	lw		x14, 16(x9)	# 417
	mul		x15, x30, x12	# 422
	add		x14, x14, x15	# 422
	flw		f11, 0(x14)	# 422
	fmul	f10, f10, f11	# 998
	fadd	f9, f9, f10	# 997
	fmul	f10, f8, f4	# 999
	lw		x14, 16(x9)	# 427
	mul		x15, x30, x8	# 432
	add		x14, x14, x15	# 432
	flw		f11, 0(x14)	# 432
	fmul	f10, f10, f11	# 999
	fadd	f9, f9, f10	# 997
	lw		x14, 12(x9)	# 398
	beq		x14, x11, beq.32021	# 1001
	fmul	f10, f8, f3	# 1005
	fmul	f11, f7, f4	# 1005
	fadd	f10, f10, f11	# 1005
	lw		x14, 36(x9)	# 527
	mul		x15, x30, x11	# 532
	add		x14, x14, x15	# 532
	flw		f11, 0(x14)	# 532
	fmul	f10, f10, f11	# 1005
	fmul	f11, f6, f4	# 1006
	fmul	f8, f8, f2	# 1006
	fadd	f8, f11, f8	# 1006
	lw		x14, 36(x9)	# 537
	mul		x15, x30, x12	# 542
	add		x14, x14, x15	# 542
	flw		f11, 0(x14)	# 542
	fmul	f8, f8, f11	# 1006
	fadd	f8, f10, f8	# 1005
	fmul	f6, f6, f3	# 1007
	fmul	f7, f7, f2	# 1007
	fadd	f6, f6, f7	# 1007
	lw		x14, 36(x9)	# 547
	mul		x15, x30, x8	# 552
	add		x14, x14, x15	# 552
	flw		f7, 0(x14)	# 552
	fmul	f6, f6, f7	# 1007
	fadd	f6, f8, f6	# 1005
	fadd	f7, f0, f17	# 126
	fmul	f6, f6, f7	# 126
	fadd	f6, f9, f6	# 1004
	jal		x0, beq_cont.32020	# 1001
beq.32021:
	fadd	f6, f0, f9	# 1002
beq_cont.32020:
	fmul	f7, f2, f2	# 127
	lw		x14, 16(x9)	# 407
	mul		x15, x30, x11	# 412
	add		x14, x14, x15	# 412
	flw		f8, 0(x14)	# 412
	fmul	f7, f7, f8	# 983
	fmul	f8, f3, f3	# 127
	lw		x14, 16(x9)	# 417
	mul		x15, x30, x12	# 422
	add		x14, x14, x15	# 422
	flw		f9, 0(x14)	# 422
	fmul	f8, f8, f9	# 983
	fadd	f7, f7, f8	# 983
	fmul	f8, f4, f4	# 127
	lw		x14, 16(x9)	# 427
	mul		x15, x30, x8	# 432
	add		x14, x14, x15	# 432
	flw		f9, 0(x14)	# 432
	fmul	f8, f8, f9	# 983
	fadd	f7, f7, f8	# 983
	lw		x14, 12(x9)	# 398
	beq		x14, x11, beq.32023	# 985
	fmul	f8, f3, f4	# 989
	lw		x14, 36(x9)	# 527
	mul		x15, x30, x11	# 532
	add		x14, x14, x15	# 532
	flw		f9, 0(x14)	# 532
	fmul	f8, f8, f9	# 989
	fadd	f7, f7, f8	# 988
	fmul	f4, f4, f2	# 990
	lw		x14, 36(x9)	# 537
	mul		x15, x30, x12	# 542
	add		x14, x14, x15	# 542
	flw		f8, 0(x14)	# 542
	fmul	f4, f4, f8	# 990
	fadd	f4, f7, f4	# 988
	fmul	f2, f2, f3	# 991
	lw		x14, 36(x9)	# 547
	mul		x8, x30, x8	# 552
	add		x8, x14, x8	# 552
	flw		f3, 0(x8)	# 552
	fmul	f2, f2, f3	# 991
	fadd	f2, f4, f2	# 988
	jal		x0, beq_cont.32022	# 985
beq.32023:
	fadd	f2, f0, f7	# 986
beq_cont.32022:
	lw		x8, 4(x9)	# 369
	beq		x8, x10, beq.32025	# 1032
	jal		x0, beq_cont.32024	# 1032
beq.32025:
	fadd	f3, f0, f16	# 1032
	fsub	f2, f2, f3	# 1032
beq_cont.32024:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1034
	fsub	f2, f3, f2	# 1034
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.32027	# 121
	addi	x8, x0, 0	# 1042
	jal		x0, fle_cont.32026	# 121
fle_else.32027:
	fsqrt	f1, f2	# 1037
	lw		x8, 24(x9)	# 389
	beq		x8, x11, beq.32029	# 1038
	jal		x0, beq_cont.32028	# 1038
beq.32029:
	fsub	f1, f0, f1	# 123
beq_cont.32028:
	fsub	f1, f1, f6	# 1039
	fdiv	f1, f1, f5	# 1039
	mul		x8, x30, x11	# 1039
	addi	x8, x8, 60540	# 1039
	fsw		f1, 0(x8)	# 1039
	addi	x8, x0, 1	# 1039
fle_cont.32026:
feq_cont.32018:
	jal		x0, beq_cont.32014	# 1056
beq.32015:
	lw		x9, 16(x9)	# 437
	mul		x10, x30, x11	# 308
	add		x10, x6, x10	# 308
	flw		f5, 0(x10)	# 308
	mul		x10, x30, x11	# 308
	add		x10, x9, x10	# 308
	flw		f6, 0(x10)	# 308
	fmul	f5, f5, f6	# 308
	mul		x10, x30, x12	# 308
	add		x10, x6, x10	# 308
	flw		f6, 0(x10)	# 308
	mul		x10, x30, x12	# 308
	add		x10, x9, x10	# 308
	flw		f7, 0(x10)	# 308
	fmul	f6, f6, f7	# 308
	fadd	f5, f5, f6	# 308
	mul		x10, x30, x8	# 308
	add		x10, x6, x10	# 308
	flw		f6, 0(x10)	# 308
	mul		x10, x30, x8	# 308
	add		x10, x9, x10	# 308
	flw		f7, 0(x10)	# 308
	fmul	f6, f6, f7	# 308
	fadd	f5, f5, f6	# 308
	fle		x31, f5, f1	# 121
	beq		x31, x0, fle_else.32031	# 121
	addi	x8, x0, 0	# 975
	jal		x0, fle_cont.32030	# 121
fle_else.32031:
	mul		x10, x30, x11	# 313
	add		x10, x9, x10	# 313
	flw		f1, 0(x10)	# 313
	fmul	f1, f1, f2	# 313
	mul		x10, x30, x12	# 313
	add		x10, x9, x10	# 313
	flw		f2, 0(x10)	# 313
	fmul	f2, f2, f3	# 313
	fadd	f1, f1, f2	# 313
	mul		x8, x30, x8	# 313
	add		x8, x9, x8	# 313
	flw		f2, 0(x8)	# 313
	fmul	f2, f2, f4	# 313
	fadd	f1, f1, f2	# 313
	fsub	f1, f0, f1	# 123
	fdiv	f1, f1, f5	# 973
	mul		x8, x30, x11	# 973
	addi	x8, x8, 60540	# 973
	fsw		f1, 0(x8)	# 973
	addi	x8, x0, 1	# 974
fle_cont.32030:
beq_cont.32014:
	jal		x0, beq_cont.32012	# 1055
beq.32013:
	mul		x10, x30, x11	# 944
	add		x10, x6, x10	# 944
	flw		f5, 0(x10)	# 944
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32033	# 120
	addi	x10, x0, 0	# 944
	jal		x0, feq_cont.32032	# 120
feq_else.32033:
	lw		x10, 16(x9)	# 437
	lw		x14, 24(x9)	# 389
	mul		x15, x30, x11	# 946
	add		x15, x6, x15	# 946
	flw		f5, 0(x15)	# 946
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32035	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.32034	# 122
fle_else.32035:
	addi	x15, x0, 1	# 122
fle_cont.32034:
	beq		x14, x11, beq.32037	# 220
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32039	# 122
	addi	x14, x0, 1	# 220
	jal		x0, fle_cont.32038	# 122
fle_else.32039:
	addi	x14, x0, 0	# 220
fle_cont.32038:
	jal		x0, beq_cont.32036	# 220
beq.32037:
	addi	x14, x15, 0	# 220
beq_cont.32036:
	mul		x15, x30, x11	# 946
	add		x15, x10, x15	# 946
	flw		f5, 0(x15)	# 946
	beq		x14, x11, beq.32041	# 235
	jal		x0, beq_cont.32040	# 235
beq.32041:
	fsub	f5, f0, f5	# 123
beq_cont.32040:
	fsub	f5, f5, f2	# 948
	mul		x14, x30, x11	# 948
	add		x14, x6, x14	# 948
	flw		f6, 0(x14)	# 948
	fdiv	f5, f5, f6	# 948
	mul		x14, x30, x12	# 949
	add		x14, x6, x14	# 949
	flw		f6, 0(x14)	# 949
	fmul	f6, f5, f6	# 949
	fadd	f6, f6, f3	# 949
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32042	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32042:
	mul		x14, x30, x12	# 949
	add		x14, x10, x14	# 949
	flw		f7, 0(x14)	# 949
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32044	# 125
	addi	x10, x0, 0	# 953
	jal		x0, fle_cont.32043	# 125
fle_else.32044:
	mul		x14, x30, x8	# 950
	add		x14, x6, x14	# 950
	flw		f6, 0(x14)	# 950
	fmul	f6, f5, f6	# 950
	fadd	f6, f6, f4	# 950
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32045	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32045:
	mul		x14, x30, x8	# 950
	add		x10, x10, x14	# 950
	flw		f7, 0(x10)	# 950
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32047	# 125
	addi	x10, x0, 0	# 952
	jal		x0, fle_cont.32046	# 125
fle_else.32047:
	addi	x10, x0, 0	# 951
	mul		x10, x30, x10	# 951
	addi	x10, x10, 60540	# 951
	fsw		f5, 0(x10)	# 951
	addi	x10, x0, 1	# 951
fle_cont.32046:
fle_cont.32043:
feq_cont.32032:
	beq		x10, x11, beq.32049	# 959
	addi	x8, x0, 1	# 959
	jal		x0, beq_cont.32048	# 959
beq.32049:
	mul		x10, x30, x12	# 944
	add		x10, x6, x10	# 944
	flw		f5, 0(x10)	# 944
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32051	# 120
	addi	x10, x0, 0	# 944
	jal		x0, feq_cont.32050	# 120
feq_else.32051:
	lw		x10, 16(x9)	# 437
	lw		x14, 24(x9)	# 389
	mul		x15, x30, x12	# 946
	add		x15, x6, x15	# 946
	flw		f5, 0(x15)	# 946
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32053	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.32052	# 122
fle_else.32053:
	addi	x15, x0, 1	# 122
fle_cont.32052:
	beq		x14, x11, beq.32055	# 220
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32057	# 122
	addi	x14, x0, 1	# 220
	jal		x0, fle_cont.32056	# 122
fle_else.32057:
	addi	x14, x0, 0	# 220
fle_cont.32056:
	jal		x0, beq_cont.32054	# 220
beq.32055:
	addi	x14, x15, 0	# 220
beq_cont.32054:
	mul		x15, x30, x12	# 946
	add		x15, x10, x15	# 946
	flw		f5, 0(x15)	# 946
	beq		x14, x11, beq.32059	# 235
	jal		x0, beq_cont.32058	# 235
beq.32059:
	fsub	f5, f0, f5	# 123
beq_cont.32058:
	fsub	f5, f5, f3	# 948
	mul		x14, x30, x12	# 948
	add		x14, x6, x14	# 948
	flw		f6, 0(x14)	# 948
	fdiv	f5, f5, f6	# 948
	mul		x14, x30, x8	# 949
	add		x14, x6, x14	# 949
	flw		f6, 0(x14)	# 949
	fmul	f6, f5, f6	# 949
	fadd	f6, f6, f4	# 949
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32060	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32060:
	mul		x14, x30, x8	# 949
	add		x14, x10, x14	# 949
	flw		f7, 0(x14)	# 949
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32062	# 125
	addi	x10, x0, 0	# 953
	jal		x0, fle_cont.32061	# 125
fle_else.32062:
	mul		x14, x30, x11	# 950
	add		x14, x6, x14	# 950
	flw		f6, 0(x14)	# 950
	fmul	f6, f5, f6	# 950
	fadd	f6, f6, f2	# 950
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32063	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32063:
	mul		x14, x30, x11	# 950
	add		x10, x10, x14	# 950
	flw		f7, 0(x10)	# 950
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32065	# 125
	addi	x10, x0, 0	# 952
	jal		x0, fle_cont.32064	# 125
fle_else.32065:
	addi	x10, x0, 0	# 951
	mul		x10, x30, x10	# 951
	addi	x10, x10, 60540	# 951
	fsw		f5, 0(x10)	# 951
	addi	x10, x0, 1	# 951
fle_cont.32064:
fle_cont.32061:
feq_cont.32050:
	beq		x10, x11, beq.32067	# 960
	addi	x8, x0, 2	# 960
	jal		x0, beq_cont.32066	# 960
beq.32067:
	mul		x10, x30, x8	# 944
	add		x10, x6, x10	# 944
	flw		f5, 0(x10)	# 944
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32069	# 120
	addi	x8, x0, 0	# 944
	jal		x0, feq_cont.32068	# 120
feq_else.32069:
	lw		x10, 16(x9)	# 437
	lw		x9, 24(x9)	# 389
	mul		x14, x30, x8	# 946
	add		x14, x6, x14	# 946
	flw		f5, 0(x14)	# 946
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32071	# 122
	addi	x14, x0, 0	# 122
	jal		x0, fle_cont.32070	# 122
fle_else.32071:
	addi	x14, x0, 1	# 122
fle_cont.32070:
	beq		x9, x11, beq.32073	# 220
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32075	# 122
	addi	x9, x0, 1	# 220
	jal		x0, fle_cont.32074	# 122
fle_else.32075:
	addi	x9, x0, 0	# 220
fle_cont.32074:
	jal		x0, beq_cont.32072	# 220
beq.32073:
	addi	x9, x14, 0	# 220
beq_cont.32072:
	mul		x14, x30, x8	# 946
	add		x14, x10, x14	# 946
	flw		f5, 0(x14)	# 946
	beq		x9, x11, beq.32077	# 235
	jal		x0, beq_cont.32076	# 235
beq.32077:
	fsub	f5, f0, f5	# 123
beq_cont.32076:
	fsub	f4, f5, f4	# 948
	mul		x8, x30, x8	# 948
	add		x8, x6, x8	# 948
	flw		f5, 0(x8)	# 948
	fdiv	f4, f4, f5	# 948
	mul		x8, x30, x11	# 949
	add		x8, x6, x8	# 949
	flw		f5, 0(x8)	# 949
	fmul	f5, f4, f5	# 949
	fadd	f2, f5, f2	# 949
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32078	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32078:
	mul		x8, x30, x11	# 949
	add		x8, x10, x8	# 949
	flw		f5, 0(x8)	# 949
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.32080	# 125
	addi	x8, x0, 0	# 953
	jal		x0, fle_cont.32079	# 125
fle_else.32080:
	mul		x8, x30, x12	# 950
	add		x8, x6, x8	# 950
	flw		f2, 0(x8)	# 950
	fmul	f2, f4, f2	# 950
	fadd	f2, f2, f3	# 950
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_else.32082	# 124
	fsub	f1, f0, f2	# 124
	jal		x0, fle_cont.32081	# 124
fle_else.32082:
	fadd	f1, f0, f2	# 124
fle_cont.32081:
	mul		x8, x30, x12	# 950
	add		x8, x10, x8	# 950
	flw		f2, 0(x8)	# 950
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32084	# 125
	addi	x8, x0, 0	# 952
	jal		x0, fle_cont.32083	# 125
fle_else.32084:
	addi	x8, x0, 0	# 951
	mul		x8, x30, x8	# 951
	addi	x8, x8, 60540	# 951
	fsw		f4, 0(x8)	# 951
	addi	x8, x0, 1	# 951
fle_cont.32083:
fle_cont.32079:
feq_cont.32068:
	beq		x8, x11, beq.32086	# 961
	addi	x8, x0, 3	# 961
	jal		x0, beq_cont.32085	# 961
beq.32086:
	addi	x8, x0, 0	# 962
beq_cont.32085:
beq_cont.32066:
beq_cont.32048:
beq_cont.32012:
	addi	x9, x0, 0	# 1543
	beq		x8, x9, beq_cont.32087	# 1543
	addi	x8, x0, 0	# 1544
	mul		x8, x30, x8	# 1544
	addi	x8, x8, 60540	# 1544
	flw		f1, 0(x8)	# 1544
	addi	x8, x0, 0	# 1545
	mul		x8, x30, x8	# 1545
	addi	x8, x8, 60548	# 1545
	flw		f2, 0(x8)	# 1545
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32089	# 125
	jal		x0, fle_cont.32088	# 125
fle_else.32089:
	addi	x8, x0, 1	# 1546
	addi	x5, x13, 0
	addi	x4, x8, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1546
	addi	x2, x2, -24	# 1546
	lw		x31, 0(x29)	# 1546
	jalr	x1, x31, 0	# 1546
	addi	x2, x2, 24	# 1546
	lw		x1, -20(x2)	# 1546
fle_cont.32088:
beq_cont.32087:
	jal		x0, beq_cont.32010	# 1537
beq.32011:
	addi	x8, x0, 1	# 1538
	addi	x5, x13, 0
	addi	x4, x8, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1538
	addi	x2, x2, -24	# 1538
	lw		x31, 0(x29)	# 1538
	jalr	x1, x31, 0	# 1538
	addi	x2, x2, 24	# 1538
	lw		x1, -20(x2)	# 1538
beq_cont.32010:
	lw		x4, -12(x2)	# 1550
	lw		x5, -16(x2)	# 1550
	add		x4, x5, x4	# 1550
	lw		x5, -4(x2)	# 1550
	lw		x6, 0(x2)	# 1550
	lw		x29, -8(x2)	# 1550
	lw		x31, 0(x29)	# 1550
	jalr	x0, x31, 0	# 1550
beq.32009:
	jalr	x0, x1, 0	# 1535
solve_each_element_fast.2860.17791:
	lw		x7, 32(x29)	# 655
	lw		x8, 28(x29)	# 655
	lw		x9, 24(x29)	# 655
	lw		x10, 20(x29)	# 655
	lw		x11, 16(x29)	# 655
	lw		x12, 12(x29)	# 655
	lw		x13, 8(x29)	# 655
	flw		f1, 4(x29)	# 655
	lw		x14, 0(x6)	# 655
	mul		x15, x30, x4	# 1575
	add		x15, x5, x15	# 1575
	lw		x15, 0(x15)	# 1575
	beq		x15, x10, beq.32091	# 1576
	mul		x10, x30, x15	# 1189
	addi	x10, x10, 60048	# 1189
	lw		x10, 0(x10)	# 1189
	lw		x16, 40(x10)	# 564
	mul		x17, x30, x12	# 1191
	add		x17, x16, x17	# 1191
	flw		f2, 0(x17)	# 1191
	mul		x17, x30, x13	# 1192
	add		x17, x16, x17	# 1192
	flw		f3, 0(x17)	# 1192
	mul		x17, x30, x9	# 1193
	add		x17, x16, x17	# 1193
	flw		f4, 0(x17)	# 1193
	lw		x17, 4(x6)	# 661
	mul		x18, x30, x15	# 1195
	add		x17, x17, x18	# 1195
	lw		x17, 0(x17)	# 1195
	lw		x18, 4(x10)	# 369
	beq		x18, x13, beq.32093	# 1197
	addi	x8, x0, 2	# 1199
	beq		x18, x8, beq.32095	# 1199
	mul		x8, x30, x12	# 1171
	add		x8, x17, x8	# 1171
	flw		f5, 0(x8)	# 1171
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32097	# 120
	addi	x8, x0, 0	# 1173
	jal		x0, feq_cont.32096	# 120
feq_else.32097:
	mul		x8, x30, x13	# 1175
	add		x8, x17, x8	# 1175
	flw		f6, 0(x8)	# 1175
	fmul	f2, f6, f2	# 1175
	mul		x8, x30, x9	# 1175
	add		x8, x17, x8	# 1175
	flw		f6, 0(x8)	# 1175
	fmul	f3, f6, f3	# 1175
	fadd	f2, f2, f3	# 1175
	mul		x8, x30, x11	# 1175
	add		x8, x17, x8	# 1175
	flw		f3, 0(x8)	# 1175
	fmul	f3, f3, f4	# 1175
	fadd	f2, f2, f3	# 1175
	mul		x8, x30, x11	# 1176
	add		x8, x16, x8	# 1176
	flw		f3, 0(x8)	# 1176
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1177
	fsub	f3, f4, f3	# 1177
	fle		x31, f3, f1	# 121
	beq		x31, x0, fle_else.32099	# 121
	addi	x8, x0, 0	# 1184
	jal		x0, fle_cont.32098	# 121
fle_else.32099:
	lw		x8, 24(x10)	# 389
	beq		x8, x12, beq.32101	# 1179
	addi	x8, x0, 0	# 1180
	fsqrt	f3, f3	# 1180
	fadd	f2, f2, f3	# 1180
	addi	x9, x0, 4	# 1180
	mul		x9, x30, x9	# 1180
	add		x9, x17, x9	# 1180
	flw		f3, 0(x9)	# 1180
	fmul	f2, f2, f3	# 1180
	mul		x8, x30, x8	# 1180
	addi	x8, x8, 60540	# 1180
	fsw		f2, 0(x8)	# 1180
	jal		x0, beq_cont.32100	# 1179
beq.32101:
	addi	x8, x0, 0	# 1182
	fsqrt	f3, f3	# 1182
	fsub	f2, f2, f3	# 1182
	addi	x9, x0, 4	# 1182
	mul		x9, x30, x9	# 1182
	add		x9, x17, x9	# 1182
	flw		f3, 0(x9)	# 1182
	fmul	f2, f2, f3	# 1182
	mul		x8, x30, x8	# 1182
	addi	x8, x8, 60540	# 1182
	fsw		f2, 0(x8)	# 1182
beq_cont.32100:
	addi	x8, x0, 1	# 1183
fle_cont.32098:
feq_cont.32096:
	jal		x0, beq_cont.32094	# 1199
beq.32095:
	mul		x8, x30, x12	# 1162
	add		x8, x17, x8	# 1162
	flw		f2, 0(x8)	# 1162
	fle		x31, f1, f2	# 122
	beq		x31, x0, fle_else.32103	# 122
	addi	x8, x0, 0	# 1165
	jal		x0, fle_cont.32102	# 122
fle_else.32103:
	mul		x8, x30, x12	# 1163
	add		x8, x17, x8	# 1163
	flw		f2, 0(x8)	# 1163
	mul		x8, x30, x11	# 1163
	add		x8, x16, x8	# 1163
	flw		f3, 0(x8)	# 1163
	fmul	f2, f2, f3	# 1163
	mul		x8, x30, x12	# 1163
	addi	x8, x8, 60540	# 1163
	fsw		f2, 0(x8)	# 1163
	addi	x8, x0, 1	# 1164
fle_cont.32102:
beq_cont.32094:
	jal		x0, beq_cont.32092	# 1197
beq.32093:
	lw		x16, 0(x6)	# 655
	mul		x18, x30, x12	# 1080
	add		x18, x17, x18	# 1080
	flw		f5, 0(x18)	# 1080
	fsub	f5, f5, f2	# 1080
	mul		x18, x30, x13	# 1080
	add		x18, x17, x18	# 1080
	flw		f6, 0(x18)	# 1080
	fmul	f5, f5, f6	# 1080
	mul		x18, x30, x13	# 1082
	add		x18, x16, x18	# 1082
	flw		f6, 0(x18)	# 1082
	fmul	f6, f5, f6	# 1082
	fadd	f6, f6, f3	# 1082
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32104	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32104:
	lw		x18, 16(x10)	# 417
	mul		x19, x30, x13	# 422
	add		x18, x18, x19	# 422
	flw		f7, 0(x18)	# 422
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32106	# 125
	addi	x18, x0, 0	# 1086
	jal		x0, fle_cont.32105	# 125
fle_else.32106:
	mul		x18, x30, x9	# 1083
	add		x18, x16, x18	# 1083
	flw		f6, 0(x18)	# 1083
	fmul	f6, f5, f6	# 1083
	fadd	f6, f6, f4	# 1083
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32107	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32107:
	lw		x18, 16(x10)	# 427
	mul		x19, x30, x9	# 432
	add		x18, x18, x19	# 432
	flw		f7, 0(x18)	# 432
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32109	# 125
	addi	x18, x0, 0	# 1085
	jal		x0, fle_cont.32108	# 125
fle_else.32109:
	mul		x18, x30, x13	# 1084
	add		x18, x17, x18	# 1084
	flw		f6, 0(x18)	# 1084
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.32111	# 120
	addi	x18, x0, 0	# 1084
	jal		x0, feq_cont.32110	# 120
feq_else.32111:
	addi	x18, x0, 1	# 1084
feq_cont.32110:
fle_cont.32108:
fle_cont.32105:
	beq		x18, x12, beq.32113	# 1081
	mul		x8, x30, x12	# 1088
	addi	x8, x8, 60540	# 1088
	fsw		f5, 0(x8)	# 1088
	addi	x8, x0, 1	# 1088
	jal		x0, beq_cont.32112	# 1081
beq.32113:
	mul		x18, x30, x9	# 1089
	add		x18, x17, x18	# 1089
	flw		f5, 0(x18)	# 1089
	fsub	f5, f5, f3	# 1089
	mul		x18, x30, x11	# 1089
	add		x18, x17, x18	# 1089
	flw		f6, 0(x18)	# 1089
	fmul	f5, f5, f6	# 1089
	mul		x18, x30, x12	# 1091
	add		x18, x16, x18	# 1091
	flw		f6, 0(x18)	# 1091
	fmul	f7, f5, f6	# 1091
	fadd	f7, f7, f2	# 1091
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.32114	# 124
	fsub	f7, f0, f7	# 124
fle_cont.32114:
	lw		x18, 16(x10)	# 407
	mul		x19, x30, x12	# 412
	add		x18, x18, x19	# 412
	flw		f8, 0(x18)	# 412
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32116	# 125
	addi	x9, x0, 0	# 1095
	jal		x0, fle_cont.32115	# 125
fle_else.32116:
	mul		x18, x30, x9	# 1092
	add		x18, x16, x18	# 1092
	flw		f7, 0(x18)	# 1092
	fmul	f7, f5, f7	# 1092
	fadd	f7, f7, f4	# 1092
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.32117	# 124
	fsub	f7, f0, f7	# 124
fle_cont.32117:
	lw		x18, 16(x10)	# 427
	mul		x9, x30, x9	# 432
	add		x9, x18, x9	# 432
	flw		f8, 0(x9)	# 432
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32119	# 125
	addi	x9, x0, 0	# 1094
	jal		x0, fle_cont.32118	# 125
fle_else.32119:
	mul		x9, x30, x11	# 1093
	add		x9, x17, x9	# 1093
	flw		f7, 0(x9)	# 1093
	feq		x31, f7, f1	# 120
	beq		x31, x0, feq_else.32121	# 120
	addi	x9, x0, 0	# 1093
	jal		x0, feq_cont.32120	# 120
feq_else.32121:
	addi	x9, x0, 1	# 1093
feq_cont.32120:
fle_cont.32118:
fle_cont.32115:
	beq		x9, x12, beq.32123	# 1090
	mul		x8, x30, x12	# 1097
	addi	x8, x8, 60540	# 1097
	fsw		f5, 0(x8)	# 1097
	addi	x8, x0, 2	# 1097
	jal		x0, beq_cont.32122	# 1090
beq.32123:
	addi	x9, x0, 4	# 1098
	mul		x9, x30, x9	# 1098
	add		x9, x17, x9	# 1098
	flw		f5, 0(x9)	# 1098
	fsub	f4, f5, f4	# 1098
	mul		x9, x30, x8	# 1098
	add		x9, x17, x9	# 1098
	flw		f5, 0(x9)	# 1098
	fmul	f4, f4, f5	# 1098
	fmul	f5, f4, f6	# 1100
	fadd	f2, f5, f2	# 1100
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32124	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32124:
	lw		x9, 16(x10)	# 407
	mul		x11, x30, x12	# 412
	add		x9, x9, x11	# 412
	flw		f5, 0(x9)	# 412
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.32126	# 125
	addi	x8, x0, 0	# 1104
	jal		x0, fle_cont.32125	# 125
fle_else.32126:
	mul		x9, x30, x13	# 1101
	add		x9, x16, x9	# 1101
	flw		f2, 0(x9)	# 1101
	fmul	f2, f4, f2	# 1101
	fadd	f2, f2, f3	# 1101
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32127	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32127:
	lw		x9, 16(x10)	# 417
	mul		x10, x30, x13	# 422
	add		x9, x9, x10	# 422
	flw		f3, 0(x9)	# 422
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32129	# 125
	addi	x8, x0, 0	# 1103
	jal		x0, fle_cont.32128	# 125
fle_else.32129:
	mul		x8, x30, x8	# 1102
	add		x8, x17, x8	# 1102
	flw		f2, 0(x8)	# 1102
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.32131	# 120
	addi	x8, x0, 0	# 1102
	jal		x0, feq_cont.32130	# 120
feq_else.32131:
	addi	x8, x0, 1	# 1102
feq_cont.32130:
fle_cont.32128:
fle_cont.32125:
	beq		x8, x12, beq.32133	# 1099
	mul		x8, x30, x12	# 1106
	addi	x8, x8, 60540	# 1106
	fsw		f4, 0(x8)	# 1106
	addi	x8, x0, 3	# 1106
	jal		x0, beq_cont.32132	# 1099
beq.32133:
	addi	x8, x0, 0	# 1108
beq_cont.32132:
beq_cont.32122:
beq_cont.32112:
beq_cont.32092:
	beq		x8, x12, beq.32134	# 1579
	mul		x9, x30, x12	# 1583
	addi	x9, x9, 60540	# 1583
	flw		f2, 0(x9)	# 1583
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x29, -8(x2)	# 125
	sw		x13, -12(x2)	# 125
	sw		x4, -16(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32136	# 125
	jal		x0, fle_cont.32135	# 125
fle_else.32136:
	addi	x9, x0, 0	# 1586
	mul		x9, x30, x9	# 1586
	addi	x9, x9, 60548	# 1586
	flw		f1, 0(x9)	# 1586
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32138	# 125
	jal		x0, fle_cont.32137	# 125
fle_else.32138:
	lui		x9, %hi(l.26268)	# 1588
	ori		x9, x0, %lo(l.26268)	# 1588
	flw		f1, 0(x9)	# 1588
	fadd	f1, f2, f1	# 1588
	addi	x9, x0, 0	# 1589
	mul		x9, x30, x9	# 1589
	add		x9, x14, x9	# 1589
	flw		f2, 0(x9)	# 1589
	fmul	f2, f2, f1	# 1589
	addi	x9, x0, 0	# 1589
	mul		x9, x30, x9	# 1589
	addi	x9, x9, 60648	# 1589
	flw		f3, 0(x9)	# 1589
	fadd	f2, f2, f3	# 1589
	addi	x9, x0, 1	# 1590
	mul		x9, x30, x9	# 1590
	add		x9, x14, x9	# 1590
	flw		f3, 0(x9)	# 1590
	fmul	f3, f3, f1	# 1590
	addi	x9, x0, 1	# 1590
	mul		x9, x30, x9	# 1590
	addi	x9, x9, 60648	# 1590
	flw		f4, 0(x9)	# 1590
	fadd	f3, f3, f4	# 1590
	addi	x9, x0, 2	# 1591
	mul		x9, x30, x9	# 1591
	add		x9, x14, x9	# 1591
	flw		f4, 0(x9)	# 1591
	fmul	f4, f4, f1	# 1591
	addi	x9, x0, 2	# 1591
	mul		x9, x30, x9	# 1591
	addi	x9, x9, 60648	# 1591
	flw		f5, 0(x9)	# 1591
	fadd	f4, f4, f5	# 1591
	addi	x9, x0, 0	# 1592
	sw		x8, -20(x2)	# 1592
	sw		x15, -24(x2)	# 1592
	fsw		f4, -28(x2)	# 1592
	fsw		f3, -32(x2)	# 1592
	fsw		f2, -36(x2)	# 1592
	fsw		f1, -40(x2)	# 1592
	addi	x4, x9, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -44(x2)	# 1592
	addi	x2, x2, -48	# 1592
	lw		x31, 0(x29)	# 1592
	jalr	x1, x31, 0	# 1592
	addi	x2, x2, 48	# 1592
	lw		x1, -44(x2)	# 1592
	addi	x5, x0, 0	# 1592
	beq		x4, x5, beq_cont.32139	# 1592
	addi	x4, x0, 0	# 1594
	mul		x4, x30, x4	# 1594
	addi	x4, x4, 60548	# 1594
	flw		f1, -40(x2)	# 1594
	fsw		f1, 0(x4)	# 1594
	addi	x4, x0, 0	# 256
	mul		x4, x30, x4	# 256
	addi	x4, x4, 60552	# 256
	flw		f1, -36(x2)	# 256
	fsw		f1, 0(x4)	# 256
	addi	x4, x0, 1	# 257
	mul		x4, x30, x4	# 257
	addi	x4, x4, 60552	# 257
	flw		f1, -32(x2)	# 257
	fsw		f1, 0(x4)	# 257
	addi	x4, x0, 2	# 258
	mul		x4, x30, x4	# 258
	addi	x4, x4, 60552	# 258
	flw		f1, -28(x2)	# 258
	fsw		f1, 0(x4)	# 258
	addi	x4, x0, 0	# 1596
	mul		x4, x30, x4	# 1596
	addi	x4, x4, 60564	# 1596
	lw		x5, -24(x2)	# 1596
	sw		x5, 0(x4)	# 1596
	addi	x4, x0, 0	# 1597
	mul		x4, x30, x4	# 1597
	addi	x4, x4, 60544	# 1597
	lw		x5, -20(x2)	# 1597
	sw		x5, 0(x4)	# 1597
beq_cont.32139:
fle_cont.32137:
fle_cont.32135:
	lw		x4, -12(x2)	# 1603
	lw		x5, -16(x2)	# 1603
	add		x4, x5, x4	# 1603
	lw		x5, -4(x2)	# 1603
	lw		x6, 0(x2)	# 1603
	lw		x29, -8(x2)	# 1603
	lw		x31, 0(x29)	# 1603
	jalr	x0, x31, 0	# 1603
beq.32134:
	mul		x7, x30, x15	# 1607
	addi	x7, x7, 60048	# 1607
	lw		x7, 0(x7)	# 1607
	lw		x7, 24(x7)	# 389
	beq		x7, x12, beq.32140	# 1607
	add		x4, x4, x13	# 1608
	lw		x31, 0(x29)	# 1608
	jalr	x0, x31, 0	# 1608
beq.32140:
	jalr	x0, x1, 0	# 1609
beq.32091:
	jalr	x0, x1, 0	# 1576
solve_one_or_network_fast.2864.17795:
	lw		x7, 16(x29)	# 1615
	lw		x8, 12(x29)	# 1615
	lw		x9, 8(x29)	# 1615
	lw		x10, 4(x29)	# 1615
	mul		x11, x30, x4	# 1615
	add		x11, x5, x11	# 1615
	lw		x11, 0(x11)	# 1615
	beq		x11, x8, beq.32143	# 1616
	mul		x8, x30, x11	# 1617
	addi	x8, x8, 60332	# 1617
	lw		x8, 0(x8)	# 1617
	sw		x6, 0(x2)	# 1618
	sw		x5, -4(x2)	# 1618
	sw		x29, -8(x2)	# 1618
	sw		x10, -12(x2)	# 1618
	sw		x4, -16(x2)	# 1618
	addi	x5, x8, 0
	addi	x4, x9, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1618
	addi	x2, x2, -24	# 1618
	lw		x31, 0(x29)	# 1618
	jalr	x1, x31, 0	# 1618
	addi	x2, x2, 24	# 1618
	lw		x1, -20(x2)	# 1618
	lw		x4, -12(x2)	# 1619
	lw		x5, -16(x2)	# 1619
	add		x4, x5, x4	# 1619
	lw		x5, -4(x2)	# 1619
	lw		x6, 0(x2)	# 1619
	lw		x29, -8(x2)	# 1619
	lw		x31, 0(x29)	# 1619
	jalr	x0, x31, 0	# 1619
beq.32143:
	jalr	x0, x1, 0	# 1620
trace_or_matrix_fast.2868.17799:
	lw		x7, 32(x29)	# 1625
	lw		x8, 28(x29)	# 1625
	lw		x9, 24(x29)	# 1625
	lw		x10, 20(x29)	# 1625
	lw		x11, 16(x29)	# 1625
	lw		x12, 12(x29)	# 1625
	lw		x13, 8(x29)	# 1625
	flw		f1, 4(x29)	# 1625
	mul		x14, x30, x4	# 1625
	add		x14, x5, x14	# 1625
	lw		x14, 0(x14)	# 1625
	mul		x15, x30, x12	# 1626
	add		x15, x14, x15	# 1626
	lw		x15, 0(x15)	# 1626
	beq		x15, x10, beq.32145	# 1627
	addi	x10, x0, 99	# 1630
	sw		x6, 0(x2)	# 1630
	sw		x5, -4(x2)	# 1630
	sw		x29, -8(x2)	# 1630
	sw		x13, -12(x2)	# 1630
	sw		x4, -16(x2)	# 1630
	beq		x15, x10, beq.32147	# 1630
	mul		x10, x30, x15	# 1189
	addi	x10, x10, 60048	# 1189
	lw		x10, 0(x10)	# 1189
	lw		x16, 40(x10)	# 564
	addi	x17, x0, 0	# 1191
	mul		x17, x30, x17	# 1191
	add		x17, x16, x17	# 1191
	flw		f2, 0(x17)	# 1191
	addi	x17, x0, 1	# 1192
	mul		x17, x30, x17	# 1192
	add		x17, x16, x17	# 1192
	flw		f3, 0(x17)	# 1192
	addi	x17, x0, 2	# 1193
	mul		x17, x30, x17	# 1193
	add		x17, x16, x17	# 1193
	flw		f4, 0(x17)	# 1193
	lw		x17, 4(x6)	# 661
	mul		x15, x30, x15	# 1195
	add		x15, x17, x15	# 1195
	lw		x15, 0(x15)	# 1195
	lw		x17, 4(x10)	# 369
	addi	x18, x0, 1	# 1197
	beq		x17, x18, beq.32149	# 1197
	addi	x8, x0, 2	# 1199
	beq		x17, x8, beq.32151	# 1199
	mul		x8, x30, x12	# 1171
	add		x8, x15, x8	# 1171
	flw		f5, 0(x8)	# 1171
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32153	# 120
	addi	x8, x0, 0	# 1173
	jal		x0, feq_cont.32152	# 120
feq_else.32153:
	mul		x8, x30, x13	# 1175
	add		x8, x15, x8	# 1175
	flw		f6, 0(x8)	# 1175
	fmul	f2, f6, f2	# 1175
	mul		x8, x30, x9	# 1175
	add		x8, x15, x8	# 1175
	flw		f6, 0(x8)	# 1175
	fmul	f3, f6, f3	# 1175
	fadd	f2, f2, f3	# 1175
	mul		x8, x30, x11	# 1175
	add		x8, x15, x8	# 1175
	flw		f3, 0(x8)	# 1175
	fmul	f3, f3, f4	# 1175
	fadd	f2, f2, f3	# 1175
	mul		x8, x30, x11	# 1176
	add		x8, x16, x8	# 1176
	flw		f3, 0(x8)	# 1176
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1177
	fsub	f3, f4, f3	# 1177
	fle		x31, f3, f1	# 121
	beq		x31, x0, fle_else.32155	# 121
	addi	x8, x0, 0	# 1184
	jal		x0, fle_cont.32154	# 121
fle_else.32155:
	lw		x8, 24(x10)	# 389
	beq		x8, x12, beq.32157	# 1179
	addi	x8, x0, 0	# 1180
	fsqrt	f1, f3	# 1180
	fadd	f1, f2, f1	# 1180
	addi	x9, x0, 4	# 1180
	mul		x9, x30, x9	# 1180
	add		x9, x15, x9	# 1180
	flw		f2, 0(x9)	# 1180
	fmul	f1, f1, f2	# 1180
	mul		x8, x30, x8	# 1180
	addi	x8, x8, 60540	# 1180
	fsw		f1, 0(x8)	# 1180
	jal		x0, beq_cont.32156	# 1179
beq.32157:
	addi	x8, x0, 0	# 1182
	fsqrt	f1, f3	# 1182
	fsub	f1, f2, f1	# 1182
	addi	x9, x0, 4	# 1182
	mul		x9, x30, x9	# 1182
	add		x9, x15, x9	# 1182
	flw		f2, 0(x9)	# 1182
	fmul	f1, f1, f2	# 1182
	mul		x8, x30, x8	# 1182
	addi	x8, x8, 60540	# 1182
	fsw		f1, 0(x8)	# 1182
beq_cont.32156:
	addi	x8, x0, 1	# 1183
fle_cont.32154:
feq_cont.32152:
	jal		x0, beq_cont.32150	# 1199
beq.32151:
	mul		x8, x30, x12	# 1162
	add		x8, x15, x8	# 1162
	flw		f2, 0(x8)	# 1162
	fle		x31, f1, f2	# 122
	beq		x31, x0, fle_else.32159	# 122
	addi	x8, x0, 0	# 1165
	jal		x0, fle_cont.32158	# 122
fle_else.32159:
	mul		x8, x30, x12	# 1163
	add		x8, x15, x8	# 1163
	flw		f1, 0(x8)	# 1163
	mul		x8, x30, x11	# 1163
	add		x8, x16, x8	# 1163
	flw		f2, 0(x8)	# 1163
	fmul	f1, f1, f2	# 1163
	mul		x8, x30, x12	# 1163
	addi	x8, x8, 60540	# 1163
	fsw		f1, 0(x8)	# 1163
	addi	x8, x0, 1	# 1164
fle_cont.32158:
beq_cont.32150:
	jal		x0, beq_cont.32148	# 1197
beq.32149:
	lw		x16, 0(x6)	# 655
	mul		x17, x30, x12	# 1080
	add		x17, x15, x17	# 1080
	flw		f5, 0(x17)	# 1080
	fsub	f5, f5, f2	# 1080
	mul		x17, x30, x13	# 1080
	add		x17, x15, x17	# 1080
	flw		f6, 0(x17)	# 1080
	fmul	f5, f5, f6	# 1080
	mul		x17, x30, x13	# 1082
	add		x17, x16, x17	# 1082
	flw		f6, 0(x17)	# 1082
	fmul	f6, f5, f6	# 1082
	fadd	f6, f6, f3	# 1082
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32160	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32160:
	lw		x17, 16(x10)	# 417
	mul		x18, x30, x13	# 422
	add		x17, x17, x18	# 422
	flw		f7, 0(x17)	# 422
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32162	# 125
	addi	x17, x0, 0	# 1086
	jal		x0, fle_cont.32161	# 125
fle_else.32162:
	mul		x17, x30, x9	# 1083
	add		x17, x16, x17	# 1083
	flw		f6, 0(x17)	# 1083
	fmul	f6, f5, f6	# 1083
	fadd	f6, f6, f4	# 1083
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32163	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32163:
	lw		x17, 16(x10)	# 427
	mul		x18, x30, x9	# 432
	add		x17, x17, x18	# 432
	flw		f7, 0(x17)	# 432
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32165	# 125
	addi	x17, x0, 0	# 1085
	jal		x0, fle_cont.32164	# 125
fle_else.32165:
	mul		x17, x30, x13	# 1084
	add		x17, x15, x17	# 1084
	flw		f6, 0(x17)	# 1084
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.32167	# 120
	addi	x17, x0, 0	# 1084
	jal		x0, feq_cont.32166	# 120
feq_else.32167:
	addi	x17, x0, 1	# 1084
feq_cont.32166:
fle_cont.32164:
fle_cont.32161:
	beq		x17, x12, beq.32169	# 1081
	mul		x8, x30, x12	# 1088
	addi	x8, x8, 60540	# 1088
	fsw		f5, 0(x8)	# 1088
	addi	x8, x0, 1	# 1088
	jal		x0, beq_cont.32168	# 1081
beq.32169:
	mul		x17, x30, x9	# 1089
	add		x17, x15, x17	# 1089
	flw		f5, 0(x17)	# 1089
	fsub	f5, f5, f3	# 1089
	mul		x17, x30, x11	# 1089
	add		x17, x15, x17	# 1089
	flw		f6, 0(x17)	# 1089
	fmul	f5, f5, f6	# 1089
	mul		x17, x30, x12	# 1091
	add		x17, x16, x17	# 1091
	flw		f6, 0(x17)	# 1091
	fmul	f7, f5, f6	# 1091
	fadd	f7, f7, f2	# 1091
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.32170	# 124
	fsub	f7, f0, f7	# 124
fle_cont.32170:
	lw		x17, 16(x10)	# 407
	mul		x18, x30, x12	# 412
	add		x17, x17, x18	# 412
	flw		f8, 0(x17)	# 412
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32172	# 125
	addi	x9, x0, 0	# 1095
	jal		x0, fle_cont.32171	# 125
fle_else.32172:
	mul		x17, x30, x9	# 1092
	add		x17, x16, x17	# 1092
	flw		f7, 0(x17)	# 1092
	fmul	f7, f5, f7	# 1092
	fadd	f7, f7, f4	# 1092
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.32173	# 124
	fsub	f7, f0, f7	# 124
fle_cont.32173:
	lw		x17, 16(x10)	# 427
	mul		x9, x30, x9	# 432
	add		x9, x17, x9	# 432
	flw		f8, 0(x9)	# 432
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32175	# 125
	addi	x9, x0, 0	# 1094
	jal		x0, fle_cont.32174	# 125
fle_else.32175:
	mul		x9, x30, x11	# 1093
	add		x9, x15, x9	# 1093
	flw		f7, 0(x9)	# 1093
	feq		x31, f7, f1	# 120
	beq		x31, x0, feq_else.32177	# 120
	addi	x9, x0, 0	# 1093
	jal		x0, feq_cont.32176	# 120
feq_else.32177:
	addi	x9, x0, 1	# 1093
feq_cont.32176:
fle_cont.32174:
fle_cont.32171:
	beq		x9, x12, beq.32179	# 1090
	mul		x8, x30, x12	# 1097
	addi	x8, x8, 60540	# 1097
	fsw		f5, 0(x8)	# 1097
	addi	x8, x0, 2	# 1097
	jal		x0, beq_cont.32178	# 1090
beq.32179:
	addi	x9, x0, 4	# 1098
	mul		x9, x30, x9	# 1098
	add		x9, x15, x9	# 1098
	flw		f5, 0(x9)	# 1098
	fsub	f4, f5, f4	# 1098
	mul		x9, x30, x8	# 1098
	add		x9, x15, x9	# 1098
	flw		f5, 0(x9)	# 1098
	fmul	f4, f4, f5	# 1098
	fmul	f5, f4, f6	# 1100
	fadd	f2, f5, f2	# 1100
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32180	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32180:
	lw		x9, 16(x10)	# 407
	mul		x11, x30, x12	# 412
	add		x9, x9, x11	# 412
	flw		f5, 0(x9)	# 412
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.32182	# 125
	addi	x8, x0, 0	# 1104
	jal		x0, fle_cont.32181	# 125
fle_else.32182:
	mul		x9, x30, x13	# 1101
	add		x9, x16, x9	# 1101
	flw		f2, 0(x9)	# 1101
	fmul	f2, f4, f2	# 1101
	fadd	f2, f2, f3	# 1101
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32183	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32183:
	lw		x9, 16(x10)	# 417
	mul		x10, x30, x13	# 422
	add		x9, x9, x10	# 422
	flw		f3, 0(x9)	# 422
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32185	# 125
	addi	x8, x0, 0	# 1103
	jal		x0, fle_cont.32184	# 125
fle_else.32185:
	mul		x8, x30, x8	# 1102
	add		x8, x15, x8	# 1102
	flw		f2, 0(x8)	# 1102
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.32187	# 120
	addi	x8, x0, 0	# 1102
	jal		x0, feq_cont.32186	# 120
feq_else.32187:
	addi	x8, x0, 1	# 1102
feq_cont.32186:
fle_cont.32184:
fle_cont.32181:
	beq		x8, x12, beq.32189	# 1099
	mul		x8, x30, x12	# 1106
	addi	x8, x8, 60540	# 1106
	fsw		f4, 0(x8)	# 1106
	addi	x8, x0, 3	# 1106
	jal		x0, beq_cont.32188	# 1099
beq.32189:
	addi	x8, x0, 0	# 1108
beq_cont.32188:
beq_cont.32178:
beq_cont.32168:
beq_cont.32148:
	addi	x9, x0, 0	# 1636
	beq		x8, x9, beq_cont.32190	# 1636
	addi	x8, x0, 0	# 1637
	mul		x8, x30, x8	# 1637
	addi	x8, x8, 60540	# 1637
	flw		f1, 0(x8)	# 1637
	addi	x8, x0, 0	# 1638
	mul		x8, x30, x8	# 1638
	addi	x8, x8, 60548	# 1638
	flw		f2, 0(x8)	# 1638
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32192	# 125
	jal		x0, fle_cont.32191	# 125
fle_else.32192:
	addi	x8, x0, 1	# 1639
	addi	x5, x14, 0
	addi	x4, x8, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1639
	addi	x2, x2, -24	# 1639
	lw		x31, 0(x29)	# 1639
	jalr	x1, x31, 0	# 1639
	addi	x2, x2, 24	# 1639
	lw		x1, -20(x2)	# 1639
fle_cont.32191:
beq_cont.32190:
	jal		x0, beq_cont.32146	# 1630
beq.32147:
	addi	x8, x0, 1	# 1631
	addi	x5, x14, 0
	addi	x4, x8, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1631
	addi	x2, x2, -24	# 1631
	lw		x31, 0(x29)	# 1631
	jalr	x1, x31, 0	# 1631
	addi	x2, x2, 24	# 1631
	lw		x1, -20(x2)	# 1631
beq_cont.32146:
	lw		x4, -12(x2)	# 1643
	lw		x5, -16(x2)	# 1643
	add		x4, x5, x4	# 1643
	lw		x5, -4(x2)	# 1643
	lw		x6, 0(x2)	# 1643
	lw		x29, -8(x2)	# 1643
	lw		x31, 0(x29)	# 1643
	jalr	x0, x31, 0	# 1643
beq.32145:
	jalr	x0, x1, 0	# 1628
trace_reflections.2890.17803:
	lw		x6, 28(x29)	# 1820
	lw		x7, 24(x29)	# 1820
	lw		x8, 20(x29)	# 1820
	lw		x9, 16(x29)	# 1820
	lw		x10, 12(x29)	# 1820
	flw		f3, 8(x29)	# 1820
	flw		f4, 4(x29)	# 1820
	ble		x9, x4, ble.32194	# 1820
	jalr	x0, x1, 0	# 1840
ble.32194:
	mul		x11, x30, x4	# 1821
	addi	x11, x11, 61016	# 1821
	lw		x11, 0(x11)	# 1821
	lw		x12, 4(x11)	# 677
	mul		x13, x30, x9	# 1650
	addi	x13, x13, 60548	# 1650
	fsw		f3, 0(x13)	# 1650
	mul		x13, x30, x9	# 1651
	addi	x13, x13, 60536	# 1651
	lw		x13, 0(x13)	# 1651
	sw		x29, 0(x2)	# 1651
	sw		x4, -4(x2)	# 1651
	fsw		f2, -8(x2)	# 1651
	sw		x8, -12(x2)	# 1651
	sw		x10, -16(x2)	# 1651
	fsw		f4, -20(x2)	# 1651
	sw		x5, -24(x2)	# 1651
	fsw		f1, -28(x2)	# 1651
	sw		x12, -32(x2)	# 1651
	sw		x7, -36(x2)	# 1651
	sw		x11, -40(x2)	# 1651
	sw		x9, -44(x2)	# 1651
	addi	x5, x13, 0
	addi	x4, x9, 0
	addi	x29, x6, 0
	addi	x6, x12, 0
	sw		x1, -48(x2)	# 1651
	addi	x2, x2, -52	# 1651
	lw		x31, 0(x29)	# 1651
	jalr	x1, x31, 0	# 1651
	addi	x2, x2, 52	# 1651
	lw		x1, -48(x2)	# 1651
	lw		x4, -44(x2)	# 1652
	mul		x5, x30, x4	# 1652
	addi	x5, x5, 60548	# 1652
	flw		f1, 0(x5)	# 1652
	fadd	f2, f0, f23	# 1654
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32197	# 125
	addi	x5, x0, 0	# 1656
	jal		x0, fle_cont.32196	# 125
fle_else.32197:
	fadd	f2, f0, f25	# 1655
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32199	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32198	# 125
fle_else.32199:
	addi	x5, x0, 1	# 125
fle_cont.32198:
fle_cont.32196:
	beq		x5, x4, beq_cont.32200	# 1825
	addi	x5, x0, 0	# 1826
	mul		x5, x30, x5	# 1826
	addi	x5, x5, 60564	# 1826
	lw		x5, 0(x5)	# 1826
	addi	x6, x0, 4	# 1826
	mul		x5, x5, x6	# 1826
	addi	x6, x0, 0	# 1826
	mul		x6, x30, x6	# 1826
	addi	x6, x6, 60544	# 1826
	lw		x6, 0(x6)	# 1826
	add		x5, x5, x6	# 1826
	lw		x6, -40(x2)	# 671
	lw		x7, 0(x6)	# 671
	beq		x5, x7, beq.32202	# 1827
	jal		x0, beq_cont.32201	# 1827
beq.32202:
	addi	x5, x0, 0	# 1829
	addi	x7, x0, 0	# 1829
	mul		x7, x30, x7	# 1829
	addi	x7, x7, 60536	# 1829
	lw		x7, 0(x7)	# 1829
	lw		x29, -36(x2)	# 1829
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -48(x2)	# 1829
	addi	x2, x2, -52	# 1829
	lw		x31, 0(x29)	# 1829
	jalr	x1, x31, 0	# 1829
	addi	x2, x2, 52	# 1829
	lw		x1, -48(x2)	# 1829
	addi	x5, x0, 0	# 1829
	beq		x4, x5, beq.32204	# 1829
	jal		x0, beq_cont.32203	# 1829
beq.32204:
	lw		x4, -32(x2)	# 655
	lw		x5, 0(x4)	# 655
	addi	x6, x0, 0	# 308
	mul		x6, x30, x6	# 308
	addi	x6, x6, 60568	# 308
	flw		f1, 0(x6)	# 308
	addi	x6, x0, 0	# 308
	mul		x6, x30, x6	# 308
	add		x6, x5, x6	# 308
	flw		f2, 0(x6)	# 308
	fmul	f1, f1, f2	# 308
	addi	x6, x0, 1	# 308
	mul		x6, x30, x6	# 308
	addi	x6, x6, 60568	# 308
	flw		f2, 0(x6)	# 308
	addi	x6, x0, 1	# 308
	mul		x6, x30, x6	# 308
	add		x6, x5, x6	# 308
	flw		f3, 0(x6)	# 308
	fmul	f2, f2, f3	# 308
	fadd	f1, f1, f2	# 308
	addi	x6, x0, 2	# 308
	mul		x6, x30, x6	# 308
	addi	x6, x6, 60568	# 308
	flw		f2, 0(x6)	# 308
	addi	x6, x0, 2	# 308
	mul		x6, x30, x6	# 308
	add		x5, x5, x6	# 308
	flw		f3, 0(x5)	# 308
	fmul	f2, f2, f3	# 308
	fadd	f1, f1, f2	# 308
	lw		x5, -40(x2)	# 1833
	flw		f2, 8(x5)	# 1833
	flw		f3, -28(x2)	# 1833
	fmul	f4, f2, f3	# 1833
	fmul	f1, f4, f1	# 1833
	lw		x4, 0(x4)	# 655
	addi	x5, x0, 0	# 308
	mul		x5, x30, x5	# 308
	lw		x6, -24(x2)	# 308
	add		x5, x6, x5	# 308
	flw		f4, 0(x5)	# 308
	addi	x5, x0, 0	# 308
	mul		x5, x30, x5	# 308
	add		x5, x4, x5	# 308
	flw		f5, 0(x5)	# 308
	fmul	f4, f4, f5	# 308
	addi	x5, x0, 1	# 308
	mul		x5, x30, x5	# 308
	add		x5, x6, x5	# 308
	flw		f5, 0(x5)	# 308
	addi	x5, x0, 1	# 308
	mul		x5, x30, x5	# 308
	add		x5, x4, x5	# 308
	flw		f6, 0(x5)	# 308
	fmul	f5, f5, f6	# 308
	fadd	f4, f4, f5	# 308
	addi	x5, x0, 2	# 308
	mul		x5, x30, x5	# 308
	add		x5, x6, x5	# 308
	flw		f5, 0(x5)	# 308
	addi	x5, x0, 2	# 308
	mul		x5, x30, x5	# 308
	add		x4, x4, x5	# 308
	flw		f6, 0(x4)	# 308
	fmul	f5, f5, f6	# 308
	fadd	f4, f4, f5	# 308
	fmul	f2, f2, f4	# 1834
	flw		f4, -20(x2)	# 121
	fle		x31, f1, f4	# 121
	beq		x31, x0, fle_else.32206	# 121
	jal		x0, fle_cont.32205	# 121
fle_else.32206:
	lw		x4, -44(x2)	# 318
	mul		x5, x30, x4	# 318
	addi	x5, x5, 60604	# 318
	flw		f5, 0(x5)	# 318
	mul		x5, x30, x4	# 318
	addi	x5, x5, 60580	# 318
	flw		f6, 0(x5)	# 318
	fmul	f6, f1, f6	# 318
	fadd	f5, f5, f6	# 318
	mul		x4, x30, x4	# 318
	addi	x4, x4, 60604	# 318
	fsw		f5, 0(x4)	# 318
	lw		x4, -16(x2)	# 319
	mul		x5, x30, x4	# 319
	addi	x5, x5, 60604	# 319
	flw		f5, 0(x5)	# 319
	mul		x5, x30, x4	# 319
	addi	x5, x5, 60580	# 319
	flw		f6, 0(x5)	# 319
	fmul	f6, f1, f6	# 319
	fadd	f5, f5, f6	# 319
	mul		x5, x30, x4	# 319
	addi	x5, x5, 60604	# 319
	fsw		f5, 0(x5)	# 319
	lw		x5, -12(x2)	# 320
	mul		x7, x30, x5	# 320
	addi	x7, x7, 60604	# 320
	flw		f5, 0(x7)	# 320
	mul		x7, x30, x5	# 320
	addi	x7, x7, 60580	# 320
	flw		f6, 0(x7)	# 320
	fmul	f1, f1, f6	# 320
	fadd	f1, f5, f1	# 320
	mul		x5, x30, x5	# 320
	addi	x5, x5, 60604	# 320
	fsw		f1, 0(x5)	# 320
fle_cont.32205:
	fle		x31, f2, f4	# 121
	beq		x31, x0, fle_else.32208	# 121
	jal		x0, fle_cont.32207	# 121
fle_else.32208:
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -8(x2)	# 1810
	fmul	f1, f1, f2	# 1810
	addi	x4, x0, 0	# 1811
	addi	x5, x0, 0	# 1811
	mul		x5, x30, x5	# 1811
	addi	x5, x5, 60604	# 1811
	flw		f4, 0(x5)	# 1811
	fadd	f4, f4, f1	# 1811
	mul		x4, x30, x4	# 1811
	addi	x4, x4, 60604	# 1811
	fsw		f4, 0(x4)	# 1811
	addi	x4, x0, 1	# 1812
	addi	x5, x0, 1	# 1812
	mul		x5, x30, x5	# 1812
	addi	x5, x5, 60604	# 1812
	flw		f4, 0(x5)	# 1812
	fadd	f4, f4, f1	# 1812
	mul		x4, x30, x4	# 1812
	addi	x4, x4, 60604	# 1812
	fsw		f4, 0(x4)	# 1812
	addi	x4, x0, 2	# 1813
	mul		x5, x30, x4	# 1813
	addi	x5, x5, 60604	# 1813
	flw		f4, 0(x5)	# 1813
	fadd	f1, f4, f1	# 1813
	mul		x4, x30, x4	# 1813
	addi	x4, x4, 60604	# 1813
	fsw		f1, 0(x4)	# 1813
fle_cont.32207:
beq_cont.32203:
beq_cont.32201:
beq_cont.32200:
	lw		x4, -16(x2)	# 1839
	lw		x5, -4(x2)	# 1839
	sub		x4, x5, x4	# 1839
	flw		f1, -28(x2)	# 1839
	flw		f2, -8(x2)	# 1839
	lw		x5, -24(x2)	# 1839
	lw		x29, 0(x2)	# 1839
	lw		x31, 0(x29)	# 1839
	jalr	x0, x31, 0	# 1839
trace_ray.2895.17808:
	lw		x7, 68(x29)	# 1848
	lw		x8, 64(x29)	# 1848
	lw		x9, 60(x29)	# 1848
	lw		x10, 56(x29)	# 1848
	lw		x11, 52(x29)	# 1848
	lw		x12, 48(x29)	# 1848
	lw		x13, 44(x29)	# 1848
	lw		x14, 40(x29)	# 1848
	lw		x15, 36(x29)	# 1848
	lw		x16, 32(x29)	# 1848
	lw		x17, 28(x29)	# 1848
	lw		x18, 24(x29)	# 1848
	lw		x19, 20(x29)	# 1848
	lw		x20, 16(x29)	# 1848
	flw		f3, 12(x29)	# 1848
	flw		f4, 8(x29)	# 1848
	flw		f5, 4(x29)	# 1848
	addi	x21, x0, 4	# 1848
	ble		x4, x21, ble.32209	# 1848
	jalr	x0, x1, 0	# 1929
ble.32209:
	lw		x22, 8(x6)	# 593
	mul		x23, x30, x19	# 1559
	addi	x23, x23, 60548	# 1559
	fsw		f3, 0(x23)	# 1559
	mul		x23, x30, x19	# 1560
	addi	x23, x23, 60536	# 1560
	lw		x23, 0(x23)	# 1560
	sw		x29, 0(x2)	# 1560
	fsw		f2, -4(x2)	# 1560
	sw		x7, -8(x2)	# 1560
	sw		x11, -12(x2)	# 1560
	sw		x10, -16(x2)	# 1560
	sw		x6, -20(x2)	# 1560
	sw		x21, -24(x2)	# 1560
	sw		x15, -28(x2)	# 1560
	sw		x14, -32(x2)	# 1560
	sw		x18, -36(x2)	# 1560
	sw		x9, -40(x2)	# 1560
	fsw		f4, -44(x2)	# 1560
	sw		x13, -48(x2)	# 1560
	sw		x12, -52(x2)	# 1560
	fsw		f1, -56(x2)	# 1560
	fsw		f5, -60(x2)	# 1560
	sw		x16, -64(x2)	# 1560
	sw		x20, -68(x2)	# 1560
	sw		x5, -72(x2)	# 1560
	sw		x17, -76(x2)	# 1560
	sw		x22, -80(x2)	# 1560
	sw		x4, -84(x2)	# 1560
	sw		x19, -88(x2)	# 1560
	addi	x6, x5, 0
	addi	x4, x19, 0
	addi	x29, x8, 0
	addi	x5, x23, 0
	sw		x1, -92(x2)	# 1560
	addi	x2, x2, -96	# 1560
	lw		x31, 0(x29)	# 1560
	jalr	x1, x31, 0	# 1560
	addi	x2, x2, 96	# 1560
	lw		x1, -92(x2)	# 1560
	lw		x4, -88(x2)	# 1561
	mul		x5, x30, x4	# 1561
	addi	x5, x5, 60548	# 1561
	flw		f1, 0(x5)	# 1561
	fadd	f2, f0, f23	# 1563
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32212	# 125
	addi	x5, x0, 0	# 1565
	jal		x0, fle_cont.32211	# 125
fle_else.32212:
	fadd	f2, f0, f25	# 1564
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32214	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32213	# 125
fle_else.32214:
	addi	x5, x0, 1	# 125
fle_cont.32213:
fle_cont.32211:
	beq		x5, x4, beq.32215	# 1850
	mul		x5, x30, x4	# 1852
	addi	x5, x5, 60564	# 1852
	lw		x5, 0(x5)	# 1852
	mul		x6, x30, x5	# 1853
	addi	x6, x6, 60048	# 1853
	lw		x6, 0(x6)	# 1853
	lw		x7, 8(x6)	# 379
	lw		x8, 28(x6)	# 477
	mul		x9, x30, x4	# 482
	add		x8, x8, x9	# 482
	flw		f1, 0(x8)	# 482
	flw		f2, -56(x2)	# 1855
	fmul	f1, f1, f2	# 1855
	lw		x8, 4(x6)	# 369
	lw		x9, -68(x2)	# 1709
	beq		x8, x9, beq.32217	# 1709
	addi	x10, x0, 2	# 1711
	beq		x8, x10, beq.32219	# 1711
	mul		x8, x30, x4	# 1686
	addi	x8, x8, 60552	# 1686
	flw		f3, 0(x8)	# 1686
	lw		x8, 20(x6)	# 447
	mul		x10, x30, x4	# 452
	add		x8, x8, x10	# 452
	flw		f4, 0(x8)	# 452
	fsub	f3, f3, f4	# 1686
	mul		x8, x30, x9	# 1687
	addi	x8, x8, 60552	# 1687
	flw		f4, 0(x8)	# 1687
	lw		x8, 20(x6)	# 457
	mul		x10, x30, x9	# 462
	add		x8, x8, x10	# 462
	flw		f5, 0(x8)	# 462
	fsub	f4, f4, f5	# 1687
	lw		x8, -64(x2)	# 1688
	mul		x10, x30, x8	# 1688
	addi	x10, x10, 60552	# 1688
	flw		f5, 0(x10)	# 1688
	lw		x10, 20(x6)	# 467
	mul		x11, x30, x8	# 472
	add		x10, x10, x11	# 472
	flw		f6, 0(x10)	# 472
	fsub	f5, f5, f6	# 1688
	lw		x10, 16(x6)	# 407
	mul		x11, x30, x4	# 412
	add		x10, x10, x11	# 412
	flw		f6, 0(x10)	# 412
	fmul	f6, f3, f6	# 1690
	lw		x10, 16(x6)	# 417
	mul		x11, x30, x9	# 422
	add		x10, x10, x11	# 422
	flw		f7, 0(x10)	# 422
	fmul	f7, f4, f7	# 1691
	lw		x10, 16(x6)	# 427
	mul		x11, x30, x8	# 432
	add		x10, x10, x11	# 432
	flw		f8, 0(x10)	# 432
	fmul	f8, f5, f8	# 1692
	lw		x10, 12(x6)	# 398
	beq		x10, x4, beq.32221	# 1694
	addi	x10, x0, 0	# 1699
	lw		x11, 36(x6)	# 547
	addi	x12, x0, 2	# 552
	mul		x12, x30, x12	# 552
	add		x11, x11, x12	# 552
	flw		f9, 0(x11)	# 552
	fmul	f9, f4, f9	# 1699
	lw		x11, 36(x6)	# 537
	addi	x12, x0, 1	# 542
	mul		x12, x30, x12	# 542
	add		x11, x11, x12	# 542
	flw		f10, 0(x11)	# 542
	fmul	f10, f5, f10	# 1699
	fadd	f9, f9, f10	# 1699
	fadd	f10, f0, f17	# 126
	fmul	f9, f9, f10	# 126
	fadd	f6, f6, f9	# 1699
	mul		x10, x30, x10	# 1699
	addi	x10, x10, 60568	# 1699
	fsw		f6, 0(x10)	# 1699
	addi	x10, x0, 1	# 1700
	lw		x11, 36(x6)	# 547
	addi	x12, x0, 2	# 552
	mul		x12, x30, x12	# 552
	add		x11, x11, x12	# 552
	flw		f6, 0(x11)	# 552
	fmul	f6, f3, f6	# 1700
	lw		x11, 36(x6)	# 527
	addi	x12, x0, 0	# 532
	mul		x12, x30, x12	# 532
	add		x11, x11, x12	# 532
	flw		f9, 0(x11)	# 532
	fmul	f5, f5, f9	# 1700
	fadd	f5, f6, f5	# 1700
	fadd	f6, f0, f17	# 126
	fmul	f5, f5, f6	# 126
	fadd	f5, f7, f5	# 1700
	mul		x10, x30, x10	# 1700
	addi	x10, x10, 60568	# 1700
	fsw		f5, 0(x10)	# 1700
	addi	x10, x0, 2	# 1701
	lw		x11, 36(x6)	# 537
	addi	x12, x0, 1	# 542
	mul		x12, x30, x12	# 542
	add		x11, x11, x12	# 542
	flw		f5, 0(x11)	# 542
	fmul	f3, f3, f5	# 1701
	lw		x11, 36(x6)	# 527
	addi	x12, x0, 0	# 532
	mul		x12, x30, x12	# 532
	add		x11, x11, x12	# 532
	flw		f5, 0(x11)	# 532
	fmul	f4, f4, f5	# 1701
	fadd	f3, f3, f4	# 1701
	fadd	f4, f0, f17	# 126
	fmul	f3, f3, f4	# 126
	fadd	f3, f8, f3	# 1701
	mul		x10, x30, x10	# 1701
	addi	x10, x10, 60568	# 1701
	fsw		f3, 0(x10)	# 1701
	jal		x0, beq_cont.32220	# 1694
beq.32221:
	addi	x10, x0, 0	# 1695
	mul		x10, x30, x10	# 1695
	addi	x10, x10, 60568	# 1695
	fsw		f6, 0(x10)	# 1695
	addi	x10, x0, 1	# 1696
	mul		x10, x30, x10	# 1696
	addi	x10, x10, 60568	# 1696
	fsw		f7, 0(x10)	# 1696
	addi	x10, x0, 2	# 1697
	mul		x10, x30, x10	# 1697
	addi	x10, x10, 60568	# 1697
	fsw		f8, 0(x10)	# 1697
beq_cont.32220:
	lw		x10, 24(x6)	# 389
	mul		x11, x30, x4	# 299
	addi	x11, x11, 60568	# 299
	flw		f3, 0(x11)	# 299
	fmul	f3, f3, f3	# 127
	mul		x11, x30, x9	# 299
	addi	x11, x11, 60568	# 299
	flw		f4, 0(x11)	# 299
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 299
	mul		x11, x30, x8	# 299
	addi	x11, x11, 60568	# 299
	flw		f4, 0(x11)	# 299
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 299
	fsqrt	f3, f3	# 299
	flw		f4, -60(x2)	# 120
	feq		x31, f3, f4	# 120
	beq		x31, x0, feq_else.32223	# 120
	fadd	f3, f0, f16	# 300
	jal		x0, feq_cont.32222	# 120
feq_else.32223:
	beq		x10, x4, beq.32225	# 300
	fadd	f5, f0, f18	# 300
	fdiv	f3, f5, f3	# 300
	jal		x0, beq_cont.32224	# 300
beq.32225:
	fadd	f5, f0, f16	# 300
	fdiv	f3, f5, f3	# 300
beq_cont.32224:
feq_cont.32222:
	mul		x10, x30, x4	# 301
	addi	x10, x10, 60568	# 301
	flw		f5, 0(x10)	# 301
	fmul	f5, f5, f3	# 301
	mul		x10, x30, x4	# 301
	addi	x10, x10, 60568	# 301
	fsw		f5, 0(x10)	# 301
	mul		x10, x30, x9	# 302
	addi	x10, x10, 60568	# 302
	flw		f5, 0(x10)	# 302
	fmul	f5, f5, f3	# 302
	mul		x10, x30, x9	# 302
	addi	x10, x10, 60568	# 302
	fsw		f5, 0(x10)	# 302
	mul		x10, x30, x8	# 303
	addi	x10, x10, 60568	# 303
	flw		f5, 0(x10)	# 303
	fmul	f3, f5, f3	# 303
	mul		x10, x30, x8	# 303
	addi	x10, x10, 60568	# 303
	fsw		f3, 0(x10)	# 303
	jal		x0, beq_cont.32218	# 1711
beq.32219:
	lw		x8, 16(x6)	# 407
	mul		x10, x30, x4	# 412
	add		x8, x8, x10	# 412
	flw		f3, 0(x8)	# 412
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x4	# 1679
	addi	x8, x8, 60568	# 1679
	fsw		f3, 0(x8)	# 1679
	lw		x8, 16(x6)	# 417
	mul		x10, x30, x9	# 422
	add		x8, x8, x10	# 422
	flw		f3, 0(x8)	# 422
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x9	# 1680
	addi	x8, x8, 60568	# 1680
	fsw		f3, 0(x8)	# 1680
	lw		x8, 16(x6)	# 427
	lw		x10, -64(x2)	# 432
	mul		x11, x30, x10	# 432
	add		x8, x8, x11	# 432
	flw		f3, 0(x8)	# 432
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x10	# 1681
	addi	x8, x8, 60568	# 1681
	fsw		f3, 0(x8)	# 1681
beq_cont.32218:
	jal		x0, beq_cont.32216	# 1709
beq.32217:
	mul		x8, x30, x4	# 1670
	addi	x8, x8, 60544	# 1670
	lw		x8, 0(x8)	# 1670
	fadd	f3, f0, f0	# 270
	mul		x10, x30, x4	# 263
	addi	x10, x10, 60568	# 263
	fsw		f3, 0(x10)	# 263
	mul		x10, x30, x9	# 264
	addi	x10, x10, 60568	# 264
	fsw		f3, 0(x10)	# 264
	lw		x10, -64(x2)	# 265
	mul		x11, x30, x10	# 265
	addi	x11, x11, 60568	# 265
	fsw		f3, 0(x11)	# 265
	sub		x11, x8, x9	# 1673
	sub		x8, x8, x9	# 1673
	mul		x8, x30, x8	# 1673
	lw		x12, -72(x2)	# 1673
	add		x8, x12, x8	# 1673
	flw		f3, 0(x8)	# 1673
	flw		f4, -60(x2)	# 120
	feq		x31, f3, f4	# 120
	beq		x31, x0, feq_else.32227	# 120
	fadd	f3, f0, f4	# 228
	jal		x0, feq_cont.32226	# 120
feq_else.32227:
	fle		x31, f3, f4	# 121
	beq		x31, x0, fle_else.32229	# 121
	fadd	f3, f0, f18	# 230
	jal		x0, fle_cont.32228	# 121
fle_else.32229:
	fadd	f3, f0, f16	# 229
fle_cont.32228:
feq_cont.32226:
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x11	# 1673
	addi	x8, x8, 60568	# 1673
	fsw		f3, 0(x8)	# 1673
beq_cont.32216:
	mul		x8, x30, x4	# 275
	addi	x8, x8, 60552	# 275
	flw		f3, 0(x8)	# 275
	mul		x8, x30, x4	# 275
	addi	x8, x8, 60636	# 275
	fsw		f3, 0(x8)	# 275
	mul		x8, x30, x9	# 276
	addi	x8, x8, 60552	# 276
	flw		f3, 0(x8)	# 276
	mul		x8, x30, x9	# 276
	addi	x8, x8, 60636	# 276
	fsw		f3, 0(x8)	# 276
	lw		x8, -64(x2)	# 277
	mul		x10, x30, x8	# 277
	addi	x10, x10, 60552	# 277
	flw		f3, 0(x10)	# 277
	mul		x10, x30, x8	# 277
	addi	x10, x10, 60636	# 277
	fsw		f3, 0(x10)	# 277
	lw		x10, 0(x6)	# 359
	lw		x11, 32(x6)	# 497
	mul		x12, x30, x4	# 502
	add		x11, x11, x12	# 502
	flw		f3, 0(x11)	# 502
	mul		x11, x30, x4	# 1726
	addi	x11, x11, 60580	# 1726
	fsw		f3, 0(x11)	# 1726
	lw		x11, 32(x6)	# 507
	mul		x12, x30, x9	# 512
	add		x11, x11, x12	# 512
	flw		f3, 0(x11)	# 512
	mul		x11, x30, x9	# 1727
	addi	x11, x11, 60580	# 1727
	fsw		f3, 0(x11)	# 1727
	lw		x11, 32(x6)	# 517
	mul		x12, x30, x8	# 522
	add		x11, x11, x12	# 522
	flw		f3, 0(x11)	# 522
	mul		x11, x30, x8	# 1728
	addi	x11, x11, 60580	# 1728
	fsw		f3, 0(x11)	# 1728
	sw		x7, -92(x2)	# 1729
	fsw		f1, -96(x2)	# 1729
	sw		x6, -100(x2)	# 1729
	sw		x5, -104(x2)	# 1729
	beq		x10, x9, beq.32231	# 1729
	beq		x10, x8, beq.32233	# 1747
	lw		x11, -36(x2)	# 1754
	beq		x10, x11, beq.32235	# 1754
	addi	x11, x0, 4	# 1765
	beq		x10, x11, beq.32237	# 1765
	jal		x0, beq_cont.32236	# 1765
beq.32237:
	mul		x10, x30, x4	# 1767
	addi	x10, x10, 60552	# 1767
	flw		f3, 0(x10)	# 1767
	lw		x10, 20(x6)	# 447
	mul		x11, x30, x4	# 452
	add		x10, x10, x11	# 452
	flw		f4, 0(x10)	# 452
	fsub	f3, f3, f4	# 1767
	lw		x10, 16(x6)	# 407
	mul		x11, x30, x4	# 412
	add		x10, x10, x11	# 412
	flw		f4, 0(x10)	# 412
	fsqrt	f4, f4	# 1767
	fmul	f3, f3, f4	# 1767
	mul		x10, x30, x8	# 1768
	addi	x10, x10, 60552	# 1768
	flw		f4, 0(x10)	# 1768
	lw		x10, 20(x6)	# 467
	mul		x11, x30, x8	# 472
	add		x10, x10, x11	# 472
	flw		f5, 0(x10)	# 472
	fsub	f4, f4, f5	# 1768
	lw		x10, 16(x6)	# 427
	mul		x11, x30, x8	# 432
	add		x10, x10, x11	# 432
	flw		f5, 0(x10)	# 432
	fsqrt	f5, f5	# 1768
	fmul	f4, f4, f5	# 1768
	fmul	f5, f3, f3	# 127
	fmul	f6, f4, f4	# 127
	fadd	f5, f5, f6	# 1769
	flw		f6, -60(x2)	# 124
	fle		x31, f3, f6	# 124
	beq		x31, x0, fle_else.32239	# 124
	fsub	f7, f0, f3	# 124
	jal		x0, fle_cont.32238	# 124
fle_else.32239:
	fadd	f7, f0, f3	# 124
fle_cont.32238:
	lui		x10, %hi(l.27145)	# 1771
	ori		x10, x0, %lo(l.27145)	# 1771
	flw		f8, 0(x10)	# 1771
	fsw		f8, -108(x2)	# 125
	fsw		f5, -112(x2)	# 125
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32241	# 125
	fdiv	f3, f4, f3	# 1774
	fle		x31, f3, f6	# 124
	beq		x31, x0, fle_cont.32242	# 124
	fsub	f3, f0, f3	# 124
fle_cont.32242:
	lw		x29, -28(x2)	# 1776
	fadd	f1, f0, f3
	sw		x1, -116(x2)	# 1776
	addi	x2, x2, -120	# 1776
	lw		x31, 0(x29)	# 1776
	jalr	x1, x31, 0	# 1776
	addi	x2, x2, 120	# 1776
	lw		x1, -116(x2)	# 1776
	fadd	f2, f0, f21	# 1776
	fmul	f1, f1, f2	# 1776
	fadd	f2, f0, f19	# 1776
	fdiv	f1, f1, f2	# 1776
	jal		x0, fle_cont.32240	# 125
fle_else.32241:
	fadd	f1, f0, f20	# 1772
fle_cont.32240:
	flw		f2, -60(x2)	# 153
	fsw		f1, -116(x2)	# 153
	fle		x31, f2, f1	# 153
	beq		x31, x0, fle_else.32244	# 153
	lw		x29, -52(x2)	# 153
	sw		x1, -120(x2)	# 153
	addi	x2, x2, -124	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 124	# 153
	lw		x1, -120(x2)	# 153
	lw		x29, -48(x2)	# 153
	sw		x1, -120(x2)	# 153
	addi	x2, x2, -124	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 124	# 153
	lw		x1, -120(x2)	# 153
	jal		x0, fle_cont.32243	# 153
fle_else.32244:
	lw		x29, -52(x2)	# 154
	sw		x1, -120(x2)	# 154
	addi	x2, x2, -124	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 124	# 154
	lw		x1, -120(x2)	# 154
	lw		x5, -68(x2)	# 154
	sub		x4, x4, x5	# 154
	lw		x29, -48(x2)	# 154
	sw		x1, -120(x2)	# 154
	addi	x2, x2, -124	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 124	# 154
	lw		x1, -120(x2)	# 154
fle_cont.32243:
	flw		f2, -116(x2)	# 1778
	fsub	f1, f2, f1	# 1778
	lw		x4, -68(x2)	# 1780
	mul		x5, x30, x4	# 1780
	addi	x5, x5, 60552	# 1780
	flw		f2, 0(x5)	# 1780
	lw		x5, -100(x2)	# 457
	lw		x6, 20(x5)	# 457
	mul		x7, x30, x4	# 462
	add		x6, x6, x7	# 462
	flw		f3, 0(x6)	# 462
	fsub	f2, f2, f3	# 1780
	lw		x6, 16(x5)	# 417
	mul		x7, x30, x4	# 422
	add		x6, x6, x7	# 422
	flw		f3, 0(x6)	# 422
	fsqrt	f3, f3	# 1780
	fmul	f2, f2, f3	# 1780
	flw		f3, -60(x2)	# 124
	flw		f4, -112(x2)	# 124
	fle		x31, f4, f3	# 124
	beq		x31, x0, fle_else.32246	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.32245	# 124
fle_else.32246:
	fadd	f5, f0, f4	# 124
fle_cont.32245:
	flw		f6, -108(x2)	# 125
	fsw		f1, -120(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32248	# 125
	fdiv	f2, f2, f4	# 1785
	fle		x31, f2, f3	# 124
	beq		x31, x0, fle_cont.32249	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32249:
	lw		x29, -28(x2)	# 1786
	fadd	f1, f0, f2
	sw		x1, -124(x2)	# 1786
	addi	x2, x2, -128	# 1786
	lw		x31, 0(x29)	# 1786
	jalr	x1, x31, 0	# 1786
	addi	x2, x2, 128	# 1786
	lw		x1, -124(x2)	# 1786
	fadd	f2, f0, f21	# 1786
	fmul	f1, f1, f2	# 1786
	fadd	f2, f0, f19	# 1786
	fdiv	f1, f1, f2	# 1786
	jal		x0, fle_cont.32247	# 125
fle_else.32248:
	fadd	f1, f0, f20	# 1783
fle_cont.32247:
	flw		f2, -60(x2)	# 153
	fsw		f1, -124(x2)	# 153
	fle		x31, f2, f1	# 153
	beq		x31, x0, fle_else.32251	# 153
	lw		x29, -52(x2)	# 153
	sw		x1, -128(x2)	# 153
	addi	x2, x2, -132	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 132	# 153
	lw		x1, -128(x2)	# 153
	lw		x29, -48(x2)	# 153
	sw		x1, -128(x2)	# 153
	addi	x2, x2, -132	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 132	# 153
	lw		x1, -128(x2)	# 153
	jal		x0, fle_cont.32250	# 153
fle_else.32251:
	lw		x29, -52(x2)	# 154
	sw		x1, -128(x2)	# 154
	addi	x2, x2, -132	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 132	# 154
	lw		x1, -128(x2)	# 154
	lw		x5, -68(x2)	# 154
	sub		x4, x4, x5	# 154
	lw		x29, -48(x2)	# 154
	sw		x1, -128(x2)	# 154
	addi	x2, x2, -132	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 132	# 154
	lw		x1, -128(x2)	# 154
fle_cont.32250:
	flw		f2, -124(x2)	# 1788
	fsub	f1, f2, f1	# 1788
	lui		x4, %hi(l.27162)	# 1789
	ori		x4, x0, %lo(l.27162)	# 1789
	flw		f2, 0(x4)	# 1789
	fadd	f3, f0, f17	# 1789
	flw		f4, -120(x2)	# 1789
	fsub	f4, f3, f4	# 1789
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1789
	fsub	f1, f3, f1	# 1789
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1789
	flw		f2, -60(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.32253	# 122
	jal		x0, fle_cont.32252	# 122
fle_else.32253:
	fadd	f1, f0, f2	# 1790
fle_cont.32252:
	flw		f3, -44(x2)	# 1791
	fmul	f1, f3, f1	# 1791
	fadd	f3, f0, f27	# 1791
	fdiv	f1, f1, f3	# 1791
	lw		x4, -64(x2)	# 1791
	mul		x5, x30, x4	# 1791
	addi	x5, x5, 60580	# 1791
	fsw		f1, 0(x5)	# 1791
beq_cont.32236:
	jal		x0, beq_cont.32234	# 1754
beq.32235:
	mul		x10, x30, x4	# 1757
	addi	x10, x10, 60552	# 1757
	flw		f3, 0(x10)	# 1757
	lw		x10, 20(x6)	# 447
	mul		x11, x30, x4	# 452
	add		x10, x10, x11	# 452
	flw		f4, 0(x10)	# 452
	fsub	f3, f3, f4	# 1757
	mul		x10, x30, x8	# 1758
	addi	x10, x10, 60552	# 1758
	flw		f4, 0(x10)	# 1758
	lw		x10, 20(x6)	# 467
	mul		x11, x30, x8	# 472
	add		x10, x10, x11	# 472
	flw		f5, 0(x10)	# 472
	fsub	f4, f4, f5	# 1758
	fmul	f3, f3, f3	# 127
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 1759
	fsqrt	f3, f3	# 1759
	fadd	f4, f0, f22	# 1759
	fdiv	f3, f3, f4	# 1759
	flw		f4, -60(x2)	# 153
	fsw		f3, -128(x2)	# 153
	fle		x31, f4, f3	# 153
	beq		x31, x0, fle_else.32255	# 153
	lw		x29, -52(x2)	# 153
	fadd	f1, f0, f3
	sw		x1, -132(x2)	# 153
	addi	x2, x2, -136	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 136	# 153
	lw		x1, -132(x2)	# 153
	lw		x29, -48(x2)	# 153
	sw		x1, -132(x2)	# 153
	addi	x2, x2, -136	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 136	# 153
	lw		x1, -132(x2)	# 153
	jal		x0, fle_cont.32254	# 153
fle_else.32255:
	lw		x29, -52(x2)	# 154
	fadd	f1, f0, f3
	sw		x1, -132(x2)	# 154
	addi	x2, x2, -136	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 136	# 154
	lw		x1, -132(x2)	# 154
	lw		x5, -68(x2)	# 154
	sub		x4, x4, x5	# 154
	lw		x29, -48(x2)	# 154
	sw		x1, -132(x2)	# 154
	addi	x2, x2, -136	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 136	# 154
	lw		x1, -132(x2)	# 154
fle_cont.32254:
	flw		f2, -128(x2)	# 1760
	fsub	f1, f2, f1	# 1760
	fadd	f2, f0, f19	# 1760
	fmul	f1, f1, f2	# 1760
	lw		x29, -32(x2)	# 1761
	sw		x1, -132(x2)	# 1761
	addi	x2, x2, -136	# 1761
	lw		x31, 0(x29)	# 1761
	jalr	x1, x31, 0	# 1761
	addi	x2, x2, 136	# 1761
	lw		x1, -132(x2)	# 1761
	fmul	f1, f1, f1	# 127
	flw		f2, -44(x2)	# 1762
	fmul	f3, f1, f2	# 1762
	lw		x4, -68(x2)	# 1762
	mul		x5, x30, x4	# 1762
	addi	x5, x5, 60580	# 1762
	fsw		f3, 0(x5)	# 1762
	fadd	f3, f0, f16	# 1763
	fsub	f1, f3, f1	# 1763
	fmul	f1, f1, f2	# 1763
	lw		x5, -64(x2)	# 1763
	mul		x6, x30, x5	# 1763
	addi	x6, x6, 60580	# 1763
	fsw		f1, 0(x6)	# 1763
beq_cont.32234:
	jal		x0, beq_cont.32232	# 1747
beq.32233:
	mul		x10, x30, x9	# 1750
	addi	x10, x10, 60552	# 1750
	flw		f3, 0(x10)	# 1750
	fadd	f4, f0, f26	# 1750
	fmul	f3, f3, f4	# 1750
	lw		x29, -40(x2)	# 1750
	fadd	f1, f0, f3
	sw		x1, -132(x2)	# 1750
	addi	x2, x2, -136	# 1750
	lw		x31, 0(x29)	# 1750
	jalr	x1, x31, 0	# 1750
	addi	x2, x2, 136	# 1750
	lw		x1, -132(x2)	# 1750
	fmul	f1, f1, f1	# 127
	flw		f2, -44(x2)	# 1751
	fmul	f3, f2, f1	# 1751
	lw		x4, -88(x2)	# 1751
	mul		x5, x30, x4	# 1751
	addi	x5, x5, 60580	# 1751
	fsw		f3, 0(x5)	# 1751
	fadd	f3, f0, f16	# 1752
	fsub	f1, f3, f1	# 1752
	fmul	f1, f2, f1	# 1752
	lw		x5, -68(x2)	# 1752
	mul		x6, x30, x5	# 1752
	addi	x6, x6, 60580	# 1752
	fsw		f1, 0(x6)	# 1752
beq_cont.32232:
	jal		x0, beq_cont.32230	# 1729
beq.32231:
	mul		x10, x30, x4	# 1732
	addi	x10, x10, 60552	# 1732
	flw		f3, 0(x10)	# 1732
	lw		x10, 20(x6)	# 447
	mul		x11, x30, x4	# 452
	add		x10, x10, x11	# 452
	flw		f4, 0(x10)	# 452
	fsub	f3, f3, f4	# 1732
	fadd	f4, f0, f28	# 1734
	fmul	f5, f3, f4	# 1734
	flw		f6, -60(x2)	# 153
	fsw		f4, -132(x2)	# 153
	fsw		f3, -136(x2)	# 153
	fle		x31, f6, f5	# 153
	beq		x31, x0, fle_else.32257	# 153
	lw		x29, -52(x2)	# 153
	fadd	f1, f0, f5
	sw		x1, -140(x2)	# 153
	addi	x2, x2, -144	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 144	# 153
	lw		x1, -140(x2)	# 153
	lw		x29, -48(x2)	# 153
	sw		x1, -140(x2)	# 153
	addi	x2, x2, -144	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 144	# 153
	lw		x1, -140(x2)	# 153
	jal		x0, fle_cont.32256	# 153
fle_else.32257:
	lw		x29, -52(x2)	# 154
	fadd	f1, f0, f5
	sw		x1, -140(x2)	# 154
	addi	x2, x2, -144	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 144	# 154
	lw		x1, -140(x2)	# 154
	lw		x5, -68(x2)	# 154
	sub		x4, x4, x5	# 154
	lw		x29, -48(x2)	# 154
	sw		x1, -140(x2)	# 154
	addi	x2, x2, -144	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 144	# 154
	lw		x1, -140(x2)	# 154
fle_cont.32256:
	fadd	f2, f0, f29	# 1734
	fmul	f1, f1, f2	# 1734
	flw		f3, -136(x2)	# 1735
	fsub	f1, f3, f1	# 1735
	fadd	f3, f0, f22	# 1735
	lw		x4, -64(x2)	# 1737
	mul		x5, x30, x4	# 1737
	addi	x5, x5, 60552	# 1737
	flw		f4, 0(x5)	# 1737
	lw		x5, -100(x2)	# 467
	lw		x6, 20(x5)	# 467
	mul		x7, x30, x4	# 472
	add		x6, x6, x7	# 472
	flw		f5, 0(x6)	# 472
	fsub	f4, f4, f5	# 1737
	flw		f5, -132(x2)	# 1739
	fmul	f5, f4, f5	# 1739
	flw		f6, -60(x2)	# 153
	fsw		f1, -140(x2)	# 153
	fsw		f3, -144(x2)	# 153
	fsw		f4, -148(x2)	# 153
	fsw		f2, -152(x2)	# 153
	fle		x31, f6, f5	# 153
	beq		x31, x0, fle_else.32259	# 153
	lw		x29, -52(x2)	# 153
	fadd	f1, f0, f5
	sw		x1, -156(x2)	# 153
	addi	x2, x2, -160	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 160	# 153
	lw		x1, -156(x2)	# 153
	lw		x29, -48(x2)	# 153
	sw		x1, -156(x2)	# 153
	addi	x2, x2, -160	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 160	# 153
	lw		x1, -156(x2)	# 153
	jal		x0, fle_cont.32258	# 153
fle_else.32259:
	lw		x29, -52(x2)	# 154
	fadd	f1, f0, f5
	sw		x1, -156(x2)	# 154
	addi	x2, x2, -160	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 160	# 154
	lw		x1, -156(x2)	# 154
	lw		x5, -68(x2)	# 154
	sub		x4, x4, x5	# 154
	lw		x29, -48(x2)	# 154
	sw		x1, -156(x2)	# 154
	addi	x2, x2, -160	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 160	# 154
	lw		x1, -156(x2)	# 154
fle_cont.32258:
	flw		f2, -152(x2)	# 1739
	fmul	f1, f1, f2	# 1739
	flw		f2, -148(x2)	# 1740
	fsub	f1, f2, f1	# 1740
	flw		f2, -140(x2)	# 125
	flw		f3, -144(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32261	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32263	# 125
	flw		f1, -44(x2)	# 1745
	jal		x0, fle_cont.32262	# 125
fle_else.32263:
	flw		f1, -60(x2)	# 1745
fle_cont.32262:
	jal		x0, fle_cont.32260	# 125
fle_else.32261:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32265	# 125
	flw		f1, -60(x2)	# 1744
	jal		x0, fle_cont.32264	# 125
fle_else.32265:
	flw		f1, -44(x2)	# 1744
fle_cont.32264:
fle_cont.32260:
	lw		x4, -68(x2)	# 1742
	mul		x5, x30, x4	# 1742
	addi	x5, x5, 60580	# 1742
	fsw		f1, 0(x5)	# 1742
beq_cont.32230:
	lw		x4, -24(x2)	# 1862
	lw		x5, -104(x2)	# 1862
	mul		x5, x5, x4	# 1862
	lw		x6, -88(x2)	# 1862
	mul		x7, x30, x6	# 1862
	addi	x7, x7, 60544	# 1862
	lw		x7, 0(x7)	# 1862
	add		x5, x5, x7	# 1862
	lw		x7, -84(x2)	# 1862
	mul		x8, x30, x7	# 1862
	lw		x9, -80(x2)	# 1862
	add		x8, x9, x8	# 1862
	sw		x5, 0(x8)	# 1862
	lw		x5, -20(x2)	# 585
	lw		x8, 4(x5)	# 585
	mul		x10, x30, x7	# 1864
	add		x8, x8, x10	# 1864
	lw		x8, 0(x8)	# 1864
	mul		x10, x30, x6	# 275
	addi	x10, x10, 60552	# 275
	flw		f1, 0(x10)	# 275
	mul		x10, x30, x6	# 275
	add		x10, x8, x10	# 275
	fsw		f1, 0(x10)	# 275
	lw		x10, -68(x2)	# 276
	mul		x11, x30, x10	# 276
	addi	x11, x11, 60552	# 276
	flw		f1, 0(x11)	# 276
	mul		x11, x30, x10	# 276
	add		x11, x8, x11	# 276
	fsw		f1, 0(x11)	# 276
	lw		x11, -64(x2)	# 277
	mul		x12, x30, x11	# 277
	addi	x12, x12, 60552	# 277
	flw		f1, 0(x12)	# 277
	mul		x12, x30, x11	# 277
	add		x8, x8, x12	# 277
	fsw		f1, 0(x8)	# 277
	lw		x8, 12(x5)	# 600
	lw		x12, -100(x2)	# 477
	lw		x13, 28(x12)	# 477
	mul		x14, x30, x6	# 482
	add		x13, x13, x14	# 482
	flw		f1, 0(x13)	# 482
	fadd	f2, f0, f17	# 1868
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32267	# 125
	addi	x13, x0, 1	# 1871
	mul		x14, x30, x7	# 1871
	add		x8, x8, x14	# 1871
	sw		x13, 0(x8)	# 1871
	lw		x8, 16(x5)	# 607
	mul		x13, x30, x7	# 1873
	add		x13, x8, x13	# 1873
	lw		x13, 0(x13)	# 1873
	addi	x14, x0, 0	# 275
	addi	x15, x0, 0	# 275
	mul		x15, x30, x15	# 275
	addi	x15, x15, 60580	# 275
	flw		f1, 0(x15)	# 275
	mul		x14, x30, x14	# 275
	add		x14, x13, x14	# 275
	fsw		f1, 0(x14)	# 275
	addi	x14, x0, 1	# 276
	addi	x15, x0, 1	# 276
	mul		x15, x30, x15	# 276
	addi	x15, x15, 60580	# 276
	flw		f1, 0(x15)	# 276
	mul		x14, x30, x14	# 276
	add		x14, x13, x14	# 276
	fsw		f1, 0(x14)	# 276
	addi	x14, x0, 2	# 277
	mul		x15, x30, x14	# 277
	addi	x15, x15, 60580	# 277
	flw		f1, 0(x15)	# 277
	mul		x14, x30, x14	# 277
	add		x13, x13, x14	# 277
	fsw		f1, 0(x13)	# 277
	mul		x13, x30, x7	# 1874
	add		x8, x8, x13	# 1874
	lw		x8, 0(x8)	# 1874
	lui		x13, %hi(l.27250)	# 1874
	ori		x13, x0, %lo(l.27250)	# 1874
	flw		f1, 0(x13)	# 1874
	flw		f2, -96(x2)	# 1874
	fmul	f1, f1, f2	# 1874
	addi	x13, x0, 0	# 341
	addi	x14, x0, 0	# 341
	mul		x14, x30, x14	# 341
	add		x14, x8, x14	# 341
	flw		f3, 0(x14)	# 341
	fmul	f3, f3, f1	# 341
	mul		x13, x30, x13	# 341
	add		x13, x8, x13	# 341
	fsw		f3, 0(x13)	# 341
	addi	x13, x0, 1	# 342
	addi	x14, x0, 1	# 342
	mul		x14, x30, x14	# 342
	add		x14, x8, x14	# 342
	flw		f3, 0(x14)	# 342
	fmul	f3, f3, f1	# 342
	mul		x13, x30, x13	# 342
	add		x13, x8, x13	# 342
	fsw		f3, 0(x13)	# 342
	addi	x13, x0, 2	# 343
	mul		x14, x30, x13	# 343
	add		x14, x8, x14	# 343
	flw		f3, 0(x14)	# 343
	fmul	f1, f3, f1	# 343
	mul		x13, x30, x13	# 343
	add		x8, x8, x13	# 343
	fsw		f1, 0(x8)	# 343
	lw		x8, 28(x5)	# 644
	mul		x13, x30, x7	# 1876
	add		x8, x8, x13	# 1876
	lw		x8, 0(x8)	# 1876
	addi	x13, x0, 0	# 275
	addi	x14, x0, 0	# 275
	mul		x14, x30, x14	# 275
	addi	x14, x14, 60568	# 275
	flw		f1, 0(x14)	# 275
	mul		x13, x30, x13	# 275
	add		x13, x8, x13	# 275
	fsw		f1, 0(x13)	# 275
	addi	x13, x0, 1	# 276
	addi	x14, x0, 1	# 276
	mul		x14, x30, x14	# 276
	addi	x14, x14, 60568	# 276
	flw		f1, 0(x14)	# 276
	mul		x13, x30, x13	# 276
	add		x13, x8, x13	# 276
	fsw		f1, 0(x13)	# 276
	addi	x13, x0, 2	# 277
	mul		x14, x30, x13	# 277
	addi	x14, x14, 60568	# 277
	flw		f1, 0(x14)	# 277
	mul		x13, x30, x13	# 277
	add		x8, x8, x13	# 277
	fsw		f1, 0(x8)	# 277
	jal		x0, fle_cont.32266	# 125
fle_else.32267:
	addi	x13, x0, 0	# 1869
	mul		x14, x30, x7	# 1869
	add		x8, x8, x14	# 1869
	sw		x13, 0(x8)	# 1869
fle_cont.32266:
	lui		x8, %hi(l.27278)	# 1879
	ori		x8, x0, %lo(l.27278)	# 1879
	flw		f1, 0(x8)	# 1879
	mul		x8, x30, x6	# 308
	lw		x13, -72(x2)	# 308
	add		x8, x13, x8	# 308
	flw		f2, 0(x8)	# 308
	mul		x8, x30, x6	# 308
	addi	x8, x8, 60568	# 308
	flw		f3, 0(x8)	# 308
	fmul	f4, f2, f3	# 308
	mul		x8, x30, x10	# 308
	add		x8, x13, x8	# 308
	flw		f5, 0(x8)	# 308
	mul		x8, x30, x10	# 308
	addi	x8, x8, 60568	# 308
	flw		f6, 0(x8)	# 308
	fmul	f5, f5, f6	# 308
	fadd	f4, f4, f5	# 308
	mul		x8, x30, x11	# 308
	add		x8, x13, x8	# 308
	flw		f5, 0(x8)	# 308
	mul		x8, x30, x11	# 308
	addi	x8, x8, 60568	# 308
	flw		f6, 0(x8)	# 308
	fmul	f5, f5, f6	# 308
	fadd	f4, f4, f5	# 308
	fmul	f1, f1, f4	# 1879
	fmul	f3, f1, f3	# 318
	fadd	f2, f2, f3	# 318
	mul		x8, x30, x6	# 318
	add		x8, x13, x8	# 318
	fsw		f2, 0(x8)	# 318
	mul		x8, x30, x10	# 319
	add		x8, x13, x8	# 319
	flw		f2, 0(x8)	# 319
	mul		x8, x30, x10	# 319
	addi	x8, x8, 60568	# 319
	flw		f3, 0(x8)	# 319
	fmul	f3, f1, f3	# 319
	fadd	f2, f2, f3	# 319
	mul		x8, x30, x10	# 319
	add		x8, x13, x8	# 319
	fsw		f2, 0(x8)	# 319
	mul		x8, x30, x11	# 320
	add		x8, x13, x8	# 320
	flw		f2, 0(x8)	# 320
	mul		x8, x30, x11	# 320
	addi	x8, x8, 60568	# 320
	flw		f3, 0(x8)	# 320
	fmul	f1, f1, f3	# 320
	fadd	f1, f2, f1	# 320
	mul		x8, x30, x11	# 320
	add		x8, x13, x8	# 320
	fsw		f1, 0(x8)	# 320
	lw		x8, 28(x12)	# 487
	mul		x14, x30, x10	# 492
	add		x8, x8, x14	# 492
	flw		f1, 0(x8)	# 492
	flw		f2, -56(x2)	# 1883
	fmul	f1, f2, f1	# 1883
	mul		x8, x30, x6	# 1886
	addi	x8, x8, 60536	# 1886
	lw		x8, 0(x8)	# 1886
	lw		x29, -16(x2)	# 1886
	fsw		f1, -156(x2)	# 1886
	addi	x5, x8, 0
	addi	x4, x6, 0
	sw		x1, -160(x2)	# 1886
	addi	x2, x2, -164	# 1886
	lw		x31, 0(x29)	# 1886
	jalr	x1, x31, 0	# 1886
	addi	x2, x2, 164	# 1886
	lw		x1, -160(x2)	# 1886
	lw		x5, -88(x2)	# 1886
	beq		x4, x5, beq.32269	# 1886
	jal		x0, beq_cont.32268	# 1886
beq.32269:
	addi	x4, x0, 0	# 308
	mul		x4, x30, x4	# 308
	addi	x4, x4, 60568	# 308
	flw		f1, 0(x4)	# 308
	addi	x4, x0, 0	# 308
	mul		x4, x30, x4	# 308
	addi	x4, x4, 60312	# 308
	flw		f2, 0(x4)	# 308
	fmul	f1, f1, f2	# 308
	addi	x4, x0, 1	# 308
	mul		x4, x30, x4	# 308
	addi	x4, x4, 60568	# 308
	flw		f2, 0(x4)	# 308
	addi	x4, x0, 1	# 308
	mul		x4, x30, x4	# 308
	addi	x4, x4, 60312	# 308
	flw		f3, 0(x4)	# 308
	fmul	f2, f2, f3	# 308
	fadd	f1, f1, f2	# 308
	addi	x4, x0, 2	# 308
	mul		x4, x30, x4	# 308
	addi	x4, x4, 60568	# 308
	flw		f2, 0(x4)	# 308
	addi	x4, x0, 2	# 308
	mul		x4, x30, x4	# 308
	addi	x4, x4, 60312	# 308
	flw		f3, 0(x4)	# 308
	fmul	f2, f2, f3	# 308
	fadd	f1, f1, f2	# 308
	fsub	f1, f0, f1	# 123
	flw		f2, -96(x2)	# 1887
	fmul	f1, f1, f2	# 1887
	addi	x4, x0, 0	# 308
	mul		x4, x30, x4	# 308
	lw		x6, -72(x2)	# 308
	add		x4, x6, x4	# 308
	flw		f3, 0(x4)	# 308
	addi	x4, x0, 0	# 308
	mul		x4, x30, x4	# 308
	addi	x4, x4, 60312	# 308
	flw		f4, 0(x4)	# 308
	fmul	f3, f3, f4	# 308
	addi	x4, x0, 1	# 308
	mul		x4, x30, x4	# 308
	add		x4, x6, x4	# 308
	flw		f4, 0(x4)	# 308
	addi	x4, x0, 1	# 308
	mul		x4, x30, x4	# 308
	addi	x4, x4, 60312	# 308
	flw		f5, 0(x4)	# 308
	fmul	f4, f4, f5	# 308
	fadd	f3, f3, f4	# 308
	addi	x4, x0, 2	# 308
	mul		x4, x30, x4	# 308
	add		x4, x6, x4	# 308
	flw		f4, 0(x4)	# 308
	addi	x4, x0, 2	# 308
	mul		x4, x30, x4	# 308
	addi	x4, x4, 60312	# 308
	flw		f5, 0(x4)	# 308
	fmul	f4, f4, f5	# 308
	fadd	f3, f3, f4	# 308
	fsub	f3, f0, f3	# 123
	flw		f4, -60(x2)	# 121
	fle		x31, f1, f4	# 121
	beq		x31, x0, fle_else.32271	# 121
	jal		x0, fle_cont.32270	# 121
fle_else.32271:
	mul		x4, x30, x5	# 318
	addi	x4, x4, 60604	# 318
	flw		f5, 0(x4)	# 318
	mul		x4, x30, x5	# 318
	addi	x4, x4, 60580	# 318
	flw		f6, 0(x4)	# 318
	fmul	f6, f1, f6	# 318
	fadd	f5, f5, f6	# 318
	mul		x4, x30, x5	# 318
	addi	x4, x4, 60604	# 318
	fsw		f5, 0(x4)	# 318
	lw		x4, -68(x2)	# 319
	mul		x7, x30, x4	# 319
	addi	x7, x7, 60604	# 319
	flw		f5, 0(x7)	# 319
	mul		x7, x30, x4	# 319
	addi	x7, x7, 60580	# 319
	flw		f6, 0(x7)	# 319
	fmul	f6, f1, f6	# 319
	fadd	f5, f5, f6	# 319
	mul		x7, x30, x4	# 319
	addi	x7, x7, 60604	# 319
	fsw		f5, 0(x7)	# 319
	lw		x7, -64(x2)	# 320
	mul		x8, x30, x7	# 320
	addi	x8, x8, 60604	# 320
	flw		f5, 0(x8)	# 320
	mul		x8, x30, x7	# 320
	addi	x8, x8, 60580	# 320
	flw		f6, 0(x8)	# 320
	fmul	f1, f1, f6	# 320
	fadd	f1, f5, f1	# 320
	mul		x8, x30, x7	# 320
	addi	x8, x8, 60604	# 320
	fsw		f1, 0(x8)	# 320
fle_cont.32270:
	fle		x31, f3, f4	# 121
	beq		x31, x0, fle_else.32273	# 121
	jal		x0, fle_cont.32272	# 121
fle_else.32273:
	fmul	f1, f3, f3	# 127
	fmul	f1, f1, f1	# 127
	flw		f3, -156(x2)	# 1810
	fmul	f1, f1, f3	# 1810
	addi	x4, x0, 0	# 1811
	addi	x7, x0, 0	# 1811
	mul		x7, x30, x7	# 1811
	addi	x7, x7, 60604	# 1811
	flw		f4, 0(x7)	# 1811
	fadd	f4, f4, f1	# 1811
	mul		x4, x30, x4	# 1811
	addi	x4, x4, 60604	# 1811
	fsw		f4, 0(x4)	# 1811
	addi	x4, x0, 1	# 1812
	addi	x7, x0, 1	# 1812
	mul		x7, x30, x7	# 1812
	addi	x7, x7, 60604	# 1812
	flw		f4, 0(x7)	# 1812
	fadd	f4, f4, f1	# 1812
	mul		x4, x30, x4	# 1812
	addi	x4, x4, 60604	# 1812
	fsw		f4, 0(x4)	# 1812
	addi	x4, x0, 2	# 1813
	mul		x7, x30, x4	# 1813
	addi	x7, x7, 60604	# 1813
	flw		f4, 0(x7)	# 1813
	fadd	f1, f4, f1	# 1813
	mul		x4, x30, x4	# 1813
	addi	x4, x4, 60604	# 1813
	fsw		f1, 0(x4)	# 1813
fle_cont.32272:
beq_cont.32268:
	mul		x4, x30, x5	# 275
	addi	x4, x4, 60552	# 275
	flw		f1, 0(x4)	# 275
	mul		x4, x30, x5	# 275
	addi	x4, x4, 60648	# 275
	fsw		f1, 0(x4)	# 275
	lw		x4, -68(x2)	# 276
	mul		x6, x30, x4	# 276
	addi	x6, x6, 60552	# 276
	flw		f1, 0(x6)	# 276
	mul		x6, x30, x4	# 276
	addi	x6, x6, 60648	# 276
	fsw		f1, 0(x6)	# 276
	lw		x6, -64(x2)	# 277
	mul		x7, x30, x6	# 277
	addi	x7, x7, 60552	# 277
	flw		f1, 0(x7)	# 277
	mul		x7, x30, x6	# 277
	addi	x7, x7, 60648	# 277
	fsw		f1, 0(x7)	# 277
	mul		x7, x30, x5	# 1331
	addi	x7, x7, 60000	# 1331
	lw		x7, 0(x7)	# 1331
	sub		x7, x7, x4	# 1331
	addi	x8, x0, 60552	# 1331
	lw		x29, -12(x2)	# 1331
	addi	x5, x7, 0
	addi	x4, x8, 0
	sw		x1, -160(x2)	# 1331
	addi	x2, x2, -164	# 1331
	lw		x31, 0(x29)	# 1331
	jalr	x1, x31, 0	# 1331
	addi	x2, x2, 164	# 1331
	lw		x1, -160(x2)	# 1331
	lw		x4, -88(x2)	# 1894
	mul		x5, x30, x4	# 1894
	addi	x5, x5, 61736	# 1894
	lw		x5, 0(x5)	# 1894
	lw		x6, -68(x2)	# 1894
	sub		x5, x5, x6	# 1894
	flw		f1, -96(x2)	# 1894
	flw		f2, -156(x2)	# 1894
	lw		x7, -72(x2)	# 1894
	lw		x29, -8(x2)	# 1894
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -160(x2)	# 1894
	addi	x2, x2, -164	# 1894
	lw		x31, 0(x29)	# 1894
	jalr	x1, x31, 0	# 1894
	addi	x2, x2, 164	# 1894
	lw		x1, -160(x2)	# 1894
	lui		x4, %hi(l.27380)	# 1897
	ori		x4, x0, %lo(l.27380)	# 1897
	flw		f1, 0(x4)	# 1897
	flw		f2, -56(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32274	# 125
	jalr	x0, x1, 0	# 1908
fle_else.32274:
	lw		x4, -84(x2)	# 1899
	lw		x5, -24(x2)	# 1899
	ble		x5, x4, ble_cont.32276	# 1899
	addi	x5, x4, 1	# 1900
	addi	x6, x0, -1	# 1900
	mul		x5, x30, x5	# 1900
	lw		x7, -80(x2)	# 1900
	add		x5, x7, x5	# 1900
	sw		x6, 0(x5)	# 1900
ble_cont.32276:
	lw		x5, -64(x2)	# 1903
	lw		x6, -92(x2)	# 1903
	beq		x6, x5, beq.32277	# 1903
	jalr	x0, x1, 0	# 1906
beq.32277:
	fadd	f1, f0, f16	# 1904
	lw		x5, -100(x2)	# 477
	lw		x5, 28(x5)	# 477
	lw		x6, -88(x2)	# 482
	mul		x7, x30, x6	# 482
	add		x5, x5, x7	# 482
	flw		f3, 0(x5)	# 482
	fsub	f1, f1, f3	# 1904
	fmul	f1, f2, f1	# 1904
	lw		x5, -68(x2)	# 1905
	add		x4, x4, x5	# 1905
	mul		x5, x30, x6	# 1905
	addi	x5, x5, 60548	# 1905
	flw		f2, 0(x5)	# 1905
	flw		f3, -4(x2)	# 1905
	fadd	f2, f3, f2	# 1905
	lw		x5, -72(x2)	# 1905
	lw		x6, -20(x2)	# 1905
	lw		x29, 0(x2)	# 1905
	lw		x31, 0(x29)	# 1905
	jalr	x0, x31, 0	# 1905
beq.32215:
	lw		x5, -84(x2)	# 1913
	mul		x6, x30, x5	# 1913
	lw		x7, -80(x2)	# 1913
	add		x6, x7, x6	# 1913
	lw		x7, -76(x2)	# 1913
	sw		x7, 0(x6)	# 1913
	beq		x5, x4, beq.32279	# 1915
	mul		x5, x30, x4	# 308
	lw		x6, -72(x2)	# 308
	add		x5, x6, x5	# 308
	flw		f1, 0(x5)	# 308
	mul		x5, x30, x4	# 308
	addi	x5, x5, 60312	# 308
	flw		f2, 0(x5)	# 308
	fmul	f1, f1, f2	# 308
	lw		x5, -68(x2)	# 308
	mul		x7, x30, x5	# 308
	add		x7, x6, x7	# 308
	flw		f2, 0(x7)	# 308
	mul		x7, x30, x5	# 308
	addi	x7, x7, 60312	# 308
	flw		f3, 0(x7)	# 308
	fmul	f2, f2, f3	# 308
	fadd	f1, f1, f2	# 308
	lw		x7, -64(x2)	# 308
	mul		x8, x30, x7	# 308
	add		x6, x6, x8	# 308
	flw		f2, 0(x6)	# 308
	mul		x6, x30, x7	# 308
	addi	x6, x6, 60312	# 308
	flw		f3, 0(x6)	# 308
	fmul	f2, f2, f3	# 308
	fadd	f1, f1, f2	# 308
	fsub	f1, f0, f1	# 123
	flw		f2, -60(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.32280	# 121
	jalr	x0, x1, 0	# 1926
fle_else.32280:
	fmul	f2, f1, f1	# 127
	fmul	f1, f2, f1	# 1921
	flw		f2, -56(x2)	# 1921
	fmul	f1, f1, f2	# 1921
	mul		x6, x30, x4	# 1921
	addi	x6, x6, 60324	# 1921
	flw		f2, 0(x6)	# 1921
	fmul	f1, f1, f2	# 1921
	mul		x6, x30, x4	# 1922
	addi	x6, x6, 60604	# 1922
	flw		f2, 0(x6)	# 1922
	fadd	f2, f2, f1	# 1922
	mul		x4, x30, x4	# 1922
	addi	x4, x4, 60604	# 1922
	fsw		f2, 0(x4)	# 1922
	mul		x4, x30, x5	# 1923
	addi	x4, x4, 60604	# 1923
	flw		f2, 0(x4)	# 1923
	fadd	f2, f2, f1	# 1923
	mul		x4, x30, x5	# 1923
	addi	x4, x4, 60604	# 1923
	fsw		f2, 0(x4)	# 1923
	mul		x4, x30, x7	# 1924
	addi	x4, x4, 60604	# 1924
	flw		f2, 0(x4)	# 1924
	fadd	f1, f2, f1	# 1924
	mul		x4, x30, x7	# 1924
	addi	x4, x4, 60604	# 1924
	fsw		f1, 0(x4)	# 1924
	jalr	x0, x1, 0	# 1924
beq.32279:
	jalr	x0, x1, 0	# 1927
iter_trace_diffuse_rays.2904.17814:
	lw		x8, 56(x29)	# 1960
	lw		x9, 52(x29)	# 1960
	lw		x10, 48(x29)	# 1960
	lw		x11, 44(x29)	# 1960
	lw		x12, 40(x29)	# 1960
	lw		x13, 36(x29)	# 1960
	lw		x14, 32(x29)	# 1960
	lw		x15, 28(x29)	# 1960
	lw		x16, 24(x29)	# 1960
	lw		x17, 20(x29)	# 1960
	lw		x18, 16(x29)	# 1960
	flw		f1, 12(x29)	# 1960
	flw		f2, 8(x29)	# 1960
	flw		f3, 4(x29)	# 1960
	ble		x17, x7, ble.32284	# 1960
	jalr	x0, x1, 0	# 1971
ble.32284:
	mul		x19, x30, x7	# 1961
	add		x19, x4, x19	# 1961
	lw		x19, 0(x19)	# 1961
	lw		x19, 0(x19)	# 655
	mul		x20, x30, x17	# 308
	add		x20, x19, x20	# 308
	flw		f4, 0(x20)	# 308
	mul		x20, x30, x17	# 308
	add		x20, x5, x20	# 308
	flw		f5, 0(x20)	# 308
	fmul	f4, f4, f5	# 308
	mul		x20, x30, x18	# 308
	add		x20, x19, x20	# 308
	flw		f5, 0(x20)	# 308
	mul		x20, x30, x18	# 308
	add		x20, x5, x20	# 308
	flw		f6, 0(x20)	# 308
	fmul	f5, f5, f6	# 308
	fadd	f4, f4, f5	# 308
	mul		x20, x30, x15	# 308
	add		x19, x19, x20	# 308
	flw		f5, 0(x19)	# 308
	mul		x19, x30, x15	# 308
	add		x19, x5, x19	# 308
	flw		f6, 0(x19)	# 308
	fmul	f5, f5, f6	# 308
	fadd	f4, f4, f5	# 308
	sw		x6, 0(x2)	# 122
	sw		x5, -4(x2)	# 122
	sw		x4, -8(x2)	# 122
	sw		x29, -12(x2)	# 122
	sw		x15, -16(x2)	# 122
	sw		x7, -20(x2)	# 122
	fle		x31, f3, f4	# 122
	beq		x31, x0, fle_else.32287	# 122
	mul		x19, x30, x7	# 1968
	add		x19, x4, x19	# 1968
	lw		x19, 0(x19)	# 1968
	lui		x20, %hi(l.27654)	# 1968
	ori		x20, x0, %lo(l.27654)	# 1968
	flw		f5, 0(x20)	# 1968
	fdiv	f4, f4, f5	# 1968
	mul		x20, x30, x17	# 1650
	addi	x20, x20, 60548	# 1650
	fsw		f1, 0(x20)	# 1650
	mul		x20, x30, x17	# 1651
	addi	x20, x20, 60536	# 1651
	lw		x20, 0(x20)	# 1651
	fsw		f4, -24(x2)	# 1651
	sw		x10, -28(x2)	# 1651
	sw		x14, -32(x2)	# 1651
	sw		x13, -36(x2)	# 1651
	sw		x16, -40(x2)	# 1651
	sw		x9, -44(x2)	# 1651
	fsw		f2, -48(x2)	# 1651
	sw		x12, -52(x2)	# 1651
	sw		x11, -56(x2)	# 1651
	fsw		f3, -60(x2)	# 1651
	sw		x18, -64(x2)	# 1651
	sw		x19, -68(x2)	# 1651
	sw		x17, -72(x2)	# 1651
	addi	x6, x19, 0
	addi	x5, x20, 0
	addi	x4, x17, 0
	addi	x29, x8, 0
	sw		x1, -76(x2)	# 1651
	addi	x2, x2, -80	# 1651
	lw		x31, 0(x29)	# 1651
	jalr	x1, x31, 0	# 1651
	addi	x2, x2, 80	# 1651
	lw		x1, -76(x2)	# 1651
	lw		x4, -72(x2)	# 1652
	mul		x5, x30, x4	# 1652
	addi	x5, x5, 60548	# 1652
	flw		f1, 0(x5)	# 1652
	fadd	f2, f0, f23	# 1654
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32289	# 125
	addi	x5, x0, 0	# 1656
	jal		x0, fle_cont.32288	# 125
fle_else.32289:
	fadd	f2, f0, f25	# 1655
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32291	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32290	# 125
fle_else.32291:
	addi	x5, x0, 1	# 125
fle_cont.32290:
fle_cont.32288:
	addi	x6, x0, 0	# 1943
	beq		x5, x6, beq_cont.32292	# 1943
	mul		x5, x30, x6	# 1944
	addi	x5, x5, 60564	# 1944
	lw		x5, 0(x5)	# 1944
	mul		x5, x30, x5	# 1944
	addi	x5, x5, 60048	# 1944
	lw		x5, 0(x5)	# 1944
	lw		x7, -68(x2)	# 655
	lw		x7, 0(x7)	# 655
	lw		x8, 4(x5)	# 369
	lw		x9, -64(x2)	# 1709
	beq		x8, x9, beq.32294	# 1709
	lw		x7, -16(x2)	# 1711
	beq		x8, x7, beq.32296	# 1711
	mul		x8, x30, x4	# 1686
	addi	x8, x8, 60552	# 1686
	flw		f1, 0(x8)	# 1686
	lw		x8, 20(x5)	# 447
	mul		x10, x30, x4	# 452
	add		x8, x8, x10	# 452
	flw		f2, 0(x8)	# 452
	fsub	f1, f1, f2	# 1686
	mul		x8, x30, x9	# 1687
	addi	x8, x8, 60552	# 1687
	flw		f2, 0(x8)	# 1687
	lw		x8, 20(x5)	# 457
	mul		x10, x30, x9	# 462
	add		x8, x8, x10	# 462
	flw		f3, 0(x8)	# 462
	fsub	f2, f2, f3	# 1687
	mul		x8, x30, x7	# 1688
	addi	x8, x8, 60552	# 1688
	flw		f3, 0(x8)	# 1688
	lw		x8, 20(x5)	# 467
	mul		x10, x30, x7	# 472
	add		x8, x8, x10	# 472
	flw		f4, 0(x8)	# 472
	fsub	f3, f3, f4	# 1688
	lw		x8, 16(x5)	# 407
	mul		x10, x30, x4	# 412
	add		x8, x8, x10	# 412
	flw		f4, 0(x8)	# 412
	fmul	f4, f1, f4	# 1690
	lw		x8, 16(x5)	# 417
	mul		x10, x30, x9	# 422
	add		x8, x8, x10	# 422
	flw		f5, 0(x8)	# 422
	fmul	f5, f2, f5	# 1691
	lw		x8, 16(x5)	# 427
	mul		x10, x30, x7	# 432
	add		x8, x8, x10	# 432
	flw		f6, 0(x8)	# 432
	fmul	f6, f3, f6	# 1692
	lw		x8, 12(x5)	# 398
	beq		x8, x4, beq.32298	# 1694
	addi	x8, x0, 0	# 1699
	lw		x10, 36(x5)	# 547
	mul		x11, x30, x7	# 552
	add		x10, x10, x11	# 552
	flw		f7, 0(x10)	# 552
	fmul	f7, f2, f7	# 1699
	lw		x10, 36(x5)	# 537
	mul		x11, x30, x9	# 542
	add		x10, x10, x11	# 542
	flw		f8, 0(x10)	# 542
	fmul	f8, f3, f8	# 1699
	fadd	f7, f7, f8	# 1699
	fadd	f8, f0, f17	# 126
	fmul	f7, f7, f8	# 126
	fadd	f4, f4, f7	# 1699
	mul		x8, x30, x8	# 1699
	addi	x8, x8, 60568	# 1699
	fsw		f4, 0(x8)	# 1699
	addi	x8, x0, 1	# 1700
	lw		x10, 36(x5)	# 547
	mul		x11, x30, x7	# 552
	add		x10, x10, x11	# 552
	flw		f4, 0(x10)	# 552
	fmul	f4, f1, f4	# 1700
	lw		x10, 36(x5)	# 527
	mul		x11, x30, x4	# 532
	add		x10, x10, x11	# 532
	flw		f7, 0(x10)	# 532
	fmul	f3, f3, f7	# 1700
	fadd	f3, f4, f3	# 1700
	fadd	f4, f0, f17	# 126
	fmul	f3, f3, f4	# 126
	fadd	f3, f5, f3	# 1700
	mul		x8, x30, x8	# 1700
	addi	x8, x8, 60568	# 1700
	fsw		f3, 0(x8)	# 1700
	addi	x8, x0, 2	# 1701
	lw		x10, 36(x5)	# 537
	mul		x11, x30, x9	# 542
	add		x10, x10, x11	# 542
	flw		f3, 0(x10)	# 542
	fmul	f1, f1, f3	# 1701
	lw		x10, 36(x5)	# 527
	mul		x11, x30, x4	# 532
	add		x10, x10, x11	# 532
	flw		f3, 0(x10)	# 532
	fmul	f2, f2, f3	# 1701
	fadd	f1, f1, f2	# 1701
	fadd	f2, f0, f17	# 126
	fmul	f1, f1, f2	# 126
	fadd	f1, f6, f1	# 1701
	mul		x8, x30, x8	# 1701
	addi	x8, x8, 60568	# 1701
	fsw		f1, 0(x8)	# 1701
	jal		x0, beq_cont.32297	# 1694
beq.32298:
	addi	x8, x0, 0	# 1695
	mul		x8, x30, x8	# 1695
	addi	x8, x8, 60568	# 1695
	fsw		f4, 0(x8)	# 1695
	addi	x8, x0, 1	# 1696
	mul		x8, x30, x8	# 1696
	addi	x8, x8, 60568	# 1696
	fsw		f5, 0(x8)	# 1696
	addi	x8, x0, 2	# 1697
	mul		x8, x30, x8	# 1697
	addi	x8, x8, 60568	# 1697
	fsw		f6, 0(x8)	# 1697
beq_cont.32297:
	lw		x8, 24(x5)	# 389
	mul		x10, x30, x4	# 299
	addi	x10, x10, 60568	# 299
	flw		f1, 0(x10)	# 299
	fmul	f1, f1, f1	# 127
	mul		x10, x30, x9	# 299
	addi	x10, x10, 60568	# 299
	flw		f2, 0(x10)	# 299
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 299
	mul		x10, x30, x7	# 299
	addi	x10, x10, 60568	# 299
	flw		f2, 0(x10)	# 299
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 299
	fsqrt	f1, f1	# 299
	flw		f2, -60(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.32300	# 120
	fadd	f1, f0, f16	# 300
	jal		x0, feq_cont.32299	# 120
feq_else.32300:
	beq		x8, x4, beq.32302	# 300
	fadd	f3, f0, f18	# 300
	fdiv	f1, f3, f1	# 300
	jal		x0, beq_cont.32301	# 300
beq.32302:
	fadd	f3, f0, f16	# 300
	fdiv	f1, f3, f1	# 300
beq_cont.32301:
feq_cont.32299:
	mul		x8, x30, x4	# 301
	addi	x8, x8, 60568	# 301
	flw		f3, 0(x8)	# 301
	fmul	f3, f3, f1	# 301
	mul		x8, x30, x4	# 301
	addi	x8, x8, 60568	# 301
	fsw		f3, 0(x8)	# 301
	mul		x8, x30, x9	# 302
	addi	x8, x8, 60568	# 302
	flw		f3, 0(x8)	# 302
	fmul	f3, f3, f1	# 302
	mul		x8, x30, x9	# 302
	addi	x8, x8, 60568	# 302
	fsw		f3, 0(x8)	# 302
	mul		x8, x30, x7	# 303
	addi	x8, x8, 60568	# 303
	flw		f3, 0(x8)	# 303
	fmul	f1, f3, f1	# 303
	mul		x8, x30, x7	# 303
	addi	x8, x8, 60568	# 303
	fsw		f1, 0(x8)	# 303
	jal		x0, beq_cont.32295	# 1711
beq.32296:
	lw		x8, 16(x5)	# 407
	mul		x10, x30, x4	# 412
	add		x8, x8, x10	# 412
	flw		f1, 0(x8)	# 412
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x4	# 1679
	addi	x8, x8, 60568	# 1679
	fsw		f1, 0(x8)	# 1679
	lw		x8, 16(x5)	# 417
	mul		x10, x30, x9	# 422
	add		x8, x8, x10	# 422
	flw		f1, 0(x8)	# 422
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x9	# 1680
	addi	x8, x8, 60568	# 1680
	fsw		f1, 0(x8)	# 1680
	lw		x8, 16(x5)	# 427
	mul		x10, x30, x7	# 432
	add		x8, x8, x10	# 432
	flw		f1, 0(x8)	# 432
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x7	# 1681
	addi	x8, x8, 60568	# 1681
	fsw		f1, 0(x8)	# 1681
beq_cont.32295:
	jal		x0, beq_cont.32293	# 1709
beq.32294:
	mul		x8, x30, x4	# 1670
	addi	x8, x8, 60544	# 1670
	lw		x8, 0(x8)	# 1670
	mul		x10, x30, x4	# 263
	addi	x10, x10, 60568	# 263
	flw		f1, -60(x2)	# 263
	fsw		f1, 0(x10)	# 263
	mul		x10, x30, x9	# 264
	addi	x10, x10, 60568	# 264
	fsw		f1, 0(x10)	# 264
	lw		x10, -16(x2)	# 265
	mul		x11, x30, x10	# 265
	addi	x11, x11, 60568	# 265
	fsw		f1, 0(x11)	# 265
	sub		x11, x8, x9	# 1673
	sub		x8, x8, x9	# 1673
	mul		x8, x30, x8	# 1673
	add		x7, x7, x8	# 1673
	flw		f2, 0(x7)	# 1673
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.32304	# 120
	fadd	f2, f0, f1	# 228
	jal		x0, feq_cont.32303	# 120
feq_else.32304:
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.32306	# 121
	fadd	f2, f0, f18	# 230
	jal		x0, fle_cont.32305	# 121
fle_else.32306:
	fadd	f2, f0, f16	# 229
fle_cont.32305:
feq_cont.32303:
	fsub	f2, f0, f2	# 123
	mul		x7, x30, x11	# 1673
	addi	x7, x7, 60568	# 1673
	fsw		f2, 0(x7)	# 1673
beq_cont.32293:
	lw		x7, 0(x5)	# 359
	lw		x8, 32(x5)	# 497
	mul		x10, x30, x4	# 502
	add		x8, x8, x10	# 502
	flw		f1, 0(x8)	# 502
	mul		x8, x30, x4	# 1726
	addi	x8, x8, 60580	# 1726
	fsw		f1, 0(x8)	# 1726
	lw		x8, 32(x5)	# 507
	mul		x10, x30, x9	# 512
	add		x8, x8, x10	# 512
	flw		f1, 0(x8)	# 512
	mul		x8, x30, x9	# 1727
	addi	x8, x8, 60580	# 1727
	fsw		f1, 0(x8)	# 1727
	lw		x8, 32(x5)	# 517
	lw		x10, -16(x2)	# 522
	mul		x11, x30, x10	# 522
	add		x8, x8, x11	# 522
	flw		f1, 0(x8)	# 522
	mul		x8, x30, x10	# 1728
	addi	x8, x8, 60580	# 1728
	fsw		f1, 0(x8)	# 1728
	sw		x5, -76(x2)	# 1729
	sw		x6, -80(x2)	# 1729
	beq		x7, x9, beq.32308	# 1729
	beq		x7, x10, beq.32310	# 1747
	lw		x8, -40(x2)	# 1754
	beq		x7, x8, beq.32312	# 1754
	addi	x8, x0, 4	# 1765
	beq		x7, x8, beq.32314	# 1765
	jal		x0, beq_cont.32313	# 1765
beq.32314:
	mul		x7, x30, x4	# 1767
	addi	x7, x7, 60552	# 1767
	flw		f1, 0(x7)	# 1767
	lw		x7, 20(x5)	# 447
	mul		x8, x30, x4	# 452
	add		x7, x7, x8	# 452
	flw		f2, 0(x7)	# 452
	fsub	f1, f1, f2	# 1767
	lw		x7, 16(x5)	# 407
	mul		x8, x30, x4	# 412
	add		x7, x7, x8	# 412
	flw		f2, 0(x7)	# 412
	fsqrt	f2, f2	# 1767
	fmul	f1, f1, f2	# 1767
	mul		x7, x30, x10	# 1768
	addi	x7, x7, 60552	# 1768
	flw		f2, 0(x7)	# 1768
	lw		x7, 20(x5)	# 467
	mul		x8, x30, x10	# 472
	add		x7, x7, x8	# 472
	flw		f3, 0(x7)	# 472
	fsub	f2, f2, f3	# 1768
	lw		x7, 16(x5)	# 427
	mul		x8, x30, x10	# 432
	add		x7, x7, x8	# 432
	flw		f3, 0(x7)	# 432
	fsqrt	f3, f3	# 1768
	fmul	f2, f2, f3	# 1768
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1769
	flw		f4, -60(x2)	# 124
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_else.32316	# 124
	fsub	f5, f0, f1	# 124
	jal		x0, fle_cont.32315	# 124
fle_else.32316:
	fadd	f5, f0, f1	# 124
fle_cont.32315:
	lui		x7, %hi(l.27145)	# 1771
	ori		x7, x0, %lo(l.27145)	# 1771
	flw		f6, 0(x7)	# 1771
	fsw		f6, -84(x2)	# 125
	fsw		f3, -88(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32318	# 125
	fdiv	f1, f2, f1	# 1774
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_cont.32319	# 124
	fsub	f1, f0, f1	# 124
fle_cont.32319:
	lw		x29, -32(x2)	# 1776
	sw		x1, -92(x2)	# 1776
	addi	x2, x2, -96	# 1776
	lw		x31, 0(x29)	# 1776
	jalr	x1, x31, 0	# 1776
	addi	x2, x2, 96	# 1776
	lw		x1, -92(x2)	# 1776
	fadd	f2, f0, f21	# 1776
	fmul	f1, f1, f2	# 1776
	fadd	f2, f0, f19	# 1776
	fdiv	f1, f1, f2	# 1776
	jal		x0, fle_cont.32317	# 125
fle_else.32318:
	fadd	f1, f0, f20	# 1772
fle_cont.32317:
	flw		f2, -60(x2)	# 153
	fsw		f1, -92(x2)	# 153
	fle		x31, f2, f1	# 153
	beq		x31, x0, fle_else.32321	# 153
	lw		x29, -56(x2)	# 153
	sw		x1, -96(x2)	# 153
	addi	x2, x2, -100	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 100	# 153
	lw		x1, -96(x2)	# 153
	lw		x29, -52(x2)	# 153
	sw		x1, -96(x2)	# 153
	addi	x2, x2, -100	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 100	# 153
	lw		x1, -96(x2)	# 153
	jal		x0, fle_cont.32320	# 153
fle_else.32321:
	lw		x29, -56(x2)	# 154
	sw		x1, -96(x2)	# 154
	addi	x2, x2, -100	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 100	# 154
	lw		x1, -96(x2)	# 154
	lw		x5, -64(x2)	# 154
	sub		x4, x4, x5	# 154
	lw		x29, -52(x2)	# 154
	sw		x1, -96(x2)	# 154
	addi	x2, x2, -100	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 100	# 154
	lw		x1, -96(x2)	# 154
fle_cont.32320:
	flw		f2, -92(x2)	# 1778
	fsub	f1, f2, f1	# 1778
	lw		x4, -64(x2)	# 1780
	mul		x5, x30, x4	# 1780
	addi	x5, x5, 60552	# 1780
	flw		f2, 0(x5)	# 1780
	lw		x5, -76(x2)	# 457
	lw		x6, 20(x5)	# 457
	mul		x7, x30, x4	# 462
	add		x6, x6, x7	# 462
	flw		f3, 0(x6)	# 462
	fsub	f2, f2, f3	# 1780
	lw		x6, 16(x5)	# 417
	mul		x7, x30, x4	# 422
	add		x6, x6, x7	# 422
	flw		f3, 0(x6)	# 422
	fsqrt	f3, f3	# 1780
	fmul	f2, f2, f3	# 1780
	flw		f3, -60(x2)	# 124
	flw		f4, -88(x2)	# 124
	fle		x31, f4, f3	# 124
	beq		x31, x0, fle_else.32323	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.32322	# 124
fle_else.32323:
	fadd	f5, f0, f4	# 124
fle_cont.32322:
	flw		f6, -84(x2)	# 125
	fsw		f1, -96(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32325	# 125
	fdiv	f2, f2, f4	# 1785
	fle		x31, f2, f3	# 124
	beq		x31, x0, fle_cont.32326	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32326:
	lw		x29, -32(x2)	# 1786
	fadd	f1, f0, f2
	sw		x1, -100(x2)	# 1786
	addi	x2, x2, -104	# 1786
	lw		x31, 0(x29)	# 1786
	jalr	x1, x31, 0	# 1786
	addi	x2, x2, 104	# 1786
	lw		x1, -100(x2)	# 1786
	fadd	f2, f0, f21	# 1786
	fmul	f1, f1, f2	# 1786
	fadd	f2, f0, f19	# 1786
	fdiv	f1, f1, f2	# 1786
	jal		x0, fle_cont.32324	# 125
fle_else.32325:
	fadd	f1, f0, f20	# 1783
fle_cont.32324:
	flw		f2, -60(x2)	# 153
	fsw		f1, -100(x2)	# 153
	fle		x31, f2, f1	# 153
	beq		x31, x0, fle_else.32328	# 153
	lw		x29, -56(x2)	# 153
	sw		x1, -104(x2)	# 153
	addi	x2, x2, -108	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 108	# 153
	lw		x1, -104(x2)	# 153
	lw		x29, -52(x2)	# 153
	sw		x1, -104(x2)	# 153
	addi	x2, x2, -108	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 108	# 153
	lw		x1, -104(x2)	# 153
	jal		x0, fle_cont.32327	# 153
fle_else.32328:
	lw		x29, -56(x2)	# 154
	sw		x1, -104(x2)	# 154
	addi	x2, x2, -108	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 108	# 154
	lw		x1, -104(x2)	# 154
	lw		x5, -64(x2)	# 154
	sub		x4, x4, x5	# 154
	lw		x29, -52(x2)	# 154
	sw		x1, -104(x2)	# 154
	addi	x2, x2, -108	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 108	# 154
	lw		x1, -104(x2)	# 154
fle_cont.32327:
	flw		f2, -100(x2)	# 1788
	fsub	f1, f2, f1	# 1788
	lui		x4, %hi(l.27162)	# 1789
	ori		x4, x0, %lo(l.27162)	# 1789
	flw		f2, 0(x4)	# 1789
	fadd	f3, f0, f17	# 1789
	flw		f4, -96(x2)	# 1789
	fsub	f4, f3, f4	# 1789
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1789
	fsub	f1, f3, f1	# 1789
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1789
	flw		f2, -60(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.32330	# 122
	jal		x0, fle_cont.32329	# 122
fle_else.32330:
	fadd	f1, f0, f2	# 1790
fle_cont.32329:
	flw		f3, -48(x2)	# 1791
	fmul	f1, f3, f1	# 1791
	fadd	f3, f0, f27	# 1791
	fdiv	f1, f1, f3	# 1791
	lw		x4, -16(x2)	# 1791
	mul		x5, x30, x4	# 1791
	addi	x5, x5, 60580	# 1791
	fsw		f1, 0(x5)	# 1791
beq_cont.32313:
	jal		x0, beq_cont.32311	# 1754
beq.32312:
	mul		x7, x30, x4	# 1757
	addi	x7, x7, 60552	# 1757
	flw		f1, 0(x7)	# 1757
	lw		x7, 20(x5)	# 447
	mul		x8, x30, x4	# 452
	add		x7, x7, x8	# 452
	flw		f2, 0(x7)	# 452
	fsub	f1, f1, f2	# 1757
	mul		x7, x30, x10	# 1758
	addi	x7, x7, 60552	# 1758
	flw		f2, 0(x7)	# 1758
	lw		x7, 20(x5)	# 467
	mul		x8, x30, x10	# 472
	add		x7, x7, x8	# 472
	flw		f3, 0(x7)	# 472
	fsub	f2, f2, f3	# 1758
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1759
	fsqrt	f1, f1	# 1759
	fadd	f2, f0, f22	# 1759
	fdiv	f1, f1, f2	# 1759
	flw		f2, -60(x2)	# 153
	fsw		f1, -104(x2)	# 153
	fle		x31, f2, f1	# 153
	beq		x31, x0, fle_else.32332	# 153
	lw		x29, -56(x2)	# 153
	sw		x1, -108(x2)	# 153
	addi	x2, x2, -112	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 112	# 153
	lw		x1, -108(x2)	# 153
	lw		x29, -52(x2)	# 153
	sw		x1, -108(x2)	# 153
	addi	x2, x2, -112	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 112	# 153
	lw		x1, -108(x2)	# 153
	jal		x0, fle_cont.32331	# 153
fle_else.32332:
	lw		x29, -56(x2)	# 154
	sw		x1, -108(x2)	# 154
	addi	x2, x2, -112	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 112	# 154
	lw		x1, -108(x2)	# 154
	lw		x5, -64(x2)	# 154
	sub		x4, x4, x5	# 154
	lw		x29, -52(x2)	# 154
	sw		x1, -108(x2)	# 154
	addi	x2, x2, -112	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 112	# 154
	lw		x1, -108(x2)	# 154
fle_cont.32331:
	flw		f2, -104(x2)	# 1760
	fsub	f1, f2, f1	# 1760
	fadd	f2, f0, f19	# 1760
	fmul	f1, f1, f2	# 1760
	lw		x29, -36(x2)	# 1761
	sw		x1, -108(x2)	# 1761
	addi	x2, x2, -112	# 1761
	lw		x31, 0(x29)	# 1761
	jalr	x1, x31, 0	# 1761
	addi	x2, x2, 112	# 1761
	lw		x1, -108(x2)	# 1761
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1762
	fmul	f3, f1, f2	# 1762
	lw		x4, -64(x2)	# 1762
	mul		x5, x30, x4	# 1762
	addi	x5, x5, 60580	# 1762
	fsw		f3, 0(x5)	# 1762
	fadd	f3, f0, f16	# 1763
	fsub	f1, f3, f1	# 1763
	fmul	f1, f1, f2	# 1763
	lw		x5, -16(x2)	# 1763
	mul		x6, x30, x5	# 1763
	addi	x6, x6, 60580	# 1763
	fsw		f1, 0(x6)	# 1763
beq_cont.32311:
	jal		x0, beq_cont.32309	# 1747
beq.32310:
	mul		x7, x30, x9	# 1750
	addi	x7, x7, 60552	# 1750
	flw		f1, 0(x7)	# 1750
	fadd	f2, f0, f26	# 1750
	fmul	f1, f1, f2	# 1750
	lw		x29, -44(x2)	# 1750
	sw		x1, -108(x2)	# 1750
	addi	x2, x2, -112	# 1750
	lw		x31, 0(x29)	# 1750
	jalr	x1, x31, 0	# 1750
	addi	x2, x2, 112	# 1750
	lw		x1, -108(x2)	# 1750
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1751
	fmul	f3, f2, f1	# 1751
	lw		x4, -72(x2)	# 1751
	mul		x5, x30, x4	# 1751
	addi	x5, x5, 60580	# 1751
	fsw		f3, 0(x5)	# 1751
	fadd	f3, f0, f16	# 1752
	fsub	f1, f3, f1	# 1752
	fmul	f1, f2, f1	# 1752
	lw		x5, -64(x2)	# 1752
	mul		x6, x30, x5	# 1752
	addi	x6, x6, 60580	# 1752
	fsw		f1, 0(x6)	# 1752
beq_cont.32309:
	jal		x0, beq_cont.32307	# 1729
beq.32308:
	mul		x7, x30, x4	# 1732
	addi	x7, x7, 60552	# 1732
	flw		f1, 0(x7)	# 1732
	lw		x7, 20(x5)	# 447
	mul		x8, x30, x4	# 452
	add		x7, x7, x8	# 452
	flw		f2, 0(x7)	# 452
	fsub	f1, f1, f2	# 1732
	fadd	f2, f0, f28	# 1734
	fmul	f3, f1, f2	# 1734
	flw		f4, -60(x2)	# 153
	fsw		f2, -108(x2)	# 153
	fsw		f1, -112(x2)	# 153
	fle		x31, f4, f3	# 153
	beq		x31, x0, fle_else.32334	# 153
	lw		x29, -56(x2)	# 153
	fadd	f1, f0, f3
	sw		x1, -116(x2)	# 153
	addi	x2, x2, -120	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 120	# 153
	lw		x1, -116(x2)	# 153
	lw		x29, -52(x2)	# 153
	sw		x1, -116(x2)	# 153
	addi	x2, x2, -120	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 120	# 153
	lw		x1, -116(x2)	# 153
	jal		x0, fle_cont.32333	# 153
fle_else.32334:
	lw		x29, -56(x2)	# 154
	fadd	f1, f0, f3
	sw		x1, -116(x2)	# 154
	addi	x2, x2, -120	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 120	# 154
	lw		x1, -116(x2)	# 154
	lw		x5, -64(x2)	# 154
	sub		x4, x4, x5	# 154
	lw		x29, -52(x2)	# 154
	sw		x1, -116(x2)	# 154
	addi	x2, x2, -120	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 120	# 154
	lw		x1, -116(x2)	# 154
fle_cont.32333:
	fadd	f2, f0, f29	# 1734
	fmul	f1, f1, f2	# 1734
	flw		f3, -112(x2)	# 1735
	fsub	f1, f3, f1	# 1735
	fadd	f3, f0, f22	# 1735
	lw		x4, -16(x2)	# 1737
	mul		x5, x30, x4	# 1737
	addi	x5, x5, 60552	# 1737
	flw		f4, 0(x5)	# 1737
	lw		x5, -76(x2)	# 467
	lw		x6, 20(x5)	# 467
	mul		x7, x30, x4	# 472
	add		x6, x6, x7	# 472
	flw		f5, 0(x6)	# 472
	fsub	f4, f4, f5	# 1737
	flw		f5, -108(x2)	# 1739
	fmul	f5, f4, f5	# 1739
	flw		f6, -60(x2)	# 153
	fsw		f1, -116(x2)	# 153
	fsw		f3, -120(x2)	# 153
	fsw		f4, -124(x2)	# 153
	fsw		f2, -128(x2)	# 153
	fle		x31, f6, f5	# 153
	beq		x31, x0, fle_else.32336	# 153
	lw		x29, -56(x2)	# 153
	fadd	f1, f0, f5
	sw		x1, -132(x2)	# 153
	addi	x2, x2, -136	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 136	# 153
	lw		x1, -132(x2)	# 153
	lw		x29, -52(x2)	# 153
	sw		x1, -132(x2)	# 153
	addi	x2, x2, -136	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 136	# 153
	lw		x1, -132(x2)	# 153
	jal		x0, fle_cont.32335	# 153
fle_else.32336:
	lw		x29, -56(x2)	# 154
	fadd	f1, f0, f5
	sw		x1, -132(x2)	# 154
	addi	x2, x2, -136	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 136	# 154
	lw		x1, -132(x2)	# 154
	lw		x5, -64(x2)	# 154
	sub		x4, x4, x5	# 154
	lw		x29, -52(x2)	# 154
	sw		x1, -132(x2)	# 154
	addi	x2, x2, -136	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 136	# 154
	lw		x1, -132(x2)	# 154
fle_cont.32335:
	flw		f2, -128(x2)	# 1739
	fmul	f1, f1, f2	# 1739
	flw		f2, -124(x2)	# 1740
	fsub	f1, f2, f1	# 1740
	flw		f2, -116(x2)	# 125
	flw		f3, -120(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32338	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32340	# 125
	flw		f1, -48(x2)	# 1745
	jal		x0, fle_cont.32339	# 125
fle_else.32340:
	flw		f1, -60(x2)	# 1745
fle_cont.32339:
	jal		x0, fle_cont.32337	# 125
fle_else.32338:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32342	# 125
	flw		f1, -60(x2)	# 1744
	jal		x0, fle_cont.32341	# 125
fle_else.32342:
	flw		f1, -48(x2)	# 1744
fle_cont.32341:
fle_cont.32337:
	lw		x4, -64(x2)	# 1742
	mul		x5, x30, x4	# 1742
	addi	x5, x5, 60580	# 1742
	fsw		f1, 0(x5)	# 1742
beq_cont.32307:
	addi	x4, x0, 0	# 1949
	addi	x5, x0, 0	# 1949
	mul		x5, x30, x5	# 1949
	addi	x5, x5, 60536	# 1949
	lw		x5, 0(x5)	# 1949
	lw		x29, -28(x2)	# 1949
	sw		x1, -132(x2)	# 1949
	addi	x2, x2, -136	# 1949
	lw		x31, 0(x29)	# 1949
	jalr	x1, x31, 0	# 1949
	addi	x2, x2, 136	# 1949
	lw		x1, -132(x2)	# 1949
	lw		x5, -80(x2)	# 1949
	beq		x4, x5, beq.32344	# 1949
	jal		x0, beq_cont.32343	# 1949
beq.32344:
	lw		x4, -72(x2)	# 308
	mul		x5, x30, x4	# 308
	addi	x5, x5, 60568	# 308
	flw		f1, 0(x5)	# 308
	mul		x5, x30, x4	# 308
	addi	x5, x5, 60312	# 308
	flw		f2, 0(x5)	# 308
	fmul	f1, f1, f2	# 308
	lw		x5, -64(x2)	# 308
	mul		x6, x30, x5	# 308
	addi	x6, x6, 60568	# 308
	flw		f2, 0(x6)	# 308
	mul		x6, x30, x5	# 308
	addi	x6, x6, 60312	# 308
	flw		f3, 0(x6)	# 308
	fmul	f2, f2, f3	# 308
	fadd	f1, f1, f2	# 308
	lw		x6, -16(x2)	# 308
	mul		x7, x30, x6	# 308
	addi	x7, x7, 60568	# 308
	flw		f2, 0(x7)	# 308
	mul		x7, x30, x6	# 308
	addi	x7, x7, 60312	# 308
	flw		f3, 0(x7)	# 308
	fmul	f2, f2, f3	# 308
	fadd	f1, f1, f2	# 308
	fsub	f1, f0, f1	# 123
	flw		f2, -60(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_cont.32345	# 121
	fadd	f1, f0, f0	# 1951
fle_cont.32345:
	flw		f2, -24(x2)	# 1952
	fmul	f1, f2, f1	# 1952
	lw		x7, -76(x2)	# 477
	lw		x7, 28(x7)	# 477
	mul		x8, x30, x4	# 482
	add		x7, x7, x8	# 482
	flw		f2, 0(x7)	# 482
	fmul	f1, f1, f2	# 1952
	mul		x7, x30, x4	# 318
	addi	x7, x7, 60592	# 318
	flw		f2, 0(x7)	# 318
	mul		x7, x30, x4	# 318
	addi	x7, x7, 60580	# 318
	flw		f3, 0(x7)	# 318
	fmul	f3, f1, f3	# 318
	fadd	f2, f2, f3	# 318
	mul		x4, x30, x4	# 318
	addi	x4, x4, 60592	# 318
	fsw		f2, 0(x4)	# 318
	mul		x4, x30, x5	# 319
	addi	x4, x4, 60592	# 319
	flw		f2, 0(x4)	# 319
	mul		x4, x30, x5	# 319
	addi	x4, x4, 60580	# 319
	flw		f3, 0(x4)	# 319
	fmul	f3, f1, f3	# 319
	fadd	f2, f2, f3	# 319
	mul		x4, x30, x5	# 319
	addi	x4, x4, 60592	# 319
	fsw		f2, 0(x4)	# 319
	mul		x4, x30, x6	# 320
	addi	x4, x4, 60592	# 320
	flw		f2, 0(x4)	# 320
	mul		x4, x30, x6	# 320
	addi	x4, x4, 60580	# 320
	flw		f3, 0(x4)	# 320
	fmul	f1, f1, f3	# 320
	fadd	f1, f2, f1	# 320
	mul		x4, x30, x6	# 320
	addi	x4, x4, 60592	# 320
	fsw		f1, 0(x4)	# 320
beq_cont.32343:
beq_cont.32292:
	jal		x0, fle_cont.32286	# 122
fle_else.32287:
	addi	x19, x7, 1	# 1966
	mul		x19, x30, x19	# 1966
	add		x19, x4, x19	# 1966
	lw		x19, 0(x19)	# 1966
	lui		x20, %hi(l.27433)	# 1966
	ori		x20, x0, %lo(l.27433)	# 1966
	flw		f5, 0(x20)	# 1966
	fdiv	f4, f4, f5	# 1966
	mul		x20, x30, x17	# 1650
	addi	x20, x20, 60548	# 1650
	fsw		f1, 0(x20)	# 1650
	mul		x20, x30, x17	# 1651
	addi	x20, x20, 60536	# 1651
	lw		x20, 0(x20)	# 1651
	fsw		f4, -132(x2)	# 1651
	sw		x10, -28(x2)	# 1651
	sw		x14, -32(x2)	# 1651
	sw		x13, -36(x2)	# 1651
	sw		x16, -40(x2)	# 1651
	sw		x9, -44(x2)	# 1651
	fsw		f2, -48(x2)	# 1651
	sw		x12, -52(x2)	# 1651
	sw		x11, -56(x2)	# 1651
	fsw		f3, -60(x2)	# 1651
	sw		x18, -64(x2)	# 1651
	sw		x19, -136(x2)	# 1651
	sw		x17, -72(x2)	# 1651
	addi	x6, x19, 0
	addi	x5, x20, 0
	addi	x4, x17, 0
	addi	x29, x8, 0
	sw		x1, -140(x2)	# 1651
	addi	x2, x2, -144	# 1651
	lw		x31, 0(x29)	# 1651
	jalr	x1, x31, 0	# 1651
	addi	x2, x2, 144	# 1651
	lw		x1, -140(x2)	# 1651
	lw		x4, -72(x2)	# 1652
	mul		x5, x30, x4	# 1652
	addi	x5, x5, 60548	# 1652
	flw		f1, 0(x5)	# 1652
	fadd	f2, f0, f23	# 1654
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32347	# 125
	addi	x5, x0, 0	# 1656
	jal		x0, fle_cont.32346	# 125
fle_else.32347:
	fadd	f2, f0, f25	# 1655
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32349	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32348	# 125
fle_else.32349:
	addi	x5, x0, 1	# 125
fle_cont.32348:
fle_cont.32346:
	addi	x6, x0, 0	# 1943
	beq		x5, x6, beq_cont.32350	# 1943
	mul		x5, x30, x6	# 1944
	addi	x5, x5, 60564	# 1944
	lw		x5, 0(x5)	# 1944
	mul		x5, x30, x5	# 1944
	addi	x5, x5, 60048	# 1944
	lw		x5, 0(x5)	# 1944
	lw		x7, -136(x2)	# 655
	lw		x7, 0(x7)	# 655
	lw		x8, 4(x5)	# 369
	lw		x9, -64(x2)	# 1709
	beq		x8, x9, beq.32352	# 1709
	lw		x7, -16(x2)	# 1711
	beq		x8, x7, beq.32354	# 1711
	mul		x8, x30, x4	# 1686
	addi	x8, x8, 60552	# 1686
	flw		f1, 0(x8)	# 1686
	lw		x8, 20(x5)	# 447
	mul		x10, x30, x4	# 452
	add		x8, x8, x10	# 452
	flw		f2, 0(x8)	# 452
	fsub	f1, f1, f2	# 1686
	mul		x8, x30, x9	# 1687
	addi	x8, x8, 60552	# 1687
	flw		f2, 0(x8)	# 1687
	lw		x8, 20(x5)	# 457
	mul		x10, x30, x9	# 462
	add		x8, x8, x10	# 462
	flw		f3, 0(x8)	# 462
	fsub	f2, f2, f3	# 1687
	mul		x8, x30, x7	# 1688
	addi	x8, x8, 60552	# 1688
	flw		f3, 0(x8)	# 1688
	lw		x8, 20(x5)	# 467
	mul		x10, x30, x7	# 472
	add		x8, x8, x10	# 472
	flw		f4, 0(x8)	# 472
	fsub	f3, f3, f4	# 1688
	lw		x8, 16(x5)	# 407
	mul		x10, x30, x4	# 412
	add		x8, x8, x10	# 412
	flw		f4, 0(x8)	# 412
	fmul	f4, f1, f4	# 1690
	lw		x8, 16(x5)	# 417
	mul		x10, x30, x9	# 422
	add		x8, x8, x10	# 422
	flw		f5, 0(x8)	# 422
	fmul	f5, f2, f5	# 1691
	lw		x8, 16(x5)	# 427
	mul		x10, x30, x7	# 432
	add		x8, x8, x10	# 432
	flw		f6, 0(x8)	# 432
	fmul	f6, f3, f6	# 1692
	lw		x8, 12(x5)	# 398
	beq		x8, x4, beq.32356	# 1694
	addi	x8, x0, 0	# 1699
	lw		x10, 36(x5)	# 547
	mul		x11, x30, x7	# 552
	add		x10, x10, x11	# 552
	flw		f7, 0(x10)	# 552
	fmul	f7, f2, f7	# 1699
	lw		x10, 36(x5)	# 537
	mul		x11, x30, x9	# 542
	add		x10, x10, x11	# 542
	flw		f8, 0(x10)	# 542
	fmul	f8, f3, f8	# 1699
	fadd	f7, f7, f8	# 1699
	fadd	f8, f0, f17	# 126
	fmul	f7, f7, f8	# 126
	fadd	f4, f4, f7	# 1699
	mul		x8, x30, x8	# 1699
	addi	x8, x8, 60568	# 1699
	fsw		f4, 0(x8)	# 1699
	addi	x8, x0, 1	# 1700
	lw		x10, 36(x5)	# 547
	mul		x11, x30, x7	# 552
	add		x10, x10, x11	# 552
	flw		f4, 0(x10)	# 552
	fmul	f4, f1, f4	# 1700
	lw		x10, 36(x5)	# 527
	mul		x11, x30, x4	# 532
	add		x10, x10, x11	# 532
	flw		f7, 0(x10)	# 532
	fmul	f3, f3, f7	# 1700
	fadd	f3, f4, f3	# 1700
	fadd	f4, f0, f17	# 126
	fmul	f3, f3, f4	# 126
	fadd	f3, f5, f3	# 1700
	mul		x8, x30, x8	# 1700
	addi	x8, x8, 60568	# 1700
	fsw		f3, 0(x8)	# 1700
	addi	x8, x0, 2	# 1701
	lw		x10, 36(x5)	# 537
	mul		x11, x30, x9	# 542
	add		x10, x10, x11	# 542
	flw		f3, 0(x10)	# 542
	fmul	f1, f1, f3	# 1701
	lw		x10, 36(x5)	# 527
	mul		x11, x30, x4	# 532
	add		x10, x10, x11	# 532
	flw		f3, 0(x10)	# 532
	fmul	f2, f2, f3	# 1701
	fadd	f1, f1, f2	# 1701
	fadd	f2, f0, f17	# 126
	fmul	f1, f1, f2	# 126
	fadd	f1, f6, f1	# 1701
	mul		x8, x30, x8	# 1701
	addi	x8, x8, 60568	# 1701
	fsw		f1, 0(x8)	# 1701
	jal		x0, beq_cont.32355	# 1694
beq.32356:
	addi	x8, x0, 0	# 1695
	mul		x8, x30, x8	# 1695
	addi	x8, x8, 60568	# 1695
	fsw		f4, 0(x8)	# 1695
	addi	x8, x0, 1	# 1696
	mul		x8, x30, x8	# 1696
	addi	x8, x8, 60568	# 1696
	fsw		f5, 0(x8)	# 1696
	addi	x8, x0, 2	# 1697
	mul		x8, x30, x8	# 1697
	addi	x8, x8, 60568	# 1697
	fsw		f6, 0(x8)	# 1697
beq_cont.32355:
	lw		x8, 24(x5)	# 389
	mul		x10, x30, x4	# 299
	addi	x10, x10, 60568	# 299
	flw		f1, 0(x10)	# 299
	fmul	f1, f1, f1	# 127
	mul		x10, x30, x9	# 299
	addi	x10, x10, 60568	# 299
	flw		f2, 0(x10)	# 299
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 299
	mul		x10, x30, x7	# 299
	addi	x10, x10, 60568	# 299
	flw		f2, 0(x10)	# 299
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 299
	fsqrt	f1, f1	# 299
	flw		f2, -60(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.32358	# 120
	fadd	f1, f0, f16	# 300
	jal		x0, feq_cont.32357	# 120
feq_else.32358:
	beq		x8, x4, beq.32360	# 300
	fadd	f3, f0, f18	# 300
	fdiv	f1, f3, f1	# 300
	jal		x0, beq_cont.32359	# 300
beq.32360:
	fadd	f3, f0, f16	# 300
	fdiv	f1, f3, f1	# 300
beq_cont.32359:
feq_cont.32357:
	mul		x8, x30, x4	# 301
	addi	x8, x8, 60568	# 301
	flw		f3, 0(x8)	# 301
	fmul	f3, f3, f1	# 301
	mul		x8, x30, x4	# 301
	addi	x8, x8, 60568	# 301
	fsw		f3, 0(x8)	# 301
	mul		x8, x30, x9	# 302
	addi	x8, x8, 60568	# 302
	flw		f3, 0(x8)	# 302
	fmul	f3, f3, f1	# 302
	mul		x8, x30, x9	# 302
	addi	x8, x8, 60568	# 302
	fsw		f3, 0(x8)	# 302
	mul		x8, x30, x7	# 303
	addi	x8, x8, 60568	# 303
	flw		f3, 0(x8)	# 303
	fmul	f1, f3, f1	# 303
	mul		x8, x30, x7	# 303
	addi	x8, x8, 60568	# 303
	fsw		f1, 0(x8)	# 303
	jal		x0, beq_cont.32353	# 1711
beq.32354:
	lw		x8, 16(x5)	# 407
	mul		x10, x30, x4	# 412
	add		x8, x8, x10	# 412
	flw		f1, 0(x8)	# 412
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x4	# 1679
	addi	x8, x8, 60568	# 1679
	fsw		f1, 0(x8)	# 1679
	lw		x8, 16(x5)	# 417
	mul		x10, x30, x9	# 422
	add		x8, x8, x10	# 422
	flw		f1, 0(x8)	# 422
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x9	# 1680
	addi	x8, x8, 60568	# 1680
	fsw		f1, 0(x8)	# 1680
	lw		x8, 16(x5)	# 427
	mul		x10, x30, x7	# 432
	add		x8, x8, x10	# 432
	flw		f1, 0(x8)	# 432
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x7	# 1681
	addi	x8, x8, 60568	# 1681
	fsw		f1, 0(x8)	# 1681
beq_cont.32353:
	jal		x0, beq_cont.32351	# 1709
beq.32352:
	mul		x8, x30, x4	# 1670
	addi	x8, x8, 60544	# 1670
	lw		x8, 0(x8)	# 1670
	mul		x10, x30, x4	# 263
	addi	x10, x10, 60568	# 263
	flw		f1, -60(x2)	# 263
	fsw		f1, 0(x10)	# 263
	mul		x10, x30, x9	# 264
	addi	x10, x10, 60568	# 264
	fsw		f1, 0(x10)	# 264
	lw		x10, -16(x2)	# 265
	mul		x11, x30, x10	# 265
	addi	x11, x11, 60568	# 265
	fsw		f1, 0(x11)	# 265
	sub		x11, x8, x9	# 1673
	sub		x8, x8, x9	# 1673
	mul		x8, x30, x8	# 1673
	add		x7, x7, x8	# 1673
	flw		f2, 0(x7)	# 1673
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.32362	# 120
	fadd	f2, f0, f1	# 228
	jal		x0, feq_cont.32361	# 120
feq_else.32362:
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.32364	# 121
	fadd	f2, f0, f18	# 230
	jal		x0, fle_cont.32363	# 121
fle_else.32364:
	fadd	f2, f0, f16	# 229
fle_cont.32363:
feq_cont.32361:
	fsub	f2, f0, f2	# 123
	mul		x7, x30, x11	# 1673
	addi	x7, x7, 60568	# 1673
	fsw		f2, 0(x7)	# 1673
beq_cont.32351:
	lw		x7, 0(x5)	# 359
	lw		x8, 32(x5)	# 497
	mul		x10, x30, x4	# 502
	add		x8, x8, x10	# 502
	flw		f1, 0(x8)	# 502
	mul		x8, x30, x4	# 1726
	addi	x8, x8, 60580	# 1726
	fsw		f1, 0(x8)	# 1726
	lw		x8, 32(x5)	# 507
	mul		x10, x30, x9	# 512
	add		x8, x8, x10	# 512
	flw		f1, 0(x8)	# 512
	mul		x8, x30, x9	# 1727
	addi	x8, x8, 60580	# 1727
	fsw		f1, 0(x8)	# 1727
	lw		x8, 32(x5)	# 517
	lw		x10, -16(x2)	# 522
	mul		x11, x30, x10	# 522
	add		x8, x8, x11	# 522
	flw		f1, 0(x8)	# 522
	mul		x8, x30, x10	# 1728
	addi	x8, x8, 60580	# 1728
	fsw		f1, 0(x8)	# 1728
	sw		x5, -140(x2)	# 1729
	sw		x6, -144(x2)	# 1729
	beq		x7, x9, beq.32366	# 1729
	beq		x7, x10, beq.32368	# 1747
	lw		x8, -40(x2)	# 1754
	beq		x7, x8, beq.32370	# 1754
	addi	x8, x0, 4	# 1765
	beq		x7, x8, beq.32372	# 1765
	jal		x0, beq_cont.32371	# 1765
beq.32372:
	mul		x7, x30, x4	# 1767
	addi	x7, x7, 60552	# 1767
	flw		f1, 0(x7)	# 1767
	lw		x7, 20(x5)	# 447
	mul		x8, x30, x4	# 452
	add		x7, x7, x8	# 452
	flw		f2, 0(x7)	# 452
	fsub	f1, f1, f2	# 1767
	lw		x7, 16(x5)	# 407
	mul		x8, x30, x4	# 412
	add		x7, x7, x8	# 412
	flw		f2, 0(x7)	# 412
	fsqrt	f2, f2	# 1767
	fmul	f1, f1, f2	# 1767
	mul		x7, x30, x10	# 1768
	addi	x7, x7, 60552	# 1768
	flw		f2, 0(x7)	# 1768
	lw		x7, 20(x5)	# 467
	mul		x8, x30, x10	# 472
	add		x7, x7, x8	# 472
	flw		f3, 0(x7)	# 472
	fsub	f2, f2, f3	# 1768
	lw		x7, 16(x5)	# 427
	mul		x8, x30, x10	# 432
	add		x7, x7, x8	# 432
	flw		f3, 0(x7)	# 432
	fsqrt	f3, f3	# 1768
	fmul	f2, f2, f3	# 1768
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1769
	flw		f4, -60(x2)	# 124
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_else.32374	# 124
	fsub	f5, f0, f1	# 124
	jal		x0, fle_cont.32373	# 124
fle_else.32374:
	fadd	f5, f0, f1	# 124
fle_cont.32373:
	lui		x7, %hi(l.27145)	# 1771
	ori		x7, x0, %lo(l.27145)	# 1771
	flw		f6, 0(x7)	# 1771
	fsw		f6, -148(x2)	# 125
	fsw		f3, -152(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32376	# 125
	fdiv	f1, f2, f1	# 1774
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_cont.32377	# 124
	fsub	f1, f0, f1	# 124
fle_cont.32377:
	lw		x29, -32(x2)	# 1776
	sw		x1, -156(x2)	# 1776
	addi	x2, x2, -160	# 1776
	lw		x31, 0(x29)	# 1776
	jalr	x1, x31, 0	# 1776
	addi	x2, x2, 160	# 1776
	lw		x1, -156(x2)	# 1776
	fadd	f2, f0, f21	# 1776
	fmul	f1, f1, f2	# 1776
	fadd	f2, f0, f19	# 1776
	fdiv	f1, f1, f2	# 1776
	jal		x0, fle_cont.32375	# 125
fle_else.32376:
	fadd	f1, f0, f20	# 1772
fle_cont.32375:
	flw		f2, -60(x2)	# 153
	fsw		f1, -156(x2)	# 153
	fle		x31, f2, f1	# 153
	beq		x31, x0, fle_else.32379	# 153
	lw		x29, -56(x2)	# 153
	sw		x1, -160(x2)	# 153
	addi	x2, x2, -164	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 164	# 153
	lw		x1, -160(x2)	# 153
	lw		x29, -52(x2)	# 153
	sw		x1, -160(x2)	# 153
	addi	x2, x2, -164	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 164	# 153
	lw		x1, -160(x2)	# 153
	jal		x0, fle_cont.32378	# 153
fle_else.32379:
	lw		x29, -56(x2)	# 154
	sw		x1, -160(x2)	# 154
	addi	x2, x2, -164	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 164	# 154
	lw		x1, -160(x2)	# 154
	lw		x5, -64(x2)	# 154
	sub		x4, x4, x5	# 154
	lw		x29, -52(x2)	# 154
	sw		x1, -160(x2)	# 154
	addi	x2, x2, -164	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 164	# 154
	lw		x1, -160(x2)	# 154
fle_cont.32378:
	flw		f2, -156(x2)	# 1778
	fsub	f1, f2, f1	# 1778
	lw		x4, -64(x2)	# 1780
	mul		x5, x30, x4	# 1780
	addi	x5, x5, 60552	# 1780
	flw		f2, 0(x5)	# 1780
	lw		x5, -140(x2)	# 457
	lw		x6, 20(x5)	# 457
	mul		x7, x30, x4	# 462
	add		x6, x6, x7	# 462
	flw		f3, 0(x6)	# 462
	fsub	f2, f2, f3	# 1780
	lw		x6, 16(x5)	# 417
	mul		x7, x30, x4	# 422
	add		x6, x6, x7	# 422
	flw		f3, 0(x6)	# 422
	fsqrt	f3, f3	# 1780
	fmul	f2, f2, f3	# 1780
	flw		f3, -60(x2)	# 124
	flw		f4, -152(x2)	# 124
	fle		x31, f4, f3	# 124
	beq		x31, x0, fle_else.32381	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.32380	# 124
fle_else.32381:
	fadd	f5, f0, f4	# 124
fle_cont.32380:
	flw		f6, -148(x2)	# 125
	fsw		f1, -160(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32383	# 125
	fdiv	f2, f2, f4	# 1785
	fle		x31, f2, f3	# 124
	beq		x31, x0, fle_cont.32384	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32384:
	lw		x29, -32(x2)	# 1786
	fadd	f1, f0, f2
	sw		x1, -164(x2)	# 1786
	addi	x2, x2, -168	# 1786
	lw		x31, 0(x29)	# 1786
	jalr	x1, x31, 0	# 1786
	addi	x2, x2, 168	# 1786
	lw		x1, -164(x2)	# 1786
	fadd	f2, f0, f21	# 1786
	fmul	f1, f1, f2	# 1786
	fadd	f2, f0, f19	# 1786
	fdiv	f1, f1, f2	# 1786
	jal		x0, fle_cont.32382	# 125
fle_else.32383:
	fadd	f1, f0, f20	# 1783
fle_cont.32382:
	flw		f2, -60(x2)	# 153
	fsw		f1, -164(x2)	# 153
	fle		x31, f2, f1	# 153
	beq		x31, x0, fle_else.32386	# 153
	lw		x29, -56(x2)	# 153
	sw		x1, -168(x2)	# 153
	addi	x2, x2, -172	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 172	# 153
	lw		x1, -168(x2)	# 153
	lw		x29, -52(x2)	# 153
	sw		x1, -168(x2)	# 153
	addi	x2, x2, -172	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 172	# 153
	lw		x1, -168(x2)	# 153
	jal		x0, fle_cont.32385	# 153
fle_else.32386:
	lw		x29, -56(x2)	# 154
	sw		x1, -168(x2)	# 154
	addi	x2, x2, -172	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 172	# 154
	lw		x1, -168(x2)	# 154
	lw		x5, -64(x2)	# 154
	sub		x4, x4, x5	# 154
	lw		x29, -52(x2)	# 154
	sw		x1, -168(x2)	# 154
	addi	x2, x2, -172	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 172	# 154
	lw		x1, -168(x2)	# 154
fle_cont.32385:
	flw		f2, -164(x2)	# 1788
	fsub	f1, f2, f1	# 1788
	lui		x4, %hi(l.27162)	# 1789
	ori		x4, x0, %lo(l.27162)	# 1789
	flw		f2, 0(x4)	# 1789
	fadd	f3, f0, f17	# 1789
	flw		f4, -160(x2)	# 1789
	fsub	f4, f3, f4	# 1789
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1789
	fsub	f1, f3, f1	# 1789
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1789
	flw		f2, -60(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.32388	# 122
	jal		x0, fle_cont.32387	# 122
fle_else.32388:
	fadd	f1, f0, f2	# 1790
fle_cont.32387:
	flw		f3, -48(x2)	# 1791
	fmul	f1, f3, f1	# 1791
	fadd	f3, f0, f27	# 1791
	fdiv	f1, f1, f3	# 1791
	lw		x4, -16(x2)	# 1791
	mul		x5, x30, x4	# 1791
	addi	x5, x5, 60580	# 1791
	fsw		f1, 0(x5)	# 1791
beq_cont.32371:
	jal		x0, beq_cont.32369	# 1754
beq.32370:
	mul		x7, x30, x4	# 1757
	addi	x7, x7, 60552	# 1757
	flw		f1, 0(x7)	# 1757
	lw		x7, 20(x5)	# 447
	mul		x8, x30, x4	# 452
	add		x7, x7, x8	# 452
	flw		f2, 0(x7)	# 452
	fsub	f1, f1, f2	# 1757
	mul		x7, x30, x10	# 1758
	addi	x7, x7, 60552	# 1758
	flw		f2, 0(x7)	# 1758
	lw		x7, 20(x5)	# 467
	mul		x8, x30, x10	# 472
	add		x7, x7, x8	# 472
	flw		f3, 0(x7)	# 472
	fsub	f2, f2, f3	# 1758
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1759
	fsqrt	f1, f1	# 1759
	fadd	f2, f0, f22	# 1759
	fdiv	f1, f1, f2	# 1759
	flw		f2, -60(x2)	# 153
	fsw		f1, -168(x2)	# 153
	fle		x31, f2, f1	# 153
	beq		x31, x0, fle_else.32390	# 153
	lw		x29, -56(x2)	# 153
	sw		x1, -172(x2)	# 153
	addi	x2, x2, -176	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 176	# 153
	lw		x1, -172(x2)	# 153
	lw		x29, -52(x2)	# 153
	sw		x1, -172(x2)	# 153
	addi	x2, x2, -176	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 176	# 153
	lw		x1, -172(x2)	# 153
	jal		x0, fle_cont.32389	# 153
fle_else.32390:
	lw		x29, -56(x2)	# 154
	sw		x1, -172(x2)	# 154
	addi	x2, x2, -176	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 176	# 154
	lw		x1, -172(x2)	# 154
	lw		x5, -64(x2)	# 154
	sub		x4, x4, x5	# 154
	lw		x29, -52(x2)	# 154
	sw		x1, -172(x2)	# 154
	addi	x2, x2, -176	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 176	# 154
	lw		x1, -172(x2)	# 154
fle_cont.32389:
	flw		f2, -168(x2)	# 1760
	fsub	f1, f2, f1	# 1760
	fadd	f2, f0, f19	# 1760
	fmul	f1, f1, f2	# 1760
	lw		x29, -36(x2)	# 1761
	sw		x1, -172(x2)	# 1761
	addi	x2, x2, -176	# 1761
	lw		x31, 0(x29)	# 1761
	jalr	x1, x31, 0	# 1761
	addi	x2, x2, 176	# 1761
	lw		x1, -172(x2)	# 1761
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1762
	fmul	f3, f1, f2	# 1762
	lw		x4, -64(x2)	# 1762
	mul		x5, x30, x4	# 1762
	addi	x5, x5, 60580	# 1762
	fsw		f3, 0(x5)	# 1762
	fadd	f3, f0, f16	# 1763
	fsub	f1, f3, f1	# 1763
	fmul	f1, f1, f2	# 1763
	lw		x5, -16(x2)	# 1763
	mul		x6, x30, x5	# 1763
	addi	x6, x6, 60580	# 1763
	fsw		f1, 0(x6)	# 1763
beq_cont.32369:
	jal		x0, beq_cont.32367	# 1747
beq.32368:
	mul		x7, x30, x9	# 1750
	addi	x7, x7, 60552	# 1750
	flw		f1, 0(x7)	# 1750
	fadd	f2, f0, f26	# 1750
	fmul	f1, f1, f2	# 1750
	lw		x29, -44(x2)	# 1750
	sw		x1, -172(x2)	# 1750
	addi	x2, x2, -176	# 1750
	lw		x31, 0(x29)	# 1750
	jalr	x1, x31, 0	# 1750
	addi	x2, x2, 176	# 1750
	lw		x1, -172(x2)	# 1750
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1751
	fmul	f3, f2, f1	# 1751
	lw		x4, -72(x2)	# 1751
	mul		x5, x30, x4	# 1751
	addi	x5, x5, 60580	# 1751
	fsw		f3, 0(x5)	# 1751
	fadd	f3, f0, f16	# 1752
	fsub	f1, f3, f1	# 1752
	fmul	f1, f2, f1	# 1752
	lw		x5, -64(x2)	# 1752
	mul		x6, x30, x5	# 1752
	addi	x6, x6, 60580	# 1752
	fsw		f1, 0(x6)	# 1752
beq_cont.32367:
	jal		x0, beq_cont.32365	# 1729
beq.32366:
	mul		x7, x30, x4	# 1732
	addi	x7, x7, 60552	# 1732
	flw		f1, 0(x7)	# 1732
	lw		x7, 20(x5)	# 447
	mul		x8, x30, x4	# 452
	add		x7, x7, x8	# 452
	flw		f2, 0(x7)	# 452
	fsub	f1, f1, f2	# 1732
	fadd	f2, f0, f28	# 1734
	fmul	f3, f1, f2	# 1734
	flw		f4, -60(x2)	# 153
	fsw		f2, -172(x2)	# 153
	fsw		f1, -176(x2)	# 153
	fle		x31, f4, f3	# 153
	beq		x31, x0, fle_else.32392	# 153
	lw		x29, -56(x2)	# 153
	fadd	f1, f0, f3
	sw		x1, -180(x2)	# 153
	addi	x2, x2, -184	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 184	# 153
	lw		x1, -180(x2)	# 153
	lw		x29, -52(x2)	# 153
	sw		x1, -180(x2)	# 153
	addi	x2, x2, -184	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 184	# 153
	lw		x1, -180(x2)	# 153
	jal		x0, fle_cont.32391	# 153
fle_else.32392:
	lw		x29, -56(x2)	# 154
	fadd	f1, f0, f3
	sw		x1, -180(x2)	# 154
	addi	x2, x2, -184	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 184	# 154
	lw		x1, -180(x2)	# 154
	lw		x5, -64(x2)	# 154
	sub		x4, x4, x5	# 154
	lw		x29, -52(x2)	# 154
	sw		x1, -180(x2)	# 154
	addi	x2, x2, -184	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 184	# 154
	lw		x1, -180(x2)	# 154
fle_cont.32391:
	fadd	f2, f0, f29	# 1734
	fmul	f1, f1, f2	# 1734
	flw		f3, -176(x2)	# 1735
	fsub	f1, f3, f1	# 1735
	fadd	f3, f0, f22	# 1735
	lw		x4, -16(x2)	# 1737
	mul		x5, x30, x4	# 1737
	addi	x5, x5, 60552	# 1737
	flw		f4, 0(x5)	# 1737
	lw		x5, -140(x2)	# 467
	lw		x6, 20(x5)	# 467
	mul		x7, x30, x4	# 472
	add		x6, x6, x7	# 472
	flw		f5, 0(x6)	# 472
	fsub	f4, f4, f5	# 1737
	flw		f5, -172(x2)	# 1739
	fmul	f5, f4, f5	# 1739
	flw		f6, -60(x2)	# 153
	fsw		f1, -180(x2)	# 153
	fsw		f3, -184(x2)	# 153
	fsw		f4, -188(x2)	# 153
	fsw		f2, -192(x2)	# 153
	fle		x31, f6, f5	# 153
	beq		x31, x0, fle_else.32394	# 153
	lw		x29, -56(x2)	# 153
	fadd	f1, f0, f5
	sw		x1, -196(x2)	# 153
	addi	x2, x2, -200	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 200	# 153
	lw		x1, -196(x2)	# 153
	lw		x29, -52(x2)	# 153
	sw		x1, -196(x2)	# 153
	addi	x2, x2, -200	# 153
	lw		x31, 0(x29)	# 153
	jalr	x1, x31, 0	# 153
	addi	x2, x2, 200	# 153
	lw		x1, -196(x2)	# 153
	jal		x0, fle_cont.32393	# 153
fle_else.32394:
	lw		x29, -56(x2)	# 154
	fadd	f1, f0, f5
	sw		x1, -196(x2)	# 154
	addi	x2, x2, -200	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 200	# 154
	lw		x1, -196(x2)	# 154
	lw		x5, -64(x2)	# 154
	sub		x4, x4, x5	# 154
	lw		x29, -52(x2)	# 154
	sw		x1, -196(x2)	# 154
	addi	x2, x2, -200	# 154
	lw		x31, 0(x29)	# 154
	jalr	x1, x31, 0	# 154
	addi	x2, x2, 200	# 154
	lw		x1, -196(x2)	# 154
fle_cont.32393:
	flw		f2, -192(x2)	# 1739
	fmul	f1, f1, f2	# 1739
	flw		f2, -188(x2)	# 1740
	fsub	f1, f2, f1	# 1740
	flw		f2, -180(x2)	# 125
	flw		f3, -184(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32396	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32398	# 125
	flw		f1, -48(x2)	# 1745
	jal		x0, fle_cont.32397	# 125
fle_else.32398:
	flw		f1, -60(x2)	# 1745
fle_cont.32397:
	jal		x0, fle_cont.32395	# 125
fle_else.32396:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32400	# 125
	flw		f1, -60(x2)	# 1744
	jal		x0, fle_cont.32399	# 125
fle_else.32400:
	flw		f1, -48(x2)	# 1744
fle_cont.32399:
fle_cont.32395:
	lw		x4, -64(x2)	# 1742
	mul		x5, x30, x4	# 1742
	addi	x5, x5, 60580	# 1742
	fsw		f1, 0(x5)	# 1742
beq_cont.32365:
	addi	x4, x0, 0	# 1949
	addi	x5, x0, 0	# 1949
	mul		x5, x30, x5	# 1949
	addi	x5, x5, 60536	# 1949
	lw		x5, 0(x5)	# 1949
	lw		x29, -28(x2)	# 1949
	sw		x1, -196(x2)	# 1949
	addi	x2, x2, -200	# 1949
	lw		x31, 0(x29)	# 1949
	jalr	x1, x31, 0	# 1949
	addi	x2, x2, 200	# 1949
	lw		x1, -196(x2)	# 1949
	lw		x5, -144(x2)	# 1949
	beq		x4, x5, beq.32402	# 1949
	jal		x0, beq_cont.32401	# 1949
beq.32402:
	lw		x4, -72(x2)	# 308
	mul		x5, x30, x4	# 308
	addi	x5, x5, 60568	# 308
	flw		f1, 0(x5)	# 308
	mul		x5, x30, x4	# 308
	addi	x5, x5, 60312	# 308
	flw		f2, 0(x5)	# 308
	fmul	f1, f1, f2	# 308
	lw		x5, -64(x2)	# 308
	mul		x6, x30, x5	# 308
	addi	x6, x6, 60568	# 308
	flw		f2, 0(x6)	# 308
	mul		x6, x30, x5	# 308
	addi	x6, x6, 60312	# 308
	flw		f3, 0(x6)	# 308
	fmul	f2, f2, f3	# 308
	fadd	f1, f1, f2	# 308
	lw		x6, -16(x2)	# 308
	mul		x7, x30, x6	# 308
	addi	x7, x7, 60568	# 308
	flw		f2, 0(x7)	# 308
	mul		x7, x30, x6	# 308
	addi	x7, x7, 60312	# 308
	flw		f3, 0(x7)	# 308
	fmul	f2, f2, f3	# 308
	fadd	f1, f1, f2	# 308
	fsub	f1, f0, f1	# 123
	flw		f2, -60(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_cont.32403	# 121
	fadd	f1, f0, f0	# 1951
fle_cont.32403:
	flw		f2, -132(x2)	# 1952
	fmul	f1, f2, f1	# 1952
	lw		x7, -140(x2)	# 477
	lw		x7, 28(x7)	# 477
	mul		x8, x30, x4	# 482
	add		x7, x7, x8	# 482
	flw		f2, 0(x7)	# 482
	fmul	f1, f1, f2	# 1952
	mul		x7, x30, x4	# 318
	addi	x7, x7, 60592	# 318
	flw		f2, 0(x7)	# 318
	mul		x7, x30, x4	# 318
	addi	x7, x7, 60580	# 318
	flw		f3, 0(x7)	# 318
	fmul	f3, f1, f3	# 318
	fadd	f2, f2, f3	# 318
	mul		x4, x30, x4	# 318
	addi	x4, x4, 60592	# 318
	fsw		f2, 0(x4)	# 318
	mul		x4, x30, x5	# 319
	addi	x4, x4, 60592	# 319
	flw		f2, 0(x4)	# 319
	mul		x4, x30, x5	# 319
	addi	x4, x4, 60580	# 319
	flw		f3, 0(x4)	# 319
	fmul	f3, f1, f3	# 319
	fadd	f2, f2, f3	# 319
	mul		x4, x30, x5	# 319
	addi	x4, x4, 60592	# 319
	fsw		f2, 0(x4)	# 319
	mul		x4, x30, x6	# 320
	addi	x4, x4, 60592	# 320
	flw		f2, 0(x4)	# 320
	mul		x4, x30, x6	# 320
	addi	x4, x4, 60580	# 320
	flw		f3, 0(x4)	# 320
	fmul	f1, f1, f3	# 320
	fadd	f1, f2, f1	# 320
	mul		x4, x30, x6	# 320
	addi	x4, x4, 60592	# 320
	fsw		f1, 0(x4)	# 320
beq_cont.32401:
beq_cont.32350:
fle_cont.32286:
	lw		x4, -16(x2)	# 1970
	lw		x5, -20(x2)	# 1970
	sub		x7, x5, x4	# 1970
	lw		x4, -8(x2)	# 1970
	lw		x5, -4(x2)	# 1970
	lw		x6, 0(x2)	# 1970
	lw		x29, -12(x2)	# 1970
	lw		x31, 0(x29)	# 1970
	jalr	x0, x31, 0	# 1970
do_without_neighbors.2926.17819:
	lw		x6, 24(x29)	# 2051
	lw		x7, 20(x29)	# 2051
	lw		x8, 16(x29)	# 2051
	lw		x9, 12(x29)	# 2051
	lw		x10, 8(x29)	# 2051
	lw		x11, 4(x29)	# 2051
	addi	x12, x0, 4	# 2051
	ble		x5, x12, ble.32404	# 2051
	jalr	x0, x1, 0	# 2061
ble.32404:
	lw		x12, 8(x4)	# 593
	mul		x13, x30, x5	# 2054
	add		x12, x12, x13	# 2054
	lw		x12, 0(x12)	# 2054
	ble		x10, x12, ble.32406	# 2054
	jalr	x0, x1, 0	# 2060
ble.32406:
	lw		x12, 12(x4)	# 600
	mul		x13, x30, x5	# 2056
	add		x12, x12, x13	# 2056
	lw		x12, 0(x12)	# 2056
	sw		x4, 0(x2)	# 2056
	sw		x29, -4(x2)	# 2056
	sw		x11, -8(x2)	# 2056
	sw		x5, -12(x2)	# 2056
	beq		x12, x10, beq_cont.32408	# 2056
	lw		x12, 20(x4)	# 614
	lw		x13, 28(x4)	# 644
	lw		x14, 4(x4)	# 585
	lw		x15, 16(x4)	# 607
	mul		x16, x30, x5	# 2018
	add		x12, x12, x16	# 2018
	lw		x12, 0(x12)	# 2018
	mul		x16, x30, x10	# 275
	add		x16, x12, x16	# 275
	flw		f1, 0(x16)	# 275
	mul		x16, x30, x10	# 275
	addi	x16, x16, 60592	# 275
	fsw		f1, 0(x16)	# 275
	mul		x16, x30, x11	# 276
	add		x16, x12, x16	# 276
	flw		f1, 0(x16)	# 276
	mul		x16, x30, x11	# 276
	addi	x16, x16, 60592	# 276
	fsw		f1, 0(x16)	# 276
	mul		x16, x30, x8	# 277
	add		x12, x12, x16	# 277
	flw		f1, 0(x12)	# 277
	mul		x12, x30, x8	# 277
	addi	x12, x12, 60592	# 277
	fsw		f1, 0(x12)	# 277
	lw		x12, 24(x4)	# 630
	mul		x16, x30, x10	# 632
	add		x12, x12, x16	# 632
	lw		x12, 0(x12)	# 632
	mul		x16, x30, x5	# 2021
	add		x13, x13, x16	# 2021
	lw		x13, 0(x13)	# 2021
	mul		x16, x30, x5	# 2022
	add		x14, x14, x16	# 2022
	lw		x14, 0(x14)	# 2022
	sw		x15, -16(x2)	# 1987
	sw		x9, -20(x2)	# 1987
	sw		x13, -24(x2)	# 1987
	sw		x7, -28(x2)	# 1987
	sw		x6, -32(x2)	# 1987
	sw		x8, -36(x2)	# 1987
	sw		x14, -40(x2)	# 1987
	sw		x10, -44(x2)	# 1987
	sw		x12, -48(x2)	# 1987
	beq		x12, x10, beq_cont.32409	# 1987
	addi	x16, x0, 0	# 1988
	mul		x16, x30, x16	# 1988
	addi	x16, x16, 60716	# 1988
	lw		x16, 0(x16)	# 1988
	mul		x17, x30, x10	# 275
	add		x17, x14, x17	# 275
	flw		f1, 0(x17)	# 275
	mul		x17, x30, x10	# 275
	addi	x17, x17, 60648	# 275
	fsw		f1, 0(x17)	# 275
	mul		x17, x30, x11	# 276
	add		x17, x14, x17	# 276
	flw		f1, 0(x17)	# 276
	mul		x17, x30, x11	# 276
	addi	x17, x17, 60648	# 276
	fsw		f1, 0(x17)	# 276
	mul		x17, x30, x8	# 277
	add		x17, x14, x17	# 277
	flw		f1, 0(x17)	# 277
	mul		x17, x30, x8	# 277
	addi	x17, x17, 60648	# 277
	fsw		f1, 0(x17)	# 277
	mul		x17, x30, x10	# 1331
	addi	x17, x17, 60000	# 1331
	lw		x17, 0(x17)	# 1331
	sub		x17, x17, x11	# 1331
	sw		x16, -52(x2)	# 1331
	addi	x5, x17, 0
	addi	x4, x14, 0
	addi	x29, x6, 0
	sw		x1, -56(x2)	# 1331
	addi	x2, x2, -60	# 1331
	lw		x31, 0(x29)	# 1331
	jalr	x1, x31, 0	# 1331
	addi	x2, x2, 60	# 1331
	lw		x1, -56(x2)	# 1331
	addi	x7, x0, 118	# 1980
	lw		x4, -52(x2)	# 1980
	lw		x5, -24(x2)	# 1980
	lw		x6, -40(x2)	# 1980
	lw		x29, -28(x2)	# 1980
	sw		x1, -56(x2)	# 1980
	addi	x2, x2, -60	# 1980
	lw		x31, 0(x29)	# 1980
	jalr	x1, x31, 0	# 1980
	addi	x2, x2, 60	# 1980
	lw		x1, -56(x2)	# 1980
beq_cont.32409:
	lw		x4, -8(x2)	# 1991
	lw		x5, -48(x2)	# 1991
	beq		x5, x4, beq_cont.32410	# 1991
	addi	x6, x0, 1	# 1992
	mul		x6, x30, x6	# 1992
	addi	x6, x6, 60716	# 1992
	lw		x6, 0(x6)	# 1992
	lw		x7, -44(x2)	# 275
	mul		x8, x30, x7	# 275
	lw		x9, -40(x2)	# 275
	add		x8, x9, x8	# 275
	flw		f1, 0(x8)	# 275
	mul		x8, x30, x7	# 275
	addi	x8, x8, 60648	# 275
	fsw		f1, 0(x8)	# 275
	mul		x8, x30, x4	# 276
	add		x8, x9, x8	# 276
	flw		f1, 0(x8)	# 276
	mul		x8, x30, x4	# 276
	addi	x8, x8, 60648	# 276
	fsw		f1, 0(x8)	# 276
	lw		x8, -36(x2)	# 277
	mul		x10, x30, x8	# 277
	add		x10, x9, x10	# 277
	flw		f1, 0(x10)	# 277
	mul		x10, x30, x8	# 277
	addi	x10, x10, 60648	# 277
	fsw		f1, 0(x10)	# 277
	mul		x10, x30, x7	# 1331
	addi	x10, x10, 60000	# 1331
	lw		x10, 0(x10)	# 1331
	sub		x10, x10, x4	# 1331
	lw		x29, -32(x2)	# 1331
	sw		x6, -56(x2)	# 1331
	addi	x5, x10, 0
	addi	x4, x9, 0
	sw		x1, -60(x2)	# 1331
	addi	x2, x2, -64	# 1331
	lw		x31, 0(x29)	# 1331
	jalr	x1, x31, 0	# 1331
	addi	x2, x2, 64	# 1331
	lw		x1, -60(x2)	# 1331
	addi	x7, x0, 118	# 1980
	lw		x4, -56(x2)	# 1980
	lw		x5, -24(x2)	# 1980
	lw		x6, -40(x2)	# 1980
	lw		x29, -28(x2)	# 1980
	sw		x1, -60(x2)	# 1980
	addi	x2, x2, -64	# 1980
	lw		x31, 0(x29)	# 1980
	jalr	x1, x31, 0	# 1980
	addi	x2, x2, 64	# 1980
	lw		x1, -60(x2)	# 1980
beq_cont.32410:
	lw		x4, -36(x2)	# 1995
	lw		x5, -48(x2)	# 1995
	beq		x5, x4, beq_cont.32411	# 1995
	addi	x6, x0, 2	# 1996
	mul		x6, x30, x6	# 1996
	addi	x6, x6, 60716	# 1996
	lw		x6, 0(x6)	# 1996
	lw		x7, -44(x2)	# 275
	mul		x8, x30, x7	# 275
	lw		x9, -40(x2)	# 275
	add		x8, x9, x8	# 275
	flw		f1, 0(x8)	# 275
	mul		x8, x30, x7	# 275
	addi	x8, x8, 60648	# 275
	fsw		f1, 0(x8)	# 275
	lw		x8, -8(x2)	# 276
	mul		x10, x30, x8	# 276
	add		x10, x9, x10	# 276
	flw		f1, 0(x10)	# 276
	mul		x10, x30, x8	# 276
	addi	x10, x10, 60648	# 276
	fsw		f1, 0(x10)	# 276
	mul		x10, x30, x4	# 277
	add		x10, x9, x10	# 277
	flw		f1, 0(x10)	# 277
	mul		x10, x30, x4	# 277
	addi	x10, x10, 60648	# 277
	fsw		f1, 0(x10)	# 277
	mul		x10, x30, x7	# 1331
	addi	x10, x10, 60000	# 1331
	lw		x10, 0(x10)	# 1331
	sub		x10, x10, x8	# 1331
	lw		x29, -32(x2)	# 1331
	sw		x6, -60(x2)	# 1331
	addi	x5, x10, 0
	addi	x4, x9, 0
	sw		x1, -64(x2)	# 1331
	addi	x2, x2, -68	# 1331
	lw		x31, 0(x29)	# 1331
	jalr	x1, x31, 0	# 1331
	addi	x2, x2, 68	# 1331
	lw		x1, -64(x2)	# 1331
	addi	x7, x0, 118	# 1980
	lw		x4, -60(x2)	# 1980
	lw		x5, -24(x2)	# 1980
	lw		x6, -40(x2)	# 1980
	lw		x29, -28(x2)	# 1980
	sw		x1, -64(x2)	# 1980
	addi	x2, x2, -68	# 1980
	lw		x31, 0(x29)	# 1980
	jalr	x1, x31, 0	# 1980
	addi	x2, x2, 68	# 1980
	lw		x1, -64(x2)	# 1980
beq_cont.32411:
	lw		x4, -20(x2)	# 1999
	lw		x5, -48(x2)	# 1999
	beq		x5, x4, beq_cont.32412	# 1999
	addi	x4, x0, 3	# 2000
	mul		x4, x30, x4	# 2000
	addi	x4, x4, 60716	# 2000
	lw		x4, 0(x4)	# 2000
	lw		x6, -44(x2)	# 275
	mul		x7, x30, x6	# 275
	lw		x8, -40(x2)	# 275
	add		x7, x8, x7	# 275
	flw		f1, 0(x7)	# 275
	mul		x7, x30, x6	# 275
	addi	x7, x7, 60648	# 275
	fsw		f1, 0(x7)	# 275
	lw		x7, -8(x2)	# 276
	mul		x9, x30, x7	# 276
	add		x9, x8, x9	# 276
	flw		f1, 0(x9)	# 276
	mul		x9, x30, x7	# 276
	addi	x9, x9, 60648	# 276
	fsw		f1, 0(x9)	# 276
	lw		x9, -36(x2)	# 277
	mul		x10, x30, x9	# 277
	add		x10, x8, x10	# 277
	flw		f1, 0(x10)	# 277
	mul		x10, x30, x9	# 277
	addi	x10, x10, 60648	# 277
	fsw		f1, 0(x10)	# 277
	mul		x10, x30, x6	# 1331
	addi	x10, x10, 60000	# 1331
	lw		x10, 0(x10)	# 1331
	sub		x10, x10, x7	# 1331
	lw		x29, -32(x2)	# 1331
	sw		x4, -64(x2)	# 1331
	addi	x5, x10, 0
	addi	x4, x8, 0
	sw		x1, -68(x2)	# 1331
	addi	x2, x2, -72	# 1331
	lw		x31, 0(x29)	# 1331
	jalr	x1, x31, 0	# 1331
	addi	x2, x2, 72	# 1331
	lw		x1, -68(x2)	# 1331
	addi	x7, x0, 118	# 1980
	lw		x4, -64(x2)	# 1980
	lw		x5, -24(x2)	# 1980
	lw		x6, -40(x2)	# 1980
	lw		x29, -28(x2)	# 1980
	sw		x1, -68(x2)	# 1980
	addi	x2, x2, -72	# 1980
	lw		x31, 0(x29)	# 1980
	jalr	x1, x31, 0	# 1980
	addi	x2, x2, 72	# 1980
	lw		x1, -68(x2)	# 1980
beq_cont.32412:
	addi	x4, x0, 4	# 2003
	lw		x5, -48(x2)	# 2003
	beq		x5, x4, beq_cont.32413	# 2003
	mul		x4, x30, x4	# 2004
	addi	x4, x4, 60716	# 2004
	lw		x4, 0(x4)	# 2004
	lw		x5, -44(x2)	# 275
	mul		x6, x30, x5	# 275
	lw		x7, -40(x2)	# 275
	add		x6, x7, x6	# 275
	flw		f1, 0(x6)	# 275
	mul		x6, x30, x5	# 275
	addi	x6, x6, 60648	# 275
	fsw		f1, 0(x6)	# 275
	lw		x6, -8(x2)	# 276
	mul		x8, x30, x6	# 276
	add		x8, x7, x8	# 276
	flw		f1, 0(x8)	# 276
	mul		x8, x30, x6	# 276
	addi	x8, x8, 60648	# 276
	fsw		f1, 0(x8)	# 276
	lw		x8, -36(x2)	# 277
	mul		x9, x30, x8	# 277
	add		x9, x7, x9	# 277
	flw		f1, 0(x9)	# 277
	mul		x9, x30, x8	# 277
	addi	x9, x9, 60648	# 277
	fsw		f1, 0(x9)	# 277
	mul		x9, x30, x5	# 1331
	addi	x9, x9, 60000	# 1331
	lw		x9, 0(x9)	# 1331
	sub		x9, x9, x6	# 1331
	lw		x29, -32(x2)	# 1331
	sw		x4, -68(x2)	# 1331
	addi	x5, x9, 0
	addi	x4, x7, 0
	sw		x1, -72(x2)	# 1331
	addi	x2, x2, -76	# 1331
	lw		x31, 0(x29)	# 1331
	jalr	x1, x31, 0	# 1331
	addi	x2, x2, 76	# 1331
	lw		x1, -72(x2)	# 1331
	addi	x7, x0, 118	# 1980
	lw		x4, -68(x2)	# 1980
	lw		x5, -24(x2)	# 1980
	lw		x6, -40(x2)	# 1980
	lw		x29, -28(x2)	# 1980
	sw		x1, -72(x2)	# 1980
	addi	x2, x2, -76	# 1980
	lw		x31, 0(x29)	# 1980
	jalr	x1, x31, 0	# 1980
	addi	x2, x2, 76	# 1980
	lw		x1, -72(x2)	# 1980
beq_cont.32413:
	lw		x4, -12(x2)	# 2023
	mul		x5, x30, x4	# 2023
	lw		x6, -16(x2)	# 2023
	add		x5, x6, x5	# 2023
	lw		x5, 0(x5)	# 2023
	lw		x6, -44(x2)	# 348
	mul		x7, x30, x6	# 348
	addi	x7, x7, 60604	# 348
	flw		f1, 0(x7)	# 348
	mul		x7, x30, x6	# 348
	add		x7, x5, x7	# 348
	flw		f2, 0(x7)	# 348
	mul		x7, x30, x6	# 348
	addi	x7, x7, 60592	# 348
	flw		f3, 0(x7)	# 348
	fmul	f2, f2, f3	# 348
	fadd	f1, f1, f2	# 348
	mul		x6, x30, x6	# 348
	addi	x6, x6, 60604	# 348
	fsw		f1, 0(x6)	# 348
	lw		x6, -8(x2)	# 349
	mul		x7, x30, x6	# 349
	addi	x7, x7, 60604	# 349
	flw		f1, 0(x7)	# 349
	mul		x7, x30, x6	# 349
	add		x7, x5, x7	# 349
	flw		f2, 0(x7)	# 349
	mul		x7, x30, x6	# 349
	addi	x7, x7, 60592	# 349
	flw		f3, 0(x7)	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	mul		x7, x30, x6	# 349
	addi	x7, x7, 60604	# 349
	fsw		f1, 0(x7)	# 349
	lw		x7, -36(x2)	# 350
	mul		x8, x30, x7	# 350
	addi	x8, x8, 60604	# 350
	flw		f1, 0(x8)	# 350
	mul		x8, x30, x7	# 350
	add		x5, x5, x8	# 350
	flw		f2, 0(x5)	# 350
	mul		x5, x30, x7	# 350
	addi	x5, x5, 60592	# 350
	flw		f3, 0(x5)	# 350
	fmul	f2, f2, f3	# 350
	fadd	f1, f1, f2	# 350
	mul		x5, x30, x7	# 350
	addi	x5, x5, 60604	# 350
	fsw		f1, 0(x5)	# 350
beq_cont.32408:
	lw		x4, -8(x2)	# 2059
	lw		x5, -12(x2)	# 2059
	add		x5, x5, x4	# 2059
	lw		x4, 0(x2)	# 2059
	lw		x29, -4(x2)	# 2059
	lw		x31, 0(x29)	# 2059
	jalr	x0, x31, 0	# 2059
try_exploit_neighbors.2942.17822:
	lw		x10, 16(x29)	# 2103
	lw		x11, 12(x29)	# 2103
	lw		x12, 8(x29)	# 2103
	lw		x13, 4(x29)	# 2103
	mul		x14, x30, x4	# 2103
	add		x14, x7, x14	# 2103
	lw		x14, 0(x14)	# 2103
	addi	x15, x0, 4	# 2104
	ble		x9, x15, ble.32414	# 2104
	jalr	x0, x1, 0	# 2123
ble.32414:
	lw		x15, 8(x14)	# 593
	mul		x16, x30, x9	# 2079
	add		x15, x15, x16	# 2079
	lw		x15, 0(x15)	# 2079
	ble		x12, x15, ble.32416	# 2107
	jalr	x0, x1, 0	# 2122
ble.32416:
	lw		x15, 8(x14)	# 593
	mul		x16, x30, x9	# 2079
	add		x15, x15, x16	# 2079
	lw		x15, 0(x15)	# 2079
	mul		x16, x30, x4	# 2087
	add		x16, x6, x16	# 2087
	lw		x16, 0(x16)	# 2087
	lw		x16, 8(x16)	# 593
	mul		x17, x30, x9	# 2079
	add		x16, x16, x17	# 2079
	lw		x16, 0(x16)	# 2079
	beq		x16, x15, beq.32419	# 2087
	addi	x15, x0, 0	# 2095
	jal		x0, beq_cont.32418	# 2087
beq.32419:
	mul		x16, x30, x4	# 2088
	add		x16, x8, x16	# 2088
	lw		x16, 0(x16)	# 2088
	lw		x16, 8(x16)	# 593
	mul		x17, x30, x9	# 2079
	add		x16, x16, x17	# 2079
	lw		x16, 0(x16)	# 2079
	beq		x16, x15, beq.32421	# 2088
	addi	x15, x0, 0	# 2094
	jal		x0, beq_cont.32420	# 2088
beq.32421:
	sub		x16, x4, x13	# 2089
	mul		x16, x30, x16	# 2089
	add		x16, x7, x16	# 2089
	lw		x16, 0(x16)	# 2089
	lw		x16, 8(x16)	# 593
	mul		x17, x30, x9	# 2079
	add		x16, x16, x17	# 2079
	lw		x16, 0(x16)	# 2079
	beq		x16, x15, beq.32423	# 2089
	addi	x15, x0, 0	# 2093
	jal		x0, beq_cont.32422	# 2089
beq.32423:
	add		x16, x4, x13	# 2090
	mul		x16, x30, x16	# 2090
	add		x16, x7, x16	# 2090
	lw		x16, 0(x16)	# 2090
	lw		x16, 8(x16)	# 593
	mul		x17, x30, x9	# 2079
	add		x16, x16, x17	# 2079
	lw		x16, 0(x16)	# 2079
	beq		x16, x15, beq.32425	# 2090
	addi	x15, x0, 0	# 2092
	jal		x0, beq_cont.32424	# 2090
beq.32425:
	addi	x15, x0, 1	# 2091
beq_cont.32424:
beq_cont.32422:
beq_cont.32420:
beq_cont.32418:
	beq		x15, x12, beq.32426	# 2109
	lw		x10, 12(x14)	# 600
	mul		x14, x30, x9	# 2113
	add		x10, x10, x14	# 2113
	lw		x10, 0(x10)	# 2113
	beq		x10, x12, beq_cont.32427	# 2113
	mul		x10, x30, x4	# 2032
	add		x10, x6, x10	# 2032
	lw		x10, 0(x10)	# 2032
	lw		x10, 20(x10)	# 614
	addi	x14, x0, 1	# 2033
	sub		x14, x4, x14	# 2033
	mul		x14, x30, x14	# 2033
	add		x14, x7, x14	# 2033
	lw		x14, 0(x14)	# 2033
	lw		x14, 20(x14)	# 614
	mul		x15, x30, x4	# 2034
	add		x15, x7, x15	# 2034
	lw		x15, 0(x15)	# 2034
	lw		x15, 20(x15)	# 614
	addi	x16, x4, 1	# 2035
	mul		x16, x30, x16	# 2035
	add		x16, x7, x16	# 2035
	lw		x16, 0(x16)	# 2035
	lw		x16, 20(x16)	# 614
	mul		x17, x30, x4	# 2036
	add		x17, x8, x17	# 2036
	lw		x17, 0(x17)	# 2036
	lw		x17, 20(x17)	# 614
	mul		x18, x30, x9	# 2038
	add		x10, x10, x18	# 2038
	lw		x10, 0(x10)	# 2038
	mul		x18, x30, x12	# 275
	add		x18, x10, x18	# 275
	flw		f1, 0(x18)	# 275
	mul		x18, x30, x12	# 275
	addi	x18, x18, 60592	# 275
	fsw		f1, 0(x18)	# 275
	mul		x18, x30, x13	# 276
	add		x18, x10, x18	# 276
	flw		f1, 0(x18)	# 276
	mul		x18, x30, x13	# 276
	addi	x18, x18, 60592	# 276
	fsw		f1, 0(x18)	# 276
	mul		x18, x30, x11	# 277
	add		x10, x10, x18	# 277
	flw		f1, 0(x10)	# 277
	mul		x10, x30, x11	# 277
	addi	x10, x10, 60592	# 277
	fsw		f1, 0(x10)	# 277
	mul		x10, x30, x9	# 2039
	add		x10, x14, x10	# 2039
	lw		x10, 0(x10)	# 2039
	mul		x14, x30, x12	# 325
	addi	x14, x14, 60592	# 325
	flw		f1, 0(x14)	# 325
	mul		x14, x30, x12	# 325
	add		x14, x10, x14	# 325
	flw		f2, 0(x14)	# 325
	fadd	f1, f1, f2	# 325
	mul		x14, x30, x12	# 325
	addi	x14, x14, 60592	# 325
	fsw		f1, 0(x14)	# 325
	mul		x14, x30, x13	# 326
	addi	x14, x14, 60592	# 326
	flw		f1, 0(x14)	# 326
	mul		x14, x30, x13	# 326
	add		x14, x10, x14	# 326
	flw		f2, 0(x14)	# 326
	fadd	f1, f1, f2	# 326
	mul		x14, x30, x13	# 326
	addi	x14, x14, 60592	# 326
	fsw		f1, 0(x14)	# 326
	mul		x14, x30, x11	# 327
	addi	x14, x14, 60592	# 327
	flw		f1, 0(x14)	# 327
	mul		x14, x30, x11	# 327
	add		x10, x10, x14	# 327
	flw		f2, 0(x10)	# 327
	fadd	f1, f1, f2	# 327
	mul		x10, x30, x11	# 327
	addi	x10, x10, 60592	# 327
	fsw		f1, 0(x10)	# 327
	mul		x10, x30, x9	# 2040
	add		x10, x15, x10	# 2040
	lw		x10, 0(x10)	# 2040
	mul		x14, x30, x12	# 325
	addi	x14, x14, 60592	# 325
	flw		f1, 0(x14)	# 325
	mul		x14, x30, x12	# 325
	add		x14, x10, x14	# 325
	flw		f2, 0(x14)	# 325
	fadd	f1, f1, f2	# 325
	mul		x14, x30, x12	# 325
	addi	x14, x14, 60592	# 325
	fsw		f1, 0(x14)	# 325
	mul		x14, x30, x13	# 326
	addi	x14, x14, 60592	# 326
	flw		f1, 0(x14)	# 326
	mul		x14, x30, x13	# 326
	add		x14, x10, x14	# 326
	flw		f2, 0(x14)	# 326
	fadd	f1, f1, f2	# 326
	mul		x14, x30, x13	# 326
	addi	x14, x14, 60592	# 326
	fsw		f1, 0(x14)	# 326
	mul		x14, x30, x11	# 327
	addi	x14, x14, 60592	# 327
	flw		f1, 0(x14)	# 327
	mul		x14, x30, x11	# 327
	add		x10, x10, x14	# 327
	flw		f2, 0(x10)	# 327
	fadd	f1, f1, f2	# 327
	mul		x10, x30, x11	# 327
	addi	x10, x10, 60592	# 327
	fsw		f1, 0(x10)	# 327
	mul		x10, x30, x9	# 2041
	add		x10, x16, x10	# 2041
	lw		x10, 0(x10)	# 2041
	mul		x14, x30, x12	# 325
	addi	x14, x14, 60592	# 325
	flw		f1, 0(x14)	# 325
	mul		x14, x30, x12	# 325
	add		x14, x10, x14	# 325
	flw		f2, 0(x14)	# 325
	fadd	f1, f1, f2	# 325
	mul		x14, x30, x12	# 325
	addi	x14, x14, 60592	# 325
	fsw		f1, 0(x14)	# 325
	mul		x14, x30, x13	# 326
	addi	x14, x14, 60592	# 326
	flw		f1, 0(x14)	# 326
	mul		x14, x30, x13	# 326
	add		x14, x10, x14	# 326
	flw		f2, 0(x14)	# 326
	fadd	f1, f1, f2	# 326
	mul		x14, x30, x13	# 326
	addi	x14, x14, 60592	# 326
	fsw		f1, 0(x14)	# 326
	mul		x14, x30, x11	# 327
	addi	x14, x14, 60592	# 327
	flw		f1, 0(x14)	# 327
	mul		x14, x30, x11	# 327
	add		x10, x10, x14	# 327
	flw		f2, 0(x10)	# 327
	fadd	f1, f1, f2	# 327
	mul		x10, x30, x11	# 327
	addi	x10, x10, 60592	# 327
	fsw		f1, 0(x10)	# 327
	mul		x10, x30, x9	# 2042
	add		x10, x17, x10	# 2042
	lw		x10, 0(x10)	# 2042
	mul		x14, x30, x12	# 325
	addi	x14, x14, 60592	# 325
	flw		f1, 0(x14)	# 325
	mul		x14, x30, x12	# 325
	add		x14, x10, x14	# 325
	flw		f2, 0(x14)	# 325
	fadd	f1, f1, f2	# 325
	mul		x14, x30, x12	# 325
	addi	x14, x14, 60592	# 325
	fsw		f1, 0(x14)	# 325
	mul		x14, x30, x13	# 326
	addi	x14, x14, 60592	# 326
	flw		f1, 0(x14)	# 326
	mul		x14, x30, x13	# 326
	add		x14, x10, x14	# 326
	flw		f2, 0(x14)	# 326
	fadd	f1, f1, f2	# 326
	mul		x14, x30, x13	# 326
	addi	x14, x14, 60592	# 326
	fsw		f1, 0(x14)	# 326
	mul		x14, x30, x11	# 327
	addi	x14, x14, 60592	# 327
	flw		f1, 0(x14)	# 327
	mul		x14, x30, x11	# 327
	add		x10, x10, x14	# 327
	flw		f2, 0(x10)	# 327
	fadd	f1, f1, f2	# 327
	mul		x10, x30, x11	# 327
	addi	x10, x10, 60592	# 327
	fsw		f1, 0(x10)	# 327
	mul		x10, x30, x4	# 2044
	add		x10, x7, x10	# 2044
	lw		x10, 0(x10)	# 2044
	lw		x10, 16(x10)	# 607
	mul		x14, x30, x9	# 2045
	add		x10, x10, x14	# 2045
	lw		x10, 0(x10)	# 2045
	mul		x14, x30, x12	# 348
	addi	x14, x14, 60604	# 348
	flw		f1, 0(x14)	# 348
	mul		x14, x30, x12	# 348
	add		x14, x10, x14	# 348
	flw		f2, 0(x14)	# 348
	mul		x14, x30, x12	# 348
	addi	x14, x14, 60592	# 348
	flw		f3, 0(x14)	# 348
	fmul	f2, f2, f3	# 348
	fadd	f1, f1, f2	# 348
	mul		x12, x30, x12	# 348
	addi	x12, x12, 60604	# 348
	fsw		f1, 0(x12)	# 348
	mul		x12, x30, x13	# 349
	addi	x12, x12, 60604	# 349
	flw		f1, 0(x12)	# 349
	mul		x12, x30, x13	# 349
	add		x12, x10, x12	# 349
	flw		f2, 0(x12)	# 349
	mul		x12, x30, x13	# 349
	addi	x12, x12, 60592	# 349
	flw		f3, 0(x12)	# 349
	fmul	f2, f2, f3	# 349
	fadd	f1, f1, f2	# 349
	mul		x12, x30, x13	# 349
	addi	x12, x12, 60604	# 349
	fsw		f1, 0(x12)	# 349
	mul		x12, x30, x11	# 350
	addi	x12, x12, 60604	# 350
	flw		f1, 0(x12)	# 350
	mul		x12, x30, x11	# 350
	add		x10, x10, x12	# 350
	flw		f2, 0(x10)	# 350
	mul		x10, x30, x11	# 350
	addi	x10, x10, 60592	# 350
	flw		f3, 0(x10)	# 350
	fmul	f2, f2, f3	# 350
	fadd	f1, f1, f2	# 350
	mul		x10, x30, x11	# 350
	addi	x10, x10, 60604	# 350
	fsw		f1, 0(x10)	# 350
beq_cont.32427:
	add		x9, x9, x13	# 2118
	lw		x31, 0(x29)	# 2118
	jalr	x0, x31, 0	# 2118
beq.32426:
	addi	x5, x9, 0
	addi	x4, x14, 0
	addi	x29, x10, 0
	lw		x31, 0(x29)	# 2121
	jalr	x0, x31, 0	# 2121
pretrace_diffuse_rays.2957.17829:
	lw		x6, 20(x29)	# 2179
	lw		x7, 16(x29)	# 2179
	lw		x8, 12(x29)	# 2179
	lw		x9, 8(x29)	# 2179
	lw		x10, 4(x29)	# 2179
	addi	x11, x0, 4	# 2179
	ble		x5, x11, ble.32428	# 2179
	jalr	x0, x1, 0	# 2203
ble.32428:
	lw		x11, 8(x4)	# 593
	mul		x12, x30, x5	# 2079
	add		x11, x11, x12	# 2079
	lw		x11, 0(x11)	# 2079
	ble		x9, x11, ble.32430	# 2183
	jalr	x0, x1, 0	# 2202
ble.32430:
	lw		x11, 12(x4)	# 600
	mul		x12, x30, x5	# 2186
	add		x11, x11, x12	# 2186
	lw		x11, 0(x11)	# 2186
	sw		x29, 0(x2)	# 2186
	sw		x10, -4(x2)	# 2186
	sw		x5, -8(x2)	# 2186
	beq		x11, x9, beq_cont.32432	# 2186
	lw		x11, 24(x4)	# 630
	addi	x12, x0, 0	# 632
	mul		x12, x30, x12	# 632
	add		x11, x11, x12	# 632
	lw		x11, 0(x11)	# 632
	fadd	f1, f0, f0	# 270
	mul		x12, x30, x9	# 263
	addi	x12, x12, 60592	# 263
	fsw		f1, 0(x12)	# 263
	mul		x12, x30, x10	# 264
	addi	x12, x12, 60592	# 264
	fsw		f1, 0(x12)	# 264
	mul		x8, x30, x8	# 265
	addi	x8, x8, 60592	# 265
	fsw		f1, 0(x8)	# 265
	lw		x8, 28(x4)	# 644
	lw		x12, 4(x4)	# 585
	mul		x11, x30, x11	# 2195
	addi	x11, x11, 60716	# 2195
	lw		x11, 0(x11)	# 2195
	mul		x13, x30, x5	# 2196
	add		x8, x8, x13	# 2196
	lw		x8, 0(x8)	# 2196
	mul		x13, x30, x5	# 2197
	add		x12, x12, x13	# 2197
	lw		x12, 0(x12)	# 2197
	addi	x13, x0, 0	# 275
	addi	x14, x0, 0	# 275
	mul		x14, x30, x14	# 275
	add		x14, x12, x14	# 275
	flw		f1, 0(x14)	# 275
	mul		x13, x30, x13	# 275
	addi	x13, x13, 60648	# 275
	fsw		f1, 0(x13)	# 275
	addi	x13, x0, 1	# 276
	addi	x14, x0, 1	# 276
	mul		x14, x30, x14	# 276
	add		x14, x12, x14	# 276
	flw		f1, 0(x14)	# 276
	mul		x13, x30, x13	# 276
	addi	x13, x13, 60648	# 276
	fsw		f1, 0(x13)	# 276
	addi	x13, x0, 2	# 277
	mul		x14, x30, x13	# 277
	add		x14, x12, x14	# 277
	flw		f1, 0(x14)	# 277
	mul		x13, x30, x13	# 277
	addi	x13, x13, 60648	# 277
	fsw		f1, 0(x13)	# 277
	mul		x9, x30, x9	# 1331
	addi	x9, x9, 60000	# 1331
	lw		x9, 0(x9)	# 1331
	sub		x9, x9, x10	# 1331
	sw		x4, -12(x2)	# 1331
	sw		x12, -16(x2)	# 1331
	sw		x8, -20(x2)	# 1331
	sw		x11, -24(x2)	# 1331
	sw		x7, -28(x2)	# 1331
	addi	x5, x9, 0
	addi	x4, x12, 0
	addi	x29, x6, 0
	sw		x1, -32(x2)	# 1331
	addi	x2, x2, -36	# 1331
	lw		x31, 0(x29)	# 1331
	jalr	x1, x31, 0	# 1331
	addi	x2, x2, 36	# 1331
	lw		x1, -32(x2)	# 1331
	addi	x7, x0, 118	# 1980
	lw		x4, -24(x2)	# 1980
	lw		x5, -20(x2)	# 1980
	lw		x6, -16(x2)	# 1980
	lw		x29, -28(x2)	# 1980
	sw		x1, -32(x2)	# 1980
	addi	x2, x2, -36	# 1980
	lw		x31, 0(x29)	# 1980
	jalr	x1, x31, 0	# 1980
	addi	x2, x2, 36	# 1980
	lw		x1, -32(x2)	# 1980
	lw		x4, -12(x2)	# 614
	lw		x5, 20(x4)	# 614
	lw		x6, -8(x2)	# 2199
	mul		x7, x30, x6	# 2199
	add		x5, x5, x7	# 2199
	lw		x5, 0(x5)	# 2199
	addi	x7, x0, 0	# 275
	addi	x8, x0, 0	# 275
	mul		x8, x30, x8	# 275
	addi	x8, x8, 60592	# 275
	flw		f1, 0(x8)	# 275
	mul		x7, x30, x7	# 275
	add		x7, x5, x7	# 275
	fsw		f1, 0(x7)	# 275
	addi	x7, x0, 1	# 276
	addi	x8, x0, 1	# 276
	mul		x8, x30, x8	# 276
	addi	x8, x8, 60592	# 276
	flw		f1, 0(x8)	# 276
	mul		x7, x30, x7	# 276
	add		x7, x5, x7	# 276
	fsw		f1, 0(x7)	# 276
	addi	x7, x0, 2	# 277
	mul		x8, x30, x7	# 277
	addi	x8, x8, 60592	# 277
	flw		f1, 0(x8)	# 277
	mul		x7, x30, x7	# 277
	add		x5, x5, x7	# 277
	fsw		f1, 0(x5)	# 277
beq_cont.32432:
	lw		x5, -4(x2)	# 2201
	lw		x6, -8(x2)	# 2201
	add		x5, x6, x5	# 2201
	lw		x29, 0(x2)	# 2201
	lw		x31, 0(x29)	# 2201
	jalr	x0, x31, 0	# 2201
pretrace_pixels.2960.17832:
	lw		x7, 32(x29)	# 2209
	lw		x8, 28(x29)	# 2209
	lw		x9, 24(x29)	# 2209
	lw		x10, 20(x29)	# 2209
	lw		x11, 16(x29)	# 2209
	lw		x12, 12(x29)	# 2209
	lw		x13, 8(x29)	# 2209
	flw		f4, 4(x29)	# 2209
	ble		x12, x5, ble.32433	# 2209
	jalr	x0, x1, 0	# 2229
ble.32433:
	mul		x14, x30, x12	# 2211
	addi	x14, x14, 60632	# 2211
	flw		f5, 0(x14)	# 2211
	mul		x14, x30, x12	# 2211
	addi	x14, x14, 60624	# 2211
	lw		x14, 0(x14)	# 2211
	sub		x14, x5, x14	# 2211
	sw		x29, 0(x2)	# 2211
	sw		x10, -4(x2)	# 2211
	sw		x8, -8(x2)	# 2211
	sw		x6, -12(x2)	# 2211
	sw		x7, -16(x2)	# 2211
	sw		x4, -20(x2)	# 2211
	sw		x5, -24(x2)	# 2211
	fsw		f4, -28(x2)	# 2211
	fsw		f3, -32(x2)	# 2211
	sw		x11, -36(x2)	# 2211
	fsw		f2, -40(x2)	# 2211
	sw		x13, -44(x2)	# 2211
	fsw		f1, -48(x2)	# 2211
	sw		x12, -52(x2)	# 2211
	fsw		f5, -56(x2)	# 2211
	addi	x4, x14, 0
	addi	x29, x9, 0
	sw		x1, -60(x2)	# 2211
	addi	x2, x2, -64	# 2211
	lw		x31, 0(x29)	# 2211
	jalr	x1, x31, 0	# 2211
	addi	x2, x2, 64	# 2211
	lw		x1, -60(x2)	# 2211
	flw		f2, -56(x2)	# 2211
	fmul	f1, f2, f1	# 2211
	lw		x4, -52(x2)	# 2212
	mul		x5, x30, x4	# 2212
	addi	x5, x5, 60660	# 2212
	flw		f2, 0(x5)	# 2212
	fmul	f2, f1, f2	# 2212
	flw		f3, -48(x2)	# 2212
	fadd	f2, f2, f3	# 2212
	mul		x5, x30, x4	# 2212
	addi	x5, x5, 60696	# 2212
	fsw		f2, 0(x5)	# 2212
	lw		x5, -44(x2)	# 2213
	mul		x6, x30, x5	# 2213
	addi	x6, x6, 60660	# 2213
	flw		f2, 0(x6)	# 2213
	fmul	f2, f1, f2	# 2213
	flw		f4, -40(x2)	# 2213
	fadd	f2, f2, f4	# 2213
	mul		x6, x30, x5	# 2213
	addi	x6, x6, 60696	# 2213
	fsw		f2, 0(x6)	# 2213
	lw		x6, -36(x2)	# 2214
	mul		x7, x30, x6	# 2214
	addi	x7, x7, 60660	# 2214
	flw		f2, 0(x7)	# 2214
	fmul	f1, f1, f2	# 2214
	flw		f2, -32(x2)	# 2214
	fadd	f1, f1, f2	# 2214
	mul		x7, x30, x6	# 2214
	addi	x7, x7, 60696	# 2214
	fsw		f1, 0(x7)	# 2214
	mul		x7, x30, x4	# 299
	addi	x7, x7, 60696	# 299
	flw		f1, 0(x7)	# 299
	fmul	f1, f1, f1	# 127
	mul		x7, x30, x5	# 299
	addi	x7, x7, 60696	# 299
	flw		f5, 0(x7)	# 299
	fmul	f5, f5, f5	# 127
	fadd	f1, f1, f5	# 299
	mul		x7, x30, x6	# 299
	addi	x7, x7, 60696	# 299
	flw		f5, 0(x7)	# 299
	fmul	f5, f5, f5	# 127
	fadd	f1, f1, f5	# 299
	fsqrt	f1, f1	# 299
	flw		f5, -28(x2)	# 120
	feq		x31, f1, f5	# 120
	beq		x31, x0, feq_else.32436	# 120
	fadd	f1, f0, f16	# 300
	jal		x0, feq_cont.32435	# 120
feq_else.32436:
	fadd	f6, f0, f16	# 300
	fdiv	f1, f6, f1	# 300
feq_cont.32435:
	mul		x7, x30, x4	# 301
	addi	x7, x7, 60696	# 301
	flw		f6, 0(x7)	# 301
	fmul	f6, f6, f1	# 301
	mul		x7, x30, x4	# 301
	addi	x7, x7, 60696	# 301
	fsw		f6, 0(x7)	# 301
	mul		x7, x30, x5	# 302
	addi	x7, x7, 60696	# 302
	flw		f6, 0(x7)	# 302
	fmul	f6, f6, f1	# 302
	mul		x7, x30, x5	# 302
	addi	x7, x7, 60696	# 302
	fsw		f6, 0(x7)	# 302
	mul		x7, x30, x6	# 303
	addi	x7, x7, 60696	# 303
	flw		f6, 0(x7)	# 303
	fmul	f1, f6, f1	# 303
	mul		x7, x30, x6	# 303
	addi	x7, x7, 60696	# 303
	fsw		f1, 0(x7)	# 303
	mul		x7, x30, x4	# 263
	addi	x7, x7, 60604	# 263
	fsw		f5, 0(x7)	# 263
	mul		x7, x30, x5	# 264
	addi	x7, x7, 60604	# 264
	fsw		f5, 0(x7)	# 264
	mul		x7, x30, x6	# 265
	addi	x7, x7, 60604	# 265
	fsw		f5, 0(x7)	# 265
	mul		x7, x30, x4	# 275
	addi	x7, x7, 60300	# 275
	flw		f1, 0(x7)	# 275
	mul		x7, x30, x4	# 275
	addi	x7, x7, 60636	# 275
	fsw		f1, 0(x7)	# 275
	mul		x7, x30, x5	# 276
	addi	x7, x7, 60300	# 276
	flw		f1, 0(x7)	# 276
	mul		x7, x30, x5	# 276
	addi	x7, x7, 60636	# 276
	fsw		f1, 0(x7)	# 276
	mul		x7, x30, x6	# 277
	addi	x7, x7, 60300	# 277
	flw		f1, 0(x7)	# 277
	mul		x7, x30, x6	# 277
	addi	x7, x7, 60636	# 277
	fsw		f1, 0(x7)	# 277
	fadd	f1, f0, f16	# 2220
	lw		x7, -24(x2)	# 2220
	mul		x8, x30, x7	# 2220
	lw		x9, -20(x2)	# 2220
	add		x8, x9, x8	# 2220
	lw		x8, 0(x8)	# 2220
	addi	x10, x0, 60696	# 2220
	lw		x29, -16(x2)	# 2220
	addi	x6, x8, 0
	addi	x5, x10, 0
	fadd	f2, f0, f5
	sw		x1, -60(x2)	# 2220
	addi	x2, x2, -64	# 2220
	lw		x31, 0(x29)	# 2220
	jalr	x1, x31, 0	# 2220
	addi	x2, x2, 64	# 2220
	lw		x1, -60(x2)	# 2220
	lw		x4, -24(x2)	# 2221
	mul		x5, x30, x4	# 2221
	lw		x6, -20(x2)	# 2221
	add		x5, x6, x5	# 2221
	lw		x5, 0(x5)	# 2221
	lw		x5, 0(x5)	# 578
	lw		x7, -52(x2)	# 275
	mul		x8, x30, x7	# 275
	addi	x8, x8, 60604	# 275
	flw		f1, 0(x8)	# 275
	mul		x8, x30, x7	# 275
	add		x8, x5, x8	# 275
	fsw		f1, 0(x8)	# 275
	lw		x8, -44(x2)	# 276
	mul		x9, x30, x8	# 276
	addi	x9, x9, 60604	# 276
	flw		f1, 0(x9)	# 276
	mul		x9, x30, x8	# 276
	add		x9, x5, x9	# 276
	fsw		f1, 0(x9)	# 276
	lw		x9, -36(x2)	# 277
	mul		x10, x30, x9	# 277
	addi	x10, x10, 60604	# 277
	flw		f1, 0(x10)	# 277
	mul		x9, x30, x9	# 277
	add		x5, x5, x9	# 277
	fsw		f1, 0(x5)	# 277
	mul		x5, x30, x4	# 2222
	add		x5, x6, x5	# 2222
	lw		x5, 0(x5)	# 2222
	lw		x5, 24(x5)	# 637
	mul		x9, x30, x7	# 639
	add		x5, x5, x9	# 639
	lw		x9, -12(x2)	# 639
	sw		x9, 0(x5)	# 639
	mul		x5, x30, x4	# 2225
	add		x5, x6, x5	# 2225
	lw		x5, 0(x5)	# 2225
	lw		x29, -8(x2)	# 2225
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -60(x2)	# 2225
	addi	x2, x2, -64	# 2225
	lw		x31, 0(x29)	# 2225
	jalr	x1, x31, 0	# 2225
	addi	x2, x2, 64	# 2225
	lw		x1, -60(x2)	# 2225
	lw		x4, -44(x2)	# 2227
	lw		x5, -24(x2)	# 2227
	sub		x5, x5, x4	# 2227
	lw		x6, -12(x2)	# 240
	add		x4, x6, x4	# 240
	lw		x6, -4(x2)	# 241
	ble		x6, x4, ble.32438	# 241
	addi	x6, x4, 0	# 241
	jal		x0, ble_cont.32437	# 241
ble.32438:
	sub		x6, x4, x6	# 241
ble_cont.32437:
	flw		f1, -48(x2)	# 2227
	flw		f2, -40(x2)	# 2227
	flw		f3, -32(x2)	# 2227
	lw		x4, -20(x2)	# 2227
	lw		x29, 0(x2)	# 2227
	lw		x31, 0(x29)	# 2227
	jalr	x0, x31, 0	# 2227
scan_pixel.2971.17839:
	lw		x10, 28(x29)	# 2250
	lw		x11, 24(x29)	# 2250
	lw		x12, 20(x29)	# 2250
	lw		x13, 16(x29)	# 2250
	lw		x14, 12(x29)	# 2250
	lw		x15, 8(x29)	# 2250
	lw		x16, 4(x29)	# 2250
	mul		x17, x30, x15	# 2250
	addi	x17, x17, 60616	# 2250
	lw		x17, 0(x17)	# 2250
	ble		x17, x4, ble.32439	# 2250
	mul		x17, x30, x4	# 2253
	add		x17, x7, x17	# 2253
	lw		x17, 0(x17)	# 2253
	lw		x17, 0(x17)	# 578
	mul		x18, x30, x15	# 275
	add		x18, x17, x18	# 275
	flw		f1, 0(x18)	# 275
	mul		x18, x30, x15	# 275
	addi	x18, x18, 60604	# 275
	fsw		f1, 0(x18)	# 275
	mul		x18, x30, x16	# 276
	add		x18, x17, x18	# 276
	flw		f1, 0(x18)	# 276
	mul		x18, x30, x16	# 276
	addi	x18, x18, 60604	# 276
	fsw		f1, 0(x18)	# 276
	mul		x18, x30, x13	# 277
	add		x17, x17, x18	# 277
	flw		f1, 0(x17)	# 277
	mul		x13, x30, x13	# 277
	addi	x13, x13, 60604	# 277
	fsw		f1, 0(x13)	# 277
	mul		x13, x30, x16	# 2066
	addi	x13, x13, 60616	# 2066
	lw		x13, 0(x13)	# 2066
	add		x17, x5, x16	# 2066
	ble		x13, x17, ble.32441	# 2066
	ble		x5, x15, ble.32443	# 2067
	mul		x13, x30, x15	# 2068
	addi	x13, x13, 60616	# 2068
	lw		x13, 0(x13)	# 2068
	add		x17, x4, x16	# 2068
	ble		x13, x17, ble.32445	# 2068
	ble		x4, x15, ble.32447	# 2069
	addi	x13, x0, 1	# 2070
	jal		x0, ble_cont.32446	# 2069
ble.32447:
	addi	x13, x0, 0	# 2071
ble_cont.32446:
	jal		x0, ble_cont.32444	# 2068
ble.32445:
	addi	x13, x0, 0	# 2072
ble_cont.32444:
	jal		x0, ble_cont.32442	# 2067
ble.32443:
	addi	x13, x0, 0	# 2073
ble_cont.32442:
	jal		x0, ble_cont.32440	# 2066
ble.32441:
	addi	x13, x0, 0	# 2074
ble_cont.32440:
	sw		x8, 0(x2)	# 2256
	sw		x7, -4(x2)	# 2256
	sw		x6, -8(x2)	# 2256
	sw		x5, -12(x2)	# 2256
	sw		x29, -16(x2)	# 2256
	sw		x16, -20(x2)	# 2256
	sw		x4, -24(x2)	# 2256
	sw		x15, -28(x2)	# 2256
	sw		x11, -32(x2)	# 2256
	sw		x14, -36(x2)	# 2256
	sw		x9, -40(x2)	# 2256
	beq		x13, x15, beq.32449	# 2256
	addi	x12, x0, 0	# 2257
	addi	x9, x12, 0
	addi	x29, x10, 0
	sw		x1, -44(x2)	# 2257
	addi	x2, x2, -48	# 2257
	lw		x31, 0(x29)	# 2257
	jalr	x1, x31, 0	# 2257
	addi	x2, x2, 48	# 2257
	lw		x1, -44(x2)	# 2257
	jal		x0, beq_cont.32448	# 2256
beq.32449:
	mul		x10, x30, x4	# 2259
	add		x10, x7, x10	# 2259
	lw		x10, 0(x10)	# 2259
	addi	x13, x0, 0	# 2259
	addi	x5, x13, 0
	addi	x4, x10, 0
	addi	x29, x12, 0
	sw		x1, -44(x2)	# 2259
	addi	x2, x2, -48	# 2259
	lw		x31, 0(x29)	# 2259
	jalr	x1, x31, 0	# 2259
	addi	x2, x2, 48	# 2259
	lw		x1, -44(x2)	# 2259
beq_cont.32448:
	lw		x4, -36(x2)	# 2156
	lw		x5, -40(x2)	# 2156
	beq		x5, x4, beq.32451	# 2156
	addi	x4, x0, 0	# 2164
	mul		x4, x30, x4	# 2164
	addi	x4, x4, 60604	# 2164
	flw		f1, 0(x4)	# 2164
	lw		x29, -32(x2)	# 2150
	sw		x1, -44(x2)	# 2150
	addi	x2, x2, -48	# 2150
	lw		x31, 0(x29)	# 2150
	jalr	x1, x31, 0	# 2150
	addi	x2, x2, 48	# 2150
	lw		x1, -44(x2)	# 2150
	addi	x5, x0, 255	# 2151
	ble		x4, x5, ble.32453	# 2151
	addi	x4, x0, 255	# 2151
	jal		x0, ble_cont.32452	# 2151
ble.32453:
	lw		x5, -28(x2)	# 2151
	ble		x5, x4, ble_cont.32454	# 2151
	addi	x4, x0, 0	# 2151
ble_cont.32454:
ble_cont.32452:
	sw		x1, -44(x2)	# 2152
	addi	x2, x2, -48	# 2152
	jal		x1, min_caml_print_char	# 2152
	addi	x2, x2, 48	# 2152
	lw		x1, -44(x2)	# 2152
	addi	x4, x0, 1	# 2165
	mul		x4, x30, x4	# 2165
	addi	x4, x4, 60604	# 2165
	flw		f1, 0(x4)	# 2165
	lw		x29, -32(x2)	# 2150
	sw		x1, -44(x2)	# 2150
	addi	x2, x2, -48	# 2150
	lw		x31, 0(x29)	# 2150
	jalr	x1, x31, 0	# 2150
	addi	x2, x2, 48	# 2150
	lw		x1, -44(x2)	# 2150
	addi	x5, x0, 255	# 2151
	ble		x4, x5, ble.32456	# 2151
	addi	x4, x0, 255	# 2151
	jal		x0, ble_cont.32455	# 2151
ble.32456:
	lw		x5, -28(x2)	# 2151
	ble		x5, x4, ble_cont.32457	# 2151
	addi	x4, x0, 0	# 2151
ble_cont.32457:
ble_cont.32455:
	sw		x1, -44(x2)	# 2152
	addi	x2, x2, -48	# 2152
	jal		x1, min_caml_print_char	# 2152
	addi	x2, x2, 48	# 2152
	lw		x1, -44(x2)	# 2152
	addi	x4, x0, 2	# 2166
	mul		x4, x30, x4	# 2166
	addi	x4, x4, 60604	# 2166
	flw		f1, 0(x4)	# 2166
	lw		x29, -32(x2)	# 2150
	sw		x1, -44(x2)	# 2150
	addi	x2, x2, -48	# 2150
	lw		x31, 0(x29)	# 2150
	jalr	x1, x31, 0	# 2150
	addi	x2, x2, 48	# 2150
	lw		x1, -44(x2)	# 2150
	addi	x5, x0, 255	# 2151
	ble		x4, x5, ble.32459	# 2151
	addi	x4, x0, 255	# 2151
	jal		x0, ble_cont.32458	# 2151
ble.32459:
	lw		x5, -28(x2)	# 2151
	ble		x5, x4, ble_cont.32460	# 2151
	addi	x4, x0, 0	# 2151
ble_cont.32460:
ble_cont.32458:
	sw		x1, -44(x2)	# 2152
	addi	x2, x2, -48	# 2152
	jal		x1, min_caml_print_char	# 2152
	addi	x2, x2, 48	# 2152
	lw		x1, -44(x2)	# 2152
	jal		x0, beq_cont.32450	# 2156
beq.32451:
	addi	x4, x0, 0	# 2157
	mul		x4, x30, x4	# 2157
	addi	x4, x4, 60604	# 2157
	flw		f1, 0(x4)	# 2157
	lw		x29, -32(x2)	# 2144
	sw		x1, -44(x2)	# 2144
	addi	x2, x2, -48	# 2144
	lw		x31, 0(x29)	# 2144
	jalr	x1, x31, 0	# 2144
	addi	x2, x2, 48	# 2144
	lw		x1, -44(x2)	# 2144
	addi	x5, x0, 255	# 2145
	ble		x4, x5, ble.32462	# 2145
	addi	x4, x0, 255	# 2145
	jal		x0, ble_cont.32461	# 2145
ble.32462:
	lw		x5, -28(x2)	# 2145
	ble		x5, x4, ble_cont.32463	# 2145
	addi	x4, x0, 0	# 2145
ble_cont.32463:
ble_cont.32461:
	sw		x1, -44(x2)	# 2146
	addi	x2, x2, -48	# 2146
	jal		x1, min_caml_print_int	# 2146
	addi	x2, x2, 48	# 2146
	lw		x1, -44(x2)	# 2146
	addi	x4, x0, 32	# 2158
	sw		x1, -44(x2)	# 2158
	addi	x2, x2, -48	# 2158
	jal		x1, min_caml_print_char	# 2158
	addi	x2, x2, 48	# 2158
	lw		x1, -44(x2)	# 2158
	addi	x4, x0, 1	# 2159
	mul		x4, x30, x4	# 2159
	addi	x4, x4, 60604	# 2159
	flw		f1, 0(x4)	# 2159
	lw		x29, -32(x2)	# 2144
	sw		x1, -44(x2)	# 2144
	addi	x2, x2, -48	# 2144
	lw		x31, 0(x29)	# 2144
	jalr	x1, x31, 0	# 2144
	addi	x2, x2, 48	# 2144
	lw		x1, -44(x2)	# 2144
	addi	x5, x0, 255	# 2145
	ble		x4, x5, ble.32465	# 2145
	addi	x4, x0, 255	# 2145
	jal		x0, ble_cont.32464	# 2145
ble.32465:
	lw		x5, -28(x2)	# 2145
	ble		x5, x4, ble_cont.32466	# 2145
	addi	x4, x0, 0	# 2145
ble_cont.32466:
ble_cont.32464:
	sw		x1, -44(x2)	# 2146
	addi	x2, x2, -48	# 2146
	jal		x1, min_caml_print_int	# 2146
	addi	x2, x2, 48	# 2146
	lw		x1, -44(x2)	# 2146
	addi	x4, x0, 32	# 2160
	sw		x1, -44(x2)	# 2160
	addi	x2, x2, -48	# 2160
	jal		x1, min_caml_print_char	# 2160
	addi	x2, x2, 48	# 2160
	lw		x1, -44(x2)	# 2160
	addi	x4, x0, 2	# 2161
	mul		x4, x30, x4	# 2161
	addi	x4, x4, 60604	# 2161
	flw		f1, 0(x4)	# 2161
	lw		x29, -32(x2)	# 2144
	sw		x1, -44(x2)	# 2144
	addi	x2, x2, -48	# 2144
	lw		x31, 0(x29)	# 2144
	jalr	x1, x31, 0	# 2144
	addi	x2, x2, 48	# 2144
	lw		x1, -44(x2)	# 2144
	addi	x5, x0, 255	# 2145
	ble		x4, x5, ble.32468	# 2145
	addi	x4, x0, 255	# 2145
	jal		x0, ble_cont.32467	# 2145
ble.32468:
	lw		x5, -28(x2)	# 2145
	ble		x5, x4, ble_cont.32469	# 2145
	addi	x4, x0, 0	# 2145
ble_cont.32469:
ble_cont.32467:
	sw		x1, -44(x2)	# 2146
	addi	x2, x2, -48	# 2146
	jal		x1, min_caml_print_int	# 2146
	addi	x2, x2, 48	# 2146
	lw		x1, -44(x2)	# 2146
	addi	x4, x0, 10	# 2162
	sw		x1, -44(x2)	# 2162
	addi	x2, x2, -48	# 2162
	jal		x1, min_caml_print_char	# 2162
	addi	x2, x2, 48	# 2162
	lw		x1, -44(x2)	# 2162
beq_cont.32450:
	lw		x4, -20(x2)	# 2264
	lw		x5, -24(x2)	# 2264
	add		x4, x5, x4	# 2264
	lw		x5, -12(x2)	# 2264
	lw		x6, -8(x2)	# 2264
	lw		x7, -4(x2)	# 2264
	lw		x8, 0(x2)	# 2264
	lw		x9, -40(x2)	# 2264
	lw		x29, -16(x2)	# 2264
	lw		x31, 0(x29)	# 2264
	jalr	x0, x31, 0	# 2264
ble.32439:
	jalr	x0, x1, 0	# 2265
scan_line.2978.17846:
	lw		x10, 28(x29)	# 2271
	lw		x11, 24(x29)	# 2271
	lw		x12, 20(x29)	# 2271
	lw		x13, 16(x29)	# 2271
	lw		x14, 12(x29)	# 2271
	lw		x15, 8(x29)	# 2271
	lw		x16, 4(x29)	# 2271
	mul		x17, x30, x16	# 2271
	addi	x17, x17, 60616	# 2271
	lw		x17, 0(x17)	# 2271
	ble		x17, x4, ble.32471	# 2271
	sub		x17, x17, x16	# 2273
	sw		x29, 0(x2)	# 2273
	sw		x13, -4(x2)	# 2273
	sw		x14, -8(x2)	# 2273
	sw		x8, -12(x2)	# 2273
	sw		x16, -16(x2)	# 2273
	sw		x9, -20(x2)	# 2273
	sw		x7, -24(x2)	# 2273
	sw		x6, -28(x2)	# 2273
	sw		x5, -32(x2)	# 2273
	sw		x4, -36(x2)	# 2273
	sw		x15, -40(x2)	# 2273
	sw		x10, -44(x2)	# 2273
	ble		x17, x4, ble_cont.32472	# 2273
	addi	x17, x4, 1	# 2274
	addi	x18, x0, 0	# 2234
	mul		x18, x30, x18	# 2234
	addi	x18, x18, 60632	# 2234
	flw		f1, 0(x18)	# 2234
	addi	x18, x0, 1	# 2234
	mul		x18, x30, x18	# 2234
	addi	x18, x18, 60624	# 2234
	lw		x18, 0(x18)	# 2234
	sub		x17, x17, x18	# 2234
	sw		x11, -48(x2)	# 2234
	fsw		f1, -52(x2)	# 2234
	addi	x4, x17, 0
	addi	x29, x12, 0
	sw		x1, -56(x2)	# 2234
	addi	x2, x2, -60	# 2234
	lw		x31, 0(x29)	# 2234
	jalr	x1, x31, 0	# 2234
	addi	x2, x2, 60	# 2234
	lw		x1, -56(x2)	# 2234
	flw		f2, -52(x2)	# 2234
	fmul	f1, f2, f1	# 2234
	addi	x4, x0, 0	# 2237
	mul		x4, x30, x4	# 2237
	addi	x4, x4, 60672	# 2237
	flw		f2, 0(x4)	# 2237
	fmul	f2, f1, f2	# 2237
	addi	x4, x0, 0	# 2237
	mul		x4, x30, x4	# 2237
	addi	x4, x4, 60684	# 2237
	flw		f3, 0(x4)	# 2237
	fadd	f2, f2, f3	# 2237
	addi	x4, x0, 1	# 2238
	mul		x4, x30, x4	# 2238
	addi	x4, x4, 60672	# 2238
	flw		f3, 0(x4)	# 2238
	fmul	f3, f1, f3	# 2238
	addi	x4, x0, 1	# 2238
	mul		x4, x30, x4	# 2238
	addi	x4, x4, 60684	# 2238
	flw		f4, 0(x4)	# 2238
	fadd	f3, f3, f4	# 2238
	addi	x4, x0, 2	# 2239
	mul		x4, x30, x4	# 2239
	addi	x4, x4, 60672	# 2239
	flw		f4, 0(x4)	# 2239
	fmul	f1, f1, f4	# 2239
	addi	x4, x0, 2	# 2239
	mul		x4, x30, x4	# 2239
	addi	x4, x4, 60684	# 2239
	flw		f4, 0(x4)	# 2239
	fadd	f1, f1, f4	# 2239
	addi	x4, x0, 0	# 2240
	mul		x4, x30, x4	# 2240
	addi	x4, x4, 60616	# 2240
	lw		x4, 0(x4)	# 2240
	addi	x5, x0, 1	# 2240
	sub		x5, x4, x5	# 2240
	lw		x4, -24(x2)	# 2240
	lw		x6, -12(x2)	# 2240
	lw		x29, -48(x2)	# 2240
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -56(x2)	# 2240
	addi	x2, x2, -60	# 2240
	lw		x31, 0(x29)	# 2240
	jalr	x1, x31, 0	# 2240
	addi	x2, x2, 60	# 2240
	lw		x1, -56(x2)	# 2240
ble_cont.32472:
	lw		x4, -40(x2)	# 2276
	lw		x5, -36(x2)	# 2276
	lw		x6, -32(x2)	# 2276
	lw		x7, -28(x2)	# 2276
	lw		x8, -24(x2)	# 2276
	lw		x9, -20(x2)	# 2276
	lw		x29, -44(x2)	# 2276
	sw		x1, -56(x2)	# 2276
	addi	x2, x2, -60	# 2276
	lw		x31, 0(x29)	# 2276
	jalr	x1, x31, 0	# 2276
	addi	x2, x2, 60	# 2276
	lw		x1, -56(x2)	# 2276
	lw		x4, -16(x2)	# 2277
	lw		x5, -36(x2)	# 2277
	add		x4, x5, x4	# 2277
	lw		x5, -8(x2)	# 240
	lw		x6, -12(x2)	# 240
	add		x5, x6, x5	# 240
	lw		x6, -4(x2)	# 241
	ble		x6, x5, ble.32474	# 241
	addi	x8, x5, 0	# 241
	jal		x0, ble_cont.32473	# 241
ble.32474:
	sub		x8, x5, x6	# 241
ble_cont.32473:
	lw		x5, -28(x2)	# 2277
	lw		x6, -24(x2)	# 2277
	lw		x7, -32(x2)	# 2277
	lw		x9, -20(x2)	# 2277
	lw		x29, 0(x2)	# 2277
	lw		x31, 0(x29)	# 2277
	jalr	x0, x31, 0	# 2277
ble.32471:
	jalr	x0, x1, 0	# 2278
init_line_elements.2989.17853:
	lw		x6, 24(x29)	# 2313
	lw		x7, 20(x29)	# 2313
	lw		x8, 16(x29)	# 2313
	lw		x9, 12(x29)	# 2313
	lw		x10, 8(x29)	# 2313
	flw		f1, 4(x29)	# 2313
	ble		x9, x5, ble.32476	# 2313
	jalr	x0, x1, 0	# 2317
ble.32476:
	sw		x29, 0(x2)	# 2300
	sw		x4, -4(x2)	# 2300
	sw		x5, -8(x2)	# 2300
	sw		x9, -12(x2)	# 2300
	sw		x7, -16(x2)	# 2300
	sw		x10, -20(x2)	# 2300
	sw		x6, -24(x2)	# 2300
	fsw		f1, -28(x2)	# 2300
	sw		x8, -32(x2)	# 2300
	addi	x4, x8, 0
	sw		x1, -36(x2)	# 2300
	addi	x2, x2, -40	# 2300
	jal		x1, min_caml_create_float_array	# 2300
	addi	x2, x2, 40	# 2300
	lw		x1, -36(x2)	# 2300
	flw		f1, -28(x2)	# 2288
	lw		x5, -32(x2)	# 2288
	sw		x4, -36(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -40(x2)	# 2288
	addi	x2, x2, -44	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 44	# 2288
	lw		x1, -40(x2)	# 2288
	addi	x5, x4, 0	# 2288
	lw		x4, -24(x2)	# 2289
	sw		x1, -40(x2)	# 2289
	addi	x2, x2, -44	# 2289
	jal		x1, min_caml_create_array	# 2289
	addi	x2, x2, 44	# 2289
	lw		x1, -40(x2)	# 2289
	flw		f1, -28(x2)	# 2290
	lw		x5, -32(x2)	# 2290
	sw		x4, -40(x2)	# 2290
	addi	x4, x5, 0
	sw		x1, -44(x2)	# 2290
	addi	x2, x2, -48	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 48	# 2290
	lw		x1, -44(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -40(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -28(x2)	# 2291
	lw		x4, -32(x2)	# 2291
	sw		x1, -44(x2)	# 2291
	addi	x2, x2, -48	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 48	# 2291
	lw		x1, -44(x2)	# 2291
	lw		x5, -16(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -40(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	flw		f1, -28(x2)	# 2292
	lw		x4, -32(x2)	# 2292
	sw		x1, -44(x2)	# 2292
	addi	x2, x2, -48	# 2292
	jal		x1, min_caml_create_float_array	# 2292
	addi	x2, x2, 48	# 2292
	lw		x1, -44(x2)	# 2292
	lw		x5, -32(x2)	# 2292
	mul		x6, x30, x5	# 2292
	lw		x7, -40(x2)	# 2292
	add		x6, x7, x6	# 2292
	sw		x4, 0(x6)	# 2292
	addi	x4, x0, 4	# 2293
	flw		f1, -28(x2)	# 2293
	sw		x4, -44(x2)	# 2293
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 2293
	addi	x2, x2, -52	# 2293
	jal		x1, min_caml_create_float_array	# 2293
	addi	x2, x2, 52	# 2293
	lw		x1, -48(x2)	# 2293
	lw		x5, -44(x2)	# 2293
	mul		x6, x30, x5	# 2293
	lw		x7, -40(x2)	# 2293
	add		x6, x7, x6	# 2293
	sw		x4, 0(x6)	# 2293
	lw		x4, -24(x2)	# 2302
	lw		x6, -12(x2)	# 2302
	addi	x5, x6, 0
	sw		x1, -48(x2)	# 2302
	addi	x2, x2, -52	# 2302
	jal		x1, min_caml_create_array	# 2302
	addi	x2, x2, 52	# 2302
	lw		x1, -48(x2)	# 2302
	lw		x5, -24(x2)	# 2303
	lw		x6, -12(x2)	# 2303
	sw		x4, -48(x2)	# 2303
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -52(x2)	# 2303
	addi	x2, x2, -56	# 2303
	jal		x1, min_caml_create_array	# 2303
	addi	x2, x2, 56	# 2303
	lw		x1, -52(x2)	# 2303
	flw		f1, -28(x2)	# 2288
	lw		x5, -32(x2)	# 2288
	sw		x4, -52(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -56(x2)	# 2288
	addi	x2, x2, -60	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 60	# 2288
	lw		x1, -56(x2)	# 2288
	addi	x5, x4, 0	# 2288
	lw		x4, -24(x2)	# 2289
	sw		x1, -56(x2)	# 2289
	addi	x2, x2, -60	# 2289
	jal		x1, min_caml_create_array	# 2289
	addi	x2, x2, 60	# 2289
	lw		x1, -56(x2)	# 2289
	flw		f1, -28(x2)	# 2290
	lw		x5, -32(x2)	# 2290
	sw		x4, -56(x2)	# 2290
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 2290
	addi	x2, x2, -64	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 64	# 2290
	lw		x1, -60(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -56(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -28(x2)	# 2291
	lw		x4, -32(x2)	# 2291
	sw		x1, -60(x2)	# 2291
	addi	x2, x2, -64	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 64	# 2291
	lw		x1, -60(x2)	# 2291
	lw		x5, -16(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -56(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	flw		f1, -28(x2)	# 2292
	lw		x4, -32(x2)	# 2292
	sw		x1, -60(x2)	# 2292
	addi	x2, x2, -64	# 2292
	jal		x1, min_caml_create_float_array	# 2292
	addi	x2, x2, 64	# 2292
	lw		x1, -60(x2)	# 2292
	lw		x5, -32(x2)	# 2292
	mul		x6, x30, x5	# 2292
	lw		x7, -56(x2)	# 2292
	add		x6, x7, x6	# 2292
	sw		x4, 0(x6)	# 2292
	flw		f1, -28(x2)	# 2293
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 2293
	addi	x2, x2, -64	# 2293
	jal		x1, min_caml_create_float_array	# 2293
	addi	x2, x2, 64	# 2293
	lw		x1, -60(x2)	# 2293
	lw		x5, -44(x2)	# 2293
	mul		x6, x30, x5	# 2293
	lw		x7, -56(x2)	# 2293
	add		x6, x7, x6	# 2293
	sw		x4, 0(x6)	# 2293
	flw		f1, -28(x2)	# 2288
	lw		x4, -32(x2)	# 2288
	sw		x1, -60(x2)	# 2288
	addi	x2, x2, -64	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 64	# 2288
	lw		x1, -60(x2)	# 2288
	addi	x5, x4, 0	# 2288
	lw		x4, -24(x2)	# 2289
	sw		x1, -60(x2)	# 2289
	addi	x2, x2, -64	# 2289
	jal		x1, min_caml_create_array	# 2289
	addi	x2, x2, 64	# 2289
	lw		x1, -60(x2)	# 2289
	flw		f1, -28(x2)	# 2290
	lw		x5, -32(x2)	# 2290
	sw		x4, -60(x2)	# 2290
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 2290
	addi	x2, x2, -68	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 68	# 2290
	lw		x1, -64(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -60(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -28(x2)	# 2291
	lw		x4, -32(x2)	# 2291
	sw		x1, -64(x2)	# 2291
	addi	x2, x2, -68	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 68	# 2291
	lw		x1, -64(x2)	# 2291
	lw		x5, -16(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -60(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	flw		f1, -28(x2)	# 2292
	lw		x4, -32(x2)	# 2292
	sw		x1, -64(x2)	# 2292
	addi	x2, x2, -68	# 2292
	jal		x1, min_caml_create_float_array	# 2292
	addi	x2, x2, 68	# 2292
	lw		x1, -64(x2)	# 2292
	lw		x5, -32(x2)	# 2292
	mul		x6, x30, x5	# 2292
	lw		x7, -60(x2)	# 2292
	add		x6, x7, x6	# 2292
	sw		x4, 0(x6)	# 2292
	flw		f1, -28(x2)	# 2293
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 2293
	addi	x2, x2, -68	# 2293
	jal		x1, min_caml_create_float_array	# 2293
	addi	x2, x2, 68	# 2293
	lw		x1, -64(x2)	# 2293
	lw		x5, -44(x2)	# 2293
	mul		x6, x30, x5	# 2293
	lw		x7, -60(x2)	# 2293
	add		x6, x7, x6	# 2293
	sw		x4, 0(x6)	# 2293
	lw		x4, -20(x2)	# 2306
	lw		x6, -12(x2)	# 2306
	addi	x5, x6, 0
	sw		x1, -64(x2)	# 2306
	addi	x2, x2, -68	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 68	# 2306
	lw		x1, -64(x2)	# 2306
	flw		f1, -28(x2)	# 2288
	lw		x5, -32(x2)	# 2288
	sw		x4, -64(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -68(x2)	# 2288
	addi	x2, x2, -72	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 72	# 2288
	lw		x1, -68(x2)	# 2288
	addi	x5, x4, 0	# 2288
	lw		x4, -24(x2)	# 2289
	sw		x1, -68(x2)	# 2289
	addi	x2, x2, -72	# 2289
	jal		x1, min_caml_create_array	# 2289
	addi	x2, x2, 72	# 2289
	lw		x1, -68(x2)	# 2289
	flw		f1, -28(x2)	# 2290
	lw		x5, -32(x2)	# 2290
	sw		x4, -68(x2)	# 2290
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 2290
	addi	x2, x2, -76	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 76	# 2290
	lw		x1, -72(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -68(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -28(x2)	# 2291
	lw		x4, -32(x2)	# 2291
	sw		x1, -72(x2)	# 2291
	addi	x2, x2, -76	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 76	# 2291
	lw		x1, -72(x2)	# 2291
	lw		x5, -16(x2)	# 2291
	mul		x5, x30, x5	# 2291
	lw		x6, -68(x2)	# 2291
	add		x5, x6, x5	# 2291
	sw		x4, 0(x5)	# 2291
	flw		f1, -28(x2)	# 2292
	lw		x4, -32(x2)	# 2292
	sw		x1, -72(x2)	# 2292
	addi	x2, x2, -76	# 2292
	jal		x1, min_caml_create_float_array	# 2292
	addi	x2, x2, 76	# 2292
	lw		x1, -72(x2)	# 2292
	lw		x5, -32(x2)	# 2292
	mul		x6, x30, x5	# 2292
	lw		x7, -68(x2)	# 2292
	add		x6, x7, x6	# 2292
	sw		x4, 0(x6)	# 2292
	flw		f1, -28(x2)	# 2293
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 2293
	addi	x2, x2, -76	# 2293
	jal		x1, min_caml_create_float_array	# 2293
	addi	x2, x2, 76	# 2293
	lw		x1, -72(x2)	# 2293
	lw		x5, -44(x2)	# 2293
	mul		x5, x30, x5	# 2293
	lw		x6, -68(x2)	# 2293
	add		x5, x6, x5	# 2293
	sw		x4, 0(x5)	# 2293
	addi	x4, x3, 0	# 2308
	addi	x3, x3, 32	# 2308
	sw		x6, 28(x4)	# 2308
	lw		x5, -64(x2)	# 2308
	sw		x5, 24(x4)	# 2308
	lw		x5, -60(x2)	# 2308
	sw		x5, 20(x4)	# 2308
	lw		x5, -56(x2)	# 2308
	sw		x5, 16(x4)	# 2308
	lw		x5, -52(x2)	# 2308
	sw		x5, 12(x4)	# 2308
	lw		x5, -48(x2)	# 2308
	sw		x5, 8(x4)	# 2308
	lw		x5, -40(x2)	# 2308
	sw		x5, 4(x4)	# 2308
	lw		x5, -36(x2)	# 2308
	sw		x5, 0(x4)	# 2308
	lw		x5, -8(x2)	# 2314
	mul		x6, x30, x5	# 2314
	lw		x7, -4(x2)	# 2314
	add		x6, x7, x6	# 2314
	sw		x4, 0(x6)	# 2314
	lw		x4, -20(x2)	# 2315
	sub		x5, x5, x4	# 2315
	lw		x29, 0(x2)	# 2315
	addi	x4, x7, 0
	lw		x31, 0(x29)	# 2315
	jalr	x0, x31, 0	# 2315
calc_dirvec.2999.17856:
	lw		x7, 28(x29)	# 2350
	lw		x8, 24(x29)	# 2350
	lw		x9, 20(x29)	# 2350
	lw		x10, 16(x29)	# 2350
	lw		x11, 12(x29)	# 2350
	lw		x12, 8(x29)	# 2350
	lw		x13, 4(x29)	# 2350
	ble		x10, x4, ble.32477	# 2350
	fmul	f1, f2, f2	# 2341
	lui		x10, %hi(l.27380)	# 2341
	ori		x10, x0, %lo(l.27380)	# 2341
	flw		f2, 0(x10)	# 2341
	fadd	f1, f1, f2	# 2341
	fsqrt	f1, f1	# 2341
	fadd	f5, f0, f16	# 2342
	fdiv	f6, f5, f1	# 2342
	sw		x6, 0(x2)	# 2343
	sw		x5, -4(x2)	# 2343
	sw		x29, -8(x2)	# 2343
	fsw		f4, -12(x2)	# 2343
	sw		x9, -16(x2)	# 2343
	fsw		f5, -20(x2)	# 2343
	fsw		f2, -24(x2)	# 2343
	sw		x13, -28(x2)	# 2343
	sw		x4, -32(x2)	# 2343
	fsw		f1, -36(x2)	# 2343
	sw		x8, -40(x2)	# 2343
	sw		x7, -44(x2)	# 2343
	fsw		f3, -48(x2)	# 2343
	addi	x29, x9, 0
	fadd	f1, f0, f6
	sw		x1, -52(x2)	# 2343
	addi	x2, x2, -56	# 2343
	lw		x31, 0(x29)	# 2343
	jalr	x1, x31, 0	# 2343
	addi	x2, x2, 56	# 2343
	lw		x1, -52(x2)	# 2343
	flw		f2, -48(x2)	# 2344
	fmul	f1, f1, f2	# 2344
	lw		x29, -44(x2)	# 2336
	fsw		f1, -52(x2)	# 2336
	sw		x1, -56(x2)	# 2336
	addi	x2, x2, -60	# 2336
	lw		x31, 0(x29)	# 2336
	jalr	x1, x31, 0	# 2336
	addi	x2, x2, 60	# 2336
	lw		x1, -56(x2)	# 2336
	flw		f2, -52(x2)	# 2336
	lw		x29, -40(x2)	# 2336
	fsw		f1, -56(x2)	# 2336
	fadd	f1, f0, f2
	sw		x1, -60(x2)	# 2336
	addi	x2, x2, -64	# 2336
	lw		x31, 0(x29)	# 2336
	jalr	x1, x31, 0	# 2336
	addi	x2, x2, 64	# 2336
	lw		x1, -60(x2)	# 2336
	flw		f2, -56(x2)	# 2336
	fdiv	f1, f2, f1	# 2336
	flw		f2, -36(x2)	# 2345
	fmul	f1, f1, f2	# 2345
	lw		x4, -28(x2)	# 2366
	lw		x5, -32(x2)	# 2366
	add		x4, x5, x4	# 2366
	fmul	f2, f1, f1	# 2341
	flw		f3, -24(x2)	# 2341
	fadd	f2, f2, f3	# 2341
	fsqrt	f2, f2	# 2341
	flw		f3, -20(x2)	# 2342
	fdiv	f3, f3, f2	# 2342
	lw		x29, -16(x2)	# 2343
	fsw		f1, -60(x2)	# 2343
	sw		x4, -64(x2)	# 2343
	fsw		f2, -68(x2)	# 2343
	fadd	f1, f0, f3
	sw		x1, -72(x2)	# 2343
	addi	x2, x2, -76	# 2343
	lw		x31, 0(x29)	# 2343
	jalr	x1, x31, 0	# 2343
	addi	x2, x2, 76	# 2343
	lw		x1, -72(x2)	# 2343
	flw		f2, -12(x2)	# 2344
	fmul	f1, f1, f2	# 2344
	lw		x29, -44(x2)	# 2336
	fsw		f1, -72(x2)	# 2336
	sw		x1, -76(x2)	# 2336
	addi	x2, x2, -80	# 2336
	lw		x31, 0(x29)	# 2336
	jalr	x1, x31, 0	# 2336
	addi	x2, x2, 80	# 2336
	lw		x1, -76(x2)	# 2336
	flw		f2, -72(x2)	# 2336
	lw		x29, -40(x2)	# 2336
	fsw		f1, -76(x2)	# 2336
	fadd	f1, f0, f2
	sw		x1, -80(x2)	# 2336
	addi	x2, x2, -84	# 2336
	lw		x31, 0(x29)	# 2336
	jalr	x1, x31, 0	# 2336
	addi	x2, x2, 84	# 2336
	lw		x1, -80(x2)	# 2336
	flw		f2, -76(x2)	# 2336
	fdiv	f1, f2, f1	# 2336
	flw		f2, -68(x2)	# 2345
	fmul	f2, f1, f2	# 2345
	flw		f1, -60(x2)	# 2366
	flw		f3, -48(x2)	# 2366
	flw		f4, -12(x2)	# 2366
	lw		x4, -64(x2)	# 2366
	lw		x5, -4(x2)	# 2366
	lw		x6, 0(x2)	# 2366
	lw		x29, -8(x2)	# 2366
	lw		x31, 0(x29)	# 2366
	jalr	x0, x31, 0	# 2366
ble.32477:
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 2351
	fadd	f4, f0, f16	# 2351
	fadd	f3, f3, f4	# 2351
	fsqrt	f3, f3	# 2351
	fdiv	f1, f1, f3	# 2352
	fdiv	f2, f2, f3	# 2353
	fdiv	f3, f4, f3	# 2354
	mul		x4, x30, x5	# 2357
	addi	x4, x4, 60716	# 2357
	lw		x4, 0(x4)	# 2357
	mul		x5, x30, x6	# 2358
	add		x5, x4, x5	# 2358
	lw		x5, 0(x5)	# 2358
	lw		x5, 0(x5)	# 655
	mul		x7, x30, x12	# 256
	add		x7, x5, x7	# 256
	fsw		f1, 0(x7)	# 256
	mul		x7, x30, x13	# 257
	add		x7, x5, x7	# 257
	fsw		f2, 0(x7)	# 257
	mul		x7, x30, x11	# 258
	add		x5, x5, x7	# 258
	fsw		f3, 0(x5)	# 258
	addi	x5, x6, 40	# 2359
	mul		x5, x30, x5	# 2359
	add		x5, x4, x5	# 2359
	lw		x5, 0(x5)	# 2359
	lw		x5, 0(x5)	# 655
	fsub	f4, f0, f2	# 123
	mul		x7, x30, x12	# 256
	add		x7, x5, x7	# 256
	fsw		f1, 0(x7)	# 256
	mul		x7, x30, x13	# 257
	add		x7, x5, x7	# 257
	fsw		f3, 0(x7)	# 257
	mul		x7, x30, x11	# 258
	add		x5, x5, x7	# 258
	fsw		f4, 0(x5)	# 258
	addi	x5, x6, 80	# 2360
	mul		x5, x30, x5	# 2360
	add		x5, x4, x5	# 2360
	lw		x5, 0(x5)	# 2360
	lw		x5, 0(x5)	# 655
	fsub	f5, f0, f1	# 123
	mul		x7, x30, x12	# 256
	add		x7, x5, x7	# 256
	fsw		f3, 0(x7)	# 256
	mul		x7, x30, x13	# 257
	add		x7, x5, x7	# 257
	fsw		f5, 0(x7)	# 257
	mul		x7, x30, x11	# 258
	add		x5, x5, x7	# 258
	fsw		f4, 0(x5)	# 258
	add		x5, x6, x13	# 2361
	mul		x5, x30, x5	# 2361
	add		x5, x4, x5	# 2361
	lw		x5, 0(x5)	# 2361
	lw		x5, 0(x5)	# 655
	fsub	f3, f0, f3	# 123
	mul		x7, x30, x12	# 256
	add		x7, x5, x7	# 256
	fsw		f5, 0(x7)	# 256
	mul		x7, x30, x13	# 257
	add		x7, x5, x7	# 257
	fsw		f4, 0(x7)	# 257
	mul		x7, x30, x11	# 258
	add		x5, x5, x7	# 258
	fsw		f3, 0(x5)	# 258
	addi	x5, x6, 41	# 2362
	mul		x5, x30, x5	# 2362
	add		x5, x4, x5	# 2362
	lw		x5, 0(x5)	# 2362
	lw		x5, 0(x5)	# 655
	mul		x7, x30, x12	# 256
	add		x7, x5, x7	# 256
	fsw		f5, 0(x7)	# 256
	mul		x7, x30, x13	# 257
	add		x7, x5, x7	# 257
	fsw		f3, 0(x7)	# 257
	mul		x7, x30, x11	# 258
	add		x5, x5, x7	# 258
	fsw		f2, 0(x5)	# 258
	addi	x5, x6, 81	# 2363
	mul		x5, x30, x5	# 2363
	add		x4, x4, x5	# 2363
	lw		x4, 0(x4)	# 2363
	lw		x4, 0(x4)	# 655
	mul		x5, x30, x12	# 256
	add		x5, x4, x5	# 256
	fsw		f3, 0(x5)	# 256
	mul		x5, x30, x13	# 257
	add		x5, x4, x5	# 257
	fsw		f1, 0(x5)	# 257
	mul		x5, x30, x11	# 258
	add		x4, x4, x5	# 258
	fsw		f2, 0(x4)	# 258
	jalr	x0, x1, 0	# 258
calc_dirvecs.3007.17864:
	lw		x7, 28(x29)	# 2371
	lw		x8, 24(x29)	# 2371
	lw		x9, 20(x29)	# 2371
	lw		x10, 16(x29)	# 2371
	lw		x11, 12(x29)	# 2371
	lw		x12, 8(x29)	# 2371
	flw		f2, 4(x29)	# 2371
	ble		x11, x4, ble.32479	# 2371
	jalr	x0, x1, 0	# 2380
ble.32479:
	sw		x29, 0(x2)	# 2373
	sw		x9, -4(x2)	# 2373
	sw		x12, -8(x2)	# 2373
	sw		x4, -12(x2)	# 2373
	sw		x10, -16(x2)	# 2373
	fsw		f1, -20(x2)	# 2373
	fsw		f2, -24(x2)	# 2373
	sw		x6, -28(x2)	# 2373
	sw		x5, -32(x2)	# 2373
	sw		x11, -36(x2)	# 2373
	sw		x8, -40(x2)	# 2373
	addi	x29, x7, 0
	sw		x1, -44(x2)	# 2373
	addi	x2, x2, -48	# 2373
	lw		x31, 0(x29)	# 2373
	jalr	x1, x31, 0	# 2373
	addi	x2, x2, 48	# 2373
	lw		x1, -44(x2)	# 2373
	lui		x4, %hi(l.25759)	# 2373
	ori		x4, x0, %lo(l.25759)	# 2373
	flw		f2, 0(x4)	# 2373
	fmul	f1, f1, f2	# 2373
	lui		x4, %hi(l.28434)	# 2373
	ori		x4, x0, %lo(l.28434)	# 2373
	flw		f2, 0(x4)	# 2373
	fsub	f3, f1, f2	# 2373
	flw		f2, -24(x2)	# 2374
	flw		f4, -20(x2)	# 2374
	lw		x4, -36(x2)	# 2374
	lw		x5, -32(x2)	# 2374
	lw		x6, -28(x2)	# 2374
	lw		x29, -40(x2)	# 2374
	fsw		f1, -44(x2)	# 2374
	fadd	f1, f0, f2
	sw		x1, -48(x2)	# 2374
	addi	x2, x2, -52	# 2374
	lw		x31, 0(x29)	# 2374
	jalr	x1, x31, 0	# 2374
	addi	x2, x2, 52	# 2374
	lw		x1, -48(x2)	# 2374
	lui		x4, %hi(l.27380)	# 2376
	ori		x4, x0, %lo(l.27380)	# 2376
	flw		f1, 0(x4)	# 2376
	flw		f2, -44(x2)	# 2376
	fadd	f3, f2, f1	# 2376
	lw		x4, -16(x2)	# 2377
	lw		x5, -28(x2)	# 2377
	add		x6, x5, x4	# 2377
	flw		f1, -24(x2)	# 2377
	flw		f4, -20(x2)	# 2377
	lw		x4, -36(x2)	# 2377
	lw		x7, -32(x2)	# 2377
	lw		x29, -40(x2)	# 2377
	addi	x5, x7, 0
	fadd	f2, f0, f1
	sw		x1, -48(x2)	# 2377
	addi	x2, x2, -52	# 2377
	lw		x31, 0(x29)	# 2377
	jalr	x1, x31, 0	# 2377
	addi	x2, x2, 52	# 2377
	lw		x1, -48(x2)	# 2377
	lw		x4, -8(x2)	# 2379
	lw		x5, -12(x2)	# 2379
	sub		x5, x5, x4	# 2379
	lw		x6, -32(x2)	# 240
	add		x4, x6, x4	# 240
	lw		x6, -4(x2)	# 241
	ble		x6, x4, ble.32482	# 241
	jal		x0, ble_cont.32481	# 241
ble.32482:
	sub		x4, x4, x6	# 241
ble_cont.32481:
	flw		f1, -20(x2)	# 2379
	lw		x6, -28(x2)	# 2379
	lw		x29, 0(x2)	# 2379
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	lw		x31, 0(x29)	# 2379
	jalr	x0, x31, 0	# 2379
calc_dirvec_rows.3012.17869:
	lw		x7, 24(x29)	# 2385
	lw		x8, 20(x29)	# 2385
	lw		x9, 16(x29)	# 2385
	lw		x10, 12(x29)	# 2385
	lw		x11, 8(x29)	# 2385
	lw		x12, 4(x29)	# 2385
	ble		x11, x4, ble.32483	# 2385
	jalr	x0, x1, 0	# 2389
ble.32483:
	sw		x29, 0(x2)	# 2386
	sw		x9, -4(x2)	# 2386
	sw		x10, -8(x2)	# 2386
	sw		x12, -12(x2)	# 2386
	sw		x4, -16(x2)	# 2386
	sw		x6, -20(x2)	# 2386
	sw		x5, -24(x2)	# 2386
	sw		x8, -28(x2)	# 2386
	addi	x29, x7, 0
	sw		x1, -32(x2)	# 2386
	addi	x2, x2, -36	# 2386
	lw		x31, 0(x29)	# 2386
	jalr	x1, x31, 0	# 2386
	addi	x2, x2, 36	# 2386
	lw		x1, -32(x2)	# 2386
	lui		x4, %hi(l.25759)	# 2386
	ori		x4, x0, %lo(l.25759)	# 2386
	flw		f2, 0(x4)	# 2386
	fmul	f1, f1, f2	# 2386
	lui		x4, %hi(l.28434)	# 2386
	ori		x4, x0, %lo(l.28434)	# 2386
	flw		f2, 0(x4)	# 2386
	fsub	f1, f1, f2	# 2386
	addi	x4, x0, 4	# 2387
	lw		x5, -24(x2)	# 2387
	lw		x6, -20(x2)	# 2387
	lw		x29, -28(x2)	# 2387
	sw		x1, -32(x2)	# 2387
	addi	x2, x2, -36	# 2387
	lw		x31, 0(x29)	# 2387
	jalr	x1, x31, 0	# 2387
	addi	x2, x2, 36	# 2387
	lw		x1, -32(x2)	# 2387
	lw		x4, -12(x2)	# 2388
	lw		x5, -16(x2)	# 2388
	sub		x4, x5, x4	# 2388
	lw		x5, -8(x2)	# 240
	lw		x6, -24(x2)	# 240
	add		x5, x6, x5	# 240
	lw		x6, -4(x2)	# 241
	ble		x6, x5, ble.32486	# 241
	jal		x0, ble_cont.32485	# 241
ble.32486:
	sub		x5, x5, x6	# 241
ble_cont.32485:
	lw		x6, -20(x2)	# 2388
	addi	x6, x6, 4	# 2388
	lw		x29, 0(x2)	# 2388
	lw		x31, 0(x29)	# 2388
	jalr	x0, x31, 0	# 2388
create_dirvec_elements.3018.17873:
	lw		x6, 16(x29)	# 2404
	lw		x7, 12(x29)	# 2404
	lw		x8, 8(x29)	# 2404
	flw		f1, 4(x29)	# 2404
	ble		x7, x5, ble.32487	# 2404
	jalr	x0, x1, 0	# 2407
ble.32487:
	sw		x29, 0(x2)	# 2398
	sw		x8, -4(x2)	# 2398
	sw		x4, -8(x2)	# 2398
	sw		x5, -12(x2)	# 2398
	sw		x7, -16(x2)	# 2398
	addi	x4, x6, 0
	sw		x1, -20(x2)	# 2398
	addi	x2, x2, -24	# 2398
	jal		x1, min_caml_create_float_array	# 2398
	addi	x2, x2, 24	# 2398
	lw		x1, -20(x2)	# 2398
	addi	x5, x4, 0	# 2398
	lw		x4, -16(x2)	# 2399
	mul		x4, x30, x4	# 2399
	addi	x4, x4, 60000	# 2399
	lw		x4, 0(x4)	# 2399
	sw		x5, -20(x2)	# 2399
	sw		x1, -24(x2)	# 2399
	addi	x2, x2, -28	# 2399
	jal		x1, min_caml_create_array	# 2399
	addi	x2, x2, 28	# 2399
	lw		x1, -24(x2)	# 2399
	addi	x5, x3, 0	# 2400
	addi	x3, x3, 8	# 2400
	sw		x4, 4(x5)	# 2400
	lw		x4, -20(x2)	# 2400
	sw		x4, 0(x5)	# 2400
	addi	x4, x5, 0	# 2400
	lw		x5, -12(x2)	# 2405
	mul		x6, x30, x5	# 2405
	lw		x7, -8(x2)	# 2405
	add		x6, x7, x6	# 2405
	sw		x4, 0(x6)	# 2405
	lw		x4, -4(x2)	# 2406
	sub		x5, x5, x4	# 2406
	lw		x29, 0(x2)	# 2406
	addi	x4, x7, 0
	lw		x31, 0(x29)	# 2406
	jalr	x0, x31, 0	# 2406
create_dirvecs.3021.17876:
	lw		x5, 20(x29)	# 2411
	lw		x6, 16(x29)	# 2411
	lw		x7, 12(x29)	# 2411
	lw		x8, 8(x29)	# 2411
	flw		f1, 4(x29)	# 2411
	ble		x7, x4, ble.32489	# 2411
	jalr	x0, x1, 0	# 2415
ble.32489:
	addi	x9, x0, 120	# 2412
	sw		x29, 0(x2)	# 2398
	sw		x8, -4(x2)	# 2398
	sw		x5, -8(x2)	# 2398
	sw		x4, -12(x2)	# 2398
	sw		x9, -16(x2)	# 2398
	sw		x7, -20(x2)	# 2398
	addi	x4, x6, 0
	sw		x1, -24(x2)	# 2398
	addi	x2, x2, -28	# 2398
	jal		x1, min_caml_create_float_array	# 2398
	addi	x2, x2, 28	# 2398
	lw		x1, -24(x2)	# 2398
	addi	x5, x4, 0	# 2398
	lw		x4, -20(x2)	# 2399
	mul		x4, x30, x4	# 2399
	addi	x4, x4, 60000	# 2399
	lw		x4, 0(x4)	# 2399
	sw		x5, -24(x2)	# 2399
	sw		x1, -28(x2)	# 2399
	addi	x2, x2, -32	# 2399
	jal		x1, min_caml_create_array	# 2399
	addi	x2, x2, 32	# 2399
	lw		x1, -28(x2)	# 2399
	addi	x5, x3, 0	# 2400
	addi	x3, x3, 8	# 2400
	sw		x4, 4(x5)	# 2400
	lw		x4, -24(x2)	# 2400
	sw		x4, 0(x5)	# 2400
	lw		x4, -16(x2)	# 2412
	sw		x1, -28(x2)	# 2412
	addi	x2, x2, -32	# 2412
	jal		x1, min_caml_create_array	# 2412
	addi	x2, x2, 32	# 2412
	lw		x1, -28(x2)	# 2412
	lw		x5, -12(x2)	# 2412
	mul		x6, x30, x5	# 2412
	addi	x6, x6, 60716	# 2412
	sw		x4, 0(x6)	# 2412
	mul		x4, x30, x5	# 2413
	addi	x4, x4, 60716	# 2413
	lw		x4, 0(x4)	# 2413
	addi	x6, x0, 118	# 2413
	lw		x29, -8(x2)	# 2413
	addi	x5, x6, 0
	sw		x1, -28(x2)	# 2413
	addi	x2, x2, -32	# 2413
	lw		x31, 0(x29)	# 2413
	jalr	x1, x31, 0	# 2413
	addi	x2, x2, 32	# 2413
	lw		x1, -28(x2)	# 2413
	lw		x4, -4(x2)	# 2414
	lw		x5, -12(x2)	# 2414
	sub		x4, x5, x4	# 2414
	lw		x29, 0(x2)	# 2414
	lw		x31, 0(x29)	# 2414
	jalr	x0, x31, 0	# 2414
init_dirvec_constants.3023.17878:
	lw		x6, 12(x29)	# 2423
	lw		x7, 8(x29)	# 2423
	lw		x8, 4(x29)	# 2423
	ble		x7, x5, ble.32491	# 2423
	jalr	x0, x1, 0	# 2426
ble.32491:
	mul		x9, x30, x5	# 2424
	add		x9, x4, x9	# 2424
	lw		x9, 0(x9)	# 2424
	mul		x7, x30, x7	# 1303
	addi	x7, x7, 60000	# 1303
	lw		x7, 0(x7)	# 1303
	sub		x7, x7, x8	# 1303
	sw		x4, 0(x2)	# 1303
	sw		x29, -4(x2)	# 1303
	sw		x8, -8(x2)	# 1303
	sw		x5, -12(x2)	# 1303
	addi	x5, x7, 0
	addi	x4, x9, 0
	addi	x29, x6, 0
	sw		x1, -16(x2)	# 1303
	addi	x2, x2, -20	# 1303
	lw		x31, 0(x29)	# 1303
	jalr	x1, x31, 0	# 1303
	addi	x2, x2, 20	# 1303
	lw		x1, -16(x2)	# 1303
	lw		x4, -8(x2)	# 2425
	lw		x5, -12(x2)	# 2425
	sub		x5, x5, x4	# 2425
	lw		x4, 0(x2)	# 2425
	lw		x29, -4(x2)	# 2425
	lw		x31, 0(x29)	# 2425
	jalr	x0, x31, 0	# 2425
init_vecset_constants.3026.17881:
	lw		x5, 12(x29)	# 2430
	lw		x6, 8(x29)	# 2430
	lw		x7, 4(x29)	# 2430
	ble		x6, x4, ble.32493	# 2430
	jalr	x0, x1, 0	# 2433
ble.32493:
	mul		x6, x30, x4	# 2431
	addi	x6, x6, 60716	# 2431
	lw		x6, 0(x6)	# 2431
	addi	x8, x0, 119	# 2431
	sw		x29, 0(x2)	# 2431
	sw		x7, -4(x2)	# 2431
	sw		x4, -8(x2)	# 2431
	addi	x4, x6, 0
	addi	x29, x5, 0
	addi	x5, x8, 0
	sw		x1, -12(x2)	# 2431
	addi	x2, x2, -16	# 2431
	lw		x31, 0(x29)	# 2431
	jalr	x1, x31, 0	# 2431
	addi	x2, x2, 16	# 2431
	lw		x1, -12(x2)	# 2431
	lw		x4, -4(x2)	# 2432
	lw		x5, -8(x2)	# 2432
	sub		x4, x5, x4	# 2432
	lw		x29, 0(x2)	# 2432
	lw		x31, 0(x29)	# 2432
	jalr	x0, x31, 0	# 2432
min_caml_start:
	addi	x2, x2, -4
	addi	x30, x0, 4
	addi	x3, x0, 60000
	lui		x4, %hi(l.25768)
	ori		x4, x0, %lo(l.25768)
	flw		f0, 0(x4)
	lui		x4, %hi(l.25731)
	ori		x4, x0, %lo(l.25731)
	flw		f30, 0(x4)
	lui		x4, %hi(l.25729)
	ori		x4, x0, %lo(l.25729)
	flw		f16, 0(x4)
	lui		x4, %hi(l.25742)
	ori		x4, x0, %lo(l.25742)
	flw		f17, 0(x4)
	lui		x4, %hi(l.25828)
	ori		x4, x0, %lo(l.25828)
	flw		f18, 0(x4)
	lui		x4, %hi(l.27151)
	ori		x4, x0, %lo(l.27151)
	flw		f19, 0(x4)
	lui		x4, %hi(l.27147)
	ori		x4, x0, %lo(l.27147)
	flw		f20, 0(x4)
	lui		x4, %hi(l.27149)
	ori		x4, x0, %lo(l.27149)
	flw		f21, 0(x4)
	lui		x4, %hi(l.27177)
	ori		x4, x0, %lo(l.27177)
	flw		f22, 0(x4)
	lui		x4, %hi(l.26395)
	ori		x4, x0, %lo(l.26395)
	flw		f23, 0(x4)
	lui		x4, %hi(l.25796)
	ori		x4, x0, %lo(l.25796)
	flw		f24, 0(x4)
	lui		x4, %hi(l.26940)
	ori		x4, x0, %lo(l.26940)
	flw		f25, 0(x4)
	lui		x4, %hi(l.27187)
	ori		x4, x0, %lo(l.27187)
	flw		f26, 0(x4)
	lui		x4, %hi(l.27165)
	ori		x4, x0, %lo(l.27165)
	flw		f27, 0(x4)
	lui		x4, %hi(l.27198)
	ori		x4, x0, %lo(l.27198)
	flw		f28, 0(x4)
	lui		x4, %hi(l.27200)
	ori		x4, x0, %lo(l.27200)
	flw		f29, 0(x4)
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
	addi	x4, x0, 60004	# 11
	lw		x5, -4(x2)	# 11
	fsw		f1, -8(x2)	# 11
	sw		x4, -12(x2)	# 11
	addi	x4, x5, 0
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
	lui		x4, %hi(l.28474)	# 25
	ori		x4, x0, %lo(l.28474)	# 25
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
	addi	x6, x0, 60328	# 28
	lw		x7, 0(x2)	# 28
	sw		x5, -28(x2)	# 28
	sw		x6, -32(x2)	# 28
	sw		x4, -36(x2)	# 28
	addi	x4, x7, 0
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
	lw		x4, -4(x2)	# 31
	mul		x5, x30, x4	# 31
	addi	x5, x5, 60332	# 31
	lw		x5, 0(x5)	# 31
	addi	x6, x0, 60532	# 31
	lw		x7, 0(x2)	# 31
	sw		x6, -40(x2)	# 31
	addi	x4, x7, 0
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
	flw		f1, -8(x2)	# 36
	lw		x4, 0(x2)	# 36
	sw		x1, -44(x2)	# 36
	addi	x2, x2, -48	# 36
	jal		x1, min_caml_create_float_array	# 36
	addi	x2, x2, 48	# 36
	lw		x1, -44(x2)	# 36
	lw		x4, 0(x2)	# 39
	lw		x5, -4(x2)	# 39
	sw		x1, -44(x2)	# 39
	addi	x2, x2, -48	# 39
	jal		x1, min_caml_create_array	# 39
	addi	x2, x2, 48	# 39
	lw		x1, -44(x2)	# 39
	lui		x4, %hi(l.28478)	# 42
	ori		x4, x0, %lo(l.28478)	# 42
	flw		f1, 0(x4)	# 42
	lw		x4, 0(x2)	# 42
	fsw		f1, -44(x2)	# 42
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
	lw		x4, 0(x2)	# 48
	lw		x5, -4(x2)	# 48
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
	flw		f1, -8(x2)	# 71
	lw		x4, 0(x2)	# 71
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
	addi	x4, x0, 60708	# 95
	flw		f1, -8(x2)	# 95
	lw		x5, -4(x2)	# 95
	sw		x4, -52(x2)	# 95
	addi	x4, x5, 0
	sw		x1, -56(x2)	# 95
	addi	x2, x2, -60	# 95
	jal		x1, min_caml_create_float_array	# 95
	addi	x2, x2, 60	# 95
	lw		x1, -56(x2)	# 95
	addi	x4, x0, 60708	# 96
	lw		x5, -4(x2)	# 96
	lw		x6, -52(x2)	# 96
	sw		x4, -56(x2)	# 96
	addi	x4, x5, 0
	addi	x5, x6, 0
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
	addi	x4, x0, 60716	# 97
	lw		x6, -4(x2)	# 97
	sw		x4, -60(x2)	# 97
	addi	x4, x6, 0
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
	addi	x4, x0, 60736	# 103
	flw		f1, -8(x2)	# 103
	lw		x5, -4(x2)	# 103
	sw		x4, -68(x2)	# 103
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 103
	addi	x2, x2, -76	# 103
	jal		x1, min_caml_create_float_array	# 103
	addi	x2, x2, 76	# 103
	lw		x1, -72(x2)	# 103
	addi	x4, x0, 60736	# 104
	flw		f1, -8(x2)	# 104
	lw		x5, -20(x2)	# 104
	sw		x4, -72(x2)	# 104
	addi	x4, x5, 0
	sw		x1, -76(x2)	# 104
	addi	x2, x2, -80	# 104
	jal		x1, min_caml_create_float_array	# 104
	addi	x2, x2, 80	# 104
	lw		x1, -76(x2)	# 104
	addi	x4, x0, 60748	# 105
	lw		x5, -16(x2)	# 105
	lw		x6, -68(x2)	# 105
	sw		x4, -76(x2)	# 105
	addi	x4, x5, 0
	addi	x5, x6, 0
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
	addi	x5, x0, 60996	# 111
	flw		f1, -8(x2)	# 111
	lw		x6, -4(x2)	# 111
	sw		x4, -80(x2)	# 111
	sw		x5, -84(x2)	# 111
	addi	x4, x6, 0
	sw		x1, -88(x2)	# 111
	addi	x2, x2, -92	# 111
	jal		x1, min_caml_create_float_array	# 111
	addi	x2, x2, 92	# 111
	lw		x1, -88(x2)	# 111
	addi	x4, x0, 60996	# 112
	lw		x5, -4(x2)	# 112
	lw		x6, -84(x2)	# 112
	sw		x4, -88(x2)	# 112
	addi	x4, x5, 0
	addi	x5, x6, 0
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
	addi	x4, x5, 0
	addi	x5, x6, 0
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
	addi	x4, x3, 0	# 134
	addi	x3, x3, 8	# 134
	lui		x5, %hi(int_of_float_rem.2529.17724)	# 134
	ori		x5, x0, %lo(int_of_float_rem.2529.17724)	# 134
	sw		x5, 0(x4)	# 136
	lw		x5, 0(x2)	# 136
	sw		x5, 4(x4)	# 136
	addi	x6, x3, 0	# 136
	addi	x3, x3, 8	# 136
	lui		x7, %hi(int_of_float_four.2532.17727)	# 136
	ori		x7, x0, %lo(int_of_float_four.2532.17727)	# 136
	sw		x7, 0(x6)	# 138
	sw		x4, 4(x6)	# 138
	addi	x4, x3, 0	# 138
	addi	x3, x3, 16	# 138
	lui		x7, %hi(int_of_float.2535.17730)	# 138
	ori		x7, x0, %lo(int_of_float.2535.17730)	# 138
	sw		x7, 0(x4)	# 145
	sw		x6, 12(x4)	# 145
	lw		x6, -4(x2)	# 145
	sw		x6, 8(x4)	# 145
	flw		f1, -8(x2)	# 145
	fsw		f1, 4(x4)	# 145
	addi	x7, x3, 0	# 145
	addi	x3, x3, 8	# 145
	lui		x8, %hi(float_of_int_rem.2537.17732)	# 145
	ori		x8, x0, %lo(float_of_int_rem.2537.17732)	# 145
	sw		x8, 0(x7)	# 147
	sw		x5, 4(x7)	# 147
	addi	x8, x3, 0	# 147
	addi	x3, x3, 8	# 147
	lui		x9, %hi(float_of_int_four.2540.17735)	# 147
	ori		x9, x0, %lo(float_of_int_four.2540.17735)	# 147
	sw		x9, 0(x8)	# 149
	sw		x7, 4(x8)	# 149
	addi	x29, x3, 0	# 149
	addi	x3, x3, 16	# 149
	lui		x7, %hi(float_of_int.2543.17738)	# 149
	ori		x7, x0, %lo(float_of_int.2543.17738)	# 149
	sw		x7, 0(x29)	# 155
	sw		x8, 12(x29)	# 155
	sw		x6, 8(x29)	# 155
	fsw		f1, 4(x29)	# 155
	lui		x7, %hi(l.28493)	# 155
	ori		x7, x0, %lo(l.28493)	# 155
	flw		f2, 0(x7)	# 155
	lui		x7, %hi(l.28495)	# 156
	ori		x7, x0, %lo(l.28495)	# 156
	flw		f3, 0(x7)	# 156
	lui		x7, %hi(l.28497)	# 157
	ori		x7, x0, %lo(l.28497)	# 157
	flw		f4, 0(x7)	# 157
	lui		x7, %hi(l.28499)	# 158
	ori		x7, x0, %lo(l.28499)	# 158
	flw		f5, 0(x7)	# 158
	addi	x7, x3, 0	# 180
	addi	x3, x3, 24	# 180
	lui		x8, %hi(sin.2555.17744)	# 180
	ori		x8, x0, %lo(sin.2555.17744)	# 180
	sw		x8, 0(x7)	# 188
	fsw		f5, 20(x7)	# 188
	fsw		f4, 16(x7)	# 188
	fsw		f3, 12(x7)	# 188
	fsw		f2, 8(x7)	# 188
	fsw		f1, 4(x7)	# 188
	addi	x8, x3, 0	# 188
	addi	x3, x3, 20	# 188
	lui		x9, %hi(cos.2557.17746)	# 188
	ori		x9, x0, %lo(cos.2557.17746)	# 188
	sw		x9, 0(x8)	# 193
	sw		x7, 16(x8)	# 193
	fsw		f5, 12(x8)	# 193
	fsw		f4, 8(x8)	# 193
	fsw		f1, 4(x8)	# 193
	addi	x9, x3, 0	# 193
	addi	x3, x3, 16	# 193
	lui		x10, %hi(atan.2559.17748)	# 193
	ori		x10, x0, %lo(atan.2559.17748)	# 193
	sw		x10, 0(x9)	# 876
	fsw		f5, 12(x9)	# 876
	fsw		f4, 8(x9)	# 876
	fsw		f1, 4(x9)	# 876
	addi	x10, x3, 0	# 876
	addi	x3, x3, 36	# 876
	lui		x11, %hi(read_object.2696.17750)	# 876
	ori		x11, x0, %lo(read_object.2696.17750)	# 876
	sw		x11, 0(x10)	# 892
	sw		x7, 32(x10)	# 892
	sw		x8, 28(x10)	# 892
	lw		x11, -48(x2)	# 892
	sw		x11, 24(x10)	# 892
	lw		x12, -28(x2)	# 892
	sw		x12, 20(x10)	# 892
	lw		x13, -16(x2)	# 892
	sw		x13, 16(x10)	# 892
	sw		x6, 12(x10)	# 892
	sw		x5, 8(x10)	# 892
	fsw		f1, 4(x10)	# 892
	addi	x13, x3, 0	# 892
	addi	x3, x3, 12	# 892
	lui		x14, %hi(read_net_item.2700.17752)	# 892
	ori		x14, x0, %lo(read_net_item.2700.17752)	# 892
	sw		x14, 0(x13)	# 900
	sw		x12, 8(x13)	# 900
	sw		x5, 4(x13)	# 900
	addi	x14, x3, 0	# 900
	addi	x3, x3, 20	# 900
	lui		x15, %hi(read_or_network.2702.17754)	# 900
	ori		x15, x0, %lo(read_or_network.2702.17754)	# 900
	sw		x15, 0(x14)	# 909
	sw		x13, 16(x14)	# 909
	sw		x12, 12(x14)	# 909
	sw		x6, 8(x14)	# 909
	sw		x5, 4(x14)	# 909
	addi	x15, x3, 0	# 909
	addi	x3, x3, 20	# 909
	lui		x16, %hi(read_and_network.2704.17756)	# 909
	ori		x16, x0, %lo(read_and_network.2704.17756)	# 909
	sw		x16, 0(x15)	# 1285
	sw		x13, 16(x15)	# 1285
	sw		x12, 12(x15)	# 1285
	sw		x6, 8(x15)	# 1285
	sw		x5, 4(x15)	# 1285
	addi	x13, x3, 0	# 1285
	addi	x3, x3, 20	# 1285
	lui		x16, %hi(iter_setup_dirvec_constants.2801.17758)	# 1285
	ori		x16, x0, %lo(iter_setup_dirvec_constants.2801.17758)	# 1285
	sw		x16, 0(x13)	# 1310
	sw		x11, 16(x13)	# 1310
	sw		x6, 12(x13)	# 1310
	sw		x5, 8(x13)	# 1310
	fsw		f1, 4(x13)	# 1310
	addi	x16, x3, 0	# 1310
	addi	x3, x3, 16	# 1310
	lui		x17, %hi(setup_startp_constants.2806.17761)	# 1310
	ori		x17, x0, %lo(setup_startp_constants.2806.17761)	# 1310
	sw		x17, 0(x16)	# 1379
	sw		x11, 12(x16)	# 1379
	sw		x6, 8(x16)	# 1379
	sw		x5, 4(x16)	# 1379
	addi	x17, x3, 0	# 1379
	addi	x3, x3, 28	# 1379
	lui		x18, %hi(check_all_inside.2831.17764)	# 1379
	ori		x18, x0, %lo(check_all_inside.2831.17764)	# 1379
	sw		x18, 0(x17)	# 1399
	sw		x11, 24(x17)	# 1399
	sw		x12, 20(x17)	# 1399
	lw		x18, -20(x2)	# 1399
	sw		x18, 16(x17)	# 1399
	sw		x6, 12(x17)	# 1399
	sw		x5, 8(x17)	# 1399
	fsw		f1, 4(x17)	# 1399
	addi	x19, x3, 0	# 1399
	addi	x3, x3, 36	# 1399
	lui		x20, %hi(shadow_check_and_group.2837.17770)	# 1399
	ori		x20, x0, %lo(shadow_check_and_group.2837.17770)	# 1399
	sw		x20, 0(x19)	# 1429
	sw		x17, 32(x19)	# 1429
	lw		x20, -64(x2)	# 1429
	sw		x20, 28(x19)	# 1429
	sw		x11, 24(x19)	# 1429
	sw		x12, 20(x19)	# 1429
	sw		x18, 16(x19)	# 1429
	sw		x6, 12(x19)	# 1429
	sw		x5, 8(x19)	# 1429
	fsw		f1, 4(x19)	# 1429
	addi	x21, x3, 0	# 1429
	addi	x3, x3, 20	# 1429
	lui		x22, %hi(shadow_check_one_or_group.2840.17773)	# 1429
	ori		x22, x0, %lo(shadow_check_one_or_group.2840.17773)	# 1429
	sw		x22, 0(x21)	# 1444
	sw		x19, 16(x21)	# 1444
	sw		x12, 12(x21)	# 1444
	sw		x6, 8(x21)	# 1444
	sw		x5, 4(x21)	# 1444
	addi	x19, x3, 0	# 1444
	addi	x3, x3, 36	# 1444
	lui		x22, %hi(shadow_check_one_or_matrix.2843.17776)	# 1444
	ori		x22, x0, %lo(shadow_check_one_or_matrix.2843.17776)	# 1444
	sw		x22, 0(x19)	# 1480
	sw		x21, 32(x19)	# 1480
	sw		x20, 28(x19)	# 1480
	sw		x11, 24(x19)	# 1480
	sw		x12, 20(x19)	# 1480
	sw		x18, 16(x19)	# 1480
	sw		x6, 12(x19)	# 1480
	sw		x5, 8(x19)	# 1480
	fsw		f1, 4(x19)	# 1480
	addi	x21, x3, 0	# 1480
	addi	x3, x3, 32	# 1480
	lui		x22, %hi(solve_each_element.2846.17779)	# 1480
	ori		x22, x0, %lo(solve_each_element.2846.17779)	# 1480
	sw		x22, 0(x21)	# 1521
	sw		x17, 28(x21)	# 1521
	sw		x11, 24(x21)	# 1521
	sw		x12, 20(x21)	# 1521
	sw		x18, 16(x21)	# 1521
	sw		x6, 12(x21)	# 1521
	sw		x5, 8(x21)	# 1521
	fsw		f1, 4(x21)	# 1521
	addi	x22, x3, 0	# 1521
	addi	x3, x3, 20	# 1521
	lui		x23, %hi(solve_one_or_network.2850.17783)	# 1521
	ori		x23, x0, %lo(solve_one_or_network.2850.17783)	# 1521
	sw		x23, 0(x22)	# 1531
	sw		x21, 16(x22)	# 1531
	sw		x12, 12(x22)	# 1531
	sw		x6, 8(x22)	# 1531
	sw		x5, 4(x22)	# 1531
	addi	x21, x3, 0	# 1531
	addi	x3, x3, 32	# 1531
	lui		x23, %hi(trace_or_matrix.2854.17787)	# 1531
	ori		x23, x0, %lo(trace_or_matrix.2854.17787)	# 1531
	sw		x23, 0(x21)	# 1573
	sw		x22, 28(x21)	# 1573
	sw		x11, 24(x21)	# 1573
	sw		x12, 20(x21)	# 1573
	sw		x18, 16(x21)	# 1573
	sw		x6, 12(x21)	# 1573
	sw		x5, 8(x21)	# 1573
	fsw		f1, 4(x21)	# 1573
	addi	x22, x3, 0	# 1573
	addi	x3, x3, 36	# 1573
	lui		x23, %hi(solve_each_element_fast.2860.17791)	# 1573
	ori		x23, x0, %lo(solve_each_element_fast.2860.17791)	# 1573
	sw		x23, 0(x22)	# 1614
	sw		x17, 32(x22)	# 1614
	sw		x20, 28(x22)	# 1614
	sw		x11, 24(x22)	# 1614
	sw		x12, 20(x22)	# 1614
	sw		x18, 16(x22)	# 1614
	sw		x6, 12(x22)	# 1614
	sw		x5, 8(x22)	# 1614
	fsw		f1, 4(x22)	# 1614
	addi	x17, x3, 0	# 1614
	addi	x3, x3, 20	# 1614
	lui		x23, %hi(solve_one_or_network_fast.2864.17795)	# 1614
	ori		x23, x0, %lo(solve_one_or_network_fast.2864.17795)	# 1614
	sw		x23, 0(x17)	# 1624
	sw		x22, 16(x17)	# 1624
	sw		x12, 12(x17)	# 1624
	sw		x6, 8(x17)	# 1624
	sw		x5, 4(x17)	# 1624
	addi	x22, x3, 0	# 1624
	addi	x3, x3, 36	# 1624
	lui		x23, %hi(trace_or_matrix_fast.2868.17799)	# 1624
	ori		x23, x0, %lo(trace_or_matrix_fast.2868.17799)	# 1624
	sw		x23, 0(x22)	# 1818
	sw		x17, 32(x22)	# 1818
	sw		x20, 28(x22)	# 1818
	sw		x11, 24(x22)	# 1818
	sw		x12, 20(x22)	# 1818
	sw		x18, 16(x22)	# 1818
	sw		x6, 12(x22)	# 1818
	sw		x5, 8(x22)	# 1818
	fsw		f1, 4(x22)	# 1818
	addi	x17, x3, 0	# 1818
	addi	x3, x3, 32	# 1818
	lui		x23, %hi(trace_reflections.2890.17803)	# 1818
	ori		x23, x0, %lo(trace_reflections.2890.17803)	# 1818
	sw		x23, 0(x17)	# 1847
	sw		x22, 28(x17)	# 1847
	sw		x19, 24(x17)	# 1847
	sw		x11, 20(x17)	# 1847
	sw		x6, 16(x17)	# 1847
	sw		x5, 12(x17)	# 1847
	flw		f2, -44(x2)	# 1847
	fsw		f2, 8(x17)	# 1847
	fsw		f1, 4(x17)	# 1847
	addi	x23, x3, 0	# 1847
	addi	x3, x3, 72	# 1847
	lui		x24, %hi(trace_ray.2895.17808)	# 1847
	ori		x24, x0, %lo(trace_ray.2895.17808)	# 1847
	sw		x24, 0(x23)	# 1959
	sw		x17, 68(x23)	# 1959
	sw		x21, 64(x23)	# 1959
	sw		x7, 60(x23)	# 1959
	sw		x19, 56(x23)	# 1959
	sw		x16, 52(x23)	# 1959
	sw		x4, 48(x23)	# 1959
	sw		x29, 44(x23)	# 1959
	sw		x8, 40(x23)	# 1959
	sw		x9, 36(x23)	# 1959
	sw		x11, 32(x23)	# 1959
	sw		x12, 28(x23)	# 1959
	sw		x18, 24(x23)	# 1959
	sw		x6, 20(x23)	# 1959
	sw		x5, 16(x23)	# 1959
	fsw		f2, 12(x23)	# 1959
	flw		f3, -24(x2)	# 1959
	fsw		f3, 8(x23)	# 1959
	fsw		f1, 4(x23)	# 1959
	addi	x12, x3, 0	# 1959
	addi	x3, x3, 60	# 1959
	lui		x17, %hi(iter_trace_diffuse_rays.2904.17814)	# 1959
	ori		x17, x0, %lo(iter_trace_diffuse_rays.2904.17814)	# 1959
	sw		x17, 0(x12)	# 2050
	sw		x22, 56(x12)	# 2050
	sw		x7, 52(x12)	# 2050
	sw		x19, 48(x12)	# 2050
	sw		x4, 44(x12)	# 2050
	sw		x29, 40(x12)	# 2050
	sw		x8, 36(x12)	# 2050
	sw		x9, 32(x12)	# 2050
	sw		x11, 28(x12)	# 2050
	sw		x18, 24(x12)	# 2050
	sw		x6, 20(x12)	# 2050
	sw		x5, 16(x12)	# 2050
	fsw		f2, 12(x12)	# 2050
	fsw		f3, 8(x12)	# 2050
	fsw		f1, 4(x12)	# 2050
	addi	x17, x3, 0	# 2050
	addi	x3, x3, 28	# 2050
	lui		x19, %hi(do_without_neighbors.2926.17819)	# 2050
	ori		x19, x0, %lo(do_without_neighbors.2926.17819)	# 2050
	sw		x19, 0(x17)	# 2102
	sw		x16, 24(x17)	# 2102
	sw		x12, 20(x17)	# 2102
	sw		x11, 16(x17)	# 2102
	sw		x18, 12(x17)	# 2102
	sw		x6, 8(x17)	# 2102
	sw		x5, 4(x17)	# 2102
	addi	x19, x3, 0	# 2102
	addi	x3, x3, 20	# 2102
	lui		x21, %hi(try_exploit_neighbors.2942.17822)	# 2102
	ori		x21, x0, %lo(try_exploit_neighbors.2942.17822)	# 2102
	sw		x21, 0(x19)	# 2178
	sw		x17, 16(x19)	# 2178
	sw		x11, 12(x19)	# 2178
	sw		x6, 8(x19)	# 2178
	sw		x5, 4(x19)	# 2178
	addi	x21, x3, 0	# 2178
	addi	x3, x3, 24	# 2178
	lui		x22, %hi(pretrace_diffuse_rays.2957.17829)	# 2178
	ori		x22, x0, %lo(pretrace_diffuse_rays.2957.17829)	# 2178
	sw		x22, 0(x21)	# 2208
	sw		x16, 20(x21)	# 2208
	sw		x12, 16(x21)	# 2208
	sw		x11, 12(x21)	# 2208
	sw		x6, 8(x21)	# 2208
	sw		x5, 4(x21)	# 2208
	addi	x12, x3, 0	# 2208
	addi	x3, x3, 36	# 2208
	lui		x16, %hi(pretrace_pixels.2960.17832)	# 2208
	ori		x16, x0, %lo(pretrace_pixels.2960.17832)	# 2208
	sw		x16, 0(x12)	# 2249
	sw		x23, 32(x12)	# 2249
	sw		x21, 28(x12)	# 2249
	sw		x29, 24(x12)	# 2249
	sw		x20, 20(x12)	# 2249
	sw		x11, 16(x12)	# 2249
	sw		x6, 12(x12)	# 2249
	sw		x5, 8(x12)	# 2249
	fsw		f1, 4(x12)	# 2249
	addi	x16, x3, 0	# 2249
	addi	x3, x3, 32	# 2249
	lui		x21, %hi(scan_pixel.2971.17839)	# 2249
	ori		x21, x0, %lo(scan_pixel.2971.17839)	# 2249
	sw		x21, 0(x16)	# 2269
	sw		x19, 28(x16)	# 2269
	sw		x4, 24(x16)	# 2269
	sw		x17, 20(x16)	# 2269
	sw		x11, 16(x16)	# 2269
	sw		x18, 12(x16)	# 2269
	sw		x6, 8(x16)	# 2269
	sw		x5, 4(x16)	# 2269
	addi	x4, x3, 0	# 2269
	addi	x3, x3, 32	# 2269
	lui		x17, %hi(scan_line.2978.17846)	# 2269
	ori		x17, x0, %lo(scan_line.2978.17846)	# 2269
	sw		x17, 0(x4)	# 2312
	sw		x16, 28(x4)	# 2312
	sw		x12, 24(x4)	# 2312
	sw		x29, 20(x4)	# 2312
	sw		x20, 16(x4)	# 2312
	sw		x11, 12(x4)	# 2312
	sw		x6, 8(x4)	# 2312
	sw		x5, 4(x4)	# 2312
	addi	x16, x3, 0	# 2312
	addi	x3, x3, 28	# 2312
	lui		x17, %hi(init_line_elements.2989.17853)	# 2312
	ori		x17, x0, %lo(init_line_elements.2989.17853)	# 2312
	sw		x17, 0(x16)	# 2349
	sw		x20, 24(x16)	# 2349
	sw		x11, 20(x16)	# 2349
	sw		x18, 16(x16)	# 2349
	sw		x6, 12(x16)	# 2349
	sw		x5, 8(x16)	# 2349
	fsw		f1, 4(x16)	# 2349
	addi	x17, x3, 0	# 2349
	addi	x3, x3, 32	# 2349
	lui		x19, %hi(calc_dirvec.2999.17856)	# 2349
	ori		x19, x0, %lo(calc_dirvec.2999.17856)	# 2349
	sw		x19, 0(x17)	# 2370
	sw		x7, 28(x17)	# 2370
	sw		x8, 24(x17)	# 2370
	sw		x9, 20(x17)	# 2370
	sw		x20, 16(x17)	# 2370
	sw		x11, 12(x17)	# 2370
	sw		x6, 8(x17)	# 2370
	sw		x5, 4(x17)	# 2370
	addi	x9, x3, 0	# 2370
	addi	x3, x3, 32	# 2370
	lui		x19, %hi(calc_dirvecs.3007.17864)	# 2370
	ori		x19, x0, %lo(calc_dirvecs.3007.17864)	# 2370
	sw		x19, 0(x9)	# 2384
	sw		x29, 28(x9)	# 2384
	sw		x17, 24(x9)	# 2384
	sw		x20, 20(x9)	# 2384
	sw		x11, 16(x9)	# 2384
	sw		x6, 12(x9)	# 2384
	sw		x5, 8(x9)	# 2384
	fsw		f1, 4(x9)	# 2384
	addi	x17, x3, 0	# 2384
	addi	x3, x3, 28	# 2384
	lui		x19, %hi(calc_dirvec_rows.3012.17869)	# 2384
	ori		x19, x0, %lo(calc_dirvec_rows.3012.17869)	# 2384
	sw		x19, 0(x17)	# 2403
	sw		x29, 24(x17)	# 2403
	sw		x9, 20(x17)	# 2403
	sw		x20, 16(x17)	# 2403
	sw		x11, 12(x17)	# 2403
	sw		x6, 8(x17)	# 2403
	sw		x5, 4(x17)	# 2403
	addi	x9, x3, 0	# 2403
	addi	x3, x3, 20	# 2403
	lui		x19, %hi(create_dirvec_elements.3018.17873)	# 2403
	ori		x19, x0, %lo(create_dirvec_elements.3018.17873)	# 2403
	sw		x19, 0(x9)	# 2410
	sw		x18, 16(x9)	# 2410
	sw		x6, 12(x9)	# 2410
	sw		x5, 8(x9)	# 2410
	fsw		f1, 4(x9)	# 2410
	addi	x19, x3, 0	# 2410
	addi	x3, x3, 24	# 2410
	lui		x21, %hi(create_dirvecs.3021.17876)	# 2410
	ori		x21, x0, %lo(create_dirvecs.3021.17876)	# 2410
	sw		x21, 0(x19)	# 2422
	sw		x9, 20(x19)	# 2422
	sw		x18, 16(x19)	# 2422
	sw		x6, 12(x19)	# 2422
	sw		x5, 8(x19)	# 2422
	fsw		f1, 4(x19)	# 2422
	addi	x9, x3, 0	# 2422
	addi	x3, x3, 16	# 2422
	lui		x21, %hi(init_dirvec_constants.3023.17878)	# 2422
	ori		x21, x0, %lo(init_dirvec_constants.3023.17878)	# 2422
	sw		x21, 0(x9)	# 2429
	sw		x13, 12(x9)	# 2429
	sw		x6, 8(x9)	# 2429
	sw		x5, 4(x9)	# 2429
	addi	x21, x3, 0	# 2429
	addi	x3, x3, 16	# 2429
	lui		x22, %hi(init_vecset_constants.3026.17881)	# 2429
	ori		x22, x0, %lo(init_vecset_constants.3026.17881)	# 2429
	sw		x22, 0(x21)	# 2528
	sw		x9, 12(x21)	# 2528
	sw		x6, 8(x21)	# 2528
	sw		x5, 4(x21)	# 2528
	addi	x9, x0, 256	# 2528
	mul		x22, x30, x6	# 2508
	addi	x22, x22, 60616	# 2508
	sw		x9, 0(x22)	# 2508
	mul		x22, x30, x5	# 2509
	addi	x22, x22, 60616	# 2509
	sw		x9, 0(x22)	# 2509
	addi	x22, x0, 128	# 2510
	mul		x23, x30, x6	# 2510
	addi	x23, x23, 60624	# 2510
	sw		x22, 0(x23)	# 2510
	mul		x23, x30, x5	# 2511
	addi	x23, x23, 60624	# 2511
	sw		x22, 0(x23)	# 2511
	lui		x22, %hi(l.28509)	# 2512
	ori		x22, x0, %lo(l.28509)	# 2512
	flw		f2, 0(x22)	# 2512
	sw		x4, -92(x2)	# 2512
	sw		x12, -96(x2)	# 2512
	sw		x29, -100(x2)	# 2512
	sw		x13, -104(x2)	# 2512
	sw		x21, -108(x2)	# 2512
	sw		x17, -112(x2)	# 2512
	sw		x19, -116(x2)	# 2512
	sw		x14, -120(x2)	# 2512
	sw		x15, -124(x2)	# 2512
	sw		x10, -128(x2)	# 2512
	sw		x7, -132(x2)	# 2512
	sw		x8, -136(x2)	# 2512
	sw		x16, -140(x2)	# 2512
	fsw		f2, -144(x2)	# 2512
	addi	x4, x9, 0
	sw		x1, -148(x2)	# 2512
	addi	x2, x2, -152	# 2512
	lw		x31, 0(x29)	# 2512
	jalr	x1, x31, 0	# 2512
	addi	x2, x2, 152	# 2512
	lw		x1, -148(x2)	# 2512
	flw		f2, -144(x2)	# 2512
	fdiv	f1, f2, f1	# 2512
	lw		x4, -4(x2)	# 2512
	mul		x5, x30, x4	# 2512
	addi	x5, x5, 60632	# 2512
	fsw		f1, 0(x5)	# 2512
	mul		x5, x30, x4	# 2322
	addi	x5, x5, 60616	# 2322
	lw		x5, 0(x5)	# 2322
	flw		f1, -8(x2)	# 2300
	lw		x6, -20(x2)	# 2300
	sw		x5, -148(x2)	# 2300
	addi	x4, x6, 0
	sw		x1, -152(x2)	# 2300
	addi	x2, x2, -156	# 2300
	jal		x1, min_caml_create_float_array	# 2300
	addi	x2, x2, 156	# 2300
	lw		x1, -152(x2)	# 2300
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -152(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -156(x2)	# 2288
	addi	x2, x2, -160	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 160	# 2288
	lw		x1, -156(x2)	# 2288
	addi	x5, x4, 0	# 2288
	lw		x4, -64(x2)	# 2289
	sw		x1, -156(x2)	# 2289
	addi	x2, x2, -160	# 2289
	jal		x1, min_caml_create_array	# 2289
	addi	x2, x2, 160	# 2289
	lw		x1, -156(x2)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	sw		x4, -156(x2)	# 2290
	addi	x4, x5, 0
	sw		x1, -160(x2)	# 2290
	addi	x2, x2, -164	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 164	# 2290
	lw		x1, -160(x2)	# 2290
	lw		x5, 0(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -156(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	lw		x4, -20(x2)	# 2291
	sw		x1, -160(x2)	# 2291
	addi	x2, x2, -164	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 164	# 2291
	lw		x1, -160(x2)	# 2291
	lw		x5, -48(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -156(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	flw		f1, -8(x2)	# 2292
	lw		x4, -20(x2)	# 2292
	sw		x1, -160(x2)	# 2292
	addi	x2, x2, -164	# 2292
	jal		x1, min_caml_create_float_array	# 2292
	addi	x2, x2, 164	# 2292
	lw		x1, -160(x2)	# 2292
	lw		x5, -20(x2)	# 2292
	mul		x6, x30, x5	# 2292
	lw		x7, -156(x2)	# 2292
	add		x6, x7, x6	# 2292
	sw		x4, 0(x6)	# 2292
	addi	x4, x0, 4	# 2293
	flw		f1, -8(x2)	# 2293
	sw		x4, -160(x2)	# 2293
	addi	x4, x5, 0
	sw		x1, -164(x2)	# 2293
	addi	x2, x2, -168	# 2293
	jal		x1, min_caml_create_float_array	# 2293
	addi	x2, x2, 168	# 2293
	lw		x1, -164(x2)	# 2293
	lw		x5, -160(x2)	# 2293
	mul		x6, x30, x5	# 2293
	lw		x7, -156(x2)	# 2293
	add		x6, x7, x6	# 2293
	sw		x4, 0(x6)	# 2293
	lw		x4, -64(x2)	# 2302
	lw		x6, -4(x2)	# 2302
	addi	x5, x6, 0
	sw		x1, -164(x2)	# 2302
	addi	x2, x2, -168	# 2302
	jal		x1, min_caml_create_array	# 2302
	addi	x2, x2, 168	# 2302
	lw		x1, -164(x2)	# 2302
	lw		x5, -64(x2)	# 2303
	lw		x6, -4(x2)	# 2303
	sw		x4, -164(x2)	# 2303
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -168(x2)	# 2303
	addi	x2, x2, -172	# 2303
	jal		x1, min_caml_create_array	# 2303
	addi	x2, x2, 172	# 2303
	lw		x1, -168(x2)	# 2303
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -168(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -172(x2)	# 2288
	addi	x2, x2, -176	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 176	# 2288
	lw		x1, -172(x2)	# 2288
	addi	x5, x4, 0	# 2288
	lw		x4, -64(x2)	# 2289
	sw		x1, -172(x2)	# 2289
	addi	x2, x2, -176	# 2289
	jal		x1, min_caml_create_array	# 2289
	addi	x2, x2, 176	# 2289
	lw		x1, -172(x2)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	sw		x4, -172(x2)	# 2290
	addi	x4, x5, 0
	sw		x1, -176(x2)	# 2290
	addi	x2, x2, -180	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 180	# 2290
	lw		x1, -176(x2)	# 2290
	lw		x5, 0(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -172(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	lw		x4, -20(x2)	# 2291
	sw		x1, -176(x2)	# 2291
	addi	x2, x2, -180	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 180	# 2291
	lw		x1, -176(x2)	# 2291
	lw		x5, -48(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -172(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	flw		f1, -8(x2)	# 2292
	lw		x4, -20(x2)	# 2292
	sw		x1, -176(x2)	# 2292
	addi	x2, x2, -180	# 2292
	jal		x1, min_caml_create_float_array	# 2292
	addi	x2, x2, 180	# 2292
	lw		x1, -176(x2)	# 2292
	lw		x5, -20(x2)	# 2292
	mul		x6, x30, x5	# 2292
	lw		x7, -172(x2)	# 2292
	add		x6, x7, x6	# 2292
	sw		x4, 0(x6)	# 2292
	flw		f1, -8(x2)	# 2293
	addi	x4, x5, 0
	sw		x1, -176(x2)	# 2293
	addi	x2, x2, -180	# 2293
	jal		x1, min_caml_create_float_array	# 2293
	addi	x2, x2, 180	# 2293
	lw		x1, -176(x2)	# 2293
	lw		x5, -160(x2)	# 2293
	mul		x6, x30, x5	# 2293
	lw		x7, -172(x2)	# 2293
	add		x6, x7, x6	# 2293
	sw		x4, 0(x6)	# 2293
	flw		f1, -8(x2)	# 2288
	lw		x4, -20(x2)	# 2288
	sw		x1, -176(x2)	# 2288
	addi	x2, x2, -180	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 180	# 2288
	lw		x1, -176(x2)	# 2288
	addi	x5, x4, 0	# 2288
	lw		x4, -64(x2)	# 2289
	sw		x1, -176(x2)	# 2289
	addi	x2, x2, -180	# 2289
	jal		x1, min_caml_create_array	# 2289
	addi	x2, x2, 180	# 2289
	lw		x1, -176(x2)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	sw		x4, -176(x2)	# 2290
	addi	x4, x5, 0
	sw		x1, -180(x2)	# 2290
	addi	x2, x2, -184	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 184	# 2290
	lw		x1, -180(x2)	# 2290
	lw		x5, 0(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -176(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	lw		x4, -20(x2)	# 2291
	sw		x1, -180(x2)	# 2291
	addi	x2, x2, -184	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 184	# 2291
	lw		x1, -180(x2)	# 2291
	lw		x5, -48(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -176(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	flw		f1, -8(x2)	# 2292
	lw		x4, -20(x2)	# 2292
	sw		x1, -180(x2)	# 2292
	addi	x2, x2, -184	# 2292
	jal		x1, min_caml_create_float_array	# 2292
	addi	x2, x2, 184	# 2292
	lw		x1, -180(x2)	# 2292
	lw		x5, -20(x2)	# 2292
	mul		x6, x30, x5	# 2292
	lw		x7, -176(x2)	# 2292
	add		x6, x7, x6	# 2292
	sw		x4, 0(x6)	# 2292
	flw		f1, -8(x2)	# 2293
	addi	x4, x5, 0
	sw		x1, -180(x2)	# 2293
	addi	x2, x2, -184	# 2293
	jal		x1, min_caml_create_float_array	# 2293
	addi	x2, x2, 184	# 2293
	lw		x1, -180(x2)	# 2293
	lw		x5, -160(x2)	# 2293
	mul		x6, x30, x5	# 2293
	lw		x7, -176(x2)	# 2293
	add		x6, x7, x6	# 2293
	sw		x4, 0(x6)	# 2293
	lw		x4, 0(x2)	# 2306
	lw		x6, -4(x2)	# 2306
	addi	x5, x6, 0
	sw		x1, -180(x2)	# 2306
	addi	x2, x2, -184	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 184	# 2306
	lw		x1, -180(x2)	# 2306
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -180(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -184(x2)	# 2288
	addi	x2, x2, -188	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 188	# 2288
	lw		x1, -184(x2)	# 2288
	addi	x5, x4, 0	# 2288
	lw		x4, -64(x2)	# 2289
	sw		x1, -184(x2)	# 2289
	addi	x2, x2, -188	# 2289
	jal		x1, min_caml_create_array	# 2289
	addi	x2, x2, 188	# 2289
	lw		x1, -184(x2)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	sw		x4, -184(x2)	# 2290
	addi	x4, x5, 0
	sw		x1, -188(x2)	# 2290
	addi	x2, x2, -192	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 192	# 2290
	lw		x1, -188(x2)	# 2290
	lw		x5, 0(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -184(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	lw		x4, -20(x2)	# 2291
	sw		x1, -188(x2)	# 2291
	addi	x2, x2, -192	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 192	# 2291
	lw		x1, -188(x2)	# 2291
	lw		x5, -48(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -184(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	flw		f1, -8(x2)	# 2292
	lw		x4, -20(x2)	# 2292
	sw		x1, -188(x2)	# 2292
	addi	x2, x2, -192	# 2292
	jal		x1, min_caml_create_float_array	# 2292
	addi	x2, x2, 192	# 2292
	lw		x1, -188(x2)	# 2292
	lw		x5, -20(x2)	# 2292
	mul		x6, x30, x5	# 2292
	lw		x7, -184(x2)	# 2292
	add		x6, x7, x6	# 2292
	sw		x4, 0(x6)	# 2292
	flw		f1, -8(x2)	# 2293
	addi	x4, x5, 0
	sw		x1, -188(x2)	# 2293
	addi	x2, x2, -192	# 2293
	jal		x1, min_caml_create_float_array	# 2293
	addi	x2, x2, 192	# 2293
	lw		x1, -188(x2)	# 2293
	lw		x5, -160(x2)	# 2293
	mul		x6, x30, x5	# 2293
	lw		x7, -184(x2)	# 2293
	add		x6, x7, x6	# 2293
	sw		x4, 0(x6)	# 2293
	addi	x4, x3, 0	# 2308
	addi	x3, x3, 32	# 2308
	sw		x7, 28(x4)	# 2308
	lw		x6, -180(x2)	# 2308
	sw		x6, 24(x4)	# 2308
	lw		x6, -176(x2)	# 2308
	sw		x6, 20(x4)	# 2308
	lw		x6, -172(x2)	# 2308
	sw		x6, 16(x4)	# 2308
	lw		x6, -168(x2)	# 2308
	sw		x6, 12(x4)	# 2308
	lw		x6, -164(x2)	# 2308
	sw		x6, 8(x4)	# 2308
	lw		x6, -156(x2)	# 2308
	sw		x6, 4(x4)	# 2308
	lw		x6, -152(x2)	# 2308
	sw		x6, 0(x4)	# 2308
	lw		x6, -148(x2)	# 2322
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -188(x2)	# 2322
	addi	x2, x2, -192	# 2322
	jal		x1, min_caml_create_array	# 2322
	addi	x2, x2, 192	# 2322
	lw		x1, -188(x2)	# 2322
	lw		x5, -4(x2)	# 2323
	mul		x6, x30, x5	# 2323
	addi	x6, x6, 60616	# 2323
	lw		x6, 0(x6)	# 2323
	lw		x7, -48(x2)	# 2323
	sub		x6, x6, x7	# 2323
	lw		x29, -140(x2)	# 2323
	addi	x5, x6, 0
	sw		x1, -188(x2)	# 2323
	addi	x2, x2, -192	# 2323
	lw		x31, 0(x29)	# 2323
	jalr	x1, x31, 0	# 2323
	addi	x2, x2, 192	# 2323
	lw		x1, -188(x2)	# 2323
	lw		x5, -4(x2)	# 2322
	mul		x6, x30, x5	# 2322
	addi	x6, x6, 60616	# 2322
	lw		x6, 0(x6)	# 2322
	flw		f1, -8(x2)	# 2300
	lw		x7, -20(x2)	# 2300
	sw		x4, -188(x2)	# 2300
	sw		x6, -192(x2)	# 2300
	addi	x4, x7, 0
	sw		x1, -196(x2)	# 2300
	addi	x2, x2, -200	# 2300
	jal		x1, min_caml_create_float_array	# 2300
	addi	x2, x2, 200	# 2300
	lw		x1, -196(x2)	# 2300
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -196(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -200(x2)	# 2288
	addi	x2, x2, -204	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 204	# 2288
	lw		x1, -200(x2)	# 2288
	addi	x5, x4, 0	# 2288
	lw		x4, -64(x2)	# 2289
	sw		x1, -200(x2)	# 2289
	addi	x2, x2, -204	# 2289
	jal		x1, min_caml_create_array	# 2289
	addi	x2, x2, 204	# 2289
	lw		x1, -200(x2)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	sw		x4, -200(x2)	# 2290
	addi	x4, x5, 0
	sw		x1, -204(x2)	# 2290
	addi	x2, x2, -208	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 208	# 2290
	lw		x1, -204(x2)	# 2290
	lw		x5, 0(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -200(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	lw		x4, -20(x2)	# 2291
	sw		x1, -204(x2)	# 2291
	addi	x2, x2, -208	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 208	# 2291
	lw		x1, -204(x2)	# 2291
	lw		x5, -48(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -200(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	flw		f1, -8(x2)	# 2292
	lw		x4, -20(x2)	# 2292
	sw		x1, -204(x2)	# 2292
	addi	x2, x2, -208	# 2292
	jal		x1, min_caml_create_float_array	# 2292
	addi	x2, x2, 208	# 2292
	lw		x1, -204(x2)	# 2292
	lw		x5, -20(x2)	# 2292
	mul		x6, x30, x5	# 2292
	lw		x7, -200(x2)	# 2292
	add		x6, x7, x6	# 2292
	sw		x4, 0(x6)	# 2292
	flw		f1, -8(x2)	# 2293
	addi	x4, x5, 0
	sw		x1, -204(x2)	# 2293
	addi	x2, x2, -208	# 2293
	jal		x1, min_caml_create_float_array	# 2293
	addi	x2, x2, 208	# 2293
	lw		x1, -204(x2)	# 2293
	lw		x5, -160(x2)	# 2293
	mul		x6, x30, x5	# 2293
	lw		x7, -200(x2)	# 2293
	add		x6, x7, x6	# 2293
	sw		x4, 0(x6)	# 2293
	lw		x4, -64(x2)	# 2302
	lw		x6, -4(x2)	# 2302
	addi	x5, x6, 0
	sw		x1, -204(x2)	# 2302
	addi	x2, x2, -208	# 2302
	jal		x1, min_caml_create_array	# 2302
	addi	x2, x2, 208	# 2302
	lw		x1, -204(x2)	# 2302
	lw		x5, -64(x2)	# 2303
	lw		x6, -4(x2)	# 2303
	sw		x4, -204(x2)	# 2303
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -208(x2)	# 2303
	addi	x2, x2, -212	# 2303
	jal		x1, min_caml_create_array	# 2303
	addi	x2, x2, 212	# 2303
	lw		x1, -208(x2)	# 2303
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -208(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -212(x2)	# 2288
	addi	x2, x2, -216	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 216	# 2288
	lw		x1, -212(x2)	# 2288
	addi	x5, x4, 0	# 2288
	lw		x4, -64(x2)	# 2289
	sw		x1, -212(x2)	# 2289
	addi	x2, x2, -216	# 2289
	jal		x1, min_caml_create_array	# 2289
	addi	x2, x2, 216	# 2289
	lw		x1, -212(x2)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	sw		x4, -212(x2)	# 2290
	addi	x4, x5, 0
	sw		x1, -216(x2)	# 2290
	addi	x2, x2, -220	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 220	# 2290
	lw		x1, -216(x2)	# 2290
	lw		x5, 0(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -212(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	lw		x4, -20(x2)	# 2291
	sw		x1, -216(x2)	# 2291
	addi	x2, x2, -220	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 220	# 2291
	lw		x1, -216(x2)	# 2291
	lw		x5, -48(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -212(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	flw		f1, -8(x2)	# 2292
	lw		x4, -20(x2)	# 2292
	sw		x1, -216(x2)	# 2292
	addi	x2, x2, -220	# 2292
	jal		x1, min_caml_create_float_array	# 2292
	addi	x2, x2, 220	# 2292
	lw		x1, -216(x2)	# 2292
	lw		x5, -20(x2)	# 2292
	mul		x6, x30, x5	# 2292
	lw		x7, -212(x2)	# 2292
	add		x6, x7, x6	# 2292
	sw		x4, 0(x6)	# 2292
	flw		f1, -8(x2)	# 2293
	addi	x4, x5, 0
	sw		x1, -216(x2)	# 2293
	addi	x2, x2, -220	# 2293
	jal		x1, min_caml_create_float_array	# 2293
	addi	x2, x2, 220	# 2293
	lw		x1, -216(x2)	# 2293
	lw		x5, -160(x2)	# 2293
	mul		x6, x30, x5	# 2293
	lw		x7, -212(x2)	# 2293
	add		x6, x7, x6	# 2293
	sw		x4, 0(x6)	# 2293
	flw		f1, -8(x2)	# 2288
	lw		x4, -20(x2)	# 2288
	sw		x1, -216(x2)	# 2288
	addi	x2, x2, -220	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 220	# 2288
	lw		x1, -216(x2)	# 2288
	addi	x5, x4, 0	# 2288
	lw		x4, -64(x2)	# 2289
	sw		x1, -216(x2)	# 2289
	addi	x2, x2, -220	# 2289
	jal		x1, min_caml_create_array	# 2289
	addi	x2, x2, 220	# 2289
	lw		x1, -216(x2)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	sw		x4, -216(x2)	# 2290
	addi	x4, x5, 0
	sw		x1, -220(x2)	# 2290
	addi	x2, x2, -224	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 224	# 2290
	lw		x1, -220(x2)	# 2290
	lw		x5, 0(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -216(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	lw		x4, -20(x2)	# 2291
	sw		x1, -220(x2)	# 2291
	addi	x2, x2, -224	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 224	# 2291
	lw		x1, -220(x2)	# 2291
	lw		x5, -48(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -216(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	flw		f1, -8(x2)	# 2292
	lw		x4, -20(x2)	# 2292
	sw		x1, -220(x2)	# 2292
	addi	x2, x2, -224	# 2292
	jal		x1, min_caml_create_float_array	# 2292
	addi	x2, x2, 224	# 2292
	lw		x1, -220(x2)	# 2292
	lw		x5, -20(x2)	# 2292
	mul		x6, x30, x5	# 2292
	lw		x7, -216(x2)	# 2292
	add		x6, x7, x6	# 2292
	sw		x4, 0(x6)	# 2292
	flw		f1, -8(x2)	# 2293
	addi	x4, x5, 0
	sw		x1, -220(x2)	# 2293
	addi	x2, x2, -224	# 2293
	jal		x1, min_caml_create_float_array	# 2293
	addi	x2, x2, 224	# 2293
	lw		x1, -220(x2)	# 2293
	lw		x5, -160(x2)	# 2293
	mul		x6, x30, x5	# 2293
	lw		x7, -216(x2)	# 2293
	add		x6, x7, x6	# 2293
	sw		x4, 0(x6)	# 2293
	lw		x4, 0(x2)	# 2306
	lw		x6, -4(x2)	# 2306
	addi	x5, x6, 0
	sw		x1, -220(x2)	# 2306
	addi	x2, x2, -224	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 224	# 2306
	lw		x1, -220(x2)	# 2306
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -220(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -224(x2)	# 2288
	addi	x2, x2, -228	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 228	# 2288
	lw		x1, -224(x2)	# 2288
	addi	x5, x4, 0	# 2288
	lw		x4, -64(x2)	# 2289
	sw		x1, -224(x2)	# 2289
	addi	x2, x2, -228	# 2289
	jal		x1, min_caml_create_array	# 2289
	addi	x2, x2, 228	# 2289
	lw		x1, -224(x2)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	sw		x4, -224(x2)	# 2290
	addi	x4, x5, 0
	sw		x1, -228(x2)	# 2290
	addi	x2, x2, -232	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 232	# 2290
	lw		x1, -228(x2)	# 2290
	lw		x5, 0(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -224(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	lw		x4, -20(x2)	# 2291
	sw		x1, -228(x2)	# 2291
	addi	x2, x2, -232	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 232	# 2291
	lw		x1, -228(x2)	# 2291
	lw		x5, -48(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -224(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	flw		f1, -8(x2)	# 2292
	lw		x4, -20(x2)	# 2292
	sw		x1, -228(x2)	# 2292
	addi	x2, x2, -232	# 2292
	jal		x1, min_caml_create_float_array	# 2292
	addi	x2, x2, 232	# 2292
	lw		x1, -228(x2)	# 2292
	lw		x5, -20(x2)	# 2292
	mul		x6, x30, x5	# 2292
	lw		x7, -224(x2)	# 2292
	add		x6, x7, x6	# 2292
	sw		x4, 0(x6)	# 2292
	flw		f1, -8(x2)	# 2293
	addi	x4, x5, 0
	sw		x1, -228(x2)	# 2293
	addi	x2, x2, -232	# 2293
	jal		x1, min_caml_create_float_array	# 2293
	addi	x2, x2, 232	# 2293
	lw		x1, -228(x2)	# 2293
	lw		x5, -160(x2)	# 2293
	mul		x6, x30, x5	# 2293
	lw		x7, -224(x2)	# 2293
	add		x6, x7, x6	# 2293
	sw		x4, 0(x6)	# 2293
	addi	x4, x3, 0	# 2308
	addi	x3, x3, 32	# 2308
	sw		x7, 28(x4)	# 2308
	lw		x6, -220(x2)	# 2308
	sw		x6, 24(x4)	# 2308
	lw		x6, -216(x2)	# 2308
	sw		x6, 20(x4)	# 2308
	lw		x6, -212(x2)	# 2308
	sw		x6, 16(x4)	# 2308
	lw		x6, -208(x2)	# 2308
	sw		x6, 12(x4)	# 2308
	lw		x6, -204(x2)	# 2308
	sw		x6, 8(x4)	# 2308
	lw		x6, -200(x2)	# 2308
	sw		x6, 4(x4)	# 2308
	lw		x6, -196(x2)	# 2308
	sw		x6, 0(x4)	# 2308
	lw		x6, -192(x2)	# 2322
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -228(x2)	# 2322
	addi	x2, x2, -232	# 2322
	jal		x1, min_caml_create_array	# 2322
	addi	x2, x2, 232	# 2322
	lw		x1, -228(x2)	# 2322
	lw		x5, -4(x2)	# 2323
	mul		x6, x30, x5	# 2323
	addi	x6, x6, 60616	# 2323
	lw		x6, 0(x6)	# 2323
	lw		x7, -48(x2)	# 2323
	sub		x6, x6, x7	# 2323
	lw		x29, -140(x2)	# 2323
	addi	x5, x6, 0
	sw		x1, -228(x2)	# 2323
	addi	x2, x2, -232	# 2323
	lw		x31, 0(x29)	# 2323
	jalr	x1, x31, 0	# 2323
	addi	x2, x2, 232	# 2323
	lw		x1, -228(x2)	# 2323
	lw		x5, -4(x2)	# 2322
	mul		x6, x30, x5	# 2322
	addi	x6, x6, 60616	# 2322
	lw		x6, 0(x6)	# 2322
	flw		f1, -8(x2)	# 2300
	lw		x7, -20(x2)	# 2300
	sw		x4, -228(x2)	# 2300
	sw		x6, -232(x2)	# 2300
	addi	x4, x7, 0
	sw		x1, -236(x2)	# 2300
	addi	x2, x2, -240	# 2300
	jal		x1, min_caml_create_float_array	# 2300
	addi	x2, x2, 240	# 2300
	lw		x1, -236(x2)	# 2300
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -236(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -240(x2)	# 2288
	addi	x2, x2, -244	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 244	# 2288
	lw		x1, -240(x2)	# 2288
	addi	x5, x4, 0	# 2288
	lw		x4, -64(x2)	# 2289
	sw		x1, -240(x2)	# 2289
	addi	x2, x2, -244	# 2289
	jal		x1, min_caml_create_array	# 2289
	addi	x2, x2, 244	# 2289
	lw		x1, -240(x2)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	sw		x4, -240(x2)	# 2290
	addi	x4, x5, 0
	sw		x1, -244(x2)	# 2290
	addi	x2, x2, -248	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 248	# 2290
	lw		x1, -244(x2)	# 2290
	lw		x5, 0(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -240(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	lw		x4, -20(x2)	# 2291
	sw		x1, -244(x2)	# 2291
	addi	x2, x2, -248	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 248	# 2291
	lw		x1, -244(x2)	# 2291
	lw		x5, -48(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -240(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	flw		f1, -8(x2)	# 2292
	lw		x4, -20(x2)	# 2292
	sw		x1, -244(x2)	# 2292
	addi	x2, x2, -248	# 2292
	jal		x1, min_caml_create_float_array	# 2292
	addi	x2, x2, 248	# 2292
	lw		x1, -244(x2)	# 2292
	lw		x5, -20(x2)	# 2292
	mul		x6, x30, x5	# 2292
	lw		x7, -240(x2)	# 2292
	add		x6, x7, x6	# 2292
	sw		x4, 0(x6)	# 2292
	flw		f1, -8(x2)	# 2293
	addi	x4, x5, 0
	sw		x1, -244(x2)	# 2293
	addi	x2, x2, -248	# 2293
	jal		x1, min_caml_create_float_array	# 2293
	addi	x2, x2, 248	# 2293
	lw		x1, -244(x2)	# 2293
	lw		x5, -160(x2)	# 2293
	mul		x6, x30, x5	# 2293
	lw		x7, -240(x2)	# 2293
	add		x6, x7, x6	# 2293
	sw		x4, 0(x6)	# 2293
	lw		x4, -64(x2)	# 2302
	lw		x6, -4(x2)	# 2302
	addi	x5, x6, 0
	sw		x1, -244(x2)	# 2302
	addi	x2, x2, -248	# 2302
	jal		x1, min_caml_create_array	# 2302
	addi	x2, x2, 248	# 2302
	lw		x1, -244(x2)	# 2302
	lw		x5, -64(x2)	# 2303
	lw		x6, -4(x2)	# 2303
	sw		x4, -244(x2)	# 2303
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -248(x2)	# 2303
	addi	x2, x2, -252	# 2303
	jal		x1, min_caml_create_array	# 2303
	addi	x2, x2, 252	# 2303
	lw		x1, -248(x2)	# 2303
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -248(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -252(x2)	# 2288
	addi	x2, x2, -256	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 256	# 2288
	lw		x1, -252(x2)	# 2288
	addi	x5, x4, 0	# 2288
	lw		x4, -64(x2)	# 2289
	sw		x1, -252(x2)	# 2289
	addi	x2, x2, -256	# 2289
	jal		x1, min_caml_create_array	# 2289
	addi	x2, x2, 256	# 2289
	lw		x1, -252(x2)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	sw		x4, -252(x2)	# 2290
	addi	x4, x5, 0
	sw		x1, -256(x2)	# 2290
	addi	x2, x2, -260	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 260	# 2290
	lw		x1, -256(x2)	# 2290
	lw		x5, 0(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -252(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	lw		x4, -20(x2)	# 2291
	sw		x1, -256(x2)	# 2291
	addi	x2, x2, -260	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 260	# 2291
	lw		x1, -256(x2)	# 2291
	lw		x5, -48(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -252(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	flw		f1, -8(x2)	# 2292
	lw		x4, -20(x2)	# 2292
	sw		x1, -256(x2)	# 2292
	addi	x2, x2, -260	# 2292
	jal		x1, min_caml_create_float_array	# 2292
	addi	x2, x2, 260	# 2292
	lw		x1, -256(x2)	# 2292
	lw		x5, -20(x2)	# 2292
	mul		x6, x30, x5	# 2292
	lw		x7, -252(x2)	# 2292
	add		x6, x7, x6	# 2292
	sw		x4, 0(x6)	# 2292
	flw		f1, -8(x2)	# 2293
	addi	x4, x5, 0
	sw		x1, -256(x2)	# 2293
	addi	x2, x2, -260	# 2293
	jal		x1, min_caml_create_float_array	# 2293
	addi	x2, x2, 260	# 2293
	lw		x1, -256(x2)	# 2293
	lw		x5, -160(x2)	# 2293
	mul		x6, x30, x5	# 2293
	lw		x7, -252(x2)	# 2293
	add		x6, x7, x6	# 2293
	sw		x4, 0(x6)	# 2293
	flw		f1, -8(x2)	# 2288
	lw		x4, -20(x2)	# 2288
	sw		x1, -256(x2)	# 2288
	addi	x2, x2, -260	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 260	# 2288
	lw		x1, -256(x2)	# 2288
	addi	x5, x4, 0	# 2288
	lw		x4, -64(x2)	# 2289
	sw		x1, -256(x2)	# 2289
	addi	x2, x2, -260	# 2289
	jal		x1, min_caml_create_array	# 2289
	addi	x2, x2, 260	# 2289
	lw		x1, -256(x2)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	sw		x4, -256(x2)	# 2290
	addi	x4, x5, 0
	sw		x1, -260(x2)	# 2290
	addi	x2, x2, -264	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 264	# 2290
	lw		x1, -260(x2)	# 2290
	lw		x5, 0(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -256(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	lw		x4, -20(x2)	# 2291
	sw		x1, -260(x2)	# 2291
	addi	x2, x2, -264	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 264	# 2291
	lw		x1, -260(x2)	# 2291
	lw		x5, -48(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -256(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	flw		f1, -8(x2)	# 2292
	lw		x4, -20(x2)	# 2292
	sw		x1, -260(x2)	# 2292
	addi	x2, x2, -264	# 2292
	jal		x1, min_caml_create_float_array	# 2292
	addi	x2, x2, 264	# 2292
	lw		x1, -260(x2)	# 2292
	lw		x5, -20(x2)	# 2292
	mul		x6, x30, x5	# 2292
	lw		x7, -256(x2)	# 2292
	add		x6, x7, x6	# 2292
	sw		x4, 0(x6)	# 2292
	flw		f1, -8(x2)	# 2293
	addi	x4, x5, 0
	sw		x1, -260(x2)	# 2293
	addi	x2, x2, -264	# 2293
	jal		x1, min_caml_create_float_array	# 2293
	addi	x2, x2, 264	# 2293
	lw		x1, -260(x2)	# 2293
	lw		x5, -160(x2)	# 2293
	mul		x6, x30, x5	# 2293
	lw		x7, -256(x2)	# 2293
	add		x6, x7, x6	# 2293
	sw		x4, 0(x6)	# 2293
	lw		x4, 0(x2)	# 2306
	lw		x6, -4(x2)	# 2306
	addi	x5, x6, 0
	sw		x1, -260(x2)	# 2306
	addi	x2, x2, -264	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 264	# 2306
	lw		x1, -260(x2)	# 2306
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -260(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -264(x2)	# 2288
	addi	x2, x2, -268	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 268	# 2288
	lw		x1, -264(x2)	# 2288
	addi	x5, x4, 0	# 2288
	lw		x4, -64(x2)	# 2289
	sw		x1, -264(x2)	# 2289
	addi	x2, x2, -268	# 2289
	jal		x1, min_caml_create_array	# 2289
	addi	x2, x2, 268	# 2289
	lw		x1, -264(x2)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	sw		x4, -264(x2)	# 2290
	addi	x4, x5, 0
	sw		x1, -268(x2)	# 2290
	addi	x2, x2, -272	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 272	# 2290
	lw		x1, -268(x2)	# 2290
	lw		x5, 0(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -264(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	lw		x4, -20(x2)	# 2291
	sw		x1, -268(x2)	# 2291
	addi	x2, x2, -272	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 272	# 2291
	lw		x1, -268(x2)	# 2291
	lw		x5, -48(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -264(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	flw		f1, -8(x2)	# 2292
	lw		x4, -20(x2)	# 2292
	sw		x1, -268(x2)	# 2292
	addi	x2, x2, -272	# 2292
	jal		x1, min_caml_create_float_array	# 2292
	addi	x2, x2, 272	# 2292
	lw		x1, -268(x2)	# 2292
	lw		x5, -20(x2)	# 2292
	mul		x6, x30, x5	# 2292
	lw		x7, -264(x2)	# 2292
	add		x6, x7, x6	# 2292
	sw		x4, 0(x6)	# 2292
	flw		f1, -8(x2)	# 2293
	addi	x4, x5, 0
	sw		x1, -268(x2)	# 2293
	addi	x2, x2, -272	# 2293
	jal		x1, min_caml_create_float_array	# 2293
	addi	x2, x2, 272	# 2293
	lw		x1, -268(x2)	# 2293
	lw		x5, -160(x2)	# 2293
	mul		x6, x30, x5	# 2293
	lw		x7, -264(x2)	# 2293
	add		x6, x7, x6	# 2293
	sw		x4, 0(x6)	# 2293
	addi	x4, x3, 0	# 2308
	addi	x3, x3, 32	# 2308
	sw		x7, 28(x4)	# 2308
	lw		x6, -260(x2)	# 2308
	sw		x6, 24(x4)	# 2308
	lw		x6, -256(x2)	# 2308
	sw		x6, 20(x4)	# 2308
	lw		x6, -252(x2)	# 2308
	sw		x6, 16(x4)	# 2308
	lw		x6, -248(x2)	# 2308
	sw		x6, 12(x4)	# 2308
	lw		x6, -244(x2)	# 2308
	sw		x6, 8(x4)	# 2308
	lw		x6, -240(x2)	# 2308
	sw		x6, 4(x4)	# 2308
	lw		x6, -236(x2)	# 2308
	sw		x6, 0(x4)	# 2308
	lw		x6, -232(x2)	# 2322
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -268(x2)	# 2322
	addi	x2, x2, -272	# 2322
	jal		x1, min_caml_create_array	# 2322
	addi	x2, x2, 272	# 2322
	lw		x1, -268(x2)	# 2322
	lw		x5, -4(x2)	# 2323
	mul		x6, x30, x5	# 2323
	addi	x6, x6, 60616	# 2323
	lw		x6, 0(x6)	# 2323
	lw		x7, -48(x2)	# 2323
	sub		x6, x6, x7	# 2323
	lw		x29, -140(x2)	# 2323
	addi	x5, x6, 0
	sw		x1, -268(x2)	# 2323
	addi	x2, x2, -272	# 2323
	lw		x31, 0(x29)	# 2323
	jalr	x1, x31, 0	# 2323
	addi	x2, x2, 272	# 2323
	lw		x1, -268(x2)	# 2323
	sw		x4, -268(x2)	# 700
	sw		x1, -272(x2)	# 700
	addi	x2, x2, -276	# 700
	jal		x1, min_caml_read_float	# 700
	addi	x2, x2, 276	# 700
	lw		x1, -272(x2)	# 700
	lw		x4, -4(x2)	# 700
	mul		x5, x30, x4	# 700
	addi	x5, x5, 60288	# 700
	fsw		f1, 0(x5)	# 700
	sw		x1, -272(x2)	# 701
	addi	x2, x2, -276	# 701
	jal		x1, min_caml_read_float	# 701
	addi	x2, x2, 276	# 701
	lw		x1, -272(x2)	# 701
	lw		x4, 0(x2)	# 701
	mul		x5, x30, x4	# 701
	addi	x5, x5, 60288	# 701
	fsw		f1, 0(x5)	# 701
	sw		x1, -272(x2)	# 702
	addi	x2, x2, -276	# 702
	jal		x1, min_caml_read_float	# 702
	addi	x2, x2, 276	# 702
	lw		x1, -272(x2)	# 702
	lw		x4, -48(x2)	# 702
	mul		x5, x30, x4	# 702
	addi	x5, x5, 60288	# 702
	fsw		f1, 0(x5)	# 702
	sw		x1, -272(x2)	# 704
	addi	x2, x2, -276	# 704
	jal		x1, min_caml_read_float	# 704
	addi	x2, x2, 276	# 704
	lw		x1, -272(x2)	# 704
	fadd	f2, f0, f24	# 693
	fmul	f1, f1, f2	# 693
	lw		x29, -136(x2)	# 705
	fsw		f2, -272(x2)	# 705
	fsw		f1, -276(x2)	# 705
	sw		x1, -280(x2)	# 705
	addi	x2, x2, -284	# 705
	lw		x31, 0(x29)	# 705
	jalr	x1, x31, 0	# 705
	addi	x2, x2, 284	# 705
	lw		x1, -280(x2)	# 705
	flw		f2, -276(x2)	# 706
	lw		x29, -132(x2)	# 706
	fsw		f1, -280(x2)	# 706
	fadd	f1, f0, f2
	sw		x1, -284(x2)	# 706
	addi	x2, x2, -288	# 706
	lw		x31, 0(x29)	# 706
	jalr	x1, x31, 0	# 706
	addi	x2, x2, 288	# 706
	lw		x1, -284(x2)	# 706
	fsw		f1, -284(x2)	# 707
	sw		x1, -288(x2)	# 707
	addi	x2, x2, -292	# 707
	jal		x1, min_caml_read_float	# 707
	addi	x2, x2, 292	# 707
	lw		x1, -288(x2)	# 707
	flw		f2, -272(x2)	# 693
	fmul	f1, f1, f2	# 693
	lw		x29, -136(x2)	# 708
	fsw		f1, -288(x2)	# 708
	sw		x1, -292(x2)	# 708
	addi	x2, x2, -296	# 708
	lw		x31, 0(x29)	# 708
	jalr	x1, x31, 0	# 708
	addi	x2, x2, 296	# 708
	lw		x1, -292(x2)	# 708
	flw		f2, -288(x2)	# 709
	lw		x29, -132(x2)	# 709
	fsw		f1, -292(x2)	# 709
	fadd	f1, f0, f2
	sw		x1, -296(x2)	# 709
	addi	x2, x2, -300	# 709
	lw		x31, 0(x29)	# 709
	jalr	x1, x31, 0	# 709
	addi	x2, x2, 300	# 709
	lw		x1, -296(x2)	# 709
	flw		f2, -280(x2)	# 711
	fmul	f3, f2, f1	# 711
	lui		x4, %hi(l.28655)	# 711
	ori		x4, x0, %lo(l.28655)	# 711
	flw		f4, 0(x4)	# 711
	fmul	f3, f3, f4	# 711
	lw		x4, -4(x2)	# 711
	mul		x5, x30, x4	# 711
	addi	x5, x5, 60684	# 711
	fsw		f3, 0(x5)	# 711
	lui		x5, %hi(l.28659)	# 712
	ori		x5, x0, %lo(l.28659)	# 712
	flw		f3, 0(x5)	# 712
	flw		f5, -284(x2)	# 712
	fmul	f3, f5, f3	# 712
	lw		x5, 0(x2)	# 712
	mul		x6, x30, x5	# 712
	addi	x6, x6, 60684	# 712
	fsw		f3, 0(x6)	# 712
	flw		f3, -292(x2)	# 713
	fmul	f6, f2, f3	# 713
	fmul	f4, f6, f4	# 713
	lw		x6, -48(x2)	# 713
	mul		x7, x30, x6	# 713
	addi	x7, x7, 60684	# 713
	fsw		f4, 0(x7)	# 713
	mul		x7, x30, x4	# 715
	addi	x7, x7, 60660	# 715
	fsw		f3, 0(x7)	# 715
	mul		x7, x30, x5	# 716
	addi	x7, x7, 60660	# 716
	flw		f4, -8(x2)	# 716
	fsw		f4, 0(x7)	# 716
	fsub	f6, f0, f1	# 123
	mul		x7, x30, x6	# 717
	addi	x7, x7, 60660	# 717
	fsw		f6, 0(x7)	# 717
	fsub	f5, f0, f5	# 123
	fmul	f1, f5, f1	# 719
	mul		x7, x30, x4	# 719
	addi	x7, x7, 60672	# 719
	fsw		f1, 0(x7)	# 719
	fsub	f1, f0, f2	# 123
	mul		x7, x30, x5	# 720
	addi	x7, x7, 60672	# 720
	fsw		f1, 0(x7)	# 720
	fmul	f1, f5, f3	# 721
	mul		x7, x30, x6	# 721
	addi	x7, x7, 60672	# 721
	fsw		f1, 0(x7)	# 721
	mul		x7, x30, x4	# 723
	addi	x7, x7, 60288	# 723
	flw		f1, 0(x7)	# 723
	mul		x7, x30, x4	# 723
	addi	x7, x7, 60684	# 723
	flw		f2, 0(x7)	# 723
	fsub	f1, f1, f2	# 723
	mul		x7, x30, x4	# 723
	addi	x7, x7, 60300	# 723
	fsw		f1, 0(x7)	# 723
	mul		x7, x30, x5	# 724
	addi	x7, x7, 60288	# 724
	flw		f1, 0(x7)	# 724
	mul		x7, x30, x5	# 724
	addi	x7, x7, 60684	# 724
	flw		f2, 0(x7)	# 724
	fsub	f1, f1, f2	# 724
	mul		x7, x30, x5	# 724
	addi	x7, x7, 60300	# 724
	fsw		f1, 0(x7)	# 724
	mul		x7, x30, x6	# 725
	addi	x7, x7, 60288	# 725
	flw		f1, 0(x7)	# 725
	mul		x7, x30, x6	# 725
	addi	x7, x7, 60684	# 725
	flw		f2, 0(x7)	# 725
	fsub	f1, f1, f2	# 725
	mul		x7, x30, x6	# 725
	addi	x7, x7, 60300	# 725
	fsw		f1, 0(x7)	# 725
	sw		x1, -296(x2)	# 732
	addi	x2, x2, -300	# 732
	jal		x1, min_caml_read_int	# 732
	addi	x2, x2, 300	# 732
	lw		x1, -296(x2)	# 732
	sw		x1, -296(x2)	# 735
	addi	x2, x2, -300	# 735
	jal		x1, min_caml_read_float	# 735
	addi	x2, x2, 300	# 735
	lw		x1, -296(x2)	# 735
	flw		f2, -272(x2)	# 693
	fmul	f1, f1, f2	# 693
	lw		x29, -132(x2)	# 736
	fsw		f1, -296(x2)	# 736
	sw		x1, -300(x2)	# 736
	addi	x2, x2, -304	# 736
	lw		x31, 0(x29)	# 736
	jalr	x1, x31, 0	# 736
	addi	x2, x2, 304	# 736
	lw		x1, -300(x2)	# 736
	fsub	f1, f0, f1	# 123
	lw		x4, 0(x2)	# 737
	mul		x5, x30, x4	# 737
	addi	x5, x5, 60312	# 737
	fsw		f1, 0(x5)	# 737
	sw		x1, -300(x2)	# 738
	addi	x2, x2, -304	# 738
	jal		x1, min_caml_read_float	# 738
	addi	x2, x2, 304	# 738
	lw		x1, -300(x2)	# 738
	flw		f2, -272(x2)	# 693
	fmul	f1, f1, f2	# 693
	flw		f2, -296(x2)	# 739
	lw		x29, -136(x2)	# 739
	fsw		f1, -300(x2)	# 739
	fadd	f1, f0, f2
	sw		x1, -304(x2)	# 739
	addi	x2, x2, -308	# 739
	lw		x31, 0(x29)	# 739
	jalr	x1, x31, 0	# 739
	addi	x2, x2, 308	# 739
	lw		x1, -304(x2)	# 739
	flw		f2, -300(x2)	# 740
	lw		x29, -132(x2)	# 740
	fsw		f1, -304(x2)	# 740
	fadd	f1, f0, f2
	sw		x1, -308(x2)	# 740
	addi	x2, x2, -312	# 740
	lw		x31, 0(x29)	# 740
	jalr	x1, x31, 0	# 740
	addi	x2, x2, 312	# 740
	lw		x1, -308(x2)	# 740
	flw		f2, -304(x2)	# 741
	fmul	f1, f2, f1	# 741
	lw		x4, -4(x2)	# 741
	mul		x5, x30, x4	# 741
	addi	x5, x5, 60312	# 741
	fsw		f1, 0(x5)	# 741
	flw		f1, -300(x2)	# 742
	lw		x29, -136(x2)	# 742
	sw		x1, -308(x2)	# 742
	addi	x2, x2, -312	# 742
	lw		x31, 0(x29)	# 742
	jalr	x1, x31, 0	# 742
	addi	x2, x2, 312	# 742
	lw		x1, -308(x2)	# 742
	flw		f2, -304(x2)	# 743
	fmul	f1, f2, f1	# 743
	lw		x4, -48(x2)	# 743
	mul		x5, x30, x4	# 743
	addi	x5, x5, 60312	# 743
	fsw		f1, 0(x5)	# 743
	sw		x1, -308(x2)	# 744
	addi	x2, x2, -312	# 744
	jal		x1, min_caml_read_float	# 744
	addi	x2, x2, 312	# 744
	lw		x1, -308(x2)	# 744
	lw		x4, -4(x2)	# 744
	mul		x5, x30, x4	# 744
	addi	x5, x5, 60324	# 744
	fsw		f1, 0(x5)	# 744
	lw		x29, -128(x2)	# 886
	sw		x1, -308(x2)	# 886
	addi	x2, x2, -312	# 886
	lw		x31, 0(x29)	# 886
	jalr	x1, x31, 0	# 886
	addi	x2, x2, 312	# 886
	lw		x1, -308(x2)	# 886
	lw		x4, -4(x2)	# 923
	lw		x29, -124(x2)	# 923
	sw		x1, -308(x2)	# 923
	addi	x2, x2, -312	# 923
	lw		x31, 0(x29)	# 923
	jalr	x1, x31, 0	# 923
	addi	x2, x2, 312	# 923
	lw		x1, -308(x2)	# 923
	lw		x4, -4(x2)	# 924
	lw		x29, -120(x2)	# 924
	sw		x1, -308(x2)	# 924
	addi	x2, x2, -312	# 924
	lw		x31, 0(x29)	# 924
	jalr	x1, x31, 0	# 924
	addi	x2, x2, 312	# 924
	lw		x1, -308(x2)	# 924
	lw		x5, -4(x2)	# 924
	mul		x6, x30, x5	# 924
	addi	x6, x6, 60536	# 924
	sw		x4, 0(x6)	# 924
	addi	x4, x0, 80	# 2131
	sw		x1, -308(x2)	# 2131
	addi	x2, x2, -312	# 2131
	jal		x1, min_caml_print_char	# 2131
	addi	x2, x2, 312	# 2131
	lw		x1, -308(x2)	# 2131
	addi	x4, x0, 51	# 2132
	sw		x1, -308(x2)	# 2132
	addi	x2, x2, -312	# 2132
	jal		x1, min_caml_print_char	# 2132
	addi	x2, x2, 312	# 2132
	lw		x1, -308(x2)	# 2132
	addi	x4, x0, 10	# 2133
	sw		x4, -308(x2)	# 2133
	sw		x1, -312(x2)	# 2133
	addi	x2, x2, -316	# 2133
	jal		x1, min_caml_print_char	# 2133
	addi	x2, x2, 316	# 2133
	lw		x1, -312(x2)	# 2133
	lw		x4, -4(x2)	# 2134
	mul		x5, x30, x4	# 2134
	addi	x5, x5, 60616	# 2134
	lw		x5, 0(x5)	# 2134
	addi	x4, x5, 0
	sw		x1, -312(x2)	# 2134
	addi	x2, x2, -316	# 2134
	jal		x1, min_caml_print_int	# 2134
	addi	x2, x2, 316	# 2134
	lw		x1, -312(x2)	# 2134
	addi	x4, x0, 32	# 2135
	sw		x4, -312(x2)	# 2135
	sw		x1, -316(x2)	# 2135
	addi	x2, x2, -320	# 2135
	jal		x1, min_caml_print_char	# 2135
	addi	x2, x2, 320	# 2135
	lw		x1, -316(x2)	# 2135
	lw		x4, 0(x2)	# 2136
	mul		x5, x30, x4	# 2136
	addi	x5, x5, 60616	# 2136
	lw		x5, 0(x5)	# 2136
	addi	x4, x5, 0
	sw		x1, -316(x2)	# 2136
	addi	x2, x2, -320	# 2136
	jal		x1, min_caml_print_int	# 2136
	addi	x2, x2, 320	# 2136
	lw		x1, -316(x2)	# 2136
	lw		x4, -312(x2)	# 2137
	sw		x1, -316(x2)	# 2137
	addi	x2, x2, -320	# 2137
	jal		x1, min_caml_print_char	# 2137
	addi	x2, x2, 320	# 2137
	lw		x1, -316(x2)	# 2137
	addi	x4, x0, 255	# 2138
	sw		x1, -316(x2)	# 2138
	addi	x2, x2, -320	# 2138
	jal		x1, min_caml_print_int	# 2138
	addi	x2, x2, 320	# 2138
	lw		x1, -316(x2)	# 2138
	lw		x4, -308(x2)	# 2139
	sw		x1, -316(x2)	# 2139
	addi	x2, x2, -320	# 2139
	jal		x1, min_caml_print_char	# 2139
	addi	x2, x2, 320	# 2139
	lw		x1, -316(x2)	# 2139
	lw		x4, -160(x2)	# 2437
	lw		x29, -116(x2)	# 2437
	sw		x1, -316(x2)	# 2437
	addi	x2, x2, -320	# 2437
	lw		x31, 0(x29)	# 2437
	jalr	x1, x31, 0	# 2437
	addi	x2, x2, 320	# 2437
	lw		x1, -316(x2)	# 2437
	addi	x4, x0, 9	# 2438
	lw		x5, -4(x2)	# 2438
	lw		x29, -112(x2)	# 2438
	addi	x6, x5, 0
	sw		x1, -316(x2)	# 2438
	addi	x2, x2, -320	# 2438
	lw		x31, 0(x29)	# 2438
	jalr	x1, x31, 0	# 2438
	addi	x2, x2, 320	# 2438
	lw		x1, -316(x2)	# 2438
	lw		x4, -160(x2)	# 2439
	lw		x29, -108(x2)	# 2439
	sw		x1, -316(x2)	# 2439
	addi	x2, x2, -320	# 2439
	lw		x31, 0(x29)	# 2439
	jalr	x1, x31, 0	# 2439
	addi	x2, x2, 320	# 2439
	lw		x1, -316(x2)	# 2439
	lw		x4, -4(x2)	# 275
	mul		x5, x30, x4	# 275
	addi	x5, x5, 60312	# 275
	flw		f1, 0(x5)	# 275
	mul		x5, x30, x4	# 275
	addi	x5, x5, 60736	# 275
	fsw		f1, 0(x5)	# 275
	lw		x5, 0(x2)	# 276
	mul		x6, x30, x5	# 276
	addi	x6, x6, 60312	# 276
	flw		f1, 0(x6)	# 276
	mul		x6, x30, x5	# 276
	addi	x6, x6, 60736	# 276
	fsw		f1, 0(x6)	# 276
	lw		x6, -48(x2)	# 277
	mul		x7, x30, x6	# 277
	addi	x7, x7, 60312	# 277
	flw		f1, 0(x7)	# 277
	mul		x7, x30, x6	# 277
	addi	x7, x7, 60736	# 277
	fsw		f1, 0(x7)	# 277
	mul		x7, x30, x4	# 1303
	addi	x7, x7, 60000	# 1303
	lw		x7, 0(x7)	# 1303
	sub		x7, x7, x5	# 1303
	lw		x8, -80(x2)	# 1303
	lw		x29, -104(x2)	# 1303
	addi	x5, x7, 0
	addi	x4, x8, 0
	sw		x1, -316(x2)	# 1303
	addi	x2, x2, -320	# 1303
	lw		x31, 0(x29)	# 1303
	jalr	x1, x31, 0	# 1303
	addi	x2, x2, 320	# 1303
	lw		x1, -316(x2)	# 1303
	lw		x4, -4(x2)	# 2521
	mul		x5, x30, x4	# 2521
	addi	x5, x5, 60000	# 2521
	lw		x5, 0(x5)	# 2521
	lw		x6, 0(x2)	# 2521
	sub		x5, x5, x6	# 2521
	ble		x4, x5, ble.32496	# 2486
	jal		x0, ble_cont.32495	# 2486
ble.32496:
	mul		x7, x30, x5	# 2487
	addi	x7, x7, 60048	# 2487
	lw		x7, 0(x7)	# 2487
	lw		x8, 8(x7)	# 379
	lw		x9, -48(x2)	# 2488
	beq		x8, x9, beq.32498	# 2488
	jal		x0, beq_cont.32497	# 2488
beq.32498:
	lw		x8, 28(x7)	# 477
	mul		x10, x30, x4	# 482
	add		x8, x8, x10	# 482
	flw		f1, 0(x8)	# 482
	fadd	f2, f0, f16	# 2489
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32500	# 125
	jal		x0, fle_cont.32499	# 125
fle_else.32500:
	lw		x8, 4(x7)	# 369
	beq		x8, x6, beq.32502	# 2492
	beq		x8, x9, beq.32504	# 2494
	jal		x0, beq_cont.32503	# 2494
beq.32504:
	addi	x8, x0, 4	# 2471
	mul		x5, x5, x8	# 2471
	addi	x5, x5, 1	# 2471
	mul		x8, x30, x4	# 2472
	addi	x8, x8, 61736	# 2472
	lw		x8, 0(x8)	# 2472
	lw		x10, 28(x7)	# 477
	mul		x11, x30, x4	# 482
	add		x10, x10, x11	# 482
	flw		f1, 0(x10)	# 482
	fsub	f1, f2, f1	# 2473
	lw		x10, 16(x7)	# 437
	mul		x11, x30, x4	# 308
	addi	x11, x11, 60312	# 308
	flw		f2, 0(x11)	# 308
	mul		x11, x30, x4	# 308
	add		x11, x10, x11	# 308
	flw		f3, 0(x11)	# 308
	fmul	f2, f2, f3	# 308
	mul		x11, x30, x6	# 308
	addi	x11, x11, 60312	# 308
	flw		f3, 0(x11)	# 308
	mul		x11, x30, x6	# 308
	add		x11, x10, x11	# 308
	flw		f4, 0(x11)	# 308
	fmul	f3, f3, f4	# 308
	fadd	f2, f2, f3	# 308
	mul		x11, x30, x9	# 308
	addi	x11, x11, 60312	# 308
	flw		f3, 0(x11)	# 308
	mul		x11, x30, x9	# 308
	add		x10, x10, x11	# 308
	flw		f4, 0(x10)	# 308
	fmul	f3, f3, f4	# 308
	fadd	f2, f2, f3	# 308
	lui		x10, %hi(l.25888)	# 2477
	ori		x10, x0, %lo(l.25888)	# 2477
	flw		f3, 0(x10)	# 2477
	lw		x10, 16(x7)	# 407
	mul		x11, x30, x4	# 412
	add		x10, x10, x11	# 412
	flw		f4, 0(x10)	# 412
	fmul	f4, f3, f4	# 2477
	fmul	f4, f4, f2	# 2477
	mul		x10, x30, x4	# 2477
	addi	x10, x10, 60312	# 2477
	flw		f5, 0(x10)	# 2477
	fsub	f4, f4, f5	# 2477
	lw		x10, 16(x7)	# 417
	mul		x11, x30, x6	# 422
	add		x10, x10, x11	# 422
	flw		f5, 0(x10)	# 422
	fmul	f5, f3, f5	# 2478
	fmul	f5, f5, f2	# 2478
	mul		x10, x30, x6	# 2478
	addi	x10, x10, 60312	# 2478
	flw		f6, 0(x10)	# 2478
	fsub	f5, f5, f6	# 2478
	lw		x7, 16(x7)	# 427
	mul		x10, x30, x9	# 432
	add		x7, x7, x10	# 432
	flw		f6, 0(x7)	# 432
	fmul	f3, f3, f6	# 2479
	fmul	f2, f3, f2	# 2479
	mul		x7, x30, x9	# 2479
	addi	x7, x7, 60312	# 2479
	flw		f3, 0(x7)	# 2479
	fsub	f2, f2, f3	# 2479
	flw		f3, -8(x2)	# 2398
	lw		x7, -20(x2)	# 2398
	sw		x8, -316(x2)	# 2398
	sw		x5, -320(x2)	# 2398
	fsw		f1, -324(x2)	# 2398
	fsw		f2, -328(x2)	# 2398
	fsw		f5, -332(x2)	# 2398
	fsw		f4, -336(x2)	# 2398
	addi	x4, x7, 0
	fadd	f1, f0, f3
	sw		x1, -340(x2)	# 2398
	addi	x2, x2, -344	# 2398
	jal		x1, min_caml_create_float_array	# 2398
	addi	x2, x2, 344	# 2398
	lw		x1, -340(x2)	# 2398
	addi	x5, x4, 0	# 2398
	lw		x4, -4(x2)	# 2399
	mul		x6, x30, x4	# 2399
	addi	x6, x6, 60000	# 2399
	lw		x6, 0(x6)	# 2399
	sw		x5, -340(x2)	# 2399
	addi	x4, x6, 0
	sw		x1, -344(x2)	# 2399
	addi	x2, x2, -348	# 2399
	jal		x1, min_caml_create_array	# 2399
	addi	x2, x2, 348	# 2399
	lw		x1, -344(x2)	# 2399
	addi	x5, x3, 0	# 2400
	addi	x3, x3, 8	# 2400
	sw		x4, 4(x5)	# 2400
	lw		x4, -340(x2)	# 2400
	sw		x4, 0(x5)	# 2400
	lw		x6, -4(x2)	# 256
	mul		x7, x30, x6	# 256
	add		x7, x4, x7	# 256
	flw		f1, -336(x2)	# 256
	fsw		f1, 0(x7)	# 256
	lw		x7, 0(x2)	# 257
	mul		x8, x30, x7	# 257
	add		x8, x4, x8	# 257
	flw		f1, -332(x2)	# 257
	fsw		f1, 0(x8)	# 257
	lw		x8, -48(x2)	# 258
	mul		x9, x30, x8	# 258
	add		x4, x4, x9	# 258
	flw		f1, -328(x2)	# 258
	fsw		f1, 0(x4)	# 258
	mul		x4, x30, x6	# 1303
	addi	x4, x4, 60000	# 1303
	lw		x4, 0(x4)	# 1303
	sub		x4, x4, x7	# 1303
	lw		x29, -104(x2)	# 1303
	sw		x5, -344(x2)	# 1303
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -348(x2)	# 1303
	addi	x2, x2, -352	# 1303
	lw		x31, 0(x29)	# 1303
	jalr	x1, x31, 0	# 1303
	addi	x2, x2, 352	# 1303
	lw		x1, -348(x2)	# 1303
	addi	x4, x3, 0	# 2452
	addi	x3, x3, 12	# 2452
	flw		f1, -324(x2)	# 2452
	fsw		f1, 8(x4)	# 2452
	lw		x5, -344(x2)	# 2452
	sw		x5, 4(x4)	# 2452
	lw		x5, -320(x2)	# 2452
	sw		x5, 0(x4)	# 2452
	lw		x5, -316(x2)	# 2452
	mul		x6, x30, x5	# 2452
	addi	x6, x6, 61016	# 2452
	sw		x4, 0(x6)	# 2452
	addi	x4, x5, 1	# 2480
	lw		x5, -4(x2)	# 2480
	mul		x6, x30, x5	# 2480
	addi	x6, x6, 61736	# 2480
	sw		x4, 0(x6)	# 2480
beq_cont.32503:
	jal		x0, beq_cont.32501	# 2492
beq.32502:
	addi	x8, x0, 4	# 2457
	mul		x5, x5, x8	# 2457
	mul		x8, x30, x4	# 2458
	addi	x8, x8, 61736	# 2458
	lw		x8, 0(x8)	# 2458
	lw		x7, 28(x7)	# 477
	mul		x10, x30, x4	# 482
	add		x7, x7, x10	# 482
	flw		f1, 0(x7)	# 482
	fsub	f1, f2, f1	# 2459
	mul		x7, x30, x4	# 2460
	addi	x7, x7, 60312	# 2460
	flw		f2, 0(x7)	# 2460
	fsub	f2, f0, f2	# 123
	mul		x7, x30, x6	# 2461
	addi	x7, x7, 60312	# 2461
	flw		f3, 0(x7)	# 2461
	fsub	f3, f0, f3	# 123
	mul		x7, x30, x9	# 2462
	addi	x7, x7, 60312	# 2462
	flw		f4, 0(x7)	# 2462
	fsub	f4, f0, f4	# 123
	addi	x7, x5, 1	# 2463
	mul		x10, x30, x4	# 2463
	addi	x10, x10, 60312	# 2463
	flw		f5, 0(x10)	# 2463
	flw		f6, -8(x2)	# 2398
	lw		x10, -20(x2)	# 2398
	fsw		f2, -348(x2)	# 2398
	sw		x5, -352(x2)	# 2398
	sw		x8, -356(x2)	# 2398
	sw		x7, -360(x2)	# 2398
	fsw		f1, -364(x2)	# 2398
	fsw		f4, -368(x2)	# 2398
	fsw		f3, -372(x2)	# 2398
	fsw		f5, -376(x2)	# 2398
	addi	x4, x10, 0
	fadd	f1, f0, f6
	sw		x1, -380(x2)	# 2398
	addi	x2, x2, -384	# 2398
	jal		x1, min_caml_create_float_array	# 2398
	addi	x2, x2, 384	# 2398
	lw		x1, -380(x2)	# 2398
	addi	x5, x4, 0	# 2398
	lw		x4, -4(x2)	# 2399
	mul		x6, x30, x4	# 2399
	addi	x6, x6, 60000	# 2399
	lw		x6, 0(x6)	# 2399
	sw		x5, -380(x2)	# 2399
	addi	x4, x6, 0
	sw		x1, -384(x2)	# 2399
	addi	x2, x2, -388	# 2399
	jal		x1, min_caml_create_array	# 2399
	addi	x2, x2, 388	# 2399
	lw		x1, -384(x2)	# 2399
	addi	x5, x3, 0	# 2400
	addi	x3, x3, 8	# 2400
	sw		x4, 4(x5)	# 2400
	lw		x4, -380(x2)	# 2400
	sw		x4, 0(x5)	# 2400
	lw		x6, -4(x2)	# 256
	mul		x7, x30, x6	# 256
	add		x7, x4, x7	# 256
	flw		f1, -376(x2)	# 256
	fsw		f1, 0(x7)	# 256
	lw		x7, 0(x2)	# 257
	mul		x8, x30, x7	# 257
	add		x8, x4, x8	# 257
	flw		f1, -372(x2)	# 257
	fsw		f1, 0(x8)	# 257
	lw		x8, -48(x2)	# 258
	mul		x9, x30, x8	# 258
	add		x4, x4, x9	# 258
	flw		f2, -368(x2)	# 258
	fsw		f2, 0(x4)	# 258
	mul		x4, x30, x6	# 1303
	addi	x4, x4, 60000	# 1303
	lw		x4, 0(x4)	# 1303
	sub		x4, x4, x7	# 1303
	lw		x29, -104(x2)	# 1303
	sw		x5, -384(x2)	# 1303
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -388(x2)	# 1303
	addi	x2, x2, -392	# 1303
	lw		x31, 0(x29)	# 1303
	jalr	x1, x31, 0	# 1303
	addi	x2, x2, 392	# 1303
	lw		x1, -388(x2)	# 1303
	addi	x4, x3, 0	# 2452
	addi	x3, x3, 12	# 2452
	flw		f1, -364(x2)	# 2452
	fsw		f1, 8(x4)	# 2452
	lw		x5, -384(x2)	# 2452
	sw		x5, 4(x4)	# 2452
	lw		x5, -360(x2)	# 2452
	sw		x5, 0(x4)	# 2452
	lw		x5, -356(x2)	# 2452
	mul		x6, x30, x5	# 2452
	addi	x6, x6, 61016	# 2452
	sw		x4, 0(x6)	# 2452
	addi	x4, x5, 1	# 2464
	lw		x6, -352(x2)	# 2464
	addi	x7, x6, 2	# 2464
	lw		x8, 0(x2)	# 2464
	mul		x9, x30, x8	# 2464
	addi	x9, x9, 60312	# 2464
	flw		f2, 0(x9)	# 2464
	flw		f3, -8(x2)	# 2398
	lw		x9, -20(x2)	# 2398
	sw		x4, -388(x2)	# 2398
	sw		x7, -392(x2)	# 2398
	fsw		f2, -396(x2)	# 2398
	addi	x4, x9, 0
	fadd	f1, f0, f3
	sw		x1, -400(x2)	# 2398
	addi	x2, x2, -404	# 2398
	jal		x1, min_caml_create_float_array	# 2398
	addi	x2, x2, 404	# 2398
	lw		x1, -400(x2)	# 2398
	addi	x5, x4, 0	# 2398
	lw		x4, -4(x2)	# 2399
	mul		x6, x30, x4	# 2399
	addi	x6, x6, 60000	# 2399
	lw		x6, 0(x6)	# 2399
	sw		x5, -400(x2)	# 2399
	addi	x4, x6, 0
	sw		x1, -404(x2)	# 2399
	addi	x2, x2, -408	# 2399
	jal		x1, min_caml_create_array	# 2399
	addi	x2, x2, 408	# 2399
	lw		x1, -404(x2)	# 2399
	addi	x5, x3, 0	# 2400
	addi	x3, x3, 8	# 2400
	sw		x4, 4(x5)	# 2400
	lw		x4, -400(x2)	# 2400
	sw		x4, 0(x5)	# 2400
	lw		x6, -4(x2)	# 256
	mul		x7, x30, x6	# 256
	add		x7, x4, x7	# 256
	flw		f1, -348(x2)	# 256
	fsw		f1, 0(x7)	# 256
	lw		x7, 0(x2)	# 257
	mul		x8, x30, x7	# 257
	add		x8, x4, x8	# 257
	flw		f2, -396(x2)	# 257
	fsw		f2, 0(x8)	# 257
	lw		x8, -48(x2)	# 258
	mul		x9, x30, x8	# 258
	add		x4, x4, x9	# 258
	flw		f2, -368(x2)	# 258
	fsw		f2, 0(x4)	# 258
	mul		x4, x30, x6	# 1303
	addi	x4, x4, 60000	# 1303
	lw		x4, 0(x4)	# 1303
	sub		x4, x4, x7	# 1303
	lw		x29, -104(x2)	# 1303
	sw		x5, -404(x2)	# 1303
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -408(x2)	# 1303
	addi	x2, x2, -412	# 1303
	lw		x31, 0(x29)	# 1303
	jalr	x1, x31, 0	# 1303
	addi	x2, x2, 412	# 1303
	lw		x1, -408(x2)	# 1303
	addi	x4, x3, 0	# 2452
	addi	x3, x3, 12	# 2452
	flw		f1, -364(x2)	# 2452
	fsw		f1, 8(x4)	# 2452
	lw		x5, -404(x2)	# 2452
	sw		x5, 4(x4)	# 2452
	lw		x5, -392(x2)	# 2452
	sw		x5, 0(x4)	# 2452
	lw		x5, -388(x2)	# 2452
	mul		x5, x30, x5	# 2452
	addi	x5, x5, 61016	# 2452
	sw		x4, 0(x5)	# 2452
	lw		x4, -356(x2)	# 2465
	addi	x5, x4, 2	# 2465
	lw		x6, -352(x2)	# 2465
	addi	x6, x6, 3	# 2465
	lw		x7, -48(x2)	# 2465
	mul		x8, x30, x7	# 2465
	addi	x8, x8, 60312	# 2465
	flw		f2, 0(x8)	# 2465
	flw		f3, -8(x2)	# 2398
	lw		x8, -20(x2)	# 2398
	sw		x5, -408(x2)	# 2398
	sw		x6, -412(x2)	# 2398
	fsw		f2, -416(x2)	# 2398
	addi	x4, x8, 0
	fadd	f1, f0, f3
	sw		x1, -420(x2)	# 2398
	addi	x2, x2, -424	# 2398
	jal		x1, min_caml_create_float_array	# 2398
	addi	x2, x2, 424	# 2398
	lw		x1, -420(x2)	# 2398
	addi	x5, x4, 0	# 2398
	lw		x4, -4(x2)	# 2399
	mul		x6, x30, x4	# 2399
	addi	x6, x6, 60000	# 2399
	lw		x6, 0(x6)	# 2399
	sw		x5, -420(x2)	# 2399
	addi	x4, x6, 0
	sw		x1, -424(x2)	# 2399
	addi	x2, x2, -428	# 2399
	jal		x1, min_caml_create_array	# 2399
	addi	x2, x2, 428	# 2399
	lw		x1, -424(x2)	# 2399
	addi	x5, x3, 0	# 2400
	addi	x3, x3, 8	# 2400
	sw		x4, 4(x5)	# 2400
	lw		x4, -420(x2)	# 2400
	sw		x4, 0(x5)	# 2400
	lw		x6, -4(x2)	# 256
	mul		x7, x30, x6	# 256
	add		x7, x4, x7	# 256
	flw		f1, -348(x2)	# 256
	fsw		f1, 0(x7)	# 256
	lw		x7, 0(x2)	# 257
	mul		x8, x30, x7	# 257
	add		x8, x4, x8	# 257
	flw		f1, -372(x2)	# 257
	fsw		f1, 0(x8)	# 257
	lw		x8, -48(x2)	# 258
	mul		x9, x30, x8	# 258
	add		x4, x4, x9	# 258
	flw		f1, -416(x2)	# 258
	fsw		f1, 0(x4)	# 258
	mul		x4, x30, x6	# 1303
	addi	x4, x4, 60000	# 1303
	lw		x4, 0(x4)	# 1303
	sub		x4, x4, x7	# 1303
	lw		x29, -104(x2)	# 1303
	sw		x5, -424(x2)	# 1303
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -428(x2)	# 1303
	addi	x2, x2, -432	# 1303
	lw		x31, 0(x29)	# 1303
	jalr	x1, x31, 0	# 1303
	addi	x2, x2, 432	# 1303
	lw		x1, -428(x2)	# 1303
	addi	x4, x3, 0	# 2452
	addi	x3, x3, 12	# 2452
	flw		f1, -364(x2)	# 2452
	fsw		f1, 8(x4)	# 2452
	lw		x5, -424(x2)	# 2452
	sw		x5, 4(x4)	# 2452
	lw		x5, -412(x2)	# 2452
	sw		x5, 0(x4)	# 2452
	lw		x5, -408(x2)	# 2452
	mul		x5, x30, x5	# 2452
	addi	x5, x5, 61016	# 2452
	sw		x4, 0(x5)	# 2452
	lw		x4, -356(x2)	# 2466
	addi	x4, x4, 3	# 2466
	lw		x5, -4(x2)	# 2466
	mul		x6, x30, x5	# 2466
	addi	x6, x6, 61736	# 2466
	sw		x4, 0(x6)	# 2466
beq_cont.32501:
fle_cont.32499:
beq_cont.32497:
ble_cont.32495:
	lw		x4, -4(x2)	# 2234
	mul		x5, x30, x4	# 2234
	addi	x5, x5, 60632	# 2234
	flw		f1, 0(x5)	# 2234
	lw		x5, 0(x2)	# 2234
	mul		x6, x30, x5	# 2234
	addi	x6, x6, 60624	# 2234
	lw		x6, 0(x6)	# 2234
	sub		x6, x4, x6	# 2234
	lw		x29, -100(x2)	# 2234
	fsw		f1, -428(x2)	# 2234
	addi	x4, x6, 0
	sw		x1, -432(x2)	# 2234
	addi	x2, x2, -436	# 2234
	lw		x31, 0(x29)	# 2234
	jalr	x1, x31, 0	# 2234
	addi	x2, x2, 436	# 2234
	lw		x1, -432(x2)	# 2234
	flw		f2, -428(x2)	# 2234
	fmul	f1, f2, f1	# 2234
	lw		x6, -4(x2)	# 2237
	mul		x4, x30, x6	# 2237
	addi	x4, x4, 60672	# 2237
	flw		f2, 0(x4)	# 2237
	fmul	f2, f1, f2	# 2237
	mul		x4, x30, x6	# 2237
	addi	x4, x4, 60684	# 2237
	flw		f3, 0(x4)	# 2237
	fadd	f2, f2, f3	# 2237
	lw		x4, 0(x2)	# 2238
	mul		x5, x30, x4	# 2238
	addi	x5, x5, 60672	# 2238
	flw		f3, 0(x5)	# 2238
	fmul	f3, f1, f3	# 2238
	mul		x5, x30, x4	# 2238
	addi	x5, x5, 60684	# 2238
	flw		f4, 0(x5)	# 2238
	fadd	f3, f3, f4	# 2238
	lw		x5, -48(x2)	# 2239
	mul		x7, x30, x5	# 2239
	addi	x7, x7, 60672	# 2239
	flw		f4, 0(x7)	# 2239
	fmul	f1, f1, f4	# 2239
	mul		x7, x30, x5	# 2239
	addi	x7, x7, 60684	# 2239
	flw		f4, 0(x7)	# 2239
	fadd	f1, f1, f4	# 2239
	mul		x7, x30, x6	# 2240
	addi	x7, x7, 60616	# 2240
	lw		x7, 0(x7)	# 2240
	sub		x4, x7, x4	# 2240
	lw		x7, -228(x2)	# 2240
	lw		x29, -96(x2)	# 2240
	addi	x5, x4, 0
	addi	x4, x7, 0
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -432(x2)	# 2240
	addi	x2, x2, -436	# 2240
	lw		x31, 0(x29)	# 2240
	jalr	x1, x31, 0	# 2240
	addi	x2, x2, 436	# 2240
	lw		x1, -432(x2)	# 2240
	lw		x4, -4(x2)	# 2523
	lw		x5, -188(x2)	# 2523
	lw		x6, -228(x2)	# 2523
	lw		x7, -268(x2)	# 2523
	lw		x8, -48(x2)	# 2523
	lw		x9, -20(x2)	# 2523
	lw		x29, -92(x2)	# 2523
	sw		x1, -432(x2)	# 2523
	addi	x2, x2, -436	# 2523
	lw		x31, 0(x29)	# 2523
	jalr	x1, x31, 0	# 2523
	addi	x2, x2, 436	# 2523
	lw		x1, -432(x2)	# 2523
	EXIT	
