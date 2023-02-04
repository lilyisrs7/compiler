l.25691:	# 1.000000
	.word	1.000000
l.25729:	# 0.000000
	.word	0.000000
l.25703:	# 0.500000
	.word	0.500000
l.25789:	# -1.000000
	.word	-1.000000
l.27112:	# 3.141593
	.word	3.141593
l.27108:	# 15.000000
	.word	15.000000
l.27110:	# 30.000000
	.word	30.000000
l.27138:	# 10.000000
	.word	10.000000
l.26356:	# -0.100000
	.word	-0.100000
l.25757:	# 0.017453
	.word	0.017453
l.26901:	# 100000000.000000
	.word	100000000.000000
l.27148:	# 0.250000
	.word	0.250000
l.27126:	# 0.300000
	.word	0.300000
l.27159:	# 0.050000
	.word	0.050000
l.27161:	# 20.000000
	.word	20.000000
l.25720:	# 0.200000
	.word	0.200000
l.27341:	# 0.100000
	.word	0.100000
l.27123:	# 0.150000
	.word	0.150000
l.27106:	# 0.000100
	.word	0.000100
l.26229:	# 0.010000
	.word	0.010000
l.25849:	# 2.000000
	.word	2.000000
l.28395:	# 0.900000
	.word	0.900000
l.25707:	# 0.001370
	.word	0.001370
l.25705:	# 0.041664
	.word	0.041664
l.26227:	# -0.200000
	.word	-0.200000
l.25722:	# 0.142857
	.word	0.142857
l.25724:	# 0.111111
	.word	0.111111
l.25726:	# 0.089764
	.word	0.089764
l.28616:	# 200.000000
	.word	200.000000
l.28620:	# -200.000000
	.word	-200.000000
l.27394:	# -150.000000
	.word	-150.000000
l.27211:	# 0.003906
	.word	0.003906
l.27239:	# -2.000000
	.word	-2.000000
l.25718:	# 0.333333
	.word	0.333333
l.25716:	# 0.437500
	.word	0.437500
l.25713:	# 2.437500
	.word	2.437500
l.25700:	# 0.000196
	.word	0.000196
l.25698:	# 0.008333
	.word	0.008333
l.25696:	# 0.166667
	.word	0.166667
l.25693:	# 4.000000
	.word	4.000000
l.28470:	# 128.000000
	.word	128.000000
l.28460:	# 0.785398
	.word	0.785398
l.28458:	# 1.570796
	.word	1.570796
l.28456:	# 6.283185
	.word	6.283185
l.28454:	# 3.141593
	.word	3.141593
l.28439:	# 1000000000.000000
	.word	1000000000.000000
l.28435:	# 255.000000
	.word	255.000000
l.27615:	# 150.000000
	.word	150.000000
int_of_float_rem.2522.17700:
	lw		x4, 4(x29)	# 129
	fadd	f2, f0, f16	# 129
	fle		x31, f2, f1	# 129
	beq		x31, x0, fle_else.31610	# 129
	fsub	f1, f1, f2	# 129
	sw		x4, 0(x2)	# 129
	sw		x1, -4(x2)	# 129
	addi	x2, x2, -8	# 129
	lw		x31, 0(x29)	# 129
	jalr	x1, x31, 0	# 129
	addi	x2, x2, 8	# 129
	lw		x1, -4(x2)	# 129
	lw		x5, 0(x2)	# 129
	add		x4, x4, x5	# 129
	jalr	x0, x1, 0	# 129
fle_else.31610:
	addi	x4, x0, 0	# 129
	jalr	x0, x1, 0	# 129
int_of_float.2524.17702:
	lw		x4, 8(x29)	# 131
	flw		f2, 4(x29)	# 131
	fle		x31, f2, f1	# 131
	beq		x31, x0, fle_else.31611	# 131
	fadd	f2, f0, f30	# 132
	fle		x31, f2, f1	# 132
	beq		x31, x0, fle_else.31612	# 132
	fsub	f1, f1, f2	# 132
	sw		x1, 0(x2)	# 132
	addi	x2, x2, -4	# 132
	lw		x31, 0(x29)	# 132
	jalr	x1, x31, 0	# 132
	addi	x2, x2, 4	# 132
	lw		x1, 0(x2)	# 132
	addi	x4, x4, 4	# 132
	jalr	x0, x1, 0	# 132
fle_else.31612:
	addi	x29, x4, 0
	lw		x31, 0(x29)	# 132
	jalr	x0, x31, 0	# 132
fle_else.31611:
	fsub	f1, f0, f1	# 133
	sw		x1, 0(x2)	# 133
	addi	x2, x2, -4	# 133
	lw		x31, 0(x29)	# 133
	jalr	x1, x31, 0	# 133
	addi	x2, x2, 4	# 133
	lw		x1, 0(x2)	# 133
	sub		x4, x0, x4	# 133
	jalr	x0, x1, 0	# 133
float_of_int.2526.17704:
	lw		x5, 12(x29)	# 135
	lw		x6, 8(x29)	# 135
	flw		f1, 4(x29)	# 135
	ble		x5, x4, ble.31613	# 135
	sub		x4, x0, x4	# 137
	sw		x1, 0(x2)	# 137
	addi	x2, x2, -4	# 137
	lw		x31, 0(x29)	# 137
	jalr	x1, x31, 0	# 137
	addi	x2, x2, 4	# 137
	lw		x1, 0(x2)	# 137
	fsub	f1, f0, f1	# 137
	jalr	x0, x1, 0	# 137
ble.31613:
	ble		x6, x4, ble.31614	# 136
	jalr	x0, x1, 0	# 136
ble.31614:
	sub		x4, x4, x6	# 136
	sw		x1, 0(x2)	# 136
	addi	x2, x2, -4	# 136
	lw		x31, 0(x29)	# 136
	jalr	x1, x31, 0	# 136
	addi	x2, x2, 4	# 136
	lw		x1, 0(x2)	# 136
	fadd	f2, f0, f16	# 136
	fadd	f1, f1, f2	# 136
	jalr	x0, x1, 0	# 136
sin.2538.17710:
	flw		f2, 20(x29)	# 167
	flw		f3, 16(x29)	# 167
	flw		f4, 12(x29)	# 167
	flw		f5, 8(x29)	# 167
	flw		f6, 4(x29)	# 167
	fle		x31, f6, f1	# 167
	beq		x31, x0, fle_else.31615	# 167
	fle		x31, f4, f1	# 168
	beq		x31, x0, fle_else.31616	# 168
	fsub	f1, f1, f4	# 168
	lw		x31, 0(x29)	# 168
	jalr	x0, x31, 0	# 168
fle_else.31616:
	fle		x31, f5, f1	# 169
	beq		x31, x0, fle_else.31617	# 169
	fsub	f1, f1, f5	# 169
	sw		x1, 0(x2)	# 169
	addi	x2, x2, -4	# 169
	lw		x31, 0(x29)	# 169
	jalr	x1, x31, 0	# 169
	addi	x2, x2, 4	# 169
	lw		x1, 0(x2)	# 169
	fsub	f1, f0, f1	# 169
	jalr	x0, x1, 0	# 169
fle_else.31617:
	fle		x31, f1, f3	# 170
	beq		x31, x0, fle_else.31618	# 170
	fle		x31, f2, f1	# 171
	beq		x31, x0, fle_else.31619	# 171
	fsub	f1, f3, f1	# 171
	fmul	f1, f1, f1	# 162
	fmul	f2, f1, f1	# 163
	fadd	f3, f0, f16	# 164
	fadd	f4, f0, f17	# 164
	fmul	f4, f4, f1	# 164
	fsub	f3, f3, f4	# 164
	lui		x4, %hi(l.25705)	# 164
	ori		x4, x0, %lo(l.25705)	# 164
	flw		f4, 0(x4)	# 164
	fmul	f4, f4, f2	# 164
	fadd	f3, f3, f4	# 164
	lui		x4, %hi(l.25707)	# 164
	ori		x4, x0, %lo(l.25707)	# 164
	flw		f4, 0(x4)	# 164
	fmul	f1, f4, f1	# 164
	fmul	f1, f1, f2	# 164
	fsub	f1, f3, f1	# 164
	jalr	x0, x1, 0	# 164
fle_else.31619:
	fmul	f2, f1, f1	# 157
	fmul	f3, f1, f2	# 158
	lui		x4, %hi(l.25696)	# 159
	ori		x4, x0, %lo(l.25696)	# 159
	flw		f4, 0(x4)	# 159
	fmul	f4, f4, f3	# 159
	fsub	f1, f1, f4	# 159
	lui		x4, %hi(l.25698)	# 159
	ori		x4, x0, %lo(l.25698)	# 159
	flw		f4, 0(x4)	# 159
	fmul	f4, f4, f2	# 159
	fmul	f4, f4, f3	# 159
	fadd	f1, f1, f4	# 159
	lui		x4, %hi(l.25700)	# 159
	ori		x4, x0, %lo(l.25700)	# 159
	flw		f4, 0(x4)	# 159
	fmul	f4, f4, f2	# 159
	fmul	f2, f4, f2	# 159
	fmul	f2, f2, f3	# 159
	fsub	f1, f1, f2	# 159
	jalr	x0, x1, 0	# 159
fle_else.31618:
	fsub	f1, f5, f1	# 170
	lw		x31, 0(x29)	# 170
	jalr	x0, x31, 0	# 170
fle_else.31615:
	fsub	f1, f0, f1	# 167
	sw		x1, 0(x2)	# 167
	addi	x2, x2, -4	# 167
	lw		x31, 0(x29)	# 167
	jalr	x1, x31, 0	# 167
	addi	x2, x2, 4	# 167
	lw		x1, 0(x2)	# 167
	fsub	f1, f0, f1	# 167
	jalr	x0, x1, 0	# 167
cos.2540.17712:
	lw		x4, 16(x29)	# 175
	flw		f2, 12(x29)	# 175
	flw		f3, 8(x29)	# 175
	flw		f4, 4(x29)	# 175
	fle		x31, f4, f1	# 175
	beq		x31, x0, fle_else.31620	# 175
	fle		x31, f1, f2	# 176
	beq		x31, x0, fle_else.31621	# 176
	fmul	f1, f1, f1	# 162
	fmul	f2, f1, f1	# 163
	fadd	f3, f0, f16	# 164
	fadd	f4, f0, f17	# 164
	fmul	f4, f4, f1	# 164
	fsub	f3, f3, f4	# 164
	lui		x4, %hi(l.25705)	# 164
	ori		x4, x0, %lo(l.25705)	# 164
	flw		f4, 0(x4)	# 164
	fmul	f4, f4, f2	# 164
	fadd	f3, f3, f4	# 164
	lui		x4, %hi(l.25707)	# 164
	ori		x4, x0, %lo(l.25707)	# 164
	flw		f4, 0(x4)	# 164
	fmul	f1, f4, f1	# 164
	fmul	f1, f1, f2	# 164
	fsub	f1, f3, f1	# 164
	jalr	x0, x1, 0	# 164
fle_else.31621:
	fsub	f1, f3, f1	# 176
	addi	x29, x4, 0
	lw		x31, 0(x29)	# 176
	jalr	x0, x31, 0	# 176
fle_else.31620:
	fsub	f1, f0, f1	# 175
	lw		x31, 0(x29)	# 175
	jalr	x0, x31, 0	# 175
atan.2542.17714:
	flw		f2, 12(x29)	# 180
	flw		f3, 8(x29)	# 180
	flw		f4, 4(x29)	# 180
	fle		x31, f4, f1	# 180
	beq		x31, x0, fle_else.31622	# 180
	lui		x4, %hi(l.25713)	# 181
	ori		x4, x0, %lo(l.25713)	# 181
	flw		f4, 0(x4)	# 181
	fle		x31, f1, f4	# 181
	beq		x31, x0, fle_else.31623	# 181
	lui		x4, %hi(l.25716)	# 182
	ori		x4, x0, %lo(l.25716)	# 182
	flw		f3, 0(x4)	# 182
	fle		x31, f3, f1	# 182
	beq		x31, x0, fle_else.31624	# 182
	fadd	f3, f0, f16	# 182
	fsub	f4, f1, f3	# 182
	fadd	f1, f1, f3	# 182
	fdiv	f1, f4, f1	# 182
	fsw		f2, 0(x2)	# 182
	sw		x1, -4(x2)	# 182
	addi	x2, x2, -8	# 182
	lw		x31, 0(x29)	# 182
	jalr	x1, x31, 0	# 182
	addi	x2, x2, 8	# 182
	lw		x1, -4(x2)	# 182
	flw		f2, 0(x2)	# 182
	fadd	f1, f2, f1	# 182
	jalr	x0, x1, 0	# 182
fle_else.31624:
	fmul	f2, f1, f1	# 184
	fmul	f3, f1, f2	# 185
	fmul	f4, f2, f2	# 186
	lui		x4, %hi(l.25718)	# 187
	ori		x4, x0, %lo(l.25718)	# 187
	flw		f5, 0(x4)	# 187
	fmul	f5, f5, f3	# 187
	fsub	f1, f1, f5	# 187
	lui		x4, %hi(l.25720)	# 187
	ori		x4, x0, %lo(l.25720)	# 187
	flw		f5, 0(x4)	# 187
	fmul	f5, f5, f2	# 187
	fmul	f5, f5, f3	# 187
	fadd	f1, f1, f5	# 187
	lui		x4, %hi(l.25722)	# 187
	ori		x4, x0, %lo(l.25722)	# 187
	flw		f5, 0(x4)	# 187
	fmul	f5, f5, f4	# 187
	fmul	f5, f5, f3	# 187
	fsub	f1, f1, f5	# 187
	lui		x4, %hi(l.25724)	# 188
	ori		x4, x0, %lo(l.25724)	# 188
	flw		f5, 0(x4)	# 188
	fmul	f2, f5, f2	# 188
	fmul	f2, f2, f4	# 188
	fmul	f2, f2, f3	# 188
	fadd	f1, f1, f2	# 187
	lui		x4, %hi(l.25726)	# 188
	ori		x4, x0, %lo(l.25726)	# 188
	flw		f2, 0(x4)	# 188
	fmul	f2, f2, f4	# 188
	fmul	f2, f2, f4	# 188
	fmul	f2, f2, f3	# 188
	fsub	f1, f1, f2	# 187
	jalr	x0, x1, 0	# 187
fle_else.31623:
	fadd	f2, f0, f16	# 181
	fdiv	f1, f2, f1	# 181
	fsw		f3, -4(x2)	# 181
	sw		x1, -8(x2)	# 181
	addi	x2, x2, -12	# 181
	lw		x31, 0(x29)	# 181
	jalr	x1, x31, 0	# 181
	addi	x2, x2, 12	# 181
	lw		x1, -8(x2)	# 181
	flw		f2, -4(x2)	# 181
	fsub	f1, f2, f1	# 181
	jalr	x0, x1, 0	# 181
fle_else.31622:
	fsub	f1, f0, f1	# 180
	sw		x1, -8(x2)	# 180
	addi	x2, x2, -12	# 180
	lw		x31, 0(x29)	# 180
	jalr	x1, x31, 0	# 180
	addi	x2, x2, 12	# 180
	lw		x1, -8(x2)	# 180
	fsub	f1, f0, f1	# 180
	jalr	x0, x1, 0	# 180
read_object.2679.17716:
	lw		x5, 32(x29)	# 863
	lw		x6, 28(x29)	# 863
	lw		x7, 24(x29)	# 863
	lw		x8, 20(x29)	# 863
	lw		x9, 16(x29)	# 863
	lw		x10, 12(x29)	# 863
	lw		x11, 8(x29)	# 863
	flw		f1, 4(x29)	# 863
	ble		x9, x4, ble.31625	# 863
	sw		x29, 0(x2)	# 781
	sw		x5, -4(x2)	# 781
	sw		x6, -8(x2)	# 781
	sw		x7, -12(x2)	# 781
	sw		x11, -16(x2)	# 781
	sw		x10, -20(x2)	# 781
	sw		x4, -24(x2)	# 781
	fsw		f1, -28(x2)	# 781
	sw		x8, -32(x2)	# 781
	sw		x1, -36(x2)	# 781
	addi	x2, x2, -40	# 781
	jal		x1, min_caml_read_int	# 781
	addi	x2, x2, 40	# 781
	lw		x1, -36(x2)	# 781
	lw		x5, -32(x2)	# 782
	beq		x4, x5, beq.31627	# 782
	sw		x4, -36(x2)	# 784
	sw		x1, -40(x2)	# 784
	addi	x2, x2, -44	# 784
	jal		x1, min_caml_read_int	# 784
	addi	x2, x2, 44	# 784
	lw		x1, -40(x2)	# 784
	sw		x4, -40(x2)	# 785
	sw		x1, -44(x2)	# 785
	addi	x2, x2, -48	# 785
	jal		x1, min_caml_read_int	# 785
	addi	x2, x2, 48	# 785
	lw		x1, -44(x2)	# 785
	sw		x4, -44(x2)	# 786
	sw		x1, -48(x2)	# 786
	addi	x2, x2, -52	# 786
	jal		x1, min_caml_read_int	# 786
	addi	x2, x2, 52	# 786
	lw		x1, -48(x2)	# 786
	addi	x5, x0, 3	# 788
	fadd	f1, f0, f0	# 788
	sw		x4, -48(x2)	# 788
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 788
	addi	x2, x2, -56	# 788
	jal		x1, min_caml_create_float_array	# 788
	addi	x2, x2, 56	# 788
	lw		x1, -52(x2)	# 788
	addi	x5, x0, 0	# 789
	sw		x4, -52(x2)	# 789
	sw		x5, -56(x2)	# 789
	sw		x1, -60(x2)	# 789
	addi	x2, x2, -64	# 789
	jal		x1, min_caml_read_float	# 789
	addi	x2, x2, 64	# 789
	lw		x1, -60(x2)	# 789
	lw		x4, -56(x2)	# 789
	mul		x4, x30, x4	# 789
	lw		x5, -52(x2)	# 789
	add		x4, x5, x4	# 789
	fsw		f1, 0(x4)	# 789
	addi	x4, x0, 1	# 790
	sw		x4, -60(x2)	# 790
	sw		x1, -64(x2)	# 790
	addi	x2, x2, -68	# 790
	jal		x1, min_caml_read_float	# 790
	addi	x2, x2, 68	# 790
	lw		x1, -64(x2)	# 790
	lw		x4, -60(x2)	# 790
	mul		x4, x30, x4	# 790
	lw		x5, -52(x2)	# 790
	add		x4, x5, x4	# 790
	fsw		f1, 0(x4)	# 790
	addi	x4, x0, 2	# 791
	sw		x4, -64(x2)	# 791
	sw		x1, -68(x2)	# 791
	addi	x2, x2, -72	# 791
	jal		x1, min_caml_read_float	# 791
	addi	x2, x2, 72	# 791
	lw		x1, -68(x2)	# 791
	lw		x4, -64(x2)	# 791
	mul		x4, x30, x4	# 791
	lw		x5, -52(x2)	# 791
	add		x4, x5, x4	# 791
	fsw		f1, 0(x4)	# 791
	addi	x4, x0, 3	# 793
	fadd	f1, f0, f0	# 793
	sw		x1, -68(x2)	# 793
	addi	x2, x2, -72	# 793
	jal		x1, min_caml_create_float_array	# 793
	addi	x2, x2, 72	# 793
	lw		x1, -68(x2)	# 793
	addi	x5, x0, 0	# 794
	sw		x4, -68(x2)	# 794
	sw		x5, -72(x2)	# 794
	sw		x1, -76(x2)	# 794
	addi	x2, x2, -80	# 794
	jal		x1, min_caml_read_float	# 794
	addi	x2, x2, 80	# 794
	lw		x1, -76(x2)	# 794
	lw		x4, -72(x2)	# 794
	mul		x4, x30, x4	# 794
	lw		x5, -68(x2)	# 794
	add		x4, x5, x4	# 794
	fsw		f1, 0(x4)	# 794
	addi	x4, x0, 1	# 795
	sw		x4, -76(x2)	# 795
	sw		x1, -80(x2)	# 795
	addi	x2, x2, -84	# 795
	jal		x1, min_caml_read_float	# 795
	addi	x2, x2, 84	# 795
	lw		x1, -80(x2)	# 795
	lw		x4, -76(x2)	# 795
	mul		x4, x30, x4	# 795
	lw		x5, -68(x2)	# 795
	add		x4, x5, x4	# 795
	fsw		f1, 0(x4)	# 795
	addi	x4, x0, 2	# 796
	sw		x4, -80(x2)	# 796
	sw		x1, -84(x2)	# 796
	addi	x2, x2, -88	# 796
	jal		x1, min_caml_read_float	# 796
	addi	x2, x2, 88	# 796
	lw		x1, -84(x2)	# 796
	lw		x4, -80(x2)	# 796
	mul		x4, x30, x4	# 796
	lw		x5, -68(x2)	# 796
	add		x4, x5, x4	# 796
	fsw		f1, 0(x4)	# 796
	sw		x1, -84(x2)	# 798
	addi	x2, x2, -88	# 798
	jal		x1, min_caml_read_float	# 798
	addi	x2, x2, 88	# 798
	lw		x1, -84(x2)	# 798
	flw		f2, -28(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31629	# 122
	addi	x4, x0, 0	# 122
	jal		x0, fle_cont.31628	# 122
fle_else.31629:
	addi	x4, x0, 1	# 122
fle_cont.31628:
	addi	x5, x0, 2	# 800
	fadd	f3, f0, f0	# 800
	fsw		f1, -84(x2)	# 800
	sw		x4, -88(x2)	# 800
	addi	x4, x5, 0
	fadd	f1, f0, f3
	sw		x1, -92(x2)	# 800
	addi	x2, x2, -96	# 800
	jal		x1, min_caml_create_float_array	# 800
	addi	x2, x2, 96	# 800
	lw		x1, -92(x2)	# 800
	addi	x5, x0, 0	# 801
	sw		x4, -92(x2)	# 801
	sw		x5, -96(x2)	# 801
	sw		x1, -100(x2)	# 801
	addi	x2, x2, -104	# 801
	jal		x1, min_caml_read_float	# 801
	addi	x2, x2, 104	# 801
	lw		x1, -100(x2)	# 801
	lw		x4, -96(x2)	# 801
	mul		x4, x30, x4	# 801
	lw		x5, -92(x2)	# 801
	add		x4, x5, x4	# 801
	fsw		f1, 0(x4)	# 801
	addi	x4, x0, 1	# 802
	sw		x4, -100(x2)	# 802
	sw		x1, -104(x2)	# 802
	addi	x2, x2, -108	# 802
	jal		x1, min_caml_read_float	# 802
	addi	x2, x2, 108	# 802
	lw		x1, -104(x2)	# 802
	lw		x4, -100(x2)	# 802
	mul		x4, x30, x4	# 802
	lw		x5, -92(x2)	# 802
	add		x4, x5, x4	# 802
	fsw		f1, 0(x4)	# 802
	addi	x4, x0, 3	# 804
	fadd	f1, f0, f0	# 804
	sw		x1, -104(x2)	# 804
	addi	x2, x2, -108	# 804
	jal		x1, min_caml_create_float_array	# 804
	addi	x2, x2, 108	# 804
	lw		x1, -104(x2)	# 804
	addi	x5, x0, 0	# 805
	sw		x4, -104(x2)	# 805
	sw		x5, -108(x2)	# 805
	sw		x1, -112(x2)	# 805
	addi	x2, x2, -116	# 805
	jal		x1, min_caml_read_float	# 805
	addi	x2, x2, 116	# 805
	lw		x1, -112(x2)	# 805
	lw		x4, -108(x2)	# 805
	mul		x4, x30, x4	# 805
	lw		x5, -104(x2)	# 805
	add		x4, x5, x4	# 805
	fsw		f1, 0(x4)	# 805
	addi	x4, x0, 1	# 806
	sw		x4, -112(x2)	# 806
	sw		x1, -116(x2)	# 806
	addi	x2, x2, -120	# 806
	jal		x1, min_caml_read_float	# 806
	addi	x2, x2, 120	# 806
	lw		x1, -116(x2)	# 806
	lw		x4, -112(x2)	# 806
	mul		x4, x30, x4	# 806
	lw		x5, -104(x2)	# 806
	add		x4, x5, x4	# 806
	fsw		f1, 0(x4)	# 806
	addi	x4, x0, 2	# 807
	sw		x4, -116(x2)	# 807
	sw		x1, -120(x2)	# 807
	addi	x2, x2, -124	# 807
	jal		x1, min_caml_read_float	# 807
	addi	x2, x2, 124	# 807
	lw		x1, -120(x2)	# 807
	lw		x4, -116(x2)	# 807
	mul		x4, x30, x4	# 807
	lw		x5, -104(x2)	# 807
	add		x4, x5, x4	# 807
	fsw		f1, 0(x4)	# 807
	addi	x4, x0, 3	# 809
	fadd	f1, f0, f0	# 809
	sw		x1, -120(x2)	# 809
	addi	x2, x2, -124	# 809
	jal		x1, min_caml_create_float_array	# 809
	addi	x2, x2, 124	# 809
	lw		x1, -120(x2)	# 809
	addi	x5, x0, 0	# 810
	lw		x6, -48(x2)	# 810
	sw		x4, -120(x2)	# 810
	beq		x6, x5, beq_cont.31630	# 810
	addi	x5, x0, 0	# 812
	sw		x5, -124(x2)	# 812
	sw		x1, -128(x2)	# 812
	addi	x2, x2, -132	# 812
	jal		x1, min_caml_read_float	# 812
	addi	x2, x2, 132	# 812
	lw		x1, -128(x2)	# 812
	fadd	f2, f0, f24	# 679
	fmul	f1, f1, f2	# 679
	lw		x4, -124(x2)	# 812
	mul		x4, x30, x4	# 812
	lw		x5, -120(x2)	# 812
	add		x4, x5, x4	# 812
	fsw		f1, 0(x4)	# 812
	addi	x4, x0, 1	# 813
	sw		x4, -128(x2)	# 813
	sw		x1, -132(x2)	# 813
	addi	x2, x2, -136	# 813
	jal		x1, min_caml_read_float	# 813
	addi	x2, x2, 136	# 813
	lw		x1, -132(x2)	# 813
	fadd	f2, f0, f24	# 679
	fmul	f1, f1, f2	# 679
	lw		x4, -128(x2)	# 813
	mul		x4, x30, x4	# 813
	lw		x5, -120(x2)	# 813
	add		x4, x5, x4	# 813
	fsw		f1, 0(x4)	# 813
	addi	x4, x0, 2	# 814
	sw		x4, -132(x2)	# 814
	sw		x1, -136(x2)	# 814
	addi	x2, x2, -140	# 814
	jal		x1, min_caml_read_float	# 814
	addi	x2, x2, 140	# 814
	lw		x1, -136(x2)	# 814
	fadd	f2, f0, f24	# 679
	fmul	f1, f1, f2	# 679
	lw		x4, -132(x2)	# 814
	mul		x4, x30, x4	# 814
	lw		x5, -120(x2)	# 814
	add		x4, x5, x4	# 814
	fsw		f1, 0(x4)	# 814
beq_cont.31630:
	addi	x4, x0, 2	# 821
	lw		x5, -40(x2)	# 821
	beq		x5, x4, beq.31632	# 821
	lw		x4, -88(x2)	# 821
	jal		x0, beq_cont.31631	# 821
beq.31632:
	addi	x4, x0, 1	# 821
beq_cont.31631:
	addi	x6, x0, 4	# 822
	fadd	f1, f0, f0	# 822
	sw		x4, -136(x2)	# 822
	addi	x4, x6, 0
	sw		x1, -140(x2)	# 822
	addi	x2, x2, -144	# 822
	jal		x1, min_caml_create_float_array	# 822
	addi	x2, x2, 144	# 822
	lw		x1, -140(x2)	# 822
	addi	x5, x3, 0	# 825
	addi	x3, x3, 44	# 825
	sw		x4, 40(x5)	# 825
	lw		x4, -120(x2)	# 825
	sw		x4, 36(x5)	# 825
	lw		x6, -104(x2)	# 825
	sw		x6, 32(x5)	# 825
	lw		x6, -92(x2)	# 825
	sw		x6, 28(x5)	# 825
	lw		x6, -136(x2)	# 825
	sw		x6, 24(x5)	# 825
	lw		x6, -68(x2)	# 825
	sw		x6, 20(x5)	# 825
	lw		x6, -52(x2)	# 825
	sw		x6, 16(x5)	# 825
	lw		x7, -48(x2)	# 825
	sw		x7, 12(x5)	# 825
	lw		x8, -44(x2)	# 825
	sw		x8, 8(x5)	# 825
	lw		x8, -40(x2)	# 825
	sw		x8, 4(x5)	# 825
	lw		x9, -36(x2)	# 825
	sw		x9, 0(x5)	# 825
	lw		x9, -24(x2)	# 833
	mul		x10, x30, x9	# 833
	addi	x10, x10, 60048	# 833
	sw		x5, 0(x10)	# 833
	addi	x5, x0, 3	# 835
	beq		x8, x5, beq.31634	# 835
	addi	x5, x0, 2	# 845
	beq		x8, x5, beq.31636	# 845
	jal		x0, beq_cont.31635	# 845
beq.31636:
	lw		x5, -20(x2)	# 285
	mul		x8, x30, x5	# 285
	add		x8, x6, x8	# 285
	flw		f1, 0(x8)	# 285
	fmul	f1, f1, f1	# 127
	lw		x8, -16(x2)	# 285
	mul		x10, x30, x8	# 285
	add		x10, x6, x10	# 285
	flw		f2, 0(x10)	# 285
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 285
	lw		x10, -12(x2)	# 285
	mul		x11, x30, x10	# 285
	add		x11, x6, x11	# 285
	flw		f2, 0(x11)	# 285
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 285
	fsqrt	f1, f1	# 285
	flw		f2, -28(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31638	# 120
	fadd	f1, f0, f16	# 286
	jal		x0, feq_cont.31637	# 120
feq_else.31638:
	flw		f3, -84(x2)	# 122
	fle		x31, f2, f3	# 122
	beq		x31, x0, fle_else.31640	# 122
	fadd	f2, f0, f18	# 286
	fdiv	f1, f2, f1	# 286
	jal		x0, fle_cont.31639	# 122
fle_else.31640:
	fadd	f2, f0, f16	# 286
	fdiv	f1, f2, f1	# 286
fle_cont.31639:
feq_cont.31637:
	mul		x11, x30, x5	# 287
	add		x11, x6, x11	# 287
	flw		f2, 0(x11)	# 287
	fmul	f2, f2, f1	# 287
	mul		x11, x30, x5	# 287
	add		x11, x6, x11	# 287
	fsw		f2, 0(x11)	# 287
	mul		x11, x30, x8	# 288
	add		x11, x6, x11	# 288
	flw		f2, 0(x11)	# 288
	fmul	f2, f2, f1	# 288
	mul		x11, x30, x8	# 288
	add		x11, x6, x11	# 288
	fsw		f2, 0(x11)	# 288
	mul		x11, x30, x10	# 289
	add		x11, x6, x11	# 289
	flw		f2, 0(x11)	# 289
	fmul	f1, f2, f1	# 289
	mul		x11, x30, x10	# 289
	add		x11, x6, x11	# 289
	fsw		f1, 0(x11)	# 289
beq_cont.31635:
	jal		x0, beq_cont.31633	# 835
beq.31634:
	addi	x5, x0, 0	# 838
	mul		x5, x30, x5	# 838
	add		x5, x6, x5	# 838
	flw		f1, 0(x5)	# 838
	addi	x5, x0, 0	# 839
	flw		f2, -28(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31642	# 120
	fadd	f1, f0, f0	# 839
	jal		x0, feq_cont.31641	# 120
feq_else.31642:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31644	# 120
	fadd	f3, f0, f2	# 214
	jal		x0, feq_cont.31643	# 120
feq_else.31644:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.31646	# 121
	fadd	f3, f0, f18	# 216
	jal		x0, fle_cont.31645	# 121
fle_else.31646:
	fadd	f3, f0, f16	# 215
fle_cont.31645:
feq_cont.31643:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 839
feq_cont.31641:
	mul		x5, x30, x5	# 839
	add		x5, x6, x5	# 839
	fsw		f1, 0(x5)	# 839
	addi	x5, x0, 1	# 840
	mul		x5, x30, x5	# 840
	add		x5, x6, x5	# 840
	flw		f1, 0(x5)	# 840
	addi	x5, x0, 1	# 841
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31648	# 120
	fadd	f1, f0, f0	# 841
	jal		x0, feq_cont.31647	# 120
feq_else.31648:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31650	# 120
	fadd	f3, f0, f2	# 214
	jal		x0, feq_cont.31649	# 120
feq_else.31650:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.31652	# 121
	fadd	f3, f0, f18	# 216
	jal		x0, fle_cont.31651	# 121
fle_else.31652:
	fadd	f3, f0, f16	# 215
fle_cont.31651:
feq_cont.31649:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f3, f1	# 841
feq_cont.31647:
	mul		x5, x30, x5	# 841
	add		x5, x6, x5	# 841
	fsw		f1, 0(x5)	# 841
	addi	x5, x0, 2	# 842
	mul		x5, x30, x5	# 842
	add		x5, x6, x5	# 842
	flw		f1, 0(x5)	# 842
	addi	x5, x0, 2	# 843
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31654	# 120
	fadd	f1, f0, f0	# 843
	jal		x0, feq_cont.31653	# 120
feq_else.31654:
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31656	# 120
	jal		x0, feq_cont.31655	# 120
feq_else.31656:
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.31658	# 121
	fadd	f2, f0, f18	# 216
	jal		x0, fle_cont.31657	# 121
fle_else.31658:
	fadd	f2, f0, f16	# 215
fle_cont.31657:
feq_cont.31655:
	fmul	f1, f1, f1	# 127
	fdiv	f1, f2, f1	# 843
feq_cont.31653:
	mul		x5, x30, x5	# 843
	add		x5, x6, x5	# 843
	fsw		f1, 0(x5)	# 843
beq_cont.31633:
	addi	x5, x0, 0	# 851
	beq		x7, x5, beq_cont.31659	# 851
	lw		x5, -20(x2)	# 740
	mul		x7, x30, x5	# 740
	add		x7, x4, x7	# 740
	flw		f1, 0(x7)	# 740
	lw		x29, -8(x2)	# 740
	sw		x1, -140(x2)	# 740
	addi	x2, x2, -144	# 740
	lw		x31, 0(x29)	# 740
	jalr	x1, x31, 0	# 740
	addi	x2, x2, 144	# 740
	lw		x1, -140(x2)	# 740
	lw		x4, -20(x2)	# 741
	mul		x5, x30, x4	# 741
	lw		x6, -120(x2)	# 741
	add		x5, x6, x5	# 741
	flw		f2, 0(x5)	# 741
	lw		x29, -4(x2)	# 741
	fsw		f1, -140(x2)	# 741
	fadd	f1, f0, f2
	sw		x1, -144(x2)	# 741
	addi	x2, x2, -148	# 741
	lw		x31, 0(x29)	# 741
	jalr	x1, x31, 0	# 741
	addi	x2, x2, 148	# 741
	lw		x1, -144(x2)	# 741
	lw		x4, -16(x2)	# 742
	mul		x5, x30, x4	# 742
	lw		x6, -120(x2)	# 742
	add		x5, x6, x5	# 742
	flw		f2, 0(x5)	# 742
	lw		x29, -8(x2)	# 742
	fsw		f1, -144(x2)	# 742
	fadd	f1, f0, f2
	sw		x1, -148(x2)	# 742
	addi	x2, x2, -152	# 742
	lw		x31, 0(x29)	# 742
	jalr	x1, x31, 0	# 742
	addi	x2, x2, 152	# 742
	lw		x1, -148(x2)	# 742
	lw		x4, -16(x2)	# 743
	mul		x5, x30, x4	# 743
	lw		x6, -120(x2)	# 743
	add		x5, x6, x5	# 743
	flw		f2, 0(x5)	# 743
	lw		x29, -4(x2)	# 743
	fsw		f1, -148(x2)	# 743
	fadd	f1, f0, f2
	sw		x1, -152(x2)	# 743
	addi	x2, x2, -156	# 743
	lw		x31, 0(x29)	# 743
	jalr	x1, x31, 0	# 743
	addi	x2, x2, 156	# 743
	lw		x1, -152(x2)	# 743
	lw		x4, -12(x2)	# 744
	mul		x5, x30, x4	# 744
	lw		x6, -120(x2)	# 744
	add		x5, x6, x5	# 744
	flw		f2, 0(x5)	# 744
	lw		x29, -8(x2)	# 744
	fsw		f1, -152(x2)	# 744
	fadd	f1, f0, f2
	sw		x1, -156(x2)	# 744
	addi	x2, x2, -160	# 744
	lw		x31, 0(x29)	# 744
	jalr	x1, x31, 0	# 744
	addi	x2, x2, 160	# 744
	lw		x1, -156(x2)	# 744
	lw		x4, -12(x2)	# 745
	mul		x5, x30, x4	# 745
	lw		x6, -120(x2)	# 745
	add		x5, x6, x5	# 745
	flw		f2, 0(x5)	# 745
	lw		x29, -4(x2)	# 745
	fsw		f1, -156(x2)	# 745
	fadd	f1, f0, f2
	sw		x1, -160(x2)	# 745
	addi	x2, x2, -164	# 745
	lw		x31, 0(x29)	# 745
	jalr	x1, x31, 0	# 745
	addi	x2, x2, 164	# 745
	lw		x1, -160(x2)	# 745
	flw		f2, -156(x2)	# 747
	flw		f3, -148(x2)	# 747
	fmul	f4, f3, f2	# 747
	flw		f5, -152(x2)	# 748
	flw		f6, -144(x2)	# 748
	fmul	f7, f6, f5	# 748
	fmul	f8, f7, f2	# 748
	flw		f9, -140(x2)	# 748
	fmul	f10, f9, f1	# 748
	fsub	f8, f8, f10	# 748
	fmul	f10, f9, f5	# 749
	fmul	f11, f10, f2	# 749
	fmul	f12, f6, f1	# 749
	fadd	f11, f11, f12	# 749
	fmul	f12, f3, f1	# 751
	fmul	f7, f7, f1	# 752
	fmul	f13, f9, f2	# 752
	fadd	f7, f7, f13	# 752
	fmul	f1, f10, f1	# 753
	fmul	f2, f6, f2	# 753
	fsub	f1, f1, f2	# 753
	fsub	f2, f0, f5	# 123
	fmul	f5, f6, f3	# 756
	fmul	f3, f9, f3	# 757
	lw		x4, -20(x2)	# 760
	mul		x5, x30, x4	# 760
	lw		x6, -52(x2)	# 760
	add		x5, x6, x5	# 760
	flw		f6, 0(x5)	# 760
	lw		x5, -16(x2)	# 761
	mul		x7, x30, x5	# 761
	add		x7, x6, x7	# 761
	flw		f9, 0(x7)	# 761
	lw		x7, -12(x2)	# 762
	mul		x8, x30, x7	# 762
	add		x8, x6, x8	# 762
	flw		f10, 0(x8)	# 762
	fmul	f13, f4, f4	# 127
	fmul	f13, f6, f13	# 767
	fmul	f14, f12, f12	# 127
	fmul	f14, f9, f14	# 767
	fadd	f13, f13, f14	# 767
	fmul	f14, f2, f2	# 127
	fmul	f14, f10, f14	# 767
	fadd	f13, f13, f14	# 767
	mul		x8, x30, x4	# 767
	add		x8, x6, x8	# 767
	fsw		f13, 0(x8)	# 767
	fmul	f13, f8, f8	# 127
	fmul	f13, f6, f13	# 768
	fmul	f14, f7, f7	# 127
	fmul	f14, f9, f14	# 768
	fadd	f13, f13, f14	# 768
	fmul	f14, f5, f5	# 127
	fmul	f14, f10, f14	# 768
	fadd	f13, f13, f14	# 768
	mul		x8, x30, x5	# 768
	add		x8, x6, x8	# 768
	fsw		f13, 0(x8)	# 768
	fmul	f13, f11, f11	# 127
	fmul	f13, f6, f13	# 769
	fmul	f14, f1, f1	# 127
	fmul	f14, f9, f14	# 769
	fadd	f13, f13, f14	# 769
	fmul	f14, f3, f3	# 127
	fmul	f14, f10, f14	# 769
	fadd	f13, f13, f14	# 769
	mul		x8, x30, x7	# 769
	add		x6, x6, x8	# 769
	fsw		f13, 0(x6)	# 769
	lui		x6, %hi(l.25849)	# 772
	ori		x6, x0, %lo(l.25849)	# 772
	flw		f13, 0(x6)	# 772
	fmul	f14, f6, f8	# 772
	fmul	f14, f14, f11	# 772
	fmul	f15, f9, f7	# 772
	fmul	f15, f15, f1	# 772
	fadd	f14, f14, f15	# 772
	fmul	f15, f10, f5	# 772
	fmul	f15, f15, f3	# 772
	fadd	f14, f14, f15	# 772
	fmul	f14, f13, f14	# 772
	mul		x6, x30, x4	# 772
	lw		x8, -120(x2)	# 772
	add		x6, x8, x6	# 772
	fsw		f14, 0(x6)	# 772
	fmul	f4, f6, f4	# 773
	fmul	f6, f4, f11	# 773
	fmul	f9, f9, f12	# 773
	fmul	f1, f9, f1	# 773
	fadd	f1, f6, f1	# 773
	fmul	f2, f10, f2	# 773
	fmul	f3, f2, f3	# 773
	fadd	f1, f1, f3	# 773
	fmul	f1, f13, f1	# 773
	mul		x6, x30, x5	# 773
	add		x6, x8, x6	# 773
	fsw		f1, 0(x6)	# 773
	fmul	f1, f4, f8	# 774
	fmul	f3, f9, f7	# 774
	fadd	f1, f1, f3	# 774
	fmul	f2, f2, f5	# 774
	fadd	f1, f1, f2	# 774
	fmul	f1, f13, f1	# 774
	mul		x6, x30, x7	# 774
	add		x6, x8, x6	# 774
	fsw		f1, 0(x6)	# 774
beq_cont.31659:
	addi	x4, x0, 1	# 855
	jal		x0, beq_cont.31626	# 782
beq.31627:
	addi	x4, x0, 0	# 858
beq_cont.31626:
	lw		x5, -20(x2)	# 864
	beq		x4, x5, beq.31660	# 864
	lw		x4, -16(x2)	# 865
	lw		x5, -24(x2)	# 865
	add		x4, x5, x4	# 865
	lw		x29, 0(x2)	# 865
	lw		x31, 0(x29)	# 865
	jalr	x0, x31, 0	# 865
beq.31660:
	mul		x4, x30, x5	# 867
	addi	x4, x4, 60000	# 867
	lw		x5, -24(x2)	# 867
	sw		x5, 0(x4)	# 867
	jalr	x0, x1, 0	# 867
ble.31625:
	jalr	x0, x1, 0	# 868
read_net_item.2683.17718:
	lw		x5, 8(x29)	# 879
	lw		x6, 4(x29)	# 879
	sw		x29, 0(x2)	# 879
	sw		x6, -4(x2)	# 879
	sw		x4, -8(x2)	# 879
	sw		x5, -12(x2)	# 879
	sw		x1, -16(x2)	# 879
	addi	x2, x2, -20	# 879
	jal		x1, min_caml_read_int	# 879
	addi	x2, x2, 20	# 879
	lw		x1, -16(x2)	# 879
	lw		x5, -12(x2)	# 880
	beq		x4, x5, beq.31663	# 880
	lw		x5, -4(x2)	# 882
	lw		x6, -8(x2)	# 882
	add		x5, x6, x5	# 882
	lw		x29, 0(x2)	# 882
	sw		x4, -16(x2)	# 882
	addi	x4, x5, 0
	sw		x1, -20(x2)	# 882
	addi	x2, x2, -24	# 882
	lw		x31, 0(x29)	# 882
	jalr	x1, x31, 0	# 882
	addi	x2, x2, 24	# 882
	lw		x1, -20(x2)	# 882
	lw		x5, -8(x2)	# 883
	mul		x5, x30, x5	# 883
	add		x5, x4, x5	# 883
	lw		x6, -16(x2)	# 883
	sw		x6, 0(x5)	# 883
	jalr	x0, x1, 0	# 883
beq.31663:
	lw		x4, -4(x2)	# 880
	lw		x6, -8(x2)	# 880
	add		x4, x6, x4	# 880
	jal		x0, min_caml_create_array	# 880
read_or_network.2685.17720:
	lw		x5, 16(x29)	# 887
	lw		x6, 12(x29)	# 887
	lw		x7, 8(x29)	# 887
	lw		x8, 4(x29)	# 887
	sw		x29, 0(x2)	# 887
	sw		x8, -4(x2)	# 887
	sw		x4, -8(x2)	# 887
	sw		x6, -12(x2)	# 887
	sw		x7, -16(x2)	# 887
	addi	x4, x7, 0
	addi	x29, x5, 0
	sw		x1, -20(x2)	# 887
	addi	x2, x2, -24	# 887
	lw		x31, 0(x29)	# 887
	jalr	x1, x31, 0	# 887
	addi	x2, x2, 24	# 887
	lw		x1, -20(x2)	# 887
	addi	x5, x4, 0	# 887
	lw		x4, -16(x2)	# 888
	mul		x4, x30, x4	# 888
	add		x4, x5, x4	# 888
	lw		x4, 0(x4)	# 888
	lw		x6, -12(x2)	# 888
	beq		x4, x6, beq.31664	# 888
	lw		x4, -4(x2)	# 891
	lw		x6, -8(x2)	# 891
	add		x4, x6, x4	# 891
	lw		x29, 0(x2)	# 891
	sw		x5, -20(x2)	# 891
	sw		x1, -24(x2)	# 891
	addi	x2, x2, -28	# 891
	lw		x31, 0(x29)	# 891
	jalr	x1, x31, 0	# 891
	addi	x2, x2, 28	# 891
	lw		x1, -24(x2)	# 891
	lw		x5, -8(x2)	# 892
	mul		x5, x30, x5	# 892
	add		x5, x4, x5	# 892
	lw		x6, -20(x2)	# 892
	sw		x6, 0(x5)	# 892
	jalr	x0, x1, 0	# 892
beq.31664:
	lw		x4, -4(x2)	# 889
	lw		x6, -8(x2)	# 889
	add		x4, x6, x4	# 889
	jal		x0, min_caml_create_array	# 889
read_and_network.2687.17722:
	lw		x5, 16(x29)	# 896
	lw		x6, 12(x29)	# 896
	lw		x7, 8(x29)	# 896
	lw		x8, 4(x29)	# 896
	sw		x29, 0(x2)	# 896
	sw		x8, -4(x2)	# 896
	sw		x4, -8(x2)	# 896
	sw		x6, -12(x2)	# 896
	sw		x7, -16(x2)	# 896
	addi	x4, x7, 0
	addi	x29, x5, 0
	sw		x1, -20(x2)	# 896
	addi	x2, x2, -24	# 896
	lw		x31, 0(x29)	# 896
	jalr	x1, x31, 0	# 896
	addi	x2, x2, 24	# 896
	lw		x1, -20(x2)	# 896
	lw		x5, -16(x2)	# 897
	mul		x5, x30, x5	# 897
	add		x5, x4, x5	# 897
	lw		x5, 0(x5)	# 897
	lw		x6, -12(x2)	# 897
	beq		x5, x6, beq.31665	# 897
	lw		x5, -8(x2)	# 899
	mul		x6, x30, x5	# 899
	addi	x6, x6, 60332	# 899
	sw		x4, 0(x6)	# 899
	lw		x4, -4(x2)	# 900
	add		x4, x5, x4	# 900
	lw		x29, 0(x2)	# 900
	lw		x31, 0(x29)	# 900
	jalr	x0, x31, 0	# 900
beq.31665:
	jalr	x0, x1, 0	# 897
iter_setup_dirvec_constants.2784.17724:
	lw		x6, 16(x29)	# 1272
	lw		x7, 12(x29)	# 1272
	lw		x8, 8(x29)	# 1272
	flw		f1, 4(x29)	# 1272
	ble		x7, x5, ble.31667	# 1272
	jalr	x0, x1, 0	# 1285
ble.31667:
	mul		x9, x30, x5	# 1273
	addi	x9, x9, 60048	# 1273
	lw		x9, 0(x9)	# 1273
	lw		x10, 4(x4)	# 647
	lw		x11, 0(x4)	# 641
	lw		x12, 4(x9)	# 355
	sw		x4, 0(x2)	# 1277
	sw		x29, -4(x2)	# 1277
	sw		x8, -8(x2)	# 1277
	beq		x12, x8, beq.31670	# 1277
	addi	x13, x0, 2	# 1279
	beq		x12, x13, beq.31672	# 1279
	addi	x12, x0, 5	# 1243
	fadd	f2, f0, f0	# 1243
	sw		x10, -12(x2)	# 1243
	sw		x5, -16(x2)	# 1243
	fsw		f1, -20(x2)	# 1243
	sw		x6, -24(x2)	# 1243
	sw		x7, -28(x2)	# 1243
	sw		x9, -32(x2)	# 1243
	sw		x11, -36(x2)	# 1243
	addi	x4, x12, 0
	fadd	f1, f0, f2
	sw		x1, -40(x2)	# 1243
	addi	x2, x2, -44	# 1243
	jal		x1, min_caml_create_float_array	# 1243
	addi	x2, x2, 44	# 1243
	lw		x1, -40(x2)	# 1243
	addi	x5, x0, 0	# 1245
	mul		x5, x30, x5	# 1245
	lw		x6, -36(x2)	# 1245
	add		x5, x6, x5	# 1245
	flw		f1, 0(x5)	# 1245
	addi	x5, x0, 1	# 1245
	mul		x5, x30, x5	# 1245
	add		x5, x6, x5	# 1245
	flw		f2, 0(x5)	# 1245
	addi	x5, x0, 2	# 1245
	mul		x5, x30, x5	# 1245
	add		x5, x6, x5	# 1245
	flw		f3, 0(x5)	# 1245
	fmul	f4, f1, f1	# 127
	lw		x5, -32(x2)	# 393
	lw		x7, 16(x5)	# 393
	lw		x8, -28(x2)	# 398
	mul		x9, x30, x8	# 398
	add		x7, x7, x9	# 398
	flw		f5, 0(x7)	# 398
	fmul	f4, f4, f5	# 969
	fmul	f5, f2, f2	# 127
	lw		x7, 16(x5)	# 403
	lw		x9, -8(x2)	# 408
	mul		x10, x30, x9	# 408
	add		x7, x7, x10	# 408
	flw		f6, 0(x7)	# 408
	fmul	f5, f5, f6	# 969
	fadd	f4, f4, f5	# 969
	fmul	f5, f3, f3	# 127
	lw		x7, 16(x5)	# 413
	lw		x10, -24(x2)	# 418
	mul		x11, x30, x10	# 418
	add		x7, x7, x11	# 418
	flw		f6, 0(x7)	# 418
	fmul	f5, f5, f6	# 969
	fadd	f4, f4, f5	# 969
	lw		x7, 12(x5)	# 384
	beq		x7, x8, beq.31674	# 971
	fmul	f5, f2, f3	# 975
	lw		x7, 36(x5)	# 513
	mul		x11, x30, x8	# 518
	add		x7, x7, x11	# 518
	flw		f6, 0(x7)	# 518
	fmul	f5, f5, f6	# 975
	fadd	f4, f4, f5	# 974
	fmul	f3, f3, f1	# 976
	lw		x7, 36(x5)	# 523
	mul		x11, x30, x9	# 528
	add		x7, x7, x11	# 528
	flw		f5, 0(x7)	# 528
	fmul	f3, f3, f5	# 976
	fadd	f3, f4, f3	# 974
	fmul	f1, f1, f2	# 977
	lw		x7, 36(x5)	# 533
	mul		x11, x30, x10	# 538
	add		x7, x7, x11	# 538
	flw		f2, 0(x7)	# 538
	fmul	f1, f1, f2	# 977
	fadd	f1, f3, f1	# 974
	jal		x0, beq_cont.31673	# 971
beq.31674:
	fadd	f1, f0, f4	# 972
beq_cont.31673:
	addi	x7, x0, 0	# 1246
	mul		x7, x30, x7	# 1246
	add		x7, x6, x7	# 1246
	flw		f2, 0(x7)	# 1246
	lw		x7, 16(x5)	# 393
	mul		x11, x30, x8	# 398
	add		x7, x7, x11	# 398
	flw		f3, 0(x7)	# 398
	fmul	f2, f2, f3	# 1246
	fsub	f2, f0, f2	# 123
	addi	x7, x0, 1	# 1247
	mul		x7, x30, x7	# 1247
	add		x7, x6, x7	# 1247
	flw		f3, 0(x7)	# 1247
	lw		x7, 16(x5)	# 403
	mul		x11, x30, x9	# 408
	add		x7, x7, x11	# 408
	flw		f4, 0(x7)	# 408
	fmul	f3, f3, f4	# 1247
	fsub	f3, f0, f3	# 123
	addi	x7, x0, 2	# 1248
	mul		x7, x30, x7	# 1248
	add		x7, x6, x7	# 1248
	flw		f4, 0(x7)	# 1248
	lw		x7, 16(x5)	# 413
	mul		x11, x30, x10	# 418
	add		x7, x7, x11	# 418
	flw		f5, 0(x7)	# 418
	fmul	f4, f4, f5	# 1248
	fsub	f4, f0, f4	# 123
	addi	x7, x0, 0	# 1250
	mul		x7, x30, x7	# 1250
	add		x7, x4, x7	# 1250
	fsw		f1, 0(x7)	# 1250
	lw		x7, 12(x5)	# 384
	addi	x11, x0, 0	# 1254
	beq		x7, x11, beq.31676	# 1254
	addi	x7, x0, 1	# 1255
	addi	x11, x0, 2	# 1255
	mul		x11, x30, x11	# 1255
	add		x11, x6, x11	# 1255
	flw		f5, 0(x11)	# 1255
	lw		x11, 36(x5)	# 523
	mul		x12, x30, x9	# 528
	add		x11, x11, x12	# 528
	flw		f6, 0(x11)	# 528
	fmul	f5, f5, f6	# 1255
	addi	x11, x0, 1	# 1255
	mul		x11, x30, x11	# 1255
	add		x11, x6, x11	# 1255
	flw		f6, 0(x11)	# 1255
	lw		x11, 36(x5)	# 533
	mul		x12, x30, x10	# 538
	add		x11, x11, x12	# 538
	flw		f7, 0(x11)	# 538
	fmul	f6, f6, f7	# 1255
	fadd	f5, f5, f6	# 1255
	fadd	f6, f0, f17	# 126
	fmul	f5, f5, f6	# 126
	fsub	f2, f2, f5	# 1255
	mul		x7, x30, x7	# 1255
	add		x7, x4, x7	# 1255
	fsw		f2, 0(x7)	# 1255
	addi	x7, x0, 2	# 1256
	addi	x11, x0, 2	# 1256
	mul		x11, x30, x11	# 1256
	add		x11, x6, x11	# 1256
	flw		f2, 0(x11)	# 1256
	lw		x11, 36(x5)	# 513
	mul		x12, x30, x8	# 518
	add		x11, x11, x12	# 518
	flw		f5, 0(x11)	# 518
	fmul	f2, f2, f5	# 1256
	addi	x11, x0, 0	# 1256
	mul		x11, x30, x11	# 1256
	add		x11, x6, x11	# 1256
	flw		f5, 0(x11)	# 1256
	lw		x11, 36(x5)	# 533
	mul		x10, x30, x10	# 538
	add		x10, x11, x10	# 538
	flw		f6, 0(x10)	# 538
	fmul	f5, f5, f6	# 1256
	fadd	f2, f2, f5	# 1256
	fadd	f5, f0, f17	# 126
	fmul	f2, f2, f5	# 126
	fsub	f2, f3, f2	# 1256
	mul		x7, x30, x7	# 1256
	add		x7, x4, x7	# 1256
	fsw		f2, 0(x7)	# 1256
	addi	x7, x0, 3	# 1257
	addi	x10, x0, 1	# 1257
	mul		x10, x30, x10	# 1257
	add		x10, x6, x10	# 1257
	flw		f2, 0(x10)	# 1257
	lw		x10, 36(x5)	# 513
	mul		x8, x30, x8	# 518
	add		x8, x10, x8	# 518
	flw		f3, 0(x8)	# 518
	fmul	f2, f2, f3	# 1257
	addi	x8, x0, 0	# 1257
	mul		x8, x30, x8	# 1257
	add		x6, x6, x8	# 1257
	flw		f3, 0(x6)	# 1257
	lw		x5, 36(x5)	# 523
	mul		x6, x30, x9	# 528
	add		x5, x5, x6	# 528
	flw		f5, 0(x5)	# 528
	fmul	f3, f3, f5	# 1257
	fadd	f2, f2, f3	# 1257
	fadd	f3, f0, f17	# 126
	fmul	f2, f2, f3	# 126
	fsub	f2, f4, f2	# 1257
	mul		x5, x30, x7	# 1257
	add		x5, x4, x5	# 1257
	fsw		f2, 0(x5)	# 1257
	jal		x0, beq_cont.31675	# 1254
beq.31676:
	addi	x5, x0, 1	# 1259
	mul		x5, x30, x5	# 1259
	add		x5, x4, x5	# 1259
	fsw		f2, 0(x5)	# 1259
	addi	x5, x0, 2	# 1260
	mul		x5, x30, x5	# 1260
	add		x5, x4, x5	# 1260
	fsw		f3, 0(x5)	# 1260
	addi	x5, x0, 3	# 1261
	mul		x5, x30, x5	# 1261
	add		x5, x4, x5	# 1261
	fsw		f4, 0(x5)	# 1261
beq_cont.31675:
	flw		f2, -20(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31678	# 120
	jal		x0, feq_cont.31677	# 120
feq_else.31678:
	addi	x5, x0, 4	# 1264
	fadd	f2, f0, f16	# 1264
	fdiv	f1, f2, f1	# 1264
	mul		x5, x30, x5	# 1264
	add		x5, x4, x5	# 1264
	fsw		f1, 0(x5)	# 1264
feq_cont.31677:
	lw		x5, -16(x2)	# 1282
	mul		x6, x30, x5	# 1282
	lw		x7, -12(x2)	# 1282
	add		x6, x7, x6	# 1282
	sw		x4, 0(x6)	# 1282
	jal		x0, beq_cont.31671	# 1279
beq.31672:
	addi	x12, x0, 4	# 1224
	fadd	f2, f0, f0	# 1224
	sw		x10, -12(x2)	# 1224
	sw		x5, -16(x2)	# 1224
	fsw		f1, -20(x2)	# 1224
	sw		x6, -24(x2)	# 1224
	sw		x7, -28(x2)	# 1224
	sw		x9, -32(x2)	# 1224
	sw		x11, -36(x2)	# 1224
	addi	x4, x12, 0
	fadd	f1, f0, f2
	sw		x1, -40(x2)	# 1224
	addi	x2, x2, -44	# 1224
	jal		x1, min_caml_create_float_array	# 1224
	addi	x2, x2, 44	# 1224
	lw		x1, -40(x2)	# 1224
	addi	x5, x0, 0	# 1226
	mul		x5, x30, x5	# 1226
	lw		x6, -36(x2)	# 1226
	add		x5, x6, x5	# 1226
	flw		f1, 0(x5)	# 1226
	lw		x5, -32(x2)	# 393
	lw		x7, 16(x5)	# 393
	lw		x8, -28(x2)	# 398
	mul		x9, x30, x8	# 398
	add		x7, x7, x9	# 398
	flw		f2, 0(x7)	# 398
	fmul	f1, f1, f2	# 1226
	addi	x7, x0, 1	# 1226
	mul		x7, x30, x7	# 1226
	add		x7, x6, x7	# 1226
	flw		f2, 0(x7)	# 1226
	lw		x7, 16(x5)	# 403
	lw		x9, -8(x2)	# 408
	mul		x10, x30, x9	# 408
	add		x7, x7, x10	# 408
	flw		f3, 0(x7)	# 408
	fmul	f2, f2, f3	# 1226
	fadd	f1, f1, f2	# 1226
	addi	x7, x0, 2	# 1226
	mul		x7, x30, x7	# 1226
	add		x6, x6, x7	# 1226
	flw		f2, 0(x6)	# 1226
	lw		x6, 16(x5)	# 413
	lw		x7, -24(x2)	# 418
	mul		x10, x30, x7	# 418
	add		x6, x6, x10	# 418
	flw		f3, 0(x6)	# 418
	fmul	f2, f2, f3	# 1226
	fadd	f1, f1, f2	# 1226
	flw		f2, -20(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.31680	# 121
	addi	x5, x0, 0	# 1236
	fadd	f1, f0, f0	# 1236
	mul		x5, x30, x5	# 1236
	add		x5, x4, x5	# 1236
	fsw		f1, 0(x5)	# 1236
	jal		x0, fle_cont.31679	# 121
fle_else.31680:
	addi	x6, x0, 0	# 1230
	fadd	f2, f0, f18	# 1230
	fdiv	f2, f2, f1	# 1230
	mul		x6, x30, x6	# 1230
	add		x6, x4, x6	# 1230
	fsw		f2, 0(x6)	# 1230
	addi	x6, x0, 1	# 1232
	lw		x10, 16(x5)	# 393
	mul		x8, x30, x8	# 398
	add		x8, x10, x8	# 398
	flw		f2, 0(x8)	# 398
	fdiv	f2, f2, f1	# 1232
	fsub	f2, f0, f2	# 123
	mul		x6, x30, x6	# 1232
	add		x6, x4, x6	# 1232
	fsw		f2, 0(x6)	# 1232
	addi	x6, x0, 2	# 1233
	lw		x8, 16(x5)	# 403
	mul		x10, x30, x9	# 408
	add		x8, x8, x10	# 408
	flw		f2, 0(x8)	# 408
	fdiv	f2, f2, f1	# 1233
	fsub	f2, f0, f2	# 123
	mul		x6, x30, x6	# 1233
	add		x6, x4, x6	# 1233
	fsw		f2, 0(x6)	# 1233
	addi	x6, x0, 3	# 1234
	lw		x5, 16(x5)	# 413
	mul		x7, x30, x7	# 418
	add		x5, x5, x7	# 418
	flw		f2, 0(x5)	# 418
	fdiv	f1, f2, f1	# 1234
	fsub	f1, f0, f1	# 123
	mul		x5, x30, x6	# 1234
	add		x5, x4, x5	# 1234
	fsw		f1, 0(x5)	# 1234
fle_cont.31679:
	lw		x5, -16(x2)	# 1280
	mul		x6, x30, x5	# 1280
	lw		x7, -12(x2)	# 1280
	add		x6, x7, x6	# 1280
	sw		x4, 0(x6)	# 1280
beq_cont.31671:
	jal		x0, beq_cont.31669	# 1277
beq.31670:
	addi	x12, x0, 6	# 1197
	fadd	f2, f0, f0	# 1197
	sw		x10, -12(x2)	# 1197
	sw		x5, -16(x2)	# 1197
	sw		x6, -24(x2)	# 1197
	sw		x7, -28(x2)	# 1197
	sw		x9, -32(x2)	# 1197
	fsw		f1, -20(x2)	# 1197
	sw		x11, -36(x2)	# 1197
	addi	x4, x12, 0
	fadd	f1, f0, f2
	sw		x1, -40(x2)	# 1197
	addi	x2, x2, -44	# 1197
	jal		x1, min_caml_create_float_array	# 1197
	addi	x2, x2, 44	# 1197
	lw		x1, -40(x2)	# 1197
	addi	x5, x0, 0	# 1199
	mul		x5, x30, x5	# 1199
	lw		x6, -36(x2)	# 1199
	add		x5, x6, x5	# 1199
	flw		f1, 0(x5)	# 1199
	flw		f2, -20(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31682	# 120
	addi	x5, x0, 1	# 1200
	fadd	f1, f0, f0	# 1200
	mul		x5, x30, x5	# 1200
	add		x5, x4, x5	# 1200
	fsw		f1, 0(x5)	# 1200
	jal		x0, feq_cont.31681	# 120
feq_else.31682:
	addi	x5, x0, 0	# 1203
	lw		x7, -32(x2)	# 375
	lw		x8, 24(x7)	# 375
	addi	x9, x0, 0	# 1203
	mul		x9, x30, x9	# 1203
	add		x9, x6, x9	# 1203
	flw		f1, 0(x9)	# 1203
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31684	# 122
	addi	x9, x0, 0	# 122
	jal		x0, fle_cont.31683	# 122
fle_else.31684:
	addi	x9, x0, 1	# 122
fle_cont.31683:
	lw		x10, -28(x2)	# 206
	beq		x8, x10, beq.31686	# 206
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31688	# 122
	addi	x8, x0, 1	# 206
	jal		x0, fle_cont.31687	# 122
fle_else.31688:
	addi	x8, x0, 0	# 206
fle_cont.31687:
	jal		x0, beq_cont.31685	# 206
beq.31686:
	addi	x8, x9, 0	# 206
beq_cont.31685:
	lw		x9, 16(x7)	# 393
	mul		x11, x30, x10	# 398
	add		x9, x9, x11	# 398
	flw		f1, 0(x9)	# 398
	beq		x8, x10, beq.31690	# 221
	jal		x0, beq_cont.31689	# 221
beq.31690:
	fsub	f1, f0, f1	# 123
beq_cont.31689:
	mul		x5, x30, x5	# 1203
	add		x5, x4, x5	# 1203
	fsw		f1, 0(x5)	# 1203
	addi	x5, x0, 1	# 1205
	fadd	f1, f0, f16	# 1205
	addi	x8, x0, 0	# 1205
	mul		x8, x30, x8	# 1205
	add		x8, x6, x8	# 1205
	flw		f3, 0(x8)	# 1205
	fdiv	f1, f1, f3	# 1205
	mul		x5, x30, x5	# 1205
	add		x5, x4, x5	# 1205
	fsw		f1, 0(x5)	# 1205
feq_cont.31681:
	addi	x5, x0, 1	# 1207
	mul		x5, x30, x5	# 1207
	add		x5, x6, x5	# 1207
	flw		f1, 0(x5)	# 1207
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31692	# 120
	addi	x5, x0, 3	# 1208
	fadd	f1, f0, f0	# 1208
	mul		x5, x30, x5	# 1208
	add		x5, x4, x5	# 1208
	fsw		f1, 0(x5)	# 1208
	jal		x0, feq_cont.31691	# 120
feq_else.31692:
	addi	x5, x0, 2	# 1210
	lw		x7, -32(x2)	# 375
	lw		x8, 24(x7)	# 375
	addi	x9, x0, 1	# 1210
	mul		x9, x30, x9	# 1210
	add		x9, x6, x9	# 1210
	flw		f1, 0(x9)	# 1210
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31694	# 122
	addi	x9, x0, 0	# 122
	jal		x0, fle_cont.31693	# 122
fle_else.31694:
	addi	x9, x0, 1	# 122
fle_cont.31693:
	lw		x10, -28(x2)	# 206
	beq		x8, x10, beq.31696	# 206
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31698	# 122
	addi	x8, x0, 1	# 206
	jal		x0, fle_cont.31697	# 122
fle_else.31698:
	addi	x8, x0, 0	# 206
fle_cont.31697:
	jal		x0, beq_cont.31695	# 206
beq.31696:
	addi	x8, x9, 0	# 206
beq_cont.31695:
	lw		x9, 16(x7)	# 403
	lw		x11, -8(x2)	# 408
	mul		x12, x30, x11	# 408
	add		x9, x9, x12	# 408
	flw		f1, 0(x9)	# 408
	beq		x8, x10, beq.31700	# 221
	jal		x0, beq_cont.31699	# 221
beq.31700:
	fsub	f1, f0, f1	# 123
beq_cont.31699:
	mul		x5, x30, x5	# 1210
	add		x5, x4, x5	# 1210
	fsw		f1, 0(x5)	# 1210
	addi	x5, x0, 3	# 1211
	fadd	f1, f0, f16	# 1211
	addi	x8, x0, 1	# 1211
	mul		x8, x30, x8	# 1211
	add		x8, x6, x8	# 1211
	flw		f3, 0(x8)	# 1211
	fdiv	f1, f1, f3	# 1211
	mul		x5, x30, x5	# 1211
	add		x5, x4, x5	# 1211
	fsw		f1, 0(x5)	# 1211
feq_cont.31691:
	addi	x5, x0, 2	# 1213
	mul		x5, x30, x5	# 1213
	add		x5, x6, x5	# 1213
	flw		f1, 0(x5)	# 1213
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.31702	# 120
	addi	x5, x0, 5	# 1214
	fadd	f1, f0, f0	# 1214
	mul		x5, x30, x5	# 1214
	add		x5, x4, x5	# 1214
	fsw		f1, 0(x5)	# 1214
	jal		x0, feq_cont.31701	# 120
feq_else.31702:
	addi	x5, x0, 4	# 1216
	lw		x7, -32(x2)	# 375
	lw		x8, 24(x7)	# 375
	addi	x9, x0, 2	# 1216
	mul		x9, x30, x9	# 1216
	add		x9, x6, x9	# 1216
	flw		f1, 0(x9)	# 1216
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31704	# 122
	addi	x9, x0, 0	# 122
	jal		x0, fle_cont.31703	# 122
fle_else.31704:
	addi	x9, x0, 1	# 122
fle_cont.31703:
	lw		x10, -28(x2)	# 206
	beq		x8, x10, beq.31706	# 206
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.31708	# 122
	addi	x8, x0, 1	# 206
	jal		x0, fle_cont.31707	# 122
fle_else.31708:
	addi	x8, x0, 0	# 206
fle_cont.31707:
	jal		x0, beq_cont.31705	# 206
beq.31706:
	addi	x8, x9, 0	# 206
beq_cont.31705:
	lw		x7, 16(x7)	# 413
	lw		x9, -24(x2)	# 418
	mul		x9, x30, x9	# 418
	add		x7, x7, x9	# 418
	flw		f1, 0(x7)	# 418
	beq		x8, x10, beq.31710	# 221
	jal		x0, beq_cont.31709	# 221
beq.31710:
	fsub	f1, f0, f1	# 123
beq_cont.31709:
	mul		x5, x30, x5	# 1216
	add		x5, x4, x5	# 1216
	fsw		f1, 0(x5)	# 1216
	addi	x5, x0, 5	# 1217
	fadd	f1, f0, f16	# 1217
	addi	x7, x0, 2	# 1217
	mul		x7, x30, x7	# 1217
	add		x6, x6, x7	# 1217
	flw		f2, 0(x6)	# 1217
	fdiv	f1, f1, f2	# 1217
	mul		x5, x30, x5	# 1217
	add		x5, x4, x5	# 1217
	fsw		f1, 0(x5)	# 1217
feq_cont.31701:
	lw		x5, -16(x2)	# 1278
	mul		x6, x30, x5	# 1278
	lw		x7, -12(x2)	# 1278
	add		x6, x7, x6	# 1278
	sw		x4, 0(x6)	# 1278
beq_cont.31669:
	lw		x4, -8(x2)	# 1284
	sub		x5, x5, x4	# 1284
	lw		x4, 0(x2)	# 1284
	lw		x29, -4(x2)	# 1284
	lw		x31, 0(x29)	# 1284
	jalr	x0, x31, 0	# 1284
setup_startp_constants.2789.17727:
	lw		x6, 12(x29)	# 1297
	lw		x7, 8(x29)	# 1297
	lw		x8, 4(x29)	# 1297
	ble		x7, x5, ble.31711	# 1297
	jalr	x0, x1, 0	# 1312
ble.31711:
	mul		x9, x30, x5	# 1298
	addi	x9, x9, 60048	# 1298
	lw		x9, 0(x9)	# 1298
	lw		x10, 40(x9)	# 550
	lw		x11, 4(x9)	# 355
	mul		x12, x30, x7	# 1301
	add		x12, x4, x12	# 1301
	flw		f1, 0(x12)	# 1301
	lw		x12, 20(x9)	# 433
	mul		x13, x30, x7	# 438
	add		x12, x12, x13	# 438
	flw		f2, 0(x12)	# 438
	fsub	f1, f1, f2	# 1301
	mul		x12, x30, x7	# 1301
	add		x12, x10, x12	# 1301
	fsw		f1, 0(x12)	# 1301
	mul		x12, x30, x8	# 1302
	add		x12, x4, x12	# 1302
	flw		f1, 0(x12)	# 1302
	lw		x12, 20(x9)	# 443
	mul		x13, x30, x8	# 448
	add		x12, x12, x13	# 448
	flw		f2, 0(x12)	# 448
	fsub	f1, f1, f2	# 1302
	mul		x12, x30, x8	# 1302
	add		x12, x10, x12	# 1302
	fsw		f1, 0(x12)	# 1302
	mul		x12, x30, x6	# 1303
	add		x12, x4, x12	# 1303
	flw		f1, 0(x12)	# 1303
	lw		x12, 20(x9)	# 453
	mul		x13, x30, x6	# 458
	add		x12, x12, x13	# 458
	flw		f2, 0(x12)	# 458
	fsub	f1, f1, f2	# 1303
	mul		x12, x30, x6	# 1303
	add		x12, x10, x12	# 1303
	fsw		f1, 0(x12)	# 1303
	beq		x11, x6, beq.31714	# 1304
	addi	x12, x0, 2	# 1307
	ble		x11, x12, ble_cont.31715	# 1307
	addi	x12, x0, 0	# 1308
	mul		x12, x30, x12	# 1308
	add		x12, x10, x12	# 1308
	flw		f1, 0(x12)	# 1308
	addi	x12, x0, 1	# 1308
	mul		x12, x30, x12	# 1308
	add		x12, x10, x12	# 1308
	flw		f2, 0(x12)	# 1308
	addi	x12, x0, 2	# 1308
	mul		x12, x30, x12	# 1308
	add		x12, x10, x12	# 1308
	flw		f3, 0(x12)	# 1308
	fmul	f4, f1, f1	# 127
	lw		x12, 16(x9)	# 393
	mul		x13, x30, x7	# 398
	add		x12, x12, x13	# 398
	flw		f5, 0(x12)	# 398
	fmul	f4, f4, f5	# 969
	fmul	f5, f2, f2	# 127
	lw		x12, 16(x9)	# 403
	mul		x13, x30, x8	# 408
	add		x12, x12, x13	# 408
	flw		f6, 0(x12)	# 408
	fmul	f5, f5, f6	# 969
	fadd	f4, f4, f5	# 969
	fmul	f5, f3, f3	# 127
	lw		x12, 16(x9)	# 413
	mul		x13, x30, x6	# 418
	add		x12, x12, x13	# 418
	flw		f6, 0(x12)	# 418
	fmul	f5, f5, f6	# 969
	fadd	f4, f4, f5	# 969
	lw		x12, 12(x9)	# 384
	addi	x13, x0, 0	# 971
	beq		x12, x13, beq.31717	# 971
	fmul	f5, f2, f3	# 975
	lw		x12, 36(x9)	# 513
	mul		x7, x30, x7	# 518
	add		x7, x12, x7	# 518
	flw		f6, 0(x7)	# 518
	fmul	f5, f5, f6	# 975
	fadd	f4, f4, f5	# 974
	fmul	f3, f3, f1	# 976
	lw		x7, 36(x9)	# 523
	mul		x12, x30, x8	# 528
	add		x7, x7, x12	# 528
	flw		f5, 0(x7)	# 528
	fmul	f3, f3, f5	# 976
	fadd	f3, f4, f3	# 974
	fmul	f1, f1, f2	# 977
	lw		x7, 36(x9)	# 533
	mul		x6, x30, x6	# 538
	add		x6, x7, x6	# 538
	flw		f2, 0(x6)	# 538
	fmul	f1, f1, f2	# 977
	fadd	f1, f3, f1	# 974
	jal		x0, beq_cont.31716	# 971
beq.31717:
	fadd	f1, f0, f4	# 972
beq_cont.31716:
	addi	x6, x0, 3	# 1309
	addi	x7, x0, 3	# 1309
	beq		x11, x7, beq.31719	# 1309
	jal		x0, beq_cont.31718	# 1309
beq.31719:
	fadd	f2, f0, f16	# 1309
	fsub	f1, f1, f2	# 1309
beq_cont.31718:
	mul		x6, x30, x6	# 1309
	add		x6, x10, x6	# 1309
	fsw		f1, 0(x6)	# 1309
ble_cont.31715:
	jal		x0, beq_cont.31713	# 1304
beq.31714:
	addi	x6, x0, 3	# 1305
	lw		x7, 16(x9)	# 423
	addi	x9, x0, 0	# 1306
	mul		x9, x30, x9	# 1306
	add		x9, x10, x9	# 1306
	flw		f1, 0(x9)	# 1306
	addi	x9, x0, 1	# 1306
	mul		x9, x30, x9	# 1306
	add		x9, x10, x9	# 1306
	flw		f2, 0(x9)	# 1306
	addi	x9, x0, 2	# 1306
	mul		x9, x30, x9	# 1306
	add		x9, x10, x9	# 1306
	flw		f3, 0(x9)	# 1306
	addi	x9, x0, 0	# 299
	mul		x9, x30, x9	# 299
	add		x9, x7, x9	# 299
	flw		f4, 0(x9)	# 299
	fmul	f1, f4, f1	# 299
	addi	x9, x0, 1	# 299
	mul		x9, x30, x9	# 299
	add		x9, x7, x9	# 299
	flw		f4, 0(x9)	# 299
	fmul	f2, f4, f2	# 299
	fadd	f1, f1, f2	# 299
	addi	x9, x0, 2	# 299
	mul		x9, x30, x9	# 299
	add		x7, x7, x9	# 299
	flw		f2, 0(x7)	# 299
	fmul	f2, f2, f3	# 299
	fadd	f1, f1, f2	# 299
	mul		x6, x30, x6	# 1305
	add		x6, x10, x6	# 1305
	fsw		f1, 0(x6)	# 1305
beq_cont.31713:
	sub		x5, x5, x8	# 1311
	lw		x31, 0(x29)	# 1311
	jalr	x0, x31, 0	# 1311
check_all_inside.2814.17730:
	lw		x6, 24(x29)	# 1366
	lw		x7, 20(x29)	# 1366
	lw		x8, 16(x29)	# 1366
	lw		x9, 12(x29)	# 1366
	lw		x10, 8(x29)	# 1366
	flw		f4, 4(x29)	# 1366
	mul		x11, x30, x4	# 1366
	add		x11, x5, x11	# 1366
	lw		x11, 0(x11)	# 1366
	beq		x11, x7, beq.31720	# 1367
	mul		x7, x30, x11	# 1370
	addi	x7, x7, 60048	# 1370
	lw		x7, 0(x7)	# 1370
	lw		x11, 20(x7)	# 433
	mul		x12, x30, x9	# 438
	add		x11, x11, x12	# 438
	flw		f5, 0(x11)	# 438
	fsub	f5, f1, f5	# 1352
	lw		x11, 20(x7)	# 443
	mul		x12, x30, x10	# 448
	add		x11, x11, x12	# 448
	flw		f6, 0(x11)	# 448
	fsub	f6, f2, f6	# 1353
	lw		x11, 20(x7)	# 453
	mul		x12, x30, x6	# 458
	add		x11, x11, x12	# 458
	flw		f7, 0(x11)	# 458
	fsub	f7, f3, f7	# 1354
	lw		x11, 4(x7)	# 355
	beq		x11, x10, beq.31722	# 1356
	beq		x11, x6, beq.31724	# 1358
	fmul	f8, f5, f5	# 127
	lw		x11, 16(x7)	# 393
	mul		x12, x30, x9	# 398
	add		x11, x11, x12	# 398
	flw		f9, 0(x11)	# 398
	fmul	f8, f8, f9	# 969
	fmul	f9, f6, f6	# 127
	lw		x11, 16(x7)	# 403
	mul		x12, x30, x10	# 408
	add		x11, x11, x12	# 408
	flw		f10, 0(x11)	# 408
	fmul	f9, f9, f10	# 969
	fadd	f8, f8, f9	# 969
	fmul	f9, f7, f7	# 127
	lw		x11, 16(x7)	# 413
	mul		x12, x30, x6	# 418
	add		x11, x11, x12	# 418
	flw		f10, 0(x11)	# 418
	fmul	f9, f9, f10	# 969
	fadd	f8, f8, f9	# 969
	lw		x11, 12(x7)	# 384
	beq		x11, x9, beq.31726	# 971
	fmul	f9, f6, f7	# 975
	lw		x11, 36(x7)	# 513
	mul		x12, x30, x9	# 518
	add		x11, x11, x12	# 518
	flw		f10, 0(x11)	# 518
	fmul	f9, f9, f10	# 975
	fadd	f8, f8, f9	# 974
	fmul	f7, f7, f5	# 976
	lw		x11, 36(x7)	# 523
	mul		x12, x30, x10	# 528
	add		x11, x11, x12	# 528
	flw		f9, 0(x11)	# 528
	fmul	f7, f7, f9	# 976
	fadd	f7, f8, f7	# 974
	fmul	f5, f5, f6	# 977
	lw		x11, 36(x7)	# 533
	mul		x6, x30, x6	# 538
	add		x6, x11, x6	# 538
	flw		f6, 0(x6)	# 538
	fmul	f5, f5, f6	# 977
	fadd	f5, f7, f5	# 974
	jal		x0, beq_cont.31725	# 971
beq.31726:
	fadd	f5, f0, f8	# 972
beq_cont.31725:
	lw		x6, 4(x7)	# 355
	beq		x6, x8, beq.31728	# 1346
	jal		x0, beq_cont.31727	# 1346
beq.31728:
	fadd	f6, f0, f16	# 1346
	fsub	f5, f5, f6	# 1346
beq_cont.31727:
	lw		x6, 24(x7)	# 375
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.31730	# 122
	addi	x7, x0, 0	# 122
	jal		x0, fle_cont.31729	# 122
fle_else.31730:
	addi	x7, x0, 1	# 122
fle_cont.31729:
	beq		x6, x9, beq.31732	# 206
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.31734	# 122
	addi	x6, x0, 1	# 206
	jal		x0, fle_cont.31733	# 122
fle_else.31734:
	addi	x6, x0, 0	# 206
fle_cont.31733:
	jal		x0, beq_cont.31731	# 206
beq.31732:
	addi	x6, x7, 0	# 206
beq_cont.31731:
	beq		x6, x9, beq.31736	# 1347
	addi	x6, x0, 0	# 1347
	jal		x0, beq_cont.31735	# 1347
beq.31736:
	addi	x6, x0, 1	# 1347
beq_cont.31735:
	jal		x0, beq_cont.31723	# 1358
beq.31724:
	lw		x8, 16(x7)	# 423
	mul		x11, x30, x9	# 299
	add		x11, x8, x11	# 299
	flw		f8, 0(x11)	# 299
	fmul	f5, f8, f5	# 299
	mul		x11, x30, x10	# 299
	add		x11, x8, x11	# 299
	flw		f8, 0(x11)	# 299
	fmul	f6, f8, f6	# 299
	fadd	f5, f5, f6	# 299
	mul		x6, x30, x6	# 299
	add		x6, x8, x6	# 299
	flw		f6, 0(x6)	# 299
	fmul	f6, f6, f7	# 299
	fadd	f5, f5, f6	# 299
	lw		x6, 24(x7)	# 375
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.31738	# 122
	addi	x7, x0, 0	# 122
	jal		x0, fle_cont.31737	# 122
fle_else.31738:
	addi	x7, x0, 1	# 122
fle_cont.31737:
	beq		x6, x9, beq.31740	# 206
	fle		x31, f4, f5	# 122
	beq		x31, x0, fle_else.31742	# 122
	addi	x6, x0, 1	# 206
	jal		x0, fle_cont.31741	# 122
fle_else.31742:
	addi	x6, x0, 0	# 206
fle_cont.31741:
	jal		x0, beq_cont.31739	# 206
beq.31740:
	addi	x6, x7, 0	# 206
beq_cont.31739:
	beq		x6, x9, beq.31744	# 1340
	addi	x6, x0, 0	# 1340
	jal		x0, beq_cont.31743	# 1340
beq.31744:
	addi	x6, x0, 1	# 1340
beq_cont.31743:
beq_cont.31723:
	jal		x0, beq_cont.31721	# 1356
beq.31722:
	fle		x31, f5, f4	# 124
	beq		x31, x0, fle_cont.31745	# 124
	fsub	f5, f0, f5	# 124
fle_cont.31745:
	lw		x8, 16(x7)	# 393
	mul		x11, x30, x9	# 398
	add		x8, x8, x11	# 398
	flw		f8, 0(x8)	# 398
	fle		x31, f8, f5	# 125
	beq		x31, x0, fle_else.31747	# 125
	addi	x6, x0, 0	# 1333
	jal		x0, fle_cont.31746	# 125
fle_else.31747:
	fle		x31, f6, f4	# 124
	beq		x31, x0, fle_else.31749	# 124
	fsub	f5, f0, f6	# 124
	jal		x0, fle_cont.31748	# 124
fle_else.31749:
	fadd	f5, f0, f6	# 124
fle_cont.31748:
	lw		x8, 16(x7)	# 403
	mul		x11, x30, x10	# 408
	add		x8, x8, x11	# 408
	flw		f6, 0(x8)	# 408
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.31751	# 125
	addi	x6, x0, 0	# 1332
	jal		x0, fle_cont.31750	# 125
fle_else.31751:
	fle		x31, f7, f4	# 124
	beq		x31, x0, fle_else.31753	# 124
	fsub	f4, f0, f7	# 124
	jal		x0, fle_cont.31752	# 124
fle_else.31753:
	fadd	f4, f0, f7	# 124
fle_cont.31752:
	lw		x8, 16(x7)	# 413
	mul		x6, x30, x6	# 418
	add		x6, x8, x6	# 418
	flw		f5, 0(x6)	# 418
	fle		x31, f5, f4	# 125
	beq		x31, x0, fle_else.31755	# 125
	addi	x6, x0, 0	# 125
	jal		x0, fle_cont.31754	# 125
fle_else.31755:
	addi	x6, x0, 1	# 125
fle_cont.31754:
fle_cont.31750:
fle_cont.31746:
	beq		x6, x9, beq.31757	# 1328
	lw		x6, 24(x7)	# 375
	jal		x0, beq_cont.31756	# 1328
beq.31757:
	lw		x6, 24(x7)	# 375
	beq		x6, x9, beq.31759	# 1334
	addi	x6, x0, 0	# 1334
	jal		x0, beq_cont.31758	# 1334
beq.31759:
	addi	x6, x0, 1	# 1334
beq_cont.31758:
beq_cont.31756:
beq_cont.31721:
	beq		x6, x9, beq.31760	# 1370
	addi	x4, x0, 0	# 1371
	jalr	x0, x1, 0	# 1371
beq.31760:
	add		x4, x4, x10	# 1373
	lw		x31, 0(x29)	# 1373
	jalr	x0, x31, 0	# 1373
beq.31720:
	addi	x4, x0, 1	# 1368
	jalr	x0, x1, 0	# 1368
shadow_check_and_group.2820.17736:
	lw		x6, 32(x29)	# 1386
	lw		x7, 28(x29)	# 1386
	lw		x8, 24(x29)	# 1386
	lw		x9, 20(x29)	# 1386
	lw		x10, 16(x29)	# 1386
	lw		x11, 12(x29)	# 1386
	lw		x12, 8(x29)	# 1386
	flw		f1, 4(x29)	# 1386
	mul		x13, x30, x4	# 1386
	add		x13, x5, x13	# 1386
	lw		x13, 0(x13)	# 1386
	beq		x13, x9, beq.31761	# 1386
	mul		x9, x30, x13	# 1128
	addi	x9, x9, 60048	# 1128
	lw		x9, 0(x9)	# 1128
	mul		x14, x30, x11	# 1129
	addi	x14, x14, 60552	# 1129
	flw		f2, 0(x14)	# 1129
	lw		x14, 20(x9)	# 433
	mul		x15, x30, x11	# 438
	add		x14, x14, x15	# 438
	flw		f3, 0(x14)	# 438
	fsub	f2, f2, f3	# 1129
	mul		x14, x30, x12	# 1130
	addi	x14, x14, 60552	# 1130
	flw		f3, 0(x14)	# 1130
	lw		x14, 20(x9)	# 443
	mul		x15, x30, x12	# 448
	add		x14, x14, x15	# 448
	flw		f4, 0(x14)	# 448
	fsub	f3, f3, f4	# 1130
	mul		x14, x30, x8	# 1131
	addi	x14, x14, 60552	# 1131
	flw		f4, 0(x14)	# 1131
	lw		x14, 20(x9)	# 453
	mul		x15, x30, x8	# 458
	add		x14, x14, x15	# 458
	flw		f5, 0(x14)	# 458
	fsub	f4, f4, f5	# 1131
	mul		x14, x30, x13	# 1133
	addi	x14, x14, 60748	# 1133
	lw		x14, 0(x14)	# 1133
	lw		x15, 4(x9)	# 355
	beq		x15, x12, beq.31763	# 1135
	addi	x7, x0, 2	# 1137
	beq		x15, x7, beq.31765	# 1137
	mul		x7, x30, x11	# 1109
	add		x7, x14, x7	# 1109
	flw		f5, 0(x7)	# 1109
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31767	# 120
	addi	x7, x0, 0	# 1111
	jal		x0, feq_cont.31766	# 120
feq_else.31767:
	mul		x7, x30, x12	# 1113
	add		x7, x14, x7	# 1113
	flw		f6, 0(x7)	# 1113
	fmul	f6, f6, f2	# 1113
	mul		x7, x30, x8	# 1113
	add		x7, x14, x7	# 1113
	flw		f7, 0(x7)	# 1113
	fmul	f7, f7, f3	# 1113
	fadd	f6, f6, f7	# 1113
	mul		x7, x30, x10	# 1113
	add		x7, x14, x7	# 1113
	flw		f7, 0(x7)	# 1113
	fmul	f7, f7, f4	# 1113
	fadd	f6, f6, f7	# 1113
	fmul	f7, f2, f2	# 127
	lw		x7, 16(x9)	# 393
	mul		x15, x30, x11	# 398
	add		x7, x7, x15	# 398
	flw		f8, 0(x7)	# 398
	fmul	f7, f7, f8	# 969
	fmul	f8, f3, f3	# 127
	lw		x7, 16(x9)	# 403
	mul		x15, x30, x12	# 408
	add		x7, x7, x15	# 408
	flw		f9, 0(x7)	# 408
	fmul	f8, f8, f9	# 969
	fadd	f7, f7, f8	# 969
	fmul	f8, f4, f4	# 127
	lw		x7, 16(x9)	# 413
	mul		x15, x30, x8	# 418
	add		x7, x7, x15	# 418
	flw		f9, 0(x7)	# 418
	fmul	f8, f8, f9	# 969
	fadd	f7, f7, f8	# 969
	lw		x7, 12(x9)	# 384
	beq		x7, x11, beq.31769	# 971
	fmul	f8, f3, f4	# 975
	lw		x7, 36(x9)	# 513
	mul		x15, x30, x11	# 518
	add		x7, x7, x15	# 518
	flw		f9, 0(x7)	# 518
	fmul	f8, f8, f9	# 975
	fadd	f7, f7, f8	# 974
	fmul	f4, f4, f2	# 976
	lw		x7, 36(x9)	# 523
	mul		x15, x30, x12	# 528
	add		x7, x7, x15	# 528
	flw		f8, 0(x7)	# 528
	fmul	f4, f4, f8	# 976
	fadd	f4, f7, f4	# 974
	fmul	f2, f2, f3	# 977
	lw		x7, 36(x9)	# 533
	mul		x15, x30, x8	# 538
	add		x7, x7, x15	# 538
	flw		f3, 0(x7)	# 538
	fmul	f2, f2, f3	# 977
	fadd	f2, f4, f2	# 974
	jal		x0, beq_cont.31768	# 971
beq.31769:
	fadd	f2, f0, f7	# 972
beq_cont.31768:
	lw		x7, 4(x9)	# 355
	beq		x7, x10, beq.31771	# 1115
	jal		x0, beq_cont.31770	# 1115
beq.31771:
	fadd	f3, f0, f16	# 1115
	fsub	f2, f2, f3	# 1115
beq_cont.31770:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1116
	fsub	f2, f3, f2	# 1116
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.31773	# 121
	addi	x7, x0, 0	# 1123
	jal		x0, fle_cont.31772	# 121
fle_else.31773:
	lw		x7, 24(x9)	# 375
	beq		x7, x11, beq.31775	# 1118
	addi	x7, x0, 0	# 1119
	fsqrt	f1, f2	# 1119
	fadd	f1, f6, f1	# 1119
	addi	x9, x0, 4	# 1119
	mul		x9, x30, x9	# 1119
	add		x9, x14, x9	# 1119
	flw		f2, 0(x9)	# 1119
	fmul	f1, f1, f2	# 1119
	mul		x7, x30, x7	# 1119
	addi	x7, x7, 60540	# 1119
	fsw		f1, 0(x7)	# 1119
	jal		x0, beq_cont.31774	# 1118
beq.31775:
	addi	x7, x0, 0	# 1121
	fsqrt	f1, f2	# 1121
	fsub	f1, f6, f1	# 1121
	addi	x9, x0, 4	# 1121
	mul		x9, x30, x9	# 1121
	add		x9, x14, x9	# 1121
	flw		f2, 0(x9)	# 1121
	fmul	f1, f1, f2	# 1121
	mul		x7, x30, x7	# 1121
	addi	x7, x7, 60540	# 1121
	fsw		f1, 0(x7)	# 1121
beq_cont.31774:
	addi	x7, x0, 1	# 1122
fle_cont.31772:
feq_cont.31766:
	jal		x0, beq_cont.31764	# 1137
beq.31765:
	mul		x7, x30, x11	# 1099
	add		x7, x14, x7	# 1099
	flw		f5, 0(x7)	# 1099
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31777	# 122
	addi	x7, x0, 0	# 1103
	jal		x0, fle_cont.31776	# 122
fle_else.31777:
	mul		x7, x30, x12	# 1101
	add		x7, x14, x7	# 1101
	flw		f1, 0(x7)	# 1101
	fmul	f1, f1, f2	# 1101
	mul		x7, x30, x8	# 1101
	add		x7, x14, x7	# 1101
	flw		f2, 0(x7)	# 1101
	fmul	f2, f2, f3	# 1101
	fadd	f1, f1, f2	# 1101
	mul		x7, x30, x10	# 1101
	add		x7, x14, x7	# 1101
	flw		f2, 0(x7)	# 1101
	fmul	f2, f2, f4	# 1101
	fadd	f1, f1, f2	# 1101
	mul		x7, x30, x11	# 1100
	addi	x7, x7, 60540	# 1100
	fsw		f1, 0(x7)	# 1100
	addi	x7, x0, 1	# 1102
fle_cont.31776:
beq_cont.31764:
	jal		x0, beq_cont.31762	# 1135
beq.31763:
	mul		x15, x30, x11	# 1066
	add		x15, x14, x15	# 1066
	flw		f5, 0(x15)	# 1066
	fsub	f5, f5, f2	# 1066
	mul		x15, x30, x12	# 1066
	add		x15, x14, x15	# 1066
	flw		f6, 0(x15)	# 1066
	fmul	f5, f5, f6	# 1066
	mul		x15, x30, x12	# 1068
	addi	x15, x15, 60736	# 1068
	flw		f6, 0(x15)	# 1068
	fmul	f6, f5, f6	# 1068
	fadd	f6, f6, f3	# 1068
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31778	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31778:
	lw		x15, 16(x9)	# 403
	mul		x16, x30, x12	# 408
	add		x15, x15, x16	# 408
	flw		f7, 0(x15)	# 408
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31780	# 125
	addi	x15, x0, 0	# 1072
	jal		x0, fle_cont.31779	# 125
fle_else.31780:
	mul		x15, x30, x8	# 1069
	addi	x15, x15, 60736	# 1069
	flw		f6, 0(x15)	# 1069
	fmul	f6, f5, f6	# 1069
	fadd	f6, f6, f4	# 1069
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31781	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31781:
	lw		x15, 16(x9)	# 413
	mul		x16, x30, x8	# 418
	add		x15, x15, x16	# 418
	flw		f7, 0(x15)	# 418
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31783	# 125
	addi	x15, x0, 0	# 1071
	jal		x0, fle_cont.31782	# 125
fle_else.31783:
	mul		x15, x30, x12	# 1070
	add		x15, x14, x15	# 1070
	flw		f6, 0(x15)	# 1070
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.31785	# 120
	addi	x15, x0, 0	# 1070
	jal		x0, feq_cont.31784	# 120
feq_else.31785:
	addi	x15, x0, 1	# 1070
feq_cont.31784:
fle_cont.31782:
fle_cont.31779:
	beq		x15, x11, beq.31787	# 1067
	mul		x7, x30, x11	# 1074
	addi	x7, x7, 60540	# 1074
	fsw		f5, 0(x7)	# 1074
	addi	x7, x0, 1	# 1074
	jal		x0, beq_cont.31786	# 1067
beq.31787:
	mul		x15, x30, x8	# 1075
	add		x15, x14, x15	# 1075
	flw		f5, 0(x15)	# 1075
	fsub	f5, f5, f3	# 1075
	mul		x15, x30, x10	# 1075
	add		x15, x14, x15	# 1075
	flw		f6, 0(x15)	# 1075
	fmul	f5, f5, f6	# 1075
	mul		x15, x30, x11	# 1077
	addi	x15, x15, 60736	# 1077
	flw		f6, 0(x15)	# 1077
	fmul	f7, f5, f6	# 1077
	fadd	f7, f7, f2	# 1077
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.31788	# 124
	fsub	f7, f0, f7	# 124
fle_cont.31788:
	lw		x15, 16(x9)	# 393
	mul		x16, x30, x11	# 398
	add		x15, x15, x16	# 398
	flw		f8, 0(x15)	# 398
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.31790	# 125
	addi	x10, x0, 0	# 1081
	jal		x0, fle_cont.31789	# 125
fle_else.31790:
	mul		x15, x30, x8	# 1078
	addi	x15, x15, 60736	# 1078
	flw		f7, 0(x15)	# 1078
	fmul	f7, f5, f7	# 1078
	fadd	f7, f7, f4	# 1078
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.31791	# 124
	fsub	f7, f0, f7	# 124
fle_cont.31791:
	lw		x15, 16(x9)	# 413
	mul		x16, x30, x8	# 418
	add		x15, x15, x16	# 418
	flw		f8, 0(x15)	# 418
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.31793	# 125
	addi	x10, x0, 0	# 1080
	jal		x0, fle_cont.31792	# 125
fle_else.31793:
	mul		x10, x30, x10	# 1079
	add		x10, x14, x10	# 1079
	flw		f7, 0(x10)	# 1079
	feq		x31, f7, f1	# 120
	beq		x31, x0, feq_else.31795	# 120
	addi	x10, x0, 0	# 1079
	jal		x0, feq_cont.31794	# 120
feq_else.31795:
	addi	x10, x0, 1	# 1079
feq_cont.31794:
fle_cont.31792:
fle_cont.31789:
	beq		x10, x11, beq.31797	# 1076
	mul		x7, x30, x11	# 1083
	addi	x7, x7, 60540	# 1083
	fsw		f5, 0(x7)	# 1083
	addi	x7, x0, 2	# 1083
	jal		x0, beq_cont.31796	# 1076
beq.31797:
	addi	x10, x0, 4	# 1084
	mul		x10, x30, x10	# 1084
	add		x10, x14, x10	# 1084
	flw		f5, 0(x10)	# 1084
	fsub	f4, f5, f4	# 1084
	mul		x10, x30, x7	# 1084
	add		x10, x14, x10	# 1084
	flw		f5, 0(x10)	# 1084
	fmul	f4, f4, f5	# 1084
	fmul	f5, f4, f6	# 1086
	fadd	f2, f5, f2	# 1086
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.31798	# 124
	fsub	f2, f0, f2	# 124
fle_cont.31798:
	lw		x10, 16(x9)	# 393
	mul		x15, x30, x11	# 398
	add		x10, x10, x15	# 398
	flw		f5, 0(x10)	# 398
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.31800	# 125
	addi	x7, x0, 0	# 1090
	jal		x0, fle_cont.31799	# 125
fle_else.31800:
	mul		x10, x30, x12	# 1087
	addi	x10, x10, 60736	# 1087
	flw		f2, 0(x10)	# 1087
	fmul	f2, f4, f2	# 1087
	fadd	f2, f2, f3	# 1087
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.31801	# 124
	fsub	f2, f0, f2	# 124
fle_cont.31801:
	lw		x9, 16(x9)	# 403
	mul		x10, x30, x12	# 408
	add		x9, x9, x10	# 408
	flw		f3, 0(x9)	# 408
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.31803	# 125
	addi	x7, x0, 0	# 1089
	jal		x0, fle_cont.31802	# 125
fle_else.31803:
	mul		x7, x30, x7	# 1088
	add		x7, x14, x7	# 1088
	flw		f2, 0(x7)	# 1088
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.31805	# 120
	addi	x7, x0, 0	# 1088
	jal		x0, feq_cont.31804	# 120
feq_else.31805:
	addi	x7, x0, 1	# 1088
feq_cont.31804:
fle_cont.31802:
fle_cont.31799:
	beq		x7, x11, beq.31807	# 1085
	mul		x7, x30, x11	# 1092
	addi	x7, x7, 60540	# 1092
	fsw		f4, 0(x7)	# 1092
	addi	x7, x0, 3	# 1092
	jal		x0, beq_cont.31806	# 1085
beq.31807:
	addi	x7, x0, 0	# 1094
beq_cont.31806:
beq_cont.31796:
beq_cont.31786:
beq_cont.31762:
	mul		x9, x30, x11	# 1391
	addi	x9, x9, 60540	# 1391
	flw		f1, 0(x9)	# 1391
	beq		x7, x11, beq.31809	# 1392
	lui		x7, %hi(l.26227)	# 1392
	ori		x7, x0, %lo(l.26227)	# 1392
	flw		f2, 0(x7)	# 1392
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.31811	# 125
	addi	x7, x0, 0	# 125
	jal		x0, fle_cont.31810	# 125
fle_else.31811:
	addi	x7, x0, 1	# 125
fle_cont.31810:
	jal		x0, beq_cont.31808	# 1392
beq.31809:
	addi	x7, x0, 0	# 1392
beq_cont.31808:
	beq		x7, x11, beq.31812	# 1392
	lui		x7, %hi(l.26229)	# 1395
	ori		x7, x0, %lo(l.26229)	# 1395
	flw		f2, 0(x7)	# 1395
	fadd	f1, f1, f2	# 1395
	mul		x7, x30, x11	# 1396
	addi	x7, x7, 60312	# 1396
	flw		f2, 0(x7)	# 1396
	fmul	f2, f2, f1	# 1396
	mul		x7, x30, x11	# 1396
	addi	x7, x7, 60552	# 1396
	flw		f3, 0(x7)	# 1396
	fadd	f2, f2, f3	# 1396
	mul		x7, x30, x12	# 1397
	addi	x7, x7, 60312	# 1397
	flw		f3, 0(x7)	# 1397
	fmul	f3, f3, f1	# 1397
	mul		x7, x30, x12	# 1397
	addi	x7, x7, 60552	# 1397
	flw		f4, 0(x7)	# 1397
	fadd	f3, f3, f4	# 1397
	mul		x7, x30, x8	# 1398
	addi	x7, x7, 60312	# 1398
	flw		f4, 0(x7)	# 1398
	fmul	f1, f4, f1	# 1398
	mul		x7, x30, x8	# 1398
	addi	x7, x7, 60552	# 1398
	flw		f4, 0(x7)	# 1398
	fadd	f1, f1, f4	# 1398
	sw		x5, 0(x2)	# 1399
	sw		x29, -4(x2)	# 1399
	sw		x12, -8(x2)	# 1399
	sw		x4, -12(x2)	# 1399
	sw		x11, -16(x2)	# 1399
	addi	x4, x11, 0
	addi	x29, x6, 0
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -20(x2)	# 1399
	addi	x2, x2, -24	# 1399
	lw		x31, 0(x29)	# 1399
	jalr	x1, x31, 0	# 1399
	addi	x2, x2, 24	# 1399
	lw		x1, -20(x2)	# 1399
	lw		x5, -16(x2)	# 1399
	beq		x4, x5, beq.31813	# 1399
	addi	x4, x0, 1	# 1400
	jalr	x0, x1, 0	# 1400
beq.31813:
	lw		x4, -8(x2)	# 1402
	lw		x5, -12(x2)	# 1402
	add		x4, x5, x4	# 1402
	lw		x5, 0(x2)	# 1402
	lw		x29, -4(x2)	# 1402
	lw		x31, 0(x29)	# 1402
	jalr	x0, x31, 0	# 1402
beq.31812:
	mul		x6, x30, x13	# 1408
	addi	x6, x6, 60048	# 1408
	lw		x6, 0(x6)	# 1408
	lw		x6, 24(x6)	# 375
	beq		x6, x11, beq.31814	# 1408
	add		x4, x4, x12	# 1409
	lw		x31, 0(x29)	# 1409
	jalr	x0, x31, 0	# 1409
beq.31814:
	addi	x4, x0, 0	# 1411
	jalr	x0, x1, 0	# 1411
beq.31761:
	addi	x4, x0, 0	# 1387
	jalr	x0, x1, 0	# 1387
shadow_check_one_or_group.2823.17739:
	lw		x6, 16(x29)	# 1416
	lw		x7, 12(x29)	# 1416
	lw		x8, 8(x29)	# 1416
	lw		x9, 4(x29)	# 1416
	mul		x10, x30, x4	# 1416
	add		x10, x5, x10	# 1416
	lw		x10, 0(x10)	# 1416
	beq		x10, x7, beq.31815	# 1417
	mul		x7, x30, x10	# 1420
	addi	x7, x7, 60332	# 1420
	lw		x7, 0(x7)	# 1420
	sw		x5, 0(x2)	# 1421
	sw		x29, -4(x2)	# 1421
	sw		x9, -8(x2)	# 1421
	sw		x4, -12(x2)	# 1421
	sw		x8, -16(x2)	# 1421
	addi	x5, x7, 0
	addi	x4, x8, 0
	addi	x29, x6, 0
	sw		x1, -20(x2)	# 1421
	addi	x2, x2, -24	# 1421
	lw		x31, 0(x29)	# 1421
	jalr	x1, x31, 0	# 1421
	addi	x2, x2, 24	# 1421
	lw		x1, -20(x2)	# 1421
	lw		x5, -16(x2)	# 1422
	beq		x4, x5, beq.31816	# 1422
	addi	x4, x0, 1	# 1423
	jalr	x0, x1, 0	# 1423
beq.31816:
	lw		x4, -8(x2)	# 1425
	lw		x5, -12(x2)	# 1425
	add		x4, x5, x4	# 1425
	lw		x5, 0(x2)	# 1425
	lw		x29, -4(x2)	# 1425
	lw		x31, 0(x29)	# 1425
	jalr	x0, x31, 0	# 1425
beq.31815:
	addi	x4, x0, 0	# 1418
	jalr	x0, x1, 0	# 1418
shadow_check_one_or_matrix.2826.17742:
	lw		x6, 32(x29)	# 1431
	lw		x7, 28(x29)	# 1431
	lw		x8, 24(x29)	# 1431
	lw		x9, 20(x29)	# 1431
	lw		x10, 16(x29)	# 1431
	lw		x11, 12(x29)	# 1431
	lw		x12, 8(x29)	# 1431
	flw		f1, 4(x29)	# 1431
	mul		x13, x30, x4	# 1431
	add		x13, x5, x13	# 1431
	lw		x13, 0(x13)	# 1431
	mul		x14, x30, x11	# 1432
	add		x14, x13, x14	# 1432
	lw		x14, 0(x14)	# 1432
	beq		x14, x9, beq.31817	# 1433
	addi	x9, x0, 99	# 1437
	sw		x13, 0(x2)	# 1437
	sw		x6, -4(x2)	# 1437
	sw		x5, -8(x2)	# 1437
	sw		x29, -12(x2)	# 1437
	sw		x12, -16(x2)	# 1437
	sw		x4, -20(x2)	# 1437
	sw		x11, -24(x2)	# 1437
	beq		x14, x9, beq.31819	# 1437
	mul		x9, x30, x14	# 1128
	addi	x9, x9, 60048	# 1128
	lw		x9, 0(x9)	# 1128
	addi	x15, x0, 0	# 1129
	mul		x15, x30, x15	# 1129
	addi	x15, x15, 60552	# 1129
	flw		f2, 0(x15)	# 1129
	lw		x15, 20(x9)	# 433
	mul		x16, x30, x11	# 438
	add		x15, x15, x16	# 438
	flw		f3, 0(x15)	# 438
	fsub	f2, f2, f3	# 1129
	addi	x15, x0, 1	# 1130
	mul		x15, x30, x15	# 1130
	addi	x15, x15, 60552	# 1130
	flw		f3, 0(x15)	# 1130
	lw		x15, 20(x9)	# 443
	mul		x16, x30, x12	# 448
	add		x15, x15, x16	# 448
	flw		f4, 0(x15)	# 448
	fsub	f3, f3, f4	# 1130
	addi	x15, x0, 2	# 1131
	mul		x15, x30, x15	# 1131
	addi	x15, x15, 60552	# 1131
	flw		f4, 0(x15)	# 1131
	lw		x15, 20(x9)	# 453
	mul		x16, x30, x8	# 458
	add		x15, x15, x16	# 458
	flw		f5, 0(x15)	# 458
	fsub	f4, f4, f5	# 1131
	mul		x14, x30, x14	# 1133
	addi	x14, x14, 60748	# 1133
	lw		x14, 0(x14)	# 1133
	lw		x15, 4(x9)	# 355
	addi	x16, x0, 1	# 1135
	beq		x15, x16, beq.31821	# 1135
	addi	x7, x0, 2	# 1137
	beq		x15, x7, beq.31823	# 1137
	mul		x7, x30, x11	# 1109
	add		x7, x14, x7	# 1109
	flw		f5, 0(x7)	# 1109
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31825	# 120
	addi	x7, x0, 0	# 1111
	jal		x0, feq_cont.31824	# 120
feq_else.31825:
	mul		x7, x30, x12	# 1113
	add		x7, x14, x7	# 1113
	flw		f6, 0(x7)	# 1113
	fmul	f6, f6, f2	# 1113
	mul		x7, x30, x8	# 1113
	add		x7, x14, x7	# 1113
	flw		f7, 0(x7)	# 1113
	fmul	f7, f7, f3	# 1113
	fadd	f6, f6, f7	# 1113
	mul		x7, x30, x10	# 1113
	add		x7, x14, x7	# 1113
	flw		f7, 0(x7)	# 1113
	fmul	f7, f7, f4	# 1113
	fadd	f6, f6, f7	# 1113
	fmul	f7, f2, f2	# 127
	lw		x7, 16(x9)	# 393
	mul		x15, x30, x11	# 398
	add		x7, x7, x15	# 398
	flw		f8, 0(x7)	# 398
	fmul	f7, f7, f8	# 969
	fmul	f8, f3, f3	# 127
	lw		x7, 16(x9)	# 403
	mul		x15, x30, x12	# 408
	add		x7, x7, x15	# 408
	flw		f9, 0(x7)	# 408
	fmul	f8, f8, f9	# 969
	fadd	f7, f7, f8	# 969
	fmul	f8, f4, f4	# 127
	lw		x7, 16(x9)	# 413
	mul		x15, x30, x8	# 418
	add		x7, x7, x15	# 418
	flw		f9, 0(x7)	# 418
	fmul	f8, f8, f9	# 969
	fadd	f7, f7, f8	# 969
	lw		x7, 12(x9)	# 384
	beq		x7, x11, beq.31827	# 971
	fmul	f8, f3, f4	# 975
	lw		x7, 36(x9)	# 513
	mul		x15, x30, x11	# 518
	add		x7, x7, x15	# 518
	flw		f9, 0(x7)	# 518
	fmul	f8, f8, f9	# 975
	fadd	f7, f7, f8	# 974
	fmul	f4, f4, f2	# 976
	lw		x7, 36(x9)	# 523
	mul		x15, x30, x12	# 528
	add		x7, x7, x15	# 528
	flw		f8, 0(x7)	# 528
	fmul	f4, f4, f8	# 976
	fadd	f4, f7, f4	# 974
	fmul	f2, f2, f3	# 977
	lw		x7, 36(x9)	# 533
	mul		x8, x30, x8	# 538
	add		x7, x7, x8	# 538
	flw		f3, 0(x7)	# 538
	fmul	f2, f2, f3	# 977
	fadd	f2, f4, f2	# 974
	jal		x0, beq_cont.31826	# 971
beq.31827:
	fadd	f2, f0, f7	# 972
beq_cont.31826:
	lw		x7, 4(x9)	# 355
	beq		x7, x10, beq.31829	# 1115
	jal		x0, beq_cont.31828	# 1115
beq.31829:
	fadd	f3, f0, f16	# 1115
	fsub	f2, f2, f3	# 1115
beq_cont.31828:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1116
	fsub	f2, f3, f2	# 1116
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.31831	# 121
	addi	x7, x0, 0	# 1123
	jal		x0, fle_cont.31830	# 121
fle_else.31831:
	lw		x7, 24(x9)	# 375
	beq		x7, x11, beq.31833	# 1118
	addi	x7, x0, 0	# 1119
	fsqrt	f1, f2	# 1119
	fadd	f1, f6, f1	# 1119
	addi	x8, x0, 4	# 1119
	mul		x8, x30, x8	# 1119
	add		x8, x14, x8	# 1119
	flw		f2, 0(x8)	# 1119
	fmul	f1, f1, f2	# 1119
	mul		x7, x30, x7	# 1119
	addi	x7, x7, 60540	# 1119
	fsw		f1, 0(x7)	# 1119
	jal		x0, beq_cont.31832	# 1118
beq.31833:
	addi	x7, x0, 0	# 1121
	fsqrt	f1, f2	# 1121
	fsub	f1, f6, f1	# 1121
	addi	x8, x0, 4	# 1121
	mul		x8, x30, x8	# 1121
	add		x8, x14, x8	# 1121
	flw		f2, 0(x8)	# 1121
	fmul	f1, f1, f2	# 1121
	mul		x7, x30, x7	# 1121
	addi	x7, x7, 60540	# 1121
	fsw		f1, 0(x7)	# 1121
beq_cont.31832:
	addi	x7, x0, 1	# 1122
fle_cont.31830:
feq_cont.31824:
	jal		x0, beq_cont.31822	# 1137
beq.31823:
	mul		x7, x30, x11	# 1099
	add		x7, x14, x7	# 1099
	flw		f5, 0(x7)	# 1099
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31835	# 122
	addi	x7, x0, 0	# 1103
	jal		x0, fle_cont.31834	# 122
fle_else.31835:
	mul		x7, x30, x12	# 1101
	add		x7, x14, x7	# 1101
	flw		f1, 0(x7)	# 1101
	fmul	f1, f1, f2	# 1101
	mul		x7, x30, x8	# 1101
	add		x7, x14, x7	# 1101
	flw		f2, 0(x7)	# 1101
	fmul	f2, f2, f3	# 1101
	fadd	f1, f1, f2	# 1101
	mul		x7, x30, x10	# 1101
	add		x7, x14, x7	# 1101
	flw		f2, 0(x7)	# 1101
	fmul	f2, f2, f4	# 1101
	fadd	f1, f1, f2	# 1101
	mul		x7, x30, x11	# 1100
	addi	x7, x7, 60540	# 1100
	fsw		f1, 0(x7)	# 1100
	addi	x7, x0, 1	# 1102
fle_cont.31834:
beq_cont.31822:
	jal		x0, beq_cont.31820	# 1135
beq.31821:
	mul		x15, x30, x11	# 1066
	add		x15, x14, x15	# 1066
	flw		f5, 0(x15)	# 1066
	fsub	f5, f5, f2	# 1066
	mul		x15, x30, x12	# 1066
	add		x15, x14, x15	# 1066
	flw		f6, 0(x15)	# 1066
	fmul	f5, f5, f6	# 1066
	mul		x15, x30, x12	# 1068
	addi	x15, x15, 60736	# 1068
	flw		f6, 0(x15)	# 1068
	fmul	f6, f5, f6	# 1068
	fadd	f6, f6, f3	# 1068
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31836	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31836:
	lw		x15, 16(x9)	# 403
	mul		x16, x30, x12	# 408
	add		x15, x15, x16	# 408
	flw		f7, 0(x15)	# 408
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31838	# 125
	addi	x15, x0, 0	# 1072
	jal		x0, fle_cont.31837	# 125
fle_else.31838:
	mul		x15, x30, x8	# 1069
	addi	x15, x15, 60736	# 1069
	flw		f6, 0(x15)	# 1069
	fmul	f6, f5, f6	# 1069
	fadd	f6, f6, f4	# 1069
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31839	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31839:
	lw		x15, 16(x9)	# 413
	mul		x16, x30, x8	# 418
	add		x15, x15, x16	# 418
	flw		f7, 0(x15)	# 418
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31841	# 125
	addi	x15, x0, 0	# 1071
	jal		x0, fle_cont.31840	# 125
fle_else.31841:
	mul		x15, x30, x12	# 1070
	add		x15, x14, x15	# 1070
	flw		f6, 0(x15)	# 1070
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.31843	# 120
	addi	x15, x0, 0	# 1070
	jal		x0, feq_cont.31842	# 120
feq_else.31843:
	addi	x15, x0, 1	# 1070
feq_cont.31842:
fle_cont.31840:
fle_cont.31837:
	beq		x15, x11, beq.31845	# 1067
	mul		x7, x30, x11	# 1074
	addi	x7, x7, 60540	# 1074
	fsw		f5, 0(x7)	# 1074
	addi	x7, x0, 1	# 1074
	jal		x0, beq_cont.31844	# 1067
beq.31845:
	mul		x15, x30, x8	# 1075
	add		x15, x14, x15	# 1075
	flw		f5, 0(x15)	# 1075
	fsub	f5, f5, f3	# 1075
	mul		x15, x30, x10	# 1075
	add		x15, x14, x15	# 1075
	flw		f6, 0(x15)	# 1075
	fmul	f5, f5, f6	# 1075
	mul		x15, x30, x11	# 1077
	addi	x15, x15, 60736	# 1077
	flw		f6, 0(x15)	# 1077
	fmul	f7, f5, f6	# 1077
	fadd	f7, f7, f2	# 1077
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.31846	# 124
	fsub	f7, f0, f7	# 124
fle_cont.31846:
	lw		x15, 16(x9)	# 393
	mul		x16, x30, x11	# 398
	add		x15, x15, x16	# 398
	flw		f8, 0(x15)	# 398
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.31848	# 125
	addi	x8, x0, 0	# 1081
	jal		x0, fle_cont.31847	# 125
fle_else.31848:
	mul		x15, x30, x8	# 1078
	addi	x15, x15, 60736	# 1078
	flw		f7, 0(x15)	# 1078
	fmul	f7, f5, f7	# 1078
	fadd	f7, f7, f4	# 1078
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.31849	# 124
	fsub	f7, f0, f7	# 124
fle_cont.31849:
	lw		x15, 16(x9)	# 413
	mul		x8, x30, x8	# 418
	add		x8, x15, x8	# 418
	flw		f8, 0(x8)	# 418
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.31851	# 125
	addi	x8, x0, 0	# 1080
	jal		x0, fle_cont.31850	# 125
fle_else.31851:
	mul		x8, x30, x10	# 1079
	add		x8, x14, x8	# 1079
	flw		f7, 0(x8)	# 1079
	feq		x31, f7, f1	# 120
	beq		x31, x0, feq_else.31853	# 120
	addi	x8, x0, 0	# 1079
	jal		x0, feq_cont.31852	# 120
feq_else.31853:
	addi	x8, x0, 1	# 1079
feq_cont.31852:
fle_cont.31850:
fle_cont.31847:
	beq		x8, x11, beq.31855	# 1076
	mul		x7, x30, x11	# 1083
	addi	x7, x7, 60540	# 1083
	fsw		f5, 0(x7)	# 1083
	addi	x7, x0, 2	# 1083
	jal		x0, beq_cont.31854	# 1076
beq.31855:
	addi	x8, x0, 4	# 1084
	mul		x8, x30, x8	# 1084
	add		x8, x14, x8	# 1084
	flw		f5, 0(x8)	# 1084
	fsub	f4, f5, f4	# 1084
	mul		x8, x30, x7	# 1084
	add		x8, x14, x8	# 1084
	flw		f5, 0(x8)	# 1084
	fmul	f4, f4, f5	# 1084
	fmul	f5, f4, f6	# 1086
	fadd	f2, f5, f2	# 1086
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.31856	# 124
	fsub	f2, f0, f2	# 124
fle_cont.31856:
	lw		x8, 16(x9)	# 393
	mul		x10, x30, x11	# 398
	add		x8, x8, x10	# 398
	flw		f5, 0(x8)	# 398
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.31858	# 125
	addi	x7, x0, 0	# 1090
	jal		x0, fle_cont.31857	# 125
fle_else.31858:
	mul		x8, x30, x12	# 1087
	addi	x8, x8, 60736	# 1087
	flw		f2, 0(x8)	# 1087
	fmul	f2, f4, f2	# 1087
	fadd	f2, f2, f3	# 1087
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.31859	# 124
	fsub	f2, f0, f2	# 124
fle_cont.31859:
	lw		x8, 16(x9)	# 403
	mul		x9, x30, x12	# 408
	add		x8, x8, x9	# 408
	flw		f3, 0(x8)	# 408
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.31861	# 125
	addi	x7, x0, 0	# 1089
	jal		x0, fle_cont.31860	# 125
fle_else.31861:
	mul		x7, x30, x7	# 1088
	add		x7, x14, x7	# 1088
	flw		f2, 0(x7)	# 1088
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.31863	# 120
	addi	x7, x0, 0	# 1088
	jal		x0, feq_cont.31862	# 120
feq_else.31863:
	addi	x7, x0, 1	# 1088
feq_cont.31862:
fle_cont.31860:
fle_cont.31857:
	beq		x7, x11, beq.31865	# 1085
	mul		x7, x30, x11	# 1092
	addi	x7, x7, 60540	# 1092
	fsw		f4, 0(x7)	# 1092
	addi	x7, x0, 3	# 1092
	jal		x0, beq_cont.31864	# 1085
beq.31865:
	addi	x7, x0, 0	# 1094
beq_cont.31864:
beq_cont.31854:
beq_cont.31844:
beq_cont.31820:
	addi	x8, x0, 0	# 1443
	beq		x7, x8, beq.31867	# 1443
	addi	x7, x0, 0	# 1444
	mul		x7, x30, x7	# 1444
	addi	x7, x7, 60540	# 1444
	flw		f1, 0(x7)	# 1444
	fadd	f2, f0, f23	# 1444
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.31869	# 125
	addi	x4, x0, 0	# 1448
	jal		x0, fle_cont.31868	# 125
fle_else.31869:
	addi	x7, x0, 1	# 1445
	addi	x5, x13, 0
	addi	x4, x7, 0
	addi	x29, x6, 0
	sw		x1, -28(x2)	# 1445
	addi	x2, x2, -32	# 1445
	lw		x31, 0(x29)	# 1445
	jalr	x1, x31, 0	# 1445
	addi	x2, x2, 32	# 1445
	lw		x1, -28(x2)	# 1445
	addi	x5, x0, 0	# 1445
	beq		x4, x5, beq.31871	# 1445
	addi	x4, x0, 1	# 1446
	jal		x0, beq_cont.31870	# 1445
beq.31871:
	addi	x4, x0, 0	# 1447
beq_cont.31870:
fle_cont.31868:
	jal		x0, beq_cont.31866	# 1443
beq.31867:
	addi	x4, x0, 0	# 1449
beq_cont.31866:
	jal		x0, beq_cont.31818	# 1437
beq.31819:
	addi	x4, x0, 1	# 1438
beq_cont.31818:
	lw		x5, -24(x2)	# 1436
	beq		x4, x5, beq.31872	# 1436
	lw		x4, -16(x2)	# 1451
	lw		x6, 0(x2)	# 1451
	lw		x29, -4(x2)	# 1451
	addi	x5, x6, 0
	sw		x1, -28(x2)	# 1451
	addi	x2, x2, -32	# 1451
	lw		x31, 0(x29)	# 1451
	jalr	x1, x31, 0	# 1451
	addi	x2, x2, 32	# 1451
	lw		x1, -28(x2)	# 1451
	lw		x5, -24(x2)	# 1451
	beq		x4, x5, beq.31873	# 1451
	addi	x4, x0, 1	# 1452
	jalr	x0, x1, 0	# 1452
beq.31873:
	lw		x4, -16(x2)	# 1454
	lw		x5, -20(x2)	# 1454
	add		x4, x5, x4	# 1454
	lw		x5, -8(x2)	# 1454
	lw		x29, -12(x2)	# 1454
	lw		x31, 0(x29)	# 1454
	jalr	x0, x31, 0	# 1454
beq.31872:
	lw		x4, -16(x2)	# 1456
	lw		x5, -20(x2)	# 1456
	add		x4, x5, x4	# 1456
	lw		x5, -8(x2)	# 1456
	lw		x29, -12(x2)	# 1456
	lw		x31, 0(x29)	# 1456
	jalr	x0, x31, 0	# 1456
beq.31817:
	addi	x4, x0, 0	# 1434
	jalr	x0, x1, 0	# 1434
solve_each_element.2829.17745:
	lw		x7, 28(x29)	# 1467
	lw		x8, 24(x29)	# 1467
	lw		x9, 20(x29)	# 1467
	lw		x10, 16(x29)	# 1467
	lw		x11, 12(x29)	# 1467
	lw		x12, 8(x29)	# 1467
	flw		f1, 4(x29)	# 1467
	mul		x13, x30, x4	# 1467
	add		x13, x5, x13	# 1467
	lw		x13, 0(x13)	# 1467
	beq		x13, x9, beq.31874	# 1468
	mul		x9, x30, x13	# 1034
	addi	x9, x9, 60048	# 1034
	lw		x9, 0(x9)	# 1034
	mul		x14, x30, x11	# 1036
	addi	x14, x14, 60636	# 1036
	flw		f2, 0(x14)	# 1036
	lw		x14, 20(x9)	# 433
	mul		x15, x30, x11	# 438
	add		x14, x14, x15	# 438
	flw		f3, 0(x14)	# 438
	fsub	f2, f2, f3	# 1036
	mul		x14, x30, x12	# 1037
	addi	x14, x14, 60636	# 1037
	flw		f3, 0(x14)	# 1037
	lw		x14, 20(x9)	# 443
	mul		x15, x30, x12	# 448
	add		x14, x14, x15	# 448
	flw		f4, 0(x14)	# 448
	fsub	f3, f3, f4	# 1037
	mul		x14, x30, x8	# 1038
	addi	x14, x14, 60636	# 1038
	flw		f4, 0(x14)	# 1038
	lw		x14, 20(x9)	# 453
	mul		x15, x30, x8	# 458
	add		x14, x14, x15	# 458
	flw		f5, 0(x14)	# 458
	fsub	f4, f4, f5	# 1038
	lw		x14, 4(x9)	# 355
	beq		x14, x12, beq.31876	# 1041
	addi	x15, x0, 2	# 1042
	beq		x14, x15, beq.31878	# 1042
	mul		x14, x30, x11	# 1008
	add		x14, x6, x14	# 1008
	flw		f5, 0(x14)	# 1008
	mul		x14, x30, x12	# 1008
	add		x14, x6, x14	# 1008
	flw		f6, 0(x14)	# 1008
	mul		x14, x30, x8	# 1008
	add		x14, x6, x14	# 1008
	flw		f7, 0(x14)	# 1008
	fmul	f8, f5, f5	# 127
	lw		x14, 16(x9)	# 393
	mul		x15, x30, x11	# 398
	add		x14, x14, x15	# 398
	flw		f9, 0(x14)	# 398
	fmul	f8, f8, f9	# 969
	fmul	f9, f6, f6	# 127
	lw		x14, 16(x9)	# 403
	mul		x15, x30, x12	# 408
	add		x14, x14, x15	# 408
	flw		f10, 0(x14)	# 408
	fmul	f9, f9, f10	# 969
	fadd	f8, f8, f9	# 969
	fmul	f9, f7, f7	# 127
	lw		x14, 16(x9)	# 413
	mul		x15, x30, x8	# 418
	add		x14, x14, x15	# 418
	flw		f10, 0(x14)	# 418
	fmul	f9, f9, f10	# 969
	fadd	f8, f8, f9	# 969
	lw		x14, 12(x9)	# 384
	beq		x14, x11, beq.31880	# 971
	fmul	f9, f6, f7	# 975
	lw		x14, 36(x9)	# 513
	mul		x15, x30, x11	# 518
	add		x14, x14, x15	# 518
	flw		f10, 0(x14)	# 518
	fmul	f9, f9, f10	# 975
	fadd	f8, f8, f9	# 974
	fmul	f7, f7, f5	# 976
	lw		x14, 36(x9)	# 523
	mul		x15, x30, x12	# 528
	add		x14, x14, x15	# 528
	flw		f9, 0(x14)	# 528
	fmul	f7, f7, f9	# 976
	fadd	f7, f8, f7	# 974
	fmul	f5, f5, f6	# 977
	lw		x14, 36(x9)	# 533
	mul		x15, x30, x8	# 538
	add		x14, x14, x15	# 538
	flw		f6, 0(x14)	# 538
	fmul	f5, f5, f6	# 977
	fadd	f5, f7, f5	# 974
	jal		x0, beq_cont.31879	# 971
beq.31880:
	fadd	f5, f0, f8	# 972
beq_cont.31879:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31882	# 120
	addi	x8, x0, 0	# 1011
	jal		x0, feq_cont.31881	# 120
feq_else.31882:
	mul		x14, x30, x11	# 1015
	add		x14, x6, x14	# 1015
	flw		f6, 0(x14)	# 1015
	mul		x14, x30, x12	# 1015
	add		x14, x6, x14	# 1015
	flw		f7, 0(x14)	# 1015
	mul		x14, x30, x8	# 1015
	add		x14, x6, x14	# 1015
	flw		f8, 0(x14)	# 1015
	fmul	f9, f6, f2	# 983
	lw		x14, 16(x9)	# 393
	mul		x15, x30, x11	# 398
	add		x14, x14, x15	# 398
	flw		f10, 0(x14)	# 398
	fmul	f9, f9, f10	# 983
	fmul	f10, f7, f3	# 984
	lw		x14, 16(x9)	# 403
	mul		x15, x30, x12	# 408
	add		x14, x14, x15	# 408
	flw		f11, 0(x14)	# 408
	fmul	f10, f10, f11	# 984
	fadd	f9, f9, f10	# 983
	fmul	f10, f8, f4	# 985
	lw		x14, 16(x9)	# 413
	mul		x15, x30, x8	# 418
	add		x14, x14, x15	# 418
	flw		f11, 0(x14)	# 418
	fmul	f10, f10, f11	# 985
	fadd	f9, f9, f10	# 983
	lw		x14, 12(x9)	# 384
	beq		x14, x11, beq.31884	# 987
	fmul	f10, f8, f3	# 991
	fmul	f11, f7, f4	# 991
	fadd	f10, f10, f11	# 991
	lw		x14, 36(x9)	# 513
	mul		x15, x30, x11	# 518
	add		x14, x14, x15	# 518
	flw		f11, 0(x14)	# 518
	fmul	f10, f10, f11	# 991
	fmul	f11, f6, f4	# 992
	fmul	f8, f8, f2	# 992
	fadd	f8, f11, f8	# 992
	lw		x14, 36(x9)	# 523
	mul		x15, x30, x12	# 528
	add		x14, x14, x15	# 528
	flw		f11, 0(x14)	# 528
	fmul	f8, f8, f11	# 992
	fadd	f8, f10, f8	# 991
	fmul	f6, f6, f3	# 993
	fmul	f7, f7, f2	# 993
	fadd	f6, f6, f7	# 993
	lw		x14, 36(x9)	# 533
	mul		x15, x30, x8	# 538
	add		x14, x14, x15	# 538
	flw		f7, 0(x14)	# 538
	fmul	f6, f6, f7	# 993
	fadd	f6, f8, f6	# 991
	fadd	f7, f0, f17	# 126
	fmul	f6, f6, f7	# 126
	fadd	f6, f9, f6	# 990
	jal		x0, beq_cont.31883	# 987
beq.31884:
	fadd	f6, f0, f9	# 988
beq_cont.31883:
	fmul	f7, f2, f2	# 127
	lw		x14, 16(x9)	# 393
	mul		x15, x30, x11	# 398
	add		x14, x14, x15	# 398
	flw		f8, 0(x14)	# 398
	fmul	f7, f7, f8	# 969
	fmul	f8, f3, f3	# 127
	lw		x14, 16(x9)	# 403
	mul		x15, x30, x12	# 408
	add		x14, x14, x15	# 408
	flw		f9, 0(x14)	# 408
	fmul	f8, f8, f9	# 969
	fadd	f7, f7, f8	# 969
	fmul	f8, f4, f4	# 127
	lw		x14, 16(x9)	# 413
	mul		x15, x30, x8	# 418
	add		x14, x14, x15	# 418
	flw		f9, 0(x14)	# 418
	fmul	f8, f8, f9	# 969
	fadd	f7, f7, f8	# 969
	lw		x14, 12(x9)	# 384
	beq		x14, x11, beq.31886	# 971
	fmul	f8, f3, f4	# 975
	lw		x14, 36(x9)	# 513
	mul		x15, x30, x11	# 518
	add		x14, x14, x15	# 518
	flw		f9, 0(x14)	# 518
	fmul	f8, f8, f9	# 975
	fadd	f7, f7, f8	# 974
	fmul	f4, f4, f2	# 976
	lw		x14, 36(x9)	# 523
	mul		x15, x30, x12	# 528
	add		x14, x14, x15	# 528
	flw		f8, 0(x14)	# 528
	fmul	f4, f4, f8	# 976
	fadd	f4, f7, f4	# 974
	fmul	f2, f2, f3	# 977
	lw		x14, 36(x9)	# 533
	mul		x8, x30, x8	# 538
	add		x8, x14, x8	# 538
	flw		f3, 0(x8)	# 538
	fmul	f2, f2, f3	# 977
	fadd	f2, f4, f2	# 974
	jal		x0, beq_cont.31885	# 971
beq.31886:
	fadd	f2, f0, f7	# 972
beq_cont.31885:
	lw		x8, 4(x9)	# 355
	beq		x8, x10, beq.31888	# 1018
	jal		x0, beq_cont.31887	# 1018
beq.31888:
	fadd	f3, f0, f16	# 1018
	fsub	f2, f2, f3	# 1018
beq_cont.31887:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1020
	fsub	f2, f3, f2	# 1020
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.31890	# 121
	addi	x8, x0, 0	# 1028
	jal		x0, fle_cont.31889	# 121
fle_else.31890:
	fsqrt	f2, f2	# 1023
	lw		x8, 24(x9)	# 375
	beq		x8, x11, beq.31892	# 1024
	jal		x0, beq_cont.31891	# 1024
beq.31892:
	fsub	f2, f0, f2	# 123
beq_cont.31891:
	fsub	f2, f2, f6	# 1025
	fdiv	f2, f2, f5	# 1025
	mul		x8, x30, x11	# 1025
	addi	x8, x8, 60540	# 1025
	fsw		f2, 0(x8)	# 1025
	addi	x8, x0, 1	# 1025
fle_cont.31889:
feq_cont.31881:
	jal		x0, beq_cont.31877	# 1042
beq.31878:
	lw		x9, 16(x9)	# 423
	mul		x10, x30, x11	# 294
	add		x10, x6, x10	# 294
	flw		f5, 0(x10)	# 294
	mul		x10, x30, x11	# 294
	add		x10, x9, x10	# 294
	flw		f6, 0(x10)	# 294
	fmul	f5, f5, f6	# 294
	mul		x10, x30, x12	# 294
	add		x10, x6, x10	# 294
	flw		f6, 0(x10)	# 294
	mul		x10, x30, x12	# 294
	add		x10, x9, x10	# 294
	flw		f7, 0(x10)	# 294
	fmul	f6, f6, f7	# 294
	fadd	f5, f5, f6	# 294
	mul		x10, x30, x8	# 294
	add		x10, x6, x10	# 294
	flw		f6, 0(x10)	# 294
	mul		x10, x30, x8	# 294
	add		x10, x9, x10	# 294
	flw		f7, 0(x10)	# 294
	fmul	f6, f6, f7	# 294
	fadd	f5, f5, f6	# 294
	fle		x31, f5, f1	# 121
	beq		x31, x0, fle_else.31894	# 121
	addi	x8, x0, 0	# 961
	jal		x0, fle_cont.31893	# 121
fle_else.31894:
	mul		x10, x30, x11	# 299
	add		x10, x9, x10	# 299
	flw		f6, 0(x10)	# 299
	fmul	f2, f6, f2	# 299
	mul		x10, x30, x12	# 299
	add		x10, x9, x10	# 299
	flw		f6, 0(x10)	# 299
	fmul	f3, f6, f3	# 299
	fadd	f2, f2, f3	# 299
	mul		x8, x30, x8	# 299
	add		x8, x9, x8	# 299
	flw		f3, 0(x8)	# 299
	fmul	f3, f3, f4	# 299
	fadd	f2, f2, f3	# 299
	fsub	f2, f0, f2	# 123
	fdiv	f2, f2, f5	# 959
	mul		x8, x30, x11	# 959
	addi	x8, x8, 60540	# 959
	fsw		f2, 0(x8)	# 959
	addi	x8, x0, 1	# 960
fle_cont.31893:
beq_cont.31877:
	jal		x0, beq_cont.31875	# 1041
beq.31876:
	mul		x10, x30, x11	# 930
	add		x10, x6, x10	# 930
	flw		f5, 0(x10)	# 930
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31896	# 120
	addi	x10, x0, 0	# 930
	jal		x0, feq_cont.31895	# 120
feq_else.31896:
	lw		x10, 16(x9)	# 423
	lw		x14, 24(x9)	# 375
	mul		x15, x30, x11	# 932
	add		x15, x6, x15	# 932
	flw		f5, 0(x15)	# 932
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31898	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.31897	# 122
fle_else.31898:
	addi	x15, x0, 1	# 122
fle_cont.31897:
	beq		x14, x11, beq.31900	# 206
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31902	# 122
	addi	x14, x0, 1	# 206
	jal		x0, fle_cont.31901	# 122
fle_else.31902:
	addi	x14, x0, 0	# 206
fle_cont.31901:
	jal		x0, beq_cont.31899	# 206
beq.31900:
	addi	x14, x15, 0	# 206
beq_cont.31899:
	mul		x15, x30, x11	# 932
	add		x15, x10, x15	# 932
	flw		f5, 0(x15)	# 932
	beq		x14, x11, beq.31904	# 221
	jal		x0, beq_cont.31903	# 221
beq.31904:
	fsub	f5, f0, f5	# 123
beq_cont.31903:
	fsub	f5, f5, f2	# 934
	mul		x14, x30, x11	# 934
	add		x14, x6, x14	# 934
	flw		f6, 0(x14)	# 934
	fdiv	f5, f5, f6	# 934
	mul		x14, x30, x12	# 935
	add		x14, x6, x14	# 935
	flw		f6, 0(x14)	# 935
	fmul	f6, f5, f6	# 935
	fadd	f6, f6, f3	# 935
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31905	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31905:
	mul		x14, x30, x12	# 935
	add		x14, x10, x14	# 935
	flw		f7, 0(x14)	# 935
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31907	# 125
	addi	x10, x0, 0	# 939
	jal		x0, fle_cont.31906	# 125
fle_else.31907:
	mul		x14, x30, x8	# 936
	add		x14, x6, x14	# 936
	flw		f6, 0(x14)	# 936
	fmul	f6, f5, f6	# 936
	fadd	f6, f6, f4	# 936
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31908	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31908:
	mul		x14, x30, x8	# 936
	add		x10, x10, x14	# 936
	flw		f7, 0(x10)	# 936
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31910	# 125
	addi	x10, x0, 0	# 938
	jal		x0, fle_cont.31909	# 125
fle_else.31910:
	addi	x10, x0, 0	# 937
	mul		x10, x30, x10	# 937
	addi	x10, x10, 60540	# 937
	fsw		f5, 0(x10)	# 937
	addi	x10, x0, 1	# 937
fle_cont.31909:
fle_cont.31906:
feq_cont.31895:
	beq		x10, x11, beq.31912	# 945
	addi	x8, x0, 1	# 945
	jal		x0, beq_cont.31911	# 945
beq.31912:
	mul		x10, x30, x12	# 930
	add		x10, x6, x10	# 930
	flw		f5, 0(x10)	# 930
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31914	# 120
	addi	x10, x0, 0	# 930
	jal		x0, feq_cont.31913	# 120
feq_else.31914:
	lw		x10, 16(x9)	# 423
	lw		x14, 24(x9)	# 375
	mul		x15, x30, x12	# 932
	add		x15, x6, x15	# 932
	flw		f5, 0(x15)	# 932
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31916	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.31915	# 122
fle_else.31916:
	addi	x15, x0, 1	# 122
fle_cont.31915:
	beq		x14, x11, beq.31918	# 206
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31920	# 122
	addi	x14, x0, 1	# 206
	jal		x0, fle_cont.31919	# 122
fle_else.31920:
	addi	x14, x0, 0	# 206
fle_cont.31919:
	jal		x0, beq_cont.31917	# 206
beq.31918:
	addi	x14, x15, 0	# 206
beq_cont.31917:
	mul		x15, x30, x12	# 932
	add		x15, x10, x15	# 932
	flw		f5, 0(x15)	# 932
	beq		x14, x11, beq.31922	# 221
	jal		x0, beq_cont.31921	# 221
beq.31922:
	fsub	f5, f0, f5	# 123
beq_cont.31921:
	fsub	f5, f5, f3	# 934
	mul		x14, x30, x12	# 934
	add		x14, x6, x14	# 934
	flw		f6, 0(x14)	# 934
	fdiv	f5, f5, f6	# 934
	mul		x14, x30, x8	# 935
	add		x14, x6, x14	# 935
	flw		f6, 0(x14)	# 935
	fmul	f6, f5, f6	# 935
	fadd	f6, f6, f4	# 935
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31923	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31923:
	mul		x14, x30, x8	# 935
	add		x14, x10, x14	# 935
	flw		f7, 0(x14)	# 935
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31925	# 125
	addi	x10, x0, 0	# 939
	jal		x0, fle_cont.31924	# 125
fle_else.31925:
	mul		x14, x30, x11	# 936
	add		x14, x6, x14	# 936
	flw		f6, 0(x14)	# 936
	fmul	f6, f5, f6	# 936
	fadd	f6, f6, f2	# 936
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31926	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31926:
	mul		x14, x30, x11	# 936
	add		x10, x10, x14	# 936
	flw		f7, 0(x10)	# 936
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31928	# 125
	addi	x10, x0, 0	# 938
	jal		x0, fle_cont.31927	# 125
fle_else.31928:
	addi	x10, x0, 0	# 937
	mul		x10, x30, x10	# 937
	addi	x10, x10, 60540	# 937
	fsw		f5, 0(x10)	# 937
	addi	x10, x0, 1	# 937
fle_cont.31927:
fle_cont.31924:
feq_cont.31913:
	beq		x10, x11, beq.31930	# 946
	addi	x8, x0, 2	# 946
	jal		x0, beq_cont.31929	# 946
beq.31930:
	mul		x10, x30, x8	# 930
	add		x10, x6, x10	# 930
	flw		f5, 0(x10)	# 930
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31932	# 120
	addi	x8, x0, 0	# 930
	jal		x0, feq_cont.31931	# 120
feq_else.31932:
	lw		x10, 16(x9)	# 423
	lw		x9, 24(x9)	# 375
	mul		x14, x30, x8	# 932
	add		x14, x6, x14	# 932
	flw		f5, 0(x14)	# 932
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31934	# 122
	addi	x14, x0, 0	# 122
	jal		x0, fle_cont.31933	# 122
fle_else.31934:
	addi	x14, x0, 1	# 122
fle_cont.31933:
	beq		x9, x11, beq.31936	# 206
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31938	# 122
	addi	x9, x0, 1	# 206
	jal		x0, fle_cont.31937	# 122
fle_else.31938:
	addi	x9, x0, 0	# 206
fle_cont.31937:
	jal		x0, beq_cont.31935	# 206
beq.31936:
	addi	x9, x14, 0	# 206
beq_cont.31935:
	mul		x14, x30, x8	# 932
	add		x14, x10, x14	# 932
	flw		f5, 0(x14)	# 932
	beq		x9, x11, beq.31940	# 221
	jal		x0, beq_cont.31939	# 221
beq.31940:
	fsub	f5, f0, f5	# 123
beq_cont.31939:
	fsub	f4, f5, f4	# 934
	mul		x8, x30, x8	# 934
	add		x8, x6, x8	# 934
	flw		f5, 0(x8)	# 934
	fdiv	f4, f4, f5	# 934
	mul		x8, x30, x11	# 935
	add		x8, x6, x8	# 935
	flw		f5, 0(x8)	# 935
	fmul	f5, f4, f5	# 935
	fadd	f2, f5, f2	# 935
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.31941	# 124
	fsub	f2, f0, f2	# 124
fle_cont.31941:
	mul		x8, x30, x11	# 935
	add		x8, x10, x8	# 935
	flw		f5, 0(x8)	# 935
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.31943	# 125
	addi	x8, x0, 0	# 939
	jal		x0, fle_cont.31942	# 125
fle_else.31943:
	mul		x8, x30, x12	# 936
	add		x8, x6, x8	# 936
	flw		f2, 0(x8)	# 936
	fmul	f2, f4, f2	# 936
	fadd	f2, f2, f3	# 936
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.31944	# 124
	fsub	f2, f0, f2	# 124
fle_cont.31944:
	mul		x8, x30, x12	# 936
	add		x8, x10, x8	# 936
	flw		f3, 0(x8)	# 936
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.31946	# 125
	addi	x8, x0, 0	# 938
	jal		x0, fle_cont.31945	# 125
fle_else.31946:
	addi	x8, x0, 0	# 937
	mul		x8, x30, x8	# 937
	addi	x8, x8, 60540	# 937
	fsw		f4, 0(x8)	# 937
	addi	x8, x0, 1	# 937
fle_cont.31945:
fle_cont.31942:
feq_cont.31931:
	beq		x8, x11, beq.31948	# 947
	addi	x8, x0, 3	# 947
	jal		x0, beq_cont.31947	# 947
beq.31948:
	addi	x8, x0, 0	# 948
beq_cont.31947:
beq_cont.31929:
beq_cont.31911:
beq_cont.31875:
	beq		x8, x11, beq.31949	# 1471
	mul		x9, x30, x11	# 1475
	addi	x9, x9, 60540	# 1475
	flw		f2, 0(x9)	# 1475
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x29, -8(x2)	# 125
	sw		x12, -12(x2)	# 125
	sw		x4, -16(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.31951	# 125
	jal		x0, fle_cont.31950	# 125
fle_else.31951:
	addi	x9, x0, 0	# 1478
	mul		x9, x30, x9	# 1478
	addi	x9, x9, 60548	# 1478
	flw		f1, 0(x9)	# 1478
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.31953	# 125
	jal		x0, fle_cont.31952	# 125
fle_else.31953:
	lui		x9, %hi(l.26229)	# 1480
	ori		x9, x0, %lo(l.26229)	# 1480
	flw		f1, 0(x9)	# 1480
	fadd	f1, f2, f1	# 1480
	addi	x9, x0, 0	# 1481
	mul		x9, x30, x9	# 1481
	add		x9, x6, x9	# 1481
	flw		f2, 0(x9)	# 1481
	fmul	f2, f2, f1	# 1481
	addi	x9, x0, 0	# 1481
	mul		x9, x30, x9	# 1481
	addi	x9, x9, 60636	# 1481
	flw		f3, 0(x9)	# 1481
	fadd	f2, f2, f3	# 1481
	addi	x9, x0, 1	# 1482
	mul		x9, x30, x9	# 1482
	add		x9, x6, x9	# 1482
	flw		f3, 0(x9)	# 1482
	fmul	f3, f3, f1	# 1482
	addi	x9, x0, 1	# 1482
	mul		x9, x30, x9	# 1482
	addi	x9, x9, 60636	# 1482
	flw		f4, 0(x9)	# 1482
	fadd	f3, f3, f4	# 1482
	addi	x9, x0, 2	# 1483
	mul		x9, x30, x9	# 1483
	add		x9, x6, x9	# 1483
	flw		f4, 0(x9)	# 1483
	fmul	f4, f4, f1	# 1483
	addi	x9, x0, 2	# 1483
	mul		x9, x30, x9	# 1483
	addi	x9, x9, 60636	# 1483
	flw		f5, 0(x9)	# 1483
	fadd	f4, f4, f5	# 1483
	addi	x9, x0, 0	# 1484
	sw		x8, -20(x2)	# 1484
	sw		x13, -24(x2)	# 1484
	fsw		f4, -28(x2)	# 1484
	fsw		f3, -32(x2)	# 1484
	fsw		f2, -36(x2)	# 1484
	fsw		f1, -40(x2)	# 1484
	addi	x4, x9, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -44(x2)	# 1484
	addi	x2, x2, -48	# 1484
	lw		x31, 0(x29)	# 1484
	jalr	x1, x31, 0	# 1484
	addi	x2, x2, 48	# 1484
	lw		x1, -44(x2)	# 1484
	addi	x5, x0, 0	# 1484
	beq		x4, x5, beq_cont.31954	# 1484
	addi	x4, x0, 0	# 1486
	mul		x4, x30, x4	# 1486
	addi	x4, x4, 60548	# 1486
	flw		f1, -40(x2)	# 1486
	fsw		f1, 0(x4)	# 1486
	addi	x4, x0, 0	# 242
	mul		x4, x30, x4	# 242
	addi	x4, x4, 60552	# 242
	flw		f1, -36(x2)	# 242
	fsw		f1, 0(x4)	# 242
	addi	x4, x0, 1	# 243
	mul		x4, x30, x4	# 243
	addi	x4, x4, 60552	# 243
	flw		f1, -32(x2)	# 243
	fsw		f1, 0(x4)	# 243
	addi	x4, x0, 2	# 244
	mul		x4, x30, x4	# 244
	addi	x4, x4, 60552	# 244
	flw		f1, -28(x2)	# 244
	fsw		f1, 0(x4)	# 244
	addi	x4, x0, 0	# 1488
	mul		x4, x30, x4	# 1488
	addi	x4, x4, 60564	# 1488
	lw		x5, -24(x2)	# 1488
	sw		x5, 0(x4)	# 1488
	addi	x4, x0, 0	# 1489
	mul		x4, x30, x4	# 1489
	addi	x4, x4, 60544	# 1489
	lw		x5, -20(x2)	# 1489
	sw		x5, 0(x4)	# 1489
beq_cont.31954:
fle_cont.31952:
fle_cont.31950:
	lw		x4, -12(x2)	# 1495
	lw		x5, -16(x2)	# 1495
	add		x4, x5, x4	# 1495
	lw		x5, -4(x2)	# 1495
	lw		x6, 0(x2)	# 1495
	lw		x29, -8(x2)	# 1495
	lw		x31, 0(x29)	# 1495
	jalr	x0, x31, 0	# 1495
beq.31949:
	mul		x7, x30, x13	# 1499
	addi	x7, x7, 60048	# 1499
	lw		x7, 0(x7)	# 1499
	lw		x7, 24(x7)	# 375
	beq		x7, x11, beq.31955	# 1499
	add		x4, x4, x12	# 1500
	lw		x31, 0(x29)	# 1500
	jalr	x0, x31, 0	# 1500
beq.31955:
	jalr	x0, x1, 0	# 1501
beq.31874:
	jalr	x0, x1, 0	# 1468
solve_one_or_network.2833.17749:
	lw		x7, 16(x29)	# 1508
	lw		x8, 12(x29)	# 1508
	lw		x9, 8(x29)	# 1508
	lw		x10, 4(x29)	# 1508
	mul		x11, x30, x4	# 1508
	add		x11, x5, x11	# 1508
	lw		x11, 0(x11)	# 1508
	beq		x11, x8, beq.31958	# 1509
	mul		x8, x30, x11	# 1510
	addi	x8, x8, 60332	# 1510
	lw		x8, 0(x8)	# 1510
	sw		x6, 0(x2)	# 1511
	sw		x5, -4(x2)	# 1511
	sw		x29, -8(x2)	# 1511
	sw		x10, -12(x2)	# 1511
	sw		x4, -16(x2)	# 1511
	addi	x5, x8, 0
	addi	x4, x9, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1511
	addi	x2, x2, -24	# 1511
	lw		x31, 0(x29)	# 1511
	jalr	x1, x31, 0	# 1511
	addi	x2, x2, 24	# 1511
	lw		x1, -20(x2)	# 1511
	lw		x4, -12(x2)	# 1512
	lw		x5, -16(x2)	# 1512
	add		x4, x5, x4	# 1512
	lw		x5, -4(x2)	# 1512
	lw		x6, 0(x2)	# 1512
	lw		x29, -8(x2)	# 1512
	lw		x31, 0(x29)	# 1512
	jalr	x0, x31, 0	# 1512
beq.31958:
	jalr	x0, x1, 0	# 1513
trace_or_matrix.2837.17753:
	lw		x7, 28(x29)	# 1518
	lw		x8, 24(x29)	# 1518
	lw		x9, 20(x29)	# 1518
	lw		x10, 16(x29)	# 1518
	lw		x11, 12(x29)	# 1518
	lw		x12, 8(x29)	# 1518
	flw		f1, 4(x29)	# 1518
	mul		x13, x30, x4	# 1518
	add		x13, x5, x13	# 1518
	lw		x13, 0(x13)	# 1518
	mul		x14, x30, x11	# 1519
	add		x14, x13, x14	# 1519
	lw		x14, 0(x14)	# 1519
	beq		x14, x9, beq.31960	# 1520
	addi	x9, x0, 99	# 1523
	sw		x6, 0(x2)	# 1523
	sw		x5, -4(x2)	# 1523
	sw		x29, -8(x2)	# 1523
	sw		x12, -12(x2)	# 1523
	sw		x4, -16(x2)	# 1523
	beq		x14, x9, beq.31962	# 1523
	mul		x9, x30, x14	# 1034
	addi	x9, x9, 60048	# 1034
	lw		x9, 0(x9)	# 1034
	addi	x14, x0, 0	# 1036
	mul		x14, x30, x14	# 1036
	addi	x14, x14, 60636	# 1036
	flw		f2, 0(x14)	# 1036
	lw		x14, 20(x9)	# 433
	mul		x15, x30, x11	# 438
	add		x14, x14, x15	# 438
	flw		f3, 0(x14)	# 438
	fsub	f2, f2, f3	# 1036
	addi	x14, x0, 1	# 1037
	mul		x14, x30, x14	# 1037
	addi	x14, x14, 60636	# 1037
	flw		f3, 0(x14)	# 1037
	lw		x14, 20(x9)	# 443
	mul		x15, x30, x12	# 448
	add		x14, x14, x15	# 448
	flw		f4, 0(x14)	# 448
	fsub	f3, f3, f4	# 1037
	addi	x14, x0, 2	# 1038
	mul		x14, x30, x14	# 1038
	addi	x14, x14, 60636	# 1038
	flw		f4, 0(x14)	# 1038
	lw		x14, 20(x9)	# 453
	mul		x15, x30, x8	# 458
	add		x14, x14, x15	# 458
	flw		f5, 0(x14)	# 458
	fsub	f4, f4, f5	# 1038
	lw		x14, 4(x9)	# 355
	addi	x15, x0, 1	# 1041
	beq		x14, x15, beq.31964	# 1041
	addi	x15, x0, 2	# 1042
	beq		x14, x15, beq.31966	# 1042
	mul		x14, x30, x11	# 1008
	add		x14, x6, x14	# 1008
	flw		f5, 0(x14)	# 1008
	mul		x14, x30, x12	# 1008
	add		x14, x6, x14	# 1008
	flw		f6, 0(x14)	# 1008
	mul		x14, x30, x8	# 1008
	add		x14, x6, x14	# 1008
	flw		f7, 0(x14)	# 1008
	fmul	f8, f5, f5	# 127
	lw		x14, 16(x9)	# 393
	mul		x15, x30, x11	# 398
	add		x14, x14, x15	# 398
	flw		f9, 0(x14)	# 398
	fmul	f8, f8, f9	# 969
	fmul	f9, f6, f6	# 127
	lw		x14, 16(x9)	# 403
	mul		x15, x30, x12	# 408
	add		x14, x14, x15	# 408
	flw		f10, 0(x14)	# 408
	fmul	f9, f9, f10	# 969
	fadd	f8, f8, f9	# 969
	fmul	f9, f7, f7	# 127
	lw		x14, 16(x9)	# 413
	mul		x15, x30, x8	# 418
	add		x14, x14, x15	# 418
	flw		f10, 0(x14)	# 418
	fmul	f9, f9, f10	# 969
	fadd	f8, f8, f9	# 969
	lw		x14, 12(x9)	# 384
	beq		x14, x11, beq.31968	# 971
	fmul	f9, f6, f7	# 975
	lw		x14, 36(x9)	# 513
	mul		x15, x30, x11	# 518
	add		x14, x14, x15	# 518
	flw		f10, 0(x14)	# 518
	fmul	f9, f9, f10	# 975
	fadd	f8, f8, f9	# 974
	fmul	f7, f7, f5	# 976
	lw		x14, 36(x9)	# 523
	mul		x15, x30, x12	# 528
	add		x14, x14, x15	# 528
	flw		f9, 0(x14)	# 528
	fmul	f7, f7, f9	# 976
	fadd	f7, f8, f7	# 974
	fmul	f5, f5, f6	# 977
	lw		x14, 36(x9)	# 533
	mul		x15, x30, x8	# 538
	add		x14, x14, x15	# 538
	flw		f6, 0(x14)	# 538
	fmul	f5, f5, f6	# 977
	fadd	f5, f7, f5	# 974
	jal		x0, beq_cont.31967	# 971
beq.31968:
	fadd	f5, f0, f8	# 972
beq_cont.31967:
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31970	# 120
	addi	x8, x0, 0	# 1011
	jal		x0, feq_cont.31969	# 120
feq_else.31970:
	mul		x14, x30, x11	# 1015
	add		x14, x6, x14	# 1015
	flw		f6, 0(x14)	# 1015
	mul		x14, x30, x12	# 1015
	add		x14, x6, x14	# 1015
	flw		f7, 0(x14)	# 1015
	mul		x14, x30, x8	# 1015
	add		x14, x6, x14	# 1015
	flw		f8, 0(x14)	# 1015
	fmul	f9, f6, f2	# 983
	lw		x14, 16(x9)	# 393
	mul		x15, x30, x11	# 398
	add		x14, x14, x15	# 398
	flw		f10, 0(x14)	# 398
	fmul	f9, f9, f10	# 983
	fmul	f10, f7, f3	# 984
	lw		x14, 16(x9)	# 403
	mul		x15, x30, x12	# 408
	add		x14, x14, x15	# 408
	flw		f11, 0(x14)	# 408
	fmul	f10, f10, f11	# 984
	fadd	f9, f9, f10	# 983
	fmul	f10, f8, f4	# 985
	lw		x14, 16(x9)	# 413
	mul		x15, x30, x8	# 418
	add		x14, x14, x15	# 418
	flw		f11, 0(x14)	# 418
	fmul	f10, f10, f11	# 985
	fadd	f9, f9, f10	# 983
	lw		x14, 12(x9)	# 384
	beq		x14, x11, beq.31972	# 987
	fmul	f10, f8, f3	# 991
	fmul	f11, f7, f4	# 991
	fadd	f10, f10, f11	# 991
	lw		x14, 36(x9)	# 513
	mul		x15, x30, x11	# 518
	add		x14, x14, x15	# 518
	flw		f11, 0(x14)	# 518
	fmul	f10, f10, f11	# 991
	fmul	f11, f6, f4	# 992
	fmul	f8, f8, f2	# 992
	fadd	f8, f11, f8	# 992
	lw		x14, 36(x9)	# 523
	mul		x15, x30, x12	# 528
	add		x14, x14, x15	# 528
	flw		f11, 0(x14)	# 528
	fmul	f8, f8, f11	# 992
	fadd	f8, f10, f8	# 991
	fmul	f6, f6, f3	# 993
	fmul	f7, f7, f2	# 993
	fadd	f6, f6, f7	# 993
	lw		x14, 36(x9)	# 533
	mul		x15, x30, x8	# 538
	add		x14, x14, x15	# 538
	flw		f7, 0(x14)	# 538
	fmul	f6, f6, f7	# 993
	fadd	f6, f8, f6	# 991
	fadd	f7, f0, f17	# 126
	fmul	f6, f6, f7	# 126
	fadd	f6, f9, f6	# 990
	jal		x0, beq_cont.31971	# 987
beq.31972:
	fadd	f6, f0, f9	# 988
beq_cont.31971:
	fmul	f7, f2, f2	# 127
	lw		x14, 16(x9)	# 393
	mul		x15, x30, x11	# 398
	add		x14, x14, x15	# 398
	flw		f8, 0(x14)	# 398
	fmul	f7, f7, f8	# 969
	fmul	f8, f3, f3	# 127
	lw		x14, 16(x9)	# 403
	mul		x15, x30, x12	# 408
	add		x14, x14, x15	# 408
	flw		f9, 0(x14)	# 408
	fmul	f8, f8, f9	# 969
	fadd	f7, f7, f8	# 969
	fmul	f8, f4, f4	# 127
	lw		x14, 16(x9)	# 413
	mul		x15, x30, x8	# 418
	add		x14, x14, x15	# 418
	flw		f9, 0(x14)	# 418
	fmul	f8, f8, f9	# 969
	fadd	f7, f7, f8	# 969
	lw		x14, 12(x9)	# 384
	beq		x14, x11, beq.31974	# 971
	fmul	f8, f3, f4	# 975
	lw		x14, 36(x9)	# 513
	mul		x15, x30, x11	# 518
	add		x14, x14, x15	# 518
	flw		f9, 0(x14)	# 518
	fmul	f8, f8, f9	# 975
	fadd	f7, f7, f8	# 974
	fmul	f4, f4, f2	# 976
	lw		x14, 36(x9)	# 523
	mul		x15, x30, x12	# 528
	add		x14, x14, x15	# 528
	flw		f8, 0(x14)	# 528
	fmul	f4, f4, f8	# 976
	fadd	f4, f7, f4	# 974
	fmul	f2, f2, f3	# 977
	lw		x14, 36(x9)	# 533
	mul		x8, x30, x8	# 538
	add		x8, x14, x8	# 538
	flw		f3, 0(x8)	# 538
	fmul	f2, f2, f3	# 977
	fadd	f2, f4, f2	# 974
	jal		x0, beq_cont.31973	# 971
beq.31974:
	fadd	f2, f0, f7	# 972
beq_cont.31973:
	lw		x8, 4(x9)	# 355
	beq		x8, x10, beq.31976	# 1018
	jal		x0, beq_cont.31975	# 1018
beq.31976:
	fadd	f3, f0, f16	# 1018
	fsub	f2, f2, f3	# 1018
beq_cont.31975:
	fmul	f3, f6, f6	# 127
	fmul	f2, f5, f2	# 1020
	fsub	f2, f3, f2	# 1020
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.31978	# 121
	addi	x8, x0, 0	# 1028
	jal		x0, fle_cont.31977	# 121
fle_else.31978:
	fsqrt	f1, f2	# 1023
	lw		x8, 24(x9)	# 375
	beq		x8, x11, beq.31980	# 1024
	jal		x0, beq_cont.31979	# 1024
beq.31980:
	fsub	f1, f0, f1	# 123
beq_cont.31979:
	fsub	f1, f1, f6	# 1025
	fdiv	f1, f1, f5	# 1025
	mul		x8, x30, x11	# 1025
	addi	x8, x8, 60540	# 1025
	fsw		f1, 0(x8)	# 1025
	addi	x8, x0, 1	# 1025
fle_cont.31977:
feq_cont.31969:
	jal		x0, beq_cont.31965	# 1042
beq.31966:
	lw		x9, 16(x9)	# 423
	mul		x10, x30, x11	# 294
	add		x10, x6, x10	# 294
	flw		f5, 0(x10)	# 294
	mul		x10, x30, x11	# 294
	add		x10, x9, x10	# 294
	flw		f6, 0(x10)	# 294
	fmul	f5, f5, f6	# 294
	mul		x10, x30, x12	# 294
	add		x10, x6, x10	# 294
	flw		f6, 0(x10)	# 294
	mul		x10, x30, x12	# 294
	add		x10, x9, x10	# 294
	flw		f7, 0(x10)	# 294
	fmul	f6, f6, f7	# 294
	fadd	f5, f5, f6	# 294
	mul		x10, x30, x8	# 294
	add		x10, x6, x10	# 294
	flw		f6, 0(x10)	# 294
	mul		x10, x30, x8	# 294
	add		x10, x9, x10	# 294
	flw		f7, 0(x10)	# 294
	fmul	f6, f6, f7	# 294
	fadd	f5, f5, f6	# 294
	fle		x31, f5, f1	# 121
	beq		x31, x0, fle_else.31982	# 121
	addi	x8, x0, 0	# 961
	jal		x0, fle_cont.31981	# 121
fle_else.31982:
	mul		x10, x30, x11	# 299
	add		x10, x9, x10	# 299
	flw		f1, 0(x10)	# 299
	fmul	f1, f1, f2	# 299
	mul		x10, x30, x12	# 299
	add		x10, x9, x10	# 299
	flw		f2, 0(x10)	# 299
	fmul	f2, f2, f3	# 299
	fadd	f1, f1, f2	# 299
	mul		x8, x30, x8	# 299
	add		x8, x9, x8	# 299
	flw		f2, 0(x8)	# 299
	fmul	f2, f2, f4	# 299
	fadd	f1, f1, f2	# 299
	fsub	f1, f0, f1	# 123
	fdiv	f1, f1, f5	# 959
	mul		x8, x30, x11	# 959
	addi	x8, x8, 60540	# 959
	fsw		f1, 0(x8)	# 959
	addi	x8, x0, 1	# 960
fle_cont.31981:
beq_cont.31965:
	jal		x0, beq_cont.31963	# 1041
beq.31964:
	mul		x10, x30, x11	# 930
	add		x10, x6, x10	# 930
	flw		f5, 0(x10)	# 930
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.31984	# 120
	addi	x10, x0, 0	# 930
	jal		x0, feq_cont.31983	# 120
feq_else.31984:
	lw		x10, 16(x9)	# 423
	lw		x14, 24(x9)	# 375
	mul		x15, x30, x11	# 932
	add		x15, x6, x15	# 932
	flw		f5, 0(x15)	# 932
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31986	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.31985	# 122
fle_else.31986:
	addi	x15, x0, 1	# 122
fle_cont.31985:
	beq		x14, x11, beq.31988	# 206
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.31990	# 122
	addi	x14, x0, 1	# 206
	jal		x0, fle_cont.31989	# 122
fle_else.31990:
	addi	x14, x0, 0	# 206
fle_cont.31989:
	jal		x0, beq_cont.31987	# 206
beq.31988:
	addi	x14, x15, 0	# 206
beq_cont.31987:
	mul		x15, x30, x11	# 932
	add		x15, x10, x15	# 932
	flw		f5, 0(x15)	# 932
	beq		x14, x11, beq.31992	# 221
	jal		x0, beq_cont.31991	# 221
beq.31992:
	fsub	f5, f0, f5	# 123
beq_cont.31991:
	fsub	f5, f5, f2	# 934
	mul		x14, x30, x11	# 934
	add		x14, x6, x14	# 934
	flw		f6, 0(x14)	# 934
	fdiv	f5, f5, f6	# 934
	mul		x14, x30, x12	# 935
	add		x14, x6, x14	# 935
	flw		f6, 0(x14)	# 935
	fmul	f6, f5, f6	# 935
	fadd	f6, f6, f3	# 935
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31993	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31993:
	mul		x14, x30, x12	# 935
	add		x14, x10, x14	# 935
	flw		f7, 0(x14)	# 935
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31995	# 125
	addi	x10, x0, 0	# 939
	jal		x0, fle_cont.31994	# 125
fle_else.31995:
	mul		x14, x30, x8	# 936
	add		x14, x6, x14	# 936
	flw		f6, 0(x14)	# 936
	fmul	f6, f5, f6	# 936
	fadd	f6, f6, f4	# 936
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.31996	# 124
	fsub	f6, f0, f6	# 124
fle_cont.31996:
	mul		x14, x30, x8	# 936
	add		x10, x10, x14	# 936
	flw		f7, 0(x10)	# 936
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.31998	# 125
	addi	x10, x0, 0	# 938
	jal		x0, fle_cont.31997	# 125
fle_else.31998:
	addi	x10, x0, 0	# 937
	mul		x10, x30, x10	# 937
	addi	x10, x10, 60540	# 937
	fsw		f5, 0(x10)	# 937
	addi	x10, x0, 1	# 937
fle_cont.31997:
fle_cont.31994:
feq_cont.31983:
	beq		x10, x11, beq.32000	# 945
	addi	x8, x0, 1	# 945
	jal		x0, beq_cont.31999	# 945
beq.32000:
	mul		x10, x30, x12	# 930
	add		x10, x6, x10	# 930
	flw		f5, 0(x10)	# 930
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32002	# 120
	addi	x10, x0, 0	# 930
	jal		x0, feq_cont.32001	# 120
feq_else.32002:
	lw		x10, 16(x9)	# 423
	lw		x14, 24(x9)	# 375
	mul		x15, x30, x12	# 932
	add		x15, x6, x15	# 932
	flw		f5, 0(x15)	# 932
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32004	# 122
	addi	x15, x0, 0	# 122
	jal		x0, fle_cont.32003	# 122
fle_else.32004:
	addi	x15, x0, 1	# 122
fle_cont.32003:
	beq		x14, x11, beq.32006	# 206
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32008	# 122
	addi	x14, x0, 1	# 206
	jal		x0, fle_cont.32007	# 122
fle_else.32008:
	addi	x14, x0, 0	# 206
fle_cont.32007:
	jal		x0, beq_cont.32005	# 206
beq.32006:
	addi	x14, x15, 0	# 206
beq_cont.32005:
	mul		x15, x30, x12	# 932
	add		x15, x10, x15	# 932
	flw		f5, 0(x15)	# 932
	beq		x14, x11, beq.32010	# 221
	jal		x0, beq_cont.32009	# 221
beq.32010:
	fsub	f5, f0, f5	# 123
beq_cont.32009:
	fsub	f5, f5, f3	# 934
	mul		x14, x30, x12	# 934
	add		x14, x6, x14	# 934
	flw		f6, 0(x14)	# 934
	fdiv	f5, f5, f6	# 934
	mul		x14, x30, x8	# 935
	add		x14, x6, x14	# 935
	flw		f6, 0(x14)	# 935
	fmul	f6, f5, f6	# 935
	fadd	f6, f6, f4	# 935
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32011	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32011:
	mul		x14, x30, x8	# 935
	add		x14, x10, x14	# 935
	flw		f7, 0(x14)	# 935
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32013	# 125
	addi	x10, x0, 0	# 939
	jal		x0, fle_cont.32012	# 125
fle_else.32013:
	mul		x14, x30, x11	# 936
	add		x14, x6, x14	# 936
	flw		f6, 0(x14)	# 936
	fmul	f6, f5, f6	# 936
	fadd	f6, f6, f2	# 936
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32014	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32014:
	mul		x14, x30, x11	# 936
	add		x10, x10, x14	# 936
	flw		f7, 0(x10)	# 936
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32016	# 125
	addi	x10, x0, 0	# 938
	jal		x0, fle_cont.32015	# 125
fle_else.32016:
	addi	x10, x0, 0	# 937
	mul		x10, x30, x10	# 937
	addi	x10, x10, 60540	# 937
	fsw		f5, 0(x10)	# 937
	addi	x10, x0, 1	# 937
fle_cont.32015:
fle_cont.32012:
feq_cont.32001:
	beq		x10, x11, beq.32018	# 946
	addi	x8, x0, 2	# 946
	jal		x0, beq_cont.32017	# 946
beq.32018:
	mul		x10, x30, x8	# 930
	add		x10, x6, x10	# 930
	flw		f5, 0(x10)	# 930
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32020	# 120
	addi	x8, x0, 0	# 930
	jal		x0, feq_cont.32019	# 120
feq_else.32020:
	lw		x10, 16(x9)	# 423
	lw		x9, 24(x9)	# 375
	mul		x14, x30, x8	# 932
	add		x14, x6, x14	# 932
	flw		f5, 0(x14)	# 932
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32022	# 122
	addi	x14, x0, 0	# 122
	jal		x0, fle_cont.32021	# 122
fle_else.32022:
	addi	x14, x0, 1	# 122
fle_cont.32021:
	beq		x9, x11, beq.32024	# 206
	fle		x31, f1, f5	# 122
	beq		x31, x0, fle_else.32026	# 122
	addi	x9, x0, 1	# 206
	jal		x0, fle_cont.32025	# 122
fle_else.32026:
	addi	x9, x0, 0	# 206
fle_cont.32025:
	jal		x0, beq_cont.32023	# 206
beq.32024:
	addi	x9, x14, 0	# 206
beq_cont.32023:
	mul		x14, x30, x8	# 932
	add		x14, x10, x14	# 932
	flw		f5, 0(x14)	# 932
	beq		x9, x11, beq.32028	# 221
	jal		x0, beq_cont.32027	# 221
beq.32028:
	fsub	f5, f0, f5	# 123
beq_cont.32027:
	fsub	f4, f5, f4	# 934
	mul		x8, x30, x8	# 934
	add		x8, x6, x8	# 934
	flw		f5, 0(x8)	# 934
	fdiv	f4, f4, f5	# 934
	mul		x8, x30, x11	# 935
	add		x8, x6, x8	# 935
	flw		f5, 0(x8)	# 935
	fmul	f5, f4, f5	# 935
	fadd	f2, f5, f2	# 935
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32029	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32029:
	mul		x8, x30, x11	# 935
	add		x8, x10, x8	# 935
	flw		f5, 0(x8)	# 935
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.32031	# 125
	addi	x8, x0, 0	# 939
	jal		x0, fle_cont.32030	# 125
fle_else.32031:
	mul		x8, x30, x12	# 936
	add		x8, x6, x8	# 936
	flw		f2, 0(x8)	# 936
	fmul	f2, f4, f2	# 936
	fadd	f2, f2, f3	# 936
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_else.32033	# 124
	fsub	f1, f0, f2	# 124
	jal		x0, fle_cont.32032	# 124
fle_else.32033:
	fadd	f1, f0, f2	# 124
fle_cont.32032:
	mul		x8, x30, x12	# 936
	add		x8, x10, x8	# 936
	flw		f2, 0(x8)	# 936
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32035	# 125
	addi	x8, x0, 0	# 938
	jal		x0, fle_cont.32034	# 125
fle_else.32035:
	addi	x8, x0, 0	# 937
	mul		x8, x30, x8	# 937
	addi	x8, x8, 60540	# 937
	fsw		f4, 0(x8)	# 937
	addi	x8, x0, 1	# 937
fle_cont.32034:
fle_cont.32030:
feq_cont.32019:
	beq		x8, x11, beq.32037	# 947
	addi	x8, x0, 3	# 947
	jal		x0, beq_cont.32036	# 947
beq.32037:
	addi	x8, x0, 0	# 948
beq_cont.32036:
beq_cont.32017:
beq_cont.31999:
beq_cont.31963:
	addi	x9, x0, 0	# 1529
	beq		x8, x9, beq_cont.32038	# 1529
	addi	x8, x0, 0	# 1530
	mul		x8, x30, x8	# 1530
	addi	x8, x8, 60540	# 1530
	flw		f1, 0(x8)	# 1530
	addi	x8, x0, 0	# 1531
	mul		x8, x30, x8	# 1531
	addi	x8, x8, 60548	# 1531
	flw		f2, 0(x8)	# 1531
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32040	# 125
	jal		x0, fle_cont.32039	# 125
fle_else.32040:
	addi	x8, x0, 1	# 1532
	addi	x5, x13, 0
	addi	x4, x8, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1532
	addi	x2, x2, -24	# 1532
	lw		x31, 0(x29)	# 1532
	jalr	x1, x31, 0	# 1532
	addi	x2, x2, 24	# 1532
	lw		x1, -20(x2)	# 1532
fle_cont.32039:
beq_cont.32038:
	jal		x0, beq_cont.31961	# 1523
beq.31962:
	addi	x8, x0, 1	# 1524
	addi	x5, x13, 0
	addi	x4, x8, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1524
	addi	x2, x2, -24	# 1524
	lw		x31, 0(x29)	# 1524
	jalr	x1, x31, 0	# 1524
	addi	x2, x2, 24	# 1524
	lw		x1, -20(x2)	# 1524
beq_cont.31961:
	lw		x4, -12(x2)	# 1536
	lw		x5, -16(x2)	# 1536
	add		x4, x5, x4	# 1536
	lw		x5, -4(x2)	# 1536
	lw		x6, 0(x2)	# 1536
	lw		x29, -8(x2)	# 1536
	lw		x31, 0(x29)	# 1536
	jalr	x0, x31, 0	# 1536
beq.31960:
	jalr	x0, x1, 0	# 1521
solve_each_element_fast.2843.17757:
	lw		x7, 32(x29)	# 641
	lw		x8, 28(x29)	# 641
	lw		x9, 24(x29)	# 641
	lw		x10, 20(x29)	# 641
	lw		x11, 16(x29)	# 641
	lw		x12, 12(x29)	# 641
	lw		x13, 8(x29)	# 641
	flw		f1, 4(x29)	# 641
	lw		x14, 0(x6)	# 641
	mul		x15, x30, x4	# 1561
	add		x15, x5, x15	# 1561
	lw		x15, 0(x15)	# 1561
	beq		x15, x10, beq.32042	# 1562
	mul		x10, x30, x15	# 1175
	addi	x10, x10, 60048	# 1175
	lw		x10, 0(x10)	# 1175
	lw		x16, 40(x10)	# 550
	mul		x17, x30, x12	# 1177
	add		x17, x16, x17	# 1177
	flw		f2, 0(x17)	# 1177
	mul		x17, x30, x13	# 1178
	add		x17, x16, x17	# 1178
	flw		f3, 0(x17)	# 1178
	mul		x17, x30, x9	# 1179
	add		x17, x16, x17	# 1179
	flw		f4, 0(x17)	# 1179
	lw		x17, 4(x6)	# 647
	mul		x18, x30, x15	# 1181
	add		x17, x17, x18	# 1181
	lw		x17, 0(x17)	# 1181
	lw		x18, 4(x10)	# 355
	beq		x18, x13, beq.32044	# 1183
	addi	x8, x0, 2	# 1185
	beq		x18, x8, beq.32046	# 1185
	mul		x8, x30, x12	# 1157
	add		x8, x17, x8	# 1157
	flw		f5, 0(x8)	# 1157
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32048	# 120
	addi	x8, x0, 0	# 1159
	jal		x0, feq_cont.32047	# 120
feq_else.32048:
	mul		x8, x30, x13	# 1161
	add		x8, x17, x8	# 1161
	flw		f6, 0(x8)	# 1161
	fmul	f2, f6, f2	# 1161
	mul		x8, x30, x9	# 1161
	add		x8, x17, x8	# 1161
	flw		f6, 0(x8)	# 1161
	fmul	f3, f6, f3	# 1161
	fadd	f2, f2, f3	# 1161
	mul		x8, x30, x11	# 1161
	add		x8, x17, x8	# 1161
	flw		f3, 0(x8)	# 1161
	fmul	f3, f3, f4	# 1161
	fadd	f2, f2, f3	# 1161
	mul		x8, x30, x11	# 1162
	add		x8, x16, x8	# 1162
	flw		f3, 0(x8)	# 1162
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1163
	fsub	f3, f4, f3	# 1163
	fle		x31, f3, f1	# 121
	beq		x31, x0, fle_else.32050	# 121
	addi	x8, x0, 0	# 1170
	jal		x0, fle_cont.32049	# 121
fle_else.32050:
	lw		x8, 24(x10)	# 375
	beq		x8, x12, beq.32052	# 1165
	addi	x8, x0, 0	# 1166
	fsqrt	f3, f3	# 1166
	fadd	f2, f2, f3	# 1166
	addi	x9, x0, 4	# 1166
	mul		x9, x30, x9	# 1166
	add		x9, x17, x9	# 1166
	flw		f3, 0(x9)	# 1166
	fmul	f2, f2, f3	# 1166
	mul		x8, x30, x8	# 1166
	addi	x8, x8, 60540	# 1166
	fsw		f2, 0(x8)	# 1166
	jal		x0, beq_cont.32051	# 1165
beq.32052:
	addi	x8, x0, 0	# 1168
	fsqrt	f3, f3	# 1168
	fsub	f2, f2, f3	# 1168
	addi	x9, x0, 4	# 1168
	mul		x9, x30, x9	# 1168
	add		x9, x17, x9	# 1168
	flw		f3, 0(x9)	# 1168
	fmul	f2, f2, f3	# 1168
	mul		x8, x30, x8	# 1168
	addi	x8, x8, 60540	# 1168
	fsw		f2, 0(x8)	# 1168
beq_cont.32051:
	addi	x8, x0, 1	# 1169
fle_cont.32049:
feq_cont.32047:
	jal		x0, beq_cont.32045	# 1185
beq.32046:
	mul		x8, x30, x12	# 1148
	add		x8, x17, x8	# 1148
	flw		f2, 0(x8)	# 1148
	fle		x31, f1, f2	# 122
	beq		x31, x0, fle_else.32054	# 122
	addi	x8, x0, 0	# 1151
	jal		x0, fle_cont.32053	# 122
fle_else.32054:
	mul		x8, x30, x12	# 1149
	add		x8, x17, x8	# 1149
	flw		f2, 0(x8)	# 1149
	mul		x8, x30, x11	# 1149
	add		x8, x16, x8	# 1149
	flw		f3, 0(x8)	# 1149
	fmul	f2, f2, f3	# 1149
	mul		x8, x30, x12	# 1149
	addi	x8, x8, 60540	# 1149
	fsw		f2, 0(x8)	# 1149
	addi	x8, x0, 1	# 1150
fle_cont.32053:
beq_cont.32045:
	jal		x0, beq_cont.32043	# 1183
beq.32044:
	lw		x16, 0(x6)	# 641
	mul		x18, x30, x12	# 1066
	add		x18, x17, x18	# 1066
	flw		f5, 0(x18)	# 1066
	fsub	f5, f5, f2	# 1066
	mul		x18, x30, x13	# 1066
	add		x18, x17, x18	# 1066
	flw		f6, 0(x18)	# 1066
	fmul	f5, f5, f6	# 1066
	mul		x18, x30, x13	# 1068
	add		x18, x16, x18	# 1068
	flw		f6, 0(x18)	# 1068
	fmul	f6, f5, f6	# 1068
	fadd	f6, f6, f3	# 1068
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32055	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32055:
	lw		x18, 16(x10)	# 403
	mul		x19, x30, x13	# 408
	add		x18, x18, x19	# 408
	flw		f7, 0(x18)	# 408
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32057	# 125
	addi	x18, x0, 0	# 1072
	jal		x0, fle_cont.32056	# 125
fle_else.32057:
	mul		x18, x30, x9	# 1069
	add		x18, x16, x18	# 1069
	flw		f6, 0(x18)	# 1069
	fmul	f6, f5, f6	# 1069
	fadd	f6, f6, f4	# 1069
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32058	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32058:
	lw		x18, 16(x10)	# 413
	mul		x19, x30, x9	# 418
	add		x18, x18, x19	# 418
	flw		f7, 0(x18)	# 418
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32060	# 125
	addi	x18, x0, 0	# 1071
	jal		x0, fle_cont.32059	# 125
fle_else.32060:
	mul		x18, x30, x13	# 1070
	add		x18, x17, x18	# 1070
	flw		f6, 0(x18)	# 1070
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.32062	# 120
	addi	x18, x0, 0	# 1070
	jal		x0, feq_cont.32061	# 120
feq_else.32062:
	addi	x18, x0, 1	# 1070
feq_cont.32061:
fle_cont.32059:
fle_cont.32056:
	beq		x18, x12, beq.32064	# 1067
	mul		x8, x30, x12	# 1074
	addi	x8, x8, 60540	# 1074
	fsw		f5, 0(x8)	# 1074
	addi	x8, x0, 1	# 1074
	jal		x0, beq_cont.32063	# 1067
beq.32064:
	mul		x18, x30, x9	# 1075
	add		x18, x17, x18	# 1075
	flw		f5, 0(x18)	# 1075
	fsub	f5, f5, f3	# 1075
	mul		x18, x30, x11	# 1075
	add		x18, x17, x18	# 1075
	flw		f6, 0(x18)	# 1075
	fmul	f5, f5, f6	# 1075
	mul		x18, x30, x12	# 1077
	add		x18, x16, x18	# 1077
	flw		f6, 0(x18)	# 1077
	fmul	f7, f5, f6	# 1077
	fadd	f7, f7, f2	# 1077
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.32065	# 124
	fsub	f7, f0, f7	# 124
fle_cont.32065:
	lw		x18, 16(x10)	# 393
	mul		x19, x30, x12	# 398
	add		x18, x18, x19	# 398
	flw		f8, 0(x18)	# 398
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32067	# 125
	addi	x9, x0, 0	# 1081
	jal		x0, fle_cont.32066	# 125
fle_else.32067:
	mul		x18, x30, x9	# 1078
	add		x18, x16, x18	# 1078
	flw		f7, 0(x18)	# 1078
	fmul	f7, f5, f7	# 1078
	fadd	f7, f7, f4	# 1078
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.32068	# 124
	fsub	f7, f0, f7	# 124
fle_cont.32068:
	lw		x18, 16(x10)	# 413
	mul		x9, x30, x9	# 418
	add		x9, x18, x9	# 418
	flw		f8, 0(x9)	# 418
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32070	# 125
	addi	x9, x0, 0	# 1080
	jal		x0, fle_cont.32069	# 125
fle_else.32070:
	mul		x9, x30, x11	# 1079
	add		x9, x17, x9	# 1079
	flw		f7, 0(x9)	# 1079
	feq		x31, f7, f1	# 120
	beq		x31, x0, feq_else.32072	# 120
	addi	x9, x0, 0	# 1079
	jal		x0, feq_cont.32071	# 120
feq_else.32072:
	addi	x9, x0, 1	# 1079
feq_cont.32071:
fle_cont.32069:
fle_cont.32066:
	beq		x9, x12, beq.32074	# 1076
	mul		x8, x30, x12	# 1083
	addi	x8, x8, 60540	# 1083
	fsw		f5, 0(x8)	# 1083
	addi	x8, x0, 2	# 1083
	jal		x0, beq_cont.32073	# 1076
beq.32074:
	addi	x9, x0, 4	# 1084
	mul		x9, x30, x9	# 1084
	add		x9, x17, x9	# 1084
	flw		f5, 0(x9)	# 1084
	fsub	f4, f5, f4	# 1084
	mul		x9, x30, x8	# 1084
	add		x9, x17, x9	# 1084
	flw		f5, 0(x9)	# 1084
	fmul	f4, f4, f5	# 1084
	fmul	f5, f4, f6	# 1086
	fadd	f2, f5, f2	# 1086
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32075	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32075:
	lw		x9, 16(x10)	# 393
	mul		x11, x30, x12	# 398
	add		x9, x9, x11	# 398
	flw		f5, 0(x9)	# 398
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.32077	# 125
	addi	x8, x0, 0	# 1090
	jal		x0, fle_cont.32076	# 125
fle_else.32077:
	mul		x9, x30, x13	# 1087
	add		x9, x16, x9	# 1087
	flw		f2, 0(x9)	# 1087
	fmul	f2, f4, f2	# 1087
	fadd	f2, f2, f3	# 1087
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32078	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32078:
	lw		x9, 16(x10)	# 403
	mul		x10, x30, x13	# 408
	add		x9, x9, x10	# 408
	flw		f3, 0(x9)	# 408
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32080	# 125
	addi	x8, x0, 0	# 1089
	jal		x0, fle_cont.32079	# 125
fle_else.32080:
	mul		x8, x30, x8	# 1088
	add		x8, x17, x8	# 1088
	flw		f2, 0(x8)	# 1088
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.32082	# 120
	addi	x8, x0, 0	# 1088
	jal		x0, feq_cont.32081	# 120
feq_else.32082:
	addi	x8, x0, 1	# 1088
feq_cont.32081:
fle_cont.32079:
fle_cont.32076:
	beq		x8, x12, beq.32084	# 1085
	mul		x8, x30, x12	# 1092
	addi	x8, x8, 60540	# 1092
	fsw		f4, 0(x8)	# 1092
	addi	x8, x0, 3	# 1092
	jal		x0, beq_cont.32083	# 1085
beq.32084:
	addi	x8, x0, 0	# 1094
beq_cont.32083:
beq_cont.32073:
beq_cont.32063:
beq_cont.32043:
	beq		x8, x12, beq.32085	# 1565
	mul		x9, x30, x12	# 1569
	addi	x9, x9, 60540	# 1569
	flw		f2, 0(x9)	# 1569
	sw		x6, 0(x2)	# 125
	sw		x5, -4(x2)	# 125
	sw		x29, -8(x2)	# 125
	sw		x13, -12(x2)	# 125
	sw		x4, -16(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32087	# 125
	jal		x0, fle_cont.32086	# 125
fle_else.32087:
	addi	x9, x0, 0	# 1572
	mul		x9, x30, x9	# 1572
	addi	x9, x9, 60548	# 1572
	flw		f1, 0(x9)	# 1572
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32089	# 125
	jal		x0, fle_cont.32088	# 125
fle_else.32089:
	lui		x9, %hi(l.26229)	# 1574
	ori		x9, x0, %lo(l.26229)	# 1574
	flw		f1, 0(x9)	# 1574
	fadd	f1, f2, f1	# 1574
	addi	x9, x0, 0	# 1575
	mul		x9, x30, x9	# 1575
	add		x9, x14, x9	# 1575
	flw		f2, 0(x9)	# 1575
	fmul	f2, f2, f1	# 1575
	addi	x9, x0, 0	# 1575
	mul		x9, x30, x9	# 1575
	addi	x9, x9, 60648	# 1575
	flw		f3, 0(x9)	# 1575
	fadd	f2, f2, f3	# 1575
	addi	x9, x0, 1	# 1576
	mul		x9, x30, x9	# 1576
	add		x9, x14, x9	# 1576
	flw		f3, 0(x9)	# 1576
	fmul	f3, f3, f1	# 1576
	addi	x9, x0, 1	# 1576
	mul		x9, x30, x9	# 1576
	addi	x9, x9, 60648	# 1576
	flw		f4, 0(x9)	# 1576
	fadd	f3, f3, f4	# 1576
	addi	x9, x0, 2	# 1577
	mul		x9, x30, x9	# 1577
	add		x9, x14, x9	# 1577
	flw		f4, 0(x9)	# 1577
	fmul	f4, f4, f1	# 1577
	addi	x9, x0, 2	# 1577
	mul		x9, x30, x9	# 1577
	addi	x9, x9, 60648	# 1577
	flw		f5, 0(x9)	# 1577
	fadd	f4, f4, f5	# 1577
	addi	x9, x0, 0	# 1578
	sw		x8, -20(x2)	# 1578
	sw		x15, -24(x2)	# 1578
	fsw		f4, -28(x2)	# 1578
	fsw		f3, -32(x2)	# 1578
	fsw		f2, -36(x2)	# 1578
	fsw		f1, -40(x2)	# 1578
	addi	x4, x9, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -44(x2)	# 1578
	addi	x2, x2, -48	# 1578
	lw		x31, 0(x29)	# 1578
	jalr	x1, x31, 0	# 1578
	addi	x2, x2, 48	# 1578
	lw		x1, -44(x2)	# 1578
	addi	x5, x0, 0	# 1578
	beq		x4, x5, beq_cont.32090	# 1578
	addi	x4, x0, 0	# 1580
	mul		x4, x30, x4	# 1580
	addi	x4, x4, 60548	# 1580
	flw		f1, -40(x2)	# 1580
	fsw		f1, 0(x4)	# 1580
	addi	x4, x0, 0	# 242
	mul		x4, x30, x4	# 242
	addi	x4, x4, 60552	# 242
	flw		f1, -36(x2)	# 242
	fsw		f1, 0(x4)	# 242
	addi	x4, x0, 1	# 243
	mul		x4, x30, x4	# 243
	addi	x4, x4, 60552	# 243
	flw		f1, -32(x2)	# 243
	fsw		f1, 0(x4)	# 243
	addi	x4, x0, 2	# 244
	mul		x4, x30, x4	# 244
	addi	x4, x4, 60552	# 244
	flw		f1, -28(x2)	# 244
	fsw		f1, 0(x4)	# 244
	addi	x4, x0, 0	# 1582
	mul		x4, x30, x4	# 1582
	addi	x4, x4, 60564	# 1582
	lw		x5, -24(x2)	# 1582
	sw		x5, 0(x4)	# 1582
	addi	x4, x0, 0	# 1583
	mul		x4, x30, x4	# 1583
	addi	x4, x4, 60544	# 1583
	lw		x5, -20(x2)	# 1583
	sw		x5, 0(x4)	# 1583
beq_cont.32090:
fle_cont.32088:
fle_cont.32086:
	lw		x4, -12(x2)	# 1589
	lw		x5, -16(x2)	# 1589
	add		x4, x5, x4	# 1589
	lw		x5, -4(x2)	# 1589
	lw		x6, 0(x2)	# 1589
	lw		x29, -8(x2)	# 1589
	lw		x31, 0(x29)	# 1589
	jalr	x0, x31, 0	# 1589
beq.32085:
	mul		x7, x30, x15	# 1593
	addi	x7, x7, 60048	# 1593
	lw		x7, 0(x7)	# 1593
	lw		x7, 24(x7)	# 375
	beq		x7, x12, beq.32091	# 1593
	add		x4, x4, x13	# 1594
	lw		x31, 0(x29)	# 1594
	jalr	x0, x31, 0	# 1594
beq.32091:
	jalr	x0, x1, 0	# 1595
beq.32042:
	jalr	x0, x1, 0	# 1562
solve_one_or_network_fast.2847.17761:
	lw		x7, 16(x29)	# 1601
	lw		x8, 12(x29)	# 1601
	lw		x9, 8(x29)	# 1601
	lw		x10, 4(x29)	# 1601
	mul		x11, x30, x4	# 1601
	add		x11, x5, x11	# 1601
	lw		x11, 0(x11)	# 1601
	beq		x11, x8, beq.32094	# 1602
	mul		x8, x30, x11	# 1603
	addi	x8, x8, 60332	# 1603
	lw		x8, 0(x8)	# 1603
	sw		x6, 0(x2)	# 1604
	sw		x5, -4(x2)	# 1604
	sw		x29, -8(x2)	# 1604
	sw		x10, -12(x2)	# 1604
	sw		x4, -16(x2)	# 1604
	addi	x5, x8, 0
	addi	x4, x9, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1604
	addi	x2, x2, -24	# 1604
	lw		x31, 0(x29)	# 1604
	jalr	x1, x31, 0	# 1604
	addi	x2, x2, 24	# 1604
	lw		x1, -20(x2)	# 1604
	lw		x4, -12(x2)	# 1605
	lw		x5, -16(x2)	# 1605
	add		x4, x5, x4	# 1605
	lw		x5, -4(x2)	# 1605
	lw		x6, 0(x2)	# 1605
	lw		x29, -8(x2)	# 1605
	lw		x31, 0(x29)	# 1605
	jalr	x0, x31, 0	# 1605
beq.32094:
	jalr	x0, x1, 0	# 1606
trace_or_matrix_fast.2851.17765:
	lw		x7, 32(x29)	# 1611
	lw		x8, 28(x29)	# 1611
	lw		x9, 24(x29)	# 1611
	lw		x10, 20(x29)	# 1611
	lw		x11, 16(x29)	# 1611
	lw		x12, 12(x29)	# 1611
	lw		x13, 8(x29)	# 1611
	flw		f1, 4(x29)	# 1611
	mul		x14, x30, x4	# 1611
	add		x14, x5, x14	# 1611
	lw		x14, 0(x14)	# 1611
	mul		x15, x30, x12	# 1612
	add		x15, x14, x15	# 1612
	lw		x15, 0(x15)	# 1612
	beq		x15, x10, beq.32096	# 1613
	addi	x10, x0, 99	# 1616
	sw		x6, 0(x2)	# 1616
	sw		x5, -4(x2)	# 1616
	sw		x29, -8(x2)	# 1616
	sw		x13, -12(x2)	# 1616
	sw		x4, -16(x2)	# 1616
	beq		x15, x10, beq.32098	# 1616
	mul		x10, x30, x15	# 1175
	addi	x10, x10, 60048	# 1175
	lw		x10, 0(x10)	# 1175
	lw		x16, 40(x10)	# 550
	addi	x17, x0, 0	# 1177
	mul		x17, x30, x17	# 1177
	add		x17, x16, x17	# 1177
	flw		f2, 0(x17)	# 1177
	addi	x17, x0, 1	# 1178
	mul		x17, x30, x17	# 1178
	add		x17, x16, x17	# 1178
	flw		f3, 0(x17)	# 1178
	addi	x17, x0, 2	# 1179
	mul		x17, x30, x17	# 1179
	add		x17, x16, x17	# 1179
	flw		f4, 0(x17)	# 1179
	lw		x17, 4(x6)	# 647
	mul		x15, x30, x15	# 1181
	add		x15, x17, x15	# 1181
	lw		x15, 0(x15)	# 1181
	lw		x17, 4(x10)	# 355
	addi	x18, x0, 1	# 1183
	beq		x17, x18, beq.32100	# 1183
	addi	x8, x0, 2	# 1185
	beq		x17, x8, beq.32102	# 1185
	mul		x8, x30, x12	# 1157
	add		x8, x15, x8	# 1157
	flw		f5, 0(x8)	# 1157
	feq		x31, f5, f1	# 120
	beq		x31, x0, feq_else.32104	# 120
	addi	x8, x0, 0	# 1159
	jal		x0, feq_cont.32103	# 120
feq_else.32104:
	mul		x8, x30, x13	# 1161
	add		x8, x15, x8	# 1161
	flw		f6, 0(x8)	# 1161
	fmul	f2, f6, f2	# 1161
	mul		x8, x30, x9	# 1161
	add		x8, x15, x8	# 1161
	flw		f6, 0(x8)	# 1161
	fmul	f3, f6, f3	# 1161
	fadd	f2, f2, f3	# 1161
	mul		x8, x30, x11	# 1161
	add		x8, x15, x8	# 1161
	flw		f3, 0(x8)	# 1161
	fmul	f3, f3, f4	# 1161
	fadd	f2, f2, f3	# 1161
	mul		x8, x30, x11	# 1162
	add		x8, x16, x8	# 1162
	flw		f3, 0(x8)	# 1162
	fmul	f4, f2, f2	# 127
	fmul	f3, f5, f3	# 1163
	fsub	f3, f4, f3	# 1163
	fle		x31, f3, f1	# 121
	beq		x31, x0, fle_else.32106	# 121
	addi	x8, x0, 0	# 1170
	jal		x0, fle_cont.32105	# 121
fle_else.32106:
	lw		x8, 24(x10)	# 375
	beq		x8, x12, beq.32108	# 1165
	addi	x8, x0, 0	# 1166
	fsqrt	f1, f3	# 1166
	fadd	f1, f2, f1	# 1166
	addi	x9, x0, 4	# 1166
	mul		x9, x30, x9	# 1166
	add		x9, x15, x9	# 1166
	flw		f2, 0(x9)	# 1166
	fmul	f1, f1, f2	# 1166
	mul		x8, x30, x8	# 1166
	addi	x8, x8, 60540	# 1166
	fsw		f1, 0(x8)	# 1166
	jal		x0, beq_cont.32107	# 1165
beq.32108:
	addi	x8, x0, 0	# 1168
	fsqrt	f1, f3	# 1168
	fsub	f1, f2, f1	# 1168
	addi	x9, x0, 4	# 1168
	mul		x9, x30, x9	# 1168
	add		x9, x15, x9	# 1168
	flw		f2, 0(x9)	# 1168
	fmul	f1, f1, f2	# 1168
	mul		x8, x30, x8	# 1168
	addi	x8, x8, 60540	# 1168
	fsw		f1, 0(x8)	# 1168
beq_cont.32107:
	addi	x8, x0, 1	# 1169
fle_cont.32105:
feq_cont.32103:
	jal		x0, beq_cont.32101	# 1185
beq.32102:
	mul		x8, x30, x12	# 1148
	add		x8, x15, x8	# 1148
	flw		f2, 0(x8)	# 1148
	fle		x31, f1, f2	# 122
	beq		x31, x0, fle_else.32110	# 122
	addi	x8, x0, 0	# 1151
	jal		x0, fle_cont.32109	# 122
fle_else.32110:
	mul		x8, x30, x12	# 1149
	add		x8, x15, x8	# 1149
	flw		f1, 0(x8)	# 1149
	mul		x8, x30, x11	# 1149
	add		x8, x16, x8	# 1149
	flw		f2, 0(x8)	# 1149
	fmul	f1, f1, f2	# 1149
	mul		x8, x30, x12	# 1149
	addi	x8, x8, 60540	# 1149
	fsw		f1, 0(x8)	# 1149
	addi	x8, x0, 1	# 1150
fle_cont.32109:
beq_cont.32101:
	jal		x0, beq_cont.32099	# 1183
beq.32100:
	lw		x16, 0(x6)	# 641
	mul		x17, x30, x12	# 1066
	add		x17, x15, x17	# 1066
	flw		f5, 0(x17)	# 1066
	fsub	f5, f5, f2	# 1066
	mul		x17, x30, x13	# 1066
	add		x17, x15, x17	# 1066
	flw		f6, 0(x17)	# 1066
	fmul	f5, f5, f6	# 1066
	mul		x17, x30, x13	# 1068
	add		x17, x16, x17	# 1068
	flw		f6, 0(x17)	# 1068
	fmul	f6, f5, f6	# 1068
	fadd	f6, f6, f3	# 1068
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32111	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32111:
	lw		x17, 16(x10)	# 403
	mul		x18, x30, x13	# 408
	add		x17, x17, x18	# 408
	flw		f7, 0(x17)	# 408
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32113	# 125
	addi	x17, x0, 0	# 1072
	jal		x0, fle_cont.32112	# 125
fle_else.32113:
	mul		x17, x30, x9	# 1069
	add		x17, x16, x17	# 1069
	flw		f6, 0(x17)	# 1069
	fmul	f6, f5, f6	# 1069
	fadd	f6, f6, f4	# 1069
	fle		x31, f6, f1	# 124
	beq		x31, x0, fle_cont.32114	# 124
	fsub	f6, f0, f6	# 124
fle_cont.32114:
	lw		x17, 16(x10)	# 413
	mul		x18, x30, x9	# 418
	add		x17, x17, x18	# 418
	flw		f7, 0(x17)	# 418
	fle		x31, f7, f6	# 125
	beq		x31, x0, fle_else.32116	# 125
	addi	x17, x0, 0	# 1071
	jal		x0, fle_cont.32115	# 125
fle_else.32116:
	mul		x17, x30, x13	# 1070
	add		x17, x15, x17	# 1070
	flw		f6, 0(x17)	# 1070
	feq		x31, f6, f1	# 120
	beq		x31, x0, feq_else.32118	# 120
	addi	x17, x0, 0	# 1070
	jal		x0, feq_cont.32117	# 120
feq_else.32118:
	addi	x17, x0, 1	# 1070
feq_cont.32117:
fle_cont.32115:
fle_cont.32112:
	beq		x17, x12, beq.32120	# 1067
	mul		x8, x30, x12	# 1074
	addi	x8, x8, 60540	# 1074
	fsw		f5, 0(x8)	# 1074
	addi	x8, x0, 1	# 1074
	jal		x0, beq_cont.32119	# 1067
beq.32120:
	mul		x17, x30, x9	# 1075
	add		x17, x15, x17	# 1075
	flw		f5, 0(x17)	# 1075
	fsub	f5, f5, f3	# 1075
	mul		x17, x30, x11	# 1075
	add		x17, x15, x17	# 1075
	flw		f6, 0(x17)	# 1075
	fmul	f5, f5, f6	# 1075
	mul		x17, x30, x12	# 1077
	add		x17, x16, x17	# 1077
	flw		f6, 0(x17)	# 1077
	fmul	f7, f5, f6	# 1077
	fadd	f7, f7, f2	# 1077
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.32121	# 124
	fsub	f7, f0, f7	# 124
fle_cont.32121:
	lw		x17, 16(x10)	# 393
	mul		x18, x30, x12	# 398
	add		x17, x17, x18	# 398
	flw		f8, 0(x17)	# 398
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32123	# 125
	addi	x9, x0, 0	# 1081
	jal		x0, fle_cont.32122	# 125
fle_else.32123:
	mul		x17, x30, x9	# 1078
	add		x17, x16, x17	# 1078
	flw		f7, 0(x17)	# 1078
	fmul	f7, f5, f7	# 1078
	fadd	f7, f7, f4	# 1078
	fle		x31, f7, f1	# 124
	beq		x31, x0, fle_cont.32124	# 124
	fsub	f7, f0, f7	# 124
fle_cont.32124:
	lw		x17, 16(x10)	# 413
	mul		x9, x30, x9	# 418
	add		x9, x17, x9	# 418
	flw		f8, 0(x9)	# 418
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32126	# 125
	addi	x9, x0, 0	# 1080
	jal		x0, fle_cont.32125	# 125
fle_else.32126:
	mul		x9, x30, x11	# 1079
	add		x9, x15, x9	# 1079
	flw		f7, 0(x9)	# 1079
	feq		x31, f7, f1	# 120
	beq		x31, x0, feq_else.32128	# 120
	addi	x9, x0, 0	# 1079
	jal		x0, feq_cont.32127	# 120
feq_else.32128:
	addi	x9, x0, 1	# 1079
feq_cont.32127:
fle_cont.32125:
fle_cont.32122:
	beq		x9, x12, beq.32130	# 1076
	mul		x8, x30, x12	# 1083
	addi	x8, x8, 60540	# 1083
	fsw		f5, 0(x8)	# 1083
	addi	x8, x0, 2	# 1083
	jal		x0, beq_cont.32129	# 1076
beq.32130:
	addi	x9, x0, 4	# 1084
	mul		x9, x30, x9	# 1084
	add		x9, x15, x9	# 1084
	flw		f5, 0(x9)	# 1084
	fsub	f4, f5, f4	# 1084
	mul		x9, x30, x8	# 1084
	add		x9, x15, x9	# 1084
	flw		f5, 0(x9)	# 1084
	fmul	f4, f4, f5	# 1084
	fmul	f5, f4, f6	# 1086
	fadd	f2, f5, f2	# 1086
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32131	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32131:
	lw		x9, 16(x10)	# 393
	mul		x11, x30, x12	# 398
	add		x9, x9, x11	# 398
	flw		f5, 0(x9)	# 398
	fle		x31, f5, f2	# 125
	beq		x31, x0, fle_else.32133	# 125
	addi	x8, x0, 0	# 1090
	jal		x0, fle_cont.32132	# 125
fle_else.32133:
	mul		x9, x30, x13	# 1087
	add		x9, x16, x9	# 1087
	flw		f2, 0(x9)	# 1087
	fmul	f2, f4, f2	# 1087
	fadd	f2, f2, f3	# 1087
	fle		x31, f2, f1	# 124
	beq		x31, x0, fle_cont.32134	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32134:
	lw		x9, 16(x10)	# 403
	mul		x10, x30, x13	# 408
	add		x9, x9, x10	# 408
	flw		f3, 0(x9)	# 408
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32136	# 125
	addi	x8, x0, 0	# 1089
	jal		x0, fle_cont.32135	# 125
fle_else.32136:
	mul		x8, x30, x8	# 1088
	add		x8, x15, x8	# 1088
	flw		f2, 0(x8)	# 1088
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.32138	# 120
	addi	x8, x0, 0	# 1088
	jal		x0, feq_cont.32137	# 120
feq_else.32138:
	addi	x8, x0, 1	# 1088
feq_cont.32137:
fle_cont.32135:
fle_cont.32132:
	beq		x8, x12, beq.32140	# 1085
	mul		x8, x30, x12	# 1092
	addi	x8, x8, 60540	# 1092
	fsw		f4, 0(x8)	# 1092
	addi	x8, x0, 3	# 1092
	jal		x0, beq_cont.32139	# 1085
beq.32140:
	addi	x8, x0, 0	# 1094
beq_cont.32139:
beq_cont.32129:
beq_cont.32119:
beq_cont.32099:
	addi	x9, x0, 0	# 1622
	beq		x8, x9, beq_cont.32141	# 1622
	addi	x8, x0, 0	# 1623
	mul		x8, x30, x8	# 1623
	addi	x8, x8, 60540	# 1623
	flw		f1, 0(x8)	# 1623
	addi	x8, x0, 0	# 1624
	mul		x8, x30, x8	# 1624
	addi	x8, x8, 60548	# 1624
	flw		f2, 0(x8)	# 1624
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32143	# 125
	jal		x0, fle_cont.32142	# 125
fle_else.32143:
	addi	x8, x0, 1	# 1625
	addi	x5, x14, 0
	addi	x4, x8, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1625
	addi	x2, x2, -24	# 1625
	lw		x31, 0(x29)	# 1625
	jalr	x1, x31, 0	# 1625
	addi	x2, x2, 24	# 1625
	lw		x1, -20(x2)	# 1625
fle_cont.32142:
beq_cont.32141:
	jal		x0, beq_cont.32097	# 1616
beq.32098:
	addi	x8, x0, 1	# 1617
	addi	x5, x14, 0
	addi	x4, x8, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1617
	addi	x2, x2, -24	# 1617
	lw		x31, 0(x29)	# 1617
	jalr	x1, x31, 0	# 1617
	addi	x2, x2, 24	# 1617
	lw		x1, -20(x2)	# 1617
beq_cont.32097:
	lw		x4, -12(x2)	# 1629
	lw		x5, -16(x2)	# 1629
	add		x4, x5, x4	# 1629
	lw		x5, -4(x2)	# 1629
	lw		x6, 0(x2)	# 1629
	lw		x29, -8(x2)	# 1629
	lw		x31, 0(x29)	# 1629
	jalr	x0, x31, 0	# 1629
beq.32096:
	jalr	x0, x1, 0	# 1614
trace_reflections.2873.17769:
	lw		x6, 28(x29)	# 1806
	lw		x7, 24(x29)	# 1806
	lw		x8, 20(x29)	# 1806
	lw		x9, 16(x29)	# 1806
	lw		x10, 12(x29)	# 1806
	flw		f3, 8(x29)	# 1806
	flw		f4, 4(x29)	# 1806
	ble		x9, x4, ble.32145	# 1806
	jalr	x0, x1, 0	# 1826
ble.32145:
	mul		x11, x30, x4	# 1807
	addi	x11, x11, 61016	# 1807
	lw		x11, 0(x11)	# 1807
	lw		x12, 4(x11)	# 663
	mul		x13, x30, x9	# 1636
	addi	x13, x13, 60548	# 1636
	fsw		f3, 0(x13)	# 1636
	mul		x13, x30, x9	# 1637
	addi	x13, x13, 60536	# 1637
	lw		x13, 0(x13)	# 1637
	sw		x29, 0(x2)	# 1637
	sw		x4, -4(x2)	# 1637
	fsw		f2, -8(x2)	# 1637
	sw		x8, -12(x2)	# 1637
	sw		x10, -16(x2)	# 1637
	fsw		f4, -20(x2)	# 1637
	sw		x5, -24(x2)	# 1637
	fsw		f1, -28(x2)	# 1637
	sw		x12, -32(x2)	# 1637
	sw		x7, -36(x2)	# 1637
	sw		x11, -40(x2)	# 1637
	sw		x9, -44(x2)	# 1637
	addi	x5, x13, 0
	addi	x4, x9, 0
	addi	x29, x6, 0
	addi	x6, x12, 0
	sw		x1, -48(x2)	# 1637
	addi	x2, x2, -52	# 1637
	lw		x31, 0(x29)	# 1637
	jalr	x1, x31, 0	# 1637
	addi	x2, x2, 52	# 1637
	lw		x1, -48(x2)	# 1637
	lw		x4, -44(x2)	# 1638
	mul		x5, x30, x4	# 1638
	addi	x5, x5, 60548	# 1638
	flw		f1, 0(x5)	# 1638
	fadd	f2, f0, f23	# 1640
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32148	# 125
	addi	x5, x0, 0	# 1642
	jal		x0, fle_cont.32147	# 125
fle_else.32148:
	fadd	f2, f0, f25	# 1641
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32150	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32149	# 125
fle_else.32150:
	addi	x5, x0, 1	# 125
fle_cont.32149:
fle_cont.32147:
	beq		x5, x4, beq_cont.32151	# 1811
	addi	x5, x0, 0	# 1812
	mul		x5, x30, x5	# 1812
	addi	x5, x5, 60564	# 1812
	lw		x5, 0(x5)	# 1812
	addi	x6, x0, 4	# 1812
	mul		x5, x5, x6	# 1812
	addi	x6, x0, 0	# 1812
	mul		x6, x30, x6	# 1812
	addi	x6, x6, 60544	# 1812
	lw		x6, 0(x6)	# 1812
	add		x5, x5, x6	# 1812
	lw		x6, -40(x2)	# 657
	lw		x7, 0(x6)	# 657
	beq		x5, x7, beq.32153	# 1813
	jal		x0, beq_cont.32152	# 1813
beq.32153:
	addi	x5, x0, 0	# 1815
	addi	x7, x0, 0	# 1815
	mul		x7, x30, x7	# 1815
	addi	x7, x7, 60536	# 1815
	lw		x7, 0(x7)	# 1815
	lw		x29, -36(x2)	# 1815
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -48(x2)	# 1815
	addi	x2, x2, -52	# 1815
	lw		x31, 0(x29)	# 1815
	jalr	x1, x31, 0	# 1815
	addi	x2, x2, 52	# 1815
	lw		x1, -48(x2)	# 1815
	addi	x5, x0, 0	# 1815
	beq		x4, x5, beq.32155	# 1815
	jal		x0, beq_cont.32154	# 1815
beq.32155:
	lw		x4, -32(x2)	# 641
	lw		x5, 0(x4)	# 641
	addi	x6, x0, 0	# 294
	mul		x6, x30, x6	# 294
	addi	x6, x6, 60568	# 294
	flw		f1, 0(x6)	# 294
	addi	x6, x0, 0	# 294
	mul		x6, x30, x6	# 294
	add		x6, x5, x6	# 294
	flw		f2, 0(x6)	# 294
	fmul	f1, f1, f2	# 294
	addi	x6, x0, 1	# 294
	mul		x6, x30, x6	# 294
	addi	x6, x6, 60568	# 294
	flw		f2, 0(x6)	# 294
	addi	x6, x0, 1	# 294
	mul		x6, x30, x6	# 294
	add		x6, x5, x6	# 294
	flw		f3, 0(x6)	# 294
	fmul	f2, f2, f3	# 294
	fadd	f1, f1, f2	# 294
	addi	x6, x0, 2	# 294
	mul		x6, x30, x6	# 294
	addi	x6, x6, 60568	# 294
	flw		f2, 0(x6)	# 294
	addi	x6, x0, 2	# 294
	mul		x6, x30, x6	# 294
	add		x5, x5, x6	# 294
	flw		f3, 0(x5)	# 294
	fmul	f2, f2, f3	# 294
	fadd	f1, f1, f2	# 294
	lw		x5, -40(x2)	# 1819
	flw		f2, 8(x5)	# 1819
	flw		f3, -28(x2)	# 1819
	fmul	f4, f2, f3	# 1819
	fmul	f1, f4, f1	# 1819
	lw		x4, 0(x4)	# 641
	addi	x5, x0, 0	# 294
	mul		x5, x30, x5	# 294
	lw		x6, -24(x2)	# 294
	add		x5, x6, x5	# 294
	flw		f4, 0(x5)	# 294
	addi	x5, x0, 0	# 294
	mul		x5, x30, x5	# 294
	add		x5, x4, x5	# 294
	flw		f5, 0(x5)	# 294
	fmul	f4, f4, f5	# 294
	addi	x5, x0, 1	# 294
	mul		x5, x30, x5	# 294
	add		x5, x6, x5	# 294
	flw		f5, 0(x5)	# 294
	addi	x5, x0, 1	# 294
	mul		x5, x30, x5	# 294
	add		x5, x4, x5	# 294
	flw		f6, 0(x5)	# 294
	fmul	f5, f5, f6	# 294
	fadd	f4, f4, f5	# 294
	addi	x5, x0, 2	# 294
	mul		x5, x30, x5	# 294
	add		x5, x6, x5	# 294
	flw		f5, 0(x5)	# 294
	addi	x5, x0, 2	# 294
	mul		x5, x30, x5	# 294
	add		x4, x4, x5	# 294
	flw		f6, 0(x4)	# 294
	fmul	f5, f5, f6	# 294
	fadd	f4, f4, f5	# 294
	fmul	f2, f2, f4	# 1820
	flw		f4, -20(x2)	# 121
	fle		x31, f1, f4	# 121
	beq		x31, x0, fle_else.32157	# 121
	jal		x0, fle_cont.32156	# 121
fle_else.32157:
	lw		x4, -44(x2)	# 304
	mul		x5, x30, x4	# 304
	addi	x5, x5, 60604	# 304
	flw		f5, 0(x5)	# 304
	mul		x5, x30, x4	# 304
	addi	x5, x5, 60580	# 304
	flw		f6, 0(x5)	# 304
	fmul	f6, f1, f6	# 304
	fadd	f5, f5, f6	# 304
	mul		x4, x30, x4	# 304
	addi	x4, x4, 60604	# 304
	fsw		f5, 0(x4)	# 304
	lw		x4, -16(x2)	# 305
	mul		x5, x30, x4	# 305
	addi	x5, x5, 60604	# 305
	flw		f5, 0(x5)	# 305
	mul		x5, x30, x4	# 305
	addi	x5, x5, 60580	# 305
	flw		f6, 0(x5)	# 305
	fmul	f6, f1, f6	# 305
	fadd	f5, f5, f6	# 305
	mul		x5, x30, x4	# 305
	addi	x5, x5, 60604	# 305
	fsw		f5, 0(x5)	# 305
	lw		x5, -12(x2)	# 306
	mul		x7, x30, x5	# 306
	addi	x7, x7, 60604	# 306
	flw		f5, 0(x7)	# 306
	mul		x7, x30, x5	# 306
	addi	x7, x7, 60580	# 306
	flw		f6, 0(x7)	# 306
	fmul	f1, f1, f6	# 306
	fadd	f1, f5, f1	# 306
	mul		x5, x30, x5	# 306
	addi	x5, x5, 60604	# 306
	fsw		f1, 0(x5)	# 306
fle_cont.32156:
	fle		x31, f2, f4	# 121
	beq		x31, x0, fle_else.32159	# 121
	jal		x0, fle_cont.32158	# 121
fle_else.32159:
	fmul	f1, f2, f2	# 127
	fmul	f1, f1, f1	# 127
	flw		f2, -8(x2)	# 1796
	fmul	f1, f1, f2	# 1796
	addi	x4, x0, 0	# 1797
	addi	x5, x0, 0	# 1797
	mul		x5, x30, x5	# 1797
	addi	x5, x5, 60604	# 1797
	flw		f4, 0(x5)	# 1797
	fadd	f4, f4, f1	# 1797
	mul		x4, x30, x4	# 1797
	addi	x4, x4, 60604	# 1797
	fsw		f4, 0(x4)	# 1797
	addi	x4, x0, 1	# 1798
	addi	x5, x0, 1	# 1798
	mul		x5, x30, x5	# 1798
	addi	x5, x5, 60604	# 1798
	flw		f4, 0(x5)	# 1798
	fadd	f4, f4, f1	# 1798
	mul		x4, x30, x4	# 1798
	addi	x4, x4, 60604	# 1798
	fsw		f4, 0(x4)	# 1798
	addi	x4, x0, 2	# 1799
	mul		x5, x30, x4	# 1799
	addi	x5, x5, 60604	# 1799
	flw		f4, 0(x5)	# 1799
	fadd	f1, f4, f1	# 1799
	mul		x4, x30, x4	# 1799
	addi	x4, x4, 60604	# 1799
	fsw		f1, 0(x4)	# 1799
fle_cont.32158:
beq_cont.32154:
beq_cont.32152:
beq_cont.32151:
	lw		x4, -16(x2)	# 1825
	lw		x5, -4(x2)	# 1825
	sub		x4, x5, x4	# 1825
	flw		f1, -28(x2)	# 1825
	flw		f2, -8(x2)	# 1825
	lw		x5, -24(x2)	# 1825
	lw		x29, 0(x2)	# 1825
	lw		x31, 0(x29)	# 1825
	jalr	x0, x31, 0	# 1825
trace_ray.2878.17774:
	lw		x7, 68(x29)	# 1834
	lw		x8, 64(x29)	# 1834
	lw		x9, 60(x29)	# 1834
	lw		x10, 56(x29)	# 1834
	lw		x11, 52(x29)	# 1834
	lw		x12, 48(x29)	# 1834
	lw		x13, 44(x29)	# 1834
	lw		x14, 40(x29)	# 1834
	lw		x15, 36(x29)	# 1834
	lw		x16, 32(x29)	# 1834
	lw		x17, 28(x29)	# 1834
	lw		x18, 24(x29)	# 1834
	lw		x19, 20(x29)	# 1834
	lw		x20, 16(x29)	# 1834
	flw		f3, 12(x29)	# 1834
	flw		f4, 8(x29)	# 1834
	flw		f5, 4(x29)	# 1834
	addi	x21, x0, 4	# 1834
	ble		x4, x21, ble.32160	# 1834
	jalr	x0, x1, 0	# 1915
ble.32160:
	lw		x22, 8(x6)	# 579
	mul		x23, x30, x19	# 1545
	addi	x23, x23, 60548	# 1545
	fsw		f3, 0(x23)	# 1545
	mul		x23, x30, x19	# 1546
	addi	x23, x23, 60536	# 1546
	lw		x23, 0(x23)	# 1546
	sw		x29, 0(x2)	# 1546
	fsw		f2, -4(x2)	# 1546
	sw		x7, -8(x2)	# 1546
	sw		x11, -12(x2)	# 1546
	sw		x10, -16(x2)	# 1546
	sw		x6, -20(x2)	# 1546
	sw		x21, -24(x2)	# 1546
	sw		x15, -28(x2)	# 1546
	sw		x14, -32(x2)	# 1546
	sw		x18, -36(x2)	# 1546
	sw		x9, -40(x2)	# 1546
	fsw		f4, -44(x2)	# 1546
	sw		x13, -48(x2)	# 1546
	sw		x12, -52(x2)	# 1546
	fsw		f1, -56(x2)	# 1546
	fsw		f5, -60(x2)	# 1546
	sw		x16, -64(x2)	# 1546
	sw		x20, -68(x2)	# 1546
	sw		x5, -72(x2)	# 1546
	sw		x17, -76(x2)	# 1546
	sw		x22, -80(x2)	# 1546
	sw		x4, -84(x2)	# 1546
	sw		x19, -88(x2)	# 1546
	addi	x6, x5, 0
	addi	x4, x19, 0
	addi	x29, x8, 0
	addi	x5, x23, 0
	sw		x1, -92(x2)	# 1546
	addi	x2, x2, -96	# 1546
	lw		x31, 0(x29)	# 1546
	jalr	x1, x31, 0	# 1546
	addi	x2, x2, 96	# 1546
	lw		x1, -92(x2)	# 1546
	lw		x4, -88(x2)	# 1547
	mul		x5, x30, x4	# 1547
	addi	x5, x5, 60548	# 1547
	flw		f1, 0(x5)	# 1547
	fadd	f2, f0, f23	# 1549
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32163	# 125
	addi	x5, x0, 0	# 1551
	jal		x0, fle_cont.32162	# 125
fle_else.32163:
	fadd	f2, f0, f25	# 1550
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32165	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32164	# 125
fle_else.32165:
	addi	x5, x0, 1	# 125
fle_cont.32164:
fle_cont.32162:
	beq		x5, x4, beq.32166	# 1836
	mul		x5, x30, x4	# 1838
	addi	x5, x5, 60564	# 1838
	lw		x5, 0(x5)	# 1838
	mul		x6, x30, x5	# 1839
	addi	x6, x6, 60048	# 1839
	lw		x6, 0(x6)	# 1839
	lw		x7, 8(x6)	# 365
	lw		x8, 28(x6)	# 463
	mul		x9, x30, x4	# 468
	add		x8, x8, x9	# 468
	flw		f1, 0(x8)	# 468
	flw		f2, -56(x2)	# 1841
	fmul	f1, f1, f2	# 1841
	lw		x8, 4(x6)	# 355
	lw		x9, -68(x2)	# 1695
	beq		x8, x9, beq.32168	# 1695
	addi	x10, x0, 2	# 1697
	beq		x8, x10, beq.32170	# 1697
	mul		x8, x30, x4	# 1672
	addi	x8, x8, 60552	# 1672
	flw		f3, 0(x8)	# 1672
	lw		x8, 20(x6)	# 433
	mul		x10, x30, x4	# 438
	add		x8, x8, x10	# 438
	flw		f4, 0(x8)	# 438
	fsub	f3, f3, f4	# 1672
	mul		x8, x30, x9	# 1673
	addi	x8, x8, 60552	# 1673
	flw		f4, 0(x8)	# 1673
	lw		x8, 20(x6)	# 443
	mul		x10, x30, x9	# 448
	add		x8, x8, x10	# 448
	flw		f5, 0(x8)	# 448
	fsub	f4, f4, f5	# 1673
	lw		x8, -64(x2)	# 1674
	mul		x10, x30, x8	# 1674
	addi	x10, x10, 60552	# 1674
	flw		f5, 0(x10)	# 1674
	lw		x10, 20(x6)	# 453
	mul		x11, x30, x8	# 458
	add		x10, x10, x11	# 458
	flw		f6, 0(x10)	# 458
	fsub	f5, f5, f6	# 1674
	lw		x10, 16(x6)	# 393
	mul		x11, x30, x4	# 398
	add		x10, x10, x11	# 398
	flw		f6, 0(x10)	# 398
	fmul	f6, f3, f6	# 1676
	lw		x10, 16(x6)	# 403
	mul		x11, x30, x9	# 408
	add		x10, x10, x11	# 408
	flw		f7, 0(x10)	# 408
	fmul	f7, f4, f7	# 1677
	lw		x10, 16(x6)	# 413
	mul		x11, x30, x8	# 418
	add		x10, x10, x11	# 418
	flw		f8, 0(x10)	# 418
	fmul	f8, f5, f8	# 1678
	lw		x10, 12(x6)	# 384
	beq		x10, x4, beq.32172	# 1680
	addi	x10, x0, 0	# 1685
	lw		x11, 36(x6)	# 533
	addi	x12, x0, 2	# 538
	mul		x12, x30, x12	# 538
	add		x11, x11, x12	# 538
	flw		f9, 0(x11)	# 538
	fmul	f9, f4, f9	# 1685
	lw		x11, 36(x6)	# 523
	addi	x12, x0, 1	# 528
	mul		x12, x30, x12	# 528
	add		x11, x11, x12	# 528
	flw		f10, 0(x11)	# 528
	fmul	f10, f5, f10	# 1685
	fadd	f9, f9, f10	# 1685
	fadd	f10, f0, f17	# 126
	fmul	f9, f9, f10	# 126
	fadd	f6, f6, f9	# 1685
	mul		x10, x30, x10	# 1685
	addi	x10, x10, 60568	# 1685
	fsw		f6, 0(x10)	# 1685
	addi	x10, x0, 1	# 1686
	lw		x11, 36(x6)	# 533
	addi	x12, x0, 2	# 538
	mul		x12, x30, x12	# 538
	add		x11, x11, x12	# 538
	flw		f6, 0(x11)	# 538
	fmul	f6, f3, f6	# 1686
	lw		x11, 36(x6)	# 513
	addi	x12, x0, 0	# 518
	mul		x12, x30, x12	# 518
	add		x11, x11, x12	# 518
	flw		f9, 0(x11)	# 518
	fmul	f5, f5, f9	# 1686
	fadd	f5, f6, f5	# 1686
	fadd	f6, f0, f17	# 126
	fmul	f5, f5, f6	# 126
	fadd	f5, f7, f5	# 1686
	mul		x10, x30, x10	# 1686
	addi	x10, x10, 60568	# 1686
	fsw		f5, 0(x10)	# 1686
	addi	x10, x0, 2	# 1687
	lw		x11, 36(x6)	# 523
	addi	x12, x0, 1	# 528
	mul		x12, x30, x12	# 528
	add		x11, x11, x12	# 528
	flw		f5, 0(x11)	# 528
	fmul	f3, f3, f5	# 1687
	lw		x11, 36(x6)	# 513
	addi	x12, x0, 0	# 518
	mul		x12, x30, x12	# 518
	add		x11, x11, x12	# 518
	flw		f5, 0(x11)	# 518
	fmul	f4, f4, f5	# 1687
	fadd	f3, f3, f4	# 1687
	fadd	f4, f0, f17	# 126
	fmul	f3, f3, f4	# 126
	fadd	f3, f8, f3	# 1687
	mul		x10, x30, x10	# 1687
	addi	x10, x10, 60568	# 1687
	fsw		f3, 0(x10)	# 1687
	jal		x0, beq_cont.32171	# 1680
beq.32172:
	addi	x10, x0, 0	# 1681
	mul		x10, x30, x10	# 1681
	addi	x10, x10, 60568	# 1681
	fsw		f6, 0(x10)	# 1681
	addi	x10, x0, 1	# 1682
	mul		x10, x30, x10	# 1682
	addi	x10, x10, 60568	# 1682
	fsw		f7, 0(x10)	# 1682
	addi	x10, x0, 2	# 1683
	mul		x10, x30, x10	# 1683
	addi	x10, x10, 60568	# 1683
	fsw		f8, 0(x10)	# 1683
beq_cont.32171:
	lw		x10, 24(x6)	# 375
	mul		x11, x30, x4	# 285
	addi	x11, x11, 60568	# 285
	flw		f3, 0(x11)	# 285
	fmul	f3, f3, f3	# 127
	mul		x11, x30, x9	# 285
	addi	x11, x11, 60568	# 285
	flw		f4, 0(x11)	# 285
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 285
	mul		x11, x30, x8	# 285
	addi	x11, x11, 60568	# 285
	flw		f4, 0(x11)	# 285
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 285
	fsqrt	f3, f3	# 285
	flw		f4, -60(x2)	# 120
	feq		x31, f3, f4	# 120
	beq		x31, x0, feq_else.32174	# 120
	fadd	f3, f0, f16	# 286
	jal		x0, feq_cont.32173	# 120
feq_else.32174:
	beq		x10, x4, beq.32176	# 286
	fadd	f5, f0, f18	# 286
	fdiv	f3, f5, f3	# 286
	jal		x0, beq_cont.32175	# 286
beq.32176:
	fadd	f5, f0, f16	# 286
	fdiv	f3, f5, f3	# 286
beq_cont.32175:
feq_cont.32173:
	mul		x10, x30, x4	# 287
	addi	x10, x10, 60568	# 287
	flw		f5, 0(x10)	# 287
	fmul	f5, f5, f3	# 287
	mul		x10, x30, x4	# 287
	addi	x10, x10, 60568	# 287
	fsw		f5, 0(x10)	# 287
	mul		x10, x30, x9	# 288
	addi	x10, x10, 60568	# 288
	flw		f5, 0(x10)	# 288
	fmul	f5, f5, f3	# 288
	mul		x10, x30, x9	# 288
	addi	x10, x10, 60568	# 288
	fsw		f5, 0(x10)	# 288
	mul		x10, x30, x8	# 289
	addi	x10, x10, 60568	# 289
	flw		f5, 0(x10)	# 289
	fmul	f3, f5, f3	# 289
	mul		x10, x30, x8	# 289
	addi	x10, x10, 60568	# 289
	fsw		f3, 0(x10)	# 289
	jal		x0, beq_cont.32169	# 1697
beq.32170:
	lw		x8, 16(x6)	# 393
	mul		x10, x30, x4	# 398
	add		x8, x8, x10	# 398
	flw		f3, 0(x8)	# 398
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x4	# 1665
	addi	x8, x8, 60568	# 1665
	fsw		f3, 0(x8)	# 1665
	lw		x8, 16(x6)	# 403
	mul		x10, x30, x9	# 408
	add		x8, x8, x10	# 408
	flw		f3, 0(x8)	# 408
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x9	# 1666
	addi	x8, x8, 60568	# 1666
	fsw		f3, 0(x8)	# 1666
	lw		x8, 16(x6)	# 413
	lw		x10, -64(x2)	# 418
	mul		x11, x30, x10	# 418
	add		x8, x8, x11	# 418
	flw		f3, 0(x8)	# 418
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x10	# 1667
	addi	x8, x8, 60568	# 1667
	fsw		f3, 0(x8)	# 1667
beq_cont.32169:
	jal		x0, beq_cont.32167	# 1695
beq.32168:
	mul		x8, x30, x4	# 1656
	addi	x8, x8, 60544	# 1656
	lw		x8, 0(x8)	# 1656
	fadd	f3, f0, f0	# 256
	mul		x10, x30, x4	# 249
	addi	x10, x10, 60568	# 249
	fsw		f3, 0(x10)	# 249
	mul		x10, x30, x9	# 250
	addi	x10, x10, 60568	# 250
	fsw		f3, 0(x10)	# 250
	lw		x10, -64(x2)	# 251
	mul		x11, x30, x10	# 251
	addi	x11, x11, 60568	# 251
	fsw		f3, 0(x11)	# 251
	sub		x11, x8, x9	# 1659
	sub		x8, x8, x9	# 1659
	mul		x8, x30, x8	# 1659
	lw		x12, -72(x2)	# 1659
	add		x8, x12, x8	# 1659
	flw		f3, 0(x8)	# 1659
	flw		f4, -60(x2)	# 120
	feq		x31, f3, f4	# 120
	beq		x31, x0, feq_else.32178	# 120
	fadd	f3, f0, f4	# 214
	jal		x0, feq_cont.32177	# 120
feq_else.32178:
	fle		x31, f3, f4	# 121
	beq		x31, x0, fle_else.32180	# 121
	fadd	f3, f0, f18	# 216
	jal		x0, fle_cont.32179	# 121
fle_else.32180:
	fadd	f3, f0, f16	# 215
fle_cont.32179:
feq_cont.32177:
	fsub	f3, f0, f3	# 123
	mul		x8, x30, x11	# 1659
	addi	x8, x8, 60568	# 1659
	fsw		f3, 0(x8)	# 1659
beq_cont.32167:
	mul		x8, x30, x4	# 261
	addi	x8, x8, 60552	# 261
	flw		f3, 0(x8)	# 261
	mul		x8, x30, x4	# 261
	addi	x8, x8, 60636	# 261
	fsw		f3, 0(x8)	# 261
	mul		x8, x30, x9	# 262
	addi	x8, x8, 60552	# 262
	flw		f3, 0(x8)	# 262
	mul		x8, x30, x9	# 262
	addi	x8, x8, 60636	# 262
	fsw		f3, 0(x8)	# 262
	lw		x8, -64(x2)	# 263
	mul		x10, x30, x8	# 263
	addi	x10, x10, 60552	# 263
	flw		f3, 0(x10)	# 263
	mul		x10, x30, x8	# 263
	addi	x10, x10, 60636	# 263
	fsw		f3, 0(x10)	# 263
	lw		x10, 0(x6)	# 345
	lw		x11, 32(x6)	# 483
	mul		x12, x30, x4	# 488
	add		x11, x11, x12	# 488
	flw		f3, 0(x11)	# 488
	mul		x11, x30, x4	# 1712
	addi	x11, x11, 60580	# 1712
	fsw		f3, 0(x11)	# 1712
	lw		x11, 32(x6)	# 493
	mul		x12, x30, x9	# 498
	add		x11, x11, x12	# 498
	flw		f3, 0(x11)	# 498
	mul		x11, x30, x9	# 1713
	addi	x11, x11, 60580	# 1713
	fsw		f3, 0(x11)	# 1713
	lw		x11, 32(x6)	# 503
	mul		x12, x30, x8	# 508
	add		x11, x11, x12	# 508
	flw		f3, 0(x11)	# 508
	mul		x11, x30, x8	# 1714
	addi	x11, x11, 60580	# 1714
	fsw		f3, 0(x11)	# 1714
	sw		x7, -92(x2)	# 1715
	fsw		f1, -96(x2)	# 1715
	sw		x6, -100(x2)	# 1715
	sw		x5, -104(x2)	# 1715
	beq		x10, x9, beq.32182	# 1715
	beq		x10, x8, beq.32184	# 1733
	lw		x11, -36(x2)	# 1740
	beq		x10, x11, beq.32186	# 1740
	addi	x11, x0, 4	# 1751
	beq		x10, x11, beq.32188	# 1751
	jal		x0, beq_cont.32187	# 1751
beq.32188:
	mul		x10, x30, x4	# 1753
	addi	x10, x10, 60552	# 1753
	flw		f3, 0(x10)	# 1753
	lw		x10, 20(x6)	# 433
	mul		x11, x30, x4	# 438
	add		x10, x10, x11	# 438
	flw		f4, 0(x10)	# 438
	fsub	f3, f3, f4	# 1753
	lw		x10, 16(x6)	# 393
	mul		x11, x30, x4	# 398
	add		x10, x10, x11	# 398
	flw		f4, 0(x10)	# 398
	fsqrt	f4, f4	# 1753
	fmul	f3, f3, f4	# 1753
	mul		x10, x30, x8	# 1754
	addi	x10, x10, 60552	# 1754
	flw		f4, 0(x10)	# 1754
	lw		x10, 20(x6)	# 453
	mul		x11, x30, x8	# 458
	add		x10, x10, x11	# 458
	flw		f5, 0(x10)	# 458
	fsub	f4, f4, f5	# 1754
	lw		x10, 16(x6)	# 413
	mul		x11, x30, x8	# 418
	add		x10, x10, x11	# 418
	flw		f5, 0(x10)	# 418
	fsqrt	f5, f5	# 1754
	fmul	f4, f4, f5	# 1754
	fmul	f5, f3, f3	# 127
	fmul	f6, f4, f4	# 127
	fadd	f5, f5, f6	# 1755
	flw		f6, -60(x2)	# 124
	fle		x31, f3, f6	# 124
	beq		x31, x0, fle_else.32190	# 124
	fsub	f7, f0, f3	# 124
	jal		x0, fle_cont.32189	# 124
fle_else.32190:
	fadd	f7, f0, f3	# 124
fle_cont.32189:
	lui		x10, %hi(l.27106)	# 1757
	ori		x10, x0, %lo(l.27106)	# 1757
	flw		f8, 0(x10)	# 1757
	fsw		f8, -108(x2)	# 125
	fsw		f5, -112(x2)	# 125
	fle		x31, f8, f7	# 125
	beq		x31, x0, fle_else.32192	# 125
	fdiv	f3, f4, f3	# 1760
	fle		x31, f3, f6	# 124
	beq		x31, x0, fle_cont.32193	# 124
	fsub	f3, f0, f3	# 124
fle_cont.32193:
	lw		x29, -28(x2)	# 1762
	fadd	f1, f0, f3
	sw		x1, -116(x2)	# 1762
	addi	x2, x2, -120	# 1762
	lw		x31, 0(x29)	# 1762
	jalr	x1, x31, 0	# 1762
	addi	x2, x2, 120	# 1762
	lw		x1, -116(x2)	# 1762
	fadd	f2, f0, f21	# 1762
	fmul	f1, f1, f2	# 1762
	fadd	f2, f0, f19	# 1762
	fdiv	f1, f1, f2	# 1762
	jal		x0, fle_cont.32191	# 125
fle_else.32192:
	fadd	f1, f0, f20	# 1758
fle_cont.32191:
	flw		f2, -60(x2)	# 139
	fsw		f1, -116(x2)	# 139
	fle		x31, f2, f1	# 139
	beq		x31, x0, fle_else.32195	# 139
	lw		x29, -52(x2)	# 139
	sw		x1, -120(x2)	# 139
	addi	x2, x2, -124	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 124	# 139
	lw		x1, -120(x2)	# 139
	lw		x29, -48(x2)	# 139
	sw		x1, -120(x2)	# 139
	addi	x2, x2, -124	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 124	# 139
	lw		x1, -120(x2)	# 139
	jal		x0, fle_cont.32194	# 139
fle_else.32195:
	lw		x29, -52(x2)	# 140
	sw		x1, -120(x2)	# 140
	addi	x2, x2, -124	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 124	# 140
	lw		x1, -120(x2)	# 140
	lw		x5, -68(x2)	# 140
	sub		x4, x4, x5	# 140
	lw		x29, -48(x2)	# 140
	sw		x1, -120(x2)	# 140
	addi	x2, x2, -124	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 124	# 140
	lw		x1, -120(x2)	# 140
fle_cont.32194:
	flw		f2, -116(x2)	# 1764
	fsub	f1, f2, f1	# 1764
	lw		x4, -68(x2)	# 1766
	mul		x5, x30, x4	# 1766
	addi	x5, x5, 60552	# 1766
	flw		f2, 0(x5)	# 1766
	lw		x5, -100(x2)	# 443
	lw		x6, 20(x5)	# 443
	mul		x7, x30, x4	# 448
	add		x6, x6, x7	# 448
	flw		f3, 0(x6)	# 448
	fsub	f2, f2, f3	# 1766
	lw		x6, 16(x5)	# 403
	mul		x7, x30, x4	# 408
	add		x6, x6, x7	# 408
	flw		f3, 0(x6)	# 408
	fsqrt	f3, f3	# 1766
	fmul	f2, f2, f3	# 1766
	flw		f3, -60(x2)	# 124
	flw		f4, -112(x2)	# 124
	fle		x31, f4, f3	# 124
	beq		x31, x0, fle_else.32197	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.32196	# 124
fle_else.32197:
	fadd	f5, f0, f4	# 124
fle_cont.32196:
	flw		f6, -108(x2)	# 125
	fsw		f1, -120(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32199	# 125
	fdiv	f2, f2, f4	# 1771
	fle		x31, f2, f3	# 124
	beq		x31, x0, fle_cont.32200	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32200:
	lw		x29, -28(x2)	# 1772
	fadd	f1, f0, f2
	sw		x1, -124(x2)	# 1772
	addi	x2, x2, -128	# 1772
	lw		x31, 0(x29)	# 1772
	jalr	x1, x31, 0	# 1772
	addi	x2, x2, 128	# 1772
	lw		x1, -124(x2)	# 1772
	fadd	f2, f0, f21	# 1772
	fmul	f1, f1, f2	# 1772
	fadd	f2, f0, f19	# 1772
	fdiv	f1, f1, f2	# 1772
	jal		x0, fle_cont.32198	# 125
fle_else.32199:
	fadd	f1, f0, f20	# 1769
fle_cont.32198:
	flw		f2, -60(x2)	# 139
	fsw		f1, -124(x2)	# 139
	fle		x31, f2, f1	# 139
	beq		x31, x0, fle_else.32202	# 139
	lw		x29, -52(x2)	# 139
	sw		x1, -128(x2)	# 139
	addi	x2, x2, -132	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 132	# 139
	lw		x1, -128(x2)	# 139
	lw		x29, -48(x2)	# 139
	sw		x1, -128(x2)	# 139
	addi	x2, x2, -132	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 132	# 139
	lw		x1, -128(x2)	# 139
	jal		x0, fle_cont.32201	# 139
fle_else.32202:
	lw		x29, -52(x2)	# 140
	sw		x1, -128(x2)	# 140
	addi	x2, x2, -132	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 132	# 140
	lw		x1, -128(x2)	# 140
	lw		x5, -68(x2)	# 140
	sub		x4, x4, x5	# 140
	lw		x29, -48(x2)	# 140
	sw		x1, -128(x2)	# 140
	addi	x2, x2, -132	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 132	# 140
	lw		x1, -128(x2)	# 140
fle_cont.32201:
	flw		f2, -124(x2)	# 1774
	fsub	f1, f2, f1	# 1774
	lui		x4, %hi(l.27123)	# 1775
	ori		x4, x0, %lo(l.27123)	# 1775
	flw		f2, 0(x4)	# 1775
	fadd	f3, f0, f17	# 1775
	flw		f4, -120(x2)	# 1775
	fsub	f4, f3, f4	# 1775
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1775
	fsub	f1, f3, f1	# 1775
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1775
	flw		f2, -60(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.32204	# 122
	jal		x0, fle_cont.32203	# 122
fle_else.32204:
	fadd	f1, f0, f2	# 1776
fle_cont.32203:
	flw		f3, -44(x2)	# 1777
	fmul	f1, f3, f1	# 1777
	fadd	f3, f0, f27	# 1777
	fdiv	f1, f1, f3	# 1777
	lw		x4, -64(x2)	# 1777
	mul		x5, x30, x4	# 1777
	addi	x5, x5, 60580	# 1777
	fsw		f1, 0(x5)	# 1777
beq_cont.32187:
	jal		x0, beq_cont.32185	# 1740
beq.32186:
	mul		x10, x30, x4	# 1743
	addi	x10, x10, 60552	# 1743
	flw		f3, 0(x10)	# 1743
	lw		x10, 20(x6)	# 433
	mul		x11, x30, x4	# 438
	add		x10, x10, x11	# 438
	flw		f4, 0(x10)	# 438
	fsub	f3, f3, f4	# 1743
	mul		x10, x30, x8	# 1744
	addi	x10, x10, 60552	# 1744
	flw		f4, 0(x10)	# 1744
	lw		x10, 20(x6)	# 453
	mul		x11, x30, x8	# 458
	add		x10, x10, x11	# 458
	flw		f5, 0(x10)	# 458
	fsub	f4, f4, f5	# 1744
	fmul	f3, f3, f3	# 127
	fmul	f4, f4, f4	# 127
	fadd	f3, f3, f4	# 1745
	fsqrt	f3, f3	# 1745
	fadd	f4, f0, f22	# 1745
	fdiv	f3, f3, f4	# 1745
	flw		f4, -60(x2)	# 139
	fsw		f3, -128(x2)	# 139
	fle		x31, f4, f3	# 139
	beq		x31, x0, fle_else.32206	# 139
	lw		x29, -52(x2)	# 139
	fadd	f1, f0, f3
	sw		x1, -132(x2)	# 139
	addi	x2, x2, -136	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 136	# 139
	lw		x1, -132(x2)	# 139
	lw		x29, -48(x2)	# 139
	sw		x1, -132(x2)	# 139
	addi	x2, x2, -136	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 136	# 139
	lw		x1, -132(x2)	# 139
	jal		x0, fle_cont.32205	# 139
fle_else.32206:
	lw		x29, -52(x2)	# 140
	fadd	f1, f0, f3
	sw		x1, -132(x2)	# 140
	addi	x2, x2, -136	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 136	# 140
	lw		x1, -132(x2)	# 140
	lw		x5, -68(x2)	# 140
	sub		x4, x4, x5	# 140
	lw		x29, -48(x2)	# 140
	sw		x1, -132(x2)	# 140
	addi	x2, x2, -136	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 136	# 140
	lw		x1, -132(x2)	# 140
fle_cont.32205:
	flw		f2, -128(x2)	# 1746
	fsub	f1, f2, f1	# 1746
	fadd	f2, f0, f19	# 1746
	fmul	f1, f1, f2	# 1746
	lw		x29, -32(x2)	# 1747
	sw		x1, -132(x2)	# 1747
	addi	x2, x2, -136	# 1747
	lw		x31, 0(x29)	# 1747
	jalr	x1, x31, 0	# 1747
	addi	x2, x2, 136	# 1747
	lw		x1, -132(x2)	# 1747
	fmul	f1, f1, f1	# 127
	flw		f2, -44(x2)	# 1748
	fmul	f3, f1, f2	# 1748
	lw		x4, -68(x2)	# 1748
	mul		x5, x30, x4	# 1748
	addi	x5, x5, 60580	# 1748
	fsw		f3, 0(x5)	# 1748
	fadd	f3, f0, f16	# 1749
	fsub	f1, f3, f1	# 1749
	fmul	f1, f1, f2	# 1749
	lw		x5, -64(x2)	# 1749
	mul		x6, x30, x5	# 1749
	addi	x6, x6, 60580	# 1749
	fsw		f1, 0(x6)	# 1749
beq_cont.32185:
	jal		x0, beq_cont.32183	# 1733
beq.32184:
	mul		x10, x30, x9	# 1736
	addi	x10, x10, 60552	# 1736
	flw		f3, 0(x10)	# 1736
	fadd	f4, f0, f26	# 1736
	fmul	f3, f3, f4	# 1736
	lw		x29, -40(x2)	# 1736
	fadd	f1, f0, f3
	sw		x1, -132(x2)	# 1736
	addi	x2, x2, -136	# 1736
	lw		x31, 0(x29)	# 1736
	jalr	x1, x31, 0	# 1736
	addi	x2, x2, 136	# 1736
	lw		x1, -132(x2)	# 1736
	fmul	f1, f1, f1	# 127
	flw		f2, -44(x2)	# 1737
	fmul	f3, f2, f1	# 1737
	lw		x4, -88(x2)	# 1737
	mul		x5, x30, x4	# 1737
	addi	x5, x5, 60580	# 1737
	fsw		f3, 0(x5)	# 1737
	fadd	f3, f0, f16	# 1738
	fsub	f1, f3, f1	# 1738
	fmul	f1, f2, f1	# 1738
	lw		x5, -68(x2)	# 1738
	mul		x6, x30, x5	# 1738
	addi	x6, x6, 60580	# 1738
	fsw		f1, 0(x6)	# 1738
beq_cont.32183:
	jal		x0, beq_cont.32181	# 1715
beq.32182:
	mul		x10, x30, x4	# 1718
	addi	x10, x10, 60552	# 1718
	flw		f3, 0(x10)	# 1718
	lw		x10, 20(x6)	# 433
	mul		x11, x30, x4	# 438
	add		x10, x10, x11	# 438
	flw		f4, 0(x10)	# 438
	fsub	f3, f3, f4	# 1718
	fadd	f4, f0, f28	# 1720
	fmul	f5, f3, f4	# 1720
	flw		f6, -60(x2)	# 139
	fsw		f4, -132(x2)	# 139
	fsw		f3, -136(x2)	# 139
	fle		x31, f6, f5	# 139
	beq		x31, x0, fle_else.32208	# 139
	lw		x29, -52(x2)	# 139
	fadd	f1, f0, f5
	sw		x1, -140(x2)	# 139
	addi	x2, x2, -144	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 144	# 139
	lw		x1, -140(x2)	# 139
	lw		x29, -48(x2)	# 139
	sw		x1, -140(x2)	# 139
	addi	x2, x2, -144	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 144	# 139
	lw		x1, -140(x2)	# 139
	jal		x0, fle_cont.32207	# 139
fle_else.32208:
	lw		x29, -52(x2)	# 140
	fadd	f1, f0, f5
	sw		x1, -140(x2)	# 140
	addi	x2, x2, -144	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 144	# 140
	lw		x1, -140(x2)	# 140
	lw		x5, -68(x2)	# 140
	sub		x4, x4, x5	# 140
	lw		x29, -48(x2)	# 140
	sw		x1, -140(x2)	# 140
	addi	x2, x2, -144	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 144	# 140
	lw		x1, -140(x2)	# 140
fle_cont.32207:
	fadd	f2, f0, f29	# 1720
	fmul	f1, f1, f2	# 1720
	flw		f3, -136(x2)	# 1721
	fsub	f1, f3, f1	# 1721
	fadd	f3, f0, f22	# 1721
	lw		x4, -64(x2)	# 1723
	mul		x5, x30, x4	# 1723
	addi	x5, x5, 60552	# 1723
	flw		f4, 0(x5)	# 1723
	lw		x5, -100(x2)	# 453
	lw		x6, 20(x5)	# 453
	mul		x7, x30, x4	# 458
	add		x6, x6, x7	# 458
	flw		f5, 0(x6)	# 458
	fsub	f4, f4, f5	# 1723
	flw		f5, -132(x2)	# 1725
	fmul	f5, f4, f5	# 1725
	flw		f6, -60(x2)	# 139
	fsw		f1, -140(x2)	# 139
	fsw		f3, -144(x2)	# 139
	fsw		f4, -148(x2)	# 139
	fsw		f2, -152(x2)	# 139
	fle		x31, f6, f5	# 139
	beq		x31, x0, fle_else.32210	# 139
	lw		x29, -52(x2)	# 139
	fadd	f1, f0, f5
	sw		x1, -156(x2)	# 139
	addi	x2, x2, -160	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 160	# 139
	lw		x1, -156(x2)	# 139
	lw		x29, -48(x2)	# 139
	sw		x1, -156(x2)	# 139
	addi	x2, x2, -160	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 160	# 139
	lw		x1, -156(x2)	# 139
	jal		x0, fle_cont.32209	# 139
fle_else.32210:
	lw		x29, -52(x2)	# 140
	fadd	f1, f0, f5
	sw		x1, -156(x2)	# 140
	addi	x2, x2, -160	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 160	# 140
	lw		x1, -156(x2)	# 140
	lw		x5, -68(x2)	# 140
	sub		x4, x4, x5	# 140
	lw		x29, -48(x2)	# 140
	sw		x1, -156(x2)	# 140
	addi	x2, x2, -160	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 160	# 140
	lw		x1, -156(x2)	# 140
fle_cont.32209:
	flw		f2, -152(x2)	# 1725
	fmul	f1, f1, f2	# 1725
	flw		f2, -148(x2)	# 1726
	fsub	f1, f2, f1	# 1726
	flw		f2, -140(x2)	# 125
	flw		f3, -144(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32212	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32214	# 125
	flw		f1, -44(x2)	# 1731
	jal		x0, fle_cont.32213	# 125
fle_else.32214:
	flw		f1, -60(x2)	# 1731
fle_cont.32213:
	jal		x0, fle_cont.32211	# 125
fle_else.32212:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32216	# 125
	flw		f1, -60(x2)	# 1730
	jal		x0, fle_cont.32215	# 125
fle_else.32216:
	flw		f1, -44(x2)	# 1730
fle_cont.32215:
fle_cont.32211:
	lw		x4, -68(x2)	# 1728
	mul		x5, x30, x4	# 1728
	addi	x5, x5, 60580	# 1728
	fsw		f1, 0(x5)	# 1728
beq_cont.32181:
	lw		x4, -24(x2)	# 1848
	lw		x5, -104(x2)	# 1848
	mul		x5, x5, x4	# 1848
	lw		x6, -88(x2)	# 1848
	mul		x7, x30, x6	# 1848
	addi	x7, x7, 60544	# 1848
	lw		x7, 0(x7)	# 1848
	add		x5, x5, x7	# 1848
	lw		x7, -84(x2)	# 1848
	mul		x8, x30, x7	# 1848
	lw		x9, -80(x2)	# 1848
	add		x8, x9, x8	# 1848
	sw		x5, 0(x8)	# 1848
	lw		x5, -20(x2)	# 571
	lw		x8, 4(x5)	# 571
	mul		x10, x30, x7	# 1850
	add		x8, x8, x10	# 1850
	lw		x8, 0(x8)	# 1850
	mul		x10, x30, x6	# 261
	addi	x10, x10, 60552	# 261
	flw		f1, 0(x10)	# 261
	mul		x10, x30, x6	# 261
	add		x10, x8, x10	# 261
	fsw		f1, 0(x10)	# 261
	lw		x10, -68(x2)	# 262
	mul		x11, x30, x10	# 262
	addi	x11, x11, 60552	# 262
	flw		f1, 0(x11)	# 262
	mul		x11, x30, x10	# 262
	add		x11, x8, x11	# 262
	fsw		f1, 0(x11)	# 262
	lw		x11, -64(x2)	# 263
	mul		x12, x30, x11	# 263
	addi	x12, x12, 60552	# 263
	flw		f1, 0(x12)	# 263
	mul		x12, x30, x11	# 263
	add		x8, x8, x12	# 263
	fsw		f1, 0(x8)	# 263
	lw		x8, 12(x5)	# 586
	lw		x12, -100(x2)	# 463
	lw		x13, 28(x12)	# 463
	mul		x14, x30, x6	# 468
	add		x13, x13, x14	# 468
	flw		f1, 0(x13)	# 468
	fadd	f2, f0, f17	# 1854
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32218	# 125
	addi	x13, x0, 1	# 1857
	mul		x14, x30, x7	# 1857
	add		x8, x8, x14	# 1857
	sw		x13, 0(x8)	# 1857
	lw		x8, 16(x5)	# 593
	mul		x13, x30, x7	# 1859
	add		x13, x8, x13	# 1859
	lw		x13, 0(x13)	# 1859
	addi	x14, x0, 0	# 261
	addi	x15, x0, 0	# 261
	mul		x15, x30, x15	# 261
	addi	x15, x15, 60580	# 261
	flw		f1, 0(x15)	# 261
	mul		x14, x30, x14	# 261
	add		x14, x13, x14	# 261
	fsw		f1, 0(x14)	# 261
	addi	x14, x0, 1	# 262
	addi	x15, x0, 1	# 262
	mul		x15, x30, x15	# 262
	addi	x15, x15, 60580	# 262
	flw		f1, 0(x15)	# 262
	mul		x14, x30, x14	# 262
	add		x14, x13, x14	# 262
	fsw		f1, 0(x14)	# 262
	addi	x14, x0, 2	# 263
	mul		x15, x30, x14	# 263
	addi	x15, x15, 60580	# 263
	flw		f1, 0(x15)	# 263
	mul		x14, x30, x14	# 263
	add		x13, x13, x14	# 263
	fsw		f1, 0(x13)	# 263
	mul		x13, x30, x7	# 1860
	add		x8, x8, x13	# 1860
	lw		x8, 0(x8)	# 1860
	lui		x13, %hi(l.27211)	# 1860
	ori		x13, x0, %lo(l.27211)	# 1860
	flw		f1, 0(x13)	# 1860
	flw		f2, -96(x2)	# 1860
	fmul	f1, f1, f2	# 1860
	addi	x13, x0, 0	# 327
	addi	x14, x0, 0	# 327
	mul		x14, x30, x14	# 327
	add		x14, x8, x14	# 327
	flw		f3, 0(x14)	# 327
	fmul	f3, f3, f1	# 327
	mul		x13, x30, x13	# 327
	add		x13, x8, x13	# 327
	fsw		f3, 0(x13)	# 327
	addi	x13, x0, 1	# 328
	addi	x14, x0, 1	# 328
	mul		x14, x30, x14	# 328
	add		x14, x8, x14	# 328
	flw		f3, 0(x14)	# 328
	fmul	f3, f3, f1	# 328
	mul		x13, x30, x13	# 328
	add		x13, x8, x13	# 328
	fsw		f3, 0(x13)	# 328
	addi	x13, x0, 2	# 329
	mul		x14, x30, x13	# 329
	add		x14, x8, x14	# 329
	flw		f3, 0(x14)	# 329
	fmul	f1, f3, f1	# 329
	mul		x13, x30, x13	# 329
	add		x8, x8, x13	# 329
	fsw		f1, 0(x8)	# 329
	lw		x8, 28(x5)	# 630
	mul		x13, x30, x7	# 1862
	add		x8, x8, x13	# 1862
	lw		x8, 0(x8)	# 1862
	addi	x13, x0, 0	# 261
	addi	x14, x0, 0	# 261
	mul		x14, x30, x14	# 261
	addi	x14, x14, 60568	# 261
	flw		f1, 0(x14)	# 261
	mul		x13, x30, x13	# 261
	add		x13, x8, x13	# 261
	fsw		f1, 0(x13)	# 261
	addi	x13, x0, 1	# 262
	addi	x14, x0, 1	# 262
	mul		x14, x30, x14	# 262
	addi	x14, x14, 60568	# 262
	flw		f1, 0(x14)	# 262
	mul		x13, x30, x13	# 262
	add		x13, x8, x13	# 262
	fsw		f1, 0(x13)	# 262
	addi	x13, x0, 2	# 263
	mul		x14, x30, x13	# 263
	addi	x14, x14, 60568	# 263
	flw		f1, 0(x14)	# 263
	mul		x13, x30, x13	# 263
	add		x8, x8, x13	# 263
	fsw		f1, 0(x8)	# 263
	jal		x0, fle_cont.32217	# 125
fle_else.32218:
	addi	x13, x0, 0	# 1855
	mul		x14, x30, x7	# 1855
	add		x8, x8, x14	# 1855
	sw		x13, 0(x8)	# 1855
fle_cont.32217:
	lui		x8, %hi(l.27239)	# 1865
	ori		x8, x0, %lo(l.27239)	# 1865
	flw		f1, 0(x8)	# 1865
	mul		x8, x30, x6	# 294
	lw		x13, -72(x2)	# 294
	add		x8, x13, x8	# 294
	flw		f2, 0(x8)	# 294
	mul		x8, x30, x6	# 294
	addi	x8, x8, 60568	# 294
	flw		f3, 0(x8)	# 294
	fmul	f4, f2, f3	# 294
	mul		x8, x30, x10	# 294
	add		x8, x13, x8	# 294
	flw		f5, 0(x8)	# 294
	mul		x8, x30, x10	# 294
	addi	x8, x8, 60568	# 294
	flw		f6, 0(x8)	# 294
	fmul	f5, f5, f6	# 294
	fadd	f4, f4, f5	# 294
	mul		x8, x30, x11	# 294
	add		x8, x13, x8	# 294
	flw		f5, 0(x8)	# 294
	mul		x8, x30, x11	# 294
	addi	x8, x8, 60568	# 294
	flw		f6, 0(x8)	# 294
	fmul	f5, f5, f6	# 294
	fadd	f4, f4, f5	# 294
	fmul	f1, f1, f4	# 1865
	fmul	f3, f1, f3	# 304
	fadd	f2, f2, f3	# 304
	mul		x8, x30, x6	# 304
	add		x8, x13, x8	# 304
	fsw		f2, 0(x8)	# 304
	mul		x8, x30, x10	# 305
	add		x8, x13, x8	# 305
	flw		f2, 0(x8)	# 305
	mul		x8, x30, x10	# 305
	addi	x8, x8, 60568	# 305
	flw		f3, 0(x8)	# 305
	fmul	f3, f1, f3	# 305
	fadd	f2, f2, f3	# 305
	mul		x8, x30, x10	# 305
	add		x8, x13, x8	# 305
	fsw		f2, 0(x8)	# 305
	mul		x8, x30, x11	# 306
	add		x8, x13, x8	# 306
	flw		f2, 0(x8)	# 306
	mul		x8, x30, x11	# 306
	addi	x8, x8, 60568	# 306
	flw		f3, 0(x8)	# 306
	fmul	f1, f1, f3	# 306
	fadd	f1, f2, f1	# 306
	mul		x8, x30, x11	# 306
	add		x8, x13, x8	# 306
	fsw		f1, 0(x8)	# 306
	lw		x8, 28(x12)	# 473
	mul		x14, x30, x10	# 478
	add		x8, x8, x14	# 478
	flw		f1, 0(x8)	# 478
	flw		f2, -56(x2)	# 1869
	fmul	f1, f2, f1	# 1869
	mul		x8, x30, x6	# 1872
	addi	x8, x8, 60536	# 1872
	lw		x8, 0(x8)	# 1872
	lw		x29, -16(x2)	# 1872
	fsw		f1, -156(x2)	# 1872
	addi	x5, x8, 0
	addi	x4, x6, 0
	sw		x1, -160(x2)	# 1872
	addi	x2, x2, -164	# 1872
	lw		x31, 0(x29)	# 1872
	jalr	x1, x31, 0	# 1872
	addi	x2, x2, 164	# 1872
	lw		x1, -160(x2)	# 1872
	lw		x5, -88(x2)	# 1872
	beq		x4, x5, beq.32220	# 1872
	jal		x0, beq_cont.32219	# 1872
beq.32220:
	addi	x4, x0, 0	# 294
	mul		x4, x30, x4	# 294
	addi	x4, x4, 60568	# 294
	flw		f1, 0(x4)	# 294
	addi	x4, x0, 0	# 294
	mul		x4, x30, x4	# 294
	addi	x4, x4, 60312	# 294
	flw		f2, 0(x4)	# 294
	fmul	f1, f1, f2	# 294
	addi	x4, x0, 1	# 294
	mul		x4, x30, x4	# 294
	addi	x4, x4, 60568	# 294
	flw		f2, 0(x4)	# 294
	addi	x4, x0, 1	# 294
	mul		x4, x30, x4	# 294
	addi	x4, x4, 60312	# 294
	flw		f3, 0(x4)	# 294
	fmul	f2, f2, f3	# 294
	fadd	f1, f1, f2	# 294
	addi	x4, x0, 2	# 294
	mul		x4, x30, x4	# 294
	addi	x4, x4, 60568	# 294
	flw		f2, 0(x4)	# 294
	addi	x4, x0, 2	# 294
	mul		x4, x30, x4	# 294
	addi	x4, x4, 60312	# 294
	flw		f3, 0(x4)	# 294
	fmul	f2, f2, f3	# 294
	fadd	f1, f1, f2	# 294
	fsub	f1, f0, f1	# 123
	flw		f2, -96(x2)	# 1873
	fmul	f1, f1, f2	# 1873
	addi	x4, x0, 0	# 294
	mul		x4, x30, x4	# 294
	lw		x6, -72(x2)	# 294
	add		x4, x6, x4	# 294
	flw		f3, 0(x4)	# 294
	addi	x4, x0, 0	# 294
	mul		x4, x30, x4	# 294
	addi	x4, x4, 60312	# 294
	flw		f4, 0(x4)	# 294
	fmul	f3, f3, f4	# 294
	addi	x4, x0, 1	# 294
	mul		x4, x30, x4	# 294
	add		x4, x6, x4	# 294
	flw		f4, 0(x4)	# 294
	addi	x4, x0, 1	# 294
	mul		x4, x30, x4	# 294
	addi	x4, x4, 60312	# 294
	flw		f5, 0(x4)	# 294
	fmul	f4, f4, f5	# 294
	fadd	f3, f3, f4	# 294
	addi	x4, x0, 2	# 294
	mul		x4, x30, x4	# 294
	add		x4, x6, x4	# 294
	flw		f4, 0(x4)	# 294
	addi	x4, x0, 2	# 294
	mul		x4, x30, x4	# 294
	addi	x4, x4, 60312	# 294
	flw		f5, 0(x4)	# 294
	fmul	f4, f4, f5	# 294
	fadd	f3, f3, f4	# 294
	fsub	f3, f0, f3	# 123
	flw		f4, -60(x2)	# 121
	fle		x31, f1, f4	# 121
	beq		x31, x0, fle_else.32222	# 121
	jal		x0, fle_cont.32221	# 121
fle_else.32222:
	mul		x4, x30, x5	# 304
	addi	x4, x4, 60604	# 304
	flw		f5, 0(x4)	# 304
	mul		x4, x30, x5	# 304
	addi	x4, x4, 60580	# 304
	flw		f6, 0(x4)	# 304
	fmul	f6, f1, f6	# 304
	fadd	f5, f5, f6	# 304
	mul		x4, x30, x5	# 304
	addi	x4, x4, 60604	# 304
	fsw		f5, 0(x4)	# 304
	lw		x4, -68(x2)	# 305
	mul		x7, x30, x4	# 305
	addi	x7, x7, 60604	# 305
	flw		f5, 0(x7)	# 305
	mul		x7, x30, x4	# 305
	addi	x7, x7, 60580	# 305
	flw		f6, 0(x7)	# 305
	fmul	f6, f1, f6	# 305
	fadd	f5, f5, f6	# 305
	mul		x7, x30, x4	# 305
	addi	x7, x7, 60604	# 305
	fsw		f5, 0(x7)	# 305
	lw		x7, -64(x2)	# 306
	mul		x8, x30, x7	# 306
	addi	x8, x8, 60604	# 306
	flw		f5, 0(x8)	# 306
	mul		x8, x30, x7	# 306
	addi	x8, x8, 60580	# 306
	flw		f6, 0(x8)	# 306
	fmul	f1, f1, f6	# 306
	fadd	f1, f5, f1	# 306
	mul		x8, x30, x7	# 306
	addi	x8, x8, 60604	# 306
	fsw		f1, 0(x8)	# 306
fle_cont.32221:
	fle		x31, f3, f4	# 121
	beq		x31, x0, fle_else.32224	# 121
	jal		x0, fle_cont.32223	# 121
fle_else.32224:
	fmul	f1, f3, f3	# 127
	fmul	f1, f1, f1	# 127
	flw		f3, -156(x2)	# 1796
	fmul	f1, f1, f3	# 1796
	addi	x4, x0, 0	# 1797
	addi	x7, x0, 0	# 1797
	mul		x7, x30, x7	# 1797
	addi	x7, x7, 60604	# 1797
	flw		f4, 0(x7)	# 1797
	fadd	f4, f4, f1	# 1797
	mul		x4, x30, x4	# 1797
	addi	x4, x4, 60604	# 1797
	fsw		f4, 0(x4)	# 1797
	addi	x4, x0, 1	# 1798
	addi	x7, x0, 1	# 1798
	mul		x7, x30, x7	# 1798
	addi	x7, x7, 60604	# 1798
	flw		f4, 0(x7)	# 1798
	fadd	f4, f4, f1	# 1798
	mul		x4, x30, x4	# 1798
	addi	x4, x4, 60604	# 1798
	fsw		f4, 0(x4)	# 1798
	addi	x4, x0, 2	# 1799
	mul		x7, x30, x4	# 1799
	addi	x7, x7, 60604	# 1799
	flw		f4, 0(x7)	# 1799
	fadd	f1, f4, f1	# 1799
	mul		x4, x30, x4	# 1799
	addi	x4, x4, 60604	# 1799
	fsw		f1, 0(x4)	# 1799
fle_cont.32223:
beq_cont.32219:
	mul		x4, x30, x5	# 261
	addi	x4, x4, 60552	# 261
	flw		f1, 0(x4)	# 261
	mul		x4, x30, x5	# 261
	addi	x4, x4, 60648	# 261
	fsw		f1, 0(x4)	# 261
	lw		x4, -68(x2)	# 262
	mul		x6, x30, x4	# 262
	addi	x6, x6, 60552	# 262
	flw		f1, 0(x6)	# 262
	mul		x6, x30, x4	# 262
	addi	x6, x6, 60648	# 262
	fsw		f1, 0(x6)	# 262
	lw		x6, -64(x2)	# 263
	mul		x7, x30, x6	# 263
	addi	x7, x7, 60552	# 263
	flw		f1, 0(x7)	# 263
	mul		x7, x30, x6	# 263
	addi	x7, x7, 60648	# 263
	fsw		f1, 0(x7)	# 263
	mul		x7, x30, x5	# 1317
	addi	x7, x7, 60000	# 1317
	lw		x7, 0(x7)	# 1317
	sub		x7, x7, x4	# 1317
	addi	x8, x0, 60552	# 1317
	lw		x29, -12(x2)	# 1317
	addi	x5, x7, 0
	addi	x4, x8, 0
	sw		x1, -160(x2)	# 1317
	addi	x2, x2, -164	# 1317
	lw		x31, 0(x29)	# 1317
	jalr	x1, x31, 0	# 1317
	addi	x2, x2, 164	# 1317
	lw		x1, -160(x2)	# 1317
	lw		x4, -88(x2)	# 1880
	mul		x5, x30, x4	# 1880
	addi	x5, x5, 61736	# 1880
	lw		x5, 0(x5)	# 1880
	lw		x6, -68(x2)	# 1880
	sub		x5, x5, x6	# 1880
	flw		f1, -96(x2)	# 1880
	flw		f2, -156(x2)	# 1880
	lw		x7, -72(x2)	# 1880
	lw		x29, -8(x2)	# 1880
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -160(x2)	# 1880
	addi	x2, x2, -164	# 1880
	lw		x31, 0(x29)	# 1880
	jalr	x1, x31, 0	# 1880
	addi	x2, x2, 164	# 1880
	lw		x1, -160(x2)	# 1880
	lui		x4, %hi(l.27341)	# 1883
	ori		x4, x0, %lo(l.27341)	# 1883
	flw		f1, 0(x4)	# 1883
	flw		f2, -56(x2)	# 125
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32225	# 125
	jalr	x0, x1, 0	# 1894
fle_else.32225:
	lw		x4, -84(x2)	# 1885
	lw		x5, -24(x2)	# 1885
	ble		x5, x4, ble_cont.32227	# 1885
	addi	x5, x4, 1	# 1886
	addi	x6, x0, -1	# 1886
	mul		x5, x30, x5	# 1886
	lw		x7, -80(x2)	# 1886
	add		x5, x7, x5	# 1886
	sw		x6, 0(x5)	# 1886
ble_cont.32227:
	lw		x5, -64(x2)	# 1889
	lw		x6, -92(x2)	# 1889
	beq		x6, x5, beq.32228	# 1889
	jalr	x0, x1, 0	# 1892
beq.32228:
	fadd	f1, f0, f16	# 1890
	lw		x5, -100(x2)	# 463
	lw		x5, 28(x5)	# 463
	lw		x6, -88(x2)	# 468
	mul		x7, x30, x6	# 468
	add		x5, x5, x7	# 468
	flw		f3, 0(x5)	# 468
	fsub	f1, f1, f3	# 1890
	fmul	f1, f2, f1	# 1890
	lw		x5, -68(x2)	# 1891
	add		x4, x4, x5	# 1891
	mul		x5, x30, x6	# 1891
	addi	x5, x5, 60548	# 1891
	flw		f2, 0(x5)	# 1891
	flw		f3, -4(x2)	# 1891
	fadd	f2, f3, f2	# 1891
	lw		x5, -72(x2)	# 1891
	lw		x6, -20(x2)	# 1891
	lw		x29, 0(x2)	# 1891
	lw		x31, 0(x29)	# 1891
	jalr	x0, x31, 0	# 1891
beq.32166:
	lw		x5, -84(x2)	# 1899
	mul		x6, x30, x5	# 1899
	lw		x7, -80(x2)	# 1899
	add		x6, x7, x6	# 1899
	lw		x7, -76(x2)	# 1899
	sw		x7, 0(x6)	# 1899
	beq		x5, x4, beq.32230	# 1901
	mul		x5, x30, x4	# 294
	lw		x6, -72(x2)	# 294
	add		x5, x6, x5	# 294
	flw		f1, 0(x5)	# 294
	mul		x5, x30, x4	# 294
	addi	x5, x5, 60312	# 294
	flw		f2, 0(x5)	# 294
	fmul	f1, f1, f2	# 294
	lw		x5, -68(x2)	# 294
	mul		x7, x30, x5	# 294
	add		x7, x6, x7	# 294
	flw		f2, 0(x7)	# 294
	mul		x7, x30, x5	# 294
	addi	x7, x7, 60312	# 294
	flw		f3, 0(x7)	# 294
	fmul	f2, f2, f3	# 294
	fadd	f1, f1, f2	# 294
	lw		x7, -64(x2)	# 294
	mul		x8, x30, x7	# 294
	add		x6, x6, x8	# 294
	flw		f2, 0(x6)	# 294
	mul		x6, x30, x7	# 294
	addi	x6, x6, 60312	# 294
	flw		f3, 0(x6)	# 294
	fmul	f2, f2, f3	# 294
	fadd	f1, f1, f2	# 294
	fsub	f1, f0, f1	# 123
	flw		f2, -60(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_else.32231	# 121
	jalr	x0, x1, 0	# 1912
fle_else.32231:
	fmul	f2, f1, f1	# 127
	fmul	f1, f2, f1	# 1907
	flw		f2, -56(x2)	# 1907
	fmul	f1, f1, f2	# 1907
	mul		x6, x30, x4	# 1907
	addi	x6, x6, 60324	# 1907
	flw		f2, 0(x6)	# 1907
	fmul	f1, f1, f2	# 1907
	mul		x6, x30, x4	# 1908
	addi	x6, x6, 60604	# 1908
	flw		f2, 0(x6)	# 1908
	fadd	f2, f2, f1	# 1908
	mul		x4, x30, x4	# 1908
	addi	x4, x4, 60604	# 1908
	fsw		f2, 0(x4)	# 1908
	mul		x4, x30, x5	# 1909
	addi	x4, x4, 60604	# 1909
	flw		f2, 0(x4)	# 1909
	fadd	f2, f2, f1	# 1909
	mul		x4, x30, x5	# 1909
	addi	x4, x4, 60604	# 1909
	fsw		f2, 0(x4)	# 1909
	mul		x4, x30, x7	# 1910
	addi	x4, x4, 60604	# 1910
	flw		f2, 0(x4)	# 1910
	fadd	f1, f2, f1	# 1910
	mul		x4, x30, x7	# 1910
	addi	x4, x4, 60604	# 1910
	fsw		f1, 0(x4)	# 1910
	jalr	x0, x1, 0	# 1910
beq.32230:
	jalr	x0, x1, 0	# 1913
iter_trace_diffuse_rays.2887.17780:
	lw		x8, 56(x29)	# 1946
	lw		x9, 52(x29)	# 1946
	lw		x10, 48(x29)	# 1946
	lw		x11, 44(x29)	# 1946
	lw		x12, 40(x29)	# 1946
	lw		x13, 36(x29)	# 1946
	lw		x14, 32(x29)	# 1946
	lw		x15, 28(x29)	# 1946
	lw		x16, 24(x29)	# 1946
	lw		x17, 20(x29)	# 1946
	lw		x18, 16(x29)	# 1946
	flw		f1, 12(x29)	# 1946
	flw		f2, 8(x29)	# 1946
	flw		f3, 4(x29)	# 1946
	ble		x17, x7, ble.32235	# 1946
	jalr	x0, x1, 0	# 1957
ble.32235:
	mul		x19, x30, x7	# 1947
	add		x19, x4, x19	# 1947
	lw		x19, 0(x19)	# 1947
	lw		x19, 0(x19)	# 641
	mul		x20, x30, x17	# 294
	add		x20, x19, x20	# 294
	flw		f4, 0(x20)	# 294
	mul		x20, x30, x17	# 294
	add		x20, x5, x20	# 294
	flw		f5, 0(x20)	# 294
	fmul	f4, f4, f5	# 294
	mul		x20, x30, x18	# 294
	add		x20, x19, x20	# 294
	flw		f5, 0(x20)	# 294
	mul		x20, x30, x18	# 294
	add		x20, x5, x20	# 294
	flw		f6, 0(x20)	# 294
	fmul	f5, f5, f6	# 294
	fadd	f4, f4, f5	# 294
	mul		x20, x30, x15	# 294
	add		x19, x19, x20	# 294
	flw		f5, 0(x19)	# 294
	mul		x19, x30, x15	# 294
	add		x19, x5, x19	# 294
	flw		f6, 0(x19)	# 294
	fmul	f5, f5, f6	# 294
	fadd	f4, f4, f5	# 294
	sw		x6, 0(x2)	# 122
	sw		x5, -4(x2)	# 122
	sw		x4, -8(x2)	# 122
	sw		x29, -12(x2)	# 122
	sw		x15, -16(x2)	# 122
	sw		x7, -20(x2)	# 122
	fle		x31, f3, f4	# 122
	beq		x31, x0, fle_else.32238	# 122
	mul		x19, x30, x7	# 1954
	add		x19, x4, x19	# 1954
	lw		x19, 0(x19)	# 1954
	lui		x20, %hi(l.27615)	# 1954
	ori		x20, x0, %lo(l.27615)	# 1954
	flw		f5, 0(x20)	# 1954
	fdiv	f4, f4, f5	# 1954
	mul		x20, x30, x17	# 1636
	addi	x20, x20, 60548	# 1636
	fsw		f1, 0(x20)	# 1636
	mul		x20, x30, x17	# 1637
	addi	x20, x20, 60536	# 1637
	lw		x20, 0(x20)	# 1637
	fsw		f4, -24(x2)	# 1637
	sw		x10, -28(x2)	# 1637
	sw		x14, -32(x2)	# 1637
	sw		x13, -36(x2)	# 1637
	sw		x16, -40(x2)	# 1637
	sw		x9, -44(x2)	# 1637
	fsw		f2, -48(x2)	# 1637
	sw		x12, -52(x2)	# 1637
	sw		x11, -56(x2)	# 1637
	fsw		f3, -60(x2)	# 1637
	sw		x18, -64(x2)	# 1637
	sw		x19, -68(x2)	# 1637
	sw		x17, -72(x2)	# 1637
	addi	x6, x19, 0
	addi	x5, x20, 0
	addi	x4, x17, 0
	addi	x29, x8, 0
	sw		x1, -76(x2)	# 1637
	addi	x2, x2, -80	# 1637
	lw		x31, 0(x29)	# 1637
	jalr	x1, x31, 0	# 1637
	addi	x2, x2, 80	# 1637
	lw		x1, -76(x2)	# 1637
	lw		x4, -72(x2)	# 1638
	mul		x5, x30, x4	# 1638
	addi	x5, x5, 60548	# 1638
	flw		f1, 0(x5)	# 1638
	fadd	f2, f0, f23	# 1640
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32240	# 125
	addi	x5, x0, 0	# 1642
	jal		x0, fle_cont.32239	# 125
fle_else.32240:
	fadd	f2, f0, f25	# 1641
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32242	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32241	# 125
fle_else.32242:
	addi	x5, x0, 1	# 125
fle_cont.32241:
fle_cont.32239:
	addi	x6, x0, 0	# 1929
	beq		x5, x6, beq_cont.32243	# 1929
	mul		x5, x30, x6	# 1930
	addi	x5, x5, 60564	# 1930
	lw		x5, 0(x5)	# 1930
	mul		x5, x30, x5	# 1930
	addi	x5, x5, 60048	# 1930
	lw		x5, 0(x5)	# 1930
	lw		x7, -68(x2)	# 641
	lw		x7, 0(x7)	# 641
	lw		x8, 4(x5)	# 355
	lw		x9, -64(x2)	# 1695
	beq		x8, x9, beq.32245	# 1695
	lw		x7, -16(x2)	# 1697
	beq		x8, x7, beq.32247	# 1697
	mul		x8, x30, x4	# 1672
	addi	x8, x8, 60552	# 1672
	flw		f1, 0(x8)	# 1672
	lw		x8, 20(x5)	# 433
	mul		x10, x30, x4	# 438
	add		x8, x8, x10	# 438
	flw		f2, 0(x8)	# 438
	fsub	f1, f1, f2	# 1672
	mul		x8, x30, x9	# 1673
	addi	x8, x8, 60552	# 1673
	flw		f2, 0(x8)	# 1673
	lw		x8, 20(x5)	# 443
	mul		x10, x30, x9	# 448
	add		x8, x8, x10	# 448
	flw		f3, 0(x8)	# 448
	fsub	f2, f2, f3	# 1673
	mul		x8, x30, x7	# 1674
	addi	x8, x8, 60552	# 1674
	flw		f3, 0(x8)	# 1674
	lw		x8, 20(x5)	# 453
	mul		x10, x30, x7	# 458
	add		x8, x8, x10	# 458
	flw		f4, 0(x8)	# 458
	fsub	f3, f3, f4	# 1674
	lw		x8, 16(x5)	# 393
	mul		x10, x30, x4	# 398
	add		x8, x8, x10	# 398
	flw		f4, 0(x8)	# 398
	fmul	f4, f1, f4	# 1676
	lw		x8, 16(x5)	# 403
	mul		x10, x30, x9	# 408
	add		x8, x8, x10	# 408
	flw		f5, 0(x8)	# 408
	fmul	f5, f2, f5	# 1677
	lw		x8, 16(x5)	# 413
	mul		x10, x30, x7	# 418
	add		x8, x8, x10	# 418
	flw		f6, 0(x8)	# 418
	fmul	f6, f3, f6	# 1678
	lw		x8, 12(x5)	# 384
	beq		x8, x4, beq.32249	# 1680
	addi	x8, x0, 0	# 1685
	lw		x10, 36(x5)	# 533
	mul		x11, x30, x7	# 538
	add		x10, x10, x11	# 538
	flw		f7, 0(x10)	# 538
	fmul	f7, f2, f7	# 1685
	lw		x10, 36(x5)	# 523
	mul		x11, x30, x9	# 528
	add		x10, x10, x11	# 528
	flw		f8, 0(x10)	# 528
	fmul	f8, f3, f8	# 1685
	fadd	f7, f7, f8	# 1685
	fadd	f8, f0, f17	# 126
	fmul	f7, f7, f8	# 126
	fadd	f4, f4, f7	# 1685
	mul		x8, x30, x8	# 1685
	addi	x8, x8, 60568	# 1685
	fsw		f4, 0(x8)	# 1685
	addi	x8, x0, 1	# 1686
	lw		x10, 36(x5)	# 533
	mul		x11, x30, x7	# 538
	add		x10, x10, x11	# 538
	flw		f4, 0(x10)	# 538
	fmul	f4, f1, f4	# 1686
	lw		x10, 36(x5)	# 513
	mul		x11, x30, x4	# 518
	add		x10, x10, x11	# 518
	flw		f7, 0(x10)	# 518
	fmul	f3, f3, f7	# 1686
	fadd	f3, f4, f3	# 1686
	fadd	f4, f0, f17	# 126
	fmul	f3, f3, f4	# 126
	fadd	f3, f5, f3	# 1686
	mul		x8, x30, x8	# 1686
	addi	x8, x8, 60568	# 1686
	fsw		f3, 0(x8)	# 1686
	addi	x8, x0, 2	# 1687
	lw		x10, 36(x5)	# 523
	mul		x11, x30, x9	# 528
	add		x10, x10, x11	# 528
	flw		f3, 0(x10)	# 528
	fmul	f1, f1, f3	# 1687
	lw		x10, 36(x5)	# 513
	mul		x11, x30, x4	# 518
	add		x10, x10, x11	# 518
	flw		f3, 0(x10)	# 518
	fmul	f2, f2, f3	# 1687
	fadd	f1, f1, f2	# 1687
	fadd	f2, f0, f17	# 126
	fmul	f1, f1, f2	# 126
	fadd	f1, f6, f1	# 1687
	mul		x8, x30, x8	# 1687
	addi	x8, x8, 60568	# 1687
	fsw		f1, 0(x8)	# 1687
	jal		x0, beq_cont.32248	# 1680
beq.32249:
	addi	x8, x0, 0	# 1681
	mul		x8, x30, x8	# 1681
	addi	x8, x8, 60568	# 1681
	fsw		f4, 0(x8)	# 1681
	addi	x8, x0, 1	# 1682
	mul		x8, x30, x8	# 1682
	addi	x8, x8, 60568	# 1682
	fsw		f5, 0(x8)	# 1682
	addi	x8, x0, 2	# 1683
	mul		x8, x30, x8	# 1683
	addi	x8, x8, 60568	# 1683
	fsw		f6, 0(x8)	# 1683
beq_cont.32248:
	lw		x8, 24(x5)	# 375
	mul		x10, x30, x4	# 285
	addi	x10, x10, 60568	# 285
	flw		f1, 0(x10)	# 285
	fmul	f1, f1, f1	# 127
	mul		x10, x30, x9	# 285
	addi	x10, x10, 60568	# 285
	flw		f2, 0(x10)	# 285
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 285
	mul		x10, x30, x7	# 285
	addi	x10, x10, 60568	# 285
	flw		f2, 0(x10)	# 285
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 285
	fsqrt	f1, f1	# 285
	flw		f2, -60(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.32251	# 120
	fadd	f1, f0, f16	# 286
	jal		x0, feq_cont.32250	# 120
feq_else.32251:
	beq		x8, x4, beq.32253	# 286
	fadd	f3, f0, f18	# 286
	fdiv	f1, f3, f1	# 286
	jal		x0, beq_cont.32252	# 286
beq.32253:
	fadd	f3, f0, f16	# 286
	fdiv	f1, f3, f1	# 286
beq_cont.32252:
feq_cont.32250:
	mul		x8, x30, x4	# 287
	addi	x8, x8, 60568	# 287
	flw		f3, 0(x8)	# 287
	fmul	f3, f3, f1	# 287
	mul		x8, x30, x4	# 287
	addi	x8, x8, 60568	# 287
	fsw		f3, 0(x8)	# 287
	mul		x8, x30, x9	# 288
	addi	x8, x8, 60568	# 288
	flw		f3, 0(x8)	# 288
	fmul	f3, f3, f1	# 288
	mul		x8, x30, x9	# 288
	addi	x8, x8, 60568	# 288
	fsw		f3, 0(x8)	# 288
	mul		x8, x30, x7	# 289
	addi	x8, x8, 60568	# 289
	flw		f3, 0(x8)	# 289
	fmul	f1, f3, f1	# 289
	mul		x8, x30, x7	# 289
	addi	x8, x8, 60568	# 289
	fsw		f1, 0(x8)	# 289
	jal		x0, beq_cont.32246	# 1697
beq.32247:
	lw		x8, 16(x5)	# 393
	mul		x10, x30, x4	# 398
	add		x8, x8, x10	# 398
	flw		f1, 0(x8)	# 398
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x4	# 1665
	addi	x8, x8, 60568	# 1665
	fsw		f1, 0(x8)	# 1665
	lw		x8, 16(x5)	# 403
	mul		x10, x30, x9	# 408
	add		x8, x8, x10	# 408
	flw		f1, 0(x8)	# 408
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x9	# 1666
	addi	x8, x8, 60568	# 1666
	fsw		f1, 0(x8)	# 1666
	lw		x8, 16(x5)	# 413
	mul		x10, x30, x7	# 418
	add		x8, x8, x10	# 418
	flw		f1, 0(x8)	# 418
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x7	# 1667
	addi	x8, x8, 60568	# 1667
	fsw		f1, 0(x8)	# 1667
beq_cont.32246:
	jal		x0, beq_cont.32244	# 1695
beq.32245:
	mul		x8, x30, x4	# 1656
	addi	x8, x8, 60544	# 1656
	lw		x8, 0(x8)	# 1656
	mul		x10, x30, x4	# 249
	addi	x10, x10, 60568	# 249
	flw		f1, -60(x2)	# 249
	fsw		f1, 0(x10)	# 249
	mul		x10, x30, x9	# 250
	addi	x10, x10, 60568	# 250
	fsw		f1, 0(x10)	# 250
	lw		x10, -16(x2)	# 251
	mul		x11, x30, x10	# 251
	addi	x11, x11, 60568	# 251
	fsw		f1, 0(x11)	# 251
	sub		x11, x8, x9	# 1659
	sub		x8, x8, x9	# 1659
	mul		x8, x30, x8	# 1659
	add		x7, x7, x8	# 1659
	flw		f2, 0(x7)	# 1659
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.32255	# 120
	fadd	f2, f0, f1	# 214
	jal		x0, feq_cont.32254	# 120
feq_else.32255:
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.32257	# 121
	fadd	f2, f0, f18	# 216
	jal		x0, fle_cont.32256	# 121
fle_else.32257:
	fadd	f2, f0, f16	# 215
fle_cont.32256:
feq_cont.32254:
	fsub	f2, f0, f2	# 123
	mul		x7, x30, x11	# 1659
	addi	x7, x7, 60568	# 1659
	fsw		f2, 0(x7)	# 1659
beq_cont.32244:
	lw		x7, 0(x5)	# 345
	lw		x8, 32(x5)	# 483
	mul		x10, x30, x4	# 488
	add		x8, x8, x10	# 488
	flw		f1, 0(x8)	# 488
	mul		x8, x30, x4	# 1712
	addi	x8, x8, 60580	# 1712
	fsw		f1, 0(x8)	# 1712
	lw		x8, 32(x5)	# 493
	mul		x10, x30, x9	# 498
	add		x8, x8, x10	# 498
	flw		f1, 0(x8)	# 498
	mul		x8, x30, x9	# 1713
	addi	x8, x8, 60580	# 1713
	fsw		f1, 0(x8)	# 1713
	lw		x8, 32(x5)	# 503
	lw		x10, -16(x2)	# 508
	mul		x11, x30, x10	# 508
	add		x8, x8, x11	# 508
	flw		f1, 0(x8)	# 508
	mul		x8, x30, x10	# 1714
	addi	x8, x8, 60580	# 1714
	fsw		f1, 0(x8)	# 1714
	sw		x5, -76(x2)	# 1715
	sw		x6, -80(x2)	# 1715
	beq		x7, x9, beq.32259	# 1715
	beq		x7, x10, beq.32261	# 1733
	lw		x8, -40(x2)	# 1740
	beq		x7, x8, beq.32263	# 1740
	addi	x8, x0, 4	# 1751
	beq		x7, x8, beq.32265	# 1751
	jal		x0, beq_cont.32264	# 1751
beq.32265:
	mul		x7, x30, x4	# 1753
	addi	x7, x7, 60552	# 1753
	flw		f1, 0(x7)	# 1753
	lw		x7, 20(x5)	# 433
	mul		x8, x30, x4	# 438
	add		x7, x7, x8	# 438
	flw		f2, 0(x7)	# 438
	fsub	f1, f1, f2	# 1753
	lw		x7, 16(x5)	# 393
	mul		x8, x30, x4	# 398
	add		x7, x7, x8	# 398
	flw		f2, 0(x7)	# 398
	fsqrt	f2, f2	# 1753
	fmul	f1, f1, f2	# 1753
	mul		x7, x30, x10	# 1754
	addi	x7, x7, 60552	# 1754
	flw		f2, 0(x7)	# 1754
	lw		x7, 20(x5)	# 453
	mul		x8, x30, x10	# 458
	add		x7, x7, x8	# 458
	flw		f3, 0(x7)	# 458
	fsub	f2, f2, f3	# 1754
	lw		x7, 16(x5)	# 413
	mul		x8, x30, x10	# 418
	add		x7, x7, x8	# 418
	flw		f3, 0(x7)	# 418
	fsqrt	f3, f3	# 1754
	fmul	f2, f2, f3	# 1754
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1755
	flw		f4, -60(x2)	# 124
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_else.32267	# 124
	fsub	f5, f0, f1	# 124
	jal		x0, fle_cont.32266	# 124
fle_else.32267:
	fadd	f5, f0, f1	# 124
fle_cont.32266:
	lui		x7, %hi(l.27106)	# 1757
	ori		x7, x0, %lo(l.27106)	# 1757
	flw		f6, 0(x7)	# 1757
	fsw		f6, -84(x2)	# 125
	fsw		f3, -88(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32269	# 125
	fdiv	f1, f2, f1	# 1760
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_cont.32270	# 124
	fsub	f1, f0, f1	# 124
fle_cont.32270:
	lw		x29, -32(x2)	# 1762
	sw		x1, -92(x2)	# 1762
	addi	x2, x2, -96	# 1762
	lw		x31, 0(x29)	# 1762
	jalr	x1, x31, 0	# 1762
	addi	x2, x2, 96	# 1762
	lw		x1, -92(x2)	# 1762
	fadd	f2, f0, f21	# 1762
	fmul	f1, f1, f2	# 1762
	fadd	f2, f0, f19	# 1762
	fdiv	f1, f1, f2	# 1762
	jal		x0, fle_cont.32268	# 125
fle_else.32269:
	fadd	f1, f0, f20	# 1758
fle_cont.32268:
	flw		f2, -60(x2)	# 139
	fsw		f1, -92(x2)	# 139
	fle		x31, f2, f1	# 139
	beq		x31, x0, fle_else.32272	# 139
	lw		x29, -56(x2)	# 139
	sw		x1, -96(x2)	# 139
	addi	x2, x2, -100	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 100	# 139
	lw		x1, -96(x2)	# 139
	lw		x29, -52(x2)	# 139
	sw		x1, -96(x2)	# 139
	addi	x2, x2, -100	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 100	# 139
	lw		x1, -96(x2)	# 139
	jal		x0, fle_cont.32271	# 139
fle_else.32272:
	lw		x29, -56(x2)	# 140
	sw		x1, -96(x2)	# 140
	addi	x2, x2, -100	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 100	# 140
	lw		x1, -96(x2)	# 140
	lw		x5, -64(x2)	# 140
	sub		x4, x4, x5	# 140
	lw		x29, -52(x2)	# 140
	sw		x1, -96(x2)	# 140
	addi	x2, x2, -100	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 100	# 140
	lw		x1, -96(x2)	# 140
fle_cont.32271:
	flw		f2, -92(x2)	# 1764
	fsub	f1, f2, f1	# 1764
	lw		x4, -64(x2)	# 1766
	mul		x5, x30, x4	# 1766
	addi	x5, x5, 60552	# 1766
	flw		f2, 0(x5)	# 1766
	lw		x5, -76(x2)	# 443
	lw		x6, 20(x5)	# 443
	mul		x7, x30, x4	# 448
	add		x6, x6, x7	# 448
	flw		f3, 0(x6)	# 448
	fsub	f2, f2, f3	# 1766
	lw		x6, 16(x5)	# 403
	mul		x7, x30, x4	# 408
	add		x6, x6, x7	# 408
	flw		f3, 0(x6)	# 408
	fsqrt	f3, f3	# 1766
	fmul	f2, f2, f3	# 1766
	flw		f3, -60(x2)	# 124
	flw		f4, -88(x2)	# 124
	fle		x31, f4, f3	# 124
	beq		x31, x0, fle_else.32274	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.32273	# 124
fle_else.32274:
	fadd	f5, f0, f4	# 124
fle_cont.32273:
	flw		f6, -84(x2)	# 125
	fsw		f1, -96(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32276	# 125
	fdiv	f2, f2, f4	# 1771
	fle		x31, f2, f3	# 124
	beq		x31, x0, fle_cont.32277	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32277:
	lw		x29, -32(x2)	# 1772
	fadd	f1, f0, f2
	sw		x1, -100(x2)	# 1772
	addi	x2, x2, -104	# 1772
	lw		x31, 0(x29)	# 1772
	jalr	x1, x31, 0	# 1772
	addi	x2, x2, 104	# 1772
	lw		x1, -100(x2)	# 1772
	fadd	f2, f0, f21	# 1772
	fmul	f1, f1, f2	# 1772
	fadd	f2, f0, f19	# 1772
	fdiv	f1, f1, f2	# 1772
	jal		x0, fle_cont.32275	# 125
fle_else.32276:
	fadd	f1, f0, f20	# 1769
fle_cont.32275:
	flw		f2, -60(x2)	# 139
	fsw		f1, -100(x2)	# 139
	fle		x31, f2, f1	# 139
	beq		x31, x0, fle_else.32279	# 139
	lw		x29, -56(x2)	# 139
	sw		x1, -104(x2)	# 139
	addi	x2, x2, -108	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 108	# 139
	lw		x1, -104(x2)	# 139
	lw		x29, -52(x2)	# 139
	sw		x1, -104(x2)	# 139
	addi	x2, x2, -108	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 108	# 139
	lw		x1, -104(x2)	# 139
	jal		x0, fle_cont.32278	# 139
fle_else.32279:
	lw		x29, -56(x2)	# 140
	sw		x1, -104(x2)	# 140
	addi	x2, x2, -108	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 108	# 140
	lw		x1, -104(x2)	# 140
	lw		x5, -64(x2)	# 140
	sub		x4, x4, x5	# 140
	lw		x29, -52(x2)	# 140
	sw		x1, -104(x2)	# 140
	addi	x2, x2, -108	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 108	# 140
	lw		x1, -104(x2)	# 140
fle_cont.32278:
	flw		f2, -100(x2)	# 1774
	fsub	f1, f2, f1	# 1774
	lui		x4, %hi(l.27123)	# 1775
	ori		x4, x0, %lo(l.27123)	# 1775
	flw		f2, 0(x4)	# 1775
	fadd	f3, f0, f17	# 1775
	flw		f4, -96(x2)	# 1775
	fsub	f4, f3, f4	# 1775
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1775
	fsub	f1, f3, f1	# 1775
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1775
	flw		f2, -60(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.32281	# 122
	jal		x0, fle_cont.32280	# 122
fle_else.32281:
	fadd	f1, f0, f2	# 1776
fle_cont.32280:
	flw		f3, -48(x2)	# 1777
	fmul	f1, f3, f1	# 1777
	fadd	f3, f0, f27	# 1777
	fdiv	f1, f1, f3	# 1777
	lw		x4, -16(x2)	# 1777
	mul		x5, x30, x4	# 1777
	addi	x5, x5, 60580	# 1777
	fsw		f1, 0(x5)	# 1777
beq_cont.32264:
	jal		x0, beq_cont.32262	# 1740
beq.32263:
	mul		x7, x30, x4	# 1743
	addi	x7, x7, 60552	# 1743
	flw		f1, 0(x7)	# 1743
	lw		x7, 20(x5)	# 433
	mul		x8, x30, x4	# 438
	add		x7, x7, x8	# 438
	flw		f2, 0(x7)	# 438
	fsub	f1, f1, f2	# 1743
	mul		x7, x30, x10	# 1744
	addi	x7, x7, 60552	# 1744
	flw		f2, 0(x7)	# 1744
	lw		x7, 20(x5)	# 453
	mul		x8, x30, x10	# 458
	add		x7, x7, x8	# 458
	flw		f3, 0(x7)	# 458
	fsub	f2, f2, f3	# 1744
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1745
	fsqrt	f1, f1	# 1745
	fadd	f2, f0, f22	# 1745
	fdiv	f1, f1, f2	# 1745
	flw		f2, -60(x2)	# 139
	fsw		f1, -104(x2)	# 139
	fle		x31, f2, f1	# 139
	beq		x31, x0, fle_else.32283	# 139
	lw		x29, -56(x2)	# 139
	sw		x1, -108(x2)	# 139
	addi	x2, x2, -112	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 112	# 139
	lw		x1, -108(x2)	# 139
	lw		x29, -52(x2)	# 139
	sw		x1, -108(x2)	# 139
	addi	x2, x2, -112	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 112	# 139
	lw		x1, -108(x2)	# 139
	jal		x0, fle_cont.32282	# 139
fle_else.32283:
	lw		x29, -56(x2)	# 140
	sw		x1, -108(x2)	# 140
	addi	x2, x2, -112	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 112	# 140
	lw		x1, -108(x2)	# 140
	lw		x5, -64(x2)	# 140
	sub		x4, x4, x5	# 140
	lw		x29, -52(x2)	# 140
	sw		x1, -108(x2)	# 140
	addi	x2, x2, -112	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 112	# 140
	lw		x1, -108(x2)	# 140
fle_cont.32282:
	flw		f2, -104(x2)	# 1746
	fsub	f1, f2, f1	# 1746
	fadd	f2, f0, f19	# 1746
	fmul	f1, f1, f2	# 1746
	lw		x29, -36(x2)	# 1747
	sw		x1, -108(x2)	# 1747
	addi	x2, x2, -112	# 1747
	lw		x31, 0(x29)	# 1747
	jalr	x1, x31, 0	# 1747
	addi	x2, x2, 112	# 1747
	lw		x1, -108(x2)	# 1747
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1748
	fmul	f3, f1, f2	# 1748
	lw		x4, -64(x2)	# 1748
	mul		x5, x30, x4	# 1748
	addi	x5, x5, 60580	# 1748
	fsw		f3, 0(x5)	# 1748
	fadd	f3, f0, f16	# 1749
	fsub	f1, f3, f1	# 1749
	fmul	f1, f1, f2	# 1749
	lw		x5, -16(x2)	# 1749
	mul		x6, x30, x5	# 1749
	addi	x6, x6, 60580	# 1749
	fsw		f1, 0(x6)	# 1749
beq_cont.32262:
	jal		x0, beq_cont.32260	# 1733
beq.32261:
	mul		x7, x30, x9	# 1736
	addi	x7, x7, 60552	# 1736
	flw		f1, 0(x7)	# 1736
	fadd	f2, f0, f26	# 1736
	fmul	f1, f1, f2	# 1736
	lw		x29, -44(x2)	# 1736
	sw		x1, -108(x2)	# 1736
	addi	x2, x2, -112	# 1736
	lw		x31, 0(x29)	# 1736
	jalr	x1, x31, 0	# 1736
	addi	x2, x2, 112	# 1736
	lw		x1, -108(x2)	# 1736
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1737
	fmul	f3, f2, f1	# 1737
	lw		x4, -72(x2)	# 1737
	mul		x5, x30, x4	# 1737
	addi	x5, x5, 60580	# 1737
	fsw		f3, 0(x5)	# 1737
	fadd	f3, f0, f16	# 1738
	fsub	f1, f3, f1	# 1738
	fmul	f1, f2, f1	# 1738
	lw		x5, -64(x2)	# 1738
	mul		x6, x30, x5	# 1738
	addi	x6, x6, 60580	# 1738
	fsw		f1, 0(x6)	# 1738
beq_cont.32260:
	jal		x0, beq_cont.32258	# 1715
beq.32259:
	mul		x7, x30, x4	# 1718
	addi	x7, x7, 60552	# 1718
	flw		f1, 0(x7)	# 1718
	lw		x7, 20(x5)	# 433
	mul		x8, x30, x4	# 438
	add		x7, x7, x8	# 438
	flw		f2, 0(x7)	# 438
	fsub	f1, f1, f2	# 1718
	fadd	f2, f0, f28	# 1720
	fmul	f3, f1, f2	# 1720
	flw		f4, -60(x2)	# 139
	fsw		f2, -108(x2)	# 139
	fsw		f1, -112(x2)	# 139
	fle		x31, f4, f3	# 139
	beq		x31, x0, fle_else.32285	# 139
	lw		x29, -56(x2)	# 139
	fadd	f1, f0, f3
	sw		x1, -116(x2)	# 139
	addi	x2, x2, -120	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 120	# 139
	lw		x1, -116(x2)	# 139
	lw		x29, -52(x2)	# 139
	sw		x1, -116(x2)	# 139
	addi	x2, x2, -120	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 120	# 139
	lw		x1, -116(x2)	# 139
	jal		x0, fle_cont.32284	# 139
fle_else.32285:
	lw		x29, -56(x2)	# 140
	fadd	f1, f0, f3
	sw		x1, -116(x2)	# 140
	addi	x2, x2, -120	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 120	# 140
	lw		x1, -116(x2)	# 140
	lw		x5, -64(x2)	# 140
	sub		x4, x4, x5	# 140
	lw		x29, -52(x2)	# 140
	sw		x1, -116(x2)	# 140
	addi	x2, x2, -120	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 120	# 140
	lw		x1, -116(x2)	# 140
fle_cont.32284:
	fadd	f2, f0, f29	# 1720
	fmul	f1, f1, f2	# 1720
	flw		f3, -112(x2)	# 1721
	fsub	f1, f3, f1	# 1721
	fadd	f3, f0, f22	# 1721
	lw		x4, -16(x2)	# 1723
	mul		x5, x30, x4	# 1723
	addi	x5, x5, 60552	# 1723
	flw		f4, 0(x5)	# 1723
	lw		x5, -76(x2)	# 453
	lw		x6, 20(x5)	# 453
	mul		x7, x30, x4	# 458
	add		x6, x6, x7	# 458
	flw		f5, 0(x6)	# 458
	fsub	f4, f4, f5	# 1723
	flw		f5, -108(x2)	# 1725
	fmul	f5, f4, f5	# 1725
	flw		f6, -60(x2)	# 139
	fsw		f1, -116(x2)	# 139
	fsw		f3, -120(x2)	# 139
	fsw		f4, -124(x2)	# 139
	fsw		f2, -128(x2)	# 139
	fle		x31, f6, f5	# 139
	beq		x31, x0, fle_else.32287	# 139
	lw		x29, -56(x2)	# 139
	fadd	f1, f0, f5
	sw		x1, -132(x2)	# 139
	addi	x2, x2, -136	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 136	# 139
	lw		x1, -132(x2)	# 139
	lw		x29, -52(x2)	# 139
	sw		x1, -132(x2)	# 139
	addi	x2, x2, -136	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 136	# 139
	lw		x1, -132(x2)	# 139
	jal		x0, fle_cont.32286	# 139
fle_else.32287:
	lw		x29, -56(x2)	# 140
	fadd	f1, f0, f5
	sw		x1, -132(x2)	# 140
	addi	x2, x2, -136	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 136	# 140
	lw		x1, -132(x2)	# 140
	lw		x5, -64(x2)	# 140
	sub		x4, x4, x5	# 140
	lw		x29, -52(x2)	# 140
	sw		x1, -132(x2)	# 140
	addi	x2, x2, -136	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 136	# 140
	lw		x1, -132(x2)	# 140
fle_cont.32286:
	flw		f2, -128(x2)	# 1725
	fmul	f1, f1, f2	# 1725
	flw		f2, -124(x2)	# 1726
	fsub	f1, f2, f1	# 1726
	flw		f2, -116(x2)	# 125
	flw		f3, -120(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32289	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32291	# 125
	flw		f1, -48(x2)	# 1731
	jal		x0, fle_cont.32290	# 125
fle_else.32291:
	flw		f1, -60(x2)	# 1731
fle_cont.32290:
	jal		x0, fle_cont.32288	# 125
fle_else.32289:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32293	# 125
	flw		f1, -60(x2)	# 1730
	jal		x0, fle_cont.32292	# 125
fle_else.32293:
	flw		f1, -48(x2)	# 1730
fle_cont.32292:
fle_cont.32288:
	lw		x4, -64(x2)	# 1728
	mul		x5, x30, x4	# 1728
	addi	x5, x5, 60580	# 1728
	fsw		f1, 0(x5)	# 1728
beq_cont.32258:
	addi	x4, x0, 0	# 1935
	addi	x5, x0, 0	# 1935
	mul		x5, x30, x5	# 1935
	addi	x5, x5, 60536	# 1935
	lw		x5, 0(x5)	# 1935
	lw		x29, -28(x2)	# 1935
	sw		x1, -132(x2)	# 1935
	addi	x2, x2, -136	# 1935
	lw		x31, 0(x29)	# 1935
	jalr	x1, x31, 0	# 1935
	addi	x2, x2, 136	# 1935
	lw		x1, -132(x2)	# 1935
	lw		x5, -80(x2)	# 1935
	beq		x4, x5, beq.32295	# 1935
	jal		x0, beq_cont.32294	# 1935
beq.32295:
	lw		x4, -72(x2)	# 294
	mul		x5, x30, x4	# 294
	addi	x5, x5, 60568	# 294
	flw		f1, 0(x5)	# 294
	mul		x5, x30, x4	# 294
	addi	x5, x5, 60312	# 294
	flw		f2, 0(x5)	# 294
	fmul	f1, f1, f2	# 294
	lw		x5, -64(x2)	# 294
	mul		x6, x30, x5	# 294
	addi	x6, x6, 60568	# 294
	flw		f2, 0(x6)	# 294
	mul		x6, x30, x5	# 294
	addi	x6, x6, 60312	# 294
	flw		f3, 0(x6)	# 294
	fmul	f2, f2, f3	# 294
	fadd	f1, f1, f2	# 294
	lw		x6, -16(x2)	# 294
	mul		x7, x30, x6	# 294
	addi	x7, x7, 60568	# 294
	flw		f2, 0(x7)	# 294
	mul		x7, x30, x6	# 294
	addi	x7, x7, 60312	# 294
	flw		f3, 0(x7)	# 294
	fmul	f2, f2, f3	# 294
	fadd	f1, f1, f2	# 294
	fsub	f1, f0, f1	# 123
	flw		f2, -60(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_cont.32296	# 121
	fadd	f1, f0, f0	# 1937
fle_cont.32296:
	flw		f2, -24(x2)	# 1938
	fmul	f1, f2, f1	# 1938
	lw		x7, -76(x2)	# 463
	lw		x7, 28(x7)	# 463
	mul		x8, x30, x4	# 468
	add		x7, x7, x8	# 468
	flw		f2, 0(x7)	# 468
	fmul	f1, f1, f2	# 1938
	mul		x7, x30, x4	# 304
	addi	x7, x7, 60592	# 304
	flw		f2, 0(x7)	# 304
	mul		x7, x30, x4	# 304
	addi	x7, x7, 60580	# 304
	flw		f3, 0(x7)	# 304
	fmul	f3, f1, f3	# 304
	fadd	f2, f2, f3	# 304
	mul		x4, x30, x4	# 304
	addi	x4, x4, 60592	# 304
	fsw		f2, 0(x4)	# 304
	mul		x4, x30, x5	# 305
	addi	x4, x4, 60592	# 305
	flw		f2, 0(x4)	# 305
	mul		x4, x30, x5	# 305
	addi	x4, x4, 60580	# 305
	flw		f3, 0(x4)	# 305
	fmul	f3, f1, f3	# 305
	fadd	f2, f2, f3	# 305
	mul		x4, x30, x5	# 305
	addi	x4, x4, 60592	# 305
	fsw		f2, 0(x4)	# 305
	mul		x4, x30, x6	# 306
	addi	x4, x4, 60592	# 306
	flw		f2, 0(x4)	# 306
	mul		x4, x30, x6	# 306
	addi	x4, x4, 60580	# 306
	flw		f3, 0(x4)	# 306
	fmul	f1, f1, f3	# 306
	fadd	f1, f2, f1	# 306
	mul		x4, x30, x6	# 306
	addi	x4, x4, 60592	# 306
	fsw		f1, 0(x4)	# 306
beq_cont.32294:
beq_cont.32243:
	jal		x0, fle_cont.32237	# 122
fle_else.32238:
	addi	x19, x7, 1	# 1952
	mul		x19, x30, x19	# 1952
	add		x19, x4, x19	# 1952
	lw		x19, 0(x19)	# 1952
	lui		x20, %hi(l.27394)	# 1952
	ori		x20, x0, %lo(l.27394)	# 1952
	flw		f5, 0(x20)	# 1952
	fdiv	f4, f4, f5	# 1952
	mul		x20, x30, x17	# 1636
	addi	x20, x20, 60548	# 1636
	fsw		f1, 0(x20)	# 1636
	mul		x20, x30, x17	# 1637
	addi	x20, x20, 60536	# 1637
	lw		x20, 0(x20)	# 1637
	fsw		f4, -132(x2)	# 1637
	sw		x10, -28(x2)	# 1637
	sw		x14, -32(x2)	# 1637
	sw		x13, -36(x2)	# 1637
	sw		x16, -40(x2)	# 1637
	sw		x9, -44(x2)	# 1637
	fsw		f2, -48(x2)	# 1637
	sw		x12, -52(x2)	# 1637
	sw		x11, -56(x2)	# 1637
	fsw		f3, -60(x2)	# 1637
	sw		x18, -64(x2)	# 1637
	sw		x19, -136(x2)	# 1637
	sw		x17, -72(x2)	# 1637
	addi	x6, x19, 0
	addi	x5, x20, 0
	addi	x4, x17, 0
	addi	x29, x8, 0
	sw		x1, -140(x2)	# 1637
	addi	x2, x2, -144	# 1637
	lw		x31, 0(x29)	# 1637
	jalr	x1, x31, 0	# 1637
	addi	x2, x2, 144	# 1637
	lw		x1, -140(x2)	# 1637
	lw		x4, -72(x2)	# 1638
	mul		x5, x30, x4	# 1638
	addi	x5, x5, 60548	# 1638
	flw		f1, 0(x5)	# 1638
	fadd	f2, f0, f23	# 1640
	fle		x31, f1, f2	# 125
	beq		x31, x0, fle_else.32298	# 125
	addi	x5, x0, 0	# 1642
	jal		x0, fle_cont.32297	# 125
fle_else.32298:
	fadd	f2, f0, f25	# 1641
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32300	# 125
	addi	x5, x0, 0	# 125
	jal		x0, fle_cont.32299	# 125
fle_else.32300:
	addi	x5, x0, 1	# 125
fle_cont.32299:
fle_cont.32297:
	addi	x6, x0, 0	# 1929
	beq		x5, x6, beq_cont.32301	# 1929
	mul		x5, x30, x6	# 1930
	addi	x5, x5, 60564	# 1930
	lw		x5, 0(x5)	# 1930
	mul		x5, x30, x5	# 1930
	addi	x5, x5, 60048	# 1930
	lw		x5, 0(x5)	# 1930
	lw		x7, -136(x2)	# 641
	lw		x7, 0(x7)	# 641
	lw		x8, 4(x5)	# 355
	lw		x9, -64(x2)	# 1695
	beq		x8, x9, beq.32303	# 1695
	lw		x7, -16(x2)	# 1697
	beq		x8, x7, beq.32305	# 1697
	mul		x8, x30, x4	# 1672
	addi	x8, x8, 60552	# 1672
	flw		f1, 0(x8)	# 1672
	lw		x8, 20(x5)	# 433
	mul		x10, x30, x4	# 438
	add		x8, x8, x10	# 438
	flw		f2, 0(x8)	# 438
	fsub	f1, f1, f2	# 1672
	mul		x8, x30, x9	# 1673
	addi	x8, x8, 60552	# 1673
	flw		f2, 0(x8)	# 1673
	lw		x8, 20(x5)	# 443
	mul		x10, x30, x9	# 448
	add		x8, x8, x10	# 448
	flw		f3, 0(x8)	# 448
	fsub	f2, f2, f3	# 1673
	mul		x8, x30, x7	# 1674
	addi	x8, x8, 60552	# 1674
	flw		f3, 0(x8)	# 1674
	lw		x8, 20(x5)	# 453
	mul		x10, x30, x7	# 458
	add		x8, x8, x10	# 458
	flw		f4, 0(x8)	# 458
	fsub	f3, f3, f4	# 1674
	lw		x8, 16(x5)	# 393
	mul		x10, x30, x4	# 398
	add		x8, x8, x10	# 398
	flw		f4, 0(x8)	# 398
	fmul	f4, f1, f4	# 1676
	lw		x8, 16(x5)	# 403
	mul		x10, x30, x9	# 408
	add		x8, x8, x10	# 408
	flw		f5, 0(x8)	# 408
	fmul	f5, f2, f5	# 1677
	lw		x8, 16(x5)	# 413
	mul		x10, x30, x7	# 418
	add		x8, x8, x10	# 418
	flw		f6, 0(x8)	# 418
	fmul	f6, f3, f6	# 1678
	lw		x8, 12(x5)	# 384
	beq		x8, x4, beq.32307	# 1680
	addi	x8, x0, 0	# 1685
	lw		x10, 36(x5)	# 533
	mul		x11, x30, x7	# 538
	add		x10, x10, x11	# 538
	flw		f7, 0(x10)	# 538
	fmul	f7, f2, f7	# 1685
	lw		x10, 36(x5)	# 523
	mul		x11, x30, x9	# 528
	add		x10, x10, x11	# 528
	flw		f8, 0(x10)	# 528
	fmul	f8, f3, f8	# 1685
	fadd	f7, f7, f8	# 1685
	fadd	f8, f0, f17	# 126
	fmul	f7, f7, f8	# 126
	fadd	f4, f4, f7	# 1685
	mul		x8, x30, x8	# 1685
	addi	x8, x8, 60568	# 1685
	fsw		f4, 0(x8)	# 1685
	addi	x8, x0, 1	# 1686
	lw		x10, 36(x5)	# 533
	mul		x11, x30, x7	# 538
	add		x10, x10, x11	# 538
	flw		f4, 0(x10)	# 538
	fmul	f4, f1, f4	# 1686
	lw		x10, 36(x5)	# 513
	mul		x11, x30, x4	# 518
	add		x10, x10, x11	# 518
	flw		f7, 0(x10)	# 518
	fmul	f3, f3, f7	# 1686
	fadd	f3, f4, f3	# 1686
	fadd	f4, f0, f17	# 126
	fmul	f3, f3, f4	# 126
	fadd	f3, f5, f3	# 1686
	mul		x8, x30, x8	# 1686
	addi	x8, x8, 60568	# 1686
	fsw		f3, 0(x8)	# 1686
	addi	x8, x0, 2	# 1687
	lw		x10, 36(x5)	# 523
	mul		x11, x30, x9	# 528
	add		x10, x10, x11	# 528
	flw		f3, 0(x10)	# 528
	fmul	f1, f1, f3	# 1687
	lw		x10, 36(x5)	# 513
	mul		x11, x30, x4	# 518
	add		x10, x10, x11	# 518
	flw		f3, 0(x10)	# 518
	fmul	f2, f2, f3	# 1687
	fadd	f1, f1, f2	# 1687
	fadd	f2, f0, f17	# 126
	fmul	f1, f1, f2	# 126
	fadd	f1, f6, f1	# 1687
	mul		x8, x30, x8	# 1687
	addi	x8, x8, 60568	# 1687
	fsw		f1, 0(x8)	# 1687
	jal		x0, beq_cont.32306	# 1680
beq.32307:
	addi	x8, x0, 0	# 1681
	mul		x8, x30, x8	# 1681
	addi	x8, x8, 60568	# 1681
	fsw		f4, 0(x8)	# 1681
	addi	x8, x0, 1	# 1682
	mul		x8, x30, x8	# 1682
	addi	x8, x8, 60568	# 1682
	fsw		f5, 0(x8)	# 1682
	addi	x8, x0, 2	# 1683
	mul		x8, x30, x8	# 1683
	addi	x8, x8, 60568	# 1683
	fsw		f6, 0(x8)	# 1683
beq_cont.32306:
	lw		x8, 24(x5)	# 375
	mul		x10, x30, x4	# 285
	addi	x10, x10, 60568	# 285
	flw		f1, 0(x10)	# 285
	fmul	f1, f1, f1	# 127
	mul		x10, x30, x9	# 285
	addi	x10, x10, 60568	# 285
	flw		f2, 0(x10)	# 285
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 285
	mul		x10, x30, x7	# 285
	addi	x10, x10, 60568	# 285
	flw		f2, 0(x10)	# 285
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 285
	fsqrt	f1, f1	# 285
	flw		f2, -60(x2)	# 120
	feq		x31, f1, f2	# 120
	beq		x31, x0, feq_else.32309	# 120
	fadd	f1, f0, f16	# 286
	jal		x0, feq_cont.32308	# 120
feq_else.32309:
	beq		x8, x4, beq.32311	# 286
	fadd	f3, f0, f18	# 286
	fdiv	f1, f3, f1	# 286
	jal		x0, beq_cont.32310	# 286
beq.32311:
	fadd	f3, f0, f16	# 286
	fdiv	f1, f3, f1	# 286
beq_cont.32310:
feq_cont.32308:
	mul		x8, x30, x4	# 287
	addi	x8, x8, 60568	# 287
	flw		f3, 0(x8)	# 287
	fmul	f3, f3, f1	# 287
	mul		x8, x30, x4	# 287
	addi	x8, x8, 60568	# 287
	fsw		f3, 0(x8)	# 287
	mul		x8, x30, x9	# 288
	addi	x8, x8, 60568	# 288
	flw		f3, 0(x8)	# 288
	fmul	f3, f3, f1	# 288
	mul		x8, x30, x9	# 288
	addi	x8, x8, 60568	# 288
	fsw		f3, 0(x8)	# 288
	mul		x8, x30, x7	# 289
	addi	x8, x8, 60568	# 289
	flw		f3, 0(x8)	# 289
	fmul	f1, f3, f1	# 289
	mul		x8, x30, x7	# 289
	addi	x8, x8, 60568	# 289
	fsw		f1, 0(x8)	# 289
	jal		x0, beq_cont.32304	# 1697
beq.32305:
	lw		x8, 16(x5)	# 393
	mul		x10, x30, x4	# 398
	add		x8, x8, x10	# 398
	flw		f1, 0(x8)	# 398
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x4	# 1665
	addi	x8, x8, 60568	# 1665
	fsw		f1, 0(x8)	# 1665
	lw		x8, 16(x5)	# 403
	mul		x10, x30, x9	# 408
	add		x8, x8, x10	# 408
	flw		f1, 0(x8)	# 408
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x9	# 1666
	addi	x8, x8, 60568	# 1666
	fsw		f1, 0(x8)	# 1666
	lw		x8, 16(x5)	# 413
	mul		x10, x30, x7	# 418
	add		x8, x8, x10	# 418
	flw		f1, 0(x8)	# 418
	fsub	f1, f0, f1	# 123
	mul		x8, x30, x7	# 1667
	addi	x8, x8, 60568	# 1667
	fsw		f1, 0(x8)	# 1667
beq_cont.32304:
	jal		x0, beq_cont.32302	# 1695
beq.32303:
	mul		x8, x30, x4	# 1656
	addi	x8, x8, 60544	# 1656
	lw		x8, 0(x8)	# 1656
	mul		x10, x30, x4	# 249
	addi	x10, x10, 60568	# 249
	flw		f1, -60(x2)	# 249
	fsw		f1, 0(x10)	# 249
	mul		x10, x30, x9	# 250
	addi	x10, x10, 60568	# 250
	fsw		f1, 0(x10)	# 250
	lw		x10, -16(x2)	# 251
	mul		x11, x30, x10	# 251
	addi	x11, x11, 60568	# 251
	fsw		f1, 0(x11)	# 251
	sub		x11, x8, x9	# 1659
	sub		x8, x8, x9	# 1659
	mul		x8, x30, x8	# 1659
	add		x7, x7, x8	# 1659
	flw		f2, 0(x7)	# 1659
	feq		x31, f2, f1	# 120
	beq		x31, x0, feq_else.32313	# 120
	fadd	f2, f0, f1	# 214
	jal		x0, feq_cont.32312	# 120
feq_else.32313:
	fle		x31, f2, f1	# 121
	beq		x31, x0, fle_else.32315	# 121
	fadd	f2, f0, f18	# 216
	jal		x0, fle_cont.32314	# 121
fle_else.32315:
	fadd	f2, f0, f16	# 215
fle_cont.32314:
feq_cont.32312:
	fsub	f2, f0, f2	# 123
	mul		x7, x30, x11	# 1659
	addi	x7, x7, 60568	# 1659
	fsw		f2, 0(x7)	# 1659
beq_cont.32302:
	lw		x7, 0(x5)	# 345
	lw		x8, 32(x5)	# 483
	mul		x10, x30, x4	# 488
	add		x8, x8, x10	# 488
	flw		f1, 0(x8)	# 488
	mul		x8, x30, x4	# 1712
	addi	x8, x8, 60580	# 1712
	fsw		f1, 0(x8)	# 1712
	lw		x8, 32(x5)	# 493
	mul		x10, x30, x9	# 498
	add		x8, x8, x10	# 498
	flw		f1, 0(x8)	# 498
	mul		x8, x30, x9	# 1713
	addi	x8, x8, 60580	# 1713
	fsw		f1, 0(x8)	# 1713
	lw		x8, 32(x5)	# 503
	lw		x10, -16(x2)	# 508
	mul		x11, x30, x10	# 508
	add		x8, x8, x11	# 508
	flw		f1, 0(x8)	# 508
	mul		x8, x30, x10	# 1714
	addi	x8, x8, 60580	# 1714
	fsw		f1, 0(x8)	# 1714
	sw		x5, -140(x2)	# 1715
	sw		x6, -144(x2)	# 1715
	beq		x7, x9, beq.32317	# 1715
	beq		x7, x10, beq.32319	# 1733
	lw		x8, -40(x2)	# 1740
	beq		x7, x8, beq.32321	# 1740
	addi	x8, x0, 4	# 1751
	beq		x7, x8, beq.32323	# 1751
	jal		x0, beq_cont.32322	# 1751
beq.32323:
	mul		x7, x30, x4	# 1753
	addi	x7, x7, 60552	# 1753
	flw		f1, 0(x7)	# 1753
	lw		x7, 20(x5)	# 433
	mul		x8, x30, x4	# 438
	add		x7, x7, x8	# 438
	flw		f2, 0(x7)	# 438
	fsub	f1, f1, f2	# 1753
	lw		x7, 16(x5)	# 393
	mul		x8, x30, x4	# 398
	add		x7, x7, x8	# 398
	flw		f2, 0(x7)	# 398
	fsqrt	f2, f2	# 1753
	fmul	f1, f1, f2	# 1753
	mul		x7, x30, x10	# 1754
	addi	x7, x7, 60552	# 1754
	flw		f2, 0(x7)	# 1754
	lw		x7, 20(x5)	# 453
	mul		x8, x30, x10	# 458
	add		x7, x7, x8	# 458
	flw		f3, 0(x7)	# 458
	fsub	f2, f2, f3	# 1754
	lw		x7, 16(x5)	# 413
	mul		x8, x30, x10	# 418
	add		x7, x7, x8	# 418
	flw		f3, 0(x7)	# 418
	fsqrt	f3, f3	# 1754
	fmul	f2, f2, f3	# 1754
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 1755
	flw		f4, -60(x2)	# 124
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_else.32325	# 124
	fsub	f5, f0, f1	# 124
	jal		x0, fle_cont.32324	# 124
fle_else.32325:
	fadd	f5, f0, f1	# 124
fle_cont.32324:
	lui		x7, %hi(l.27106)	# 1757
	ori		x7, x0, %lo(l.27106)	# 1757
	flw		f6, 0(x7)	# 1757
	fsw		f6, -148(x2)	# 125
	fsw		f3, -152(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32327	# 125
	fdiv	f1, f2, f1	# 1760
	fle		x31, f1, f4	# 124
	beq		x31, x0, fle_cont.32328	# 124
	fsub	f1, f0, f1	# 124
fle_cont.32328:
	lw		x29, -32(x2)	# 1762
	sw		x1, -156(x2)	# 1762
	addi	x2, x2, -160	# 1762
	lw		x31, 0(x29)	# 1762
	jalr	x1, x31, 0	# 1762
	addi	x2, x2, 160	# 1762
	lw		x1, -156(x2)	# 1762
	fadd	f2, f0, f21	# 1762
	fmul	f1, f1, f2	# 1762
	fadd	f2, f0, f19	# 1762
	fdiv	f1, f1, f2	# 1762
	jal		x0, fle_cont.32326	# 125
fle_else.32327:
	fadd	f1, f0, f20	# 1758
fle_cont.32326:
	flw		f2, -60(x2)	# 139
	fsw		f1, -156(x2)	# 139
	fle		x31, f2, f1	# 139
	beq		x31, x0, fle_else.32330	# 139
	lw		x29, -56(x2)	# 139
	sw		x1, -160(x2)	# 139
	addi	x2, x2, -164	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 164	# 139
	lw		x1, -160(x2)	# 139
	lw		x29, -52(x2)	# 139
	sw		x1, -160(x2)	# 139
	addi	x2, x2, -164	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 164	# 139
	lw		x1, -160(x2)	# 139
	jal		x0, fle_cont.32329	# 139
fle_else.32330:
	lw		x29, -56(x2)	# 140
	sw		x1, -160(x2)	# 140
	addi	x2, x2, -164	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 164	# 140
	lw		x1, -160(x2)	# 140
	lw		x5, -64(x2)	# 140
	sub		x4, x4, x5	# 140
	lw		x29, -52(x2)	# 140
	sw		x1, -160(x2)	# 140
	addi	x2, x2, -164	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 164	# 140
	lw		x1, -160(x2)	# 140
fle_cont.32329:
	flw		f2, -156(x2)	# 1764
	fsub	f1, f2, f1	# 1764
	lw		x4, -64(x2)	# 1766
	mul		x5, x30, x4	# 1766
	addi	x5, x5, 60552	# 1766
	flw		f2, 0(x5)	# 1766
	lw		x5, -140(x2)	# 443
	lw		x6, 20(x5)	# 443
	mul		x7, x30, x4	# 448
	add		x6, x6, x7	# 448
	flw		f3, 0(x6)	# 448
	fsub	f2, f2, f3	# 1766
	lw		x6, 16(x5)	# 403
	mul		x7, x30, x4	# 408
	add		x6, x6, x7	# 408
	flw		f3, 0(x6)	# 408
	fsqrt	f3, f3	# 1766
	fmul	f2, f2, f3	# 1766
	flw		f3, -60(x2)	# 124
	flw		f4, -152(x2)	# 124
	fle		x31, f4, f3	# 124
	beq		x31, x0, fle_else.32332	# 124
	fsub	f5, f0, f4	# 124
	jal		x0, fle_cont.32331	# 124
fle_else.32332:
	fadd	f5, f0, f4	# 124
fle_cont.32331:
	flw		f6, -148(x2)	# 125
	fsw		f1, -160(x2)	# 125
	fle		x31, f6, f5	# 125
	beq		x31, x0, fle_else.32334	# 125
	fdiv	f2, f2, f4	# 1771
	fle		x31, f2, f3	# 124
	beq		x31, x0, fle_cont.32335	# 124
	fsub	f2, f0, f2	# 124
fle_cont.32335:
	lw		x29, -32(x2)	# 1772
	fadd	f1, f0, f2
	sw		x1, -164(x2)	# 1772
	addi	x2, x2, -168	# 1772
	lw		x31, 0(x29)	# 1772
	jalr	x1, x31, 0	# 1772
	addi	x2, x2, 168	# 1772
	lw		x1, -164(x2)	# 1772
	fadd	f2, f0, f21	# 1772
	fmul	f1, f1, f2	# 1772
	fadd	f2, f0, f19	# 1772
	fdiv	f1, f1, f2	# 1772
	jal		x0, fle_cont.32333	# 125
fle_else.32334:
	fadd	f1, f0, f20	# 1769
fle_cont.32333:
	flw		f2, -60(x2)	# 139
	fsw		f1, -164(x2)	# 139
	fle		x31, f2, f1	# 139
	beq		x31, x0, fle_else.32337	# 139
	lw		x29, -56(x2)	# 139
	sw		x1, -168(x2)	# 139
	addi	x2, x2, -172	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 172	# 139
	lw		x1, -168(x2)	# 139
	lw		x29, -52(x2)	# 139
	sw		x1, -168(x2)	# 139
	addi	x2, x2, -172	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 172	# 139
	lw		x1, -168(x2)	# 139
	jal		x0, fle_cont.32336	# 139
fle_else.32337:
	lw		x29, -56(x2)	# 140
	sw		x1, -168(x2)	# 140
	addi	x2, x2, -172	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 172	# 140
	lw		x1, -168(x2)	# 140
	lw		x5, -64(x2)	# 140
	sub		x4, x4, x5	# 140
	lw		x29, -52(x2)	# 140
	sw		x1, -168(x2)	# 140
	addi	x2, x2, -172	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 172	# 140
	lw		x1, -168(x2)	# 140
fle_cont.32336:
	flw		f2, -164(x2)	# 1774
	fsub	f1, f2, f1	# 1774
	lui		x4, %hi(l.27123)	# 1775
	ori		x4, x0, %lo(l.27123)	# 1775
	flw		f2, 0(x4)	# 1775
	fadd	f3, f0, f17	# 1775
	flw		f4, -160(x2)	# 1775
	fsub	f4, f3, f4	# 1775
	fmul	f4, f4, f4	# 127
	fsub	f2, f2, f4	# 1775
	fsub	f1, f3, f1	# 1775
	fmul	f1, f1, f1	# 127
	fsub	f1, f2, f1	# 1775
	flw		f2, -60(x2)	# 122
	fle		x31, f2, f1	# 122
	beq		x31, x0, fle_else.32339	# 122
	jal		x0, fle_cont.32338	# 122
fle_else.32339:
	fadd	f1, f0, f2	# 1776
fle_cont.32338:
	flw		f3, -48(x2)	# 1777
	fmul	f1, f3, f1	# 1777
	fadd	f3, f0, f27	# 1777
	fdiv	f1, f1, f3	# 1777
	lw		x4, -16(x2)	# 1777
	mul		x5, x30, x4	# 1777
	addi	x5, x5, 60580	# 1777
	fsw		f1, 0(x5)	# 1777
beq_cont.32322:
	jal		x0, beq_cont.32320	# 1740
beq.32321:
	mul		x7, x30, x4	# 1743
	addi	x7, x7, 60552	# 1743
	flw		f1, 0(x7)	# 1743
	lw		x7, 20(x5)	# 433
	mul		x8, x30, x4	# 438
	add		x7, x7, x8	# 438
	flw		f2, 0(x7)	# 438
	fsub	f1, f1, f2	# 1743
	mul		x7, x30, x10	# 1744
	addi	x7, x7, 60552	# 1744
	flw		f2, 0(x7)	# 1744
	lw		x7, 20(x5)	# 453
	mul		x8, x30, x10	# 458
	add		x7, x7, x8	# 458
	flw		f3, 0(x7)	# 458
	fsub	f2, f2, f3	# 1744
	fmul	f1, f1, f1	# 127
	fmul	f2, f2, f2	# 127
	fadd	f1, f1, f2	# 1745
	fsqrt	f1, f1	# 1745
	fadd	f2, f0, f22	# 1745
	fdiv	f1, f1, f2	# 1745
	flw		f2, -60(x2)	# 139
	fsw		f1, -168(x2)	# 139
	fle		x31, f2, f1	# 139
	beq		x31, x0, fle_else.32341	# 139
	lw		x29, -56(x2)	# 139
	sw		x1, -172(x2)	# 139
	addi	x2, x2, -176	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 176	# 139
	lw		x1, -172(x2)	# 139
	lw		x29, -52(x2)	# 139
	sw		x1, -172(x2)	# 139
	addi	x2, x2, -176	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 176	# 139
	lw		x1, -172(x2)	# 139
	jal		x0, fle_cont.32340	# 139
fle_else.32341:
	lw		x29, -56(x2)	# 140
	sw		x1, -172(x2)	# 140
	addi	x2, x2, -176	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 176	# 140
	lw		x1, -172(x2)	# 140
	lw		x5, -64(x2)	# 140
	sub		x4, x4, x5	# 140
	lw		x29, -52(x2)	# 140
	sw		x1, -172(x2)	# 140
	addi	x2, x2, -176	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 176	# 140
	lw		x1, -172(x2)	# 140
fle_cont.32340:
	flw		f2, -168(x2)	# 1746
	fsub	f1, f2, f1	# 1746
	fadd	f2, f0, f19	# 1746
	fmul	f1, f1, f2	# 1746
	lw		x29, -36(x2)	# 1747
	sw		x1, -172(x2)	# 1747
	addi	x2, x2, -176	# 1747
	lw		x31, 0(x29)	# 1747
	jalr	x1, x31, 0	# 1747
	addi	x2, x2, 176	# 1747
	lw		x1, -172(x2)	# 1747
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1748
	fmul	f3, f1, f2	# 1748
	lw		x4, -64(x2)	# 1748
	mul		x5, x30, x4	# 1748
	addi	x5, x5, 60580	# 1748
	fsw		f3, 0(x5)	# 1748
	fadd	f3, f0, f16	# 1749
	fsub	f1, f3, f1	# 1749
	fmul	f1, f1, f2	# 1749
	lw		x5, -16(x2)	# 1749
	mul		x6, x30, x5	# 1749
	addi	x6, x6, 60580	# 1749
	fsw		f1, 0(x6)	# 1749
beq_cont.32320:
	jal		x0, beq_cont.32318	# 1733
beq.32319:
	mul		x7, x30, x9	# 1736
	addi	x7, x7, 60552	# 1736
	flw		f1, 0(x7)	# 1736
	fadd	f2, f0, f26	# 1736
	fmul	f1, f1, f2	# 1736
	lw		x29, -44(x2)	# 1736
	sw		x1, -172(x2)	# 1736
	addi	x2, x2, -176	# 1736
	lw		x31, 0(x29)	# 1736
	jalr	x1, x31, 0	# 1736
	addi	x2, x2, 176	# 1736
	lw		x1, -172(x2)	# 1736
	fmul	f1, f1, f1	# 127
	flw		f2, -48(x2)	# 1737
	fmul	f3, f2, f1	# 1737
	lw		x4, -72(x2)	# 1737
	mul		x5, x30, x4	# 1737
	addi	x5, x5, 60580	# 1737
	fsw		f3, 0(x5)	# 1737
	fadd	f3, f0, f16	# 1738
	fsub	f1, f3, f1	# 1738
	fmul	f1, f2, f1	# 1738
	lw		x5, -64(x2)	# 1738
	mul		x6, x30, x5	# 1738
	addi	x6, x6, 60580	# 1738
	fsw		f1, 0(x6)	# 1738
beq_cont.32318:
	jal		x0, beq_cont.32316	# 1715
beq.32317:
	mul		x7, x30, x4	# 1718
	addi	x7, x7, 60552	# 1718
	flw		f1, 0(x7)	# 1718
	lw		x7, 20(x5)	# 433
	mul		x8, x30, x4	# 438
	add		x7, x7, x8	# 438
	flw		f2, 0(x7)	# 438
	fsub	f1, f1, f2	# 1718
	fadd	f2, f0, f28	# 1720
	fmul	f3, f1, f2	# 1720
	flw		f4, -60(x2)	# 139
	fsw		f2, -172(x2)	# 139
	fsw		f1, -176(x2)	# 139
	fle		x31, f4, f3	# 139
	beq		x31, x0, fle_else.32343	# 139
	lw		x29, -56(x2)	# 139
	fadd	f1, f0, f3
	sw		x1, -180(x2)	# 139
	addi	x2, x2, -184	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 184	# 139
	lw		x1, -180(x2)	# 139
	lw		x29, -52(x2)	# 139
	sw		x1, -180(x2)	# 139
	addi	x2, x2, -184	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 184	# 139
	lw		x1, -180(x2)	# 139
	jal		x0, fle_cont.32342	# 139
fle_else.32343:
	lw		x29, -56(x2)	# 140
	fadd	f1, f0, f3
	sw		x1, -180(x2)	# 140
	addi	x2, x2, -184	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 184	# 140
	lw		x1, -180(x2)	# 140
	lw		x5, -64(x2)	# 140
	sub		x4, x4, x5	# 140
	lw		x29, -52(x2)	# 140
	sw		x1, -180(x2)	# 140
	addi	x2, x2, -184	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 184	# 140
	lw		x1, -180(x2)	# 140
fle_cont.32342:
	fadd	f2, f0, f29	# 1720
	fmul	f1, f1, f2	# 1720
	flw		f3, -176(x2)	# 1721
	fsub	f1, f3, f1	# 1721
	fadd	f3, f0, f22	# 1721
	lw		x4, -16(x2)	# 1723
	mul		x5, x30, x4	# 1723
	addi	x5, x5, 60552	# 1723
	flw		f4, 0(x5)	# 1723
	lw		x5, -140(x2)	# 453
	lw		x6, 20(x5)	# 453
	mul		x7, x30, x4	# 458
	add		x6, x6, x7	# 458
	flw		f5, 0(x6)	# 458
	fsub	f4, f4, f5	# 1723
	flw		f5, -172(x2)	# 1725
	fmul	f5, f4, f5	# 1725
	flw		f6, -60(x2)	# 139
	fsw		f1, -180(x2)	# 139
	fsw		f3, -184(x2)	# 139
	fsw		f4, -188(x2)	# 139
	fsw		f2, -192(x2)	# 139
	fle		x31, f6, f5	# 139
	beq		x31, x0, fle_else.32345	# 139
	lw		x29, -56(x2)	# 139
	fadd	f1, f0, f5
	sw		x1, -196(x2)	# 139
	addi	x2, x2, -200	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 200	# 139
	lw		x1, -196(x2)	# 139
	lw		x29, -52(x2)	# 139
	sw		x1, -196(x2)	# 139
	addi	x2, x2, -200	# 139
	lw		x31, 0(x29)	# 139
	jalr	x1, x31, 0	# 139
	addi	x2, x2, 200	# 139
	lw		x1, -196(x2)	# 139
	jal		x0, fle_cont.32344	# 139
fle_else.32345:
	lw		x29, -56(x2)	# 140
	fadd	f1, f0, f5
	sw		x1, -196(x2)	# 140
	addi	x2, x2, -200	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 200	# 140
	lw		x1, -196(x2)	# 140
	lw		x5, -64(x2)	# 140
	sub		x4, x4, x5	# 140
	lw		x29, -52(x2)	# 140
	sw		x1, -196(x2)	# 140
	addi	x2, x2, -200	# 140
	lw		x31, 0(x29)	# 140
	jalr	x1, x31, 0	# 140
	addi	x2, x2, 200	# 140
	lw		x1, -196(x2)	# 140
fle_cont.32344:
	flw		f2, -192(x2)	# 1725
	fmul	f1, f1, f2	# 1725
	flw		f2, -188(x2)	# 1726
	fsub	f1, f2, f1	# 1726
	flw		f2, -180(x2)	# 125
	flw		f3, -184(x2)	# 125
	fle		x31, f3, f2	# 125
	beq		x31, x0, fle_else.32347	# 125
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32349	# 125
	flw		f1, -48(x2)	# 1731
	jal		x0, fle_cont.32348	# 125
fle_else.32349:
	flw		f1, -60(x2)	# 1731
fle_cont.32348:
	jal		x0, fle_cont.32346	# 125
fle_else.32347:
	fle		x31, f3, f1	# 125
	beq		x31, x0, fle_else.32351	# 125
	flw		f1, -60(x2)	# 1730
	jal		x0, fle_cont.32350	# 125
fle_else.32351:
	flw		f1, -48(x2)	# 1730
fle_cont.32350:
fle_cont.32346:
	lw		x4, -64(x2)	# 1728
	mul		x5, x30, x4	# 1728
	addi	x5, x5, 60580	# 1728
	fsw		f1, 0(x5)	# 1728
beq_cont.32316:
	addi	x4, x0, 0	# 1935
	addi	x5, x0, 0	# 1935
	mul		x5, x30, x5	# 1935
	addi	x5, x5, 60536	# 1935
	lw		x5, 0(x5)	# 1935
	lw		x29, -28(x2)	# 1935
	sw		x1, -196(x2)	# 1935
	addi	x2, x2, -200	# 1935
	lw		x31, 0(x29)	# 1935
	jalr	x1, x31, 0	# 1935
	addi	x2, x2, 200	# 1935
	lw		x1, -196(x2)	# 1935
	lw		x5, -144(x2)	# 1935
	beq		x4, x5, beq.32353	# 1935
	jal		x0, beq_cont.32352	# 1935
beq.32353:
	lw		x4, -72(x2)	# 294
	mul		x5, x30, x4	# 294
	addi	x5, x5, 60568	# 294
	flw		f1, 0(x5)	# 294
	mul		x5, x30, x4	# 294
	addi	x5, x5, 60312	# 294
	flw		f2, 0(x5)	# 294
	fmul	f1, f1, f2	# 294
	lw		x5, -64(x2)	# 294
	mul		x6, x30, x5	# 294
	addi	x6, x6, 60568	# 294
	flw		f2, 0(x6)	# 294
	mul		x6, x30, x5	# 294
	addi	x6, x6, 60312	# 294
	flw		f3, 0(x6)	# 294
	fmul	f2, f2, f3	# 294
	fadd	f1, f1, f2	# 294
	lw		x6, -16(x2)	# 294
	mul		x7, x30, x6	# 294
	addi	x7, x7, 60568	# 294
	flw		f2, 0(x7)	# 294
	mul		x7, x30, x6	# 294
	addi	x7, x7, 60312	# 294
	flw		f3, 0(x7)	# 294
	fmul	f2, f2, f3	# 294
	fadd	f1, f1, f2	# 294
	fsub	f1, f0, f1	# 123
	flw		f2, -60(x2)	# 121
	fle		x31, f1, f2	# 121
	beq		x31, x0, fle_cont.32354	# 121
	fadd	f1, f0, f0	# 1937
fle_cont.32354:
	flw		f2, -132(x2)	# 1938
	fmul	f1, f2, f1	# 1938
	lw		x7, -140(x2)	# 463
	lw		x7, 28(x7)	# 463
	mul		x8, x30, x4	# 468
	add		x7, x7, x8	# 468
	flw		f2, 0(x7)	# 468
	fmul	f1, f1, f2	# 1938
	mul		x7, x30, x4	# 304
	addi	x7, x7, 60592	# 304
	flw		f2, 0(x7)	# 304
	mul		x7, x30, x4	# 304
	addi	x7, x7, 60580	# 304
	flw		f3, 0(x7)	# 304
	fmul	f3, f1, f3	# 304
	fadd	f2, f2, f3	# 304
	mul		x4, x30, x4	# 304
	addi	x4, x4, 60592	# 304
	fsw		f2, 0(x4)	# 304
	mul		x4, x30, x5	# 305
	addi	x4, x4, 60592	# 305
	flw		f2, 0(x4)	# 305
	mul		x4, x30, x5	# 305
	addi	x4, x4, 60580	# 305
	flw		f3, 0(x4)	# 305
	fmul	f3, f1, f3	# 305
	fadd	f2, f2, f3	# 305
	mul		x4, x30, x5	# 305
	addi	x4, x4, 60592	# 305
	fsw		f2, 0(x4)	# 305
	mul		x4, x30, x6	# 306
	addi	x4, x4, 60592	# 306
	flw		f2, 0(x4)	# 306
	mul		x4, x30, x6	# 306
	addi	x4, x4, 60580	# 306
	flw		f3, 0(x4)	# 306
	fmul	f1, f1, f3	# 306
	fadd	f1, f2, f1	# 306
	mul		x4, x30, x6	# 306
	addi	x4, x4, 60592	# 306
	fsw		f1, 0(x4)	# 306
beq_cont.32352:
beq_cont.32301:
fle_cont.32237:
	lw		x4, -16(x2)	# 1956
	lw		x5, -20(x2)	# 1956
	sub		x7, x5, x4	# 1956
	lw		x4, -8(x2)	# 1956
	lw		x5, -4(x2)	# 1956
	lw		x6, 0(x2)	# 1956
	lw		x29, -12(x2)	# 1956
	lw		x31, 0(x29)	# 1956
	jalr	x0, x31, 0	# 1956
do_without_neighbors.2909.17785:
	lw		x6, 24(x29)	# 2037
	lw		x7, 20(x29)	# 2037
	lw		x8, 16(x29)	# 2037
	lw		x9, 12(x29)	# 2037
	lw		x10, 8(x29)	# 2037
	lw		x11, 4(x29)	# 2037
	addi	x12, x0, 4	# 2037
	ble		x5, x12, ble.32355	# 2037
	jalr	x0, x1, 0	# 2047
ble.32355:
	lw		x12, 8(x4)	# 579
	mul		x13, x30, x5	# 2040
	add		x12, x12, x13	# 2040
	lw		x12, 0(x12)	# 2040
	ble		x10, x12, ble.32357	# 2040
	jalr	x0, x1, 0	# 2046
ble.32357:
	lw		x12, 12(x4)	# 586
	mul		x13, x30, x5	# 2042
	add		x12, x12, x13	# 2042
	lw		x12, 0(x12)	# 2042
	sw		x4, 0(x2)	# 2042
	sw		x29, -4(x2)	# 2042
	sw		x11, -8(x2)	# 2042
	sw		x5, -12(x2)	# 2042
	beq		x12, x10, beq_cont.32359	# 2042
	lw		x12, 20(x4)	# 600
	lw		x13, 28(x4)	# 630
	lw		x14, 4(x4)	# 571
	lw		x15, 16(x4)	# 593
	mul		x16, x30, x5	# 2004
	add		x12, x12, x16	# 2004
	lw		x12, 0(x12)	# 2004
	mul		x16, x30, x10	# 261
	add		x16, x12, x16	# 261
	flw		f1, 0(x16)	# 261
	mul		x16, x30, x10	# 261
	addi	x16, x16, 60592	# 261
	fsw		f1, 0(x16)	# 261
	mul		x16, x30, x11	# 262
	add		x16, x12, x16	# 262
	flw		f1, 0(x16)	# 262
	mul		x16, x30, x11	# 262
	addi	x16, x16, 60592	# 262
	fsw		f1, 0(x16)	# 262
	mul		x16, x30, x8	# 263
	add		x12, x12, x16	# 263
	flw		f1, 0(x12)	# 263
	mul		x12, x30, x8	# 263
	addi	x12, x12, 60592	# 263
	fsw		f1, 0(x12)	# 263
	lw		x12, 24(x4)	# 616
	mul		x16, x30, x10	# 618
	add		x12, x12, x16	# 618
	lw		x12, 0(x12)	# 618
	mul		x16, x30, x5	# 2007
	add		x13, x13, x16	# 2007
	lw		x13, 0(x13)	# 2007
	mul		x16, x30, x5	# 2008
	add		x14, x14, x16	# 2008
	lw		x14, 0(x14)	# 2008
	sw		x15, -16(x2)	# 1973
	sw		x9, -20(x2)	# 1973
	sw		x13, -24(x2)	# 1973
	sw		x7, -28(x2)	# 1973
	sw		x6, -32(x2)	# 1973
	sw		x8, -36(x2)	# 1973
	sw		x14, -40(x2)	# 1973
	sw		x10, -44(x2)	# 1973
	sw		x12, -48(x2)	# 1973
	beq		x12, x10, beq_cont.32360	# 1973
	addi	x16, x0, 0	# 1974
	mul		x16, x30, x16	# 1974
	addi	x16, x16, 60716	# 1974
	lw		x16, 0(x16)	# 1974
	mul		x17, x30, x10	# 261
	add		x17, x14, x17	# 261
	flw		f1, 0(x17)	# 261
	mul		x17, x30, x10	# 261
	addi	x17, x17, 60648	# 261
	fsw		f1, 0(x17)	# 261
	mul		x17, x30, x11	# 262
	add		x17, x14, x17	# 262
	flw		f1, 0(x17)	# 262
	mul		x17, x30, x11	# 262
	addi	x17, x17, 60648	# 262
	fsw		f1, 0(x17)	# 262
	mul		x17, x30, x8	# 263
	add		x17, x14, x17	# 263
	flw		f1, 0(x17)	# 263
	mul		x17, x30, x8	# 263
	addi	x17, x17, 60648	# 263
	fsw		f1, 0(x17)	# 263
	mul		x17, x30, x10	# 1317
	addi	x17, x17, 60000	# 1317
	lw		x17, 0(x17)	# 1317
	sub		x17, x17, x11	# 1317
	sw		x16, -52(x2)	# 1317
	addi	x5, x17, 0
	addi	x4, x14, 0
	addi	x29, x6, 0
	sw		x1, -56(x2)	# 1317
	addi	x2, x2, -60	# 1317
	lw		x31, 0(x29)	# 1317
	jalr	x1, x31, 0	# 1317
	addi	x2, x2, 60	# 1317
	lw		x1, -56(x2)	# 1317
	addi	x7, x0, 118	# 1966
	lw		x4, -52(x2)	# 1966
	lw		x5, -24(x2)	# 1966
	lw		x6, -40(x2)	# 1966
	lw		x29, -28(x2)	# 1966
	sw		x1, -56(x2)	# 1966
	addi	x2, x2, -60	# 1966
	lw		x31, 0(x29)	# 1966
	jalr	x1, x31, 0	# 1966
	addi	x2, x2, 60	# 1966
	lw		x1, -56(x2)	# 1966
beq_cont.32360:
	lw		x4, -8(x2)	# 1977
	lw		x5, -48(x2)	# 1977
	beq		x5, x4, beq_cont.32361	# 1977
	addi	x6, x0, 1	# 1978
	mul		x6, x30, x6	# 1978
	addi	x6, x6, 60716	# 1978
	lw		x6, 0(x6)	# 1978
	lw		x7, -44(x2)	# 261
	mul		x8, x30, x7	# 261
	lw		x9, -40(x2)	# 261
	add		x8, x9, x8	# 261
	flw		f1, 0(x8)	# 261
	mul		x8, x30, x7	# 261
	addi	x8, x8, 60648	# 261
	fsw		f1, 0(x8)	# 261
	mul		x8, x30, x4	# 262
	add		x8, x9, x8	# 262
	flw		f1, 0(x8)	# 262
	mul		x8, x30, x4	# 262
	addi	x8, x8, 60648	# 262
	fsw		f1, 0(x8)	# 262
	lw		x8, -36(x2)	# 263
	mul		x10, x30, x8	# 263
	add		x10, x9, x10	# 263
	flw		f1, 0(x10)	# 263
	mul		x10, x30, x8	# 263
	addi	x10, x10, 60648	# 263
	fsw		f1, 0(x10)	# 263
	mul		x10, x30, x7	# 1317
	addi	x10, x10, 60000	# 1317
	lw		x10, 0(x10)	# 1317
	sub		x10, x10, x4	# 1317
	lw		x29, -32(x2)	# 1317
	sw		x6, -56(x2)	# 1317
	addi	x5, x10, 0
	addi	x4, x9, 0
	sw		x1, -60(x2)	# 1317
	addi	x2, x2, -64	# 1317
	lw		x31, 0(x29)	# 1317
	jalr	x1, x31, 0	# 1317
	addi	x2, x2, 64	# 1317
	lw		x1, -60(x2)	# 1317
	addi	x7, x0, 118	# 1966
	lw		x4, -56(x2)	# 1966
	lw		x5, -24(x2)	# 1966
	lw		x6, -40(x2)	# 1966
	lw		x29, -28(x2)	# 1966
	sw		x1, -60(x2)	# 1966
	addi	x2, x2, -64	# 1966
	lw		x31, 0(x29)	# 1966
	jalr	x1, x31, 0	# 1966
	addi	x2, x2, 64	# 1966
	lw		x1, -60(x2)	# 1966
beq_cont.32361:
	lw		x4, -36(x2)	# 1981
	lw		x5, -48(x2)	# 1981
	beq		x5, x4, beq_cont.32362	# 1981
	addi	x6, x0, 2	# 1982
	mul		x6, x30, x6	# 1982
	addi	x6, x6, 60716	# 1982
	lw		x6, 0(x6)	# 1982
	lw		x7, -44(x2)	# 261
	mul		x8, x30, x7	# 261
	lw		x9, -40(x2)	# 261
	add		x8, x9, x8	# 261
	flw		f1, 0(x8)	# 261
	mul		x8, x30, x7	# 261
	addi	x8, x8, 60648	# 261
	fsw		f1, 0(x8)	# 261
	lw		x8, -8(x2)	# 262
	mul		x10, x30, x8	# 262
	add		x10, x9, x10	# 262
	flw		f1, 0(x10)	# 262
	mul		x10, x30, x8	# 262
	addi	x10, x10, 60648	# 262
	fsw		f1, 0(x10)	# 262
	mul		x10, x30, x4	# 263
	add		x10, x9, x10	# 263
	flw		f1, 0(x10)	# 263
	mul		x10, x30, x4	# 263
	addi	x10, x10, 60648	# 263
	fsw		f1, 0(x10)	# 263
	mul		x10, x30, x7	# 1317
	addi	x10, x10, 60000	# 1317
	lw		x10, 0(x10)	# 1317
	sub		x10, x10, x8	# 1317
	lw		x29, -32(x2)	# 1317
	sw		x6, -60(x2)	# 1317
	addi	x5, x10, 0
	addi	x4, x9, 0
	sw		x1, -64(x2)	# 1317
	addi	x2, x2, -68	# 1317
	lw		x31, 0(x29)	# 1317
	jalr	x1, x31, 0	# 1317
	addi	x2, x2, 68	# 1317
	lw		x1, -64(x2)	# 1317
	addi	x7, x0, 118	# 1966
	lw		x4, -60(x2)	# 1966
	lw		x5, -24(x2)	# 1966
	lw		x6, -40(x2)	# 1966
	lw		x29, -28(x2)	# 1966
	sw		x1, -64(x2)	# 1966
	addi	x2, x2, -68	# 1966
	lw		x31, 0(x29)	# 1966
	jalr	x1, x31, 0	# 1966
	addi	x2, x2, 68	# 1966
	lw		x1, -64(x2)	# 1966
beq_cont.32362:
	lw		x4, -20(x2)	# 1985
	lw		x5, -48(x2)	# 1985
	beq		x5, x4, beq_cont.32363	# 1985
	addi	x4, x0, 3	# 1986
	mul		x4, x30, x4	# 1986
	addi	x4, x4, 60716	# 1986
	lw		x4, 0(x4)	# 1986
	lw		x6, -44(x2)	# 261
	mul		x7, x30, x6	# 261
	lw		x8, -40(x2)	# 261
	add		x7, x8, x7	# 261
	flw		f1, 0(x7)	# 261
	mul		x7, x30, x6	# 261
	addi	x7, x7, 60648	# 261
	fsw		f1, 0(x7)	# 261
	lw		x7, -8(x2)	# 262
	mul		x9, x30, x7	# 262
	add		x9, x8, x9	# 262
	flw		f1, 0(x9)	# 262
	mul		x9, x30, x7	# 262
	addi	x9, x9, 60648	# 262
	fsw		f1, 0(x9)	# 262
	lw		x9, -36(x2)	# 263
	mul		x10, x30, x9	# 263
	add		x10, x8, x10	# 263
	flw		f1, 0(x10)	# 263
	mul		x10, x30, x9	# 263
	addi	x10, x10, 60648	# 263
	fsw		f1, 0(x10)	# 263
	mul		x10, x30, x6	# 1317
	addi	x10, x10, 60000	# 1317
	lw		x10, 0(x10)	# 1317
	sub		x10, x10, x7	# 1317
	lw		x29, -32(x2)	# 1317
	sw		x4, -64(x2)	# 1317
	addi	x5, x10, 0
	addi	x4, x8, 0
	sw		x1, -68(x2)	# 1317
	addi	x2, x2, -72	# 1317
	lw		x31, 0(x29)	# 1317
	jalr	x1, x31, 0	# 1317
	addi	x2, x2, 72	# 1317
	lw		x1, -68(x2)	# 1317
	addi	x7, x0, 118	# 1966
	lw		x4, -64(x2)	# 1966
	lw		x5, -24(x2)	# 1966
	lw		x6, -40(x2)	# 1966
	lw		x29, -28(x2)	# 1966
	sw		x1, -68(x2)	# 1966
	addi	x2, x2, -72	# 1966
	lw		x31, 0(x29)	# 1966
	jalr	x1, x31, 0	# 1966
	addi	x2, x2, 72	# 1966
	lw		x1, -68(x2)	# 1966
beq_cont.32363:
	addi	x4, x0, 4	# 1989
	lw		x5, -48(x2)	# 1989
	beq		x5, x4, beq_cont.32364	# 1989
	mul		x4, x30, x4	# 1990
	addi	x4, x4, 60716	# 1990
	lw		x4, 0(x4)	# 1990
	lw		x5, -44(x2)	# 261
	mul		x6, x30, x5	# 261
	lw		x7, -40(x2)	# 261
	add		x6, x7, x6	# 261
	flw		f1, 0(x6)	# 261
	mul		x6, x30, x5	# 261
	addi	x6, x6, 60648	# 261
	fsw		f1, 0(x6)	# 261
	lw		x6, -8(x2)	# 262
	mul		x8, x30, x6	# 262
	add		x8, x7, x8	# 262
	flw		f1, 0(x8)	# 262
	mul		x8, x30, x6	# 262
	addi	x8, x8, 60648	# 262
	fsw		f1, 0(x8)	# 262
	lw		x8, -36(x2)	# 263
	mul		x9, x30, x8	# 263
	add		x9, x7, x9	# 263
	flw		f1, 0(x9)	# 263
	mul		x9, x30, x8	# 263
	addi	x9, x9, 60648	# 263
	fsw		f1, 0(x9)	# 263
	mul		x9, x30, x5	# 1317
	addi	x9, x9, 60000	# 1317
	lw		x9, 0(x9)	# 1317
	sub		x9, x9, x6	# 1317
	lw		x29, -32(x2)	# 1317
	sw		x4, -68(x2)	# 1317
	addi	x5, x9, 0
	addi	x4, x7, 0
	sw		x1, -72(x2)	# 1317
	addi	x2, x2, -76	# 1317
	lw		x31, 0(x29)	# 1317
	jalr	x1, x31, 0	# 1317
	addi	x2, x2, 76	# 1317
	lw		x1, -72(x2)	# 1317
	addi	x7, x0, 118	# 1966
	lw		x4, -68(x2)	# 1966
	lw		x5, -24(x2)	# 1966
	lw		x6, -40(x2)	# 1966
	lw		x29, -28(x2)	# 1966
	sw		x1, -72(x2)	# 1966
	addi	x2, x2, -76	# 1966
	lw		x31, 0(x29)	# 1966
	jalr	x1, x31, 0	# 1966
	addi	x2, x2, 76	# 1966
	lw		x1, -72(x2)	# 1966
beq_cont.32364:
	lw		x4, -12(x2)	# 2009
	mul		x5, x30, x4	# 2009
	lw		x6, -16(x2)	# 2009
	add		x5, x6, x5	# 2009
	lw		x5, 0(x5)	# 2009
	lw		x6, -44(x2)	# 334
	mul		x7, x30, x6	# 334
	addi	x7, x7, 60604	# 334
	flw		f1, 0(x7)	# 334
	mul		x7, x30, x6	# 334
	add		x7, x5, x7	# 334
	flw		f2, 0(x7)	# 334
	mul		x7, x30, x6	# 334
	addi	x7, x7, 60592	# 334
	flw		f3, 0(x7)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	mul		x6, x30, x6	# 334
	addi	x6, x6, 60604	# 334
	fsw		f1, 0(x6)	# 334
	lw		x6, -8(x2)	# 335
	mul		x7, x30, x6	# 335
	addi	x7, x7, 60604	# 335
	flw		f1, 0(x7)	# 335
	mul		x7, x30, x6	# 335
	add		x7, x5, x7	# 335
	flw		f2, 0(x7)	# 335
	mul		x7, x30, x6	# 335
	addi	x7, x7, 60592	# 335
	flw		f3, 0(x7)	# 335
	fmul	f2, f2, f3	# 335
	fadd	f1, f1, f2	# 335
	mul		x7, x30, x6	# 335
	addi	x7, x7, 60604	# 335
	fsw		f1, 0(x7)	# 335
	lw		x7, -36(x2)	# 336
	mul		x8, x30, x7	# 336
	addi	x8, x8, 60604	# 336
	flw		f1, 0(x8)	# 336
	mul		x8, x30, x7	# 336
	add		x5, x5, x8	# 336
	flw		f2, 0(x5)	# 336
	mul		x5, x30, x7	# 336
	addi	x5, x5, 60592	# 336
	flw		f3, 0(x5)	# 336
	fmul	f2, f2, f3	# 336
	fadd	f1, f1, f2	# 336
	mul		x5, x30, x7	# 336
	addi	x5, x5, 60604	# 336
	fsw		f1, 0(x5)	# 336
beq_cont.32359:
	lw		x4, -8(x2)	# 2045
	lw		x5, -12(x2)	# 2045
	add		x5, x5, x4	# 2045
	lw		x4, 0(x2)	# 2045
	lw		x29, -4(x2)	# 2045
	lw		x31, 0(x29)	# 2045
	jalr	x0, x31, 0	# 2045
try_exploit_neighbors.2925.17788:
	lw		x10, 16(x29)	# 2089
	lw		x11, 12(x29)	# 2089
	lw		x12, 8(x29)	# 2089
	lw		x13, 4(x29)	# 2089
	mul		x14, x30, x4	# 2089
	add		x14, x7, x14	# 2089
	lw		x14, 0(x14)	# 2089
	addi	x15, x0, 4	# 2090
	ble		x9, x15, ble.32365	# 2090
	jalr	x0, x1, 0	# 2109
ble.32365:
	lw		x15, 8(x14)	# 579
	mul		x16, x30, x9	# 2065
	add		x15, x15, x16	# 2065
	lw		x15, 0(x15)	# 2065
	ble		x12, x15, ble.32367	# 2093
	jalr	x0, x1, 0	# 2108
ble.32367:
	lw		x15, 8(x14)	# 579
	mul		x16, x30, x9	# 2065
	add		x15, x15, x16	# 2065
	lw		x15, 0(x15)	# 2065
	mul		x16, x30, x4	# 2073
	add		x16, x6, x16	# 2073
	lw		x16, 0(x16)	# 2073
	lw		x16, 8(x16)	# 579
	mul		x17, x30, x9	# 2065
	add		x16, x16, x17	# 2065
	lw		x16, 0(x16)	# 2065
	beq		x16, x15, beq.32370	# 2073
	addi	x15, x0, 0	# 2081
	jal		x0, beq_cont.32369	# 2073
beq.32370:
	mul		x16, x30, x4	# 2074
	add		x16, x8, x16	# 2074
	lw		x16, 0(x16)	# 2074
	lw		x16, 8(x16)	# 579
	mul		x17, x30, x9	# 2065
	add		x16, x16, x17	# 2065
	lw		x16, 0(x16)	# 2065
	beq		x16, x15, beq.32372	# 2074
	addi	x15, x0, 0	# 2080
	jal		x0, beq_cont.32371	# 2074
beq.32372:
	sub		x16, x4, x13	# 2075
	mul		x16, x30, x16	# 2075
	add		x16, x7, x16	# 2075
	lw		x16, 0(x16)	# 2075
	lw		x16, 8(x16)	# 579
	mul		x17, x30, x9	# 2065
	add		x16, x16, x17	# 2065
	lw		x16, 0(x16)	# 2065
	beq		x16, x15, beq.32374	# 2075
	addi	x15, x0, 0	# 2079
	jal		x0, beq_cont.32373	# 2075
beq.32374:
	add		x16, x4, x13	# 2076
	mul		x16, x30, x16	# 2076
	add		x16, x7, x16	# 2076
	lw		x16, 0(x16)	# 2076
	lw		x16, 8(x16)	# 579
	mul		x17, x30, x9	# 2065
	add		x16, x16, x17	# 2065
	lw		x16, 0(x16)	# 2065
	beq		x16, x15, beq.32376	# 2076
	addi	x15, x0, 0	# 2078
	jal		x0, beq_cont.32375	# 2076
beq.32376:
	addi	x15, x0, 1	# 2077
beq_cont.32375:
beq_cont.32373:
beq_cont.32371:
beq_cont.32369:
	beq		x15, x12, beq.32377	# 2095
	lw		x10, 12(x14)	# 586
	mul		x14, x30, x9	# 2099
	add		x10, x10, x14	# 2099
	lw		x10, 0(x10)	# 2099
	beq		x10, x12, beq_cont.32378	# 2099
	mul		x10, x30, x4	# 2018
	add		x10, x6, x10	# 2018
	lw		x10, 0(x10)	# 2018
	lw		x10, 20(x10)	# 600
	addi	x14, x0, 1	# 2019
	sub		x14, x4, x14	# 2019
	mul		x14, x30, x14	# 2019
	add		x14, x7, x14	# 2019
	lw		x14, 0(x14)	# 2019
	lw		x14, 20(x14)	# 600
	mul		x15, x30, x4	# 2020
	add		x15, x7, x15	# 2020
	lw		x15, 0(x15)	# 2020
	lw		x15, 20(x15)	# 600
	addi	x16, x4, 1	# 2021
	mul		x16, x30, x16	# 2021
	add		x16, x7, x16	# 2021
	lw		x16, 0(x16)	# 2021
	lw		x16, 20(x16)	# 600
	mul		x17, x30, x4	# 2022
	add		x17, x8, x17	# 2022
	lw		x17, 0(x17)	# 2022
	lw		x17, 20(x17)	# 600
	mul		x18, x30, x9	# 2024
	add		x10, x10, x18	# 2024
	lw		x10, 0(x10)	# 2024
	mul		x18, x30, x12	# 261
	add		x18, x10, x18	# 261
	flw		f1, 0(x18)	# 261
	mul		x18, x30, x12	# 261
	addi	x18, x18, 60592	# 261
	fsw		f1, 0(x18)	# 261
	mul		x18, x30, x13	# 262
	add		x18, x10, x18	# 262
	flw		f1, 0(x18)	# 262
	mul		x18, x30, x13	# 262
	addi	x18, x18, 60592	# 262
	fsw		f1, 0(x18)	# 262
	mul		x18, x30, x11	# 263
	add		x10, x10, x18	# 263
	flw		f1, 0(x10)	# 263
	mul		x10, x30, x11	# 263
	addi	x10, x10, 60592	# 263
	fsw		f1, 0(x10)	# 263
	mul		x10, x30, x9	# 2025
	add		x10, x14, x10	# 2025
	lw		x10, 0(x10)	# 2025
	mul		x14, x30, x12	# 311
	addi	x14, x14, 60592	# 311
	flw		f1, 0(x14)	# 311
	mul		x14, x30, x12	# 311
	add		x14, x10, x14	# 311
	flw		f2, 0(x14)	# 311
	fadd	f1, f1, f2	# 311
	mul		x14, x30, x12	# 311
	addi	x14, x14, 60592	# 311
	fsw		f1, 0(x14)	# 311
	mul		x14, x30, x13	# 312
	addi	x14, x14, 60592	# 312
	flw		f1, 0(x14)	# 312
	mul		x14, x30, x13	# 312
	add		x14, x10, x14	# 312
	flw		f2, 0(x14)	# 312
	fadd	f1, f1, f2	# 312
	mul		x14, x30, x13	# 312
	addi	x14, x14, 60592	# 312
	fsw		f1, 0(x14)	# 312
	mul		x14, x30, x11	# 313
	addi	x14, x14, 60592	# 313
	flw		f1, 0(x14)	# 313
	mul		x14, x30, x11	# 313
	add		x10, x10, x14	# 313
	flw		f2, 0(x10)	# 313
	fadd	f1, f1, f2	# 313
	mul		x10, x30, x11	# 313
	addi	x10, x10, 60592	# 313
	fsw		f1, 0(x10)	# 313
	mul		x10, x30, x9	# 2026
	add		x10, x15, x10	# 2026
	lw		x10, 0(x10)	# 2026
	mul		x14, x30, x12	# 311
	addi	x14, x14, 60592	# 311
	flw		f1, 0(x14)	# 311
	mul		x14, x30, x12	# 311
	add		x14, x10, x14	# 311
	flw		f2, 0(x14)	# 311
	fadd	f1, f1, f2	# 311
	mul		x14, x30, x12	# 311
	addi	x14, x14, 60592	# 311
	fsw		f1, 0(x14)	# 311
	mul		x14, x30, x13	# 312
	addi	x14, x14, 60592	# 312
	flw		f1, 0(x14)	# 312
	mul		x14, x30, x13	# 312
	add		x14, x10, x14	# 312
	flw		f2, 0(x14)	# 312
	fadd	f1, f1, f2	# 312
	mul		x14, x30, x13	# 312
	addi	x14, x14, 60592	# 312
	fsw		f1, 0(x14)	# 312
	mul		x14, x30, x11	# 313
	addi	x14, x14, 60592	# 313
	flw		f1, 0(x14)	# 313
	mul		x14, x30, x11	# 313
	add		x10, x10, x14	# 313
	flw		f2, 0(x10)	# 313
	fadd	f1, f1, f2	# 313
	mul		x10, x30, x11	# 313
	addi	x10, x10, 60592	# 313
	fsw		f1, 0(x10)	# 313
	mul		x10, x30, x9	# 2027
	add		x10, x16, x10	# 2027
	lw		x10, 0(x10)	# 2027
	mul		x14, x30, x12	# 311
	addi	x14, x14, 60592	# 311
	flw		f1, 0(x14)	# 311
	mul		x14, x30, x12	# 311
	add		x14, x10, x14	# 311
	flw		f2, 0(x14)	# 311
	fadd	f1, f1, f2	# 311
	mul		x14, x30, x12	# 311
	addi	x14, x14, 60592	# 311
	fsw		f1, 0(x14)	# 311
	mul		x14, x30, x13	# 312
	addi	x14, x14, 60592	# 312
	flw		f1, 0(x14)	# 312
	mul		x14, x30, x13	# 312
	add		x14, x10, x14	# 312
	flw		f2, 0(x14)	# 312
	fadd	f1, f1, f2	# 312
	mul		x14, x30, x13	# 312
	addi	x14, x14, 60592	# 312
	fsw		f1, 0(x14)	# 312
	mul		x14, x30, x11	# 313
	addi	x14, x14, 60592	# 313
	flw		f1, 0(x14)	# 313
	mul		x14, x30, x11	# 313
	add		x10, x10, x14	# 313
	flw		f2, 0(x10)	# 313
	fadd	f1, f1, f2	# 313
	mul		x10, x30, x11	# 313
	addi	x10, x10, 60592	# 313
	fsw		f1, 0(x10)	# 313
	mul		x10, x30, x9	# 2028
	add		x10, x17, x10	# 2028
	lw		x10, 0(x10)	# 2028
	mul		x14, x30, x12	# 311
	addi	x14, x14, 60592	# 311
	flw		f1, 0(x14)	# 311
	mul		x14, x30, x12	# 311
	add		x14, x10, x14	# 311
	flw		f2, 0(x14)	# 311
	fadd	f1, f1, f2	# 311
	mul		x14, x30, x12	# 311
	addi	x14, x14, 60592	# 311
	fsw		f1, 0(x14)	# 311
	mul		x14, x30, x13	# 312
	addi	x14, x14, 60592	# 312
	flw		f1, 0(x14)	# 312
	mul		x14, x30, x13	# 312
	add		x14, x10, x14	# 312
	flw		f2, 0(x14)	# 312
	fadd	f1, f1, f2	# 312
	mul		x14, x30, x13	# 312
	addi	x14, x14, 60592	# 312
	fsw		f1, 0(x14)	# 312
	mul		x14, x30, x11	# 313
	addi	x14, x14, 60592	# 313
	flw		f1, 0(x14)	# 313
	mul		x14, x30, x11	# 313
	add		x10, x10, x14	# 313
	flw		f2, 0(x10)	# 313
	fadd	f1, f1, f2	# 313
	mul		x10, x30, x11	# 313
	addi	x10, x10, 60592	# 313
	fsw		f1, 0(x10)	# 313
	mul		x10, x30, x4	# 2030
	add		x10, x7, x10	# 2030
	lw		x10, 0(x10)	# 2030
	lw		x10, 16(x10)	# 593
	mul		x14, x30, x9	# 2031
	add		x10, x10, x14	# 2031
	lw		x10, 0(x10)	# 2031
	mul		x14, x30, x12	# 334
	addi	x14, x14, 60604	# 334
	flw		f1, 0(x14)	# 334
	mul		x14, x30, x12	# 334
	add		x14, x10, x14	# 334
	flw		f2, 0(x14)	# 334
	mul		x14, x30, x12	# 334
	addi	x14, x14, 60592	# 334
	flw		f3, 0(x14)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	mul		x12, x30, x12	# 334
	addi	x12, x12, 60604	# 334
	fsw		f1, 0(x12)	# 334
	mul		x12, x30, x13	# 335
	addi	x12, x12, 60604	# 335
	flw		f1, 0(x12)	# 335
	mul		x12, x30, x13	# 335
	add		x12, x10, x12	# 335
	flw		f2, 0(x12)	# 335
	mul		x12, x30, x13	# 335
	addi	x12, x12, 60592	# 335
	flw		f3, 0(x12)	# 335
	fmul	f2, f2, f3	# 335
	fadd	f1, f1, f2	# 335
	mul		x12, x30, x13	# 335
	addi	x12, x12, 60604	# 335
	fsw		f1, 0(x12)	# 335
	mul		x12, x30, x11	# 336
	addi	x12, x12, 60604	# 336
	flw		f1, 0(x12)	# 336
	mul		x12, x30, x11	# 336
	add		x10, x10, x12	# 336
	flw		f2, 0(x10)	# 336
	mul		x10, x30, x11	# 336
	addi	x10, x10, 60592	# 336
	flw		f3, 0(x10)	# 336
	fmul	f2, f2, f3	# 336
	fadd	f1, f1, f2	# 336
	mul		x10, x30, x11	# 336
	addi	x10, x10, 60604	# 336
	fsw		f1, 0(x10)	# 336
beq_cont.32378:
	add		x9, x9, x13	# 2104
	lw		x31, 0(x29)	# 2104
	jalr	x0, x31, 0	# 2104
beq.32377:
	addi	x5, x9, 0
	addi	x4, x14, 0
	addi	x29, x10, 0
	lw		x31, 0(x29)	# 2107
	jalr	x0, x31, 0	# 2107
pretrace_diffuse_rays.2940.17795:
	lw		x6, 20(x29)	# 2165
	lw		x7, 16(x29)	# 2165
	lw		x8, 12(x29)	# 2165
	lw		x9, 8(x29)	# 2165
	lw		x10, 4(x29)	# 2165
	addi	x11, x0, 4	# 2165
	ble		x5, x11, ble.32379	# 2165
	jalr	x0, x1, 0	# 2189
ble.32379:
	lw		x11, 8(x4)	# 579
	mul		x12, x30, x5	# 2065
	add		x11, x11, x12	# 2065
	lw		x11, 0(x11)	# 2065
	ble		x9, x11, ble.32381	# 2169
	jalr	x0, x1, 0	# 2188
ble.32381:
	lw		x11, 12(x4)	# 586
	mul		x12, x30, x5	# 2172
	add		x11, x11, x12	# 2172
	lw		x11, 0(x11)	# 2172
	sw		x29, 0(x2)	# 2172
	sw		x10, -4(x2)	# 2172
	sw		x5, -8(x2)	# 2172
	beq		x11, x9, beq_cont.32383	# 2172
	lw		x11, 24(x4)	# 616
	addi	x12, x0, 0	# 618
	mul		x12, x30, x12	# 618
	add		x11, x11, x12	# 618
	lw		x11, 0(x11)	# 618
	fadd	f1, f0, f0	# 256
	mul		x12, x30, x9	# 249
	addi	x12, x12, 60592	# 249
	fsw		f1, 0(x12)	# 249
	mul		x12, x30, x10	# 250
	addi	x12, x12, 60592	# 250
	fsw		f1, 0(x12)	# 250
	mul		x8, x30, x8	# 251
	addi	x8, x8, 60592	# 251
	fsw		f1, 0(x8)	# 251
	lw		x8, 28(x4)	# 630
	lw		x12, 4(x4)	# 571
	mul		x11, x30, x11	# 2181
	addi	x11, x11, 60716	# 2181
	lw		x11, 0(x11)	# 2181
	mul		x13, x30, x5	# 2182
	add		x8, x8, x13	# 2182
	lw		x8, 0(x8)	# 2182
	mul		x13, x30, x5	# 2183
	add		x12, x12, x13	# 2183
	lw		x12, 0(x12)	# 2183
	addi	x13, x0, 0	# 261
	addi	x14, x0, 0	# 261
	mul		x14, x30, x14	# 261
	add		x14, x12, x14	# 261
	flw		f1, 0(x14)	# 261
	mul		x13, x30, x13	# 261
	addi	x13, x13, 60648	# 261
	fsw		f1, 0(x13)	# 261
	addi	x13, x0, 1	# 262
	addi	x14, x0, 1	# 262
	mul		x14, x30, x14	# 262
	add		x14, x12, x14	# 262
	flw		f1, 0(x14)	# 262
	mul		x13, x30, x13	# 262
	addi	x13, x13, 60648	# 262
	fsw		f1, 0(x13)	# 262
	addi	x13, x0, 2	# 263
	mul		x14, x30, x13	# 263
	add		x14, x12, x14	# 263
	flw		f1, 0(x14)	# 263
	mul		x13, x30, x13	# 263
	addi	x13, x13, 60648	# 263
	fsw		f1, 0(x13)	# 263
	mul		x9, x30, x9	# 1317
	addi	x9, x9, 60000	# 1317
	lw		x9, 0(x9)	# 1317
	sub		x9, x9, x10	# 1317
	sw		x4, -12(x2)	# 1317
	sw		x12, -16(x2)	# 1317
	sw		x8, -20(x2)	# 1317
	sw		x11, -24(x2)	# 1317
	sw		x7, -28(x2)	# 1317
	addi	x5, x9, 0
	addi	x4, x12, 0
	addi	x29, x6, 0
	sw		x1, -32(x2)	# 1317
	addi	x2, x2, -36	# 1317
	lw		x31, 0(x29)	# 1317
	jalr	x1, x31, 0	# 1317
	addi	x2, x2, 36	# 1317
	lw		x1, -32(x2)	# 1317
	addi	x7, x0, 118	# 1966
	lw		x4, -24(x2)	# 1966
	lw		x5, -20(x2)	# 1966
	lw		x6, -16(x2)	# 1966
	lw		x29, -28(x2)	# 1966
	sw		x1, -32(x2)	# 1966
	addi	x2, x2, -36	# 1966
	lw		x31, 0(x29)	# 1966
	jalr	x1, x31, 0	# 1966
	addi	x2, x2, 36	# 1966
	lw		x1, -32(x2)	# 1966
	lw		x4, -12(x2)	# 600
	lw		x5, 20(x4)	# 600
	lw		x6, -8(x2)	# 2185
	mul		x7, x30, x6	# 2185
	add		x5, x5, x7	# 2185
	lw		x5, 0(x5)	# 2185
	addi	x7, x0, 0	# 261
	addi	x8, x0, 0	# 261
	mul		x8, x30, x8	# 261
	addi	x8, x8, 60592	# 261
	flw		f1, 0(x8)	# 261
	mul		x7, x30, x7	# 261
	add		x7, x5, x7	# 261
	fsw		f1, 0(x7)	# 261
	addi	x7, x0, 1	# 262
	addi	x8, x0, 1	# 262
	mul		x8, x30, x8	# 262
	addi	x8, x8, 60592	# 262
	flw		f1, 0(x8)	# 262
	mul		x7, x30, x7	# 262
	add		x7, x5, x7	# 262
	fsw		f1, 0(x7)	# 262
	addi	x7, x0, 2	# 263
	mul		x8, x30, x7	# 263
	addi	x8, x8, 60592	# 263
	flw		f1, 0(x8)	# 263
	mul		x7, x30, x7	# 263
	add		x5, x5, x7	# 263
	fsw		f1, 0(x5)	# 263
beq_cont.32383:
	lw		x5, -4(x2)	# 2187
	lw		x6, -8(x2)	# 2187
	add		x5, x6, x5	# 2187
	lw		x29, 0(x2)	# 2187
	lw		x31, 0(x29)	# 2187
	jalr	x0, x31, 0	# 2187
pretrace_pixels.2943.17798:
	lw		x7, 32(x29)	# 2195
	lw		x8, 28(x29)	# 2195
	lw		x9, 24(x29)	# 2195
	lw		x10, 20(x29)	# 2195
	lw		x11, 16(x29)	# 2195
	lw		x12, 12(x29)	# 2195
	lw		x13, 8(x29)	# 2195
	flw		f4, 4(x29)	# 2195
	ble		x12, x5, ble.32384	# 2195
	jalr	x0, x1, 0	# 2215
ble.32384:
	mul		x14, x30, x12	# 2197
	addi	x14, x14, 60632	# 2197
	flw		f5, 0(x14)	# 2197
	mul		x14, x30, x12	# 2197
	addi	x14, x14, 60624	# 2197
	lw		x14, 0(x14)	# 2197
	sub		x14, x5, x14	# 2197
	sw		x29, 0(x2)	# 2197
	sw		x10, -4(x2)	# 2197
	sw		x8, -8(x2)	# 2197
	sw		x6, -12(x2)	# 2197
	sw		x7, -16(x2)	# 2197
	sw		x4, -20(x2)	# 2197
	sw		x5, -24(x2)	# 2197
	fsw		f4, -28(x2)	# 2197
	fsw		f3, -32(x2)	# 2197
	sw		x11, -36(x2)	# 2197
	fsw		f2, -40(x2)	# 2197
	sw		x13, -44(x2)	# 2197
	fsw		f1, -48(x2)	# 2197
	sw		x12, -52(x2)	# 2197
	fsw		f5, -56(x2)	# 2197
	addi	x4, x14, 0
	addi	x29, x9, 0
	sw		x1, -60(x2)	# 2197
	addi	x2, x2, -64	# 2197
	lw		x31, 0(x29)	# 2197
	jalr	x1, x31, 0	# 2197
	addi	x2, x2, 64	# 2197
	lw		x1, -60(x2)	# 2197
	flw		f2, -56(x2)	# 2197
	fmul	f1, f2, f1	# 2197
	lw		x4, -52(x2)	# 2198
	mul		x5, x30, x4	# 2198
	addi	x5, x5, 60660	# 2198
	flw		f2, 0(x5)	# 2198
	fmul	f2, f1, f2	# 2198
	flw		f3, -48(x2)	# 2198
	fadd	f2, f2, f3	# 2198
	mul		x5, x30, x4	# 2198
	addi	x5, x5, 60696	# 2198
	fsw		f2, 0(x5)	# 2198
	lw		x5, -44(x2)	# 2199
	mul		x6, x30, x5	# 2199
	addi	x6, x6, 60660	# 2199
	flw		f2, 0(x6)	# 2199
	fmul	f2, f1, f2	# 2199
	flw		f4, -40(x2)	# 2199
	fadd	f2, f2, f4	# 2199
	mul		x6, x30, x5	# 2199
	addi	x6, x6, 60696	# 2199
	fsw		f2, 0(x6)	# 2199
	lw		x6, -36(x2)	# 2200
	mul		x7, x30, x6	# 2200
	addi	x7, x7, 60660	# 2200
	flw		f2, 0(x7)	# 2200
	fmul	f1, f1, f2	# 2200
	flw		f2, -32(x2)	# 2200
	fadd	f1, f1, f2	# 2200
	mul		x7, x30, x6	# 2200
	addi	x7, x7, 60696	# 2200
	fsw		f1, 0(x7)	# 2200
	mul		x7, x30, x4	# 285
	addi	x7, x7, 60696	# 285
	flw		f1, 0(x7)	# 285
	fmul	f1, f1, f1	# 127
	mul		x7, x30, x5	# 285
	addi	x7, x7, 60696	# 285
	flw		f5, 0(x7)	# 285
	fmul	f5, f5, f5	# 127
	fadd	f1, f1, f5	# 285
	mul		x7, x30, x6	# 285
	addi	x7, x7, 60696	# 285
	flw		f5, 0(x7)	# 285
	fmul	f5, f5, f5	# 127
	fadd	f1, f1, f5	# 285
	fsqrt	f1, f1	# 285
	flw		f5, -28(x2)	# 120
	feq		x31, f1, f5	# 120
	beq		x31, x0, feq_else.32387	# 120
	fadd	f1, f0, f16	# 286
	jal		x0, feq_cont.32386	# 120
feq_else.32387:
	fadd	f6, f0, f16	# 286
	fdiv	f1, f6, f1	# 286
feq_cont.32386:
	mul		x7, x30, x4	# 287
	addi	x7, x7, 60696	# 287
	flw		f6, 0(x7)	# 287
	fmul	f6, f6, f1	# 287
	mul		x7, x30, x4	# 287
	addi	x7, x7, 60696	# 287
	fsw		f6, 0(x7)	# 287
	mul		x7, x30, x5	# 288
	addi	x7, x7, 60696	# 288
	flw		f6, 0(x7)	# 288
	fmul	f6, f6, f1	# 288
	mul		x7, x30, x5	# 288
	addi	x7, x7, 60696	# 288
	fsw		f6, 0(x7)	# 288
	mul		x7, x30, x6	# 289
	addi	x7, x7, 60696	# 289
	flw		f6, 0(x7)	# 289
	fmul	f1, f6, f1	# 289
	mul		x7, x30, x6	# 289
	addi	x7, x7, 60696	# 289
	fsw		f1, 0(x7)	# 289
	mul		x7, x30, x4	# 249
	addi	x7, x7, 60604	# 249
	fsw		f5, 0(x7)	# 249
	mul		x7, x30, x5	# 250
	addi	x7, x7, 60604	# 250
	fsw		f5, 0(x7)	# 250
	mul		x7, x30, x6	# 251
	addi	x7, x7, 60604	# 251
	fsw		f5, 0(x7)	# 251
	mul		x7, x30, x4	# 261
	addi	x7, x7, 60300	# 261
	flw		f1, 0(x7)	# 261
	mul		x7, x30, x4	# 261
	addi	x7, x7, 60636	# 261
	fsw		f1, 0(x7)	# 261
	mul		x7, x30, x5	# 262
	addi	x7, x7, 60300	# 262
	flw		f1, 0(x7)	# 262
	mul		x7, x30, x5	# 262
	addi	x7, x7, 60636	# 262
	fsw		f1, 0(x7)	# 262
	mul		x7, x30, x6	# 263
	addi	x7, x7, 60300	# 263
	flw		f1, 0(x7)	# 263
	mul		x7, x30, x6	# 263
	addi	x7, x7, 60636	# 263
	fsw		f1, 0(x7)	# 263
	fadd	f1, f0, f16	# 2206
	lw		x7, -24(x2)	# 2206
	mul		x8, x30, x7	# 2206
	lw		x9, -20(x2)	# 2206
	add		x8, x9, x8	# 2206
	lw		x8, 0(x8)	# 2206
	addi	x10, x0, 60696	# 2206
	lw		x29, -16(x2)	# 2206
	addi	x6, x8, 0
	addi	x5, x10, 0
	fadd	f2, f0, f5
	sw		x1, -60(x2)	# 2206
	addi	x2, x2, -64	# 2206
	lw		x31, 0(x29)	# 2206
	jalr	x1, x31, 0	# 2206
	addi	x2, x2, 64	# 2206
	lw		x1, -60(x2)	# 2206
	lw		x4, -24(x2)	# 2207
	mul		x5, x30, x4	# 2207
	lw		x6, -20(x2)	# 2207
	add		x5, x6, x5	# 2207
	lw		x5, 0(x5)	# 2207
	lw		x5, 0(x5)	# 564
	lw		x7, -52(x2)	# 261
	mul		x8, x30, x7	# 261
	addi	x8, x8, 60604	# 261
	flw		f1, 0(x8)	# 261
	mul		x8, x30, x7	# 261
	add		x8, x5, x8	# 261
	fsw		f1, 0(x8)	# 261
	lw		x8, -44(x2)	# 262
	mul		x9, x30, x8	# 262
	addi	x9, x9, 60604	# 262
	flw		f1, 0(x9)	# 262
	mul		x9, x30, x8	# 262
	add		x9, x5, x9	# 262
	fsw		f1, 0(x9)	# 262
	lw		x9, -36(x2)	# 263
	mul		x10, x30, x9	# 263
	addi	x10, x10, 60604	# 263
	flw		f1, 0(x10)	# 263
	mul		x9, x30, x9	# 263
	add		x5, x5, x9	# 263
	fsw		f1, 0(x5)	# 263
	mul		x5, x30, x4	# 2208
	add		x5, x6, x5	# 2208
	lw		x5, 0(x5)	# 2208
	lw		x5, 24(x5)	# 623
	mul		x9, x30, x7	# 625
	add		x5, x5, x9	# 625
	lw		x9, -12(x2)	# 625
	sw		x9, 0(x5)	# 625
	mul		x5, x30, x4	# 2211
	add		x5, x6, x5	# 2211
	lw		x5, 0(x5)	# 2211
	lw		x29, -8(x2)	# 2211
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -60(x2)	# 2211
	addi	x2, x2, -64	# 2211
	lw		x31, 0(x29)	# 2211
	jalr	x1, x31, 0	# 2211
	addi	x2, x2, 64	# 2211
	lw		x1, -60(x2)	# 2211
	lw		x4, -44(x2)	# 2213
	lw		x5, -24(x2)	# 2213
	sub		x5, x5, x4	# 2213
	lw		x6, -12(x2)	# 226
	add		x4, x6, x4	# 226
	lw		x6, -4(x2)	# 227
	ble		x6, x4, ble.32389	# 227
	addi	x6, x4, 0	# 227
	jal		x0, ble_cont.32388	# 227
ble.32389:
	sub		x6, x4, x6	# 227
ble_cont.32388:
	flw		f1, -48(x2)	# 2213
	flw		f2, -40(x2)	# 2213
	flw		f3, -32(x2)	# 2213
	lw		x4, -20(x2)	# 2213
	lw		x29, 0(x2)	# 2213
	lw		x31, 0(x29)	# 2213
	jalr	x0, x31, 0	# 2213
scan_pixel.2954.17805:
	lw		x10, 28(x29)	# 2236
	lw		x11, 24(x29)	# 2236
	lw		x12, 20(x29)	# 2236
	lw		x13, 16(x29)	# 2236
	lw		x14, 12(x29)	# 2236
	lw		x15, 8(x29)	# 2236
	lw		x16, 4(x29)	# 2236
	mul		x17, x30, x15	# 2236
	addi	x17, x17, 60616	# 2236
	lw		x17, 0(x17)	# 2236
	ble		x17, x4, ble.32390	# 2236
	mul		x17, x30, x4	# 2239
	add		x17, x7, x17	# 2239
	lw		x17, 0(x17)	# 2239
	lw		x17, 0(x17)	# 564
	mul		x18, x30, x15	# 261
	add		x18, x17, x18	# 261
	flw		f1, 0(x18)	# 261
	mul		x18, x30, x15	# 261
	addi	x18, x18, 60604	# 261
	fsw		f1, 0(x18)	# 261
	mul		x18, x30, x16	# 262
	add		x18, x17, x18	# 262
	flw		f1, 0(x18)	# 262
	mul		x18, x30, x16	# 262
	addi	x18, x18, 60604	# 262
	fsw		f1, 0(x18)	# 262
	mul		x18, x30, x13	# 263
	add		x17, x17, x18	# 263
	flw		f1, 0(x17)	# 263
	mul		x13, x30, x13	# 263
	addi	x13, x13, 60604	# 263
	fsw		f1, 0(x13)	# 263
	mul		x13, x30, x16	# 2052
	addi	x13, x13, 60616	# 2052
	lw		x13, 0(x13)	# 2052
	add		x17, x5, x16	# 2052
	ble		x13, x17, ble.32392	# 2052
	ble		x5, x15, ble.32394	# 2053
	mul		x13, x30, x15	# 2054
	addi	x13, x13, 60616	# 2054
	lw		x13, 0(x13)	# 2054
	add		x17, x4, x16	# 2054
	ble		x13, x17, ble.32396	# 2054
	ble		x4, x15, ble.32398	# 2055
	addi	x13, x0, 1	# 2056
	jal		x0, ble_cont.32397	# 2055
ble.32398:
	addi	x13, x0, 0	# 2057
ble_cont.32397:
	jal		x0, ble_cont.32395	# 2054
ble.32396:
	addi	x13, x0, 0	# 2058
ble_cont.32395:
	jal		x0, ble_cont.32393	# 2053
ble.32394:
	addi	x13, x0, 0	# 2059
ble_cont.32393:
	jal		x0, ble_cont.32391	# 2052
ble.32392:
	addi	x13, x0, 0	# 2060
ble_cont.32391:
	sw		x8, 0(x2)	# 2242
	sw		x7, -4(x2)	# 2242
	sw		x6, -8(x2)	# 2242
	sw		x5, -12(x2)	# 2242
	sw		x29, -16(x2)	# 2242
	sw		x16, -20(x2)	# 2242
	sw		x4, -24(x2)	# 2242
	sw		x15, -28(x2)	# 2242
	sw		x11, -32(x2)	# 2242
	sw		x14, -36(x2)	# 2242
	sw		x9, -40(x2)	# 2242
	beq		x13, x15, beq.32400	# 2242
	addi	x12, x0, 0	# 2243
	addi	x9, x12, 0
	addi	x29, x10, 0
	sw		x1, -44(x2)	# 2243
	addi	x2, x2, -48	# 2243
	lw		x31, 0(x29)	# 2243
	jalr	x1, x31, 0	# 2243
	addi	x2, x2, 48	# 2243
	lw		x1, -44(x2)	# 2243
	jal		x0, beq_cont.32399	# 2242
beq.32400:
	mul		x10, x30, x4	# 2245
	add		x10, x7, x10	# 2245
	lw		x10, 0(x10)	# 2245
	addi	x13, x0, 0	# 2245
	addi	x5, x13, 0
	addi	x4, x10, 0
	addi	x29, x12, 0
	sw		x1, -44(x2)	# 2245
	addi	x2, x2, -48	# 2245
	lw		x31, 0(x29)	# 2245
	jalr	x1, x31, 0	# 2245
	addi	x2, x2, 48	# 2245
	lw		x1, -44(x2)	# 2245
beq_cont.32399:
	lw		x4, -36(x2)	# 2142
	lw		x5, -40(x2)	# 2142
	beq		x5, x4, beq.32402	# 2142
	addi	x4, x0, 0	# 2150
	mul		x4, x30, x4	# 2150
	addi	x4, x4, 60604	# 2150
	flw		f1, 0(x4)	# 2150
	lw		x29, -32(x2)	# 2136
	sw		x1, -44(x2)	# 2136
	addi	x2, x2, -48	# 2136
	lw		x31, 0(x29)	# 2136
	jalr	x1, x31, 0	# 2136
	addi	x2, x2, 48	# 2136
	lw		x1, -44(x2)	# 2136
	addi	x5, x0, 255	# 2137
	ble		x4, x5, ble.32404	# 2137
	addi	x4, x0, 255	# 2137
	jal		x0, ble_cont.32403	# 2137
ble.32404:
	lw		x5, -28(x2)	# 2137
	ble		x5, x4, ble_cont.32405	# 2137
	addi	x4, x0, 0	# 2137
ble_cont.32405:
ble_cont.32403:
	sw		x1, -44(x2)	# 2138
	addi	x2, x2, -48	# 2138
	jal		x1, min_caml_print_char	# 2138
	addi	x2, x2, 48	# 2138
	lw		x1, -44(x2)	# 2138
	addi	x4, x0, 1	# 2151
	mul		x4, x30, x4	# 2151
	addi	x4, x4, 60604	# 2151
	flw		f1, 0(x4)	# 2151
	lw		x29, -32(x2)	# 2136
	sw		x1, -44(x2)	# 2136
	addi	x2, x2, -48	# 2136
	lw		x31, 0(x29)	# 2136
	jalr	x1, x31, 0	# 2136
	addi	x2, x2, 48	# 2136
	lw		x1, -44(x2)	# 2136
	addi	x5, x0, 255	# 2137
	ble		x4, x5, ble.32407	# 2137
	addi	x4, x0, 255	# 2137
	jal		x0, ble_cont.32406	# 2137
ble.32407:
	lw		x5, -28(x2)	# 2137
	ble		x5, x4, ble_cont.32408	# 2137
	addi	x4, x0, 0	# 2137
ble_cont.32408:
ble_cont.32406:
	sw		x1, -44(x2)	# 2138
	addi	x2, x2, -48	# 2138
	jal		x1, min_caml_print_char	# 2138
	addi	x2, x2, 48	# 2138
	lw		x1, -44(x2)	# 2138
	addi	x4, x0, 2	# 2152
	mul		x4, x30, x4	# 2152
	addi	x4, x4, 60604	# 2152
	flw		f1, 0(x4)	# 2152
	lw		x29, -32(x2)	# 2136
	sw		x1, -44(x2)	# 2136
	addi	x2, x2, -48	# 2136
	lw		x31, 0(x29)	# 2136
	jalr	x1, x31, 0	# 2136
	addi	x2, x2, 48	# 2136
	lw		x1, -44(x2)	# 2136
	addi	x5, x0, 255	# 2137
	ble		x4, x5, ble.32410	# 2137
	addi	x4, x0, 255	# 2137
	jal		x0, ble_cont.32409	# 2137
ble.32410:
	lw		x5, -28(x2)	# 2137
	ble		x5, x4, ble_cont.32411	# 2137
	addi	x4, x0, 0	# 2137
ble_cont.32411:
ble_cont.32409:
	sw		x1, -44(x2)	# 2138
	addi	x2, x2, -48	# 2138
	jal		x1, min_caml_print_char	# 2138
	addi	x2, x2, 48	# 2138
	lw		x1, -44(x2)	# 2138
	jal		x0, beq_cont.32401	# 2142
beq.32402:
	addi	x4, x0, 0	# 2143
	mul		x4, x30, x4	# 2143
	addi	x4, x4, 60604	# 2143
	flw		f1, 0(x4)	# 2143
	lw		x29, -32(x2)	# 2130
	sw		x1, -44(x2)	# 2130
	addi	x2, x2, -48	# 2130
	lw		x31, 0(x29)	# 2130
	jalr	x1, x31, 0	# 2130
	addi	x2, x2, 48	# 2130
	lw		x1, -44(x2)	# 2130
	addi	x5, x0, 255	# 2131
	ble		x4, x5, ble.32413	# 2131
	addi	x4, x0, 255	# 2131
	jal		x0, ble_cont.32412	# 2131
ble.32413:
	lw		x5, -28(x2)	# 2131
	ble		x5, x4, ble_cont.32414	# 2131
	addi	x4, x0, 0	# 2131
ble_cont.32414:
ble_cont.32412:
	sw		x1, -44(x2)	# 2132
	addi	x2, x2, -48	# 2132
	jal		x1, min_caml_print_int	# 2132
	addi	x2, x2, 48	# 2132
	lw		x1, -44(x2)	# 2132
	addi	x4, x0, 32	# 2144
	sw		x1, -44(x2)	# 2144
	addi	x2, x2, -48	# 2144
	jal		x1, min_caml_print_char	# 2144
	addi	x2, x2, 48	# 2144
	lw		x1, -44(x2)	# 2144
	addi	x4, x0, 1	# 2145
	mul		x4, x30, x4	# 2145
	addi	x4, x4, 60604	# 2145
	flw		f1, 0(x4)	# 2145
	lw		x29, -32(x2)	# 2130
	sw		x1, -44(x2)	# 2130
	addi	x2, x2, -48	# 2130
	lw		x31, 0(x29)	# 2130
	jalr	x1, x31, 0	# 2130
	addi	x2, x2, 48	# 2130
	lw		x1, -44(x2)	# 2130
	addi	x5, x0, 255	# 2131
	ble		x4, x5, ble.32416	# 2131
	addi	x4, x0, 255	# 2131
	jal		x0, ble_cont.32415	# 2131
ble.32416:
	lw		x5, -28(x2)	# 2131
	ble		x5, x4, ble_cont.32417	# 2131
	addi	x4, x0, 0	# 2131
ble_cont.32417:
ble_cont.32415:
	sw		x1, -44(x2)	# 2132
	addi	x2, x2, -48	# 2132
	jal		x1, min_caml_print_int	# 2132
	addi	x2, x2, 48	# 2132
	lw		x1, -44(x2)	# 2132
	addi	x4, x0, 32	# 2146
	sw		x1, -44(x2)	# 2146
	addi	x2, x2, -48	# 2146
	jal		x1, min_caml_print_char	# 2146
	addi	x2, x2, 48	# 2146
	lw		x1, -44(x2)	# 2146
	addi	x4, x0, 2	# 2147
	mul		x4, x30, x4	# 2147
	addi	x4, x4, 60604	# 2147
	flw		f1, 0(x4)	# 2147
	lw		x29, -32(x2)	# 2130
	sw		x1, -44(x2)	# 2130
	addi	x2, x2, -48	# 2130
	lw		x31, 0(x29)	# 2130
	jalr	x1, x31, 0	# 2130
	addi	x2, x2, 48	# 2130
	lw		x1, -44(x2)	# 2130
	addi	x5, x0, 255	# 2131
	ble		x4, x5, ble.32419	# 2131
	addi	x4, x0, 255	# 2131
	jal		x0, ble_cont.32418	# 2131
ble.32419:
	lw		x5, -28(x2)	# 2131
	ble		x5, x4, ble_cont.32420	# 2131
	addi	x4, x0, 0	# 2131
ble_cont.32420:
ble_cont.32418:
	sw		x1, -44(x2)	# 2132
	addi	x2, x2, -48	# 2132
	jal		x1, min_caml_print_int	# 2132
	addi	x2, x2, 48	# 2132
	lw		x1, -44(x2)	# 2132
	addi	x4, x0, 10	# 2148
	sw		x1, -44(x2)	# 2148
	addi	x2, x2, -48	# 2148
	jal		x1, min_caml_print_char	# 2148
	addi	x2, x2, 48	# 2148
	lw		x1, -44(x2)	# 2148
beq_cont.32401:
	lw		x4, -20(x2)	# 2250
	lw		x5, -24(x2)	# 2250
	add		x4, x5, x4	# 2250
	lw		x5, -12(x2)	# 2250
	lw		x6, -8(x2)	# 2250
	lw		x7, -4(x2)	# 2250
	lw		x8, 0(x2)	# 2250
	lw		x9, -40(x2)	# 2250
	lw		x29, -16(x2)	# 2250
	lw		x31, 0(x29)	# 2250
	jalr	x0, x31, 0	# 2250
ble.32390:
	jalr	x0, x1, 0	# 2251
scan_line.2961.17812:
	lw		x10, 28(x29)	# 2257
	lw		x11, 24(x29)	# 2257
	lw		x12, 20(x29)	# 2257
	lw		x13, 16(x29)	# 2257
	lw		x14, 12(x29)	# 2257
	lw		x15, 8(x29)	# 2257
	lw		x16, 4(x29)	# 2257
	mul		x17, x30, x16	# 2257
	addi	x17, x17, 60616	# 2257
	lw		x17, 0(x17)	# 2257
	ble		x17, x4, ble.32422	# 2257
	sub		x17, x17, x16	# 2259
	sw		x29, 0(x2)	# 2259
	sw		x13, -4(x2)	# 2259
	sw		x14, -8(x2)	# 2259
	sw		x8, -12(x2)	# 2259
	sw		x16, -16(x2)	# 2259
	sw		x9, -20(x2)	# 2259
	sw		x7, -24(x2)	# 2259
	sw		x6, -28(x2)	# 2259
	sw		x5, -32(x2)	# 2259
	sw		x4, -36(x2)	# 2259
	sw		x15, -40(x2)	# 2259
	sw		x10, -44(x2)	# 2259
	ble		x17, x4, ble_cont.32423	# 2259
	addi	x17, x4, 1	# 2260
	addi	x18, x0, 0	# 2220
	mul		x18, x30, x18	# 2220
	addi	x18, x18, 60632	# 2220
	flw		f1, 0(x18)	# 2220
	addi	x18, x0, 1	# 2220
	mul		x18, x30, x18	# 2220
	addi	x18, x18, 60624	# 2220
	lw		x18, 0(x18)	# 2220
	sub		x17, x17, x18	# 2220
	sw		x11, -48(x2)	# 2220
	fsw		f1, -52(x2)	# 2220
	addi	x4, x17, 0
	addi	x29, x12, 0
	sw		x1, -56(x2)	# 2220
	addi	x2, x2, -60	# 2220
	lw		x31, 0(x29)	# 2220
	jalr	x1, x31, 0	# 2220
	addi	x2, x2, 60	# 2220
	lw		x1, -56(x2)	# 2220
	flw		f2, -52(x2)	# 2220
	fmul	f1, f2, f1	# 2220
	addi	x4, x0, 0	# 2223
	mul		x4, x30, x4	# 2223
	addi	x4, x4, 60672	# 2223
	flw		f2, 0(x4)	# 2223
	fmul	f2, f1, f2	# 2223
	addi	x4, x0, 0	# 2223
	mul		x4, x30, x4	# 2223
	addi	x4, x4, 60684	# 2223
	flw		f3, 0(x4)	# 2223
	fadd	f2, f2, f3	# 2223
	addi	x4, x0, 1	# 2224
	mul		x4, x30, x4	# 2224
	addi	x4, x4, 60672	# 2224
	flw		f3, 0(x4)	# 2224
	fmul	f3, f1, f3	# 2224
	addi	x4, x0, 1	# 2224
	mul		x4, x30, x4	# 2224
	addi	x4, x4, 60684	# 2224
	flw		f4, 0(x4)	# 2224
	fadd	f3, f3, f4	# 2224
	addi	x4, x0, 2	# 2225
	mul		x4, x30, x4	# 2225
	addi	x4, x4, 60672	# 2225
	flw		f4, 0(x4)	# 2225
	fmul	f1, f1, f4	# 2225
	addi	x4, x0, 2	# 2225
	mul		x4, x30, x4	# 2225
	addi	x4, x4, 60684	# 2225
	flw		f4, 0(x4)	# 2225
	fadd	f1, f1, f4	# 2225
	addi	x4, x0, 0	# 2226
	mul		x4, x30, x4	# 2226
	addi	x4, x4, 60616	# 2226
	lw		x4, 0(x4)	# 2226
	addi	x5, x0, 1	# 2226
	sub		x5, x4, x5	# 2226
	lw		x4, -24(x2)	# 2226
	lw		x6, -12(x2)	# 2226
	lw		x29, -48(x2)	# 2226
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -56(x2)	# 2226
	addi	x2, x2, -60	# 2226
	lw		x31, 0(x29)	# 2226
	jalr	x1, x31, 0	# 2226
	addi	x2, x2, 60	# 2226
	lw		x1, -56(x2)	# 2226
ble_cont.32423:
	lw		x4, -40(x2)	# 2262
	lw		x5, -36(x2)	# 2262
	lw		x6, -32(x2)	# 2262
	lw		x7, -28(x2)	# 2262
	lw		x8, -24(x2)	# 2262
	lw		x9, -20(x2)	# 2262
	lw		x29, -44(x2)	# 2262
	sw		x1, -56(x2)	# 2262
	addi	x2, x2, -60	# 2262
	lw		x31, 0(x29)	# 2262
	jalr	x1, x31, 0	# 2262
	addi	x2, x2, 60	# 2262
	lw		x1, -56(x2)	# 2262
	lw		x4, -16(x2)	# 2263
	lw		x5, -36(x2)	# 2263
	add		x4, x5, x4	# 2263
	lw		x5, -8(x2)	# 226
	lw		x6, -12(x2)	# 226
	add		x5, x6, x5	# 226
	lw		x6, -4(x2)	# 227
	ble		x6, x5, ble.32425	# 227
	addi	x8, x5, 0	# 227
	jal		x0, ble_cont.32424	# 227
ble.32425:
	sub		x8, x5, x6	# 227
ble_cont.32424:
	lw		x5, -28(x2)	# 2263
	lw		x6, -24(x2)	# 2263
	lw		x7, -32(x2)	# 2263
	lw		x9, -20(x2)	# 2263
	lw		x29, 0(x2)	# 2263
	lw		x31, 0(x29)	# 2263
	jalr	x0, x31, 0	# 2263
ble.32422:
	jalr	x0, x1, 0	# 2264
init_line_elements.2972.17819:
	lw		x6, 24(x29)	# 2299
	lw		x7, 20(x29)	# 2299
	lw		x8, 16(x29)	# 2299
	lw		x9, 12(x29)	# 2299
	lw		x10, 8(x29)	# 2299
	flw		f1, 4(x29)	# 2299
	ble		x9, x5, ble.32427	# 2299
	jalr	x0, x1, 0	# 2303
ble.32427:
	sw		x29, 0(x2)	# 2286
	sw		x4, -4(x2)	# 2286
	sw		x5, -8(x2)	# 2286
	sw		x9, -12(x2)	# 2286
	sw		x7, -16(x2)	# 2286
	sw		x10, -20(x2)	# 2286
	sw		x6, -24(x2)	# 2286
	fsw		f1, -28(x2)	# 2286
	sw		x8, -32(x2)	# 2286
	addi	x4, x8, 0
	sw		x1, -36(x2)	# 2286
	addi	x2, x2, -40	# 2286
	jal		x1, min_caml_create_float_array	# 2286
	addi	x2, x2, 40	# 2286
	lw		x1, -36(x2)	# 2286
	flw		f1, -28(x2)	# 2274
	lw		x5, -32(x2)	# 2274
	sw		x4, -36(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -40(x2)	# 2274
	addi	x2, x2, -44	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 44	# 2274
	lw		x1, -40(x2)	# 2274
	addi	x5, x4, 0	# 2274
	lw		x4, -24(x2)	# 2275
	sw		x1, -40(x2)	# 2275
	addi	x2, x2, -44	# 2275
	jal		x1, min_caml_create_array	# 2275
	addi	x2, x2, 44	# 2275
	lw		x1, -40(x2)	# 2275
	flw		f1, -28(x2)	# 2276
	lw		x5, -32(x2)	# 2276
	sw		x4, -40(x2)	# 2276
	addi	x4, x5, 0
	sw		x1, -44(x2)	# 2276
	addi	x2, x2, -48	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 48	# 2276
	lw		x1, -44(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -40(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -28(x2)	# 2277
	lw		x4, -32(x2)	# 2277
	sw		x1, -44(x2)	# 2277
	addi	x2, x2, -48	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 48	# 2277
	lw		x1, -44(x2)	# 2277
	lw		x5, -16(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -40(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -28(x2)	# 2278
	lw		x4, -32(x2)	# 2278
	sw		x1, -44(x2)	# 2278
	addi	x2, x2, -48	# 2278
	jal		x1, min_caml_create_float_array	# 2278
	addi	x2, x2, 48	# 2278
	lw		x1, -44(x2)	# 2278
	lw		x5, -32(x2)	# 2278
	mul		x6, x30, x5	# 2278
	lw		x7, -40(x2)	# 2278
	add		x6, x7, x6	# 2278
	sw		x4, 0(x6)	# 2278
	addi	x4, x0, 4	# 2279
	flw		f1, -28(x2)	# 2279
	sw		x4, -44(x2)	# 2279
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 2279
	addi	x2, x2, -52	# 2279
	jal		x1, min_caml_create_float_array	# 2279
	addi	x2, x2, 52	# 2279
	lw		x1, -48(x2)	# 2279
	lw		x5, -44(x2)	# 2279
	mul		x6, x30, x5	# 2279
	lw		x7, -40(x2)	# 2279
	add		x6, x7, x6	# 2279
	sw		x4, 0(x6)	# 2279
	lw		x4, -24(x2)	# 2288
	lw		x6, -12(x2)	# 2288
	addi	x5, x6, 0
	sw		x1, -48(x2)	# 2288
	addi	x2, x2, -52	# 2288
	jal		x1, min_caml_create_array	# 2288
	addi	x2, x2, 52	# 2288
	lw		x1, -48(x2)	# 2288
	lw		x5, -24(x2)	# 2289
	lw		x6, -12(x2)	# 2289
	sw		x4, -48(x2)	# 2289
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -52(x2)	# 2289
	addi	x2, x2, -56	# 2289
	jal		x1, min_caml_create_array	# 2289
	addi	x2, x2, 56	# 2289
	lw		x1, -52(x2)	# 2289
	flw		f1, -28(x2)	# 2274
	lw		x5, -32(x2)	# 2274
	sw		x4, -52(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -56(x2)	# 2274
	addi	x2, x2, -60	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 60	# 2274
	lw		x1, -56(x2)	# 2274
	addi	x5, x4, 0	# 2274
	lw		x4, -24(x2)	# 2275
	sw		x1, -56(x2)	# 2275
	addi	x2, x2, -60	# 2275
	jal		x1, min_caml_create_array	# 2275
	addi	x2, x2, 60	# 2275
	lw		x1, -56(x2)	# 2275
	flw		f1, -28(x2)	# 2276
	lw		x5, -32(x2)	# 2276
	sw		x4, -56(x2)	# 2276
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 2276
	addi	x2, x2, -64	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 64	# 2276
	lw		x1, -60(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -56(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -28(x2)	# 2277
	lw		x4, -32(x2)	# 2277
	sw		x1, -60(x2)	# 2277
	addi	x2, x2, -64	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 64	# 2277
	lw		x1, -60(x2)	# 2277
	lw		x5, -16(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -56(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -28(x2)	# 2278
	lw		x4, -32(x2)	# 2278
	sw		x1, -60(x2)	# 2278
	addi	x2, x2, -64	# 2278
	jal		x1, min_caml_create_float_array	# 2278
	addi	x2, x2, 64	# 2278
	lw		x1, -60(x2)	# 2278
	lw		x5, -32(x2)	# 2278
	mul		x6, x30, x5	# 2278
	lw		x7, -56(x2)	# 2278
	add		x6, x7, x6	# 2278
	sw		x4, 0(x6)	# 2278
	flw		f1, -28(x2)	# 2279
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 2279
	addi	x2, x2, -64	# 2279
	jal		x1, min_caml_create_float_array	# 2279
	addi	x2, x2, 64	# 2279
	lw		x1, -60(x2)	# 2279
	lw		x5, -44(x2)	# 2279
	mul		x6, x30, x5	# 2279
	lw		x7, -56(x2)	# 2279
	add		x6, x7, x6	# 2279
	sw		x4, 0(x6)	# 2279
	flw		f1, -28(x2)	# 2274
	lw		x4, -32(x2)	# 2274
	sw		x1, -60(x2)	# 2274
	addi	x2, x2, -64	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 64	# 2274
	lw		x1, -60(x2)	# 2274
	addi	x5, x4, 0	# 2274
	lw		x4, -24(x2)	# 2275
	sw		x1, -60(x2)	# 2275
	addi	x2, x2, -64	# 2275
	jal		x1, min_caml_create_array	# 2275
	addi	x2, x2, 64	# 2275
	lw		x1, -60(x2)	# 2275
	flw		f1, -28(x2)	# 2276
	lw		x5, -32(x2)	# 2276
	sw		x4, -60(x2)	# 2276
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 2276
	addi	x2, x2, -68	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 68	# 2276
	lw		x1, -64(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -60(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -28(x2)	# 2277
	lw		x4, -32(x2)	# 2277
	sw		x1, -64(x2)	# 2277
	addi	x2, x2, -68	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 68	# 2277
	lw		x1, -64(x2)	# 2277
	lw		x5, -16(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -60(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -28(x2)	# 2278
	lw		x4, -32(x2)	# 2278
	sw		x1, -64(x2)	# 2278
	addi	x2, x2, -68	# 2278
	jal		x1, min_caml_create_float_array	# 2278
	addi	x2, x2, 68	# 2278
	lw		x1, -64(x2)	# 2278
	lw		x5, -32(x2)	# 2278
	mul		x6, x30, x5	# 2278
	lw		x7, -60(x2)	# 2278
	add		x6, x7, x6	# 2278
	sw		x4, 0(x6)	# 2278
	flw		f1, -28(x2)	# 2279
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 2279
	addi	x2, x2, -68	# 2279
	jal		x1, min_caml_create_float_array	# 2279
	addi	x2, x2, 68	# 2279
	lw		x1, -64(x2)	# 2279
	lw		x5, -44(x2)	# 2279
	mul		x6, x30, x5	# 2279
	lw		x7, -60(x2)	# 2279
	add		x6, x7, x6	# 2279
	sw		x4, 0(x6)	# 2279
	lw		x4, -20(x2)	# 2292
	lw		x6, -12(x2)	# 2292
	addi	x5, x6, 0
	sw		x1, -64(x2)	# 2292
	addi	x2, x2, -68	# 2292
	jal		x1, min_caml_create_array	# 2292
	addi	x2, x2, 68	# 2292
	lw		x1, -64(x2)	# 2292
	flw		f1, -28(x2)	# 2274
	lw		x5, -32(x2)	# 2274
	sw		x4, -64(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -68(x2)	# 2274
	addi	x2, x2, -72	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 72	# 2274
	lw		x1, -68(x2)	# 2274
	addi	x5, x4, 0	# 2274
	lw		x4, -24(x2)	# 2275
	sw		x1, -68(x2)	# 2275
	addi	x2, x2, -72	# 2275
	jal		x1, min_caml_create_array	# 2275
	addi	x2, x2, 72	# 2275
	lw		x1, -68(x2)	# 2275
	flw		f1, -28(x2)	# 2276
	lw		x5, -32(x2)	# 2276
	sw		x4, -68(x2)	# 2276
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 2276
	addi	x2, x2, -76	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 76	# 2276
	lw		x1, -72(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -68(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -28(x2)	# 2277
	lw		x4, -32(x2)	# 2277
	sw		x1, -72(x2)	# 2277
	addi	x2, x2, -76	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 76	# 2277
	lw		x1, -72(x2)	# 2277
	lw		x5, -16(x2)	# 2277
	mul		x5, x30, x5	# 2277
	lw		x6, -68(x2)	# 2277
	add		x5, x6, x5	# 2277
	sw		x4, 0(x5)	# 2277
	flw		f1, -28(x2)	# 2278
	lw		x4, -32(x2)	# 2278
	sw		x1, -72(x2)	# 2278
	addi	x2, x2, -76	# 2278
	jal		x1, min_caml_create_float_array	# 2278
	addi	x2, x2, 76	# 2278
	lw		x1, -72(x2)	# 2278
	lw		x5, -32(x2)	# 2278
	mul		x6, x30, x5	# 2278
	lw		x7, -68(x2)	# 2278
	add		x6, x7, x6	# 2278
	sw		x4, 0(x6)	# 2278
	flw		f1, -28(x2)	# 2279
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 2279
	addi	x2, x2, -76	# 2279
	jal		x1, min_caml_create_float_array	# 2279
	addi	x2, x2, 76	# 2279
	lw		x1, -72(x2)	# 2279
	lw		x5, -44(x2)	# 2279
	mul		x5, x30, x5	# 2279
	lw		x6, -68(x2)	# 2279
	add		x5, x6, x5	# 2279
	sw		x4, 0(x5)	# 2279
	addi	x4, x3, 0	# 2294
	addi	x3, x3, 32	# 2294
	sw		x6, 28(x4)	# 2294
	lw		x5, -64(x2)	# 2294
	sw		x5, 24(x4)	# 2294
	lw		x5, -60(x2)	# 2294
	sw		x5, 20(x4)	# 2294
	lw		x5, -56(x2)	# 2294
	sw		x5, 16(x4)	# 2294
	lw		x5, -52(x2)	# 2294
	sw		x5, 12(x4)	# 2294
	lw		x5, -48(x2)	# 2294
	sw		x5, 8(x4)	# 2294
	lw		x5, -40(x2)	# 2294
	sw		x5, 4(x4)	# 2294
	lw		x5, -36(x2)	# 2294
	sw		x5, 0(x4)	# 2294
	lw		x5, -8(x2)	# 2300
	mul		x6, x30, x5	# 2300
	lw		x7, -4(x2)	# 2300
	add		x6, x7, x6	# 2300
	sw		x4, 0(x6)	# 2300
	lw		x4, -20(x2)	# 2301
	sub		x5, x5, x4	# 2301
	lw		x29, 0(x2)	# 2301
	addi	x4, x7, 0
	lw		x31, 0(x29)	# 2301
	jalr	x0, x31, 0	# 2301
calc_dirvec.2982.17822:
	lw		x7, 28(x29)	# 2336
	lw		x8, 24(x29)	# 2336
	lw		x9, 20(x29)	# 2336
	lw		x10, 16(x29)	# 2336
	lw		x11, 12(x29)	# 2336
	lw		x12, 8(x29)	# 2336
	lw		x13, 4(x29)	# 2336
	ble		x10, x4, ble.32428	# 2336
	fmul	f1, f2, f2	# 2327
	lui		x10, %hi(l.27341)	# 2327
	ori		x10, x0, %lo(l.27341)	# 2327
	flw		f2, 0(x10)	# 2327
	fadd	f1, f1, f2	# 2327
	fsqrt	f1, f1	# 2327
	fadd	f5, f0, f16	# 2328
	fdiv	f6, f5, f1	# 2328
	sw		x6, 0(x2)	# 2329
	sw		x5, -4(x2)	# 2329
	sw		x29, -8(x2)	# 2329
	fsw		f4, -12(x2)	# 2329
	sw		x9, -16(x2)	# 2329
	fsw		f5, -20(x2)	# 2329
	fsw		f2, -24(x2)	# 2329
	sw		x13, -28(x2)	# 2329
	sw		x4, -32(x2)	# 2329
	fsw		f1, -36(x2)	# 2329
	sw		x8, -40(x2)	# 2329
	sw		x7, -44(x2)	# 2329
	fsw		f3, -48(x2)	# 2329
	addi	x29, x9, 0
	fadd	f1, f0, f6
	sw		x1, -52(x2)	# 2329
	addi	x2, x2, -56	# 2329
	lw		x31, 0(x29)	# 2329
	jalr	x1, x31, 0	# 2329
	addi	x2, x2, 56	# 2329
	lw		x1, -52(x2)	# 2329
	flw		f2, -48(x2)	# 2330
	fmul	f1, f1, f2	# 2330
	lw		x29, -44(x2)	# 2322
	fsw		f1, -52(x2)	# 2322
	sw		x1, -56(x2)	# 2322
	addi	x2, x2, -60	# 2322
	lw		x31, 0(x29)	# 2322
	jalr	x1, x31, 0	# 2322
	addi	x2, x2, 60	# 2322
	lw		x1, -56(x2)	# 2322
	flw		f2, -52(x2)	# 2322
	lw		x29, -40(x2)	# 2322
	fsw		f1, -56(x2)	# 2322
	fadd	f1, f0, f2
	sw		x1, -60(x2)	# 2322
	addi	x2, x2, -64	# 2322
	lw		x31, 0(x29)	# 2322
	jalr	x1, x31, 0	# 2322
	addi	x2, x2, 64	# 2322
	lw		x1, -60(x2)	# 2322
	flw		f2, -56(x2)	# 2322
	fdiv	f1, f2, f1	# 2322
	flw		f2, -36(x2)	# 2331
	fmul	f1, f1, f2	# 2331
	lw		x4, -28(x2)	# 2352
	lw		x5, -32(x2)	# 2352
	add		x4, x5, x4	# 2352
	fmul	f2, f1, f1	# 2327
	flw		f3, -24(x2)	# 2327
	fadd	f2, f2, f3	# 2327
	fsqrt	f2, f2	# 2327
	flw		f3, -20(x2)	# 2328
	fdiv	f3, f3, f2	# 2328
	lw		x29, -16(x2)	# 2329
	fsw		f1, -60(x2)	# 2329
	sw		x4, -64(x2)	# 2329
	fsw		f2, -68(x2)	# 2329
	fadd	f1, f0, f3
	sw		x1, -72(x2)	# 2329
	addi	x2, x2, -76	# 2329
	lw		x31, 0(x29)	# 2329
	jalr	x1, x31, 0	# 2329
	addi	x2, x2, 76	# 2329
	lw		x1, -72(x2)	# 2329
	flw		f2, -12(x2)	# 2330
	fmul	f1, f1, f2	# 2330
	lw		x29, -44(x2)	# 2322
	fsw		f1, -72(x2)	# 2322
	sw		x1, -76(x2)	# 2322
	addi	x2, x2, -80	# 2322
	lw		x31, 0(x29)	# 2322
	jalr	x1, x31, 0	# 2322
	addi	x2, x2, 80	# 2322
	lw		x1, -76(x2)	# 2322
	flw		f2, -72(x2)	# 2322
	lw		x29, -40(x2)	# 2322
	fsw		f1, -76(x2)	# 2322
	fadd	f1, f0, f2
	sw		x1, -80(x2)	# 2322
	addi	x2, x2, -84	# 2322
	lw		x31, 0(x29)	# 2322
	jalr	x1, x31, 0	# 2322
	addi	x2, x2, 84	# 2322
	lw		x1, -80(x2)	# 2322
	flw		f2, -76(x2)	# 2322
	fdiv	f1, f2, f1	# 2322
	flw		f2, -68(x2)	# 2331
	fmul	f2, f1, f2	# 2331
	flw		f1, -60(x2)	# 2352
	flw		f3, -48(x2)	# 2352
	flw		f4, -12(x2)	# 2352
	lw		x4, -64(x2)	# 2352
	lw		x5, -4(x2)	# 2352
	lw		x6, 0(x2)	# 2352
	lw		x29, -8(x2)	# 2352
	lw		x31, 0(x29)	# 2352
	jalr	x0, x31, 0	# 2352
ble.32428:
	fmul	f3, f1, f1	# 127
	fmul	f4, f2, f2	# 127
	fadd	f3, f3, f4	# 2337
	fadd	f4, f0, f16	# 2337
	fadd	f3, f3, f4	# 2337
	fsqrt	f3, f3	# 2337
	fdiv	f1, f1, f3	# 2338
	fdiv	f2, f2, f3	# 2339
	fdiv	f3, f4, f3	# 2340
	mul		x4, x30, x5	# 2343
	addi	x4, x4, 60716	# 2343
	lw		x4, 0(x4)	# 2343
	mul		x5, x30, x6	# 2344
	add		x5, x4, x5	# 2344
	lw		x5, 0(x5)	# 2344
	lw		x5, 0(x5)	# 641
	mul		x7, x30, x12	# 242
	add		x7, x5, x7	# 242
	fsw		f1, 0(x7)	# 242
	mul		x7, x30, x13	# 243
	add		x7, x5, x7	# 243
	fsw		f2, 0(x7)	# 243
	mul		x7, x30, x11	# 244
	add		x5, x5, x7	# 244
	fsw		f3, 0(x5)	# 244
	addi	x5, x6, 40	# 2345
	mul		x5, x30, x5	# 2345
	add		x5, x4, x5	# 2345
	lw		x5, 0(x5)	# 2345
	lw		x5, 0(x5)	# 641
	fsub	f4, f0, f2	# 123
	mul		x7, x30, x12	# 242
	add		x7, x5, x7	# 242
	fsw		f1, 0(x7)	# 242
	mul		x7, x30, x13	# 243
	add		x7, x5, x7	# 243
	fsw		f3, 0(x7)	# 243
	mul		x7, x30, x11	# 244
	add		x5, x5, x7	# 244
	fsw		f4, 0(x5)	# 244
	addi	x5, x6, 80	# 2346
	mul		x5, x30, x5	# 2346
	add		x5, x4, x5	# 2346
	lw		x5, 0(x5)	# 2346
	lw		x5, 0(x5)	# 641
	fsub	f5, f0, f1	# 123
	mul		x7, x30, x12	# 242
	add		x7, x5, x7	# 242
	fsw		f3, 0(x7)	# 242
	mul		x7, x30, x13	# 243
	add		x7, x5, x7	# 243
	fsw		f5, 0(x7)	# 243
	mul		x7, x30, x11	# 244
	add		x5, x5, x7	# 244
	fsw		f4, 0(x5)	# 244
	add		x5, x6, x13	# 2347
	mul		x5, x30, x5	# 2347
	add		x5, x4, x5	# 2347
	lw		x5, 0(x5)	# 2347
	lw		x5, 0(x5)	# 641
	fsub	f3, f0, f3	# 123
	mul		x7, x30, x12	# 242
	add		x7, x5, x7	# 242
	fsw		f5, 0(x7)	# 242
	mul		x7, x30, x13	# 243
	add		x7, x5, x7	# 243
	fsw		f4, 0(x7)	# 243
	mul		x7, x30, x11	# 244
	add		x5, x5, x7	# 244
	fsw		f3, 0(x5)	# 244
	addi	x5, x6, 41	# 2348
	mul		x5, x30, x5	# 2348
	add		x5, x4, x5	# 2348
	lw		x5, 0(x5)	# 2348
	lw		x5, 0(x5)	# 641
	mul		x7, x30, x12	# 242
	add		x7, x5, x7	# 242
	fsw		f5, 0(x7)	# 242
	mul		x7, x30, x13	# 243
	add		x7, x5, x7	# 243
	fsw		f3, 0(x7)	# 243
	mul		x7, x30, x11	# 244
	add		x5, x5, x7	# 244
	fsw		f2, 0(x5)	# 244
	addi	x5, x6, 81	# 2349
	mul		x5, x30, x5	# 2349
	add		x4, x4, x5	# 2349
	lw		x4, 0(x4)	# 2349
	lw		x4, 0(x4)	# 641
	mul		x5, x30, x12	# 242
	add		x5, x4, x5	# 242
	fsw		f3, 0(x5)	# 242
	mul		x5, x30, x13	# 243
	add		x5, x4, x5	# 243
	fsw		f1, 0(x5)	# 243
	mul		x5, x30, x11	# 244
	add		x4, x4, x5	# 244
	fsw		f2, 0(x4)	# 244
	jalr	x0, x1, 0	# 244
calc_dirvecs.2990.17830:
	lw		x7, 28(x29)	# 2357
	lw		x8, 24(x29)	# 2357
	lw		x9, 20(x29)	# 2357
	lw		x10, 16(x29)	# 2357
	lw		x11, 12(x29)	# 2357
	lw		x12, 8(x29)	# 2357
	flw		f2, 4(x29)	# 2357
	ble		x11, x4, ble.32430	# 2357
	jalr	x0, x1, 0	# 2366
ble.32430:
	sw		x29, 0(x2)	# 2359
	sw		x9, -4(x2)	# 2359
	sw		x12, -8(x2)	# 2359
	sw		x4, -12(x2)	# 2359
	sw		x10, -16(x2)	# 2359
	fsw		f1, -20(x2)	# 2359
	fsw		f2, -24(x2)	# 2359
	sw		x6, -28(x2)	# 2359
	sw		x5, -32(x2)	# 2359
	sw		x11, -36(x2)	# 2359
	sw		x8, -40(x2)	# 2359
	addi	x29, x7, 0
	sw		x1, -44(x2)	# 2359
	addi	x2, x2, -48	# 2359
	lw		x31, 0(x29)	# 2359
	jalr	x1, x31, 0	# 2359
	addi	x2, x2, 48	# 2359
	lw		x1, -44(x2)	# 2359
	lui		x4, %hi(l.25720)	# 2359
	ori		x4, x0, %lo(l.25720)	# 2359
	flw		f2, 0(x4)	# 2359
	fmul	f1, f1, f2	# 2359
	lui		x4, %hi(l.28395)	# 2359
	ori		x4, x0, %lo(l.28395)	# 2359
	flw		f2, 0(x4)	# 2359
	fsub	f3, f1, f2	# 2359
	flw		f2, -24(x2)	# 2360
	flw		f4, -20(x2)	# 2360
	lw		x4, -36(x2)	# 2360
	lw		x5, -32(x2)	# 2360
	lw		x6, -28(x2)	# 2360
	lw		x29, -40(x2)	# 2360
	fsw		f1, -44(x2)	# 2360
	fadd	f1, f0, f2
	sw		x1, -48(x2)	# 2360
	addi	x2, x2, -52	# 2360
	lw		x31, 0(x29)	# 2360
	jalr	x1, x31, 0	# 2360
	addi	x2, x2, 52	# 2360
	lw		x1, -48(x2)	# 2360
	lui		x4, %hi(l.27341)	# 2362
	ori		x4, x0, %lo(l.27341)	# 2362
	flw		f1, 0(x4)	# 2362
	flw		f2, -44(x2)	# 2362
	fadd	f3, f2, f1	# 2362
	lw		x4, -16(x2)	# 2363
	lw		x5, -28(x2)	# 2363
	add		x6, x5, x4	# 2363
	flw		f1, -24(x2)	# 2363
	flw		f4, -20(x2)	# 2363
	lw		x4, -36(x2)	# 2363
	lw		x7, -32(x2)	# 2363
	lw		x29, -40(x2)	# 2363
	addi	x5, x7, 0
	fadd	f2, f0, f1
	sw		x1, -48(x2)	# 2363
	addi	x2, x2, -52	# 2363
	lw		x31, 0(x29)	# 2363
	jalr	x1, x31, 0	# 2363
	addi	x2, x2, 52	# 2363
	lw		x1, -48(x2)	# 2363
	lw		x4, -8(x2)	# 2365
	lw		x5, -12(x2)	# 2365
	sub		x5, x5, x4	# 2365
	lw		x6, -32(x2)	# 226
	add		x4, x6, x4	# 226
	lw		x6, -4(x2)	# 227
	ble		x6, x4, ble.32433	# 227
	jal		x0, ble_cont.32432	# 227
ble.32433:
	sub		x4, x4, x6	# 227
ble_cont.32432:
	flw		f1, -20(x2)	# 2365
	lw		x6, -28(x2)	# 2365
	lw		x29, 0(x2)	# 2365
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	lw		x31, 0(x29)	# 2365
	jalr	x0, x31, 0	# 2365
calc_dirvec_rows.2995.17835:
	lw		x7, 24(x29)	# 2371
	lw		x8, 20(x29)	# 2371
	lw		x9, 16(x29)	# 2371
	lw		x10, 12(x29)	# 2371
	lw		x11, 8(x29)	# 2371
	lw		x12, 4(x29)	# 2371
	ble		x11, x4, ble.32434	# 2371
	jalr	x0, x1, 0	# 2375
ble.32434:
	sw		x29, 0(x2)	# 2372
	sw		x9, -4(x2)	# 2372
	sw		x10, -8(x2)	# 2372
	sw		x12, -12(x2)	# 2372
	sw		x4, -16(x2)	# 2372
	sw		x6, -20(x2)	# 2372
	sw		x5, -24(x2)	# 2372
	sw		x8, -28(x2)	# 2372
	addi	x29, x7, 0
	sw		x1, -32(x2)	# 2372
	addi	x2, x2, -36	# 2372
	lw		x31, 0(x29)	# 2372
	jalr	x1, x31, 0	# 2372
	addi	x2, x2, 36	# 2372
	lw		x1, -32(x2)	# 2372
	lui		x4, %hi(l.25720)	# 2372
	ori		x4, x0, %lo(l.25720)	# 2372
	flw		f2, 0(x4)	# 2372
	fmul	f1, f1, f2	# 2372
	lui		x4, %hi(l.28395)	# 2372
	ori		x4, x0, %lo(l.28395)	# 2372
	flw		f2, 0(x4)	# 2372
	fsub	f1, f1, f2	# 2372
	addi	x4, x0, 4	# 2373
	lw		x5, -24(x2)	# 2373
	lw		x6, -20(x2)	# 2373
	lw		x29, -28(x2)	# 2373
	sw		x1, -32(x2)	# 2373
	addi	x2, x2, -36	# 2373
	lw		x31, 0(x29)	# 2373
	jalr	x1, x31, 0	# 2373
	addi	x2, x2, 36	# 2373
	lw		x1, -32(x2)	# 2373
	lw		x4, -12(x2)	# 2374
	lw		x5, -16(x2)	# 2374
	sub		x4, x5, x4	# 2374
	lw		x5, -8(x2)	# 226
	lw		x6, -24(x2)	# 226
	add		x5, x6, x5	# 226
	lw		x6, -4(x2)	# 227
	ble		x6, x5, ble.32437	# 227
	jal		x0, ble_cont.32436	# 227
ble.32437:
	sub		x5, x5, x6	# 227
ble_cont.32436:
	lw		x6, -20(x2)	# 2374
	addi	x6, x6, 4	# 2374
	lw		x29, 0(x2)	# 2374
	lw		x31, 0(x29)	# 2374
	jalr	x0, x31, 0	# 2374
create_dirvec_elements.3001.17839:
	lw		x6, 16(x29)	# 2390
	lw		x7, 12(x29)	# 2390
	lw		x8, 8(x29)	# 2390
	flw		f1, 4(x29)	# 2390
	ble		x7, x5, ble.32438	# 2390
	jalr	x0, x1, 0	# 2393
ble.32438:
	sw		x29, 0(x2)	# 2384
	sw		x8, -4(x2)	# 2384
	sw		x4, -8(x2)	# 2384
	sw		x5, -12(x2)	# 2384
	sw		x7, -16(x2)	# 2384
	addi	x4, x6, 0
	sw		x1, -20(x2)	# 2384
	addi	x2, x2, -24	# 2384
	jal		x1, min_caml_create_float_array	# 2384
	addi	x2, x2, 24	# 2384
	lw		x1, -20(x2)	# 2384
	addi	x5, x4, 0	# 2384
	lw		x4, -16(x2)	# 2385
	mul		x4, x30, x4	# 2385
	addi	x4, x4, 60000	# 2385
	lw		x4, 0(x4)	# 2385
	sw		x5, -20(x2)	# 2385
	sw		x1, -24(x2)	# 2385
	addi	x2, x2, -28	# 2385
	jal		x1, min_caml_create_array	# 2385
	addi	x2, x2, 28	# 2385
	lw		x1, -24(x2)	# 2385
	addi	x5, x3, 0	# 2386
	addi	x3, x3, 8	# 2386
	sw		x4, 4(x5)	# 2386
	lw		x4, -20(x2)	# 2386
	sw		x4, 0(x5)	# 2386
	addi	x4, x5, 0	# 2386
	lw		x5, -12(x2)	# 2391
	mul		x6, x30, x5	# 2391
	lw		x7, -8(x2)	# 2391
	add		x6, x7, x6	# 2391
	sw		x4, 0(x6)	# 2391
	lw		x4, -4(x2)	# 2392
	sub		x5, x5, x4	# 2392
	lw		x29, 0(x2)	# 2392
	addi	x4, x7, 0
	lw		x31, 0(x29)	# 2392
	jalr	x0, x31, 0	# 2392
create_dirvecs.3004.17842:
	lw		x5, 20(x29)	# 2397
	lw		x6, 16(x29)	# 2397
	lw		x7, 12(x29)	# 2397
	lw		x8, 8(x29)	# 2397
	flw		f1, 4(x29)	# 2397
	ble		x7, x4, ble.32440	# 2397
	jalr	x0, x1, 0	# 2401
ble.32440:
	addi	x9, x0, 120	# 2398
	sw		x29, 0(x2)	# 2384
	sw		x8, -4(x2)	# 2384
	sw		x5, -8(x2)	# 2384
	sw		x4, -12(x2)	# 2384
	sw		x9, -16(x2)	# 2384
	sw		x7, -20(x2)	# 2384
	addi	x4, x6, 0
	sw		x1, -24(x2)	# 2384
	addi	x2, x2, -28	# 2384
	jal		x1, min_caml_create_float_array	# 2384
	addi	x2, x2, 28	# 2384
	lw		x1, -24(x2)	# 2384
	addi	x5, x4, 0	# 2384
	lw		x4, -20(x2)	# 2385
	mul		x4, x30, x4	# 2385
	addi	x4, x4, 60000	# 2385
	lw		x4, 0(x4)	# 2385
	sw		x5, -24(x2)	# 2385
	sw		x1, -28(x2)	# 2385
	addi	x2, x2, -32	# 2385
	jal		x1, min_caml_create_array	# 2385
	addi	x2, x2, 32	# 2385
	lw		x1, -28(x2)	# 2385
	addi	x5, x3, 0	# 2386
	addi	x3, x3, 8	# 2386
	sw		x4, 4(x5)	# 2386
	lw		x4, -24(x2)	# 2386
	sw		x4, 0(x5)	# 2386
	lw		x4, -16(x2)	# 2398
	sw		x1, -28(x2)	# 2398
	addi	x2, x2, -32	# 2398
	jal		x1, min_caml_create_array	# 2398
	addi	x2, x2, 32	# 2398
	lw		x1, -28(x2)	# 2398
	lw		x5, -12(x2)	# 2398
	mul		x6, x30, x5	# 2398
	addi	x6, x6, 60716	# 2398
	sw		x4, 0(x6)	# 2398
	mul		x4, x30, x5	# 2399
	addi	x4, x4, 60716	# 2399
	lw		x4, 0(x4)	# 2399
	addi	x6, x0, 118	# 2399
	lw		x29, -8(x2)	# 2399
	addi	x5, x6, 0
	sw		x1, -28(x2)	# 2399
	addi	x2, x2, -32	# 2399
	lw		x31, 0(x29)	# 2399
	jalr	x1, x31, 0	# 2399
	addi	x2, x2, 32	# 2399
	lw		x1, -28(x2)	# 2399
	lw		x4, -4(x2)	# 2400
	lw		x5, -12(x2)	# 2400
	sub		x4, x5, x4	# 2400
	lw		x29, 0(x2)	# 2400
	lw		x31, 0(x29)	# 2400
	jalr	x0, x31, 0	# 2400
init_dirvec_constants.3006.17844:
	lw		x6, 12(x29)	# 2409
	lw		x7, 8(x29)	# 2409
	lw		x8, 4(x29)	# 2409
	ble		x7, x5, ble.32442	# 2409
	jalr	x0, x1, 0	# 2412
ble.32442:
	mul		x9, x30, x5	# 2410
	add		x9, x4, x9	# 2410
	lw		x9, 0(x9)	# 2410
	mul		x7, x30, x7	# 1289
	addi	x7, x7, 60000	# 1289
	lw		x7, 0(x7)	# 1289
	sub		x7, x7, x8	# 1289
	sw		x4, 0(x2)	# 1289
	sw		x29, -4(x2)	# 1289
	sw		x8, -8(x2)	# 1289
	sw		x5, -12(x2)	# 1289
	addi	x5, x7, 0
	addi	x4, x9, 0
	addi	x29, x6, 0
	sw		x1, -16(x2)	# 1289
	addi	x2, x2, -20	# 1289
	lw		x31, 0(x29)	# 1289
	jalr	x1, x31, 0	# 1289
	addi	x2, x2, 20	# 1289
	lw		x1, -16(x2)	# 1289
	lw		x4, -8(x2)	# 2411
	lw		x5, -12(x2)	# 2411
	sub		x5, x5, x4	# 2411
	lw		x4, 0(x2)	# 2411
	lw		x29, -4(x2)	# 2411
	lw		x31, 0(x29)	# 2411
	jalr	x0, x31, 0	# 2411
init_vecset_constants.3009.17847:
	lw		x5, 12(x29)	# 2416
	lw		x6, 8(x29)	# 2416
	lw		x7, 4(x29)	# 2416
	ble		x6, x4, ble.32444	# 2416
	jalr	x0, x1, 0	# 2419
ble.32444:
	mul		x6, x30, x4	# 2417
	addi	x6, x6, 60716	# 2417
	lw		x6, 0(x6)	# 2417
	addi	x8, x0, 119	# 2417
	sw		x29, 0(x2)	# 2417
	sw		x7, -4(x2)	# 2417
	sw		x4, -8(x2)	# 2417
	addi	x4, x6, 0
	addi	x29, x5, 0
	addi	x5, x8, 0
	sw		x1, -12(x2)	# 2417
	addi	x2, x2, -16	# 2417
	lw		x31, 0(x29)	# 2417
	jalr	x1, x31, 0	# 2417
	addi	x2, x2, 16	# 2417
	lw		x1, -12(x2)	# 2417
	lw		x4, -4(x2)	# 2418
	lw		x5, -8(x2)	# 2418
	sub		x4, x5, x4	# 2418
	lw		x29, 0(x2)	# 2418
	lw		x31, 0(x29)	# 2418
	jalr	x0, x31, 0	# 2418
min_caml_start:
	addi	x2, x2, -4
	addi	x30, x0, 4
	addi	x3, x0, 60000
	lui		x4, %hi(l.25729)
	ori		x4, x0, %lo(l.25729)
	flw		f0, 0(x4)
	lui		x4, %hi(l.25693)
	ori		x4, x0, %lo(l.25693)
	flw		f30, 0(x4)
	lui		x4, %hi(l.25691)
	ori		x4, x0, %lo(l.25691)
	flw		f16, 0(x4)
	lui		x4, %hi(l.25703)
	ori		x4, x0, %lo(l.25703)
	flw		f17, 0(x4)
	lui		x4, %hi(l.25789)
	ori		x4, x0, %lo(l.25789)
	flw		f18, 0(x4)
	lui		x4, %hi(l.27112)
	ori		x4, x0, %lo(l.27112)
	flw		f19, 0(x4)
	lui		x4, %hi(l.27108)
	ori		x4, x0, %lo(l.27108)
	flw		f20, 0(x4)
	lui		x4, %hi(l.27110)
	ori		x4, x0, %lo(l.27110)
	flw		f21, 0(x4)
	lui		x4, %hi(l.27138)
	ori		x4, x0, %lo(l.27138)
	flw		f22, 0(x4)
	lui		x4, %hi(l.26356)
	ori		x4, x0, %lo(l.26356)
	flw		f23, 0(x4)
	lui		x4, %hi(l.25757)
	ori		x4, x0, %lo(l.25757)
	flw		f24, 0(x4)
	lui		x4, %hi(l.26901)
	ori		x4, x0, %lo(l.26901)
	flw		f25, 0(x4)
	lui		x4, %hi(l.27148)
	ori		x4, x0, %lo(l.27148)
	flw		f26, 0(x4)
	lui		x4, %hi(l.27126)
	ori		x4, x0, %lo(l.27126)
	flw		f27, 0(x4)
	lui		x4, %hi(l.27159)
	ori		x4, x0, %lo(l.27159)
	flw		f28, 0(x4)
	lui		x4, %hi(l.27161)
	ori		x4, x0, %lo(l.27161)
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
	lui		x4, %hi(l.28435)	# 25
	ori		x4, x0, %lo(l.28435)	# 25
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
	lui		x4, %hi(l.28439)	# 42
	ori		x4, x0, %lo(l.28439)	# 42
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
	addi	x4, x3, 0	# 128
	addi	x3, x3, 8	# 128
	lui		x5, %hi(int_of_float_rem.2522.17700)	# 128
	ori		x5, x0, %lo(int_of_float_rem.2522.17700)	# 128
	sw		x5, 0(x4)	# 130
	lw		x5, 0(x2)	# 130
	sw		x5, 4(x4)	# 130
	addi	x6, x3, 0	# 130
	addi	x3, x3, 12	# 130
	lui		x7, %hi(int_of_float.2524.17702)	# 130
	ori		x7, x0, %lo(int_of_float.2524.17702)	# 130
	sw		x7, 0(x6)	# 134
	sw		x4, 8(x6)	# 134
	flw		f1, -8(x2)	# 134
	fsw		f1, 4(x6)	# 134
	addi	x29, x3, 0	# 134
	addi	x3, x3, 16	# 134
	lui		x4, %hi(float_of_int.2526.17704)	# 134
	ori		x4, x0, %lo(float_of_int.2526.17704)	# 134
	sw		x4, 0(x29)	# 141
	lw		x4, -4(x2)	# 141
	sw		x4, 12(x29)	# 141
	sw		x5, 8(x29)	# 141
	fsw		f1, 4(x29)	# 141
	lui		x7, %hi(l.28454)	# 141
	ori		x7, x0, %lo(l.28454)	# 141
	flw		f2, 0(x7)	# 141
	lui		x7, %hi(l.28456)	# 142
	ori		x7, x0, %lo(l.28456)	# 142
	flw		f3, 0(x7)	# 142
	lui		x7, %hi(l.28458)	# 143
	ori		x7, x0, %lo(l.28458)	# 143
	flw		f4, 0(x7)	# 143
	lui		x7, %hi(l.28460)	# 144
	ori		x7, x0, %lo(l.28460)	# 144
	flw		f5, 0(x7)	# 144
	addi	x7, x3, 0	# 166
	addi	x3, x3, 24	# 166
	lui		x8, %hi(sin.2538.17710)	# 166
	ori		x8, x0, %lo(sin.2538.17710)	# 166
	sw		x8, 0(x7)	# 174
	fsw		f5, 20(x7)	# 174
	fsw		f4, 16(x7)	# 174
	fsw		f3, 12(x7)	# 174
	fsw		f2, 8(x7)	# 174
	fsw		f1, 4(x7)	# 174
	addi	x8, x3, 0	# 174
	addi	x3, x3, 20	# 174
	lui		x9, %hi(cos.2540.17712)	# 174
	ori		x9, x0, %lo(cos.2540.17712)	# 174
	sw		x9, 0(x8)	# 179
	sw		x7, 16(x8)	# 179
	fsw		f5, 12(x8)	# 179
	fsw		f4, 8(x8)	# 179
	fsw		f1, 4(x8)	# 179
	addi	x9, x3, 0	# 179
	addi	x3, x3, 16	# 179
	lui		x10, %hi(atan.2542.17714)	# 179
	ori		x10, x0, %lo(atan.2542.17714)	# 179
	sw		x10, 0(x9)	# 862
	fsw		f5, 12(x9)	# 862
	fsw		f4, 8(x9)	# 862
	fsw		f1, 4(x9)	# 862
	addi	x10, x3, 0	# 862
	addi	x3, x3, 36	# 862
	lui		x11, %hi(read_object.2679.17716)	# 862
	ori		x11, x0, %lo(read_object.2679.17716)	# 862
	sw		x11, 0(x10)	# 878
	sw		x7, 32(x10)	# 878
	sw		x8, 28(x10)	# 878
	lw		x11, -48(x2)	# 878
	sw		x11, 24(x10)	# 878
	lw		x12, -28(x2)	# 878
	sw		x12, 20(x10)	# 878
	lw		x13, -16(x2)	# 878
	sw		x13, 16(x10)	# 878
	sw		x4, 12(x10)	# 878
	sw		x5, 8(x10)	# 878
	fsw		f1, 4(x10)	# 878
	addi	x13, x3, 0	# 878
	addi	x3, x3, 12	# 878
	lui		x14, %hi(read_net_item.2683.17718)	# 878
	ori		x14, x0, %lo(read_net_item.2683.17718)	# 878
	sw		x14, 0(x13)	# 886
	sw		x12, 8(x13)	# 886
	sw		x5, 4(x13)	# 886
	addi	x14, x3, 0	# 886
	addi	x3, x3, 20	# 886
	lui		x15, %hi(read_or_network.2685.17720)	# 886
	ori		x15, x0, %lo(read_or_network.2685.17720)	# 886
	sw		x15, 0(x14)	# 895
	sw		x13, 16(x14)	# 895
	sw		x12, 12(x14)	# 895
	sw		x4, 8(x14)	# 895
	sw		x5, 4(x14)	# 895
	addi	x15, x3, 0	# 895
	addi	x3, x3, 20	# 895
	lui		x16, %hi(read_and_network.2687.17722)	# 895
	ori		x16, x0, %lo(read_and_network.2687.17722)	# 895
	sw		x16, 0(x15)	# 1271
	sw		x13, 16(x15)	# 1271
	sw		x12, 12(x15)	# 1271
	sw		x4, 8(x15)	# 1271
	sw		x5, 4(x15)	# 1271
	addi	x13, x3, 0	# 1271
	addi	x3, x3, 20	# 1271
	lui		x16, %hi(iter_setup_dirvec_constants.2784.17724)	# 1271
	ori		x16, x0, %lo(iter_setup_dirvec_constants.2784.17724)	# 1271
	sw		x16, 0(x13)	# 1296
	sw		x11, 16(x13)	# 1296
	sw		x4, 12(x13)	# 1296
	sw		x5, 8(x13)	# 1296
	fsw		f1, 4(x13)	# 1296
	addi	x16, x3, 0	# 1296
	addi	x3, x3, 16	# 1296
	lui		x17, %hi(setup_startp_constants.2789.17727)	# 1296
	ori		x17, x0, %lo(setup_startp_constants.2789.17727)	# 1296
	sw		x17, 0(x16)	# 1365
	sw		x11, 12(x16)	# 1365
	sw		x4, 8(x16)	# 1365
	sw		x5, 4(x16)	# 1365
	addi	x17, x3, 0	# 1365
	addi	x3, x3, 28	# 1365
	lui		x18, %hi(check_all_inside.2814.17730)	# 1365
	ori		x18, x0, %lo(check_all_inside.2814.17730)	# 1365
	sw		x18, 0(x17)	# 1385
	sw		x11, 24(x17)	# 1385
	sw		x12, 20(x17)	# 1385
	lw		x18, -20(x2)	# 1385
	sw		x18, 16(x17)	# 1385
	sw		x4, 12(x17)	# 1385
	sw		x5, 8(x17)	# 1385
	fsw		f1, 4(x17)	# 1385
	addi	x19, x3, 0	# 1385
	addi	x3, x3, 36	# 1385
	lui		x20, %hi(shadow_check_and_group.2820.17736)	# 1385
	ori		x20, x0, %lo(shadow_check_and_group.2820.17736)	# 1385
	sw		x20, 0(x19)	# 1415
	sw		x17, 32(x19)	# 1415
	lw		x20, -64(x2)	# 1415
	sw		x20, 28(x19)	# 1415
	sw		x11, 24(x19)	# 1415
	sw		x12, 20(x19)	# 1415
	sw		x18, 16(x19)	# 1415
	sw		x4, 12(x19)	# 1415
	sw		x5, 8(x19)	# 1415
	fsw		f1, 4(x19)	# 1415
	addi	x21, x3, 0	# 1415
	addi	x3, x3, 20	# 1415
	lui		x22, %hi(shadow_check_one_or_group.2823.17739)	# 1415
	ori		x22, x0, %lo(shadow_check_one_or_group.2823.17739)	# 1415
	sw		x22, 0(x21)	# 1430
	sw		x19, 16(x21)	# 1430
	sw		x12, 12(x21)	# 1430
	sw		x4, 8(x21)	# 1430
	sw		x5, 4(x21)	# 1430
	addi	x19, x3, 0	# 1430
	addi	x3, x3, 36	# 1430
	lui		x22, %hi(shadow_check_one_or_matrix.2826.17742)	# 1430
	ori		x22, x0, %lo(shadow_check_one_or_matrix.2826.17742)	# 1430
	sw		x22, 0(x19)	# 1466
	sw		x21, 32(x19)	# 1466
	sw		x20, 28(x19)	# 1466
	sw		x11, 24(x19)	# 1466
	sw		x12, 20(x19)	# 1466
	sw		x18, 16(x19)	# 1466
	sw		x4, 12(x19)	# 1466
	sw		x5, 8(x19)	# 1466
	fsw		f1, 4(x19)	# 1466
	addi	x21, x3, 0	# 1466
	addi	x3, x3, 32	# 1466
	lui		x22, %hi(solve_each_element.2829.17745)	# 1466
	ori		x22, x0, %lo(solve_each_element.2829.17745)	# 1466
	sw		x22, 0(x21)	# 1507
	sw		x17, 28(x21)	# 1507
	sw		x11, 24(x21)	# 1507
	sw		x12, 20(x21)	# 1507
	sw		x18, 16(x21)	# 1507
	sw		x4, 12(x21)	# 1507
	sw		x5, 8(x21)	# 1507
	fsw		f1, 4(x21)	# 1507
	addi	x22, x3, 0	# 1507
	addi	x3, x3, 20	# 1507
	lui		x23, %hi(solve_one_or_network.2833.17749)	# 1507
	ori		x23, x0, %lo(solve_one_or_network.2833.17749)	# 1507
	sw		x23, 0(x22)	# 1517
	sw		x21, 16(x22)	# 1517
	sw		x12, 12(x22)	# 1517
	sw		x4, 8(x22)	# 1517
	sw		x5, 4(x22)	# 1517
	addi	x21, x3, 0	# 1517
	addi	x3, x3, 32	# 1517
	lui		x23, %hi(trace_or_matrix.2837.17753)	# 1517
	ori		x23, x0, %lo(trace_or_matrix.2837.17753)	# 1517
	sw		x23, 0(x21)	# 1559
	sw		x22, 28(x21)	# 1559
	sw		x11, 24(x21)	# 1559
	sw		x12, 20(x21)	# 1559
	sw		x18, 16(x21)	# 1559
	sw		x4, 12(x21)	# 1559
	sw		x5, 8(x21)	# 1559
	fsw		f1, 4(x21)	# 1559
	addi	x22, x3, 0	# 1559
	addi	x3, x3, 36	# 1559
	lui		x23, %hi(solve_each_element_fast.2843.17757)	# 1559
	ori		x23, x0, %lo(solve_each_element_fast.2843.17757)	# 1559
	sw		x23, 0(x22)	# 1600
	sw		x17, 32(x22)	# 1600
	sw		x20, 28(x22)	# 1600
	sw		x11, 24(x22)	# 1600
	sw		x12, 20(x22)	# 1600
	sw		x18, 16(x22)	# 1600
	sw		x4, 12(x22)	# 1600
	sw		x5, 8(x22)	# 1600
	fsw		f1, 4(x22)	# 1600
	addi	x17, x3, 0	# 1600
	addi	x3, x3, 20	# 1600
	lui		x23, %hi(solve_one_or_network_fast.2847.17761)	# 1600
	ori		x23, x0, %lo(solve_one_or_network_fast.2847.17761)	# 1600
	sw		x23, 0(x17)	# 1610
	sw		x22, 16(x17)	# 1610
	sw		x12, 12(x17)	# 1610
	sw		x4, 8(x17)	# 1610
	sw		x5, 4(x17)	# 1610
	addi	x22, x3, 0	# 1610
	addi	x3, x3, 36	# 1610
	lui		x23, %hi(trace_or_matrix_fast.2851.17765)	# 1610
	ori		x23, x0, %lo(trace_or_matrix_fast.2851.17765)	# 1610
	sw		x23, 0(x22)	# 1804
	sw		x17, 32(x22)	# 1804
	sw		x20, 28(x22)	# 1804
	sw		x11, 24(x22)	# 1804
	sw		x12, 20(x22)	# 1804
	sw		x18, 16(x22)	# 1804
	sw		x4, 12(x22)	# 1804
	sw		x5, 8(x22)	# 1804
	fsw		f1, 4(x22)	# 1804
	addi	x17, x3, 0	# 1804
	addi	x3, x3, 32	# 1804
	lui		x23, %hi(trace_reflections.2873.17769)	# 1804
	ori		x23, x0, %lo(trace_reflections.2873.17769)	# 1804
	sw		x23, 0(x17)	# 1833
	sw		x22, 28(x17)	# 1833
	sw		x19, 24(x17)	# 1833
	sw		x11, 20(x17)	# 1833
	sw		x4, 16(x17)	# 1833
	sw		x5, 12(x17)	# 1833
	flw		f2, -44(x2)	# 1833
	fsw		f2, 8(x17)	# 1833
	fsw		f1, 4(x17)	# 1833
	addi	x23, x3, 0	# 1833
	addi	x3, x3, 72	# 1833
	lui		x24, %hi(trace_ray.2878.17774)	# 1833
	ori		x24, x0, %lo(trace_ray.2878.17774)	# 1833
	sw		x24, 0(x23)	# 1945
	sw		x17, 68(x23)	# 1945
	sw		x21, 64(x23)	# 1945
	sw		x7, 60(x23)	# 1945
	sw		x19, 56(x23)	# 1945
	sw		x16, 52(x23)	# 1945
	sw		x6, 48(x23)	# 1945
	sw		x29, 44(x23)	# 1945
	sw		x8, 40(x23)	# 1945
	sw		x9, 36(x23)	# 1945
	sw		x11, 32(x23)	# 1945
	sw		x12, 28(x23)	# 1945
	sw		x18, 24(x23)	# 1945
	sw		x4, 20(x23)	# 1945
	sw		x5, 16(x23)	# 1945
	fsw		f2, 12(x23)	# 1945
	flw		f3, -24(x2)	# 1945
	fsw		f3, 8(x23)	# 1945
	fsw		f1, 4(x23)	# 1945
	addi	x12, x3, 0	# 1945
	addi	x3, x3, 60	# 1945
	lui		x17, %hi(iter_trace_diffuse_rays.2887.17780)	# 1945
	ori		x17, x0, %lo(iter_trace_diffuse_rays.2887.17780)	# 1945
	sw		x17, 0(x12)	# 2036
	sw		x22, 56(x12)	# 2036
	sw		x7, 52(x12)	# 2036
	sw		x19, 48(x12)	# 2036
	sw		x6, 44(x12)	# 2036
	sw		x29, 40(x12)	# 2036
	sw		x8, 36(x12)	# 2036
	sw		x9, 32(x12)	# 2036
	sw		x11, 28(x12)	# 2036
	sw		x18, 24(x12)	# 2036
	sw		x4, 20(x12)	# 2036
	sw		x5, 16(x12)	# 2036
	fsw		f2, 12(x12)	# 2036
	fsw		f3, 8(x12)	# 2036
	fsw		f1, 4(x12)	# 2036
	addi	x17, x3, 0	# 2036
	addi	x3, x3, 28	# 2036
	lui		x19, %hi(do_without_neighbors.2909.17785)	# 2036
	ori		x19, x0, %lo(do_without_neighbors.2909.17785)	# 2036
	sw		x19, 0(x17)	# 2088
	sw		x16, 24(x17)	# 2088
	sw		x12, 20(x17)	# 2088
	sw		x11, 16(x17)	# 2088
	sw		x18, 12(x17)	# 2088
	sw		x4, 8(x17)	# 2088
	sw		x5, 4(x17)	# 2088
	addi	x19, x3, 0	# 2088
	addi	x3, x3, 20	# 2088
	lui		x21, %hi(try_exploit_neighbors.2925.17788)	# 2088
	ori		x21, x0, %lo(try_exploit_neighbors.2925.17788)	# 2088
	sw		x21, 0(x19)	# 2164
	sw		x17, 16(x19)	# 2164
	sw		x11, 12(x19)	# 2164
	sw		x4, 8(x19)	# 2164
	sw		x5, 4(x19)	# 2164
	addi	x21, x3, 0	# 2164
	addi	x3, x3, 24	# 2164
	lui		x22, %hi(pretrace_diffuse_rays.2940.17795)	# 2164
	ori		x22, x0, %lo(pretrace_diffuse_rays.2940.17795)	# 2164
	sw		x22, 0(x21)	# 2194
	sw		x16, 20(x21)	# 2194
	sw		x12, 16(x21)	# 2194
	sw		x11, 12(x21)	# 2194
	sw		x4, 8(x21)	# 2194
	sw		x5, 4(x21)	# 2194
	addi	x12, x3, 0	# 2194
	addi	x3, x3, 36	# 2194
	lui		x16, %hi(pretrace_pixels.2943.17798)	# 2194
	ori		x16, x0, %lo(pretrace_pixels.2943.17798)	# 2194
	sw		x16, 0(x12)	# 2235
	sw		x23, 32(x12)	# 2235
	sw		x21, 28(x12)	# 2235
	sw		x29, 24(x12)	# 2235
	sw		x20, 20(x12)	# 2235
	sw		x11, 16(x12)	# 2235
	sw		x4, 12(x12)	# 2235
	sw		x5, 8(x12)	# 2235
	fsw		f1, 4(x12)	# 2235
	addi	x16, x3, 0	# 2235
	addi	x3, x3, 32	# 2235
	lui		x21, %hi(scan_pixel.2954.17805)	# 2235
	ori		x21, x0, %lo(scan_pixel.2954.17805)	# 2235
	sw		x21, 0(x16)	# 2255
	sw		x19, 28(x16)	# 2255
	sw		x6, 24(x16)	# 2255
	sw		x17, 20(x16)	# 2255
	sw		x11, 16(x16)	# 2255
	sw		x18, 12(x16)	# 2255
	sw		x4, 8(x16)	# 2255
	sw		x5, 4(x16)	# 2255
	addi	x6, x3, 0	# 2255
	addi	x3, x3, 32	# 2255
	lui		x17, %hi(scan_line.2961.17812)	# 2255
	ori		x17, x0, %lo(scan_line.2961.17812)	# 2255
	sw		x17, 0(x6)	# 2298
	sw		x16, 28(x6)	# 2298
	sw		x12, 24(x6)	# 2298
	sw		x29, 20(x6)	# 2298
	sw		x20, 16(x6)	# 2298
	sw		x11, 12(x6)	# 2298
	sw		x4, 8(x6)	# 2298
	sw		x5, 4(x6)	# 2298
	addi	x16, x3, 0	# 2298
	addi	x3, x3, 28	# 2298
	lui		x17, %hi(init_line_elements.2972.17819)	# 2298
	ori		x17, x0, %lo(init_line_elements.2972.17819)	# 2298
	sw		x17, 0(x16)	# 2335
	sw		x20, 24(x16)	# 2335
	sw		x11, 20(x16)	# 2335
	sw		x18, 16(x16)	# 2335
	sw		x4, 12(x16)	# 2335
	sw		x5, 8(x16)	# 2335
	fsw		f1, 4(x16)	# 2335
	addi	x17, x3, 0	# 2335
	addi	x3, x3, 32	# 2335
	lui		x19, %hi(calc_dirvec.2982.17822)	# 2335
	ori		x19, x0, %lo(calc_dirvec.2982.17822)	# 2335
	sw		x19, 0(x17)	# 2356
	sw		x7, 28(x17)	# 2356
	sw		x8, 24(x17)	# 2356
	sw		x9, 20(x17)	# 2356
	sw		x20, 16(x17)	# 2356
	sw		x11, 12(x17)	# 2356
	sw		x4, 8(x17)	# 2356
	sw		x5, 4(x17)	# 2356
	addi	x9, x3, 0	# 2356
	addi	x3, x3, 32	# 2356
	lui		x19, %hi(calc_dirvecs.2990.17830)	# 2356
	ori		x19, x0, %lo(calc_dirvecs.2990.17830)	# 2356
	sw		x19, 0(x9)	# 2370
	sw		x29, 28(x9)	# 2370
	sw		x17, 24(x9)	# 2370
	sw		x20, 20(x9)	# 2370
	sw		x11, 16(x9)	# 2370
	sw		x4, 12(x9)	# 2370
	sw		x5, 8(x9)	# 2370
	fsw		f1, 4(x9)	# 2370
	addi	x17, x3, 0	# 2370
	addi	x3, x3, 28	# 2370
	lui		x19, %hi(calc_dirvec_rows.2995.17835)	# 2370
	ori		x19, x0, %lo(calc_dirvec_rows.2995.17835)	# 2370
	sw		x19, 0(x17)	# 2389
	sw		x29, 24(x17)	# 2389
	sw		x9, 20(x17)	# 2389
	sw		x20, 16(x17)	# 2389
	sw		x11, 12(x17)	# 2389
	sw		x4, 8(x17)	# 2389
	sw		x5, 4(x17)	# 2389
	addi	x9, x3, 0	# 2389
	addi	x3, x3, 20	# 2389
	lui		x19, %hi(create_dirvec_elements.3001.17839)	# 2389
	ori		x19, x0, %lo(create_dirvec_elements.3001.17839)	# 2389
	sw		x19, 0(x9)	# 2396
	sw		x18, 16(x9)	# 2396
	sw		x4, 12(x9)	# 2396
	sw		x5, 8(x9)	# 2396
	fsw		f1, 4(x9)	# 2396
	addi	x19, x3, 0	# 2396
	addi	x3, x3, 24	# 2396
	lui		x21, %hi(create_dirvecs.3004.17842)	# 2396
	ori		x21, x0, %lo(create_dirvecs.3004.17842)	# 2396
	sw		x21, 0(x19)	# 2408
	sw		x9, 20(x19)	# 2408
	sw		x18, 16(x19)	# 2408
	sw		x4, 12(x19)	# 2408
	sw		x5, 8(x19)	# 2408
	fsw		f1, 4(x19)	# 2408
	addi	x9, x3, 0	# 2408
	addi	x3, x3, 16	# 2408
	lui		x21, %hi(init_dirvec_constants.3006.17844)	# 2408
	ori		x21, x0, %lo(init_dirvec_constants.3006.17844)	# 2408
	sw		x21, 0(x9)	# 2415
	sw		x13, 12(x9)	# 2415
	sw		x4, 8(x9)	# 2415
	sw		x5, 4(x9)	# 2415
	addi	x21, x3, 0	# 2415
	addi	x3, x3, 16	# 2415
	lui		x22, %hi(init_vecset_constants.3009.17847)	# 2415
	ori		x22, x0, %lo(init_vecset_constants.3009.17847)	# 2415
	sw		x22, 0(x21)	# 2514
	sw		x9, 12(x21)	# 2514
	sw		x4, 8(x21)	# 2514
	sw		x5, 4(x21)	# 2514
	addi	x9, x0, 256	# 2514
	mul		x22, x30, x4	# 2494
	addi	x22, x22, 60616	# 2494
	sw		x9, 0(x22)	# 2494
	mul		x22, x30, x5	# 2495
	addi	x22, x22, 60616	# 2495
	sw		x9, 0(x22)	# 2495
	addi	x22, x0, 128	# 2496
	mul		x23, x30, x4	# 2496
	addi	x23, x23, 60624	# 2496
	sw		x22, 0(x23)	# 2496
	mul		x23, x30, x5	# 2497
	addi	x23, x23, 60624	# 2497
	sw		x22, 0(x23)	# 2497
	lui		x22, %hi(l.28470)	# 2498
	ori		x22, x0, %lo(l.28470)	# 2498
	flw		f2, 0(x22)	# 2498
	sw		x6, -92(x2)	# 2498
	sw		x12, -96(x2)	# 2498
	sw		x29, -100(x2)	# 2498
	sw		x13, -104(x2)	# 2498
	sw		x21, -108(x2)	# 2498
	sw		x17, -112(x2)	# 2498
	sw		x19, -116(x2)	# 2498
	sw		x14, -120(x2)	# 2498
	sw		x15, -124(x2)	# 2498
	sw		x10, -128(x2)	# 2498
	sw		x7, -132(x2)	# 2498
	sw		x8, -136(x2)	# 2498
	sw		x16, -140(x2)	# 2498
	fsw		f2, -144(x2)	# 2498
	addi	x4, x9, 0
	sw		x1, -148(x2)	# 2498
	addi	x2, x2, -152	# 2498
	lw		x31, 0(x29)	# 2498
	jalr	x1, x31, 0	# 2498
	addi	x2, x2, 152	# 2498
	lw		x1, -148(x2)	# 2498
	flw		f2, -144(x2)	# 2498
	fdiv	f1, f2, f1	# 2498
	lw		x4, -4(x2)	# 2498
	mul		x5, x30, x4	# 2498
	addi	x5, x5, 60632	# 2498
	fsw		f1, 0(x5)	# 2498
	mul		x5, x30, x4	# 2308
	addi	x5, x5, 60616	# 2308
	lw		x5, 0(x5)	# 2308
	flw		f1, -8(x2)	# 2286
	lw		x6, -20(x2)	# 2286
	sw		x5, -148(x2)	# 2286
	addi	x4, x6, 0
	sw		x1, -152(x2)	# 2286
	addi	x2, x2, -156	# 2286
	jal		x1, min_caml_create_float_array	# 2286
	addi	x2, x2, 156	# 2286
	lw		x1, -152(x2)	# 2286
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -152(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -156(x2)	# 2274
	addi	x2, x2, -160	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 160	# 2274
	lw		x1, -156(x2)	# 2274
	addi	x5, x4, 0	# 2274
	lw		x4, -64(x2)	# 2275
	sw		x1, -156(x2)	# 2275
	addi	x2, x2, -160	# 2275
	jal		x1, min_caml_create_array	# 2275
	addi	x2, x2, 160	# 2275
	lw		x1, -156(x2)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	sw		x4, -156(x2)	# 2276
	addi	x4, x5, 0
	sw		x1, -160(x2)	# 2276
	addi	x2, x2, -164	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 164	# 2276
	lw		x1, -160(x2)	# 2276
	lw		x5, 0(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -156(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	lw		x4, -20(x2)	# 2277
	sw		x1, -160(x2)	# 2277
	addi	x2, x2, -164	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 164	# 2277
	lw		x1, -160(x2)	# 2277
	lw		x5, -48(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -156(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -8(x2)	# 2278
	lw		x4, -20(x2)	# 2278
	sw		x1, -160(x2)	# 2278
	addi	x2, x2, -164	# 2278
	jal		x1, min_caml_create_float_array	# 2278
	addi	x2, x2, 164	# 2278
	lw		x1, -160(x2)	# 2278
	lw		x5, -20(x2)	# 2278
	mul		x6, x30, x5	# 2278
	lw		x7, -156(x2)	# 2278
	add		x6, x7, x6	# 2278
	sw		x4, 0(x6)	# 2278
	addi	x4, x0, 4	# 2279
	flw		f1, -8(x2)	# 2279
	sw		x4, -160(x2)	# 2279
	addi	x4, x5, 0
	sw		x1, -164(x2)	# 2279
	addi	x2, x2, -168	# 2279
	jal		x1, min_caml_create_float_array	# 2279
	addi	x2, x2, 168	# 2279
	lw		x1, -164(x2)	# 2279
	lw		x5, -160(x2)	# 2279
	mul		x6, x30, x5	# 2279
	lw		x7, -156(x2)	# 2279
	add		x6, x7, x6	# 2279
	sw		x4, 0(x6)	# 2279
	lw		x4, -64(x2)	# 2288
	lw		x6, -4(x2)	# 2288
	addi	x5, x6, 0
	sw		x1, -164(x2)	# 2288
	addi	x2, x2, -168	# 2288
	jal		x1, min_caml_create_array	# 2288
	addi	x2, x2, 168	# 2288
	lw		x1, -164(x2)	# 2288
	lw		x5, -64(x2)	# 2289
	lw		x6, -4(x2)	# 2289
	sw		x4, -164(x2)	# 2289
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -168(x2)	# 2289
	addi	x2, x2, -172	# 2289
	jal		x1, min_caml_create_array	# 2289
	addi	x2, x2, 172	# 2289
	lw		x1, -168(x2)	# 2289
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -168(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -172(x2)	# 2274
	addi	x2, x2, -176	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 176	# 2274
	lw		x1, -172(x2)	# 2274
	addi	x5, x4, 0	# 2274
	lw		x4, -64(x2)	# 2275
	sw		x1, -172(x2)	# 2275
	addi	x2, x2, -176	# 2275
	jal		x1, min_caml_create_array	# 2275
	addi	x2, x2, 176	# 2275
	lw		x1, -172(x2)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	sw		x4, -172(x2)	# 2276
	addi	x4, x5, 0
	sw		x1, -176(x2)	# 2276
	addi	x2, x2, -180	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 180	# 2276
	lw		x1, -176(x2)	# 2276
	lw		x5, 0(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -172(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	lw		x4, -20(x2)	# 2277
	sw		x1, -176(x2)	# 2277
	addi	x2, x2, -180	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 180	# 2277
	lw		x1, -176(x2)	# 2277
	lw		x5, -48(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -172(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -8(x2)	# 2278
	lw		x4, -20(x2)	# 2278
	sw		x1, -176(x2)	# 2278
	addi	x2, x2, -180	# 2278
	jal		x1, min_caml_create_float_array	# 2278
	addi	x2, x2, 180	# 2278
	lw		x1, -176(x2)	# 2278
	lw		x5, -20(x2)	# 2278
	mul		x6, x30, x5	# 2278
	lw		x7, -172(x2)	# 2278
	add		x6, x7, x6	# 2278
	sw		x4, 0(x6)	# 2278
	flw		f1, -8(x2)	# 2279
	addi	x4, x5, 0
	sw		x1, -176(x2)	# 2279
	addi	x2, x2, -180	# 2279
	jal		x1, min_caml_create_float_array	# 2279
	addi	x2, x2, 180	# 2279
	lw		x1, -176(x2)	# 2279
	lw		x5, -160(x2)	# 2279
	mul		x6, x30, x5	# 2279
	lw		x7, -172(x2)	# 2279
	add		x6, x7, x6	# 2279
	sw		x4, 0(x6)	# 2279
	flw		f1, -8(x2)	# 2274
	lw		x4, -20(x2)	# 2274
	sw		x1, -176(x2)	# 2274
	addi	x2, x2, -180	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 180	# 2274
	lw		x1, -176(x2)	# 2274
	addi	x5, x4, 0	# 2274
	lw		x4, -64(x2)	# 2275
	sw		x1, -176(x2)	# 2275
	addi	x2, x2, -180	# 2275
	jal		x1, min_caml_create_array	# 2275
	addi	x2, x2, 180	# 2275
	lw		x1, -176(x2)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	sw		x4, -176(x2)	# 2276
	addi	x4, x5, 0
	sw		x1, -180(x2)	# 2276
	addi	x2, x2, -184	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 184	# 2276
	lw		x1, -180(x2)	# 2276
	lw		x5, 0(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -176(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	lw		x4, -20(x2)	# 2277
	sw		x1, -180(x2)	# 2277
	addi	x2, x2, -184	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 184	# 2277
	lw		x1, -180(x2)	# 2277
	lw		x5, -48(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -176(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -8(x2)	# 2278
	lw		x4, -20(x2)	# 2278
	sw		x1, -180(x2)	# 2278
	addi	x2, x2, -184	# 2278
	jal		x1, min_caml_create_float_array	# 2278
	addi	x2, x2, 184	# 2278
	lw		x1, -180(x2)	# 2278
	lw		x5, -20(x2)	# 2278
	mul		x6, x30, x5	# 2278
	lw		x7, -176(x2)	# 2278
	add		x6, x7, x6	# 2278
	sw		x4, 0(x6)	# 2278
	flw		f1, -8(x2)	# 2279
	addi	x4, x5, 0
	sw		x1, -180(x2)	# 2279
	addi	x2, x2, -184	# 2279
	jal		x1, min_caml_create_float_array	# 2279
	addi	x2, x2, 184	# 2279
	lw		x1, -180(x2)	# 2279
	lw		x5, -160(x2)	# 2279
	mul		x6, x30, x5	# 2279
	lw		x7, -176(x2)	# 2279
	add		x6, x7, x6	# 2279
	sw		x4, 0(x6)	# 2279
	lw		x4, 0(x2)	# 2292
	lw		x6, -4(x2)	# 2292
	addi	x5, x6, 0
	sw		x1, -180(x2)	# 2292
	addi	x2, x2, -184	# 2292
	jal		x1, min_caml_create_array	# 2292
	addi	x2, x2, 184	# 2292
	lw		x1, -180(x2)	# 2292
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -180(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -184(x2)	# 2274
	addi	x2, x2, -188	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 188	# 2274
	lw		x1, -184(x2)	# 2274
	addi	x5, x4, 0	# 2274
	lw		x4, -64(x2)	# 2275
	sw		x1, -184(x2)	# 2275
	addi	x2, x2, -188	# 2275
	jal		x1, min_caml_create_array	# 2275
	addi	x2, x2, 188	# 2275
	lw		x1, -184(x2)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	sw		x4, -184(x2)	# 2276
	addi	x4, x5, 0
	sw		x1, -188(x2)	# 2276
	addi	x2, x2, -192	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 192	# 2276
	lw		x1, -188(x2)	# 2276
	lw		x5, 0(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -184(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	lw		x4, -20(x2)	# 2277
	sw		x1, -188(x2)	# 2277
	addi	x2, x2, -192	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 192	# 2277
	lw		x1, -188(x2)	# 2277
	lw		x5, -48(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -184(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -8(x2)	# 2278
	lw		x4, -20(x2)	# 2278
	sw		x1, -188(x2)	# 2278
	addi	x2, x2, -192	# 2278
	jal		x1, min_caml_create_float_array	# 2278
	addi	x2, x2, 192	# 2278
	lw		x1, -188(x2)	# 2278
	lw		x5, -20(x2)	# 2278
	mul		x6, x30, x5	# 2278
	lw		x7, -184(x2)	# 2278
	add		x6, x7, x6	# 2278
	sw		x4, 0(x6)	# 2278
	flw		f1, -8(x2)	# 2279
	addi	x4, x5, 0
	sw		x1, -188(x2)	# 2279
	addi	x2, x2, -192	# 2279
	jal		x1, min_caml_create_float_array	# 2279
	addi	x2, x2, 192	# 2279
	lw		x1, -188(x2)	# 2279
	lw		x5, -160(x2)	# 2279
	mul		x6, x30, x5	# 2279
	lw		x7, -184(x2)	# 2279
	add		x6, x7, x6	# 2279
	sw		x4, 0(x6)	# 2279
	addi	x4, x3, 0	# 2294
	addi	x3, x3, 32	# 2294
	sw		x7, 28(x4)	# 2294
	lw		x6, -180(x2)	# 2294
	sw		x6, 24(x4)	# 2294
	lw		x6, -176(x2)	# 2294
	sw		x6, 20(x4)	# 2294
	lw		x6, -172(x2)	# 2294
	sw		x6, 16(x4)	# 2294
	lw		x6, -168(x2)	# 2294
	sw		x6, 12(x4)	# 2294
	lw		x6, -164(x2)	# 2294
	sw		x6, 8(x4)	# 2294
	lw		x6, -156(x2)	# 2294
	sw		x6, 4(x4)	# 2294
	lw		x6, -152(x2)	# 2294
	sw		x6, 0(x4)	# 2294
	lw		x6, -148(x2)	# 2308
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -188(x2)	# 2308
	addi	x2, x2, -192	# 2308
	jal		x1, min_caml_create_array	# 2308
	addi	x2, x2, 192	# 2308
	lw		x1, -188(x2)	# 2308
	lw		x5, -4(x2)	# 2309
	mul		x6, x30, x5	# 2309
	addi	x6, x6, 60616	# 2309
	lw		x6, 0(x6)	# 2309
	lw		x7, -48(x2)	# 2309
	sub		x6, x6, x7	# 2309
	lw		x29, -140(x2)	# 2309
	addi	x5, x6, 0
	sw		x1, -188(x2)	# 2309
	addi	x2, x2, -192	# 2309
	lw		x31, 0(x29)	# 2309
	jalr	x1, x31, 0	# 2309
	addi	x2, x2, 192	# 2309
	lw		x1, -188(x2)	# 2309
	lw		x5, -4(x2)	# 2308
	mul		x6, x30, x5	# 2308
	addi	x6, x6, 60616	# 2308
	lw		x6, 0(x6)	# 2308
	flw		f1, -8(x2)	# 2286
	lw		x7, -20(x2)	# 2286
	sw		x4, -188(x2)	# 2286
	sw		x6, -192(x2)	# 2286
	addi	x4, x7, 0
	sw		x1, -196(x2)	# 2286
	addi	x2, x2, -200	# 2286
	jal		x1, min_caml_create_float_array	# 2286
	addi	x2, x2, 200	# 2286
	lw		x1, -196(x2)	# 2286
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -196(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -200(x2)	# 2274
	addi	x2, x2, -204	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 204	# 2274
	lw		x1, -200(x2)	# 2274
	addi	x5, x4, 0	# 2274
	lw		x4, -64(x2)	# 2275
	sw		x1, -200(x2)	# 2275
	addi	x2, x2, -204	# 2275
	jal		x1, min_caml_create_array	# 2275
	addi	x2, x2, 204	# 2275
	lw		x1, -200(x2)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	sw		x4, -200(x2)	# 2276
	addi	x4, x5, 0
	sw		x1, -204(x2)	# 2276
	addi	x2, x2, -208	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 208	# 2276
	lw		x1, -204(x2)	# 2276
	lw		x5, 0(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -200(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	lw		x4, -20(x2)	# 2277
	sw		x1, -204(x2)	# 2277
	addi	x2, x2, -208	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 208	# 2277
	lw		x1, -204(x2)	# 2277
	lw		x5, -48(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -200(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -8(x2)	# 2278
	lw		x4, -20(x2)	# 2278
	sw		x1, -204(x2)	# 2278
	addi	x2, x2, -208	# 2278
	jal		x1, min_caml_create_float_array	# 2278
	addi	x2, x2, 208	# 2278
	lw		x1, -204(x2)	# 2278
	lw		x5, -20(x2)	# 2278
	mul		x6, x30, x5	# 2278
	lw		x7, -200(x2)	# 2278
	add		x6, x7, x6	# 2278
	sw		x4, 0(x6)	# 2278
	flw		f1, -8(x2)	# 2279
	addi	x4, x5, 0
	sw		x1, -204(x2)	# 2279
	addi	x2, x2, -208	# 2279
	jal		x1, min_caml_create_float_array	# 2279
	addi	x2, x2, 208	# 2279
	lw		x1, -204(x2)	# 2279
	lw		x5, -160(x2)	# 2279
	mul		x6, x30, x5	# 2279
	lw		x7, -200(x2)	# 2279
	add		x6, x7, x6	# 2279
	sw		x4, 0(x6)	# 2279
	lw		x4, -64(x2)	# 2288
	lw		x6, -4(x2)	# 2288
	addi	x5, x6, 0
	sw		x1, -204(x2)	# 2288
	addi	x2, x2, -208	# 2288
	jal		x1, min_caml_create_array	# 2288
	addi	x2, x2, 208	# 2288
	lw		x1, -204(x2)	# 2288
	lw		x5, -64(x2)	# 2289
	lw		x6, -4(x2)	# 2289
	sw		x4, -204(x2)	# 2289
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -208(x2)	# 2289
	addi	x2, x2, -212	# 2289
	jal		x1, min_caml_create_array	# 2289
	addi	x2, x2, 212	# 2289
	lw		x1, -208(x2)	# 2289
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -208(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -212(x2)	# 2274
	addi	x2, x2, -216	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 216	# 2274
	lw		x1, -212(x2)	# 2274
	addi	x5, x4, 0	# 2274
	lw		x4, -64(x2)	# 2275
	sw		x1, -212(x2)	# 2275
	addi	x2, x2, -216	# 2275
	jal		x1, min_caml_create_array	# 2275
	addi	x2, x2, 216	# 2275
	lw		x1, -212(x2)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	sw		x4, -212(x2)	# 2276
	addi	x4, x5, 0
	sw		x1, -216(x2)	# 2276
	addi	x2, x2, -220	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 220	# 2276
	lw		x1, -216(x2)	# 2276
	lw		x5, 0(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -212(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	lw		x4, -20(x2)	# 2277
	sw		x1, -216(x2)	# 2277
	addi	x2, x2, -220	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 220	# 2277
	lw		x1, -216(x2)	# 2277
	lw		x5, -48(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -212(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -8(x2)	# 2278
	lw		x4, -20(x2)	# 2278
	sw		x1, -216(x2)	# 2278
	addi	x2, x2, -220	# 2278
	jal		x1, min_caml_create_float_array	# 2278
	addi	x2, x2, 220	# 2278
	lw		x1, -216(x2)	# 2278
	lw		x5, -20(x2)	# 2278
	mul		x6, x30, x5	# 2278
	lw		x7, -212(x2)	# 2278
	add		x6, x7, x6	# 2278
	sw		x4, 0(x6)	# 2278
	flw		f1, -8(x2)	# 2279
	addi	x4, x5, 0
	sw		x1, -216(x2)	# 2279
	addi	x2, x2, -220	# 2279
	jal		x1, min_caml_create_float_array	# 2279
	addi	x2, x2, 220	# 2279
	lw		x1, -216(x2)	# 2279
	lw		x5, -160(x2)	# 2279
	mul		x6, x30, x5	# 2279
	lw		x7, -212(x2)	# 2279
	add		x6, x7, x6	# 2279
	sw		x4, 0(x6)	# 2279
	flw		f1, -8(x2)	# 2274
	lw		x4, -20(x2)	# 2274
	sw		x1, -216(x2)	# 2274
	addi	x2, x2, -220	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 220	# 2274
	lw		x1, -216(x2)	# 2274
	addi	x5, x4, 0	# 2274
	lw		x4, -64(x2)	# 2275
	sw		x1, -216(x2)	# 2275
	addi	x2, x2, -220	# 2275
	jal		x1, min_caml_create_array	# 2275
	addi	x2, x2, 220	# 2275
	lw		x1, -216(x2)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	sw		x4, -216(x2)	# 2276
	addi	x4, x5, 0
	sw		x1, -220(x2)	# 2276
	addi	x2, x2, -224	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 224	# 2276
	lw		x1, -220(x2)	# 2276
	lw		x5, 0(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -216(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	lw		x4, -20(x2)	# 2277
	sw		x1, -220(x2)	# 2277
	addi	x2, x2, -224	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 224	# 2277
	lw		x1, -220(x2)	# 2277
	lw		x5, -48(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -216(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -8(x2)	# 2278
	lw		x4, -20(x2)	# 2278
	sw		x1, -220(x2)	# 2278
	addi	x2, x2, -224	# 2278
	jal		x1, min_caml_create_float_array	# 2278
	addi	x2, x2, 224	# 2278
	lw		x1, -220(x2)	# 2278
	lw		x5, -20(x2)	# 2278
	mul		x6, x30, x5	# 2278
	lw		x7, -216(x2)	# 2278
	add		x6, x7, x6	# 2278
	sw		x4, 0(x6)	# 2278
	flw		f1, -8(x2)	# 2279
	addi	x4, x5, 0
	sw		x1, -220(x2)	# 2279
	addi	x2, x2, -224	# 2279
	jal		x1, min_caml_create_float_array	# 2279
	addi	x2, x2, 224	# 2279
	lw		x1, -220(x2)	# 2279
	lw		x5, -160(x2)	# 2279
	mul		x6, x30, x5	# 2279
	lw		x7, -216(x2)	# 2279
	add		x6, x7, x6	# 2279
	sw		x4, 0(x6)	# 2279
	lw		x4, 0(x2)	# 2292
	lw		x6, -4(x2)	# 2292
	addi	x5, x6, 0
	sw		x1, -220(x2)	# 2292
	addi	x2, x2, -224	# 2292
	jal		x1, min_caml_create_array	# 2292
	addi	x2, x2, 224	# 2292
	lw		x1, -220(x2)	# 2292
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -220(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -224(x2)	# 2274
	addi	x2, x2, -228	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 228	# 2274
	lw		x1, -224(x2)	# 2274
	addi	x5, x4, 0	# 2274
	lw		x4, -64(x2)	# 2275
	sw		x1, -224(x2)	# 2275
	addi	x2, x2, -228	# 2275
	jal		x1, min_caml_create_array	# 2275
	addi	x2, x2, 228	# 2275
	lw		x1, -224(x2)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	sw		x4, -224(x2)	# 2276
	addi	x4, x5, 0
	sw		x1, -228(x2)	# 2276
	addi	x2, x2, -232	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 232	# 2276
	lw		x1, -228(x2)	# 2276
	lw		x5, 0(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -224(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	lw		x4, -20(x2)	# 2277
	sw		x1, -228(x2)	# 2277
	addi	x2, x2, -232	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 232	# 2277
	lw		x1, -228(x2)	# 2277
	lw		x5, -48(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -224(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -8(x2)	# 2278
	lw		x4, -20(x2)	# 2278
	sw		x1, -228(x2)	# 2278
	addi	x2, x2, -232	# 2278
	jal		x1, min_caml_create_float_array	# 2278
	addi	x2, x2, 232	# 2278
	lw		x1, -228(x2)	# 2278
	lw		x5, -20(x2)	# 2278
	mul		x6, x30, x5	# 2278
	lw		x7, -224(x2)	# 2278
	add		x6, x7, x6	# 2278
	sw		x4, 0(x6)	# 2278
	flw		f1, -8(x2)	# 2279
	addi	x4, x5, 0
	sw		x1, -228(x2)	# 2279
	addi	x2, x2, -232	# 2279
	jal		x1, min_caml_create_float_array	# 2279
	addi	x2, x2, 232	# 2279
	lw		x1, -228(x2)	# 2279
	lw		x5, -160(x2)	# 2279
	mul		x6, x30, x5	# 2279
	lw		x7, -224(x2)	# 2279
	add		x6, x7, x6	# 2279
	sw		x4, 0(x6)	# 2279
	addi	x4, x3, 0	# 2294
	addi	x3, x3, 32	# 2294
	sw		x7, 28(x4)	# 2294
	lw		x6, -220(x2)	# 2294
	sw		x6, 24(x4)	# 2294
	lw		x6, -216(x2)	# 2294
	sw		x6, 20(x4)	# 2294
	lw		x6, -212(x2)	# 2294
	sw		x6, 16(x4)	# 2294
	lw		x6, -208(x2)	# 2294
	sw		x6, 12(x4)	# 2294
	lw		x6, -204(x2)	# 2294
	sw		x6, 8(x4)	# 2294
	lw		x6, -200(x2)	# 2294
	sw		x6, 4(x4)	# 2294
	lw		x6, -196(x2)	# 2294
	sw		x6, 0(x4)	# 2294
	lw		x6, -192(x2)	# 2308
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -228(x2)	# 2308
	addi	x2, x2, -232	# 2308
	jal		x1, min_caml_create_array	# 2308
	addi	x2, x2, 232	# 2308
	lw		x1, -228(x2)	# 2308
	lw		x5, -4(x2)	# 2309
	mul		x6, x30, x5	# 2309
	addi	x6, x6, 60616	# 2309
	lw		x6, 0(x6)	# 2309
	lw		x7, -48(x2)	# 2309
	sub		x6, x6, x7	# 2309
	lw		x29, -140(x2)	# 2309
	addi	x5, x6, 0
	sw		x1, -228(x2)	# 2309
	addi	x2, x2, -232	# 2309
	lw		x31, 0(x29)	# 2309
	jalr	x1, x31, 0	# 2309
	addi	x2, x2, 232	# 2309
	lw		x1, -228(x2)	# 2309
	lw		x5, -4(x2)	# 2308
	mul		x6, x30, x5	# 2308
	addi	x6, x6, 60616	# 2308
	lw		x6, 0(x6)	# 2308
	flw		f1, -8(x2)	# 2286
	lw		x7, -20(x2)	# 2286
	sw		x4, -228(x2)	# 2286
	sw		x6, -232(x2)	# 2286
	addi	x4, x7, 0
	sw		x1, -236(x2)	# 2286
	addi	x2, x2, -240	# 2286
	jal		x1, min_caml_create_float_array	# 2286
	addi	x2, x2, 240	# 2286
	lw		x1, -236(x2)	# 2286
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -236(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -240(x2)	# 2274
	addi	x2, x2, -244	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 244	# 2274
	lw		x1, -240(x2)	# 2274
	addi	x5, x4, 0	# 2274
	lw		x4, -64(x2)	# 2275
	sw		x1, -240(x2)	# 2275
	addi	x2, x2, -244	# 2275
	jal		x1, min_caml_create_array	# 2275
	addi	x2, x2, 244	# 2275
	lw		x1, -240(x2)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	sw		x4, -240(x2)	# 2276
	addi	x4, x5, 0
	sw		x1, -244(x2)	# 2276
	addi	x2, x2, -248	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 248	# 2276
	lw		x1, -244(x2)	# 2276
	lw		x5, 0(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -240(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	lw		x4, -20(x2)	# 2277
	sw		x1, -244(x2)	# 2277
	addi	x2, x2, -248	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 248	# 2277
	lw		x1, -244(x2)	# 2277
	lw		x5, -48(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -240(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -8(x2)	# 2278
	lw		x4, -20(x2)	# 2278
	sw		x1, -244(x2)	# 2278
	addi	x2, x2, -248	# 2278
	jal		x1, min_caml_create_float_array	# 2278
	addi	x2, x2, 248	# 2278
	lw		x1, -244(x2)	# 2278
	lw		x5, -20(x2)	# 2278
	mul		x6, x30, x5	# 2278
	lw		x7, -240(x2)	# 2278
	add		x6, x7, x6	# 2278
	sw		x4, 0(x6)	# 2278
	flw		f1, -8(x2)	# 2279
	addi	x4, x5, 0
	sw		x1, -244(x2)	# 2279
	addi	x2, x2, -248	# 2279
	jal		x1, min_caml_create_float_array	# 2279
	addi	x2, x2, 248	# 2279
	lw		x1, -244(x2)	# 2279
	lw		x5, -160(x2)	# 2279
	mul		x6, x30, x5	# 2279
	lw		x7, -240(x2)	# 2279
	add		x6, x7, x6	# 2279
	sw		x4, 0(x6)	# 2279
	lw		x4, -64(x2)	# 2288
	lw		x6, -4(x2)	# 2288
	addi	x5, x6, 0
	sw		x1, -244(x2)	# 2288
	addi	x2, x2, -248	# 2288
	jal		x1, min_caml_create_array	# 2288
	addi	x2, x2, 248	# 2288
	lw		x1, -244(x2)	# 2288
	lw		x5, -64(x2)	# 2289
	lw		x6, -4(x2)	# 2289
	sw		x4, -244(x2)	# 2289
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -248(x2)	# 2289
	addi	x2, x2, -252	# 2289
	jal		x1, min_caml_create_array	# 2289
	addi	x2, x2, 252	# 2289
	lw		x1, -248(x2)	# 2289
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -248(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -252(x2)	# 2274
	addi	x2, x2, -256	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 256	# 2274
	lw		x1, -252(x2)	# 2274
	addi	x5, x4, 0	# 2274
	lw		x4, -64(x2)	# 2275
	sw		x1, -252(x2)	# 2275
	addi	x2, x2, -256	# 2275
	jal		x1, min_caml_create_array	# 2275
	addi	x2, x2, 256	# 2275
	lw		x1, -252(x2)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	sw		x4, -252(x2)	# 2276
	addi	x4, x5, 0
	sw		x1, -256(x2)	# 2276
	addi	x2, x2, -260	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 260	# 2276
	lw		x1, -256(x2)	# 2276
	lw		x5, 0(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -252(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	lw		x4, -20(x2)	# 2277
	sw		x1, -256(x2)	# 2277
	addi	x2, x2, -260	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 260	# 2277
	lw		x1, -256(x2)	# 2277
	lw		x5, -48(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -252(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -8(x2)	# 2278
	lw		x4, -20(x2)	# 2278
	sw		x1, -256(x2)	# 2278
	addi	x2, x2, -260	# 2278
	jal		x1, min_caml_create_float_array	# 2278
	addi	x2, x2, 260	# 2278
	lw		x1, -256(x2)	# 2278
	lw		x5, -20(x2)	# 2278
	mul		x6, x30, x5	# 2278
	lw		x7, -252(x2)	# 2278
	add		x6, x7, x6	# 2278
	sw		x4, 0(x6)	# 2278
	flw		f1, -8(x2)	# 2279
	addi	x4, x5, 0
	sw		x1, -256(x2)	# 2279
	addi	x2, x2, -260	# 2279
	jal		x1, min_caml_create_float_array	# 2279
	addi	x2, x2, 260	# 2279
	lw		x1, -256(x2)	# 2279
	lw		x5, -160(x2)	# 2279
	mul		x6, x30, x5	# 2279
	lw		x7, -252(x2)	# 2279
	add		x6, x7, x6	# 2279
	sw		x4, 0(x6)	# 2279
	flw		f1, -8(x2)	# 2274
	lw		x4, -20(x2)	# 2274
	sw		x1, -256(x2)	# 2274
	addi	x2, x2, -260	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 260	# 2274
	lw		x1, -256(x2)	# 2274
	addi	x5, x4, 0	# 2274
	lw		x4, -64(x2)	# 2275
	sw		x1, -256(x2)	# 2275
	addi	x2, x2, -260	# 2275
	jal		x1, min_caml_create_array	# 2275
	addi	x2, x2, 260	# 2275
	lw		x1, -256(x2)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	sw		x4, -256(x2)	# 2276
	addi	x4, x5, 0
	sw		x1, -260(x2)	# 2276
	addi	x2, x2, -264	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 264	# 2276
	lw		x1, -260(x2)	# 2276
	lw		x5, 0(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -256(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	lw		x4, -20(x2)	# 2277
	sw		x1, -260(x2)	# 2277
	addi	x2, x2, -264	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 264	# 2277
	lw		x1, -260(x2)	# 2277
	lw		x5, -48(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -256(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -8(x2)	# 2278
	lw		x4, -20(x2)	# 2278
	sw		x1, -260(x2)	# 2278
	addi	x2, x2, -264	# 2278
	jal		x1, min_caml_create_float_array	# 2278
	addi	x2, x2, 264	# 2278
	lw		x1, -260(x2)	# 2278
	lw		x5, -20(x2)	# 2278
	mul		x6, x30, x5	# 2278
	lw		x7, -256(x2)	# 2278
	add		x6, x7, x6	# 2278
	sw		x4, 0(x6)	# 2278
	flw		f1, -8(x2)	# 2279
	addi	x4, x5, 0
	sw		x1, -260(x2)	# 2279
	addi	x2, x2, -264	# 2279
	jal		x1, min_caml_create_float_array	# 2279
	addi	x2, x2, 264	# 2279
	lw		x1, -260(x2)	# 2279
	lw		x5, -160(x2)	# 2279
	mul		x6, x30, x5	# 2279
	lw		x7, -256(x2)	# 2279
	add		x6, x7, x6	# 2279
	sw		x4, 0(x6)	# 2279
	lw		x4, 0(x2)	# 2292
	lw		x6, -4(x2)	# 2292
	addi	x5, x6, 0
	sw		x1, -260(x2)	# 2292
	addi	x2, x2, -264	# 2292
	jal		x1, min_caml_create_array	# 2292
	addi	x2, x2, 264	# 2292
	lw		x1, -260(x2)	# 2292
	flw		f1, -8(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -260(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -264(x2)	# 2274
	addi	x2, x2, -268	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 268	# 2274
	lw		x1, -264(x2)	# 2274
	addi	x5, x4, 0	# 2274
	lw		x4, -64(x2)	# 2275
	sw		x1, -264(x2)	# 2275
	addi	x2, x2, -268	# 2275
	jal		x1, min_caml_create_array	# 2275
	addi	x2, x2, 268	# 2275
	lw		x1, -264(x2)	# 2275
	flw		f1, -8(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	sw		x4, -264(x2)	# 2276
	addi	x4, x5, 0
	sw		x1, -268(x2)	# 2276
	addi	x2, x2, -272	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 272	# 2276
	lw		x1, -268(x2)	# 2276
	lw		x5, 0(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -264(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -8(x2)	# 2277
	lw		x4, -20(x2)	# 2277
	sw		x1, -268(x2)	# 2277
	addi	x2, x2, -272	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 272	# 2277
	lw		x1, -268(x2)	# 2277
	lw		x5, -48(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -264(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -8(x2)	# 2278
	lw		x4, -20(x2)	# 2278
	sw		x1, -268(x2)	# 2278
	addi	x2, x2, -272	# 2278
	jal		x1, min_caml_create_float_array	# 2278
	addi	x2, x2, 272	# 2278
	lw		x1, -268(x2)	# 2278
	lw		x5, -20(x2)	# 2278
	mul		x6, x30, x5	# 2278
	lw		x7, -264(x2)	# 2278
	add		x6, x7, x6	# 2278
	sw		x4, 0(x6)	# 2278
	flw		f1, -8(x2)	# 2279
	addi	x4, x5, 0
	sw		x1, -268(x2)	# 2279
	addi	x2, x2, -272	# 2279
	jal		x1, min_caml_create_float_array	# 2279
	addi	x2, x2, 272	# 2279
	lw		x1, -268(x2)	# 2279
	lw		x5, -160(x2)	# 2279
	mul		x6, x30, x5	# 2279
	lw		x7, -264(x2)	# 2279
	add		x6, x7, x6	# 2279
	sw		x4, 0(x6)	# 2279
	addi	x4, x3, 0	# 2294
	addi	x3, x3, 32	# 2294
	sw		x7, 28(x4)	# 2294
	lw		x6, -260(x2)	# 2294
	sw		x6, 24(x4)	# 2294
	lw		x6, -256(x2)	# 2294
	sw		x6, 20(x4)	# 2294
	lw		x6, -252(x2)	# 2294
	sw		x6, 16(x4)	# 2294
	lw		x6, -248(x2)	# 2294
	sw		x6, 12(x4)	# 2294
	lw		x6, -244(x2)	# 2294
	sw		x6, 8(x4)	# 2294
	lw		x6, -240(x2)	# 2294
	sw		x6, 4(x4)	# 2294
	lw		x6, -236(x2)	# 2294
	sw		x6, 0(x4)	# 2294
	lw		x6, -232(x2)	# 2308
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -268(x2)	# 2308
	addi	x2, x2, -272	# 2308
	jal		x1, min_caml_create_array	# 2308
	addi	x2, x2, 272	# 2308
	lw		x1, -268(x2)	# 2308
	lw		x5, -4(x2)	# 2309
	mul		x6, x30, x5	# 2309
	addi	x6, x6, 60616	# 2309
	lw		x6, 0(x6)	# 2309
	lw		x7, -48(x2)	# 2309
	sub		x6, x6, x7	# 2309
	lw		x29, -140(x2)	# 2309
	addi	x5, x6, 0
	sw		x1, -268(x2)	# 2309
	addi	x2, x2, -272	# 2309
	lw		x31, 0(x29)	# 2309
	jalr	x1, x31, 0	# 2309
	addi	x2, x2, 272	# 2309
	lw		x1, -268(x2)	# 2309
	sw		x4, -268(x2)	# 686
	sw		x1, -272(x2)	# 686
	addi	x2, x2, -276	# 686
	jal		x1, min_caml_read_float	# 686
	addi	x2, x2, 276	# 686
	lw		x1, -272(x2)	# 686
	lw		x4, -4(x2)	# 686
	mul		x5, x30, x4	# 686
	addi	x5, x5, 60288	# 686
	fsw		f1, 0(x5)	# 686
	sw		x1, -272(x2)	# 687
	addi	x2, x2, -276	# 687
	jal		x1, min_caml_read_float	# 687
	addi	x2, x2, 276	# 687
	lw		x1, -272(x2)	# 687
	lw		x4, 0(x2)	# 687
	mul		x5, x30, x4	# 687
	addi	x5, x5, 60288	# 687
	fsw		f1, 0(x5)	# 687
	sw		x1, -272(x2)	# 688
	addi	x2, x2, -276	# 688
	jal		x1, min_caml_read_float	# 688
	addi	x2, x2, 276	# 688
	lw		x1, -272(x2)	# 688
	lw		x4, -48(x2)	# 688
	mul		x5, x30, x4	# 688
	addi	x5, x5, 60288	# 688
	fsw		f1, 0(x5)	# 688
	sw		x1, -272(x2)	# 690
	addi	x2, x2, -276	# 690
	jal		x1, min_caml_read_float	# 690
	addi	x2, x2, 276	# 690
	lw		x1, -272(x2)	# 690
	fadd	f2, f0, f24	# 679
	fmul	f1, f1, f2	# 679
	lw		x29, -136(x2)	# 691
	fsw		f2, -272(x2)	# 691
	fsw		f1, -276(x2)	# 691
	sw		x1, -280(x2)	# 691
	addi	x2, x2, -284	# 691
	lw		x31, 0(x29)	# 691
	jalr	x1, x31, 0	# 691
	addi	x2, x2, 284	# 691
	lw		x1, -280(x2)	# 691
	flw		f2, -276(x2)	# 692
	lw		x29, -132(x2)	# 692
	fsw		f1, -280(x2)	# 692
	fadd	f1, f0, f2
	sw		x1, -284(x2)	# 692
	addi	x2, x2, -288	# 692
	lw		x31, 0(x29)	# 692
	jalr	x1, x31, 0	# 692
	addi	x2, x2, 288	# 692
	lw		x1, -284(x2)	# 692
	fsw		f1, -284(x2)	# 693
	sw		x1, -288(x2)	# 693
	addi	x2, x2, -292	# 693
	jal		x1, min_caml_read_float	# 693
	addi	x2, x2, 292	# 693
	lw		x1, -288(x2)	# 693
	flw		f2, -272(x2)	# 679
	fmul	f1, f1, f2	# 679
	lw		x29, -136(x2)	# 694
	fsw		f1, -288(x2)	# 694
	sw		x1, -292(x2)	# 694
	addi	x2, x2, -296	# 694
	lw		x31, 0(x29)	# 694
	jalr	x1, x31, 0	# 694
	addi	x2, x2, 296	# 694
	lw		x1, -292(x2)	# 694
	flw		f2, -288(x2)	# 695
	lw		x29, -132(x2)	# 695
	fsw		f1, -292(x2)	# 695
	fadd	f1, f0, f2
	sw		x1, -296(x2)	# 695
	addi	x2, x2, -300	# 695
	lw		x31, 0(x29)	# 695
	jalr	x1, x31, 0	# 695
	addi	x2, x2, 300	# 695
	lw		x1, -296(x2)	# 695
	flw		f2, -280(x2)	# 697
	fmul	f3, f2, f1	# 697
	lui		x4, %hi(l.28616)	# 697
	ori		x4, x0, %lo(l.28616)	# 697
	flw		f4, 0(x4)	# 697
	fmul	f3, f3, f4	# 697
	lw		x4, -4(x2)	# 697
	mul		x5, x30, x4	# 697
	addi	x5, x5, 60684	# 697
	fsw		f3, 0(x5)	# 697
	lui		x5, %hi(l.28620)	# 698
	ori		x5, x0, %lo(l.28620)	# 698
	flw		f3, 0(x5)	# 698
	flw		f5, -284(x2)	# 698
	fmul	f3, f5, f3	# 698
	lw		x5, 0(x2)	# 698
	mul		x6, x30, x5	# 698
	addi	x6, x6, 60684	# 698
	fsw		f3, 0(x6)	# 698
	flw		f3, -292(x2)	# 699
	fmul	f6, f2, f3	# 699
	fmul	f4, f6, f4	# 699
	lw		x6, -48(x2)	# 699
	mul		x7, x30, x6	# 699
	addi	x7, x7, 60684	# 699
	fsw		f4, 0(x7)	# 699
	mul		x7, x30, x4	# 701
	addi	x7, x7, 60660	# 701
	fsw		f3, 0(x7)	# 701
	mul		x7, x30, x5	# 702
	addi	x7, x7, 60660	# 702
	flw		f4, -8(x2)	# 702
	fsw		f4, 0(x7)	# 702
	fsub	f6, f0, f1	# 123
	mul		x7, x30, x6	# 703
	addi	x7, x7, 60660	# 703
	fsw		f6, 0(x7)	# 703
	fsub	f5, f0, f5	# 123
	fmul	f1, f5, f1	# 705
	mul		x7, x30, x4	# 705
	addi	x7, x7, 60672	# 705
	fsw		f1, 0(x7)	# 705
	fsub	f1, f0, f2	# 123
	mul		x7, x30, x5	# 706
	addi	x7, x7, 60672	# 706
	fsw		f1, 0(x7)	# 706
	fmul	f1, f5, f3	# 707
	mul		x7, x30, x6	# 707
	addi	x7, x7, 60672	# 707
	fsw		f1, 0(x7)	# 707
	mul		x7, x30, x4	# 709
	addi	x7, x7, 60288	# 709
	flw		f1, 0(x7)	# 709
	mul		x7, x30, x4	# 709
	addi	x7, x7, 60684	# 709
	flw		f2, 0(x7)	# 709
	fsub	f1, f1, f2	# 709
	mul		x7, x30, x4	# 709
	addi	x7, x7, 60300	# 709
	fsw		f1, 0(x7)	# 709
	mul		x7, x30, x5	# 710
	addi	x7, x7, 60288	# 710
	flw		f1, 0(x7)	# 710
	mul		x7, x30, x5	# 710
	addi	x7, x7, 60684	# 710
	flw		f2, 0(x7)	# 710
	fsub	f1, f1, f2	# 710
	mul		x7, x30, x5	# 710
	addi	x7, x7, 60300	# 710
	fsw		f1, 0(x7)	# 710
	mul		x7, x30, x6	# 711
	addi	x7, x7, 60288	# 711
	flw		f1, 0(x7)	# 711
	mul		x7, x30, x6	# 711
	addi	x7, x7, 60684	# 711
	flw		f2, 0(x7)	# 711
	fsub	f1, f1, f2	# 711
	mul		x7, x30, x6	# 711
	addi	x7, x7, 60300	# 711
	fsw		f1, 0(x7)	# 711
	sw		x1, -296(x2)	# 718
	addi	x2, x2, -300	# 718
	jal		x1, min_caml_read_int	# 718
	addi	x2, x2, 300	# 718
	lw		x1, -296(x2)	# 718
	sw		x1, -296(x2)	# 721
	addi	x2, x2, -300	# 721
	jal		x1, min_caml_read_float	# 721
	addi	x2, x2, 300	# 721
	lw		x1, -296(x2)	# 721
	flw		f2, -272(x2)	# 679
	fmul	f1, f1, f2	# 679
	lw		x29, -132(x2)	# 722
	fsw		f1, -296(x2)	# 722
	sw		x1, -300(x2)	# 722
	addi	x2, x2, -304	# 722
	lw		x31, 0(x29)	# 722
	jalr	x1, x31, 0	# 722
	addi	x2, x2, 304	# 722
	lw		x1, -300(x2)	# 722
	fsub	f1, f0, f1	# 123
	lw		x4, 0(x2)	# 723
	mul		x5, x30, x4	# 723
	addi	x5, x5, 60312	# 723
	fsw		f1, 0(x5)	# 723
	sw		x1, -300(x2)	# 724
	addi	x2, x2, -304	# 724
	jal		x1, min_caml_read_float	# 724
	addi	x2, x2, 304	# 724
	lw		x1, -300(x2)	# 724
	flw		f2, -272(x2)	# 679
	fmul	f1, f1, f2	# 679
	flw		f2, -296(x2)	# 725
	lw		x29, -136(x2)	# 725
	fsw		f1, -300(x2)	# 725
	fadd	f1, f0, f2
	sw		x1, -304(x2)	# 725
	addi	x2, x2, -308	# 725
	lw		x31, 0(x29)	# 725
	jalr	x1, x31, 0	# 725
	addi	x2, x2, 308	# 725
	lw		x1, -304(x2)	# 725
	flw		f2, -300(x2)	# 726
	lw		x29, -132(x2)	# 726
	fsw		f1, -304(x2)	# 726
	fadd	f1, f0, f2
	sw		x1, -308(x2)	# 726
	addi	x2, x2, -312	# 726
	lw		x31, 0(x29)	# 726
	jalr	x1, x31, 0	# 726
	addi	x2, x2, 312	# 726
	lw		x1, -308(x2)	# 726
	flw		f2, -304(x2)	# 727
	fmul	f1, f2, f1	# 727
	lw		x4, -4(x2)	# 727
	mul		x5, x30, x4	# 727
	addi	x5, x5, 60312	# 727
	fsw		f1, 0(x5)	# 727
	flw		f1, -300(x2)	# 728
	lw		x29, -136(x2)	# 728
	sw		x1, -308(x2)	# 728
	addi	x2, x2, -312	# 728
	lw		x31, 0(x29)	# 728
	jalr	x1, x31, 0	# 728
	addi	x2, x2, 312	# 728
	lw		x1, -308(x2)	# 728
	flw		f2, -304(x2)	# 729
	fmul	f1, f2, f1	# 729
	lw		x4, -48(x2)	# 729
	mul		x5, x30, x4	# 729
	addi	x5, x5, 60312	# 729
	fsw		f1, 0(x5)	# 729
	sw		x1, -308(x2)	# 730
	addi	x2, x2, -312	# 730
	jal		x1, min_caml_read_float	# 730
	addi	x2, x2, 312	# 730
	lw		x1, -308(x2)	# 730
	lw		x4, -4(x2)	# 730
	mul		x5, x30, x4	# 730
	addi	x5, x5, 60324	# 730
	fsw		f1, 0(x5)	# 730
	lw		x29, -128(x2)	# 872
	sw		x1, -308(x2)	# 872
	addi	x2, x2, -312	# 872
	lw		x31, 0(x29)	# 872
	jalr	x1, x31, 0	# 872
	addi	x2, x2, 312	# 872
	lw		x1, -308(x2)	# 872
	lw		x4, -4(x2)	# 909
	lw		x29, -124(x2)	# 909
	sw		x1, -308(x2)	# 909
	addi	x2, x2, -312	# 909
	lw		x31, 0(x29)	# 909
	jalr	x1, x31, 0	# 909
	addi	x2, x2, 312	# 909
	lw		x1, -308(x2)	# 909
	lw		x4, -4(x2)	# 910
	lw		x29, -120(x2)	# 910
	sw		x1, -308(x2)	# 910
	addi	x2, x2, -312	# 910
	lw		x31, 0(x29)	# 910
	jalr	x1, x31, 0	# 910
	addi	x2, x2, 312	# 910
	lw		x1, -308(x2)	# 910
	lw		x5, -4(x2)	# 910
	mul		x6, x30, x5	# 910
	addi	x6, x6, 60536	# 910
	sw		x4, 0(x6)	# 910
	addi	x4, x0, 80	# 2117
	sw		x1, -308(x2)	# 2117
	addi	x2, x2, -312	# 2117
	jal		x1, min_caml_print_char	# 2117
	addi	x2, x2, 312	# 2117
	lw		x1, -308(x2)	# 2117
	addi	x4, x0, 51	# 2118
	sw		x1, -308(x2)	# 2118
	addi	x2, x2, -312	# 2118
	jal		x1, min_caml_print_char	# 2118
	addi	x2, x2, 312	# 2118
	lw		x1, -308(x2)	# 2118
	addi	x4, x0, 10	# 2119
	sw		x4, -308(x2)	# 2119
	sw		x1, -312(x2)	# 2119
	addi	x2, x2, -316	# 2119
	jal		x1, min_caml_print_char	# 2119
	addi	x2, x2, 316	# 2119
	lw		x1, -312(x2)	# 2119
	lw		x4, -4(x2)	# 2120
	mul		x5, x30, x4	# 2120
	addi	x5, x5, 60616	# 2120
	lw		x5, 0(x5)	# 2120
	addi	x4, x5, 0
	sw		x1, -312(x2)	# 2120
	addi	x2, x2, -316	# 2120
	jal		x1, min_caml_print_int	# 2120
	addi	x2, x2, 316	# 2120
	lw		x1, -312(x2)	# 2120
	addi	x4, x0, 32	# 2121
	sw		x4, -312(x2)	# 2121
	sw		x1, -316(x2)	# 2121
	addi	x2, x2, -320	# 2121
	jal		x1, min_caml_print_char	# 2121
	addi	x2, x2, 320	# 2121
	lw		x1, -316(x2)	# 2121
	lw		x4, 0(x2)	# 2122
	mul		x5, x30, x4	# 2122
	addi	x5, x5, 60616	# 2122
	lw		x5, 0(x5)	# 2122
	addi	x4, x5, 0
	sw		x1, -316(x2)	# 2122
	addi	x2, x2, -320	# 2122
	jal		x1, min_caml_print_int	# 2122
	addi	x2, x2, 320	# 2122
	lw		x1, -316(x2)	# 2122
	lw		x4, -312(x2)	# 2123
	sw		x1, -316(x2)	# 2123
	addi	x2, x2, -320	# 2123
	jal		x1, min_caml_print_char	# 2123
	addi	x2, x2, 320	# 2123
	lw		x1, -316(x2)	# 2123
	addi	x4, x0, 255	# 2124
	sw		x1, -316(x2)	# 2124
	addi	x2, x2, -320	# 2124
	jal		x1, min_caml_print_int	# 2124
	addi	x2, x2, 320	# 2124
	lw		x1, -316(x2)	# 2124
	lw		x4, -308(x2)	# 2125
	sw		x1, -316(x2)	# 2125
	addi	x2, x2, -320	# 2125
	jal		x1, min_caml_print_char	# 2125
	addi	x2, x2, 320	# 2125
	lw		x1, -316(x2)	# 2125
	lw		x4, -160(x2)	# 2423
	lw		x29, -116(x2)	# 2423
	sw		x1, -316(x2)	# 2423
	addi	x2, x2, -320	# 2423
	lw		x31, 0(x29)	# 2423
	jalr	x1, x31, 0	# 2423
	addi	x2, x2, 320	# 2423
	lw		x1, -316(x2)	# 2423
	addi	x4, x0, 9	# 2424
	lw		x5, -4(x2)	# 2424
	lw		x29, -112(x2)	# 2424
	addi	x6, x5, 0
	sw		x1, -316(x2)	# 2424
	addi	x2, x2, -320	# 2424
	lw		x31, 0(x29)	# 2424
	jalr	x1, x31, 0	# 2424
	addi	x2, x2, 320	# 2424
	lw		x1, -316(x2)	# 2424
	lw		x4, -160(x2)	# 2425
	lw		x29, -108(x2)	# 2425
	sw		x1, -316(x2)	# 2425
	addi	x2, x2, -320	# 2425
	lw		x31, 0(x29)	# 2425
	jalr	x1, x31, 0	# 2425
	addi	x2, x2, 320	# 2425
	lw		x1, -316(x2)	# 2425
	lw		x4, -4(x2)	# 261
	mul		x5, x30, x4	# 261
	addi	x5, x5, 60312	# 261
	flw		f1, 0(x5)	# 261
	mul		x5, x30, x4	# 261
	addi	x5, x5, 60736	# 261
	fsw		f1, 0(x5)	# 261
	lw		x5, 0(x2)	# 262
	mul		x6, x30, x5	# 262
	addi	x6, x6, 60312	# 262
	flw		f1, 0(x6)	# 262
	mul		x6, x30, x5	# 262
	addi	x6, x6, 60736	# 262
	fsw		f1, 0(x6)	# 262
	lw		x6, -48(x2)	# 263
	mul		x7, x30, x6	# 263
	addi	x7, x7, 60312	# 263
	flw		f1, 0(x7)	# 263
	mul		x7, x30, x6	# 263
	addi	x7, x7, 60736	# 263
	fsw		f1, 0(x7)	# 263
	mul		x7, x30, x4	# 1289
	addi	x7, x7, 60000	# 1289
	lw		x7, 0(x7)	# 1289
	sub		x7, x7, x5	# 1289
	lw		x8, -80(x2)	# 1289
	lw		x29, -104(x2)	# 1289
	addi	x5, x7, 0
	addi	x4, x8, 0
	sw		x1, -316(x2)	# 1289
	addi	x2, x2, -320	# 1289
	lw		x31, 0(x29)	# 1289
	jalr	x1, x31, 0	# 1289
	addi	x2, x2, 320	# 1289
	lw		x1, -316(x2)	# 1289
	lw		x4, -4(x2)	# 2507
	mul		x5, x30, x4	# 2507
	addi	x5, x5, 60000	# 2507
	lw		x5, 0(x5)	# 2507
	lw		x6, 0(x2)	# 2507
	sub		x5, x5, x6	# 2507
	ble		x4, x5, ble.32447	# 2472
	jal		x0, ble_cont.32446	# 2472
ble.32447:
	mul		x7, x30, x5	# 2473
	addi	x7, x7, 60048	# 2473
	lw		x7, 0(x7)	# 2473
	lw		x8, 8(x7)	# 365
	lw		x9, -48(x2)	# 2474
	beq		x8, x9, beq.32449	# 2474
	jal		x0, beq_cont.32448	# 2474
beq.32449:
	lw		x8, 28(x7)	# 463
	mul		x10, x30, x4	# 468
	add		x8, x8, x10	# 468
	flw		f1, 0(x8)	# 468
	fadd	f2, f0, f16	# 2475
	fle		x31, f2, f1	# 125
	beq		x31, x0, fle_else.32451	# 125
	jal		x0, fle_cont.32450	# 125
fle_else.32451:
	lw		x8, 4(x7)	# 355
	beq		x8, x6, beq.32453	# 2478
	beq		x8, x9, beq.32455	# 2480
	jal		x0, beq_cont.32454	# 2480
beq.32455:
	addi	x8, x0, 4	# 2457
	mul		x5, x5, x8	# 2457
	addi	x5, x5, 1	# 2457
	mul		x8, x30, x4	# 2458
	addi	x8, x8, 61736	# 2458
	lw		x8, 0(x8)	# 2458
	lw		x10, 28(x7)	# 463
	mul		x11, x30, x4	# 468
	add		x10, x10, x11	# 468
	flw		f1, 0(x10)	# 468
	fsub	f1, f2, f1	# 2459
	lw		x10, 16(x7)	# 423
	mul		x11, x30, x4	# 294
	addi	x11, x11, 60312	# 294
	flw		f2, 0(x11)	# 294
	mul		x11, x30, x4	# 294
	add		x11, x10, x11	# 294
	flw		f3, 0(x11)	# 294
	fmul	f2, f2, f3	# 294
	mul		x11, x30, x6	# 294
	addi	x11, x11, 60312	# 294
	flw		f3, 0(x11)	# 294
	mul		x11, x30, x6	# 294
	add		x11, x10, x11	# 294
	flw		f4, 0(x11)	# 294
	fmul	f3, f3, f4	# 294
	fadd	f2, f2, f3	# 294
	mul		x11, x30, x9	# 294
	addi	x11, x11, 60312	# 294
	flw		f3, 0(x11)	# 294
	mul		x11, x30, x9	# 294
	add		x10, x10, x11	# 294
	flw		f4, 0(x10)	# 294
	fmul	f3, f3, f4	# 294
	fadd	f2, f2, f3	# 294
	lui		x10, %hi(l.25849)	# 2463
	ori		x10, x0, %lo(l.25849)	# 2463
	flw		f3, 0(x10)	# 2463
	lw		x10, 16(x7)	# 393
	mul		x11, x30, x4	# 398
	add		x10, x10, x11	# 398
	flw		f4, 0(x10)	# 398
	fmul	f4, f3, f4	# 2463
	fmul	f4, f4, f2	# 2463
	mul		x10, x30, x4	# 2463
	addi	x10, x10, 60312	# 2463
	flw		f5, 0(x10)	# 2463
	fsub	f4, f4, f5	# 2463
	lw		x10, 16(x7)	# 403
	mul		x11, x30, x6	# 408
	add		x10, x10, x11	# 408
	flw		f5, 0(x10)	# 408
	fmul	f5, f3, f5	# 2464
	fmul	f5, f5, f2	# 2464
	mul		x10, x30, x6	# 2464
	addi	x10, x10, 60312	# 2464
	flw		f6, 0(x10)	# 2464
	fsub	f5, f5, f6	# 2464
	lw		x7, 16(x7)	# 413
	mul		x10, x30, x9	# 418
	add		x7, x7, x10	# 418
	flw		f6, 0(x7)	# 418
	fmul	f3, f3, f6	# 2465
	fmul	f2, f3, f2	# 2465
	mul		x7, x30, x9	# 2465
	addi	x7, x7, 60312	# 2465
	flw		f3, 0(x7)	# 2465
	fsub	f2, f2, f3	# 2465
	flw		f3, -8(x2)	# 2384
	lw		x7, -20(x2)	# 2384
	sw		x8, -316(x2)	# 2384
	sw		x5, -320(x2)	# 2384
	fsw		f1, -324(x2)	# 2384
	fsw		f2, -328(x2)	# 2384
	fsw		f5, -332(x2)	# 2384
	fsw		f4, -336(x2)	# 2384
	addi	x4, x7, 0
	fadd	f1, f0, f3
	sw		x1, -340(x2)	# 2384
	addi	x2, x2, -344	# 2384
	jal		x1, min_caml_create_float_array	# 2384
	addi	x2, x2, 344	# 2384
	lw		x1, -340(x2)	# 2384
	addi	x5, x4, 0	# 2384
	lw		x4, -4(x2)	# 2385
	mul		x6, x30, x4	# 2385
	addi	x6, x6, 60000	# 2385
	lw		x6, 0(x6)	# 2385
	sw		x5, -340(x2)	# 2385
	addi	x4, x6, 0
	sw		x1, -344(x2)	# 2385
	addi	x2, x2, -348	# 2385
	jal		x1, min_caml_create_array	# 2385
	addi	x2, x2, 348	# 2385
	lw		x1, -344(x2)	# 2385
	addi	x5, x3, 0	# 2386
	addi	x3, x3, 8	# 2386
	sw		x4, 4(x5)	# 2386
	lw		x4, -340(x2)	# 2386
	sw		x4, 0(x5)	# 2386
	lw		x6, -4(x2)	# 242
	mul		x7, x30, x6	# 242
	add		x7, x4, x7	# 242
	flw		f1, -336(x2)	# 242
	fsw		f1, 0(x7)	# 242
	lw		x7, 0(x2)	# 243
	mul		x8, x30, x7	# 243
	add		x8, x4, x8	# 243
	flw		f1, -332(x2)	# 243
	fsw		f1, 0(x8)	# 243
	lw		x8, -48(x2)	# 244
	mul		x9, x30, x8	# 244
	add		x4, x4, x9	# 244
	flw		f1, -328(x2)	# 244
	fsw		f1, 0(x4)	# 244
	mul		x4, x30, x6	# 1289
	addi	x4, x4, 60000	# 1289
	lw		x4, 0(x4)	# 1289
	sub		x4, x4, x7	# 1289
	lw		x29, -104(x2)	# 1289
	sw		x5, -344(x2)	# 1289
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -348(x2)	# 1289
	addi	x2, x2, -352	# 1289
	lw		x31, 0(x29)	# 1289
	jalr	x1, x31, 0	# 1289
	addi	x2, x2, 352	# 1289
	lw		x1, -348(x2)	# 1289
	addi	x4, x3, 0	# 2438
	addi	x3, x3, 12	# 2438
	flw		f1, -324(x2)	# 2438
	fsw		f1, 8(x4)	# 2438
	lw		x5, -344(x2)	# 2438
	sw		x5, 4(x4)	# 2438
	lw		x5, -320(x2)	# 2438
	sw		x5, 0(x4)	# 2438
	lw		x5, -316(x2)	# 2438
	mul		x6, x30, x5	# 2438
	addi	x6, x6, 61016	# 2438
	sw		x4, 0(x6)	# 2438
	addi	x4, x5, 1	# 2466
	lw		x5, -4(x2)	# 2466
	mul		x6, x30, x5	# 2466
	addi	x6, x6, 61736	# 2466
	sw		x4, 0(x6)	# 2466
beq_cont.32454:
	jal		x0, beq_cont.32452	# 2478
beq.32453:
	addi	x8, x0, 4	# 2443
	mul		x5, x5, x8	# 2443
	mul		x8, x30, x4	# 2444
	addi	x8, x8, 61736	# 2444
	lw		x8, 0(x8)	# 2444
	lw		x7, 28(x7)	# 463
	mul		x10, x30, x4	# 468
	add		x7, x7, x10	# 468
	flw		f1, 0(x7)	# 468
	fsub	f1, f2, f1	# 2445
	mul		x7, x30, x4	# 2446
	addi	x7, x7, 60312	# 2446
	flw		f2, 0(x7)	# 2446
	fsub	f2, f0, f2	# 123
	mul		x7, x30, x6	# 2447
	addi	x7, x7, 60312	# 2447
	flw		f3, 0(x7)	# 2447
	fsub	f3, f0, f3	# 123
	mul		x7, x30, x9	# 2448
	addi	x7, x7, 60312	# 2448
	flw		f4, 0(x7)	# 2448
	fsub	f4, f0, f4	# 123
	addi	x7, x5, 1	# 2449
	mul		x10, x30, x4	# 2449
	addi	x10, x10, 60312	# 2449
	flw		f5, 0(x10)	# 2449
	flw		f6, -8(x2)	# 2384
	lw		x10, -20(x2)	# 2384
	fsw		f2, -348(x2)	# 2384
	sw		x5, -352(x2)	# 2384
	sw		x8, -356(x2)	# 2384
	sw		x7, -360(x2)	# 2384
	fsw		f1, -364(x2)	# 2384
	fsw		f4, -368(x2)	# 2384
	fsw		f3, -372(x2)	# 2384
	fsw		f5, -376(x2)	# 2384
	addi	x4, x10, 0
	fadd	f1, f0, f6
	sw		x1, -380(x2)	# 2384
	addi	x2, x2, -384	# 2384
	jal		x1, min_caml_create_float_array	# 2384
	addi	x2, x2, 384	# 2384
	lw		x1, -380(x2)	# 2384
	addi	x5, x4, 0	# 2384
	lw		x4, -4(x2)	# 2385
	mul		x6, x30, x4	# 2385
	addi	x6, x6, 60000	# 2385
	lw		x6, 0(x6)	# 2385
	sw		x5, -380(x2)	# 2385
	addi	x4, x6, 0
	sw		x1, -384(x2)	# 2385
	addi	x2, x2, -388	# 2385
	jal		x1, min_caml_create_array	# 2385
	addi	x2, x2, 388	# 2385
	lw		x1, -384(x2)	# 2385
	addi	x5, x3, 0	# 2386
	addi	x3, x3, 8	# 2386
	sw		x4, 4(x5)	# 2386
	lw		x4, -380(x2)	# 2386
	sw		x4, 0(x5)	# 2386
	lw		x6, -4(x2)	# 242
	mul		x7, x30, x6	# 242
	add		x7, x4, x7	# 242
	flw		f1, -376(x2)	# 242
	fsw		f1, 0(x7)	# 242
	lw		x7, 0(x2)	# 243
	mul		x8, x30, x7	# 243
	add		x8, x4, x8	# 243
	flw		f1, -372(x2)	# 243
	fsw		f1, 0(x8)	# 243
	lw		x8, -48(x2)	# 244
	mul		x9, x30, x8	# 244
	add		x4, x4, x9	# 244
	flw		f2, -368(x2)	# 244
	fsw		f2, 0(x4)	# 244
	mul		x4, x30, x6	# 1289
	addi	x4, x4, 60000	# 1289
	lw		x4, 0(x4)	# 1289
	sub		x4, x4, x7	# 1289
	lw		x29, -104(x2)	# 1289
	sw		x5, -384(x2)	# 1289
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -388(x2)	# 1289
	addi	x2, x2, -392	# 1289
	lw		x31, 0(x29)	# 1289
	jalr	x1, x31, 0	# 1289
	addi	x2, x2, 392	# 1289
	lw		x1, -388(x2)	# 1289
	addi	x4, x3, 0	# 2438
	addi	x3, x3, 12	# 2438
	flw		f1, -364(x2)	# 2438
	fsw		f1, 8(x4)	# 2438
	lw		x5, -384(x2)	# 2438
	sw		x5, 4(x4)	# 2438
	lw		x5, -360(x2)	# 2438
	sw		x5, 0(x4)	# 2438
	lw		x5, -356(x2)	# 2438
	mul		x6, x30, x5	# 2438
	addi	x6, x6, 61016	# 2438
	sw		x4, 0(x6)	# 2438
	addi	x4, x5, 1	# 2450
	lw		x6, -352(x2)	# 2450
	addi	x7, x6, 2	# 2450
	lw		x8, 0(x2)	# 2450
	mul		x9, x30, x8	# 2450
	addi	x9, x9, 60312	# 2450
	flw		f2, 0(x9)	# 2450
	flw		f3, -8(x2)	# 2384
	lw		x9, -20(x2)	# 2384
	sw		x4, -388(x2)	# 2384
	sw		x7, -392(x2)	# 2384
	fsw		f2, -396(x2)	# 2384
	addi	x4, x9, 0
	fadd	f1, f0, f3
	sw		x1, -400(x2)	# 2384
	addi	x2, x2, -404	# 2384
	jal		x1, min_caml_create_float_array	# 2384
	addi	x2, x2, 404	# 2384
	lw		x1, -400(x2)	# 2384
	addi	x5, x4, 0	# 2384
	lw		x4, -4(x2)	# 2385
	mul		x6, x30, x4	# 2385
	addi	x6, x6, 60000	# 2385
	lw		x6, 0(x6)	# 2385
	sw		x5, -400(x2)	# 2385
	addi	x4, x6, 0
	sw		x1, -404(x2)	# 2385
	addi	x2, x2, -408	# 2385
	jal		x1, min_caml_create_array	# 2385
	addi	x2, x2, 408	# 2385
	lw		x1, -404(x2)	# 2385
	addi	x5, x3, 0	# 2386
	addi	x3, x3, 8	# 2386
	sw		x4, 4(x5)	# 2386
	lw		x4, -400(x2)	# 2386
	sw		x4, 0(x5)	# 2386
	lw		x6, -4(x2)	# 242
	mul		x7, x30, x6	# 242
	add		x7, x4, x7	# 242
	flw		f1, -348(x2)	# 242
	fsw		f1, 0(x7)	# 242
	lw		x7, 0(x2)	# 243
	mul		x8, x30, x7	# 243
	add		x8, x4, x8	# 243
	flw		f2, -396(x2)	# 243
	fsw		f2, 0(x8)	# 243
	lw		x8, -48(x2)	# 244
	mul		x9, x30, x8	# 244
	add		x4, x4, x9	# 244
	flw		f2, -368(x2)	# 244
	fsw		f2, 0(x4)	# 244
	mul		x4, x30, x6	# 1289
	addi	x4, x4, 60000	# 1289
	lw		x4, 0(x4)	# 1289
	sub		x4, x4, x7	# 1289
	lw		x29, -104(x2)	# 1289
	sw		x5, -404(x2)	# 1289
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -408(x2)	# 1289
	addi	x2, x2, -412	# 1289
	lw		x31, 0(x29)	# 1289
	jalr	x1, x31, 0	# 1289
	addi	x2, x2, 412	# 1289
	lw		x1, -408(x2)	# 1289
	addi	x4, x3, 0	# 2438
	addi	x3, x3, 12	# 2438
	flw		f1, -364(x2)	# 2438
	fsw		f1, 8(x4)	# 2438
	lw		x5, -404(x2)	# 2438
	sw		x5, 4(x4)	# 2438
	lw		x5, -392(x2)	# 2438
	sw		x5, 0(x4)	# 2438
	lw		x5, -388(x2)	# 2438
	mul		x5, x30, x5	# 2438
	addi	x5, x5, 61016	# 2438
	sw		x4, 0(x5)	# 2438
	lw		x4, -356(x2)	# 2451
	addi	x5, x4, 2	# 2451
	lw		x6, -352(x2)	# 2451
	addi	x6, x6, 3	# 2451
	lw		x7, -48(x2)	# 2451
	mul		x8, x30, x7	# 2451
	addi	x8, x8, 60312	# 2451
	flw		f2, 0(x8)	# 2451
	flw		f3, -8(x2)	# 2384
	lw		x8, -20(x2)	# 2384
	sw		x5, -408(x2)	# 2384
	sw		x6, -412(x2)	# 2384
	fsw		f2, -416(x2)	# 2384
	addi	x4, x8, 0
	fadd	f1, f0, f3
	sw		x1, -420(x2)	# 2384
	addi	x2, x2, -424	# 2384
	jal		x1, min_caml_create_float_array	# 2384
	addi	x2, x2, 424	# 2384
	lw		x1, -420(x2)	# 2384
	addi	x5, x4, 0	# 2384
	lw		x4, -4(x2)	# 2385
	mul		x6, x30, x4	# 2385
	addi	x6, x6, 60000	# 2385
	lw		x6, 0(x6)	# 2385
	sw		x5, -420(x2)	# 2385
	addi	x4, x6, 0
	sw		x1, -424(x2)	# 2385
	addi	x2, x2, -428	# 2385
	jal		x1, min_caml_create_array	# 2385
	addi	x2, x2, 428	# 2385
	lw		x1, -424(x2)	# 2385
	addi	x5, x3, 0	# 2386
	addi	x3, x3, 8	# 2386
	sw		x4, 4(x5)	# 2386
	lw		x4, -420(x2)	# 2386
	sw		x4, 0(x5)	# 2386
	lw		x6, -4(x2)	# 242
	mul		x7, x30, x6	# 242
	add		x7, x4, x7	# 242
	flw		f1, -348(x2)	# 242
	fsw		f1, 0(x7)	# 242
	lw		x7, 0(x2)	# 243
	mul		x8, x30, x7	# 243
	add		x8, x4, x8	# 243
	flw		f1, -372(x2)	# 243
	fsw		f1, 0(x8)	# 243
	lw		x8, -48(x2)	# 244
	mul		x9, x30, x8	# 244
	add		x4, x4, x9	# 244
	flw		f1, -416(x2)	# 244
	fsw		f1, 0(x4)	# 244
	mul		x4, x30, x6	# 1289
	addi	x4, x4, 60000	# 1289
	lw		x4, 0(x4)	# 1289
	sub		x4, x4, x7	# 1289
	lw		x29, -104(x2)	# 1289
	sw		x5, -424(x2)	# 1289
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -428(x2)	# 1289
	addi	x2, x2, -432	# 1289
	lw		x31, 0(x29)	# 1289
	jalr	x1, x31, 0	# 1289
	addi	x2, x2, 432	# 1289
	lw		x1, -428(x2)	# 1289
	addi	x4, x3, 0	# 2438
	addi	x3, x3, 12	# 2438
	flw		f1, -364(x2)	# 2438
	fsw		f1, 8(x4)	# 2438
	lw		x5, -424(x2)	# 2438
	sw		x5, 4(x4)	# 2438
	lw		x5, -412(x2)	# 2438
	sw		x5, 0(x4)	# 2438
	lw		x5, -408(x2)	# 2438
	mul		x5, x30, x5	# 2438
	addi	x5, x5, 61016	# 2438
	sw		x4, 0(x5)	# 2438
	lw		x4, -356(x2)	# 2452
	addi	x4, x4, 3	# 2452
	lw		x5, -4(x2)	# 2452
	mul		x6, x30, x5	# 2452
	addi	x6, x6, 61736	# 2452
	sw		x4, 0(x6)	# 2452
beq_cont.32452:
fle_cont.32450:
beq_cont.32448:
ble_cont.32446:
	lw		x4, -4(x2)	# 2220
	mul		x5, x30, x4	# 2220
	addi	x5, x5, 60632	# 2220
	flw		f1, 0(x5)	# 2220
	lw		x5, 0(x2)	# 2220
	mul		x6, x30, x5	# 2220
	addi	x6, x6, 60624	# 2220
	lw		x6, 0(x6)	# 2220
	sub		x6, x4, x6	# 2220
	lw		x29, -100(x2)	# 2220
	fsw		f1, -428(x2)	# 2220
	addi	x4, x6, 0
	sw		x1, -432(x2)	# 2220
	addi	x2, x2, -436	# 2220
	lw		x31, 0(x29)	# 2220
	jalr	x1, x31, 0	# 2220
	addi	x2, x2, 436	# 2220
	lw		x1, -432(x2)	# 2220
	flw		f2, -428(x2)	# 2220
	fmul	f1, f2, f1	# 2220
	lw		x6, -4(x2)	# 2223
	mul		x4, x30, x6	# 2223
	addi	x4, x4, 60672	# 2223
	flw		f2, 0(x4)	# 2223
	fmul	f2, f1, f2	# 2223
	mul		x4, x30, x6	# 2223
	addi	x4, x4, 60684	# 2223
	flw		f3, 0(x4)	# 2223
	fadd	f2, f2, f3	# 2223
	lw		x4, 0(x2)	# 2224
	mul		x5, x30, x4	# 2224
	addi	x5, x5, 60672	# 2224
	flw		f3, 0(x5)	# 2224
	fmul	f3, f1, f3	# 2224
	mul		x5, x30, x4	# 2224
	addi	x5, x5, 60684	# 2224
	flw		f4, 0(x5)	# 2224
	fadd	f3, f3, f4	# 2224
	lw		x5, -48(x2)	# 2225
	mul		x7, x30, x5	# 2225
	addi	x7, x7, 60672	# 2225
	flw		f4, 0(x7)	# 2225
	fmul	f1, f1, f4	# 2225
	mul		x7, x30, x5	# 2225
	addi	x7, x7, 60684	# 2225
	flw		f4, 0(x7)	# 2225
	fadd	f1, f1, f4	# 2225
	mul		x7, x30, x6	# 2226
	addi	x7, x7, 60616	# 2226
	lw		x7, 0(x7)	# 2226
	sub		x4, x7, x4	# 2226
	lw		x7, -228(x2)	# 2226
	lw		x29, -96(x2)	# 2226
	addi	x5, x4, 0
	addi	x4, x7, 0
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -432(x2)	# 2226
	addi	x2, x2, -436	# 2226
	lw		x31, 0(x29)	# 2226
	jalr	x1, x31, 0	# 2226
	addi	x2, x2, 436	# 2226
	lw		x1, -432(x2)	# 2226
	lw		x4, -4(x2)	# 2509
	lw		x5, -188(x2)	# 2509
	lw		x6, -228(x2)	# 2509
	lw		x7, -268(x2)	# 2509
	lw		x8, -48(x2)	# 2509
	lw		x9, -20(x2)	# 2509
	lw		x29, -92(x2)	# 2509
	sw		x1, -432(x2)	# 2509
	addi	x2, x2, -436	# 2509
	lw		x31, 0(x29)	# 2509
	jalr	x1, x31, 0	# 2509
	addi	x2, x2, 436	# 2509
	lw		x1, -432(x2)	# 2509
	EXIT	
