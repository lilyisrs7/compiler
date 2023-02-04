l.24169:	# 1.000000
	.word	1.000000
l.24173:	# 0.500000
	.word	0.500000
l.24260:	# -1.000000
	.word	-1.000000
l.25243:	# 3.141593
	.word	3.141593
l.24769:	# -0.100000
	.word	-0.100000
l.25273:	# 10.000000
	.word	10.000000
l.25320:	# 100000000.000000
	.word	100000000.000000
l.25241:	# 30.000000
	.word	30.000000
l.25239:	# 15.000000
	.word	15.000000
l.24200:	# 0.200000
	.word	0.200000
l.25751:	# 0.100000
	.word	0.100000
l.24650:	# 0.010000
	.word	0.010000
l.24311:	# 2.000000
	.word	2.000000
l.25261:	# 0.300000
	.word	0.300000
l.25296:	# 0.050000
	.word	0.050000
l.24231:	# 0.017453
	.word	0.017453
l.25300:	# 20.000000
	.word	20.000000
l.25258:	# 0.150000
	.word	0.150000
l.25285:	# 0.250000
	.word	0.250000
l.25237:	# 0.000100
	.word	0.000100
l.26624:	# 0.900000
	.word	0.900000
l.24187:	# 0.001370
	.word	0.001370
l.24171:	# 4.000000
	.word	4.000000
l.24185:	# 0.041664
	.word	0.041664
l.24202:	# 0.142857
	.word	0.142857
l.24204:	# 0.111111
	.word	0.111111
l.24206:	# 0.089764
	.word	0.089764
l.26846:	# 200.000000
	.word	200.000000
l.26850:	# -200.000000
	.word	-200.000000
l.25936:	# 150.000000
	.word	150.000000
l.24648:	# -0.200000
	.word	-0.200000
l.26700:	# 128.000000
	.word	128.000000
l.26690:	# 0.785398
	.word	0.785398
l.26688:	# 1.570796
	.word	1.570796
l.26686:	# 6.283185
	.word	6.283185
l.26684:	# 3.141593
	.word	3.141593
l.26669:	# 1000000000.000000
	.word	1000000000.000000
l.26665:	# 255.000000
	.word	255.000000
l.26651:	# 0.000000
	.word	0.000000
l.24198:	# 0.333333
	.word	0.333333
l.24196:	# 0.437500
	.word	0.437500
l.24193:	# 2.437500
	.word	2.437500
l.24177:	# 0.166667
	.word	0.166667
l.24179:	# 0.008333
	.word	0.008333
l.24181:	# 0.000196
	.word	0.000196
l.25804:	# -150.000000
	.word	-150.000000
l.25627:	# 0.003906
	.word	0.003906
l.25655:	# -2.000000
	.word	-2.000000
int_of_float_rem.2535.16716:
	lw		x5, 4(x29)	# 133
	fadd	f2, f0, f16	# 133
	fle		x31, f2, f1	# 133
	beq		x31, x0, fle_else.29659	# 133
	fsub	f1, f1, f2	# 133
	add		x4, x4, x5	# 133
	lw		x31, 0(x29)	# 133
	jalr	x0, x31, 0	# 133
fle_else.29659:
	jalr	x0, x1, 0	# 133
int_of_float_four.2538.16719:
	lw		x5, 4(x29)	# 135
	fadd	f2, f0, f30	# 135
	fle		x31, f2, f1	# 135
	beq		x31, x0, fle_else.29660	# 135
	fsub	f1, f1, f2	# 135
	addi	x4, x4, 4	# 135
	lw		x31, 0(x29)	# 135
	jalr	x0, x31, 0	# 135
fle_else.29660:
	addi	x29, x5, 0
	lw		x31, 0(x29)	# 135
	jalr	x0, x31, 0	# 135
int_of_float.2541.16722:
	lw		x4, 12(x29)	# 137
	lw		x5, 8(x29)	# 137
	flw		f2, 4(x29)	# 137
	fle		x31, f2, f1	# 137
	beq		x31, x0, fle_else.29661	# 137
	fadd	f2, f0, f17	# 137
	fadd	f1, f1, f2	# 137
	addi	x29, x4, 0
	addi	x4, x5, 0
	lw		x31, 0(x29)	# 137
	jalr	x0, x31, 0	# 137
fle_else.29661:
	fsub	f1, f0, f1	# 138
	sw		x1, 0(x2)	# 138
	addi	x2, x2, -4	# 138
	lw		x31, 0(x29)	# 138
	jalr	x1, x31, 0	# 138
	addi	x2, x2, 4	# 138
	lw		x1, 0(x2)	# 138
	sub		x4, x0, x4	# 138
	jalr	x0, x1, 0	# 138
float_of_int_rem.2543.16724:
	lw		x5, 4(x29)	# 144
	ble		x5, x4, ble.29662	# 144
	jalr	x0, x1, 0	# 144
ble.29662:
	sub		x4, x4, x5	# 144
	fadd	f2, f0, f16	# 144
	fadd	f1, f1, f2	# 144
	lw		x31, 0(x29)	# 144
	jalr	x0, x31, 0	# 144
float_of_int_four.2546.16727:
	lw		x5, 4(x29)	# 146
	addi	x6, x0, 4	# 146
	ble		x6, x4, ble.29663	# 146
	addi	x29, x5, 0
	lw		x31, 0(x29)	# 146
	jalr	x0, x31, 0	# 146
ble.29663:
	sub		x4, x4, x6	# 146
	fadd	f2, f0, f30	# 146
	fadd	f1, f1, f2	# 146
	lw		x31, 0(x29)	# 146
	jalr	x0, x31, 0	# 146
float_of_int.2549.16730:
	lw		x5, 12(x29)	# 148
	lw		x6, 8(x29)	# 148
	flw		f1, 4(x29)	# 148
	ble		x6, x4, ble.29664	# 148
	sub		x4, x0, x4	# 149
	sw		x1, 0(x2)	# 149
	addi	x2, x2, -4	# 149
	lw		x31, 0(x29)	# 149
	jalr	x1, x31, 0	# 149
	addi	x2, x2, 4	# 149
	lw		x1, 0(x2)	# 149
	fsub	f1, f0, f1	# 149
	jalr	x0, x1, 0	# 149
ble.29664:
	addi	x29, x5, 0
	lw		x31, 0(x29)	# 148
	jalr	x0, x31, 0	# 148
sin.2561.16736:
	flw		f2, 20(x29)	# 179
	flw		f3, 16(x29)	# 179
	flw		f4, 12(x29)	# 179
	flw		f5, 8(x29)	# 179
	flw		f6, 4(x29)	# 179
	fle		x31, f6, f1	# 179
	beq		x31, x0, fle_else.29665	# 179
	fle		x31, f4, f1	# 180
	beq		x31, x0, fle_else.29666	# 180
	fsub	f1, f1, f4	# 180
	lw		x31, 0(x29)	# 180
	jalr	x0, x31, 0	# 180
fle_else.29666:
	fle		x31, f5, f1	# 181
	beq		x31, x0, fle_else.29667	# 181
	fsub	f1, f1, f5	# 181
	sw		x1, 0(x2)	# 181
	addi	x2, x2, -4	# 181
	lw		x31, 0(x29)	# 181
	jalr	x1, x31, 0	# 181
	addi	x2, x2, 4	# 181
	lw		x1, 0(x2)	# 181
	fsub	f1, f0, f1	# 181
	jalr	x0, x1, 0	# 181
fle_else.29667:
	fle		x31, f1, f3	# 182
	beq		x31, x0, fle_else.29668	# 182
	fle		x31, f2, f1	# 183
	beq		x31, x0, fle_else.29669	# 183
	fsub	f1, f3, f1	# 183
	fmul	f1, f1, f1	# 174
	fmul	f2, f1, f1	# 175
	fadd	f3, f0, f16	# 176
	fadd	f4, f0, f17	# 176
	fmul	f4, f4, f1	# 176
	fsub	f3, f3, f4	# 176
	lui		x4, %hi(l.24185)	# 176
	ori		x4, x0, %lo(l.24185)	# 176
	flw		f4, 0(x4)	# 176
	fmul	f4, f4, f2	# 176
	fadd	f3, f3, f4	# 176
	lui		x4, %hi(l.24187)	# 176
	ori		x4, x0, %lo(l.24187)	# 176
	flw		f4, 0(x4)	# 176
	fmul	f1, f4, f1	# 176
	fmul	f1, f1, f2	# 176
	fsub	f1, f3, f1	# 176
	jalr	x0, x1, 0	# 176
fle_else.29669:
	fmul	f2, f1, f1	# 169
	fmul	f3, f1, f2	# 170
	lui		x4, %hi(l.24177)	# 171
	ori		x4, x0, %lo(l.24177)	# 171
	flw		f4, 0(x4)	# 171
	fmul	f4, f4, f3	# 171
	fsub	f1, f1, f4	# 171
	lui		x4, %hi(l.24179)	# 171
	ori		x4, x0, %lo(l.24179)	# 171
	flw		f4, 0(x4)	# 171
	fmul	f4, f4, f2	# 171
	fmul	f4, f4, f3	# 171
	fadd	f1, f1, f4	# 171
	lui		x4, %hi(l.24181)	# 171
	ori		x4, x0, %lo(l.24181)	# 171
	flw		f4, 0(x4)	# 171
	fmul	f4, f4, f2	# 171
	fmul	f2, f4, f2	# 171
	fmul	f2, f2, f3	# 171
	fsub	f1, f1, f2	# 171
	jalr	x0, x1, 0	# 171
fle_else.29668:
	fsub	f1, f5, f1	# 182
	lw		x31, 0(x29)	# 182
	jalr	x0, x31, 0	# 182
fle_else.29665:
	fsub	f1, f0, f1	# 179
	sw		x1, 0(x2)	# 179
	addi	x2, x2, -4	# 179
	lw		x31, 0(x29)	# 179
	jalr	x1, x31, 0	# 179
	addi	x2, x2, 4	# 179
	lw		x1, 0(x2)	# 179
	fsub	f1, f0, f1	# 179
	jalr	x0, x1, 0	# 179
cos.2563.16738:
	lw		x4, 16(x29)	# 187
	flw		f2, 12(x29)	# 187
	flw		f3, 8(x29)	# 187
	flw		f4, 4(x29)	# 187
	fle		x31, f4, f1	# 187
	beq		x31, x0, fle_else.29670	# 187
	fle		x31, f1, f2	# 188
	beq		x31, x0, fle_else.29671	# 188
	fmul	f1, f1, f1	# 174
	fmul	f2, f1, f1	# 175
	fadd	f3, f0, f16	# 176
	fadd	f4, f0, f17	# 176
	fmul	f4, f4, f1	# 176
	fsub	f3, f3, f4	# 176
	lui		x4, %hi(l.24185)	# 176
	ori		x4, x0, %lo(l.24185)	# 176
	flw		f4, 0(x4)	# 176
	fmul	f4, f4, f2	# 176
	fadd	f3, f3, f4	# 176
	lui		x4, %hi(l.24187)	# 176
	ori		x4, x0, %lo(l.24187)	# 176
	flw		f4, 0(x4)	# 176
	fmul	f1, f4, f1	# 176
	fmul	f1, f1, f2	# 176
	fsub	f1, f3, f1	# 176
	jalr	x0, x1, 0	# 176
fle_else.29671:
	fsub	f1, f3, f1	# 188
	addi	x29, x4, 0
	lw		x31, 0(x29)	# 188
	jalr	x0, x31, 0	# 188
fle_else.29670:
	fsub	f1, f0, f1	# 187
	lw		x31, 0(x29)	# 187
	jalr	x0, x31, 0	# 187
atan.2565.16740:
	flw		f2, 12(x29)	# 192
	flw		f3, 8(x29)	# 192
	flw		f4, 4(x29)	# 192
	fle		x31, f4, f1	# 192
	beq		x31, x0, fle_else.29672	# 192
	lui		x4, %hi(l.24193)	# 193
	ori		x4, x0, %lo(l.24193)	# 193
	flw		f4, 0(x4)	# 193
	fle		x31, f1, f4	# 193
	beq		x31, x0, fle_else.29673	# 193
	lui		x4, %hi(l.24196)	# 194
	ori		x4, x0, %lo(l.24196)	# 194
	flw		f3, 0(x4)	# 194
	fle		x31, f3, f1	# 194
	beq		x31, x0, fle_else.29674	# 194
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
fle_else.29674:
	fmul	f2, f1, f1	# 196
	fmul	f3, f1, f2	# 197
	fmul	f4, f2, f2	# 198
	lui		x4, %hi(l.24198)	# 199
	ori		x4, x0, %lo(l.24198)	# 199
	flw		f5, 0(x4)	# 199
	fmul	f5, f5, f3	# 199
	fsub	f1, f1, f5	# 199
	fadd	f5, f0, f25	# 199
	fmul	f5, f5, f2	# 199
	fmul	f5, f5, f3	# 199
	fadd	f1, f1, f5	# 199
	lui		x4, %hi(l.24202)	# 199
	ori		x4, x0, %lo(l.24202)	# 199
	flw		f5, 0(x4)	# 199
	fmul	f5, f5, f4	# 199
	fmul	f5, f5, f3	# 199
	fsub	f1, f1, f5	# 199
	lui		x4, %hi(l.24204)	# 200
	ori		x4, x0, %lo(l.24204)	# 200
	flw		f5, 0(x4)	# 200
	fmul	f2, f5, f2	# 200
	fmul	f2, f2, f4	# 200
	fmul	f2, f2, f3	# 200
	fadd	f1, f1, f2	# 199
	lui		x4, %hi(l.24206)	# 200
	ori		x4, x0, %lo(l.24206)	# 200
	flw		f2, 0(x4)	# 200
	fmul	f2, f2, f4	# 200
	fmul	f2, f2, f4	# 200
	fmul	f2, f2, f3	# 200
	fsub	f1, f1, f2	# 199
	jalr	x0, x1, 0	# 199
fle_else.29673:
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
fle_else.29672:
	fsub	f1, f0, f1	# 192
	sw		x1, -8(x2)	# 192
	addi	x2, x2, -12	# 192
	lw		x31, 0(x29)	# 192
	jalr	x1, x31, 0	# 192
	addi	x2, x2, 12	# 192
	lw		x1, -8(x2)	# 192
	fsub	f1, f0, f1	# 192
	jalr	x0, x1, 0	# 192
read_object.2702.16742:
	lw		x5, 36(x29)	# 875
	lw		x6, 32(x29)	# 875
	lw		x7, 28(x29)	# 875
	lw		x8, 24(x29)	# 875
	lw		x9, 20(x29)	# 875
	lw		x10, 16(x29)	# 875
	lw		x11, 12(x29)	# 875
	lw		x12, 8(x29)	# 875
	flw		f1, 4(x29)	# 875
	ble		x10, x4, ble.29675	# 875
	sw		x29, 0(x2)	# 793
	sw		x5, -4(x2)	# 793
	sw		x6, -8(x2)	# 793
	sw		x4, -12(x2)	# 793
	sw		x7, -16(x2)	# 793
	sw		x12, -20(x2)	# 793
	sw		x11, -24(x2)	# 793
	fsw		f1, -28(x2)	# 793
	sw		x9, -32(x2)	# 793
	sw		x8, -36(x2)	# 793
	sw		x1, -40(x2)	# 793
	addi	x2, x2, -44	# 793
	jal		x1, min_caml_read_int	# 793
	addi	x2, x2, 44	# 793
	lw		x1, -40(x2)	# 793
	lw		x5, -36(x2)	# 794
	beq		x4, x5, beq.29677	# 794
	sw		x4, -40(x2)	# 796
	sw		x1, -44(x2)	# 796
	addi	x2, x2, -48	# 796
	jal		x1, min_caml_read_int	# 796
	addi	x2, x2, 48	# 796
	lw		x1, -44(x2)	# 796
	sw		x4, -44(x2)	# 797
	sw		x1, -48(x2)	# 797
	addi	x2, x2, -52	# 797
	jal		x1, min_caml_read_int	# 797
	addi	x2, x2, 52	# 797
	lw		x1, -48(x2)	# 797
	sw		x4, -48(x2)	# 798
	sw		x1, -52(x2)	# 798
	addi	x2, x2, -56	# 798
	jal		x1, min_caml_read_int	# 798
	addi	x2, x2, 56	# 798
	lw		x1, -52(x2)	# 798
	flw		f1, -28(x2)	# 800
	lw		x5, -32(x2)	# 800
	sw		x4, -52(x2)	# 800
	addi	x4, x5, 0
	sw		x1, -56(x2)	# 800
	addi	x2, x2, -60	# 800
	jal		x1, min_caml_create_float_array	# 800
	addi	x2, x2, 60	# 800
	lw		x1, -56(x2)	# 800
	sw		x4, -56(x2)	# 801
	sw		x1, -60(x2)	# 801
	addi	x2, x2, -64	# 801
	jal		x1, min_caml_read_float	# 801
	addi	x2, x2, 64	# 801
	lw		x1, -60(x2)	# 801
	lw		x4, -24(x2)	# 801
	mul		x5, x30, x4	# 801
	lw		x6, -56(x2)	# 801
	add		x5, x6, x5	# 801
	fsw		f1, 0(x5)	# 801
	sw		x1, -60(x2)	# 802
	addi	x2, x2, -64	# 802
	jal		x1, min_caml_read_float	# 802
	addi	x2, x2, 64	# 802
	lw		x1, -60(x2)	# 802
	lw		x4, -20(x2)	# 802
	mul		x5, x30, x4	# 802
	lw		x6, -56(x2)	# 802
	add		x5, x6, x5	# 802
	fsw		f1, 0(x5)	# 802
	sw		x1, -60(x2)	# 803
	addi	x2, x2, -64	# 803
	jal		x1, min_caml_read_float	# 803
	addi	x2, x2, 64	# 803
	lw		x1, -60(x2)	# 803
	lw		x4, -16(x2)	# 803
	mul		x5, x30, x4	# 803
	lw		x6, -56(x2)	# 803
	add		x5, x6, x5	# 803
	fsw		f1, 0(x5)	# 803
	flw		f1, -28(x2)	# 805
	lw		x5, -32(x2)	# 805
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 805
	addi	x2, x2, -64	# 805
	jal		x1, min_caml_create_float_array	# 805
	addi	x2, x2, 64	# 805
	lw		x1, -60(x2)	# 805
	sw		x4, -60(x2)	# 806
	sw		x1, -64(x2)	# 806
	addi	x2, x2, -68	# 806
	jal		x1, min_caml_read_float	# 806
	addi	x2, x2, 68	# 806
	lw		x1, -64(x2)	# 806
	lw		x4, -24(x2)	# 806
	mul		x5, x30, x4	# 806
	lw		x6, -60(x2)	# 806
	add		x5, x6, x5	# 806
	fsw		f1, 0(x5)	# 806
	sw		x1, -64(x2)	# 807
	addi	x2, x2, -68	# 807
	jal		x1, min_caml_read_float	# 807
	addi	x2, x2, 68	# 807
	lw		x1, -64(x2)	# 807
	lw		x4, -20(x2)	# 807
	mul		x5, x30, x4	# 807
	lw		x6, -60(x2)	# 807
	add		x5, x6, x5	# 807
	fsw		f1, 0(x5)	# 807
	sw		x1, -64(x2)	# 808
	addi	x2, x2, -68	# 808
	jal		x1, min_caml_read_float	# 808
	addi	x2, x2, 68	# 808
	lw		x1, -64(x2)	# 808
	lw		x4, -16(x2)	# 808
	mul		x5, x30, x4	# 808
	lw		x6, -60(x2)	# 808
	add		x5, x6, x5	# 808
	fsw		f1, 0(x5)	# 808
	sw		x1, -64(x2)	# 810
	addi	x2, x2, -68	# 810
	jal		x1, min_caml_read_float	# 810
	addi	x2, x2, 68	# 810
	lw		x1, -64(x2)	# 810
	flw		f2, -28(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.29679	# 122
	addi	x4, x0, 0	# 122
	jal		x0, fle_cont.29678	# 122
fle_else.29679:
	addi	x4, x0, 1	# 122
fle_cont.29678:
	lw		x5, -16(x2)	# 812
	fsw		f1, -64(x2)	# 812
	sw		x4, -68(x2)	# 812
	addi	x4, x5, 0
	fadd	f1, f0, f2
	sw		x1, -72(x2)	# 812
	addi	x2, x2, -76	# 812
	jal		x1, min_caml_create_float_array	# 812
	addi	x2, x2, 76	# 812
	lw		x1, -72(x2)	# 812
	sw		x4, -72(x2)	# 813
	sw		x1, -76(x2)	# 813
	addi	x2, x2, -80	# 813
	jal		x1, min_caml_read_float	# 813
	addi	x2, x2, 80	# 813
	lw		x1, -76(x2)	# 813
	lw		x4, -24(x2)	# 813
	mul		x5, x30, x4	# 813
	lw		x6, -72(x2)	# 813
	add		x5, x6, x5	# 813
	fsw		f1, 0(x5)	# 813
	sw		x1, -76(x2)	# 814
	addi	x2, x2, -80	# 814
	jal		x1, min_caml_read_float	# 814
	addi	x2, x2, 80	# 814
	lw		x1, -76(x2)	# 814
	lw		x4, -20(x2)	# 814
	mul		x5, x30, x4	# 814
	lw		x6, -72(x2)	# 814
	add		x5, x6, x5	# 814
	fsw		f1, 0(x5)	# 814
	flw		f1, -28(x2)	# 816
	lw		x5, -32(x2)	# 816
	addi	x4, x5, 0
	sw		x1, -76(x2)	# 816
	addi	x2, x2, -80	# 816
	jal		x1, min_caml_create_float_array	# 816
	addi	x2, x2, 80	# 816
	lw		x1, -76(x2)	# 816
	sw		x4, -76(x2)	# 817
	sw		x1, -80(x2)	# 817
	addi	x2, x2, -84	# 817
	jal		x1, min_caml_read_float	# 817
	addi	x2, x2, 84	# 817
	lw		x1, -80(x2)	# 817
	lw		x4, -24(x2)	# 817
	mul		x5, x30, x4	# 817
	lw		x6, -76(x2)	# 817
	add		x5, x6, x5	# 817
	fsw		f1, 0(x5)	# 817
	sw		x1, -80(x2)	# 818
	addi	x2, x2, -84	# 818
	jal		x1, min_caml_read_float	# 818
	addi	x2, x2, 84	# 818
	lw		x1, -80(x2)	# 818
	lw		x4, -20(x2)	# 818
	mul		x5, x30, x4	# 818
	lw		x6, -76(x2)	# 818
	add		x5, x6, x5	# 818
	fsw		f1, 0(x5)	# 818
	sw		x1, -80(x2)	# 819
	addi	x2, x2, -84	# 819
	jal		x1, min_caml_read_float	# 819
	addi	x2, x2, 84	# 819
	lw		x1, -80(x2)	# 819
	lw		x4, -16(x2)	# 819
	mul		x5, x30, x4	# 819
	lw		x6, -76(x2)	# 819
	add		x5, x6, x5	# 819
	fsw		f1, 0(x5)	# 819
	flw		f1, -28(x2)	# 821
	lw		x5, -32(x2)	# 821
	addi	x4, x5, 0
	sw		x1, -80(x2)	# 821
	addi	x2, x2, -84	# 821
	jal		x1, min_caml_create_float_array	# 821
	addi	x2, x2, 84	# 821
	lw		x1, -80(x2)	# 821
	lw		x5, -24(x2)	# 822
	lw		x6, -52(x2)	# 822
	sw		x4, -80(x2)	# 822
	beq		x6, x5, beq_cont.29680	# 822
	sw		x1, -84(x2)	# 824
	addi	x2, x2, -88	# 824
	jal		x1, min_caml_read_float	# 824
	addi	x2, x2, 88	# 824
	lw		x1, -84(x2)	# 824
	lui		x4, %hi(l.24231)	# 691
	ori		x4, x0, %lo(l.24231)	# 691
	flw		f2, 0(x4)	# 691
	fmul	f1, f1, f2	# 691
	lw		x4, -24(x2)	# 824
	mul		x5, x30, x4	# 824
	lw		x6, -80(x2)	# 824
	add		x5, x6, x5	# 824
	fsw		f1, 0(x5)	# 824
	fsw		f2, -84(x2)	# 825
	sw		x1, -88(x2)	# 825
	addi	x2, x2, -92	# 825
	jal		x1, min_caml_read_float	# 825
	addi	x2, x2, 92	# 825
	lw		x1, -88(x2)	# 825
	flw		f2, -84(x2)	# 691
	fmul	f1, f1, f2	# 691
	lw		x4, -20(x2)	# 825
	mul		x5, x30, x4	# 825
	lw		x6, -80(x2)	# 825
	add		x5, x6, x5	# 825
	fsw		f1, 0(x5)	# 825
	sw		x1, -88(x2)	# 826
	addi	x2, x2, -92	# 826
	jal		x1, min_caml_read_float	# 826
	addi	x2, x2, 92	# 826
	lw		x1, -88(x2)	# 826
	flw		f2, -84(x2)	# 691
	fmul	f1, f1, f2	# 691
	lw		x4, -16(x2)	# 826
	mul		x5, x30, x4	# 826
	lw		x6, -80(x2)	# 826
	add		x5, x6, x5	# 826
	fsw		f1, 0(x5)	# 826
beq_cont.29680:
	lw		x4, -16(x2)	# 833
	lw		x5, -44(x2)	# 833
	beq		x5, x4, beq.29682	# 833
	lw		x6, -68(x2)	# 833
	jal		x0, beq_cont.29681	# 833
beq.29682:
	addi	x6, x0, 1	# 833
beq_cont.29681:
	addi	x7, x0, 4	# 834
	flw		f1, -28(x2)	# 834
	sw		x6, -88(x2)	# 834
	addi	x4, x7, 0
	sw		x1, -92(x2)	# 834
	addi	x2, x2, -96	# 834
	jal		x1, min_caml_create_float_array	# 834
	addi	x2, x2, 96	# 834
	lw		x1, -92(x2)	# 834
	addi	x5, x3, 0	# 837
	addi	x3, x3, 44	# 837
	sw		x4, 40(x5)	# 837
	lw		x4, -80(x2)	# 837
	sw		x4, 36(x5)	# 837
	lw		x6, -76(x2)	# 837
	sw		x6, 32(x5)	# 837
	lw		x6, -72(x2)	# 837
	sw		x6, 28(x5)	# 837
	lw		x6, -88(x2)	# 837
	sw		x6, 24(x5)	# 837
	lw		x6, -60(x2)	# 837
	sw		x6, 20(x5)	# 837
	lw		x6, -56(x2)	# 837
	sw		x6, 16(x5)	# 837
	lw		x7, -52(x2)	# 837
	sw		x7, 12(x5)	# 837
	lw		x8, -48(x2)	# 837
	sw		x8, 8(x5)	# 837
	lw		x8, -44(x2)	# 837
	sw		x8, 4(x5)	# 837
	lw		x9, -40(x2)	# 837
	sw		x9, 0(x5)	# 837
	lw		x9, -12(x2)	# 845
	mul		x10, x30, x9	# 845
	addi	x10, x10, 60048	# 845
	sw		x5, 0(x10)	# 845
	lw		x5, -32(x2)	# 847
	beq		x8, x5, beq.29684	# 847
	lw		x5, -16(x2)	# 857
	beq		x8, x5, beq.29686	# 857
	jal		x0, beq_cont.29685	# 857
beq.29686:
	lw		x8, -24(x2)	# 297
	mul		x10, x30, x8	# 297
	add		x10, x6, x10	# 297
	flw		f1, 0(x10)	# 297
	fmul	f1, f1, f1	# 127
	lw		x10, -20(x2)	# 297
	mul		x11, x30, x10	# 297
	add		x11, x6, x11	# 297
	flw		f2, 0(x11)	# 297
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 297
	mul		x11, x30, x5	# 297
	add		x11, x6, x11	# 297
	flw		f2, 0(x11)	# 297
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 297
	fsqrt	f1, f1	# 297
	flw		f2, -28(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.29688	# 120
	fadd	f1, f0, f16	# 298
	jal		x0, feq_cont.29687	# 120
feq_else.29688:
	flw		f3, -64(x2)	# 122
	fle		x31, f2, f3	# 122
	beq		x31, x0, fle_else.29690	# 122
	fadd	f2, f0, f18	# 298
	fdiv	f1, f2, f1	# 298
	jal		x0, fle_cont.29689	# 122
fle_else.29690:
	fadd	f2, f0, f16	# 298
	fdiv	f1, f2, f1	# 298
fle_cont.29689:
feq_cont.29687:
	mul		x11, x30, x8	# 299
	add		x11, x6, x11	# 299
	flw		f2, 0(x11)	# 299
	fmul	f2, f2, f1	# 299
	mul		x11, x30, x8	# 299
	add		x11, x6, x11	# 299
	fsw		f2, 0(x11)	# 299
	mul		x11, x30, x10	# 300
	add		x11, x6, x11	# 300
	flw		f2, 0(x11)	# 300
	fmul	f2, f2, f1	# 300
	mul		x11, x30, x10	# 300
	add		x11, x6, x11	# 300
	fsw		f2, 0(x11)	# 300
	mul		x11, x30, x5	# 301
	add		x11, x6, x11	# 301
	flw		f2, 0(x11)	# 301
	fmul	f1, f2, f1	# 301
	mul		x11, x30, x5	# 301
	add		x11, x6, x11	# 301
	fsw		f1, 0(x11)	# 301
beq_cont.29685:
	jal		x0, beq_cont.29683	# 847
beq.29684:
	lw		x5, -24(x2)	# 850
	mul		x8, x30, x5	# 850
	add		x8, x6, x8	# 850
	flw		f1, 0(x8)	# 850
	flw		f2, -28(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.29692	# 120
	fadd	f1, f0, f2	# 851
	jal		x0, feq_cont.29691	# 120
feq_else.29692:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.29694	# 120
	fadd	f3, f0, f2	# 226
	jal		x0, feq_cont.29693	# 120
feq_else.29694:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.29696	# 121
	fadd	f3, f0, f18	# 228
	jal		x0, fle_cont.29695	# 121
fle_else.29696:
	fadd	f3, f0, f16	# 227
fle_cont.29695:
feq_cont.29693:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 851
feq_cont.29691:
	mul		x8, x30, x5	# 851
	add		x8, x6, x8	# 851
	fsw		f1, 0(x8)	# 851
	lw		x8, -20(x2)	# 852
	mul		x10, x30, x8	# 852
	add		x10, x6, x10	# 852
	flw		f1, 0(x10)	# 852
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.29698	# 120
	fadd	f1, f0, f2	# 853
	jal		x0, feq_cont.29697	# 120
feq_else.29698:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.29700	# 120
	fadd	f3, f0, f2	# 226
	jal		x0, feq_cont.29699	# 120
feq_else.29700:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.29702	# 121
	fadd	f3, f0, f18	# 228
	jal		x0, fle_cont.29701	# 121
fle_else.29702:
	fadd	f3, f0, f16	# 227
fle_cont.29701:
feq_cont.29699:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 853
feq_cont.29697:
	mul		x10, x30, x8	# 853
	add		x10, x6, x10	# 853
	fsw		f1, 0(x10)	# 853
	lw		x10, -16(x2)	# 854
	mul		x11, x30, x10	# 854
	add		x11, x6, x11	# 854
	flw		f1, 0(x11)	# 854
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.29704	# 120
	fadd	f1, f0, f2	# 855
	jal		x0, feq_cont.29703	# 120
feq_else.29704:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.29706	# 120
	jal		x0, feq_cont.29705	# 120
feq_else.29706:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.29708	# 121
	fadd	f2, f0, f18	# 228
	jal		x0, fle_cont.29707	# 121
fle_else.29708:
	fadd	f2, f0, f16	# 227
fle_cont.29707:
feq_cont.29705:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f2, f1	# 855
feq_cont.29703:
	mul		x11, x30, x10	# 855
	add		x11, x6, x11	# 855
	fsw		f1, 0(x11)	# 855
beq_cont.29683:
	lw		x5, -24(x2)	# 863
	beq		x7, x5, beq_cont.29709	# 863
	mul		x7, x30, x5	# 752
	add		x7, x4, x7	# 752
	flw		f1, 0(x7)	# 752
	lw		x29, -8(x2)	# 752
	fsw		f1, -92(x2)	# 752
	sw		x1, -96(x2)	# 752
	addi	x2, x2, -100	# 752
	lw		x31, 0(x29)	# 752
	jalr	x1, x31, 0	# 752
	addi	x2, x2, 100	# 752
	lw		x1, -96(x2)	# 752
	flw		f2, -92(x2)	# 753
	lw		x29, -4(x2)	# 753
	fsw		f1, -96(x2)	# 753
	fadd	f1, f0, f2
	sw		x1, -100(x2)	# 753
	addi	x2, x2, -104	# 753
	lw		x31, 0(x29)	# 753
	jalr	x1, x31, 0	# 753
	addi	x2, x2, 104	# 753
	lw		x1, -100(x2)	# 753
	lw		x4, -20(x2)	# 754
	mul		x5, x30, x4	# 754
	lw		x6, -80(x2)	# 754
	add		x5, x6, x5	# 754
	flw		f2, 0(x5)	# 754
	lw		x29, -8(x2)	# 754
	fsw		f1, -100(x2)	# 754
	fsw		f2, -104(x2)	# 754
	fadd	f1, f0, f2
	sw		x1, -108(x2)	# 754
	addi	x2, x2, -112	# 754
	lw		x31, 0(x29)	# 754
	jalr	x1, x31, 0	# 754
	addi	x2, x2, 112	# 754
	lw		x1, -108(x2)	# 754
	flw		f2, -104(x2)	# 755
	lw		x29, -4(x2)	# 755
	fsw		f1, -108(x2)	# 755
	fadd	f1, f0, f2
	sw		x1, -112(x2)	# 755
	addi	x2, x2, -116	# 755
	lw		x31, 0(x29)	# 755
	jalr	x1, x31, 0	# 755
	addi	x2, x2, 116	# 755
	lw		x1, -112(x2)	# 755
	lw		x4, -16(x2)	# 756
	mul		x5, x30, x4	# 756
	lw		x6, -80(x2)	# 756
	add		x5, x6, x5	# 756
	flw		f2, 0(x5)	# 756
	lw		x29, -8(x2)	# 756
	fsw		f1, -112(x2)	# 756
	fsw		f2, -116(x2)	# 756
	fadd	f1, f0, f2
	sw		x1, -120(x2)	# 756
	addi	x2, x2, -124	# 756
	lw		x31, 0(x29)	# 756
	jalr	x1, x31, 0	# 756
	addi	x2, x2, 124	# 756
	lw		x1, -120(x2)	# 756
	flw		f2, -116(x2)	# 757
	lw		x29, -4(x2)	# 757
	fsw		f1, -120(x2)	# 757
	fadd	f1, f0, f2
	sw		x1, -124(x2)	# 757
	addi	x2, x2, -128	# 757
	lw		x31, 0(x29)	# 757
	jalr	x1, x31, 0	# 757
	addi	x2, x2, 128	# 757
	lw		x1, -124(x2)	# 757
	flw		f2, -120(x2)	# 759
	flw		f3, -108(x2)	# 759
	fmul	f4, f3, f2	# 759
	flw		f5, -112(x2)	# 760
	flw		f6, -100(x2)	# 760
	fmul	f7, f6, f5	# 760
	fmul	f8, f7, f2	# 760
	flw		f9, -96(x2)	# 760
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
	lw		x4, -24(x2)	# 772
	mul		x5, x30, x4	# 772
	lw		x6, -56(x2)	# 772
	add		x5, x6, x5	# 772
	flw		f6, 0(x5)	# 772
	lw		x5, -20(x2)	# 773
	mul		x7, x30, x5	# 773
	add		x7, x6, x7	# 773
	flw		f9, 0(x7)	# 773
	lw		x7, -16(x2)	# 774
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
	fadd	f13, f0, f28	# 784
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
	lw		x8, -80(x2)	# 784
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
beq_cont.29709:
	addi	x4, x0, 1	# 867
	jal		x0, beq_cont.29676	# 794
beq.29677:
	addi	x4, x0, 0	# 870
beq_cont.29676:
	lw		x5, -24(x2)	# 876
	beq		x4, x5, beq.29710	# 876
	lw		x4, -20(x2)	# 877
	lw		x5, -12(x2)	# 877
	add		x4, x5, x4	# 877
	lw		x29, 0(x2)	# 877
	lw		x31, 0(x29)	# 877
	jalr	x0, x31, 0	# 877
beq.29710:
	mul		x4, x30, x5	# 879
	addi	x4, x4, 60000	# 879
	lw		x5, -12(x2)	# 879
	sw		x5, 0(x4)	# 879
	jalr	x0, x1, 0	# 879
ble.29675:
	jalr	x0, x1, 0	# 880
read_net_item.2706.16744:
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
	beq		x4, x5, beq.29713	# 892
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
beq.29713:
	lw		x4, -4(x2)	# 892
	lw		x6, -8(x2)	# 892
	add		x4, x6, x4	# 892
	jal		x0, min_caml_create_array	# 892
read_or_network.2708.16746:
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
	beq		x4, x6, beq.29714	# 900
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
beq.29714:
	lw		x4, -4(x2)	# 901
	lw		x6, -8(x2)	# 901
	add		x4, x6, x4	# 901
	jal		x0, min_caml_create_array	# 901
read_and_network.2710.16748:
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
	beq		x5, x6, beq.29715	# 909
	lw		x5, -8(x2)	# 911
	mul		x6, x30, x5	# 911
	addi	x6, x6, 60332	# 911
	sw		x4, 0(x6)	# 911
	lw		x4, -4(x2)	# 912
	add		x4, x5, x4	# 912
	lw		x29, 0(x2)	# 912
	lw		x31, 0(x29)	# 912
	jalr	x0, x31, 0	# 912
beq.29715:
	jalr	x0, x1, 0	# 909
iter_setup_dirvec_constants.2807.16750:
	lw		x6, 24(x29)	# 1284
	lw		x7, 20(x29)	# 1284
	lw		x8, 16(x29)	# 1284
	lw		x9, 12(x29)	# 1284
	lw		x10, 8(x29)	# 1284
	flw		f1, 4(x29)	# 1284
	ble		x9, x5, ble.29717	# 1284
	jalr	x0, x1, 0	# 1297
ble.29717:
	mul		x11, x30, x5	# 1285
	addi	x11, x11, 60048	# 1285
	lw		x11, 0(x11)	# 1285
	lw		x12, 4(x4)	# 659
	lw		x13, 0(x4)	# 653
	lw		x14, 4(x11)	# 367
	sw		x4, 0(x2)	# 1289
	sw		x29, -4(x2)	# 1289
	sw		x10, -8(x2)	# 1289
	beq		x14, x10, beq.29720	# 1289
	beq		x14, x7, beq.29722	# 1291
	sw		x12, -12(x2)	# 1255
	sw		x5, -16(x2)	# 1255
	fsw		f1, -20(x2)	# 1255
	sw		x8, -24(x2)	# 1255
	sw		x11, -28(x2)	# 1255
	sw		x7, -32(x2)	# 1255
	sw		x13, -36(x2)	# 1255
	sw		x9, -40(x2)	# 1255
	addi	x4, x6, 0
	sw		x1, -44(x2)	# 1255
	addi	x2, x2, -48	# 1255
	jal		x1, min_caml_create_float_array	# 1255
	addi	x2, x2, 48	# 1255
	lw		x1, -44(x2)	# 1255
	lw		x5, -40(x2)	# 1257
	mul		x6, x30, x5	# 1257
	lw		x7, -36(x2)	# 1257
	add		x6, x7, x6	# 1257
	flw		f1, 0(x6)	# 1257
	lw		x6, -8(x2)	# 1257
	mul		x8, x30, x6	# 1257
	add		x8, x7, x8	# 1257
	flw		f2, 0(x8)	# 1257
	lw		x8, -32(x2)	# 1257
	mul		x9, x30, x8	# 1257
	add		x9, x7, x9	# 1257
	flw		f3, 0(x9)	# 1257
	fmul	f4, f1, f1	# 127
	lw		x9, -28(x2)	# 405
	lw		x10, 16(x9)	# 405
	mul		x11, x30, x5	# 410
	add		x10, x10, x11	# 410
	flw		f5, 0(x10)	# 410
	fmul	f4, f4, f5	# 981
	fmul	f5, f2, f2	# 127
	lw		x10, 16(x9)	# 415
	mul		x11, x30, x6	# 420
	add		x10, x10, x11	# 420
	flw		f6, 0(x10)	# 420
	fmul	f5, f5, f6	# 981
	fadd	f4, f4, f5	# 981
	fmul	f5, f3, f3	# 127
	lw		x10, 16(x9)	# 425
	mul		x11, x30, x8	# 430
	add		x10, x10, x11	# 430
	flw		f6, 0(x10)	# 430
	fmul	f5, f5, f6	# 981
	fadd	f4, f4, f5	# 981
	lw		x10, 12(x9)	# 396
	beq		x10, x5, beq_cont.29723	# 983
	fmul	f5, f2, f3	# 987
	lw		x10, 36(x9)	# 525
	mul		x11, x30, x5	# 530
	add		x10, x10, x11	# 530
	flw		f6, 0(x10)	# 530
	fmul	f5, f5, f6	# 987
	fadd	f4, f4, f5	# 986
	fmul	f5, f3, f1	# 988
	lw		x10, 36(x9)	# 535
	mul		x11, x30, x6	# 540
	add		x10, x10, x11	# 540
	flw		f6, 0(x10)	# 540
	fmul	f5, f5, f6	# 988
	fadd	f4, f4, f5	# 986
	fmul	f5, f1, f2	# 989
	lw		x10, 36(x9)	# 545
	mul		x11, x30, x8	# 550
	add		x10, x10, x11	# 550
	flw		f6, 0(x10)	# 550
	fmul	f5, f5, f6	# 989
	fadd	f4, f4, f5	# 986
beq_cont.29723:
	lw		x10, 16(x9)	# 405
	mul		x11, x30, x5	# 410
	add		x10, x10, x11	# 410
	flw		f5, 0(x10)	# 410
	fmul	f1, f1, f5	# 1258
	fsub	f1, f0, f1	# 123
	lw		x10, 16(x9)	# 415
	mul		x11, x30, x6	# 420
	add		x10, x10, x11	# 420
	flw		f5, 0(x10)	# 420
	fmul	f2, f2, f5	# 1259
	fsub	f2, f0, f2	# 123
	lw		x10, 16(x9)	# 425
	mul		x11, x30, x8	# 430
	add		x10, x10, x11	# 430
	flw		f5, 0(x10)	# 430
	fmul	f3, f3, f5	# 1260
	fsub	f3, f0, f3	# 123
	mul		x10, x30, x5	# 1262
	add		x10, x4, x10	# 1262
	fsw		f4, 0(x10)	# 1262
	lw		x10, 12(x9)	# 396
	beq		x10, x5, beq.29725	# 1266
	mul		x10, x30, x8	# 1267
	add		x10, x7, x10	# 1267
	flw		f5, 0(x10)	# 1267
	lw		x10, 36(x9)	# 535
	mul		x11, x30, x6	# 540
	add		x10, x10, x11	# 540
	flw		f6, 0(x10)	# 540
	fmul	f5, f5, f6	# 1267
	mul		x10, x30, x6	# 1267
	add		x10, x7, x10	# 1267
	flw		f7, 0(x10)	# 1267
	lw		x10, 36(x9)	# 545
	mul		x11, x30, x8	# 550
	add		x10, x10, x11	# 550
	flw		f8, 0(x10)	# 550
	fmul	f7, f7, f8	# 1267
	fadd	f5, f5, f7	# 1267
	fadd	f7, f0, f17	# 126
	fmul	f5, f5, f7	# 126
	fsub	f1, f1, f5	# 1267
	mul		x10, x30, x6	# 1267
	add		x10, x4, x10	# 1267
	fsw		f1, 0(x10)	# 1267
	mul		x10, x30, x8	# 1268
	add		x10, x7, x10	# 1268
	flw		f1, 0(x10)	# 1268
	lw		x9, 36(x9)	# 525
	mul		x10, x30, x5	# 530
	add		x9, x9, x10	# 530
	flw		f5, 0(x9)	# 530
	fmul	f1, f1, f5	# 1268
	mul		x9, x30, x5	# 1268
	add		x9, x7, x9	# 1268
	flw		f9, 0(x9)	# 1268
	fmul	f8, f9, f8	# 1268
	fadd	f1, f1, f8	# 1268
	fmul	f1, f1, f7	# 126
	fsub	f1, f2, f1	# 1268
	mul		x8, x30, x8	# 1268
	add		x8, x4, x8	# 1268
	fsw		f1, 0(x8)	# 1268
	mul		x8, x30, x6	# 1269
	add		x8, x7, x8	# 1269
	flw		f1, 0(x8)	# 1269
	fmul	f1, f1, f5	# 1269
	mul		x5, x30, x5	# 1269
	add		x5, x7, x5	# 1269
	flw		f2, 0(x5)	# 1269
	fmul	f2, f2, f6	# 1269
	fadd	f1, f1, f2	# 1269
	fmul	f1, f1, f7	# 126
	fsub	f1, f3, f1	# 1269
	lw		x5, -24(x2)	# 1269
	mul		x5, x30, x5	# 1269
	add		x5, x4, x5	# 1269
	fsw		f1, 0(x5)	# 1269
	jal		x0, beq_cont.29724	# 1266
beq.29725:
	mul		x5, x30, x6	# 1271
	add		x5, x4, x5	# 1271
	fsw		f1, 0(x5)	# 1271
	mul		x5, x30, x8	# 1272
	add		x5, x4, x5	# 1272
	fsw		f2, 0(x5)	# 1272
	lw		x5, -24(x2)	# 1273
	mul		x5, x30, x5	# 1273
	add		x5, x4, x5	# 1273
	fsw		f3, 0(x5)	# 1273
beq_cont.29724:
	flw		f1, -20(x2)	# 120
	feq		x31, f4, f1	# 120
	beq		x31, x0, feq_else.29727	# 120
	jal		x0, feq_cont.29726	# 120
feq_else.29727:
	addi	x5, x0, 4	# 1276
	fadd	f1, f0, f16	# 1276
	fdiv	f1, f1, f4	# 1276
	mul		x5, x30, x5	# 1276
	add		x5, x4, x5	# 1276
	fsw		f1, 0(x5)	# 1276
feq_cont.29726:
	lw		x5, -16(x2)	# 1294
	mul		x7, x30, x5	# 1294
	lw		x8, -12(x2)	# 1294
	add		x7, x8, x7	# 1294
	sw		x4, 0(x7)	# 1294
	jal		x0, beq_cont.29721	# 1291
beq.29722:
	addi	x6, x0, 4	# 1236
	sw		x12, -12(x2)	# 1236
	sw		x5, -16(x2)	# 1236
	sw		x8, -24(x2)	# 1236
	fsw		f1, -20(x2)	# 1236
	sw		x7, -32(x2)	# 1236
	sw		x11, -28(x2)	# 1236
	sw		x13, -36(x2)	# 1236
	sw		x9, -40(x2)	# 1236
	addi	x4, x6, 0
	sw		x1, -44(x2)	# 1236
	addi	x2, x2, -48	# 1236
	jal		x1, min_caml_create_float_array	# 1236
	addi	x2, x2, 48	# 1236
	lw		x1, -44(x2)	# 1236
	lw		x5, -40(x2)	# 1238
	mul		x6, x30, x5	# 1238
	lw		x7, -36(x2)	# 1238
	add		x6, x7, x6	# 1238
	flw		f1, 0(x6)	# 1238
	lw		x6, -28(x2)	# 405
	lw		x8, 16(x6)	# 405
	mul		x9, x30, x5	# 410
	add		x8, x8, x9	# 410
	flw		f2, 0(x8)	# 410
	fmul	f1, f1, f2	# 1238
	lw		x8, -8(x2)	# 1238
	mul		x9, x30, x8	# 1238
	add		x9, x7, x9	# 1238
	flw		f3, 0(x9)	# 1238
	lw		x9, 16(x6)	# 415
	mul		x10, x30, x8	# 420
	add		x9, x9, x10	# 420
	flw		f4, 0(x9)	# 420
	fmul	f3, f3, f4	# 1238
	fadd	f1, f1, f3	# 1238
	lw		x9, -32(x2)	# 1238
	mul		x10, x30, x9	# 1238
	add		x7, x7, x10	# 1238
	flw		f3, 0(x7)	# 1238
	lw		x6, 16(x6)	# 425
	mul		x7, x30, x9	# 430
	add		x6, x6, x7	# 430
	flw		f5, 0(x6)	# 430
	fmul	f3, f3, f5	# 1238
	fadd	f1, f1, f3	# 1238
	flw		f3, -20(x2)	# 121
	fle		x31, f1, f3	# 121
	beq		x31, x0, fle_else.29729	# 121
	mul		x5, x30, x5	# 1248
	add		x5, x4, x5	# 1248
	fsw		f3, 0(x5)	# 1248
	jal		x0, fle_cont.29728	# 121
fle_else.29729:
	fadd	f3, f0, f18	# 1242
	fdiv	f3, f3, f1	# 1242
	mul		x5, x30, x5	# 1242
	add		x5, x4, x5	# 1242
	fsw		f3, 0(x5)	# 1242
	fdiv	f2, f2, f1	# 1244
	fsub	f2, f0, f2	# 123
	mul		x5, x30, x8	# 1244
	add		x5, x4, x5	# 1244
	fsw		f2, 0(x5)	# 1244
	fdiv	f2, f4, f1	# 1245
	fsub	f2, f0, f2	# 123
	mul		x5, x30, x9	# 1245
	add		x5, x4, x5	# 1245
	fsw		f2, 0(x5)	# 1245
	fdiv	f1, f5, f1	# 1246
	fsub	f1, f0, f1	# 123
	lw		x5, -24(x2)	# 1246
	mul		x5, x30, x5	# 1246
	add		x5, x4, x5	# 1246
	fsw		f1, 0(x5)	# 1246
fle_cont.29728:
	lw		x5, -16(x2)	# 1292
	mul		x6, x30, x5	# 1292
	lw		x7, -12(x2)	# 1292
	add		x6, x7, x6	# 1292
	sw		x4, 0(x6)	# 1292
beq_cont.29721:
	jal		x0, beq_cont.29719	# 1289
beq.29720:
	addi	x14, x0, 6	# 1209
	sw		x12, -12(x2)	# 1209
	sw		x5, -16(x2)	# 1209
	sw		x6, -44(x2)	# 1209
	sw		x7, -32(x2)	# 1209
	sw		x8, -24(x2)	# 1209
	sw		x11, -28(x2)	# 1209
	fsw		f1, -20(x2)	# 1209
	sw		x13, -36(x2)	# 1209
	sw		x9, -40(x2)	# 1209
	addi	x4, x14, 0
	sw		x1, -48(x2)	# 1209
	addi	x2, x2, -52	# 1209
	jal		x1, min_caml_create_float_array	# 1209
	addi	x2, x2, 52	# 1209
	lw		x1, -48(x2)	# 1209
	lw		x5, -40(x2)	# 1211
	mul		x6, x30, x5	# 1211
	lw		x7, -36(x2)	# 1211
	add		x6, x7, x6	# 1211
	flw		f1, 0(x6)	# 1211
	flw		f2, -20(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.29731	# 120
	lw		x6, -8(x2)	# 1212
	mul		x8, x30, x6	# 1212
	add		x8, x4, x8	# 1212
	fsw		f2, 0(x8)	# 1212
	jal		x0, feq_cont.29730	# 120
feq_else.29731:
	lw		x6, -28(x2)	# 387
	lw		x8, 24(x6)	# 387
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.29733	# 122
	addi	x9, x0, 0	# 122
	jal		x0, fle_cont.29732	# 122
fle_else.29733:
	addi	x9, x0, 1	# 122
fle_cont.29732:
	beq		x8, x5, beq.29735	# 218
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.29737	# 122
	addi	x8, x0, 1	# 218
	jal		x0, fle_cont.29736	# 122
fle_else.29737:
	addi	x8, x0, 0	# 218
fle_cont.29736:
	jal		x0, beq_cont.29734	# 218
beq.29735:
	addi	x8, x9, 0	# 218
beq_cont.29734:
	lw		x9, 16(x6)	# 405
	mul		x10, x30, x5	# 410
	add		x9, x9, x10	# 410
	flw		f1, 0(x9)	# 410
	beq		x8, x5, beq.29739	# 233
	jal		x0, beq_cont.29738	# 233
beq.29739:
	fsub	f1, f0, f1	# 123
beq_cont.29738:
	mul		x8, x30, x5	# 1215
	add		x8, x4, x8	# 1215
	fsw		f1, 0(x8)	# 1215
	fadd	f1, f0, f16	# 1217
	mul		x8, x30, x5	# 1217
	add		x8, x7, x8	# 1217
	flw		f3, 0(x8)	# 1217
	fdiv	f1, f1, f3	# 1217
	lw		x8, -8(x2)	# 1217
	mul		x9, x30, x8	# 1217
	add		x9, x4, x9	# 1217
	fsw		f1, 0(x9)	# 1217
feq_cont.29730:
	lw		x6, -8(x2)	# 1219
	mul		x8, x30, x6	# 1219
	add		x8, x7, x8	# 1219
	flw		f1, 0(x8)	# 1219
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.29741	# 120
	lw		x8, -24(x2)	# 1220
	mul		x8, x30, x8	# 1220
	add		x8, x4, x8	# 1220
	fsw		f2, 0(x8)	# 1220
	jal		x0, feq_cont.29740	# 120
feq_else.29741:
	lw		x8, -28(x2)	# 387
	lw		x9, 24(x8)	# 387
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.29743	# 122
	addi	x10, x0, 0	# 122
	jal		x0, fle_cont.29742	# 122
fle_else.29743:
	addi	x10, x0, 1	# 122
fle_cont.29742:
	beq		x9, x5, beq.29745	# 218
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.29747	# 122
	addi	x9, x0, 1	# 218
	jal		x0, fle_cont.29746	# 122
fle_else.29747:
	addi	x9, x0, 0	# 218
fle_cont.29746:
	jal		x0, beq_cont.29744	# 218
beq.29745:
	addi	x9, x10, 0	# 218
beq_cont.29744:
	lw		x10, 16(x8)	# 415
	mul		x11, x30, x6	# 420
	add		x10, x10, x11	# 420
	flw		f1, 0(x10)	# 420
	beq		x9, x5, beq.29749	# 233
	jal		x0, beq_cont.29748	# 233
beq.29749:
	fsub	f1, f0, f1	# 123
beq_cont.29748:
	lw		x9, -32(x2)	# 1222
	mul		x10, x30, x9	# 1222
	add		x10, x4, x10	# 1222
	fsw		f1, 0(x10)	# 1222
	fadd	f1, f0, f16	# 1223
	mul		x10, x30, x6	# 1223
	add		x10, x7, x10	# 1223
	flw		f3, 0(x10)	# 1223
	fdiv	f1, f1, f3	# 1223
	lw		x10, -24(x2)	# 1223
	mul		x10, x30, x10	# 1223
	add		x10, x4, x10	# 1223
	fsw		f1, 0(x10)	# 1223
feq_cont.29740:
	lw		x8, -32(x2)	# 1225
	mul		x9, x30, x8	# 1225
	add		x9, x7, x9	# 1225
	flw		f1, 0(x9)	# 1225
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.29751	# 120
	lw		x5, -44(x2)	# 1226
	mul		x5, x30, x5	# 1226
	add		x5, x4, x5	# 1226
	fsw		f2, 0(x5)	# 1226
	jal		x0, feq_cont.29750	# 120
feq_else.29751:
	addi	x9, x0, 4	# 1228
	lw		x10, -28(x2)	# 387
	lw		x11, 24(x10)	# 387
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.29753	# 122
	addi	x12, x0, 0	# 122
	jal		x0, fle_cont.29752	# 122
fle_else.29753:
	addi	x12, x0, 1	# 122
fle_cont.29752:
	beq		x11, x5, beq.29755	# 218
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.29757	# 122
	addi	x11, x0, 1	# 218
	jal		x0, fle_cont.29756	# 122
fle_else.29757:
	addi	x11, x0, 0	# 218
fle_cont.29756:
	jal		x0, beq_cont.29754	# 218
beq.29755:
	addi	x11, x12, 0	# 218
beq_cont.29754:
	lw		x10, 16(x10)	# 425
	mul		x12, x30, x8	# 430
	add		x10, x10, x12	# 430
	flw		f1, 0(x10)	# 430
	beq		x11, x5, beq.29759	# 233
	jal		x0, beq_cont.29758	# 233
beq.29759:
	fsub	f1, f0, f1	# 123
beq_cont.29758:
	mul		x5, x30, x9	# 1228
	add		x5, x4, x5	# 1228
	fsw		f1, 0(x5)	# 1228
	fadd	f1, f0, f16	# 1229
	mul		x5, x30, x8	# 1229
	add		x5, x7, x5	# 1229
	flw		f2, 0(x5)	# 1229
	fdiv	f1, f1, f2	# 1229
	lw		x5, -44(x2)	# 1229
	mul		x5, x30, x5	# 1229
	add		x5, x4, x5	# 1229
	fsw		f1, 0(x5)	# 1229
feq_cont.29750:
	lw		x5, -16(x2)	# 1290
	mul		x7, x30, x5	# 1290
	lw		x8, -12(x2)	# 1290
	add		x7, x8, x7	# 1290
	sw		x4, 0(x7)	# 1290
beq_cont.29719:
	lw		x4, -8(x2)	# 1296
	sub		x5, x5, x4	# 1296
	lw		x4, 0(x2)	# 1296
	lw		x29, -4(x2)	# 1296
	lw		x31, 0(x29)	# 1296
	jalr	x0, x31, 0	# 1296
setup_startp_constants.2812.16753:
	lw		x6, 16(x29)	# 1309
	lw		x7, 12(x29)	# 1309
	lw		x8, 8(x29)	# 1309
	lw		x9, 4(x29)	# 1309
	ble		x8, x5, ble.29760	# 1309
	jalr	x0, x1, 0	# 1324
ble.29760:
	mul		x10, x30, x5	# 1310
	addi	x10, x10, 60048	# 1310
	lw		x10, 0(x10)	# 1310
	lw		x11, 40(x10)	# 562
	lw		x12, 4(x10)	# 367
	mul		x13, x30, x8	# 1313
	add		x13, x4, x13	# 1313
	flw		f1, 0(x13)	# 1313
	lw		x13, 20(x10)	# 445
	mul		x14, x30, x8	# 450
	add		x13, x13, x14	# 450
	flw		f2, 0(x13)	# 450
	fsub	f1, f1, f2	# 1313
	mul		x13, x30, x8	# 1313
	add		x13, x11, x13	# 1313
	fsw		f1, 0(x13)	# 1313
	mul		x13, x30, x9	# 1314
	add		x13, x4, x13	# 1314
	flw		f1, 0(x13)	# 1314
	lw		x13, 20(x10)	# 455
	mul		x14, x30, x9	# 460
	add		x13, x13, x14	# 460
	flw		f2, 0(x13)	# 460
	fsub	f1, f1, f2	# 1314
	mul		x13, x30, x9	# 1314
	add		x13, x11, x13	# 1314
	fsw		f1, 0(x13)	# 1314
	mul		x13, x30, x6	# 1315
	add		x13, x4, x13	# 1315
	flw		f1, 0(x13)	# 1315
	lw		x13, 20(x10)	# 465
	mul		x14, x30, x6	# 470
	add		x13, x13, x14	# 470
	flw		f2, 0(x13)	# 470
	fsub	f1, f1, f2	# 1315
	mul		x13, x30, x6	# 1315
	add		x13, x11, x13	# 1315
	fsw		f1, 0(x13)	# 1315
	beq		x12, x6, beq.29763	# 1316
	ble		x12, x6, ble_cont.29764	# 1319
	mul		x13, x30, x8	# 1320
	add		x13, x11, x13	# 1320
	flw		f1, 0(x13)	# 1320
	mul		x13, x30, x9	# 1320
	add		x13, x11, x13	# 1320
	flw		f2, 0(x13)	# 1320
	mul		x13, x30, x6	# 1320
	add		x13, x11, x13	# 1320
	flw		f3, 0(x13)	# 1320
	fmul	f4, f1, f1	# 127
	lw		x13, 16(x10)	# 405
	mul		x14, x30, x8	# 410
	add		x13, x13, x14	# 410
	flw		f5, 0(x13)	# 410
	fmul	f4, f4, f5	# 981
	fmul	f5, f2, f2	# 127
	lw		x13, 16(x10)	# 415
	mul		x14, x30, x9	# 420
	add		x13, x13, x14	# 420
	flw		f6, 0(x13)	# 420
	fmul	f5, f5, f6	# 981
	fadd	f4, f4, f5	# 981
	fmul	f5, f3, f3	# 127
	lw		x13, 16(x10)	# 425
	mul		x14, x30, x6	# 430
	add		x13, x13, x14	# 430
	flw		f6, 0(x13)	# 430
	fmul	f5, f5, f6	# 981
	fadd	f4, f4, f5	# 981
	lw		x13, 12(x10)	# 396
	beq		x13, x8, beq.29766	# 983
	fmul	f5, f2, f3	# 987
	lw		x13, 36(x10)	# 525
	mul		x8, x30, x8	# 530
	add		x8, x13, x8	# 530
	flw		f6, 0(x8)	# 530
	fmul	f5, f5, f6	# 987
	fadd	f4, f4, f5	# 986
	fmul	f3, f3, f1	# 988
	lw		x8, 36(x10)	# 535
	mul		x13, x30, x9	# 540
	add		x8, x8, x13	# 540
	flw		f5, 0(x8)	# 540
	fmul	f3, f3, f5	# 988
	fadd	f3, f4, f3	# 986
	fmul	f1, f1, f2	# 989
	lw		x8, 36(x10)	# 545
	mul		x6, x30, x6	# 550
	add		x6, x8, x6	# 550
	flw		f2, 0(x6)	# 550
	fmul	f1, f1, f2	# 989
	fadd	f1, f3, f1	# 986
	jal		x0, beq_cont.29765	# 983
beq.29766:
	fadd	f1, f0, f4	# 984
beq_cont.29765:
	beq		x12, x7, beq.29768	# 1321
	jal		x0, beq_cont.29767	# 1321
beq.29768:
	fadd	f2, f0, f16	# 1321
	fsub	f1, f1, f2	# 1321
beq_cont.29767:
	mul		x6, x30, x7	# 1321
	add		x6, x11, x6	# 1321
	fsw		f1, 0(x6)	# 1321
ble_cont.29764:
	jal		x0, beq_cont.29762	# 1316
beq.29763:
	lw		x10, 16(x10)	# 435
	mul		x12, x30, x8	# 1318
	add		x12, x11, x12	# 1318
	flw		f1, 0(x12)	# 1318
	mul		x12, x30, x9	# 1318
	add		x12, x11, x12	# 1318
	flw		f2, 0(x12)	# 1318
	mul		x12, x30, x6	# 1318
	add		x12, x11, x12	# 1318
	flw		f3, 0(x12)	# 1318
	mul		x8, x30, x8	# 311
	add		x8, x10, x8	# 311
	flw		f4, 0(x8)	# 311
	fmul	f1, f4, f1	# 311
	mul		x8, x30, x9	# 311
	add		x8, x10, x8	# 311
	flw		f4, 0(x8)	# 311
	fmul	f2, f4, f2	# 311
	fadd	f1, f1, f2	# 311
	mul		x6, x30, x6	# 311
	add		x6, x10, x6	# 311
	flw		f2, 0(x6)	# 311
	fmul	f2, f2, f3	# 311
	fadd	f1, f1, f2	# 311
	mul		x6, x30, x7	# 1317
	add		x6, x11, x6	# 1317
	fsw		f1, 0(x6)	# 1317
beq_cont.29762:
	sub		x5, x5, x9	# 1323
	lw		x31, 0(x29)	# 1323
	jalr	x0, x31, 0	# 1323
check_all_inside.2837.16756:
	lw		x6, 24(x29)	# 1378
	lw		x7, 20(x29)	# 1378
	lw		x8, 16(x29)	# 1378
	lw		x9, 12(x29)	# 1378
	lw		x10, 8(x29)	# 1378
	flw		f4, 4(x29)	# 1378
	mul		x11, x30, x4	# 1378
	add		x11, x5, x11	# 1378
	lw		x11, 0(x11)	# 1378
	beq		x11, x7, beq.29769	# 1379
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
	beq		x11, x10, beq.29771	# 1368
	beq		x11, x6, beq.29773	# 1370
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
	beq		x11, x9, beq.29775	# 983
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
	jal		x0, beq_cont.29774	# 983
beq.29775:
	fadd	f5, f0, f8	# 984
beq_cont.29774:
	lw		x6, 4(x7)	# 367
	beq		x6, x8, beq.29777	# 1358
	jal		x0, beq_cont.29776	# 1358
beq.29777:
	fadd	f6, f0, f16	# 1358
	fsub	f5, f5, f6	# 1358
beq_cont.29776:
	lw		x6, 24(x7)	# 387
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.29779	# 122
	addi	x7, x0, 0	# 122
	jal		x0, fle_cont.29778	# 122
fle_else.29779:
	addi	x7, x0, 1	# 122
fle_cont.29778:
	beq		x6, x9, beq.29781	# 218
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.29783	# 122
	addi	x6, x0, 1	# 218
	jal		x0, fle_cont.29782	# 122
fle_else.29783:
	addi	x6, x0, 0	# 218
fle_cont.29782:
	jal		x0, beq_cont.29780	# 218
beq.29781:
	addi	x6, x7, 0	# 218
beq_cont.29780:
	beq		x6, x9, beq.29785	# 1359
	addi	x6, x0, 0	# 1359
	jal		x0, beq_cont.29784	# 1359
beq.29785:
	addi	x6, x0, 1	# 1359
beq_cont.29784:
	jal		x0, beq_cont.29772	# 1370
beq.29773:
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
	beq		x31, x0, fle_else.29787	# 122
	addi	x7, x0, 0	# 122
	jal		x0, fle_cont.29786	# 122
fle_else.29787:
	addi	x7, x0, 1	# 122
fle_cont.29786:
	beq		x6, x9, beq.29789	# 218
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.29791	# 122
	addi	x6, x0, 1	# 218
	jal		x0, fle_cont.29790	# 122
fle_else.29791:
	addi	x6, x0, 0	# 218
fle_cont.29790:
	jal		x0, beq_cont.29788	# 218
beq.29789:
	addi	x6, x7, 0	# 218
beq_cont.29788:
	beq		x6, x9, beq.29793	# 1352
	addi	x6, x0, 0	# 1352
	jal		x0, beq_cont.29792	# 1352
beq.29793:
	addi	x6, x0, 1	# 1352
beq_cont.29792:
beq_cont.29772:
	jal		x0, beq_cont.29770	# 1368
beq.29771:
	fle		x31, f5, f4	# 124
	beq		x31, x0, fle_cont.29794	# 124
	fsub	f5, f0, f5	# 124
fle_cont.29794:
	lw		x8, 16(x7)	# 405
	mul		x11, x30, x9	# 410
	add		x8, x8, x11	# 410
	flw		f8, 0(x8)	# 410
	fle		x31, f8, f5	# 125
	beq		x31, x0, fle_else.29796	# 125
	addi	x6, x0, 0	# 1345
	jal		x0, fle_cont.29795	# 125
fle_else.29796:
	fle		x31, f6, f4	# 124
	beq		x31, x0, fle_else.29798	# 124
	fsub	f5, f0, f6	# 124
	jal		x0, fle_cont.29797	# 124
fle_else.29798:
	fadd	f5, f0, f6	# 124
fle_cont.29797:
	lw		x8, 16(x7)	# 415
	mul		x11, x30, x10	# 420
	add		x8, x8, x11	# 420
	flw		f6, 0(x8)	# 420
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.29800	# 125
	addi	x6, x0, 0	# 1344
	jal		x0, fle_cont.29799	# 125
fle_else.29800:
	fle		x31, f7, f4	# 124
	beq		x31, x0, fle_else.29802	# 124
	fsub	f4, f0, f7	# 124
	jal		x0, fle_cont.29801	# 124
fle_else.29802:
	fadd	f4, f0, f7	# 124
fle_cont.29801:
	lw		x8, 16(x7)	# 425
	mul		x6, x30, x6	# 430
	add		x6, x8, x6	# 430
	flw		f5, 0(x6)	# 430
	fle		x31, f5, f4	# 125
	beq		x31, x0, fle_else.29804	# 125
	addi	x6, x0, 0	# 125
	jal		x0, fle_cont.29803	# 125
fle_else.29804:
	addi	x6, x0, 1	# 125
fle_cont.29803:
fle_cont.29799:
fle_cont.29795:
	beq		x6, x9, beq.29806	# 1340
	lw		x6, 24(x7)	# 387
	jal		x0, beq_cont.29805	# 1340
beq.29806:
	lw		x6, 24(x7)	# 387
	beq		x6, x9, beq.29808	# 1346
	addi	x6, x0, 0	# 1346
	jal		x0, beq_cont.29807	# 1346
beq.29808:
	addi	x6, x0, 1	# 1346
beq_cont.29807:
beq_cont.29805:
beq_cont.29770:
	beq		x6, x9, beq.29809	# 1382
	addi	x4, x0, 0	# 1383
	jalr	x0, x1, 0	# 1383
beq.29809:
	add		x4, x4, x10	# 1385
	lw		x31, 0(x29)	# 1385
	jalr	x0, x31, 0	# 1385
beq.29769:
	addi	x4, x0, 1	# 1380
	jalr	x0, x1, 0	# 1380
shadow_check_and_group.2843.16762:
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
	beq		x13, x9, beq.29810	# 1398
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
	beq		x15, x12, beq.29812	# 1147
	beq		x15, x8, beq.29814	# 1149
	mul		x7, x30, x11	# 1121
	add		x7, x14, x7	# 1121
	flw		f5, 0(x7)	# 1121
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.29816	# 120
	addi	x7, x0, 0	# 1123
	jal		x0, feq_cont.29815	# 120
feq_else.29816:
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
	beq		x7, x11, beq.29818	# 983
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
	jal		x0, beq_cont.29817	# 983
beq.29818:
	fadd	f2, f0, f7	# 984
beq_cont.29817:
	lw		x7, 4(x9)	# 367
	beq		x7, x10, beq.29820	# 1127
	jal		x0, beq_cont.29819	# 1127
beq.29820:
	fadd	f3, f0, f16	# 1127
	fsub	f2, f2, f3	# 1127
beq_cont.29819:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1128
	fsub	f2, f3, f2	# 1128
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.29822	# 121
	addi	x7, x0, 0	# 1135
	jal		x0, fle_cont.29821	# 121
fle_else.29822:
	lw		x7, 24(x9)	# 387
	beq		x7, x11, beq.29824	# 1130
	fsqrt	f1, f2	# 1131
	fadd	f1, f6, f1	# 1131
	addi	x7, x0, 4	# 1131
	mul		x7, x30, x7	# 1131
	add		x7, x14, x7	# 1131
	flw		f2, 0(x7)	# 1131
	fmul	f1, f1, f2	# 1131
	mul		x7, x30, x11	# 1131
	addi	x7, x7, 60540	# 1131
	fsw		f1, 0(x7)	# 1131
	jal		x0, beq_cont.29823	# 1130
beq.29824:
	fsqrt	f1, f2	# 1133
	fsub	f1, f6, f1	# 1133
	addi	x7, x0, 4	# 1133
	mul		x7, x30, x7	# 1133
	add		x7, x14, x7	# 1133
	flw		f2, 0(x7)	# 1133
	fmul	f1, f1, f2	# 1133
	mul		x7, x30, x11	# 1133
	addi	x7, x7, 60540	# 1133
	fsw		f1, 0(x7)	# 1133
beq_cont.29823:
	addi	x7, x0, 1	# 1134
fle_cont.29821:
feq_cont.29815:
	jal		x0, beq_cont.29813	# 1149
beq.29814:
	mul		x7, x30, x11	# 1111
	add		x7, x14, x7	# 1111
	flw		f5, 0(x7)	# 1111
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.29826	# 122
	addi	x7, x0, 0	# 1115
	jal		x0, fle_cont.29825	# 122
fle_else.29826:
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
fle_cont.29825:
beq_cont.29813:
	jal		x0, beq_cont.29811	# 1147
beq.29812:
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
	flw		f7, 0(x15)	# 1080
	fmul	f8, f5, f7	# 1080
	fadd	f8, f8, f3	# 1080
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.29827	# 124
	fsub	f8, f0, f8	# 124
fle_cont.29827:
	lw		x15, 16(x9)	# 415
	mul		x16, x30, x12	# 420
	add		x15, x15, x16	# 420
	flw		f9, 0(x15)	# 420
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.29829	# 125
	addi	x15, x0, 0	# 1084
	jal		x0, fle_cont.29828	# 125
fle_else.29829:
	mul		x15, x30, x8	# 1081
	addi	x15, x15, 60736	# 1081
	flw		f8, 0(x15)	# 1081
	fmul	f8, f5, f8	# 1081
	fadd	f8, f8, f4	# 1081
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.29830	# 124
	fsub	f8, f0, f8	# 124
fle_cont.29830:
	lw		x15, 16(x9)	# 425
	mul		x16, x30, x8	# 430
	add		x15, x15, x16	# 430
	flw		f9, 0(x15)	# 430
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.29832	# 125
	addi	x15, x0, 0	# 1083
	jal		x0, fle_cont.29831	# 125
fle_else.29832:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.29834	# 120
	addi	x15, x0, 0	# 1082
	jal		x0, feq_cont.29833	# 120
feq_else.29834:
	addi	x15, x0, 1	# 1082
feq_cont.29833:
fle_cont.29831:
fle_cont.29828:
	beq		x15, x11, beq.29836	# 1079
	mul		x7, x30, x11	# 1086
	addi	x7, x7, 60540	# 1086
	fsw		f5, 0(x7)	# 1086
	addi	x7, x0, 1	# 1086
	jal		x0, beq_cont.29835	# 1079
beq.29836:
	mul		x15, x30, x8	# 1087
	add		x15, x14, x15	# 1087
	flw		f5, 0(x15)	# 1087
	fsub	f5, f5, f3	# 1087
	mul		x10, x30, x10	# 1087
	add		x10, x14, x10	# 1087
	flw		f6, 0(x10)	# 1087
	fmul	f5, f5, f6	# 1087
	mul		x10, x30, x11	# 1089
	addi	x10, x10, 60736	# 1089
	flw		f8, 0(x10)	# 1089
	fmul	f9, f5, f8	# 1089
	fadd	f9, f9, f2	# 1089
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.29837	# 124
	fsub	f9, f0, f9	# 124
fle_cont.29837:
	lw		x10, 16(x9)	# 405
	mul		x15, x30, x11	# 410
	add		x10, x10, x15	# 410
	flw		f10, 0(x10)	# 410
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.29839	# 125
	addi	x10, x0, 0	# 1093
	jal		x0, fle_cont.29838	# 125
fle_else.29839:
	mul		x10, x30, x8	# 1090
	addi	x10, x10, 60736	# 1090
	flw		f9, 0(x10)	# 1090
	fmul	f9, f5, f9	# 1090
	fadd	f9, f9, f4	# 1090
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.29840	# 124
	fsub	f9, f0, f9	# 124
fle_cont.29840:
	lw		x10, 16(x9)	# 425
	mul		x15, x30, x8	# 430
	add		x10, x10, x15	# 430
	flw		f10, 0(x10)	# 430
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.29842	# 125
	addi	x10, x0, 0	# 1092
	jal		x0, fle_cont.29841	# 125
fle_else.29842:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.29844	# 120
	addi	x10, x0, 0	# 1091
	jal		x0, feq_cont.29843	# 120
feq_else.29844:
	addi	x10, x0, 1	# 1091
feq_cont.29843:
fle_cont.29841:
fle_cont.29838:
	beq		x10, x11, beq.29846	# 1088
	mul		x7, x30, x11	# 1095
	addi	x7, x7, 60540	# 1095
	fsw		f5, 0(x7)	# 1095
	addi	x7, x0, 2	# 1095
	jal		x0, beq_cont.29845	# 1088
beq.29846:
	addi	x10, x0, 4	# 1096
	mul		x10, x30, x10	# 1096
	add		x10, x14, x10	# 1096
	flw		f5, 0(x10)	# 1096
	fsub	f4, f5, f4	# 1096
	mul		x7, x30, x7	# 1096
	add		x7, x14, x7	# 1096
	flw		f5, 0(x7)	# 1096
	fmul	f4, f4, f5	# 1096
	fmul	f6, f4, f8	# 1098
	fadd	f2, f6, f2	# 1098
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.29847	# 124
	fsub	f2, f0, f2	# 124
fle_cont.29847:
	lw		x7, 16(x9)	# 405
	mul		x10, x30, x11	# 410
	add		x7, x7, x10	# 410
	flw		f6, 0(x7)	# 410
	fle		x31, f6, f2	# 125
	beq		x31, x0, fle_else.29849	# 125
	addi	x7, x0, 0	# 1102
	jal		x0, fle_cont.29848	# 125
fle_else.29849:
	fmul	f2, f4, f7	# 1099
	fadd	f2, f2, f3	# 1099
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.29850	# 124
	fsub	f2, f0, f2	# 124
fle_cont.29850:
	lw		x7, 16(x9)	# 415
	mul		x9, x30, x12	# 420
	add		x7, x7, x9	# 420
	flw		f3, 0(x7)	# 420
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.29852	# 125
	addi	x7, x0, 0	# 1101
	jal		x0, fle_cont.29851	# 125
fle_else.29852:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.29854	# 120
	addi	x7, x0, 0	# 1100
	jal		x0, feq_cont.29853	# 120
feq_else.29854:
	addi	x7, x0, 1	# 1100
feq_cont.29853:
fle_cont.29851:
fle_cont.29848:
	beq		x7, x11, beq.29856	# 1097
	mul		x7, x30, x11	# 1104
	addi	x7, x7, 60540	# 1104
	fsw		f4, 0(x7)	# 1104
	addi	x7, x0, 3	# 1104
	jal		x0, beq_cont.29855	# 1097
beq.29856:
	addi	x7, x0, 0	# 1106
beq_cont.29855:
beq_cont.29845:
beq_cont.29835:
beq_cont.29811:
	mul		x9, x30, x11	# 1403
	addi	x9, x9, 60540	# 1403
	flw		f1, 0(x9)	# 1403
	beq		x7, x11, beq.29858	# 1404
	lui		x7, %hi(l.24648)	# 1404
	ori		x7, x0, %lo(l.24648)	# 1404
	flw		f2, 0(x7)	# 1404
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.29860	# 125
	addi	x7, x0, 0	# 125
	jal		x0, fle_cont.29859	# 125
fle_else.29860:
	addi	x7, x0, 1	# 125
fle_cont.29859:
	jal		x0, beq_cont.29857	# 1404
beq.29858:
	addi	x7, x0, 0	# 1404
beq_cont.29857:
	beq		x7, x11, beq.29861	# 1404
	fadd	f2, f0, f27	# 1407
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
	beq		x4, x5, beq.29862	# 1411
	addi	x4, x0, 1	# 1412
	jalr	x0, x1, 0	# 1412
beq.29862:
	lw		x4, -8(x2)	# 1414
	lw		x5, -12(x2)	# 1414
	add		x4, x5, x4	# 1414
	lw		x5, 0(x2)	# 1414
	lw		x29, -4(x2)	# 1414
	lw		x31, 0(x29)	# 1414
	jalr	x0, x31, 0	# 1414
beq.29861:
	mul		x6, x30, x13	# 1420
	addi	x6, x6, 60048	# 1420
	lw		x6, 0(x6)	# 1420
	lw		x6, 24(x6)	# 387
	beq		x6, x11, beq.29863	# 1420
	add		x4, x4, x12	# 1421
	lw		x31, 0(x29)	# 1421
	jalr	x0, x31, 0	# 1421
beq.29863:
	addi	x4, x0, 0	# 1423
	jalr	x0, x1, 0	# 1423
beq.29810:
	addi	x4, x0, 0	# 1399
	jalr	x0, x1, 0	# 1399
shadow_check_one_or_group.2846.16765:
	lw		x6, 16(x29)	# 1428
	lw		x7, 12(x29)	# 1428
	lw		x8, 8(x29)	# 1428
	lw		x9, 4(x29)	# 1428
	mul		x10, x30, x4	# 1428
	add		x10, x5, x10	# 1428
	lw		x10, 0(x10)	# 1428
	beq		x10, x7, beq.29864	# 1429
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
	beq		x4, x5, beq.29865	# 1434
	addi	x4, x0, 1	# 1435
	jalr	x0, x1, 0	# 1435
beq.29865:
	lw		x4, -8(x2)	# 1437
	lw		x5, -12(x2)	# 1437
	add		x4, x5, x4	# 1437
	lw		x5, 0(x2)	# 1437
	lw		x29, -4(x2)	# 1437
	lw		x31, 0(x29)	# 1437
	jalr	x0, x31, 0	# 1437
beq.29864:
	addi	x4, x0, 0	# 1430
	jalr	x0, x1, 0	# 1430
shadow_check_one_or_matrix.2849.16768:
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
	beq		x14, x9, beq.29866	# 1445
	addi	x9, x0, 99	# 1449
	sw		x13, 0(x2)	# 1449
	sw		x6, -4(x2)	# 1449
	sw		x5, -8(x2)	# 1449
	sw		x29, -12(x2)	# 1449
	sw		x12, -16(x2)	# 1449
	sw		x4, -20(x2)	# 1449
	sw		x11, -24(x2)	# 1449
	beq		x14, x9, beq.29868	# 1449
	mul		x9, x30, x14	# 1140
	addi	x9, x9, 60048	# 1140
	lw		x9, 0(x9)	# 1140
	mul		x15, x30, x11	# 1141
	addi	x15, x15, 60552	# 1141
	flw		f2, 0(x15)	# 1141
	lw		x15, 20(x9)	# 445
	mul		x16, x30, x11	# 450
	add		x15, x15, x16	# 450
	flw		f3, 0(x15)	# 450
	fsub	f2, f2, f3	# 1141
	mul		x15, x30, x12	# 1142
	addi	x15, x15, 60552	# 1142
	flw		f3, 0(x15)	# 1142
	lw		x15, 20(x9)	# 455
	mul		x16, x30, x12	# 460
	add		x15, x15, x16	# 460
	flw		f4, 0(x15)	# 460
	fsub	f3, f3, f4	# 1142
	mul		x15, x30, x8	# 1143
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
	beq		x15, x12, beq.29870	# 1147
	beq		x15, x8, beq.29872	# 1149
	mul		x7, x30, x11	# 1121
	add		x7, x14, x7	# 1121
	flw		f5, 0(x7)	# 1121
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.29874	# 120
	addi	x7, x0, 0	# 1123
	jal		x0, feq_cont.29873	# 120
feq_else.29874:
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
	beq		x7, x11, beq.29876	# 983
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
	jal		x0, beq_cont.29875	# 983
beq.29876:
	fadd	f2, f0, f7	# 984
beq_cont.29875:
	lw		x7, 4(x9)	# 367
	beq		x7, x10, beq.29878	# 1127
	jal		x0, beq_cont.29877	# 1127
beq.29878:
	fadd	f3, f0, f16	# 1127
	fsub	f2, f2, f3	# 1127
beq_cont.29877:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1128
	fsub	f2, f3, f2	# 1128
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.29880	# 121
	addi	x7, x0, 0	# 1135
	jal		x0, fle_cont.29879	# 121
fle_else.29880:
	lw		x7, 24(x9)	# 387
	beq		x7, x11, beq.29882	# 1130
	fsqrt	f1, f2	# 1131
	fadd	f1, f6, f1	# 1131
	addi	x7, x0, 4	# 1131
	mul		x7, x30, x7	# 1131
	add		x7, x14, x7	# 1131
	flw		f2, 0(x7)	# 1131
	fmul	f1, f1, f2	# 1131
	mul		x7, x30, x11	# 1131
	addi	x7, x7, 60540	# 1131
	fsw		f1, 0(x7)	# 1131
	jal		x0, beq_cont.29881	# 1130
beq.29882:
	fsqrt	f1, f2	# 1133
	fsub	f1, f6, f1	# 1133
	addi	x7, x0, 4	# 1133
	mul		x7, x30, x7	# 1133
	add		x7, x14, x7	# 1133
	flw		f2, 0(x7)	# 1133
	fmul	f1, f1, f2	# 1133
	mul		x7, x30, x11	# 1133
	addi	x7, x7, 60540	# 1133
	fsw		f1, 0(x7)	# 1133
beq_cont.29881:
	addi	x7, x0, 1	# 1134
fle_cont.29879:
feq_cont.29873:
	jal		x0, beq_cont.29871	# 1149
beq.29872:
	mul		x7, x30, x11	# 1111
	add		x7, x14, x7	# 1111
	flw		f5, 0(x7)	# 1111
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.29884	# 122
	addi	x7, x0, 0	# 1115
	jal		x0, fle_cont.29883	# 122
fle_else.29884:
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
fle_cont.29883:
beq_cont.29871:
	jal		x0, beq_cont.29869	# 1147
beq.29870:
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
	flw		f7, 0(x15)	# 1080
	fmul	f8, f5, f7	# 1080
	fadd	f8, f8, f3	# 1080
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.29885	# 124
	fsub	f8, f0, f8	# 124
fle_cont.29885:
	lw		x15, 16(x9)	# 415
	mul		x16, x30, x12	# 420
	add		x15, x15, x16	# 420
	flw		f9, 0(x15)	# 420
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.29887	# 125
	addi	x15, x0, 0	# 1084
	jal		x0, fle_cont.29886	# 125
fle_else.29887:
	mul		x15, x30, x8	# 1081
	addi	x15, x15, 60736	# 1081
	flw		f8, 0(x15)	# 1081
	fmul	f8, f5, f8	# 1081
	fadd	f8, f8, f4	# 1081
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.29888	# 124
	fsub	f8, f0, f8	# 124
fle_cont.29888:
	lw		x15, 16(x9)	# 425
	mul		x16, x30, x8	# 430
	add		x15, x15, x16	# 430
	flw		f9, 0(x15)	# 430
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.29890	# 125
	addi	x15, x0, 0	# 1083
	jal		x0, fle_cont.29889	# 125
fle_else.29890:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.29892	# 120
	addi	x15, x0, 0	# 1082
	jal		x0, feq_cont.29891	# 120
feq_else.29892:
	addi	x15, x0, 1	# 1082
feq_cont.29891:
fle_cont.29889:
fle_cont.29886:
	beq		x15, x11, beq.29894	# 1079
	mul		x7, x30, x11	# 1086
	addi	x7, x7, 60540	# 1086
	fsw		f5, 0(x7)	# 1086
	addi	x7, x0, 1	# 1086
	jal		x0, beq_cont.29893	# 1079
beq.29894:
	mul		x15, x30, x8	# 1087
	add		x15, x14, x15	# 1087
	flw		f5, 0(x15)	# 1087
	fsub	f5, f5, f3	# 1087
	mul		x10, x30, x10	# 1087
	add		x10, x14, x10	# 1087
	flw		f6, 0(x10)	# 1087
	fmul	f5, f5, f6	# 1087
	mul		x10, x30, x11	# 1089
	addi	x10, x10, 60736	# 1089
	flw		f8, 0(x10)	# 1089
	fmul	f9, f5, f8	# 1089
	fadd	f9, f9, f2	# 1089
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.29895	# 124
	fsub	f9, f0, f9	# 124
fle_cont.29895:
	lw		x10, 16(x9)	# 405
	mul		x15, x30, x11	# 410
	add		x10, x10, x15	# 410
	flw		f10, 0(x10)	# 410
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.29897	# 125
	addi	x8, x0, 0	# 1093
	jal		x0, fle_cont.29896	# 125
fle_else.29897:
	mul		x10, x30, x8	# 1090
	addi	x10, x10, 60736	# 1090
	flw		f9, 0(x10)	# 1090
	fmul	f9, f5, f9	# 1090
	fadd	f9, f9, f4	# 1090
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.29898	# 124
	fsub	f9, f0, f9	# 124
fle_cont.29898:
	lw		x10, 16(x9)	# 425
	mul		x8, x30, x8	# 430
	add		x8, x10, x8	# 430
	flw		f10, 0(x8)	# 430
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.29900	# 125
	addi	x8, x0, 0	# 1092
	jal		x0, fle_cont.29899	# 125
fle_else.29900:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.29902	# 120
	addi	x8, x0, 0	# 1091
	jal		x0, feq_cont.29901	# 120
feq_else.29902:
	addi	x8, x0, 1	# 1091
feq_cont.29901:
fle_cont.29899:
fle_cont.29896:
	beq		x8, x11, beq.29904	# 1088
	mul		x7, x30, x11	# 1095
	addi	x7, x7, 60540	# 1095
	fsw		f5, 0(x7)	# 1095
	addi	x7, x0, 2	# 1095
	jal		x0, beq_cont.29903	# 1088
beq.29904:
	addi	x8, x0, 4	# 1096
	mul		x8, x30, x8	# 1096
	add		x8, x14, x8	# 1096
	flw		f5, 0(x8)	# 1096
	fsub	f4, f5, f4	# 1096
	mul		x7, x30, x7	# 1096
	add		x7, x14, x7	# 1096
	flw		f5, 0(x7)	# 1096
	fmul	f4, f4, f5	# 1096
	fmul	f6, f4, f8	# 1098
	fadd	f2, f6, f2	# 1098
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.29905	# 124
	fsub	f2, f0, f2	# 124
fle_cont.29905:
	lw		x7, 16(x9)	# 405
	mul		x8, x30, x11	# 410
	add		x7, x7, x8	# 410
	flw		f6, 0(x7)	# 410
	fle		x31, f6, f2	# 125
	beq		x31, x0, fle_else.29907	# 125
	addi	x7, x0, 0	# 1102
	jal		x0, fle_cont.29906	# 125
fle_else.29907:
	fmul	f2, f4, f7	# 1099
	fadd	f2, f2, f3	# 1099
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.29908	# 124
	fsub	f2, f0, f2	# 124
fle_cont.29908:
	lw		x7, 16(x9)	# 415
	mul		x8, x30, x12	# 420
	add		x7, x7, x8	# 420
	flw		f3, 0(x7)	# 420
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.29910	# 125
	addi	x7, x0, 0	# 1101
	jal		x0, fle_cont.29909	# 125
fle_else.29910:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.29912	# 120
	addi	x7, x0, 0	# 1100
	jal		x0, feq_cont.29911	# 120
feq_else.29912:
	addi	x7, x0, 1	# 1100
feq_cont.29911:
fle_cont.29909:
fle_cont.29906:
	beq		x7, x11, beq.29914	# 1097
	mul		x7, x30, x11	# 1104
	addi	x7, x7, 60540	# 1104
	fsw		f4, 0(x7)	# 1104
	addi	x7, x0, 3	# 1104
	jal		x0, beq_cont.29913	# 1097
beq.29914:
	addi	x7, x0, 0	# 1106
beq_cont.29913:
beq_cont.29903:
beq_cont.29893:
beq_cont.29869:
	beq		x7, x11, beq.29916	# 1455
	mul		x7, x30, x11	# 1456
	addi	x7, x7, 60540	# 1456
	flw		f1, 0(x7)	# 1456
	fadd	f2, f0, f20	# 1456
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.29918	# 125
	addi	x4, x0, 0	# 1460
	jal		x0, fle_cont.29917	# 125
fle_else.29918:
	addi	x5, x13, 0
	addi	x4, x12, 0
	addi	x29, x6, 0
	sw		x1, -28(x2)	# 1457
	addi	x2, x2, -32	# 1457
	lw		x31, 0(x29)	# 1457
	jalr	x1, x31, 0	# 1457
	addi	x2, x2, 32	# 1457
	lw		x1, -28(x2)	# 1457
	lw		x5, -24(x2)	# 1457
	beq		x4, x5, beq.29920	# 1457
	addi	x4, x0, 1	# 1458
	jal		x0, beq_cont.29919	# 1457
beq.29920:
	addi	x4, x0, 0	# 1459
beq_cont.29919:
fle_cont.29917:
	jal		x0, beq_cont.29915	# 1455
beq.29916:
	addi	x4, x0, 0	# 1461
beq_cont.29915:
	jal		x0, beq_cont.29867	# 1449
beq.29868:
	addi	x4, x0, 1	# 1450
beq_cont.29867:
	lw		x5, -24(x2)	# 1448
	beq		x4, x5, beq.29921	# 1448
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
	beq		x4, x5, beq.29922	# 1463
	addi	x4, x0, 1	# 1464
	jalr	x0, x1, 0	# 1464
beq.29922:
	lw		x4, -16(x2)	# 1466
	lw		x5, -20(x2)	# 1466
	add		x4, x5, x4	# 1466
	lw		x5, -8(x2)	# 1466
	lw		x29, -12(x2)	# 1466
	lw		x31, 0(x29)	# 1466
	jalr	x0, x31, 0	# 1466
beq.29921:
	lw		x4, -16(x2)	# 1468
	lw		x5, -20(x2)	# 1468
	add		x4, x5, x4	# 1468
	lw		x5, -8(x2)	# 1468
	lw		x29, -12(x2)	# 1468
	lw		x31, 0(x29)	# 1468
	jalr	x0, x31, 0	# 1468
beq.29866:
	addi	x4, x0, 0	# 1446
	jalr	x0, x1, 0	# 1446
solve_each_element.2852.16771:
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
	beq		x13, x9, beq.29923	# 1480
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
	beq		x14, x12, beq.29925	# 1053
	beq		x14, x8, beq.29927	# 1054
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
	fmul	f10, f6, f6	# 127
	lw		x14, 16(x9)	# 415
	mul		x15, x30, x12	# 420
	add		x14, x14, x15	# 420
	flw		f11, 0(x14)	# 420
	fmul	f10, f10, f11	# 981
	fadd	f8, f8, f10	# 981
	fmul	f10, f7, f7	# 127
	lw		x14, 16(x9)	# 425
	mul		x15, x30, x8	# 430
	add		x14, x14, x15	# 430
	flw		f12, 0(x14)	# 430
	fmul	f10, f10, f12	# 981
	fadd	f8, f8, f10	# 981
	lw		x14, 12(x9)	# 396
	beq		x14, x11, beq_cont.29928	# 983
	fmul	f10, f6, f7	# 987
	lw		x15, 36(x9)	# 525
	mul		x16, x30, x11	# 530
	add		x15, x15, x16	# 530
	flw		f13, 0(x15)	# 530
	fmul	f10, f10, f13	# 987
	fadd	f8, f8, f10	# 986
	fmul	f10, f7, f5	# 988
	lw		x15, 36(x9)	# 535
	mul		x16, x30, x12	# 540
	add		x15, x15, x16	# 540
	flw		f13, 0(x15)	# 540
	fmul	f10, f10, f13	# 988
	fadd	f8, f8, f10	# 986
	fmul	f10, f5, f6	# 989
	lw		x15, 36(x9)	# 545
	mul		x16, x30, x8	# 550
	add		x15, x15, x16	# 550
	flw		f13, 0(x15)	# 550
	fmul	f10, f10, f13	# 989
	fadd	f8, f8, f10	# 986
beq_cont.29928:
	feq		x31, f8, f1	# 120
	beq		x31, x0, feq_else.29930	# 120
	addi	x9, x0, 0	# 1023
	jal		x0, feq_cont.29929	# 120
feq_else.29930:
	fmul	f10, f5, f2	# 995
	fmul	f10, f10, f9	# 995
	fmul	f13, f6, f3	# 996
	fmul	f13, f13, f11	# 996
	fadd	f10, f10, f13	# 995
	fmul	f13, f7, f4	# 997
	fmul	f13, f13, f12	# 997
	fadd	f10, f10, f13	# 995
	beq		x14, x11, beq.29932	# 999
	fmul	f13, f7, f3	# 1003
	fmul	f14, f6, f4	# 1003
	fadd	f13, f13, f14	# 1003
	lw		x15, 36(x9)	# 525
	mul		x16, x30, x11	# 530
	add		x15, x15, x16	# 530
	flw		f14, 0(x15)	# 530
	fmul	f13, f13, f14	# 1003
	fmul	f14, f5, f4	# 1004
	fmul	f7, f7, f2	# 1004
	fadd	f7, f14, f7	# 1004
	lw		x15, 36(x9)	# 535
	mul		x16, x30, x12	# 540
	add		x15, x15, x16	# 540
	flw		f14, 0(x15)	# 540
	fmul	f7, f7, f14	# 1004
	fadd	f7, f13, f7	# 1003
	fmul	f5, f5, f3	# 1005
	fmul	f6, f6, f2	# 1005
	fadd	f5, f5, f6	# 1005
	lw		x15, 36(x9)	# 545
	mul		x16, x30, x8	# 550
	add		x15, x15, x16	# 550
	flw		f6, 0(x15)	# 550
	fmul	f5, f5, f6	# 1005
	fadd	f5, f7, f5	# 1003
	fadd	f6, f0, f17	# 126
	fmul	f5, f5, f6	# 126
	fadd	f5, f10, f5	# 1002
	jal		x0, beq_cont.29931	# 999
beq.29932:
	fadd	f5, f0, f10	# 1000
beq_cont.29931:
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f9	# 981
	fmul	f7, f3, f3	# 127
	fmul	f7, f7, f11	# 981
	fadd	f6, f6, f7	# 981
	fmul	f7, f4, f4	# 127
	fmul	f7, f7, f12	# 981
	fadd	f6, f6, f7	# 981
	beq		x14, x11, beq.29934	# 983
	fmul	f7, f3, f4	# 987
	lw		x14, 36(x9)	# 525
	mul		x15, x30, x11	# 530
	add		x14, x14, x15	# 530
	flw		f9, 0(x14)	# 530
	fmul	f7, f7, f9	# 987
	fadd	f6, f6, f7	# 986
	fmul	f4, f4, f2	# 988
	lw		x14, 36(x9)	# 535
	mul		x15, x30, x12	# 540
	add		x14, x14, x15	# 540
	flw		f7, 0(x14)	# 540
	fmul	f4, f4, f7	# 988
	fadd	f4, f6, f4	# 986
	fmul	f2, f2, f3	# 989
	lw		x14, 36(x9)	# 545
	mul		x15, x30, x8	# 550
	add		x14, x14, x15	# 550
	flw		f3, 0(x14)	# 550
	fmul	f2, f2, f3	# 989
	fadd	f2, f4, f2	# 986
	jal		x0, beq_cont.29933	# 983
beq.29934:
	fadd	f2, f0, f6	# 984
beq_cont.29933:
	lw		x14, 4(x9)	# 367
	beq		x14, x10, beq.29936	# 1030
	jal		x0, beq_cont.29935	# 1030
beq.29936:
	fadd	f3, f0, f16	# 1030
	fsub	f2, f2, f3	# 1030
beq_cont.29935:
	fmul	f3, f5, f5	# 127
	fmul	f2, f8, f2	# 1032
	fsub	f2, f3, f2	# 1032
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.29938	# 121
	addi	x9, x0, 0	# 1040
	jal		x0, fle_cont.29937	# 121
fle_else.29938:
	fsqrt	f2, f2	# 1035
	lw		x9, 24(x9)	# 387
	beq		x9, x11, beq.29940	# 1036
	jal		x0, beq_cont.29939	# 1036
beq.29940:
	fsub	f2, f0, f2	# 123
beq_cont.29939:
	fsub	f2, f2, f5	# 1037
	fdiv	f2, f2, f8	# 1037
	mul		x9, x30, x11	# 1037
	addi	x9, x9, 60540	# 1037
	fsw		f2, 0(x9)	# 1037
	addi	x9, x0, 1	# 1037
fle_cont.29937:
feq_cont.29929:
	jal		x0, beq_cont.29926	# 1054
beq.29927:
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
	flw		f7, 0(x10)	# 306
	mul		x10, x30, x12	# 306
	add		x10, x9, x10	# 306
	flw		f8, 0(x10)	# 306
	fmul	f7, f7, f8	# 306
	fadd	f5, f5, f7	# 306
	mul		x10, x30, x8	# 306
	add		x10, x6, x10	# 306
	flw		f7, 0(x10)	# 306
	mul		x10, x30, x8	# 306
	add		x9, x9, x10	# 306
	flw		f9, 0(x9)	# 306
	fmul	f7, f7, f9	# 306
	fadd	f5, f5, f7	# 306
	fle		x31, f5, f1	# 121
	beq		x31, x0, fle_else.29942	# 121
	addi	x9, x0, 0	# 973
	jal		x0, fle_cont.29941	# 121
fle_else.29942:
	fmul	f2, f6, f2	# 311
	fmul	f3, f8, f3	# 311
	fadd	f2, f2, f3	# 311
	fmul	f3, f9, f4	# 311
	fadd	f2, f2, f3	# 311
	fsub	f2, f0, f2	# 123
	fdiv	f2, f2, f5	# 971
	mul		x9, x30, x11	# 971
	addi	x9, x9, 60540	# 971
	fsw		f2, 0(x9)	# 971
	addi	x9, x0, 1	# 972
fle_cont.29941:
beq_cont.29926:
	jal		x0, beq_cont.29924	# 1053
beq.29925:
	mul		x10, x30, x11	# 942
	add		x10, x6, x10	# 942
	flw		f5, 0(x10)	# 942
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.29944	# 120
	addi	x10, x0, 0	# 942
	jal		x0, feq_cont.29943	# 120
feq_else.29944:
	lw		x10, 16(x9)	# 435
	lw		x14, 24(x9)	# 387
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.29946	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.29945	# 122
fle_else.29946:
	addi	x15, x0, 1	# 122
fle_cont.29945:
	beq		x14, x11, beq.29948	# 218
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.29950	# 122
	addi	x14, x0, 1	# 218
	jal		x0, fle_cont.29949	# 122
fle_else.29950:
	addi	x14, x0, 0	# 218
fle_cont.29949:
	jal		x0, beq_cont.29947	# 218
beq.29948:
	addi	x14, x15, 0	# 218
beq_cont.29947:
	mul		x15, x30, x11	# 944
	add		x15, x10, x15	# 944
	flw		f6, 0(x15)	# 944
	beq		x14, x11, beq.29952	# 233
	jal		x0, beq_cont.29951	# 233
beq.29952:
	fsub	f6, f0, f6	# 123
beq_cont.29951:
	fsub	f6, f6, f2	# 946
	fdiv	f5, f6, f5	# 946
	mul		x14, x30, x12	# 947
	add		x14, x6, x14	# 947
	flw		f6, 0(x14)	# 947
	fmul	f6, f5, f6	# 947
	fadd	f6, f6, f3	# 947
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.29953	# 124
	fsub	f6, f0, f6	# 124
fle_cont.29953:
	mul		x14, x30, x12	# 947
	add		x14, x10, x14	# 947
	flw		f7, 0(x14)	# 947
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.29955	# 125
	addi	x10, x0, 0	# 951
	jal		x0, fle_cont.29954	# 125
fle_else.29955:
	mul		x14, x30, x8	# 948
	add		x14, x6, x14	# 948
	flw		f6, 0(x14)	# 948
	fmul	f6, f5, f6	# 948
	fadd	f6, f6, f4	# 948
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.29956	# 124
	fsub	f6, f0, f6	# 124
fle_cont.29956:
	mul		x14, x30, x8	# 948
	add		x10, x10, x14	# 948
	flw		f7, 0(x10)	# 948
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.29958	# 125
	addi	x10, x0, 0	# 950
	jal		x0, fle_cont.29957	# 125
fle_else.29958:
	mul		x10, x30, x11	# 949
	addi	x10, x10, 60540	# 949
	fsw		f5, 0(x10)	# 949
	addi	x10, x0, 1	# 949
fle_cont.29957:
fle_cont.29954:
feq_cont.29943:
	beq		x10, x11, beq.29960	# 957
	addi	x9, x0, 1	# 957
	jal		x0, beq_cont.29959	# 957
beq.29960:
	mul		x10, x30, x12	# 942
	add		x10, x6, x10	# 942
	flw		f5, 0(x10)	# 942
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.29962	# 120
	addi	x10, x0, 0	# 942
	jal		x0, feq_cont.29961	# 120
feq_else.29962:
	lw		x10, 16(x9)	# 435
	lw		x14, 24(x9)	# 387
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.29964	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.29963	# 122
fle_else.29964:
	addi	x15, x0, 1	# 122
fle_cont.29963:
	beq		x14, x11, beq.29966	# 218
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.29968	# 122
	addi	x14, x0, 1	# 218
	jal		x0, fle_cont.29967	# 122
fle_else.29968:
	addi	x14, x0, 0	# 218
fle_cont.29967:
	jal		x0, beq_cont.29965	# 218
beq.29966:
	addi	x14, x15, 0	# 218
beq_cont.29965:
	mul		x15, x30, x12	# 944
	add		x15, x10, x15	# 944
	flw		f6, 0(x15)	# 944
	beq		x14, x11, beq.29970	# 233
	jal		x0, beq_cont.29969	# 233
beq.29970:
	fsub	f6, f0, f6	# 123
beq_cont.29969:
	fsub	f6, f6, f3	# 946
	fdiv	f5, f6, f5	# 946
	mul		x14, x30, x8	# 947
	add		x14, x6, x14	# 947
	flw		f6, 0(x14)	# 947
	fmul	f6, f5, f6	# 947
	fadd	f6, f6, f4	# 947
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.29971	# 124
	fsub	f6, f0, f6	# 124
fle_cont.29971:
	mul		x14, x30, x8	# 947
	add		x14, x10, x14	# 947
	flw		f7, 0(x14)	# 947
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.29973	# 125
	addi	x10, x0, 0	# 951
	jal		x0, fle_cont.29972	# 125
fle_else.29973:
	mul		x14, x30, x11	# 948
	add		x14, x6, x14	# 948
	flw		f6, 0(x14)	# 948
	fmul	f6, f5, f6	# 948
	fadd	f6, f6, f2	# 948
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.29974	# 124
	fsub	f6, f0, f6	# 124
fle_cont.29974:
	mul		x14, x30, x11	# 948
	add		x10, x10, x14	# 948
	flw		f7, 0(x10)	# 948
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.29976	# 125
	addi	x10, x0, 0	# 950
	jal		x0, fle_cont.29975	# 125
fle_else.29976:
	mul		x10, x30, x11	# 949
	addi	x10, x10, 60540	# 949
	fsw		f5, 0(x10)	# 949
	addi	x10, x0, 1	# 949
fle_cont.29975:
fle_cont.29972:
feq_cont.29961:
	beq		x10, x11, beq.29978	# 958
	addi	x9, x0, 2	# 958
	jal		x0, beq_cont.29977	# 958
beq.29978:
	mul		x10, x30, x8	# 942
	add		x10, x6, x10	# 942
	flw		f5, 0(x10)	# 942
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.29980	# 120
	addi	x9, x0, 0	# 942
	jal		x0, feq_cont.29979	# 120
feq_else.29980:
	lw		x10, 16(x9)	# 435
	lw		x9, 24(x9)	# 387
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.29982	# 122
	addi	x14, x0, 0	# 122
	jal		x0, fle_cont.29981	# 122
fle_else.29982:
	addi	x14, x0, 1	# 122
fle_cont.29981:
	beq		x9, x11, beq.29984	# 218
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.29986	# 122
	addi	x9, x0, 1	# 218
	jal		x0, fle_cont.29985	# 122
fle_else.29986:
	addi	x9, x0, 0	# 218
fle_cont.29985:
	jal		x0, beq_cont.29983	# 218
beq.29984:
	addi	x9, x14, 0	# 218
beq_cont.29983:
	mul		x14, x30, x8	# 944
	add		x14, x10, x14	# 944
	flw		f6, 0(x14)	# 944
	beq		x9, x11, beq.29988	# 233
	jal		x0, beq_cont.29987	# 233
beq.29988:
	fsub	f6, f0, f6	# 123
beq_cont.29987:
	fsub	f4, f6, f4	# 946
	fdiv	f4, f4, f5	# 946
	mul		x9, x30, x11	# 947
	add		x9, x6, x9	# 947
	flw		f5, 0(x9)	# 947
	fmul	f5, f4, f5	# 947
	fadd	f2, f5, f2	# 947
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.29989	# 124
	fsub	f2, f0, f2	# 124
fle_cont.29989:
	mul		x9, x30, x11	# 947
	add		x9, x10, x9	# 947
	flw		f5, 0(x9)	# 947
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.29991	# 125
	addi	x9, x0, 0	# 951
	jal		x0, fle_cont.29990	# 125
fle_else.29991:
	mul		x9, x30, x12	# 948
	add		x9, x6, x9	# 948
	flw		f2, 0(x9)	# 948
	fmul	f2, f4, f2	# 948
	fadd	f2, f2, f3	# 948
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.29992	# 124
	fsub	f2, f0, f2	# 124
fle_cont.29992:
	mul		x9, x30, x12	# 948
	add		x9, x10, x9	# 948
	flw		f3, 0(x9)	# 948
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.29994	# 125
	addi	x9, x0, 0	# 950
	jal		x0, fle_cont.29993	# 125
fle_else.29994:
	mul		x9, x30, x11	# 949
	addi	x9, x9, 60540	# 949
	fsw		f4, 0(x9)	# 949
	addi	x9, x0, 1	# 949
fle_cont.29993:
fle_cont.29990:
feq_cont.29979:
	beq		x9, x11, beq.29996	# 959
	addi	x9, x0, 3	# 959
	jal		x0, beq_cont.29995	# 959
beq.29996:
	addi	x9, x0, 0	# 960
beq_cont.29995:
beq_cont.29977:
beq_cont.29959:
beq_cont.29924:
	beq		x9, x11, beq.29997	# 1483
	mul		x10, x30, x11	# 1487
	addi	x10, x10, 60540	# 1487
	flw		f2, 0(x10)	# 1487
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x29, -8(x2)	# 125
	sw		x12, -12(x2)	# 125
	sw		x4, -16(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.29999	# 125
	jal		x0, fle_cont.29998	# 125
fle_else.29999:
	mul		x10, x30, x11	# 1490
	addi	x10, x10, 60548	# 1490
	flw		f1, 0(x10)	# 1490
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.30001	# 125
	jal		x0, fle_cont.30000	# 125
fle_else.30001:
	fadd	f1, f0, f27	# 1492
	fadd	f1, f2, f1	# 1492
	mul		x10, x30, x11	# 1493
	add		x10, x6, x10	# 1493
	flw		f2, 0(x10)	# 1493
	fmul	f2, f2, f1	# 1493
	mul		x10, x30, x11	# 1493
	addi	x10, x10, 60636	# 1493
	flw		f3, 0(x10)	# 1493
	fadd	f2, f2, f3	# 1493
	mul		x10, x30, x12	# 1494
	add		x10, x6, x10	# 1494
	flw		f3, 0(x10)	# 1494
	fmul	f3, f3, f1	# 1494
	mul		x10, x30, x12	# 1494
	addi	x10, x10, 60636	# 1494
	flw		f4, 0(x10)	# 1494
	fadd	f3, f3, f4	# 1494
	mul		x10, x30, x8	# 1495
	add		x10, x6, x10	# 1495
	flw		f4, 0(x10)	# 1495
	fmul	f4, f4, f1	# 1495
	mul		x10, x30, x8	# 1495
	addi	x10, x10, 60636	# 1495
	flw		f5, 0(x10)	# 1495
	fadd	f4, f4, f5	# 1495
	sw		x9, -20(x2)	# 1496
	sw		x13, -24(x2)	# 1496
	fsw		f4, -28(x2)	# 1496
	sw		x8, -32(x2)	# 1496
	fsw		f3, -36(x2)	# 1496
	fsw		f2, -40(x2)	# 1496
	fsw		f1, -44(x2)	# 1496
	sw		x11, -48(x2)	# 1496
	addi	x4, x11, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -52(x2)	# 1496
	addi	x2, x2, -56	# 1496
	lw		x31, 0(x29)	# 1496
	jalr	x1, x31, 0	# 1496
	addi	x2, x2, 56	# 1496
	lw		x1, -52(x2)	# 1496
	lw		x5, -48(x2)	# 1496
	beq		x4, x5, beq_cont.30002	# 1496
	mul		x4, x30, x5	# 1498
	addi	x4, x4, 60548	# 1498
	flw		f1, -44(x2)	# 1498
	fsw		f1, 0(x4)	# 1498
	mul		x4, x30, x5	# 254
	addi	x4, x4, 60552	# 254
	flw		f1, -40(x2)	# 254
	fsw		f1, 0(x4)	# 254
	lw		x4, -12(x2)	# 255
	mul		x6, x30, x4	# 255
	addi	x6, x6, 60552	# 255
	flw		f1, -36(x2)	# 255
	fsw		f1, 0(x6)	# 255
	lw		x6, -32(x2)	# 256
	mul		x6, x30, x6	# 256
	addi	x6, x6, 60552	# 256
	flw		f1, -28(x2)	# 256
	fsw		f1, 0(x6)	# 256
	mul		x6, x30, x5	# 1500
	addi	x6, x6, 60564	# 1500
	lw		x7, -24(x2)	# 1500
	sw		x7, 0(x6)	# 1500
	mul		x5, x30, x5	# 1501
	addi	x5, x5, 60544	# 1501
	lw		x6, -20(x2)	# 1501
	sw		x6, 0(x5)	# 1501
beq_cont.30002:
fle_cont.30000:
fle_cont.29998:
	lw		x4, -12(x2)	# 1507
	lw		x5, -16(x2)	# 1507
	add		x4, x5, x4	# 1507
	lw		x5, -4(x2)	# 1507
	lw		x6, 0(x2)	# 1507
	lw		x29, -8(x2)	# 1507
	lw		x31, 0(x29)	# 1507
	jalr	x0, x31, 0	# 1507
beq.29997:
	mul		x7, x30, x13	# 1511
	addi	x7, x7, 60048	# 1511
	lw		x7, 0(x7)	# 1511
	lw		x7, 24(x7)	# 387
	beq		x7, x11, beq.30003	# 1511
	add		x4, x4, x12	# 1512
	lw		x31, 0(x29)	# 1512
	jalr	x0, x31, 0	# 1512
beq.30003:
	jalr	x0, x1, 0	# 1513
beq.29923:
	jalr	x0, x1, 0	# 1480
solve_one_or_network.2856.16775:
	lw		x7, 16(x29)	# 1520
	lw		x8, 12(x29)	# 1520
	lw		x9, 8(x29)	# 1520
	lw		x10, 4(x29)	# 1520
	mul		x11, x30, x4	# 1520
	add		x11, x5, x11	# 1520
	lw		x11, 0(x11)	# 1520
	beq		x11, x8, beq.30006	# 1521
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
beq.30006:
	jalr	x0, x1, 0	# 1525
trace_or_matrix.2860.16779:
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
	beq		x14, x9, beq.30008	# 1532
	addi	x9, x0, 99	# 1535
	sw		x6, 0(x2)	# 1535
	sw		x5, -4(x2)	# 1535
	sw		x29, -8(x2)	# 1535
	sw		x12, -12(x2)	# 1535
	sw		x4, -16(x2)	# 1535
	beq		x14, x9, beq.30010	# 1535
	mul		x9, x30, x14	# 1046
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
	beq		x14, x12, beq.30012	# 1053
	beq		x14, x8, beq.30014	# 1054
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
	fmul	f10, f6, f6	# 127
	lw		x14, 16(x9)	# 415
	mul		x15, x30, x12	# 420
	add		x14, x14, x15	# 420
	flw		f11, 0(x14)	# 420
	fmul	f10, f10, f11	# 981
	fadd	f8, f8, f10	# 981
	fmul	f10, f7, f7	# 127
	lw		x14, 16(x9)	# 425
	mul		x15, x30, x8	# 430
	add		x14, x14, x15	# 430
	flw		f12, 0(x14)	# 430
	fmul	f10, f10, f12	# 981
	fadd	f8, f8, f10	# 981
	lw		x14, 12(x9)	# 396
	beq		x14, x11, beq_cont.30015	# 983
	fmul	f10, f6, f7	# 987
	lw		x15, 36(x9)	# 525
	mul		x16, x30, x11	# 530
	add		x15, x15, x16	# 530
	flw		f13, 0(x15)	# 530
	fmul	f10, f10, f13	# 987
	fadd	f8, f8, f10	# 986
	fmul	f10, f7, f5	# 988
	lw		x15, 36(x9)	# 535
	mul		x16, x30, x12	# 540
	add		x15, x15, x16	# 540
	flw		f13, 0(x15)	# 540
	fmul	f10, f10, f13	# 988
	fadd	f8, f8, f10	# 986
	fmul	f10, f5, f6	# 989
	lw		x15, 36(x9)	# 545
	mul		x16, x30, x8	# 550
	add		x15, x15, x16	# 550
	flw		f13, 0(x15)	# 550
	fmul	f10, f10, f13	# 989
	fadd	f8, f8, f10	# 986
beq_cont.30015:
	feq		x31, f8, f1	# 120
	beq		x31, x0, feq_else.30017	# 120
	addi	x8, x0, 0	# 1023
	jal		x0, feq_cont.30016	# 120
feq_else.30017:
	fmul	f10, f5, f2	# 995
	fmul	f10, f10, f9	# 995
	fmul	f13, f6, f3	# 996
	fmul	f13, f13, f11	# 996
	fadd	f10, f10, f13	# 995
	fmul	f13, f7, f4	# 997
	fmul	f13, f13, f12	# 997
	fadd	f10, f10, f13	# 995
	beq		x14, x11, beq.30019	# 999
	fmul	f13, f7, f3	# 1003
	fmul	f14, f6, f4	# 1003
	fadd	f13, f13, f14	# 1003
	lw		x15, 36(x9)	# 525
	mul		x16, x30, x11	# 530
	add		x15, x15, x16	# 530
	flw		f14, 0(x15)	# 530
	fmul	f13, f13, f14	# 1003
	fmul	f14, f5, f4	# 1004
	fmul	f7, f7, f2	# 1004
	fadd	f7, f14, f7	# 1004
	lw		x15, 36(x9)	# 535
	mul		x16, x30, x12	# 540
	add		x15, x15, x16	# 540
	flw		f14, 0(x15)	# 540
	fmul	f7, f7, f14	# 1004
	fadd	f7, f13, f7	# 1003
	fmul	f5, f5, f3	# 1005
	fmul	f6, f6, f2	# 1005
	fadd	f5, f5, f6	# 1005
	lw		x15, 36(x9)	# 545
	mul		x16, x30, x8	# 550
	add		x15, x15, x16	# 550
	flw		f6, 0(x15)	# 550
	fmul	f5, f5, f6	# 1005
	fadd	f5, f7, f5	# 1003
	fadd	f6, f0, f17	# 126
	fmul	f5, f5, f6	# 126
	fadd	f5, f10, f5	# 1002
	jal		x0, beq_cont.30018	# 999
beq.30019:
	fadd	f5, f0, f10	# 1000
beq_cont.30018:
	fmul	f6, f2, f2	# 127
	fmul	f6, f6, f9	# 981
	fmul	f7, f3, f3	# 127
	fmul	f7, f7, f11	# 981
	fadd	f6, f6, f7	# 981
	fmul	f7, f4, f4	# 127
	fmul	f7, f7, f12	# 981
	fadd	f6, f6, f7	# 981
	beq		x14, x11, beq.30021	# 983
	fmul	f7, f3, f4	# 987
	lw		x14, 36(x9)	# 525
	mul		x15, x30, x11	# 530
	add		x14, x14, x15	# 530
	flw		f9, 0(x14)	# 530
	fmul	f7, f7, f9	# 987
	fadd	f6, f6, f7	# 986
	fmul	f4, f4, f2	# 988
	lw		x14, 36(x9)	# 535
	mul		x15, x30, x12	# 540
	add		x14, x14, x15	# 540
	flw		f7, 0(x14)	# 540
	fmul	f4, f4, f7	# 988
	fadd	f4, f6, f4	# 986
	fmul	f2, f2, f3	# 989
	lw		x14, 36(x9)	# 545
	mul		x8, x30, x8	# 550
	add		x8, x14, x8	# 550
	flw		f3, 0(x8)	# 550
	fmul	f2, f2, f3	# 989
	fadd	f2, f4, f2	# 986
	jal		x0, beq_cont.30020	# 983
beq.30021:
	fadd	f2, f0, f6	# 984
beq_cont.30020:
	lw		x8, 4(x9)	# 367
	beq		x8, x10, beq.30023	# 1030
	jal		x0, beq_cont.30022	# 1030
beq.30023:
	fadd	f3, f0, f16	# 1030
	fsub	f2, f2, f3	# 1030
beq_cont.30022:
	fmul	f3, f5, f5	# 127
	fmul	f2, f8, f2	# 1032
	fsub	f2, f3, f2	# 1032
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.30025	# 121
	addi	x8, x0, 0	# 1040
	jal		x0, fle_cont.30024	# 121
fle_else.30025:
	fsqrt	f1, f2	# 1035
	lw		x8, 24(x9)	# 387
	beq		x8, x11, beq.30027	# 1036
	jal		x0, beq_cont.30026	# 1036
beq.30027:
	fsub	f1, f0, f1	# 123
beq_cont.30026:
	fsub	f1, f1, f5	# 1037
	fdiv	f1, f1, f8	# 1037
	mul		x8, x30, x11	# 1037
	addi	x8, x8, 60540	# 1037
	fsw		f1, 0(x8)	# 1037
	addi	x8, x0, 1	# 1037
fle_cont.30024:
feq_cont.30016:
	jal		x0, beq_cont.30013	# 1054
beq.30014:
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
	flw		f7, 0(x10)	# 306
	mul		x10, x30, x12	# 306
	add		x10, x9, x10	# 306
	flw		f8, 0(x10)	# 306
	fmul	f7, f7, f8	# 306
	fadd	f5, f5, f7	# 306
	mul		x10, x30, x8	# 306
	add		x10, x6, x10	# 306
	flw		f7, 0(x10)	# 306
	mul		x8, x30, x8	# 306
	add		x8, x9, x8	# 306
	flw		f9, 0(x8)	# 306
	fmul	f7, f7, f9	# 306
	fadd	f5, f5, f7	# 306
	fle		x31, f5, f1	# 121
	beq		x31, x0, fle_else.30029	# 121
	addi	x8, x0, 0	# 973
	jal		x0, fle_cont.30028	# 121
fle_else.30029:
	fmul	f1, f6, f2	# 311
	fmul	f2, f8, f3	# 311
	fadd	f1, f1, f2	# 311
	fmul	f2, f9, f4	# 311
	fadd	f1, f1, f2	# 311
	fsub	f1, f0, f1	# 123
	fdiv	f1, f1, f5	# 971
	mul		x8, x30, x11	# 971
	addi	x8, x8, 60540	# 971
	fsw		f1, 0(x8)	# 971
	addi	x8, x0, 1	# 972
fle_cont.30028:
beq_cont.30013:
	jal		x0, beq_cont.30011	# 1053
beq.30012:
	mul		x10, x30, x11	# 942
	add		x10, x6, x10	# 942
	flw		f5, 0(x10)	# 942
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30031	# 120
	addi	x10, x0, 0	# 942
	jal		x0, feq_cont.30030	# 120
feq_else.30031:
	lw		x10, 16(x9)	# 435
	lw		x14, 24(x9)	# 387
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.30033	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.30032	# 122
fle_else.30033:
	addi	x15, x0, 1	# 122
fle_cont.30032:
	beq		x14, x11, beq.30035	# 218
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.30037	# 122
	addi	x14, x0, 1	# 218
	jal		x0, fle_cont.30036	# 122
fle_else.30037:
	addi	x14, x0, 0	# 218
fle_cont.30036:
	jal		x0, beq_cont.30034	# 218
beq.30035:
	addi	x14, x15, 0	# 218
beq_cont.30034:
	mul		x15, x30, x11	# 944
	add		x15, x10, x15	# 944
	flw		f6, 0(x15)	# 944
	beq		x14, x11, beq.30039	# 233
	jal		x0, beq_cont.30038	# 233
beq.30039:
	fsub	f6, f0, f6	# 123
beq_cont.30038:
	fsub	f6, f6, f2	# 946
	fdiv	f5, f6, f5	# 946
	mul		x14, x30, x12	# 947
	add		x14, x6, x14	# 947
	flw		f6, 0(x14)	# 947
	fmul	f6, f5, f6	# 947
	fadd	f6, f6, f3	# 947
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.30040	# 124
	fsub	f6, f0, f6	# 124
fle_cont.30040:
	mul		x14, x30, x12	# 947
	add		x14, x10, x14	# 947
	flw		f7, 0(x14)	# 947
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.30042	# 125
	addi	x10, x0, 0	# 951
	jal		x0, fle_cont.30041	# 125
fle_else.30042:
	mul		x14, x30, x8	# 948
	add		x14, x6, x14	# 948
	flw		f6, 0(x14)	# 948
	fmul	f6, f5, f6	# 948
	fadd	f6, f6, f4	# 948
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.30043	# 124
	fsub	f6, f0, f6	# 124
fle_cont.30043:
	mul		x14, x30, x8	# 948
	add		x10, x10, x14	# 948
	flw		f7, 0(x10)	# 948
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.30045	# 125
	addi	x10, x0, 0	# 950
	jal		x0, fle_cont.30044	# 125
fle_else.30045:
	mul		x10, x30, x11	# 949
	addi	x10, x10, 60540	# 949
	fsw		f5, 0(x10)	# 949
	addi	x10, x0, 1	# 949
fle_cont.30044:
fle_cont.30041:
feq_cont.30030:
	beq		x10, x11, beq.30047	# 957
	addi	x8, x0, 1	# 957
	jal		x0, beq_cont.30046	# 957
beq.30047:
	mul		x10, x30, x12	# 942
	add		x10, x6, x10	# 942
	flw		f5, 0(x10)	# 942
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30049	# 120
	addi	x10, x0, 0	# 942
	jal		x0, feq_cont.30048	# 120
feq_else.30049:
	lw		x10, 16(x9)	# 435
	lw		x14, 24(x9)	# 387
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.30051	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.30050	# 122
fle_else.30051:
	addi	x15, x0, 1	# 122
fle_cont.30050:
	beq		x14, x11, beq.30053	# 218
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.30055	# 122
	addi	x14, x0, 1	# 218
	jal		x0, fle_cont.30054	# 122
fle_else.30055:
	addi	x14, x0, 0	# 218
fle_cont.30054:
	jal		x0, beq_cont.30052	# 218
beq.30053:
	addi	x14, x15, 0	# 218
beq_cont.30052:
	mul		x15, x30, x12	# 944
	add		x15, x10, x15	# 944
	flw		f6, 0(x15)	# 944
	beq		x14, x11, beq.30057	# 233
	jal		x0, beq_cont.30056	# 233
beq.30057:
	fsub	f6, f0, f6	# 123
beq_cont.30056:
	fsub	f6, f6, f3	# 946
	fdiv	f5, f6, f5	# 946
	mul		x14, x30, x8	# 947
	add		x14, x6, x14	# 947
	flw		f6, 0(x14)	# 947
	fmul	f6, f5, f6	# 947
	fadd	f6, f6, f4	# 947
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.30058	# 124
	fsub	f6, f0, f6	# 124
fle_cont.30058:
	mul		x14, x30, x8	# 947
	add		x14, x10, x14	# 947
	flw		f7, 0(x14)	# 947
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.30060	# 125
	addi	x10, x0, 0	# 951
	jal		x0, fle_cont.30059	# 125
fle_else.30060:
	mul		x14, x30, x11	# 948
	add		x14, x6, x14	# 948
	flw		f6, 0(x14)	# 948
	fmul	f6, f5, f6	# 948
	fadd	f6, f6, f2	# 948
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.30061	# 124
	fsub	f6, f0, f6	# 124
fle_cont.30061:
	mul		x14, x30, x11	# 948
	add		x10, x10, x14	# 948
	flw		f7, 0(x10)	# 948
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.30063	# 125
	addi	x10, x0, 0	# 950
	jal		x0, fle_cont.30062	# 125
fle_else.30063:
	mul		x10, x30, x11	# 949
	addi	x10, x10, 60540	# 949
	fsw		f5, 0(x10)	# 949
	addi	x10, x0, 1	# 949
fle_cont.30062:
fle_cont.30059:
feq_cont.30048:
	beq		x10, x11, beq.30065	# 958
	addi	x8, x0, 2	# 958
	jal		x0, beq_cont.30064	# 958
beq.30065:
	mul		x10, x30, x8	# 942
	add		x10, x6, x10	# 942
	flw		f5, 0(x10)	# 942
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30067	# 120
	addi	x8, x0, 0	# 942
	jal		x0, feq_cont.30066	# 120
feq_else.30067:
	lw		x10, 16(x9)	# 435
	lw		x9, 24(x9)	# 387
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.30069	# 122
	addi	x14, x0, 0	# 122
	jal		x0, fle_cont.30068	# 122
fle_else.30069:
	addi	x14, x0, 1	# 122
fle_cont.30068:
	beq		x9, x11, beq.30071	# 218
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.30073	# 122
	addi	x9, x0, 1	# 218
	jal		x0, fle_cont.30072	# 122
fle_else.30073:
	addi	x9, x0, 0	# 218
fle_cont.30072:
	jal		x0, beq_cont.30070	# 218
beq.30071:
	addi	x9, x14, 0	# 218
beq_cont.30070:
	mul		x8, x30, x8	# 944
	add		x8, x10, x8	# 944
	flw		f6, 0(x8)	# 944
	beq		x9, x11, beq.30075	# 233
	jal		x0, beq_cont.30074	# 233
beq.30075:
	fsub	f6, f0, f6	# 123
beq_cont.30074:
	fsub	f4, f6, f4	# 946
	fdiv	f4, f4, f5	# 946
	mul		x8, x30, x11	# 947
	add		x8, x6, x8	# 947
	flw		f5, 0(x8)	# 947
	fmul	f5, f4, f5	# 947
	fadd	f2, f5, f2	# 947
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.30076	# 124
	fsub	f2, f0, f2	# 124
fle_cont.30076:
	mul		x8, x30, x11	# 947
	add		x8, x10, x8	# 947
	flw		f5, 0(x8)	# 947
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.30078	# 125
	addi	x8, x0, 0	# 951
	jal		x0, fle_cont.30077	# 125
fle_else.30078:
	mul		x8, x30, x12	# 948
	add		x8, x6, x8	# 948
	flw		f2, 0(x8)	# 948
	fmul	f2, f4, f2	# 948
	fadd	f2, f2, f3	# 948
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_else.30080	# 124
	fsub	f1, f0, f2	# 124
	jal		x0, fle_cont.30079	# 124
fle_else.30080:
	fadd	f1, f0, f2	# 124
fle_cont.30079:
	mul		x8, x30, x12	# 948
	add		x8, x10, x8	# 948
	flw		f2, 0(x8)	# 948
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30082	# 125
	addi	x8, x0, 0	# 950
	jal		x0, fle_cont.30081	# 125
fle_else.30082:
	mul		x8, x30, x11	# 949
	addi	x8, x8, 60540	# 949
	fsw		f4, 0(x8)	# 949
	addi	x8, x0, 1	# 949
fle_cont.30081:
fle_cont.30077:
feq_cont.30066:
	beq		x8, x11, beq.30084	# 959
	addi	x8, x0, 3	# 959
	jal		x0, beq_cont.30083	# 959
beq.30084:
	addi	x8, x0, 0	# 960
beq_cont.30083:
beq_cont.30064:
beq_cont.30046:
beq_cont.30011:
	beq		x8, x11, beq_cont.30085	# 1541
	mul		x8, x30, x11	# 1542
	addi	x8, x8, 60540	# 1542
	flw		f1, 0(x8)	# 1542
	mul		x8, x30, x11	# 1543
	addi	x8, x8, 60548	# 1543
	flw		f2, 0(x8)	# 1543
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30087	# 125
	jal		x0, fle_cont.30086	# 125
fle_else.30087:
	addi	x5, x13, 0
	addi	x4, x12, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1544
	addi	x2, x2, -24	# 1544
	lw		x31, 0(x29)	# 1544
	jalr	x1, x31, 0	# 1544
	addi	x2, x2, 24	# 1544
	lw		x1, -20(x2)	# 1544
fle_cont.30086:
beq_cont.30085:
	jal		x0, beq_cont.30009	# 1535
beq.30010:
	addi	x5, x13, 0
	addi	x4, x12, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1536
	addi	x2, x2, -24	# 1536
	lw		x31, 0(x29)	# 1536
	jalr	x1, x31, 0	# 1536
	addi	x2, x2, 24	# 1536
	lw		x1, -20(x2)	# 1536
beq_cont.30009:
	lw		x4, -12(x2)	# 1548
	lw		x5, -16(x2)	# 1548
	add		x4, x5, x4	# 1548
	lw		x5, -4(x2)	# 1548
	lw		x6, 0(x2)	# 1548
	lw		x29, -8(x2)	# 1548
	lw		x31, 0(x29)	# 1548
	jalr	x0, x31, 0	# 1548
beq.30008:
	jalr	x0, x1, 0	# 1533
solve_each_element_fast.2866.16783:
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
	beq		x15, x10, beq.30089	# 1574
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
	beq		x18, x13, beq.30091	# 1195
	beq		x18, x9, beq.30093	# 1197
	mul		x8, x30, x12	# 1169
	add		x8, x17, x8	# 1169
	flw		f5, 0(x8)	# 1169
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30095	# 120
	addi	x8, x0, 0	# 1171
	jal		x0, feq_cont.30094	# 120
feq_else.30095:
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
	beq		x31, x0, fle_else.30097	# 121
	addi	x8, x0, 0	# 1182
	jal		x0, fle_cont.30096	# 121
fle_else.30097:
	lw		x8, 24(x10)	# 387
	beq		x8, x12, beq.30099	# 1177
	fsqrt	f3, f3	# 1178
	fadd	f2, f2, f3	# 1178
	addi	x8, x0, 4	# 1178
	mul		x8, x30, x8	# 1178
	add		x8, x17, x8	# 1178
	flw		f3, 0(x8)	# 1178
	fmul	f2, f2, f3	# 1178
	mul		x8, x30, x12	# 1178
	addi	x8, x8, 60540	# 1178
	fsw		f2, 0(x8)	# 1178
	jal		x0, beq_cont.30098	# 1177
beq.30099:
	fsqrt	f3, f3	# 1180
	fsub	f2, f2, f3	# 1180
	addi	x8, x0, 4	# 1180
	mul		x8, x30, x8	# 1180
	add		x8, x17, x8	# 1180
	flw		f3, 0(x8)	# 1180
	fmul	f2, f2, f3	# 1180
	mul		x8, x30, x12	# 1180
	addi	x8, x8, 60540	# 1180
	fsw		f2, 0(x8)	# 1180
beq_cont.30098:
	addi	x8, x0, 1	# 1181
fle_cont.30096:
feq_cont.30094:
	jal		x0, beq_cont.30092	# 1197
beq.30093:
	mul		x8, x30, x12	# 1160
	add		x8, x17, x8	# 1160
	flw		f2, 0(x8)	# 1160
	fle		x31, f1, f2	# 122
	beq		x31, x0, fle_else.30101	# 122
	addi	x8, x0, 0	# 1163
	jal		x0, fle_cont.30100	# 122
fle_else.30101:
	mul		x8, x30, x11	# 1161
	add		x8, x16, x8	# 1161
	flw		f3, 0(x8)	# 1161
	fmul	f2, f2, f3	# 1161
	mul		x8, x30, x12	# 1161
	addi	x8, x8, 60540	# 1161
	fsw		f2, 0(x8)	# 1161
	addi	x8, x0, 1	# 1162
fle_cont.30100:
beq_cont.30092:
	jal		x0, beq_cont.30090	# 1195
beq.30091:
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
	flw		f7, 0(x18)	# 1080
	fmul	f8, f5, f7	# 1080
	fadd	f8, f8, f3	# 1080
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.30102	# 124
	fsub	f8, f0, f8	# 124
fle_cont.30102:
	lw		x18, 16(x10)	# 415
	mul		x19, x30, x13	# 420
	add		x18, x18, x19	# 420
	flw		f9, 0(x18)	# 420
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.30104	# 125
	addi	x18, x0, 0	# 1084
	jal		x0, fle_cont.30103	# 125
fle_else.30104:
	mul		x18, x30, x9	# 1081
	add		x18, x16, x18	# 1081
	flw		f8, 0(x18)	# 1081
	fmul	f8, f5, f8	# 1081
	fadd	f8, f8, f4	# 1081
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.30105	# 124
	fsub	f8, f0, f8	# 124
fle_cont.30105:
	lw		x18, 16(x10)	# 425
	mul		x19, x30, x9	# 430
	add		x18, x18, x19	# 430
	flw		f9, 0(x18)	# 430
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.30107	# 125
	addi	x18, x0, 0	# 1083
	jal		x0, fle_cont.30106	# 125
fle_else.30107:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.30109	# 120
	addi	x18, x0, 0	# 1082
	jal		x0, feq_cont.30108	# 120
feq_else.30109:
	addi	x18, x0, 1	# 1082
feq_cont.30108:
fle_cont.30106:
fle_cont.30103:
	beq		x18, x12, beq.30111	# 1079
	mul		x8, x30, x12	# 1086
	addi	x8, x8, 60540	# 1086
	fsw		f5, 0(x8)	# 1086
	addi	x8, x0, 1	# 1086
	jal		x0, beq_cont.30110	# 1079
beq.30111:
	mul		x18, x30, x9	# 1087
	add		x18, x17, x18	# 1087
	flw		f5, 0(x18)	# 1087
	fsub	f5, f5, f3	# 1087
	mul		x11, x30, x11	# 1087
	add		x11, x17, x11	# 1087
	flw		f6, 0(x11)	# 1087
	fmul	f5, f5, f6	# 1087
	mul		x11, x30, x12	# 1089
	add		x11, x16, x11	# 1089
	flw		f8, 0(x11)	# 1089
	fmul	f9, f5, f8	# 1089
	fadd	f9, f9, f2	# 1089
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.30112	# 124
	fsub	f9, f0, f9	# 124
fle_cont.30112:
	lw		x11, 16(x10)	# 405
	mul		x18, x30, x12	# 410
	add		x11, x11, x18	# 410
	flw		f10, 0(x11)	# 410
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.30114	# 125
	addi	x11, x0, 0	# 1093
	jal		x0, fle_cont.30113	# 125
fle_else.30114:
	mul		x11, x30, x9	# 1090
	add		x11, x16, x11	# 1090
	flw		f9, 0(x11)	# 1090
	fmul	f9, f5, f9	# 1090
	fadd	f9, f9, f4	# 1090
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.30115	# 124
	fsub	f9, f0, f9	# 124
fle_cont.30115:
	lw		x11, 16(x10)	# 425
	mul		x16, x30, x9	# 430
	add		x11, x11, x16	# 430
	flw		f10, 0(x11)	# 430
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.30117	# 125
	addi	x11, x0, 0	# 1092
	jal		x0, fle_cont.30116	# 125
fle_else.30117:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.30119	# 120
	addi	x11, x0, 0	# 1091
	jal		x0, feq_cont.30118	# 120
feq_else.30119:
	addi	x11, x0, 1	# 1091
feq_cont.30118:
fle_cont.30116:
fle_cont.30113:
	beq		x11, x12, beq.30121	# 1088
	mul		x8, x30, x12	# 1095
	addi	x8, x8, 60540	# 1095
	fsw		f5, 0(x8)	# 1095
	addi	x8, x0, 2	# 1095
	jal		x0, beq_cont.30120	# 1088
beq.30121:
	addi	x11, x0, 4	# 1096
	mul		x11, x30, x11	# 1096
	add		x11, x17, x11	# 1096
	flw		f5, 0(x11)	# 1096
	fsub	f4, f5, f4	# 1096
	mul		x8, x30, x8	# 1096
	add		x8, x17, x8	# 1096
	flw		f5, 0(x8)	# 1096
	fmul	f4, f4, f5	# 1096
	fmul	f6, f4, f8	# 1098
	fadd	f2, f6, f2	# 1098
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.30122	# 124
	fsub	f2, f0, f2	# 124
fle_cont.30122:
	lw		x8, 16(x10)	# 405
	mul		x11, x30, x12	# 410
	add		x8, x8, x11	# 410
	flw		f6, 0(x8)	# 410
	fle		x31, f6, f2	# 125
	beq		x31, x0, fle_else.30124	# 125
	addi	x8, x0, 0	# 1102
	jal		x0, fle_cont.30123	# 125
fle_else.30124:
	fmul	f2, f4, f7	# 1099
	fadd	f2, f2, f3	# 1099
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.30125	# 124
	fsub	f2, f0, f2	# 124
fle_cont.30125:
	lw		x8, 16(x10)	# 415
	mul		x10, x30, x13	# 420
	add		x8, x8, x10	# 420
	flw		f3, 0(x8)	# 420
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.30127	# 125
	addi	x8, x0, 0	# 1101
	jal		x0, fle_cont.30126	# 125
fle_else.30127:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30129	# 120
	addi	x8, x0, 0	# 1100
	jal		x0, feq_cont.30128	# 120
feq_else.30129:
	addi	x8, x0, 1	# 1100
feq_cont.30128:
fle_cont.30126:
fle_cont.30123:
	beq		x8, x12, beq.30131	# 1097
	mul		x8, x30, x12	# 1104
	addi	x8, x8, 60540	# 1104
	fsw		f4, 0(x8)	# 1104
	addi	x8, x0, 3	# 1104
	jal		x0, beq_cont.30130	# 1097
beq.30131:
	addi	x8, x0, 0	# 1106
beq_cont.30130:
beq_cont.30120:
beq_cont.30110:
beq_cont.30090:
	beq		x8, x12, beq.30132	# 1577
	mul		x10, x30, x12	# 1581
	addi	x10, x10, 60540	# 1581
	flw		f2, 0(x10)	# 1581
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x29, -8(x2)	# 125
	sw		x13, -12(x2)	# 125
	sw		x4, -16(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30134	# 125
	jal		x0, fle_cont.30133	# 125
fle_else.30134:
	mul		x10, x30, x12	# 1584
	addi	x10, x10, 60548	# 1584
	flw		f1, 0(x10)	# 1584
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.30136	# 125
	jal		x0, fle_cont.30135	# 125
fle_else.30136:
	fadd	f1, f0, f27	# 1586
	fadd	f1, f2, f1	# 1586
	mul		x10, x30, x12	# 1587
	add		x10, x14, x10	# 1587
	flw		f2, 0(x10)	# 1587
	fmul	f2, f2, f1	# 1587
	mul		x10, x30, x12	# 1587
	addi	x10, x10, 60648	# 1587
	flw		f3, 0(x10)	# 1587
	fadd	f2, f2, f3	# 1587
	mul		x10, x30, x13	# 1588
	add		x10, x14, x10	# 1588
	flw		f3, 0(x10)	# 1588
	fmul	f3, f3, f1	# 1588
	mul		x10, x30, x13	# 1588
	addi	x10, x10, 60648	# 1588
	flw		f4, 0(x10)	# 1588
	fadd	f3, f3, f4	# 1588
	mul		x10, x30, x9	# 1589
	add		x10, x14, x10	# 1589
	flw		f4, 0(x10)	# 1589
	fmul	f4, f4, f1	# 1589
	mul		x10, x30, x9	# 1589
	addi	x10, x10, 60648	# 1589
	flw		f5, 0(x10)	# 1589
	fadd	f4, f4, f5	# 1589
	sw		x8, -20(x2)	# 1590
	sw		x15, -24(x2)	# 1590
	fsw		f4, -28(x2)	# 1590
	sw		x9, -32(x2)	# 1590
	fsw		f3, -36(x2)	# 1590
	fsw		f2, -40(x2)	# 1590
	fsw		f1, -44(x2)	# 1590
	sw		x12, -48(x2)	# 1590
	addi	x4, x12, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -52(x2)	# 1590
	addi	x2, x2, -56	# 1590
	lw		x31, 0(x29)	# 1590
	jalr	x1, x31, 0	# 1590
	addi	x2, x2, 56	# 1590
	lw		x1, -52(x2)	# 1590
	lw		x5, -48(x2)	# 1590
	beq		x4, x5, beq_cont.30137	# 1590
	mul		x4, x30, x5	# 1592
	addi	x4, x4, 60548	# 1592
	flw		f1, -44(x2)	# 1592
	fsw		f1, 0(x4)	# 1592
	mul		x4, x30, x5	# 254
	addi	x4, x4, 60552	# 254
	flw		f1, -40(x2)	# 254
	fsw		f1, 0(x4)	# 254
	lw		x4, -12(x2)	# 255
	mul		x6, x30, x4	# 255
	addi	x6, x6, 60552	# 255
	flw		f1, -36(x2)	# 255
	fsw		f1, 0(x6)	# 255
	lw		x6, -32(x2)	# 256
	mul		x6, x30, x6	# 256
	addi	x6, x6, 60552	# 256
	flw		f1, -28(x2)	# 256
	fsw		f1, 0(x6)	# 256
	mul		x6, x30, x5	# 1594
	addi	x6, x6, 60564	# 1594
	lw		x7, -24(x2)	# 1594
	sw		x7, 0(x6)	# 1594
	mul		x5, x30, x5	# 1595
	addi	x5, x5, 60544	# 1595
	lw		x6, -20(x2)	# 1595
	sw		x6, 0(x5)	# 1595
beq_cont.30137:
fle_cont.30135:
fle_cont.30133:
	lw		x4, -12(x2)	# 1601
	lw		x5, -16(x2)	# 1601
	add		x4, x5, x4	# 1601
	lw		x5, -4(x2)	# 1601
	lw		x6, 0(x2)	# 1601
	lw		x29, -8(x2)	# 1601
	lw		x31, 0(x29)	# 1601
	jalr	x0, x31, 0	# 1601
beq.30132:
	mul		x7, x30, x15	# 1605
	addi	x7, x7, 60048	# 1605
	lw		x7, 0(x7)	# 1605
	lw		x7, 24(x7)	# 387
	beq		x7, x12, beq.30138	# 1605
	add		x4, x4, x13	# 1606
	lw		x31, 0(x29)	# 1606
	jalr	x0, x31, 0	# 1606
beq.30138:
	jalr	x0, x1, 0	# 1607
beq.30089:
	jalr	x0, x1, 0	# 1574
solve_one_or_network_fast.2870.16787:
	lw		x7, 16(x29)	# 1613
	lw		x8, 12(x29)	# 1613
	lw		x9, 8(x29)	# 1613
	lw		x10, 4(x29)	# 1613
	mul		x11, x30, x4	# 1613
	add		x11, x5, x11	# 1613
	lw		x11, 0(x11)	# 1613
	beq		x11, x8, beq.30141	# 1614
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
beq.30141:
	jalr	x0, x1, 0	# 1618
trace_or_matrix_fast.2874.16791:
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
	beq		x15, x10, beq.30143	# 1625
	addi	x10, x0, 99	# 1628
	sw		x6, 0(x2)	# 1628
	sw		x5, -4(x2)	# 1628
	sw		x29, -8(x2)	# 1628
	sw		x13, -12(x2)	# 1628
	sw		x4, -16(x2)	# 1628
	beq		x15, x10, beq.30145	# 1628
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
	mul		x15, x30, x15	# 1193
	add		x15, x17, x15	# 1193
	lw		x15, 0(x15)	# 1193
	lw		x17, 4(x10)	# 367
	beq		x17, x13, beq.30147	# 1195
	beq		x17, x9, beq.30149	# 1197
	mul		x8, x30, x12	# 1169
	add		x8, x15, x8	# 1169
	flw		f5, 0(x8)	# 1169
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30151	# 120
	addi	x8, x0, 0	# 1171
	jal		x0, feq_cont.30150	# 120
feq_else.30151:
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
	beq		x31, x0, fle_else.30153	# 121
	addi	x8, x0, 0	# 1182
	jal		x0, fle_cont.30152	# 121
fle_else.30153:
	lw		x8, 24(x10)	# 387
	beq		x8, x12, beq.30155	# 1177
	fsqrt	f1, f3	# 1178
	fadd	f1, f2, f1	# 1178
	addi	x8, x0, 4	# 1178
	mul		x8, x30, x8	# 1178
	add		x8, x15, x8	# 1178
	flw		f2, 0(x8)	# 1178
	fmul	f1, f1, f2	# 1178
	mul		x8, x30, x12	# 1178
	addi	x8, x8, 60540	# 1178
	fsw		f1, 0(x8)	# 1178
	jal		x0, beq_cont.30154	# 1177
beq.30155:
	fsqrt	f1, f3	# 1180
	fsub	f1, f2, f1	# 1180
	addi	x8, x0, 4	# 1180
	mul		x8, x30, x8	# 1180
	add		x8, x15, x8	# 1180
	flw		f2, 0(x8)	# 1180
	fmul	f1, f1, f2	# 1180
	mul		x8, x30, x12	# 1180
	addi	x8, x8, 60540	# 1180
	fsw		f1, 0(x8)	# 1180
beq_cont.30154:
	addi	x8, x0, 1	# 1181
fle_cont.30152:
feq_cont.30150:
	jal		x0, beq_cont.30148	# 1197
beq.30149:
	mul		x8, x30, x12	# 1160
	add		x8, x15, x8	# 1160
	flw		f2, 0(x8)	# 1160
	fle		x31, f1, f2	# 122
	beq		x31, x0, fle_else.30157	# 122
	addi	x8, x0, 0	# 1163
	jal		x0, fle_cont.30156	# 122
fle_else.30157:
	mul		x8, x30, x11	# 1161
	add		x8, x16, x8	# 1161
	flw		f1, 0(x8)	# 1161
	fmul	f1, f2, f1	# 1161
	mul		x8, x30, x12	# 1161
	addi	x8, x8, 60540	# 1161
	fsw		f1, 0(x8)	# 1161
	addi	x8, x0, 1	# 1162
fle_cont.30156:
beq_cont.30148:
	jal		x0, beq_cont.30146	# 1195
beq.30147:
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
	flw		f7, 0(x17)	# 1080
	fmul	f8, f5, f7	# 1080
	fadd	f8, f8, f3	# 1080
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.30158	# 124
	fsub	f8, f0, f8	# 124
fle_cont.30158:
	lw		x17, 16(x10)	# 415
	mul		x18, x30, x13	# 420
	add		x17, x17, x18	# 420
	flw		f9, 0(x17)	# 420
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.30160	# 125
	addi	x17, x0, 0	# 1084
	jal		x0, fle_cont.30159	# 125
fle_else.30160:
	mul		x17, x30, x9	# 1081
	add		x17, x16, x17	# 1081
	flw		f8, 0(x17)	# 1081
	fmul	f8, f5, f8	# 1081
	fadd	f8, f8, f4	# 1081
	fle		x31, f8, f1	# 124
	beq		x31, x0, fle_cont.30161	# 124
	fsub	f8, f0, f8	# 124
fle_cont.30161:
	lw		x17, 16(x10)	# 425
	mul		x18, x30, x9	# 430
	add		x17, x17, x18	# 430
	flw		f9, 0(x17)	# 430
	fle		x31, f9, f8	# 125
	beq		x31, x0, fle_else.30163	# 125
	addi	x17, x0, 0	# 1083
	jal		x0, fle_cont.30162	# 125
fle_else.30163:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.30165	# 120
	addi	x17, x0, 0	# 1082
	jal		x0, feq_cont.30164	# 120
feq_else.30165:
	addi	x17, x0, 1	# 1082
feq_cont.30164:
fle_cont.30162:
fle_cont.30159:
	beq		x17, x12, beq.30167	# 1079
	mul		x8, x30, x12	# 1086
	addi	x8, x8, 60540	# 1086
	fsw		f5, 0(x8)	# 1086
	addi	x8, x0, 1	# 1086
	jal		x0, beq_cont.30166	# 1079
beq.30167:
	mul		x17, x30, x9	# 1087
	add		x17, x15, x17	# 1087
	flw		f5, 0(x17)	# 1087
	fsub	f5, f5, f3	# 1087
	mul		x11, x30, x11	# 1087
	add		x11, x15, x11	# 1087
	flw		f6, 0(x11)	# 1087
	fmul	f5, f5, f6	# 1087
	mul		x11, x30, x12	# 1089
	add		x11, x16, x11	# 1089
	flw		f8, 0(x11)	# 1089
	fmul	f9, f5, f8	# 1089
	fadd	f9, f9, f2	# 1089
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.30168	# 124
	fsub	f9, f0, f9	# 124
fle_cont.30168:
	lw		x11, 16(x10)	# 405
	mul		x17, x30, x12	# 410
	add		x11, x11, x17	# 410
	flw		f10, 0(x11)	# 410
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.30170	# 125
	addi	x9, x0, 0	# 1093
	jal		x0, fle_cont.30169	# 125
fle_else.30170:
	mul		x11, x30, x9	# 1090
	add		x11, x16, x11	# 1090
	flw		f9, 0(x11)	# 1090
	fmul	f9, f5, f9	# 1090
	fadd	f9, f9, f4	# 1090
	fle		x31, f9, f1	# 124
	beq		x31, x0, fle_cont.30171	# 124
	fsub	f9, f0, f9	# 124
fle_cont.30171:
	lw		x11, 16(x10)	# 425
	mul		x9, x30, x9	# 430
	add		x9, x11, x9	# 430
	flw		f10, 0(x9)	# 430
	fle		x31, f10, f9	# 125
	beq		x31, x0, fle_else.30173	# 125
	addi	x9, x0, 0	# 1092
	jal		x0, fle_cont.30172	# 125
fle_else.30173:
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.30175	# 120
	addi	x9, x0, 0	# 1091
	jal		x0, feq_cont.30174	# 120
feq_else.30175:
	addi	x9, x0, 1	# 1091
feq_cont.30174:
fle_cont.30172:
fle_cont.30169:
	beq		x9, x12, beq.30177	# 1088
	mul		x8, x30, x12	# 1095
	addi	x8, x8, 60540	# 1095
	fsw		f5, 0(x8)	# 1095
	addi	x8, x0, 2	# 1095
	jal		x0, beq_cont.30176	# 1088
beq.30177:
	addi	x9, x0, 4	# 1096
	mul		x9, x30, x9	# 1096
	add		x9, x15, x9	# 1096
	flw		f5, 0(x9)	# 1096
	fsub	f4, f5, f4	# 1096
	mul		x8, x30, x8	# 1096
	add		x8, x15, x8	# 1096
	flw		f5, 0(x8)	# 1096
	fmul	f4, f4, f5	# 1096
	fmul	f6, f4, f8	# 1098
	fadd	f2, f6, f2	# 1098
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.30178	# 124
	fsub	f2, f0, f2	# 124
fle_cont.30178:
	lw		x8, 16(x10)	# 405
	mul		x9, x30, x12	# 410
	add		x8, x8, x9	# 410
	flw		f6, 0(x8)	# 410
	fle		x31, f6, f2	# 125
	beq		x31, x0, fle_else.30180	# 125
	addi	x8, x0, 0	# 1102
	jal		x0, fle_cont.30179	# 125
fle_else.30180:
	fmul	f2, f4, f7	# 1099
	fadd	f2, f2, f3	# 1099
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.30181	# 124
	fsub	f2, f0, f2	# 124
fle_cont.30181:
	lw		x8, 16(x10)	# 415
	mul		x9, x30, x13	# 420
	add		x8, x8, x9	# 420
	flw		f3, 0(x8)	# 420
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.30183	# 125
	addi	x8, x0, 0	# 1101
	jal		x0, fle_cont.30182	# 125
fle_else.30183:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.30185	# 120
	addi	x8, x0, 0	# 1100
	jal		x0, feq_cont.30184	# 120
feq_else.30185:
	addi	x8, x0, 1	# 1100
feq_cont.30184:
fle_cont.30182:
fle_cont.30179:
	beq		x8, x12, beq.30187	# 1097
	mul		x8, x30, x12	# 1104
	addi	x8, x8, 60540	# 1104
	fsw		f4, 0(x8)	# 1104
	addi	x8, x0, 3	# 1104
	jal		x0, beq_cont.30186	# 1097
beq.30187:
	addi	x8, x0, 0	# 1106
beq_cont.30186:
beq_cont.30176:
beq_cont.30166:
beq_cont.30146:
	beq		x8, x12, beq_cont.30188	# 1634
	mul		x8, x30, x12	# 1635
	addi	x8, x8, 60540	# 1635
	flw		f1, 0(x8)	# 1635
	mul		x8, x30, x12	# 1636
	addi	x8, x8, 60548	# 1636
	flw		f2, 0(x8)	# 1636
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30190	# 125
	jal		x0, fle_cont.30189	# 125
fle_else.30190:
	addi	x5, x14, 0
	addi	x4, x13, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1637
	addi	x2, x2, -24	# 1637
	lw		x31, 0(x29)	# 1637
	jalr	x1, x31, 0	# 1637
	addi	x2, x2, 24	# 1637
	lw		x1, -20(x2)	# 1637
fle_cont.30189:
beq_cont.30188:
	jal		x0, beq_cont.30144	# 1628
beq.30145:
	addi	x5, x14, 0
	addi	x4, x13, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1629
	addi	x2, x2, -24	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x1, x31, 0	# 1629
	addi	x2, x2, 24	# 1629
	lw		x1, -20(x2)	# 1629
beq_cont.30144:
	lw		x4, -12(x2)	# 1641
	lw		x5, -16(x2)	# 1641
	add		x4, x5, x4	# 1641
	lw		x5, -4(x2)	# 1641
	lw		x6, 0(x2)	# 1641
	lw		x29, -8(x2)	# 1641
	lw		x31, 0(x29)	# 1641
	jalr	x0, x31, 0	# 1641
beq.30143:
	jalr	x0, x1, 0	# 1626
utexture.2889.16795:
	lw		x6, 44(x29)	# 357
	lw		x7, 40(x29)	# 357
	lw		x8, 36(x29)	# 357
	lw		x9, 32(x29)	# 357
	lw		x10, 28(x29)	# 357
	lw		x11, 24(x29)	# 357
	lw		x12, 20(x29)	# 357
	lw		x13, 16(x29)	# 357
	lw		x14, 12(x29)	# 357
	flw		f1, 8(x29)	# 357
	flw		f2, 4(x29)	# 357
	lw		x15, 0(x4)	# 357
	lw		x16, 32(x4)	# 495
	mul		x17, x30, x13	# 500
	add		x16, x16, x17	# 500
	flw		f3, 0(x16)	# 500
	mul		x16, x30, x13	# 1724
	addi	x16, x16, 60580	# 1724
	fsw		f3, 0(x16)	# 1724
	lw		x16, 32(x4)	# 505
	mul		x17, x30, x14	# 510
	add		x16, x16, x17	# 510
	flw		f3, 0(x16)	# 510
	mul		x16, x30, x14	# 1725
	addi	x16, x16, 60580	# 1725
	fsw		f3, 0(x16)	# 1725
	lw		x16, 32(x4)	# 515
	mul		x17, x30, x11	# 520
	add		x16, x16, x17	# 520
	flw		f3, 0(x16)	# 520
	mul		x16, x30, x11	# 1726
	addi	x16, x16, 60580	# 1726
	fsw		f3, 0(x16)	# 1726
	beq		x15, x14, beq.30192	# 1727
	beq		x15, x11, beq.30193	# 1745
	beq		x15, x12, beq.30194	# 1752
	addi	x6, x0, 4	# 1763
	beq		x15, x6, beq.30195	# 1763
	jalr	x0, x1, 0	# 1791
beq.30195:
	mul		x6, x30, x13	# 1765
	add		x6, x5, x6	# 1765
	flw		f3, 0(x6)	# 1765
	lw		x6, 20(x4)	# 445
	mul		x9, x30, x13	# 450
	add		x6, x6, x9	# 450
	flw		f4, 0(x6)	# 450
	fsub	f3, f3, f4	# 1765
	lw		x6, 16(x4)	# 405
	mul		x9, x30, x13	# 410
	add		x6, x6, x9	# 410
	flw		f4, 0(x6)	# 410
	fsqrt	f4, f4	# 1765
	fmul	f3, f3, f4	# 1765
	mul		x6, x30, x11	# 1766
	add		x6, x5, x6	# 1766
	flw		f4, 0(x6)	# 1766
	lw		x6, 20(x4)	# 465
	mul		x9, x30, x11	# 470
	add		x6, x6, x9	# 470
	flw		f5, 0(x6)	# 470
	fsub	f4, f4, f5	# 1766
	lw		x6, 16(x4)	# 425
	mul		x9, x30, x11	# 430
	add		x6, x6, x9	# 430
	flw		f5, 0(x6)	# 430
	fsqrt	f5, f5	# 1766
	fmul	f4, f4, f5	# 1766
	fmul	f5, f3, f3	# 127
	fmul	f6, f4, f4	# 127
	fadd	f5, f5, f6	# 1767
	fle		x31, f3, f2	# 124
	beq		x31, x0, fle_else.30198	# 124
	fsub	f6, f0, f3	# 124
	jal		x0, fle_cont.30197	# 124
fle_else.30198:
	fadd	f6, f0, f3	# 124
fle_cont.30197:
	lui		x6, %hi(l.25237)	# 1769
	ori		x6, x0, %lo(l.25237)	# 1769
	flw		f7, 0(x6)	# 1769
	sw		x11, 0(x2)	# 125
	fsw		f1, -4(x2)	# 125
	sw		x10, -8(x2)	# 125
	fsw		f7, -12(x2)	# 125
	fsw		f5, -16(x2)	# 125
	sw		x4, -20(x2)	# 125
	sw		x5, -24(x2)	# 125
	sw		x14, -28(x2)	# 125
	sw		x8, -32(x2)	# 125
	sw		x7, -36(x2)	# 125
	fsw		f2, -40(x2)	# 125
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.30200	# 125
	fdiv	f3, f4, f3	# 1772
	fle		x31, f3, f2	# 124
	beq		x31, x0, fle_cont.30201	# 124
	fsub	f3, f0, f3	# 124
fle_cont.30201:
	addi	x29, x10, 0
	fadd	f1, f0, f3
	sw		x1, -44(x2)	# 1774
	addi	x2, x2, -48	# 1774
	lw		x31, 0(x29)	# 1774
	jalr	x1, x31, 0	# 1774
	addi	x2, x2, 48	# 1774
	lw		x1, -44(x2)	# 1774
	fadd	f2, f0, f23	# 1774
	fmul	f1, f1, f2	# 1774
	fadd	f2, f0, f19	# 1774
	fdiv	f1, f1, f2	# 1774
	jal		x0, fle_cont.30199	# 125
fle_else.30200:
	fadd	f1, f0, f24	# 1770
fle_cont.30199:
	flw		f2, -40(x2)	# 151
	fsw		f1, -44(x2)	# 151
	fle		x31, f2, f1	# 151
	beq		x31, x0, fle_else.30203	# 151
	fadd	f3, f0, f17	# 151
	fsub	f3, f1, f3	# 151
	lw		x29, -36(x2)	# 151
	fadd	f1, f0, f3
	sw		x1, -48(x2)	# 151
	addi	x2, x2, -52	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 52	# 151
	lw		x1, -48(x2)	# 151
	lw		x29, -32(x2)	# 151
	sw		x1, -48(x2)	# 151
	addi	x2, x2, -52	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 52	# 151
	lw		x1, -48(x2)	# 151
	jal		x0, fle_cont.30202	# 151
fle_else.30203:
	fadd	f3, f0, f17	# 152
	fadd	f3, f1, f3	# 152
	lw		x29, -36(x2)	# 152
	fadd	f1, f0, f3
	sw		x1, -48(x2)	# 152
	addi	x2, x2, -52	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 52	# 152
	lw		x1, -48(x2)	# 152
	lw		x5, -28(x2)	# 152
	sub		x4, x4, x5	# 152
	lw		x29, -32(x2)	# 152
	sw		x1, -48(x2)	# 152
	addi	x2, x2, -52	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 52	# 152
	lw		x1, -48(x2)	# 152
fle_cont.30202:
	flw		f2, -44(x2)	# 1776
	fsub	f1, f2, f1	# 1776
	lw		x4, -28(x2)	# 1778
	mul		x5, x30, x4	# 1778
	lw		x6, -24(x2)	# 1778
	add		x5, x6, x5	# 1778
	flw		f2, 0(x5)	# 1778
	lw		x5, -20(x2)	# 455
	lw		x6, 20(x5)	# 455
	mul		x7, x30, x4	# 460
	add		x6, x6, x7	# 460
	flw		f3, 0(x6)	# 460
	fsub	f2, f2, f3	# 1778
	lw		x5, 16(x5)	# 415
	mul		x6, x30, x4	# 420
	add		x5, x5, x6	# 420
	flw		f3, 0(x5)	# 420
	fsqrt	f3, f3	# 1778
	fmul	f2, f2, f3	# 1778
	flw		f3, -40(x2)	# 124
	flw		f4, -16(x2)	# 124
	fle		x31, f4, f3	# 124
	beq		x31, x0, fle_else.30205	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.30204	# 124
fle_else.30205:
	fadd	f5, f0, f4	# 124
fle_cont.30204:
	flw		f6, -12(x2)	# 125
	fsw		f1, -48(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.30207	# 125
	fdiv	f2, f2, f4	# 1783
	fle		x31, f2, f3	# 124
	beq		x31, x0, fle_cont.30208	# 124
	fsub	f2, f0, f2	# 124
fle_cont.30208:
	lw		x29, -8(x2)	# 1784
	fadd	f1, f0, f2
	sw		x1, -52(x2)	# 1784
	addi	x2, x2, -56	# 1784
	lw		x31, 0(x29)	# 1784
	jalr	x1, x31, 0	# 1784
	addi	x2, x2, 56	# 1784
	lw		x1, -52(x2)	# 1784
	fadd	f2, f0, f23	# 1784
	fmul	f1, f1, f2	# 1784
	fadd	f2, f0, f19	# 1784
	fdiv	f1, f1, f2	# 1784
	jal		x0, fle_cont.30206	# 125
fle_else.30207:
	fadd	f1, f0, f24	# 1781
fle_cont.30206:
	flw		f2, -40(x2)	# 151
	fsw		f1, -52(x2)	# 151
	fle		x31, f2, f1	# 151
	beq		x31, x0, fle_else.30210	# 151
	fadd	f3, f0, f17	# 151
	fsub	f3, f1, f3	# 151
	lw		x29, -36(x2)	# 151
	fadd	f1, f0, f3
	sw		x1, -56(x2)	# 151
	addi	x2, x2, -60	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 60	# 151
	lw		x1, -56(x2)	# 151
	lw		x29, -32(x2)	# 151
	sw		x1, -56(x2)	# 151
	addi	x2, x2, -60	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 60	# 151
	lw		x1, -56(x2)	# 151
	jal		x0, fle_cont.30209	# 151
fle_else.30210:
	fadd	f3, f0, f17	# 152
	fadd	f3, f1, f3	# 152
	lw		x29, -36(x2)	# 152
	fadd	f1, f0, f3
	sw		x1, -56(x2)	# 152
	addi	x2, x2, -60	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 60	# 152
	lw		x1, -56(x2)	# 152
	lw		x5, -28(x2)	# 152
	sub		x4, x4, x5	# 152
	lw		x29, -32(x2)	# 152
	sw		x1, -56(x2)	# 152
	addi	x2, x2, -60	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 60	# 152
	lw		x1, -56(x2)	# 152
fle_cont.30209:
	flw		f2, -52(x2)	# 1786
	fsub	f1, f2, f1	# 1786
	lui		x4, %hi(l.25258)	# 1787
	ori		x4, x0, %lo(l.25258)	# 1787
	flw		f2, 0(x4)	# 1787
	fadd	f3, f0, f17	# 1787
	flw		f4, -48(x2)	# 1787
	fsub	f4, f3, f4	# 1787
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1787
	fsub	f1, f3, f1	# 1787
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1787
	flw		f2, -40(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.30212	# 122
	jal		x0, fle_cont.30211	# 122
fle_else.30212:
	fadd	f1, f0, f2	# 1788
fle_cont.30211:
	flw		f2, -4(x2)	# 1789
	fmul	f1, f2, f1	# 1789
	fadd	f2, f0, f29	# 1789
	fdiv	f1, f1, f2	# 1789
	lw		x4, 0(x2)	# 1789
	mul		x4, x30, x4	# 1789
	addi	x4, x4, 60580	# 1789
	fsw		f1, 0(x4)	# 1789
	jalr	x0, x1, 0	# 1789
beq.30194:
	mul		x6, x30, x13	# 1755
	add		x6, x5, x6	# 1755
	flw		f3, 0(x6)	# 1755
	lw		x6, 20(x4)	# 445
	mul		x10, x30, x13	# 450
	add		x6, x6, x10	# 450
	flw		f4, 0(x6)	# 450
	fsub	f3, f3, f4	# 1755
	mul		x6, x30, x11	# 1756
	add		x5, x5, x6	# 1756
	flw		f4, 0(x5)	# 1756
	lw		x4, 20(x4)	# 465
	mul		x5, x30, x11	# 470
	add		x4, x4, x5	# 470
	flw		f5, 0(x4)	# 470
	fsub	f4, f4, f5	# 1756
	fmul	f3, f3, f3	# 127
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 1757
	fsqrt	f3, f3	# 1757
	fadd	f4, f0, f21	# 1757
	fdiv	f3, f3, f4	# 1757
	sw		x11, 0(x2)	# 151
	sw		x14, -28(x2)	# 151
	fsw		f1, -4(x2)	# 151
	sw		x9, -56(x2)	# 151
	fsw		f3, -60(x2)	# 151
	fle		x31, f2, f3	# 151
	beq		x31, x0, fle_else.30215	# 151
	fadd	f2, f0, f17	# 151
	fsub	f2, f3, f2	# 151
	sw		x8, -32(x2)	# 151
	addi	x29, x7, 0
	fadd	f1, f0, f2
	sw		x1, -64(x2)	# 151
	addi	x2, x2, -68	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 68	# 151
	lw		x1, -64(x2)	# 151
	lw		x29, -32(x2)	# 151
	sw		x1, -64(x2)	# 151
	addi	x2, x2, -68	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 68	# 151
	lw		x1, -64(x2)	# 151
	jal		x0, fle_cont.30214	# 151
fle_else.30215:
	fadd	f2, f0, f17	# 152
	fadd	f2, f3, f2	# 152
	sw		x8, -32(x2)	# 152
	addi	x29, x7, 0
	fadd	f1, f0, f2
	sw		x1, -64(x2)	# 152
	addi	x2, x2, -68	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 68	# 152
	lw		x1, -64(x2)	# 152
	lw		x5, -28(x2)	# 152
	sub		x4, x4, x5	# 152
	lw		x29, -32(x2)	# 152
	sw		x1, -64(x2)	# 152
	addi	x2, x2, -68	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 68	# 152
	lw		x1, -64(x2)	# 152
fle_cont.30214:
	flw		f2, -60(x2)	# 1758
	fsub	f1, f2, f1	# 1758
	fadd	f2, f0, f19	# 1758
	fmul	f1, f1, f2	# 1758
	lw		x29, -56(x2)	# 1759
	sw		x1, -64(x2)	# 1759
	addi	x2, x2, -68	# 1759
	lw		x31, 0(x29)	# 1759
	jalr	x1, x31, 0	# 1759
	addi	x2, x2, 68	# 1759
	lw		x1, -64(x2)	# 1759
	fmul	f1, f1, f1	# 127
	flw		f2, -4(x2)	# 1760
	fmul	f3, f1, f2	# 1760
	lw		x4, -28(x2)	# 1760
	mul		x4, x30, x4	# 1760
	addi	x4, x4, 60580	# 1760
	fsw		f3, 0(x4)	# 1760
	fadd	f3, f0, f16	# 1761
	fsub	f1, f3, f1	# 1761
	fmul	f1, f1, f2	# 1761
	lw		x4, 0(x2)	# 1761
	mul		x4, x30, x4	# 1761
	addi	x4, x4, 60580	# 1761
	fsw		f1, 0(x4)	# 1761
	jalr	x0, x1, 0	# 1761
beq.30193:
	mul		x4, x30, x14	# 1748
	add		x4, x5, x4	# 1748
	flw		f2, 0(x4)	# 1748
	lui		x4, %hi(l.25285)	# 1748
	ori		x4, x0, %lo(l.25285)	# 1748
	flw		f3, 0(x4)	# 1748
	fmul	f2, f2, f3	# 1748
	sw		x14, -28(x2)	# 1748
	sw		x13, -64(x2)	# 1748
	fsw		f1, -4(x2)	# 1748
	addi	x29, x6, 0
	fadd	f1, f0, f2
	sw		x1, -68(x2)	# 1748
	addi	x2, x2, -72	# 1748
	lw		x31, 0(x29)	# 1748
	jalr	x1, x31, 0	# 1748
	addi	x2, x2, 72	# 1748
	lw		x1, -68(x2)	# 1748
	fmul	f1, f1, f1	# 127
	flw		f2, -4(x2)	# 1749
	fmul	f3, f2, f1	# 1749
	lw		x4, -64(x2)	# 1749
	mul		x4, x30, x4	# 1749
	addi	x4, x4, 60580	# 1749
	fsw		f3, 0(x4)	# 1749
	fadd	f3, f0, f16	# 1750
	fsub	f1, f3, f1	# 1750
	fmul	f1, f2, f1	# 1750
	lw		x4, -28(x2)	# 1750
	mul		x4, x30, x4	# 1750
	addi	x4, x4, 60580	# 1750
	fsw		f1, 0(x4)	# 1750
	jalr	x0, x1, 0	# 1750
beq.30192:
	mul		x6, x30, x13	# 1730
	add		x6, x5, x6	# 1730
	flw		f3, 0(x6)	# 1730
	lw		x6, 20(x4)	# 445
	mul		x9, x30, x13	# 450
	add		x6, x6, x9	# 450
	flw		f4, 0(x6)	# 450
	fsub	f3, f3, f4	# 1730
	lui		x6, %hi(l.25296)	# 1732
	ori		x6, x0, %lo(l.25296)	# 1732
	flw		f4, 0(x6)	# 1732
	fmul	f5, f3, f4	# 1732
	fsw		f1, -4(x2)	# 151
	sw		x14, -28(x2)	# 151
	sw		x8, -32(x2)	# 151
	sw		x7, -36(x2)	# 151
	fsw		f2, -40(x2)	# 151
	fsw		f4, -68(x2)	# 151
	sw		x4, -20(x2)	# 151
	sw		x5, -24(x2)	# 151
	sw		x11, 0(x2)	# 151
	fsw		f3, -72(x2)	# 151
	fle		x31, f2, f5	# 151
	beq		x31, x0, fle_else.30219	# 151
	fadd	f6, f0, f17	# 151
	fsub	f5, f5, f6	# 151
	addi	x29, x7, 0
	fadd	f1, f0, f5
	sw		x1, -76(x2)	# 151
	addi	x2, x2, -80	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 80	# 151
	lw		x1, -76(x2)	# 151
	lw		x29, -32(x2)	# 151
	sw		x1, -76(x2)	# 151
	addi	x2, x2, -80	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 80	# 151
	lw		x1, -76(x2)	# 151
	jal		x0, fle_cont.30218	# 151
fle_else.30219:
	fadd	f6, f0, f17	# 152
	fadd	f5, f5, f6	# 152
	addi	x29, x7, 0
	fadd	f1, f0, f5
	sw		x1, -76(x2)	# 152
	addi	x2, x2, -80	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 80	# 152
	lw		x1, -76(x2)	# 152
	lw		x5, -28(x2)	# 152
	sub		x4, x4, x5	# 152
	lw		x29, -32(x2)	# 152
	sw		x1, -76(x2)	# 152
	addi	x2, x2, -80	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 80	# 152
	lw		x1, -76(x2)	# 152
fle_cont.30218:
	lui		x4, %hi(l.25300)	# 1732
	ori		x4, x0, %lo(l.25300)	# 1732
	flw		f2, 0(x4)	# 1732
	fmul	f1, f1, f2	# 1732
	flw		f3, -72(x2)	# 1733
	fsub	f1, f3, f1	# 1733
	fadd	f3, f0, f21	# 1733
	lw		x4, 0(x2)	# 1735
	mul		x5, x30, x4	# 1735
	lw		x6, -24(x2)	# 1735
	add		x5, x6, x5	# 1735
	flw		f4, 0(x5)	# 1735
	lw		x5, -20(x2)	# 465
	lw		x5, 20(x5)	# 465
	mul		x4, x30, x4	# 470
	add		x4, x5, x4	# 470
	flw		f5, 0(x4)	# 470
	fsub	f4, f4, f5	# 1735
	flw		f5, -68(x2)	# 1737
	fmul	f5, f4, f5	# 1737
	flw		f6, -40(x2)	# 151
	fsw		f1, -76(x2)	# 151
	fsw		f3, -80(x2)	# 151
	fsw		f4, -84(x2)	# 151
	fsw		f2, -88(x2)	# 151
	fle		x31, f6, f5	# 151
	beq		x31, x0, fle_else.30221	# 151
	fadd	f7, f0, f17	# 151
	fsub	f5, f5, f7	# 151
	lw		x29, -36(x2)	# 151
	fadd	f1, f0, f5
	sw		x1, -92(x2)	# 151
	addi	x2, x2, -96	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 96	# 151
	lw		x1, -92(x2)	# 151
	lw		x29, -32(x2)	# 151
	sw		x1, -92(x2)	# 151
	addi	x2, x2, -96	# 151
	lw		x31, 0(x29)	# 151
	jalr	x1, x31, 0	# 151
	addi	x2, x2, 96	# 151
	lw		x1, -92(x2)	# 151
	jal		x0, fle_cont.30220	# 151
fle_else.30221:
	fadd	f7, f0, f17	# 152
	fadd	f5, f5, f7	# 152
	lw		x29, -36(x2)	# 152
	fadd	f1, f0, f5
	sw		x1, -92(x2)	# 152
	addi	x2, x2, -96	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 96	# 152
	lw		x1, -92(x2)	# 152
	lw		x5, -28(x2)	# 152
	sub		x4, x4, x5	# 152
	lw		x29, -32(x2)	# 152
	sw		x1, -92(x2)	# 152
	addi	x2, x2, -96	# 152
	lw		x31, 0(x29)	# 152
	jalr	x1, x31, 0	# 152
	addi	x2, x2, 96	# 152
	lw		x1, -92(x2)	# 152
fle_cont.30220:
	flw		f2, -88(x2)	# 1737
	fmul	f1, f1, f2	# 1737
	flw		f2, -84(x2)	# 1738
	fsub	f1, f2, f1	# 1738
	flw		f2, -76(x2)	# 125
	flw		f3, -80(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.30223	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.30225	# 125
	flw		f1, -4(x2)	# 1743
	jal		x0, fle_cont.30224	# 125
fle_else.30225:
	flw		f1, -40(x2)	# 1743
fle_cont.30224:
	jal		x0, fle_cont.30222	# 125
fle_else.30223:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.30227	# 125
	flw		f1, -40(x2)	# 1742
	jal		x0, fle_cont.30226	# 125
fle_else.30227:
	flw		f1, -4(x2)	# 1742
fle_cont.30226:
fle_cont.30222:
	lw		x4, -28(x2)	# 1740
	mul		x4, x30, x4	# 1740
	addi	x4, x4, 60580	# 1740
	fsw		f1, 0(x4)	# 1740
	jalr	x0, x1, 0	# 1740
trace_reflections.2896.16798:
	lw		x6, 28(x29)	# 1818
	lw		x7, 24(x29)	# 1818
	lw		x8, 20(x29)	# 1818
	lw		x9, 16(x29)	# 1818
	lw		x10, 12(x29)	# 1818
	flw		f3, 8(x29)	# 1818
	flw		f4, 4(x29)	# 1818
	ble		x9, x4, ble.30229	# 1818
	jalr	x0, x1, 0	# 1838
ble.30229:
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
	fsw		f4, -12(x2)	# 1649
	sw		x5, -16(x2)	# 1649
	fsw		f1, -20(x2)	# 1649
	sw		x8, -24(x2)	# 1649
	sw		x10, -28(x2)	# 1649
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
	fadd	f2, f0, f20	# 1652
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.30232	# 125
	addi	x5, x0, 0	# 1654
	jal		x0, fle_cont.30231	# 125
fle_else.30232:
	fadd	f2, f0, f22	# 1653
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30234	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.30233	# 125
fle_else.30234:
	addi	x5, x0, 1	# 125
fle_cont.30233:
fle_cont.30231:
	beq		x5, x4, beq_cont.30235	# 1823
	mul		x5, x30, x4	# 1824
	addi	x5, x5, 60564	# 1824
	lw		x5, 0(x5)	# 1824
	addi	x6, x0, 4	# 1824
	mul		x5, x5, x6	# 1824
	mul		x6, x30, x4	# 1824
	addi	x6, x6, 60544	# 1824
	lw		x6, 0(x6)	# 1824
	add		x5, x5, x6	# 1824
	lw		x6, -40(x2)	# 669
	lw		x7, 0(x6)	# 669
	beq		x5, x7, beq.30237	# 1825
	jal		x0, beq_cont.30236	# 1825
beq.30237:
	mul		x5, x30, x4	# 1827
	addi	x5, x5, 60536	# 1827
	lw		x5, 0(x5)	# 1827
	lw		x29, -36(x2)	# 1827
	sw		x1, -48(x2)	# 1827
	addi	x2, x2, -52	# 1827
	lw		x31, 0(x29)	# 1827
	jalr	x1, x31, 0	# 1827
	addi	x2, x2, 52	# 1827
	lw		x1, -48(x2)	# 1827
	lw		x5, -44(x2)	# 1827
	beq		x4, x5, beq.30239	# 1827
	jal		x0, beq_cont.30238	# 1827
beq.30239:
	lw		x4, -32(x2)	# 653
	lw		x6, 0(x4)	# 653
	mul		x7, x30, x5	# 306
	addi	x7, x7, 60568	# 306
	flw		f1, 0(x7)	# 306
	mul		x7, x30, x5	# 306
	add		x7, x6, x7	# 306
	flw		f2, 0(x7)	# 306
	fmul	f1, f1, f2	# 306
	lw		x7, -28(x2)	# 306
	mul		x8, x30, x7	# 306
	addi	x8, x8, 60568	# 306
	flw		f2, 0(x8)	# 306
	mul		x8, x30, x7	# 306
	add		x8, x6, x8	# 306
	flw		f3, 0(x8)	# 306
	fmul	f2, f2, f3	# 306
	fadd	f1, f1, f2	# 306
	lw		x8, -24(x2)	# 306
	mul		x9, x30, x8	# 306
	addi	x9, x9, 60568	# 306
	flw		f2, 0(x9)	# 306
	mul		x9, x30, x8	# 306
	add		x6, x6, x9	# 306
	flw		f3, 0(x6)	# 306
	fmul	f2, f2, f3	# 306
	fadd	f1, f1, f2	# 306
	lw		x6, -40(x2)	# 1831
	flw		f2, 8(x6)	# 1831
	flw		f3, -20(x2)	# 1831
	fmul	f4, f2, f3	# 1831
	fmul	f1, f4, f1	# 1831
	lw		x4, 0(x4)	# 653
	mul		x6, x30, x5	# 306
	lw		x9, -16(x2)	# 306
	add		x6, x9, x6	# 306
	flw		f4, 0(x6)	# 306
	mul		x6, x30, x5	# 306
	add		x6, x4, x6	# 306
	flw		f5, 0(x6)	# 306
	fmul	f4, f4, f5	# 306
	mul		x6, x30, x7	# 306
	add		x6, x9, x6	# 306
	flw		f5, 0(x6)	# 306
	mul		x6, x30, x7	# 306
	add		x6, x4, x6	# 306
	flw		f6, 0(x6)	# 306
	fmul	f5, f5, f6	# 306
	fadd	f4, f4, f5	# 306
	mul		x6, x30, x8	# 306
	add		x6, x9, x6	# 306
	flw		f5, 0(x6)	# 306
	mul		x6, x30, x8	# 306
	add		x4, x4, x6	# 306
	flw		f6, 0(x4)	# 306
	fmul	f5, f5, f6	# 306
	fadd	f4, f4, f5	# 306
	fmul	f2, f2, f4	# 1832
	flw		f4, -12(x2)	# 121
	fle		x31, f1, f4	# 121
	beq		x31, x0, fle_else.30241	# 121
	jal		x0, fle_cont.30240	# 121
fle_else.30241:
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
	mul		x4, x30, x7	# 317
	addi	x4, x4, 60604	# 317
	flw		f5, 0(x4)	# 317
	mul		x4, x30, x7	# 317
	addi	x4, x4, 60580	# 317
	flw		f6, 0(x4)	# 317
	fmul	f6, f1, f6	# 317
	fadd	f5, f5, f6	# 317
	mul		x4, x30, x7	# 317
	addi	x4, x4, 60604	# 317
	fsw		f5, 0(x4)	# 317
	mul		x4, x30, x8	# 318
	addi	x4, x4, 60604	# 318
	flw		f5, 0(x4)	# 318
	mul		x4, x30, x8	# 318
	addi	x4, x4, 60580	# 318
	flw		f6, 0(x4)	# 318
	fmul	f1, f1, f6	# 318
	fadd	f1, f5, f1	# 318
	mul		x4, x30, x8	# 318
	addi	x4, x4, 60604	# 318
	fsw		f1, 0(x4)	# 318
fle_cont.30240:
	fle		x31, f2, f4	# 121
	beq		x31, x0, fle_else.30243	# 121
	jal		x0, fle_cont.30242	# 121
fle_else.30243:
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -8(x2)	# 1808
	fmul	f1, f1, f2	# 1808
	mul		x4, x30, x5	# 1809
	addi	x4, x4, 60604	# 1809
	flw		f4, 0(x4)	# 1809
	fadd	f4, f4, f1	# 1809
	mul		x4, x30, x5	# 1809
	addi	x4, x4, 60604	# 1809
	fsw		f4, 0(x4)	# 1809
	mul		x4, x30, x7	# 1810
	addi	x4, x4, 60604	# 1810
	flw		f4, 0(x4)	# 1810
	fadd	f4, f4, f1	# 1810
	mul		x4, x30, x7	# 1810
	addi	x4, x4, 60604	# 1810
	fsw		f4, 0(x4)	# 1810
	mul		x4, x30, x8	# 1811
	addi	x4, x4, 60604	# 1811
	flw		f4, 0(x4)	# 1811
	fadd	f1, f4, f1	# 1811
	mul		x4, x30, x8	# 1811
	addi	x4, x4, 60604	# 1811
	fsw		f1, 0(x4)	# 1811
fle_cont.30242:
beq_cont.30238:
beq_cont.30236:
beq_cont.30235:
	lw		x4, -28(x2)	# 1837
	lw		x5, -4(x2)	# 1837
	sub		x4, x5, x4	# 1837
	flw		f1, -20(x2)	# 1837
	flw		f2, -8(x2)	# 1837
	lw		x5, -16(x2)	# 1837
	lw		x29, 0(x2)	# 1837
	lw		x31, 0(x29)	# 1837
	jalr	x0, x31, 0	# 1837
trace_ray.2901.16803:
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
	ble		x4, x21, ble.30244	# 1846
	jalr	x0, x1, 0	# 1927
ble.30244:
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
	sw		x15, -24(x2)	# 1558
	sw		x21, -28(x2)	# 1558
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
	fadd	f2, f0, f20	# 1561
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.30247	# 125
	addi	x5, x0, 0	# 1563
	jal		x0, fle_cont.30246	# 125
fle_else.30247:
	fadd	f2, f0, f22	# 1562
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30249	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.30248	# 125
fle_else.30249:
	addi	x5, x0, 1	# 125
fle_cont.30248:
fle_cont.30246:
	beq		x5, x4, beq.30250	# 1848
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
	beq		x8, x9, beq.30252	# 1707
	lw		x10, -64(x2)	# 1709
	beq		x8, x10, beq.30254	# 1709
	mul		x8, x30, x4	# 1684
	addi	x8, x8, 60552	# 1684
	flw		f3, 0(x8)	# 1684
	lw		x8, 20(x6)	# 445
	mul		x11, x30, x4	# 450
	add		x8, x8, x11	# 450
	flw		f4, 0(x8)	# 450
	fsub	f3, f3, f4	# 1684
	mul		x8, x30, x9	# 1685
	addi	x8, x8, 60552	# 1685
	flw		f4, 0(x8)	# 1685
	lw		x8, 20(x6)	# 455
	mul		x11, x30, x9	# 460
	add		x8, x8, x11	# 460
	flw		f5, 0(x8)	# 460
	fsub	f4, f4, f5	# 1685
	mul		x8, x30, x10	# 1686
	addi	x8, x8, 60552	# 1686
	flw		f5, 0(x8)	# 1686
	lw		x8, 20(x6)	# 465
	mul		x11, x30, x10	# 470
	add		x8, x8, x11	# 470
	flw		f6, 0(x8)	# 470
	fsub	f5, f5, f6	# 1686
	lw		x8, 16(x6)	# 405
	mul		x11, x30, x4	# 410
	add		x8, x8, x11	# 410
	flw		f6, 0(x8)	# 410
	fmul	f6, f3, f6	# 1688
	lw		x8, 16(x6)	# 415
	mul		x11, x30, x9	# 420
	add		x8, x8, x11	# 420
	flw		f7, 0(x8)	# 420
	fmul	f7, f4, f7	# 1689
	lw		x8, 16(x6)	# 425
	mul		x11, x30, x10	# 430
	add		x8, x8, x11	# 430
	flw		f8, 0(x8)	# 430
	fmul	f8, f5, f8	# 1690
	lw		x8, 12(x6)	# 396
	beq		x8, x4, beq.30256	# 1692
	lw		x8, 36(x6)	# 545
	mul		x11, x30, x10	# 550
	add		x8, x8, x11	# 550
	flw		f9, 0(x8)	# 550
	fmul	f9, f4, f9	# 1697
	lw		x8, 36(x6)	# 535
	mul		x11, x30, x9	# 540
	add		x8, x8, x11	# 540
	flw		f10, 0(x8)	# 540
	fmul	f10, f5, f10	# 1697
	fadd	f9, f9, f10	# 1697
	fadd	f10, f0, f17	# 126
	fmul	f9, f9, f10	# 126
	fadd	f6, f6, f9	# 1697
	mul		x8, x30, x4	# 1697
	addi	x8, x8, 60568	# 1697
	fsw		f6, 0(x8)	# 1697
	lw		x8, 36(x6)	# 545
	mul		x11, x30, x10	# 550
	add		x8, x8, x11	# 550
	flw		f6, 0(x8)	# 550
	fmul	f6, f3, f6	# 1698
	lw		x8, 36(x6)	# 525
	mul		x11, x30, x4	# 530
	add		x8, x8, x11	# 530
	flw		f9, 0(x8)	# 530
	fmul	f5, f5, f9	# 1698
	fadd	f5, f6, f5	# 1698
	fmul	f5, f5, f10	# 126
	fadd	f5, f7, f5	# 1698
	mul		x8, x30, x9	# 1698
	addi	x8, x8, 60568	# 1698
	fsw		f5, 0(x8)	# 1698
	lw		x8, 36(x6)	# 535
	mul		x11, x30, x9	# 540
	add		x8, x8, x11	# 540
	flw		f5, 0(x8)	# 540
	fmul	f3, f3, f5	# 1699
	lw		x8, 36(x6)	# 525
	mul		x11, x30, x4	# 530
	add		x8, x8, x11	# 530
	flw		f5, 0(x8)	# 530
	fmul	f4, f4, f5	# 1699
	fadd	f3, f3, f4	# 1699
	fmul	f3, f3, f10	# 126
	fadd	f3, f8, f3	# 1699
	mul		x8, x30, x10	# 1699
	addi	x8, x8, 60568	# 1699
	fsw		f3, 0(x8)	# 1699
	jal		x0, beq_cont.30255	# 1692
beq.30256:
	mul		x8, x30, x4	# 1693
	addi	x8, x8, 60568	# 1693
	fsw		f6, 0(x8)	# 1693
	mul		x8, x30, x9	# 1694
	addi	x8, x8, 60568	# 1694
	fsw		f7, 0(x8)	# 1694
	mul		x8, x30, x10	# 1695
	addi	x8, x8, 60568	# 1695
	fsw		f8, 0(x8)	# 1695
beq_cont.30255:
	lw		x8, 24(x6)	# 387
	mul		x11, x30, x4	# 297
	addi	x11, x11, 60568	# 297
	flw		f3, 0(x11)	# 297
	fmul	f3, f3, f3	# 127
	mul		x11, x30, x9	# 297
	addi	x11, x11, 60568	# 297
	flw		f4, 0(x11)	# 297
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 297
	mul		x11, x30, x10	# 297
	addi	x11, x11, 60568	# 297
	flw		f4, 0(x11)	# 297
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 297
	fsqrt	f3, f3	# 297
	flw		f4, -60(x2)	# 120
	feq		x31, f3, f4	# 120
	beq		x31, x0, feq_else.30258	# 120
	fadd	f3, f0, f16	# 298
	jal		x0, feq_cont.30257	# 120
feq_else.30258:
	beq		x8, x4, beq.30260	# 298
	fadd	f5, f0, f18	# 298
	fdiv	f3, f5, f3	# 298
	jal		x0, beq_cont.30259	# 298
beq.30260:
	fadd	f5, f0, f16	# 298
	fdiv	f3, f5, f3	# 298
beq_cont.30259:
feq_cont.30257:
	mul		x8, x30, x4	# 299
	addi	x8, x8, 60568	# 299
	flw		f5, 0(x8)	# 299
	fmul	f5, f5, f3	# 299
	mul		x8, x30, x4	# 299
	addi	x8, x8, 60568	# 299
	fsw		f5, 0(x8)	# 299
	mul		x8, x30, x9	# 300
	addi	x8, x8, 60568	# 300
	flw		f5, 0(x8)	# 300
	fmul	f5, f5, f3	# 300
	mul		x8, x30, x9	# 300
	addi	x8, x8, 60568	# 300
	fsw		f5, 0(x8)	# 300
	mul		x8, x30, x10	# 301
	addi	x8, x8, 60568	# 301
	flw		f5, 0(x8)	# 301
	fmul	f3, f5, f3	# 301
	mul		x8, x30, x10	# 301
	addi	x8, x8, 60568	# 301
	fsw		f3, 0(x8)	# 301
	jal		x0, beq_cont.30253	# 1709
beq.30254:
	lw		x8, 16(x6)	# 405
	mul		x11, x30, x4	# 410
	add		x8, x8, x11	# 410
	flw		f3, 0(x8)	# 410
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x4	# 1677
	addi	x8, x8, 60568	# 1677
	fsw		f3, 0(x8)	# 1677
	lw		x8, 16(x6)	# 415
	mul		x11, x30, x9	# 420
	add		x8, x8, x11	# 420
	flw		f3, 0(x8)	# 420
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x9	# 1678
	addi	x8, x8, 60568	# 1678
	fsw		f3, 0(x8)	# 1678
	lw		x8, 16(x6)	# 425
	mul		x11, x30, x10	# 430
	add		x8, x8, x11	# 430
	flw		f3, 0(x8)	# 430
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x10	# 1679
	addi	x8, x8, 60568	# 1679
	fsw		f3, 0(x8)	# 1679
beq_cont.30253:
	jal		x0, beq_cont.30251	# 1707
beq.30252:
	mul		x8, x30, x4	# 1668
	addi	x8, x8, 60544	# 1668
	lw		x8, 0(x8)	# 1668
	mul		x10, x30, x4	# 261
	addi	x10, x10, 60568	# 261
	flw		f3, -60(x2)	# 261
	fsw		f3, 0(x10)	# 261
	mul		x10, x30, x9	# 262
	addi	x10, x10, 60568	# 262
	fsw		f3, 0(x10)	# 262
	lw		x10, -64(x2)	# 263
	mul		x11, x30, x10	# 263
	addi	x11, x11, 60568	# 263
	fsw		f3, 0(x11)	# 263
	sub		x8, x8, x9	# 1671
	mul		x11, x30, x8	# 1671
	lw		x12, -72(x2)	# 1671
	add		x11, x12, x11	# 1671
	flw		f4, 0(x11)	# 1671
	feq		x31, f4, f3	# 120
	beq		x31, x0, feq_else.30262	# 120
	fadd	f4, f0, f3	# 226
	jal		x0, feq_cont.30261	# 120
feq_else.30262:
	fle		x31, f4, f3	# 121
	beq		x31, x0, fle_else.30264	# 121
	fadd	f4, f0, f18	# 228
	jal		x0, fle_cont.30263	# 121
fle_else.30264:
	fadd	f4, f0, f16	# 227
fle_cont.30263:
feq_cont.30261:
	fsub	f4, f0, f4	# 123
	mul		x8, x30, x8	# 1671
	addi	x8, x8, 60568	# 1671
	fsw		f4, 0(x8)	# 1671
beq_cont.30251:
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
	mul		x8, x30, x10	# 275
	addi	x8, x8, 60552	# 275
	flw		f3, 0(x8)	# 275
	mul		x8, x30, x10	# 275
	addi	x8, x8, 60636	# 275
	fsw		f3, 0(x8)	# 275
	lw		x8, 0(x6)	# 357
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
	mul		x12, x30, x10	# 520
	add		x11, x11, x12	# 520
	flw		f3, 0(x11)	# 520
	mul		x11, x30, x10	# 1726
	addi	x11, x11, 60580	# 1726
	fsw		f3, 0(x11)	# 1726
	sw		x7, -92(x2)	# 1727
	fsw		f1, -96(x2)	# 1727
	sw		x6, -100(x2)	# 1727
	sw		x5, -104(x2)	# 1727
	beq		x8, x9, beq.30266	# 1727
	beq		x8, x10, beq.30268	# 1745
	lw		x11, -36(x2)	# 1752
	beq		x8, x11, beq.30270	# 1752
	lw		x11, -28(x2)	# 1763
	beq		x8, x11, beq.30272	# 1763
	jal		x0, beq_cont.30271	# 1763
beq.30272:
	mul		x8, x30, x4	# 1765
	addi	x8, x8, 60552	# 1765
	flw		f3, 0(x8)	# 1765
	lw		x8, 20(x6)	# 445
	mul		x12, x30, x4	# 450
	add		x8, x8, x12	# 450
	flw		f4, 0(x8)	# 450
	fsub	f3, f3, f4	# 1765
	lw		x8, 16(x6)	# 405
	mul		x12, x30, x4	# 410
	add		x8, x8, x12	# 410
	flw		f4, 0(x8)	# 410
	fsqrt	f4, f4	# 1765
	fmul	f3, f3, f4	# 1765
	mul		x8, x30, x10	# 1766
	addi	x8, x8, 60552	# 1766
	flw		f4, 0(x8)	# 1766
	lw		x8, 20(x6)	# 465
	mul		x12, x30, x10	# 470
	add		x8, x8, x12	# 470
	flw		f5, 0(x8)	# 470
	fsub	f4, f4, f5	# 1766
	lw		x8, 16(x6)	# 425
	mul		x12, x30, x10	# 430
	add		x8, x8, x12	# 430
	flw		f5, 0(x8)	# 430
	fsqrt	f5, f5	# 1766
	fmul	f4, f4, f5	# 1766
	fmul	f5, f3, f3	# 127
	fmul	f6, f4, f4	# 127
	fadd	f5, f5, f6	# 1767
	flw		f6, -60(x2)	# 124
	fle		x31, f3, f6	# 124
	beq		x31, x0, fle_else.30274	# 124
	fsub	f7, f0, f3	# 124
	jal		x0, fle_cont.30273	# 124
fle_else.30274:
	fadd	f7, f0, f3	# 124
fle_cont.30273:
	lui		x8, %hi(l.25237)	# 1769
	ori		x8, x0, %lo(l.25237)	# 1769
	flw		f8, 0(x8)	# 1769
	fsw		f8, -108(x2)	# 125
	fsw		f5, -112(x2)	# 125
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.30276	# 125
	fdiv	f3, f4, f3	# 1772
	fle		x31, f3, f6	# 124
	beq		x31, x0, fle_cont.30277	# 124
	fsub	f3, f0, f3	# 124
fle_cont.30277:
	lw		x29, -24(x2)	# 1774
	fadd	f1, f0, f3
	sw		x1, -116(x2)	# 1774
	addi	x2, x2, -120	# 1774
	lw		x31, 0(x29)	# 1774
	jalr	x1, x31, 0	# 1774
	addi	x2, x2, 120	# 1774
	lw		x1, -116(x2)	# 1774
	fadd	f2, f0, f23	# 1774
	fmul	f1, f1, f2	# 1774
	fadd	f2, f0, f19	# 1774
	fdiv	f1, f1, f2	# 1774
	jal		x0, fle_cont.30275	# 125
fle_else.30276:
	fadd	f1, f0, f24	# 1770
fle_cont.30275:
	flw		f2, -60(x2)	# 151
	fsw		f1, -116(x2)	# 151
	fle		x31, f2, f1	# 151
	beq		x31, x0, fle_else.30279	# 151
	fadd	f3, f0, f17	# 151
	fsub	f3, f1, f3	# 151
	lw		x29, -52(x2)	# 151
	fadd	f1, f0, f3
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
	jal		x0, fle_cont.30278	# 151
fle_else.30279:
	fadd	f3, f0, f17	# 152
	fadd	f3, f1, f3	# 152
	lw		x29, -52(x2)	# 152
	fadd	f1, f0, f3
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
fle_cont.30278:
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
	beq		x31, x0, fle_else.30281	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.30280	# 124
fle_else.30281:
	fadd	f5, f0, f4	# 124
fle_cont.30280:
	flw		f6, -108(x2)	# 125
	fsw		f1, -120(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.30283	# 125
	fdiv	f2, f2, f4	# 1783
	fle		x31, f2, f3	# 124
	beq		x31, x0, fle_cont.30284	# 124
	fsub	f2, f0, f2	# 124
fle_cont.30284:
	lw		x29, -24(x2)	# 1784
	fadd	f1, f0, f2
	sw		x1, -124(x2)	# 1784
	addi	x2, x2, -128	# 1784
	lw		x31, 0(x29)	# 1784
	jalr	x1, x31, 0	# 1784
	addi	x2, x2, 128	# 1784
	lw		x1, -124(x2)	# 1784
	fadd	f2, f0, f23	# 1784
	fmul	f1, f1, f2	# 1784
	fadd	f2, f0, f19	# 1784
	fdiv	f1, f1, f2	# 1784
	jal		x0, fle_cont.30282	# 125
fle_else.30283:
	fadd	f1, f0, f24	# 1781
fle_cont.30282:
	flw		f2, -60(x2)	# 151
	fsw		f1, -124(x2)	# 151
	fle		x31, f2, f1	# 151
	beq		x31, x0, fle_else.30286	# 151
	fadd	f3, f0, f17	# 151
	fsub	f3, f1, f3	# 151
	lw		x29, -52(x2)	# 151
	fadd	f1, f0, f3
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
	jal		x0, fle_cont.30285	# 151
fle_else.30286:
	fadd	f3, f0, f17	# 152
	fadd	f3, f1, f3	# 152
	lw		x29, -52(x2)	# 152
	fadd	f1, f0, f3
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
fle_cont.30285:
	flw		f2, -124(x2)	# 1786
	fsub	f1, f2, f1	# 1786
	lui		x4, %hi(l.25258)	# 1787
	ori		x4, x0, %lo(l.25258)	# 1787
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
	beq		x31, x0, fle_else.30288	# 122
	jal		x0, fle_cont.30287	# 122
fle_else.30288:
	fadd	f1, f0, f2	# 1788
fle_cont.30287:
	flw		f3, -44(x2)	# 1789
	fmul	f1, f3, f1	# 1789
	fadd	f3, f0, f29	# 1789
	fdiv	f1, f1, f3	# 1789
	lw		x4, -64(x2)	# 1789
	mul		x5, x30, x4	# 1789
	addi	x5, x5, 60580	# 1789
	fsw		f1, 0(x5)	# 1789
beq_cont.30271:
	jal		x0, beq_cont.30269	# 1752
beq.30270:
	mul		x8, x30, x4	# 1755
	addi	x8, x8, 60552	# 1755
	flw		f3, 0(x8)	# 1755
	lw		x8, 20(x6)	# 445
	mul		x11, x30, x4	# 450
	add		x8, x8, x11	# 450
	flw		f4, 0(x8)	# 450
	fsub	f3, f3, f4	# 1755
	mul		x8, x30, x10	# 1756
	addi	x8, x8, 60552	# 1756
	flw		f4, 0(x8)	# 1756
	lw		x8, 20(x6)	# 465
	mul		x11, x30, x10	# 470
	add		x8, x8, x11	# 470
	flw		f5, 0(x8)	# 470
	fsub	f4, f4, f5	# 1756
	fmul	f3, f3, f3	# 127
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 1757
	fsqrt	f3, f3	# 1757
	fadd	f4, f0, f21	# 1757
	fdiv	f3, f3, f4	# 1757
	flw		f4, -60(x2)	# 151
	fsw		f3, -128(x2)	# 151
	fle		x31, f4, f3	# 151
	beq		x31, x0, fle_else.30290	# 151
	fadd	f5, f0, f17	# 151
	fsub	f5, f3, f5	# 151
	lw		x29, -52(x2)	# 151
	fadd	f1, f0, f5
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
	jal		x0, fle_cont.30289	# 151
fle_else.30290:
	fadd	f5, f0, f17	# 152
	fadd	f5, f3, f5	# 152
	lw		x29, -52(x2)	# 152
	fadd	f1, f0, f5
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
fle_cont.30289:
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
beq_cont.30269:
	jal		x0, beq_cont.30267	# 1745
beq.30268:
	mul		x8, x30, x9	# 1748
	addi	x8, x8, 60552	# 1748
	flw		f3, 0(x8)	# 1748
	lui		x8, %hi(l.25285)	# 1748
	ori		x8, x0, %lo(l.25285)	# 1748
	flw		f4, 0(x8)	# 1748
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
beq_cont.30267:
	jal		x0, beq_cont.30265	# 1727
beq.30266:
	mul		x8, x30, x4	# 1730
	addi	x8, x8, 60552	# 1730
	flw		f3, 0(x8)	# 1730
	lw		x8, 20(x6)	# 445
	mul		x11, x30, x4	# 450
	add		x8, x8, x11	# 450
	flw		f4, 0(x8)	# 450
	fsub	f3, f3, f4	# 1730
	lui		x8, %hi(l.25296)	# 1732
	ori		x8, x0, %lo(l.25296)	# 1732
	flw		f4, 0(x8)	# 1732
	fmul	f5, f3, f4	# 1732
	flw		f6, -60(x2)	# 151
	fsw		f4, -132(x2)	# 151
	fsw		f3, -136(x2)	# 151
	fle		x31, f6, f5	# 151
	beq		x31, x0, fle_else.30292	# 151
	fadd	f7, f0, f17	# 151
	fsub	f5, f5, f7	# 151
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
	jal		x0, fle_cont.30291	# 151
fle_else.30292:
	fadd	f7, f0, f17	# 152
	fadd	f5, f5, f7	# 152
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
fle_cont.30291:
	lui		x4, %hi(l.25300)	# 1732
	ori		x4, x0, %lo(l.25300)	# 1732
	flw		f2, 0(x4)	# 1732
	fmul	f1, f1, f2	# 1732
	flw		f3, -136(x2)	# 1733
	fsub	f1, f3, f1	# 1733
	fadd	f3, f0, f21	# 1733
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
	beq		x31, x0, fle_else.30294	# 151
	fadd	f7, f0, f17	# 151
	fsub	f5, f5, f7	# 151
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
	jal		x0, fle_cont.30293	# 151
fle_else.30294:
	fadd	f7, f0, f17	# 152
	fadd	f5, f5, f7	# 152
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
fle_cont.30293:
	flw		f2, -152(x2)	# 1737
	fmul	f1, f1, f2	# 1737
	flw		f2, -148(x2)	# 1738
	fsub	f1, f2, f1	# 1738
	flw		f2, -140(x2)	# 125
	flw		f3, -144(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.30296	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.30298	# 125
	flw		f1, -44(x2)	# 1743
	jal		x0, fle_cont.30297	# 125
fle_else.30298:
	flw		f1, -60(x2)	# 1743
fle_cont.30297:
	jal		x0, fle_cont.30295	# 125
fle_else.30296:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.30300	# 125
	flw		f1, -60(x2)	# 1742
	jal		x0, fle_cont.30299	# 125
fle_else.30300:
	flw		f1, -44(x2)	# 1742
fle_cont.30299:
fle_cont.30295:
	lw		x4, -68(x2)	# 1740
	mul		x5, x30, x4	# 1740
	addi	x5, x5, 60580	# 1740
	fsw		f1, 0(x5)	# 1740
beq_cont.30265:
	lw		x4, -28(x2)	# 1860
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
	beq		x31, x0, fle_else.30302	# 125
	mul		x13, x30, x7	# 1869
	add		x8, x8, x13	# 1869
	sw		x10, 0(x8)	# 1869
	lw		x8, 16(x5)	# 605
	mul		x13, x30, x7	# 1871
	add		x13, x8, x13	# 1871
	lw		x13, 0(x13)	# 1871
	mul		x14, x30, x6	# 273
	addi	x14, x14, 60580	# 273
	flw		f1, 0(x14)	# 273
	mul		x14, x30, x6	# 273
	add		x14, x13, x14	# 273
	fsw		f1, 0(x14)	# 273
	mul		x14, x30, x10	# 274
	addi	x14, x14, 60580	# 274
	flw		f1, 0(x14)	# 274
	mul		x14, x30, x10	# 274
	add		x14, x13, x14	# 274
	fsw		f1, 0(x14)	# 274
	mul		x14, x30, x11	# 275
	addi	x14, x14, 60580	# 275
	flw		f1, 0(x14)	# 275
	mul		x14, x30, x11	# 275
	add		x13, x13, x14	# 275
	fsw		f1, 0(x13)	# 275
	mul		x13, x30, x7	# 1872
	add		x8, x8, x13	# 1872
	lw		x8, 0(x8)	# 1872
	lui		x13, %hi(l.25627)	# 1872
	ori		x13, x0, %lo(l.25627)	# 1872
	flw		f1, 0(x13)	# 1872
	flw		f2, -96(x2)	# 1872
	fmul	f1, f1, f2	# 1872
	mul		x13, x30, x6	# 339
	add		x13, x8, x13	# 339
	flw		f3, 0(x13)	# 339
	fmul	f3, f3, f1	# 339
	mul		x13, x30, x6	# 339
	add		x13, x8, x13	# 339
	fsw		f3, 0(x13)	# 339
	mul		x13, x30, x10	# 340
	add		x13, x8, x13	# 340
	flw		f3, 0(x13)	# 340
	fmul	f3, f3, f1	# 340
	mul		x13, x30, x10	# 340
	add		x13, x8, x13	# 340
	fsw		f3, 0(x13)	# 340
	mul		x13, x30, x11	# 341
	add		x13, x8, x13	# 341
	flw		f3, 0(x13)	# 341
	fmul	f1, f3, f1	# 341
	mul		x13, x30, x11	# 341
	add		x8, x8, x13	# 341
	fsw		f1, 0(x8)	# 341
	lw		x8, 28(x5)	# 642
	mul		x13, x30, x7	# 1874
	add		x8, x8, x13	# 1874
	lw		x8, 0(x8)	# 1874
	mul		x13, x30, x6	# 273
	addi	x13, x13, 60568	# 273
	flw		f1, 0(x13)	# 273
	mul		x13, x30, x6	# 273
	add		x13, x8, x13	# 273
	fsw		f1, 0(x13)	# 273
	mul		x13, x30, x10	# 274
	addi	x13, x13, 60568	# 274
	flw		f1, 0(x13)	# 274
	mul		x13, x30, x10	# 274
	add		x13, x8, x13	# 274
	fsw		f1, 0(x13)	# 274
	mul		x13, x30, x11	# 275
	addi	x13, x13, 60568	# 275
	flw		f1, 0(x13)	# 275
	mul		x13, x30, x11	# 275
	add		x8, x8, x13	# 275
	fsw		f1, 0(x8)	# 275
	jal		x0, fle_cont.30301	# 125
fle_else.30302:
	mul		x13, x30, x7	# 1867
	add		x8, x8, x13	# 1867
	sw		x6, 0(x8)	# 1867
fle_cont.30301:
	lui		x8, %hi(l.25655)	# 1877
	ori		x8, x0, %lo(l.25655)	# 1877
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
	beq		x4, x5, beq.30304	# 1884
	jal		x0, beq_cont.30303	# 1884
beq.30304:
	mul		x4, x30, x5	# 306
	addi	x4, x4, 60568	# 306
	flw		f1, 0(x4)	# 306
	mul		x4, x30, x5	# 306
	addi	x4, x4, 60312	# 306
	flw		f2, 0(x4)	# 306
	fmul	f1, f1, f2	# 306
	lw		x4, -68(x2)	# 306
	mul		x6, x30, x4	# 306
	addi	x6, x6, 60568	# 306
	flw		f3, 0(x6)	# 306
	mul		x6, x30, x4	# 306
	addi	x6, x6, 60312	# 306
	flw		f4, 0(x6)	# 306
	fmul	f3, f3, f4	# 306
	fadd	f1, f1, f3	# 306
	lw		x6, -64(x2)	# 306
	mul		x7, x30, x6	# 306
	addi	x7, x7, 60568	# 306
	flw		f3, 0(x7)	# 306
	mul		x7, x30, x6	# 306
	addi	x7, x7, 60312	# 306
	flw		f5, 0(x7)	# 306
	fmul	f3, f3, f5	# 306
	fadd	f1, f1, f3	# 306
	fsub	f1, f0, f1	# 123
	flw		f3, -96(x2)	# 1885
	fmul	f1, f1, f3	# 1885
	mul		x7, x30, x5	# 306
	lw		x8, -72(x2)	# 306
	add		x7, x8, x7	# 306
	flw		f6, 0(x7)	# 306
	fmul	f2, f6, f2	# 306
	mul		x7, x30, x4	# 306
	add		x7, x8, x7	# 306
	flw		f6, 0(x7)	# 306
	fmul	f4, f6, f4	# 306
	fadd	f2, f2, f4	# 306
	mul		x7, x30, x6	# 306
	add		x7, x8, x7	# 306
	flw		f4, 0(x7)	# 306
	fmul	f4, f4, f5	# 306
	fadd	f2, f2, f4	# 306
	fsub	f2, f0, f2	# 123
	flw		f4, -60(x2)	# 121
	fle		x31, f1, f4	# 121
	beq		x31, x0, fle_else.30306	# 121
	jal		x0, fle_cont.30305	# 121
fle_else.30306:
	mul		x7, x30, x5	# 316
	addi	x7, x7, 60604	# 316
	flw		f5, 0(x7)	# 316
	mul		x7, x30, x5	# 316
	addi	x7, x7, 60580	# 316
	flw		f6, 0(x7)	# 316
	fmul	f6, f1, f6	# 316
	fadd	f5, f5, f6	# 316
	mul		x7, x30, x5	# 316
	addi	x7, x7, 60604	# 316
	fsw		f5, 0(x7)	# 316
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
	mul		x7, x30, x6	# 318
	addi	x7, x7, 60604	# 318
	flw		f5, 0(x7)	# 318
	mul		x7, x30, x6	# 318
	addi	x7, x7, 60580	# 318
	flw		f6, 0(x7)	# 318
	fmul	f1, f1, f6	# 318
	fadd	f1, f5, f1	# 318
	mul		x7, x30, x6	# 318
	addi	x7, x7, 60604	# 318
	fsw		f1, 0(x7)	# 318
fle_cont.30305:
	fle		x31, f2, f4	# 121
	beq		x31, x0, fle_else.30308	# 121
	jal		x0, fle_cont.30307	# 121
fle_else.30308:
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -156(x2)	# 1808
	fmul	f1, f1, f2	# 1808
	mul		x7, x30, x5	# 1809
	addi	x7, x7, 60604	# 1809
	flw		f4, 0(x7)	# 1809
	fadd	f4, f4, f1	# 1809
	mul		x7, x30, x5	# 1809
	addi	x7, x7, 60604	# 1809
	fsw		f4, 0(x7)	# 1809
	mul		x7, x30, x4	# 1810
	addi	x7, x7, 60604	# 1810
	flw		f4, 0(x7)	# 1810
	fadd	f4, f4, f1	# 1810
	mul		x7, x30, x4	# 1810
	addi	x7, x7, 60604	# 1810
	fsw		f4, 0(x7)	# 1810
	mul		x7, x30, x6	# 1811
	addi	x7, x7, 60604	# 1811
	flw		f4, 0(x7)	# 1811
	fadd	f1, f4, f1	# 1811
	mul		x7, x30, x6	# 1811
	addi	x7, x7, 60604	# 1811
	fsw		f1, 0(x7)	# 1811
fle_cont.30307:
beq_cont.30303:
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
	fadd	f1, f0, f26	# 1895
	flw		f2, -56(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30309	# 125
	jalr	x0, x1, 0	# 1906
fle_else.30309:
	lw		x4, -84(x2)	# 1897
	lw		x5, -28(x2)	# 1897
	ble		x5, x4, ble_cont.30311	# 1897
	lw		x5, -68(x2)	# 1898
	add		x6, x4, x5	# 1898
	mul		x6, x30, x6	# 1898
	lw		x7, -80(x2)	# 1898
	add		x6, x7, x6	# 1898
	lw		x7, -76(x2)	# 1898
	sw		x7, 0(x6)	# 1898
ble_cont.30311:
	lw		x5, -64(x2)	# 1901
	lw		x6, -92(x2)	# 1901
	beq		x6, x5, beq.30312	# 1901
	jalr	x0, x1, 0	# 1904
beq.30312:
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
beq.30250:
	lw		x5, -84(x2)	# 1911
	mul		x6, x30, x5	# 1911
	lw		x7, -80(x2)	# 1911
	add		x6, x7, x6	# 1911
	lw		x7, -76(x2)	# 1911
	sw		x7, 0(x6)	# 1911
	beq		x5, x4, beq.30314	# 1913
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
	beq		x31, x0, fle_else.30315	# 121
	jalr	x0, x1, 0	# 1924
fle_else.30315:
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
beq.30314:
	jalr	x0, x1, 0	# 1925
iter_trace_diffuse_rays.2910.16809:
	lw		x8, 32(x29)	# 1958
	lw		x9, 28(x29)	# 1958
	lw		x10, 24(x29)	# 1958
	lw		x11, 20(x29)	# 1958
	lw		x12, 16(x29)	# 1958
	lw		x13, 12(x29)	# 1958
	flw		f1, 8(x29)	# 1958
	flw		f2, 4(x29)	# 1958
	ble		x12, x7, ble.30319	# 1958
	jalr	x0, x1, 0	# 1969
ble.30319:
	mul		x14, x30, x7	# 1959
	add		x14, x4, x14	# 1959
	lw		x14, 0(x14)	# 1959
	lw		x15, 0(x14)	# 653
	mul		x16, x30, x12	# 306
	add		x16, x15, x16	# 306
	flw		f3, 0(x16)	# 306
	mul		x16, x30, x12	# 306
	add		x16, x5, x16	# 306
	flw		f4, 0(x16)	# 306
	fmul	f3, f3, f4	# 306
	mul		x16, x30, x13	# 306
	add		x16, x15, x16	# 306
	flw		f4, 0(x16)	# 306
	mul		x16, x30, x13	# 306
	add		x16, x5, x16	# 306
	flw		f5, 0(x16)	# 306
	fmul	f4, f4, f5	# 306
	fadd	f3, f3, f4	# 306
	mul		x16, x30, x11	# 306
	add		x15, x15, x16	# 306
	flw		f4, 0(x15)	# 306
	mul		x15, x30, x11	# 306
	add		x15, x5, x15	# 306
	flw		f5, 0(x15)	# 306
	fmul	f4, f4, f5	# 306
	fadd	f3, f3, f4	# 306
	sw		x6, 0(x2)	# 122
	sw		x5, -4(x2)	# 122
	sw		x4, -8(x2)	# 122
	sw		x29, -12(x2)	# 122
	sw		x11, -16(x2)	# 122
	sw		x7, -20(x2)	# 122
	fle		x31, f2, f3	# 122
	beq		x31, x0, fle_else.30322	# 122
	lui		x15, %hi(l.25936)	# 1966
	ori		x15, x0, %lo(l.25936)	# 1966
	flw		f4, 0(x15)	# 1966
	fdiv	f3, f3, f4	# 1966
	mul		x15, x30, x12	# 1648
	addi	x15, x15, 60548	# 1648
	fsw		f1, 0(x15)	# 1648
	mul		x15, x30, x12	# 1649
	addi	x15, x15, 60536	# 1649
	lw		x15, 0(x15)	# 1649
	fsw		f3, -24(x2)	# 1649
	sw		x10, -28(x2)	# 1649
	sw		x8, -32(x2)	# 1649
	fsw		f2, -36(x2)	# 1649
	sw		x13, -40(x2)	# 1649
	sw		x14, -44(x2)	# 1649
	sw		x12, -48(x2)	# 1649
	addi	x6, x14, 0
	addi	x5, x15, 0
	addi	x4, x12, 0
	addi	x29, x9, 0
	sw		x1, -52(x2)	# 1649
	addi	x2, x2, -56	# 1649
	lw		x31, 0(x29)	# 1649
	jalr	x1, x31, 0	# 1649
	addi	x2, x2, 56	# 1649
	lw		x1, -52(x2)	# 1649
	lw		x4, -48(x2)	# 1650
	mul		x5, x30, x4	# 1650
	addi	x5, x5, 60548	# 1650
	flw		f1, 0(x5)	# 1650
	fadd	f2, f0, f20	# 1652
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.30324	# 125
	addi	x5, x0, 0	# 1654
	jal		x0, fle_cont.30323	# 125
fle_else.30324:
	fadd	f2, f0, f22	# 1653
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30326	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.30325	# 125
fle_else.30326:
	addi	x5, x0, 1	# 125
fle_cont.30325:
fle_cont.30323:
	beq		x5, x4, beq_cont.30327	# 1941
	mul		x5, x30, x4	# 1942
	addi	x5, x5, 60564	# 1942
	lw		x5, 0(x5)	# 1942
	mul		x5, x30, x5	# 1942
	addi	x5, x5, 60048	# 1942
	lw		x5, 0(x5)	# 1942
	lw		x6, -44(x2)	# 653
	lw		x6, 0(x6)	# 653
	lw		x7, 4(x5)	# 367
	lw		x8, -40(x2)	# 1707
	beq		x7, x8, beq.30329	# 1707
	lw		x6, -16(x2)	# 1709
	beq		x7, x6, beq.30331	# 1709
	mul		x7, x30, x4	# 1684
	addi	x7, x7, 60552	# 1684
	flw		f1, 0(x7)	# 1684
	lw		x7, 20(x5)	# 445
	mul		x9, x30, x4	# 450
	add		x7, x7, x9	# 450
	flw		f2, 0(x7)	# 450
	fsub	f1, f1, f2	# 1684
	mul		x7, x30, x8	# 1685
	addi	x7, x7, 60552	# 1685
	flw		f2, 0(x7)	# 1685
	lw		x7, 20(x5)	# 455
	mul		x9, x30, x8	# 460
	add		x7, x7, x9	# 460
	flw		f3, 0(x7)	# 460
	fsub	f2, f2, f3	# 1685
	mul		x7, x30, x6	# 1686
	addi	x7, x7, 60552	# 1686
	flw		f3, 0(x7)	# 1686
	lw		x7, 20(x5)	# 465
	mul		x9, x30, x6	# 470
	add		x7, x7, x9	# 470
	flw		f4, 0(x7)	# 470
	fsub	f3, f3, f4	# 1686
	lw		x7, 16(x5)	# 405
	mul		x9, x30, x4	# 410
	add		x7, x7, x9	# 410
	flw		f4, 0(x7)	# 410
	fmul	f4, f1, f4	# 1688
	lw		x7, 16(x5)	# 415
	mul		x9, x30, x8	# 420
	add		x7, x7, x9	# 420
	flw		f5, 0(x7)	# 420
	fmul	f5, f2, f5	# 1689
	lw		x7, 16(x5)	# 425
	mul		x9, x30, x6	# 430
	add		x7, x7, x9	# 430
	flw		f6, 0(x7)	# 430
	fmul	f6, f3, f6	# 1690
	lw		x7, 12(x5)	# 396
	beq		x7, x4, beq.30333	# 1692
	lw		x7, 36(x5)	# 545
	mul		x9, x30, x6	# 550
	add		x7, x7, x9	# 550
	flw		f7, 0(x7)	# 550
	fmul	f8, f2, f7	# 1697
	lw		x7, 36(x5)	# 535
	mul		x9, x30, x8	# 540
	add		x7, x7, x9	# 540
	flw		f9, 0(x7)	# 540
	fmul	f10, f3, f9	# 1697
	fadd	f8, f8, f10	# 1697
	fadd	f10, f0, f17	# 126
	fmul	f8, f8, f10	# 126
	fadd	f4, f4, f8	# 1697
	mul		x7, x30, x4	# 1697
	addi	x7, x7, 60568	# 1697
	fsw		f4, 0(x7)	# 1697
	fmul	f4, f1, f7	# 1698
	lw		x7, 36(x5)	# 525
	mul		x9, x30, x4	# 530
	add		x7, x7, x9	# 530
	flw		f7, 0(x7)	# 530
	fmul	f3, f3, f7	# 1698
	fadd	f3, f4, f3	# 1698
	fmul	f3, f3, f10	# 126
	fadd	f3, f5, f3	# 1698
	mul		x7, x30, x8	# 1698
	addi	x7, x7, 60568	# 1698
	fsw		f3, 0(x7)	# 1698
	fmul	f1, f1, f9	# 1699
	fmul	f2, f2, f7	# 1699
	fadd	f1, f1, f2	# 1699
	fmul	f1, f1, f10	# 126
	fadd	f1, f6, f1	# 1699
	mul		x7, x30, x6	# 1699
	addi	x7, x7, 60568	# 1699
	fsw		f1, 0(x7)	# 1699
	jal		x0, beq_cont.30332	# 1692
beq.30333:
	mul		x7, x30, x4	# 1693
	addi	x7, x7, 60568	# 1693
	fsw		f4, 0(x7)	# 1693
	mul		x7, x30, x8	# 1694
	addi	x7, x7, 60568	# 1694
	fsw		f5, 0(x7)	# 1694
	mul		x7, x30, x6	# 1695
	addi	x7, x7, 60568	# 1695
	fsw		f6, 0(x7)	# 1695
beq_cont.30332:
	lw		x7, 24(x5)	# 387
	mul		x9, x30, x4	# 297
	addi	x9, x9, 60568	# 297
	flw		f1, 0(x9)	# 297
	fmul	f1, f1, f1	# 127
	mul		x9, x30, x8	# 297
	addi	x9, x9, 60568	# 297
	flw		f2, 0(x9)	# 297
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 297
	mul		x9, x30, x6	# 297
	addi	x9, x9, 60568	# 297
	flw		f2, 0(x9)	# 297
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 297
	fsqrt	f1, f1	# 297
	flw		f2, -36(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.30335	# 120
	fadd	f1, f0, f16	# 298
	jal		x0, feq_cont.30334	# 120
feq_else.30335:
	beq		x7, x4, beq.30337	# 298
	fadd	f3, f0, f18	# 298
	fdiv	f1, f3, f1	# 298
	jal		x0, beq_cont.30336	# 298
beq.30337:
	fadd	f3, f0, f16	# 298
	fdiv	f1, f3, f1	# 298
beq_cont.30336:
feq_cont.30334:
	mul		x7, x30, x4	# 299
	addi	x7, x7, 60568	# 299
	flw		f3, 0(x7)	# 299
	fmul	f3, f3, f1	# 299
	mul		x7, x30, x4	# 299
	addi	x7, x7, 60568	# 299
	fsw		f3, 0(x7)	# 299
	mul		x7, x30, x8	# 300
	addi	x7, x7, 60568	# 300
	flw		f3, 0(x7)	# 300
	fmul	f3, f3, f1	# 300
	mul		x7, x30, x8	# 300
	addi	x7, x7, 60568	# 300
	fsw		f3, 0(x7)	# 300
	mul		x7, x30, x6	# 301
	addi	x7, x7, 60568	# 301
	flw		f3, 0(x7)	# 301
	fmul	f1, f3, f1	# 301
	mul		x7, x30, x6	# 301
	addi	x7, x7, 60568	# 301
	fsw		f1, 0(x7)	# 301
	jal		x0, beq_cont.30330	# 1709
beq.30331:
	lw		x7, 16(x5)	# 405
	mul		x9, x30, x4	# 410
	add		x7, x7, x9	# 410
	flw		f1, 0(x7)	# 410
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x4	# 1677
	addi	x7, x7, 60568	# 1677
	fsw		f1, 0(x7)	# 1677
	lw		x7, 16(x5)	# 415
	mul		x9, x30, x8	# 420
	add		x7, x7, x9	# 420
	flw		f1, 0(x7)	# 420
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x8	# 1678
	addi	x7, x7, 60568	# 1678
	fsw		f1, 0(x7)	# 1678
	lw		x7, 16(x5)	# 425
	mul		x9, x30, x6	# 430
	add		x7, x7, x9	# 430
	flw		f1, 0(x7)	# 430
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x6	# 1679
	addi	x7, x7, 60568	# 1679
	fsw		f1, 0(x7)	# 1679
beq_cont.30330:
	jal		x0, beq_cont.30328	# 1707
beq.30329:
	mul		x7, x30, x4	# 1668
	addi	x7, x7, 60544	# 1668
	lw		x7, 0(x7)	# 1668
	mul		x9, x30, x4	# 261
	addi	x9, x9, 60568	# 261
	flw		f1, -36(x2)	# 261
	fsw		f1, 0(x9)	# 261
	mul		x9, x30, x8	# 262
	addi	x9, x9, 60568	# 262
	fsw		f1, 0(x9)	# 262
	lw		x9, -16(x2)	# 263
	mul		x10, x30, x9	# 263
	addi	x10, x10, 60568	# 263
	fsw		f1, 0(x10)	# 263
	sub		x7, x7, x8	# 1671
	mul		x10, x30, x7	# 1671
	add		x6, x6, x10	# 1671
	flw		f2, 0(x6)	# 1671
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.30339	# 120
	fadd	f2, f0, f1	# 226
	jal		x0, feq_cont.30338	# 120
feq_else.30339:
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.30341	# 121
	fadd	f2, f0, f18	# 228
	jal		x0, fle_cont.30340	# 121
fle_else.30341:
	fadd	f2, f0, f16	# 227
fle_cont.30340:
feq_cont.30338:
	fsub	f2, f0, f2	# 123
	mul		x6, x30, x7	# 1671
	addi	x6, x6, 60568	# 1671
	fsw		f2, 0(x6)	# 1671
beq_cont.30328:
	addi	x6, x0, 60552	# 1944
	lw		x29, -32(x2)	# 1944
	sw		x5, -52(x2)	# 1944
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -56(x2)	# 1944
	addi	x2, x2, -60	# 1944
	lw		x31, 0(x29)	# 1944
	jalr	x1, x31, 0	# 1944
	addi	x2, x2, 60	# 1944
	lw		x1, -56(x2)	# 1944
	lw		x4, -48(x2)	# 1947
	mul		x5, x30, x4	# 1947
	addi	x5, x5, 60536	# 1947
	lw		x5, 0(x5)	# 1947
	lw		x29, -28(x2)	# 1947
	sw		x1, -56(x2)	# 1947
	addi	x2, x2, -60	# 1947
	lw		x31, 0(x29)	# 1947
	jalr	x1, x31, 0	# 1947
	addi	x2, x2, 60	# 1947
	lw		x1, -56(x2)	# 1947
	lw		x5, -48(x2)	# 1947
	beq		x4, x5, beq.30343	# 1947
	jal		x0, beq_cont.30342	# 1947
beq.30343:
	mul		x4, x30, x5	# 306
	addi	x4, x4, 60568	# 306
	flw		f1, 0(x4)	# 306
	mul		x4, x30, x5	# 306
	addi	x4, x4, 60312	# 306
	flw		f2, 0(x4)	# 306
	fmul	f1, f1, f2	# 306
	lw		x4, -40(x2)	# 306
	mul		x6, x30, x4	# 306
	addi	x6, x6, 60568	# 306
	flw		f2, 0(x6)	# 306
	mul		x6, x30, x4	# 306
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
	flw		f2, -36(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_cont.30344	# 121
	fadd	f1, f0, f2	# 1949
fle_cont.30344:
	flw		f2, -24(x2)	# 1950
	fmul	f1, f2, f1	# 1950
	lw		x7, -52(x2)	# 475
	lw		x7, 28(x7)	# 475
	mul		x8, x30, x5	# 480
	add		x7, x7, x8	# 480
	flw		f2, 0(x7)	# 480
	fmul	f1, f1, f2	# 1950
	mul		x7, x30, x5	# 316
	addi	x7, x7, 60592	# 316
	flw		f2, 0(x7)	# 316
	mul		x7, x30, x5	# 316
	addi	x7, x7, 60580	# 316
	flw		f3, 0(x7)	# 316
	fmul	f3, f1, f3	# 316
	fadd	f2, f2, f3	# 316
	mul		x5, x30, x5	# 316
	addi	x5, x5, 60592	# 316
	fsw		f2, 0(x5)	# 316
	mul		x5, x30, x4	# 317
	addi	x5, x5, 60592	# 317
	flw		f2, 0(x5)	# 317
	mul		x5, x30, x4	# 317
	addi	x5, x5, 60580	# 317
	flw		f3, 0(x5)	# 317
	fmul	f3, f1, f3	# 317
	fadd	f2, f2, f3	# 317
	mul		x4, x30, x4	# 317
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
beq_cont.30342:
beq_cont.30327:
	jal		x0, fle_cont.30321	# 122
fle_else.30322:
	add		x14, x7, x13	# 1964
	mul		x14, x30, x14	# 1964
	add		x14, x4, x14	# 1964
	lw		x14, 0(x14)	# 1964
	lui		x15, %hi(l.25804)	# 1964
	ori		x15, x0, %lo(l.25804)	# 1964
	flw		f4, 0(x15)	# 1964
	fdiv	f3, f3, f4	# 1964
	mul		x15, x30, x12	# 1648
	addi	x15, x15, 60548	# 1648
	fsw		f1, 0(x15)	# 1648
	mul		x15, x30, x12	# 1649
	addi	x15, x15, 60536	# 1649
	lw		x15, 0(x15)	# 1649
	fsw		f3, -56(x2)	# 1649
	sw		x10, -28(x2)	# 1649
	sw		x8, -32(x2)	# 1649
	fsw		f2, -36(x2)	# 1649
	sw		x13, -40(x2)	# 1649
	sw		x14, -60(x2)	# 1649
	sw		x12, -48(x2)	# 1649
	addi	x6, x14, 0
	addi	x5, x15, 0
	addi	x4, x12, 0
	addi	x29, x9, 0
	sw		x1, -64(x2)	# 1649
	addi	x2, x2, -68	# 1649
	lw		x31, 0(x29)	# 1649
	jalr	x1, x31, 0	# 1649
	addi	x2, x2, 68	# 1649
	lw		x1, -64(x2)	# 1649
	lw		x4, -48(x2)	# 1650
	mul		x5, x30, x4	# 1650
	addi	x5, x5, 60548	# 1650
	flw		f1, 0(x5)	# 1650
	fadd	f2, f0, f20	# 1652
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.30346	# 125
	addi	x5, x0, 0	# 1654
	jal		x0, fle_cont.30345	# 125
fle_else.30346:
	fadd	f2, f0, f22	# 1653
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30348	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.30347	# 125
fle_else.30348:
	addi	x5, x0, 1	# 125
fle_cont.30347:
fle_cont.30345:
	beq		x5, x4, beq_cont.30349	# 1941
	mul		x5, x30, x4	# 1942
	addi	x5, x5, 60564	# 1942
	lw		x5, 0(x5)	# 1942
	mul		x5, x30, x5	# 1942
	addi	x5, x5, 60048	# 1942
	lw		x5, 0(x5)	# 1942
	lw		x6, -60(x2)	# 653
	lw		x6, 0(x6)	# 653
	lw		x7, 4(x5)	# 367
	lw		x8, -40(x2)	# 1707
	beq		x7, x8, beq.30351	# 1707
	lw		x6, -16(x2)	# 1709
	beq		x7, x6, beq.30353	# 1709
	mul		x7, x30, x4	# 1684
	addi	x7, x7, 60552	# 1684
	flw		f1, 0(x7)	# 1684
	lw		x7, 20(x5)	# 445
	mul		x9, x30, x4	# 450
	add		x7, x7, x9	# 450
	flw		f2, 0(x7)	# 450
	fsub	f1, f1, f2	# 1684
	mul		x7, x30, x8	# 1685
	addi	x7, x7, 60552	# 1685
	flw		f2, 0(x7)	# 1685
	lw		x7, 20(x5)	# 455
	mul		x9, x30, x8	# 460
	add		x7, x7, x9	# 460
	flw		f3, 0(x7)	# 460
	fsub	f2, f2, f3	# 1685
	mul		x7, x30, x6	# 1686
	addi	x7, x7, 60552	# 1686
	flw		f3, 0(x7)	# 1686
	lw		x7, 20(x5)	# 465
	mul		x9, x30, x6	# 470
	add		x7, x7, x9	# 470
	flw		f4, 0(x7)	# 470
	fsub	f3, f3, f4	# 1686
	lw		x7, 16(x5)	# 405
	mul		x9, x30, x4	# 410
	add		x7, x7, x9	# 410
	flw		f4, 0(x7)	# 410
	fmul	f4, f1, f4	# 1688
	lw		x7, 16(x5)	# 415
	mul		x9, x30, x8	# 420
	add		x7, x7, x9	# 420
	flw		f5, 0(x7)	# 420
	fmul	f5, f2, f5	# 1689
	lw		x7, 16(x5)	# 425
	mul		x9, x30, x6	# 430
	add		x7, x7, x9	# 430
	flw		f6, 0(x7)	# 430
	fmul	f6, f3, f6	# 1690
	lw		x7, 12(x5)	# 396
	beq		x7, x4, beq.30355	# 1692
	lw		x7, 36(x5)	# 545
	mul		x9, x30, x6	# 550
	add		x7, x7, x9	# 550
	flw		f7, 0(x7)	# 550
	fmul	f8, f2, f7	# 1697
	lw		x7, 36(x5)	# 535
	mul		x9, x30, x8	# 540
	add		x7, x7, x9	# 540
	flw		f9, 0(x7)	# 540
	fmul	f10, f3, f9	# 1697
	fadd	f8, f8, f10	# 1697
	fadd	f10, f0, f17	# 126
	fmul	f8, f8, f10	# 126
	fadd	f4, f4, f8	# 1697
	mul		x7, x30, x4	# 1697
	addi	x7, x7, 60568	# 1697
	fsw		f4, 0(x7)	# 1697
	fmul	f4, f1, f7	# 1698
	lw		x7, 36(x5)	# 525
	mul		x9, x30, x4	# 530
	add		x7, x7, x9	# 530
	flw		f7, 0(x7)	# 530
	fmul	f3, f3, f7	# 1698
	fadd	f3, f4, f3	# 1698
	fmul	f3, f3, f10	# 126
	fadd	f3, f5, f3	# 1698
	mul		x7, x30, x8	# 1698
	addi	x7, x7, 60568	# 1698
	fsw		f3, 0(x7)	# 1698
	fmul	f1, f1, f9	# 1699
	fmul	f2, f2, f7	# 1699
	fadd	f1, f1, f2	# 1699
	fmul	f1, f1, f10	# 126
	fadd	f1, f6, f1	# 1699
	mul		x7, x30, x6	# 1699
	addi	x7, x7, 60568	# 1699
	fsw		f1, 0(x7)	# 1699
	jal		x0, beq_cont.30354	# 1692
beq.30355:
	mul		x7, x30, x4	# 1693
	addi	x7, x7, 60568	# 1693
	fsw		f4, 0(x7)	# 1693
	mul		x7, x30, x8	# 1694
	addi	x7, x7, 60568	# 1694
	fsw		f5, 0(x7)	# 1694
	mul		x7, x30, x6	# 1695
	addi	x7, x7, 60568	# 1695
	fsw		f6, 0(x7)	# 1695
beq_cont.30354:
	lw		x7, 24(x5)	# 387
	mul		x9, x30, x4	# 297
	addi	x9, x9, 60568	# 297
	flw		f1, 0(x9)	# 297
	fmul	f1, f1, f1	# 127
	mul		x9, x30, x8	# 297
	addi	x9, x9, 60568	# 297
	flw		f2, 0(x9)	# 297
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 297
	mul		x9, x30, x6	# 297
	addi	x9, x9, 60568	# 297
	flw		f2, 0(x9)	# 297
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 297
	fsqrt	f1, f1	# 297
	flw		f2, -36(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.30357	# 120
	fadd	f1, f0, f16	# 298
	jal		x0, feq_cont.30356	# 120
feq_else.30357:
	beq		x7, x4, beq.30359	# 298
	fadd	f3, f0, f18	# 298
	fdiv	f1, f3, f1	# 298
	jal		x0, beq_cont.30358	# 298
beq.30359:
	fadd	f3, f0, f16	# 298
	fdiv	f1, f3, f1	# 298
beq_cont.30358:
feq_cont.30356:
	mul		x7, x30, x4	# 299
	addi	x7, x7, 60568	# 299
	flw		f3, 0(x7)	# 299
	fmul	f3, f3, f1	# 299
	mul		x7, x30, x4	# 299
	addi	x7, x7, 60568	# 299
	fsw		f3, 0(x7)	# 299
	mul		x7, x30, x8	# 300
	addi	x7, x7, 60568	# 300
	flw		f3, 0(x7)	# 300
	fmul	f3, f3, f1	# 300
	mul		x7, x30, x8	# 300
	addi	x7, x7, 60568	# 300
	fsw		f3, 0(x7)	# 300
	mul		x7, x30, x6	# 301
	addi	x7, x7, 60568	# 301
	flw		f3, 0(x7)	# 301
	fmul	f1, f3, f1	# 301
	mul		x7, x30, x6	# 301
	addi	x7, x7, 60568	# 301
	fsw		f1, 0(x7)	# 301
	jal		x0, beq_cont.30352	# 1709
beq.30353:
	lw		x7, 16(x5)	# 405
	mul		x9, x30, x4	# 410
	add		x7, x7, x9	# 410
	flw		f1, 0(x7)	# 410
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x4	# 1677
	addi	x7, x7, 60568	# 1677
	fsw		f1, 0(x7)	# 1677
	lw		x7, 16(x5)	# 415
	mul		x9, x30, x8	# 420
	add		x7, x7, x9	# 420
	flw		f1, 0(x7)	# 420
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x8	# 1678
	addi	x7, x7, 60568	# 1678
	fsw		f1, 0(x7)	# 1678
	lw		x7, 16(x5)	# 425
	mul		x9, x30, x6	# 430
	add		x7, x7, x9	# 430
	flw		f1, 0(x7)	# 430
	fsub	f1, f0, f1	# 123
	mul		x7, x30, x6	# 1679
	addi	x7, x7, 60568	# 1679
	fsw		f1, 0(x7)	# 1679
beq_cont.30352:
	jal		x0, beq_cont.30350	# 1707
beq.30351:
	mul		x7, x30, x4	# 1668
	addi	x7, x7, 60544	# 1668
	lw		x7, 0(x7)	# 1668
	mul		x9, x30, x4	# 261
	addi	x9, x9, 60568	# 261
	flw		f1, -36(x2)	# 261
	fsw		f1, 0(x9)	# 261
	mul		x9, x30, x8	# 262
	addi	x9, x9, 60568	# 262
	fsw		f1, 0(x9)	# 262
	lw		x9, -16(x2)	# 263
	mul		x10, x30, x9	# 263
	addi	x10, x10, 60568	# 263
	fsw		f1, 0(x10)	# 263
	sub		x7, x7, x8	# 1671
	mul		x10, x30, x7	# 1671
	add		x6, x6, x10	# 1671
	flw		f2, 0(x6)	# 1671
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.30361	# 120
	fadd	f2, f0, f1	# 226
	jal		x0, feq_cont.30360	# 120
feq_else.30361:
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.30363	# 121
	fadd	f2, f0, f18	# 228
	jal		x0, fle_cont.30362	# 121
fle_else.30363:
	fadd	f2, f0, f16	# 227
fle_cont.30362:
feq_cont.30360:
	fsub	f2, f0, f2	# 123
	mul		x6, x30, x7	# 1671
	addi	x6, x6, 60568	# 1671
	fsw		f2, 0(x6)	# 1671
beq_cont.30350:
	addi	x6, x0, 60552	# 1944
	lw		x29, -32(x2)	# 1944
	sw		x5, -64(x2)	# 1944
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -68(x2)	# 1944
	addi	x2, x2, -72	# 1944
	lw		x31, 0(x29)	# 1944
	jalr	x1, x31, 0	# 1944
	addi	x2, x2, 72	# 1944
	lw		x1, -68(x2)	# 1944
	lw		x4, -48(x2)	# 1947
	mul		x5, x30, x4	# 1947
	addi	x5, x5, 60536	# 1947
	lw		x5, 0(x5)	# 1947
	lw		x29, -28(x2)	# 1947
	sw		x1, -68(x2)	# 1947
	addi	x2, x2, -72	# 1947
	lw		x31, 0(x29)	# 1947
	jalr	x1, x31, 0	# 1947
	addi	x2, x2, 72	# 1947
	lw		x1, -68(x2)	# 1947
	lw		x5, -48(x2)	# 1947
	beq		x4, x5, beq.30365	# 1947
	jal		x0, beq_cont.30364	# 1947
beq.30365:
	mul		x4, x30, x5	# 306
	addi	x4, x4, 60568	# 306
	flw		f1, 0(x4)	# 306
	mul		x4, x30, x5	# 306
	addi	x4, x4, 60312	# 306
	flw		f2, 0(x4)	# 306
	fmul	f1, f1, f2	# 306
	lw		x4, -40(x2)	# 306
	mul		x6, x30, x4	# 306
	addi	x6, x6, 60568	# 306
	flw		f2, 0(x6)	# 306
	mul		x6, x30, x4	# 306
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
	flw		f2, -36(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_cont.30366	# 121
	fadd	f1, f0, f2	# 1949
fle_cont.30366:
	flw		f2, -56(x2)	# 1950
	fmul	f1, f2, f1	# 1950
	lw		x7, -64(x2)	# 475
	lw		x7, 28(x7)	# 475
	mul		x8, x30, x5	# 480
	add		x7, x7, x8	# 480
	flw		f2, 0(x7)	# 480
	fmul	f1, f1, f2	# 1950
	mul		x7, x30, x5	# 316
	addi	x7, x7, 60592	# 316
	flw		f2, 0(x7)	# 316
	mul		x7, x30, x5	# 316
	addi	x7, x7, 60580	# 316
	flw		f3, 0(x7)	# 316
	fmul	f3, f1, f3	# 316
	fadd	f2, f2, f3	# 316
	mul		x5, x30, x5	# 316
	addi	x5, x5, 60592	# 316
	fsw		f2, 0(x5)	# 316
	mul		x5, x30, x4	# 317
	addi	x5, x5, 60592	# 317
	flw		f2, 0(x5)	# 317
	mul		x5, x30, x4	# 317
	addi	x5, x5, 60580	# 317
	flw		f3, 0(x5)	# 317
	fmul	f3, f1, f3	# 317
	fadd	f2, f2, f3	# 317
	mul		x4, x30, x4	# 317
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
beq_cont.30364:
beq_cont.30349:
fle_cont.30321:
	lw		x4, -16(x2)	# 1968
	lw		x5, -20(x2)	# 1968
	sub		x7, x5, x4	# 1968
	lw		x4, -8(x2)	# 1968
	lw		x5, -4(x2)	# 1968
	lw		x6, 0(x2)	# 1968
	lw		x29, -12(x2)	# 1968
	lw		x31, 0(x29)	# 1968
	jalr	x0, x31, 0	# 1968
do_without_neighbors.2932.16814:
	lw		x6, 24(x29)	# 2049
	lw		x7, 20(x29)	# 2049
	lw		x8, 16(x29)	# 2049
	lw		x9, 12(x29)	# 2049
	lw		x10, 8(x29)	# 2049
	lw		x11, 4(x29)	# 2049
	addi	x12, x0, 4	# 2049
	ble		x5, x12, ble.30367	# 2049
	jalr	x0, x1, 0	# 2059
ble.30367:
	lw		x13, 8(x4)	# 591
	mul		x14, x30, x5	# 2052
	add		x13, x13, x14	# 2052
	lw		x13, 0(x13)	# 2052
	ble		x10, x13, ble.30369	# 2052
	jalr	x0, x1, 0	# 2058
ble.30369:
	lw		x13, 12(x4)	# 598
	mul		x14, x30, x5	# 2054
	add		x13, x13, x14	# 2054
	lw		x13, 0(x13)	# 2054
	sw		x4, 0(x2)	# 2054
	sw		x29, -4(x2)	# 2054
	sw		x11, -8(x2)	# 2054
	sw		x5, -12(x2)	# 2054
	beq		x13, x10, beq_cont.30371	# 2054
	lw		x13, 20(x4)	# 612
	lw		x14, 28(x4)	# 642
	lw		x15, 4(x4)	# 583
	lw		x16, 16(x4)	# 605
	mul		x17, x30, x5	# 2016
	add		x13, x13, x17	# 2016
	lw		x13, 0(x13)	# 2016
	mul		x17, x30, x10	# 273
	add		x17, x13, x17	# 273
	flw		f1, 0(x17)	# 273
	mul		x17, x30, x10	# 273
	addi	x17, x17, 60592	# 273
	fsw		f1, 0(x17)	# 273
	mul		x17, x30, x11	# 274
	add		x17, x13, x17	# 274
	flw		f1, 0(x17)	# 274
	mul		x17, x30, x11	# 274
	addi	x17, x17, 60592	# 274
	fsw		f1, 0(x17)	# 274
	mul		x17, x30, x8	# 275
	add		x13, x13, x17	# 275
	flw		f1, 0(x13)	# 275
	mul		x13, x30, x8	# 275
	addi	x13, x13, 60592	# 275
	fsw		f1, 0(x13)	# 275
	lw		x13, 24(x4)	# 628
	mul		x17, x30, x10	# 630
	add		x13, x13, x17	# 630
	lw		x13, 0(x13)	# 630
	mul		x17, x30, x5	# 2019
	add		x14, x14, x17	# 2019
	lw		x14, 0(x14)	# 2019
	mul		x17, x30, x5	# 2020
	add		x15, x15, x17	# 2020
	lw		x15, 0(x15)	# 2020
	sw		x16, -16(x2)	# 1985
	sw		x12, -20(x2)	# 1985
	sw		x9, -24(x2)	# 1985
	sw		x14, -28(x2)	# 1985
	sw		x7, -32(x2)	# 1985
	sw		x6, -36(x2)	# 1985
	sw		x8, -40(x2)	# 1985
	sw		x15, -44(x2)	# 1985
	sw		x10, -48(x2)	# 1985
	sw		x13, -52(x2)	# 1985
	beq		x13, x10, beq_cont.30372	# 1985
	mul		x17, x30, x10	# 1986
	addi	x17, x17, 60716	# 1986
	lw		x17, 0(x17)	# 1986
	mul		x18, x30, x10	# 273
	add		x18, x15, x18	# 273
	flw		f1, 0(x18)	# 273
	mul		x18, x30, x10	# 273
	addi	x18, x18, 60648	# 273
	fsw		f1, 0(x18)	# 273
	mul		x18, x30, x11	# 274
	add		x18, x15, x18	# 274
	flw		f1, 0(x18)	# 274
	mul		x18, x30, x11	# 274
	addi	x18, x18, 60648	# 274
	fsw		f1, 0(x18)	# 274
	mul		x18, x30, x8	# 275
	add		x18, x15, x18	# 275
	flw		f1, 0(x18)	# 275
	mul		x18, x30, x8	# 275
	addi	x18, x18, 60648	# 275
	fsw		f1, 0(x18)	# 275
	mul		x18, x30, x10	# 1329
	addi	x18, x18, 60000	# 1329
	lw		x18, 0(x18)	# 1329
	sub		x18, x18, x11	# 1329
	sw		x17, -56(x2)	# 1329
	addi	x5, x18, 0
	addi	x4, x15, 0
	addi	x29, x6, 0
	sw		x1, -60(x2)	# 1329
	addi	x2, x2, -64	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 64	# 1329
	lw		x1, -60(x2)	# 1329
	addi	x7, x0, 118	# 1978
	lw		x4, -56(x2)	# 1978
	lw		x5, -28(x2)	# 1978
	lw		x6, -44(x2)	# 1978
	lw		x29, -32(x2)	# 1978
	sw		x1, -60(x2)	# 1978
	addi	x2, x2, -64	# 1978
	lw		x31, 0(x29)	# 1978
	jalr	x1, x31, 0	# 1978
	addi	x2, x2, 64	# 1978
	lw		x1, -60(x2)	# 1978
beq_cont.30372:
	lw		x4, -8(x2)	# 1989
	lw		x5, -52(x2)	# 1989
	beq		x5, x4, beq_cont.30373	# 1989
	mul		x6, x30, x4	# 1990
	addi	x6, x6, 60716	# 1990
	lw		x6, 0(x6)	# 1990
	lw		x7, -48(x2)	# 273
	mul		x8, x30, x7	# 273
	lw		x9, -44(x2)	# 273
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
	lw		x8, -40(x2)	# 275
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
	lw		x29, -36(x2)	# 1329
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
	lw		x5, -28(x2)	# 1978
	lw		x6, -44(x2)	# 1978
	lw		x29, -32(x2)	# 1978
	sw		x1, -64(x2)	# 1978
	addi	x2, x2, -68	# 1978
	lw		x31, 0(x29)	# 1978
	jalr	x1, x31, 0	# 1978
	addi	x2, x2, 68	# 1978
	lw		x1, -64(x2)	# 1978
beq_cont.30373:
	lw		x4, -40(x2)	# 1993
	lw		x5, -52(x2)	# 1993
	beq		x5, x4, beq_cont.30374	# 1993
	mul		x6, x30, x4	# 1994
	addi	x6, x6, 60716	# 1994
	lw		x6, 0(x6)	# 1994
	lw		x7, -48(x2)	# 273
	mul		x8, x30, x7	# 273
	lw		x9, -44(x2)	# 273
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
	lw		x29, -36(x2)	# 1329
	sw		x6, -64(x2)	# 1329
	addi	x5, x10, 0
	addi	x4, x9, 0
	sw		x1, -68(x2)	# 1329
	addi	x2, x2, -72	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 72	# 1329
	lw		x1, -68(x2)	# 1329
	addi	x7, x0, 118	# 1978
	lw		x4, -64(x2)	# 1978
	lw		x5, -28(x2)	# 1978
	lw		x6, -44(x2)	# 1978
	lw		x29, -32(x2)	# 1978
	sw		x1, -68(x2)	# 1978
	addi	x2, x2, -72	# 1978
	lw		x31, 0(x29)	# 1978
	jalr	x1, x31, 0	# 1978
	addi	x2, x2, 72	# 1978
	lw		x1, -68(x2)	# 1978
beq_cont.30374:
	lw		x4, -24(x2)	# 1997
	lw		x5, -52(x2)	# 1997
	beq		x5, x4, beq_cont.30375	# 1997
	mul		x4, x30, x4	# 1998
	addi	x4, x4, 60716	# 1998
	lw		x4, 0(x4)	# 1998
	lw		x6, -48(x2)	# 273
	mul		x7, x30, x6	# 273
	lw		x8, -44(x2)	# 273
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
	lw		x9, -40(x2)	# 275
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
	lw		x29, -36(x2)	# 1329
	sw		x4, -68(x2)	# 1329
	addi	x5, x10, 0
	addi	x4, x8, 0
	sw		x1, -72(x2)	# 1329
	addi	x2, x2, -76	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 76	# 1329
	lw		x1, -72(x2)	# 1329
	addi	x7, x0, 118	# 1978
	lw		x4, -68(x2)	# 1978
	lw		x5, -28(x2)	# 1978
	lw		x6, -44(x2)	# 1978
	lw		x29, -32(x2)	# 1978
	sw		x1, -72(x2)	# 1978
	addi	x2, x2, -76	# 1978
	lw		x31, 0(x29)	# 1978
	jalr	x1, x31, 0	# 1978
	addi	x2, x2, 76	# 1978
	lw		x1, -72(x2)	# 1978
beq_cont.30375:
	lw		x4, -20(x2)	# 2001
	lw		x5, -52(x2)	# 2001
	beq		x5, x4, beq_cont.30376	# 2001
	mul		x4, x30, x4	# 2002
	addi	x4, x4, 60716	# 2002
	lw		x4, 0(x4)	# 2002
	lw		x5, -48(x2)	# 273
	mul		x6, x30, x5	# 273
	lw		x7, -44(x2)	# 273
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
	lw		x8, -40(x2)	# 275
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
	lw		x29, -36(x2)	# 1329
	sw		x4, -72(x2)	# 1329
	addi	x5, x9, 0
	addi	x4, x7, 0
	sw		x1, -76(x2)	# 1329
	addi	x2, x2, -80	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 80	# 1329
	lw		x1, -76(x2)	# 1329
	addi	x7, x0, 118	# 1978
	lw		x4, -72(x2)	# 1978
	lw		x5, -28(x2)	# 1978
	lw		x6, -44(x2)	# 1978
	lw		x29, -32(x2)	# 1978
	sw		x1, -76(x2)	# 1978
	addi	x2, x2, -80	# 1978
	lw		x31, 0(x29)	# 1978
	jalr	x1, x31, 0	# 1978
	addi	x2, x2, 80	# 1978
	lw		x1, -76(x2)	# 1978
beq_cont.30376:
	lw		x4, -12(x2)	# 2021
	mul		x5, x30, x4	# 2021
	lw		x6, -16(x2)	# 2021
	add		x5, x6, x5	# 2021
	lw		x5, 0(x5)	# 2021
	lw		x6, -48(x2)	# 346
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
	lw		x7, -40(x2)	# 348
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
beq_cont.30371:
	lw		x4, -8(x2)	# 2057
	lw		x5, -12(x2)	# 2057
	add		x5, x5, x4	# 2057
	lw		x4, 0(x2)	# 2057
	lw		x29, -4(x2)	# 2057
	lw		x31, 0(x29)	# 2057
	jalr	x0, x31, 0	# 2057
try_exploit_neighbors.2948.16817:
	lw		x10, 16(x29)	# 2101
	lw		x11, 12(x29)	# 2101
	lw		x12, 8(x29)	# 2101
	lw		x13, 4(x29)	# 2101
	mul		x14, x30, x4	# 2101
	add		x14, x7, x14	# 2101
	lw		x14, 0(x14)	# 2101
	addi	x15, x0, 4	# 2102
	ble		x9, x15, ble.30377	# 2102
	jalr	x0, x1, 0	# 2121
ble.30377:
	lw		x15, 8(x14)	# 591
	mul		x16, x30, x9	# 2077
	add		x15, x15, x16	# 2077
	lw		x15, 0(x15)	# 2077
	ble		x12, x15, ble.30379	# 2105
	jalr	x0, x1, 0	# 2120
ble.30379:
	lw		x15, 8(x14)	# 591
	mul		x16, x30, x9	# 2077
	add		x15, x15, x16	# 2077
	lw		x15, 0(x15)	# 2077
	mul		x16, x30, x4	# 2085
	add		x16, x6, x16	# 2085
	lw		x16, 0(x16)	# 2085
	lw		x17, 8(x16)	# 591
	mul		x18, x30, x9	# 2077
	add		x17, x17, x18	# 2077
	lw		x17, 0(x17)	# 2077
	beq		x17, x15, beq.30382	# 2085
	addi	x15, x0, 0	# 2093
	jal		x0, beq_cont.30381	# 2085
beq.30382:
	mul		x17, x30, x4	# 2086
	add		x17, x8, x17	# 2086
	lw		x17, 0(x17)	# 2086
	lw		x17, 8(x17)	# 591
	mul		x18, x30, x9	# 2077
	add		x17, x17, x18	# 2077
	lw		x17, 0(x17)	# 2077
	beq		x17, x15, beq.30384	# 2086
	addi	x15, x0, 0	# 2092
	jal		x0, beq_cont.30383	# 2086
beq.30384:
	sub		x17, x4, x13	# 2087
	mul		x17, x30, x17	# 2087
	add		x17, x7, x17	# 2087
	lw		x17, 0(x17)	# 2087
	lw		x17, 8(x17)	# 591
	mul		x18, x30, x9	# 2077
	add		x17, x17, x18	# 2077
	lw		x17, 0(x17)	# 2077
	beq		x17, x15, beq.30386	# 2087
	addi	x15, x0, 0	# 2091
	jal		x0, beq_cont.30385	# 2087
beq.30386:
	add		x17, x4, x13	# 2088
	mul		x17, x30, x17	# 2088
	add		x17, x7, x17	# 2088
	lw		x17, 0(x17)	# 2088
	lw		x17, 8(x17)	# 591
	mul		x18, x30, x9	# 2077
	add		x17, x17, x18	# 2077
	lw		x17, 0(x17)	# 2077
	beq		x17, x15, beq.30388	# 2088
	addi	x15, x0, 0	# 2090
	jal		x0, beq_cont.30387	# 2088
beq.30388:
	addi	x15, x0, 1	# 2089
beq_cont.30387:
beq_cont.30385:
beq_cont.30383:
beq_cont.30381:
	beq		x15, x12, beq.30389	# 2107
	lw		x10, 12(x14)	# 598
	mul		x15, x30, x9	# 2111
	add		x10, x10, x15	# 2111
	lw		x10, 0(x10)	# 2111
	beq		x10, x12, beq_cont.30390	# 2111
	lw		x10, 20(x16)	# 612
	sub		x15, x4, x13	# 2031
	mul		x15, x30, x15	# 2031
	add		x15, x7, x15	# 2031
	lw		x15, 0(x15)	# 2031
	lw		x15, 20(x15)	# 612
	lw		x14, 20(x14)	# 612
	add		x16, x4, x13	# 2033
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
	add		x10, x15, x10	# 2037
	lw		x10, 0(x10)	# 2037
	mul		x15, x30, x12	# 323
	addi	x15, x15, 60592	# 323
	flw		f1, 0(x15)	# 323
	mul		x15, x30, x12	# 323
	add		x15, x10, x15	# 323
	flw		f2, 0(x15)	# 323
	fadd	f1, f1, f2	# 323
	mul		x15, x30, x12	# 323
	addi	x15, x15, 60592	# 323
	fsw		f1, 0(x15)	# 323
	mul		x15, x30, x13	# 324
	addi	x15, x15, 60592	# 324
	flw		f1, 0(x15)	# 324
	mul		x15, x30, x13	# 324
	add		x15, x10, x15	# 324
	flw		f2, 0(x15)	# 324
	fadd	f1, f1, f2	# 324
	mul		x15, x30, x13	# 324
	addi	x15, x15, 60592	# 324
	fsw		f1, 0(x15)	# 324
	mul		x15, x30, x11	# 325
	addi	x15, x15, 60592	# 325
	flw		f1, 0(x15)	# 325
	mul		x15, x30, x11	# 325
	add		x10, x10, x15	# 325
	flw		f2, 0(x10)	# 325
	fadd	f1, f1, f2	# 325
	mul		x10, x30, x11	# 325
	addi	x10, x10, 60592	# 325
	fsw		f1, 0(x10)	# 325
	mul		x10, x30, x9	# 2038
	add		x10, x14, x10	# 2038
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
beq_cont.30390:
	add		x9, x9, x13	# 2116
	lw		x31, 0(x29)	# 2116
	jalr	x0, x31, 0	# 2116
beq.30389:
	addi	x5, x9, 0
	addi	x4, x14, 0
	addi	x29, x10, 0
	lw		x31, 0(x29)	# 2119
	jalr	x0, x31, 0	# 2119
pretrace_diffuse_rays.2963.16824:
	lw		x6, 24(x29)	# 2177
	lw		x7, 20(x29)	# 2177
	lw		x8, 16(x29)	# 2177
	lw		x9, 12(x29)	# 2177
	lw		x10, 8(x29)	# 2177
	flw		f1, 4(x29)	# 2177
	addi	x11, x0, 4	# 2177
	ble		x5, x11, ble.30391	# 2177
	jalr	x0, x1, 0	# 2201
ble.30391:
	lw		x11, 8(x4)	# 591
	mul		x12, x30, x5	# 2077
	add		x11, x11, x12	# 2077
	lw		x11, 0(x11)	# 2077
	ble		x9, x11, ble.30393	# 2181
	jalr	x0, x1, 0	# 2200
ble.30393:
	lw		x11, 12(x4)	# 598
	mul		x12, x30, x5	# 2184
	add		x11, x11, x12	# 2184
	lw		x11, 0(x11)	# 2184
	sw		x29, 0(x2)	# 2184
	sw		x10, -4(x2)	# 2184
	sw		x5, -8(x2)	# 2184
	beq		x11, x9, beq_cont.30395	# 2184
	lw		x11, 24(x4)	# 628
	mul		x12, x30, x9	# 630
	add		x11, x11, x12	# 630
	lw		x11, 0(x11)	# 630
	mul		x12, x30, x9	# 261
	addi	x12, x12, 60592	# 261
	fsw		f1, 0(x12)	# 261
	mul		x12, x30, x10	# 262
	addi	x12, x12, 60592	# 262
	fsw		f1, 0(x12)	# 262
	mul		x12, x30, x8	# 263
	addi	x12, x12, 60592	# 263
	fsw		f1, 0(x12)	# 263
	lw		x12, 28(x4)	# 642
	lw		x13, 4(x4)	# 583
	mul		x11, x30, x11	# 2193
	addi	x11, x11, 60716	# 2193
	lw		x11, 0(x11)	# 2193
	mul		x14, x30, x5	# 2194
	add		x12, x12, x14	# 2194
	lw		x12, 0(x12)	# 2194
	mul		x14, x30, x5	# 2195
	add		x13, x13, x14	# 2195
	lw		x13, 0(x13)	# 2195
	mul		x14, x30, x9	# 273
	add		x14, x13, x14	# 273
	flw		f1, 0(x14)	# 273
	mul		x14, x30, x9	# 273
	addi	x14, x14, 60648	# 273
	fsw		f1, 0(x14)	# 273
	mul		x14, x30, x10	# 274
	add		x14, x13, x14	# 274
	flw		f1, 0(x14)	# 274
	mul		x14, x30, x10	# 274
	addi	x14, x14, 60648	# 274
	fsw		f1, 0(x14)	# 274
	mul		x14, x30, x8	# 275
	add		x14, x13, x14	# 275
	flw		f1, 0(x14)	# 275
	mul		x14, x30, x8	# 275
	addi	x14, x14, 60648	# 275
	fsw		f1, 0(x14)	# 275
	mul		x14, x30, x9	# 1329
	addi	x14, x14, 60000	# 1329
	lw		x14, 0(x14)	# 1329
	sub		x14, x14, x10	# 1329
	sw		x8, -12(x2)	# 1329
	sw		x9, -16(x2)	# 1329
	sw		x4, -20(x2)	# 1329
	sw		x13, -24(x2)	# 1329
	sw		x12, -28(x2)	# 1329
	sw		x11, -32(x2)	# 1329
	sw		x7, -36(x2)	# 1329
	addi	x5, x14, 0
	addi	x4, x13, 0
	addi	x29, x6, 0
	sw		x1, -40(x2)	# 1329
	addi	x2, x2, -44	# 1329
	lw		x31, 0(x29)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 44	# 1329
	lw		x1, -40(x2)	# 1329
	addi	x7, x0, 118	# 1978
	lw		x4, -32(x2)	# 1978
	lw		x5, -28(x2)	# 1978
	lw		x6, -24(x2)	# 1978
	lw		x29, -36(x2)	# 1978
	sw		x1, -40(x2)	# 1978
	addi	x2, x2, -44	# 1978
	lw		x31, 0(x29)	# 1978
	jalr	x1, x31, 0	# 1978
	addi	x2, x2, 44	# 1978
	lw		x1, -40(x2)	# 1978
	lw		x4, -20(x2)	# 612
	lw		x5, 20(x4)	# 612
	lw		x6, -8(x2)	# 2197
	mul		x7, x30, x6	# 2197
	add		x5, x5, x7	# 2197
	lw		x5, 0(x5)	# 2197
	lw		x7, -16(x2)	# 273
	mul		x8, x30, x7	# 273
	addi	x8, x8, 60592	# 273
	flw		f1, 0(x8)	# 273
	mul		x7, x30, x7	# 273
	add		x7, x5, x7	# 273
	fsw		f1, 0(x7)	# 273
	lw		x7, -4(x2)	# 274
	mul		x8, x30, x7	# 274
	addi	x8, x8, 60592	# 274
	flw		f1, 0(x8)	# 274
	mul		x8, x30, x7	# 274
	add		x8, x5, x8	# 274
	fsw		f1, 0(x8)	# 274
	lw		x8, -12(x2)	# 275
	mul		x9, x30, x8	# 275
	addi	x9, x9, 60592	# 275
	flw		f1, 0(x9)	# 275
	mul		x8, x30, x8	# 275
	add		x5, x5, x8	# 275
	fsw		f1, 0(x5)	# 275
beq_cont.30395:
	lw		x5, -4(x2)	# 2199
	lw		x6, -8(x2)	# 2199
	add		x5, x6, x5	# 2199
	lw		x29, 0(x2)	# 2199
	lw		x31, 0(x29)	# 2199
	jalr	x0, x31, 0	# 2199
pretrace_pixels.2966.16827:
	lw		x7, 32(x29)	# 2207
	lw		x8, 28(x29)	# 2207
	lw		x9, 24(x29)	# 2207
	lw		x10, 20(x29)	# 2207
	lw		x11, 16(x29)	# 2207
	lw		x12, 12(x29)	# 2207
	lw		x13, 8(x29)	# 2207
	flw		f4, 4(x29)	# 2207
	ble		x12, x5, ble.30396	# 2207
	jalr	x0, x1, 0	# 2227
ble.30396:
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
	beq		x31, x0, feq_else.30399	# 120
	fadd	f1, f0, f16	# 298
	jal		x0, feq_cont.30398	# 120
feq_else.30399:
	fadd	f6, f0, f16	# 298
	fdiv	f1, f6, f1	# 298
feq_cont.30398:
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
	ble		x6, x4, ble.30401	# 239
	addi	x6, x4, 0	# 239
	jal		x0, ble_cont.30400	# 239
ble.30401:
	sub		x6, x4, x6	# 239
ble_cont.30400:
	flw		f1, -48(x2)	# 2225
	flw		f2, -40(x2)	# 2225
	flw		f3, -32(x2)	# 2225
	lw		x4, -20(x2)	# 2225
	lw		x29, 0(x2)	# 2225
	lw		x31, 0(x29)	# 2225
	jalr	x0, x31, 0	# 2225
scan_pixel.2977.16834:
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
	ble		x17, x4, ble.30402	# 2248
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
	mul		x17, x30, x13	# 275
	addi	x17, x17, 60604	# 275
	fsw		f1, 0(x17)	# 275
	mul		x17, x30, x16	# 2064
	addi	x17, x17, 60616	# 2064
	lw		x17, 0(x17)	# 2064
	add		x18, x5, x16	# 2064
	ble		x17, x18, ble.30404	# 2064
	ble		x5, x15, ble.30406	# 2065
	mul		x17, x30, x15	# 2066
	addi	x17, x17, 60616	# 2066
	lw		x17, 0(x17)	# 2066
	add		x18, x4, x16	# 2066
	ble		x17, x18, ble.30408	# 2066
	ble		x4, x15, ble.30410	# 2067
	addi	x17, x0, 1	# 2068
	jal		x0, ble_cont.30409	# 2067
ble.30410:
	addi	x17, x0, 0	# 2069
ble_cont.30409:
	jal		x0, ble_cont.30407	# 2066
ble.30408:
	addi	x17, x0, 0	# 2070
ble_cont.30407:
	jal		x0, ble_cont.30405	# 2065
ble.30406:
	addi	x17, x0, 0	# 2071
ble_cont.30405:
	jal		x0, ble_cont.30403	# 2064
ble.30404:
	addi	x17, x0, 0	# 2072
ble_cont.30403:
	sw		x8, 0(x2)	# 2254
	sw		x7, -4(x2)	# 2254
	sw		x6, -8(x2)	# 2254
	sw		x5, -12(x2)	# 2254
	sw		x29, -16(x2)	# 2254
	sw		x4, -20(x2)	# 2254
	sw		x13, -24(x2)	# 2254
	sw		x16, -28(x2)	# 2254
	sw		x11, -32(x2)	# 2254
	sw		x15, -36(x2)	# 2254
	sw		x14, -40(x2)	# 2254
	sw		x9, -44(x2)	# 2254
	beq		x17, x15, beq.30412	# 2254
	addi	x9, x15, 0
	addi	x29, x10, 0
	sw		x1, -48(x2)	# 2255
	addi	x2, x2, -52	# 2255
	lw		x31, 0(x29)	# 2255
	jalr	x1, x31, 0	# 2255
	addi	x2, x2, 52	# 2255
	lw		x1, -48(x2)	# 2255
	jal		x0, beq_cont.30411	# 2254
beq.30412:
	mul		x10, x30, x4	# 2257
	add		x10, x7, x10	# 2257
	lw		x10, 0(x10)	# 2257
	addi	x5, x15, 0
	addi	x4, x10, 0
	addi	x29, x12, 0
	sw		x1, -48(x2)	# 2257
	addi	x2, x2, -52	# 2257
	lw		x31, 0(x29)	# 2257
	jalr	x1, x31, 0	# 2257
	addi	x2, x2, 52	# 2257
	lw		x1, -48(x2)	# 2257
beq_cont.30411:
	lw		x4, -40(x2)	# 2154
	lw		x5, -44(x2)	# 2154
	beq		x5, x4, beq.30414	# 2154
	lw		x4, -36(x2)	# 2162
	mul		x6, x30, x4	# 2162
	addi	x6, x6, 60604	# 2162
	flw		f1, 0(x6)	# 2162
	lw		x29, -32(x2)	# 2148
	sw		x1, -48(x2)	# 2148
	addi	x2, x2, -52	# 2148
	lw		x31, 0(x29)	# 2148
	jalr	x1, x31, 0	# 2148
	addi	x2, x2, 52	# 2148
	lw		x1, -48(x2)	# 2148
	addi	x5, x0, 255	# 2149
	ble		x4, x5, ble.30416	# 2149
	addi	x4, x0, 255	# 2149
	jal		x0, ble_cont.30415	# 2149
ble.30416:
	lw		x6, -36(x2)	# 2149
	ble		x6, x4, ble_cont.30417	# 2149
	addi	x4, x0, 0	# 2149
ble_cont.30417:
ble_cont.30415:
	sw		x5, -48(x2)	# 2150
	sw		x1, -52(x2)	# 2150
	addi	x2, x2, -56	# 2150
	jal		x1, min_caml_print_char	# 2150
	addi	x2, x2, 56	# 2150
	lw		x1, -52(x2)	# 2150
	lw		x4, -28(x2)	# 2163
	mul		x5, x30, x4	# 2163
	addi	x5, x5, 60604	# 2163
	flw		f1, 0(x5)	# 2163
	lw		x29, -32(x2)	# 2148
	sw		x1, -52(x2)	# 2148
	addi	x2, x2, -56	# 2148
	lw		x31, 0(x29)	# 2148
	jalr	x1, x31, 0	# 2148
	addi	x2, x2, 56	# 2148
	lw		x1, -52(x2)	# 2148
	lw		x5, -48(x2)	# 2149
	ble		x4, x5, ble.30419	# 2149
	addi	x4, x0, 255	# 2149
	jal		x0, ble_cont.30418	# 2149
ble.30419:
	lw		x6, -36(x2)	# 2149
	ble		x6, x4, ble_cont.30420	# 2149
	addi	x4, x0, 0	# 2149
ble_cont.30420:
ble_cont.30418:
	sw		x1, -52(x2)	# 2150
	addi	x2, x2, -56	# 2150
	jal		x1, min_caml_print_char	# 2150
	addi	x2, x2, 56	# 2150
	lw		x1, -52(x2)	# 2150
	lw		x4, -24(x2)	# 2164
	mul		x4, x30, x4	# 2164
	addi	x4, x4, 60604	# 2164
	flw		f1, 0(x4)	# 2164
	lw		x29, -32(x2)	# 2148
	sw		x1, -52(x2)	# 2148
	addi	x2, x2, -56	# 2148
	lw		x31, 0(x29)	# 2148
	jalr	x1, x31, 0	# 2148
	addi	x2, x2, 56	# 2148
	lw		x1, -52(x2)	# 2148
	lw		x5, -48(x2)	# 2149
	ble		x4, x5, ble.30422	# 2149
	addi	x4, x0, 255	# 2149
	jal		x0, ble_cont.30421	# 2149
ble.30422:
	lw		x5, -36(x2)	# 2149
	ble		x5, x4, ble_cont.30423	# 2149
	addi	x4, x0, 0	# 2149
ble_cont.30423:
ble_cont.30421:
	sw		x1, -52(x2)	# 2150
	addi	x2, x2, -56	# 2150
	jal		x1, min_caml_print_char	# 2150
	addi	x2, x2, 56	# 2150
	lw		x1, -52(x2)	# 2150
	jal		x0, beq_cont.30413	# 2154
beq.30414:
	lw		x4, -36(x2)	# 2155
	mul		x6, x30, x4	# 2155
	addi	x6, x6, 60604	# 2155
	flw		f1, 0(x6)	# 2155
	lw		x29, -32(x2)	# 2142
	sw		x1, -52(x2)	# 2142
	addi	x2, x2, -56	# 2142
	lw		x31, 0(x29)	# 2142
	jalr	x1, x31, 0	# 2142
	addi	x2, x2, 56	# 2142
	lw		x1, -52(x2)	# 2142
	addi	x5, x0, 255	# 2143
	ble		x4, x5, ble.30425	# 2143
	addi	x4, x0, 255	# 2143
	jal		x0, ble_cont.30424	# 2143
ble.30425:
	lw		x6, -36(x2)	# 2143
	ble		x6, x4, ble_cont.30426	# 2143
	addi	x4, x0, 0	# 2143
ble_cont.30426:
ble_cont.30424:
	sw		x5, -52(x2)	# 2144
	sw		x1, -56(x2)	# 2144
	addi	x2, x2, -60	# 2144
	jal		x1, min_caml_print_int	# 2144
	addi	x2, x2, 60	# 2144
	lw		x1, -56(x2)	# 2144
	addi	x4, x0, 32	# 2156
	sw		x4, -56(x2)	# 2156
	sw		x1, -60(x2)	# 2156
	addi	x2, x2, -64	# 2156
	jal		x1, min_caml_print_char	# 2156
	addi	x2, x2, 64	# 2156
	lw		x1, -60(x2)	# 2156
	lw		x4, -28(x2)	# 2157
	mul		x5, x30, x4	# 2157
	addi	x5, x5, 60604	# 2157
	flw		f1, 0(x5)	# 2157
	lw		x29, -32(x2)	# 2142
	sw		x1, -60(x2)	# 2142
	addi	x2, x2, -64	# 2142
	lw		x31, 0(x29)	# 2142
	jalr	x1, x31, 0	# 2142
	addi	x2, x2, 64	# 2142
	lw		x1, -60(x2)	# 2142
	lw		x5, -52(x2)	# 2143
	ble		x4, x5, ble.30428	# 2143
	addi	x4, x0, 255	# 2143
	jal		x0, ble_cont.30427	# 2143
ble.30428:
	lw		x6, -36(x2)	# 2143
	ble		x6, x4, ble_cont.30429	# 2143
	addi	x4, x0, 0	# 2143
ble_cont.30429:
ble_cont.30427:
	sw		x1, -60(x2)	# 2144
	addi	x2, x2, -64	# 2144
	jal		x1, min_caml_print_int	# 2144
	addi	x2, x2, 64	# 2144
	lw		x1, -60(x2)	# 2144
	lw		x4, -56(x2)	# 2158
	sw		x1, -60(x2)	# 2158
	addi	x2, x2, -64	# 2158
	jal		x1, min_caml_print_char	# 2158
	addi	x2, x2, 64	# 2158
	lw		x1, -60(x2)	# 2158
	lw		x4, -24(x2)	# 2159
	mul		x4, x30, x4	# 2159
	addi	x4, x4, 60604	# 2159
	flw		f1, 0(x4)	# 2159
	lw		x29, -32(x2)	# 2142
	sw		x1, -60(x2)	# 2142
	addi	x2, x2, -64	# 2142
	lw		x31, 0(x29)	# 2142
	jalr	x1, x31, 0	# 2142
	addi	x2, x2, 64	# 2142
	lw		x1, -60(x2)	# 2142
	lw		x5, -52(x2)	# 2143
	ble		x4, x5, ble.30431	# 2143
	addi	x4, x0, 255	# 2143
	jal		x0, ble_cont.30430	# 2143
ble.30431:
	lw		x5, -36(x2)	# 2143
	ble		x5, x4, ble_cont.30432	# 2143
	addi	x4, x0, 0	# 2143
ble_cont.30432:
ble_cont.30430:
	sw		x1, -60(x2)	# 2144
	addi	x2, x2, -64	# 2144
	jal		x1, min_caml_print_int	# 2144
	addi	x2, x2, 64	# 2144
	lw		x1, -60(x2)	# 2144
	addi	x4, x0, 10	# 2160
	sw		x1, -60(x2)	# 2160
	addi	x2, x2, -64	# 2160
	jal		x1, min_caml_print_char	# 2160
	addi	x2, x2, 64	# 2160
	lw		x1, -60(x2)	# 2160
beq_cont.30413:
	lw		x4, -28(x2)	# 2262
	lw		x5, -20(x2)	# 2262
	add		x4, x5, x4	# 2262
	lw		x5, -12(x2)	# 2262
	lw		x6, -8(x2)	# 2262
	lw		x7, -4(x2)	# 2262
	lw		x8, 0(x2)	# 2262
	lw		x9, -44(x2)	# 2262
	lw		x29, -16(x2)	# 2262
	lw		x31, 0(x29)	# 2262
	jalr	x0, x31, 0	# 2262
ble.30402:
	jalr	x0, x1, 0	# 2263
scan_line.2984.16841:
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
	ble		x17, x4, ble.30434	# 2269
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
	ble		x17, x4, ble_cont.30435	# 2271
	add		x17, x4, x16	# 2272
	mul		x18, x30, x15	# 2232
	addi	x18, x18, 60632	# 2232
	flw		f1, 0(x18)	# 2232
	mul		x18, x30, x16	# 2232
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
	lw		x4, -40(x2)	# 2235
	mul		x5, x30, x4	# 2235
	addi	x5, x5, 60672	# 2235
	flw		f2, 0(x5)	# 2235
	fmul	f2, f1, f2	# 2235
	mul		x5, x30, x4	# 2235
	addi	x5, x5, 60684	# 2235
	flw		f3, 0(x5)	# 2235
	fadd	f2, f2, f3	# 2235
	lw		x5, -16(x2)	# 2236
	mul		x6, x30, x5	# 2236
	addi	x6, x6, 60672	# 2236
	flw		f3, 0(x6)	# 2236
	fmul	f3, f1, f3	# 2236
	mul		x6, x30, x5	# 2236
	addi	x6, x6, 60684	# 2236
	flw		f4, 0(x6)	# 2236
	fadd	f3, f3, f4	# 2236
	lw		x6, -8(x2)	# 2237
	mul		x7, x30, x6	# 2237
	addi	x7, x7, 60672	# 2237
	flw		f4, 0(x7)	# 2237
	fmul	f1, f1, f4	# 2237
	mul		x7, x30, x6	# 2237
	addi	x7, x7, 60684	# 2237
	flw		f4, 0(x7)	# 2237
	fadd	f1, f1, f4	# 2237
	mul		x7, x30, x4	# 2238
	addi	x7, x7, 60616	# 2238
	lw		x7, 0(x7)	# 2238
	sub		x7, x7, x5	# 2238
	lw		x8, -24(x2)	# 2238
	lw		x9, -12(x2)	# 2238
	lw		x29, -48(x2)	# 2238
	addi	x6, x9, 0
	addi	x5, x7, 0
	addi	x4, x8, 0
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
ble_cont.30435:
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
	ble		x6, x5, ble.30437	# 239
	addi	x8, x5, 0	# 239
	jal		x0, ble_cont.30436	# 239
ble.30437:
	sub		x8, x5, x6	# 239
ble_cont.30436:
	lw		x5, -28(x2)	# 2275
	lw		x6, -24(x2)	# 2275
	lw		x7, -32(x2)	# 2275
	lw		x9, -20(x2)	# 2275
	lw		x29, 0(x2)	# 2275
	lw		x31, 0(x29)	# 2275
	jalr	x0, x31, 0	# 2275
ble.30434:
	jalr	x0, x1, 0	# 2276
init_line_elements.2995.16848:
	lw		x6, 24(x29)	# 2311
	lw		x7, 20(x29)	# 2311
	lw		x8, 16(x29)	# 2311
	lw		x9, 12(x29)	# 2311
	lw		x10, 8(x29)	# 2311
	flw		f1, 4(x29)	# 2311
	ble		x9, x5, ble.30439	# 2311
	jalr	x0, x1, 0	# 2315
ble.30439:
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
calc_dirvec.3005.16851:
	lw		x7, 28(x29)	# 2348
	lw		x8, 24(x29)	# 2348
	lw		x9, 20(x29)	# 2348
	lw		x10, 16(x29)	# 2348
	lw		x11, 12(x29)	# 2348
	lw		x12, 8(x29)	# 2348
	lw		x13, 4(x29)	# 2348
	ble		x10, x4, ble.30440	# 2348
	fmul	f1, f2, f2	# 2339
	fadd	f2, f0, f26	# 2339
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
ble.30440:
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
calc_dirvecs.3013.16859:
	lw		x7, 28(x29)	# 2369
	lw		x8, 24(x29)	# 2369
	lw		x9, 20(x29)	# 2369
	lw		x10, 16(x29)	# 2369
	lw		x11, 12(x29)	# 2369
	lw		x12, 8(x29)	# 2369
	flw		f2, 4(x29)	# 2369
	ble		x11, x4, ble.30442	# 2369
	jalr	x0, x1, 0	# 2378
ble.30442:
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
	fadd	f2, f0, f25	# 2371
	fmul	f1, f1, f2	# 2371
	lui		x4, %hi(l.26624)	# 2371
	ori		x4, x0, %lo(l.26624)	# 2371
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
	fadd	f1, f0, f26	# 2374
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
	ble		x6, x4, ble.30445	# 239
	jal		x0, ble_cont.30444	# 239
ble.30445:
	sub		x4, x4, x6	# 239
ble_cont.30444:
	flw		f1, -20(x2)	# 2377
	lw		x6, -28(x2)	# 2377
	lw		x29, 0(x2)	# 2377
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	lw		x31, 0(x29)	# 2377
	jalr	x0, x31, 0	# 2377
calc_dirvec_rows.3018.16864:
	lw		x7, 24(x29)	# 2383
	lw		x8, 20(x29)	# 2383
	lw		x9, 16(x29)	# 2383
	lw		x10, 12(x29)	# 2383
	lw		x11, 8(x29)	# 2383
	lw		x12, 4(x29)	# 2383
	ble		x11, x4, ble.30446	# 2383
	jalr	x0, x1, 0	# 2387
ble.30446:
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
	fadd	f2, f0, f25	# 2384
	fmul	f1, f1, f2	# 2384
	lui		x4, %hi(l.26624)	# 2384
	ori		x4, x0, %lo(l.26624)	# 2384
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
	ble		x6, x5, ble.30449	# 239
	jal		x0, ble_cont.30448	# 239
ble.30449:
	sub		x5, x5, x6	# 239
ble_cont.30448:
	lw		x6, -20(x2)	# 2386
	addi	x6, x6, 4	# 2386
	lw		x29, 0(x2)	# 2386
	lw		x31, 0(x29)	# 2386
	jalr	x0, x31, 0	# 2386
create_dirvec_elements.3024.16868:
	lw		x6, 16(x29)	# 2402
	lw		x7, 12(x29)	# 2402
	lw		x8, 8(x29)	# 2402
	flw		f1, 4(x29)	# 2402
	ble		x7, x5, ble.30450	# 2402
	jalr	x0, x1, 0	# 2405
ble.30450:
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
create_dirvecs.3027.16871:
	lw		x5, 20(x29)	# 2409
	lw		x6, 16(x29)	# 2409
	lw		x7, 12(x29)	# 2409
	lw		x8, 8(x29)	# 2409
	flw		f1, 4(x29)	# 2409
	ble		x7, x4, ble.30452	# 2409
	jalr	x0, x1, 0	# 2413
ble.30452:
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
init_dirvec_constants.3029.16873:
	lw		x6, 12(x29)	# 2421
	lw		x7, 8(x29)	# 2421
	lw		x8, 4(x29)	# 2421
	ble		x7, x5, ble.30454	# 2421
	jalr	x0, x1, 0	# 2424
ble.30454:
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
init_vecset_constants.3032.16876:
	lw		x5, 12(x29)	# 2428
	lw		x6, 8(x29)	# 2428
	lw		x7, 4(x29)	# 2428
	ble		x6, x4, ble.30456	# 2428
	jalr	x0, x1, 0	# 2431
ble.30456:
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
	lui		x4, %hi(l.26651)
	ori		x4, x0, %lo(l.26651)
	flw		f0, 0(x4)
	lui		x4, %hi(l.24171)
	ori		x4, x0, %lo(l.24171)
	flw		f30, 0(x4)
	lui		x4, %hi(l.24169)
	ori		x4, x0, %lo(l.24169)
	flw		f16, 0(x4)
	lui		x4, %hi(l.24173)
	ori		x4, x0, %lo(l.24173)
	flw		f17, 0(x4)
	lui		x4, %hi(l.24260)
	ori		x4, x0, %lo(l.24260)
	flw		f18, 0(x4)
	lui		x4, %hi(l.25243)
	ori		x4, x0, %lo(l.25243)
	flw		f19, 0(x4)
	lui		x4, %hi(l.24769)
	ori		x4, x0, %lo(l.24769)
	flw		f20, 0(x4)
	lui		x4, %hi(l.25273)
	ori		x4, x0, %lo(l.25273)
	flw		f21, 0(x4)
	lui		x4, %hi(l.25320)
	ori		x4, x0, %lo(l.25320)
	flw		f22, 0(x4)
	lui		x4, %hi(l.25241)
	ori		x4, x0, %lo(l.25241)
	flw		f23, 0(x4)
	lui		x4, %hi(l.25239)
	ori		x4, x0, %lo(l.25239)
	flw		f24, 0(x4)
	lui		x4, %hi(l.24200)
	ori		x4, x0, %lo(l.24200)
	flw		f25, 0(x4)
	lui		x4, %hi(l.25751)
	ori		x4, x0, %lo(l.25751)
	flw		f26, 0(x4)
	lui		x4, %hi(l.24650)
	ori		x4, x0, %lo(l.24650)
	flw		f27, 0(x4)
	lui		x4, %hi(l.24311)
	ori		x4, x0, %lo(l.24311)
	flw		f28, 0(x4)
	lui		x4, %hi(l.25261)
	ori		x4, x0, %lo(l.25261)
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
	lui		x4, %hi(l.26665)	# 25
	ori		x4, x0, %lo(l.26665)	# 25
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
	lui		x4, %hi(l.26669)	# 42
	ori		x4, x0, %lo(l.26669)	# 42
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
	lui		x5, %hi(int_of_float_rem.2535.16716)	# 132
	ori		x5, x0, %lo(int_of_float_rem.2535.16716)	# 132
	sw		x5, 0(x4)	# 134
	lw		x5, 0(x2)	# 134
	sw		x5, 4(x4)	# 134
	addi	x6, x3, 0	# 134
	addi	x3, x3, 8	# 134
	lui		x7, %hi(int_of_float_four.2538.16719)	# 134
	ori		x7, x0, %lo(int_of_float_four.2538.16719)	# 134
	sw		x7, 0(x6)	# 136
	sw		x4, 4(x6)	# 136
	addi	x4, x3, 0	# 136
	addi	x3, x3, 16	# 136
	lui		x7, %hi(int_of_float.2541.16722)	# 136
	ori		x7, x0, %lo(int_of_float.2541.16722)	# 136
	sw		x7, 0(x4)	# 143
	sw		x6, 12(x4)	# 143
	lw		x6, -4(x2)	# 143
	sw		x6, 8(x4)	# 143
	flw		f1, -8(x2)	# 143
	fsw		f1, 4(x4)	# 143
	addi	x7, x3, 0	# 143
	addi	x3, x3, 8	# 143
	lui		x8, %hi(float_of_int_rem.2543.16724)	# 143
	ori		x8, x0, %lo(float_of_int_rem.2543.16724)	# 143
	sw		x8, 0(x7)	# 145
	sw		x5, 4(x7)	# 145
	addi	x8, x3, 0	# 145
	addi	x3, x3, 8	# 145
	lui		x9, %hi(float_of_int_four.2546.16727)	# 145
	ori		x9, x0, %lo(float_of_int_four.2546.16727)	# 145
	sw		x9, 0(x8)	# 147
	sw		x7, 4(x8)	# 147
	addi	x29, x3, 0	# 147
	addi	x3, x3, 16	# 147
	lui		x7, %hi(float_of_int.2549.16730)	# 147
	ori		x7, x0, %lo(float_of_int.2549.16730)	# 147
	sw		x7, 0(x29)	# 153
	sw		x8, 12(x29)	# 153
	sw		x6, 8(x29)	# 153
	fsw		f1, 4(x29)	# 153
	lui		x7, %hi(l.26684)	# 153
	ori		x7, x0, %lo(l.26684)	# 153
	flw		f2, 0(x7)	# 153
	lui		x7, %hi(l.26686)	# 154
	ori		x7, x0, %lo(l.26686)	# 154
	flw		f3, 0(x7)	# 154
	lui		x7, %hi(l.26688)	# 155
	ori		x7, x0, %lo(l.26688)	# 155
	flw		f4, 0(x7)	# 155
	lui		x7, %hi(l.26690)	# 156
	ori		x7, x0, %lo(l.26690)	# 156
	flw		f5, 0(x7)	# 156
	addi	x7, x3, 0	# 178
	addi	x3, x3, 24	# 178
	lui		x8, %hi(sin.2561.16736)	# 178
	ori		x8, x0, %lo(sin.2561.16736)	# 178
	sw		x8, 0(x7)	# 186
	fsw		f5, 20(x7)	# 186
	fsw		f4, 16(x7)	# 186
	fsw		f3, 12(x7)	# 186
	fsw		f2, 8(x7)	# 186
	fsw		f1, 4(x7)	# 186
	addi	x8, x3, 0	# 186
	addi	x3, x3, 20	# 186
	lui		x9, %hi(cos.2563.16738)	# 186
	ori		x9, x0, %lo(cos.2563.16738)	# 186
	sw		x9, 0(x8)	# 191
	sw		x7, 16(x8)	# 191
	fsw		f5, 12(x8)	# 191
	fsw		f4, 8(x8)	# 191
	fsw		f1, 4(x8)	# 191
	addi	x9, x3, 0	# 191
	addi	x3, x3, 16	# 191
	lui		x10, %hi(atan.2565.16740)	# 191
	ori		x10, x0, %lo(atan.2565.16740)	# 191
	sw		x10, 0(x9)	# 874
	fsw		f5, 12(x9)	# 874
	fsw		f4, 8(x9)	# 874
	fsw		f1, 4(x9)	# 874
	addi	x10, x3, 0	# 874
	addi	x3, x3, 40	# 874
	lui		x11, %hi(read_object.2702.16742)	# 874
	ori		x11, x0, %lo(read_object.2702.16742)	# 874
	sw		x11, 0(x10)	# 890
	sw		x7, 36(x10)	# 890
	sw		x8, 32(x10)	# 890
	lw		x11, -48(x2)	# 890
	sw		x11, 28(x10)	# 890
	lw		x12, -28(x2)	# 890
	sw		x12, 24(x10)	# 890
	lw		x13, -20(x2)	# 890
	sw		x13, 20(x10)	# 890
	lw		x14, -16(x2)	# 890
	sw		x14, 16(x10)	# 890
	sw		x6, 12(x10)	# 890
	sw		x5, 8(x10)	# 890
	fsw		f1, 4(x10)	# 890
	addi	x14, x3, 0	# 890
	addi	x3, x3, 12	# 890
	lui		x15, %hi(read_net_item.2706.16744)	# 890
	ori		x15, x0, %lo(read_net_item.2706.16744)	# 890
	sw		x15, 0(x14)	# 898
	sw		x12, 8(x14)	# 898
	sw		x5, 4(x14)	# 898
	addi	x15, x3, 0	# 898
	addi	x3, x3, 20	# 898
	lui		x16, %hi(read_or_network.2708.16746)	# 898
	ori		x16, x0, %lo(read_or_network.2708.16746)	# 898
	sw		x16, 0(x15)	# 907
	sw		x14, 16(x15)	# 907
	sw		x12, 12(x15)	# 907
	sw		x6, 8(x15)	# 907
	sw		x5, 4(x15)	# 907
	addi	x16, x3, 0	# 907
	addi	x3, x3, 20	# 907
	lui		x17, %hi(read_and_network.2710.16748)	# 907
	ori		x17, x0, %lo(read_and_network.2710.16748)	# 907
	sw		x17, 0(x16)	# 1283
	sw		x14, 16(x16)	# 1283
	sw		x12, 12(x16)	# 1283
	sw		x6, 8(x16)	# 1283
	sw		x5, 4(x16)	# 1283
	addi	x14, x3, 0	# 1283
	addi	x3, x3, 28	# 1283
	lui		x17, %hi(iter_setup_dirvec_constants.2807.16750)	# 1283
	ori		x17, x0, %lo(iter_setup_dirvec_constants.2807.16750)	# 1283
	sw		x17, 0(x14)	# 1308
	lw		x17, -64(x2)	# 1308
	sw		x17, 24(x14)	# 1308
	sw		x11, 20(x14)	# 1308
	sw		x13, 16(x14)	# 1308
	sw		x6, 12(x14)	# 1308
	sw		x5, 8(x14)	# 1308
	fsw		f1, 4(x14)	# 1308
	addi	x18, x3, 0	# 1308
	addi	x3, x3, 20	# 1308
	lui		x19, %hi(setup_startp_constants.2812.16753)	# 1308
	ori		x19, x0, %lo(setup_startp_constants.2812.16753)	# 1308
	sw		x19, 0(x18)	# 1377
	sw		x11, 16(x18)	# 1377
	sw		x13, 12(x18)	# 1377
	sw		x6, 8(x18)	# 1377
	sw		x5, 4(x18)	# 1377
	addi	x19, x3, 0	# 1377
	addi	x3, x3, 28	# 1377
	lui		x20, %hi(check_all_inside.2837.16756)	# 1377
	ori		x20, x0, %lo(check_all_inside.2837.16756)	# 1377
	sw		x20, 0(x19)	# 1397
	sw		x11, 24(x19)	# 1397
	sw		x12, 20(x19)	# 1397
	sw		x13, 16(x19)	# 1397
	sw		x6, 12(x19)	# 1397
	sw		x5, 8(x19)	# 1397
	fsw		f1, 4(x19)	# 1397
	addi	x20, x3, 0	# 1397
	addi	x3, x3, 36	# 1397
	lui		x21, %hi(shadow_check_and_group.2843.16762)	# 1397
	ori		x21, x0, %lo(shadow_check_and_group.2843.16762)	# 1397
	sw		x21, 0(x20)	# 1427
	sw		x19, 32(x20)	# 1427
	sw		x17, 28(x20)	# 1427
	sw		x11, 24(x20)	# 1427
	sw		x12, 20(x20)	# 1427
	sw		x13, 16(x20)	# 1427
	sw		x6, 12(x20)	# 1427
	sw		x5, 8(x20)	# 1427
	fsw		f1, 4(x20)	# 1427
	addi	x21, x3, 0	# 1427
	addi	x3, x3, 20	# 1427
	lui		x22, %hi(shadow_check_one_or_group.2846.16765)	# 1427
	ori		x22, x0, %lo(shadow_check_one_or_group.2846.16765)	# 1427
	sw		x22, 0(x21)	# 1442
	sw		x20, 16(x21)	# 1442
	sw		x12, 12(x21)	# 1442
	sw		x6, 8(x21)	# 1442
	sw		x5, 4(x21)	# 1442
	addi	x20, x3, 0	# 1442
	addi	x3, x3, 36	# 1442
	lui		x22, %hi(shadow_check_one_or_matrix.2849.16768)	# 1442
	ori		x22, x0, %lo(shadow_check_one_or_matrix.2849.16768)	# 1442
	sw		x22, 0(x20)	# 1478
	sw		x21, 32(x20)	# 1478
	sw		x17, 28(x20)	# 1478
	sw		x11, 24(x20)	# 1478
	sw		x12, 20(x20)	# 1478
	sw		x13, 16(x20)	# 1478
	sw		x6, 12(x20)	# 1478
	sw		x5, 8(x20)	# 1478
	fsw		f1, 4(x20)	# 1478
	addi	x21, x3, 0	# 1478
	addi	x3, x3, 32	# 1478
	lui		x22, %hi(solve_each_element.2852.16771)	# 1478
	ori		x22, x0, %lo(solve_each_element.2852.16771)	# 1478
	sw		x22, 0(x21)	# 1519
	sw		x19, 28(x21)	# 1519
	sw		x11, 24(x21)	# 1519
	sw		x12, 20(x21)	# 1519
	sw		x13, 16(x21)	# 1519
	sw		x6, 12(x21)	# 1519
	sw		x5, 8(x21)	# 1519
	fsw		f1, 4(x21)	# 1519
	addi	x22, x3, 0	# 1519
	addi	x3, x3, 20	# 1519
	lui		x23, %hi(solve_one_or_network.2856.16775)	# 1519
	ori		x23, x0, %lo(solve_one_or_network.2856.16775)	# 1519
	sw		x23, 0(x22)	# 1529
	sw		x21, 16(x22)	# 1529
	sw		x12, 12(x22)	# 1529
	sw		x6, 8(x22)	# 1529
	sw		x5, 4(x22)	# 1529
	addi	x21, x3, 0	# 1529
	addi	x3, x3, 32	# 1529
	lui		x23, %hi(trace_or_matrix.2860.16779)	# 1529
	ori		x23, x0, %lo(trace_or_matrix.2860.16779)	# 1529
	sw		x23, 0(x21)	# 1571
	sw		x22, 28(x21)	# 1571
	sw		x11, 24(x21)	# 1571
	sw		x12, 20(x21)	# 1571
	sw		x13, 16(x21)	# 1571
	sw		x6, 12(x21)	# 1571
	sw		x5, 8(x21)	# 1571
	fsw		f1, 4(x21)	# 1571
	addi	x22, x3, 0	# 1571
	addi	x3, x3, 36	# 1571
	lui		x23, %hi(solve_each_element_fast.2866.16783)	# 1571
	ori		x23, x0, %lo(solve_each_element_fast.2866.16783)	# 1571
	sw		x23, 0(x22)	# 1612
	sw		x19, 32(x22)	# 1612
	sw		x17, 28(x22)	# 1612
	sw		x11, 24(x22)	# 1612
	sw		x12, 20(x22)	# 1612
	sw		x13, 16(x22)	# 1612
	sw		x6, 12(x22)	# 1612
	sw		x5, 8(x22)	# 1612
	fsw		f1, 4(x22)	# 1612
	addi	x19, x3, 0	# 1612
	addi	x3, x3, 20	# 1612
	lui		x23, %hi(solve_one_or_network_fast.2870.16787)	# 1612
	ori		x23, x0, %lo(solve_one_or_network_fast.2870.16787)	# 1612
	sw		x23, 0(x19)	# 1622
	sw		x22, 16(x19)	# 1622
	sw		x12, 12(x19)	# 1622
	sw		x6, 8(x19)	# 1622
	sw		x5, 4(x19)	# 1622
	addi	x22, x3, 0	# 1622
	addi	x3, x3, 36	# 1622
	lui		x23, %hi(trace_or_matrix_fast.2874.16791)	# 1622
	ori		x23, x0, %lo(trace_or_matrix_fast.2874.16791)	# 1622
	sw		x23, 0(x22)	# 1721
	sw		x19, 32(x22)	# 1721
	sw		x17, 28(x22)	# 1721
	sw		x11, 24(x22)	# 1721
	sw		x12, 20(x22)	# 1721
	sw		x13, 16(x22)	# 1721
	sw		x6, 12(x22)	# 1721
	sw		x5, 8(x22)	# 1721
	fsw		f1, 4(x22)	# 1721
	addi	x19, x3, 0	# 1721
	addi	x3, x3, 48	# 1721
	lui		x23, %hi(utexture.2889.16795)	# 1721
	ori		x23, x0, %lo(utexture.2889.16795)	# 1721
	sw		x23, 0(x19)	# 1816
	sw		x7, 44(x19)	# 1816
	sw		x4, 40(x19)	# 1816
	sw		x29, 36(x19)	# 1816
	sw		x8, 32(x19)	# 1816
	sw		x9, 28(x19)	# 1816
	sw		x11, 24(x19)	# 1816
	sw		x13, 20(x19)	# 1816
	sw		x6, 16(x19)	# 1816
	sw		x5, 12(x19)	# 1816
	flw		f2, -24(x2)	# 1816
	fsw		f2, 8(x19)	# 1816
	fsw		f1, 4(x19)	# 1816
	addi	x23, x3, 0	# 1816
	addi	x3, x3, 32	# 1816
	lui		x24, %hi(trace_reflections.2896.16798)	# 1816
	ori		x24, x0, %lo(trace_reflections.2896.16798)	# 1816
	sw		x24, 0(x23)	# 1845
	sw		x22, 28(x23)	# 1845
	sw		x20, 24(x23)	# 1845
	sw		x11, 20(x23)	# 1845
	sw		x6, 16(x23)	# 1845
	sw		x5, 12(x23)	# 1845
	flw		f3, -44(x2)	# 1845
	fsw		f3, 8(x23)	# 1845
	fsw		f1, 4(x23)	# 1845
	addi	x24, x3, 0	# 1845
	addi	x3, x3, 72	# 1845
	lui		x25, %hi(trace_ray.2901.16803)	# 1845
	ori		x25, x0, %lo(trace_ray.2901.16803)	# 1845
	sw		x25, 0(x24)	# 1957
	sw		x23, 68(x24)	# 1957
	sw		x21, 64(x24)	# 1957
	sw		x7, 60(x24)	# 1957
	sw		x20, 56(x24)	# 1957
	sw		x18, 52(x24)	# 1957
	sw		x4, 48(x24)	# 1957
	sw		x29, 44(x24)	# 1957
	sw		x8, 40(x24)	# 1957
	sw		x9, 36(x24)	# 1957
	sw		x11, 32(x24)	# 1957
	sw		x12, 28(x24)	# 1957
	sw		x13, 24(x24)	# 1957
	sw		x6, 20(x24)	# 1957
	sw		x5, 16(x24)	# 1957
	fsw		f3, 12(x24)	# 1957
	fsw		f2, 8(x24)	# 1957
	fsw		f1, 4(x24)	# 1957
	addi	x12, x3, 0	# 1957
	addi	x3, x3, 36	# 1957
	lui		x21, %hi(iter_trace_diffuse_rays.2910.16809)	# 1957
	ori		x21, x0, %lo(iter_trace_diffuse_rays.2910.16809)	# 1957
	sw		x21, 0(x12)	# 2048
	sw		x19, 32(x12)	# 2048
	sw		x22, 28(x12)	# 2048
	sw		x20, 24(x12)	# 2048
	sw		x11, 20(x12)	# 2048
	sw		x6, 16(x12)	# 2048
	sw		x5, 12(x12)	# 2048
	fsw		f3, 8(x12)	# 2048
	fsw		f1, 4(x12)	# 2048
	addi	x19, x3, 0	# 2048
	addi	x3, x3, 28	# 2048
	lui		x20, %hi(do_without_neighbors.2932.16814)	# 2048
	ori		x20, x0, %lo(do_without_neighbors.2932.16814)	# 2048
	sw		x20, 0(x19)	# 2100
	sw		x18, 24(x19)	# 2100
	sw		x12, 20(x19)	# 2100
	sw		x11, 16(x19)	# 2100
	sw		x13, 12(x19)	# 2100
	sw		x6, 8(x19)	# 2100
	sw		x5, 4(x19)	# 2100
	addi	x20, x3, 0	# 2100
	addi	x3, x3, 20	# 2100
	lui		x21, %hi(try_exploit_neighbors.2948.16817)	# 2100
	ori		x21, x0, %lo(try_exploit_neighbors.2948.16817)	# 2100
	sw		x21, 0(x20)	# 2176
	sw		x19, 16(x20)	# 2176
	sw		x11, 12(x20)	# 2176
	sw		x6, 8(x20)	# 2176
	sw		x5, 4(x20)	# 2176
	addi	x21, x3, 0	# 2176
	addi	x3, x3, 28	# 2176
	lui		x22, %hi(pretrace_diffuse_rays.2963.16824)	# 2176
	ori		x22, x0, %lo(pretrace_diffuse_rays.2963.16824)	# 2176
	sw		x22, 0(x21)	# 2206
	sw		x18, 24(x21)	# 2206
	sw		x12, 20(x21)	# 2206
	sw		x11, 16(x21)	# 2206
	sw		x6, 12(x21)	# 2206
	sw		x5, 8(x21)	# 2206
	fsw		f1, 4(x21)	# 2206
	addi	x12, x3, 0	# 2206
	addi	x3, x3, 36	# 2206
	lui		x18, %hi(pretrace_pixels.2966.16827)	# 2206
	ori		x18, x0, %lo(pretrace_pixels.2966.16827)	# 2206
	sw		x18, 0(x12)	# 2247
	sw		x24, 32(x12)	# 2247
	sw		x21, 28(x12)	# 2247
	sw		x29, 24(x12)	# 2247
	sw		x17, 20(x12)	# 2247
	sw		x11, 16(x12)	# 2247
	sw		x6, 12(x12)	# 2247
	sw		x5, 8(x12)	# 2247
	fsw		f1, 4(x12)	# 2247
	addi	x18, x3, 0	# 2247
	addi	x3, x3, 32	# 2247
	lui		x21, %hi(scan_pixel.2977.16834)	# 2247
	ori		x21, x0, %lo(scan_pixel.2977.16834)	# 2247
	sw		x21, 0(x18)	# 2267
	sw		x20, 28(x18)	# 2267
	sw		x4, 24(x18)	# 2267
	sw		x19, 20(x18)	# 2267
	sw		x11, 16(x18)	# 2267
	sw		x13, 12(x18)	# 2267
	sw		x6, 8(x18)	# 2267
	sw		x5, 4(x18)	# 2267
	addi	x4, x3, 0	# 2267
	addi	x3, x3, 32	# 2267
	lui		x19, %hi(scan_line.2984.16841)	# 2267
	ori		x19, x0, %lo(scan_line.2984.16841)	# 2267
	sw		x19, 0(x4)	# 2310
	sw		x18, 28(x4)	# 2310
	sw		x12, 24(x4)	# 2310
	sw		x29, 20(x4)	# 2310
	sw		x17, 16(x4)	# 2310
	sw		x11, 12(x4)	# 2310
	sw		x6, 8(x4)	# 2310
	sw		x5, 4(x4)	# 2310
	addi	x18, x3, 0	# 2310
	addi	x3, x3, 28	# 2310
	lui		x19, %hi(init_line_elements.2995.16848)	# 2310
	ori		x19, x0, %lo(init_line_elements.2995.16848)	# 2310
	sw		x19, 0(x18)	# 2347
	sw		x17, 24(x18)	# 2347
	sw		x11, 20(x18)	# 2347
	sw		x13, 16(x18)	# 2347
	sw		x6, 12(x18)	# 2347
	sw		x5, 8(x18)	# 2347
	fsw		f1, 4(x18)	# 2347
	addi	x19, x3, 0	# 2347
	addi	x3, x3, 32	# 2347
	lui		x20, %hi(calc_dirvec.3005.16851)	# 2347
	ori		x20, x0, %lo(calc_dirvec.3005.16851)	# 2347
	sw		x20, 0(x19)	# 2368
	sw		x7, 28(x19)	# 2368
	sw		x8, 24(x19)	# 2368
	sw		x9, 20(x19)	# 2368
	sw		x17, 16(x19)	# 2368
	sw		x11, 12(x19)	# 2368
	sw		x6, 8(x19)	# 2368
	sw		x5, 4(x19)	# 2368
	addi	x9, x3, 0	# 2368
	addi	x3, x3, 32	# 2368
	lui		x20, %hi(calc_dirvecs.3013.16859)	# 2368
	ori		x20, x0, %lo(calc_dirvecs.3013.16859)	# 2368
	sw		x20, 0(x9)	# 2382
	sw		x29, 28(x9)	# 2382
	sw		x19, 24(x9)	# 2382
	sw		x17, 20(x9)	# 2382
	sw		x11, 16(x9)	# 2382
	sw		x6, 12(x9)	# 2382
	sw		x5, 8(x9)	# 2382
	fsw		f1, 4(x9)	# 2382
	addi	x19, x3, 0	# 2382
	addi	x3, x3, 28	# 2382
	lui		x20, %hi(calc_dirvec_rows.3018.16864)	# 2382
	ori		x20, x0, %lo(calc_dirvec_rows.3018.16864)	# 2382
	sw		x20, 0(x19)	# 2401
	sw		x29, 24(x19)	# 2401
	sw		x9, 20(x19)	# 2401
	sw		x17, 16(x19)	# 2401
	sw		x11, 12(x19)	# 2401
	sw		x6, 8(x19)	# 2401
	sw		x5, 4(x19)	# 2401
	addi	x9, x3, 0	# 2401
	addi	x3, x3, 20	# 2401
	lui		x20, %hi(create_dirvec_elements.3024.16868)	# 2401
	ori		x20, x0, %lo(create_dirvec_elements.3024.16868)	# 2401
	sw		x20, 0(x9)	# 2408
	sw		x13, 16(x9)	# 2408
	sw		x6, 12(x9)	# 2408
	sw		x5, 8(x9)	# 2408
	fsw		f1, 4(x9)	# 2408
	addi	x20, x3, 0	# 2408
	addi	x3, x3, 24	# 2408
	lui		x21, %hi(create_dirvecs.3027.16871)	# 2408
	ori		x21, x0, %lo(create_dirvecs.3027.16871)	# 2408
	sw		x21, 0(x20)	# 2420
	sw		x9, 20(x20)	# 2420
	sw		x13, 16(x20)	# 2420
	sw		x6, 12(x20)	# 2420
	sw		x5, 8(x20)	# 2420
	fsw		f1, 4(x20)	# 2420
	addi	x9, x3, 0	# 2420
	addi	x3, x3, 16	# 2420
	lui		x21, %hi(init_dirvec_constants.3029.16873)	# 2420
	ori		x21, x0, %lo(init_dirvec_constants.3029.16873)	# 2420
	sw		x21, 0(x9)	# 2427
	sw		x14, 12(x9)	# 2427
	sw		x6, 8(x9)	# 2427
	sw		x5, 4(x9)	# 2427
	addi	x21, x3, 0	# 2427
	addi	x3, x3, 16	# 2427
	lui		x22, %hi(init_vecset_constants.3032.16876)	# 2427
	ori		x22, x0, %lo(init_vecset_constants.3032.16876)	# 2427
	sw		x22, 0(x21)	# 2526
	sw		x9, 12(x21)	# 2526
	sw		x6, 8(x21)	# 2526
	sw		x5, 4(x21)	# 2526
	addi	x9, x0, 128	# 2526
	mul		x22, x30, x6	# 2506
	addi	x22, x22, 60616	# 2506
	sw		x9, 0(x22)	# 2506
	mul		x22, x30, x5	# 2507
	addi	x22, x22, 60616	# 2507
	sw		x9, 0(x22)	# 2507
	addi	x22, x0, 64	# 2508
	mul		x23, x30, x6	# 2508
	addi	x23, x23, 60624	# 2508
	sw		x22, 0(x23)	# 2508
	mul		x23, x30, x5	# 2509
	addi	x23, x23, 60624	# 2509
	sw		x22, 0(x23)	# 2509
	lui		x22, %hi(l.26700)	# 2510
	ori		x22, x0, %lo(l.26700)	# 2510
	flw		f2, 0(x22)	# 2510
	sw		x4, -92(x2)	# 2510
	sw		x12, -96(x2)	# 2510
	sw		x29, -100(x2)	# 2510
	sw		x14, -104(x2)	# 2510
	sw		x21, -108(x2)	# 2510
	sw		x19, -112(x2)	# 2510
	sw		x20, -116(x2)	# 2510
	sw		x15, -120(x2)	# 2510
	sw		x16, -124(x2)	# 2510
	sw		x10, -128(x2)	# 2510
	sw		x7, -132(x2)	# 2510
	sw		x8, -136(x2)	# 2510
	sw		x18, -140(x2)	# 2510
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
	lui		x4, %hi(l.24231)	# 691
	ori		x4, x0, %lo(l.24231)	# 691
	flw		f2, 0(x4)	# 691
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
	lui		x4, %hi(l.26846)	# 709
	ori		x4, x0, %lo(l.26846)	# 709
	flw		f4, 0(x4)	# 709
	fmul	f3, f3, f4	# 709
	lw		x4, -4(x2)	# 709
	mul		x5, x30, x4	# 709
	addi	x5, x5, 60684	# 709
	fsw		f3, 0(x5)	# 709
	lui		x5, %hi(l.26850)	# 710
	ori		x5, x0, %lo(l.26850)	# 710
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
	ble		x4, x5, ble.30459	# 2484
	jal		x0, ble_cont.30458	# 2484
ble.30459:
	mul		x7, x30, x5	# 2485
	addi	x7, x7, 60048	# 2485
	lw		x7, 0(x7)	# 2485
	lw		x8, 8(x7)	# 377
	lw		x9, -48(x2)	# 2486
	beq		x8, x9, beq.30461	# 2486
	jal		x0, beq_cont.30460	# 2486
beq.30461:
	lw		x8, 28(x7)	# 475
	mul		x10, x30, x4	# 480
	add		x8, x8, x10	# 480
	flw		f1, 0(x8)	# 480
	fadd	f2, f0, f16	# 2487
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.30463	# 125
	jal		x0, fle_cont.30462	# 125
fle_else.30463:
	lw		x8, 4(x7)	# 367
	beq		x8, x6, beq.30465	# 2490
	beq		x8, x9, beq.30467	# 2492
	jal		x0, beq_cont.30466	# 2492
beq.30467:
	lw		x8, -160(x2)	# 2469
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
	fmul	f3, f2, f3	# 306
	mul		x11, x30, x6	# 306
	addi	x11, x11, 60312	# 306
	flw		f4, 0(x11)	# 306
	mul		x11, x30, x6	# 306
	add		x11, x10, x11	# 306
	flw		f5, 0(x11)	# 306
	fmul	f5, f4, f5	# 306
	fadd	f3, f3, f5	# 306
	mul		x11, x30, x9	# 306
	addi	x11, x11, 60312	# 306
	flw		f5, 0(x11)	# 306
	mul		x11, x30, x9	# 306
	add		x10, x10, x11	# 306
	flw		f6, 0(x10)	# 306
	fmul	f6, f5, f6	# 306
	fadd	f3, f3, f6	# 306
	fadd	f6, f0, f28	# 2475
	lw		x10, 16(x7)	# 405
	mul		x11, x30, x4	# 410
	add		x10, x10, x11	# 410
	flw		f7, 0(x10)	# 410
	fmul	f7, f6, f7	# 2475
	fmul	f7, f7, f3	# 2475
	fsub	f2, f7, f2	# 2475
	lw		x10, 16(x7)	# 415
	mul		x11, x30, x6	# 420
	add		x10, x10, x11	# 420
	flw		f7, 0(x10)	# 420
	fmul	f7, f6, f7	# 2476
	fmul	f7, f7, f3	# 2476
	fsub	f4, f7, f4	# 2476
	lw		x7, 16(x7)	# 425
	mul		x10, x30, x9	# 430
	add		x7, x7, x10	# 430
	flw		f7, 0(x7)	# 430
	fmul	f6, f6, f7	# 2477
	fmul	f3, f6, f3	# 2477
	fsub	f3, f3, f5	# 2477
	flw		f5, -8(x2)	# 2396
	lw		x7, -20(x2)	# 2396
	sw		x8, -316(x2)	# 2396
	sw		x5, -320(x2)	# 2396
	fsw		f1, -324(x2)	# 2396
	fsw		f3, -328(x2)	# 2396
	fsw		f4, -332(x2)	# 2396
	fsw		f2, -336(x2)	# 2396
	addi	x4, x7, 0
	fadd	f1, f0, f5
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
beq_cont.30466:
	jal		x0, beq_cont.30464	# 2490
beq.30465:
	lw		x8, -160(x2)	# 2455
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
	fsub	f3, f0, f2	# 123
	mul		x7, x30, x6	# 2459
	addi	x7, x7, 60312	# 2459
	flw		f4, 0(x7)	# 2459
	fsub	f4, f0, f4	# 123
	mul		x7, x30, x9	# 2460
	addi	x7, x7, 60312	# 2460
	flw		f5, 0(x7)	# 2460
	fsub	f5, f0, f5	# 123
	addi	x7, x5, 1	# 2461
	flw		f6, -8(x2)	# 2396
	lw		x10, -20(x2)	# 2396
	fsw		f3, -348(x2)	# 2396
	sw		x5, -352(x2)	# 2396
	sw		x8, -356(x2)	# 2396
	sw		x7, -360(x2)	# 2396
	fsw		f1, -364(x2)	# 2396
	fsw		f5, -368(x2)	# 2396
	fsw		f4, -372(x2)	# 2396
	fsw		f2, -376(x2)	# 2396
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
beq_cont.30464:
fle_cont.30462:
beq_cont.30460:
ble_cont.30458:
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
