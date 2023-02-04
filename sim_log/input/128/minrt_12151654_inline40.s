l.20944:	# 1.000000
	.word	1.000000
l.20942:	# 0.000000
	.word	0.000000
l.20964:	# 0.500000
	.word	0.500000
l.20968:	# 0.001370
	.word	0.001370
l.20966:	# 0.041664
	.word	0.041664
l.20959:	# 0.008333
	.word	0.008333
l.20961:	# 0.000196
	.word	0.000196
l.20957:	# 0.166667
	.word	0.166667
l.21040:	# -1.000000
	.word	-1.000000
l.21071:	# 0.017453
	.word	0.017453
l.22154:	# -0.100000
	.word	-0.100000
l.21022:	# 0.200000
	.word	0.200000
l.22092:	# 0.010000
	.word	0.010000
l.23178:	# 0.100000
	.word	0.100000
l.22752:	# 100000000.000000
	.word	100000000.000000
l.22651:	# 3.141593
	.word	3.141593
l.21257:	# 2.000000
	.word	2.000000
l.24580:	# 0.900000
	.word	0.900000
l.23366:	# -150.000000
	.word	-150.000000
l.22686:	# 10.000000
	.word	10.000000
l.23371:	# 150.000000
	.word	150.000000
l.22646:	# 15.000000
	.word	15.000000
l.22649:	# 30.000000
	.word	30.000000
l.25398:	# 1000000000.000000
	.word	1000000000.000000
l.25393:	# 255.000000
	.word	255.000000
l.25061:	# 128.000000
	.word	128.000000
l.21015:	# 2.437500
	.word	2.437500
l.21018:	# 0.437500
	.word	0.437500
l.21020:	# 0.333333
	.word	0.333333
l.21024:	# 0.142857
	.word	0.142857
l.21026:	# 0.111111
	.word	0.111111
l.21028:	# 0.089764
	.word	0.089764
l.22090:	# -0.200000
	.word	-0.200000
l.22703:	# 0.250000
	.word	0.250000
l.22727:	# 20.000000
	.word	20.000000
l.22725:	# 0.050000
	.word	0.050000
l.22669:	# 0.300000
	.word	0.300000
l.21100:	# -200.000000
	.word	-200.000000
l.21095:	# 200.000000
	.word	200.000000
l.22985:	# 0.003906
	.word	0.003906
l.23026:	# -2.000000
	.word	-2.000000
l.22666:	# 0.150000
	.word	0.150000
l.22644:	# 0.000100
	.word	0.000100
l.25372:	# 3.141593
	.word	3.141593
l.25374:	# 6.283185
	.word	6.283185
l.25376:	# 1.570796
	.word	1.570796
l.25378:	# 0.785398
	.word	0.785398
int_of_float.2487.13039:
	fadd	f2, f0, f0	# 10
	fle		x31, f2, f1	# 10
	beq		x31, x0, fle_else.96113	# 10
	fadd	f3, f0, f16	# 11
	fle		x31, f3, f1	# 11
	beq		x31, x0, fle_else.96114	# 11
	fsub	f1, f1, f3	# 11
	fle		x31, f2, f1	# 10
	beq		x31, x0, fle_else.96116	# 10
	fadd	f2, f0, f16	# 11
	fle		x31, f2, f1	# 11
	beq		x31, x0, fle_else.96118	# 11
	fadd	f2, f0, f16	# 11
	fsub	f1, f1, f2	# 11
	sw		x1, 0(x2)	# 11
	addi	x2, x2, -4	# 11
	jal		x1, int_of_float.2487.13039	# 11
	addi	x2, x2, 4	# 11
	lw		x1, 0(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.96117	# 11
fle_else.96118:
	addi	x4, x0, 0	# 11
fle_cont.96117:
	jal		x0, fle_cont.96115	# 10
fle_else.96116:
	fsub	f1, f0, f1	# 12
	sw		x1, 0(x2)	# 12
	addi	x2, x2, -4	# 12
	jal		x1, int_of_float.2487.13039	# 12
	addi	x2, x2, 4	# 12
	lw		x1, 0(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.96115:
	addi	x4, x4, 1	# 11
	jalr	x0, x1, 0	# 11
fle_else.96114:
	addi	x4, x0, 0	# 11
	jalr	x0, x1, 0	# 11
fle_else.96113:
	fsub	f1, f0, f1	# 12
	fle		x31, f2, f1	# 10
	beq		x31, x0, fle_else.96120	# 10
	fadd	f2, f0, f16	# 11
	fle		x31, f2, f1	# 11
	beq		x31, x0, fle_else.96122	# 11
	fadd	f2, f0, f16	# 11
	fsub	f1, f1, f2	# 11
	sw		x1, 0(x2)	# 11
	addi	x2, x2, -4	# 11
	jal		x1, int_of_float.2487.13039	# 11
	addi	x2, x2, 4	# 11
	lw		x1, 0(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.96121	# 11
fle_else.96122:
	addi	x4, x0, 0	# 11
fle_cont.96121:
	jal		x0, fle_cont.96119	# 10
fle_else.96120:
	fsub	f1, f0, f1	# 12
	sw		x1, 0(x2)	# 12
	addi	x2, x2, -4	# 12
	jal		x1, int_of_float.2487.13039	# 12
	addi	x2, x2, 4	# 12
	lw		x1, 0(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.96119:
	sub		x4, x0, x4	# 12
	jalr	x0, x1, 0	# 12
float_of_int.2489.13041:
	addi	x5, x0, 0	# 14
	ble		x5, x4, ble.96123	# 14
	sub		x4, x0, x4	# 16
	ble		x5, x4, ble.96125	# 14
	sub		x4, x0, x4	# 16
	sw		x1, 0(x2)	# 16
	addi	x2, x2, -4	# 16
	jal		x1, float_of_int.2489.13041	# 16
	addi	x2, x2, 4	# 16
	lw		x1, 0(x2)	# 16
	fsub	f1, f0, f1	# 16
	jal		x0, ble_cont.96124	# 14
ble.96125:
	addi	x5, x0, 1	# 15
	ble		x5, x4, ble.96127	# 15
	fadd	f1, f0, f0	# 15
	jal		x0, ble_cont.96126	# 15
ble.96127:
	addi	x5, x0, 1	# 15
	sub		x4, x4, x5	# 15
	sw		x1, 0(x2)	# 15
	addi	x2, x2, -4	# 15
	jal		x1, float_of_int.2489.13041	# 15
	addi	x2, x2, 4	# 15
	lw		x1, 0(x2)	# 15
	fadd	f2, f0, f16	# 15
	fadd	f1, f1, f2	# 15
ble_cont.96126:
ble_cont.96124:
	fsub	f1, f0, f1	# 16
	jalr	x0, x1, 0	# 16
ble.96123:
	addi	x6, x0, 1	# 15
	ble		x6, x4, ble.96128	# 15
	fadd	f1, f0, f0	# 15
	jalr	x0, x1, 0	# 15
ble.96128:
	sub		x4, x4, x6	# 15
	ble		x5, x4, ble.96130	# 14
	sub		x4, x0, x4	# 16
	sw		x1, 0(x2)	# 16
	addi	x2, x2, -4	# 16
	jal		x1, float_of_int.2489.13041	# 16
	addi	x2, x2, 4	# 16
	lw		x1, 0(x2)	# 16
	fsub	f1, f0, f1	# 16
	jal		x0, ble_cont.96129	# 14
ble.96130:
	addi	x5, x0, 1	# 15
	ble		x5, x4, ble.96132	# 15
	fadd	f1, f0, f0	# 15
	jal		x0, ble_cont.96131	# 15
ble.96132:
	addi	x5, x0, 1	# 15
	sub		x4, x4, x5	# 15
	sw		x1, 0(x2)	# 15
	addi	x2, x2, -4	# 15
	jal		x1, float_of_int.2489.13041	# 15
	addi	x2, x2, 4	# 15
	lw		x1, 0(x2)	# 15
	fadd	f2, f0, f16	# 15
	fadd	f1, f1, f2	# 15
ble_cont.96131:
ble_cont.96129:
	fadd	f2, f0, f16	# 15
	fadd	f1, f1, f2	# 15
	jalr	x0, x1, 0	# 15
sin.2501.13047:
	flw		f2, 16(x27)	# 46
	flw		f3, 12(x27)	# 46
	flw		f4, 8(x27)	# 46
	flw		f5, 4(x27)	# 46
	fadd	f6, f0, f0	# 46
	fle		x31, f6, f1	# 46
	beq		x31, x0, fle_else.96133	# 46
	fle		x31, f4, f1	# 47
	beq		x31, x0, fle_else.96134	# 47
	fsub	f1, f1, f4	# 47
	fle		x31, f6, f1	# 46
	beq		x31, x0, fle_else.96135	# 46
	fle		x31, f4, f1	# 47
	beq		x31, x0, fle_else.96136	# 47
	fsub	f1, f1, f4	# 47
	lw		x31, 0(x27)	# 47
	jalr	x0, x31, 0	# 47
fle_else.96136:
	fle		x31, f5, f1	# 48
	beq		x31, x0, fle_else.96137	# 48
	fsub	f1, f1, f5	# 48
	sw		x1, 0(x2)	# 48
	addi	x2, x2, -4	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 4	# 48
	lw		x1, 0(x2)	# 48
	fsub	f1, f0, f1	# 48
	jalr	x0, x1, 0	# 48
fle_else.96137:
	fle		x31, f1, f3	# 49
	beq		x31, x0, fle_else.96138	# 49
	fle		x31, f2, f1	# 50
	beq		x31, x0, fle_else.96139	# 50
	fsub	f1, f3, f1	# 50
	fmul	f1, f1, f1	# 41
	fmul	f2, f1, f1	# 42
	fadd	f3, f0, f16	# 43
	fadd	f4, f0, f17	# 43
	fmul	f4, f4, f1	# 43
	fsub	f3, f3, f4	# 43
	fadd	f4, f0, f19	# 43
	fmul	f4, f4, f2	# 43
	fadd	f3, f3, f4	# 43
	fadd	f4, f0, f18	# 43
	fmul	f1, f4, f1	# 43
	fmul	f1, f1, f2	# 43
	fsub	f1, f3, f1	# 43
	jalr	x0, x1, 0	# 43
fle_else.96139:
	fmul	f2, f1, f1	# 36
	fmul	f3, f1, f2	# 37
	fadd	f4, f0, f22	# 38
	fmul	f4, f4, f3	# 38
	fsub	f1, f1, f4	# 38
	fadd	f4, f0, f20	# 38
	fmul	f4, f4, f2	# 38
	fmul	f4, f4, f3	# 38
	fadd	f1, f1, f4	# 38
	fadd	f4, f0, f21	# 38
	fmul	f4, f4, f2	# 38
	fmul	f2, f4, f2	# 38
	fmul	f2, f2, f3	# 38
	fsub	f1, f1, f2	# 38
	jalr	x0, x1, 0	# 38
fle_else.96138:
	fsub	f1, f5, f1	# 49
	lw		x31, 0(x27)	# 49
	jalr	x0, x31, 0	# 49
fle_else.96135:
	fsub	f1, f0, f1	# 46
	sw		x1, 0(x2)	# 46
	addi	x2, x2, -4	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 4	# 46
	lw		x1, 0(x2)	# 46
	fsub	f1, f0, f1	# 46
	jalr	x0, x1, 0	# 46
fle_else.96134:
	fle		x31, f5, f1	# 48
	beq		x31, x0, fle_else.96140	# 48
	fsub	f1, f1, f5	# 48
	fle		x31, f6, f1	# 46
	beq		x31, x0, fle_else.96142	# 46
	fle		x31, f4, f1	# 47
	beq		x31, x0, fle_else.96144	# 47
	fsub	f1, f1, f4	# 47
	sw		x1, 0(x2)	# 47
	addi	x2, x2, -4	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 4	# 47
	lw		x1, 0(x2)	# 47
	jal		x0, fle_cont.96143	# 47
fle_else.96144:
	fle		x31, f5, f1	# 48
	beq		x31, x0, fle_else.96146	# 48
	fsub	f1, f1, f5	# 48
	sw		x1, 0(x2)	# 48
	addi	x2, x2, -4	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 4	# 48
	lw		x1, 0(x2)	# 48
	fsub	f1, f0, f1	# 48
	jal		x0, fle_cont.96145	# 48
fle_else.96146:
	fle		x31, f1, f3	# 49
	beq		x31, x0, fle_else.96148	# 49
	fle		x31, f2, f1	# 50
	beq		x31, x0, fle_else.96150	# 50
	fsub	f1, f3, f1	# 50
	fmul	f1, f1, f1	# 41
	fmul	f2, f1, f1	# 42
	fadd	f3, f0, f16	# 43
	fadd	f4, f0, f17	# 43
	fmul	f4, f4, f1	# 43
	fsub	f3, f3, f4	# 43
	fadd	f4, f0, f19	# 43
	fmul	f4, f4, f2	# 43
	fadd	f3, f3, f4	# 43
	fadd	f4, f0, f18	# 43
	fmul	f1, f4, f1	# 43
	fmul	f1, f1, f2	# 43
	fsub	f1, f3, f1	# 43
	jal		x0, fle_cont.96149	# 50
fle_else.96150:
	fmul	f2, f1, f1	# 36
	fmul	f3, f1, f2	# 37
	fadd	f4, f0, f22	# 38
	fmul	f4, f4, f3	# 38
	fsub	f1, f1, f4	# 38
	fadd	f4, f0, f20	# 38
	fmul	f4, f4, f2	# 38
	fmul	f4, f4, f3	# 38
	fadd	f1, f1, f4	# 38
	fadd	f4, f0, f21	# 38
	fmul	f4, f4, f2	# 38
	fmul	f2, f4, f2	# 38
	fmul	f2, f2, f3	# 38
	fsub	f1, f1, f2	# 38
fle_cont.96149:
	jal		x0, fle_cont.96147	# 49
fle_else.96148:
	fsub	f1, f5, f1	# 49
	sw		x1, 0(x2)	# 49
	addi	x2, x2, -4	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 4	# 49
	lw		x1, 0(x2)	# 49
fle_cont.96147:
fle_cont.96145:
fle_cont.96143:
	jal		x0, fle_cont.96141	# 46
fle_else.96142:
	fsub	f1, f0, f1	# 46
	sw		x1, 0(x2)	# 46
	addi	x2, x2, -4	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 4	# 46
	lw		x1, 0(x2)	# 46
	fsub	f1, f0, f1	# 46
fle_cont.96141:
	fsub	f1, f0, f1	# 48
	jalr	x0, x1, 0	# 48
fle_else.96140:
	fle		x31, f1, f3	# 49
	beq		x31, x0, fle_else.96151	# 49
	fle		x31, f2, f1	# 50
	beq		x31, x0, fle_else.96152	# 50
	fsub	f1, f3, f1	# 50
	fmul	f1, f1, f1	# 41
	fmul	f2, f1, f1	# 42
	fadd	f3, f0, f16	# 43
	fadd	f4, f0, f17	# 43
	fmul	f4, f4, f1	# 43
	fsub	f3, f3, f4	# 43
	fadd	f4, f0, f19	# 43
	fmul	f4, f4, f2	# 43
	fadd	f3, f3, f4	# 43
	fadd	f4, f0, f18	# 43
	fmul	f1, f4, f1	# 43
	fmul	f1, f1, f2	# 43
	fsub	f1, f3, f1	# 43
	jalr	x0, x1, 0	# 43
fle_else.96152:
	fmul	f2, f1, f1	# 36
	fmul	f3, f1, f2	# 37
	fadd	f4, f0, f22	# 38
	fmul	f4, f4, f3	# 38
	fsub	f1, f1, f4	# 38
	fadd	f4, f0, f20	# 38
	fmul	f4, f4, f2	# 38
	fmul	f4, f4, f3	# 38
	fadd	f1, f1, f4	# 38
	fadd	f4, f0, f21	# 38
	fmul	f4, f4, f2	# 38
	fmul	f2, f4, f2	# 38
	fmul	f2, f2, f3	# 38
	fsub	f1, f1, f2	# 38
	jalr	x0, x1, 0	# 38
fle_else.96151:
	fsub	f1, f5, f1	# 49
	fle		x31, f6, f1	# 46
	beq		x31, x0, fle_else.96153	# 46
	fle		x31, f4, f1	# 47
	beq		x31, x0, fle_else.96154	# 47
	fsub	f1, f1, f4	# 47
	lw		x31, 0(x27)	# 47
	jalr	x0, x31, 0	# 47
fle_else.96154:
	fle		x31, f5, f1	# 48
	beq		x31, x0, fle_else.96155	# 48
	fsub	f1, f1, f5	# 48
	sw		x1, 0(x2)	# 48
	addi	x2, x2, -4	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 4	# 48
	lw		x1, 0(x2)	# 48
	fsub	f1, f0, f1	# 48
	jalr	x0, x1, 0	# 48
fle_else.96155:
	fle		x31, f1, f3	# 49
	beq		x31, x0, fle_else.96156	# 49
	fle		x31, f2, f1	# 50
	beq		x31, x0, fle_else.96157	# 50
	fsub	f1, f3, f1	# 50
	fmul	f1, f1, f1	# 41
	fmul	f2, f1, f1	# 42
	fadd	f3, f0, f16	# 43
	fadd	f4, f0, f17	# 43
	fmul	f4, f4, f1	# 43
	fsub	f3, f3, f4	# 43
	fadd	f4, f0, f19	# 43
	fmul	f4, f4, f2	# 43
	fadd	f3, f3, f4	# 43
	fadd	f4, f0, f18	# 43
	fmul	f1, f4, f1	# 43
	fmul	f1, f1, f2	# 43
	fsub	f1, f3, f1	# 43
	jalr	x0, x1, 0	# 43
fle_else.96157:
	fmul	f2, f1, f1	# 36
	fmul	f3, f1, f2	# 37
	fadd	f4, f0, f22	# 38
	fmul	f4, f4, f3	# 38
	fsub	f1, f1, f4	# 38
	fadd	f4, f0, f20	# 38
	fmul	f4, f4, f2	# 38
	fmul	f4, f4, f3	# 38
	fadd	f1, f1, f4	# 38
	fadd	f4, f0, f21	# 38
	fmul	f4, f4, f2	# 38
	fmul	f2, f4, f2	# 38
	fmul	f2, f2, f3	# 38
	fsub	f1, f1, f2	# 38
	jalr	x0, x1, 0	# 38
fle_else.96156:
	fsub	f1, f5, f1	# 49
	lw		x31, 0(x27)	# 49
	jalr	x0, x31, 0	# 49
fle_else.96153:
	fsub	f1, f0, f1	# 46
	sw		x1, 0(x2)	# 46
	addi	x2, x2, -4	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 4	# 46
	lw		x1, 0(x2)	# 46
	fsub	f1, f0, f1	# 46
	jalr	x0, x1, 0	# 46
fle_else.96133:
	fsub	f1, f0, f1	# 46
	fle		x31, f6, f1	# 46
	beq		x31, x0, fle_else.96159	# 46
	fle		x31, f4, f1	# 47
	beq		x31, x0, fle_else.96161	# 47
	fsub	f1, f1, f4	# 47
	sw		x1, 0(x2)	# 47
	addi	x2, x2, -4	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 4	# 47
	lw		x1, 0(x2)	# 47
	jal		x0, fle_cont.96160	# 47
fle_else.96161:
	fle		x31, f5, f1	# 48
	beq		x31, x0, fle_else.96163	# 48
	fsub	f1, f1, f5	# 48
	sw		x1, 0(x2)	# 48
	addi	x2, x2, -4	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 4	# 48
	lw		x1, 0(x2)	# 48
	fsub	f1, f0, f1	# 48
	jal		x0, fle_cont.96162	# 48
fle_else.96163:
	fle		x31, f1, f3	# 49
	beq		x31, x0, fle_else.96165	# 49
	fle		x31, f2, f1	# 50
	beq		x31, x0, fle_else.96167	# 50
	fsub	f1, f3, f1	# 50
	fmul	f1, f1, f1	# 41
	fmul	f2, f1, f1	# 42
	fadd	f3, f0, f16	# 43
	fadd	f4, f0, f17	# 43
	fmul	f4, f4, f1	# 43
	fsub	f3, f3, f4	# 43
	fadd	f4, f0, f19	# 43
	fmul	f4, f4, f2	# 43
	fadd	f3, f3, f4	# 43
	fadd	f4, f0, f18	# 43
	fmul	f1, f4, f1	# 43
	fmul	f1, f1, f2	# 43
	fsub	f1, f3, f1	# 43
	jal		x0, fle_cont.96166	# 50
fle_else.96167:
	fmul	f2, f1, f1	# 36
	fmul	f3, f1, f2	# 37
	fadd	f4, f0, f22	# 38
	fmul	f4, f4, f3	# 38
	fsub	f1, f1, f4	# 38
	fadd	f4, f0, f20	# 38
	fmul	f4, f4, f2	# 38
	fmul	f4, f4, f3	# 38
	fadd	f1, f1, f4	# 38
	fadd	f4, f0, f21	# 38
	fmul	f4, f4, f2	# 38
	fmul	f2, f4, f2	# 38
	fmul	f2, f2, f3	# 38
	fsub	f1, f1, f2	# 38
fle_cont.96166:
	jal		x0, fle_cont.96164	# 49
fle_else.96165:
	fsub	f1, f5, f1	# 49
	sw		x1, 0(x2)	# 49
	addi	x2, x2, -4	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 4	# 49
	lw		x1, 0(x2)	# 49
fle_cont.96164:
fle_cont.96162:
fle_cont.96160:
	jal		x0, fle_cont.96158	# 46
fle_else.96159:
	fsub	f1, f0, f1	# 46
	sw		x1, 0(x2)	# 46
	addi	x2, x2, -4	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 4	# 46
	lw		x1, 0(x2)	# 46
	fsub	f1, f0, f1	# 46
fle_cont.96158:
	fsub	f1, f0, f1	# 46
	jalr	x0, x1, 0	# 46
cos.2503.13049:
	lw		x4, 20(x27)	# 54
	flw		f2, 16(x27)	# 54
	flw		f3, 12(x27)	# 54
	flw		f4, 8(x27)	# 54
	flw		f5, 4(x27)	# 54
	fadd	f6, f0, f0	# 54
	fle		x31, f6, f1	# 54
	beq		x31, x0, fle_else.96168	# 54
	fle		x31, f1, f2	# 55
	beq		x31, x0, fle_else.96169	# 55
	fmul	f1, f1, f1	# 41
	fmul	f2, f1, f1	# 42
	fadd	f3, f0, f16	# 43
	fadd	f4, f0, f17	# 43
	fmul	f4, f4, f1	# 43
	fsub	f3, f3, f4	# 43
	fadd	f4, f0, f19	# 43
	fmul	f4, f4, f2	# 43
	fadd	f3, f3, f4	# 43
	fadd	f4, f0, f18	# 43
	fmul	f1, f4, f1	# 43
	fmul	f1, f1, f2	# 43
	fsub	f1, f3, f1	# 43
	jalr	x0, x1, 0	# 43
fle_else.96169:
	fsub	f1, f3, f1	# 55
	fle		x31, f6, f1	# 46
	beq		x31, x0, fle_else.96170	# 46
	fle		x31, f4, f1	# 47
	beq		x31, x0, fle_else.96171	# 47
	fsub	f1, f1, f4	# 47
	addi	x27, x4, 0
	lw		x31, 0(x27)	# 47
	jalr	x0, x31, 0	# 47
fle_else.96171:
	fle		x31, f5, f1	# 48
	beq		x31, x0, fle_else.96172	# 48
	fsub	f1, f1, f5	# 48
	addi	x27, x4, 0
	sw		x1, 0(x2)	# 48
	addi	x2, x2, -4	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 4	# 48
	lw		x1, 0(x2)	# 48
	fsub	f1, f0, f1	# 48
	jalr	x0, x1, 0	# 48
fle_else.96172:
	fle		x31, f1, f3	# 49
	beq		x31, x0, fle_else.96173	# 49
	fle		x31, f2, f1	# 50
	beq		x31, x0, fle_else.96174	# 50
	fsub	f1, f3, f1	# 50
	fmul	f1, f1, f1	# 41
	fmul	f2, f1, f1	# 42
	fadd	f3, f0, f16	# 43
	fadd	f4, f0, f17	# 43
	fmul	f4, f4, f1	# 43
	fsub	f3, f3, f4	# 43
	fadd	f4, f0, f19	# 43
	fmul	f4, f4, f2	# 43
	fadd	f3, f3, f4	# 43
	fadd	f4, f0, f18	# 43
	fmul	f1, f4, f1	# 43
	fmul	f1, f1, f2	# 43
	fsub	f1, f3, f1	# 43
	jalr	x0, x1, 0	# 43
fle_else.96174:
	fmul	f2, f1, f1	# 36
	fmul	f3, f1, f2	# 37
	fadd	f4, f0, f22	# 38
	fmul	f4, f4, f3	# 38
	fsub	f1, f1, f4	# 38
	fadd	f4, f0, f20	# 38
	fmul	f4, f4, f2	# 38
	fmul	f4, f4, f3	# 38
	fadd	f1, f1, f4	# 38
	fadd	f4, f0, f21	# 38
	fmul	f4, f4, f2	# 38
	fmul	f2, f4, f2	# 38
	fmul	f2, f2, f3	# 38
	fsub	f1, f1, f2	# 38
	jalr	x0, x1, 0	# 38
fle_else.96173:
	fsub	f1, f5, f1	# 49
	addi	x27, x4, 0
	lw		x31, 0(x27)	# 49
	jalr	x0, x31, 0	# 49
fle_else.96170:
	fsub	f1, f0, f1	# 46
	addi	x27, x4, 0
	sw		x1, 0(x2)	# 46
	addi	x2, x2, -4	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 4	# 46
	lw		x1, 0(x2)	# 46
	fsub	f1, f0, f1	# 46
	jalr	x0, x1, 0	# 46
fle_else.96168:
	fsub	f1, f0, f1	# 54
	fle		x31, f6, f1	# 54
	beq		x31, x0, fle_else.96175	# 54
	fle		x31, f1, f2	# 55
	beq		x31, x0, fle_else.96176	# 55
	fmul	f1, f1, f1	# 41
	fmul	f2, f1, f1	# 42
	fadd	f3, f0, f16	# 43
	fadd	f4, f0, f17	# 43
	fmul	f4, f4, f1	# 43
	fsub	f3, f3, f4	# 43
	fadd	f4, f0, f19	# 43
	fmul	f4, f4, f2	# 43
	fadd	f3, f3, f4	# 43
	fadd	f4, f0, f18	# 43
	fmul	f1, f4, f1	# 43
	fmul	f1, f1, f2	# 43
	fsub	f1, f3, f1	# 43
	jalr	x0, x1, 0	# 43
fle_else.96176:
	fsub	f1, f3, f1	# 55
	addi	x27, x4, 0
	lw		x31, 0(x27)	# 55
	jalr	x0, x31, 0	# 55
fle_else.96175:
	fsub	f1, f0, f1	# 54
	lw		x31, 0(x27)	# 54
	jalr	x0, x31, 0	# 54
atan.2505.13051:
	flw		f2, 8(x27)	# 59
	flw		f3, 4(x27)	# 59
	fadd	f4, f0, f0	# 59
	fle		x31, f4, f1	# 59
	beq		x31, x0, fle_else.96177	# 59
	lui		x4, %hi(l.21015)	# 60
	ori		x4, x0, %lo(l.21015)	# 60
	flw		f4, 0(x4)	# 60
	fle		x31, f1, f4	# 60
	beq		x31, x0, fle_else.96178	# 60
	lui		x4, %hi(l.21018)	# 61
	ori		x4, x0, %lo(l.21018)	# 61
	flw		f3, 0(x4)	# 61
	fle		x31, f3, f1	# 61
	beq		x31, x0, fle_else.96179	# 61
	fadd	f3, f0, f16	# 61
	fsub	f4, f1, f3	# 61
	fadd	f1, f1, f3	# 61
	fdiv	f1, f4, f1	# 61
	fsw		f2, 0(x2)	# 61
	sw		x1, -4(x2)	# 61
	addi	x2, x2, -8	# 61
	lw		x31, 0(x27)	# 61
	jalr	x1, x31, 0	# 61
	addi	x2, x2, 8	# 61
	lw		x1, -4(x2)	# 61
	flw		f2, 0(x2)	# 61
	fadd	f1, f2, f1	# 61
	jalr	x0, x1, 0	# 61
fle_else.96179:
	fmul	f2, f1, f1	# 63
	fmul	f3, f1, f2	# 64
	fmul	f4, f2, f2	# 65
	lui		x4, %hi(l.21020)	# 66
	ori		x4, x0, %lo(l.21020)	# 66
	flw		f5, 0(x4)	# 66
	fmul	f5, f5, f3	# 66
	fsub	f1, f1, f5	# 66
	fadd	f5, f0, f26	# 66
	fmul	f5, f5, f2	# 66
	fmul	f5, f5, f3	# 66
	fadd	f1, f1, f5	# 66
	lui		x4, %hi(l.21024)	# 66
	ori		x4, x0, %lo(l.21024)	# 66
	flw		f5, 0(x4)	# 66
	fmul	f5, f5, f4	# 66
	fmul	f5, f5, f3	# 66
	fsub	f1, f1, f5	# 66
	lui		x4, %hi(l.21026)	# 67
	ori		x4, x0, %lo(l.21026)	# 67
	flw		f5, 0(x4)	# 67
	fmul	f2, f5, f2	# 67
	fmul	f2, f2, f4	# 67
	fmul	f2, f2, f3	# 67
	fadd	f1, f1, f2	# 66
	lui		x4, %hi(l.21028)	# 67
	ori		x4, x0, %lo(l.21028)	# 67
	flw		f2, 0(x4)	# 67
	fmul	f2, f2, f4	# 67
	fmul	f2, f2, f4	# 67
	fmul	f2, f2, f3	# 67
	fsub	f1, f1, f2	# 66
	jalr	x0, x1, 0	# 66
fle_else.96178:
	fadd	f2, f0, f16	# 60
	fdiv	f1, f2, f1	# 60
	fsw		f3, -4(x2)	# 60
	sw		x1, -8(x2)	# 60
	addi	x2, x2, -12	# 60
	lw		x31, 0(x27)	# 60
	jalr	x1, x31, 0	# 60
	addi	x2, x2, 12	# 60
	lw		x1, -8(x2)	# 60
	flw		f2, -4(x2)	# 60
	fsub	f1, f2, f1	# 60
	jalr	x0, x1, 0	# 60
fle_else.96177:
	fsub	f1, f0, f1	# 59
	sw		x1, -8(x2)	# 59
	addi	x2, x2, -12	# 59
	lw		x31, 0(x27)	# 59
	jalr	x1, x31, 0	# 59
	addi	x2, x2, 12	# 59
	lw		x1, -8(x2)	# 59
	fsub	f1, f0, f1	# 59
	jalr	x0, x1, 0	# 59
vecunit_sgn.2565.13191:
	lw		x6, 16(x27)	# 283
	lw		x7, 12(x27)	# 283
	lw		x8, 8(x27)	# 283
	flw		f1, 4(x27)	# 283
	addi	x9, x0, 4	# 283
	mul		x9, x7, x9	# 283
	add		x9, x4, x9	# 283
	flw		f2, 0(x9)	# 283
	fmul	f2, f2, f2	# 8
	addi	x9, x0, 4	# 283
	mul		x9, x8, x9	# 283
	add		x9, x4, x9	# 283
	flw		f3, 0(x9)	# 283
	fmul	f3, f3, f3	# 8
	fadd	f2, f2, f3	# 283
	addi	x9, x0, 4	# 283
	mul		x9, x6, x9	# 283
	add		x9, x4, x9	# 283
	flw		f3, 0(x9)	# 283
	fmul	f3, f3, f3	# 8
	fadd	f2, f2, f3	# 283
	fsqrt	f2, f2	# 283
	feq		x31, f2, f1	# 1
	beq		x31, x0, feq_else.96181	# 1
	fadd	f1, f0, f16	# 284
	jal		x0, feq_cont.96180	# 1
feq_else.96181:
	beq		x5, x7, beq.96183	# 284
	fadd	f1, f0, f23	# 284
	fdiv	f1, f1, f2	# 284
	jal		x0, beq_cont.96182	# 284
beq.96183:
	fadd	f1, f0, f16	# 284
	fdiv	f1, f1, f2	# 284
beq_cont.96182:
feq_cont.96180:
	addi	x5, x0, 4	# 285
	mul		x5, x7, x5	# 285
	add		x5, x4, x5	# 285
	flw		f2, 0(x5)	# 285
	fmul	f2, f2, f1	# 285
	addi	x5, x0, 4	# 285
	mul		x5, x7, x5	# 285
	add		x5, x4, x5	# 285
	fsw		f2, 0(x5)	# 285
	addi	x5, x0, 4	# 286
	mul		x5, x8, x5	# 286
	add		x5, x4, x5	# 286
	flw		f2, 0(x5)	# 286
	fmul	f2, f2, f1	# 286
	addi	x5, x0, 4	# 286
	mul		x5, x8, x5	# 286
	add		x5, x4, x5	# 286
	fsw		f2, 0(x5)	# 286
	addi	x5, x0, 4	# 287
	mul		x5, x6, x5	# 287
	add		x5, x4, x5	# 287
	flw		f2, 0(x5)	# 287
	fmul	f1, f2, f1	# 287
	addi	x5, x0, 4	# 287
	mul		x5, x6, x5	# 287
	add		x4, x4, x5	# 287
	fsw		f1, 0(x4)	# 287
	jalr	x0, x1, 0	# 287
read_screen_settings.2663.13194:
	lw		x4, 40(x27)	# 684
	flw		f1, 36(x27)	# 684
	flw		f2, 32(x27)	# 684
	flw		f3, 28(x27)	# 684
	flw		f4, 24(x27)	# 684
	lw		x5, 20(x27)	# 684
	lw		x6, 16(x27)	# 684
	lw		x7, 12(x27)	# 684
	lw		x8, 8(x27)	# 684
	flw		f5, 4(x27)	# 684
	fsw		f4, 0(x2)	# 684
	fsw		f3, -4(x2)	# 684
	sw		x5, -8(x2)	# 684
	sw		x4, -12(x2)	# 684
	fsw		f2, -16(x2)	# 684
	fsw		f1, -20(x2)	# 684
	fsw		f5, -24(x2)	# 684
	sw		x6, -28(x2)	# 684
	sw		x8, -32(x2)	# 684
	sw		x7, -36(x2)	# 684
	sw		x1, -40(x2)	# 684
	addi	x2, x2, -44	# 684
	jal		x1, min_caml_read_float	# 684
	addi	x2, x2, 44	# 684
	lw		x1, -40(x2)	# 684
	addi	x4, x26, 288	# 684
	addi	x5, x0, 4	# 684
	lw		x6, -36(x2)	# 684
	mul		x5, x6, x5	# 684
	add		x4, x4, x5	# 684
	fsw		f1, 0(x4)	# 684
	sw		x1, -40(x2)	# 685
	addi	x2, x2, -44	# 685
	jal		x1, min_caml_read_float	# 685
	addi	x2, x2, 44	# 685
	lw		x1, -40(x2)	# 685
	addi	x4, x26, 288	# 685
	addi	x5, x0, 4	# 685
	lw		x6, -32(x2)	# 685
	mul		x5, x6, x5	# 685
	add		x4, x4, x5	# 685
	fsw		f1, 0(x4)	# 685
	sw		x1, -40(x2)	# 686
	addi	x2, x2, -44	# 686
	jal		x1, min_caml_read_float	# 686
	addi	x2, x2, 44	# 686
	lw		x1, -40(x2)	# 686
	addi	x4, x26, 288	# 686
	addi	x5, x0, 4	# 686
	lw		x6, -28(x2)	# 686
	mul		x5, x6, x5	# 686
	add		x4, x4, x5	# 686
	fsw		f1, 0(x4)	# 686
	sw		x1, -40(x2)	# 688
	addi	x2, x2, -44	# 688
	jal		x1, min_caml_read_float	# 688
	addi	x2, x2, 44	# 688
	lw		x1, -40(x2)	# 688
	fadd	f2, f0, f24	# 677
	fmul	f1, f1, f2	# 677
	flw		f3, -24(x2)	# 54
	fsw		f2, -40(x2)	# 54
	fsw		f1, -44(x2)	# 54
	fle		x31, f3, f1	# 54
	beq		x31, x0, fle_else.96186	# 54
	flw		f4, -20(x2)	# 55
	fle		x31, f1, f4	# 55
	beq		x31, x0, fle_else.96188	# 55
	fmul	f5, f1, f1	# 41
	fmul	f6, f5, f5	# 42
	fadd	f7, f0, f16	# 43
	fadd	f8, f0, f17	# 43
	fmul	f8, f8, f5	# 43
	fsub	f7, f7, f8	# 43
	fadd	f8, f0, f19	# 43
	fmul	f8, f8, f6	# 43
	fadd	f7, f7, f8	# 43
	fadd	f8, f0, f18	# 43
	fmul	f5, f8, f5	# 43
	fmul	f5, f5, f6	# 43
	fsub	f1, f7, f5	# 43
	jal		x0, fle_cont.96187	# 55
fle_else.96188:
	flw		f5, -16(x2)	# 55
	fsub	f6, f5, f1	# 55
	lw		x27, -12(x2)	# 55
	fadd	f1, f0, f6
	sw		x1, -48(x2)	# 55
	addi	x2, x2, -52	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 52	# 55
	lw		x1, -48(x2)	# 55
fle_cont.96187:
	jal		x0, fle_cont.96185	# 54
fle_else.96186:
	fsub	f4, f0, f1	# 54
	lw		x27, -8(x2)	# 54
	fadd	f1, f0, f4
	sw		x1, -48(x2)	# 54
	addi	x2, x2, -52	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 52	# 54
	lw		x1, -48(x2)	# 54
fle_cont.96185:
	flw		f2, -44(x2)	# 46
	flw		f3, -24(x2)	# 46
	fsw		f1, -48(x2)	# 46
	fle		x31, f3, f2	# 46
	beq		x31, x0, fle_else.96190	# 46
	flw		f4, -4(x2)	# 47
	fle		x31, f4, f2	# 47
	beq		x31, x0, fle_else.96192	# 47
	fsub	f2, f2, f4	# 47
	lw		x27, -12(x2)	# 47
	fadd	f1, f0, f2
	sw		x1, -52(x2)	# 47
	addi	x2, x2, -56	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 56	# 47
	lw		x1, -52(x2)	# 47
	jal		x0, fle_cont.96191	# 47
fle_else.96192:
	flw		f5, 0(x2)	# 48
	fle		x31, f5, f2	# 48
	beq		x31, x0, fle_else.96194	# 48
	fsub	f2, f2, f5	# 48
	lw		x27, -12(x2)	# 48
	fadd	f1, f0, f2
	sw		x1, -52(x2)	# 48
	addi	x2, x2, -56	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 56	# 48
	lw		x1, -52(x2)	# 48
	fsub	f1, f0, f1	# 48
	jal		x0, fle_cont.96193	# 48
fle_else.96194:
	flw		f6, -16(x2)	# 49
	fle		x31, f2, f6	# 49
	beq		x31, x0, fle_else.96196	# 49
	flw		f7, -20(x2)	# 50
	fle		x31, f7, f2	# 50
	beq		x31, x0, fle_else.96198	# 50
	fsub	f2, f6, f2	# 50
	fmul	f2, f2, f2	# 41
	fmul	f8, f2, f2	# 42
	fadd	f9, f0, f16	# 43
	fadd	f10, f0, f17	# 43
	fmul	f10, f10, f2	# 43
	fsub	f9, f9, f10	# 43
	fadd	f10, f0, f19	# 43
	fmul	f10, f10, f8	# 43
	fadd	f9, f9, f10	# 43
	fadd	f10, f0, f18	# 43
	fmul	f2, f10, f2	# 43
	fmul	f2, f2, f8	# 43
	fsub	f1, f9, f2	# 43
	jal		x0, fle_cont.96197	# 50
fle_else.96198:
	fmul	f8, f2, f2	# 36
	fmul	f9, f2, f8	# 37
	fadd	f10, f0, f22	# 38
	fmul	f10, f10, f9	# 38
	fsub	f2, f2, f10	# 38
	fadd	f10, f0, f20	# 38
	fmul	f10, f10, f8	# 38
	fmul	f10, f10, f9	# 38
	fadd	f2, f2, f10	# 38
	fadd	f10, f0, f21	# 38
	fmul	f10, f10, f8	# 38
	fmul	f8, f10, f8	# 38
	fmul	f8, f8, f9	# 38
	fsub	f1, f2, f8	# 38
fle_cont.96197:
	jal		x0, fle_cont.96195	# 49
fle_else.96196:
	fsub	f2, f5, f2	# 49
	lw		x27, -12(x2)	# 49
	fadd	f1, f0, f2
	sw		x1, -52(x2)	# 49
	addi	x2, x2, -56	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 56	# 49
	lw		x1, -52(x2)	# 49
fle_cont.96195:
fle_cont.96193:
fle_cont.96191:
	jal		x0, fle_cont.96189	# 46
fle_else.96190:
	fsub	f2, f0, f2	# 46
	lw		x27, -12(x2)	# 46
	fadd	f1, f0, f2
	sw		x1, -52(x2)	# 46
	addi	x2, x2, -56	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 56	# 46
	lw		x1, -52(x2)	# 46
	fsub	f1, f0, f1	# 46
fle_cont.96189:
	fsw		f1, -52(x2)	# 691
	sw		x1, -56(x2)	# 691
	addi	x2, x2, -60	# 691
	jal		x1, min_caml_read_float	# 691
	addi	x2, x2, 60	# 691
	lw		x1, -56(x2)	# 691
	flw		f2, -40(x2)	# 677
	fmul	f1, f1, f2	# 677
	flw		f2, -24(x2)	# 54
	fsw		f1, -56(x2)	# 54
	fle		x31, f2, f1	# 54
	beq		x31, x0, fle_else.96200	# 54
	flw		f3, -20(x2)	# 55
	fle		x31, f1, f3	# 55
	beq		x31, x0, fle_else.96202	# 55
	fmul	f4, f1, f1	# 41
	fmul	f5, f4, f4	# 42
	fadd	f6, f0, f16	# 43
	fadd	f7, f0, f17	# 43
	fmul	f7, f7, f4	# 43
	fsub	f6, f6, f7	# 43
	fadd	f7, f0, f19	# 43
	fmul	f7, f7, f5	# 43
	fadd	f6, f6, f7	# 43
	fadd	f7, f0, f18	# 43
	fmul	f4, f7, f4	# 43
	fmul	f4, f4, f5	# 43
	fsub	f1, f6, f4	# 43
	jal		x0, fle_cont.96201	# 55
fle_else.96202:
	flw		f4, -16(x2)	# 55
	fsub	f5, f4, f1	# 55
	lw		x27, -12(x2)	# 55
	fadd	f1, f0, f5
	sw		x1, -60(x2)	# 55
	addi	x2, x2, -64	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 64	# 55
	lw		x1, -60(x2)	# 55
fle_cont.96201:
	jal		x0, fle_cont.96199	# 54
fle_else.96200:
	fsub	f3, f0, f1	# 54
	lw		x27, -8(x2)	# 54
	fadd	f1, f0, f3
	sw		x1, -60(x2)	# 54
	addi	x2, x2, -64	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 64	# 54
	lw		x1, -60(x2)	# 54
fle_cont.96199:
	flw		f2, -56(x2)	# 46
	flw		f3, -24(x2)	# 46
	fsw		f1, -60(x2)	# 46
	fle		x31, f3, f2	# 46
	beq		x31, x0, fle_else.96204	# 46
	flw		f4, -4(x2)	# 47
	fle		x31, f4, f2	# 47
	beq		x31, x0, fle_else.96206	# 47
	fsub	f2, f2, f4	# 47
	lw		x27, -12(x2)	# 47
	fadd	f1, f0, f2
	sw		x1, -64(x2)	# 47
	addi	x2, x2, -68	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 68	# 47
	lw		x1, -64(x2)	# 47
	jal		x0, fle_cont.96205	# 47
fle_else.96206:
	flw		f4, 0(x2)	# 48
	fle		x31, f4, f2	# 48
	beq		x31, x0, fle_else.96208	# 48
	fsub	f2, f2, f4	# 48
	lw		x27, -12(x2)	# 48
	fadd	f1, f0, f2
	sw		x1, -64(x2)	# 48
	addi	x2, x2, -68	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 68	# 48
	lw		x1, -64(x2)	# 48
	fsub	f1, f0, f1	# 48
	jal		x0, fle_cont.96207	# 48
fle_else.96208:
	flw		f5, -16(x2)	# 49
	fle		x31, f2, f5	# 49
	beq		x31, x0, fle_else.96210	# 49
	flw		f4, -20(x2)	# 50
	fle		x31, f4, f2	# 50
	beq		x31, x0, fle_else.96212	# 50
	fsub	f2, f5, f2	# 50
	fmul	f2, f2, f2	# 41
	fmul	f4, f2, f2	# 42
	fadd	f5, f0, f16	# 43
	fadd	f6, f0, f17	# 43
	fmul	f6, f6, f2	# 43
	fsub	f5, f5, f6	# 43
	fadd	f6, f0, f19	# 43
	fmul	f6, f6, f4	# 43
	fadd	f5, f5, f6	# 43
	fadd	f6, f0, f18	# 43
	fmul	f2, f6, f2	# 43
	fmul	f2, f2, f4	# 43
	fsub	f1, f5, f2	# 43
	jal		x0, fle_cont.96211	# 50
fle_else.96212:
	fmul	f4, f2, f2	# 36
	fmul	f5, f2, f4	# 37
	fadd	f6, f0, f22	# 38
	fmul	f6, f6, f5	# 38
	fsub	f2, f2, f6	# 38
	fadd	f6, f0, f20	# 38
	fmul	f6, f6, f4	# 38
	fmul	f6, f6, f5	# 38
	fadd	f2, f2, f6	# 38
	fadd	f6, f0, f21	# 38
	fmul	f6, f6, f4	# 38
	fmul	f4, f6, f4	# 38
	fmul	f4, f4, f5	# 38
	fsub	f1, f2, f4	# 38
fle_cont.96211:
	jal		x0, fle_cont.96209	# 49
fle_else.96210:
	fsub	f2, f4, f2	# 49
	lw		x27, -12(x2)	# 49
	fadd	f1, f0, f2
	sw		x1, -64(x2)	# 49
	addi	x2, x2, -68	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 68	# 49
	lw		x1, -64(x2)	# 49
fle_cont.96209:
fle_cont.96207:
fle_cont.96205:
	jal		x0, fle_cont.96203	# 46
fle_else.96204:
	fsub	f2, f0, f2	# 46
	lw		x27, -12(x2)	# 46
	fadd	f1, f0, f2
	sw		x1, -64(x2)	# 46
	addi	x2, x2, -68	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 68	# 46
	lw		x1, -64(x2)	# 46
	fsub	f1, f0, f1	# 46
fle_cont.96203:
	flw		f2, -48(x2)	# 695
	fmul	f3, f2, f1	# 695
	lui		x4, %hi(l.21095)	# 695
	ori		x4, x0, %lo(l.21095)	# 695
	flw		f4, 0(x4)	# 695
	fmul	f3, f3, f4	# 695
	addi	x4, x26, 684	# 695
	addi	x5, x0, 4	# 695
	lw		x6, -36(x2)	# 695
	mul		x5, x6, x5	# 695
	add		x4, x4, x5	# 695
	fsw		f3, 0(x4)	# 695
	lui		x4, %hi(l.21100)	# 696
	ori		x4, x0, %lo(l.21100)	# 696
	flw		f3, 0(x4)	# 696
	flw		f5, -52(x2)	# 696
	fmul	f3, f5, f3	# 696
	addi	x4, x26, 684	# 696
	addi	x5, x0, 4	# 696
	lw		x7, -32(x2)	# 696
	mul		x5, x7, x5	# 696
	add		x4, x4, x5	# 696
	fsw		f3, 0(x4)	# 696
	flw		f3, -60(x2)	# 697
	fmul	f6, f2, f3	# 697
	fmul	f4, f6, f4	# 697
	addi	x4, x26, 684	# 697
	addi	x5, x0, 4	# 697
	lw		x8, -28(x2)	# 697
	mul		x5, x8, x5	# 697
	add		x4, x4, x5	# 697
	fsw		f4, 0(x4)	# 697
	addi	x4, x26, 660	# 699
	addi	x5, x0, 4	# 699
	mul		x5, x6, x5	# 699
	add		x4, x4, x5	# 699
	fsw		f3, 0(x4)	# 699
	addi	x4, x26, 660	# 700
	addi	x5, x0, 4	# 700
	mul		x5, x7, x5	# 700
	add		x4, x4, x5	# 700
	flw		f4, -24(x2)	# 700
	fsw		f4, 0(x4)	# 700
	fsub	f4, f0, f1	# 4
	addi	x4, x26, 660	# 701
	addi	x5, x0, 4	# 701
	mul		x5, x8, x5	# 701
	add		x4, x4, x5	# 701
	fsw		f4, 0(x4)	# 701
	fsub	f4, f0, f5	# 4
	fmul	f1, f4, f1	# 703
	addi	x4, x26, 672	# 703
	addi	x5, x0, 4	# 703
	mul		x5, x6, x5	# 703
	add		x4, x4, x5	# 703
	fsw		f1, 0(x4)	# 703
	fsub	f1, f0, f2	# 4
	addi	x4, x26, 672	# 704
	addi	x5, x0, 4	# 704
	mul		x5, x7, x5	# 704
	add		x4, x4, x5	# 704
	fsw		f1, 0(x4)	# 704
	fmul	f1, f4, f3	# 705
	addi	x4, x26, 672	# 705
	addi	x5, x0, 4	# 705
	mul		x5, x8, x5	# 705
	add		x4, x4, x5	# 705
	fsw		f1, 0(x4)	# 705
	addi	x4, x26, 288	# 707
	addi	x5, x0, 4	# 707
	mul		x5, x6, x5	# 707
	add		x4, x4, x5	# 707
	flw		f1, 0(x4)	# 707
	addi	x4, x26, 684	# 707
	addi	x5, x0, 4	# 707
	mul		x5, x6, x5	# 707
	add		x4, x4, x5	# 707
	flw		f2, 0(x4)	# 707
	fsub	f1, f1, f2	# 707
	addi	x4, x26, 300	# 707
	addi	x5, x0, 4	# 707
	mul		x5, x6, x5	# 707
	add		x4, x4, x5	# 707
	fsw		f1, 0(x4)	# 707
	addi	x4, x26, 288	# 708
	addi	x5, x0, 4	# 708
	mul		x5, x7, x5	# 708
	add		x4, x4, x5	# 708
	flw		f1, 0(x4)	# 708
	addi	x4, x26, 684	# 708
	addi	x5, x0, 4	# 708
	mul		x5, x7, x5	# 708
	add		x4, x4, x5	# 708
	flw		f2, 0(x4)	# 708
	fsub	f1, f1, f2	# 708
	addi	x4, x26, 300	# 708
	addi	x5, x0, 4	# 708
	mul		x5, x7, x5	# 708
	add		x4, x4, x5	# 708
	fsw		f1, 0(x4)	# 708
	addi	x4, x26, 288	# 709
	addi	x5, x0, 4	# 709
	mul		x5, x8, x5	# 709
	add		x4, x4, x5	# 709
	flw		f1, 0(x4)	# 709
	addi	x4, x26, 684	# 709
	addi	x5, x0, 4	# 709
	mul		x5, x8, x5	# 709
	add		x4, x4, x5	# 709
	flw		f2, 0(x4)	# 709
	fsub	f1, f1, f2	# 709
	addi	x4, x26, 300	# 709
	addi	x5, x0, 4	# 709
	mul		x5, x8, x5	# 709
	add		x4, x4, x5	# 709
	fsw		f1, 0(x4)	# 709
	jalr	x0, x1, 0	# 709
read_light.2665.13196:
	lw		x4, 40(x27)	# 716
	flw		f1, 36(x27)	# 716
	flw		f2, 32(x27)	# 716
	flw		f3, 28(x27)	# 716
	flw		f4, 24(x27)	# 716
	lw		x5, 20(x27)	# 716
	lw		x6, 16(x27)	# 716
	lw		x7, 12(x27)	# 716
	lw		x8, 8(x27)	# 716
	flw		f5, 4(x27)	# 716
	sw		x6, 0(x2)	# 716
	sw		x7, -4(x2)	# 716
	sw		x5, -8(x2)	# 716
	sw		x8, -12(x2)	# 716
	fsw		f1, -16(x2)	# 716
	fsw		f2, -20(x2)	# 716
	fsw		f4, -24(x2)	# 716
	sw		x4, -28(x2)	# 716
	fsw		f3, -32(x2)	# 716
	fsw		f5, -36(x2)	# 716
	sw		x1, -40(x2)	# 716
	addi	x2, x2, -44	# 716
	jal		x1, min_caml_read_int	# 716
	addi	x2, x2, 44	# 716
	lw		x1, -40(x2)	# 716
	sw		x1, -40(x2)	# 719
	addi	x2, x2, -44	# 719
	jal		x1, min_caml_read_float	# 719
	addi	x2, x2, 44	# 719
	lw		x1, -40(x2)	# 719
	fadd	f2, f0, f24	# 677
	fmul	f1, f1, f2	# 677
	flw		f3, -36(x2)	# 46
	fsw		f1, -40(x2)	# 46
	fsw		f2, -44(x2)	# 46
	fle		x31, f3, f1	# 46
	beq		x31, x0, fle_else.96215	# 46
	flw		f4, -32(x2)	# 47
	fle		x31, f4, f1	# 47
	beq		x31, x0, fle_else.96217	# 47
	fsub	f5, f1, f4	# 47
	lw		x27, -28(x2)	# 47
	fadd	f1, f0, f5
	sw		x1, -48(x2)	# 47
	addi	x2, x2, -52	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 52	# 47
	lw		x1, -48(x2)	# 47
	jal		x0, fle_cont.96216	# 47
fle_else.96217:
	flw		f5, -24(x2)	# 48
	fle		x31, f5, f1	# 48
	beq		x31, x0, fle_else.96219	# 48
	fsub	f6, f1, f5	# 48
	lw		x27, -28(x2)	# 48
	fadd	f1, f0, f6
	sw		x1, -48(x2)	# 48
	addi	x2, x2, -52	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 52	# 48
	lw		x1, -48(x2)	# 48
	fsub	f1, f0, f1	# 48
	jal		x0, fle_cont.96218	# 48
fle_else.96219:
	flw		f6, -20(x2)	# 49
	fle		x31, f1, f6	# 49
	beq		x31, x0, fle_else.96221	# 49
	flw		f7, -16(x2)	# 50
	fle		x31, f7, f1	# 50
	beq		x31, x0, fle_else.96223	# 50
	fsub	f8, f6, f1	# 50
	fmul	f8, f8, f8	# 41
	fmul	f9, f8, f8	# 42
	fadd	f10, f0, f16	# 43
	fadd	f11, f0, f17	# 43
	fmul	f11, f11, f8	# 43
	fsub	f10, f10, f11	# 43
	fadd	f11, f0, f19	# 43
	fmul	f11, f11, f9	# 43
	fadd	f10, f10, f11	# 43
	fadd	f11, f0, f18	# 43
	fmul	f8, f11, f8	# 43
	fmul	f8, f8, f9	# 43
	fsub	f1, f10, f8	# 43
	jal		x0, fle_cont.96222	# 50
fle_else.96223:
	fmul	f8, f1, f1	# 36
	fmul	f9, f1, f8	# 37
	fadd	f10, f0, f22	# 38
	fmul	f10, f10, f9	# 38
	fsub	f10, f1, f10	# 38
	fadd	f11, f0, f20	# 38
	fmul	f11, f11, f8	# 38
	fmul	f11, f11, f9	# 38
	fadd	f10, f10, f11	# 38
	fadd	f11, f0, f21	# 38
	fmul	f11, f11, f8	# 38
	fmul	f8, f11, f8	# 38
	fmul	f8, f8, f9	# 38
	fsub	f1, f10, f8	# 38
fle_cont.96222:
	jal		x0, fle_cont.96220	# 49
fle_else.96221:
	fsub	f7, f5, f1	# 49
	lw		x27, -28(x2)	# 49
	fadd	f1, f0, f7
	sw		x1, -48(x2)	# 49
	addi	x2, x2, -52	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 52	# 49
	lw		x1, -48(x2)	# 49
fle_cont.96220:
fle_cont.96218:
fle_cont.96216:
	jal		x0, fle_cont.96214	# 46
fle_else.96215:
	fsub	f4, f0, f1	# 46
	lw		x27, -28(x2)	# 46
	fadd	f1, f0, f4
	sw		x1, -48(x2)	# 46
	addi	x2, x2, -52	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 52	# 46
	lw		x1, -48(x2)	# 46
	fsub	f1, f0, f1	# 46
fle_cont.96214:
	fsub	f1, f0, f1	# 4
	addi	x4, x26, 312	# 721
	addi	x5, x0, 4	# 721
	lw		x6, -12(x2)	# 721
	mul		x5, x6, x5	# 721
	add		x4, x4, x5	# 721
	fsw		f1, 0(x4)	# 721
	sw		x1, -48(x2)	# 722
	addi	x2, x2, -52	# 722
	jal		x1, min_caml_read_float	# 722
	addi	x2, x2, 52	# 722
	lw		x1, -48(x2)	# 722
	flw		f2, -44(x2)	# 677
	fmul	f1, f1, f2	# 677
	flw		f2, -40(x2)	# 54
	flw		f3, -36(x2)	# 54
	fsw		f1, -48(x2)	# 54
	fle		x31, f3, f2	# 54
	beq		x31, x0, fle_else.96225	# 54
	flw		f4, -16(x2)	# 55
	fle		x31, f2, f4	# 55
	beq		x31, x0, fle_else.96227	# 55
	fmul	f2, f2, f2	# 41
	fmul	f5, f2, f2	# 42
	fadd	f6, f0, f16	# 43
	fadd	f7, f0, f17	# 43
	fmul	f7, f7, f2	# 43
	fsub	f6, f6, f7	# 43
	fadd	f7, f0, f19	# 43
	fmul	f7, f7, f5	# 43
	fadd	f6, f6, f7	# 43
	fadd	f7, f0, f18	# 43
	fmul	f2, f7, f2	# 43
	fmul	f2, f2, f5	# 43
	fsub	f1, f6, f2	# 43
	jal		x0, fle_cont.96226	# 55
fle_else.96227:
	flw		f5, -20(x2)	# 55
	fsub	f2, f5, f2	# 55
	lw		x27, -28(x2)	# 55
	fadd	f1, f0, f2
	sw		x1, -52(x2)	# 55
	addi	x2, x2, -56	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 56	# 55
	lw		x1, -52(x2)	# 55
fle_cont.96226:
	jal		x0, fle_cont.96224	# 54
fle_else.96225:
	fsub	f2, f0, f2	# 54
	lw		x27, -8(x2)	# 54
	fadd	f1, f0, f2
	sw		x1, -52(x2)	# 54
	addi	x2, x2, -56	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 56	# 54
	lw		x1, -52(x2)	# 54
fle_cont.96224:
	flw		f2, -48(x2)	# 46
	flw		f3, -36(x2)	# 46
	fsw		f1, -52(x2)	# 46
	fle		x31, f3, f2	# 46
	beq		x31, x0, fle_else.96229	# 46
	flw		f4, -32(x2)	# 47
	fle		x31, f4, f2	# 47
	beq		x31, x0, fle_else.96231	# 47
	fsub	f4, f2, f4	# 47
	lw		x27, -28(x2)	# 47
	fadd	f1, f0, f4
	sw		x1, -56(x2)	# 47
	addi	x2, x2, -60	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 60	# 47
	lw		x1, -56(x2)	# 47
	jal		x0, fle_cont.96230	# 47
fle_else.96231:
	flw		f4, -24(x2)	# 48
	fle		x31, f4, f2	# 48
	beq		x31, x0, fle_else.96233	# 48
	fsub	f4, f2, f4	# 48
	lw		x27, -28(x2)	# 48
	fadd	f1, f0, f4
	sw		x1, -56(x2)	# 48
	addi	x2, x2, -60	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 60	# 48
	lw		x1, -56(x2)	# 48
	fsub	f1, f0, f1	# 48
	jal		x0, fle_cont.96232	# 48
fle_else.96233:
	flw		f5, -20(x2)	# 49
	fle		x31, f2, f5	# 49
	beq		x31, x0, fle_else.96235	# 49
	flw		f4, -16(x2)	# 50
	fle		x31, f4, f2	# 50
	beq		x31, x0, fle_else.96237	# 50
	fsub	f6, f5, f2	# 50
	fmul	f6, f6, f6	# 41
	fmul	f7, f6, f6	# 42
	fadd	f8, f0, f16	# 43
	fadd	f9, f0, f17	# 43
	fmul	f9, f9, f6	# 43
	fsub	f8, f8, f9	# 43
	fadd	f9, f0, f19	# 43
	fmul	f9, f9, f7	# 43
	fadd	f8, f8, f9	# 43
	fadd	f9, f0, f18	# 43
	fmul	f6, f9, f6	# 43
	fmul	f6, f6, f7	# 43
	fsub	f1, f8, f6	# 43
	jal		x0, fle_cont.96236	# 50
fle_else.96237:
	fmul	f6, f2, f2	# 36
	fmul	f7, f2, f6	# 37
	fadd	f8, f0, f22	# 38
	fmul	f8, f8, f7	# 38
	fsub	f8, f2, f8	# 38
	fadd	f9, f0, f20	# 38
	fmul	f9, f9, f6	# 38
	fmul	f9, f9, f7	# 38
	fadd	f8, f8, f9	# 38
	fadd	f9, f0, f21	# 38
	fmul	f9, f9, f6	# 38
	fmul	f6, f9, f6	# 38
	fmul	f6, f6, f7	# 38
	fsub	f1, f8, f6	# 38
fle_cont.96236:
	jal		x0, fle_cont.96234	# 49
fle_else.96235:
	fsub	f4, f4, f2	# 49
	lw		x27, -28(x2)	# 49
	fadd	f1, f0, f4
	sw		x1, -56(x2)	# 49
	addi	x2, x2, -60	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 60	# 49
	lw		x1, -56(x2)	# 49
fle_cont.96234:
fle_cont.96232:
fle_cont.96230:
	jal		x0, fle_cont.96228	# 46
fle_else.96229:
	fsub	f4, f0, f2	# 46
	lw		x27, -28(x2)	# 46
	fadd	f1, f0, f4
	sw		x1, -56(x2)	# 46
	addi	x2, x2, -60	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 60	# 46
	lw		x1, -56(x2)	# 46
	fsub	f1, f0, f1	# 46
fle_cont.96228:
	flw		f2, -52(x2)	# 725
	fmul	f1, f2, f1	# 725
	addi	x4, x26, 312	# 725
	addi	x5, x0, 4	# 725
	lw		x6, -4(x2)	# 725
	mul		x5, x6, x5	# 725
	add		x4, x4, x5	# 725
	fsw		f1, 0(x4)	# 725
	flw		f1, -48(x2)	# 54
	flw		f3, -36(x2)	# 54
	fle		x31, f3, f1	# 54
	beq		x31, x0, fle_else.96239	# 54
	flw		f3, -16(x2)	# 55
	fle		x31, f1, f3	# 55
	beq		x31, x0, fle_else.96241	# 55
	fmul	f1, f1, f1	# 41
	fmul	f3, f1, f1	# 42
	fadd	f4, f0, f16	# 43
	fadd	f5, f0, f17	# 43
	fmul	f5, f5, f1	# 43
	fsub	f4, f4, f5	# 43
	fadd	f5, f0, f19	# 43
	fmul	f5, f5, f3	# 43
	fadd	f4, f4, f5	# 43
	fadd	f5, f0, f18	# 43
	fmul	f1, f5, f1	# 43
	fmul	f1, f1, f3	# 43
	fsub	f1, f4, f1	# 43
	jal		x0, fle_cont.96240	# 55
fle_else.96241:
	flw		f3, -20(x2)	# 55
	fsub	f1, f3, f1	# 55
	lw		x27, -28(x2)	# 55
	sw		x1, -56(x2)	# 55
	addi	x2, x2, -60	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 60	# 55
	lw		x1, -56(x2)	# 55
fle_cont.96240:
	jal		x0, fle_cont.96238	# 54
fle_else.96239:
	fsub	f1, f0, f1	# 54
	lw		x27, -8(x2)	# 54
	sw		x1, -56(x2)	# 54
	addi	x2, x2, -60	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 60	# 54
	lw		x1, -56(x2)	# 54
fle_cont.96238:
	flw		f2, -52(x2)	# 727
	fmul	f1, f2, f1	# 727
	addi	x4, x26, 312	# 727
	addi	x5, x0, 4	# 727
	lw		x6, 0(x2)	# 727
	mul		x5, x6, x5	# 727
	add		x4, x4, x5	# 727
	fsw		f1, 0(x4)	# 727
	sw		x1, -56(x2)	# 728
	addi	x2, x2, -60	# 728
	jal		x1, min_caml_read_float	# 728
	addi	x2, x2, 60	# 728
	lw		x1, -56(x2)	# 728
	addi	x4, x26, 324	# 728
	addi	x5, x0, 4	# 728
	lw		x6, -4(x2)	# 728
	mul		x5, x6, x5	# 728
	add		x4, x4, x5	# 728
	fsw		f1, 0(x4)	# 728
	jalr	x0, x1, 0	# 728
rotate_quadratic_matrix.2667.13198:
	lw		x6, 40(x27)	# 738
	flw		f1, 36(x27)	# 738
	flw		f2, 32(x27)	# 738
	flw		f3, 28(x27)	# 738
	flw		f4, 24(x27)	# 738
	lw		x7, 20(x27)	# 738
	lw		x8, 16(x27)	# 738
	lw		x9, 12(x27)	# 738
	lw		x10, 8(x27)	# 738
	flw		f5, 4(x27)	# 738
	addi	x11, x0, 4	# 738
	mul		x11, x9, x11	# 738
	add		x11, x5, x11	# 738
	flw		f6, 0(x11)	# 738
	sw		x4, 0(x2)	# 54
	sw		x8, -4(x2)	# 54
	sw		x7, -8(x2)	# 54
	sw		x10, -12(x2)	# 54
	fsw		f1, -16(x2)	# 54
	fsw		f2, -20(x2)	# 54
	fsw		f4, -24(x2)	# 54
	sw		x6, -28(x2)	# 54
	fsw		f3, -32(x2)	# 54
	fsw		f5, -36(x2)	# 54
	sw		x5, -40(x2)	# 54
	sw		x9, -44(x2)	# 54
	fle		x31, f5, f6	# 54
	beq		x31, x0, fle_else.96244	# 54
	fle		x31, f6, f1	# 55
	beq		x31, x0, fle_else.96246	# 55
	fmul	f6, f6, f6	# 41
	fmul	f7, f6, f6	# 42
	fadd	f8, f0, f16	# 43
	fadd	f9, f0, f17	# 43
	fmul	f9, f9, f6	# 43
	fsub	f8, f8, f9	# 43
	fadd	f9, f0, f19	# 43
	fmul	f9, f9, f7	# 43
	fadd	f8, f8, f9	# 43
	fadd	f9, f0, f18	# 43
	fmul	f6, f9, f6	# 43
	fmul	f6, f6, f7	# 43
	fsub	f1, f8, f6	# 43
	jal		x0, fle_cont.96245	# 55
fle_else.96246:
	fsub	f6, f2, f6	# 55
	addi	x27, x6, 0
	fadd	f1, f0, f6
	sw		x1, -48(x2)	# 55
	addi	x2, x2, -52	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 52	# 55
	lw		x1, -48(x2)	# 55
fle_cont.96245:
	jal		x0, fle_cont.96243	# 54
fle_else.96244:
	fsub	f6, f0, f6	# 54
	addi	x27, x7, 0
	fadd	f1, f0, f6
	sw		x1, -48(x2)	# 54
	addi	x2, x2, -52	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 52	# 54
	lw		x1, -48(x2)	# 54
fle_cont.96243:
	addi	x4, x0, 4	# 739
	lw		x5, -44(x2)	# 739
	mul		x4, x5, x4	# 739
	lw		x6, -40(x2)	# 739
	add		x4, x6, x4	# 739
	flw		f2, 0(x4)	# 739
	flw		f3, -36(x2)	# 46
	fsw		f1, -48(x2)	# 46
	fle		x31, f3, f2	# 46
	beq		x31, x0, fle_else.96248	# 46
	flw		f4, -32(x2)	# 47
	fle		x31, f4, f2	# 47
	beq		x31, x0, fle_else.96250	# 47
	fsub	f2, f2, f4	# 47
	lw		x27, -28(x2)	# 47
	fadd	f1, f0, f2
	sw		x1, -52(x2)	# 47
	addi	x2, x2, -56	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 56	# 47
	lw		x1, -52(x2)	# 47
	jal		x0, fle_cont.96249	# 47
fle_else.96250:
	flw		f5, -24(x2)	# 48
	fle		x31, f5, f2	# 48
	beq		x31, x0, fle_else.96252	# 48
	fsub	f2, f2, f5	# 48
	lw		x27, -28(x2)	# 48
	fadd	f1, f0, f2
	sw		x1, -52(x2)	# 48
	addi	x2, x2, -56	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 56	# 48
	lw		x1, -52(x2)	# 48
	fsub	f1, f0, f1	# 48
	jal		x0, fle_cont.96251	# 48
fle_else.96252:
	flw		f6, -20(x2)	# 49
	fle		x31, f2, f6	# 49
	beq		x31, x0, fle_else.96254	# 49
	flw		f7, -16(x2)	# 50
	fle		x31, f7, f2	# 50
	beq		x31, x0, fle_else.96256	# 50
	fsub	f2, f6, f2	# 50
	fmul	f2, f2, f2	# 41
	fmul	f8, f2, f2	# 42
	fadd	f9, f0, f16	# 43
	fadd	f10, f0, f17	# 43
	fmul	f10, f10, f2	# 43
	fsub	f9, f9, f10	# 43
	fadd	f10, f0, f19	# 43
	fmul	f10, f10, f8	# 43
	fadd	f9, f9, f10	# 43
	fadd	f10, f0, f18	# 43
	fmul	f2, f10, f2	# 43
	fmul	f2, f2, f8	# 43
	fsub	f1, f9, f2	# 43
	jal		x0, fle_cont.96255	# 50
fle_else.96256:
	fmul	f8, f2, f2	# 36
	fmul	f9, f2, f8	# 37
	fadd	f10, f0, f22	# 38
	fmul	f10, f10, f9	# 38
	fsub	f2, f2, f10	# 38
	fadd	f10, f0, f20	# 38
	fmul	f10, f10, f8	# 38
	fmul	f10, f10, f9	# 38
	fadd	f2, f2, f10	# 38
	fadd	f10, f0, f21	# 38
	fmul	f10, f10, f8	# 38
	fmul	f8, f10, f8	# 38
	fmul	f8, f8, f9	# 38
	fsub	f1, f2, f8	# 38
fle_cont.96255:
	jal		x0, fle_cont.96253	# 49
fle_else.96254:
	fsub	f2, f5, f2	# 49
	lw		x27, -28(x2)	# 49
	fadd	f1, f0, f2
	sw		x1, -52(x2)	# 49
	addi	x2, x2, -56	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 56	# 49
	lw		x1, -52(x2)	# 49
fle_cont.96253:
fle_cont.96251:
fle_cont.96249:
	jal		x0, fle_cont.96247	# 46
fle_else.96248:
	fsub	f2, f0, f2	# 46
	lw		x27, -28(x2)	# 46
	fadd	f1, f0, f2
	sw		x1, -52(x2)	# 46
	addi	x2, x2, -56	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 56	# 46
	lw		x1, -52(x2)	# 46
	fsub	f1, f0, f1	# 46
fle_cont.96247:
	addi	x4, x0, 4	# 740
	lw		x5, -12(x2)	# 740
	mul		x4, x5, x4	# 740
	lw		x6, -40(x2)	# 740
	add		x4, x6, x4	# 740
	flw		f2, 0(x4)	# 740
	flw		f3, -36(x2)	# 54
	fsw		f1, -52(x2)	# 54
	fle		x31, f3, f2	# 54
	beq		x31, x0, fle_else.96258	# 54
	flw		f4, -16(x2)	# 55
	fle		x31, f2, f4	# 55
	beq		x31, x0, fle_else.96260	# 55
	fmul	f2, f2, f2	# 41
	fmul	f5, f2, f2	# 42
	fadd	f6, f0, f16	# 43
	fadd	f7, f0, f17	# 43
	fmul	f7, f7, f2	# 43
	fsub	f6, f6, f7	# 43
	fadd	f7, f0, f19	# 43
	fmul	f7, f7, f5	# 43
	fadd	f6, f6, f7	# 43
	fadd	f7, f0, f18	# 43
	fmul	f2, f7, f2	# 43
	fmul	f2, f2, f5	# 43
	fsub	f1, f6, f2	# 43
	jal		x0, fle_cont.96259	# 55
fle_else.96260:
	flw		f5, -20(x2)	# 55
	fsub	f2, f5, f2	# 55
	lw		x27, -28(x2)	# 55
	fadd	f1, f0, f2
	sw		x1, -56(x2)	# 55
	addi	x2, x2, -60	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 60	# 55
	lw		x1, -56(x2)	# 55
fle_cont.96259:
	jal		x0, fle_cont.96257	# 54
fle_else.96258:
	fsub	f2, f0, f2	# 54
	lw		x27, -8(x2)	# 54
	fadd	f1, f0, f2
	sw		x1, -56(x2)	# 54
	addi	x2, x2, -60	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 60	# 54
	lw		x1, -56(x2)	# 54
fle_cont.96257:
	addi	x4, x0, 4	# 741
	lw		x5, -12(x2)	# 741
	mul		x4, x5, x4	# 741
	lw		x6, -40(x2)	# 741
	add		x4, x6, x4	# 741
	flw		f2, 0(x4)	# 741
	flw		f3, -36(x2)	# 46
	fsw		f1, -56(x2)	# 46
	fle		x31, f3, f2	# 46
	beq		x31, x0, fle_else.96262	# 46
	flw		f4, -32(x2)	# 47
	fle		x31, f4, f2	# 47
	beq		x31, x0, fle_else.96264	# 47
	fsub	f2, f2, f4	# 47
	lw		x27, -28(x2)	# 47
	fadd	f1, f0, f2
	sw		x1, -60(x2)	# 47
	addi	x2, x2, -64	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 64	# 47
	lw		x1, -60(x2)	# 47
	jal		x0, fle_cont.96263	# 47
fle_else.96264:
	flw		f5, -24(x2)	# 48
	fle		x31, f5, f2	# 48
	beq		x31, x0, fle_else.96266	# 48
	fsub	f2, f2, f5	# 48
	lw		x27, -28(x2)	# 48
	fadd	f1, f0, f2
	sw		x1, -60(x2)	# 48
	addi	x2, x2, -64	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 64	# 48
	lw		x1, -60(x2)	# 48
	fsub	f1, f0, f1	# 48
	jal		x0, fle_cont.96265	# 48
fle_else.96266:
	flw		f6, -20(x2)	# 49
	fle		x31, f2, f6	# 49
	beq		x31, x0, fle_else.96268	# 49
	flw		f7, -16(x2)	# 50
	fle		x31, f7, f2	# 50
	beq		x31, x0, fle_else.96270	# 50
	fsub	f2, f6, f2	# 50
	fmul	f2, f2, f2	# 41
	fmul	f8, f2, f2	# 42
	fadd	f9, f0, f16	# 43
	fadd	f10, f0, f17	# 43
	fmul	f10, f10, f2	# 43
	fsub	f9, f9, f10	# 43
	fadd	f10, f0, f19	# 43
	fmul	f10, f10, f8	# 43
	fadd	f9, f9, f10	# 43
	fadd	f10, f0, f18	# 43
	fmul	f2, f10, f2	# 43
	fmul	f2, f2, f8	# 43
	fsub	f1, f9, f2	# 43
	jal		x0, fle_cont.96269	# 50
fle_else.96270:
	fmul	f8, f2, f2	# 36
	fmul	f9, f2, f8	# 37
	fadd	f10, f0, f22	# 38
	fmul	f10, f10, f9	# 38
	fsub	f2, f2, f10	# 38
	fadd	f10, f0, f20	# 38
	fmul	f10, f10, f8	# 38
	fmul	f10, f10, f9	# 38
	fadd	f2, f2, f10	# 38
	fadd	f10, f0, f21	# 38
	fmul	f10, f10, f8	# 38
	fmul	f8, f10, f8	# 38
	fmul	f8, f8, f9	# 38
	fsub	f1, f2, f8	# 38
fle_cont.96269:
	jal		x0, fle_cont.96267	# 49
fle_else.96268:
	fsub	f2, f5, f2	# 49
	lw		x27, -28(x2)	# 49
	fadd	f1, f0, f2
	sw		x1, -60(x2)	# 49
	addi	x2, x2, -64	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 64	# 49
	lw		x1, -60(x2)	# 49
fle_cont.96267:
fle_cont.96265:
fle_cont.96263:
	jal		x0, fle_cont.96261	# 46
fle_else.96262:
	fsub	f2, f0, f2	# 46
	lw		x27, -28(x2)	# 46
	fadd	f1, f0, f2
	sw		x1, -60(x2)	# 46
	addi	x2, x2, -64	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 64	# 46
	lw		x1, -60(x2)	# 46
	fsub	f1, f0, f1	# 46
fle_cont.96261:
	addi	x4, x0, 4	# 742
	lw		x5, -4(x2)	# 742
	mul		x4, x5, x4	# 742
	lw		x6, -40(x2)	# 742
	add		x4, x6, x4	# 742
	flw		f2, 0(x4)	# 742
	flw		f3, -36(x2)	# 54
	fsw		f1, -60(x2)	# 54
	fle		x31, f3, f2	# 54
	beq		x31, x0, fle_else.96272	# 54
	flw		f4, -16(x2)	# 55
	fle		x31, f2, f4	# 55
	beq		x31, x0, fle_else.96274	# 55
	fmul	f2, f2, f2	# 41
	fmul	f5, f2, f2	# 42
	fadd	f6, f0, f16	# 43
	fadd	f7, f0, f17	# 43
	fmul	f7, f7, f2	# 43
	fsub	f6, f6, f7	# 43
	fadd	f7, f0, f19	# 43
	fmul	f7, f7, f5	# 43
	fadd	f6, f6, f7	# 43
	fadd	f7, f0, f18	# 43
	fmul	f2, f7, f2	# 43
	fmul	f2, f2, f5	# 43
	fsub	f1, f6, f2	# 43
	jal		x0, fle_cont.96273	# 55
fle_else.96274:
	flw		f5, -20(x2)	# 55
	fsub	f2, f5, f2	# 55
	lw		x27, -28(x2)	# 55
	fadd	f1, f0, f2
	sw		x1, -64(x2)	# 55
	addi	x2, x2, -68	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 68	# 55
	lw		x1, -64(x2)	# 55
fle_cont.96273:
	jal		x0, fle_cont.96271	# 54
fle_else.96272:
	fsub	f2, f0, f2	# 54
	lw		x27, -8(x2)	# 54
	fadd	f1, f0, f2
	sw		x1, -64(x2)	# 54
	addi	x2, x2, -68	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 68	# 54
	lw		x1, -64(x2)	# 54
fle_cont.96271:
	addi	x4, x0, 4	# 743
	lw		x5, -4(x2)	# 743
	mul		x4, x5, x4	# 743
	lw		x6, -40(x2)	# 743
	add		x4, x6, x4	# 743
	flw		f2, 0(x4)	# 743
	flw		f3, -36(x2)	# 46
	fsw		f1, -64(x2)	# 46
	fle		x31, f3, f2	# 46
	beq		x31, x0, fle_else.96276	# 46
	flw		f3, -32(x2)	# 47
	fle		x31, f3, f2	# 47
	beq		x31, x0, fle_else.96278	# 47
	fsub	f2, f2, f3	# 47
	lw		x27, -28(x2)	# 47
	fadd	f1, f0, f2
	sw		x1, -68(x2)	# 47
	addi	x2, x2, -72	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 72	# 47
	lw		x1, -68(x2)	# 47
	jal		x0, fle_cont.96277	# 47
fle_else.96278:
	flw		f3, -24(x2)	# 48
	fle		x31, f3, f2	# 48
	beq		x31, x0, fle_else.96280	# 48
	fsub	f2, f2, f3	# 48
	lw		x27, -28(x2)	# 48
	fadd	f1, f0, f2
	sw		x1, -68(x2)	# 48
	addi	x2, x2, -72	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 72	# 48
	lw		x1, -68(x2)	# 48
	fsub	f1, f0, f1	# 48
	jal		x0, fle_cont.96279	# 48
fle_else.96280:
	flw		f4, -20(x2)	# 49
	fle		x31, f2, f4	# 49
	beq		x31, x0, fle_else.96282	# 49
	flw		f3, -16(x2)	# 50
	fle		x31, f3, f2	# 50
	beq		x31, x0, fle_else.96284	# 50
	fsub	f2, f4, f2	# 50
	fmul	f2, f2, f2	# 41
	fmul	f3, f2, f2	# 42
	fadd	f4, f0, f16	# 43
	fadd	f5, f0, f17	# 43
	fmul	f5, f5, f2	# 43
	fsub	f4, f4, f5	# 43
	fadd	f5, f0, f19	# 43
	fmul	f5, f5, f3	# 43
	fadd	f4, f4, f5	# 43
	fadd	f5, f0, f18	# 43
	fmul	f2, f5, f2	# 43
	fmul	f2, f2, f3	# 43
	fsub	f1, f4, f2	# 43
	jal		x0, fle_cont.96283	# 50
fle_else.96284:
	fmul	f3, f2, f2	# 36
	fmul	f4, f2, f3	# 37
	fadd	f5, f0, f22	# 38
	fmul	f5, f5, f4	# 38
	fsub	f2, f2, f5	# 38
	fadd	f5, f0, f20	# 38
	fmul	f5, f5, f3	# 38
	fmul	f5, f5, f4	# 38
	fadd	f2, f2, f5	# 38
	fadd	f5, f0, f21	# 38
	fmul	f5, f5, f3	# 38
	fmul	f3, f5, f3	# 38
	fmul	f3, f3, f4	# 38
	fsub	f1, f2, f3	# 38
fle_cont.96283:
	jal		x0, fle_cont.96281	# 49
fle_else.96282:
	fsub	f2, f3, f2	# 49
	lw		x27, -28(x2)	# 49
	fadd	f1, f0, f2
	sw		x1, -68(x2)	# 49
	addi	x2, x2, -72	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 72	# 49
	lw		x1, -68(x2)	# 49
fle_cont.96281:
fle_cont.96279:
fle_cont.96277:
	jal		x0, fle_cont.96275	# 46
fle_else.96276:
	fsub	f2, f0, f2	# 46
	lw		x27, -28(x2)	# 46
	fadd	f1, f0, f2
	sw		x1, -68(x2)	# 46
	addi	x2, x2, -72	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 72	# 46
	lw		x1, -68(x2)	# 46
	fsub	f1, f0, f1	# 46
fle_cont.96275:
	flw		f2, -64(x2)	# 745
	flw		f3, -56(x2)	# 745
	fmul	f4, f3, f2	# 745
	flw		f5, -60(x2)	# 746
	flw		f6, -52(x2)	# 746
	fmul	f7, f6, f5	# 746
	fmul	f8, f7, f2	# 746
	flw		f9, -48(x2)	# 746
	fmul	f10, f9, f1	# 746
	fsub	f8, f8, f10	# 746
	fmul	f10, f9, f5	# 747
	fmul	f11, f10, f2	# 747
	fmul	f12, f6, f1	# 747
	fadd	f11, f11, f12	# 747
	fmul	f12, f3, f1	# 749
	fmul	f7, f7, f1	# 750
	fmul	f13, f9, f2	# 750
	fadd	f7, f7, f13	# 750
	fmul	f1, f10, f1	# 751
	fmul	f2, f6, f2	# 751
	fsub	f1, f1, f2	# 751
	fsub	f2, f0, f5	# 4
	fmul	f5, f6, f3	# 754
	fmul	f3, f9, f3	# 755
	addi	x4, x0, 4	# 758
	lw		x5, -44(x2)	# 758
	mul		x4, x5, x4	# 758
	lw		x6, 0(x2)	# 758
	add		x4, x6, x4	# 758
	flw		f6, 0(x4)	# 758
	addi	x4, x0, 4	# 759
	lw		x7, -12(x2)	# 759
	mul		x4, x7, x4	# 759
	add		x4, x6, x4	# 759
	flw		f9, 0(x4)	# 759
	addi	x4, x0, 4	# 760
	lw		x8, -4(x2)	# 760
	mul		x4, x8, x4	# 760
	add		x4, x6, x4	# 760
	flw		f10, 0(x4)	# 760
	fmul	f13, f4, f4	# 8
	fmul	f13, f6, f13	# 765
	fmul	f14, f12, f12	# 8
	fmul	f14, f9, f14	# 765
	fadd	f13, f13, f14	# 765
	fmul	f14, f2, f2	# 8
	fmul	f14, f10, f14	# 765
	fadd	f13, f13, f14	# 765
	addi	x4, x0, 4	# 765
	mul		x4, x5, x4	# 765
	add		x4, x6, x4	# 765
	fsw		f13, 0(x4)	# 765
	fmul	f13, f8, f8	# 8
	fmul	f13, f6, f13	# 766
	fmul	f14, f7, f7	# 8
	fmul	f14, f9, f14	# 766
	fadd	f13, f13, f14	# 766
	fmul	f14, f5, f5	# 8
	fmul	f14, f10, f14	# 766
	fadd	f13, f13, f14	# 766
	addi	x4, x0, 4	# 766
	mul		x4, x7, x4	# 766
	add		x4, x6, x4	# 766
	fsw		f13, 0(x4)	# 766
	fmul	f13, f11, f11	# 8
	fmul	f13, f6, f13	# 767
	fmul	f14, f1, f1	# 8
	fmul	f14, f9, f14	# 767
	fadd	f13, f13, f14	# 767
	fmul	f14, f3, f3	# 8
	fmul	f14, f10, f14	# 767
	fadd	f13, f13, f14	# 767
	addi	x4, x0, 4	# 767
	mul		x4, x8, x4	# 767
	add		x4, x6, x4	# 767
	fsw		f13, 0(x4)	# 767
	lui		x4, %hi(l.21257)	# 770
	ori		x4, x0, %lo(l.21257)	# 770
	flw		f13, 0(x4)	# 770
	fmul	f14, f6, f8	# 770
	fmul	f14, f14, f11	# 770
	fmul	f15, f9, f7	# 770
	fmul	f15, f15, f1	# 770
	fadd	f14, f14, f15	# 770
	fmul	f15, f10, f5	# 770
	fmul	f15, f15, f3	# 770
	fadd	f14, f14, f15	# 770
	fmul	f14, f13, f14	# 770
	addi	x4, x0, 4	# 770
	mul		x4, x5, x4	# 770
	lw		x5, -40(x2)	# 770
	add		x4, x5, x4	# 770
	fsw		f14, 0(x4)	# 770
	fmul	f4, f6, f4	# 771
	fmul	f6, f4, f11	# 771
	fmul	f9, f9, f12	# 771
	fmul	f1, f9, f1	# 771
	fadd	f1, f6, f1	# 771
	fmul	f2, f10, f2	# 771
	fmul	f3, f2, f3	# 771
	fadd	f1, f1, f3	# 771
	fmul	f1, f13, f1	# 771
	addi	x4, x0, 4	# 771
	mul		x4, x7, x4	# 771
	add		x4, x5, x4	# 771
	fsw		f1, 0(x4)	# 771
	fmul	f1, f4, f8	# 772
	fmul	f3, f9, f7	# 772
	fadd	f1, f1, f3	# 772
	fmul	f2, f2, f5	# 772
	fadd	f1, f1, f2	# 772
	fmul	f1, f13, f1	# 772
	addi	x4, x0, 4	# 772
	mul		x4, x8, x4	# 772
	add		x4, x5, x4	# 772
	fsw		f1, 0(x4)	# 772
	jalr	x0, x1, 0	# 772
read_nth_object.2670.13201:
	lw		x5, 32(x27)	# 779
	lw		x6, 28(x27)	# 779
	lw		x7, 24(x27)	# 779
	lw		x8, 20(x27)	# 779
	lw		x9, 16(x27)	# 779
	lw		x10, 12(x27)	# 779
	lw		x11, 8(x27)	# 779
	flw		f1, 4(x27)	# 779
	sw		x6, 0(x2)	# 779
	sw		x5, -4(x2)	# 779
	sw		x4, -8(x2)	# 779
	sw		x7, -12(x2)	# 779
	sw		x11, -16(x2)	# 779
	sw		x10, -20(x2)	# 779
	fsw		f1, -24(x2)	# 779
	sw		x9, -28(x2)	# 779
	sw		x8, -32(x2)	# 779
	sw		x1, -36(x2)	# 779
	addi	x2, x2, -40	# 779
	jal		x1, min_caml_read_int	# 779
	addi	x2, x2, 40	# 779
	lw		x1, -36(x2)	# 779
	lw		x5, -32(x2)	# 780
	beq		x4, x5, beq.96286	# 780
	sw		x4, -36(x2)	# 782
	sw		x1, -40(x2)	# 782
	addi	x2, x2, -44	# 782
	jal		x1, min_caml_read_int	# 782
	addi	x2, x2, 44	# 782
	lw		x1, -40(x2)	# 782
	sw		x4, -40(x2)	# 783
	sw		x1, -44(x2)	# 783
	addi	x2, x2, -48	# 783
	jal		x1, min_caml_read_int	# 783
	addi	x2, x2, 48	# 783
	lw		x1, -44(x2)	# 783
	sw		x4, -44(x2)	# 784
	sw		x1, -48(x2)	# 784
	addi	x2, x2, -52	# 784
	jal		x1, min_caml_read_int	# 784
	addi	x2, x2, 52	# 784
	lw		x1, -48(x2)	# 784
	flw		f1, -24(x2)	# 786
	lw		x5, -28(x2)	# 786
	sw		x4, -48(x2)	# 786
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 786
	addi	x2, x2, -56	# 786
	jal		x1, min_caml_create_float_array	# 786
	addi	x2, x2, 56	# 786
	lw		x1, -52(x2)	# 786
	sw		x4, -52(x2)	# 787
	sw		x1, -56(x2)	# 787
	addi	x2, x2, -60	# 787
	jal		x1, min_caml_read_float	# 787
	addi	x2, x2, 60	# 787
	lw		x1, -56(x2)	# 787
	addi	x4, x0, 4	# 787
	lw		x5, -20(x2)	# 787
	mul		x4, x5, x4	# 787
	lw		x6, -52(x2)	# 787
	add		x4, x6, x4	# 787
	fsw		f1, 0(x4)	# 787
	sw		x1, -56(x2)	# 788
	addi	x2, x2, -60	# 788
	jal		x1, min_caml_read_float	# 788
	addi	x2, x2, 60	# 788
	lw		x1, -56(x2)	# 788
	addi	x4, x0, 4	# 788
	lw		x5, -16(x2)	# 788
	mul		x4, x5, x4	# 788
	lw		x6, -52(x2)	# 788
	add		x4, x6, x4	# 788
	fsw		f1, 0(x4)	# 788
	sw		x1, -56(x2)	# 789
	addi	x2, x2, -60	# 789
	jal		x1, min_caml_read_float	# 789
	addi	x2, x2, 60	# 789
	lw		x1, -56(x2)	# 789
	addi	x4, x0, 4	# 789
	lw		x5, -12(x2)	# 789
	mul		x4, x5, x4	# 789
	lw		x6, -52(x2)	# 789
	add		x4, x6, x4	# 789
	fsw		f1, 0(x4)	# 789
	flw		f1, -24(x2)	# 791
	lw		x4, -28(x2)	# 791
	sw		x1, -56(x2)	# 791
	addi	x2, x2, -60	# 791
	jal		x1, min_caml_create_float_array	# 791
	addi	x2, x2, 60	# 791
	lw		x1, -56(x2)	# 791
	sw		x4, -56(x2)	# 792
	sw		x1, -60(x2)	# 792
	addi	x2, x2, -64	# 792
	jal		x1, min_caml_read_float	# 792
	addi	x2, x2, 64	# 792
	lw		x1, -60(x2)	# 792
	addi	x4, x0, 4	# 792
	lw		x5, -20(x2)	# 792
	mul		x4, x5, x4	# 792
	lw		x6, -56(x2)	# 792
	add		x4, x6, x4	# 792
	fsw		f1, 0(x4)	# 792
	sw		x1, -60(x2)	# 793
	addi	x2, x2, -64	# 793
	jal		x1, min_caml_read_float	# 793
	addi	x2, x2, 64	# 793
	lw		x1, -60(x2)	# 793
	addi	x4, x0, 4	# 793
	lw		x5, -16(x2)	# 793
	mul		x4, x5, x4	# 793
	lw		x6, -56(x2)	# 793
	add		x4, x6, x4	# 793
	fsw		f1, 0(x4)	# 793
	sw		x1, -60(x2)	# 794
	addi	x2, x2, -64	# 794
	jal		x1, min_caml_read_float	# 794
	addi	x2, x2, 64	# 794
	lw		x1, -60(x2)	# 794
	addi	x4, x0, 4	# 794
	lw		x5, -12(x2)	# 794
	mul		x4, x5, x4	# 794
	lw		x6, -56(x2)	# 794
	add		x4, x6, x4	# 794
	fsw		f1, 0(x4)	# 794
	sw		x1, -60(x2)	# 796
	addi	x2, x2, -64	# 796
	jal		x1, min_caml_read_float	# 796
	addi	x2, x2, 64	# 796
	lw		x1, -60(x2)	# 796
	flw		f2, -24(x2)	# 3
	fle		x31, f2, f1	# 3
	beq		x31, x0, fle_else.96288	# 3
	addi	x4, x0, 0	# 3
	jal		x0, fle_cont.96287	# 3
fle_else.96288:
	addi	x4, x0, 1	# 3
fle_cont.96287:
	lw		x5, -12(x2)	# 798
	sw		x4, -60(x2)	# 798
	addi	x4, x5, 0
	fadd	f1, f0, f2
	sw		x1, -64(x2)	# 798
	addi	x2, x2, -68	# 798
	jal		x1, min_caml_create_float_array	# 798
	addi	x2, x2, 68	# 798
	lw		x1, -64(x2)	# 798
	sw		x4, -64(x2)	# 799
	sw		x1, -68(x2)	# 799
	addi	x2, x2, -72	# 799
	jal		x1, min_caml_read_float	# 799
	addi	x2, x2, 72	# 799
	lw		x1, -68(x2)	# 799
	addi	x4, x0, 4	# 799
	lw		x5, -20(x2)	# 799
	mul		x4, x5, x4	# 799
	lw		x6, -64(x2)	# 799
	add		x4, x6, x4	# 799
	fsw		f1, 0(x4)	# 799
	sw		x1, -68(x2)	# 800
	addi	x2, x2, -72	# 800
	jal		x1, min_caml_read_float	# 800
	addi	x2, x2, 72	# 800
	lw		x1, -68(x2)	# 800
	addi	x4, x0, 4	# 800
	lw		x5, -16(x2)	# 800
	mul		x4, x5, x4	# 800
	lw		x6, -64(x2)	# 800
	add		x4, x6, x4	# 800
	fsw		f1, 0(x4)	# 800
	flw		f1, -24(x2)	# 802
	lw		x4, -28(x2)	# 802
	sw		x1, -68(x2)	# 802
	addi	x2, x2, -72	# 802
	jal		x1, min_caml_create_float_array	# 802
	addi	x2, x2, 72	# 802
	lw		x1, -68(x2)	# 802
	sw		x4, -68(x2)	# 803
	sw		x1, -72(x2)	# 803
	addi	x2, x2, -76	# 803
	jal		x1, min_caml_read_float	# 803
	addi	x2, x2, 76	# 803
	lw		x1, -72(x2)	# 803
	addi	x4, x0, 4	# 803
	lw		x5, -20(x2)	# 803
	mul		x4, x5, x4	# 803
	lw		x6, -68(x2)	# 803
	add		x4, x6, x4	# 803
	fsw		f1, 0(x4)	# 803
	sw		x1, -72(x2)	# 804
	addi	x2, x2, -76	# 804
	jal		x1, min_caml_read_float	# 804
	addi	x2, x2, 76	# 804
	lw		x1, -72(x2)	# 804
	addi	x4, x0, 4	# 804
	lw		x5, -16(x2)	# 804
	mul		x4, x5, x4	# 804
	lw		x5, -68(x2)	# 804
	add		x4, x5, x4	# 804
	fsw		f1, 0(x4)	# 804
	sw		x1, -72(x2)	# 805
	addi	x2, x2, -76	# 805
	jal		x1, min_caml_read_float	# 805
	addi	x2, x2, 76	# 805
	lw		x1, -72(x2)	# 805
	addi	x4, x0, 4	# 805
	lw		x5, -12(x2)	# 805
	mul		x4, x5, x4	# 805
	lw		x6, -68(x2)	# 805
	add		x4, x6, x4	# 805
	fsw		f1, 0(x4)	# 805
	flw		f1, -24(x2)	# 807
	lw		x4, -28(x2)	# 807
	sw		x1, -72(x2)	# 807
	addi	x2, x2, -76	# 807
	jal		x1, min_caml_create_float_array	# 807
	addi	x2, x2, 76	# 807
	lw		x1, -72(x2)	# 807
	lw		x5, -20(x2)	# 808
	lw		x6, -48(x2)	# 808
	sw		x4, -72(x2)	# 808
	beq		x6, x5, beq_cont.96289	# 808
	addi	x7, x0, 0	# 810
	sw		x7, -76(x2)	# 810
	sw		x1, -80(x2)	# 810
	addi	x2, x2, -84	# 810
	jal		x1, min_caml_read_float	# 810
	addi	x2, x2, 84	# 810
	lw		x1, -80(x2)	# 810
	fadd	f2, f0, f24	# 677
	fmul	f1, f1, f2	# 677
	addi	x4, x0, 4	# 810
	lw		x5, -76(x2)	# 810
	mul		x4, x5, x4	# 810
	lw		x5, -72(x2)	# 810
	add		x4, x5, x4	# 810
	fsw		f1, 0(x4)	# 810
	addi	x4, x0, 1	# 811
	sw		x4, -80(x2)	# 811
	sw		x1, -84(x2)	# 811
	addi	x2, x2, -88	# 811
	jal		x1, min_caml_read_float	# 811
	addi	x2, x2, 88	# 811
	lw		x1, -84(x2)	# 811
	fadd	f2, f0, f24	# 677
	fmul	f1, f1, f2	# 677
	addi	x4, x0, 4	# 811
	lw		x5, -80(x2)	# 811
	mul		x4, x5, x4	# 811
	lw		x5, -72(x2)	# 811
	add		x4, x5, x4	# 811
	fsw		f1, 0(x4)	# 811
	addi	x4, x0, 2	# 812
	sw		x4, -84(x2)	# 812
	sw		x1, -88(x2)	# 812
	addi	x2, x2, -92	# 812
	jal		x1, min_caml_read_float	# 812
	addi	x2, x2, 92	# 812
	lw		x1, -88(x2)	# 812
	fadd	f2, f0, f24	# 677
	fmul	f1, f1, f2	# 677
	addi	x4, x0, 4	# 812
	lw		x5, -84(x2)	# 812
	mul		x4, x5, x4	# 812
	lw		x5, -72(x2)	# 812
	add		x4, x5, x4	# 812
	fsw		f1, 0(x4)	# 812
beq_cont.96289:
	lw		x4, -12(x2)	# 819
	lw		x5, -40(x2)	# 819
	beq		x5, x4, beq.96291	# 819
	lw		x4, -60(x2)	# 819
	jal		x0, beq_cont.96290	# 819
beq.96291:
	addi	x4, x0, 1	# 819
beq_cont.96290:
	addi	x6, x0, 4	# 820
	flw		f1, -24(x2)	# 820
	sw		x4, -88(x2)	# 820
	addi	x4, x6, 0
	sw		x1, -92(x2)	# 820
	addi	x2, x2, -96	# 820
	jal		x1, min_caml_create_float_array	# 820
	addi	x2, x2, 96	# 820
	lw		x1, -92(x2)	# 820
	addi	x5, x3, 0	# 823
	addi	x3, x3, 44	# 823
	sw		x4, 40(x5)	# 823
	lw		x4, -72(x2)	# 823
	sw		x4, 36(x5)	# 823
	lw		x6, -68(x2)	# 823
	sw		x6, 32(x5)	# 823
	lw		x6, -64(x2)	# 823
	sw		x6, 28(x5)	# 823
	lw		x6, -88(x2)	# 823
	sw		x6, 24(x5)	# 823
	lw		x6, -56(x2)	# 823
	sw		x6, 20(x5)	# 823
	lw		x6, -52(x2)	# 823
	sw		x6, 16(x5)	# 823
	lw		x7, -48(x2)	# 823
	sw		x7, 12(x5)	# 823
	lw		x8, -44(x2)	# 823
	sw		x8, 8(x5)	# 823
	lw		x8, -40(x2)	# 823
	sw		x8, 4(x5)	# 823
	lw		x9, -36(x2)	# 823
	sw		x9, 0(x5)	# 823
	addi	x9, x26, 48	# 831
	addi	x10, x0, 4	# 831
	lw		x11, -8(x2)	# 831
	mul		x10, x11, x10	# 831
	add		x9, x9, x10	# 831
	sw		x5, 0(x9)	# 831
	lw		x5, -28(x2)	# 833
	beq		x8, x5, beq.96293	# 833
	addi	x5, x0, 2	# 843
	beq		x8, x5, beq.96295	# 843
	jal		x0, beq_cont.96294	# 843
beq.96295:
	addi	x5, x0, 0	# 845
	lw		x8, -60(x2)	# 845
	beq		x8, x5, beq.96297	# 845
	addi	x5, x0, 0	# 845
	jal		x0, beq_cont.96296	# 845
beq.96297:
	addi	x5, x0, 1	# 845
beq_cont.96296:
	lw		x27, -4(x2)	# 845
	addi	x4, x6, 0
	sw		x1, -92(x2)	# 845
	addi	x2, x2, -96	# 845
	lw		x31, 0(x27)	# 845
	jalr	x1, x31, 0	# 845
	addi	x2, x2, 96	# 845
	lw		x1, -92(x2)	# 845
beq_cont.96294:
	jal		x0, beq_cont.96292	# 833
beq.96293:
	addi	x5, x0, 0	# 836
	addi	x8, x0, 4	# 836
	mul		x5, x5, x8	# 836
	add		x5, x6, x5	# 836
	flw		f1, 0(x5)	# 836
	addi	x5, x0, 0	# 837
	fadd	f2, f0, f0	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.96299	# 1
	fadd	f1, f0, f0	# 837
	jal		x0, feq_cont.96298	# 1
feq_else.96299:
	fadd	f2, f0, f0	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.96301	# 1
	fadd	f2, f0, f0	# 212
	jal		x0, feq_cont.96300	# 1
feq_else.96301:
	fadd	f2, f0, f0	# 2
	fle		x31, f1, f2	# 2
	beq		x31, x0, fle_else.96303	# 2
	fadd	f2, f0, f23	# 214
	jal		x0, fle_cont.96302	# 2
fle_else.96303:
	fadd	f2, f0, f16	# 213
fle_cont.96302:
feq_cont.96300:
	fmul	f1, f1, f1	# 8
	fdiv	f1, f2, f1	# 837
feq_cont.96298:
	addi	x8, x0, 4	# 837
	mul		x5, x5, x8	# 837
	add		x5, x6, x5	# 837
	fsw		f1, 0(x5)	# 837
	addi	x5, x0, 1	# 838
	addi	x8, x0, 4	# 838
	mul		x5, x5, x8	# 838
	add		x5, x6, x5	# 838
	flw		f1, 0(x5)	# 838
	addi	x5, x0, 1	# 839
	fadd	f2, f0, f0	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.96305	# 1
	fadd	f1, f0, f0	# 839
	jal		x0, feq_cont.96304	# 1
feq_else.96305:
	fadd	f2, f0, f0	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.96307	# 1
	fadd	f2, f0, f0	# 212
	jal		x0, feq_cont.96306	# 1
feq_else.96307:
	fadd	f2, f0, f0	# 2
	fle		x31, f1, f2	# 2
	beq		x31, x0, fle_else.96309	# 2
	fadd	f2, f0, f23	# 214
	jal		x0, fle_cont.96308	# 2
fle_else.96309:
	fadd	f2, f0, f16	# 213
fle_cont.96308:
feq_cont.96306:
	fmul	f1, f1, f1	# 8
	fdiv	f1, f2, f1	# 839
feq_cont.96304:
	addi	x8, x0, 4	# 839
	mul		x5, x5, x8	# 839
	add		x5, x6, x5	# 839
	fsw		f1, 0(x5)	# 839
	addi	x5, x0, 2	# 840
	addi	x8, x0, 4	# 840
	mul		x5, x5, x8	# 840
	add		x5, x6, x5	# 840
	flw		f1, 0(x5)	# 840
	addi	x5, x0, 2	# 841
	fadd	f2, f0, f0	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.96311	# 1
	fadd	f1, f0, f0	# 841
	jal		x0, feq_cont.96310	# 1
feq_else.96311:
	fadd	f2, f0, f0	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.96313	# 1
	fadd	f2, f0, f0	# 212
	jal		x0, feq_cont.96312	# 1
feq_else.96313:
	fadd	f2, f0, f0	# 2
	fle		x31, f1, f2	# 2
	beq		x31, x0, fle_else.96315	# 2
	fadd	f2, f0, f23	# 214
	jal		x0, fle_cont.96314	# 2
fle_else.96315:
	fadd	f2, f0, f16	# 213
fle_cont.96314:
feq_cont.96312:
	fmul	f1, f1, f1	# 8
	fdiv	f1, f2, f1	# 841
feq_cont.96310:
	addi	x8, x0, 4	# 841
	mul		x5, x5, x8	# 841
	add		x5, x6, x5	# 841
	fsw		f1, 0(x5)	# 841
beq_cont.96292:
	lw		x4, -20(x2)	# 849
	lw		x5, -48(x2)	# 849
	beq		x5, x4, beq_cont.96316	# 849
	lw		x4, -52(x2)	# 850
	lw		x5, -72(x2)	# 850
	lw		x27, 0(x2)	# 850
	sw		x1, -92(x2)	# 850
	addi	x2, x2, -96	# 850
	lw		x31, 0(x27)	# 850
	jalr	x1, x31, 0	# 850
	addi	x2, x2, 96	# 850
	lw		x1, -92(x2)	# 850
beq_cont.96316:
	addi	x4, x0, 1	# 853
	jalr	x0, x1, 0	# 853
beq.96286:
	addi	x4, x0, 0	# 856
	jalr	x0, x1, 0	# 856
read_object.2672.13203:
	lw		x5, 16(x27)	# 861
	lw		x6, 12(x27)	# 861
	lw		x7, 8(x27)	# 861
	lw		x8, 4(x27)	# 861
	ble		x6, x4, ble.96317	# 861
	sw		x27, 0(x2)	# 862
	sw		x5, -4(x2)	# 862
	sw		x6, -8(x2)	# 862
	sw		x8, -12(x2)	# 862
	sw		x4, -16(x2)	# 862
	sw		x7, -20(x2)	# 862
	addi	x27, x5, 0
	sw		x1, -24(x2)	# 862
	addi	x2, x2, -28	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 28	# 862
	lw		x1, -24(x2)	# 862
	lw		x5, -20(x2)	# 862
	beq		x4, x5, beq.96318	# 862
	lw		x4, -12(x2)	# 863
	lw		x6, -16(x2)	# 863
	add		x6, x6, x4	# 863
	lw		x7, -8(x2)	# 861
	ble		x7, x6, ble.96319	# 861
	lw		x27, -4(x2)	# 862
	sw		x6, -24(x2)	# 862
	addi	x4, x6, 0
	sw		x1, -28(x2)	# 862
	addi	x2, x2, -32	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 32	# 862
	lw		x1, -28(x2)	# 862
	lw		x5, -20(x2)	# 862
	beq		x4, x5, beq.96320	# 862
	lw		x4, -12(x2)	# 863
	lw		x6, -24(x2)	# 863
	add		x6, x6, x4	# 863
	lw		x7, -8(x2)	# 861
	ble		x7, x6, ble.96321	# 861
	lw		x27, -4(x2)	# 862
	sw		x6, -28(x2)	# 862
	addi	x4, x6, 0
	sw		x1, -32(x2)	# 862
	addi	x2, x2, -36	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 36	# 862
	lw		x1, -32(x2)	# 862
	lw		x5, -20(x2)	# 862
	beq		x4, x5, beq.96322	# 862
	lw		x4, -12(x2)	# 863
	lw		x6, -28(x2)	# 863
	add		x6, x6, x4	# 863
	lw		x7, -8(x2)	# 861
	ble		x7, x6, ble.96323	# 861
	lw		x27, -4(x2)	# 862
	sw		x6, -32(x2)	# 862
	addi	x4, x6, 0
	sw		x1, -36(x2)	# 862
	addi	x2, x2, -40	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 40	# 862
	lw		x1, -36(x2)	# 862
	lw		x5, -20(x2)	# 862
	beq		x4, x5, beq.96324	# 862
	lw		x4, -12(x2)	# 863
	lw		x6, -32(x2)	# 863
	add		x6, x6, x4	# 863
	lw		x7, -8(x2)	# 861
	ble		x7, x6, ble.96325	# 861
	lw		x27, -4(x2)	# 862
	sw		x6, -36(x2)	# 862
	addi	x4, x6, 0
	sw		x1, -40(x2)	# 862
	addi	x2, x2, -44	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 44	# 862
	lw		x1, -40(x2)	# 862
	lw		x5, -20(x2)	# 862
	beq		x4, x5, beq.96326	# 862
	lw		x4, -12(x2)	# 863
	lw		x6, -36(x2)	# 863
	add		x6, x6, x4	# 863
	lw		x7, -8(x2)	# 861
	ble		x7, x6, ble.96327	# 861
	lw		x27, -4(x2)	# 862
	sw		x6, -40(x2)	# 862
	addi	x4, x6, 0
	sw		x1, -44(x2)	# 862
	addi	x2, x2, -48	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 48	# 862
	lw		x1, -44(x2)	# 862
	lw		x5, -20(x2)	# 862
	beq		x4, x5, beq.96328	# 862
	lw		x4, -12(x2)	# 863
	lw		x6, -40(x2)	# 863
	add		x6, x6, x4	# 863
	lw		x7, -8(x2)	# 861
	ble		x7, x6, ble.96329	# 861
	lw		x27, -4(x2)	# 862
	sw		x6, -44(x2)	# 862
	addi	x4, x6, 0
	sw		x1, -48(x2)	# 862
	addi	x2, x2, -52	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 52	# 862
	lw		x1, -48(x2)	# 862
	lw		x5, -20(x2)	# 862
	beq		x4, x5, beq.96330	# 862
	lw		x4, -12(x2)	# 863
	lw		x6, -44(x2)	# 863
	add		x6, x6, x4	# 863
	lw		x7, -8(x2)	# 861
	ble		x7, x6, ble.96331	# 861
	lw		x27, -4(x2)	# 862
	sw		x6, -48(x2)	# 862
	addi	x4, x6, 0
	sw		x1, -52(x2)	# 862
	addi	x2, x2, -56	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 56	# 862
	lw		x1, -52(x2)	# 862
	lw		x5, -20(x2)	# 862
	beq		x4, x5, beq.96332	# 862
	lw		x4, -12(x2)	# 863
	lw		x5, -48(x2)	# 863
	add		x4, x5, x4	# 863
	lw		x27, 0(x2)	# 863
	lw		x31, 0(x27)	# 863
	jalr	x0, x31, 0	# 863
beq.96332:
	addi	x4, x26, 0	# 865
	addi	x6, x0, 4	# 865
	mul		x5, x5, x6	# 865
	add		x4, x4, x5	# 865
	lw		x5, -48(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.96331:
	jalr	x0, x1, 0	# 866
beq.96330:
	addi	x4, x26, 0	# 865
	addi	x6, x0, 4	# 865
	mul		x5, x5, x6	# 865
	add		x4, x4, x5	# 865
	lw		x5, -44(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.96329:
	jalr	x0, x1, 0	# 866
beq.96328:
	addi	x4, x26, 0	# 865
	addi	x6, x0, 4	# 865
	mul		x5, x5, x6	# 865
	add		x4, x4, x5	# 865
	lw		x5, -40(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.96327:
	jalr	x0, x1, 0	# 866
beq.96326:
	addi	x4, x26, 0	# 865
	addi	x6, x0, 4	# 865
	mul		x5, x5, x6	# 865
	add		x4, x4, x5	# 865
	lw		x5, -36(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.96325:
	jalr	x0, x1, 0	# 866
beq.96324:
	addi	x4, x26, 0	# 865
	addi	x6, x0, 4	# 865
	mul		x5, x5, x6	# 865
	add		x4, x4, x5	# 865
	lw		x5, -32(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.96323:
	jalr	x0, x1, 0	# 866
beq.96322:
	addi	x4, x26, 0	# 865
	addi	x6, x0, 4	# 865
	mul		x5, x5, x6	# 865
	add		x4, x4, x5	# 865
	lw		x5, -28(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.96321:
	jalr	x0, x1, 0	# 866
beq.96320:
	addi	x4, x26, 0	# 865
	addi	x6, x0, 4	# 865
	mul		x5, x5, x6	# 865
	add		x4, x4, x5	# 865
	lw		x5, -24(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.96319:
	jalr	x0, x1, 0	# 866
beq.96318:
	addi	x4, x26, 0	# 865
	addi	x6, x0, 4	# 865
	mul		x5, x5, x6	# 865
	add		x4, x4, x5	# 865
	lw		x5, -16(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.96317:
	jalr	x0, x1, 0	# 866
read_net_item.2676.13205:
	lw		x5, 8(x27)	# 877
	lw		x6, 4(x27)	# 877
	sw		x27, 0(x2)	# 877
	sw		x6, -4(x2)	# 877
	sw		x4, -8(x2)	# 877
	sw		x5, -12(x2)	# 877
	sw		x1, -16(x2)	# 877
	addi	x2, x2, -20	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 20	# 877
	lw		x1, -16(x2)	# 877
	lw		x5, -12(x2)	# 878
	beq		x4, x5, beq.96349	# 878
	lw		x6, -4(x2)	# 880
	lw		x7, -8(x2)	# 880
	add		x8, x7, x6	# 880
	sw		x4, -16(x2)	# 877
	sw		x8, -20(x2)	# 877
	sw		x1, -24(x2)	# 877
	addi	x2, x2, -28	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 28	# 877
	lw		x1, -24(x2)	# 877
	lw		x5, -12(x2)	# 878
	beq		x4, x5, beq.96351	# 878
	lw		x6, -20(x2)	# 880
	addi	x7, x6, 1	# 880
	sw		x4, -24(x2)	# 877
	sw		x7, -28(x2)	# 877
	sw		x1, -32(x2)	# 877
	addi	x2, x2, -36	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 36	# 877
	lw		x1, -32(x2)	# 877
	lw		x5, -12(x2)	# 878
	beq		x4, x5, beq.96353	# 878
	lw		x5, -4(x2)	# 880
	lw		x6, -28(x2)	# 880
	add		x5, x6, x5	# 880
	sw		x4, -32(x2)	# 877
	sw		x5, -36(x2)	# 877
	sw		x1, -40(x2)	# 877
	addi	x2, x2, -44	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 44	# 877
	lw		x1, -40(x2)	# 877
	addi	x5, x0, -1	# 878
	beq		x4, x5, beq.96355	# 878
	lw		x5, -36(x2)	# 880
	addi	x6, x5, 1	# 880
	lw		x27, 0(x2)	# 880
	sw		x4, -40(x2)	# 880
	addi	x4, x6, 0
	sw		x1, -44(x2)	# 880
	addi	x2, x2, -48	# 880
	lw		x31, 0(x27)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 48	# 880
	lw		x1, -44(x2)	# 880
	addi	x5, x0, 4	# 881
	lw		x6, -36(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -40(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.96354	# 878
beq.96355:
	lw		x4, -36(x2)	# 878
	addi	x4, x4, 1	# 878
	addi	x5, x0, -1	# 878
	sw		x1, -44(x2)	# 878
	addi	x2, x2, -48	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 48	# 878
	lw		x1, -44(x2)	# 878
beq_cont.96354:
	addi	x5, x0, 4	# 881
	lw		x6, -28(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -32(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.96352	# 878
beq.96353:
	lw		x4, -4(x2)	# 878
	lw		x6, -28(x2)	# 878
	add		x4, x6, x4	# 878
	sw		x1, -44(x2)	# 878
	addi	x2, x2, -48	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 48	# 878
	lw		x1, -44(x2)	# 878
beq_cont.96352:
	addi	x5, x0, 4	# 881
	lw		x6, -20(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -24(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.96350	# 878
beq.96351:
	lw		x4, -20(x2)	# 878
	addi	x4, x4, 1	# 878
	addi	x5, x0, -1	# 878
	sw		x1, -44(x2)	# 878
	addi	x2, x2, -48	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 48	# 878
	lw		x1, -44(x2)	# 878
beq_cont.96350:
	addi	x5, x0, 4	# 881
	lw		x6, -8(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -16(x2)	# 881
	sw		x6, 0(x5)	# 881
	jalr	x0, x1, 0	# 881
beq.96349:
	lw		x4, -4(x2)	# 878
	lw		x6, -8(x2)	# 878
	add		x4, x6, x4	# 878
	jal		x0, min_caml_create_array	# 878
read_or_network.2678.13207:
	lw		x5, 16(x27)	# 877
	lw		x6, 12(x27)	# 877
	lw		x7, 8(x27)	# 877
	lw		x8, 4(x27)	# 877
	sw		x27, 0(x2)	# 877
	sw		x8, -4(x2)	# 877
	sw		x4, -8(x2)	# 877
	sw		x7, -12(x2)	# 877
	sw		x5, -16(x2)	# 877
	sw		x6, -20(x2)	# 877
	sw		x1, -24(x2)	# 877
	addi	x2, x2, -28	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 28	# 877
	lw		x1, -24(x2)	# 877
	lw		x5, -20(x2)	# 878
	beq		x4, x5, beq.96357	# 878
	addi	x6, x0, 1	# 880
	sw		x4, -24(x2)	# 877
	sw		x6, -28(x2)	# 877
	sw		x1, -32(x2)	# 877
	addi	x2, x2, -36	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 36	# 877
	lw		x1, -32(x2)	# 877
	lw		x5, -20(x2)	# 878
	beq		x4, x5, beq.96359	# 878
	addi	x6, x0, 2	# 880
	sw		x4, -32(x2)	# 877
	sw		x6, -36(x2)	# 877
	sw		x1, -40(x2)	# 877
	addi	x2, x2, -44	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 44	# 877
	lw		x1, -40(x2)	# 877
	addi	x5, x0, -1	# 878
	beq		x4, x5, beq.96361	# 878
	addi	x5, x0, 3	# 880
	lw		x27, -16(x2)	# 880
	sw		x4, -40(x2)	# 880
	addi	x4, x5, 0
	sw		x1, -44(x2)	# 880
	addi	x2, x2, -48	# 880
	lw		x31, 0(x27)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 48	# 880
	lw		x1, -44(x2)	# 880
	addi	x5, x0, 4	# 881
	lw		x6, -36(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -40(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.96360	# 878
beq.96361:
	addi	x4, x0, 3	# 878
	addi	x5, x0, -1	# 878
	sw		x1, -44(x2)	# 878
	addi	x2, x2, -48	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 48	# 878
	lw		x1, -44(x2)	# 878
beq_cont.96360:
	addi	x5, x0, 4	# 881
	lw		x6, -28(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -32(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.96358	# 878
beq.96359:
	addi	x4, x0, 2	# 878
	sw		x1, -44(x2)	# 878
	addi	x2, x2, -48	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 48	# 878
	lw		x1, -44(x2)	# 878
beq_cont.96358:
	addi	x5, x0, 4	# 881
	lw		x6, -12(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x7, -24(x2)	# 881
	sw		x7, 0(x5)	# 881
	addi	x5, x4, 0	# 881
	jal		x0, beq_cont.96356	# 878
beq.96357:
	addi	x4, x0, 1	# 878
	addi	x6, x0, -1	# 878
	addi	x5, x6, 0
	sw		x1, -44(x2)	# 878
	addi	x2, x2, -48	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 48	# 878
	lw		x1, -44(x2)	# 878
	addi	x5, x4, 0	# 878
beq_cont.96356:
	addi	x4, x0, 4	# 886
	lw		x6, -12(x2)	# 886
	mul		x4, x6, x4	# 886
	add		x4, x5, x4	# 886
	lw		x4, 0(x4)	# 886
	lw		x7, -20(x2)	# 886
	beq		x4, x7, beq.96362	# 886
	lw		x4, -4(x2)	# 889
	lw		x8, -8(x2)	# 889
	add		x4, x8, x4	# 889
	sw		x5, -44(x2)	# 877
	sw		x4, -48(x2)	# 877
	sw		x1, -52(x2)	# 877
	addi	x2, x2, -56	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 56	# 877
	lw		x1, -52(x2)	# 877
	lw		x5, -20(x2)	# 878
	beq		x4, x5, beq.96364	# 878
	addi	x6, x0, 1	# 880
	sw		x4, -52(x2)	# 877
	sw		x6, -56(x2)	# 877
	sw		x1, -60(x2)	# 877
	addi	x2, x2, -64	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 64	# 877
	lw		x1, -60(x2)	# 877
	addi	x5, x0, -1	# 878
	beq		x4, x5, beq.96366	# 878
	addi	x5, x0, 2	# 880
	lw		x27, -16(x2)	# 880
	sw		x4, -60(x2)	# 880
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 880
	addi	x2, x2, -68	# 880
	lw		x31, 0(x27)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 68	# 880
	lw		x1, -64(x2)	# 880
	addi	x5, x0, 4	# 881
	lw		x6, -56(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -60(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.96365	# 878
beq.96366:
	addi	x4, x0, 2	# 878
	addi	x5, x0, -1	# 878
	sw		x1, -64(x2)	# 878
	addi	x2, x2, -68	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 68	# 878
	lw		x1, -64(x2)	# 878
beq_cont.96365:
	addi	x5, x0, 4	# 881
	lw		x6, -12(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x7, -52(x2)	# 881
	sw		x7, 0(x5)	# 881
	addi	x5, x4, 0	# 881
	jal		x0, beq_cont.96363	# 878
beq.96364:
	addi	x4, x0, 1	# 878
	sw		x1, -64(x2)	# 878
	addi	x2, x2, -68	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 68	# 878
	lw		x1, -64(x2)	# 878
	addi	x5, x4, 0	# 878
beq_cont.96363:
	addi	x4, x0, 4	# 886
	lw		x6, -12(x2)	# 886
	mul		x4, x6, x4	# 886
	add		x4, x5, x4	# 886
	lw		x4, 0(x4)	# 886
	lw		x6, -20(x2)	# 886
	beq		x4, x6, beq.96368	# 886
	lw		x4, -48(x2)	# 889
	addi	x6, x4, 1	# 889
	lw		x27, 0(x2)	# 889
	sw		x5, -64(x2)	# 889
	addi	x4, x6, 0
	sw		x1, -68(x2)	# 889
	addi	x2, x2, -72	# 889
	lw		x31, 0(x27)	# 889
	jalr	x1, x31, 0	# 889
	addi	x2, x2, 72	# 889
	lw		x1, -68(x2)	# 889
	addi	x5, x0, 4	# 890
	lw		x6, -48(x2)	# 890
	mul		x5, x6, x5	# 890
	add		x5, x4, x5	# 890
	lw		x6, -64(x2)	# 890
	sw		x6, 0(x5)	# 890
	jal		x0, beq_cont.96367	# 886
beq.96368:
	lw		x4, -48(x2)	# 887
	addi	x4, x4, 1	# 887
	sw		x1, -68(x2)	# 887
	addi	x2, x2, -72	# 887
	jal		x1, min_caml_create_array	# 887
	addi	x2, x2, 72	# 887
	lw		x1, -68(x2)	# 887
beq_cont.96367:
	addi	x5, x0, 4	# 890
	lw		x6, -8(x2)	# 890
	mul		x5, x6, x5	# 890
	add		x5, x4, x5	# 890
	lw		x6, -44(x2)	# 890
	sw		x6, 0(x5)	# 890
	jalr	x0, x1, 0	# 890
beq.96362:
	lw		x4, -4(x2)	# 887
	lw		x6, -8(x2)	# 887
	add		x4, x6, x4	# 887
	jal		x0, min_caml_create_array	# 887
read_and_network.2680.13209:
	lw		x5, 16(x27)	# 877
	lw		x6, 12(x27)	# 877
	lw		x7, 8(x27)	# 877
	lw		x8, 4(x27)	# 877
	sw		x27, 0(x2)	# 877
	sw		x8, -4(x2)	# 877
	sw		x4, -8(x2)	# 877
	sw		x7, -12(x2)	# 877
	sw		x5, -16(x2)	# 877
	sw		x6, -20(x2)	# 877
	sw		x1, -24(x2)	# 877
	addi	x2, x2, -28	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 28	# 877
	lw		x1, -24(x2)	# 877
	lw		x5, -20(x2)	# 878
	beq		x4, x5, beq.96370	# 878
	addi	x6, x0, 1	# 880
	sw		x4, -24(x2)	# 877
	sw		x6, -28(x2)	# 877
	sw		x1, -32(x2)	# 877
	addi	x2, x2, -36	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 36	# 877
	lw		x1, -32(x2)	# 877
	lw		x5, -20(x2)	# 878
	beq		x4, x5, beq.96372	# 878
	addi	x6, x0, 2	# 880
	sw		x4, -32(x2)	# 877
	sw		x6, -36(x2)	# 877
	sw		x1, -40(x2)	# 877
	addi	x2, x2, -44	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 44	# 877
	lw		x1, -40(x2)	# 877
	addi	x5, x0, -1	# 878
	beq		x4, x5, beq.96374	# 878
	addi	x5, x0, 3	# 880
	lw		x27, -16(x2)	# 880
	sw		x4, -40(x2)	# 880
	addi	x4, x5, 0
	sw		x1, -44(x2)	# 880
	addi	x2, x2, -48	# 880
	lw		x31, 0(x27)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 48	# 880
	lw		x1, -44(x2)	# 880
	addi	x5, x0, 4	# 881
	lw		x6, -36(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -40(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.96373	# 878
beq.96374:
	addi	x4, x0, 3	# 878
	addi	x5, x0, -1	# 878
	sw		x1, -44(x2)	# 878
	addi	x2, x2, -48	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 48	# 878
	lw		x1, -44(x2)	# 878
beq_cont.96373:
	addi	x5, x0, 4	# 881
	lw		x6, -28(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -32(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.96371	# 878
beq.96372:
	addi	x4, x0, 2	# 878
	sw		x1, -44(x2)	# 878
	addi	x2, x2, -48	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 48	# 878
	lw		x1, -44(x2)	# 878
beq_cont.96371:
	addi	x5, x0, 4	# 881
	lw		x6, -12(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x7, -24(x2)	# 881
	sw		x7, 0(x5)	# 881
	jal		x0, beq_cont.96369	# 878
beq.96370:
	addi	x4, x0, 1	# 878
	addi	x6, x0, -1	# 878
	addi	x5, x6, 0
	sw		x1, -44(x2)	# 878
	addi	x2, x2, -48	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 48	# 878
	lw		x1, -44(x2)	# 878
beq_cont.96369:
	addi	x5, x0, 4	# 895
	lw		x6, -12(x2)	# 895
	mul		x5, x6, x5	# 895
	add		x5, x4, x5	# 895
	lw		x5, 0(x5)	# 895
	lw		x7, -20(x2)	# 895
	beq		x5, x7, beq.96375	# 895
	addi	x5, x26, 332	# 897
	addi	x8, x0, 4	# 897
	lw		x9, -8(x2)	# 897
	mul		x8, x9, x8	# 897
	add		x5, x5, x8	# 897
	sw		x4, 0(x5)	# 897
	lw		x4, -4(x2)	# 898
	add		x5, x9, x4	# 898
	sw		x5, -44(x2)	# 877
	sw		x1, -48(x2)	# 877
	addi	x2, x2, -52	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 52	# 877
	lw		x1, -48(x2)	# 877
	lw		x5, -20(x2)	# 878
	beq		x4, x5, beq.96377	# 878
	addi	x6, x0, 1	# 880
	sw		x4, -48(x2)	# 877
	sw		x6, -52(x2)	# 877
	sw		x1, -56(x2)	# 877
	addi	x2, x2, -60	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 60	# 877
	lw		x1, -56(x2)	# 877
	addi	x5, x0, -1	# 878
	beq		x4, x5, beq.96379	# 878
	addi	x5, x0, 2	# 880
	lw		x27, -16(x2)	# 880
	sw		x4, -56(x2)	# 880
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 880
	addi	x2, x2, -64	# 880
	lw		x31, 0(x27)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 64	# 880
	lw		x1, -60(x2)	# 880
	addi	x5, x0, 4	# 881
	lw		x6, -52(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -56(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.96378	# 878
beq.96379:
	addi	x4, x0, 2	# 878
	addi	x5, x0, -1	# 878
	sw		x1, -60(x2)	# 878
	addi	x2, x2, -64	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 64	# 878
	lw		x1, -60(x2)	# 878
beq_cont.96378:
	addi	x5, x0, 4	# 881
	lw		x6, -12(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x7, -48(x2)	# 881
	sw		x7, 0(x5)	# 881
	jal		x0, beq_cont.96376	# 878
beq.96377:
	addi	x4, x0, 1	# 878
	sw		x1, -60(x2)	# 878
	addi	x2, x2, -64	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 64	# 878
	lw		x1, -60(x2)	# 878
beq_cont.96376:
	addi	x5, x0, 4	# 895
	lw		x6, -12(x2)	# 895
	mul		x5, x6, x5	# 895
	add		x5, x4, x5	# 895
	lw		x5, 0(x5)	# 895
	lw		x7, -20(x2)	# 895
	beq		x5, x7, beq.96380	# 895
	addi	x5, x26, 332	# 897
	addi	x8, x0, 4	# 897
	lw		x9, -44(x2)	# 897
	mul		x8, x9, x8	# 897
	add		x5, x5, x8	# 897
	sw		x4, 0(x5)	# 897
	lw		x4, -4(x2)	# 898
	add		x5, x9, x4	# 898
	sw		x5, -60(x2)	# 877
	sw		x1, -64(x2)	# 877
	addi	x2, x2, -68	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 68	# 877
	lw		x1, -64(x2)	# 877
	lw		x5, -20(x2)	# 878
	beq		x4, x5, beq.96382	# 878
	addi	x6, x0, 1	# 880
	lw		x27, -16(x2)	# 880
	sw		x4, -64(x2)	# 880
	addi	x4, x6, 0
	sw		x1, -68(x2)	# 880
	addi	x2, x2, -72	# 880
	lw		x31, 0(x27)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 72	# 880
	lw		x1, -68(x2)	# 880
	addi	x5, x0, 4	# 881
	lw		x6, -12(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x7, -64(x2)	# 881
	sw		x7, 0(x5)	# 881
	jal		x0, beq_cont.96381	# 878
beq.96382:
	addi	x4, x0, 1	# 878
	addi	x6, x0, -1	# 878
	addi	x5, x6, 0
	sw		x1, -68(x2)	# 878
	addi	x2, x2, -72	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 72	# 878
	lw		x1, -68(x2)	# 878
beq_cont.96381:
	addi	x5, x0, 4	# 895
	lw		x6, -12(x2)	# 895
	mul		x5, x6, x5	# 895
	add		x5, x4, x5	# 895
	lw		x5, 0(x5)	# 895
	lw		x7, -20(x2)	# 895
	beq		x5, x7, beq.96383	# 895
	addi	x5, x26, 332	# 897
	addi	x8, x0, 4	# 897
	lw		x9, -60(x2)	# 897
	mul		x8, x9, x8	# 897
	add		x5, x5, x8	# 897
	sw		x4, 0(x5)	# 897
	lw		x4, -4(x2)	# 898
	add		x5, x9, x4	# 898
	lw		x27, -16(x2)	# 894
	sw		x5, -68(x2)	# 894
	addi	x4, x6, 0
	sw		x1, -72(x2)	# 894
	addi	x2, x2, -76	# 894
	lw		x31, 0(x27)	# 894
	jalr	x1, x31, 0	# 894
	addi	x2, x2, 76	# 894
	lw		x1, -72(x2)	# 894
	addi	x5, x0, 4	# 895
	lw		x6, -12(x2)	# 895
	mul		x5, x6, x5	# 895
	add		x5, x4, x5	# 895
	lw		x5, 0(x5)	# 895
	lw		x6, -20(x2)	# 895
	beq		x5, x6, beq.96384	# 895
	addi	x5, x26, 332	# 897
	addi	x6, x0, 4	# 897
	lw		x7, -68(x2)	# 897
	mul		x6, x7, x6	# 897
	add		x5, x5, x6	# 897
	sw		x4, 0(x5)	# 897
	lw		x4, -4(x2)	# 898
	add		x4, x7, x4	# 898
	lw		x27, 0(x2)	# 898
	lw		x31, 0(x27)	# 898
	jalr	x0, x31, 0	# 898
beq.96384:
	jalr	x0, x1, 0	# 895
beq.96383:
	jalr	x0, x1, 0	# 895
beq.96380:
	jalr	x0, x1, 0	# 895
beq.96375:
	jalr	x0, x1, 0	# 895
solver_rect_surface.2684.13211:
	lw		x9, 8(x27)	# 928
	flw		f4, 4(x27)	# 928
	addi	x10, x0, 4	# 928
	mul		x10, x6, x10	# 928
	add		x10, x5, x10	# 928
	flw		f5, 0(x10)	# 928
	feq		x31, f5, f4	# 1
	beq		x31, x0, feq_else.96389	# 1
	addi	x4, x0, 0	# 928
	jalr	x0, x1, 0	# 928
feq_else.96389:
	lw		x10, 16(x4)	# 421
	lw		x4, 24(x4)	# 373
	fle		x31, f4, f5	# 3
	beq		x31, x0, fle_else.96391	# 3
	addi	x11, x0, 0	# 3
	jal		x0, fle_cont.96390	# 3
fle_else.96391:
	addi	x11, x0, 1	# 3
fle_cont.96390:
	beq		x4, x9, beq.96393	# 204
	fle		x31, f4, f5	# 3
	beq		x31, x0, fle_else.96395	# 3
	addi	x4, x0, 1	# 204
	jal		x0, fle_cont.96394	# 3
fle_else.96395:
	addi	x4, x0, 0	# 204
fle_cont.96394:
	jal		x0, beq_cont.96392	# 204
beq.96393:
	addi	x4, x11, 0	# 204
beq_cont.96392:
	addi	x11, x0, 4	# 930
	mul		x6, x6, x11	# 930
	add		x6, x10, x6	# 930
	flw		f6, 0(x6)	# 930
	beq		x4, x9, beq.96397	# 219
	jal		x0, beq_cont.96396	# 219
beq.96397:
	fsub	f6, f0, f6	# 4
beq_cont.96396:
	fsub	f1, f6, f1	# 932
	fdiv	f1, f1, f5	# 932
	addi	x4, x0, 4	# 933
	mul		x4, x7, x4	# 933
	add		x4, x5, x4	# 933
	flw		f5, 0(x4)	# 933
	fmul	f5, f1, f5	# 933
	fadd	f2, f5, f2	# 933
	fle		x31, f2, f4	# 5
	beq		x31, x0, fle_cont.96398	# 5
	fsub	f2, f0, f2	# 5
fle_cont.96398:
	addi	x4, x0, 4	# 933
	mul		x4, x7, x4	# 933
	add		x4, x10, x4	# 933
	flw		f5, 0(x4)	# 933
	fle		x31, f5, f2	# 6
	beq		x31, x0, fle_else.96399	# 6
	addi	x4, x0, 0	# 937
	jalr	x0, x1, 0	# 937
fle_else.96399:
	addi	x4, x0, 4	# 934
	mul		x4, x8, x4	# 934
	add		x4, x5, x4	# 934
	flw		f2, 0(x4)	# 934
	fmul	f2, f1, f2	# 934
	fadd	f2, f2, f3	# 934
	fle		x31, f2, f4	# 5
	beq		x31, x0, fle_cont.96400	# 5
	fsub	f2, f0, f2	# 5
fle_cont.96400:
	addi	x4, x0, 4	# 934
	mul		x4, x8, x4	# 934
	add		x4, x10, x4	# 934
	flw		f3, 0(x4)	# 934
	fle		x31, f3, f2	# 6
	beq		x31, x0, fle_else.96401	# 6
	addi	x4, x0, 0	# 936
	jalr	x0, x1, 0	# 936
fle_else.96401:
	addi	x4, x26, 540	# 935
	addi	x5, x0, 4	# 935
	mul		x5, x9, x5	# 935
	add		x4, x4, x5	# 935
	fsw		f1, 0(x4)	# 935
	addi	x4, x0, 1	# 935
	jalr	x0, x1, 0	# 935
solver_surface.2699.13220:
	lw		x6, 16(x27)	# 421
	lw		x7, 12(x27)	# 421
	lw		x8, 8(x27)	# 421
	flw		f4, 4(x27)	# 421
	lw		x4, 16(x4)	# 421
	addi	x9, x0, 4	# 292
	mul		x9, x7, x9	# 292
	add		x9, x5, x9	# 292
	flw		f5, 0(x9)	# 292
	addi	x9, x0, 4	# 292
	mul		x9, x7, x9	# 292
	add		x9, x4, x9	# 292
	flw		f6, 0(x9)	# 292
	fmul	f5, f5, f6	# 292
	addi	x9, x0, 4	# 292
	mul		x9, x8, x9	# 292
	add		x9, x5, x9	# 292
	flw		f7, 0(x9)	# 292
	addi	x9, x0, 4	# 292
	mul		x8, x8, x9	# 292
	add		x8, x4, x8	# 292
	flw		f8, 0(x8)	# 292
	fmul	f7, f7, f8	# 292
	fadd	f5, f5, f7	# 292
	addi	x8, x0, 4	# 292
	mul		x8, x6, x8	# 292
	add		x5, x5, x8	# 292
	flw		f7, 0(x5)	# 292
	addi	x5, x0, 4	# 292
	mul		x5, x6, x5	# 292
	add		x4, x4, x5	# 292
	flw		f9, 0(x4)	# 292
	fmul	f7, f7, f9	# 292
	fadd	f5, f5, f7	# 292
	fle		x31, f5, f4	# 2
	beq		x31, x0, fle_else.96402	# 2
	addi	x4, x0, 0	# 959
	jalr	x0, x1, 0	# 959
fle_else.96402:
	fmul	f1, f6, f1	# 297
	fmul	f2, f8, f2	# 297
	fadd	f1, f1, f2	# 297
	fmul	f2, f9, f3	# 297
	fadd	f1, f1, f2	# 297
	fsub	f1, f0, f1	# 4
	fdiv	f1, f1, f5	# 957
	addi	x4, x26, 540	# 957
	addi	x5, x0, 4	# 957
	mul		x5, x7, x5	# 957
	add		x4, x4, x5	# 957
	fsw		f1, 0(x4)	# 957
	addi	x4, x0, 1	# 958
	jalr	x0, x1, 0	# 958
quadratic.2705.13226:
	lw		x5, 12(x27)	# 967
	lw		x6, 8(x27)	# 967
	lw		x7, 4(x27)	# 967
	fmul	f4, f1, f1	# 8
	lw		x8, 16(x4)	# 391
	addi	x9, x0, 4	# 396
	mul		x9, x6, x9	# 396
	add		x8, x8, x9	# 396
	flw		f5, 0(x8)	# 396
	fmul	f4, f4, f5	# 967
	fmul	f5, f2, f2	# 8
	lw		x8, 16(x4)	# 401
	addi	x9, x0, 4	# 406
	mul		x9, x7, x9	# 406
	add		x8, x8, x9	# 406
	flw		f6, 0(x8)	# 406
	fmul	f5, f5, f6	# 967
	fadd	f4, f4, f5	# 967
	fmul	f5, f3, f3	# 8
	lw		x8, 16(x4)	# 411
	addi	x9, x0, 4	# 416
	mul		x9, x5, x9	# 416
	add		x8, x8, x9	# 416
	flw		f6, 0(x8)	# 416
	fmul	f5, f5, f6	# 967
	fadd	f4, f4, f5	# 967
	lw		x8, 12(x4)	# 382
	beq		x8, x6, beq.96403	# 969
	fmul	f5, f2, f3	# 973
	lw		x8, 36(x4)	# 511
	addi	x9, x0, 4	# 516
	mul		x6, x6, x9	# 516
	add		x6, x8, x6	# 516
	flw		f6, 0(x6)	# 516
	fmul	f5, f5, f6	# 973
	fadd	f4, f4, f5	# 972
	fmul	f3, f3, f1	# 974
	lw		x6, 36(x4)	# 521
	addi	x8, x0, 4	# 526
	mul		x7, x7, x8	# 526
	add		x6, x6, x7	# 526
	flw		f5, 0(x6)	# 526
	fmul	f3, f3, f5	# 974
	fadd	f3, f4, f3	# 972
	fmul	f1, f1, f2	# 975
	lw		x4, 36(x4)	# 531
	addi	x6, x0, 4	# 536
	mul		x5, x5, x6	# 536
	add		x4, x4, x5	# 536
	flw		f2, 0(x4)	# 536
	fmul	f1, f1, f2	# 975
	fadd	f1, f3, f1	# 972
	jalr	x0, x1, 0	# 972
beq.96403:
	fadd	f1, f0, f4	# 970
	jalr	x0, x1, 0	# 970
bilinear.2710.13231:
	lw		x5, 12(x27)	# 981
	lw		x6, 8(x27)	# 981
	lw		x7, 4(x27)	# 981
	fmul	f7, f1, f4	# 981
	lw		x8, 16(x4)	# 391
	addi	x9, x0, 4	# 396
	mul		x9, x6, x9	# 396
	add		x8, x8, x9	# 396
	flw		f8, 0(x8)	# 396
	fmul	f7, f7, f8	# 981
	fmul	f8, f2, f5	# 982
	lw		x8, 16(x4)	# 401
	addi	x9, x0, 4	# 406
	mul		x9, x7, x9	# 406
	add		x8, x8, x9	# 406
	flw		f9, 0(x8)	# 406
	fmul	f8, f8, f9	# 982
	fadd	f7, f7, f8	# 981
	fmul	f8, f3, f6	# 983
	lw		x8, 16(x4)	# 411
	addi	x9, x0, 4	# 416
	mul		x9, x5, x9	# 416
	add		x8, x8, x9	# 416
	flw		f9, 0(x8)	# 416
	fmul	f8, f8, f9	# 983
	fadd	f7, f7, f8	# 981
	lw		x8, 12(x4)	# 382
	beq		x8, x6, beq.96404	# 985
	fmul	f8, f3, f5	# 989
	fmul	f9, f2, f6	# 989
	fadd	f8, f8, f9	# 989
	lw		x8, 36(x4)	# 511
	addi	x9, x0, 4	# 516
	mul		x6, x6, x9	# 516
	add		x6, x8, x6	# 516
	flw		f9, 0(x6)	# 516
	fmul	f8, f8, f9	# 989
	fmul	f6, f1, f6	# 990
	fmul	f3, f3, f4	# 990
	fadd	f3, f6, f3	# 990
	lw		x6, 36(x4)	# 521
	addi	x8, x0, 4	# 526
	mul		x7, x7, x8	# 526
	add		x6, x6, x7	# 526
	flw		f6, 0(x6)	# 526
	fmul	f3, f3, f6	# 990
	fadd	f3, f8, f3	# 989
	fmul	f1, f1, f5	# 991
	fmul	f2, f2, f4	# 991
	fadd	f1, f1, f2	# 991
	lw		x4, 36(x4)	# 531
	addi	x6, x0, 4	# 536
	mul		x5, x5, x6	# 536
	add		x4, x4, x5	# 536
	flw		f2, 0(x4)	# 536
	fmul	f1, f1, f2	# 991
	fadd	f1, f3, f1	# 989
	fadd	f2, f0, f17	# 7
	fmul	f1, f1, f2	# 7
	fadd	f1, f7, f1	# 988
	jalr	x0, x1, 0	# 988
beq.96404:
	fadd	f1, f0, f7	# 986
	jalr	x0, x1, 0	# 986
solver_second.2718.13239:
	lw		x6, 28(x27)	# 1006
	lw		x7, 24(x27)	# 1006
	lw		x8, 20(x27)	# 1006
	lw		x9, 16(x27)	# 1006
	lw		x10, 12(x27)	# 1006
	lw		x11, 8(x27)	# 1006
	flw		f4, 4(x27)	# 1006
	addi	x12, x0, 4	# 1006
	mul		x12, x10, x12	# 1006
	add		x12, x5, x12	# 1006
	flw		f5, 0(x12)	# 1006
	addi	x12, x0, 4	# 1006
	mul		x12, x11, x12	# 1006
	add		x12, x5, x12	# 1006
	flw		f6, 0(x12)	# 1006
	addi	x12, x0, 4	# 1006
	mul		x12, x8, x12	# 1006
	add		x12, x5, x12	# 1006
	flw		f7, 0(x12)	# 1006
	sw		x9, 0(x2)	# 1006
	sw		x6, -4(x2)	# 1006
	fsw		f3, -8(x2)	# 1006
	fsw		f2, -12(x2)	# 1006
	fsw		f1, -16(x2)	# 1006
	sw		x4, -20(x2)	# 1006
	sw		x7, -24(x2)	# 1006
	sw		x8, -28(x2)	# 1006
	sw		x11, -32(x2)	# 1006
	sw		x5, -36(x2)	# 1006
	sw		x10, -40(x2)	# 1006
	fsw		f4, -44(x2)	# 1006
	addi	x27, x6, 0
	fadd	f3, f0, f7
	fadd	f2, f0, f6
	fadd	f1, f0, f5
	sw		x1, -48(x2)	# 1006
	addi	x2, x2, -52	# 1006
	lw		x31, 0(x27)	# 1006
	jalr	x1, x31, 0	# 1006
	addi	x2, x2, 52	# 1006
	lw		x1, -48(x2)	# 1006
	flw		f2, -44(x2)	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.96405	# 1
	addi	x4, x0, 0	# 1009
	jalr	x0, x1, 0	# 1009
feq_else.96405:
	addi	x4, x0, 4	# 1013
	lw		x5, -40(x2)	# 1013
	mul		x4, x5, x4	# 1013
	lw		x6, -36(x2)	# 1013
	add		x4, x6, x4	# 1013
	flw		f3, 0(x4)	# 1013
	addi	x4, x0, 4	# 1013
	lw		x7, -32(x2)	# 1013
	mul		x4, x7, x4	# 1013
	add		x4, x6, x4	# 1013
	flw		f4, 0(x4)	# 1013
	addi	x4, x0, 4	# 1013
	lw		x7, -28(x2)	# 1013
	mul		x4, x7, x4	# 1013
	add		x4, x6, x4	# 1013
	flw		f5, 0(x4)	# 1013
	flw		f6, -16(x2)	# 1013
	flw		f7, -12(x2)	# 1013
	flw		f8, -8(x2)	# 1013
	lw		x4, -20(x2)	# 1013
	lw		x27, -24(x2)	# 1013
	fsw		f1, -48(x2)	# 1013
	fadd	f2, f0, f4
	fadd	f1, f0, f3
	fadd	f4, f0, f6
	fadd	f3, f0, f5
	fadd	f6, f0, f8
	fadd	f5, f0, f7
	sw		x1, -52(x2)	# 1013
	addi	x2, x2, -56	# 1013
	lw		x31, 0(x27)	# 1013
	jalr	x1, x31, 0	# 1013
	addi	x2, x2, 56	# 1013
	lw		x1, -52(x2)	# 1013
	flw		f2, -16(x2)	# 1015
	flw		f3, -12(x2)	# 1015
	flw		f4, -8(x2)	# 1015
	lw		x4, -20(x2)	# 1015
	lw		x27, -4(x2)	# 1015
	fsw		f1, -52(x2)	# 1015
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -56(x2)	# 1015
	addi	x2, x2, -60	# 1015
	lw		x31, 0(x27)	# 1015
	jalr	x1, x31, 0	# 1015
	addi	x2, x2, 60	# 1015
	lw		x1, -56(x2)	# 1015
	lw		x4, -20(x2)	# 353
	lw		x5, 4(x4)	# 353
	lw		x6, 0(x2)	# 1016
	beq		x5, x6, beq.96407	# 1016
	jal		x0, beq_cont.96406	# 1016
beq.96407:
	fadd	f2, f0, f16	# 1016
	fsub	f1, f1, f2	# 1016
beq_cont.96406:
	flw		f2, -52(x2)	# 8
	fmul	f3, f2, f2	# 8
	flw		f4, -48(x2)	# 1018
	fmul	f1, f4, f1	# 1018
	fsub	f1, f3, f1	# 1018
	flw		f3, -44(x2)	# 2
	fle		x31, f1, f3	# 2
	beq		x31, x0, fle_else.96408	# 2
	addi	x4, x0, 0	# 1026
	jalr	x0, x1, 0	# 1026
fle_else.96408:
	fsqrt	f1, f1	# 1021
	lw		x4, 24(x4)	# 373
	lw		x5, -40(x2)	# 1022
	beq		x4, x5, beq.96410	# 1022
	jal		x0, beq_cont.96409	# 1022
beq.96410:
	fsub	f1, f0, f1	# 4
beq_cont.96409:
	fsub	f1, f1, f2	# 1023
	fdiv	f1, f1, f4	# 1023
	addi	x4, x26, 540	# 1023
	addi	x6, x0, 4	# 1023
	mul		x5, x5, x6	# 1023
	add		x4, x4, x5	# 1023
	fsw		f1, 0(x4)	# 1023
	addi	x4, x0, 1	# 1023
	jalr	x0, x1, 0	# 1023
solver_rect_fast.2728.13245:
	lw		x7, 24(x27)	# 1064
	lw		x8, 20(x27)	# 1064
	lw		x9, 16(x27)	# 1064
	lw		x10, 12(x27)	# 1064
	lw		x11, 8(x27)	# 1064
	flw		f4, 4(x27)	# 1064
	addi	x12, x0, 4	# 1064
	mul		x12, x10, x12	# 1064
	add		x12, x6, x12	# 1064
	flw		f5, 0(x12)	# 1064
	fsub	f5, f5, f1	# 1064
	addi	x12, x0, 4	# 1064
	mul		x12, x11, x12	# 1064
	add		x12, x6, x12	# 1064
	flw		f6, 0(x12)	# 1064
	fmul	f5, f5, f6	# 1064
	addi	x12, x0, 4	# 1066
	mul		x12, x11, x12	# 1066
	add		x12, x5, x12	# 1066
	flw		f7, 0(x12)	# 1066
	fmul	f8, f5, f7	# 1066
	fadd	f8, f8, f2	# 1066
	fle		x31, f8, f4	# 5
	beq		x31, x0, fle_cont.96411	# 5
	fsub	f8, f0, f8	# 5
fle_cont.96411:
	lw		x12, 16(x4)	# 401
	addi	x13, x0, 4	# 406
	mul		x13, x11, x13	# 406
	add		x12, x12, x13	# 406
	flw		f9, 0(x12)	# 406
	fle		x31, f9, f8	# 6
	beq		x31, x0, fle_else.96413	# 6
	addi	x12, x0, 0	# 1070
	jal		x0, fle_cont.96412	# 6
fle_else.96413:
	addi	x12, x0, 4	# 1067
	mul		x12, x8, x12	# 1067
	add		x12, x5, x12	# 1067
	flw		f8, 0(x12)	# 1067
	fmul	f8, f5, f8	# 1067
	fadd	f8, f8, f3	# 1067
	fle		x31, f8, f4	# 5
	beq		x31, x0, fle_cont.96414	# 5
	fsub	f8, f0, f8	# 5
fle_cont.96414:
	lw		x12, 16(x4)	# 411
	addi	x13, x0, 4	# 416
	mul		x13, x8, x13	# 416
	add		x12, x12, x13	# 416
	flw		f9, 0(x12)	# 416
	fle		x31, f9, f8	# 6
	beq		x31, x0, fle_else.96416	# 6
	addi	x12, x0, 0	# 1069
	jal		x0, fle_cont.96415	# 6
fle_else.96416:
	feq		x31, f6, f4	# 1
	beq		x31, x0, feq_else.96418	# 1
	addi	x12, x0, 0	# 1068
	jal		x0, feq_cont.96417	# 1
feq_else.96418:
	addi	x12, x0, 1	# 1068
feq_cont.96417:
fle_cont.96415:
fle_cont.96412:
	beq		x12, x10, beq.96419	# 1065
	addi	x4, x26, 540	# 1072
	addi	x5, x0, 4	# 1072
	mul		x5, x10, x5	# 1072
	add		x4, x4, x5	# 1072
	fsw		f5, 0(x4)	# 1072
	addi	x4, x0, 1	# 1072
	jalr	x0, x1, 0	# 1072
beq.96419:
	addi	x12, x0, 4	# 1073
	mul		x12, x8, x12	# 1073
	add		x12, x6, x12	# 1073
	flw		f5, 0(x12)	# 1073
	fsub	f5, f5, f2	# 1073
	addi	x12, x0, 4	# 1073
	mul		x9, x9, x12	# 1073
	add		x9, x6, x9	# 1073
	flw		f6, 0(x9)	# 1073
	fmul	f5, f5, f6	# 1073
	addi	x9, x0, 4	# 1075
	mul		x9, x10, x9	# 1075
	add		x9, x5, x9	# 1075
	flw		f8, 0(x9)	# 1075
	fmul	f9, f5, f8	# 1075
	fadd	f9, f9, f1	# 1075
	fle		x31, f9, f4	# 5
	beq		x31, x0, fle_cont.96420	# 5
	fsub	f9, f0, f9	# 5
fle_cont.96420:
	lw		x9, 16(x4)	# 391
	addi	x12, x0, 4	# 396
	mul		x12, x10, x12	# 396
	add		x9, x9, x12	# 396
	flw		f10, 0(x9)	# 396
	fle		x31, f10, f9	# 6
	beq		x31, x0, fle_else.96422	# 6
	addi	x5, x0, 0	# 1079
	jal		x0, fle_cont.96421	# 6
fle_else.96422:
	addi	x9, x0, 4	# 1076
	mul		x9, x8, x9	# 1076
	add		x5, x5, x9	# 1076
	flw		f9, 0(x5)	# 1076
	fmul	f9, f5, f9	# 1076
	fadd	f9, f9, f3	# 1076
	fle		x31, f9, f4	# 5
	beq		x31, x0, fle_cont.96423	# 5
	fsub	f9, f0, f9	# 5
fle_cont.96423:
	lw		x5, 16(x4)	# 411
	addi	x9, x0, 4	# 416
	mul		x8, x8, x9	# 416
	add		x5, x5, x8	# 416
	flw		f10, 0(x5)	# 416
	fle		x31, f10, f9	# 6
	beq		x31, x0, fle_else.96425	# 6
	addi	x5, x0, 0	# 1078
	jal		x0, fle_cont.96424	# 6
fle_else.96425:
	feq		x31, f6, f4	# 1
	beq		x31, x0, feq_else.96427	# 1
	addi	x5, x0, 0	# 1077
	jal		x0, feq_cont.96426	# 1
feq_else.96427:
	addi	x5, x0, 1	# 1077
feq_cont.96426:
fle_cont.96424:
fle_cont.96421:
	beq		x5, x10, beq.96428	# 1074
	addi	x4, x26, 540	# 1081
	addi	x5, x0, 4	# 1081
	mul		x5, x10, x5	# 1081
	add		x4, x4, x5	# 1081
	fsw		f5, 0(x4)	# 1081
	addi	x4, x0, 2	# 1081
	jalr	x0, x1, 0	# 1081
beq.96428:
	addi	x5, x0, 4	# 1082
	addi	x8, x0, 4	# 1082
	mul		x5, x5, x8	# 1082
	add		x5, x6, x5	# 1082
	flw		f5, 0(x5)	# 1082
	fsub	f3, f5, f3	# 1082
	addi	x5, x0, 4	# 1082
	mul		x5, x7, x5	# 1082
	add		x5, x6, x5	# 1082
	flw		f5, 0(x5)	# 1082
	fmul	f3, f3, f5	# 1082
	fmul	f6, f3, f8	# 1084
	fadd	f1, f6, f1	# 1084
	fle		x31, f1, f4	# 5
	beq		x31, x0, fle_cont.96429	# 5
	fsub	f1, f0, f1	# 5
fle_cont.96429:
	lw		x5, 16(x4)	# 391
	addi	x6, x0, 4	# 396
	mul		x6, x10, x6	# 396
	add		x5, x5, x6	# 396
	flw		f6, 0(x5)	# 396
	fle		x31, f6, f1	# 6
	beq		x31, x0, fle_else.96431	# 6
	addi	x4, x0, 0	# 1088
	jal		x0, fle_cont.96430	# 6
fle_else.96431:
	fmul	f1, f3, f7	# 1085
	fadd	f1, f1, f2	# 1085
	fle		x31, f1, f4	# 5
	beq		x31, x0, fle_cont.96432	# 5
	fsub	f1, f0, f1	# 5
fle_cont.96432:
	lw		x4, 16(x4)	# 401
	addi	x5, x0, 4	# 406
	mul		x5, x11, x5	# 406
	add		x4, x4, x5	# 406
	flw		f2, 0(x4)	# 406
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.96434	# 6
	addi	x4, x0, 0	# 1087
	jal		x0, fle_cont.96433	# 6
fle_else.96434:
	feq		x31, f5, f4	# 1
	beq		x31, x0, feq_else.96436	# 1
	addi	x4, x0, 0	# 1086
	jal		x0, feq_cont.96435	# 1
feq_else.96436:
	addi	x4, x0, 1	# 1086
feq_cont.96435:
fle_cont.96433:
fle_cont.96430:
	beq		x4, x10, beq.96437	# 1083
	addi	x4, x26, 540	# 1090
	addi	x5, x0, 4	# 1090
	mul		x5, x10, x5	# 1090
	add		x4, x4, x5	# 1090
	fsw		f3, 0(x4)	# 1090
	addi	x4, x0, 3	# 1090
	jalr	x0, x1, 0	# 1090
beq.96437:
	addi	x4, x0, 0	# 1092
	jalr	x0, x1, 0	# 1092
solver_second_fast.2741.13252:
	lw		x6, 24(x27)	# 1107
	lw		x7, 20(x27)	# 1107
	lw		x8, 16(x27)	# 1107
	lw		x9, 12(x27)	# 1107
	lw		x10, 8(x27)	# 1107
	flw		f4, 4(x27)	# 1107
	addi	x11, x0, 4	# 1107
	mul		x11, x9, x11	# 1107
	add		x11, x5, x11	# 1107
	flw		f5, 0(x11)	# 1107
	feq		x31, f5, f4	# 1
	beq		x31, x0, feq_else.96438	# 1
	addi	x4, x0, 0	# 1109
	jalr	x0, x1, 0	# 1109
feq_else.96438:
	addi	x11, x0, 4	# 1111
	mul		x10, x10, x11	# 1111
	add		x10, x5, x10	# 1111
	flw		f6, 0(x10)	# 1111
	fmul	f6, f6, f1	# 1111
	addi	x10, x0, 4	# 1111
	mul		x7, x7, x10	# 1111
	add		x7, x5, x7	# 1111
	flw		f7, 0(x7)	# 1111
	fmul	f7, f7, f2	# 1111
	fadd	f6, f6, f7	# 1111
	addi	x7, x0, 4	# 1111
	mul		x7, x8, x7	# 1111
	add		x7, x5, x7	# 1111
	flw		f7, 0(x7)	# 1111
	fmul	f7, f7, f3	# 1111
	fadd	f6, f6, f7	# 1111
	sw		x5, 0(x2)	# 1112
	sw		x9, -4(x2)	# 1112
	fsw		f4, -8(x2)	# 1112
	fsw		f5, -12(x2)	# 1112
	fsw		f6, -16(x2)	# 1112
	sw		x8, -20(x2)	# 1112
	sw		x4, -24(x2)	# 1112
	addi	x27, x6, 0
	sw		x1, -28(x2)	# 1112
	addi	x2, x2, -32	# 1112
	lw		x31, 0(x27)	# 1112
	jalr	x1, x31, 0	# 1112
	addi	x2, x2, 32	# 1112
	lw		x1, -28(x2)	# 1112
	lw		x4, -24(x2)	# 353
	lw		x5, 4(x4)	# 353
	lw		x6, -20(x2)	# 1113
	beq		x5, x6, beq.96440	# 1113
	jal		x0, beq_cont.96439	# 1113
beq.96440:
	fadd	f2, f0, f16	# 1113
	fsub	f1, f1, f2	# 1113
beq_cont.96439:
	flw		f2, -16(x2)	# 8
	fmul	f3, f2, f2	# 8
	flw		f4, -12(x2)	# 1114
	fmul	f1, f4, f1	# 1114
	fsub	f1, f3, f1	# 1114
	flw		f3, -8(x2)	# 2
	fle		x31, f1, f3	# 2
	beq		x31, x0, fle_else.96441	# 2
	addi	x4, x0, 0	# 1121
	jalr	x0, x1, 0	# 1121
fle_else.96441:
	lw		x4, 24(x4)	# 373
	lw		x5, -4(x2)	# 1116
	beq		x4, x5, beq.96443	# 1116
	addi	x4, x0, 0	# 1117
	fsqrt	f1, f1	# 1117
	fadd	f1, f2, f1	# 1117
	addi	x5, x0, 4	# 1117
	addi	x6, x0, 4	# 1117
	mul		x5, x5, x6	# 1117
	lw		x6, 0(x2)	# 1117
	add		x5, x6, x5	# 1117
	flw		f2, 0(x5)	# 1117
	fmul	f1, f1, f2	# 1117
	addi	x5, x26, 540	# 1117
	addi	x6, x0, 4	# 1117
	mul		x4, x4, x6	# 1117
	add		x4, x5, x4	# 1117
	fsw		f1, 0(x4)	# 1117
	jal		x0, beq_cont.96442	# 1116
beq.96443:
	addi	x4, x0, 0	# 1119
	fsqrt	f1, f1	# 1119
	fsub	f1, f2, f1	# 1119
	addi	x5, x0, 4	# 1119
	addi	x6, x0, 4	# 1119
	mul		x5, x5, x6	# 1119
	lw		x6, 0(x2)	# 1119
	add		x5, x6, x5	# 1119
	flw		f2, 0(x5)	# 1119
	fmul	f1, f1, f2	# 1119
	addi	x5, x26, 540	# 1119
	addi	x6, x0, 4	# 1119
	mul		x4, x4, x6	# 1119
	add		x4, x5, x4	# 1119
	fsw		f1, 0(x4)	# 1119
beq_cont.96442:
	addi	x4, x0, 1	# 1120
	jalr	x0, x1, 0	# 1120
solver_fast.2747.13258:
	lw		x7, 28(x27)	# 1126
	lw		x8, 24(x27)	# 1126
	lw		x9, 20(x27)	# 1126
	lw		x10, 16(x27)	# 1126
	lw		x11, 12(x27)	# 1126
	lw		x12, 8(x27)	# 1126
	flw		f1, 4(x27)	# 1126
	addi	x13, x26, 48	# 1126
	addi	x14, x0, 4	# 1126
	mul		x14, x4, x14	# 1126
	add		x13, x13, x14	# 1126
	lw		x13, 0(x13)	# 1126
	addi	x14, x0, 4	# 1127
	mul		x14, x11, x14	# 1127
	add		x14, x6, x14	# 1127
	flw		f2, 0(x14)	# 1127
	lw		x14, 20(x13)	# 431
	addi	x15, x0, 4	# 436
	mul		x15, x11, x15	# 436
	add		x14, x14, x15	# 436
	flw		f3, 0(x14)	# 436
	fsub	f2, f2, f3	# 1127
	addi	x14, x0, 4	# 1128
	mul		x14, x12, x14	# 1128
	add		x14, x6, x14	# 1128
	flw		f3, 0(x14)	# 1128
	lw		x14, 20(x13)	# 441
	addi	x15, x0, 4	# 446
	mul		x15, x12, x15	# 446
	add		x14, x14, x15	# 446
	flw		f4, 0(x14)	# 446
	fsub	f3, f3, f4	# 1128
	addi	x14, x0, 4	# 1129
	mul		x14, x9, x14	# 1129
	add		x6, x6, x14	# 1129
	flw		f4, 0(x6)	# 1129
	lw		x6, 20(x13)	# 451
	addi	x14, x0, 4	# 456
	mul		x14, x9, x14	# 456
	add		x6, x6, x14	# 456
	flw		f5, 0(x6)	# 456
	fsub	f4, f4, f5	# 1129
	lw		x6, 4(x5)	# 645
	addi	x14, x0, 4	# 1131
	mul		x4, x4, x14	# 1131
	add		x4, x6, x4	# 1131
	lw		x6, 0(x4)	# 1131
	lw		x4, 4(x13)	# 353
	beq		x4, x12, beq.96444	# 1133
	beq		x4, x9, beq.96445	# 1135
	addi	x5, x6, 0
	addi	x4, x13, 0
	addi	x27, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	lw		x31, 0(x27)	# 1138
	jalr	x0, x31, 0	# 1138
beq.96445:
	addi	x4, x0, 4	# 1097
	mul		x4, x11, x4	# 1097
	add		x4, x6, x4	# 1097
	flw		f5, 0(x4)	# 1097
	fle		x31, f1, f5	# 3
	beq		x31, x0, fle_else.96446	# 3
	addi	x4, x0, 0	# 1101
	jalr	x0, x1, 0	# 1101
fle_else.96446:
	addi	x4, x0, 4	# 1099
	mul		x4, x12, x4	# 1099
	add		x4, x6, x4	# 1099
	flw		f1, 0(x4)	# 1099
	fmul	f1, f1, f2	# 1099
	addi	x4, x0, 4	# 1099
	mul		x4, x9, x4	# 1099
	add		x4, x6, x4	# 1099
	flw		f2, 0(x4)	# 1099
	fmul	f2, f2, f3	# 1099
	fadd	f1, f1, f2	# 1099
	addi	x4, x0, 4	# 1099
	mul		x4, x10, x4	# 1099
	add		x4, x6, x4	# 1099
	flw		f2, 0(x4)	# 1099
	fmul	f2, f2, f4	# 1099
	fadd	f1, f1, f2	# 1099
	addi	x4, x26, 540	# 1098
	addi	x5, x0, 4	# 1098
	mul		x5, x11, x5	# 1098
	add		x4, x4, x5	# 1098
	fsw		f1, 0(x4)	# 1098
	addi	x4, x0, 1	# 1100
	jalr	x0, x1, 0	# 1100
beq.96444:
	lw		x5, 0(x5)	# 639
	addi	x4, x13, 0
	addi	x27, x8, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	lw		x31, 0(x27)	# 1134
	jalr	x0, x31, 0	# 1134
solver_second_fast2.2758.13262:
	lw		x7, 20(x27)	# 1155
	lw		x8, 16(x27)	# 1155
	lw		x9, 12(x27)	# 1155
	lw		x10, 8(x27)	# 1155
	flw		f4, 4(x27)	# 1155
	addi	x11, x0, 4	# 1155
	mul		x11, x9, x11	# 1155
	add		x11, x5, x11	# 1155
	flw		f5, 0(x11)	# 1155
	feq		x31, f5, f4	# 1
	beq		x31, x0, feq_else.96447	# 1
	addi	x4, x0, 0	# 1157
	jalr	x0, x1, 0	# 1157
feq_else.96447:
	addi	x11, x0, 4	# 1159
	mul		x10, x10, x11	# 1159
	add		x10, x5, x10	# 1159
	flw		f6, 0(x10)	# 1159
	fmul	f1, f6, f1	# 1159
	addi	x10, x0, 4	# 1159
	mul		x7, x7, x10	# 1159
	add		x7, x5, x7	# 1159
	flw		f6, 0(x7)	# 1159
	fmul	f2, f6, f2	# 1159
	fadd	f1, f1, f2	# 1159
	addi	x7, x0, 4	# 1159
	mul		x7, x8, x7	# 1159
	add		x7, x5, x7	# 1159
	flw		f2, 0(x7)	# 1159
	fmul	f2, f2, f3	# 1159
	fadd	f1, f1, f2	# 1159
	addi	x7, x0, 4	# 1160
	mul		x7, x8, x7	# 1160
	add		x6, x6, x7	# 1160
	flw		f2, 0(x6)	# 1160
	fmul	f3, f1, f1	# 8
	fmul	f2, f5, f2	# 1161
	fsub	f2, f3, f2	# 1161
	fle		x31, f2, f4	# 2
	beq		x31, x0, fle_else.96448	# 2
	addi	x4, x0, 0	# 1168
	jalr	x0, x1, 0	# 1168
fle_else.96448:
	lw		x4, 24(x4)	# 373
	beq		x4, x9, beq.96450	# 1163
	addi	x4, x0, 0	# 1164
	fsqrt	f2, f2	# 1164
	fadd	f1, f1, f2	# 1164
	addi	x6, x0, 4	# 1164
	addi	x7, x0, 4	# 1164
	mul		x6, x6, x7	# 1164
	add		x5, x5, x6	# 1164
	flw		f2, 0(x5)	# 1164
	fmul	f1, f1, f2	# 1164
	addi	x5, x26, 540	# 1164
	addi	x6, x0, 4	# 1164
	mul		x4, x4, x6	# 1164
	add		x4, x5, x4	# 1164
	fsw		f1, 0(x4)	# 1164
	jal		x0, beq_cont.96449	# 1163
beq.96450:
	addi	x4, x0, 0	# 1166
	fsqrt	f2, f2	# 1166
	fsub	f1, f1, f2	# 1166
	addi	x6, x0, 4	# 1166
	addi	x7, x0, 4	# 1166
	mul		x6, x6, x7	# 1166
	add		x5, x5, x6	# 1166
	flw		f2, 0(x5)	# 1166
	fmul	f1, f1, f2	# 1166
	addi	x5, x26, 540	# 1166
	addi	x6, x0, 4	# 1166
	mul		x4, x4, x6	# 1166
	add		x4, x5, x4	# 1166
	fsw		f1, 0(x4)	# 1166
beq_cont.96449:
	addi	x4, x0, 1	# 1167
	jalr	x0, x1, 0	# 1167
setup_rect_table.2768.13269:
	lw		x6, 16(x27)	# 1195
	lw		x7, 12(x27)	# 1195
	lw		x8, 8(x27)	# 1195
	flw		f1, 4(x27)	# 1195
	addi	x9, x0, 6	# 1195
	sw		x6, 0(x2)	# 1195
	sw		x8, -4(x2)	# 1195
	sw		x5, -8(x2)	# 1195
	fsw		f1, -12(x2)	# 1195
	sw		x4, -16(x2)	# 1195
	sw		x7, -20(x2)	# 1195
	addi	x4, x9, 0
	sw		x1, -24(x2)	# 1195
	addi	x2, x2, -28	# 1195
	jal		x1, min_caml_create_float_array	# 1195
	addi	x2, x2, 28	# 1195
	lw		x1, -24(x2)	# 1195
	addi	x5, x0, 4	# 1197
	lw		x6, -20(x2)	# 1197
	mul		x5, x6, x5	# 1197
	lw		x6, -16(x2)	# 1197
	add		x5, x6, x5	# 1197
	flw		f1, 0(x5)	# 1197
	flw		f2, -12(x2)	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.96452	# 1
	addi	x5, x0, 1	# 1198
	fadd	f1, f0, f0	# 1198
	addi	x7, x0, 4	# 1198
	mul		x5, x5, x7	# 1198
	add		x5, x4, x5	# 1198
	fsw		f1, 0(x5)	# 1198
	jal		x0, feq_cont.96451	# 1
feq_else.96452:
	addi	x5, x0, 0	# 1201
	lw		x7, -8(x2)	# 373
	lw		x8, 24(x7)	# 373
	addi	x9, x0, 0	# 1201
	addi	x10, x0, 4	# 1201
	mul		x9, x9, x10	# 1201
	add		x9, x6, x9	# 1201
	flw		f1, 0(x9)	# 1201
	fadd	f3, f0, f0	# 3
	fle		x31, f3, f1	# 3
	beq		x31, x0, fle_else.96454	# 3
	addi	x9, x0, 0	# 3
	jal		x0, fle_cont.96453	# 3
fle_else.96454:
	addi	x9, x0, 1	# 3
fle_cont.96453:
	addi	x10, x0, 0	# 204
	beq		x8, x10, beq.96456	# 204
	fle		x31, f3, f1	# 3
	beq		x31, x0, fle_else.96458	# 3
	addi	x8, x0, 1	# 204
	jal		x0, fle_cont.96457	# 3
fle_else.96458:
	addi	x8, x0, 0	# 204
fle_cont.96457:
	jal		x0, beq_cont.96455	# 204
beq.96456:
	addi	x8, x9, 0	# 204
beq_cont.96455:
	lw		x9, 16(x7)	# 391
	addi	x10, x0, 0	# 396
	addi	x11, x0, 4	# 396
	mul		x10, x10, x11	# 396
	add		x9, x9, x10	# 396
	flw		f1, 0(x9)	# 396
	addi	x9, x0, 0	# 219
	beq		x8, x9, beq.96460	# 219
	jal		x0, beq_cont.96459	# 219
beq.96460:
	fsub	f1, f0, f1	# 4
beq_cont.96459:
	addi	x8, x0, 4	# 1201
	mul		x5, x5, x8	# 1201
	add		x5, x4, x5	# 1201
	fsw		f1, 0(x5)	# 1201
	addi	x5, x0, 1	# 1203
	fadd	f1, f0, f16	# 1203
	addi	x8, x0, 0	# 1203
	addi	x9, x0, 4	# 1203
	mul		x8, x8, x9	# 1203
	add		x8, x6, x8	# 1203
	flw		f3, 0(x8)	# 1203
	fdiv	f1, f1, f3	# 1203
	addi	x8, x0, 4	# 1203
	mul		x5, x5, x8	# 1203
	add		x5, x4, x5	# 1203
	fsw		f1, 0(x5)	# 1203
feq_cont.96451:
	addi	x5, x0, 4	# 1205
	lw		x7, -4(x2)	# 1205
	mul		x5, x7, x5	# 1205
	add		x5, x6, x5	# 1205
	flw		f1, 0(x5)	# 1205
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.96462	# 1
	addi	x5, x0, 3	# 1206
	fadd	f1, f0, f0	# 1206
	addi	x7, x0, 4	# 1206
	mul		x5, x5, x7	# 1206
	add		x5, x4, x5	# 1206
	fsw		f1, 0(x5)	# 1206
	jal		x0, feq_cont.96461	# 1
feq_else.96462:
	addi	x5, x0, 2	# 1208
	lw		x7, -8(x2)	# 373
	lw		x8, 24(x7)	# 373
	addi	x9, x0, 1	# 1208
	addi	x10, x0, 4	# 1208
	mul		x9, x9, x10	# 1208
	add		x9, x6, x9	# 1208
	flw		f1, 0(x9)	# 1208
	fadd	f3, f0, f0	# 3
	fle		x31, f3, f1	# 3
	beq		x31, x0, fle_else.96464	# 3
	addi	x9, x0, 0	# 3
	jal		x0, fle_cont.96463	# 3
fle_else.96464:
	addi	x9, x0, 1	# 3
fle_cont.96463:
	addi	x10, x0, 0	# 204
	beq		x8, x10, beq.96466	# 204
	fle		x31, f3, f1	# 3
	beq		x31, x0, fle_else.96468	# 3
	addi	x8, x0, 1	# 204
	jal		x0, fle_cont.96467	# 3
fle_else.96468:
	addi	x8, x0, 0	# 204
fle_cont.96467:
	jal		x0, beq_cont.96465	# 204
beq.96466:
	addi	x8, x9, 0	# 204
beq_cont.96465:
	lw		x9, 16(x7)	# 401
	addi	x10, x0, 1	# 406
	addi	x11, x0, 4	# 406
	mul		x10, x10, x11	# 406
	add		x9, x9, x10	# 406
	flw		f1, 0(x9)	# 406
	addi	x9, x0, 0	# 219
	beq		x8, x9, beq.96470	# 219
	jal		x0, beq_cont.96469	# 219
beq.96470:
	fsub	f1, f0, f1	# 4
beq_cont.96469:
	addi	x8, x0, 4	# 1208
	mul		x5, x5, x8	# 1208
	add		x5, x4, x5	# 1208
	fsw		f1, 0(x5)	# 1208
	addi	x5, x0, 3	# 1209
	fadd	f1, f0, f16	# 1209
	addi	x8, x0, 1	# 1209
	addi	x9, x0, 4	# 1209
	mul		x8, x8, x9	# 1209
	add		x8, x6, x8	# 1209
	flw		f3, 0(x8)	# 1209
	fdiv	f1, f1, f3	# 1209
	addi	x8, x0, 4	# 1209
	mul		x5, x5, x8	# 1209
	add		x5, x4, x5	# 1209
	fsw		f1, 0(x5)	# 1209
feq_cont.96461:
	addi	x5, x0, 4	# 1211
	lw		x7, 0(x2)	# 1211
	mul		x5, x7, x5	# 1211
	add		x5, x6, x5	# 1211
	flw		f1, 0(x5)	# 1211
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.96472	# 1
	addi	x5, x0, 5	# 1212
	fadd	f1, f0, f0	# 1212
	addi	x6, x0, 4	# 1212
	mul		x5, x5, x6	# 1212
	add		x5, x4, x5	# 1212
	fsw		f1, 0(x5)	# 1212
	jal		x0, feq_cont.96471	# 1
feq_else.96472:
	addi	x5, x0, 4	# 1214
	lw		x7, -8(x2)	# 373
	lw		x8, 24(x7)	# 373
	addi	x9, x0, 2	# 1214
	addi	x10, x0, 4	# 1214
	mul		x9, x9, x10	# 1214
	add		x9, x6, x9	# 1214
	flw		f1, 0(x9)	# 1214
	fadd	f2, f0, f0	# 3
	fle		x31, f2, f1	# 3
	beq		x31, x0, fle_else.96474	# 3
	addi	x9, x0, 0	# 3
	jal		x0, fle_cont.96473	# 3
fle_else.96474:
	addi	x9, x0, 1	# 3
fle_cont.96473:
	addi	x10, x0, 0	# 204
	beq		x8, x10, beq.96476	# 204
	fle		x31, f2, f1	# 3
	beq		x31, x0, fle_else.96478	# 3
	addi	x8, x0, 1	# 204
	jal		x0, fle_cont.96477	# 3
fle_else.96478:
	addi	x8, x0, 0	# 204
fle_cont.96477:
	jal		x0, beq_cont.96475	# 204
beq.96476:
	addi	x8, x9, 0	# 204
beq_cont.96475:
	lw		x7, 16(x7)	# 411
	addi	x9, x0, 2	# 416
	addi	x10, x0, 4	# 416
	mul		x9, x9, x10	# 416
	add		x7, x7, x9	# 416
	flw		f1, 0(x7)	# 416
	addi	x7, x0, 0	# 219
	beq		x8, x7, beq.96480	# 219
	jal		x0, beq_cont.96479	# 219
beq.96480:
	fsub	f1, f0, f1	# 4
beq_cont.96479:
	addi	x7, x0, 4	# 1214
	mul		x5, x5, x7	# 1214
	add		x5, x4, x5	# 1214
	fsw		f1, 0(x5)	# 1214
	addi	x5, x0, 5	# 1215
	fadd	f1, f0, f16	# 1215
	addi	x7, x0, 2	# 1215
	addi	x8, x0, 4	# 1215
	mul		x7, x7, x8	# 1215
	add		x6, x6, x7	# 1215
	flw		f2, 0(x6)	# 1215
	fdiv	f1, f1, f2	# 1215
	addi	x6, x0, 4	# 1215
	mul		x5, x5, x6	# 1215
	add		x5, x4, x5	# 1215
	fsw		f1, 0(x5)	# 1215
feq_cont.96471:
	jalr	x0, x1, 0	# 1217
setup_surface_table.2771.13272:
	lw		x6, 16(x27)	# 1222
	lw		x7, 12(x27)	# 1222
	lw		x8, 8(x27)	# 1222
	flw		f1, 4(x27)	# 1222
	addi	x9, x0, 4	# 1222
	fsw		f1, 0(x2)	# 1222
	sw		x6, -4(x2)	# 1222
	sw		x8, -8(x2)	# 1222
	sw		x5, -12(x2)	# 1222
	sw		x4, -16(x2)	# 1222
	sw		x7, -20(x2)	# 1222
	addi	x4, x9, 0
	sw		x1, -24(x2)	# 1222
	addi	x2, x2, -28	# 1222
	jal		x1, min_caml_create_float_array	# 1222
	addi	x2, x2, 28	# 1222
	lw		x1, -24(x2)	# 1222
	addi	x5, x0, 4	# 1224
	lw		x6, -20(x2)	# 1224
	mul		x5, x6, x5	# 1224
	lw		x7, -16(x2)	# 1224
	add		x5, x7, x5	# 1224
	flw		f1, 0(x5)	# 1224
	lw		x5, -12(x2)	# 391
	lw		x8, 16(x5)	# 391
	addi	x9, x0, 4	# 396
	mul		x6, x6, x9	# 396
	add		x6, x8, x6	# 396
	flw		f2, 0(x6)	# 396
	fmul	f1, f1, f2	# 1224
	addi	x6, x0, 4	# 1224
	lw		x8, -8(x2)	# 1224
	mul		x6, x8, x6	# 1224
	add		x6, x7, x6	# 1224
	flw		f2, 0(x6)	# 1224
	lw		x6, 16(x5)	# 401
	addi	x9, x0, 4	# 406
	mul		x8, x8, x9	# 406
	add		x6, x6, x8	# 406
	flw		f3, 0(x6)	# 406
	fmul	f2, f2, f3	# 1224
	fadd	f1, f1, f2	# 1224
	addi	x6, x0, 4	# 1224
	lw		x8, -4(x2)	# 1224
	mul		x6, x8, x6	# 1224
	add		x6, x7, x6	# 1224
	flw		f2, 0(x6)	# 1224
	lw		x6, 16(x5)	# 411
	addi	x7, x0, 4	# 416
	mul		x7, x8, x7	# 416
	add		x6, x6, x7	# 416
	flw		f3, 0(x6)	# 416
	fmul	f2, f2, f3	# 1224
	fadd	f1, f1, f2	# 1224
	flw		f2, 0(x2)	# 2
	fle		x31, f1, f2	# 2
	beq		x31, x0, fle_else.96482	# 2
	addi	x5, x0, 0	# 1234
	fadd	f1, f0, f0	# 1234
	addi	x6, x0, 4	# 1234
	mul		x5, x5, x6	# 1234
	add		x5, x4, x5	# 1234
	fsw		f1, 0(x5)	# 1234
	jal		x0, fle_cont.96481	# 2
fle_else.96482:
	addi	x6, x0, 0	# 1228
	fadd	f2, f0, f23	# 1228
	fdiv	f2, f2, f1	# 1228
	addi	x7, x0, 4	# 1228
	mul		x6, x6, x7	# 1228
	add		x6, x4, x6	# 1228
	fsw		f2, 0(x6)	# 1228
	addi	x6, x0, 1	# 1230
	lw		x7, 16(x5)	# 391
	addi	x8, x0, 0	# 396
	addi	x9, x0, 4	# 396
	mul		x8, x8, x9	# 396
	add		x7, x7, x8	# 396
	flw		f2, 0(x7)	# 396
	fdiv	f2, f2, f1	# 1230
	fsub	f2, f0, f2	# 4
	addi	x7, x0, 4	# 1230
	mul		x6, x6, x7	# 1230
	add		x6, x4, x6	# 1230
	fsw		f2, 0(x6)	# 1230
	addi	x6, x0, 2	# 1231
	lw		x7, 16(x5)	# 401
	addi	x8, x0, 1	# 406
	addi	x9, x0, 4	# 406
	mul		x8, x8, x9	# 406
	add		x7, x7, x8	# 406
	flw		f2, 0(x7)	# 406
	fdiv	f2, f2, f1	# 1231
	fsub	f2, f0, f2	# 4
	addi	x7, x0, 4	# 1231
	mul		x6, x6, x7	# 1231
	add		x6, x4, x6	# 1231
	fsw		f2, 0(x6)	# 1231
	addi	x6, x0, 3	# 1232
	lw		x5, 16(x5)	# 411
	addi	x7, x0, 2	# 416
	addi	x8, x0, 4	# 416
	mul		x7, x7, x8	# 416
	add		x5, x5, x7	# 416
	flw		f2, 0(x5)	# 416
	fdiv	f1, f2, f1	# 1232
	fsub	f1, f0, f1	# 4
	addi	x5, x0, 4	# 1232
	mul		x5, x6, x5	# 1232
	add		x5, x4, x5	# 1232
	fsw		f1, 0(x5)	# 1232
fle_cont.96481:
	jalr	x0, x1, 0	# 1235
setup_second_table.2774.13275:
	lw		x6, 24(x27)	# 1241
	lw		x7, 20(x27)	# 1241
	lw		x8, 16(x27)	# 1241
	lw		x9, 12(x27)	# 1241
	lw		x10, 8(x27)	# 1241
	flw		f1, 4(x27)	# 1241
	fsw		f1, 0(x2)	# 1241
	sw		x5, -4(x2)	# 1241
	sw		x6, -8(x2)	# 1241
	sw		x8, -12(x2)	# 1241
	sw		x10, -16(x2)	# 1241
	sw		x4, -20(x2)	# 1241
	sw		x9, -24(x2)	# 1241
	addi	x4, x7, 0
	sw		x1, -28(x2)	# 1241
	addi	x2, x2, -32	# 1241
	jal		x1, min_caml_create_float_array	# 1241
	addi	x2, x2, 32	# 1241
	lw		x1, -28(x2)	# 1241
	addi	x5, x0, 4	# 1243
	lw		x6, -24(x2)	# 1243
	mul		x5, x6, x5	# 1243
	lw		x7, -20(x2)	# 1243
	add		x5, x7, x5	# 1243
	flw		f1, 0(x5)	# 1243
	addi	x5, x0, 4	# 1243
	lw		x8, -16(x2)	# 1243
	mul		x5, x8, x5	# 1243
	add		x5, x7, x5	# 1243
	flw		f2, 0(x5)	# 1243
	addi	x5, x0, 4	# 1243
	lw		x9, -12(x2)	# 1243
	mul		x5, x9, x5	# 1243
	add		x5, x7, x5	# 1243
	flw		f3, 0(x5)	# 1243
	lw		x5, -4(x2)	# 1243
	lw		x27, -8(x2)	# 1243
	sw		x4, -28(x2)	# 1243
	addi	x4, x5, 0
	sw		x1, -32(x2)	# 1243
	addi	x2, x2, -36	# 1243
	lw		x31, 0(x27)	# 1243
	jalr	x1, x31, 0	# 1243
	addi	x2, x2, 36	# 1243
	lw		x1, -32(x2)	# 1243
	addi	x4, x0, 4	# 1244
	lw		x5, -24(x2)	# 1244
	mul		x4, x5, x4	# 1244
	lw		x6, -20(x2)	# 1244
	add		x4, x6, x4	# 1244
	flw		f2, 0(x4)	# 1244
	lw		x4, -4(x2)	# 391
	lw		x7, 16(x4)	# 391
	addi	x8, x0, 4	# 396
	mul		x8, x5, x8	# 396
	add		x7, x7, x8	# 396
	flw		f3, 0(x7)	# 396
	fmul	f2, f2, f3	# 1244
	fsub	f2, f0, f2	# 4
	addi	x7, x0, 4	# 1245
	lw		x8, -16(x2)	# 1245
	mul		x7, x8, x7	# 1245
	add		x7, x6, x7	# 1245
	flw		f3, 0(x7)	# 1245
	lw		x7, 16(x4)	# 401
	addi	x9, x0, 4	# 406
	mul		x8, x8, x9	# 406
	add		x7, x7, x8	# 406
	flw		f4, 0(x7)	# 406
	fmul	f3, f3, f4	# 1245
	fsub	f3, f0, f3	# 4
	addi	x7, x0, 4	# 1246
	lw		x8, -12(x2)	# 1246
	mul		x7, x8, x7	# 1246
	add		x7, x6, x7	# 1246
	flw		f4, 0(x7)	# 1246
	lw		x7, 16(x4)	# 411
	addi	x9, x0, 4	# 416
	mul		x8, x8, x9	# 416
	add		x7, x7, x8	# 416
	flw		f5, 0(x7)	# 416
	fmul	f4, f4, f5	# 1246
	fsub	f4, f0, f4	# 4
	addi	x7, x0, 4	# 1248
	mul		x7, x5, x7	# 1248
	lw		x8, -28(x2)	# 1248
	add		x7, x8, x7	# 1248
	fsw		f1, 0(x7)	# 1248
	lw		x7, 12(x4)	# 382
	beq		x7, x5, beq.96484	# 1252
	addi	x5, x0, 1	# 1253
	addi	x7, x0, 2	# 1253
	addi	x9, x0, 4	# 1253
	mul		x7, x7, x9	# 1253
	add		x7, x6, x7	# 1253
	flw		f5, 0(x7)	# 1253
	lw		x7, 36(x4)	# 521
	addi	x9, x0, 1	# 526
	addi	x10, x0, 4	# 526
	mul		x9, x9, x10	# 526
	add		x7, x7, x9	# 526
	flw		f6, 0(x7)	# 526
	fmul	f5, f5, f6	# 1253
	addi	x7, x0, 1	# 1253
	addi	x9, x0, 4	# 1253
	mul		x7, x7, x9	# 1253
	add		x7, x6, x7	# 1253
	flw		f6, 0(x7)	# 1253
	lw		x7, 36(x4)	# 531
	addi	x9, x0, 2	# 536
	addi	x10, x0, 4	# 536
	mul		x9, x9, x10	# 536
	add		x7, x7, x9	# 536
	flw		f7, 0(x7)	# 536
	fmul	f6, f6, f7	# 1253
	fadd	f5, f5, f6	# 1253
	fadd	f6, f0, f17	# 7
	fmul	f5, f5, f6	# 7
	fsub	f2, f2, f5	# 1253
	addi	x7, x0, 4	# 1253
	mul		x5, x5, x7	# 1253
	add		x5, x8, x5	# 1253
	fsw		f2, 0(x5)	# 1253
	addi	x5, x0, 2	# 1254
	addi	x7, x0, 2	# 1254
	addi	x9, x0, 4	# 1254
	mul		x7, x7, x9	# 1254
	add		x7, x6, x7	# 1254
	flw		f2, 0(x7)	# 1254
	lw		x7, 36(x4)	# 511
	addi	x9, x0, 0	# 516
	addi	x10, x0, 4	# 516
	mul		x9, x9, x10	# 516
	add		x7, x7, x9	# 516
	flw		f5, 0(x7)	# 516
	fmul	f2, f2, f5	# 1254
	addi	x7, x0, 0	# 1254
	addi	x9, x0, 4	# 1254
	mul		x7, x7, x9	# 1254
	add		x7, x6, x7	# 1254
	flw		f5, 0(x7)	# 1254
	lw		x7, 36(x4)	# 531
	addi	x9, x0, 2	# 536
	addi	x10, x0, 4	# 536
	mul		x9, x9, x10	# 536
	add		x7, x7, x9	# 536
	flw		f6, 0(x7)	# 536
	fmul	f5, f5, f6	# 1254
	fadd	f2, f2, f5	# 1254
	fadd	f5, f0, f17	# 7
	fmul	f2, f2, f5	# 7
	fsub	f2, f3, f2	# 1254
	addi	x7, x0, 4	# 1254
	mul		x5, x5, x7	# 1254
	add		x5, x8, x5	# 1254
	fsw		f2, 0(x5)	# 1254
	addi	x5, x0, 3	# 1255
	addi	x7, x0, 1	# 1255
	addi	x9, x0, 4	# 1255
	mul		x7, x7, x9	# 1255
	add		x7, x6, x7	# 1255
	flw		f2, 0(x7)	# 1255
	lw		x7, 36(x4)	# 511
	addi	x9, x0, 0	# 516
	addi	x10, x0, 4	# 516
	mul		x9, x9, x10	# 516
	add		x7, x7, x9	# 516
	flw		f3, 0(x7)	# 516
	fmul	f2, f2, f3	# 1255
	addi	x7, x0, 0	# 1255
	addi	x9, x0, 4	# 1255
	mul		x7, x7, x9	# 1255
	add		x6, x6, x7	# 1255
	flw		f3, 0(x6)	# 1255
	lw		x4, 36(x4)	# 521
	addi	x6, x0, 1	# 526
	addi	x7, x0, 4	# 526
	mul		x6, x6, x7	# 526
	add		x4, x4, x6	# 526
	flw		f5, 0(x4)	# 526
	fmul	f3, f3, f5	# 1255
	fadd	f2, f2, f3	# 1255
	fadd	f3, f0, f17	# 7
	fmul	f2, f2, f3	# 7
	fsub	f2, f4, f2	# 1255
	addi	x4, x0, 4	# 1255
	mul		x4, x5, x4	# 1255
	add		x4, x8, x4	# 1255
	fsw		f2, 0(x4)	# 1255
	jal		x0, beq_cont.96483	# 1252
beq.96484:
	addi	x4, x0, 1	# 1257
	addi	x5, x0, 4	# 1257
	mul		x4, x4, x5	# 1257
	add		x4, x8, x4	# 1257
	fsw		f2, 0(x4)	# 1257
	addi	x4, x0, 2	# 1258
	addi	x5, x0, 4	# 1258
	mul		x4, x4, x5	# 1258
	add		x4, x8, x4	# 1258
	fsw		f3, 0(x4)	# 1258
	addi	x4, x0, 3	# 1259
	addi	x5, x0, 4	# 1259
	mul		x4, x4, x5	# 1259
	add		x4, x8, x4	# 1259
	fsw		f4, 0(x4)	# 1259
beq_cont.96483:
	flw		f2, 0(x2)	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.96486	# 1
	jal		x0, feq_cont.96485	# 1
feq_else.96486:
	addi	x4, x0, 4	# 1262
	fadd	f2, f0, f16	# 1262
	fdiv	f1, f2, f1	# 1262
	addi	x5, x0, 4	# 1262
	mul		x4, x4, x5	# 1262
	add		x4, x8, x4	# 1262
	fsw		f1, 0(x4)	# 1262
feq_cont.96485:
	addi	x4, x8, 0	# 1264
	jalr	x0, x1, 0	# 1264
iter_setup_dirvec_constants.2777.13278:
	lw		x6, 20(x27)	# 1270
	lw		x7, 16(x27)	# 1270
	lw		x8, 12(x27)	# 1270
	lw		x9, 8(x27)	# 1270
	lw		x10, 4(x27)	# 1270
	ble		x9, x5, ble.96487	# 1270
	jalr	x0, x1, 0	# 1283
ble.96487:
	addi	x11, x26, 48	# 1271
	addi	x12, x0, 4	# 1271
	mul		x12, x5, x12	# 1271
	add		x11, x11, x12	# 1271
	lw		x11, 0(x11)	# 1271
	lw		x12, 4(x4)	# 645
	lw		x13, 0(x4)	# 639
	lw		x14, 4(x11)	# 353
	sw		x27, 0(x2)	# 1275
	sw		x7, -4(x2)	# 1275
	sw		x6, -8(x2)	# 1275
	sw		x8, -12(x2)	# 1275
	sw		x4, -16(x2)	# 1275
	sw		x9, -20(x2)	# 1275
	sw		x10, -24(x2)	# 1275
	beq		x14, x10, beq.96490	# 1275
	addi	x15, x0, 2	# 1277
	beq		x14, x15, beq.96492	# 1277
	sw		x12, -28(x2)	# 1280
	sw		x5, -32(x2)	# 1280
	addi	x5, x11, 0
	addi	x4, x13, 0
	addi	x27, x7, 0
	sw		x1, -36(x2)	# 1280
	addi	x2, x2, -40	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 40	# 1280
	lw		x1, -36(x2)	# 1280
	addi	x5, x0, 4	# 1280
	lw		x6, -32(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -28(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.96491	# 1277
beq.96492:
	sw		x12, -28(x2)	# 1278
	sw		x5, -32(x2)	# 1278
	addi	x5, x11, 0
	addi	x4, x13, 0
	addi	x27, x6, 0
	sw		x1, -36(x2)	# 1278
	addi	x2, x2, -40	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 40	# 1278
	lw		x1, -36(x2)	# 1278
	addi	x5, x0, 4	# 1278
	lw		x6, -32(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -28(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.96491:
	jal		x0, beq_cont.96489	# 1275
beq.96490:
	sw		x12, -28(x2)	# 1276
	sw		x5, -32(x2)	# 1276
	addi	x5, x11, 0
	addi	x4, x13, 0
	addi	x27, x8, 0
	sw		x1, -36(x2)	# 1276
	addi	x2, x2, -40	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 40	# 1276
	lw		x1, -36(x2)	# 1276
	addi	x5, x0, 4	# 1276
	lw		x6, -32(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -28(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.96489:
	lw		x4, -24(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -20(x2)	# 1270
	ble		x6, x5, ble.96493	# 1270
	jalr	x0, x1, 0	# 1283
ble.96493:
	addi	x6, x26, 48	# 1271
	addi	x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	add		x6, x6, x7	# 1271
	lw		x6, 0(x6)	# 1271
	lw		x7, -16(x2)	# 645
	lw		x8, 4(x7)	# 645
	lw		x9, 0(x7)	# 639
	lw		x10, 4(x6)	# 353
	beq		x10, x4, beq.96496	# 1275
	addi	x11, x0, 2	# 1277
	beq		x10, x11, beq.96498	# 1277
	lw		x27, -4(x2)	# 1280
	sw		x8, -36(x2)	# 1280
	sw		x5, -40(x2)	# 1280
	addi	x5, x6, 0
	addi	x4, x9, 0
	sw		x1, -44(x2)	# 1280
	addi	x2, x2, -48	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 48	# 1280
	lw		x1, -44(x2)	# 1280
	addi	x5, x0, 4	# 1280
	lw		x6, -40(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -36(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.96497	# 1277
beq.96498:
	lw		x27, -8(x2)	# 1278
	sw		x8, -36(x2)	# 1278
	sw		x5, -40(x2)	# 1278
	addi	x5, x6, 0
	addi	x4, x9, 0
	sw		x1, -44(x2)	# 1278
	addi	x2, x2, -48	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 48	# 1278
	lw		x1, -44(x2)	# 1278
	addi	x5, x0, 4	# 1278
	lw		x6, -40(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -36(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.96497:
	jal		x0, beq_cont.96495	# 1275
beq.96496:
	lw		x27, -12(x2)	# 1276
	sw		x8, -36(x2)	# 1276
	sw		x5, -40(x2)	# 1276
	addi	x5, x6, 0
	addi	x4, x9, 0
	sw		x1, -44(x2)	# 1276
	addi	x2, x2, -48	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 48	# 1276
	lw		x1, -44(x2)	# 1276
	addi	x5, x0, 4	# 1276
	lw		x6, -40(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -36(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.96495:
	lw		x4, -24(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x4, -16(x2)	# 1282
	lw		x27, 0(x2)	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x0, x31, 0	# 1282
setup_startp_constants.2782.13281:
	lw		x6, 16(x27)	# 1295
	lw		x7, 12(x27)	# 1295
	lw		x8, 8(x27)	# 1295
	lw		x9, 4(x27)	# 1295
	ble		x8, x5, ble.96499	# 1295
	jalr	x0, x1, 0	# 1310
ble.96499:
	addi	x10, x26, 48	# 1296
	addi	x11, x0, 4	# 1296
	mul		x11, x5, x11	# 1296
	add		x10, x10, x11	# 1296
	lw		x10, 0(x10)	# 1296
	lw		x11, 40(x10)	# 548
	lw		x12, 4(x10)	# 353
	addi	x13, x0, 4	# 1299
	mul		x13, x8, x13	# 1299
	add		x13, x4, x13	# 1299
	flw		f1, 0(x13)	# 1299
	lw		x13, 20(x10)	# 431
	addi	x14, x0, 4	# 436
	mul		x14, x8, x14	# 436
	add		x13, x13, x14	# 436
	flw		f2, 0(x13)	# 436
	fsub	f1, f1, f2	# 1299
	addi	x13, x0, 4	# 1299
	mul		x8, x8, x13	# 1299
	add		x8, x11, x8	# 1299
	fsw		f1, 0(x8)	# 1299
	addi	x8, x0, 4	# 1300
	mul		x8, x9, x8	# 1300
	add		x8, x4, x8	# 1300
	flw		f1, 0(x8)	# 1300
	lw		x8, 20(x10)	# 441
	addi	x13, x0, 4	# 446
	mul		x13, x9, x13	# 446
	add		x8, x8, x13	# 446
	flw		f2, 0(x8)	# 446
	fsub	f1, f1, f2	# 1300
	addi	x8, x0, 4	# 1300
	mul		x8, x9, x8	# 1300
	add		x8, x11, x8	# 1300
	fsw		f1, 0(x8)	# 1300
	addi	x8, x0, 4	# 1301
	mul		x8, x7, x8	# 1301
	add		x8, x4, x8	# 1301
	flw		f1, 0(x8)	# 1301
	lw		x8, 20(x10)	# 451
	addi	x13, x0, 4	# 456
	mul		x13, x7, x13	# 456
	add		x8, x8, x13	# 456
	flw		f2, 0(x8)	# 456
	fsub	f1, f1, f2	# 1301
	addi	x8, x0, 4	# 1301
	mul		x8, x7, x8	# 1301
	add		x8, x11, x8	# 1301
	fsw		f1, 0(x8)	# 1301
	sw		x4, 0(x2)	# 1302
	sw		x27, -4(x2)	# 1302
	sw		x9, -8(x2)	# 1302
	sw		x5, -12(x2)	# 1302
	beq		x12, x7, beq.96502	# 1302
	addi	x7, x0, 2	# 1305
	ble		x12, x7, ble_cont.96503	# 1305
	addi	x7, x0, 0	# 1306
	addi	x8, x0, 4	# 1306
	mul		x7, x7, x8	# 1306
	add		x7, x11, x7	# 1306
	flw		f1, 0(x7)	# 1306
	addi	x7, x0, 1	# 1306
	addi	x8, x0, 4	# 1306
	mul		x7, x7, x8	# 1306
	add		x7, x11, x7	# 1306
	flw		f2, 0(x7)	# 1306
	addi	x7, x0, 2	# 1306
	addi	x8, x0, 4	# 1306
	mul		x7, x7, x8	# 1306
	add		x7, x11, x7	# 1306
	flw		f3, 0(x7)	# 1306
	sw		x11, -16(x2)	# 1306
	sw		x12, -20(x2)	# 1306
	addi	x4, x10, 0
	addi	x27, x6, 0
	sw		x1, -24(x2)	# 1306
	addi	x2, x2, -28	# 1306
	lw		x31, 0(x27)	# 1306
	jalr	x1, x31, 0	# 1306
	addi	x2, x2, 28	# 1306
	lw		x1, -24(x2)	# 1306
	addi	x4, x0, 3	# 1307
	addi	x5, x0, 3	# 1307
	lw		x6, -20(x2)	# 1307
	beq		x6, x5, beq.96505	# 1307
	jal		x0, beq_cont.96504	# 1307
beq.96505:
	fadd	f2, f0, f16	# 1307
	fsub	f1, f1, f2	# 1307
beq_cont.96504:
	addi	x5, x0, 4	# 1307
	mul		x4, x4, x5	# 1307
	lw		x5, -16(x2)	# 1307
	add		x4, x5, x4	# 1307
	fsw		f1, 0(x4)	# 1307
ble_cont.96503:
	jal		x0, beq_cont.96501	# 1302
beq.96502:
	addi	x6, x0, 3	# 1303
	lw		x7, 16(x10)	# 421
	addi	x8, x0, 0	# 1304
	addi	x10, x0, 4	# 1304
	mul		x8, x8, x10	# 1304
	add		x8, x11, x8	# 1304
	flw		f1, 0(x8)	# 1304
	addi	x8, x0, 1	# 1304
	addi	x10, x0, 4	# 1304
	mul		x8, x8, x10	# 1304
	add		x8, x11, x8	# 1304
	flw		f2, 0(x8)	# 1304
	addi	x8, x0, 2	# 1304
	addi	x10, x0, 4	# 1304
	mul		x8, x8, x10	# 1304
	add		x8, x11, x8	# 1304
	flw		f3, 0(x8)	# 1304
	addi	x8, x0, 0	# 297
	addi	x10, x0, 4	# 297
	mul		x8, x8, x10	# 297
	add		x8, x7, x8	# 297
	flw		f4, 0(x8)	# 297
	fmul	f1, f4, f1	# 297
	addi	x8, x0, 1	# 297
	addi	x10, x0, 4	# 297
	mul		x8, x8, x10	# 297
	add		x8, x7, x8	# 297
	flw		f4, 0(x8)	# 297
	fmul	f2, f4, f2	# 297
	fadd	f1, f1, f2	# 297
	addi	x8, x0, 2	# 297
	addi	x10, x0, 4	# 297
	mul		x8, x8, x10	# 297
	add		x7, x7, x8	# 297
	flw		f2, 0(x7)	# 297
	fmul	f2, f2, f3	# 297
	fadd	f1, f1, f2	# 297
	addi	x7, x0, 4	# 1303
	mul		x6, x6, x7	# 1303
	add		x6, x11, x6	# 1303
	fsw		f1, 0(x6)	# 1303
beq_cont.96501:
	lw		x4, -8(x2)	# 1309
	lw		x5, -12(x2)	# 1309
	sub		x5, x5, x4	# 1309
	lw		x4, 0(x2)	# 1309
	lw		x27, -4(x2)	# 1309
	lw		x31, 0(x27)	# 1309
	jalr	x0, x31, 0	# 1309
is_outside.2802.13284:
	lw		x5, 24(x27)	# 431
	lw		x6, 20(x27)	# 431
	lw		x7, 16(x27)	# 431
	lw		x8, 12(x27)	# 431
	lw		x9, 8(x27)	# 431
	flw		f4, 4(x27)	# 431
	lw		x10, 20(x4)	# 431
	addi	x11, x0, 4	# 436
	mul		x11, x8, x11	# 436
	add		x10, x10, x11	# 436
	flw		f5, 0(x10)	# 436
	fsub	f1, f1, f5	# 1350
	lw		x10, 20(x4)	# 441
	addi	x11, x0, 4	# 446
	mul		x11, x9, x11	# 446
	add		x10, x10, x11	# 446
	flw		f5, 0(x10)	# 446
	fsub	f2, f2, f5	# 1351
	lw		x10, 20(x4)	# 451
	addi	x11, x0, 4	# 456
	mul		x11, x6, x11	# 456
	add		x10, x10, x11	# 456
	flw		f5, 0(x10)	# 456
	fsub	f3, f3, f5	# 1352
	lw		x10, 4(x4)	# 353
	beq		x10, x9, beq.96506	# 1354
	beq		x10, x6, beq.96507	# 1356
	sw		x8, 0(x2)	# 1343
	fsw		f4, -4(x2)	# 1343
	sw		x7, -8(x2)	# 1343
	sw		x4, -12(x2)	# 1343
	addi	x27, x5, 0
	sw		x1, -16(x2)	# 1343
	addi	x2, x2, -20	# 1343
	lw		x31, 0(x27)	# 1343
	jalr	x1, x31, 0	# 1343
	addi	x2, x2, 20	# 1343
	lw		x1, -16(x2)	# 1343
	lw		x4, -12(x2)	# 353
	lw		x5, 4(x4)	# 353
	lw		x6, -8(x2)	# 1344
	beq		x5, x6, beq.96509	# 1344
	jal		x0, beq_cont.96508	# 1344
beq.96509:
	fadd	f2, f0, f16	# 1344
	fsub	f1, f1, f2	# 1344
beq_cont.96508:
	lw		x4, 24(x4)	# 373
	flw		f2, -4(x2)	# 3
	fle		x31, f2, f1	# 3
	beq		x31, x0, fle_else.96511	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.96510	# 3
fle_else.96511:
	addi	x5, x0, 1	# 3
fle_cont.96510:
	lw		x6, 0(x2)	# 204
	beq		x4, x6, beq.96513	# 204
	fle		x31, f2, f1	# 3
	beq		x31, x0, fle_else.96515	# 3
	addi	x4, x0, 1	# 204
	jal		x0, fle_cont.96514	# 3
fle_else.96515:
	addi	x4, x0, 0	# 204
fle_cont.96514:
	jal		x0, beq_cont.96512	# 204
beq.96513:
	addi	x4, x5, 0	# 204
beq_cont.96512:
	beq		x4, x6, beq.96516	# 1345
	addi	x4, x0, 0	# 1345
	jalr	x0, x1, 0	# 1345
beq.96516:
	addi	x4, x0, 1	# 1345
	jalr	x0, x1, 0	# 1345
beq.96507:
	lw		x5, 16(x4)	# 421
	addi	x7, x0, 4	# 297
	mul		x7, x8, x7	# 297
	add		x7, x5, x7	# 297
	flw		f5, 0(x7)	# 297
	fmul	f1, f5, f1	# 297
	addi	x7, x0, 4	# 297
	mul		x7, x9, x7	# 297
	add		x7, x5, x7	# 297
	flw		f5, 0(x7)	# 297
	fmul	f2, f5, f2	# 297
	fadd	f1, f1, f2	# 297
	addi	x7, x0, 4	# 297
	mul		x6, x6, x7	# 297
	add		x5, x5, x6	# 297
	flw		f2, 0(x5)	# 297
	fmul	f2, f2, f3	# 297
	fadd	f1, f1, f2	# 297
	lw		x4, 24(x4)	# 373
	fle		x31, f4, f1	# 3
	beq		x31, x0, fle_else.96518	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.96517	# 3
fle_else.96518:
	addi	x5, x0, 1	# 3
fle_cont.96517:
	beq		x4, x8, beq.96520	# 204
	fle		x31, f4, f1	# 3
	beq		x31, x0, fle_else.96522	# 3
	addi	x4, x0, 1	# 204
	jal		x0, fle_cont.96521	# 3
fle_else.96522:
	addi	x4, x0, 0	# 204
fle_cont.96521:
	jal		x0, beq_cont.96519	# 204
beq.96520:
	addi	x4, x5, 0	# 204
beq_cont.96519:
	beq		x4, x8, beq.96523	# 1338
	addi	x4, x0, 0	# 1338
	jalr	x0, x1, 0	# 1338
beq.96523:
	addi	x4, x0, 1	# 1338
	jalr	x0, x1, 0	# 1338
beq.96506:
	fle		x31, f1, f4	# 5
	beq		x31, x0, fle_cont.96524	# 5
	fsub	f1, f0, f1	# 5
fle_cont.96524:
	lw		x5, 16(x4)	# 391
	addi	x7, x0, 4	# 396
	mul		x7, x8, x7	# 396
	add		x5, x5, x7	# 396
	flw		f5, 0(x5)	# 396
	fle		x31, f5, f1	# 6
	beq		x31, x0, fle_else.96526	# 6
	addi	x5, x0, 0	# 1331
	jal		x0, fle_cont.96525	# 6
fle_else.96526:
	fle		x31, f2, f4	# 5
	beq		x31, x0, fle_else.96528	# 5
	fsub	f1, f0, f2	# 5
	jal		x0, fle_cont.96527	# 5
fle_else.96528:
	fadd	f1, f0, f2	# 5
fle_cont.96527:
	lw		x5, 16(x4)	# 401
	addi	x7, x0, 4	# 406
	mul		x7, x9, x7	# 406
	add		x5, x5, x7	# 406
	flw		f2, 0(x5)	# 406
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.96530	# 6
	addi	x5, x0, 0	# 1330
	jal		x0, fle_cont.96529	# 6
fle_else.96530:
	fle		x31, f3, f4	# 5
	beq		x31, x0, fle_else.96532	# 5
	fsub	f1, f0, f3	# 5
	jal		x0, fle_cont.96531	# 5
fle_else.96532:
	fadd	f1, f0, f3	# 5
fle_cont.96531:
	lw		x5, 16(x4)	# 411
	addi	x7, x0, 4	# 416
	mul		x6, x6, x7	# 416
	add		x5, x5, x6	# 416
	flw		f2, 0(x5)	# 416
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.96534	# 6
	addi	x5, x0, 0	# 6
	jal		x0, fle_cont.96533	# 6
fle_else.96534:
	addi	x5, x0, 1	# 6
fle_cont.96533:
fle_cont.96529:
fle_cont.96525:
	beq		x5, x8, beq.96535	# 1326
	lw		x4, 24(x4)	# 373
	jalr	x0, x1, 0	# 377
beq.96535:
	lw		x4, 24(x4)	# 373
	beq		x4, x8, beq.96536	# 1332
	addi	x4, x0, 0	# 1332
	jalr	x0, x1, 0	# 1332
beq.96536:
	addi	x4, x0, 1	# 1332
	jalr	x0, x1, 0	# 1332
check_all_inside.2807.13289:
	lw		x6, 32(x27)	# 1364
	lw		x7, 28(x27)	# 1364
	lw		x8, 24(x27)	# 1364
	lw		x9, 20(x27)	# 1364
	lw		x10, 16(x27)	# 1364
	lw		x11, 12(x27)	# 1364
	lw		x12, 8(x27)	# 1364
	flw		f4, 4(x27)	# 1364
	addi	x13, x0, 4	# 1364
	mul		x13, x4, x13	# 1364
	add		x13, x5, x13	# 1364
	lw		x13, 0(x13)	# 1364
	beq		x13, x9, beq.96537	# 1365
	addi	x14, x26, 48	# 1368
	addi	x15, x0, 4	# 1368
	mul		x13, x13, x15	# 1368
	add		x13, x14, x13	# 1368
	lw		x13, 0(x13)	# 1368
	lw		x14, 20(x13)	# 431
	addi	x15, x0, 4	# 436
	mul		x15, x11, x15	# 436
	add		x14, x14, x15	# 436
	flw		f5, 0(x14)	# 436
	fsub	f5, f1, f5	# 1350
	lw		x14, 20(x13)	# 441
	addi	x15, x0, 4	# 446
	mul		x15, x12, x15	# 446
	add		x14, x14, x15	# 446
	flw		f6, 0(x14)	# 446
	fsub	f6, f2, f6	# 1351
	lw		x14, 20(x13)	# 451
	addi	x15, x0, 4	# 456
	mul		x15, x8, x15	# 456
	add		x14, x14, x15	# 456
	flw		f7, 0(x14)	# 456
	fsub	f7, f3, f7	# 1352
	lw		x14, 4(x13)	# 353
	sw		x27, 0(x2)	# 1354
	fsw		f3, -4(x2)	# 1354
	fsw		f2, -8(x2)	# 1354
	fsw		f1, -12(x2)	# 1354
	sw		x7, -16(x2)	# 1354
	sw		x9, -20(x2)	# 1354
	sw		x5, -24(x2)	# 1354
	sw		x12, -28(x2)	# 1354
	sw		x4, -32(x2)	# 1354
	sw		x11, -36(x2)	# 1354
	beq		x14, x12, beq.96539	# 1354
	addi	x15, x0, 2	# 1356
	beq		x14, x15, beq.96541	# 1356
	fsw		f4, -40(x2)	# 1343
	sw		x10, -44(x2)	# 1343
	sw		x13, -48(x2)	# 1343
	addi	x4, x13, 0
	addi	x27, x6, 0
	fadd	f3, f0, f7
	fadd	f2, f0, f6
	fadd	f1, f0, f5
	sw		x1, -52(x2)	# 1343
	addi	x2, x2, -56	# 1343
	lw		x31, 0(x27)	# 1343
	jalr	x1, x31, 0	# 1343
	addi	x2, x2, 56	# 1343
	lw		x1, -52(x2)	# 1343
	lw		x4, -48(x2)	# 353
	lw		x5, 4(x4)	# 353
	lw		x6, -44(x2)	# 1344
	beq		x5, x6, beq.96543	# 1344
	jal		x0, beq_cont.96542	# 1344
beq.96543:
	fadd	f2, f0, f16	# 1344
	fsub	f1, f1, f2	# 1344
beq_cont.96542:
	lw		x4, 24(x4)	# 373
	flw		f2, -40(x2)	# 3
	fle		x31, f2, f1	# 3
	beq		x31, x0, fle_else.96545	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.96544	# 3
fle_else.96545:
	addi	x5, x0, 1	# 3
fle_cont.96544:
	lw		x6, -36(x2)	# 204
	beq		x4, x6, beq.96547	# 204
	fle		x31, f2, f1	# 3
	beq		x31, x0, fle_else.96549	# 3
	addi	x4, x0, 1	# 204
	jal		x0, fle_cont.96548	# 3
fle_else.96549:
	addi	x4, x0, 0	# 204
fle_cont.96548:
	jal		x0, beq_cont.96546	# 204
beq.96547:
	addi	x4, x5, 0	# 204
beq_cont.96546:
	beq		x4, x6, beq.96551	# 1345
	addi	x4, x0, 0	# 1345
	jal		x0, beq_cont.96550	# 1345
beq.96551:
	addi	x4, x0, 1	# 1345
beq_cont.96550:
	jal		x0, beq_cont.96540	# 1356
beq.96541:
	lw		x6, 16(x13)	# 421
	addi	x10, x0, 4	# 297
	mul		x10, x11, x10	# 297
	add		x10, x6, x10	# 297
	flw		f8, 0(x10)	# 297
	fmul	f5, f8, f5	# 297
	addi	x10, x0, 4	# 297
	mul		x10, x12, x10	# 297
	add		x10, x6, x10	# 297
	flw		f8, 0(x10)	# 297
	fmul	f6, f8, f6	# 297
	fadd	f5, f5, f6	# 297
	addi	x10, x0, 4	# 297
	mul		x8, x8, x10	# 297
	add		x6, x6, x8	# 297
	flw		f6, 0(x6)	# 297
	fmul	f6, f6, f7	# 297
	fadd	f5, f5, f6	# 297
	lw		x6, 24(x13)	# 373
	fle		x31, f4, f5	# 3
	beq		x31, x0, fle_else.96553	# 3
	addi	x8, x0, 0	# 3
	jal		x0, fle_cont.96552	# 3
fle_else.96553:
	addi	x8, x0, 1	# 3
fle_cont.96552:
	beq		x6, x11, beq.96555	# 204
	fle		x31, f4, f5	# 3
	beq		x31, x0, fle_else.96557	# 3
	addi	x6, x0, 1	# 204
	jal		x0, fle_cont.96556	# 3
fle_else.96557:
	addi	x6, x0, 0	# 204
fle_cont.96556:
	jal		x0, beq_cont.96554	# 204
beq.96555:
	addi	x6, x8, 0	# 204
beq_cont.96554:
	beq		x6, x11, beq.96559	# 1338
	addi	x4, x0, 0	# 1338
	jal		x0, beq_cont.96558	# 1338
beq.96559:
	addi	x4, x0, 1	# 1338
beq_cont.96558:
beq_cont.96540:
	jal		x0, beq_cont.96538	# 1354
beq.96539:
	fle		x31, f5, f4	# 5
	beq		x31, x0, fle_cont.96560	# 5
	fsub	f5, f0, f5	# 5
fle_cont.96560:
	lw		x6, 16(x13)	# 391
	addi	x10, x0, 4	# 396
	mul		x10, x11, x10	# 396
	add		x6, x6, x10	# 396
	flw		f8, 0(x6)	# 396
	fle		x31, f8, f5	# 6
	beq		x31, x0, fle_else.96562	# 6
	addi	x6, x0, 0	# 1331
	jal		x0, fle_cont.96561	# 6
fle_else.96562:
	fle		x31, f6, f4	# 5
	beq		x31, x0, fle_else.96564	# 5
	fsub	f5, f0, f6	# 5
	jal		x0, fle_cont.96563	# 5
fle_else.96564:
	fadd	f5, f0, f6	# 5
fle_cont.96563:
	lw		x6, 16(x13)	# 401
	addi	x10, x0, 4	# 406
	mul		x10, x12, x10	# 406
	add		x6, x6, x10	# 406
	flw		f6, 0(x6)	# 406
	fle		x31, f6, f5	# 6
	beq		x31, x0, fle_else.96566	# 6
	addi	x6, x0, 0	# 1330
	jal		x0, fle_cont.96565	# 6
fle_else.96566:
	fle		x31, f7, f4	# 5
	beq		x31, x0, fle_else.96568	# 5
	fsub	f4, f0, f7	# 5
	jal		x0, fle_cont.96567	# 5
fle_else.96568:
	fadd	f4, f0, f7	# 5
fle_cont.96567:
	lw		x6, 16(x13)	# 411
	addi	x10, x0, 4	# 416
	mul		x8, x8, x10	# 416
	add		x6, x6, x8	# 416
	flw		f5, 0(x6)	# 416
	fle		x31, f5, f4	# 6
	beq		x31, x0, fle_else.96570	# 6
	addi	x6, x0, 0	# 6
	jal		x0, fle_cont.96569	# 6
fle_else.96570:
	addi	x6, x0, 1	# 6
fle_cont.96569:
fle_cont.96565:
fle_cont.96561:
	beq		x6, x11, beq.96572	# 1326
	lw		x6, 24(x13)	# 373
	addi	x4, x6, 0	# 377
	jal		x0, beq_cont.96571	# 1326
beq.96572:
	lw		x6, 24(x13)	# 373
	beq		x6, x11, beq.96574	# 1332
	addi	x4, x0, 0	# 1332
	jal		x0, beq_cont.96573	# 1332
beq.96574:
	addi	x4, x0, 1	# 1332
beq_cont.96573:
beq_cont.96571:
beq_cont.96538:
	lw		x5, -36(x2)	# 1368
	beq		x4, x5, beq.96575	# 1368
	addi	x4, x0, 0	# 1369
	jalr	x0, x1, 0	# 1369
beq.96575:
	lw		x4, -28(x2)	# 1371
	lw		x6, -32(x2)	# 1371
	add		x6, x6, x4	# 1371
	addi	x7, x0, 4	# 1364
	mul		x7, x6, x7	# 1364
	lw		x8, -24(x2)	# 1364
	add		x7, x8, x7	# 1364
	lw		x7, 0(x7)	# 1364
	lw		x9, -20(x2)	# 1365
	beq		x7, x9, beq.96576	# 1365
	addi	x9, x26, 48	# 1368
	addi	x10, x0, 4	# 1368
	mul		x7, x7, x10	# 1368
	add		x7, x9, x7	# 1368
	lw		x7, 0(x7)	# 1368
	flw		f1, -12(x2)	# 1368
	flw		f2, -8(x2)	# 1368
	flw		f3, -4(x2)	# 1368
	lw		x27, -16(x2)	# 1368
	sw		x6, -52(x2)	# 1368
	addi	x4, x7, 0
	sw		x1, -56(x2)	# 1368
	addi	x2, x2, -60	# 1368
	lw		x31, 0(x27)	# 1368
	jalr	x1, x31, 0	# 1368
	addi	x2, x2, 60	# 1368
	lw		x1, -56(x2)	# 1368
	lw		x5, -36(x2)	# 1368
	beq		x4, x5, beq.96577	# 1368
	addi	x4, x0, 0	# 1369
	jalr	x0, x1, 0	# 1369
beq.96577:
	lw		x4, -28(x2)	# 1371
	lw		x5, -52(x2)	# 1371
	add		x4, x5, x4	# 1371
	flw		f1, -12(x2)	# 1371
	flw		f2, -8(x2)	# 1371
	flw		f3, -4(x2)	# 1371
	lw		x5, -24(x2)	# 1371
	lw		x27, 0(x2)	# 1371
	lw		x31, 0(x27)	# 1371
	jalr	x0, x31, 0	# 1371
beq.96576:
	addi	x4, x0, 1	# 1366
	jalr	x0, x1, 0	# 1366
beq.96537:
	addi	x4, x0, 1	# 1366
	jalr	x0, x1, 0	# 1366
shadow_check_and_group.2813.13295:
	lw		x6, 32(x27)	# 1384
	lw		x7, 28(x27)	# 1384
	lw		x8, 24(x27)	# 1384
	lw		x9, 20(x27)	# 1384
	lw		x10, 16(x27)	# 1384
	lw		x11, 12(x27)	# 1384
	lw		x12, 8(x27)	# 1384
	lw		x13, 4(x27)	# 1384
	addi	x14, x0, 4	# 1384
	mul		x14, x4, x14	# 1384
	add		x14, x5, x14	# 1384
	lw		x14, 0(x14)	# 1384
	beq		x14, x11, beq.96578	# 1384
	addi	x15, x26, 552	# 1388
	sw		x9, 0(x2)	# 1388
	sw		x8, -4(x2)	# 1388
	sw		x11, -8(x2)	# 1388
	sw		x10, -12(x2)	# 1388
	sw		x5, -16(x2)	# 1388
	sw		x27, -20(x2)	# 1388
	sw		x13, -24(x2)	# 1388
	sw		x4, -28(x2)	# 1388
	sw		x14, -32(x2)	# 1388
	sw		x12, -36(x2)	# 1388
	addi	x5, x7, 0
	addi	x4, x14, 0
	addi	x27, x6, 0
	addi	x6, x15, 0
	sw		x1, -40(x2)	# 1388
	addi	x2, x2, -44	# 1388
	lw		x31, 0(x27)	# 1388
	jalr	x1, x31, 0	# 1388
	addi	x2, x2, 44	# 1388
	lw		x1, -40(x2)	# 1388
	addi	x5, x26, 540	# 1389
	addi	x6, x0, 4	# 1389
	lw		x7, -36(x2)	# 1389
	mul		x6, x7, x6	# 1389
	add		x5, x5, x6	# 1389
	flw		f1, 0(x5)	# 1389
	beq		x4, x7, beq.96580	# 1390
	lui		x4, %hi(l.22090)	# 1390
	ori		x4, x0, %lo(l.22090)	# 1390
	flw		f2, 0(x4)	# 1390
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.96582	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.96581	# 6
fle_else.96582:
	addi	x4, x0, 1	# 6
fle_cont.96581:
	jal		x0, beq_cont.96579	# 1390
beq.96580:
	addi	x4, x0, 0	# 1390
beq_cont.96579:
	beq		x4, x7, beq.96583	# 1390
	fadd	f2, f0, f27	# 1393
	fadd	f1, f1, f2	# 1393
	addi	x4, x26, 312	# 1394
	addi	x5, x0, 4	# 1394
	mul		x5, x7, x5	# 1394
	add		x4, x4, x5	# 1394
	flw		f2, 0(x4)	# 1394
	fmul	f2, f2, f1	# 1394
	addi	x4, x26, 552	# 1394
	addi	x5, x0, 4	# 1394
	mul		x5, x7, x5	# 1394
	add		x4, x4, x5	# 1394
	flw		f3, 0(x4)	# 1394
	fadd	f2, f2, f3	# 1394
	addi	x4, x26, 312	# 1395
	addi	x5, x0, 4	# 1395
	lw		x6, -24(x2)	# 1395
	mul		x5, x6, x5	# 1395
	add		x4, x4, x5	# 1395
	flw		f3, 0(x4)	# 1395
	fmul	f3, f3, f1	# 1395
	addi	x4, x26, 552	# 1395
	addi	x5, x0, 4	# 1395
	mul		x5, x6, x5	# 1395
	add		x4, x4, x5	# 1395
	flw		f4, 0(x4)	# 1395
	fadd	f3, f3, f4	# 1395
	addi	x4, x26, 312	# 1396
	addi	x5, x0, 4	# 1396
	lw		x8, -12(x2)	# 1396
	mul		x5, x8, x5	# 1396
	add		x4, x4, x5	# 1396
	flw		f4, 0(x4)	# 1396
	fmul	f1, f4, f1	# 1396
	addi	x4, x26, 552	# 1396
	addi	x5, x0, 4	# 1396
	mul		x5, x8, x5	# 1396
	add		x4, x4, x5	# 1396
	flw		f4, 0(x4)	# 1396
	fadd	f1, f1, f4	# 1396
	addi	x4, x0, 4	# 1364
	mul		x4, x7, x4	# 1364
	lw		x5, -16(x2)	# 1364
	add		x4, x5, x4	# 1364
	lw		x4, 0(x4)	# 1364
	lw		x8, -8(x2)	# 1365
	beq		x4, x8, beq.96585	# 1365
	addi	x8, x26, 48	# 1368
	addi	x9, x0, 4	# 1368
	mul		x4, x4, x9	# 1368
	add		x4, x8, x4	# 1368
	lw		x4, 0(x4)	# 1368
	lw		x27, -4(x2)	# 1368
	fsw		f1, -40(x2)	# 1368
	fsw		f3, -44(x2)	# 1368
	fsw		f2, -48(x2)	# 1368
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -52(x2)	# 1368
	addi	x2, x2, -56	# 1368
	lw		x31, 0(x27)	# 1368
	jalr	x1, x31, 0	# 1368
	addi	x2, x2, 56	# 1368
	lw		x1, -52(x2)	# 1368
	addi	x5, x0, 0	# 1368
	beq		x4, x5, beq.96587	# 1368
	addi	x4, x0, 0	# 1369
	jal		x0, beq_cont.96586	# 1368
beq.96587:
	addi	x4, x0, 1	# 1371
	flw		f1, -48(x2)	# 1371
	flw		f2, -44(x2)	# 1371
	flw		f3, -40(x2)	# 1371
	lw		x5, -16(x2)	# 1371
	lw		x27, 0(x2)	# 1371
	sw		x1, -52(x2)	# 1371
	addi	x2, x2, -56	# 1371
	lw		x31, 0(x27)	# 1371
	jalr	x1, x31, 0	# 1371
	addi	x2, x2, 56	# 1371
	lw		x1, -52(x2)	# 1371
beq_cont.96586:
	jal		x0, beq_cont.96584	# 1365
beq.96585:
	addi	x4, x0, 1	# 1366
beq_cont.96584:
	lw		x5, -36(x2)	# 1397
	beq		x4, x5, beq.96588	# 1397
	addi	x4, x0, 1	# 1398
	jalr	x0, x1, 0	# 1398
beq.96588:
	lw		x4, -24(x2)	# 1400
	lw		x5, -28(x2)	# 1400
	add		x4, x5, x4	# 1400
	lw		x5, -16(x2)	# 1400
	lw		x27, -20(x2)	# 1400
	lw		x31, 0(x27)	# 1400
	jalr	x0, x31, 0	# 1400
beq.96583:
	addi	x4, x26, 48	# 1406
	addi	x5, x0, 4	# 1406
	lw		x6, -32(x2)	# 1406
	mul		x5, x6, x5	# 1406
	add		x4, x4, x5	# 1406
	lw		x4, 0(x4)	# 1406
	lw		x4, 24(x4)	# 373
	beq		x4, x7, beq.96589	# 1406
	lw		x4, -24(x2)	# 1407
	lw		x5, -28(x2)	# 1407
	add		x4, x5, x4	# 1407
	lw		x5, -16(x2)	# 1407
	lw		x27, -20(x2)	# 1407
	lw		x31, 0(x27)	# 1407
	jalr	x0, x31, 0	# 1407
beq.96589:
	addi	x4, x0, 0	# 1409
	jalr	x0, x1, 0	# 1409
beq.96578:
	addi	x4, x0, 0	# 1385
	jalr	x0, x1, 0	# 1385
shadow_check_one_or_group.2816.13298:
	lw		x6, 16(x27)	# 1414
	lw		x7, 12(x27)	# 1414
	lw		x8, 8(x27)	# 1414
	lw		x9, 4(x27)	# 1414
	addi	x10, x0, 4	# 1414
	mul		x10, x4, x10	# 1414
	add		x10, x5, x10	# 1414
	lw		x10, 0(x10)	# 1414
	beq		x10, x7, beq.96590	# 1415
	addi	x11, x26, 332	# 1418
	addi	x12, x0, 4	# 1418
	mul		x10, x10, x12	# 1418
	add		x10, x11, x10	# 1418
	lw		x10, 0(x10)	# 1418
	sw		x27, 0(x2)	# 1419
	sw		x6, -4(x2)	# 1419
	sw		x7, -8(x2)	# 1419
	sw		x5, -12(x2)	# 1419
	sw		x9, -16(x2)	# 1419
	sw		x4, -20(x2)	# 1419
	sw		x8, -24(x2)	# 1419
	addi	x5, x10, 0
	addi	x4, x8, 0
	addi	x27, x6, 0
	sw		x1, -28(x2)	# 1419
	addi	x2, x2, -32	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 32	# 1419
	lw		x1, -28(x2)	# 1419
	lw		x5, -24(x2)	# 1420
	beq		x4, x5, beq.96591	# 1420
	addi	x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.96591:
	lw		x4, -16(x2)	# 1423
	lw		x6, -20(x2)	# 1423
	add		x6, x6, x4	# 1423
	addi	x7, x0, 4	# 1414
	mul		x7, x6, x7	# 1414
	lw		x8, -12(x2)	# 1414
	add		x7, x8, x7	# 1414
	lw		x7, 0(x7)	# 1414
	lw		x9, -8(x2)	# 1415
	beq		x7, x9, beq.96592	# 1415
	addi	x10, x26, 332	# 1418
	addi	x11, x0, 4	# 1418
	mul		x7, x7, x11	# 1418
	add		x7, x10, x7	# 1418
	lw		x7, 0(x7)	# 1418
	lw		x27, -4(x2)	# 1419
	sw		x6, -28(x2)	# 1419
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -32(x2)	# 1419
	addi	x2, x2, -36	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 36	# 1419
	lw		x1, -32(x2)	# 1419
	lw		x5, -24(x2)	# 1420
	beq		x4, x5, beq.96593	# 1420
	addi	x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.96593:
	lw		x4, -16(x2)	# 1423
	lw		x6, -28(x2)	# 1423
	add		x6, x6, x4	# 1423
	addi	x7, x0, 4	# 1414
	mul		x7, x6, x7	# 1414
	lw		x8, -12(x2)	# 1414
	add		x7, x8, x7	# 1414
	lw		x7, 0(x7)	# 1414
	lw		x9, -8(x2)	# 1415
	beq		x7, x9, beq.96594	# 1415
	addi	x10, x26, 332	# 1418
	addi	x11, x0, 4	# 1418
	mul		x7, x7, x11	# 1418
	add		x7, x10, x7	# 1418
	lw		x7, 0(x7)	# 1418
	lw		x27, -4(x2)	# 1419
	sw		x6, -32(x2)	# 1419
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -36(x2)	# 1419
	addi	x2, x2, -40	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 40	# 1419
	lw		x1, -36(x2)	# 1419
	lw		x5, -24(x2)	# 1420
	beq		x4, x5, beq.96595	# 1420
	addi	x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.96595:
	lw		x4, -16(x2)	# 1423
	lw		x6, -32(x2)	# 1423
	add		x6, x6, x4	# 1423
	addi	x7, x0, 4	# 1414
	mul		x7, x6, x7	# 1414
	lw		x8, -12(x2)	# 1414
	add		x7, x8, x7	# 1414
	lw		x7, 0(x7)	# 1414
	lw		x9, -8(x2)	# 1415
	beq		x7, x9, beq.96596	# 1415
	addi	x9, x26, 332	# 1418
	addi	x10, x0, 4	# 1418
	mul		x7, x7, x10	# 1418
	add		x7, x9, x7	# 1418
	lw		x7, 0(x7)	# 1418
	lw		x27, -4(x2)	# 1419
	sw		x6, -36(x2)	# 1419
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -40(x2)	# 1419
	addi	x2, x2, -44	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 44	# 1419
	lw		x1, -40(x2)	# 1419
	lw		x5, -24(x2)	# 1420
	beq		x4, x5, beq.96597	# 1420
	addi	x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.96597:
	lw		x4, -16(x2)	# 1423
	lw		x5, -36(x2)	# 1423
	add		x4, x5, x4	# 1423
	lw		x5, -12(x2)	# 1423
	lw		x27, 0(x2)	# 1423
	lw		x31, 0(x27)	# 1423
	jalr	x0, x31, 0	# 1423
beq.96596:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
beq.96594:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
beq.96592:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
beq.96590:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
shadow_check_one_or_matrix.2819.13301:
	lw		x6, 28(x27)	# 1429
	lw		x7, 24(x27)	# 1429
	lw		x8, 20(x27)	# 1429
	lw		x9, 16(x27)	# 1429
	lw		x10, 12(x27)	# 1429
	lw		x11, 8(x27)	# 1429
	lw		x12, 4(x27)	# 1429
	addi	x13, x0, 4	# 1429
	mul		x13, x4, x13	# 1429
	add		x13, x5, x13	# 1429
	lw		x13, 0(x13)	# 1429
	addi	x14, x0, 4	# 1430
	mul		x14, x11, x14	# 1430
	add		x14, x13, x14	# 1430
	lw		x14, 0(x14)	# 1430
	beq		x14, x10, beq.96598	# 1431
	addi	x15, x0, 99	# 1435
	sw		x7, 0(x2)	# 1435
	sw		x8, -4(x2)	# 1435
	sw		x10, -8(x2)	# 1435
	sw		x13, -12(x2)	# 1435
	sw		x5, -16(x2)	# 1435
	sw		x27, -20(x2)	# 1435
	sw		x12, -24(x2)	# 1435
	sw		x4, -28(x2)	# 1435
	sw		x11, -32(x2)	# 1435
	beq		x14, x15, beq.96600	# 1435
	addi	x15, x26, 552	# 1438
	addi	x5, x9, 0
	addi	x4, x14, 0
	addi	x27, x6, 0
	addi	x6, x15, 0
	sw		x1, -36(x2)	# 1438
	addi	x2, x2, -40	# 1438
	lw		x31, 0(x27)	# 1438
	jalr	x1, x31, 0	# 1438
	addi	x2, x2, 40	# 1438
	lw		x1, -36(x2)	# 1438
	addi	x5, x0, 0	# 1441
	beq		x4, x5, beq.96602	# 1441
	addi	x4, x0, 0	# 1442
	addi	x5, x26, 540	# 1442
	addi	x6, x0, 4	# 1442
	mul		x4, x4, x6	# 1442
	add		x4, x5, x4	# 1442
	flw		f1, 0(x4)	# 1442
	fadd	f2, f0, f25	# 1442
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.96604	# 6
	addi	x4, x0, 0	# 1446
	jal		x0, fle_cont.96603	# 6
fle_else.96604:
	addi	x4, x0, 1	# 1443
	addi	x5, x0, 4	# 1414
	mul		x4, x4, x5	# 1414
	lw		x5, -12(x2)	# 1414
	add		x4, x5, x4	# 1414
	lw		x4, 0(x4)	# 1414
	addi	x6, x0, -1	# 1415
	beq		x4, x6, beq.96606	# 1415
	addi	x6, x26, 332	# 1418
	addi	x7, x0, 4	# 1418
	mul		x4, x4, x7	# 1418
	add		x4, x6, x4	# 1418
	lw		x4, 0(x4)	# 1418
	addi	x6, x0, 0	# 1419
	lw		x27, -4(x2)	# 1419
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -36(x2)	# 1419
	addi	x2, x2, -40	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 40	# 1419
	lw		x1, -36(x2)	# 1419
	addi	x5, x0, 0	# 1420
	beq		x4, x5, beq.96608	# 1420
	addi	x4, x0, 1	# 1421
	jal		x0, beq_cont.96607	# 1420
beq.96608:
	addi	x4, x0, 2	# 1423
	addi	x5, x0, 4	# 1414
	mul		x4, x4, x5	# 1414
	lw		x5, -12(x2)	# 1414
	add		x4, x5, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lw		x6, -8(x2)	# 1415
	beq		x4, x6, beq.96610	# 1415
	addi	x7, x26, 332	# 1418
	addi	x8, x0, 4	# 1418
	mul		x4, x4, x8	# 1418
	add		x4, x7, x4	# 1418
	lw		x4, 0(x4)	# 1418
	lw		x7, -32(x2)	# 1419
	lw		x27, -4(x2)	# 1419
	addi	x5, x4, 0
	addi	x4, x7, 0
	sw		x1, -36(x2)	# 1419
	addi	x2, x2, -40	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 40	# 1419
	lw		x1, -36(x2)	# 1419
	lw		x5, -32(x2)	# 1420
	beq		x4, x5, beq.96612	# 1420
	addi	x4, x0, 1	# 1421
	jal		x0, beq_cont.96611	# 1420
beq.96612:
	addi	x4, x0, 3	# 1423
	addi	x6, x0, 4	# 1414
	mul		x4, x4, x6	# 1414
	lw		x6, -12(x2)	# 1414
	add		x4, x6, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lw		x7, -8(x2)	# 1415
	beq		x4, x7, beq.96614	# 1415
	addi	x8, x26, 332	# 1418
	addi	x9, x0, 4	# 1418
	mul		x4, x4, x9	# 1418
	add		x4, x8, x4	# 1418
	lw		x4, 0(x4)	# 1418
	lw		x27, -4(x2)	# 1419
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -36(x2)	# 1419
	addi	x2, x2, -40	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 40	# 1419
	lw		x1, -36(x2)	# 1419
	lw		x5, -32(x2)	# 1420
	beq		x4, x5, beq.96616	# 1420
	addi	x4, x0, 1	# 1421
	jal		x0, beq_cont.96615	# 1420
beq.96616:
	addi	x4, x0, 4	# 1423
	lw		x6, -12(x2)	# 1423
	lw		x27, 0(x2)	# 1423
	addi	x5, x6, 0
	sw		x1, -36(x2)	# 1423
	addi	x2, x2, -40	# 1423
	lw		x31, 0(x27)	# 1423
	jalr	x1, x31, 0	# 1423
	addi	x2, x2, 40	# 1423
	lw		x1, -36(x2)	# 1423
beq_cont.96615:
	jal		x0, beq_cont.96613	# 1415
beq.96614:
	addi	x4, x0, 0	# 1416
beq_cont.96613:
beq_cont.96611:
	jal		x0, beq_cont.96609	# 1415
beq.96610:
	addi	x4, x0, 0	# 1416
beq_cont.96609:
beq_cont.96607:
	jal		x0, beq_cont.96605	# 1415
beq.96606:
	addi	x4, x0, 0	# 1416
beq_cont.96605:
	addi	x5, x0, 0	# 1443
	beq		x4, x5, beq.96618	# 1443
	addi	x4, x0, 1	# 1444
	jal		x0, beq_cont.96617	# 1443
beq.96618:
	addi	x4, x0, 0	# 1445
beq_cont.96617:
fle_cont.96603:
	jal		x0, beq_cont.96601	# 1441
beq.96602:
	addi	x4, x0, 0	# 1447
beq_cont.96601:
	jal		x0, beq_cont.96599	# 1435
beq.96600:
	addi	x4, x0, 1	# 1436
beq_cont.96599:
	lw		x5, -32(x2)	# 1434
	beq		x4, x5, beq.96619	# 1434
	addi	x4, x0, 4	# 1414
	lw		x6, -24(x2)	# 1414
	mul		x4, x6, x4	# 1414
	lw		x7, -12(x2)	# 1414
	add		x4, x7, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lw		x8, -8(x2)	# 1415
	beq		x4, x8, beq.96621	# 1415
	addi	x9, x26, 332	# 1418
	addi	x10, x0, 4	# 1418
	mul		x4, x4, x10	# 1418
	add		x4, x9, x4	# 1418
	lw		x4, 0(x4)	# 1418
	addi	x9, x0, 0	# 1419
	lw		x27, -4(x2)	# 1419
	addi	x5, x4, 0
	addi	x4, x9, 0
	sw		x1, -36(x2)	# 1419
	addi	x2, x2, -40	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 40	# 1419
	lw		x1, -36(x2)	# 1419
	addi	x5, x0, 0	# 1420
	beq		x4, x5, beq.96623	# 1420
	addi	x4, x0, 1	# 1421
	jal		x0, beq_cont.96622	# 1420
beq.96623:
	addi	x4, x0, 2	# 1423
	addi	x5, x0, 4	# 1414
	mul		x4, x4, x5	# 1414
	lw		x5, -12(x2)	# 1414
	add		x4, x5, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lw		x6, -8(x2)	# 1415
	beq		x4, x6, beq.96625	# 1415
	addi	x7, x26, 332	# 1418
	addi	x8, x0, 4	# 1418
	mul		x4, x4, x8	# 1418
	add		x4, x7, x4	# 1418
	lw		x4, 0(x4)	# 1418
	lw		x7, -32(x2)	# 1419
	lw		x27, -4(x2)	# 1419
	addi	x5, x4, 0
	addi	x4, x7, 0
	sw		x1, -36(x2)	# 1419
	addi	x2, x2, -40	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 40	# 1419
	lw		x1, -36(x2)	# 1419
	lw		x5, -32(x2)	# 1420
	beq		x4, x5, beq.96627	# 1420
	addi	x4, x0, 1	# 1421
	jal		x0, beq_cont.96626	# 1420
beq.96627:
	addi	x4, x0, 3	# 1423
	addi	x6, x0, 4	# 1414
	mul		x4, x4, x6	# 1414
	lw		x6, -12(x2)	# 1414
	add		x4, x6, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lw		x7, -8(x2)	# 1415
	beq		x4, x7, beq.96629	# 1415
	addi	x7, x26, 332	# 1418
	addi	x8, x0, 4	# 1418
	mul		x4, x4, x8	# 1418
	add		x4, x7, x4	# 1418
	lw		x4, 0(x4)	# 1418
	lw		x27, -4(x2)	# 1419
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -36(x2)	# 1419
	addi	x2, x2, -40	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 40	# 1419
	lw		x1, -36(x2)	# 1419
	lw		x5, -32(x2)	# 1420
	beq		x4, x5, beq.96631	# 1420
	addi	x4, x0, 1	# 1421
	jal		x0, beq_cont.96630	# 1420
beq.96631:
	addi	x4, x0, 4	# 1423
	lw		x6, -12(x2)	# 1423
	lw		x27, 0(x2)	# 1423
	addi	x5, x6, 0
	sw		x1, -36(x2)	# 1423
	addi	x2, x2, -40	# 1423
	lw		x31, 0(x27)	# 1423
	jalr	x1, x31, 0	# 1423
	addi	x2, x2, 40	# 1423
	lw		x1, -36(x2)	# 1423
beq_cont.96630:
	jal		x0, beq_cont.96628	# 1415
beq.96629:
	addi	x4, x0, 0	# 1416
beq_cont.96628:
beq_cont.96626:
	jal		x0, beq_cont.96624	# 1415
beq.96625:
	addi	x4, x0, 0	# 1416
beq_cont.96624:
beq_cont.96622:
	jal		x0, beq_cont.96620	# 1415
beq.96621:
	addi	x4, x0, 0	# 1416
beq_cont.96620:
	lw		x5, -32(x2)	# 1449
	beq		x4, x5, beq.96632	# 1449
	addi	x4, x0, 1	# 1450
	jalr	x0, x1, 0	# 1450
beq.96632:
	lw		x4, -24(x2)	# 1452
	lw		x5, -28(x2)	# 1452
	add		x4, x5, x4	# 1452
	lw		x5, -16(x2)	# 1452
	lw		x27, -20(x2)	# 1452
	lw		x31, 0(x27)	# 1452
	jalr	x0, x31, 0	# 1452
beq.96619:
	lw		x4, -24(x2)	# 1454
	lw		x5, -28(x2)	# 1454
	add		x4, x5, x4	# 1454
	lw		x5, -16(x2)	# 1454
	lw		x27, -20(x2)	# 1454
	lw		x31, 0(x27)	# 1454
	jalr	x0, x31, 0	# 1454
beq.96598:
	addi	x4, x0, 0	# 1432
	jalr	x0, x1, 0	# 1432
solve_each_element.2822.13304:
	lw		x7, 40(x27)	# 1465
	lw		x8, 36(x27)	# 1465
	lw		x9, 32(x27)	# 1465
	lw		x10, 28(x27)	# 1465
	lw		x11, 24(x27)	# 1465
	lw		x12, 20(x27)	# 1465
	lw		x13, 16(x27)	# 1465
	lw		x14, 12(x27)	# 1465
	lw		x15, 8(x27)	# 1465
	flw		f1, 4(x27)	# 1465
	addi	x16, x0, 4	# 1465
	mul		x16, x4, x16	# 1465
	add		x16, x5, x16	# 1465
	lw		x16, 0(x16)	# 1465
	beq		x16, x13, beq.96633	# 1466
	addi	x13, x26, 48	# 1032
	addi	x17, x0, 4	# 1032
	mul		x17, x16, x17	# 1032
	add		x13, x13, x17	# 1032
	lw		x13, 0(x13)	# 1032
	addi	x17, x26, 636	# 1034
	addi	x18, x0, 4	# 1034
	mul		x18, x14, x18	# 1034
	add		x17, x17, x18	# 1034
	flw		f2, 0(x17)	# 1034
	lw		x17, 20(x13)	# 431
	addi	x18, x0, 4	# 436
	mul		x18, x14, x18	# 436
	add		x17, x17, x18	# 436
	flw		f3, 0(x17)	# 436
	fsub	f2, f2, f3	# 1034
	addi	x17, x26, 636	# 1035
	addi	x18, x0, 4	# 1035
	mul		x18, x15, x18	# 1035
	add		x17, x17, x18	# 1035
	flw		f3, 0(x17)	# 1035
	lw		x17, 20(x13)	# 441
	addi	x18, x0, 4	# 446
	mul		x18, x15, x18	# 446
	add		x17, x17, x18	# 446
	flw		f4, 0(x17)	# 446
	fsub	f3, f3, f4	# 1035
	addi	x17, x26, 636	# 1036
	addi	x18, x0, 4	# 1036
	mul		x18, x12, x18	# 1036
	add		x17, x17, x18	# 1036
	flw		f4, 0(x17)	# 1036
	lw		x17, 20(x13)	# 451
	addi	x18, x0, 4	# 456
	mul		x18, x12, x18	# 456
	add		x17, x17, x18	# 456
	flw		f5, 0(x17)	# 456
	fsub	f4, f4, f5	# 1036
	lw		x17, 4(x13)	# 353
	sw		x11, 0(x2)	# 1039
	sw		x10, -4(x2)	# 1039
	fsw		f1, -8(x2)	# 1039
	sw		x6, -12(x2)	# 1039
	sw		x5, -16(x2)	# 1039
	sw		x27, -20(x2)	# 1039
	sw		x15, -24(x2)	# 1039
	sw		x4, -28(x2)	# 1039
	sw		x16, -32(x2)	# 1039
	sw		x14, -36(x2)	# 1039
	beq		x17, x15, beq.96635	# 1039
	addi	x9, x0, 2	# 1040
	beq		x17, x9, beq.96637	# 1040
	addi	x5, x6, 0
	addi	x4, x13, 0
	addi	x27, x8, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -40(x2)	# 1041
	addi	x2, x2, -44	# 1041
	lw		x31, 0(x27)	# 1041
	jalr	x1, x31, 0	# 1041
	addi	x2, x2, 44	# 1041
	lw		x1, -40(x2)	# 1041
	jal		x0, beq_cont.96636	# 1040
beq.96637:
	addi	x5, x6, 0
	addi	x4, x13, 0
	addi	x27, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -40(x2)	# 1040
	addi	x2, x2, -44	# 1040
	lw		x31, 0(x27)	# 1040
	jalr	x1, x31, 0	# 1040
	addi	x2, x2, 44	# 1040
	lw		x1, -40(x2)	# 1040
beq_cont.96636:
	jal		x0, beq_cont.96634	# 1039
beq.96635:
	fsw		f2, -40(x2)	# 943
	fsw		f4, -44(x2)	# 943
	fsw		f3, -48(x2)	# 943
	sw		x12, -52(x2)	# 943
	sw		x13, -56(x2)	# 943
	sw		x9, -60(x2)	# 943
	addi	x8, x12, 0
	addi	x7, x15, 0
	addi	x5, x6, 0
	addi	x4, x13, 0
	addi	x27, x9, 0
	addi	x6, x14, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -64(x2)	# 943
	addi	x2, x2, -68	# 943
	lw		x31, 0(x27)	# 943
	jalr	x1, x31, 0	# 943
	addi	x2, x2, 68	# 943
	lw		x1, -64(x2)	# 943
	lw		x8, -36(x2)	# 943
	beq		x4, x8, beq.96639	# 943
	addi	x4, x0, 1	# 943
	jal		x0, beq_cont.96638	# 943
beq.96639:
	flw		f1, -48(x2)	# 944
	flw		f2, -44(x2)	# 944
	flw		f3, -40(x2)	# 944
	lw		x4, -56(x2)	# 944
	lw		x5, -12(x2)	# 944
	lw		x6, -24(x2)	# 944
	lw		x7, -52(x2)	# 944
	lw		x27, -60(x2)	# 944
	sw		x1, -64(x2)	# 944
	addi	x2, x2, -68	# 944
	lw		x31, 0(x27)	# 944
	jalr	x1, x31, 0	# 944
	addi	x2, x2, 68	# 944
	lw		x1, -64(x2)	# 944
	lw		x7, -36(x2)	# 944
	beq		x4, x7, beq.96641	# 944
	addi	x4, x0, 2	# 944
	jal		x0, beq_cont.96640	# 944
beq.96641:
	flw		f1, -44(x2)	# 945
	flw		f2, -40(x2)	# 945
	flw		f3, -48(x2)	# 945
	lw		x4, -56(x2)	# 945
	lw		x5, -12(x2)	# 945
	lw		x6, -52(x2)	# 945
	lw		x8, -24(x2)	# 945
	lw		x27, -60(x2)	# 945
	sw		x1, -64(x2)	# 945
	addi	x2, x2, -68	# 945
	lw		x31, 0(x27)	# 945
	jalr	x1, x31, 0	# 945
	addi	x2, x2, 68	# 945
	lw		x1, -64(x2)	# 945
	lw		x5, -36(x2)	# 945
	beq		x4, x5, beq.96643	# 945
	addi	x4, x0, 3	# 945
	jal		x0, beq_cont.96642	# 945
beq.96643:
	addi	x4, x0, 0	# 946
beq_cont.96642:
beq_cont.96640:
beq_cont.96638:
beq_cont.96634:
	lw		x5, -36(x2)	# 1469
	beq		x4, x5, beq.96644	# 1469
	addi	x6, x26, 540	# 1473
	addi	x7, x0, 4	# 1473
	mul		x5, x5, x7	# 1473
	add		x5, x6, x5	# 1473
	flw		f1, 0(x5)	# 1473
	flw		f2, -8(x2)	# 6
	fle		x31, f1, f2	# 6
	beq		x31, x0, fle_else.96646	# 6
	jal		x0, fle_cont.96645	# 6
fle_else.96646:
	addi	x5, x0, 0	# 1476
	addi	x6, x26, 548	# 1476
	addi	x7, x0, 4	# 1476
	mul		x5, x5, x7	# 1476
	add		x5, x6, x5	# 1476
	flw		f2, 0(x5)	# 1476
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.96648	# 6
	jal		x0, fle_cont.96647	# 6
fle_else.96648:
	fadd	f2, f0, f27	# 1478
	fadd	f1, f1, f2	# 1478
	addi	x5, x0, 0	# 1479
	addi	x6, x0, 4	# 1479
	mul		x5, x5, x6	# 1479
	lw		x6, -12(x2)	# 1479
	add		x5, x6, x5	# 1479
	flw		f2, 0(x5)	# 1479
	fmul	f2, f2, f1	# 1479
	addi	x5, x0, 0	# 1479
	addi	x7, x26, 636	# 1479
	addi	x8, x0, 4	# 1479
	mul		x5, x5, x8	# 1479
	add		x5, x7, x5	# 1479
	flw		f3, 0(x5)	# 1479
	fadd	f2, f2, f3	# 1479
	addi	x5, x0, 1	# 1480
	addi	x7, x0, 4	# 1480
	mul		x5, x5, x7	# 1480
	add		x5, x6, x5	# 1480
	flw		f3, 0(x5)	# 1480
	fmul	f3, f3, f1	# 1480
	addi	x5, x0, 1	# 1480
	addi	x7, x26, 636	# 1480
	addi	x8, x0, 4	# 1480
	mul		x5, x5, x8	# 1480
	add		x5, x7, x5	# 1480
	flw		f4, 0(x5)	# 1480
	fadd	f3, f3, f4	# 1480
	addi	x5, x0, 2	# 1481
	addi	x7, x0, 4	# 1481
	mul		x5, x5, x7	# 1481
	add		x5, x6, x5	# 1481
	flw		f4, 0(x5)	# 1481
	fmul	f4, f4, f1	# 1481
	addi	x5, x0, 2	# 1481
	addi	x7, x26, 636	# 1481
	addi	x8, x0, 4	# 1481
	mul		x5, x5, x8	# 1481
	add		x5, x7, x5	# 1481
	flw		f5, 0(x5)	# 1481
	fadd	f4, f4, f5	# 1481
	addi	x5, x0, 0	# 1482
	addi	x7, x0, 4	# 1364
	mul		x5, x5, x7	# 1364
	lw		x7, -16(x2)	# 1364
	add		x5, x7, x5	# 1364
	lw		x5, 0(x5)	# 1364
	addi	x8, x0, -1	# 1365
	sw		x4, -64(x2)	# 1365
	fsw		f4, -68(x2)	# 1365
	fsw		f3, -72(x2)	# 1365
	fsw		f2, -76(x2)	# 1365
	fsw		f1, -80(x2)	# 1365
	beq		x5, x8, beq.96650	# 1365
	addi	x8, x26, 48	# 1368
	addi	x9, x0, 4	# 1368
	mul		x5, x5, x9	# 1368
	add		x5, x8, x5	# 1368
	lw		x5, 0(x5)	# 1368
	lw		x27, -4(x2)	# 1368
	addi	x4, x5, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -84(x2)	# 1368
	addi	x2, x2, -88	# 1368
	lw		x31, 0(x27)	# 1368
	jalr	x1, x31, 0	# 1368
	addi	x2, x2, 88	# 1368
	lw		x1, -84(x2)	# 1368
	addi	x5, x0, 0	# 1368
	beq		x4, x5, beq.96652	# 1368
	addi	x4, x0, 0	# 1369
	jal		x0, beq_cont.96651	# 1368
beq.96652:
	addi	x4, x0, 1	# 1371
	flw		f1, -76(x2)	# 1371
	flw		f2, -72(x2)	# 1371
	flw		f3, -68(x2)	# 1371
	lw		x5, -16(x2)	# 1371
	lw		x27, 0(x2)	# 1371
	sw		x1, -84(x2)	# 1371
	addi	x2, x2, -88	# 1371
	lw		x31, 0(x27)	# 1371
	jalr	x1, x31, 0	# 1371
	addi	x2, x2, 88	# 1371
	lw		x1, -84(x2)	# 1371
beq_cont.96651:
	jal		x0, beq_cont.96649	# 1365
beq.96650:
	addi	x4, x0, 1	# 1366
beq_cont.96649:
	addi	x5, x0, 0	# 1482
	beq		x4, x5, beq_cont.96653	# 1482
	addi	x4, x0, 0	# 1484
	addi	x5, x26, 548	# 1484
	addi	x6, x0, 4	# 1484
	mul		x4, x4, x6	# 1484
	add		x4, x5, x4	# 1484
	flw		f1, -80(x2)	# 1484
	fsw		f1, 0(x4)	# 1484
	addi	x4, x0, 0	# 240
	addi	x5, x26, 552	# 240
	addi	x6, x0, 4	# 240
	mul		x4, x4, x6	# 240
	add		x4, x5, x4	# 240
	flw		f1, -76(x2)	# 240
	fsw		f1, 0(x4)	# 240
	addi	x4, x0, 1	# 241
	addi	x5, x26, 552	# 241
	addi	x6, x0, 4	# 241
	mul		x4, x4, x6	# 241
	add		x4, x5, x4	# 241
	flw		f1, -72(x2)	# 241
	fsw		f1, 0(x4)	# 241
	addi	x4, x0, 2	# 242
	addi	x5, x26, 552	# 242
	addi	x6, x0, 4	# 242
	mul		x4, x4, x6	# 242
	add		x4, x5, x4	# 242
	flw		f1, -68(x2)	# 242
	fsw		f1, 0(x4)	# 242
	addi	x4, x0, 0	# 1486
	addi	x5, x26, 564	# 1486
	addi	x6, x0, 4	# 1486
	mul		x4, x4, x6	# 1486
	add		x4, x5, x4	# 1486
	lw		x5, -32(x2)	# 1486
	sw		x5, 0(x4)	# 1486
	addi	x4, x0, 0	# 1487
	addi	x5, x26, 544	# 1487
	addi	x6, x0, 4	# 1487
	mul		x4, x4, x6	# 1487
	add		x4, x5, x4	# 1487
	lw		x5, -64(x2)	# 1487
	sw		x5, 0(x4)	# 1487
beq_cont.96653:
fle_cont.96647:
fle_cont.96645:
	lw		x4, -24(x2)	# 1493
	lw		x5, -28(x2)	# 1493
	add		x4, x5, x4	# 1493
	lw		x5, -16(x2)	# 1493
	lw		x6, -12(x2)	# 1493
	lw		x27, -20(x2)	# 1493
	lw		x31, 0(x27)	# 1493
	jalr	x0, x31, 0	# 1493
beq.96644:
	addi	x4, x26, 48	# 1497
	addi	x6, x0, 4	# 1497
	lw		x7, -32(x2)	# 1497
	mul		x6, x7, x6	# 1497
	add		x4, x4, x6	# 1497
	lw		x4, 0(x4)	# 1497
	lw		x4, 24(x4)	# 373
	beq		x4, x5, beq.96654	# 1497
	lw		x4, -24(x2)	# 1498
	lw		x5, -28(x2)	# 1498
	add		x4, x5, x4	# 1498
	lw		x5, -16(x2)	# 1498
	lw		x6, -12(x2)	# 1498
	lw		x27, -20(x2)	# 1498
	lw		x31, 0(x27)	# 1498
	jalr	x0, x31, 0	# 1498
beq.96654:
	jalr	x0, x1, 0	# 1499
beq.96633:
	jalr	x0, x1, 0	# 1466
solve_one_or_network.2826.13308:
	lw		x7, 16(x27)	# 1506
	lw		x8, 12(x27)	# 1506
	lw		x9, 8(x27)	# 1506
	lw		x10, 4(x27)	# 1506
	addi	x11, x0, 4	# 1506
	mul		x11, x4, x11	# 1506
	add		x11, x5, x11	# 1506
	lw		x11, 0(x11)	# 1506
	beq		x11, x8, beq.96657	# 1507
	addi	x12, x26, 332	# 1508
	addi	x13, x0, 4	# 1508
	mul		x11, x11, x13	# 1508
	add		x11, x12, x11	# 1508
	lw		x11, 0(x11)	# 1508
	sw		x27, 0(x2)	# 1509
	sw		x6, -4(x2)	# 1509
	sw		x9, -8(x2)	# 1509
	sw		x7, -12(x2)	# 1509
	sw		x8, -16(x2)	# 1509
	sw		x5, -20(x2)	# 1509
	sw		x10, -24(x2)	# 1509
	sw		x4, -28(x2)	# 1509
	addi	x5, x11, 0
	addi	x4, x9, 0
	addi	x27, x7, 0
	sw		x1, -32(x2)	# 1509
	addi	x2, x2, -36	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 36	# 1509
	lw		x1, -32(x2)	# 1509
	lw		x4, -24(x2)	# 1510
	lw		x5, -28(x2)	# 1510
	add		x5, x5, x4	# 1510
	addi	x6, x0, 4	# 1506
	mul		x6, x5, x6	# 1506
	lw		x7, -20(x2)	# 1506
	add		x6, x7, x6	# 1506
	lw		x6, 0(x6)	# 1506
	lw		x8, -16(x2)	# 1507
	beq		x6, x8, beq.96658	# 1507
	addi	x9, x26, 332	# 1508
	addi	x10, x0, 4	# 1508
	mul		x6, x6, x10	# 1508
	add		x6, x9, x6	# 1508
	lw		x6, 0(x6)	# 1508
	lw		x9, -8(x2)	# 1509
	lw		x10, -4(x2)	# 1509
	lw		x27, -12(x2)	# 1509
	sw		x5, -32(x2)	# 1509
	addi	x5, x6, 0
	addi	x4, x9, 0
	addi	x6, x10, 0
	sw		x1, -36(x2)	# 1509
	addi	x2, x2, -40	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 40	# 1509
	lw		x1, -36(x2)	# 1509
	lw		x4, -24(x2)	# 1510
	lw		x5, -32(x2)	# 1510
	add		x5, x5, x4	# 1510
	addi	x6, x0, 4	# 1506
	mul		x6, x5, x6	# 1506
	lw		x7, -20(x2)	# 1506
	add		x6, x7, x6	# 1506
	lw		x6, 0(x6)	# 1506
	lw		x8, -16(x2)	# 1507
	beq		x6, x8, beq.96659	# 1507
	addi	x9, x26, 332	# 1508
	addi	x10, x0, 4	# 1508
	mul		x6, x6, x10	# 1508
	add		x6, x9, x6	# 1508
	lw		x6, 0(x6)	# 1508
	lw		x9, -8(x2)	# 1509
	lw		x10, -4(x2)	# 1509
	lw		x27, -12(x2)	# 1509
	sw		x5, -36(x2)	# 1509
	addi	x5, x6, 0
	addi	x4, x9, 0
	addi	x6, x10, 0
	sw		x1, -40(x2)	# 1509
	addi	x2, x2, -44	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 44	# 1509
	lw		x1, -40(x2)	# 1509
	lw		x4, -24(x2)	# 1510
	lw		x5, -36(x2)	# 1510
	add		x5, x5, x4	# 1510
	addi	x6, x0, 4	# 1506
	mul		x6, x5, x6	# 1506
	lw		x7, -20(x2)	# 1506
	add		x6, x7, x6	# 1506
	lw		x6, 0(x6)	# 1506
	lw		x8, -16(x2)	# 1507
	beq		x6, x8, beq.96660	# 1507
	addi	x8, x26, 332	# 1508
	addi	x9, x0, 4	# 1508
	mul		x6, x6, x9	# 1508
	add		x6, x8, x6	# 1508
	lw		x6, 0(x6)	# 1508
	lw		x8, -8(x2)	# 1509
	lw		x9, -4(x2)	# 1509
	lw		x27, -12(x2)	# 1509
	sw		x5, -40(x2)	# 1509
	addi	x5, x6, 0
	addi	x4, x8, 0
	addi	x6, x9, 0
	sw		x1, -44(x2)	# 1509
	addi	x2, x2, -48	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 48	# 1509
	lw		x1, -44(x2)	# 1509
	lw		x4, -24(x2)	# 1510
	lw		x5, -40(x2)	# 1510
	add		x4, x5, x4	# 1510
	lw		x5, -20(x2)	# 1510
	lw		x6, -4(x2)	# 1510
	lw		x27, 0(x2)	# 1510
	lw		x31, 0(x27)	# 1510
	jalr	x0, x31, 0	# 1510
beq.96660:
	jalr	x0, x1, 0	# 1511
beq.96659:
	jalr	x0, x1, 0	# 1511
beq.96658:
	jalr	x0, x1, 0	# 1511
beq.96657:
	jalr	x0, x1, 0	# 1511
trace_or_matrix.2830.13312:
	lw		x7, 36(x27)	# 1516
	lw		x8, 32(x27)	# 1516
	lw		x9, 28(x27)	# 1516
	lw		x10, 24(x27)	# 1516
	lw		x11, 20(x27)	# 1516
	lw		x12, 16(x27)	# 1516
	lw		x13, 12(x27)	# 1516
	lw		x14, 8(x27)	# 1516
	lw		x15, 4(x27)	# 1516
	addi	x16, x0, 4	# 1516
	mul		x16, x4, x16	# 1516
	add		x16, x5, x16	# 1516
	lw		x16, 0(x16)	# 1516
	addi	x17, x0, 4	# 1517
	mul		x17, x14, x17	# 1517
	add		x17, x16, x17	# 1517
	lw		x17, 0(x17)	# 1517
	beq		x17, x13, beq.96665	# 1518
	addi	x18, x0, 99	# 1521
	sw		x6, 0(x2)	# 1521
	sw		x5, -4(x2)	# 1521
	sw		x27, -8(x2)	# 1521
	sw		x15, -12(x2)	# 1521
	sw		x4, -16(x2)	# 1521
	beq		x17, x18, beq.96667	# 1521
	addi	x18, x26, 48	# 1032
	addi	x19, x0, 4	# 1032
	mul		x17, x17, x19	# 1032
	add		x17, x18, x17	# 1032
	lw		x17, 0(x17)	# 1032
	addi	x18, x0, 0	# 1034
	addi	x19, x26, 636	# 1034
	addi	x20, x0, 4	# 1034
	mul		x18, x18, x20	# 1034
	add		x18, x19, x18	# 1034
	flw		f1, 0(x18)	# 1034
	lw		x18, 20(x17)	# 431
	addi	x19, x0, 4	# 436
	mul		x19, x14, x19	# 436
	add		x18, x18, x19	# 436
	flw		f2, 0(x18)	# 436
	fsub	f1, f1, f2	# 1034
	addi	x18, x0, 1	# 1035
	addi	x19, x26, 636	# 1035
	addi	x20, x0, 4	# 1035
	mul		x18, x18, x20	# 1035
	add		x18, x19, x18	# 1035
	flw		f2, 0(x18)	# 1035
	lw		x18, 20(x17)	# 441
	addi	x19, x0, 4	# 446
	mul		x19, x15, x19	# 446
	add		x18, x18, x19	# 446
	flw		f3, 0(x18)	# 446
	fsub	f2, f2, f3	# 1035
	addi	x18, x0, 2	# 1036
	addi	x19, x26, 636	# 1036
	addi	x20, x0, 4	# 1036
	mul		x18, x18, x20	# 1036
	add		x18, x19, x18	# 1036
	flw		f3, 0(x18)	# 1036
	lw		x18, 20(x17)	# 451
	addi	x19, x0, 4	# 456
	mul		x19, x12, x19	# 456
	add		x18, x18, x19	# 456
	flw		f4, 0(x18)	# 456
	fsub	f3, f3, f4	# 1036
	lw		x18, 4(x17)	# 353
	addi	x19, x0, 1	# 1039
	sw		x10, -20(x2)	# 1039
	sw		x14, -24(x2)	# 1039
	sw		x13, -28(x2)	# 1039
	sw		x11, -32(x2)	# 1039
	sw		x16, -36(x2)	# 1039
	beq		x18, x19, beq.96669	# 1039
	addi	x9, x0, 2	# 1040
	beq		x18, x9, beq.96671	# 1040
	addi	x5, x6, 0
	addi	x4, x17, 0
	addi	x27, x8, 0
	sw		x1, -40(x2)	# 1041
	addi	x2, x2, -44	# 1041
	lw		x31, 0(x27)	# 1041
	jalr	x1, x31, 0	# 1041
	addi	x2, x2, 44	# 1041
	lw		x1, -40(x2)	# 1041
	jal		x0, beq_cont.96670	# 1040
beq.96671:
	addi	x5, x6, 0
	addi	x4, x17, 0
	addi	x27, x7, 0
	sw		x1, -40(x2)	# 1040
	addi	x2, x2, -44	# 1040
	lw		x31, 0(x27)	# 1040
	jalr	x1, x31, 0	# 1040
	addi	x2, x2, 44	# 1040
	lw		x1, -40(x2)	# 1040
beq_cont.96670:
	jal		x0, beq_cont.96668	# 1039
beq.96669:
	fsw		f1, -40(x2)	# 943
	fsw		f3, -44(x2)	# 943
	fsw		f2, -48(x2)	# 943
	sw		x12, -52(x2)	# 943
	sw		x17, -56(x2)	# 943
	sw		x9, -60(x2)	# 943
	addi	x8, x12, 0
	addi	x7, x15, 0
	addi	x5, x6, 0
	addi	x4, x17, 0
	addi	x27, x9, 0
	addi	x6, x14, 0
	sw		x1, -64(x2)	# 943
	addi	x2, x2, -68	# 943
	lw		x31, 0(x27)	# 943
	jalr	x1, x31, 0	# 943
	addi	x2, x2, 68	# 943
	lw		x1, -64(x2)	# 943
	lw		x8, -24(x2)	# 943
	beq		x4, x8, beq.96673	# 943
	addi	x4, x0, 1	# 943
	jal		x0, beq_cont.96672	# 943
beq.96673:
	flw		f1, -48(x2)	# 944
	flw		f2, -44(x2)	# 944
	flw		f3, -40(x2)	# 944
	lw		x4, -56(x2)	# 944
	lw		x5, 0(x2)	# 944
	lw		x6, -12(x2)	# 944
	lw		x7, -52(x2)	# 944
	lw		x27, -60(x2)	# 944
	sw		x1, -64(x2)	# 944
	addi	x2, x2, -68	# 944
	lw		x31, 0(x27)	# 944
	jalr	x1, x31, 0	# 944
	addi	x2, x2, 68	# 944
	lw		x1, -64(x2)	# 944
	lw		x7, -24(x2)	# 944
	beq		x4, x7, beq.96675	# 944
	addi	x4, x0, 2	# 944
	jal		x0, beq_cont.96674	# 944
beq.96675:
	flw		f1, -44(x2)	# 945
	flw		f2, -40(x2)	# 945
	flw		f3, -48(x2)	# 945
	lw		x4, -56(x2)	# 945
	lw		x5, 0(x2)	# 945
	lw		x6, -52(x2)	# 945
	lw		x8, -12(x2)	# 945
	lw		x27, -60(x2)	# 945
	sw		x1, -64(x2)	# 945
	addi	x2, x2, -68	# 945
	lw		x31, 0(x27)	# 945
	jalr	x1, x31, 0	# 945
	addi	x2, x2, 68	# 945
	lw		x1, -64(x2)	# 945
	lw		x5, -24(x2)	# 945
	beq		x4, x5, beq.96677	# 945
	addi	x4, x0, 3	# 945
	jal		x0, beq_cont.96676	# 945
beq.96677:
	addi	x4, x0, 0	# 946
beq_cont.96676:
beq_cont.96674:
beq_cont.96672:
beq_cont.96668:
	addi	x5, x0, 0	# 1527
	beq		x4, x5, beq_cont.96678	# 1527
	addi	x4, x0, 0	# 1528
	addi	x5, x26, 540	# 1528
	addi	x6, x0, 4	# 1528
	mul		x4, x4, x6	# 1528
	add		x4, x5, x4	# 1528
	flw		f1, 0(x4)	# 1528
	addi	x4, x0, 0	# 1529
	addi	x5, x26, 548	# 1529
	addi	x6, x0, 4	# 1529
	mul		x4, x4, x6	# 1529
	add		x4, x5, x4	# 1529
	flw		f2, 0(x4)	# 1529
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.96680	# 6
	jal		x0, fle_cont.96679	# 6
fle_else.96680:
	addi	x4, x0, 1	# 1530
	addi	x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -36(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	addi	x6, x0, -1	# 1507
	beq		x4, x6, beq_cont.96681	# 1507
	addi	x6, x26, 332	# 1508
	addi	x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	add		x4, x6, x4	# 1508
	lw		x4, 0(x4)	# 1508
	addi	x6, x0, 0	# 1509
	lw		x7, 0(x2)	# 1509
	lw		x27, -32(x2)	# 1509
	addi	x5, x4, 0
	addi	x4, x6, 0
	addi	x6, x7, 0
	sw		x1, -64(x2)	# 1509
	addi	x2, x2, -68	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 68	# 1509
	lw		x1, -64(x2)	# 1509
	addi	x4, x0, 2	# 1510
	addi	x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -36(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -28(x2)	# 1507
	beq		x4, x6, beq_cont.96682	# 1507
	addi	x7, x26, 332	# 1508
	addi	x8, x0, 4	# 1508
	mul		x4, x4, x8	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x7, -24(x2)	# 1509
	lw		x8, 0(x2)	# 1509
	lw		x27, -32(x2)	# 1509
	addi	x6, x8, 0
	addi	x5, x4, 0
	addi	x4, x7, 0
	sw		x1, -64(x2)	# 1509
	addi	x2, x2, -68	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 68	# 1509
	lw		x1, -64(x2)	# 1509
	addi	x4, x0, 3	# 1510
	addi	x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -36(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -28(x2)	# 1507
	beq		x4, x6, beq_cont.96683	# 1507
	addi	x6, x26, 332	# 1508
	addi	x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	add		x4, x6, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x6, -24(x2)	# 1509
	lw		x7, 0(x2)	# 1509
	lw		x27, -32(x2)	# 1509
	addi	x5, x4, 0
	addi	x4, x6, 0
	addi	x6, x7, 0
	sw		x1, -64(x2)	# 1509
	addi	x2, x2, -68	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 68	# 1509
	lw		x1, -64(x2)	# 1509
	addi	x4, x0, 4	# 1510
	lw		x5, -36(x2)	# 1510
	lw		x6, 0(x2)	# 1510
	lw		x27, -20(x2)	# 1510
	sw		x1, -64(x2)	# 1510
	addi	x2, x2, -68	# 1510
	lw		x31, 0(x27)	# 1510
	jalr	x1, x31, 0	# 1510
	addi	x2, x2, 68	# 1510
	lw		x1, -64(x2)	# 1510
beq_cont.96683:
beq_cont.96682:
beq_cont.96681:
fle_cont.96679:
beq_cont.96678:
	jal		x0, beq_cont.96666	# 1521
beq.96667:
	addi	x7, x0, 1	# 1522
	addi	x8, x0, 4	# 1506
	mul		x7, x7, x8	# 1506
	add		x7, x16, x7	# 1506
	lw		x7, 0(x7)	# 1506
	addi	x8, x0, -1	# 1507
	beq		x7, x8, beq_cont.96684	# 1507
	addi	x8, x26, 332	# 1508
	addi	x9, x0, 4	# 1508
	mul		x7, x7, x9	# 1508
	add		x7, x8, x7	# 1508
	lw		x7, 0(x7)	# 1508
	addi	x8, x0, 0	# 1509
	sw		x10, -20(x2)	# 1509
	sw		x14, -24(x2)	# 1509
	sw		x11, -32(x2)	# 1509
	sw		x13, -28(x2)	# 1509
	sw		x16, -36(x2)	# 1509
	addi	x5, x7, 0
	addi	x4, x8, 0
	addi	x27, x11, 0
	sw		x1, -64(x2)	# 1509
	addi	x2, x2, -68	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 68	# 1509
	lw		x1, -64(x2)	# 1509
	addi	x4, x0, 2	# 1510
	addi	x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -36(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -28(x2)	# 1507
	beq		x4, x6, beq_cont.96685	# 1507
	addi	x7, x26, 332	# 1508
	addi	x8, x0, 4	# 1508
	mul		x4, x4, x8	# 1508
	add		x4, x7, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x7, -24(x2)	# 1509
	lw		x8, 0(x2)	# 1509
	lw		x27, -32(x2)	# 1509
	addi	x6, x8, 0
	addi	x5, x4, 0
	addi	x4, x7, 0
	sw		x1, -64(x2)	# 1509
	addi	x2, x2, -68	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 68	# 1509
	lw		x1, -64(x2)	# 1509
	addi	x4, x0, 3	# 1510
	addi	x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -36(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lw		x6, -28(x2)	# 1507
	beq		x4, x6, beq_cont.96686	# 1507
	addi	x6, x26, 332	# 1508
	addi	x7, x0, 4	# 1508
	mul		x4, x4, x7	# 1508
	add		x4, x6, x4	# 1508
	lw		x4, 0(x4)	# 1508
	lw		x6, -24(x2)	# 1509
	lw		x7, 0(x2)	# 1509
	lw		x27, -32(x2)	# 1509
	addi	x5, x4, 0
	addi	x4, x6, 0
	addi	x6, x7, 0
	sw		x1, -64(x2)	# 1509
	addi	x2, x2, -68	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 68	# 1509
	lw		x1, -64(x2)	# 1509
	addi	x4, x0, 4	# 1510
	lw		x5, -36(x2)	# 1510
	lw		x6, 0(x2)	# 1510
	lw		x27, -20(x2)	# 1510
	sw		x1, -64(x2)	# 1510
	addi	x2, x2, -68	# 1510
	lw		x31, 0(x27)	# 1510
	jalr	x1, x31, 0	# 1510
	addi	x2, x2, 68	# 1510
	lw		x1, -64(x2)	# 1510
beq_cont.96686:
beq_cont.96685:
beq_cont.96684:
beq_cont.96666:
	lw		x4, -12(x2)	# 1534
	lw		x5, -16(x2)	# 1534
	add		x4, x5, x4	# 1534
	lw		x5, -4(x2)	# 1534
	lw		x6, 0(x2)	# 1534
	lw		x27, -8(x2)	# 1534
	lw		x31, 0(x27)	# 1534
	jalr	x0, x31, 0	# 1534
beq.96665:
	jalr	x0, x1, 0	# 1519
solve_each_element_fast.2836.13316:
	lw		x7, 40(x27)	# 639
	lw		x8, 36(x27)	# 639
	lw		x9, 32(x27)	# 639
	lw		x10, 28(x27)	# 639
	lw		x11, 24(x27)	# 639
	lw		x12, 20(x27)	# 639
	lw		x13, 16(x27)	# 639
	lw		x14, 12(x27)	# 639
	lw		x15, 8(x27)	# 639
	flw		f1, 4(x27)	# 639
	lw		x16, 0(x6)	# 639
	addi	x17, x0, 4	# 1559
	mul		x17, x4, x17	# 1559
	add		x17, x5, x17	# 1559
	lw		x17, 0(x17)	# 1559
	beq		x17, x12, beq.96688	# 1560
	addi	x12, x26, 48	# 1173
	addi	x18, x0, 4	# 1173
	mul		x18, x17, x18	# 1173
	add		x12, x12, x18	# 1173
	lw		x12, 0(x12)	# 1173
	lw		x18, 40(x12)	# 548
	addi	x19, x0, 4	# 1175
	mul		x19, x14, x19	# 1175
	add		x19, x18, x19	# 1175
	flw		f2, 0(x19)	# 1175
	addi	x19, x0, 4	# 1176
	mul		x19, x15, x19	# 1176
	add		x19, x18, x19	# 1176
	flw		f3, 0(x19)	# 1176
	addi	x19, x0, 4	# 1177
	mul		x11, x11, x19	# 1177
	add		x11, x18, x11	# 1177
	flw		f4, 0(x11)	# 1177
	lw		x11, 4(x6)	# 645
	addi	x19, x0, 4	# 1179
	mul		x19, x17, x19	# 1179
	add		x11, x11, x19	# 1179
	lw		x11, 0(x11)	# 1179
	lw		x19, 4(x12)	# 353
	sw		x10, 0(x2)	# 1181
	sw		x9, -4(x2)	# 1181
	sw		x16, -8(x2)	# 1181
	fsw		f1, -12(x2)	# 1181
	sw		x6, -16(x2)	# 1181
	sw		x5, -20(x2)	# 1181
	sw		x27, -24(x2)	# 1181
	sw		x15, -28(x2)	# 1181
	sw		x4, -32(x2)	# 1181
	sw		x17, -36(x2)	# 1181
	sw		x14, -40(x2)	# 1181
	beq		x19, x15, beq.96690	# 1181
	addi	x8, x0, 2	# 1183
	beq		x19, x8, beq.96692	# 1183
	addi	x6, x18, 0
	addi	x5, x11, 0
	addi	x4, x12, 0
	addi	x27, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -44(x2)	# 1186
	addi	x2, x2, -48	# 1186
	lw		x31, 0(x27)	# 1186
	jalr	x1, x31, 0	# 1186
	addi	x2, x2, 48	# 1186
	lw		x1, -44(x2)	# 1186
	jal		x0, beq_cont.96691	# 1183
beq.96692:
	addi	x7, x0, 4	# 1146
	mul		x7, x14, x7	# 1146
	add		x7, x11, x7	# 1146
	flw		f2, 0(x7)	# 1146
	fle		x31, f1, f2	# 3
	beq		x31, x0, fle_else.96694	# 3
	addi	x4, x0, 0	# 1149
	jal		x0, fle_cont.96693	# 3
fle_else.96694:
	addi	x7, x0, 4	# 1147
	mul		x7, x14, x7	# 1147
	add		x7, x11, x7	# 1147
	flw		f2, 0(x7)	# 1147
	addi	x7, x0, 4	# 1147
	mul		x7, x13, x7	# 1147
	add		x7, x18, x7	# 1147
	flw		f3, 0(x7)	# 1147
	fmul	f2, f2, f3	# 1147
	addi	x7, x26, 540	# 1147
	addi	x8, x0, 4	# 1147
	mul		x8, x14, x8	# 1147
	add		x7, x7, x8	# 1147
	fsw		f2, 0(x7)	# 1147
	addi	x4, x0, 1	# 1148
fle_cont.96693:
beq_cont.96691:
	jal		x0, beq_cont.96689	# 1181
beq.96690:
	lw		x7, 0(x6)	# 639
	addi	x6, x11, 0
	addi	x5, x7, 0
	addi	x4, x12, 0
	addi	x27, x8, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -44(x2)	# 1182
	addi	x2, x2, -48	# 1182
	lw		x31, 0(x27)	# 1182
	jalr	x1, x31, 0	# 1182
	addi	x2, x2, 48	# 1182
	lw		x1, -44(x2)	# 1182
beq_cont.96689:
	lw		x5, -40(x2)	# 1563
	beq		x4, x5, beq.96695	# 1563
	addi	x6, x26, 540	# 1567
	addi	x7, x0, 4	# 1567
	mul		x5, x5, x7	# 1567
	add		x5, x6, x5	# 1567
	flw		f1, 0(x5)	# 1567
	flw		f2, -12(x2)	# 6
	fle		x31, f1, f2	# 6
	beq		x31, x0, fle_else.96697	# 6
	jal		x0, fle_cont.96696	# 6
fle_else.96697:
	addi	x5, x0, 0	# 1570
	addi	x6, x26, 548	# 1570
	addi	x7, x0, 4	# 1570
	mul		x5, x5, x7	# 1570
	add		x5, x6, x5	# 1570
	flw		f2, 0(x5)	# 1570
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.96699	# 6
	jal		x0, fle_cont.96698	# 6
fle_else.96699:
	fadd	f2, f0, f27	# 1572
	fadd	f1, f1, f2	# 1572
	addi	x5, x0, 0	# 1573
	addi	x6, x0, 4	# 1573
	mul		x5, x5, x6	# 1573
	lw		x6, -8(x2)	# 1573
	add		x5, x6, x5	# 1573
	flw		f2, 0(x5)	# 1573
	fmul	f2, f2, f1	# 1573
	addi	x5, x0, 0	# 1573
	addi	x7, x26, 648	# 1573
	addi	x8, x0, 4	# 1573
	mul		x5, x5, x8	# 1573
	add		x5, x7, x5	# 1573
	flw		f3, 0(x5)	# 1573
	fadd	f2, f2, f3	# 1573
	addi	x5, x0, 1	# 1574
	addi	x7, x0, 4	# 1574
	mul		x5, x5, x7	# 1574
	add		x5, x6, x5	# 1574
	flw		f3, 0(x5)	# 1574
	fmul	f3, f3, f1	# 1574
	addi	x5, x0, 1	# 1574
	addi	x7, x26, 648	# 1574
	addi	x8, x0, 4	# 1574
	mul		x5, x5, x8	# 1574
	add		x5, x7, x5	# 1574
	flw		f4, 0(x5)	# 1574
	fadd	f3, f3, f4	# 1574
	addi	x5, x0, 2	# 1575
	addi	x7, x0, 4	# 1575
	mul		x5, x5, x7	# 1575
	add		x5, x6, x5	# 1575
	flw		f4, 0(x5)	# 1575
	fmul	f4, f4, f1	# 1575
	addi	x5, x0, 2	# 1575
	addi	x6, x26, 648	# 1575
	addi	x7, x0, 4	# 1575
	mul		x5, x5, x7	# 1575
	add		x5, x6, x5	# 1575
	flw		f5, 0(x5)	# 1575
	fadd	f4, f4, f5	# 1575
	addi	x5, x0, 0	# 1576
	addi	x6, x0, 4	# 1364
	mul		x5, x5, x6	# 1364
	lw		x6, -20(x2)	# 1364
	add		x5, x6, x5	# 1364
	lw		x5, 0(x5)	# 1364
	addi	x7, x0, -1	# 1365
	sw		x4, -44(x2)	# 1365
	fsw		f4, -48(x2)	# 1365
	fsw		f3, -52(x2)	# 1365
	fsw		f2, -56(x2)	# 1365
	fsw		f1, -60(x2)	# 1365
	beq		x5, x7, beq.96701	# 1365
	addi	x7, x26, 48	# 1368
	addi	x8, x0, 4	# 1368
	mul		x5, x5, x8	# 1368
	add		x5, x7, x5	# 1368
	lw		x5, 0(x5)	# 1368
	lw		x27, -4(x2)	# 1368
	addi	x4, x5, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -64(x2)	# 1368
	addi	x2, x2, -68	# 1368
	lw		x31, 0(x27)	# 1368
	jalr	x1, x31, 0	# 1368
	addi	x2, x2, 68	# 1368
	lw		x1, -64(x2)	# 1368
	addi	x5, x0, 0	# 1368
	beq		x4, x5, beq.96703	# 1368
	addi	x4, x0, 0	# 1369
	jal		x0, beq_cont.96702	# 1368
beq.96703:
	addi	x4, x0, 1	# 1371
	flw		f1, -56(x2)	# 1371
	flw		f2, -52(x2)	# 1371
	flw		f3, -48(x2)	# 1371
	lw		x5, -20(x2)	# 1371
	lw		x27, 0(x2)	# 1371
	sw		x1, -64(x2)	# 1371
	addi	x2, x2, -68	# 1371
	lw		x31, 0(x27)	# 1371
	jalr	x1, x31, 0	# 1371
	addi	x2, x2, 68	# 1371
	lw		x1, -64(x2)	# 1371
beq_cont.96702:
	jal		x0, beq_cont.96700	# 1365
beq.96701:
	addi	x4, x0, 1	# 1366
beq_cont.96700:
	addi	x5, x0, 0	# 1576
	beq		x4, x5, beq_cont.96704	# 1576
	addi	x4, x0, 0	# 1578
	addi	x5, x26, 548	# 1578
	addi	x6, x0, 4	# 1578
	mul		x4, x4, x6	# 1578
	add		x4, x5, x4	# 1578
	flw		f1, -60(x2)	# 1578
	fsw		f1, 0(x4)	# 1578
	addi	x4, x0, 0	# 240
	addi	x5, x26, 552	# 240
	addi	x6, x0, 4	# 240
	mul		x4, x4, x6	# 240
	add		x4, x5, x4	# 240
	flw		f1, -56(x2)	# 240
	fsw		f1, 0(x4)	# 240
	addi	x4, x0, 1	# 241
	addi	x5, x26, 552	# 241
	addi	x6, x0, 4	# 241
	mul		x4, x4, x6	# 241
	add		x4, x5, x4	# 241
	flw		f1, -52(x2)	# 241
	fsw		f1, 0(x4)	# 241
	addi	x4, x0, 2	# 242
	addi	x5, x26, 552	# 242
	addi	x6, x0, 4	# 242
	mul		x4, x4, x6	# 242
	add		x4, x5, x4	# 242
	flw		f1, -48(x2)	# 242
	fsw		f1, 0(x4)	# 242
	addi	x4, x0, 0	# 1580
	addi	x5, x26, 564	# 1580
	addi	x6, x0, 4	# 1580
	mul		x4, x4, x6	# 1580
	add		x4, x5, x4	# 1580
	lw		x5, -36(x2)	# 1580
	sw		x5, 0(x4)	# 1580
	addi	x4, x0, 0	# 1581
	addi	x5, x26, 544	# 1581
	addi	x6, x0, 4	# 1581
	mul		x4, x4, x6	# 1581
	add		x4, x5, x4	# 1581
	lw		x5, -44(x2)	# 1581
	sw		x5, 0(x4)	# 1581
beq_cont.96704:
fle_cont.96698:
fle_cont.96696:
	lw		x4, -28(x2)	# 1587
	lw		x5, -32(x2)	# 1587
	add		x4, x5, x4	# 1587
	lw		x5, -20(x2)	# 1587
	lw		x6, -16(x2)	# 1587
	lw		x27, -24(x2)	# 1587
	lw		x31, 0(x27)	# 1587
	jalr	x0, x31, 0	# 1587
beq.96695:
	addi	x4, x26, 48	# 1591
	addi	x6, x0, 4	# 1591
	lw		x7, -36(x2)	# 1591
	mul		x6, x7, x6	# 1591
	add		x4, x4, x6	# 1591
	lw		x4, 0(x4)	# 1591
	lw		x4, 24(x4)	# 373
	beq		x4, x5, beq.96705	# 1591
	lw		x4, -28(x2)	# 1592
	lw		x5, -32(x2)	# 1592
	add		x4, x5, x4	# 1592
	lw		x5, -20(x2)	# 1592
	lw		x6, -16(x2)	# 1592
	lw		x27, -24(x2)	# 1592
	lw		x31, 0(x27)	# 1592
	jalr	x0, x31, 0	# 1592
beq.96705:
	jalr	x0, x1, 0	# 1593
beq.96688:
	jalr	x0, x1, 0	# 1560
solve_one_or_network_fast.2840.13320:
	lw		x7, 16(x27)	# 1599
	lw		x8, 12(x27)	# 1599
	lw		x9, 8(x27)	# 1599
	lw		x10, 4(x27)	# 1599
	addi	x11, x0, 4	# 1599
	mul		x11, x4, x11	# 1599
	add		x11, x5, x11	# 1599
	lw		x11, 0(x11)	# 1599
	beq		x11, x8, beq.96708	# 1600
	addi	x12, x26, 332	# 1601
	addi	x13, x0, 4	# 1601
	mul		x11, x11, x13	# 1601
	add		x11, x12, x11	# 1601
	lw		x11, 0(x11)	# 1601
	sw		x27, 0(x2)	# 1602
	sw		x6, -4(x2)	# 1602
	sw		x9, -8(x2)	# 1602
	sw		x7, -12(x2)	# 1602
	sw		x8, -16(x2)	# 1602
	sw		x5, -20(x2)	# 1602
	sw		x10, -24(x2)	# 1602
	sw		x4, -28(x2)	# 1602
	addi	x5, x11, 0
	addi	x4, x9, 0
	addi	x27, x7, 0
	sw		x1, -32(x2)	# 1602
	addi	x2, x2, -36	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 36	# 1602
	lw		x1, -32(x2)	# 1602
	lw		x4, -24(x2)	# 1603
	lw		x5, -28(x2)	# 1603
	add		x5, x5, x4	# 1603
	addi	x6, x0, 4	# 1599
	mul		x6, x5, x6	# 1599
	lw		x7, -20(x2)	# 1599
	add		x6, x7, x6	# 1599
	lw		x6, 0(x6)	# 1599
	lw		x8, -16(x2)	# 1600
	beq		x6, x8, beq.96709	# 1600
	addi	x9, x26, 332	# 1601
	addi	x10, x0, 4	# 1601
	mul		x6, x6, x10	# 1601
	add		x6, x9, x6	# 1601
	lw		x6, 0(x6)	# 1601
	lw		x9, -8(x2)	# 1602
	lw		x10, -4(x2)	# 1602
	lw		x27, -12(x2)	# 1602
	sw		x5, -32(x2)	# 1602
	addi	x5, x6, 0
	addi	x4, x9, 0
	addi	x6, x10, 0
	sw		x1, -36(x2)	# 1602
	addi	x2, x2, -40	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 40	# 1602
	lw		x1, -36(x2)	# 1602
	lw		x4, -24(x2)	# 1603
	lw		x5, -32(x2)	# 1603
	add		x5, x5, x4	# 1603
	addi	x6, x0, 4	# 1599
	mul		x6, x5, x6	# 1599
	lw		x7, -20(x2)	# 1599
	add		x6, x7, x6	# 1599
	lw		x6, 0(x6)	# 1599
	lw		x8, -16(x2)	# 1600
	beq		x6, x8, beq.96710	# 1600
	addi	x9, x26, 332	# 1601
	addi	x10, x0, 4	# 1601
	mul		x6, x6, x10	# 1601
	add		x6, x9, x6	# 1601
	lw		x6, 0(x6)	# 1601
	lw		x9, -8(x2)	# 1602
	lw		x10, -4(x2)	# 1602
	lw		x27, -12(x2)	# 1602
	sw		x5, -36(x2)	# 1602
	addi	x5, x6, 0
	addi	x4, x9, 0
	addi	x6, x10, 0
	sw		x1, -40(x2)	# 1602
	addi	x2, x2, -44	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 44	# 1602
	lw		x1, -40(x2)	# 1602
	lw		x4, -24(x2)	# 1603
	lw		x5, -36(x2)	# 1603
	add		x5, x5, x4	# 1603
	addi	x6, x0, 4	# 1599
	mul		x6, x5, x6	# 1599
	lw		x7, -20(x2)	# 1599
	add		x6, x7, x6	# 1599
	lw		x6, 0(x6)	# 1599
	lw		x8, -16(x2)	# 1600
	beq		x6, x8, beq.96711	# 1600
	addi	x8, x26, 332	# 1601
	addi	x9, x0, 4	# 1601
	mul		x6, x6, x9	# 1601
	add		x6, x8, x6	# 1601
	lw		x6, 0(x6)	# 1601
	lw		x8, -8(x2)	# 1602
	lw		x9, -4(x2)	# 1602
	lw		x27, -12(x2)	# 1602
	sw		x5, -40(x2)	# 1602
	addi	x5, x6, 0
	addi	x4, x8, 0
	addi	x6, x9, 0
	sw		x1, -44(x2)	# 1602
	addi	x2, x2, -48	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 48	# 1602
	lw		x1, -44(x2)	# 1602
	lw		x4, -24(x2)	# 1603
	lw		x5, -40(x2)	# 1603
	add		x4, x5, x4	# 1603
	lw		x5, -20(x2)	# 1603
	lw		x6, -4(x2)	# 1603
	lw		x27, 0(x2)	# 1603
	lw		x31, 0(x27)	# 1603
	jalr	x0, x31, 0	# 1603
beq.96711:
	jalr	x0, x1, 0	# 1604
beq.96710:
	jalr	x0, x1, 0	# 1604
beq.96709:
	jalr	x0, x1, 0	# 1604
beq.96708:
	jalr	x0, x1, 0	# 1604
trace_or_matrix_fast.2844.13324:
	lw		x7, 36(x27)	# 1609
	lw		x8, 32(x27)	# 1609
	lw		x9, 28(x27)	# 1609
	lw		x10, 24(x27)	# 1609
	lw		x11, 20(x27)	# 1609
	lw		x12, 16(x27)	# 1609
	lw		x13, 12(x27)	# 1609
	lw		x14, 8(x27)	# 1609
	flw		f1, 4(x27)	# 1609
	addi	x15, x0, 4	# 1609
	mul		x15, x4, x15	# 1609
	add		x15, x5, x15	# 1609
	lw		x15, 0(x15)	# 1609
	addi	x16, x0, 4	# 1610
	mul		x16, x13, x16	# 1610
	add		x16, x15, x16	# 1610
	lw		x16, 0(x16)	# 1610
	beq		x16, x11, beq.96716	# 1611
	addi	x17, x0, 99	# 1614
	sw		x6, 0(x2)	# 1614
	sw		x5, -4(x2)	# 1614
	sw		x27, -8(x2)	# 1614
	sw		x14, -12(x2)	# 1614
	sw		x4, -16(x2)	# 1614
	beq		x16, x17, beq.96718	# 1614
	addi	x17, x26, 48	# 1173
	addi	x18, x0, 4	# 1173
	mul		x18, x16, x18	# 1173
	add		x17, x17, x18	# 1173
	lw		x17, 0(x17)	# 1173
	lw		x18, 40(x17)	# 548
	addi	x19, x0, 0	# 1175
	addi	x20, x0, 4	# 1175
	mul		x19, x19, x20	# 1175
	add		x19, x18, x19	# 1175
	flw		f2, 0(x19)	# 1175
	addi	x19, x0, 1	# 1176
	addi	x20, x0, 4	# 1176
	mul		x19, x19, x20	# 1176
	add		x19, x18, x19	# 1176
	flw		f3, 0(x19)	# 1176
	addi	x19, x0, 2	# 1177
	addi	x20, x0, 4	# 1177
	mul		x19, x19, x20	# 1177
	add		x19, x18, x19	# 1177
	flw		f4, 0(x19)	# 1177
	lw		x19, 4(x6)	# 645
	addi	x20, x0, 4	# 1179
	mul		x16, x16, x20	# 1179
	add		x16, x19, x16	# 1179
	lw		x16, 0(x16)	# 1179
	lw		x19, 4(x17)	# 353
	addi	x20, x0, 1	# 1181
	sw		x9, -20(x2)	# 1181
	sw		x13, -24(x2)	# 1181
	sw		x11, -28(x2)	# 1181
	sw		x10, -32(x2)	# 1181
	sw		x15, -36(x2)	# 1181
	beq		x19, x20, beq.96720	# 1181
	addi	x8, x0, 2	# 1183
	beq		x19, x8, beq.96722	# 1183
	addi	x6, x18, 0
	addi	x5, x16, 0
	addi	x4, x17, 0
	addi	x27, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -40(x2)	# 1186
	addi	x2, x2, -44	# 1186
	lw		x31, 0(x27)	# 1186
	jalr	x1, x31, 0	# 1186
	addi	x2, x2, 44	# 1186
	lw		x1, -40(x2)	# 1186
	jal		x0, beq_cont.96721	# 1183
beq.96722:
	addi	x7, x0, 4	# 1146
	mul		x7, x13, x7	# 1146
	add		x7, x16, x7	# 1146
	flw		f2, 0(x7)	# 1146
	fle		x31, f1, f2	# 3
	beq		x31, x0, fle_else.96724	# 3
	addi	x4, x0, 0	# 1149
	jal		x0, fle_cont.96723	# 3
fle_else.96724:
	addi	x7, x0, 4	# 1147
	mul		x7, x13, x7	# 1147
	add		x7, x16, x7	# 1147
	flw		f1, 0(x7)	# 1147
	addi	x7, x0, 4	# 1147
	mul		x7, x12, x7	# 1147
	add		x7, x18, x7	# 1147
	flw		f2, 0(x7)	# 1147
	fmul	f1, f1, f2	# 1147
	addi	x7, x26, 540	# 1147
	addi	x8, x0, 4	# 1147
	mul		x8, x13, x8	# 1147
	add		x7, x7, x8	# 1147
	fsw		f1, 0(x7)	# 1147
	addi	x4, x0, 1	# 1148
fle_cont.96723:
beq_cont.96721:
	jal		x0, beq_cont.96719	# 1181
beq.96720:
	lw		x7, 0(x6)	# 639
	addi	x6, x16, 0
	addi	x5, x7, 0
	addi	x4, x17, 0
	addi	x27, x8, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -40(x2)	# 1182
	addi	x2, x2, -44	# 1182
	lw		x31, 0(x27)	# 1182
	jalr	x1, x31, 0	# 1182
	addi	x2, x2, 44	# 1182
	lw		x1, -40(x2)	# 1182
beq_cont.96719:
	addi	x5, x0, 0	# 1620
	beq		x4, x5, beq_cont.96725	# 1620
	addi	x4, x0, 0	# 1621
	addi	x5, x26, 540	# 1621
	addi	x6, x0, 4	# 1621
	mul		x4, x4, x6	# 1621
	add		x4, x5, x4	# 1621
	flw		f1, 0(x4)	# 1621
	addi	x4, x0, 0	# 1622
	addi	x5, x26, 548	# 1622
	addi	x6, x0, 4	# 1622
	mul		x4, x4, x6	# 1622
	add		x4, x5, x4	# 1622
	flw		f2, 0(x4)	# 1622
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.96727	# 6
	jal		x0, fle_cont.96726	# 6
fle_else.96727:
	addi	x4, x0, 1	# 1623
	addi	x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -36(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	addi	x6, x0, -1	# 1600
	beq		x4, x6, beq_cont.96728	# 1600
	addi	x6, x26, 332	# 1601
	addi	x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	add		x4, x6, x4	# 1601
	lw		x4, 0(x4)	# 1601
	addi	x6, x0, 0	# 1602
	lw		x7, 0(x2)	# 1602
	lw		x27, -32(x2)	# 1602
	addi	x5, x4, 0
	addi	x4, x6, 0
	addi	x6, x7, 0
	sw		x1, -40(x2)	# 1602
	addi	x2, x2, -44	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 44	# 1602
	lw		x1, -40(x2)	# 1602
	addi	x4, x0, 2	# 1603
	addi	x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -36(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -28(x2)	# 1600
	beq		x4, x6, beq_cont.96729	# 1600
	addi	x7, x26, 332	# 1601
	addi	x8, x0, 4	# 1601
	mul		x4, x4, x8	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x7, -24(x2)	# 1602
	lw		x8, 0(x2)	# 1602
	lw		x27, -32(x2)	# 1602
	addi	x6, x8, 0
	addi	x5, x4, 0
	addi	x4, x7, 0
	sw		x1, -40(x2)	# 1602
	addi	x2, x2, -44	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 44	# 1602
	lw		x1, -40(x2)	# 1602
	addi	x4, x0, 3	# 1603
	addi	x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -36(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -28(x2)	# 1600
	beq		x4, x6, beq_cont.96730	# 1600
	addi	x6, x26, 332	# 1601
	addi	x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	add		x4, x6, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x6, -24(x2)	# 1602
	lw		x7, 0(x2)	# 1602
	lw		x27, -32(x2)	# 1602
	addi	x5, x4, 0
	addi	x4, x6, 0
	addi	x6, x7, 0
	sw		x1, -40(x2)	# 1602
	addi	x2, x2, -44	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 44	# 1602
	lw		x1, -40(x2)	# 1602
	addi	x4, x0, 4	# 1603
	lw		x5, -36(x2)	# 1603
	lw		x6, 0(x2)	# 1603
	lw		x27, -20(x2)	# 1603
	sw		x1, -40(x2)	# 1603
	addi	x2, x2, -44	# 1603
	lw		x31, 0(x27)	# 1603
	jalr	x1, x31, 0	# 1603
	addi	x2, x2, 44	# 1603
	lw		x1, -40(x2)	# 1603
beq_cont.96730:
beq_cont.96729:
beq_cont.96728:
fle_cont.96726:
beq_cont.96725:
	jal		x0, beq_cont.96717	# 1614
beq.96718:
	addi	x7, x0, 1	# 1615
	addi	x8, x0, 4	# 1599
	mul		x7, x7, x8	# 1599
	add		x7, x15, x7	# 1599
	lw		x7, 0(x7)	# 1599
	addi	x8, x0, -1	# 1600
	beq		x7, x8, beq_cont.96731	# 1600
	addi	x8, x26, 332	# 1601
	addi	x12, x0, 4	# 1601
	mul		x7, x7, x12	# 1601
	add		x7, x8, x7	# 1601
	lw		x7, 0(x7)	# 1601
	addi	x8, x0, 0	# 1602
	sw		x9, -20(x2)	# 1602
	sw		x13, -24(x2)	# 1602
	sw		x10, -32(x2)	# 1602
	sw		x11, -28(x2)	# 1602
	sw		x15, -36(x2)	# 1602
	addi	x5, x7, 0
	addi	x4, x8, 0
	addi	x27, x10, 0
	sw		x1, -40(x2)	# 1602
	addi	x2, x2, -44	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 44	# 1602
	lw		x1, -40(x2)	# 1602
	addi	x4, x0, 2	# 1603
	addi	x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -36(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -28(x2)	# 1600
	beq		x4, x6, beq_cont.96732	# 1600
	addi	x7, x26, 332	# 1601
	addi	x8, x0, 4	# 1601
	mul		x4, x4, x8	# 1601
	add		x4, x7, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x7, -24(x2)	# 1602
	lw		x8, 0(x2)	# 1602
	lw		x27, -32(x2)	# 1602
	addi	x6, x8, 0
	addi	x5, x4, 0
	addi	x4, x7, 0
	sw		x1, -40(x2)	# 1602
	addi	x2, x2, -44	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 44	# 1602
	lw		x1, -40(x2)	# 1602
	addi	x4, x0, 3	# 1603
	addi	x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -36(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lw		x6, -28(x2)	# 1600
	beq		x4, x6, beq_cont.96733	# 1600
	addi	x6, x26, 332	# 1601
	addi	x7, x0, 4	# 1601
	mul		x4, x4, x7	# 1601
	add		x4, x6, x4	# 1601
	lw		x4, 0(x4)	# 1601
	lw		x6, -24(x2)	# 1602
	lw		x7, 0(x2)	# 1602
	lw		x27, -32(x2)	# 1602
	addi	x5, x4, 0
	addi	x4, x6, 0
	addi	x6, x7, 0
	sw		x1, -40(x2)	# 1602
	addi	x2, x2, -44	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 44	# 1602
	lw		x1, -40(x2)	# 1602
	addi	x4, x0, 4	# 1603
	lw		x5, -36(x2)	# 1603
	lw		x6, 0(x2)	# 1603
	lw		x27, -20(x2)	# 1603
	sw		x1, -40(x2)	# 1603
	addi	x2, x2, -44	# 1603
	lw		x31, 0(x27)	# 1603
	jalr	x1, x31, 0	# 1603
	addi	x2, x2, 44	# 1603
	lw		x1, -40(x2)	# 1603
beq_cont.96733:
beq_cont.96732:
beq_cont.96731:
beq_cont.96717:
	lw		x4, -12(x2)	# 1627
	lw		x5, -16(x2)	# 1627
	add		x4, x5, x4	# 1627
	lw		x5, -4(x2)	# 1627
	lw		x6, 0(x2)	# 1627
	lw		x27, -8(x2)	# 1627
	lw		x31, 0(x27)	# 1627
	jalr	x0, x31, 0	# 1627
beq.96716:
	jalr	x0, x1, 0	# 1612
get_nvector_second.2854.13328:
	lw		x5, 16(x27)	# 1670
	lw		x6, 12(x27)	# 1670
	lw		x7, 8(x27)	# 1670
	lw		x8, 4(x27)	# 1670
	addi	x9, x26, 552	# 1670
	addi	x10, x0, 4	# 1670
	mul		x10, x7, x10	# 1670
	add		x9, x9, x10	# 1670
	flw		f1, 0(x9)	# 1670
	lw		x9, 20(x4)	# 431
	addi	x10, x0, 4	# 436
	mul		x10, x7, x10	# 436
	add		x9, x9, x10	# 436
	flw		f2, 0(x9)	# 436
	fsub	f1, f1, f2	# 1670
	addi	x9, x26, 552	# 1671
	addi	x10, x0, 4	# 1671
	mul		x10, x8, x10	# 1671
	add		x9, x9, x10	# 1671
	flw		f2, 0(x9)	# 1671
	lw		x9, 20(x4)	# 441
	addi	x10, x0, 4	# 446
	mul		x10, x8, x10	# 446
	add		x9, x9, x10	# 446
	flw		f3, 0(x9)	# 446
	fsub	f2, f2, f3	# 1671
	addi	x9, x26, 552	# 1672
	addi	x10, x0, 4	# 1672
	mul		x10, x6, x10	# 1672
	add		x9, x9, x10	# 1672
	flw		f3, 0(x9)	# 1672
	lw		x9, 20(x4)	# 451
	addi	x10, x0, 4	# 456
	mul		x10, x6, x10	# 456
	add		x9, x9, x10	# 456
	flw		f4, 0(x9)	# 456
	fsub	f3, f3, f4	# 1672
	lw		x9, 16(x4)	# 391
	addi	x10, x0, 4	# 396
	mul		x10, x7, x10	# 396
	add		x9, x9, x10	# 396
	flw		f4, 0(x9)	# 396
	fmul	f4, f1, f4	# 1674
	lw		x9, 16(x4)	# 401
	addi	x10, x0, 4	# 406
	mul		x8, x8, x10	# 406
	add		x8, x9, x8	# 406
	flw		f5, 0(x8)	# 406
	fmul	f5, f2, f5	# 1675
	lw		x8, 16(x4)	# 411
	addi	x9, x0, 4	# 416
	mul		x6, x6, x9	# 416
	add		x6, x8, x6	# 416
	flw		f6, 0(x6)	# 416
	fmul	f6, f3, f6	# 1676
	lw		x6, 12(x4)	# 382
	beq		x6, x7, beq.96736	# 1678
	addi	x6, x0, 0	# 1683
	lw		x7, 36(x4)	# 531
	addi	x8, x0, 2	# 536
	addi	x9, x0, 4	# 536
	mul		x8, x8, x9	# 536
	add		x7, x7, x8	# 536
	flw		f7, 0(x7)	# 536
	fmul	f7, f2, f7	# 1683
	lw		x7, 36(x4)	# 521
	addi	x8, x0, 1	# 526
	addi	x9, x0, 4	# 526
	mul		x8, x8, x9	# 526
	add		x7, x7, x8	# 526
	flw		f8, 0(x7)	# 526
	fmul	f8, f3, f8	# 1683
	fadd	f7, f7, f8	# 1683
	fadd	f8, f0, f17	# 7
	fmul	f7, f7, f8	# 7
	fadd	f4, f4, f7	# 1683
	addi	x7, x26, 568	# 1683
	addi	x8, x0, 4	# 1683
	mul		x6, x6, x8	# 1683
	add		x6, x7, x6	# 1683
	fsw		f4, 0(x6)	# 1683
	addi	x6, x0, 1	# 1684
	lw		x7, 36(x4)	# 531
	addi	x8, x0, 2	# 536
	addi	x9, x0, 4	# 536
	mul		x8, x8, x9	# 536
	add		x7, x7, x8	# 536
	flw		f4, 0(x7)	# 536
	fmul	f4, f1, f4	# 1684
	lw		x7, 36(x4)	# 511
	addi	x8, x0, 0	# 516
	addi	x9, x0, 4	# 516
	mul		x8, x8, x9	# 516
	add		x7, x7, x8	# 516
	flw		f7, 0(x7)	# 516
	fmul	f3, f3, f7	# 1684
	fadd	f3, f4, f3	# 1684
	fadd	f4, f0, f17	# 7
	fmul	f3, f3, f4	# 7
	fadd	f3, f5, f3	# 1684
	addi	x7, x26, 568	# 1684
	addi	x8, x0, 4	# 1684
	mul		x6, x6, x8	# 1684
	add		x6, x7, x6	# 1684
	fsw		f3, 0(x6)	# 1684
	addi	x6, x0, 2	# 1685
	lw		x7, 36(x4)	# 521
	addi	x8, x0, 1	# 526
	addi	x9, x0, 4	# 526
	mul		x8, x8, x9	# 526
	add		x7, x7, x8	# 526
	flw		f3, 0(x7)	# 526
	fmul	f1, f1, f3	# 1685
	lw		x7, 36(x4)	# 511
	addi	x8, x0, 0	# 516
	addi	x9, x0, 4	# 516
	mul		x8, x8, x9	# 516
	add		x7, x7, x8	# 516
	flw		f3, 0(x7)	# 516
	fmul	f2, f2, f3	# 1685
	fadd	f1, f1, f2	# 1685
	fadd	f2, f0, f17	# 7
	fmul	f1, f1, f2	# 7
	fadd	f1, f6, f1	# 1685
	addi	x7, x26, 568	# 1685
	addi	x8, x0, 4	# 1685
	mul		x6, x6, x8	# 1685
	add		x6, x7, x6	# 1685
	fsw		f1, 0(x6)	# 1685
	jal		x0, beq_cont.96735	# 1678
beq.96736:
	addi	x6, x0, 0	# 1679
	addi	x7, x26, 568	# 1679
	addi	x8, x0, 4	# 1679
	mul		x6, x6, x8	# 1679
	add		x6, x7, x6	# 1679
	fsw		f4, 0(x6)	# 1679
	addi	x6, x0, 1	# 1680
	addi	x7, x26, 568	# 1680
	addi	x8, x0, 4	# 1680
	mul		x6, x6, x8	# 1680
	add		x6, x7, x6	# 1680
	fsw		f5, 0(x6)	# 1680
	addi	x6, x0, 2	# 1681
	addi	x7, x26, 568	# 1681
	addi	x8, x0, 4	# 1681
	mul		x6, x6, x8	# 1681
	add		x6, x7, x6	# 1681
	fsw		f6, 0(x6)	# 1681
beq_cont.96735:
	lw		x4, 24(x4)	# 373
	addi	x6, x26, 568	# 1687
	addi	x27, x5, 0
	addi	x5, x4, 0
	addi	x4, x6, 0
	lw		x31, 0(x27)	# 1687
	jalr	x0, x31, 0	# 1687
utexture.2859.13330:
	lw		x6, 52(x27)	# 343
	flw		f1, 48(x27)	# 343
	flw		f2, 44(x27)	# 343
	flw		f3, 40(x27)	# 343
	flw		f4, 36(x27)	# 343
	lw		x7, 32(x27)	# 343
	lw		x8, 28(x27)	# 343
	lw		x9, 24(x27)	# 343
	lw		x10, 20(x27)	# 343
	lw		x11, 16(x27)	# 343
	lw		x12, 12(x27)	# 343
	flw		f5, 8(x27)	# 343
	flw		f6, 4(x27)	# 343
	lw		x13, 0(x4)	# 343
	lw		x14, 32(x4)	# 481
	addi	x15, x0, 4	# 486
	mul		x15, x11, x15	# 486
	add		x14, x14, x15	# 486
	flw		f7, 0(x14)	# 486
	addi	x14, x26, 580	# 1710
	addi	x15, x0, 4	# 1710
	mul		x15, x11, x15	# 1710
	add		x14, x14, x15	# 1710
	fsw		f7, 0(x14)	# 1710
	lw		x14, 32(x4)	# 491
	addi	x15, x0, 4	# 496
	mul		x15, x12, x15	# 496
	add		x14, x14, x15	# 496
	flw		f7, 0(x14)	# 496
	addi	x14, x26, 580	# 1711
	addi	x15, x0, 4	# 1711
	mul		x15, x12, x15	# 1711
	add		x14, x14, x15	# 1711
	fsw		f7, 0(x14)	# 1711
	lw		x14, 32(x4)	# 501
	addi	x15, x0, 4	# 506
	mul		x15, x9, x15	# 506
	add		x14, x14, x15	# 506
	flw		f7, 0(x14)	# 506
	addi	x14, x26, 580	# 1712
	addi	x15, x0, 4	# 1712
	mul		x15, x9, x15	# 1712
	add		x14, x14, x15	# 1712
	fsw		f7, 0(x14)	# 1712
	beq		x13, x12, beq.96737	# 1713
	beq		x13, x9, beq.96738	# 1731
	beq		x13, x10, beq.96739	# 1738
	addi	x6, x0, 4	# 1749
	beq		x13, x6, beq.96740	# 1749
	jalr	x0, x1, 0	# 1777
beq.96740:
	addi	x6, x0, 4	# 1751
	mul		x6, x11, x6	# 1751
	add		x6, x5, x6	# 1751
	flw		f1, 0(x6)	# 1751
	lw		x6, 20(x4)	# 431
	addi	x7, x0, 4	# 436
	mul		x7, x11, x7	# 436
	add		x6, x6, x7	# 436
	flw		f2, 0(x6)	# 436
	fsub	f1, f1, f2	# 1751
	lw		x6, 16(x4)	# 391
	addi	x7, x0, 4	# 396
	mul		x7, x11, x7	# 396
	add		x6, x6, x7	# 396
	flw		f2, 0(x6)	# 396
	fsqrt	f2, f2	# 1751
	fmul	f1, f1, f2	# 1751
	addi	x6, x0, 4	# 1752
	mul		x6, x9, x6	# 1752
	add		x6, x5, x6	# 1752
	flw		f2, 0(x6)	# 1752
	lw		x6, 20(x4)	# 451
	addi	x7, x0, 4	# 456
	mul		x7, x9, x7	# 456
	add		x6, x6, x7	# 456
	flw		f3, 0(x6)	# 456
	fsub	f2, f2, f3	# 1752
	lw		x6, 16(x4)	# 411
	addi	x7, x0, 4	# 416
	mul		x7, x9, x7	# 416
	add		x6, x6, x7	# 416
	flw		f3, 0(x6)	# 416
	fsqrt	f3, f3	# 1752
	fmul	f2, f2, f3	# 1752
	fmul	f3, f1, f1	# 8
	fmul	f4, f2, f2	# 8
	fadd	f3, f3, f4	# 1753
	fle		x31, f1, f6	# 5
	beq		x31, x0, fle_else.96743	# 5
	fsub	f4, f0, f1	# 5
	jal		x0, fle_cont.96742	# 5
fle_else.96743:
	fadd	f4, f0, f1	# 5
fle_cont.96742:
	lui		x6, %hi(l.22644)	# 1755
	ori		x6, x0, %lo(l.22644)	# 1755
	flw		f7, 0(x6)	# 1755
	sw		x9, 0(x2)	# 6
	fsw		f5, -4(x2)	# 6
	sw		x8, -8(x2)	# 6
	fsw		f7, -12(x2)	# 6
	fsw		f3, -16(x2)	# 6
	sw		x4, -20(x2)	# 6
	sw		x5, -24(x2)	# 6
	sw		x12, -28(x2)	# 6
	fsw		f6, -32(x2)	# 6
	fle		x31, f7, f4	# 6
	beq		x31, x0, fle_else.96745	# 6
	fdiv	f1, f2, f1	# 1758
	fadd	f2, f0, f0	# 5
	fle		x31, f1, f2	# 5
	beq		x31, x0, fle_cont.96746	# 5
	fsub	f1, f0, f1	# 5
fle_cont.96746:
	addi	x27, x8, 0
	sw		x1, -36(x2)	# 1760
	addi	x2, x2, -40	# 1760
	lw		x31, 0(x27)	# 1760
	jalr	x1, x31, 0	# 1760
	addi	x2, x2, 40	# 1760
	lw		x1, -36(x2)	# 1760
	lui		x4, %hi(l.22649)	# 1760
	ori		x4, x0, %lo(l.22649)	# 1760
	flw		f2, 0(x4)	# 1760
	fmul	f1, f1, f2	# 1760
	fadd	f2, f0, f30	# 1760
	fdiv	f1, f1, f2	# 1760
	jal		x0, fle_cont.96744	# 6
fle_else.96745:
	lui		x6, %hi(l.22646)	# 1756
	ori		x6, x0, %lo(l.22646)	# 1756
	flw		f1, 0(x6)	# 1756
fle_cont.96744:
	flw		f2, -32(x2)	# 18
	fsw		f1, -36(x2)	# 18
	fle		x31, f2, f1	# 18
	beq		x31, x0, fle_else.96748	# 18
	sw		x1, -40(x2)	# 18
	addi	x2, x2, -44	# 18
	jal		x1, int_of_float.2487.13039	# 18
	addi	x2, x2, 44	# 18
	lw		x1, -40(x2)	# 18
	sw		x1, -40(x2)	# 18
	addi	x2, x2, -44	# 18
	jal		x1, float_of_int.2489.13041	# 18
	addi	x2, x2, 44	# 18
	lw		x1, -40(x2)	# 18
	jal		x0, fle_cont.96747	# 18
fle_else.96748:
	sw		x1, -40(x2)	# 19
	addi	x2, x2, -44	# 19
	jal		x1, int_of_float.2487.13039	# 19
	addi	x2, x2, 44	# 19
	lw		x1, -40(x2)	# 19
	addi	x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	sw		x1, -40(x2)	# 19
	addi	x2, x2, -44	# 19
	jal		x1, float_of_int.2489.13041	# 19
	addi	x2, x2, 44	# 19
	lw		x1, -40(x2)	# 19
fle_cont.96747:
	flw		f2, -36(x2)	# 1762
	fsub	f1, f2, f1	# 1762
	addi	x4, x0, 4	# 1764
	lw		x5, -28(x2)	# 1764
	mul		x4, x5, x4	# 1764
	lw		x6, -24(x2)	# 1764
	add		x4, x6, x4	# 1764
	flw		f2, 0(x4)	# 1764
	lw		x4, -20(x2)	# 441
	lw		x6, 20(x4)	# 441
	addi	x7, x0, 4	# 446
	mul		x7, x5, x7	# 446
	add		x6, x6, x7	# 446
	flw		f3, 0(x6)	# 446
	fsub	f2, f2, f3	# 1764
	lw		x4, 16(x4)	# 401
	addi	x6, x0, 4	# 406
	mul		x5, x5, x6	# 406
	add		x4, x4, x5	# 406
	flw		f3, 0(x4)	# 406
	fsqrt	f3, f3	# 1764
	fmul	f2, f2, f3	# 1764
	flw		f3, -32(x2)	# 5
	flw		f4, -16(x2)	# 5
	fle		x31, f4, f3	# 5
	beq		x31, x0, fle_else.96750	# 5
	fsub	f5, f0, f4	# 5
	jal		x0, fle_cont.96749	# 5
fle_else.96750:
	fadd	f5, f0, f4	# 5
fle_cont.96749:
	flw		f6, -12(x2)	# 6
	fsw		f1, -40(x2)	# 6
	fle		x31, f6, f5	# 6
	beq		x31, x0, fle_else.96752	# 6
	fdiv	f2, f2, f4	# 1769
	fadd	f4, f0, f0	# 5
	fle		x31, f2, f4	# 5
	beq		x31, x0, fle_cont.96753	# 5
	fsub	f2, f0, f2	# 5
fle_cont.96753:
	lw		x27, -8(x2)	# 1770
	fadd	f1, f0, f2
	sw		x1, -44(x2)	# 1770
	addi	x2, x2, -48	# 1770
	lw		x31, 0(x27)	# 1770
	jalr	x1, x31, 0	# 1770
	addi	x2, x2, 48	# 1770
	lw		x1, -44(x2)	# 1770
	lui		x4, %hi(l.22649)	# 1770
	ori		x4, x0, %lo(l.22649)	# 1770
	flw		f2, 0(x4)	# 1770
	fmul	f1, f1, f2	# 1770
	fadd	f2, f0, f30	# 1770
	fdiv	f1, f1, f2	# 1770
	jal		x0, fle_cont.96751	# 6
fle_else.96752:
	lui		x4, %hi(l.22646)	# 1767
	ori		x4, x0, %lo(l.22646)	# 1767
	flw		f1, 0(x4)	# 1767
fle_cont.96751:
	flw		f2, -32(x2)	# 18
	fsw		f1, -44(x2)	# 18
	fle		x31, f2, f1	# 18
	beq		x31, x0, fle_else.96755	# 18
	sw		x1, -48(x2)	# 18
	addi	x2, x2, -52	# 18
	jal		x1, int_of_float.2487.13039	# 18
	addi	x2, x2, 52	# 18
	lw		x1, -48(x2)	# 18
	sw		x1, -48(x2)	# 18
	addi	x2, x2, -52	# 18
	jal		x1, float_of_int.2489.13041	# 18
	addi	x2, x2, 52	# 18
	lw		x1, -48(x2)	# 18
	jal		x0, fle_cont.96754	# 18
fle_else.96755:
	sw		x1, -48(x2)	# 19
	addi	x2, x2, -52	# 19
	jal		x1, int_of_float.2487.13039	# 19
	addi	x2, x2, 52	# 19
	lw		x1, -48(x2)	# 19
	addi	x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	sw		x1, -48(x2)	# 19
	addi	x2, x2, -52	# 19
	jal		x1, float_of_int.2489.13041	# 19
	addi	x2, x2, 52	# 19
	lw		x1, -48(x2)	# 19
fle_cont.96754:
	flw		f2, -44(x2)	# 1772
	fsub	f1, f2, f1	# 1772
	lui		x4, %hi(l.22666)	# 1773
	ori		x4, x0, %lo(l.22666)	# 1773
	flw		f2, 0(x4)	# 1773
	fadd	f3, f0, f17	# 1773
	flw		f4, -40(x2)	# 1773
	fsub	f4, f3, f4	# 1773
	fmul	f4, f4, f4	# 8
	fsub	f2, f2, f4	# 1773
	fsub	f1, f3, f1	# 1773
	fmul	f1, f1, f1	# 8
	fsub	f1, f2, f1	# 1773
	flw		f2, -32(x2)	# 3
	fle		x31, f2, f1	# 3
	beq		x31, x0, fle_else.96757	# 3
	jal		x0, fle_cont.96756	# 3
fle_else.96757:
	fadd	f1, f0, f2	# 1774
fle_cont.96756:
	flw		f2, -4(x2)	# 1775
	fmul	f1, f2, f1	# 1775
	lui		x4, %hi(l.22669)	# 1775
	ori		x4, x0, %lo(l.22669)	# 1775
	flw		f2, 0(x4)	# 1775
	fdiv	f1, f1, f2	# 1775
	addi	x4, x26, 580	# 1775
	addi	x5, x0, 4	# 1775
	lw		x6, 0(x2)	# 1775
	mul		x5, x6, x5	# 1775
	add		x4, x4, x5	# 1775
	fsw		f1, 0(x4)	# 1775
	jalr	x0, x1, 0	# 1775
beq.96739:
	addi	x8, x0, 4	# 1741
	mul		x8, x11, x8	# 1741
	add		x8, x5, x8	# 1741
	flw		f3, 0(x8)	# 1741
	lw		x8, 20(x4)	# 431
	addi	x10, x0, 4	# 436
	mul		x10, x11, x10	# 436
	add		x8, x8, x10	# 436
	flw		f4, 0(x8)	# 436
	fsub	f3, f3, f4	# 1741
	addi	x8, x0, 4	# 1742
	mul		x8, x9, x8	# 1742
	add		x5, x5, x8	# 1742
	flw		f4, 0(x5)	# 1742
	lw		x4, 20(x4)	# 451
	addi	x5, x0, 4	# 456
	mul		x5, x9, x5	# 456
	add		x4, x4, x5	# 456
	flw		f7, 0(x4)	# 456
	fsub	f4, f4, f7	# 1742
	fmul	f3, f3, f3	# 8
	fmul	f4, f4, f4	# 8
	fadd	f3, f3, f4	# 1743
	fsqrt	f3, f3	# 1743
	lui		x4, %hi(l.22686)	# 1743
	ori		x4, x0, %lo(l.22686)	# 1743
	flw		f4, 0(x4)	# 1743
	fdiv	f3, f3, f4	# 1743
	sw		x9, 0(x2)	# 18
	sw		x12, -28(x2)	# 18
	fsw		f5, -4(x2)	# 18
	sw		x7, -48(x2)	# 18
	sw		x6, -52(x2)	# 18
	fsw		f2, -56(x2)	# 18
	fsw		f1, -60(x2)	# 18
	fsw		f6, -32(x2)	# 18
	fsw		f3, -64(x2)	# 18
	fle		x31, f6, f3	# 18
	beq		x31, x0, fle_else.96760	# 18
	fadd	f1, f0, f3
	sw		x1, -68(x2)	# 18
	addi	x2, x2, -72	# 18
	jal		x1, int_of_float.2487.13039	# 18
	addi	x2, x2, 72	# 18
	lw		x1, -68(x2)	# 18
	sw		x1, -68(x2)	# 18
	addi	x2, x2, -72	# 18
	jal		x1, float_of_int.2489.13041	# 18
	addi	x2, x2, 72	# 18
	lw		x1, -68(x2)	# 18
	jal		x0, fle_cont.96759	# 18
fle_else.96760:
	fadd	f1, f0, f3
	sw		x1, -68(x2)	# 19
	addi	x2, x2, -72	# 19
	jal		x1, int_of_float.2487.13039	# 19
	addi	x2, x2, 72	# 19
	lw		x1, -68(x2)	# 19
	addi	x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	sw		x1, -68(x2)	# 19
	addi	x2, x2, -72	# 19
	jal		x1, float_of_int.2489.13041	# 19
	addi	x2, x2, 72	# 19
	lw		x1, -68(x2)	# 19
fle_cont.96759:
	flw		f2, -64(x2)	# 1744
	fsub	f1, f2, f1	# 1744
	fadd	f2, f0, f30	# 1744
	fmul	f1, f1, f2	# 1744
	flw		f2, -32(x2)	# 54
	fle		x31, f2, f1	# 54
	beq		x31, x0, fle_else.96762	# 54
	flw		f2, -60(x2)	# 55
	fle		x31, f1, f2	# 55
	beq		x31, x0, fle_else.96764	# 55
	fmul	f1, f1, f1	# 41
	fmul	f2, f1, f1	# 42
	fadd	f3, f0, f16	# 43
	fadd	f4, f0, f17	# 43
	fmul	f4, f4, f1	# 43
	fsub	f3, f3, f4	# 43
	fadd	f4, f0, f19	# 43
	fmul	f4, f4, f2	# 43
	fadd	f3, f3, f4	# 43
	fadd	f4, f0, f18	# 43
	fmul	f1, f4, f1	# 43
	fmul	f1, f1, f2	# 43
	fsub	f1, f3, f1	# 43
	jal		x0, fle_cont.96763	# 55
fle_else.96764:
	flw		f2, -56(x2)	# 55
	fsub	f1, f2, f1	# 55
	lw		x27, -52(x2)	# 55
	sw		x1, -68(x2)	# 55
	addi	x2, x2, -72	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 72	# 55
	lw		x1, -68(x2)	# 55
fle_cont.96763:
	jal		x0, fle_cont.96761	# 54
fle_else.96762:
	fsub	f1, f0, f1	# 54
	lw		x27, -48(x2)	# 54
	sw		x1, -68(x2)	# 54
	addi	x2, x2, -72	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 72	# 54
	lw		x1, -68(x2)	# 54
fle_cont.96761:
	fmul	f1, f1, f1	# 8
	flw		f2, -4(x2)	# 1746
	fmul	f3, f1, f2	# 1746
	addi	x4, x26, 580	# 1746
	addi	x5, x0, 4	# 1746
	lw		x6, -28(x2)	# 1746
	mul		x5, x6, x5	# 1746
	add		x4, x4, x5	# 1746
	fsw		f3, 0(x4)	# 1746
	fadd	f3, f0, f16	# 1747
	fsub	f1, f3, f1	# 1747
	fmul	f1, f1, f2	# 1747
	addi	x4, x26, 580	# 1747
	addi	x5, x0, 4	# 1747
	lw		x6, 0(x2)	# 1747
	mul		x5, x6, x5	# 1747
	add		x4, x4, x5	# 1747
	fsw		f1, 0(x4)	# 1747
	jalr	x0, x1, 0	# 1747
beq.96738:
	addi	x4, x0, 4	# 1734
	mul		x4, x12, x4	# 1734
	add		x4, x5, x4	# 1734
	flw		f7, 0(x4)	# 1734
	lui		x4, %hi(l.22703)	# 1734
	ori		x4, x0, %lo(l.22703)	# 1734
	flw		f8, 0(x4)	# 1734
	fmul	f7, f7, f8	# 1734
	sw		x12, -28(x2)	# 46
	sw		x11, -68(x2)	# 46
	fsw		f5, -4(x2)	# 46
	fle		x31, f6, f7	# 46
	beq		x31, x0, fle_else.96767	# 46
	fle		x31, f3, f7	# 47
	beq		x31, x0, fle_else.96769	# 47
	fsub	f1, f7, f3	# 47
	addi	x27, x6, 0
	sw		x1, -72(x2)	# 47
	addi	x2, x2, -76	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 76	# 47
	lw		x1, -72(x2)	# 47
	jal		x0, fle_cont.96768	# 47
fle_else.96769:
	fle		x31, f4, f7	# 48
	beq		x31, x0, fle_else.96771	# 48
	fsub	f1, f7, f4	# 48
	addi	x27, x6, 0
	sw		x1, -72(x2)	# 48
	addi	x2, x2, -76	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 76	# 48
	lw		x1, -72(x2)	# 48
	fsub	f1, f0, f1	# 48
	jal		x0, fle_cont.96770	# 48
fle_else.96771:
	fle		x31, f7, f2	# 49
	beq		x31, x0, fle_else.96773	# 49
	fle		x31, f1, f7	# 50
	beq		x31, x0, fle_else.96775	# 50
	fsub	f1, f2, f7	# 50
	fmul	f1, f1, f1	# 41
	fmul	f2, f1, f1	# 42
	fadd	f3, f0, f16	# 43
	fadd	f4, f0, f17	# 43
	fmul	f4, f4, f1	# 43
	fsub	f3, f3, f4	# 43
	fadd	f4, f0, f19	# 43
	fmul	f4, f4, f2	# 43
	fadd	f3, f3, f4	# 43
	fadd	f4, f0, f18	# 43
	fmul	f1, f4, f1	# 43
	fmul	f1, f1, f2	# 43
	fsub	f1, f3, f1	# 43
	jal		x0, fle_cont.96774	# 50
fle_else.96775:
	fmul	f1, f7, f7	# 36
	fmul	f2, f7, f1	# 37
	fadd	f3, f0, f22	# 38
	fmul	f3, f3, f2	# 38
	fsub	f3, f7, f3	# 38
	fadd	f4, f0, f20	# 38
	fmul	f4, f4, f1	# 38
	fmul	f4, f4, f2	# 38
	fadd	f3, f3, f4	# 38
	fadd	f4, f0, f21	# 38
	fmul	f4, f4, f1	# 38
	fmul	f1, f4, f1	# 38
	fmul	f1, f1, f2	# 38
	fsub	f1, f3, f1	# 38
fle_cont.96774:
	jal		x0, fle_cont.96772	# 49
fle_else.96773:
	fsub	f1, f4, f7	# 49
	addi	x27, x6, 0
	sw		x1, -72(x2)	# 49
	addi	x2, x2, -76	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 76	# 49
	lw		x1, -72(x2)	# 49
fle_cont.96772:
fle_cont.96770:
fle_cont.96768:
	jal		x0, fle_cont.96766	# 46
fle_else.96767:
	fsub	f1, f0, f7	# 46
	addi	x27, x6, 0
	sw		x1, -72(x2)	# 46
	addi	x2, x2, -76	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 76	# 46
	lw		x1, -72(x2)	# 46
	fsub	f1, f0, f1	# 46
fle_cont.96766:
	fmul	f1, f1, f1	# 8
	flw		f2, -4(x2)	# 1735
	fmul	f3, f2, f1	# 1735
	addi	x4, x26, 580	# 1735
	addi	x5, x0, 4	# 1735
	lw		x6, -68(x2)	# 1735
	mul		x5, x6, x5	# 1735
	add		x4, x4, x5	# 1735
	fsw		f3, 0(x4)	# 1735
	fadd	f3, f0, f16	# 1736
	fsub	f1, f3, f1	# 1736
	fmul	f1, f2, f1	# 1736
	addi	x4, x26, 580	# 1736
	addi	x5, x0, 4	# 1736
	lw		x6, -28(x2)	# 1736
	mul		x5, x6, x5	# 1736
	add		x4, x4, x5	# 1736
	fsw		f1, 0(x4)	# 1736
	jalr	x0, x1, 0	# 1736
beq.96737:
	addi	x6, x0, 4	# 1716
	mul		x6, x11, x6	# 1716
	add		x6, x5, x6	# 1716
	flw		f1, 0(x6)	# 1716
	lw		x6, 20(x4)	# 431
	addi	x7, x0, 4	# 436
	mul		x7, x11, x7	# 436
	add		x6, x6, x7	# 436
	flw		f2, 0(x6)	# 436
	fsub	f1, f1, f2	# 1716
	lui		x6, %hi(l.22725)	# 1718
	ori		x6, x0, %lo(l.22725)	# 1718
	flw		f2, 0(x6)	# 1718
	fmul	f3, f1, f2	# 1718
	sw		x12, -28(x2)	# 18
	fsw		f5, -4(x2)	# 18
	fsw		f6, -32(x2)	# 18
	fsw		f2, -72(x2)	# 18
	sw		x4, -20(x2)	# 18
	sw		x5, -24(x2)	# 18
	sw		x9, 0(x2)	# 18
	fsw		f1, -76(x2)	# 18
	fle		x31, f6, f3	# 18
	beq		x31, x0, fle_else.96778	# 18
	fadd	f1, f0, f3
	sw		x1, -80(x2)	# 18
	addi	x2, x2, -84	# 18
	jal		x1, int_of_float.2487.13039	# 18
	addi	x2, x2, 84	# 18
	lw		x1, -80(x2)	# 18
	sw		x1, -80(x2)	# 18
	addi	x2, x2, -84	# 18
	jal		x1, float_of_int.2489.13041	# 18
	addi	x2, x2, 84	# 18
	lw		x1, -80(x2)	# 18
	jal		x0, fle_cont.96777	# 18
fle_else.96778:
	fadd	f1, f0, f3
	sw		x1, -80(x2)	# 19
	addi	x2, x2, -84	# 19
	jal		x1, int_of_float.2487.13039	# 19
	addi	x2, x2, 84	# 19
	lw		x1, -80(x2)	# 19
	addi	x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	sw		x1, -80(x2)	# 19
	addi	x2, x2, -84	# 19
	jal		x1, float_of_int.2489.13041	# 19
	addi	x2, x2, 84	# 19
	lw		x1, -80(x2)	# 19
fle_cont.96777:
	lui		x4, %hi(l.22727)	# 1718
	ori		x4, x0, %lo(l.22727)	# 1718
	flw		f2, 0(x4)	# 1718
	fmul	f1, f1, f2	# 1718
	flw		f3, -76(x2)	# 1719
	fsub	f1, f3, f1	# 1719
	lui		x4, %hi(l.22686)	# 1719
	ori		x4, x0, %lo(l.22686)	# 1719
	flw		f3, 0(x4)	# 1719
	addi	x4, x0, 4	# 1721
	lw		x5, 0(x2)	# 1721
	mul		x4, x5, x4	# 1721
	lw		x6, -24(x2)	# 1721
	add		x4, x6, x4	# 1721
	flw		f4, 0(x4)	# 1721
	lw		x4, -20(x2)	# 451
	lw		x4, 20(x4)	# 451
	addi	x6, x0, 4	# 456
	mul		x5, x5, x6	# 456
	add		x4, x4, x5	# 456
	flw		f5, 0(x4)	# 456
	fsub	f4, f4, f5	# 1721
	flw		f5, -72(x2)	# 1723
	fmul	f5, f4, f5	# 1723
	flw		f6, -32(x2)	# 18
	fsw		f1, -80(x2)	# 18
	fsw		f3, -84(x2)	# 18
	fsw		f4, -88(x2)	# 18
	fsw		f2, -92(x2)	# 18
	fle		x31, f6, f5	# 18
	beq		x31, x0, fle_else.96780	# 18
	fadd	f1, f0, f5
	sw		x1, -96(x2)	# 18
	addi	x2, x2, -100	# 18
	jal		x1, int_of_float.2487.13039	# 18
	addi	x2, x2, 100	# 18
	lw		x1, -96(x2)	# 18
	sw		x1, -96(x2)	# 18
	addi	x2, x2, -100	# 18
	jal		x1, float_of_int.2489.13041	# 18
	addi	x2, x2, 100	# 18
	lw		x1, -96(x2)	# 18
	jal		x0, fle_cont.96779	# 18
fle_else.96780:
	fadd	f1, f0, f5
	sw		x1, -96(x2)	# 19
	addi	x2, x2, -100	# 19
	jal		x1, int_of_float.2487.13039	# 19
	addi	x2, x2, 100	# 19
	lw		x1, -96(x2)	# 19
	addi	x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	sw		x1, -96(x2)	# 19
	addi	x2, x2, -100	# 19
	jal		x1, float_of_int.2489.13041	# 19
	addi	x2, x2, 100	# 19
	lw		x1, -96(x2)	# 19
fle_cont.96779:
	flw		f2, -92(x2)	# 1723
	fmul	f1, f1, f2	# 1723
	flw		f2, -88(x2)	# 1724
	fsub	f1, f2, f1	# 1724
	flw		f2, -80(x2)	# 6
	flw		f3, -84(x2)	# 6
	fle		x31, f3, f2	# 6
	beq		x31, x0, fle_else.96782	# 6
	fle		x31, f3, f1	# 6
	beq		x31, x0, fle_else.96784	# 6
	flw		f1, -4(x2)	# 1729
	jal		x0, fle_cont.96783	# 6
fle_else.96784:
	flw		f1, -32(x2)	# 1729
fle_cont.96783:
	jal		x0, fle_cont.96781	# 6
fle_else.96782:
	fle		x31, f3, f1	# 6
	beq		x31, x0, fle_else.96786	# 6
	flw		f1, -32(x2)	# 1728
	jal		x0, fle_cont.96785	# 6
fle_else.96786:
	flw		f1, -4(x2)	# 1728
fle_cont.96785:
fle_cont.96781:
	addi	x4, x26, 580	# 1726
	addi	x5, x0, 4	# 1726
	lw		x6, -28(x2)	# 1726
	mul		x5, x6, x5	# 1726
	add		x4, x4, x5	# 1726
	fsw		f1, 0(x4)	# 1726
	jalr	x0, x1, 0	# 1726
trace_reflections.2866.13333:
	lw		x6, 28(x27)	# 1804
	lw		x7, 24(x27)	# 1804
	lw		x8, 20(x27)	# 1804
	lw		x9, 16(x27)	# 1804
	lw		x10, 12(x27)	# 1804
	flw		f3, 8(x27)	# 1804
	flw		f4, 4(x27)	# 1804
	ble		x9, x4, ble.96788	# 1804
	jalr	x0, x1, 0	# 1824
ble.96788:
	addi	x11, x26, 1016	# 1805
	addi	x12, x0, 4	# 1805
	mul		x12, x4, x12	# 1805
	add		x11, x11, x12	# 1805
	lw		x11, 0(x11)	# 1805
	lw		x12, 4(x11)	# 661
	addi	x13, x26, 548	# 1634
	addi	x14, x0, 4	# 1634
	mul		x14, x9, x14	# 1634
	add		x13, x13, x14	# 1634
	fsw		f3, 0(x13)	# 1634
	addi	x13, x26, 536	# 1635
	addi	x14, x0, 4	# 1635
	mul		x14, x9, x14	# 1635
	add		x13, x13, x14	# 1635
	lw		x13, 0(x13)	# 1635
	sw		x27, 0(x2)	# 1635
	sw		x4, -4(x2)	# 1635
	fsw		f2, -8(x2)	# 1635
	sw		x8, -12(x2)	# 1635
	sw		x10, -16(x2)	# 1635
	fsw		f4, -20(x2)	# 1635
	sw		x5, -24(x2)	# 1635
	fsw		f1, -28(x2)	# 1635
	sw		x12, -32(x2)	# 1635
	sw		x7, -36(x2)	# 1635
	sw		x11, -40(x2)	# 1635
	sw		x9, -44(x2)	# 1635
	addi	x5, x13, 0
	addi	x4, x9, 0
	addi	x27, x6, 0
	addi	x6, x12, 0
	sw		x1, -48(x2)	# 1635
	addi	x2, x2, -52	# 1635
	lw		x31, 0(x27)	# 1635
	jalr	x1, x31, 0	# 1635
	addi	x2, x2, 52	# 1635
	lw		x1, -48(x2)	# 1635
	addi	x4, x26, 548	# 1636
	addi	x5, x0, 4	# 1636
	lw		x6, -44(x2)	# 1636
	mul		x5, x6, x5	# 1636
	add		x4, x4, x5	# 1636
	flw		f1, 0(x4)	# 1636
	fadd	f2, f0, f25	# 1638
	fle		x31, f1, f2	# 6
	beq		x31, x0, fle_else.96791	# 6
	addi	x4, x0, 0	# 1640
	jal		x0, fle_cont.96790	# 6
fle_else.96791:
	fadd	f2, f0, f29	# 1639
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.96793	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.96792	# 6
fle_else.96793:
	addi	x4, x0, 1	# 6
fle_cont.96792:
fle_cont.96790:
	beq		x4, x6, beq_cont.96794	# 1809
	addi	x4, x0, 0	# 1810
	addi	x5, x26, 564	# 1810
	addi	x7, x0, 4	# 1810
	mul		x4, x4, x7	# 1810
	add		x4, x5, x4	# 1810
	lw		x4, 0(x4)	# 1810
	addi	x5, x0, 4	# 1810
	mul		x4, x4, x5	# 1810
	addi	x5, x0, 0	# 1810
	addi	x7, x26, 544	# 1810
	addi	x8, x0, 4	# 1810
	mul		x5, x5, x8	# 1810
	add		x5, x7, x5	# 1810
	lw		x5, 0(x5)	# 1810
	add		x4, x4, x5	# 1810
	lw		x5, -40(x2)	# 655
	lw		x7, 0(x5)	# 655
	beq		x4, x7, beq.96796	# 1811
	jal		x0, beq_cont.96795	# 1811
beq.96796:
	addi	x4, x0, 0	# 1813
	addi	x7, x0, 0	# 1813
	addi	x8, x26, 536	# 1813
	addi	x9, x0, 4	# 1813
	mul		x7, x7, x9	# 1813
	add		x7, x8, x7	# 1813
	lw		x7, 0(x7)	# 1813
	lw		x27, -36(x2)	# 1813
	addi	x5, x7, 0
	sw		x1, -48(x2)	# 1813
	addi	x2, x2, -52	# 1813
	lw		x31, 0(x27)	# 1813
	jalr	x1, x31, 0	# 1813
	addi	x2, x2, 52	# 1813
	lw		x1, -48(x2)	# 1813
	addi	x5, x0, 0	# 1813
	beq		x4, x5, beq.96798	# 1813
	jal		x0, beq_cont.96797	# 1813
beq.96798:
	lw		x4, -32(x2)	# 639
	lw		x5, 0(x4)	# 639
	addi	x6, x0, 0	# 292
	addi	x7, x26, 568	# 292
	addi	x8, x0, 4	# 292
	mul		x6, x6, x8	# 292
	add		x6, x7, x6	# 292
	flw		f1, 0(x6)	# 292
	addi	x6, x0, 0	# 292
	addi	x7, x0, 4	# 292
	mul		x6, x6, x7	# 292
	add		x6, x5, x6	# 292
	flw		f2, 0(x6)	# 292
	fmul	f1, f1, f2	# 292
	addi	x6, x0, 1	# 292
	addi	x7, x26, 568	# 292
	addi	x8, x0, 4	# 292
	mul		x6, x6, x8	# 292
	add		x6, x7, x6	# 292
	flw		f2, 0(x6)	# 292
	addi	x6, x0, 1	# 292
	addi	x7, x0, 4	# 292
	mul		x6, x6, x7	# 292
	add		x6, x5, x6	# 292
	flw		f3, 0(x6)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	addi	x6, x0, 2	# 292
	addi	x7, x26, 568	# 292
	addi	x8, x0, 4	# 292
	mul		x6, x6, x8	# 292
	add		x6, x7, x6	# 292
	flw		f2, 0(x6)	# 292
	addi	x6, x0, 2	# 292
	addi	x7, x0, 4	# 292
	mul		x6, x6, x7	# 292
	add		x5, x5, x6	# 292
	flw		f3, 0(x5)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	lw		x5, -40(x2)	# 1817
	flw		f2, 8(x5)	# 1817
	flw		f3, -28(x2)	# 1817
	fmul	f4, f2, f3	# 1817
	fmul	f1, f4, f1	# 1817
	lw		x4, 0(x4)	# 639
	addi	x5, x0, 0	# 292
	addi	x6, x0, 4	# 292
	mul		x5, x5, x6	# 292
	lw		x6, -24(x2)	# 292
	add		x5, x6, x5	# 292
	flw		f4, 0(x5)	# 292
	addi	x5, x0, 0	# 292
	addi	x7, x0, 4	# 292
	mul		x5, x5, x7	# 292
	add		x5, x4, x5	# 292
	flw		f5, 0(x5)	# 292
	fmul	f4, f4, f5	# 292
	addi	x5, x0, 1	# 292
	addi	x7, x0, 4	# 292
	mul		x5, x5, x7	# 292
	add		x5, x6, x5	# 292
	flw		f5, 0(x5)	# 292
	addi	x5, x0, 1	# 292
	addi	x7, x0, 4	# 292
	mul		x5, x5, x7	# 292
	add		x5, x4, x5	# 292
	flw		f6, 0(x5)	# 292
	fmul	f5, f5, f6	# 292
	fadd	f4, f4, f5	# 292
	addi	x5, x0, 2	# 292
	addi	x7, x0, 4	# 292
	mul		x5, x5, x7	# 292
	add		x5, x6, x5	# 292
	flw		f5, 0(x5)	# 292
	addi	x5, x0, 2	# 292
	addi	x7, x0, 4	# 292
	mul		x5, x5, x7	# 292
	add		x4, x4, x5	# 292
	flw		f6, 0(x4)	# 292
	fmul	f5, f5, f6	# 292
	fadd	f4, f4, f5	# 292
	fmul	f2, f2, f4	# 1818
	flw		f4, -20(x2)	# 2
	fle		x31, f1, f4	# 2
	beq		x31, x0, fle_else.96800	# 2
	jal		x0, fle_cont.96799	# 2
fle_else.96800:
	addi	x4, x26, 604	# 302
	addi	x5, x0, 4	# 302
	lw		x7, -44(x2)	# 302
	mul		x5, x7, x5	# 302
	add		x4, x4, x5	# 302
	flw		f5, 0(x4)	# 302
	addi	x4, x26, 580	# 302
	addi	x5, x0, 4	# 302
	mul		x5, x7, x5	# 302
	add		x4, x4, x5	# 302
	flw		f6, 0(x4)	# 302
	fmul	f6, f1, f6	# 302
	fadd	f5, f5, f6	# 302
	addi	x4, x26, 604	# 302
	addi	x5, x0, 4	# 302
	mul		x5, x7, x5	# 302
	add		x4, x4, x5	# 302
	fsw		f5, 0(x4)	# 302
	addi	x4, x26, 604	# 303
	addi	x5, x0, 4	# 303
	lw		x8, -16(x2)	# 303
	mul		x5, x8, x5	# 303
	add		x4, x4, x5	# 303
	flw		f5, 0(x4)	# 303
	addi	x4, x26, 580	# 303
	addi	x5, x0, 4	# 303
	mul		x5, x8, x5	# 303
	add		x4, x4, x5	# 303
	flw		f6, 0(x4)	# 303
	fmul	f6, f1, f6	# 303
	fadd	f5, f5, f6	# 303
	addi	x4, x26, 604	# 303
	addi	x5, x0, 4	# 303
	mul		x5, x8, x5	# 303
	add		x4, x4, x5	# 303
	fsw		f5, 0(x4)	# 303
	addi	x4, x26, 604	# 304
	addi	x5, x0, 4	# 304
	lw		x9, -12(x2)	# 304
	mul		x5, x9, x5	# 304
	add		x4, x4, x5	# 304
	flw		f5, 0(x4)	# 304
	addi	x4, x26, 580	# 304
	addi	x5, x0, 4	# 304
	mul		x5, x9, x5	# 304
	add		x4, x4, x5	# 304
	flw		f6, 0(x4)	# 304
	fmul	f1, f1, f6	# 304
	fadd	f1, f5, f1	# 304
	addi	x4, x26, 604	# 304
	addi	x5, x0, 4	# 304
	mul		x5, x9, x5	# 304
	add		x4, x4, x5	# 304
	fsw		f1, 0(x4)	# 304
fle_cont.96799:
	fle		x31, f2, f4	# 2
	beq		x31, x0, fle_else.96802	# 2
	jal		x0, fle_cont.96801	# 2
fle_else.96802:
	fmul	f1, f2, f2	# 8
	fmul	f1, f1, f1	# 8
	flw		f2, -8(x2)	# 1794
	fmul	f1, f1, f2	# 1794
	addi	x4, x26, 604	# 1795
	addi	x5, x0, 4	# 1795
	lw		x7, -44(x2)	# 1795
	mul		x5, x7, x5	# 1795
	add		x4, x4, x5	# 1795
	flw		f4, 0(x4)	# 1795
	fadd	f4, f4, f1	# 1795
	addi	x4, x26, 604	# 1795
	addi	x5, x0, 4	# 1795
	mul		x5, x7, x5	# 1795
	add		x4, x4, x5	# 1795
	fsw		f4, 0(x4)	# 1795
	addi	x4, x26, 604	# 1796
	addi	x5, x0, 4	# 1796
	lw		x7, -16(x2)	# 1796
	mul		x5, x7, x5	# 1796
	add		x4, x4, x5	# 1796
	flw		f4, 0(x4)	# 1796
	fadd	f4, f4, f1	# 1796
	addi	x4, x26, 604	# 1796
	addi	x5, x0, 4	# 1796
	mul		x5, x7, x5	# 1796
	add		x4, x4, x5	# 1796
	fsw		f4, 0(x4)	# 1796
	addi	x4, x26, 604	# 1797
	addi	x5, x0, 4	# 1797
	lw		x8, -12(x2)	# 1797
	mul		x5, x8, x5	# 1797
	add		x4, x4, x5	# 1797
	flw		f4, 0(x4)	# 1797
	fadd	f1, f4, f1	# 1797
	addi	x4, x26, 604	# 1797
	addi	x5, x0, 4	# 1797
	mul		x5, x8, x5	# 1797
	add		x4, x4, x5	# 1797
	fsw		f1, 0(x4)	# 1797
fle_cont.96801:
beq_cont.96797:
beq_cont.96795:
beq_cont.96794:
	lw		x4, -16(x2)	# 1823
	lw		x5, -4(x2)	# 1823
	sub		x4, x5, x4	# 1823
	flw		f1, -28(x2)	# 1823
	flw		f2, -8(x2)	# 1823
	lw		x5, -24(x2)	# 1823
	lw		x27, 0(x2)	# 1823
	lw		x31, 0(x27)	# 1823
	jalr	x0, x31, 0	# 1823
trace_ray.2871.13338:
	lw		x7, 48(x27)	# 1832
	lw		x8, 44(x27)	# 1832
	lw		x9, 40(x27)	# 1832
	lw		x10, 36(x27)	# 1832
	lw		x11, 32(x27)	# 1832
	lw		x12, 28(x27)	# 1832
	lw		x13, 24(x27)	# 1832
	lw		x14, 20(x27)	# 1832
	lw		x15, 16(x27)	# 1832
	lw		x16, 12(x27)	# 1832
	flw		f3, 8(x27)	# 1832
	flw		f4, 4(x27)	# 1832
	addi	x17, x0, 4	# 1832
	ble		x4, x17, ble.96803	# 1832
	jalr	x0, x1, 0	# 1913
ble.96803:
	lw		x18, 8(x6)	# 577
	addi	x19, x26, 548	# 1543
	addi	x20, x0, 4	# 1543
	mul		x20, x15, x20	# 1543
	add		x19, x19, x20	# 1543
	fsw		f3, 0(x19)	# 1543
	addi	x19, x26, 536	# 1544
	addi	x20, x0, 4	# 1544
	mul		x20, x15, x20	# 1544
	add		x19, x19, x20	# 1544
	lw		x19, 0(x19)	# 1544
	sw		x27, 0(x2)	# 1544
	fsw		f2, -4(x2)	# 1544
	sw		x8, -8(x2)	# 1544
	sw		x11, -12(x2)	# 1544
	sw		x10, -16(x2)	# 1544
	sw		x6, -20(x2)	# 1544
	sw		x17, -24(x2)	# 1544
	sw		x7, -28(x2)	# 1544
	sw		x12, -32(x2)	# 1544
	fsw		f1, -36(x2)	# 1544
	fsw		f4, -40(x2)	# 1544
	sw		x13, -44(x2)	# 1544
	sw		x16, -48(x2)	# 1544
	sw		x5, -52(x2)	# 1544
	sw		x14, -56(x2)	# 1544
	sw		x18, -60(x2)	# 1544
	sw		x4, -64(x2)	# 1544
	sw		x15, -68(x2)	# 1544
	addi	x6, x5, 0
	addi	x4, x15, 0
	addi	x27, x9, 0
	addi	x5, x19, 0
	sw		x1, -72(x2)	# 1544
	addi	x2, x2, -76	# 1544
	lw		x31, 0(x27)	# 1544
	jalr	x1, x31, 0	# 1544
	addi	x2, x2, 76	# 1544
	lw		x1, -72(x2)	# 1544
	addi	x4, x26, 548	# 1545
	addi	x5, x0, 4	# 1545
	lw		x6, -68(x2)	# 1545
	mul		x5, x6, x5	# 1545
	add		x4, x4, x5	# 1545
	flw		f1, 0(x4)	# 1545
	fadd	f2, f0, f25	# 1547
	fle		x31, f1, f2	# 6
	beq		x31, x0, fle_else.96806	# 6
	addi	x4, x0, 0	# 1549
	jal		x0, fle_cont.96805	# 6
fle_else.96806:
	fadd	f2, f0, f29	# 1548
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.96808	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.96807	# 6
fle_else.96808:
	addi	x4, x0, 1	# 6
fle_cont.96807:
fle_cont.96805:
	beq		x4, x6, beq.96809	# 1834
	addi	x4, x26, 564	# 1836
	addi	x5, x0, 4	# 1836
	mul		x5, x6, x5	# 1836
	add		x4, x4, x5	# 1836
	lw		x4, 0(x4)	# 1836
	addi	x5, x26, 48	# 1837
	addi	x7, x0, 4	# 1837
	mul		x7, x4, x7	# 1837
	add		x5, x5, x7	# 1837
	lw		x5, 0(x5)	# 1837
	lw		x7, 8(x5)	# 363
	lw		x8, 28(x5)	# 461
	addi	x9, x0, 4	# 466
	mul		x9, x6, x9	# 466
	add		x8, x8, x9	# 466
	flw		f1, 0(x8)	# 466
	flw		f2, -36(x2)	# 1839
	fmul	f1, f1, f2	# 1839
	lw		x8, 4(x5)	# 353
	lw		x9, -48(x2)	# 1693
	sw		x7, -72(x2)	# 1693
	fsw		f1, -76(x2)	# 1693
	sw		x4, -80(x2)	# 1693
	sw		x5, -84(x2)	# 1693
	beq		x8, x9, beq.96811	# 1693
	addi	x10, x0, 2	# 1695
	beq		x8, x10, beq.96813	# 1695
	lw		x27, -32(x2)	# 1698
	addi	x4, x5, 0
	sw		x1, -88(x2)	# 1698
	addi	x2, x2, -92	# 1698
	lw		x31, 0(x27)	# 1698
	jalr	x1, x31, 0	# 1698
	addi	x2, x2, 92	# 1698
	lw		x1, -88(x2)	# 1698
	jal		x0, beq_cont.96812	# 1695
beq.96813:
	lw		x8, 16(x5)	# 391
	addi	x10, x0, 4	# 396
	mul		x10, x6, x10	# 396
	add		x8, x8, x10	# 396
	flw		f3, 0(x8)	# 396
	fsub	f3, f0, f3	# 4
	addi	x8, x26, 568	# 1663
	addi	x10, x0, 4	# 1663
	mul		x10, x6, x10	# 1663
	add		x8, x8, x10	# 1663
	fsw		f3, 0(x8)	# 1663
	lw		x8, 16(x5)	# 401
	addi	x10, x0, 4	# 406
	mul		x10, x9, x10	# 406
	add		x8, x8, x10	# 406
	flw		f3, 0(x8)	# 406
	fsub	f3, f0, f3	# 4
	addi	x8, x26, 568	# 1664
	addi	x10, x0, 4	# 1664
	mul		x10, x9, x10	# 1664
	add		x8, x8, x10	# 1664
	fsw		f3, 0(x8)	# 1664
	lw		x8, 16(x5)	# 411
	addi	x10, x0, 4	# 416
	lw		x11, -44(x2)	# 416
	mul		x10, x11, x10	# 416
	add		x8, x8, x10	# 416
	flw		f3, 0(x8)	# 416
	fsub	f3, f0, f3	# 4
	addi	x8, x26, 568	# 1665
	addi	x10, x0, 4	# 1665
	mul		x10, x11, x10	# 1665
	add		x8, x8, x10	# 1665
	fsw		f3, 0(x8)	# 1665
beq_cont.96812:
	jal		x0, beq_cont.96810	# 1693
beq.96811:
	addi	x8, x26, 544	# 1654
	addi	x10, x0, 4	# 1654
	mul		x10, x6, x10	# 1654
	add		x8, x8, x10	# 1654
	lw		x8, 0(x8)	# 1654
	fadd	f3, f0, f0	# 254
	addi	x10, x26, 568	# 247
	addi	x11, x0, 4	# 247
	mul		x11, x6, x11	# 247
	add		x10, x10, x11	# 247
	fsw		f3, 0(x10)	# 247
	addi	x10, x26, 568	# 248
	addi	x11, x0, 4	# 248
	mul		x11, x9, x11	# 248
	add		x10, x10, x11	# 248
	fsw		f3, 0(x10)	# 248
	addi	x10, x26, 568	# 249
	addi	x11, x0, 4	# 249
	lw		x12, -44(x2)	# 249
	mul		x11, x12, x11	# 249
	add		x10, x10, x11	# 249
	fsw		f3, 0(x10)	# 249
	sub		x10, x8, x9	# 1657
	sub		x8, x8, x9	# 1657
	addi	x11, x0, 4	# 1657
	mul		x8, x8, x11	# 1657
	lw		x11, -52(x2)	# 1657
	add		x8, x11, x8	# 1657
	flw		f3, 0(x8)	# 1657
	fadd	f4, f0, f0	# 1
	feq		x31, f3, f4	# 1
	beq		x31, x0, feq_else.96815	# 1
	fadd	f3, f0, f0	# 212
	jal		x0, feq_cont.96814	# 1
feq_else.96815:
	fadd	f4, f0, f0	# 2
	fle		x31, f3, f4	# 2
	beq		x31, x0, fle_else.96817	# 2
	fadd	f3, f0, f23	# 214
	jal		x0, fle_cont.96816	# 2
fle_else.96817:
	fadd	f3, f0, f16	# 213
fle_cont.96816:
feq_cont.96814:
	fsub	f3, f0, f3	# 4
	addi	x8, x26, 568	# 1657
	addi	x13, x0, 4	# 1657
	mul		x10, x10, x13	# 1657
	add		x8, x8, x10	# 1657
	fsw		f3, 0(x8)	# 1657
beq_cont.96810:
	addi	x4, x26, 552	# 259
	addi	x5, x0, 4	# 259
	lw		x6, -68(x2)	# 259
	mul		x5, x6, x5	# 259
	add		x4, x4, x5	# 259
	flw		f1, 0(x4)	# 259
	addi	x4, x26, 636	# 259
	addi	x5, x0, 4	# 259
	mul		x5, x6, x5	# 259
	add		x4, x4, x5	# 259
	fsw		f1, 0(x4)	# 259
	addi	x4, x26, 552	# 260
	addi	x5, x0, 4	# 260
	lw		x7, -48(x2)	# 260
	mul		x5, x7, x5	# 260
	add		x4, x4, x5	# 260
	flw		f1, 0(x4)	# 260
	addi	x4, x26, 636	# 260
	addi	x5, x0, 4	# 260
	mul		x5, x7, x5	# 260
	add		x4, x4, x5	# 260
	fsw		f1, 0(x4)	# 260
	addi	x4, x26, 552	# 261
	addi	x5, x0, 4	# 261
	lw		x8, -44(x2)	# 261
	mul		x5, x8, x5	# 261
	add		x4, x4, x5	# 261
	flw		f1, 0(x4)	# 261
	addi	x4, x26, 636	# 261
	addi	x5, x0, 4	# 261
	mul		x5, x8, x5	# 261
	add		x4, x4, x5	# 261
	fsw		f1, 0(x4)	# 261
	addi	x5, x26, 552	# 1843
	lw		x4, -84(x2)	# 1843
	lw		x27, -28(x2)	# 1843
	sw		x1, -88(x2)	# 1843
	addi	x2, x2, -92	# 1843
	lw		x31, 0(x27)	# 1843
	jalr	x1, x31, 0	# 1843
	addi	x2, x2, 92	# 1843
	lw		x1, -88(x2)	# 1843
	lw		x4, -24(x2)	# 1846
	lw		x5, -80(x2)	# 1846
	mul		x5, x5, x4	# 1846
	addi	x6, x26, 544	# 1846
	addi	x7, x0, 4	# 1846
	lw		x8, -68(x2)	# 1846
	mul		x7, x8, x7	# 1846
	add		x6, x6, x7	# 1846
	lw		x6, 0(x6)	# 1846
	add		x5, x5, x6	# 1846
	addi	x6, x0, 4	# 1846
	lw		x7, -64(x2)	# 1846
	mul		x6, x7, x6	# 1846
	lw		x9, -60(x2)	# 1846
	add		x6, x9, x6	# 1846
	sw		x5, 0(x6)	# 1846
	lw		x5, -20(x2)	# 569
	lw		x6, 4(x5)	# 569
	addi	x10, x0, 4	# 1848
	mul		x10, x7, x10	# 1848
	add		x6, x6, x10	# 1848
	lw		x6, 0(x6)	# 1848
	addi	x10, x26, 552	# 259
	addi	x11, x0, 4	# 259
	mul		x11, x8, x11	# 259
	add		x10, x10, x11	# 259
	flw		f1, 0(x10)	# 259
	addi	x10, x0, 4	# 259
	mul		x10, x8, x10	# 259
	add		x10, x6, x10	# 259
	fsw		f1, 0(x10)	# 259
	addi	x10, x26, 552	# 260
	addi	x11, x0, 4	# 260
	lw		x12, -48(x2)	# 260
	mul		x11, x12, x11	# 260
	add		x10, x10, x11	# 260
	flw		f1, 0(x10)	# 260
	addi	x10, x0, 4	# 260
	mul		x10, x12, x10	# 260
	add		x10, x6, x10	# 260
	fsw		f1, 0(x10)	# 260
	addi	x10, x26, 552	# 261
	addi	x11, x0, 4	# 261
	lw		x13, -44(x2)	# 261
	mul		x11, x13, x11	# 261
	add		x10, x10, x11	# 261
	flw		f1, 0(x10)	# 261
	addi	x10, x0, 4	# 261
	mul		x10, x13, x10	# 261
	add		x6, x6, x10	# 261
	fsw		f1, 0(x6)	# 261
	lw		x6, 12(x5)	# 584
	lw		x10, -84(x2)	# 461
	lw		x11, 28(x10)	# 461
	addi	x14, x0, 4	# 466
	mul		x14, x8, x14	# 466
	add		x11, x11, x14	# 466
	flw		f1, 0(x11)	# 466
	fadd	f2, f0, f17	# 1852
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.96819	# 6
	addi	x11, x0, 1	# 1855
	addi	x14, x0, 4	# 1855
	mul		x14, x7, x14	# 1855
	add		x6, x6, x14	# 1855
	sw		x11, 0(x6)	# 1855
	lw		x6, 16(x5)	# 591
	addi	x11, x0, 4	# 1857
	mul		x11, x7, x11	# 1857
	add		x11, x6, x11	# 1857
	lw		x11, 0(x11)	# 1857
	addi	x14, x0, 0	# 259
	addi	x15, x0, 0	# 259
	addi	x16, x26, 580	# 259
	addi	x17, x0, 4	# 259
	mul		x15, x15, x17	# 259
	add		x15, x16, x15	# 259
	flw		f1, 0(x15)	# 259
	addi	x15, x0, 4	# 259
	mul		x14, x14, x15	# 259
	add		x14, x11, x14	# 259
	fsw		f1, 0(x14)	# 259
	addi	x14, x0, 1	# 260
	addi	x15, x0, 1	# 260
	addi	x16, x26, 580	# 260
	addi	x17, x0, 4	# 260
	mul		x15, x15, x17	# 260
	add		x15, x16, x15	# 260
	flw		f1, 0(x15)	# 260
	addi	x15, x0, 4	# 260
	mul		x14, x14, x15	# 260
	add		x14, x11, x14	# 260
	fsw		f1, 0(x14)	# 260
	addi	x14, x0, 2	# 261
	addi	x15, x26, 580	# 261
	addi	x16, x0, 4	# 261
	mul		x16, x14, x16	# 261
	add		x15, x15, x16	# 261
	flw		f1, 0(x15)	# 261
	addi	x15, x0, 4	# 261
	mul		x14, x14, x15	# 261
	add		x11, x11, x14	# 261
	fsw		f1, 0(x11)	# 261
	addi	x11, x0, 4	# 1858
	mul		x11, x7, x11	# 1858
	add		x6, x6, x11	# 1858
	lw		x6, 0(x6)	# 1858
	lui		x11, %hi(l.22985)	# 1858
	ori		x11, x0, %lo(l.22985)	# 1858
	flw		f1, 0(x11)	# 1858
	flw		f2, -76(x2)	# 1858
	fmul	f1, f1, f2	# 1858
	addi	x11, x0, 0	# 325
	addi	x14, x0, 0	# 325
	addi	x15, x0, 4	# 325
	mul		x14, x14, x15	# 325
	add		x14, x6, x14	# 325
	flw		f3, 0(x14)	# 325
	fmul	f3, f3, f1	# 325
	addi	x14, x0, 4	# 325
	mul		x11, x11, x14	# 325
	add		x11, x6, x11	# 325
	fsw		f3, 0(x11)	# 325
	addi	x11, x0, 1	# 326
	addi	x14, x0, 1	# 326
	addi	x15, x0, 4	# 326
	mul		x14, x14, x15	# 326
	add		x14, x6, x14	# 326
	flw		f3, 0(x14)	# 326
	fmul	f3, f3, f1	# 326
	addi	x14, x0, 4	# 326
	mul		x11, x11, x14	# 326
	add		x11, x6, x11	# 326
	fsw		f3, 0(x11)	# 326
	addi	x11, x0, 2	# 327
	addi	x14, x0, 4	# 327
	mul		x14, x11, x14	# 327
	add		x14, x6, x14	# 327
	flw		f3, 0(x14)	# 327
	fmul	f1, f3, f1	# 327
	addi	x14, x0, 4	# 327
	mul		x11, x11, x14	# 327
	add		x6, x6, x11	# 327
	fsw		f1, 0(x6)	# 327
	lw		x6, 28(x5)	# 628
	addi	x11, x0, 4	# 1860
	mul		x11, x7, x11	# 1860
	add		x6, x6, x11	# 1860
	lw		x6, 0(x6)	# 1860
	addi	x11, x0, 0	# 259
	addi	x14, x0, 0	# 259
	addi	x15, x26, 568	# 259
	addi	x16, x0, 4	# 259
	mul		x14, x14, x16	# 259
	add		x14, x15, x14	# 259
	flw		f1, 0(x14)	# 259
	addi	x14, x0, 4	# 259
	mul		x11, x11, x14	# 259
	add		x11, x6, x11	# 259
	fsw		f1, 0(x11)	# 259
	addi	x11, x0, 1	# 260
	addi	x14, x0, 1	# 260
	addi	x15, x26, 568	# 260
	addi	x16, x0, 4	# 260
	mul		x14, x14, x16	# 260
	add		x14, x15, x14	# 260
	flw		f1, 0(x14)	# 260
	addi	x14, x0, 4	# 260
	mul		x11, x11, x14	# 260
	add		x11, x6, x11	# 260
	fsw		f1, 0(x11)	# 260
	addi	x11, x0, 2	# 261
	addi	x14, x26, 568	# 261
	addi	x15, x0, 4	# 261
	mul		x15, x11, x15	# 261
	add		x14, x14, x15	# 261
	flw		f1, 0(x14)	# 261
	addi	x14, x0, 4	# 261
	mul		x11, x11, x14	# 261
	add		x6, x6, x11	# 261
	fsw		f1, 0(x6)	# 261
	jal		x0, fle_cont.96818	# 6
fle_else.96819:
	addi	x11, x0, 0	# 1853
	addi	x14, x0, 4	# 1853
	mul		x14, x7, x14	# 1853
	add		x6, x6, x14	# 1853
	sw		x11, 0(x6)	# 1853
fle_cont.96818:
	lui		x6, %hi(l.23026)	# 1863
	ori		x6, x0, %lo(l.23026)	# 1863
	flw		f1, 0(x6)	# 1863
	addi	x6, x0, 4	# 292
	mul		x6, x8, x6	# 292
	lw		x11, -52(x2)	# 292
	add		x6, x11, x6	# 292
	flw		f2, 0(x6)	# 292
	addi	x6, x26, 568	# 292
	addi	x14, x0, 4	# 292
	mul		x14, x8, x14	# 292
	add		x6, x6, x14	# 292
	flw		f3, 0(x6)	# 292
	fmul	f4, f2, f3	# 292
	addi	x6, x0, 4	# 292
	mul		x6, x12, x6	# 292
	add		x6, x11, x6	# 292
	flw		f5, 0(x6)	# 292
	addi	x6, x26, 568	# 292
	addi	x14, x0, 4	# 292
	mul		x14, x12, x14	# 292
	add		x6, x6, x14	# 292
	flw		f6, 0(x6)	# 292
	fmul	f5, f5, f6	# 292
	fadd	f4, f4, f5	# 292
	addi	x6, x0, 4	# 292
	mul		x6, x13, x6	# 292
	add		x6, x11, x6	# 292
	flw		f5, 0(x6)	# 292
	addi	x6, x26, 568	# 292
	addi	x14, x0, 4	# 292
	mul		x14, x13, x14	# 292
	add		x6, x6, x14	# 292
	flw		f6, 0(x6)	# 292
	fmul	f5, f5, f6	# 292
	fadd	f4, f4, f5	# 292
	fmul	f1, f1, f4	# 1863
	fmul	f3, f1, f3	# 302
	fadd	f2, f2, f3	# 302
	addi	x6, x0, 4	# 302
	mul		x6, x8, x6	# 302
	add		x6, x11, x6	# 302
	fsw		f2, 0(x6)	# 302
	addi	x6, x0, 4	# 303
	mul		x6, x12, x6	# 303
	add		x6, x11, x6	# 303
	flw		f2, 0(x6)	# 303
	addi	x6, x26, 568	# 303
	addi	x14, x0, 4	# 303
	mul		x14, x12, x14	# 303
	add		x6, x6, x14	# 303
	flw		f3, 0(x6)	# 303
	fmul	f3, f1, f3	# 303
	fadd	f2, f2, f3	# 303
	addi	x6, x0, 4	# 303
	mul		x6, x12, x6	# 303
	add		x6, x11, x6	# 303
	fsw		f2, 0(x6)	# 303
	addi	x6, x0, 4	# 304
	mul		x6, x13, x6	# 304
	add		x6, x11, x6	# 304
	flw		f2, 0(x6)	# 304
	addi	x6, x26, 568	# 304
	addi	x14, x0, 4	# 304
	mul		x14, x13, x14	# 304
	add		x6, x6, x14	# 304
	flw		f3, 0(x6)	# 304
	fmul	f1, f1, f3	# 304
	fadd	f1, f2, f1	# 304
	addi	x6, x0, 4	# 304
	mul		x6, x13, x6	# 304
	add		x6, x11, x6	# 304
	fsw		f1, 0(x6)	# 304
	lw		x6, 28(x10)	# 471
	addi	x14, x0, 4	# 476
	mul		x14, x12, x14	# 476
	add		x6, x6, x14	# 476
	flw		f1, 0(x6)	# 476
	flw		f2, -36(x2)	# 1867
	fmul	f1, f2, f1	# 1867
	addi	x6, x26, 536	# 1870
	addi	x14, x0, 4	# 1870
	mul		x14, x8, x14	# 1870
	add		x6, x6, x14	# 1870
	lw		x6, 0(x6)	# 1870
	lw		x27, -16(x2)	# 1870
	fsw		f1, -88(x2)	# 1870
	addi	x5, x6, 0
	addi	x4, x8, 0
	sw		x1, -92(x2)	# 1870
	addi	x2, x2, -96	# 1870
	lw		x31, 0(x27)	# 1870
	jalr	x1, x31, 0	# 1870
	addi	x2, x2, 96	# 1870
	lw		x1, -92(x2)	# 1870
	lw		x5, -68(x2)	# 1870
	beq		x4, x5, beq.96821	# 1870
	jal		x0, beq_cont.96820	# 1870
beq.96821:
	addi	x4, x0, 0	# 292
	addi	x6, x26, 568	# 292
	addi	x7, x0, 4	# 292
	mul		x4, x4, x7	# 292
	add		x4, x6, x4	# 292
	flw		f1, 0(x4)	# 292
	addi	x4, x0, 0	# 292
	addi	x6, x26, 312	# 292
	addi	x7, x0, 4	# 292
	mul		x4, x4, x7	# 292
	add		x4, x6, x4	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	addi	x4, x0, 1	# 292
	addi	x6, x26, 568	# 292
	addi	x7, x0, 4	# 292
	mul		x4, x4, x7	# 292
	add		x4, x6, x4	# 292
	flw		f2, 0(x4)	# 292
	addi	x4, x0, 1	# 292
	addi	x6, x26, 312	# 292
	addi	x7, x0, 4	# 292
	mul		x4, x4, x7	# 292
	add		x4, x6, x4	# 292
	flw		f3, 0(x4)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	addi	x4, x0, 2	# 292
	addi	x6, x26, 568	# 292
	addi	x7, x0, 4	# 292
	mul		x4, x4, x7	# 292
	add		x4, x6, x4	# 292
	flw		f2, 0(x4)	# 292
	addi	x4, x0, 2	# 292
	addi	x6, x26, 312	# 292
	addi	x7, x0, 4	# 292
	mul		x4, x4, x7	# 292
	add		x4, x6, x4	# 292
	flw		f3, 0(x4)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	fsub	f1, f0, f1	# 4
	flw		f2, -76(x2)	# 1871
	fmul	f1, f1, f2	# 1871
	addi	x4, x0, 0	# 292
	addi	x6, x0, 4	# 292
	mul		x4, x4, x6	# 292
	lw		x6, -52(x2)	# 292
	add		x4, x6, x4	# 292
	flw		f3, 0(x4)	# 292
	addi	x4, x0, 0	# 292
	addi	x7, x26, 312	# 292
	addi	x8, x0, 4	# 292
	mul		x4, x4, x8	# 292
	add		x4, x7, x4	# 292
	flw		f4, 0(x4)	# 292
	fmul	f3, f3, f4	# 292
	addi	x4, x0, 1	# 292
	addi	x7, x0, 4	# 292
	mul		x4, x4, x7	# 292
	add		x4, x6, x4	# 292
	flw		f4, 0(x4)	# 292
	addi	x4, x0, 1	# 292
	addi	x7, x26, 312	# 292
	addi	x8, x0, 4	# 292
	mul		x4, x4, x8	# 292
	add		x4, x7, x4	# 292
	flw		f5, 0(x4)	# 292
	fmul	f4, f4, f5	# 292
	fadd	f3, f3, f4	# 292
	addi	x4, x0, 2	# 292
	addi	x7, x0, 4	# 292
	mul		x4, x4, x7	# 292
	add		x4, x6, x4	# 292
	flw		f4, 0(x4)	# 292
	addi	x4, x0, 2	# 292
	addi	x7, x26, 312	# 292
	addi	x8, x0, 4	# 292
	mul		x4, x4, x8	# 292
	add		x4, x7, x4	# 292
	flw		f5, 0(x4)	# 292
	fmul	f4, f4, f5	# 292
	fadd	f3, f3, f4	# 292
	fsub	f3, f0, f3	# 4
	flw		f4, -40(x2)	# 2
	fle		x31, f1, f4	# 2
	beq		x31, x0, fle_else.96823	# 2
	jal		x0, fle_cont.96822	# 2
fle_else.96823:
	addi	x4, x26, 604	# 302
	addi	x7, x0, 4	# 302
	mul		x7, x5, x7	# 302
	add		x4, x4, x7	# 302
	flw		f5, 0(x4)	# 302
	addi	x4, x26, 580	# 302
	addi	x7, x0, 4	# 302
	mul		x7, x5, x7	# 302
	add		x4, x4, x7	# 302
	flw		f6, 0(x4)	# 302
	fmul	f6, f1, f6	# 302
	fadd	f5, f5, f6	# 302
	addi	x4, x26, 604	# 302
	addi	x7, x0, 4	# 302
	mul		x7, x5, x7	# 302
	add		x4, x4, x7	# 302
	fsw		f5, 0(x4)	# 302
	addi	x4, x26, 604	# 303
	addi	x7, x0, 4	# 303
	lw		x8, -48(x2)	# 303
	mul		x7, x8, x7	# 303
	add		x4, x4, x7	# 303
	flw		f5, 0(x4)	# 303
	addi	x4, x26, 580	# 303
	addi	x7, x0, 4	# 303
	mul		x7, x8, x7	# 303
	add		x4, x4, x7	# 303
	flw		f6, 0(x4)	# 303
	fmul	f6, f1, f6	# 303
	fadd	f5, f5, f6	# 303
	addi	x4, x26, 604	# 303
	addi	x7, x0, 4	# 303
	mul		x7, x8, x7	# 303
	add		x4, x4, x7	# 303
	fsw		f5, 0(x4)	# 303
	addi	x4, x26, 604	# 304
	addi	x7, x0, 4	# 304
	lw		x9, -44(x2)	# 304
	mul		x7, x9, x7	# 304
	add		x4, x4, x7	# 304
	flw		f5, 0(x4)	# 304
	addi	x4, x26, 580	# 304
	addi	x7, x0, 4	# 304
	mul		x7, x9, x7	# 304
	add		x4, x4, x7	# 304
	flw		f6, 0(x4)	# 304
	fmul	f1, f1, f6	# 304
	fadd	f1, f5, f1	# 304
	addi	x4, x26, 604	# 304
	addi	x7, x0, 4	# 304
	mul		x7, x9, x7	# 304
	add		x4, x4, x7	# 304
	fsw		f1, 0(x4)	# 304
fle_cont.96822:
	fle		x31, f3, f4	# 2
	beq		x31, x0, fle_else.96825	# 2
	jal		x0, fle_cont.96824	# 2
fle_else.96825:
	fmul	f1, f3, f3	# 8
	fmul	f1, f1, f1	# 8
	flw		f3, -88(x2)	# 1794
	fmul	f1, f1, f3	# 1794
	addi	x4, x26, 604	# 1795
	addi	x7, x0, 4	# 1795
	mul		x7, x5, x7	# 1795
	add		x4, x4, x7	# 1795
	flw		f4, 0(x4)	# 1795
	fadd	f4, f4, f1	# 1795
	addi	x4, x26, 604	# 1795
	addi	x7, x0, 4	# 1795
	mul		x7, x5, x7	# 1795
	add		x4, x4, x7	# 1795
	fsw		f4, 0(x4)	# 1795
	addi	x4, x26, 604	# 1796
	addi	x7, x0, 4	# 1796
	lw		x8, -48(x2)	# 1796
	mul		x7, x8, x7	# 1796
	add		x4, x4, x7	# 1796
	flw		f4, 0(x4)	# 1796
	fadd	f4, f4, f1	# 1796
	addi	x4, x26, 604	# 1796
	addi	x7, x0, 4	# 1796
	mul		x7, x8, x7	# 1796
	add		x4, x4, x7	# 1796
	fsw		f4, 0(x4)	# 1796
	addi	x4, x26, 604	# 1797
	addi	x7, x0, 4	# 1797
	lw		x9, -44(x2)	# 1797
	mul		x7, x9, x7	# 1797
	add		x4, x4, x7	# 1797
	flw		f4, 0(x4)	# 1797
	fadd	f1, f4, f1	# 1797
	addi	x4, x26, 604	# 1797
	addi	x7, x0, 4	# 1797
	mul		x7, x9, x7	# 1797
	add		x4, x4, x7	# 1797
	fsw		f1, 0(x4)	# 1797
fle_cont.96824:
beq_cont.96820:
	addi	x4, x26, 552	# 259
	addi	x6, x0, 4	# 259
	mul		x6, x5, x6	# 259
	add		x4, x4, x6	# 259
	flw		f1, 0(x4)	# 259
	addi	x4, x26, 648	# 259
	addi	x6, x0, 4	# 259
	mul		x6, x5, x6	# 259
	add		x4, x4, x6	# 259
	fsw		f1, 0(x4)	# 259
	addi	x4, x26, 552	# 260
	addi	x6, x0, 4	# 260
	lw		x7, -48(x2)	# 260
	mul		x6, x7, x6	# 260
	add		x4, x4, x6	# 260
	flw		f1, 0(x4)	# 260
	addi	x4, x26, 648	# 260
	addi	x6, x0, 4	# 260
	mul		x6, x7, x6	# 260
	add		x4, x4, x6	# 260
	fsw		f1, 0(x4)	# 260
	addi	x4, x26, 552	# 261
	addi	x6, x0, 4	# 261
	lw		x8, -44(x2)	# 261
	mul		x6, x8, x6	# 261
	add		x4, x4, x6	# 261
	flw		f1, 0(x4)	# 261
	addi	x4, x26, 648	# 261
	addi	x6, x0, 4	# 261
	mul		x6, x8, x6	# 261
	add		x4, x4, x6	# 261
	fsw		f1, 0(x4)	# 261
	addi	x4, x26, 0	# 1315
	addi	x6, x0, 4	# 1315
	mul		x6, x5, x6	# 1315
	add		x4, x4, x6	# 1315
	lw		x4, 0(x4)	# 1315
	sub		x4, x4, x7	# 1315
	addi	x6, x26, 552	# 1315
	lw		x27, -12(x2)	# 1315
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -92(x2)	# 1315
	addi	x2, x2, -96	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 96	# 1315
	lw		x1, -92(x2)	# 1315
	addi	x4, x26, 1736	# 1878
	addi	x5, x0, 4	# 1878
	lw		x6, -68(x2)	# 1878
	mul		x5, x6, x5	# 1878
	add		x4, x4, x5	# 1878
	lw		x4, 0(x4)	# 1878
	lw		x5, -48(x2)	# 1878
	sub		x4, x4, x5	# 1878
	flw		f1, -76(x2)	# 1878
	flw		f2, -88(x2)	# 1878
	lw		x7, -52(x2)	# 1878
	lw		x27, -8(x2)	# 1878
	addi	x5, x7, 0
	sw		x1, -92(x2)	# 1878
	addi	x2, x2, -96	# 1878
	lw		x31, 0(x27)	# 1878
	jalr	x1, x31, 0	# 1878
	addi	x2, x2, 96	# 1878
	lw		x1, -92(x2)	# 1878
	fadd	f1, f0, f28	# 1881
	flw		f2, -36(x2)	# 6
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.96826	# 6
	jalr	x0, x1, 0	# 1892
fle_else.96826:
	lw		x4, -64(x2)	# 1883
	lw		x5, -24(x2)	# 1883
	ble		x5, x4, ble_cont.96828	# 1883
	addi	x5, x4, 1	# 1884
	addi	x6, x0, -1	# 1884
	addi	x7, x0, 4	# 1884
	mul		x5, x5, x7	# 1884
	lw		x7, -60(x2)	# 1884
	add		x5, x7, x5	# 1884
	sw		x6, 0(x5)	# 1884
ble_cont.96828:
	lw		x5, -44(x2)	# 1887
	lw		x6, -72(x2)	# 1887
	beq		x6, x5, beq.96829	# 1887
	jalr	x0, x1, 0	# 1890
beq.96829:
	fadd	f1, f0, f16	# 1888
	lw		x5, -84(x2)	# 461
	lw		x5, 28(x5)	# 461
	addi	x6, x0, 4	# 466
	lw		x7, -68(x2)	# 466
	mul		x6, x7, x6	# 466
	add		x5, x5, x6	# 466
	flw		f3, 0(x5)	# 466
	fsub	f1, f1, f3	# 1888
	fmul	f1, f2, f1	# 1888
	lw		x5, -48(x2)	# 1889
	add		x4, x4, x5	# 1889
	addi	x5, x26, 548	# 1889
	addi	x6, x0, 4	# 1889
	mul		x6, x7, x6	# 1889
	add		x5, x5, x6	# 1889
	flw		f2, 0(x5)	# 1889
	flw		f3, -4(x2)	# 1889
	fadd	f2, f3, f2	# 1889
	lw		x5, -52(x2)	# 1889
	lw		x6, -20(x2)	# 1889
	lw		x27, 0(x2)	# 1889
	lw		x31, 0(x27)	# 1889
	jalr	x0, x31, 0	# 1889
beq.96809:
	addi	x4, x0, 4	# 1897
	lw		x5, -64(x2)	# 1897
	mul		x4, x5, x4	# 1897
	lw		x7, -60(x2)	# 1897
	add		x4, x7, x4	# 1897
	lw		x7, -56(x2)	# 1897
	sw		x7, 0(x4)	# 1897
	beq		x5, x6, beq.96831	# 1899
	addi	x4, x0, 4	# 292
	mul		x4, x6, x4	# 292
	lw		x5, -52(x2)	# 292
	add		x4, x5, x4	# 292
	flw		f1, 0(x4)	# 292
	addi	x4, x26, 312	# 292
	addi	x7, x0, 4	# 292
	mul		x7, x6, x7	# 292
	add		x4, x4, x7	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	addi	x4, x0, 4	# 292
	lw		x7, -48(x2)	# 292
	mul		x4, x7, x4	# 292
	add		x4, x5, x4	# 292
	flw		f2, 0(x4)	# 292
	addi	x4, x26, 312	# 292
	addi	x8, x0, 4	# 292
	mul		x8, x7, x8	# 292
	add		x4, x4, x8	# 292
	flw		f3, 0(x4)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	addi	x4, x0, 4	# 292
	lw		x8, -44(x2)	# 292
	mul		x4, x8, x4	# 292
	add		x4, x5, x4	# 292
	flw		f2, 0(x4)	# 292
	addi	x4, x26, 312	# 292
	addi	x5, x0, 4	# 292
	mul		x5, x8, x5	# 292
	add		x4, x4, x5	# 292
	flw		f3, 0(x4)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	fsub	f1, f0, f1	# 4
	flw		f2, -40(x2)	# 2
	fle		x31, f1, f2	# 2
	beq		x31, x0, fle_else.96832	# 2
	jalr	x0, x1, 0	# 1910
fle_else.96832:
	fmul	f2, f1, f1	# 8
	fmul	f1, f2, f1	# 1905
	flw		f2, -36(x2)	# 1905
	fmul	f1, f1, f2	# 1905
	addi	x4, x26, 324	# 1905
	addi	x5, x0, 4	# 1905
	mul		x5, x6, x5	# 1905
	add		x4, x4, x5	# 1905
	flw		f2, 0(x4)	# 1905
	fmul	f1, f1, f2	# 1905
	addi	x4, x26, 604	# 1906
	addi	x5, x0, 4	# 1906
	mul		x5, x6, x5	# 1906
	add		x4, x4, x5	# 1906
	flw		f2, 0(x4)	# 1906
	fadd	f2, f2, f1	# 1906
	addi	x4, x26, 604	# 1906
	addi	x5, x0, 4	# 1906
	mul		x5, x6, x5	# 1906
	add		x4, x4, x5	# 1906
	fsw		f2, 0(x4)	# 1906
	addi	x4, x26, 604	# 1907
	addi	x5, x0, 4	# 1907
	mul		x5, x7, x5	# 1907
	add		x4, x4, x5	# 1907
	flw		f2, 0(x4)	# 1907
	fadd	f2, f2, f1	# 1907
	addi	x4, x26, 604	# 1907
	addi	x5, x0, 4	# 1907
	mul		x5, x7, x5	# 1907
	add		x4, x4, x5	# 1907
	fsw		f2, 0(x4)	# 1907
	addi	x4, x26, 604	# 1908
	addi	x5, x0, 4	# 1908
	mul		x5, x8, x5	# 1908
	add		x4, x4, x5	# 1908
	flw		f2, 0(x4)	# 1908
	fadd	f1, f2, f1	# 1908
	addi	x4, x26, 604	# 1908
	addi	x5, x0, 4	# 1908
	mul		x5, x8, x5	# 1908
	add		x4, x4, x5	# 1908
	fsw		f1, 0(x4)	# 1908
	jalr	x0, x1, 0	# 1908
beq.96831:
	jalr	x0, x1, 0	# 1911
trace_diffuse_ray.2877.13344:
	lw		x5, 36(x27)	# 1634
	lw		x6, 32(x27)	# 1634
	lw		x7, 28(x27)	# 1634
	lw		x8, 24(x27)	# 1634
	lw		x9, 20(x27)	# 1634
	lw		x10, 16(x27)	# 1634
	lw		x11, 12(x27)	# 1634
	flw		f2, 8(x27)	# 1634
	flw		f3, 4(x27)	# 1634
	addi	x12, x26, 548	# 1634
	addi	x13, x0, 4	# 1634
	mul		x13, x10, x13	# 1634
	add		x12, x12, x13	# 1634
	fsw		f2, 0(x12)	# 1634
	addi	x12, x26, 536	# 1635
	addi	x13, x0, 4	# 1635
	mul		x13, x10, x13	# 1635
	add		x12, x12, x13	# 1635
	lw		x12, 0(x12)	# 1635
	fsw		f1, 0(x2)	# 1635
	fsw		f3, -4(x2)	# 1635
	sw		x7, -8(x2)	# 1635
	sw		x5, -12(x2)	# 1635
	sw		x8, -16(x2)	# 1635
	sw		x9, -20(x2)	# 1635
	sw		x11, -24(x2)	# 1635
	sw		x4, -28(x2)	# 1635
	sw		x10, -32(x2)	# 1635
	addi	x5, x12, 0
	addi	x27, x6, 0
	addi	x6, x4, 0
	addi	x4, x10, 0
	sw		x1, -36(x2)	# 1635
	addi	x2, x2, -40	# 1635
	lw		x31, 0(x27)	# 1635
	jalr	x1, x31, 0	# 1635
	addi	x2, x2, 40	# 1635
	lw		x1, -36(x2)	# 1635
	addi	x4, x26, 548	# 1636
	addi	x5, x0, 4	# 1636
	lw		x6, -32(x2)	# 1636
	mul		x5, x6, x5	# 1636
	add		x4, x4, x5	# 1636
	flw		f1, 0(x4)	# 1636
	fadd	f2, f0, f25	# 1638
	fle		x31, f1, f2	# 6
	beq		x31, x0, fle_else.96837	# 6
	addi	x4, x0, 0	# 1640
	jal		x0, fle_cont.96836	# 6
fle_else.96837:
	fadd	f2, f0, f29	# 1639
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.96839	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.96838	# 6
fle_else.96839:
	addi	x4, x0, 1	# 6
fle_cont.96838:
fle_cont.96836:
	beq		x4, x6, beq.96840	# 1927
	addi	x4, x26, 564	# 1928
	addi	x5, x0, 4	# 1928
	mul		x5, x6, x5	# 1928
	add		x4, x4, x5	# 1928
	lw		x4, 0(x4)	# 1928
	addi	x5, x26, 48	# 1928
	addi	x7, x0, 4	# 1928
	mul		x4, x4, x7	# 1928
	add		x4, x5, x4	# 1928
	lw		x4, 0(x4)	# 1928
	lw		x5, -28(x2)	# 639
	lw		x5, 0(x5)	# 639
	lw		x7, 4(x4)	# 353
	lw		x8, -24(x2)	# 1693
	sw		x4, -36(x2)	# 1693
	beq		x7, x8, beq.96842	# 1693
	addi	x5, x0, 2	# 1695
	beq		x7, x5, beq.96844	# 1695
	lw		x27, -16(x2)	# 1698
	sw		x1, -40(x2)	# 1698
	addi	x2, x2, -44	# 1698
	lw		x31, 0(x27)	# 1698
	jalr	x1, x31, 0	# 1698
	addi	x2, x2, 44	# 1698
	lw		x1, -40(x2)	# 1698
	jal		x0, beq_cont.96843	# 1695
beq.96844:
	lw		x5, 16(x4)	# 391
	addi	x7, x0, 4	# 396
	mul		x7, x6, x7	# 396
	add		x5, x5, x7	# 396
	flw		f1, 0(x5)	# 396
	fsub	f1, f0, f1	# 4
	addi	x5, x26, 568	# 1663
	addi	x7, x0, 4	# 1663
	mul		x7, x6, x7	# 1663
	add		x5, x5, x7	# 1663
	fsw		f1, 0(x5)	# 1663
	lw		x5, 16(x4)	# 401
	addi	x7, x0, 4	# 406
	mul		x7, x8, x7	# 406
	add		x5, x5, x7	# 406
	flw		f1, 0(x5)	# 406
	fsub	f1, f0, f1	# 4
	addi	x5, x26, 568	# 1664
	addi	x7, x0, 4	# 1664
	mul		x7, x8, x7	# 1664
	add		x5, x5, x7	# 1664
	fsw		f1, 0(x5)	# 1664
	lw		x5, 16(x4)	# 411
	addi	x7, x0, 4	# 416
	lw		x9, -20(x2)	# 416
	mul		x7, x9, x7	# 416
	add		x5, x5, x7	# 416
	flw		f1, 0(x5)	# 416
	fsub	f1, f0, f1	# 4
	addi	x5, x26, 568	# 1665
	addi	x7, x0, 4	# 1665
	mul		x7, x9, x7	# 1665
	add		x5, x5, x7	# 1665
	fsw		f1, 0(x5)	# 1665
beq_cont.96843:
	jal		x0, beq_cont.96841	# 1693
beq.96842:
	addi	x7, x26, 544	# 1654
	addi	x9, x0, 4	# 1654
	mul		x9, x6, x9	# 1654
	add		x7, x7, x9	# 1654
	lw		x7, 0(x7)	# 1654
	fadd	f1, f0, f0	# 254
	addi	x9, x26, 568	# 247
	addi	x10, x0, 4	# 247
	mul		x10, x6, x10	# 247
	add		x9, x9, x10	# 247
	fsw		f1, 0(x9)	# 247
	addi	x9, x26, 568	# 248
	addi	x10, x0, 4	# 248
	mul		x10, x8, x10	# 248
	add		x9, x9, x10	# 248
	fsw		f1, 0(x9)	# 248
	addi	x9, x26, 568	# 249
	addi	x10, x0, 4	# 249
	lw		x11, -20(x2)	# 249
	mul		x10, x11, x10	# 249
	add		x9, x9, x10	# 249
	fsw		f1, 0(x9)	# 249
	sub		x9, x7, x8	# 1657
	sub		x7, x7, x8	# 1657
	addi	x10, x0, 4	# 1657
	mul		x7, x7, x10	# 1657
	add		x5, x5, x7	# 1657
	flw		f1, 0(x5)	# 1657
	fadd	f2, f0, f0	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.96846	# 1
	fadd	f1, f0, f0	# 212
	jal		x0, feq_cont.96845	# 1
feq_else.96846:
	fadd	f2, f0, f0	# 2
	fle		x31, f1, f2	# 2
	beq		x31, x0, fle_else.96848	# 2
	fadd	f1, f0, f23	# 214
	jal		x0, fle_cont.96847	# 2
fle_else.96848:
	fadd	f1, f0, f16	# 213
fle_cont.96847:
feq_cont.96845:
	fsub	f1, f0, f1	# 4
	addi	x5, x26, 568	# 1657
	addi	x7, x0, 4	# 1657
	mul		x7, x9, x7	# 1657
	add		x5, x5, x7	# 1657
	fsw		f1, 0(x5)	# 1657
beq_cont.96841:
	addi	x5, x26, 552	# 1930
	lw		x4, -36(x2)	# 1930
	lw		x27, -12(x2)	# 1930
	sw		x1, -40(x2)	# 1930
	addi	x2, x2, -44	# 1930
	lw		x31, 0(x27)	# 1930
	jalr	x1, x31, 0	# 1930
	addi	x2, x2, 44	# 1930
	lw		x1, -40(x2)	# 1930
	addi	x4, x26, 536	# 1933
	addi	x5, x0, 4	# 1933
	lw		x6, -32(x2)	# 1933
	mul		x5, x6, x5	# 1933
	add		x4, x4, x5	# 1933
	lw		x5, 0(x4)	# 1933
	lw		x27, -8(x2)	# 1933
	addi	x4, x6, 0
	sw		x1, -40(x2)	# 1933
	addi	x2, x2, -44	# 1933
	lw		x31, 0(x27)	# 1933
	jalr	x1, x31, 0	# 1933
	addi	x2, x2, 44	# 1933
	lw		x1, -40(x2)	# 1933
	lw		x5, -32(x2)	# 1933
	beq		x4, x5, beq.96849	# 1933
	jalr	x0, x1, 0	# 1937
beq.96849:
	addi	x4, x26, 568	# 292
	addi	x6, x0, 4	# 292
	mul		x6, x5, x6	# 292
	add		x4, x4, x6	# 292
	flw		f1, 0(x4)	# 292
	addi	x4, x26, 312	# 292
	addi	x6, x0, 4	# 292
	mul		x6, x5, x6	# 292
	add		x4, x4, x6	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	addi	x4, x26, 568	# 292
	addi	x6, x0, 4	# 292
	lw		x7, -24(x2)	# 292
	mul		x6, x7, x6	# 292
	add		x4, x4, x6	# 292
	flw		f2, 0(x4)	# 292
	addi	x4, x26, 312	# 292
	addi	x6, x0, 4	# 292
	mul		x6, x7, x6	# 292
	add		x4, x4, x6	# 292
	flw		f3, 0(x4)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	addi	x4, x26, 568	# 292
	addi	x6, x0, 4	# 292
	lw		x8, -20(x2)	# 292
	mul		x6, x8, x6	# 292
	add		x4, x4, x6	# 292
	flw		f2, 0(x4)	# 292
	addi	x4, x26, 312	# 292
	addi	x6, x0, 4	# 292
	mul		x6, x8, x6	# 292
	add		x4, x4, x6	# 292
	flw		f3, 0(x4)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	fsub	f1, f0, f1	# 4
	flw		f2, -4(x2)	# 2
	fle		x31, f1, f2	# 2
	beq		x31, x0, fle_cont.96851	# 2
	fadd	f1, f0, f2	# 1935
fle_cont.96851:
	flw		f2, 0(x2)	# 1936
	fmul	f1, f2, f1	# 1936
	lw		x4, -36(x2)	# 461
	lw		x4, 28(x4)	# 461
	addi	x6, x0, 4	# 466
	mul		x6, x5, x6	# 466
	add		x4, x4, x6	# 466
	flw		f2, 0(x4)	# 466
	fmul	f1, f1, f2	# 1936
	addi	x4, x26, 592	# 302
	addi	x6, x0, 4	# 302
	mul		x6, x5, x6	# 302
	add		x4, x4, x6	# 302
	flw		f2, 0(x4)	# 302
	addi	x4, x26, 580	# 302
	addi	x6, x0, 4	# 302
	mul		x6, x5, x6	# 302
	add		x4, x4, x6	# 302
	flw		f3, 0(x4)	# 302
	fmul	f3, f1, f3	# 302
	fadd	f2, f2, f3	# 302
	addi	x4, x26, 592	# 302
	addi	x6, x0, 4	# 302
	mul		x5, x5, x6	# 302
	add		x4, x4, x5	# 302
	fsw		f2, 0(x4)	# 302
	addi	x4, x26, 592	# 303
	addi	x5, x0, 4	# 303
	mul		x5, x7, x5	# 303
	add		x4, x4, x5	# 303
	flw		f2, 0(x4)	# 303
	addi	x4, x26, 580	# 303
	addi	x5, x0, 4	# 303
	mul		x5, x7, x5	# 303
	add		x4, x4, x5	# 303
	flw		f3, 0(x4)	# 303
	fmul	f3, f1, f3	# 303
	fadd	f2, f2, f3	# 303
	addi	x4, x26, 592	# 303
	addi	x5, x0, 4	# 303
	mul		x5, x7, x5	# 303
	add		x4, x4, x5	# 303
	fsw		f2, 0(x4)	# 303
	addi	x4, x26, 592	# 304
	addi	x5, x0, 4	# 304
	mul		x5, x8, x5	# 304
	add		x4, x4, x5	# 304
	flw		f2, 0(x4)	# 304
	addi	x4, x26, 580	# 304
	addi	x5, x0, 4	# 304
	mul		x5, x8, x5	# 304
	add		x4, x4, x5	# 304
	flw		f3, 0(x4)	# 304
	fmul	f1, f1, f3	# 304
	fadd	f1, f2, f1	# 304
	addi	x4, x26, 592	# 304
	addi	x5, x0, 4	# 304
	mul		x5, x8, x5	# 304
	add		x4, x4, x5	# 304
	fsw		f1, 0(x4)	# 304
	jalr	x0, x1, 0	# 304
beq.96840:
	jalr	x0, x1, 0	# 1938
iter_trace_diffuse_rays.2880.13347:
	lw		x8, 20(x27)	# 1944
	lw		x9, 16(x27)	# 1944
	lw		x10, 12(x27)	# 1944
	lw		x11, 8(x27)	# 1944
	flw		f1, 4(x27)	# 1944
	ble		x10, x7, ble.96854	# 1944
	jalr	x0, x1, 0	# 1955
ble.96854:
	addi	x12, x0, 4	# 1945
	mul		x12, x7, x12	# 1945
	add		x12, x4, x12	# 1945
	lw		x12, 0(x12)	# 1945
	lw		x12, 0(x12)	# 639
	addi	x13, x0, 4	# 292
	mul		x13, x10, x13	# 292
	add		x13, x12, x13	# 292
	flw		f2, 0(x13)	# 292
	addi	x13, x0, 4	# 292
	mul		x13, x10, x13	# 292
	add		x13, x5, x13	# 292
	flw		f3, 0(x13)	# 292
	fmul	f2, f2, f3	# 292
	addi	x13, x0, 4	# 292
	mul		x13, x11, x13	# 292
	add		x13, x12, x13	# 292
	flw		f3, 0(x13)	# 292
	addi	x13, x0, 4	# 292
	mul		x13, x11, x13	# 292
	add		x13, x5, x13	# 292
	flw		f4, 0(x13)	# 292
	fmul	f3, f3, f4	# 292
	fadd	f2, f2, f3	# 292
	addi	x13, x0, 4	# 292
	mul		x13, x9, x13	# 292
	add		x12, x12, x13	# 292
	flw		f3, 0(x12)	# 292
	addi	x12, x0, 4	# 292
	mul		x12, x9, x12	# 292
	add		x12, x5, x12	# 292
	flw		f4, 0(x12)	# 292
	fmul	f3, f3, f4	# 292
	fadd	f2, f2, f3	# 292
	sw		x6, 0(x2)	# 3
	sw		x27, -4(x2)	# 3
	sw		x8, -8(x2)	# 3
	fsw		f1, -12(x2)	# 3
	sw		x11, -16(x2)	# 3
	sw		x5, -20(x2)	# 3
	sw		x4, -24(x2)	# 3
	sw		x10, -28(x2)	# 3
	sw		x9, -32(x2)	# 3
	sw		x7, -36(x2)	# 3
	fle		x31, f1, f2	# 3
	beq		x31, x0, fle_else.96857	# 3
	addi	x12, x0, 4	# 1952
	mul		x12, x7, x12	# 1952
	add		x12, x4, x12	# 1952
	lw		x12, 0(x12)	# 1952
	lui		x13, %hi(l.23371)	# 1952
	ori		x13, x0, %lo(l.23371)	# 1952
	flw		f3, 0(x13)	# 1952
	fdiv	f2, f2, f3	# 1952
	addi	x4, x12, 0
	addi	x27, x8, 0
	fadd	f1, f0, f2
	sw		x1, -40(x2)	# 1952
	addi	x2, x2, -44	# 1952
	lw		x31, 0(x27)	# 1952
	jalr	x1, x31, 0	# 1952
	addi	x2, x2, 44	# 1952
	lw		x1, -40(x2)	# 1952
	jal		x0, fle_cont.96856	# 3
fle_else.96857:
	addi	x12, x7, 1	# 1950
	addi	x13, x0, 4	# 1950
	mul		x12, x12, x13	# 1950
	add		x12, x4, x12	# 1950
	lw		x12, 0(x12)	# 1950
	lui		x13, %hi(l.23366)	# 1950
	ori		x13, x0, %lo(l.23366)	# 1950
	flw		f3, 0(x13)	# 1950
	fdiv	f2, f2, f3	# 1950
	addi	x4, x12, 0
	addi	x27, x8, 0
	fadd	f1, f0, f2
	sw		x1, -40(x2)	# 1950
	addi	x2, x2, -44	# 1950
	lw		x31, 0(x27)	# 1950
	jalr	x1, x31, 0	# 1950
	addi	x2, x2, 44	# 1950
	lw		x1, -40(x2)	# 1950
fle_cont.96856:
	lw		x4, -32(x2)	# 1954
	lw		x5, -36(x2)	# 1954
	sub		x5, x5, x4	# 1954
	lw		x6, -28(x2)	# 1944
	ble		x6, x5, ble.96858	# 1944
	jalr	x0, x1, 0	# 1955
ble.96858:
	addi	x7, x0, 4	# 1945
	mul		x7, x5, x7	# 1945
	lw		x8, -24(x2)	# 1945
	add		x7, x8, x7	# 1945
	lw		x7, 0(x7)	# 1945
	lw		x7, 0(x7)	# 639
	addi	x9, x0, 4	# 292
	mul		x9, x6, x9	# 292
	add		x9, x7, x9	# 292
	flw		f1, 0(x9)	# 292
	addi	x9, x0, 4	# 292
	mul		x6, x6, x9	# 292
	lw		x9, -20(x2)	# 292
	add		x6, x9, x6	# 292
	flw		f2, 0(x6)	# 292
	fmul	f1, f1, f2	# 292
	addi	x6, x0, 4	# 292
	lw		x10, -16(x2)	# 292
	mul		x6, x10, x6	# 292
	add		x6, x7, x6	# 292
	flw		f2, 0(x6)	# 292
	addi	x6, x0, 4	# 292
	mul		x6, x10, x6	# 292
	add		x6, x9, x6	# 292
	flw		f3, 0(x6)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	addi	x6, x0, 4	# 292
	mul		x6, x4, x6	# 292
	add		x6, x7, x6	# 292
	flw		f2, 0(x6)	# 292
	addi	x6, x0, 4	# 292
	mul		x6, x4, x6	# 292
	add		x6, x9, x6	# 292
	flw		f3, 0(x6)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	flw		f2, -12(x2)	# 3
	sw		x5, -40(x2)	# 3
	fle		x31, f2, f1	# 3
	beq		x31, x0, fle_else.96861	# 3
	addi	x6, x0, 4	# 1952
	mul		x6, x5, x6	# 1952
	add		x6, x8, x6	# 1952
	lw		x6, 0(x6)	# 1952
	lui		x7, %hi(l.23371)	# 1952
	ori		x7, x0, %lo(l.23371)	# 1952
	flw		f2, 0(x7)	# 1952
	fdiv	f1, f1, f2	# 1952
	lw		x27, -8(x2)	# 1952
	addi	x4, x6, 0
	sw		x1, -44(x2)	# 1952
	addi	x2, x2, -48	# 1952
	lw		x31, 0(x27)	# 1952
	jalr	x1, x31, 0	# 1952
	addi	x2, x2, 48	# 1952
	lw		x1, -44(x2)	# 1952
	jal		x0, fle_cont.96860	# 3
fle_else.96861:
	addi	x6, x5, 1	# 1950
	addi	x7, x0, 4	# 1950
	mul		x6, x6, x7	# 1950
	add		x6, x8, x6	# 1950
	lw		x6, 0(x6)	# 1950
	lui		x7, %hi(l.23366)	# 1950
	ori		x7, x0, %lo(l.23366)	# 1950
	flw		f2, 0(x7)	# 1950
	fdiv	f1, f1, f2	# 1950
	lw		x27, -8(x2)	# 1950
	addi	x4, x6, 0
	sw		x1, -44(x2)	# 1950
	addi	x2, x2, -48	# 1950
	lw		x31, 0(x27)	# 1950
	jalr	x1, x31, 0	# 1950
	addi	x2, x2, 48	# 1950
	lw		x1, -44(x2)	# 1950
fle_cont.96860:
	lw		x4, -32(x2)	# 1954
	lw		x5, -40(x2)	# 1954
	sub		x7, x5, x4	# 1954
	lw		x4, -24(x2)	# 1954
	lw		x5, -20(x2)	# 1954
	lw		x6, 0(x2)	# 1954
	lw		x27, -4(x2)	# 1954
	lw		x31, 0(x27)	# 1954
	jalr	x0, x31, 0	# 1954
trace_diffuse_ray_80percent.2889.13352:
	lw		x7, 24(x27)	# 1971
	lw		x8, 20(x27)	# 1971
	lw		x9, 16(x27)	# 1971
	lw		x10, 12(x27)	# 1971
	lw		x11, 8(x27)	# 1971
	lw		x12, 4(x27)	# 1971
	sw		x10, 0(x2)	# 1971
	sw		x9, -4(x2)	# 1971
	sw		x5, -8(x2)	# 1971
	sw		x8, -12(x2)	# 1971
	sw		x7, -16(x2)	# 1971
	sw		x11, -20(x2)	# 1971
	sw		x6, -24(x2)	# 1971
	sw		x12, -28(x2)	# 1971
	sw		x4, -32(x2)	# 1971
	beq		x4, x11, beq_cont.96862	# 1971
	addi	x13, x0, 0	# 1972
	addi	x14, x26, 716	# 1972
	addi	x15, x0, 4	# 1972
	mul		x13, x13, x15	# 1972
	add		x13, x14, x13	# 1972
	lw		x13, 0(x13)	# 1972
	addi	x14, x0, 0	# 259
	addi	x15, x0, 0	# 259
	addi	x16, x0, 4	# 259
	mul		x15, x15, x16	# 259
	add		x15, x6, x15	# 259
	flw		f1, 0(x15)	# 259
	addi	x15, x26, 648	# 259
	addi	x16, x0, 4	# 259
	mul		x14, x14, x16	# 259
	add		x14, x15, x14	# 259
	fsw		f1, 0(x14)	# 259
	addi	x14, x0, 1	# 260
	addi	x15, x0, 1	# 260
	addi	x16, x0, 4	# 260
	mul		x15, x15, x16	# 260
	add		x15, x6, x15	# 260
	flw		f1, 0(x15)	# 260
	addi	x15, x26, 648	# 260
	addi	x16, x0, 4	# 260
	mul		x14, x14, x16	# 260
	add		x14, x15, x14	# 260
	fsw		f1, 0(x14)	# 260
	addi	x14, x0, 2	# 261
	addi	x15, x0, 4	# 261
	mul		x15, x14, x15	# 261
	add		x15, x6, x15	# 261
	flw		f1, 0(x15)	# 261
	addi	x15, x26, 648	# 261
	addi	x16, x0, 4	# 261
	mul		x14, x14, x16	# 261
	add		x14, x15, x14	# 261
	fsw		f1, 0(x14)	# 261
	addi	x14, x26, 0	# 1315
	addi	x15, x0, 4	# 1315
	mul		x15, x11, x15	# 1315
	add		x14, x14, x15	# 1315
	lw		x14, 0(x14)	# 1315
	sub		x14, x14, x12	# 1315
	sw		x13, -36(x2)	# 1315
	addi	x5, x14, 0
	addi	x4, x6, 0
	addi	x27, x7, 0
	sw		x1, -40(x2)	# 1315
	addi	x2, x2, -44	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 44	# 1315
	lw		x1, -40(x2)	# 1315
	addi	x7, x0, 118	# 1964
	lw		x4, -36(x2)	# 1964
	lw		x5, -8(x2)	# 1964
	lw		x6, -24(x2)	# 1964
	lw		x27, -12(x2)	# 1964
	sw		x1, -40(x2)	# 1964
	addi	x2, x2, -44	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 44	# 1964
	lw		x1, -40(x2)	# 1964
beq_cont.96862:
	lw		x4, -28(x2)	# 1975
	lw		x5, -32(x2)	# 1975
	beq		x5, x4, beq_cont.96863	# 1975
	addi	x6, x0, 1	# 1976
	addi	x7, x26, 716	# 1976
	addi	x8, x0, 4	# 1976
	mul		x6, x6, x8	# 1976
	add		x6, x7, x6	# 1976
	lw		x6, 0(x6)	# 1976
	addi	x7, x0, 0	# 259
	addi	x8, x0, 0	# 259
	addi	x9, x0, 4	# 259
	mul		x8, x8, x9	# 259
	lw		x9, -24(x2)	# 259
	add		x8, x9, x8	# 259
	flw		f1, 0(x8)	# 259
	addi	x8, x26, 648	# 259
	addi	x10, x0, 4	# 259
	mul		x7, x7, x10	# 259
	add		x7, x8, x7	# 259
	fsw		f1, 0(x7)	# 259
	addi	x7, x0, 1	# 260
	addi	x8, x0, 1	# 260
	addi	x10, x0, 4	# 260
	mul		x8, x8, x10	# 260
	add		x8, x9, x8	# 260
	flw		f1, 0(x8)	# 260
	addi	x8, x26, 648	# 260
	addi	x10, x0, 4	# 260
	mul		x7, x7, x10	# 260
	add		x7, x8, x7	# 260
	fsw		f1, 0(x7)	# 260
	addi	x7, x0, 2	# 261
	addi	x8, x0, 4	# 261
	mul		x8, x7, x8	# 261
	add		x8, x9, x8	# 261
	flw		f1, 0(x8)	# 261
	addi	x8, x26, 648	# 261
	addi	x10, x0, 4	# 261
	mul		x7, x7, x10	# 261
	add		x7, x8, x7	# 261
	fsw		f1, 0(x7)	# 261
	addi	x7, x26, 0	# 1315
	addi	x8, x0, 4	# 1315
	lw		x10, -20(x2)	# 1315
	mul		x8, x10, x8	# 1315
	add		x7, x7, x8	# 1315
	lw		x7, 0(x7)	# 1315
	sub		x7, x7, x4	# 1315
	lw		x27, -16(x2)	# 1315
	sw		x6, -40(x2)	# 1315
	addi	x5, x7, 0
	addi	x4, x9, 0
	sw		x1, -44(x2)	# 1315
	addi	x2, x2, -48	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 48	# 1315
	lw		x1, -44(x2)	# 1315
	addi	x7, x0, 118	# 1964
	lw		x4, -40(x2)	# 1964
	lw		x5, -8(x2)	# 1964
	lw		x6, -24(x2)	# 1964
	lw		x27, -12(x2)	# 1964
	sw		x1, -44(x2)	# 1964
	addi	x2, x2, -48	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 48	# 1964
	lw		x1, -44(x2)	# 1964
beq_cont.96863:
	lw		x4, -4(x2)	# 1979
	lw		x5, -32(x2)	# 1979
	beq		x5, x4, beq_cont.96864	# 1979
	addi	x6, x0, 2	# 1980
	addi	x7, x26, 716	# 1980
	addi	x8, x0, 4	# 1980
	mul		x6, x6, x8	# 1980
	add		x6, x7, x6	# 1980
	lw		x6, 0(x6)	# 1980
	addi	x7, x0, 0	# 259
	addi	x8, x0, 0	# 259
	addi	x9, x0, 4	# 259
	mul		x8, x8, x9	# 259
	lw		x9, -24(x2)	# 259
	add		x8, x9, x8	# 259
	flw		f1, 0(x8)	# 259
	addi	x8, x26, 648	# 259
	addi	x10, x0, 4	# 259
	mul		x7, x7, x10	# 259
	add		x7, x8, x7	# 259
	fsw		f1, 0(x7)	# 259
	addi	x7, x0, 1	# 260
	addi	x8, x0, 1	# 260
	addi	x10, x0, 4	# 260
	mul		x8, x8, x10	# 260
	add		x8, x9, x8	# 260
	flw		f1, 0(x8)	# 260
	addi	x8, x26, 648	# 260
	addi	x10, x0, 4	# 260
	mul		x7, x7, x10	# 260
	add		x7, x8, x7	# 260
	fsw		f1, 0(x7)	# 260
	addi	x7, x0, 2	# 261
	addi	x8, x0, 4	# 261
	mul		x8, x7, x8	# 261
	add		x8, x9, x8	# 261
	flw		f1, 0(x8)	# 261
	addi	x8, x26, 648	# 261
	addi	x10, x0, 4	# 261
	mul		x7, x7, x10	# 261
	add		x7, x8, x7	# 261
	fsw		f1, 0(x7)	# 261
	addi	x7, x26, 0	# 1315
	addi	x8, x0, 4	# 1315
	lw		x10, -20(x2)	# 1315
	mul		x8, x10, x8	# 1315
	add		x7, x7, x8	# 1315
	lw		x7, 0(x7)	# 1315
	lw		x8, -28(x2)	# 1315
	sub		x7, x7, x8	# 1315
	lw		x27, -16(x2)	# 1315
	sw		x6, -44(x2)	# 1315
	addi	x5, x7, 0
	addi	x4, x9, 0
	sw		x1, -48(x2)	# 1315
	addi	x2, x2, -52	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 52	# 1315
	lw		x1, -48(x2)	# 1315
	addi	x7, x0, 118	# 1964
	lw		x4, -44(x2)	# 1964
	lw		x5, -8(x2)	# 1964
	lw		x6, -24(x2)	# 1964
	lw		x27, -12(x2)	# 1964
	sw		x1, -48(x2)	# 1964
	addi	x2, x2, -52	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 52	# 1964
	lw		x1, -48(x2)	# 1964
beq_cont.96864:
	lw		x4, 0(x2)	# 1983
	lw		x5, -32(x2)	# 1983
	beq		x5, x4, beq_cont.96865	# 1983
	addi	x4, x0, 3	# 1984
	addi	x6, x26, 716	# 1984
	addi	x7, x0, 4	# 1984
	mul		x4, x4, x7	# 1984
	add		x4, x6, x4	# 1984
	lw		x4, 0(x4)	# 1984
	addi	x6, x0, 0	# 259
	addi	x7, x0, 0	# 259
	addi	x8, x0, 4	# 259
	mul		x7, x7, x8	# 259
	lw		x8, -24(x2)	# 259
	add		x7, x8, x7	# 259
	flw		f1, 0(x7)	# 259
	addi	x7, x26, 648	# 259
	addi	x9, x0, 4	# 259
	mul		x6, x6, x9	# 259
	add		x6, x7, x6	# 259
	fsw		f1, 0(x6)	# 259
	addi	x6, x0, 1	# 260
	addi	x7, x0, 1	# 260
	addi	x9, x0, 4	# 260
	mul		x7, x7, x9	# 260
	add		x7, x8, x7	# 260
	flw		f1, 0(x7)	# 260
	addi	x7, x26, 648	# 260
	addi	x9, x0, 4	# 260
	mul		x6, x6, x9	# 260
	add		x6, x7, x6	# 260
	fsw		f1, 0(x6)	# 260
	addi	x6, x0, 2	# 261
	addi	x7, x0, 4	# 261
	mul		x7, x6, x7	# 261
	add		x7, x8, x7	# 261
	flw		f1, 0(x7)	# 261
	addi	x7, x26, 648	# 261
	addi	x9, x0, 4	# 261
	mul		x6, x6, x9	# 261
	add		x6, x7, x6	# 261
	fsw		f1, 0(x6)	# 261
	addi	x6, x26, 0	# 1315
	addi	x7, x0, 4	# 1315
	lw		x9, -20(x2)	# 1315
	mul		x7, x9, x7	# 1315
	add		x6, x6, x7	# 1315
	lw		x6, 0(x6)	# 1315
	lw		x7, -28(x2)	# 1315
	sub		x6, x6, x7	# 1315
	lw		x27, -16(x2)	# 1315
	sw		x4, -48(x2)	# 1315
	addi	x5, x6, 0
	addi	x4, x8, 0
	sw		x1, -52(x2)	# 1315
	addi	x2, x2, -56	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 56	# 1315
	lw		x1, -52(x2)	# 1315
	addi	x7, x0, 118	# 1964
	lw		x4, -48(x2)	# 1964
	lw		x5, -8(x2)	# 1964
	lw		x6, -24(x2)	# 1964
	lw		x27, -12(x2)	# 1964
	sw		x1, -52(x2)	# 1964
	addi	x2, x2, -56	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 56	# 1964
	lw		x1, -52(x2)	# 1964
beq_cont.96865:
	addi	x4, x0, 4	# 1987
	lw		x5, -32(x2)	# 1987
	beq		x5, x4, beq.96866	# 1987
	addi	x5, x26, 716	# 1988
	addi	x6, x0, 4	# 1988
	mul		x4, x4, x6	# 1988
	add		x4, x5, x4	# 1988
	lw		x4, 0(x4)	# 1988
	addi	x5, x0, 4	# 259
	lw		x6, -20(x2)	# 259
	mul		x5, x6, x5	# 259
	lw		x7, -24(x2)	# 259
	add		x5, x7, x5	# 259
	flw		f1, 0(x5)	# 259
	addi	x5, x26, 648	# 259
	addi	x8, x0, 4	# 259
	mul		x8, x6, x8	# 259
	add		x5, x5, x8	# 259
	fsw		f1, 0(x5)	# 259
	addi	x5, x0, 4	# 260
	lw		x8, -28(x2)	# 260
	mul		x5, x8, x5	# 260
	add		x5, x7, x5	# 260
	flw		f1, 0(x5)	# 260
	addi	x5, x26, 648	# 260
	addi	x9, x0, 4	# 260
	mul		x9, x8, x9	# 260
	add		x5, x5, x9	# 260
	fsw		f1, 0(x5)	# 260
	addi	x5, x0, 4	# 261
	lw		x9, -4(x2)	# 261
	mul		x5, x9, x5	# 261
	add		x5, x7, x5	# 261
	flw		f1, 0(x5)	# 261
	addi	x5, x26, 648	# 261
	addi	x10, x0, 4	# 261
	mul		x9, x9, x10	# 261
	add		x5, x5, x9	# 261
	fsw		f1, 0(x5)	# 261
	addi	x5, x26, 0	# 1315
	addi	x9, x0, 4	# 1315
	mul		x6, x6, x9	# 1315
	add		x5, x5, x6	# 1315
	lw		x5, 0(x5)	# 1315
	sub		x5, x5, x8	# 1315
	lw		x27, -16(x2)	# 1315
	sw		x4, -52(x2)	# 1315
	addi	x4, x7, 0
	sw		x1, -56(x2)	# 1315
	addi	x2, x2, -60	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 60	# 1315
	lw		x1, -56(x2)	# 1315
	addi	x7, x0, 118	# 1964
	lw		x4, -52(x2)	# 1964
	lw		x5, -8(x2)	# 1964
	lw		x6, -24(x2)	# 1964
	lw		x27, -12(x2)	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x0, x31, 0	# 1964
beq.96866:
	jalr	x0, x1, 0	# 1989
calc_diffuse_using_1point.2893.13356:
	lw		x6, 16(x27)	# 598
	lw		x7, 12(x27)	# 598
	lw		x8, 8(x27)	# 598
	lw		x9, 4(x27)	# 598
	lw		x10, 20(x4)	# 598
	lw		x11, 28(x4)	# 628
	lw		x12, 4(x4)	# 569
	lw		x13, 16(x4)	# 591
	addi	x14, x0, 4	# 2002
	mul		x14, x5, x14	# 2002
	add		x10, x10, x14	# 2002
	lw		x10, 0(x10)	# 2002
	addi	x14, x0, 4	# 259
	mul		x14, x8, x14	# 259
	add		x14, x10, x14	# 259
	flw		f1, 0(x14)	# 259
	addi	x14, x26, 592	# 259
	addi	x15, x0, 4	# 259
	mul		x15, x8, x15	# 259
	add		x14, x14, x15	# 259
	fsw		f1, 0(x14)	# 259
	addi	x14, x0, 4	# 260
	mul		x14, x9, x14	# 260
	add		x14, x10, x14	# 260
	flw		f1, 0(x14)	# 260
	addi	x14, x26, 592	# 260
	addi	x15, x0, 4	# 260
	mul		x15, x9, x15	# 260
	add		x14, x14, x15	# 260
	fsw		f1, 0(x14)	# 260
	addi	x14, x0, 4	# 261
	mul		x14, x7, x14	# 261
	add		x10, x10, x14	# 261
	flw		f1, 0(x10)	# 261
	addi	x10, x26, 592	# 261
	addi	x14, x0, 4	# 261
	mul		x14, x7, x14	# 261
	add		x10, x10, x14	# 261
	fsw		f1, 0(x10)	# 261
	lw		x4, 24(x4)	# 614
	addi	x10, x0, 4	# 616
	mul		x10, x8, x10	# 616
	add		x4, x4, x10	# 616
	lw		x4, 0(x4)	# 616
	addi	x10, x0, 4	# 2005
	mul		x10, x5, x10	# 2005
	add		x10, x11, x10	# 2005
	lw		x10, 0(x10)	# 2005
	addi	x11, x0, 4	# 2006
	mul		x11, x5, x11	# 2006
	add		x11, x12, x11	# 2006
	lw		x11, 0(x11)	# 2006
	sw		x7, 0(x2)	# 2003
	sw		x9, -4(x2)	# 2003
	sw		x8, -8(x2)	# 2003
	sw		x13, -12(x2)	# 2003
	sw		x5, -16(x2)	# 2003
	addi	x5, x10, 0
	addi	x27, x6, 0
	addi	x6, x11, 0
	sw		x1, -20(x2)	# 2003
	addi	x2, x2, -24	# 2003
	lw		x31, 0(x27)	# 2003
	jalr	x1, x31, 0	# 2003
	addi	x2, x2, 24	# 2003
	lw		x1, -20(x2)	# 2003
	addi	x4, x0, 4	# 2007
	lw		x5, -16(x2)	# 2007
	mul		x4, x5, x4	# 2007
	lw		x5, -12(x2)	# 2007
	add		x4, x5, x4	# 2007
	lw		x4, 0(x4)	# 2007
	addi	x5, x26, 604	# 332
	addi	x6, x0, 4	# 332
	lw		x7, -8(x2)	# 332
	mul		x6, x7, x6	# 332
	add		x5, x5, x6	# 332
	flw		f1, 0(x5)	# 332
	addi	x5, x0, 4	# 332
	mul		x5, x7, x5	# 332
	add		x5, x4, x5	# 332
	flw		f2, 0(x5)	# 332
	addi	x5, x26, 592	# 332
	addi	x6, x0, 4	# 332
	mul		x6, x7, x6	# 332
	add		x5, x5, x6	# 332
	flw		f3, 0(x5)	# 332
	fmul	f2, f2, f3	# 332
	fadd	f1, f1, f2	# 332
	addi	x5, x26, 604	# 332
	addi	x6, x0, 4	# 332
	mul		x6, x7, x6	# 332
	add		x5, x5, x6	# 332
	fsw		f1, 0(x5)	# 332
	addi	x5, x26, 604	# 333
	addi	x6, x0, 4	# 333
	lw		x7, -4(x2)	# 333
	mul		x6, x7, x6	# 333
	add		x5, x5, x6	# 333
	flw		f1, 0(x5)	# 333
	addi	x5, x0, 4	# 333
	mul		x5, x7, x5	# 333
	add		x5, x4, x5	# 333
	flw		f2, 0(x5)	# 333
	addi	x5, x26, 592	# 333
	addi	x6, x0, 4	# 333
	mul		x6, x7, x6	# 333
	add		x5, x5, x6	# 333
	flw		f3, 0(x5)	# 333
	fmul	f2, f2, f3	# 333
	fadd	f1, f1, f2	# 333
	addi	x5, x26, 604	# 333
	addi	x6, x0, 4	# 333
	mul		x6, x7, x6	# 333
	add		x5, x5, x6	# 333
	fsw		f1, 0(x5)	# 333
	addi	x5, x26, 604	# 334
	addi	x6, x0, 4	# 334
	lw		x7, 0(x2)	# 334
	mul		x6, x7, x6	# 334
	add		x5, x5, x6	# 334
	flw		f1, 0(x5)	# 334
	addi	x5, x0, 4	# 334
	mul		x5, x7, x5	# 334
	add		x4, x4, x5	# 334
	flw		f2, 0(x4)	# 334
	addi	x4, x26, 592	# 334
	addi	x5, x0, 4	# 334
	mul		x5, x7, x5	# 334
	add		x4, x4, x5	# 334
	flw		f3, 0(x4)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	addi	x4, x26, 604	# 334
	addi	x5, x0, 4	# 334
	mul		x5, x7, x5	# 334
	add		x4, x4, x5	# 334
	fsw		f1, 0(x4)	# 334
	jalr	x0, x1, 0	# 334
calc_diffuse_using_5points.2896.13359:
	lw		x9, 12(x27)	# 2016
	lw		x10, 8(x27)	# 2016
	lw		x11, 4(x27)	# 2016
	addi	x12, x0, 4	# 2016
	mul		x12, x4, x12	# 2016
	add		x5, x5, x12	# 2016
	lw		x5, 0(x5)	# 2016
	lw		x5, 20(x5)	# 598
	sub		x12, x4, x11	# 2017
	addi	x13, x0, 4	# 2017
	mul		x12, x12, x13	# 2017
	add		x12, x6, x12	# 2017
	lw		x12, 0(x12)	# 2017
	lw		x12, 20(x12)	# 598
	addi	x13, x0, 4	# 2018
	mul		x13, x4, x13	# 2018
	add		x13, x6, x13	# 2018
	lw		x13, 0(x13)	# 2018
	lw		x13, 20(x13)	# 598
	add		x14, x4, x11	# 2019
	addi	x15, x0, 4	# 2019
	mul		x14, x14, x15	# 2019
	add		x14, x6, x14	# 2019
	lw		x14, 0(x14)	# 2019
	lw		x14, 20(x14)	# 598
	addi	x15, x0, 4	# 2020
	mul		x15, x4, x15	# 2020
	add		x7, x7, x15	# 2020
	lw		x7, 0(x7)	# 2020
	lw		x7, 20(x7)	# 598
	addi	x15, x0, 4	# 2022
	mul		x15, x8, x15	# 2022
	add		x5, x5, x15	# 2022
	lw		x5, 0(x5)	# 2022
	addi	x15, x0, 4	# 259
	mul		x15, x10, x15	# 259
	add		x15, x5, x15	# 259
	flw		f1, 0(x15)	# 259
	addi	x15, x26, 592	# 259
	addi	x16, x0, 4	# 259
	mul		x16, x10, x16	# 259
	add		x15, x15, x16	# 259
	fsw		f1, 0(x15)	# 259
	addi	x15, x0, 4	# 260
	mul		x15, x11, x15	# 260
	add		x15, x5, x15	# 260
	flw		f1, 0(x15)	# 260
	addi	x15, x26, 592	# 260
	addi	x16, x0, 4	# 260
	mul		x16, x11, x16	# 260
	add		x15, x15, x16	# 260
	fsw		f1, 0(x15)	# 260
	addi	x15, x0, 4	# 261
	mul		x15, x9, x15	# 261
	add		x5, x5, x15	# 261
	flw		f1, 0(x5)	# 261
	addi	x5, x26, 592	# 261
	addi	x15, x0, 4	# 261
	mul		x15, x9, x15	# 261
	add		x5, x5, x15	# 261
	fsw		f1, 0(x5)	# 261
	addi	x5, x0, 4	# 2023
	mul		x5, x8, x5	# 2023
	add		x5, x12, x5	# 2023
	lw		x5, 0(x5)	# 2023
	addi	x12, x26, 592	# 309
	addi	x15, x0, 4	# 309
	mul		x15, x10, x15	# 309
	add		x12, x12, x15	# 309
	flw		f1, 0(x12)	# 309
	addi	x12, x0, 4	# 309
	mul		x12, x10, x12	# 309
	add		x12, x5, x12	# 309
	flw		f2, 0(x12)	# 309
	fadd	f1, f1, f2	# 309
	addi	x12, x26, 592	# 309
	addi	x15, x0, 4	# 309
	mul		x15, x10, x15	# 309
	add		x12, x12, x15	# 309
	fsw		f1, 0(x12)	# 309
	addi	x12, x26, 592	# 310
	addi	x15, x0, 4	# 310
	mul		x15, x11, x15	# 310
	add		x12, x12, x15	# 310
	flw		f1, 0(x12)	# 310
	addi	x12, x0, 4	# 310
	mul		x12, x11, x12	# 310
	add		x12, x5, x12	# 310
	flw		f2, 0(x12)	# 310
	fadd	f1, f1, f2	# 310
	addi	x12, x26, 592	# 310
	addi	x15, x0, 4	# 310
	mul		x15, x11, x15	# 310
	add		x12, x12, x15	# 310
	fsw		f1, 0(x12)	# 310
	addi	x12, x26, 592	# 311
	addi	x15, x0, 4	# 311
	mul		x15, x9, x15	# 311
	add		x12, x12, x15	# 311
	flw		f1, 0(x12)	# 311
	addi	x12, x0, 4	# 311
	mul		x12, x9, x12	# 311
	add		x5, x5, x12	# 311
	flw		f2, 0(x5)	# 311
	fadd	f1, f1, f2	# 311
	addi	x5, x26, 592	# 311
	addi	x12, x0, 4	# 311
	mul		x12, x9, x12	# 311
	add		x5, x5, x12	# 311
	fsw		f1, 0(x5)	# 311
	addi	x5, x0, 4	# 2024
	mul		x5, x8, x5	# 2024
	add		x5, x13, x5	# 2024
	lw		x5, 0(x5)	# 2024
	addi	x12, x26, 592	# 309
	addi	x13, x0, 4	# 309
	mul		x13, x10, x13	# 309
	add		x12, x12, x13	# 309
	flw		f1, 0(x12)	# 309
	addi	x12, x0, 4	# 309
	mul		x12, x10, x12	# 309
	add		x12, x5, x12	# 309
	flw		f2, 0(x12)	# 309
	fadd	f1, f1, f2	# 309
	addi	x12, x26, 592	# 309
	addi	x13, x0, 4	# 309
	mul		x13, x10, x13	# 309
	add		x12, x12, x13	# 309
	fsw		f1, 0(x12)	# 309
	addi	x12, x26, 592	# 310
	addi	x13, x0, 4	# 310
	mul		x13, x11, x13	# 310
	add		x12, x12, x13	# 310
	flw		f1, 0(x12)	# 310
	addi	x12, x0, 4	# 310
	mul		x12, x11, x12	# 310
	add		x12, x5, x12	# 310
	flw		f2, 0(x12)	# 310
	fadd	f1, f1, f2	# 310
	addi	x12, x26, 592	# 310
	addi	x13, x0, 4	# 310
	mul		x13, x11, x13	# 310
	add		x12, x12, x13	# 310
	fsw		f1, 0(x12)	# 310
	addi	x12, x26, 592	# 311
	addi	x13, x0, 4	# 311
	mul		x13, x9, x13	# 311
	add		x12, x12, x13	# 311
	flw		f1, 0(x12)	# 311
	addi	x12, x0, 4	# 311
	mul		x12, x9, x12	# 311
	add		x5, x5, x12	# 311
	flw		f2, 0(x5)	# 311
	fadd	f1, f1, f2	# 311
	addi	x5, x26, 592	# 311
	addi	x12, x0, 4	# 311
	mul		x12, x9, x12	# 311
	add		x5, x5, x12	# 311
	fsw		f1, 0(x5)	# 311
	addi	x5, x0, 4	# 2025
	mul		x5, x8, x5	# 2025
	add		x5, x14, x5	# 2025
	lw		x5, 0(x5)	# 2025
	addi	x12, x26, 592	# 309
	addi	x13, x0, 4	# 309
	mul		x13, x10, x13	# 309
	add		x12, x12, x13	# 309
	flw		f1, 0(x12)	# 309
	addi	x12, x0, 4	# 309
	mul		x12, x10, x12	# 309
	add		x12, x5, x12	# 309
	flw		f2, 0(x12)	# 309
	fadd	f1, f1, f2	# 309
	addi	x12, x26, 592	# 309
	addi	x13, x0, 4	# 309
	mul		x13, x10, x13	# 309
	add		x12, x12, x13	# 309
	fsw		f1, 0(x12)	# 309
	addi	x12, x26, 592	# 310
	addi	x13, x0, 4	# 310
	mul		x13, x11, x13	# 310
	add		x12, x12, x13	# 310
	flw		f1, 0(x12)	# 310
	addi	x12, x0, 4	# 310
	mul		x12, x11, x12	# 310
	add		x12, x5, x12	# 310
	flw		f2, 0(x12)	# 310
	fadd	f1, f1, f2	# 310
	addi	x12, x26, 592	# 310
	addi	x13, x0, 4	# 310
	mul		x13, x11, x13	# 310
	add		x12, x12, x13	# 310
	fsw		f1, 0(x12)	# 310
	addi	x12, x26, 592	# 311
	addi	x13, x0, 4	# 311
	mul		x13, x9, x13	# 311
	add		x12, x12, x13	# 311
	flw		f1, 0(x12)	# 311
	addi	x12, x0, 4	# 311
	mul		x12, x9, x12	# 311
	add		x5, x5, x12	# 311
	flw		f2, 0(x5)	# 311
	fadd	f1, f1, f2	# 311
	addi	x5, x26, 592	# 311
	addi	x12, x0, 4	# 311
	mul		x12, x9, x12	# 311
	add		x5, x5, x12	# 311
	fsw		f1, 0(x5)	# 311
	addi	x5, x0, 4	# 2026
	mul		x5, x8, x5	# 2026
	add		x5, x7, x5	# 2026
	lw		x5, 0(x5)	# 2026
	addi	x7, x26, 592	# 309
	addi	x12, x0, 4	# 309
	mul		x12, x10, x12	# 309
	add		x7, x7, x12	# 309
	flw		f1, 0(x7)	# 309
	addi	x7, x0, 4	# 309
	mul		x7, x10, x7	# 309
	add		x7, x5, x7	# 309
	flw		f2, 0(x7)	# 309
	fadd	f1, f1, f2	# 309
	addi	x7, x26, 592	# 309
	addi	x12, x0, 4	# 309
	mul		x12, x10, x12	# 309
	add		x7, x7, x12	# 309
	fsw		f1, 0(x7)	# 309
	addi	x7, x26, 592	# 310
	addi	x12, x0, 4	# 310
	mul		x12, x11, x12	# 310
	add		x7, x7, x12	# 310
	flw		f1, 0(x7)	# 310
	addi	x7, x0, 4	# 310
	mul		x7, x11, x7	# 310
	add		x7, x5, x7	# 310
	flw		f2, 0(x7)	# 310
	fadd	f1, f1, f2	# 310
	addi	x7, x26, 592	# 310
	addi	x12, x0, 4	# 310
	mul		x12, x11, x12	# 310
	add		x7, x7, x12	# 310
	fsw		f1, 0(x7)	# 310
	addi	x7, x26, 592	# 311
	addi	x12, x0, 4	# 311
	mul		x12, x9, x12	# 311
	add		x7, x7, x12	# 311
	flw		f1, 0(x7)	# 311
	addi	x7, x0, 4	# 311
	mul		x7, x9, x7	# 311
	add		x5, x5, x7	# 311
	flw		f2, 0(x5)	# 311
	fadd	f1, f1, f2	# 311
	addi	x5, x26, 592	# 311
	addi	x7, x0, 4	# 311
	mul		x7, x9, x7	# 311
	add		x5, x5, x7	# 311
	fsw		f1, 0(x5)	# 311
	addi	x5, x0, 4	# 2028
	mul		x4, x4, x5	# 2028
	add		x4, x6, x4	# 2028
	lw		x4, 0(x4)	# 2028
	lw		x4, 16(x4)	# 591
	addi	x5, x0, 4	# 2029
	mul		x5, x8, x5	# 2029
	add		x4, x4, x5	# 2029
	lw		x4, 0(x4)	# 2029
	addi	x5, x26, 604	# 332
	addi	x6, x0, 4	# 332
	mul		x6, x10, x6	# 332
	add		x5, x5, x6	# 332
	flw		f1, 0(x5)	# 332
	addi	x5, x0, 4	# 332
	mul		x5, x10, x5	# 332
	add		x5, x4, x5	# 332
	flw		f2, 0(x5)	# 332
	addi	x5, x26, 592	# 332
	addi	x6, x0, 4	# 332
	mul		x6, x10, x6	# 332
	add		x5, x5, x6	# 332
	flw		f3, 0(x5)	# 332
	fmul	f2, f2, f3	# 332
	fadd	f1, f1, f2	# 332
	addi	x5, x26, 604	# 332
	addi	x6, x0, 4	# 332
	mul		x6, x10, x6	# 332
	add		x5, x5, x6	# 332
	fsw		f1, 0(x5)	# 332
	addi	x5, x26, 604	# 333
	addi	x6, x0, 4	# 333
	mul		x6, x11, x6	# 333
	add		x5, x5, x6	# 333
	flw		f1, 0(x5)	# 333
	addi	x5, x0, 4	# 333
	mul		x5, x11, x5	# 333
	add		x5, x4, x5	# 333
	flw		f2, 0(x5)	# 333
	addi	x5, x26, 592	# 333
	addi	x6, x0, 4	# 333
	mul		x6, x11, x6	# 333
	add		x5, x5, x6	# 333
	flw		f3, 0(x5)	# 333
	fmul	f2, f2, f3	# 333
	fadd	f1, f1, f2	# 333
	addi	x5, x26, 604	# 333
	addi	x6, x0, 4	# 333
	mul		x6, x11, x6	# 333
	add		x5, x5, x6	# 333
	fsw		f1, 0(x5)	# 333
	addi	x5, x26, 604	# 334
	addi	x6, x0, 4	# 334
	mul		x6, x9, x6	# 334
	add		x5, x5, x6	# 334
	flw		f1, 0(x5)	# 334
	addi	x5, x0, 4	# 334
	mul		x5, x9, x5	# 334
	add		x4, x4, x5	# 334
	flw		f2, 0(x4)	# 334
	addi	x4, x26, 592	# 334
	addi	x5, x0, 4	# 334
	mul		x5, x9, x5	# 334
	add		x4, x4, x5	# 334
	flw		f3, 0(x4)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	addi	x4, x26, 604	# 334
	addi	x5, x0, 4	# 334
	mul		x5, x9, x5	# 334
	add		x4, x4, x5	# 334
	fsw		f1, 0(x4)	# 334
	jalr	x0, x1, 0	# 334
do_without_neighbors.2902.13365:
	lw		x6, 20(x27)	# 2035
	lw		x7, 16(x27)	# 2035
	lw		x8, 12(x27)	# 2035
	lw		x9, 8(x27)	# 2035
	lw		x10, 4(x27)	# 2035
	addi	x11, x0, 4	# 2035
	ble		x5, x11, ble.96870	# 2035
	jalr	x0, x1, 0	# 2045
ble.96870:
	lw		x12, 8(x4)	# 577
	addi	x13, x0, 4	# 2038
	mul		x13, x5, x13	# 2038
	add		x12, x12, x13	# 2038
	lw		x12, 0(x12)	# 2038
	ble		x9, x12, ble.96872	# 2038
	jalr	x0, x1, 0	# 2044
ble.96872:
	lw		x12, 12(x4)	# 584
	addi	x13, x0, 4	# 2040
	mul		x13, x5, x13	# 2040
	add		x12, x12, x13	# 2040
	lw		x12, 0(x12)	# 2040
	sw		x27, 0(x2)	# 2040
	sw		x7, -4(x2)	# 2040
	sw		x9, -8(x2)	# 2040
	sw		x4, -12(x2)	# 2040
	sw		x11, -16(x2)	# 2040
	sw		x10, -20(x2)	# 2040
	beq		x12, x9, beq_cont.96874	# 2040
	lw		x12, 20(x4)	# 598
	lw		x13, 28(x4)	# 628
	lw		x14, 4(x4)	# 569
	lw		x15, 16(x4)	# 591
	addi	x16, x0, 4	# 2002
	mul		x16, x5, x16	# 2002
	add		x12, x12, x16	# 2002
	lw		x12, 0(x12)	# 2002
	addi	x16, x0, 4	# 259
	mul		x16, x9, x16	# 259
	add		x16, x12, x16	# 259
	flw		f1, 0(x16)	# 259
	addi	x16, x26, 592	# 259
	addi	x17, x0, 4	# 259
	mul		x17, x9, x17	# 259
	add		x16, x16, x17	# 259
	fsw		f1, 0(x16)	# 259
	addi	x16, x0, 4	# 260
	mul		x16, x10, x16	# 260
	add		x16, x12, x16	# 260
	flw		f1, 0(x16)	# 260
	addi	x16, x26, 592	# 260
	addi	x17, x0, 4	# 260
	mul		x17, x10, x17	# 260
	add		x16, x16, x17	# 260
	fsw		f1, 0(x16)	# 260
	addi	x16, x0, 4	# 261
	mul		x16, x8, x16	# 261
	add		x12, x12, x16	# 261
	flw		f1, 0(x12)	# 261
	addi	x12, x26, 592	# 261
	addi	x16, x0, 4	# 261
	mul		x16, x8, x16	# 261
	add		x12, x12, x16	# 261
	fsw		f1, 0(x12)	# 261
	lw		x12, 24(x4)	# 614
	addi	x16, x0, 4	# 616
	mul		x16, x9, x16	# 616
	add		x12, x12, x16	# 616
	lw		x12, 0(x12)	# 616
	addi	x16, x0, 4	# 2005
	mul		x16, x5, x16	# 2005
	add		x13, x13, x16	# 2005
	lw		x13, 0(x13)	# 2005
	addi	x16, x0, 4	# 2006
	mul		x16, x5, x16	# 2006
	add		x14, x14, x16	# 2006
	lw		x14, 0(x14)	# 2006
	sw		x8, -24(x2)	# 2003
	sw		x15, -28(x2)	# 2003
	sw		x5, -32(x2)	# 2003
	addi	x5, x13, 0
	addi	x4, x12, 0
	addi	x27, x6, 0
	addi	x6, x14, 0
	sw		x1, -36(x2)	# 2003
	addi	x2, x2, -40	# 2003
	lw		x31, 0(x27)	# 2003
	jalr	x1, x31, 0	# 2003
	addi	x2, x2, 40	# 2003
	lw		x1, -36(x2)	# 2003
	addi	x4, x0, 4	# 2007
	lw		x5, -32(x2)	# 2007
	mul		x4, x5, x4	# 2007
	lw		x6, -28(x2)	# 2007
	add		x4, x6, x4	# 2007
	lw		x4, 0(x4)	# 2007
	addi	x6, x26, 604	# 332
	addi	x7, x0, 4	# 332
	lw		x8, -8(x2)	# 332
	mul		x7, x8, x7	# 332
	add		x6, x6, x7	# 332
	flw		f1, 0(x6)	# 332
	addi	x6, x0, 4	# 332
	mul		x6, x8, x6	# 332
	add		x6, x4, x6	# 332
	flw		f2, 0(x6)	# 332
	addi	x6, x26, 592	# 332
	addi	x7, x0, 4	# 332
	mul		x7, x8, x7	# 332
	add		x6, x6, x7	# 332
	flw		f3, 0(x6)	# 332
	fmul	f2, f2, f3	# 332
	fadd	f1, f1, f2	# 332
	addi	x6, x26, 604	# 332
	addi	x7, x0, 4	# 332
	mul		x7, x8, x7	# 332
	add		x6, x6, x7	# 332
	fsw		f1, 0(x6)	# 332
	addi	x6, x26, 604	# 333
	addi	x7, x0, 4	# 333
	lw		x9, -20(x2)	# 333
	mul		x7, x9, x7	# 333
	add		x6, x6, x7	# 333
	flw		f1, 0(x6)	# 333
	addi	x6, x0, 4	# 333
	mul		x6, x9, x6	# 333
	add		x6, x4, x6	# 333
	flw		f2, 0(x6)	# 333
	addi	x6, x26, 592	# 333
	addi	x7, x0, 4	# 333
	mul		x7, x9, x7	# 333
	add		x6, x6, x7	# 333
	flw		f3, 0(x6)	# 333
	fmul	f2, f2, f3	# 333
	fadd	f1, f1, f2	# 333
	addi	x6, x26, 604	# 333
	addi	x7, x0, 4	# 333
	mul		x7, x9, x7	# 333
	add		x6, x6, x7	# 333
	fsw		f1, 0(x6)	# 333
	addi	x6, x26, 604	# 334
	addi	x7, x0, 4	# 334
	lw		x10, -24(x2)	# 334
	mul		x7, x10, x7	# 334
	add		x6, x6, x7	# 334
	flw		f1, 0(x6)	# 334
	addi	x6, x0, 4	# 334
	mul		x6, x10, x6	# 334
	add		x4, x4, x6	# 334
	flw		f2, 0(x4)	# 334
	addi	x4, x26, 592	# 334
	addi	x6, x0, 4	# 334
	mul		x6, x10, x6	# 334
	add		x4, x4, x6	# 334
	flw		f3, 0(x4)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	addi	x4, x26, 604	# 334
	addi	x6, x0, 4	# 334
	mul		x6, x10, x6	# 334
	add		x4, x4, x6	# 334
	fsw		f1, 0(x4)	# 334
beq_cont.96874:
	lw		x4, -20(x2)	# 2043
	add		x5, x5, x4	# 2043
	lw		x6, -16(x2)	# 2035
	ble		x5, x6, ble.96875	# 2035
	jalr	x0, x1, 0	# 2045
ble.96875:
	lw		x6, -12(x2)	# 577
	lw		x7, 8(x6)	# 577
	addi	x8, x0, 4	# 2038
	mul		x8, x5, x8	# 2038
	add		x7, x7, x8	# 2038
	lw		x7, 0(x7)	# 2038
	lw		x8, -8(x2)	# 2038
	ble		x8, x7, ble.96877	# 2038
	jalr	x0, x1, 0	# 2044
ble.96877:
	lw		x7, 12(x6)	# 584
	addi	x9, x0, 4	# 2040
	mul		x9, x5, x9	# 2040
	add		x7, x7, x9	# 2040
	lw		x7, 0(x7)	# 2040
	sw		x5, -36(x2)	# 2040
	beq		x7, x8, beq_cont.96879	# 2040
	lw		x27, -4(x2)	# 2041
	addi	x4, x6, 0
	sw		x1, -40(x2)	# 2041
	addi	x2, x2, -44	# 2041
	lw		x31, 0(x27)	# 2041
	jalr	x1, x31, 0	# 2041
	addi	x2, x2, 44	# 2041
	lw		x1, -40(x2)	# 2041
beq_cont.96879:
	lw		x4, -20(x2)	# 2043
	lw		x5, -36(x2)	# 2043
	add		x5, x5, x4	# 2043
	lw		x4, -12(x2)	# 2043
	lw		x27, 0(x2)	# 2043
	lw		x31, 0(x27)	# 2043
	jalr	x0, x31, 0	# 2043
try_exploit_neighbors.2918.13368:
	lw		x10, 20(x27)	# 2087
	lw		x11, 16(x27)	# 2087
	lw		x12, 12(x27)	# 2087
	lw		x13, 8(x27)	# 2087
	lw		x14, 4(x27)	# 2087
	addi	x15, x0, 4	# 2087
	mul		x15, x4, x15	# 2087
	add		x15, x7, x15	# 2087
	lw		x15, 0(x15)	# 2087
	addi	x16, x0, 4	# 2088
	ble		x9, x16, ble.96880	# 2088
	jalr	x0, x1, 0	# 2107
ble.96880:
	lw		x17, 8(x15)	# 577
	addi	x18, x0, 4	# 2063
	mul		x18, x9, x18	# 2063
	add		x17, x17, x18	# 2063
	lw		x17, 0(x17)	# 2063
	ble		x13, x17, ble.96882	# 2091
	jalr	x0, x1, 0	# 2106
ble.96882:
	lw		x17, 8(x15)	# 577
	addi	x18, x0, 4	# 2063
	mul		x18, x9, x18	# 2063
	add		x17, x17, x18	# 2063
	lw		x17, 0(x17)	# 2063
	addi	x18, x0, 4	# 2071
	mul		x18, x4, x18	# 2071
	add		x18, x6, x18	# 2071
	lw		x18, 0(x18)	# 2071
	lw		x18, 8(x18)	# 577
	addi	x19, x0, 4	# 2063
	mul		x19, x9, x19	# 2063
	add		x18, x18, x19	# 2063
	lw		x18, 0(x18)	# 2063
	beq		x18, x17, beq.96885	# 2071
	addi	x17, x0, 0	# 2079
	jal		x0, beq_cont.96884	# 2071
beq.96885:
	addi	x18, x0, 4	# 2072
	mul		x18, x4, x18	# 2072
	add		x18, x8, x18	# 2072
	lw		x18, 0(x18)	# 2072
	lw		x18, 8(x18)	# 577
	addi	x19, x0, 4	# 2063
	mul		x19, x9, x19	# 2063
	add		x18, x18, x19	# 2063
	lw		x18, 0(x18)	# 2063
	beq		x18, x17, beq.96887	# 2072
	addi	x17, x0, 0	# 2078
	jal		x0, beq_cont.96886	# 2072
beq.96887:
	sub		x18, x4, x14	# 2073
	addi	x19, x0, 4	# 2073
	mul		x18, x18, x19	# 2073
	add		x18, x7, x18	# 2073
	lw		x18, 0(x18)	# 2073
	lw		x18, 8(x18)	# 577
	addi	x19, x0, 4	# 2063
	mul		x19, x9, x19	# 2063
	add		x18, x18, x19	# 2063
	lw		x18, 0(x18)	# 2063
	beq		x18, x17, beq.96889	# 2073
	addi	x17, x0, 0	# 2077
	jal		x0, beq_cont.96888	# 2073
beq.96889:
	add		x18, x4, x14	# 2074
	addi	x19, x0, 4	# 2074
	mul		x18, x18, x19	# 2074
	add		x18, x7, x18	# 2074
	lw		x18, 0(x18)	# 2074
	lw		x18, 8(x18)	# 577
	addi	x19, x0, 4	# 2063
	mul		x19, x9, x19	# 2063
	add		x18, x18, x19	# 2063
	lw		x18, 0(x18)	# 2063
	beq		x18, x17, beq.96891	# 2074
	addi	x17, x0, 0	# 2076
	jal		x0, beq_cont.96890	# 2074
beq.96891:
	addi	x17, x0, 1	# 2075
beq_cont.96890:
beq_cont.96888:
beq_cont.96886:
beq_cont.96884:
	beq		x17, x13, beq.96892	# 2093
	lw		x12, 12(x15)	# 584
	addi	x15, x0, 4	# 2097
	mul		x15, x9, x15	# 2097
	add		x12, x12, x15	# 2097
	lw		x12, 0(x12)	# 2097
	sw		x5, 0(x2)	# 2097
	sw		x27, -4(x2)	# 2097
	sw		x11, -8(x2)	# 2097
	sw		x10, -12(x2)	# 2097
	sw		x8, -16(x2)	# 2097
	sw		x6, -20(x2)	# 2097
	sw		x13, -24(x2)	# 2097
	sw		x16, -28(x2)	# 2097
	sw		x7, -32(x2)	# 2097
	sw		x4, -36(x2)	# 2097
	sw		x14, -40(x2)	# 2097
	sw		x9, -44(x2)	# 2097
	beq		x12, x13, beq_cont.96893	# 2097
	addi	x5, x6, 0
	addi	x27, x11, 0
	addi	x6, x7, 0
	addi	x7, x8, 0
	addi	x8, x9, 0
	sw		x1, -48(x2)	# 2098
	addi	x2, x2, -52	# 2098
	lw		x31, 0(x27)	# 2098
	jalr	x1, x31, 0	# 2098
	addi	x2, x2, 52	# 2098
	lw		x1, -48(x2)	# 2098
beq_cont.96893:
	lw		x4, -40(x2)	# 2102
	lw		x5, -44(x2)	# 2102
	add		x5, x5, x4	# 2102
	addi	x6, x0, 4	# 2087
	lw		x7, -36(x2)	# 2087
	mul		x6, x7, x6	# 2087
	lw		x8, -32(x2)	# 2087
	add		x6, x8, x6	# 2087
	lw		x6, 0(x6)	# 2087
	lw		x9, -28(x2)	# 2088
	ble		x5, x9, ble.96894	# 2088
	jalr	x0, x1, 0	# 2107
ble.96894:
	lw		x9, 8(x6)	# 577
	addi	x10, x0, 4	# 2063
	mul		x10, x5, x10	# 2063
	add		x9, x9, x10	# 2063
	lw		x9, 0(x9)	# 2063
	lw		x10, -24(x2)	# 2091
	ble		x10, x9, ble.96896	# 2091
	jalr	x0, x1, 0	# 2106
ble.96896:
	lw		x9, 8(x6)	# 577
	addi	x11, x0, 4	# 2063
	mul		x11, x5, x11	# 2063
	add		x9, x9, x11	# 2063
	lw		x9, 0(x9)	# 2063
	addi	x11, x0, 4	# 2071
	mul		x11, x7, x11	# 2071
	lw		x12, -20(x2)	# 2071
	add		x11, x12, x11	# 2071
	lw		x11, 0(x11)	# 2071
	lw		x11, 8(x11)	# 577
	addi	x13, x0, 4	# 2063
	mul		x13, x5, x13	# 2063
	add		x11, x11, x13	# 2063
	lw		x11, 0(x11)	# 2063
	beq		x11, x9, beq.96899	# 2071
	addi	x9, x0, 0	# 2079
	jal		x0, beq_cont.96898	# 2071
beq.96899:
	addi	x11, x0, 4	# 2072
	mul		x11, x7, x11	# 2072
	lw		x13, -16(x2)	# 2072
	add		x11, x13, x11	# 2072
	lw		x11, 0(x11)	# 2072
	lw		x11, 8(x11)	# 577
	addi	x14, x0, 4	# 2063
	mul		x14, x5, x14	# 2063
	add		x11, x11, x14	# 2063
	lw		x11, 0(x11)	# 2063
	beq		x11, x9, beq.96901	# 2072
	addi	x9, x0, 0	# 2078
	jal		x0, beq_cont.96900	# 2072
beq.96901:
	sub		x11, x7, x4	# 2073
	addi	x14, x0, 4	# 2073
	mul		x11, x11, x14	# 2073
	add		x11, x8, x11	# 2073
	lw		x11, 0(x11)	# 2073
	lw		x11, 8(x11)	# 577
	addi	x14, x0, 4	# 2063
	mul		x14, x5, x14	# 2063
	add		x11, x11, x14	# 2063
	lw		x11, 0(x11)	# 2063
	beq		x11, x9, beq.96903	# 2073
	addi	x9, x0, 0	# 2077
	jal		x0, beq_cont.96902	# 2073
beq.96903:
	add		x11, x7, x4	# 2074
	addi	x14, x0, 4	# 2074
	mul		x11, x11, x14	# 2074
	add		x11, x8, x11	# 2074
	lw		x11, 0(x11)	# 2074
	lw		x11, 8(x11)	# 577
	addi	x14, x0, 4	# 2063
	mul		x14, x5, x14	# 2063
	add		x11, x11, x14	# 2063
	lw		x11, 0(x11)	# 2063
	beq		x11, x9, beq.96905	# 2074
	addi	x9, x0, 0	# 2076
	jal		x0, beq_cont.96904	# 2074
beq.96905:
	addi	x9, x0, 1	# 2075
beq_cont.96904:
beq_cont.96902:
beq_cont.96900:
beq_cont.96898:
	beq		x9, x10, beq.96906	# 2093
	lw		x6, 12(x6)	# 584
	addi	x9, x0, 4	# 2097
	mul		x9, x5, x9	# 2097
	add		x6, x6, x9	# 2097
	lw		x6, 0(x6)	# 2097
	sw		x5, -48(x2)	# 2097
	beq		x6, x10, beq_cont.96907	# 2097
	lw		x6, -16(x2)	# 2098
	lw		x27, -8(x2)	# 2098
	addi	x4, x7, 0
	addi	x7, x6, 0
	addi	x6, x8, 0
	addi	x8, x5, 0
	addi	x5, x12, 0
	sw		x1, -52(x2)	# 2098
	addi	x2, x2, -56	# 2098
	lw		x31, 0(x27)	# 2098
	jalr	x1, x31, 0	# 2098
	addi	x2, x2, 56	# 2098
	lw		x1, -52(x2)	# 2098
beq_cont.96907:
	lw		x4, -40(x2)	# 2102
	lw		x5, -48(x2)	# 2102
	add		x9, x5, x4	# 2102
	lw		x4, -36(x2)	# 2102
	lw		x5, 0(x2)	# 2102
	lw		x6, -20(x2)	# 2102
	lw		x7, -32(x2)	# 2102
	lw		x8, -16(x2)	# 2102
	lw		x27, -4(x2)	# 2102
	lw		x31, 0(x27)	# 2102
	jalr	x0, x31, 0	# 2102
beq.96906:
	lw		x27, -12(x2)	# 2105
	addi	x4, x6, 0
	lw		x31, 0(x27)	# 2105
	jalr	x0, x31, 0	# 2105
beq.96892:
	ble		x9, x16, ble.96908	# 2035
	jalr	x0, x1, 0	# 2045
ble.96908:
	lw		x4, 8(x15)	# 577
	addi	x5, x0, 4	# 2038
	mul		x5, x9, x5	# 2038
	add		x4, x4, x5	# 2038
	lw		x4, 0(x4)	# 2038
	ble		x13, x4, ble.96910	# 2038
	jalr	x0, x1, 0	# 2044
ble.96910:
	lw		x4, 12(x15)	# 584
	addi	x5, x0, 4	# 2040
	mul		x5, x9, x5	# 2040
	add		x4, x4, x5	# 2040
	lw		x4, 0(x4)	# 2040
	sw		x15, -52(x2)	# 2040
	sw		x10, -12(x2)	# 2040
	sw		x14, -40(x2)	# 2040
	sw		x9, -44(x2)	# 2040
	beq		x4, x13, beq_cont.96912	# 2040
	addi	x5, x9, 0
	addi	x4, x15, 0
	addi	x27, x12, 0
	sw		x1, -56(x2)	# 2041
	addi	x2, x2, -60	# 2041
	lw		x31, 0(x27)	# 2041
	jalr	x1, x31, 0	# 2041
	addi	x2, x2, 60	# 2041
	lw		x1, -56(x2)	# 2041
beq_cont.96912:
	lw		x4, -40(x2)	# 2043
	lw		x5, -44(x2)	# 2043
	add		x5, x5, x4	# 2043
	lw		x4, -52(x2)	# 2043
	lw		x27, -12(x2)	# 2043
	lw		x31, 0(x27)	# 2043
	jalr	x0, x31, 0	# 2043
write_rgb.2931.13375:
	lw		x5, 16(x27)	# 2140
	lw		x6, 12(x27)	# 2140
	lw		x7, 8(x27)	# 2140
	lw		x8, 4(x27)	# 2140
	beq		x4, x6, beq.96913	# 2140
	addi	x4, x26, 604	# 2148
	addi	x6, x0, 4	# 2148
	mul		x6, x7, x6	# 2148
	add		x4, x4, x6	# 2148
	flw		f1, 0(x4)	# 2148
	sw		x5, 0(x2)	# 2134
	sw		x8, -4(x2)	# 2134
	sw		x7, -8(x2)	# 2134
	sw		x1, -12(x2)	# 2134
	addi	x2, x2, -16	# 2134
	jal		x1, int_of_float.2487.13039	# 2134
	addi	x2, x2, 16	# 2134
	lw		x1, -12(x2)	# 2134
	addi	x5, x0, 255	# 2135
	ble		x4, x5, ble.96915	# 2135
	addi	x4, x0, 255	# 2135
	jal		x0, ble_cont.96914	# 2135
ble.96915:
	lw		x6, -8(x2)	# 2135
	ble		x6, x4, ble_cont.96916	# 2135
	addi	x4, x0, 0	# 2135
ble_cont.96916:
ble_cont.96914:
	sw		x5, -12(x2)	# 2136
	sw		x1, -16(x2)	# 2136
	addi	x2, x2, -20	# 2136
	jal		x1, min_caml_print_char	# 2136
	addi	x2, x2, 20	# 2136
	lw		x1, -16(x2)	# 2136
	addi	x4, x26, 604	# 2149
	addi	x5, x0, 4	# 2149
	lw		x6, -4(x2)	# 2149
	mul		x5, x6, x5	# 2149
	add		x4, x4, x5	# 2149
	flw		f1, 0(x4)	# 2149
	sw		x1, -16(x2)	# 2134
	addi	x2, x2, -20	# 2134
	jal		x1, int_of_float.2487.13039	# 2134
	addi	x2, x2, 20	# 2134
	lw		x1, -16(x2)	# 2134
	lw		x5, -12(x2)	# 2135
	ble		x4, x5, ble.96918	# 2135
	addi	x4, x0, 255	# 2135
	jal		x0, ble_cont.96917	# 2135
ble.96918:
	lw		x6, -8(x2)	# 2135
	ble		x6, x4, ble_cont.96919	# 2135
	addi	x4, x0, 0	# 2135
ble_cont.96919:
ble_cont.96917:
	sw		x1, -16(x2)	# 2136
	addi	x2, x2, -20	# 2136
	jal		x1, min_caml_print_char	# 2136
	addi	x2, x2, 20	# 2136
	lw		x1, -16(x2)	# 2136
	addi	x4, x26, 604	# 2150
	addi	x5, x0, 4	# 2150
	lw		x6, 0(x2)	# 2150
	mul		x5, x6, x5	# 2150
	add		x4, x4, x5	# 2150
	flw		f1, 0(x4)	# 2150
	sw		x1, -16(x2)	# 2134
	addi	x2, x2, -20	# 2134
	jal		x1, int_of_float.2487.13039	# 2134
	addi	x2, x2, 20	# 2134
	lw		x1, -16(x2)	# 2134
	lw		x5, -12(x2)	# 2135
	ble		x4, x5, ble.96921	# 2135
	addi	x4, x0, 255	# 2135
	jal		x0, ble_cont.96920	# 2135
ble.96921:
	lw		x5, -8(x2)	# 2135
	ble		x5, x4, ble_cont.96922	# 2135
	addi	x4, x0, 0	# 2135
ble_cont.96922:
ble_cont.96920:
	jal		x0, min_caml_print_char	# 2136
beq.96913:
	addi	x4, x26, 604	# 2141
	addi	x6, x0, 4	# 2141
	mul		x6, x7, x6	# 2141
	add		x4, x4, x6	# 2141
	flw		f1, 0(x4)	# 2141
	sw		x5, 0(x2)	# 2128
	sw		x8, -4(x2)	# 2128
	sw		x7, -8(x2)	# 2128
	sw		x1, -16(x2)	# 2128
	addi	x2, x2, -20	# 2128
	jal		x1, int_of_float.2487.13039	# 2128
	addi	x2, x2, 20	# 2128
	lw		x1, -16(x2)	# 2128
	addi	x5, x0, 255	# 2129
	ble		x4, x5, ble.96924	# 2129
	addi	x4, x0, 255	# 2129
	jal		x0, ble_cont.96923	# 2129
ble.96924:
	lw		x6, -8(x2)	# 2129
	ble		x6, x4, ble_cont.96925	# 2129
	addi	x4, x0, 0	# 2129
ble_cont.96925:
ble_cont.96923:
	sw		x5, -16(x2)	# 2130
	sw		x1, -20(x2)	# 2130
	addi	x2, x2, -24	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 24	# 2130
	lw		x1, -20(x2)	# 2130
	addi	x4, x0, 32	# 2142
	sw		x4, -20(x2)	# 2142
	sw		x1, -24(x2)	# 2142
	addi	x2, x2, -28	# 2142
	jal		x1, min_caml_print_char	# 2142
	addi	x2, x2, 28	# 2142
	lw		x1, -24(x2)	# 2142
	addi	x4, x26, 604	# 2143
	addi	x5, x0, 4	# 2143
	lw		x6, -4(x2)	# 2143
	mul		x5, x6, x5	# 2143
	add		x4, x4, x5	# 2143
	flw		f1, 0(x4)	# 2143
	sw		x1, -24(x2)	# 2128
	addi	x2, x2, -28	# 2128
	jal		x1, int_of_float.2487.13039	# 2128
	addi	x2, x2, 28	# 2128
	lw		x1, -24(x2)	# 2128
	lw		x5, -16(x2)	# 2129
	ble		x4, x5, ble.96927	# 2129
	addi	x4, x0, 255	# 2129
	jal		x0, ble_cont.96926	# 2129
ble.96927:
	lw		x6, -8(x2)	# 2129
	ble		x6, x4, ble_cont.96928	# 2129
	addi	x4, x0, 0	# 2129
ble_cont.96928:
ble_cont.96926:
	sw		x1, -24(x2)	# 2130
	addi	x2, x2, -28	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 28	# 2130
	lw		x1, -24(x2)	# 2130
	lw		x4, -20(x2)	# 2144
	sw		x1, -24(x2)	# 2144
	addi	x2, x2, -28	# 2144
	jal		x1, min_caml_print_char	# 2144
	addi	x2, x2, 28	# 2144
	lw		x1, -24(x2)	# 2144
	addi	x4, x26, 604	# 2145
	addi	x5, x0, 4	# 2145
	lw		x6, 0(x2)	# 2145
	mul		x5, x6, x5	# 2145
	add		x4, x4, x5	# 2145
	flw		f1, 0(x4)	# 2145
	sw		x1, -24(x2)	# 2128
	addi	x2, x2, -28	# 2128
	jal		x1, int_of_float.2487.13039	# 2128
	addi	x2, x2, 28	# 2128
	lw		x1, -24(x2)	# 2128
	lw		x5, -16(x2)	# 2129
	ble		x4, x5, ble.96930	# 2129
	addi	x4, x0, 255	# 2129
	jal		x0, ble_cont.96929	# 2129
ble.96930:
	lw		x5, -8(x2)	# 2129
	ble		x5, x4, ble_cont.96931	# 2129
	addi	x4, x0, 0	# 2129
ble_cont.96931:
ble_cont.96929:
	sw		x1, -24(x2)	# 2130
	addi	x2, x2, -28	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 28	# 2130
	lw		x1, -24(x2)	# 2130
	addi	x4, x0, 10	# 2146
	jal		x0, min_caml_print_char	# 2146
pretrace_diffuse_rays.2933.13377:
	lw		x6, 20(x27)	# 2163
	lw		x7, 16(x27)	# 2163
	lw		x8, 12(x27)	# 2163
	lw		x9, 8(x27)	# 2163
	lw		x10, 4(x27)	# 2163
	addi	x11, x0, 4	# 2163
	ble		x5, x11, ble.96932	# 2163
	jalr	x0, x1, 0	# 2187
ble.96932:
	lw		x11, 8(x4)	# 577
	addi	x12, x0, 4	# 2063
	mul		x12, x5, x12	# 2063
	add		x11, x11, x12	# 2063
	lw		x11, 0(x11)	# 2063
	ble		x9, x11, ble.96934	# 2167
	jalr	x0, x1, 0	# 2186
ble.96934:
	lw		x11, 12(x4)	# 584
	addi	x12, x0, 4	# 2170
	mul		x12, x5, x12	# 2170
	add		x11, x11, x12	# 2170
	lw		x11, 0(x11)	# 2170
	sw		x27, 0(x2)	# 2170
	sw		x10, -4(x2)	# 2170
	sw		x5, -8(x2)	# 2170
	beq		x11, x9, beq_cont.96936	# 2170
	lw		x11, 24(x4)	# 614
	addi	x12, x0, 0	# 616
	addi	x13, x0, 4	# 616
	mul		x12, x12, x13	# 616
	add		x11, x11, x12	# 616
	lw		x11, 0(x11)	# 616
	fadd	f1, f0, f0	# 254
	addi	x12, x26, 592	# 247
	addi	x13, x0, 4	# 247
	mul		x13, x9, x13	# 247
	add		x12, x12, x13	# 247
	fsw		f1, 0(x12)	# 247
	addi	x12, x26, 592	# 248
	addi	x13, x0, 4	# 248
	mul		x13, x10, x13	# 248
	add		x12, x12, x13	# 248
	fsw		f1, 0(x12)	# 248
	addi	x12, x26, 592	# 249
	addi	x13, x0, 4	# 249
	mul		x8, x8, x13	# 249
	add		x8, x12, x8	# 249
	fsw		f1, 0(x8)	# 249
	lw		x8, 28(x4)	# 628
	lw		x12, 4(x4)	# 569
	addi	x13, x26, 716	# 2179
	addi	x14, x0, 4	# 2179
	mul		x11, x11, x14	# 2179
	add		x11, x13, x11	# 2179
	lw		x11, 0(x11)	# 2179
	addi	x13, x0, 4	# 2180
	mul		x13, x5, x13	# 2180
	add		x8, x8, x13	# 2180
	lw		x8, 0(x8)	# 2180
	addi	x13, x0, 4	# 2181
	mul		x13, x5, x13	# 2181
	add		x12, x12, x13	# 2181
	lw		x12, 0(x12)	# 2181
	addi	x13, x0, 0	# 259
	addi	x14, x0, 0	# 259
	addi	x15, x0, 4	# 259
	mul		x14, x14, x15	# 259
	add		x14, x12, x14	# 259
	flw		f1, 0(x14)	# 259
	addi	x14, x26, 648	# 259
	addi	x15, x0, 4	# 259
	mul		x13, x13, x15	# 259
	add		x13, x14, x13	# 259
	fsw		f1, 0(x13)	# 259
	addi	x13, x0, 1	# 260
	addi	x14, x0, 1	# 260
	addi	x15, x0, 4	# 260
	mul		x14, x14, x15	# 260
	add		x14, x12, x14	# 260
	flw		f1, 0(x14)	# 260
	addi	x14, x26, 648	# 260
	addi	x15, x0, 4	# 260
	mul		x13, x13, x15	# 260
	add		x13, x14, x13	# 260
	fsw		f1, 0(x13)	# 260
	addi	x13, x0, 2	# 261
	addi	x14, x0, 4	# 261
	mul		x14, x13, x14	# 261
	add		x14, x12, x14	# 261
	flw		f1, 0(x14)	# 261
	addi	x14, x26, 648	# 261
	addi	x15, x0, 4	# 261
	mul		x13, x13, x15	# 261
	add		x13, x14, x13	# 261
	fsw		f1, 0(x13)	# 261
	addi	x13, x26, 0	# 1315
	addi	x14, x0, 4	# 1315
	mul		x9, x9, x14	# 1315
	add		x9, x13, x9	# 1315
	lw		x9, 0(x9)	# 1315
	sub		x9, x9, x10	# 1315
	sw		x4, -12(x2)	# 1315
	sw		x12, -16(x2)	# 1315
	sw		x8, -20(x2)	# 1315
	sw		x11, -24(x2)	# 1315
	sw		x7, -28(x2)	# 1315
	addi	x5, x9, 0
	addi	x4, x12, 0
	addi	x27, x6, 0
	sw		x1, -32(x2)	# 1315
	addi	x2, x2, -36	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 36	# 1315
	lw		x1, -32(x2)	# 1315
	addi	x7, x0, 118	# 1964
	lw		x4, -24(x2)	# 1964
	lw		x5, -20(x2)	# 1964
	lw		x6, -16(x2)	# 1964
	lw		x27, -28(x2)	# 1964
	sw		x1, -32(x2)	# 1964
	addi	x2, x2, -36	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 36	# 1964
	lw		x1, -32(x2)	# 1964
	lw		x4, -12(x2)	# 598
	lw		x5, 20(x4)	# 598
	addi	x6, x0, 4	# 2183
	lw		x7, -8(x2)	# 2183
	mul		x6, x7, x6	# 2183
	add		x5, x5, x6	# 2183
	lw		x5, 0(x5)	# 2183
	addi	x6, x0, 0	# 259
	addi	x8, x0, 0	# 259
	addi	x9, x26, 592	# 259
	addi	x10, x0, 4	# 259
	mul		x8, x8, x10	# 259
	add		x8, x9, x8	# 259
	flw		f1, 0(x8)	# 259
	addi	x8, x0, 4	# 259
	mul		x6, x6, x8	# 259
	add		x6, x5, x6	# 259
	fsw		f1, 0(x6)	# 259
	addi	x6, x0, 1	# 260
	addi	x8, x0, 1	# 260
	addi	x9, x26, 592	# 260
	addi	x10, x0, 4	# 260
	mul		x8, x8, x10	# 260
	add		x8, x9, x8	# 260
	flw		f1, 0(x8)	# 260
	addi	x8, x0, 4	# 260
	mul		x6, x6, x8	# 260
	add		x6, x5, x6	# 260
	fsw		f1, 0(x6)	# 260
	addi	x6, x0, 2	# 261
	addi	x8, x26, 592	# 261
	addi	x9, x0, 4	# 261
	mul		x9, x6, x9	# 261
	add		x8, x8, x9	# 261
	flw		f1, 0(x8)	# 261
	addi	x8, x0, 4	# 261
	mul		x6, x6, x8	# 261
	add		x5, x5, x6	# 261
	fsw		f1, 0(x5)	# 261
beq_cont.96936:
	lw		x5, -4(x2)	# 2185
	lw		x6, -8(x2)	# 2185
	add		x5, x6, x5	# 2185
	lw		x27, 0(x2)	# 2185
	lw		x31, 0(x27)	# 2185
	jalr	x0, x31, 0	# 2185
pretrace_pixels.2936.13380:
	lw		x7, 32(x27)	# 2193
	lw		x8, 28(x27)	# 2193
	lw		x9, 24(x27)	# 2193
	lw		x10, 20(x27)	# 2193
	lw		x11, 16(x27)	# 2193
	lw		x12, 12(x27)	# 2193
	lw		x13, 8(x27)	# 2193
	flw		f4, 4(x27)	# 2193
	ble		x12, x5, ble.96937	# 2193
	jalr	x0, x1, 0	# 2213
ble.96937:
	addi	x14, x26, 632	# 2195
	addi	x15, x0, 4	# 2195
	mul		x15, x12, x15	# 2195
	add		x14, x14, x15	# 2195
	flw		f5, 0(x14)	# 2195
	addi	x14, x26, 624	# 2195
	addi	x15, x0, 4	# 2195
	mul		x15, x12, x15	# 2195
	add		x14, x14, x15	# 2195
	lw		x14, 0(x14)	# 2195
	sub		x14, x5, x14	# 2195
	sw		x27, 0(x2)	# 14
	sw		x10, -4(x2)	# 14
	sw		x9, -8(x2)	# 14
	sw		x6, -12(x2)	# 14
	sw		x8, -16(x2)	# 14
	sw		x4, -20(x2)	# 14
	sw		x5, -24(x2)	# 14
	fsw		f4, -28(x2)	# 14
	sw		x7, -32(x2)	# 14
	fsw		f3, -36(x2)	# 14
	sw		x11, -40(x2)	# 14
	fsw		f2, -44(x2)	# 14
	sw		x13, -48(x2)	# 14
	fsw		f1, -52(x2)	# 14
	sw		x12, -56(x2)	# 14
	fsw		f5, -60(x2)	# 14
	ble		x12, x14, ble.96940	# 14
	sub		x14, x0, x14	# 16
	addi	x4, x14, 0
	sw		x1, -64(x2)	# 16
	addi	x2, x2, -68	# 16
	jal		x1, float_of_int.2489.13041	# 16
	addi	x2, x2, 68	# 16
	lw		x1, -64(x2)	# 16
	fsub	f1, f0, f1	# 16
	jal		x0, ble_cont.96939	# 14
ble.96940:
	addi	x15, x0, 1	# 15
	ble		x15, x14, ble.96942	# 15
	fadd	f1, f0, f0	# 15
	jal		x0, ble_cont.96941	# 15
ble.96942:
	addi	x15, x0, 1	# 15
	sub		x14, x14, x15	# 15
	addi	x4, x14, 0
	sw		x1, -64(x2)	# 15
	addi	x2, x2, -68	# 15
	jal		x1, float_of_int.2489.13041	# 15
	addi	x2, x2, 68	# 15
	lw		x1, -64(x2)	# 15
	fadd	f2, f0, f16	# 15
	fadd	f1, f1, f2	# 15
ble_cont.96941:
ble_cont.96939:
	flw		f2, -60(x2)	# 2195
	fmul	f1, f2, f1	# 2195
	addi	x4, x26, 660	# 2196
	addi	x5, x0, 4	# 2196
	lw		x6, -56(x2)	# 2196
	mul		x5, x6, x5	# 2196
	add		x4, x4, x5	# 2196
	flw		f2, 0(x4)	# 2196
	fmul	f2, f1, f2	# 2196
	flw		f3, -52(x2)	# 2196
	fadd	f2, f2, f3	# 2196
	addi	x4, x26, 696	# 2196
	addi	x5, x0, 4	# 2196
	mul		x5, x6, x5	# 2196
	add		x4, x4, x5	# 2196
	fsw		f2, 0(x4)	# 2196
	addi	x4, x26, 660	# 2197
	addi	x5, x0, 4	# 2197
	lw		x7, -48(x2)	# 2197
	mul		x5, x7, x5	# 2197
	add		x4, x4, x5	# 2197
	flw		f2, 0(x4)	# 2197
	fmul	f2, f1, f2	# 2197
	flw		f4, -44(x2)	# 2197
	fadd	f2, f2, f4	# 2197
	addi	x4, x26, 696	# 2197
	addi	x5, x0, 4	# 2197
	mul		x5, x7, x5	# 2197
	add		x4, x4, x5	# 2197
	fsw		f2, 0(x4)	# 2197
	addi	x4, x26, 660	# 2198
	addi	x5, x0, 4	# 2198
	lw		x8, -40(x2)	# 2198
	mul		x5, x8, x5	# 2198
	add		x4, x4, x5	# 2198
	flw		f2, 0(x4)	# 2198
	fmul	f1, f1, f2	# 2198
	flw		f2, -36(x2)	# 2198
	fadd	f1, f1, f2	# 2198
	addi	x4, x26, 696	# 2198
	addi	x5, x0, 4	# 2198
	mul		x5, x8, x5	# 2198
	add		x4, x4, x5	# 2198
	fsw		f1, 0(x4)	# 2198
	addi	x4, x26, 696	# 2199
	lw		x27, -32(x2)	# 2199
	addi	x5, x6, 0
	sw		x1, -64(x2)	# 2199
	addi	x2, x2, -68	# 2199
	lw		x31, 0(x27)	# 2199
	jalr	x1, x31, 0	# 2199
	addi	x2, x2, 68	# 2199
	lw		x1, -64(x2)	# 2199
	addi	x4, x26, 604	# 247
	addi	x5, x0, 4	# 247
	lw		x6, -56(x2)	# 247
	mul		x5, x6, x5	# 247
	add		x4, x4, x5	# 247
	flw		f2, -28(x2)	# 247
	fsw		f2, 0(x4)	# 247
	addi	x4, x26, 604	# 248
	addi	x5, x0, 4	# 248
	lw		x7, -48(x2)	# 248
	mul		x5, x7, x5	# 248
	add		x4, x4, x5	# 248
	fsw		f2, 0(x4)	# 248
	addi	x4, x26, 604	# 249
	addi	x5, x0, 4	# 249
	lw		x8, -40(x2)	# 249
	mul		x5, x8, x5	# 249
	add		x4, x4, x5	# 249
	fsw		f2, 0(x4)	# 249
	addi	x4, x26, 300	# 259
	addi	x5, x0, 4	# 259
	mul		x5, x6, x5	# 259
	add		x4, x4, x5	# 259
	flw		f1, 0(x4)	# 259
	addi	x4, x26, 636	# 259
	addi	x5, x0, 4	# 259
	mul		x5, x6, x5	# 259
	add		x4, x4, x5	# 259
	fsw		f1, 0(x4)	# 259
	addi	x4, x26, 300	# 260
	addi	x5, x0, 4	# 260
	mul		x5, x7, x5	# 260
	add		x4, x4, x5	# 260
	flw		f1, 0(x4)	# 260
	addi	x4, x26, 636	# 260
	addi	x5, x0, 4	# 260
	mul		x5, x7, x5	# 260
	add		x4, x4, x5	# 260
	fsw		f1, 0(x4)	# 260
	addi	x4, x26, 300	# 261
	addi	x5, x0, 4	# 261
	mul		x5, x8, x5	# 261
	add		x4, x4, x5	# 261
	flw		f1, 0(x4)	# 261
	addi	x4, x26, 636	# 261
	addi	x5, x0, 4	# 261
	mul		x5, x8, x5	# 261
	add		x4, x4, x5	# 261
	fsw		f1, 0(x4)	# 261
	fadd	f1, f0, f16	# 2204
	addi	x4, x0, 4	# 2204
	lw		x5, -24(x2)	# 2204
	mul		x4, x5, x4	# 2204
	lw		x9, -20(x2)	# 2204
	add		x4, x9, x4	# 2204
	lw		x4, 0(x4)	# 2204
	addi	x10, x26, 696	# 2204
	lw		x27, -16(x2)	# 2204
	addi	x5, x10, 0
	addi	x31, x6, 0
	addi	x6, x4, 0
	addi	x4, x31, 0
	sw		x1, -64(x2)	# 2204
	addi	x2, x2, -68	# 2204
	lw		x31, 0(x27)	# 2204
	jalr	x1, x31, 0	# 2204
	addi	x2, x2, 68	# 2204
	lw		x1, -64(x2)	# 2204
	addi	x4, x0, 4	# 2205
	lw		x5, -24(x2)	# 2205
	mul		x4, x5, x4	# 2205
	lw		x6, -20(x2)	# 2205
	add		x4, x6, x4	# 2205
	lw		x4, 0(x4)	# 2205
	lw		x4, 0(x4)	# 562
	addi	x7, x26, 604	# 259
	addi	x8, x0, 4	# 259
	lw		x9, -56(x2)	# 259
	mul		x8, x9, x8	# 259
	add		x7, x7, x8	# 259
	flw		f1, 0(x7)	# 259
	addi	x7, x0, 4	# 259
	mul		x7, x9, x7	# 259
	add		x7, x4, x7	# 259
	fsw		f1, 0(x7)	# 259
	addi	x7, x26, 604	# 260
	addi	x8, x0, 4	# 260
	lw		x10, -48(x2)	# 260
	mul		x8, x10, x8	# 260
	add		x7, x7, x8	# 260
	flw		f1, 0(x7)	# 260
	addi	x7, x0, 4	# 260
	mul		x7, x10, x7	# 260
	add		x7, x4, x7	# 260
	fsw		f1, 0(x7)	# 260
	addi	x7, x26, 604	# 261
	addi	x8, x0, 4	# 261
	lw		x11, -40(x2)	# 261
	mul		x8, x11, x8	# 261
	add		x7, x7, x8	# 261
	flw		f1, 0(x7)	# 261
	addi	x7, x0, 4	# 261
	mul		x7, x11, x7	# 261
	add		x4, x4, x7	# 261
	fsw		f1, 0(x4)	# 261
	addi	x4, x0, 4	# 2206
	mul		x4, x5, x4	# 2206
	add		x4, x6, x4	# 2206
	lw		x4, 0(x4)	# 2206
	lw		x4, 24(x4)	# 621
	addi	x7, x0, 4	# 623
	mul		x7, x9, x7	# 623
	add		x4, x4, x7	# 623
	lw		x7, -12(x2)	# 623
	sw		x7, 0(x4)	# 623
	addi	x4, x0, 4	# 2209
	mul		x4, x5, x4	# 2209
	add		x4, x6, x4	# 2209
	lw		x4, 0(x4)	# 2209
	lw		x27, -8(x2)	# 2209
	addi	x5, x9, 0
	sw		x1, -64(x2)	# 2209
	addi	x2, x2, -68	# 2209
	lw		x31, 0(x27)	# 2209
	jalr	x1, x31, 0	# 2209
	addi	x2, x2, 68	# 2209
	lw		x1, -64(x2)	# 2209
	lw		x4, -48(x2)	# 2211
	lw		x5, -24(x2)	# 2211
	sub		x5, x5, x4	# 2211
	lw		x6, -12(x2)	# 224
	add		x4, x6, x4	# 224
	lw		x6, -4(x2)	# 225
	ble		x6, x4, ble.96944	# 225
	addi	x6, x4, 0	# 225
	jal		x0, ble_cont.96943	# 225
ble.96944:
	sub		x6, x4, x6	# 225
ble_cont.96943:
	flw		f1, -52(x2)	# 2211
	flw		f2, -44(x2)	# 2211
	flw		f3, -36(x2)	# 2211
	lw		x4, -20(x2)	# 2211
	lw		x27, 0(x2)	# 2211
	lw		x31, 0(x27)	# 2211
	jalr	x0, x31, 0	# 2211
pretrace_line.2943.13387:
	lw		x7, 16(x27)	# 2218
	lw		x8, 12(x27)	# 2218
	lw		x9, 8(x27)	# 2218
	lw		x10, 4(x27)	# 2218
	addi	x11, x26, 632	# 2218
	addi	x12, x0, 4	# 2218
	mul		x12, x9, x12	# 2218
	add		x11, x11, x12	# 2218
	flw		f1, 0(x11)	# 2218
	addi	x11, x26, 624	# 2218
	addi	x12, x0, 4	# 2218
	mul		x12, x10, x12	# 2218
	add		x11, x11, x12	# 2218
	lw		x11, 0(x11)	# 2218
	sub		x5, x5, x11	# 2218
	sw		x6, 0(x2)	# 14
	sw		x4, -4(x2)	# 14
	sw		x7, -8(x2)	# 14
	sw		x8, -12(x2)	# 14
	sw		x10, -16(x2)	# 14
	sw		x9, -20(x2)	# 14
	fsw		f1, -24(x2)	# 14
	ble		x9, x5, ble.96946	# 14
	sub		x5, x0, x5	# 16
	addi	x4, x5, 0
	sw		x1, -28(x2)	# 16
	addi	x2, x2, -32	# 16
	jal		x1, float_of_int.2489.13041	# 16
	addi	x2, x2, 32	# 16
	lw		x1, -28(x2)	# 16
	fsub	f1, f0, f1	# 16
	jal		x0, ble_cont.96945	# 14
ble.96946:
	addi	x11, x0, 1	# 15
	ble		x11, x5, ble.96948	# 15
	fadd	f1, f0, f0	# 15
	jal		x0, ble_cont.96947	# 15
ble.96948:
	addi	x11, x0, 1	# 15
	sub		x5, x5, x11	# 15
	addi	x4, x5, 0
	sw		x1, -28(x2)	# 15
	addi	x2, x2, -32	# 15
	jal		x1, float_of_int.2489.13041	# 15
	addi	x2, x2, 32	# 15
	lw		x1, -28(x2)	# 15
	fadd	f2, f0, f16	# 15
	fadd	f1, f1, f2	# 15
ble_cont.96947:
ble_cont.96945:
	flw		f2, -24(x2)	# 2218
	fmul	f1, f2, f1	# 2218
	addi	x4, x26, 672	# 2221
	addi	x5, x0, 4	# 2221
	lw		x6, -20(x2)	# 2221
	mul		x5, x6, x5	# 2221
	add		x4, x4, x5	# 2221
	flw		f2, 0(x4)	# 2221
	fmul	f2, f1, f2	# 2221
	addi	x4, x26, 684	# 2221
	addi	x5, x0, 4	# 2221
	mul		x5, x6, x5	# 2221
	add		x4, x4, x5	# 2221
	flw		f3, 0(x4)	# 2221
	fadd	f2, f2, f3	# 2221
	addi	x4, x26, 672	# 2222
	addi	x5, x0, 4	# 2222
	lw		x7, -16(x2)	# 2222
	mul		x5, x7, x5	# 2222
	add		x4, x4, x5	# 2222
	flw		f3, 0(x4)	# 2222
	fmul	f3, f1, f3	# 2222
	addi	x4, x26, 684	# 2222
	addi	x5, x0, 4	# 2222
	mul		x5, x7, x5	# 2222
	add		x4, x4, x5	# 2222
	flw		f4, 0(x4)	# 2222
	fadd	f3, f3, f4	# 2222
	addi	x4, x26, 672	# 2223
	addi	x5, x0, 4	# 2223
	lw		x8, -12(x2)	# 2223
	mul		x5, x8, x5	# 2223
	add		x4, x4, x5	# 2223
	flw		f4, 0(x4)	# 2223
	fmul	f1, f1, f4	# 2223
	addi	x4, x26, 684	# 2223
	addi	x5, x0, 4	# 2223
	mul		x5, x8, x5	# 2223
	add		x4, x4, x5	# 2223
	flw		f4, 0(x4)	# 2223
	fadd	f1, f1, f4	# 2223
	addi	x4, x26, 616	# 2224
	addi	x5, x0, 4	# 2224
	mul		x5, x6, x5	# 2224
	add		x4, x4, x5	# 2224
	lw		x4, 0(x4)	# 2224
	sub		x5, x4, x7	# 2224
	lw		x4, -4(x2)	# 2224
	lw		x6, 0(x2)	# 2224
	lw		x27, -8(x2)	# 2224
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	lw		x31, 0(x27)	# 2224
	jalr	x0, x31, 0	# 2224
scan_pixel.2947.13391:
	lw		x10, 32(x27)	# 2234
	lw		x11, 28(x27)	# 2234
	lw		x12, 24(x27)	# 2234
	lw		x13, 20(x27)	# 2234
	lw		x14, 16(x27)	# 2234
	lw		x15, 12(x27)	# 2234
	lw		x16, 8(x27)	# 2234
	lw		x17, 4(x27)	# 2234
	addi	x18, x26, 616	# 2234
	addi	x19, x0, 4	# 2234
	mul		x19, x16, x19	# 2234
	add		x18, x18, x19	# 2234
	lw		x18, 0(x18)	# 2234
	ble		x18, x4, ble.96949	# 2234
	addi	x18, x0, 4	# 2237
	mul		x18, x4, x18	# 2237
	add		x18, x7, x18	# 2237
	lw		x18, 0(x18)	# 2237
	lw		x18, 0(x18)	# 562
	addi	x19, x0, 4	# 259
	mul		x19, x16, x19	# 259
	add		x19, x18, x19	# 259
	flw		f1, 0(x19)	# 259
	addi	x19, x26, 604	# 259
	addi	x20, x0, 4	# 259
	mul		x20, x16, x20	# 259
	add		x19, x19, x20	# 259
	fsw		f1, 0(x19)	# 259
	addi	x19, x0, 4	# 260
	mul		x19, x17, x19	# 260
	add		x19, x18, x19	# 260
	flw		f1, 0(x19)	# 260
	addi	x19, x26, 604	# 260
	addi	x20, x0, 4	# 260
	mul		x20, x17, x20	# 260
	add		x19, x19, x20	# 260
	fsw		f1, 0(x19)	# 260
	addi	x19, x0, 4	# 261
	mul		x19, x15, x19	# 261
	add		x18, x18, x19	# 261
	flw		f1, 0(x18)	# 261
	addi	x18, x26, 604	# 261
	addi	x19, x0, 4	# 261
	mul		x19, x15, x19	# 261
	add		x18, x18, x19	# 261
	fsw		f1, 0(x18)	# 261
	addi	x18, x26, 616	# 2050
	addi	x19, x0, 4	# 2050
	mul		x19, x17, x19	# 2050
	add		x18, x18, x19	# 2050
	lw		x18, 0(x18)	# 2050
	add		x19, x5, x17	# 2050
	ble		x18, x19, ble.96951	# 2050
	ble		x5, x16, ble.96953	# 2051
	addi	x18, x26, 616	# 2052
	addi	x20, x0, 4	# 2052
	mul		x20, x16, x20	# 2052
	add		x18, x18, x20	# 2052
	lw		x18, 0(x18)	# 2052
	add		x20, x4, x17	# 2052
	ble		x18, x20, ble.96955	# 2052
	ble		x4, x16, ble.96957	# 2053
	addi	x18, x0, 1	# 2054
	jal		x0, ble_cont.96956	# 2053
ble.96957:
	addi	x18, x0, 0	# 2055
ble_cont.96956:
	jal		x0, ble_cont.96954	# 2052
ble.96955:
	addi	x18, x0, 0	# 2056
ble_cont.96954:
	jal		x0, ble_cont.96952	# 2051
ble.96953:
	addi	x18, x0, 0	# 2057
ble_cont.96952:
	jal		x0, ble_cont.96950	# 2050
ble.96951:
	addi	x18, x0, 0	# 2058
ble_cont.96950:
	sw		x27, 0(x2)	# 2240
	sw		x8, -4(x2)	# 2240
	sw		x6, -8(x2)	# 2240
	sw		x11, -12(x2)	# 2240
	sw		x12, -16(x2)	# 2240
	sw		x5, -20(x2)	# 2240
	sw		x19, -24(x2)	# 2240
	sw		x15, -28(x2)	# 2240
	sw		x7, -32(x2)	# 2240
	sw		x16, -36(x2)	# 2240
	sw		x17, -40(x2)	# 2240
	sw		x4, -44(x2)	# 2240
	sw		x9, -48(x2)	# 2240
	sw		x10, -52(x2)	# 2240
	beq		x18, x16, beq.96959	# 2240
	addi	x14, x0, 0	# 2241
	addi	x18, x0, 4	# 2087
	mul		x18, x4, x18	# 2087
	add		x18, x7, x18	# 2087
	lw		x18, 0(x18)	# 2087
	addi	x20, x0, 0	# 2091
	lw		x21, 8(x18)	# 577
	addi	x22, x0, 4	# 2063
	mul		x22, x14, x22	# 2063
	add		x21, x21, x22	# 2063
	lw		x21, 0(x21)	# 2063
	ble		x20, x21, ble.96961	# 2091
	jal		x0, ble_cont.96960	# 2091
ble.96961:
	addi	x21, x0, 4	# 2069
	mul		x21, x4, x21	# 2069
	add		x21, x7, x21	# 2069
	lw		x21, 0(x21)	# 2069
	lw		x21, 8(x21)	# 577
	addi	x22, x0, 4	# 2063
	mul		x22, x14, x22	# 2063
	add		x21, x21, x22	# 2063
	lw		x21, 0(x21)	# 2063
	addi	x22, x0, 4	# 2071
	mul		x22, x4, x22	# 2071
	add		x22, x6, x22	# 2071
	lw		x22, 0(x22)	# 2071
	lw		x22, 8(x22)	# 577
	addi	x23, x0, 4	# 2063
	mul		x23, x14, x23	# 2063
	add		x22, x22, x23	# 2063
	lw		x22, 0(x22)	# 2063
	beq		x22, x21, beq.96963	# 2071
	addi	x21, x0, 0	# 2079
	jal		x0, beq_cont.96962	# 2071
beq.96963:
	addi	x22, x0, 4	# 2072
	mul		x22, x4, x22	# 2072
	add		x22, x8, x22	# 2072
	lw		x22, 0(x22)	# 2072
	lw		x22, 8(x22)	# 577
	addi	x23, x0, 4	# 2063
	mul		x23, x14, x23	# 2063
	add		x22, x22, x23	# 2063
	lw		x22, 0(x22)	# 2063
	beq		x22, x21, beq.96965	# 2072
	addi	x21, x0, 0	# 2078
	jal		x0, beq_cont.96964	# 2072
beq.96965:
	sub		x22, x4, x17	# 2073
	addi	x23, x0, 4	# 2073
	mul		x22, x22, x23	# 2073
	add		x22, x7, x22	# 2073
	lw		x22, 0(x22)	# 2073
	lw		x22, 8(x22)	# 577
	addi	x23, x0, 4	# 2063
	mul		x23, x14, x23	# 2063
	add		x22, x22, x23	# 2063
	lw		x22, 0(x22)	# 2063
	beq		x22, x21, beq.96967	# 2073
	addi	x21, x0, 0	# 2077
	jal		x0, beq_cont.96966	# 2073
beq.96967:
	add		x22, x4, x17	# 2074
	addi	x23, x0, 4	# 2074
	mul		x22, x22, x23	# 2074
	add		x22, x7, x22	# 2074
	lw		x22, 0(x22)	# 2074
	lw		x22, 8(x22)	# 577
	addi	x23, x0, 4	# 2063
	mul		x23, x14, x23	# 2063
	add		x22, x22, x23	# 2063
	lw		x22, 0(x22)	# 2063
	beq		x22, x21, beq.96969	# 2074
	addi	x21, x0, 0	# 2076
	jal		x0, beq_cont.96968	# 2074
beq.96969:
	addi	x21, x0, 1	# 2075
beq_cont.96968:
beq_cont.96966:
beq_cont.96964:
beq_cont.96962:
	beq		x21, x20, beq.96971	# 2093
	lw		x18, 12(x18)	# 584
	addi	x20, x0, 4	# 2097
	mul		x20, x14, x20	# 2097
	add		x18, x18, x20	# 2097
	lw		x18, 0(x18)	# 2097
	addi	x20, x0, 0	# 2097
	beq		x18, x20, beq_cont.96972	# 2097
	addi	x5, x6, 0
	addi	x27, x13, 0
	addi	x6, x7, 0
	addi	x7, x8, 0
	addi	x8, x14, 0
	sw		x1, -56(x2)	# 2098
	addi	x2, x2, -60	# 2098
	lw		x31, 0(x27)	# 2098
	jalr	x1, x31, 0	# 2098
	addi	x2, x2, 60	# 2098
	lw		x1, -56(x2)	# 2098
beq_cont.96972:
	addi	x9, x0, 1	# 2102
	lw		x4, -44(x2)	# 2102
	lw		x5, -20(x2)	# 2102
	lw		x6, -8(x2)	# 2102
	lw		x7, -32(x2)	# 2102
	lw		x8, -4(x2)	# 2102
	lw		x27, -12(x2)	# 2102
	sw		x1, -56(x2)	# 2102
	addi	x2, x2, -60	# 2102
	lw		x31, 0(x27)	# 2102
	jalr	x1, x31, 0	# 2102
	addi	x2, x2, 60	# 2102
	lw		x1, -56(x2)	# 2102
	jal		x0, beq_cont.96970	# 2093
beq.96971:
	addi	x13, x0, 4	# 2105
	mul		x13, x4, x13	# 2105
	add		x13, x7, x13	# 2105
	lw		x13, 0(x13)	# 2105
	addi	x5, x14, 0
	addi	x4, x13, 0
	addi	x27, x12, 0
	sw		x1, -56(x2)	# 2105
	addi	x2, x2, -60	# 2105
	lw		x31, 0(x27)	# 2105
	jalr	x1, x31, 0	# 2105
	addi	x2, x2, 60	# 2105
	lw		x1, -56(x2)	# 2105
beq_cont.96970:
ble_cont.96960:
	jal		x0, beq_cont.96958	# 2240
beq.96959:
	addi	x13, x0, 4	# 2243
	mul		x13, x4, x13	# 2243
	add		x13, x7, x13	# 2243
	lw		x13, 0(x13)	# 2243
	addi	x18, x0, 0	# 2243
	lw		x20, 8(x13)	# 577
	addi	x21, x0, 0	# 2038
	addi	x22, x0, 4	# 2038
	mul		x22, x18, x22	# 2038
	add		x20, x20, x22	# 2038
	lw		x20, 0(x20)	# 2038
	ble		x21, x20, ble.96974	# 2038
	jal		x0, ble_cont.96973	# 2038
ble.96974:
	lw		x20, 12(x13)	# 584
	addi	x21, x0, 4	# 2040
	mul		x21, x18, x21	# 2040
	add		x20, x20, x21	# 2040
	lw		x20, 0(x20)	# 2040
	addi	x21, x0, 0	# 2040
	sw		x13, -56(x2)	# 2040
	beq		x20, x21, beq_cont.96975	# 2040
	addi	x5, x18, 0
	addi	x4, x13, 0
	addi	x27, x14, 0
	sw		x1, -60(x2)	# 2041
	addi	x2, x2, -64	# 2041
	lw		x31, 0(x27)	# 2041
	jalr	x1, x31, 0	# 2041
	addi	x2, x2, 64	# 2041
	lw		x1, -60(x2)	# 2041
beq_cont.96975:
	addi	x5, x0, 1	# 2043
	lw		x4, -56(x2)	# 2043
	lw		x27, -16(x2)	# 2043
	sw		x1, -60(x2)	# 2043
	addi	x2, x2, -64	# 2043
	lw		x31, 0(x27)	# 2043
	jalr	x1, x31, 0	# 2043
	addi	x2, x2, 64	# 2043
	lw		x1, -60(x2)	# 2043
ble_cont.96973:
beq_cont.96958:
	lw		x4, -48(x2)	# 2246
	lw		x27, -52(x2)	# 2246
	sw		x1, -60(x2)	# 2246
	addi	x2, x2, -64	# 2246
	lw		x31, 0(x27)	# 2246
	jalr	x1, x31, 0	# 2246
	addi	x2, x2, 64	# 2246
	lw		x1, -60(x2)	# 2246
	lw		x4, -40(x2)	# 2248
	lw		x5, -44(x2)	# 2248
	add		x5, x5, x4	# 2248
	addi	x6, x26, 616	# 2234
	addi	x7, x0, 4	# 2234
	lw		x8, -36(x2)	# 2234
	mul		x7, x8, x7	# 2234
	add		x6, x6, x7	# 2234
	lw		x6, 0(x6)	# 2234
	ble		x6, x5, ble.96976	# 2234
	addi	x6, x0, 4	# 2237
	mul		x6, x5, x6	# 2237
	lw		x7, -32(x2)	# 2237
	add		x6, x7, x6	# 2237
	lw		x6, 0(x6)	# 2237
	lw		x6, 0(x6)	# 562
	addi	x9, x0, 4	# 259
	mul		x9, x8, x9	# 259
	add		x9, x6, x9	# 259
	flw		f1, 0(x9)	# 259
	addi	x9, x26, 604	# 259
	addi	x10, x0, 4	# 259
	mul		x10, x8, x10	# 259
	add		x9, x9, x10	# 259
	fsw		f1, 0(x9)	# 259
	addi	x9, x0, 4	# 260
	mul		x9, x4, x9	# 260
	add		x9, x6, x9	# 260
	flw		f1, 0(x9)	# 260
	addi	x9, x26, 604	# 260
	addi	x10, x0, 4	# 260
	mul		x10, x4, x10	# 260
	add		x9, x9, x10	# 260
	fsw		f1, 0(x9)	# 260
	addi	x9, x0, 4	# 261
	lw		x10, -28(x2)	# 261
	mul		x9, x10, x9	# 261
	add		x6, x6, x9	# 261
	flw		f1, 0(x6)	# 261
	addi	x6, x26, 604	# 261
	addi	x9, x0, 4	# 261
	mul		x9, x10, x9	# 261
	add		x6, x6, x9	# 261
	fsw		f1, 0(x6)	# 261
	addi	x6, x26, 616	# 2050
	addi	x9, x0, 4	# 2050
	mul		x9, x4, x9	# 2050
	add		x6, x6, x9	# 2050
	lw		x6, 0(x6)	# 2050
	lw		x9, -24(x2)	# 2050
	ble		x6, x9, ble.96978	# 2050
	lw		x6, -20(x2)	# 2051
	ble		x6, x8, ble.96980	# 2051
	addi	x9, x26, 616	# 2052
	addi	x10, x0, 4	# 2052
	mul		x10, x8, x10	# 2052
	add		x9, x9, x10	# 2052
	lw		x9, 0(x9)	# 2052
	add		x10, x5, x4	# 2052
	ble		x9, x10, ble.96982	# 2052
	ble		x5, x8, ble.96984	# 2053
	addi	x6, x0, 1	# 2054
	jal		x0, ble_cont.96983	# 2053
ble.96984:
	addi	x6, x0, 0	# 2055
ble_cont.96983:
	jal		x0, ble_cont.96981	# 2052
ble.96982:
	addi	x6, x0, 0	# 2056
ble_cont.96981:
	jal		x0, ble_cont.96979	# 2051
ble.96980:
	addi	x6, x0, 0	# 2057
ble_cont.96979:
	jal		x0, ble_cont.96977	# 2050
ble.96978:
	addi	x6, x0, 0	# 2058
ble_cont.96977:
	sw		x5, -60(x2)	# 2240
	beq		x6, x8, beq.96986	# 2240
	addi	x9, x0, 0	# 2241
	lw		x6, -20(x2)	# 2241
	lw		x8, -8(x2)	# 2241
	lw		x10, -4(x2)	# 2241
	lw		x27, -12(x2)	# 2241
	addi	x4, x5, 0
	addi	x5, x6, 0
	addi	x6, x8, 0
	addi	x8, x10, 0
	sw		x1, -64(x2)	# 2241
	addi	x2, x2, -68	# 2241
	lw		x31, 0(x27)	# 2241
	jalr	x1, x31, 0	# 2241
	addi	x2, x2, 68	# 2241
	lw		x1, -64(x2)	# 2241
	jal		x0, beq_cont.96985	# 2240
beq.96986:
	addi	x6, x0, 4	# 2243
	mul		x6, x5, x6	# 2243
	add		x6, x7, x6	# 2243
	lw		x6, 0(x6)	# 2243
	addi	x8, x0, 0	# 2243
	lw		x27, -16(x2)	# 2243
	addi	x5, x8, 0
	addi	x4, x6, 0
	sw		x1, -64(x2)	# 2243
	addi	x2, x2, -68	# 2243
	lw		x31, 0(x27)	# 2243
	jalr	x1, x31, 0	# 2243
	addi	x2, x2, 68	# 2243
	lw		x1, -64(x2)	# 2243
beq_cont.96985:
	lw		x4, -48(x2)	# 2246
	lw		x27, -52(x2)	# 2246
	sw		x1, -64(x2)	# 2246
	addi	x2, x2, -68	# 2246
	lw		x31, 0(x27)	# 2246
	jalr	x1, x31, 0	# 2246
	addi	x2, x2, 68	# 2246
	lw		x1, -64(x2)	# 2246
	lw		x4, -40(x2)	# 2248
	lw		x5, -60(x2)	# 2248
	add		x4, x5, x4	# 2248
	lw		x5, -20(x2)	# 2248
	lw		x6, -8(x2)	# 2248
	lw		x7, -32(x2)	# 2248
	lw		x8, -4(x2)	# 2248
	lw		x9, -48(x2)	# 2248
	lw		x27, 0(x2)	# 2248
	lw		x31, 0(x27)	# 2248
	jalr	x0, x31, 0	# 2248
ble.96976:
	jalr	x0, x1, 0	# 2249
ble.96949:
	jalr	x0, x1, 0	# 2249
scan_line.2954.13398:
	lw		x10, 36(x27)	# 2255
	lw		x11, 32(x27)	# 2255
	lw		x12, 28(x27)	# 2255
	lw		x13, 24(x27)	# 2255
	lw		x14, 20(x27)	# 2255
	lw		x15, 16(x27)	# 2255
	lw		x16, 12(x27)	# 2255
	lw		x17, 8(x27)	# 2255
	lw		x18, 4(x27)	# 2255
	addi	x19, x26, 616	# 2255
	addi	x20, x0, 4	# 2255
	mul		x20, x18, x20	# 2255
	add		x19, x19, x20	# 2255
	lw		x19, 0(x19)	# 2255
	ble		x19, x4, ble.96989	# 2255
	sub		x19, x19, x18	# 2257
	sw		x27, 0(x2)	# 2257
	sw		x13, -4(x2)	# 2257
	sw		x15, -8(x2)	# 2257
	sw		x8, -12(x2)	# 2257
	sw		x12, -16(x2)	# 2257
	sw		x9, -20(x2)	# 2257
	sw		x10, -24(x2)	# 2257
	sw		x7, -28(x2)	# 2257
	sw		x5, -32(x2)	# 2257
	sw		x11, -36(x2)	# 2257
	sw		x14, -40(x2)	# 2257
	sw		x4, -44(x2)	# 2257
	sw		x16, -48(x2)	# 2257
	sw		x18, -52(x2)	# 2257
	sw		x6, -56(x2)	# 2257
	sw		x17, -60(x2)	# 2257
	ble		x19, x4, ble_cont.96990	# 2257
	addi	x19, x4, 1	# 2258
	addi	x6, x8, 0
	addi	x5, x19, 0
	addi	x4, x7, 0
	addi	x27, x13, 0
	sw		x1, -64(x2)	# 2258
	addi	x2, x2, -68	# 2258
	lw		x31, 0(x27)	# 2258
	jalr	x1, x31, 0	# 2258
	addi	x2, x2, 68	# 2258
	lw		x1, -64(x2)	# 2258
ble_cont.96990:
	addi	x4, x26, 616	# 2234
	addi	x5, x0, 4	# 2234
	lw		x6, -60(x2)	# 2234
	mul		x5, x6, x5	# 2234
	add		x4, x4, x5	# 2234
	lw		x4, 0(x4)	# 2234
	ble		x4, x6, ble_cont.96991	# 2234
	addi	x4, x0, 4	# 2237
	mul		x4, x6, x4	# 2237
	lw		x7, -56(x2)	# 2237
	add		x4, x7, x4	# 2237
	lw		x4, 0(x4)	# 2237
	lw		x4, 0(x4)	# 562
	addi	x5, x0, 4	# 259
	mul		x5, x6, x5	# 259
	add		x5, x4, x5	# 259
	flw		f1, 0(x5)	# 259
	addi	x5, x26, 604	# 259
	addi	x8, x0, 4	# 259
	mul		x8, x6, x8	# 259
	add		x5, x5, x8	# 259
	fsw		f1, 0(x5)	# 259
	addi	x5, x0, 4	# 260
	lw		x8, -52(x2)	# 260
	mul		x5, x8, x5	# 260
	add		x5, x4, x5	# 260
	flw		f1, 0(x5)	# 260
	addi	x5, x26, 604	# 260
	addi	x9, x0, 4	# 260
	mul		x9, x8, x9	# 260
	add		x5, x5, x9	# 260
	fsw		f1, 0(x5)	# 260
	addi	x5, x0, 4	# 261
	lw		x9, -48(x2)	# 261
	mul		x5, x9, x5	# 261
	add		x4, x4, x5	# 261
	flw		f1, 0(x4)	# 261
	addi	x4, x26, 604	# 261
	addi	x5, x0, 4	# 261
	mul		x5, x9, x5	# 261
	add		x4, x4, x5	# 261
	fsw		f1, 0(x4)	# 261
	addi	x4, x26, 616	# 2050
	addi	x5, x0, 4	# 2050
	mul		x5, x8, x5	# 2050
	add		x4, x4, x5	# 2050
	lw		x4, 0(x4)	# 2050
	lw		x5, -44(x2)	# 2050
	add		x10, x5, x8	# 2050
	ble		x4, x10, ble.96993	# 2050
	ble		x5, x6, ble.96995	# 2051
	addi	x4, x26, 616	# 2052
	addi	x10, x0, 4	# 2052
	mul		x10, x6, x10	# 2052
	add		x4, x4, x10	# 2052
	lw		x4, 0(x4)	# 2052
	addi	x10, x0, 1	# 2052
	ble		x4, x10, ble.96997	# 2052
	addi	x4, x0, 0	# 2055
	jal		x0, ble_cont.96996	# 2052
ble.96997:
	addi	x4, x0, 0	# 2056
ble_cont.96996:
	jal		x0, ble_cont.96994	# 2051
ble.96995:
	addi	x4, x0, 0	# 2057
ble_cont.96994:
	jal		x0, ble_cont.96992	# 2050
ble.96993:
	addi	x4, x0, 0	# 2058
ble_cont.96992:
	addi	x10, x0, 0	# 2240
	beq		x4, x10, beq.96999	# 2240
	addi	x4, x0, 0	# 2241
	lw		x10, -32(x2)	# 2241
	lw		x11, -28(x2)	# 2241
	lw		x27, -36(x2)	# 2241
	addi	x9, x4, 0
	addi	x8, x11, 0
	addi	x4, x6, 0
	addi	x6, x10, 0
	sw		x1, -64(x2)	# 2241
	addi	x2, x2, -68	# 2241
	lw		x31, 0(x27)	# 2241
	jalr	x1, x31, 0	# 2241
	addi	x2, x2, 68	# 2241
	lw		x1, -64(x2)	# 2241
	jal		x0, beq_cont.96998	# 2240
beq.96999:
	addi	x4, x0, 4	# 2243
	mul		x4, x6, x4	# 2243
	add		x4, x7, x4	# 2243
	lw		x4, 0(x4)	# 2243
	addi	x10, x0, 0	# 2243
	lw		x27, -40(x2)	# 2243
	addi	x5, x10, 0
	sw		x1, -64(x2)	# 2243
	addi	x2, x2, -68	# 2243
	lw		x31, 0(x27)	# 2243
	jalr	x1, x31, 0	# 2243
	addi	x2, x2, 68	# 2243
	lw		x1, -64(x2)	# 2243
beq_cont.96998:
	lw		x4, -20(x2)	# 2246
	lw		x27, -24(x2)	# 2246
	sw		x1, -64(x2)	# 2246
	addi	x2, x2, -68	# 2246
	lw		x31, 0(x27)	# 2246
	jalr	x1, x31, 0	# 2246
	addi	x2, x2, 68	# 2246
	lw		x1, -64(x2)	# 2246
	addi	x4, x0, 1	# 2248
	lw		x5, -44(x2)	# 2248
	lw		x6, -32(x2)	# 2248
	lw		x7, -56(x2)	# 2248
	lw		x8, -28(x2)	# 2248
	lw		x9, -20(x2)	# 2248
	lw		x27, -16(x2)	# 2248
	sw		x1, -64(x2)	# 2248
	addi	x2, x2, -68	# 2248
	lw		x31, 0(x27)	# 2248
	jalr	x1, x31, 0	# 2248
	addi	x2, x2, 68	# 2248
	lw		x1, -64(x2)	# 2248
ble_cont.96991:
	lw		x4, -52(x2)	# 2261
	lw		x5, -44(x2)	# 2261
	add		x5, x5, x4	# 2261
	lw		x6, -48(x2)	# 224
	lw		x7, -12(x2)	# 224
	add		x7, x7, x6	# 224
	lw		x8, -8(x2)	# 225
	ble		x8, x7, ble.97001	# 225
	jal		x0, ble_cont.97000	# 225
ble.97001:
	sub		x7, x7, x8	# 225
ble_cont.97000:
	addi	x9, x26, 616	# 2255
	addi	x10, x0, 4	# 2255
	mul		x10, x4, x10	# 2255
	add		x9, x9, x10	# 2255
	lw		x9, 0(x9)	# 2255
	ble		x9, x5, ble.97002	# 2255
	sub		x9, x9, x4	# 2257
	sw		x7, -64(x2)	# 2257
	sw		x5, -68(x2)	# 2257
	ble		x9, x5, ble_cont.97003	# 2257
	addi	x9, x5, 1	# 2258
	lw		x10, -32(x2)	# 2258
	lw		x27, -4(x2)	# 2258
	addi	x6, x7, 0
	addi	x5, x9, 0
	addi	x4, x10, 0
	sw		x1, -72(x2)	# 2258
	addi	x2, x2, -76	# 2258
	lw		x31, 0(x27)	# 2258
	jalr	x1, x31, 0	# 2258
	addi	x2, x2, 76	# 2258
	lw		x1, -72(x2)	# 2258
ble_cont.97003:
	lw		x4, -60(x2)	# 2260
	lw		x5, -68(x2)	# 2260
	lw		x6, -56(x2)	# 2260
	lw		x7, -28(x2)	# 2260
	lw		x8, -32(x2)	# 2260
	lw		x9, -20(x2)	# 2260
	lw		x27, -16(x2)	# 2260
	sw		x1, -72(x2)	# 2260
	addi	x2, x2, -76	# 2260
	lw		x31, 0(x27)	# 2260
	jalr	x1, x31, 0	# 2260
	addi	x2, x2, 76	# 2260
	lw		x1, -72(x2)	# 2260
	lw		x4, -52(x2)	# 2261
	lw		x5, -68(x2)	# 2261
	add		x4, x5, x4	# 2261
	lw		x5, -48(x2)	# 224
	lw		x6, -64(x2)	# 224
	add		x5, x6, x5	# 224
	lw		x6, -8(x2)	# 225
	ble		x6, x5, ble.97005	# 225
	addi	x8, x5, 0	# 225
	jal		x0, ble_cont.97004	# 225
ble.97005:
	sub		x8, x5, x6	# 225
ble_cont.97004:
	lw		x5, -28(x2)	# 2261
	lw		x6, -32(x2)	# 2261
	lw		x7, -56(x2)	# 2261
	lw		x9, -20(x2)	# 2261
	lw		x27, 0(x2)	# 2261
	lw		x31, 0(x27)	# 2261
	jalr	x0, x31, 0	# 2261
ble.97002:
	jalr	x0, x1, 0	# 2262
ble.96989:
	jalr	x0, x1, 0	# 2262
create_pixel.2963.13405:
	lw		x4, 24(x27)	# 2284
	lw		x5, 20(x27)	# 2284
	lw		x6, 16(x27)	# 2284
	lw		x7, 12(x27)	# 2284
	lw		x8, 8(x27)	# 2284
	flw		f1, 4(x27)	# 2284
	sw		x7, 0(x2)	# 2284
	sw		x5, -4(x2)	# 2284
	sw		x8, -8(x2)	# 2284
	sw		x4, -12(x2)	# 2284
	fsw		f1, -16(x2)	# 2284
	sw		x6, -20(x2)	# 2284
	addi	x4, x6, 0
	sw		x1, -24(x2)	# 2284
	addi	x2, x2, -28	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 28	# 2284
	lw		x1, -24(x2)	# 2284
	flw		f1, -16(x2)	# 2272
	lw		x5, -20(x2)	# 2272
	sw		x4, -24(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -28(x2)	# 2272
	addi	x2, x2, -32	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 32	# 2272
	lw		x1, -28(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -12(x2)	# 2273
	sw		x1, -28(x2)	# 2273
	addi	x2, x2, -32	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 32	# 2273
	lw		x1, -28(x2)	# 2273
	flw		f1, -16(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -28(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -32(x2)	# 2274
	addi	x2, x2, -36	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 36	# 2274
	lw		x1, -32(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -8(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -28(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -16(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -32(x2)	# 2275
	addi	x2, x2, -36	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 36	# 2275
	lw		x1, -32(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -4(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -28(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -16(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -32(x2)	# 2276
	addi	x2, x2, -36	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 36	# 2276
	lw		x1, -32(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -20(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -28(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	addi	x4, x0, 4	# 2277
	flw		f1, -16(x2)	# 2277
	sw		x4, -32(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -36(x2)	# 2277
	addi	x2, x2, -40	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 40	# 2277
	lw		x1, -36(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -32(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -28(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -12(x2)	# 2286
	lw		x5, 0(x2)	# 2286
	sw		x1, -36(x2)	# 2286
	addi	x2, x2, -40	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 40	# 2286
	lw		x1, -36(x2)	# 2286
	lw		x5, -12(x2)	# 2287
	lw		x6, 0(x2)	# 2287
	sw		x4, -36(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -40(x2)	# 2287
	addi	x2, x2, -44	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 44	# 2287
	lw		x1, -40(x2)	# 2287
	flw		f1, -16(x2)	# 2272
	lw		x5, -20(x2)	# 2272
	sw		x4, -40(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -44(x2)	# 2272
	addi	x2, x2, -48	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 48	# 2272
	lw		x1, -44(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -12(x2)	# 2273
	sw		x1, -44(x2)	# 2273
	addi	x2, x2, -48	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 48	# 2273
	lw		x1, -44(x2)	# 2273
	flw		f1, -16(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -44(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 2274
	addi	x2, x2, -52	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 52	# 2274
	lw		x1, -48(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -8(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -44(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -16(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -48(x2)	# 2275
	addi	x2, x2, -52	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 52	# 2275
	lw		x1, -48(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -4(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -44(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -16(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -48(x2)	# 2276
	addi	x2, x2, -52	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 52	# 2276
	lw		x1, -48(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -20(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -44(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -16(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -48(x2)	# 2277
	addi	x2, x2, -52	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 52	# 2277
	lw		x1, -48(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -32(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -44(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	flw		f1, -16(x2)	# 2272
	lw		x4, -20(x2)	# 2272
	sw		x1, -48(x2)	# 2272
	addi	x2, x2, -52	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 52	# 2272
	lw		x1, -48(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -12(x2)	# 2273
	sw		x1, -48(x2)	# 2273
	addi	x2, x2, -52	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 52	# 2273
	lw		x1, -48(x2)	# 2273
	flw		f1, -16(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -48(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 2274
	addi	x2, x2, -56	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 56	# 2274
	lw		x1, -52(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -8(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -48(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -16(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -52(x2)	# 2275
	addi	x2, x2, -56	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 56	# 2275
	lw		x1, -52(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -4(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -48(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -16(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -52(x2)	# 2276
	addi	x2, x2, -56	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 56	# 2276
	lw		x1, -52(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -20(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -48(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -16(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -52(x2)	# 2277
	addi	x2, x2, -56	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 56	# 2277
	lw		x1, -52(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -32(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -48(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -8(x2)	# 2290
	lw		x5, 0(x2)	# 2290
	sw		x1, -52(x2)	# 2290
	addi	x2, x2, -56	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 56	# 2290
	lw		x1, -52(x2)	# 2290
	flw		f1, -16(x2)	# 2272
	lw		x5, -20(x2)	# 2272
	sw		x4, -52(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -56(x2)	# 2272
	addi	x2, x2, -60	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 60	# 2272
	lw		x1, -56(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -12(x2)	# 2273
	sw		x1, -56(x2)	# 2273
	addi	x2, x2, -60	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 60	# 2273
	lw		x1, -56(x2)	# 2273
	flw		f1, -16(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	sw		x4, -56(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 2274
	addi	x2, x2, -64	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 64	# 2274
	lw		x1, -60(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -8(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x6, -56(x2)	# 2274
	add		x5, x6, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -16(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -60(x2)	# 2275
	addi	x2, x2, -64	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 64	# 2275
	lw		x1, -60(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -4(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x6, -56(x2)	# 2275
	add		x5, x6, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -16(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -60(x2)	# 2276
	addi	x2, x2, -64	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 64	# 2276
	lw		x1, -60(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -20(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -56(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -16(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -60(x2)	# 2277
	addi	x2, x2, -64	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 64	# 2277
	lw		x1, -60(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -32(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x6, -56(x2)	# 2277
	add		x5, x6, x5	# 2277
	sw		x4, 0(x5)	# 2277
	addi	x4, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x6, 28(x4)	# 2292
	lw		x5, -52(x2)	# 2292
	sw		x5, 24(x4)	# 2292
	lw		x5, -48(x2)	# 2292
	sw		x5, 20(x4)	# 2292
	lw		x5, -44(x2)	# 2292
	sw		x5, 16(x4)	# 2292
	lw		x5, -40(x2)	# 2292
	sw		x5, 12(x4)	# 2292
	lw		x5, -36(x2)	# 2292
	sw		x5, 8(x4)	# 2292
	lw		x5, -28(x2)	# 2292
	sw		x5, 4(x4)	# 2292
	lw		x5, -24(x2)	# 2292
	sw		x5, 0(x4)	# 2292
	jalr	x0, x1, 0	# 2292
init_line_elements.2965.13407:
	lw		x6, 28(x27)	# 2297
	lw		x7, 24(x27)	# 2297
	lw		x8, 20(x27)	# 2297
	lw		x9, 16(x27)	# 2297
	lw		x10, 12(x27)	# 2297
	lw		x11, 8(x27)	# 2297
	flw		f1, 4(x27)	# 2297
	ble		x10, x5, ble.97008	# 2297
	jalr	x0, x1, 0	# 2301
ble.97008:
	sw		x27, 0(x2)	# 2284
	sw		x6, -4(x2)	# 2284
	sw		x4, -8(x2)	# 2284
	sw		x5, -12(x2)	# 2284
	sw		x10, -16(x2)	# 2284
	sw		x8, -20(x2)	# 2284
	sw		x11, -24(x2)	# 2284
	sw		x7, -28(x2)	# 2284
	fsw		f1, -32(x2)	# 2284
	sw		x9, -36(x2)	# 2284
	addi	x4, x9, 0
	sw		x1, -40(x2)	# 2284
	addi	x2, x2, -44	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 44	# 2284
	lw		x1, -40(x2)	# 2284
	flw		f1, -32(x2)	# 2272
	lw		x5, -36(x2)	# 2272
	sw		x4, -40(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -44(x2)	# 2272
	addi	x2, x2, -48	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 48	# 2272
	lw		x1, -44(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -28(x2)	# 2273
	sw		x1, -44(x2)	# 2273
	addi	x2, x2, -48	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 48	# 2273
	lw		x1, -44(x2)	# 2273
	flw		f1, -32(x2)	# 2274
	lw		x5, -36(x2)	# 2274
	sw		x4, -44(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 2274
	addi	x2, x2, -52	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 52	# 2274
	lw		x1, -48(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -24(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -44(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -32(x2)	# 2275
	lw		x4, -36(x2)	# 2275
	sw		x1, -48(x2)	# 2275
	addi	x2, x2, -52	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 52	# 2275
	lw		x1, -48(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -20(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -44(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -32(x2)	# 2276
	lw		x4, -36(x2)	# 2276
	sw		x1, -48(x2)	# 2276
	addi	x2, x2, -52	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 52	# 2276
	lw		x1, -48(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -36(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -44(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	addi	x4, x0, 4	# 2277
	flw		f1, -32(x2)	# 2277
	sw		x4, -48(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -52(x2)	# 2277
	addi	x2, x2, -56	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 56	# 2277
	lw		x1, -52(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -48(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -44(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -28(x2)	# 2286
	lw		x5, -16(x2)	# 2286
	sw		x1, -52(x2)	# 2286
	addi	x2, x2, -56	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 56	# 2286
	lw		x1, -52(x2)	# 2286
	lw		x5, -28(x2)	# 2287
	lw		x6, -16(x2)	# 2287
	sw		x4, -52(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -56(x2)	# 2287
	addi	x2, x2, -60	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 60	# 2287
	lw		x1, -56(x2)	# 2287
	flw		f1, -32(x2)	# 2272
	lw		x5, -36(x2)	# 2272
	sw		x4, -56(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 2272
	addi	x2, x2, -64	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 64	# 2272
	lw		x1, -60(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -28(x2)	# 2273
	sw		x1, -60(x2)	# 2273
	addi	x2, x2, -64	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 64	# 2273
	lw		x1, -60(x2)	# 2273
	flw		f1, -32(x2)	# 2274
	lw		x5, -36(x2)	# 2274
	sw		x4, -60(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 2274
	addi	x2, x2, -68	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 68	# 2274
	lw		x1, -64(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -24(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -60(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -32(x2)	# 2275
	lw		x4, -36(x2)	# 2275
	sw		x1, -64(x2)	# 2275
	addi	x2, x2, -68	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 68	# 2275
	lw		x1, -64(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -20(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -60(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -32(x2)	# 2276
	lw		x4, -36(x2)	# 2276
	sw		x1, -64(x2)	# 2276
	addi	x2, x2, -68	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 68	# 2276
	lw		x1, -64(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -36(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -60(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -32(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -64(x2)	# 2277
	addi	x2, x2, -68	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 68	# 2277
	lw		x1, -64(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -48(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -60(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	flw		f1, -32(x2)	# 2272
	lw		x4, -36(x2)	# 2272
	sw		x1, -64(x2)	# 2272
	addi	x2, x2, -68	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 68	# 2272
	lw		x1, -64(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -28(x2)	# 2273
	sw		x1, -64(x2)	# 2273
	addi	x2, x2, -68	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 68	# 2273
	lw		x1, -64(x2)	# 2273
	flw		f1, -32(x2)	# 2274
	lw		x5, -36(x2)	# 2274
	sw		x4, -64(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -68(x2)	# 2274
	addi	x2, x2, -72	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 72	# 2274
	lw		x1, -68(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -24(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -64(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -32(x2)	# 2275
	lw		x4, -36(x2)	# 2275
	sw		x1, -68(x2)	# 2275
	addi	x2, x2, -72	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 72	# 2275
	lw		x1, -68(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -20(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -64(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -32(x2)	# 2276
	lw		x4, -36(x2)	# 2276
	sw		x1, -68(x2)	# 2276
	addi	x2, x2, -72	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 72	# 2276
	lw		x1, -68(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -36(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -64(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -32(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -68(x2)	# 2277
	addi	x2, x2, -72	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 72	# 2277
	lw		x1, -68(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -48(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -64(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -24(x2)	# 2290
	lw		x5, -16(x2)	# 2290
	sw		x1, -68(x2)	# 2290
	addi	x2, x2, -72	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 72	# 2290
	lw		x1, -68(x2)	# 2290
	flw		f1, -32(x2)	# 2272
	lw		x5, -36(x2)	# 2272
	sw		x4, -68(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 2272
	addi	x2, x2, -76	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 76	# 2272
	lw		x1, -72(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -28(x2)	# 2273
	sw		x1, -72(x2)	# 2273
	addi	x2, x2, -76	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 76	# 2273
	lw		x1, -72(x2)	# 2273
	flw		f1, -32(x2)	# 2274
	lw		x5, -36(x2)	# 2274
	sw		x4, -72(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -76(x2)	# 2274
	addi	x2, x2, -80	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 80	# 2274
	lw		x1, -76(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -24(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -72(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -32(x2)	# 2275
	lw		x4, -36(x2)	# 2275
	sw		x1, -76(x2)	# 2275
	addi	x2, x2, -80	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 80	# 2275
	lw		x1, -76(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -20(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -72(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -32(x2)	# 2276
	lw		x4, -36(x2)	# 2276
	sw		x1, -76(x2)	# 2276
	addi	x2, x2, -80	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 80	# 2276
	lw		x1, -76(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -36(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -72(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -32(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -76(x2)	# 2277
	addi	x2, x2, -80	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 80	# 2277
	lw		x1, -76(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -48(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -72(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	addi	x4, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x7, 28(x4)	# 2292
	lw		x5, -68(x2)	# 2292
	sw		x5, 24(x4)	# 2292
	lw		x5, -64(x2)	# 2292
	sw		x5, 20(x4)	# 2292
	lw		x5, -60(x2)	# 2292
	sw		x5, 16(x4)	# 2292
	lw		x5, -56(x2)	# 2292
	sw		x5, 12(x4)	# 2292
	lw		x5, -52(x2)	# 2292
	sw		x5, 8(x4)	# 2292
	lw		x5, -44(x2)	# 2292
	sw		x5, 4(x4)	# 2292
	lw		x5, -40(x2)	# 2292
	sw		x5, 0(x4)	# 2292
	addi	x5, x0, 4	# 2298
	lw		x7, -12(x2)	# 2298
	mul		x5, x7, x5	# 2298
	lw		x8, -8(x2)	# 2298
	add		x5, x8, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -24(x2)	# 2299
	sub		x5, x7, x4	# 2299
	lw		x7, -16(x2)	# 2297
	ble		x7, x5, ble.97009	# 2297
	addi	x4, x8, 0	# 2301
	jalr	x0, x1, 0	# 2301
ble.97009:
	flw		f1, -32(x2)	# 2284
	lw		x9, -36(x2)	# 2284
	sw		x5, -76(x2)	# 2284
	addi	x4, x9, 0
	sw		x1, -80(x2)	# 2284
	addi	x2, x2, -84	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 84	# 2284
	lw		x1, -80(x2)	# 2284
	flw		f1, -32(x2)	# 2272
	lw		x5, -36(x2)	# 2272
	sw		x4, -80(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -84(x2)	# 2272
	addi	x2, x2, -88	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 88	# 2272
	lw		x1, -84(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -28(x2)	# 2273
	sw		x1, -84(x2)	# 2273
	addi	x2, x2, -88	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 88	# 2273
	lw		x1, -84(x2)	# 2273
	flw		f1, -32(x2)	# 2274
	lw		x5, -36(x2)	# 2274
	sw		x4, -84(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -88(x2)	# 2274
	addi	x2, x2, -92	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 92	# 2274
	lw		x1, -88(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -24(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -84(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -32(x2)	# 2275
	lw		x4, -36(x2)	# 2275
	sw		x1, -88(x2)	# 2275
	addi	x2, x2, -92	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 92	# 2275
	lw		x1, -88(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -20(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -84(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -32(x2)	# 2276
	lw		x4, -36(x2)	# 2276
	sw		x1, -88(x2)	# 2276
	addi	x2, x2, -92	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 92	# 2276
	lw		x1, -88(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -36(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -84(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -32(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -88(x2)	# 2277
	addi	x2, x2, -92	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 92	# 2277
	lw		x1, -88(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -48(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -84(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -28(x2)	# 2286
	lw		x5, -16(x2)	# 2286
	sw		x1, -88(x2)	# 2286
	addi	x2, x2, -92	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 92	# 2286
	lw		x1, -88(x2)	# 2286
	lw		x5, -28(x2)	# 2287
	lw		x6, -16(x2)	# 2287
	sw		x4, -88(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -92(x2)	# 2287
	addi	x2, x2, -96	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 96	# 2287
	lw		x1, -92(x2)	# 2287
	flw		f1, -32(x2)	# 2272
	lw		x5, -36(x2)	# 2272
	sw		x4, -92(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -96(x2)	# 2272
	addi	x2, x2, -100	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 100	# 2272
	lw		x1, -96(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -28(x2)	# 2273
	sw		x1, -96(x2)	# 2273
	addi	x2, x2, -100	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 100	# 2273
	lw		x1, -96(x2)	# 2273
	flw		f1, -32(x2)	# 2274
	lw		x5, -36(x2)	# 2274
	sw		x4, -96(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -100(x2)	# 2274
	addi	x2, x2, -104	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 104	# 2274
	lw		x1, -100(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -24(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -96(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -32(x2)	# 2275
	lw		x4, -36(x2)	# 2275
	sw		x1, -100(x2)	# 2275
	addi	x2, x2, -104	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 104	# 2275
	lw		x1, -100(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -20(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -96(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -32(x2)	# 2276
	lw		x4, -36(x2)	# 2276
	sw		x1, -100(x2)	# 2276
	addi	x2, x2, -104	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 104	# 2276
	lw		x1, -100(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -36(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -96(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -32(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -100(x2)	# 2277
	addi	x2, x2, -104	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 104	# 2277
	lw		x1, -100(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -48(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -96(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	flw		f1, -32(x2)	# 2272
	lw		x4, -36(x2)	# 2272
	sw		x1, -100(x2)	# 2272
	addi	x2, x2, -104	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 104	# 2272
	lw		x1, -100(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -28(x2)	# 2273
	sw		x1, -100(x2)	# 2273
	addi	x2, x2, -104	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 104	# 2273
	lw		x1, -100(x2)	# 2273
	flw		f1, -32(x2)	# 2274
	lw		x5, -36(x2)	# 2274
	sw		x4, -100(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -104(x2)	# 2274
	addi	x2, x2, -108	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 108	# 2274
	lw		x1, -104(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -24(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -100(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -32(x2)	# 2275
	lw		x4, -36(x2)	# 2275
	sw		x1, -104(x2)	# 2275
	addi	x2, x2, -108	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 108	# 2275
	lw		x1, -104(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -20(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -100(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -32(x2)	# 2276
	lw		x4, -36(x2)	# 2276
	sw		x1, -104(x2)	# 2276
	addi	x2, x2, -108	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 108	# 2276
	lw		x1, -104(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -36(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -100(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -32(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -104(x2)	# 2277
	addi	x2, x2, -108	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 108	# 2277
	lw		x1, -104(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -48(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -100(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -24(x2)	# 2290
	lw		x5, -16(x2)	# 2290
	sw		x1, -104(x2)	# 2290
	addi	x2, x2, -108	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 108	# 2290
	lw		x1, -104(x2)	# 2290
	flw		f1, -32(x2)	# 2272
	lw		x5, -36(x2)	# 2272
	sw		x4, -104(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -108(x2)	# 2272
	addi	x2, x2, -112	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 112	# 2272
	lw		x1, -108(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -28(x2)	# 2273
	sw		x1, -108(x2)	# 2273
	addi	x2, x2, -112	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 112	# 2273
	lw		x1, -108(x2)	# 2273
	flw		f1, -32(x2)	# 2274
	lw		x5, -36(x2)	# 2274
	sw		x4, -108(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -112(x2)	# 2274
	addi	x2, x2, -116	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 116	# 2274
	lw		x1, -112(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -24(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -108(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -32(x2)	# 2275
	lw		x4, -36(x2)	# 2275
	sw		x1, -112(x2)	# 2275
	addi	x2, x2, -116	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 116	# 2275
	lw		x1, -112(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -20(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x6, -108(x2)	# 2275
	add		x5, x6, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -32(x2)	# 2276
	lw		x4, -36(x2)	# 2276
	sw		x1, -112(x2)	# 2276
	addi	x2, x2, -116	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 116	# 2276
	lw		x1, -112(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -36(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -108(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -32(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -112(x2)	# 2277
	addi	x2, x2, -116	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 116	# 2277
	lw		x1, -112(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -48(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x6, -108(x2)	# 2277
	add		x5, x6, x5	# 2277
	sw		x4, 0(x5)	# 2277
	addi	x4, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x6, 28(x4)	# 2292
	lw		x5, -104(x2)	# 2292
	sw		x5, 24(x4)	# 2292
	lw		x5, -100(x2)	# 2292
	sw		x5, 20(x4)	# 2292
	lw		x5, -96(x2)	# 2292
	sw		x5, 16(x4)	# 2292
	lw		x5, -92(x2)	# 2292
	sw		x5, 12(x4)	# 2292
	lw		x5, -88(x2)	# 2292
	sw		x5, 8(x4)	# 2292
	lw		x5, -84(x2)	# 2292
	sw		x5, 4(x4)	# 2292
	lw		x5, -80(x2)	# 2292
	sw		x5, 0(x4)	# 2292
	addi	x5, x0, 4	# 2298
	lw		x6, -76(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -8(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -24(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x6, -16(x2)	# 2297
	ble		x6, x5, ble.97010	# 2297
	addi	x4, x7, 0	# 2301
	jalr	x0, x1, 0	# 2301
ble.97010:
	lw		x27, -4(x2)	# 2298
	sw		x5, -112(x2)	# 2298
	sw		x1, -116(x2)	# 2298
	addi	x2, x2, -120	# 2298
	lw		x31, 0(x27)	# 2298
	jalr	x1, x31, 0	# 2298
	addi	x2, x2, 120	# 2298
	lw		x1, -116(x2)	# 2298
	addi	x5, x0, 4	# 2298
	lw		x6, -112(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -8(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -24(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x6, -16(x2)	# 2297
	ble		x6, x5, ble.97011	# 2297
	addi	x4, x7, 0	# 2301
	jalr	x0, x1, 0	# 2301
ble.97011:
	lw		x27, -4(x2)	# 2298
	sw		x5, -116(x2)	# 2298
	sw		x1, -120(x2)	# 2298
	addi	x2, x2, -124	# 2298
	lw		x31, 0(x27)	# 2298
	jalr	x1, x31, 0	# 2298
	addi	x2, x2, 124	# 2298
	lw		x1, -120(x2)	# 2298
	addi	x5, x0, 4	# 2298
	lw		x6, -116(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -8(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -24(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x27, 0(x2)	# 2299
	addi	x4, x7, 0
	lw		x31, 0(x27)	# 2299
	jalr	x0, x31, 0	# 2299
tan.2970.13410:
	lw		x4, 28(x27)	# 2320
	flw		f2, 24(x27)	# 2320
	flw		f3, 20(x27)	# 2320
	flw		f4, 16(x27)	# 2320
	flw		f5, 12(x27)	# 2320
	lw		x5, 8(x27)	# 2320
	flw		f6, 4(x27)	# 46
	sw		x5, 0(x2)	# 46
	sw		x4, -4(x2)	# 46
	fsw		f3, -8(x2)	# 46
	fsw		f2, -12(x2)	# 46
	fsw		f1, -16(x2)	# 46
	fsw		f6, -20(x2)	# 46
	fle		x31, f6, f1	# 46
	beq		x31, x0, fle_else.97013	# 46
	fle		x31, f4, f1	# 47
	beq		x31, x0, fle_else.97015	# 47
	fsub	f4, f1, f4	# 47
	addi	x27, x4, 0
	fadd	f1, f0, f4
	sw		x1, -24(x2)	# 47
	addi	x2, x2, -28	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 28	# 47
	lw		x1, -24(x2)	# 47
	jal		x0, fle_cont.97014	# 47
fle_else.97015:
	fle		x31, f5, f1	# 48
	beq		x31, x0, fle_else.97017	# 48
	fsub	f4, f1, f5	# 48
	addi	x27, x4, 0
	fadd	f1, f0, f4
	sw		x1, -24(x2)	# 48
	addi	x2, x2, -28	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 28	# 48
	lw		x1, -24(x2)	# 48
	fsub	f1, f0, f1	# 48
	jal		x0, fle_cont.97016	# 48
fle_else.97017:
	fle		x31, f1, f3	# 49
	beq		x31, x0, fle_else.97019	# 49
	fle		x31, f2, f1	# 50
	beq		x31, x0, fle_else.97021	# 50
	fsub	f4, f3, f1	# 50
	fmul	f4, f4, f4	# 41
	fmul	f5, f4, f4	# 42
	fadd	f7, f0, f16	# 43
	fadd	f8, f0, f17	# 43
	fmul	f8, f8, f4	# 43
	fsub	f7, f7, f8	# 43
	fadd	f8, f0, f19	# 43
	fmul	f8, f8, f5	# 43
	fadd	f7, f7, f8	# 43
	fadd	f8, f0, f18	# 43
	fmul	f4, f8, f4	# 43
	fmul	f4, f4, f5	# 43
	fsub	f1, f7, f4	# 43
	jal		x0, fle_cont.97020	# 50
fle_else.97021:
	fmul	f4, f1, f1	# 36
	fmul	f5, f1, f4	# 37
	fadd	f7, f0, f22	# 38
	fmul	f7, f7, f5	# 38
	fsub	f7, f1, f7	# 38
	fadd	f8, f0, f20	# 38
	fmul	f8, f8, f4	# 38
	fmul	f8, f8, f5	# 38
	fadd	f7, f7, f8	# 38
	fadd	f8, f0, f21	# 38
	fmul	f8, f8, f4	# 38
	fmul	f4, f8, f4	# 38
	fmul	f4, f4, f5	# 38
	fsub	f1, f7, f4	# 38
fle_cont.97020:
	jal		x0, fle_cont.97018	# 49
fle_else.97019:
	fsub	f4, f5, f1	# 49
	addi	x27, x4, 0
	fadd	f1, f0, f4
	sw		x1, -24(x2)	# 49
	addi	x2, x2, -28	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 28	# 49
	lw		x1, -24(x2)	# 49
fle_cont.97018:
fle_cont.97016:
fle_cont.97014:
	jal		x0, fle_cont.97012	# 46
fle_else.97013:
	fsub	f4, f0, f1	# 46
	addi	x27, x4, 0
	fadd	f1, f0, f4
	sw		x1, -24(x2)	# 46
	addi	x2, x2, -28	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 28	# 46
	lw		x1, -24(x2)	# 46
	fsub	f1, f0, f1	# 46
fle_cont.97012:
	flw		f2, -16(x2)	# 54
	flw		f3, -20(x2)	# 54
	fsw		f1, -24(x2)	# 54
	fle		x31, f3, f2	# 54
	beq		x31, x0, fle_else.97023	# 54
	flw		f3, -12(x2)	# 55
	fle		x31, f2, f3	# 55
	beq		x31, x0, fle_else.97025	# 55
	fmul	f2, f2, f2	# 41
	fmul	f3, f2, f2	# 42
	fadd	f4, f0, f16	# 43
	fadd	f5, f0, f17	# 43
	fmul	f5, f5, f2	# 43
	fsub	f4, f4, f5	# 43
	fadd	f5, f0, f19	# 43
	fmul	f5, f5, f3	# 43
	fadd	f4, f4, f5	# 43
	fadd	f5, f0, f18	# 43
	fmul	f2, f5, f2	# 43
	fmul	f2, f2, f3	# 43
	fsub	f1, f4, f2	# 43
	jal		x0, fle_cont.97024	# 55
fle_else.97025:
	flw		f3, -8(x2)	# 55
	fsub	f2, f3, f2	# 55
	lw		x27, -4(x2)	# 55
	fadd	f1, f0, f2
	sw		x1, -28(x2)	# 55
	addi	x2, x2, -32	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 32	# 55
	lw		x1, -28(x2)	# 55
fle_cont.97024:
	jal		x0, fle_cont.97022	# 54
fle_else.97023:
	fsub	f2, f0, f2	# 54
	lw		x27, 0(x2)	# 54
	fadd	f1, f0, f2
	sw		x1, -28(x2)	# 54
	addi	x2, x2, -32	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 32	# 54
	lw		x1, -28(x2)	# 54
fle_cont.97022:
	flw		f2, -24(x2)	# 2320
	fdiv	f1, f2, f1	# 2320
	jalr	x0, x1, 0	# 2320
calc_dirvec.2975.13412:
	lw		x7, 24(x27)	# 2334
	lw		x8, 20(x27)	# 2334
	lw		x9, 16(x27)	# 2334
	lw		x10, 12(x27)	# 2334
	lw		x11, 8(x27)	# 2334
	lw		x12, 4(x27)	# 2334
	ble		x9, x4, ble.97026	# 2334
	fmul	f1, f2, f2	# 2325
	fadd	f2, f0, f28	# 2325
	fadd	f1, f1, f2	# 2325
	fsqrt	f1, f1	# 2325
	fadd	f5, f0, f16	# 2326
	fdiv	f6, f5, f1	# 2326
	sw		x6, 0(x2)	# 2327
	sw		x5, -4(x2)	# 2327
	sw		x27, -8(x2)	# 2327
	fsw		f4, -12(x2)	# 2327
	sw		x8, -16(x2)	# 2327
	fsw		f5, -20(x2)	# 2327
	fsw		f2, -24(x2)	# 2327
	sw		x12, -28(x2)	# 2327
	sw		x4, -32(x2)	# 2327
	fsw		f1, -36(x2)	# 2327
	sw		x7, -40(x2)	# 2327
	fsw		f3, -44(x2)	# 2327
	addi	x27, x8, 0
	fadd	f1, f0, f6
	sw		x1, -48(x2)	# 2327
	addi	x2, x2, -52	# 2327
	lw		x31, 0(x27)	# 2327
	jalr	x1, x31, 0	# 2327
	addi	x2, x2, 52	# 2327
	lw		x1, -48(x2)	# 2327
	flw		f2, -44(x2)	# 2328
	fmul	f1, f1, f2	# 2328
	lw		x27, -40(x2)	# 2328
	sw		x1, -48(x2)	# 2328
	addi	x2, x2, -52	# 2328
	lw		x31, 0(x27)	# 2328
	jalr	x1, x31, 0	# 2328
	addi	x2, x2, 52	# 2328
	lw		x1, -48(x2)	# 2328
	flw		f2, -36(x2)	# 2329
	fmul	f1, f1, f2	# 2329
	lw		x4, -28(x2)	# 2350
	lw		x5, -32(x2)	# 2350
	add		x4, x5, x4	# 2350
	fmul	f2, f1, f1	# 2325
	flw		f3, -24(x2)	# 2325
	fadd	f2, f2, f3	# 2325
	fsqrt	f2, f2	# 2325
	flw		f3, -20(x2)	# 2326
	fdiv	f3, f3, f2	# 2326
	lw		x27, -16(x2)	# 2327
	fsw		f1, -48(x2)	# 2327
	sw		x4, -52(x2)	# 2327
	fsw		f2, -56(x2)	# 2327
	fadd	f1, f0, f3
	sw		x1, -60(x2)	# 2327
	addi	x2, x2, -64	# 2327
	lw		x31, 0(x27)	# 2327
	jalr	x1, x31, 0	# 2327
	addi	x2, x2, 64	# 2327
	lw		x1, -60(x2)	# 2327
	flw		f2, -12(x2)	# 2328
	fmul	f1, f1, f2	# 2328
	lw		x27, -40(x2)	# 2328
	sw		x1, -60(x2)	# 2328
	addi	x2, x2, -64	# 2328
	lw		x31, 0(x27)	# 2328
	jalr	x1, x31, 0	# 2328
	addi	x2, x2, 64	# 2328
	lw		x1, -60(x2)	# 2328
	flw		f2, -56(x2)	# 2329
	fmul	f2, f1, f2	# 2329
	flw		f1, -48(x2)	# 2350
	flw		f3, -44(x2)	# 2350
	flw		f4, -12(x2)	# 2350
	lw		x4, -52(x2)	# 2350
	lw		x5, -4(x2)	# 2350
	lw		x6, 0(x2)	# 2350
	lw		x27, -8(x2)	# 2350
	lw		x31, 0(x27)	# 2350
	jalr	x0, x31, 0	# 2350
ble.97026:
	fmul	f3, f1, f1	# 8
	fmul	f4, f2, f2	# 8
	fadd	f3, f3, f4	# 2335
	fadd	f4, f0, f16	# 2335
	fadd	f3, f3, f4	# 2335
	fsqrt	f3, f3	# 2335
	fdiv	f1, f1, f3	# 2336
	fdiv	f2, f2, f3	# 2337
	fdiv	f3, f4, f3	# 2338
	addi	x4, x26, 716	# 2341
	addi	x7, x0, 4	# 2341
	mul		x5, x5, x7	# 2341
	add		x4, x4, x5	# 2341
	lw		x4, 0(x4)	# 2341
	addi	x5, x0, 4	# 2342
	mul		x5, x6, x5	# 2342
	add		x5, x4, x5	# 2342
	lw		x5, 0(x5)	# 2342
	lw		x5, 0(x5)	# 639
	addi	x7, x0, 4	# 240
	mul		x7, x11, x7	# 240
	add		x7, x5, x7	# 240
	fsw		f1, 0(x7)	# 240
	addi	x7, x0, 4	# 241
	mul		x7, x12, x7	# 241
	add		x7, x5, x7	# 241
	fsw		f2, 0(x7)	# 241
	addi	x7, x0, 4	# 242
	mul		x7, x10, x7	# 242
	add		x5, x5, x7	# 242
	fsw		f3, 0(x5)	# 242
	addi	x5, x6, 40	# 2343
	addi	x7, x0, 4	# 2343
	mul		x5, x5, x7	# 2343
	add		x5, x4, x5	# 2343
	lw		x5, 0(x5)	# 2343
	lw		x5, 0(x5)	# 639
	fsub	f4, f0, f2	# 4
	addi	x7, x0, 4	# 240
	mul		x7, x11, x7	# 240
	add		x7, x5, x7	# 240
	fsw		f1, 0(x7)	# 240
	addi	x7, x0, 4	# 241
	mul		x7, x12, x7	# 241
	add		x7, x5, x7	# 241
	fsw		f3, 0(x7)	# 241
	addi	x7, x0, 4	# 242
	mul		x7, x10, x7	# 242
	add		x5, x5, x7	# 242
	fsw		f4, 0(x5)	# 242
	addi	x5, x6, 80	# 2344
	addi	x7, x0, 4	# 2344
	mul		x5, x5, x7	# 2344
	add		x5, x4, x5	# 2344
	lw		x5, 0(x5)	# 2344
	lw		x5, 0(x5)	# 639
	fsub	f5, f0, f1	# 4
	addi	x7, x0, 4	# 240
	mul		x7, x11, x7	# 240
	add		x7, x5, x7	# 240
	fsw		f3, 0(x7)	# 240
	addi	x7, x0, 4	# 241
	mul		x7, x12, x7	# 241
	add		x7, x5, x7	# 241
	fsw		f5, 0(x7)	# 241
	addi	x7, x0, 4	# 242
	mul		x7, x10, x7	# 242
	add		x5, x5, x7	# 242
	fsw		f4, 0(x5)	# 242
	add		x5, x6, x12	# 2345
	addi	x7, x0, 4	# 2345
	mul		x5, x5, x7	# 2345
	add		x5, x4, x5	# 2345
	lw		x5, 0(x5)	# 2345
	lw		x5, 0(x5)	# 639
	fsub	f3, f0, f3	# 4
	addi	x7, x0, 4	# 240
	mul		x7, x11, x7	# 240
	add		x7, x5, x7	# 240
	fsw		f5, 0(x7)	# 240
	addi	x7, x0, 4	# 241
	mul		x7, x12, x7	# 241
	add		x7, x5, x7	# 241
	fsw		f4, 0(x7)	# 241
	addi	x7, x0, 4	# 242
	mul		x7, x10, x7	# 242
	add		x5, x5, x7	# 242
	fsw		f3, 0(x5)	# 242
	addi	x5, x6, 41	# 2346
	addi	x7, x0, 4	# 2346
	mul		x5, x5, x7	# 2346
	add		x5, x4, x5	# 2346
	lw		x5, 0(x5)	# 2346
	lw		x5, 0(x5)	# 639
	addi	x7, x0, 4	# 240
	mul		x7, x11, x7	# 240
	add		x7, x5, x7	# 240
	fsw		f5, 0(x7)	# 240
	addi	x7, x0, 4	# 241
	mul		x7, x12, x7	# 241
	add		x7, x5, x7	# 241
	fsw		f3, 0(x7)	# 241
	addi	x7, x0, 4	# 242
	mul		x7, x10, x7	# 242
	add		x5, x5, x7	# 242
	fsw		f2, 0(x5)	# 242
	addi	x5, x6, 81	# 2347
	addi	x6, x0, 4	# 2347
	mul		x5, x5, x6	# 2347
	add		x4, x4, x5	# 2347
	lw		x4, 0(x4)	# 2347
	lw		x4, 0(x4)	# 639
	addi	x5, x0, 4	# 240
	mul		x5, x11, x5	# 240
	add		x5, x4, x5	# 240
	fsw		f3, 0(x5)	# 240
	addi	x5, x0, 4	# 241
	mul		x5, x12, x5	# 241
	add		x5, x4, x5	# 241
	fsw		f1, 0(x5)	# 241
	addi	x5, x0, 4	# 242
	mul		x5, x10, x5	# 242
	add		x4, x4, x5	# 242
	fsw		f2, 0(x4)	# 242
	jalr	x0, x1, 0	# 242
calc_dirvecs.2983.13420:
	lw		x7, 24(x27)	# 2355
	lw		x8, 20(x27)	# 2355
	lw		x9, 16(x27)	# 2355
	lw		x10, 12(x27)	# 2355
	lw		x11, 8(x27)	# 2355
	flw		f2, 4(x27)	# 2355
	ble		x10, x4, ble.97028	# 2355
	jalr	x0, x1, 0	# 2364
ble.97028:
	sw		x27, 0(x2)	# 14
	sw		x8, -4(x2)	# 14
	sw		x11, -8(x2)	# 14
	sw		x9, -12(x2)	# 14
	sw		x4, -16(x2)	# 14
	fsw		f1, -20(x2)	# 14
	fsw		f2, -24(x2)	# 14
	sw		x6, -28(x2)	# 14
	sw		x5, -32(x2)	# 14
	sw		x10, -36(x2)	# 14
	sw		x7, -40(x2)	# 14
	ble		x10, x4, ble.97031	# 14
	sub		x12, x0, x4	# 16
	addi	x4, x12, 0
	sw		x1, -44(x2)	# 16
	addi	x2, x2, -48	# 16
	jal		x1, float_of_int.2489.13041	# 16
	addi	x2, x2, 48	# 16
	lw		x1, -44(x2)	# 16
	fsub	f1, f0, f1	# 16
	jal		x0, ble_cont.97030	# 14
ble.97031:
	addi	x12, x0, 1	# 15
	ble		x12, x4, ble.97033	# 15
	fadd	f1, f0, f0	# 15
	jal		x0, ble_cont.97032	# 15
ble.97033:
	addi	x12, x0, 1	# 15
	sub		x12, x4, x12	# 15
	addi	x4, x12, 0
	sw		x1, -44(x2)	# 15
	addi	x2, x2, -48	# 15
	jal		x1, float_of_int.2489.13041	# 15
	addi	x2, x2, 48	# 15
	lw		x1, -44(x2)	# 15
	fadd	f2, f0, f16	# 15
	fadd	f1, f1, f2	# 15
ble_cont.97032:
ble_cont.97030:
	fadd	f2, f0, f26	# 2357
	fmul	f1, f1, f2	# 2357
	lui		x4, %hi(l.24580)	# 2357
	ori		x4, x0, %lo(l.24580)	# 2357
	flw		f3, 0(x4)	# 2357
	fsub	f3, f1, f3	# 2357
	flw		f1, -24(x2)	# 2358
	flw		f4, -20(x2)	# 2358
	lw		x4, -36(x2)	# 2358
	lw		x5, -32(x2)	# 2358
	lw		x6, -28(x2)	# 2358
	lw		x27, -40(x2)	# 2358
	fsw		f2, -44(x2)	# 2358
	fadd	f2, f0, f1
	sw		x1, -48(x2)	# 2358
	addi	x2, x2, -52	# 2358
	lw		x31, 0(x27)	# 2358
	jalr	x1, x31, 0	# 2358
	addi	x2, x2, 52	# 2358
	lw		x1, -48(x2)	# 2358
	lw		x4, -16(x2)	# 14
	lw		x5, -36(x2)	# 14
	ble		x5, x4, ble.97035	# 14
	sub		x6, x0, x4	# 16
	addi	x4, x6, 0
	sw		x1, -48(x2)	# 16
	addi	x2, x2, -52	# 16
	jal		x1, float_of_int.2489.13041	# 16
	addi	x2, x2, 52	# 16
	lw		x1, -48(x2)	# 16
	fsub	f1, f0, f1	# 16
	jal		x0, ble_cont.97034	# 14
ble.97035:
	addi	x6, x0, 1	# 15
	ble		x6, x4, ble.97037	# 15
	fadd	f1, f0, f0	# 15
	jal		x0, ble_cont.97036	# 15
ble.97037:
	addi	x6, x0, 1	# 15
	sub		x6, x4, x6	# 15
	addi	x4, x6, 0
	sw		x1, -48(x2)	# 15
	addi	x2, x2, -52	# 15
	jal		x1, float_of_int.2489.13041	# 15
	addi	x2, x2, 52	# 15
	lw		x1, -48(x2)	# 15
	fadd	f2, f0, f16	# 15
	fadd	f1, f1, f2	# 15
ble_cont.97036:
ble_cont.97034:
	flw		f2, -44(x2)	# 2360
	fmul	f1, f1, f2	# 2360
	fadd	f2, f0, f28	# 2360
	fadd	f3, f1, f2	# 2360
	lw		x4, -12(x2)	# 2361
	lw		x5, -28(x2)	# 2361
	add		x6, x5, x4	# 2361
	flw		f1, -24(x2)	# 2361
	flw		f4, -20(x2)	# 2361
	lw		x4, -36(x2)	# 2361
	lw		x7, -32(x2)	# 2361
	lw		x27, -40(x2)	# 2361
	addi	x5, x7, 0
	fadd	f2, f0, f1
	sw		x1, -48(x2)	# 2361
	addi	x2, x2, -52	# 2361
	lw		x31, 0(x27)	# 2361
	jalr	x1, x31, 0	# 2361
	addi	x2, x2, 52	# 2361
	lw		x1, -48(x2)	# 2361
	lw		x4, -8(x2)	# 2363
	lw		x5, -16(x2)	# 2363
	sub		x5, x5, x4	# 2363
	lw		x6, -32(x2)	# 224
	add		x4, x6, x4	# 224
	lw		x6, -4(x2)	# 225
	ble		x6, x4, ble.97039	# 225
	jal		x0, ble_cont.97038	# 225
ble.97039:
	sub		x4, x4, x6	# 225
ble_cont.97038:
	flw		f1, -20(x2)	# 2363
	lw		x6, -28(x2)	# 2363
	lw		x27, 0(x2)	# 2363
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	lw		x31, 0(x27)	# 2363
	jalr	x0, x31, 0	# 2363
calc_dirvec_rows.2988.13425:
	lw		x7, 20(x27)	# 2369
	lw		x8, 16(x27)	# 2369
	lw		x9, 12(x27)	# 2369
	lw		x10, 8(x27)	# 2369
	lw		x11, 4(x27)	# 2369
	ble		x10, x4, ble.97040	# 2369
	jalr	x0, x1, 0	# 2373
ble.97040:
	sw		x27, 0(x2)	# 14
	sw		x10, -4(x2)	# 14
	sw		x8, -8(x2)	# 14
	sw		x9, -12(x2)	# 14
	sw		x11, -16(x2)	# 14
	sw		x4, -20(x2)	# 14
	sw		x6, -24(x2)	# 14
	sw		x5, -28(x2)	# 14
	sw		x7, -32(x2)	# 14
	ble		x10, x4, ble.97043	# 14
	sub		x12, x0, x4	# 16
	addi	x4, x12, 0
	sw		x1, -36(x2)	# 16
	addi	x2, x2, -40	# 16
	jal		x1, float_of_int.2489.13041	# 16
	addi	x2, x2, 40	# 16
	lw		x1, -36(x2)	# 16
	fsub	f1, f0, f1	# 16
	jal		x0, ble_cont.97042	# 14
ble.97043:
	addi	x12, x0, 1	# 15
	ble		x12, x4, ble.97045	# 15
	fadd	f1, f0, f0	# 15
	jal		x0, ble_cont.97044	# 15
ble.97045:
	addi	x12, x0, 1	# 15
	sub		x12, x4, x12	# 15
	addi	x4, x12, 0
	sw		x1, -36(x2)	# 15
	addi	x2, x2, -40	# 15
	jal		x1, float_of_int.2489.13041	# 15
	addi	x2, x2, 40	# 15
	lw		x1, -36(x2)	# 15
	fadd	f2, f0, f16	# 15
	fadd	f1, f1, f2	# 15
ble_cont.97044:
ble_cont.97042:
	fadd	f2, f0, f26	# 2370
	fmul	f1, f1, f2	# 2370
	lui		x4, %hi(l.24580)	# 2370
	ori		x4, x0, %lo(l.24580)	# 2370
	flw		f3, 0(x4)	# 2370
	fsub	f1, f1, f3	# 2370
	addi	x4, x0, 4	# 2371
	lw		x5, -28(x2)	# 2371
	lw		x6, -24(x2)	# 2371
	lw		x27, -32(x2)	# 2371
	sw		x4, -36(x2)	# 2371
	fsw		f3, -40(x2)	# 2371
	fsw		f2, -44(x2)	# 2371
	sw		x1, -48(x2)	# 2371
	addi	x2, x2, -52	# 2371
	lw		x31, 0(x27)	# 2371
	jalr	x1, x31, 0	# 2371
	addi	x2, x2, 52	# 2371
	lw		x1, -48(x2)	# 2371
	lw		x4, -16(x2)	# 2372
	lw		x5, -20(x2)	# 2372
	sub		x5, x5, x4	# 2372
	lw		x6, -12(x2)	# 224
	lw		x7, -28(x2)	# 224
	add		x7, x7, x6	# 224
	lw		x8, -8(x2)	# 225
	ble		x8, x7, ble.97047	# 225
	jal		x0, ble_cont.97046	# 225
ble.97047:
	sub		x7, x7, x8	# 225
ble_cont.97046:
	lw		x9, -24(x2)	# 2372
	addi	x9, x9, 4	# 2372
	lw		x10, -4(x2)	# 2369
	ble		x10, x5, ble.97048	# 2369
	jalr	x0, x1, 0	# 2373
ble.97048:
	sw		x5, -48(x2)	# 2370
	sw		x9, -52(x2)	# 2370
	sw		x7, -56(x2)	# 2370
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 2370
	addi	x2, x2, -64	# 2370
	jal		x1, float_of_int.2489.13041	# 2370
	addi	x2, x2, 64	# 2370
	lw		x1, -60(x2)	# 2370
	flw		f2, -44(x2)	# 2370
	fmul	f1, f1, f2	# 2370
	flw		f2, -40(x2)	# 2370
	fsub	f1, f1, f2	# 2370
	lw		x4, -36(x2)	# 2371
	lw		x5, -56(x2)	# 2371
	lw		x6, -52(x2)	# 2371
	lw		x27, -32(x2)	# 2371
	sw		x1, -60(x2)	# 2371
	addi	x2, x2, -64	# 2371
	lw		x31, 0(x27)	# 2371
	jalr	x1, x31, 0	# 2371
	addi	x2, x2, 64	# 2371
	lw		x1, -60(x2)	# 2371
	lw		x4, -16(x2)	# 2372
	lw		x5, -48(x2)	# 2372
	sub		x4, x5, x4	# 2372
	lw		x5, -12(x2)	# 224
	lw		x6, -56(x2)	# 224
	add		x5, x6, x5	# 224
	lw		x6, -8(x2)	# 225
	ble		x6, x5, ble.97051	# 225
	jal		x0, ble_cont.97050	# 225
ble.97051:
	sub		x5, x5, x6	# 225
ble_cont.97050:
	lw		x6, -52(x2)	# 2372
	addi	x6, x6, 4	# 2372
	lw		x27, 0(x2)	# 2372
	lw		x31, 0(x27)	# 2372
	jalr	x0, x31, 0	# 2372
create_dirvec_elements.2994.13429:
	lw		x6, 16(x27)	# 2388
	lw		x7, 12(x27)	# 2388
	lw		x8, 8(x27)	# 2388
	flw		f1, 4(x27)	# 2388
	ble		x7, x5, ble.97052	# 2388
	jalr	x0, x1, 0	# 2391
ble.97052:
	sw		x27, 0(x2)	# 2382
	fsw		f1, -4(x2)	# 2382
	sw		x6, -8(x2)	# 2382
	sw		x8, -12(x2)	# 2382
	sw		x4, -16(x2)	# 2382
	sw		x5, -20(x2)	# 2382
	sw		x7, -24(x2)	# 2382
	addi	x4, x6, 0
	sw		x1, -28(x2)	# 2382
	addi	x2, x2, -32	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 32	# 2382
	lw		x1, -28(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	addi	x6, x0, 4	# 2383
	lw		x7, -24(x2)	# 2383
	mul		x6, x7, x6	# 2383
	add		x4, x4, x6	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -28(x2)	# 2383
	sw		x1, -32(x2)	# 2383
	addi	x2, x2, -36	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 36	# 2383
	lw		x1, -32(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -28(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	addi	x5, x0, 4	# 2389
	lw		x6, -20(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x7, -16(x2)	# 2389
	add		x5, x7, x5	# 2389
	sw		x4, 0(x5)	# 2389
	lw		x4, -12(x2)	# 2390
	sub		x5, x6, x4	# 2390
	lw		x6, -24(x2)	# 2388
	ble		x6, x5, ble.97054	# 2388
	jalr	x0, x1, 0	# 2391
ble.97054:
	flw		f1, -4(x2)	# 2382
	lw		x8, -8(x2)	# 2382
	sw		x5, -32(x2)	# 2382
	addi	x4, x8, 0
	sw		x1, -36(x2)	# 2382
	addi	x2, x2, -40	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 40	# 2382
	lw		x1, -36(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	addi	x6, x0, 4	# 2383
	lw		x7, -24(x2)	# 2383
	mul		x6, x7, x6	# 2383
	add		x4, x4, x6	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -36(x2)	# 2383
	sw		x1, -40(x2)	# 2383
	addi	x2, x2, -44	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 44	# 2383
	lw		x1, -40(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -36(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	addi	x5, x0, 4	# 2389
	lw		x6, -32(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x7, -16(x2)	# 2389
	add		x5, x7, x5	# 2389
	sw		x4, 0(x5)	# 2389
	lw		x4, -12(x2)	# 2390
	sub		x5, x6, x4	# 2390
	lw		x6, -24(x2)	# 2388
	ble		x6, x5, ble.97056	# 2388
	jalr	x0, x1, 0	# 2391
ble.97056:
	flw		f1, -4(x2)	# 2382
	lw		x8, -8(x2)	# 2382
	sw		x5, -40(x2)	# 2382
	addi	x4, x8, 0
	sw		x1, -44(x2)	# 2382
	addi	x2, x2, -48	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 48	# 2382
	lw		x1, -44(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	addi	x6, x0, 4	# 2383
	lw		x7, -24(x2)	# 2383
	mul		x6, x7, x6	# 2383
	add		x4, x4, x6	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -44(x2)	# 2383
	sw		x1, -48(x2)	# 2383
	addi	x2, x2, -52	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 52	# 2383
	lw		x1, -48(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -44(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	addi	x5, x0, 4	# 2389
	lw		x6, -40(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x7, -16(x2)	# 2389
	add		x5, x7, x5	# 2389
	sw		x4, 0(x5)	# 2389
	lw		x4, -12(x2)	# 2390
	sub		x5, x6, x4	# 2390
	lw		x6, -24(x2)	# 2388
	ble		x6, x5, ble.97058	# 2388
	jalr	x0, x1, 0	# 2391
ble.97058:
	flw		f1, -4(x2)	# 2382
	lw		x8, -8(x2)	# 2382
	sw		x5, -48(x2)	# 2382
	addi	x4, x8, 0
	sw		x1, -52(x2)	# 2382
	addi	x2, x2, -56	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 56	# 2382
	lw		x1, -52(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	addi	x6, x0, 4	# 2383
	lw		x7, -24(x2)	# 2383
	mul		x6, x7, x6	# 2383
	add		x4, x4, x6	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -52(x2)	# 2383
	sw		x1, -56(x2)	# 2383
	addi	x2, x2, -60	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 60	# 2383
	lw		x1, -56(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -52(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	addi	x5, x0, 4	# 2389
	lw		x6, -48(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x7, -16(x2)	# 2389
	add		x5, x7, x5	# 2389
	sw		x4, 0(x5)	# 2389
	lw		x4, -12(x2)	# 2390
	sub		x5, x6, x4	# 2390
	lw		x27, 0(x2)	# 2390
	addi	x4, x7, 0
	lw		x31, 0(x27)	# 2390
	jalr	x0, x31, 0	# 2390
create_dirvecs.2997.13432:
	lw		x5, 20(x27)	# 2395
	lw		x6, 16(x27)	# 2395
	lw		x7, 12(x27)	# 2395
	lw		x8, 8(x27)	# 2395
	flw		f1, 4(x27)	# 2395
	ble		x7, x4, ble.97060	# 2395
	jalr	x0, x1, 0	# 2399
ble.97060:
	addi	x9, x0, 120	# 2396
	sw		x27, 0(x2)	# 2382
	sw		x8, -4(x2)	# 2382
	sw		x5, -8(x2)	# 2382
	fsw		f1, -12(x2)	# 2382
	sw		x6, -16(x2)	# 2382
	sw		x4, -20(x2)	# 2382
	sw		x9, -24(x2)	# 2382
	sw		x7, -28(x2)	# 2382
	addi	x4, x6, 0
	sw		x1, -32(x2)	# 2382
	addi	x2, x2, -36	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 36	# 2382
	lw		x1, -32(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	addi	x6, x0, 4	# 2383
	lw		x7, -28(x2)	# 2383
	mul		x6, x7, x6	# 2383
	add		x4, x4, x6	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -32(x2)	# 2383
	sw		x1, -36(x2)	# 2383
	addi	x2, x2, -40	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 40	# 2383
	lw		x1, -36(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -32(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	lw		x4, -24(x2)	# 2396
	sw		x1, -36(x2)	# 2396
	addi	x2, x2, -40	# 2396
	jal		x1, min_caml_create_array	# 2396
	addi	x2, x2, 40	# 2396
	lw		x1, -36(x2)	# 2396
	addi	x5, x26, 716	# 2396
	addi	x6, x0, 4	# 2396
	lw		x7, -20(x2)	# 2396
	mul		x6, x7, x6	# 2396
	add		x5, x5, x6	# 2396
	sw		x4, 0(x5)	# 2396
	addi	x4, x26, 716	# 2397
	addi	x5, x0, 4	# 2397
	mul		x5, x7, x5	# 2397
	add		x4, x4, x5	# 2397
	lw		x4, 0(x4)	# 2397
	addi	x5, x0, 118	# 2397
	flw		f1, -12(x2)	# 2382
	lw		x6, -16(x2)	# 2382
	sw		x4, -36(x2)	# 2382
	sw		x5, -40(x2)	# 2382
	addi	x4, x6, 0
	sw		x1, -44(x2)	# 2382
	addi	x2, x2, -48	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 48	# 2382
	lw		x1, -44(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	addi	x6, x0, 4	# 2383
	lw		x7, -28(x2)	# 2383
	mul		x6, x7, x6	# 2383
	add		x4, x4, x6	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -44(x2)	# 2383
	sw		x1, -48(x2)	# 2383
	addi	x2, x2, -52	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 52	# 2383
	lw		x1, -48(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -44(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	addi	x5, x0, 4	# 2389
	lw		x6, -40(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x7, -36(x2)	# 2389
	add		x5, x7, x5	# 2389
	sw		x4, 0(x5)	# 2389
	addi	x4, x0, 117	# 2390
	flw		f1, -12(x2)	# 2382
	lw		x5, -16(x2)	# 2382
	sw		x4, -48(x2)	# 2382
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 2382
	addi	x2, x2, -56	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 56	# 2382
	lw		x1, -52(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	addi	x6, x0, 4	# 2383
	lw		x7, -28(x2)	# 2383
	mul		x6, x7, x6	# 2383
	add		x4, x4, x6	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -52(x2)	# 2383
	sw		x1, -56(x2)	# 2383
	addi	x2, x2, -60	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 60	# 2383
	lw		x1, -56(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -52(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	addi	x5, x0, 4	# 2389
	lw		x6, -48(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x7, -36(x2)	# 2389
	add		x5, x7, x5	# 2389
	sw		x4, 0(x5)	# 2389
	addi	x4, x0, 116	# 2390
	flw		f1, -12(x2)	# 2382
	lw		x5, -16(x2)	# 2382
	sw		x4, -56(x2)	# 2382
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 2382
	addi	x2, x2, -64	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 64	# 2382
	lw		x1, -60(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	addi	x6, x0, 4	# 2383
	lw		x7, -28(x2)	# 2383
	mul		x6, x7, x6	# 2383
	add		x4, x4, x6	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -60(x2)	# 2383
	sw		x1, -64(x2)	# 2383
	addi	x2, x2, -68	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 68	# 2383
	lw		x1, -64(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -60(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	addi	x5, x0, 4	# 2389
	lw		x6, -56(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x7, -36(x2)	# 2389
	add		x5, x7, x5	# 2389
	sw		x4, 0(x5)	# 2389
	addi	x5, x0, 115	# 2390
	lw		x27, -8(x2)	# 2390
	addi	x4, x7, 0
	sw		x1, -64(x2)	# 2390
	addi	x2, x2, -68	# 2390
	lw		x31, 0(x27)	# 2390
	jalr	x1, x31, 0	# 2390
	addi	x2, x2, 68	# 2390
	lw		x1, -64(x2)	# 2390
	lw		x4, -4(x2)	# 2398
	lw		x5, -20(x2)	# 2398
	sub		x5, x5, x4	# 2398
	lw		x6, -28(x2)	# 2395
	ble		x6, x5, ble.97062	# 2395
	jalr	x0, x1, 0	# 2399
ble.97062:
	flw		f1, -12(x2)	# 2382
	lw		x7, -16(x2)	# 2382
	sw		x5, -64(x2)	# 2382
	addi	x4, x7, 0
	sw		x1, -68(x2)	# 2382
	addi	x2, x2, -72	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 72	# 2382
	lw		x1, -68(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	addi	x6, x0, 4	# 2383
	lw		x7, -28(x2)	# 2383
	mul		x6, x7, x6	# 2383
	add		x4, x4, x6	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -68(x2)	# 2383
	sw		x1, -72(x2)	# 2383
	addi	x2, x2, -76	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 76	# 2383
	lw		x1, -72(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -68(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	lw		x4, -24(x2)	# 2396
	sw		x1, -72(x2)	# 2396
	addi	x2, x2, -76	# 2396
	jal		x1, min_caml_create_array	# 2396
	addi	x2, x2, 76	# 2396
	lw		x1, -72(x2)	# 2396
	addi	x5, x26, 716	# 2396
	addi	x6, x0, 4	# 2396
	lw		x7, -64(x2)	# 2396
	mul		x6, x7, x6	# 2396
	add		x5, x5, x6	# 2396
	sw		x4, 0(x5)	# 2396
	addi	x4, x26, 716	# 2397
	addi	x5, x0, 4	# 2397
	mul		x5, x7, x5	# 2397
	add		x4, x4, x5	# 2397
	lw		x4, 0(x4)	# 2397
	flw		f1, -12(x2)	# 2382
	lw		x5, -16(x2)	# 2382
	sw		x4, -72(x2)	# 2382
	addi	x4, x5, 0
	sw		x1, -76(x2)	# 2382
	addi	x2, x2, -80	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 80	# 2382
	lw		x1, -76(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	addi	x6, x0, 4	# 2383
	lw		x7, -28(x2)	# 2383
	mul		x6, x7, x6	# 2383
	add		x4, x4, x6	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -76(x2)	# 2383
	sw		x1, -80(x2)	# 2383
	addi	x2, x2, -84	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 84	# 2383
	lw		x1, -80(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -76(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	addi	x5, x0, 4	# 2389
	lw		x6, -40(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x6, -72(x2)	# 2389
	add		x5, x6, x5	# 2389
	sw		x4, 0(x5)	# 2389
	flw		f1, -12(x2)	# 2382
	lw		x4, -16(x2)	# 2382
	sw		x1, -80(x2)	# 2382
	addi	x2, x2, -84	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 84	# 2382
	lw		x1, -80(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	addi	x6, x0, 4	# 2383
	lw		x7, -28(x2)	# 2383
	mul		x6, x7, x6	# 2383
	add		x4, x4, x6	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -80(x2)	# 2383
	sw		x1, -84(x2)	# 2383
	addi	x2, x2, -88	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 88	# 2383
	lw		x1, -84(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -80(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	addi	x5, x0, 4	# 2389
	lw		x6, -48(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x6, -72(x2)	# 2389
	add		x5, x6, x5	# 2389
	sw		x4, 0(x5)	# 2389
	lw		x5, -56(x2)	# 2390
	lw		x27, -8(x2)	# 2390
	addi	x4, x6, 0
	sw		x1, -84(x2)	# 2390
	addi	x2, x2, -88	# 2390
	lw		x31, 0(x27)	# 2390
	jalr	x1, x31, 0	# 2390
	addi	x2, x2, 88	# 2390
	lw		x1, -84(x2)	# 2390
	lw		x4, -4(x2)	# 2398
	lw		x5, -64(x2)	# 2398
	sub		x4, x5, x4	# 2398
	lw		x27, 0(x2)	# 2398
	lw		x31, 0(x27)	# 2398
	jalr	x0, x31, 0	# 2398
init_dirvec_constants.2999.13434:
	lw		x6, 24(x27)	# 2407
	lw		x7, 20(x27)	# 2407
	lw		x8, 16(x27)	# 2407
	lw		x9, 12(x27)	# 2407
	lw		x10, 8(x27)	# 2407
	lw		x11, 4(x27)	# 2407
	ble		x10, x5, ble.97064	# 2407
	jalr	x0, x1, 0	# 2410
ble.97064:
	addi	x12, x0, 4	# 2408
	mul		x12, x5, x12	# 2408
	add		x12, x4, x12	# 2408
	lw		x12, 0(x12)	# 2408
	addi	x13, x26, 0	# 1287
	addi	x14, x0, 4	# 1287
	mul		x14, x10, x14	# 1287
	add		x13, x13, x14	# 1287
	lw		x13, 0(x13)	# 1287
	sub		x13, x13, x11	# 1287
	sw		x27, 0(x2)	# 1287
	sw		x9, -4(x2)	# 1287
	sw		x7, -8(x2)	# 1287
	sw		x6, -12(x2)	# 1287
	sw		x8, -16(x2)	# 1287
	sw		x4, -20(x2)	# 1287
	sw		x10, -24(x2)	# 1287
	sw		x11, -28(x2)	# 1287
	sw		x5, -32(x2)	# 1287
	addi	x5, x13, 0
	addi	x4, x12, 0
	addi	x27, x9, 0
	sw		x1, -36(x2)	# 1287
	addi	x2, x2, -40	# 1287
	lw		x31, 0(x27)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 40	# 1287
	lw		x1, -36(x2)	# 1287
	lw		x4, -28(x2)	# 2409
	lw		x5, -32(x2)	# 2409
	sub		x5, x5, x4	# 2409
	lw		x6, -24(x2)	# 2407
	ble		x6, x5, ble.97066	# 2407
	jalr	x0, x1, 0	# 2410
ble.97066:
	addi	x7, x0, 4	# 2408
	mul		x7, x5, x7	# 2408
	lw		x8, -20(x2)	# 2408
	add		x7, x8, x7	# 2408
	lw		x7, 0(x7)	# 2408
	addi	x9, x26, 0	# 1287
	addi	x10, x0, 4	# 1287
	mul		x10, x6, x10	# 1287
	add		x9, x9, x10	# 1287
	lw		x9, 0(x9)	# 1287
	sub		x9, x9, x4	# 1287
	sw		x5, -36(x2)	# 1270
	ble		x6, x9, ble.97069	# 1270
	jal		x0, ble_cont.97068	# 1270
ble.97069:
	addi	x10, x26, 48	# 1271
	addi	x11, x0, 4	# 1271
	mul		x11, x9, x11	# 1271
	add		x10, x10, x11	# 1271
	lw		x10, 0(x10)	# 1271
	lw		x11, 4(x7)	# 645
	lw		x12, 0(x7)	# 639
	lw		x13, 4(x10)	# 353
	sw		x7, -40(x2)	# 1275
	beq		x13, x4, beq.97071	# 1275
	addi	x14, x0, 2	# 1277
	beq		x13, x14, beq.97073	# 1277
	lw		x27, -8(x2)	# 1280
	sw		x11, -44(x2)	# 1280
	sw		x9, -48(x2)	# 1280
	addi	x5, x10, 0
	addi	x4, x12, 0
	sw		x1, -52(x2)	# 1280
	addi	x2, x2, -56	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 56	# 1280
	lw		x1, -52(x2)	# 1280
	addi	x5, x0, 4	# 1280
	lw		x6, -48(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -44(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.97072	# 1277
beq.97073:
	lw		x27, -12(x2)	# 1278
	sw		x11, -44(x2)	# 1278
	sw		x9, -48(x2)	# 1278
	addi	x5, x10, 0
	addi	x4, x12, 0
	sw		x1, -52(x2)	# 1278
	addi	x2, x2, -56	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 56	# 1278
	lw		x1, -52(x2)	# 1278
	addi	x5, x0, 4	# 1278
	lw		x6, -48(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -44(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.97072:
	jal		x0, beq_cont.97070	# 1275
beq.97071:
	lw		x27, -16(x2)	# 1276
	sw		x11, -44(x2)	# 1276
	sw		x9, -48(x2)	# 1276
	addi	x5, x10, 0
	addi	x4, x12, 0
	sw		x1, -52(x2)	# 1276
	addi	x2, x2, -56	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 56	# 1276
	lw		x1, -52(x2)	# 1276
	addi	x5, x0, 4	# 1276
	lw		x6, -48(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -44(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.97070:
	lw		x4, -28(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -40(x2)	# 1282
	lw		x27, -4(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -52(x2)	# 1282
	addi	x2, x2, -56	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 56	# 1282
	lw		x1, -52(x2)	# 1282
ble_cont.97068:
	lw		x4, -28(x2)	# 2409
	lw		x5, -36(x2)	# 2409
	sub		x5, x5, x4	# 2409
	lw		x6, -24(x2)	# 2407
	ble		x6, x5, ble.97074	# 2407
	jalr	x0, x1, 0	# 2410
ble.97074:
	addi	x7, x0, 4	# 2408
	mul		x7, x5, x7	# 2408
	lw		x8, -20(x2)	# 2408
	add		x7, x8, x7	# 2408
	lw		x7, 0(x7)	# 2408
	addi	x9, x26, 0	# 1287
	addi	x10, x0, 4	# 1287
	mul		x10, x6, x10	# 1287
	add		x9, x9, x10	# 1287
	lw		x9, 0(x9)	# 1287
	sub		x9, x9, x4	# 1287
	lw		x27, -4(x2)	# 1287
	sw		x5, -52(x2)	# 1287
	addi	x5, x9, 0
	addi	x4, x7, 0
	sw		x1, -56(x2)	# 1287
	addi	x2, x2, -60	# 1287
	lw		x31, 0(x27)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 60	# 1287
	lw		x1, -56(x2)	# 1287
	lw		x4, -28(x2)	# 2409
	lw		x5, -52(x2)	# 2409
	sub		x5, x5, x4	# 2409
	lw		x6, -24(x2)	# 2407
	ble		x6, x5, ble.97076	# 2407
	jalr	x0, x1, 0	# 2410
ble.97076:
	addi	x7, x0, 4	# 2408
	mul		x7, x5, x7	# 2408
	lw		x8, -20(x2)	# 2408
	add		x7, x8, x7	# 2408
	lw		x7, 0(x7)	# 2408
	addi	x9, x26, 0	# 1287
	addi	x10, x0, 4	# 1287
	mul		x10, x6, x10	# 1287
	add		x9, x9, x10	# 1287
	lw		x9, 0(x9)	# 1287
	sub		x9, x9, x4	# 1287
	sw		x5, -56(x2)	# 1270
	ble		x6, x9, ble.97079	# 1270
	jal		x0, ble_cont.97078	# 1270
ble.97079:
	addi	x6, x26, 48	# 1271
	addi	x10, x0, 4	# 1271
	mul		x10, x9, x10	# 1271
	add		x6, x6, x10	# 1271
	lw		x6, 0(x6)	# 1271
	lw		x10, 4(x7)	# 645
	lw		x11, 0(x7)	# 639
	lw		x12, 4(x6)	# 353
	sw		x7, -60(x2)	# 1275
	beq		x12, x4, beq.97081	# 1275
	addi	x13, x0, 2	# 1277
	beq		x12, x13, beq.97083	# 1277
	lw		x27, -8(x2)	# 1280
	sw		x10, -64(x2)	# 1280
	sw		x9, -68(x2)	# 1280
	addi	x5, x6, 0
	addi	x4, x11, 0
	sw		x1, -72(x2)	# 1280
	addi	x2, x2, -76	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 76	# 1280
	lw		x1, -72(x2)	# 1280
	addi	x5, x0, 4	# 1280
	lw		x6, -68(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -64(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.97082	# 1277
beq.97083:
	lw		x27, -12(x2)	# 1278
	sw		x10, -64(x2)	# 1278
	sw		x9, -68(x2)	# 1278
	addi	x5, x6, 0
	addi	x4, x11, 0
	sw		x1, -72(x2)	# 1278
	addi	x2, x2, -76	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 76	# 1278
	lw		x1, -72(x2)	# 1278
	addi	x5, x0, 4	# 1278
	lw		x6, -68(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -64(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.97082:
	jal		x0, beq_cont.97080	# 1275
beq.97081:
	lw		x27, -16(x2)	# 1276
	sw		x10, -64(x2)	# 1276
	sw		x9, -68(x2)	# 1276
	addi	x5, x6, 0
	addi	x4, x11, 0
	sw		x1, -72(x2)	# 1276
	addi	x2, x2, -76	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 76	# 1276
	lw		x1, -72(x2)	# 1276
	addi	x5, x0, 4	# 1276
	lw		x6, -68(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -64(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.97080:
	lw		x4, -28(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -60(x2)	# 1282
	lw		x27, -4(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -72(x2)	# 1282
	addi	x2, x2, -76	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 76	# 1282
	lw		x1, -72(x2)	# 1282
ble_cont.97078:
	lw		x4, -28(x2)	# 2409
	lw		x5, -56(x2)	# 2409
	sub		x5, x5, x4	# 2409
	lw		x4, -20(x2)	# 2409
	lw		x27, 0(x2)	# 2409
	lw		x31, 0(x27)	# 2409
	jalr	x0, x31, 0	# 2409
init_vecset_constants.3002.13437:
	lw		x5, 28(x27)	# 2414
	lw		x6, 24(x27)	# 2414
	lw		x7, 20(x27)	# 2414
	lw		x8, 16(x27)	# 2414
	lw		x9, 12(x27)	# 2414
	lw		x10, 8(x27)	# 2414
	lw		x11, 4(x27)	# 2414
	ble		x10, x4, ble.97084	# 2414
	jalr	x0, x1, 0	# 2417
ble.97084:
	addi	x12, x26, 716	# 2415
	addi	x13, x0, 4	# 2415
	mul		x13, x4, x13	# 2415
	add		x12, x12, x13	# 2415
	lw		x12, 0(x12)	# 2415
	addi	x13, x0, 119	# 2415
	addi	x14, x0, 4	# 2408
	mul		x14, x13, x14	# 2408
	add		x14, x12, x14	# 2408
	lw		x14, 0(x14)	# 2408
	addi	x15, x26, 0	# 1287
	addi	x16, x0, 4	# 1287
	mul		x16, x10, x16	# 1287
	add		x15, x15, x16	# 1287
	lw		x15, 0(x15)	# 1287
	sub		x15, x15, x11	# 1287
	sw		x27, 0(x2)	# 1270
	sw		x13, -4(x2)	# 1270
	sw		x4, -8(x2)	# 1270
	sw		x9, -12(x2)	# 1270
	sw		x6, -16(x2)	# 1270
	sw		x5, -20(x2)	# 1270
	sw		x7, -24(x2)	# 1270
	sw		x8, -28(x2)	# 1270
	sw		x11, -32(x2)	# 1270
	sw		x10, -36(x2)	# 1270
	sw		x12, -40(x2)	# 1270
	ble		x10, x15, ble.97087	# 1270
	jal		x0, ble_cont.97086	# 1270
ble.97087:
	addi	x16, x26, 48	# 1271
	addi	x17, x0, 4	# 1271
	mul		x17, x15, x17	# 1271
	add		x16, x16, x17	# 1271
	lw		x16, 0(x16)	# 1271
	lw		x17, 4(x14)	# 645
	lw		x18, 0(x14)	# 639
	lw		x19, 4(x16)	# 353
	sw		x14, -44(x2)	# 1275
	beq		x19, x11, beq.97089	# 1275
	addi	x20, x0, 2	# 1277
	beq		x19, x20, beq.97091	# 1277
	sw		x17, -48(x2)	# 1280
	sw		x15, -52(x2)	# 1280
	addi	x5, x16, 0
	addi	x4, x18, 0
	addi	x27, x6, 0
	sw		x1, -56(x2)	# 1280
	addi	x2, x2, -60	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 60	# 1280
	lw		x1, -56(x2)	# 1280
	addi	x5, x0, 4	# 1280
	lw		x6, -52(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -48(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.97090	# 1277
beq.97091:
	sw		x17, -48(x2)	# 1278
	sw		x15, -52(x2)	# 1278
	addi	x4, x18, 0
	addi	x27, x5, 0
	addi	x5, x16, 0
	sw		x1, -56(x2)	# 1278
	addi	x2, x2, -60	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 60	# 1278
	lw		x1, -56(x2)	# 1278
	addi	x5, x0, 4	# 1278
	lw		x6, -52(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -48(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.97090:
	jal		x0, beq_cont.97088	# 1275
beq.97089:
	sw		x17, -48(x2)	# 1276
	sw		x15, -52(x2)	# 1276
	addi	x5, x16, 0
	addi	x4, x18, 0
	addi	x27, x7, 0
	sw		x1, -56(x2)	# 1276
	addi	x2, x2, -60	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 60	# 1276
	lw		x1, -56(x2)	# 1276
	addi	x5, x0, 4	# 1276
	lw		x6, -52(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -48(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.97088:
	lw		x4, -32(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -44(x2)	# 1282
	lw		x27, -28(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -56(x2)	# 1282
	addi	x2, x2, -60	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 60	# 1282
	lw		x1, -56(x2)	# 1282
ble_cont.97086:
	addi	x4, x0, 118	# 2409
	addi	x5, x0, 4	# 2408
	mul		x5, x4, x5	# 2408
	lw		x6, -40(x2)	# 2408
	add		x5, x6, x5	# 2408
	lw		x5, 0(x5)	# 2408
	addi	x7, x26, 0	# 1287
	addi	x8, x0, 4	# 1287
	lw		x9, -36(x2)	# 1287
	mul		x8, x9, x8	# 1287
	add		x7, x7, x8	# 1287
	lw		x7, 0(x7)	# 1287
	lw		x8, -32(x2)	# 1287
	sub		x7, x7, x8	# 1287
	lw		x27, -28(x2)	# 1287
	sw		x4, -56(x2)	# 1287
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -60(x2)	# 1287
	addi	x2, x2, -64	# 1287
	lw		x31, 0(x27)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 64	# 1287
	lw		x1, -60(x2)	# 1287
	addi	x4, x0, 117	# 2409
	addi	x5, x0, 4	# 2408
	mul		x5, x4, x5	# 2408
	lw		x6, -40(x2)	# 2408
	add		x5, x6, x5	# 2408
	lw		x5, 0(x5)	# 2408
	addi	x7, x26, 0	# 1287
	addi	x8, x0, 4	# 1287
	lw		x9, -36(x2)	# 1287
	mul		x8, x9, x8	# 1287
	add		x7, x7, x8	# 1287
	lw		x7, 0(x7)	# 1287
	lw		x8, -32(x2)	# 1287
	sub		x7, x7, x8	# 1287
	sw		x4, -60(x2)	# 1270
	ble		x9, x7, ble.97093	# 1270
	jal		x0, ble_cont.97092	# 1270
ble.97093:
	addi	x10, x26, 48	# 1271
	addi	x11, x0, 4	# 1271
	mul		x11, x7, x11	# 1271
	add		x10, x10, x11	# 1271
	lw		x10, 0(x10)	# 1271
	lw		x11, 4(x5)	# 645
	lw		x12, 0(x5)	# 639
	lw		x13, 4(x10)	# 353
	sw		x5, -64(x2)	# 1275
	beq		x13, x8, beq.97095	# 1275
	addi	x14, x0, 2	# 1277
	beq		x13, x14, beq.97097	# 1277
	lw		x27, -16(x2)	# 1280
	sw		x11, -68(x2)	# 1280
	sw		x7, -72(x2)	# 1280
	addi	x5, x10, 0
	addi	x4, x12, 0
	sw		x1, -76(x2)	# 1280
	addi	x2, x2, -80	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 80	# 1280
	lw		x1, -76(x2)	# 1280
	addi	x5, x0, 4	# 1280
	lw		x6, -72(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -68(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.97096	# 1277
beq.97097:
	lw		x27, -20(x2)	# 1278
	sw		x11, -68(x2)	# 1278
	sw		x7, -72(x2)	# 1278
	addi	x5, x10, 0
	addi	x4, x12, 0
	sw		x1, -76(x2)	# 1278
	addi	x2, x2, -80	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 80	# 1278
	lw		x1, -76(x2)	# 1278
	addi	x5, x0, 4	# 1278
	lw		x6, -72(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -68(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.97096:
	jal		x0, beq_cont.97094	# 1275
beq.97095:
	lw		x27, -24(x2)	# 1276
	sw		x11, -68(x2)	# 1276
	sw		x7, -72(x2)	# 1276
	addi	x5, x10, 0
	addi	x4, x12, 0
	sw		x1, -76(x2)	# 1276
	addi	x2, x2, -80	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 80	# 1276
	lw		x1, -76(x2)	# 1276
	addi	x5, x0, 4	# 1276
	lw		x6, -72(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -68(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.97094:
	lw		x4, -32(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -64(x2)	# 1282
	lw		x27, -28(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -76(x2)	# 1282
	addi	x2, x2, -80	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 80	# 1282
	lw		x1, -76(x2)	# 1282
ble_cont.97092:
	addi	x5, x0, 116	# 2409
	lw		x4, -40(x2)	# 2409
	lw		x27, -12(x2)	# 2409
	sw		x1, -76(x2)	# 2409
	addi	x2, x2, -80	# 2409
	lw		x31, 0(x27)	# 2409
	jalr	x1, x31, 0	# 2409
	addi	x2, x2, 80	# 2409
	lw		x1, -76(x2)	# 2409
	lw		x4, -32(x2)	# 2416
	lw		x5, -8(x2)	# 2416
	sub		x5, x5, x4	# 2416
	lw		x6, -36(x2)	# 2414
	ble		x6, x5, ble.97098	# 2414
	jalr	x0, x1, 0	# 2417
ble.97098:
	addi	x7, x26, 716	# 2415
	addi	x8, x0, 4	# 2415
	mul		x8, x5, x8	# 2415
	add		x7, x7, x8	# 2415
	lw		x7, 0(x7)	# 2415
	addi	x8, x0, 4	# 2408
	lw		x9, -4(x2)	# 2408
	mul		x8, x9, x8	# 2408
	add		x8, x7, x8	# 2408
	lw		x8, 0(x8)	# 2408
	addi	x10, x26, 0	# 1287
	addi	x11, x0, 4	# 1287
	mul		x11, x6, x11	# 1287
	add		x10, x10, x11	# 1287
	lw		x10, 0(x10)	# 1287
	sub		x10, x10, x4	# 1287
	lw		x27, -28(x2)	# 1287
	sw		x5, -76(x2)	# 1287
	sw		x7, -80(x2)	# 1287
	addi	x5, x10, 0
	addi	x4, x8, 0
	sw		x1, -84(x2)	# 1287
	addi	x2, x2, -88	# 1287
	lw		x31, 0(x27)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 88	# 1287
	lw		x1, -84(x2)	# 1287
	addi	x4, x0, 4	# 2408
	lw		x5, -56(x2)	# 2408
	mul		x4, x5, x4	# 2408
	lw		x6, -80(x2)	# 2408
	add		x4, x6, x4	# 2408
	lw		x4, 0(x4)	# 2408
	addi	x7, x26, 0	# 1287
	addi	x8, x0, 4	# 1287
	lw		x9, -36(x2)	# 1287
	mul		x8, x9, x8	# 1287
	add		x7, x7, x8	# 1287
	lw		x7, 0(x7)	# 1287
	lw		x8, -32(x2)	# 1287
	sub		x7, x7, x8	# 1287
	ble		x9, x7, ble.97101	# 1270
	jal		x0, ble_cont.97100	# 1270
ble.97101:
	addi	x10, x26, 48	# 1271
	addi	x11, x0, 4	# 1271
	mul		x11, x7, x11	# 1271
	add		x10, x10, x11	# 1271
	lw		x10, 0(x10)	# 1271
	lw		x11, 4(x4)	# 645
	lw		x12, 0(x4)	# 639
	lw		x13, 4(x10)	# 353
	sw		x4, -84(x2)	# 1275
	beq		x13, x8, beq.97103	# 1275
	addi	x14, x0, 2	# 1277
	beq		x13, x14, beq.97105	# 1277
	lw		x27, -16(x2)	# 1280
	sw		x11, -88(x2)	# 1280
	sw		x7, -92(x2)	# 1280
	addi	x5, x10, 0
	addi	x4, x12, 0
	sw		x1, -96(x2)	# 1280
	addi	x2, x2, -100	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 100	# 1280
	lw		x1, -96(x2)	# 1280
	addi	x5, x0, 4	# 1280
	lw		x6, -92(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -88(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.97104	# 1277
beq.97105:
	lw		x27, -20(x2)	# 1278
	sw		x11, -88(x2)	# 1278
	sw		x7, -92(x2)	# 1278
	addi	x5, x10, 0
	addi	x4, x12, 0
	sw		x1, -96(x2)	# 1278
	addi	x2, x2, -100	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 100	# 1278
	lw		x1, -96(x2)	# 1278
	addi	x5, x0, 4	# 1278
	lw		x6, -92(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -88(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.97104:
	jal		x0, beq_cont.97102	# 1275
beq.97103:
	lw		x27, -24(x2)	# 1276
	sw		x11, -88(x2)	# 1276
	sw		x7, -92(x2)	# 1276
	addi	x5, x10, 0
	addi	x4, x12, 0
	sw		x1, -96(x2)	# 1276
	addi	x2, x2, -100	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 100	# 1276
	lw		x1, -96(x2)	# 1276
	addi	x5, x0, 4	# 1276
	lw		x6, -92(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -88(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.97102:
	lw		x4, -32(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -84(x2)	# 1282
	lw		x27, -28(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -96(x2)	# 1282
	addi	x2, x2, -100	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 100	# 1282
	lw		x1, -96(x2)	# 1282
ble_cont.97100:
	lw		x4, -80(x2)	# 2409
	lw		x5, -60(x2)	# 2409
	lw		x27, -12(x2)	# 2409
	sw		x1, -96(x2)	# 2409
	addi	x2, x2, -100	# 2409
	lw		x31, 0(x27)	# 2409
	jalr	x1, x31, 0	# 2409
	addi	x2, x2, 100	# 2409
	lw		x1, -96(x2)	# 2409
	lw		x4, -32(x2)	# 2416
	lw		x5, -76(x2)	# 2416
	sub		x5, x5, x4	# 2416
	lw		x6, -36(x2)	# 2414
	ble		x6, x5, ble.97106	# 2414
	jalr	x0, x1, 0	# 2417
ble.97106:
	addi	x7, x26, 716	# 2415
	addi	x8, x0, 4	# 2415
	mul		x8, x5, x8	# 2415
	add		x7, x7, x8	# 2415
	lw		x7, 0(x7)	# 2415
	addi	x8, x0, 4	# 2408
	lw		x9, -4(x2)	# 2408
	mul		x8, x9, x8	# 2408
	add		x8, x7, x8	# 2408
	lw		x8, 0(x8)	# 2408
	addi	x10, x26, 0	# 1287
	addi	x11, x0, 4	# 1287
	mul		x11, x6, x11	# 1287
	add		x10, x10, x11	# 1287
	lw		x10, 0(x10)	# 1287
	sub		x10, x10, x4	# 1287
	sw		x5, -96(x2)	# 1270
	sw		x7, -100(x2)	# 1270
	ble		x6, x10, ble.97109	# 1270
	jal		x0, ble_cont.97108	# 1270
ble.97109:
	addi	x11, x26, 48	# 1271
	addi	x12, x0, 4	# 1271
	mul		x12, x10, x12	# 1271
	add		x11, x11, x12	# 1271
	lw		x11, 0(x11)	# 1271
	lw		x12, 4(x8)	# 645
	lw		x13, 0(x8)	# 639
	lw		x14, 4(x11)	# 353
	sw		x8, -104(x2)	# 1275
	beq		x14, x4, beq.97111	# 1275
	addi	x15, x0, 2	# 1277
	beq		x14, x15, beq.97113	# 1277
	lw		x27, -16(x2)	# 1280
	sw		x12, -108(x2)	# 1280
	sw		x10, -112(x2)	# 1280
	addi	x5, x11, 0
	addi	x4, x13, 0
	sw		x1, -116(x2)	# 1280
	addi	x2, x2, -120	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 120	# 1280
	lw		x1, -116(x2)	# 1280
	addi	x5, x0, 4	# 1280
	lw		x6, -112(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -108(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.97112	# 1277
beq.97113:
	lw		x27, -20(x2)	# 1278
	sw		x12, -108(x2)	# 1278
	sw		x10, -112(x2)	# 1278
	addi	x5, x11, 0
	addi	x4, x13, 0
	sw		x1, -116(x2)	# 1278
	addi	x2, x2, -120	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 120	# 1278
	lw		x1, -116(x2)	# 1278
	addi	x5, x0, 4	# 1278
	lw		x6, -112(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -108(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.97112:
	jal		x0, beq_cont.97110	# 1275
beq.97111:
	lw		x27, -24(x2)	# 1276
	sw		x12, -108(x2)	# 1276
	sw		x10, -112(x2)	# 1276
	addi	x5, x11, 0
	addi	x4, x13, 0
	sw		x1, -116(x2)	# 1276
	addi	x2, x2, -120	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 120	# 1276
	lw		x1, -116(x2)	# 1276
	addi	x5, x0, 4	# 1276
	lw		x6, -112(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -108(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.97110:
	lw		x4, -32(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -104(x2)	# 1282
	lw		x27, -28(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -116(x2)	# 1282
	addi	x2, x2, -120	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 120	# 1282
	lw		x1, -116(x2)	# 1282
ble_cont.97108:
	lw		x4, -100(x2)	# 2409
	lw		x5, -56(x2)	# 2409
	lw		x27, -12(x2)	# 2409
	sw		x1, -116(x2)	# 2409
	addi	x2, x2, -120	# 2409
	lw		x31, 0(x27)	# 2409
	jalr	x1, x31, 0	# 2409
	addi	x2, x2, 120	# 2409
	lw		x1, -116(x2)	# 2409
	lw		x4, -32(x2)	# 2416
	lw		x5, -96(x2)	# 2416
	sub		x5, x5, x4	# 2416
	lw		x6, -36(x2)	# 2414
	ble		x6, x5, ble.97114	# 2414
	jalr	x0, x1, 0	# 2417
ble.97114:
	addi	x6, x26, 716	# 2415
	addi	x7, x0, 4	# 2415
	mul		x7, x5, x7	# 2415
	add		x6, x6, x7	# 2415
	lw		x6, 0(x6)	# 2415
	lw		x7, -4(x2)	# 2415
	lw		x27, -12(x2)	# 2415
	sw		x5, -116(x2)	# 2415
	addi	x5, x7, 0
	addi	x4, x6, 0
	sw		x1, -120(x2)	# 2415
	addi	x2, x2, -124	# 2415
	lw		x31, 0(x27)	# 2415
	jalr	x1, x31, 0	# 2415
	addi	x2, x2, 124	# 2415
	lw		x1, -120(x2)	# 2415
	lw		x4, -32(x2)	# 2416
	lw		x5, -116(x2)	# 2416
	sub		x4, x5, x4	# 2416
	lw		x27, 0(x2)	# 2416
	lw		x31, 0(x27)	# 2416
	jalr	x0, x31, 0	# 2416
setup_rect_reflection.3013.13439:
	lw		x6, 36(x27)	# 2441
	lw		x7, 32(x27)	# 2441
	lw		x8, 28(x27)	# 2441
	lw		x9, 24(x27)	# 2441
	lw		x10, 20(x27)	# 2441
	lw		x11, 16(x27)	# 2441
	lw		x12, 12(x27)	# 2441
	lw		x13, 8(x27)	# 2441
	flw		f1, 4(x27)	# 2441
	addi	x14, x0, 4	# 2441
	mul		x4, x4, x14	# 2441
	addi	x14, x26, 1736	# 2442
	addi	x15, x0, 4	# 2442
	mul		x15, x12, x15	# 2442
	add		x14, x14, x15	# 2442
	lw		x14, 0(x14)	# 2442
	fadd	f2, f0, f16	# 2443
	lw		x5, 28(x5)	# 461
	addi	x15, x0, 4	# 466
	mul		x15, x12, x15	# 466
	add		x5, x5, x15	# 466
	flw		f3, 0(x5)	# 466
	fsub	f2, f2, f3	# 2443
	addi	x5, x26, 312	# 2444
	addi	x15, x0, 4	# 2444
	mul		x15, x12, x15	# 2444
	add		x5, x5, x15	# 2444
	flw		f3, 0(x5)	# 2444
	fsub	f4, f0, f3	# 4
	addi	x5, x26, 312	# 2445
	addi	x15, x0, 4	# 2445
	mul		x15, x13, x15	# 2445
	add		x5, x5, x15	# 2445
	flw		f5, 0(x5)	# 2445
	fsub	f5, f0, f5	# 4
	addi	x5, x26, 312	# 2446
	addi	x15, x0, 4	# 2446
	mul		x15, x10, x15	# 2446
	add		x5, x5, x15	# 2446
	flw		f6, 0(x5)	# 2446
	fsub	f6, f0, f6	# 4
	add		x5, x4, x13	# 2447
	fsw		f4, 0(x2)	# 2382
	fsw		f1, -4(x2)	# 2382
	sw		x11, -8(x2)	# 2382
	sw		x4, -12(x2)	# 2382
	sw		x14, -16(x2)	# 2382
	sw		x5, -20(x2)	# 2382
	fsw		f2, -24(x2)	# 2382
	sw		x9, -28(x2)	# 2382
	sw		x7, -32(x2)	# 2382
	sw		x6, -36(x2)	# 2382
	sw		x8, -40(x2)	# 2382
	fsw		f6, -44(x2)	# 2382
	sw		x10, -48(x2)	# 2382
	fsw		f5, -52(x2)	# 2382
	sw		x13, -56(x2)	# 2382
	fsw		f3, -60(x2)	# 2382
	sw		x12, -64(x2)	# 2382
	addi	x4, x11, 0
	sw		x1, -68(x2)	# 2382
	addi	x2, x2, -72	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 72	# 2382
	lw		x1, -68(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	addi	x6, x0, 4	# 2383
	lw		x7, -64(x2)	# 2383
	mul		x6, x7, x6	# 2383
	add		x4, x4, x6	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -68(x2)	# 2383
	sw		x1, -72(x2)	# 2383
	addi	x2, x2, -76	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 76	# 2383
	lw		x1, -72(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x6, -68(x2)	# 2384
	sw		x6, 0(x5)	# 2384
	addi	x7, x0, 4	# 240
	lw		x8, -64(x2)	# 240
	mul		x7, x8, x7	# 240
	add		x7, x6, x7	# 240
	flw		f1, -60(x2)	# 240
	fsw		f1, 0(x7)	# 240
	addi	x7, x0, 4	# 241
	lw		x9, -56(x2)	# 241
	mul		x7, x9, x7	# 241
	add		x7, x6, x7	# 241
	flw		f1, -52(x2)	# 241
	fsw		f1, 0(x7)	# 241
	addi	x7, x0, 4	# 242
	lw		x10, -48(x2)	# 242
	mul		x7, x10, x7	# 242
	add		x7, x6, x7	# 242
	flw		f2, -44(x2)	# 242
	fsw		f2, 0(x7)	# 242
	addi	x7, x26, 0	# 1287
	addi	x11, x0, 4	# 1287
	mul		x11, x8, x11	# 1287
	add		x7, x7, x11	# 1287
	lw		x7, 0(x7)	# 1287
	sub		x7, x7, x9	# 1287
	sw		x5, -72(x2)	# 1270
	ble		x8, x7, ble.97117	# 1270
	jal		x0, ble_cont.97116	# 1270
ble.97117:
	addi	x11, x26, 48	# 1271
	addi	x12, x0, 4	# 1271
	mul		x12, x7, x12	# 1271
	add		x11, x11, x12	# 1271
	lw		x11, 0(x11)	# 1271
	lw		x12, 4(x11)	# 353
	beq		x12, x9, beq.97119	# 1275
	addi	x13, x0, 2	# 1277
	beq		x12, x13, beq.97121	# 1277
	lw		x27, -32(x2)	# 1280
	sw		x4, -76(x2)	# 1280
	sw		x7, -80(x2)	# 1280
	addi	x5, x11, 0
	addi	x4, x6, 0
	sw		x1, -84(x2)	# 1280
	addi	x2, x2, -88	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 88	# 1280
	lw		x1, -84(x2)	# 1280
	addi	x5, x0, 4	# 1280
	lw		x6, -80(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -76(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.97120	# 1277
beq.97121:
	lw		x27, -36(x2)	# 1278
	sw		x4, -76(x2)	# 1278
	sw		x7, -80(x2)	# 1278
	addi	x5, x11, 0
	addi	x4, x6, 0
	sw		x1, -84(x2)	# 1278
	addi	x2, x2, -88	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 88	# 1278
	lw		x1, -84(x2)	# 1278
	addi	x5, x0, 4	# 1278
	lw		x6, -80(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -76(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.97120:
	jal		x0, beq_cont.97118	# 1275
beq.97119:
	lw		x27, -40(x2)	# 1276
	sw		x4, -76(x2)	# 1276
	sw		x7, -80(x2)	# 1276
	addi	x5, x11, 0
	addi	x4, x6, 0
	sw		x1, -84(x2)	# 1276
	addi	x2, x2, -88	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 88	# 1276
	lw		x1, -84(x2)	# 1276
	addi	x5, x0, 4	# 1276
	lw		x6, -80(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -76(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.97118:
	lw		x4, -56(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -72(x2)	# 1282
	lw		x27, -28(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -84(x2)	# 1282
	addi	x2, x2, -88	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 88	# 1282
	lw		x1, -84(x2)	# 1282
ble_cont.97116:
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f1, -24(x2)	# 2436
	fsw		f1, 8(x4)	# 2436
	lw		x5, -72(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -20(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	addi	x5, x26, 1016	# 2436
	addi	x6, x0, 4	# 2436
	lw		x7, -16(x2)	# 2436
	mul		x6, x7, x6	# 2436
	add		x5, x5, x6	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -56(x2)	# 2448
	add		x5, x7, x4	# 2448
	lw		x6, -48(x2)	# 2448
	lw		x8, -12(x2)	# 2448
	add		x9, x8, x6	# 2448
	addi	x10, x26, 312	# 2448
	addi	x11, x0, 4	# 2448
	mul		x11, x4, x11	# 2448
	add		x10, x10, x11	# 2448
	flw		f2, 0(x10)	# 2448
	flw		f3, -4(x2)	# 2382
	lw		x10, -8(x2)	# 2382
	sw		x5, -84(x2)	# 2382
	sw		x9, -88(x2)	# 2382
	fsw		f2, -92(x2)	# 2382
	addi	x4, x10, 0
	fadd	f1, f0, f3
	sw		x1, -96(x2)	# 2382
	addi	x2, x2, -100	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 100	# 2382
	lw		x1, -96(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	addi	x6, x0, 4	# 2383
	lw		x7, -64(x2)	# 2383
	mul		x6, x7, x6	# 2383
	add		x4, x4, x6	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -96(x2)	# 2383
	sw		x1, -100(x2)	# 2383
	addi	x2, x2, -104	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 104	# 2383
	lw		x1, -100(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x6, -96(x2)	# 2384
	sw		x6, 0(x5)	# 2384
	addi	x7, x0, 4	# 240
	lw		x8, -64(x2)	# 240
	mul		x7, x8, x7	# 240
	add		x7, x6, x7	# 240
	flw		f1, 0(x2)	# 240
	fsw		f1, 0(x7)	# 240
	addi	x7, x0, 4	# 241
	lw		x9, -56(x2)	# 241
	mul		x7, x9, x7	# 241
	add		x7, x6, x7	# 241
	flw		f2, -92(x2)	# 241
	fsw		f2, 0(x7)	# 241
	addi	x7, x0, 4	# 242
	lw		x10, -48(x2)	# 242
	mul		x7, x10, x7	# 242
	add		x7, x6, x7	# 242
	flw		f2, -44(x2)	# 242
	fsw		f2, 0(x7)	# 242
	addi	x7, x26, 0	# 1287
	addi	x11, x0, 4	# 1287
	mul		x11, x8, x11	# 1287
	add		x7, x7, x11	# 1287
	lw		x7, 0(x7)	# 1287
	sub		x7, x7, x9	# 1287
	sw		x5, -100(x2)	# 1270
	ble		x8, x7, ble.97123	# 1270
	jal		x0, ble_cont.97122	# 1270
ble.97123:
	addi	x11, x26, 48	# 1271
	addi	x12, x0, 4	# 1271
	mul		x12, x7, x12	# 1271
	add		x11, x11, x12	# 1271
	lw		x11, 0(x11)	# 1271
	lw		x12, 4(x11)	# 353
	beq		x12, x9, beq.97125	# 1275
	addi	x13, x0, 2	# 1277
	beq		x12, x13, beq.97127	# 1277
	lw		x27, -32(x2)	# 1280
	sw		x4, -104(x2)	# 1280
	sw		x7, -108(x2)	# 1280
	addi	x5, x11, 0
	addi	x4, x6, 0
	sw		x1, -112(x2)	# 1280
	addi	x2, x2, -116	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 116	# 1280
	lw		x1, -112(x2)	# 1280
	addi	x5, x0, 4	# 1280
	lw		x6, -108(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -104(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.97126	# 1277
beq.97127:
	lw		x27, -36(x2)	# 1278
	sw		x4, -104(x2)	# 1278
	sw		x7, -108(x2)	# 1278
	addi	x5, x11, 0
	addi	x4, x6, 0
	sw		x1, -112(x2)	# 1278
	addi	x2, x2, -116	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 116	# 1278
	lw		x1, -112(x2)	# 1278
	addi	x5, x0, 4	# 1278
	lw		x6, -108(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -104(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.97126:
	jal		x0, beq_cont.97124	# 1275
beq.97125:
	lw		x27, -40(x2)	# 1276
	sw		x4, -104(x2)	# 1276
	sw		x7, -108(x2)	# 1276
	addi	x5, x11, 0
	addi	x4, x6, 0
	sw		x1, -112(x2)	# 1276
	addi	x2, x2, -116	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 116	# 1276
	lw		x1, -112(x2)	# 1276
	addi	x5, x0, 4	# 1276
	lw		x6, -108(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -104(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.97124:
	lw		x4, -56(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -100(x2)	# 1282
	lw		x27, -28(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -112(x2)	# 1282
	addi	x2, x2, -116	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 116	# 1282
	lw		x1, -112(x2)	# 1282
ble_cont.97122:
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f1, -24(x2)	# 2436
	fsw		f1, 8(x4)	# 2436
	lw		x5, -100(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -88(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	addi	x5, x26, 1016	# 2436
	addi	x6, x0, 4	# 2436
	lw		x7, -84(x2)	# 2436
	mul		x6, x7, x6	# 2436
	add		x5, x5, x6	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -48(x2)	# 2449
	lw		x5, -16(x2)	# 2449
	add		x6, x5, x4	# 2449
	lw		x7, -8(x2)	# 2449
	lw		x8, -12(x2)	# 2449
	add		x8, x8, x7	# 2449
	addi	x9, x26, 312	# 2449
	addi	x10, x0, 4	# 2449
	mul		x10, x4, x10	# 2449
	add		x9, x9, x10	# 2449
	flw		f2, 0(x9)	# 2449
	flw		f3, -4(x2)	# 2382
	sw		x6, -112(x2)	# 2382
	sw		x8, -116(x2)	# 2382
	fsw		f2, -120(x2)	# 2382
	addi	x4, x7, 0
	fadd	f1, f0, f3
	sw		x1, -124(x2)	# 2382
	addi	x2, x2, -128	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 128	# 2382
	lw		x1, -124(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	addi	x6, x0, 4	# 2383
	lw		x7, -64(x2)	# 2383
	mul		x6, x7, x6	# 2383
	add		x4, x4, x6	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -124(x2)	# 2383
	sw		x1, -128(x2)	# 2383
	addi	x2, x2, -132	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 132	# 2383
	lw		x1, -128(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x6, -124(x2)	# 2384
	sw		x6, 0(x5)	# 2384
	addi	x7, x0, 4	# 240
	lw		x8, -64(x2)	# 240
	mul		x7, x8, x7	# 240
	add		x7, x6, x7	# 240
	flw		f1, 0(x2)	# 240
	fsw		f1, 0(x7)	# 240
	addi	x7, x0, 4	# 241
	lw		x9, -56(x2)	# 241
	mul		x7, x9, x7	# 241
	add		x7, x6, x7	# 241
	flw		f1, -52(x2)	# 241
	fsw		f1, 0(x7)	# 241
	addi	x7, x0, 4	# 242
	lw		x10, -48(x2)	# 242
	mul		x7, x10, x7	# 242
	add		x7, x6, x7	# 242
	flw		f1, -120(x2)	# 242
	fsw		f1, 0(x7)	# 242
	addi	x7, x26, 0	# 1287
	addi	x10, x0, 4	# 1287
	mul		x10, x8, x10	# 1287
	add		x7, x7, x10	# 1287
	lw		x7, 0(x7)	# 1287
	sub		x7, x7, x9	# 1287
	sw		x5, -128(x2)	# 1270
	ble		x8, x7, ble.97129	# 1270
	jal		x0, ble_cont.97128	# 1270
ble.97129:
	addi	x10, x26, 48	# 1271
	addi	x11, x0, 4	# 1271
	mul		x11, x7, x11	# 1271
	add		x10, x10, x11	# 1271
	lw		x10, 0(x10)	# 1271
	lw		x11, 4(x10)	# 353
	beq		x11, x9, beq.97131	# 1275
	addi	x12, x0, 2	# 1277
	beq		x11, x12, beq.97133	# 1277
	lw		x27, -32(x2)	# 1280
	sw		x4, -132(x2)	# 1280
	sw		x7, -136(x2)	# 1280
	addi	x5, x10, 0
	addi	x4, x6, 0
	sw		x1, -140(x2)	# 1280
	addi	x2, x2, -144	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 144	# 1280
	lw		x1, -140(x2)	# 1280
	addi	x5, x0, 4	# 1280
	lw		x6, -136(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -132(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.97132	# 1277
beq.97133:
	lw		x27, -36(x2)	# 1278
	sw		x4, -132(x2)	# 1278
	sw		x7, -136(x2)	# 1278
	addi	x5, x10, 0
	addi	x4, x6, 0
	sw		x1, -140(x2)	# 1278
	addi	x2, x2, -144	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 144	# 1278
	lw		x1, -140(x2)	# 1278
	addi	x5, x0, 4	# 1278
	lw		x6, -136(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -132(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.97132:
	jal		x0, beq_cont.97130	# 1275
beq.97131:
	lw		x27, -40(x2)	# 1276
	sw		x4, -132(x2)	# 1276
	sw		x7, -136(x2)	# 1276
	addi	x5, x10, 0
	addi	x4, x6, 0
	sw		x1, -140(x2)	# 1276
	addi	x2, x2, -144	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 144	# 1276
	lw		x1, -140(x2)	# 1276
	addi	x5, x0, 4	# 1276
	lw		x6, -136(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -132(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.97130:
	lw		x4, -56(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x4, -128(x2)	# 1282
	lw		x27, -28(x2)	# 1282
	sw		x1, -140(x2)	# 1282
	addi	x2, x2, -144	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 144	# 1282
	lw		x1, -140(x2)	# 1282
ble_cont.97128:
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f1, -24(x2)	# 2436
	fsw		f1, 8(x4)	# 2436
	lw		x5, -128(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -116(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	addi	x5, x26, 1016	# 2436
	addi	x6, x0, 4	# 2436
	lw		x7, -112(x2)	# 2436
	mul		x6, x7, x6	# 2436
	add		x5, x5, x6	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -8(x2)	# 2450
	lw		x5, -16(x2)	# 2450
	add		x4, x5, x4	# 2450
	addi	x5, x26, 1736	# 2450
	addi	x6, x0, 4	# 2450
	lw		x7, -64(x2)	# 2450
	mul		x6, x7, x6	# 2450
	add		x5, x5, x6	# 2450
	sw		x4, 0(x5)	# 2450
	jalr	x0, x1, 0	# 2450
setup_surface_reflection.3016.13442:
	lw		x6, 36(x27)	# 2455
	lw		x7, 32(x27)	# 2455
	lw		x8, 28(x27)	# 2455
	lw		x9, 24(x27)	# 2455
	lw		x10, 20(x27)	# 2455
	lw		x11, 16(x27)	# 2455
	lw		x12, 12(x27)	# 2455
	lw		x13, 8(x27)	# 2455
	flw		f1, 4(x27)	# 2455
	addi	x14, x0, 4	# 2455
	mul		x4, x4, x14	# 2455
	add		x4, x4, x13	# 2455
	addi	x14, x26, 1736	# 2456
	addi	x15, x0, 4	# 2456
	mul		x15, x12, x15	# 2456
	add		x14, x14, x15	# 2456
	lw		x14, 0(x14)	# 2456
	fadd	f2, f0, f16	# 2457
	lw		x15, 28(x5)	# 461
	addi	x16, x0, 4	# 466
	mul		x16, x12, x16	# 466
	add		x15, x15, x16	# 466
	flw		f3, 0(x15)	# 466
	fsub	f2, f2, f3	# 2457
	lw		x15, 16(x5)	# 421
	addi	x16, x26, 312	# 292
	addi	x17, x0, 4	# 292
	mul		x17, x12, x17	# 292
	add		x16, x16, x17	# 292
	flw		f3, 0(x16)	# 292
	addi	x16, x0, 4	# 292
	mul		x16, x12, x16	# 292
	add		x16, x15, x16	# 292
	flw		f4, 0(x16)	# 292
	fmul	f4, f3, f4	# 292
	addi	x16, x26, 312	# 292
	addi	x17, x0, 4	# 292
	mul		x17, x13, x17	# 292
	add		x16, x16, x17	# 292
	flw		f5, 0(x16)	# 292
	addi	x16, x0, 4	# 292
	mul		x16, x13, x16	# 292
	add		x16, x15, x16	# 292
	flw		f6, 0(x16)	# 292
	fmul	f6, f5, f6	# 292
	fadd	f4, f4, f6	# 292
	addi	x16, x26, 312	# 292
	addi	x17, x0, 4	# 292
	mul		x17, x10, x17	# 292
	add		x16, x16, x17	# 292
	flw		f6, 0(x16)	# 292
	addi	x16, x0, 4	# 292
	mul		x16, x10, x16	# 292
	add		x15, x15, x16	# 292
	flw		f7, 0(x15)	# 292
	fmul	f7, f6, f7	# 292
	fadd	f4, f4, f7	# 292
	lui		x15, %hi(l.21257)	# 2461
	ori		x15, x0, %lo(l.21257)	# 2461
	flw		f7, 0(x15)	# 2461
	lw		x15, 16(x5)	# 391
	addi	x16, x0, 4	# 396
	mul		x16, x12, x16	# 396
	add		x15, x15, x16	# 396
	flw		f8, 0(x15)	# 396
	fmul	f8, f7, f8	# 2461
	fmul	f8, f8, f4	# 2461
	fsub	f3, f8, f3	# 2461
	lw		x15, 16(x5)	# 401
	addi	x16, x0, 4	# 406
	mul		x16, x13, x16	# 406
	add		x15, x15, x16	# 406
	flw		f8, 0(x15)	# 406
	fmul	f8, f7, f8	# 2462
	fmul	f8, f8, f4	# 2462
	fsub	f5, f8, f5	# 2462
	lw		x5, 16(x5)	# 411
	addi	x15, x0, 4	# 416
	mul		x15, x10, x15	# 416
	add		x5, x5, x15	# 416
	flw		f8, 0(x5)	# 416
	fmul	f7, f7, f8	# 2463
	fmul	f4, f7, f4	# 2463
	fsub	f4, f4, f6	# 2463
	sw		x14, 0(x2)	# 2382
	sw		x4, -4(x2)	# 2382
	fsw		f2, -8(x2)	# 2382
	sw		x9, -12(x2)	# 2382
	sw		x7, -16(x2)	# 2382
	sw		x6, -20(x2)	# 2382
	sw		x8, -24(x2)	# 2382
	fsw		f4, -28(x2)	# 2382
	sw		x10, -32(x2)	# 2382
	fsw		f5, -36(x2)	# 2382
	sw		x13, -40(x2)	# 2382
	fsw		f3, -44(x2)	# 2382
	sw		x12, -48(x2)	# 2382
	addi	x4, x11, 0
	sw		x1, -52(x2)	# 2382
	addi	x2, x2, -56	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 56	# 2382
	lw		x1, -52(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	addi	x6, x0, 4	# 2383
	lw		x7, -48(x2)	# 2383
	mul		x6, x7, x6	# 2383
	add		x4, x4, x6	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -52(x2)	# 2383
	sw		x1, -56(x2)	# 2383
	addi	x2, x2, -60	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 60	# 2383
	lw		x1, -56(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x6, -52(x2)	# 2384
	sw		x6, 0(x5)	# 2384
	addi	x7, x0, 4	# 240
	lw		x8, -48(x2)	# 240
	mul		x7, x8, x7	# 240
	add		x7, x6, x7	# 240
	flw		f1, -44(x2)	# 240
	fsw		f1, 0(x7)	# 240
	addi	x7, x0, 4	# 241
	lw		x9, -40(x2)	# 241
	mul		x7, x9, x7	# 241
	add		x7, x6, x7	# 241
	flw		f1, -36(x2)	# 241
	fsw		f1, 0(x7)	# 241
	addi	x7, x0, 4	# 242
	lw		x10, -32(x2)	# 242
	mul		x7, x10, x7	# 242
	add		x7, x6, x7	# 242
	flw		f1, -28(x2)	# 242
	fsw		f1, 0(x7)	# 242
	addi	x7, x26, 0	# 1287
	addi	x10, x0, 4	# 1287
	mul		x10, x8, x10	# 1287
	add		x7, x7, x10	# 1287
	lw		x7, 0(x7)	# 1287
	sub		x7, x7, x9	# 1287
	sw		x5, -56(x2)	# 1270
	ble		x8, x7, ble.97136	# 1270
	jal		x0, ble_cont.97135	# 1270
ble.97136:
	addi	x10, x26, 48	# 1271
	addi	x11, x0, 4	# 1271
	mul		x11, x7, x11	# 1271
	add		x10, x10, x11	# 1271
	lw		x10, 0(x10)	# 1271
	lw		x11, 4(x10)	# 353
	beq		x11, x9, beq.97138	# 1275
	addi	x12, x0, 2	# 1277
	beq		x11, x12, beq.97140	# 1277
	lw		x27, -16(x2)	# 1280
	sw		x4, -60(x2)	# 1280
	sw		x7, -64(x2)	# 1280
	addi	x5, x10, 0
	addi	x4, x6, 0
	sw		x1, -68(x2)	# 1280
	addi	x2, x2, -72	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 72	# 1280
	lw		x1, -68(x2)	# 1280
	addi	x5, x0, 4	# 1280
	lw		x6, -64(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -60(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.97139	# 1277
beq.97140:
	lw		x27, -20(x2)	# 1278
	sw		x4, -60(x2)	# 1278
	sw		x7, -64(x2)	# 1278
	addi	x5, x10, 0
	addi	x4, x6, 0
	sw		x1, -68(x2)	# 1278
	addi	x2, x2, -72	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 72	# 1278
	lw		x1, -68(x2)	# 1278
	addi	x5, x0, 4	# 1278
	lw		x6, -64(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -60(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.97139:
	jal		x0, beq_cont.97137	# 1275
beq.97138:
	lw		x27, -24(x2)	# 1276
	sw		x4, -60(x2)	# 1276
	sw		x7, -64(x2)	# 1276
	addi	x5, x10, 0
	addi	x4, x6, 0
	sw		x1, -68(x2)	# 1276
	addi	x2, x2, -72	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 72	# 1276
	lw		x1, -68(x2)	# 1276
	addi	x5, x0, 4	# 1276
	lw		x6, -64(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -60(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.97137:
	lw		x4, -40(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -56(x2)	# 1282
	lw		x27, -12(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -68(x2)	# 1282
	addi	x2, x2, -72	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 72	# 1282
	lw		x1, -68(x2)	# 1282
ble_cont.97135:
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f1, -8(x2)	# 2436
	fsw		f1, 8(x4)	# 2436
	lw		x5, -56(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -4(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	addi	x5, x26, 1016	# 2436
	addi	x6, x0, 4	# 2436
	lw		x7, 0(x2)	# 2436
	mul		x6, x7, x6	# 2436
	add		x5, x5, x6	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -40(x2)	# 2464
	add		x4, x7, x4	# 2464
	addi	x5, x26, 1736	# 2464
	addi	x6, x0, 4	# 2464
	lw		x7, -48(x2)	# 2464
	mul		x6, x7, x6	# 2464
	add		x5, x5, x6	# 2464
	sw		x4, 0(x5)	# 2464
	jalr	x0, x1, 0	# 2464
rt.3021.13445:
	lw		x7, 120(x27)	# 2492
	lw		x8, 116(x27)	# 2492
	lw		x9, 112(x27)	# 2492
	lw		x10, 108(x27)	# 2492
	lw		x11, 104(x27)	# 2492
	lw		x12, 100(x27)	# 2492
	lw		x13, 96(x27)	# 2492
	lw		x14, 92(x27)	# 2492
	lw		x15, 88(x27)	# 2492
	lw		x16, 84(x27)	# 2492
	lw		x17, 80(x27)	# 2492
	lw		x18, 76(x27)	# 2492
	lw		x19, 72(x27)	# 2492
	lw		x20, 68(x27)	# 2492
	lw		x21, 64(x27)	# 2492
	lw		x22, 60(x27)	# 2492
	lw		x23, 56(x27)	# 2492
	lw		x24, 52(x27)	# 2492
	lw		x25, 48(x27)	# 2492
	lw		x31, 44(x27)	# 2492
	sw		x13, 0(x2)	# 2492
	lw		x13, 40(x27)	# 2492
	sw		x12, -4(x2)	# 2492
	lw		x12, 36(x27)	# 2492
	sw		x21, -8(x2)	# 2492
	lw		x21, 32(x27)	# 2492
	sw		x8, -12(x2)	# 2492
	lw		x8, 28(x27)	# 2492
	sw		x11, -16(x2)	# 2492
	lw		x11, 24(x27)	# 2492
	sw		x22, -20(x2)	# 2492
	lw		x22, 20(x27)	# 2492
	sw		x24, -24(x2)	# 2492
	lw		x24, 16(x27)	# 2492
	sw		x31, -28(x2)	# 2492
	lw		x31, 12(x27)	# 2492
	sw		x23, -32(x2)	# 2492
	lw		x23, 8(x27)	# 2492
	flw		f1, 4(x27)	# 2492
	addi	x27, x26, 616	# 2492
	sw		x9, -36(x2)	# 2492
	addi	x9, x0, 4	# 2492
	mul		x9, x31, x9	# 2492
	add		x9, x27, x9	# 2492
	sw		x4, 0(x9)	# 2492
	addi	x9, x26, 616	# 2493
	addi	x27, x0, 4	# 2493
	mul		x27, x23, x27	# 2493
	add		x9, x9, x27	# 2493
	sw		x5, 0(x9)	# 2493
	div		x9, x4, x11	# 2494
	addi	x27, x26, 624	# 2494
	sw		x7, -40(x2)	# 2494
	addi	x7, x0, 4	# 2494
	mul		x7, x31, x7	# 2494
	add		x7, x27, x7	# 2494
	sw		x9, 0(x7)	# 2494
	div		x5, x5, x11	# 2495
	addi	x7, x26, 624	# 2495
	addi	x9, x0, 4	# 2495
	mul		x9, x23, x9	# 2495
	add		x7, x7, x9	# 2495
	sw		x5, 0(x7)	# 2495
	lui		x5, %hi(l.25061)	# 2496
	ori		x5, x0, %lo(l.25061)	# 2496
	flw		f2, 0(x5)	# 2496
	sw		x10, -44(x2)	# 14
	sw		x21, -48(x2)	# 14
	sw		x12, -52(x2)	# 14
	sw		x6, -56(x2)	# 14
	sw		x15, -60(x2)	# 14
	sw		x20, -64(x2)	# 14
	sw		x18, -68(x2)	# 14
	sw		x22, -72(x2)	# 14
	sw		x16, -76(x2)	# 14
	sw		x17, -80(x2)	# 14
	sw		x19, -84(x2)	# 14
	sw		x14, -88(x2)	# 14
	sw		x25, -92(x2)	# 14
	sw		x13, -96(x2)	# 14
	sw		x11, -100(x2)	# 14
	sw		x23, -104(x2)	# 14
	sw		x8, -108(x2)	# 14
	fsw		f1, -112(x2)	# 14
	sw		x24, -116(x2)	# 14
	sw		x31, -120(x2)	# 14
	fsw		f2, -124(x2)	# 14
	ble		x31, x4, ble.97143	# 14
	sub		x4, x0, x4	# 16
	sw		x1, -128(x2)	# 16
	addi	x2, x2, -132	# 16
	jal		x1, float_of_int.2489.13041	# 16
	addi	x2, x2, 132	# 16
	lw		x1, -128(x2)	# 16
	fsub	f1, f0, f1	# 16
	jal		x0, ble_cont.97142	# 14
ble.97143:
	addi	x5, x0, 1	# 15
	ble		x5, x4, ble.97145	# 15
	fadd	f1, f0, f0	# 15
	jal		x0, ble_cont.97144	# 15
ble.97145:
	addi	x5, x0, 1	# 15
	sub		x4, x4, x5	# 15
	sw		x1, -128(x2)	# 15
	addi	x2, x2, -132	# 15
	jal		x1, float_of_int.2489.13041	# 15
	addi	x2, x2, 132	# 15
	lw		x1, -128(x2)	# 15
	fadd	f2, f0, f16	# 15
	fadd	f1, f1, f2	# 15
ble_cont.97144:
ble_cont.97142:
	flw		f2, -124(x2)	# 2496
	fdiv	f1, f2, f1	# 2496
	addi	x4, x26, 632	# 2496
	addi	x5, x0, 4	# 2496
	lw		x6, -120(x2)	# 2496
	mul		x5, x6, x5	# 2496
	add		x4, x4, x5	# 2496
	fsw		f1, 0(x4)	# 2496
	addi	x4, x26, 616	# 2306
	addi	x5, x0, 4	# 2306
	mul		x5, x6, x5	# 2306
	add		x4, x4, x5	# 2306
	lw		x4, 0(x4)	# 2306
	flw		f1, -112(x2)	# 2284
	lw		x5, -116(x2)	# 2284
	sw		x4, -128(x2)	# 2284
	addi	x4, x5, 0
	sw		x1, -132(x2)	# 2284
	addi	x2, x2, -136	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 136	# 2284
	lw		x1, -132(x2)	# 2284
	flw		f1, -112(x2)	# 2272
	lw		x5, -116(x2)	# 2272
	sw		x4, -132(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -136(x2)	# 2272
	addi	x2, x2, -140	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 140	# 2272
	lw		x1, -136(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -108(x2)	# 2273
	sw		x1, -136(x2)	# 2273
	addi	x2, x2, -140	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 140	# 2273
	lw		x1, -136(x2)	# 2273
	flw		f1, -112(x2)	# 2274
	lw		x5, -116(x2)	# 2274
	sw		x4, -136(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -140(x2)	# 2274
	addi	x2, x2, -144	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 144	# 2274
	lw		x1, -140(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -104(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -136(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -112(x2)	# 2275
	lw		x4, -116(x2)	# 2275
	sw		x1, -140(x2)	# 2275
	addi	x2, x2, -144	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 144	# 2275
	lw		x1, -140(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -100(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -136(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -112(x2)	# 2276
	lw		x4, -116(x2)	# 2276
	sw		x1, -140(x2)	# 2276
	addi	x2, x2, -144	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 144	# 2276
	lw		x1, -140(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -116(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -136(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	addi	x4, x0, 4	# 2277
	flw		f1, -112(x2)	# 2277
	sw		x4, -140(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -144(x2)	# 2277
	addi	x2, x2, -148	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 148	# 2277
	lw		x1, -144(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -140(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -136(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -108(x2)	# 2286
	lw		x5, -120(x2)	# 2286
	sw		x1, -144(x2)	# 2286
	addi	x2, x2, -148	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 148	# 2286
	lw		x1, -144(x2)	# 2286
	lw		x5, -108(x2)	# 2287
	lw		x6, -120(x2)	# 2287
	sw		x4, -144(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -148(x2)	# 2287
	addi	x2, x2, -152	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 152	# 2287
	lw		x1, -148(x2)	# 2287
	flw		f1, -112(x2)	# 2272
	lw		x5, -116(x2)	# 2272
	sw		x4, -148(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -152(x2)	# 2272
	addi	x2, x2, -156	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 156	# 2272
	lw		x1, -152(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -108(x2)	# 2273
	sw		x1, -152(x2)	# 2273
	addi	x2, x2, -156	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 156	# 2273
	lw		x1, -152(x2)	# 2273
	flw		f1, -112(x2)	# 2274
	lw		x5, -116(x2)	# 2274
	sw		x4, -152(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -156(x2)	# 2274
	addi	x2, x2, -160	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 160	# 2274
	lw		x1, -156(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -104(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -152(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -112(x2)	# 2275
	lw		x4, -116(x2)	# 2275
	sw		x1, -156(x2)	# 2275
	addi	x2, x2, -160	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 160	# 2275
	lw		x1, -156(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -100(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -152(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -112(x2)	# 2276
	lw		x4, -116(x2)	# 2276
	sw		x1, -156(x2)	# 2276
	addi	x2, x2, -160	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 160	# 2276
	lw		x1, -156(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -116(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -152(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -112(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -156(x2)	# 2277
	addi	x2, x2, -160	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 160	# 2277
	lw		x1, -156(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -140(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -152(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	flw		f1, -112(x2)	# 2272
	lw		x4, -116(x2)	# 2272
	sw		x1, -156(x2)	# 2272
	addi	x2, x2, -160	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 160	# 2272
	lw		x1, -156(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -108(x2)	# 2273
	sw		x1, -156(x2)	# 2273
	addi	x2, x2, -160	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 160	# 2273
	lw		x1, -156(x2)	# 2273
	flw		f1, -112(x2)	# 2274
	lw		x5, -116(x2)	# 2274
	sw		x4, -156(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -160(x2)	# 2274
	addi	x2, x2, -164	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 164	# 2274
	lw		x1, -160(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -104(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -156(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -112(x2)	# 2275
	lw		x4, -116(x2)	# 2275
	sw		x1, -160(x2)	# 2275
	addi	x2, x2, -164	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 164	# 2275
	lw		x1, -160(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -100(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -156(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -112(x2)	# 2276
	lw		x4, -116(x2)	# 2276
	sw		x1, -160(x2)	# 2276
	addi	x2, x2, -164	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 164	# 2276
	lw		x1, -160(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -116(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -156(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -112(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -160(x2)	# 2277
	addi	x2, x2, -164	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 164	# 2277
	lw		x1, -160(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -140(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -156(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -104(x2)	# 2290
	lw		x5, -120(x2)	# 2290
	sw		x1, -160(x2)	# 2290
	addi	x2, x2, -164	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 164	# 2290
	lw		x1, -160(x2)	# 2290
	flw		f1, -112(x2)	# 2272
	lw		x5, -116(x2)	# 2272
	sw		x4, -160(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -164(x2)	# 2272
	addi	x2, x2, -168	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 168	# 2272
	lw		x1, -164(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -108(x2)	# 2273
	sw		x1, -164(x2)	# 2273
	addi	x2, x2, -168	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 168	# 2273
	lw		x1, -164(x2)	# 2273
	flw		f1, -112(x2)	# 2274
	lw		x5, -116(x2)	# 2274
	sw		x4, -164(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -168(x2)	# 2274
	addi	x2, x2, -172	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 172	# 2274
	lw		x1, -168(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -104(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -164(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -112(x2)	# 2275
	lw		x4, -116(x2)	# 2275
	sw		x1, -168(x2)	# 2275
	addi	x2, x2, -172	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 172	# 2275
	lw		x1, -168(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -100(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -164(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -112(x2)	# 2276
	lw		x4, -116(x2)	# 2276
	sw		x1, -168(x2)	# 2276
	addi	x2, x2, -172	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 172	# 2276
	lw		x1, -168(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -116(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -164(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -112(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -168(x2)	# 2277
	addi	x2, x2, -172	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 172	# 2277
	lw		x1, -168(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -140(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -164(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	addi	x4, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x7, 28(x4)	# 2292
	lw		x5, -160(x2)	# 2292
	sw		x5, 24(x4)	# 2292
	lw		x5, -156(x2)	# 2292
	sw		x5, 20(x4)	# 2292
	lw		x5, -152(x2)	# 2292
	sw		x5, 16(x4)	# 2292
	lw		x5, -148(x2)	# 2292
	sw		x5, 12(x4)	# 2292
	lw		x5, -144(x2)	# 2292
	sw		x5, 8(x4)	# 2292
	lw		x5, -136(x2)	# 2292
	sw		x5, 4(x4)	# 2292
	lw		x5, -132(x2)	# 2292
	sw		x5, 0(x4)	# 2292
	addi	x5, x4, 0	# 2292
	lw		x4, -128(x2)	# 2306
	sw		x1, -168(x2)	# 2306
	addi	x2, x2, -172	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 172	# 2306
	lw		x1, -168(x2)	# 2306
	addi	x5, x26, 616	# 2307
	addi	x6, x0, 4	# 2307
	lw		x7, -120(x2)	# 2307
	mul		x6, x7, x6	# 2307
	add		x5, x5, x6	# 2307
	lw		x5, 0(x5)	# 2307
	lw		x6, -100(x2)	# 2307
	sub		x5, x5, x6	# 2307
	ble		x7, x5, ble.97147	# 2297
	jal		x0, ble_cont.97146	# 2297
ble.97147:
	lw		x27, -96(x2)	# 2298
	sw		x4, -168(x2)	# 2298
	sw		x5, -172(x2)	# 2298
	sw		x1, -176(x2)	# 2298
	addi	x2, x2, -180	# 2298
	lw		x31, 0(x27)	# 2298
	jalr	x1, x31, 0	# 2298
	addi	x2, x2, 180	# 2298
	lw		x1, -176(x2)	# 2298
	addi	x5, x0, 4	# 2298
	lw		x6, -172(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -168(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -104(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x6, -120(x2)	# 2297
	ble		x6, x5, ble.97149	# 2297
	addi	x4, x7, 0	# 2301
	jal		x0, ble_cont.97148	# 2297
ble.97149:
	lw		x27, -96(x2)	# 2298
	sw		x5, -176(x2)	# 2298
	sw		x1, -180(x2)	# 2298
	addi	x2, x2, -184	# 2298
	lw		x31, 0(x27)	# 2298
	jalr	x1, x31, 0	# 2298
	addi	x2, x2, 184	# 2298
	lw		x1, -180(x2)	# 2298
	addi	x5, x0, 4	# 2298
	lw		x6, -176(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -168(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -104(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x27, -92(x2)	# 2299
	addi	x4, x7, 0
	sw		x1, -180(x2)	# 2299
	addi	x2, x2, -184	# 2299
	lw		x31, 0(x27)	# 2299
	jalr	x1, x31, 0	# 2299
	addi	x2, x2, 184	# 2299
	lw		x1, -180(x2)	# 2299
ble_cont.97148:
ble_cont.97146:
	addi	x5, x26, 616	# 2306
	addi	x6, x0, 4	# 2306
	lw		x7, -120(x2)	# 2306
	mul		x6, x7, x6	# 2306
	add		x5, x5, x6	# 2306
	lw		x5, 0(x5)	# 2306
	flw		f1, -112(x2)	# 2284
	lw		x6, -116(x2)	# 2284
	sw		x4, -180(x2)	# 2284
	sw		x5, -184(x2)	# 2284
	addi	x4, x6, 0
	sw		x1, -188(x2)	# 2284
	addi	x2, x2, -192	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 192	# 2284
	lw		x1, -188(x2)	# 2284
	flw		f1, -112(x2)	# 2272
	lw		x5, -116(x2)	# 2272
	sw		x4, -188(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -192(x2)	# 2272
	addi	x2, x2, -196	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 196	# 2272
	lw		x1, -192(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -108(x2)	# 2273
	sw		x1, -192(x2)	# 2273
	addi	x2, x2, -196	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 196	# 2273
	lw		x1, -192(x2)	# 2273
	flw		f1, -112(x2)	# 2274
	lw		x5, -116(x2)	# 2274
	sw		x4, -192(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -196(x2)	# 2274
	addi	x2, x2, -200	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 200	# 2274
	lw		x1, -196(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -104(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -192(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -112(x2)	# 2275
	lw		x4, -116(x2)	# 2275
	sw		x1, -196(x2)	# 2275
	addi	x2, x2, -200	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 200	# 2275
	lw		x1, -196(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -100(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -192(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -112(x2)	# 2276
	lw		x4, -116(x2)	# 2276
	sw		x1, -196(x2)	# 2276
	addi	x2, x2, -200	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 200	# 2276
	lw		x1, -196(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -116(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -192(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -112(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -196(x2)	# 2277
	addi	x2, x2, -200	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 200	# 2277
	lw		x1, -196(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -140(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -192(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -108(x2)	# 2286
	lw		x5, -120(x2)	# 2286
	sw		x1, -196(x2)	# 2286
	addi	x2, x2, -200	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 200	# 2286
	lw		x1, -196(x2)	# 2286
	lw		x5, -108(x2)	# 2287
	lw		x6, -120(x2)	# 2287
	sw		x4, -196(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -200(x2)	# 2287
	addi	x2, x2, -204	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 204	# 2287
	lw		x1, -200(x2)	# 2287
	flw		f1, -112(x2)	# 2272
	lw		x5, -116(x2)	# 2272
	sw		x4, -200(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -204(x2)	# 2272
	addi	x2, x2, -208	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 208	# 2272
	lw		x1, -204(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -108(x2)	# 2273
	sw		x1, -204(x2)	# 2273
	addi	x2, x2, -208	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 208	# 2273
	lw		x1, -204(x2)	# 2273
	flw		f1, -112(x2)	# 2274
	lw		x5, -116(x2)	# 2274
	sw		x4, -204(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -208(x2)	# 2274
	addi	x2, x2, -212	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 212	# 2274
	lw		x1, -208(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -104(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -204(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -112(x2)	# 2275
	lw		x4, -116(x2)	# 2275
	sw		x1, -208(x2)	# 2275
	addi	x2, x2, -212	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 212	# 2275
	lw		x1, -208(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -100(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -204(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -112(x2)	# 2276
	lw		x4, -116(x2)	# 2276
	sw		x1, -208(x2)	# 2276
	addi	x2, x2, -212	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 212	# 2276
	lw		x1, -208(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -116(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -204(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -112(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -208(x2)	# 2277
	addi	x2, x2, -212	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 212	# 2277
	lw		x1, -208(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -140(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -204(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	flw		f1, -112(x2)	# 2272
	lw		x4, -116(x2)	# 2272
	sw		x1, -208(x2)	# 2272
	addi	x2, x2, -212	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 212	# 2272
	lw		x1, -208(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -108(x2)	# 2273
	sw		x1, -208(x2)	# 2273
	addi	x2, x2, -212	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 212	# 2273
	lw		x1, -208(x2)	# 2273
	flw		f1, -112(x2)	# 2274
	lw		x5, -116(x2)	# 2274
	sw		x4, -208(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -212(x2)	# 2274
	addi	x2, x2, -216	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 216	# 2274
	lw		x1, -212(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -104(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -208(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -112(x2)	# 2275
	lw		x4, -116(x2)	# 2275
	sw		x1, -212(x2)	# 2275
	addi	x2, x2, -216	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 216	# 2275
	lw		x1, -212(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -100(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -208(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -112(x2)	# 2276
	lw		x4, -116(x2)	# 2276
	sw		x1, -212(x2)	# 2276
	addi	x2, x2, -216	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 216	# 2276
	lw		x1, -212(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -116(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -208(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -112(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -212(x2)	# 2277
	addi	x2, x2, -216	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 216	# 2277
	lw		x1, -212(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -140(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -208(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -104(x2)	# 2290
	lw		x5, -120(x2)	# 2290
	sw		x1, -212(x2)	# 2290
	addi	x2, x2, -216	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 216	# 2290
	lw		x1, -212(x2)	# 2290
	flw		f1, -112(x2)	# 2272
	lw		x5, -116(x2)	# 2272
	sw		x4, -212(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -216(x2)	# 2272
	addi	x2, x2, -220	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 220	# 2272
	lw		x1, -216(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -108(x2)	# 2273
	sw		x1, -216(x2)	# 2273
	addi	x2, x2, -220	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 220	# 2273
	lw		x1, -216(x2)	# 2273
	flw		f1, -112(x2)	# 2274
	lw		x5, -116(x2)	# 2274
	sw		x4, -216(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -220(x2)	# 2274
	addi	x2, x2, -224	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 224	# 2274
	lw		x1, -220(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -104(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -216(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -112(x2)	# 2275
	lw		x4, -116(x2)	# 2275
	sw		x1, -220(x2)	# 2275
	addi	x2, x2, -224	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 224	# 2275
	lw		x1, -220(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -100(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -216(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -112(x2)	# 2276
	lw		x4, -116(x2)	# 2276
	sw		x1, -220(x2)	# 2276
	addi	x2, x2, -224	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 224	# 2276
	lw		x1, -220(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -116(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -216(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -112(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -220(x2)	# 2277
	addi	x2, x2, -224	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 224	# 2277
	lw		x1, -220(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -140(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -216(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	addi	x4, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x7, 28(x4)	# 2292
	lw		x5, -212(x2)	# 2292
	sw		x5, 24(x4)	# 2292
	lw		x5, -208(x2)	# 2292
	sw		x5, 20(x4)	# 2292
	lw		x5, -204(x2)	# 2292
	sw		x5, 16(x4)	# 2292
	lw		x5, -200(x2)	# 2292
	sw		x5, 12(x4)	# 2292
	lw		x5, -196(x2)	# 2292
	sw		x5, 8(x4)	# 2292
	lw		x5, -192(x2)	# 2292
	sw		x5, 4(x4)	# 2292
	lw		x5, -188(x2)	# 2292
	sw		x5, 0(x4)	# 2292
	addi	x5, x4, 0	# 2292
	lw		x4, -184(x2)	# 2306
	sw		x1, -220(x2)	# 2306
	addi	x2, x2, -224	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 224	# 2306
	lw		x1, -220(x2)	# 2306
	addi	x5, x26, 616	# 2307
	addi	x6, x0, 4	# 2307
	lw		x7, -120(x2)	# 2307
	mul		x6, x7, x6	# 2307
	add		x5, x5, x6	# 2307
	lw		x5, 0(x5)	# 2307
	lw		x6, -100(x2)	# 2307
	sub		x5, x5, x6	# 2307
	ble		x7, x5, ble.97151	# 2297
	jal		x0, ble_cont.97150	# 2297
ble.97151:
	lw		x27, -96(x2)	# 2298
	sw		x4, -220(x2)	# 2298
	sw		x5, -224(x2)	# 2298
	sw		x1, -228(x2)	# 2298
	addi	x2, x2, -232	# 2298
	lw		x31, 0(x27)	# 2298
	jalr	x1, x31, 0	# 2298
	addi	x2, x2, 232	# 2298
	lw		x1, -228(x2)	# 2298
	addi	x5, x0, 4	# 2298
	lw		x6, -224(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -220(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -104(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x6, -120(x2)	# 2297
	ble		x6, x5, ble.97153	# 2297
	addi	x4, x7, 0	# 2301
	jal		x0, ble_cont.97152	# 2297
ble.97153:
	lw		x27, -96(x2)	# 2298
	sw		x5, -228(x2)	# 2298
	sw		x1, -232(x2)	# 2298
	addi	x2, x2, -236	# 2298
	lw		x31, 0(x27)	# 2298
	jalr	x1, x31, 0	# 2298
	addi	x2, x2, 236	# 2298
	lw		x1, -232(x2)	# 2298
	addi	x5, x0, 4	# 2298
	lw		x6, -228(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -220(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -104(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x27, -92(x2)	# 2299
	addi	x4, x7, 0
	sw		x1, -232(x2)	# 2299
	addi	x2, x2, -236	# 2299
	lw		x31, 0(x27)	# 2299
	jalr	x1, x31, 0	# 2299
	addi	x2, x2, 236	# 2299
	lw		x1, -232(x2)	# 2299
ble_cont.97152:
ble_cont.97150:
	addi	x5, x26, 616	# 2306
	addi	x6, x0, 4	# 2306
	lw		x7, -120(x2)	# 2306
	mul		x6, x7, x6	# 2306
	add		x5, x5, x6	# 2306
	lw		x5, 0(x5)	# 2306
	flw		f1, -112(x2)	# 2284
	lw		x6, -116(x2)	# 2284
	sw		x4, -232(x2)	# 2284
	sw		x5, -236(x2)	# 2284
	addi	x4, x6, 0
	sw		x1, -240(x2)	# 2284
	addi	x2, x2, -244	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 244	# 2284
	lw		x1, -240(x2)	# 2284
	flw		f1, -112(x2)	# 2272
	lw		x5, -116(x2)	# 2272
	sw		x4, -240(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -244(x2)	# 2272
	addi	x2, x2, -248	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 248	# 2272
	lw		x1, -244(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -108(x2)	# 2273
	sw		x1, -244(x2)	# 2273
	addi	x2, x2, -248	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 248	# 2273
	lw		x1, -244(x2)	# 2273
	flw		f1, -112(x2)	# 2274
	lw		x5, -116(x2)	# 2274
	sw		x4, -244(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -248(x2)	# 2274
	addi	x2, x2, -252	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 252	# 2274
	lw		x1, -248(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -104(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -244(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -112(x2)	# 2275
	lw		x4, -116(x2)	# 2275
	sw		x1, -248(x2)	# 2275
	addi	x2, x2, -252	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 252	# 2275
	lw		x1, -248(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -100(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -244(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -112(x2)	# 2276
	lw		x4, -116(x2)	# 2276
	sw		x1, -248(x2)	# 2276
	addi	x2, x2, -252	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 252	# 2276
	lw		x1, -248(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -116(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -244(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -112(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -248(x2)	# 2277
	addi	x2, x2, -252	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 252	# 2277
	lw		x1, -248(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -140(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -244(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -108(x2)	# 2286
	lw		x5, -120(x2)	# 2286
	sw		x1, -248(x2)	# 2286
	addi	x2, x2, -252	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 252	# 2286
	lw		x1, -248(x2)	# 2286
	lw		x5, -108(x2)	# 2287
	lw		x6, -120(x2)	# 2287
	sw		x4, -248(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -252(x2)	# 2287
	addi	x2, x2, -256	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 256	# 2287
	lw		x1, -252(x2)	# 2287
	flw		f1, -112(x2)	# 2272
	lw		x5, -116(x2)	# 2272
	sw		x4, -252(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -256(x2)	# 2272
	addi	x2, x2, -260	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 260	# 2272
	lw		x1, -256(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -108(x2)	# 2273
	sw		x1, -256(x2)	# 2273
	addi	x2, x2, -260	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 260	# 2273
	lw		x1, -256(x2)	# 2273
	flw		f1, -112(x2)	# 2274
	lw		x5, -116(x2)	# 2274
	sw		x4, -256(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -260(x2)	# 2274
	addi	x2, x2, -264	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 264	# 2274
	lw		x1, -260(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -104(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -256(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -112(x2)	# 2275
	lw		x4, -116(x2)	# 2275
	sw		x1, -260(x2)	# 2275
	addi	x2, x2, -264	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 264	# 2275
	lw		x1, -260(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -100(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -256(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -112(x2)	# 2276
	lw		x4, -116(x2)	# 2276
	sw		x1, -260(x2)	# 2276
	addi	x2, x2, -264	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 264	# 2276
	lw		x1, -260(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -116(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -256(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -112(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -260(x2)	# 2277
	addi	x2, x2, -264	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 264	# 2277
	lw		x1, -260(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -140(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -256(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	flw		f1, -112(x2)	# 2272
	lw		x4, -116(x2)	# 2272
	sw		x1, -260(x2)	# 2272
	addi	x2, x2, -264	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 264	# 2272
	lw		x1, -260(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -108(x2)	# 2273
	sw		x1, -260(x2)	# 2273
	addi	x2, x2, -264	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 264	# 2273
	lw		x1, -260(x2)	# 2273
	flw		f1, -112(x2)	# 2274
	lw		x5, -116(x2)	# 2274
	sw		x4, -260(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -264(x2)	# 2274
	addi	x2, x2, -268	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 268	# 2274
	lw		x1, -264(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -104(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -260(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -112(x2)	# 2275
	lw		x4, -116(x2)	# 2275
	sw		x1, -264(x2)	# 2275
	addi	x2, x2, -268	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 268	# 2275
	lw		x1, -264(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -100(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -260(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -112(x2)	# 2276
	lw		x4, -116(x2)	# 2276
	sw		x1, -264(x2)	# 2276
	addi	x2, x2, -268	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 268	# 2276
	lw		x1, -264(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -116(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -260(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -112(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -264(x2)	# 2277
	addi	x2, x2, -268	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 268	# 2277
	lw		x1, -264(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -140(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -260(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	lw		x4, -104(x2)	# 2290
	lw		x5, -120(x2)	# 2290
	sw		x1, -264(x2)	# 2290
	addi	x2, x2, -268	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 268	# 2290
	lw		x1, -264(x2)	# 2290
	flw		f1, -112(x2)	# 2272
	lw		x5, -116(x2)	# 2272
	sw		x4, -264(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -268(x2)	# 2272
	addi	x2, x2, -272	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 272	# 2272
	lw		x1, -268(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -108(x2)	# 2273
	sw		x1, -268(x2)	# 2273
	addi	x2, x2, -272	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 272	# 2273
	lw		x1, -268(x2)	# 2273
	flw		f1, -112(x2)	# 2274
	lw		x5, -116(x2)	# 2274
	sw		x4, -268(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -272(x2)	# 2274
	addi	x2, x2, -276	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 276	# 2274
	lw		x1, -272(x2)	# 2274
	addi	x5, x0, 4	# 2274
	lw		x6, -104(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x7, -268(x2)	# 2274
	add		x5, x7, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f1, -112(x2)	# 2275
	lw		x4, -116(x2)	# 2275
	sw		x1, -272(x2)	# 2275
	addi	x2, x2, -276	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 276	# 2275
	lw		x1, -272(x2)	# 2275
	addi	x5, x0, 4	# 2275
	lw		x6, -100(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x7, -268(x2)	# 2275
	add		x5, x7, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -112(x2)	# 2276
	lw		x4, -116(x2)	# 2276
	sw		x1, -272(x2)	# 2276
	addi	x2, x2, -276	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 276	# 2276
	lw		x1, -272(x2)	# 2276
	addi	x5, x0, 4	# 2276
	lw		x6, -116(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -268(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	flw		f1, -112(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -272(x2)	# 2277
	addi	x2, x2, -276	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 276	# 2277
	lw		x1, -272(x2)	# 2277
	addi	x5, x0, 4	# 2277
	lw		x6, -140(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x7, -268(x2)	# 2277
	add		x5, x7, x5	# 2277
	sw		x4, 0(x5)	# 2277
	addi	x4, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x7, 28(x4)	# 2292
	lw		x5, -264(x2)	# 2292
	sw		x5, 24(x4)	# 2292
	lw		x5, -260(x2)	# 2292
	sw		x5, 20(x4)	# 2292
	lw		x5, -256(x2)	# 2292
	sw		x5, 16(x4)	# 2292
	lw		x5, -252(x2)	# 2292
	sw		x5, 12(x4)	# 2292
	lw		x5, -248(x2)	# 2292
	sw		x5, 8(x4)	# 2292
	lw		x5, -244(x2)	# 2292
	sw		x5, 4(x4)	# 2292
	lw		x5, -240(x2)	# 2292
	sw		x5, 0(x4)	# 2292
	addi	x5, x4, 0	# 2292
	lw		x4, -236(x2)	# 2306
	sw		x1, -272(x2)	# 2306
	addi	x2, x2, -276	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 276	# 2306
	lw		x1, -272(x2)	# 2306
	addi	x5, x26, 616	# 2307
	addi	x6, x0, 4	# 2307
	lw		x7, -120(x2)	# 2307
	mul		x6, x7, x6	# 2307
	add		x5, x5, x6	# 2307
	lw		x5, 0(x5)	# 2307
	lw		x6, -100(x2)	# 2307
	sub		x5, x5, x6	# 2307
	ble		x7, x5, ble.97155	# 2297
	jal		x0, ble_cont.97154	# 2297
ble.97155:
	lw		x27, -96(x2)	# 2298
	sw		x4, -272(x2)	# 2298
	sw		x5, -276(x2)	# 2298
	sw		x1, -280(x2)	# 2298
	addi	x2, x2, -284	# 2298
	lw		x31, 0(x27)	# 2298
	jalr	x1, x31, 0	# 2298
	addi	x2, x2, 284	# 2298
	lw		x1, -280(x2)	# 2298
	addi	x5, x0, 4	# 2298
	lw		x6, -276(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -272(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -104(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x6, -120(x2)	# 2297
	ble		x6, x5, ble.97157	# 2297
	addi	x4, x7, 0	# 2301
	jal		x0, ble_cont.97156	# 2297
ble.97157:
	lw		x27, -96(x2)	# 2298
	sw		x5, -280(x2)	# 2298
	sw		x1, -284(x2)	# 2298
	addi	x2, x2, -288	# 2298
	lw		x31, 0(x27)	# 2298
	jalr	x1, x31, 0	# 2298
	addi	x2, x2, 288	# 2298
	lw		x1, -284(x2)	# 2298
	addi	x5, x0, 4	# 2298
	lw		x6, -280(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -272(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -104(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x27, -92(x2)	# 2299
	addi	x4, x7, 0
	sw		x1, -284(x2)	# 2299
	addi	x2, x2, -288	# 2299
	lw		x31, 0(x27)	# 2299
	jalr	x1, x31, 0	# 2299
	addi	x2, x2, 288	# 2299
	lw		x1, -284(x2)	# 2299
ble_cont.97156:
ble_cont.97154:
	lw		x27, -88(x2)	# 904
	sw		x4, -284(x2)	# 904
	sw		x1, -288(x2)	# 904
	addi	x2, x2, -292	# 904
	lw		x31, 0(x27)	# 904
	jalr	x1, x31, 0	# 904
	addi	x2, x2, 292	# 904
	lw		x1, -288(x2)	# 904
	lw		x27, -84(x2)	# 905
	sw		x1, -288(x2)	# 905
	addi	x2, x2, -292	# 905
	lw		x31, 0(x27)	# 905
	jalr	x1, x31, 0	# 905
	addi	x2, x2, 292	# 905
	lw		x1, -288(x2)	# 905
	lw		x4, -120(x2)	# 862
	lw		x27, -80(x2)	# 862
	sw		x1, -288(x2)	# 862
	addi	x2, x2, -292	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 292	# 862
	lw		x1, -288(x2)	# 862
	lw		x5, -120(x2)	# 862
	beq		x4, x5, beq.97159	# 862
	lw		x4, -104(x2)	# 862
	lw		x27, -80(x2)	# 862
	sw		x1, -288(x2)	# 862
	addi	x2, x2, -292	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 292	# 862
	lw		x1, -288(x2)	# 862
	lw		x5, -120(x2)	# 862
	beq		x4, x5, beq.97161	# 862
	addi	x4, x0, 2	# 863
	lw		x27, -80(x2)	# 862
	sw		x4, -288(x2)	# 862
	sw		x1, -292(x2)	# 862
	addi	x2, x2, -296	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 296	# 862
	lw		x1, -292(x2)	# 862
	lw		x5, -120(x2)	# 862
	beq		x4, x5, beq.97163	# 862
	addi	x4, x0, 3	# 863
	lw		x27, -80(x2)	# 862
	sw		x4, -292(x2)	# 862
	sw		x1, -296(x2)	# 862
	addi	x2, x2, -300	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 300	# 862
	lw		x1, -296(x2)	# 862
	lw		x5, -120(x2)	# 862
	beq		x4, x5, beq.97165	# 862
	addi	x4, x0, 4	# 863
	lw		x27, -80(x2)	# 862
	sw		x4, -296(x2)	# 862
	sw		x1, -300(x2)	# 862
	addi	x2, x2, -304	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 304	# 862
	lw		x1, -300(x2)	# 862
	lw		x5, -120(x2)	# 862
	beq		x4, x5, beq.97167	# 862
	addi	x4, x0, 5	# 863
	lw		x27, -76(x2)	# 863
	sw		x1, -300(x2)	# 863
	addi	x2, x2, -304	# 863
	lw		x31, 0(x27)	# 863
	jalr	x1, x31, 0	# 863
	addi	x2, x2, 304	# 863
	lw		x1, -300(x2)	# 863
	jal		x0, beq_cont.97166	# 862
beq.97167:
	addi	x4, x26, 0	# 865
	addi	x6, x0, 4	# 865
	mul		x6, x5, x6	# 865
	add		x4, x4, x6	# 865
	lw		x6, -296(x2)	# 865
	sw		x6, 0(x4)	# 865
beq_cont.97166:
	jal		x0, beq_cont.97164	# 862
beq.97165:
	addi	x4, x26, 0	# 865
	addi	x6, x0, 4	# 865
	mul		x6, x5, x6	# 865
	add		x4, x4, x6	# 865
	lw		x6, -292(x2)	# 865
	sw		x6, 0(x4)	# 865
beq_cont.97164:
	jal		x0, beq_cont.97162	# 862
beq.97163:
	addi	x4, x26, 0	# 865
	addi	x6, x0, 4	# 865
	mul		x6, x5, x6	# 865
	add		x4, x4, x6	# 865
	lw		x6, -288(x2)	# 865
	sw		x6, 0(x4)	# 865
beq_cont.97162:
	jal		x0, beq_cont.97160	# 862
beq.97161:
	addi	x4, x26, 0	# 865
	addi	x6, x0, 4	# 865
	mul		x6, x5, x6	# 865
	add		x4, x4, x6	# 865
	lw		x6, -104(x2)	# 865
	sw		x6, 0(x4)	# 865
beq_cont.97160:
	jal		x0, beq_cont.97158	# 862
beq.97159:
	addi	x4, x26, 0	# 865
	addi	x6, x0, 4	# 865
	mul		x6, x5, x6	# 865
	add		x4, x4, x6	# 865
	sw		x5, 0(x4)	# 865
beq_cont.97158:
	sw		x1, -300(x2)	# 877
	addi	x2, x2, -304	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 304	# 877
	lw		x1, -300(x2)	# 877
	lw		x5, -72(x2)	# 878
	beq		x4, x5, beq.97169	# 878
	addi	x6, x0, 1	# 880
	lw		x27, -68(x2)	# 880
	sw		x4, -300(x2)	# 880
	addi	x4, x6, 0
	sw		x1, -304(x2)	# 880
	addi	x2, x2, -308	# 880
	lw		x31, 0(x27)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 308	# 880
	lw		x1, -304(x2)	# 880
	addi	x5, x0, 4	# 881
	lw		x6, -120(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x7, -300(x2)	# 881
	sw		x7, 0(x5)	# 881
	jal		x0, beq_cont.97168	# 878
beq.97169:
	addi	x4, x0, 1	# 878
	addi	x6, x0, -1	# 878
	addi	x5, x6, 0
	sw		x1, -304(x2)	# 878
	addi	x2, x2, -308	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 308	# 878
	lw		x1, -304(x2)	# 878
beq_cont.97168:
	addi	x5, x0, 4	# 895
	lw		x6, -120(x2)	# 895
	mul		x5, x6, x5	# 895
	add		x5, x4, x5	# 895
	lw		x5, 0(x5)	# 895
	lw		x7, -72(x2)	# 895
	beq		x5, x7, beq_cont.97170	# 895
	addi	x5, x26, 332	# 897
	addi	x8, x0, 4	# 897
	mul		x8, x6, x8	# 897
	add		x5, x5, x8	# 897
	sw		x4, 0(x5)	# 897
	addi	x4, x0, 1	# 898
	lw		x27, -68(x2)	# 894
	sw		x4, -304(x2)	# 894
	addi	x4, x6, 0
	sw		x1, -308(x2)	# 894
	addi	x2, x2, -312	# 894
	lw		x31, 0(x27)	# 894
	jalr	x1, x31, 0	# 894
	addi	x2, x2, 312	# 894
	lw		x1, -308(x2)	# 894
	addi	x5, x0, 4	# 895
	lw		x6, -120(x2)	# 895
	mul		x5, x6, x5	# 895
	add		x5, x4, x5	# 895
	lw		x5, 0(x5)	# 895
	lw		x7, -72(x2)	# 895
	beq		x5, x7, beq_cont.97171	# 895
	addi	x5, x26, 332	# 897
	addi	x7, x0, 4	# 897
	lw		x8, -304(x2)	# 897
	mul		x7, x8, x7	# 897
	add		x5, x5, x7	# 897
	sw		x4, 0(x5)	# 897
	addi	x4, x0, 2	# 898
	lw		x27, -64(x2)	# 898
	sw		x1, -308(x2)	# 898
	addi	x2, x2, -312	# 898
	lw		x31, 0(x27)	# 898
	jalr	x1, x31, 0	# 898
	addi	x2, x2, 312	# 898
	lw		x1, -308(x2)	# 898
beq_cont.97171:
beq_cont.97170:
	lw		x4, -120(x2)	# 908
	lw		x27, -60(x2)	# 908
	sw		x1, -308(x2)	# 908
	addi	x2, x2, -312	# 908
	lw		x31, 0(x27)	# 908
	jalr	x1, x31, 0	# 908
	addi	x2, x2, 312	# 908
	lw		x1, -308(x2)	# 908
	addi	x5, x26, 536	# 908
	addi	x6, x0, 4	# 908
	lw		x7, -120(x2)	# 908
	mul		x6, x7, x6	# 908
	add		x5, x5, x6	# 908
	sw		x4, 0(x5)	# 908
	addi	x4, x0, 80	# 2115
	sw		x1, -308(x2)	# 2115
	addi	x2, x2, -312	# 2115
	jal		x1, min_caml_print_char	# 2115
	addi	x2, x2, 312	# 2115
	lw		x1, -308(x2)	# 2115
	lw		x4, -56(x2)	# 2116
	addi	x5, x4, 48	# 2116
	addi	x4, x5, 0
	sw		x1, -308(x2)	# 2116
	addi	x2, x2, -312	# 2116
	jal		x1, min_caml_print_char	# 2116
	addi	x2, x2, 312	# 2116
	lw		x1, -308(x2)	# 2116
	addi	x4, x0, 10	# 2117
	sw		x4, -308(x2)	# 2117
	sw		x1, -312(x2)	# 2117
	addi	x2, x2, -316	# 2117
	jal		x1, min_caml_print_char	# 2117
	addi	x2, x2, 316	# 2117
	lw		x1, -312(x2)	# 2117
	addi	x4, x26, 616	# 2118
	addi	x5, x0, 4	# 2118
	lw		x6, -120(x2)	# 2118
	mul		x5, x6, x5	# 2118
	add		x4, x4, x5	# 2118
	lw		x4, 0(x4)	# 2118
	sw		x1, -312(x2)	# 2118
	addi	x2, x2, -316	# 2118
	jal		x1, min_caml_print_int	# 2118
	addi	x2, x2, 316	# 2118
	lw		x1, -312(x2)	# 2118
	addi	x4, x0, 32	# 2119
	sw		x4, -312(x2)	# 2119
	sw		x1, -316(x2)	# 2119
	addi	x2, x2, -320	# 2119
	jal		x1, min_caml_print_char	# 2119
	addi	x2, x2, 320	# 2119
	lw		x1, -316(x2)	# 2119
	addi	x4, x26, 616	# 2120
	addi	x5, x0, 4	# 2120
	lw		x6, -104(x2)	# 2120
	mul		x5, x6, x5	# 2120
	add		x4, x4, x5	# 2120
	lw		x4, 0(x4)	# 2120
	sw		x1, -316(x2)	# 2120
	addi	x2, x2, -320	# 2120
	jal		x1, min_caml_print_int	# 2120
	addi	x2, x2, 320	# 2120
	lw		x1, -316(x2)	# 2120
	lw		x4, -312(x2)	# 2121
	sw		x1, -316(x2)	# 2121
	addi	x2, x2, -320	# 2121
	jal		x1, min_caml_print_char	# 2121
	addi	x2, x2, 320	# 2121
	lw		x1, -316(x2)	# 2121
	addi	x4, x0, 255	# 2122
	sw		x1, -316(x2)	# 2122
	addi	x2, x2, -320	# 2122
	jal		x1, min_caml_print_int	# 2122
	addi	x2, x2, 320	# 2122
	lw		x1, -316(x2)	# 2122
	lw		x4, -308(x2)	# 2123
	sw		x1, -316(x2)	# 2123
	addi	x2, x2, -320	# 2123
	jal		x1, min_caml_print_char	# 2123
	addi	x2, x2, 320	# 2123
	lw		x1, -316(x2)	# 2123
	lw		x4, -140(x2)	# 2421
	lw		x27, -52(x2)	# 2421
	sw		x1, -316(x2)	# 2421
	addi	x2, x2, -320	# 2421
	lw		x31, 0(x27)	# 2421
	jalr	x1, x31, 0	# 2421
	addi	x2, x2, 320	# 2421
	lw		x1, -316(x2)	# 2421
	addi	x4, x0, 9	# 2422
	lw		x5, -120(x2)	# 2422
	lw		x27, -48(x2)	# 2422
	addi	x6, x5, 0
	sw		x1, -316(x2)	# 2422
	addi	x2, x2, -320	# 2422
	lw		x31, 0(x27)	# 2422
	jalr	x1, x31, 0	# 2422
	addi	x2, x2, 320	# 2422
	lw		x1, -316(x2)	# 2422
	addi	x4, x26, 716	# 2415
	addi	x5, x0, 4	# 2415
	lw		x6, -140(x2)	# 2415
	mul		x5, x6, x5	# 2415
	add		x4, x4, x5	# 2415
	lw		x4, 0(x4)	# 2415
	addi	x5, x0, 119	# 2415
	addi	x7, x0, 4	# 2408
	mul		x7, x5, x7	# 2408
	add		x7, x4, x7	# 2408
	lw		x7, 0(x7)	# 2408
	addi	x8, x26, 0	# 1287
	addi	x9, x0, 4	# 1287
	lw		x10, -120(x2)	# 1287
	mul		x9, x10, x9	# 1287
	add		x8, x8, x9	# 1287
	lw		x8, 0(x8)	# 1287
	lw		x9, -104(x2)	# 1287
	sub		x8, x8, x9	# 1287
	sw		x5, -316(x2)	# 1270
	sw		x4, -320(x2)	# 1270
	ble		x10, x8, ble.97173	# 1270
	jal		x0, ble_cont.97172	# 1270
ble.97173:
	addi	x11, x26, 48	# 1271
	addi	x12, x0, 4	# 1271
	mul		x12, x8, x12	# 1271
	add		x11, x11, x12	# 1271
	lw		x11, 0(x11)	# 1271
	lw		x12, 4(x7)	# 645
	lw		x13, 0(x7)	# 639
	lw		x14, 4(x11)	# 353
	sw		x7, -324(x2)	# 1275
	beq		x14, x9, beq.97175	# 1275
	addi	x15, x0, 2	# 1277
	beq		x14, x15, beq.97177	# 1277
	lw		x27, -36(x2)	# 1280
	sw		x12, -328(x2)	# 1280
	sw		x8, -332(x2)	# 1280
	addi	x5, x11, 0
	addi	x4, x13, 0
	sw		x1, -336(x2)	# 1280
	addi	x2, x2, -340	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 340	# 1280
	lw		x1, -336(x2)	# 1280
	addi	x5, x0, 4	# 1280
	lw		x6, -332(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -328(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.97176	# 1277
beq.97177:
	lw		x27, -40(x2)	# 1278
	sw		x12, -328(x2)	# 1278
	sw		x8, -332(x2)	# 1278
	addi	x5, x11, 0
	addi	x4, x13, 0
	sw		x1, -336(x2)	# 1278
	addi	x2, x2, -340	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 340	# 1278
	lw		x1, -336(x2)	# 1278
	addi	x5, x0, 4	# 1278
	lw		x6, -332(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -328(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.97176:
	jal		x0, beq_cont.97174	# 1275
beq.97175:
	lw		x27, -44(x2)	# 1276
	sw		x12, -328(x2)	# 1276
	sw		x8, -332(x2)	# 1276
	addi	x5, x11, 0
	addi	x4, x13, 0
	sw		x1, -336(x2)	# 1276
	addi	x2, x2, -340	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 340	# 1276
	lw		x1, -336(x2)	# 1276
	addi	x5, x0, 4	# 1276
	lw		x6, -332(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -328(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.97174:
	lw		x4, -104(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x6, -324(x2)	# 1282
	lw		x27, -32(x2)	# 1282
	addi	x4, x6, 0
	sw		x1, -336(x2)	# 1282
	addi	x2, x2, -340	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 340	# 1282
	lw		x1, -336(x2)	# 1282
ble_cont.97172:
	addi	x5, x0, 118	# 2409
	lw		x4, -320(x2)	# 2409
	lw		x27, -28(x2)	# 2409
	sw		x1, -336(x2)	# 2409
	addi	x2, x2, -340	# 2409
	lw		x31, 0(x27)	# 2409
	jalr	x1, x31, 0	# 2409
	addi	x2, x2, 340	# 2409
	lw		x1, -336(x2)	# 2409
	addi	x4, x26, 716	# 2415
	addi	x5, x0, 4	# 2415
	lw		x6, -116(x2)	# 2415
	mul		x5, x6, x5	# 2415
	add		x4, x4, x5	# 2415
	lw		x4, 0(x4)	# 2415
	lw		x5, -316(x2)	# 2415
	lw		x27, -28(x2)	# 2415
	sw		x1, -336(x2)	# 2415
	addi	x2, x2, -340	# 2415
	lw		x31, 0(x27)	# 2415
	jalr	x1, x31, 0	# 2415
	addi	x2, x2, 340	# 2415
	lw		x1, -336(x2)	# 2415
	lw		x4, -100(x2)	# 2416
	lw		x27, -24(x2)	# 2416
	sw		x1, -336(x2)	# 2416
	addi	x2, x2, -340	# 2416
	lw		x31, 0(x27)	# 2416
	jalr	x1, x31, 0	# 2416
	addi	x2, x2, 340	# 2416
	lw		x1, -336(x2)	# 2416
	addi	x4, x26, 312	# 259
	addi	x5, x0, 4	# 259
	lw		x6, -120(x2)	# 259
	mul		x5, x6, x5	# 259
	add		x4, x4, x5	# 259
	flw		f1, 0(x4)	# 259
	addi	x4, x26, 736	# 259
	addi	x5, x0, 4	# 259
	mul		x5, x6, x5	# 259
	add		x4, x4, x5	# 259
	fsw		f1, 0(x4)	# 259
	addi	x4, x26, 312	# 260
	addi	x5, x0, 4	# 260
	lw		x7, -104(x2)	# 260
	mul		x5, x7, x5	# 260
	add		x4, x4, x5	# 260
	flw		f1, 0(x4)	# 260
	addi	x4, x26, 736	# 260
	addi	x5, x0, 4	# 260
	mul		x5, x7, x5	# 260
	add		x4, x4, x5	# 260
	fsw		f1, 0(x4)	# 260
	addi	x4, x26, 312	# 261
	addi	x5, x0, 4	# 261
	lw		x8, -100(x2)	# 261
	mul		x5, x8, x5	# 261
	add		x4, x4, x5	# 261
	flw		f1, 0(x4)	# 261
	addi	x4, x26, 736	# 261
	addi	x5, x0, 4	# 261
	mul		x5, x8, x5	# 261
	add		x4, x4, x5	# 261
	fsw		f1, 0(x4)	# 261
	addi	x4, x26, 0	# 1287
	addi	x5, x0, 4	# 1287
	mul		x5, x6, x5	# 1287
	add		x4, x4, x5	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x5, x4, x7	# 1287
	lw		x4, -20(x2)	# 1287
	lw		x27, -32(x2)	# 1287
	sw		x1, -336(x2)	# 1287
	addi	x2, x2, -340	# 1287
	lw		x31, 0(x27)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 340	# 1287
	lw		x1, -336(x2)	# 1287
	addi	x4, x26, 0	# 2505
	addi	x5, x0, 4	# 2505
	lw		x6, -120(x2)	# 2505
	mul		x5, x6, x5	# 2505
	add		x4, x4, x5	# 2505
	lw		x4, 0(x4)	# 2505
	lw		x5, -104(x2)	# 2505
	sub		x4, x4, x5	# 2505
	ble		x6, x4, ble.97179	# 2470
	jal		x0, ble_cont.97178	# 2470
ble.97179:
	addi	x7, x26, 48	# 2471
	addi	x8, x0, 4	# 2471
	mul		x8, x4, x8	# 2471
	add		x7, x7, x8	# 2471
	lw		x7, 0(x7)	# 2471
	lw		x8, 8(x7)	# 363
	addi	x9, x0, 2	# 2472
	beq		x8, x9, beq.97181	# 2472
	jal		x0, beq_cont.97180	# 2472
beq.97181:
	lw		x8, 28(x7)	# 461
	addi	x10, x0, 4	# 466
	mul		x10, x6, x10	# 466
	add		x8, x8, x10	# 466
	flw		f1, 0(x8)	# 466
	fadd	f2, f0, f16	# 2473
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.97183	# 6
	jal		x0, fle_cont.97182	# 6
fle_else.97183:
	lw		x8, 4(x7)	# 353
	addi	x10, x0, 1	# 2476
	beq		x8, x10, beq.97185	# 2476
	beq		x8, x9, beq.97187	# 2478
	jal		x0, beq_cont.97186	# 2478
beq.97187:
	lw		x27, -12(x2)	# 2479
	addi	x5, x7, 0
	sw		x1, -336(x2)	# 2479
	addi	x2, x2, -340	# 2479
	lw		x31, 0(x27)	# 2479
	jalr	x1, x31, 0	# 2479
	addi	x2, x2, 340	# 2479
	lw		x1, -336(x2)	# 2479
beq_cont.97186:
	jal		x0, beq_cont.97184	# 2476
beq.97185:
	lw		x27, -16(x2)	# 2477
	addi	x5, x7, 0
	sw		x1, -336(x2)	# 2477
	addi	x2, x2, -340	# 2477
	lw		x31, 0(x27)	# 2477
	jalr	x1, x31, 0	# 2477
	addi	x2, x2, 340	# 2477
	lw		x1, -336(x2)	# 2477
beq_cont.97184:
fle_cont.97182:
beq_cont.97180:
ble_cont.97178:
	lw		x4, -232(x2)	# 2506
	lw		x5, -120(x2)	# 2506
	lw		x27, -8(x2)	# 2506
	addi	x6, x5, 0
	sw		x1, -336(x2)	# 2506
	addi	x2, x2, -340	# 2506
	lw		x31, 0(x27)	# 2506
	jalr	x1, x31, 0	# 2506
	addi	x2, x2, 340	# 2506
	lw		x1, -336(x2)	# 2506
	addi	x4, x26, 616	# 2255
	addi	x5, x0, 4	# 2255
	lw		x6, -104(x2)	# 2255
	mul		x5, x6, x5	# 2255
	add		x4, x4, x5	# 2255
	lw		x4, 0(x4)	# 2255
	lw		x5, -120(x2)	# 2255
	ble		x4, x5, ble.97188	# 2255
	sub		x4, x4, x6	# 2257
	ble		x4, x5, ble_cont.97189	# 2257
	addi	x4, x0, 1	# 2258
	lw		x7, -284(x2)	# 2258
	lw		x8, -100(x2)	# 2258
	lw		x27, -8(x2)	# 2258
	addi	x6, x8, 0
	addi	x5, x4, 0
	addi	x4, x7, 0
	sw		x1, -336(x2)	# 2258
	addi	x2, x2, -340	# 2258
	lw		x31, 0(x27)	# 2258
	jalr	x1, x31, 0	# 2258
	addi	x2, x2, 340	# 2258
	lw		x1, -336(x2)	# 2258
ble_cont.97189:
	lw		x4, -120(x2)	# 2260
	lw		x6, -180(x2)	# 2260
	lw		x7, -232(x2)	# 2260
	lw		x8, -284(x2)	# 2260
	lw		x9, -56(x2)	# 2260
	lw		x27, -4(x2)	# 2260
	addi	x5, x4, 0
	sw		x1, -336(x2)	# 2260
	addi	x2, x2, -340	# 2260
	lw		x31, 0(x27)	# 2260
	jalr	x1, x31, 0	# 2260
	addi	x2, x2, 340	# 2260
	lw		x1, -336(x2)	# 2260
	lw		x4, -104(x2)	# 2261
	lw		x5, -232(x2)	# 2261
	lw		x6, -284(x2)	# 2261
	lw		x7, -180(x2)	# 2261
	lw		x8, -140(x2)	# 2261
	lw		x9, -56(x2)	# 2261
	lw		x27, 0(x2)	# 2261
	lw		x31, 0(x27)	# 2261
	jalr	x0, x31, 0	# 2261
ble.97188:
	jalr	x0, x1, 0	# 2262
min_caml_start:
	addi	x2, x2, -4
	addi	x30, x0, 0
	lui		x4, %hi(l.20942)
	ori		x4, x0, %lo(l.20942)
	flw		f0, 0(x4)
	lui		x4, %hi(l.20944)
	ori		x4, x0, %lo(l.20944)
	flw		f16, 0(x4)
	lui		x4, %hi(l.20964)
	ori		x4, x0, %lo(l.20964)
	flw		f17, 0(x4)
	lui		x4, %hi(l.20968)
	ori		x4, x0, %lo(l.20968)
	flw		f18, 0(x4)
	lui		x4, %hi(l.20966)
	ori		x4, x0, %lo(l.20966)
	flw		f19, 0(x4)
	lui		x4, %hi(l.20959)
	ori		x4, x0, %lo(l.20959)
	flw		f20, 0(x4)
	lui		x4, %hi(l.20961)
	ori		x4, x0, %lo(l.20961)
	flw		f21, 0(x4)
	lui		x4, %hi(l.20957)
	ori		x4, x0, %lo(l.20957)
	flw		f22, 0(x4)
	lui		x4, %hi(l.21040)
	ori		x4, x0, %lo(l.21040)
	flw		f23, 0(x4)
	lui		x4, %hi(l.21071)
	ori		x4, x0, %lo(l.21071)
	flw		f24, 0(x4)
	lui		x4, %hi(l.22154)
	ori		x4, x0, %lo(l.22154)
	flw		f25, 0(x4)
	lui		x4, %hi(l.21022)
	ori		x4, x0, %lo(l.21022)
	flw		f26, 0(x4)
	lui		x4, %hi(l.22092)
	ori		x4, x0, %lo(l.22092)
	flw		f27, 0(x4)
	lui		x4, %hi(l.23178)
	ori		x4, x0, %lo(l.23178)
	flw		f28, 0(x4)
	lui		x4, %hi(l.22752)
	ori		x4, x0, %lo(l.22752)
	flw		f29, 0(x4)
	lui		x4, %hi(l.22651)
	ori		x4, x0, %lo(l.22651)
	flw		f30, 0(x4)
	lui		x4, %hi(l.25372)	# 20
	ori		x4, x0, %lo(l.25372)	# 20
	flw		f1, 0(x4)	# 20
	lui		x4, %hi(l.25374)	# 21
	ori		x4, x0, %lo(l.25374)	# 21
	flw		f2, 0(x4)	# 21
	lui		x4, %hi(l.25376)	# 22
	ori		x4, x0, %lo(l.25376)	# 22
	flw		f3, 0(x4)	# 22
	lui		x4, %hi(l.25378)	# 23
	ori		x4, x0, %lo(l.25378)	# 23
	flw		f4, 0(x4)	# 23
	addi	x4, x3, 0	# 45
	addi	x3, x3, 20	# 45
	lui		x5, %hi(sin.2501.13047)	# 45
	ori		x5, x0, %lo(sin.2501.13047)	# 45
	sw		x5, 0(x4)	# 53
	fsw		f4, 16(x4)	# 53
	fsw		f3, 12(x4)	# 53
	fsw		f2, 8(x4)	# 53
	fsw		f1, 4(x4)	# 53
	addi	x5, x3, 0	# 53
	addi	x3, x3, 24	# 53
	lui		x6, %hi(cos.2503.13049)	# 53
	ori		x6, x0, %lo(cos.2503.13049)	# 53
	sw		x6, 0(x5)	# 58
	sw		x4, 20(x5)	# 58
	fsw		f4, 16(x5)	# 58
	fsw		f3, 12(x5)	# 58
	fsw		f2, 8(x5)	# 58
	fsw		f1, 4(x5)	# 58
	addi	x6, x3, 0	# 58
	addi	x3, x3, 12	# 58
	lui		x7, %hi(atan.2505.13051)	# 58
	ori		x7, x0, %lo(atan.2505.13051)	# 58
	sw		x7, 0(x6)	# 76
	fsw		f4, 8(x6)	# 76
	fsw		f3, 4(x6)	# 76
	addi	x7, x0, 1	# 76
	addi	x8, x0, 0	# 76
	addi	x26, x3, 0	# 76
	sw		x6, 0(x2)	# 76
	sw		x5, -4(x2)	# 76
	fsw		f1, -8(x2)	# 76
	fsw		f2, -12(x2)	# 76
	fsw		f3, -16(x2)	# 76
	fsw		f4, -20(x2)	# 76
	sw		x4, -24(x2)	# 76
	sw		x7, -28(x2)	# 76
	sw		x8, -32(x2)	# 76
	addi	x5, x8, 0
	addi	x4, x7, 0
	sw		x1, -36(x2)	# 76
	addi	x2, x2, -40	# 76
	jal		x1, min_caml_create_array	# 76
	addi	x2, x2, 40	# 76
	lw		x1, -36(x2)	# 76
	fadd	f1, f0, f0	# 81
	addi	x4, x26, 4	# 81
	lw		x5, -32(x2)	# 81
	fsw		f1, -36(x2)	# 81
	sw		x4, -40(x2)	# 81
	addi	x4, x5, 0
	sw		x1, -44(x2)	# 81
	addi	x2, x2, -48	# 81
	jal		x1, min_caml_create_float_array	# 81
	addi	x2, x2, 48	# 81
	lw		x1, -44(x2)	# 81
	addi	x4, x0, 60	# 82
	addi	x5, x3, 0	# 82
	addi	x3, x3, 44	# 82
	lw		x6, -40(x2)	# 82
	sw		x6, 40(x5)	# 82
	sw		x6, 36(x5)	# 82
	sw		x6, 32(x5)	# 82
	sw		x6, 28(x5)	# 82
	lw		x7, -32(x2)	# 82
	sw		x7, 24(x5)	# 82
	sw		x6, 20(x5)	# 82
	sw		x6, 16(x5)	# 82
	sw		x7, 12(x5)	# 82
	sw		x7, 8(x5)	# 82
	sw		x7, 4(x5)	# 82
	sw		x7, 0(x5)	# 82
	sw		x4, -44(x2)	# 82
	sw		x1, -48(x2)	# 82
	addi	x2, x2, -52	# 82
	jal		x1, min_caml_create_array	# 82
	addi	x2, x2, 52	# 82
	lw		x1, -48(x2)	# 82
	addi	x4, x0, 3	# 86
	flw		f1, -36(x2)	# 86
	sw		x4, -48(x2)	# 86
	sw		x1, -52(x2)	# 86
	addi	x2, x2, -56	# 86
	jal		x1, min_caml_create_float_array	# 86
	addi	x2, x2, 56	# 86
	lw		x1, -52(x2)	# 86
	flw		f1, -36(x2)	# 89
	lw		x4, -48(x2)	# 89
	sw		x1, -52(x2)	# 89
	addi	x2, x2, -56	# 89
	jal		x1, min_caml_create_float_array	# 89
	addi	x2, x2, 56	# 89
	lw		x1, -52(x2)	# 89
	flw		f1, -36(x2)	# 92
	lw		x4, -48(x2)	# 92
	sw		x1, -52(x2)	# 92
	addi	x2, x2, -56	# 92
	jal		x1, min_caml_create_float_array	# 92
	addi	x2, x2, 56	# 92
	lw		x1, -52(x2)	# 92
	lui		x4, %hi(l.25393)	# 95
	ori		x4, x0, %lo(l.25393)	# 95
	flw		f1, 0(x4)	# 95
	lw		x4, -28(x2)	# 95
	fsw		f1, -52(x2)	# 95
	sw		x1, -56(x2)	# 95
	addi	x2, x2, -60	# 95
	jal		x1, min_caml_create_float_array	# 95
	addi	x2, x2, 60	# 95
	lw		x1, -56(x2)	# 95
	addi	x4, x0, 50	# 98
	addi	x5, x0, -1	# 98
	addi	x6, x26, 328	# 98
	lw		x7, -28(x2)	# 98
	sw		x5, -56(x2)	# 98
	sw		x6, -60(x2)	# 98
	sw		x4, -64(x2)	# 98
	addi	x4, x7, 0
	sw		x1, -68(x2)	# 98
	addi	x2, x2, -72	# 98
	jal		x1, min_caml_create_array	# 98
	addi	x2, x2, 72	# 98
	lw		x1, -68(x2)	# 98
	addi	x4, x26, 332	# 98
	lw		x5, -64(x2)	# 98
	lw		x6, -60(x2)	# 98
	sw		x4, -68(x2)	# 98
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -72(x2)	# 98
	addi	x2, x2, -76	# 98
	jal		x1, min_caml_create_array	# 98
	addi	x2, x2, 76	# 98
	lw		x1, -72(x2)	# 98
	addi	x4, x0, 4	# 101
	lw		x5, -32(x2)	# 101
	mul		x4, x5, x4	# 101
	lw		x6, -68(x2)	# 101
	add		x4, x6, x4	# 101
	lw		x4, 0(x4)	# 101
	addi	x6, x26, 532	# 101
	lw		x7, -28(x2)	# 101
	sw		x6, -72(x2)	# 101
	addi	x5, x4, 0
	addi	x4, x7, 0
	sw		x1, -76(x2)	# 101
	addi	x2, x2, -80	# 101
	jal		x1, min_caml_create_array	# 101
	addi	x2, x2, 80	# 101
	lw		x1, -76(x2)	# 101
	lw		x4, -28(x2)	# 101
	lw		x5, -72(x2)	# 101
	sw		x1, -76(x2)	# 101
	addi	x2, x2, -80	# 101
	jal		x1, min_caml_create_array	# 101
	addi	x2, x2, 80	# 101
	lw		x1, -76(x2)	# 101
	flw		f1, -36(x2)	# 106
	lw		x4, -28(x2)	# 106
	sw		x1, -76(x2)	# 106
	addi	x2, x2, -80	# 106
	jal		x1, min_caml_create_float_array	# 106
	addi	x2, x2, 80	# 106
	lw		x1, -76(x2)	# 106
	lw		x4, -28(x2)	# 109
	lw		x5, -32(x2)	# 109
	sw		x1, -76(x2)	# 109
	addi	x2, x2, -80	# 109
	jal		x1, min_caml_create_array	# 109
	addi	x2, x2, 80	# 109
	lw		x1, -76(x2)	# 109
	lui		x4, %hi(l.25398)	# 112
	ori		x4, x0, %lo(l.25398)	# 112
	flw		f1, 0(x4)	# 112
	lw		x4, -28(x2)	# 112
	fsw		f1, -76(x2)	# 112
	sw		x1, -80(x2)	# 112
	addi	x2, x2, -84	# 112
	jal		x1, min_caml_create_float_array	# 112
	addi	x2, x2, 84	# 112
	lw		x1, -80(x2)	# 112
	flw		f1, -36(x2)	# 115
	lw		x4, -48(x2)	# 115
	sw		x1, -80(x2)	# 115
	addi	x2, x2, -84	# 115
	jal		x1, min_caml_create_float_array	# 115
	addi	x2, x2, 84	# 115
	lw		x1, -80(x2)	# 115
	lw		x4, -28(x2)	# 118
	lw		x5, -32(x2)	# 118
	sw		x1, -80(x2)	# 118
	addi	x2, x2, -84	# 118
	jal		x1, min_caml_create_array	# 118
	addi	x2, x2, 84	# 118
	lw		x1, -80(x2)	# 118
	flw		f1, -36(x2)	# 121
	lw		x4, -48(x2)	# 121
	sw		x1, -80(x2)	# 121
	addi	x2, x2, -84	# 121
	jal		x1, min_caml_create_float_array	# 121
	addi	x2, x2, 84	# 121
	lw		x1, -80(x2)	# 121
	flw		f1, -36(x2)	# 124
	lw		x4, -48(x2)	# 124
	sw		x1, -80(x2)	# 124
	addi	x2, x2, -84	# 124
	jal		x1, min_caml_create_float_array	# 124
	addi	x2, x2, 84	# 124
	lw		x1, -80(x2)	# 124
	flw		f1, -36(x2)	# 128
	lw		x4, -48(x2)	# 128
	sw		x1, -80(x2)	# 128
	addi	x2, x2, -84	# 128
	jal		x1, min_caml_create_float_array	# 128
	addi	x2, x2, 84	# 128
	lw		x1, -80(x2)	# 128
	flw		f1, -36(x2)	# 131
	lw		x4, -48(x2)	# 131
	sw		x1, -80(x2)	# 131
	addi	x2, x2, -84	# 131
	jal		x1, min_caml_create_float_array	# 131
	addi	x2, x2, 84	# 131
	lw		x1, -80(x2)	# 131
	addi	x4, x0, 2	# 135
	lw		x5, -32(x2)	# 135
	sw		x4, -80(x2)	# 135
	sw		x1, -84(x2)	# 135
	addi	x2, x2, -88	# 135
	jal		x1, min_caml_create_array	# 135
	addi	x2, x2, 88	# 135
	lw		x1, -84(x2)	# 135
	lw		x4, -80(x2)	# 138
	lw		x5, -32(x2)	# 138
	sw		x1, -84(x2)	# 138
	addi	x2, x2, -88	# 138
	jal		x1, min_caml_create_array	# 138
	addi	x2, x2, 88	# 138
	lw		x1, -84(x2)	# 138
	flw		f1, -36(x2)	# 141
	lw		x4, -28(x2)	# 141
	sw		x1, -84(x2)	# 141
	addi	x2, x2, -88	# 141
	jal		x1, min_caml_create_float_array	# 141
	addi	x2, x2, 88	# 141
	lw		x1, -84(x2)	# 141
	flw		f1, -36(x2)	# 145
	lw		x4, -48(x2)	# 145
	sw		x1, -84(x2)	# 145
	addi	x2, x2, -88	# 145
	jal		x1, min_caml_create_float_array	# 145
	addi	x2, x2, 88	# 145
	lw		x1, -84(x2)	# 145
	flw		f1, -36(x2)	# 148
	lw		x4, -48(x2)	# 148
	sw		x1, -84(x2)	# 148
	addi	x2, x2, -88	# 148
	jal		x1, min_caml_create_float_array	# 148
	addi	x2, x2, 88	# 148
	lw		x1, -84(x2)	# 148
	flw		f1, -36(x2)	# 152
	lw		x4, -48(x2)	# 152
	sw		x1, -84(x2)	# 152
	addi	x2, x2, -88	# 152
	jal		x1, min_caml_create_float_array	# 152
	addi	x2, x2, 88	# 152
	lw		x1, -84(x2)	# 152
	flw		f1, -36(x2)	# 154
	lw		x4, -48(x2)	# 154
	sw		x1, -84(x2)	# 154
	addi	x2, x2, -88	# 154
	jal		x1, min_caml_create_float_array	# 154
	addi	x2, x2, 88	# 154
	lw		x1, -84(x2)	# 154
	flw		f1, -36(x2)	# 156
	lw		x4, -48(x2)	# 156
	sw		x1, -84(x2)	# 156
	addi	x2, x2, -88	# 156
	jal		x1, min_caml_create_float_array	# 156
	addi	x2, x2, 88	# 156
	lw		x1, -84(x2)	# 156
	flw		f1, -36(x2)	# 160
	lw		x4, -48(x2)	# 160
	sw		x1, -84(x2)	# 160
	addi	x2, x2, -88	# 160
	jal		x1, min_caml_create_float_array	# 160
	addi	x2, x2, 88	# 160
	lw		x1, -84(x2)	# 160
	addi	x4, x26, 708	# 165
	flw		f1, -36(x2)	# 165
	lw		x5, -32(x2)	# 165
	sw		x4, -84(x2)	# 165
	addi	x4, x5, 0
	sw		x1, -88(x2)	# 165
	addi	x2, x2, -92	# 165
	jal		x1, min_caml_create_float_array	# 165
	addi	x2, x2, 92	# 165
	lw		x1, -88(x2)	# 165
	addi	x4, x26, 708	# 166
	lw		x5, -32(x2)	# 166
	lw		x6, -84(x2)	# 166
	sw		x4, -88(x2)	# 166
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -92(x2)	# 166
	addi	x2, x2, -96	# 166
	jal		x1, min_caml_create_array	# 166
	addi	x2, x2, 96	# 166
	lw		x1, -92(x2)	# 166
	addi	x4, x3, 0	# 167
	addi	x3, x3, 8	# 167
	lw		x5, -88(x2)	# 167
	sw		x5, 4(x4)	# 167
	lw		x5, -84(x2)	# 167
	sw		x5, 0(x4)	# 167
	addi	x5, x4, 0	# 167
	addi	x4, x26, 716	# 167
	lw		x6, -32(x2)	# 167
	sw		x4, -92(x2)	# 167
	addi	x4, x6, 0
	sw		x1, -96(x2)	# 167
	addi	x2, x2, -100	# 167
	jal		x1, min_caml_create_array	# 167
	addi	x2, x2, 100	# 167
	lw		x1, -96(x2)	# 167
	addi	x4, x0, 5	# 168
	lw		x5, -92(x2)	# 168
	sw		x4, -96(x2)	# 168
	sw		x1, -100(x2)	# 168
	addi	x2, x2, -104	# 168
	jal		x1, min_caml_create_array	# 168
	addi	x2, x2, 104	# 168
	lw		x1, -100(x2)	# 168
	addi	x4, x26, 736	# 173
	flw		f1, -36(x2)	# 173
	lw		x5, -32(x2)	# 173
	sw		x4, -100(x2)	# 173
	addi	x4, x5, 0
	sw		x1, -104(x2)	# 173
	addi	x2, x2, -108	# 173
	jal		x1, min_caml_create_float_array	# 173
	addi	x2, x2, 108	# 173
	lw		x1, -104(x2)	# 173
	addi	x4, x26, 736	# 174
	flw		f1, -36(x2)	# 174
	lw		x5, -48(x2)	# 174
	sw		x4, -104(x2)	# 174
	addi	x4, x5, 0
	sw		x1, -108(x2)	# 174
	addi	x2, x2, -112	# 174
	jal		x1, min_caml_create_float_array	# 174
	addi	x2, x2, 112	# 174
	lw		x1, -108(x2)	# 174
	addi	x4, x26, 748	# 175
	lw		x5, -44(x2)	# 175
	lw		x6, -100(x2)	# 175
	sw		x4, -108(x2)	# 175
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -112(x2)	# 175
	addi	x2, x2, -116	# 175
	jal		x1, min_caml_create_array	# 175
	addi	x2, x2, 116	# 175
	lw		x1, -112(x2)	# 175
	addi	x4, x3, 0	# 176
	addi	x3, x3, 8	# 176
	lw		x5, -108(x2)	# 176
	sw		x5, 4(x4)	# 176
	lw		x5, -104(x2)	# 176
	sw		x5, 0(x4)	# 176
	addi	x5, x26, 996	# 181
	flw		f1, -36(x2)	# 181
	lw		x6, -32(x2)	# 181
	sw		x4, -112(x2)	# 181
	sw		x5, -116(x2)	# 181
	addi	x4, x6, 0
	sw		x1, -120(x2)	# 181
	addi	x2, x2, -124	# 181
	jal		x1, min_caml_create_float_array	# 181
	addi	x2, x2, 124	# 181
	lw		x1, -120(x2)	# 181
	addi	x4, x26, 996	# 182
	lw		x5, -32(x2)	# 182
	lw		x6, -116(x2)	# 182
	sw		x4, -120(x2)	# 182
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -124(x2)	# 182
	addi	x2, x2, -128	# 182
	jal		x1, min_caml_create_array	# 182
	addi	x2, x2, 128	# 182
	lw		x1, -124(x2)	# 182
	addi	x4, x3, 0	# 183
	addi	x3, x3, 8	# 183
	lw		x5, -120(x2)	# 183
	sw		x5, 4(x4)	# 183
	lw		x5, -116(x2)	# 183
	sw		x5, 0(x4)	# 183
	addi	x5, x0, 180	# 184
	addi	x6, x3, 0	# 184
	addi	x3, x3, 12	# 184
	flw		f1, -36(x2)	# 184
	fsw		f1, 8(x6)	# 184
	sw		x4, 4(x6)	# 184
	lw		x4, -32(x2)	# 184
	sw		x4, 0(x6)	# 184
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -124(x2)	# 184
	addi	x2, x2, -128	# 184
	jal		x1, min_caml_create_array	# 184
	addi	x2, x2, 128	# 184
	lw		x1, -124(x2)	# 184
	lw		x4, -28(x2)	# 188
	lw		x5, -32(x2)	# 188
	sw		x1, -124(x2)	# 188
	addi	x2, x2, -128	# 188
	jal		x1, min_caml_create_array	# 188
	addi	x2, x2, 128	# 188
	lw		x1, -124(x2)	# 188
	addi	x4, x3, 0	# 282
	addi	x3, x3, 20	# 282
	lui		x5, %hi(vecunit_sgn.2565.13191)	# 282
	ori		x5, x0, %lo(vecunit_sgn.2565.13191)	# 282
	sw		x5, 0(x4)	# 681
	lw		x5, -80(x2)	# 681
	sw		x5, 16(x4)	# 681
	lw		x6, -32(x2)	# 681
	sw		x6, 12(x4)	# 681
	lw		x7, -28(x2)	# 681
	sw		x7, 8(x4)	# 681
	flw		f1, -36(x2)	# 681
	fsw		f1, 4(x4)	# 681
	addi	x8, x3, 0	# 681
	addi	x3, x3, 44	# 681
	lui		x9, %hi(read_screen_settings.2663.13194)	# 681
	ori		x9, x0, %lo(read_screen_settings.2663.13194)	# 681
	sw		x9, 0(x8)	# 714
	lw		x9, -24(x2)	# 714
	sw		x9, 40(x8)	# 714
	flw		f2, -20(x2)	# 714
	fsw		f2, 36(x8)	# 714
	flw		f3, -16(x2)	# 714
	fsw		f3, 32(x8)	# 714
	flw		f4, -12(x2)	# 714
	fsw		f4, 28(x8)	# 714
	flw		f5, -8(x2)	# 714
	fsw		f5, 24(x8)	# 714
	lw		x10, -4(x2)	# 714
	sw		x10, 20(x8)	# 714
	sw		x5, 16(x8)	# 714
	sw		x6, 12(x8)	# 714
	sw		x7, 8(x8)	# 714
	fsw		f1, 4(x8)	# 714
	addi	x11, x3, 0	# 714
	addi	x3, x3, 44	# 714
	lui		x12, %hi(read_light.2665.13196)	# 714
	ori		x12, x0, %lo(read_light.2665.13196)	# 714
	sw		x12, 0(x11)	# 736
	sw		x9, 40(x11)	# 736
	fsw		f2, 36(x11)	# 736
	fsw		f3, 32(x11)	# 736
	fsw		f4, 28(x11)	# 736
	fsw		f5, 24(x11)	# 736
	sw		x10, 20(x11)	# 736
	sw		x5, 16(x11)	# 736
	sw		x6, 12(x11)	# 736
	sw		x7, 8(x11)	# 736
	fsw		f1, 4(x11)	# 736
	addi	x12, x3, 0	# 736
	addi	x3, x3, 44	# 736
	lui		x13, %hi(rotate_quadratic_matrix.2667.13198)	# 736
	ori		x13, x0, %lo(rotate_quadratic_matrix.2667.13198)	# 736
	sw		x13, 0(x12)	# 777
	sw		x9, 40(x12)	# 777
	fsw		f2, 36(x12)	# 777
	fsw		f3, 32(x12)	# 777
	fsw		f4, 28(x12)	# 777
	fsw		f5, 24(x12)	# 777
	sw		x10, 20(x12)	# 777
	sw		x5, 16(x12)	# 777
	sw		x6, 12(x12)	# 777
	sw		x7, 8(x12)	# 777
	fsw		f1, 4(x12)	# 777
	addi	x13, x3, 0	# 777
	addi	x3, x3, 36	# 777
	lui		x14, %hi(read_nth_object.2670.13201)	# 777
	ori		x14, x0, %lo(read_nth_object.2670.13201)	# 777
	sw		x14, 0(x13)	# 860
	sw		x4, 32(x13)	# 860
	sw		x12, 28(x13)	# 860
	sw		x5, 24(x13)	# 860
	lw		x12, -56(x2)	# 860
	sw		x12, 20(x13)	# 860
	lw		x14, -48(x2)	# 860
	sw		x14, 16(x13)	# 860
	sw		x6, 12(x13)	# 860
	sw		x7, 8(x13)	# 860
	fsw		f1, 4(x13)	# 860
	addi	x15, x3, 0	# 860
	addi	x3, x3, 20	# 860
	lui		x16, %hi(read_object.2672.13203)	# 860
	ori		x16, x0, %lo(read_object.2672.13203)	# 860
	sw		x16, 0(x15)	# 876
	sw		x13, 16(x15)	# 876
	lw		x16, -44(x2)	# 876
	sw		x16, 12(x15)	# 876
	sw		x6, 8(x15)	# 876
	sw		x7, 4(x15)	# 876
	addi	x16, x3, 0	# 876
	addi	x3, x3, 12	# 876
	lui		x17, %hi(read_net_item.2676.13205)	# 876
	ori		x17, x0, %lo(read_net_item.2676.13205)	# 876
	sw		x17, 0(x16)	# 884
	sw		x12, 8(x16)	# 884
	sw		x7, 4(x16)	# 884
	addi	x17, x3, 0	# 884
	addi	x3, x3, 20	# 884
	lui		x18, %hi(read_or_network.2678.13207)	# 884
	ori		x18, x0, %lo(read_or_network.2678.13207)	# 884
	sw		x18, 0(x17)	# 893
	sw		x16, 16(x17)	# 893
	sw		x12, 12(x17)	# 893
	sw		x6, 8(x17)	# 893
	sw		x7, 4(x17)	# 893
	addi	x18, x3, 0	# 893
	addi	x3, x3, 20	# 893
	lui		x19, %hi(read_and_network.2680.13209)	# 893
	ori		x19, x0, %lo(read_and_network.2680.13209)	# 893
	sw		x19, 0(x18)	# 927
	sw		x16, 16(x18)	# 927
	sw		x12, 12(x18)	# 927
	sw		x6, 8(x18)	# 927
	sw		x7, 4(x18)	# 927
	addi	x19, x3, 0	# 927
	addi	x3, x3, 12	# 927
	lui		x20, %hi(solver_rect_surface.2684.13211)	# 927
	ori		x20, x0, %lo(solver_rect_surface.2684.13211)	# 927
	sw		x20, 0(x19)	# 951
	sw		x6, 8(x19)	# 951
	fsw		f1, 4(x19)	# 951
	addi	x20, x3, 0	# 951
	addi	x3, x3, 20	# 951
	lui		x21, %hi(solver_surface.2699.13220)	# 951
	ori		x21, x0, %lo(solver_surface.2699.13220)	# 951
	sw		x21, 0(x20)	# 965
	sw		x5, 16(x20)	# 965
	sw		x6, 12(x20)	# 965
	sw		x7, 8(x20)	# 965
	fsw		f1, 4(x20)	# 965
	addi	x21, x3, 0	# 965
	addi	x3, x3, 16	# 965
	lui		x22, %hi(quadratic.2705.13226)	# 965
	ori		x22, x0, %lo(quadratic.2705.13226)	# 965
	sw		x22, 0(x21)	# 980
	sw		x5, 12(x21)	# 980
	sw		x6, 8(x21)	# 980
	sw		x7, 4(x21)	# 980
	addi	x22, x3, 0	# 980
	addi	x3, x3, 16	# 980
	lui		x23, %hi(bilinear.2710.13231)	# 980
	ori		x23, x0, %lo(bilinear.2710.13231)	# 980
	sw		x23, 0(x22)	# 1002
	sw		x5, 12(x22)	# 1002
	sw		x6, 8(x22)	# 1002
	sw		x7, 4(x22)	# 1002
	addi	x23, x3, 0	# 1002
	addi	x3, x3, 32	# 1002
	lui		x24, %hi(solver_second.2718.13239)	# 1002
	ori		x24, x0, %lo(solver_second.2718.13239)	# 1002
	sw		x24, 0(x23)	# 1063
	sw		x21, 28(x23)	# 1063
	sw		x22, 24(x23)	# 1063
	sw		x5, 20(x23)	# 1063
	sw		x14, 16(x23)	# 1063
	sw		x6, 12(x23)	# 1063
	sw		x7, 8(x23)	# 1063
	fsw		f1, 4(x23)	# 1063
	addi	x22, x3, 0	# 1063
	addi	x3, x3, 28	# 1063
	lui		x24, %hi(solver_rect_fast.2728.13245)	# 1063
	ori		x24, x0, %lo(solver_rect_fast.2728.13245)	# 1063
	sw		x24, 0(x22)	# 1105
	lw		x24, -96(x2)	# 1105
	sw		x24, 24(x22)	# 1105
	sw		x5, 20(x22)	# 1105
	sw		x14, 16(x22)	# 1105
	sw		x6, 12(x22)	# 1105
	sw		x7, 8(x22)	# 1105
	fsw		f1, 4(x22)	# 1105
	addi	x25, x3, 0	# 1105
	addi	x3, x3, 28	# 1105
	lui		x27, %hi(solver_second_fast.2741.13252)	# 1105
	ori		x27, x0, %lo(solver_second_fast.2741.13252)	# 1105
	sw		x27, 0(x25)	# 1125
	sw		x21, 24(x25)	# 1125
	sw		x5, 20(x25)	# 1125
	sw		x14, 16(x25)	# 1125
	sw		x6, 12(x25)	# 1125
	sw		x7, 8(x25)	# 1125
	fsw		f1, 4(x25)	# 1125
	addi	x27, x3, 0	# 1125
	addi	x3, x3, 32	# 1125
	lui		x31, %hi(solver_fast.2747.13258)	# 1125
	ori		x31, x0, %lo(solver_fast.2747.13258)	# 1125
	sw		x31, 0(x27)	# 1153
	sw		x25, 28(x27)	# 1153
	sw		x22, 24(x27)	# 1153
	sw		x5, 20(x27)	# 1153
	sw		x14, 16(x27)	# 1153
	sw		x6, 12(x27)	# 1153
	sw		x7, 8(x27)	# 1153
	fsw		f1, 4(x27)	# 1153
	addi	x25, x3, 0	# 1153
	addi	x3, x3, 24	# 1153
	lui		x31, %hi(solver_second_fast2.2758.13262)	# 1153
	ori		x31, x0, %lo(solver_second_fast2.2758.13262)	# 1153
	sw		x31, 0(x25)	# 1194
	sw		x5, 20(x25)	# 1194
	sw		x14, 16(x25)	# 1194
	sw		x6, 12(x25)	# 1194
	sw		x7, 8(x25)	# 1194
	fsw		f1, 4(x25)	# 1194
	addi	x31, x3, 0	# 1194
	addi	x3, x3, 20	# 1194
	sw		x18, -124(x2)	# 1194
	lui		x18, %hi(setup_rect_table.2768.13269)	# 1194
	ori		x18, x0, %lo(setup_rect_table.2768.13269)	# 1194
	sw		x18, 0(x31)	# 1221
	sw		x5, 16(x31)	# 1221
	sw		x6, 12(x31)	# 1221
	sw		x7, 8(x31)	# 1221
	fsw		f1, 4(x31)	# 1221
	addi	x18, x3, 0	# 1221
	addi	x3, x3, 20	# 1221
	sw		x11, -128(x2)	# 1221
	lui		x11, %hi(setup_surface_table.2771.13272)	# 1221
	ori		x11, x0, %lo(setup_surface_table.2771.13272)	# 1221
	sw		x11, 0(x18)	# 1240
	sw		x5, 16(x18)	# 1240
	sw		x6, 12(x18)	# 1240
	sw		x7, 8(x18)	# 1240
	fsw		f1, 4(x18)	# 1240
	addi	x11, x3, 0	# 1240
	addi	x3, x3, 28	# 1240
	sw		x16, -132(x2)	# 1240
	lui		x16, %hi(setup_second_table.2774.13275)	# 1240
	ori		x16, x0, %lo(setup_second_table.2774.13275)	# 1240
	sw		x16, 0(x11)	# 1269
	sw		x21, 24(x11)	# 1269
	sw		x24, 20(x11)	# 1269
	sw		x5, 16(x11)	# 1269
	sw		x6, 12(x11)	# 1269
	sw		x7, 8(x11)	# 1269
	fsw		f1, 4(x11)	# 1269
	addi	x16, x3, 0	# 1269
	addi	x3, x3, 24	# 1269
	sw		x13, -136(x2)	# 1269
	lui		x13, %hi(iter_setup_dirvec_constants.2777.13278)	# 1269
	ori		x13, x0, %lo(iter_setup_dirvec_constants.2777.13278)	# 1269
	sw		x13, 0(x16)	# 1294
	sw		x18, 20(x16)	# 1294
	sw		x11, 16(x16)	# 1294
	sw		x31, 12(x16)	# 1294
	sw		x6, 8(x16)	# 1294
	sw		x7, 4(x16)	# 1294
	addi	x13, x3, 0	# 1294
	addi	x3, x3, 20	# 1294
	sw		x15, -140(x2)	# 1294
	lui		x15, %hi(setup_startp_constants.2782.13281)	# 1294
	ori		x15, x0, %lo(setup_startp_constants.2782.13281)	# 1294
	sw		x15, 0(x13)	# 1349
	sw		x21, 16(x13)	# 1349
	sw		x5, 12(x13)	# 1349
	sw		x6, 8(x13)	# 1349
	sw		x7, 4(x13)	# 1349
	addi	x15, x3, 0	# 1349
	addi	x3, x3, 28	# 1349
	sw		x17, -144(x2)	# 1349
	lui		x17, %hi(is_outside.2802.13284)	# 1349
	ori		x17, x0, %lo(is_outside.2802.13284)	# 1349
	sw		x17, 0(x15)	# 1363
	sw		x21, 24(x15)	# 1363
	sw		x5, 20(x15)	# 1363
	sw		x14, 16(x15)	# 1363
	sw		x6, 12(x15)	# 1363
	sw		x7, 8(x15)	# 1363
	fsw		f1, 4(x15)	# 1363
	addi	x17, x3, 0	# 1363
	addi	x3, x3, 36	# 1363
	sw		x8, -148(x2)	# 1363
	lui		x8, %hi(check_all_inside.2807.13289)	# 1363
	ori		x8, x0, %lo(check_all_inside.2807.13289)	# 1363
	sw		x8, 0(x17)	# 1383
	sw		x21, 32(x17)	# 1383
	sw		x15, 28(x17)	# 1383
	sw		x5, 24(x17)	# 1383
	sw		x12, 20(x17)	# 1383
	sw		x14, 16(x17)	# 1383
	sw		x6, 12(x17)	# 1383
	sw		x7, 8(x17)	# 1383
	fsw		f1, 4(x17)	# 1383
	addi	x8, x3, 0	# 1383
	addi	x3, x3, 36	# 1383
	lui		x21, %hi(shadow_check_and_group.2813.13295)	# 1383
	ori		x21, x0, %lo(shadow_check_and_group.2813.13295)	# 1383
	sw		x21, 0(x8)	# 1413
	sw		x27, 32(x8)	# 1413
	lw		x21, -112(x2)	# 1413
	sw		x21, 28(x8)	# 1413
	sw		x15, 24(x8)	# 1413
	sw		x17, 20(x8)	# 1413
	sw		x5, 16(x8)	# 1413
	sw		x12, 12(x8)	# 1413
	sw		x6, 8(x8)	# 1413
	sw		x7, 4(x8)	# 1413
	sw		x16, -152(x2)	# 1413
	addi	x16, x3, 0	# 1413
	addi	x3, x3, 20	# 1413
	sw		x31, -156(x2)	# 1413
	lui		x31, %hi(shadow_check_one_or_group.2816.13298)	# 1413
	ori		x31, x0, %lo(shadow_check_one_or_group.2816.13298)	# 1413
	sw		x31, 0(x16)	# 1428
	sw		x8, 16(x16)	# 1428
	sw		x12, 12(x16)	# 1428
	sw		x6, 8(x16)	# 1428
	sw		x7, 4(x16)	# 1428
	addi	x31, x3, 0	# 1428
	addi	x3, x3, 32	# 1428
	sw		x11, -160(x2)	# 1428
	lui		x11, %hi(shadow_check_one_or_matrix.2819.13301)	# 1428
	ori		x11, x0, %lo(shadow_check_one_or_matrix.2819.13301)	# 1428
	sw		x11, 0(x31)	# 1464
	sw		x27, 28(x31)	# 1464
	sw		x16, 24(x31)	# 1464
	sw		x8, 20(x31)	# 1464
	sw		x21, 16(x31)	# 1464
	sw		x12, 12(x31)	# 1464
	sw		x6, 8(x31)	# 1464
	sw		x7, 4(x31)	# 1464
	addi	x8, x3, 0	# 1464
	addi	x3, x3, 44	# 1464
	lui		x11, %hi(solve_each_element.2822.13304)	# 1464
	ori		x11, x0, %lo(solve_each_element.2822.13304)	# 1464
	sw		x11, 0(x8)	# 1505
	sw		x20, 40(x8)	# 1505
	sw		x23, 36(x8)	# 1505
	sw		x19, 32(x8)	# 1505
	sw		x15, 28(x8)	# 1505
	sw		x17, 24(x8)	# 1505
	sw		x5, 20(x8)	# 1505
	sw		x12, 16(x8)	# 1505
	sw		x6, 12(x8)	# 1505
	sw		x7, 8(x8)	# 1505
	fsw		f1, 4(x8)	# 1505
	addi	x11, x3, 0	# 1505
	addi	x3, x3, 20	# 1505
	lui		x16, %hi(solve_one_or_network.2826.13308)	# 1505
	ori		x16, x0, %lo(solve_one_or_network.2826.13308)	# 1505
	sw		x16, 0(x11)	# 1515
	sw		x8, 16(x11)	# 1515
	sw		x12, 12(x11)	# 1515
	sw		x6, 8(x11)	# 1515
	sw		x7, 4(x11)	# 1515
	addi	x16, x3, 0	# 1515
	addi	x3, x3, 40	# 1515
	lui		x27, %hi(trace_or_matrix.2830.13312)	# 1515
	ori		x27, x0, %lo(trace_or_matrix.2830.13312)	# 1515
	sw		x27, 0(x16)	# 1557
	sw		x20, 36(x16)	# 1557
	sw		x23, 32(x16)	# 1557
	sw		x19, 28(x16)	# 1557
	sw		x11, 24(x16)	# 1557
	sw		x8, 20(x16)	# 1557
	sw		x5, 16(x16)	# 1557
	sw		x12, 12(x16)	# 1557
	sw		x6, 8(x16)	# 1557
	sw		x7, 4(x16)	# 1557
	addi	x8, x3, 0	# 1557
	addi	x3, x3, 44	# 1557
	lui		x11, %hi(solve_each_element_fast.2836.13316)	# 1557
	ori		x11, x0, %lo(solve_each_element_fast.2836.13316)	# 1557
	sw		x11, 0(x8)	# 1598
	sw		x25, 40(x8)	# 1598
	sw		x22, 36(x8)	# 1598
	sw		x15, 32(x8)	# 1598
	sw		x17, 28(x8)	# 1598
	sw		x5, 24(x8)	# 1598
	sw		x12, 20(x8)	# 1598
	sw		x14, 16(x8)	# 1598
	sw		x6, 12(x8)	# 1598
	sw		x7, 8(x8)	# 1598
	fsw		f1, 4(x8)	# 1598
	addi	x11, x3, 0	# 1598
	addi	x3, x3, 20	# 1598
	lui		x15, %hi(solve_one_or_network_fast.2840.13320)	# 1598
	ori		x15, x0, %lo(solve_one_or_network_fast.2840.13320)	# 1598
	sw		x15, 0(x11)	# 1608
	sw		x8, 16(x11)	# 1608
	sw		x12, 12(x11)	# 1608
	sw		x6, 8(x11)	# 1608
	sw		x7, 4(x11)	# 1608
	addi	x15, x3, 0	# 1608
	addi	x3, x3, 40	# 1608
	lui		x17, %hi(trace_or_matrix_fast.2844.13324)	# 1608
	ori		x17, x0, %lo(trace_or_matrix_fast.2844.13324)	# 1608
	sw		x17, 0(x15)	# 1669
	sw		x25, 36(x15)	# 1669
	sw		x22, 32(x15)	# 1669
	sw		x11, 28(x15)	# 1669
	sw		x8, 24(x15)	# 1669
	sw		x12, 20(x15)	# 1669
	sw		x14, 16(x15)	# 1669
	sw		x6, 12(x15)	# 1669
	sw		x7, 8(x15)	# 1669
	fsw		f1, 4(x15)	# 1669
	addi	x8, x3, 0	# 1669
	addi	x3, x3, 20	# 1669
	lui		x11, %hi(get_nvector_second.2854.13328)	# 1669
	ori		x11, x0, %lo(get_nvector_second.2854.13328)	# 1669
	sw		x11, 0(x8)	# 1707
	sw		x4, 16(x8)	# 1707
	sw		x5, 12(x8)	# 1707
	sw		x6, 8(x8)	# 1707
	sw		x7, 4(x8)	# 1707
	addi	x11, x3, 0	# 1707
	addi	x3, x3, 56	# 1707
	lui		x17, %hi(utexture.2859.13330)	# 1707
	ori		x17, x0, %lo(utexture.2859.13330)	# 1707
	sw		x17, 0(x11)	# 1802
	sw		x9, 52(x11)	# 1802
	fsw		f2, 48(x11)	# 1802
	fsw		f3, 44(x11)	# 1802
	fsw		f4, 40(x11)	# 1802
	fsw		f5, 36(x11)	# 1802
	sw		x10, 32(x11)	# 1802
	lw		x17, 0(x2)	# 1802
	sw		x17, 28(x11)	# 1802
	sw		x5, 24(x11)	# 1802
	sw		x14, 20(x11)	# 1802
	sw		x6, 16(x11)	# 1802
	sw		x7, 12(x11)	# 1802
	flw		f6, -52(x2)	# 1802
	fsw		f6, 8(x11)	# 1802
	fsw		f1, 4(x11)	# 1802
	addi	x19, x3, 0	# 1802
	addi	x3, x3, 32	# 1802
	lui		x20, %hi(trace_reflections.2866.13333)	# 1802
	ori		x20, x0, %lo(trace_reflections.2866.13333)	# 1802
	sw		x20, 0(x19)	# 1831
	sw		x15, 28(x19)	# 1831
	sw		x31, 24(x19)	# 1831
	sw		x5, 20(x19)	# 1831
	sw		x6, 16(x19)	# 1831
	sw		x7, 12(x19)	# 1831
	flw		f6, -76(x2)	# 1831
	fsw		f6, 8(x19)	# 1831
	fsw		f1, 4(x19)	# 1831
	addi	x20, x3, 0	# 1831
	addi	x3, x3, 52	# 1831
	lui		x22, %hi(trace_ray.2871.13338)	# 1831
	ori		x22, x0, %lo(trace_ray.2871.13338)	# 1831
	sw		x22, 0(x20)	# 1924
	sw		x11, 48(x20)	# 1924
	sw		x19, 44(x20)	# 1924
	sw		x16, 40(x20)	# 1924
	sw		x31, 36(x20)	# 1924
	sw		x13, 32(x20)	# 1924
	sw		x8, 28(x20)	# 1924
	sw		x5, 24(x20)	# 1924
	sw		x12, 20(x20)	# 1924
	sw		x6, 16(x20)	# 1924
	sw		x7, 12(x20)	# 1924
	fsw		f6, 8(x20)	# 1924
	fsw		f1, 4(x20)	# 1924
	addi	x16, x3, 0	# 1924
	addi	x3, x3, 40	# 1924
	lui		x19, %hi(trace_diffuse_ray.2877.13344)	# 1924
	ori		x19, x0, %lo(trace_diffuse_ray.2877.13344)	# 1924
	sw		x19, 0(x16)	# 1943
	sw		x11, 36(x16)	# 1943
	sw		x15, 32(x16)	# 1943
	sw		x31, 28(x16)	# 1943
	sw		x8, 24(x16)	# 1943
	sw		x5, 20(x16)	# 1943
	sw		x6, 16(x16)	# 1943
	sw		x7, 12(x16)	# 1943
	fsw		f6, 8(x16)	# 1943
	fsw		f1, 4(x16)	# 1943
	addi	x8, x3, 0	# 1943
	addi	x3, x3, 24	# 1943
	lui		x11, %hi(iter_trace_diffuse_rays.2880.13347)	# 1943
	ori		x11, x0, %lo(iter_trace_diffuse_rays.2880.13347)	# 1943
	sw		x11, 0(x8)	# 1969
	sw		x16, 20(x8)	# 1969
	sw		x5, 16(x8)	# 1969
	sw		x6, 12(x8)	# 1969
	sw		x7, 8(x8)	# 1969
	fsw		f1, 4(x8)	# 1969
	addi	x11, x3, 0	# 1969
	addi	x3, x3, 28	# 1969
	lui		x15, %hi(trace_diffuse_ray_80percent.2889.13352)	# 1969
	ori		x15, x0, %lo(trace_diffuse_ray_80percent.2889.13352)	# 1969
	sw		x15, 0(x11)	# 1995
	sw		x13, 24(x11)	# 1995
	sw		x8, 20(x11)	# 1995
	sw		x5, 16(x11)	# 1995
	sw		x14, 12(x11)	# 1995
	sw		x6, 8(x11)	# 1995
	sw		x7, 4(x11)	# 1995
	addi	x15, x3, 0	# 1995
	addi	x3, x3, 20	# 1995
	lui		x16, %hi(calc_diffuse_using_1point.2893.13356)	# 1995
	ori		x16, x0, %lo(calc_diffuse_using_1point.2893.13356)	# 1995
	sw		x16, 0(x15)	# 2014
	sw		x11, 16(x15)	# 2014
	sw		x5, 12(x15)	# 2014
	sw		x6, 8(x15)	# 2014
	sw		x7, 4(x15)	# 2014
	addi	x16, x3, 0	# 2014
	addi	x3, x3, 16	# 2014
	lui		x19, %hi(calc_diffuse_using_5points.2896.13359)	# 2014
	ori		x19, x0, %lo(calc_diffuse_using_5points.2896.13359)	# 2014
	sw		x19, 0(x16)	# 2034
	sw		x5, 12(x16)	# 2034
	sw		x6, 8(x16)	# 2034
	sw		x7, 4(x16)	# 2034
	addi	x19, x3, 0	# 2034
	addi	x3, x3, 24	# 2034
	lui		x22, %hi(do_without_neighbors.2902.13365)	# 2034
	ori		x22, x0, %lo(do_without_neighbors.2902.13365)	# 2034
	sw		x22, 0(x19)	# 2086
	sw		x11, 20(x19)	# 2086
	sw		x15, 16(x19)	# 2086
	sw		x5, 12(x19)	# 2086
	sw		x6, 8(x19)	# 2086
	sw		x7, 4(x19)	# 2086
	addi	x11, x3, 0	# 2086
	addi	x3, x3, 24	# 2086
	lui		x22, %hi(try_exploit_neighbors.2918.13368)	# 2086
	ori		x22, x0, %lo(try_exploit_neighbors.2918.13368)	# 2086
	sw		x22, 0(x11)	# 2139
	sw		x19, 20(x11)	# 2139
	sw		x16, 16(x11)	# 2139
	sw		x15, 12(x11)	# 2139
	sw		x6, 8(x11)	# 2139
	sw		x7, 4(x11)	# 2139
	addi	x22, x3, 0	# 2139
	addi	x3, x3, 20	# 2139
	lui		x23, %hi(write_rgb.2931.13375)	# 2139
	ori		x23, x0, %lo(write_rgb.2931.13375)	# 2139
	sw		x23, 0(x22)	# 2162
	sw		x5, 16(x22)	# 2162
	sw		x14, 12(x22)	# 2162
	sw		x6, 8(x22)	# 2162
	sw		x7, 4(x22)	# 2162
	addi	x23, x3, 0	# 2162
	addi	x3, x3, 24	# 2162
	lui		x25, %hi(pretrace_diffuse_rays.2933.13377)	# 2162
	ori		x25, x0, %lo(pretrace_diffuse_rays.2933.13377)	# 2162
	sw		x25, 0(x23)	# 2192
	sw		x13, 20(x23)	# 2192
	sw		x8, 16(x23)	# 2192
	sw		x5, 12(x23)	# 2192
	sw		x6, 8(x23)	# 2192
	sw		x7, 4(x23)	# 2192
	addi	x8, x3, 0	# 2192
	addi	x3, x3, 36	# 2192
	lui		x13, %hi(pretrace_pixels.2936.13380)	# 2192
	ori		x13, x0, %lo(pretrace_pixels.2936.13380)	# 2192
	sw		x13, 0(x8)	# 2217
	sw		x4, 32(x8)	# 2217
	sw		x20, 28(x8)	# 2217
	sw		x23, 24(x8)	# 2217
	sw		x24, 20(x8)	# 2217
	sw		x5, 16(x8)	# 2217
	sw		x6, 12(x8)	# 2217
	sw		x7, 8(x8)	# 2217
	fsw		f1, 4(x8)	# 2217
	addi	x4, x3, 0	# 2217
	addi	x3, x3, 20	# 2217
	lui		x13, %hi(pretrace_line.2943.13387)	# 2217
	ori		x13, x0, %lo(pretrace_line.2943.13387)	# 2217
	sw		x13, 0(x4)	# 2233
	sw		x8, 16(x4)	# 2233
	sw		x5, 12(x4)	# 2233
	sw		x6, 8(x4)	# 2233
	sw		x7, 4(x4)	# 2233
	addi	x8, x3, 0	# 2233
	addi	x3, x3, 36	# 2233
	lui		x13, %hi(scan_pixel.2947.13391)	# 2233
	ori		x13, x0, %lo(scan_pixel.2947.13391)	# 2233
	sw		x13, 0(x8)	# 2253
	sw		x22, 32(x8)	# 2253
	sw		x11, 28(x8)	# 2253
	sw		x19, 24(x8)	# 2253
	sw		x16, 20(x8)	# 2253
	sw		x15, 16(x8)	# 2253
	sw		x5, 12(x8)	# 2253
	sw		x6, 8(x8)	# 2253
	sw		x7, 4(x8)	# 2253
	addi	x13, x3, 0	# 2253
	addi	x3, x3, 40	# 2253
	lui		x15, %hi(scan_line.2954.13398)	# 2253
	ori		x15, x0, %lo(scan_line.2954.13398)	# 2253
	sw		x15, 0(x13)	# 2283
	sw		x22, 36(x13)	# 2283
	sw		x11, 32(x13)	# 2283
	sw		x8, 28(x13)	# 2283
	sw		x4, 24(x13)	# 2283
	sw		x19, 20(x13)	# 2283
	sw		x24, 16(x13)	# 2283
	sw		x5, 12(x13)	# 2283
	sw		x6, 8(x13)	# 2283
	sw		x7, 4(x13)	# 2283
	addi	x11, x3, 0	# 2283
	addi	x3, x3, 28	# 2283
	lui		x15, %hi(create_pixel.2963.13405)	# 2283
	ori		x15, x0, %lo(create_pixel.2963.13405)	# 2283
	sw		x15, 0(x11)	# 2296
	sw		x24, 24(x11)	# 2296
	sw		x5, 20(x11)	# 2296
	sw		x14, 16(x11)	# 2296
	sw		x6, 12(x11)	# 2296
	sw		x7, 8(x11)	# 2296
	fsw		f1, 4(x11)	# 2296
	addi	x15, x3, 0	# 2296
	addi	x3, x3, 32	# 2296
	lui		x16, %hi(init_line_elements.2965.13407)	# 2296
	ori		x16, x0, %lo(init_line_elements.2965.13407)	# 2296
	sw		x16, 0(x15)	# 2319
	sw		x11, 28(x15)	# 2319
	sw		x24, 24(x15)	# 2319
	sw		x5, 20(x15)	# 2319
	sw		x14, 16(x15)	# 2319
	sw		x6, 12(x15)	# 2319
	sw		x7, 8(x15)	# 2319
	fsw		f1, 4(x15)	# 2319
	addi	x16, x3, 0	# 2319
	addi	x3, x3, 32	# 2319
	lui		x19, %hi(tan.2970.13410)	# 2319
	ori		x19, x0, %lo(tan.2970.13410)	# 2319
	sw		x19, 0(x16)	# 2333
	sw		x9, 28(x16)	# 2333
	fsw		f2, 24(x16)	# 2333
	fsw		f3, 20(x16)	# 2333
	fsw		f4, 16(x16)	# 2333
	fsw		f5, 12(x16)	# 2333
	sw		x10, 8(x16)	# 2333
	fsw		f1, 4(x16)	# 2333
	addi	x9, x3, 0	# 2333
	addi	x3, x3, 28	# 2333
	lui		x10, %hi(calc_dirvec.2975.13412)	# 2333
	ori		x10, x0, %lo(calc_dirvec.2975.13412)	# 2333
	sw		x10, 0(x9)	# 2354
	sw		x16, 24(x9)	# 2354
	sw		x17, 20(x9)	# 2354
	sw		x24, 16(x9)	# 2354
	sw		x5, 12(x9)	# 2354
	sw		x6, 8(x9)	# 2354
	sw		x7, 4(x9)	# 2354
	addi	x10, x3, 0	# 2354
	addi	x3, x3, 28	# 2354
	lui		x16, %hi(calc_dirvecs.2983.13420)	# 2354
	ori		x16, x0, %lo(calc_dirvecs.2983.13420)	# 2354
	sw		x16, 0(x10)	# 2368
	sw		x9, 24(x10)	# 2368
	sw		x24, 20(x10)	# 2368
	sw		x5, 16(x10)	# 2368
	sw		x6, 12(x10)	# 2368
	sw		x7, 8(x10)	# 2368
	fsw		f1, 4(x10)	# 2368
	addi	x9, x3, 0	# 2368
	addi	x3, x3, 24	# 2368
	lui		x16, %hi(calc_dirvec_rows.2988.13425)	# 2368
	ori		x16, x0, %lo(calc_dirvec_rows.2988.13425)	# 2368
	sw		x16, 0(x9)	# 2387
	sw		x10, 20(x9)	# 2387
	sw		x24, 16(x9)	# 2387
	sw		x5, 12(x9)	# 2387
	sw		x6, 8(x9)	# 2387
	sw		x7, 4(x9)	# 2387
	addi	x10, x3, 0	# 2387
	addi	x3, x3, 20	# 2387
	lui		x16, %hi(create_dirvec_elements.2994.13429)	# 2387
	ori		x16, x0, %lo(create_dirvec_elements.2994.13429)	# 2387
	sw		x16, 0(x10)	# 2394
	sw		x14, 16(x10)	# 2394
	sw		x6, 12(x10)	# 2394
	sw		x7, 8(x10)	# 2394
	fsw		f1, 4(x10)	# 2394
	addi	x16, x3, 0	# 2394
	addi	x3, x3, 24	# 2394
	lui		x17, %hi(create_dirvecs.2997.13432)	# 2394
	ori		x17, x0, %lo(create_dirvecs.2997.13432)	# 2394
	sw		x17, 0(x16)	# 2406
	sw		x10, 20(x16)	# 2406
	sw		x14, 16(x16)	# 2406
	sw		x6, 12(x16)	# 2406
	sw		x7, 8(x16)	# 2406
	fsw		f1, 4(x16)	# 2406
	addi	x10, x3, 0	# 2406
	addi	x3, x3, 28	# 2406
	lui		x17, %hi(init_dirvec_constants.2999.13434)	# 2406
	ori		x17, x0, %lo(init_dirvec_constants.2999.13434)	# 2406
	sw		x17, 0(x10)	# 2413
	sw		x18, 24(x10)	# 2413
	lw		x17, -160(x2)	# 2413
	sw		x17, 20(x10)	# 2413
	lw		x19, -156(x2)	# 2413
	sw		x19, 16(x10)	# 2413
	lw		x20, -152(x2)	# 2413
	sw		x20, 12(x10)	# 2413
	sw		x6, 8(x10)	# 2413
	sw		x7, 4(x10)	# 2413
	addi	x22, x3, 0	# 2413
	addi	x3, x3, 32	# 2413
	lui		x23, %hi(init_vecset_constants.3002.13437)	# 2413
	ori		x23, x0, %lo(init_vecset_constants.3002.13437)	# 2413
	sw		x23, 0(x22)	# 2440
	sw		x18, 28(x22)	# 2440
	sw		x17, 24(x22)	# 2440
	sw		x19, 20(x22)	# 2440
	sw		x20, 16(x22)	# 2440
	sw		x10, 12(x22)	# 2440
	sw		x6, 8(x22)	# 2440
	sw		x7, 4(x22)	# 2440
	addi	x23, x3, 0	# 2440
	addi	x3, x3, 40	# 2440
	lui		x25, %hi(setup_rect_reflection.3013.13439)	# 2440
	ori		x25, x0, %lo(setup_rect_reflection.3013.13439)	# 2440
	sw		x25, 0(x23)	# 2454
	sw		x18, 36(x23)	# 2454
	sw		x17, 32(x23)	# 2454
	sw		x19, 28(x23)	# 2454
	sw		x20, 24(x23)	# 2454
	sw		x5, 20(x23)	# 2454
	sw		x14, 16(x23)	# 2454
	sw		x6, 12(x23)	# 2454
	sw		x7, 8(x23)	# 2454
	fsw		f1, 4(x23)	# 2454
	addi	x25, x3, 0	# 2454
	addi	x3, x3, 40	# 2454
	lui		x27, %hi(setup_surface_reflection.3016.13442)	# 2454
	ori		x27, x0, %lo(setup_surface_reflection.3016.13442)	# 2454
	sw		x27, 0(x25)	# 2491
	sw		x18, 36(x25)	# 2491
	sw		x17, 32(x25)	# 2491
	sw		x19, 28(x25)	# 2491
	sw		x20, 24(x25)	# 2491
	sw		x5, 20(x25)	# 2491
	sw		x14, 16(x25)	# 2491
	sw		x6, 12(x25)	# 2491
	sw		x7, 8(x25)	# 2491
	fsw		f1, 4(x25)	# 2491
	addi	x27, x3, 0	# 2491
	addi	x3, x3, 124	# 2491
	lui		x31, %hi(rt.3021.13445)	# 2491
	ori		x31, x0, %lo(rt.3021.13445)	# 2491
	sw		x31, 0(x27)	# 2512
	sw		x18, 120(x27)	# 2512
	sw		x25, 116(x27)	# 2512
	sw		x17, 112(x27)	# 2512
	sw		x19, 108(x27)	# 2512
	sw		x23, 104(x27)	# 2512
	sw		x8, 100(x27)	# 2512
	sw		x13, 96(x27)	# 2512
	lw		x8, -148(x2)	# 2512
	sw		x8, 92(x27)	# 2512
	lw		x8, -144(x2)	# 2512
	sw		x8, 88(x27)	# 2512
	lw		x8, -140(x2)	# 2512
	sw		x8, 84(x27)	# 2512
	lw		x8, -136(x2)	# 2512
	sw		x8, 80(x27)	# 2512
	lw		x8, -132(x2)	# 2512
	sw		x8, 76(x27)	# 2512
	lw		x8, -128(x2)	# 2512
	sw		x8, 72(x27)	# 2512
	lw		x8, -124(x2)	# 2512
	sw		x8, 68(x27)	# 2512
	sw		x4, 64(x27)	# 2512
	sw		x21, 60(x27)	# 2512
	sw		x20, 56(x27)	# 2512
	sw		x22, 52(x27)	# 2512
	sw		x15, 48(x27)	# 2512
	sw		x10, 44(x27)	# 2512
	sw		x11, 40(x27)	# 2512
	sw		x16, 36(x27)	# 2512
	sw		x9, 32(x27)	# 2512
	sw		x24, 28(x27)	# 2512
	sw		x5, 24(x27)	# 2512
	sw		x12, 20(x27)	# 2512
	sw		x14, 16(x27)	# 2512
	sw		x6, 12(x27)	# 2512
	sw		x7, 8(x27)	# 2512
	fsw		f1, 4(x27)	# 2512
	addi	x4, x0, 256	# 2512
	addi	x6, x14, 0
	addi	x5, x4, 0
	sw		x1, -164(x2)	# 2512
	addi	x2, x2, -168	# 2512
	lw		x31, 0(x27)	# 2512
	jalr	x1, x31, 0	# 2512
	addi	x2, x2, 168	# 2512
	lw		x1, -164(x2)	# 2512
	EXIT	
