l.26189:	# 1.000000
	.word	1.000000
l.26228:	# 0.000000
	.word	0.000000
l.26202:	# 0.500000
	.word	0.500000
l.26288:	# -1.000000
	.word	-1.000000
l.27611:	# 3.141593
	.word	3.141593
l.27607:	# 15.000000
	.word	15.000000
l.27609:	# 30.000000
	.word	30.000000
l.27637:	# 10.000000
	.word	10.000000
l.26855:	# -0.100000
	.word	-0.100000
l.26256:	# 0.017453
	.word	0.017453
l.27400:	# 100000000.000000
	.word	100000000.000000
l.27647:	# 0.250000
	.word	0.250000
l.27625:	# 0.300000
	.word	0.300000
l.27658:	# 0.050000
	.word	0.050000
l.27660:	# 20.000000
	.word	20.000000
l.26219:	# 0.200000
	.word	0.200000
l.27840:	# 0.100000
	.word	0.100000
l.27622:	# 0.150000
	.word	0.150000
l.27605:	# 0.000100
	.word	0.000100
l.26728:	# 0.010000
	.word	0.010000
l.26348:	# 2.000000
	.word	2.000000
l.28894:	# 0.900000
	.word	0.900000
l.26206:	# 0.001370
	.word	0.001370
l.26191:	# 4.000000
	.word	4.000000
l.26204:	# 0.041664
	.word	0.041664
l.26726:	# -0.200000
	.word	-0.200000
l.26221:	# 0.142857
	.word	0.142857
l.26223:	# 0.111111
	.word	0.111111
l.26225:	# 0.089764
	.word	0.089764
l.29115:	# 200.000000
	.word	200.000000
l.29119:	# -200.000000
	.word	-200.000000
l.27893:	# -150.000000
	.word	-150.000000
l.27710:	# 0.003906
	.word	0.003906
l.27738:	# -2.000000
	.word	-2.000000
l.26217:	# 0.333333
	.word	0.333333
l.26215:	# 0.437500
	.word	0.437500
l.26212:	# 2.437500
	.word	2.437500
l.26199:	# 0.000196
	.word	0.000196
l.26197:	# 0.008333
	.word	0.008333
l.26195:	# 0.166667
	.word	0.166667
l.28969:	# 128.000000
	.word	128.000000
l.28959:	# 0.785398
	.word	0.785398
l.28957:	# 1.570796
	.word	1.570796
l.28955:	# 6.283185
	.word	6.283185
l.28953:	# 3.141593
	.word	3.141593
l.28938:	# 1000000000.000000
	.word	1000000000.000000
l.28934:	# 255.000000
	.word	255.000000
l.28114:	# 150.000000
	.word	150.000000
int_of_float_rem.2529.17724:
	lw		x5, 4(x29)	# 133
	fadd	f2, f0, f16	# 133
	fle		x31, f2, f1	# 133
	beq		x31, x0, fle_else.32118	# 133
	fsub	f1, f1, f2	# 133
	add		x4, x4, x5	# 133
	lw		x31, 0(x29)	# 133
	jalr	x0, x31, 0	# 133
fle_else.32118:
	jalr	x0, x1, 0	# 133
int_of_float_four.2532.17727:
	lw		x5, 4(x29)	# 135
	fadd	f2, f0, f30	# 135
	fle		x31, f2, f1	# 135
	beq		x31, x0, fle_else.32119	# 135
	fsub	f1, f1, f2	# 135
	addi	x4, x4, 4	# 135
	lw		x31, 0(x29)	# 135
	jalr	x0, x31, 0	# 135
fle_else.32119:
	addi	x29, x5, 0
	lw		x31, 0(x29)	# 135
	jalr	x0, x31, 0	# 135
int_of_float.2535.17730:
	lw		x4, 12(x29)	# 137
	lw		x5, 8(x29)	# 137
	flw		f2, 4(x29)	# 137
	fle		x31, f2, f1	# 137
	beq		x31, x0, fle_else.32120	# 137
	addi	x29, x4, 0
	addi	x4, x5, 0
	lw		x31, 0(x29)	# 137
	jalr	x0, x31, 0	# 137
fle_else.32120:
	fsub	f1, f0, f1	# 138
	sw		x1, 0(x2)	# 138
	addi	x2, x2, -4	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 4	# 138
	lw		x1, 0(x2)	# 138
	sub		x4, x0, x4	# 138
	jalr	x0, x1, 0	# 138
float_of_int_rem.2537.17732:
	lw		x5, 4(x29)	# 144
	ble		x5, x4, ble.32121	# 144
	jalr	x0, x1, 0	# 144
ble.32121:
	sub		x4, x4, x5	# 144
	fadd	f2, f0, f16	# 144
	fadd	f1, f1, f2	# 144
	lw		x31, 0(x29)	# 144
	jalr	x0, x31, 0	# 144
float_of_int_four.2540.17735:
	lw		x5, 4(x29)	# 146
	addi	x6, x0, 4	# 146
	ble		x6, x4, ble.32122	# 146
	addi	x29, x5, 0
	lw		x31, 0(x29)	# 146
	jalr	x0, x31, 0	# 146
ble.32122:
	sub		x4, x4, x6	# 146
	fadd	f2, f0, f30	# 146
	fadd	f1, f1, f2	# 146
	lw		x31, 0(x29)	# 146
	jalr	x0, x31, 0	# 146
float_of_int.2543.17738:
	lw		x5, 12(x29)	# 148
	lw		x6, 8(x29)	# 148
	flw		f1, 4(x29)	# 148
	ble		x6, x4, ble.32123	# 148
	sub		x4, x0, x4	# 149
	sw		x1, 0(x2)	# 149
	addi	x2, x2, -4	# 149
	lw		x31, 0(x29)	# 149
	jalr	x1, x31, 0	# 149
	addi	x2, x2, 4	# 149
	lw		x1, 0(x2)	# 149
	fsub	f1, f0, f1	# 149
	jalr	x0, x1, 0	# 149
ble.32123:
	addi	x29, x5, 0
	lw		x31, 0(x29)	# 148
	jalr	x0, x31, 0	# 148
sin.2555.17744:
	flw		f2, 20(x29)	# 179
	flw		f3, 16(x29)	# 179
	flw		f4, 12(x29)	# 179
	flw		f5, 8(x29)	# 179
	flw		f6, 4(x29)	# 179
	fle		x31, f6, f1	# 179
	beq		x31, x0, fle_else.32124	# 179
	fle		x31, f4, f1	# 180
	beq		x31, x0, fle_else.32125	# 180
	fsub	f1, f1, f4	# 180
	lw		x31, 0(x29)	# 180
	jalr	x0, x31, 0	# 180
fle_else.32125:
	fle		x31, f5, f1	# 181
	beq		x31, x0, fle_else.32126	# 181
	fsub	f1, f1, f5	# 181
	sw		x1, 0(x2)	# 181
	addi	x2, x2, -4	# 181
	lw		x31, 0(x29)	# 181
	jalr	x1, x31, 0	# 181
	addi	x2, x2, 4	# 181
	lw		x1, 0(x2)	# 181
	fsub	f1, f0, f1	# 181
	jalr	x0, x1, 0	# 181
fle_else.32126:
	fle		x31, f1, f3	# 182
	beq		x31, x0, fle_else.32127	# 182
	fle		x31, f2, f1	# 183
	beq		x31, x0, fle_else.32128	# 183
	fsub	f1, f3, f1	# 183
	fmul	f1, f1, f1	# 174
	fmul	f2, f1, f1	# 175
	fadd	f3, f0, f16	# 176
	fadd	f4, f0, f17	# 176
	fmul	f4, f4, f1	# 176
	fsub	f3, f3, f4	# 176
	lui		x4, %hi(l.26204)	# 176
	ori		x4, x0, %lo(l.26204)	# 176
	flw		f4, 0(x4)	# 176
	fmul	f4, f4, f2	# 176
	fadd	f3, f3, f4	# 176
	lui		x4, %hi(l.26206)	# 176
	ori		x4, x0, %lo(l.26206)	# 176
	flw		f4, 0(x4)	# 176
	fmul	f1, f4, f1	# 176
	fmul	f1, f1, f2	# 176
	fsub	f1, f3, f1	# 176
	jalr	x0, x1, 0	# 176
fle_else.32128:
	fmul	f2, f1, f1	# 169
	fmul	f3, f1, f2	# 170
	lui		x4, %hi(l.26195)	# 171
	ori		x4, x0, %lo(l.26195)	# 171
	flw		f4, 0(x4)	# 171
	fmul	f4, f4, f3	# 171
	fsub	f1, f1, f4	# 171
	lui		x4, %hi(l.26197)	# 171
	ori		x4, x0, %lo(l.26197)	# 171
	flw		f4, 0(x4)	# 171
	fmul	f4, f4, f2	# 171
	fmul	f4, f4, f3	# 171
	fadd	f1, f1, f4	# 171
	lui		x4, %hi(l.26199)	# 171
	ori		x4, x0, %lo(l.26199)	# 171
	flw		f4, 0(x4)	# 171
	fmul	f4, f4, f2	# 171
	fmul	f2, f4, f2	# 171
	fmul	f2, f2, f3	# 171
	fsub	f1, f1, f2	# 171
	jalr	x0, x1, 0	# 171
fle_else.32127:
	fsub	f1, f5, f1	# 182
	lw		x31, 0(x29)	# 182
	jalr	x0, x31, 0	# 182
fle_else.32124:
	fsub	f1, f0, f1	# 179
	sw		x1, 0(x2)	# 179
	addi	x2, x2, -4	# 179
	lw		x31, 0(x29)	# 179
	jalr	x1, x31, 0	# 179
	addi	x2, x2, 4	# 179
	lw		x1, 0(x2)	# 179
	fsub	f1, f0, f1	# 179
	jalr	x0, x1, 0	# 179
cos.2557.17746:
	lw		x4, 16(x29)	# 187
	flw		f2, 12(x29)	# 187
	flw		f3, 8(x29)	# 187
	flw		f4, 4(x29)	# 187
	fle		x31, f4, f1	# 187
	beq		x31, x0, fle_else.32129	# 187
	fle		x31, f1, f2	# 188
	beq		x31, x0, fle_else.32130	# 188
	fmul	f1, f1, f1	# 174
	fmul	f2, f1, f1	# 175
	fadd	f3, f0, f16	# 176
	fadd	f4, f0, f17	# 176
	fmul	f4, f4, f1	# 176
	fsub	f3, f3, f4	# 176
	lui		x4, %hi(l.26204)	# 176
	ori		x4, x0, %lo(l.26204)	# 176
	flw		f4, 0(x4)	# 176
	fmul	f4, f4, f2	# 176
	fadd	f3, f3, f4	# 176
	lui		x4, %hi(l.26206)	# 176
	ori		x4, x0, %lo(l.26206)	# 176
	flw		f4, 0(x4)	# 176
	fmul	f1, f4, f1	# 176
	fmul	f1, f1, f2	# 176
	fsub	f1, f3, f1	# 176
	jalr	x0, x1, 0	# 176
fle_else.32130:
	fsub	f1, f3, f1	# 188
	addi	x29, x4, 0
	lw		x31, 0(x29)	# 188
	jalr	x0, x31, 0	# 188
fle_else.32129:
	fsub	f1, f0, f1	# 187
	lw		x31, 0(x29)	# 187
	jalr	x0, x31, 0	# 187
atan.2559.17748:
	flw		f2, 12(x29)	# 192
	flw		f3, 8(x29)	# 192
	flw		f4, 4(x29)	# 192
	fle		x31, f4, f1	# 192
	beq		x31, x0, fle_else.32131	# 192
	lui		x4, %hi(l.26212)	# 193
	ori		x4, x0, %lo(l.26212)	# 193
	flw		f4, 0(x4)	# 193
	fle		x31, f1, f4	# 193
	beq		x31, x0, fle_else.32132	# 193
	lui		x4, %hi(l.26215)	# 194
	ori		x4, x0, %lo(l.26215)	# 194
	flw		f3, 0(x4)	# 194
	fle		x31, f3, f1	# 194
	beq		x31, x0, fle_else.32133	# 194
	fadd	f3, f0, f16	# 194
	fsub	f4, f1, f3	# 194
	fadd	f1, f1, f3	# 194
	fdiv	f1, f4, f1	# 194
	fsw		f2, 0(x2)	# 194
	sw		x1, -4(x2)	# 194
	addi	x2, x2, -8	# 194
	lw		x31, 0(x29)	# 194
	jalr	x1, x31, 0	# 194
	addi	x2, x2, 8	# 194
	lw		x1, -4(x2)	# 194
	flw		f2, 0(x2)	# 194
	fadd	f1, f2, f1	# 194
	jalr	x0, x1, 0	# 194
fle_else.32133:
	fmul	f2, f1, f1	# 196
	fmul	f3, f1, f2	# 197
	fmul	f4, f2, f2	# 198
	lui		x4, %hi(l.26217)	# 199
	ori		x4, x0, %lo(l.26217)	# 199
	flw		f5, 0(x4)	# 199
	fmul	f5, f5, f3	# 199
	fsub	f1, f1, f5	# 199
	lui		x4, %hi(l.26219)	# 199
	ori		x4, x0, %lo(l.26219)	# 199
	flw		f5, 0(x4)	# 199
	fmul	f5, f5, f2	# 199
	fmul	f5, f5, f3	# 199
	fadd	f1, f1, f5	# 199
	lui		x4, %hi(l.26221)	# 199
	ori		x4, x0, %lo(l.26221)	# 199
	flw		f5, 0(x4)	# 199
	fmul	f5, f5, f4	# 199
	fmul	f5, f5, f3	# 199
	fsub	f1, f1, f5	# 199
	lui		x4, %hi(l.26223)	# 200
	ori		x4, x0, %lo(l.26223)	# 200
	flw		f5, 0(x4)	# 200
	fmul	f2, f5, f2	# 200
	fmul	f2, f2, f4	# 200
	fmul	f2, f2, f3	# 200
	fadd	f1, f1, f2	# 199
	lui		x4, %hi(l.26225)	# 200
	ori		x4, x0, %lo(l.26225)	# 200
	flw		f2, 0(x4)	# 200
	fmul	f2, f2, f4	# 200
	fmul	f2, f2, f4	# 200
	fmul	f2, f2, f3	# 200
	fsub	f1, f1, f2	# 199
	jalr	x0, x1, 0	# 199
fle_else.32132:
	fadd	f2, f0, f16	# 193
	fdiv	f1, f2, f1	# 193
	fsw		f3, -4(x2)	# 193
	sw		x1, -8(x2)	# 193
	addi	x2, x2, -12	# 193
	lw		x31, 0(x29)	# 193
	jalr	x1, x31, 0	# 193
	addi	x2, x2, 12	# 193
	lw		x1, -8(x2)	# 193
	flw		f2, -4(x2)	# 193
	fsub	f1, f2, f1	# 193
	jalr	x0, x1, 0	# 193
fle_else.32131:
	fsub	f1, f0, f1	# 192
	sw		x1, -8(x2)	# 192
	addi	x2, x2, -12	# 192
	lw		x31, 0(x29)	# 192
	jalr	x1, x31, 0	# 192
	addi	x2, x2, 12	# 192
	lw		x1, -8(x2)	# 192
	fsub	f1, f0, f1	# 192
	jalr	x0, x1, 0	# 192
read_object.2696.17750:
	lw		x5, 32(x29)	# 875
	lw		x6, 28(x29)	# 875
	lw		x7, 24(x29)	# 875
	lw		x8, 20(x29)	# 875
	lw		x9, 16(x29)	# 875
	lw		x10, 12(x29)	# 875
	lw		x11, 8(x29)	# 875
	flw		f1, 4(x29)	# 875
	ble		x9, x4, ble.32134	# 875
	sw		x29, 0(x2)	# 793
	sw		x5, -4(x2)	# 793
	sw		x6, -8(x2)	# 793
	sw		x7, -12(x2)	# 793
	sw		x11, -16(x2)	# 793
	sw		x10, -20(x2)	# 793
	sw		x4, -24(x2)	# 793
	fsw		f1, -28(x2)	# 793
	sw		x8, -32(x2)	# 793
	sw		x1, -36(x2)	# 793
	addi	x2, x2, -40	# 793
	jal		x1, min_caml_read_int	# 793
	addi	x2, x2, 40	# 793
	lw		x1, -36(x2)	# 793
	lw		x5, -32(x2)	# 794
	beq		x4, x5, beq.32136	# 794
	sw		x4, -36(x2)	# 796
	sw		x1, -40(x2)	# 796
	addi	x2, x2, -44	# 796
	jal		x1, min_caml_read_int	# 796
	addi	x2, x2, 44	# 796
	lw		x1, -40(x2)	# 796
	sw		x4, -40(x2)	# 797
	sw		x1, -44(x2)	# 797
	addi	x2, x2, -48	# 797
	jal		x1, min_caml_read_int	# 797
	addi	x2, x2, 48	# 797
	lw		x1, -44(x2)	# 797
	sw		x4, -44(x2)	# 798
	sw		x1, -48(x2)	# 798
	addi	x2, x2, -52	# 798
	jal		x1, min_caml_read_int	# 798
	addi	x2, x2, 52	# 798
	lw		x1, -48(x2)	# 798
	addi	x5, x0, 3	# 800
	fadd	f1, f0, f0	# 800
	sw		x4, -48(x2)	# 800
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 800
	addi	x2, x2, -56	# 800
	jal		x1, min_caml_create_float_array	# 800
	addi	x2, x2, 56	# 800
	lw		x1, -52(x2)	# 800
	addi	x5, x0, 0	# 801
	sw		x4, -52(x2)	# 801
	sw		x5, -56(x2)	# 801
	sw		x1, -60(x2)	# 801
	addi	x2, x2, -64	# 801
	jal		x1, min_caml_read_float	# 801
	addi	x2, x2, 64	# 801
	lw		x1, -60(x2)	# 801
	lw		x4, -56(x2)	# 801
	mul		x4, x30, x4	# 801
	lw		x5, -52(x2)	# 801
	add		x4, x5, x4	# 801
	fsw		f1, 0(x4)	# 801
	addi	x4, x0, 1	# 802
	sw		x4, -60(x2)	# 802
	sw		x1, -64(x2)	# 802
	addi	x2, x2, -68	# 802
	jal		x1, min_caml_read_float	# 802
	addi	x2, x2, 68	# 802
	lw		x1, -64(x2)	# 802
	lw		x4, -60(x2)	# 802
	mul		x4, x30, x4	# 802
	lw		x5, -52(x2)	# 802
	add		x4, x5, x4	# 802
	fsw		f1, 0(x4)	# 802
	addi	x4, x0, 2	# 803
	sw		x4, -64(x2)	# 803
	sw		x1, -68(x2)	# 803
	addi	x2, x2, -72	# 803
	jal		x1, min_caml_read_float	# 803
	addi	x2, x2, 72	# 803
	lw		x1, -68(x2)	# 803
	lw		x4, -64(x2)	# 803
	mul		x4, x30, x4	# 803
	lw		x5, -52(x2)	# 803
	add		x4, x5, x4	# 803
	fsw		f1, 0(x4)	# 803
	addi	x4, x0, 3	# 805
	fadd	f1, f0, f0	# 805
	sw		x1, -68(x2)	# 805
	addi	x2, x2, -72	# 805
	jal		x1, min_caml_create_float_array	# 805
	addi	x2, x2, 72	# 805
	lw		x1, -68(x2)	# 805
	addi	x5, x0, 0	# 806
	sw		x4, -68(x2)	# 806
	sw		x5, -72(x2)	# 806
	sw		x1, -76(x2)	# 806
	addi	x2, x2, -80	# 806
	jal		x1, min_caml_read_float	# 806
	addi	x2, x2, 80	# 806
	lw		x1, -76(x2)	# 806
	lw		x4, -72(x2)	# 806
	mul		x4, x30, x4	# 806
	lw		x5, -68(x2)	# 806
	add		x4, x5, x4	# 806
	fsw		f1, 0(x4)	# 806
	addi	x4, x0, 1	# 807
	sw		x4, -76(x2)	# 807
	sw		x1, -80(x2)	# 807
	addi	x2, x2, -84	# 807
	jal		x1, min_caml_read_float	# 807
	addi	x2, x2, 84	# 807
	lw		x1, -80(x2)	# 807
	lw		x4, -76(x2)	# 807
	mul		x4, x30, x4	# 807
	lw		x5, -68(x2)	# 807
	add		x4, x5, x4	# 807
	fsw		f1, 0(x4)	# 807
	addi	x4, x0, 2	# 808
	sw		x4, -80(x2)	# 808
	sw		x1, -84(x2)	# 808
	addi	x2, x2, -88	# 808
	jal		x1, min_caml_read_float	# 808
	addi	x2, x2, 88	# 808
	lw		x1, -84(x2)	# 808
	lw		x4, -80(x2)	# 808
	mul		x4, x30, x4	# 808
	lw		x5, -68(x2)	# 808
	add		x4, x5, x4	# 808
	fsw		f1, 0(x4)	# 808
	sw		x1, -84(x2)	# 810
	addi	x2, x2, -88	# 810
	jal		x1, min_caml_read_float	# 810
	addi	x2, x2, 88	# 810
	lw		x1, -84(x2)	# 810
	flw		f2, -28(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.32138	# 122
	addi	x4, x0, 0	# 122
	jal		x0, fle_cont.32137	# 122
fle_else.32138:
	addi	x4, x0, 1	# 122
fle_cont.32137:
	addi	x5, x0, 2	# 812
	fadd	f3, f0, f0	# 812
	fsw		f1, -84(x2)	# 812
	sw		x4, -88(x2)	# 812
	addi	x4, x5, 0
	fadd	f1, f0, f3
	sw		x1, -92(x2)	# 812
	addi	x2, x2, -96	# 812
	jal		x1, min_caml_create_float_array	# 812
	addi	x2, x2, 96	# 812
	lw		x1, -92(x2)	# 812
	addi	x5, x0, 0	# 813
	sw		x4, -92(x2)	# 813
	sw		x5, -96(x2)	# 813
	sw		x1, -100(x2)	# 813
	addi	x2, x2, -104	# 813
	jal		x1, min_caml_read_float	# 813
	addi	x2, x2, 104	# 813
	lw		x1, -100(x2)	# 813
	lw		x4, -96(x2)	# 813
	mul		x4, x30, x4	# 813
	lw		x5, -92(x2)	# 813
	add		x4, x5, x4	# 813
	fsw		f1, 0(x4)	# 813
	addi	x4, x0, 1	# 814
	sw		x4, -100(x2)	# 814
	sw		x1, -104(x2)	# 814
	addi	x2, x2, -108	# 814
	jal		x1, min_caml_read_float	# 814
	addi	x2, x2, 108	# 814
	lw		x1, -104(x2)	# 814
	lw		x4, -100(x2)	# 814
	mul		x4, x30, x4	# 814
	lw		x5, -92(x2)	# 814
	add		x4, x5, x4	# 814
	fsw		f1, 0(x4)	# 814
	addi	x4, x0, 3	# 816
	fadd	f1, f0, f0	# 816
	sw		x1, -104(x2)	# 816
	addi	x2, x2, -108	# 816
	jal		x1, min_caml_create_float_array	# 816
	addi	x2, x2, 108	# 816
	lw		x1, -104(x2)	# 816
	addi	x5, x0, 0	# 817
	sw		x4, -104(x2)	# 817
	sw		x5, -108(x2)	# 817
	sw		x1, -112(x2)	# 817
	addi	x2, x2, -116	# 817
	jal		x1, min_caml_read_float	# 817
	addi	x2, x2, 116	# 817
	lw		x1, -112(x2)	# 817
	lw		x4, -108(x2)	# 817
	mul		x4, x30, x4	# 817
	lw		x5, -104(x2)	# 817
	add		x4, x5, x4	# 817
	fsw		f1, 0(x4)	# 817
	addi	x4, x0, 1	# 818
	sw		x4, -112(x2)	# 818
	sw		x1, -116(x2)	# 818
	addi	x2, x2, -120	# 818
	jal		x1, min_caml_read_float	# 818
	addi	x2, x2, 120	# 818
	lw		x1, -116(x2)	# 818
	lw		x4, -112(x2)	# 818
	mul		x4, x30, x4	# 818
	lw		x5, -104(x2)	# 818
	add		x4, x5, x4	# 818
	fsw		f1, 0(x4)	# 818
	addi	x4, x0, 2	# 819
	sw		x4, -116(x2)	# 819
	sw		x1, -120(x2)	# 819
	addi	x2, x2, -124	# 819
	jal		x1, min_caml_read_float	# 819
	addi	x2, x2, 124	# 819
	lw		x1, -120(x2)	# 819
	lw		x4, -116(x2)	# 819
	mul		x4, x30, x4	# 819
	lw		x5, -104(x2)	# 819
	add		x4, x5, x4	# 819
	fsw		f1, 0(x4)	# 819
	addi	x4, x0, 3	# 821
	fadd	f1, f0, f0	# 821
	sw		x1, -120(x2)	# 821
	addi	x2, x2, -124	# 821
	jal		x1, min_caml_create_float_array	# 821
	addi	x2, x2, 124	# 821
	lw		x1, -120(x2)	# 821
	addi	x5, x0, 0	# 822
	lw		x6, -48(x2)	# 822
	sw		x4, -120(x2)	# 822
	beq		x6, x5, beq_cont.32139	# 822
	addi	x5, x0, 0	# 824
	sw		x5, -124(x2)	# 824
	sw		x1, -128(x2)	# 824
	addi	x2, x2, -132	# 824
	jal		x1, min_caml_read_float	# 824
	addi	x2, x2, 132	# 824
	lw		x1, -128(x2)	# 824
	fadd	f2, f0, f24	# 691
	fmul	f1, f1, f2	# 691
	lw		x4, -124(x2)	# 824
	mul		x4, x30, x4	# 824
	lw		x5, -120(x2)	# 824
	add		x4, x5, x4	# 824
	fsw		f1, 0(x4)	# 824
	addi	x4, x0, 1	# 825
	sw		x4, -128(x2)	# 825
	sw		x1, -132(x2)	# 825
	addi	x2, x2, -136	# 825
	jal		x1, min_caml_read_float	# 825
	addi	x2, x2, 136	# 825
	lw		x1, -132(x2)	# 825
	fadd	f2, f0, f24	# 691
	fmul	f1, f1, f2	# 691
	lw		x4, -128(x2)	# 825
	mul		x4, x30, x4	# 825
	lw		x5, -120(x2)	# 825
	add		x4, x5, x4	# 825
	fsw		f1, 0(x4)	# 825
	addi	x4, x0, 2	# 826
	sw		x4, -132(x2)	# 826
	sw		x1, -136(x2)	# 826
	addi	x2, x2, -140	# 826
	jal		x1, min_caml_read_float	# 826
	addi	x2, x2, 140	# 826
	lw		x1, -136(x2)	# 826
	fadd	f2, f0, f24	# 691
	fmul	f1, f1, f2	# 691
	lw		x4, -132(x2)	# 826
	mul		x4, x30, x4	# 826
	lw		x5, -120(x2)	# 826
	add		x4, x5, x4	# 826
	fsw		f1, 0(x4)	# 826
beq_cont.32139:
	addi	x4, x0, 2	# 833
	lw		x5, -40(x2)	# 833
	beq		x5, x4, beq.32141	# 833
	lw		x4, -88(x2)	# 833
	jal		x0, beq_cont.32140	# 833
beq.32141:
	addi	x4, x0, 1	# 833
beq_cont.32140:
	addi	x6, x0, 4	# 834
	fadd	f1, f0, f0	# 834
	sw		x4, -136(x2)	# 834
	addi	x4, x6, 0
	sw		x1, -140(x2)	# 834
	addi	x2, x2, -144	# 834
	jal		x1, min_caml_create_float_array	# 834
	addi	x2, x2, 144	# 834
	lw		x1, -140(x2)	# 834
	addi	x5, x3, 0	# 837
	addi	x3, x3, 44	# 837
	sw		x4, 40(x5)	# 837
	lw		x4, -120(x2)	# 837
	sw		x4, 36(x5)	# 837
	lw		x6, -104(x2)	# 837
	sw		x6, 32(x5)	# 837
	lw		x6, -92(x2)	# 837
	sw		x6, 28(x5)	# 837
	lw		x6, -136(x2)	# 837
	sw		x6, 24(x5)	# 837
	lw		x6, -68(x2)	# 837
	sw		x6, 20(x5)	# 837
	lw		x6, -52(x2)	# 837
	sw		x6, 16(x5)	# 837
	lw		x7, -48(x2)	# 837
	sw		x7, 12(x5)	# 837
	lw		x8, -44(x2)	# 837
	sw		x8, 8(x5)	# 837
	lw		x8, -40(x2)	# 837
	sw		x8, 4(x5)	# 837
	lw		x9, -36(x2)	# 837
	sw		x9, 0(x5)	# 837
	lw		x9, -24(x2)	# 845
	mul		x10, x30, x9	# 845
	addi	x10, x10, 60048	# 845
	sw		x5, 0(x10)	# 845
	addi	x5, x0, 3	# 847
	beq		x8, x5, beq.32143	# 847
	addi	x5, x0, 2	# 857
	beq		x8, x5, beq.32145	# 857
	jal		x0, beq_cont.32144	# 857
beq.32145:
	lw		x5, -20(x2)	# 297
	mul		x8, x30, x5	# 297
	add		x8, x6, x8	# 297
	flw		f1, 0(x8)	# 297
	fmul	f1, f1, f1	# 127
	lw		x8, -16(x2)	# 297
	mul		x10, x30, x8	# 297
	add		x10, x6, x10	# 297
	flw		f2, 0(x10)	# 297
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 297
	lw		x10, -12(x2)	# 297
	mul		x11, x30, x10	# 297
	add		x11, x6, x11	# 297
	flw		f2, 0(x11)	# 297
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 297
	fsqrt	f1, f1	# 297
	flw		f2, -28(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.32147	# 120
	fadd	f1, f0, f16	# 298
	jal		x0, feq_cont.32146	# 120
feq_else.32147:
	flw		f3, -84(x2)	# 122
	fle		x31, f2, f3	# 122
	beq		x31, x0, fle_else.32149	# 122
	fadd	f2, f0, f18	# 298
	fdiv	f1, f2, f1	# 298
	jal		x0, fle_cont.32148	# 122
fle_else.32149:
	fadd	f2, f0, f16	# 298
	fdiv	f1, f2, f1	# 298
fle_cont.32148:
feq_cont.32146:
	mul		x11, x30, x5	# 299
	add		x11, x6, x11	# 299
	flw		f2, 0(x11)	# 299
	fmul	f2, f2, f1	# 299
	mul		x11, x30, x5	# 299
	add		x11, x6, x11	# 299
	fsw		f2, 0(x11)	# 299
	mul		x11, x30, x8	# 300
	add		x11, x6, x11	# 300
	flw		f2, 0(x11)	# 300
	fmul	f2, f2, f1	# 300
	mul		x11, x30, x8	# 300
	add		x11, x6, x11	# 300
	fsw		f2, 0(x11)	# 300
	mul		x11, x30, x10	# 301
	add		x11, x6, x11	# 301
	flw		f2, 0(x11)	# 301
	fmul	f1, f2, f1	# 301
	mul		x11, x30, x10	# 301
	add		x11, x6, x11	# 301
	fsw		f1, 0(x11)	# 301
beq_cont.32144:
	jal		x0, beq_cont.32142	# 847
beq.32143:
	addi	x5, x0, 0	# 850
	mul		x5, x30, x5	# 850
	add		x5, x6, x5	# 850
	flw		f1, 0(x5)	# 850
	addi	x5, x0, 0	# 851
	flw		f2, -28(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.32151	# 120
	fadd	f1, f0, f0	# 851
	jal		x0, feq_cont.32150	# 120
feq_else.32151:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.32153	# 120
	fadd	f3, f0, f2	# 226
	jal		x0, feq_cont.32152	# 120
feq_else.32153:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.32155	# 121
	fadd	f3, f0, f18	# 228
	jal		x0, fle_cont.32154	# 121
fle_else.32155:
	fadd	f3, f0, f16	# 227
fle_cont.32154:
feq_cont.32152:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 851
feq_cont.32150:
	mul		x5, x30, x5	# 851
	add		x5, x6, x5	# 851
	fsw		f1, 0(x5)	# 851
	addi	x5, x0, 1	# 852
	mul		x5, x30, x5	# 852
	add		x5, x6, x5	# 852
	flw		f1, 0(x5)	# 852
	addi	x5, x0, 1	# 853
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.32157	# 120
	fadd	f1, f0, f0	# 853
	jal		x0, feq_cont.32156	# 120
feq_else.32157:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.32159	# 120
	fadd	f3, f0, f2	# 226
	jal		x0, feq_cont.32158	# 120
feq_else.32159:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.32161	# 121
	fadd	f3, f0, f18	# 228
	jal		x0, fle_cont.32160	# 121
fle_else.32161:
	fadd	f3, f0, f16	# 227
fle_cont.32160:
feq_cont.32158:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 853
feq_cont.32156:
	mul		x5, x30, x5	# 853
	add		x5, x6, x5	# 853
	fsw		f1, 0(x5)	# 853
	addi	x5, x0, 2	# 854
	mul		x5, x30, x5	# 854
	add		x5, x6, x5	# 854
	flw		f1, 0(x5)	# 854
	addi	x5, x0, 2	# 855
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.32163	# 120
	fadd	f1, f0, f0	# 855
	jal		x0, feq_cont.32162	# 120
feq_else.32163:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.32165	# 120
	jal		x0, feq_cont.32164	# 120
feq_else.32165:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.32167	# 121
	fadd	f2, f0, f18	# 228
	jal		x0, fle_cont.32166	# 121
fle_else.32167:
	fadd	f2, f0, f16	# 227
fle_cont.32166:
feq_cont.32164:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f2, f1	# 855
feq_cont.32162:
	mul		x5, x30, x5	# 855
	add		x5, x6, x5	# 855
	fsw		f1, 0(x5)	# 855
beq_cont.32142:
	addi	x5, x0, 0	# 863
	beq		x7, x5, beq_cont.32168	# 863
	lw		x5, -20(x2)	# 752
	mul		x7, x30, x5	# 752
	add		x7, x4, x7	# 752
	flw		f1, 0(x7)	# 752
	lw		x29, -8(x2)	# 752
	sw		x1, -140(x2)	# 752
	addi	x2, x2, -144	# 752
	lw		x31, 0(x29)	# 752
	jalr	x1, x31, 0	# 752
	addi	x2, x2, 144	# 752
	lw		x1, -140(x2)	# 752
	lw		x4, -20(x2)	# 753
	mul		x5, x30, x4	# 753
	lw		x6, -120(x2)	# 753
	add		x5, x6, x5	# 753
	flw		f2, 0(x5)	# 753
	lw		x29, -4(x2)	# 753
	fsw		f1, -140(x2)	# 753
	fadd	f1, f0, f2
	sw		x1, -144(x2)	# 753
	addi	x2, x2, -148	# 753
	lw		x31, 0(x29)	# 753
	jalr	x1, x31, 0	# 753
	addi	x2, x2, 148	# 753
	lw		x1, -144(x2)	# 753
	lw		x4, -16(x2)	# 754
	mul		x5, x30, x4	# 754
	lw		x6, -120(x2)	# 754
	add		x5, x6, x5	# 754
	flw		f2, 0(x5)	# 754
	lw		x29, -8(x2)	# 754
	fsw		f1, -144(x2)	# 754
	fadd	f1, f0, f2
	sw		x1, -148(x2)	# 754
	addi	x2, x2, -152	# 754
	lw		x31, 0(x29)	# 754
	jalr	x1, x31, 0	# 754
	addi	x2, x2, 152	# 754
	lw		x1, -148(x2)	# 754
	lw		x4, -16(x2)	# 755
	mul		x5, x30, x4	# 755
	lw		x6, -120(x2)	# 755
	add		x5, x6, x5	# 755
	flw		f2, 0(x5)	# 755
	lw		x29, -4(x2)	# 755
	fsw		f1, -148(x2)	# 755
	fadd	f1, f0, f2
	sw		x1, -152(x2)	# 755
	addi	x2, x2, -156	# 755
	lw		x31, 0(x29)	# 755
	jalr	x1, x31, 0	# 755
	addi	x2, x2, 156	# 755
	lw		x1, -152(x2)	# 755
	lw		x4, -12(x2)	# 756
	mul		x5, x30, x4	# 756
	lw		x6, -120(x2)	# 756
	add		x5, x6, x5	# 756
	flw		f2, 0(x5)	# 756
	lw		x29, -8(x2)	# 756
	fsw		f1, -152(x2)	# 756
	fadd	f1, f0, f2
	sw		x1, -156(x2)	# 756
	addi	x2, x2, -160	# 756
	lw		x31, 0(x29)	# 756
	jalr	x1, x31, 0	# 756
	addi	x2, x2, 160	# 756
	lw		x1, -156(x2)	# 756
	lw		x4, -12(x2)	# 757
	mul		x5, x30, x4	# 757
	lw		x6, -120(x2)	# 757
	add		x5, x6, x5	# 757
	flw		f2, 0(x5)	# 757
	lw		x29, -4(x2)	# 757
	fsw		f1, -156(x2)	# 757
	fadd	f1, f0, f2
	sw		x1, -160(x2)	# 757
	addi	x2, x2, -164	# 757
	lw		x31, 0(x29)	# 757
	jalr	x1, x31, 0	# 757
	addi	x2, x2, 164	# 757
	lw		x1, -160(x2)	# 757
	flw		f2, -156(x2)	# 759
	flw		f3, -148(x2)	# 759
	fmul	f4, f3, f2	# 759
	flw		f5, -152(x2)	# 760
	flw		f6, -144(x2)	# 760
	fmul	f7, f6, f5	# 760
	fmul	f8, f7, f2	# 760
	flw		f9, -140(x2)	# 760
	fmul	f10, f9, f1	# 760
	fsub	f8, f8, f10	# 760
	fmul	f10, f9, f5	# 761
	fmul	f11, f10, f2	# 761
	fmul	f12, f6, f1	# 761
	fadd	f11, f11, f12	# 761
	fmul	f12, f3, f1	# 763
	fmul	f7, f7, f1	# 764
	fmul	f13, f9, f2	# 764
	fadd	f7, f7, f13	# 764
	fmul	f1, f10, f1	# 765
	fmul	f2, f6, f2	# 765
	fsub	f1, f1, f2	# 765
	fsub	f2, f0, f5	# 123
	fmul	f5, f6, f3	# 768
	fmul	f3, f9, f3	# 769
	lw		x4, -20(x2)	# 772
	mul		x5, x30, x4	# 772
	lw		x6, -52(x2)	# 772
	add		x5, x6, x5	# 772
	flw		f6, 0(x5)	# 772
	lw		x5, -16(x2)	# 773
	mul		x7, x30, x5	# 773
	add		x7, x6, x7	# 773
	flw		f9, 0(x7)	# 773
	lw		x7, -12(x2)	# 774
	mul		x8, x30, x7	# 774
	add		x8, x6, x8	# 774
	flw		f10, 0(x8)	# 774
	fmul	f13, f4, f4	# 127
	fmul	f13, f6, f13	# 779
	fmul	f14, f12, f12	# 127
	fmul	f14, f9, f14	# 779
	fadd	f13, f13, f14	# 779
	fmul	f14, f2, f2	# 127
	fmul	f14, f10, f14	# 779
	fadd	f13, f13, f14	# 779
	mul		x8, x30, x4	# 779
	add		x8, x6, x8	# 779
	fsw		f13, 0(x8)	# 779
	fmul	f13, f8, f8	# 127
	fmul	f13, f6, f13	# 780
	fmul	f14, f7, f7	# 127
	fmul	f14, f9, f14	# 780
	fadd	f13, f13, f14	# 780
	fmul	f14, f5, f5	# 127
	fmul	f14, f10, f14	# 780
	fadd	f13, f13, f14	# 780
	mul		x8, x30, x5	# 780
	add		x8, x6, x8	# 780
	fsw		f13, 0(x8)	# 780
	fmul	f13, f11, f11	# 127
	fmul	f13, f6, f13	# 781
	fmul	f14, f1, f1	# 127
	fmul	f14, f9, f14	# 781
	fadd	f13, f13, f14	# 781
	fmul	f14, f3, f3	# 127
	fmul	f14, f10, f14	# 781
	fadd	f13, f13, f14	# 781
	mul		x8, x30, x7	# 781
	add		x6, x6, x8	# 781
	fsw		f13, 0(x6)	# 781
	lui		x6, %hi(l.26348)	# 784
	ori		x6, x0, %lo(l.26348)	# 784
	flw		f13, 0(x6)	# 784
	fmul	f14, f6, f8	# 784
	fmul	f14, f14, f11	# 784
	fmul	f15, f9, f7	# 784
	fmul	f15, f15, f1	# 784
	fadd	f14, f14, f15	# 784
	fmul	f15, f10, f5	# 784
	fmul	f15, f15, f3	# 784
	fadd	f14, f14, f15	# 784
	fmul	f14, f13, f14	# 784
	mul		x6, x30, x4	# 784
	lw		x8, -120(x2)	# 784
	add		x6, x8, x6	# 784
	fsw		f14, 0(x6)	# 784
	fmul	f4, f6, f4	# 785
	fmul	f6, f4, f11	# 785
	fmul	f9, f9, f12	# 785
	fmul	f1, f9, f1	# 785
	fadd	f1, f6, f1	# 785
	fmul	f2, f10, f2	# 785
	fmul	f3, f2, f3	# 785
	fadd	f1, f1, f3	# 785
	fmul	f1, f13, f1	# 785
	mul		x6, x30, x5	# 785
	add		x6, x8, x6	# 785
	fsw		f1, 0(x6)	# 785
	fmul	f1, f4, f8	# 786
	fmul	f3, f9, f7	# 786
	fadd	f1, f1, f3	# 786
	fmul	f2, f2, f5	# 786
	fadd	f1, f1, f2	# 786
	fmul	f1, f13, f1	# 786
	mul		x6, x30, x7	# 786
	add		x6, x8, x6	# 786
	fsw		f1, 0(x6)	# 786
beq_cont.32168:
	addi	x4, x0, 1	# 867
	jal		x0, beq_cont.32135	# 794
beq.32136:
	addi	x4, x0, 0	# 870
beq_cont.32135:
	lw		x5, -20(x2)	# 876
	beq		x4, x5, beq.32169	# 876
	lw		x4, -16(x2)	# 877
	lw		x5, -24(x2)	# 877
	add		x4, x5, x4	# 877
	lw		x29, 0(x2)	# 877
	lw		x31, 0(x29)	# 877
	jalr	x0, x31, 0	# 877
beq.32169:
	mul		x4, x30, x5	# 879
	addi	x4, x4, 60000	# 879
	lw		x5, -24(x2)	# 879
	sw		x5, 0(x4)	# 879
	jalr	x0, x1, 0	# 879
ble.32134:
	jalr	x0, x1, 0	# 880
read_net_item.2700.17752:
	lw		x5, 8(x29)	# 891
	lw		x6, 4(x29)	# 891
	sw		x29, 0(x2)	# 891
	sw		x6, -4(x2)	# 891
	sw		x4, -8(x2)	# 891
	sw		x5, -12(x2)	# 891
	sw		x1, -16(x2)	# 891
	addi	x2, x2, -20	# 891
	jal		x1, min_caml_read_int	# 891
	addi	x2, x2, 20	# 891
	lw		x1, -16(x2)	# 891
	lw		x5, -12(x2)	# 892
	beq		x4, x5, beq.32172	# 892
	lw		x5, -4(x2)	# 894
	lw		x6, -8(x2)	# 894
	add		x5, x6, x5	# 894
	lw		x29, 0(x2)	# 894
	sw		x4, -16(x2)	# 894
	addi	x4, x5, 0
	sw		x1, -20(x2)	# 894
	addi	x2, x2, -24	# 894
	lw		x31, 0(x29)	# 894
	jalr	x1, x31, 0	# 894
	addi	x2, x2, 24	# 894
	lw		x1, -20(x2)	# 894
	lw		x5, -8(x2)	# 895
	mul		x5, x30, x5	# 895
	add		x5, x4, x5	# 895
	lw		x6, -16(x2)	# 895
	sw		x6, 0(x5)	# 895
	jalr	x0, x1, 0	# 895
beq.32172:
	lw		x4, -4(x2)	# 892
	lw		x6, -8(x2)	# 892
	add		x4, x6, x4	# 892
	jal		x0, min_caml_create_array	# 892
read_or_network.2702.17754:
	lw		x5, 16(x29)	# 899
	lw		x6, 12(x29)	# 899
	lw		x7, 8(x29)	# 899
	lw		x8, 4(x29)	# 899
	sw		x29, 0(x2)	# 899
	sw		x8, -4(x2)	# 899
	sw		x4, -8(x2)	# 899
	sw		x6, -12(x2)	# 899
	sw		x7, -16(x2)	# 899
	addi	x4, x7, 0
	addi	x29, x5, 0
	sw		x1, -20(x2)	# 899
	addi	x2, x2, -24	# 899
	lw		x31, 0(x29)	# 899
	jalr	x1, x31, 0	# 899
	addi	x2, x2, 24	# 899
	lw		x1, -20(x2)	# 899
	addi	x5, x4, 0	# 899
	lw		x4, -16(x2)	# 900
	mul		x4, x30, x4	# 900
	add		x4, x5, x4	# 900
	lw		x4, 0(x4)	# 900
	lw		x6, -12(x2)	# 900
	beq		x4, x6, beq.32173	# 900
	lw		x4, -4(x2)	# 903
	lw		x6, -8(x2)	# 903
	add		x4, x6, x4	# 903
	lw		x29, 0(x2)	# 903
	sw		x5, -20(x2)	# 903
	sw		x1, -24(x2)	# 903
	addi	x2, x2, -28	# 903
	lw		x31, 0(x29)	# 903
	jalr	x1, x31, 0	# 903
	addi	x2, x2, 28	# 903
	lw		x1, -24(x2)	# 903
	lw		x5, -8(x2)	# 904
	mul		x5, x30, x5	# 904
	add		x5, x4, x5	# 904
	lw		x6, -20(x2)	# 904
	sw		x6, 0(x5)	# 904
	jalr	x0, x1, 0	# 904
beq.32173:
	lw		x4, -4(x2)	# 901
	lw		x6, -8(x2)	# 901
	add		x4, x6, x4	# 901
	jal		x0, min_caml_create_array	# 901
read_and_network.2704.17756:
	lw		x5, 16(x29)	# 908
	lw		x6, 12(x29)	# 908
	lw		x7, 8(x29)	# 908
	lw		x8, 4(x29)	# 908
	sw		x29, 0(x2)	# 908
	sw		x8, -4(x2)	# 908
	sw		x4, -8(x2)	# 908
	sw		x6, -12(x2)	# 908
	sw		x7, -16(x2)	# 908
	addi	x4, x7, 0
	addi	x29, x5, 0
	sw		x1, -20(x2)	# 908
	addi	x2, x2, -24	# 908
	lw		x31, 0(x29)	# 908
	jalr	x1, x31, 0	# 908
	addi	x2, x2, 24	# 908
	lw		x1, -20(x2)	# 908
	lw		x5, -16(x2)	# 909
	mul		x5, x30, x5	# 909
	add		x5, x4, x5	# 909
	lw		x5, 0(x5)	# 909
	lw		x6, -12(x2)	# 909
	beq		x5, x6, beq.32174	# 909
	lw		x5, -8(x2)	# 911
	mul		x6, x30, x5	# 911
	addi	x6, x6, 60332	# 911
	sw		x4, 0(x6)	# 911
	lw		x4, -4(x2)	# 912
	add		x4, x5, x4	# 912
	lw		x29, 0(x2)	# 912
	lw		x31, 0(x29)	# 912
	jalr	x0, x31, 0	# 912
beq.32174:
	jalr	x0, x1, 0	# 909
iter_setup_dirvec_constants.2801.17758:
	lw		x6, 16(x29)	# 1284
	lw		x7, 12(x29)	# 1284
	lw		x8, 8(x29)	# 1284
	flw		f1, 4(x29)	# 1284
	ble		x7, x5, ble.32176	# 1284
	jalr	x0, x1, 0	# 1297
ble.32176:
	mul		x9, x30, x5	# 1285
	addi	x9, x9, 60048	# 1285
	lw		x9, 0(x9)	# 1285
	lw		x10, 4(x4)	# 659
	lw		x11, 0(x4)	# 653
	lw		x12, 4(x9)	# 367
	sw		x4, 0(x2)	# 1289
	sw		x29, -4(x2)	# 1289
	sw		x8, -8(x2)	# 1289
	beq		x12, x8, beq.32179	# 1289
	addi	x13, x0, 2	# 1291
	beq		x12, x13, beq.32181	# 1291
	addi	x12, x0, 5	# 1255
	fadd	f2, f0, f0	# 1255
	sw		x10, -12(x2)	# 1255
	sw		x5, -16(x2)	# 1255
	fsw		f1, -20(x2)	# 1255
	sw		x6, -24(x2)	# 1255
	sw		x7, -28(x2)	# 1255
	sw		x9, -32(x2)	# 1255
	sw		x11, -36(x2)	# 1255
	addi	x4, x12, 0
	fadd	f1, f0, f2
	sw		x1, -40(x2)	# 1255
	addi	x2, x2, -44	# 1255
	jal		x1, min_caml_create_float_array	# 1255
	addi	x2, x2, 44	# 1255
	lw		x1, -40(x2)	# 1255
	addi	x5, x0, 0	# 1257
	mul		x5, x30, x5	# 1257
	lw		x6, -36(x2)	# 1257
	add		x5, x6, x5	# 1257
	flw		f1, 0(x5)	# 1257
	addi	x5, x0, 1	# 1257
	mul		x5, x30, x5	# 1257
	add		x5, x6, x5	# 1257
	flw		f2, 0(x5)	# 1257
	addi	x5, x0, 2	# 1257
	mul		x5, x30, x5	# 1257
	add		x5, x6, x5	# 1257
	flw		f3, 0(x5)	# 1257
	fmul	f4, f1, f1	# 127
	lw		x5, -32(x2)	# 405
	lw		x7, 16(x5)	# 405
	lw		x8, -28(x2)	# 410
	mul		x9, x30, x8	# 410
	add		x7, x7, x9	# 410
	flw		f5, 0(x7)	# 410
	fmul	f4, f4, f5	# 981
	fmul	f5, f2, f2	# 127
	lw		x7, 16(x5)	# 415
	lw		x9, -8(x2)	# 420
	mul		x10, x30, x9	# 420
	add		x7, x7, x10	# 420
	flw		f6, 0(x7)	# 420
	fmul	f5, f5, f6	# 981
	fadd	f4, f4, f5	# 981
	fmul	f5, f3, f3	# 127
	lw		x7, 16(x5)	# 425
	lw		x10, -24(x2)	# 430
	mul		x11, x30, x10	# 430
	add		x7, x7, x11	# 430
	flw		f6, 0(x7)	# 430
	fmul	f5, f5, f6	# 981
	fadd	f4, f4, f5	# 981
	lw		x7, 12(x5)	# 396
	beq		x7, x8, beq.32183	# 983
	fmul	f5, f2, f3	# 987
	lw		x7, 36(x5)	# 525
	mul		x11, x30, x8	# 530
	add		x7, x7, x11	# 530
	flw		f6, 0(x7)	# 530
	fmul	f5, f5, f6	# 987
	fadd	f4, f4, f5	# 986
	fmul	f3, f3, f1	# 988
	lw		x7, 36(x5)	# 535
	mul		x11, x30, x9	# 540
	add		x7, x7, x11	# 540
	flw		f5, 0(x7)	# 540
	fmul	f3, f3, f5	# 988
	fadd	f3, f4, f3	# 986
	fmul	f1, f1, f2	# 989
	lw		x7, 36(x5)	# 545
	mul		x11, x30, x10	# 550
	add		x7, x7, x11	# 550
	flw		f2, 0(x7)	# 550
	fmul	f1, f1, f2	# 989
	fadd	f1, f3, f1	# 986
	jal		x0, beq_cont.32182	# 983
beq.32183:
	fadd	f1, f0, f4	# 984
beq_cont.32182:
	addi	x7, x0, 0	# 1258
	mul		x7, x30, x7	# 1258
	add		x7, x6, x7	# 1258
	flw		f2, 0(x7)	# 1258
	lw		x7, 16(x5)	# 405
	mul		x11, x30, x8	# 410
	add		x7, x7, x11	# 410
	flw		f3, 0(x7)	# 410
	fmul	f2, f2, f3	# 1258
	fsub	f2, f0, f2	# 123
	addi	x7, x0, 1	# 1259
	mul		x7, x30, x7	# 1259
	add		x7, x6, x7	# 1259
	flw		f3, 0(x7)	# 1259
	lw		x7, 16(x5)	# 415
	mul		x11, x30, x9	# 420
	add		x7, x7, x11	# 420
	flw		f4, 0(x7)	# 420
	fmul	f3, f3, f4	# 1259
	fsub	f3, f0, f3	# 123
	addi	x7, x0, 2	# 1260
	mul		x7, x30, x7	# 1260
	add		x7, x6, x7	# 1260
	flw		f4, 0(x7)	# 1260
	lw		x7, 16(x5)	# 425
	mul		x11, x30, x10	# 430
	add		x7, x7, x11	# 430
	flw		f5, 0(x7)	# 430
	fmul	f4, f4, f5	# 1260
	fsub	f4, f0, f4	# 123
	addi	x7, x0, 0	# 1262
	mul		x7, x30, x7	# 1262
	add		x7, x4, x7	# 1262
	fsw		f1, 0(x7)	# 1262
	lw		x7, 12(x5)	# 396
	addi	x11, x0, 0	# 1266
	beq		x7, x11, beq.32185	# 1266
	addi	x7, x0, 1	# 1267
	addi	x11, x0, 2	# 1267
	mul		x11, x30, x11	# 1267
	add		x11, x6, x11	# 1267
	flw		f5, 0(x11)	# 1267
	lw		x11, 36(x5)	# 535
	mul		x12, x30, x9	# 540
	add		x11, x11, x12	# 540
	flw		f6, 0(x11)	# 540
	fmul	f5, f5, f6	# 1267
	addi	x11, x0, 1	# 1267
	mul		x11, x30, x11	# 1267
	add		x11, x6, x11	# 1267
	flw		f6, 0(x11)	# 1267
	lw		x11, 36(x5)	# 545
	mul		x12, x30, x10	# 550
	add		x11, x11, x12	# 550
	flw		f7, 0(x11)	# 550
	fmul	f6, f6, f7	# 1267
	fadd	f5, f5, f6	# 1267
	fadd	f6, f0, f17	# 126
	fmul	f5, f5, f6	# 126
	fsub	f2, f2, f5	# 1267
	mul		x7, x30, x7	# 1267
	add		x7, x4, x7	# 1267
	fsw		f2, 0(x7)	# 1267
	addi	x7, x0, 2	# 1268
	addi	x11, x0, 2	# 1268
	mul		x11, x30, x11	# 1268
	add		x11, x6, x11	# 1268
	flw		f2, 0(x11)	# 1268
	lw		x11, 36(x5)	# 525
	mul		x12, x30, x8	# 530
	add		x11, x11, x12	# 530
	flw		f5, 0(x11)	# 530
	fmul	f2, f2, f5	# 1268
	addi	x11, x0, 0	# 1268
	mul		x11, x30, x11	# 1268
	add		x11, x6, x11	# 1268
	flw		f5, 0(x11)	# 1268
	lw		x11, 36(x5)	# 545
	mul		x10, x30, x10	# 550
	add		x10, x11, x10	# 550
	flw		f6, 0(x10)	# 550
	fmul	f5, f5, f6	# 1268
	fadd	f2, f2, f5	# 1268
	fadd	f5, f0, f17	# 126
	fmul	f2, f2, f5	# 126
	fsub	f2, f3, f2	# 1268
	mul		x7, x30, x7	# 1268
	add		x7, x4, x7	# 1268
	fsw		f2, 0(x7)	# 1268
	addi	x7, x0, 3	# 1269
	addi	x10, x0, 1	# 1269
	mul		x10, x30, x10	# 1269
	add		x10, x6, x10	# 1269
	flw		f2, 0(x10)	# 1269
	lw		x10, 36(x5)	# 525
	mul		x8, x30, x8	# 530
	add		x8, x10, x8	# 530
	flw		f3, 0(x8)	# 530
	fmul	f2, f2, f3	# 1269
	addi	x8, x0, 0	# 1269
	mul		x8, x30, x8	# 1269
	add		x6, x6, x8	# 1269
	flw		f3, 0(x6)	# 1269
	lw		x5, 36(x5)	# 535
	mul		x6, x30, x9	# 540
	add		x5, x5, x6	# 540
	flw		f5, 0(x5)	# 540
	fmul	f3, f3, f5	# 1269
	fadd	f2, f2, f3	# 1269
	fadd	f3, f0, f17	# 126
	fmul	f2, f2, f3	# 126
	fsub	f2, f4, f2	# 1269
	mul		x5, x30, x7	# 1269
	add		x5, x4, x5	# 1269
	fsw		f2, 0(x5)	# 1269
	jal		x0, beq_cont.32184	# 1266
beq.32185:
	addi	x5, x0, 1	# 1271
	mul		x5, x30, x5	# 1271
	add		x5, x4, x5	# 1271
	fsw		f2, 0(x5)	# 1271
	addi	x5, x0, 2	# 1272
	mul		x5, x30, x5	# 1272
	add		x5, x4, x5	# 1272
	fsw		f3, 0(x5)	# 1272
	addi	x5, x0, 3	# 1273
	mul		x5, x30, x5	# 1273
	add		x5, x4, x5	# 1273
	fsw		f4, 0(x5)	# 1273
beq_cont.32184:
	flw		f2, -20(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.32187	# 120
	jal		x0, feq_cont.32186	# 120
feq_else.32187:
	addi	x5, x0, 4	# 1276
	fadd	f2, f0, f16	# 1276
	fdiv	f1, f2, f1	# 1276
	mul		x5, x30, x5	# 1276
	add		x5, x4, x5	# 1276
	fsw		f1, 0(x5)	# 1276
feq_cont.32186:
	lw		x5, -16(x2)	# 1294
	mul		x6, x30, x5	# 1294
	lw		x7, -12(x2)	# 1294
	add		x6, x7, x6	# 1294
	sw		x4, 0(x6)	# 1294
	jal		x0, beq_cont.32180	# 1291
beq.32181:
	addi	x12, x0, 4	# 1236
	fadd	f2, f0, f0	# 1236
	sw		x10, -12(x2)	# 1236
	sw		x5, -16(x2)	# 1236
	fsw		f1, -20(x2)	# 1236
	sw		x6, -24(x2)	# 1236
	sw		x7, -28(x2)	# 1236
	sw		x9, -32(x2)	# 1236
	sw		x11, -36(x2)	# 1236
	addi	x4, x12, 0
	fadd	f1, f0, f2
	sw		x1, -40(x2)	# 1236
	addi	x2, x2, -44	# 1236
	jal		x1, min_caml_create_float_array	# 1236
	addi	x2, x2, 44	# 1236
	lw		x1, -40(x2)	# 1236
	addi	x5, x0, 0	# 1238
	mul		x5, x30, x5	# 1238
	lw		x6, -36(x2)	# 1238
	add		x5, x6, x5	# 1238
	flw		f1, 0(x5)	# 1238
	lw		x5, -32(x2)	# 405
	lw		x7, 16(x5)	# 405
	lw		x8, -28(x2)	# 410
	mul		x9, x30, x8	# 410
	add		x7, x7, x9	# 410
	flw		f2, 0(x7)	# 410
	fmul	f1, f1, f2	# 1238
	addi	x7, x0, 1	# 1238
	mul		x7, x30, x7	# 1238
	add		x7, x6, x7	# 1238
	flw		f2, 0(x7)	# 1238
	lw		x7, 16(x5)	# 415
	lw		x9, -8(x2)	# 420
	mul		x10, x30, x9	# 420
	add		x7, x7, x10	# 420
	flw		f3, 0(x7)	# 420
	fmul	f2, f2, f3	# 1238
	fadd	f1, f1, f2	# 1238
	addi	x7, x0, 2	# 1238
	mul		x7, x30, x7	# 1238
	add		x6, x6, x7	# 1238
	flw		f2, 0(x6)	# 1238
	lw		x6, 16(x5)	# 425
	lw		x7, -24(x2)	# 430
	mul		x10, x30, x7	# 430
	add		x6, x6, x10	# 430
	flw		f3, 0(x6)	# 430
	fmul	f2, f2, f3	# 1238
	fadd	f1, f1, f2	# 1238
	flw		f2, -20(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.32189	# 121
	addi	x5, x0, 0	# 1248
	fadd	f1, f0, f0	# 1248
	mul		x5, x30, x5	# 1248
	add		x5, x4, x5	# 1248
	fsw		f1, 0(x5)	# 1248
	jal		x0, fle_cont.32188	# 121
fle_else.32189:
	addi	x6, x0, 0	# 1242
	fadd	f2, f0, f18	# 1242
	fdiv	f2, f2, f1	# 1242
	mul		x6, x30, x6	# 1242
	add		x6, x4, x6	# 1242
	fsw		f2, 0(x6)	# 1242
	addi	x6, x0, 1	# 1244
	lw		x10, 16(x5)	# 405
	mul		x8, x30, x8	# 410
	add		x8, x10, x8	# 410
	flw		f2, 0(x8)	# 410
	fdiv	f2, f2, f1	# 1244
	fsub	f2, f0, f2	# 123
	mul		x6, x30, x6	# 1244
	add		x6, x4, x6	# 1244
	fsw		f2, 0(x6)	# 1244
	addi	x6, x0, 2	# 1245
	lw		x8, 16(x5)	# 415
	mul		x10, x30, x9	# 420
	add		x8, x8, x10	# 420
	flw		f2, 0(x8)	# 420
	fdiv	f2, f2, f1	# 1245
	fsub	f2, f0, f2	# 123
	mul		x6, x30, x6	# 1245
	add		x6, x4, x6	# 1245
	fsw		f2, 0(x6)	# 1245
	addi	x6, x0, 3	# 1246
	lw		x5, 16(x5)	# 425
	mul		x7, x30, x7	# 430
	add		x5, x5, x7	# 430
	flw		f2, 0(x5)	# 430
	fdiv	f1, f2, f1	# 1246
	fsub	f1, f0, f1	# 123
	mul		x5, x30, x6	# 1246
	add		x5, x4, x5	# 1246
	fsw		f1, 0(x5)	# 1246
fle_cont.32188:
	lw		x5, -16(x2)	# 1292
	mul		x6, x30, x5	# 1292
	lw		x7, -12(x2)	# 1292
	add		x6, x7, x6	# 1292
	sw		x4, 0(x6)	# 1292
beq_cont.32180:
	jal		x0, beq_cont.32178	# 1289
beq.32179:
	addi	x12, x0, 6	# 1209
	fadd	f2, f0, f0	# 1209
	sw		x10, -12(x2)	# 1209
	sw		x5, -16(x2)	# 1209
	sw		x6, -24(x2)	# 1209
	sw		x7, -28(x2)	# 1209
	sw		x9, -32(x2)	# 1209
	fsw		f1, -20(x2)	# 1209
	sw		x11, -36(x2)	# 1209
	addi	x4, x12, 0
	fadd	f1, f0, f2
	sw		x1, -40(x2)	# 1209
	addi	x2, x2, -44	# 1209
	jal		x1, min_caml_create_float_array	# 1209
	addi	x2, x2, 44	# 1209
	lw		x1, -40(x2)	# 1209
	addi	x5, x0, 0	# 1211
	mul		x5, x30, x5	# 1211
	lw		x6, -36(x2)	# 1211
	add		x5, x6, x5	# 1211
	flw		f1, 0(x5)	# 1211
	flw		f2, -20(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.32191	# 120
	addi	x5, x0, 1	# 1212
	fadd	f1, f0, f0	# 1212
	mul		x5, x30, x5	# 1212
	add		x5, x4, x5	# 1212
	fsw		f1, 0(x5)	# 1212
	jal		x0, feq_cont.32190	# 120
feq_else.32191:
	addi	x5, x0, 0	# 1215
	lw		x7, -32(x2)	# 387
	lw		x8, 24(x7)	# 387
	addi	x9, x0, 0	# 1215
	mul		x9, x30, x9	# 1215
	add		x9, x6, x9	# 1215
	flw		f1, 0(x9)	# 1215
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.32193	# 122
	addi	x9, x0, 0	# 122
	jal		x0, fle_cont.32192	# 122
fle_else.32193:
	addi	x9, x0, 1	# 122
fle_cont.32192:
	lw		x10, -28(x2)	# 218
	beq		x8, x10, beq.32195	# 218
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.32197	# 122
	addi	x8, x0, 1	# 218
	jal		x0, fle_cont.32196	# 122
fle_else.32197:
	addi	x8, x0, 0	# 218
fle_cont.32196:
	jal		x0, beq_cont.32194	# 218
beq.32195:
	addi	x8, x9, 0	# 218
beq_cont.32194:
	lw		x9, 16(x7)	# 405
	mul		x11, x30, x10	# 410
	add		x9, x9, x11	# 410
	flw		f1, 0(x9)	# 410
	beq		x8, x10, beq.32199	# 233
	jal		x0, beq_cont.32198	# 233
beq.32199:
	fsub	f1, f0, f1	# 123
beq_cont.32198:
	mul		x5, x30, x5	# 1215
	add		x5, x4, x5	# 1215
	fsw		f1, 0(x5)	# 1215
	addi	x5, x0, 1	# 1217
	fadd	f1, f0, f16	# 1217
	addi	x8, x0, 0	# 1217
	mul		x8, x30, x8	# 1217
	add		x8, x6, x8	# 1217
	flw		f3, 0(x8)	# 1217
	fdiv	f1, f1, f3	# 1217
	mul		x5, x30, x5	# 1217
	add		x5, x4, x5	# 1217
	fsw		f1, 0(x5)	# 1217
feq_cont.32190:
	addi	x5, x0, 1	# 1219
	mul		x5, x30, x5	# 1219
	add		x5, x6, x5	# 1219
	flw		f1, 0(x5)	# 1219
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.32201	# 120
	addi	x5, x0, 3	# 1220
	fadd	f1, f0, f0	# 1220
	mul		x5, x30, x5	# 1220
	add		x5, x4, x5	# 1220
	fsw		f1, 0(x5)	# 1220
	jal		x0, feq_cont.32200	# 120
feq_else.32201:
	addi	x5, x0, 2	# 1222
	lw		x7, -32(x2)	# 387
	lw		x8, 24(x7)	# 387
	addi	x9, x0, 1	# 1222
	mul		x9, x30, x9	# 1222
	add		x9, x6, x9	# 1222
	flw		f1, 0(x9)	# 1222
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.32203	# 122
	addi	x9, x0, 0	# 122
	jal		x0, fle_cont.32202	# 122
fle_else.32203:
	addi	x9, x0, 1	# 122
fle_cont.32202:
	lw		x10, -28(x2)	# 218
	beq		x8, x10, beq.32205	# 218
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.32207	# 122
	addi	x8, x0, 1	# 218
	jal		x0, fle_cont.32206	# 122
fle_else.32207:
	addi	x8, x0, 0	# 218
fle_cont.32206:
	jal		x0, beq_cont.32204	# 218
beq.32205:
	addi	x8, x9, 0	# 218
beq_cont.32204:
	lw		x9, 16(x7)	# 415
	lw		x11, -8(x2)	# 420
	mul		x12, x30, x11	# 420
	add		x9, x9, x12	# 420
	flw		f1, 0(x9)	# 420
	beq		x8, x10, beq.32209	# 233
	jal		x0, beq_cont.32208	# 233
beq.32209:
	fsub	f1, f0, f1	# 123
beq_cont.32208:
	mul		x5, x30, x5	# 1222
	add		x5, x4, x5	# 1222
	fsw		f1, 0(x5)	# 1222
	addi	x5, x0, 3	# 1223
	fadd	f1, f0, f16	# 1223
	addi	x8, x0, 1	# 1223
	mul		x8, x30, x8	# 1223
	add		x8, x6, x8	# 1223
	flw		f3, 0(x8)	# 1223
	fdiv	f1, f1, f3	# 1223
	mul		x5, x30, x5	# 1223
	add		x5, x4, x5	# 1223
	fsw		f1, 0(x5)	# 1223
feq_cont.32200:
	addi	x5, x0, 2	# 1225
	mul		x5, x30, x5	# 1225
	add		x5, x6, x5	# 1225
	flw		f1, 0(x5)	# 1225
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.32211	# 120
	addi	x5, x0, 5	# 1226
	fadd	f1, f0, f0	# 1226
	mul		x5, x30, x5	# 1226
	add		x5, x4, x5	# 1226
	fsw		f1, 0(x5)	# 1226
	jal		x0, feq_cont.32210	# 120
feq_else.32211:
	addi	x5, x0, 4	# 1228
	lw		x7, -32(x2)	# 387
	lw		x8, 24(x7)	# 387
	addi	x9, x0, 2	# 1228
	mul		x9, x30, x9	# 1228
	add		x9, x6, x9	# 1228
	flw		f1, 0(x9)	# 1228
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.32213	# 122
	addi	x9, x0, 0	# 122
	jal		x0, fle_cont.32212	# 122
fle_else.32213:
	addi	x9, x0, 1	# 122
fle_cont.32212:
	lw		x10, -28(x2)	# 218
	beq		x8, x10, beq.32215	# 218
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.32217	# 122
	addi	x8, x0, 1	# 218
	jal		x0, fle_cont.32216	# 122
fle_else.32217:
	addi	x8, x0, 0	# 218
fle_cont.32216:
	jal		x0, beq_cont.32214	# 218
beq.32215:
	addi	x8, x9, 0	# 218
beq_cont.32214:
	lw		x7, 16(x7)	# 425
	lw		x9, -24(x2)	# 430
	mul		x9, x30, x9	# 430
	add		x7, x7, x9	# 430
	flw		f1, 0(x7)	# 430
	beq		x8, x10, beq.32219	# 233
	jal		x0, beq_cont.32218	# 233
beq.32219:
	fsub	f1, f0, f1	# 123
beq_cont.32218:
	mul		x5, x30, x5	# 1228
	add		x5, x4, x5	# 1228
	fsw		f1, 0(x5)	# 1228
	addi	x5, x0, 5	# 1229
	fadd	f1, f0, f16	# 1229
	addi	x7, x0, 2	# 1229
	mul		x7, x30, x7	# 1229
	add		x6, x6, x7	# 1229
	flw		f2, 0(x6)	# 1229
	fdiv	f1, f1, f2	# 1229
	mul		x5, x30, x5	# 1229
	add		x5, x4, x5	# 1229
	fsw		f1, 0(x5)	# 1229
feq_cont.32210:
	lw		x5, -16(x2)	# 1290
	mul		x6, x30, x5	# 1290
	lw		x7, -12(x2)	# 1290
	add		x6, x7, x6	# 1290
	sw		x4, 0(x6)	# 1290
beq_cont.32178:
	lw		x4, -8(x2)	# 1296
	sub		x5, x5, x4	# 1296
	lw		x4, 0(x2)	# 1296
	lw		x29, -4(x2)	# 1296
	lw		x31, 0(x29)	# 1296
	jalr	x0, x31, 0	# 1296
setup_startp_constants.2806.17761:
	lw		x6, 12(x29)	# 1309
	lw		x7, 8(x29)	# 1309
	lw		x8, 4(x29)	# 1309
	ble		x7, x5, ble.32220	# 1309
	jalr	x0, x1, 0	# 1324
ble.32220:
	mul		x9, x30, x5	# 1310
	addi	x9, x9, 60048	# 1310
	lw		x9, 0(x9)	# 1310
	lw		x10, 40(x9)	# 562
	lw		x11, 4(x9)	# 367
	mul		x12, x30, x7	# 1313
	add		x12, x4, x12	# 1313
	flw		f1, 0(x12)	# 1313
	lw		x12, 20(x9)	# 445
	mul		x13, x30, x7	# 450
	add		x12, x12, x13	# 450
	flw		f2, 0(x12)	# 450
	fsub	f1, f1, f2	# 1313
	mul		x12, x30, x7	# 1313
	add		x12, x10, x12	# 1313
	fsw		f1, 0(x12)	# 1313
	mul		x12, x30, x8	# 1314
	add		x12, x4, x12	# 1314
	flw		f1, 0(x12)	# 1314
	lw		x12, 20(x9)	# 455
	mul		x13, x30, x8	# 460
	add		x12, x12, x13	# 460
	flw		f2, 0(x12)	# 460
	fsub	f1, f1, f2	# 1314
	mul		x12, x30, x8	# 1314
	add		x12, x10, x12	# 1314
	fsw		f1, 0(x12)	# 1314
	mul		x12, x30, x6	# 1315
	add		x12, x4, x12	# 1315
	flw		f1, 0(x12)	# 1315
	lw		x12, 20(x9)	# 465
	mul		x13, x30, x6	# 470
	add		x12, x12, x13	# 470
	flw		f2, 0(x12)	# 470
	fsub	f1, f1, f2	# 1315
	mul		x12, x30, x6	# 1315
	add		x12, x10, x12	# 1315
	fsw		f1, 0(x12)	# 1315
	beq		x11, x6, beq.32223	# 1316
	addi	x12, x0, 2	# 1319
	ble		x11, x12, ble_cont.32224	# 1319
	addi	x12, x0, 0	# 1320
	mul		x12, x30, x12	# 1320
	add		x12, x10, x12	# 1320
	flw		f1, 0(x12)	# 1320
	addi	x12, x0, 1	# 1320
	mul		x12, x30, x12	# 1320
	add		x12, x10, x12	# 1320
	flw		f2, 0(x12)	# 1320
	addi	x12, x0, 2	# 1320
	mul		x12, x30, x12	# 1320
	add		x12, x10, x12	# 1320
	flw		f3, 0(x12)	# 1320
	fmul	f4, f1, f1	# 127
	lw		x12, 16(x9)	# 405
	mul		x13, x30, x7	# 410
	add		x12, x12, x13	# 410
	flw		f5, 0(x12)	# 410
	fmul	f4, f4, f5	# 981
	fmul	f5, f2, f2	# 127
	lw		x12, 16(x9)	# 415
	mul		x13, x30, x8	# 420
	add		x12, x12, x13	# 420
	flw		f6, 0(x12)	# 420
	fmul	f5, f5, f6	# 981
	fadd	f4, f4, f5	# 981
	fmul	f5, f3, f3	# 127
	lw		x12, 16(x9)	# 425
	mul		x13, x30, x6	# 430
	add		x12, x12, x13	# 430
	flw		f6, 0(x12)	# 430
	fmul	f5, f5, f6	# 981
	fadd	f4, f4, f5	# 981
	lw		x12, 12(x9)	# 396
	addi	x13, x0, 0	# 983
	beq		x12, x13, beq.32226	# 983
	fmul	f5, f2, f3	# 987
	lw		x12, 36(x9)	# 525
	mul		x7, x30, x7	# 530
	add		x7, x12, x7	# 530
	flw		f6, 0(x7)	# 530
	fmul	f5, f5, f6	# 987
	fadd	f4, f4, f5	# 986
	fmul	f3, f3, f1	# 988
	lw		x7, 36(x9)	# 535
	mul		x12, x30, x8	# 540
	add		x7, x7, x12	# 540
	flw		f5, 0(x7)	# 540
	fmul	f3, f3, f5	# 988
	fadd	f3, f4, f3	# 986
	fmul	f1, f1, f2	# 989
	lw		x7, 36(x9)	# 545
	mul		x6, x30, x6	# 550
	add		x6, x7, x6	# 550
	flw		f2, 0(x6)	# 550
	fmul	f1, f1, f2	# 989
	fadd	f1, f3, f1	# 986
	jal		x0, beq_cont.32225	# 983
beq.32226:
	fadd	f1, f0, f4	# 984
beq_cont.32225:
	addi	x6, x0, 3	# 1321
	addi	x7, x0, 3	# 1321
	beq		x11, x7, beq.32228	# 1321
	jal		x0, beq_cont.32227	# 1321
beq.32228:
	fadd	f2, f0, f16	# 1321
	fsub	f1, f1, f2	# 1321
beq_cont.32227:
	mul		x6, x30, x6	# 1321
	add		x6, x10, x6	# 1321
	fsw		f1, 0(x6)	# 1321
ble_cont.32224:
	jal		x0, beq_cont.32222	# 1316
beq.32223:
	addi	x6, x0, 3	# 1317
	lw		x7, 16(x9)	# 435
	addi	x9, x0, 0	# 1318
	mul		x9, x30, x9	# 1318
	add		x9, x10, x9	# 1318
	flw		f1, 0(x9)	# 1318
	addi	x9, x0, 1	# 1318
	mul		x9, x30, x9	# 1318
	add		x9, x10, x9	# 1318
	flw		f2, 0(x9)	# 1318
	addi	x9, x0, 2	# 1318
	mul		x9, x30, x9	# 1318
	add		x9, x10, x9	# 1318
	flw		f3, 0(x9)	# 1318
	addi	x9, x0, 0	# 311
	mul		x9, x30, x9	# 311
	add		x9, x7, x9	# 311
	flw		f4, 0(x9)	# 311
	fmul	f1, f4, f1	# 311
	addi	x9, x0, 1	# 311
	mul		x9, x30, x9	# 311
	add		x9, x7, x9	# 311
	flw		f4, 0(x9)	# 311
	fmul	f2, f4, f2	# 311
	fadd	f1, f1, f2	# 311
	addi	x9, x0, 2	# 311
	mul		x9, x30, x9	# 311
	add		x7, x7, x9	# 311
	flw		f2, 0(x7)	# 311
	fmul	f2, f2, f3	# 311
	fadd	f1, f1, f2	# 311
	mul		x6, x30, x6	# 1317
	add		x6, x10, x6	# 1317
	fsw		f1, 0(x6)	# 1317
beq_cont.32222:
	sub		x5, x5, x8	# 1323
	lw		x31, 0(x29)	# 1323
	jalr	x0, x31, 0	# 1323
check_all_inside.2831.17764:
	lw		x6, 24(x29)	# 1378
	lw		x7, 20(x29)	# 1378
	lw		x8, 16(x29)	# 1378
	lw		x9, 12(x29)	# 1378
	lw		x10, 8(x29)	# 1378
	flw		f4, 4(x29)	# 1378
	mul		x11, x30, x4	# 1378
	add		x11, x5, x11	# 1378
	lw		x11, 0(x11)	# 1378
	beq		x11, x7, beq.32229	# 1379
	mul		x7, x30, x11	# 1382
	addi	x7, x7, 60048	# 1382
	lw		x7, 0(x7)	# 1382
	lw		x11, 20(x7)	# 445
	mul		x12, x30, x9	# 450
	add		x11, x11, x12	# 450
	flw		f5, 0(x11)	# 450
	fsub	f5, f1, f5	# 1364
	lw		x11, 20(x7)	# 455
	mul		x12, x30, x10	# 460
	add		x11, x11, x12	# 460
	flw		f6, 0(x11)	# 460
	fsub	f6, f2, f6	# 1365
	lw		x11, 20(x7)	# 465
	mul		x12, x30, x6	# 470
	add		x11, x11, x12	# 470
	flw		f7, 0(x11)	# 470
	fsub	f7, f3, f7	# 1366
	lw		x11, 4(x7)	# 367
	beq		x11, x10, beq.32231	# 1368
	beq		x11, x6, beq.32233	# 1370
	fmul	f8, f5, f5	# 127
	lw		x11, 16(x7)	# 405
	mul		x12, x30, x9	# 410
	add		x11, x11, x12	# 410
	flw		f9, 0(x11)	# 410
	fmul	f8, f8, f9	# 981
	fmul	f9, f6, f6	# 127
	lw		x11, 16(x7)	# 415
	mul		x12, x30, x10	# 420
	add		x11, x11, x12	# 420
	flw		f10, 0(x11)	# 420
	fmul	f9, f9, f10	# 981
	fadd	f8, f8, f9	# 981
	fmul	f9, f7, f7	# 127
	lw		x11, 16(x7)	# 425
	mul		x12, x30, x6	# 430
	add		x11, x11, x12	# 430
	flw		f10, 0(x11)	# 430
	fmul	f9, f9, f10	# 981
	fadd	f8, f8, f9	# 981
	lw		x11, 12(x7)	# 396
	beq		x11, x9, beq.32235	# 983
	fmul	f9, f6, f7	# 987
	lw		x11, 36(x7)	# 525
	mul		x12, x30, x9	# 530
	add		x11, x11, x12	# 530
	flw		f10, 0(x11)	# 530
	fmul	f9, f9, f10	# 987
	fadd	f8, f8, f9	# 986
	fmul	f7, f7, f5	# 988
	lw		x11, 36(x7)	# 535
	mul		x12, x30, x10	# 540
	add		x11, x11, x12	# 540
	flw		f9, 0(x11)	# 540
	fmul	f7, f7, f9	# 988
	fadd	f7, f8, f7	# 986
	fmul	f5, f5, f6	# 989
	lw		x11, 36(x7)	# 545
	mul		x6, x30, x6	# 550
	add		x6, x11, x6	# 550
	flw		f6, 0(x6)	# 550
	fmul	f5, f5, f6	# 989
	fadd	f5, f7, f5	# 986
	jal		x0, beq_cont.32234	# 983
beq.32235:
	fadd	f5, f0, f8	# 984
beq_cont.32234:
	lw		x6, 4(x7)	# 367
	beq		x6, x8, beq.32237	# 1358
	jal		x0, beq_cont.32236	# 1358
beq.32237:
	fadd	f6, f0, f16	# 1358
	fsub	f5, f5, f6	# 1358
beq_cont.32236:
	lw		x6, 24(x7)	# 387
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.32239	# 122
	addi	x7, x0, 0	# 122
	jal		x0, fle_cont.32238	# 122
fle_else.32239:
	addi	x7, x0, 1	# 122
fle_cont.32238:
	beq		x6, x9, beq.32241	# 218
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.32243	# 122
	addi	x6, x0, 1	# 218
	jal		x0, fle_cont.32242	# 122
fle_else.32243:
	addi	x6, x0, 0	# 218
fle_cont.32242:
	jal		x0, beq_cont.32240	# 218
beq.32241:
	addi	x6, x7, 0	# 218
beq_cont.32240:
	beq		x6, x9, beq.32245	# 1359
	addi	x6, x0, 0	# 1359
	jal		x0, beq_cont.32244	# 1359
beq.32245:
	addi	x6, x0, 1	# 1359
beq_cont.32244:
	jal		x0, beq_cont.32232	# 1370
beq.32233:
	lw		x8, 16(x7)	# 435
	mul		x11, x30, x9	# 311
	add		x11, x8, x11	# 311
	flw		f8, 0(x11)	# 311
	fmul	f5, f8, f5	# 311
	mul		x11, x30, x10	# 311
	add		x11, x8, x11	# 311
	flw		f8, 0(x11)	# 311
	fmul	f6, f8, f6	# 311
	fadd	f5, f5, f6	# 311
	mul		x6, x30, x6	# 311
	add		x6, x8, x6	# 311
	flw		f6, 0(x6)	# 311
	fmul	f6, f6, f7	# 311
	fadd	f5, f5, f6	# 311
	lw		x6, 24(x7)	# 387
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.32247	# 122
	addi	x7, x0, 0	# 122
	jal		x0, fle_cont.32246	# 122
fle_else.32247:
	addi	x7, x0, 1	# 122
fle_cont.32246:
	beq		x6, x9, beq.32249	# 218
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.32251	# 122
	addi	x6, x0, 1	# 218
	jal		x0, fle_cont.32250	# 122
fle_else.32251:
	addi	x6, x0, 0	# 218
fle_cont.32250:
	jal		x0, beq_cont.32248	# 218
beq.32249:
	addi	x6, x7, 0	# 218
beq_cont.32248:
	beq		x6, x9, beq.32253	# 1352
	addi	x6, x0, 0	# 1352
	jal		x0, beq_cont.32252	# 1352
beq.32253:
	addi	x6, x0, 1	# 1352
beq_cont.32252:
beq_cont.32232:
	jal		x0, beq_cont.32230	# 1368
beq.32231:
	fle		x31, f5, f4	# 124
	beq		x31, x0, fle_cont.32254	# 124
	fsub	f5, f0, f5	# 124
fle_cont.32254:
	lw		x8, 16(x7)	# 405
	mul		x11, x30, x9	# 410
	add		x8, x8, x11	# 410
	flw		f8, 0(x8)	# 410
	fle		x31, f8, f5	# 125
	beq		x31, x0, fle_else.32256	# 125
	addi	x6, x0, 0	# 1345
	jal		x0, fle_cont.32255	# 125
fle_else.32256:
	fle		x31, f6, f4	# 124
	beq		x31, x0, fle_else.32258	# 124
	fsub	f5, f0, f6	# 124
	jal		x0, fle_cont.32257	# 124
fle_else.32258:
	fadd	f5, f0, f6	# 124
fle_cont.32257:
	lw		x8, 16(x7)	# 415
	mul		x11, x30, x10	# 420
	add		x8, x8, x11	# 420
	flw		f6, 0(x8)	# 420
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32260	# 125
	addi	x6, x0, 0	# 1344
	jal		x0, fle_cont.32259	# 125
fle_else.32260:
	fle		x31, f7, f4	# 124
	beq		x31, x0, fle_else.32262	# 124
	fsub	f4, f0, f7	# 124
	jal		x0, fle_cont.32261	# 124
fle_else.32262:
	fadd	f4, f0, f7	# 124
fle_cont.32261:
	lw		x8, 16(x7)	# 425
	mul		x6, x30, x6	# 430
	add		x6, x8, x6	# 430
	flw		f5, 0(x6)	# 430
	fle		x31, f5, f4	# 125
	beq		x31, x0, fle_else.32264	# 125
	addi	x6, x0, 0	# 125
	jal		x0, fle_cont.32263	# 125
fle_else.32264:
	addi	x6, x0, 1	# 125
fle_cont.32263:
fle_cont.32259:
fle_cont.32255:
	beq		x6, x9, beq.32266	# 1340
	lw		x6, 24(x7)	# 387
	jal		x0, beq_cont.32265	# 1340
beq.32266:
	lw		x6, 24(x7)	# 387
	beq		x6, x9, beq.32268	# 1346
	addi	x6, x0, 0	# 1346
	jal		x0, beq_cont.32267	# 1346
beq.32268:
	addi	x6, x0, 1	# 1346
beq_cont.32267:
beq_cont.32265:
beq_cont.32230:
	beq		x6, x9, beq.32269	# 1382
	addi	x4, x0, 0	# 1383
	jalr	x0, x1, 0	# 1383
beq.32269:
	add		x4, x4, x10	# 1385
	lw		x31, 0(x29)	# 1385
	jalr	x0, x31, 0	# 1385
beq.32229:
	addi	x4, x0, 1	# 1380
	jalr	x0, x1, 0	# 1380
shadow_check_and_group.2837.17770:
	lw		x6, 32(x29)	# 1398
	lw		x7, 28(x29)	# 1398
	lw		x8, 24(x29)	# 1398
	lw		x9, 20(x29)	# 1398
	lw		x10, 16(x29)	# 1398
	lw		x11, 12(x29)	# 1398
	lw		x12, 8(x29)	# 1398
	flw		f1, 4(x29)	# 1398
	mul		x13, x30, x4	# 1398
	add		x13, x5, x13	# 1398
	lw		x13, 0(x13)	# 1398
	beq		x13, x9, beq.32270	# 1398
	mul		x9, x30, x13	# 1140
	addi	x9, x9, 60048	# 1140
	lw		x9, 0(x9)	# 1140
	mul		x14, x30, x11	# 1141
	addi	x14, x14, 60552	# 1141
	flw		f2, 0(x14)	# 1141
	lw		x14, 20(x9)	# 445
	mul		x15, x30, x11	# 450
	add		x14, x14, x15	# 450
	flw		f3, 0(x14)	# 450
	fsub	f2, f2, f3	# 1141
	mul		x14, x30, x12	# 1142
	addi	x14, x14, 60552	# 1142
	flw		f3, 0(x14)	# 1142
	lw		x14, 20(x9)	# 455
	mul		x15, x30, x12	# 460
	add		x14, x14, x15	# 460
	flw		f4, 0(x14)	# 460
	fsub	f3, f3, f4	# 1142
	mul		x14, x30, x8	# 1143
	addi	x14, x14, 60552	# 1143
	flw		f4, 0(x14)	# 1143
	lw		x14, 20(x9)	# 465
	mul		x15, x30, x8	# 470
	add		x14, x14, x15	# 470
	flw		f5, 0(x14)	# 470
	fsub	f4, f4, f5	# 1143
	mul		x14, x30, x13	# 1145
	addi	x14, x14, 60748	# 1145
	lw		x14, 0(x14)	# 1145
	lw		x15, 4(x9)	# 367
	beq		x15, x12, beq.32272	# 1147
	addi	x7, x0, 2	# 1149
	beq		x15, x7, beq.32274	# 1149
	mul		x7, x30, x11	# 1121
	add		x7, x14, x7	# 1121
	flw		f5, 0(x7)	# 1121
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32276	# 120
	addi	x7, x0, 0	# 1123
	jal		x0, feq_cont.32275	# 120
feq_else.32276:
	mul		x7, x30, x12	# 1125
	add		x7, x14, x7	# 1125
	flw		f6, 0(x7)	# 1125
	fmul	f6, f6, f2	# 1125
	mul		x7, x30, x8	# 1125
	add		x7, x14, x7	# 1125
	flw		f7, 0(x7)	# 1125
	fmul	f7, f7, f3	# 1125
	fadd	f6, f6, f7	# 1125
	mul		x7, x30, x10	# 1125
	add		x7, x14, x7	# 1125
	flw		f7, 0(x7)	# 1125
	fmul	f7, f7, f4	# 1125
	fadd	f6, f6, f7	# 1125
	fmul	f7, f2, f2	# 127
	lw		x7, 16(x9)	# 405
	mul		x15, x30, x11	# 410
	add		x7, x7, x15	# 410
	flw		f8, 0(x7)	# 410
	fmul	f7, f7, f8	# 981
	fmul	f8, f3, f3	# 127
	lw		x7, 16(x9)	# 415
	mul		x15, x30, x12	# 420
	add		x7, x7, x15	# 420
	flw		f9, 0(x7)	# 420
	fmul	f8, f8, f9	# 981
	fadd	f7, f7, f8	# 981
	fmul	f8, f4, f4	# 127
	lw		x7, 16(x9)	# 425
	mul		x15, x30, x8	# 430
	add		x7, x7, x15	# 430
	flw		f9, 0(x7)	# 430
	fmul	f8, f8, f9	# 981
	fadd	f7, f7, f8	# 981
	lw		x7, 12(x9)	# 396
	beq		x7, x11, beq.32278	# 983
	fmul	f8, f3, f4	# 987
	lw		x7, 36(x9)	# 525
	mul		x15, x30, x11	# 530
	add		x7, x7, x15	# 530
	flw		f9, 0(x7)	# 530
	fmul	f8, f8, f9	# 987
	fadd	f7, f7, f8	# 986
	fmul	f4, f4, f2	# 988
	lw		x7, 36(x9)	# 535
	mul		x15, x30, x12	# 540
	add		x7, x7, x15	# 540
	flw		f8, 0(x7)	# 540
	fmul	f4, f4, f8	# 988
	fadd	f4, f7, f4	# 986
	fmul	f2, f2, f3	# 989
	lw		x7, 36(x9)	# 545
	mul		x15, x30, x8	# 550
	add		x7, x7, x15	# 550
	flw		f3, 0(x7)	# 550
	fmul	f2, f2, f3	# 989
	fadd	f2, f4, f2	# 986
	jal		x0, beq_cont.32277	# 983
beq.32278:
	fadd	f2, f0, f7	# 984
beq_cont.32277:
	lw		x7, 4(x9)	# 367
	beq		x7, x10, beq.32280	# 1127
	jal		x0, beq_cont.32279	# 1127
beq.32280:
	fadd	f3, f0, f16	# 1127
	fsub	f2, f2, f3	# 1127
beq_cont.32279:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1128
	fsub	f2, f3, f2	# 1128
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.32282	# 121
	addi	x7, x0, 0	# 1135
	jal		x0, fle_cont.32281	# 121
fle_else.32282:
	lw		x7, 24(x9)	# 387
	beq		x7, x11, beq.32284	# 1130
	addi	x7, x0, 0	# 1131
	fsqrt	f1, f2	# 1131
	fadd	f1, f6, f1	# 1131
	addi	x9, x0, 4	# 1131
	mul		x9, x30, x9	# 1131
	add		x9, x14, x9	# 1131
	flw		f2, 0(x9)	# 1131
	fmul	f1, f1, f2	# 1131
	mul		x7, x30, x7	# 1131
	addi	x7, x7, 60540	# 1131
	fsw		f1, 0(x7)	# 1131
	jal		x0, beq_cont.32283	# 1130
beq.32284:
	addi	x7, x0, 0	# 1133
	fsqrt	f1, f2	# 1133
	fsub	f1, f6, f1	# 1133
	addi	x9, x0, 4	# 1133
	mul		x9, x30, x9	# 1133
	add		x9, x14, x9	# 1133
	flw		f2, 0(x9)	# 1133
	fmul	f1, f1, f2	# 1133
	mul		x7, x30, x7	# 1133
	addi	x7, x7, 60540	# 1133
	fsw		f1, 0(x7)	# 1133
beq_cont.32283:
	addi	x7, x0, 1	# 1134
fle_cont.32281:
feq_cont.32275:
	jal		x0, beq_cont.32273	# 1149
beq.32274:
	mul		x7, x30, x11	# 1111
	add		x7, x14, x7	# 1111
	flw		f5, 0(x7)	# 1111
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32286	# 122
	addi	x7, x0, 0	# 1115
	jal		x0, fle_cont.32285	# 122
fle_else.32286:
	mul		x7, x30, x12	# 1113
	add		x7, x14, x7	# 1113
	flw		f1, 0(x7)	# 1113
	fmul	f1, f1, f2	# 1113
	mul		x7, x30, x8	# 1113
	add		x7, x14, x7	# 1113
	flw		f2, 0(x7)	# 1113
	fmul	f2, f2, f3	# 1113
	fadd	f1, f1, f2	# 1113
	mul		x7, x30, x10	# 1113
	add		x7, x14, x7	# 1113
	flw		f2, 0(x7)	# 1113
	fmul	f2, f2, f4	# 1113
	fadd	f1, f1, f2	# 1113
	mul		x7, x30, x11	# 1112
	addi	x7, x7, 60540	# 1112
	fsw		f1, 0(x7)	# 1112
	addi	x7, x0, 1	# 1114
fle_cont.32285:
beq_cont.32273:
	jal		x0, beq_cont.32271	# 1147
beq.32272:
	mul		x15, x30, x11	# 1078
	add		x15, x14, x15	# 1078
	flw		f5, 0(x15)	# 1078
	fsub	f5, f5, f2	# 1078
	mul		x15, x30, x12	# 1078
	add		x15, x14, x15	# 1078
	flw		f6, 0(x15)	# 1078
	fmul	f5, f5, f6	# 1078
	mul		x15, x30, x12	# 1080
	addi	x15, x15, 60736	# 1080
	flw		f6, 0(x15)	# 1080
	fmul	f6, f5, f6	# 1080
	fadd	f6, f6, f3	# 1080
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32287	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32287:
	lw		x15, 16(x9)	# 415
	mul		x16, x30, x12	# 420
	add		x15, x15, x16	# 420
	flw		f7, 0(x15)	# 420
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32289	# 125
	addi	x15, x0, 0	# 1084
	jal		x0, fle_cont.32288	# 125
fle_else.32289:
	mul		x15, x30, x8	# 1081
	addi	x15, x15, 60736	# 1081
	flw		f6, 0(x15)	# 1081
	fmul	f6, f5, f6	# 1081
	fadd	f6, f6, f4	# 1081
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32290	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32290:
	lw		x15, 16(x9)	# 425
	mul		x16, x30, x8	# 430
	add		x15, x15, x16	# 430
	flw		f7, 0(x15)	# 430
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32292	# 125
	addi	x15, x0, 0	# 1083
	jal		x0, fle_cont.32291	# 125
fle_else.32292:
	mul		x15, x30, x12	# 1082
	add		x15, x14, x15	# 1082
	flw		f6, 0(x15)	# 1082
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.32294	# 120
	addi	x15, x0, 0	# 1082
	jal		x0, feq_cont.32293	# 120
feq_else.32294:
	addi	x15, x0, 1	# 1082
feq_cont.32293:
fle_cont.32291:
fle_cont.32288:
	beq		x15, x11, beq.32296	# 1079
	mul		x7, x30, x11	# 1086
	addi	x7, x7, 60540	# 1086
	fsw		f5, 0(x7)	# 1086
	addi	x7, x0, 1	# 1086
	jal		x0, beq_cont.32295	# 1079
beq.32296:
	mul		x15, x30, x8	# 1087
	add		x15, x14, x15	# 1087
	flw		f5, 0(x15)	# 1087
	fsub	f5, f5, f3	# 1087
	mul		x15, x30, x10	# 1087
	add		x15, x14, x15	# 1087
	flw		f6, 0(x15)	# 1087
	fmul	f5, f5, f6	# 1087
	mul		x15, x30, x11	# 1089
	addi	x15, x15, 60736	# 1089
	flw		f6, 0(x15)	# 1089
	fmul	f7, f5, f6	# 1089
	fadd	f7, f7, f2	# 1089
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.32297	# 124
	fsub	f7, f0, f7	# 124
fle_cont.32297:
	lw		x15, 16(x9)	# 405
	mul		x16, x30, x11	# 410
	add		x15, x15, x16	# 410
	flw		f8, 0(x15)	# 410
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32299	# 125
	addi	x10, x0, 0	# 1093
	jal		x0, fle_cont.32298	# 125
fle_else.32299:
	mul		x15, x30, x8	# 1090
	addi	x15, x15, 60736	# 1090
	flw		f7, 0(x15)	# 1090
	fmul	f7, f5, f7	# 1090
	fadd	f7, f7, f4	# 1090
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.32300	# 124
	fsub	f7, f0, f7	# 124
fle_cont.32300:
	lw		x15, 16(x9)	# 425
	mul		x16, x30, x8	# 430
	add		x15, x15, x16	# 430
	flw		f8, 0(x15)	# 430
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32302	# 125
	addi	x10, x0, 0	# 1092
	jal		x0, fle_cont.32301	# 125
fle_else.32302:
	mul		x10, x30, x10	# 1091
	add		x10, x14, x10	# 1091
	flw		f7, 0(x10)	# 1091
	feq		x31, f7, f1	# 120
	beq		x31, x0, feq_else.32304	# 120
	addi	x10, x0, 0	# 1091
	jal		x0, feq_cont.32303	# 120
feq_else.32304:
	addi	x10, x0, 1	# 1091
feq_cont.32303:
fle_cont.32301:
fle_cont.32298:
	beq		x10, x11, beq.32306	# 1088
	mul		x7, x30, x11	# 1095
	addi	x7, x7, 60540	# 1095
	fsw		f5, 0(x7)	# 1095
	addi	x7, x0, 2	# 1095
	jal		x0, beq_cont.32305	# 1088
beq.32306:
	addi	x10, x0, 4	# 1096
	mul		x10, x30, x10	# 1096
	add		x10, x14, x10	# 1096
	flw		f5, 0(x10)	# 1096
	fsub	f4, f5, f4	# 1096
	mul		x10, x30, x7	# 1096
	add		x10, x14, x10	# 1096
	flw		f5, 0(x10)	# 1096
	fmul	f4, f4, f5	# 1096
	fmul	f5, f4, f6	# 1098
	fadd	f2, f5, f2	# 1098
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32307	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32307:
	lw		x10, 16(x9)	# 405
	mul		x15, x30, x11	# 410
	add		x10, x10, x15	# 410
	flw		f5, 0(x10)	# 410
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.32309	# 125
	addi	x7, x0, 0	# 1102
	jal		x0, fle_cont.32308	# 125
fle_else.32309:
	mul		x10, x30, x12	# 1099
	addi	x10, x10, 60736	# 1099
	flw		f2, 0(x10)	# 1099
	fmul	f2, f4, f2	# 1099
	fadd	f2, f2, f3	# 1099
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32310	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32310:
	lw		x9, 16(x9)	# 415
	mul		x10, x30, x12	# 420
	add		x9, x9, x10	# 420
	flw		f3, 0(x9)	# 420
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32312	# 125
	addi	x7, x0, 0	# 1101
	jal		x0, fle_cont.32311	# 125
fle_else.32312:
	mul		x7, x30, x7	# 1100
	add		x7, x14, x7	# 1100
	flw		f2, 0(x7)	# 1100
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.32314	# 120
	addi	x7, x0, 0	# 1100
	jal		x0, feq_cont.32313	# 120
feq_else.32314:
	addi	x7, x0, 1	# 1100
feq_cont.32313:
fle_cont.32311:
fle_cont.32308:
	beq		x7, x11, beq.32316	# 1097
	mul		x7, x30, x11	# 1104
	addi	x7, x7, 60540	# 1104
	fsw		f4, 0(x7)	# 1104
	addi	x7, x0, 3	# 1104
	jal		x0, beq_cont.32315	# 1097
beq.32316:
	addi	x7, x0, 0	# 1106
beq_cont.32315:
beq_cont.32305:
beq_cont.32295:
beq_cont.32271:
	mul		x9, x30, x11	# 1403
	addi	x9, x9, 60540	# 1403
	flw		f1, 0(x9)	# 1403
	beq		x7, x11, beq.32318	# 1404
	lui		x7, %hi(l.26726)	# 1404
	ori		x7, x0, %lo(l.26726)	# 1404
	flw		f2, 0(x7)	# 1404
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32320	# 125
	addi	x7, x0, 0	# 125
	jal		x0, fle_cont.32319	# 125
fle_else.32320:
	addi	x7, x0, 1	# 125
fle_cont.32319:
	jal		x0, beq_cont.32317	# 1404
beq.32318:
	addi	x7, x0, 0	# 1404
beq_cont.32317:
	beq		x7, x11, beq.32321	# 1404
	lui		x7, %hi(l.26728)	# 1407
	ori		x7, x0, %lo(l.26728)	# 1407
	flw		f2, 0(x7)	# 1407
	fadd	f1, f1, f2	# 1407
	mul		x7, x30, x11	# 1408
	addi	x7, x7, 60312	# 1408
	flw		f2, 0(x7)	# 1408
	fmul	f2, f2, f1	# 1408
	mul		x7, x30, x11	# 1408
	addi	x7, x7, 60552	# 1408
	flw		f3, 0(x7)	# 1408
	fadd	f2, f2, f3	# 1408
	mul		x7, x30, x12	# 1409
	addi	x7, x7, 60312	# 1409
	flw		f3, 0(x7)	# 1409
	fmul	f3, f3, f1	# 1409
	mul		x7, x30, x12	# 1409
	addi	x7, x7, 60552	# 1409
	flw		f4, 0(x7)	# 1409
	fadd	f3, f3, f4	# 1409
	mul		x7, x30, x8	# 1410
	addi	x7, x7, 60312	# 1410
	flw		f4, 0(x7)	# 1410
	fmul	f1, f4, f1	# 1410
	mul		x7, x30, x8	# 1410
	addi	x7, x7, 60552	# 1410
	flw		f4, 0(x7)	# 1410
	fadd	f1, f1, f4	# 1410
	sw		x5, 0(x2)	# 1411
	sw		x29, -4(x2)	# 1411
	sw		x12, -8(x2)	# 1411
	sw		x4, -12(x2)	# 1411
	sw		x11, -16(x2)	# 1411
	addi	x4, x11, 0
	addi	x29, x6, 0
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -20(x2)	# 1411
	addi	x2, x2, -24	# 1411
	lw		x31, 0(x29)	# 1411
	jalr	x1, x31, 0	# 1411
	addi	x2, x2, 24	# 1411
	lw		x1, -20(x2)	# 1411
	lw		x5, -16(x2)	# 1411
	beq		x4, x5, beq.32322	# 1411
	addi	x4, x0, 1	# 1412
	jalr	x0, x1, 0	# 1412
beq.32322:
	lw		x4, -8(x2)	# 1414
	lw		x5, -12(x2)	# 1414
	add		x4, x5, x4	# 1414
	lw		x5, 0(x2)	# 1414
	lw		x29, -4(x2)	# 1414
	lw		x31, 0(x29)	# 1414
	jalr	x0, x31, 0	# 1414
beq.32321:
	mul		x6, x30, x13	# 1420
	addi	x6, x6, 60048	# 1420
	lw		x6, 0(x6)	# 1420
	lw		x6, 24(x6)	# 387
	beq		x6, x11, beq.32323	# 1420
	add		x4, x4, x12	# 1421
	lw		x31, 0(x29)	# 1421
	jalr	x0, x31, 0	# 1421
beq.32323:
	addi	x4, x0, 0	# 1423
	jalr	x0, x1, 0	# 1423
beq.32270:
	addi	x4, x0, 0	# 1399
	jalr	x0, x1, 0	# 1399
shadow_check_one_or_group.2840.17773:
	lw		x6, 16(x29)	# 1428
	lw		x7, 12(x29)	# 1428
	lw		x8, 8(x29)	# 1428
	lw		x9, 4(x29)	# 1428
	mul		x10, x30, x4	# 1428
	add		x10, x5, x10	# 1428
	lw		x10, 0(x10)	# 1428
	beq		x10, x7, beq.32324	# 1429
	mul		x7, x30, x10	# 1432
	addi	x7, x7, 60332	# 1432
	lw		x7, 0(x7)	# 1432
	sw		x5, 0(x2)	# 1433
	sw		x29, -4(x2)	# 1433
	sw		x9, -8(x2)	# 1433
	sw		x4, -12(x2)	# 1433
	sw		x8, -16(x2)	# 1433
	addi	x5, x7, 0
	addi	x4, x8, 0
	addi	x29, x6, 0
	sw		x1, -20(x2)	# 1433
	addi	x2, x2, -24	# 1433
	lw		x31, 0(x29)	# 1433
	jalr	x1, x31, 0	# 1433
	addi	x2, x2, 24	# 1433
	lw		x1, -20(x2)	# 1433
	lw		x5, -16(x2)	# 1434
	beq		x4, x5, beq.32325	# 1434
	addi	x4, x0, 1	# 1435
	jalr	x0, x1, 0	# 1435
beq.32325:
	lw		x4, -8(x2)	# 1437
	lw		x5, -12(x2)	# 1437
	add		x4, x5, x4	# 1437
	lw		x5, 0(x2)	# 1437
	lw		x29, -4(x2)	# 1437
	lw		x31, 0(x29)	# 1437
	jalr	x0, x31, 0	# 1437
beq.32324:
	addi	x4, x0, 0	# 1430
	jalr	x0, x1, 0	# 1430
shadow_check_one_or_matrix.2843.17776:
	lw		x6, 32(x29)	# 1443
	lw		x7, 28(x29)	# 1443
	lw		x8, 24(x29)	# 1443
	lw		x9, 20(x29)	# 1443
	lw		x10, 16(x29)	# 1443
	lw		x11, 12(x29)	# 1443
	lw		x12, 8(x29)	# 1443
	flw		f1, 4(x29)	# 1443
	mul		x13, x30, x4	# 1443
	add		x13, x5, x13	# 1443
	lw		x13, 0(x13)	# 1443
	mul		x14, x30, x11	# 1444
	add		x14, x13, x14	# 1444
	lw		x14, 0(x14)	# 1444
	beq		x14, x9, beq.32326	# 1445
	addi	x9, x0, 99	# 1449
	sw		x13, 0(x2)	# 1449
	sw		x6, -4(x2)	# 1449
	sw		x5, -8(x2)	# 1449
	sw		x29, -12(x2)	# 1449
	sw		x12, -16(x2)	# 1449
	sw		x4, -20(x2)	# 1449
	sw		x11, -24(x2)	# 1449
	beq		x14, x9, beq.32328	# 1449
	mul		x9, x30, x14	# 1140
	addi	x9, x9, 60048	# 1140
	lw		x9, 0(x9)	# 1140
	addi	x15, x0, 0	# 1141
	mul		x15, x30, x15	# 1141
	addi	x15, x15, 60552	# 1141
	flw		f2, 0(x15)	# 1141
	lw		x15, 20(x9)	# 445
	mul		x16, x30, x11	# 450
	add		x15, x15, x16	# 450
	flw		f3, 0(x15)	# 450
	fsub	f2, f2, f3	# 1141
	addi	x15, x0, 1	# 1142
	mul		x15, x30, x15	# 1142
	addi	x15, x15, 60552	# 1142
	flw		f3, 0(x15)	# 1142
	lw		x15, 20(x9)	# 455
	mul		x16, x30, x12	# 460
	add		x15, x15, x16	# 460
	flw		f4, 0(x15)	# 460
	fsub	f3, f3, f4	# 1142
	addi	x15, x0, 2	# 1143
	mul		x15, x30, x15	# 1143
	addi	x15, x15, 60552	# 1143
	flw		f4, 0(x15)	# 1143
	lw		x15, 20(x9)	# 465
	mul		x16, x30, x8	# 470
	add		x15, x15, x16	# 470
	flw		f5, 0(x15)	# 470
	fsub	f4, f4, f5	# 1143
	mul		x14, x30, x14	# 1145
	addi	x14, x14, 60748	# 1145
	lw		x14, 0(x14)	# 1145
	lw		x15, 4(x9)	# 367
	addi	x16, x0, 1	# 1147
	beq		x15, x16, beq.32330	# 1147
	addi	x7, x0, 2	# 1149
	beq		x15, x7, beq.32332	# 1149
	mul		x7, x30, x11	# 1121
	add		x7, x14, x7	# 1121
	flw		f5, 0(x7)	# 1121
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32334	# 120
	addi	x7, x0, 0	# 1123
	jal		x0, feq_cont.32333	# 120
feq_else.32334:
	mul		x7, x30, x12	# 1125
	add		x7, x14, x7	# 1125
	flw		f6, 0(x7)	# 1125
	fmul	f6, f6, f2	# 1125
	mul		x7, x30, x8	# 1125
	add		x7, x14, x7	# 1125
	flw		f7, 0(x7)	# 1125
	fmul	f7, f7, f3	# 1125
	fadd	f6, f6, f7	# 1125
	mul		x7, x30, x10	# 1125
	add		x7, x14, x7	# 1125
	flw		f7, 0(x7)	# 1125
	fmul	f7, f7, f4	# 1125
	fadd	f6, f6, f7	# 1125
	fmul	f7, f2, f2	# 127
	lw		x7, 16(x9)	# 405
	mul		x15, x30, x11	# 410
	add		x7, x7, x15	# 410
	flw		f8, 0(x7)	# 410
	fmul	f7, f7, f8	# 981
	fmul	f8, f3, f3	# 127
	lw		x7, 16(x9)	# 415
	mul		x15, x30, x12	# 420
	add		x7, x7, x15	# 420
	flw		f9, 0(x7)	# 420
	fmul	f8, f8, f9	# 981
	fadd	f7, f7, f8	# 981
	fmul	f8, f4, f4	# 127
	lw		x7, 16(x9)	# 425
	mul		x15, x30, x8	# 430
	add		x7, x7, x15	# 430
	flw		f9, 0(x7)	# 430
	fmul	f8, f8, f9	# 981
	fadd	f7, f7, f8	# 981
	lw		x7, 12(x9)	# 396
	beq		x7, x11, beq.32336	# 983
	fmul	f8, f3, f4	# 987
	lw		x7, 36(x9)	# 525
	mul		x15, x30, x11	# 530
	add		x7, x7, x15	# 530
	flw		f9, 0(x7)	# 530
	fmul	f8, f8, f9	# 987
	fadd	f7, f7, f8	# 986
	fmul	f4, f4, f2	# 988
	lw		x7, 36(x9)	# 535
	mul		x15, x30, x12	# 540
	add		x7, x7, x15	# 540
	flw		f8, 0(x7)	# 540
	fmul	f4, f4, f8	# 988
	fadd	f4, f7, f4	# 986
	fmul	f2, f2, f3	# 989
	lw		x7, 36(x9)	# 545
	mul		x8, x30, x8	# 550
	add		x7, x7, x8	# 550
	flw		f3, 0(x7)	# 550
	fmul	f2, f2, f3	# 989
	fadd	f2, f4, f2	# 986
	jal		x0, beq_cont.32335	# 983
beq.32336:
	fadd	f2, f0, f7	# 984
beq_cont.32335:
	lw		x7, 4(x9)	# 367
	beq		x7, x10, beq.32338	# 1127
	jal		x0, beq_cont.32337	# 1127
beq.32338:
	fadd	f3, f0, f16	# 1127
	fsub	f2, f2, f3	# 1127
beq_cont.32337:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1128
	fsub	f2, f3, f2	# 1128
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.32340	# 121
	addi	x7, x0, 0	# 1135
	jal		x0, fle_cont.32339	# 121
fle_else.32340:
	lw		x7, 24(x9)	# 387
	beq		x7, x11, beq.32342	# 1130
	addi	x7, x0, 0	# 1131
	fsqrt	f1, f2	# 1131
	fadd	f1, f6, f1	# 1131
	addi	x8, x0, 4	# 1131
	mul		x8, x30, x8	# 1131
	add		x8, x14, x8	# 1131
	flw		f2, 0(x8)	# 1131
	fmul	f1, f1, f2	# 1131
	mul		x7, x30, x7	# 1131
	addi	x7, x7, 60540	# 1131
	fsw		f1, 0(x7)	# 1131
	jal		x0, beq_cont.32341	# 1130
beq.32342:
	addi	x7, x0, 0	# 1133
	fsqrt	f1, f2	# 1133
	fsub	f1, f6, f1	# 1133
	addi	x8, x0, 4	# 1133
	mul		x8, x30, x8	# 1133
	add		x8, x14, x8	# 1133
	flw		f2, 0(x8)	# 1133
	fmul	f1, f1, f2	# 1133
	mul		x7, x30, x7	# 1133
	addi	x7, x7, 60540	# 1133
	fsw		f1, 0(x7)	# 1133
beq_cont.32341:
	addi	x7, x0, 1	# 1134
fle_cont.32339:
feq_cont.32333:
	jal		x0, beq_cont.32331	# 1149
beq.32332:
	mul		x7, x30, x11	# 1111
	add		x7, x14, x7	# 1111
	flw		f5, 0(x7)	# 1111
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32344	# 122
	addi	x7, x0, 0	# 1115
	jal		x0, fle_cont.32343	# 122
fle_else.32344:
	mul		x7, x30, x12	# 1113
	add		x7, x14, x7	# 1113
	flw		f1, 0(x7)	# 1113
	fmul	f1, f1, f2	# 1113
	mul		x7, x30, x8	# 1113
	add		x7, x14, x7	# 1113
	flw		f2, 0(x7)	# 1113
	fmul	f2, f2, f3	# 1113
	fadd	f1, f1, f2	# 1113
	mul		x7, x30, x10	# 1113
	add		x7, x14, x7	# 1113
	flw		f2, 0(x7)	# 1113
	fmul	f2, f2, f4	# 1113
	fadd	f1, f1, f2	# 1113
	mul		x7, x30, x11	# 1112
	addi	x7, x7, 60540	# 1112
	fsw		f1, 0(x7)	# 1112
	addi	x7, x0, 1	# 1114
fle_cont.32343:
beq_cont.32331:
	jal		x0, beq_cont.32329	# 1147
beq.32330:
	mul		x15, x30, x11	# 1078
	add		x15, x14, x15	# 1078
	flw		f5, 0(x15)	# 1078
	fsub	f5, f5, f2	# 1078
	mul		x15, x30, x12	# 1078
	add		x15, x14, x15	# 1078
	flw		f6, 0(x15)	# 1078
	fmul	f5, f5, f6	# 1078
	mul		x15, x30, x12	# 1080
	addi	x15, x15, 60736	# 1080
	flw		f6, 0(x15)	# 1080
	fmul	f6, f5, f6	# 1080
	fadd	f6, f6, f3	# 1080
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32345	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32345:
	lw		x15, 16(x9)	# 415
	mul		x16, x30, x12	# 420
	add		x15, x15, x16	# 420
	flw		f7, 0(x15)	# 420
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32347	# 125
	addi	x15, x0, 0	# 1084
	jal		x0, fle_cont.32346	# 125
fle_else.32347:
	mul		x15, x30, x8	# 1081
	addi	x15, x15, 60736	# 1081
	flw		f6, 0(x15)	# 1081
	fmul	f6, f5, f6	# 1081
	fadd	f6, f6, f4	# 1081
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32348	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32348:
	lw		x15, 16(x9)	# 425
	mul		x16, x30, x8	# 430
	add		x15, x15, x16	# 430
	flw		f7, 0(x15)	# 430
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32350	# 125
	addi	x15, x0, 0	# 1083
	jal		x0, fle_cont.32349	# 125
fle_else.32350:
	mul		x15, x30, x12	# 1082
	add		x15, x14, x15	# 1082
	flw		f6, 0(x15)	# 1082
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.32352	# 120
	addi	x15, x0, 0	# 1082
	jal		x0, feq_cont.32351	# 120
feq_else.32352:
	addi	x15, x0, 1	# 1082
feq_cont.32351:
fle_cont.32349:
fle_cont.32346:
	beq		x15, x11, beq.32354	# 1079
	mul		x7, x30, x11	# 1086
	addi	x7, x7, 60540	# 1086
	fsw		f5, 0(x7)	# 1086
	addi	x7, x0, 1	# 1086
	jal		x0, beq_cont.32353	# 1079
beq.32354:
	mul		x15, x30, x8	# 1087
	add		x15, x14, x15	# 1087
	flw		f5, 0(x15)	# 1087
	fsub	f5, f5, f3	# 1087
	mul		x15, x30, x10	# 1087
	add		x15, x14, x15	# 1087
	flw		f6, 0(x15)	# 1087
	fmul	f5, f5, f6	# 1087
	mul		x15, x30, x11	# 1089
	addi	x15, x15, 60736	# 1089
	flw		f6, 0(x15)	# 1089
	fmul	f7, f5, f6	# 1089
	fadd	f7, f7, f2	# 1089
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.32355	# 124
	fsub	f7, f0, f7	# 124
fle_cont.32355:
	lw		x15, 16(x9)	# 405
	mul		x16, x30, x11	# 410
	add		x15, x15, x16	# 410
	flw		f8, 0(x15)	# 410
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32357	# 125
	addi	x8, x0, 0	# 1093
	jal		x0, fle_cont.32356	# 125
fle_else.32357:
	mul		x15, x30, x8	# 1090
	addi	x15, x15, 60736	# 1090
	flw		f7, 0(x15)	# 1090
	fmul	f7, f5, f7	# 1090
	fadd	f7, f7, f4	# 1090
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.32358	# 124
	fsub	f7, f0, f7	# 124
fle_cont.32358:
	lw		x15, 16(x9)	# 425
	mul		x8, x30, x8	# 430
	add		x8, x15, x8	# 430
	flw		f8, 0(x8)	# 430
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32360	# 125
	addi	x8, x0, 0	# 1092
	jal		x0, fle_cont.32359	# 125
fle_else.32360:
	mul		x8, x30, x10	# 1091
	add		x8, x14, x8	# 1091
	flw		f7, 0(x8)	# 1091
	feq		x31, f7, f1	# 120
	beq		x31, x0, feq_else.32362	# 120
	addi	x8, x0, 0	# 1091
	jal		x0, feq_cont.32361	# 120
feq_else.32362:
	addi	x8, x0, 1	# 1091
feq_cont.32361:
fle_cont.32359:
fle_cont.32356:
	beq		x8, x11, beq.32364	# 1088
	mul		x7, x30, x11	# 1095
	addi	x7, x7, 60540	# 1095
	fsw		f5, 0(x7)	# 1095
	addi	x7, x0, 2	# 1095
	jal		x0, beq_cont.32363	# 1088
beq.32364:
	addi	x8, x0, 4	# 1096
	mul		x8, x30, x8	# 1096
	add		x8, x14, x8	# 1096
	flw		f5, 0(x8)	# 1096
	fsub	f4, f5, f4	# 1096
	mul		x8, x30, x7	# 1096
	add		x8, x14, x8	# 1096
	flw		f5, 0(x8)	# 1096
	fmul	f4, f4, f5	# 1096
	fmul	f5, f4, f6	# 1098
	fadd	f2, f5, f2	# 1098
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32365	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32365:
	lw		x8, 16(x9)	# 405
	mul		x10, x30, x11	# 410
	add		x8, x8, x10	# 410
	flw		f5, 0(x8)	# 410
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.32367	# 125
	addi	x7, x0, 0	# 1102
	jal		x0, fle_cont.32366	# 125
fle_else.32367:
	mul		x8, x30, x12	# 1099
	addi	x8, x8, 60736	# 1099
	flw		f2, 0(x8)	# 1099
	fmul	f2, f4, f2	# 1099
	fadd	f2, f2, f3	# 1099
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32368	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32368:
	lw		x8, 16(x9)	# 415
	mul		x9, x30, x12	# 420
	add		x8, x8, x9	# 420
	flw		f3, 0(x8)	# 420
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32370	# 125
	addi	x7, x0, 0	# 1101
	jal		x0, fle_cont.32369	# 125
fle_else.32370:
	mul		x7, x30, x7	# 1100
	add		x7, x14, x7	# 1100
	flw		f2, 0(x7)	# 1100
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.32372	# 120
	addi	x7, x0, 0	# 1100
	jal		x0, feq_cont.32371	# 120
feq_else.32372:
	addi	x7, x0, 1	# 1100
feq_cont.32371:
fle_cont.32369:
fle_cont.32366:
	beq		x7, x11, beq.32374	# 1097
	mul		x7, x30, x11	# 1104
	addi	x7, x7, 60540	# 1104
	fsw		f4, 0(x7)	# 1104
	addi	x7, x0, 3	# 1104
	jal		x0, beq_cont.32373	# 1097
beq.32374:
	addi	x7, x0, 0	# 1106
beq_cont.32373:
beq_cont.32363:
beq_cont.32353:
beq_cont.32329:
	addi	x8, x0, 0	# 1455
	beq		x7, x8, beq.32376	# 1455
	addi	x7, x0, 0	# 1456
	mul		x7, x30, x7	# 1456
	addi	x7, x7, 60540	# 1456
	flw		f1, 0(x7)	# 1456
	fadd	f2, f0, f23	# 1456
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32378	# 125
	addi	x4, x0, 0	# 1460
	jal		x0, fle_cont.32377	# 125
fle_else.32378:
	addi	x7, x0, 1	# 1457
	addi	x5, x13, 0
	addi	x4, x7, 0
	addi	x29, x6, 0
	sw		x1, -28(x2)	# 1457
	addi	x2, x2, -32	# 1457
	lw		x31, 0(x29)	# 1457
	jalr	x1, x31, 0	# 1457
	addi	x2, x2, 32	# 1457
	lw		x1, -28(x2)	# 1457
	addi	x5, x0, 0	# 1457
	beq		x4, x5, beq.32380	# 1457
	addi	x4, x0, 1	# 1458
	jal		x0, beq_cont.32379	# 1457
beq.32380:
	addi	x4, x0, 0	# 1459
beq_cont.32379:
fle_cont.32377:
	jal		x0, beq_cont.32375	# 1455
beq.32376:
	addi	x4, x0, 0	# 1461
beq_cont.32375:
	jal		x0, beq_cont.32327	# 1449
beq.32328:
	addi	x4, x0, 1	# 1450
beq_cont.32327:
	lw		x5, -24(x2)	# 1448
	beq		x4, x5, beq.32381	# 1448
	lw		x4, -16(x2)	# 1463
	lw		x6, 0(x2)	# 1463
	lw		x29, -4(x2)	# 1463
	addi	x5, x6, 0
	sw		x1, -28(x2)	# 1463
	addi	x2, x2, -32	# 1463
	lw		x31, 0(x29)	# 1463
	jalr	x1, x31, 0	# 1463
	addi	x2, x2, 32	# 1463
	lw		x1, -28(x2)	# 1463
	lw		x5, -24(x2)	# 1463
	beq		x4, x5, beq.32382	# 1463
	addi	x4, x0, 1	# 1464
	jalr	x0, x1, 0	# 1464
beq.32382:
	lw		x4, -16(x2)	# 1466
	lw		x5, -20(x2)	# 1466
	add		x4, x5, x4	# 1466
	lw		x5, -8(x2)	# 1466
	lw		x29, -12(x2)	# 1466
	lw		x31, 0(x29)	# 1466
	jalr	x0, x31, 0	# 1466
beq.32381:
	lw		x4, -16(x2)	# 1468
	lw		x5, -20(x2)	# 1468
	add		x4, x5, x4	# 1468
	lw		x5, -8(x2)	# 1468
	lw		x29, -12(x2)	# 1468
	lw		x31, 0(x29)	# 1468
	jalr	x0, x31, 0	# 1468
beq.32326:
	addi	x4, x0, 0	# 1446
	jalr	x0, x1, 0	# 1446
solve_each_element.2846.17779:
	lw		x7, 28(x29)	# 1479
	lw		x8, 24(x29)	# 1479
	lw		x9, 20(x29)	# 1479
	lw		x10, 16(x29)	# 1479
	lw		x11, 12(x29)	# 1479
	lw		x12, 8(x29)	# 1479
	flw		f1, 4(x29)	# 1479
	mul		x13, x30, x4	# 1479
	add		x13, x5, x13	# 1479
	lw		x13, 0(x13)	# 1479
	beq		x13, x9, beq.32383	# 1480
	mul		x9, x30, x13	# 1046
	addi	x9, x9, 60048	# 1046
	lw		x9, 0(x9)	# 1046
	mul		x14, x30, x11	# 1048
	addi	x14, x14, 60636	# 1048
	flw		f2, 0(x14)	# 1048
	lw		x14, 20(x9)	# 445
	mul		x15, x30, x11	# 450
	add		x14, x14, x15	# 450
	flw		f3, 0(x14)	# 450
	fsub	f2, f2, f3	# 1048
	mul		x14, x30, x12	# 1049
	addi	x14, x14, 60636	# 1049
	flw		f3, 0(x14)	# 1049
	lw		x14, 20(x9)	# 455
	mul		x15, x30, x12	# 460
	add		x14, x14, x15	# 460
	flw		f4, 0(x14)	# 460
	fsub	f3, f3, f4	# 1049
	mul		x14, x30, x8	# 1050
	addi	x14, x14, 60636	# 1050
	flw		f4, 0(x14)	# 1050
	lw		x14, 20(x9)	# 465
	mul		x15, x30, x8	# 470
	add		x14, x14, x15	# 470
	flw		f5, 0(x14)	# 470
	fsub	f4, f4, f5	# 1050
	lw		x14, 4(x9)	# 367
	beq		x14, x12, beq.32385	# 1053
	addi	x15, x0, 2	# 1054
	beq		x14, x15, beq.32387	# 1054
	mul		x14, x30, x11	# 1020
	add		x14, x6, x14	# 1020
	flw		f5, 0(x14)	# 1020
	mul		x14, x30, x12	# 1020
	add		x14, x6, x14	# 1020
	flw		f6, 0(x14)	# 1020
	mul		x14, x30, x8	# 1020
	add		x14, x6, x14	# 1020
	flw		f7, 0(x14)	# 1020
	fmul	f8, f5, f5	# 127
	lw		x14, 16(x9)	# 405
	mul		x15, x30, x11	# 410
	add		x14, x14, x15	# 410
	flw		f9, 0(x14)	# 410
	fmul	f8, f8, f9	# 981
	fmul	f9, f6, f6	# 127
	lw		x14, 16(x9)	# 415
	mul		x15, x30, x12	# 420
	add		x14, x14, x15	# 420
	flw		f10, 0(x14)	# 420
	fmul	f9, f9, f10	# 981
	fadd	f8, f8, f9	# 981
	fmul	f9, f7, f7	# 127
	lw		x14, 16(x9)	# 425
	mul		x15, x30, x8	# 430
	add		x14, x14, x15	# 430
	flw		f10, 0(x14)	# 430
	fmul	f9, f9, f10	# 981
	fadd	f8, f8, f9	# 981
	lw		x14, 12(x9)	# 396
	beq		x14, x11, beq.32389	# 983
	fmul	f9, f6, f7	# 987
	lw		x14, 36(x9)	# 525
	mul		x15, x30, x11	# 530
	add		x14, x14, x15	# 530
	flw		f10, 0(x14)	# 530
	fmul	f9, f9, f10	# 987
	fadd	f8, f8, f9	# 986
	fmul	f7, f7, f5	# 988
	lw		x14, 36(x9)	# 535
	mul		x15, x30, x12	# 540
	add		x14, x14, x15	# 540
	flw		f9, 0(x14)	# 540
	fmul	f7, f7, f9	# 988
	fadd	f7, f8, f7	# 986
	fmul	f5, f5, f6	# 989
	lw		x14, 36(x9)	# 545
	mul		x15, x30, x8	# 550
	add		x14, x14, x15	# 550
	flw		f6, 0(x14)	# 550
	fmul	f5, f5, f6	# 989
	fadd	f5, f7, f5	# 986
	jal		x0, beq_cont.32388	# 983
beq.32389:
	fadd	f5, f0, f8	# 984
beq_cont.32388:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32391	# 120
	addi	x8, x0, 0	# 1023
	jal		x0, feq_cont.32390	# 120
feq_else.32391:
	mul		x14, x30, x11	# 1027
	add		x14, x6, x14	# 1027
	flw		f6, 0(x14)	# 1027
	mul		x14, x30, x12	# 1027
	add		x14, x6, x14	# 1027
	flw		f7, 0(x14)	# 1027
	mul		x14, x30, x8	# 1027
	add		x14, x6, x14	# 1027
	flw		f8, 0(x14)	# 1027
	fmul	f9, f6, f2	# 995
	lw		x14, 16(x9)	# 405
	mul		x15, x30, x11	# 410
	add		x14, x14, x15	# 410
	flw		f10, 0(x14)	# 410
	fmul	f9, f9, f10	# 995
	fmul	f10, f7, f3	# 996
	lw		x14, 16(x9)	# 415
	mul		x15, x30, x12	# 420
	add		x14, x14, x15	# 420
	flw		f11, 0(x14)	# 420
	fmul	f10, f10, f11	# 996
	fadd	f9, f9, f10	# 995
	fmul	f10, f8, f4	# 997
	lw		x14, 16(x9)	# 425
	mul		x15, x30, x8	# 430
	add		x14, x14, x15	# 430
	flw		f11, 0(x14)	# 430
	fmul	f10, f10, f11	# 997
	fadd	f9, f9, f10	# 995
	lw		x14, 12(x9)	# 396
	beq		x14, x11, beq.32393	# 999
	fmul	f10, f8, f3	# 1003
	fmul	f11, f7, f4	# 1003
	fadd	f10, f10, f11	# 1003
	lw		x14, 36(x9)	# 525
	mul		x15, x30, x11	# 530
	add		x14, x14, x15	# 530
	flw		f11, 0(x14)	# 530
	fmul	f10, f10, f11	# 1003
	fmul	f11, f6, f4	# 1004
	fmul	f8, f8, f2	# 1004
	fadd	f8, f11, f8	# 1004
	lw		x14, 36(x9)	# 535
	mul		x15, x30, x12	# 540
	add		x14, x14, x15	# 540
	flw		f11, 0(x14)	# 540
	fmul	f8, f8, f11	# 1004
	fadd	f8, f10, f8	# 1003
	fmul	f6, f6, f3	# 1005
	fmul	f7, f7, f2	# 1005
	fadd	f6, f6, f7	# 1005
	lw		x14, 36(x9)	# 545
	mul		x15, x30, x8	# 550
	add		x14, x14, x15	# 550
	flw		f7, 0(x14)	# 550
	fmul	f6, f6, f7	# 1005
	fadd	f6, f8, f6	# 1003
	fadd	f7, f0, f17	# 126
	fmul	f6, f6, f7	# 126
	fadd	f6, f9, f6	# 1002
	jal		x0, beq_cont.32392	# 999
beq.32393:
	fadd	f6, f0, f9	# 1000
beq_cont.32392:
	fmul	f7, f2, f2	# 127
	lw		x14, 16(x9)	# 405
	mul		x15, x30, x11	# 410
	add		x14, x14, x15	# 410
	flw		f8, 0(x14)	# 410
	fmul	f7, f7, f8	# 981
	fmul	f8, f3, f3	# 127
	lw		x14, 16(x9)	# 415
	mul		x15, x30, x12	# 420
	add		x14, x14, x15	# 420
	flw		f9, 0(x14)	# 420
	fmul	f8, f8, f9	# 981
	fadd	f7, f7, f8	# 981
	fmul	f8, f4, f4	# 127
	lw		x14, 16(x9)	# 425
	mul		x15, x30, x8	# 430
	add		x14, x14, x15	# 430
	flw		f9, 0(x14)	# 430
	fmul	f8, f8, f9	# 981
	fadd	f7, f7, f8	# 981
	lw		x14, 12(x9)	# 396
	beq		x14, x11, beq.32395	# 983
	fmul	f8, f3, f4	# 987
	lw		x14, 36(x9)	# 525
	mul		x15, x30, x11	# 530
	add		x14, x14, x15	# 530
	flw		f9, 0(x14)	# 530
	fmul	f8, f8, f9	# 987
	fadd	f7, f7, f8	# 986
	fmul	f4, f4, f2	# 988
	lw		x14, 36(x9)	# 535
	mul		x15, x30, x12	# 540
	add		x14, x14, x15	# 540
	flw		f8, 0(x14)	# 540
	fmul	f4, f4, f8	# 988
	fadd	f4, f7, f4	# 986
	fmul	f2, f2, f3	# 989
	lw		x14, 36(x9)	# 545
	mul		x8, x30, x8	# 550
	add		x8, x14, x8	# 550
	flw		f3, 0(x8)	# 550
	fmul	f2, f2, f3	# 989
	fadd	f2, f4, f2	# 986
	jal		x0, beq_cont.32394	# 983
beq.32395:
	fadd	f2, f0, f7	# 984
beq_cont.32394:
	lw		x8, 4(x9)	# 367
	beq		x8, x10, beq.32397	# 1030
	jal		x0, beq_cont.32396	# 1030
beq.32397:
	fadd	f3, f0, f16	# 1030
	fsub	f2, f2, f3	# 1030
beq_cont.32396:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1032
	fsub	f2, f3, f2	# 1032
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.32399	# 121
	addi	x8, x0, 0	# 1040
	jal		x0, fle_cont.32398	# 121
fle_else.32399:
	fsqrt	f2, f2	# 1035
	lw		x8, 24(x9)	# 387
	beq		x8, x11, beq.32401	# 1036
	jal		x0, beq_cont.32400	# 1036
beq.32401:
	fsub	f2, f0, f2	# 123
beq_cont.32400:
	fsub	f2, f2, f6	# 1037
	fdiv	f2, f2, f5	# 1037
	mul		x8, x30, x11	# 1037
	addi	x8, x8, 60540	# 1037
	fsw		f2, 0(x8)	# 1037
	addi	x8, x0, 1	# 1037
fle_cont.32398:
feq_cont.32390:
	jal		x0, beq_cont.32386	# 1054
beq.32387:
	lw		x9, 16(x9)	# 435
	mul		x10, x30, x11	# 306
	add		x10, x6, x10	# 306
	flw		f5, 0(x10)	# 306
	mul		x10, x30, x11	# 306
	add		x10, x9, x10	# 306
	flw		f6, 0(x10)	# 306
	fmul	f5, f5, f6	# 306
	mul		x10, x30, x12	# 306
	add		x10, x6, x10	# 306
	flw		f6, 0(x10)	# 306
	mul		x10, x30, x12	# 306
	add		x10, x9, x10	# 306
	flw		f7, 0(x10)	# 306
	fmul	f6, f6, f7	# 306
	fadd	f5, f5, f6	# 306
	mul		x10, x30, x8	# 306
	add		x10, x6, x10	# 306
	flw		f6, 0(x10)	# 306
	mul		x10, x30, x8	# 306
	add		x10, x9, x10	# 306
	flw		f7, 0(x10)	# 306
	fmul	f6, f6, f7	# 306
	fadd	f5, f5, f6	# 306
	fle		x31, f5, f1	# 121
	beq		x31, x0, fle_else.32403	# 121
	addi	x8, x0, 0	# 973
	jal		x0, fle_cont.32402	# 121
fle_else.32403:
	mul		x10, x30, x11	# 311
	add		x10, x9, x10	# 311
	flw		f6, 0(x10)	# 311
	fmul	f2, f6, f2	# 311
	mul		x10, x30, x12	# 311
	add		x10, x9, x10	# 311
	flw		f6, 0(x10)	# 311
	fmul	f3, f6, f3	# 311
	fadd	f2, f2, f3	# 311
	mul		x8, x30, x8	# 311
	add		x8, x9, x8	# 311
	flw		f3, 0(x8)	# 311
	fmul	f3, f3, f4	# 311
	fadd	f2, f2, f3	# 311
	fsub	f2, f0, f2	# 123
	fdiv	f2, f2, f5	# 971
	mul		x8, x30, x11	# 971
	addi	x8, x8, 60540	# 971
	fsw		f2, 0(x8)	# 971
	addi	x8, x0, 1	# 972
fle_cont.32402:
beq_cont.32386:
	jal		x0, beq_cont.32384	# 1053
beq.32385:
	mul		x10, x30, x11	# 942
	add		x10, x6, x10	# 942
	flw		f5, 0(x10)	# 942
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32405	# 120
	addi	x10, x0, 0	# 942
	jal		x0, feq_cont.32404	# 120
feq_else.32405:
	lw		x10, 16(x9)	# 435
	lw		x14, 24(x9)	# 387
	mul		x15, x30, x11	# 944
	add		x15, x6, x15	# 944
	flw		f5, 0(x15)	# 944
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32407	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.32406	# 122
fle_else.32407:
	addi	x15, x0, 1	# 122
fle_cont.32406:
	beq		x14, x11, beq.32409	# 218
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32411	# 122
	addi	x14, x0, 1	# 218
	jal		x0, fle_cont.32410	# 122
fle_else.32411:
	addi	x14, x0, 0	# 218
fle_cont.32410:
	jal		x0, beq_cont.32408	# 218
beq.32409:
	addi	x14, x15, 0	# 218
beq_cont.32408:
	mul		x15, x30, x11	# 944
	add		x15, x10, x15	# 944
	flw		f5, 0(x15)	# 944
	beq		x14, x11, beq.32413	# 233
	jal		x0, beq_cont.32412	# 233
beq.32413:
	fsub	f5, f0, f5	# 123
beq_cont.32412:
	fsub	f5, f5, f2	# 946
	mul		x14, x30, x11	# 946
	add		x14, x6, x14	# 946
	flw		f6, 0(x14)	# 946
	fdiv	f5, f5, f6	# 946
	mul		x14, x30, x12	# 947
	add		x14, x6, x14	# 947
	flw		f6, 0(x14)	# 947
	fmul	f6, f5, f6	# 947
	fadd	f6, f6, f3	# 947
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32414	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32414:
	mul		x14, x30, x12	# 947
	add		x14, x10, x14	# 947
	flw		f7, 0(x14)	# 947
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32416	# 125
	addi	x10, x0, 0	# 951
	jal		x0, fle_cont.32415	# 125
fle_else.32416:
	mul		x14, x30, x8	# 948
	add		x14, x6, x14	# 948
	flw		f6, 0(x14)	# 948
	fmul	f6, f5, f6	# 948
	fadd	f6, f6, f4	# 948
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32417	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32417:
	mul		x14, x30, x8	# 948
	add		x10, x10, x14	# 948
	flw		f7, 0(x10)	# 948
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32419	# 125
	addi	x10, x0, 0	# 950
	jal		x0, fle_cont.32418	# 125
fle_else.32419:
	addi	x10, x0, 0	# 949
	mul		x10, x30, x10	# 949
	addi	x10, x10, 60540	# 949
	fsw		f5, 0(x10)	# 949
	addi	x10, x0, 1	# 949
fle_cont.32418:
fle_cont.32415:
feq_cont.32404:
	beq		x10, x11, beq.32421	# 957
	addi	x8, x0, 1	# 957
	jal		x0, beq_cont.32420	# 957
beq.32421:
	mul		x10, x30, x12	# 942
	add		x10, x6, x10	# 942
	flw		f5, 0(x10)	# 942
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32423	# 120
	addi	x10, x0, 0	# 942
	jal		x0, feq_cont.32422	# 120
feq_else.32423:
	lw		x10, 16(x9)	# 435
	lw		x14, 24(x9)	# 387
	mul		x15, x30, x12	# 944
	add		x15, x6, x15	# 944
	flw		f5, 0(x15)	# 944
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32425	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.32424	# 122
fle_else.32425:
	addi	x15, x0, 1	# 122
fle_cont.32424:
	beq		x14, x11, beq.32427	# 218
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32429	# 122
	addi	x14, x0, 1	# 218
	jal		x0, fle_cont.32428	# 122
fle_else.32429:
	addi	x14, x0, 0	# 218
fle_cont.32428:
	jal		x0, beq_cont.32426	# 218
beq.32427:
	addi	x14, x15, 0	# 218
beq_cont.32426:
	mul		x15, x30, x12	# 944
	add		x15, x10, x15	# 944
	flw		f5, 0(x15)	# 944
	beq		x14, x11, beq.32431	# 233
	jal		x0, beq_cont.32430	# 233
beq.32431:
	fsub	f5, f0, f5	# 123
beq_cont.32430:
	fsub	f5, f5, f3	# 946
	mul		x14, x30, x12	# 946
	add		x14, x6, x14	# 946
	flw		f6, 0(x14)	# 946
	fdiv	f5, f5, f6	# 946
	mul		x14, x30, x8	# 947
	add		x14, x6, x14	# 947
	flw		f6, 0(x14)	# 947
	fmul	f6, f5, f6	# 947
	fadd	f6, f6, f4	# 947
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32432	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32432:
	mul		x14, x30, x8	# 947
	add		x14, x10, x14	# 947
	flw		f7, 0(x14)	# 947
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32434	# 125
	addi	x10, x0, 0	# 951
	jal		x0, fle_cont.32433	# 125
fle_else.32434:
	mul		x14, x30, x11	# 948
	add		x14, x6, x14	# 948
	flw		f6, 0(x14)	# 948
	fmul	f6, f5, f6	# 948
	fadd	f6, f6, f2	# 948
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32435	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32435:
	mul		x14, x30, x11	# 948
	add		x10, x10, x14	# 948
	flw		f7, 0(x10)	# 948
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32437	# 125
	addi	x10, x0, 0	# 950
	jal		x0, fle_cont.32436	# 125
fle_else.32437:
	addi	x10, x0, 0	# 949
	mul		x10, x30, x10	# 949
	addi	x10, x10, 60540	# 949
	fsw		f5, 0(x10)	# 949
	addi	x10, x0, 1	# 949
fle_cont.32436:
fle_cont.32433:
feq_cont.32422:
	beq		x10, x11, beq.32439	# 958
	addi	x8, x0, 2	# 958
	jal		x0, beq_cont.32438	# 958
beq.32439:
	mul		x10, x30, x8	# 942
	add		x10, x6, x10	# 942
	flw		f5, 0(x10)	# 942
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32441	# 120
	addi	x8, x0, 0	# 942
	jal		x0, feq_cont.32440	# 120
feq_else.32441:
	lw		x10, 16(x9)	# 435
	lw		x9, 24(x9)	# 387
	mul		x14, x30, x8	# 944
	add		x14, x6, x14	# 944
	flw		f5, 0(x14)	# 944
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32443	# 122
	addi	x14, x0, 0	# 122
	jal		x0, fle_cont.32442	# 122
fle_else.32443:
	addi	x14, x0, 1	# 122
fle_cont.32442:
	beq		x9, x11, beq.32445	# 218
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32447	# 122
	addi	x9, x0, 1	# 218
	jal		x0, fle_cont.32446	# 122
fle_else.32447:
	addi	x9, x0, 0	# 218
fle_cont.32446:
	jal		x0, beq_cont.32444	# 218
beq.32445:
	addi	x9, x14, 0	# 218
beq_cont.32444:
	mul		x14, x30, x8	# 944
	add		x14, x10, x14	# 944
	flw		f5, 0(x14)	# 944
	beq		x9, x11, beq.32449	# 233
	jal		x0, beq_cont.32448	# 233
beq.32449:
	fsub	f5, f0, f5	# 123
beq_cont.32448:
	fsub	f4, f5, f4	# 946
	mul		x8, x30, x8	# 946
	add		x8, x6, x8	# 946
	flw		f5, 0(x8)	# 946
	fdiv	f4, f4, f5	# 946
	mul		x8, x30, x11	# 947
	add		x8, x6, x8	# 947
	flw		f5, 0(x8)	# 947
	fmul	f5, f4, f5	# 947
	fadd	f2, f5, f2	# 947
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32450	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32450:
	mul		x8, x30, x11	# 947
	add		x8, x10, x8	# 947
	flw		f5, 0(x8)	# 947
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.32452	# 125
	addi	x8, x0, 0	# 951
	jal		x0, fle_cont.32451	# 125
fle_else.32452:
	mul		x8, x30, x12	# 948
	add		x8, x6, x8	# 948
	flw		f2, 0(x8)	# 948
	fmul	f2, f4, f2	# 948
	fadd	f2, f2, f3	# 948
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32453	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32453:
	mul		x8, x30, x12	# 948
	add		x8, x10, x8	# 948
	flw		f3, 0(x8)	# 948
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32455	# 125
	addi	x8, x0, 0	# 950
	jal		x0, fle_cont.32454	# 125
fle_else.32455:
	addi	x8, x0, 0	# 949
	mul		x8, x30, x8	# 949
	addi	x8, x8, 60540	# 949
	fsw		f4, 0(x8)	# 949
	addi	x8, x0, 1	# 949
fle_cont.32454:
fle_cont.32451:
feq_cont.32440:
	beq		x8, x11, beq.32457	# 959
	addi	x8, x0, 3	# 959
	jal		x0, beq_cont.32456	# 959
beq.32457:
	addi	x8, x0, 0	# 960
beq_cont.32456:
beq_cont.32438:
beq_cont.32420:
beq_cont.32384:
	beq		x8, x11, beq.32458	# 1483
	mul		x9, x30, x11	# 1487
	addi	x9, x9, 60540	# 1487
	flw		f2, 0(x9)	# 1487
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x29, -8(x2)	# 125
	sw		x12, -12(x2)	# 125
	sw		x4, -16(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32460	# 125
	jal		x0, fle_cont.32459	# 125
fle_else.32460:
	addi	x9, x0, 0	# 1490
	mul		x9, x30, x9	# 1490
	addi	x9, x9, 60548	# 1490
	flw		f1, 0(x9)	# 1490
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32462	# 125
	jal		x0, fle_cont.32461	# 125
fle_else.32462:
	lui		x9, %hi(l.26728)	# 1492
	ori		x9, x0, %lo(l.26728)	# 1492
	flw		f1, 0(x9)	# 1492
	fadd	f1, f2, f1	# 1492
	addi	x9, x0, 0	# 1493
	mul		x9, x30, x9	# 1493
	add		x9, x6, x9	# 1493
	flw		f2, 0(x9)	# 1493
	fmul	f2, f2, f1	# 1493
	addi	x9, x0, 0	# 1493
	mul		x9, x30, x9	# 1493
	addi	x9, x9, 60636	# 1493
	flw		f3, 0(x9)	# 1493
	fadd	f2, f2, f3	# 1493
	addi	x9, x0, 1	# 1494
	mul		x9, x30, x9	# 1494
	add		x9, x6, x9	# 1494
	flw		f3, 0(x9)	# 1494
	fmul	f3, f3, f1	# 1494
	addi	x9, x0, 1	# 1494
	mul		x9, x30, x9	# 1494
	addi	x9, x9, 60636	# 1494
	flw		f4, 0(x9)	# 1494
	fadd	f3, f3, f4	# 1494
	addi	x9, x0, 2	# 1495
	mul		x9, x30, x9	# 1495
	add		x9, x6, x9	# 1495
	flw		f4, 0(x9)	# 1495
	fmul	f4, f4, f1	# 1495
	addi	x9, x0, 2	# 1495
	mul		x9, x30, x9	# 1495
	addi	x9, x9, 60636	# 1495
	flw		f5, 0(x9)	# 1495
	fadd	f4, f4, f5	# 1495
	addi	x9, x0, 0	# 1496
	sw		x8, -20(x2)	# 1496
	sw		x13, -24(x2)	# 1496
	fsw		f4, -28(x2)	# 1496
	fsw		f3, -32(x2)	# 1496
	fsw		f2, -36(x2)	# 1496
	fsw		f1, -40(x2)	# 1496
	addi	x4, x9, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -44(x2)	# 1496
	addi	x2, x2, -48	# 1496
	lw		x31, 0(x29)	# 1496
	jalr	x1, x31, 0	# 1496
	addi	x2, x2, 48	# 1496
	lw		x1, -44(x2)	# 1496
	addi	x5, x0, 0	# 1496
	beq		x4, x5, beq_cont.32463	# 1496
	addi	x4, x0, 0	# 1498
	mul		x4, x30, x4	# 1498
	addi	x4, x4, 60548	# 1498
	flw		f1, -40(x2)	# 1498
	fsw		f1, 0(x4)	# 1498
	addi	x4, x0, 0	# 254
	mul		x4, x30, x4	# 254
	addi	x4, x4, 60552	# 254
	flw		f1, -36(x2)	# 254
	fsw		f1, 0(x4)	# 254
	addi	x4, x0, 1	# 255
	mul		x4, x30, x4	# 255
	addi	x4, x4, 60552	# 255
	flw		f1, -32(x2)	# 255
	fsw		f1, 0(x4)	# 255
	addi	x4, x0, 2	# 256
	mul		x4, x30, x4	# 256
	addi	x4, x4, 60552	# 256
	flw		f1, -28(x2)	# 256
	fsw		f1, 0(x4)	# 256
	addi	x4, x0, 0	# 1500
	mul		x4, x30, x4	# 1500
	addi	x4, x4, 60564	# 1500
	lw		x5, -24(x2)	# 1500
	sw		x5, 0(x4)	# 1500
	addi	x4, x0, 0	# 1501
	mul		x4, x30, x4	# 1501
	addi	x4, x4, 60544	# 1501
	lw		x5, -20(x2)	# 1501
	sw		x5, 0(x4)	# 1501
beq_cont.32463:
fle_cont.32461:
fle_cont.32459:
	lw		x4, -12(x2)	# 1507
	lw		x5, -16(x2)	# 1507
	add		x4, x5, x4	# 1507
	lw		x5, -4(x2)	# 1507
	lw		x6, 0(x2)	# 1507
	lw		x29, -8(x2)	# 1507
	lw		x31, 0(x29)	# 1507
	jalr	x0, x31, 0	# 1507
beq.32458:
	mul		x7, x30, x13	# 1511
	addi	x7, x7, 60048	# 1511
	lw		x7, 0(x7)	# 1511
	lw		x7, 24(x7)	# 387
	beq		x7, x11, beq.32464	# 1511
	add		x4, x4, x12	# 1512
	lw		x31, 0(x29)	# 1512
	jalr	x0, x31, 0	# 1512
beq.32464:
	jalr	x0, x1, 0	# 1513
beq.32383:
	jalr	x0, x1, 0	# 1480
solve_one_or_network.2850.17783:
	lw		x7, 16(x29)	# 1520
	lw		x8, 12(x29)	# 1520
	lw		x9, 8(x29)	# 1520
	lw		x10, 4(x29)	# 1520
	mul		x11, x30, x4	# 1520
	add		x11, x5, x11	# 1520
	lw		x11, 0(x11)	# 1520
	beq		x11, x8, beq.32467	# 1521
	mul		x8, x30, x11	# 1522
	addi	x8, x8, 60332	# 1522
	lw		x8, 0(x8)	# 1522
	sw		x6, 0(x2)	# 1523
	sw		x5, -4(x2)	# 1523
	sw		x29, -8(x2)	# 1523
	sw		x10, -12(x2)	# 1523
	sw		x4, -16(x2)	# 1523
	addi	x5, x8, 0
	addi	x4, x9, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1523
	addi	x2, x2, -24	# 1523
	lw		x31, 0(x29)	# 1523
	jalr	x1, x31, 0	# 1523
	addi	x2, x2, 24	# 1523
	lw		x1, -20(x2)	# 1523
	lw		x4, -12(x2)	# 1524
	lw		x5, -16(x2)	# 1524
	add		x4, x5, x4	# 1524
	lw		x5, -4(x2)	# 1524
	lw		x6, 0(x2)	# 1524
	lw		x29, -8(x2)	# 1524
	lw		x31, 0(x29)	# 1524
	jalr	x0, x31, 0	# 1524
beq.32467:
	jalr	x0, x1, 0	# 1525
trace_or_matrix.2854.17787:
	lw		x7, 28(x29)	# 1530
	lw		x8, 24(x29)	# 1530
	lw		x9, 20(x29)	# 1530
	lw		x10, 16(x29)	# 1530
	lw		x11, 12(x29)	# 1530
	lw		x12, 8(x29)	# 1530
	flw		f1, 4(x29)	# 1530
	mul		x13, x30, x4	# 1530
	add		x13, x5, x13	# 1530
	lw		x13, 0(x13)	# 1530
	mul		x14, x30, x11	# 1531
	add		x14, x13, x14	# 1531
	lw		x14, 0(x14)	# 1531
	beq		x14, x9, beq.32469	# 1532
	addi	x9, x0, 99	# 1535
	sw		x6, 0(x2)	# 1535
	sw		x5, -4(x2)	# 1535
	sw		x29, -8(x2)	# 1535
	sw		x12, -12(x2)	# 1535
	sw		x4, -16(x2)	# 1535
	beq		x14, x9, beq.32471	# 1535
	mul		x9, x30, x14	# 1046
	addi	x9, x9, 60048	# 1046
	lw		x9, 0(x9)	# 1046
	addi	x14, x0, 0	# 1048
	mul		x14, x30, x14	# 1048
	addi	x14, x14, 60636	# 1048
	flw		f2, 0(x14)	# 1048
	lw		x14, 20(x9)	# 445
	mul		x15, x30, x11	# 450
	add		x14, x14, x15	# 450
	flw		f3, 0(x14)	# 450
	fsub	f2, f2, f3	# 1048
	addi	x14, x0, 1	# 1049
	mul		x14, x30, x14	# 1049
	addi	x14, x14, 60636	# 1049
	flw		f3, 0(x14)	# 1049
	lw		x14, 20(x9)	# 455
	mul		x15, x30, x12	# 460
	add		x14, x14, x15	# 460
	flw		f4, 0(x14)	# 460
	fsub	f3, f3, f4	# 1049
	addi	x14, x0, 2	# 1050
	mul		x14, x30, x14	# 1050
	addi	x14, x14, 60636	# 1050
	flw		f4, 0(x14)	# 1050
	lw		x14, 20(x9)	# 465
	mul		x15, x30, x8	# 470
	add		x14, x14, x15	# 470
	flw		f5, 0(x14)	# 470
	fsub	f4, f4, f5	# 1050
	lw		x14, 4(x9)	# 367
	addi	x15, x0, 1	# 1053
	beq		x14, x15, beq.32473	# 1053
	addi	x15, x0, 2	# 1054
	beq		x14, x15, beq.32475	# 1054
	mul		x14, x30, x11	# 1020
	add		x14, x6, x14	# 1020
	flw		f5, 0(x14)	# 1020
	mul		x14, x30, x12	# 1020
	add		x14, x6, x14	# 1020
	flw		f6, 0(x14)	# 1020
	mul		x14, x30, x8	# 1020
	add		x14, x6, x14	# 1020
	flw		f7, 0(x14)	# 1020
	fmul	f8, f5, f5	# 127
	lw		x14, 16(x9)	# 405
	mul		x15, x30, x11	# 410
	add		x14, x14, x15	# 410
	flw		f9, 0(x14)	# 410
	fmul	f8, f8, f9	# 981
	fmul	f9, f6, f6	# 127
	lw		x14, 16(x9)	# 415
	mul		x15, x30, x12	# 420
	add		x14, x14, x15	# 420
	flw		f10, 0(x14)	# 420
	fmul	f9, f9, f10	# 981
	fadd	f8, f8, f9	# 981
	fmul	f9, f7, f7	# 127
	lw		x14, 16(x9)	# 425
	mul		x15, x30, x8	# 430
	add		x14, x14, x15	# 430
	flw		f10, 0(x14)	# 430
	fmul	f9, f9, f10	# 981
	fadd	f8, f8, f9	# 981
	lw		x14, 12(x9)	# 396
	beq		x14, x11, beq.32477	# 983
	fmul	f9, f6, f7	# 987
	lw		x14, 36(x9)	# 525
	mul		x15, x30, x11	# 530
	add		x14, x14, x15	# 530
	flw		f10, 0(x14)	# 530
	fmul	f9, f9, f10	# 987
	fadd	f8, f8, f9	# 986
	fmul	f7, f7, f5	# 988
	lw		x14, 36(x9)	# 535
	mul		x15, x30, x12	# 540
	add		x14, x14, x15	# 540
	flw		f9, 0(x14)	# 540
	fmul	f7, f7, f9	# 988
	fadd	f7, f8, f7	# 986
	fmul	f5, f5, f6	# 989
	lw		x14, 36(x9)	# 545
	mul		x15, x30, x8	# 550
	add		x14, x14, x15	# 550
	flw		f6, 0(x14)	# 550
	fmul	f5, f5, f6	# 989
	fadd	f5, f7, f5	# 986
	jal		x0, beq_cont.32476	# 983
beq.32477:
	fadd	f5, f0, f8	# 984
beq_cont.32476:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32479	# 120
	addi	x8, x0, 0	# 1023
	jal		x0, feq_cont.32478	# 120
feq_else.32479:
	mul		x14, x30, x11	# 1027
	add		x14, x6, x14	# 1027
	flw		f6, 0(x14)	# 1027
	mul		x14, x30, x12	# 1027
	add		x14, x6, x14	# 1027
	flw		f7, 0(x14)	# 1027
	mul		x14, x30, x8	# 1027
	add		x14, x6, x14	# 1027
	flw		f8, 0(x14)	# 1027
	fmul	f9, f6, f2	# 995
	lw		x14, 16(x9)	# 405
	mul		x15, x30, x11	# 410
	add		x14, x14, x15	# 410
	flw		f10, 0(x14)	# 410
	fmul	f9, f9, f10	# 995
	fmul	f10, f7, f3	# 996
	lw		x14, 16(x9)	# 415
	mul		x15, x30, x12	# 420
	add		x14, x14, x15	# 420
	flw		f11, 0(x14)	# 420
	fmul	f10, f10, f11	# 996
	fadd	f9, f9, f10	# 995
	fmul	f10, f8, f4	# 997
	lw		x14, 16(x9)	# 425
	mul		x15, x30, x8	# 430
	add		x14, x14, x15	# 430
	flw		f11, 0(x14)	# 430
	fmul	f10, f10, f11	# 997
	fadd	f9, f9, f10	# 995
	lw		x14, 12(x9)	# 396
	beq		x14, x11, beq.32481	# 999
	fmul	f10, f8, f3	# 1003
	fmul	f11, f7, f4	# 1003
	fadd	f10, f10, f11	# 1003
	lw		x14, 36(x9)	# 525
	mul		x15, x30, x11	# 530
	add		x14, x14, x15	# 530
	flw		f11, 0(x14)	# 530
	fmul	f10, f10, f11	# 1003
	fmul	f11, f6, f4	# 1004
	fmul	f8, f8, f2	# 1004
	fadd	f8, f11, f8	# 1004
	lw		x14, 36(x9)	# 535
	mul		x15, x30, x12	# 540
	add		x14, x14, x15	# 540
	flw		f11, 0(x14)	# 540
	fmul	f8, f8, f11	# 1004
	fadd	f8, f10, f8	# 1003
	fmul	f6, f6, f3	# 1005
	fmul	f7, f7, f2	# 1005
	fadd	f6, f6, f7	# 1005
	lw		x14, 36(x9)	# 545
	mul		x15, x30, x8	# 550
	add		x14, x14, x15	# 550
	flw		f7, 0(x14)	# 550
	fmul	f6, f6, f7	# 1005
	fadd	f6, f8, f6	# 1003
	fadd	f7, f0, f17	# 126
	fmul	f6, f6, f7	# 126
	fadd	f6, f9, f6	# 1002
	jal		x0, beq_cont.32480	# 999
beq.32481:
	fadd	f6, f0, f9	# 1000
beq_cont.32480:
	fmul	f7, f2, f2	# 127
	lw		x14, 16(x9)	# 405
	mul		x15, x30, x11	# 410
	add		x14, x14, x15	# 410
	flw		f8, 0(x14)	# 410
	fmul	f7, f7, f8	# 981
	fmul	f8, f3, f3	# 127
	lw		x14, 16(x9)	# 415
	mul		x15, x30, x12	# 420
	add		x14, x14, x15	# 420
	flw		f9, 0(x14)	# 420
	fmul	f8, f8, f9	# 981
	fadd	f7, f7, f8	# 981
	fmul	f8, f4, f4	# 127
	lw		x14, 16(x9)	# 425
	mul		x15, x30, x8	# 430
	add		x14, x14, x15	# 430
	flw		f9, 0(x14)	# 430
	fmul	f8, f8, f9	# 981
	fadd	f7, f7, f8	# 981
	lw		x14, 12(x9)	# 396
	beq		x14, x11, beq.32483	# 983
	fmul	f8, f3, f4	# 987
	lw		x14, 36(x9)	# 525
	mul		x15, x30, x11	# 530
	add		x14, x14, x15	# 530
	flw		f9, 0(x14)	# 530
	fmul	f8, f8, f9	# 987
	fadd	f7, f7, f8	# 986
	fmul	f4, f4, f2	# 988
	lw		x14, 36(x9)	# 535
	mul		x15, x30, x12	# 540
	add		x14, x14, x15	# 540
	flw		f8, 0(x14)	# 540
	fmul	f4, f4, f8	# 988
	fadd	f4, f7, f4	# 986
	fmul	f2, f2, f3	# 989
	lw		x14, 36(x9)	# 545
	mul		x8, x30, x8	# 550
	add		x8, x14, x8	# 550
	flw		f3, 0(x8)	# 550
	fmul	f2, f2, f3	# 989
	fadd	f2, f4, f2	# 986
	jal		x0, beq_cont.32482	# 983
beq.32483:
	fadd	f2, f0, f7	# 984
beq_cont.32482:
	lw		x8, 4(x9)	# 367
	beq		x8, x10, beq.32485	# 1030
	jal		x0, beq_cont.32484	# 1030
beq.32485:
	fadd	f3, f0, f16	# 1030
	fsub	f2, f2, f3	# 1030
beq_cont.32484:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1032
	fsub	f2, f3, f2	# 1032
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.32487	# 121
	addi	x8, x0, 0	# 1040
	jal		x0, fle_cont.32486	# 121
fle_else.32487:
	fsqrt	f1, f2	# 1035
	lw		x8, 24(x9)	# 387
	beq		x8, x11, beq.32489	# 1036
	jal		x0, beq_cont.32488	# 1036
beq.32489:
	fsub	f1, f0, f1	# 123
beq_cont.32488:
	fsub	f1, f1, f6	# 1037
	fdiv	f1, f1, f5	# 1037
	mul		x8, x30, x11	# 1037
	addi	x8, x8, 60540	# 1037
	fsw		f1, 0(x8)	# 1037
	addi	x8, x0, 1	# 1037
fle_cont.32486:
feq_cont.32478:
	jal		x0, beq_cont.32474	# 1054
beq.32475:
	lw		x9, 16(x9)	# 435
	mul		x10, x30, x11	# 306
	add		x10, x6, x10	# 306
	flw		f5, 0(x10)	# 306
	mul		x10, x30, x11	# 306
	add		x10, x9, x10	# 306
	flw		f6, 0(x10)	# 306
	fmul	f5, f5, f6	# 306
	mul		x10, x30, x12	# 306
	add		x10, x6, x10	# 306
	flw		f6, 0(x10)	# 306
	mul		x10, x30, x12	# 306
	add		x10, x9, x10	# 306
	flw		f7, 0(x10)	# 306
	fmul	f6, f6, f7	# 306
	fadd	f5, f5, f6	# 306
	mul		x10, x30, x8	# 306
	add		x10, x6, x10	# 306
	flw		f6, 0(x10)	# 306
	mul		x10, x30, x8	# 306
	add		x10, x9, x10	# 306
	flw		f7, 0(x10)	# 306
	fmul	f6, f6, f7	# 306
	fadd	f5, f5, f6	# 306
	fle		x31, f5, f1	# 121
	beq		x31, x0, fle_else.32491	# 121
	addi	x8, x0, 0	# 973
	jal		x0, fle_cont.32490	# 121
fle_else.32491:
	mul		x10, x30, x11	# 311
	add		x10, x9, x10	# 311
	flw		f1, 0(x10)	# 311
	fmul	f1, f1, f2	# 311
	mul		x10, x30, x12	# 311
	add		x10, x9, x10	# 311
	flw		f2, 0(x10)	# 311
	fmul	f2, f2, f3	# 311
	fadd	f1, f1, f2	# 311
	mul		x8, x30, x8	# 311
	add		x8, x9, x8	# 311
	flw		f2, 0(x8)	# 311
	fmul	f2, f2, f4	# 311
	fadd	f1, f1, f2	# 311
	fsub	f1, f0, f1	# 123
	fdiv	f1, f1, f5	# 971
	mul		x8, x30, x11	# 971
	addi	x8, x8, 60540	# 971
	fsw		f1, 0(x8)	# 971
	addi	x8, x0, 1	# 972
fle_cont.32490:
beq_cont.32474:
	jal		x0, beq_cont.32472	# 1053
beq.32473:
	mul		x10, x30, x11	# 942
	add		x10, x6, x10	# 942
	flw		f5, 0(x10)	# 942
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32493	# 120
	addi	x10, x0, 0	# 942
	jal		x0, feq_cont.32492	# 120
feq_else.32493:
	lw		x10, 16(x9)	# 435
	lw		x14, 24(x9)	# 387
	mul		x15, x30, x11	# 944
	add		x15, x6, x15	# 944
	flw		f5, 0(x15)	# 944
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32495	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.32494	# 122
fle_else.32495:
	addi	x15, x0, 1	# 122
fle_cont.32494:
	beq		x14, x11, beq.32497	# 218
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32499	# 122
	addi	x14, x0, 1	# 218
	jal		x0, fle_cont.32498	# 122
fle_else.32499:
	addi	x14, x0, 0	# 218
fle_cont.32498:
	jal		x0, beq_cont.32496	# 218
beq.32497:
	addi	x14, x15, 0	# 218
beq_cont.32496:
	mul		x15, x30, x11	# 944
	add		x15, x10, x15	# 944
	flw		f5, 0(x15)	# 944
	beq		x14, x11, beq.32501	# 233
	jal		x0, beq_cont.32500	# 233
beq.32501:
	fsub	f5, f0, f5	# 123
beq_cont.32500:
	fsub	f5, f5, f2	# 946
	mul		x14, x30, x11	# 946
	add		x14, x6, x14	# 946
	flw		f6, 0(x14)	# 946
	fdiv	f5, f5, f6	# 946
	mul		x14, x30, x12	# 947
	add		x14, x6, x14	# 947
	flw		f6, 0(x14)	# 947
	fmul	f6, f5, f6	# 947
	fadd	f6, f6, f3	# 947
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32502	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32502:
	mul		x14, x30, x12	# 947
	add		x14, x10, x14	# 947
	flw		f7, 0(x14)	# 947
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32504	# 125
	addi	x10, x0, 0	# 951
	jal		x0, fle_cont.32503	# 125
fle_else.32504:
	mul		x14, x30, x8	# 948
	add		x14, x6, x14	# 948
	flw		f6, 0(x14)	# 948
	fmul	f6, f5, f6	# 948
	fadd	f6, f6, f4	# 948
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32505	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32505:
	mul		x14, x30, x8	# 948
	add		x10, x10, x14	# 948
	flw		f7, 0(x10)	# 948
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32507	# 125
	addi	x10, x0, 0	# 950
	jal		x0, fle_cont.32506	# 125
fle_else.32507:
	addi	x10, x0, 0	# 949
	mul		x10, x30, x10	# 949
	addi	x10, x10, 60540	# 949
	fsw		f5, 0(x10)	# 949
	addi	x10, x0, 1	# 949
fle_cont.32506:
fle_cont.32503:
feq_cont.32492:
	beq		x10, x11, beq.32509	# 957
	addi	x8, x0, 1	# 957
	jal		x0, beq_cont.32508	# 957
beq.32509:
	mul		x10, x30, x12	# 942
	add		x10, x6, x10	# 942
	flw		f5, 0(x10)	# 942
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32511	# 120
	addi	x10, x0, 0	# 942
	jal		x0, feq_cont.32510	# 120
feq_else.32511:
	lw		x10, 16(x9)	# 435
	lw		x14, 24(x9)	# 387
	mul		x15, x30, x12	# 944
	add		x15, x6, x15	# 944
	flw		f5, 0(x15)	# 944
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32513	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.32512	# 122
fle_else.32513:
	addi	x15, x0, 1	# 122
fle_cont.32512:
	beq		x14, x11, beq.32515	# 218
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32517	# 122
	addi	x14, x0, 1	# 218
	jal		x0, fle_cont.32516	# 122
fle_else.32517:
	addi	x14, x0, 0	# 218
fle_cont.32516:
	jal		x0, beq_cont.32514	# 218
beq.32515:
	addi	x14, x15, 0	# 218
beq_cont.32514:
	mul		x15, x30, x12	# 944
	add		x15, x10, x15	# 944
	flw		f5, 0(x15)	# 944
	beq		x14, x11, beq.32519	# 233
	jal		x0, beq_cont.32518	# 233
beq.32519:
	fsub	f5, f0, f5	# 123
beq_cont.32518:
	fsub	f5, f5, f3	# 946
	mul		x14, x30, x12	# 946
	add		x14, x6, x14	# 946
	flw		f6, 0(x14)	# 946
	fdiv	f5, f5, f6	# 946
	mul		x14, x30, x8	# 947
	add		x14, x6, x14	# 947
	flw		f6, 0(x14)	# 947
	fmul	f6, f5, f6	# 947
	fadd	f6, f6, f4	# 947
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32520	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32520:
	mul		x14, x30, x8	# 947
	add		x14, x10, x14	# 947
	flw		f7, 0(x14)	# 947
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32522	# 125
	addi	x10, x0, 0	# 951
	jal		x0, fle_cont.32521	# 125
fle_else.32522:
	mul		x14, x30, x11	# 948
	add		x14, x6, x14	# 948
	flw		f6, 0(x14)	# 948
	fmul	f6, f5, f6	# 948
	fadd	f6, f6, f2	# 948
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32523	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32523:
	mul		x14, x30, x11	# 948
	add		x10, x10, x14	# 948
	flw		f7, 0(x10)	# 948
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32525	# 125
	addi	x10, x0, 0	# 950
	jal		x0, fle_cont.32524	# 125
fle_else.32525:
	addi	x10, x0, 0	# 949
	mul		x10, x30, x10	# 949
	addi	x10, x10, 60540	# 949
	fsw		f5, 0(x10)	# 949
	addi	x10, x0, 1	# 949
fle_cont.32524:
fle_cont.32521:
feq_cont.32510:
	beq		x10, x11, beq.32527	# 958
	addi	x8, x0, 2	# 958
	jal		x0, beq_cont.32526	# 958
beq.32527:
	mul		x10, x30, x8	# 942
	add		x10, x6, x10	# 942
	flw		f5, 0(x10)	# 942
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32529	# 120
	addi	x8, x0, 0	# 942
	jal		x0, feq_cont.32528	# 120
feq_else.32529:
	lw		x10, 16(x9)	# 435
	lw		x9, 24(x9)	# 387
	mul		x14, x30, x8	# 944
	add		x14, x6, x14	# 944
	flw		f5, 0(x14)	# 944
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32531	# 122
	addi	x14, x0, 0	# 122
	jal		x0, fle_cont.32530	# 122
fle_else.32531:
	addi	x14, x0, 1	# 122
fle_cont.32530:
	beq		x9, x11, beq.32533	# 218
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32535	# 122
	addi	x9, x0, 1	# 218
	jal		x0, fle_cont.32534	# 122
fle_else.32535:
	addi	x9, x0, 0	# 218
fle_cont.32534:
	jal		x0, beq_cont.32532	# 218
beq.32533:
	addi	x9, x14, 0	# 218
beq_cont.32532:
	mul		x14, x30, x8	# 944
	add		x14, x10, x14	# 944
	flw		f5, 0(x14)	# 944
	beq		x9, x11, beq.32537	# 233
	jal		x0, beq_cont.32536	# 233
beq.32537:
	fsub	f5, f0, f5	# 123
beq_cont.32536:
	fsub	f4, f5, f4	# 946
	mul		x8, x30, x8	# 946
	add		x8, x6, x8	# 946
	flw		f5, 0(x8)	# 946
	fdiv	f4, f4, f5	# 946
	mul		x8, x30, x11	# 947
	add		x8, x6, x8	# 947
	flw		f5, 0(x8)	# 947
	fmul	f5, f4, f5	# 947
	fadd	f2, f5, f2	# 947
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32538	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32538:
	mul		x8, x30, x11	# 947
	add		x8, x10, x8	# 947
	flw		f5, 0(x8)	# 947
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.32540	# 125
	addi	x8, x0, 0	# 951
	jal		x0, fle_cont.32539	# 125
fle_else.32540:
	mul		x8, x30, x12	# 948
	add		x8, x6, x8	# 948
	flw		f2, 0(x8)	# 948
	fmul	f2, f4, f2	# 948
	fadd	f2, f2, f3	# 948
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_else.32542	# 124
	fsub	f1, f0, f2	# 124
	jal		x0, fle_cont.32541	# 124
fle_else.32542:
	fadd	f1, f0, f2	# 124
fle_cont.32541:
	mul		x8, x30, x12	# 948
	add		x8, x10, x8	# 948
	flw		f2, 0(x8)	# 948
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32544	# 125
	addi	x8, x0, 0	# 950
	jal		x0, fle_cont.32543	# 125
fle_else.32544:
	addi	x8, x0, 0	# 949
	mul		x8, x30, x8	# 949
	addi	x8, x8, 60540	# 949
	fsw		f4, 0(x8)	# 949
	addi	x8, x0, 1	# 949
fle_cont.32543:
fle_cont.32539:
feq_cont.32528:
	beq		x8, x11, beq.32546	# 959
	addi	x8, x0, 3	# 959
	jal		x0, beq_cont.32545	# 959
beq.32546:
	addi	x8, x0, 0	# 960
beq_cont.32545:
beq_cont.32526:
beq_cont.32508:
beq_cont.32472:
	addi	x9, x0, 0	# 1541
	beq		x8, x9, beq_cont.32547	# 1541
	addi	x8, x0, 0	# 1542
	mul		x8, x30, x8	# 1542
	addi	x8, x8, 60540	# 1542
	flw		f1, 0(x8)	# 1542
	addi	x8, x0, 0	# 1543
	mul		x8, x30, x8	# 1543
	addi	x8, x8, 60548	# 1543
	flw		f2, 0(x8)	# 1543
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32549	# 125
	jal		x0, fle_cont.32548	# 125
fle_else.32549:
	addi	x8, x0, 1	# 1544
	addi	x5, x13, 0
	addi	x4, x8, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1544
	addi	x2, x2, -24	# 1544
	lw		x31, 0(x29)	# 1544
	jalr	x1, x31, 0	# 1544
	addi	x2, x2, 24	# 1544
	lw		x1, -20(x2)	# 1544
fle_cont.32548:
beq_cont.32547:
	jal		x0, beq_cont.32470	# 1535
beq.32471:
	addi	x8, x0, 1	# 1536
	addi	x5, x13, 0
	addi	x4, x8, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1536
	addi	x2, x2, -24	# 1536
	lw		x31, 0(x29)	# 1536
	jalr	x1, x31, 0	# 1536
	addi	x2, x2, 24	# 1536
	lw		x1, -20(x2)	# 1536
beq_cont.32470:
	lw		x4, -12(x2)	# 1548
	lw		x5, -16(x2)	# 1548
	add		x4, x5, x4	# 1548
	lw		x5, -4(x2)	# 1548
	lw		x6, 0(x2)	# 1548
	lw		x29, -8(x2)	# 1548
	lw		x31, 0(x29)	# 1548
	jalr	x0, x31, 0	# 1548
beq.32469:
	jalr	x0, x1, 0	# 1533
solve_each_element_fast.2860.17791:
	lw		x7, 32(x29)	# 653
	lw		x8, 28(x29)	# 653
	lw		x9, 24(x29)	# 653
	lw		x10, 20(x29)	# 653
	lw		x11, 16(x29)	# 653
	lw		x12, 12(x29)	# 653
	lw		x13, 8(x29)	# 653
	flw		f1, 4(x29)	# 653
	lw		x14, 0(x6)	# 653
	mul		x15, x30, x4	# 1573
	add		x15, x5, x15	# 1573
	lw		x15, 0(x15)	# 1573
	beq		x15, x10, beq.32551	# 1574
	mul		x10, x30, x15	# 1187
	addi	x10, x10, 60048	# 1187
	lw		x10, 0(x10)	# 1187
	lw		x16, 40(x10)	# 562
	mul		x17, x30, x12	# 1189
	add		x17, x16, x17	# 1189
	flw		f2, 0(x17)	# 1189
	mul		x17, x30, x13	# 1190
	add		x17, x16, x17	# 1190
	flw		f3, 0(x17)	# 1190
	mul		x17, x30, x9	# 1191
	add		x17, x16, x17	# 1191
	flw		f4, 0(x17)	# 1191
	lw		x17, 4(x6)	# 659
	mul		x18, x30, x15	# 1193
	add		x17, x17, x18	# 1193
	lw		x17, 0(x17)	# 1193
	lw		x18, 4(x10)	# 367
	beq		x18, x13, beq.32553	# 1195
	addi	x8, x0, 2	# 1197
	beq		x18, x8, beq.32555	# 1197
	mul		x8, x30, x12	# 1169
	add		x8, x17, x8	# 1169
	flw		f5, 0(x8)	# 1169
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32557	# 120
	addi	x8, x0, 0	# 1171
	jal		x0, feq_cont.32556	# 120
feq_else.32557:
	mul		x8, x30, x13	# 1173
	add		x8, x17, x8	# 1173
	flw		f6, 0(x8)	# 1173
	fmul	f2, f6, f2	# 1173
	mul		x8, x30, x9	# 1173
	add		x8, x17, x8	# 1173
	flw		f6, 0(x8)	# 1173
	fmul	f3, f6, f3	# 1173
	fadd	f2, f2, f3	# 1173
	mul		x8, x30, x11	# 1173
	add		x8, x17, x8	# 1173
	flw		f3, 0(x8)	# 1173
	fmul	f3, f3, f4	# 1173
	fadd	f2, f2, f3	# 1173
	mul		x8, x30, x11	# 1174
	add		x8, x16, x8	# 1174
	flw		f3, 0(x8)	# 1174
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1175
	fsub	f3, f4, f3	# 1175
	fle		x31, f3, f1	# 121
	beq		x31, x0, fle_else.32559	# 121
	addi	x8, x0, 0	# 1182
	jal		x0, fle_cont.32558	# 121
fle_else.32559:
	lw		x8, 24(x10)	# 387
	beq		x8, x12, beq.32561	# 1177
	addi	x8, x0, 0	# 1178
	fsqrt	f3, f3	# 1178
	fadd	f2, f2, f3	# 1178
	addi	x9, x0, 4	# 1178
	mul		x9, x30, x9	# 1178
	add		x9, x17, x9	# 1178
	flw		f3, 0(x9)	# 1178
	fmul	f2, f2, f3	# 1178
	mul		x8, x30, x8	# 1178
	addi	x8, x8, 60540	# 1178
	fsw		f2, 0(x8)	# 1178
	jal		x0, beq_cont.32560	# 1177
beq.32561:
	addi	x8, x0, 0	# 1180
	fsqrt	f3, f3	# 1180
	fsub	f2, f2, f3	# 1180
	addi	x9, x0, 4	# 1180
	mul		x9, x30, x9	# 1180
	add		x9, x17, x9	# 1180
	flw		f3, 0(x9)	# 1180
	fmul	f2, f2, f3	# 1180
	mul		x8, x30, x8	# 1180
	addi	x8, x8, 60540	# 1180
	fsw		f2, 0(x8)	# 1180
beq_cont.32560:
	addi	x8, x0, 1	# 1181
fle_cont.32558:
feq_cont.32556:
	jal		x0, beq_cont.32554	# 1197
beq.32555:
	mul		x8, x30, x12	# 1160
	add		x8, x17, x8	# 1160
	flw		f2, 0(x8)	# 1160
	fle		x31, f1, f2	# 122
	beq		x31, x0, fle_else.32563	# 122
	addi	x8, x0, 0	# 1163
	jal		x0, fle_cont.32562	# 122
fle_else.32563:
	mul		x8, x30, x12	# 1161
	add		x8, x17, x8	# 1161
	flw		f2, 0(x8)	# 1161
	mul		x8, x30, x11	# 1161
	add		x8, x16, x8	# 1161
	flw		f3, 0(x8)	# 1161
	fmul	f2, f2, f3	# 1161
	mul		x8, x30, x12	# 1161
	addi	x8, x8, 60540	# 1161
	fsw		f2, 0(x8)	# 1161
	addi	x8, x0, 1	# 1162
fle_cont.32562:
beq_cont.32554:
	jal		x0, beq_cont.32552	# 1195
beq.32553:
	lw		x16, 0(x6)	# 653
	mul		x18, x30, x12	# 1078
	add		x18, x17, x18	# 1078
	flw		f5, 0(x18)	# 1078
	fsub	f5, f5, f2	# 1078
	mul		x18, x30, x13	# 1078
	add		x18, x17, x18	# 1078
	flw		f6, 0(x18)	# 1078
	fmul	f5, f5, f6	# 1078
	mul		x18, x30, x13	# 1080
	add		x18, x16, x18	# 1080
	flw		f6, 0(x18)	# 1080
	fmul	f6, f5, f6	# 1080
	fadd	f6, f6, f3	# 1080
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32564	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32564:
	lw		x18, 16(x10)	# 415
	mul		x19, x30, x13	# 420
	add		x18, x18, x19	# 420
	flw		f7, 0(x18)	# 420
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32566	# 125
	addi	x18, x0, 0	# 1084
	jal		x0, fle_cont.32565	# 125
fle_else.32566:
	mul		x18, x30, x9	# 1081
	add		x18, x16, x18	# 1081
	flw		f6, 0(x18)	# 1081
	fmul	f6, f5, f6	# 1081
	fadd	f6, f6, f4	# 1081
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32567	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32567:
	lw		x18, 16(x10)	# 425
	mul		x19, x30, x9	# 430
	add		x18, x18, x19	# 430
	flw		f7, 0(x18)	# 430
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32569	# 125
	addi	x18, x0, 0	# 1083
	jal		x0, fle_cont.32568	# 125
fle_else.32569:
	mul		x18, x30, x13	# 1082
	add		x18, x17, x18	# 1082
	flw		f6, 0(x18)	# 1082
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.32571	# 120
	addi	x18, x0, 0	# 1082
	jal		x0, feq_cont.32570	# 120
feq_else.32571:
	addi	x18, x0, 1	# 1082
feq_cont.32570:
fle_cont.32568:
fle_cont.32565:
	beq		x18, x12, beq.32573	# 1079
	mul		x8, x30, x12	# 1086
	addi	x8, x8, 60540	# 1086
	fsw		f5, 0(x8)	# 1086
	addi	x8, x0, 1	# 1086
	jal		x0, beq_cont.32572	# 1079
beq.32573:
	mul		x18, x30, x9	# 1087
	add		x18, x17, x18	# 1087
	flw		f5, 0(x18)	# 1087
	fsub	f5, f5, f3	# 1087
	mul		x18, x30, x11	# 1087
	add		x18, x17, x18	# 1087
	flw		f6, 0(x18)	# 1087
	fmul	f5, f5, f6	# 1087
	mul		x18, x30, x12	# 1089
	add		x18, x16, x18	# 1089
	flw		f6, 0(x18)	# 1089
	fmul	f7, f5, f6	# 1089
	fadd	f7, f7, f2	# 1089
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.32574	# 124
	fsub	f7, f0, f7	# 124
fle_cont.32574:
	lw		x18, 16(x10)	# 405
	mul		x19, x30, x12	# 410
	add		x18, x18, x19	# 410
	flw		f8, 0(x18)	# 410
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32576	# 125
	addi	x9, x0, 0	# 1093
	jal		x0, fle_cont.32575	# 125
fle_else.32576:
	mul		x18, x30, x9	# 1090
	add		x18, x16, x18	# 1090
	flw		f7, 0(x18)	# 1090
	fmul	f7, f5, f7	# 1090
	fadd	f7, f7, f4	# 1090
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.32577	# 124
	fsub	f7, f0, f7	# 124
fle_cont.32577:
	lw		x18, 16(x10)	# 425
	mul		x9, x30, x9	# 430
	add		x9, x18, x9	# 430
	flw		f8, 0(x9)	# 430
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32579	# 125
	addi	x9, x0, 0	# 1092
	jal		x0, fle_cont.32578	# 125
fle_else.32579:
	mul		x9, x30, x11	# 1091
	add		x9, x17, x9	# 1091
	flw		f7, 0(x9)	# 1091
	feq		x31, f7, f1	# 120
	beq		x31, x0, feq_else.32581	# 120
	addi	x9, x0, 0	# 1091
	jal		x0, feq_cont.32580	# 120
feq_else.32581:
	addi	x9, x0, 1	# 1091
feq_cont.32580:
fle_cont.32578:
fle_cont.32575:
	beq		x9, x12, beq.32583	# 1088
	mul		x8, x30, x12	# 1095
	addi	x8, x8, 60540	# 1095
	fsw		f5, 0(x8)	# 1095
	addi	x8, x0, 2	# 1095
	jal		x0, beq_cont.32582	# 1088
beq.32583:
	addi	x9, x0, 4	# 1096
	mul		x9, x30, x9	# 1096
	add		x9, x17, x9	# 1096
	flw		f5, 0(x9)	# 1096
	fsub	f4, f5, f4	# 1096
	mul		x9, x30, x8	# 1096
	add		x9, x17, x9	# 1096
	flw		f5, 0(x9)	# 1096
	fmul	f4, f4, f5	# 1096
	fmul	f5, f4, f6	# 1098
	fadd	f2, f5, f2	# 1098
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32584	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32584:
	lw		x9, 16(x10)	# 405
	mul		x11, x30, x12	# 410
	add		x9, x9, x11	# 410
	flw		f5, 0(x9)	# 410
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.32586	# 125
	addi	x8, x0, 0	# 1102
	jal		x0, fle_cont.32585	# 125
fle_else.32586:
	mul		x9, x30, x13	# 1099
	add		x9, x16, x9	# 1099
	flw		f2, 0(x9)	# 1099
	fmul	f2, f4, f2	# 1099
	fadd	f2, f2, f3	# 1099
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32587	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32587:
	lw		x9, 16(x10)	# 415
	mul		x10, x30, x13	# 420
	add		x9, x9, x10	# 420
	flw		f3, 0(x9)	# 420
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32589	# 125
	addi	x8, x0, 0	# 1101
	jal		x0, fle_cont.32588	# 125
fle_else.32589:
	mul		x8, x30, x8	# 1100
	add		x8, x17, x8	# 1100
	flw		f2, 0(x8)	# 1100
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.32591	# 120
	addi	x8, x0, 0	# 1100
	jal		x0, feq_cont.32590	# 120
feq_else.32591:
	addi	x8, x0, 1	# 1100
feq_cont.32590:
fle_cont.32588:
fle_cont.32585:
	beq		x8, x12, beq.32593	# 1097
	mul		x8, x30, x12	# 1104
	addi	x8, x8, 60540	# 1104
	fsw		f4, 0(x8)	# 1104
	addi	x8, x0, 3	# 1104
	jal		x0, beq_cont.32592	# 1097
beq.32593:
	addi	x8, x0, 0	# 1106
beq_cont.32592:
beq_cont.32582:
beq_cont.32572:
beq_cont.32552:
	beq		x8, x12, beq.32594	# 1577
	mul		x9, x30, x12	# 1581
	addi	x9, x9, 60540	# 1581
	flw		f2, 0(x9)	# 1581
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x29, -8(x2)	# 125
	sw		x13, -12(x2)	# 125
	sw		x4, -16(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32596	# 125
	jal		x0, fle_cont.32595	# 125
fle_else.32596:
	addi	x9, x0, 0	# 1584
	mul		x9, x30, x9	# 1584
	addi	x9, x9, 60548	# 1584
	flw		f1, 0(x9)	# 1584
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32598	# 125
	jal		x0, fle_cont.32597	# 125
fle_else.32598:
	lui		x9, %hi(l.26728)	# 1586
	ori		x9, x0, %lo(l.26728)	# 1586
	flw		f1, 0(x9)	# 1586
	fadd	f1, f2, f1	# 1586
	addi	x9, x0, 0	# 1587
	mul		x9, x30, x9	# 1587
	add		x9, x14, x9	# 1587
	flw		f2, 0(x9)	# 1587
	fmul	f2, f2, f1	# 1587
	addi	x9, x0, 0	# 1587
	mul		x9, x30, x9	# 1587
	addi	x9, x9, 60648	# 1587
	flw		f3, 0(x9)	# 1587
	fadd	f2, f2, f3	# 1587
	addi	x9, x0, 1	# 1588
	mul		x9, x30, x9	# 1588
	add		x9, x14, x9	# 1588
	flw		f3, 0(x9)	# 1588
	fmul	f3, f3, f1	# 1588
	addi	x9, x0, 1	# 1588
	mul		x9, x30, x9	# 1588
	addi	x9, x9, 60648	# 1588
	flw		f4, 0(x9)	# 1588
	fadd	f3, f3, f4	# 1588
	addi	x9, x0, 2	# 1589
	mul		x9, x30, x9	# 1589
	add		x9, x14, x9	# 1589
	flw		f4, 0(x9)	# 1589
	fmul	f4, f4, f1	# 1589
	addi	x9, x0, 2	# 1589
	mul		x9, x30, x9	# 1589
	addi	x9, x9, 60648	# 1589
	flw		f5, 0(x9)	# 1589
	fadd	f4, f4, f5	# 1589
	addi	x9, x0, 0	# 1590
	sw		x8, -20(x2)	# 1590
	sw		x15, -24(x2)	# 1590
	fsw		f4, -28(x2)	# 1590
	fsw		f3, -32(x2)	# 1590
	fsw		f2, -36(x2)	# 1590
	fsw		f1, -40(x2)	# 1590
	addi	x4, x9, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -44(x2)	# 1590
	addi	x2, x2, -48	# 1590
	lw		x31, 0(x29)	# 1590
	jalr	x1, x31, 0	# 1590
	addi	x2, x2, 48	# 1590
	lw		x1, -44(x2)	# 1590
	addi	x5, x0, 0	# 1590
	beq		x4, x5, beq_cont.32599	# 1590
	addi	x4, x0, 0	# 1592
	mul		x4, x30, x4	# 1592
	addi	x4, x4, 60548	# 1592
	flw		f1, -40(x2)	# 1592
	fsw		f1, 0(x4)	# 1592
	addi	x4, x0, 0	# 254
	mul		x4, x30, x4	# 254
	addi	x4, x4, 60552	# 254
	flw		f1, -36(x2)	# 254
	fsw		f1, 0(x4)	# 254
	addi	x4, x0, 1	# 255
	mul		x4, x30, x4	# 255
	addi	x4, x4, 60552	# 255
	flw		f1, -32(x2)	# 255
	fsw		f1, 0(x4)	# 255
	addi	x4, x0, 2	# 256
	mul		x4, x30, x4	# 256
	addi	x4, x4, 60552	# 256
	flw		f1, -28(x2)	# 256
	fsw		f1, 0(x4)	# 256
	addi	x4, x0, 0	# 1594
	mul		x4, x30, x4	# 1594
	addi	x4, x4, 60564	# 1594
	lw		x5, -24(x2)	# 1594
	sw		x5, 0(x4)	# 1594
	addi	x4, x0, 0	# 1595
	mul		x4, x30, x4	# 1595
	addi	x4, x4, 60544	# 1595
	lw		x5, -20(x2)	# 1595
	sw		x5, 0(x4)	# 1595
beq_cont.32599:
fle_cont.32597:
fle_cont.32595:
	lw		x4, -12(x2)	# 1601
	lw		x5, -16(x2)	# 1601
	add		x4, x5, x4	# 1601
	lw		x5, -4(x2)	# 1601
	lw		x6, 0(x2)	# 1601
	lw		x29, -8(x2)	# 1601
	lw		x31, 0(x29)	# 1601
	jalr	x0, x31, 0	# 1601
beq.32594:
	mul		x7, x30, x15	# 1605
	addi	x7, x7, 60048	# 1605
	lw		x7, 0(x7)	# 1605
	lw		x7, 24(x7)	# 387
	beq		x7, x12, beq.32600	# 1605
	add		x4, x4, x13	# 1606
	lw		x31, 0(x29)	# 1606
	jalr	x0, x31, 0	# 1606
beq.32600:
	jalr	x0, x1, 0	# 1607
beq.32551:
	jalr	x0, x1, 0	# 1574
solve_one_or_network_fast.2864.17795:
	lw		x7, 16(x29)	# 1613
	lw		x8, 12(x29)	# 1613
	lw		x9, 8(x29)	# 1613
	lw		x10, 4(x29)	# 1613
	mul		x11, x30, x4	# 1613
	add		x11, x5, x11	# 1613
	lw		x11, 0(x11)	# 1613
	beq		x11, x8, beq.32603	# 1614
	mul		x8, x30, x11	# 1615
	addi	x8, x8, 60332	# 1615
	lw		x8, 0(x8)	# 1615
	sw		x6, 0(x2)	# 1616
	sw		x5, -4(x2)	# 1616
	sw		x29, -8(x2)	# 1616
	sw		x10, -12(x2)	# 1616
	sw		x4, -16(x2)	# 1616
	addi	x5, x8, 0
	addi	x4, x9, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1616
	addi	x2, x2, -24	# 1616
	lw		x31, 0(x29)	# 1616
	jalr	x1, x31, 0	# 1616
	addi	x2, x2, 24	# 1616
	lw		x1, -20(x2)	# 1616
	lw		x4, -12(x2)	# 1617
	lw		x5, -16(x2)	# 1617
	add		x4, x5, x4	# 1617
	lw		x5, -4(x2)	# 1617
	lw		x6, 0(x2)	# 1617
	lw		x29, -8(x2)	# 1617
	lw		x31, 0(x29)	# 1617
	jalr	x0, x31, 0	# 1617
beq.32603:
	jalr	x0, x1, 0	# 1618
trace_or_matrix_fast.2868.17799:
	lw		x7, 32(x29)	# 1623
	lw		x8, 28(x29)	# 1623
	lw		x9, 24(x29)	# 1623
	lw		x10, 20(x29)	# 1623
	lw		x11, 16(x29)	# 1623
	lw		x12, 12(x29)	# 1623
	lw		x13, 8(x29)	# 1623
	flw		f1, 4(x29)	# 1623
	mul		x14, x30, x4	# 1623
	add		x14, x5, x14	# 1623
	lw		x14, 0(x14)	# 1623
	mul		x15, x30, x12	# 1624
	add		x15, x14, x15	# 1624
	lw		x15, 0(x15)	# 1624
	beq		x15, x10, beq.32605	# 1625
	addi	x10, x0, 99	# 1628
	sw		x6, 0(x2)	# 1628
	sw		x5, -4(x2)	# 1628
	sw		x29, -8(x2)	# 1628
	sw		x13, -12(x2)	# 1628
	sw		x4, -16(x2)	# 1628
	beq		x15, x10, beq.32607	# 1628
	mul		x10, x30, x15	# 1187
	addi	x10, x10, 60048	# 1187
	lw		x10, 0(x10)	# 1187
	lw		x16, 40(x10)	# 562
	addi	x17, x0, 0	# 1189
	mul		x17, x30, x17	# 1189
	add		x17, x16, x17	# 1189
	flw		f2, 0(x17)	# 1189
	addi	x17, x0, 1	# 1190
	mul		x17, x30, x17	# 1190
	add		x17, x16, x17	# 1190
	flw		f3, 0(x17)	# 1190
	addi	x17, x0, 2	# 1191
	mul		x17, x30, x17	# 1191
	add		x17, x16, x17	# 1191
	flw		f4, 0(x17)	# 1191
	lw		x17, 4(x6)	# 659
	mul		x15, x30, x15	# 1193
	add		x15, x17, x15	# 1193
	lw		x15, 0(x15)	# 1193
	lw		x17, 4(x10)	# 367
	addi	x18, x0, 1	# 1195
	beq		x17, x18, beq.32609	# 1195
	addi	x8, x0, 2	# 1197
	beq		x17, x8, beq.32611	# 1197
	mul		x8, x30, x12	# 1169
	add		x8, x15, x8	# 1169
	flw		f5, 0(x8)	# 1169
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32613	# 120
	addi	x8, x0, 0	# 1171
	jal		x0, feq_cont.32612	# 120
feq_else.32613:
	mul		x8, x30, x13	# 1173
	add		x8, x15, x8	# 1173
	flw		f6, 0(x8)	# 1173
	fmul	f2, f6, f2	# 1173
	mul		x8, x30, x9	# 1173
	add		x8, x15, x8	# 1173
	flw		f6, 0(x8)	# 1173
	fmul	f3, f6, f3	# 1173
	fadd	f2, f2, f3	# 1173
	mul		x8, x30, x11	# 1173
	add		x8, x15, x8	# 1173
	flw		f3, 0(x8)	# 1173
	fmul	f3, f3, f4	# 1173
	fadd	f2, f2, f3	# 1173
	mul		x8, x30, x11	# 1174
	add		x8, x16, x8	# 1174
	flw		f3, 0(x8)	# 1174
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1175
	fsub	f3, f4, f3	# 1175
	fle		x31, f3, f1	# 121
	beq		x31, x0, fle_else.32615	# 121
	addi	x8, x0, 0	# 1182
	jal		x0, fle_cont.32614	# 121
fle_else.32615:
	lw		x8, 24(x10)	# 387
	beq		x8, x12, beq.32617	# 1177
	addi	x8, x0, 0	# 1178
	fsqrt	f1, f3	# 1178
	fadd	f1, f2, f1	# 1178
	addi	x9, x0, 4	# 1178
	mul		x9, x30, x9	# 1178
	add		x9, x15, x9	# 1178
	flw		f2, 0(x9)	# 1178
	fmul	f1, f1, f2	# 1178
	mul		x8, x30, x8	# 1178
	addi	x8, x8, 60540	# 1178
	fsw		f1, 0(x8)	# 1178
	jal		x0, beq_cont.32616	# 1177
beq.32617:
	addi	x8, x0, 0	# 1180
	fsqrt	f1, f3	# 1180
	fsub	f1, f2, f1	# 1180
	addi	x9, x0, 4	# 1180
	mul		x9, x30, x9	# 1180
	add		x9, x15, x9	# 1180
	flw		f2, 0(x9)	# 1180
	fmul	f1, f1, f2	# 1180
	mul		x8, x30, x8	# 1180
	addi	x8, x8, 60540	# 1180
	fsw		f1, 0(x8)	# 1180
beq_cont.32616:
	addi	x8, x0, 1	# 1181
fle_cont.32614:
feq_cont.32612:
	jal		x0, beq_cont.32610	# 1197
beq.32611:
	mul		x8, x30, x12	# 1160
	add		x8, x15, x8	# 1160
	flw		f2, 0(x8)	# 1160
	fle		x31, f1, f2	# 122
	beq		x31, x0, fle_else.32619	# 122
	addi	x8, x0, 0	# 1163
	jal		x0, fle_cont.32618	# 122
fle_else.32619:
	mul		x8, x30, x12	# 1161
	add		x8, x15, x8	# 1161
	flw		f1, 0(x8)	# 1161
	mul		x8, x30, x11	# 1161
	add		x8, x16, x8	# 1161
	flw		f2, 0(x8)	# 1161
	fmul	f1, f1, f2	# 1161
	mul		x8, x30, x12	# 1161
	addi	x8, x8, 60540	# 1161
	fsw		f1, 0(x8)	# 1161
	addi	x8, x0, 1	# 1162
fle_cont.32618:
beq_cont.32610:
	jal		x0, beq_cont.32608	# 1195
beq.32609:
	lw		x16, 0(x6)	# 653
	mul		x17, x30, x12	# 1078
	add		x17, x15, x17	# 1078
	flw		f5, 0(x17)	# 1078
	fsub	f5, f5, f2	# 1078
	mul		x17, x30, x13	# 1078
	add		x17, x15, x17	# 1078
	flw		f6, 0(x17)	# 1078
	fmul	f5, f5, f6	# 1078
	mul		x17, x30, x13	# 1080
	add		x17, x16, x17	# 1080
	flw		f6, 0(x17)	# 1080
	fmul	f6, f5, f6	# 1080
	fadd	f6, f6, f3	# 1080
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32620	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32620:
	lw		x17, 16(x10)	# 415
	mul		x18, x30, x13	# 420
	add		x17, x17, x18	# 420
	flw		f7, 0(x17)	# 420
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32622	# 125
	addi	x17, x0, 0	# 1084
	jal		x0, fle_cont.32621	# 125
fle_else.32622:
	mul		x17, x30, x9	# 1081
	add		x17, x16, x17	# 1081
	flw		f6, 0(x17)	# 1081
	fmul	f6, f5, f6	# 1081
	fadd	f6, f6, f4	# 1081
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32623	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32623:
	lw		x17, 16(x10)	# 425
	mul		x18, x30, x9	# 430
	add		x17, x17, x18	# 430
	flw		f7, 0(x17)	# 430
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32625	# 125
	addi	x17, x0, 0	# 1083
	jal		x0, fle_cont.32624	# 125
fle_else.32625:
	mul		x17, x30, x13	# 1082
	add		x17, x15, x17	# 1082
	flw		f6, 0(x17)	# 1082
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.32627	# 120
	addi	x17, x0, 0	# 1082
	jal		x0, feq_cont.32626	# 120
feq_else.32627:
	addi	x17, x0, 1	# 1082
feq_cont.32626:
fle_cont.32624:
fle_cont.32621:
	beq		x17, x12, beq.32629	# 1079
	mul		x8, x30, x12	# 1086
	addi	x8, x8, 60540	# 1086
	fsw		f5, 0(x8)	# 1086
	addi	x8, x0, 1	# 1086
	jal		x0, beq_cont.32628	# 1079
beq.32629:
	mul		x17, x30, x9	# 1087
	add		x17, x15, x17	# 1087
	flw		f5, 0(x17)	# 1087
	fsub	f5, f5, f3	# 1087
	mul		x17, x30, x11	# 1087
	add		x17, x15, x17	# 1087
	flw		f6, 0(x17)	# 1087
	fmul	f5, f5, f6	# 1087
	mul		x17, x30, x12	# 1089
	add		x17, x16, x17	# 1089
	flw		f6, 0(x17)	# 1089
	fmul	f7, f5, f6	# 1089
	fadd	f7, f7, f2	# 1089
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.32630	# 124
	fsub	f7, f0, f7	# 124
fle_cont.32630:
	lw		x17, 16(x10)	# 405
	mul		x18, x30, x12	# 410
	add		x17, x17, x18	# 410
	flw		f8, 0(x17)	# 410
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32632	# 125
	addi	x9, x0, 0	# 1093
	jal		x0, fle_cont.32631	# 125
fle_else.32632:
	mul		x17, x30, x9	# 1090
	add		x17, x16, x17	# 1090
	flw		f7, 0(x17)	# 1090
	fmul	f7, f5, f7	# 1090
	fadd	f7, f7, f4	# 1090
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.32633	# 124
	fsub	f7, f0, f7	# 124
fle_cont.32633:
	lw		x17, 16(x10)	# 425
	mul		x9, x30, x9	# 430
	add		x9, x17, x9	# 430
	flw		f8, 0(x9)	# 430
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32635	# 125
	addi	x9, x0, 0	# 1092
	jal		x0, fle_cont.32634	# 125
fle_else.32635:
	mul		x9, x30, x11	# 1091
	add		x9, x15, x9	# 1091
	flw		f7, 0(x9)	# 1091
	feq		x31, f7, f1	# 120
	beq		x31, x0, feq_else.32637	# 120
	addi	x9, x0, 0	# 1091
	jal		x0, feq_cont.32636	# 120
feq_else.32637:
	addi	x9, x0, 1	# 1091
feq_cont.32636:
fle_cont.32634:
fle_cont.32631:
	beq		x9, x12, beq.32639	# 1088
	mul		x8, x30, x12	# 1095
	addi	x8, x8, 60540	# 1095
	fsw		f5, 0(x8)	# 1095
	addi	x8, x0, 2	# 1095
	jal		x0, beq_cont.32638	# 1088
beq.32639:
	addi	x9, x0, 4	# 1096
	mul		x9, x30, x9	# 1096
	add		x9, x15, x9	# 1096
	flw		f5, 0(x9)	# 1096
	fsub	f4, f5, f4	# 1096
	mul		x9, x30, x8	# 1096
	add		x9, x15, x9	# 1096
	flw		f5, 0(x9)	# 1096
	fmul	f4, f4, f5	# 1096
	fmul	f5, f4, f6	# 1098
	fadd	f2, f5, f2	# 1098
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32640	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32640:
	lw		x9, 16(x10)	# 405
	mul		x11, x30, x12	# 410
	add		x9, x9, x11	# 410
	flw		f5, 0(x9)	# 410
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.32642	# 125
	addi	x8, x0, 0	# 1102
	jal		x0, fle_cont.32641	# 125
fle_else.32642:
	mul		x9, x30, x13	# 1099
	add		x9, x16, x9	# 1099
	flw		f2, 0(x9)	# 1099
	fmul	f2, f4, f2	# 1099
	fadd	f2, f2, f3	# 1099
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32643	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32643:
	lw		x9, 16(x10)	# 415
	mul		x10, x30, x13	# 420
	add		x9, x9, x10	# 420
	flw		f3, 0(x9)	# 420
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32645	# 125
	addi	x8, x0, 0	# 1101
	jal		x0, fle_cont.32644	# 125
fle_else.32645:
	mul		x8, x30, x8	# 1100
	add		x8, x15, x8	# 1100
	flw		f2, 0(x8)	# 1100
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.32647	# 120
	addi	x8, x0, 0	# 1100
	jal		x0, feq_cont.32646	# 120
feq_else.32647:
	addi	x8, x0, 1	# 1100
feq_cont.32646:
fle_cont.32644:
fle_cont.32641:
	beq		x8, x12, beq.32649	# 1097
	mul		x8, x30, x12	# 1104
	addi	x8, x8, 60540	# 1104
	fsw		f4, 0(x8)	# 1104
	addi	x8, x0, 3	# 1104
	jal		x0, beq_cont.32648	# 1097
beq.32649:
	addi	x8, x0, 0	# 1106
beq_cont.32648:
beq_cont.32638:
beq_cont.32628:
beq_cont.32608:
	addi	x9, x0, 0	# 1634
	beq		x8, x9, beq_cont.32650	# 1634
	addi	x8, x0, 0	# 1635
	mul		x8, x30, x8	# 1635
	addi	x8, x8, 60540	# 1635
	flw		f1, 0(x8)	# 1635
	addi	x8, x0, 0	# 1636
	mul		x8, x30, x8	# 1636
	addi	x8, x8, 60548	# 1636
	flw		f2, 0(x8)	# 1636
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32652	# 125
	jal		x0, fle_cont.32651	# 125
fle_else.32652:
	addi	x8, x0, 1	# 1637
	addi	x5, x14, 0
	addi	x4, x8, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1637
	addi	x2, x2, -24	# 1637
	lw		x31, 0(x29)	# 1637
	jalr	x1, x31, 0	# 1637
	addi	x2, x2, 24	# 1637
	lw		x1, -20(x2)	# 1637
fle_cont.32651:
beq_cont.32650:
	jal		x0, beq_cont.32606	# 1628
beq.32607:
	addi	x8, x0, 1	# 1629
	addi	x5, x14, 0
	addi	x4, x8, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1629
	addi	x2, x2, -24	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x1, x31, 0	# 1629
	addi	x2, x2, 24	# 1629
	lw		x1, -20(x2)	# 1629
beq_cont.32606:
	lw		x4, -12(x2)	# 1641
	lw		x5, -16(x2)	# 1641
	add		x4, x5, x4	# 1641
	lw		x5, -4(x2)	# 1641
	lw		x6, 0(x2)	# 1641
	lw		x29, -8(x2)	# 1641
	lw		x31, 0(x29)	# 1641
	jalr	x0, x31, 0	# 1641
beq.32605:
	jalr	x0, x1, 0	# 1626
trace_reflections.2890.17803:
	lw		x6, 28(x29)	# 1818
	lw		x7, 24(x29)	# 1818
	lw		x8, 20(x29)	# 1818
	lw		x9, 16(x29)	# 1818
	lw		x10, 12(x29)	# 1818
	flw		f3, 8(x29)	# 1818
	flw		f4, 4(x29)	# 1818
	ble		x9, x4, ble.32654	# 1818
	jalr	x0, x1, 0	# 1838
ble.32654:
	mul		x11, x30, x4	# 1819
	addi	x11, x11, 61016	# 1819
	lw		x11, 0(x11)	# 1819
	lw		x12, 4(x11)	# 675
	mul		x13, x30, x9	# 1648
	addi	x13, x13, 60548	# 1648
	fsw		f3, 0(x13)	# 1648
	mul		x13, x30, x9	# 1649
	addi	x13, x13, 60536	# 1649
	lw		x13, 0(x13)	# 1649
	sw		x29, 0(x2)	# 1649
	sw		x4, -4(x2)	# 1649
	fsw		f2, -8(x2)	# 1649
	sw		x8, -12(x2)	# 1649
	sw		x10, -16(x2)	# 1649
	fsw		f4, -20(x2)	# 1649
	sw		x5, -24(x2)	# 1649
	fsw		f1, -28(x2)	# 1649
	sw		x12, -32(x2)	# 1649
	sw		x7, -36(x2)	# 1649
	sw		x11, -40(x2)	# 1649
	sw		x9, -44(x2)	# 1649
	addi	x5, x13, 0
	addi	x4, x9, 0
	addi	x29, x6, 0
	addi	x6, x12, 0
	sw		x1, -48(x2)	# 1649
	addi	x2, x2, -52	# 1649
	lw		x31, 0(x29)	# 1649
	jalr	x1, x31, 0	# 1649
	addi	x2, x2, 52	# 1649
	lw		x1, -48(x2)	# 1649
	lw		x4, -44(x2)	# 1650
	mul		x5, x30, x4	# 1650
	addi	x5, x5, 60548	# 1650
	flw		f1, 0(x5)	# 1650
	fadd	f2, f0, f23	# 1652
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32657	# 125
	addi	x5, x0, 0	# 1654
	jal		x0, fle_cont.32656	# 125
fle_else.32657:
	fadd	f2, f0, f25	# 1653
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32659	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32658	# 125
fle_else.32659:
	addi	x5, x0, 1	# 125
fle_cont.32658:
fle_cont.32656:
	beq		x5, x4, beq_cont.32660	# 1823
	addi	x5, x0, 0	# 1824
	mul		x5, x30, x5	# 1824
	addi	x5, x5, 60564	# 1824
	lw		x5, 0(x5)	# 1824
	addi	x6, x0, 4	# 1824
	mul		x5, x5, x6	# 1824
	addi	x6, x0, 0	# 1824
	mul		x6, x30, x6	# 1824
	addi	x6, x6, 60544	# 1824
	lw		x6, 0(x6)	# 1824
	add		x5, x5, x6	# 1824
	lw		x6, -40(x2)	# 669
	lw		x7, 0(x6)	# 669
	beq		x5, x7, beq.32662	# 1825
	jal		x0, beq_cont.32661	# 1825
beq.32662:
	addi	x5, x0, 0	# 1827
	addi	x7, x0, 0	# 1827
	mul		x7, x30, x7	# 1827
	addi	x7, x7, 60536	# 1827
	lw		x7, 0(x7)	# 1827
	lw		x29, -36(x2)	# 1827
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -48(x2)	# 1827
	addi	x2, x2, -52	# 1827
	lw		x31, 0(x29)	# 1827
	jalr	x1, x31, 0	# 1827
	addi	x2, x2, 52	# 1827
	lw		x1, -48(x2)	# 1827
	addi	x5, x0, 0	# 1827
	beq		x4, x5, beq.32664	# 1827
	jal		x0, beq_cont.32663	# 1827
beq.32664:
	lw		x4, -32(x2)	# 653
	lw		x5, 0(x4)	# 653
	addi	x6, x0, 0	# 306
	mul		x6, x30, x6	# 306
	addi	x6, x6, 60568	# 306
	flw		f1, 0(x6)	# 306
	addi	x6, x0, 0	# 306
	mul		x6, x30, x6	# 306
	add		x6, x5, x6	# 306
	flw		f2, 0(x6)	# 306
	fmul	f1, f1, f2	# 306
	addi	x6, x0, 1	# 306
	mul		x6, x30, x6	# 306
	addi	x6, x6, 60568	# 306
	flw		f2, 0(x6)	# 306
	addi	x6, x0, 1	# 306
	mul		x6, x30, x6	# 306
	add		x6, x5, x6	# 306
	flw		f3, 0(x6)	# 306
	fmul	f2, f2, f3	# 306
	fadd	f1, f1, f2	# 306
	addi	x6, x0, 2	# 306
	mul		x6, x30, x6	# 306
	addi	x6, x6, 60568	# 306
	flw		f2, 0(x6)	# 306
	addi	x6, x0, 2	# 306
	mul		x6, x30, x6	# 306
	add		x5, x5, x6	# 306
	flw		f3, 0(x5)	# 306
	fmul	f2, f2, f3	# 306
	fadd	f1, f1, f2	# 306
	lw		x5, -40(x2)	# 1831
	flw		f2, 8(x5)	# 1831
	flw		f3, -28(x2)	# 1831
	fmul	f4, f2, f3	# 1831
	fmul	f1, f4, f1	# 1831
	lw		x4, 0(x4)	# 653
	addi	x5, x0, 0	# 306
	mul		x5, x30, x5	# 306
	lw		x6, -24(x2)	# 306
	add		x5, x6, x5	# 306
	flw		f4, 0(x5)	# 306
	addi	x5, x0, 0	# 306
	mul		x5, x30, x5	# 306
	add		x5, x4, x5	# 306
	flw		f5, 0(x5)	# 306
	fmul	f4, f4, f5	# 306
	addi	x5, x0, 1	# 306
	mul		x5, x30, x5	# 306
	add		x5, x6, x5	# 306
	flw		f5, 0(x5)	# 306
	addi	x5, x0, 1	# 306
	mul		x5, x30, x5	# 306
	add		x5, x4, x5	# 306
	flw		f6, 0(x5)	# 306
	fmul	f5, f5, f6	# 306
	fadd	f4, f4, f5	# 306
	addi	x5, x0, 2	# 306
	mul		x5, x30, x5	# 306
	add		x5, x6, x5	# 306
	flw		f5, 0(x5)	# 306
	addi	x5, x0, 2	# 306
	mul		x5, x30, x5	# 306
	add		x4, x4, x5	# 306
	flw		f6, 0(x4)	# 306
	fmul	f5, f5, f6	# 306
	fadd	f4, f4, f5	# 306
	fmul	f2, f2, f4	# 1832
	flw		f4, -20(x2)	# 121
	fle		x31, f1, f4	# 121
	beq		x31, x0, fle_else.32666	# 121
	jal		x0, fle_cont.32665	# 121
fle_else.32666:
	lw		x4, -44(x2)	# 316
	mul		x5, x30, x4	# 316
	addi	x5, x5, 60604	# 316
	flw		f5, 0(x5)	# 316
	mul		x5, x30, x4	# 316
	addi	x5, x5, 60580	# 316
	flw		f6, 0(x5)	# 316
	fmul	f6, f1, f6	# 316
	fadd	f5, f5, f6	# 316
	mul		x4, x30, x4	# 316
	addi	x4, x4, 60604	# 316
	fsw		f5, 0(x4)	# 316
	lw		x4, -16(x2)	# 317
	mul		x5, x30, x4	# 317
	addi	x5, x5, 60604	# 317
	flw		f5, 0(x5)	# 317
	mul		x5, x30, x4	# 317
	addi	x5, x5, 60580	# 317
	flw		f6, 0(x5)	# 317
	fmul	f6, f1, f6	# 317
	fadd	f5, f5, f6	# 317
	mul		x5, x30, x4	# 317
	addi	x5, x5, 60604	# 317
	fsw		f5, 0(x5)	# 317
	lw		x5, -12(x2)	# 318
	mul		x7, x30, x5	# 318
	addi	x7, x7, 60604	# 318
	flw		f5, 0(x7)	# 318
	mul		x7, x30, x5	# 318
	addi	x7, x7, 60580	# 318
	flw		f6, 0(x7)	# 318
	fmul	f1, f1, f6	# 318
	fadd	f1, f5, f1	# 318
	mul		x5, x30, x5	# 318
	addi	x5, x5, 60604	# 318
	fsw		f1, 0(x5)	# 318
fle_cont.32665:
	fle		x31, f2, f4	# 121
	beq		x31, x0, fle_else.32668	# 121
	jal		x0, fle_cont.32667	# 121
fle_else.32668:
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -8(x2)	# 1808
	fmul	f1, f1, f2	# 1808
	addi	x4, x0, 0	# 1809
	addi	x5, x0, 0	# 1809
	mul		x5, x30, x5	# 1809
	addi	x5, x5, 60604	# 1809
	flw		f4, 0(x5)	# 1809
	fadd	f4, f4, f1	# 1809
	mul		x4, x30, x4	# 1809
	addi	x4, x4, 60604	# 1809
	fsw		f4, 0(x4)	# 1809
	addi	x4, x0, 1	# 1810
	addi	x5, x0, 1	# 1810
	mul		x5, x30, x5	# 1810
	addi	x5, x5, 60604	# 1810
	flw		f4, 0(x5)	# 1810
	fadd	f4, f4, f1	# 1810
	mul		x4, x30, x4	# 1810
	addi	x4, x4, 60604	# 1810
	fsw		f4, 0(x4)	# 1810
	addi	x4, x0, 2	# 1811
	mul		x5, x30, x4	# 1811
	addi	x5, x5, 60604	# 1811
	flw		f4, 0(x5)	# 1811
	fadd	f1, f4, f1	# 1811
	mul		x4, x30, x4	# 1811
	addi	x4, x4, 60604	# 1811
	fsw		f1, 0(x4)	# 1811
fle_cont.32667:
beq_cont.32663:
beq_cont.32661:
beq_cont.32660:
	lw		x4, -16(x2)	# 1837
	lw		x5, -4(x2)	# 1837
	sub		x4, x5, x4	# 1837
	flw		f1, -28(x2)	# 1837
	flw		f2, -8(x2)	# 1837
	lw		x5, -24(x2)	# 1837
	lw		x29, 0(x2)	# 1837
	lw		x31, 0(x29)	# 1837
	jalr	x0, x31, 0	# 1837
trace_ray.2895.17808:
	lw		x7, 68(x29)	# 1846
	lw		x8, 64(x29)	# 1846
	lw		x9, 60(x29)	# 1846
	lw		x10, 56(x29)	# 1846
	lw		x11, 52(x29)	# 1846
	lw		x12, 48(x29)	# 1846
	lw		x13, 44(x29)	# 1846
	lw		x14, 40(x29)	# 1846
	lw		x15, 36(x29)	# 1846
	lw		x16, 32(x29)	# 1846
	lw		x17, 28(x29)	# 1846
	lw		x18, 24(x29)	# 1846
	lw		x19, 20(x29)	# 1846
	lw		x20, 16(x29)	# 1846
	flw		f3, 12(x29)	# 1846
	flw		f4, 8(x29)	# 1846
	flw		f5, 4(x29)	# 1846
	addi	x21, x0, 4	# 1846
	ble		x4, x21, ble.32669	# 1846
	jalr	x0, x1, 0	# 1927
ble.32669:
	lw		x22, 8(x6)	# 591
	mul		x23, x30, x19	# 1557
	addi	x23, x23, 60548	# 1557
	fsw		f3, 0(x23)	# 1557
	mul		x23, x30, x19	# 1558
	addi	x23, x23, 60536	# 1558
	lw		x23, 0(x23)	# 1558
	sw		x29, 0(x2)	# 1558
	fsw		f2, -4(x2)	# 1558
	sw		x7, -8(x2)	# 1558
	sw		x11, -12(x2)	# 1558
	sw		x10, -16(x2)	# 1558
	sw		x6, -20(x2)	# 1558
	sw		x21, -24(x2)	# 1558
	sw		x15, -28(x2)	# 1558
	sw		x14, -32(x2)	# 1558
	sw		x18, -36(x2)	# 1558
	sw		x9, -40(x2)	# 1558
	fsw		f4, -44(x2)	# 1558
	sw		x13, -48(x2)	# 1558
	sw		x12, -52(x2)	# 1558
	fsw		f1, -56(x2)	# 1558
	fsw		f5, -60(x2)	# 1558
	sw		x16, -64(x2)	# 1558
	sw		x20, -68(x2)	# 1558
	sw		x5, -72(x2)	# 1558
	sw		x17, -76(x2)	# 1558
	sw		x22, -80(x2)	# 1558
	sw		x4, -84(x2)	# 1558
	sw		x19, -88(x2)	# 1558
	addi	x6, x5, 0
	addi	x4, x19, 0
	addi	x29, x8, 0
	addi	x5, x23, 0
	sw		x1, -92(x2)	# 1558
	addi	x2, x2, -96	# 1558
	lw		x31, 0(x29)	# 1558
	jalr	x1, x31, 0	# 1558
	addi	x2, x2, 96	# 1558
	lw		x1, -92(x2)	# 1558
	lw		x4, -88(x2)	# 1559
	mul		x5, x30, x4	# 1559
	addi	x5, x5, 60548	# 1559
	flw		f1, 0(x5)	# 1559
	fadd	f2, f0, f23	# 1561
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32672	# 125
	addi	x5, x0, 0	# 1563
	jal		x0, fle_cont.32671	# 125
fle_else.32672:
	fadd	f2, f0, f25	# 1562
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32674	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32673	# 125
fle_else.32674:
	addi	x5, x0, 1	# 125
fle_cont.32673:
fle_cont.32671:
	beq		x5, x4, beq.32675	# 1848
	mul		x5, x30, x4	# 1850
	addi	x5, x5, 60564	# 1850
	lw		x5, 0(x5)	# 1850
	mul		x6, x30, x5	# 1851
	addi	x6, x6, 60048	# 1851
	lw		x6, 0(x6)	# 1851
	lw		x7, 8(x6)	# 377
	lw		x8, 28(x6)	# 475
	mul		x9, x30, x4	# 480
	add		x8, x8, x9	# 480
	flw		f1, 0(x8)	# 480
	flw		f2, -56(x2)	# 1853
	fmul	f1, f1, f2	# 1853
	lw		x8, 4(x6)	# 367
	lw		x9, -68(x2)	# 1707
	beq		x8, x9, beq.32677	# 1707
	addi	x10, x0, 2	# 1709
	beq		x8, x10, beq.32679	# 1709
	mul		x8, x30, x4	# 1684
	addi	x8, x8, 60552	# 1684
	flw		f3, 0(x8)	# 1684
	lw		x8, 20(x6)	# 445
	mul		x10, x30, x4	# 450
	add		x8, x8, x10	# 450
	flw		f4, 0(x8)	# 450
	fsub	f3, f3, f4	# 1684
	mul		x8, x30, x9	# 1685
	addi	x8, x8, 60552	# 1685
	flw		f4, 0(x8)	# 1685
	lw		x8, 20(x6)	# 455
	mul		x10, x30, x9	# 460
	add		x8, x8, x10	# 460
	flw		f5, 0(x8)	# 460
	fsub	f4, f4, f5	# 1685
	lw		x8, -64(x2)	# 1686
	mul		x10, x30, x8	# 1686
	addi	x10, x10, 60552	# 1686
	flw		f5, 0(x10)	# 1686
	lw		x10, 20(x6)	# 465
	mul		x11, x30, x8	# 470
	add		x10, x10, x11	# 470
	flw		f6, 0(x10)	# 470
	fsub	f5, f5, f6	# 1686
	lw		x10, 16(x6)	# 405
	mul		x11, x30, x4	# 410
	add		x10, x10, x11	# 410
	flw		f6, 0(x10)	# 410
	fmul	f6, f3, f6	# 1688
	lw		x10, 16(x6)	# 415
	mul		x11, x30, x9	# 420
	add		x10, x10, x11	# 420
	flw		f7, 0(x10)	# 420
	fmul	f7, f4, f7	# 1689
	lw		x10, 16(x6)	# 425
	mul		x11, x30, x8	# 430
	add		x10, x10, x11	# 430
	flw		f8, 0(x10)	# 430
	fmul	f8, f5, f8	# 1690
	lw		x10, 12(x6)	# 396
	beq		x10, x4, beq.32681	# 1692
	addi	x10, x0, 0	# 1697
	lw		x11, 36(x6)	# 545
	addi	x12, x0, 2	# 550
	mul		x12, x30, x12	# 550
	add		x11, x11, x12	# 550
	flw		f9, 0(x11)	# 550
	fmul	f9, f4, f9	# 1697
	lw		x11, 36(x6)	# 535
	addi	x12, x0, 1	# 540
	mul		x12, x30, x12	# 540
	add		x11, x11, x12	# 540
	flw		f10, 0(x11)	# 540
	fmul	f10, f5, f10	# 1697
	fadd	f9, f9, f10	# 1697
	fadd	f10, f0, f17	# 126
	fmul	f9, f9, f10	# 126
	fadd	f6, f6, f9	# 1697
	mul		x10, x30, x10	# 1697
	addi	x10, x10, 60568	# 1697
	fsw		f6, 0(x10)	# 1697
	addi	x10, x0, 1	# 1698
	lw		x11, 36(x6)	# 545
	addi	x12, x0, 2	# 550
	mul		x12, x30, x12	# 550
	add		x11, x11, x12	# 550
	flw		f6, 0(x11)	# 550
	fmul	f6, f3, f6	# 1698
	lw		x11, 36(x6)	# 525
	addi	x12, x0, 0	# 530
	mul		x12, x30, x12	# 530
	add		x11, x11, x12	# 530
	flw		f9, 0(x11)	# 530
	fmul	f5, f5, f9	# 1698
	fadd	f5, f6, f5	# 1698
	fadd	f6, f0, f17	# 126
	fmul	f5, f5, f6	# 126
	fadd	f5, f7, f5	# 1698
	mul		x10, x30, x10	# 1698
	addi	x10, x10, 60568	# 1698
	fsw		f5, 0(x10)	# 1698
	addi	x10, x0, 2	# 1699
	lw		x11, 36(x6)	# 535
	addi	x12, x0, 1	# 540
	mul		x12, x30, x12	# 540
	add		x11, x11, x12	# 540
	flw		f5, 0(x11)	# 540
	fmul	f3, f3, f5	# 1699
	lw		x11, 36(x6)	# 525
	addi	x12, x0, 0	# 530
	mul		x12, x30, x12	# 530
	add		x11, x11, x12	# 530
	flw		f5, 0(x11)	# 530
	fmul	f4, f4, f5	# 1699
	fadd	f3, f3, f4	# 1699
	fadd	f4, f0, f17	# 126
	fmul	f3, f3, f4	# 126
	fadd	f3, f8, f3	# 1699
	mul		x10, x30, x10	# 1699
	addi	x10, x10, 60568	# 1699
	fsw		f3, 0(x10)	# 1699
	jal		x0, beq_cont.32680	# 1692
beq.32681:
	addi	x10, x0, 0	# 1693
	mul		x10, x30, x10	# 1693
	addi	x10, x10, 60568	# 1693
	fsw		f6, 0(x10)	# 1693
	addi	x10, x0, 1	# 1694
	mul		x10, x30, x10	# 1694
	addi	x10, x10, 60568	# 1694
	fsw		f7, 0(x10)	# 1694
	addi	x10, x0, 2	# 1695
	mul		x10, x30, x10	# 1695
	addi	x10, x10, 60568	# 1695
	fsw		f8, 0(x10)	# 1695
beq_cont.32680:
	lw		x10, 24(x6)	# 387
	mul		x11, x30, x4	# 297
	addi	x11, x11, 60568	# 297
	flw		f3, 0(x11)	# 297
	fmul	f3, f3, f3	# 127
	mul		x11, x30, x9	# 297
	addi	x11, x11, 60568	# 297
	flw		f4, 0(x11)	# 297
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 297
	mul		x11, x30, x8	# 297
	addi	x11, x11, 60568	# 297
	flw		f4, 0(x11)	# 297
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 297
	fsqrt	f3, f3	# 297
	flw		f4, -60(x2)	# 120
	feq		x31, f3, f4	# 120
	beq		x31, x0, feq_else.32683	# 120
	fadd	f3, f0, f16	# 298
	jal		x0, feq_cont.32682	# 120
feq_else.32683:
	beq		x10, x4, beq.32685	# 298
	fadd	f5, f0, f18	# 298
	fdiv	f3, f5, f3	# 298
	jal		x0, beq_cont.32684	# 298
beq.32685:
	fadd	f5, f0, f16	# 298
	fdiv	f3, f5, f3	# 298
beq_cont.32684:
feq_cont.32682:
	mul		x10, x30, x4	# 299
	addi	x10, x10, 60568	# 299
	flw		f5, 0(x10)	# 299
	fmul	f5, f5, f3	# 299
	mul		x10, x30, x4	# 299
	addi	x10, x10, 60568	# 299
	fsw		f5, 0(x10)	# 299
	mul		x10, x30, x9	# 300
	addi	x10, x10, 60568	# 300
	flw		f5, 0(x10)	# 300
	fmul	f5, f5, f3	# 300
	mul		x10, x30, x9	# 300
	addi	x10, x10, 60568	# 300
	fsw		f5, 0(x10)	# 300
	mul		x10, x30, x8	# 301
	addi	x10, x10, 60568	# 301
	flw		f5, 0(x10)	# 301
	fmul	f3, f5, f3	# 301
	mul		x10, x30, x8	# 301
	addi	x10, x10, 60568	# 301
	fsw		f3, 0(x10)	# 301
	jal		x0, beq_cont.32678	# 1709
beq.32679:
	lw		x8, 16(x6)	# 405
	mul		x10, x30, x4	# 410
	add		x8, x8, x10	# 410
	flw		f3, 0(x8)	# 410
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x4	# 1677
	addi	x8, x8, 60568	# 1677
	fsw		f3, 0(x8)	# 1677
	lw		x8, 16(x6)	# 415
	mul		x10, x30, x9	# 420
	add		x8, x8, x10	# 420
	flw		f3, 0(x8)	# 420
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x9	# 1678
	addi	x8, x8, 60568	# 1678
	fsw		f3, 0(x8)	# 1678
	lw		x8, 16(x6)	# 425
	lw		x10, -64(x2)	# 430
	mul		x11, x30, x10	# 430
	add		x8, x8, x11	# 430
	flw		f3, 0(x8)	# 430
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x10	# 1679
	addi	x8, x8, 60568	# 1679
	fsw		f3, 0(x8)	# 1679
beq_cont.32678:
	jal		x0, beq_cont.32676	# 1707
beq.32677:
	mul		x8, x30, x4	# 1668
	addi	x8, x8, 60544	# 1668
	lw		x8, 0(x8)	# 1668
	fadd	f3, f0, f0	# 268
	mul		x10, x30, x4	# 261
	addi	x10, x10, 60568	# 261
	fsw		f3, 0(x10)	# 261
	mul		x10, x30, x9	# 262
	addi	x10, x10, 60568	# 262
	fsw		f3, 0(x10)	# 262
	lw		x10, -64(x2)	# 263
	mul		x11, x30, x10	# 263
	addi	x11, x11, 60568	# 263
	fsw		f3, 0(x11)	# 263
	sub		x11, x8, x9	# 1671
	sub		x8, x8, x9	# 1671
	mul		x8, x30, x8	# 1671
	lw		x12, -72(x2)	# 1671
	add		x8, x12, x8	# 1671
	flw		f3, 0(x8)	# 1671
	flw		f4, -60(x2)	# 120
	feq		x31, f3, f4	# 120
	beq		x31, x0, feq_else.32687	# 120
	fadd	f3, f0, f4	# 226
	jal		x0, feq_cont.32686	# 120
feq_else.32687:
	fle		x31, f3, f4	# 121
	beq		x31, x0, fle_else.32689	# 121
	fadd	f3, f0, f18	# 228
	jal		x0, fle_cont.32688	# 121
fle_else.32689:
	fadd	f3, f0, f16	# 227
fle_cont.32688:
feq_cont.32686:
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x11	# 1671
	addi	x8, x8, 60568	# 1671
	fsw		f3, 0(x8)	# 1671
beq_cont.32676:
	mul		x8, x30, x4	# 273
	addi	x8, x8, 60552	# 273
	flw		f3, 0(x8)	# 273
	mul		x8, x30, x4	# 273
	addi	x8, x8, 60636	# 273
	fsw		f3, 0(x8)	# 273
	mul		x8, x30, x9	# 274
	addi	x8, x8, 60552	# 274
	flw		f3, 0(x8)	# 274
	mul		x8, x30, x9	# 274
	addi	x8, x8, 60636	# 274
	fsw		f3, 0(x8)	# 274
	lw		x8, -64(x2)	# 275
	mul		x10, x30, x8	# 275
	addi	x10, x10, 60552	# 275
	flw		f3, 0(x10)	# 275
	mul		x10, x30, x8	# 275
	addi	x10, x10, 60636	# 275
	fsw		f3, 0(x10)	# 275
	lw		x10, 0(x6)	# 357
	lw		x11, 32(x6)	# 495
	mul		x12, x30, x4	# 500
	add		x11, x11, x12	# 500
	flw		f3, 0(x11)	# 500
	mul		x11, x30, x4	# 1724
	addi	x11, x11, 60580	# 1724
	fsw		f3, 0(x11)	# 1724
	lw		x11, 32(x6)	# 505
	mul		x12, x30, x9	# 510
	add		x11, x11, x12	# 510
	flw		f3, 0(x11)	# 510
	mul		x11, x30, x9	# 1725
	addi	x11, x11, 60580	# 1725
	fsw		f3, 0(x11)	# 1725
	lw		x11, 32(x6)	# 515
	mul		x12, x30, x8	# 520
	add		x11, x11, x12	# 520
	flw		f3, 0(x11)	# 520
	mul		x11, x30, x8	# 1726
	addi	x11, x11, 60580	# 1726
	fsw		f3, 0(x11)	# 1726
	sw		x7, -92(x2)	# 1727
	fsw		f1, -96(x2)	# 1727
	sw		x6, -100(x2)	# 1727
	sw		x5, -104(x2)	# 1727
	beq		x10, x9, beq.32691	# 1727
	beq		x10, x8, beq.32693	# 1745
	lw		x11, -36(x2)	# 1752
	beq		x10, x11, beq.32695	# 1752
	addi	x11, x0, 4	# 1763
	beq		x10, x11, beq.32697	# 1763
	jal		x0, beq_cont.32696	# 1763
beq.32697:
	mul		x10, x30, x4	# 1765
	addi	x10, x10, 60552	# 1765
	flw		f3, 0(x10)	# 1765
	lw		x10, 20(x6)	# 445
	mul		x11, x30, x4	# 450
	add		x10, x10, x11	# 450
	flw		f4, 0(x10)	# 450
	fsub	f3, f3, f4	# 1765
	lw		x10, 16(x6)	# 405
	mul		x11, x30, x4	# 410
	add		x10, x10, x11	# 410
	flw		f4, 0(x10)	# 410
	fsqrt	f4, f4	# 1765
	fmul	f3, f3, f4	# 1765
	mul		x10, x30, x8	# 1766
	addi	x10, x10, 60552	# 1766
	flw		f4, 0(x10)	# 1766
	lw		x10, 20(x6)	# 465
	mul		x11, x30, x8	# 470
	add		x10, x10, x11	# 470
	flw		f5, 0(x10)	# 470
	fsub	f4, f4, f5	# 1766
	lw		x10, 16(x6)	# 425
	mul		x11, x30, x8	# 430
	add		x10, x10, x11	# 430
	flw		f5, 0(x10)	# 430
	fsqrt	f5, f5	# 1766
	fmul	f4, f4, f5	# 1766
	fmul	f5, f3, f3	# 127
	fmul	f6, f4, f4	# 127
	fadd	f5, f5, f6	# 1767
	flw		f6, -60(x2)	# 124
	fle		x31, f3, f6	# 124
	beq		x31, x0, fle_else.32699	# 124
	fsub	f7, f0, f3	# 124
	jal		x0, fle_cont.32698	# 124
fle_else.32699:
	fadd	f7, f0, f3	# 124
fle_cont.32698:
	lui		x10, %hi(l.27605)	# 1769
	ori		x10, x0, %lo(l.27605)	# 1769
	flw		f8, 0(x10)	# 1769
	fsw		f8, -108(x2)	# 125
	fsw		f5, -112(x2)	# 125
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32701	# 125
	fdiv	f3, f4, f3	# 1772
	fle		x31, f3, f6	# 124
	beq		x31, x0, fle_cont.32702	# 124
	fsub	f3, f0, f3	# 124
fle_cont.32702:
	lw		x29, -28(x2)	# 1774
	fadd	f1, f0, f3
	sw		x1, -116(x2)	# 1774
	addi	x2, x2, -120	# 1774
	lw		x31, 0(x29)	# 1774
	jalr	x1, x31, 0	# 1774
	addi	x2, x2, 120	# 1774
	lw		x1, -116(x2)	# 1774
	fadd	f2, f0, f21	# 1774
	fmul	f1, f1, f2	# 1774
	fadd	f2, f0, f19	# 1774
	fdiv	f1, f1, f2	# 1774
	jal		x0, fle_cont.32700	# 125
fle_else.32701:
	fadd	f1, f0, f20	# 1770
fle_cont.32700:
	flw		f2, -60(x2)	# 151
	fsw		f1, -116(x2)	# 151
	fle		x31, f2, f1	# 151
	beq		x31, x0, fle_else.32704	# 151
	lw		x29, -52(x2)	# 151
	sw		x1, -120(x2)	# 151
	addi	x2, x2, -124	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 124	# 151
	lw		x1, -120(x2)	# 151
	lw		x29, -48(x2)	# 151
	sw		x1, -120(x2)	# 151
	addi	x2, x2, -124	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 124	# 151
	lw		x1, -120(x2)	# 151
	jal		x0, fle_cont.32703	# 151
fle_else.32704:
	lw		x29, -52(x2)	# 152
	sw		x1, -120(x2)	# 152
	addi	x2, x2, -124	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 124	# 152
	lw		x1, -120(x2)	# 152
	lw		x5, -68(x2)	# 152
	sub		x4, x4, x5	# 152
	lw		x29, -48(x2)	# 152
	sw		x1, -120(x2)	# 152
	addi	x2, x2, -124	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 124	# 152
	lw		x1, -120(x2)	# 152
fle_cont.32703:
	flw		f2, -116(x2)	# 1776
	fsub	f1, f2, f1	# 1776
	lw		x4, -68(x2)	# 1778
	mul		x5, x30, x4	# 1778
	addi	x5, x5, 60552	# 1778
	flw		f2, 0(x5)	# 1778
	lw		x5, -100(x2)	# 455
	lw		x6, 20(x5)	# 455
	mul		x7, x30, x4	# 460
	add		x6, x6, x7	# 460
	flw		f3, 0(x6)	# 460
	fsub	f2, f2, f3	# 1778
	lw		x6, 16(x5)	# 415
	mul		x7, x30, x4	# 420
	add		x6, x6, x7	# 420
	flw		f3, 0(x6)	# 420
	fsqrt	f3, f3	# 1778
	fmul	f2, f2, f3	# 1778
	flw		f3, -60(x2)	# 124
	flw		f4, -112(x2)	# 124
	fle		x31, f4, f3	# 124
	beq		x31, x0, fle_else.32706	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.32705	# 124
fle_else.32706:
	fadd	f5, f0, f4	# 124
fle_cont.32705:
	flw		f6, -108(x2)	# 125
	fsw		f1, -120(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32708	# 125
	fdiv	f2, f2, f4	# 1783
	fle		x31, f2, f3	# 124
	beq		x31, x0, fle_cont.32709	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32709:
	lw		x29, -28(x2)	# 1784
	fadd	f1, f0, f2
	sw		x1, -124(x2)	# 1784
	addi	x2, x2, -128	# 1784
	lw		x31, 0(x29)	# 1784
	jalr	x1, x31, 0	# 1784
	addi	x2, x2, 128	# 1784
	lw		x1, -124(x2)	# 1784
	fadd	f2, f0, f21	# 1784
	fmul	f1, f1, f2	# 1784
	fadd	f2, f0, f19	# 1784
	fdiv	f1, f1, f2	# 1784
	jal		x0, fle_cont.32707	# 125
fle_else.32708:
	fadd	f1, f0, f20	# 1781
fle_cont.32707:
	flw		f2, -60(x2)	# 151
	fsw		f1, -124(x2)	# 151
	fle		x31, f2, f1	# 151
	beq		x31, x0, fle_else.32711	# 151
	lw		x29, -52(x2)	# 151
	sw		x1, -128(x2)	# 151
	addi	x2, x2, -132	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 132	# 151
	lw		x1, -128(x2)	# 151
	lw		x29, -48(x2)	# 151
	sw		x1, -128(x2)	# 151
	addi	x2, x2, -132	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 132	# 151
	lw		x1, -128(x2)	# 151
	jal		x0, fle_cont.32710	# 151
fle_else.32711:
	lw		x29, -52(x2)	# 152
	sw		x1, -128(x2)	# 152
	addi	x2, x2, -132	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 132	# 152
	lw		x1, -128(x2)	# 152
	lw		x5, -68(x2)	# 152
	sub		x4, x4, x5	# 152
	lw		x29, -48(x2)	# 152
	sw		x1, -128(x2)	# 152
	addi	x2, x2, -132	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 132	# 152
	lw		x1, -128(x2)	# 152
fle_cont.32710:
	flw		f2, -124(x2)	# 1786
	fsub	f1, f2, f1	# 1786
	lui		x4, %hi(l.27622)	# 1787
	ori		x4, x0, %lo(l.27622)	# 1787
	flw		f2, 0(x4)	# 1787
	fadd	f3, f0, f17	# 1787
	flw		f4, -120(x2)	# 1787
	fsub	f4, f3, f4	# 1787
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1787
	fsub	f1, f3, f1	# 1787
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1787
	flw		f2, -60(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.32713	# 122
	jal		x0, fle_cont.32712	# 122
fle_else.32713:
	fadd	f1, f0, f2	# 1788
fle_cont.32712:
	flw		f3, -44(x2)	# 1789
	fmul	f1, f3, f1	# 1789
	fadd	f3, f0, f27	# 1789
	fdiv	f1, f1, f3	# 1789
	lw		x4, -64(x2)	# 1789
	mul		x5, x30, x4	# 1789
	addi	x5, x5, 60580	# 1789
	fsw		f1, 0(x5)	# 1789
beq_cont.32696:
	jal		x0, beq_cont.32694	# 1752
beq.32695:
	mul		x10, x30, x4	# 1755
	addi	x10, x10, 60552	# 1755
	flw		f3, 0(x10)	# 1755
	lw		x10, 20(x6)	# 445
	mul		x11, x30, x4	# 450
	add		x10, x10, x11	# 450
	flw		f4, 0(x10)	# 450
	fsub	f3, f3, f4	# 1755
	mul		x10, x30, x8	# 1756
	addi	x10, x10, 60552	# 1756
	flw		f4, 0(x10)	# 1756
	lw		x10, 20(x6)	# 465
	mul		x11, x30, x8	# 470
	add		x10, x10, x11	# 470
	flw		f5, 0(x10)	# 470
	fsub	f4, f4, f5	# 1756
	fmul	f3, f3, f3	# 127
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 1757
	fsqrt	f3, f3	# 1757
	fadd	f4, f0, f22	# 1757
	fdiv	f3, f3, f4	# 1757
	flw		f4, -60(x2)	# 151
	fsw		f3, -128(x2)	# 151
	fle		x31, f4, f3	# 151
	beq		x31, x0, fle_else.32715	# 151
	lw		x29, -52(x2)	# 151
	fadd	f1, f0, f3
	sw		x1, -132(x2)	# 151
	addi	x2, x2, -136	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 136	# 151
	lw		x1, -132(x2)	# 151
	lw		x29, -48(x2)	# 151
	sw		x1, -132(x2)	# 151
	addi	x2, x2, -136	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 136	# 151
	lw		x1, -132(x2)	# 151
	jal		x0, fle_cont.32714	# 151
fle_else.32715:
	lw		x29, -52(x2)	# 152
	fadd	f1, f0, f3
	sw		x1, -132(x2)	# 152
	addi	x2, x2, -136	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 136	# 152
	lw		x1, -132(x2)	# 152
	lw		x5, -68(x2)	# 152
	sub		x4, x4, x5	# 152
	lw		x29, -48(x2)	# 152
	sw		x1, -132(x2)	# 152
	addi	x2, x2, -136	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 136	# 152
	lw		x1, -132(x2)	# 152
fle_cont.32714:
	flw		f2, -128(x2)	# 1758
	fsub	f1, f2, f1	# 1758
	fadd	f2, f0, f19	# 1758
	fmul	f1, f1, f2	# 1758
	lw		x29, -32(x2)	# 1759
	sw		x1, -132(x2)	# 1759
	addi	x2, x2, -136	# 1759
	lw		x31, 0(x29)	# 1759
	jalr	x1, x31, 0	# 1759
	addi	x2, x2, 136	# 1759
	lw		x1, -132(x2)	# 1759
	fmul	f1, f1, f1	# 127
	flw		f2, -44(x2)	# 1760
	fmul	f3, f1, f2	# 1760
	lw		x4, -68(x2)	# 1760
	mul		x5, x30, x4	# 1760
	addi	x5, x5, 60580	# 1760
	fsw		f3, 0(x5)	# 1760
	fadd	f3, f0, f16	# 1761
	fsub	f1, f3, f1	# 1761
	fmul	f1, f1, f2	# 1761
	lw		x5, -64(x2)	# 1761
	mul		x6, x30, x5	# 1761
	addi	x6, x6, 60580	# 1761
	fsw		f1, 0(x6)	# 1761
beq_cont.32694:
	jal		x0, beq_cont.32692	# 1745
beq.32693:
	mul		x10, x30, x9	# 1748
	addi	x10, x10, 60552	# 1748
	flw		f3, 0(x10)	# 1748
	fadd	f4, f0, f26	# 1748
	fmul	f3, f3, f4	# 1748
	lw		x29, -40(x2)	# 1748
	fadd	f1, f0, f3
	sw		x1, -132(x2)	# 1748
	addi	x2, x2, -136	# 1748
	lw		x31, 0(x29)	# 1748
	jalr	x1, x31, 0	# 1748
	addi	x2, x2, 136	# 1748
	lw		x1, -132(x2)	# 1748
	fmul	f1, f1, f1	# 127
	flw		f2, -44(x2)	# 1749
	fmul	f3, f2, f1	# 1749
	lw		x4, -88(x2)	# 1749
	mul		x5, x30, x4	# 1749
	addi	x5, x5, 60580	# 1749
	fsw		f3, 0(x5)	# 1749
	fadd	f3, f0, f16	# 1750
	fsub	f1, f3, f1	# 1750
	fmul	f1, f2, f1	# 1750
	lw		x5, -68(x2)	# 1750
	mul		x6, x30, x5	# 1750
	addi	x6, x6, 60580	# 1750
	fsw		f1, 0(x6)	# 1750
beq_cont.32692:
	jal		x0, beq_cont.32690	# 1727
beq.32691:
	mul		x10, x30, x4	# 1730
	addi	x10, x10, 60552	# 1730
	flw		f3, 0(x10)	# 1730
	lw		x10, 20(x6)	# 445
	mul		x11, x30, x4	# 450
	add		x10, x10, x11	# 450
	flw		f4, 0(x10)	# 450
	fsub	f3, f3, f4	# 1730
	fadd	f4, f0, f28	# 1732
	fmul	f5, f3, f4	# 1732
	flw		f6, -60(x2)	# 151
	fsw		f4, -132(x2)	# 151
	fsw		f3, -136(x2)	# 151
	fle		x31, f6, f5	# 151
	beq		x31, x0, fle_else.32717	# 151
	lw		x29, -52(x2)	# 151
	fadd	f1, f0, f5
	sw		x1, -140(x2)	# 151
	addi	x2, x2, -144	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 144	# 151
	lw		x1, -140(x2)	# 151
	lw		x29, -48(x2)	# 151
	sw		x1, -140(x2)	# 151
	addi	x2, x2, -144	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 144	# 151
	lw		x1, -140(x2)	# 151
	jal		x0, fle_cont.32716	# 151
fle_else.32717:
	lw		x29, -52(x2)	# 152
	fadd	f1, f0, f5
	sw		x1, -140(x2)	# 152
	addi	x2, x2, -144	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 144	# 152
	lw		x1, -140(x2)	# 152
	lw		x5, -68(x2)	# 152
	sub		x4, x4, x5	# 152
	lw		x29, -48(x2)	# 152
	sw		x1, -140(x2)	# 152
	addi	x2, x2, -144	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 144	# 152
	lw		x1, -140(x2)	# 152
fle_cont.32716:
	fadd	f2, f0, f29	# 1732
	fmul	f1, f1, f2	# 1732
	flw		f3, -136(x2)	# 1733
	fsub	f1, f3, f1	# 1733
	fadd	f3, f0, f22	# 1733
	lw		x4, -64(x2)	# 1735
	mul		x5, x30, x4	# 1735
	addi	x5, x5, 60552	# 1735
	flw		f4, 0(x5)	# 1735
	lw		x5, -100(x2)	# 465
	lw		x6, 20(x5)	# 465
	mul		x7, x30, x4	# 470
	add		x6, x6, x7	# 470
	flw		f5, 0(x6)	# 470
	fsub	f4, f4, f5	# 1735
	flw		f5, -132(x2)	# 1737
	fmul	f5, f4, f5	# 1737
	flw		f6, -60(x2)	# 151
	fsw		f1, -140(x2)	# 151
	fsw		f3, -144(x2)	# 151
	fsw		f4, -148(x2)	# 151
	fsw		f2, -152(x2)	# 151
	fle		x31, f6, f5	# 151
	beq		x31, x0, fle_else.32719	# 151
	lw		x29, -52(x2)	# 151
	fadd	f1, f0, f5
	sw		x1, -156(x2)	# 151
	addi	x2, x2, -160	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 160	# 151
	lw		x1, -156(x2)	# 151
	lw		x29, -48(x2)	# 151
	sw		x1, -156(x2)	# 151
	addi	x2, x2, -160	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 160	# 151
	lw		x1, -156(x2)	# 151
	jal		x0, fle_cont.32718	# 151
fle_else.32719:
	lw		x29, -52(x2)	# 152
	fadd	f1, f0, f5
	sw		x1, -156(x2)	# 152
	addi	x2, x2, -160	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 160	# 152
	lw		x1, -156(x2)	# 152
	lw		x5, -68(x2)	# 152
	sub		x4, x4, x5	# 152
	lw		x29, -48(x2)	# 152
	sw		x1, -156(x2)	# 152
	addi	x2, x2, -160	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 160	# 152
	lw		x1, -156(x2)	# 152
fle_cont.32718:
	flw		f2, -152(x2)	# 1737
	fmul	f1, f1, f2	# 1737
	flw		f2, -148(x2)	# 1738
	fsub	f1, f2, f1	# 1738
	flw		f2, -140(x2)	# 125
	flw		f3, -144(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32721	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32723	# 125
	flw		f1, -44(x2)	# 1743
	jal		x0, fle_cont.32722	# 125
fle_else.32723:
	flw		f1, -60(x2)	# 1743
fle_cont.32722:
	jal		x0, fle_cont.32720	# 125
fle_else.32721:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32725	# 125
	flw		f1, -60(x2)	# 1742
	jal		x0, fle_cont.32724	# 125
fle_else.32725:
	flw		f1, -44(x2)	# 1742
fle_cont.32724:
fle_cont.32720:
	lw		x4, -68(x2)	# 1740
	mul		x5, x30, x4	# 1740
	addi	x5, x5, 60580	# 1740
	fsw		f1, 0(x5)	# 1740
beq_cont.32690:
	lw		x4, -24(x2)	# 1860
	lw		x5, -104(x2)	# 1860
	mul		x5, x5, x4	# 1860
	lw		x6, -88(x2)	# 1860
	mul		x7, x30, x6	# 1860
	addi	x7, x7, 60544	# 1860
	lw		x7, 0(x7)	# 1860
	add		x5, x5, x7	# 1860
	lw		x7, -84(x2)	# 1860
	mul		x8, x30, x7	# 1860
	lw		x9, -80(x2)	# 1860
	add		x8, x9, x8	# 1860
	sw		x5, 0(x8)	# 1860
	lw		x5, -20(x2)	# 583
	lw		x8, 4(x5)	# 583
	mul		x10, x30, x7	# 1862
	add		x8, x8, x10	# 1862
	lw		x8, 0(x8)	# 1862
	mul		x10, x30, x6	# 273
	addi	x10, x10, 60552	# 273
	flw		f1, 0(x10)	# 273
	mul		x10, x30, x6	# 273
	add		x10, x8, x10	# 273
	fsw		f1, 0(x10)	# 273
	lw		x10, -68(x2)	# 274
	mul		x11, x30, x10	# 274
	addi	x11, x11, 60552	# 274
	flw		f1, 0(x11)	# 274
	mul		x11, x30, x10	# 274
	add		x11, x8, x11	# 274
	fsw		f1, 0(x11)	# 274
	lw		x11, -64(x2)	# 275
	mul		x12, x30, x11	# 275
	addi	x12, x12, 60552	# 275
	flw		f1, 0(x12)	# 275
	mul		x12, x30, x11	# 275
	add		x8, x8, x12	# 275
	fsw		f1, 0(x8)	# 275
	lw		x8, 12(x5)	# 598
	lw		x12, -100(x2)	# 475
	lw		x13, 28(x12)	# 475
	mul		x14, x30, x6	# 480
	add		x13, x13, x14	# 480
	flw		f1, 0(x13)	# 480
	fadd	f2, f0, f17	# 1866
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32727	# 125
	addi	x13, x0, 1	# 1869
	mul		x14, x30, x7	# 1869
	add		x8, x8, x14	# 1869
	sw		x13, 0(x8)	# 1869
	lw		x8, 16(x5)	# 605
	mul		x13, x30, x7	# 1871
	add		x13, x8, x13	# 1871
	lw		x13, 0(x13)	# 1871
	addi	x14, x0, 0	# 273
	addi	x15, x0, 0	# 273
	mul		x15, x30, x15	# 273
	addi	x15, x15, 60580	# 273
	flw		f1, 0(x15)	# 273
	mul		x14, x30, x14	# 273
	add		x14, x13, x14	# 273
	fsw		f1, 0(x14)	# 273
	addi	x14, x0, 1	# 274
	addi	x15, x0, 1	# 274
	mul		x15, x30, x15	# 274
	addi	x15, x15, 60580	# 274
	flw		f1, 0(x15)	# 274
	mul		x14, x30, x14	# 274
	add		x14, x13, x14	# 274
	fsw		f1, 0(x14)	# 274
	addi	x14, x0, 2	# 275
	mul		x15, x30, x14	# 275
	addi	x15, x15, 60580	# 275
	flw		f1, 0(x15)	# 275
	mul		x14, x30, x14	# 275
	add		x13, x13, x14	# 275
	fsw		f1, 0(x13)	# 275
	mul		x13, x30, x7	# 1872
	add		x8, x8, x13	# 1872
	lw		x8, 0(x8)	# 1872
	lui		x13, %hi(l.27710)	# 1872
	ori		x13, x0, %lo(l.27710)	# 1872
	flw		f1, 0(x13)	# 1872
	flw		f2, -96(x2)	# 1872
	fmul	f1, f1, f2	# 1872
	addi	x13, x0, 0	# 339
	addi	x14, x0, 0	# 339
	mul		x14, x30, x14	# 339
	add		x14, x8, x14	# 339
	flw		f3, 0(x14)	# 339
	fmul	f3, f3, f1	# 339
	mul		x13, x30, x13	# 339
	add		x13, x8, x13	# 339
	fsw		f3, 0(x13)	# 339
	addi	x13, x0, 1	# 340
	addi	x14, x0, 1	# 340
	mul		x14, x30, x14	# 340
	add		x14, x8, x14	# 340
	flw		f3, 0(x14)	# 340
	fmul	f3, f3, f1	# 340
	mul		x13, x30, x13	# 340
	add		x13, x8, x13	# 340
	fsw		f3, 0(x13)	# 340
	addi	x13, x0, 2	# 341
	mul		x14, x30, x13	# 341
	add		x14, x8, x14	# 341
	flw		f3, 0(x14)	# 341
	fmul	f1, f3, f1	# 341
	mul		x13, x30, x13	# 341
	add		x8, x8, x13	# 341
	fsw		f1, 0(x8)	# 341
	lw		x8, 28(x5)	# 642
	mul		x13, x30, x7	# 1874
	add		x8, x8, x13	# 1874
	lw		x8, 0(x8)	# 1874
	addi	x13, x0, 0	# 273
	addi	x14, x0, 0	# 273
	mul		x14, x30, x14	# 273
	addi	x14, x14, 60568	# 273
	flw		f1, 0(x14)	# 273
	mul		x13, x30, x13	# 273
	add		x13, x8, x13	# 273
	fsw		f1, 0(x13)	# 273
	addi	x13, x0, 1	# 274
	addi	x14, x0, 1	# 274
	mul		x14, x30, x14	# 274
	addi	x14, x14, 60568	# 274
	flw		f1, 0(x14)	# 274
	mul		x13, x30, x13	# 274
	add		x13, x8, x13	# 274
	fsw		f1, 0(x13)	# 274
	addi	x13, x0, 2	# 275
	mul		x14, x30, x13	# 275
	addi	x14, x14, 60568	# 275
	flw		f1, 0(x14)	# 275
	mul		x13, x30, x13	# 275
	add		x8, x8, x13	# 275
	fsw		f1, 0(x8)	# 275
	jal		x0, fle_cont.32726	# 125
fle_else.32727:
	addi	x13, x0, 0	# 1867
	mul		x14, x30, x7	# 1867
	add		x8, x8, x14	# 1867
	sw		x13, 0(x8)	# 1867
fle_cont.32726:
	lui		x8, %hi(l.27738)	# 1877
	ori		x8, x0, %lo(l.27738)	# 1877
	flw		f1, 0(x8)	# 1877
	mul		x8, x30, x6	# 306
	lw		x13, -72(x2)	# 306
	add		x8, x13, x8	# 306
	flw		f2, 0(x8)	# 306
	mul		x8, x30, x6	# 306
	addi	x8, x8, 60568	# 306
	flw		f3, 0(x8)	# 306
	fmul	f4, f2, f3	# 306
	mul		x8, x30, x10	# 306
	add		x8, x13, x8	# 306
	flw		f5, 0(x8)	# 306
	mul		x8, x30, x10	# 306
	addi	x8, x8, 60568	# 306
	flw		f6, 0(x8)	# 306
	fmul	f5, f5, f6	# 306
	fadd	f4, f4, f5	# 306
	mul		x8, x30, x11	# 306
	add		x8, x13, x8	# 306
	flw		f5, 0(x8)	# 306
	mul		x8, x30, x11	# 306
	addi	x8, x8, 60568	# 306
	flw		f6, 0(x8)	# 306
	fmul	f5, f5, f6	# 306
	fadd	f4, f4, f5	# 306
	fmul	f1, f1, f4	# 1877
	fmul	f3, f1, f3	# 316
	fadd	f2, f2, f3	# 316
	mul		x8, x30, x6	# 316
	add		x8, x13, x8	# 316
	fsw		f2, 0(x8)	# 316
	mul		x8, x30, x10	# 317
	add		x8, x13, x8	# 317
	flw		f2, 0(x8)	# 317
	mul		x8, x30, x10	# 317
	addi	x8, x8, 60568	# 317
	flw		f3, 0(x8)	# 317
	fmul	f3, f1, f3	# 317
	fadd	f2, f2, f3	# 317
	mul		x8, x30, x10	# 317
	add		x8, x13, x8	# 317
	fsw		f2, 0(x8)	# 317
	mul		x8, x30, x11	# 318
	add		x8, x13, x8	# 318
	flw		f2, 0(x8)	# 318
	mul		x8, x30, x11	# 318
	addi	x8, x8, 60568	# 318
	flw		f3, 0(x8)	# 318
	fmul	f1, f1, f3	# 318
	fadd	f1, f2, f1	# 318
	mul		x8, x30, x11	# 318
	add		x8, x13, x8	# 318
	fsw		f1, 0(x8)	# 318
	lw		x8, 28(x12)	# 485
	mul		x14, x30, x10	# 490
	add		x8, x8, x14	# 490
	flw		f1, 0(x8)	# 490
	flw		f2, -56(x2)	# 1881
	fmul	f1, f2, f1	# 1881
	mul		x8, x30, x6	# 1884
	addi	x8, x8, 60536	# 1884
	lw		x8, 0(x8)	# 1884
	lw		x29, -16(x2)	# 1884
	fsw		f1, -156(x2)	# 1884
	addi	x5, x8, 0
	addi	x4, x6, 0
	sw		x1, -160(x2)	# 1884
	addi	x2, x2, -164	# 1884
	lw		x31, 0(x29)	# 1884
	jalr	x1, x31, 0	# 1884
	addi	x2, x2, 164	# 1884
	lw		x1, -160(x2)	# 1884
	lw		x5, -88(x2)	# 1884
	beq		x4, x5, beq.32729	# 1884
	jal		x0, beq_cont.32728	# 1884
beq.32729:
	addi	x4, x0, 0	# 306
	mul		x4, x30, x4	# 306
	addi	x4, x4, 60568	# 306
	flw		f1, 0(x4)	# 306
	addi	x4, x0, 0	# 306
	mul		x4, x30, x4	# 306
	addi	x4, x4, 60312	# 306
	flw		f2, 0(x4)	# 306
	fmul	f1, f1, f2	# 306
	addi	x4, x0, 1	# 306
	mul		x4, x30, x4	# 306
	addi	x4, x4, 60568	# 306
	flw		f2, 0(x4)	# 306
	addi	x4, x0, 1	# 306
	mul		x4, x30, x4	# 306
	addi	x4, x4, 60312	# 306
	flw		f3, 0(x4)	# 306
	fmul	f2, f2, f3	# 306
	fadd	f1, f1, f2	# 306
	addi	x4, x0, 2	# 306
	mul		x4, x30, x4	# 306
	addi	x4, x4, 60568	# 306
	flw		f2, 0(x4)	# 306
	addi	x4, x0, 2	# 306
	mul		x4, x30, x4	# 306
	addi	x4, x4, 60312	# 306
	flw		f3, 0(x4)	# 306
	fmul	f2, f2, f3	# 306
	fadd	f1, f1, f2	# 306
	fsub	f1, f0, f1	# 123
	flw		f2, -96(x2)	# 1885
	fmul	f1, f1, f2	# 1885
	addi	x4, x0, 0	# 306
	mul		x4, x30, x4	# 306
	lw		x6, -72(x2)	# 306
	add		x4, x6, x4	# 306
	flw		f3, 0(x4)	# 306
	addi	x4, x0, 0	# 306
	mul		x4, x30, x4	# 306
	addi	x4, x4, 60312	# 306
	flw		f4, 0(x4)	# 306
	fmul	f3, f3, f4	# 306
	addi	x4, x0, 1	# 306
	mul		x4, x30, x4	# 306
	add		x4, x6, x4	# 306
	flw		f4, 0(x4)	# 306
	addi	x4, x0, 1	# 306
	mul		x4, x30, x4	# 306
	addi	x4, x4, 60312	# 306
	flw		f5, 0(x4)	# 306
	fmul	f4, f4, f5	# 306
	fadd	f3, f3, f4	# 306
	addi	x4, x0, 2	# 306
	mul		x4, x30, x4	# 306
	add		x4, x6, x4	# 306
	flw		f4, 0(x4)	# 306
	addi	x4, x0, 2	# 306
	mul		x4, x30, x4	# 306
	addi	x4, x4, 60312	# 306
	flw		f5, 0(x4)	# 306
	fmul	f4, f4, f5	# 306
	fadd	f3, f3, f4	# 306
	fsub	f3, f0, f3	# 123
	flw		f4, -60(x2)	# 121
	fle		x31, f1, f4	# 121
	beq		x31, x0, fle_else.32731	# 121
	jal		x0, fle_cont.32730	# 121
fle_else.32731:
	mul		x4, x30, x5	# 316
	addi	x4, x4, 60604	# 316
	flw		f5, 0(x4)	# 316
	mul		x4, x30, x5	# 316
	addi	x4, x4, 60580	# 316
	flw		f6, 0(x4)	# 316
	fmul	f6, f1, f6	# 316
	fadd	f5, f5, f6	# 316
	mul		x4, x30, x5	# 316
	addi	x4, x4, 60604	# 316
	fsw		f5, 0(x4)	# 316
	lw		x4, -68(x2)	# 317
	mul		x7, x30, x4	# 317
	addi	x7, x7, 60604	# 317
	flw		f5, 0(x7)	# 317
	mul		x7, x30, x4	# 317
	addi	x7, x7, 60580	# 317
	flw		f6, 0(x7)	# 317
	fmul	f6, f1, f6	# 317
	fadd	f5, f5, f6	# 317
	mul		x7, x30, x4	# 317
	addi	x7, x7, 60604	# 317
	fsw		f5, 0(x7)	# 317
	lw		x7, -64(x2)	# 318
	mul		x8, x30, x7	# 318
	addi	x8, x8, 60604	# 318
	flw		f5, 0(x8)	# 318
	mul		x8, x30, x7	# 318
	addi	x8, x8, 60580	# 318
	flw		f6, 0(x8)	# 318
	fmul	f1, f1, f6	# 318
	fadd	f1, f5, f1	# 318
	mul		x8, x30, x7	# 318
	addi	x8, x8, 60604	# 318
	fsw		f1, 0(x8)	# 318
fle_cont.32730:
	fle		x31, f3, f4	# 121
	beq		x31, x0, fle_else.32733	# 121
	jal		x0, fle_cont.32732	# 121
fle_else.32733:
	fmul	f1, f3, f3	# 127
	fmul	f1, f1, f1	# 127
	flw		f3, -156(x2)	# 1808
	fmul	f1, f1, f3	# 1808
	addi	x4, x0, 0	# 1809
	addi	x7, x0, 0	# 1809
	mul		x7, x30, x7	# 1809
	addi	x7, x7, 60604	# 1809
	flw		f4, 0(x7)	# 1809
	fadd	f4, f4, f1	# 1809
	mul		x4, x30, x4	# 1809
	addi	x4, x4, 60604	# 1809
	fsw		f4, 0(x4)	# 1809
	addi	x4, x0, 1	# 1810
	addi	x7, x0, 1	# 1810
	mul		x7, x30, x7	# 1810
	addi	x7, x7, 60604	# 1810
	flw		f4, 0(x7)	# 1810
	fadd	f4, f4, f1	# 1810
	mul		x4, x30, x4	# 1810
	addi	x4, x4, 60604	# 1810
	fsw		f4, 0(x4)	# 1810
	addi	x4, x0, 2	# 1811
	mul		x7, x30, x4	# 1811
	addi	x7, x7, 60604	# 1811
	flw		f4, 0(x7)	# 1811
	fadd	f1, f4, f1	# 1811
	mul		x4, x30, x4	# 1811
	addi	x4, x4, 60604	# 1811
	fsw		f1, 0(x4)	# 1811
fle_cont.32732:
beq_cont.32728:
	mul		x4, x30, x5	# 273
	addi	x4, x4, 60552	# 273
	flw		f1, 0(x4)	# 273
	mul		x4, x30, x5	# 273
	addi	x4, x4, 60648	# 273
	fsw		f1, 0(x4)	# 273
	lw		x4, -68(x2)	# 274
	mul		x6, x30, x4	# 274
	addi	x6, x6, 60552	# 274
	flw		f1, 0(x6)	# 274
	mul		x6, x30, x4	# 274
	addi	x6, x6, 60648	# 274
	fsw		f1, 0(x6)	# 274
	lw		x6, -64(x2)	# 275
	mul		x7, x30, x6	# 275
	addi	x7, x7, 60552	# 275
	flw		f1, 0(x7)	# 275
	mul		x7, x30, x6	# 275
	addi	x7, x7, 60648	# 275
	fsw		f1, 0(x7)	# 275
	mul		x7, x30, x5	# 1329
	addi	x7, x7, 60000	# 1329
	lw		x7, 0(x7)	# 1329
	sub		x7, x7, x4	# 1329
	addi	x8, x0, 60552	# 1329
	lw		x29, -12(x2)	# 1329
	addi	x5, x7, 0
	addi	x4, x8, 0
	sw		x1, -160(x2)	# 1329
	addi	x2, x2, -164	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 164	# 1329
	lw		x1, -160(x2)	# 1329
	lw		x4, -88(x2)	# 1892
	mul		x5, x30, x4	# 1892
	addi	x5, x5, 61736	# 1892
	lw		x5, 0(x5)	# 1892
	lw		x6, -68(x2)	# 1892
	sub		x5, x5, x6	# 1892
	flw		f1, -96(x2)	# 1892
	flw		f2, -156(x2)	# 1892
	lw		x7, -72(x2)	# 1892
	lw		x29, -8(x2)	# 1892
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -160(x2)	# 1892
	addi	x2, x2, -164	# 1892
	lw		x31, 0(x29)	# 1892
	jalr	x1, x31, 0	# 1892
	addi	x2, x2, 164	# 1892
	lw		x1, -160(x2)	# 1892
	lui		x4, %hi(l.27840)	# 1895
	ori		x4, x0, %lo(l.27840)	# 1895
	flw		f1, 0(x4)	# 1895
	flw		f2, -56(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32734	# 125
	jalr	x0, x1, 0	# 1906
fle_else.32734:
	lw		x4, -84(x2)	# 1897
	lw		x5, -24(x2)	# 1897
	ble		x5, x4, ble_cont.32736	# 1897
	addi	x5, x4, 1	# 1898
	addi	x6, x0, -1	# 1898
	mul		x5, x30, x5	# 1898
	lw		x7, -80(x2)	# 1898
	add		x5, x7, x5	# 1898
	sw		x6, 0(x5)	# 1898
ble_cont.32736:
	lw		x5, -64(x2)	# 1901
	lw		x6, -92(x2)	# 1901
	beq		x6, x5, beq.32737	# 1901
	jalr	x0, x1, 0	# 1904
beq.32737:
	fadd	f1, f0, f16	# 1902
	lw		x5, -100(x2)	# 475
	lw		x5, 28(x5)	# 475
	lw		x6, -88(x2)	# 480
	mul		x7, x30, x6	# 480
	add		x5, x5, x7	# 480
	flw		f3, 0(x5)	# 480
	fsub	f1, f1, f3	# 1902
	fmul	f1, f2, f1	# 1902
	lw		x5, -68(x2)	# 1903
	add		x4, x4, x5	# 1903
	mul		x5, x30, x6	# 1903
	addi	x5, x5, 60548	# 1903
	flw		f2, 0(x5)	# 1903
	flw		f3, -4(x2)	# 1903
	fadd	f2, f3, f2	# 1903
	lw		x5, -72(x2)	# 1903
	lw		x6, -20(x2)	# 1903
	lw		x29, 0(x2)	# 1903
	lw		x31, 0(x29)	# 1903
	jalr	x0, x31, 0	# 1903
beq.32675:
	lw		x5, -84(x2)	# 1911
	mul		x6, x30, x5	# 1911
	lw		x7, -80(x2)	# 1911
	add		x6, x7, x6	# 1911
	lw		x7, -76(x2)	# 1911
	sw		x7, 0(x6)	# 1911
	beq		x5, x4, beq.32739	# 1913
	mul		x5, x30, x4	# 306
	lw		x6, -72(x2)	# 306
	add		x5, x6, x5	# 306
	flw		f1, 0(x5)	# 306
	mul		x5, x30, x4	# 306
	addi	x5, x5, 60312	# 306
	flw		f2, 0(x5)	# 306
	fmul	f1, f1, f2	# 306
	lw		x5, -68(x2)	# 306
	mul		x7, x30, x5	# 306
	add		x7, x6, x7	# 306
	flw		f2, 0(x7)	# 306
	mul		x7, x30, x5	# 306
	addi	x7, x7, 60312	# 306
	flw		f3, 0(x7)	# 306
	fmul	f2, f2, f3	# 306
	fadd	f1, f1, f2	# 306
	lw		x7, -64(x2)	# 306
	mul		x8, x30, x7	# 306
	add		x6, x6, x8	# 306
	flw		f2, 0(x6)	# 306
	mul		x6, x30, x7	# 306
	addi	x6, x6, 60312	# 306
	flw		f3, 0(x6)	# 306
	fmul	f2, f2, f3	# 306
	fadd	f1, f1, f2	# 306
	fsub	f1, f0, f1	# 123
	flw		f2, -60(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.32740	# 121
	jalr	x0, x1, 0	# 1924
fle_else.32740:
	fmul	f2, f1, f1	# 127
	fmul	f1, f2, f1	# 1919
	flw		f2, -56(x2)	# 1919
	fmul	f1, f1, f2	# 1919
	mul		x6, x30, x4	# 1919
	addi	x6, x6, 60324	# 1919
	flw		f2, 0(x6)	# 1919
	fmul	f1, f1, f2	# 1919
	mul		x6, x30, x4	# 1920
	addi	x6, x6, 60604	# 1920
	flw		f2, 0(x6)	# 1920
	fadd	f2, f2, f1	# 1920
	mul		x4, x30, x4	# 1920
	addi	x4, x4, 60604	# 1920
	fsw		f2, 0(x4)	# 1920
	mul		x4, x30, x5	# 1921
	addi	x4, x4, 60604	# 1921
	flw		f2, 0(x4)	# 1921
	fadd	f2, f2, f1	# 1921
	mul		x4, x30, x5	# 1921
	addi	x4, x4, 60604	# 1921
	fsw		f2, 0(x4)	# 1921
	mul		x4, x30, x7	# 1922
	addi	x4, x4, 60604	# 1922
	flw		f2, 0(x4)	# 1922
	fadd	f1, f2, f1	# 1922
	mul		x4, x30, x7	# 1922
	addi	x4, x4, 60604	# 1922
	fsw		f1, 0(x4)	# 1922
	jalr	x0, x1, 0	# 1922
beq.32739:
	jalr	x0, x1, 0	# 1925
iter_trace_diffuse_rays.2904.17814:
	lw		x8, 56(x29)	# 1958
	lw		x9, 52(x29)	# 1958
	lw		x10, 48(x29)	# 1958
	lw		x11, 44(x29)	# 1958
	lw		x12, 40(x29)	# 1958
	lw		x13, 36(x29)	# 1958
	lw		x14, 32(x29)	# 1958
	lw		x15, 28(x29)	# 1958
	lw		x16, 24(x29)	# 1958
	lw		x17, 20(x29)	# 1958
	lw		x18, 16(x29)	# 1958
	flw		f1, 12(x29)	# 1958
	flw		f2, 8(x29)	# 1958
	flw		f3, 4(x29)	# 1958
	ble		x17, x7, ble.32744	# 1958
	jalr	x0, x1, 0	# 1969
ble.32744:
	mul		x19, x30, x7	# 1959
	add		x19, x4, x19	# 1959
	lw		x19, 0(x19)	# 1959
	lw		x19, 0(x19)	# 653
	mul		x20, x30, x17	# 306
	add		x20, x19, x20	# 306
	flw		f4, 0(x20)	# 306
	mul		x20, x30, x17	# 306
	add		x20, x5, x20	# 306
	flw		f5, 0(x20)	# 306
	fmul	f4, f4, f5	# 306
	mul		x20, x30, x18	# 306
	add		x20, x19, x20	# 306
	flw		f5, 0(x20)	# 306
	mul		x20, x30, x18	# 306
	add		x20, x5, x20	# 306
	flw		f6, 0(x20)	# 306
	fmul	f5, f5, f6	# 306
	fadd	f4, f4, f5	# 306
	mul		x20, x30, x15	# 306
	add		x19, x19, x20	# 306
	flw		f5, 0(x19)	# 306
	mul		x19, x30, x15	# 306
	add		x19, x5, x19	# 306
	flw		f6, 0(x19)	# 306
	fmul	f5, f5, f6	# 306
	fadd	f4, f4, f5	# 306
	sw		x6, 0(x2)	# 122
	sw		x5, -4(x2)	# 122
	sw		x4, -8(x2)	# 122
	sw		x29, -12(x2)	# 122
	sw		x15, -16(x2)	# 122
	sw		x7, -20(x2)	# 122
	fle		x31, f3, f4	# 122
	beq		x31, x0, fle_else.32747	# 122
	mul		x19, x30, x7	# 1966
	add		x19, x4, x19	# 1966
	lw		x19, 0(x19)	# 1966
	lui		x20, %hi(l.28114)	# 1966
	ori		x20, x0, %lo(l.28114)	# 1966
	flw		f5, 0(x20)	# 1966
	fdiv	f4, f4, f5	# 1966
	mul		x20, x30, x17	# 1648
	addi	x20, x20, 60548	# 1648
	fsw		f1, 0(x20)	# 1648
	mul		x20, x30, x17	# 1649
	addi	x20, x20, 60536	# 1649
	lw		x20, 0(x20)	# 1649
	fsw		f4, -24(x2)	# 1649
	sw		x10, -28(x2)	# 1649
	sw		x14, -32(x2)	# 1649
	sw		x13, -36(x2)	# 1649
	sw		x16, -40(x2)	# 1649
	sw		x9, -44(x2)	# 1649
	fsw		f2, -48(x2)	# 1649
	sw		x12, -52(x2)	# 1649
	sw		x11, -56(x2)	# 1649
	fsw		f3, -60(x2)	# 1649
	sw		x18, -64(x2)	# 1649
	sw		x19, -68(x2)	# 1649
	sw		x17, -72(x2)	# 1649
	addi	x6, x19, 0
	addi	x5, x20, 0
	addi	x4, x17, 0
	addi	x29, x8, 0
	sw		x1, -76(x2)	# 1649
	addi	x2, x2, -80	# 1649
	lw		x31, 0(x29)	# 1649
	jalr	x1, x31, 0	# 1649
	addi	x2, x2, 80	# 1649
	lw		x1, -76(x2)	# 1649
	lw		x4, -72(x2)	# 1650
	mul		x5, x30, x4	# 1650
	addi	x5, x5, 60548	# 1650
	flw		f1, 0(x5)	# 1650
	fadd	f2, f0, f23	# 1652
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32749	# 125
	addi	x5, x0, 0	# 1654
	jal		x0, fle_cont.32748	# 125
fle_else.32749:
	fadd	f2, f0, f25	# 1653
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32751	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32750	# 125
fle_else.32751:
	addi	x5, x0, 1	# 125
fle_cont.32750:
fle_cont.32748:
	addi	x6, x0, 0	# 1941
	beq		x5, x6, beq_cont.32752	# 1941
	mul		x5, x30, x6	# 1942
	addi	x5, x5, 60564	# 1942
	lw		x5, 0(x5)	# 1942
	mul		x5, x30, x5	# 1942
	addi	x5, x5, 60048	# 1942
	lw		x5, 0(x5)	# 1942
	lw		x7, -68(x2)	# 653
	lw		x7, 0(x7)	# 653
	lw		x8, 4(x5)	# 367
	lw		x9, -64(x2)	# 1707
	beq		x8, x9, beq.32754	# 1707
	lw		x7, -16(x2)	# 1709
	beq		x8, x7, beq.32756	# 1709
	mul		x8, x30, x4	# 1684
	addi	x8, x8, 60552	# 1684
	flw		f1, 0(x8)	# 1684
	lw		x8, 20(x5)	# 445
	mul		x10, x30, x4	# 450
	add		x8, x8, x10	# 450
	flw		f2, 0(x8)	# 450
	fsub	f1, f1, f2	# 1684
	mul		x8, x30, x9	# 1685
	addi	x8, x8, 60552	# 1685
	flw		f2, 0(x8)	# 1685
	lw		x8, 20(x5)	# 455
	mul		x10, x30, x9	# 460
	add		x8, x8, x10	# 460
	flw		f3, 0(x8)	# 460
	fsub	f2, f2, f3	# 1685
	mul		x8, x30, x7	# 1686
	addi	x8, x8, 60552	# 1686
	flw		f3, 0(x8)	# 1686
	lw		x8, 20(x5)	# 465
	mul		x10, x30, x7	# 470
	add		x8, x8, x10	# 470
	flw		f4, 0(x8)	# 470
	fsub	f3, f3, f4	# 1686
	lw		x8, 16(x5)	# 405
	mul		x10, x30, x4	# 410
	add		x8, x8, x10	# 410
	flw		f4, 0(x8)	# 410
	fmul	f4, f1, f4	# 1688
	lw		x8, 16(x5)	# 415
	mul		x10, x30, x9	# 420
	add		x8, x8, x10	# 420
	flw		f5, 0(x8)	# 420
	fmul	f5, f2, f5	# 1689
	lw		x8, 16(x5)	# 425
	mul		x10, x30, x7	# 430
	add		x8, x8, x10	# 430
	flw		f6, 0(x8)	# 430
	fmul	f6, f3, f6	# 1690
	lw		x8, 12(x5)	# 396
	beq		x8, x4, beq.32758	# 1692
	addi	x8, x0, 0	# 1697
	lw		x10, 36(x5)	# 545
	mul		x11, x30, x7	# 550
	add		x10, x10, x11	# 550
	flw		f7, 0(x10)	# 550
	fmul	f7, f2, f7	# 1697
	lw		x10, 36(x5)	# 535
	mul		x11, x30, x9	# 540
	add		x10, x10, x11	# 540
	flw		f8, 0(x10)	# 540
	fmul	f8, f3, f8	# 1697
	fadd	f7, f7, f8	# 1697
	fadd	f8, f0, f17	# 126
	fmul	f7, f7, f8	# 126
	fadd	f4, f4, f7	# 1697
	mul		x8, x30, x8	# 1697
	addi	x8, x8, 60568	# 1697
	fsw		f4, 0(x8)	# 1697
	addi	x8, x0, 1	# 1698
	lw		x10, 36(x5)	# 545
	mul		x11, x30, x7	# 550
	add		x10, x10, x11	# 550
	flw		f4, 0(x10)	# 550
	fmul	f4, f1, f4	# 1698
	lw		x10, 36(x5)	# 525
	mul		x11, x30, x4	# 530
	add		x10, x10, x11	# 530
	flw		f7, 0(x10)	# 530
	fmul	f3, f3, f7	# 1698
	fadd	f3, f4, f3	# 1698
	fadd	f4, f0, f17	# 126
	fmul	f3, f3, f4	# 126
	fadd	f3, f5, f3	# 1698
	mul		x8, x30, x8	# 1698
	addi	x8, x8, 60568	# 1698
	fsw		f3, 0(x8)	# 1698
	addi	x8, x0, 2	# 1699
	lw		x10, 36(x5)	# 535
	mul		x11, x30, x9	# 540
	add		x10, x10, x11	# 540
	flw		f3, 0(x10)	# 540
	fmul	f1, f1, f3	# 1699
	lw		x10, 36(x5)	# 525
	mul		x11, x30, x4	# 530
	add		x10, x10, x11	# 530
	flw		f3, 0(x10)	# 530
	fmul	f2, f2, f3	# 1699
	fadd	f1, f1, f2	# 1699
	fadd	f2, f0, f17	# 126
	fmul	f1, f1, f2	# 126
	fadd	f1, f6, f1	# 1699
	mul		x8, x30, x8	# 1699
	addi	x8, x8, 60568	# 1699
	fsw		f1, 0(x8)	# 1699
	jal		x0, beq_cont.32757	# 1692
beq.32758:
	addi	x8, x0, 0	# 1693
	mul		x8, x30, x8	# 1693
	addi	x8, x8, 60568	# 1693
	fsw		f4, 0(x8)	# 1693
	addi	x8, x0, 1	# 1694
	mul		x8, x30, x8	# 1694
	addi	x8, x8, 60568	# 1694
	fsw		f5, 0(x8)	# 1694
	addi	x8, x0, 2	# 1695
	mul		x8, x30, x8	# 1695
	addi	x8, x8, 60568	# 1695
	fsw		f6, 0(x8)	# 1695
beq_cont.32757:
	lw		x8, 24(x5)	# 387
	mul		x10, x30, x4	# 297
	addi	x10, x10, 60568	# 297
	flw		f1, 0(x10)	# 297
	fmul	f1, f1, f1	# 127
	mul		x10, x30, x9	# 297
	addi	x10, x10, 60568	# 297
	flw		f2, 0(x10)	# 297
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 297
	mul		x10, x30, x7	# 297
	addi	x10, x10, 60568	# 297
	flw		f2, 0(x10)	# 297
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 297
	fsqrt	f1, f1	# 297
	flw		f2, -60(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.32760	# 120
	fadd	f1, f0, f16	# 298
	jal		x0, feq_cont.32759	# 120
feq_else.32760:
	beq		x8, x4, beq.32762	# 298
	fadd	f3, f0, f18	# 298
	fdiv	f1, f3, f1	# 298
	jal		x0, beq_cont.32761	# 298
beq.32762:
	fadd	f3, f0, f16	# 298
	fdiv	f1, f3, f1	# 298
beq_cont.32761:
feq_cont.32759:
	mul		x8, x30, x4	# 299
	addi	x8, x8, 60568	# 299
	flw		f3, 0(x8)	# 299
	fmul	f3, f3, f1	# 299
	mul		x8, x30, x4	# 299
	addi	x8, x8, 60568	# 299
	fsw		f3, 0(x8)	# 299
	mul		x8, x30, x9	# 300
	addi	x8, x8, 60568	# 300
	flw		f3, 0(x8)	# 300
	fmul	f3, f3, f1	# 300
	mul		x8, x30, x9	# 300
	addi	x8, x8, 60568	# 300
	fsw		f3, 0(x8)	# 300
	mul		x8, x30, x7	# 301
	addi	x8, x8, 60568	# 301
	flw		f3, 0(x8)	# 301
	fmul	f1, f3, f1	# 301
	mul		x8, x30, x7	# 301
	addi	x8, x8, 60568	# 301
	fsw		f1, 0(x8)	# 301
	jal		x0, beq_cont.32755	# 1709
beq.32756:
	lw		x8, 16(x5)	# 405
	mul		x10, x30, x4	# 410
	add		x8, x8, x10	# 410
	flw		f1, 0(x8)	# 410
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x4	# 1677
	addi	x8, x8, 60568	# 1677
	fsw		f1, 0(x8)	# 1677
	lw		x8, 16(x5)	# 415
	mul		x10, x30, x9	# 420
	add		x8, x8, x10	# 420
	flw		f1, 0(x8)	# 420
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x9	# 1678
	addi	x8, x8, 60568	# 1678
	fsw		f1, 0(x8)	# 1678
	lw		x8, 16(x5)	# 425
	mul		x10, x30, x7	# 430
	add		x8, x8, x10	# 430
	flw		f1, 0(x8)	# 430
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x7	# 1679
	addi	x8, x8, 60568	# 1679
	fsw		f1, 0(x8)	# 1679
beq_cont.32755:
	jal		x0, beq_cont.32753	# 1707
beq.32754:
	mul		x8, x30, x4	# 1668
	addi	x8, x8, 60544	# 1668
	lw		x8, 0(x8)	# 1668
	mul		x10, x30, x4	# 261
	addi	x10, x10, 60568	# 261
	flw		f1, -60(x2)	# 261
	fsw		f1, 0(x10)	# 261
	mul		x10, x30, x9	# 262
	addi	x10, x10, 60568	# 262
	fsw		f1, 0(x10)	# 262
	lw		x10, -16(x2)	# 263
	mul		x11, x30, x10	# 263
	addi	x11, x11, 60568	# 263
	fsw		f1, 0(x11)	# 263
	sub		x11, x8, x9	# 1671
	sub		x8, x8, x9	# 1671
	mul		x8, x30, x8	# 1671
	add		x7, x7, x8	# 1671
	flw		f2, 0(x7)	# 1671
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.32764	# 120
	fadd	f2, f0, f1	# 226
	jal		x0, feq_cont.32763	# 120
feq_else.32764:
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.32766	# 121
	fadd	f2, f0, f18	# 228
	jal		x0, fle_cont.32765	# 121
fle_else.32766:
	fadd	f2, f0, f16	# 227
fle_cont.32765:
feq_cont.32763:
	fsub	f2, f0, f2	# 123
	mul		x7, x30, x11	# 1671
	addi	x7, x7, 60568	# 1671
	fsw		f2, 0(x7)	# 1671
beq_cont.32753:
	lw		x7, 0(x5)	# 357
	lw		x8, 32(x5)	# 495
	mul		x10, x30, x4	# 500
	add		x8, x8, x10	# 500
	flw		f1, 0(x8)	# 500
	mul		x8, x30, x4	# 1724
	addi	x8, x8, 60580	# 1724
	fsw		f1, 0(x8)	# 1724
	lw		x8, 32(x5)	# 505
	mul		x10, x30, x9	# 510
	add		x8, x8, x10	# 510
	flw		f1, 0(x8)	# 510
	mul		x8, x30, x9	# 1725
	addi	x8, x8, 60580	# 1725
	fsw		f1, 0(x8)	# 1725
	lw		x8, 32(x5)	# 515
	lw		x10, -16(x2)	# 520
	mul		x11, x30, x10	# 520
	add		x8, x8, x11	# 520
	flw		f1, 0(x8)	# 520
	mul		x8, x30, x10	# 1726
	addi	x8, x8, 60580	# 1726
	fsw		f1, 0(x8)	# 1726
	sw		x5, -76(x2)	# 1727
	sw		x6, -80(x2)	# 1727
	beq		x7, x9, beq.32768	# 1727
	beq		x7, x10, beq.32770	# 1745
	lw		x8, -40(x2)	# 1752
	beq		x7, x8, beq.32772	# 1752
	addi	x8, x0, 4	# 1763
	beq		x7, x8, beq.32774	# 1763
	jal		x0, beq_cont.32773	# 1763
beq.32774:
	mul		x7, x30, x4	# 1765
	addi	x7, x7, 60552	# 1765
	flw		f1, 0(x7)	# 1765
	lw		x7, 20(x5)	# 445
	mul		x8, x30, x4	# 450
	add		x7, x7, x8	# 450
	flw		f2, 0(x7)	# 450
	fsub	f1, f1, f2	# 1765
	lw		x7, 16(x5)	# 405
	mul		x8, x30, x4	# 410
	add		x7, x7, x8	# 410
	flw		f2, 0(x7)	# 410
	fsqrt	f2, f2	# 1765
	fmul	f1, f1, f2	# 1765
	mul		x7, x30, x10	# 1766
	addi	x7, x7, 60552	# 1766
	flw		f2, 0(x7)	# 1766
	lw		x7, 20(x5)	# 465
	mul		x8, x30, x10	# 470
	add		x7, x7, x8	# 470
	flw		f3, 0(x7)	# 470
	fsub	f2, f2, f3	# 1766
	lw		x7, 16(x5)	# 425
	mul		x8, x30, x10	# 430
	add		x7, x7, x8	# 430
	flw		f3, 0(x7)	# 430
	fsqrt	f3, f3	# 1766
	fmul	f2, f2, f3	# 1766
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1767
	flw		f4, -60(x2)	# 124
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_else.32776	# 124
	fsub	f5, f0, f1	# 124
	jal		x0, fle_cont.32775	# 124
fle_else.32776:
	fadd	f5, f0, f1	# 124
fle_cont.32775:
	lui		x7, %hi(l.27605)	# 1769
	ori		x7, x0, %lo(l.27605)	# 1769
	flw		f6, 0(x7)	# 1769
	fsw		f6, -84(x2)	# 125
	fsw		f3, -88(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32778	# 125
	fdiv	f1, f2, f1	# 1772
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_cont.32779	# 124
	fsub	f1, f0, f1	# 124
fle_cont.32779:
	lw		x29, -32(x2)	# 1774
	sw		x1, -92(x2)	# 1774
	addi	x2, x2, -96	# 1774
	lw		x31, 0(x29)	# 1774
	jalr	x1, x31, 0	# 1774
	addi	x2, x2, 96	# 1774
	lw		x1, -92(x2)	# 1774
	fadd	f2, f0, f21	# 1774
	fmul	f1, f1, f2	# 1774
	fadd	f2, f0, f19	# 1774
	fdiv	f1, f1, f2	# 1774
	jal		x0, fle_cont.32777	# 125
fle_else.32778:
	fadd	f1, f0, f20	# 1770
fle_cont.32777:
	flw		f2, -60(x2)	# 151
	fsw		f1, -92(x2)	# 151
	fle		x31, f2, f1	# 151
	beq		x31, x0, fle_else.32781	# 151
	lw		x29, -56(x2)	# 151
	sw		x1, -96(x2)	# 151
	addi	x2, x2, -100	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 100	# 151
	lw		x1, -96(x2)	# 151
	lw		x29, -52(x2)	# 151
	sw		x1, -96(x2)	# 151
	addi	x2, x2, -100	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 100	# 151
	lw		x1, -96(x2)	# 151
	jal		x0, fle_cont.32780	# 151
fle_else.32781:
	lw		x29, -56(x2)	# 152
	sw		x1, -96(x2)	# 152
	addi	x2, x2, -100	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 100	# 152
	lw		x1, -96(x2)	# 152
	lw		x5, -64(x2)	# 152
	sub		x4, x4, x5	# 152
	lw		x29, -52(x2)	# 152
	sw		x1, -96(x2)	# 152
	addi	x2, x2, -100	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 100	# 152
	lw		x1, -96(x2)	# 152
fle_cont.32780:
	flw		f2, -92(x2)	# 1776
	fsub	f1, f2, f1	# 1776
	lw		x4, -64(x2)	# 1778
	mul		x5, x30, x4	# 1778
	addi	x5, x5, 60552	# 1778
	flw		f2, 0(x5)	# 1778
	lw		x5, -76(x2)	# 455
	lw		x6, 20(x5)	# 455
	mul		x7, x30, x4	# 460
	add		x6, x6, x7	# 460
	flw		f3, 0(x6)	# 460
	fsub	f2, f2, f3	# 1778
	lw		x6, 16(x5)	# 415
	mul		x7, x30, x4	# 420
	add		x6, x6, x7	# 420
	flw		f3, 0(x6)	# 420
	fsqrt	f3, f3	# 1778
	fmul	f2, f2, f3	# 1778
	flw		f3, -60(x2)	# 124
	flw		f4, -88(x2)	# 124
	fle		x31, f4, f3	# 124
	beq		x31, x0, fle_else.32783	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.32782	# 124
fle_else.32783:
	fadd	f5, f0, f4	# 124
fle_cont.32782:
	flw		f6, -84(x2)	# 125
	fsw		f1, -96(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32785	# 125
	fdiv	f2, f2, f4	# 1783
	fle		x31, f2, f3	# 124
	beq		x31, x0, fle_cont.32786	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32786:
	lw		x29, -32(x2)	# 1784
	fadd	f1, f0, f2
	sw		x1, -100(x2)	# 1784
	addi	x2, x2, -104	# 1784
	lw		x31, 0(x29)	# 1784
	jalr	x1, x31, 0	# 1784
	addi	x2, x2, 104	# 1784
	lw		x1, -100(x2)	# 1784
	fadd	f2, f0, f21	# 1784
	fmul	f1, f1, f2	# 1784
	fadd	f2, f0, f19	# 1784
	fdiv	f1, f1, f2	# 1784
	jal		x0, fle_cont.32784	# 125
fle_else.32785:
	fadd	f1, f0, f20	# 1781
fle_cont.32784:
	flw		f2, -60(x2)	# 151
	fsw		f1, -100(x2)	# 151
	fle		x31, f2, f1	# 151
	beq		x31, x0, fle_else.32788	# 151
	lw		x29, -56(x2)	# 151
	sw		x1, -104(x2)	# 151
	addi	x2, x2, -108	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 108	# 151
	lw		x1, -104(x2)	# 151
	lw		x29, -52(x2)	# 151
	sw		x1, -104(x2)	# 151
	addi	x2, x2, -108	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 108	# 151
	lw		x1, -104(x2)	# 151
	jal		x0, fle_cont.32787	# 151
fle_else.32788:
	lw		x29, -56(x2)	# 152
	sw		x1, -104(x2)	# 152
	addi	x2, x2, -108	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 108	# 152
	lw		x1, -104(x2)	# 152
	lw		x5, -64(x2)	# 152
	sub		x4, x4, x5	# 152
	lw		x29, -52(x2)	# 152
	sw		x1, -104(x2)	# 152
	addi	x2, x2, -108	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 108	# 152
	lw		x1, -104(x2)	# 152
fle_cont.32787:
	flw		f2, -100(x2)	# 1786
	fsub	f1, f2, f1	# 1786
	lui		x4, %hi(l.27622)	# 1787
	ori		x4, x0, %lo(l.27622)	# 1787
	flw		f2, 0(x4)	# 1787
	fadd	f3, f0, f17	# 1787
	flw		f4, -96(x2)	# 1787
	fsub	f4, f3, f4	# 1787
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1787
	fsub	f1, f3, f1	# 1787
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1787
	flw		f2, -60(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.32790	# 122
	jal		x0, fle_cont.32789	# 122
fle_else.32790:
	fadd	f1, f0, f2	# 1788
fle_cont.32789:
	flw		f3, -48(x2)	# 1789
	fmul	f1, f3, f1	# 1789
	fadd	f3, f0, f27	# 1789
	fdiv	f1, f1, f3	# 1789
	lw		x4, -16(x2)	# 1789
	mul		x5, x30, x4	# 1789
	addi	x5, x5, 60580	# 1789
	fsw		f1, 0(x5)	# 1789
beq_cont.32773:
	jal		x0, beq_cont.32771	# 1752
beq.32772:
	mul		x7, x30, x4	# 1755
	addi	x7, x7, 60552	# 1755
	flw		f1, 0(x7)	# 1755
	lw		x7, 20(x5)	# 445
	mul		x8, x30, x4	# 450
	add		x7, x7, x8	# 450
	flw		f2, 0(x7)	# 450
	fsub	f1, f1, f2	# 1755
	mul		x7, x30, x10	# 1756
	addi	x7, x7, 60552	# 1756
	flw		f2, 0(x7)	# 1756
	lw		x7, 20(x5)	# 465
	mul		x8, x30, x10	# 470
	add		x7, x7, x8	# 470
	flw		f3, 0(x7)	# 470
	fsub	f2, f2, f3	# 1756
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1757
	fsqrt	f1, f1	# 1757
	fadd	f2, f0, f22	# 1757
	fdiv	f1, f1, f2	# 1757
	flw		f2, -60(x2)	# 151
	fsw		f1, -104(x2)	# 151
	fle		x31, f2, f1	# 151
	beq		x31, x0, fle_else.32792	# 151
	lw		x29, -56(x2)	# 151
	sw		x1, -108(x2)	# 151
	addi	x2, x2, -112	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 112	# 151
	lw		x1, -108(x2)	# 151
	lw		x29, -52(x2)	# 151
	sw		x1, -108(x2)	# 151
	addi	x2, x2, -112	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 112	# 151
	lw		x1, -108(x2)	# 151
	jal		x0, fle_cont.32791	# 151
fle_else.32792:
	lw		x29, -56(x2)	# 152
	sw		x1, -108(x2)	# 152
	addi	x2, x2, -112	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 112	# 152
	lw		x1, -108(x2)	# 152
	lw		x5, -64(x2)	# 152
	sub		x4, x4, x5	# 152
	lw		x29, -52(x2)	# 152
	sw		x1, -108(x2)	# 152
	addi	x2, x2, -112	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 112	# 152
	lw		x1, -108(x2)	# 152
fle_cont.32791:
	flw		f2, -104(x2)	# 1758
	fsub	f1, f2, f1	# 1758
	fadd	f2, f0, f19	# 1758
	fmul	f1, f1, f2	# 1758
	lw		x29, -36(x2)	# 1759
	sw		x1, -108(x2)	# 1759
	addi	x2, x2, -112	# 1759
	lw		x31, 0(x29)	# 1759
	jalr	x1, x31, 0	# 1759
	addi	x2, x2, 112	# 1759
	lw		x1, -108(x2)	# 1759
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1760
	fmul	f3, f1, f2	# 1760
	lw		x4, -64(x2)	# 1760
	mul		x5, x30, x4	# 1760
	addi	x5, x5, 60580	# 1760
	fsw		f3, 0(x5)	# 1760
	fadd	f3, f0, f16	# 1761
	fsub	f1, f3, f1	# 1761
	fmul	f1, f1, f2	# 1761
	lw		x5, -16(x2)	# 1761
	mul		x6, x30, x5	# 1761
	addi	x6, x6, 60580	# 1761
	fsw		f1, 0(x6)	# 1761
beq_cont.32771:
	jal		x0, beq_cont.32769	# 1745
beq.32770:
	mul		x7, x30, x9	# 1748
	addi	x7, x7, 60552	# 1748
	flw		f1, 0(x7)	# 1748
	fadd	f2, f0, f26	# 1748
	fmul	f1, f1, f2	# 1748
	lw		x29, -44(x2)	# 1748
	sw		x1, -108(x2)	# 1748
	addi	x2, x2, -112	# 1748
	lw		x31, 0(x29)	# 1748
	jalr	x1, x31, 0	# 1748
	addi	x2, x2, 112	# 1748
	lw		x1, -108(x2)	# 1748
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1749
	fmul	f3, f2, f1	# 1749
	lw		x4, -72(x2)	# 1749
	mul		x5, x30, x4	# 1749
	addi	x5, x5, 60580	# 1749
	fsw		f3, 0(x5)	# 1749
	fadd	f3, f0, f16	# 1750
	fsub	f1, f3, f1	# 1750
	fmul	f1, f2, f1	# 1750
	lw		x5, -64(x2)	# 1750
	mul		x6, x30, x5	# 1750
	addi	x6, x6, 60580	# 1750
	fsw		f1, 0(x6)	# 1750
beq_cont.32769:
	jal		x0, beq_cont.32767	# 1727
beq.32768:
	mul		x7, x30, x4	# 1730
	addi	x7, x7, 60552	# 1730
	flw		f1, 0(x7)	# 1730
	lw		x7, 20(x5)	# 445
	mul		x8, x30, x4	# 450
	add		x7, x7, x8	# 450
	flw		f2, 0(x7)	# 450
	fsub	f1, f1, f2	# 1730
	fadd	f2, f0, f28	# 1732
	fmul	f3, f1, f2	# 1732
	flw		f4, -60(x2)	# 151
	fsw		f2, -108(x2)	# 151
	fsw		f1, -112(x2)	# 151
	fle		x31, f4, f3	# 151
	beq		x31, x0, fle_else.32794	# 151
	lw		x29, -56(x2)	# 151
	fadd	f1, f0, f3
	sw		x1, -116(x2)	# 151
	addi	x2, x2, -120	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 120	# 151
	lw		x1, -116(x2)	# 151
	lw		x29, -52(x2)	# 151
	sw		x1, -116(x2)	# 151
	addi	x2, x2, -120	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 120	# 151
	lw		x1, -116(x2)	# 151
	jal		x0, fle_cont.32793	# 151
fle_else.32794:
	lw		x29, -56(x2)	# 152
	fadd	f1, f0, f3
	sw		x1, -116(x2)	# 152
	addi	x2, x2, -120	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 120	# 152
	lw		x1, -116(x2)	# 152
	lw		x5, -64(x2)	# 152
	sub		x4, x4, x5	# 152
	lw		x29, -52(x2)	# 152
	sw		x1, -116(x2)	# 152
	addi	x2, x2, -120	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 120	# 152
	lw		x1, -116(x2)	# 152
fle_cont.32793:
	fadd	f2, f0, f29	# 1732
	fmul	f1, f1, f2	# 1732
	flw		f3, -112(x2)	# 1733
	fsub	f1, f3, f1	# 1733
	fadd	f3, f0, f22	# 1733
	lw		x4, -16(x2)	# 1735
	mul		x5, x30, x4	# 1735
	addi	x5, x5, 60552	# 1735
	flw		f4, 0(x5)	# 1735
	lw		x5, -76(x2)	# 465
	lw		x6, 20(x5)	# 465
	mul		x7, x30, x4	# 470
	add		x6, x6, x7	# 470
	flw		f5, 0(x6)	# 470
	fsub	f4, f4, f5	# 1735
	flw		f5, -108(x2)	# 1737
	fmul	f5, f4, f5	# 1737
	flw		f6, -60(x2)	# 151
	fsw		f1, -116(x2)	# 151
	fsw		f3, -120(x2)	# 151
	fsw		f4, -124(x2)	# 151
	fsw		f2, -128(x2)	# 151
	fle		x31, f6, f5	# 151
	beq		x31, x0, fle_else.32796	# 151
	lw		x29, -56(x2)	# 151
	fadd	f1, f0, f5
	sw		x1, -132(x2)	# 151
	addi	x2, x2, -136	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 136	# 151
	lw		x1, -132(x2)	# 151
	lw		x29, -52(x2)	# 151
	sw		x1, -132(x2)	# 151
	addi	x2, x2, -136	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 136	# 151
	lw		x1, -132(x2)	# 151
	jal		x0, fle_cont.32795	# 151
fle_else.32796:
	lw		x29, -56(x2)	# 152
	fadd	f1, f0, f5
	sw		x1, -132(x2)	# 152
	addi	x2, x2, -136	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 136	# 152
	lw		x1, -132(x2)	# 152
	lw		x5, -64(x2)	# 152
	sub		x4, x4, x5	# 152
	lw		x29, -52(x2)	# 152
	sw		x1, -132(x2)	# 152
	addi	x2, x2, -136	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 136	# 152
	lw		x1, -132(x2)	# 152
fle_cont.32795:
	flw		f2, -128(x2)	# 1737
	fmul	f1, f1, f2	# 1737
	flw		f2, -124(x2)	# 1738
	fsub	f1, f2, f1	# 1738
	flw		f2, -116(x2)	# 125
	flw		f3, -120(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32798	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32800	# 125
	flw		f1, -48(x2)	# 1743
	jal		x0, fle_cont.32799	# 125
fle_else.32800:
	flw		f1, -60(x2)	# 1743
fle_cont.32799:
	jal		x0, fle_cont.32797	# 125
fle_else.32798:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32802	# 125
	flw		f1, -60(x2)	# 1742
	jal		x0, fle_cont.32801	# 125
fle_else.32802:
	flw		f1, -48(x2)	# 1742
fle_cont.32801:
fle_cont.32797:
	lw		x4, -64(x2)	# 1740
	mul		x5, x30, x4	# 1740
	addi	x5, x5, 60580	# 1740
	fsw		f1, 0(x5)	# 1740
beq_cont.32767:
	addi	x4, x0, 0	# 1947
	addi	x5, x0, 0	# 1947
	mul		x5, x30, x5	# 1947
	addi	x5, x5, 60536	# 1947
	lw		x5, 0(x5)	# 1947
	lw		x29, -28(x2)	# 1947
	sw		x1, -132(x2)	# 1947
	addi	x2, x2, -136	# 1947
	lw		x31, 0(x29)	# 1947
	jalr	x1, x31, 0	# 1947
	addi	x2, x2, 136	# 1947
	lw		x1, -132(x2)	# 1947
	lw		x5, -80(x2)	# 1947
	beq		x4, x5, beq.32804	# 1947
	jal		x0, beq_cont.32803	# 1947
beq.32804:
	lw		x4, -72(x2)	# 306
	mul		x5, x30, x4	# 306
	addi	x5, x5, 60568	# 306
	flw		f1, 0(x5)	# 306
	mul		x5, x30, x4	# 306
	addi	x5, x5, 60312	# 306
	flw		f2, 0(x5)	# 306
	fmul	f1, f1, f2	# 306
	lw		x5, -64(x2)	# 306
	mul		x6, x30, x5	# 306
	addi	x6, x6, 60568	# 306
	flw		f2, 0(x6)	# 306
	mul		x6, x30, x5	# 306
	addi	x6, x6, 60312	# 306
	flw		f3, 0(x6)	# 306
	fmul	f2, f2, f3	# 306
	fadd	f1, f1, f2	# 306
	lw		x6, -16(x2)	# 306
	mul		x7, x30, x6	# 306
	addi	x7, x7, 60568	# 306
	flw		f2, 0(x7)	# 306
	mul		x7, x30, x6	# 306
	addi	x7, x7, 60312	# 306
	flw		f3, 0(x7)	# 306
	fmul	f2, f2, f3	# 306
	fadd	f1, f1, f2	# 306
	fsub	f1, f0, f1	# 123
	flw		f2, -60(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_cont.32805	# 121
	fadd	f1, f0, f0	# 1949
fle_cont.32805:
	flw		f2, -24(x2)	# 1950
	fmul	f1, f2, f1	# 1950
	lw		x7, -76(x2)	# 475
	lw		x7, 28(x7)	# 475
	mul		x8, x30, x4	# 480
	add		x7, x7, x8	# 480
	flw		f2, 0(x7)	# 480
	fmul	f1, f1, f2	# 1950
	mul		x7, x30, x4	# 316
	addi	x7, x7, 60592	# 316
	flw		f2, 0(x7)	# 316
	mul		x7, x30, x4	# 316
	addi	x7, x7, 60580	# 316
	flw		f3, 0(x7)	# 316
	fmul	f3, f1, f3	# 316
	fadd	f2, f2, f3	# 316
	mul		x4, x30, x4	# 316
	addi	x4, x4, 60592	# 316
	fsw		f2, 0(x4)	# 316
	mul		x4, x30, x5	# 317
	addi	x4, x4, 60592	# 317
	flw		f2, 0(x4)	# 317
	mul		x4, x30, x5	# 317
	addi	x4, x4, 60580	# 317
	flw		f3, 0(x4)	# 317
	fmul	f3, f1, f3	# 317
	fadd	f2, f2, f3	# 317
	mul		x4, x30, x5	# 317
	addi	x4, x4, 60592	# 317
	fsw		f2, 0(x4)	# 317
	mul		x4, x30, x6	# 318
	addi	x4, x4, 60592	# 318
	flw		f2, 0(x4)	# 318
	mul		x4, x30, x6	# 318
	addi	x4, x4, 60580	# 318
	flw		f3, 0(x4)	# 318
	fmul	f1, f1, f3	# 318
	fadd	f1, f2, f1	# 318
	mul		x4, x30, x6	# 318
	addi	x4, x4, 60592	# 318
	fsw		f1, 0(x4)	# 318
beq_cont.32803:
beq_cont.32752:
	jal		x0, fle_cont.32746	# 122
fle_else.32747:
	addi	x19, x7, 1	# 1964
	mul		x19, x30, x19	# 1964
	add		x19, x4, x19	# 1964
	lw		x19, 0(x19)	# 1964
	lui		x20, %hi(l.27893)	# 1964
	ori		x20, x0, %lo(l.27893)	# 1964
	flw		f5, 0(x20)	# 1964
	fdiv	f4, f4, f5	# 1964
	mul		x20, x30, x17	# 1648
	addi	x20, x20, 60548	# 1648
	fsw		f1, 0(x20)	# 1648
	mul		x20, x30, x17	# 1649
	addi	x20, x20, 60536	# 1649
	lw		x20, 0(x20)	# 1649
	fsw		f4, -132(x2)	# 1649
	sw		x10, -28(x2)	# 1649
	sw		x14, -32(x2)	# 1649
	sw		x13, -36(x2)	# 1649
	sw		x16, -40(x2)	# 1649
	sw		x9, -44(x2)	# 1649
	fsw		f2, -48(x2)	# 1649
	sw		x12, -52(x2)	# 1649
	sw		x11, -56(x2)	# 1649
	fsw		f3, -60(x2)	# 1649
	sw		x18, -64(x2)	# 1649
	sw		x19, -136(x2)	# 1649
	sw		x17, -72(x2)	# 1649
	addi	x6, x19, 0
	addi	x5, x20, 0
	addi	x4, x17, 0
	addi	x29, x8, 0
	sw		x1, -140(x2)	# 1649
	addi	x2, x2, -144	# 1649
	lw		x31, 0(x29)	# 1649
	jalr	x1, x31, 0	# 1649
	addi	x2, x2, 144	# 1649
	lw		x1, -140(x2)	# 1649
	lw		x4, -72(x2)	# 1650
	mul		x5, x30, x4	# 1650
	addi	x5, x5, 60548	# 1650
	flw		f1, 0(x5)	# 1650
	fadd	f2, f0, f23	# 1652
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32807	# 125
	addi	x5, x0, 0	# 1654
	jal		x0, fle_cont.32806	# 125
fle_else.32807:
	fadd	f2, f0, f25	# 1653
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32809	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32808	# 125
fle_else.32809:
	addi	x5, x0, 1	# 125
fle_cont.32808:
fle_cont.32806:
	addi	x6, x0, 0	# 1941
	beq		x5, x6, beq_cont.32810	# 1941
	mul		x5, x30, x6	# 1942
	addi	x5, x5, 60564	# 1942
	lw		x5, 0(x5)	# 1942
	mul		x5, x30, x5	# 1942
	addi	x5, x5, 60048	# 1942
	lw		x5, 0(x5)	# 1942
	lw		x7, -136(x2)	# 653
	lw		x7, 0(x7)	# 653
	lw		x8, 4(x5)	# 367
	lw		x9, -64(x2)	# 1707
	beq		x8, x9, beq.32812	# 1707
	lw		x7, -16(x2)	# 1709
	beq		x8, x7, beq.32814	# 1709
	mul		x8, x30, x4	# 1684
	addi	x8, x8, 60552	# 1684
	flw		f1, 0(x8)	# 1684
	lw		x8, 20(x5)	# 445
	mul		x10, x30, x4	# 450
	add		x8, x8, x10	# 450
	flw		f2, 0(x8)	# 450
	fsub	f1, f1, f2	# 1684
	mul		x8, x30, x9	# 1685
	addi	x8, x8, 60552	# 1685
	flw		f2, 0(x8)	# 1685
	lw		x8, 20(x5)	# 455
	mul		x10, x30, x9	# 460
	add		x8, x8, x10	# 460
	flw		f3, 0(x8)	# 460
	fsub	f2, f2, f3	# 1685
	mul		x8, x30, x7	# 1686
	addi	x8, x8, 60552	# 1686
	flw		f3, 0(x8)	# 1686
	lw		x8, 20(x5)	# 465
	mul		x10, x30, x7	# 470
	add		x8, x8, x10	# 470
	flw		f4, 0(x8)	# 470
	fsub	f3, f3, f4	# 1686
	lw		x8, 16(x5)	# 405
	mul		x10, x30, x4	# 410
	add		x8, x8, x10	# 410
	flw		f4, 0(x8)	# 410
	fmul	f4, f1, f4	# 1688
	lw		x8, 16(x5)	# 415
	mul		x10, x30, x9	# 420
	add		x8, x8, x10	# 420
	flw		f5, 0(x8)	# 420
	fmul	f5, f2, f5	# 1689
	lw		x8, 16(x5)	# 425
	mul		x10, x30, x7	# 430
	add		x8, x8, x10	# 430
	flw		f6, 0(x8)	# 430
	fmul	f6, f3, f6	# 1690
	lw		x8, 12(x5)	# 396
	beq		x8, x4, beq.32816	# 1692
	addi	x8, x0, 0	# 1697
	lw		x10, 36(x5)	# 545
	mul		x11, x30, x7	# 550
	add		x10, x10, x11	# 550
	flw		f7, 0(x10)	# 550
	fmul	f7, f2, f7	# 1697
	lw		x10, 36(x5)	# 535
	mul		x11, x30, x9	# 540
	add		x10, x10, x11	# 540
	flw		f8, 0(x10)	# 540
	fmul	f8, f3, f8	# 1697
	fadd	f7, f7, f8	# 1697
	fadd	f8, f0, f17	# 126
	fmul	f7, f7, f8	# 126
	fadd	f4, f4, f7	# 1697
	mul		x8, x30, x8	# 1697
	addi	x8, x8, 60568	# 1697
	fsw		f4, 0(x8)	# 1697
	addi	x8, x0, 1	# 1698
	lw		x10, 36(x5)	# 545
	mul		x11, x30, x7	# 550
	add		x10, x10, x11	# 550
	flw		f4, 0(x10)	# 550
	fmul	f4, f1, f4	# 1698
	lw		x10, 36(x5)	# 525
	mul		x11, x30, x4	# 530
	add		x10, x10, x11	# 530
	flw		f7, 0(x10)	# 530
	fmul	f3, f3, f7	# 1698
	fadd	f3, f4, f3	# 1698
	fadd	f4, f0, f17	# 126
	fmul	f3, f3, f4	# 126
	fadd	f3, f5, f3	# 1698
	mul		x8, x30, x8	# 1698
	addi	x8, x8, 60568	# 1698
	fsw		f3, 0(x8)	# 1698
	addi	x8, x0, 2	# 1699
	lw		x10, 36(x5)	# 535
	mul		x11, x30, x9	# 540
	add		x10, x10, x11	# 540
	flw		f3, 0(x10)	# 540
	fmul	f1, f1, f3	# 1699
	lw		x10, 36(x5)	# 525
	mul		x11, x30, x4	# 530
	add		x10, x10, x11	# 530
	flw		f3, 0(x10)	# 530
	fmul	f2, f2, f3	# 1699
	fadd	f1, f1, f2	# 1699
	fadd	f2, f0, f17	# 126
	fmul	f1, f1, f2	# 126
	fadd	f1, f6, f1	# 1699
	mul		x8, x30, x8	# 1699
	addi	x8, x8, 60568	# 1699
	fsw		f1, 0(x8)	# 1699
	jal		x0, beq_cont.32815	# 1692
beq.32816:
	addi	x8, x0, 0	# 1693
	mul		x8, x30, x8	# 1693
	addi	x8, x8, 60568	# 1693
	fsw		f4, 0(x8)	# 1693
	addi	x8, x0, 1	# 1694
	mul		x8, x30, x8	# 1694
	addi	x8, x8, 60568	# 1694
	fsw		f5, 0(x8)	# 1694
	addi	x8, x0, 2	# 1695
	mul		x8, x30, x8	# 1695
	addi	x8, x8, 60568	# 1695
	fsw		f6, 0(x8)	# 1695
beq_cont.32815:
	lw		x8, 24(x5)	# 387
	mul		x10, x30, x4	# 297
	addi	x10, x10, 60568	# 297
	flw		f1, 0(x10)	# 297
	fmul	f1, f1, f1	# 127
	mul		x10, x30, x9	# 297
	addi	x10, x10, 60568	# 297
	flw		f2, 0(x10)	# 297
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 297
	mul		x10, x30, x7	# 297
	addi	x10, x10, 60568	# 297
	flw		f2, 0(x10)	# 297
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 297
	fsqrt	f1, f1	# 297
	flw		f2, -60(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.32818	# 120
	fadd	f1, f0, f16	# 298
	jal		x0, feq_cont.32817	# 120
feq_else.32818:
	beq		x8, x4, beq.32820	# 298
	fadd	f3, f0, f18	# 298
	fdiv	f1, f3, f1	# 298
	jal		x0, beq_cont.32819	# 298
beq.32820:
	fadd	f3, f0, f16	# 298
	fdiv	f1, f3, f1	# 298
beq_cont.32819:
feq_cont.32817:
	mul		x8, x30, x4	# 299
	addi	x8, x8, 60568	# 299
	flw		f3, 0(x8)	# 299
	fmul	f3, f3, f1	# 299
	mul		x8, x30, x4	# 299
	addi	x8, x8, 60568	# 299
	fsw		f3, 0(x8)	# 299
	mul		x8, x30, x9	# 300
	addi	x8, x8, 60568	# 300
	flw		f3, 0(x8)	# 300
	fmul	f3, f3, f1	# 300
	mul		x8, x30, x9	# 300
	addi	x8, x8, 60568	# 300
	fsw		f3, 0(x8)	# 300
	mul		x8, x30, x7	# 301
	addi	x8, x8, 60568	# 301
	flw		f3, 0(x8)	# 301
	fmul	f1, f3, f1	# 301
	mul		x8, x30, x7	# 301
	addi	x8, x8, 60568	# 301
	fsw		f1, 0(x8)	# 301
	jal		x0, beq_cont.32813	# 1709
beq.32814:
	lw		x8, 16(x5)	# 405
	mul		x10, x30, x4	# 410
	add		x8, x8, x10	# 410
	flw		f1, 0(x8)	# 410
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x4	# 1677
	addi	x8, x8, 60568	# 1677
	fsw		f1, 0(x8)	# 1677
	lw		x8, 16(x5)	# 415
	mul		x10, x30, x9	# 420
	add		x8, x8, x10	# 420
	flw		f1, 0(x8)	# 420
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x9	# 1678
	addi	x8, x8, 60568	# 1678
	fsw		f1, 0(x8)	# 1678
	lw		x8, 16(x5)	# 425
	mul		x10, x30, x7	# 430
	add		x8, x8, x10	# 430
	flw		f1, 0(x8)	# 430
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x7	# 1679
	addi	x8, x8, 60568	# 1679
	fsw		f1, 0(x8)	# 1679
beq_cont.32813:
	jal		x0, beq_cont.32811	# 1707
beq.32812:
	mul		x8, x30, x4	# 1668
	addi	x8, x8, 60544	# 1668
	lw		x8, 0(x8)	# 1668
	mul		x10, x30, x4	# 261
	addi	x10, x10, 60568	# 261
	flw		f1, -60(x2)	# 261
	fsw		f1, 0(x10)	# 261
	mul		x10, x30, x9	# 262
	addi	x10, x10, 60568	# 262
	fsw		f1, 0(x10)	# 262
	lw		x10, -16(x2)	# 263
	mul		x11, x30, x10	# 263
	addi	x11, x11, 60568	# 263
	fsw		f1, 0(x11)	# 263
	sub		x11, x8, x9	# 1671
	sub		x8, x8, x9	# 1671
	mul		x8, x30, x8	# 1671
	add		x7, x7, x8	# 1671
	flw		f2, 0(x7)	# 1671
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.32822	# 120
	fadd	f2, f0, f1	# 226
	jal		x0, feq_cont.32821	# 120
feq_else.32822:
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.32824	# 121
	fadd	f2, f0, f18	# 228
	jal		x0, fle_cont.32823	# 121
fle_else.32824:
	fadd	f2, f0, f16	# 227
fle_cont.32823:
feq_cont.32821:
	fsub	f2, f0, f2	# 123
	mul		x7, x30, x11	# 1671
	addi	x7, x7, 60568	# 1671
	fsw		f2, 0(x7)	# 1671
beq_cont.32811:
	lw		x7, 0(x5)	# 357
	lw		x8, 32(x5)	# 495
	mul		x10, x30, x4	# 500
	add		x8, x8, x10	# 500
	flw		f1, 0(x8)	# 500
	mul		x8, x30, x4	# 1724
	addi	x8, x8, 60580	# 1724
	fsw		f1, 0(x8)	# 1724
	lw		x8, 32(x5)	# 505
	mul		x10, x30, x9	# 510
	add		x8, x8, x10	# 510
	flw		f1, 0(x8)	# 510
	mul		x8, x30, x9	# 1725
	addi	x8, x8, 60580	# 1725
	fsw		f1, 0(x8)	# 1725
	lw		x8, 32(x5)	# 515
	lw		x10, -16(x2)	# 520
	mul		x11, x30, x10	# 520
	add		x8, x8, x11	# 520
	flw		f1, 0(x8)	# 520
	mul		x8, x30, x10	# 1726
	addi	x8, x8, 60580	# 1726
	fsw		f1, 0(x8)	# 1726
	sw		x5, -140(x2)	# 1727
	sw		x6, -144(x2)	# 1727
	beq		x7, x9, beq.32826	# 1727
	beq		x7, x10, beq.32828	# 1745
	lw		x8, -40(x2)	# 1752
	beq		x7, x8, beq.32830	# 1752
	addi	x8, x0, 4	# 1763
	beq		x7, x8, beq.32832	# 1763
	jal		x0, beq_cont.32831	# 1763
beq.32832:
	mul		x7, x30, x4	# 1765
	addi	x7, x7, 60552	# 1765
	flw		f1, 0(x7)	# 1765
	lw		x7, 20(x5)	# 445
	mul		x8, x30, x4	# 450
	add		x7, x7, x8	# 450
	flw		f2, 0(x7)	# 450
	fsub	f1, f1, f2	# 1765
	lw		x7, 16(x5)	# 405
	mul		x8, x30, x4	# 410
	add		x7, x7, x8	# 410
	flw		f2, 0(x7)	# 410
	fsqrt	f2, f2	# 1765
	fmul	f1, f1, f2	# 1765
	mul		x7, x30, x10	# 1766
	addi	x7, x7, 60552	# 1766
	flw		f2, 0(x7)	# 1766
	lw		x7, 20(x5)	# 465
	mul		x8, x30, x10	# 470
	add		x7, x7, x8	# 470
	flw		f3, 0(x7)	# 470
	fsub	f2, f2, f3	# 1766
	lw		x7, 16(x5)	# 425
	mul		x8, x30, x10	# 430
	add		x7, x7, x8	# 430
	flw		f3, 0(x7)	# 430
	fsqrt	f3, f3	# 1766
	fmul	f2, f2, f3	# 1766
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1767
	flw		f4, -60(x2)	# 124
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_else.32834	# 124
	fsub	f5, f0, f1	# 124
	jal		x0, fle_cont.32833	# 124
fle_else.32834:
	fadd	f5, f0, f1	# 124
fle_cont.32833:
	lui		x7, %hi(l.27605)	# 1769
	ori		x7, x0, %lo(l.27605)	# 1769
	flw		f6, 0(x7)	# 1769
	fsw		f6, -148(x2)	# 125
	fsw		f3, -152(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32836	# 125
	fdiv	f1, f2, f1	# 1772
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_cont.32837	# 124
	fsub	f1, f0, f1	# 124
fle_cont.32837:
	lw		x29, -32(x2)	# 1774
	sw		x1, -156(x2)	# 1774
	addi	x2, x2, -160	# 1774
	lw		x31, 0(x29)	# 1774
	jalr	x1, x31, 0	# 1774
	addi	x2, x2, 160	# 1774
	lw		x1, -156(x2)	# 1774
	fadd	f2, f0, f21	# 1774
	fmul	f1, f1, f2	# 1774
	fadd	f2, f0, f19	# 1774
	fdiv	f1, f1, f2	# 1774
	jal		x0, fle_cont.32835	# 125
fle_else.32836:
	fadd	f1, f0, f20	# 1770
fle_cont.32835:
	flw		f2, -60(x2)	# 151
	fsw		f1, -156(x2)	# 151
	fle		x31, f2, f1	# 151
	beq		x31, x0, fle_else.32839	# 151
	lw		x29, -56(x2)	# 151
	sw		x1, -160(x2)	# 151
	addi	x2, x2, -164	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 164	# 151
	lw		x1, -160(x2)	# 151
	lw		x29, -52(x2)	# 151
	sw		x1, -160(x2)	# 151
	addi	x2, x2, -164	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 164	# 151
	lw		x1, -160(x2)	# 151
	jal		x0, fle_cont.32838	# 151
fle_else.32839:
	lw		x29, -56(x2)	# 152
	sw		x1, -160(x2)	# 152
	addi	x2, x2, -164	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 164	# 152
	lw		x1, -160(x2)	# 152
	lw		x5, -64(x2)	# 152
	sub		x4, x4, x5	# 152
	lw		x29, -52(x2)	# 152
	sw		x1, -160(x2)	# 152
	addi	x2, x2, -164	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 164	# 152
	lw		x1, -160(x2)	# 152
fle_cont.32838:
	flw		f2, -156(x2)	# 1776
	fsub	f1, f2, f1	# 1776
	lw		x4, -64(x2)	# 1778
	mul		x5, x30, x4	# 1778
	addi	x5, x5, 60552	# 1778
	flw		f2, 0(x5)	# 1778
	lw		x5, -140(x2)	# 455
	lw		x6, 20(x5)	# 455
	mul		x7, x30, x4	# 460
	add		x6, x6, x7	# 460
	flw		f3, 0(x6)	# 460
	fsub	f2, f2, f3	# 1778
	lw		x6, 16(x5)	# 415
	mul		x7, x30, x4	# 420
	add		x6, x6, x7	# 420
	flw		f3, 0(x6)	# 420
	fsqrt	f3, f3	# 1778
	fmul	f2, f2, f3	# 1778
	flw		f3, -60(x2)	# 124
	flw		f4, -152(x2)	# 124
	fle		x31, f4, f3	# 124
	beq		x31, x0, fle_else.32841	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.32840	# 124
fle_else.32841:
	fadd	f5, f0, f4	# 124
fle_cont.32840:
	flw		f6, -148(x2)	# 125
	fsw		f1, -160(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32843	# 125
	fdiv	f2, f2, f4	# 1783
	fle		x31, f2, f3	# 124
	beq		x31, x0, fle_cont.32844	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32844:
	lw		x29, -32(x2)	# 1784
	fadd	f1, f0, f2
	sw		x1, -164(x2)	# 1784
	addi	x2, x2, -168	# 1784
	lw		x31, 0(x29)	# 1784
	jalr	x1, x31, 0	# 1784
	addi	x2, x2, 168	# 1784
	lw		x1, -164(x2)	# 1784
	fadd	f2, f0, f21	# 1784
	fmul	f1, f1, f2	# 1784
	fadd	f2, f0, f19	# 1784
	fdiv	f1, f1, f2	# 1784
	jal		x0, fle_cont.32842	# 125
fle_else.32843:
	fadd	f1, f0, f20	# 1781
fle_cont.32842:
	flw		f2, -60(x2)	# 151
	fsw		f1, -164(x2)	# 151
	fle		x31, f2, f1	# 151
	beq		x31, x0, fle_else.32846	# 151
	lw		x29, -56(x2)	# 151
	sw		x1, -168(x2)	# 151
	addi	x2, x2, -172	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 172	# 151
	lw		x1, -168(x2)	# 151
	lw		x29, -52(x2)	# 151
	sw		x1, -168(x2)	# 151
	addi	x2, x2, -172	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 172	# 151
	lw		x1, -168(x2)	# 151
	jal		x0, fle_cont.32845	# 151
fle_else.32846:
	lw		x29, -56(x2)	# 152
	sw		x1, -168(x2)	# 152
	addi	x2, x2, -172	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 172	# 152
	lw		x1, -168(x2)	# 152
	lw		x5, -64(x2)	# 152
	sub		x4, x4, x5	# 152
	lw		x29, -52(x2)	# 152
	sw		x1, -168(x2)	# 152
	addi	x2, x2, -172	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 172	# 152
	lw		x1, -168(x2)	# 152
fle_cont.32845:
	flw		f2, -164(x2)	# 1786
	fsub	f1, f2, f1	# 1786
	lui		x4, %hi(l.27622)	# 1787
	ori		x4, x0, %lo(l.27622)	# 1787
	flw		f2, 0(x4)	# 1787
	fadd	f3, f0, f17	# 1787
	flw		f4, -160(x2)	# 1787
	fsub	f4, f3, f4	# 1787
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1787
	fsub	f1, f3, f1	# 1787
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1787
	flw		f2, -60(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.32848	# 122
	jal		x0, fle_cont.32847	# 122
fle_else.32848:
	fadd	f1, f0, f2	# 1788
fle_cont.32847:
	flw		f3, -48(x2)	# 1789
	fmul	f1, f3, f1	# 1789
	fadd	f3, f0, f27	# 1789
	fdiv	f1, f1, f3	# 1789
	lw		x4, -16(x2)	# 1789
	mul		x5, x30, x4	# 1789
	addi	x5, x5, 60580	# 1789
	fsw		f1, 0(x5)	# 1789
beq_cont.32831:
	jal		x0, beq_cont.32829	# 1752
beq.32830:
	mul		x7, x30, x4	# 1755
	addi	x7, x7, 60552	# 1755
	flw		f1, 0(x7)	# 1755
	lw		x7, 20(x5)	# 445
	mul		x8, x30, x4	# 450
	add		x7, x7, x8	# 450
	flw		f2, 0(x7)	# 450
	fsub	f1, f1, f2	# 1755
	mul		x7, x30, x10	# 1756
	addi	x7, x7, 60552	# 1756
	flw		f2, 0(x7)	# 1756
	lw		x7, 20(x5)	# 465
	mul		x8, x30, x10	# 470
	add		x7, x7, x8	# 470
	flw		f3, 0(x7)	# 470
	fsub	f2, f2, f3	# 1756
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1757
	fsqrt	f1, f1	# 1757
	fadd	f2, f0, f22	# 1757
	fdiv	f1, f1, f2	# 1757
	flw		f2, -60(x2)	# 151
	fsw		f1, -168(x2)	# 151
	fle		x31, f2, f1	# 151
	beq		x31, x0, fle_else.32850	# 151
	lw		x29, -56(x2)	# 151
	sw		x1, -172(x2)	# 151
	addi	x2, x2, -176	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 176	# 151
	lw		x1, -172(x2)	# 151
	lw		x29, -52(x2)	# 151
	sw		x1, -172(x2)	# 151
	addi	x2, x2, -176	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 176	# 151
	lw		x1, -172(x2)	# 151
	jal		x0, fle_cont.32849	# 151
fle_else.32850:
	lw		x29, -56(x2)	# 152
	sw		x1, -172(x2)	# 152
	addi	x2, x2, -176	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 176	# 152
	lw		x1, -172(x2)	# 152
	lw		x5, -64(x2)	# 152
	sub		x4, x4, x5	# 152
	lw		x29, -52(x2)	# 152
	sw		x1, -172(x2)	# 152
	addi	x2, x2, -176	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 176	# 152
	lw		x1, -172(x2)	# 152
fle_cont.32849:
	flw		f2, -168(x2)	# 1758
	fsub	f1, f2, f1	# 1758
	fadd	f2, f0, f19	# 1758
	fmul	f1, f1, f2	# 1758
	lw		x29, -36(x2)	# 1759
	sw		x1, -172(x2)	# 1759
	addi	x2, x2, -176	# 1759
	lw		x31, 0(x29)	# 1759
	jalr	x1, x31, 0	# 1759
	addi	x2, x2, 176	# 1759
	lw		x1, -172(x2)	# 1759
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1760
	fmul	f3, f1, f2	# 1760
	lw		x4, -64(x2)	# 1760
	mul		x5, x30, x4	# 1760
	addi	x5, x5, 60580	# 1760
	fsw		f3, 0(x5)	# 1760
	fadd	f3, f0, f16	# 1761
	fsub	f1, f3, f1	# 1761
	fmul	f1, f1, f2	# 1761
	lw		x5, -16(x2)	# 1761
	mul		x6, x30, x5	# 1761
	addi	x6, x6, 60580	# 1761
	fsw		f1, 0(x6)	# 1761
beq_cont.32829:
	jal		x0, beq_cont.32827	# 1745
beq.32828:
	mul		x7, x30, x9	# 1748
	addi	x7, x7, 60552	# 1748
	flw		f1, 0(x7)	# 1748
	fadd	f2, f0, f26	# 1748
	fmul	f1, f1, f2	# 1748
	lw		x29, -44(x2)	# 1748
	sw		x1, -172(x2)	# 1748
	addi	x2, x2, -176	# 1748
	lw		x31, 0(x29)	# 1748
	jalr	x1, x31, 0	# 1748
	addi	x2, x2, 176	# 1748
	lw		x1, -172(x2)	# 1748
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1749
	fmul	f3, f2, f1	# 1749
	lw		x4, -72(x2)	# 1749
	mul		x5, x30, x4	# 1749
	addi	x5, x5, 60580	# 1749
	fsw		f3, 0(x5)	# 1749
	fadd	f3, f0, f16	# 1750
	fsub	f1, f3, f1	# 1750
	fmul	f1, f2, f1	# 1750
	lw		x5, -64(x2)	# 1750
	mul		x6, x30, x5	# 1750
	addi	x6, x6, 60580	# 1750
	fsw		f1, 0(x6)	# 1750
beq_cont.32827:
	jal		x0, beq_cont.32825	# 1727
beq.32826:
	mul		x7, x30, x4	# 1730
	addi	x7, x7, 60552	# 1730
	flw		f1, 0(x7)	# 1730
	lw		x7, 20(x5)	# 445
	mul		x8, x30, x4	# 450
	add		x7, x7, x8	# 450
	flw		f2, 0(x7)	# 450
	fsub	f1, f1, f2	# 1730
	fadd	f2, f0, f28	# 1732
	fmul	f3, f1, f2	# 1732
	flw		f4, -60(x2)	# 151
	fsw		f2, -172(x2)	# 151
	fsw		f1, -176(x2)	# 151
	fle		x31, f4, f3	# 151
	beq		x31, x0, fle_else.32852	# 151
	lw		x29, -56(x2)	# 151
	fadd	f1, f0, f3
	sw		x1, -180(x2)	# 151
	addi	x2, x2, -184	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 184	# 151
	lw		x1, -180(x2)	# 151
	lw		x29, -52(x2)	# 151
	sw		x1, -180(x2)	# 151
	addi	x2, x2, -184	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 184	# 151
	lw		x1, -180(x2)	# 151
	jal		x0, fle_cont.32851	# 151
fle_else.32852:
	lw		x29, -56(x2)	# 152
	fadd	f1, f0, f3
	sw		x1, -180(x2)	# 152
	addi	x2, x2, -184	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 184	# 152
	lw		x1, -180(x2)	# 152
	lw		x5, -64(x2)	# 152
	sub		x4, x4, x5	# 152
	lw		x29, -52(x2)	# 152
	sw		x1, -180(x2)	# 152
	addi	x2, x2, -184	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 184	# 152
	lw		x1, -180(x2)	# 152
fle_cont.32851:
	fadd	f2, f0, f29	# 1732
	fmul	f1, f1, f2	# 1732
	flw		f3, -176(x2)	# 1733
	fsub	f1, f3, f1	# 1733
	fadd	f3, f0, f22	# 1733
	lw		x4, -16(x2)	# 1735
	mul		x5, x30, x4	# 1735
	addi	x5, x5, 60552	# 1735
	flw		f4, 0(x5)	# 1735
	lw		x5, -140(x2)	# 465
	lw		x6, 20(x5)	# 465
	mul		x7, x30, x4	# 470
	add		x6, x6, x7	# 470
	flw		f5, 0(x6)	# 470
	fsub	f4, f4, f5	# 1735
	flw		f5, -172(x2)	# 1737
	fmul	f5, f4, f5	# 1737
	flw		f6, -60(x2)	# 151
	fsw		f1, -180(x2)	# 151
	fsw		f3, -184(x2)	# 151
	fsw		f4, -188(x2)	# 151
	fsw		f2, -192(x2)	# 151
	fle		x31, f6, f5	# 151
	beq		x31, x0, fle_else.32854	# 151
	lw		x29, -56(x2)	# 151
	fadd	f1, f0, f5
	sw		x1, -196(x2)	# 151
	addi	x2, x2, -200	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 200	# 151
	lw		x1, -196(x2)	# 151
	lw		x29, -52(x2)	# 151
	sw		x1, -196(x2)	# 151
	addi	x2, x2, -200	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 200	# 151
	lw		x1, -196(x2)	# 151
	jal		x0, fle_cont.32853	# 151
fle_else.32854:
	lw		x29, -56(x2)	# 152
	fadd	f1, f0, f5
	sw		x1, -196(x2)	# 152
	addi	x2, x2, -200	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 200	# 152
	lw		x1, -196(x2)	# 152
	lw		x5, -64(x2)	# 152
	sub		x4, x4, x5	# 152
	lw		x29, -52(x2)	# 152
	sw		x1, -196(x2)	# 152
	addi	x2, x2, -200	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 200	# 152
	lw		x1, -196(x2)	# 152
fle_cont.32853:
	flw		f2, -192(x2)	# 1737
	fmul	f1, f1, f2	# 1737
	flw		f2, -188(x2)	# 1738
	fsub	f1, f2, f1	# 1738
	flw		f2, -180(x2)	# 125
	flw		f3, -184(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32856	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32858	# 125
	flw		f1, -48(x2)	# 1743
	jal		x0, fle_cont.32857	# 125
fle_else.32858:
	flw		f1, -60(x2)	# 1743
fle_cont.32857:
	jal		x0, fle_cont.32855	# 125
fle_else.32856:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32860	# 125
	flw		f1, -60(x2)	# 1742
	jal		x0, fle_cont.32859	# 125
fle_else.32860:
	flw		f1, -48(x2)	# 1742
fle_cont.32859:
fle_cont.32855:
	lw		x4, -64(x2)	# 1740
	mul		x5, x30, x4	# 1740
	addi	x5, x5, 60580	# 1740
	fsw		f1, 0(x5)	# 1740
beq_cont.32825:
	addi	x4, x0, 0	# 1947
	addi	x5, x0, 0	# 1947
	mul		x5, x30, x5	# 1947
	addi	x5, x5, 60536	# 1947
	lw		x5, 0(x5)	# 1947
	lw		x29, -28(x2)	# 1947
	sw		x1, -196(x2)	# 1947
	addi	x2, x2, -200	# 1947
	lw		x31, 0(x29)	# 1947
	jalr	x1, x31, 0	# 1947
	addi	x2, x2, 200	# 1947
	lw		x1, -196(x2)	# 1947
	lw		x5, -144(x2)	# 1947
	beq		x4, x5, beq.32862	# 1947
	jal		x0, beq_cont.32861	# 1947
beq.32862:
	lw		x4, -72(x2)	# 306
	mul		x5, x30, x4	# 306
	addi	x5, x5, 60568	# 306
	flw		f1, 0(x5)	# 306
	mul		x5, x30, x4	# 306
	addi	x5, x5, 60312	# 306
	flw		f2, 0(x5)	# 306
	fmul	f1, f1, f2	# 306
	lw		x5, -64(x2)	# 306
	mul		x6, x30, x5	# 306
	addi	x6, x6, 60568	# 306
	flw		f2, 0(x6)	# 306
	mul		x6, x30, x5	# 306
	addi	x6, x6, 60312	# 306
	flw		f3, 0(x6)	# 306
	fmul	f2, f2, f3	# 306
	fadd	f1, f1, f2	# 306
	lw		x6, -16(x2)	# 306
	mul		x7, x30, x6	# 306
	addi	x7, x7, 60568	# 306
	flw		f2, 0(x7)	# 306
	mul		x7, x30, x6	# 306
	addi	x7, x7, 60312	# 306
	flw		f3, 0(x7)	# 306
	fmul	f2, f2, f3	# 306
	fadd	f1, f1, f2	# 306
	fsub	f1, f0, f1	# 123
	flw		f2, -60(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_cont.32863	# 121
	fadd	f1, f0, f0	# 1949
fle_cont.32863:
	flw		f2, -132(x2)	# 1950
	fmul	f1, f2, f1	# 1950
	lw		x7, -140(x2)	# 475
	lw		x7, 28(x7)	# 475
	mul		x8, x30, x4	# 480
	add		x7, x7, x8	# 480
	flw		f2, 0(x7)	# 480
	fmul	f1, f1, f2	# 1950
	mul		x7, x30, x4	# 316
	addi	x7, x7, 60592	# 316
	flw		f2, 0(x7)	# 316
	mul		x7, x30, x4	# 316
	addi	x7, x7, 60580	# 316
	flw		f3, 0(x7)	# 316
	fmul	f3, f1, f3	# 316
	fadd	f2, f2, f3	# 316
	mul		x4, x30, x4	# 316
	addi	x4, x4, 60592	# 316
	fsw		f2, 0(x4)	# 316
	mul		x4, x30, x5	# 317
	addi	x4, x4, 60592	# 317
	flw		f2, 0(x4)	# 317
	mul		x4, x30, x5	# 317
	addi	x4, x4, 60580	# 317
	flw		f3, 0(x4)	# 317
	fmul	f3, f1, f3	# 317
	fadd	f2, f2, f3	# 317
	mul		x4, x30, x5	# 317
	addi	x4, x4, 60592	# 317
	fsw		f2, 0(x4)	# 317
	mul		x4, x30, x6	# 318
	addi	x4, x4, 60592	# 318
	flw		f2, 0(x4)	# 318
	mul		x4, x30, x6	# 318
	addi	x4, x4, 60580	# 318
	flw		f3, 0(x4)	# 318
	fmul	f1, f1, f3	# 318
	fadd	f1, f2, f1	# 318
	mul		x4, x30, x6	# 318
	addi	x4, x4, 60592	# 318
	fsw		f1, 0(x4)	# 318
beq_cont.32861:
beq_cont.32810:
fle_cont.32746:
	lw		x4, -16(x2)	# 1968
	lw		x5, -20(x2)	# 1968
	sub		x7, x5, x4	# 1968
	lw		x4, -8(x2)	# 1968
	lw		x5, -4(x2)	# 1968
	lw		x6, 0(x2)	# 1968
	lw		x29, -12(x2)	# 1968
	lw		x31, 0(x29)	# 1968
	jalr	x0, x31, 0	# 1968
do_without_neighbors.2926.17819:
	lw		x6, 24(x29)	# 2049
	lw		x7, 20(x29)	# 2049
	lw		x8, 16(x29)	# 2049
	lw		x9, 12(x29)	# 2049
	lw		x10, 8(x29)	# 2049
	lw		x11, 4(x29)	# 2049
	addi	x12, x0, 4	# 2049
	ble		x5, x12, ble.32864	# 2049
	jalr	x0, x1, 0	# 2059
ble.32864:
	lw		x12, 8(x4)	# 591
	mul		x13, x30, x5	# 2052
	add		x12, x12, x13	# 2052
	lw		x12, 0(x12)	# 2052
	ble		x10, x12, ble.32866	# 2052
	jalr	x0, x1, 0	# 2058
ble.32866:
	lw		x12, 12(x4)	# 598
	mul		x13, x30, x5	# 2054
	add		x12, x12, x13	# 2054
	lw		x12, 0(x12)	# 2054
	sw		x4, 0(x2)	# 2054
	sw		x29, -4(x2)	# 2054
	sw		x11, -8(x2)	# 2054
	sw		x5, -12(x2)	# 2054
	beq		x12, x10, beq_cont.32868	# 2054
	lw		x12, 20(x4)	# 612
	lw		x13, 28(x4)	# 642
	lw		x14, 4(x4)	# 583
	lw		x15, 16(x4)	# 605
	mul		x16, x30, x5	# 2016
	add		x12, x12, x16	# 2016
	lw		x12, 0(x12)	# 2016
	mul		x16, x30, x10	# 273
	add		x16, x12, x16	# 273
	flw		f1, 0(x16)	# 273
	mul		x16, x30, x10	# 273
	addi	x16, x16, 60592	# 273
	fsw		f1, 0(x16)	# 273
	mul		x16, x30, x11	# 274
	add		x16, x12, x16	# 274
	flw		f1, 0(x16)	# 274
	mul		x16, x30, x11	# 274
	addi	x16, x16, 60592	# 274
	fsw		f1, 0(x16)	# 274
	mul		x16, x30, x8	# 275
	add		x12, x12, x16	# 275
	flw		f1, 0(x12)	# 275
	mul		x12, x30, x8	# 275
	addi	x12, x12, 60592	# 275
	fsw		f1, 0(x12)	# 275
	lw		x12, 24(x4)	# 628
	mul		x16, x30, x10	# 630
	add		x12, x12, x16	# 630
	lw		x12, 0(x12)	# 630
	mul		x16, x30, x5	# 2019
	add		x13, x13, x16	# 2019
	lw		x13, 0(x13)	# 2019
	mul		x16, x30, x5	# 2020
	add		x14, x14, x16	# 2020
	lw		x14, 0(x14)	# 2020
	sw		x15, -16(x2)	# 1985
	sw		x9, -20(x2)	# 1985
	sw		x13, -24(x2)	# 1985
	sw		x7, -28(x2)	# 1985
	sw		x6, -32(x2)	# 1985
	sw		x8, -36(x2)	# 1985
	sw		x14, -40(x2)	# 1985
	sw		x10, -44(x2)	# 1985
	sw		x12, -48(x2)	# 1985
	beq		x12, x10, beq_cont.32869	# 1985
	addi	x16, x0, 0	# 1986
	mul		x16, x30, x16	# 1986
	addi	x16, x16, 60716	# 1986
	lw		x16, 0(x16)	# 1986
	mul		x17, x30, x10	# 273
	add		x17, x14, x17	# 273
	flw		f1, 0(x17)	# 273
	mul		x17, x30, x10	# 273
	addi	x17, x17, 60648	# 273
	fsw		f1, 0(x17)	# 273
	mul		x17, x30, x11	# 274
	add		x17, x14, x17	# 274
	flw		f1, 0(x17)	# 274
	mul		x17, x30, x11	# 274
	addi	x17, x17, 60648	# 274
	fsw		f1, 0(x17)	# 274
	mul		x17, x30, x8	# 275
	add		x17, x14, x17	# 275
	flw		f1, 0(x17)	# 275
	mul		x17, x30, x8	# 275
	addi	x17, x17, 60648	# 275
	fsw		f1, 0(x17)	# 275
	mul		x17, x30, x10	# 1329
	addi	x17, x17, 60000	# 1329
	lw		x17, 0(x17)	# 1329
	sub		x17, x17, x11	# 1329
	sw		x16, -52(x2)	# 1329
	addi	x5, x17, 0
	addi	x4, x14, 0
	addi	x29, x6, 0
	sw		x1, -56(x2)	# 1329
	addi	x2, x2, -60	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 60	# 1329
	lw		x1, -56(x2)	# 1329
	addi	x7, x0, 118	# 1978
	lw		x4, -52(x2)	# 1978
	lw		x5, -24(x2)	# 1978
	lw		x6, -40(x2)	# 1978
	lw		x29, -28(x2)	# 1978
	sw		x1, -56(x2)	# 1978
	addi	x2, x2, -60	# 1978
	lw		x31, 0(x29)	# 1978
	jalr	x1, x31, 0	# 1978
	addi	x2, x2, 60	# 1978
	lw		x1, -56(x2)	# 1978
beq_cont.32869:
	lw		x4, -8(x2)	# 1989
	lw		x5, -48(x2)	# 1989
	beq		x5, x4, beq_cont.32870	# 1989
	addi	x6, x0, 1	# 1990
	mul		x6, x30, x6	# 1990
	addi	x6, x6, 60716	# 1990
	lw		x6, 0(x6)	# 1990
	lw		x7, -44(x2)	# 273
	mul		x8, x30, x7	# 273
	lw		x9, -40(x2)	# 273
	add		x8, x9, x8	# 273
	flw		f1, 0(x8)	# 273
	mul		x8, x30, x7	# 273
	addi	x8, x8, 60648	# 273
	fsw		f1, 0(x8)	# 273
	mul		x8, x30, x4	# 274
	add		x8, x9, x8	# 274
	flw		f1, 0(x8)	# 274
	mul		x8, x30, x4	# 274
	addi	x8, x8, 60648	# 274
	fsw		f1, 0(x8)	# 274
	lw		x8, -36(x2)	# 275
	mul		x10, x30, x8	# 275
	add		x10, x9, x10	# 275
	flw		f1, 0(x10)	# 275
	mul		x10, x30, x8	# 275
	addi	x10, x10, 60648	# 275
	fsw		f1, 0(x10)	# 275
	mul		x10, x30, x7	# 1329
	addi	x10, x10, 60000	# 1329
	lw		x10, 0(x10)	# 1329
	sub		x10, x10, x4	# 1329
	lw		x29, -32(x2)	# 1329
	sw		x6, -56(x2)	# 1329
	addi	x5, x10, 0
	addi	x4, x9, 0
	sw		x1, -60(x2)	# 1329
	addi	x2, x2, -64	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 64	# 1329
	lw		x1, -60(x2)	# 1329
	addi	x7, x0, 118	# 1978
	lw		x4, -56(x2)	# 1978
	lw		x5, -24(x2)	# 1978
	lw		x6, -40(x2)	# 1978
	lw		x29, -28(x2)	# 1978
	sw		x1, -60(x2)	# 1978
	addi	x2, x2, -64	# 1978
	lw		x31, 0(x29)	# 1978
	jalr	x1, x31, 0	# 1978
	addi	x2, x2, 64	# 1978
	lw		x1, -60(x2)	# 1978
beq_cont.32870:
	lw		x4, -36(x2)	# 1993
	lw		x5, -48(x2)	# 1993
	beq		x5, x4, beq_cont.32871	# 1993
	addi	x6, x0, 2	# 1994
	mul		x6, x30, x6	# 1994
	addi	x6, x6, 60716	# 1994
	lw		x6, 0(x6)	# 1994
	lw		x7, -44(x2)	# 273
	mul		x8, x30, x7	# 273
	lw		x9, -40(x2)	# 273
	add		x8, x9, x8	# 273
	flw		f1, 0(x8)	# 273
	mul		x8, x30, x7	# 273
	addi	x8, x8, 60648	# 273
	fsw		f1, 0(x8)	# 273
	lw		x8, -8(x2)	# 274
	mul		x10, x30, x8	# 274
	add		x10, x9, x10	# 274
	flw		f1, 0(x10)	# 274
	mul		x10, x30, x8	# 274
	addi	x10, x10, 60648	# 274
	fsw		f1, 0(x10)	# 274
	mul		x10, x30, x4	# 275
	add		x10, x9, x10	# 275
	flw		f1, 0(x10)	# 275
	mul		x10, x30, x4	# 275
	addi	x10, x10, 60648	# 275
	fsw		f1, 0(x10)	# 275
	mul		x10, x30, x7	# 1329
	addi	x10, x10, 60000	# 1329
	lw		x10, 0(x10)	# 1329
	sub		x10, x10, x8	# 1329
	lw		x29, -32(x2)	# 1329
	sw		x6, -60(x2)	# 1329
	addi	x5, x10, 0
	addi	x4, x9, 0
	sw		x1, -64(x2)	# 1329
	addi	x2, x2, -68	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 68	# 1329
	lw		x1, -64(x2)	# 1329
	addi	x7, x0, 118	# 1978
	lw		x4, -60(x2)	# 1978
	lw		x5, -24(x2)	# 1978
	lw		x6, -40(x2)	# 1978
	lw		x29, -28(x2)	# 1978
	sw		x1, -64(x2)	# 1978
	addi	x2, x2, -68	# 1978
	lw		x31, 0(x29)	# 1978
	jalr	x1, x31, 0	# 1978
	addi	x2, x2, 68	# 1978
	lw		x1, -64(x2)	# 1978
beq_cont.32871:
	lw		x4, -20(x2)	# 1997
	lw		x5, -48(x2)	# 1997
	beq		x5, x4, beq_cont.32872	# 1997
	addi	x4, x0, 3	# 1998
	mul		x4, x30, x4	# 1998
	addi	x4, x4, 60716	# 1998
	lw		x4, 0(x4)	# 1998
	lw		x6, -44(x2)	# 273
	mul		x7, x30, x6	# 273
	lw		x8, -40(x2)	# 273
	add		x7, x8, x7	# 273
	flw		f1, 0(x7)	# 273
	mul		x7, x30, x6	# 273
	addi	x7, x7, 60648	# 273
	fsw		f1, 0(x7)	# 273
	lw		x7, -8(x2)	# 274
	mul		x9, x30, x7	# 274
	add		x9, x8, x9	# 274
	flw		f1, 0(x9)	# 274
	mul		x9, x30, x7	# 274
	addi	x9, x9, 60648	# 274
	fsw		f1, 0(x9)	# 274
	lw		x9, -36(x2)	# 275
	mul		x10, x30, x9	# 275
	add		x10, x8, x10	# 275
	flw		f1, 0(x10)	# 275
	mul		x10, x30, x9	# 275
	addi	x10, x10, 60648	# 275
	fsw		f1, 0(x10)	# 275
	mul		x10, x30, x6	# 1329
	addi	x10, x10, 60000	# 1329
	lw		x10, 0(x10)	# 1329
	sub		x10, x10, x7	# 1329
	lw		x29, -32(x2)	# 1329
	sw		x4, -64(x2)	# 1329
	addi	x5, x10, 0
	addi	x4, x8, 0
	sw		x1, -68(x2)	# 1329
	addi	x2, x2, -72	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 72	# 1329
	lw		x1, -68(x2)	# 1329
	addi	x7, x0, 118	# 1978
	lw		x4, -64(x2)	# 1978
	lw		x5, -24(x2)	# 1978
	lw		x6, -40(x2)	# 1978
	lw		x29, -28(x2)	# 1978
	sw		x1, -68(x2)	# 1978
	addi	x2, x2, -72	# 1978
	lw		x31, 0(x29)	# 1978
	jalr	x1, x31, 0	# 1978
	addi	x2, x2, 72	# 1978
	lw		x1, -68(x2)	# 1978
beq_cont.32872:
	addi	x4, x0, 4	# 2001
	lw		x5, -48(x2)	# 2001
	beq		x5, x4, beq_cont.32873	# 2001
	mul		x4, x30, x4	# 2002
	addi	x4, x4, 60716	# 2002
	lw		x4, 0(x4)	# 2002
	lw		x5, -44(x2)	# 273
	mul		x6, x30, x5	# 273
	lw		x7, -40(x2)	# 273
	add		x6, x7, x6	# 273
	flw		f1, 0(x6)	# 273
	mul		x6, x30, x5	# 273
	addi	x6, x6, 60648	# 273
	fsw		f1, 0(x6)	# 273
	lw		x6, -8(x2)	# 274
	mul		x8, x30, x6	# 274
	add		x8, x7, x8	# 274
	flw		f1, 0(x8)	# 274
	mul		x8, x30, x6	# 274
	addi	x8, x8, 60648	# 274
	fsw		f1, 0(x8)	# 274
	lw		x8, -36(x2)	# 275
	mul		x9, x30, x8	# 275
	add		x9, x7, x9	# 275
	flw		f1, 0(x9)	# 275
	mul		x9, x30, x8	# 275
	addi	x9, x9, 60648	# 275
	fsw		f1, 0(x9)	# 275
	mul		x9, x30, x5	# 1329
	addi	x9, x9, 60000	# 1329
	lw		x9, 0(x9)	# 1329
	sub		x9, x9, x6	# 1329
	lw		x29, -32(x2)	# 1329
	sw		x4, -68(x2)	# 1329
	addi	x5, x9, 0
	addi	x4, x7, 0
	sw		x1, -72(x2)	# 1329
	addi	x2, x2, -76	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 76	# 1329
	lw		x1, -72(x2)	# 1329
	addi	x7, x0, 118	# 1978
	lw		x4, -68(x2)	# 1978
	lw		x5, -24(x2)	# 1978
	lw		x6, -40(x2)	# 1978
	lw		x29, -28(x2)	# 1978
	sw		x1, -72(x2)	# 1978
	addi	x2, x2, -76	# 1978
	lw		x31, 0(x29)	# 1978
	jalr	x1, x31, 0	# 1978
	addi	x2, x2, 76	# 1978
	lw		x1, -72(x2)	# 1978
beq_cont.32873:
	lw		x4, -12(x2)	# 2021
	mul		x5, x30, x4	# 2021
	lw		x6, -16(x2)	# 2021
	add		x5, x6, x5	# 2021
	lw		x5, 0(x5)	# 2021
	lw		x6, -44(x2)	# 346
	mul		x7, x30, x6	# 346
	addi	x7, x7, 60604	# 346
	flw		f1, 0(x7)	# 346
	mul		x7, x30, x6	# 346
	add		x7, x5, x7	# 346
	flw		f2, 0(x7)	# 346
	mul		x7, x30, x6	# 346
	addi	x7, x7, 60592	# 346
	flw		f3, 0(x7)	# 346
	fmul	f2, f2, f3	# 346
	fadd	f1, f1, f2	# 346
	mul		x6, x30, x6	# 346
	addi	x6, x6, 60604	# 346
	fsw		f1, 0(x6)	# 346
	lw		x6, -8(x2)	# 347
	mul		x7, x30, x6	# 347
	addi	x7, x7, 60604	# 347
	flw		f1, 0(x7)	# 347
	mul		x7, x30, x6	# 347
	add		x7, x5, x7	# 347
	flw		f2, 0(x7)	# 347
	mul		x7, x30, x6	# 347
	addi	x7, x7, 60592	# 347
	flw		f3, 0(x7)	# 347
	fmul	f2, f2, f3	# 347
	fadd	f1, f1, f2	# 347
	mul		x7, x30, x6	# 347
	addi	x7, x7, 60604	# 347
	fsw		f1, 0(x7)	# 347
	lw		x7, -36(x2)	# 348
	mul		x8, x30, x7	# 348
	addi	x8, x8, 60604	# 348
	flw		f1, 0(x8)	# 348
	mul		x8, x30, x7	# 348
	add		x5, x5, x8	# 348
	flw		f2, 0(x5)	# 348
	mul		x5, x30, x7	# 348
	addi	x5, x5, 60592	# 348
	flw		f3, 0(x5)	# 348
	fmul	f2, f2, f3	# 348
	fadd	f1, f1, f2	# 348
	mul		x5, x30, x7	# 348
	addi	x5, x5, 60604	# 348
	fsw		f1, 0(x5)	# 348
beq_cont.32868:
	lw		x4, -8(x2)	# 2057
	lw		x5, -12(x2)	# 2057
	add		x5, x5, x4	# 2057
	lw		x4, 0(x2)	# 2057
	lw		x29, -4(x2)	# 2057
	lw		x31, 0(x29)	# 2057
	jalr	x0, x31, 0	# 2057
try_exploit_neighbors.2942.17822:
	lw		x10, 16(x29)	# 2101
	lw		x11, 12(x29)	# 2101
	lw		x12, 8(x29)	# 2101
	lw		x13, 4(x29)	# 2101
	mul		x14, x30, x4	# 2101
	add		x14, x7, x14	# 2101
	lw		x14, 0(x14)	# 2101
	addi	x15, x0, 4	# 2102
	ble		x9, x15, ble.32874	# 2102
	jalr	x0, x1, 0	# 2121
ble.32874:
	lw		x15, 8(x14)	# 591
	mul		x16, x30, x9	# 2077
	add		x15, x15, x16	# 2077
	lw		x15, 0(x15)	# 2077
	ble		x12, x15, ble.32876	# 2105
	jalr	x0, x1, 0	# 2120
ble.32876:
	lw		x15, 8(x14)	# 591
	mul		x16, x30, x9	# 2077
	add		x15, x15, x16	# 2077
	lw		x15, 0(x15)	# 2077
	mul		x16, x30, x4	# 2085
	add		x16, x6, x16	# 2085
	lw		x16, 0(x16)	# 2085
	lw		x16, 8(x16)	# 591
	mul		x17, x30, x9	# 2077
	add		x16, x16, x17	# 2077
	lw		x16, 0(x16)	# 2077
	beq		x16, x15, beq.32879	# 2085
	addi	x15, x0, 0	# 2093
	jal		x0, beq_cont.32878	# 2085
beq.32879:
	mul		x16, x30, x4	# 2086
	add		x16, x8, x16	# 2086
	lw		x16, 0(x16)	# 2086
	lw		x16, 8(x16)	# 591
	mul		x17, x30, x9	# 2077
	add		x16, x16, x17	# 2077
	lw		x16, 0(x16)	# 2077
	beq		x16, x15, beq.32881	# 2086
	addi	x15, x0, 0	# 2092
	jal		x0, beq_cont.32880	# 2086
beq.32881:
	sub		x16, x4, x13	# 2087
	mul		x16, x30, x16	# 2087
	add		x16, x7, x16	# 2087
	lw		x16, 0(x16)	# 2087
	lw		x16, 8(x16)	# 591
	mul		x17, x30, x9	# 2077
	add		x16, x16, x17	# 2077
	lw		x16, 0(x16)	# 2077
	beq		x16, x15, beq.32883	# 2087
	addi	x15, x0, 0	# 2091
	jal		x0, beq_cont.32882	# 2087
beq.32883:
	add		x16, x4, x13	# 2088
	mul		x16, x30, x16	# 2088
	add		x16, x7, x16	# 2088
	lw		x16, 0(x16)	# 2088
	lw		x16, 8(x16)	# 591
	mul		x17, x30, x9	# 2077
	add		x16, x16, x17	# 2077
	lw		x16, 0(x16)	# 2077
	beq		x16, x15, beq.32885	# 2088
	addi	x15, x0, 0	# 2090
	jal		x0, beq_cont.32884	# 2088
beq.32885:
	addi	x15, x0, 1	# 2089
beq_cont.32884:
beq_cont.32882:
beq_cont.32880:
beq_cont.32878:
	beq		x15, x12, beq.32886	# 2107
	lw		x10, 12(x14)	# 598
	mul		x14, x30, x9	# 2111
	add		x10, x10, x14	# 2111
	lw		x10, 0(x10)	# 2111
	beq		x10, x12, beq_cont.32887	# 2111
	mul		x10, x30, x4	# 2030
	add		x10, x6, x10	# 2030
	lw		x10, 0(x10)	# 2030
	lw		x10, 20(x10)	# 612
	addi	x14, x0, 1	# 2031
	sub		x14, x4, x14	# 2031
	mul		x14, x30, x14	# 2031
	add		x14, x7, x14	# 2031
	lw		x14, 0(x14)	# 2031
	lw		x14, 20(x14)	# 612
	mul		x15, x30, x4	# 2032
	add		x15, x7, x15	# 2032
	lw		x15, 0(x15)	# 2032
	lw		x15, 20(x15)	# 612
	addi	x16, x4, 1	# 2033
	mul		x16, x30, x16	# 2033
	add		x16, x7, x16	# 2033
	lw		x16, 0(x16)	# 2033
	lw		x16, 20(x16)	# 612
	mul		x17, x30, x4	# 2034
	add		x17, x8, x17	# 2034
	lw		x17, 0(x17)	# 2034
	lw		x17, 20(x17)	# 612
	mul		x18, x30, x9	# 2036
	add		x10, x10, x18	# 2036
	lw		x10, 0(x10)	# 2036
	mul		x18, x30, x12	# 273
	add		x18, x10, x18	# 273
	flw		f1, 0(x18)	# 273
	mul		x18, x30, x12	# 273
	addi	x18, x18, 60592	# 273
	fsw		f1, 0(x18)	# 273
	mul		x18, x30, x13	# 274
	add		x18, x10, x18	# 274
	flw		f1, 0(x18)	# 274
	mul		x18, x30, x13	# 274
	addi	x18, x18, 60592	# 274
	fsw		f1, 0(x18)	# 274
	mul		x18, x30, x11	# 275
	add		x10, x10, x18	# 275
	flw		f1, 0(x10)	# 275
	mul		x10, x30, x11	# 275
	addi	x10, x10, 60592	# 275
	fsw		f1, 0(x10)	# 275
	mul		x10, x30, x9	# 2037
	add		x10, x14, x10	# 2037
	lw		x10, 0(x10)	# 2037
	mul		x14, x30, x12	# 323
	addi	x14, x14, 60592	# 323
	flw		f1, 0(x14)	# 323
	mul		x14, x30, x12	# 323
	add		x14, x10, x14	# 323
	flw		f2, 0(x14)	# 323
	fadd	f1, f1, f2	# 323
	mul		x14, x30, x12	# 323
	addi	x14, x14, 60592	# 323
	fsw		f1, 0(x14)	# 323
	mul		x14, x30, x13	# 324
	addi	x14, x14, 60592	# 324
	flw		f1, 0(x14)	# 324
	mul		x14, x30, x13	# 324
	add		x14, x10, x14	# 324
	flw		f2, 0(x14)	# 324
	fadd	f1, f1, f2	# 324
	mul		x14, x30, x13	# 324
	addi	x14, x14, 60592	# 324
	fsw		f1, 0(x14)	# 324
	mul		x14, x30, x11	# 325
	addi	x14, x14, 60592	# 325
	flw		f1, 0(x14)	# 325
	mul		x14, x30, x11	# 325
	add		x10, x10, x14	# 325
	flw		f2, 0(x10)	# 325
	fadd	f1, f1, f2	# 325
	mul		x10, x30, x11	# 325
	addi	x10, x10, 60592	# 325
	fsw		f1, 0(x10)	# 325
	mul		x10, x30, x9	# 2038
	add		x10, x15, x10	# 2038
	lw		x10, 0(x10)	# 2038
	mul		x14, x30, x12	# 323
	addi	x14, x14, 60592	# 323
	flw		f1, 0(x14)	# 323
	mul		x14, x30, x12	# 323
	add		x14, x10, x14	# 323
	flw		f2, 0(x14)	# 323
	fadd	f1, f1, f2	# 323
	mul		x14, x30, x12	# 323
	addi	x14, x14, 60592	# 323
	fsw		f1, 0(x14)	# 323
	mul		x14, x30, x13	# 324
	addi	x14, x14, 60592	# 324
	flw		f1, 0(x14)	# 324
	mul		x14, x30, x13	# 324
	add		x14, x10, x14	# 324
	flw		f2, 0(x14)	# 324
	fadd	f1, f1, f2	# 324
	mul		x14, x30, x13	# 324
	addi	x14, x14, 60592	# 324
	fsw		f1, 0(x14)	# 324
	mul		x14, x30, x11	# 325
	addi	x14, x14, 60592	# 325
	flw		f1, 0(x14)	# 325
	mul		x14, x30, x11	# 325
	add		x10, x10, x14	# 325
	flw		f2, 0(x10)	# 325
	fadd	f1, f1, f2	# 325
	mul		x10, x30, x11	# 325
	addi	x10, x10, 60592	# 325
	fsw		f1, 0(x10)	# 325
	mul		x10, x30, x9	# 2039
	add		x10, x16, x10	# 2039
	lw		x10, 0(x10)	# 2039
	mul		x14, x30, x12	# 323
	addi	x14, x14, 60592	# 323
	flw		f1, 0(x14)	# 323
	mul		x14, x30, x12	# 323
	add		x14, x10, x14	# 323
	flw		f2, 0(x14)	# 323
	fadd	f1, f1, f2	# 323
	mul		x14, x30, x12	# 323
	addi	x14, x14, 60592	# 323
	fsw		f1, 0(x14)	# 323
	mul		x14, x30, x13	# 324
	addi	x14, x14, 60592	# 324
	flw		f1, 0(x14)	# 324
	mul		x14, x30, x13	# 324
	add		x14, x10, x14	# 324
	flw		f2, 0(x14)	# 324
	fadd	f1, f1, f2	# 324
	mul		x14, x30, x13	# 324
	addi	x14, x14, 60592	# 324
	fsw		f1, 0(x14)	# 324
	mul		x14, x30, x11	# 325
	addi	x14, x14, 60592	# 325
	flw		f1, 0(x14)	# 325
	mul		x14, x30, x11	# 325
	add		x10, x10, x14	# 325
	flw		f2, 0(x10)	# 325
	fadd	f1, f1, f2	# 325
	mul		x10, x30, x11	# 325
	addi	x10, x10, 60592	# 325
	fsw		f1, 0(x10)	# 325
	mul		x10, x30, x9	# 2040
	add		x10, x17, x10	# 2040
	lw		x10, 0(x10)	# 2040
	mul		x14, x30, x12	# 323
	addi	x14, x14, 60592	# 323
	flw		f1, 0(x14)	# 323
	mul		x14, x30, x12	# 323
	add		x14, x10, x14	# 323
	flw		f2, 0(x14)	# 323
	fadd	f1, f1, f2	# 323
	mul		x14, x30, x12	# 323
	addi	x14, x14, 60592	# 323
	fsw		f1, 0(x14)	# 323
	mul		x14, x30, x13	# 324
	addi	x14, x14, 60592	# 324
	flw		f1, 0(x14)	# 324
	mul		x14, x30, x13	# 324
	add		x14, x10, x14	# 324
	flw		f2, 0(x14)	# 324
	fadd	f1, f1, f2	# 324
	mul		x14, x30, x13	# 324
	addi	x14, x14, 60592	# 324
	fsw		f1, 0(x14)	# 324
	mul		x14, x30, x11	# 325
	addi	x14, x14, 60592	# 325
	flw		f1, 0(x14)	# 325
	mul		x14, x30, x11	# 325
	add		x10, x10, x14	# 325
	flw		f2, 0(x10)	# 325
	fadd	f1, f1, f2	# 325
	mul		x10, x30, x11	# 325
	addi	x10, x10, 60592	# 325
	fsw		f1, 0(x10)	# 325
	mul		x10, x30, x4	# 2042
	add		x10, x7, x10	# 2042
	lw		x10, 0(x10)	# 2042
	lw		x10, 16(x10)	# 605
	mul		x14, x30, x9	# 2043
	add		x10, x10, x14	# 2043
	lw		x10, 0(x10)	# 2043
	mul		x14, x30, x12	# 346
	addi	x14, x14, 60604	# 346
	flw		f1, 0(x14)	# 346
	mul		x14, x30, x12	# 346
	add		x14, x10, x14	# 346
	flw		f2, 0(x14)	# 346
	mul		x14, x30, x12	# 346
	addi	x14, x14, 60592	# 346
	flw		f3, 0(x14)	# 346
	fmul	f2, f2, f3	# 346
	fadd	f1, f1, f2	# 346
	mul		x12, x30, x12	# 346
	addi	x12, x12, 60604	# 346
	fsw		f1, 0(x12)	# 346
	mul		x12, x30, x13	# 347
	addi	x12, x12, 60604	# 347
	flw		f1, 0(x12)	# 347
	mul		x12, x30, x13	# 347
	add		x12, x10, x12	# 347
	flw		f2, 0(x12)	# 347
	mul		x12, x30, x13	# 347
	addi	x12, x12, 60592	# 347
	flw		f3, 0(x12)	# 347
	fmul	f2, f2, f3	# 347
	fadd	f1, f1, f2	# 347
	mul		x12, x30, x13	# 347
	addi	x12, x12, 60604	# 347
	fsw		f1, 0(x12)	# 347
	mul		x12, x30, x11	# 348
	addi	x12, x12, 60604	# 348
	flw		f1, 0(x12)	# 348
	mul		x12, x30, x11	# 348
	add		x10, x10, x12	# 348
	flw		f2, 0(x10)	# 348
	mul		x10, x30, x11	# 348
	addi	x10, x10, 60592	# 348
	flw		f3, 0(x10)	# 348
	fmul	f2, f2, f3	# 348
	fadd	f1, f1, f2	# 348
	mul		x10, x30, x11	# 348
	addi	x10, x10, 60604	# 348
	fsw		f1, 0(x10)	# 348
beq_cont.32887:
	add		x9, x9, x13	# 2116
	lw		x31, 0(x29)	# 2116
	jalr	x0, x31, 0	# 2116
beq.32886:
	addi	x5, x9, 0
	addi	x4, x14, 0
	addi	x29, x10, 0
	lw		x31, 0(x29)	# 2119
	jalr	x0, x31, 0	# 2119
pretrace_diffuse_rays.2957.17829:
	lw		x6, 20(x29)	# 2177
	lw		x7, 16(x29)	# 2177
	lw		x8, 12(x29)	# 2177
	lw		x9, 8(x29)	# 2177
	lw		x10, 4(x29)	# 2177
	addi	x11, x0, 4	# 2177
	ble		x5, x11, ble.32888	# 2177
	jalr	x0, x1, 0	# 2201
ble.32888:
	lw		x11, 8(x4)	# 591
	mul		x12, x30, x5	# 2077
	add		x11, x11, x12	# 2077
	lw		x11, 0(x11)	# 2077
	ble		x9, x11, ble.32890	# 2181
	jalr	x0, x1, 0	# 2200
ble.32890:
	lw		x11, 12(x4)	# 598
	mul		x12, x30, x5	# 2184
	add		x11, x11, x12	# 2184
	lw		x11, 0(x11)	# 2184
	sw		x29, 0(x2)	# 2184
	sw		x10, -4(x2)	# 2184
	sw		x5, -8(x2)	# 2184
	beq		x11, x9, beq_cont.32892	# 2184
	lw		x11, 24(x4)	# 628
	addi	x12, x0, 0	# 630
	mul		x12, x30, x12	# 630
	add		x11, x11, x12	# 630
	lw		x11, 0(x11)	# 630
	fadd	f1, f0, f0	# 268
	mul		x12, x30, x9	# 261
	addi	x12, x12, 60592	# 261
	fsw		f1, 0(x12)	# 261
	mul		x12, x30, x10	# 262
	addi	x12, x12, 60592	# 262
	fsw		f1, 0(x12)	# 262
	mul		x8, x30, x8	# 263
	addi	x8, x8, 60592	# 263
	fsw		f1, 0(x8)	# 263
	lw		x8, 28(x4)	# 642
	lw		x12, 4(x4)	# 583
	mul		x11, x30, x11	# 2193
	addi	x11, x11, 60716	# 2193
	lw		x11, 0(x11)	# 2193
	mul		x13, x30, x5	# 2194
	add		x8, x8, x13	# 2194
	lw		x8, 0(x8)	# 2194
	mul		x13, x30, x5	# 2195
	add		x12, x12, x13	# 2195
	lw		x12, 0(x12)	# 2195
	addi	x13, x0, 0	# 273
	addi	x14, x0, 0	# 273
	mul		x14, x30, x14	# 273
	add		x14, x12, x14	# 273
	flw		f1, 0(x14)	# 273
	mul		x13, x30, x13	# 273
	addi	x13, x13, 60648	# 273
	fsw		f1, 0(x13)	# 273
	addi	x13, x0, 1	# 274
	addi	x14, x0, 1	# 274
	mul		x14, x30, x14	# 274
	add		x14, x12, x14	# 274
	flw		f1, 0(x14)	# 274
	mul		x13, x30, x13	# 274
	addi	x13, x13, 60648	# 274
	fsw		f1, 0(x13)	# 274
	addi	x13, x0, 2	# 275
	mul		x14, x30, x13	# 275
	add		x14, x12, x14	# 275
	flw		f1, 0(x14)	# 275
	mul		x13, x30, x13	# 275
	addi	x13, x13, 60648	# 275
	fsw		f1, 0(x13)	# 275
	mul		x9, x30, x9	# 1329
	addi	x9, x9, 60000	# 1329
	lw		x9, 0(x9)	# 1329
	sub		x9, x9, x10	# 1329
	sw		x4, -12(x2)	# 1329
	sw		x12, -16(x2)	# 1329
	sw		x8, -20(x2)	# 1329
	sw		x11, -24(x2)	# 1329
	sw		x7, -28(x2)	# 1329
	addi	x5, x9, 0
	addi	x4, x12, 0
	addi	x29, x6, 0
	sw		x1, -32(x2)	# 1329
	addi	x2, x2, -36	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 36	# 1329
	lw		x1, -32(x2)	# 1329
	addi	x7, x0, 118	# 1978
	lw		x4, -24(x2)	# 1978
	lw		x5, -20(x2)	# 1978
	lw		x6, -16(x2)	# 1978
	lw		x29, -28(x2)	# 1978
	sw		x1, -32(x2)	# 1978
	addi	x2, x2, -36	# 1978
	lw		x31, 0(x29)	# 1978
	jalr	x1, x31, 0	# 1978
	addi	x2, x2, 36	# 1978
	lw		x1, -32(x2)	# 1978
	lw		x4, -12(x2)	# 612
	lw		x5, 20(x4)	# 612
	lw		x6, -8(x2)	# 2197
	mul		x7, x30, x6	# 2197
	add		x5, x5, x7	# 2197
	lw		x5, 0(x5)	# 2197
	addi	x7, x0, 0	# 273
	addi	x8, x0, 0	# 273
	mul		x8, x30, x8	# 273
	addi	x8, x8, 60592	# 273
	flw		f1, 0(x8)	# 273
	mul		x7, x30, x7	# 273
	add		x7, x5, x7	# 273
	fsw		f1, 0(x7)	# 273
	addi	x7, x0, 1	# 274
	addi	x8, x0, 1	# 274
	mul		x8, x30, x8	# 274
	addi	x8, x8, 60592	# 274
	flw		f1, 0(x8)	# 274
	mul		x7, x30, x7	# 274
	add		x7, x5, x7	# 274
	fsw		f1, 0(x7)	# 274
	addi	x7, x0, 2	# 275
	mul		x8, x30, x7	# 275
	addi	x8, x8, 60592	# 275
	flw		f1, 0(x8)	# 275
	mul		x7, x30, x7	# 275
	add		x5, x5, x7	# 275
	fsw		f1, 0(x5)	# 275
beq_cont.32892:
	lw		x5, -4(x2)	# 2199
	lw		x6, -8(x2)	# 2199
	add		x5, x6, x5	# 2199
	lw		x29, 0(x2)	# 2199
	lw		x31, 0(x29)	# 2199
	jalr	x0, x31, 0	# 2199
pretrace_pixels.2960.17832:
	lw		x7, 32(x29)	# 2207
	lw		x8, 28(x29)	# 2207
	lw		x9, 24(x29)	# 2207
	lw		x10, 20(x29)	# 2207
	lw		x11, 16(x29)	# 2207
	lw		x12, 12(x29)	# 2207
	lw		x13, 8(x29)	# 2207
	flw		f4, 4(x29)	# 2207
	ble		x12, x5, ble.32893	# 2207
	jalr	x0, x1, 0	# 2227
ble.32893:
	mul		x14, x30, x12	# 2209
	addi	x14, x14, 60632	# 2209
	flw		f5, 0(x14)	# 2209
	mul		x14, x30, x12	# 2209
	addi	x14, x14, 60624	# 2209
	lw		x14, 0(x14)	# 2209
	sub		x14, x5, x14	# 2209
	sw		x29, 0(x2)	# 2209
	sw		x10, -4(x2)	# 2209
	sw		x8, -8(x2)	# 2209
	sw		x6, -12(x2)	# 2209
	sw		x7, -16(x2)	# 2209
	sw		x4, -20(x2)	# 2209
	sw		x5, -24(x2)	# 2209
	fsw		f4, -28(x2)	# 2209
	fsw		f3, -32(x2)	# 2209
	sw		x11, -36(x2)	# 2209
	fsw		f2, -40(x2)	# 2209
	sw		x13, -44(x2)	# 2209
	fsw		f1, -48(x2)	# 2209
	sw		x12, -52(x2)	# 2209
	fsw		f5, -56(x2)	# 2209
	addi	x4, x14, 0
	addi	x29, x9, 0
	sw		x1, -60(x2)	# 2209
	addi	x2, x2, -64	# 2209
	lw		x31, 0(x29)	# 2209
	jalr	x1, x31, 0	# 2209
	addi	x2, x2, 64	# 2209
	lw		x1, -60(x2)	# 2209
	flw		f2, -56(x2)	# 2209
	fmul	f1, f2, f1	# 2209
	lw		x4, -52(x2)	# 2210
	mul		x5, x30, x4	# 2210
	addi	x5, x5, 60660	# 2210
	flw		f2, 0(x5)	# 2210
	fmul	f2, f1, f2	# 2210
	flw		f3, -48(x2)	# 2210
	fadd	f2, f2, f3	# 2210
	mul		x5, x30, x4	# 2210
	addi	x5, x5, 60696	# 2210
	fsw		f2, 0(x5)	# 2210
	lw		x5, -44(x2)	# 2211
	mul		x6, x30, x5	# 2211
	addi	x6, x6, 60660	# 2211
	flw		f2, 0(x6)	# 2211
	fmul	f2, f1, f2	# 2211
	flw		f4, -40(x2)	# 2211
	fadd	f2, f2, f4	# 2211
	mul		x6, x30, x5	# 2211
	addi	x6, x6, 60696	# 2211
	fsw		f2, 0(x6)	# 2211
	lw		x6, -36(x2)	# 2212
	mul		x7, x30, x6	# 2212
	addi	x7, x7, 60660	# 2212
	flw		f2, 0(x7)	# 2212
	fmul	f1, f1, f2	# 2212
	flw		f2, -32(x2)	# 2212
	fadd	f1, f1, f2	# 2212
	mul		x7, x30, x6	# 2212
	addi	x7, x7, 60696	# 2212
	fsw		f1, 0(x7)	# 2212
	mul		x7, x30, x4	# 297
	addi	x7, x7, 60696	# 297
	flw		f1, 0(x7)	# 297
	fmul	f1, f1, f1	# 127
	mul		x7, x30, x5	# 297
	addi	x7, x7, 60696	# 297
	flw		f5, 0(x7)	# 297
	fmul	f5, f5, f5	# 127
	fadd	f1, f1, f5	# 297
	mul		x7, x30, x6	# 297
	addi	x7, x7, 60696	# 297
	flw		f5, 0(x7)	# 297
	fmul	f5, f5, f5	# 127
	fadd	f1, f1, f5	# 297
	fsqrt	f1, f1	# 297
	flw		f5, -28(x2)	# 120
	feq		x31, f1, f5	# 120
	beq		x31, x0, feq_else.32896	# 120
	fadd	f1, f0, f16	# 298
	jal		x0, feq_cont.32895	# 120
feq_else.32896:
	fadd	f6, f0, f16	# 298
	fdiv	f1, f6, f1	# 298
feq_cont.32895:
	mul		x7, x30, x4	# 299
	addi	x7, x7, 60696	# 299
	flw		f6, 0(x7)	# 299
	fmul	f6, f6, f1	# 299
	mul		x7, x30, x4	# 299
	addi	x7, x7, 60696	# 299
	fsw		f6, 0(x7)	# 299
	mul		x7, x30, x5	# 300
	addi	x7, x7, 60696	# 300
	flw		f6, 0(x7)	# 300
	fmul	f6, f6, f1	# 300
	mul		x7, x30, x5	# 300
	addi	x7, x7, 60696	# 300
	fsw		f6, 0(x7)	# 300
	mul		x7, x30, x6	# 301
	addi	x7, x7, 60696	# 301
	flw		f6, 0(x7)	# 301
	fmul	f1, f6, f1	# 301
	mul		x7, x30, x6	# 301
	addi	x7, x7, 60696	# 301
	fsw		f1, 0(x7)	# 301
	mul		x7, x30, x4	# 261
	addi	x7, x7, 60604	# 261
	fsw		f5, 0(x7)	# 261
	mul		x7, x30, x5	# 262
	addi	x7, x7, 60604	# 262
	fsw		f5, 0(x7)	# 262
	mul		x7, x30, x6	# 263
	addi	x7, x7, 60604	# 263
	fsw		f5, 0(x7)	# 263
	mul		x7, x30, x4	# 273
	addi	x7, x7, 60300	# 273
	flw		f1, 0(x7)	# 273
	mul		x7, x30, x4	# 273
	addi	x7, x7, 60636	# 273
	fsw		f1, 0(x7)	# 273
	mul		x7, x30, x5	# 274
	addi	x7, x7, 60300	# 274
	flw		f1, 0(x7)	# 274
	mul		x7, x30, x5	# 274
	addi	x7, x7, 60636	# 274
	fsw		f1, 0(x7)	# 274
	mul		x7, x30, x6	# 275
	addi	x7, x7, 60300	# 275
	flw		f1, 0(x7)	# 275
	mul		x7, x30, x6	# 275
	addi	x7, x7, 60636	# 275
	fsw		f1, 0(x7)	# 275
	fadd	f1, f0, f16	# 2218
	lw		x7, -24(x2)	# 2218
	mul		x8, x30, x7	# 2218
	lw		x9, -20(x2)	# 2218
	add		x8, x9, x8	# 2218
	lw		x8, 0(x8)	# 2218
	addi	x10, x0, 60696	# 2218
	lw		x29, -16(x2)	# 2218
	addi	x6, x8, 0
	addi	x5, x10, 0
	fadd	f2, f0, f5
	sw		x1, -60(x2)	# 2218
	addi	x2, x2, -64	# 2218
	lw		x31, 0(x29)	# 2218
	jalr	x1, x31, 0	# 2218
	addi	x2, x2, 64	# 2218
	lw		x1, -60(x2)	# 2218
	lw		x4, -24(x2)	# 2219
	mul		x5, x30, x4	# 2219
	lw		x6, -20(x2)	# 2219
	add		x5, x6, x5	# 2219
	lw		x5, 0(x5)	# 2219
	lw		x5, 0(x5)	# 576
	lw		x7, -52(x2)	# 273
	mul		x8, x30, x7	# 273
	addi	x8, x8, 60604	# 273
	flw		f1, 0(x8)	# 273
	mul		x8, x30, x7	# 273
	add		x8, x5, x8	# 273
	fsw		f1, 0(x8)	# 273
	lw		x8, -44(x2)	# 274
	mul		x9, x30, x8	# 274
	addi	x9, x9, 60604	# 274
	flw		f1, 0(x9)	# 274
	mul		x9, x30, x8	# 274
	add		x9, x5, x9	# 274
	fsw		f1, 0(x9)	# 274
	lw		x9, -36(x2)	# 275
	mul		x10, x30, x9	# 275
	addi	x10, x10, 60604	# 275
	flw		f1, 0(x10)	# 275
	mul		x9, x30, x9	# 275
	add		x5, x5, x9	# 275
	fsw		f1, 0(x5)	# 275
	mul		x5, x30, x4	# 2220
	add		x5, x6, x5	# 2220
	lw		x5, 0(x5)	# 2220
	lw		x5, 24(x5)	# 635
	mul		x9, x30, x7	# 637
	add		x5, x5, x9	# 637
	lw		x9, -12(x2)	# 637
	sw		x9, 0(x5)	# 637
	mul		x5, x30, x4	# 2223
	add		x5, x6, x5	# 2223
	lw		x5, 0(x5)	# 2223
	lw		x29, -8(x2)	# 2223
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -60(x2)	# 2223
	addi	x2, x2, -64	# 2223
	lw		x31, 0(x29)	# 2223
	jalr	x1, x31, 0	# 2223
	addi	x2, x2, 64	# 2223
	lw		x1, -60(x2)	# 2223
	lw		x4, -44(x2)	# 2225
	lw		x5, -24(x2)	# 2225
	sub		x5, x5, x4	# 2225
	lw		x6, -12(x2)	# 238
	add		x4, x6, x4	# 238
	lw		x6, -4(x2)	# 239
	ble		x6, x4, ble.32898	# 239
	addi	x6, x4, 0	# 239
	jal		x0, ble_cont.32897	# 239
ble.32898:
	sub		x6, x4, x6	# 239
ble_cont.32897:
	flw		f1, -48(x2)	# 2225
	flw		f2, -40(x2)	# 2225
	flw		f3, -32(x2)	# 2225
	lw		x4, -20(x2)	# 2225
	lw		x29, 0(x2)	# 2225
	lw		x31, 0(x29)	# 2225
	jalr	x0, x31, 0	# 2225
scan_pixel.2971.17839:
	lw		x10, 28(x29)	# 2248
	lw		x11, 24(x29)	# 2248
	lw		x12, 20(x29)	# 2248
	lw		x13, 16(x29)	# 2248
	lw		x14, 12(x29)	# 2248
	lw		x15, 8(x29)	# 2248
	lw		x16, 4(x29)	# 2248
	mul		x17, x30, x15	# 2248
	addi	x17, x17, 60616	# 2248
	lw		x17, 0(x17)	# 2248
	ble		x17, x4, ble.32899	# 2248
	mul		x17, x30, x4	# 2251
	add		x17, x7, x17	# 2251
	lw		x17, 0(x17)	# 2251
	lw		x17, 0(x17)	# 576
	mul		x18, x30, x15	# 273
	add		x18, x17, x18	# 273
	flw		f1, 0(x18)	# 273
	mul		x18, x30, x15	# 273
	addi	x18, x18, 60604	# 273
	fsw		f1, 0(x18)	# 273
	mul		x18, x30, x16	# 274
	add		x18, x17, x18	# 274
	flw		f1, 0(x18)	# 274
	mul		x18, x30, x16	# 274
	addi	x18, x18, 60604	# 274
	fsw		f1, 0(x18)	# 274
	mul		x18, x30, x13	# 275
	add		x17, x17, x18	# 275
	flw		f1, 0(x17)	# 275
	mul		x13, x30, x13	# 275
	addi	x13, x13, 60604	# 275
	fsw		f1, 0(x13)	# 275
	mul		x13, x30, x16	# 2064
	addi	x13, x13, 60616	# 2064
	lw		x13, 0(x13)	# 2064
	add		x17, x5, x16	# 2064
	ble		x13, x17, ble.32901	# 2064
	ble		x5, x15, ble.32903	# 2065
	mul		x13, x30, x15	# 2066
	addi	x13, x13, 60616	# 2066
	lw		x13, 0(x13)	# 2066
	add		x17, x4, x16	# 2066
	ble		x13, x17, ble.32905	# 2066
	ble		x4, x15, ble.32907	# 2067
	addi	x13, x0, 1	# 2068
	jal		x0, ble_cont.32906	# 2067
ble.32907:
	addi	x13, x0, 0	# 2069
ble_cont.32906:
	jal		x0, ble_cont.32904	# 2066
ble.32905:
	addi	x13, x0, 0	# 2070
ble_cont.32904:
	jal		x0, ble_cont.32902	# 2065
ble.32903:
	addi	x13, x0, 0	# 2071
ble_cont.32902:
	jal		x0, ble_cont.32900	# 2064
ble.32901:
	addi	x13, x0, 0	# 2072
ble_cont.32900:
	sw		x8, 0(x2)	# 2254
	sw		x7, -4(x2)	# 2254
	sw		x6, -8(x2)	# 2254
	sw		x5, -12(x2)	# 2254
	sw		x29, -16(x2)	# 2254
	sw		x16, -20(x2)	# 2254
	sw		x4, -24(x2)	# 2254
	sw		x15, -28(x2)	# 2254
	sw		x11, -32(x2)	# 2254
	sw		x14, -36(x2)	# 2254
	sw		x9, -40(x2)	# 2254
	beq		x13, x15, beq.32909	# 2254
	addi	x12, x0, 0	# 2255
	addi	x9, x12, 0
	addi	x29, x10, 0
	sw		x1, -44(x2)	# 2255
	addi	x2, x2, -48	# 2255
	lw		x31, 0(x29)	# 2255
	jalr	x1, x31, 0	# 2255
	addi	x2, x2, 48	# 2255
	lw		x1, -44(x2)	# 2255
	jal		x0, beq_cont.32908	# 2254
beq.32909:
	mul		x10, x30, x4	# 2257
	add		x10, x7, x10	# 2257
	lw		x10, 0(x10)	# 2257
	addi	x13, x0, 0	# 2257
	addi	x5, x13, 0
	addi	x4, x10, 0
	addi	x29, x12, 0
	sw		x1, -44(x2)	# 2257
	addi	x2, x2, -48	# 2257
	lw		x31, 0(x29)	# 2257
	jalr	x1, x31, 0	# 2257
	addi	x2, x2, 48	# 2257
	lw		x1, -44(x2)	# 2257
beq_cont.32908:
	lw		x4, -36(x2)	# 2154
	lw		x5, -40(x2)	# 2154
	beq		x5, x4, beq.32911	# 2154
	addi	x4, x0, 0	# 2162
	mul		x4, x30, x4	# 2162
	addi	x4, x4, 60604	# 2162
	flw		f1, 0(x4)	# 2162
	lw		x29, -32(x2)	# 2148
	sw		x1, -44(x2)	# 2148
	addi	x2, x2, -48	# 2148
	lw		x31, 0(x29)	# 2148
	jalr	x1, x31, 0	# 2148
	addi	x2, x2, 48	# 2148
	lw		x1, -44(x2)	# 2148
	addi	x5, x0, 255	# 2149
	ble		x4, x5, ble.32913	# 2149
	addi	x4, x0, 255	# 2149
	jal		x0, ble_cont.32912	# 2149
ble.32913:
	lw		x5, -28(x2)	# 2149
	ble		x5, x4, ble_cont.32914	# 2149
	addi	x4, x0, 0	# 2149
ble_cont.32914:
ble_cont.32912:
	sw		x1, -44(x2)	# 2150
	addi	x2, x2, -48	# 2150
	jal		x1, min_caml_print_char	# 2150
	addi	x2, x2, 48	# 2150
	lw		x1, -44(x2)	# 2150
	addi	x4, x0, 1	# 2163
	mul		x4, x30, x4	# 2163
	addi	x4, x4, 60604	# 2163
	flw		f1, 0(x4)	# 2163
	lw		x29, -32(x2)	# 2148
	sw		x1, -44(x2)	# 2148
	addi	x2, x2, -48	# 2148
	lw		x31, 0(x29)	# 2148
	jalr	x1, x31, 0	# 2148
	addi	x2, x2, 48	# 2148
	lw		x1, -44(x2)	# 2148
	addi	x5, x0, 255	# 2149
	ble		x4, x5, ble.32916	# 2149
	addi	x4, x0, 255	# 2149
	jal		x0, ble_cont.32915	# 2149
ble.32916:
	lw		x5, -28(x2)	# 2149
	ble		x5, x4, ble_cont.32917	# 2149
	addi	x4, x0, 0	# 2149
ble_cont.32917:
ble_cont.32915:
	sw		x1, -44(x2)	# 2150
	addi	x2, x2, -48	# 2150
	jal		x1, min_caml_print_char	# 2150
	addi	x2, x2, 48	# 2150
	lw		x1, -44(x2)	# 2150
	addi	x4, x0, 2	# 2164
	mul		x4, x30, x4	# 2164
	addi	x4, x4, 60604	# 2164
	flw		f1, 0(x4)	# 2164
	lw		x29, -32(x2)	# 2148
	sw		x1, -44(x2)	# 2148
	addi	x2, x2, -48	# 2148
	lw		x31, 0(x29)	# 2148
	jalr	x1, x31, 0	# 2148
	addi	x2, x2, 48	# 2148
	lw		x1, -44(x2)	# 2148
	addi	x5, x0, 255	# 2149
	ble		x4, x5, ble.32919	# 2149
	addi	x4, x0, 255	# 2149
	jal		x0, ble_cont.32918	# 2149
ble.32919:
	lw		x5, -28(x2)	# 2149
	ble		x5, x4, ble_cont.32920	# 2149
	addi	x4, x0, 0	# 2149
ble_cont.32920:
ble_cont.32918:
	sw		x1, -44(x2)	# 2150
	addi	x2, x2, -48	# 2150
	jal		x1, min_caml_print_char	# 2150
	addi	x2, x2, 48	# 2150
	lw		x1, -44(x2)	# 2150
	jal		x0, beq_cont.32910	# 2154
beq.32911:
	addi	x4, x0, 0	# 2155
	mul		x4, x30, x4	# 2155
	addi	x4, x4, 60604	# 2155
	flw		f1, 0(x4)	# 2155
	lw		x29, -32(x2)	# 2142
	sw		x1, -44(x2)	# 2142
	addi	x2, x2, -48	# 2142
	lw		x31, 0(x29)	# 2142
	jalr	x1, x31, 0	# 2142
	addi	x2, x2, 48	# 2142
	lw		x1, -44(x2)	# 2142
	addi	x5, x0, 255	# 2143
	ble		x4, x5, ble.32922	# 2143
	addi	x4, x0, 255	# 2143
	jal		x0, ble_cont.32921	# 2143
ble.32922:
	lw		x5, -28(x2)	# 2143
	ble		x5, x4, ble_cont.32923	# 2143
	addi	x4, x0, 0	# 2143
ble_cont.32923:
ble_cont.32921:
	sw		x1, -44(x2)	# 2144
	addi	x2, x2, -48	# 2144
	jal		x1, min_caml_print_int	# 2144
	addi	x2, x2, 48	# 2144
	lw		x1, -44(x2)	# 2144
	addi	x4, x0, 32	# 2156
	sw		x1, -44(x2)	# 2156
	addi	x2, x2, -48	# 2156
	jal		x1, min_caml_print_char	# 2156
	addi	x2, x2, 48	# 2156
	lw		x1, -44(x2)	# 2156
	addi	x4, x0, 1	# 2157
	mul		x4, x30, x4	# 2157
	addi	x4, x4, 60604	# 2157
	flw		f1, 0(x4)	# 2157
	lw		x29, -32(x2)	# 2142
	sw		x1, -44(x2)	# 2142
	addi	x2, x2, -48	# 2142
	lw		x31, 0(x29)	# 2142
	jalr	x1, x31, 0	# 2142
	addi	x2, x2, 48	# 2142
	lw		x1, -44(x2)	# 2142
	addi	x5, x0, 255	# 2143
	ble		x4, x5, ble.32925	# 2143
	addi	x4, x0, 255	# 2143
	jal		x0, ble_cont.32924	# 2143
ble.32925:
	lw		x5, -28(x2)	# 2143
	ble		x5, x4, ble_cont.32926	# 2143
	addi	x4, x0, 0	# 2143
ble_cont.32926:
ble_cont.32924:
	sw		x1, -44(x2)	# 2144
	addi	x2, x2, -48	# 2144
	jal		x1, min_caml_print_int	# 2144
	addi	x2, x2, 48	# 2144
	lw		x1, -44(x2)	# 2144
	addi	x4, x0, 32	# 2158
	sw		x1, -44(x2)	# 2158
	addi	x2, x2, -48	# 2158
	jal		x1, min_caml_print_char	# 2158
	addi	x2, x2, 48	# 2158
	lw		x1, -44(x2)	# 2158
	addi	x4, x0, 2	# 2159
	mul		x4, x30, x4	# 2159
	addi	x4, x4, 60604	# 2159
	flw		f1, 0(x4)	# 2159
	lw		x29, -32(x2)	# 2142
	sw		x1, -44(x2)	# 2142
	addi	x2, x2, -48	# 2142
	lw		x31, 0(x29)	# 2142
	jalr	x1, x31, 0	# 2142
	addi	x2, x2, 48	# 2142
	lw		x1, -44(x2)	# 2142
	addi	x5, x0, 255	# 2143
	ble		x4, x5, ble.32928	# 2143
	addi	x4, x0, 255	# 2143
	jal		x0, ble_cont.32927	# 2143
ble.32928:
	lw		x5, -28(x2)	# 2143
	ble		x5, x4, ble_cont.32929	# 2143
	addi	x4, x0, 0	# 2143
ble_cont.32929:
ble_cont.32927:
	sw		x1, -44(x2)	# 2144
	addi	x2, x2, -48	# 2144
	jal		x1, min_caml_print_int	# 2144
	addi	x2, x2, 48	# 2144
	lw		x1, -44(x2)	# 2144
	addi	x4, x0, 10	# 2160
	sw		x1, -44(x2)	# 2160
	addi	x2, x2, -48	# 2160
	jal		x1, min_caml_print_char	# 2160
	addi	x2, x2, 48	# 2160
	lw		x1, -44(x2)	# 2160
beq_cont.32910:
	lw		x4, -20(x2)	# 2262
	lw		x5, -24(x2)	# 2262
	add		x4, x5, x4	# 2262
	lw		x5, -12(x2)	# 2262
	lw		x6, -8(x2)	# 2262
	lw		x7, -4(x2)	# 2262
	lw		x8, 0(x2)	# 2262
	lw		x9, -40(x2)	# 2262
	lw		x29, -16(x2)	# 2262
	lw		x31, 0(x29)	# 2262
	jalr	x0, x31, 0	# 2262
ble.32899:
	jalr	x0, x1, 0	# 2263
scan_line.2978.17846:
	lw		x10, 28(x29)	# 2269
	lw		x11, 24(x29)	# 2269
	lw		x12, 20(x29)	# 2269
	lw		x13, 16(x29)	# 2269
	lw		x14, 12(x29)	# 2269
	lw		x15, 8(x29)	# 2269
	lw		x16, 4(x29)	# 2269
	mul		x17, x30, x16	# 2269
	addi	x17, x17, 60616	# 2269
	lw		x17, 0(x17)	# 2269
	ble		x17, x4, ble.32931	# 2269
	sub		x17, x17, x16	# 2271
	sw		x29, 0(x2)	# 2271
	sw		x13, -4(x2)	# 2271
	sw		x14, -8(x2)	# 2271
	sw		x8, -12(x2)	# 2271
	sw		x16, -16(x2)	# 2271
	sw		x9, -20(x2)	# 2271
	sw		x7, -24(x2)	# 2271
	sw		x6, -28(x2)	# 2271
	sw		x5, -32(x2)	# 2271
	sw		x4, -36(x2)	# 2271
	sw		x15, -40(x2)	# 2271
	sw		x10, -44(x2)	# 2271
	ble		x17, x4, ble_cont.32932	# 2271
	addi	x17, x4, 1	# 2272
	addi	x18, x0, 0	# 2232
	mul		x18, x30, x18	# 2232
	addi	x18, x18, 60632	# 2232
	flw		f1, 0(x18)	# 2232
	addi	x18, x0, 1	# 2232
	mul		x18, x30, x18	# 2232
	addi	x18, x18, 60624	# 2232
	lw		x18, 0(x18)	# 2232
	sub		x17, x17, x18	# 2232
	sw		x11, -48(x2)	# 2232
	fsw		f1, -52(x2)	# 2232
	addi	x4, x17, 0
	addi	x29, x12, 0
	sw		x1, -56(x2)	# 2232
	addi	x2, x2, -60	# 2232
	lw		x31, 0(x29)	# 2232
	jalr	x1, x31, 0	# 2232
	addi	x2, x2, 60	# 2232
	lw		x1, -56(x2)	# 2232
	flw		f2, -52(x2)	# 2232
	fmul	f1, f2, f1	# 2232
	addi	x4, x0, 0	# 2235
	mul		x4, x30, x4	# 2235
	addi	x4, x4, 60672	# 2235
	flw		f2, 0(x4)	# 2235
	fmul	f2, f1, f2	# 2235
	addi	x4, x0, 0	# 2235
	mul		x4, x30, x4	# 2235
	addi	x4, x4, 60684	# 2235
	flw		f3, 0(x4)	# 2235
	fadd	f2, f2, f3	# 2235
	addi	x4, x0, 1	# 2236
	mul		x4, x30, x4	# 2236
	addi	x4, x4, 60672	# 2236
	flw		f3, 0(x4)	# 2236
	fmul	f3, f1, f3	# 2236
	addi	x4, x0, 1	# 2236
	mul		x4, x30, x4	# 2236
	addi	x4, x4, 60684	# 2236
	flw		f4, 0(x4)	# 2236
	fadd	f3, f3, f4	# 2236
	addi	x4, x0, 2	# 2237
	mul		x4, x30, x4	# 2237
	addi	x4, x4, 60672	# 2237
	flw		f4, 0(x4)	# 2237
	fmul	f1, f1, f4	# 2237
	addi	x4, x0, 2	# 2237
	mul		x4, x30, x4	# 2237
	addi	x4, x4, 60684	# 2237
	flw		f4, 0(x4)	# 2237
	fadd	f1, f1, f4	# 2237
	addi	x4, x0, 0	# 2238
	mul		x4, x30, x4	# 2238
	addi	x4, x4, 60616	# 2238
	lw		x4, 0(x4)	# 2238
	addi	x5, x0, 1	# 2238
	sub		x5, x4, x5	# 2238
	lw		x4, -24(x2)	# 2238
	lw		x6, -12(x2)	# 2238
	lw		x29, -48(x2)	# 2238
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -56(x2)	# 2238
	addi	x2, x2, -60	# 2238
	lw		x31, 0(x29)	# 2238
	jalr	x1, x31, 0	# 2238
	addi	x2, x2, 60	# 2238
	lw		x1, -56(x2)	# 2238
ble_cont.32932:
	lw		x4, -40(x2)	# 2274
	lw		x5, -36(x2)	# 2274
	lw		x6, -32(x2)	# 2274
	lw		x7, -28(x2)	# 2274
	lw		x8, -24(x2)	# 2274
	lw		x9, -20(x2)	# 2274
	lw		x29, -44(x2)	# 2274
	sw		x1, -56(x2)	# 2274
	addi	x2, x2, -60	# 2274
	lw		x31, 0(x29)	# 2274
	jalr	x1, x31, 0	# 2274
	addi	x2, x2, 60	# 2274
	lw		x1, -56(x2)	# 2274
	lw		x4, -16(x2)	# 2275
	lw		x5, -36(x2)	# 2275
	add		x4, x5, x4	# 2275
	lw		x5, -8(x2)	# 238
	lw		x6, -12(x2)	# 238
	add		x5, x6, x5	# 238
	lw		x6, -4(x2)	# 239
	ble		x6, x5, ble.32934	# 239
	addi	x8, x5, 0	# 239
	jal		x0, ble_cont.32933	# 239
ble.32934:
	sub		x8, x5, x6	# 239
ble_cont.32933:
	lw		x5, -28(x2)	# 2275
	lw		x6, -24(x2)	# 2275
	lw		x7, -32(x2)	# 2275
	lw		x9, -20(x2)	# 2275
	lw		x29, 0(x2)	# 2275
	lw		x31, 0(x29)	# 2275
	jalr	x0, x31, 0	# 2275
ble.32931:
	jalr	x0, x1, 0	# 2276
init_line_elements.2989.17853:
	lw		x6, 24(x29)	# 2311
	lw		x7, 20(x29)	# 2311
	lw		x8, 16(x29)	# 2311
	lw		x9, 12(x29)	# 2311
	lw		x10, 8(x29)	# 2311
	flw		f1, 4(x29)	# 2311
	ble		x9, x5, ble.32936	# 2311
	jalr	x0, x1, 0	# 2315
ble.32936:
	sw		x29, 0(x2)	# 2298
	sw		x4, -4(x2)	# 2298
	sw		x5, -8(x2)	# 2298
	sw		x9, -12(x2)	# 2298
	sw		x7, -16(x2)	# 2298
	sw		x10, -20(x2)	# 2298
	sw		x6, -24(x2)	# 2298
	fsw		f1, -28(x2)	# 2298
	sw		x8, -32(x2)	# 2298
	addi	x4, x8, 0
	sw		x1, -36(x2)	# 2298
	addi	x2, x2, -40	# 2298
	jal		x1, min_caml_create_float_array	# 2298
	addi	x2, x2, 40	# 2298
	lw		x1, -36(x2)	# 2298
	flw		f1, -28(x2)	# 2286
	lw		x5, -32(x2)	# 2286
	sw		x4, -36(x2)	# 2286
	addi	x4, x5, 0
	sw		x1, -40(x2)	# 2286
	addi	x2, x2, -44	# 2286
	jal		x1, min_caml_create_float_array	# 2286
	addi	x2, x2, 44	# 2286
	lw		x1, -40(x2)	# 2286
	addi	x5, x4, 0	# 2286
	lw		x4, -24(x2)	# 2287
	sw		x1, -40(x2)	# 2287
	addi	x2, x2, -44	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 44	# 2287
	lw		x1, -40(x2)	# 2287
	flw		f1, -28(x2)	# 2288
	lw		x5, -32(x2)	# 2288
	sw		x4, -40(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -44(x2)	# 2288
	addi	x2, x2, -48	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 48	# 2288
	lw		x1, -44(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	mul		x6, x30, x5	# 2288
	lw		x7, -40(x2)	# 2288
	add		x6, x7, x6	# 2288
	sw		x4, 0(x6)	# 2288
	flw		f1, -28(x2)	# 2289
	lw		x4, -32(x2)	# 2289
	sw		x1, -44(x2)	# 2289
	addi	x2, x2, -48	# 2289
	jal		x1, min_caml_create_float_array	# 2289
	addi	x2, x2, 48	# 2289
	lw		x1, -44(x2)	# 2289
	lw		x5, -16(x2)	# 2289
	mul		x6, x30, x5	# 2289
	lw		x7, -40(x2)	# 2289
	add		x6, x7, x6	# 2289
	sw		x4, 0(x6)	# 2289
	flw		f1, -28(x2)	# 2290
	lw		x4, -32(x2)	# 2290
	sw		x1, -44(x2)	# 2290
	addi	x2, x2, -48	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 48	# 2290
	lw		x1, -44(x2)	# 2290
	lw		x5, -32(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -40(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	addi	x4, x0, 4	# 2291
	flw		f1, -28(x2)	# 2291
	sw		x4, -44(x2)	# 2291
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 2291
	addi	x2, x2, -52	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 52	# 2291
	lw		x1, -48(x2)	# 2291
	lw		x5, -44(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -40(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	lw		x4, -24(x2)	# 2300
	lw		x6, -12(x2)	# 2300
	addi	x5, x6, 0
	sw		x1, -48(x2)	# 2300
	addi	x2, x2, -52	# 2300
	jal		x1, min_caml_create_array	# 2300
	addi	x2, x2, 52	# 2300
	lw		x1, -48(x2)	# 2300
	lw		x5, -24(x2)	# 2301
	lw		x6, -12(x2)	# 2301
	sw		x4, -48(x2)	# 2301
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -52(x2)	# 2301
	addi	x2, x2, -56	# 2301
	jal		x1, min_caml_create_array	# 2301
	addi	x2, x2, 56	# 2301
	lw		x1, -52(x2)	# 2301
	flw		f1, -28(x2)	# 2286
	lw		x5, -32(x2)	# 2286
	sw		x4, -52(x2)	# 2286
	addi	x4, x5, 0
	sw		x1, -56(x2)	# 2286
	addi	x2, x2, -60	# 2286
	jal		x1, min_caml_create_float_array	# 2286
	addi	x2, x2, 60	# 2286
	lw		x1, -56(x2)	# 2286
	addi	x5, x4, 0	# 2286
	lw		x4, -24(x2)	# 2287
	sw		x1, -56(x2)	# 2287
	addi	x2, x2, -60	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 60	# 2287
	lw		x1, -56(x2)	# 2287
	flw		f1, -28(x2)	# 2288
	lw		x5, -32(x2)	# 2288
	sw		x4, -56(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 2288
	addi	x2, x2, -64	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 64	# 2288
	lw		x1, -60(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	mul		x6, x30, x5	# 2288
	lw		x7, -56(x2)	# 2288
	add		x6, x7, x6	# 2288
	sw		x4, 0(x6)	# 2288
	flw		f1, -28(x2)	# 2289
	lw		x4, -32(x2)	# 2289
	sw		x1, -60(x2)	# 2289
	addi	x2, x2, -64	# 2289
	jal		x1, min_caml_create_float_array	# 2289
	addi	x2, x2, 64	# 2289
	lw		x1, -60(x2)	# 2289
	lw		x5, -16(x2)	# 2289
	mul		x6, x30, x5	# 2289
	lw		x7, -56(x2)	# 2289
	add		x6, x7, x6	# 2289
	sw		x4, 0(x6)	# 2289
	flw		f1, -28(x2)	# 2290
	lw		x4, -32(x2)	# 2290
	sw		x1, -60(x2)	# 2290
	addi	x2, x2, -64	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 64	# 2290
	lw		x1, -60(x2)	# 2290
	lw		x5, -32(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -56(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -28(x2)	# 2291
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 2291
	addi	x2, x2, -64	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 64	# 2291
	lw		x1, -60(x2)	# 2291
	lw		x5, -44(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -56(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	flw		f1, -28(x2)	# 2286
	lw		x4, -32(x2)	# 2286
	sw		x1, -60(x2)	# 2286
	addi	x2, x2, -64	# 2286
	jal		x1, min_caml_create_float_array	# 2286
	addi	x2, x2, 64	# 2286
	lw		x1, -60(x2)	# 2286
	addi	x5, x4, 0	# 2286
	lw		x4, -24(x2)	# 2287
	sw		x1, -60(x2)	# 2287
	addi	x2, x2, -64	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 64	# 2287
	lw		x1, -60(x2)	# 2287
	flw		f1, -28(x2)	# 2288
	lw		x5, -32(x2)	# 2288
	sw		x4, -60(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 2288
	addi	x2, x2, -68	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 68	# 2288
	lw		x1, -64(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	mul		x6, x30, x5	# 2288
	lw		x7, -60(x2)	# 2288
	add		x6, x7, x6	# 2288
	sw		x4, 0(x6)	# 2288
	flw		f1, -28(x2)	# 2289
	lw		x4, -32(x2)	# 2289
	sw		x1, -64(x2)	# 2289
	addi	x2, x2, -68	# 2289
	jal		x1, min_caml_create_float_array	# 2289
	addi	x2, x2, 68	# 2289
	lw		x1, -64(x2)	# 2289
	lw		x5, -16(x2)	# 2289
	mul		x6, x30, x5	# 2289
	lw		x7, -60(x2)	# 2289
	add		x6, x7, x6	# 2289
	sw		x4, 0(x6)	# 2289
	flw		f1, -28(x2)	# 2290
	lw		x4, -32(x2)	# 2290
	sw		x1, -64(x2)	# 2290
	addi	x2, x2, -68	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 68	# 2290
	lw		x1, -64(x2)	# 2290
	lw		x5, -32(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -60(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -28(x2)	# 2291
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 2291
	addi	x2, x2, -68	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 68	# 2291
	lw		x1, -64(x2)	# 2291
	lw		x5, -44(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -60(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	lw		x4, -20(x2)	# 2304
	lw		x6, -12(x2)	# 2304
	addi	x5, x6, 0
	sw		x1, -64(x2)	# 2304
	addi	x2, x2, -68	# 2304
	jal		x1, min_caml_create_array	# 2304
	addi	x2, x2, 68	# 2304
	lw		x1, -64(x2)	# 2304
	flw		f1, -28(x2)	# 2286
	lw		x5, -32(x2)	# 2286
	sw		x4, -64(x2)	# 2286
	addi	x4, x5, 0
	sw		x1, -68(x2)	# 2286
	addi	x2, x2, -72	# 2286
	jal		x1, min_caml_create_float_array	# 2286
	addi	x2, x2, 72	# 2286
	lw		x1, -68(x2)	# 2286
	addi	x5, x4, 0	# 2286
	lw		x4, -24(x2)	# 2287
	sw		x1, -68(x2)	# 2287
	addi	x2, x2, -72	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 72	# 2287
	lw		x1, -68(x2)	# 2287
	flw		f1, -28(x2)	# 2288
	lw		x5, -32(x2)	# 2288
	sw		x4, -68(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 2288
	addi	x2, x2, -76	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 76	# 2288
	lw		x1, -72(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	mul		x6, x30, x5	# 2288
	lw		x7, -68(x2)	# 2288
	add		x6, x7, x6	# 2288
	sw		x4, 0(x6)	# 2288
	flw		f1, -28(x2)	# 2289
	lw		x4, -32(x2)	# 2289
	sw		x1, -72(x2)	# 2289
	addi	x2, x2, -76	# 2289
	jal		x1, min_caml_create_float_array	# 2289
	addi	x2, x2, 76	# 2289
	lw		x1, -72(x2)	# 2289
	lw		x5, -16(x2)	# 2289
	mul		x5, x30, x5	# 2289
	lw		x6, -68(x2)	# 2289
	add		x5, x6, x5	# 2289
	sw		x4, 0(x5)	# 2289
	flw		f1, -28(x2)	# 2290
	lw		x4, -32(x2)	# 2290
	sw		x1, -72(x2)	# 2290
	addi	x2, x2, -76	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 76	# 2290
	lw		x1, -72(x2)	# 2290
	lw		x5, -32(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -68(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -28(x2)	# 2291
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 2291
	addi	x2, x2, -76	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 76	# 2291
	lw		x1, -72(x2)	# 2291
	lw		x5, -44(x2)	# 2291
	mul		x5, x30, x5	# 2291
	lw		x6, -68(x2)	# 2291
	add		x5, x6, x5	# 2291
	sw		x4, 0(x5)	# 2291
	addi	x4, x3, 0	# 2306
	addi	x3, x3, 32	# 2306
	sw		x6, 28(x4)	# 2306
	lw		x5, -64(x2)	# 2306
	sw		x5, 24(x4)	# 2306
	lw		x5, -60(x2)	# 2306
	sw		x5, 20(x4)	# 2306
	lw		x5, -56(x2)	# 2306
	sw		x5, 16(x4)	# 2306
	lw		x5, -52(x2)	# 2306
	sw		x5, 12(x4)	# 2306
	lw		x5, -48(x2)	# 2306
	sw		x5, 8(x4)	# 2306
	lw		x5, -40(x2)	# 2306
	sw		x5, 4(x4)	# 2306
	lw		x5, -36(x2)	# 2306
	sw		x5, 0(x4)	# 2306
	lw		x5, -8(x2)	# 2312
	mul		x6, x30, x5	# 2312
	lw		x7, -4(x2)	# 2312
	add		x6, x7, x6	# 2312
	sw		x4, 0(x6)	# 2312
	lw		x4, -20(x2)	# 2313
	sub		x5, x5, x4	# 2313
	lw		x29, 0(x2)	# 2313
	addi	x4, x7, 0
	lw		x31, 0(x29)	# 2313
	jalr	x0, x31, 0	# 2313
calc_dirvec.2999.17856:
	lw		x7, 28(x29)	# 2348
	lw		x8, 24(x29)	# 2348
	lw		x9, 20(x29)	# 2348
	lw		x10, 16(x29)	# 2348
	lw		x11, 12(x29)	# 2348
	lw		x12, 8(x29)	# 2348
	lw		x13, 4(x29)	# 2348
	ble		x10, x4, ble.32937	# 2348
	fmul	f1, f2, f2	# 2339
	lui		x10, %hi(l.27840)	# 2339
	ori		x10, x0, %lo(l.27840)	# 2339
	flw		f2, 0(x10)	# 2339
	fadd	f1, f1, f2	# 2339
	fsqrt	f1, f1	# 2339
	fadd	f5, f0, f16	# 2340
	fdiv	f6, f5, f1	# 2340
	sw		x6, 0(x2)	# 2341
	sw		x5, -4(x2)	# 2341
	sw		x29, -8(x2)	# 2341
	fsw		f4, -12(x2)	# 2341
	sw		x9, -16(x2)	# 2341
	fsw		f5, -20(x2)	# 2341
	fsw		f2, -24(x2)	# 2341
	sw		x13, -28(x2)	# 2341
	sw		x4, -32(x2)	# 2341
	fsw		f1, -36(x2)	# 2341
	sw		x8, -40(x2)	# 2341
	sw		x7, -44(x2)	# 2341
	fsw		f3, -48(x2)	# 2341
	addi	x29, x9, 0
	fadd	f1, f0, f6
	sw		x1, -52(x2)	# 2341
	addi	x2, x2, -56	# 2341
	lw		x31, 0(x29)	# 2341
	jalr	x1, x31, 0	# 2341
	addi	x2, x2, 56	# 2341
	lw		x1, -52(x2)	# 2341
	flw		f2, -48(x2)	# 2342
	fmul	f1, f1, f2	# 2342
	lw		x29, -44(x2)	# 2334
	fsw		f1, -52(x2)	# 2334
	sw		x1, -56(x2)	# 2334
	addi	x2, x2, -60	# 2334
	lw		x31, 0(x29)	# 2334
	jalr	x1, x31, 0	# 2334
	addi	x2, x2, 60	# 2334
	lw		x1, -56(x2)	# 2334
	flw		f2, -52(x2)	# 2334
	lw		x29, -40(x2)	# 2334
	fsw		f1, -56(x2)	# 2334
	fadd	f1, f0, f2
	sw		x1, -60(x2)	# 2334
	addi	x2, x2, -64	# 2334
	lw		x31, 0(x29)	# 2334
	jalr	x1, x31, 0	# 2334
	addi	x2, x2, 64	# 2334
	lw		x1, -60(x2)	# 2334
	flw		f2, -56(x2)	# 2334
	fdiv	f1, f2, f1	# 2334
	flw		f2, -36(x2)	# 2343
	fmul	f1, f1, f2	# 2343
	lw		x4, -28(x2)	# 2364
	lw		x5, -32(x2)	# 2364
	add		x4, x5, x4	# 2364
	fmul	f2, f1, f1	# 2339
	flw		f3, -24(x2)	# 2339
	fadd	f2, f2, f3	# 2339
	fsqrt	f2, f2	# 2339
	flw		f3, -20(x2)	# 2340
	fdiv	f3, f3, f2	# 2340
	lw		x29, -16(x2)	# 2341
	fsw		f1, -60(x2)	# 2341
	sw		x4, -64(x2)	# 2341
	fsw		f2, -68(x2)	# 2341
	fadd	f1, f0, f3
	sw		x1, -72(x2)	# 2341
	addi	x2, x2, -76	# 2341
	lw		x31, 0(x29)	# 2341
	jalr	x1, x31, 0	# 2341
	addi	x2, x2, 76	# 2341
	lw		x1, -72(x2)	# 2341
	flw		f2, -12(x2)	# 2342
	fmul	f1, f1, f2	# 2342
	lw		x29, -44(x2)	# 2334
	fsw		f1, -72(x2)	# 2334
	sw		x1, -76(x2)	# 2334
	addi	x2, x2, -80	# 2334
	lw		x31, 0(x29)	# 2334
	jalr	x1, x31, 0	# 2334
	addi	x2, x2, 80	# 2334
	lw		x1, -76(x2)	# 2334
	flw		f2, -72(x2)	# 2334
	lw		x29, -40(x2)	# 2334
	fsw		f1, -76(x2)	# 2334
	fadd	f1, f0, f2
	sw		x1, -80(x2)	# 2334
	addi	x2, x2, -84	# 2334
	lw		x31, 0(x29)	# 2334
	jalr	x1, x31, 0	# 2334
	addi	x2, x2, 84	# 2334
	lw		x1, -80(x2)	# 2334
	flw		f2, -76(x2)	# 2334
	fdiv	f1, f2, f1	# 2334
	flw		f2, -68(x2)	# 2343
	fmul	f2, f1, f2	# 2343
	flw		f1, -60(x2)	# 2364
	flw		f3, -48(x2)	# 2364
	flw		f4, -12(x2)	# 2364
	lw		x4, -64(x2)	# 2364
	lw		x5, -4(x2)	# 2364
	lw		x6, 0(x2)	# 2364
	lw		x29, -8(x2)	# 2364
	lw		x31, 0(x29)	# 2364
	jalr	x0, x31, 0	# 2364
ble.32937:
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 2349
	fadd	f4, f0, f16	# 2349
	fadd	f3, f3, f4	# 2349
	fsqrt	f3, f3	# 2349
	fdiv	f1, f1, f3	# 2350
	fdiv	f2, f2, f3	# 2351
	fdiv	f3, f4, f3	# 2352
	mul		x4, x30, x5	# 2355
	addi	x4, x4, 60716	# 2355
	lw		x4, 0(x4)	# 2355
	mul		x5, x30, x6	# 2356
	add		x5, x4, x5	# 2356
	lw		x5, 0(x5)	# 2356
	lw		x5, 0(x5)	# 653
	mul		x7, x30, x12	# 254
	add		x7, x5, x7	# 254
	fsw		f1, 0(x7)	# 254
	mul		x7, x30, x13	# 255
	add		x7, x5, x7	# 255
	fsw		f2, 0(x7)	# 255
	mul		x7, x30, x11	# 256
	add		x5, x5, x7	# 256
	fsw		f3, 0(x5)	# 256
	addi	x5, x6, 40	# 2357
	mul		x5, x30, x5	# 2357
	add		x5, x4, x5	# 2357
	lw		x5, 0(x5)	# 2357
	lw		x5, 0(x5)	# 653
	fsub	f4, f0, f2	# 123
	mul		x7, x30, x12	# 254
	add		x7, x5, x7	# 254
	fsw		f1, 0(x7)	# 254
	mul		x7, x30, x13	# 255
	add		x7, x5, x7	# 255
	fsw		f3, 0(x7)	# 255
	mul		x7, x30, x11	# 256
	add		x5, x5, x7	# 256
	fsw		f4, 0(x5)	# 256
	addi	x5, x6, 80	# 2358
	mul		x5, x30, x5	# 2358
	add		x5, x4, x5	# 2358
	lw		x5, 0(x5)	# 2358
	lw		x5, 0(x5)	# 653
	fsub	f5, f0, f1	# 123
	mul		x7, x30, x12	# 254
	add		x7, x5, x7	# 254
	fsw		f3, 0(x7)	# 254
	mul		x7, x30, x13	# 255
	add		x7, x5, x7	# 255
	fsw		f5, 0(x7)	# 255
	mul		x7, x30, x11	# 256
	add		x5, x5, x7	# 256
	fsw		f4, 0(x5)	# 256
	add		x5, x6, x13	# 2359
	mul		x5, x30, x5	# 2359
	add		x5, x4, x5	# 2359
	lw		x5, 0(x5)	# 2359
	lw		x5, 0(x5)	# 653
	fsub	f3, f0, f3	# 123
	mul		x7, x30, x12	# 254
	add		x7, x5, x7	# 254
	fsw		f5, 0(x7)	# 254
	mul		x7, x30, x13	# 255
	add		x7, x5, x7	# 255
	fsw		f4, 0(x7)	# 255
	mul		x7, x30, x11	# 256
	add		x5, x5, x7	# 256
	fsw		f3, 0(x5)	# 256
	addi	x5, x6, 41	# 2360
	mul		x5, x30, x5	# 2360
	add		x5, x4, x5	# 2360
	lw		x5, 0(x5)	# 2360
	lw		x5, 0(x5)	# 653
	mul		x7, x30, x12	# 254
	add		x7, x5, x7	# 254
	fsw		f5, 0(x7)	# 254
	mul		x7, x30, x13	# 255
	add		x7, x5, x7	# 255
	fsw		f3, 0(x7)	# 255
	mul		x7, x30, x11	# 256
	add		x5, x5, x7	# 256
	fsw		f2, 0(x5)	# 256
	addi	x5, x6, 81	# 2361
	mul		x5, x30, x5	# 2361
	add		x4, x4, x5	# 2361
	lw		x4, 0(x4)	# 2361
	lw		x4, 0(x4)	# 653
	mul		x5, x30, x12	# 254
	add		x5, x4, x5	# 254
	fsw		f3, 0(x5)	# 254
	mul		x5, x30, x13	# 255
	add		x5, x4, x5	# 255
	fsw		f1, 0(x5)	# 255
	mul		x5, x30, x11	# 256
	add		x4, x4, x5	# 256
	fsw		f2, 0(x4)	# 256
	jalr	x0, x1, 0	# 256
calc_dirvecs.3007.17864:
	lw		x7, 28(x29)	# 2369
	lw		x8, 24(x29)	# 2369
	lw		x9, 20(x29)	# 2369
	lw		x10, 16(x29)	# 2369
	lw		x11, 12(x29)	# 2369
	lw		x12, 8(x29)	# 2369
	flw		f2, 4(x29)	# 2369
	ble		x11, x4, ble.32939	# 2369
	jalr	x0, x1, 0	# 2378
ble.32939:
	sw		x29, 0(x2)	# 2371
	sw		x9, -4(x2)	# 2371
	sw		x12, -8(x2)	# 2371
	sw		x4, -12(x2)	# 2371
	sw		x10, -16(x2)	# 2371
	fsw		f1, -20(x2)	# 2371
	fsw		f2, -24(x2)	# 2371
	sw		x6, -28(x2)	# 2371
	sw		x5, -32(x2)	# 2371
	sw		x11, -36(x2)	# 2371
	sw		x8, -40(x2)	# 2371
	addi	x29, x7, 0
	sw		x1, -44(x2)	# 2371
	addi	x2, x2, -48	# 2371
	lw		x31, 0(x29)	# 2371
	jalr	x1, x31, 0	# 2371
	addi	x2, x2, 48	# 2371
	lw		x1, -44(x2)	# 2371
	lui		x4, %hi(l.26219)	# 2371
	ori		x4, x0, %lo(l.26219)	# 2371
	flw		f2, 0(x4)	# 2371
	fmul	f1, f1, f2	# 2371
	lui		x4, %hi(l.28894)	# 2371
	ori		x4, x0, %lo(l.28894)	# 2371
	flw		f2, 0(x4)	# 2371
	fsub	f3, f1, f2	# 2371
	flw		f2, -24(x2)	# 2372
	flw		f4, -20(x2)	# 2372
	lw		x4, -36(x2)	# 2372
	lw		x5, -32(x2)	# 2372
	lw		x6, -28(x2)	# 2372
	lw		x29, -40(x2)	# 2372
	fsw		f1, -44(x2)	# 2372
	fadd	f1, f0, f2
	sw		x1, -48(x2)	# 2372
	addi	x2, x2, -52	# 2372
	lw		x31, 0(x29)	# 2372
	jalr	x1, x31, 0	# 2372
	addi	x2, x2, 52	# 2372
	lw		x1, -48(x2)	# 2372
	lui		x4, %hi(l.27840)	# 2374
	ori		x4, x0, %lo(l.27840)	# 2374
	flw		f1, 0(x4)	# 2374
	flw		f2, -44(x2)	# 2374
	fadd	f3, f2, f1	# 2374
	lw		x4, -16(x2)	# 2375
	lw		x5, -28(x2)	# 2375
	add		x6, x5, x4	# 2375
	flw		f1, -24(x2)	# 2375
	flw		f4, -20(x2)	# 2375
	lw		x4, -36(x2)	# 2375
	lw		x7, -32(x2)	# 2375
	lw		x29, -40(x2)	# 2375
	addi	x5, x7, 0
	fadd	f2, f0, f1
	sw		x1, -48(x2)	# 2375
	addi	x2, x2, -52	# 2375
	lw		x31, 0(x29)	# 2375
	jalr	x1, x31, 0	# 2375
	addi	x2, x2, 52	# 2375
	lw		x1, -48(x2)	# 2375
	lw		x4, -8(x2)	# 2377
	lw		x5, -12(x2)	# 2377
	sub		x5, x5, x4	# 2377
	lw		x6, -32(x2)	# 238
	add		x4, x6, x4	# 238
	lw		x6, -4(x2)	# 239
	ble		x6, x4, ble.32942	# 239
	jal		x0, ble_cont.32941	# 239
ble.32942:
	sub		x4, x4, x6	# 239
ble_cont.32941:
	flw		f1, -20(x2)	# 2377
	lw		x6, -28(x2)	# 2377
	lw		x29, 0(x2)	# 2377
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	lw		x31, 0(x29)	# 2377
	jalr	x0, x31, 0	# 2377
calc_dirvec_rows.3012.17869:
	lw		x7, 24(x29)	# 2383
	lw		x8, 20(x29)	# 2383
	lw		x9, 16(x29)	# 2383
	lw		x10, 12(x29)	# 2383
	lw		x11, 8(x29)	# 2383
	lw		x12, 4(x29)	# 2383
	ble		x11, x4, ble.32943	# 2383
	jalr	x0, x1, 0	# 2387
ble.32943:
	sw		x29, 0(x2)	# 2384
	sw		x9, -4(x2)	# 2384
	sw		x10, -8(x2)	# 2384
	sw		x12, -12(x2)	# 2384
	sw		x4, -16(x2)	# 2384
	sw		x6, -20(x2)	# 2384
	sw		x5, -24(x2)	# 2384
	sw		x8, -28(x2)	# 2384
	addi	x29, x7, 0
	sw		x1, -32(x2)	# 2384
	addi	x2, x2, -36	# 2384
	lw		x31, 0(x29)	# 2384
	jalr	x1, x31, 0	# 2384
	addi	x2, x2, 36	# 2384
	lw		x1, -32(x2)	# 2384
	lui		x4, %hi(l.26219)	# 2384
	ori		x4, x0, %lo(l.26219)	# 2384
	flw		f2, 0(x4)	# 2384
	fmul	f1, f1, f2	# 2384
	lui		x4, %hi(l.28894)	# 2384
	ori		x4, x0, %lo(l.28894)	# 2384
	flw		f2, 0(x4)	# 2384
	fsub	f1, f1, f2	# 2384
	addi	x4, x0, 4	# 2385
	lw		x5, -24(x2)	# 2385
	lw		x6, -20(x2)	# 2385
	lw		x29, -28(x2)	# 2385
	sw		x1, -32(x2)	# 2385
	addi	x2, x2, -36	# 2385
	lw		x31, 0(x29)	# 2385
	jalr	x1, x31, 0	# 2385
	addi	x2, x2, 36	# 2385
	lw		x1, -32(x2)	# 2385
	lw		x4, -12(x2)	# 2386
	lw		x5, -16(x2)	# 2386
	sub		x4, x5, x4	# 2386
	lw		x5, -8(x2)	# 238
	lw		x6, -24(x2)	# 238
	add		x5, x6, x5	# 238
	lw		x6, -4(x2)	# 239
	ble		x6, x5, ble.32946	# 239
	jal		x0, ble_cont.32945	# 239
ble.32946:
	sub		x5, x5, x6	# 239
ble_cont.32945:
	lw		x6, -20(x2)	# 2386
	addi	x6, x6, 4	# 2386
	lw		x29, 0(x2)	# 2386
	lw		x31, 0(x29)	# 2386
	jalr	x0, x31, 0	# 2386
create_dirvec_elements.3018.17873:
	lw		x6, 16(x29)	# 2402
	lw		x7, 12(x29)	# 2402
	lw		x8, 8(x29)	# 2402
	flw		f1, 4(x29)	# 2402
	ble		x7, x5, ble.32947	# 2402
	jalr	x0, x1, 0	# 2405
ble.32947:
	sw		x29, 0(x2)	# 2396
	sw		x8, -4(x2)	# 2396
	sw		x4, -8(x2)	# 2396
	sw		x5, -12(x2)	# 2396
	sw		x7, -16(x2)	# 2396
	addi	x4, x6, 0
	sw		x1, -20(x2)	# 2396
	addi	x2, x2, -24	# 2396
	jal		x1, min_caml_create_float_array	# 2396
	addi	x2, x2, 24	# 2396
	lw		x1, -20(x2)	# 2396
	addi	x5, x4, 0	# 2396
	lw		x4, -16(x2)	# 2397
	mul		x4, x30, x4	# 2397
	addi	x4, x4, 60000	# 2397
	lw		x4, 0(x4)	# 2397
	sw		x5, -20(x2)	# 2397
	sw		x1, -24(x2)	# 2397
	addi	x2, x2, -28	# 2397
	jal		x1, min_caml_create_array	# 2397
	addi	x2, x2, 28	# 2397
	lw		x1, -24(x2)	# 2397
	addi	x5, x3, 0	# 2398
	addi	x3, x3, 8	# 2398
	sw		x4, 4(x5)	# 2398
	lw		x4, -20(x2)	# 2398
	sw		x4, 0(x5)	# 2398
	addi	x4, x5, 0	# 2398
	lw		x5, -12(x2)	# 2403
	mul		x6, x30, x5	# 2403
	lw		x7, -8(x2)	# 2403
	add		x6, x7, x6	# 2403
	sw		x4, 0(x6)	# 2403
	lw		x4, -4(x2)	# 2404
	sub		x5, x5, x4	# 2404
	lw		x29, 0(x2)	# 2404
	addi	x4, x7, 0
	lw		x31, 0(x29)	# 2404
	jalr	x0, x31, 0	# 2404
create_dirvecs.3021.17876:
	lw		x5, 20(x29)	# 2409
	lw		x6, 16(x29)	# 2409
	lw		x7, 12(x29)	# 2409
	lw		x8, 8(x29)	# 2409
	flw		f1, 4(x29)	# 2409
	ble		x7, x4, ble.32949	# 2409
	jalr	x0, x1, 0	# 2413
ble.32949:
	addi	x9, x0, 120	# 2410
	sw		x29, 0(x2)	# 2396
	sw		x8, -4(x2)	# 2396
	sw		x5, -8(x2)	# 2396
	sw		x4, -12(x2)	# 2396
	sw		x9, -16(x2)	# 2396
	sw		x7, -20(x2)	# 2396
	addi	x4, x6, 0
	sw		x1, -24(x2)	# 2396
	addi	x2, x2, -28	# 2396
	jal		x1, min_caml_create_float_array	# 2396
	addi	x2, x2, 28	# 2396
	lw		x1, -24(x2)	# 2396
	addi	x5, x4, 0	# 2396
	lw		x4, -20(x2)	# 2397
	mul		x4, x30, x4	# 2397
	addi	x4, x4, 60000	# 2397
	lw		x4, 0(x4)	# 2397
	sw		x5, -24(x2)	# 2397
	sw		x1, -28(x2)	# 2397
	addi	x2, x2, -32	# 2397
	jal		x1, min_caml_create_array	# 2397
	addi	x2, x2, 32	# 2397
	lw		x1, -28(x2)	# 2397
	addi	x5, x3, 0	# 2398
	addi	x3, x3, 8	# 2398
	sw		x4, 4(x5)	# 2398
	lw		x4, -24(x2)	# 2398
	sw		x4, 0(x5)	# 2398
	lw		x4, -16(x2)	# 2410
	sw		x1, -28(x2)	# 2410
	addi	x2, x2, -32	# 2410
	jal		x1, min_caml_create_array	# 2410
	addi	x2, x2, 32	# 2410
	lw		x1, -28(x2)	# 2410
	lw		x5, -12(x2)	# 2410
	mul		x6, x30, x5	# 2410
	addi	x6, x6, 60716	# 2410
	sw		x4, 0(x6)	# 2410
	mul		x4, x30, x5	# 2411
	addi	x4, x4, 60716	# 2411
	lw		x4, 0(x4)	# 2411
	addi	x6, x0, 118	# 2411
	lw		x29, -8(x2)	# 2411
	addi	x5, x6, 0
	sw		x1, -28(x2)	# 2411
	addi	x2, x2, -32	# 2411
	lw		x31, 0(x29)	# 2411
	jalr	x1, x31, 0	# 2411
	addi	x2, x2, 32	# 2411
	lw		x1, -28(x2)	# 2411
	lw		x4, -4(x2)	# 2412
	lw		x5, -12(x2)	# 2412
	sub		x4, x5, x4	# 2412
	lw		x29, 0(x2)	# 2412
	lw		x31, 0(x29)	# 2412
	jalr	x0, x31, 0	# 2412
init_dirvec_constants.3023.17878:
	lw		x6, 12(x29)	# 2421
	lw		x7, 8(x29)	# 2421
	lw		x8, 4(x29)	# 2421
	ble		x7, x5, ble.32951	# 2421
	jalr	x0, x1, 0	# 2424
ble.32951:
	mul		x9, x30, x5	# 2422
	add		x9, x4, x9	# 2422
	lw		x9, 0(x9)	# 2422
	mul		x7, x30, x7	# 1301
	addi	x7, x7, 60000	# 1301
	lw		x7, 0(x7)	# 1301
	sub		x7, x7, x8	# 1301
	sw		x4, 0(x2)	# 1301
	sw		x29, -4(x2)	# 1301
	sw		x8, -8(x2)	# 1301
	sw		x5, -12(x2)	# 1301
	addi	x5, x7, 0
	addi	x4, x9, 0
	addi	x29, x6, 0
	sw		x1, -16(x2)	# 1301
	addi	x2, x2, -20	# 1301
	lw		x31, 0(x29)	# 1301
	jalr	x1, x31, 0	# 1301
	addi	x2, x2, 20	# 1301
	lw		x1, -16(x2)	# 1301
	lw		x4, -8(x2)	# 2423
	lw		x5, -12(x2)	# 2423
	sub		x5, x5, x4	# 2423
	lw		x4, 0(x2)	# 2423
	lw		x29, -4(x2)	# 2423
	lw		x31, 0(x29)	# 2423
	jalr	x0, x31, 0	# 2423
init_vecset_constants.3026.17881:
	lw		x5, 12(x29)	# 2428
	lw		x6, 8(x29)	# 2428
	lw		x7, 4(x29)	# 2428
	ble		x6, x4, ble.32953	# 2428
	jalr	x0, x1, 0	# 2431
ble.32953:
	mul		x6, x30, x4	# 2429
	addi	x6, x6, 60716	# 2429
	lw		x6, 0(x6)	# 2429
	addi	x8, x0, 119	# 2429
	sw		x29, 0(x2)	# 2429
	sw		x7, -4(x2)	# 2429
	sw		x4, -8(x2)	# 2429
	addi	x4, x6, 0
	addi	x29, x5, 0
	addi	x5, x8, 0
	sw		x1, -12(x2)	# 2429
	addi	x2, x2, -16	# 2429
	lw		x31, 0(x29)	# 2429
	jalr	x1, x31, 0	# 2429
	addi	x2, x2, 16	# 2429
	lw		x1, -12(x2)	# 2429
	lw		x4, -4(x2)	# 2430
	lw		x5, -8(x2)	# 2430
	sub		x4, x5, x4	# 2430
	lw		x29, 0(x2)	# 2430
	lw		x31, 0(x29)	# 2430
	jalr	x0, x31, 0	# 2430
min_caml_start:
	addi	x2, x2, -4
	addi	x30, x0, 4
	addi	x3, x0, 60000
	lui		x4, %hi(l.26228)
	ori		x4, x0, %lo(l.26228)
	flw		f0, 0(x4)
	lui		x4, %hi(l.26191)
	ori		x4, x0, %lo(l.26191)
	flw		f30, 0(x4)
	lui		x4, %hi(l.26189)
	ori		x4, x0, %lo(l.26189)
	flw		f16, 0(x4)
	lui		x4, %hi(l.26202)
	ori		x4, x0, %lo(l.26202)
	flw		f17, 0(x4)
	lui		x4, %hi(l.26288)
	ori		x4, x0, %lo(l.26288)
	flw		f18, 0(x4)
	lui		x4, %hi(l.27611)
	ori		x4, x0, %lo(l.27611)
	flw		f19, 0(x4)
	lui		x4, %hi(l.27607)
	ori		x4, x0, %lo(l.27607)
	flw		f20, 0(x4)
	lui		x4, %hi(l.27609)
	ori		x4, x0, %lo(l.27609)
	flw		f21, 0(x4)
	lui		x4, %hi(l.27637)
	ori		x4, x0, %lo(l.27637)
	flw		f22, 0(x4)
	lui		x4, %hi(l.26855)
	ori		x4, x0, %lo(l.26855)
	flw		f23, 0(x4)
	lui		x4, %hi(l.26256)
	ori		x4, x0, %lo(l.26256)
	flw		f24, 0(x4)
	lui		x4, %hi(l.27400)
	ori		x4, x0, %lo(l.27400)
	flw		f25, 0(x4)
	lui		x4, %hi(l.27647)
	ori		x4, x0, %lo(l.27647)
	flw		f26, 0(x4)
	lui		x4, %hi(l.27625)
	ori		x4, x0, %lo(l.27625)
	flw		f27, 0(x4)
	lui		x4, %hi(l.27658)
	ori		x4, x0, %lo(l.27658)
	flw		f28, 0(x4)
	lui		x4, %hi(l.27660)
	ori		x4, x0, %lo(l.27660)
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
	lui		x4, %hi(l.28934)	# 25
	ori		x4, x0, %lo(l.28934)	# 25
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
	lui		x4, %hi(l.28938)	# 42
	ori		x4, x0, %lo(l.28938)	# 42
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
	addi	x4, x3, 0	# 132
	addi	x3, x3, 8	# 132
	lui		x5, %hi(int_of_float_rem.2529.17724)	# 132
	ori		x5, x0, %lo(int_of_float_rem.2529.17724)	# 132
	sw		x5, 0(x4)	# 134
	lw		x5, 0(x2)	# 134
	sw		x5, 4(x4)	# 134
	addi	x6, x3, 0	# 134
	addi	x3, x3, 8	# 134
	lui		x7, %hi(int_of_float_four.2532.17727)	# 134
	ori		x7, x0, %lo(int_of_float_four.2532.17727)	# 134
	sw		x7, 0(x6)	# 136
	sw		x4, 4(x6)	# 136
	addi	x4, x3, 0	# 136
	addi	x3, x3, 16	# 136
	lui		x7, %hi(int_of_float.2535.17730)	# 136
	ori		x7, x0, %lo(int_of_float.2535.17730)	# 136
	sw		x7, 0(x4)	# 143
	sw		x6, 12(x4)	# 143
	lw		x6, -4(x2)	# 143
	sw		x6, 8(x4)	# 143
	flw		f1, -8(x2)	# 143
	fsw		f1, 4(x4)	# 143
	addi	x7, x3, 0	# 143
	addi	x3, x3, 8	# 143
	lui		x8, %hi(float_of_int_rem.2537.17732)	# 143
	ori		x8, x0, %lo(float_of_int_rem.2537.17732)	# 143
	sw		x8, 0(x7)	# 145
	sw		x5, 4(x7)	# 145
	addi	x8, x3, 0	# 145
	addi	x3, x3, 8	# 145
	lui		x9, %hi(float_of_int_four.2540.17735)	# 145
	ori		x9, x0, %lo(float_of_int_four.2540.17735)	# 145
	sw		x9, 0(x8)	# 147
	sw		x7, 4(x8)	# 147
	addi	x29, x3, 0	# 147
	addi	x3, x3, 16	# 147
	lui		x7, %hi(float_of_int.2543.17738)	# 147
	ori		x7, x0, %lo(float_of_int.2543.17738)	# 147
	sw		x7, 0(x29)	# 153
	sw		x8, 12(x29)	# 153
	sw		x6, 8(x29)	# 153
	fsw		f1, 4(x29)	# 153
	lui		x7, %hi(l.28953)	# 153
	ori		x7, x0, %lo(l.28953)	# 153
	flw		f2, 0(x7)	# 153
	lui		x7, %hi(l.28955)	# 154
	ori		x7, x0, %lo(l.28955)	# 154
	flw		f3, 0(x7)	# 154
	lui		x7, %hi(l.28957)	# 155
	ori		x7, x0, %lo(l.28957)	# 155
	flw		f4, 0(x7)	# 155
	lui		x7, %hi(l.28959)	# 156
	ori		x7, x0, %lo(l.28959)	# 156
	flw		f5, 0(x7)	# 156
	addi	x7, x3, 0	# 178
	addi	x3, x3, 24	# 178
	lui		x8, %hi(sin.2555.17744)	# 178
	ori		x8, x0, %lo(sin.2555.17744)	# 178
	sw		x8, 0(x7)	# 186
	fsw		f5, 20(x7)	# 186
	fsw		f4, 16(x7)	# 186
	fsw		f3, 12(x7)	# 186
	fsw		f2, 8(x7)	# 186
	fsw		f1, 4(x7)	# 186
	addi	x8, x3, 0	# 186
	addi	x3, x3, 20	# 186
	lui		x9, %hi(cos.2557.17746)	# 186
	ori		x9, x0, %lo(cos.2557.17746)	# 186
	sw		x9, 0(x8)	# 191
	sw		x7, 16(x8)	# 191
	fsw		f5, 12(x8)	# 191
	fsw		f4, 8(x8)	# 191
	fsw		f1, 4(x8)	# 191
	addi	x9, x3, 0	# 191
	addi	x3, x3, 16	# 191
	lui		x10, %hi(atan.2559.17748)	# 191
	ori		x10, x0, %lo(atan.2559.17748)	# 191
	sw		x10, 0(x9)	# 874
	fsw		f5, 12(x9)	# 874
	fsw		f4, 8(x9)	# 874
	fsw		f1, 4(x9)	# 874
	addi	x10, x3, 0	# 874
	addi	x3, x3, 36	# 874
	lui		x11, %hi(read_object.2696.17750)	# 874
	ori		x11, x0, %lo(read_object.2696.17750)	# 874
	sw		x11, 0(x10)	# 890
	sw		x7, 32(x10)	# 890
	sw		x8, 28(x10)	# 890
	lw		x11, -48(x2)	# 890
	sw		x11, 24(x10)	# 890
	lw		x12, -28(x2)	# 890
	sw		x12, 20(x10)	# 890
	lw		x13, -16(x2)	# 890
	sw		x13, 16(x10)	# 890
	sw		x6, 12(x10)	# 890
	sw		x5, 8(x10)	# 890
	fsw		f1, 4(x10)	# 890
	addi	x13, x3, 0	# 890
	addi	x3, x3, 12	# 890
	lui		x14, %hi(read_net_item.2700.17752)	# 890
	ori		x14, x0, %lo(read_net_item.2700.17752)	# 890
	sw		x14, 0(x13)	# 898
	sw		x12, 8(x13)	# 898
	sw		x5, 4(x13)	# 898
	addi	x14, x3, 0	# 898
	addi	x3, x3, 20	# 898
	lui		x15, %hi(read_or_network.2702.17754)	# 898
	ori		x15, x0, %lo(read_or_network.2702.17754)	# 898
	sw		x15, 0(x14)	# 907
	sw		x13, 16(x14)	# 907
	sw		x12, 12(x14)	# 907
	sw		x6, 8(x14)	# 907
	sw		x5, 4(x14)	# 907
	addi	x15, x3, 0	# 907
	addi	x3, x3, 20	# 907
	lui		x16, %hi(read_and_network.2704.17756)	# 907
	ori		x16, x0, %lo(read_and_network.2704.17756)	# 907
	sw		x16, 0(x15)	# 1283
	sw		x13, 16(x15)	# 1283
	sw		x12, 12(x15)	# 1283
	sw		x6, 8(x15)	# 1283
	sw		x5, 4(x15)	# 1283
	addi	x13, x3, 0	# 1283
	addi	x3, x3, 20	# 1283
	lui		x16, %hi(iter_setup_dirvec_constants.2801.17758)	# 1283
	ori		x16, x0, %lo(iter_setup_dirvec_constants.2801.17758)	# 1283
	sw		x16, 0(x13)	# 1308
	sw		x11, 16(x13)	# 1308
	sw		x6, 12(x13)	# 1308
	sw		x5, 8(x13)	# 1308
	fsw		f1, 4(x13)	# 1308
	addi	x16, x3, 0	# 1308
	addi	x3, x3, 16	# 1308
	lui		x17, %hi(setup_startp_constants.2806.17761)	# 1308
	ori		x17, x0, %lo(setup_startp_constants.2806.17761)	# 1308
	sw		x17, 0(x16)	# 1377
	sw		x11, 12(x16)	# 1377
	sw		x6, 8(x16)	# 1377
	sw		x5, 4(x16)	# 1377
	addi	x17, x3, 0	# 1377
	addi	x3, x3, 28	# 1377
	lui		x18, %hi(check_all_inside.2831.17764)	# 1377
	ori		x18, x0, %lo(check_all_inside.2831.17764)	# 1377
	sw		x18, 0(x17)	# 1397
	sw		x11, 24(x17)	# 1397
	sw		x12, 20(x17)	# 1397
	lw		x18, -20(x2)	# 1397
	sw		x18, 16(x17)	# 1397
	sw		x6, 12(x17)	# 1397
	sw		x5, 8(x17)	# 1397
	fsw		f1, 4(x17)	# 1397
	addi	x19, x3, 0	# 1397
	addi	x3, x3, 36	# 1397
	lui		x20, %hi(shadow_check_and_group.2837.17770)	# 1397
	ori		x20, x0, %lo(shadow_check_and_group.2837.17770)	# 1397
	sw		x20, 0(x19)	# 1427
	sw		x17, 32(x19)	# 1427
	lw		x20, -64(x2)	# 1427
	sw		x20, 28(x19)	# 1427
	sw		x11, 24(x19)	# 1427
	sw		x12, 20(x19)	# 1427
	sw		x18, 16(x19)	# 1427
	sw		x6, 12(x19)	# 1427
	sw		x5, 8(x19)	# 1427
	fsw		f1, 4(x19)	# 1427
	addi	x21, x3, 0	# 1427
	addi	x3, x3, 20	# 1427
	lui		x22, %hi(shadow_check_one_or_group.2840.17773)	# 1427
	ori		x22, x0, %lo(shadow_check_one_or_group.2840.17773)	# 1427
	sw		x22, 0(x21)	# 1442
	sw		x19, 16(x21)	# 1442
	sw		x12, 12(x21)	# 1442
	sw		x6, 8(x21)	# 1442
	sw		x5, 4(x21)	# 1442
	addi	x19, x3, 0	# 1442
	addi	x3, x3, 36	# 1442
	lui		x22, %hi(shadow_check_one_or_matrix.2843.17776)	# 1442
	ori		x22, x0, %lo(shadow_check_one_or_matrix.2843.17776)	# 1442
	sw		x22, 0(x19)	# 1478
	sw		x21, 32(x19)	# 1478
	sw		x20, 28(x19)	# 1478
	sw		x11, 24(x19)	# 1478
	sw		x12, 20(x19)	# 1478
	sw		x18, 16(x19)	# 1478
	sw		x6, 12(x19)	# 1478
	sw		x5, 8(x19)	# 1478
	fsw		f1, 4(x19)	# 1478
	addi	x21, x3, 0	# 1478
	addi	x3, x3, 32	# 1478
	lui		x22, %hi(solve_each_element.2846.17779)	# 1478
	ori		x22, x0, %lo(solve_each_element.2846.17779)	# 1478
	sw		x22, 0(x21)	# 1519
	sw		x17, 28(x21)	# 1519
	sw		x11, 24(x21)	# 1519
	sw		x12, 20(x21)	# 1519
	sw		x18, 16(x21)	# 1519
	sw		x6, 12(x21)	# 1519
	sw		x5, 8(x21)	# 1519
	fsw		f1, 4(x21)	# 1519
	addi	x22, x3, 0	# 1519
	addi	x3, x3, 20	# 1519
	lui		x23, %hi(solve_one_or_network.2850.17783)	# 1519
	ori		x23, x0, %lo(solve_one_or_network.2850.17783)	# 1519
	sw		x23, 0(x22)	# 1529
	sw		x21, 16(x22)	# 1529
	sw		x12, 12(x22)	# 1529
	sw		x6, 8(x22)	# 1529
	sw		x5, 4(x22)	# 1529
	addi	x21, x3, 0	# 1529
	addi	x3, x3, 32	# 1529
	lui		x23, %hi(trace_or_matrix.2854.17787)	# 1529
	ori		x23, x0, %lo(trace_or_matrix.2854.17787)	# 1529
	sw		x23, 0(x21)	# 1571
	sw		x22, 28(x21)	# 1571
	sw		x11, 24(x21)	# 1571
	sw		x12, 20(x21)	# 1571
	sw		x18, 16(x21)	# 1571
	sw		x6, 12(x21)	# 1571
	sw		x5, 8(x21)	# 1571
	fsw		f1, 4(x21)	# 1571
	addi	x22, x3, 0	# 1571
	addi	x3, x3, 36	# 1571
	lui		x23, %hi(solve_each_element_fast.2860.17791)	# 1571
	ori		x23, x0, %lo(solve_each_element_fast.2860.17791)	# 1571
	sw		x23, 0(x22)	# 1612
	sw		x17, 32(x22)	# 1612
	sw		x20, 28(x22)	# 1612
	sw		x11, 24(x22)	# 1612
	sw		x12, 20(x22)	# 1612
	sw		x18, 16(x22)	# 1612
	sw		x6, 12(x22)	# 1612
	sw		x5, 8(x22)	# 1612
	fsw		f1, 4(x22)	# 1612
	addi	x17, x3, 0	# 1612
	addi	x3, x3, 20	# 1612
	lui		x23, %hi(solve_one_or_network_fast.2864.17795)	# 1612
	ori		x23, x0, %lo(solve_one_or_network_fast.2864.17795)	# 1612
	sw		x23, 0(x17)	# 1622
	sw		x22, 16(x17)	# 1622
	sw		x12, 12(x17)	# 1622
	sw		x6, 8(x17)	# 1622
	sw		x5, 4(x17)	# 1622
	addi	x22, x3, 0	# 1622
	addi	x3, x3, 36	# 1622
	lui		x23, %hi(trace_or_matrix_fast.2868.17799)	# 1622
	ori		x23, x0, %lo(trace_or_matrix_fast.2868.17799)	# 1622
	sw		x23, 0(x22)	# 1816
	sw		x17, 32(x22)	# 1816
	sw		x20, 28(x22)	# 1816
	sw		x11, 24(x22)	# 1816
	sw		x12, 20(x22)	# 1816
	sw		x18, 16(x22)	# 1816
	sw		x6, 12(x22)	# 1816
	sw		x5, 8(x22)	# 1816
	fsw		f1, 4(x22)	# 1816
	addi	x17, x3, 0	# 1816
	addi	x3, x3, 32	# 1816
	lui		x23, %hi(trace_reflections.2890.17803)	# 1816
	ori		x23, x0, %lo(trace_reflections.2890.17803)	# 1816
	sw		x23, 0(x17)	# 1845
	sw		x22, 28(x17)	# 1845
	sw		x19, 24(x17)	# 1845
	sw		x11, 20(x17)	# 1845
	sw		x6, 16(x17)	# 1845
	sw		x5, 12(x17)	# 1845
	flw		f2, -44(x2)	# 1845
	fsw		f2, 8(x17)	# 1845
	fsw		f1, 4(x17)	# 1845
	addi	x23, x3, 0	# 1845
	addi	x3, x3, 72	# 1845
	lui		x24, %hi(trace_ray.2895.17808)	# 1845
	ori		x24, x0, %lo(trace_ray.2895.17808)	# 1845
	sw		x24, 0(x23)	# 1957
	sw		x17, 68(x23)	# 1957
	sw		x21, 64(x23)	# 1957
	sw		x7, 60(x23)	# 1957
	sw		x19, 56(x23)	# 1957
	sw		x16, 52(x23)	# 1957
	sw		x4, 48(x23)	# 1957
	sw		x29, 44(x23)	# 1957
	sw		x8, 40(x23)	# 1957
	sw		x9, 36(x23)	# 1957
	sw		x11, 32(x23)	# 1957
	sw		x12, 28(x23)	# 1957
	sw		x18, 24(x23)	# 1957
	sw		x6, 20(x23)	# 1957
	sw		x5, 16(x23)	# 1957
	fsw		f2, 12(x23)	# 1957
	flw		f3, -24(x2)	# 1957
	fsw		f3, 8(x23)	# 1957
	fsw		f1, 4(x23)	# 1957
	addi	x12, x3, 0	# 1957
	addi	x3, x3, 60	# 1957
	lui		x17, %hi(iter_trace_diffuse_rays.2904.17814)	# 1957
	ori		x17, x0, %lo(iter_trace_diffuse_rays.2904.17814)	# 1957
	sw		x17, 0(x12)	# 2048
	sw		x22, 56(x12)	# 2048
	sw		x7, 52(x12)	# 2048
	sw		x19, 48(x12)	# 2048
	sw		x4, 44(x12)	# 2048
	sw		x29, 40(x12)	# 2048
	sw		x8, 36(x12)	# 2048
	sw		x9, 32(x12)	# 2048
	sw		x11, 28(x12)	# 2048
	sw		x18, 24(x12)	# 2048
	sw		x6, 20(x12)	# 2048
	sw		x5, 16(x12)	# 2048
	fsw		f2, 12(x12)	# 2048
	fsw		f3, 8(x12)	# 2048
	fsw		f1, 4(x12)	# 2048
	addi	x17, x3, 0	# 2048
	addi	x3, x3, 28	# 2048
	lui		x19, %hi(do_without_neighbors.2926.17819)	# 2048
	ori		x19, x0, %lo(do_without_neighbors.2926.17819)	# 2048
	sw		x19, 0(x17)	# 2100
	sw		x16, 24(x17)	# 2100
	sw		x12, 20(x17)	# 2100
	sw		x11, 16(x17)	# 2100
	sw		x18, 12(x17)	# 2100
	sw		x6, 8(x17)	# 2100
	sw		x5, 4(x17)	# 2100
	addi	x19, x3, 0	# 2100
	addi	x3, x3, 20	# 2100
	lui		x21, %hi(try_exploit_neighbors.2942.17822)	# 2100
	ori		x21, x0, %lo(try_exploit_neighbors.2942.17822)	# 2100
	sw		x21, 0(x19)	# 2176
	sw		x17, 16(x19)	# 2176
	sw		x11, 12(x19)	# 2176
	sw		x6, 8(x19)	# 2176
	sw		x5, 4(x19)	# 2176
	addi	x21, x3, 0	# 2176
	addi	x3, x3, 24	# 2176
	lui		x22, %hi(pretrace_diffuse_rays.2957.17829)	# 2176
	ori		x22, x0, %lo(pretrace_diffuse_rays.2957.17829)	# 2176
	sw		x22, 0(x21)	# 2206
	sw		x16, 20(x21)	# 2206
	sw		x12, 16(x21)	# 2206
	sw		x11, 12(x21)	# 2206
	sw		x6, 8(x21)	# 2206
	sw		x5, 4(x21)	# 2206
	addi	x12, x3, 0	# 2206
	addi	x3, x3, 36	# 2206
	lui		x16, %hi(pretrace_pixels.2960.17832)	# 2206
	ori		x16, x0, %lo(pretrace_pixels.2960.17832)	# 2206
	sw		x16, 0(x12)	# 2247
	sw		x23, 32(x12)	# 2247
	sw		x21, 28(x12)	# 2247
	sw		x29, 24(x12)	# 2247
	sw		x20, 20(x12)	# 2247
	sw		x11, 16(x12)	# 2247
	sw		x6, 12(x12)	# 2247
	sw		x5, 8(x12)	# 2247
	fsw		f1, 4(x12)	# 2247
	addi	x16, x3, 0	# 2247
	addi	x3, x3, 32	# 2247
	lui		x21, %hi(scan_pixel.2971.17839)	# 2247
	ori		x21, x0, %lo(scan_pixel.2971.17839)	# 2247
	sw		x21, 0(x16)	# 2267
	sw		x19, 28(x16)	# 2267
	sw		x4, 24(x16)	# 2267
	sw		x17, 20(x16)	# 2267
	sw		x11, 16(x16)	# 2267
	sw		x18, 12(x16)	# 2267
	sw		x6, 8(x16)	# 2267
	sw		x5, 4(x16)	# 2267
	addi	x4, x3, 0	# 2267
	addi	x3, x3, 32	# 2267
	lui		x17, %hi(scan_line.2978.17846)	# 2267
	ori		x17, x0, %lo(scan_line.2978.17846)	# 2267
	sw		x17, 0(x4)	# 2310
	sw		x16, 28(x4)	# 2310
	sw		x12, 24(x4)	# 2310
	sw		x29, 20(x4)	# 2310
	sw		x20, 16(x4)	# 2310
	sw		x11, 12(x4)	# 2310
	sw		x6, 8(x4)	# 2310
	sw		x5, 4(x4)	# 2310
	addi	x16, x3, 0	# 2310
	addi	x3, x3, 28	# 2310
	lui		x17, %hi(init_line_elements.2989.17853)	# 2310
	ori		x17, x0, %lo(init_line_elements.2989.17853)	# 2310
	sw		x17, 0(x16)	# 2347
	sw		x20, 24(x16)	# 2347
	sw		x11, 20(x16)	# 2347
	sw		x18, 16(x16)	# 2347
	sw		x6, 12(x16)	# 2347
	sw		x5, 8(x16)	# 2347
	fsw		f1, 4(x16)	# 2347
	addi	x17, x3, 0	# 2347
	addi	x3, x3, 32	# 2347
	lui		x19, %hi(calc_dirvec.2999.17856)	# 2347
	ori		x19, x0, %lo(calc_dirvec.2999.17856)	# 2347
	sw		x19, 0(x17)	# 2368
	sw		x7, 28(x17)	# 2368
	sw		x8, 24(x17)	# 2368
	sw		x9, 20(x17)	# 2368
	sw		x20, 16(x17)	# 2368
	sw		x11, 12(x17)	# 2368
	sw		x6, 8(x17)	# 2368
	sw		x5, 4(x17)	# 2368
	addi	x9, x3, 0	# 2368
	addi	x3, x3, 32	# 2368
	lui		x19, %hi(calc_dirvecs.3007.17864)	# 2368
	ori		x19, x0, %lo(calc_dirvecs.3007.17864)	# 2368
	sw		x19, 0(x9)	# 2382
	sw		x29, 28(x9)	# 2382
	sw		x17, 24(x9)	# 2382
	sw		x20, 20(x9)	# 2382
	sw		x11, 16(x9)	# 2382
	sw		x6, 12(x9)	# 2382
	sw		x5, 8(x9)	# 2382
	fsw		f1, 4(x9)	# 2382
	addi	x17, x3, 0	# 2382
	addi	x3, x3, 28	# 2382
	lui		x19, %hi(calc_dirvec_rows.3012.17869)	# 2382
	ori		x19, x0, %lo(calc_dirvec_rows.3012.17869)	# 2382
	sw		x19, 0(x17)	# 2401
	sw		x29, 24(x17)	# 2401
	sw		x9, 20(x17)	# 2401
	sw		x20, 16(x17)	# 2401
	sw		x11, 12(x17)	# 2401
	sw		x6, 8(x17)	# 2401
	sw		x5, 4(x17)	# 2401
	addi	x9, x3, 0	# 2401
	addi	x3, x3, 20	# 2401
	lui		x19, %hi(create_dirvec_elements.3018.17873)	# 2401
	ori		x19, x0, %lo(create_dirvec_elements.3018.17873)	# 2401
	sw		x19, 0(x9)	# 2408
	sw		x18, 16(x9)	# 2408
	sw		x6, 12(x9)	# 2408
	sw		x5, 8(x9)	# 2408
	fsw		f1, 4(x9)	# 2408
	addi	x19, x3, 0	# 2408
	addi	x3, x3, 24	# 2408
	lui		x21, %hi(create_dirvecs.3021.17876)	# 2408
	ori		x21, x0, %lo(create_dirvecs.3021.17876)	# 2408
	sw		x21, 0(x19)	# 2420
	sw		x9, 20(x19)	# 2420
	sw		x18, 16(x19)	# 2420
	sw		x6, 12(x19)	# 2420
	sw		x5, 8(x19)	# 2420
	fsw		f1, 4(x19)	# 2420
	addi	x9, x3, 0	# 2420
	addi	x3, x3, 16	# 2420
	lui		x21, %hi(init_dirvec_constants.3023.17878)	# 2420
	ori		x21, x0, %lo(init_dirvec_constants.3023.17878)	# 2420
	sw		x21, 0(x9)	# 2427
	sw		x13, 12(x9)	# 2427
	sw		x6, 8(x9)	# 2427
	sw		x5, 4(x9)	# 2427
	addi	x21, x3, 0	# 2427
	addi	x3, x3, 16	# 2427
	lui		x22, %hi(init_vecset_constants.3026.17881)	# 2427
	ori		x22, x0, %lo(init_vecset_constants.3026.17881)	# 2427
	sw		x22, 0(x21)	# 2526
	sw		x9, 12(x21)	# 2526
	sw		x6, 8(x21)	# 2526
	sw		x5, 4(x21)	# 2526
	addi	x9, x0, 256	# 2526
	mul		x22, x30, x6	# 2506
	addi	x22, x22, 60616	# 2506
	sw		x9, 0(x22)	# 2506
	mul		x22, x30, x5	# 2507
	addi	x22, x22, 60616	# 2507
	sw		x9, 0(x22)	# 2507
	addi	x22, x0, 128	# 2508
	mul		x23, x30, x6	# 2508
	addi	x23, x23, 60624	# 2508
	sw		x22, 0(x23)	# 2508
	mul		x23, x30, x5	# 2509
	addi	x23, x23, 60624	# 2509
	sw		x22, 0(x23)	# 2509
	lui		x22, %hi(l.28969)	# 2510
	ori		x22, x0, %lo(l.28969)	# 2510
	flw		f2, 0(x22)	# 2510
	sw		x4, -92(x2)	# 2510
	sw		x12, -96(x2)	# 2510
	sw		x29, -100(x2)	# 2510
	sw		x13, -104(x2)	# 2510
	sw		x21, -108(x2)	# 2510
	sw		x17, -112(x2)	# 2510
	sw		x19, -116(x2)	# 2510
	sw		x14, -120(x2)	# 2510
	sw		x15, -124(x2)	# 2510
	sw		x10, -128(x2)	# 2510
	sw		x7, -132(x2)	# 2510
	sw		x8, -136(x2)	# 2510
	sw		x16, -140(x2)	# 2510
	fsw		f2, -144(x2)	# 2510
	addi	x4, x9, 0
	sw		x1, -148(x2)	# 2510
	addi	x2, x2, -152	# 2510
	lw		x31, 0(x29)	# 2510
	jalr	x1, x31, 0	# 2510
	addi	x2, x2, 152	# 2510
	lw		x1, -148(x2)	# 2510
	flw		f2, -144(x2)	# 2510
	fdiv	f1, f2, f1	# 2510
	lw		x4, -4(x2)	# 2510
	mul		x5, x30, x4	# 2510
	addi	x5, x5, 60632	# 2510
	fsw		f1, 0(x5)	# 2510
	mul		x5, x30, x4	# 2320
	addi	x5, x5, 60616	# 2320
	lw		x5, 0(x5)	# 2320
	flw		f1, -8(x2)	# 2298
	lw		x6, -20(x2)	# 2298
	sw		x5, -148(x2)	# 2298
	addi	x4, x6, 0
	sw		x1, -152(x2)	# 2298
	addi	x2, x2, -156	# 2298
	jal		x1, min_caml_create_float_array	# 2298
	addi	x2, x2, 156	# 2298
	lw		x1, -152(x2)	# 2298
	flw		f1, -8(x2)	# 2286
	lw		x5, -20(x2)	# 2286
	sw		x4, -152(x2)	# 2286
	addi	x4, x5, 0
	sw		x1, -156(x2)	# 2286
	addi	x2, x2, -160	# 2286
	jal		x1, min_caml_create_float_array	# 2286
	addi	x2, x2, 160	# 2286
	lw		x1, -156(x2)	# 2286
	addi	x5, x4, 0	# 2286
	lw		x4, -64(x2)	# 2287
	sw		x1, -156(x2)	# 2287
	addi	x2, x2, -160	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 160	# 2287
	lw		x1, -156(x2)	# 2287
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -156(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -160(x2)	# 2288
	addi	x2, x2, -164	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 164	# 2288
	lw		x1, -160(x2)	# 2288
	lw		x5, 0(x2)	# 2288
	mul		x6, x30, x5	# 2288
	lw		x7, -156(x2)	# 2288
	add		x6, x7, x6	# 2288
	sw		x4, 0(x6)	# 2288
	flw		f1, -8(x2)	# 2289
	lw		x4, -20(x2)	# 2289
	sw		x1, -160(x2)	# 2289
	addi	x2, x2, -164	# 2289
	jal		x1, min_caml_create_float_array	# 2289
	addi	x2, x2, 164	# 2289
	lw		x1, -160(x2)	# 2289
	lw		x5, -48(x2)	# 2289
	mul		x6, x30, x5	# 2289
	lw		x7, -156(x2)	# 2289
	add		x6, x7, x6	# 2289
	sw		x4, 0(x6)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x4, -20(x2)	# 2290
	sw		x1, -160(x2)	# 2290
	addi	x2, x2, -164	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 164	# 2290
	lw		x1, -160(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -156(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	addi	x4, x0, 4	# 2291
	flw		f1, -8(x2)	# 2291
	sw		x4, -160(x2)	# 2291
	addi	x4, x5, 0
	sw		x1, -164(x2)	# 2291
	addi	x2, x2, -168	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 168	# 2291
	lw		x1, -164(x2)	# 2291
	lw		x5, -160(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -156(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	lw		x4, -64(x2)	# 2300
	lw		x6, -4(x2)	# 2300
	addi	x5, x6, 0
	sw		x1, -164(x2)	# 2300
	addi	x2, x2, -168	# 2300
	jal		x1, min_caml_create_array	# 2300
	addi	x2, x2, 168	# 2300
	lw		x1, -164(x2)	# 2300
	lw		x5, -64(x2)	# 2301
	lw		x6, -4(x2)	# 2301
	sw		x4, -164(x2)	# 2301
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -168(x2)	# 2301
	addi	x2, x2, -172	# 2301
	jal		x1, min_caml_create_array	# 2301
	addi	x2, x2, 172	# 2301
	lw		x1, -168(x2)	# 2301
	flw		f1, -8(x2)	# 2286
	lw		x5, -20(x2)	# 2286
	sw		x4, -168(x2)	# 2286
	addi	x4, x5, 0
	sw		x1, -172(x2)	# 2286
	addi	x2, x2, -176	# 2286
	jal		x1, min_caml_create_float_array	# 2286
	addi	x2, x2, 176	# 2286
	lw		x1, -172(x2)	# 2286
	addi	x5, x4, 0	# 2286
	lw		x4, -64(x2)	# 2287
	sw		x1, -172(x2)	# 2287
	addi	x2, x2, -176	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 176	# 2287
	lw		x1, -172(x2)	# 2287
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -172(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -176(x2)	# 2288
	addi	x2, x2, -180	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 180	# 2288
	lw		x1, -176(x2)	# 2288
	lw		x5, 0(x2)	# 2288
	mul		x6, x30, x5	# 2288
	lw		x7, -172(x2)	# 2288
	add		x6, x7, x6	# 2288
	sw		x4, 0(x6)	# 2288
	flw		f1, -8(x2)	# 2289
	lw		x4, -20(x2)	# 2289
	sw		x1, -176(x2)	# 2289
	addi	x2, x2, -180	# 2289
	jal		x1, min_caml_create_float_array	# 2289
	addi	x2, x2, 180	# 2289
	lw		x1, -176(x2)	# 2289
	lw		x5, -48(x2)	# 2289
	mul		x6, x30, x5	# 2289
	lw		x7, -172(x2)	# 2289
	add		x6, x7, x6	# 2289
	sw		x4, 0(x6)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x4, -20(x2)	# 2290
	sw		x1, -176(x2)	# 2290
	addi	x2, x2, -180	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 180	# 2290
	lw		x1, -176(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -172(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	addi	x4, x5, 0
	sw		x1, -176(x2)	# 2291
	addi	x2, x2, -180	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 180	# 2291
	lw		x1, -176(x2)	# 2291
	lw		x5, -160(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -172(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	flw		f1, -8(x2)	# 2286
	lw		x4, -20(x2)	# 2286
	sw		x1, -176(x2)	# 2286
	addi	x2, x2, -180	# 2286
	jal		x1, min_caml_create_float_array	# 2286
	addi	x2, x2, 180	# 2286
	lw		x1, -176(x2)	# 2286
	addi	x5, x4, 0	# 2286
	lw		x4, -64(x2)	# 2287
	sw		x1, -176(x2)	# 2287
	addi	x2, x2, -180	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 180	# 2287
	lw		x1, -176(x2)	# 2287
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -176(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -180(x2)	# 2288
	addi	x2, x2, -184	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 184	# 2288
	lw		x1, -180(x2)	# 2288
	lw		x5, 0(x2)	# 2288
	mul		x6, x30, x5	# 2288
	lw		x7, -176(x2)	# 2288
	add		x6, x7, x6	# 2288
	sw		x4, 0(x6)	# 2288
	flw		f1, -8(x2)	# 2289
	lw		x4, -20(x2)	# 2289
	sw		x1, -180(x2)	# 2289
	addi	x2, x2, -184	# 2289
	jal		x1, min_caml_create_float_array	# 2289
	addi	x2, x2, 184	# 2289
	lw		x1, -180(x2)	# 2289
	lw		x5, -48(x2)	# 2289
	mul		x6, x30, x5	# 2289
	lw		x7, -176(x2)	# 2289
	add		x6, x7, x6	# 2289
	sw		x4, 0(x6)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x4, -20(x2)	# 2290
	sw		x1, -180(x2)	# 2290
	addi	x2, x2, -184	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 184	# 2290
	lw		x1, -180(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -176(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	addi	x4, x5, 0
	sw		x1, -180(x2)	# 2291
	addi	x2, x2, -184	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 184	# 2291
	lw		x1, -180(x2)	# 2291
	lw		x5, -160(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -176(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	lw		x4, 0(x2)	# 2304
	lw		x6, -4(x2)	# 2304
	addi	x5, x6, 0
	sw		x1, -180(x2)	# 2304
	addi	x2, x2, -184	# 2304
	jal		x1, min_caml_create_array	# 2304
	addi	x2, x2, 184	# 2304
	lw		x1, -180(x2)	# 2304
	flw		f1, -8(x2)	# 2286
	lw		x5, -20(x2)	# 2286
	sw		x4, -180(x2)	# 2286
	addi	x4, x5, 0
	sw		x1, -184(x2)	# 2286
	addi	x2, x2, -188	# 2286
	jal		x1, min_caml_create_float_array	# 2286
	addi	x2, x2, 188	# 2286
	lw		x1, -184(x2)	# 2286
	addi	x5, x4, 0	# 2286
	lw		x4, -64(x2)	# 2287
	sw		x1, -184(x2)	# 2287
	addi	x2, x2, -188	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 188	# 2287
	lw		x1, -184(x2)	# 2287
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -184(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -188(x2)	# 2288
	addi	x2, x2, -192	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 192	# 2288
	lw		x1, -188(x2)	# 2288
	lw		x5, 0(x2)	# 2288
	mul		x6, x30, x5	# 2288
	lw		x7, -184(x2)	# 2288
	add		x6, x7, x6	# 2288
	sw		x4, 0(x6)	# 2288
	flw		f1, -8(x2)	# 2289
	lw		x4, -20(x2)	# 2289
	sw		x1, -188(x2)	# 2289
	addi	x2, x2, -192	# 2289
	jal		x1, min_caml_create_float_array	# 2289
	addi	x2, x2, 192	# 2289
	lw		x1, -188(x2)	# 2289
	lw		x5, -48(x2)	# 2289
	mul		x6, x30, x5	# 2289
	lw		x7, -184(x2)	# 2289
	add		x6, x7, x6	# 2289
	sw		x4, 0(x6)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x4, -20(x2)	# 2290
	sw		x1, -188(x2)	# 2290
	addi	x2, x2, -192	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 192	# 2290
	lw		x1, -188(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -184(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	addi	x4, x5, 0
	sw		x1, -188(x2)	# 2291
	addi	x2, x2, -192	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 192	# 2291
	lw		x1, -188(x2)	# 2291
	lw		x5, -160(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -184(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	addi	x4, x3, 0	# 2306
	addi	x3, x3, 32	# 2306
	sw		x7, 28(x4)	# 2306
	lw		x6, -180(x2)	# 2306
	sw		x6, 24(x4)	# 2306
	lw		x6, -176(x2)	# 2306
	sw		x6, 20(x4)	# 2306
	lw		x6, -172(x2)	# 2306
	sw		x6, 16(x4)	# 2306
	lw		x6, -168(x2)	# 2306
	sw		x6, 12(x4)	# 2306
	lw		x6, -164(x2)	# 2306
	sw		x6, 8(x4)	# 2306
	lw		x6, -156(x2)	# 2306
	sw		x6, 4(x4)	# 2306
	lw		x6, -152(x2)	# 2306
	sw		x6, 0(x4)	# 2306
	lw		x6, -148(x2)	# 2320
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -188(x2)	# 2320
	addi	x2, x2, -192	# 2320
	jal		x1, min_caml_create_array	# 2320
	addi	x2, x2, 192	# 2320
	lw		x1, -188(x2)	# 2320
	lw		x5, -4(x2)	# 2321
	mul		x6, x30, x5	# 2321
	addi	x6, x6, 60616	# 2321
	lw		x6, 0(x6)	# 2321
	lw		x7, -48(x2)	# 2321
	sub		x6, x6, x7	# 2321
	lw		x29, -140(x2)	# 2321
	addi	x5, x6, 0
	sw		x1, -188(x2)	# 2321
	addi	x2, x2, -192	# 2321
	lw		x31, 0(x29)	# 2321
	jalr	x1, x31, 0	# 2321
	addi	x2, x2, 192	# 2321
	lw		x1, -188(x2)	# 2321
	lw		x5, -4(x2)	# 2320
	mul		x6, x30, x5	# 2320
	addi	x6, x6, 60616	# 2320
	lw		x6, 0(x6)	# 2320
	flw		f1, -8(x2)	# 2298
	lw		x7, -20(x2)	# 2298
	sw		x4, -188(x2)	# 2298
	sw		x6, -192(x2)	# 2298
	addi	x4, x7, 0
	sw		x1, -196(x2)	# 2298
	addi	x2, x2, -200	# 2298
	jal		x1, min_caml_create_float_array	# 2298
	addi	x2, x2, 200	# 2298
	lw		x1, -196(x2)	# 2298
	flw		f1, -8(x2)	# 2286
	lw		x5, -20(x2)	# 2286
	sw		x4, -196(x2)	# 2286
	addi	x4, x5, 0
	sw		x1, -200(x2)	# 2286
	addi	x2, x2, -204	# 2286
	jal		x1, min_caml_create_float_array	# 2286
	addi	x2, x2, 204	# 2286
	lw		x1, -200(x2)	# 2286
	addi	x5, x4, 0	# 2286
	lw		x4, -64(x2)	# 2287
	sw		x1, -200(x2)	# 2287
	addi	x2, x2, -204	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 204	# 2287
	lw		x1, -200(x2)	# 2287
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -200(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -204(x2)	# 2288
	addi	x2, x2, -208	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 208	# 2288
	lw		x1, -204(x2)	# 2288
	lw		x5, 0(x2)	# 2288
	mul		x6, x30, x5	# 2288
	lw		x7, -200(x2)	# 2288
	add		x6, x7, x6	# 2288
	sw		x4, 0(x6)	# 2288
	flw		f1, -8(x2)	# 2289
	lw		x4, -20(x2)	# 2289
	sw		x1, -204(x2)	# 2289
	addi	x2, x2, -208	# 2289
	jal		x1, min_caml_create_float_array	# 2289
	addi	x2, x2, 208	# 2289
	lw		x1, -204(x2)	# 2289
	lw		x5, -48(x2)	# 2289
	mul		x6, x30, x5	# 2289
	lw		x7, -200(x2)	# 2289
	add		x6, x7, x6	# 2289
	sw		x4, 0(x6)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x4, -20(x2)	# 2290
	sw		x1, -204(x2)	# 2290
	addi	x2, x2, -208	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 208	# 2290
	lw		x1, -204(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -200(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	addi	x4, x5, 0
	sw		x1, -204(x2)	# 2291
	addi	x2, x2, -208	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 208	# 2291
	lw		x1, -204(x2)	# 2291
	lw		x5, -160(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -200(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	lw		x4, -64(x2)	# 2300
	lw		x6, -4(x2)	# 2300
	addi	x5, x6, 0
	sw		x1, -204(x2)	# 2300
	addi	x2, x2, -208	# 2300
	jal		x1, min_caml_create_array	# 2300
	addi	x2, x2, 208	# 2300
	lw		x1, -204(x2)	# 2300
	lw		x5, -64(x2)	# 2301
	lw		x6, -4(x2)	# 2301
	sw		x4, -204(x2)	# 2301
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -208(x2)	# 2301
	addi	x2, x2, -212	# 2301
	jal		x1, min_caml_create_array	# 2301
	addi	x2, x2, 212	# 2301
	lw		x1, -208(x2)	# 2301
	flw		f1, -8(x2)	# 2286
	lw		x5, -20(x2)	# 2286
	sw		x4, -208(x2)	# 2286
	addi	x4, x5, 0
	sw		x1, -212(x2)	# 2286
	addi	x2, x2, -216	# 2286
	jal		x1, min_caml_create_float_array	# 2286
	addi	x2, x2, 216	# 2286
	lw		x1, -212(x2)	# 2286
	addi	x5, x4, 0	# 2286
	lw		x4, -64(x2)	# 2287
	sw		x1, -212(x2)	# 2287
	addi	x2, x2, -216	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 216	# 2287
	lw		x1, -212(x2)	# 2287
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -212(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -216(x2)	# 2288
	addi	x2, x2, -220	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 220	# 2288
	lw		x1, -216(x2)	# 2288
	lw		x5, 0(x2)	# 2288
	mul		x6, x30, x5	# 2288
	lw		x7, -212(x2)	# 2288
	add		x6, x7, x6	# 2288
	sw		x4, 0(x6)	# 2288
	flw		f1, -8(x2)	# 2289
	lw		x4, -20(x2)	# 2289
	sw		x1, -216(x2)	# 2289
	addi	x2, x2, -220	# 2289
	jal		x1, min_caml_create_float_array	# 2289
	addi	x2, x2, 220	# 2289
	lw		x1, -216(x2)	# 2289
	lw		x5, -48(x2)	# 2289
	mul		x6, x30, x5	# 2289
	lw		x7, -212(x2)	# 2289
	add		x6, x7, x6	# 2289
	sw		x4, 0(x6)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x4, -20(x2)	# 2290
	sw		x1, -216(x2)	# 2290
	addi	x2, x2, -220	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 220	# 2290
	lw		x1, -216(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -212(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	addi	x4, x5, 0
	sw		x1, -216(x2)	# 2291
	addi	x2, x2, -220	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 220	# 2291
	lw		x1, -216(x2)	# 2291
	lw		x5, -160(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -212(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	flw		f1, -8(x2)	# 2286
	lw		x4, -20(x2)	# 2286
	sw		x1, -216(x2)	# 2286
	addi	x2, x2, -220	# 2286
	jal		x1, min_caml_create_float_array	# 2286
	addi	x2, x2, 220	# 2286
	lw		x1, -216(x2)	# 2286
	addi	x5, x4, 0	# 2286
	lw		x4, -64(x2)	# 2287
	sw		x1, -216(x2)	# 2287
	addi	x2, x2, -220	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 220	# 2287
	lw		x1, -216(x2)	# 2287
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -216(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -220(x2)	# 2288
	addi	x2, x2, -224	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 224	# 2288
	lw		x1, -220(x2)	# 2288
	lw		x5, 0(x2)	# 2288
	mul		x6, x30, x5	# 2288
	lw		x7, -216(x2)	# 2288
	add		x6, x7, x6	# 2288
	sw		x4, 0(x6)	# 2288
	flw		f1, -8(x2)	# 2289
	lw		x4, -20(x2)	# 2289
	sw		x1, -220(x2)	# 2289
	addi	x2, x2, -224	# 2289
	jal		x1, min_caml_create_float_array	# 2289
	addi	x2, x2, 224	# 2289
	lw		x1, -220(x2)	# 2289
	lw		x5, -48(x2)	# 2289
	mul		x6, x30, x5	# 2289
	lw		x7, -216(x2)	# 2289
	add		x6, x7, x6	# 2289
	sw		x4, 0(x6)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x4, -20(x2)	# 2290
	sw		x1, -220(x2)	# 2290
	addi	x2, x2, -224	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 224	# 2290
	lw		x1, -220(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -216(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	addi	x4, x5, 0
	sw		x1, -220(x2)	# 2291
	addi	x2, x2, -224	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 224	# 2291
	lw		x1, -220(x2)	# 2291
	lw		x5, -160(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -216(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	lw		x4, 0(x2)	# 2304
	lw		x6, -4(x2)	# 2304
	addi	x5, x6, 0
	sw		x1, -220(x2)	# 2304
	addi	x2, x2, -224	# 2304
	jal		x1, min_caml_create_array	# 2304
	addi	x2, x2, 224	# 2304
	lw		x1, -220(x2)	# 2304
	flw		f1, -8(x2)	# 2286
	lw		x5, -20(x2)	# 2286
	sw		x4, -220(x2)	# 2286
	addi	x4, x5, 0
	sw		x1, -224(x2)	# 2286
	addi	x2, x2, -228	# 2286
	jal		x1, min_caml_create_float_array	# 2286
	addi	x2, x2, 228	# 2286
	lw		x1, -224(x2)	# 2286
	addi	x5, x4, 0	# 2286
	lw		x4, -64(x2)	# 2287
	sw		x1, -224(x2)	# 2287
	addi	x2, x2, -228	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 228	# 2287
	lw		x1, -224(x2)	# 2287
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -224(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -228(x2)	# 2288
	addi	x2, x2, -232	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 232	# 2288
	lw		x1, -228(x2)	# 2288
	lw		x5, 0(x2)	# 2288
	mul		x6, x30, x5	# 2288
	lw		x7, -224(x2)	# 2288
	add		x6, x7, x6	# 2288
	sw		x4, 0(x6)	# 2288
	flw		f1, -8(x2)	# 2289
	lw		x4, -20(x2)	# 2289
	sw		x1, -228(x2)	# 2289
	addi	x2, x2, -232	# 2289
	jal		x1, min_caml_create_float_array	# 2289
	addi	x2, x2, 232	# 2289
	lw		x1, -228(x2)	# 2289
	lw		x5, -48(x2)	# 2289
	mul		x6, x30, x5	# 2289
	lw		x7, -224(x2)	# 2289
	add		x6, x7, x6	# 2289
	sw		x4, 0(x6)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x4, -20(x2)	# 2290
	sw		x1, -228(x2)	# 2290
	addi	x2, x2, -232	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 232	# 2290
	lw		x1, -228(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -224(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	addi	x4, x5, 0
	sw		x1, -228(x2)	# 2291
	addi	x2, x2, -232	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 232	# 2291
	lw		x1, -228(x2)	# 2291
	lw		x5, -160(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -224(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	addi	x4, x3, 0	# 2306
	addi	x3, x3, 32	# 2306
	sw		x7, 28(x4)	# 2306
	lw		x6, -220(x2)	# 2306
	sw		x6, 24(x4)	# 2306
	lw		x6, -216(x2)	# 2306
	sw		x6, 20(x4)	# 2306
	lw		x6, -212(x2)	# 2306
	sw		x6, 16(x4)	# 2306
	lw		x6, -208(x2)	# 2306
	sw		x6, 12(x4)	# 2306
	lw		x6, -204(x2)	# 2306
	sw		x6, 8(x4)	# 2306
	lw		x6, -200(x2)	# 2306
	sw		x6, 4(x4)	# 2306
	lw		x6, -196(x2)	# 2306
	sw		x6, 0(x4)	# 2306
	lw		x6, -192(x2)	# 2320
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -228(x2)	# 2320
	addi	x2, x2, -232	# 2320
	jal		x1, min_caml_create_array	# 2320
	addi	x2, x2, 232	# 2320
	lw		x1, -228(x2)	# 2320
	lw		x5, -4(x2)	# 2321
	mul		x6, x30, x5	# 2321
	addi	x6, x6, 60616	# 2321
	lw		x6, 0(x6)	# 2321
	lw		x7, -48(x2)	# 2321
	sub		x6, x6, x7	# 2321
	lw		x29, -140(x2)	# 2321
	addi	x5, x6, 0
	sw		x1, -228(x2)	# 2321
	addi	x2, x2, -232	# 2321
	lw		x31, 0(x29)	# 2321
	jalr	x1, x31, 0	# 2321
	addi	x2, x2, 232	# 2321
	lw		x1, -228(x2)	# 2321
	lw		x5, -4(x2)	# 2320
	mul		x6, x30, x5	# 2320
	addi	x6, x6, 60616	# 2320
	lw		x6, 0(x6)	# 2320
	flw		f1, -8(x2)	# 2298
	lw		x7, -20(x2)	# 2298
	sw		x4, -228(x2)	# 2298
	sw		x6, -232(x2)	# 2298
	addi	x4, x7, 0
	sw		x1, -236(x2)	# 2298
	addi	x2, x2, -240	# 2298
	jal		x1, min_caml_create_float_array	# 2298
	addi	x2, x2, 240	# 2298
	lw		x1, -236(x2)	# 2298
	flw		f1, -8(x2)	# 2286
	lw		x5, -20(x2)	# 2286
	sw		x4, -236(x2)	# 2286
	addi	x4, x5, 0
	sw		x1, -240(x2)	# 2286
	addi	x2, x2, -244	# 2286
	jal		x1, min_caml_create_float_array	# 2286
	addi	x2, x2, 244	# 2286
	lw		x1, -240(x2)	# 2286
	addi	x5, x4, 0	# 2286
	lw		x4, -64(x2)	# 2287
	sw		x1, -240(x2)	# 2287
	addi	x2, x2, -244	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 244	# 2287
	lw		x1, -240(x2)	# 2287
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -240(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -244(x2)	# 2288
	addi	x2, x2, -248	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 248	# 2288
	lw		x1, -244(x2)	# 2288
	lw		x5, 0(x2)	# 2288
	mul		x6, x30, x5	# 2288
	lw		x7, -240(x2)	# 2288
	add		x6, x7, x6	# 2288
	sw		x4, 0(x6)	# 2288
	flw		f1, -8(x2)	# 2289
	lw		x4, -20(x2)	# 2289
	sw		x1, -244(x2)	# 2289
	addi	x2, x2, -248	# 2289
	jal		x1, min_caml_create_float_array	# 2289
	addi	x2, x2, 248	# 2289
	lw		x1, -244(x2)	# 2289
	lw		x5, -48(x2)	# 2289
	mul		x6, x30, x5	# 2289
	lw		x7, -240(x2)	# 2289
	add		x6, x7, x6	# 2289
	sw		x4, 0(x6)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x4, -20(x2)	# 2290
	sw		x1, -244(x2)	# 2290
	addi	x2, x2, -248	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 248	# 2290
	lw		x1, -244(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -240(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	addi	x4, x5, 0
	sw		x1, -244(x2)	# 2291
	addi	x2, x2, -248	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 248	# 2291
	lw		x1, -244(x2)	# 2291
	lw		x5, -160(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -240(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	lw		x4, -64(x2)	# 2300
	lw		x6, -4(x2)	# 2300
	addi	x5, x6, 0
	sw		x1, -244(x2)	# 2300
	addi	x2, x2, -248	# 2300
	jal		x1, min_caml_create_array	# 2300
	addi	x2, x2, 248	# 2300
	lw		x1, -244(x2)	# 2300
	lw		x5, -64(x2)	# 2301
	lw		x6, -4(x2)	# 2301
	sw		x4, -244(x2)	# 2301
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -248(x2)	# 2301
	addi	x2, x2, -252	# 2301
	jal		x1, min_caml_create_array	# 2301
	addi	x2, x2, 252	# 2301
	lw		x1, -248(x2)	# 2301
	flw		f1, -8(x2)	# 2286
	lw		x5, -20(x2)	# 2286
	sw		x4, -248(x2)	# 2286
	addi	x4, x5, 0
	sw		x1, -252(x2)	# 2286
	addi	x2, x2, -256	# 2286
	jal		x1, min_caml_create_float_array	# 2286
	addi	x2, x2, 256	# 2286
	lw		x1, -252(x2)	# 2286
	addi	x5, x4, 0	# 2286
	lw		x4, -64(x2)	# 2287
	sw		x1, -252(x2)	# 2287
	addi	x2, x2, -256	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 256	# 2287
	lw		x1, -252(x2)	# 2287
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -252(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -256(x2)	# 2288
	addi	x2, x2, -260	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 260	# 2288
	lw		x1, -256(x2)	# 2288
	lw		x5, 0(x2)	# 2288
	mul		x6, x30, x5	# 2288
	lw		x7, -252(x2)	# 2288
	add		x6, x7, x6	# 2288
	sw		x4, 0(x6)	# 2288
	flw		f1, -8(x2)	# 2289
	lw		x4, -20(x2)	# 2289
	sw		x1, -256(x2)	# 2289
	addi	x2, x2, -260	# 2289
	jal		x1, min_caml_create_float_array	# 2289
	addi	x2, x2, 260	# 2289
	lw		x1, -256(x2)	# 2289
	lw		x5, -48(x2)	# 2289
	mul		x6, x30, x5	# 2289
	lw		x7, -252(x2)	# 2289
	add		x6, x7, x6	# 2289
	sw		x4, 0(x6)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x4, -20(x2)	# 2290
	sw		x1, -256(x2)	# 2290
	addi	x2, x2, -260	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 260	# 2290
	lw		x1, -256(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -252(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	addi	x4, x5, 0
	sw		x1, -256(x2)	# 2291
	addi	x2, x2, -260	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 260	# 2291
	lw		x1, -256(x2)	# 2291
	lw		x5, -160(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -252(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	flw		f1, -8(x2)	# 2286
	lw		x4, -20(x2)	# 2286
	sw		x1, -256(x2)	# 2286
	addi	x2, x2, -260	# 2286
	jal		x1, min_caml_create_float_array	# 2286
	addi	x2, x2, 260	# 2286
	lw		x1, -256(x2)	# 2286
	addi	x5, x4, 0	# 2286
	lw		x4, -64(x2)	# 2287
	sw		x1, -256(x2)	# 2287
	addi	x2, x2, -260	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 260	# 2287
	lw		x1, -256(x2)	# 2287
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -256(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -260(x2)	# 2288
	addi	x2, x2, -264	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 264	# 2288
	lw		x1, -260(x2)	# 2288
	lw		x5, 0(x2)	# 2288
	mul		x6, x30, x5	# 2288
	lw		x7, -256(x2)	# 2288
	add		x6, x7, x6	# 2288
	sw		x4, 0(x6)	# 2288
	flw		f1, -8(x2)	# 2289
	lw		x4, -20(x2)	# 2289
	sw		x1, -260(x2)	# 2289
	addi	x2, x2, -264	# 2289
	jal		x1, min_caml_create_float_array	# 2289
	addi	x2, x2, 264	# 2289
	lw		x1, -260(x2)	# 2289
	lw		x5, -48(x2)	# 2289
	mul		x6, x30, x5	# 2289
	lw		x7, -256(x2)	# 2289
	add		x6, x7, x6	# 2289
	sw		x4, 0(x6)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x4, -20(x2)	# 2290
	sw		x1, -260(x2)	# 2290
	addi	x2, x2, -264	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 264	# 2290
	lw		x1, -260(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -256(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	addi	x4, x5, 0
	sw		x1, -260(x2)	# 2291
	addi	x2, x2, -264	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 264	# 2291
	lw		x1, -260(x2)	# 2291
	lw		x5, -160(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -256(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	lw		x4, 0(x2)	# 2304
	lw		x6, -4(x2)	# 2304
	addi	x5, x6, 0
	sw		x1, -260(x2)	# 2304
	addi	x2, x2, -264	# 2304
	jal		x1, min_caml_create_array	# 2304
	addi	x2, x2, 264	# 2304
	lw		x1, -260(x2)	# 2304
	flw		f1, -8(x2)	# 2286
	lw		x5, -20(x2)	# 2286
	sw		x4, -260(x2)	# 2286
	addi	x4, x5, 0
	sw		x1, -264(x2)	# 2286
	addi	x2, x2, -268	# 2286
	jal		x1, min_caml_create_float_array	# 2286
	addi	x2, x2, 268	# 2286
	lw		x1, -264(x2)	# 2286
	addi	x5, x4, 0	# 2286
	lw		x4, -64(x2)	# 2287
	sw		x1, -264(x2)	# 2287
	addi	x2, x2, -268	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 268	# 2287
	lw		x1, -264(x2)	# 2287
	flw		f1, -8(x2)	# 2288
	lw		x5, -20(x2)	# 2288
	sw		x4, -264(x2)	# 2288
	addi	x4, x5, 0
	sw		x1, -268(x2)	# 2288
	addi	x2, x2, -272	# 2288
	jal		x1, min_caml_create_float_array	# 2288
	addi	x2, x2, 272	# 2288
	lw		x1, -268(x2)	# 2288
	lw		x5, 0(x2)	# 2288
	mul		x6, x30, x5	# 2288
	lw		x7, -264(x2)	# 2288
	add		x6, x7, x6	# 2288
	sw		x4, 0(x6)	# 2288
	flw		f1, -8(x2)	# 2289
	lw		x4, -20(x2)	# 2289
	sw		x1, -268(x2)	# 2289
	addi	x2, x2, -272	# 2289
	jal		x1, min_caml_create_float_array	# 2289
	addi	x2, x2, 272	# 2289
	lw		x1, -268(x2)	# 2289
	lw		x5, -48(x2)	# 2289
	mul		x6, x30, x5	# 2289
	lw		x7, -264(x2)	# 2289
	add		x6, x7, x6	# 2289
	sw		x4, 0(x6)	# 2289
	flw		f1, -8(x2)	# 2290
	lw		x4, -20(x2)	# 2290
	sw		x1, -268(x2)	# 2290
	addi	x2, x2, -272	# 2290
	jal		x1, min_caml_create_float_array	# 2290
	addi	x2, x2, 272	# 2290
	lw		x1, -268(x2)	# 2290
	lw		x5, -20(x2)	# 2290
	mul		x6, x30, x5	# 2290
	lw		x7, -264(x2)	# 2290
	add		x6, x7, x6	# 2290
	sw		x4, 0(x6)	# 2290
	flw		f1, -8(x2)	# 2291
	addi	x4, x5, 0
	sw		x1, -268(x2)	# 2291
	addi	x2, x2, -272	# 2291
	jal		x1, min_caml_create_float_array	# 2291
	addi	x2, x2, 272	# 2291
	lw		x1, -268(x2)	# 2291
	lw		x5, -160(x2)	# 2291
	mul		x6, x30, x5	# 2291
	lw		x7, -264(x2)	# 2291
	add		x6, x7, x6	# 2291
	sw		x4, 0(x6)	# 2291
	addi	x4, x3, 0	# 2306
	addi	x3, x3, 32	# 2306
	sw		x7, 28(x4)	# 2306
	lw		x6, -260(x2)	# 2306
	sw		x6, 24(x4)	# 2306
	lw		x6, -256(x2)	# 2306
	sw		x6, 20(x4)	# 2306
	lw		x6, -252(x2)	# 2306
	sw		x6, 16(x4)	# 2306
	lw		x6, -248(x2)	# 2306
	sw		x6, 12(x4)	# 2306
	lw		x6, -244(x2)	# 2306
	sw		x6, 8(x4)	# 2306
	lw		x6, -240(x2)	# 2306
	sw		x6, 4(x4)	# 2306
	lw		x6, -236(x2)	# 2306
	sw		x6, 0(x4)	# 2306
	lw		x6, -232(x2)	# 2320
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -268(x2)	# 2320
	addi	x2, x2, -272	# 2320
	jal		x1, min_caml_create_array	# 2320
	addi	x2, x2, 272	# 2320
	lw		x1, -268(x2)	# 2320
	lw		x5, -4(x2)	# 2321
	mul		x6, x30, x5	# 2321
	addi	x6, x6, 60616	# 2321
	lw		x6, 0(x6)	# 2321
	lw		x7, -48(x2)	# 2321
	sub		x6, x6, x7	# 2321
	lw		x29, -140(x2)	# 2321
	addi	x5, x6, 0
	sw		x1, -268(x2)	# 2321
	addi	x2, x2, -272	# 2321
	lw		x31, 0(x29)	# 2321
	jalr	x1, x31, 0	# 2321
	addi	x2, x2, 272	# 2321
	lw		x1, -268(x2)	# 2321
	sw		x4, -268(x2)	# 698
	sw		x1, -272(x2)	# 698
	addi	x2, x2, -276	# 698
	jal		x1, min_caml_read_float	# 698
	addi	x2, x2, 276	# 698
	lw		x1, -272(x2)	# 698
	lw		x4, -4(x2)	# 698
	mul		x5, x30, x4	# 698
	addi	x5, x5, 60288	# 698
	fsw		f1, 0(x5)	# 698
	sw		x1, -272(x2)	# 699
	addi	x2, x2, -276	# 699
	jal		x1, min_caml_read_float	# 699
	addi	x2, x2, 276	# 699
	lw		x1, -272(x2)	# 699
	lw		x4, 0(x2)	# 699
	mul		x5, x30, x4	# 699
	addi	x5, x5, 60288	# 699
	fsw		f1, 0(x5)	# 699
	sw		x1, -272(x2)	# 700
	addi	x2, x2, -276	# 700
	jal		x1, min_caml_read_float	# 700
	addi	x2, x2, 276	# 700
	lw		x1, -272(x2)	# 700
	lw		x4, -48(x2)	# 700
	mul		x5, x30, x4	# 700
	addi	x5, x5, 60288	# 700
	fsw		f1, 0(x5)	# 700
	sw		x1, -272(x2)	# 702
	addi	x2, x2, -276	# 702
	jal		x1, min_caml_read_float	# 702
	addi	x2, x2, 276	# 702
	lw		x1, -272(x2)	# 702
	fadd	f2, f0, f24	# 691
	fmul	f1, f1, f2	# 691
	lw		x29, -136(x2)	# 703
	fsw		f2, -272(x2)	# 703
	fsw		f1, -276(x2)	# 703
	sw		x1, -280(x2)	# 703
	addi	x2, x2, -284	# 703
	lw		x31, 0(x29)	# 703
	jalr	x1, x31, 0	# 703
	addi	x2, x2, 284	# 703
	lw		x1, -280(x2)	# 703
	flw		f2, -276(x2)	# 704
	lw		x29, -132(x2)	# 704
	fsw		f1, -280(x2)	# 704
	fadd	f1, f0, f2
	sw		x1, -284(x2)	# 704
	addi	x2, x2, -288	# 704
	lw		x31, 0(x29)	# 704
	jalr	x1, x31, 0	# 704
	addi	x2, x2, 288	# 704
	lw		x1, -284(x2)	# 704
	fsw		f1, -284(x2)	# 705
	sw		x1, -288(x2)	# 705
	addi	x2, x2, -292	# 705
	jal		x1, min_caml_read_float	# 705
	addi	x2, x2, 292	# 705
	lw		x1, -288(x2)	# 705
	flw		f2, -272(x2)	# 691
	fmul	f1, f1, f2	# 691
	lw		x29, -136(x2)	# 706
	fsw		f1, -288(x2)	# 706
	sw		x1, -292(x2)	# 706
	addi	x2, x2, -296	# 706
	lw		x31, 0(x29)	# 706
	jalr	x1, x31, 0	# 706
	addi	x2, x2, 296	# 706
	lw		x1, -292(x2)	# 706
	flw		f2, -288(x2)	# 707
	lw		x29, -132(x2)	# 707
	fsw		f1, -292(x2)	# 707
	fadd	f1, f0, f2
	sw		x1, -296(x2)	# 707
	addi	x2, x2, -300	# 707
	lw		x31, 0(x29)	# 707
	jalr	x1, x31, 0	# 707
	addi	x2, x2, 300	# 707
	lw		x1, -296(x2)	# 707
	flw		f2, -280(x2)	# 709
	fmul	f3, f2, f1	# 709
	lui		x4, %hi(l.29115)	# 709
	ori		x4, x0, %lo(l.29115)	# 709
	flw		f4, 0(x4)	# 709
	fmul	f3, f3, f4	# 709
	lw		x4, -4(x2)	# 709
	mul		x5, x30, x4	# 709
	addi	x5, x5, 60684	# 709
	fsw		f3, 0(x5)	# 709
	lui		x5, %hi(l.29119)	# 710
	ori		x5, x0, %lo(l.29119)	# 710
	flw		f3, 0(x5)	# 710
	flw		f5, -284(x2)	# 710
	fmul	f3, f5, f3	# 710
	lw		x5, 0(x2)	# 710
	mul		x6, x30, x5	# 710
	addi	x6, x6, 60684	# 710
	fsw		f3, 0(x6)	# 710
	flw		f3, -292(x2)	# 711
	fmul	f6, f2, f3	# 711
	fmul	f4, f6, f4	# 711
	lw		x6, -48(x2)	# 711
	mul		x7, x30, x6	# 711
	addi	x7, x7, 60684	# 711
	fsw		f4, 0(x7)	# 711
	mul		x7, x30, x4	# 713
	addi	x7, x7, 60660	# 713
	fsw		f3, 0(x7)	# 713
	mul		x7, x30, x5	# 714
	addi	x7, x7, 60660	# 714
	flw		f4, -8(x2)	# 714
	fsw		f4, 0(x7)	# 714
	fsub	f6, f0, f1	# 123
	mul		x7, x30, x6	# 715
	addi	x7, x7, 60660	# 715
	fsw		f6, 0(x7)	# 715
	fsub	f5, f0, f5	# 123
	fmul	f1, f5, f1	# 717
	mul		x7, x30, x4	# 717
	addi	x7, x7, 60672	# 717
	fsw		f1, 0(x7)	# 717
	fsub	f1, f0, f2	# 123
	mul		x7, x30, x5	# 718
	addi	x7, x7, 60672	# 718
	fsw		f1, 0(x7)	# 718
	fmul	f1, f5, f3	# 719
	mul		x7, x30, x6	# 719
	addi	x7, x7, 60672	# 719
	fsw		f1, 0(x7)	# 719
	mul		x7, x30, x4	# 721
	addi	x7, x7, 60288	# 721
	flw		f1, 0(x7)	# 721
	mul		x7, x30, x4	# 721
	addi	x7, x7, 60684	# 721
	flw		f2, 0(x7)	# 721
	fsub	f1, f1, f2	# 721
	mul		x7, x30, x4	# 721
	addi	x7, x7, 60300	# 721
	fsw		f1, 0(x7)	# 721
	mul		x7, x30, x5	# 722
	addi	x7, x7, 60288	# 722
	flw		f1, 0(x7)	# 722
	mul		x7, x30, x5	# 722
	addi	x7, x7, 60684	# 722
	flw		f2, 0(x7)	# 722
	fsub	f1, f1, f2	# 722
	mul		x7, x30, x5	# 722
	addi	x7, x7, 60300	# 722
	fsw		f1, 0(x7)	# 722
	mul		x7, x30, x6	# 723
	addi	x7, x7, 60288	# 723
	flw		f1, 0(x7)	# 723
	mul		x7, x30, x6	# 723
	addi	x7, x7, 60684	# 723
	flw		f2, 0(x7)	# 723
	fsub	f1, f1, f2	# 723
	mul		x7, x30, x6	# 723
	addi	x7, x7, 60300	# 723
	fsw		f1, 0(x7)	# 723
	sw		x1, -296(x2)	# 730
	addi	x2, x2, -300	# 730
	jal		x1, min_caml_read_int	# 730
	addi	x2, x2, 300	# 730
	lw		x1, -296(x2)	# 730
	sw		x1, -296(x2)	# 733
	addi	x2, x2, -300	# 733
	jal		x1, min_caml_read_float	# 733
	addi	x2, x2, 300	# 733
	lw		x1, -296(x2)	# 733
	flw		f2, -272(x2)	# 691
	fmul	f1, f1, f2	# 691
	lw		x29, -132(x2)	# 734
	fsw		f1, -296(x2)	# 734
	sw		x1, -300(x2)	# 734
	addi	x2, x2, -304	# 734
	lw		x31, 0(x29)	# 734
	jalr	x1, x31, 0	# 734
	addi	x2, x2, 304	# 734
	lw		x1, -300(x2)	# 734
	fsub	f1, f0, f1	# 123
	lw		x4, 0(x2)	# 735
	mul		x5, x30, x4	# 735
	addi	x5, x5, 60312	# 735
	fsw		f1, 0(x5)	# 735
	sw		x1, -300(x2)	# 736
	addi	x2, x2, -304	# 736
	jal		x1, min_caml_read_float	# 736
	addi	x2, x2, 304	# 736
	lw		x1, -300(x2)	# 736
	flw		f2, -272(x2)	# 691
	fmul	f1, f1, f2	# 691
	flw		f2, -296(x2)	# 737
	lw		x29, -136(x2)	# 737
	fsw		f1, -300(x2)	# 737
	fadd	f1, f0, f2
	sw		x1, -304(x2)	# 737
	addi	x2, x2, -308	# 737
	lw		x31, 0(x29)	# 737
	jalr	x1, x31, 0	# 737
	addi	x2, x2, 308	# 737
	lw		x1, -304(x2)	# 737
	flw		f2, -300(x2)	# 738
	lw		x29, -132(x2)	# 738
	fsw		f1, -304(x2)	# 738
	fadd	f1, f0, f2
	sw		x1, -308(x2)	# 738
	addi	x2, x2, -312	# 738
	lw		x31, 0(x29)	# 738
	jalr	x1, x31, 0	# 738
	addi	x2, x2, 312	# 738
	lw		x1, -308(x2)	# 738
	flw		f2, -304(x2)	# 739
	fmul	f1, f2, f1	# 739
	lw		x4, -4(x2)	# 739
	mul		x5, x30, x4	# 739
	addi	x5, x5, 60312	# 739
	fsw		f1, 0(x5)	# 739
	flw		f1, -300(x2)	# 740
	lw		x29, -136(x2)	# 740
	sw		x1, -308(x2)	# 740
	addi	x2, x2, -312	# 740
	lw		x31, 0(x29)	# 740
	jalr	x1, x31, 0	# 740
	addi	x2, x2, 312	# 740
	lw		x1, -308(x2)	# 740
	flw		f2, -304(x2)	# 741
	fmul	f1, f2, f1	# 741
	lw		x4, -48(x2)	# 741
	mul		x5, x30, x4	# 741
	addi	x5, x5, 60312	# 741
	fsw		f1, 0(x5)	# 741
	sw		x1, -308(x2)	# 742
	addi	x2, x2, -312	# 742
	jal		x1, min_caml_read_float	# 742
	addi	x2, x2, 312	# 742
	lw		x1, -308(x2)	# 742
	lw		x4, -4(x2)	# 742
	mul		x5, x30, x4	# 742
	addi	x5, x5, 60324	# 742
	fsw		f1, 0(x5)	# 742
	lw		x29, -128(x2)	# 884
	sw		x1, -308(x2)	# 884
	addi	x2, x2, -312	# 884
	lw		x31, 0(x29)	# 884
	jalr	x1, x31, 0	# 884
	addi	x2, x2, 312	# 884
	lw		x1, -308(x2)	# 884
	lw		x4, -4(x2)	# 921
	lw		x29, -124(x2)	# 921
	sw		x1, -308(x2)	# 921
	addi	x2, x2, -312	# 921
	lw		x31, 0(x29)	# 921
	jalr	x1, x31, 0	# 921
	addi	x2, x2, 312	# 921
	lw		x1, -308(x2)	# 921
	lw		x4, -4(x2)	# 922
	lw		x29, -120(x2)	# 922
	sw		x1, -308(x2)	# 922
	addi	x2, x2, -312	# 922
	lw		x31, 0(x29)	# 922
	jalr	x1, x31, 0	# 922
	addi	x2, x2, 312	# 922
	lw		x1, -308(x2)	# 922
	lw		x5, -4(x2)	# 922
	mul		x6, x30, x5	# 922
	addi	x6, x6, 60536	# 922
	sw		x4, 0(x6)	# 922
	addi	x4, x0, 80	# 2129
	sw		x1, -308(x2)	# 2129
	addi	x2, x2, -312	# 2129
	jal		x1, min_caml_print_char	# 2129
	addi	x2, x2, 312	# 2129
	lw		x1, -308(x2)	# 2129
	addi	x4, x0, 51	# 2130
	sw		x1, -308(x2)	# 2130
	addi	x2, x2, -312	# 2130
	jal		x1, min_caml_print_char	# 2130
	addi	x2, x2, 312	# 2130
	lw		x1, -308(x2)	# 2130
	addi	x4, x0, 10	# 2131
	sw		x4, -308(x2)	# 2131
	sw		x1, -312(x2)	# 2131
	addi	x2, x2, -316	# 2131
	jal		x1, min_caml_print_char	# 2131
	addi	x2, x2, 316	# 2131
	lw		x1, -312(x2)	# 2131
	lw		x4, -4(x2)	# 2132
	mul		x5, x30, x4	# 2132
	addi	x5, x5, 60616	# 2132
	lw		x5, 0(x5)	# 2132
	addi	x4, x5, 0
	sw		x1, -312(x2)	# 2132
	addi	x2, x2, -316	# 2132
	jal		x1, min_caml_print_int	# 2132
	addi	x2, x2, 316	# 2132
	lw		x1, -312(x2)	# 2132
	addi	x4, x0, 32	# 2133
	sw		x4, -312(x2)	# 2133
	sw		x1, -316(x2)	# 2133
	addi	x2, x2, -320	# 2133
	jal		x1, min_caml_print_char	# 2133
	addi	x2, x2, 320	# 2133
	lw		x1, -316(x2)	# 2133
	lw		x4, 0(x2)	# 2134
	mul		x5, x30, x4	# 2134
	addi	x5, x5, 60616	# 2134
	lw		x5, 0(x5)	# 2134
	addi	x4, x5, 0
	sw		x1, -316(x2)	# 2134
	addi	x2, x2, -320	# 2134
	jal		x1, min_caml_print_int	# 2134
	addi	x2, x2, 320	# 2134
	lw		x1, -316(x2)	# 2134
	lw		x4, -312(x2)	# 2135
	sw		x1, -316(x2)	# 2135
	addi	x2, x2, -320	# 2135
	jal		x1, min_caml_print_char	# 2135
	addi	x2, x2, 320	# 2135
	lw		x1, -316(x2)	# 2135
	addi	x4, x0, 255	# 2136
	sw		x1, -316(x2)	# 2136
	addi	x2, x2, -320	# 2136
	jal		x1, min_caml_print_int	# 2136
	addi	x2, x2, 320	# 2136
	lw		x1, -316(x2)	# 2136
	lw		x4, -308(x2)	# 2137
	sw		x1, -316(x2)	# 2137
	addi	x2, x2, -320	# 2137
	jal		x1, min_caml_print_char	# 2137
	addi	x2, x2, 320	# 2137
	lw		x1, -316(x2)	# 2137
	lw		x4, -160(x2)	# 2435
	lw		x29, -116(x2)	# 2435
	sw		x1, -316(x2)	# 2435
	addi	x2, x2, -320	# 2435
	lw		x31, 0(x29)	# 2435
	jalr	x1, x31, 0	# 2435
	addi	x2, x2, 320	# 2435
	lw		x1, -316(x2)	# 2435
	addi	x4, x0, 9	# 2436
	lw		x5, -4(x2)	# 2436
	lw		x29, -112(x2)	# 2436
	addi	x6, x5, 0
	sw		x1, -316(x2)	# 2436
	addi	x2, x2, -320	# 2436
	lw		x31, 0(x29)	# 2436
	jalr	x1, x31, 0	# 2436
	addi	x2, x2, 320	# 2436
	lw		x1, -316(x2)	# 2436
	lw		x4, -160(x2)	# 2437
	lw		x29, -108(x2)	# 2437
	sw		x1, -316(x2)	# 2437
	addi	x2, x2, -320	# 2437
	lw		x31, 0(x29)	# 2437
	jalr	x1, x31, 0	# 2437
	addi	x2, x2, 320	# 2437
	lw		x1, -316(x2)	# 2437
	lw		x4, -4(x2)	# 273
	mul		x5, x30, x4	# 273
	addi	x5, x5, 60312	# 273
	flw		f1, 0(x5)	# 273
	mul		x5, x30, x4	# 273
	addi	x5, x5, 60736	# 273
	fsw		f1, 0(x5)	# 273
	lw		x5, 0(x2)	# 274
	mul		x6, x30, x5	# 274
	addi	x6, x6, 60312	# 274
	flw		f1, 0(x6)	# 274
	mul		x6, x30, x5	# 274
	addi	x6, x6, 60736	# 274
	fsw		f1, 0(x6)	# 274
	lw		x6, -48(x2)	# 275
	mul		x7, x30, x6	# 275
	addi	x7, x7, 60312	# 275
	flw		f1, 0(x7)	# 275
	mul		x7, x30, x6	# 275
	addi	x7, x7, 60736	# 275
	fsw		f1, 0(x7)	# 275
	mul		x7, x30, x4	# 1301
	addi	x7, x7, 60000	# 1301
	lw		x7, 0(x7)	# 1301
	sub		x7, x7, x5	# 1301
	lw		x8, -80(x2)	# 1301
	lw		x29, -104(x2)	# 1301
	addi	x5, x7, 0
	addi	x4, x8, 0
	sw		x1, -316(x2)	# 1301
	addi	x2, x2, -320	# 1301
	lw		x31, 0(x29)	# 1301
	jalr	x1, x31, 0	# 1301
	addi	x2, x2, 320	# 1301
	lw		x1, -316(x2)	# 1301
	lw		x4, -4(x2)	# 2519
	mul		x5, x30, x4	# 2519
	addi	x5, x5, 60000	# 2519
	lw		x5, 0(x5)	# 2519
	lw		x6, 0(x2)	# 2519
	sub		x5, x5, x6	# 2519
	ble		x4, x5, ble.32956	# 2484
	jal		x0, ble_cont.32955	# 2484
ble.32956:
	mul		x7, x30, x5	# 2485
	addi	x7, x7, 60048	# 2485
	lw		x7, 0(x7)	# 2485
	lw		x8, 8(x7)	# 377
	lw		x9, -48(x2)	# 2486
	beq		x8, x9, beq.32958	# 2486
	jal		x0, beq_cont.32957	# 2486
beq.32958:
	lw		x8, 28(x7)	# 475
	mul		x10, x30, x4	# 480
	add		x8, x8, x10	# 480
	flw		f1, 0(x8)	# 480
	fadd	f2, f0, f16	# 2487
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32960	# 125
	jal		x0, fle_cont.32959	# 125
fle_else.32960:
	lw		x8, 4(x7)	# 367
	beq		x8, x6, beq.32962	# 2490
	beq		x8, x9, beq.32964	# 2492
	jal		x0, beq_cont.32963	# 2492
beq.32964:
	addi	x8, x0, 4	# 2469
	mul		x5, x5, x8	# 2469
	addi	x5, x5, 1	# 2469
	mul		x8, x30, x4	# 2470
	addi	x8, x8, 61736	# 2470
	lw		x8, 0(x8)	# 2470
	lw		x10, 28(x7)	# 475
	mul		x11, x30, x4	# 480
	add		x10, x10, x11	# 480
	flw		f1, 0(x10)	# 480
	fsub	f1, f2, f1	# 2471
	lw		x10, 16(x7)	# 435
	mul		x11, x30, x4	# 306
	addi	x11, x11, 60312	# 306
	flw		f2, 0(x11)	# 306
	mul		x11, x30, x4	# 306
	add		x11, x10, x11	# 306
	flw		f3, 0(x11)	# 306
	fmul	f2, f2, f3	# 306
	mul		x11, x30, x6	# 306
	addi	x11, x11, 60312	# 306
	flw		f3, 0(x11)	# 306
	mul		x11, x30, x6	# 306
	add		x11, x10, x11	# 306
	flw		f4, 0(x11)	# 306
	fmul	f3, f3, f4	# 306
	fadd	f2, f2, f3	# 306
	mul		x11, x30, x9	# 306
	addi	x11, x11, 60312	# 306
	flw		f3, 0(x11)	# 306
	mul		x11, x30, x9	# 306
	add		x10, x10, x11	# 306
	flw		f4, 0(x10)	# 306
	fmul	f3, f3, f4	# 306
	fadd	f2, f2, f3	# 306
	lui		x10, %hi(l.26348)	# 2475
	ori		x10, x0, %lo(l.26348)	# 2475
	flw		f3, 0(x10)	# 2475
	lw		x10, 16(x7)	# 405
	mul		x11, x30, x4	# 410
	add		x10, x10, x11	# 410
	flw		f4, 0(x10)	# 410
	fmul	f4, f3, f4	# 2475
	fmul	f4, f4, f2	# 2475
	mul		x10, x30, x4	# 2475
	addi	x10, x10, 60312	# 2475
	flw		f5, 0(x10)	# 2475
	fsub	f4, f4, f5	# 2475
	lw		x10, 16(x7)	# 415
	mul		x11, x30, x6	# 420
	add		x10, x10, x11	# 420
	flw		f5, 0(x10)	# 420
	fmul	f5, f3, f5	# 2476
	fmul	f5, f5, f2	# 2476
	mul		x10, x30, x6	# 2476
	addi	x10, x10, 60312	# 2476
	flw		f6, 0(x10)	# 2476
	fsub	f5, f5, f6	# 2476
	lw		x7, 16(x7)	# 425
	mul		x10, x30, x9	# 430
	add		x7, x7, x10	# 430
	flw		f6, 0(x7)	# 430
	fmul	f3, f3, f6	# 2477
	fmul	f2, f3, f2	# 2477
	mul		x7, x30, x9	# 2477
	addi	x7, x7, 60312	# 2477
	flw		f3, 0(x7)	# 2477
	fsub	f2, f2, f3	# 2477
	flw		f3, -8(x2)	# 2396
	lw		x7, -20(x2)	# 2396
	sw		x8, -316(x2)	# 2396
	sw		x5, -320(x2)	# 2396
	fsw		f1, -324(x2)	# 2396
	fsw		f2, -328(x2)	# 2396
	fsw		f5, -332(x2)	# 2396
	fsw		f4, -336(x2)	# 2396
	addi	x4, x7, 0
	fadd	f1, f0, f3
	sw		x1, -340(x2)	# 2396
	addi	x2, x2, -344	# 2396
	jal		x1, min_caml_create_float_array	# 2396
	addi	x2, x2, 344	# 2396
	lw		x1, -340(x2)	# 2396
	addi	x5, x4, 0	# 2396
	lw		x4, -4(x2)	# 2397
	mul		x6, x30, x4	# 2397
	addi	x6, x6, 60000	# 2397
	lw		x6, 0(x6)	# 2397
	sw		x5, -340(x2)	# 2397
	addi	x4, x6, 0
	sw		x1, -344(x2)	# 2397
	addi	x2, x2, -348	# 2397
	jal		x1, min_caml_create_array	# 2397
	addi	x2, x2, 348	# 2397
	lw		x1, -344(x2)	# 2397
	addi	x5, x3, 0	# 2398
	addi	x3, x3, 8	# 2398
	sw		x4, 4(x5)	# 2398
	lw		x4, -340(x2)	# 2398
	sw		x4, 0(x5)	# 2398
	lw		x6, -4(x2)	# 254
	mul		x7, x30, x6	# 254
	add		x7, x4, x7	# 254
	flw		f1, -336(x2)	# 254
	fsw		f1, 0(x7)	# 254
	lw		x7, 0(x2)	# 255
	mul		x8, x30, x7	# 255
	add		x8, x4, x8	# 255
	flw		f1, -332(x2)	# 255
	fsw		f1, 0(x8)	# 255
	lw		x8, -48(x2)	# 256
	mul		x9, x30, x8	# 256
	add		x4, x4, x9	# 256
	flw		f1, -328(x2)	# 256
	fsw		f1, 0(x4)	# 256
	mul		x4, x30, x6	# 1301
	addi	x4, x4, 60000	# 1301
	lw		x4, 0(x4)	# 1301
	sub		x4, x4, x7	# 1301
	lw		x29, -104(x2)	# 1301
	sw		x5, -344(x2)	# 1301
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -348(x2)	# 1301
	addi	x2, x2, -352	# 1301
	lw		x31, 0(x29)	# 1301
	jalr	x1, x31, 0	# 1301
	addi	x2, x2, 352	# 1301
	lw		x1, -348(x2)	# 1301
	addi	x4, x3, 0	# 2450
	addi	x3, x3, 12	# 2450
	flw		f1, -324(x2)	# 2450
	fsw		f1, 8(x4)	# 2450
	lw		x5, -344(x2)	# 2450
	sw		x5, 4(x4)	# 2450
	lw		x5, -320(x2)	# 2450
	sw		x5, 0(x4)	# 2450
	lw		x5, -316(x2)	# 2450
	mul		x6, x30, x5	# 2450
	addi	x6, x6, 61016	# 2450
	sw		x4, 0(x6)	# 2450
	addi	x4, x5, 1	# 2478
	lw		x5, -4(x2)	# 2478
	mul		x6, x30, x5	# 2478
	addi	x6, x6, 61736	# 2478
	sw		x4, 0(x6)	# 2478
beq_cont.32963:
	jal		x0, beq_cont.32961	# 2490
beq.32962:
	addi	x8, x0, 4	# 2455
	mul		x5, x5, x8	# 2455
	mul		x8, x30, x4	# 2456
	addi	x8, x8, 61736	# 2456
	lw		x8, 0(x8)	# 2456
	lw		x7, 28(x7)	# 475
	mul		x10, x30, x4	# 480
	add		x7, x7, x10	# 480
	flw		f1, 0(x7)	# 480
	fsub	f1, f2, f1	# 2457
	mul		x7, x30, x4	# 2458
	addi	x7, x7, 60312	# 2458
	flw		f2, 0(x7)	# 2458
	fsub	f2, f0, f2	# 123
	mul		x7, x30, x6	# 2459
	addi	x7, x7, 60312	# 2459
	flw		f3, 0(x7)	# 2459
	fsub	f3, f0, f3	# 123
	mul		x7, x30, x9	# 2460
	addi	x7, x7, 60312	# 2460
	flw		f4, 0(x7)	# 2460
	fsub	f4, f0, f4	# 123
	addi	x7, x5, 1	# 2461
	mul		x10, x30, x4	# 2461
	addi	x10, x10, 60312	# 2461
	flw		f5, 0(x10)	# 2461
	flw		f6, -8(x2)	# 2396
	lw		x10, -20(x2)	# 2396
	fsw		f2, -348(x2)	# 2396
	sw		x5, -352(x2)	# 2396
	sw		x8, -356(x2)	# 2396
	sw		x7, -360(x2)	# 2396
	fsw		f1, -364(x2)	# 2396
	fsw		f4, -368(x2)	# 2396
	fsw		f3, -372(x2)	# 2396
	fsw		f5, -376(x2)	# 2396
	addi	x4, x10, 0
	fadd	f1, f0, f6
	sw		x1, -380(x2)	# 2396
	addi	x2, x2, -384	# 2396
	jal		x1, min_caml_create_float_array	# 2396
	addi	x2, x2, 384	# 2396
	lw		x1, -380(x2)	# 2396
	addi	x5, x4, 0	# 2396
	lw		x4, -4(x2)	# 2397
	mul		x6, x30, x4	# 2397
	addi	x6, x6, 60000	# 2397
	lw		x6, 0(x6)	# 2397
	sw		x5, -380(x2)	# 2397
	addi	x4, x6, 0
	sw		x1, -384(x2)	# 2397
	addi	x2, x2, -388	# 2397
	jal		x1, min_caml_create_array	# 2397
	addi	x2, x2, 388	# 2397
	lw		x1, -384(x2)	# 2397
	addi	x5, x3, 0	# 2398
	addi	x3, x3, 8	# 2398
	sw		x4, 4(x5)	# 2398
	lw		x4, -380(x2)	# 2398
	sw		x4, 0(x5)	# 2398
	lw		x6, -4(x2)	# 254
	mul		x7, x30, x6	# 254
	add		x7, x4, x7	# 254
	flw		f1, -376(x2)	# 254
	fsw		f1, 0(x7)	# 254
	lw		x7, 0(x2)	# 255
	mul		x8, x30, x7	# 255
	add		x8, x4, x8	# 255
	flw		f1, -372(x2)	# 255
	fsw		f1, 0(x8)	# 255
	lw		x8, -48(x2)	# 256
	mul		x9, x30, x8	# 256
	add		x4, x4, x9	# 256
	flw		f2, -368(x2)	# 256
	fsw		f2, 0(x4)	# 256
	mul		x4, x30, x6	# 1301
	addi	x4, x4, 60000	# 1301
	lw		x4, 0(x4)	# 1301
	sub		x4, x4, x7	# 1301
	lw		x29, -104(x2)	# 1301
	sw		x5, -384(x2)	# 1301
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -388(x2)	# 1301
	addi	x2, x2, -392	# 1301
	lw		x31, 0(x29)	# 1301
	jalr	x1, x31, 0	# 1301
	addi	x2, x2, 392	# 1301
	lw		x1, -388(x2)	# 1301
	addi	x4, x3, 0	# 2450
	addi	x3, x3, 12	# 2450
	flw		f1, -364(x2)	# 2450
	fsw		f1, 8(x4)	# 2450
	lw		x5, -384(x2)	# 2450
	sw		x5, 4(x4)	# 2450
	lw		x5, -360(x2)	# 2450
	sw		x5, 0(x4)	# 2450
	lw		x5, -356(x2)	# 2450
	mul		x6, x30, x5	# 2450
	addi	x6, x6, 61016	# 2450
	sw		x4, 0(x6)	# 2450
	addi	x4, x5, 1	# 2462
	lw		x6, -352(x2)	# 2462
	addi	x7, x6, 2	# 2462
	lw		x8, 0(x2)	# 2462
	mul		x9, x30, x8	# 2462
	addi	x9, x9, 60312	# 2462
	flw		f2, 0(x9)	# 2462
	flw		f3, -8(x2)	# 2396
	lw		x9, -20(x2)	# 2396
	sw		x4, -388(x2)	# 2396
	sw		x7, -392(x2)	# 2396
	fsw		f2, -396(x2)	# 2396
	addi	x4, x9, 0
	fadd	f1, f0, f3
	sw		x1, -400(x2)	# 2396
	addi	x2, x2, -404	# 2396
	jal		x1, min_caml_create_float_array	# 2396
	addi	x2, x2, 404	# 2396
	lw		x1, -400(x2)	# 2396
	addi	x5, x4, 0	# 2396
	lw		x4, -4(x2)	# 2397
	mul		x6, x30, x4	# 2397
	addi	x6, x6, 60000	# 2397
	lw		x6, 0(x6)	# 2397
	sw		x5, -400(x2)	# 2397
	addi	x4, x6, 0
	sw		x1, -404(x2)	# 2397
	addi	x2, x2, -408	# 2397
	jal		x1, min_caml_create_array	# 2397
	addi	x2, x2, 408	# 2397
	lw		x1, -404(x2)	# 2397
	addi	x5, x3, 0	# 2398
	addi	x3, x3, 8	# 2398
	sw		x4, 4(x5)	# 2398
	lw		x4, -400(x2)	# 2398
	sw		x4, 0(x5)	# 2398
	lw		x6, -4(x2)	# 254
	mul		x7, x30, x6	# 254
	add		x7, x4, x7	# 254
	flw		f1, -348(x2)	# 254
	fsw		f1, 0(x7)	# 254
	lw		x7, 0(x2)	# 255
	mul		x8, x30, x7	# 255
	add		x8, x4, x8	# 255
	flw		f2, -396(x2)	# 255
	fsw		f2, 0(x8)	# 255
	lw		x8, -48(x2)	# 256
	mul		x9, x30, x8	# 256
	add		x4, x4, x9	# 256
	flw		f2, -368(x2)	# 256
	fsw		f2, 0(x4)	# 256
	mul		x4, x30, x6	# 1301
	addi	x4, x4, 60000	# 1301
	lw		x4, 0(x4)	# 1301
	sub		x4, x4, x7	# 1301
	lw		x29, -104(x2)	# 1301
	sw		x5, -404(x2)	# 1301
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -408(x2)	# 1301
	addi	x2, x2, -412	# 1301
	lw		x31, 0(x29)	# 1301
	jalr	x1, x31, 0	# 1301
	addi	x2, x2, 412	# 1301
	lw		x1, -408(x2)	# 1301
	addi	x4, x3, 0	# 2450
	addi	x3, x3, 12	# 2450
	flw		f1, -364(x2)	# 2450
	fsw		f1, 8(x4)	# 2450
	lw		x5, -404(x2)	# 2450
	sw		x5, 4(x4)	# 2450
	lw		x5, -392(x2)	# 2450
	sw		x5, 0(x4)	# 2450
	lw		x5, -388(x2)	# 2450
	mul		x5, x30, x5	# 2450
	addi	x5, x5, 61016	# 2450
	sw		x4, 0(x5)	# 2450
	lw		x4, -356(x2)	# 2463
	addi	x5, x4, 2	# 2463
	lw		x6, -352(x2)	# 2463
	addi	x6, x6, 3	# 2463
	lw		x7, -48(x2)	# 2463
	mul		x8, x30, x7	# 2463
	addi	x8, x8, 60312	# 2463
	flw		f2, 0(x8)	# 2463
	flw		f3, -8(x2)	# 2396
	lw		x8, -20(x2)	# 2396
	sw		x5, -408(x2)	# 2396
	sw		x6, -412(x2)	# 2396
	fsw		f2, -416(x2)	# 2396
	addi	x4, x8, 0
	fadd	f1, f0, f3
	sw		x1, -420(x2)	# 2396
	addi	x2, x2, -424	# 2396
	jal		x1, min_caml_create_float_array	# 2396
	addi	x2, x2, 424	# 2396
	lw		x1, -420(x2)	# 2396
	addi	x5, x4, 0	# 2396
	lw		x4, -4(x2)	# 2397
	mul		x6, x30, x4	# 2397
	addi	x6, x6, 60000	# 2397
	lw		x6, 0(x6)	# 2397
	sw		x5, -420(x2)	# 2397
	addi	x4, x6, 0
	sw		x1, -424(x2)	# 2397
	addi	x2, x2, -428	# 2397
	jal		x1, min_caml_create_array	# 2397
	addi	x2, x2, 428	# 2397
	lw		x1, -424(x2)	# 2397
	addi	x5, x3, 0	# 2398
	addi	x3, x3, 8	# 2398
	sw		x4, 4(x5)	# 2398
	lw		x4, -420(x2)	# 2398
	sw		x4, 0(x5)	# 2398
	lw		x6, -4(x2)	# 254
	mul		x7, x30, x6	# 254
	add		x7, x4, x7	# 254
	flw		f1, -348(x2)	# 254
	fsw		f1, 0(x7)	# 254
	lw		x7, 0(x2)	# 255
	mul		x8, x30, x7	# 255
	add		x8, x4, x8	# 255
	flw		f1, -372(x2)	# 255
	fsw		f1, 0(x8)	# 255
	lw		x8, -48(x2)	# 256
	mul		x9, x30, x8	# 256
	add		x4, x4, x9	# 256
	flw		f1, -416(x2)	# 256
	fsw		f1, 0(x4)	# 256
	mul		x4, x30, x6	# 1301
	addi	x4, x4, 60000	# 1301
	lw		x4, 0(x4)	# 1301
	sub		x4, x4, x7	# 1301
	lw		x29, -104(x2)	# 1301
	sw		x5, -424(x2)	# 1301
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -428(x2)	# 1301
	addi	x2, x2, -432	# 1301
	lw		x31, 0(x29)	# 1301
	jalr	x1, x31, 0	# 1301
	addi	x2, x2, 432	# 1301
	lw		x1, -428(x2)	# 1301
	addi	x4, x3, 0	# 2450
	addi	x3, x3, 12	# 2450
	flw		f1, -364(x2)	# 2450
	fsw		f1, 8(x4)	# 2450
	lw		x5, -424(x2)	# 2450
	sw		x5, 4(x4)	# 2450
	lw		x5, -412(x2)	# 2450
	sw		x5, 0(x4)	# 2450
	lw		x5, -408(x2)	# 2450
	mul		x5, x30, x5	# 2450
	addi	x5, x5, 61016	# 2450
	sw		x4, 0(x5)	# 2450
	lw		x4, -356(x2)	# 2464
	addi	x4, x4, 3	# 2464
	lw		x5, -4(x2)	# 2464
	mul		x6, x30, x5	# 2464
	addi	x6, x6, 61736	# 2464
	sw		x4, 0(x6)	# 2464
beq_cont.32961:
fle_cont.32959:
beq_cont.32957:
ble_cont.32955:
	lw		x4, -4(x2)	# 2232
	mul		x5, x30, x4	# 2232
	addi	x5, x5, 60632	# 2232
	flw		f1, 0(x5)	# 2232
	lw		x5, 0(x2)	# 2232
	mul		x6, x30, x5	# 2232
	addi	x6, x6, 60624	# 2232
	lw		x6, 0(x6)	# 2232
	sub		x6, x4, x6	# 2232
	lw		x29, -100(x2)	# 2232
	fsw		f1, -428(x2)	# 2232
	addi	x4, x6, 0
	sw		x1, -432(x2)	# 2232
	addi	x2, x2, -436	# 2232
	lw		x31, 0(x29)	# 2232
	jalr	x1, x31, 0	# 2232
	addi	x2, x2, 436	# 2232
	lw		x1, -432(x2)	# 2232
	flw		f2, -428(x2)	# 2232
	fmul	f1, f2, f1	# 2232
	lw		x6, -4(x2)	# 2235
	mul		x4, x30, x6	# 2235
	addi	x4, x4, 60672	# 2235
	flw		f2, 0(x4)	# 2235
	fmul	f2, f1, f2	# 2235
	mul		x4, x30, x6	# 2235
	addi	x4, x4, 60684	# 2235
	flw		f3, 0(x4)	# 2235
	fadd	f2, f2, f3	# 2235
	lw		x4, 0(x2)	# 2236
	mul		x5, x30, x4	# 2236
	addi	x5, x5, 60672	# 2236
	flw		f3, 0(x5)	# 2236
	fmul	f3, f1, f3	# 2236
	mul		x5, x30, x4	# 2236
	addi	x5, x5, 60684	# 2236
	flw		f4, 0(x5)	# 2236
	fadd	f3, f3, f4	# 2236
	lw		x5, -48(x2)	# 2237
	mul		x7, x30, x5	# 2237
	addi	x7, x7, 60672	# 2237
	flw		f4, 0(x7)	# 2237
	fmul	f1, f1, f4	# 2237
	mul		x7, x30, x5	# 2237
	addi	x7, x7, 60684	# 2237
	flw		f4, 0(x7)	# 2237
	fadd	f1, f1, f4	# 2237
	mul		x7, x30, x6	# 2238
	addi	x7, x7, 60616	# 2238
	lw		x7, 0(x7)	# 2238
	sub		x4, x7, x4	# 2238
	lw		x7, -228(x2)	# 2238
	lw		x29, -96(x2)	# 2238
	addi	x5, x4, 0
	addi	x4, x7, 0
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -432(x2)	# 2238
	addi	x2, x2, -436	# 2238
	lw		x31, 0(x29)	# 2238
	jalr	x1, x31, 0	# 2238
	addi	x2, x2, 436	# 2238
	lw		x1, -432(x2)	# 2238
	lw		x4, -4(x2)	# 2521
	lw		x5, -188(x2)	# 2521
	lw		x6, -228(x2)	# 2521
	lw		x7, -268(x2)	# 2521
	lw		x8, -48(x2)	# 2521
	lw		x9, -20(x2)	# 2521
	lw		x29, -92(x2)	# 2521
	sw		x1, -432(x2)	# 2521
	addi	x2, x2, -436	# 2521
	lw		x31, 0(x29)	# 2521
	jalr	x1, x31, 0	# 2521
	addi	x2, x2, 436	# 2521
	lw		x1, -432(x2)	# 2521
	EXIT	
