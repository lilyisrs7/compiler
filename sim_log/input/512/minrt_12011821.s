l.0:	# 8388608.000000
	.word	8388608.000000
l.1:	# 0.000000
	.word	0.000000
l.2:	# 1.000000
	.word	1.000000
l.7919:	# 1000000000.000000
	.word	1000000000.000000
l.7914:	# 255.000000
	.word	255.000000
l.7899:	# 0.785398
	.word	0.785398
l.7897:	# 1.570796
	.word	1.570796
l.7895:	# 6.283185
	.word	6.283185
l.7893:	# 3.141593
	.word	3.141593
l.7885:	# 128.000000
	.word	128.000000
l.7794:	# 0.900000
	.word	0.900000
l.7520:	# 150.000000
	.word	150.000000
l.7515:	# -150.000000
	.word	-150.000000
l.7467:	# 0.100000
	.word	0.100000
l.7459:	# -2.000000
	.word	-2.000000
l.7454:	# 0.003906
	.word	0.003906
l.7387:	# 20.000000
	.word	20.000000
l.7385:	# 0.050000
	.word	0.050000
l.7373:	# 0.250000
	.word	0.250000
l.7360:	# 10.000000
	.word	10.000000
l.7349:	# 0.300000
	.word	0.300000
l.7346:	# 0.150000
	.word	0.150000
l.7338:	# 3.141593
	.word	3.141593
l.7336:	# 30.000000
	.word	30.000000
l.7334:	# 15.000000
	.word	15.000000
l.7332:	# 0.000100
	.word	0.000100
l.7201:	# 100000000.000000
	.word	100000000.000000
l.7131:	# -0.100000
	.word	-0.100000
l.7093:	# 0.010000
	.word	0.010000
l.7091:	# -0.200000
	.word	-0.200000
l.6530:	# 2.000000
	.word	2.000000
l.6429:	# -200.000000
	.word	-200.000000
l.6424:	# 200.000000
	.word	200.000000
l.6413:	# 0.017453
	.word	0.017453
l.6162:	# -1.000000
	.word	-1.000000
l.6158:	# 0.089764
	.word	0.089764
l.6156:	# 0.111111
	.word	0.111111
l.6154:	# 0.142857
	.word	0.142857
l.6152:	# 0.200000
	.word	0.200000
l.6150:	# 0.333333
	.word	0.333333
l.6148:	# 0.437500
	.word	0.437500
l.6145:	# 2.437500
	.word	2.437500
l.6140:	# 0.001370
	.word	0.001370
l.6138:	# 0.041664
	.word	0.041664
l.6134:	# 0.000196
	.word	0.000196
l.6132:	# 0.008333
	.word	0.008333
l.6130:	# 0.166667
	.word	0.166667
l.6125:	# 1.000000
	.word	1.000000
l.6122:	# 0.500000
	.word	0.500000
l.6117:	# 0.000000
	.word	0.000000
fiszero.2470:
	lui		x4, %hi(l.6117)	# 1
	ori		x4, x0, %lo(l.6117)	# 1
	flw		f1, 0(x4)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.12745	# 1
	ori		x4, x0, 1	# 1
	jalr	x0, x1, 0	# 1
feq_else.12745:
	addi	x4, x0, 0	# 1
	jalr	x0, x1, 0	# 1
fispos.2472:
	lui		x4, %hi(l.6117)	# 2
	ori		x4, x0, %lo(l.6117)	# 2
	flw		f1, 0(x4)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.12746	# 2
	addi	x4, x0, 0	# 2
	jalr	x0, x1, 0	# 2
fle_else.12746:
	ori		x4, x0, 1	# 2
	jalr	x0, x1, 0	# 2
fisneg.2474:
	lui		x4, %hi(l.6117)	# 3
	ori		x4, x0, %lo(l.6117)	# 3
	flw		f1, 0(x4)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.12747	# 3
	addi	x4, x0, 0	# 3
	jalr	x0, x1, 0	# 3
fle_else.12747:
	ori		x4, x0, 1	# 3
	jalr	x0, x1, 0	# 3
fneg.2476:
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	jalr	x0, x1, 0	# 4
fabs.2478:
	lui		x4, %hi(l.6117)	# 5
	ori		x4, x0, %lo(l.6117)	# 5
	flw		f1, 0(x4)	# 5
	fle		x31, f0, f1	# 5
	beq		x31, x0, fle_else.12748	# 5
	fsub	x31, x31, x31	# 5
	fsub	f0, x31, f0	# 5
	jalr	x0, x1, 0	# 5
fle_else.12748:
	jalr	x0, x1, 0	# 5
fless.2480:
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.12749	# 6
	addi	x4, x0, 0	# 6
	jalr	x0, x1, 0	# 6
fle_else.12749:
	ori		x4, x0, 1	# 6
	jalr	x0, x1, 0	# 6
fhalf.2483:
	lui		x4, %hi(l.6122)	# 7
	ori		x4, x0, %lo(l.6122)	# 7
	flw		f1, 0(x4)	# 7
	fmul	f0, f0, f1	# 7
	jalr	x0, x1, 0	# 7
fsqr.2485:
	fmul	f0, f0, f0	# 8
	jalr	x0, x1, 0	# 8
int_of_float.2487:
	lui		x4, %hi(l.6117)	# 10
	ori		x4, x0, %lo(l.6117)	# 10
	flw		f1, 0(x4)	# 10
	fle		x31, f1, f0	# 10
	beq		x31, x0, fle_else.12750	# 10
	lui		x4, %hi(l.6125)	# 11
	ori		x4, x0, %lo(l.6125)	# 11
	flw		f1, 0(x4)	# 11
	fle		x31, f1, f0	# 11
	beq		x31, x0, fle_else.12751	# 11
	fsub	f0, f0, f1	# 11
	sw		x1, 0(x2)	# 11
	addi	x2, x2, -4	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 4	# 11
	lw		x1, 0(x2)	# 11
	addi	x4, x4, 1	# 11
	jalr	x0, x1, 0	# 11
fle_else.12751:
	addi	x4, x0, 0	# 11
	jalr	x0, x1, 0	# 11
fle_else.12750:
	fsub	x31, x31, x31	# 12
	fsub	f0, x31, f0	# 12
	sw		x1, 0(x2)	# 12
	addi	x2, x2, -4	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 4	# 12
	lw		x1, 0(x2)	# 12
	sub		x4, x0, x4	# 12
	jalr	x0, x1, 0	# 12
float_of_int.2489:
	addi	x5, x0, 0	# 14
	ble		x5, x4, ble.12752	# 14
	sub		x4, x0, x4	# 16
	sw		x1, 0(x2)	# 16
	addi	x2, x2, -4	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 4	# 16
	lw		x1, 0(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jalr	x0, x1, 0	# 16
ble.12752:
	ori		x5, x0, 1	# 15
	ble		x5, x4, ble.12753	# 15
	lui		x4, %hi(l.6117)	# 15
	ori		x4, x0, %lo(l.6117)	# 15
	flw		f0, 0(x4)	# 15
	jalr	x0, x1, 0	# 15
ble.12753:
	sub		x4, x4, x5	# 15
	sw		x1, 0(x2)	# 15
	addi	x2, x2, -4	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 4	# 15
	lw		x1, 0(x2)	# 15
	lui		x4, %hi(l.6125)	# 15
	ori		x4, x0, %lo(l.6125)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
	jalr	x0, x1, 0	# 15
floor.2491:
	lui		x4, %hi(l.6117)	# 18
	ori		x4, x0, %lo(l.6117)	# 18
	flw		f1, 0(x4)	# 18
	fle		x31, f1, f0	# 18
	beq		x31, x0, fle_else.12754	# 18
	sw		x1, 0(x2)	# 18
	addi	x2, x2, -4	# 18
	jal		x1, int_of_float.2487	# 18
	addi	x2, x2, 4	# 18
	lw		x1, 0(x2)	# 18
	jal		x0, float_of_int.2489	# 18
fle_else.12754:
	sw		x1, 0(x2)	# 19
	addi	x2, x2, -4	# 19
	jal		x1, int_of_float.2487	# 19
	addi	x2, x2, 4	# 19
	lw		x1, 0(x2)	# 19
	ori		x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	jal		x0, float_of_int.2489	# 19
sin_main.2497:
	fmul	f1, f0, f0	# 36
	fmul	f2, f0, f1	# 37
	lui		x4, %hi(l.6130)	# 38
	ori		x4, x0, %lo(l.6130)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f2	# 38
	fsub	f0, f0, f3	# 38
	lui		x4, %hi(l.6132)	# 38
	ori		x4, x0, %lo(l.6132)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f3, f3, f2	# 38
	fadd	f0, f0, f3	# 38
	lui		x4, %hi(l.6134)	# 38
	ori		x4, x0, %lo(l.6134)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f1, f3, f1	# 38
	fmul	f1, f1, f2	# 38
	fsub	f0, f0, f1	# 38
	jalr	x0, x1, 0	# 38
cos_main.2499:
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.6125)	# 43
	ori		x4, x0, %lo(l.6125)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.6122)	# 43
	ori		x4, x0, %lo(l.6122)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.6138)	# 43
	ori		x4, x0, %lo(l.6138)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.6140)	# 43
	ori		x4, x0, %lo(l.6140)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jalr	x0, x1, 0	# 43
sin.2501:
	flw		f1, 16(x27)	# 46
	flw		f2, 12(x27)	# 46
	flw		f3, 8(x27)	# 46
	flw		f4, 4(x27)	# 46
	lui		x4, %hi(l.6117)	# 46
	ori		x4, x0, %lo(l.6117)	# 46
	flw		f5, 0(x4)	# 46
	fle		x31, f5, f0	# 46
	beq		x31, x0, fle_else.12755	# 46
	fle		x31, f3, f0	# 47
	beq		x31, x0, fle_else.12756	# 47
	fsub	f0, f0, f3	# 47
	lw		x31, 0(x27)	# 47
	jalr	x0, x31, 0	# 47
fle_else.12756:
	fle		x31, f4, f0	# 48
	beq		x31, x0, fle_else.12757	# 48
	fsub	f0, f0, f4	# 48
	sw		x1, 0(x2)	# 48
	addi	x2, x2, -4	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 4	# 48
	lw		x1, 0(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jalr	x0, x1, 0	# 48
fle_else.12757:
	fle		x31, f0, f2	# 49
	beq		x31, x0, fle_else.12758	# 49
	fle		x31, f1, f0	# 50
	beq		x31, x0, fle_else.12759	# 50
	fsub	f0, f2, f0	# 50
	jal		x0, cos_main.2499	# 50
fle_else.12759:
	jal		x0, sin_main.2497	# 51
fle_else.12758:
	fsub	f0, f4, f0	# 49
	lw		x31, 0(x27)	# 49
	jalr	x0, x31, 0	# 49
fle_else.12755:
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
	sw		x1, 0(x2)	# 46
	addi	x2, x2, -4	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 4	# 46
	lw		x1, 0(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
	jalr	x0, x1, 0	# 46
cos.2503:
	lw		x4, 12(x27)	# 54
	flw		f1, 8(x27)	# 54
	flw		f2, 4(x27)	# 54
	lui		x5, %hi(l.6117)	# 54
	ori		x5, x0, %lo(l.6117)	# 54
	flw		f3, 0(x5)	# 54
	fle		x31, f3, f0	# 54
	beq		x31, x0, fle_else.12760	# 54
	fle		x31, f0, f1	# 55
	beq		x31, x0, fle_else.12761	# 55
	jal		x0, cos_main.2499	# 56
fle_else.12761:
	fsub	f0, f2, f0	# 55
	addi	x27, x4, 0
	lw		x31, 0(x27)	# 55
	jalr	x0, x31, 0	# 55
fle_else.12760:
	fsub	x31, x31, x31	# 54
	fsub	f0, x31, f0	# 54
	lw		x31, 0(x27)	# 54
	jalr	x0, x31, 0	# 54
atan.2505:
	flw		f1, 8(x27)	# 59
	flw		f2, 4(x27)	# 59
	lui		x4, %hi(l.6117)	# 59
	ori		x4, x0, %lo(l.6117)	# 59
	flw		f3, 0(x4)	# 59
	fle		x31, f3, f0	# 59
	beq		x31, x0, fle_else.12762	# 59
	lui		x4, %hi(l.6145)	# 60
	ori		x4, x0, %lo(l.6145)	# 60
	flw		f3, 0(x4)	# 60
	fle		x31, f0, f3	# 60
	beq		x31, x0, fle_else.12763	# 60
	lui		x4, %hi(l.6148)	# 61
	ori		x4, x0, %lo(l.6148)	# 61
	flw		f2, 0(x4)	# 61
	fle		x31, f2, f0	# 61
	beq		x31, x0, fle_else.12764	# 61
	lui		x4, %hi(l.6125)	# 61
	ori		x4, x0, %lo(l.6125)	# 61
	flw		f2, 0(x4)	# 61
	fsub	f3, f0, f2	# 61
	fadd	f0, f0, f2	# 61
	fdiv	f0, f3, f0	# 61
	fsw		f1, 0(x2)	# 61
	sw		x1, -8(x2)	# 61
	addi	x2, x2, -12	# 61
	lw		x31, 0(x27)	# 61
	jalr	x1, x31, 0	# 61
	addi	x2, x2, 12	# 61
	lw		x1, -8(x2)	# 61
	flw		f1, 0(x2)	# 61
	fadd	f0, f1, f0	# 61
	jalr	x0, x1, 0	# 61
fle_else.12764:
	fmul	f1, f0, f0	# 63
	fmul	f2, f0, f1	# 64
	fmul	f3, f1, f1	# 65
	lui		x4, %hi(l.6150)	# 66
	ori		x4, x0, %lo(l.6150)	# 66
	flw		f4, 0(x4)	# 66
	fmul	f4, f4, f2	# 66
	fsub	f0, f0, f4	# 66
	lui		x4, %hi(l.6152)	# 66
	ori		x4, x0, %lo(l.6152)	# 66
	flw		f4, 0(x4)	# 66
	fmul	f4, f4, f1	# 66
	fmul	f4, f4, f2	# 66
	fadd	f0, f0, f4	# 66
	lui		x4, %hi(l.6154)	# 66
	ori		x4, x0, %lo(l.6154)	# 66
	flw		f4, 0(x4)	# 66
	fmul	f4, f4, f3	# 66
	fmul	f4, f4, f2	# 66
	fsub	f0, f0, f4	# 66
	lui		x4, %hi(l.6156)	# 67
	ori		x4, x0, %lo(l.6156)	# 67
	flw		f4, 0(x4)	# 67
	fmul	f1, f4, f1	# 67
	fmul	f1, f1, f3	# 67
	fmul	f1, f1, f2	# 67
	fadd	f0, f0, f1	# 66
	lui		x4, %hi(l.6158)	# 67
	ori		x4, x0, %lo(l.6158)	# 67
	flw		f1, 0(x4)	# 67
	fmul	f1, f1, f3	# 67
	fmul	f1, f1, f3	# 67
	fmul	f1, f1, f2	# 67
	fsub	f0, f0, f1	# 66
	jalr	x0, x1, 0	# 66
fle_else.12763:
	lui		x4, %hi(l.6125)	# 60
	ori		x4, x0, %lo(l.6125)	# 60
	flw		f1, 0(x4)	# 60
	fdiv	f0, f1, f0	# 60
	fsw		f2, -8(x2)	# 60
	sw		x1, -16(x2)	# 60
	addi	x2, x2, -20	# 60
	lw		x31, 0(x27)	# 60
	jalr	x1, x31, 0	# 60
	addi	x2, x2, 20	# 60
	lw		x1, -16(x2)	# 60
	flw		f1, -8(x2)	# 60
	fsub	f0, f1, f0	# 60
	jalr	x0, x1, 0	# 60
fle_else.12762:
	fsub	x31, x31, x31	# 59
	fsub	f0, x31, f0	# 59
	sw		x1, -16(x2)	# 59
	addi	x2, x2, -20	# 59
	lw		x31, 0(x27)	# 59
	jalr	x1, x31, 0	# 59
	addi	x2, x2, 20	# 59
	lw		x1, -16(x2)	# 59
	fsub	x31, x31, x31	# 59
	fsub	f0, x31, f0	# 59
	jalr	x0, x1, 0	# 59
xor.2541:
	lw		x6, 4(x27)	# 204
	beq		x4, x6, beq.12765	# 204
	beq		x5, x6, beq.12766	# 204
	addi	x4, x0, 0	# 204
	jalr	x0, x1, 0	# 204
beq.12766:
	ori		x4, x0, 1	# 204
	jalr	x0, x1, 0	# 204
beq.12765:
	addi	x4, x5, 0	# 204
	jalr	x0, x1, 0	# 204
sgn.2544:
	lw		x4, 8(x27)	# 212
	flw		f1, 4(x27)	# 212
	fsw		f1, 0(x2)	# 212
	fsw		f0, -8(x2)	# 212
	sw		x4, -16(x2)	# 212
	sw		x1, -20(x2)	# 212
	addi	x2, x2, -24	# 212
	jal		x1, fiszero.2470	# 212
	addi	x2, x2, 24	# 212
	lw		x1, -20(x2)	# 212
	lw		x5, -16(x2)	# 212
	beq		x4, x5, beq.12767	# 212
	flw		f0, 0(x2)	# 212
	jalr	x0, x1, 0	# 212
beq.12767:
	flw		f0, -8(x2)	# 213
	sw		x1, -20(x2)	# 213
	addi	x2, x2, -24	# 213
	jal		x1, fispos.2472	# 213
	addi	x2, x2, 24	# 213
	lw		x1, -20(x2)	# 213
	lw		x5, -16(x2)	# 213
	beq		x4, x5, beq.12768	# 213
	lui		x4, %hi(l.6125)	# 213
	ori		x4, x0, %lo(l.6125)	# 213
	flw		f0, 0(x4)	# 213
	jalr	x0, x1, 0	# 213
beq.12768:
	lui		x4, %hi(l.6162)	# 214
	ori		x4, x0, %lo(l.6162)	# 214
	flw		f0, 0(x4)	# 214
	jalr	x0, x1, 0	# 214
fneg_cond.2546:
	lw		x5, 4(x27)	# 219
	beq		x4, x5, beq.12769	# 219
	jalr	x0, x1, 0	# 219
beq.12769:
	jal		x0, fneg.2476	# 219
add_mod5.2549:
	lw		x6, 4(x27)	# 224
	add		x4, x4, x5	# 224
	ble		x6, x4, ble.12770	# 225
	jalr	x0, x1, 0	# 225
ble.12770:
	sub		x4, x4, x6	# 225
	jalr	x0, x1, 0	# 225
vecset.2552:
	lw		x5, 12(x27)	# 240
	lw		x6, 8(x27)	# 240
	lw		x7, 4(x27)	# 240
	ori		x8, x0, 4	# 240
	mul		x6, x6, x8	# 240
	add		x6, x4, x6	# 240
	fsw		f0, 0(x6)	# 240
	ori		x6, x0, 4	# 241
	mul		x6, x7, x6	# 241
	add		x6, x4, x6	# 241
	fsw		f1, 0(x6)	# 241
	ori		x6, x0, 4	# 242
	mul		x5, x5, x6	# 242
	add		x4, x4, x5	# 242
	fsw		f2, 0(x4)	# 242
	jalr	x0, x1, 0	# 242
vecfill.2557:
	lw		x5, 12(x27)	# 247
	lw		x6, 8(x27)	# 247
	lw		x7, 4(x27)	# 247
	ori		x8, x0, 4	# 247
	mul		x6, x6, x8	# 247
	add		x6, x4, x6	# 247
	fsw		f0, 0(x6)	# 247
	ori		x6, x0, 4	# 248
	mul		x6, x7, x6	# 248
	add		x6, x4, x6	# 248
	fsw		f0, 0(x6)	# 248
	ori		x6, x0, 4	# 249
	mul		x5, x5, x6	# 249
	add		x4, x4, x5	# 249
	fsw		f0, 0(x4)	# 249
	jalr	x0, x1, 0	# 249
vecbzero.2560:
	lw		x5, 8(x27)	# 254
	flw		f0, 4(x27)	# 254
	addi	x27, x5, 0
	lw		x31, 0(x27)	# 254
	jalr	x0, x31, 0	# 254
veccpy.2562:
	lw		x6, 12(x27)	# 259
	lw		x7, 8(x27)	# 259
	lw		x8, 4(x27)	# 259
	ori		x9, x0, 4	# 259
	mul		x9, x7, x9	# 259
	add		x9, x5, x9	# 259
	flw		f0, 0(x9)	# 259
	ori		x9, x0, 4	# 259
	mul		x7, x7, x9	# 259
	add		x7, x4, x7	# 259
	fsw		f0, 0(x7)	# 259
	ori		x7, x0, 4	# 260
	mul		x7, x8, x7	# 260
	add		x7, x5, x7	# 260
	flw		f0, 0(x7)	# 260
	ori		x7, x0, 4	# 260
	mul		x7, x8, x7	# 260
	add		x7, x4, x7	# 260
	fsw		f0, 0(x7)	# 260
	ori		x7, x0, 4	# 261
	mul		x7, x6, x7	# 261
	add		x5, x5, x7	# 261
	flw		f0, 0(x5)	# 261
	ori		x5, x0, 4	# 261
	mul		x5, x6, x5	# 261
	add		x4, x4, x5	# 261
	fsw		f0, 0(x4)	# 261
	jalr	x0, x1, 0	# 261
vecunit_sgn.2565:
	lw		x6, 12(x27)	# 283
	lw		x7, 8(x27)	# 283
	lw		x8, 4(x27)	# 283
	ori		x9, x0, 4	# 283
	mul		x9, x7, x9	# 283
	add		x9, x4, x9	# 283
	flw		f0, 0(x9)	# 283
	sw		x5, 0(x2)	# 283
	sw		x7, -4(x2)	# 283
	sw		x6, -8(x2)	# 283
	sw		x4, -12(x2)	# 283
	sw		x8, -16(x2)	# 283
	sw		x1, -20(x2)	# 283
	addi	x2, x2, -24	# 283
	jal		x1, fsqr.2485	# 283
	addi	x2, x2, 24	# 283
	lw		x1, -20(x2)	# 283
	ori		x4, x0, 4	# 283
	lw		x5, -16(x2)	# 283
	mul		x4, x5, x4	# 283
	lw		x6, -12(x2)	# 283
	add		x4, x6, x4	# 283
	flw		f1, 0(x4)	# 283
	fsw		f0, -24(x2)	# 283
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -32(x2)	# 283
	addi	x2, x2, -36	# 283
	jal		x1, fsqr.2485	# 283
	addi	x2, x2, 36	# 283
	lw		x1, -32(x2)	# 283
	flw		f1, -24(x2)	# 283
	fadd	f0, f1, f0	# 283
	ori		x4, x0, 4	# 283
	lw		x5, -8(x2)	# 283
	mul		x4, x5, x4	# 283
	lw		x6, -12(x2)	# 283
	add		x4, x6, x4	# 283
	flw		f1, 0(x4)	# 283
	fsw		f0, -32(x2)	# 283
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -40(x2)	# 283
	addi	x2, x2, -44	# 283
	jal		x1, fsqr.2485	# 283
	addi	x2, x2, 44	# 283
	lw		x1, -40(x2)	# 283
	flw		f1, -32(x2)	# 283
	fadd	f0, f1, f0	# 283
	sw		x1, -40(x2)	# 283
	addi	x2, x2, -44	# 283
	jal		x1, min_caml_sqrt	# 283
	addi	x2, x2, 44	# 283
	lw		x1, -40(x2)	# 283
	fsw		f0, -40(x2)	# 284
	sw		x1, -48(x2)	# 284
	addi	x2, x2, -52	# 284
	jal		x1, fiszero.2470	# 284
	addi	x2, x2, 52	# 284
	lw		x1, -48(x2)	# 284
	lw		x5, -4(x2)	# 284
	beq		x4, x5, beq.12776	# 284
	lui		x4, %hi(l.6125)	# 284
	ori		x4, x0, %lo(l.6125)	# 284
	flw		f0, 0(x4)	# 284
	jal		x0, beq_cont.12775	# 284
beq.12776:
	lw		x4, 0(x2)	# 284
	beq		x4, x5, beq.12778	# 284
	lui		x4, %hi(l.6162)	# 284
	ori		x4, x0, %lo(l.6162)	# 284
	flw		f0, 0(x4)	# 284
	flw		f1, -40(x2)	# 284
	fdiv	f0, f0, f1	# 284
	jal		x0, beq_cont.12777	# 284
beq.12778:
	lui		x4, %hi(l.6125)	# 284
	ori		x4, x0, %lo(l.6125)	# 284
	flw		f0, 0(x4)	# 284
	flw		f1, -40(x2)	# 284
	fdiv	f0, f0, f1	# 284
beq_cont.12777:
beq_cont.12775:
	ori		x4, x0, 4	# 285
	mul		x4, x5, x4	# 285
	lw		x6, -12(x2)	# 285
	add		x4, x6, x4	# 285
	flw		f1, 0(x4)	# 285
	fmul	f1, f1, f0	# 285
	ori		x4, x0, 4	# 285
	mul		x4, x5, x4	# 285
	add		x4, x6, x4	# 285
	fsw		f1, 0(x4)	# 285
	ori		x4, x0, 4	# 286
	lw		x5, -16(x2)	# 286
	mul		x4, x5, x4	# 286
	add		x4, x6, x4	# 286
	flw		f1, 0(x4)	# 286
	fmul	f1, f1, f0	# 286
	ori		x4, x0, 4	# 286
	mul		x4, x5, x4	# 286
	add		x4, x6, x4	# 286
	fsw		f1, 0(x4)	# 286
	ori		x4, x0, 4	# 287
	lw		x5, -8(x2)	# 287
	mul		x4, x5, x4	# 287
	add		x4, x6, x4	# 287
	flw		f1, 0(x4)	# 287
	fmul	f0, f1, f0	# 287
	ori		x4, x0, 4	# 287
	mul		x4, x5, x4	# 287
	add		x4, x6, x4	# 287
	fsw		f0, 0(x4)	# 287
	jalr	x0, x1, 0	# 287
veciprod.2568:
	lw		x6, 12(x27)	# 292
	lw		x7, 8(x27)	# 292
	lw		x8, 4(x27)	# 292
	ori		x9, x0, 4	# 292
	mul		x9, x7, x9	# 292
	add		x9, x4, x9	# 292
	flw		f0, 0(x9)	# 292
	ori		x9, x0, 4	# 292
	mul		x7, x7, x9	# 292
	add		x7, x5, x7	# 292
	flw		f1, 0(x7)	# 292
	fmul	f0, f0, f1	# 292
	ori		x7, x0, 4	# 292
	mul		x7, x8, x7	# 292
	add		x7, x4, x7	# 292
	flw		f1, 0(x7)	# 292
	ori		x7, x0, 4	# 292
	mul		x7, x8, x7	# 292
	add		x7, x5, x7	# 292
	flw		f2, 0(x7)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	ori		x7, x0, 4	# 292
	mul		x7, x6, x7	# 292
	add		x4, x4, x7	# 292
	flw		f1, 0(x4)	# 292
	ori		x4, x0, 4	# 292
	mul		x4, x6, x4	# 292
	add		x4, x5, x4	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	jalr	x0, x1, 0	# 292
veciprod2.2571:
	lw		x5, 12(x27)	# 297
	lw		x6, 8(x27)	# 297
	lw		x7, 4(x27)	# 297
	ori		x8, x0, 4	# 297
	mul		x6, x6, x8	# 297
	add		x6, x4, x6	# 297
	flw		f3, 0(x6)	# 297
	fmul	f0, f3, f0	# 297
	ori		x6, x0, 4	# 297
	mul		x6, x7, x6	# 297
	add		x6, x4, x6	# 297
	flw		f3, 0(x6)	# 297
	fmul	f1, f3, f1	# 297
	fadd	f0, f0, f1	# 297
	ori		x6, x0, 4	# 297
	mul		x5, x5, x6	# 297
	add		x4, x4, x5	# 297
	flw		f1, 0(x4)	# 297
	fmul	f1, f1, f2	# 297
	fadd	f0, f0, f1	# 297
	jalr	x0, x1, 0	# 297
vecaccum.2576:
	lw		x6, 12(x27)	# 302
	lw		x7, 8(x27)	# 302
	lw		x8, 4(x27)	# 302
	ori		x9, x0, 4	# 302
	mul		x9, x7, x9	# 302
	add		x9, x4, x9	# 302
	flw		f1, 0(x9)	# 302
	ori		x9, x0, 4	# 302
	mul		x9, x7, x9	# 302
	add		x9, x5, x9	# 302
	flw		f2, 0(x9)	# 302
	fmul	f2, f0, f2	# 302
	fadd	f1, f1, f2	# 302
	ori		x9, x0, 4	# 302
	mul		x7, x7, x9	# 302
	add		x7, x4, x7	# 302
	fsw		f1, 0(x7)	# 302
	ori		x7, x0, 4	# 303
	mul		x7, x8, x7	# 303
	add		x7, x4, x7	# 303
	flw		f1, 0(x7)	# 303
	ori		x7, x0, 4	# 303
	mul		x7, x8, x7	# 303
	add		x7, x5, x7	# 303
	flw		f2, 0(x7)	# 303
	fmul	f2, f0, f2	# 303
	fadd	f1, f1, f2	# 303
	ori		x7, x0, 4	# 303
	mul		x7, x8, x7	# 303
	add		x7, x4, x7	# 303
	fsw		f1, 0(x7)	# 303
	ori		x7, x0, 4	# 304
	mul		x7, x6, x7	# 304
	add		x7, x4, x7	# 304
	flw		f1, 0(x7)	# 304
	ori		x7, x0, 4	# 304
	mul		x7, x6, x7	# 304
	add		x5, x5, x7	# 304
	flw		f2, 0(x5)	# 304
	fmul	f0, f0, f2	# 304
	fadd	f0, f1, f0	# 304
	ori		x5, x0, 4	# 304
	mul		x5, x6, x5	# 304
	add		x4, x4, x5	# 304
	fsw		f0, 0(x4)	# 304
	jalr	x0, x1, 0	# 304
vecadd.2580:
	lw		x6, 12(x27)	# 309
	lw		x7, 8(x27)	# 309
	lw		x8, 4(x27)	# 309
	ori		x9, x0, 4	# 309
	mul		x9, x7, x9	# 309
	add		x9, x4, x9	# 309
	flw		f0, 0(x9)	# 309
	ori		x9, x0, 4	# 309
	mul		x9, x7, x9	# 309
	add		x9, x5, x9	# 309
	flw		f1, 0(x9)	# 309
	fadd	f0, f0, f1	# 309
	ori		x9, x0, 4	# 309
	mul		x7, x7, x9	# 309
	add		x7, x4, x7	# 309
	fsw		f0, 0(x7)	# 309
	ori		x7, x0, 4	# 310
	mul		x7, x8, x7	# 310
	add		x7, x4, x7	# 310
	flw		f0, 0(x7)	# 310
	ori		x7, x0, 4	# 310
	mul		x7, x8, x7	# 310
	add		x7, x5, x7	# 310
	flw		f1, 0(x7)	# 310
	fadd	f0, f0, f1	# 310
	ori		x7, x0, 4	# 310
	mul		x7, x8, x7	# 310
	add		x7, x4, x7	# 310
	fsw		f0, 0(x7)	# 310
	ori		x7, x0, 4	# 311
	mul		x7, x6, x7	# 311
	add		x7, x4, x7	# 311
	flw		f0, 0(x7)	# 311
	ori		x7, x0, 4	# 311
	mul		x7, x6, x7	# 311
	add		x5, x5, x7	# 311
	flw		f1, 0(x5)	# 311
	fadd	f0, f0, f1	# 311
	ori		x5, x0, 4	# 311
	mul		x5, x6, x5	# 311
	add		x4, x4, x5	# 311
	fsw		f0, 0(x4)	# 311
	jalr	x0, x1, 0	# 311
vecscale.2583:
	lw		x5, 12(x27)	# 325
	lw		x6, 8(x27)	# 325
	lw		x7, 4(x27)	# 325
	ori		x8, x0, 4	# 325
	mul		x8, x6, x8	# 325
	add		x8, x4, x8	# 325
	flw		f1, 0(x8)	# 325
	fmul	f1, f1, f0	# 325
	ori		x8, x0, 4	# 325
	mul		x6, x6, x8	# 325
	add		x6, x4, x6	# 325
	fsw		f1, 0(x6)	# 325
	ori		x6, x0, 4	# 326
	mul		x6, x7, x6	# 326
	add		x6, x4, x6	# 326
	flw		f1, 0(x6)	# 326
	fmul	f1, f1, f0	# 326
	ori		x6, x0, 4	# 326
	mul		x6, x7, x6	# 326
	add		x6, x4, x6	# 326
	fsw		f1, 0(x6)	# 326
	ori		x6, x0, 4	# 327
	mul		x6, x5, x6	# 327
	add		x6, x4, x6	# 327
	flw		f1, 0(x6)	# 327
	fmul	f0, f1, f0	# 327
	ori		x6, x0, 4	# 327
	mul		x5, x5, x6	# 327
	add		x4, x4, x5	# 327
	fsw		f0, 0(x4)	# 327
	jalr	x0, x1, 0	# 327
vecaccumv.2586:
	lw		x7, 12(x27)	# 332
	lw		x8, 8(x27)	# 332
	lw		x9, 4(x27)	# 332
	ori		x10, x0, 4	# 332
	mul		x10, x8, x10	# 332
	add		x10, x4, x10	# 332
	flw		f0, 0(x10)	# 332
	ori		x10, x0, 4	# 332
	mul		x10, x8, x10	# 332
	add		x10, x5, x10	# 332
	flw		f1, 0(x10)	# 332
	ori		x10, x0, 4	# 332
	mul		x10, x8, x10	# 332
	add		x10, x6, x10	# 332
	flw		f2, 0(x10)	# 332
	fmul	f1, f1, f2	# 332
	fadd	f0, f0, f1	# 332
	ori		x10, x0, 4	# 332
	mul		x8, x8, x10	# 332
	add		x8, x4, x8	# 332
	fsw		f0, 0(x8)	# 332
	ori		x8, x0, 4	# 333
	mul		x8, x9, x8	# 333
	add		x8, x4, x8	# 333
	flw		f0, 0(x8)	# 333
	ori		x8, x0, 4	# 333
	mul		x8, x9, x8	# 333
	add		x8, x5, x8	# 333
	flw		f1, 0(x8)	# 333
	ori		x8, x0, 4	# 333
	mul		x8, x9, x8	# 333
	add		x8, x6, x8	# 333
	flw		f2, 0(x8)	# 333
	fmul	f1, f1, f2	# 333
	fadd	f0, f0, f1	# 333
	ori		x8, x0, 4	# 333
	mul		x8, x9, x8	# 333
	add		x8, x4, x8	# 333
	fsw		f0, 0(x8)	# 333
	ori		x8, x0, 4	# 334
	mul		x8, x7, x8	# 334
	add		x8, x4, x8	# 334
	flw		f0, 0(x8)	# 334
	ori		x8, x0, 4	# 334
	mul		x8, x7, x8	# 334
	add		x5, x5, x8	# 334
	flw		f1, 0(x5)	# 334
	ori		x5, x0, 4	# 334
	mul		x5, x7, x5	# 334
	add		x5, x6, x5	# 334
	flw		f2, 0(x5)	# 334
	fmul	f1, f1, f2	# 334
	fadd	f0, f0, f1	# 334
	ori		x5, x0, 4	# 334
	mul		x5, x7, x5	# 334
	add		x4, x4, x5	# 334
	fsw		f0, 0(x4)	# 334
	jalr	x0, x1, 0	# 334
o_texturetype.2590:
	lw		x4, 0(x4)	# 343
	jalr	x0, x1, 0	# 348
o_form.2592:
	lw		x4, 4(x4)	# 353
	jalr	x0, x1, 0	# 358
o_reflectiontype.2594:
	lw		x4, 8(x4)	# 363
	jalr	x0, x1, 0	# 368
o_isinvert.2596:
	lw		x4, 24(x4)	# 373
	jalr	x0, x1, 0	# 377
o_isrot.2598:
	lw		x4, 12(x4)	# 382
	jalr	x0, x1, 0	# 386
o_param_a.2600:
	lw		x5, 4(x27)	# 391
	lw		x4, 16(x4)	# 391
	ori		x6, x0, 4	# 396
	mul		x5, x5, x6	# 396
	add		x4, x4, x5	# 396
	flw		f0, 0(x4)	# 396
	jalr	x0, x1, 0	# 396
o_param_b.2602:
	lw		x5, 4(x27)	# 401
	lw		x4, 16(x4)	# 401
	ori		x6, x0, 4	# 406
	mul		x5, x5, x6	# 406
	add		x4, x4, x5	# 406
	flw		f0, 0(x4)	# 406
	jalr	x0, x1, 0	# 406
o_param_c.2604:
	lw		x5, 4(x27)	# 411
	lw		x4, 16(x4)	# 411
	ori		x6, x0, 4	# 416
	mul		x5, x5, x6	# 416
	add		x4, x4, x5	# 416
	flw		f0, 0(x4)	# 416
	jalr	x0, x1, 0	# 416
o_param_abc.2606:
	lw		x4, 16(x4)	# 421
	jalr	x0, x1, 0	# 426
o_param_x.2608:
	lw		x5, 4(x27)	# 431
	lw		x4, 20(x4)	# 431
	ori		x6, x0, 4	# 436
	mul		x5, x5, x6	# 436
	add		x4, x4, x5	# 436
	flw		f0, 0(x4)	# 436
	jalr	x0, x1, 0	# 436
o_param_y.2610:
	lw		x5, 4(x27)	# 441
	lw		x4, 20(x4)	# 441
	ori		x6, x0, 4	# 446
	mul		x5, x5, x6	# 446
	add		x4, x4, x5	# 446
	flw		f0, 0(x4)	# 446
	jalr	x0, x1, 0	# 446
o_param_z.2612:
	lw		x5, 4(x27)	# 451
	lw		x4, 20(x4)	# 451
	ori		x6, x0, 4	# 456
	mul		x5, x5, x6	# 456
	add		x4, x4, x5	# 456
	flw		f0, 0(x4)	# 456
	jalr	x0, x1, 0	# 456
o_diffuse.2614:
	lw		x5, 4(x27)	# 461
	lw		x4, 28(x4)	# 461
	ori		x6, x0, 4	# 466
	mul		x5, x5, x6	# 466
	add		x4, x4, x5	# 466
	flw		f0, 0(x4)	# 466
	jalr	x0, x1, 0	# 466
o_hilight.2616:
	lw		x5, 4(x27)	# 471
	lw		x4, 28(x4)	# 471
	ori		x6, x0, 4	# 476
	mul		x5, x5, x6	# 476
	add		x4, x4, x5	# 476
	flw		f0, 0(x4)	# 476
	jalr	x0, x1, 0	# 476
o_color_red.2618:
	lw		x5, 4(x27)	# 481
	lw		x4, 32(x4)	# 481
	ori		x6, x0, 4	# 486
	mul		x5, x5, x6	# 486
	add		x4, x4, x5	# 486
	flw		f0, 0(x4)	# 486
	jalr	x0, x1, 0	# 486
o_color_green.2620:
	lw		x5, 4(x27)	# 491
	lw		x4, 32(x4)	# 491
	ori		x6, x0, 4	# 496
	mul		x5, x5, x6	# 496
	add		x4, x4, x5	# 496
	flw		f0, 0(x4)	# 496
	jalr	x0, x1, 0	# 496
o_color_blue.2622:
	lw		x5, 4(x27)	# 501
	lw		x4, 32(x4)	# 501
	ori		x6, x0, 4	# 506
	mul		x5, x5, x6	# 506
	add		x4, x4, x5	# 506
	flw		f0, 0(x4)	# 506
	jalr	x0, x1, 0	# 506
o_param_r1.2624:
	lw		x5, 4(x27)	# 511
	lw		x4, 36(x4)	# 511
	ori		x6, x0, 4	# 516
	mul		x5, x5, x6	# 516
	add		x4, x4, x5	# 516
	flw		f0, 0(x4)	# 516
	jalr	x0, x1, 0	# 516
o_param_r2.2626:
	lw		x5, 4(x27)	# 521
	lw		x4, 36(x4)	# 521
	ori		x6, x0, 4	# 526
	mul		x5, x5, x6	# 526
	add		x4, x4, x5	# 526
	flw		f0, 0(x4)	# 526
	jalr	x0, x1, 0	# 526
o_param_r3.2628:
	lw		x5, 4(x27)	# 531
	lw		x4, 36(x4)	# 531
	ori		x6, x0, 4	# 536
	mul		x5, x5, x6	# 536
	add		x4, x4, x5	# 536
	flw		f0, 0(x4)	# 536
	jalr	x0, x1, 0	# 536
o_param_ctbl.2630:
	lw		x4, 40(x4)	# 548
	jalr	x0, x1, 0	# 553
p_rgb.2632:
	lw		x4, 0(x4)	# 562
	jalr	x0, x1, 0	# 564
p_intersection_points.2634:
	lw		x4, 4(x4)	# 569
	jalr	x0, x1, 0	# 571
p_surface_ids.2636:
	lw		x4, 8(x4)	# 577
	jalr	x0, x1, 0	# 579
p_calc_diffuse.2638:
	lw		x4, 12(x4)	# 584
	jalr	x0, x1, 0	# 586
p_energy.2640:
	lw		x4, 16(x4)	# 591
	jalr	x0, x1, 0	# 593
p_received_ray_20percent.2642:
	lw		x4, 20(x4)	# 598
	jalr	x0, x1, 0	# 600
p_group_id.2644:
	lw		x5, 4(x27)	# 614
	lw		x4, 24(x4)	# 614
	ori		x6, x0, 4	# 616
	mul		x5, x5, x6	# 616
	add		x4, x4, x5	# 616
	lw		x4, 0(x4)	# 616
	jalr	x0, x1, 0	# 616
p_set_group_id.2646:
	lw		x6, 4(x27)	# 621
	lw		x4, 24(x4)	# 621
	ori		x7, x0, 4	# 623
	mul		x6, x6, x7	# 623
	add		x4, x4, x6	# 623
	sw		x5, 0(x4)	# 623
	jalr	x0, x1, 0	# 623
p_nvectors.2649:
	lw		x4, 28(x4)	# 628
	jalr	x0, x1, 0	# 630
d_vec.2651:
	lw		x4, 0(x4)	# 639
	jalr	x0, x1, 0	# 640
d_const.2653:
	lw		x4, 4(x4)	# 645
	jalr	x0, x1, 0	# 646
r_surface_id.2655:
	lw		x4, 0(x4)	# 655
	jalr	x0, x1, 0	# 656
r_dvec.2657:
	lw		x4, 4(x4)	# 661
	jalr	x0, x1, 0	# 662
r_bright.2659:
	flw		f0, 8(x4)	# 668
	jalr	x0, x1, 0	# 668
rad.2661:
	lui		x4, %hi(l.6413)	# 677
	ori		x4, x0, %lo(l.6413)	# 677
	flw		f1, 0(x4)	# 677
	fmul	f0, f0, f1	# 677
	jalr	x0, x1, 0	# 677
read_screen_settings.2663:
	lw		x4, 44(x27)	# 684
	lw		x5, 40(x27)	# 684
	lw		x6, 36(x27)	# 684
	lw		x7, 32(x27)	# 684
	lw		x8, 28(x27)	# 684
	lw		x9, 24(x27)	# 684
	lw		x10, 20(x27)	# 684
	lw		x11, 16(x27)	# 684
	lw		x12, 12(x27)	# 684
	lw		x13, 8(x27)	# 684
	flw		f0, 4(x27)	# 684
	sw		x4, 0(x2)	# 684
	sw		x7, -4(x2)	# 684
	fsw		f0, -8(x2)	# 684
	sw		x8, -16(x2)	# 684
	sw		x6, -20(x2)	# 684
	sw		x5, -24(x2)	# 684
	sw		x10, -28(x2)	# 684
	sw		x11, -32(x2)	# 684
	sw		x13, -36(x2)	# 684
	sw		x9, -40(x2)	# 684
	sw		x12, -44(x2)	# 684
	sw		x1, -48(x2)	# 684
	addi	x2, x2, -52	# 684
	jal		x1, min_caml_read_float	# 684
	addi	x2, x2, 52	# 684
	lw		x1, -48(x2)	# 684
	ori		x4, x0, 4	# 684
	lw		x5, -44(x2)	# 684
	mul		x4, x5, x4	# 684
	lw		x6, -40(x2)	# 684
	add		x4, x6, x4	# 684
	fsw		f0, 0(x4)	# 684
	sw		x1, -48(x2)	# 685
	addi	x2, x2, -52	# 685
	jal		x1, min_caml_read_float	# 685
	addi	x2, x2, 52	# 685
	lw		x1, -48(x2)	# 685
	ori		x4, x0, 4	# 685
	lw		x5, -36(x2)	# 685
	mul		x4, x5, x4	# 685
	lw		x6, -40(x2)	# 685
	add		x4, x6, x4	# 685
	fsw		f0, 0(x4)	# 685
	sw		x1, -48(x2)	# 686
	addi	x2, x2, -52	# 686
	jal		x1, min_caml_read_float	# 686
	addi	x2, x2, 52	# 686
	lw		x1, -48(x2)	# 686
	ori		x4, x0, 4	# 686
	lw		x5, -32(x2)	# 686
	mul		x4, x5, x4	# 686
	lw		x6, -40(x2)	# 686
	add		x4, x6, x4	# 686
	fsw		f0, 0(x4)	# 686
	sw		x1, -48(x2)	# 688
	addi	x2, x2, -52	# 688
	jal		x1, min_caml_read_float	# 688
	addi	x2, x2, 52	# 688
	lw		x1, -48(x2)	# 688
	sw		x1, -48(x2)	# 688
	addi	x2, x2, -52	# 688
	jal		x1, rad.2661	# 688
	addi	x2, x2, 52	# 688
	lw		x1, -48(x2)	# 688
	lw		x27, -28(x2)	# 689
	fsw		f0, -48(x2)	# 689
	sw		x1, -56(x2)	# 689
	addi	x2, x2, -60	# 689
	lw		x31, 0(x27)	# 689
	jalr	x1, x31, 0	# 689
	addi	x2, x2, 60	# 689
	lw		x1, -56(x2)	# 689
	flw		f1, -48(x2)	# 690
	lw		x27, -24(x2)	# 690
	fsw		f0, -56(x2)	# 690
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -64(x2)	# 690
	addi	x2, x2, -68	# 690
	lw		x31, 0(x27)	# 690
	jalr	x1, x31, 0	# 690
	addi	x2, x2, 68	# 690
	lw		x1, -64(x2)	# 690
	fsw		f0, -64(x2)	# 691
	sw		x1, -72(x2)	# 691
	addi	x2, x2, -76	# 691
	jal		x1, min_caml_read_float	# 691
	addi	x2, x2, 76	# 691
	lw		x1, -72(x2)	# 691
	sw		x1, -72(x2)	# 691
	addi	x2, x2, -76	# 691
	jal		x1, rad.2661	# 691
	addi	x2, x2, 76	# 691
	lw		x1, -72(x2)	# 691
	lw		x27, -28(x2)	# 692
	fsw		f0, -72(x2)	# 692
	sw		x1, -80(x2)	# 692
	addi	x2, x2, -84	# 692
	lw		x31, 0(x27)	# 692
	jalr	x1, x31, 0	# 692
	addi	x2, x2, 84	# 692
	lw		x1, -80(x2)	# 692
	flw		f1, -72(x2)	# 693
	lw		x27, -24(x2)	# 693
	fsw		f0, -80(x2)	# 693
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -88(x2)	# 693
	addi	x2, x2, -92	# 693
	lw		x31, 0(x27)	# 693
	jalr	x1, x31, 0	# 693
	addi	x2, x2, 92	# 693
	lw		x1, -88(x2)	# 693
	flw		f1, -56(x2)	# 695
	fmul	f2, f1, f0	# 695
	lui		x4, %hi(l.6424)	# 695
	ori		x4, x0, %lo(l.6424)	# 695
	flw		f3, 0(x4)	# 695
	fmul	f2, f2, f3	# 695
	ori		x4, x0, 4	# 695
	lw		x5, -44(x2)	# 695
	mul		x4, x5, x4	# 695
	lw		x6, -20(x2)	# 695
	add		x4, x6, x4	# 695
	fsw		f2, 0(x4)	# 695
	lui		x4, %hi(l.6429)	# 696
	ori		x4, x0, %lo(l.6429)	# 696
	flw		f2, 0(x4)	# 696
	flw		f4, -64(x2)	# 696
	fmul	f2, f4, f2	# 696
	ori		x4, x0, 4	# 696
	lw		x7, -36(x2)	# 696
	mul		x4, x7, x4	# 696
	add		x4, x6, x4	# 696
	fsw		f2, 0(x4)	# 696
	flw		f2, -80(x2)	# 697
	fmul	f5, f1, f2	# 697
	fmul	f3, f5, f3	# 697
	ori		x4, x0, 4	# 697
	lw		x8, -32(x2)	# 697
	mul		x4, x8, x4	# 697
	add		x4, x6, x4	# 697
	fsw		f3, 0(x4)	# 697
	ori		x4, x0, 4	# 699
	mul		x4, x5, x4	# 699
	lw		x9, -16(x2)	# 699
	add		x4, x9, x4	# 699
	fsw		f2, 0(x4)	# 699
	ori		x4, x0, 4	# 700
	mul		x4, x7, x4	# 700
	add		x4, x9, x4	# 700
	flw		f3, -8(x2)	# 700
	fsw		f3, 0(x4)	# 700
	fsw		f0, -88(x2)	# 701
	sw		x1, -96(x2)	# 701
	addi	x2, x2, -100	# 701
	jal		x1, fneg.2476	# 701
	addi	x2, x2, 100	# 701
	lw		x1, -96(x2)	# 701
	ori		x4, x0, 4	# 701
	lw		x5, -32(x2)	# 701
	mul		x4, x5, x4	# 701
	lw		x6, -16(x2)	# 701
	add		x4, x6, x4	# 701
	fsw		f0, 0(x4)	# 701
	flw		f0, -64(x2)	# 703
	sw		x1, -96(x2)	# 703
	addi	x2, x2, -100	# 703
	jal		x1, fneg.2476	# 703
	addi	x2, x2, 100	# 703
	lw		x1, -96(x2)	# 703
	flw		f1, -88(x2)	# 703
	fmul	f0, f0, f1	# 703
	ori		x4, x0, 4	# 703
	lw		x5, -44(x2)	# 703
	mul		x4, x5, x4	# 703
	lw		x6, -4(x2)	# 703
	add		x4, x6, x4	# 703
	fsw		f0, 0(x4)	# 703
	flw		f0, -56(x2)	# 704
	sw		x1, -96(x2)	# 704
	addi	x2, x2, -100	# 704
	jal		x1, fneg.2476	# 704
	addi	x2, x2, 100	# 704
	lw		x1, -96(x2)	# 704
	ori		x4, x0, 4	# 704
	lw		x5, -36(x2)	# 704
	mul		x4, x5, x4	# 704
	lw		x6, -4(x2)	# 704
	add		x4, x6, x4	# 704
	fsw		f0, 0(x4)	# 704
	flw		f0, -64(x2)	# 705
	sw		x1, -96(x2)	# 705
	addi	x2, x2, -100	# 705
	jal		x1, fneg.2476	# 705
	addi	x2, x2, 100	# 705
	lw		x1, -96(x2)	# 705
	flw		f1, -80(x2)	# 705
	fmul	f0, f0, f1	# 705
	ori		x4, x0, 4	# 705
	lw		x5, -32(x2)	# 705
	mul		x4, x5, x4	# 705
	lw		x6, -4(x2)	# 705
	add		x4, x6, x4	# 705
	fsw		f0, 0(x4)	# 705
	ori		x4, x0, 4	# 707
	lw		x6, -44(x2)	# 707
	mul		x4, x6, x4	# 707
	lw		x7, -40(x2)	# 707
	add		x4, x7, x4	# 707
	flw		f0, 0(x4)	# 707
	ori		x4, x0, 4	# 707
	mul		x4, x6, x4	# 707
	lw		x8, -20(x2)	# 707
	add		x4, x8, x4	# 707
	flw		f1, 0(x4)	# 707
	fsub	f0, f0, f1	# 707
	ori		x4, x0, 4	# 707
	mul		x4, x6, x4	# 707
	lw		x6, 0(x2)	# 707
	add		x4, x6, x4	# 707
	fsw		f0, 0(x4)	# 707
	ori		x4, x0, 4	# 708
	lw		x9, -36(x2)	# 708
	mul		x4, x9, x4	# 708
	add		x4, x7, x4	# 708
	flw		f0, 0(x4)	# 708
	ori		x4, x0, 4	# 708
	mul		x4, x9, x4	# 708
	add		x4, x8, x4	# 708
	flw		f1, 0(x4)	# 708
	fsub	f0, f0, f1	# 708
	ori		x4, x0, 4	# 708
	mul		x4, x9, x4	# 708
	add		x4, x6, x4	# 708
	fsw		f0, 0(x4)	# 708
	ori		x4, x0, 4	# 709
	mul		x4, x5, x4	# 709
	add		x4, x7, x4	# 709
	flw		f0, 0(x4)	# 709
	ori		x4, x0, 4	# 709
	mul		x4, x5, x4	# 709
	add		x4, x8, x4	# 709
	flw		f1, 0(x4)	# 709
	fsub	f0, f0, f1	# 709
	ori		x4, x0, 4	# 709
	mul		x4, x5, x4	# 709
	add		x4, x6, x4	# 709
	fsw		f0, 0(x4)	# 709
	jalr	x0, x1, 0	# 709
read_light.2665:
	lw		x4, 28(x27)	# 716
	lw		x5, 24(x27)	# 716
	lw		x6, 20(x27)	# 716
	lw		x7, 16(x27)	# 716
	lw		x8, 12(x27)	# 716
	lw		x9, 8(x27)	# 716
	lw		x10, 4(x27)	# 716
	sw		x7, 0(x2)	# 716
	sw		x8, -4(x2)	# 716
	sw		x9, -8(x2)	# 716
	sw		x6, -12(x2)	# 716
	sw		x5, -16(x2)	# 716
	sw		x10, -20(x2)	# 716
	sw		x4, -24(x2)	# 716
	sw		x1, -28(x2)	# 716
	addi	x2, x2, -32	# 716
	jal		x1, min_caml_read_int	# 716
	addi	x2, x2, 32	# 716
	lw		x1, -28(x2)	# 716
	sw		x1, -28(x2)	# 719
	addi	x2, x2, -32	# 719
	jal		x1, min_caml_read_float	# 719
	addi	x2, x2, 32	# 719
	lw		x1, -28(x2)	# 719
	sw		x1, -28(x2)	# 719
	addi	x2, x2, -32	# 719
	jal		x1, rad.2661	# 719
	addi	x2, x2, 32	# 719
	lw		x1, -28(x2)	# 719
	lw		x27, -24(x2)	# 720
	fsw		f0, -32(x2)	# 720
	sw		x1, -40(x2)	# 720
	addi	x2, x2, -44	# 720
	lw		x31, 0(x27)	# 720
	jalr	x1, x31, 0	# 720
	addi	x2, x2, 44	# 720
	lw		x1, -40(x2)	# 720
	sw		x1, -40(x2)	# 721
	addi	x2, x2, -44	# 721
	jal		x1, fneg.2476	# 721
	addi	x2, x2, 44	# 721
	lw		x1, -40(x2)	# 721
	ori		x4, x0, 4	# 721
	lw		x5, -20(x2)	# 721
	mul		x4, x5, x4	# 721
	lw		x5, -16(x2)	# 721
	add		x4, x5, x4	# 721
	fsw		f0, 0(x4)	# 721
	sw		x1, -40(x2)	# 722
	addi	x2, x2, -44	# 722
	jal		x1, min_caml_read_float	# 722
	addi	x2, x2, 44	# 722
	lw		x1, -40(x2)	# 722
	sw		x1, -40(x2)	# 722
	addi	x2, x2, -44	# 722
	jal		x1, rad.2661	# 722
	addi	x2, x2, 44	# 722
	lw		x1, -40(x2)	# 722
	flw		f1, -32(x2)	# 723
	lw		x27, -12(x2)	# 723
	fsw		f0, -40(x2)	# 723
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -48(x2)	# 723
	addi	x2, x2, -52	# 723
	lw		x31, 0(x27)	# 723
	jalr	x1, x31, 0	# 723
	addi	x2, x2, 52	# 723
	lw		x1, -48(x2)	# 723
	flw		f1, -40(x2)	# 724
	lw		x27, -24(x2)	# 724
	fsw		f0, -48(x2)	# 724
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -56(x2)	# 724
	addi	x2, x2, -60	# 724
	lw		x31, 0(x27)	# 724
	jalr	x1, x31, 0	# 724
	addi	x2, x2, 60	# 724
	lw		x1, -56(x2)	# 724
	flw		f1, -48(x2)	# 725
	fmul	f0, f1, f0	# 725
	ori		x4, x0, 4	# 725
	lw		x5, -8(x2)	# 725
	mul		x4, x5, x4	# 725
	lw		x6, -16(x2)	# 725
	add		x4, x6, x4	# 725
	fsw		f0, 0(x4)	# 725
	flw		f0, -40(x2)	# 726
	lw		x27, -12(x2)	# 726
	sw		x1, -56(x2)	# 726
	addi	x2, x2, -60	# 726
	lw		x31, 0(x27)	# 726
	jalr	x1, x31, 0	# 726
	addi	x2, x2, 60	# 726
	lw		x1, -56(x2)	# 726
	flw		f1, -48(x2)	# 727
	fmul	f0, f1, f0	# 727
	ori		x4, x0, 4	# 727
	lw		x5, -4(x2)	# 727
	mul		x4, x5, x4	# 727
	lw		x5, -16(x2)	# 727
	add		x4, x5, x4	# 727
	fsw		f0, 0(x4)	# 727
	sw		x1, -56(x2)	# 728
	addi	x2, x2, -60	# 728
	jal		x1, min_caml_read_float	# 728
	addi	x2, x2, 60	# 728
	lw		x1, -56(x2)	# 728
	ori		x4, x0, 4	# 728
	lw		x5, -8(x2)	# 728
	mul		x4, x5, x4	# 728
	lw		x5, 0(x2)	# 728
	add		x4, x5, x4	# 728
	fsw		f0, 0(x4)	# 728
	jalr	x0, x1, 0	# 728
rotate_quadratic_matrix.2667:
	lw		x6, 20(x27)	# 738
	lw		x7, 16(x27)	# 738
	lw		x8, 12(x27)	# 738
	lw		x9, 8(x27)	# 738
	lw		x10, 4(x27)	# 738
	ori		x11, x0, 4	# 738
	mul		x11, x9, x11	# 738
	add		x11, x5, x11	# 738
	flw		f0, 0(x11)	# 738
	sw		x4, 0(x2)	# 738
	sw		x8, -4(x2)	# 738
	sw		x7, -8(x2)	# 738
	sw		x10, -12(x2)	# 738
	sw		x6, -16(x2)	# 738
	sw		x5, -20(x2)	# 738
	sw		x9, -24(x2)	# 738
	addi	x27, x7, 0
	sw		x1, -28(x2)	# 738
	addi	x2, x2, -32	# 738
	lw		x31, 0(x27)	# 738
	jalr	x1, x31, 0	# 738
	addi	x2, x2, 32	# 738
	lw		x1, -28(x2)	# 738
	ori		x4, x0, 4	# 739
	lw		x5, -24(x2)	# 739
	mul		x4, x5, x4	# 739
	lw		x6, -20(x2)	# 739
	add		x4, x6, x4	# 739
	flw		f1, 0(x4)	# 739
	lw		x27, -16(x2)	# 739
	fsw		f0, -32(x2)	# 739
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -40(x2)	# 739
	addi	x2, x2, -44	# 739
	lw		x31, 0(x27)	# 739
	jalr	x1, x31, 0	# 739
	addi	x2, x2, 44	# 739
	lw		x1, -40(x2)	# 739
	ori		x4, x0, 4	# 740
	lw		x5, -12(x2)	# 740
	mul		x4, x5, x4	# 740
	lw		x6, -20(x2)	# 740
	add		x4, x6, x4	# 740
	flw		f1, 0(x4)	# 740
	lw		x27, -8(x2)	# 740
	fsw		f0, -40(x2)	# 740
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -48(x2)	# 740
	addi	x2, x2, -52	# 740
	lw		x31, 0(x27)	# 740
	jalr	x1, x31, 0	# 740
	addi	x2, x2, 52	# 740
	lw		x1, -48(x2)	# 740
	ori		x4, x0, 4	# 741
	lw		x5, -12(x2)	# 741
	mul		x4, x5, x4	# 741
	lw		x6, -20(x2)	# 741
	add		x4, x6, x4	# 741
	flw		f1, 0(x4)	# 741
	lw		x27, -16(x2)	# 741
	fsw		f0, -48(x2)	# 741
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -56(x2)	# 741
	addi	x2, x2, -60	# 741
	lw		x31, 0(x27)	# 741
	jalr	x1, x31, 0	# 741
	addi	x2, x2, 60	# 741
	lw		x1, -56(x2)	# 741
	ori		x4, x0, 4	# 742
	lw		x5, -4(x2)	# 742
	mul		x4, x5, x4	# 742
	lw		x6, -20(x2)	# 742
	add		x4, x6, x4	# 742
	flw		f1, 0(x4)	# 742
	lw		x27, -8(x2)	# 742
	fsw		f0, -56(x2)	# 742
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -64(x2)	# 742
	addi	x2, x2, -68	# 742
	lw		x31, 0(x27)	# 742
	jalr	x1, x31, 0	# 742
	addi	x2, x2, 68	# 742
	lw		x1, -64(x2)	# 742
	ori		x4, x0, 4	# 743
	lw		x5, -4(x2)	# 743
	mul		x4, x5, x4	# 743
	lw		x6, -20(x2)	# 743
	add		x4, x6, x4	# 743
	flw		f1, 0(x4)	# 743
	lw		x27, -16(x2)	# 743
	fsw		f0, -64(x2)	# 743
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -72(x2)	# 743
	addi	x2, x2, -76	# 743
	lw		x31, 0(x27)	# 743
	jalr	x1, x31, 0	# 743
	addi	x2, x2, 76	# 743
	lw		x1, -72(x2)	# 743
	flw		f1, -64(x2)	# 745
	flw		f2, -48(x2)	# 745
	fmul	f3, f2, f1	# 745
	flw		f4, -56(x2)	# 746
	flw		f5, -40(x2)	# 746
	fmul	f6, f5, f4	# 746
	fmul	f7, f6, f1	# 746
	flw		f8, -32(x2)	# 746
	fmul	f9, f8, f0	# 746
	fsub	f7, f7, f9	# 746
	fmul	f9, f8, f4	# 747
	fmul	f10, f9, f1	# 747
	fmul	f11, f5, f0	# 747
	fadd	f10, f10, f11	# 747
	fmul	f11, f2, f0	# 749
	fmul	f6, f6, f0	# 750
	fmul	f12, f8, f1	# 750
	fadd	f6, f6, f12	# 750
	fmul	f0, f9, f0	# 751
	fmul	f1, f5, f1	# 751
	fsub	f0, f0, f1	# 751
	fsw		f0, -72(x2)	# 753
	fsw		f10, -80(x2)	# 753
	fsw		f6, -88(x2)	# 753
	fsw		f7, -96(x2)	# 753
	fsw		f11, -104(x2)	# 753
	fsw		f3, -112(x2)	# 753
	fsub	f0, f0, f0
	fadd	f0, f0, f4
	sw		x1, -120(x2)	# 753
	addi	x2, x2, -124	# 753
	jal		x1, fneg.2476	# 753
	addi	x2, x2, 124	# 753
	lw		x1, -120(x2)	# 753
	flw		f1, -48(x2)	# 754
	flw		f2, -40(x2)	# 754
	fmul	f2, f2, f1	# 754
	flw		f3, -32(x2)	# 755
	fmul	f1, f3, f1	# 755
	ori		x4, x0, 4	# 758
	lw		x5, -24(x2)	# 758
	mul		x4, x5, x4	# 758
	lw		x6, 0(x2)	# 758
	add		x4, x6, x4	# 758
	flw		f3, 0(x4)	# 758
	ori		x4, x0, 4	# 759
	lw		x7, -12(x2)	# 759
	mul		x4, x7, x4	# 759
	add		x4, x6, x4	# 759
	flw		f4, 0(x4)	# 759
	ori		x4, x0, 4	# 760
	lw		x8, -4(x2)	# 760
	mul		x4, x8, x4	# 760
	add		x4, x6, x4	# 760
	flw		f5, 0(x4)	# 760
	flw		f6, -112(x2)	# 765
	fsw		f1, -120(x2)	# 765
	fsw		f2, -128(x2)	# 765
	fsw		f5, -136(x2)	# 765
	fsw		f0, -144(x2)	# 765
	fsw		f4, -152(x2)	# 765
	fsw		f3, -160(x2)	# 765
	fsub	f0, f0, f0
	fadd	f0, f0, f6
	sw		x1, -168(x2)	# 765
	addi	x2, x2, -172	# 765
	jal		x1, fsqr.2485	# 765
	addi	x2, x2, 172	# 765
	lw		x1, -168(x2)	# 765
	flw		f1, -160(x2)	# 765
	fmul	f0, f1, f0	# 765
	flw		f2, -104(x2)	# 765
	fsw		f0, -168(x2)	# 765
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -176(x2)	# 765
	addi	x2, x2, -180	# 765
	jal		x1, fsqr.2485	# 765
	addi	x2, x2, 180	# 765
	lw		x1, -176(x2)	# 765
	flw		f1, -152(x2)	# 765
	fmul	f0, f1, f0	# 765
	flw		f2, -168(x2)	# 765
	fadd	f0, f2, f0	# 765
	flw		f2, -144(x2)	# 765
	fsw		f0, -176(x2)	# 765
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -184(x2)	# 765
	addi	x2, x2, -188	# 765
	jal		x1, fsqr.2485	# 765
	addi	x2, x2, 188	# 765
	lw		x1, -184(x2)	# 765
	flw		f1, -136(x2)	# 765
	fmul	f0, f1, f0	# 765
	flw		f2, -176(x2)	# 765
	fadd	f0, f2, f0	# 765
	ori		x4, x0, 4	# 765
	lw		x5, -24(x2)	# 765
	mul		x4, x5, x4	# 765
	lw		x6, 0(x2)	# 765
	add		x4, x6, x4	# 765
	fsw		f0, 0(x4)	# 765
	flw		f0, -96(x2)	# 766
	sw		x1, -184(x2)	# 766
	addi	x2, x2, -188	# 766
	jal		x1, fsqr.2485	# 766
	addi	x2, x2, 188	# 766
	lw		x1, -184(x2)	# 766
	flw		f1, -160(x2)	# 766
	fmul	f0, f1, f0	# 766
	flw		f2, -88(x2)	# 766
	fsw		f0, -184(x2)	# 766
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -192(x2)	# 766
	addi	x2, x2, -196	# 766
	jal		x1, fsqr.2485	# 766
	addi	x2, x2, 196	# 766
	lw		x1, -192(x2)	# 766
	flw		f1, -152(x2)	# 766
	fmul	f0, f1, f0	# 766
	flw		f2, -184(x2)	# 766
	fadd	f0, f2, f0	# 766
	flw		f2, -128(x2)	# 766
	fsw		f0, -192(x2)	# 766
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -200(x2)	# 766
	addi	x2, x2, -204	# 766
	jal		x1, fsqr.2485	# 766
	addi	x2, x2, 204	# 766
	lw		x1, -200(x2)	# 766
	flw		f1, -136(x2)	# 766
	fmul	f0, f1, f0	# 766
	flw		f2, -192(x2)	# 766
	fadd	f0, f2, f0	# 766
	ori		x4, x0, 4	# 766
	lw		x5, -12(x2)	# 766
	mul		x4, x5, x4	# 766
	lw		x6, 0(x2)	# 766
	add		x4, x6, x4	# 766
	fsw		f0, 0(x4)	# 766
	flw		f0, -80(x2)	# 767
	sw		x1, -200(x2)	# 767
	addi	x2, x2, -204	# 767
	jal		x1, fsqr.2485	# 767
	addi	x2, x2, 204	# 767
	lw		x1, -200(x2)	# 767
	flw		f1, -160(x2)	# 767
	fmul	f0, f1, f0	# 767
	flw		f2, -72(x2)	# 767
	fsw		f0, -200(x2)	# 767
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -208(x2)	# 767
	addi	x2, x2, -212	# 767
	jal		x1, fsqr.2485	# 767
	addi	x2, x2, 212	# 767
	lw		x1, -208(x2)	# 767
	flw		f1, -152(x2)	# 767
	fmul	f0, f1, f0	# 767
	flw		f2, -200(x2)	# 767
	fadd	f0, f2, f0	# 767
	flw		f2, -120(x2)	# 767
	fsw		f0, -208(x2)	# 767
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -216(x2)	# 767
	addi	x2, x2, -220	# 767
	jal		x1, fsqr.2485	# 767
	addi	x2, x2, 220	# 767
	lw		x1, -216(x2)	# 767
	flw		f1, -136(x2)	# 767
	fmul	f0, f1, f0	# 767
	flw		f2, -208(x2)	# 767
	fadd	f0, f2, f0	# 767
	ori		x4, x0, 4	# 767
	lw		x5, -4(x2)	# 767
	mul		x4, x5, x4	# 767
	lw		x6, 0(x2)	# 767
	add		x4, x6, x4	# 767
	fsw		f0, 0(x4)	# 767
	lui		x4, %hi(l.6530)	# 770
	ori		x4, x0, %lo(l.6530)	# 770
	flw		f0, 0(x4)	# 770
	flw		f2, -96(x2)	# 770
	flw		f3, -160(x2)	# 770
	fmul	f4, f3, f2	# 770
	flw		f5, -80(x2)	# 770
	fmul	f4, f4, f5	# 770
	flw		f6, -88(x2)	# 770
	flw		f7, -152(x2)	# 770
	fmul	f8, f7, f6	# 770
	flw		f9, -72(x2)	# 770
	fmul	f8, f8, f9	# 770
	fadd	f4, f4, f8	# 770
	flw		f8, -128(x2)	# 770
	fmul	f10, f1, f8	# 770
	flw		f11, -120(x2)	# 770
	fmul	f10, f10, f11	# 770
	fadd	f4, f4, f10	# 770
	fmul	f4, f0, f4	# 770
	ori		x4, x0, 4	# 770
	lw		x6, -24(x2)	# 770
	mul		x4, x6, x4	# 770
	lw		x6, -20(x2)	# 770
	add		x4, x6, x4	# 770
	fsw		f4, 0(x4)	# 770
	flw		f4, -112(x2)	# 771
	fmul	f3, f3, f4	# 771
	fmul	f4, f3, f5	# 771
	flw		f5, -104(x2)	# 771
	fmul	f5, f7, f5	# 771
	fmul	f7, f5, f9	# 771
	fadd	f4, f4, f7	# 771
	flw		f7, -144(x2)	# 771
	fmul	f1, f1, f7	# 771
	fmul	f7, f1, f11	# 771
	fadd	f4, f4, f7	# 771
	fmul	f4, f0, f4	# 771
	ori		x4, x0, 4	# 771
	lw		x7, -12(x2)	# 771
	mul		x4, x7, x4	# 771
	add		x4, x6, x4	# 771
	fsw		f4, 0(x4)	# 771
	fmul	f2, f3, f2	# 772
	fmul	f3, f5, f6	# 772
	fadd	f2, f2, f3	# 772
	fmul	f1, f1, f8	# 772
	fadd	f1, f2, f1	# 772
	fmul	f0, f0, f1	# 772
	ori		x4, x0, 4	# 772
	mul		x4, x5, x4	# 772
	add		x4, x6, x4	# 772
	fsw		f0, 0(x4)	# 772
	jalr	x0, x1, 0	# 772
read_nth_object.2670:
	lw		x5, 40(x27)	# 779
	lw		x6, 36(x27)	# 779
	lw		x7, 32(x27)	# 779
	lw		x8, 28(x27)	# 779
	lw		x9, 24(x27)	# 779
	lw		x10, 20(x27)	# 779
	lw		x11, 16(x27)	# 779
	lw		x12, 12(x27)	# 779
	lw		x13, 8(x27)	# 779
	flw		f0, 4(x27)	# 779
	sw		x7, 0(x2)	# 779
	sw		x5, -4(x2)	# 779
	sw		x6, -8(x2)	# 779
	sw		x8, -12(x2)	# 779
	sw		x4, -16(x2)	# 779
	sw		x9, -20(x2)	# 779
	sw		x13, -24(x2)	# 779
	sw		x12, -28(x2)	# 779
	fsw		f0, -32(x2)	# 779
	sw		x11, -40(x2)	# 779
	sw		x10, -44(x2)	# 779
	sw		x1, -48(x2)	# 779
	addi	x2, x2, -52	# 779
	jal		x1, min_caml_read_int	# 779
	addi	x2, x2, 52	# 779
	lw		x1, -48(x2)	# 779
	lw		x5, -44(x2)	# 780
	beq		x4, x5, beq.12790	# 780
	sw		x4, -48(x2)	# 782
	sw		x1, -52(x2)	# 782
	addi	x2, x2, -56	# 782
	jal		x1, min_caml_read_int	# 782
	addi	x2, x2, 56	# 782
	lw		x1, -52(x2)	# 782
	sw		x4, -52(x2)	# 783
	sw		x1, -56(x2)	# 783
	addi	x2, x2, -60	# 783
	jal		x1, min_caml_read_int	# 783
	addi	x2, x2, 60	# 783
	lw		x1, -56(x2)	# 783
	sw		x4, -56(x2)	# 784
	sw		x1, -60(x2)	# 784
	addi	x2, x2, -64	# 784
	jal		x1, min_caml_read_int	# 784
	addi	x2, x2, 64	# 784
	lw		x1, -60(x2)	# 784
	flw		f0, -32(x2)	# 786
	lw		x5, -40(x2)	# 786
	sw		x4, -60(x2)	# 786
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 786
	addi	x2, x2, -68	# 786
	jal		x1, min_caml_create_float_array	# 786
	addi	x2, x2, 68	# 786
	lw		x1, -64(x2)	# 786
	sw		x4, -64(x2)	# 787
	sw		x1, -68(x2)	# 787
	addi	x2, x2, -72	# 787
	jal		x1, min_caml_read_float	# 787
	addi	x2, x2, 72	# 787
	lw		x1, -68(x2)	# 787
	ori		x4, x0, 4	# 787
	lw		x5, -28(x2)	# 787
	mul		x4, x5, x4	# 787
	lw		x6, -64(x2)	# 787
	add		x4, x6, x4	# 787
	fsw		f0, 0(x4)	# 787
	sw		x1, -68(x2)	# 788
	addi	x2, x2, -72	# 788
	jal		x1, min_caml_read_float	# 788
	addi	x2, x2, 72	# 788
	lw		x1, -68(x2)	# 788
	ori		x4, x0, 4	# 788
	lw		x5, -24(x2)	# 788
	mul		x4, x5, x4	# 788
	lw		x6, -64(x2)	# 788
	add		x4, x6, x4	# 788
	fsw		f0, 0(x4)	# 788
	sw		x1, -68(x2)	# 789
	addi	x2, x2, -72	# 789
	jal		x1, min_caml_read_float	# 789
	addi	x2, x2, 72	# 789
	lw		x1, -68(x2)	# 789
	ori		x4, x0, 4	# 789
	lw		x5, -20(x2)	# 789
	mul		x4, x5, x4	# 789
	lw		x6, -64(x2)	# 789
	add		x4, x6, x4	# 789
	fsw		f0, 0(x4)	# 789
	flw		f0, -32(x2)	# 791
	lw		x4, -40(x2)	# 791
	sw		x1, -68(x2)	# 791
	addi	x2, x2, -72	# 791
	jal		x1, min_caml_create_float_array	# 791
	addi	x2, x2, 72	# 791
	lw		x1, -68(x2)	# 791
	sw		x4, -68(x2)	# 792
	sw		x1, -72(x2)	# 792
	addi	x2, x2, -76	# 792
	jal		x1, min_caml_read_float	# 792
	addi	x2, x2, 76	# 792
	lw		x1, -72(x2)	# 792
	ori		x4, x0, 4	# 792
	lw		x5, -28(x2)	# 792
	mul		x4, x5, x4	# 792
	lw		x6, -68(x2)	# 792
	add		x4, x6, x4	# 792
	fsw		f0, 0(x4)	# 792
	sw		x1, -72(x2)	# 793
	addi	x2, x2, -76	# 793
	jal		x1, min_caml_read_float	# 793
	addi	x2, x2, 76	# 793
	lw		x1, -72(x2)	# 793
	ori		x4, x0, 4	# 793
	lw		x5, -24(x2)	# 793
	mul		x4, x5, x4	# 793
	lw		x6, -68(x2)	# 793
	add		x4, x6, x4	# 793
	fsw		f0, 0(x4)	# 793
	sw		x1, -72(x2)	# 794
	addi	x2, x2, -76	# 794
	jal		x1, min_caml_read_float	# 794
	addi	x2, x2, 76	# 794
	lw		x1, -72(x2)	# 794
	ori		x4, x0, 4	# 794
	lw		x5, -20(x2)	# 794
	mul		x4, x5, x4	# 794
	lw		x6, -68(x2)	# 794
	add		x4, x6, x4	# 794
	fsw		f0, 0(x4)	# 794
	sw		x1, -72(x2)	# 796
	addi	x2, x2, -76	# 796
	jal		x1, min_caml_read_float	# 796
	addi	x2, x2, 76	# 796
	lw		x1, -72(x2)	# 796
	sw		x1, -72(x2)	# 796
	addi	x2, x2, -76	# 796
	jal		x1, fisneg.2474	# 796
	addi	x2, x2, 76	# 796
	lw		x1, -72(x2)	# 796
	flw		f0, -32(x2)	# 798
	lw		x5, -20(x2)	# 798
	sw		x4, -72(x2)	# 798
	addi	x4, x5, 0
	sw		x1, -76(x2)	# 798
	addi	x2, x2, -80	# 798
	jal		x1, min_caml_create_float_array	# 798
	addi	x2, x2, 80	# 798
	lw		x1, -76(x2)	# 798
	sw		x4, -76(x2)	# 799
	sw		x1, -80(x2)	# 799
	addi	x2, x2, -84	# 799
	jal		x1, min_caml_read_float	# 799
	addi	x2, x2, 84	# 799
	lw		x1, -80(x2)	# 799
	ori		x4, x0, 4	# 799
	lw		x5, -28(x2)	# 799
	mul		x4, x5, x4	# 799
	lw		x6, -76(x2)	# 799
	add		x4, x6, x4	# 799
	fsw		f0, 0(x4)	# 799
	sw		x1, -80(x2)	# 800
	addi	x2, x2, -84	# 800
	jal		x1, min_caml_read_float	# 800
	addi	x2, x2, 84	# 800
	lw		x1, -80(x2)	# 800
	ori		x4, x0, 4	# 800
	lw		x5, -24(x2)	# 800
	mul		x4, x5, x4	# 800
	lw		x6, -76(x2)	# 800
	add		x4, x6, x4	# 800
	fsw		f0, 0(x4)	# 800
	flw		f0, -32(x2)	# 802
	lw		x4, -40(x2)	# 802
	sw		x1, -80(x2)	# 802
	addi	x2, x2, -84	# 802
	jal		x1, min_caml_create_float_array	# 802
	addi	x2, x2, 84	# 802
	lw		x1, -80(x2)	# 802
	sw		x4, -80(x2)	# 803
	sw		x1, -84(x2)	# 803
	addi	x2, x2, -88	# 803
	jal		x1, min_caml_read_float	# 803
	addi	x2, x2, 88	# 803
	lw		x1, -84(x2)	# 803
	ori		x4, x0, 4	# 803
	lw		x5, -28(x2)	# 803
	mul		x4, x5, x4	# 803
	lw		x6, -80(x2)	# 803
	add		x4, x6, x4	# 803
	fsw		f0, 0(x4)	# 803
	sw		x1, -84(x2)	# 804
	addi	x2, x2, -88	# 804
	jal		x1, min_caml_read_float	# 804
	addi	x2, x2, 88	# 804
	lw		x1, -84(x2)	# 804
	ori		x4, x0, 4	# 804
	lw		x5, -24(x2)	# 804
	mul		x4, x5, x4	# 804
	lw		x5, -80(x2)	# 804
	add		x4, x5, x4	# 804
	fsw		f0, 0(x4)	# 804
	sw		x1, -84(x2)	# 805
	addi	x2, x2, -88	# 805
	jal		x1, min_caml_read_float	# 805
	addi	x2, x2, 88	# 805
	lw		x1, -84(x2)	# 805
	ori		x4, x0, 4	# 805
	lw		x5, -20(x2)	# 805
	mul		x4, x5, x4	# 805
	lw		x6, -80(x2)	# 805
	add		x4, x6, x4	# 805
	fsw		f0, 0(x4)	# 805
	flw		f0, -32(x2)	# 807
	lw		x4, -40(x2)	# 807
	sw		x1, -84(x2)	# 807
	addi	x2, x2, -88	# 807
	jal		x1, min_caml_create_float_array	# 807
	addi	x2, x2, 88	# 807
	lw		x1, -84(x2)	# 807
	lw		x5, -28(x2)	# 808
	lw		x6, -60(x2)	# 808
	sw		x4, -84(x2)	# 808
	beq		x6, x5, beq.12792	# 808
	addi	x7, x0, 0	# 810
	sw		x7, -88(x2)	# 810
	sw		x1, -92(x2)	# 810
	addi	x2, x2, -96	# 810
	jal		x1, min_caml_read_float	# 810
	addi	x2, x2, 96	# 810
	lw		x1, -92(x2)	# 810
	sw		x1, -92(x2)	# 810
	addi	x2, x2, -96	# 810
	jal		x1, rad.2661	# 810
	addi	x2, x2, 96	# 810
	lw		x1, -92(x2)	# 810
	ori		x4, x0, 4	# 810
	lw		x5, -88(x2)	# 810
	mul		x4, x5, x4	# 810
	lw		x5, -84(x2)	# 810
	add		x4, x5, x4	# 810
	fsw		f0, 0(x4)	# 810
	ori		x4, x0, 1	# 811
	sw		x4, -92(x2)	# 811
	sw		x1, -96(x2)	# 811
	addi	x2, x2, -100	# 811
	jal		x1, min_caml_read_float	# 811
	addi	x2, x2, 100	# 811
	lw		x1, -96(x2)	# 811
	sw		x1, -96(x2)	# 811
	addi	x2, x2, -100	# 811
	jal		x1, rad.2661	# 811
	addi	x2, x2, 100	# 811
	lw		x1, -96(x2)	# 811
	ori		x4, x0, 4	# 811
	lw		x5, -92(x2)	# 811
	mul		x4, x5, x4	# 811
	lw		x5, -84(x2)	# 811
	add		x4, x5, x4	# 811
	fsw		f0, 0(x4)	# 811
	ori		x4, x0, 2	# 812
	sw		x4, -96(x2)	# 812
	sw		x1, -100(x2)	# 812
	addi	x2, x2, -104	# 812
	jal		x1, min_caml_read_float	# 812
	addi	x2, x2, 104	# 812
	lw		x1, -100(x2)	# 812
	sw		x1, -100(x2)	# 812
	addi	x2, x2, -104	# 812
	jal		x1, rad.2661	# 812
	addi	x2, x2, 104	# 812
	lw		x1, -100(x2)	# 812
	ori		x4, x0, 4	# 812
	lw		x5, -96(x2)	# 812
	mul		x4, x5, x4	# 812
	lw		x5, -84(x2)	# 812
	add		x4, x5, x4	# 812
	fsw		f0, 0(x4)	# 812
	jal		x0, beq_cont.12791	# 808
beq.12792:
beq_cont.12791:
	lw		x4, -20(x2)	# 819
	lw		x5, -52(x2)	# 819
	beq		x5, x4, beq.12794	# 819
	lw		x4, -72(x2)	# 819
	jal		x0, beq_cont.12793	# 819
beq.12794:
	ori		x4, x0, 1	# 819
beq_cont.12793:
	ori		x6, x0, 4	# 820
	flw		f0, -32(x2)	# 820
	sw		x4, -100(x2)	# 820
	addi	x4, x6, 0
	sw		x1, -104(x2)	# 820
	addi	x2, x2, -108	# 820
	jal		x1, min_caml_create_float_array	# 820
	addi	x2, x2, 108	# 820
	lw		x1, -104(x2)	# 820
	addi	x5, x3, 0	# 823
	addi	x3, x3, 44	# 823
	sw		x4, 40(x5)	# 823
	lw		x4, -84(x2)	# 823
	sw		x4, 36(x5)	# 823
	lw		x6, -80(x2)	# 823
	sw		x6, 32(x5)	# 823
	lw		x6, -76(x2)	# 823
	sw		x6, 28(x5)	# 823
	lw		x6, -100(x2)	# 823
	sw		x6, 24(x5)	# 823
	lw		x6, -68(x2)	# 823
	sw		x6, 20(x5)	# 823
	lw		x6, -64(x2)	# 823
	sw		x6, 16(x5)	# 823
	lw		x7, -60(x2)	# 823
	sw		x7, 12(x5)	# 823
	lw		x8, -56(x2)	# 823
	sw		x8, 8(x5)	# 823
	lw		x8, -52(x2)	# 823
	sw		x8, 4(x5)	# 823
	lw		x9, -48(x2)	# 823
	sw		x9, 0(x5)	# 823
	ori		x9, x0, 4	# 831
	lw		x10, -16(x2)	# 831
	mul		x9, x10, x9	# 831
	lw		x10, -12(x2)	# 831
	add		x9, x10, x9	# 831
	sw		x5, 0(x9)	# 831
	lw		x5, -40(x2)	# 833
	beq		x8, x5, beq.12796	# 833
	ori		x5, x0, 2	# 843
	beq		x8, x5, beq.12798	# 843
	jal		x0, beq_cont.12797	# 843
beq.12798:
	addi	x5, x0, 0	# 845
	lw		x8, -72(x2)	# 845
	beq		x8, x5, beq.12800	# 845
	addi	x5, x0, 0	# 845
	jal		x0, beq_cont.12799	# 845
beq.12800:
	ori		x5, x0, 1	# 845
beq_cont.12799:
	lw		x27, -4(x2)	# 845
	addi	x4, x6, 0
	sw		x1, -104(x2)	# 845
	addi	x2, x2, -108	# 845
	lw		x31, 0(x27)	# 845
	jalr	x1, x31, 0	# 845
	addi	x2, x2, 108	# 845
	lw		x1, -104(x2)	# 845
beq_cont.12797:
	jal		x0, beq_cont.12795	# 833
beq.12796:
	addi	x5, x0, 0	# 836
	ori		x8, x0, 4	# 836
	mul		x5, x5, x8	# 836
	add		x5, x6, x5	# 836
	flw		f0, 0(x5)	# 836
	addi	x5, x0, 0	# 837
	sw		x5, -104(x2)	# 837
	fsw		f0, -112(x2)	# 837
	sw		x1, -120(x2)	# 837
	addi	x2, x2, -124	# 837
	jal		x1, fiszero.2470	# 837
	addi	x2, x2, 124	# 837
	lw		x1, -120(x2)	# 837
	addi	x5, x0, 0	# 837
	beq		x4, x5, beq.12803	# 837
	lui		x4, %hi(l.6117)	# 837
	ori		x4, x0, %lo(l.6117)	# 837
	flw		f0, 0(x4)	# 837
	jal		x0, beq_cont.12802	# 837
beq.12803:
	flw		f0, -112(x2)	# 837
	lw		x27, -8(x2)	# 837
	sw		x1, -120(x2)	# 837
	addi	x2, x2, -124	# 837
	lw		x31, 0(x27)	# 837
	jalr	x1, x31, 0	# 837
	addi	x2, x2, 124	# 837
	lw		x1, -120(x2)	# 837
	flw		f1, -112(x2)	# 837
	fsw		f0, -120(x2)	# 837
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -128(x2)	# 837
	addi	x2, x2, -132	# 837
	jal		x1, fsqr.2485	# 837
	addi	x2, x2, 132	# 837
	lw		x1, -128(x2)	# 837
	flw		f1, -120(x2)	# 837
	fdiv	f0, f1, f0	# 837
beq_cont.12802:
	ori		x4, x0, 4	# 837
	lw		x5, -104(x2)	# 837
	mul		x4, x5, x4	# 837
	lw		x5, -64(x2)	# 837
	add		x4, x5, x4	# 837
	fsw		f0, 0(x4)	# 837
	ori		x4, x0, 1	# 838
	ori		x6, x0, 4	# 838
	mul		x4, x4, x6	# 838
	add		x4, x5, x4	# 838
	flw		f0, 0(x4)	# 838
	ori		x4, x0, 1	# 839
	sw		x4, -128(x2)	# 839
	fsw		f0, -136(x2)	# 839
	sw		x1, -144(x2)	# 839
	addi	x2, x2, -148	# 839
	jal		x1, fiszero.2470	# 839
	addi	x2, x2, 148	# 839
	lw		x1, -144(x2)	# 839
	addi	x5, x0, 0	# 839
	beq		x4, x5, beq.12806	# 839
	lui		x4, %hi(l.6117)	# 839
	ori		x4, x0, %lo(l.6117)	# 839
	flw		f0, 0(x4)	# 839
	jal		x0, beq_cont.12805	# 839
beq.12806:
	flw		f0, -136(x2)	# 839
	lw		x27, -8(x2)	# 839
	sw		x1, -144(x2)	# 839
	addi	x2, x2, -148	# 839
	lw		x31, 0(x27)	# 839
	jalr	x1, x31, 0	# 839
	addi	x2, x2, 148	# 839
	lw		x1, -144(x2)	# 839
	flw		f1, -136(x2)	# 839
	fsw		f0, -144(x2)	# 839
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -152(x2)	# 839
	addi	x2, x2, -156	# 839
	jal		x1, fsqr.2485	# 839
	addi	x2, x2, 156	# 839
	lw		x1, -152(x2)	# 839
	flw		f1, -144(x2)	# 839
	fdiv	f0, f1, f0	# 839
beq_cont.12805:
	ori		x4, x0, 4	# 839
	lw		x5, -128(x2)	# 839
	mul		x4, x5, x4	# 839
	lw		x5, -64(x2)	# 839
	add		x4, x5, x4	# 839
	fsw		f0, 0(x4)	# 839
	ori		x4, x0, 2	# 840
	ori		x6, x0, 4	# 840
	mul		x4, x4, x6	# 840
	add		x4, x5, x4	# 840
	flw		f0, 0(x4)	# 840
	ori		x4, x0, 2	# 841
	sw		x4, -152(x2)	# 841
	fsw		f0, -160(x2)	# 841
	sw		x1, -168(x2)	# 841
	addi	x2, x2, -172	# 841
	jal		x1, fiszero.2470	# 841
	addi	x2, x2, 172	# 841
	lw		x1, -168(x2)	# 841
	addi	x5, x0, 0	# 841
	beq		x4, x5, beq.12809	# 841
	lui		x4, %hi(l.6117)	# 841
	ori		x4, x0, %lo(l.6117)	# 841
	flw		f0, 0(x4)	# 841
	jal		x0, beq_cont.12808	# 841
beq.12809:
	flw		f0, -160(x2)	# 841
	lw		x27, -8(x2)	# 841
	sw		x1, -168(x2)	# 841
	addi	x2, x2, -172	# 841
	lw		x31, 0(x27)	# 841
	jalr	x1, x31, 0	# 841
	addi	x2, x2, 172	# 841
	lw		x1, -168(x2)	# 841
	flw		f1, -160(x2)	# 841
	fsw		f0, -168(x2)	# 841
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -176(x2)	# 841
	addi	x2, x2, -180	# 841
	jal		x1, fsqr.2485	# 841
	addi	x2, x2, 180	# 841
	lw		x1, -176(x2)	# 841
	flw		f1, -168(x2)	# 841
	fdiv	f0, f1, f0	# 841
beq_cont.12808:
	ori		x4, x0, 4	# 841
	lw		x5, -152(x2)	# 841
	mul		x4, x5, x4	# 841
	lw		x5, -64(x2)	# 841
	add		x4, x5, x4	# 841
	fsw		f0, 0(x4)	# 841
beq_cont.12795:
	lw		x4, -28(x2)	# 849
	lw		x5, -60(x2)	# 849
	beq		x5, x4, beq.12811	# 849
	lw		x4, -64(x2)	# 850
	lw		x5, -84(x2)	# 850
	lw		x27, 0(x2)	# 850
	sw		x1, -176(x2)	# 850
	addi	x2, x2, -180	# 850
	lw		x31, 0(x27)	# 850
	jalr	x1, x31, 0	# 850
	addi	x2, x2, 180	# 850
	lw		x1, -176(x2)	# 850
	jal		x0, beq_cont.12810	# 849
beq.12811:
beq_cont.12810:
	ori		x4, x0, 1	# 853
	jalr	x0, x1, 0	# 853
beq.12790:
	addi	x4, x0, 0	# 856
	jalr	x0, x1, 0	# 856
read_object.2672:
	lw		x5, 20(x27)	# 861
	lw		x6, 16(x27)	# 861
	lw		x7, 12(x27)	# 861
	lw		x8, 8(x27)	# 861
	lw		x9, 4(x27)	# 861
	ble		x7, x4, ble.12812	# 861
	sw		x27, 0(x2)	# 862
	sw		x9, -4(x2)	# 862
	sw		x4, -8(x2)	# 862
	sw		x6, -12(x2)	# 862
	sw		x8, -16(x2)	# 862
	addi	x27, x5, 0
	sw		x1, -20(x2)	# 862
	addi	x2, x2, -24	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 24	# 862
	lw		x1, -20(x2)	# 862
	lw		x5, -16(x2)	# 862
	beq		x4, x5, beq.12813	# 862
	lw		x4, -4(x2)	# 863
	lw		x5, -8(x2)	# 863
	add		x4, x5, x4	# 863
	lw		x27, 0(x2)	# 863
	lw		x31, 0(x27)	# 863
	jalr	x0, x31, 0	# 863
beq.12813:
	ori		x4, x0, 4	# 865
	mul		x4, x5, x4	# 865
	lw		x5, -12(x2)	# 865
	add		x4, x5, x4	# 865
	lw		x5, -8(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.12812:
	jalr	x0, x1, 0	# 866
read_all_object.2674:
	lw		x4, 8(x27)	# 870
	lw		x5, 4(x27)	# 870
	addi	x27, x4, 0
	addi	x4, x5, 0
	lw		x31, 0(x27)	# 870
	jalr	x0, x31, 0	# 870
read_net_item.2676:
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
	beq		x4, x5, beq.12816	# 878
	lw		x5, -4(x2)	# 880
	lw		x6, -8(x2)	# 880
	add		x5, x6, x5	# 880
	lw		x27, 0(x2)	# 880
	sw		x4, -16(x2)	# 880
	addi	x4, x5, 0
	sw		x1, -20(x2)	# 880
	addi	x2, x2, -24	# 880
	lw		x31, 0(x27)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 24	# 880
	lw		x1, -20(x2)	# 880
	ori		x5, x0, 4	# 881
	lw		x6, -8(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -16(x2)	# 881
	sw		x6, 0(x5)	# 881
	jalr	x0, x1, 0	# 881
beq.12816:
	lw		x4, -4(x2)	# 878
	lw		x6, -8(x2)	# 878
	add		x4, x6, x4	# 878
	jal		x0, min_caml_create_array	# 878
read_or_network.2678:
	lw		x5, 16(x27)	# 885
	lw		x6, 12(x27)	# 885
	lw		x7, 8(x27)	# 885
	lw		x8, 4(x27)	# 885
	sw		x27, 0(x2)	# 885
	sw		x8, -4(x2)	# 885
	sw		x4, -8(x2)	# 885
	sw		x6, -12(x2)	# 885
	sw		x7, -16(x2)	# 885
	addi	x4, x7, 0
	addi	x27, x5, 0
	sw		x1, -20(x2)	# 885
	addi	x2, x2, -24	# 885
	lw		x31, 0(x27)	# 885
	jalr	x1, x31, 0	# 885
	addi	x2, x2, 24	# 885
	lw		x1, -20(x2)	# 885
	addi	x5, x4, 0	# 885
	ori		x4, x0, 4	# 886
	lw		x6, -16(x2)	# 886
	mul		x4, x6, x4	# 886
	add		x4, x5, x4	# 886
	lw		x4, 0(x4)	# 886
	lw		x6, -12(x2)	# 886
	beq		x4, x6, beq.12817	# 886
	lw		x4, -4(x2)	# 889
	lw		x6, -8(x2)	# 889
	add		x4, x6, x4	# 889
	lw		x27, 0(x2)	# 889
	sw		x5, -20(x2)	# 889
	sw		x1, -24(x2)	# 889
	addi	x2, x2, -28	# 889
	lw		x31, 0(x27)	# 889
	jalr	x1, x31, 0	# 889
	addi	x2, x2, 28	# 889
	lw		x1, -24(x2)	# 889
	ori		x5, x0, 4	# 890
	lw		x6, -8(x2)	# 890
	mul		x5, x6, x5	# 890
	add		x5, x4, x5	# 890
	lw		x6, -20(x2)	# 890
	sw		x6, 0(x5)	# 890
	jalr	x0, x1, 0	# 890
beq.12817:
	lw		x4, -4(x2)	# 887
	lw		x6, -8(x2)	# 887
	add		x4, x6, x4	# 887
	jal		x0, min_caml_create_array	# 887
read_and_network.2680:
	lw		x5, 20(x27)	# 894
	lw		x6, 16(x27)	# 894
	lw		x7, 12(x27)	# 894
	lw		x8, 8(x27)	# 894
	lw		x9, 4(x27)	# 894
	sw		x27, 0(x2)	# 894
	sw		x9, -4(x2)	# 894
	sw		x6, -8(x2)	# 894
	sw		x4, -12(x2)	# 894
	sw		x7, -16(x2)	# 894
	sw		x8, -20(x2)	# 894
	addi	x4, x8, 0
	addi	x27, x5, 0
	sw		x1, -24(x2)	# 894
	addi	x2, x2, -28	# 894
	lw		x31, 0(x27)	# 894
	jalr	x1, x31, 0	# 894
	addi	x2, x2, 28	# 894
	lw		x1, -24(x2)	# 894
	ori		x5, x0, 4	# 895
	lw		x6, -20(x2)	# 895
	mul		x5, x6, x5	# 895
	add		x5, x4, x5	# 895
	lw		x5, 0(x5)	# 895
	lw		x6, -16(x2)	# 895
	beq		x5, x6, beq.12818	# 895
	ori		x5, x0, 4	# 897
	lw		x6, -12(x2)	# 897
	mul		x5, x6, x5	# 897
	lw		x7, -8(x2)	# 897
	add		x5, x7, x5	# 897
	sw		x4, 0(x5)	# 897
	lw		x4, -4(x2)	# 898
	add		x4, x6, x4	# 898
	lw		x27, 0(x2)	# 898
	lw		x31, 0(x27)	# 898
	jalr	x0, x31, 0	# 898
beq.12818:
	jalr	x0, x1, 0	# 895
read_parameter.2682:
	lw		x4, 28(x27)	# 904
	lw		x5, 24(x27)	# 904
	lw		x6, 20(x27)	# 904
	lw		x7, 16(x27)	# 904
	lw		x8, 12(x27)	# 904
	lw		x9, 8(x27)	# 904
	lw		x10, 4(x27)	# 904
	sw		x9, 0(x2)	# 904
	sw		x5, -4(x2)	# 904
	sw		x10, -8(x2)	# 904
	sw		x7, -12(x2)	# 904
	sw		x8, -16(x2)	# 904
	sw		x6, -20(x2)	# 904
	addi	x27, x4, 0
	sw		x1, -24(x2)	# 904
	addi	x2, x2, -28	# 904
	lw		x31, 0(x27)	# 904
	jalr	x1, x31, 0	# 904
	addi	x2, x2, 28	# 904
	lw		x1, -24(x2)	# 904
	lw		x27, -20(x2)	# 905
	sw		x1, -24(x2)	# 905
	addi	x2, x2, -28	# 905
	lw		x31, 0(x27)	# 905
	jalr	x1, x31, 0	# 905
	addi	x2, x2, 28	# 905
	lw		x1, -24(x2)	# 905
	lw		x27, -16(x2)	# 906
	sw		x1, -24(x2)	# 906
	addi	x2, x2, -28	# 906
	lw		x31, 0(x27)	# 906
	jalr	x1, x31, 0	# 906
	addi	x2, x2, 28	# 906
	lw		x1, -24(x2)	# 906
	lw		x4, -8(x2)	# 907
	lw		x27, -12(x2)	# 907
	sw		x1, -24(x2)	# 907
	addi	x2, x2, -28	# 907
	lw		x31, 0(x27)	# 907
	jalr	x1, x31, 0	# 907
	addi	x2, x2, 28	# 907
	lw		x1, -24(x2)	# 907
	lw		x4, -8(x2)	# 908
	lw		x27, -4(x2)	# 908
	sw		x1, -24(x2)	# 908
	addi	x2, x2, -28	# 908
	lw		x31, 0(x27)	# 908
	jalr	x1, x31, 0	# 908
	addi	x2, x2, 28	# 908
	lw		x1, -24(x2)	# 908
	ori		x5, x0, 4	# 908
	lw		x6, -8(x2)	# 908
	mul		x5, x6, x5	# 908
	lw		x6, 0(x2)	# 908
	add		x5, x6, x5	# 908
	sw		x4, 0(x5)	# 908
	jalr	x0, x1, 0	# 908
solver_rect_surface.2684:
	lw		x9, 16(x27)	# 928
	lw		x10, 12(x27)	# 928
	lw		x11, 8(x27)	# 928
	lw		x12, 4(x27)	# 928
	ori		x13, x0, 4	# 928
	mul		x13, x6, x13	# 928
	add		x13, x5, x13	# 928
	flw		f3, 0(x13)	# 928
	sw		x10, 0(x2)	# 928
	fsw		f2, -8(x2)	# 928
	sw		x8, -16(x2)	# 928
	fsw		f1, -24(x2)	# 928
	sw		x7, -32(x2)	# 928
	fsw		f0, -40(x2)	# 928
	sw		x11, -48(x2)	# 928
	sw		x9, -52(x2)	# 928
	sw		x5, -56(x2)	# 928
	sw		x6, -60(x2)	# 928
	sw		x4, -64(x2)	# 928
	sw		x12, -68(x2)	# 928
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -72(x2)	# 928
	addi	x2, x2, -76	# 928
	jal		x1, fiszero.2470	# 928
	addi	x2, x2, 76	# 928
	lw		x1, -72(x2)	# 928
	lw		x5, -68(x2)	# 928
	beq		x4, x5, beq.12824	# 928
	addi	x4, x0, 0	# 928
	jalr	x0, x1, 0	# 928
beq.12824:
	lw		x4, -64(x2)	# 929
	sw		x1, -72(x2)	# 929
	addi	x2, x2, -76	# 929
	jal		x1, o_param_abc.2606	# 929
	addi	x2, x2, 76	# 929
	lw		x1, -72(x2)	# 929
	lw		x5, -64(x2)	# 930
	sw		x4, -72(x2)	# 930
	addi	x4, x5, 0
	sw		x1, -76(x2)	# 930
	addi	x2, x2, -80	# 930
	jal		x1, o_isinvert.2596	# 930
	addi	x2, x2, 80	# 930
	lw		x1, -76(x2)	# 930
	ori		x5, x0, 4	# 930
	lw		x6, -60(x2)	# 930
	mul		x5, x6, x5	# 930
	lw		x7, -56(x2)	# 930
	add		x5, x7, x5	# 930
	flw		f0, 0(x5)	# 930
	sw		x4, -76(x2)	# 930
	sw		x1, -80(x2)	# 930
	addi	x2, x2, -84	# 930
	jal		x1, fisneg.2474	# 930
	addi	x2, x2, 84	# 930
	lw		x1, -80(x2)	# 930
	addi	x5, x4, 0	# 930
	lw		x4, -76(x2)	# 930
	lw		x27, -52(x2)	# 930
	sw		x1, -80(x2)	# 930
	addi	x2, x2, -84	# 930
	lw		x31, 0(x27)	# 930
	jalr	x1, x31, 0	# 930
	addi	x2, x2, 84	# 930
	lw		x1, -80(x2)	# 930
	ori		x5, x0, 4	# 930
	lw		x6, -60(x2)	# 930
	mul		x5, x6, x5	# 930
	lw		x7, -72(x2)	# 930
	add		x5, x7, x5	# 930
	flw		f0, 0(x5)	# 930
	lw		x27, -48(x2)	# 930
	sw		x1, -80(x2)	# 930
	addi	x2, x2, -84	# 930
	lw		x31, 0(x27)	# 930
	jalr	x1, x31, 0	# 930
	addi	x2, x2, 84	# 930
	lw		x1, -80(x2)	# 930
	flw		f1, -40(x2)	# 932
	fsub	f0, f0, f1	# 932
	ori		x4, x0, 4	# 932
	lw		x5, -60(x2)	# 932
	mul		x4, x5, x4	# 932
	lw		x5, -56(x2)	# 932
	add		x4, x5, x4	# 932
	flw		f1, 0(x4)	# 932
	fdiv	f0, f0, f1	# 932
	ori		x4, x0, 4	# 933
	lw		x6, -32(x2)	# 933
	mul		x4, x6, x4	# 933
	add		x4, x5, x4	# 933
	flw		f1, 0(x4)	# 933
	fmul	f1, f0, f1	# 933
	flw		f2, -24(x2)	# 933
	fadd	f1, f1, f2	# 933
	fsw		f0, -80(x2)	# 933
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -88(x2)	# 933
	addi	x2, x2, -92	# 933
	jal		x1, fabs.2478	# 933
	addi	x2, x2, 92	# 933
	lw		x1, -88(x2)	# 933
	ori		x4, x0, 4	# 933
	lw		x5, -32(x2)	# 933
	mul		x4, x5, x4	# 933
	lw		x5, -72(x2)	# 933
	add		x4, x5, x4	# 933
	flw		f1, 0(x4)	# 933
	sw		x1, -88(x2)	# 933
	addi	x2, x2, -92	# 933
	jal		x1, fless.2480	# 933
	addi	x2, x2, 92	# 933
	lw		x1, -88(x2)	# 933
	lw		x5, -68(x2)	# 933
	beq		x4, x5, beq.12825	# 933
	ori		x4, x0, 4	# 934
	lw		x6, -16(x2)	# 934
	mul		x4, x6, x4	# 934
	lw		x7, -56(x2)	# 934
	add		x4, x7, x4	# 934
	flw		f0, 0(x4)	# 934
	flw		f1, -80(x2)	# 934
	fmul	f0, f1, f0	# 934
	flw		f2, -8(x2)	# 934
	fadd	f0, f0, f2	# 934
	sw		x1, -88(x2)	# 934
	addi	x2, x2, -92	# 934
	jal		x1, fabs.2478	# 934
	addi	x2, x2, 92	# 934
	lw		x1, -88(x2)	# 934
	ori		x4, x0, 4	# 934
	lw		x5, -16(x2)	# 934
	mul		x4, x5, x4	# 934
	lw		x5, -72(x2)	# 934
	add		x4, x5, x4	# 934
	flw		f1, 0(x4)	# 934
	sw		x1, -88(x2)	# 934
	addi	x2, x2, -92	# 934
	jal		x1, fless.2480	# 934
	addi	x2, x2, 92	# 934
	lw		x1, -88(x2)	# 934
	lw		x5, -68(x2)	# 934
	beq		x4, x5, beq.12826	# 934
	ori		x4, x0, 4	# 935
	mul		x4, x5, x4	# 935
	lw		x5, 0(x2)	# 935
	add		x4, x5, x4	# 935
	flw		f0, -80(x2)	# 935
	fsw		f0, 0(x4)	# 935
	ori		x4, x0, 1	# 935
	jalr	x0, x1, 0	# 935
beq.12826:
	addi	x4, x0, 0	# 936
	jalr	x0, x1, 0	# 936
beq.12825:
	addi	x4, x0, 0	# 937
	jalr	x0, x1, 0	# 937
solver_rect.2693:
	lw		x6, 16(x27)	# 943
	lw		x8, 12(x27)	# 943
	lw		x7, 8(x27)	# 943
	lw		x9, 4(x27)	# 943
	fsw		f0, 0(x2)	# 943
	fsw		f2, -8(x2)	# 943
	fsw		f1, -16(x2)	# 943
	sw		x8, -24(x2)	# 943
	sw		x9, -28(x2)	# 943
	sw		x5, -32(x2)	# 943
	sw		x4, -36(x2)	# 943
	sw		x6, -40(x2)	# 943
	sw		x7, -44(x2)	# 943
	addi	x27, x6, 0
	addi	x6, x7, 0
	addi	x7, x9, 0
	sw		x1, -48(x2)	# 943
	addi	x2, x2, -52	# 943
	lw		x31, 0(x27)	# 943
	jalr	x1, x31, 0	# 943
	addi	x2, x2, 52	# 943
	lw		x1, -48(x2)	# 943
	lw		x8, -44(x2)	# 943
	beq		x4, x8, beq.12827	# 943
	ori		x4, x0, 1	# 943
	jalr	x0, x1, 0	# 943
beq.12827:
	flw		f0, -16(x2)	# 944
	flw		f1, -8(x2)	# 944
	flw		f2, 0(x2)	# 944
	lw		x4, -36(x2)	# 944
	lw		x5, -32(x2)	# 944
	lw		x6, -28(x2)	# 944
	lw		x7, -24(x2)	# 944
	lw		x27, -40(x2)	# 944
	sw		x1, -48(x2)	# 944
	addi	x2, x2, -52	# 944
	lw		x31, 0(x27)	# 944
	jalr	x1, x31, 0	# 944
	addi	x2, x2, 52	# 944
	lw		x1, -48(x2)	# 944
	lw		x7, -44(x2)	# 944
	beq		x4, x7, beq.12828	# 944
	ori		x4, x0, 2	# 944
	jalr	x0, x1, 0	# 944
beq.12828:
	flw		f0, -8(x2)	# 945
	flw		f1, 0(x2)	# 945
	flw		f2, -16(x2)	# 945
	lw		x4, -36(x2)	# 945
	lw		x5, -32(x2)	# 945
	lw		x6, -24(x2)	# 945
	lw		x8, -28(x2)	# 945
	lw		x27, -40(x2)	# 945
	sw		x1, -48(x2)	# 945
	addi	x2, x2, -52	# 945
	lw		x31, 0(x27)	# 945
	jalr	x1, x31, 0	# 945
	addi	x2, x2, 52	# 945
	lw		x1, -48(x2)	# 945
	lw		x5, -44(x2)	# 945
	beq		x4, x5, beq.12829	# 945
	ori		x4, x0, 3	# 945
	jalr	x0, x1, 0	# 945
beq.12829:
	addi	x4, x0, 0	# 946
	jalr	x0, x1, 0	# 946
solver_surface.2699:
	lw		x6, 16(x27)	# 954
	lw		x7, 12(x27)	# 954
	lw		x8, 8(x27)	# 954
	lw		x9, 4(x27)	# 954
	sw		x8, 0(x2)	# 954
	fsw		f2, -8(x2)	# 954
	fsw		f1, -16(x2)	# 954
	fsw		f0, -24(x2)	# 954
	sw		x6, -32(x2)	# 954
	sw		x9, -36(x2)	# 954
	sw		x5, -40(x2)	# 954
	sw		x7, -44(x2)	# 954
	sw		x1, -48(x2)	# 954
	addi	x2, x2, -52	# 954
	jal		x1, o_param_abc.2606	# 954
	addi	x2, x2, 52	# 954
	lw		x1, -48(x2)	# 954
	addi	x5, x4, 0	# 954
	lw		x4, -40(x2)	# 955
	lw		x27, -44(x2)	# 955
	sw		x5, -48(x2)	# 955
	sw		x1, -52(x2)	# 955
	addi	x2, x2, -56	# 955
	lw		x31, 0(x27)	# 955
	jalr	x1, x31, 0	# 955
	addi	x2, x2, 56	# 955
	lw		x1, -52(x2)	# 955
	fsw		f0, -56(x2)	# 956
	sw		x1, -64(x2)	# 956
	addi	x2, x2, -68	# 956
	jal		x1, fispos.2472	# 956
	addi	x2, x2, 68	# 956
	lw		x1, -64(x2)	# 956
	lw		x5, -36(x2)	# 956
	beq		x4, x5, beq.12832	# 956
	flw		f0, -24(x2)	# 957
	flw		f1, -16(x2)	# 957
	flw		f2, -8(x2)	# 957
	lw		x4, -48(x2)	# 957
	lw		x27, -32(x2)	# 957
	sw		x1, -64(x2)	# 957
	addi	x2, x2, -68	# 957
	lw		x31, 0(x27)	# 957
	jalr	x1, x31, 0	# 957
	addi	x2, x2, 68	# 957
	lw		x1, -64(x2)	# 957
	sw		x1, -64(x2)	# 957
	addi	x2, x2, -68	# 957
	jal		x1, fneg.2476	# 957
	addi	x2, x2, 68	# 957
	lw		x1, -64(x2)	# 957
	flw		f1, -56(x2)	# 957
	fdiv	f0, f0, f1	# 957
	ori		x4, x0, 4	# 957
	lw		x5, -36(x2)	# 957
	mul		x4, x5, x4	# 957
	lw		x5, 0(x2)	# 957
	add		x4, x5, x4	# 957
	fsw		f0, 0(x4)	# 957
	ori		x4, x0, 1	# 958
	jalr	x0, x1, 0	# 958
beq.12832:
	addi	x4, x0, 0	# 959
	jalr	x0, x1, 0	# 959
quadratic.2705:
	lw		x5, 28(x27)	# 967
	lw		x6, 24(x27)	# 967
	lw		x7, 20(x27)	# 967
	lw		x8, 16(x27)	# 967
	lw		x9, 12(x27)	# 967
	lw		x10, 8(x27)	# 967
	lw		x11, 4(x27)	# 967
	sw		x5, 0(x2)	# 967
	sw		x6, -4(x2)	# 967
	fsw		f0, -8(x2)	# 967
	sw		x7, -16(x2)	# 967
	sw		x11, -20(x2)	# 967
	sw		x8, -24(x2)	# 967
	fsw		f2, -32(x2)	# 967
	sw		x9, -40(x2)	# 967
	fsw		f1, -48(x2)	# 967
	sw		x4, -56(x2)	# 967
	sw		x10, -60(x2)	# 967
	sw		x1, -64(x2)	# 967
	addi	x2, x2, -68	# 967
	jal		x1, fsqr.2485	# 967
	addi	x2, x2, 68	# 967
	lw		x1, -64(x2)	# 967
	lw		x4, -56(x2)	# 967
	lw		x27, -60(x2)	# 967
	fsw		f0, -64(x2)	# 967
	sw		x1, -72(x2)	# 967
	addi	x2, x2, -76	# 967
	lw		x31, 0(x27)	# 967
	jalr	x1, x31, 0	# 967
	addi	x2, x2, 76	# 967
	lw		x1, -72(x2)	# 967
	flw		f1, -64(x2)	# 967
	fmul	f0, f1, f0	# 967
	flw		f1, -48(x2)	# 967
	fsw		f0, -72(x2)	# 967
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 967
	addi	x2, x2, -84	# 967
	jal		x1, fsqr.2485	# 967
	addi	x2, x2, 84	# 967
	lw		x1, -80(x2)	# 967
	lw		x4, -56(x2)	# 967
	lw		x27, -40(x2)	# 967
	fsw		f0, -80(x2)	# 967
	sw		x1, -88(x2)	# 967
	addi	x2, x2, -92	# 967
	lw		x31, 0(x27)	# 967
	jalr	x1, x31, 0	# 967
	addi	x2, x2, 92	# 967
	lw		x1, -88(x2)	# 967
	flw		f1, -80(x2)	# 967
	fmul	f0, f1, f0	# 967
	flw		f1, -72(x2)	# 967
	fadd	f0, f1, f0	# 967
	flw		f1, -32(x2)	# 967
	fsw		f0, -88(x2)	# 967
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -96(x2)	# 967
	addi	x2, x2, -100	# 967
	jal		x1, fsqr.2485	# 967
	addi	x2, x2, 100	# 967
	lw		x1, -96(x2)	# 967
	lw		x4, -56(x2)	# 967
	lw		x27, -24(x2)	# 967
	fsw		f0, -96(x2)	# 967
	sw		x1, -104(x2)	# 967
	addi	x2, x2, -108	# 967
	lw		x31, 0(x27)	# 967
	jalr	x1, x31, 0	# 967
	addi	x2, x2, 108	# 967
	lw		x1, -104(x2)	# 967
	flw		f1, -96(x2)	# 967
	fmul	f0, f1, f0	# 967
	flw		f1, -88(x2)	# 967
	fadd	f0, f1, f0	# 967
	lw		x4, -56(x2)	# 969
	fsw		f0, -104(x2)	# 969
	sw		x1, -112(x2)	# 969
	addi	x2, x2, -116	# 969
	jal		x1, o_isrot.2598	# 969
	addi	x2, x2, 116	# 969
	lw		x1, -112(x2)	# 969
	lw		x5, -20(x2)	# 969
	beq		x4, x5, beq.12835	# 969
	flw		f0, -32(x2)	# 973
	flw		f1, -48(x2)	# 973
	fmul	f2, f1, f0	# 973
	lw		x4, -56(x2)	# 973
	lw		x27, -16(x2)	# 973
	fsw		f2, -112(x2)	# 973
	sw		x1, -120(x2)	# 973
	addi	x2, x2, -124	# 973
	lw		x31, 0(x27)	# 973
	jalr	x1, x31, 0	# 973
	addi	x2, x2, 124	# 973
	lw		x1, -120(x2)	# 973
	flw		f1, -112(x2)	# 973
	fmul	f0, f1, f0	# 973
	flw		f1, -104(x2)	# 972
	fadd	f0, f1, f0	# 972
	flw		f1, -8(x2)	# 974
	flw		f2, -32(x2)	# 974
	fmul	f2, f2, f1	# 974
	lw		x4, -56(x2)	# 974
	lw		x27, -4(x2)	# 974
	fsw		f0, -120(x2)	# 974
	fsw		f2, -128(x2)	# 974
	sw		x1, -136(x2)	# 974
	addi	x2, x2, -140	# 974
	lw		x31, 0(x27)	# 974
	jalr	x1, x31, 0	# 974
	addi	x2, x2, 140	# 974
	lw		x1, -136(x2)	# 974
	flw		f1, -128(x2)	# 974
	fmul	f0, f1, f0	# 974
	flw		f1, -120(x2)	# 972
	fadd	f0, f1, f0	# 972
	flw		f1, -48(x2)	# 975
	flw		f2, -8(x2)	# 975
	fmul	f1, f2, f1	# 975
	lw		x4, -56(x2)	# 975
	lw		x27, 0(x2)	# 975
	fsw		f0, -136(x2)	# 975
	fsw		f1, -144(x2)	# 975
	sw		x1, -152(x2)	# 975
	addi	x2, x2, -156	# 975
	lw		x31, 0(x27)	# 975
	jalr	x1, x31, 0	# 975
	addi	x2, x2, 156	# 975
	lw		x1, -152(x2)	# 975
	flw		f1, -144(x2)	# 975
	fmul	f0, f1, f0	# 975
	flw		f1, -136(x2)	# 972
	fadd	f0, f1, f0	# 972
	jalr	x0, x1, 0	# 972
beq.12835:
	flw		f0, -104(x2)	# 970
	jalr	x0, x1, 0	# 970
bilinear.2710:
	lw		x5, 28(x27)	# 981
	lw		x6, 24(x27)	# 981
	lw		x7, 20(x27)	# 981
	lw		x8, 16(x27)	# 981
	lw		x9, 12(x27)	# 981
	lw		x10, 8(x27)	# 981
	lw		x11, 4(x27)	# 981
	fmul	f6, f0, f3	# 981
	sw		x5, 0(x2)	# 981
	sw		x6, -4(x2)	# 981
	fsw		f3, -8(x2)	# 981
	fsw		f0, -16(x2)	# 981
	sw		x7, -24(x2)	# 981
	sw		x11, -28(x2)	# 981
	sw		x8, -32(x2)	# 981
	fsw		f5, -40(x2)	# 981
	fsw		f2, -48(x2)	# 981
	sw		x4, -56(x2)	# 981
	sw		x9, -60(x2)	# 981
	fsw		f4, -64(x2)	# 981
	fsw		f1, -72(x2)	# 981
	fsw		f6, -80(x2)	# 981
	addi	x27, x10, 0
	sw		x1, -88(x2)	# 981
	addi	x2, x2, -92	# 981
	lw		x31, 0(x27)	# 981
	jalr	x1, x31, 0	# 981
	addi	x2, x2, 92	# 981
	lw		x1, -88(x2)	# 981
	flw		f1, -80(x2)	# 981
	fmul	f0, f1, f0	# 981
	flw		f1, -64(x2)	# 982
	flw		f2, -72(x2)	# 982
	fmul	f3, f2, f1	# 982
	lw		x4, -56(x2)	# 982
	lw		x27, -60(x2)	# 982
	fsw		f0, -88(x2)	# 982
	fsw		f3, -96(x2)	# 982
	sw		x1, -104(x2)	# 982
	addi	x2, x2, -108	# 982
	lw		x31, 0(x27)	# 982
	jalr	x1, x31, 0	# 982
	addi	x2, x2, 108	# 982
	lw		x1, -104(x2)	# 982
	flw		f1, -96(x2)	# 982
	fmul	f0, f1, f0	# 982
	flw		f1, -88(x2)	# 981
	fadd	f0, f1, f0	# 981
	flw		f1, -40(x2)	# 983
	flw		f2, -48(x2)	# 983
	fmul	f3, f2, f1	# 983
	lw		x4, -56(x2)	# 983
	lw		x27, -32(x2)	# 983
	fsw		f0, -104(x2)	# 983
	fsw		f3, -112(x2)	# 983
	sw		x1, -120(x2)	# 983
	addi	x2, x2, -124	# 983
	lw		x31, 0(x27)	# 983
	jalr	x1, x31, 0	# 983
	addi	x2, x2, 124	# 983
	lw		x1, -120(x2)	# 983
	flw		f1, -112(x2)	# 983
	fmul	f0, f1, f0	# 983
	flw		f1, -104(x2)	# 981
	fadd	f0, f1, f0	# 981
	lw		x4, -56(x2)	# 985
	fsw		f0, -120(x2)	# 985
	sw		x1, -128(x2)	# 985
	addi	x2, x2, -132	# 985
	jal		x1, o_isrot.2598	# 985
	addi	x2, x2, 132	# 985
	lw		x1, -128(x2)	# 985
	lw		x5, -28(x2)	# 985
	beq		x4, x5, beq.12837	# 985
	flw		f0, -64(x2)	# 989
	flw		f1, -48(x2)	# 989
	fmul	f2, f1, f0	# 989
	flw		f3, -40(x2)	# 989
	flw		f4, -72(x2)	# 989
	fmul	f5, f4, f3	# 989
	fadd	f2, f2, f5	# 989
	lw		x4, -56(x2)	# 989
	lw		x27, -24(x2)	# 989
	fsw		f2, -128(x2)	# 989
	sw		x1, -136(x2)	# 989
	addi	x2, x2, -140	# 989
	lw		x31, 0(x27)	# 989
	jalr	x1, x31, 0	# 989
	addi	x2, x2, 140	# 989
	lw		x1, -136(x2)	# 989
	flw		f1, -128(x2)	# 989
	fmul	f0, f1, f0	# 989
	flw		f1, -40(x2)	# 990
	flw		f2, -16(x2)	# 990
	fmul	f1, f2, f1	# 990
	flw		f3, -8(x2)	# 990
	flw		f4, -48(x2)	# 990
	fmul	f4, f4, f3	# 990
	fadd	f1, f1, f4	# 990
	lw		x4, -56(x2)	# 990
	lw		x27, -4(x2)	# 990
	fsw		f0, -136(x2)	# 990
	fsw		f1, -144(x2)	# 990
	sw		x1, -152(x2)	# 990
	addi	x2, x2, -156	# 990
	lw		x31, 0(x27)	# 990
	jalr	x1, x31, 0	# 990
	addi	x2, x2, 156	# 990
	lw		x1, -152(x2)	# 990
	flw		f1, -144(x2)	# 990
	fmul	f0, f1, f0	# 990
	flw		f1, -136(x2)	# 989
	fadd	f0, f1, f0	# 989
	flw		f1, -64(x2)	# 991
	flw		f2, -16(x2)	# 991
	fmul	f1, f2, f1	# 991
	flw		f2, -8(x2)	# 991
	flw		f3, -72(x2)	# 991
	fmul	f2, f3, f2	# 991
	fadd	f1, f1, f2	# 991
	lw		x4, -56(x2)	# 991
	lw		x27, 0(x2)	# 991
	fsw		f0, -152(x2)	# 991
	fsw		f1, -160(x2)	# 991
	sw		x1, -168(x2)	# 991
	addi	x2, x2, -172	# 991
	lw		x31, 0(x27)	# 991
	jalr	x1, x31, 0	# 991
	addi	x2, x2, 172	# 991
	lw		x1, -168(x2)	# 991
	flw		f1, -160(x2)	# 991
	fmul	f0, f1, f0	# 991
	flw		f1, -152(x2)	# 989
	fadd	f0, f1, f0	# 989
	sw		x1, -168(x2)	# 988
	addi	x2, x2, -172	# 988
	jal		x1, fhalf.2483	# 988
	addi	x2, x2, 172	# 988
	lw		x1, -168(x2)	# 988
	flw		f1, -120(x2)	# 988
	fadd	f0, f1, f0	# 988
	jalr	x0, x1, 0	# 988
beq.12837:
	flw		f0, -120(x2)	# 986
	jalr	x0, x1, 0	# 986
solver_second.2718:
	lw		x6, 28(x27)	# 1006
	lw		x7, 24(x27)	# 1006
	lw		x8, 20(x27)	# 1006
	lw		x9, 16(x27)	# 1006
	lw		x10, 12(x27)	# 1006
	lw		x11, 8(x27)	# 1006
	lw		x12, 4(x27)	# 1006
	ori		x13, x0, 4	# 1006
	mul		x13, x11, x13	# 1006
	add		x13, x5, x13	# 1006
	flw		f3, 0(x13)	# 1006
	ori		x13, x0, 4	# 1006
	mul		x13, x12, x13	# 1006
	add		x13, x5, x13	# 1006
	flw		f4, 0(x13)	# 1006
	ori		x13, x0, 4	# 1006
	mul		x13, x9, x13	# 1006
	add		x13, x5, x13	# 1006
	flw		f5, 0(x13)	# 1006
	sw		x6, 0(x2)	# 1006
	sw		x10, -4(x2)	# 1006
	sw		x7, -8(x2)	# 1006
	fsw		f2, -16(x2)	# 1006
	fsw		f1, -24(x2)	# 1006
	fsw		f0, -32(x2)	# 1006
	sw		x4, -40(x2)	# 1006
	sw		x8, -44(x2)	# 1006
	sw		x9, -48(x2)	# 1006
	sw		x12, -52(x2)	# 1006
	sw		x5, -56(x2)	# 1006
	sw		x11, -60(x2)	# 1006
	addi	x27, x7, 0
	fsub	f2, f2, f2
	fadd	f2, f2, f5
	fsub	f1, f1, f1
	fadd	f1, f1, f4
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -64(x2)	# 1006
	addi	x2, x2, -68	# 1006
	lw		x31, 0(x27)	# 1006
	jalr	x1, x31, 0	# 1006
	addi	x2, x2, 68	# 1006
	lw		x1, -64(x2)	# 1006
	fsw		f0, -64(x2)	# 1008
	sw		x1, -72(x2)	# 1008
	addi	x2, x2, -76	# 1008
	jal		x1, fiszero.2470	# 1008
	addi	x2, x2, 76	# 1008
	lw		x1, -72(x2)	# 1008
	lw		x5, -60(x2)	# 1008
	beq		x4, x5, beq.12839	# 1008
	addi	x4, x0, 0	# 1009
	jalr	x0, x1, 0	# 1009
beq.12839:
	ori		x4, x0, 4	# 1013
	mul		x4, x5, x4	# 1013
	lw		x6, -56(x2)	# 1013
	add		x4, x6, x4	# 1013
	flw		f0, 0(x4)	# 1013
	ori		x4, x0, 4	# 1013
	lw		x7, -52(x2)	# 1013
	mul		x4, x7, x4	# 1013
	add		x4, x6, x4	# 1013
	flw		f1, 0(x4)	# 1013
	ori		x4, x0, 4	# 1013
	lw		x7, -48(x2)	# 1013
	mul		x4, x7, x4	# 1013
	add		x4, x6, x4	# 1013
	flw		f2, 0(x4)	# 1013
	flw		f3, -32(x2)	# 1013
	flw		f4, -24(x2)	# 1013
	flw		f5, -16(x2)	# 1013
	lw		x4, -40(x2)	# 1013
	lw		x27, -44(x2)	# 1013
	sw		x1, -72(x2)	# 1013
	addi	x2, x2, -76	# 1013
	lw		x31, 0(x27)	# 1013
	jalr	x1, x31, 0	# 1013
	addi	x2, x2, 76	# 1013
	lw		x1, -72(x2)	# 1013
	flw		f1, -32(x2)	# 1015
	flw		f2, -24(x2)	# 1015
	flw		f3, -16(x2)	# 1015
	lw		x4, -40(x2)	# 1015
	lw		x27, -8(x2)	# 1015
	fsw		f0, -72(x2)	# 1015
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -80(x2)	# 1015
	addi	x2, x2, -84	# 1015
	lw		x31, 0(x27)	# 1015
	jalr	x1, x31, 0	# 1015
	addi	x2, x2, 84	# 1015
	lw		x1, -80(x2)	# 1015
	lw		x4, -40(x2)	# 1016
	fsw		f0, -80(x2)	# 1016
	sw		x1, -88(x2)	# 1016
	addi	x2, x2, -92	# 1016
	jal		x1, o_form.2592	# 1016
	addi	x2, x2, 92	# 1016
	lw		x1, -88(x2)	# 1016
	lw		x5, -4(x2)	# 1016
	beq		x4, x5, beq.12841	# 1016
	flw		f0, -80(x2)	# 1016
	jal		x0, beq_cont.12840	# 1016
beq.12841:
	lui		x4, %hi(l.6125)	# 1016
	ori		x4, x0, %lo(l.6125)	# 1016
	flw		f0, 0(x4)	# 1016
	flw		f1, -80(x2)	# 1016
	fsub	f0, f1, f0	# 1016
beq_cont.12840:
	flw		f1, -72(x2)	# 1018
	fsw		f0, -88(x2)	# 1018
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -96(x2)	# 1018
	addi	x2, x2, -100	# 1018
	jal		x1, fsqr.2485	# 1018
	addi	x2, x2, 100	# 1018
	lw		x1, -96(x2)	# 1018
	flw		f1, -88(x2)	# 1018
	flw		f2, -64(x2)	# 1018
	fmul	f1, f2, f1	# 1018
	fsub	f0, f0, f1	# 1018
	fsw		f0, -96(x2)	# 1020
	sw		x1, -104(x2)	# 1020
	addi	x2, x2, -108	# 1020
	jal		x1, fispos.2472	# 1020
	addi	x2, x2, 108	# 1020
	lw		x1, -104(x2)	# 1020
	lw		x5, -60(x2)	# 1020
	beq		x4, x5, beq.12842	# 1020
	flw		f0, -96(x2)	# 1021
	sw		x1, -104(x2)	# 1021
	addi	x2, x2, -108	# 1021
	jal		x1, min_caml_sqrt	# 1021
	addi	x2, x2, 108	# 1021
	lw		x1, -104(x2)	# 1021
	lw		x4, -40(x2)	# 1022
	fsw		f0, -104(x2)	# 1022
	sw		x1, -112(x2)	# 1022
	addi	x2, x2, -116	# 1022
	jal		x1, o_isinvert.2596	# 1022
	addi	x2, x2, 116	# 1022
	lw		x1, -112(x2)	# 1022
	lw		x5, -60(x2)	# 1022
	beq		x4, x5, beq.12844	# 1022
	flw		f0, -104(x2)	# 1022
	jal		x0, beq_cont.12843	# 1022
beq.12844:
	flw		f0, -104(x2)	# 1022
	sw		x1, -112(x2)	# 1022
	addi	x2, x2, -116	# 1022
	jal		x1, fneg.2476	# 1022
	addi	x2, x2, 116	# 1022
	lw		x1, -112(x2)	# 1022
beq_cont.12843:
	flw		f1, -72(x2)	# 1023
	fsub	f0, f0, f1	# 1023
	flw		f1, -64(x2)	# 1023
	fdiv	f0, f0, f1	# 1023
	ori		x4, x0, 4	# 1023
	lw		x5, -60(x2)	# 1023
	mul		x4, x5, x4	# 1023
	lw		x5, 0(x2)	# 1023
	add		x4, x5, x4	# 1023
	fsw		f0, 0(x4)	# 1023
	ori		x4, x0, 1	# 1023
	jalr	x0, x1, 0	# 1023
beq.12842:
	addi	x4, x0, 0	# 1026
	jalr	x0, x1, 0	# 1026
solver.2724:
	lw		x7, 40(x27)	# 1032
	lw		x8, 36(x27)	# 1032
	lw		x9, 32(x27)	# 1032
	lw		x10, 28(x27)	# 1032
	lw		x11, 24(x27)	# 1032
	lw		x12, 20(x27)	# 1032
	lw		x13, 16(x27)	# 1032
	lw		x14, 12(x27)	# 1032
	lw		x15, 8(x27)	# 1032
	lw		x16, 4(x27)	# 1032
	ori		x17, x0, 4	# 1032
	mul		x4, x4, x17	# 1032
	add		x4, x10, x4	# 1032
	lw		x4, 0(x4)	# 1032
	ori		x10, x0, 4	# 1034
	mul		x10, x15, x10	# 1034
	add		x10, x6, x10	# 1034
	flw		f0, 0(x10)	# 1034
	sw		x8, 0(x2)	# 1034
	sw		x7, -4(x2)	# 1034
	sw		x5, -8(x2)	# 1034
	sw		x9, -12(x2)	# 1034
	sw		x11, -16(x2)	# 1034
	sw		x14, -20(x2)	# 1034
	sw		x4, -24(x2)	# 1034
	sw		x12, -28(x2)	# 1034
	sw		x6, -32(x2)	# 1034
	sw		x16, -36(x2)	# 1034
	fsw		f0, -40(x2)	# 1034
	addi	x27, x13, 0
	sw		x1, -48(x2)	# 1034
	addi	x2, x2, -52	# 1034
	lw		x31, 0(x27)	# 1034
	jalr	x1, x31, 0	# 1034
	addi	x2, x2, 52	# 1034
	lw		x1, -48(x2)	# 1034
	flw		f1, -40(x2)	# 1034
	fsub	f0, f1, f0	# 1034
	ori		x4, x0, 4	# 1035
	lw		x5, -36(x2)	# 1035
	mul		x4, x5, x4	# 1035
	lw		x6, -32(x2)	# 1035
	add		x4, x6, x4	# 1035
	flw		f1, 0(x4)	# 1035
	lw		x4, -24(x2)	# 1035
	lw		x27, -28(x2)	# 1035
	fsw		f0, -48(x2)	# 1035
	fsw		f1, -56(x2)	# 1035
	sw		x1, -64(x2)	# 1035
	addi	x2, x2, -68	# 1035
	lw		x31, 0(x27)	# 1035
	jalr	x1, x31, 0	# 1035
	addi	x2, x2, 68	# 1035
	lw		x1, -64(x2)	# 1035
	flw		f1, -56(x2)	# 1035
	fsub	f0, f1, f0	# 1035
	ori		x4, x0, 4	# 1036
	lw		x5, -20(x2)	# 1036
	mul		x4, x5, x4	# 1036
	lw		x6, -32(x2)	# 1036
	add		x4, x6, x4	# 1036
	flw		f1, 0(x4)	# 1036
	lw		x4, -24(x2)	# 1036
	lw		x27, -16(x2)	# 1036
	fsw		f0, -64(x2)	# 1036
	fsw		f1, -72(x2)	# 1036
	sw		x1, -80(x2)	# 1036
	addi	x2, x2, -84	# 1036
	lw		x31, 0(x27)	# 1036
	jalr	x1, x31, 0	# 1036
	addi	x2, x2, 84	# 1036
	lw		x1, -80(x2)	# 1036
	flw		f1, -72(x2)	# 1036
	fsub	f0, f1, f0	# 1036
	lw		x4, -24(x2)	# 1037
	fsw		f0, -80(x2)	# 1037
	sw		x1, -88(x2)	# 1037
	addi	x2, x2, -92	# 1037
	jal		x1, o_form.2592	# 1037
	addi	x2, x2, 92	# 1037
	lw		x1, -88(x2)	# 1037
	lw		x5, -36(x2)	# 1039
	beq		x4, x5, beq.12845	# 1039
	lw		x5, -20(x2)	# 1040
	beq		x4, x5, beq.12846	# 1040
	flw		f0, -48(x2)	# 1041
	flw		f1, -64(x2)	# 1041
	flw		f2, -80(x2)	# 1041
	lw		x4, -24(x2)	# 1041
	lw		x5, -8(x2)	# 1041
	lw		x27, 0(x2)	# 1041
	lw		x31, 0(x27)	# 1041
	jalr	x0, x31, 0	# 1041
beq.12846:
	flw		f0, -48(x2)	# 1040
	flw		f1, -64(x2)	# 1040
	flw		f2, -80(x2)	# 1040
	lw		x4, -24(x2)	# 1040
	lw		x5, -8(x2)	# 1040
	lw		x27, -4(x2)	# 1040
	lw		x31, 0(x27)	# 1040
	jalr	x0, x31, 0	# 1040
beq.12845:
	flw		f0, -48(x2)	# 1039
	flw		f1, -64(x2)	# 1039
	flw		f2, -80(x2)	# 1039
	lw		x4, -24(x2)	# 1039
	lw		x5, -8(x2)	# 1039
	lw		x27, -12(x2)	# 1039
	lw		x31, 0(x27)	# 1039
	jalr	x0, x31, 0	# 1039
solver_rect_fast.2728:
	lw		x7, 36(x27)	# 1064
	lw		x8, 32(x27)	# 1064
	lw		x9, 28(x27)	# 1064
	lw		x10, 24(x27)	# 1064
	lw		x11, 20(x27)	# 1064
	lw		x12, 16(x27)	# 1064
	lw		x13, 12(x27)	# 1064
	lw		x14, 8(x27)	# 1064
	lw		x15, 4(x27)	# 1064
	ori		x16, x0, 4	# 1064
	mul		x16, x14, x16	# 1064
	add		x16, x6, x16	# 1064
	flw		f3, 0(x16)	# 1064
	fsub	f3, f3, f0	# 1064
	ori		x16, x0, 4	# 1064
	mul		x16, x15, x16	# 1064
	add		x16, x6, x16	# 1064
	flw		f4, 0(x16)	# 1064
	fmul	f3, f3, f4	# 1064
	ori		x16, x0, 4	# 1066
	mul		x15, x15, x16	# 1066
	add		x15, x5, x15	# 1066
	flw		f4, 0(x15)	# 1066
	fmul	f4, f3, f4	# 1066
	fadd	f4, f4, f1	# 1066
	sw		x7, 0(x2)	# 1066
	sw		x11, -4(x2)	# 1066
	sw		x10, -8(x2)	# 1066
	fsw		f0, -16(x2)	# 1066
	sw		x13, -24(x2)	# 1066
	fsw		f1, -32(x2)	# 1066
	sw		x12, -40(x2)	# 1066
	sw		x6, -44(x2)	# 1066
	sw		x8, -48(x2)	# 1066
	fsw		f2, -56(x2)	# 1066
	fsw		f3, -64(x2)	# 1066
	sw		x5, -72(x2)	# 1066
	sw		x14, -76(x2)	# 1066
	sw		x4, -80(x2)	# 1066
	sw		x9, -84(x2)	# 1066
	fsub	f0, f0, f0
	fadd	f0, f0, f4
	sw		x1, -88(x2)	# 1066
	addi	x2, x2, -92	# 1066
	jal		x1, fabs.2478	# 1066
	addi	x2, x2, 92	# 1066
	lw		x1, -88(x2)	# 1066
	lw		x4, -80(x2)	# 1066
	lw		x27, -84(x2)	# 1066
	fsw		f0, -88(x2)	# 1066
	sw		x1, -96(x2)	# 1066
	addi	x2, x2, -100	# 1066
	lw		x31, 0(x27)	# 1066
	jalr	x1, x31, 0	# 1066
	addi	x2, x2, 100	# 1066
	lw		x1, -96(x2)	# 1066
	fsub	f1, f1, f1	# 1066
	fadd	f1, f1, f0	# 1066
	flw		f0, -88(x2)	# 1066
	sw		x1, -96(x2)	# 1066
	addi	x2, x2, -100	# 1066
	jal		x1, fless.2480	# 1066
	addi	x2, x2, 100	# 1066
	lw		x1, -96(x2)	# 1066
	lw		x5, -76(x2)	# 1066
	beq		x4, x5, beq.12851	# 1066
	ori		x4, x0, 2	# 1067
	ori		x6, x0, 4	# 1067
	mul		x4, x4, x6	# 1067
	lw		x6, -72(x2)	# 1067
	add		x4, x6, x4	# 1067
	flw		f0, 0(x4)	# 1067
	flw		f1, -64(x2)	# 1067
	fmul	f0, f1, f0	# 1067
	flw		f2, -56(x2)	# 1067
	fadd	f0, f0, f2	# 1067
	sw		x1, -96(x2)	# 1067
	addi	x2, x2, -100	# 1067
	jal		x1, fabs.2478	# 1067
	addi	x2, x2, 100	# 1067
	lw		x1, -96(x2)	# 1067
	lw		x4, -80(x2)	# 1067
	lw		x27, -48(x2)	# 1067
	fsw		f0, -96(x2)	# 1067
	sw		x1, -104(x2)	# 1067
	addi	x2, x2, -108	# 1067
	lw		x31, 0(x27)	# 1067
	jalr	x1, x31, 0	# 1067
	addi	x2, x2, 108	# 1067
	lw		x1, -104(x2)	# 1067
	fsub	f1, f1, f1	# 1067
	fadd	f1, f1, f0	# 1067
	flw		f0, -96(x2)	# 1067
	sw		x1, -104(x2)	# 1067
	addi	x2, x2, -108	# 1067
	jal		x1, fless.2480	# 1067
	addi	x2, x2, 108	# 1067
	lw		x1, -104(x2)	# 1067
	addi	x5, x0, 0	# 1067
	beq		x4, x5, beq.12853	# 1067
	ori		x4, x0, 1	# 1068
	ori		x5, x0, 4	# 1068
	mul		x4, x4, x5	# 1068
	lw		x5, -44(x2)	# 1068
	add		x4, x5, x4	# 1068
	flw		f0, 0(x4)	# 1068
	sw		x1, -104(x2)	# 1068
	addi	x2, x2, -108	# 1068
	jal		x1, fiszero.2470	# 1068
	addi	x2, x2, 108	# 1068
	lw		x1, -104(x2)	# 1068
	addi	x5, x0, 0	# 1068
	beq		x4, x5, beq.12855	# 1068
	addi	x4, x0, 0	# 1068
	jal		x0, beq_cont.12854	# 1068
beq.12855:
	ori		x4, x0, 1	# 1068
beq_cont.12854:
	jal		x0, beq_cont.12852	# 1067
beq.12853:
	addi	x4, x0, 0	# 1069
beq_cont.12852:
	jal		x0, beq_cont.12850	# 1066
beq.12851:
	addi	x4, x0, 0	# 1070
beq_cont.12850:
	lw		x5, -76(x2)	# 1065
	beq		x4, x5, beq.12856	# 1065
	ori		x4, x0, 4	# 1072
	mul		x4, x5, x4	# 1072
	lw		x5, 0(x2)	# 1072
	add		x4, x5, x4	# 1072
	flw		f0, -64(x2)	# 1072
	fsw		f0, 0(x4)	# 1072
	ori		x4, x0, 1	# 1072
	jalr	x0, x1, 0	# 1072
beq.12856:
	ori		x4, x0, 4	# 1073
	lw		x6, -40(x2)	# 1073
	mul		x4, x6, x4	# 1073
	lw		x6, -44(x2)	# 1073
	add		x4, x6, x4	# 1073
	flw		f0, 0(x4)	# 1073
	flw		f1, -32(x2)	# 1073
	fsub	f0, f0, f1	# 1073
	ori		x4, x0, 4	# 1073
	lw		x7, -24(x2)	# 1073
	mul		x4, x7, x4	# 1073
	add		x4, x6, x4	# 1073
	flw		f2, 0(x4)	# 1073
	fmul	f0, f0, f2	# 1073
	ori		x4, x0, 4	# 1075
	mul		x4, x5, x4	# 1075
	lw		x7, -72(x2)	# 1075
	add		x4, x7, x4	# 1075
	flw		f2, 0(x4)	# 1075
	fmul	f2, f0, f2	# 1075
	flw		f3, -16(x2)	# 1075
	fadd	f2, f2, f3	# 1075
	fsw		f0, -104(x2)	# 1075
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -112(x2)	# 1075
	addi	x2, x2, -116	# 1075
	jal		x1, fabs.2478	# 1075
	addi	x2, x2, 116	# 1075
	lw		x1, -112(x2)	# 1075
	lw		x4, -80(x2)	# 1075
	lw		x27, -8(x2)	# 1075
	fsw		f0, -112(x2)	# 1075
	sw		x1, -120(x2)	# 1075
	addi	x2, x2, -124	# 1075
	lw		x31, 0(x27)	# 1075
	jalr	x1, x31, 0	# 1075
	addi	x2, x2, 124	# 1075
	lw		x1, -120(x2)	# 1075
	fsub	f1, f1, f1	# 1075
	fadd	f1, f1, f0	# 1075
	flw		f0, -112(x2)	# 1075
	sw		x1, -120(x2)	# 1075
	addi	x2, x2, -124	# 1075
	jal		x1, fless.2480	# 1075
	addi	x2, x2, 124	# 1075
	lw		x1, -120(x2)	# 1075
	lw		x5, -76(x2)	# 1075
	beq		x4, x5, beq.12858	# 1075
	ori		x4, x0, 2	# 1076
	ori		x6, x0, 4	# 1076
	mul		x4, x4, x6	# 1076
	lw		x6, -72(x2)	# 1076
	add		x4, x6, x4	# 1076
	flw		f0, 0(x4)	# 1076
	flw		f1, -104(x2)	# 1076
	fmul	f0, f1, f0	# 1076
	flw		f2, -56(x2)	# 1076
	fadd	f0, f0, f2	# 1076
	sw		x1, -120(x2)	# 1076
	addi	x2, x2, -124	# 1076
	jal		x1, fabs.2478	# 1076
	addi	x2, x2, 124	# 1076
	lw		x1, -120(x2)	# 1076
	lw		x4, -80(x2)	# 1076
	lw		x27, -48(x2)	# 1076
	fsw		f0, -120(x2)	# 1076
	sw		x1, -128(x2)	# 1076
	addi	x2, x2, -132	# 1076
	lw		x31, 0(x27)	# 1076
	jalr	x1, x31, 0	# 1076
	addi	x2, x2, 132	# 1076
	lw		x1, -128(x2)	# 1076
	fsub	f1, f1, f1	# 1076
	fadd	f1, f1, f0	# 1076
	flw		f0, -120(x2)	# 1076
	sw		x1, -128(x2)	# 1076
	addi	x2, x2, -132	# 1076
	jal		x1, fless.2480	# 1076
	addi	x2, x2, 132	# 1076
	lw		x1, -128(x2)	# 1076
	addi	x5, x0, 0	# 1076
	beq		x4, x5, beq.12860	# 1076
	ori		x4, x0, 3	# 1077
	ori		x5, x0, 4	# 1077
	mul		x4, x4, x5	# 1077
	lw		x5, -44(x2)	# 1077
	add		x4, x5, x4	# 1077
	flw		f0, 0(x4)	# 1077
	sw		x1, -128(x2)	# 1077
	addi	x2, x2, -132	# 1077
	jal		x1, fiszero.2470	# 1077
	addi	x2, x2, 132	# 1077
	lw		x1, -128(x2)	# 1077
	addi	x5, x0, 0	# 1077
	beq		x4, x5, beq.12862	# 1077
	addi	x4, x0, 0	# 1077
	jal		x0, beq_cont.12861	# 1077
beq.12862:
	ori		x4, x0, 1	# 1077
beq_cont.12861:
	jal		x0, beq_cont.12859	# 1076
beq.12860:
	addi	x4, x0, 0	# 1078
beq_cont.12859:
	jal		x0, beq_cont.12857	# 1075
beq.12858:
	addi	x4, x0, 0	# 1079
beq_cont.12857:
	lw		x5, -76(x2)	# 1074
	beq		x4, x5, beq.12863	# 1074
	ori		x4, x0, 4	# 1081
	mul		x4, x5, x4	# 1081
	lw		x5, 0(x2)	# 1081
	add		x4, x5, x4	# 1081
	flw		f0, -104(x2)	# 1081
	fsw		f0, 0(x4)	# 1081
	ori		x4, x0, 2	# 1081
	jalr	x0, x1, 0	# 1081
beq.12863:
	ori		x4, x0, 4	# 1082
	ori		x6, x0, 4	# 1082
	mul		x4, x4, x6	# 1082
	lw		x6, -44(x2)	# 1082
	add		x4, x6, x4	# 1082
	flw		f0, 0(x4)	# 1082
	flw		f1, -56(x2)	# 1082
	fsub	f0, f0, f1	# 1082
	ori		x4, x0, 4	# 1082
	lw		x7, -4(x2)	# 1082
	mul		x4, x7, x4	# 1082
	add		x4, x6, x4	# 1082
	flw		f1, 0(x4)	# 1082
	fmul	f0, f0, f1	# 1082
	ori		x4, x0, 4	# 1084
	mul		x4, x5, x4	# 1084
	lw		x7, -72(x2)	# 1084
	add		x4, x7, x4	# 1084
	flw		f1, 0(x4)	# 1084
	fmul	f1, f0, f1	# 1084
	flw		f2, -16(x2)	# 1084
	fadd	f1, f1, f2	# 1084
	fsw		f0, -128(x2)	# 1084
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -136(x2)	# 1084
	addi	x2, x2, -140	# 1084
	jal		x1, fabs.2478	# 1084
	addi	x2, x2, 140	# 1084
	lw		x1, -136(x2)	# 1084
	lw		x4, -80(x2)	# 1084
	lw		x27, -8(x2)	# 1084
	fsw		f0, -136(x2)	# 1084
	sw		x1, -144(x2)	# 1084
	addi	x2, x2, -148	# 1084
	lw		x31, 0(x27)	# 1084
	jalr	x1, x31, 0	# 1084
	addi	x2, x2, 148	# 1084
	lw		x1, -144(x2)	# 1084
	fsub	f1, f1, f1	# 1084
	fadd	f1, f1, f0	# 1084
	flw		f0, -136(x2)	# 1084
	sw		x1, -144(x2)	# 1084
	addi	x2, x2, -148	# 1084
	jal		x1, fless.2480	# 1084
	addi	x2, x2, 148	# 1084
	lw		x1, -144(x2)	# 1084
	lw		x5, -76(x2)	# 1084
	beq		x4, x5, beq.12865	# 1084
	ori		x4, x0, 1	# 1085
	ori		x6, x0, 4	# 1085
	mul		x4, x4, x6	# 1085
	lw		x6, -72(x2)	# 1085
	add		x4, x6, x4	# 1085
	flw		f0, 0(x4)	# 1085
	flw		f1, -128(x2)	# 1085
	fmul	f0, f1, f0	# 1085
	flw		f2, -32(x2)	# 1085
	fadd	f0, f0, f2	# 1085
	sw		x1, -144(x2)	# 1085
	addi	x2, x2, -148	# 1085
	jal		x1, fabs.2478	# 1085
	addi	x2, x2, 148	# 1085
	lw		x1, -144(x2)	# 1085
	lw		x4, -80(x2)	# 1085
	lw		x27, -84(x2)	# 1085
	fsw		f0, -144(x2)	# 1085
	sw		x1, -152(x2)	# 1085
	addi	x2, x2, -156	# 1085
	lw		x31, 0(x27)	# 1085
	jalr	x1, x31, 0	# 1085
	addi	x2, x2, 156	# 1085
	lw		x1, -152(x2)	# 1085
	fsub	f1, f1, f1	# 1085
	fadd	f1, f1, f0	# 1085
	flw		f0, -144(x2)	# 1085
	sw		x1, -152(x2)	# 1085
	addi	x2, x2, -156	# 1085
	jal		x1, fless.2480	# 1085
	addi	x2, x2, 156	# 1085
	lw		x1, -152(x2)	# 1085
	addi	x5, x0, 0	# 1085
	beq		x4, x5, beq.12867	# 1085
	ori		x4, x0, 5	# 1086
	ori		x5, x0, 4	# 1086
	mul		x4, x4, x5	# 1086
	lw		x5, -44(x2)	# 1086
	add		x4, x5, x4	# 1086
	flw		f0, 0(x4)	# 1086
	sw		x1, -152(x2)	# 1086
	addi	x2, x2, -156	# 1086
	jal		x1, fiszero.2470	# 1086
	addi	x2, x2, 156	# 1086
	lw		x1, -152(x2)	# 1086
	addi	x5, x0, 0	# 1086
	beq		x4, x5, beq.12869	# 1086
	addi	x4, x0, 0	# 1086
	jal		x0, beq_cont.12868	# 1086
beq.12869:
	ori		x4, x0, 1	# 1086
beq_cont.12868:
	jal		x0, beq_cont.12866	# 1085
beq.12867:
	addi	x4, x0, 0	# 1087
beq_cont.12866:
	jal		x0, beq_cont.12864	# 1084
beq.12865:
	addi	x4, x0, 0	# 1088
beq_cont.12864:
	lw		x5, -76(x2)	# 1083
	beq		x4, x5, beq.12870	# 1083
	ori		x4, x0, 4	# 1090
	mul		x4, x5, x4	# 1090
	lw		x5, 0(x2)	# 1090
	add		x4, x5, x4	# 1090
	flw		f0, -128(x2)	# 1090
	fsw		f0, 0(x4)	# 1090
	ori		x4, x0, 3	# 1090
	jalr	x0, x1, 0	# 1090
beq.12870:
	addi	x4, x0, 0	# 1092
	jalr	x0, x1, 0	# 1092
solver_surface_fast.2735:
	lw		x4, 20(x27)	# 1097
	lw		x6, 16(x27)	# 1097
	lw		x7, 12(x27)	# 1097
	lw		x8, 8(x27)	# 1097
	lw		x9, 4(x27)	# 1097
	ori		x10, x0, 4	# 1097
	mul		x10, x8, x10	# 1097
	add		x10, x5, x10	# 1097
	flw		f3, 0(x10)	# 1097
	sw		x4, 0(x2)	# 1097
	fsw		f2, -8(x2)	# 1097
	sw		x7, -16(x2)	# 1097
	fsw		f1, -24(x2)	# 1097
	sw		x6, -32(x2)	# 1097
	fsw		f0, -40(x2)	# 1097
	sw		x5, -48(x2)	# 1097
	sw		x9, -52(x2)	# 1097
	sw		x8, -56(x2)	# 1097
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -60(x2)	# 1097
	addi	x2, x2, -64	# 1097
	jal		x1, fisneg.2474	# 1097
	addi	x2, x2, 64	# 1097
	lw		x1, -60(x2)	# 1097
	lw		x5, -56(x2)	# 1097
	beq		x4, x5, beq.12874	# 1097
	ori		x4, x0, 4	# 1099
	lw		x6, -52(x2)	# 1099
	mul		x4, x6, x4	# 1099
	lw		x6, -48(x2)	# 1099
	add		x4, x6, x4	# 1099
	flw		f0, 0(x4)	# 1099
	flw		f1, -40(x2)	# 1099
	fmul	f0, f0, f1	# 1099
	ori		x4, x0, 4	# 1099
	lw		x7, -32(x2)	# 1099
	mul		x4, x7, x4	# 1099
	add		x4, x6, x4	# 1099
	flw		f1, 0(x4)	# 1099
	flw		f2, -24(x2)	# 1099
	fmul	f1, f1, f2	# 1099
	fadd	f0, f0, f1	# 1099
	ori		x4, x0, 4	# 1099
	lw		x7, -16(x2)	# 1099
	mul		x4, x7, x4	# 1099
	add		x4, x6, x4	# 1099
	flw		f1, 0(x4)	# 1099
	flw		f2, -8(x2)	# 1099
	fmul	f1, f1, f2	# 1099
	fadd	f0, f0, f1	# 1099
	ori		x4, x0, 4	# 1098
	mul		x4, x5, x4	# 1098
	lw		x5, 0(x2)	# 1098
	add		x4, x5, x4	# 1098
	fsw		f0, 0(x4)	# 1098
	ori		x4, x0, 1	# 1100
	jalr	x0, x1, 0	# 1100
beq.12874:
	addi	x4, x0, 0	# 1101
	jalr	x0, x1, 0	# 1101
solver_second_fast.2741:
	lw		x6, 24(x27)	# 1107
	lw		x7, 20(x27)	# 1107
	lw		x8, 16(x27)	# 1107
	lw		x9, 12(x27)	# 1107
	lw		x10, 8(x27)	# 1107
	lw		x11, 4(x27)	# 1107
	ori		x12, x0, 4	# 1107
	mul		x12, x10, x12	# 1107
	add		x12, x5, x12	# 1107
	flw		f3, 0(x12)	# 1107
	sw		x6, 0(x2)	# 1108
	fsw		f3, -8(x2)	# 1108
	sw		x4, -16(x2)	# 1108
	sw		x7, -20(x2)	# 1108
	fsw		f2, -24(x2)	# 1108
	sw		x9, -32(x2)	# 1108
	fsw		f1, -40(x2)	# 1108
	sw		x8, -48(x2)	# 1108
	fsw		f0, -56(x2)	# 1108
	sw		x5, -64(x2)	# 1108
	sw		x11, -68(x2)	# 1108
	sw		x10, -72(x2)	# 1108
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -76(x2)	# 1108
	addi	x2, x2, -80	# 1108
	jal		x1, fiszero.2470	# 1108
	addi	x2, x2, 80	# 1108
	lw		x1, -76(x2)	# 1108
	lw		x5, -72(x2)	# 1108
	beq		x4, x5, beq.12878	# 1108
	addi	x4, x0, 0	# 1109
	jalr	x0, x1, 0	# 1109
beq.12878:
	ori		x4, x0, 4	# 1111
	lw		x6, -68(x2)	# 1111
	mul		x4, x6, x4	# 1111
	lw		x6, -64(x2)	# 1111
	add		x4, x6, x4	# 1111
	flw		f0, 0(x4)	# 1111
	flw		f1, -56(x2)	# 1111
	fmul	f0, f0, f1	# 1111
	ori		x4, x0, 4	# 1111
	lw		x7, -48(x2)	# 1111
	mul		x4, x7, x4	# 1111
	add		x4, x6, x4	# 1111
	flw		f2, 0(x4)	# 1111
	flw		f3, -40(x2)	# 1111
	fmul	f2, f2, f3	# 1111
	fadd	f0, f0, f2	# 1111
	ori		x4, x0, 4	# 1111
	lw		x7, -32(x2)	# 1111
	mul		x4, x7, x4	# 1111
	add		x4, x6, x4	# 1111
	flw		f2, 0(x4)	# 1111
	flw		f4, -24(x2)	# 1111
	fmul	f2, f2, f4	# 1111
	fadd	f0, f0, f2	# 1111
	lw		x4, -16(x2)	# 1112
	lw		x27, -20(x2)	# 1112
	fsw		f0, -80(x2)	# 1112
	fsub	f2, f2, f2
	fadd	f2, f2, f4
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f3
	sw		x1, -88(x2)	# 1112
	addi	x2, x2, -92	# 1112
	lw		x31, 0(x27)	# 1112
	jalr	x1, x31, 0	# 1112
	addi	x2, x2, 92	# 1112
	lw		x1, -88(x2)	# 1112
	lw		x4, -16(x2)	# 1113
	fsw		f0, -88(x2)	# 1113
	sw		x1, -96(x2)	# 1113
	addi	x2, x2, -100	# 1113
	jal		x1, o_form.2592	# 1113
	addi	x2, x2, 100	# 1113
	lw		x1, -96(x2)	# 1113
	lw		x5, -32(x2)	# 1113
	beq		x4, x5, beq.12881	# 1113
	flw		f0, -88(x2)	# 1113
	jal		x0, beq_cont.12880	# 1113
beq.12881:
	lui		x4, %hi(l.6125)	# 1113
	ori		x4, x0, %lo(l.6125)	# 1113
	flw		f0, 0(x4)	# 1113
	flw		f1, -88(x2)	# 1113
	fsub	f0, f1, f0	# 1113
beq_cont.12880:
	flw		f1, -80(x2)	# 1114
	fsw		f0, -96(x2)	# 1114
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -104(x2)	# 1114
	addi	x2, x2, -108	# 1114
	jal		x1, fsqr.2485	# 1114
	addi	x2, x2, 108	# 1114
	lw		x1, -104(x2)	# 1114
	flw		f1, -96(x2)	# 1114
	flw		f2, -8(x2)	# 1114
	fmul	f1, f2, f1	# 1114
	fsub	f0, f0, f1	# 1114
	fsw		f0, -104(x2)	# 1115
	sw		x1, -112(x2)	# 1115
	addi	x2, x2, -116	# 1115
	jal		x1, fispos.2472	# 1115
	addi	x2, x2, 116	# 1115
	lw		x1, -112(x2)	# 1115
	lw		x5, -72(x2)	# 1115
	beq		x4, x5, beq.12882	# 1115
	lw		x4, -16(x2)	# 1116
	sw		x1, -112(x2)	# 1116
	addi	x2, x2, -116	# 1116
	jal		x1, o_isinvert.2596	# 1116
	addi	x2, x2, 116	# 1116
	lw		x1, -112(x2)	# 1116
	lw		x5, -72(x2)	# 1116
	beq		x4, x5, beq.12884	# 1116
	addi	x4, x0, 0	# 1117
	flw		f0, -104(x2)	# 1117
	sw		x4, -112(x2)	# 1117
	sw		x1, -116(x2)	# 1117
	addi	x2, x2, -120	# 1117
	jal		x1, min_caml_sqrt	# 1117
	addi	x2, x2, 120	# 1117
	lw		x1, -116(x2)	# 1117
	flw		f1, -80(x2)	# 1117
	fadd	f0, f1, f0	# 1117
	ori		x4, x0, 4	# 1117
	ori		x5, x0, 4	# 1117
	mul		x4, x4, x5	# 1117
	lw		x5, -64(x2)	# 1117
	add		x4, x5, x4	# 1117
	flw		f1, 0(x4)	# 1117
	fmul	f0, f0, f1	# 1117
	ori		x4, x0, 4	# 1117
	lw		x5, -112(x2)	# 1117
	mul		x4, x5, x4	# 1117
	lw		x5, 0(x2)	# 1117
	add		x4, x5, x4	# 1117
	fsw		f0, 0(x4)	# 1117
	jal		x0, beq_cont.12883	# 1116
beq.12884:
	addi	x4, x0, 0	# 1119
	flw		f0, -104(x2)	# 1119
	sw		x4, -116(x2)	# 1119
	sw		x1, -120(x2)	# 1119
	addi	x2, x2, -124	# 1119
	jal		x1, min_caml_sqrt	# 1119
	addi	x2, x2, 124	# 1119
	lw		x1, -120(x2)	# 1119
	flw		f1, -80(x2)	# 1119
	fsub	f0, f1, f0	# 1119
	ori		x4, x0, 4	# 1119
	ori		x5, x0, 4	# 1119
	mul		x4, x4, x5	# 1119
	lw		x5, -64(x2)	# 1119
	add		x4, x5, x4	# 1119
	flw		f1, 0(x4)	# 1119
	fmul	f0, f0, f1	# 1119
	ori		x4, x0, 4	# 1119
	lw		x5, -116(x2)	# 1119
	mul		x4, x5, x4	# 1119
	lw		x5, 0(x2)	# 1119
	add		x4, x5, x4	# 1119
	fsw		f0, 0(x4)	# 1119
beq_cont.12883:
	ori		x4, x0, 1	# 1120
	jalr	x0, x1, 0	# 1120
beq.12882:
	addi	x4, x0, 0	# 1121
	jalr	x0, x1, 0	# 1121
solver_fast.2747:
	lw		x7, 40(x27)	# 1126
	lw		x8, 36(x27)	# 1126
	lw		x9, 32(x27)	# 1126
	lw		x10, 28(x27)	# 1126
	lw		x11, 24(x27)	# 1126
	lw		x12, 20(x27)	# 1126
	lw		x13, 16(x27)	# 1126
	lw		x14, 12(x27)	# 1126
	lw		x15, 8(x27)	# 1126
	lw		x16, 4(x27)	# 1126
	ori		x17, x0, 4	# 1126
	mul		x17, x4, x17	# 1126
	add		x10, x10, x17	# 1126
	lw		x10, 0(x10)	# 1126
	ori		x17, x0, 4	# 1127
	mul		x15, x15, x17	# 1127
	add		x15, x6, x15	# 1127
	flw		f0, 0(x15)	# 1127
	sw		x8, 0(x2)	# 1127
	sw		x7, -4(x2)	# 1127
	sw		x9, -8(x2)	# 1127
	sw		x4, -12(x2)	# 1127
	sw		x5, -16(x2)	# 1127
	sw		x11, -20(x2)	# 1127
	sw		x14, -24(x2)	# 1127
	sw		x10, -28(x2)	# 1127
	sw		x12, -32(x2)	# 1127
	sw		x6, -36(x2)	# 1127
	sw		x16, -40(x2)	# 1127
	fsw		f0, -48(x2)	# 1127
	addi	x4, x10, 0
	addi	x27, x13, 0
	sw		x1, -56(x2)	# 1127
	addi	x2, x2, -60	# 1127
	lw		x31, 0(x27)	# 1127
	jalr	x1, x31, 0	# 1127
	addi	x2, x2, 60	# 1127
	lw		x1, -56(x2)	# 1127
	flw		f1, -48(x2)	# 1127
	fsub	f0, f1, f0	# 1127
	ori		x4, x0, 4	# 1128
	lw		x5, -40(x2)	# 1128
	mul		x4, x5, x4	# 1128
	lw		x6, -36(x2)	# 1128
	add		x4, x6, x4	# 1128
	flw		f1, 0(x4)	# 1128
	lw		x4, -28(x2)	# 1128
	lw		x27, -32(x2)	# 1128
	fsw		f0, -56(x2)	# 1128
	fsw		f1, -64(x2)	# 1128
	sw		x1, -72(x2)	# 1128
	addi	x2, x2, -76	# 1128
	lw		x31, 0(x27)	# 1128
	jalr	x1, x31, 0	# 1128
	addi	x2, x2, 76	# 1128
	lw		x1, -72(x2)	# 1128
	flw		f1, -64(x2)	# 1128
	fsub	f0, f1, f0	# 1128
	ori		x4, x0, 4	# 1129
	lw		x5, -24(x2)	# 1129
	mul		x4, x5, x4	# 1129
	lw		x6, -36(x2)	# 1129
	add		x4, x6, x4	# 1129
	flw		f1, 0(x4)	# 1129
	lw		x4, -28(x2)	# 1129
	lw		x27, -20(x2)	# 1129
	fsw		f0, -72(x2)	# 1129
	fsw		f1, -80(x2)	# 1129
	sw		x1, -88(x2)	# 1129
	addi	x2, x2, -92	# 1129
	lw		x31, 0(x27)	# 1129
	jalr	x1, x31, 0	# 1129
	addi	x2, x2, 92	# 1129
	lw		x1, -88(x2)	# 1129
	flw		f1, -80(x2)	# 1129
	fsub	f0, f1, f0	# 1129
	lw		x4, -16(x2)	# 1130
	fsw		f0, -88(x2)	# 1130
	sw		x1, -96(x2)	# 1130
	addi	x2, x2, -100	# 1130
	jal		x1, d_const.2653	# 1130
	addi	x2, x2, 100	# 1130
	lw		x1, -96(x2)	# 1130
	ori		x5, x0, 4	# 1131
	lw		x6, -12(x2)	# 1131
	mul		x5, x6, x5	# 1131
	add		x4, x4, x5	# 1131
	lw		x4, 0(x4)	# 1131
	lw		x5, -28(x2)	# 1132
	sw		x4, -96(x2)	# 1132
	addi	x4, x5, 0
	sw		x1, -100(x2)	# 1132
	addi	x2, x2, -104	# 1132
	jal		x1, o_form.2592	# 1132
	addi	x2, x2, 104	# 1132
	lw		x1, -100(x2)	# 1132
	lw		x5, -40(x2)	# 1133
	beq		x4, x5, beq.12886	# 1133
	lw		x5, -24(x2)	# 1135
	beq		x4, x5, beq.12887	# 1135
	flw		f0, -56(x2)	# 1138
	flw		f1, -72(x2)	# 1138
	flw		f2, -88(x2)	# 1138
	lw		x4, -28(x2)	# 1138
	lw		x5, -96(x2)	# 1138
	lw		x27, 0(x2)	# 1138
	lw		x31, 0(x27)	# 1138
	jalr	x0, x31, 0	# 1138
beq.12887:
	flw		f0, -56(x2)	# 1136
	flw		f1, -72(x2)	# 1136
	flw		f2, -88(x2)	# 1136
	lw		x4, -28(x2)	# 1136
	lw		x5, -96(x2)	# 1136
	lw		x27, -4(x2)	# 1136
	lw		x31, 0(x27)	# 1136
	jalr	x0, x31, 0	# 1136
beq.12886:
	lw		x4, -16(x2)	# 1134
	sw		x1, -100(x2)	# 1134
	addi	x2, x2, -104	# 1134
	jal		x1, d_vec.2651	# 1134
	addi	x2, x2, 104	# 1134
	lw		x1, -100(x2)	# 1134
	addi	x5, x4, 0	# 1134
	flw		f0, -56(x2)	# 1134
	flw		f1, -72(x2)	# 1134
	flw		f2, -88(x2)	# 1134
	lw		x4, -28(x2)	# 1134
	lw		x6, -96(x2)	# 1134
	lw		x27, -8(x2)	# 1134
	lw		x31, 0(x27)	# 1134
	jalr	x0, x31, 0	# 1134
solver_surface_fast2.2751:
	lw		x4, 12(x27)	# 1146
	lw		x7, 8(x27)	# 1146
	lw		x8, 4(x27)	# 1146
	ori		x9, x0, 4	# 1146
	mul		x9, x8, x9	# 1146
	add		x9, x5, x9	# 1146
	flw		f0, 0(x9)	# 1146
	sw		x4, 0(x2)	# 1146
	sw		x6, -4(x2)	# 1146
	sw		x7, -8(x2)	# 1146
	sw		x5, -12(x2)	# 1146
	sw		x8, -16(x2)	# 1146
	sw		x1, -20(x2)	# 1146
	addi	x2, x2, -24	# 1146
	jal		x1, fisneg.2474	# 1146
	addi	x2, x2, 24	# 1146
	lw		x1, -20(x2)	# 1146
	lw		x5, -16(x2)	# 1146
	beq		x4, x5, beq.12888	# 1146
	ori		x4, x0, 4	# 1147
	mul		x4, x5, x4	# 1147
	lw		x6, -12(x2)	# 1147
	add		x4, x6, x4	# 1147
	flw		f0, 0(x4)	# 1147
	ori		x4, x0, 4	# 1147
	lw		x6, -8(x2)	# 1147
	mul		x4, x6, x4	# 1147
	lw		x6, -4(x2)	# 1147
	add		x4, x6, x4	# 1147
	flw		f1, 0(x4)	# 1147
	fmul	f0, f0, f1	# 1147
	ori		x4, x0, 4	# 1147
	mul		x4, x5, x4	# 1147
	lw		x5, 0(x2)	# 1147
	add		x4, x5, x4	# 1147
	fsw		f0, 0(x4)	# 1147
	ori		x4, x0, 1	# 1148
	jalr	x0, x1, 0	# 1148
beq.12888:
	addi	x4, x0, 0	# 1149
	jalr	x0, x1, 0	# 1149
solver_second_fast2.2758:
	lw		x7, 20(x27)	# 1155
	lw		x8, 16(x27)	# 1155
	lw		x9, 12(x27)	# 1155
	lw		x10, 8(x27)	# 1155
	lw		x11, 4(x27)	# 1155
	ori		x12, x0, 4	# 1155
	mul		x12, x10, x12	# 1155
	add		x12, x5, x12	# 1155
	flw		f3, 0(x12)	# 1155
	sw		x7, 0(x2)	# 1156
	sw		x4, -4(x2)	# 1156
	fsw		f3, -8(x2)	# 1156
	sw		x6, -16(x2)	# 1156
	fsw		f2, -24(x2)	# 1156
	sw		x9, -32(x2)	# 1156
	fsw		f1, -40(x2)	# 1156
	sw		x8, -48(x2)	# 1156
	fsw		f0, -56(x2)	# 1156
	sw		x5, -64(x2)	# 1156
	sw		x11, -68(x2)	# 1156
	sw		x10, -72(x2)	# 1156
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -76(x2)	# 1156
	addi	x2, x2, -80	# 1156
	jal		x1, fiszero.2470	# 1156
	addi	x2, x2, 80	# 1156
	lw		x1, -76(x2)	# 1156
	lw		x5, -72(x2)	# 1156
	beq		x4, x5, beq.12892	# 1156
	addi	x4, x0, 0	# 1157
	jalr	x0, x1, 0	# 1157
beq.12892:
	ori		x4, x0, 4	# 1159
	lw		x6, -68(x2)	# 1159
	mul		x4, x6, x4	# 1159
	lw		x6, -64(x2)	# 1159
	add		x4, x6, x4	# 1159
	flw		f0, 0(x4)	# 1159
	flw		f1, -56(x2)	# 1159
	fmul	f0, f0, f1	# 1159
	ori		x4, x0, 4	# 1159
	lw		x7, -48(x2)	# 1159
	mul		x4, x7, x4	# 1159
	add		x4, x6, x4	# 1159
	flw		f1, 0(x4)	# 1159
	flw		f2, -40(x2)	# 1159
	fmul	f1, f1, f2	# 1159
	fadd	f0, f0, f1	# 1159
	ori		x4, x0, 4	# 1159
	lw		x7, -32(x2)	# 1159
	mul		x4, x7, x4	# 1159
	add		x4, x6, x4	# 1159
	flw		f1, 0(x4)	# 1159
	flw		f2, -24(x2)	# 1159
	fmul	f1, f1, f2	# 1159
	fadd	f0, f0, f1	# 1159
	ori		x4, x0, 4	# 1160
	mul		x4, x7, x4	# 1160
	lw		x7, -16(x2)	# 1160
	add		x4, x7, x4	# 1160
	flw		f1, 0(x4)	# 1160
	fsw		f0, -80(x2)	# 1161
	fsw		f1, -88(x2)	# 1161
	sw		x1, -96(x2)	# 1161
	addi	x2, x2, -100	# 1161
	jal		x1, fsqr.2485	# 1161
	addi	x2, x2, 100	# 1161
	lw		x1, -96(x2)	# 1161
	flw		f1, -88(x2)	# 1161
	flw		f2, -8(x2)	# 1161
	fmul	f1, f2, f1	# 1161
	fsub	f0, f0, f1	# 1161
	fsw		f0, -96(x2)	# 1162
	sw		x1, -104(x2)	# 1162
	addi	x2, x2, -108	# 1162
	jal		x1, fispos.2472	# 1162
	addi	x2, x2, 108	# 1162
	lw		x1, -104(x2)	# 1162
	lw		x5, -72(x2)	# 1162
	beq		x4, x5, beq.12894	# 1162
	lw		x4, -4(x2)	# 1163
	sw		x1, -104(x2)	# 1163
	addi	x2, x2, -108	# 1163
	jal		x1, o_isinvert.2596	# 1163
	addi	x2, x2, 108	# 1163
	lw		x1, -104(x2)	# 1163
	lw		x5, -72(x2)	# 1163
	beq		x4, x5, beq.12896	# 1163
	addi	x4, x0, 0	# 1164
	flw		f0, -96(x2)	# 1164
	sw		x4, -104(x2)	# 1164
	sw		x1, -108(x2)	# 1164
	addi	x2, x2, -112	# 1164
	jal		x1, min_caml_sqrt	# 1164
	addi	x2, x2, 112	# 1164
	lw		x1, -108(x2)	# 1164
	flw		f1, -80(x2)	# 1164
	fadd	f0, f1, f0	# 1164
	ori		x4, x0, 4	# 1164
	ori		x5, x0, 4	# 1164
	mul		x4, x4, x5	# 1164
	lw		x5, -64(x2)	# 1164
	add		x4, x5, x4	# 1164
	flw		f1, 0(x4)	# 1164
	fmul	f0, f0, f1	# 1164
	ori		x4, x0, 4	# 1164
	lw		x5, -104(x2)	# 1164
	mul		x4, x5, x4	# 1164
	lw		x5, 0(x2)	# 1164
	add		x4, x5, x4	# 1164
	fsw		f0, 0(x4)	# 1164
	jal		x0, beq_cont.12895	# 1163
beq.12896:
	addi	x4, x0, 0	# 1166
	flw		f0, -96(x2)	# 1166
	sw		x4, -108(x2)	# 1166
	sw		x1, -112(x2)	# 1166
	addi	x2, x2, -116	# 1166
	jal		x1, min_caml_sqrt	# 1166
	addi	x2, x2, 116	# 1166
	lw		x1, -112(x2)	# 1166
	flw		f1, -80(x2)	# 1166
	fsub	f0, f1, f0	# 1166
	ori		x4, x0, 4	# 1166
	ori		x5, x0, 4	# 1166
	mul		x4, x4, x5	# 1166
	lw		x5, -64(x2)	# 1166
	add		x4, x5, x4	# 1166
	flw		f1, 0(x4)	# 1166
	fmul	f0, f0, f1	# 1166
	ori		x4, x0, 4	# 1166
	lw		x5, -108(x2)	# 1166
	mul		x4, x5, x4	# 1166
	lw		x5, 0(x2)	# 1166
	add		x4, x5, x4	# 1166
	fsw		f0, 0(x4)	# 1166
beq_cont.12895:
	ori		x4, x0, 1	# 1167
	jalr	x0, x1, 0	# 1167
beq.12894:
	addi	x4, x0, 0	# 1168
	jalr	x0, x1, 0	# 1168
solver_fast2.2765:
	lw		x6, 28(x27)	# 1173
	lw		x7, 24(x27)	# 1173
	lw		x8, 20(x27)	# 1173
	lw		x9, 16(x27)	# 1173
	lw		x10, 12(x27)	# 1173
	lw		x11, 8(x27)	# 1173
	lw		x12, 4(x27)	# 1173
	ori		x13, x0, 4	# 1173
	mul		x13, x4, x13	# 1173
	add		x9, x9, x13	# 1173
	lw		x9, 0(x9)	# 1173
	sw		x7, 0(x2)	# 1174
	sw		x6, -4(x2)	# 1174
	sw		x8, -8(x2)	# 1174
	sw		x9, -12(x2)	# 1174
	sw		x4, -16(x2)	# 1174
	sw		x5, -20(x2)	# 1174
	sw		x10, -24(x2)	# 1174
	sw		x12, -28(x2)	# 1174
	sw		x11, -32(x2)	# 1174
	addi	x4, x9, 0
	sw		x1, -36(x2)	# 1174
	addi	x2, x2, -40	# 1174
	jal		x1, o_param_ctbl.2630	# 1174
	addi	x2, x2, 40	# 1174
	lw		x1, -36(x2)	# 1174
	ori		x5, x0, 4	# 1175
	lw		x6, -32(x2)	# 1175
	mul		x5, x6, x5	# 1175
	add		x5, x4, x5	# 1175
	flw		f0, 0(x5)	# 1175
	ori		x5, x0, 4	# 1176
	lw		x6, -28(x2)	# 1176
	mul		x5, x6, x5	# 1176
	add		x5, x4, x5	# 1176
	flw		f1, 0(x5)	# 1176
	ori		x5, x0, 4	# 1177
	lw		x7, -24(x2)	# 1177
	mul		x5, x7, x5	# 1177
	add		x5, x4, x5	# 1177
	flw		f2, 0(x5)	# 1177
	lw		x5, -20(x2)	# 1178
	sw		x4, -36(x2)	# 1178
	fsw		f2, -40(x2)	# 1178
	fsw		f1, -48(x2)	# 1178
	fsw		f0, -56(x2)	# 1178
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 1178
	addi	x2, x2, -68	# 1178
	jal		x1, d_const.2653	# 1178
	addi	x2, x2, 68	# 1178
	lw		x1, -64(x2)	# 1178
	ori		x5, x0, 4	# 1179
	lw		x6, -16(x2)	# 1179
	mul		x5, x6, x5	# 1179
	add		x4, x4, x5	# 1179
	lw		x4, 0(x4)	# 1179
	lw		x5, -12(x2)	# 1180
	sw		x4, -64(x2)	# 1180
	addi	x4, x5, 0
	sw		x1, -68(x2)	# 1180
	addi	x2, x2, -72	# 1180
	jal		x1, o_form.2592	# 1180
	addi	x2, x2, 72	# 1180
	lw		x1, -68(x2)	# 1180
	lw		x5, -28(x2)	# 1181
	beq		x4, x5, beq.12897	# 1181
	lw		x5, -24(x2)	# 1183
	beq		x4, x5, beq.12898	# 1183
	flw		f0, -56(x2)	# 1186
	flw		f1, -48(x2)	# 1186
	flw		f2, -40(x2)	# 1186
	lw		x4, -12(x2)	# 1186
	lw		x5, -64(x2)	# 1186
	lw		x6, -36(x2)	# 1186
	lw		x27, 0(x2)	# 1186
	lw		x31, 0(x27)	# 1186
	jalr	x0, x31, 0	# 1186
beq.12898:
	flw		f0, -56(x2)	# 1184
	flw		f1, -48(x2)	# 1184
	flw		f2, -40(x2)	# 1184
	lw		x4, -12(x2)	# 1184
	lw		x5, -64(x2)	# 1184
	lw		x6, -36(x2)	# 1184
	lw		x27, -4(x2)	# 1184
	lw		x31, 0(x27)	# 1184
	jalr	x0, x31, 0	# 1184
beq.12897:
	lw		x4, -20(x2)	# 1182
	sw		x1, -68(x2)	# 1182
	addi	x2, x2, -72	# 1182
	jal		x1, d_vec.2651	# 1182
	addi	x2, x2, 72	# 1182
	lw		x1, -68(x2)	# 1182
	addi	x5, x4, 0	# 1182
	flw		f0, -56(x2)	# 1182
	flw		f1, -48(x2)	# 1182
	flw		f2, -40(x2)	# 1182
	lw		x4, -12(x2)	# 1182
	lw		x6, -64(x2)	# 1182
	lw		x27, -8(x2)	# 1182
	lw		x31, 0(x27)	# 1182
	jalr	x0, x31, 0	# 1182
setup_rect_table.2768:
	lw		x6, 36(x27)	# 1195
	lw		x7, 32(x27)	# 1195
	lw		x8, 28(x27)	# 1195
	lw		x9, 24(x27)	# 1195
	lw		x10, 20(x27)	# 1195
	lw		x11, 16(x27)	# 1195
	lw		x12, 12(x27)	# 1195
	lw		x13, 8(x27)	# 1195
	flw		f0, 4(x27)	# 1195
	ori		x14, x0, 6	# 1195
	sw		x7, 0(x2)	# 1195
	sw		x11, -4(x2)	# 1195
	sw		x8, -8(x2)	# 1195
	sw		x13, -12(x2)	# 1195
	sw		x10, -16(x2)	# 1195
	sw		x9, -20(x2)	# 1195
	sw		x6, -24(x2)	# 1195
	sw		x5, -28(x2)	# 1195
	sw		x4, -32(x2)	# 1195
	sw		x12, -36(x2)	# 1195
	addi	x4, x14, 0
	sw		x1, -40(x2)	# 1195
	addi	x2, x2, -44	# 1195
	jal		x1, min_caml_create_float_array	# 1195
	addi	x2, x2, 44	# 1195
	lw		x1, -40(x2)	# 1195
	ori		x5, x0, 4	# 1197
	lw		x6, -36(x2)	# 1197
	mul		x5, x6, x5	# 1197
	lw		x7, -32(x2)	# 1197
	add		x5, x7, x5	# 1197
	flw		f0, 0(x5)	# 1197
	sw		x4, -40(x2)	# 1197
	sw		x1, -44(x2)	# 1197
	addi	x2, x2, -48	# 1197
	jal		x1, fiszero.2470	# 1197
	addi	x2, x2, 48	# 1197
	lw		x1, -44(x2)	# 1197
	lw		x5, -36(x2)	# 1197
	beq		x4, x5, beq.12900	# 1197
	ori		x4, x0, 1	# 1198
	lui		x6, %hi(l.6117)	# 1198
	ori		x6, x0, %lo(l.6117)	# 1198
	flw		f0, 0(x6)	# 1198
	ori		x6, x0, 4	# 1198
	mul		x4, x4, x6	# 1198
	lw		x6, -40(x2)	# 1198
	add		x4, x6, x4	# 1198
	fsw		f0, 0(x4)	# 1198
	jal		x0, beq_cont.12899	# 1197
beq.12900:
	addi	x4, x0, 0	# 1201
	lw		x6, -28(x2)	# 1201
	sw		x4, -44(x2)	# 1201
	addi	x4, x6, 0
	sw		x1, -48(x2)	# 1201
	addi	x2, x2, -52	# 1201
	jal		x1, o_isinvert.2596	# 1201
	addi	x2, x2, 52	# 1201
	lw		x1, -48(x2)	# 1201
	addi	x5, x0, 0	# 1201
	ori		x6, x0, 4	# 1201
	mul		x5, x5, x6	# 1201
	lw		x6, -32(x2)	# 1201
	add		x5, x6, x5	# 1201
	flw		f0, 0(x5)	# 1201
	sw		x4, -48(x2)	# 1201
	sw		x1, -52(x2)	# 1201
	addi	x2, x2, -56	# 1201
	jal		x1, fisneg.2474	# 1201
	addi	x2, x2, 56	# 1201
	lw		x1, -52(x2)	# 1201
	addi	x5, x4, 0	# 1201
	lw		x4, -48(x2)	# 1201
	lw		x27, -24(x2)	# 1201
	sw		x1, -52(x2)	# 1201
	addi	x2, x2, -56	# 1201
	lw		x31, 0(x27)	# 1201
	jalr	x1, x31, 0	# 1201
	addi	x2, x2, 56	# 1201
	lw		x1, -52(x2)	# 1201
	lw		x5, -28(x2)	# 1201
	lw		x27, -20(x2)	# 1201
	sw		x4, -52(x2)	# 1201
	addi	x4, x5, 0
	sw		x1, -56(x2)	# 1201
	addi	x2, x2, -60	# 1201
	lw		x31, 0(x27)	# 1201
	jalr	x1, x31, 0	# 1201
	addi	x2, x2, 60	# 1201
	lw		x1, -56(x2)	# 1201
	lw		x4, -52(x2)	# 1201
	lw		x27, -16(x2)	# 1201
	sw		x1, -56(x2)	# 1201
	addi	x2, x2, -60	# 1201
	lw		x31, 0(x27)	# 1201
	jalr	x1, x31, 0	# 1201
	addi	x2, x2, 60	# 1201
	lw		x1, -56(x2)	# 1201
	ori		x4, x0, 4	# 1201
	lw		x5, -44(x2)	# 1201
	mul		x4, x5, x4	# 1201
	lw		x5, -40(x2)	# 1201
	add		x4, x5, x4	# 1201
	fsw		f0, 0(x4)	# 1201
	ori		x4, x0, 1	# 1203
	lui		x6, %hi(l.6125)	# 1203
	ori		x6, x0, %lo(l.6125)	# 1203
	flw		f0, 0(x6)	# 1203
	addi	x6, x0, 0	# 1203
	ori		x7, x0, 4	# 1203
	mul		x6, x6, x7	# 1203
	lw		x7, -32(x2)	# 1203
	add		x6, x7, x6	# 1203
	flw		f1, 0(x6)	# 1203
	fdiv	f0, f0, f1	# 1203
	ori		x6, x0, 4	# 1203
	mul		x4, x4, x6	# 1203
	add		x4, x5, x4	# 1203
	fsw		f0, 0(x4)	# 1203
beq_cont.12899:
	ori		x4, x0, 4	# 1205
	lw		x5, -12(x2)	# 1205
	mul		x4, x5, x4	# 1205
	lw		x5, -32(x2)	# 1205
	add		x4, x5, x4	# 1205
	flw		f0, 0(x4)	# 1205
	sw		x1, -56(x2)	# 1205
	addi	x2, x2, -60	# 1205
	jal		x1, fiszero.2470	# 1205
	addi	x2, x2, 60	# 1205
	lw		x1, -56(x2)	# 1205
	lw		x5, -36(x2)	# 1205
	beq		x4, x5, beq.12902	# 1205
	ori		x4, x0, 3	# 1206
	lui		x6, %hi(l.6117)	# 1206
	ori		x6, x0, %lo(l.6117)	# 1206
	flw		f0, 0(x6)	# 1206
	ori		x6, x0, 4	# 1206
	mul		x4, x4, x6	# 1206
	lw		x6, -40(x2)	# 1206
	add		x4, x6, x4	# 1206
	fsw		f0, 0(x4)	# 1206
	jal		x0, beq_cont.12901	# 1205
beq.12902:
	ori		x4, x0, 2	# 1208
	lw		x6, -28(x2)	# 1208
	sw		x4, -56(x2)	# 1208
	addi	x4, x6, 0
	sw		x1, -60(x2)	# 1208
	addi	x2, x2, -64	# 1208
	jal		x1, o_isinvert.2596	# 1208
	addi	x2, x2, 64	# 1208
	lw		x1, -60(x2)	# 1208
	ori		x5, x0, 1	# 1208
	ori		x6, x0, 4	# 1208
	mul		x5, x5, x6	# 1208
	lw		x6, -32(x2)	# 1208
	add		x5, x6, x5	# 1208
	flw		f0, 0(x5)	# 1208
	sw		x4, -60(x2)	# 1208
	sw		x1, -64(x2)	# 1208
	addi	x2, x2, -68	# 1208
	jal		x1, fisneg.2474	# 1208
	addi	x2, x2, 68	# 1208
	lw		x1, -64(x2)	# 1208
	addi	x5, x4, 0	# 1208
	lw		x4, -60(x2)	# 1208
	lw		x27, -24(x2)	# 1208
	sw		x1, -64(x2)	# 1208
	addi	x2, x2, -68	# 1208
	lw		x31, 0(x27)	# 1208
	jalr	x1, x31, 0	# 1208
	addi	x2, x2, 68	# 1208
	lw		x1, -64(x2)	# 1208
	lw		x5, -28(x2)	# 1208
	lw		x27, -8(x2)	# 1208
	sw		x4, -64(x2)	# 1208
	addi	x4, x5, 0
	sw		x1, -68(x2)	# 1208
	addi	x2, x2, -72	# 1208
	lw		x31, 0(x27)	# 1208
	jalr	x1, x31, 0	# 1208
	addi	x2, x2, 72	# 1208
	lw		x1, -68(x2)	# 1208
	lw		x4, -64(x2)	# 1208
	lw		x27, -16(x2)	# 1208
	sw		x1, -68(x2)	# 1208
	addi	x2, x2, -72	# 1208
	lw		x31, 0(x27)	# 1208
	jalr	x1, x31, 0	# 1208
	addi	x2, x2, 72	# 1208
	lw		x1, -68(x2)	# 1208
	ori		x4, x0, 4	# 1208
	lw		x5, -56(x2)	# 1208
	mul		x4, x5, x4	# 1208
	lw		x5, -40(x2)	# 1208
	add		x4, x5, x4	# 1208
	fsw		f0, 0(x4)	# 1208
	ori		x4, x0, 3	# 1209
	lui		x6, %hi(l.6125)	# 1209
	ori		x6, x0, %lo(l.6125)	# 1209
	flw		f0, 0(x6)	# 1209
	ori		x6, x0, 1	# 1209
	ori		x7, x0, 4	# 1209
	mul		x6, x6, x7	# 1209
	lw		x7, -32(x2)	# 1209
	add		x6, x7, x6	# 1209
	flw		f1, 0(x6)	# 1209
	fdiv	f0, f0, f1	# 1209
	ori		x6, x0, 4	# 1209
	mul		x4, x4, x6	# 1209
	add		x4, x5, x4	# 1209
	fsw		f0, 0(x4)	# 1209
beq_cont.12901:
	ori		x4, x0, 4	# 1211
	lw		x5, -4(x2)	# 1211
	mul		x4, x5, x4	# 1211
	lw		x5, -32(x2)	# 1211
	add		x4, x5, x4	# 1211
	flw		f0, 0(x4)	# 1211
	sw		x1, -68(x2)	# 1211
	addi	x2, x2, -72	# 1211
	jal		x1, fiszero.2470	# 1211
	addi	x2, x2, 72	# 1211
	lw		x1, -68(x2)	# 1211
	lw		x5, -36(x2)	# 1211
	beq		x4, x5, beq.12904	# 1211
	ori		x4, x0, 5	# 1212
	lui		x5, %hi(l.6117)	# 1212
	ori		x5, x0, %lo(l.6117)	# 1212
	flw		f0, 0(x5)	# 1212
	ori		x5, x0, 4	# 1212
	mul		x4, x4, x5	# 1212
	lw		x5, -40(x2)	# 1212
	add		x4, x5, x4	# 1212
	fsw		f0, 0(x4)	# 1212
	jal		x0, beq_cont.12903	# 1211
beq.12904:
	ori		x4, x0, 4	# 1214
	lw		x5, -28(x2)	# 1214
	sw		x4, -68(x2)	# 1214
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 1214
	addi	x2, x2, -76	# 1214
	jal		x1, o_isinvert.2596	# 1214
	addi	x2, x2, 76	# 1214
	lw		x1, -72(x2)	# 1214
	ori		x5, x0, 2	# 1214
	ori		x6, x0, 4	# 1214
	mul		x5, x5, x6	# 1214
	lw		x6, -32(x2)	# 1214
	add		x5, x6, x5	# 1214
	flw		f0, 0(x5)	# 1214
	sw		x4, -72(x2)	# 1214
	sw		x1, -76(x2)	# 1214
	addi	x2, x2, -80	# 1214
	jal		x1, fisneg.2474	# 1214
	addi	x2, x2, 80	# 1214
	lw		x1, -76(x2)	# 1214
	addi	x5, x4, 0	# 1214
	lw		x4, -72(x2)	# 1214
	lw		x27, -24(x2)	# 1214
	sw		x1, -76(x2)	# 1214
	addi	x2, x2, -80	# 1214
	lw		x31, 0(x27)	# 1214
	jalr	x1, x31, 0	# 1214
	addi	x2, x2, 80	# 1214
	lw		x1, -76(x2)	# 1214
	lw		x5, -28(x2)	# 1214
	lw		x27, 0(x2)	# 1214
	sw		x4, -76(x2)	# 1214
	addi	x4, x5, 0
	sw		x1, -80(x2)	# 1214
	addi	x2, x2, -84	# 1214
	lw		x31, 0(x27)	# 1214
	jalr	x1, x31, 0	# 1214
	addi	x2, x2, 84	# 1214
	lw		x1, -80(x2)	# 1214
	lw		x4, -76(x2)	# 1214
	lw		x27, -16(x2)	# 1214
	sw		x1, -80(x2)	# 1214
	addi	x2, x2, -84	# 1214
	lw		x31, 0(x27)	# 1214
	jalr	x1, x31, 0	# 1214
	addi	x2, x2, 84	# 1214
	lw		x1, -80(x2)	# 1214
	ori		x4, x0, 4	# 1214
	lw		x5, -68(x2)	# 1214
	mul		x4, x5, x4	# 1214
	lw		x5, -40(x2)	# 1214
	add		x4, x5, x4	# 1214
	fsw		f0, 0(x4)	# 1214
	ori		x4, x0, 5	# 1215
	lui		x6, %hi(l.6125)	# 1215
	ori		x6, x0, %lo(l.6125)	# 1215
	flw		f0, 0(x6)	# 1215
	ori		x6, x0, 2	# 1215
	ori		x7, x0, 4	# 1215
	mul		x6, x6, x7	# 1215
	lw		x7, -32(x2)	# 1215
	add		x6, x7, x6	# 1215
	flw		f1, 0(x6)	# 1215
	fdiv	f0, f0, f1	# 1215
	ori		x6, x0, 4	# 1215
	mul		x4, x4, x6	# 1215
	add		x4, x5, x4	# 1215
	fsw		f0, 0(x4)	# 1215
beq_cont.12903:
	addi	x4, x5, 0	# 1217
	jalr	x0, x1, 0	# 1217
setup_surface_table.2771:
	lw		x6, 28(x27)	# 1222
	lw		x7, 24(x27)	# 1222
	lw		x8, 20(x27)	# 1222
	lw		x9, 16(x27)	# 1222
	lw		x10, 12(x27)	# 1222
	lw		x11, 8(x27)	# 1222
	flw		f0, 4(x27)	# 1222
	ori		x12, x0, 4	# 1222
	sw		x6, 0(x2)	# 1222
	sw		x9, -4(x2)	# 1222
	sw		x7, -8(x2)	# 1222
	sw		x11, -12(x2)	# 1222
	sw		x5, -16(x2)	# 1222
	sw		x8, -20(x2)	# 1222
	sw		x4, -24(x2)	# 1222
	sw		x10, -28(x2)	# 1222
	addi	x4, x12, 0
	sw		x1, -32(x2)	# 1222
	addi	x2, x2, -36	# 1222
	jal		x1, min_caml_create_float_array	# 1222
	addi	x2, x2, 36	# 1222
	lw		x1, -32(x2)	# 1222
	ori		x5, x0, 4	# 1224
	lw		x6, -28(x2)	# 1224
	mul		x5, x6, x5	# 1224
	lw		x7, -24(x2)	# 1224
	add		x5, x7, x5	# 1224
	flw		f0, 0(x5)	# 1224
	lw		x5, -16(x2)	# 1224
	lw		x27, -20(x2)	# 1224
	sw		x4, -32(x2)	# 1224
	fsw		f0, -40(x2)	# 1224
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 1224
	addi	x2, x2, -52	# 1224
	lw		x31, 0(x27)	# 1224
	jalr	x1, x31, 0	# 1224
	addi	x2, x2, 52	# 1224
	lw		x1, -48(x2)	# 1224
	flw		f1, -40(x2)	# 1224
	fmul	f0, f1, f0	# 1224
	ori		x4, x0, 4	# 1224
	lw		x5, -12(x2)	# 1224
	mul		x4, x5, x4	# 1224
	lw		x5, -24(x2)	# 1224
	add		x4, x5, x4	# 1224
	flw		f1, 0(x4)	# 1224
	lw		x4, -16(x2)	# 1224
	lw		x27, -8(x2)	# 1224
	fsw		f0, -48(x2)	# 1224
	fsw		f1, -56(x2)	# 1224
	sw		x1, -64(x2)	# 1224
	addi	x2, x2, -68	# 1224
	lw		x31, 0(x27)	# 1224
	jalr	x1, x31, 0	# 1224
	addi	x2, x2, 68	# 1224
	lw		x1, -64(x2)	# 1224
	flw		f1, -56(x2)	# 1224
	fmul	f0, f1, f0	# 1224
	flw		f1, -48(x2)	# 1224
	fadd	f0, f1, f0	# 1224
	ori		x4, x0, 4	# 1224
	lw		x5, -4(x2)	# 1224
	mul		x4, x5, x4	# 1224
	lw		x5, -24(x2)	# 1224
	add		x4, x5, x4	# 1224
	flw		f1, 0(x4)	# 1224
	lw		x4, -16(x2)	# 1224
	lw		x27, 0(x2)	# 1224
	fsw		f0, -64(x2)	# 1224
	fsw		f1, -72(x2)	# 1224
	sw		x1, -80(x2)	# 1224
	addi	x2, x2, -84	# 1224
	lw		x31, 0(x27)	# 1224
	jalr	x1, x31, 0	# 1224
	addi	x2, x2, 84	# 1224
	lw		x1, -80(x2)	# 1224
	flw		f1, -72(x2)	# 1224
	fmul	f0, f1, f0	# 1224
	flw		f1, -64(x2)	# 1224
	fadd	f0, f1, f0	# 1224
	fsw		f0, -80(x2)	# 1226
	sw		x1, -88(x2)	# 1226
	addi	x2, x2, -92	# 1226
	jal		x1, fispos.2472	# 1226
	addi	x2, x2, 92	# 1226
	lw		x1, -88(x2)	# 1226
	lw		x5, -28(x2)	# 1226
	beq		x4, x5, beq.12907	# 1226
	addi	x4, x0, 0	# 1228
	lui		x5, %hi(l.6162)	# 1228
	ori		x5, x0, %lo(l.6162)	# 1228
	flw		f0, 0(x5)	# 1228
	flw		f1, -80(x2)	# 1228
	fdiv	f0, f0, f1	# 1228
	ori		x5, x0, 4	# 1228
	mul		x4, x4, x5	# 1228
	lw		x5, -32(x2)	# 1228
	add		x4, x5, x4	# 1228
	fsw		f0, 0(x4)	# 1228
	ori		x4, x0, 1	# 1230
	lw		x6, -16(x2)	# 1230
	lw		x27, -20(x2)	# 1230
	sw		x4, -88(x2)	# 1230
	addi	x4, x6, 0
	sw		x1, -92(x2)	# 1230
	addi	x2, x2, -96	# 1230
	lw		x31, 0(x27)	# 1230
	jalr	x1, x31, 0	# 1230
	addi	x2, x2, 96	# 1230
	lw		x1, -92(x2)	# 1230
	flw		f1, -80(x2)	# 1230
	fdiv	f0, f0, f1	# 1230
	sw		x1, -92(x2)	# 1230
	addi	x2, x2, -96	# 1230
	jal		x1, fneg.2476	# 1230
	addi	x2, x2, 96	# 1230
	lw		x1, -92(x2)	# 1230
	ori		x4, x0, 4	# 1230
	lw		x5, -88(x2)	# 1230
	mul		x4, x5, x4	# 1230
	lw		x5, -32(x2)	# 1230
	add		x4, x5, x4	# 1230
	fsw		f0, 0(x4)	# 1230
	ori		x4, x0, 2	# 1231
	lw		x6, -16(x2)	# 1231
	lw		x27, -8(x2)	# 1231
	sw		x4, -92(x2)	# 1231
	addi	x4, x6, 0
	sw		x1, -96(x2)	# 1231
	addi	x2, x2, -100	# 1231
	lw		x31, 0(x27)	# 1231
	jalr	x1, x31, 0	# 1231
	addi	x2, x2, 100	# 1231
	lw		x1, -96(x2)	# 1231
	flw		f1, -80(x2)	# 1231
	fdiv	f0, f0, f1	# 1231
	sw		x1, -96(x2)	# 1231
	addi	x2, x2, -100	# 1231
	jal		x1, fneg.2476	# 1231
	addi	x2, x2, 100	# 1231
	lw		x1, -96(x2)	# 1231
	ori		x4, x0, 4	# 1231
	lw		x5, -92(x2)	# 1231
	mul		x4, x5, x4	# 1231
	lw		x5, -32(x2)	# 1231
	add		x4, x5, x4	# 1231
	fsw		f0, 0(x4)	# 1231
	ori		x4, x0, 3	# 1232
	lw		x6, -16(x2)	# 1232
	lw		x27, 0(x2)	# 1232
	sw		x4, -96(x2)	# 1232
	addi	x4, x6, 0
	sw		x1, -100(x2)	# 1232
	addi	x2, x2, -104	# 1232
	lw		x31, 0(x27)	# 1232
	jalr	x1, x31, 0	# 1232
	addi	x2, x2, 104	# 1232
	lw		x1, -100(x2)	# 1232
	flw		f1, -80(x2)	# 1232
	fdiv	f0, f0, f1	# 1232
	sw		x1, -100(x2)	# 1232
	addi	x2, x2, -104	# 1232
	jal		x1, fneg.2476	# 1232
	addi	x2, x2, 104	# 1232
	lw		x1, -100(x2)	# 1232
	ori		x4, x0, 4	# 1232
	lw		x5, -96(x2)	# 1232
	mul		x4, x5, x4	# 1232
	lw		x5, -32(x2)	# 1232
	add		x4, x5, x4	# 1232
	fsw		f0, 0(x4)	# 1232
	jal		x0, beq_cont.12906	# 1226
beq.12907:
	addi	x4, x0, 0	# 1234
	lui		x5, %hi(l.6117)	# 1234
	ori		x5, x0, %lo(l.6117)	# 1234
	flw		f0, 0(x5)	# 1234
	ori		x5, x0, 4	# 1234
	mul		x4, x4, x5	# 1234
	lw		x5, -32(x2)	# 1234
	add		x4, x5, x4	# 1234
	fsw		f0, 0(x4)	# 1234
beq_cont.12906:
	addi	x4, x5, 0	# 1235
	jalr	x0, x1, 0	# 1235
setup_second_table.2774:
	lw		x6, 48(x27)	# 1241
	lw		x7, 44(x27)	# 1241
	lw		x8, 40(x27)	# 1241
	lw		x9, 36(x27)	# 1241
	lw		x10, 32(x27)	# 1241
	lw		x11, 28(x27)	# 1241
	lw		x12, 24(x27)	# 1241
	lw		x13, 20(x27)	# 1241
	lw		x14, 16(x27)	# 1241
	lw		x15, 12(x27)	# 1241
	lw		x16, 8(x27)	# 1241
	flw		f0, 4(x27)	# 1241
	sw		x9, 0(x2)	# 1241
	sw		x7, -4(x2)	# 1241
	sw		x8, -8(x2)	# 1241
	sw		x10, -12(x2)	# 1241
	sw		x11, -16(x2)	# 1241
	sw		x12, -20(x2)	# 1241
	sw		x5, -24(x2)	# 1241
	sw		x6, -28(x2)	# 1241
	sw		x14, -32(x2)	# 1241
	sw		x16, -36(x2)	# 1241
	sw		x4, -40(x2)	# 1241
	sw		x15, -44(x2)	# 1241
	addi	x4, x13, 0
	sw		x1, -48(x2)	# 1241
	addi	x2, x2, -52	# 1241
	jal		x1, min_caml_create_float_array	# 1241
	addi	x2, x2, 52	# 1241
	lw		x1, -48(x2)	# 1241
	ori		x5, x0, 4	# 1243
	lw		x6, -44(x2)	# 1243
	mul		x5, x6, x5	# 1243
	lw		x7, -40(x2)	# 1243
	add		x5, x7, x5	# 1243
	flw		f0, 0(x5)	# 1243
	ori		x5, x0, 4	# 1243
	lw		x8, -36(x2)	# 1243
	mul		x5, x8, x5	# 1243
	add		x5, x7, x5	# 1243
	flw		f1, 0(x5)	# 1243
	ori		x5, x0, 4	# 1243
	lw		x9, -32(x2)	# 1243
	mul		x5, x9, x5	# 1243
	add		x5, x7, x5	# 1243
	flw		f2, 0(x5)	# 1243
	lw		x5, -24(x2)	# 1243
	lw		x27, -28(x2)	# 1243
	sw		x4, -48(x2)	# 1243
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 1243
	addi	x2, x2, -56	# 1243
	lw		x31, 0(x27)	# 1243
	jalr	x1, x31, 0	# 1243
	addi	x2, x2, 56	# 1243
	lw		x1, -52(x2)	# 1243
	ori		x4, x0, 4	# 1244
	lw		x5, -44(x2)	# 1244
	mul		x4, x5, x4	# 1244
	lw		x6, -40(x2)	# 1244
	add		x4, x6, x4	# 1244
	flw		f1, 0(x4)	# 1244
	lw		x4, -24(x2)	# 1244
	lw		x27, -20(x2)	# 1244
	fsw		f0, -56(x2)	# 1244
	fsw		f1, -64(x2)	# 1244
	sw		x1, -72(x2)	# 1244
	addi	x2, x2, -76	# 1244
	lw		x31, 0(x27)	# 1244
	jalr	x1, x31, 0	# 1244
	addi	x2, x2, 76	# 1244
	lw		x1, -72(x2)	# 1244
	flw		f1, -64(x2)	# 1244
	fmul	f0, f1, f0	# 1244
	sw		x1, -72(x2)	# 1244
	addi	x2, x2, -76	# 1244
	jal		x1, fneg.2476	# 1244
	addi	x2, x2, 76	# 1244
	lw		x1, -72(x2)	# 1244
	ori		x4, x0, 4	# 1245
	lw		x5, -36(x2)	# 1245
	mul		x4, x5, x4	# 1245
	lw		x5, -40(x2)	# 1245
	add		x4, x5, x4	# 1245
	flw		f1, 0(x4)	# 1245
	lw		x4, -24(x2)	# 1245
	lw		x27, -16(x2)	# 1245
	fsw		f0, -72(x2)	# 1245
	fsw		f1, -80(x2)	# 1245
	sw		x1, -88(x2)	# 1245
	addi	x2, x2, -92	# 1245
	lw		x31, 0(x27)	# 1245
	jalr	x1, x31, 0	# 1245
	addi	x2, x2, 92	# 1245
	lw		x1, -88(x2)	# 1245
	flw		f1, -80(x2)	# 1245
	fmul	f0, f1, f0	# 1245
	sw		x1, -88(x2)	# 1245
	addi	x2, x2, -92	# 1245
	jal		x1, fneg.2476	# 1245
	addi	x2, x2, 92	# 1245
	lw		x1, -88(x2)	# 1245
	ori		x4, x0, 4	# 1246
	lw		x5, -32(x2)	# 1246
	mul		x4, x5, x4	# 1246
	lw		x5, -40(x2)	# 1246
	add		x4, x5, x4	# 1246
	flw		f1, 0(x4)	# 1246
	lw		x4, -24(x2)	# 1246
	lw		x27, -12(x2)	# 1246
	fsw		f0, -88(x2)	# 1246
	fsw		f1, -96(x2)	# 1246
	sw		x1, -104(x2)	# 1246
	addi	x2, x2, -108	# 1246
	lw		x31, 0(x27)	# 1246
	jalr	x1, x31, 0	# 1246
	addi	x2, x2, 108	# 1246
	lw		x1, -104(x2)	# 1246
	flw		f1, -96(x2)	# 1246
	fmul	f0, f1, f0	# 1246
	sw		x1, -104(x2)	# 1246
	addi	x2, x2, -108	# 1246
	jal		x1, fneg.2476	# 1246
	addi	x2, x2, 108	# 1246
	lw		x1, -104(x2)	# 1246
	ori		x4, x0, 4	# 1248
	lw		x5, -44(x2)	# 1248
	mul		x4, x5, x4	# 1248
	lw		x6, -48(x2)	# 1248
	add		x4, x6, x4	# 1248
	flw		f1, -56(x2)	# 1248
	fsw		f1, 0(x4)	# 1248
	lw		x4, -24(x2)	# 1252
	fsw		f0, -104(x2)	# 1252
	sw		x1, -112(x2)	# 1252
	addi	x2, x2, -116	# 1252
	jal		x1, o_isrot.2598	# 1252
	addi	x2, x2, 116	# 1252
	lw		x1, -112(x2)	# 1252
	lw		x5, -44(x2)	# 1252
	beq		x4, x5, beq.12910	# 1252
	ori		x4, x0, 1	# 1253
	ori		x6, x0, 2	# 1253
	ori		x7, x0, 4	# 1253
	mul		x6, x6, x7	# 1253
	lw		x7, -40(x2)	# 1253
	add		x6, x7, x6	# 1253
	flw		f0, 0(x6)	# 1253
	lw		x6, -24(x2)	# 1253
	lw		x27, -8(x2)	# 1253
	sw		x4, -112(x2)	# 1253
	fsw		f0, -120(x2)	# 1253
	addi	x4, x6, 0
	sw		x1, -128(x2)	# 1253
	addi	x2, x2, -132	# 1253
	lw		x31, 0(x27)	# 1253
	jalr	x1, x31, 0	# 1253
	addi	x2, x2, 132	# 1253
	lw		x1, -128(x2)	# 1253
	flw		f1, -120(x2)	# 1253
	fmul	f0, f1, f0	# 1253
	ori		x4, x0, 1	# 1253
	ori		x5, x0, 4	# 1253
	mul		x4, x4, x5	# 1253
	lw		x5, -40(x2)	# 1253
	add		x4, x5, x4	# 1253
	flw		f1, 0(x4)	# 1253
	lw		x4, -24(x2)	# 1253
	lw		x27, -4(x2)	# 1253
	fsw		f0, -128(x2)	# 1253
	fsw		f1, -136(x2)	# 1253
	sw		x1, -144(x2)	# 1253
	addi	x2, x2, -148	# 1253
	lw		x31, 0(x27)	# 1253
	jalr	x1, x31, 0	# 1253
	addi	x2, x2, 148	# 1253
	lw		x1, -144(x2)	# 1253
	flw		f1, -136(x2)	# 1253
	fmul	f0, f1, f0	# 1253
	flw		f1, -128(x2)	# 1253
	fadd	f0, f1, f0	# 1253
	sw		x1, -144(x2)	# 1253
	addi	x2, x2, -148	# 1253
	jal		x1, fhalf.2483	# 1253
	addi	x2, x2, 148	# 1253
	lw		x1, -144(x2)	# 1253
	flw		f1, -72(x2)	# 1253
	fsub	f0, f1, f0	# 1253
	ori		x4, x0, 4	# 1253
	lw		x5, -112(x2)	# 1253
	mul		x4, x5, x4	# 1253
	lw		x5, -48(x2)	# 1253
	add		x4, x5, x4	# 1253
	fsw		f0, 0(x4)	# 1253
	ori		x4, x0, 2	# 1254
	ori		x6, x0, 2	# 1254
	ori		x7, x0, 4	# 1254
	mul		x6, x6, x7	# 1254
	lw		x7, -40(x2)	# 1254
	add		x6, x7, x6	# 1254
	flw		f0, 0(x6)	# 1254
	lw		x6, -24(x2)	# 1254
	lw		x27, 0(x2)	# 1254
	sw		x4, -144(x2)	# 1254
	fsw		f0, -152(x2)	# 1254
	addi	x4, x6, 0
	sw		x1, -160(x2)	# 1254
	addi	x2, x2, -164	# 1254
	lw		x31, 0(x27)	# 1254
	jalr	x1, x31, 0	# 1254
	addi	x2, x2, 164	# 1254
	lw		x1, -160(x2)	# 1254
	flw		f1, -152(x2)	# 1254
	fmul	f0, f1, f0	# 1254
	addi	x4, x0, 0	# 1254
	ori		x5, x0, 4	# 1254
	mul		x4, x4, x5	# 1254
	lw		x5, -40(x2)	# 1254
	add		x4, x5, x4	# 1254
	flw		f1, 0(x4)	# 1254
	lw		x4, -24(x2)	# 1254
	lw		x27, -4(x2)	# 1254
	fsw		f0, -160(x2)	# 1254
	fsw		f1, -168(x2)	# 1254
	sw		x1, -176(x2)	# 1254
	addi	x2, x2, -180	# 1254
	lw		x31, 0(x27)	# 1254
	jalr	x1, x31, 0	# 1254
	addi	x2, x2, 180	# 1254
	lw		x1, -176(x2)	# 1254
	flw		f1, -168(x2)	# 1254
	fmul	f0, f1, f0	# 1254
	flw		f1, -160(x2)	# 1254
	fadd	f0, f1, f0	# 1254
	sw		x1, -176(x2)	# 1254
	addi	x2, x2, -180	# 1254
	jal		x1, fhalf.2483	# 1254
	addi	x2, x2, 180	# 1254
	lw		x1, -176(x2)	# 1254
	flw		f1, -88(x2)	# 1254
	fsub	f0, f1, f0	# 1254
	ori		x4, x0, 4	# 1254
	lw		x5, -144(x2)	# 1254
	mul		x4, x5, x4	# 1254
	lw		x5, -48(x2)	# 1254
	add		x4, x5, x4	# 1254
	fsw		f0, 0(x4)	# 1254
	ori		x4, x0, 3	# 1255
	ori		x6, x0, 1	# 1255
	ori		x7, x0, 4	# 1255
	mul		x6, x6, x7	# 1255
	lw		x7, -40(x2)	# 1255
	add		x6, x7, x6	# 1255
	flw		f0, 0(x6)	# 1255
	lw		x6, -24(x2)	# 1255
	lw		x27, 0(x2)	# 1255
	sw		x4, -176(x2)	# 1255
	fsw		f0, -184(x2)	# 1255
	addi	x4, x6, 0
	sw		x1, -192(x2)	# 1255
	addi	x2, x2, -196	# 1255
	lw		x31, 0(x27)	# 1255
	jalr	x1, x31, 0	# 1255
	addi	x2, x2, 196	# 1255
	lw		x1, -192(x2)	# 1255
	flw		f1, -184(x2)	# 1255
	fmul	f0, f1, f0	# 1255
	addi	x4, x0, 0	# 1255
	ori		x5, x0, 4	# 1255
	mul		x4, x4, x5	# 1255
	lw		x5, -40(x2)	# 1255
	add		x4, x5, x4	# 1255
	flw		f1, 0(x4)	# 1255
	lw		x4, -24(x2)	# 1255
	lw		x27, -8(x2)	# 1255
	fsw		f0, -192(x2)	# 1255
	fsw		f1, -200(x2)	# 1255
	sw		x1, -208(x2)	# 1255
	addi	x2, x2, -212	# 1255
	lw		x31, 0(x27)	# 1255
	jalr	x1, x31, 0	# 1255
	addi	x2, x2, 212	# 1255
	lw		x1, -208(x2)	# 1255
	flw		f1, -200(x2)	# 1255
	fmul	f0, f1, f0	# 1255
	flw		f1, -192(x2)	# 1255
	fadd	f0, f1, f0	# 1255
	sw		x1, -208(x2)	# 1255
	addi	x2, x2, -212	# 1255
	jal		x1, fhalf.2483	# 1255
	addi	x2, x2, 212	# 1255
	lw		x1, -208(x2)	# 1255
	flw		f1, -104(x2)	# 1255
	fsub	f0, f1, f0	# 1255
	ori		x4, x0, 4	# 1255
	lw		x5, -176(x2)	# 1255
	mul		x4, x5, x4	# 1255
	lw		x5, -48(x2)	# 1255
	add		x4, x5, x4	# 1255
	fsw		f0, 0(x4)	# 1255
	jal		x0, beq_cont.12909	# 1252
beq.12910:
	ori		x4, x0, 1	# 1257
	ori		x6, x0, 4	# 1257
	mul		x4, x4, x6	# 1257
	lw		x6, -48(x2)	# 1257
	add		x4, x6, x4	# 1257
	flw		f0, -72(x2)	# 1257
	fsw		f0, 0(x4)	# 1257
	ori		x4, x0, 2	# 1258
	ori		x7, x0, 4	# 1258
	mul		x4, x4, x7	# 1258
	add		x4, x6, x4	# 1258
	flw		f0, -88(x2)	# 1258
	fsw		f0, 0(x4)	# 1258
	ori		x4, x0, 3	# 1259
	ori		x7, x0, 4	# 1259
	mul		x4, x4, x7	# 1259
	add		x4, x6, x4	# 1259
	flw		f0, -104(x2)	# 1259
	fsw		f0, 0(x4)	# 1259
beq_cont.12909:
	flw		f0, -56(x2)	# 1261
	sw		x1, -208(x2)	# 1261
	addi	x2, x2, -212	# 1261
	jal		x1, fiszero.2470	# 1261
	addi	x2, x2, 212	# 1261
	lw		x1, -208(x2)	# 1261
	lw		x5, -44(x2)	# 1261
	beq		x4, x5, beq.12915	# 1261
	jal		x0, beq_cont.12914	# 1261
beq.12915:
	ori		x4, x0, 4	# 1262
	lui		x5, %hi(l.6125)	# 1262
	ori		x5, x0, %lo(l.6125)	# 1262
	flw		f0, 0(x5)	# 1262
	flw		f1, -56(x2)	# 1262
	fdiv	f0, f0, f1	# 1262
	ori		x5, x0, 4	# 1262
	mul		x4, x4, x5	# 1262
	lw		x5, -48(x2)	# 1262
	add		x4, x5, x4	# 1262
	fsw		f0, 0(x4)	# 1262
beq_cont.12914:
	lw		x4, -48(x2)	# 1264
	jalr	x0, x1, 0	# 1264
iter_setup_dirvec_constants.2777:
	lw		x6, 24(x27)	# 1270
	lw		x7, 20(x27)	# 1270
	lw		x8, 16(x27)	# 1270
	lw		x9, 12(x27)	# 1270
	lw		x10, 8(x27)	# 1270
	lw		x11, 4(x27)	# 1270
	ble		x10, x5, ble.12916	# 1270
	jalr	x0, x1, 0	# 1283
ble.12916:
	ori		x10, x0, 4	# 1271
	mul		x10, x5, x10	# 1271
	add		x9, x9, x10	# 1271
	lw		x9, 0(x9)	# 1271
	sw		x27, 0(x2)	# 1272
	sw		x7, -4(x2)	# 1272
	sw		x6, -8(x2)	# 1272
	sw		x5, -12(x2)	# 1272
	sw		x8, -16(x2)	# 1272
	sw		x11, -20(x2)	# 1272
	sw		x9, -24(x2)	# 1272
	sw		x4, -28(x2)	# 1272
	sw		x1, -32(x2)	# 1272
	addi	x2, x2, -36	# 1272
	jal		x1, d_const.2653	# 1272
	addi	x2, x2, 36	# 1272
	lw		x1, -32(x2)	# 1272
	lw		x5, -28(x2)	# 1273
	sw		x4, -32(x2)	# 1273
	addi	x4, x5, 0
	sw		x1, -36(x2)	# 1273
	addi	x2, x2, -40	# 1273
	jal		x1, d_vec.2651	# 1273
	addi	x2, x2, 40	# 1273
	lw		x1, -36(x2)	# 1273
	lw		x5, -24(x2)	# 1274
	sw		x4, -36(x2)	# 1274
	addi	x4, x5, 0
	sw		x1, -40(x2)	# 1274
	addi	x2, x2, -44	# 1274
	jal		x1, o_form.2592	# 1274
	addi	x2, x2, 44	# 1274
	lw		x1, -40(x2)	# 1274
	lw		x5, -20(x2)	# 1275
	beq		x4, x5, beq.12919	# 1275
	ori		x6, x0, 2	# 1277
	beq		x4, x6, beq.12921	# 1277
	lw		x4, -36(x2)	# 1280
	lw		x6, -24(x2)	# 1280
	lw		x27, -4(x2)	# 1280
	addi	x5, x6, 0
	sw		x1, -40(x2)	# 1280
	addi	x2, x2, -44	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 44	# 1280
	lw		x1, -40(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -12(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -32(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.12920	# 1277
beq.12921:
	lw		x4, -36(x2)	# 1278
	lw		x6, -24(x2)	# 1278
	lw		x27, -8(x2)	# 1278
	addi	x5, x6, 0
	sw		x1, -40(x2)	# 1278
	addi	x2, x2, -44	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 44	# 1278
	lw		x1, -40(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -12(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -32(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.12920:
	jal		x0, beq_cont.12918	# 1275
beq.12919:
	lw		x4, -36(x2)	# 1276
	lw		x6, -24(x2)	# 1276
	lw		x27, -16(x2)	# 1276
	addi	x5, x6, 0
	sw		x1, -40(x2)	# 1276
	addi	x2, x2, -44	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 44	# 1276
	lw		x1, -40(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -12(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -32(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.12918:
	lw		x4, -20(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x4, -28(x2)	# 1282
	lw		x27, 0(x2)	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x0, x31, 0	# 1282
setup_dirvec_constants.2780:
	lw		x5, 16(x27)	# 1287
	lw		x6, 12(x27)	# 1287
	lw		x7, 8(x27)	# 1287
	lw		x8, 4(x27)	# 1287
	ori		x9, x0, 4	# 1287
	mul		x7, x7, x9	# 1287
	add		x5, x5, x7	# 1287
	lw		x5, 0(x5)	# 1287
	sub		x5, x5, x8	# 1287
	addi	x27, x6, 0
	lw		x31, 0(x27)	# 1287
	jalr	x0, x31, 0	# 1287
setup_startp_constants.2782:
	lw		x6, 36(x27)	# 1295
	lw		x7, 32(x27)	# 1295
	lw		x8, 28(x27)	# 1295
	lw		x9, 24(x27)	# 1295
	lw		x10, 20(x27)	# 1295
	lw		x11, 16(x27)	# 1295
	lw		x12, 12(x27)	# 1295
	lw		x13, 8(x27)	# 1295
	lw		x14, 4(x27)	# 1295
	ble		x13, x5, ble.12922	# 1295
	jalr	x0, x1, 0	# 1310
ble.12922:
	ori		x15, x0, 4	# 1296
	mul		x15, x5, x15	# 1296
	add		x8, x8, x15	# 1296
	lw		x8, 0(x8)	# 1296
	sw		x27, 0(x2)	# 1297
	sw		x5, -4(x2)	# 1297
	sw		x7, -8(x2)	# 1297
	sw		x6, -12(x2)	# 1297
	sw		x9, -16(x2)	# 1297
	sw		x12, -20(x2)	# 1297
	sw		x10, -24(x2)	# 1297
	sw		x14, -28(x2)	# 1297
	sw		x11, -32(x2)	# 1297
	sw		x4, -36(x2)	# 1297
	sw		x13, -40(x2)	# 1297
	sw		x8, -44(x2)	# 1297
	addi	x4, x8, 0
	sw		x1, -48(x2)	# 1297
	addi	x2, x2, -52	# 1297
	jal		x1, o_param_ctbl.2630	# 1297
	addi	x2, x2, 52	# 1297
	lw		x1, -48(x2)	# 1297
	lw		x5, -44(x2)	# 1298
	sw		x4, -48(x2)	# 1298
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 1298
	addi	x2, x2, -56	# 1298
	jal		x1, o_form.2592	# 1298
	addi	x2, x2, 56	# 1298
	lw		x1, -52(x2)	# 1298
	ori		x5, x0, 4	# 1299
	lw		x6, -40(x2)	# 1299
	mul		x5, x6, x5	# 1299
	lw		x7, -36(x2)	# 1299
	add		x5, x7, x5	# 1299
	flw		f0, 0(x5)	# 1299
	lw		x5, -44(x2)	# 1299
	lw		x27, -32(x2)	# 1299
	sw		x4, -52(x2)	# 1299
	fsw		f0, -56(x2)	# 1299
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 1299
	addi	x2, x2, -68	# 1299
	lw		x31, 0(x27)	# 1299
	jalr	x1, x31, 0	# 1299
	addi	x2, x2, 68	# 1299
	lw		x1, -64(x2)	# 1299
	flw		f1, -56(x2)	# 1299
	fsub	f0, f1, f0	# 1299
	ori		x4, x0, 4	# 1299
	lw		x5, -40(x2)	# 1299
	mul		x4, x5, x4	# 1299
	lw		x5, -48(x2)	# 1299
	add		x4, x5, x4	# 1299
	fsw		f0, 0(x4)	# 1299
	ori		x4, x0, 4	# 1300
	lw		x6, -28(x2)	# 1300
	mul		x4, x6, x4	# 1300
	lw		x7, -36(x2)	# 1300
	add		x4, x7, x4	# 1300
	flw		f0, 0(x4)	# 1300
	lw		x4, -44(x2)	# 1300
	lw		x27, -24(x2)	# 1300
	fsw		f0, -64(x2)	# 1300
	sw		x1, -72(x2)	# 1300
	addi	x2, x2, -76	# 1300
	lw		x31, 0(x27)	# 1300
	jalr	x1, x31, 0	# 1300
	addi	x2, x2, 76	# 1300
	lw		x1, -72(x2)	# 1300
	flw		f1, -64(x2)	# 1300
	fsub	f0, f1, f0	# 1300
	ori		x4, x0, 4	# 1300
	lw		x5, -28(x2)	# 1300
	mul		x4, x5, x4	# 1300
	lw		x6, -48(x2)	# 1300
	add		x4, x6, x4	# 1300
	fsw		f0, 0(x4)	# 1300
	ori		x4, x0, 4	# 1301
	lw		x7, -20(x2)	# 1301
	mul		x4, x7, x4	# 1301
	lw		x8, -36(x2)	# 1301
	add		x4, x8, x4	# 1301
	flw		f0, 0(x4)	# 1301
	lw		x4, -44(x2)	# 1301
	lw		x27, -16(x2)	# 1301
	fsw		f0, -72(x2)	# 1301
	sw		x1, -80(x2)	# 1301
	addi	x2, x2, -84	# 1301
	lw		x31, 0(x27)	# 1301
	jalr	x1, x31, 0	# 1301
	addi	x2, x2, 84	# 1301
	lw		x1, -80(x2)	# 1301
	flw		f1, -72(x2)	# 1301
	fsub	f0, f1, f0	# 1301
	ori		x4, x0, 4	# 1301
	lw		x5, -20(x2)	# 1301
	mul		x4, x5, x4	# 1301
	lw		x6, -48(x2)	# 1301
	add		x4, x6, x4	# 1301
	fsw		f0, 0(x4)	# 1301
	lw		x4, -52(x2)	# 1302
	beq		x4, x5, beq.12925	# 1302
	ori		x5, x0, 2	# 1305
	ble		x4, x5, ble.12927	# 1305
	addi	x5, x0, 0	# 1306
	ori		x7, x0, 4	# 1306
	mul		x5, x5, x7	# 1306
	add		x5, x6, x5	# 1306
	flw		f0, 0(x5)	# 1306
	ori		x5, x0, 1	# 1306
	ori		x7, x0, 4	# 1306
	mul		x5, x5, x7	# 1306
	add		x5, x6, x5	# 1306
	flw		f1, 0(x5)	# 1306
	ori		x5, x0, 2	# 1306
	ori		x7, x0, 4	# 1306
	mul		x5, x5, x7	# 1306
	add		x5, x6, x5	# 1306
	flw		f2, 0(x5)	# 1306
	lw		x5, -44(x2)	# 1306
	lw		x27, -8(x2)	# 1306
	addi	x4, x5, 0
	sw		x1, -80(x2)	# 1306
	addi	x2, x2, -84	# 1306
	lw		x31, 0(x27)	# 1306
	jalr	x1, x31, 0	# 1306
	addi	x2, x2, 84	# 1306
	lw		x1, -80(x2)	# 1306
	ori		x4, x0, 3	# 1307
	ori		x5, x0, 3	# 1307
	lw		x6, -52(x2)	# 1307
	beq		x6, x5, beq.12929	# 1307
	jal		x0, beq_cont.12928	# 1307
beq.12929:
	lui		x5, %hi(l.6125)	# 1307
	ori		x5, x0, %lo(l.6125)	# 1307
	flw		f1, 0(x5)	# 1307
	fsub	f0, f0, f1	# 1307
beq_cont.12928:
	ori		x5, x0, 4	# 1307
	mul		x4, x4, x5	# 1307
	lw		x5, -48(x2)	# 1307
	add		x4, x5, x4	# 1307
	fsw		f0, 0(x4)	# 1307
	jal		x0, ble_cont.12926	# 1305
ble.12927:
ble_cont.12926:
	jal		x0, beq_cont.12924	# 1302
beq.12925:
	ori		x4, x0, 3	# 1303
	lw		x5, -44(x2)	# 1304
	sw		x4, -80(x2)	# 1304
	addi	x4, x5, 0
	sw		x1, -84(x2)	# 1304
	addi	x2, x2, -88	# 1304
	jal		x1, o_param_abc.2606	# 1304
	addi	x2, x2, 88	# 1304
	lw		x1, -84(x2)	# 1304
	addi	x5, x0, 0	# 1304
	ori		x6, x0, 4	# 1304
	mul		x5, x5, x6	# 1304
	lw		x6, -48(x2)	# 1304
	add		x5, x6, x5	# 1304
	flw		f0, 0(x5)	# 1304
	ori		x5, x0, 1	# 1304
	ori		x7, x0, 4	# 1304
	mul		x5, x5, x7	# 1304
	add		x5, x6, x5	# 1304
	flw		f1, 0(x5)	# 1304
	ori		x5, x0, 2	# 1304
	ori		x7, x0, 4	# 1304
	mul		x5, x5, x7	# 1304
	add		x5, x6, x5	# 1304
	flw		f2, 0(x5)	# 1304
	lw		x27, -12(x2)	# 1304
	sw		x1, -84(x2)	# 1304
	addi	x2, x2, -88	# 1304
	lw		x31, 0(x27)	# 1304
	jalr	x1, x31, 0	# 1304
	addi	x2, x2, 88	# 1304
	lw		x1, -84(x2)	# 1304
	ori		x4, x0, 4	# 1303
	lw		x5, -80(x2)	# 1303
	mul		x4, x5, x4	# 1303
	lw		x5, -48(x2)	# 1303
	add		x4, x5, x4	# 1303
	fsw		f0, 0(x4)	# 1303
beq_cont.12924:
	lw		x4, -28(x2)	# 1309
	lw		x5, -4(x2)	# 1309
	sub		x5, x5, x4	# 1309
	lw		x4, -36(x2)	# 1309
	lw		x27, 0(x2)	# 1309
	lw		x31, 0(x27)	# 1309
	jalr	x0, x31, 0	# 1309
setup_startp.2785:
	lw		x5, 24(x27)	# 1314
	lw		x6, 20(x27)	# 1314
	lw		x7, 16(x27)	# 1314
	lw		x8, 12(x27)	# 1314
	lw		x9, 8(x27)	# 1314
	lw		x10, 4(x27)	# 1314
	sw		x4, 0(x2)	# 1314
	sw		x7, -4(x2)	# 1314
	sw		x10, -8(x2)	# 1314
	sw		x8, -12(x2)	# 1314
	sw		x9, -16(x2)	# 1314
	addi	x27, x5, 0
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -20(x2)	# 1314
	addi	x2, x2, -24	# 1314
	lw		x31, 0(x27)	# 1314
	jalr	x1, x31, 0	# 1314
	addi	x2, x2, 24	# 1314
	lw		x1, -20(x2)	# 1314
	ori		x4, x0, 4	# 1315
	lw		x5, -16(x2)	# 1315
	mul		x4, x5, x4	# 1315
	lw		x5, -12(x2)	# 1315
	add		x4, x5, x4	# 1315
	lw		x4, 0(x4)	# 1315
	lw		x5, -8(x2)	# 1315
	sub		x5, x4, x5	# 1315
	lw		x4, 0(x2)	# 1315
	lw		x27, -4(x2)	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x0, x31, 0	# 1315
is_rect_outside.2787:
	lw		x5, 16(x27)	# 1327
	lw		x6, 12(x27)	# 1327
	lw		x7, 8(x27)	# 1327
	lw		x8, 4(x27)	# 1327
	sw		x5, 0(x2)	# 1327
	fsw		f2, -8(x2)	# 1327
	sw		x6, -16(x2)	# 1327
	fsw		f1, -24(x2)	# 1327
	sw		x8, -32(x2)	# 1327
	sw		x4, -36(x2)	# 1327
	sw		x7, -40(x2)	# 1327
	sw		x1, -44(x2)	# 1327
	addi	x2, x2, -48	# 1327
	jal		x1, fabs.2478	# 1327
	addi	x2, x2, 48	# 1327
	lw		x1, -44(x2)	# 1327
	lw		x4, -36(x2)	# 1327
	lw		x27, -40(x2)	# 1327
	fsw		f0, -48(x2)	# 1327
	sw		x1, -56(x2)	# 1327
	addi	x2, x2, -60	# 1327
	lw		x31, 0(x27)	# 1327
	jalr	x1, x31, 0	# 1327
	addi	x2, x2, 60	# 1327
	lw		x1, -56(x2)	# 1327
	fsub	f1, f1, f1	# 1327
	fadd	f1, f1, f0	# 1327
	flw		f0, -48(x2)	# 1327
	sw		x1, -56(x2)	# 1327
	addi	x2, x2, -60	# 1327
	jal		x1, fless.2480	# 1327
	addi	x2, x2, 60	# 1327
	lw		x1, -56(x2)	# 1327
	lw		x5, -32(x2)	# 1327
	beq		x4, x5, beq.12934	# 1327
	flw		f0, -24(x2)	# 1328
	sw		x1, -56(x2)	# 1328
	addi	x2, x2, -60	# 1328
	jal		x1, fabs.2478	# 1328
	addi	x2, x2, 60	# 1328
	lw		x1, -56(x2)	# 1328
	lw		x4, -36(x2)	# 1328
	lw		x27, -16(x2)	# 1328
	fsw		f0, -56(x2)	# 1328
	sw		x1, -64(x2)	# 1328
	addi	x2, x2, -68	# 1328
	lw		x31, 0(x27)	# 1328
	jalr	x1, x31, 0	# 1328
	addi	x2, x2, 68	# 1328
	lw		x1, -64(x2)	# 1328
	fsub	f1, f1, f1	# 1328
	fadd	f1, f1, f0	# 1328
	flw		f0, -56(x2)	# 1328
	sw		x1, -64(x2)	# 1328
	addi	x2, x2, -68	# 1328
	jal		x1, fless.2480	# 1328
	addi	x2, x2, 68	# 1328
	lw		x1, -64(x2)	# 1328
	addi	x5, x0, 0	# 1328
	beq		x4, x5, beq.12936	# 1328
	flw		f0, -8(x2)	# 1329
	sw		x1, -64(x2)	# 1329
	addi	x2, x2, -68	# 1329
	jal		x1, fabs.2478	# 1329
	addi	x2, x2, 68	# 1329
	lw		x1, -64(x2)	# 1329
	lw		x4, -36(x2)	# 1329
	lw		x27, 0(x2)	# 1329
	fsw		f0, -64(x2)	# 1329
	sw		x1, -72(x2)	# 1329
	addi	x2, x2, -76	# 1329
	lw		x31, 0(x27)	# 1329
	jalr	x1, x31, 0	# 1329
	addi	x2, x2, 76	# 1329
	lw		x1, -72(x2)	# 1329
	fsub	f1, f1, f1	# 1329
	fadd	f1, f1, f0	# 1329
	flw		f0, -64(x2)	# 1329
	sw		x1, -72(x2)	# 1329
	addi	x2, x2, -76	# 1329
	jal		x1, fless.2480	# 1329
	addi	x2, x2, 76	# 1329
	lw		x1, -72(x2)	# 1329
	jal		x0, beq_cont.12935	# 1328
beq.12936:
	addi	x4, x0, 0	# 1330
beq_cont.12935:
	jal		x0, beq_cont.12933	# 1327
beq.12934:
	addi	x4, x0, 0	# 1331
beq_cont.12933:
	lw		x5, -32(x2)	# 1326
	beq		x4, x5, beq.12937	# 1326
	lw		x4, -36(x2)	# 1332
	jal		x0, o_isinvert.2596	# 1332
beq.12937:
	lw		x4, -36(x2)	# 1332
	sw		x1, -72(x2)	# 1332
	addi	x2, x2, -76	# 1332
	jal		x1, o_isinvert.2596	# 1332
	addi	x2, x2, 76	# 1332
	lw		x1, -72(x2)	# 1332
	lw		x5, -32(x2)	# 1332
	beq		x4, x5, beq.12938	# 1332
	addi	x4, x0, 0	# 1332
	jalr	x0, x1, 0	# 1332
beq.12938:
	ori		x4, x0, 1	# 1332
	jalr	x0, x1, 0	# 1332
is_plane_outside.2792:
	lw		x5, 12(x27)	# 1337
	lw		x6, 8(x27)	# 1337
	lw		x7, 4(x27)	# 1337
	sw		x7, 0(x2)	# 1337
	sw		x5, -4(x2)	# 1337
	sw		x4, -8(x2)	# 1337
	fsw		f2, -16(x2)	# 1337
	fsw		f1, -24(x2)	# 1337
	fsw		f0, -32(x2)	# 1337
	sw		x6, -40(x2)	# 1337
	sw		x1, -44(x2)	# 1337
	addi	x2, x2, -48	# 1337
	jal		x1, o_param_abc.2606	# 1337
	addi	x2, x2, 48	# 1337
	lw		x1, -44(x2)	# 1337
	flw		f0, -32(x2)	# 1337
	flw		f1, -24(x2)	# 1337
	flw		f2, -16(x2)	# 1337
	lw		x27, -40(x2)	# 1337
	sw		x1, -44(x2)	# 1337
	addi	x2, x2, -48	# 1337
	lw		x31, 0(x27)	# 1337
	jalr	x1, x31, 0	# 1337
	addi	x2, x2, 48	# 1337
	lw		x1, -44(x2)	# 1337
	lw		x4, -8(x2)	# 1338
	fsw		f0, -48(x2)	# 1338
	sw		x1, -56(x2)	# 1338
	addi	x2, x2, -60	# 1338
	jal		x1, o_isinvert.2596	# 1338
	addi	x2, x2, 60	# 1338
	lw		x1, -56(x2)	# 1338
	flw		f0, -48(x2)	# 1338
	sw		x4, -56(x2)	# 1338
	sw		x1, -60(x2)	# 1338
	addi	x2, x2, -64	# 1338
	jal		x1, fisneg.2474	# 1338
	addi	x2, x2, 64	# 1338
	lw		x1, -60(x2)	# 1338
	addi	x5, x4, 0	# 1338
	lw		x4, -56(x2)	# 1338
	lw		x27, -4(x2)	# 1338
	sw		x1, -60(x2)	# 1338
	addi	x2, x2, -64	# 1338
	lw		x31, 0(x27)	# 1338
	jalr	x1, x31, 0	# 1338
	addi	x2, x2, 64	# 1338
	lw		x1, -60(x2)	# 1338
	lw		x5, 0(x2)	# 1338
	beq		x4, x5, beq.12941	# 1338
	addi	x4, x0, 0	# 1338
	jalr	x0, x1, 0	# 1338
beq.12941:
	ori		x4, x0, 1	# 1338
	jalr	x0, x1, 0	# 1338
is_second_outside.2797:
	lw		x5, 16(x27)	# 1343
	lw		x6, 12(x27)	# 1343
	lw		x7, 8(x27)	# 1343
	lw		x8, 4(x27)	# 1343
	sw		x8, 0(x2)	# 1343
	sw		x5, -4(x2)	# 1343
	sw		x7, -8(x2)	# 1343
	sw		x4, -12(x2)	# 1343
	addi	x27, x6, 0
	sw		x1, -16(x2)	# 1343
	addi	x2, x2, -20	# 1343
	lw		x31, 0(x27)	# 1343
	jalr	x1, x31, 0	# 1343
	addi	x2, x2, 20	# 1343
	lw		x1, -16(x2)	# 1343
	lw		x4, -12(x2)	# 1344
	fsw		f0, -16(x2)	# 1344
	sw		x1, -24(x2)	# 1344
	addi	x2, x2, -28	# 1344
	jal		x1, o_form.2592	# 1344
	addi	x2, x2, 28	# 1344
	lw		x1, -24(x2)	# 1344
	lw		x5, -8(x2)	# 1344
	beq		x4, x5, beq.12943	# 1344
	flw		f0, -16(x2)	# 1344
	jal		x0, beq_cont.12942	# 1344
beq.12943:
	lui		x4, %hi(l.6125)	# 1344
	ori		x4, x0, %lo(l.6125)	# 1344
	flw		f0, 0(x4)	# 1344
	flw		f1, -16(x2)	# 1344
	fsub	f0, f1, f0	# 1344
beq_cont.12942:
	lw		x4, -12(x2)	# 1345
	fsw		f0, -24(x2)	# 1345
	sw		x1, -32(x2)	# 1345
	addi	x2, x2, -36	# 1345
	jal		x1, o_isinvert.2596	# 1345
	addi	x2, x2, 36	# 1345
	lw		x1, -32(x2)	# 1345
	flw		f0, -24(x2)	# 1345
	sw		x4, -32(x2)	# 1345
	sw		x1, -36(x2)	# 1345
	addi	x2, x2, -40	# 1345
	jal		x1, fisneg.2474	# 1345
	addi	x2, x2, 40	# 1345
	lw		x1, -36(x2)	# 1345
	addi	x5, x4, 0	# 1345
	lw		x4, -32(x2)	# 1345
	lw		x27, -4(x2)	# 1345
	sw		x1, -36(x2)	# 1345
	addi	x2, x2, -40	# 1345
	lw		x31, 0(x27)	# 1345
	jalr	x1, x31, 0	# 1345
	addi	x2, x2, 40	# 1345
	lw		x1, -36(x2)	# 1345
	lw		x5, 0(x2)	# 1345
	beq		x4, x5, beq.12944	# 1345
	addi	x4, x0, 0	# 1345
	jalr	x0, x1, 0	# 1345
beq.12944:
	ori		x4, x0, 1	# 1345
	jalr	x0, x1, 0	# 1345
is_outside.2802:
	lw		x5, 32(x27)	# 1350
	lw		x6, 28(x27)	# 1350
	lw		x7, 24(x27)	# 1350
	lw		x8, 20(x27)	# 1350
	lw		x9, 16(x27)	# 1350
	lw		x10, 12(x27)	# 1350
	lw		x11, 8(x27)	# 1350
	lw		x12, 4(x27)	# 1350
	sw		x8, 0(x2)	# 1350
	sw		x10, -4(x2)	# 1350
	sw		x11, -8(x2)	# 1350
	sw		x9, -12(x2)	# 1350
	sw		x12, -16(x2)	# 1350
	fsw		f2, -24(x2)	# 1350
	sw		x5, -32(x2)	# 1350
	fsw		f1, -40(x2)	# 1350
	sw		x4, -48(x2)	# 1350
	sw		x6, -52(x2)	# 1350
	fsw		f0, -56(x2)	# 1350
	addi	x27, x7, 0
	sw		x1, -64(x2)	# 1350
	addi	x2, x2, -68	# 1350
	lw		x31, 0(x27)	# 1350
	jalr	x1, x31, 0	# 1350
	addi	x2, x2, 68	# 1350
	lw		x1, -64(x2)	# 1350
	flw		f1, -56(x2)	# 1350
	fsub	f0, f1, f0	# 1350
	lw		x4, -48(x2)	# 1351
	lw		x27, -52(x2)	# 1351
	fsw		f0, -64(x2)	# 1351
	sw		x1, -72(x2)	# 1351
	addi	x2, x2, -76	# 1351
	lw		x31, 0(x27)	# 1351
	jalr	x1, x31, 0	# 1351
	addi	x2, x2, 76	# 1351
	lw		x1, -72(x2)	# 1351
	flw		f1, -40(x2)	# 1351
	fsub	f0, f1, f0	# 1351
	lw		x4, -48(x2)	# 1352
	lw		x27, -32(x2)	# 1352
	fsw		f0, -72(x2)	# 1352
	sw		x1, -80(x2)	# 1352
	addi	x2, x2, -84	# 1352
	lw		x31, 0(x27)	# 1352
	jalr	x1, x31, 0	# 1352
	addi	x2, x2, 84	# 1352
	lw		x1, -80(x2)	# 1352
	flw		f1, -24(x2)	# 1352
	fsub	f0, f1, f0	# 1352
	lw		x4, -48(x2)	# 1353
	fsw		f0, -80(x2)	# 1353
	sw		x1, -88(x2)	# 1353
	addi	x2, x2, -92	# 1353
	jal		x1, o_form.2592	# 1353
	addi	x2, x2, 92	# 1353
	lw		x1, -88(x2)	# 1353
	lw		x5, -16(x2)	# 1354
	beq		x4, x5, beq.12947	# 1354
	lw		x5, -8(x2)	# 1356
	beq		x4, x5, beq.12948	# 1356
	flw		f0, -64(x2)	# 1359
	flw		f1, -72(x2)	# 1359
	flw		f2, -80(x2)	# 1359
	lw		x4, -48(x2)	# 1359
	lw		x27, 0(x2)	# 1359
	lw		x31, 0(x27)	# 1359
	jalr	x0, x31, 0	# 1359
beq.12948:
	flw		f0, -64(x2)	# 1357
	flw		f1, -72(x2)	# 1357
	flw		f2, -80(x2)	# 1357
	lw		x4, -48(x2)	# 1357
	lw		x27, -4(x2)	# 1357
	lw		x31, 0(x27)	# 1357
	jalr	x0, x31, 0	# 1357
beq.12947:
	flw		f0, -64(x2)	# 1355
	flw		f1, -72(x2)	# 1355
	flw		f2, -80(x2)	# 1355
	lw		x4, -48(x2)	# 1355
	lw		x27, -12(x2)	# 1355
	lw		x31, 0(x27)	# 1355
	jalr	x0, x31, 0	# 1355
check_all_inside.2807:
	lw		x6, 20(x27)	# 1364
	lw		x7, 16(x27)	# 1364
	lw		x8, 12(x27)	# 1364
	lw		x9, 8(x27)	# 1364
	lw		x10, 4(x27)	# 1364
	ori		x11, x0, 4	# 1364
	mul		x11, x4, x11	# 1364
	add		x11, x5, x11	# 1364
	lw		x11, 0(x11)	# 1364
	beq		x11, x8, beq.12949	# 1365
	ori		x8, x0, 4	# 1368
	mul		x8, x11, x8	# 1368
	add		x6, x6, x8	# 1368
	lw		x6, 0(x6)	# 1368
	fsw		f2, 0(x2)	# 1368
	fsw		f1, -8(x2)	# 1368
	fsw		f0, -16(x2)	# 1368
	sw		x5, -24(x2)	# 1368
	sw		x27, -28(x2)	# 1368
	sw		x10, -32(x2)	# 1368
	sw		x4, -36(x2)	# 1368
	sw		x9, -40(x2)	# 1368
	addi	x4, x6, 0
	addi	x27, x7, 0
	sw		x1, -44(x2)	# 1368
	addi	x2, x2, -48	# 1368
	lw		x31, 0(x27)	# 1368
	jalr	x1, x31, 0	# 1368
	addi	x2, x2, 48	# 1368
	lw		x1, -44(x2)	# 1368
	lw		x5, -40(x2)	# 1368
	beq		x4, x5, beq.12950	# 1368
	addi	x4, x0, 0	# 1369
	jalr	x0, x1, 0	# 1369
beq.12950:
	lw		x4, -32(x2)	# 1371
	lw		x5, -36(x2)	# 1371
	add		x4, x5, x4	# 1371
	flw		f0, -16(x2)	# 1371
	flw		f1, -8(x2)	# 1371
	flw		f2, 0(x2)	# 1371
	lw		x5, -24(x2)	# 1371
	lw		x27, -28(x2)	# 1371
	lw		x31, 0(x27)	# 1371
	jalr	x0, x31, 0	# 1371
beq.12949:
	ori		x4, x0, 1	# 1366
	jalr	x0, x1, 0	# 1366
shadow_check_and_group.2813:
	lw		x6, 44(x27)	# 1384
	lw		x7, 40(x27)	# 1384
	lw		x8, 36(x27)	# 1384
	lw		x9, 32(x27)	# 1384
	lw		x10, 28(x27)	# 1384
	lw		x11, 24(x27)	# 1384
	lw		x12, 20(x27)	# 1384
	lw		x13, 16(x27)	# 1384
	lw		x14, 12(x27)	# 1384
	lw		x15, 8(x27)	# 1384
	lw		x16, 4(x27)	# 1384
	ori		x17, x0, 4	# 1384
	mul		x17, x4, x17	# 1384
	add		x17, x5, x17	# 1384
	lw		x17, 0(x17)	# 1384
	beq		x17, x14, beq.12951	# 1384
	sw		x12, 0(x2)	# 1388
	sw		x13, -4(x2)	# 1388
	sw		x11, -8(x2)	# 1388
	sw		x10, -12(x2)	# 1388
	sw		x5, -16(x2)	# 1388
	sw		x27, -20(x2)	# 1388
	sw		x16, -24(x2)	# 1388
	sw		x4, -28(x2)	# 1388
	sw		x8, -32(x2)	# 1388
	sw		x17, -36(x2)	# 1388
	sw		x7, -40(x2)	# 1388
	sw		x15, -44(x2)	# 1388
	addi	x5, x9, 0
	addi	x4, x17, 0
	addi	x27, x6, 0
	addi	x6, x11, 0
	sw		x1, -48(x2)	# 1388
	addi	x2, x2, -52	# 1388
	lw		x31, 0(x27)	# 1388
	jalr	x1, x31, 0	# 1388
	addi	x2, x2, 52	# 1388
	lw		x1, -48(x2)	# 1388
	ori		x5, x0, 4	# 1389
	lw		x6, -44(x2)	# 1389
	mul		x5, x6, x5	# 1389
	lw		x7, -40(x2)	# 1389
	add		x5, x7, x5	# 1389
	flw		f0, 0(x5)	# 1389
	fsw		f0, -48(x2)	# 1390
	beq		x4, x6, beq.12953	# 1390
	lui		x4, %hi(l.7091)	# 1390
	ori		x4, x0, %lo(l.7091)	# 1390
	flw		f1, 0(x4)	# 1390
	sw		x1, -56(x2)	# 1390
	addi	x2, x2, -60	# 1390
	jal		x1, fless.2480	# 1390
	addi	x2, x2, 60	# 1390
	lw		x1, -56(x2)	# 1390
	jal		x0, beq_cont.12952	# 1390
beq.12953:
	addi	x4, x0, 0	# 1390
beq_cont.12952:
	lw		x5, -44(x2)	# 1390
	beq		x4, x5, beq.12954	# 1390
	lui		x4, %hi(l.7093)	# 1393
	ori		x4, x0, %lo(l.7093)	# 1393
	flw		f0, 0(x4)	# 1393
	flw		f1, -48(x2)	# 1393
	fadd	f0, f1, f0	# 1393
	ori		x4, x0, 4	# 1394
	mul		x4, x5, x4	# 1394
	lw		x6, -12(x2)	# 1394
	add		x4, x6, x4	# 1394
	flw		f1, 0(x4)	# 1394
	fmul	f1, f1, f0	# 1394
	ori		x4, x0, 4	# 1394
	mul		x4, x5, x4	# 1394
	lw		x7, -8(x2)	# 1394
	add		x4, x7, x4	# 1394
	flw		f2, 0(x4)	# 1394
	fadd	f1, f1, f2	# 1394
	ori		x4, x0, 4	# 1395
	lw		x8, -24(x2)	# 1395
	mul		x4, x8, x4	# 1395
	add		x4, x6, x4	# 1395
	flw		f2, 0(x4)	# 1395
	fmul	f2, f2, f0	# 1395
	ori		x4, x0, 4	# 1395
	mul		x4, x8, x4	# 1395
	add		x4, x7, x4	# 1395
	flw		f3, 0(x4)	# 1395
	fadd	f2, f2, f3	# 1395
	ori		x4, x0, 4	# 1396
	lw		x9, -4(x2)	# 1396
	mul		x4, x9, x4	# 1396
	add		x4, x6, x4	# 1396
	flw		f3, 0(x4)	# 1396
	fmul	f0, f3, f0	# 1396
	ori		x4, x0, 4	# 1396
	mul		x4, x9, x4	# 1396
	add		x4, x7, x4	# 1396
	flw		f3, 0(x4)	# 1396
	fadd	f0, f0, f3	# 1396
	lw		x4, -16(x2)	# 1397
	lw		x27, 0(x2)	# 1397
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	fsub	f31, f31, f31
	fadd	f31, f31, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f31
	sw		x1, -56(x2)	# 1397
	addi	x2, x2, -60	# 1397
	lw		x31, 0(x27)	# 1397
	jalr	x1, x31, 0	# 1397
	addi	x2, x2, 60	# 1397
	lw		x1, -56(x2)	# 1397
	lw		x5, -44(x2)	# 1397
	beq		x4, x5, beq.12955	# 1397
	ori		x4, x0, 1	# 1398
	jalr	x0, x1, 0	# 1398
beq.12955:
	lw		x4, -24(x2)	# 1400
	lw		x5, -28(x2)	# 1400
	add		x4, x5, x4	# 1400
	lw		x5, -16(x2)	# 1400
	lw		x27, -20(x2)	# 1400
	lw		x31, 0(x27)	# 1400
	jalr	x0, x31, 0	# 1400
beq.12954:
	ori		x4, x0, 4	# 1406
	lw		x6, -36(x2)	# 1406
	mul		x4, x6, x4	# 1406
	lw		x6, -32(x2)	# 1406
	add		x4, x6, x4	# 1406
	lw		x4, 0(x4)	# 1406
	sw		x1, -56(x2)	# 1406
	addi	x2, x2, -60	# 1406
	jal		x1, o_isinvert.2596	# 1406
	addi	x2, x2, 60	# 1406
	lw		x1, -56(x2)	# 1406
	lw		x5, -44(x2)	# 1406
	beq		x4, x5, beq.12956	# 1406
	lw		x4, -24(x2)	# 1407
	lw		x5, -28(x2)	# 1407
	add		x4, x5, x4	# 1407
	lw		x5, -16(x2)	# 1407
	lw		x27, -20(x2)	# 1407
	lw		x31, 0(x27)	# 1407
	jalr	x0, x31, 0	# 1407
beq.12956:
	addi	x4, x0, 0	# 1409
	jalr	x0, x1, 0	# 1409
beq.12951:
	addi	x4, x0, 0	# 1385
	jalr	x0, x1, 0	# 1385
shadow_check_one_or_group.2816:
	lw		x6, 20(x27)	# 1414
	lw		x7, 16(x27)	# 1414
	lw		x8, 12(x27)	# 1414
	lw		x9, 8(x27)	# 1414
	lw		x10, 4(x27)	# 1414
	ori		x11, x0, 4	# 1414
	mul		x11, x4, x11	# 1414
	add		x11, x5, x11	# 1414
	lw		x11, 0(x11)	# 1414
	beq		x11, x8, beq.12957	# 1415
	ori		x8, x0, 4	# 1418
	mul		x8, x11, x8	# 1418
	add		x7, x7, x8	# 1418
	lw		x7, 0(x7)	# 1418
	sw		x5, 0(x2)	# 1419
	sw		x27, -4(x2)	# 1419
	sw		x10, -8(x2)	# 1419
	sw		x4, -12(x2)	# 1419
	sw		x9, -16(x2)	# 1419
	addi	x5, x7, 0
	addi	x4, x9, 0
	addi	x27, x6, 0
	sw		x1, -20(x2)	# 1419
	addi	x2, x2, -24	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 24	# 1419
	lw		x1, -20(x2)	# 1419
	lw		x5, -16(x2)	# 1420
	beq		x4, x5, beq.12958	# 1420
	ori		x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.12958:
	lw		x4, -8(x2)	# 1423
	lw		x5, -12(x2)	# 1423
	add		x4, x5, x4	# 1423
	lw		x5, 0(x2)	# 1423
	lw		x27, -4(x2)	# 1423
	lw		x31, 0(x27)	# 1423
	jalr	x0, x31, 0	# 1423
beq.12957:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
shadow_check_one_or_matrix.2819:
	lw		x6, 32(x27)	# 1429
	lw		x7, 28(x27)	# 1429
	lw		x8, 24(x27)	# 1429
	lw		x9, 20(x27)	# 1429
	lw		x10, 16(x27)	# 1429
	lw		x11, 12(x27)	# 1429
	lw		x12, 8(x27)	# 1429
	lw		x13, 4(x27)	# 1429
	ori		x14, x0, 4	# 1429
	mul		x14, x4, x14	# 1429
	add		x14, x5, x14	# 1429
	lw		x14, 0(x14)	# 1429
	ori		x15, x0, 4	# 1430
	mul		x15, x12, x15	# 1430
	add		x15, x14, x15	# 1430
	lw		x15, 0(x15)	# 1430
	beq		x15, x11, beq.12959	# 1431
	ori		x11, x0, 99	# 1435
	sw		x14, 0(x2)	# 1435
	sw		x8, -4(x2)	# 1435
	sw		x5, -8(x2)	# 1435
	sw		x27, -12(x2)	# 1435
	sw		x13, -16(x2)	# 1435
	sw		x4, -20(x2)	# 1435
	sw		x12, -24(x2)	# 1435
	beq		x15, x11, beq.12961	# 1435
	sw		x7, -28(x2)	# 1438
	addi	x5, x9, 0
	addi	x4, x15, 0
	addi	x27, x6, 0
	addi	x6, x10, 0
	sw		x1, -32(x2)	# 1438
	addi	x2, x2, -36	# 1438
	lw		x31, 0(x27)	# 1438
	jalr	x1, x31, 0	# 1438
	addi	x2, x2, 36	# 1438
	lw		x1, -32(x2)	# 1438
	addi	x5, x0, 0	# 1441
	beq		x4, x5, beq.12963	# 1441
	addi	x4, x0, 0	# 1442
	ori		x5, x0, 4	# 1442
	mul		x4, x4, x5	# 1442
	lw		x5, -28(x2)	# 1442
	add		x4, x5, x4	# 1442
	flw		f0, 0(x4)	# 1442
	lui		x4, %hi(l.7131)	# 1442
	ori		x4, x0, %lo(l.7131)	# 1442
	flw		f1, 0(x4)	# 1442
	sw		x1, -32(x2)	# 1442
	addi	x2, x2, -36	# 1442
	jal		x1, fless.2480	# 1442
	addi	x2, x2, 36	# 1442
	lw		x1, -32(x2)	# 1442
	addi	x5, x0, 0	# 1442
	beq		x4, x5, beq.12965	# 1442
	ori		x4, x0, 1	# 1443
	lw		x5, 0(x2)	# 1443
	lw		x27, -4(x2)	# 1443
	sw		x1, -32(x2)	# 1443
	addi	x2, x2, -36	# 1443
	lw		x31, 0(x27)	# 1443
	jalr	x1, x31, 0	# 1443
	addi	x2, x2, 36	# 1443
	lw		x1, -32(x2)	# 1443
	addi	x5, x0, 0	# 1443
	beq		x4, x5, beq.12967	# 1443
	ori		x4, x0, 1	# 1444
	jal		x0, beq_cont.12966	# 1443
beq.12967:
	addi	x4, x0, 0	# 1445
beq_cont.12966:
	jal		x0, beq_cont.12964	# 1442
beq.12965:
	addi	x4, x0, 0	# 1446
beq_cont.12964:
	jal		x0, beq_cont.12962	# 1441
beq.12963:
	addi	x4, x0, 0	# 1447
beq_cont.12962:
	jal		x0, beq_cont.12960	# 1435
beq.12961:
	ori		x4, x0, 1	# 1436
beq_cont.12960:
	lw		x5, -24(x2)	# 1434
	beq		x4, x5, beq.12968	# 1434
	lw		x4, -16(x2)	# 1449
	lw		x6, 0(x2)	# 1449
	lw		x27, -4(x2)	# 1449
	addi	x5, x6, 0
	sw		x1, -32(x2)	# 1449
	addi	x2, x2, -36	# 1449
	lw		x31, 0(x27)	# 1449
	jalr	x1, x31, 0	# 1449
	addi	x2, x2, 36	# 1449
	lw		x1, -32(x2)	# 1449
	lw		x5, -24(x2)	# 1449
	beq		x4, x5, beq.12969	# 1449
	ori		x4, x0, 1	# 1450
	jalr	x0, x1, 0	# 1450
beq.12969:
	lw		x4, -16(x2)	# 1452
	lw		x5, -20(x2)	# 1452
	add		x4, x5, x4	# 1452
	lw		x5, -8(x2)	# 1452
	lw		x27, -12(x2)	# 1452
	lw		x31, 0(x27)	# 1452
	jalr	x0, x31, 0	# 1452
beq.12968:
	lw		x4, -16(x2)	# 1454
	lw		x5, -20(x2)	# 1454
	add		x4, x5, x4	# 1454
	lw		x5, -8(x2)	# 1454
	lw		x27, -12(x2)	# 1454
	lw		x31, 0(x27)	# 1454
	jalr	x0, x31, 0	# 1454
beq.12959:
	addi	x4, x0, 0	# 1432
	jalr	x0, x1, 0	# 1432
solve_each_element.2822:
	lw		x7, 56(x27)	# 1465
	lw		x8, 52(x27)	# 1465
	lw		x9, 48(x27)	# 1465
	lw		x10, 44(x27)	# 1465
	lw		x11, 40(x27)	# 1465
	lw		x12, 36(x27)	# 1465
	lw		x13, 32(x27)	# 1465
	lw		x14, 28(x27)	# 1465
	lw		x15, 24(x27)	# 1465
	lw		x16, 20(x27)	# 1465
	lw		x17, 16(x27)	# 1465
	lw		x18, 12(x27)	# 1465
	lw		x19, 8(x27)	# 1465
	flw		f0, 4(x27)	# 1465
	ori		x20, x0, 4	# 1465
	mul		x20, x4, x20	# 1465
	add		x20, x5, x20	# 1465
	lw		x20, 0(x20)	# 1465
	beq		x20, x17, beq.12970	# 1466
	sw		x13, 0(x2)	# 1468
	sw		x15, -4(x2)	# 1468
	sw		x14, -8(x2)	# 1468
	sw		x7, -12(x2)	# 1468
	sw		x16, -16(x2)	# 1468
	sw		x9, -20(x2)	# 1468
	sw		x8, -24(x2)	# 1468
	fsw		f0, -32(x2)	# 1468
	sw		x10, -40(x2)	# 1468
	sw		x6, -44(x2)	# 1468
	sw		x5, -48(x2)	# 1468
	sw		x27, -52(x2)	# 1468
	sw		x19, -56(x2)	# 1468
	sw		x4, -60(x2)	# 1468
	sw		x12, -64(x2)	# 1468
	sw		x20, -68(x2)	# 1468
	sw		x18, -72(x2)	# 1468
	addi	x5, x6, 0
	addi	x4, x20, 0
	addi	x27, x11, 0
	addi	x6, x9, 0
	sw		x1, -76(x2)	# 1468
	addi	x2, x2, -80	# 1468
	lw		x31, 0(x27)	# 1468
	jalr	x1, x31, 0	# 1468
	addi	x2, x2, 80	# 1468
	lw		x1, -76(x2)	# 1468
	lw		x5, -72(x2)	# 1469
	beq		x4, x5, beq.12972	# 1469
	ori		x6, x0, 4	# 1473
	mul		x6, x5, x6	# 1473
	lw		x7, -40(x2)	# 1473
	add		x6, x7, x6	# 1473
	flw		f1, 0(x6)	# 1473
	flw		f0, -32(x2)	# 1475
	sw		x4, -76(x2)	# 1475
	fsw		f1, -80(x2)	# 1475
	sw		x1, -88(x2)	# 1475
	addi	x2, x2, -92	# 1475
	jal		x1, fless.2480	# 1475
	addi	x2, x2, 92	# 1475
	lw		x1, -88(x2)	# 1475
	lw		x5, -72(x2)	# 1475
	beq		x4, x5, beq.12974	# 1475
	addi	x4, x0, 0	# 1476
	ori		x5, x0, 4	# 1476
	mul		x4, x4, x5	# 1476
	lw		x5, -24(x2)	# 1476
	add		x4, x5, x4	# 1476
	flw		f1, 0(x4)	# 1476
	flw		f0, -80(x2)	# 1476
	sw		x1, -88(x2)	# 1476
	addi	x2, x2, -92	# 1476
	jal		x1, fless.2480	# 1476
	addi	x2, x2, 92	# 1476
	lw		x1, -88(x2)	# 1476
	addi	x5, x0, 0	# 1476
	beq		x4, x5, beq.12976	# 1476
	lui		x4, %hi(l.7093)	# 1478
	ori		x4, x0, %lo(l.7093)	# 1478
	flw		f0, 0(x4)	# 1478
	flw		f1, -80(x2)	# 1478
	fadd	f0, f1, f0	# 1478
	addi	x4, x0, 0	# 1479
	ori		x5, x0, 4	# 1479
	mul		x4, x4, x5	# 1479
	lw		x5, -44(x2)	# 1479
	add		x4, x5, x4	# 1479
	flw		f1, 0(x4)	# 1479
	fmul	f1, f1, f0	# 1479
	addi	x4, x0, 0	# 1479
	ori		x6, x0, 4	# 1479
	mul		x4, x4, x6	# 1479
	lw		x6, -20(x2)	# 1479
	add		x4, x6, x4	# 1479
	flw		f2, 0(x4)	# 1479
	fadd	f1, f1, f2	# 1479
	ori		x4, x0, 1	# 1480
	ori		x7, x0, 4	# 1480
	mul		x4, x4, x7	# 1480
	add		x4, x5, x4	# 1480
	flw		f2, 0(x4)	# 1480
	fmul	f2, f2, f0	# 1480
	ori		x4, x0, 1	# 1480
	ori		x7, x0, 4	# 1480
	mul		x4, x4, x7	# 1480
	add		x4, x6, x4	# 1480
	flw		f3, 0(x4)	# 1480
	fadd	f2, f2, f3	# 1480
	ori		x4, x0, 2	# 1481
	ori		x7, x0, 4	# 1481
	mul		x4, x4, x7	# 1481
	add		x4, x5, x4	# 1481
	flw		f3, 0(x4)	# 1481
	fmul	f3, f3, f0	# 1481
	ori		x4, x0, 2	# 1481
	ori		x7, x0, 4	# 1481
	mul		x4, x4, x7	# 1481
	add		x4, x6, x4	# 1481
	flw		f4, 0(x4)	# 1481
	fadd	f3, f3, f4	# 1481
	addi	x4, x0, 0	# 1482
	lw		x6, -48(x2)	# 1482
	lw		x27, -16(x2)	# 1482
	fsw		f3, -88(x2)	# 1482
	fsw		f2, -96(x2)	# 1482
	fsw		f1, -104(x2)	# 1482
	fsw		f0, -112(x2)	# 1482
	addi	x5, x6, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -120(x2)	# 1482
	addi	x2, x2, -124	# 1482
	lw		x31, 0(x27)	# 1482
	jalr	x1, x31, 0	# 1482
	addi	x2, x2, 124	# 1482
	lw		x1, -120(x2)	# 1482
	addi	x5, x0, 0	# 1482
	beq		x4, x5, beq.12978	# 1482
	addi	x4, x0, 0	# 1484
	ori		x5, x0, 4	# 1484
	mul		x4, x4, x5	# 1484
	lw		x5, -24(x2)	# 1484
	add		x4, x5, x4	# 1484
	flw		f0, -112(x2)	# 1484
	fsw		f0, 0(x4)	# 1484
	flw		f0, -104(x2)	# 1485
	flw		f1, -96(x2)	# 1485
	flw		f2, -88(x2)	# 1485
	lw		x4, -8(x2)	# 1485
	lw		x27, -12(x2)	# 1485
	sw		x1, -120(x2)	# 1485
	addi	x2, x2, -124	# 1485
	lw		x31, 0(x27)	# 1485
	jalr	x1, x31, 0	# 1485
	addi	x2, x2, 124	# 1485
	lw		x1, -120(x2)	# 1485
	addi	x4, x0, 0	# 1486
	ori		x5, x0, 4	# 1486
	mul		x4, x4, x5	# 1486
	lw		x5, -4(x2)	# 1486
	add		x4, x5, x4	# 1486
	lw		x5, -68(x2)	# 1486
	sw		x5, 0(x4)	# 1486
	addi	x4, x0, 0	# 1487
	ori		x5, x0, 4	# 1487
	mul		x4, x4, x5	# 1487
	lw		x5, 0(x2)	# 1487
	add		x4, x5, x4	# 1487
	lw		x5, -76(x2)	# 1487
	sw		x5, 0(x4)	# 1487
	jal		x0, beq_cont.12977	# 1482
beq.12978:
beq_cont.12977:
	jal		x0, beq_cont.12975	# 1476
beq.12976:
beq_cont.12975:
	jal		x0, beq_cont.12973	# 1475
beq.12974:
beq_cont.12973:
	lw		x4, -56(x2)	# 1493
	lw		x5, -60(x2)	# 1493
	add		x4, x5, x4	# 1493
	lw		x5, -48(x2)	# 1493
	lw		x6, -44(x2)	# 1493
	lw		x27, -52(x2)	# 1493
	lw		x31, 0(x27)	# 1493
	jalr	x0, x31, 0	# 1493
beq.12972:
	ori		x4, x0, 4	# 1497
	lw		x6, -68(x2)	# 1497
	mul		x4, x6, x4	# 1497
	lw		x6, -64(x2)	# 1497
	add		x4, x6, x4	# 1497
	lw		x4, 0(x4)	# 1497
	sw		x1, -120(x2)	# 1497
	addi	x2, x2, -124	# 1497
	jal		x1, o_isinvert.2596	# 1497
	addi	x2, x2, 124	# 1497
	lw		x1, -120(x2)	# 1497
	lw		x5, -72(x2)	# 1497
	beq		x4, x5, beq.12979	# 1497
	lw		x4, -56(x2)	# 1498
	lw		x5, -60(x2)	# 1498
	add		x4, x5, x4	# 1498
	lw		x5, -48(x2)	# 1498
	lw		x6, -44(x2)	# 1498
	lw		x27, -52(x2)	# 1498
	lw		x31, 0(x27)	# 1498
	jalr	x0, x31, 0	# 1498
beq.12979:
	jalr	x0, x1, 0	# 1499
beq.12970:
	jalr	x0, x1, 0	# 1466
solve_one_or_network.2826:
	lw		x7, 20(x27)	# 1506
	lw		x8, 16(x27)	# 1506
	lw		x9, 12(x27)	# 1506
	lw		x10, 8(x27)	# 1506
	lw		x11, 4(x27)	# 1506
	ori		x12, x0, 4	# 1506
	mul		x12, x4, x12	# 1506
	add		x12, x5, x12	# 1506
	lw		x12, 0(x12)	# 1506
	beq		x12, x9, beq.12982	# 1507
	ori		x9, x0, 4	# 1508
	mul		x9, x12, x9	# 1508
	add		x8, x8, x9	# 1508
	lw		x8, 0(x8)	# 1508
	sw		x6, 0(x2)	# 1509
	sw		x5, -4(x2)	# 1509
	sw		x27, -8(x2)	# 1509
	sw		x11, -12(x2)	# 1509
	sw		x4, -16(x2)	# 1509
	addi	x5, x8, 0
	addi	x4, x10, 0
	addi	x27, x7, 0
	sw		x1, -20(x2)	# 1509
	addi	x2, x2, -24	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 24	# 1509
	lw		x1, -20(x2)	# 1509
	lw		x4, -12(x2)	# 1510
	lw		x5, -16(x2)	# 1510
	add		x4, x5, x4	# 1510
	lw		x5, -4(x2)	# 1510
	lw		x6, 0(x2)	# 1510
	lw		x27, -8(x2)	# 1510
	lw		x31, 0(x27)	# 1510
	jalr	x0, x31, 0	# 1510
beq.12982:
	jalr	x0, x1, 0	# 1511
trace_or_matrix.2830:
	lw		x7, 32(x27)	# 1516
	lw		x8, 28(x27)	# 1516
	lw		x9, 24(x27)	# 1516
	lw		x10, 20(x27)	# 1516
	lw		x11, 16(x27)	# 1516
	lw		x12, 12(x27)	# 1516
	lw		x13, 8(x27)	# 1516
	lw		x14, 4(x27)	# 1516
	ori		x15, x0, 4	# 1516
	mul		x15, x4, x15	# 1516
	add		x15, x5, x15	# 1516
	lw		x15, 0(x15)	# 1516
	ori		x16, x0, 4	# 1517
	mul		x13, x13, x16	# 1517
	add		x13, x15, x13	# 1517
	lw		x13, 0(x13)	# 1517
	beq		x13, x12, beq.12984	# 1518
	ori		x12, x0, 99	# 1521
	sw		x6, 0(x2)	# 1521
	sw		x5, -4(x2)	# 1521
	sw		x27, -8(x2)	# 1521
	sw		x14, -12(x2)	# 1521
	sw		x4, -16(x2)	# 1521
	beq		x13, x12, beq.12986	# 1521
	sw		x15, -20(x2)	# 1526
	sw		x11, -24(x2)	# 1526
	sw		x7, -28(x2)	# 1526
	sw		x9, -32(x2)	# 1526
	addi	x5, x6, 0
	addi	x4, x13, 0
	addi	x27, x10, 0
	addi	x6, x8, 0
	sw		x1, -36(x2)	# 1526
	addi	x2, x2, -40	# 1526
	lw		x31, 0(x27)	# 1526
	jalr	x1, x31, 0	# 1526
	addi	x2, x2, 40	# 1526
	lw		x1, -36(x2)	# 1526
	addi	x5, x0, 0	# 1527
	beq		x4, x5, beq.12988	# 1527
	addi	x4, x0, 0	# 1528
	ori		x5, x0, 4	# 1528
	mul		x4, x4, x5	# 1528
	lw		x5, -32(x2)	# 1528
	add		x4, x5, x4	# 1528
	flw		f0, 0(x4)	# 1528
	addi	x4, x0, 0	# 1529
	ori		x5, x0, 4	# 1529
	mul		x4, x4, x5	# 1529
	lw		x5, -28(x2)	# 1529
	add		x4, x5, x4	# 1529
	flw		f1, 0(x4)	# 1529
	sw		x1, -36(x2)	# 1529
	addi	x2, x2, -40	# 1529
	jal		x1, fless.2480	# 1529
	addi	x2, x2, 40	# 1529
	lw		x1, -36(x2)	# 1529
	addi	x5, x0, 0	# 1529
	beq		x4, x5, beq.12990	# 1529
	ori		x4, x0, 1	# 1530
	lw		x5, -20(x2)	# 1530
	lw		x6, 0(x2)	# 1530
	lw		x27, -24(x2)	# 1530
	sw		x1, -36(x2)	# 1530
	addi	x2, x2, -40	# 1530
	lw		x31, 0(x27)	# 1530
	jalr	x1, x31, 0	# 1530
	addi	x2, x2, 40	# 1530
	lw		x1, -36(x2)	# 1530
	jal		x0, beq_cont.12989	# 1529
beq.12990:
beq_cont.12989:
	jal		x0, beq_cont.12987	# 1527
beq.12988:
beq_cont.12987:
	jal		x0, beq_cont.12985	# 1521
beq.12986:
	ori		x7, x0, 1	# 1522
	addi	x5, x15, 0
	addi	x4, x7, 0
	addi	x27, x11, 0
	sw		x1, -36(x2)	# 1522
	addi	x2, x2, -40	# 1522
	lw		x31, 0(x27)	# 1522
	jalr	x1, x31, 0	# 1522
	addi	x2, x2, 40	# 1522
	lw		x1, -36(x2)	# 1522
beq_cont.12985:
	lw		x4, -12(x2)	# 1534
	lw		x5, -16(x2)	# 1534
	add		x4, x5, x4	# 1534
	lw		x5, -4(x2)	# 1534
	lw		x6, 0(x2)	# 1534
	lw		x27, -8(x2)	# 1534
	lw		x31, 0(x27)	# 1534
	jalr	x0, x31, 0	# 1534
beq.12984:
	jalr	x0, x1, 0	# 1519
judge_intersection.2834:
	lw		x5, 20(x27)	# 1543
	lw		x6, 16(x27)	# 1543
	lw		x7, 12(x27)	# 1543
	lw		x8, 8(x27)	# 1543
	flw		f0, 4(x27)	# 1543
	ori		x9, x0, 4	# 1543
	mul		x9, x8, x9	# 1543
	add		x9, x6, x9	# 1543
	fsw		f0, 0(x9)	# 1543
	ori		x9, x0, 4	# 1544
	mul		x9, x8, x9	# 1544
	add		x7, x7, x9	# 1544
	lw		x7, 0(x7)	# 1544
	sw		x6, 0(x2)	# 1544
	sw		x8, -4(x2)	# 1544
	addi	x6, x4, 0
	addi	x27, x5, 0
	addi	x5, x7, 0
	addi	x4, x8, 0
	sw		x1, -8(x2)	# 1544
	addi	x2, x2, -12	# 1544
	lw		x31, 0(x27)	# 1544
	jalr	x1, x31, 0	# 1544
	addi	x2, x2, 12	# 1544
	lw		x1, -8(x2)	# 1544
	ori		x4, x0, 4	# 1545
	lw		x5, -4(x2)	# 1545
	mul		x4, x5, x4	# 1545
	lw		x6, 0(x2)	# 1545
	add		x4, x6, x4	# 1545
	flw		f1, 0(x4)	# 1545
	lui		x4, %hi(l.7131)	# 1547
	ori		x4, x0, %lo(l.7131)	# 1547
	flw		f0, 0(x4)	# 1547
	fsw		f1, -8(x2)	# 1547
	sw		x1, -16(x2)	# 1547
	addi	x2, x2, -20	# 1547
	jal		x1, fless.2480	# 1547
	addi	x2, x2, 20	# 1547
	lw		x1, -16(x2)	# 1547
	lw		x5, -4(x2)	# 1547
	beq		x4, x5, beq.12992	# 1547
	lui		x4, %hi(l.7201)	# 1548
	ori		x4, x0, %lo(l.7201)	# 1548
	flw		f1, 0(x4)	# 1548
	flw		f0, -8(x2)	# 1548
	jal		x0, fless.2480	# 1548
beq.12992:
	addi	x4, x0, 0	# 1549
	jalr	x0, x1, 0	# 1549
solve_each_element_fast.2836:
	lw		x7, 56(x27)	# 1558
	lw		x8, 52(x27)	# 1558
	lw		x9, 48(x27)	# 1558
	lw		x10, 44(x27)	# 1558
	lw		x11, 40(x27)	# 1558
	lw		x12, 36(x27)	# 1558
	lw		x13, 32(x27)	# 1558
	lw		x14, 28(x27)	# 1558
	lw		x15, 24(x27)	# 1558
	lw		x16, 20(x27)	# 1558
	lw		x17, 16(x27)	# 1558
	lw		x18, 12(x27)	# 1558
	lw		x19, 8(x27)	# 1558
	flw		f0, 4(x27)	# 1558
	sw		x13, 0(x2)	# 1558
	sw		x15, -4(x2)	# 1558
	sw		x14, -8(x2)	# 1558
	sw		x7, -12(x2)	# 1558
	sw		x16, -16(x2)	# 1558
	sw		x9, -20(x2)	# 1558
	sw		x8, -24(x2)	# 1558
	fsw		f0, -32(x2)	# 1558
	sw		x11, -40(x2)	# 1558
	sw		x27, -44(x2)	# 1558
	sw		x19, -48(x2)	# 1558
	sw		x12, -52(x2)	# 1558
	sw		x18, -56(x2)	# 1558
	sw		x6, -60(x2)	# 1558
	sw		x10, -64(x2)	# 1558
	sw		x17, -68(x2)	# 1558
	sw		x5, -72(x2)	# 1558
	sw		x4, -76(x2)	# 1558
	addi	x4, x6, 0
	sw		x1, -80(x2)	# 1558
	addi	x2, x2, -84	# 1558
	jal		x1, d_vec.2651	# 1558
	addi	x2, x2, 84	# 1558
	lw		x1, -80(x2)	# 1558
	ori		x5, x0, 4	# 1559
	lw		x6, -76(x2)	# 1559
	mul		x5, x6, x5	# 1559
	lw		x7, -72(x2)	# 1559
	add		x5, x7, x5	# 1559
	lw		x5, 0(x5)	# 1559
	lw		x8, -68(x2)	# 1560
	beq		x5, x8, beq.12994	# 1560
	lw		x8, -60(x2)	# 1562
	lw		x27, -64(x2)	# 1562
	sw		x4, -80(x2)	# 1562
	sw		x5, -84(x2)	# 1562
	addi	x4, x5, 0
	addi	x5, x8, 0
	sw		x1, -88(x2)	# 1562
	addi	x2, x2, -92	# 1562
	lw		x31, 0(x27)	# 1562
	jalr	x1, x31, 0	# 1562
	addi	x2, x2, 92	# 1562
	lw		x1, -88(x2)	# 1562
	lw		x5, -56(x2)	# 1563
	beq		x4, x5, beq.12995	# 1563
	ori		x6, x0, 4	# 1567
	mul		x6, x5, x6	# 1567
	lw		x7, -40(x2)	# 1567
	add		x6, x7, x6	# 1567
	flw		f1, 0(x6)	# 1567
	flw		f0, -32(x2)	# 1569
	sw		x4, -88(x2)	# 1569
	fsw		f1, -96(x2)	# 1569
	sw		x1, -104(x2)	# 1569
	addi	x2, x2, -108	# 1569
	jal		x1, fless.2480	# 1569
	addi	x2, x2, 108	# 1569
	lw		x1, -104(x2)	# 1569
	lw		x5, -56(x2)	# 1569
	beq		x4, x5, beq.12998	# 1569
	addi	x4, x0, 0	# 1570
	ori		x5, x0, 4	# 1570
	mul		x4, x4, x5	# 1570
	lw		x5, -24(x2)	# 1570
	add		x4, x5, x4	# 1570
	flw		f1, 0(x4)	# 1570
	flw		f0, -96(x2)	# 1570
	sw		x1, -104(x2)	# 1570
	addi	x2, x2, -108	# 1570
	jal		x1, fless.2480	# 1570
	addi	x2, x2, 108	# 1570
	lw		x1, -104(x2)	# 1570
	addi	x5, x0, 0	# 1570
	beq		x4, x5, beq.13000	# 1570
	lui		x4, %hi(l.7093)	# 1572
	ori		x4, x0, %lo(l.7093)	# 1572
	flw		f0, 0(x4)	# 1572
	flw		f1, -96(x2)	# 1572
	fadd	f0, f1, f0	# 1572
	addi	x4, x0, 0	# 1573
	ori		x5, x0, 4	# 1573
	mul		x4, x4, x5	# 1573
	lw		x5, -80(x2)	# 1573
	add		x4, x5, x4	# 1573
	flw		f1, 0(x4)	# 1573
	fmul	f1, f1, f0	# 1573
	addi	x4, x0, 0	# 1573
	ori		x6, x0, 4	# 1573
	mul		x4, x4, x6	# 1573
	lw		x6, -20(x2)	# 1573
	add		x4, x6, x4	# 1573
	flw		f2, 0(x4)	# 1573
	fadd	f1, f1, f2	# 1573
	ori		x4, x0, 1	# 1574
	ori		x7, x0, 4	# 1574
	mul		x4, x4, x7	# 1574
	add		x4, x5, x4	# 1574
	flw		f2, 0(x4)	# 1574
	fmul	f2, f2, f0	# 1574
	ori		x4, x0, 1	# 1574
	ori		x7, x0, 4	# 1574
	mul		x4, x4, x7	# 1574
	add		x4, x6, x4	# 1574
	flw		f3, 0(x4)	# 1574
	fadd	f2, f2, f3	# 1574
	ori		x4, x0, 2	# 1575
	ori		x7, x0, 4	# 1575
	mul		x4, x4, x7	# 1575
	add		x4, x5, x4	# 1575
	flw		f3, 0(x4)	# 1575
	fmul	f3, f3, f0	# 1575
	ori		x4, x0, 2	# 1575
	ori		x5, x0, 4	# 1575
	mul		x4, x4, x5	# 1575
	add		x4, x6, x4	# 1575
	flw		f4, 0(x4)	# 1575
	fadd	f3, f3, f4	# 1575
	addi	x4, x0, 0	# 1576
	lw		x5, -72(x2)	# 1576
	lw		x27, -16(x2)	# 1576
	fsw		f3, -104(x2)	# 1576
	fsw		f2, -112(x2)	# 1576
	fsw		f1, -120(x2)	# 1576
	fsw		f0, -128(x2)	# 1576
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -136(x2)	# 1576
	addi	x2, x2, -140	# 1576
	lw		x31, 0(x27)	# 1576
	jalr	x1, x31, 0	# 1576
	addi	x2, x2, 140	# 1576
	lw		x1, -136(x2)	# 1576
	addi	x5, x0, 0	# 1576
	beq		x4, x5, beq.13002	# 1576
	addi	x4, x0, 0	# 1578
	ori		x5, x0, 4	# 1578
	mul		x4, x4, x5	# 1578
	lw		x5, -24(x2)	# 1578
	add		x4, x5, x4	# 1578
	flw		f0, -128(x2)	# 1578
	fsw		f0, 0(x4)	# 1578
	flw		f0, -120(x2)	# 1579
	flw		f1, -112(x2)	# 1579
	flw		f2, -104(x2)	# 1579
	lw		x4, -8(x2)	# 1579
	lw		x27, -12(x2)	# 1579
	sw		x1, -136(x2)	# 1579
	addi	x2, x2, -140	# 1579
	lw		x31, 0(x27)	# 1579
	jalr	x1, x31, 0	# 1579
	addi	x2, x2, 140	# 1579
	lw		x1, -136(x2)	# 1579
	addi	x4, x0, 0	# 1580
	ori		x5, x0, 4	# 1580
	mul		x4, x4, x5	# 1580
	lw		x5, -4(x2)	# 1580
	add		x4, x5, x4	# 1580
	lw		x5, -84(x2)	# 1580
	sw		x5, 0(x4)	# 1580
	addi	x4, x0, 0	# 1581
	ori		x5, x0, 4	# 1581
	mul		x4, x4, x5	# 1581
	lw		x5, 0(x2)	# 1581
	add		x4, x5, x4	# 1581
	lw		x5, -88(x2)	# 1581
	sw		x5, 0(x4)	# 1581
	jal		x0, beq_cont.13001	# 1576
beq.13002:
beq_cont.13001:
	jal		x0, beq_cont.12999	# 1570
beq.13000:
beq_cont.12999:
	jal		x0, beq_cont.12997	# 1569
beq.12998:
beq_cont.12997:
	lw		x4, -48(x2)	# 1587
	lw		x5, -76(x2)	# 1587
	add		x4, x5, x4	# 1587
	lw		x5, -72(x2)	# 1587
	lw		x6, -60(x2)	# 1587
	lw		x27, -44(x2)	# 1587
	lw		x31, 0(x27)	# 1587
	jalr	x0, x31, 0	# 1587
beq.12995:
	ori		x4, x0, 4	# 1591
	lw		x6, -84(x2)	# 1591
	mul		x4, x6, x4	# 1591
	lw		x6, -52(x2)	# 1591
	add		x4, x6, x4	# 1591
	lw		x4, 0(x4)	# 1591
	sw		x1, -136(x2)	# 1591
	addi	x2, x2, -140	# 1591
	jal		x1, o_isinvert.2596	# 1591
	addi	x2, x2, 140	# 1591
	lw		x1, -136(x2)	# 1591
	lw		x5, -56(x2)	# 1591
	beq		x4, x5, beq.13003	# 1591
	lw		x4, -48(x2)	# 1592
	lw		x5, -76(x2)	# 1592
	add		x4, x5, x4	# 1592
	lw		x5, -72(x2)	# 1592
	lw		x6, -60(x2)	# 1592
	lw		x27, -44(x2)	# 1592
	lw		x31, 0(x27)	# 1592
	jalr	x0, x31, 0	# 1592
beq.13003:
	jalr	x0, x1, 0	# 1593
beq.12994:
	jalr	x0, x1, 0	# 1560
solve_one_or_network_fast.2840:
	lw		x7, 20(x27)	# 1599
	lw		x8, 16(x27)	# 1599
	lw		x9, 12(x27)	# 1599
	lw		x10, 8(x27)	# 1599
	lw		x11, 4(x27)	# 1599
	ori		x12, x0, 4	# 1599
	mul		x12, x4, x12	# 1599
	add		x12, x5, x12	# 1599
	lw		x12, 0(x12)	# 1599
	beq		x12, x9, beq.13006	# 1600
	ori		x9, x0, 4	# 1601
	mul		x9, x12, x9	# 1601
	add		x8, x8, x9	# 1601
	lw		x8, 0(x8)	# 1601
	sw		x6, 0(x2)	# 1602
	sw		x5, -4(x2)	# 1602
	sw		x27, -8(x2)	# 1602
	sw		x11, -12(x2)	# 1602
	sw		x4, -16(x2)	# 1602
	addi	x5, x8, 0
	addi	x4, x10, 0
	addi	x27, x7, 0
	sw		x1, -20(x2)	# 1602
	addi	x2, x2, -24	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 24	# 1602
	lw		x1, -20(x2)	# 1602
	lw		x4, -12(x2)	# 1603
	lw		x5, -16(x2)	# 1603
	add		x4, x5, x4	# 1603
	lw		x5, -4(x2)	# 1603
	lw		x6, 0(x2)	# 1603
	lw		x27, -8(x2)	# 1603
	lw		x31, 0(x27)	# 1603
	jalr	x0, x31, 0	# 1603
beq.13006:
	jalr	x0, x1, 0	# 1604
trace_or_matrix_fast.2844:
	lw		x7, 28(x27)	# 1609
	lw		x8, 24(x27)	# 1609
	lw		x9, 20(x27)	# 1609
	lw		x10, 16(x27)	# 1609
	lw		x11, 12(x27)	# 1609
	lw		x12, 8(x27)	# 1609
	lw		x13, 4(x27)	# 1609
	ori		x14, x0, 4	# 1609
	mul		x14, x4, x14	# 1609
	add		x14, x5, x14	# 1609
	lw		x14, 0(x14)	# 1609
	ori		x15, x0, 4	# 1610
	mul		x12, x12, x15	# 1610
	add		x12, x14, x12	# 1610
	lw		x12, 0(x12)	# 1610
	beq		x12, x11, beq.13008	# 1611
	ori		x11, x0, 99	# 1614
	sw		x6, 0(x2)	# 1614
	sw		x5, -4(x2)	# 1614
	sw		x27, -8(x2)	# 1614
	sw		x13, -12(x2)	# 1614
	sw		x4, -16(x2)	# 1614
	beq		x12, x11, beq.13010	# 1614
	sw		x14, -20(x2)	# 1619
	sw		x10, -24(x2)	# 1619
	sw		x7, -28(x2)	# 1619
	sw		x9, -32(x2)	# 1619
	addi	x5, x6, 0
	addi	x4, x12, 0
	addi	x27, x8, 0
	sw		x1, -36(x2)	# 1619
	addi	x2, x2, -40	# 1619
	lw		x31, 0(x27)	# 1619
	jalr	x1, x31, 0	# 1619
	addi	x2, x2, 40	# 1619
	lw		x1, -36(x2)	# 1619
	addi	x5, x0, 0	# 1620
	beq		x4, x5, beq.13012	# 1620
	addi	x4, x0, 0	# 1621
	ori		x5, x0, 4	# 1621
	mul		x4, x4, x5	# 1621
	lw		x5, -32(x2)	# 1621
	add		x4, x5, x4	# 1621
	flw		f0, 0(x4)	# 1621
	addi	x4, x0, 0	# 1622
	ori		x5, x0, 4	# 1622
	mul		x4, x4, x5	# 1622
	lw		x5, -28(x2)	# 1622
	add		x4, x5, x4	# 1622
	flw		f1, 0(x4)	# 1622
	sw		x1, -36(x2)	# 1622
	addi	x2, x2, -40	# 1622
	jal		x1, fless.2480	# 1622
	addi	x2, x2, 40	# 1622
	lw		x1, -36(x2)	# 1622
	addi	x5, x0, 0	# 1622
	beq		x4, x5, beq.13014	# 1622
	ori		x4, x0, 1	# 1623
	lw		x5, -20(x2)	# 1623
	lw		x6, 0(x2)	# 1623
	lw		x27, -24(x2)	# 1623
	sw		x1, -36(x2)	# 1623
	addi	x2, x2, -40	# 1623
	lw		x31, 0(x27)	# 1623
	jalr	x1, x31, 0	# 1623
	addi	x2, x2, 40	# 1623
	lw		x1, -36(x2)	# 1623
	jal		x0, beq_cont.13013	# 1622
beq.13014:
beq_cont.13013:
	jal		x0, beq_cont.13011	# 1620
beq.13012:
beq_cont.13011:
	jal		x0, beq_cont.13009	# 1614
beq.13010:
	ori		x7, x0, 1	# 1615
	addi	x5, x14, 0
	addi	x4, x7, 0
	addi	x27, x10, 0
	sw		x1, -36(x2)	# 1615
	addi	x2, x2, -40	# 1615
	lw		x31, 0(x27)	# 1615
	jalr	x1, x31, 0	# 1615
	addi	x2, x2, 40	# 1615
	lw		x1, -36(x2)	# 1615
beq_cont.13009:
	lw		x4, -12(x2)	# 1627
	lw		x5, -16(x2)	# 1627
	add		x4, x5, x4	# 1627
	lw		x5, -4(x2)	# 1627
	lw		x6, 0(x2)	# 1627
	lw		x27, -8(x2)	# 1627
	lw		x31, 0(x27)	# 1627
	jalr	x0, x31, 0	# 1627
beq.13008:
	jalr	x0, x1, 0	# 1612
judge_intersection_fast.2848:
	lw		x5, 20(x27)	# 1634
	lw		x6, 16(x27)	# 1634
	lw		x7, 12(x27)	# 1634
	lw		x8, 8(x27)	# 1634
	flw		f0, 4(x27)	# 1634
	ori		x9, x0, 4	# 1634
	mul		x9, x8, x9	# 1634
	add		x9, x6, x9	# 1634
	fsw		f0, 0(x9)	# 1634
	ori		x9, x0, 4	# 1635
	mul		x9, x8, x9	# 1635
	add		x7, x7, x9	# 1635
	lw		x7, 0(x7)	# 1635
	sw		x6, 0(x2)	# 1635
	sw		x8, -4(x2)	# 1635
	addi	x6, x4, 0
	addi	x27, x5, 0
	addi	x5, x7, 0
	addi	x4, x8, 0
	sw		x1, -8(x2)	# 1635
	addi	x2, x2, -12	# 1635
	lw		x31, 0(x27)	# 1635
	jalr	x1, x31, 0	# 1635
	addi	x2, x2, 12	# 1635
	lw		x1, -8(x2)	# 1635
	ori		x4, x0, 4	# 1636
	lw		x5, -4(x2)	# 1636
	mul		x4, x5, x4	# 1636
	lw		x6, 0(x2)	# 1636
	add		x4, x6, x4	# 1636
	flw		f1, 0(x4)	# 1636
	lui		x4, %hi(l.7131)	# 1638
	ori		x4, x0, %lo(l.7131)	# 1638
	flw		f0, 0(x4)	# 1638
	fsw		f1, -8(x2)	# 1638
	sw		x1, -16(x2)	# 1638
	addi	x2, x2, -20	# 1638
	jal		x1, fless.2480	# 1638
	addi	x2, x2, 20	# 1638
	lw		x1, -16(x2)	# 1638
	lw		x5, -4(x2)	# 1638
	beq		x4, x5, beq.13016	# 1638
	lui		x4, %hi(l.7201)	# 1639
	ori		x4, x0, %lo(l.7201)	# 1639
	flw		f1, 0(x4)	# 1639
	flw		f0, -8(x2)	# 1639
	jal		x0, fless.2480	# 1639
beq.13016:
	addi	x4, x0, 0	# 1640
	jalr	x0, x1, 0	# 1640
get_nvector_rect.2850:
	lw		x5, 24(x27)	# 1654
	lw		x6, 20(x27)	# 1654
	lw		x7, 16(x27)	# 1654
	lw		x8, 12(x27)	# 1654
	lw		x9, 8(x27)	# 1654
	lw		x10, 4(x27)	# 1654
	ori		x11, x0, 4	# 1654
	mul		x9, x9, x11	# 1654
	add		x8, x8, x9	# 1654
	lw		x8, 0(x8)	# 1654
	sw		x7, 0(x2)	# 1656
	sw		x6, -4(x2)	# 1656
	sw		x4, -8(x2)	# 1656
	sw		x10, -12(x2)	# 1656
	sw		x8, -16(x2)	# 1656
	addi	x4, x7, 0
	addi	x27, x5, 0
	sw		x1, -20(x2)	# 1656
	addi	x2, x2, -24	# 1656
	lw		x31, 0(x27)	# 1656
	jalr	x1, x31, 0	# 1656
	addi	x2, x2, 24	# 1656
	lw		x1, -20(x2)	# 1656
	lw		x4, -12(x2)	# 1657
	lw		x5, -16(x2)	# 1657
	sub		x4, x5, x4	# 1657
	ori		x5, x0, 4	# 1657
	mul		x5, x4, x5	# 1657
	lw		x6, -8(x2)	# 1657
	add		x5, x6, x5	# 1657
	flw		f0, 0(x5)	# 1657
	lw		x27, -4(x2)	# 1657
	sw		x4, -20(x2)	# 1657
	sw		x1, -24(x2)	# 1657
	addi	x2, x2, -28	# 1657
	lw		x31, 0(x27)	# 1657
	jalr	x1, x31, 0	# 1657
	addi	x2, x2, 28	# 1657
	lw		x1, -24(x2)	# 1657
	sw		x1, -24(x2)	# 1657
	addi	x2, x2, -28	# 1657
	jal		x1, fneg.2476	# 1657
	addi	x2, x2, 28	# 1657
	lw		x1, -24(x2)	# 1657
	ori		x4, x0, 4	# 1657
	lw		x5, -20(x2)	# 1657
	mul		x4, x5, x4	# 1657
	lw		x5, 0(x2)	# 1657
	add		x4, x5, x4	# 1657
	fsw		f0, 0(x4)	# 1657
	jalr	x0, x1, 0	# 1657
get_nvector_plane.2852:
	lw		x5, 28(x27)	# 1663
	lw		x6, 24(x27)	# 1663
	lw		x7, 20(x27)	# 1663
	lw		x8, 16(x27)	# 1663
	lw		x9, 12(x27)	# 1663
	lw		x10, 8(x27)	# 1663
	lw		x11, 4(x27)	# 1663
	sw		x9, 0(x2)	# 1663
	sw		x5, -4(x2)	# 1663
	sw		x11, -8(x2)	# 1663
	sw		x4, -12(x2)	# 1663
	sw		x6, -16(x2)	# 1663
	sw		x8, -20(x2)	# 1663
	sw		x10, -24(x2)	# 1663
	addi	x27, x7, 0
	sw		x1, -28(x2)	# 1663
	addi	x2, x2, -32	# 1663
	lw		x31, 0(x27)	# 1663
	jalr	x1, x31, 0	# 1663
	addi	x2, x2, 32	# 1663
	lw		x1, -28(x2)	# 1663
	sw		x1, -28(x2)	# 1663
	addi	x2, x2, -32	# 1663
	jal		x1, fneg.2476	# 1663
	addi	x2, x2, 32	# 1663
	lw		x1, -28(x2)	# 1663
	ori		x4, x0, 4	# 1663
	lw		x5, -24(x2)	# 1663
	mul		x4, x5, x4	# 1663
	lw		x5, -20(x2)	# 1663
	add		x4, x5, x4	# 1663
	fsw		f0, 0(x4)	# 1663
	lw		x4, -12(x2)	# 1664
	lw		x27, -16(x2)	# 1664
	sw		x1, -28(x2)	# 1664
	addi	x2, x2, -32	# 1664
	lw		x31, 0(x27)	# 1664
	jalr	x1, x31, 0	# 1664
	addi	x2, x2, 32	# 1664
	lw		x1, -28(x2)	# 1664
	sw		x1, -28(x2)	# 1664
	addi	x2, x2, -32	# 1664
	jal		x1, fneg.2476	# 1664
	addi	x2, x2, 32	# 1664
	lw		x1, -28(x2)	# 1664
	ori		x4, x0, 4	# 1664
	lw		x5, -8(x2)	# 1664
	mul		x4, x5, x4	# 1664
	lw		x5, -20(x2)	# 1664
	add		x4, x5, x4	# 1664
	fsw		f0, 0(x4)	# 1664
	lw		x4, -12(x2)	# 1665
	lw		x27, -4(x2)	# 1665
	sw		x1, -28(x2)	# 1665
	addi	x2, x2, -32	# 1665
	lw		x31, 0(x27)	# 1665
	jalr	x1, x31, 0	# 1665
	addi	x2, x2, 32	# 1665
	lw		x1, -28(x2)	# 1665
	sw		x1, -28(x2)	# 1665
	addi	x2, x2, -32	# 1665
	jal		x1, fneg.2476	# 1665
	addi	x2, x2, 32	# 1665
	lw		x1, -28(x2)	# 1665
	ori		x4, x0, 4	# 1665
	lw		x5, 0(x2)	# 1665
	mul		x4, x5, x4	# 1665
	lw		x5, -20(x2)	# 1665
	add		x4, x5, x4	# 1665
	fsw		f0, 0(x4)	# 1665
	jalr	x0, x1, 0	# 1665
get_nvector_second.2854:
	lw		x5, 60(x27)	# 1670
	lw		x6, 56(x27)	# 1670
	lw		x7, 52(x27)	# 1670
	lw		x8, 48(x27)	# 1670
	lw		x9, 44(x27)	# 1670
	lw		x10, 40(x27)	# 1670
	lw		x11, 36(x27)	# 1670
	lw		x12, 32(x27)	# 1670
	lw		x13, 28(x27)	# 1670
	lw		x14, 24(x27)	# 1670
	lw		x15, 20(x27)	# 1670
	lw		x16, 16(x27)	# 1670
	lw		x17, 12(x27)	# 1670
	lw		x18, 8(x27)	# 1670
	lw		x19, 4(x27)	# 1670
	ori		x20, x0, 4	# 1670
	mul		x20, x18, x20	# 1670
	add		x20, x16, x20	# 1670
	flw		f0, 0(x20)	# 1670
	sw		x5, 0(x2)	# 1670
	sw		x11, -4(x2)	# 1670
	sw		x10, -8(x2)	# 1670
	sw		x9, -12(x2)	# 1670
	sw		x15, -16(x2)	# 1670
	sw		x18, -20(x2)	# 1670
	sw		x12, -24(x2)	# 1670
	sw		x13, -28(x2)	# 1670
	sw		x14, -32(x2)	# 1670
	sw		x6, -36(x2)	# 1670
	sw		x17, -40(x2)	# 1670
	sw		x4, -44(x2)	# 1670
	sw		x7, -48(x2)	# 1670
	sw		x16, -52(x2)	# 1670
	sw		x19, -56(x2)	# 1670
	fsw		f0, -64(x2)	# 1670
	addi	x27, x8, 0
	sw		x1, -72(x2)	# 1670
	addi	x2, x2, -76	# 1670
	lw		x31, 0(x27)	# 1670
	jalr	x1, x31, 0	# 1670
	addi	x2, x2, 76	# 1670
	lw		x1, -72(x2)	# 1670
	flw		f1, -64(x2)	# 1670
	fsub	f0, f1, f0	# 1670
	ori		x4, x0, 4	# 1671
	lw		x5, -56(x2)	# 1671
	mul		x4, x5, x4	# 1671
	lw		x5, -52(x2)	# 1671
	add		x4, x5, x4	# 1671
	flw		f1, 0(x4)	# 1671
	lw		x4, -44(x2)	# 1671
	lw		x27, -48(x2)	# 1671
	fsw		f0, -72(x2)	# 1671
	fsw		f1, -80(x2)	# 1671
	sw		x1, -88(x2)	# 1671
	addi	x2, x2, -92	# 1671
	lw		x31, 0(x27)	# 1671
	jalr	x1, x31, 0	# 1671
	addi	x2, x2, 92	# 1671
	lw		x1, -88(x2)	# 1671
	flw		f1, -80(x2)	# 1671
	fsub	f0, f1, f0	# 1671
	ori		x4, x0, 4	# 1672
	lw		x5, -40(x2)	# 1672
	mul		x4, x5, x4	# 1672
	lw		x5, -52(x2)	# 1672
	add		x4, x5, x4	# 1672
	flw		f1, 0(x4)	# 1672
	lw		x4, -44(x2)	# 1672
	lw		x27, -36(x2)	# 1672
	fsw		f0, -88(x2)	# 1672
	fsw		f1, -96(x2)	# 1672
	sw		x1, -104(x2)	# 1672
	addi	x2, x2, -108	# 1672
	lw		x31, 0(x27)	# 1672
	jalr	x1, x31, 0	# 1672
	addi	x2, x2, 108	# 1672
	lw		x1, -104(x2)	# 1672
	flw		f1, -96(x2)	# 1672
	fsub	f0, f1, f0	# 1672
	lw		x4, -44(x2)	# 1674
	lw		x27, -32(x2)	# 1674
	fsw		f0, -104(x2)	# 1674
	sw		x1, -112(x2)	# 1674
	addi	x2, x2, -116	# 1674
	lw		x31, 0(x27)	# 1674
	jalr	x1, x31, 0	# 1674
	addi	x2, x2, 116	# 1674
	lw		x1, -112(x2)	# 1674
	flw		f1, -72(x2)	# 1674
	fmul	f0, f1, f0	# 1674
	lw		x4, -44(x2)	# 1675
	lw		x27, -28(x2)	# 1675
	fsw		f0, -112(x2)	# 1675
	sw		x1, -120(x2)	# 1675
	addi	x2, x2, -124	# 1675
	lw		x31, 0(x27)	# 1675
	jalr	x1, x31, 0	# 1675
	addi	x2, x2, 124	# 1675
	lw		x1, -120(x2)	# 1675
	flw		f1, -88(x2)	# 1675
	fmul	f0, f1, f0	# 1675
	lw		x4, -44(x2)	# 1676
	lw		x27, -24(x2)	# 1676
	fsw		f0, -120(x2)	# 1676
	sw		x1, -128(x2)	# 1676
	addi	x2, x2, -132	# 1676
	lw		x31, 0(x27)	# 1676
	jalr	x1, x31, 0	# 1676
	addi	x2, x2, 132	# 1676
	lw		x1, -128(x2)	# 1676
	flw		f1, -104(x2)	# 1676
	fmul	f0, f1, f0	# 1676
	lw		x4, -44(x2)	# 1678
	fsw		f0, -128(x2)	# 1678
	sw		x1, -136(x2)	# 1678
	addi	x2, x2, -140	# 1678
	jal		x1, o_isrot.2598	# 1678
	addi	x2, x2, 140	# 1678
	lw		x1, -136(x2)	# 1678
	lw		x5, -20(x2)	# 1678
	beq		x4, x5, beq.13021	# 1678
	addi	x4, x0, 0	# 1683
	lw		x5, -44(x2)	# 1683
	lw		x27, -12(x2)	# 1683
	sw		x4, -136(x2)	# 1683
	addi	x4, x5, 0
	sw		x1, -140(x2)	# 1683
	addi	x2, x2, -144	# 1683
	lw		x31, 0(x27)	# 1683
	jalr	x1, x31, 0	# 1683
	addi	x2, x2, 144	# 1683
	lw		x1, -140(x2)	# 1683
	flw		f1, -88(x2)	# 1683
	fmul	f0, f1, f0	# 1683
	lw		x4, -44(x2)	# 1683
	lw		x27, -8(x2)	# 1683
	fsw		f0, -144(x2)	# 1683
	sw		x1, -152(x2)	# 1683
	addi	x2, x2, -156	# 1683
	lw		x31, 0(x27)	# 1683
	jalr	x1, x31, 0	# 1683
	addi	x2, x2, 156	# 1683
	lw		x1, -152(x2)	# 1683
	flw		f1, -104(x2)	# 1683
	fmul	f0, f1, f0	# 1683
	flw		f2, -144(x2)	# 1683
	fadd	f0, f2, f0	# 1683
	sw		x1, -152(x2)	# 1683
	addi	x2, x2, -156	# 1683
	jal		x1, fhalf.2483	# 1683
	addi	x2, x2, 156	# 1683
	lw		x1, -152(x2)	# 1683
	flw		f1, -112(x2)	# 1683
	fadd	f0, f1, f0	# 1683
	ori		x4, x0, 4	# 1683
	lw		x5, -136(x2)	# 1683
	mul		x4, x5, x4	# 1683
	lw		x5, -16(x2)	# 1683
	add		x4, x5, x4	# 1683
	fsw		f0, 0(x4)	# 1683
	ori		x4, x0, 1	# 1684
	lw		x6, -44(x2)	# 1684
	lw		x27, -12(x2)	# 1684
	sw		x4, -152(x2)	# 1684
	addi	x4, x6, 0
	sw		x1, -156(x2)	# 1684
	addi	x2, x2, -160	# 1684
	lw		x31, 0(x27)	# 1684
	jalr	x1, x31, 0	# 1684
	addi	x2, x2, 160	# 1684
	lw		x1, -156(x2)	# 1684
	flw		f1, -72(x2)	# 1684
	fmul	f0, f1, f0	# 1684
	lw		x4, -44(x2)	# 1684
	lw		x27, -4(x2)	# 1684
	fsw		f0, -160(x2)	# 1684
	sw		x1, -168(x2)	# 1684
	addi	x2, x2, -172	# 1684
	lw		x31, 0(x27)	# 1684
	jalr	x1, x31, 0	# 1684
	addi	x2, x2, 172	# 1684
	lw		x1, -168(x2)	# 1684
	flw		f1, -104(x2)	# 1684
	fmul	f0, f1, f0	# 1684
	flw		f1, -160(x2)	# 1684
	fadd	f0, f1, f0	# 1684
	sw		x1, -168(x2)	# 1684
	addi	x2, x2, -172	# 1684
	jal		x1, fhalf.2483	# 1684
	addi	x2, x2, 172	# 1684
	lw		x1, -168(x2)	# 1684
	flw		f1, -120(x2)	# 1684
	fadd	f0, f1, f0	# 1684
	ori		x4, x0, 4	# 1684
	lw		x5, -152(x2)	# 1684
	mul		x4, x5, x4	# 1684
	lw		x5, -16(x2)	# 1684
	add		x4, x5, x4	# 1684
	fsw		f0, 0(x4)	# 1684
	ori		x4, x0, 2	# 1685
	lw		x6, -44(x2)	# 1685
	lw		x27, -8(x2)	# 1685
	sw		x4, -168(x2)	# 1685
	addi	x4, x6, 0
	sw		x1, -172(x2)	# 1685
	addi	x2, x2, -176	# 1685
	lw		x31, 0(x27)	# 1685
	jalr	x1, x31, 0	# 1685
	addi	x2, x2, 176	# 1685
	lw		x1, -172(x2)	# 1685
	flw		f1, -72(x2)	# 1685
	fmul	f0, f1, f0	# 1685
	lw		x4, -44(x2)	# 1685
	lw		x27, -4(x2)	# 1685
	fsw		f0, -176(x2)	# 1685
	sw		x1, -184(x2)	# 1685
	addi	x2, x2, -188	# 1685
	lw		x31, 0(x27)	# 1685
	jalr	x1, x31, 0	# 1685
	addi	x2, x2, 188	# 1685
	lw		x1, -184(x2)	# 1685
	flw		f1, -88(x2)	# 1685
	fmul	f0, f1, f0	# 1685
	flw		f1, -176(x2)	# 1685
	fadd	f0, f1, f0	# 1685
	sw		x1, -184(x2)	# 1685
	addi	x2, x2, -188	# 1685
	jal		x1, fhalf.2483	# 1685
	addi	x2, x2, 188	# 1685
	lw		x1, -184(x2)	# 1685
	flw		f1, -128(x2)	# 1685
	fadd	f0, f1, f0	# 1685
	ori		x4, x0, 4	# 1685
	lw		x5, -168(x2)	# 1685
	mul		x4, x5, x4	# 1685
	lw		x5, -16(x2)	# 1685
	add		x4, x5, x4	# 1685
	fsw		f0, 0(x4)	# 1685
	jal		x0, beq_cont.13020	# 1678
beq.13021:
	addi	x4, x0, 0	# 1679
	ori		x5, x0, 4	# 1679
	mul		x4, x4, x5	# 1679
	lw		x5, -16(x2)	# 1679
	add		x4, x5, x4	# 1679
	flw		f0, -112(x2)	# 1679
	fsw		f0, 0(x4)	# 1679
	ori		x4, x0, 1	# 1680
	ori		x6, x0, 4	# 1680
	mul		x4, x4, x6	# 1680
	add		x4, x5, x4	# 1680
	flw		f0, -120(x2)	# 1680
	fsw		f0, 0(x4)	# 1680
	ori		x4, x0, 2	# 1681
	ori		x6, x0, 4	# 1681
	mul		x4, x4, x6	# 1681
	add		x4, x5, x4	# 1681
	flw		f0, -128(x2)	# 1681
	fsw		f0, 0(x4)	# 1681
beq_cont.13020:
	lw		x4, -44(x2)	# 1687
	sw		x1, -184(x2)	# 1687
	addi	x2, x2, -188	# 1687
	jal		x1, o_isinvert.2596	# 1687
	addi	x2, x2, 188	# 1687
	lw		x1, -184(x2)	# 1687
	addi	x5, x4, 0	# 1687
	lw		x4, -16(x2)	# 1687
	lw		x27, 0(x2)	# 1687
	lw		x31, 0(x27)	# 1687
	jalr	x0, x31, 0	# 1687
get_nvector.2856:
	lw		x6, 20(x27)	# 1692
	lw		x7, 16(x27)	# 1692
	lw		x8, 12(x27)	# 1692
	lw		x9, 8(x27)	# 1692
	lw		x10, 4(x27)	# 1692
	sw		x6, 0(x2)	# 1692
	sw		x4, -4(x2)	# 1692
	sw		x8, -8(x2)	# 1692
	sw		x9, -12(x2)	# 1692
	sw		x5, -16(x2)	# 1692
	sw		x7, -20(x2)	# 1692
	sw		x10, -24(x2)	# 1692
	sw		x1, -28(x2)	# 1692
	addi	x2, x2, -32	# 1692
	jal		x1, o_form.2592	# 1692
	addi	x2, x2, 32	# 1692
	lw		x1, -28(x2)	# 1692
	lw		x5, -24(x2)	# 1693
	beq		x4, x5, beq.13025	# 1693
	lw		x5, -12(x2)	# 1695
	beq		x4, x5, beq.13026	# 1695
	lw		x4, -4(x2)	# 1698
	lw		x27, 0(x2)	# 1698
	lw		x31, 0(x27)	# 1698
	jalr	x0, x31, 0	# 1698
beq.13026:
	lw		x4, -4(x2)	# 1696
	lw		x27, -8(x2)	# 1696
	lw		x31, 0(x27)	# 1696
	jalr	x0, x31, 0	# 1696
beq.13025:
	lw		x4, -16(x2)	# 1694
	lw		x27, -20(x2)	# 1694
	lw		x31, 0(x27)	# 1694
	jalr	x0, x31, 0	# 1694
utexture.2859:
	lw		x6, 76(x27)	# 1708
	lw		x7, 72(x27)	# 1708
	lw		x8, 68(x27)	# 1708
	lw		x9, 64(x27)	# 1708
	lw		x10, 60(x27)	# 1708
	lw		x11, 56(x27)	# 1708
	lw		x12, 52(x27)	# 1708
	lw		x13, 48(x27)	# 1708
	lw		x14, 44(x27)	# 1708
	lw		x15, 40(x27)	# 1708
	lw		x16, 36(x27)	# 1708
	lw		x17, 32(x27)	# 1708
	lw		x18, 28(x27)	# 1708
	lw		x19, 24(x27)	# 1708
	lw		x20, 20(x27)	# 1708
	lw		x21, 16(x27)	# 1708
	lw		x22, 12(x27)	# 1708
	flw		f0, 8(x27)	# 1708
	flw		f1, 4(x27)	# 1708
	sw		x12, 0(x2)	# 1708
	sw		x9, -4(x2)	# 1708
	sw		x18, -8(x2)	# 1708
	sw		x11, -12(x2)	# 1708
	sw		x13, -16(x2)	# 1708
	sw		x17, -20(x2)	# 1708
	sw		x20, -24(x2)	# 1708
	sw		x7, -28(x2)	# 1708
	fsw		f1, -32(x2)	# 1708
	fsw		f0, -40(x2)	# 1708
	sw		x8, -48(x2)	# 1708
	sw		x10, -52(x2)	# 1708
	sw		x5, -56(x2)	# 1708
	sw		x19, -60(x2)	# 1708
	sw		x16, -64(x2)	# 1708
	sw		x22, -68(x2)	# 1708
	sw		x15, -72(x2)	# 1708
	sw		x6, -76(x2)	# 1708
	sw		x21, -80(x2)	# 1708
	sw		x4, -84(x2)	# 1708
	sw		x14, -88(x2)	# 1708
	sw		x1, -92(x2)	# 1708
	addi	x2, x2, -96	# 1708
	jal		x1, o_texturetype.2590	# 1708
	addi	x2, x2, 96	# 1708
	lw		x1, -92(x2)	# 1708
	lw		x5, -84(x2)	# 1710
	lw		x27, -88(x2)	# 1710
	sw		x4, -92(x2)	# 1710
	addi	x4, x5, 0
	sw		x1, -96(x2)	# 1710
	addi	x2, x2, -100	# 1710
	lw		x31, 0(x27)	# 1710
	jalr	x1, x31, 0	# 1710
	addi	x2, x2, 100	# 1710
	lw		x1, -96(x2)	# 1710
	ori		x4, x0, 4	# 1710
	lw		x5, -80(x2)	# 1710
	mul		x4, x5, x4	# 1710
	lw		x6, -76(x2)	# 1710
	add		x4, x6, x4	# 1710
	fsw		f0, 0(x4)	# 1710
	lw		x4, -84(x2)	# 1711
	lw		x27, -72(x2)	# 1711
	sw		x1, -96(x2)	# 1711
	addi	x2, x2, -100	# 1711
	lw		x31, 0(x27)	# 1711
	jalr	x1, x31, 0	# 1711
	addi	x2, x2, 100	# 1711
	lw		x1, -96(x2)	# 1711
	ori		x4, x0, 4	# 1711
	lw		x5, -68(x2)	# 1711
	mul		x4, x5, x4	# 1711
	lw		x6, -76(x2)	# 1711
	add		x4, x6, x4	# 1711
	fsw		f0, 0(x4)	# 1711
	lw		x4, -84(x2)	# 1712
	lw		x27, -64(x2)	# 1712
	sw		x1, -96(x2)	# 1712
	addi	x2, x2, -100	# 1712
	lw		x31, 0(x27)	# 1712
	jalr	x1, x31, 0	# 1712
	addi	x2, x2, 100	# 1712
	lw		x1, -96(x2)	# 1712
	ori		x4, x0, 4	# 1712
	lw		x5, -60(x2)	# 1712
	mul		x4, x5, x4	# 1712
	lw		x6, -76(x2)	# 1712
	add		x4, x6, x4	# 1712
	fsw		f0, 0(x4)	# 1712
	lw		x4, -68(x2)	# 1713
	lw		x7, -92(x2)	# 1713
	beq		x7, x4, beq.13027	# 1713
	beq		x7, x5, beq.13028	# 1731
	lw		x8, -24(x2)	# 1738
	beq		x7, x8, beq.13029	# 1738
	ori		x8, x0, 4	# 1749
	beq		x7, x8, beq.13030	# 1749
	jalr	x0, x1, 0	# 1777
beq.13030:
	ori		x7, x0, 4	# 1751
	lw		x8, -80(x2)	# 1751
	mul		x7, x8, x7	# 1751
	lw		x9, -56(x2)	# 1751
	add		x7, x9, x7	# 1751
	flw		f0, 0(x7)	# 1751
	lw		x7, -84(x2)	# 1751
	lw		x27, -52(x2)	# 1751
	fsw		f0, -96(x2)	# 1751
	addi	x4, x7, 0
	sw		x1, -104(x2)	# 1751
	addi	x2, x2, -108	# 1751
	lw		x31, 0(x27)	# 1751
	jalr	x1, x31, 0	# 1751
	addi	x2, x2, 108	# 1751
	lw		x1, -104(x2)	# 1751
	flw		f1, -96(x2)	# 1751
	fsub	f0, f1, f0	# 1751
	lw		x4, -84(x2)	# 1751
	lw		x27, -16(x2)	# 1751
	fsw		f0, -104(x2)	# 1751
	sw		x1, -112(x2)	# 1751
	addi	x2, x2, -116	# 1751
	lw		x31, 0(x27)	# 1751
	jalr	x1, x31, 0	# 1751
	addi	x2, x2, 116	# 1751
	lw		x1, -112(x2)	# 1751
	sw		x1, -112(x2)	# 1751
	addi	x2, x2, -116	# 1751
	jal		x1, min_caml_sqrt	# 1751
	addi	x2, x2, 116	# 1751
	lw		x1, -112(x2)	# 1751
	flw		f1, -104(x2)	# 1751
	fmul	f0, f1, f0	# 1751
	ori		x4, x0, 4	# 1752
	lw		x5, -60(x2)	# 1752
	mul		x4, x5, x4	# 1752
	lw		x6, -56(x2)	# 1752
	add		x4, x6, x4	# 1752
	flw		f1, 0(x4)	# 1752
	lw		x4, -84(x2)	# 1752
	lw		x27, -48(x2)	# 1752
	fsw		f0, -112(x2)	# 1752
	fsw		f1, -120(x2)	# 1752
	sw		x1, -128(x2)	# 1752
	addi	x2, x2, -132	# 1752
	lw		x31, 0(x27)	# 1752
	jalr	x1, x31, 0	# 1752
	addi	x2, x2, 132	# 1752
	lw		x1, -128(x2)	# 1752
	flw		f1, -120(x2)	# 1752
	fsub	f0, f1, f0	# 1752
	lw		x4, -84(x2)	# 1752
	lw		x27, -12(x2)	# 1752
	fsw		f0, -128(x2)	# 1752
	sw		x1, -136(x2)	# 1752
	addi	x2, x2, -140	# 1752
	lw		x31, 0(x27)	# 1752
	jalr	x1, x31, 0	# 1752
	addi	x2, x2, 140	# 1752
	lw		x1, -136(x2)	# 1752
	sw		x1, -136(x2)	# 1752
	addi	x2, x2, -140	# 1752
	jal		x1, min_caml_sqrt	# 1752
	addi	x2, x2, 140	# 1752
	lw		x1, -136(x2)	# 1752
	flw		f1, -128(x2)	# 1752
	fmul	f0, f1, f0	# 1752
	flw		f1, -112(x2)	# 1753
	fsw		f0, -136(x2)	# 1753
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -144(x2)	# 1753
	addi	x2, x2, -148	# 1753
	jal		x1, fsqr.2485	# 1753
	addi	x2, x2, 148	# 1753
	lw		x1, -144(x2)	# 1753
	flw		f1, -136(x2)	# 1753
	fsw		f0, -144(x2)	# 1753
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -152(x2)	# 1753
	addi	x2, x2, -156	# 1753
	jal		x1, fsqr.2485	# 1753
	addi	x2, x2, 156	# 1753
	lw		x1, -152(x2)	# 1753
	flw		f1, -144(x2)	# 1753
	fadd	f0, f1, f0	# 1753
	flw		f1, -112(x2)	# 1755
	fsw		f0, -152(x2)	# 1755
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -160(x2)	# 1755
	addi	x2, x2, -164	# 1755
	jal		x1, fabs.2478	# 1755
	addi	x2, x2, 164	# 1755
	lw		x1, -160(x2)	# 1755
	lui		x4, %hi(l.7332)	# 1755
	ori		x4, x0, %lo(l.7332)	# 1755
	flw		f1, 0(x4)	# 1755
	fsw		f1, -160(x2)	# 1755
	sw		x1, -168(x2)	# 1755
	addi	x2, x2, -172	# 1755
	jal		x1, fless.2480	# 1755
	addi	x2, x2, 172	# 1755
	lw		x1, -168(x2)	# 1755
	lw		x5, -80(x2)	# 1755
	beq		x4, x5, beq.13033	# 1755
	lui		x4, %hi(l.7334)	# 1756
	ori		x4, x0, %lo(l.7334)	# 1756
	flw		f0, 0(x4)	# 1756
	jal		x0, beq_cont.13032	# 1755
beq.13033:
	flw		f0, -112(x2)	# 1758
	flw		f1, -136(x2)	# 1758
	fdiv	f0, f1, f0	# 1758
	sw		x1, -168(x2)	# 1758
	addi	x2, x2, -172	# 1758
	jal		x1, fabs.2478	# 1758
	addi	x2, x2, 172	# 1758
	lw		x1, -168(x2)	# 1758
	lw		x27, -8(x2)	# 1760
	sw		x1, -168(x2)	# 1760
	addi	x2, x2, -172	# 1760
	lw		x31, 0(x27)	# 1760
	jalr	x1, x31, 0	# 1760
	addi	x2, x2, 172	# 1760
	lw		x1, -168(x2)	# 1760
	lui		x4, %hi(l.7336)	# 1760
	ori		x4, x0, %lo(l.7336)	# 1760
	flw		f1, 0(x4)	# 1760
	fmul	f0, f0, f1	# 1760
	lui		x4, %hi(l.7338)	# 1760
	ori		x4, x0, %lo(l.7338)	# 1760
	flw		f1, 0(x4)	# 1760
	fdiv	f0, f0, f1	# 1760
beq_cont.13032:
	fsw		f0, -168(x2)	# 1762
	sw		x1, -176(x2)	# 1762
	addi	x2, x2, -180	# 1762
	jal		x1, floor.2491	# 1762
	addi	x2, x2, 180	# 1762
	lw		x1, -176(x2)	# 1762
	flw		f1, -168(x2)	# 1762
	fsub	f0, f1, f0	# 1762
	ori		x4, x0, 4	# 1764
	lw		x5, -68(x2)	# 1764
	mul		x4, x5, x4	# 1764
	lw		x5, -56(x2)	# 1764
	add		x4, x5, x4	# 1764
	flw		f1, 0(x4)	# 1764
	lw		x4, -84(x2)	# 1764
	lw		x27, -4(x2)	# 1764
	fsw		f0, -176(x2)	# 1764
	fsw		f1, -184(x2)	# 1764
	sw		x1, -192(x2)	# 1764
	addi	x2, x2, -196	# 1764
	lw		x31, 0(x27)	# 1764
	jalr	x1, x31, 0	# 1764
	addi	x2, x2, 196	# 1764
	lw		x1, -192(x2)	# 1764
	flw		f1, -184(x2)	# 1764
	fsub	f0, f1, f0	# 1764
	lw		x4, -84(x2)	# 1764
	lw		x27, 0(x2)	# 1764
	fsw		f0, -192(x2)	# 1764
	sw		x1, -200(x2)	# 1764
	addi	x2, x2, -204	# 1764
	lw		x31, 0(x27)	# 1764
	jalr	x1, x31, 0	# 1764
	addi	x2, x2, 204	# 1764
	lw		x1, -200(x2)	# 1764
	sw		x1, -200(x2)	# 1764
	addi	x2, x2, -204	# 1764
	jal		x1, min_caml_sqrt	# 1764
	addi	x2, x2, 204	# 1764
	lw		x1, -200(x2)	# 1764
	flw		f1, -192(x2)	# 1764
	fmul	f0, f1, f0	# 1764
	flw		f1, -152(x2)	# 1766
	fsw		f0, -200(x2)	# 1766
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -208(x2)	# 1766
	addi	x2, x2, -212	# 1766
	jal		x1, fabs.2478	# 1766
	addi	x2, x2, 212	# 1766
	lw		x1, -208(x2)	# 1766
	flw		f1, -160(x2)	# 1766
	sw		x1, -208(x2)	# 1766
	addi	x2, x2, -212	# 1766
	jal		x1, fless.2480	# 1766
	addi	x2, x2, 212	# 1766
	lw		x1, -208(x2)	# 1766
	lw		x5, -80(x2)	# 1766
	beq		x4, x5, beq.13035	# 1766
	lui		x4, %hi(l.7334)	# 1767
	ori		x4, x0, %lo(l.7334)	# 1767
	flw		f0, 0(x4)	# 1767
	jal		x0, beq_cont.13034	# 1766
beq.13035:
	flw		f0, -152(x2)	# 1769
	flw		f1, -200(x2)	# 1769
	fdiv	f0, f1, f0	# 1769
	sw		x1, -208(x2)	# 1769
	addi	x2, x2, -212	# 1769
	jal		x1, fabs.2478	# 1769
	addi	x2, x2, 212	# 1769
	lw		x1, -208(x2)	# 1769
	lw		x27, -8(x2)	# 1770
	sw		x1, -208(x2)	# 1770
	addi	x2, x2, -212	# 1770
	lw		x31, 0(x27)	# 1770
	jalr	x1, x31, 0	# 1770
	addi	x2, x2, 212	# 1770
	lw		x1, -208(x2)	# 1770
	lui		x4, %hi(l.7336)	# 1770
	ori		x4, x0, %lo(l.7336)	# 1770
	flw		f1, 0(x4)	# 1770
	fmul	f0, f0, f1	# 1770
	lui		x4, %hi(l.7338)	# 1770
	ori		x4, x0, %lo(l.7338)	# 1770
	flw		f1, 0(x4)	# 1770
	fdiv	f0, f0, f1	# 1770
beq_cont.13034:
	fsw		f0, -208(x2)	# 1772
	sw		x1, -216(x2)	# 1772
	addi	x2, x2, -220	# 1772
	jal		x1, floor.2491	# 1772
	addi	x2, x2, 220	# 1772
	lw		x1, -216(x2)	# 1772
	flw		f1, -208(x2)	# 1772
	fsub	f0, f1, f0	# 1772
	lui		x4, %hi(l.7346)	# 1773
	ori		x4, x0, %lo(l.7346)	# 1773
	flw		f1, 0(x4)	# 1773
	lui		x4, %hi(l.6122)	# 1773
	ori		x4, x0, %lo(l.6122)	# 1773
	flw		f2, 0(x4)	# 1773
	flw		f3, -176(x2)	# 1773
	fsub	f3, f2, f3	# 1773
	fsw		f0, -216(x2)	# 1773
	fsw		f2, -224(x2)	# 1773
	fsw		f1, -232(x2)	# 1773
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -240(x2)	# 1773
	addi	x2, x2, -244	# 1773
	jal		x1, fsqr.2485	# 1773
	addi	x2, x2, 244	# 1773
	lw		x1, -240(x2)	# 1773
	flw		f1, -232(x2)	# 1773
	fsub	f0, f1, f0	# 1773
	flw		f1, -216(x2)	# 1773
	flw		f2, -224(x2)	# 1773
	fsub	f1, f2, f1	# 1773
	fsw		f0, -240(x2)	# 1773
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -248(x2)	# 1773
	addi	x2, x2, -252	# 1773
	jal		x1, fsqr.2485	# 1773
	addi	x2, x2, 252	# 1773
	lw		x1, -248(x2)	# 1773
	flw		f1, -240(x2)	# 1773
	fsub	f0, f1, f0	# 1773
	fsw		f0, -248(x2)	# 1774
	sw		x1, -256(x2)	# 1774
	addi	x2, x2, -260	# 1774
	jal		x1, fisneg.2474	# 1774
	addi	x2, x2, 260	# 1774
	lw		x1, -256(x2)	# 1774
	lw		x5, -80(x2)	# 1774
	beq		x4, x5, beq.13037	# 1774
	flw		f0, -32(x2)	# 1774
	jal		x0, beq_cont.13036	# 1774
beq.13037:
	flw		f0, -248(x2)	# 1774
beq_cont.13036:
	flw		f1, -40(x2)	# 1775
	fmul	f0, f1, f0	# 1775
	lui		x4, %hi(l.7349)	# 1775
	ori		x4, x0, %lo(l.7349)	# 1775
	flw		f1, 0(x4)	# 1775
	fdiv	f0, f0, f1	# 1775
	ori		x4, x0, 4	# 1775
	lw		x5, -60(x2)	# 1775
	mul		x4, x5, x4	# 1775
	lw		x5, -76(x2)	# 1775
	add		x4, x5, x4	# 1775
	fsw		f0, 0(x4)	# 1775
	jalr	x0, x1, 0	# 1775
beq.13029:
	ori		x7, x0, 4	# 1741
	lw		x8, -80(x2)	# 1741
	mul		x7, x8, x7	# 1741
	lw		x8, -56(x2)	# 1741
	add		x7, x8, x7	# 1741
	flw		f0, 0(x7)	# 1741
	lw		x7, -84(x2)	# 1741
	lw		x27, -52(x2)	# 1741
	fsw		f0, -256(x2)	# 1741
	addi	x4, x7, 0
	sw		x1, -264(x2)	# 1741
	addi	x2, x2, -268	# 1741
	lw		x31, 0(x27)	# 1741
	jalr	x1, x31, 0	# 1741
	addi	x2, x2, 268	# 1741
	lw		x1, -264(x2)	# 1741
	flw		f1, -256(x2)	# 1741
	fsub	f0, f1, f0	# 1741
	ori		x4, x0, 4	# 1742
	lw		x5, -60(x2)	# 1742
	mul		x4, x5, x4	# 1742
	lw		x6, -56(x2)	# 1742
	add		x4, x6, x4	# 1742
	flw		f1, 0(x4)	# 1742
	lw		x4, -84(x2)	# 1742
	lw		x27, -48(x2)	# 1742
	fsw		f0, -264(x2)	# 1742
	fsw		f1, -272(x2)	# 1742
	sw		x1, -280(x2)	# 1742
	addi	x2, x2, -284	# 1742
	lw		x31, 0(x27)	# 1742
	jalr	x1, x31, 0	# 1742
	addi	x2, x2, 284	# 1742
	lw		x1, -280(x2)	# 1742
	flw		f1, -272(x2)	# 1742
	fsub	f0, f1, f0	# 1742
	flw		f1, -264(x2)	# 1743
	fsw		f0, -280(x2)	# 1743
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -288(x2)	# 1743
	addi	x2, x2, -292	# 1743
	jal		x1, fsqr.2485	# 1743
	addi	x2, x2, 292	# 1743
	lw		x1, -288(x2)	# 1743
	flw		f1, -280(x2)	# 1743
	fsw		f0, -288(x2)	# 1743
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -296(x2)	# 1743
	addi	x2, x2, -300	# 1743
	jal		x1, fsqr.2485	# 1743
	addi	x2, x2, 300	# 1743
	lw		x1, -296(x2)	# 1743
	flw		f1, -288(x2)	# 1743
	fadd	f0, f1, f0	# 1743
	sw		x1, -296(x2)	# 1743
	addi	x2, x2, -300	# 1743
	jal		x1, min_caml_sqrt	# 1743
	addi	x2, x2, 300	# 1743
	lw		x1, -296(x2)	# 1743
	lui		x4, %hi(l.7360)	# 1743
	ori		x4, x0, %lo(l.7360)	# 1743
	flw		f1, 0(x4)	# 1743
	fdiv	f0, f0, f1	# 1743
	fsw		f0, -296(x2)	# 1744
	sw		x1, -304(x2)	# 1744
	addi	x2, x2, -308	# 1744
	jal		x1, floor.2491	# 1744
	addi	x2, x2, 308	# 1744
	lw		x1, -304(x2)	# 1744
	flw		f1, -296(x2)	# 1744
	fsub	f0, f1, f0	# 1744
	lui		x4, %hi(l.7338)	# 1744
	ori		x4, x0, %lo(l.7338)	# 1744
	flw		f1, 0(x4)	# 1744
	fmul	f0, f0, f1	# 1744
	lw		x27, -20(x2)	# 1745
	sw		x1, -304(x2)	# 1745
	addi	x2, x2, -308	# 1745
	lw		x31, 0(x27)	# 1745
	jalr	x1, x31, 0	# 1745
	addi	x2, x2, 308	# 1745
	lw		x1, -304(x2)	# 1745
	sw		x1, -304(x2)	# 1745
	addi	x2, x2, -308	# 1745
	jal		x1, fsqr.2485	# 1745
	addi	x2, x2, 308	# 1745
	lw		x1, -304(x2)	# 1745
	flw		f1, -40(x2)	# 1746
	fmul	f2, f0, f1	# 1746
	ori		x4, x0, 4	# 1746
	lw		x5, -68(x2)	# 1746
	mul		x4, x5, x4	# 1746
	lw		x5, -76(x2)	# 1746
	add		x4, x5, x4	# 1746
	fsw		f2, 0(x4)	# 1746
	lui		x4, %hi(l.6125)	# 1747
	ori		x4, x0, %lo(l.6125)	# 1747
	flw		f2, 0(x4)	# 1747
	fsub	f0, f2, f0	# 1747
	fmul	f0, f0, f1	# 1747
	ori		x4, x0, 4	# 1747
	lw		x6, -60(x2)	# 1747
	mul		x4, x6, x4	# 1747
	add		x4, x5, x4	# 1747
	fsw		f0, 0(x4)	# 1747
	jalr	x0, x1, 0	# 1747
beq.13028:
	ori		x5, x0, 4	# 1734
	mul		x5, x4, x5	# 1734
	lw		x7, -56(x2)	# 1734
	add		x5, x7, x5	# 1734
	flw		f0, 0(x5)	# 1734
	lui		x5, %hi(l.7373)	# 1734
	ori		x5, x0, %lo(l.7373)	# 1734
	flw		f1, 0(x5)	# 1734
	fmul	f0, f0, f1	# 1734
	lw		x27, -28(x2)	# 1734
	sw		x1, -304(x2)	# 1734
	addi	x2, x2, -308	# 1734
	lw		x31, 0(x27)	# 1734
	jalr	x1, x31, 0	# 1734
	addi	x2, x2, 308	# 1734
	lw		x1, -304(x2)	# 1734
	sw		x1, -304(x2)	# 1734
	addi	x2, x2, -308	# 1734
	jal		x1, fsqr.2485	# 1734
	addi	x2, x2, 308	# 1734
	lw		x1, -304(x2)	# 1734
	flw		f1, -40(x2)	# 1735
	fmul	f2, f1, f0	# 1735
	ori		x4, x0, 4	# 1735
	lw		x5, -80(x2)	# 1735
	mul		x4, x5, x4	# 1735
	lw		x5, -76(x2)	# 1735
	add		x4, x5, x4	# 1735
	fsw		f2, 0(x4)	# 1735
	lui		x4, %hi(l.6125)	# 1736
	ori		x4, x0, %lo(l.6125)	# 1736
	flw		f2, 0(x4)	# 1736
	fsub	f0, f2, f0	# 1736
	fmul	f0, f1, f0	# 1736
	ori		x4, x0, 4	# 1736
	lw		x6, -68(x2)	# 1736
	mul		x4, x6, x4	# 1736
	add		x4, x5, x4	# 1736
	fsw		f0, 0(x4)	# 1736
	jalr	x0, x1, 0	# 1736
beq.13027:
	ori		x7, x0, 4	# 1716
	lw		x8, -80(x2)	# 1716
	mul		x7, x8, x7	# 1716
	lw		x9, -56(x2)	# 1716
	add		x7, x9, x7	# 1716
	flw		f0, 0(x7)	# 1716
	lw		x7, -84(x2)	# 1716
	lw		x27, -52(x2)	# 1716
	fsw		f0, -304(x2)	# 1716
	addi	x4, x7, 0
	sw		x1, -312(x2)	# 1716
	addi	x2, x2, -316	# 1716
	lw		x31, 0(x27)	# 1716
	jalr	x1, x31, 0	# 1716
	addi	x2, x2, 316	# 1716
	lw		x1, -312(x2)	# 1716
	flw		f1, -304(x2)	# 1716
	fsub	f0, f1, f0	# 1716
	lui		x4, %hi(l.7385)	# 1718
	ori		x4, x0, %lo(l.7385)	# 1718
	flw		f1, 0(x4)	# 1718
	fmul	f2, f0, f1	# 1718
	fsw		f1, -312(x2)	# 1718
	fsw		f0, -320(x2)	# 1718
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -328(x2)	# 1718
	addi	x2, x2, -332	# 1718
	jal		x1, floor.2491	# 1718
	addi	x2, x2, 332	# 1718
	lw		x1, -328(x2)	# 1718
	lui		x4, %hi(l.7387)	# 1718
	ori		x4, x0, %lo(l.7387)	# 1718
	flw		f1, 0(x4)	# 1718
	fmul	f0, f0, f1	# 1718
	flw		f2, -320(x2)	# 1719
	fsub	f0, f2, f0	# 1719
	lui		x4, %hi(l.7360)	# 1719
	ori		x4, x0, %lo(l.7360)	# 1719
	flw		f2, 0(x4)	# 1719
	fsw		f2, -328(x2)	# 1719
	fsw		f1, -336(x2)	# 1719
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	sw		x1, -344(x2)	# 1719
	addi	x2, x2, -348	# 1719
	jal		x1, fless.2480	# 1719
	addi	x2, x2, 348	# 1719
	lw		x1, -344(x2)	# 1719
	ori		x5, x0, 4	# 1721
	lw		x6, -60(x2)	# 1721
	mul		x5, x6, x5	# 1721
	lw		x6, -56(x2)	# 1721
	add		x5, x6, x5	# 1721
	flw		f0, 0(x5)	# 1721
	lw		x5, -84(x2)	# 1721
	lw		x27, -48(x2)	# 1721
	sw		x4, -344(x2)	# 1721
	fsw		f0, -352(x2)	# 1721
	addi	x4, x5, 0
	sw		x1, -360(x2)	# 1721
	addi	x2, x2, -364	# 1721
	lw		x31, 0(x27)	# 1721
	jalr	x1, x31, 0	# 1721
	addi	x2, x2, 364	# 1721
	lw		x1, -360(x2)	# 1721
	flw		f1, -352(x2)	# 1721
	fsub	f0, f1, f0	# 1721
	flw		f1, -312(x2)	# 1723
	fmul	f1, f0, f1	# 1723
	fsw		f0, -360(x2)	# 1723
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -368(x2)	# 1723
	addi	x2, x2, -372	# 1723
	jal		x1, floor.2491	# 1723
	addi	x2, x2, 372	# 1723
	lw		x1, -368(x2)	# 1723
	flw		f1, -336(x2)	# 1723
	fmul	f0, f0, f1	# 1723
	flw		f1, -360(x2)	# 1724
	fsub	f0, f1, f0	# 1724
	flw		f1, -328(x2)	# 1724
	sw		x1, -368(x2)	# 1724
	addi	x2, x2, -372	# 1724
	jal		x1, fless.2480	# 1724
	addi	x2, x2, 372	# 1724
	lw		x1, -368(x2)	# 1724
	lw		x5, -80(x2)	# 1727
	lw		x6, -344(x2)	# 1727
	beq		x6, x5, beq.13043	# 1727
	beq		x4, x5, beq.13045	# 1728
	flw		f0, -40(x2)	# 1728
	jal		x0, beq_cont.13044	# 1728
beq.13045:
	flw		f0, -32(x2)	# 1728
beq_cont.13044:
	jal		x0, beq_cont.13042	# 1727
beq.13043:
	beq		x4, x5, beq.13047	# 1729
	flw		f0, -32(x2)	# 1729
	jal		x0, beq_cont.13046	# 1729
beq.13047:
	flw		f0, -40(x2)	# 1729
beq_cont.13046:
beq_cont.13042:
	ori		x4, x0, 4	# 1726
	lw		x5, -68(x2)	# 1726
	mul		x4, x5, x4	# 1726
	lw		x5, -76(x2)	# 1726
	add		x4, x5, x4	# 1726
	fsw		f0, 0(x4)	# 1726
	jalr	x0, x1, 0	# 1726
add_light.2862:
	lw		x4, 24(x27)	# 1788
	lw		x5, 20(x27)	# 1788
	lw		x6, 16(x27)	# 1788
	lw		x7, 12(x27)	# 1788
	lw		x8, 8(x27)	# 1788
	lw		x9, 4(x27)	# 1788
	sw		x7, 0(x2)	# 1788
	sw		x9, -4(x2)	# 1788
	fsw		f2, -8(x2)	# 1788
	fsw		f1, -16(x2)	# 1788
	fsw		f0, -24(x2)	# 1788
	sw		x5, -32(x2)	# 1788
	sw		x6, -36(x2)	# 1788
	sw		x4, -40(x2)	# 1788
	sw		x8, -44(x2)	# 1788
	sw		x1, -48(x2)	# 1788
	addi	x2, x2, -52	# 1788
	jal		x1, fispos.2472	# 1788
	addi	x2, x2, 52	# 1788
	lw		x1, -48(x2)	# 1788
	lw		x5, -44(x2)	# 1788
	beq		x4, x5, beq.13050	# 1788
	flw		f0, -24(x2)	# 1789
	lw		x4, -36(x2)	# 1789
	lw		x6, -32(x2)	# 1789
	lw		x27, -40(x2)	# 1789
	addi	x5, x6, 0
	sw		x1, -48(x2)	# 1789
	addi	x2, x2, -52	# 1789
	lw		x31, 0(x27)	# 1789
	jalr	x1, x31, 0	# 1789
	addi	x2, x2, 52	# 1789
	lw		x1, -48(x2)	# 1789
	jal		x0, beq_cont.13049	# 1788
beq.13050:
beq_cont.13049:
	flw		f0, -16(x2)	# 1793
	sw		x1, -48(x2)	# 1793
	addi	x2, x2, -52	# 1793
	jal		x1, fispos.2472	# 1793
	addi	x2, x2, 52	# 1793
	lw		x1, -48(x2)	# 1793
	lw		x5, -44(x2)	# 1793
	beq		x4, x5, beq.13051	# 1793
	flw		f0, -16(x2)	# 1794
	sw		x1, -48(x2)	# 1794
	addi	x2, x2, -52	# 1794
	jal		x1, fsqr.2485	# 1794
	addi	x2, x2, 52	# 1794
	lw		x1, -48(x2)	# 1794
	sw		x1, -48(x2)	# 1794
	addi	x2, x2, -52	# 1794
	jal		x1, fsqr.2485	# 1794
	addi	x2, x2, 52	# 1794
	lw		x1, -48(x2)	# 1794
	flw		f1, -8(x2)	# 1794
	fmul	f0, f0, f1	# 1794
	ori		x4, x0, 4	# 1795
	lw		x5, -44(x2)	# 1795
	mul		x4, x5, x4	# 1795
	lw		x6, -36(x2)	# 1795
	add		x4, x6, x4	# 1795
	flw		f1, 0(x4)	# 1795
	fadd	f1, f1, f0	# 1795
	ori		x4, x0, 4	# 1795
	mul		x4, x5, x4	# 1795
	add		x4, x6, x4	# 1795
	fsw		f1, 0(x4)	# 1795
	ori		x4, x0, 4	# 1796
	lw		x5, -4(x2)	# 1796
	mul		x4, x5, x4	# 1796
	add		x4, x6, x4	# 1796
	flw		f1, 0(x4)	# 1796
	fadd	f1, f1, f0	# 1796
	ori		x4, x0, 4	# 1796
	mul		x4, x5, x4	# 1796
	add		x4, x6, x4	# 1796
	fsw		f1, 0(x4)	# 1796
	ori		x4, x0, 4	# 1797
	lw		x5, 0(x2)	# 1797
	mul		x4, x5, x4	# 1797
	add		x4, x6, x4	# 1797
	flw		f1, 0(x4)	# 1797
	fadd	f0, f1, f0	# 1797
	ori		x4, x0, 4	# 1797
	mul		x4, x5, x4	# 1797
	add		x4, x6, x4	# 1797
	fsw		f0, 0(x4)	# 1797
	jalr	x0, x1, 0	# 1797
beq.13051:
	jalr	x0, x1, 0	# 1798
trace_reflections.2866:
	lw		x6, 44(x27)	# 1804
	lw		x7, 40(x27)	# 1804
	lw		x8, 36(x27)	# 1804
	lw		x9, 32(x27)	# 1804
	lw		x10, 28(x27)	# 1804
	lw		x11, 24(x27)	# 1804
	lw		x12, 20(x27)	# 1804
	lw		x13, 16(x27)	# 1804
	lw		x14, 12(x27)	# 1804
	lw		x15, 8(x27)	# 1804
	lw		x16, 4(x27)	# 1804
	ble		x15, x4, ble.13054	# 1804
	jalr	x0, x1, 0	# 1824
ble.13054:
	ori		x17, x0, 4	# 1805
	mul		x17, x4, x17	# 1805
	add		x8, x8, x17	# 1805
	lw		x8, 0(x8)	# 1805
	sw		x27, 0(x2)	# 1806
	sw		x16, -4(x2)	# 1806
	sw		x4, -8(x2)	# 1806
	fsw		f1, -16(x2)	# 1806
	sw		x14, -24(x2)	# 1806
	sw		x5, -28(x2)	# 1806
	fsw		f0, -32(x2)	# 1806
	sw		x10, -40(x2)	# 1806
	sw		x6, -44(x2)	# 1806
	sw		x7, -48(x2)	# 1806
	sw		x9, -52(x2)	# 1806
	sw		x8, -56(x2)	# 1806
	sw		x12, -60(x2)	# 1806
	sw		x13, -64(x2)	# 1806
	sw		x15, -68(x2)	# 1806
	sw		x11, -72(x2)	# 1806
	addi	x4, x8, 0
	sw		x1, -76(x2)	# 1806
	addi	x2, x2, -80	# 1806
	jal		x1, r_dvec.2657	# 1806
	addi	x2, x2, 80	# 1806
	lw		x1, -76(x2)	# 1806
	lw		x27, -72(x2)	# 1809
	sw		x4, -76(x2)	# 1809
	sw		x1, -80(x2)	# 1809
	addi	x2, x2, -84	# 1809
	lw		x31, 0(x27)	# 1809
	jalr	x1, x31, 0	# 1809
	addi	x2, x2, 84	# 1809
	lw		x1, -80(x2)	# 1809
	lw		x5, -68(x2)	# 1809
	beq		x4, x5, beq.13058	# 1809
	addi	x4, x0, 0	# 1810
	ori		x5, x0, 4	# 1810
	mul		x4, x4, x5	# 1810
	lw		x5, -64(x2)	# 1810
	add		x4, x5, x4	# 1810
	lw		x4, 0(x4)	# 1810
	ori		x5, x0, 4	# 1810
	mul		x4, x4, x5	# 1810
	addi	x5, x0, 0	# 1810
	ori		x6, x0, 4	# 1810
	mul		x5, x5, x6	# 1810
	lw		x6, -60(x2)	# 1810
	add		x5, x6, x5	# 1810
	lw		x5, 0(x5)	# 1810
	add		x4, x4, x5	# 1810
	lw		x5, -56(x2)	# 1811
	sw		x4, -80(x2)	# 1811
	addi	x4, x5, 0
	sw		x1, -84(x2)	# 1811
	addi	x2, x2, -88	# 1811
	jal		x1, r_surface_id.2655	# 1811
	addi	x2, x2, 88	# 1811
	lw		x1, -84(x2)	# 1811
	lw		x5, -80(x2)	# 1811
	beq		x5, x4, beq.13060	# 1811
	jal		x0, beq_cont.13059	# 1811
beq.13060:
	addi	x4, x0, 0	# 1813
	addi	x5, x0, 0	# 1813
	ori		x6, x0, 4	# 1813
	mul		x5, x5, x6	# 1813
	lw		x6, -52(x2)	# 1813
	add		x5, x6, x5	# 1813
	lw		x5, 0(x5)	# 1813
	lw		x27, -48(x2)	# 1813
	sw		x1, -84(x2)	# 1813
	addi	x2, x2, -88	# 1813
	lw		x31, 0(x27)	# 1813
	jalr	x1, x31, 0	# 1813
	addi	x2, x2, 88	# 1813
	lw		x1, -84(x2)	# 1813
	addi	x5, x0, 0	# 1813
	beq		x4, x5, beq.13062	# 1813
	jal		x0, beq_cont.13061	# 1813
beq.13062:
	lw		x4, -76(x2)	# 1815
	sw		x1, -84(x2)	# 1815
	addi	x2, x2, -88	# 1815
	jal		x1, d_vec.2651	# 1815
	addi	x2, x2, 88	# 1815
	lw		x1, -84(x2)	# 1815
	addi	x5, x4, 0	# 1815
	lw		x4, -40(x2)	# 1815
	lw		x27, -44(x2)	# 1815
	sw		x1, -84(x2)	# 1815
	addi	x2, x2, -88	# 1815
	lw		x31, 0(x27)	# 1815
	jalr	x1, x31, 0	# 1815
	addi	x2, x2, 88	# 1815
	lw		x1, -84(x2)	# 1815
	lw		x4, -56(x2)	# 1816
	fsw		f0, -88(x2)	# 1816
	sw		x1, -96(x2)	# 1816
	addi	x2, x2, -100	# 1816
	jal		x1, r_bright.2659	# 1816
	addi	x2, x2, 100	# 1816
	lw		x1, -96(x2)	# 1816
	flw		f1, -32(x2)	# 1817
	fmul	f2, f0, f1	# 1817
	flw		f3, -88(x2)	# 1817
	fmul	f2, f2, f3	# 1817
	lw		x4, -76(x2)	# 1818
	fsw		f2, -96(x2)	# 1818
	fsw		f0, -104(x2)	# 1818
	sw		x1, -112(x2)	# 1818
	addi	x2, x2, -116	# 1818
	jal		x1, d_vec.2651	# 1818
	addi	x2, x2, 116	# 1818
	lw		x1, -112(x2)	# 1818
	addi	x5, x4, 0	# 1818
	lw		x4, -28(x2)	# 1818
	lw		x27, -44(x2)	# 1818
	sw		x1, -112(x2)	# 1818
	addi	x2, x2, -116	# 1818
	lw		x31, 0(x27)	# 1818
	jalr	x1, x31, 0	# 1818
	addi	x2, x2, 116	# 1818
	lw		x1, -112(x2)	# 1818
	flw		f1, -104(x2)	# 1818
	fmul	f1, f1, f0	# 1818
	flw		f0, -96(x2)	# 1819
	flw		f2, -16(x2)	# 1819
	lw		x27, -24(x2)	# 1819
	sw		x1, -112(x2)	# 1819
	addi	x2, x2, -116	# 1819
	lw		x31, 0(x27)	# 1819
	jalr	x1, x31, 0	# 1819
	addi	x2, x2, 116	# 1819
	lw		x1, -112(x2)	# 1819
beq_cont.13061:
beq_cont.13059:
	jal		x0, beq_cont.13057	# 1809
beq.13058:
beq_cont.13057:
	lw		x4, -4(x2)	# 1823
	lw		x5, -8(x2)	# 1823
	sub		x4, x5, x4	# 1823
	flw		f0, -32(x2)	# 1823
	flw		f1, -16(x2)	# 1823
	lw		x5, -28(x2)	# 1823
	lw		x27, 0(x2)	# 1823
	lw		x31, 0(x27)	# 1823
	jalr	x0, x31, 0	# 1823
trace_ray.2871:
	lw		x7, 120(x27)	# 1832
	lw		x8, 116(x27)	# 1832
	lw		x9, 112(x27)	# 1832
	lw		x10, 108(x27)	# 1832
	lw		x11, 104(x27)	# 1832
	lw		x12, 100(x27)	# 1832
	lw		x13, 96(x27)	# 1832
	lw		x14, 92(x27)	# 1832
	lw		x15, 88(x27)	# 1832
	lw		x16, 84(x27)	# 1832
	lw		x17, 80(x27)	# 1832
	lw		x18, 76(x27)	# 1832
	lw		x19, 72(x27)	# 1832
	lw		x20, 68(x27)	# 1832
	lw		x21, 64(x27)	# 1832
	lw		x22, 60(x27)	# 1832
	lw		x23, 56(x27)	# 1832
	lw		x24, 52(x27)	# 1832
	lw		x25, 48(x27)	# 1832
	lw		x26, 44(x27)	# 1832
	lw		x31, 40(x27)	# 1832
	sw		x13, 0(x2)	# 1832
	lw		x13, 36(x27)	# 1832
	sw		x12, -4(x2)	# 1832
	lw		x12, 32(x27)	# 1832
	sw		x24, -8(x2)	# 1832
	lw		x24, 28(x27)	# 1832
	sw		x17, -12(x2)	# 1832
	lw		x17, 24(x27)	# 1832
	sw		x16, -16(x2)	# 1832
	lw		x16, 20(x27)	# 1832
	sw		x16, -20(x2)	# 1832
	lw		x16, 16(x27)	# 1832
	sw		x19, -24(x2)	# 1832
	lw		x19, 12(x27)	# 1832
	sw		x21, -28(x2)	# 1832
	lw		x21, 8(x27)	# 1832
	sw		x27, -32(x2)	# 1832
	lw		x27, 4(x27)	# 1832
	sw		x10, -36(x2)	# 1832
	ori		x10, x0, 4	# 1832
	ble		x4, x10, ble.13064	# 1832
	jalr	x0, x1, 0	# 1913
ble.13064:
	fsw		f1, -40(x2)	# 1833
	sw		x23, -48(x2)	# 1833
	sw		x7, -52(x2)	# 1833
	sw		x14, -56(x2)	# 1833
	sw		x6, -60(x2)	# 1833
	sw		x31, -64(x2)	# 1833
	sw		x10, -68(x2)	# 1833
	sw		x11, -72(x2)	# 1833
	sw		x13, -76(x2)	# 1833
	sw		x15, -80(x2)	# 1833
	sw		x9, -84(x2)	# 1833
	sw		x24, -88(x2)	# 1833
	sw		x22, -92(x2)	# 1833
	sw		x20, -96(x2)	# 1833
	sw		x12, -100(x2)	# 1833
	sw		x16, -104(x2)	# 1833
	sw		x27, -108(x2)	# 1833
	sw		x18, -112(x2)	# 1833
	sw		x17, -116(x2)	# 1833
	fsw		f0, -120(x2)	# 1833
	sw		x25, -128(x2)	# 1833
	sw		x8, -132(x2)	# 1833
	sw		x19, -136(x2)	# 1833
	sw		x4, -140(x2)	# 1833
	sw		x21, -144(x2)	# 1833
	sw		x5, -148(x2)	# 1833
	sw		x26, -152(x2)	# 1833
	addi	x4, x6, 0
	sw		x1, -156(x2)	# 1833
	addi	x2, x2, -160	# 1833
	jal		x1, p_surface_ids.2636	# 1833
	addi	x2, x2, 160	# 1833
	lw		x1, -156(x2)	# 1833
	lw		x5, -148(x2)	# 1834
	lw		x27, -152(x2)	# 1834
	sw		x4, -156(x2)	# 1834
	addi	x4, x5, 0
	sw		x1, -160(x2)	# 1834
	addi	x2, x2, -164	# 1834
	lw		x31, 0(x27)	# 1834
	jalr	x1, x31, 0	# 1834
	addi	x2, x2, 164	# 1834
	lw		x1, -160(x2)	# 1834
	lw		x5, -144(x2)	# 1834
	beq		x4, x5, beq.13066	# 1834
	ori		x4, x0, 4	# 1836
	mul		x4, x5, x4	# 1836
	lw		x6, -100(x2)	# 1836
	add		x4, x6, x4	# 1836
	lw		x4, 0(x4)	# 1836
	ori		x6, x0, 4	# 1837
	mul		x6, x4, x6	# 1837
	lw		x7, -96(x2)	# 1837
	add		x6, x7, x6	# 1837
	lw		x6, 0(x6)	# 1837
	sw		x4, -160(x2)	# 1838
	sw		x6, -164(x2)	# 1838
	addi	x4, x6, 0
	sw		x1, -168(x2)	# 1838
	addi	x2, x2, -172	# 1838
	jal		x1, o_reflectiontype.2594	# 1838
	addi	x2, x2, 172	# 1838
	lw		x1, -168(x2)	# 1838
	lw		x5, -164(x2)	# 1839
	lw		x27, -92(x2)	# 1839
	sw		x4, -168(x2)	# 1839
	addi	x4, x5, 0
	sw		x1, -172(x2)	# 1839
	addi	x2, x2, -176	# 1839
	lw		x31, 0(x27)	# 1839
	jalr	x1, x31, 0	# 1839
	addi	x2, x2, 176	# 1839
	lw		x1, -172(x2)	# 1839
	flw		f1, -120(x2)	# 1839
	fmul	f0, f0, f1	# 1839
	lw		x4, -164(x2)	# 1841
	lw		x5, -148(x2)	# 1841
	lw		x27, -88(x2)	# 1841
	fsw		f0, -176(x2)	# 1841
	sw		x1, -184(x2)	# 1841
	addi	x2, x2, -188	# 1841
	lw		x31, 0(x27)	# 1841
	jalr	x1, x31, 0	# 1841
	addi	x2, x2, 188	# 1841
	lw		x1, -184(x2)	# 1841
	lw		x4, -80(x2)	# 1842
	lw		x5, -76(x2)	# 1842
	lw		x27, -84(x2)	# 1842
	sw		x1, -184(x2)	# 1842
	addi	x2, x2, -188	# 1842
	lw		x31, 0(x27)	# 1842
	jalr	x1, x31, 0	# 1842
	addi	x2, x2, 188	# 1842
	lw		x1, -184(x2)	# 1842
	lw		x4, -164(x2)	# 1843
	lw		x5, -76(x2)	# 1843
	lw		x27, -72(x2)	# 1843
	sw		x1, -184(x2)	# 1843
	addi	x2, x2, -188	# 1843
	lw		x31, 0(x27)	# 1843
	jalr	x1, x31, 0	# 1843
	addi	x2, x2, 188	# 1843
	lw		x1, -184(x2)	# 1843
	lw		x4, -68(x2)	# 1846
	lw		x5, -160(x2)	# 1846
	mul		x5, x5, x4	# 1846
	ori		x6, x0, 4	# 1846
	lw		x7, -144(x2)	# 1846
	mul		x6, x7, x6	# 1846
	lw		x8, -64(x2)	# 1846
	add		x6, x8, x6	# 1846
	lw		x6, 0(x6)	# 1846
	add		x5, x5, x6	# 1846
	ori		x6, x0, 4	# 1846
	lw		x8, -140(x2)	# 1846
	mul		x6, x8, x6	# 1846
	lw		x9, -156(x2)	# 1846
	add		x6, x9, x6	# 1846
	sw		x5, 0(x6)	# 1846
	lw		x5, -60(x2)	# 1847
	addi	x4, x5, 0
	sw		x1, -184(x2)	# 1847
	addi	x2, x2, -188	# 1847
	jal		x1, p_intersection_points.2634	# 1847
	addi	x2, x2, 188	# 1847
	lw		x1, -184(x2)	# 1847
	ori		x5, x0, 4	# 1848
	lw		x6, -140(x2)	# 1848
	mul		x5, x6, x5	# 1848
	add		x4, x4, x5	# 1848
	lw		x4, 0(x4)	# 1848
	lw		x5, -76(x2)	# 1848
	lw		x27, -84(x2)	# 1848
	sw		x1, -184(x2)	# 1848
	addi	x2, x2, -188	# 1848
	lw		x31, 0(x27)	# 1848
	jalr	x1, x31, 0	# 1848
	addi	x2, x2, 188	# 1848
	lw		x1, -184(x2)	# 1848
	lw		x4, -60(x2)	# 1851
	sw		x1, -184(x2)	# 1851
	addi	x2, x2, -188	# 1851
	jal		x1, p_calc_diffuse.2638	# 1851
	addi	x2, x2, 188	# 1851
	lw		x1, -184(x2)	# 1851
	lw		x5, -164(x2)	# 1852
	lw		x27, -92(x2)	# 1852
	sw		x4, -184(x2)	# 1852
	addi	x4, x5, 0
	sw		x1, -188(x2)	# 1852
	addi	x2, x2, -192	# 1852
	lw		x31, 0(x27)	# 1852
	jalr	x1, x31, 0	# 1852
	addi	x2, x2, 192	# 1852
	lw		x1, -188(x2)	# 1852
	lui		x4, %hi(l.6122)	# 1852
	ori		x4, x0, %lo(l.6122)	# 1852
	flw		f1, 0(x4)	# 1852
	sw		x1, -188(x2)	# 1852
	addi	x2, x2, -192	# 1852
	jal		x1, fless.2480	# 1852
	addi	x2, x2, 192	# 1852
	lw		x1, -188(x2)	# 1852
	lw		x5, -144(x2)	# 1852
	beq		x4, x5, beq.13069	# 1852
	addi	x4, x0, 0	# 1853
	ori		x6, x0, 4	# 1853
	lw		x7, -140(x2)	# 1853
	mul		x6, x7, x6	# 1853
	lw		x8, -184(x2)	# 1853
	add		x6, x8, x6	# 1853
	sw		x4, 0(x6)	# 1853
	jal		x0, beq_cont.13068	# 1852
beq.13069:
	ori		x4, x0, 1	# 1855
	ori		x6, x0, 4	# 1855
	lw		x7, -140(x2)	# 1855
	mul		x6, x7, x6	# 1855
	lw		x8, -184(x2)	# 1855
	add		x6, x8, x6	# 1855
	sw		x4, 0(x6)	# 1855
	lw		x4, -60(x2)	# 1856
	sw		x1, -188(x2)	# 1856
	addi	x2, x2, -192	# 1856
	jal		x1, p_energy.2640	# 1856
	addi	x2, x2, 192	# 1856
	lw		x1, -188(x2)	# 1856
	ori		x5, x0, 4	# 1857
	lw		x6, -140(x2)	# 1857
	mul		x5, x6, x5	# 1857
	add		x5, x4, x5	# 1857
	lw		x5, 0(x5)	# 1857
	lw		x7, -56(x2)	# 1857
	lw		x27, -84(x2)	# 1857
	sw		x4, -188(x2)	# 1857
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -192(x2)	# 1857
	addi	x2, x2, -196	# 1857
	lw		x31, 0(x27)	# 1857
	jalr	x1, x31, 0	# 1857
	addi	x2, x2, 196	# 1857
	lw		x1, -192(x2)	# 1857
	ori		x4, x0, 4	# 1858
	lw		x5, -140(x2)	# 1858
	mul		x4, x5, x4	# 1858
	lw		x6, -188(x2)	# 1858
	add		x4, x6, x4	# 1858
	lw		x4, 0(x4)	# 1858
	lui		x6, %hi(l.7454)	# 1858
	ori		x6, x0, %lo(l.7454)	# 1858
	flw		f0, 0(x6)	# 1858
	flw		f1, -176(x2)	# 1858
	fmul	f0, f0, f1	# 1858
	lw		x27, -52(x2)	# 1858
	sw		x1, -192(x2)	# 1858
	addi	x2, x2, -196	# 1858
	lw		x31, 0(x27)	# 1858
	jalr	x1, x31, 0	# 1858
	addi	x2, x2, 196	# 1858
	lw		x1, -192(x2)	# 1858
	lw		x4, -60(x2)	# 1859
	sw		x1, -192(x2)	# 1859
	addi	x2, x2, -196	# 1859
	jal		x1, p_nvectors.2649	# 1859
	addi	x2, x2, 196	# 1859
	lw		x1, -192(x2)	# 1859
	ori		x5, x0, 4	# 1860
	lw		x6, -140(x2)	# 1860
	mul		x5, x6, x5	# 1860
	add		x4, x4, x5	# 1860
	lw		x4, 0(x4)	# 1860
	lw		x5, -48(x2)	# 1860
	lw		x27, -84(x2)	# 1860
	sw		x1, -192(x2)	# 1860
	addi	x2, x2, -196	# 1860
	lw		x31, 0(x27)	# 1860
	jalr	x1, x31, 0	# 1860
	addi	x2, x2, 196	# 1860
	lw		x1, -192(x2)	# 1860
beq_cont.13068:
	lui		x4, %hi(l.7459)	# 1863
	ori		x4, x0, %lo(l.7459)	# 1863
	flw		f0, 0(x4)	# 1863
	lw		x4, -148(x2)	# 1863
	lw		x5, -48(x2)	# 1863
	lw		x27, -132(x2)	# 1863
	fsw		f0, -192(x2)	# 1863
	sw		x1, -200(x2)	# 1863
	addi	x2, x2, -204	# 1863
	lw		x31, 0(x27)	# 1863
	jalr	x1, x31, 0	# 1863
	addi	x2, x2, 204	# 1863
	lw		x1, -200(x2)	# 1863
	flw		f1, -192(x2)	# 1863
	fmul	f0, f1, f0	# 1863
	lw		x4, -148(x2)	# 1865
	lw		x5, -48(x2)	# 1865
	lw		x27, -36(x2)	# 1865
	sw		x1, -200(x2)	# 1865
	addi	x2, x2, -204	# 1865
	lw		x31, 0(x27)	# 1865
	jalr	x1, x31, 0	# 1865
	addi	x2, x2, 204	# 1865
	lw		x1, -200(x2)	# 1865
	lw		x4, -164(x2)	# 1867
	lw		x27, -28(x2)	# 1867
	sw		x1, -200(x2)	# 1867
	addi	x2, x2, -204	# 1867
	lw		x31, 0(x27)	# 1867
	jalr	x1, x31, 0	# 1867
	addi	x2, x2, 204	# 1867
	lw		x1, -200(x2)	# 1867
	flw		f1, -120(x2)	# 1867
	fmul	f0, f1, f0	# 1867
	ori		x4, x0, 4	# 1870
	lw		x5, -144(x2)	# 1870
	mul		x4, x5, x4	# 1870
	lw		x6, -24(x2)	# 1870
	add		x4, x6, x4	# 1870
	lw		x4, 0(x4)	# 1870
	lw		x27, -16(x2)	# 1870
	fsw		f0, -200(x2)	# 1870
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -208(x2)	# 1870
	addi	x2, x2, -212	# 1870
	lw		x31, 0(x27)	# 1870
	jalr	x1, x31, 0	# 1870
	addi	x2, x2, 212	# 1870
	lw		x1, -208(x2)	# 1870
	lw		x5, -144(x2)	# 1870
	beq		x4, x5, beq.13071	# 1870
	jal		x0, beq_cont.13070	# 1870
beq.13071:
	lw		x4, -48(x2)	# 1871
	lw		x6, -128(x2)	# 1871
	lw		x27, -132(x2)	# 1871
	addi	x5, x6, 0
	sw		x1, -208(x2)	# 1871
	addi	x2, x2, -212	# 1871
	lw		x31, 0(x27)	# 1871
	jalr	x1, x31, 0	# 1871
	addi	x2, x2, 212	# 1871
	lw		x1, -208(x2)	# 1871
	sw		x1, -208(x2)	# 1871
	addi	x2, x2, -212	# 1871
	jal		x1, fneg.2476	# 1871
	addi	x2, x2, 212	# 1871
	lw		x1, -208(x2)	# 1871
	flw		f1, -176(x2)	# 1871
	fmul	f0, f0, f1	# 1871
	lw		x4, -148(x2)	# 1872
	lw		x5, -128(x2)	# 1872
	lw		x27, -132(x2)	# 1872
	fsw		f0, -208(x2)	# 1872
	sw		x1, -216(x2)	# 1872
	addi	x2, x2, -220	# 1872
	lw		x31, 0(x27)	# 1872
	jalr	x1, x31, 0	# 1872
	addi	x2, x2, 220	# 1872
	lw		x1, -216(x2)	# 1872
	sw		x1, -216(x2)	# 1872
	addi	x2, x2, -220	# 1872
	jal		x1, fneg.2476	# 1872
	addi	x2, x2, 220	# 1872
	lw		x1, -216(x2)	# 1872
	fsub	f1, f1, f1	# 1872
	fadd	f1, f1, f0	# 1872
	flw		f0, -208(x2)	# 1873
	flw		f2, -200(x2)	# 1873
	lw		x27, -20(x2)	# 1873
	sw		x1, -216(x2)	# 1873
	addi	x2, x2, -220	# 1873
	lw		x31, 0(x27)	# 1873
	jalr	x1, x31, 0	# 1873
	addi	x2, x2, 220	# 1873
	lw		x1, -216(x2)	# 1873
beq_cont.13070:
	lw		x4, -76(x2)	# 1877
	lw		x27, -12(x2)	# 1877
	sw		x1, -216(x2)	# 1877
	addi	x2, x2, -220	# 1877
	lw		x31, 0(x27)	# 1877
	jalr	x1, x31, 0	# 1877
	addi	x2, x2, 220	# 1877
	lw		x1, -216(x2)	# 1877
	ori		x4, x0, 4	# 1878
	lw		x5, -144(x2)	# 1878
	mul		x4, x5, x4	# 1878
	lw		x6, -8(x2)	# 1878
	add		x4, x6, x4	# 1878
	lw		x4, 0(x4)	# 1878
	lw		x6, -108(x2)	# 1878
	sub		x4, x4, x6	# 1878
	flw		f0, -176(x2)	# 1878
	flw		f1, -200(x2)	# 1878
	lw		x7, -148(x2)	# 1878
	lw		x27, -4(x2)	# 1878
	addi	x5, x7, 0
	sw		x1, -216(x2)	# 1878
	addi	x2, x2, -220	# 1878
	lw		x31, 0(x27)	# 1878
	jalr	x1, x31, 0	# 1878
	addi	x2, x2, 220	# 1878
	lw		x1, -216(x2)	# 1878
	lui		x4, %hi(l.7467)	# 1881
	ori		x4, x0, %lo(l.7467)	# 1881
	flw		f0, 0(x4)	# 1881
	flw		f1, -120(x2)	# 1881
	sw		x1, -216(x2)	# 1881
	addi	x2, x2, -220	# 1881
	jal		x1, fless.2480	# 1881
	addi	x2, x2, 220	# 1881
	lw		x1, -216(x2)	# 1881
	lw		x5, -144(x2)	# 1881
	beq		x4, x5, beq.13072	# 1881
	lw		x4, -140(x2)	# 1883
	lw		x6, -68(x2)	# 1883
	ble		x6, x4, ble.13074	# 1883
	addi	x6, x4, 1	# 1884
	lui		x7, -1	# 1884
	ori		x7, x0, -1	# 1884
	ori		x8, x0, 4	# 1884
	mul		x6, x6, x8	# 1884
	lw		x8, -156(x2)	# 1884
	add		x6, x8, x6	# 1884
	sw		x7, 0(x6)	# 1884
	jal		x0, ble_cont.13073	# 1883
ble.13074:
ble_cont.13073:
	lw		x6, -104(x2)	# 1887
	lw		x7, -168(x2)	# 1887
	beq		x7, x6, beq.13075	# 1887
	jalr	x0, x1, 0	# 1890
beq.13075:
	lui		x6, %hi(l.6125)	# 1888
	ori		x6, x0, %lo(l.6125)	# 1888
	flw		f0, 0(x6)	# 1888
	lw		x6, -164(x2)	# 1888
	lw		x27, -92(x2)	# 1888
	fsw		f0, -216(x2)	# 1888
	addi	x4, x6, 0
	sw		x1, -224(x2)	# 1888
	addi	x2, x2, -228	# 1888
	lw		x31, 0(x27)	# 1888
	jalr	x1, x31, 0	# 1888
	addi	x2, x2, 228	# 1888
	lw		x1, -224(x2)	# 1888
	flw		f1, -216(x2)	# 1888
	fsub	f0, f1, f0	# 1888
	flw		f1, -120(x2)	# 1888
	fmul	f0, f1, f0	# 1888
	lw		x4, -108(x2)	# 1889
	lw		x5, -140(x2)	# 1889
	add		x4, x5, x4	# 1889
	ori		x5, x0, 4	# 1889
	lw		x6, -144(x2)	# 1889
	mul		x5, x6, x5	# 1889
	lw		x6, 0(x2)	# 1889
	add		x5, x6, x5	# 1889
	flw		f1, 0(x5)	# 1889
	flw		f2, -40(x2)	# 1889
	fadd	f1, f2, f1	# 1889
	lw		x5, -148(x2)	# 1889
	lw		x6, -60(x2)	# 1889
	lw		x27, -32(x2)	# 1889
	lw		x31, 0(x27)	# 1889
	jalr	x0, x31, 0	# 1889
beq.13072:
	jalr	x0, x1, 0	# 1892
beq.13066:
	ori		x4, x0, 4	# 1897
	lw		x6, -140(x2)	# 1897
	mul		x4, x6, x4	# 1897
	lw		x7, -156(x2)	# 1897
	add		x4, x7, x4	# 1897
	lw		x7, -136(x2)	# 1897
	sw		x7, 0(x4)	# 1897
	beq		x6, x5, beq.13078	# 1899
	lw		x4, -148(x2)	# 1900
	lw		x6, -128(x2)	# 1900
	lw		x27, -132(x2)	# 1900
	addi	x5, x6, 0
	sw		x1, -224(x2)	# 1900
	addi	x2, x2, -228	# 1900
	lw		x31, 0(x27)	# 1900
	jalr	x1, x31, 0	# 1900
	addi	x2, x2, 228	# 1900
	lw		x1, -224(x2)	# 1900
	sw		x1, -224(x2)	# 1900
	addi	x2, x2, -228	# 1900
	jal		x1, fneg.2476	# 1900
	addi	x2, x2, 228	# 1900
	lw		x1, -224(x2)	# 1900
	fsw		f0, -224(x2)	# 1902
	sw		x1, -232(x2)	# 1902
	addi	x2, x2, -236	# 1902
	jal		x1, fispos.2472	# 1902
	addi	x2, x2, 236	# 1902
	lw		x1, -232(x2)	# 1902
	lw		x5, -144(x2)	# 1902
	beq		x4, x5, beq.13079	# 1902
	flw		f0, -224(x2)	# 1905
	sw		x1, -232(x2)	# 1905
	addi	x2, x2, -236	# 1905
	jal		x1, fsqr.2485	# 1905
	addi	x2, x2, 236	# 1905
	lw		x1, -232(x2)	# 1905
	flw		f1, -224(x2)	# 1905
	fmul	f0, f0, f1	# 1905
	flw		f1, -120(x2)	# 1905
	fmul	f0, f0, f1	# 1905
	ori		x4, x0, 4	# 1905
	lw		x5, -144(x2)	# 1905
	mul		x4, x5, x4	# 1905
	lw		x6, -116(x2)	# 1905
	add		x4, x6, x4	# 1905
	flw		f1, 0(x4)	# 1905
	fmul	f0, f0, f1	# 1905
	ori		x4, x0, 4	# 1906
	mul		x4, x5, x4	# 1906
	lw		x6, -112(x2)	# 1906
	add		x4, x6, x4	# 1906
	flw		f1, 0(x4)	# 1906
	fadd	f1, f1, f0	# 1906
	ori		x4, x0, 4	# 1906
	mul		x4, x5, x4	# 1906
	add		x4, x6, x4	# 1906
	fsw		f1, 0(x4)	# 1906
	ori		x4, x0, 4	# 1907
	lw		x5, -108(x2)	# 1907
	mul		x4, x5, x4	# 1907
	add		x4, x6, x4	# 1907
	flw		f1, 0(x4)	# 1907
	fadd	f1, f1, f0	# 1907
	ori		x4, x0, 4	# 1907
	mul		x4, x5, x4	# 1907
	add		x4, x6, x4	# 1907
	fsw		f1, 0(x4)	# 1907
	ori		x4, x0, 4	# 1908
	lw		x5, -104(x2)	# 1908
	mul		x4, x5, x4	# 1908
	add		x4, x6, x4	# 1908
	flw		f1, 0(x4)	# 1908
	fadd	f0, f1, f0	# 1908
	ori		x4, x0, 4	# 1908
	mul		x4, x5, x4	# 1908
	add		x4, x6, x4	# 1908
	fsw		f0, 0(x4)	# 1908
	jalr	x0, x1, 0	# 1908
beq.13079:
	jalr	x0, x1, 0	# 1910
beq.13078:
	jalr	x0, x1, 0	# 1911
trace_diffuse_ray.2877:
	lw		x5, 68(x27)	# 1927
	lw		x6, 64(x27)	# 1927
	lw		x7, 60(x27)	# 1927
	lw		x8, 56(x27)	# 1927
	lw		x9, 52(x27)	# 1927
	lw		x10, 48(x27)	# 1927
	lw		x11, 44(x27)	# 1927
	lw		x12, 40(x27)	# 1927
	lw		x13, 36(x27)	# 1927
	lw		x14, 32(x27)	# 1927
	lw		x15, 28(x27)	# 1927
	lw		x16, 24(x27)	# 1927
	lw		x17, 20(x27)	# 1927
	lw		x18, 16(x27)	# 1927
	lw		x19, 12(x27)	# 1927
	lw		x20, 8(x27)	# 1927
	flw		f1, 4(x27)	# 1927
	sw		x8, 0(x2)	# 1927
	sw		x19, -4(x2)	# 1927
	sw		x6, -8(x2)	# 1927
	sw		x12, -12(x2)	# 1927
	fsw		f0, -16(x2)	# 1927
	fsw		f1, -24(x2)	# 1927
	sw		x14, -32(x2)	# 1927
	sw		x13, -36(x2)	# 1927
	sw		x5, -40(x2)	# 1927
	sw		x9, -44(x2)	# 1927
	sw		x10, -48(x2)	# 1927
	sw		x16, -52(x2)	# 1927
	sw		x7, -56(x2)	# 1927
	sw		x18, -60(x2)	# 1927
	sw		x4, -64(x2)	# 1927
	sw		x11, -68(x2)	# 1927
	sw		x17, -72(x2)	# 1927
	sw		x20, -76(x2)	# 1927
	addi	x27, x15, 0
	sw		x1, -80(x2)	# 1927
	addi	x2, x2, -84	# 1927
	lw		x31, 0(x27)	# 1927
	jalr	x1, x31, 0	# 1927
	addi	x2, x2, 84	# 1927
	lw		x1, -80(x2)	# 1927
	lw		x5, -76(x2)	# 1927
	beq		x4, x5, beq.13083	# 1927
	ori		x4, x0, 4	# 1928
	mul		x4, x5, x4	# 1928
	lw		x6, -72(x2)	# 1928
	add		x4, x6, x4	# 1928
	lw		x4, 0(x4)	# 1928
	ori		x6, x0, 4	# 1928
	mul		x4, x4, x6	# 1928
	lw		x6, -68(x2)	# 1928
	add		x4, x6, x4	# 1928
	lw		x4, 0(x4)	# 1928
	lw		x6, -64(x2)	# 1929
	sw		x4, -80(x2)	# 1929
	addi	x4, x6, 0
	sw		x1, -84(x2)	# 1929
	addi	x2, x2, -88	# 1929
	jal		x1, d_vec.2651	# 1929
	addi	x2, x2, 88	# 1929
	lw		x1, -84(x2)	# 1929
	addi	x5, x4, 0	# 1929
	lw		x4, -80(x2)	# 1929
	lw		x27, -60(x2)	# 1929
	sw		x1, -84(x2)	# 1929
	addi	x2, x2, -88	# 1929
	lw		x31, 0(x27)	# 1929
	jalr	x1, x31, 0	# 1929
	addi	x2, x2, 88	# 1929
	lw		x1, -84(x2)	# 1929
	lw		x4, -80(x2)	# 1930
	lw		x5, -52(x2)	# 1930
	lw		x27, -56(x2)	# 1930
	sw		x1, -84(x2)	# 1930
	addi	x2, x2, -88	# 1930
	lw		x31, 0(x27)	# 1930
	jalr	x1, x31, 0	# 1930
	addi	x2, x2, 88	# 1930
	lw		x1, -84(x2)	# 1930
	ori		x4, x0, 4	# 1933
	lw		x5, -76(x2)	# 1933
	mul		x4, x5, x4	# 1933
	lw		x6, -48(x2)	# 1933
	add		x4, x6, x4	# 1933
	lw		x4, 0(x4)	# 1933
	lw		x27, -44(x2)	# 1933
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -84(x2)	# 1933
	addi	x2, x2, -88	# 1933
	lw		x31, 0(x27)	# 1933
	jalr	x1, x31, 0	# 1933
	addi	x2, x2, 88	# 1933
	lw		x1, -84(x2)	# 1933
	lw		x5, -76(x2)	# 1933
	beq		x4, x5, beq.13084	# 1933
	jalr	x0, x1, 0	# 1937
beq.13084:
	lw		x4, -36(x2)	# 1934
	lw		x6, -32(x2)	# 1934
	lw		x27, -40(x2)	# 1934
	addi	x5, x6, 0
	sw		x1, -84(x2)	# 1934
	addi	x2, x2, -88	# 1934
	lw		x31, 0(x27)	# 1934
	jalr	x1, x31, 0	# 1934
	addi	x2, x2, 88	# 1934
	lw		x1, -84(x2)	# 1934
	sw		x1, -84(x2)	# 1934
	addi	x2, x2, -88	# 1934
	jal		x1, fneg.2476	# 1934
	addi	x2, x2, 88	# 1934
	lw		x1, -84(x2)	# 1934
	fsw		f0, -88(x2)	# 1935
	sw		x1, -96(x2)	# 1935
	addi	x2, x2, -100	# 1935
	jal		x1, fispos.2472	# 1935
	addi	x2, x2, 100	# 1935
	lw		x1, -96(x2)	# 1935
	lw		x5, -76(x2)	# 1935
	beq		x4, x5, beq.13088	# 1935
	flw		f0, -88(x2)	# 1935
	jal		x0, beq_cont.13087	# 1935
beq.13088:
	flw		f0, -24(x2)	# 1935
beq_cont.13087:
	flw		f1, -16(x2)	# 1936
	fmul	f0, f1, f0	# 1936
	lw		x4, -80(x2)	# 1936
	lw		x27, -12(x2)	# 1936
	fsw		f0, -96(x2)	# 1936
	sw		x1, -104(x2)	# 1936
	addi	x2, x2, -108	# 1936
	lw		x31, 0(x27)	# 1936
	jalr	x1, x31, 0	# 1936
	addi	x2, x2, 108	# 1936
	lw		x1, -104(x2)	# 1936
	flw		f1, -96(x2)	# 1936
	fmul	f0, f1, f0	# 1936
	lw		x4, -4(x2)	# 1936
	lw		x5, 0(x2)	# 1936
	lw		x27, -8(x2)	# 1936
	lw		x31, 0(x27)	# 1936
	jalr	x0, x31, 0	# 1936
beq.13083:
	jalr	x0, x1, 0	# 1938
iter_trace_diffuse_rays.2880:
	lw		x8, 16(x27)	# 1944
	lw		x9, 12(x27)	# 1944
	lw		x10, 8(x27)	# 1944
	lw		x11, 4(x27)	# 1944
	ble		x11, x7, ble.13090	# 1944
	jalr	x0, x1, 0	# 1955
ble.13090:
	ori		x12, x0, 4	# 1945
	mul		x12, x7, x12	# 1945
	add		x12, x4, x12	# 1945
	lw		x12, 0(x12)	# 1945
	sw		x6, 0(x2)	# 1945
	sw		x27, -4(x2)	# 1945
	sw		x10, -8(x2)	# 1945
	sw		x9, -12(x2)	# 1945
	sw		x4, -16(x2)	# 1945
	sw		x7, -20(x2)	# 1945
	sw		x11, -24(x2)	# 1945
	sw		x5, -28(x2)	# 1945
	sw		x8, -32(x2)	# 1945
	addi	x4, x12, 0
	sw		x1, -36(x2)	# 1945
	addi	x2, x2, -40	# 1945
	jal		x1, d_vec.2651	# 1945
	addi	x2, x2, 40	# 1945
	lw		x1, -36(x2)	# 1945
	lw		x5, -28(x2)	# 1945
	lw		x27, -32(x2)	# 1945
	sw		x1, -36(x2)	# 1945
	addi	x2, x2, -40	# 1945
	lw		x31, 0(x27)	# 1945
	jalr	x1, x31, 0	# 1945
	addi	x2, x2, 40	# 1945
	lw		x1, -36(x2)	# 1945
	fsw		f0, -40(x2)	# 1949
	sw		x1, -48(x2)	# 1949
	addi	x2, x2, -52	# 1949
	jal		x1, fisneg.2474	# 1949
	addi	x2, x2, 52	# 1949
	lw		x1, -48(x2)	# 1949
	lw		x5, -24(x2)	# 1949
	beq		x4, x5, beq.13094	# 1949
	lw		x4, -20(x2)	# 1950
	addi	x5, x4, 1	# 1950
	ori		x6, x0, 4	# 1950
	mul		x5, x5, x6	# 1950
	lw		x6, -16(x2)	# 1950
	add		x5, x6, x5	# 1950
	lw		x5, 0(x5)	# 1950
	lui		x7, %hi(l.7515)	# 1950
	ori		x7, x0, %lo(l.7515)	# 1950
	flw		f0, 0(x7)	# 1950
	flw		f1, -40(x2)	# 1950
	fdiv	f0, f1, f0	# 1950
	lw		x27, -12(x2)	# 1950
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 1950
	addi	x2, x2, -52	# 1950
	lw		x31, 0(x27)	# 1950
	jalr	x1, x31, 0	# 1950
	addi	x2, x2, 52	# 1950
	lw		x1, -48(x2)	# 1950
	jal		x0, beq_cont.13093	# 1949
beq.13094:
	ori		x4, x0, 4	# 1952
	lw		x5, -20(x2)	# 1952
	mul		x4, x5, x4	# 1952
	lw		x6, -16(x2)	# 1952
	add		x4, x6, x4	# 1952
	lw		x4, 0(x4)	# 1952
	lui		x7, %hi(l.7520)	# 1952
	ori		x7, x0, %lo(l.7520)	# 1952
	flw		f0, 0(x7)	# 1952
	flw		f1, -40(x2)	# 1952
	fdiv	f0, f1, f0	# 1952
	lw		x27, -12(x2)	# 1952
	sw		x1, -48(x2)	# 1952
	addi	x2, x2, -52	# 1952
	lw		x31, 0(x27)	# 1952
	jalr	x1, x31, 0	# 1952
	addi	x2, x2, 52	# 1952
	lw		x1, -48(x2)	# 1952
beq_cont.13093:
	lw		x4, -8(x2)	# 1954
	lw		x5, -20(x2)	# 1954
	sub		x7, x5, x4	# 1954
	lw		x4, -16(x2)	# 1954
	lw		x5, -28(x2)	# 1954
	lw		x6, 0(x2)	# 1954
	lw		x27, -4(x2)	# 1954
	lw		x31, 0(x27)	# 1954
	jalr	x0, x31, 0	# 1954
trace_diffuse_rays.2885:
	lw		x7, 8(x27)	# 1960
	lw		x8, 4(x27)	# 1960
	sw		x6, 0(x2)	# 1960
	sw		x5, -4(x2)	# 1960
	sw		x4, -8(x2)	# 1960
	sw		x8, -12(x2)	# 1960
	addi	x4, x6, 0
	addi	x27, x7, 0
	sw		x1, -16(x2)	# 1960
	addi	x2, x2, -20	# 1960
	lw		x31, 0(x27)	# 1960
	jalr	x1, x31, 0	# 1960
	addi	x2, x2, 20	# 1960
	lw		x1, -16(x2)	# 1960
	ori		x7, x0, 118	# 1964
	lw		x4, -8(x2)	# 1964
	lw		x5, -4(x2)	# 1964
	lw		x6, 0(x2)	# 1964
	lw		x27, -12(x2)	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x0, x31, 0	# 1964
trace_diffuse_ray_80percent.2889:
	lw		x7, 24(x27)	# 1971
	lw		x8, 20(x27)	# 1971
	lw		x9, 16(x27)	# 1971
	lw		x10, 12(x27)	# 1971
	lw		x11, 8(x27)	# 1971
	lw		x12, 4(x27)	# 1971
	sw		x10, 0(x2)	# 1971
	sw		x9, -4(x2)	# 1971
	sw		x6, -8(x2)	# 1971
	sw		x5, -12(x2)	# 1971
	sw		x7, -16(x2)	# 1971
	sw		x8, -20(x2)	# 1971
	sw		x12, -24(x2)	# 1971
	sw		x4, -28(x2)	# 1971
	beq		x4, x11, beq.13096	# 1971
	addi	x11, x0, 0	# 1972
	ori		x13, x0, 4	# 1972
	mul		x11, x11, x13	# 1972
	add		x11, x8, x11	# 1972
	lw		x11, 0(x11)	# 1972
	addi	x4, x11, 0
	addi	x27, x7, 0
	sw		x1, -32(x2)	# 1972
	addi	x2, x2, -36	# 1972
	lw		x31, 0(x27)	# 1972
	jalr	x1, x31, 0	# 1972
	addi	x2, x2, 36	# 1972
	lw		x1, -32(x2)	# 1972
	jal		x0, beq_cont.13095	# 1971
beq.13096:
beq_cont.13095:
	lw		x4, -24(x2)	# 1975
	lw		x5, -28(x2)	# 1975
	beq		x5, x4, beq.13098	# 1975
	ori		x4, x0, 1	# 1976
	ori		x6, x0, 4	# 1976
	mul		x4, x4, x6	# 1976
	lw		x6, -20(x2)	# 1976
	add		x4, x6, x4	# 1976
	lw		x4, 0(x4)	# 1976
	lw		x7, -12(x2)	# 1976
	lw		x8, -8(x2)	# 1976
	lw		x27, -16(x2)	# 1976
	addi	x6, x8, 0
	addi	x5, x7, 0
	sw		x1, -32(x2)	# 1976
	addi	x2, x2, -36	# 1976
	lw		x31, 0(x27)	# 1976
	jalr	x1, x31, 0	# 1976
	addi	x2, x2, 36	# 1976
	lw		x1, -32(x2)	# 1976
	jal		x0, beq_cont.13097	# 1975
beq.13098:
beq_cont.13097:
	lw		x4, -4(x2)	# 1979
	lw		x5, -28(x2)	# 1979
	beq		x5, x4, beq.13100	# 1979
	ori		x4, x0, 2	# 1980
	ori		x6, x0, 4	# 1980
	mul		x4, x4, x6	# 1980
	lw		x6, -20(x2)	# 1980
	add		x4, x6, x4	# 1980
	lw		x4, 0(x4)	# 1980
	lw		x7, -12(x2)	# 1980
	lw		x8, -8(x2)	# 1980
	lw		x27, -16(x2)	# 1980
	addi	x6, x8, 0
	addi	x5, x7, 0
	sw		x1, -32(x2)	# 1980
	addi	x2, x2, -36	# 1980
	lw		x31, 0(x27)	# 1980
	jalr	x1, x31, 0	# 1980
	addi	x2, x2, 36	# 1980
	lw		x1, -32(x2)	# 1980
	jal		x0, beq_cont.13099	# 1979
beq.13100:
beq_cont.13099:
	lw		x4, 0(x2)	# 1983
	lw		x5, -28(x2)	# 1983
	beq		x5, x4, beq.13102	# 1983
	ori		x4, x0, 3	# 1984
	ori		x6, x0, 4	# 1984
	mul		x4, x4, x6	# 1984
	lw		x6, -20(x2)	# 1984
	add		x4, x6, x4	# 1984
	lw		x4, 0(x4)	# 1984
	lw		x7, -12(x2)	# 1984
	lw		x8, -8(x2)	# 1984
	lw		x27, -16(x2)	# 1984
	addi	x6, x8, 0
	addi	x5, x7, 0
	sw		x1, -32(x2)	# 1984
	addi	x2, x2, -36	# 1984
	lw		x31, 0(x27)	# 1984
	jalr	x1, x31, 0	# 1984
	addi	x2, x2, 36	# 1984
	lw		x1, -32(x2)	# 1984
	jal		x0, beq_cont.13101	# 1983
beq.13102:
beq_cont.13101:
	ori		x4, x0, 4	# 1987
	lw		x5, -28(x2)	# 1987
	beq		x5, x4, beq.13103	# 1987
	ori		x5, x0, 4	# 1988
	mul		x4, x4, x5	# 1988
	lw		x5, -20(x2)	# 1988
	add		x4, x5, x4	# 1988
	lw		x4, 0(x4)	# 1988
	lw		x5, -12(x2)	# 1988
	lw		x6, -8(x2)	# 1988
	lw		x27, -16(x2)	# 1988
	lw		x31, 0(x27)	# 1988
	jalr	x0, x31, 0	# 1988
beq.13103:
	jalr	x0, x1, 0	# 1989
calc_diffuse_using_1point.2893:
	lw		x6, 24(x27)	# 1997
	lw		x7, 20(x27)	# 1997
	lw		x8, 16(x27)	# 1997
	lw		x9, 12(x27)	# 1997
	lw		x10, 8(x27)	# 1997
	lw		x11, 4(x27)	# 1997
	sw		x9, 0(x2)	# 1997
	sw		x7, -4(x2)	# 1997
	sw		x8, -8(x2)	# 1997
	sw		x10, -12(x2)	# 1997
	sw		x11, -16(x2)	# 1997
	sw		x6, -20(x2)	# 1997
	sw		x5, -24(x2)	# 1997
	sw		x4, -28(x2)	# 1997
	sw		x1, -32(x2)	# 1997
	addi	x2, x2, -36	# 1997
	jal		x1, p_received_ray_20percent.2642	# 1997
	addi	x2, x2, 36	# 1997
	lw		x1, -32(x2)	# 1997
	lw		x5, -28(x2)	# 1998
	sw		x4, -32(x2)	# 1998
	addi	x4, x5, 0
	sw		x1, -36(x2)	# 1998
	addi	x2, x2, -40	# 1998
	jal		x1, p_nvectors.2649	# 1998
	addi	x2, x2, 40	# 1998
	lw		x1, -36(x2)	# 1998
	lw		x5, -28(x2)	# 1999
	sw		x4, -36(x2)	# 1999
	addi	x4, x5, 0
	sw		x1, -40(x2)	# 1999
	addi	x2, x2, -44	# 1999
	jal		x1, p_intersection_points.2634	# 1999
	addi	x2, x2, 44	# 1999
	lw		x1, -40(x2)	# 1999
	lw		x5, -28(x2)	# 2000
	sw		x4, -40(x2)	# 2000
	addi	x4, x5, 0
	sw		x1, -44(x2)	# 2000
	addi	x2, x2, -48	# 2000
	jal		x1, p_energy.2640	# 2000
	addi	x2, x2, 48	# 2000
	lw		x1, -44(x2)	# 2000
	ori		x5, x0, 4	# 2002
	lw		x6, -24(x2)	# 2002
	mul		x5, x6, x5	# 2002
	lw		x7, -32(x2)	# 2002
	add		x5, x7, x5	# 2002
	lw		x5, 0(x5)	# 2002
	lw		x7, -16(x2)	# 2002
	lw		x27, -20(x2)	# 2002
	sw		x4, -44(x2)	# 2002
	addi	x4, x7, 0
	sw		x1, -48(x2)	# 2002
	addi	x2, x2, -52	# 2002
	lw		x31, 0(x27)	# 2002
	jalr	x1, x31, 0	# 2002
	addi	x2, x2, 52	# 2002
	lw		x1, -48(x2)	# 2002
	lw		x4, -28(x2)	# 2004
	lw		x27, -12(x2)	# 2004
	sw		x1, -48(x2)	# 2004
	addi	x2, x2, -52	# 2004
	lw		x31, 0(x27)	# 2004
	jalr	x1, x31, 0	# 2004
	addi	x2, x2, 52	# 2004
	lw		x1, -48(x2)	# 2004
	ori		x5, x0, 4	# 2005
	lw		x6, -24(x2)	# 2005
	mul		x5, x6, x5	# 2005
	lw		x7, -36(x2)	# 2005
	add		x5, x7, x5	# 2005
	lw		x5, 0(x5)	# 2005
	ori		x7, x0, 4	# 2006
	mul		x7, x6, x7	# 2006
	lw		x8, -40(x2)	# 2006
	add		x7, x8, x7	# 2006
	lw		x7, 0(x7)	# 2006
	lw		x27, -8(x2)	# 2003
	addi	x6, x7, 0
	sw		x1, -48(x2)	# 2003
	addi	x2, x2, -52	# 2003
	lw		x31, 0(x27)	# 2003
	jalr	x1, x31, 0	# 2003
	addi	x2, x2, 52	# 2003
	lw		x1, -48(x2)	# 2003
	ori		x4, x0, 4	# 2007
	lw		x5, -24(x2)	# 2007
	mul		x4, x5, x4	# 2007
	lw		x5, -44(x2)	# 2007
	add		x4, x5, x4	# 2007
	lw		x5, 0(x4)	# 2007
	lw		x4, 0(x2)	# 2007
	lw		x6, -16(x2)	# 2007
	lw		x27, -4(x2)	# 2007
	lw		x31, 0(x27)	# 2007
	jalr	x0, x31, 0	# 2007
calc_diffuse_using_5points.2896:
	lw		x9, 24(x27)	# 2016
	lw		x10, 20(x27)	# 2016
	lw		x11, 16(x27)	# 2016
	lw		x12, 12(x27)	# 2016
	lw		x13, 8(x27)	# 2016
	lw		x14, 4(x27)	# 2016
	ori		x15, x0, 4	# 2016
	mul		x15, x4, x15	# 2016
	add		x5, x5, x15	# 2016
	lw		x5, 0(x5)	# 2016
	sw		x12, 0(x2)	# 2016
	sw		x11, -4(x2)	# 2016
	sw		x10, -8(x2)	# 2016
	sw		x13, -12(x2)	# 2016
	sw		x9, -16(x2)	# 2016
	sw		x8, -20(x2)	# 2016
	sw		x7, -24(x2)	# 2016
	sw		x6, -28(x2)	# 2016
	sw		x14, -32(x2)	# 2016
	sw		x4, -36(x2)	# 2016
	addi	x4, x5, 0
	sw		x1, -40(x2)	# 2016
	addi	x2, x2, -44	# 2016
	jal		x1, p_received_ray_20percent.2642	# 2016
	addi	x2, x2, 44	# 2016
	lw		x1, -40(x2)	# 2016
	lw		x5, -32(x2)	# 2017
	lw		x6, -36(x2)	# 2017
	sub		x7, x6, x5	# 2017
	ori		x8, x0, 4	# 2017
	mul		x7, x7, x8	# 2017
	lw		x8, -28(x2)	# 2017
	add		x7, x8, x7	# 2017
	lw		x7, 0(x7)	# 2017
	sw		x4, -40(x2)	# 2017
	addi	x4, x7, 0
	sw		x1, -44(x2)	# 2017
	addi	x2, x2, -48	# 2017
	jal		x1, p_received_ray_20percent.2642	# 2017
	addi	x2, x2, 48	# 2017
	lw		x1, -44(x2)	# 2017
	ori		x5, x0, 4	# 2018
	lw		x6, -36(x2)	# 2018
	mul		x5, x6, x5	# 2018
	lw		x7, -28(x2)	# 2018
	add		x5, x7, x5	# 2018
	lw		x5, 0(x5)	# 2018
	sw		x4, -44(x2)	# 2018
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 2018
	addi	x2, x2, -52	# 2018
	jal		x1, p_received_ray_20percent.2642	# 2018
	addi	x2, x2, 52	# 2018
	lw		x1, -48(x2)	# 2018
	lw		x5, -32(x2)	# 2019
	lw		x6, -36(x2)	# 2019
	add		x5, x6, x5	# 2019
	ori		x7, x0, 4	# 2019
	mul		x5, x5, x7	# 2019
	lw		x7, -28(x2)	# 2019
	add		x5, x7, x5	# 2019
	lw		x5, 0(x5)	# 2019
	sw		x4, -48(x2)	# 2019
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 2019
	addi	x2, x2, -56	# 2019
	jal		x1, p_received_ray_20percent.2642	# 2019
	addi	x2, x2, 56	# 2019
	lw		x1, -52(x2)	# 2019
	ori		x5, x0, 4	# 2020
	lw		x6, -36(x2)	# 2020
	mul		x5, x6, x5	# 2020
	lw		x7, -24(x2)	# 2020
	add		x5, x7, x5	# 2020
	lw		x5, 0(x5)	# 2020
	sw		x4, -52(x2)	# 2020
	addi	x4, x5, 0
	sw		x1, -56(x2)	# 2020
	addi	x2, x2, -60	# 2020
	jal		x1, p_received_ray_20percent.2642	# 2020
	addi	x2, x2, 60	# 2020
	lw		x1, -56(x2)	# 2020
	ori		x5, x0, 4	# 2022
	lw		x6, -20(x2)	# 2022
	mul		x5, x6, x5	# 2022
	lw		x7, -40(x2)	# 2022
	add		x5, x7, x5	# 2022
	lw		x5, 0(x5)	# 2022
	lw		x7, -12(x2)	# 2022
	lw		x27, -16(x2)	# 2022
	sw		x4, -56(x2)	# 2022
	addi	x4, x7, 0
	sw		x1, -60(x2)	# 2022
	addi	x2, x2, -64	# 2022
	lw		x31, 0(x27)	# 2022
	jalr	x1, x31, 0	# 2022
	addi	x2, x2, 64	# 2022
	lw		x1, -60(x2)	# 2022
	ori		x4, x0, 4	# 2023
	lw		x5, -20(x2)	# 2023
	mul		x4, x5, x4	# 2023
	lw		x6, -44(x2)	# 2023
	add		x4, x6, x4	# 2023
	lw		x4, 0(x4)	# 2023
	lw		x6, -12(x2)	# 2023
	lw		x27, -8(x2)	# 2023
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -60(x2)	# 2023
	addi	x2, x2, -64	# 2023
	lw		x31, 0(x27)	# 2023
	jalr	x1, x31, 0	# 2023
	addi	x2, x2, 64	# 2023
	lw		x1, -60(x2)	# 2023
	ori		x4, x0, 4	# 2024
	lw		x5, -20(x2)	# 2024
	mul		x4, x5, x4	# 2024
	lw		x6, -48(x2)	# 2024
	add		x4, x6, x4	# 2024
	lw		x4, 0(x4)	# 2024
	lw		x6, -12(x2)	# 2024
	lw		x27, -8(x2)	# 2024
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -60(x2)	# 2024
	addi	x2, x2, -64	# 2024
	lw		x31, 0(x27)	# 2024
	jalr	x1, x31, 0	# 2024
	addi	x2, x2, 64	# 2024
	lw		x1, -60(x2)	# 2024
	ori		x4, x0, 4	# 2025
	lw		x5, -20(x2)	# 2025
	mul		x4, x5, x4	# 2025
	lw		x6, -52(x2)	# 2025
	add		x4, x6, x4	# 2025
	lw		x4, 0(x4)	# 2025
	lw		x6, -12(x2)	# 2025
	lw		x27, -8(x2)	# 2025
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -60(x2)	# 2025
	addi	x2, x2, -64	# 2025
	lw		x31, 0(x27)	# 2025
	jalr	x1, x31, 0	# 2025
	addi	x2, x2, 64	# 2025
	lw		x1, -60(x2)	# 2025
	ori		x4, x0, 4	# 2026
	lw		x5, -20(x2)	# 2026
	mul		x4, x5, x4	# 2026
	lw		x6, -56(x2)	# 2026
	add		x4, x6, x4	# 2026
	lw		x4, 0(x4)	# 2026
	lw		x6, -12(x2)	# 2026
	lw		x27, -8(x2)	# 2026
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -60(x2)	# 2026
	addi	x2, x2, -64	# 2026
	lw		x31, 0(x27)	# 2026
	jalr	x1, x31, 0	# 2026
	addi	x2, x2, 64	# 2026
	lw		x1, -60(x2)	# 2026
	ori		x4, x0, 4	# 2028
	lw		x5, -36(x2)	# 2028
	mul		x4, x5, x4	# 2028
	lw		x5, -28(x2)	# 2028
	add		x4, x5, x4	# 2028
	lw		x4, 0(x4)	# 2028
	sw		x1, -60(x2)	# 2028
	addi	x2, x2, -64	# 2028
	jal		x1, p_energy.2640	# 2028
	addi	x2, x2, 64	# 2028
	lw		x1, -60(x2)	# 2028
	ori		x5, x0, 4	# 2029
	lw		x6, -20(x2)	# 2029
	mul		x5, x6, x5	# 2029
	add		x4, x4, x5	# 2029
	lw		x5, 0(x4)	# 2029
	lw		x4, 0(x2)	# 2029
	lw		x6, -12(x2)	# 2029
	lw		x27, -4(x2)	# 2029
	lw		x31, 0(x27)	# 2029
	jalr	x0, x31, 0	# 2029
do_without_neighbors.2902:
	lw		x6, 12(x27)	# 2035
	lw		x7, 8(x27)	# 2035
	lw		x8, 4(x27)	# 2035
	ori		x9, x0, 4	# 2035
	ble		x5, x9, ble.13105	# 2035
	jalr	x0, x1, 0	# 2045
ble.13105:
	sw		x27, 0(x2)	# 2037
	sw		x8, -4(x2)	# 2037
	sw		x6, -8(x2)	# 2037
	sw		x4, -12(x2)	# 2037
	sw		x7, -16(x2)	# 2037
	sw		x5, -20(x2)	# 2037
	sw		x1, -24(x2)	# 2037
	addi	x2, x2, -28	# 2037
	jal		x1, p_surface_ids.2636	# 2037
	addi	x2, x2, 28	# 2037
	lw		x1, -24(x2)	# 2037
	ori		x5, x0, 4	# 2038
	lw		x6, -20(x2)	# 2038
	mul		x5, x6, x5	# 2038
	add		x4, x4, x5	# 2038
	lw		x4, 0(x4)	# 2038
	lw		x5, -16(x2)	# 2038
	ble		x5, x4, ble.13107	# 2038
	jalr	x0, x1, 0	# 2044
ble.13107:
	lw		x4, -12(x2)	# 2039
	sw		x1, -24(x2)	# 2039
	addi	x2, x2, -28	# 2039
	jal		x1, p_calc_diffuse.2638	# 2039
	addi	x2, x2, 28	# 2039
	lw		x1, -24(x2)	# 2039
	ori		x5, x0, 4	# 2040
	lw		x6, -20(x2)	# 2040
	mul		x5, x6, x5	# 2040
	add		x4, x4, x5	# 2040
	lw		x4, 0(x4)	# 2040
	lw		x5, -16(x2)	# 2040
	beq		x4, x5, beq.13110	# 2040
	lw		x4, -12(x2)	# 2041
	lw		x27, -8(x2)	# 2041
	addi	x5, x6, 0
	sw		x1, -24(x2)	# 2041
	addi	x2, x2, -28	# 2041
	lw		x31, 0(x27)	# 2041
	jalr	x1, x31, 0	# 2041
	addi	x2, x2, 28	# 2041
	lw		x1, -24(x2)	# 2041
	jal		x0, beq_cont.13109	# 2040
beq.13110:
beq_cont.13109:
	lw		x4, -4(x2)	# 2043
	lw		x5, -20(x2)	# 2043
	add		x5, x5, x4	# 2043
	lw		x4, -12(x2)	# 2043
	lw		x27, 0(x2)	# 2043
	lw		x31, 0(x27)	# 2043
	jalr	x0, x31, 0	# 2043
neighbors_exist.2905:
	lw		x6, 12(x27)	# 2050
	lw		x7, 8(x27)	# 2050
	lw		x8, 4(x27)	# 2050
	ori		x9, x0, 4	# 2050
	mul		x9, x8, x9	# 2050
	add		x9, x6, x9	# 2050
	lw		x9, 0(x9)	# 2050
	add		x10, x5, x8	# 2050
	ble		x9, x10, ble.13111	# 2050
	ble		x5, x7, ble.13112	# 2051
	ori		x5, x0, 4	# 2052
	mul		x5, x7, x5	# 2052
	add		x5, x6, x5	# 2052
	lw		x5, 0(x5)	# 2052
	add		x6, x4, x8	# 2052
	ble		x5, x6, ble.13113	# 2052
	ble		x4, x7, ble.13114	# 2053
	ori		x4, x0, 1	# 2054
	jalr	x0, x1, 0	# 2054
ble.13114:
	addi	x4, x0, 0	# 2055
	jalr	x0, x1, 0	# 2055
ble.13113:
	addi	x4, x0, 0	# 2056
	jalr	x0, x1, 0	# 2056
ble.13112:
	addi	x4, x0, 0	# 2057
	jalr	x0, x1, 0	# 2057
ble.13111:
	addi	x4, x0, 0	# 2058
	jalr	x0, x1, 0	# 2058
get_surface_id.2909:
	sw		x5, 0(x2)	# 2062
	sw		x1, -4(x2)	# 2062
	addi	x2, x2, -8	# 2062
	jal		x1, p_surface_ids.2636	# 2062
	addi	x2, x2, 8	# 2062
	lw		x1, -4(x2)	# 2062
	ori		x5, x0, 4	# 2063
	lw		x6, 0(x2)	# 2063
	mul		x5, x6, x5	# 2063
	add		x4, x4, x5	# 2063
	lw		x4, 0(x4)	# 2063
	jalr	x0, x1, 0	# 2063
neighbors_are_available.2912:
	lw		x9, 4(x27)	# 2069
	ori		x10, x0, 4	# 2069
	mul		x10, x4, x10	# 2069
	add		x10, x6, x10	# 2069
	lw		x10, 0(x10)	# 2069
	sw		x6, 0(x2)	# 2069
	sw		x9, -4(x2)	# 2069
	sw		x7, -8(x2)	# 2069
	sw		x8, -12(x2)	# 2069
	sw		x5, -16(x2)	# 2069
	sw		x4, -20(x2)	# 2069
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -24(x2)	# 2069
	addi	x2, x2, -28	# 2069
	jal		x1, get_surface_id.2909	# 2069
	addi	x2, x2, 28	# 2069
	lw		x1, -24(x2)	# 2069
	ori		x5, x0, 4	# 2071
	lw		x6, -20(x2)	# 2071
	mul		x5, x6, x5	# 2071
	lw		x7, -16(x2)	# 2071
	add		x5, x7, x5	# 2071
	lw		x5, 0(x5)	# 2071
	lw		x7, -12(x2)	# 2071
	sw		x4, -24(x2)	# 2071
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -28(x2)	# 2071
	addi	x2, x2, -32	# 2071
	jal		x1, get_surface_id.2909	# 2071
	addi	x2, x2, 32	# 2071
	lw		x1, -28(x2)	# 2071
	lw		x5, -24(x2)	# 2071
	beq		x4, x5, beq.13115	# 2071
	addi	x4, x0, 0	# 2079
	jalr	x0, x1, 0	# 2079
beq.13115:
	ori		x4, x0, 4	# 2072
	lw		x6, -20(x2)	# 2072
	mul		x4, x6, x4	# 2072
	lw		x7, -8(x2)	# 2072
	add		x4, x7, x4	# 2072
	lw		x4, 0(x4)	# 2072
	lw		x7, -12(x2)	# 2072
	addi	x5, x7, 0
	sw		x1, -28(x2)	# 2072
	addi	x2, x2, -32	# 2072
	jal		x1, get_surface_id.2909	# 2072
	addi	x2, x2, 32	# 2072
	lw		x1, -28(x2)	# 2072
	lw		x5, -24(x2)	# 2072
	beq		x4, x5, beq.13116	# 2072
	addi	x4, x0, 0	# 2078
	jalr	x0, x1, 0	# 2078
beq.13116:
	lw		x4, -4(x2)	# 2073
	lw		x6, -20(x2)	# 2073
	sub		x7, x6, x4	# 2073
	ori		x8, x0, 4	# 2073
	mul		x7, x7, x8	# 2073
	lw		x8, 0(x2)	# 2073
	add		x7, x8, x7	# 2073
	lw		x7, 0(x7)	# 2073
	lw		x9, -12(x2)	# 2073
	addi	x5, x9, 0
	addi	x4, x7, 0
	sw		x1, -28(x2)	# 2073
	addi	x2, x2, -32	# 2073
	jal		x1, get_surface_id.2909	# 2073
	addi	x2, x2, 32	# 2073
	lw		x1, -28(x2)	# 2073
	lw		x5, -24(x2)	# 2073
	beq		x4, x5, beq.13117	# 2073
	addi	x4, x0, 0	# 2077
	jalr	x0, x1, 0	# 2077
beq.13117:
	lw		x4, -4(x2)	# 2074
	lw		x6, -20(x2)	# 2074
	add		x4, x6, x4	# 2074
	ori		x6, x0, 4	# 2074
	mul		x4, x4, x6	# 2074
	lw		x6, 0(x2)	# 2074
	add		x4, x6, x4	# 2074
	lw		x4, 0(x4)	# 2074
	lw		x6, -12(x2)	# 2074
	addi	x5, x6, 0
	sw		x1, -28(x2)	# 2074
	addi	x2, x2, -32	# 2074
	jal		x1, get_surface_id.2909	# 2074
	addi	x2, x2, 32	# 2074
	lw		x1, -28(x2)	# 2074
	lw		x5, -24(x2)	# 2074
	beq		x4, x5, beq.13118	# 2074
	addi	x4, x0, 0	# 2076
	jalr	x0, x1, 0	# 2076
beq.13118:
	ori		x4, x0, 1	# 2075
	jalr	x0, x1, 0	# 2075
try_exploit_neighbors.2918:
	lw		x10, 20(x27)	# 2087
	lw		x11, 16(x27)	# 2087
	lw		x12, 12(x27)	# 2087
	lw		x13, 8(x27)	# 2087
	lw		x14, 4(x27)	# 2087
	ori		x15, x0, 4	# 2087
	mul		x15, x4, x15	# 2087
	add		x15, x7, x15	# 2087
	lw		x15, 0(x15)	# 2087
	ori		x16, x0, 4	# 2088
	ble		x9, x16, ble.13119	# 2088
	jalr	x0, x1, 0	# 2107
ble.13119:
	sw		x5, 0(x2)	# 2091
	sw		x27, -4(x2)	# 2091
	sw		x14, -8(x2)	# 2091
	sw		x12, -12(x2)	# 2091
	sw		x15, -16(x2)	# 2091
	sw		x11, -20(x2)	# 2091
	sw		x9, -24(x2)	# 2091
	sw		x8, -28(x2)	# 2091
	sw		x7, -32(x2)	# 2091
	sw		x6, -36(x2)	# 2091
	sw		x4, -40(x2)	# 2091
	sw		x10, -44(x2)	# 2091
	sw		x13, -48(x2)	# 2091
	addi	x5, x9, 0
	addi	x4, x15, 0
	sw		x1, -52(x2)	# 2091
	addi	x2, x2, -56	# 2091
	jal		x1, get_surface_id.2909	# 2091
	addi	x2, x2, 56	# 2091
	lw		x1, -52(x2)	# 2091
	lw		x5, -48(x2)	# 2091
	ble		x5, x4, ble.13121	# 2091
	jalr	x0, x1, 0	# 2106
ble.13121:
	lw		x4, -40(x2)	# 2093
	lw		x6, -36(x2)	# 2093
	lw		x7, -32(x2)	# 2093
	lw		x8, -28(x2)	# 2093
	lw		x9, -24(x2)	# 2093
	lw		x27, -44(x2)	# 2093
	addi	x5, x6, 0
	addi	x6, x7, 0
	addi	x7, x8, 0
	addi	x8, x9, 0
	sw		x1, -52(x2)	# 2093
	addi	x2, x2, -56	# 2093
	lw		x31, 0(x27)	# 2093
	jalr	x1, x31, 0	# 2093
	addi	x2, x2, 56	# 2093
	lw		x1, -52(x2)	# 2093
	lw		x5, -48(x2)	# 2093
	beq		x4, x5, beq.13123	# 2093
	lw		x4, -16(x2)	# 2096
	sw		x1, -52(x2)	# 2096
	addi	x2, x2, -56	# 2096
	jal		x1, p_calc_diffuse.2638	# 2096
	addi	x2, x2, 56	# 2096
	lw		x1, -52(x2)	# 2096
	ori		x5, x0, 4	# 2097
	lw		x8, -24(x2)	# 2097
	mul		x5, x8, x5	# 2097
	add		x4, x4, x5	# 2097
	lw		x4, 0(x4)	# 2097
	lw		x5, -48(x2)	# 2097
	beq		x4, x5, beq.13125	# 2097
	lw		x4, -40(x2)	# 2098
	lw		x5, -36(x2)	# 2098
	lw		x6, -32(x2)	# 2098
	lw		x7, -28(x2)	# 2098
	lw		x27, -12(x2)	# 2098
	sw		x1, -52(x2)	# 2098
	addi	x2, x2, -56	# 2098
	lw		x31, 0(x27)	# 2098
	jalr	x1, x31, 0	# 2098
	addi	x2, x2, 56	# 2098
	lw		x1, -52(x2)	# 2098
	jal		x0, beq_cont.13124	# 2097
beq.13125:
beq_cont.13124:
	lw		x4, -8(x2)	# 2102
	lw		x5, -24(x2)	# 2102
	add		x9, x5, x4	# 2102
	lw		x4, -40(x2)	# 2102
	lw		x5, 0(x2)	# 2102
	lw		x6, -36(x2)	# 2102
	lw		x7, -32(x2)	# 2102
	lw		x8, -28(x2)	# 2102
	lw		x27, -4(x2)	# 2102
	lw		x31, 0(x27)	# 2102
	jalr	x0, x31, 0	# 2102
beq.13123:
	ori		x4, x0, 4	# 2105
	lw		x5, -40(x2)	# 2105
	mul		x4, x5, x4	# 2105
	lw		x5, -32(x2)	# 2105
	add		x4, x5, x4	# 2105
	lw		x4, 0(x4)	# 2105
	lw		x5, -24(x2)	# 2105
	lw		x27, -20(x2)	# 2105
	lw		x31, 0(x27)	# 2105
	jalr	x0, x31, 0	# 2105
write_ppm_header.2925:
	lw		x5, 12(x27)	# 2115
	lw		x6, 8(x27)	# 2115
	lw		x7, 4(x27)	# 2115
	ori		x8, x0, 80	# 2115
	sw		x7, 0(x2)	# 2115
	sw		x5, -4(x2)	# 2115
	sw		x6, -8(x2)	# 2115
	sw		x4, -12(x2)	# 2115
	addi	x4, x8, 0
	sw		x1, -16(x2)	# 2115
	addi	x2, x2, -20	# 2115
	jal		x1, min_caml_print_char	# 2115
	addi	x2, x2, 20	# 2115
	lw		x1, -16(x2)	# 2115
	lw		x4, -12(x2)	# 2116
	addi	x4, x4, 48	# 2116
	sw		x1, -16(x2)	# 2116
	addi	x2, x2, -20	# 2116
	jal		x1, min_caml_print_char	# 2116
	addi	x2, x2, 20	# 2116
	lw		x1, -16(x2)	# 2116
	ori		x4, x0, 10	# 2117
	sw		x4, -16(x2)	# 2117
	sw		x1, -20(x2)	# 2117
	addi	x2, x2, -24	# 2117
	jal		x1, min_caml_print_char	# 2117
	addi	x2, x2, 24	# 2117
	lw		x1, -20(x2)	# 2117
	ori		x4, x0, 4	# 2118
	lw		x5, -8(x2)	# 2118
	mul		x4, x5, x4	# 2118
	lw		x5, -4(x2)	# 2118
	add		x4, x5, x4	# 2118
	lw		x4, 0(x4)	# 2118
	sw		x1, -20(x2)	# 2118
	addi	x2, x2, -24	# 2118
	jal		x1, min_caml_print_int	# 2118
	addi	x2, x2, 24	# 2118
	lw		x1, -20(x2)	# 2118
	ori		x4, x0, 32	# 2119
	sw		x4, -20(x2)	# 2119
	sw		x1, -24(x2)	# 2119
	addi	x2, x2, -28	# 2119
	jal		x1, min_caml_print_char	# 2119
	addi	x2, x2, 28	# 2119
	lw		x1, -24(x2)	# 2119
	ori		x4, x0, 4	# 2120
	lw		x5, 0(x2)	# 2120
	mul		x4, x5, x4	# 2120
	lw		x5, -4(x2)	# 2120
	add		x4, x5, x4	# 2120
	lw		x4, 0(x4)	# 2120
	sw		x1, -24(x2)	# 2120
	addi	x2, x2, -28	# 2120
	jal		x1, min_caml_print_int	# 2120
	addi	x2, x2, 28	# 2120
	lw		x1, -24(x2)	# 2120
	lw		x4, -20(x2)	# 2121
	sw		x1, -24(x2)	# 2121
	addi	x2, x2, -28	# 2121
	jal		x1, min_caml_print_char	# 2121
	addi	x2, x2, 28	# 2121
	lw		x1, -24(x2)	# 2121
	ori		x4, x0, 255	# 2122
	sw		x1, -24(x2)	# 2122
	addi	x2, x2, -28	# 2122
	jal		x1, min_caml_print_int	# 2122
	addi	x2, x2, 28	# 2122
	lw		x1, -24(x2)	# 2122
	lw		x4, -16(x2)	# 2123
	jal		x0, min_caml_print_char	# 2123
write_rgb_element_int.2927:
	lw		x4, 4(x27)	# 2128
	sw		x4, 0(x2)	# 2128
	sw		x1, -4(x2)	# 2128
	addi	x2, x2, -8	# 2128
	jal		x1, int_of_float.2487	# 2128
	addi	x2, x2, 8	# 2128
	lw		x1, -4(x2)	# 2128
	ori		x5, x0, 255	# 2129
	ble		x4, x5, ble.13127	# 2129
	ori		x4, x0, 255	# 2129
	jal		x0, ble_cont.13126	# 2129
ble.13127:
	lw		x5, 0(x2)	# 2129
	ble		x5, x4, ble.13129	# 2129
	addi	x4, x0, 0	# 2129
	jal		x0, ble_cont.13128	# 2129
ble.13129:
ble_cont.13128:
ble_cont.13126:
	jal		x0, min_caml_print_int	# 2130
write_rgb_element_char.2929:
	lw		x4, 4(x27)	# 2134
	sw		x4, 0(x2)	# 2134
	sw		x1, -4(x2)	# 2134
	addi	x2, x2, -8	# 2134
	jal		x1, int_of_float.2487	# 2134
	addi	x2, x2, 8	# 2134
	lw		x1, -4(x2)	# 2134
	ori		x5, x0, 255	# 2135
	ble		x4, x5, ble.13131	# 2135
	ori		x4, x0, 255	# 2135
	jal		x0, ble_cont.13130	# 2135
ble.13131:
	lw		x5, 0(x2)	# 2135
	ble		x5, x4, ble.13133	# 2135
	addi	x4, x0, 0	# 2135
	jal		x0, ble_cont.13132	# 2135
ble.13133:
ble_cont.13132:
ble_cont.13130:
	jal		x0, min_caml_print_char	# 2136
write_rgb.2931:
	lw		x5, 28(x27)	# 2140
	lw		x6, 24(x27)	# 2140
	lw		x7, 20(x27)	# 2140
	lw		x8, 16(x27)	# 2140
	lw		x9, 12(x27)	# 2140
	lw		x10, 8(x27)	# 2140
	lw		x11, 4(x27)	# 2140
	beq		x4, x9, beq.13134	# 2140
	ori		x4, x0, 4	# 2148
	mul		x4, x10, x4	# 2148
	add		x4, x7, x4	# 2148
	flw		f0, 0(x4)	# 2148
	sw		x8, 0(x2)	# 2148
	sw		x6, -4(x2)	# 2148
	sw		x7, -8(x2)	# 2148
	sw		x11, -12(x2)	# 2148
	addi	x27, x6, 0
	sw		x1, -16(x2)	# 2148
	addi	x2, x2, -20	# 2148
	lw		x31, 0(x27)	# 2148
	jalr	x1, x31, 0	# 2148
	addi	x2, x2, 20	# 2148
	lw		x1, -16(x2)	# 2148
	ori		x4, x0, 4	# 2149
	lw		x5, -12(x2)	# 2149
	mul		x4, x5, x4	# 2149
	lw		x5, -8(x2)	# 2149
	add		x4, x5, x4	# 2149
	flw		f0, 0(x4)	# 2149
	lw		x27, -4(x2)	# 2149
	sw		x1, -16(x2)	# 2149
	addi	x2, x2, -20	# 2149
	lw		x31, 0(x27)	# 2149
	jalr	x1, x31, 0	# 2149
	addi	x2, x2, 20	# 2149
	lw		x1, -16(x2)	# 2149
	ori		x4, x0, 4	# 2150
	lw		x5, 0(x2)	# 2150
	mul		x4, x5, x4	# 2150
	lw		x5, -8(x2)	# 2150
	add		x4, x5, x4	# 2150
	flw		f0, 0(x4)	# 2150
	lw		x27, -4(x2)	# 2150
	lw		x31, 0(x27)	# 2150
	jalr	x0, x31, 0	# 2150
beq.13134:
	ori		x4, x0, 4	# 2141
	mul		x4, x10, x4	# 2141
	add		x4, x7, x4	# 2141
	flw		f0, 0(x4)	# 2141
	sw		x8, 0(x2)	# 2141
	sw		x5, -16(x2)	# 2141
	sw		x7, -8(x2)	# 2141
	sw		x11, -12(x2)	# 2141
	addi	x27, x5, 0
	sw		x1, -20(x2)	# 2141
	addi	x2, x2, -24	# 2141
	lw		x31, 0(x27)	# 2141
	jalr	x1, x31, 0	# 2141
	addi	x2, x2, 24	# 2141
	lw		x1, -20(x2)	# 2141
	ori		x4, x0, 32	# 2142
	sw		x4, -20(x2)	# 2142
	sw		x1, -24(x2)	# 2142
	addi	x2, x2, -28	# 2142
	jal		x1, min_caml_print_char	# 2142
	addi	x2, x2, 28	# 2142
	lw		x1, -24(x2)	# 2142
	ori		x4, x0, 4	# 2143
	lw		x5, -12(x2)	# 2143
	mul		x4, x5, x4	# 2143
	lw		x5, -8(x2)	# 2143
	add		x4, x5, x4	# 2143
	flw		f0, 0(x4)	# 2143
	lw		x27, -16(x2)	# 2143
	sw		x1, -24(x2)	# 2143
	addi	x2, x2, -28	# 2143
	lw		x31, 0(x27)	# 2143
	jalr	x1, x31, 0	# 2143
	addi	x2, x2, 28	# 2143
	lw		x1, -24(x2)	# 2143
	lw		x4, -20(x2)	# 2144
	sw		x1, -24(x2)	# 2144
	addi	x2, x2, -28	# 2144
	jal		x1, min_caml_print_char	# 2144
	addi	x2, x2, 28	# 2144
	lw		x1, -24(x2)	# 2144
	ori		x4, x0, 4	# 2145
	lw		x5, 0(x2)	# 2145
	mul		x4, x5, x4	# 2145
	lw		x5, -8(x2)	# 2145
	add		x4, x5, x4	# 2145
	flw		f0, 0(x4)	# 2145
	lw		x27, -16(x2)	# 2145
	sw		x1, -24(x2)	# 2145
	addi	x2, x2, -28	# 2145
	lw		x31, 0(x27)	# 2145
	jalr	x1, x31, 0	# 2145
	addi	x2, x2, 28	# 2145
	lw		x1, -24(x2)	# 2145
	ori		x4, x0, 10	# 2146
	jal		x0, min_caml_print_char	# 2146
pretrace_diffuse_rays.2933:
	lw		x6, 32(x27)	# 2163
	lw		x7, 28(x27)	# 2163
	lw		x8, 24(x27)	# 2163
	lw		x9, 20(x27)	# 2163
	lw		x10, 16(x27)	# 2163
	lw		x11, 12(x27)	# 2163
	lw		x12, 8(x27)	# 2163
	lw		x13, 4(x27)	# 2163
	ori		x14, x0, 4	# 2163
	ble		x5, x14, ble.13135	# 2163
	jalr	x0, x1, 0	# 2187
ble.13135:
	sw		x27, 0(x2)	# 2166
	sw		x13, -4(x2)	# 2166
	sw		x6, -8(x2)	# 2166
	sw		x8, -12(x2)	# 2166
	sw		x10, -16(x2)	# 2166
	sw		x11, -20(x2)	# 2166
	sw		x7, -24(x2)	# 2166
	sw		x9, -28(x2)	# 2166
	sw		x5, -32(x2)	# 2166
	sw		x4, -36(x2)	# 2166
	sw		x12, -40(x2)	# 2166
	sw		x1, -44(x2)	# 2166
	addi	x2, x2, -48	# 2166
	jal		x1, get_surface_id.2909	# 2166
	addi	x2, x2, 48	# 2166
	lw		x1, -44(x2)	# 2166
	lw		x5, -40(x2)	# 2167
	ble		x5, x4, ble.13137	# 2167
	jalr	x0, x1, 0	# 2186
ble.13137:
	lw		x4, -36(x2)	# 2169
	sw		x1, -44(x2)	# 2169
	addi	x2, x2, -48	# 2169
	jal		x1, p_calc_diffuse.2638	# 2169
	addi	x2, x2, 48	# 2169
	lw		x1, -44(x2)	# 2169
	ori		x5, x0, 4	# 2170
	lw		x6, -32(x2)	# 2170
	mul		x5, x6, x5	# 2170
	add		x4, x4, x5	# 2170
	lw		x4, 0(x4)	# 2170
	lw		x5, -40(x2)	# 2170
	beq		x4, x5, beq.13140	# 2170
	lw		x4, -36(x2)	# 2171
	lw		x27, -28(x2)	# 2171
	sw		x1, -44(x2)	# 2171
	addi	x2, x2, -48	# 2171
	lw		x31, 0(x27)	# 2171
	jalr	x1, x31, 0	# 2171
	addi	x2, x2, 48	# 2171
	lw		x1, -44(x2)	# 2171
	lw		x5, -20(x2)	# 2172
	lw		x27, -24(x2)	# 2172
	sw		x4, -44(x2)	# 2172
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 2172
	addi	x2, x2, -52	# 2172
	lw		x31, 0(x27)	# 2172
	jalr	x1, x31, 0	# 2172
	addi	x2, x2, 52	# 2172
	lw		x1, -48(x2)	# 2172
	lw		x4, -36(x2)	# 2176
	sw		x1, -48(x2)	# 2176
	addi	x2, x2, -52	# 2176
	jal		x1, p_nvectors.2649	# 2176
	addi	x2, x2, 52	# 2176
	lw		x1, -48(x2)	# 2176
	lw		x5, -36(x2)	# 2177
	sw		x4, -48(x2)	# 2177
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 2177
	addi	x2, x2, -56	# 2177
	jal		x1, p_intersection_points.2634	# 2177
	addi	x2, x2, 56	# 2177
	lw		x1, -52(x2)	# 2177
	ori		x5, x0, 4	# 2179
	lw		x6, -44(x2)	# 2179
	mul		x5, x6, x5	# 2179
	lw		x6, -16(x2)	# 2179
	add		x5, x6, x5	# 2179
	lw		x5, 0(x5)	# 2179
	ori		x6, x0, 4	# 2180
	lw		x7, -32(x2)	# 2180
	mul		x6, x7, x6	# 2180
	lw		x8, -48(x2)	# 2180
	add		x6, x8, x6	# 2180
	lw		x6, 0(x6)	# 2180
	ori		x8, x0, 4	# 2181
	mul		x8, x7, x8	# 2181
	add		x4, x4, x8	# 2181
	lw		x4, 0(x4)	# 2181
	lw		x27, -12(x2)	# 2178
	addi	x31, x6, 0
	addi	x6, x4, 0
	addi	x4, x5, 0
	addi	x5, x31, 0
	sw		x1, -52(x2)	# 2178
	addi	x2, x2, -56	# 2178
	lw		x31, 0(x27)	# 2178
	jalr	x1, x31, 0	# 2178
	addi	x2, x2, 56	# 2178
	lw		x1, -52(x2)	# 2178
	lw		x4, -36(x2)	# 2182
	sw		x1, -52(x2)	# 2182
	addi	x2, x2, -56	# 2182
	jal		x1, p_received_ray_20percent.2642	# 2182
	addi	x2, x2, 56	# 2182
	lw		x1, -52(x2)	# 2182
	ori		x5, x0, 4	# 2183
	lw		x6, -32(x2)	# 2183
	mul		x5, x6, x5	# 2183
	add		x4, x4, x5	# 2183
	lw		x4, 0(x4)	# 2183
	lw		x5, -20(x2)	# 2183
	lw		x27, -8(x2)	# 2183
	sw		x1, -52(x2)	# 2183
	addi	x2, x2, -56	# 2183
	lw		x31, 0(x27)	# 2183
	jalr	x1, x31, 0	# 2183
	addi	x2, x2, 56	# 2183
	lw		x1, -52(x2)	# 2183
	jal		x0, beq_cont.13139	# 2170
beq.13140:
beq_cont.13139:
	lw		x4, -4(x2)	# 2185
	lw		x5, -32(x2)	# 2185
	add		x5, x5, x4	# 2185
	lw		x4, -36(x2)	# 2185
	lw		x27, 0(x2)	# 2185
	lw		x31, 0(x27)	# 2185
	jalr	x0, x31, 0	# 2185
pretrace_pixels.2936:
	lw		x7, 72(x27)	# 2193
	lw		x8, 68(x27)	# 2193
	lw		x9, 64(x27)	# 2193
	lw		x10, 60(x27)	# 2193
	lw		x11, 56(x27)	# 2193
	lw		x12, 52(x27)	# 2193
	lw		x13, 48(x27)	# 2193
	lw		x14, 44(x27)	# 2193
	lw		x15, 40(x27)	# 2193
	lw		x16, 36(x27)	# 2193
	lw		x17, 32(x27)	# 2193
	lw		x18, 28(x27)	# 2193
	lw		x19, 24(x27)	# 2193
	lw		x20, 20(x27)	# 2193
	lw		x21, 16(x27)	# 2193
	lw		x22, 12(x27)	# 2193
	lw		x23, 8(x27)	# 2193
	flw		f3, 4(x27)	# 2193
	ble		x22, x5, ble.13141	# 2193
	jalr	x0, x1, 0	# 2213
ble.13141:
	ori		x24, x0, 4	# 2195
	mul		x24, x22, x24	# 2195
	add		x14, x14, x24	# 2195
	flw		f4, 0(x14)	# 2195
	ori		x14, x0, 4	# 2195
	mul		x14, x22, x14	# 2195
	add		x14, x19, x14	# 2195
	lw		x14, 0(x14)	# 2195
	sub		x14, x5, x14	# 2195
	sw		x27, 0(x2)	# 2195
	sw		x20, -4(x2)	# 2195
	sw		x17, -8(x2)	# 2195
	sw		x6, -12(x2)	# 2195
	sw		x18, -16(x2)	# 2195
	fsw		f3, -24(x2)	# 2195
	sw		x11, -32(x2)	# 2195
	sw		x4, -36(x2)	# 2195
	sw		x5, -40(x2)	# 2195
	sw		x7, -44(x2)	# 2195
	sw		x12, -48(x2)	# 2195
	sw		x9, -52(x2)	# 2195
	sw		x15, -56(x2)	# 2195
	sw		x10, -60(x2)	# 2195
	sw		x8, -64(x2)	# 2195
	fsw		f2, -72(x2)	# 2195
	sw		x21, -80(x2)	# 2195
	fsw		f1, -88(x2)	# 2195
	sw		x23, -96(x2)	# 2195
	sw		x16, -100(x2)	# 2195
	fsw		f0, -104(x2)	# 2195
	sw		x13, -112(x2)	# 2195
	sw		x22, -116(x2)	# 2195
	fsw		f4, -120(x2)	# 2195
	addi	x4, x14, 0
	sw		x1, -128(x2)	# 2195
	addi	x2, x2, -132	# 2195
	jal		x1, float_of_int.2489	# 2195
	addi	x2, x2, 132	# 2195
	lw		x1, -128(x2)	# 2195
	flw		f1, -120(x2)	# 2195
	fmul	f0, f1, f0	# 2195
	ori		x4, x0, 4	# 2196
	lw		x5, -116(x2)	# 2196
	mul		x4, x5, x4	# 2196
	lw		x6, -112(x2)	# 2196
	add		x4, x6, x4	# 2196
	flw		f1, 0(x4)	# 2196
	fmul	f1, f0, f1	# 2196
	flw		f2, -104(x2)	# 2196
	fadd	f1, f1, f2	# 2196
	ori		x4, x0, 4	# 2196
	mul		x4, x5, x4	# 2196
	lw		x7, -100(x2)	# 2196
	add		x4, x7, x4	# 2196
	fsw		f1, 0(x4)	# 2196
	ori		x4, x0, 4	# 2197
	lw		x8, -96(x2)	# 2197
	mul		x4, x8, x4	# 2197
	add		x4, x6, x4	# 2197
	flw		f1, 0(x4)	# 2197
	fmul	f1, f0, f1	# 2197
	flw		f3, -88(x2)	# 2197
	fadd	f1, f1, f3	# 2197
	ori		x4, x0, 4	# 2197
	mul		x4, x8, x4	# 2197
	add		x4, x7, x4	# 2197
	fsw		f1, 0(x4)	# 2197
	ori		x4, x0, 4	# 2198
	lw		x9, -80(x2)	# 2198
	mul		x4, x9, x4	# 2198
	add		x4, x6, x4	# 2198
	flw		f1, 0(x4)	# 2198
	fmul	f0, f0, f1	# 2198
	flw		f1, -72(x2)	# 2198
	fadd	f0, f0, f1	# 2198
	ori		x4, x0, 4	# 2198
	mul		x4, x9, x4	# 2198
	add		x4, x7, x4	# 2198
	fsw		f0, 0(x4)	# 2198
	lw		x27, -64(x2)	# 2199
	addi	x4, x7, 0
	sw		x1, -128(x2)	# 2199
	addi	x2, x2, -132	# 2199
	lw		x31, 0(x27)	# 2199
	jalr	x1, x31, 0	# 2199
	addi	x2, x2, 132	# 2199
	lw		x1, -128(x2)	# 2199
	lw		x4, -56(x2)	# 2200
	lw		x27, -60(x2)	# 2200
	sw		x1, -128(x2)	# 2200
	addi	x2, x2, -132	# 2200
	lw		x31, 0(x27)	# 2200
	jalr	x1, x31, 0	# 2200
	addi	x2, x2, 132	# 2200
	lw		x1, -128(x2)	# 2200
	lw		x4, -48(x2)	# 2201
	lw		x5, -44(x2)	# 2201
	lw		x27, -52(x2)	# 2201
	sw		x1, -128(x2)	# 2201
	addi	x2, x2, -132	# 2201
	lw		x31, 0(x27)	# 2201
	jalr	x1, x31, 0	# 2201
	addi	x2, x2, 132	# 2201
	lw		x1, -128(x2)	# 2201
	lui		x4, %hi(l.6125)	# 2204
	ori		x4, x0, %lo(l.6125)	# 2204
	flw		f0, 0(x4)	# 2204
	ori		x4, x0, 4	# 2204
	lw		x5, -40(x2)	# 2204
	mul		x4, x5, x4	# 2204
	lw		x6, -36(x2)	# 2204
	add		x4, x6, x4	# 2204
	lw		x4, 0(x4)	# 2204
	flw		f1, -24(x2)	# 2204
	lw		x7, -116(x2)	# 2204
	lw		x8, -100(x2)	# 2204
	lw		x27, -32(x2)	# 2204
	addi	x6, x4, 0
	addi	x5, x8, 0
	addi	x4, x7, 0
	sw		x1, -128(x2)	# 2204
	addi	x2, x2, -132	# 2204
	lw		x31, 0(x27)	# 2204
	jalr	x1, x31, 0	# 2204
	addi	x2, x2, 132	# 2204
	lw		x1, -128(x2)	# 2204
	ori		x4, x0, 4	# 2205
	lw		x5, -40(x2)	# 2205
	mul		x4, x5, x4	# 2205
	lw		x6, -36(x2)	# 2205
	add		x4, x6, x4	# 2205
	lw		x4, 0(x4)	# 2205
	sw		x1, -128(x2)	# 2205
	addi	x2, x2, -132	# 2205
	jal		x1, p_rgb.2632	# 2205
	addi	x2, x2, 132	# 2205
	lw		x1, -128(x2)	# 2205
	lw		x5, -56(x2)	# 2205
	lw		x27, -52(x2)	# 2205
	sw		x1, -128(x2)	# 2205
	addi	x2, x2, -132	# 2205
	lw		x31, 0(x27)	# 2205
	jalr	x1, x31, 0	# 2205
	addi	x2, x2, 132	# 2205
	lw		x1, -128(x2)	# 2205
	ori		x4, x0, 4	# 2206
	lw		x5, -40(x2)	# 2206
	mul		x4, x5, x4	# 2206
	lw		x6, -36(x2)	# 2206
	add		x4, x6, x4	# 2206
	lw		x4, 0(x4)	# 2206
	lw		x7, -12(x2)	# 2206
	lw		x27, -16(x2)	# 2206
	addi	x5, x7, 0
	sw		x1, -128(x2)	# 2206
	addi	x2, x2, -132	# 2206
	lw		x31, 0(x27)	# 2206
	jalr	x1, x31, 0	# 2206
	addi	x2, x2, 132	# 2206
	lw		x1, -128(x2)	# 2206
	ori		x4, x0, 4	# 2209
	lw		x5, -40(x2)	# 2209
	mul		x4, x5, x4	# 2209
	lw		x6, -36(x2)	# 2209
	add		x4, x6, x4	# 2209
	lw		x4, 0(x4)	# 2209
	lw		x7, -116(x2)	# 2209
	lw		x27, -8(x2)	# 2209
	addi	x5, x7, 0
	sw		x1, -128(x2)	# 2209
	addi	x2, x2, -132	# 2209
	lw		x31, 0(x27)	# 2209
	jalr	x1, x31, 0	# 2209
	addi	x2, x2, 132	# 2209
	lw		x1, -128(x2)	# 2209
	lw		x5, -96(x2)	# 2211
	lw		x4, -40(x2)	# 2211
	sub		x4, x4, x5	# 2211
	lw		x6, -12(x2)	# 2211
	lw		x27, -4(x2)	# 2211
	sw		x4, -128(x2)	# 2211
	addi	x4, x6, 0
	sw		x1, -132(x2)	# 2211
	addi	x2, x2, -136	# 2211
	lw		x31, 0(x27)	# 2211
	jalr	x1, x31, 0	# 2211
	addi	x2, x2, 136	# 2211
	lw		x1, -132(x2)	# 2211
	addi	x6, x4, 0	# 2211
	flw		f0, -104(x2)	# 2211
	flw		f1, -88(x2)	# 2211
	flw		f2, -72(x2)	# 2211
	lw		x4, -36(x2)	# 2211
	lw		x5, -128(x2)	# 2211
	lw		x27, 0(x2)	# 2211
	lw		x31, 0(x27)	# 2211
	jalr	x0, x31, 0	# 2211
pretrace_line.2943:
	lw		x7, 36(x27)	# 2218
	lw		x8, 32(x27)	# 2218
	lw		x9, 28(x27)	# 2218
	lw		x10, 24(x27)	# 2218
	lw		x11, 20(x27)	# 2218
	lw		x12, 16(x27)	# 2218
	lw		x13, 12(x27)	# 2218
	lw		x14, 8(x27)	# 2218
	lw		x15, 4(x27)	# 2218
	ori		x16, x0, 4	# 2218
	mul		x16, x14, x16	# 2218
	add		x9, x9, x16	# 2218
	flw		f0, 0(x9)	# 2218
	ori		x9, x0, 4	# 2218
	mul		x9, x15, x9	# 2218
	add		x9, x12, x9	# 2218
	lw		x9, 0(x9)	# 2218
	sub		x5, x5, x9	# 2218
	sw		x6, 0(x2)	# 2218
	sw		x4, -4(x2)	# 2218
	sw		x10, -8(x2)	# 2218
	sw		x11, -12(x2)	# 2218
	sw		x13, -16(x2)	# 2218
	sw		x15, -20(x2)	# 2218
	sw		x7, -24(x2)	# 2218
	sw		x8, -28(x2)	# 2218
	sw		x14, -32(x2)	# 2218
	fsw		f0, -40(x2)	# 2218
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 2218
	addi	x2, x2, -52	# 2218
	jal		x1, float_of_int.2489	# 2218
	addi	x2, x2, 52	# 2218
	lw		x1, -48(x2)	# 2218
	flw		f1, -40(x2)	# 2218
	fmul	f0, f1, f0	# 2218
	ori		x4, x0, 4	# 2221
	lw		x5, -32(x2)	# 2221
	mul		x4, x5, x4	# 2221
	lw		x6, -28(x2)	# 2221
	add		x4, x6, x4	# 2221
	flw		f1, 0(x4)	# 2221
	fmul	f1, f0, f1	# 2221
	ori		x4, x0, 4	# 2221
	mul		x4, x5, x4	# 2221
	lw		x7, -24(x2)	# 2221
	add		x4, x7, x4	# 2221
	flw		f2, 0(x4)	# 2221
	fadd	f1, f1, f2	# 2221
	ori		x4, x0, 4	# 2222
	lw		x8, -20(x2)	# 2222
	mul		x4, x8, x4	# 2222
	add		x4, x6, x4	# 2222
	flw		f2, 0(x4)	# 2222
	fmul	f2, f0, f2	# 2222
	ori		x4, x0, 4	# 2222
	mul		x4, x8, x4	# 2222
	add		x4, x7, x4	# 2222
	flw		f3, 0(x4)	# 2222
	fadd	f2, f2, f3	# 2222
	ori		x4, x0, 4	# 2223
	lw		x9, -16(x2)	# 2223
	mul		x4, x9, x4	# 2223
	add		x4, x6, x4	# 2223
	flw		f3, 0(x4)	# 2223
	fmul	f0, f0, f3	# 2223
	ori		x4, x0, 4	# 2223
	mul		x4, x9, x4	# 2223
	add		x4, x7, x4	# 2223
	flw		f3, 0(x4)	# 2223
	fadd	f0, f0, f3	# 2223
	ori		x4, x0, 4	# 2224
	mul		x4, x5, x4	# 2224
	lw		x5, -12(x2)	# 2224
	add		x4, x5, x4	# 2224
	lw		x4, 0(x4)	# 2224
	sub		x5, x4, x8	# 2224
	lw		x4, -4(x2)	# 2224
	lw		x6, 0(x2)	# 2224
	lw		x27, -8(x2)	# 2224
	fsub	f31, f31, f31
	fadd	f31, f31, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f31
	lw		x31, 0(x27)	# 2224
	jalr	x0, x31, 0	# 2224
scan_pixel.2947:
	lw		x10, 36(x27)	# 2234
	lw		x11, 32(x27)	# 2234
	lw		x12, 28(x27)	# 2234
	lw		x13, 24(x27)	# 2234
	lw		x14, 20(x27)	# 2234
	lw		x15, 16(x27)	# 2234
	lw		x16, 12(x27)	# 2234
	lw		x17, 8(x27)	# 2234
	lw		x18, 4(x27)	# 2234
	ori		x19, x0, 4	# 2234
	mul		x19, x17, x19	# 2234
	add		x15, x15, x19	# 2234
	lw		x15, 0(x15)	# 2234
	ble		x15, x4, ble.13147	# 2234
	ori		x15, x0, 4	# 2237
	mul		x15, x4, x15	# 2237
	add		x15, x7, x15	# 2237
	lw		x15, 0(x15)	# 2237
	sw		x27, 0(x2)	# 2237
	sw		x18, -4(x2)	# 2237
	sw		x9, -8(x2)	# 2237
	sw		x10, -12(x2)	# 2237
	sw		x6, -16(x2)	# 2237
	sw		x12, -20(x2)	# 2237
	sw		x16, -24(x2)	# 2237
	sw		x7, -28(x2)	# 2237
	sw		x17, -32(x2)	# 2237
	sw		x8, -36(x2)	# 2237
	sw		x5, -40(x2)	# 2237
	sw		x4, -44(x2)	# 2237
	sw		x14, -48(x2)	# 2237
	sw		x13, -52(x2)	# 2237
	sw		x11, -56(x2)	# 2237
	addi	x4, x15, 0
	sw		x1, -60(x2)	# 2237
	addi	x2, x2, -64	# 2237
	jal		x1, p_rgb.2632	# 2237
	addi	x2, x2, 64	# 2237
	lw		x1, -60(x2)	# 2237
	addi	x5, x4, 0	# 2237
	lw		x4, -52(x2)	# 2237
	lw		x27, -56(x2)	# 2237
	sw		x1, -60(x2)	# 2237
	addi	x2, x2, -64	# 2237
	lw		x31, 0(x27)	# 2237
	jalr	x1, x31, 0	# 2237
	addi	x2, x2, 64	# 2237
	lw		x1, -60(x2)	# 2237
	lw		x4, -44(x2)	# 2240
	lw		x5, -40(x2)	# 2240
	lw		x6, -36(x2)	# 2240
	lw		x27, -48(x2)	# 2240
	sw		x1, -60(x2)	# 2240
	addi	x2, x2, -64	# 2240
	lw		x31, 0(x27)	# 2240
	jalr	x1, x31, 0	# 2240
	addi	x2, x2, 64	# 2240
	lw		x1, -60(x2)	# 2240
	lw		x5, -32(x2)	# 2240
	beq		x4, x5, beq.13149	# 2240
	addi	x9, x0, 0	# 2241
	lw		x4, -44(x2)	# 2241
	lw		x5, -40(x2)	# 2241
	lw		x6, -16(x2)	# 2241
	lw		x7, -28(x2)	# 2241
	lw		x8, -36(x2)	# 2241
	lw		x27, -20(x2)	# 2241
	sw		x1, -60(x2)	# 2241
	addi	x2, x2, -64	# 2241
	lw		x31, 0(x27)	# 2241
	jalr	x1, x31, 0	# 2241
	addi	x2, x2, 64	# 2241
	lw		x1, -60(x2)	# 2241
	jal		x0, beq_cont.13148	# 2240
beq.13149:
	ori		x4, x0, 4	# 2243
	lw		x5, -44(x2)	# 2243
	mul		x4, x5, x4	# 2243
	lw		x6, -28(x2)	# 2243
	add		x4, x6, x4	# 2243
	lw		x4, 0(x4)	# 2243
	addi	x7, x0, 0	# 2243
	lw		x27, -24(x2)	# 2243
	addi	x5, x7, 0
	sw		x1, -60(x2)	# 2243
	addi	x2, x2, -64	# 2243
	lw		x31, 0(x27)	# 2243
	jalr	x1, x31, 0	# 2243
	addi	x2, x2, 64	# 2243
	lw		x1, -60(x2)	# 2243
beq_cont.13148:
	lw		x4, -8(x2)	# 2246
	lw		x27, -12(x2)	# 2246
	sw		x1, -60(x2)	# 2246
	addi	x2, x2, -64	# 2246
	lw		x31, 0(x27)	# 2246
	jalr	x1, x31, 0	# 2246
	addi	x2, x2, 64	# 2246
	lw		x1, -60(x2)	# 2246
	lw		x4, -4(x2)	# 2248
	lw		x5, -44(x2)	# 2248
	add		x4, x5, x4	# 2248
	lw		x5, -40(x2)	# 2248
	lw		x6, -16(x2)	# 2248
	lw		x7, -28(x2)	# 2248
	lw		x8, -36(x2)	# 2248
	lw		x9, -8(x2)	# 2248
	lw		x27, 0(x2)	# 2248
	lw		x31, 0(x27)	# 2248
	jalr	x0, x31, 0	# 2248
ble.13147:
	jalr	x0, x1, 0	# 2249
scan_line.2954:
	lw		x10, 28(x27)	# 2255
	lw		x11, 24(x27)	# 2255
	lw		x12, 20(x27)	# 2255
	lw		x13, 16(x27)	# 2255
	lw		x14, 12(x27)	# 2255
	lw		x15, 8(x27)	# 2255
	lw		x16, 4(x27)	# 2255
	ori		x17, x0, 4	# 2255
	mul		x17, x16, x17	# 2255
	add		x12, x12, x17	# 2255
	lw		x12, 0(x12)	# 2255
	ble		x12, x4, ble.13151	# 2255
	sub		x12, x12, x16	# 2257
	sw		x27, 0(x2)	# 2257
	sw		x14, -4(x2)	# 2257
	sw		x8, -8(x2)	# 2257
	sw		x13, -12(x2)	# 2257
	sw		x16, -16(x2)	# 2257
	sw		x9, -20(x2)	# 2257
	sw		x7, -24(x2)	# 2257
	sw		x6, -28(x2)	# 2257
	sw		x5, -32(x2)	# 2257
	sw		x4, -36(x2)	# 2257
	sw		x15, -40(x2)	# 2257
	sw		x10, -44(x2)	# 2257
	ble		x12, x4, ble.13153	# 2257
	addi	x12, x4, 1	# 2258
	addi	x6, x8, 0
	addi	x5, x12, 0
	addi	x4, x7, 0
	addi	x27, x11, 0
	sw		x1, -48(x2)	# 2258
	addi	x2, x2, -52	# 2258
	lw		x31, 0(x27)	# 2258
	jalr	x1, x31, 0	# 2258
	addi	x2, x2, 52	# 2258
	lw		x1, -48(x2)	# 2258
	jal		x0, ble_cont.13152	# 2257
ble.13153:
ble_cont.13152:
	lw		x4, -40(x2)	# 2260
	lw		x5, -36(x2)	# 2260
	lw		x6, -32(x2)	# 2260
	lw		x7, -28(x2)	# 2260
	lw		x8, -24(x2)	# 2260
	lw		x9, -20(x2)	# 2260
	lw		x27, -44(x2)	# 2260
	sw		x1, -48(x2)	# 2260
	addi	x2, x2, -52	# 2260
	lw		x31, 0(x27)	# 2260
	jalr	x1, x31, 0	# 2260
	addi	x2, x2, 52	# 2260
	lw		x1, -48(x2)	# 2260
	lw		x4, -16(x2)	# 2261
	lw		x5, -36(x2)	# 2261
	add		x4, x5, x4	# 2261
	lw		x5, -8(x2)	# 2261
	lw		x6, -4(x2)	# 2261
	lw		x27, -12(x2)	# 2261
	sw		x4, -48(x2)	# 2261
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -52(x2)	# 2261
	addi	x2, x2, -56	# 2261
	lw		x31, 0(x27)	# 2261
	jalr	x1, x31, 0	# 2261
	addi	x2, x2, 56	# 2261
	lw		x1, -52(x2)	# 2261
	addi	x8, x4, 0	# 2261
	lw		x4, -48(x2)	# 2261
	lw		x5, -28(x2)	# 2261
	lw		x6, -24(x2)	# 2261
	lw		x7, -32(x2)	# 2261
	lw		x9, -20(x2)	# 2261
	lw		x27, 0(x2)	# 2261
	lw		x31, 0(x27)	# 2261
	jalr	x0, x31, 0	# 2261
ble.13151:
	jalr	x0, x1, 0	# 2262
create_float5x3array.2961:
	lw		x4, 20(x27)	# 2272
	lw		x5, 16(x27)	# 2272
	lw		x6, 12(x27)	# 2272
	lw		x7, 8(x27)	# 2272
	flw		f0, 4(x27)	# 2272
	sw		x5, 0(x2)	# 2272
	sw		x7, -4(x2)	# 2272
	fsw		f0, -8(x2)	# 2272
	sw		x6, -16(x2)	# 2272
	sw		x4, -20(x2)	# 2272
	addi	x4, x6, 0
	sw		x1, -24(x2)	# 2272
	addi	x2, x2, -28	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 28	# 2272
	lw		x1, -24(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -20(x2)	# 2273
	sw		x1, -24(x2)	# 2273
	addi	x2, x2, -28	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 28	# 2273
	lw		x1, -24(x2)	# 2273
	flw		f0, -8(x2)	# 2274
	lw		x5, -16(x2)	# 2274
	sw		x4, -24(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -28(x2)	# 2274
	addi	x2, x2, -32	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 32	# 2274
	lw		x1, -28(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -4(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x6, -24(x2)	# 2274
	add		x5, x6, x5	# 2274
	sw		x4, 0(x5)	# 2274
	flw		f0, -8(x2)	# 2275
	lw		x4, -16(x2)	# 2275
	sw		x1, -28(x2)	# 2275
	addi	x2, x2, -32	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 32	# 2275
	lw		x1, -28(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, 0(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x6, -24(x2)	# 2275
	add		x5, x6, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f0, -8(x2)	# 2276
	lw		x4, -16(x2)	# 2276
	sw		x1, -28(x2)	# 2276
	addi	x2, x2, -32	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 32	# 2276
	lw		x1, -28(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -16(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x7, -24(x2)	# 2276
	add		x5, x7, x5	# 2276
	sw		x4, 0(x5)	# 2276
	ori		x4, x0, 4	# 2277
	flw		f0, -8(x2)	# 2277
	sw		x4, -28(x2)	# 2277
	addi	x4, x6, 0
	sw		x1, -32(x2)	# 2277
	addi	x2, x2, -36	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 36	# 2277
	lw		x1, -32(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -28(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x6, -24(x2)	# 2277
	add		x5, x6, x5	# 2277
	sw		x4, 0(x5)	# 2277
	addi	x4, x6, 0	# 2278
	jalr	x0, x1, 0	# 2278
create_pixel.2963:
	lw		x4, 24(x27)	# 2284
	lw		x5, 20(x27)	# 2284
	lw		x6, 16(x27)	# 2284
	lw		x7, 12(x27)	# 2284
	lw		x8, 8(x27)	# 2284
	flw		f0, 4(x27)	# 2284
	sw		x8, 0(x2)	# 2284
	sw		x7, -4(x2)	# 2284
	sw		x5, -8(x2)	# 2284
	sw		x4, -12(x2)	# 2284
	addi	x4, x6, 0
	sw		x1, -16(x2)	# 2284
	addi	x2, x2, -20	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 20	# 2284
	lw		x1, -16(x2)	# 2284
	lw		x27, -12(x2)	# 2285
	sw		x4, -16(x2)	# 2285
	sw		x1, -20(x2)	# 2285
	addi	x2, x2, -24	# 2285
	lw		x31, 0(x27)	# 2285
	jalr	x1, x31, 0	# 2285
	addi	x2, x2, 24	# 2285
	lw		x1, -20(x2)	# 2285
	lw		x5, -8(x2)	# 2286
	lw		x6, -4(x2)	# 2286
	sw		x4, -20(x2)	# 2286
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -24(x2)	# 2286
	addi	x2, x2, -28	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 28	# 2286
	lw		x1, -24(x2)	# 2286
	lw		x5, -8(x2)	# 2287
	lw		x6, -4(x2)	# 2287
	sw		x4, -24(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -28(x2)	# 2287
	addi	x2, x2, -32	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 32	# 2287
	lw		x1, -28(x2)	# 2287
	lw		x27, -12(x2)	# 2288
	sw		x4, -28(x2)	# 2288
	sw		x1, -32(x2)	# 2288
	addi	x2, x2, -36	# 2288
	lw		x31, 0(x27)	# 2288
	jalr	x1, x31, 0	# 2288
	addi	x2, x2, 36	# 2288
	lw		x1, -32(x2)	# 2288
	lw		x27, -12(x2)	# 2289
	sw		x4, -32(x2)	# 2289
	sw		x1, -36(x2)	# 2289
	addi	x2, x2, -40	# 2289
	lw		x31, 0(x27)	# 2289
	jalr	x1, x31, 0	# 2289
	addi	x2, x2, 40	# 2289
	lw		x1, -36(x2)	# 2289
	lw		x5, 0(x2)	# 2290
	lw		x6, -4(x2)	# 2290
	sw		x4, -36(x2)	# 2290
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -40(x2)	# 2290
	addi	x2, x2, -44	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 44	# 2290
	lw		x1, -40(x2)	# 2290
	lw		x27, -12(x2)	# 2291
	sw		x4, -40(x2)	# 2291
	sw		x1, -44(x2)	# 2291
	addi	x2, x2, -48	# 2291
	lw		x31, 0(x27)	# 2291
	jalr	x1, x31, 0	# 2291
	addi	x2, x2, 48	# 2291
	lw		x1, -44(x2)	# 2291
	addi	x5, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x4, 28(x5)	# 2292
	lw		x4, -40(x2)	# 2292
	sw		x4, 24(x5)	# 2292
	lw		x4, -36(x2)	# 2292
	sw		x4, 20(x5)	# 2292
	lw		x4, -32(x2)	# 2292
	sw		x4, 16(x5)	# 2292
	lw		x4, -28(x2)	# 2292
	sw		x4, 12(x5)	# 2292
	lw		x4, -24(x2)	# 2292
	sw		x4, 8(x5)	# 2292
	lw		x4, -20(x2)	# 2292
	sw		x4, 4(x5)	# 2292
	lw		x4, -16(x2)	# 2292
	sw		x4, 0(x5)	# 2292
	addi	x4, x5, 0	# 2292
	jalr	x0, x1, 0	# 2292
init_line_elements.2965:
	lw		x6, 12(x27)	# 2297
	lw		x7, 8(x27)	# 2297
	lw		x8, 4(x27)	# 2297
	ble		x7, x5, ble.13155	# 2297
	jalr	x0, x1, 0	# 2301
ble.13155:
	sw		x27, 0(x2)	# 2298
	sw		x8, -4(x2)	# 2298
	sw		x4, -8(x2)	# 2298
	sw		x5, -12(x2)	# 2298
	addi	x27, x6, 0
	sw		x1, -16(x2)	# 2298
	addi	x2, x2, -20	# 2298
	lw		x31, 0(x27)	# 2298
	jalr	x1, x31, 0	# 2298
	addi	x2, x2, 20	# 2298
	lw		x1, -16(x2)	# 2298
	ori		x5, x0, 4	# 2298
	lw		x6, -12(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -8(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -4(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x27, 0(x2)	# 2299
	addi	x4, x7, 0
	lw		x31, 0(x27)	# 2299
	jalr	x0, x31, 0	# 2299
create_pixelline.2968:
	lw		x4, 20(x27)	# 2306
	lw		x5, 16(x27)	# 2306
	lw		x6, 12(x27)	# 2306
	lw		x7, 8(x27)	# 2306
	lw		x8, 4(x27)	# 2306
	ori		x9, x0, 4	# 2306
	mul		x9, x8, x9	# 2306
	add		x9, x5, x9	# 2306
	lw		x9, 0(x9)	# 2306
	sw		x4, 0(x2)	# 2306
	sw		x7, -4(x2)	# 2306
	sw		x5, -8(x2)	# 2306
	sw		x8, -12(x2)	# 2306
	sw		x9, -16(x2)	# 2306
	addi	x27, x6, 0
	sw		x1, -20(x2)	# 2306
	addi	x2, x2, -24	# 2306
	lw		x31, 0(x27)	# 2306
	jalr	x1, x31, 0	# 2306
	addi	x2, x2, 24	# 2306
	lw		x1, -20(x2)	# 2306
	addi	x5, x4, 0	# 2306
	lw		x4, -16(x2)	# 2306
	sw		x1, -20(x2)	# 2306
	addi	x2, x2, -24	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 24	# 2306
	lw		x1, -20(x2)	# 2306
	ori		x5, x0, 4	# 2307
	lw		x6, -12(x2)	# 2307
	mul		x5, x6, x5	# 2307
	lw		x6, -8(x2)	# 2307
	add		x5, x6, x5	# 2307
	lw		x5, 0(x5)	# 2307
	lw		x6, -4(x2)	# 2307
	sub		x5, x5, x6	# 2307
	lw		x27, 0(x2)	# 2307
	lw		x31, 0(x27)	# 2307
	jalr	x0, x31, 0	# 2307
tan.2970:
	lw		x4, 8(x27)	# 2320
	lw		x5, 4(x27)	# 2320
	fsw		f0, 0(x2)	# 2320
	sw		x5, -8(x2)	# 2320
	addi	x27, x4, 0
	sw		x1, -12(x2)	# 2320
	addi	x2, x2, -16	# 2320
	lw		x31, 0(x27)	# 2320
	jalr	x1, x31, 0	# 2320
	addi	x2, x2, 16	# 2320
	lw		x1, -12(x2)	# 2320
	flw		f1, 0(x2)	# 2320
	lw		x27, -8(x2)	# 2320
	fsw		f0, -16(x2)	# 2320
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -24(x2)	# 2320
	addi	x2, x2, -28	# 2320
	lw		x31, 0(x27)	# 2320
	jalr	x1, x31, 0	# 2320
	addi	x2, x2, 28	# 2320
	lw		x1, -24(x2)	# 2320
	flw		f1, -16(x2)	# 2320
	fdiv	f0, f1, f0	# 2320
	jalr	x0, x1, 0	# 2320
adjust_position.2972:
	lw		x4, 8(x27)	# 2325
	lw		x5, 4(x27)	# 2325
	fmul	f0, f0, f0	# 2325
	lui		x6, %hi(l.7467)	# 2325
	ori		x6, x0, %lo(l.7467)	# 2325
	flw		f2, 0(x6)	# 2325
	fadd	f0, f0, f2	# 2325
	sw		x4, 0(x2)	# 2325
	fsw		f1, -8(x2)	# 2325
	sw		x5, -16(x2)	# 2325
	sw		x1, -20(x2)	# 2325
	addi	x2, x2, -24	# 2325
	jal		x1, min_caml_sqrt	# 2325
	addi	x2, x2, 24	# 2325
	lw		x1, -20(x2)	# 2325
	lui		x4, %hi(l.6125)	# 2326
	ori		x4, x0, %lo(l.6125)	# 2326
	flw		f1, 0(x4)	# 2326
	fdiv	f1, f1, f0	# 2326
	lw		x27, -16(x2)	# 2327
	fsw		f0, -24(x2)	# 2327
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -32(x2)	# 2327
	addi	x2, x2, -36	# 2327
	lw		x31, 0(x27)	# 2327
	jalr	x1, x31, 0	# 2327
	addi	x2, x2, 36	# 2327
	lw		x1, -32(x2)	# 2327
	flw		f1, -8(x2)	# 2328
	fmul	f0, f0, f1	# 2328
	lw		x27, 0(x2)	# 2328
	sw		x1, -32(x2)	# 2328
	addi	x2, x2, -36	# 2328
	lw		x31, 0(x27)	# 2328
	jalr	x1, x31, 0	# 2328
	addi	x2, x2, 36	# 2328
	lw		x1, -32(x2)	# 2328
	flw		f1, -24(x2)	# 2329
	fmul	f0, f0, f1	# 2329
	jalr	x0, x1, 0	# 2329
calc_dirvec.2975:
	lw		x7, 20(x27)	# 2334
	lw		x8, 16(x27)	# 2334
	lw		x9, 12(x27)	# 2334
	lw		x10, 8(x27)	# 2334
	lw		x11, 4(x27)	# 2334
	ble		x10, x4, ble.13159	# 2334
	fsw		f2, 0(x2)	# 2349
	sw		x6, -8(x2)	# 2349
	sw		x5, -12(x2)	# 2349
	sw		x27, -16(x2)	# 2349
	fsw		f3, -24(x2)	# 2349
	sw		x9, -32(x2)	# 2349
	sw		x11, -36(x2)	# 2349
	sw		x4, -40(x2)	# 2349
	addi	x27, x9, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	sw		x1, -44(x2)	# 2349
	addi	x2, x2, -48	# 2349
	lw		x31, 0(x27)	# 2349
	jalr	x1, x31, 0	# 2349
	addi	x2, x2, 48	# 2349
	lw		x1, -44(x2)	# 2349
	lw		x4, -36(x2)	# 2350
	lw		x5, -40(x2)	# 2350
	add		x4, x5, x4	# 2350
	flw		f1, -24(x2)	# 2350
	lw		x27, -32(x2)	# 2350
	fsw		f0, -48(x2)	# 2350
	sw		x4, -56(x2)	# 2350
	sw		x1, -60(x2)	# 2350
	addi	x2, x2, -64	# 2350
	lw		x31, 0(x27)	# 2350
	jalr	x1, x31, 0	# 2350
	addi	x2, x2, 64	# 2350
	lw		x1, -60(x2)	# 2350
	fsub	f1, f1, f1	# 2350
	fadd	f1, f1, f0	# 2350
	flw		f0, -48(x2)	# 2350
	flw		f2, 0(x2)	# 2350
	flw		f3, -24(x2)	# 2350
	lw		x4, -56(x2)	# 2350
	lw		x5, -12(x2)	# 2350
	lw		x6, -8(x2)	# 2350
	lw		x27, -16(x2)	# 2350
	lw		x31, 0(x27)	# 2350
	jalr	x0, x31, 0	# 2350
ble.13159:
	sw		x11, -36(x2)	# 2335
	sw		x7, -60(x2)	# 2335
	sw		x6, -8(x2)	# 2335
	sw		x8, -64(x2)	# 2335
	sw		x5, -12(x2)	# 2335
	fsw		f0, -72(x2)	# 2335
	fsw		f1, -80(x2)	# 2335
	sw		x1, -88(x2)	# 2335
	addi	x2, x2, -92	# 2335
	jal		x1, fsqr.2485	# 2335
	addi	x2, x2, 92	# 2335
	lw		x1, -88(x2)	# 2335
	flw		f1, -80(x2)	# 2335
	fsw		f0, -88(x2)	# 2335
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -96(x2)	# 2335
	addi	x2, x2, -100	# 2335
	jal		x1, fsqr.2485	# 2335
	addi	x2, x2, 100	# 2335
	lw		x1, -96(x2)	# 2335
	flw		f1, -88(x2)	# 2335
	fadd	f0, f1, f0	# 2335
	lui		x4, %hi(l.6125)	# 2335
	ori		x4, x0, %lo(l.6125)	# 2335
	flw		f1, 0(x4)	# 2335
	fadd	f0, f0, f1	# 2335
	fsw		f1, -96(x2)	# 2335
	sw		x1, -104(x2)	# 2335
	addi	x2, x2, -108	# 2335
	jal		x1, min_caml_sqrt	# 2335
	addi	x2, x2, 108	# 2335
	lw		x1, -104(x2)	# 2335
	flw		f1, -72(x2)	# 2336
	fdiv	f1, f1, f0	# 2336
	flw		f2, -80(x2)	# 2337
	fdiv	f2, f2, f0	# 2337
	flw		f3, -96(x2)	# 2338
	fdiv	f0, f3, f0	# 2338
	ori		x4, x0, 4	# 2341
	lw		x5, -12(x2)	# 2341
	mul		x4, x5, x4	# 2341
	lw		x5, -64(x2)	# 2341
	add		x4, x5, x4	# 2341
	lw		x4, 0(x4)	# 2341
	ori		x5, x0, 4	# 2342
	lw		x6, -8(x2)	# 2342
	mul		x5, x6, x5	# 2342
	add		x5, x4, x5	# 2342
	lw		x5, 0(x5)	# 2342
	sw		x4, -104(x2)	# 2342
	fsw		f0, -112(x2)	# 2342
	fsw		f2, -120(x2)	# 2342
	fsw		f1, -128(x2)	# 2342
	addi	x4, x5, 0
	sw		x1, -136(x2)	# 2342
	addi	x2, x2, -140	# 2342
	jal		x1, d_vec.2651	# 2342
	addi	x2, x2, 140	# 2342
	lw		x1, -136(x2)	# 2342
	flw		f0, -128(x2)	# 2342
	flw		f1, -120(x2)	# 2342
	flw		f2, -112(x2)	# 2342
	lw		x27, -60(x2)	# 2342
	sw		x1, -136(x2)	# 2342
	addi	x2, x2, -140	# 2342
	lw		x31, 0(x27)	# 2342
	jalr	x1, x31, 0	# 2342
	addi	x2, x2, 140	# 2342
	lw		x1, -136(x2)	# 2342
	lw		x4, -8(x2)	# 2343
	addi	x5, x4, 40	# 2343
	ori		x6, x0, 4	# 2343
	mul		x5, x5, x6	# 2343
	lw		x6, -104(x2)	# 2343
	add		x5, x6, x5	# 2343
	lw		x5, 0(x5)	# 2343
	addi	x4, x5, 0
	sw		x1, -136(x2)	# 2343
	addi	x2, x2, -140	# 2343
	jal		x1, d_vec.2651	# 2343
	addi	x2, x2, 140	# 2343
	lw		x1, -136(x2)	# 2343
	flw		f0, -120(x2)	# 2343
	sw		x4, -136(x2)	# 2343
	sw		x1, -140(x2)	# 2343
	addi	x2, x2, -144	# 2343
	jal		x1, fneg.2476	# 2343
	addi	x2, x2, 144	# 2343
	lw		x1, -140(x2)	# 2343
	fsub	f2, f2, f2	# 2343
	fadd	f2, f2, f0	# 2343
	flw		f0, -128(x2)	# 2343
	flw		f1, -112(x2)	# 2343
	lw		x4, -136(x2)	# 2343
	lw		x27, -60(x2)	# 2343
	sw		x1, -140(x2)	# 2343
	addi	x2, x2, -144	# 2343
	lw		x31, 0(x27)	# 2343
	jalr	x1, x31, 0	# 2343
	addi	x2, x2, 144	# 2343
	lw		x1, -140(x2)	# 2343
	lw		x4, -8(x2)	# 2344
	addi	x5, x4, 80	# 2344
	ori		x6, x0, 4	# 2344
	mul		x5, x5, x6	# 2344
	lw		x6, -104(x2)	# 2344
	add		x5, x6, x5	# 2344
	lw		x5, 0(x5)	# 2344
	addi	x4, x5, 0
	sw		x1, -140(x2)	# 2344
	addi	x2, x2, -144	# 2344
	jal		x1, d_vec.2651	# 2344
	addi	x2, x2, 144	# 2344
	lw		x1, -140(x2)	# 2344
	flw		f0, -128(x2)	# 2344
	sw		x4, -140(x2)	# 2344
	sw		x1, -144(x2)	# 2344
	addi	x2, x2, -148	# 2344
	jal		x1, fneg.2476	# 2344
	addi	x2, x2, 148	# 2344
	lw		x1, -144(x2)	# 2344
	flw		f1, -120(x2)	# 2344
	fsw		f0, -144(x2)	# 2344
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -152(x2)	# 2344
	addi	x2, x2, -156	# 2344
	jal		x1, fneg.2476	# 2344
	addi	x2, x2, 156	# 2344
	lw		x1, -152(x2)	# 2344
	fsub	f2, f2, f2	# 2344
	fadd	f2, f2, f0	# 2344
	flw		f0, -112(x2)	# 2344
	flw		f1, -144(x2)	# 2344
	lw		x4, -140(x2)	# 2344
	lw		x27, -60(x2)	# 2344
	sw		x1, -152(x2)	# 2344
	addi	x2, x2, -156	# 2344
	lw		x31, 0(x27)	# 2344
	jalr	x1, x31, 0	# 2344
	addi	x2, x2, 156	# 2344
	lw		x1, -152(x2)	# 2344
	lw		x4, -36(x2)	# 2345
	lw		x5, -8(x2)	# 2345
	add		x4, x5, x4	# 2345
	ori		x6, x0, 4	# 2345
	mul		x4, x4, x6	# 2345
	lw		x6, -104(x2)	# 2345
	add		x4, x6, x4	# 2345
	lw		x4, 0(x4)	# 2345
	sw		x1, -152(x2)	# 2345
	addi	x2, x2, -156	# 2345
	jal		x1, d_vec.2651	# 2345
	addi	x2, x2, 156	# 2345
	lw		x1, -152(x2)	# 2345
	flw		f0, -128(x2)	# 2345
	sw		x4, -152(x2)	# 2345
	sw		x1, -156(x2)	# 2345
	addi	x2, x2, -160	# 2345
	jal		x1, fneg.2476	# 2345
	addi	x2, x2, 160	# 2345
	lw		x1, -156(x2)	# 2345
	flw		f1, -120(x2)	# 2345
	fsw		f0, -160(x2)	# 2345
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -168(x2)	# 2345
	addi	x2, x2, -172	# 2345
	jal		x1, fneg.2476	# 2345
	addi	x2, x2, 172	# 2345
	lw		x1, -168(x2)	# 2345
	flw		f1, -112(x2)	# 2345
	fsw		f0, -168(x2)	# 2345
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -176(x2)	# 2345
	addi	x2, x2, -180	# 2345
	jal		x1, fneg.2476	# 2345
	addi	x2, x2, 180	# 2345
	lw		x1, -176(x2)	# 2345
	fsub	f2, f2, f2	# 2345
	fadd	f2, f2, f0	# 2345
	flw		f0, -160(x2)	# 2345
	flw		f1, -168(x2)	# 2345
	lw		x4, -152(x2)	# 2345
	lw		x27, -60(x2)	# 2345
	sw		x1, -176(x2)	# 2345
	addi	x2, x2, -180	# 2345
	lw		x31, 0(x27)	# 2345
	jalr	x1, x31, 0	# 2345
	addi	x2, x2, 180	# 2345
	lw		x1, -176(x2)	# 2345
	lw		x4, -8(x2)	# 2346
	addi	x5, x4, 41	# 2346
	ori		x6, x0, 4	# 2346
	mul		x5, x5, x6	# 2346
	lw		x6, -104(x2)	# 2346
	add		x5, x6, x5	# 2346
	lw		x5, 0(x5)	# 2346
	addi	x4, x5, 0
	sw		x1, -176(x2)	# 2346
	addi	x2, x2, -180	# 2346
	jal		x1, d_vec.2651	# 2346
	addi	x2, x2, 180	# 2346
	lw		x1, -176(x2)	# 2346
	flw		f0, -128(x2)	# 2346
	sw		x4, -176(x2)	# 2346
	sw		x1, -180(x2)	# 2346
	addi	x2, x2, -184	# 2346
	jal		x1, fneg.2476	# 2346
	addi	x2, x2, 184	# 2346
	lw		x1, -180(x2)	# 2346
	flw		f1, -112(x2)	# 2346
	fsw		f0, -184(x2)	# 2346
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -192(x2)	# 2346
	addi	x2, x2, -196	# 2346
	jal		x1, fneg.2476	# 2346
	addi	x2, x2, 196	# 2346
	lw		x1, -192(x2)	# 2346
	fsub	f1, f1, f1	# 2346
	fadd	f1, f1, f0	# 2346
	flw		f0, -184(x2)	# 2346
	flw		f2, -120(x2)	# 2346
	lw		x4, -176(x2)	# 2346
	lw		x27, -60(x2)	# 2346
	sw		x1, -192(x2)	# 2346
	addi	x2, x2, -196	# 2346
	lw		x31, 0(x27)	# 2346
	jalr	x1, x31, 0	# 2346
	addi	x2, x2, 196	# 2346
	lw		x1, -192(x2)	# 2346
	lw		x4, -8(x2)	# 2347
	addi	x4, x4, 81	# 2347
	ori		x5, x0, 4	# 2347
	mul		x4, x4, x5	# 2347
	lw		x5, -104(x2)	# 2347
	add		x4, x5, x4	# 2347
	lw		x4, 0(x4)	# 2347
	sw		x1, -192(x2)	# 2347
	addi	x2, x2, -196	# 2347
	jal		x1, d_vec.2651	# 2347
	addi	x2, x2, 196	# 2347
	lw		x1, -192(x2)	# 2347
	flw		f0, -112(x2)	# 2347
	sw		x4, -192(x2)	# 2347
	sw		x1, -196(x2)	# 2347
	addi	x2, x2, -200	# 2347
	jal		x1, fneg.2476	# 2347
	addi	x2, x2, 200	# 2347
	lw		x1, -196(x2)	# 2347
	flw		f1, -128(x2)	# 2347
	flw		f2, -120(x2)	# 2347
	lw		x4, -192(x2)	# 2347
	lw		x27, -60(x2)	# 2347
	lw		x31, 0(x27)	# 2347
	jalr	x0, x31, 0	# 2347
calc_dirvecs.2983:
	lw		x7, 24(x27)	# 2355
	lw		x8, 20(x27)	# 2355
	lw		x9, 16(x27)	# 2355
	lw		x10, 12(x27)	# 2355
	lw		x11, 8(x27)	# 2355
	flw		f1, 4(x27)	# 2355
	ble		x10, x4, ble.13166	# 2355
	jalr	x0, x1, 0	# 2364
ble.13166:
	sw		x27, 0(x2)	# 2357
	sw		x8, -4(x2)	# 2357
	sw		x11, -8(x2)	# 2357
	sw		x9, -12(x2)	# 2357
	sw		x4, -16(x2)	# 2357
	fsw		f0, -24(x2)	# 2357
	fsw		f1, -32(x2)	# 2357
	sw		x6, -40(x2)	# 2357
	sw		x5, -44(x2)	# 2357
	sw		x10, -48(x2)	# 2357
	sw		x7, -52(x2)	# 2357
	sw		x1, -56(x2)	# 2357
	addi	x2, x2, -60	# 2357
	jal		x1, float_of_int.2489	# 2357
	addi	x2, x2, 60	# 2357
	lw		x1, -56(x2)	# 2357
	lui		x4, %hi(l.6152)	# 2357
	ori		x4, x0, %lo(l.6152)	# 2357
	flw		f1, 0(x4)	# 2357
	fmul	f0, f0, f1	# 2357
	lui		x4, %hi(l.7794)	# 2357
	ori		x4, x0, %lo(l.7794)	# 2357
	flw		f2, 0(x4)	# 2357
	fsub	f2, f0, f2	# 2357
	flw		f0, -32(x2)	# 2358
	flw		f3, -24(x2)	# 2358
	lw		x4, -48(x2)	# 2358
	lw		x5, -44(x2)	# 2358
	lw		x6, -40(x2)	# 2358
	lw		x27, -52(x2)	# 2358
	fsw		f1, -56(x2)	# 2358
	fsub	f1, f1, f1
	fadd	f1, f1, f0
	sw		x1, -64(x2)	# 2358
	addi	x2, x2, -68	# 2358
	lw		x31, 0(x27)	# 2358
	jalr	x1, x31, 0	# 2358
	addi	x2, x2, 68	# 2358
	lw		x1, -64(x2)	# 2358
	lw		x4, -16(x2)	# 2360
	sw		x1, -64(x2)	# 2360
	addi	x2, x2, -68	# 2360
	jal		x1, float_of_int.2489	# 2360
	addi	x2, x2, 68	# 2360
	lw		x1, -64(x2)	# 2360
	flw		f1, -56(x2)	# 2360
	fmul	f0, f0, f1	# 2360
	lui		x4, %hi(l.7467)	# 2360
	ori		x4, x0, %lo(l.7467)	# 2360
	flw		f1, 0(x4)	# 2360
	fadd	f2, f0, f1	# 2360
	lw		x4, -12(x2)	# 2361
	lw		x5, -40(x2)	# 2361
	add		x6, x5, x4	# 2361
	flw		f0, -32(x2)	# 2361
	flw		f3, -24(x2)	# 2361
	lw		x4, -48(x2)	# 2361
	lw		x7, -44(x2)	# 2361
	lw		x27, -52(x2)	# 2361
	addi	x5, x7, 0
	fsub	f1, f1, f1
	fadd	f1, f1, f0
	sw		x1, -64(x2)	# 2361
	addi	x2, x2, -68	# 2361
	lw		x31, 0(x27)	# 2361
	jalr	x1, x31, 0	# 2361
	addi	x2, x2, 68	# 2361
	lw		x1, -64(x2)	# 2361
	lw		x5, -8(x2)	# 2363
	lw		x4, -16(x2)	# 2363
	sub		x4, x4, x5	# 2363
	lw		x6, -44(x2)	# 2363
	lw		x27, -4(x2)	# 2363
	sw		x4, -64(x2)	# 2363
	addi	x4, x6, 0
	sw		x1, -68(x2)	# 2363
	addi	x2, x2, -72	# 2363
	lw		x31, 0(x27)	# 2363
	jalr	x1, x31, 0	# 2363
	addi	x2, x2, 72	# 2363
	lw		x1, -68(x2)	# 2363
	addi	x5, x4, 0	# 2363
	flw		f0, -24(x2)	# 2363
	lw		x4, -64(x2)	# 2363
	lw		x6, -40(x2)	# 2363
	lw		x27, 0(x2)	# 2363
	lw		x31, 0(x27)	# 2363
	jalr	x0, x31, 0	# 2363
calc_dirvec_rows.2988:
	lw		x7, 20(x27)	# 2369
	lw		x8, 16(x27)	# 2369
	lw		x9, 12(x27)	# 2369
	lw		x10, 8(x27)	# 2369
	lw		x11, 4(x27)	# 2369
	ble		x10, x4, ble.13169	# 2369
	jalr	x0, x1, 0	# 2373
ble.13169:
	sw		x27, 0(x2)	# 2370
	sw		x9, -4(x2)	# 2370
	sw		x8, -8(x2)	# 2370
	sw		x11, -12(x2)	# 2370
	sw		x4, -16(x2)	# 2370
	sw		x6, -20(x2)	# 2370
	sw		x5, -24(x2)	# 2370
	sw		x7, -28(x2)	# 2370
	sw		x1, -32(x2)	# 2370
	addi	x2, x2, -36	# 2370
	jal		x1, float_of_int.2489	# 2370
	addi	x2, x2, 36	# 2370
	lw		x1, -32(x2)	# 2370
	lui		x4, %hi(l.6152)	# 2370
	ori		x4, x0, %lo(l.6152)	# 2370
	flw		f1, 0(x4)	# 2370
	fmul	f0, f0, f1	# 2370
	lui		x4, %hi(l.7794)	# 2370
	ori		x4, x0, %lo(l.7794)	# 2370
	flw		f1, 0(x4)	# 2370
	fsub	f0, f0, f1	# 2370
	ori		x4, x0, 4	# 2371
	lw		x5, -24(x2)	# 2371
	lw		x6, -20(x2)	# 2371
	lw		x27, -28(x2)	# 2371
	sw		x1, -32(x2)	# 2371
	addi	x2, x2, -36	# 2371
	lw		x31, 0(x27)	# 2371
	jalr	x1, x31, 0	# 2371
	addi	x2, x2, 36	# 2371
	lw		x1, -32(x2)	# 2371
	lw		x4, -12(x2)	# 2372
	lw		x5, -16(x2)	# 2372
	sub		x4, x5, x4	# 2372
	lw		x5, -24(x2)	# 2372
	lw		x6, -4(x2)	# 2372
	lw		x27, -8(x2)	# 2372
	sw		x4, -32(x2)	# 2372
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -36(x2)	# 2372
	addi	x2, x2, -40	# 2372
	lw		x31, 0(x27)	# 2372
	jalr	x1, x31, 0	# 2372
	addi	x2, x2, 40	# 2372
	lw		x1, -36(x2)	# 2372
	addi	x5, x4, 0	# 2372
	lw		x4, -20(x2)	# 2372
	addi	x6, x4, 4	# 2372
	lw		x4, -32(x2)	# 2372
	lw		x27, 0(x2)	# 2372
	lw		x31, 0(x27)	# 2372
	jalr	x0, x31, 0	# 2372
create_dirvec.2992:
	lw		x4, 16(x27)	# 2382
	lw		x5, 12(x27)	# 2382
	lw		x6, 8(x27)	# 2382
	flw		f0, 4(x27)	# 2382
	sw		x4, 0(x2)	# 2382
	sw		x6, -4(x2)	# 2382
	addi	x4, x5, 0
	sw		x1, -8(x2)	# 2382
	addi	x2, x2, -12	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 12	# 2382
	lw		x1, -8(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -4(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x6, 0(x2)	# 2383
	add		x4, x6, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -8(x2)	# 2383
	sw		x1, -12(x2)	# 2383
	addi	x2, x2, -16	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 16	# 2383
	lw		x1, -12(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -8(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	jalr	x0, x1, 0	# 2384
create_dirvec_elements.2994:
	lw		x6, 12(x27)	# 2388
	lw		x7, 8(x27)	# 2388
	lw		x8, 4(x27)	# 2388
	ble		x7, x5, ble.13171	# 2388
	jalr	x0, x1, 0	# 2391
ble.13171:
	sw		x27, 0(x2)	# 2389
	sw		x8, -4(x2)	# 2389
	sw		x4, -8(x2)	# 2389
	sw		x5, -12(x2)	# 2389
	addi	x27, x6, 0
	sw		x1, -16(x2)	# 2389
	addi	x2, x2, -20	# 2389
	lw		x31, 0(x27)	# 2389
	jalr	x1, x31, 0	# 2389
	addi	x2, x2, 20	# 2389
	lw		x1, -16(x2)	# 2389
	ori		x5, x0, 4	# 2389
	lw		x6, -12(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x7, -8(x2)	# 2389
	add		x5, x7, x5	# 2389
	sw		x4, 0(x5)	# 2389
	lw		x4, -4(x2)	# 2390
	sub		x5, x6, x4	# 2390
	lw		x27, 0(x2)	# 2390
	addi	x4, x7, 0
	lw		x31, 0(x27)	# 2390
	jalr	x0, x31, 0	# 2390
create_dirvecs.2997:
	lw		x5, 20(x27)	# 2395
	lw		x6, 16(x27)	# 2395
	lw		x7, 12(x27)	# 2395
	lw		x8, 8(x27)	# 2395
	lw		x9, 4(x27)	# 2395
	ble		x8, x4, ble.13173	# 2395
	jalr	x0, x1, 0	# 2399
ble.13173:
	ori		x8, x0, 120	# 2396
	sw		x27, 0(x2)	# 2396
	sw		x9, -4(x2)	# 2396
	sw		x6, -8(x2)	# 2396
	sw		x5, -12(x2)	# 2396
	sw		x4, -16(x2)	# 2396
	sw		x8, -20(x2)	# 2396
	addi	x27, x7, 0
	sw		x1, -24(x2)	# 2396
	addi	x2, x2, -28	# 2396
	lw		x31, 0(x27)	# 2396
	jalr	x1, x31, 0	# 2396
	addi	x2, x2, 28	# 2396
	lw		x1, -24(x2)	# 2396
	addi	x5, x4, 0	# 2396
	lw		x4, -20(x2)	# 2396
	sw		x1, -24(x2)	# 2396
	addi	x2, x2, -28	# 2396
	jal		x1, min_caml_create_array	# 2396
	addi	x2, x2, 28	# 2396
	lw		x1, -24(x2)	# 2396
	ori		x5, x0, 4	# 2396
	lw		x6, -16(x2)	# 2396
	mul		x5, x6, x5	# 2396
	lw		x7, -12(x2)	# 2396
	add		x5, x7, x5	# 2396
	sw		x4, 0(x5)	# 2396
	ori		x4, x0, 4	# 2397
	mul		x4, x6, x4	# 2397
	add		x4, x7, x4	# 2397
	lw		x4, 0(x4)	# 2397
	ori		x5, x0, 118	# 2397
	lw		x27, -8(x2)	# 2397
	sw		x1, -24(x2)	# 2397
	addi	x2, x2, -28	# 2397
	lw		x31, 0(x27)	# 2397
	jalr	x1, x31, 0	# 2397
	addi	x2, x2, 28	# 2397
	lw		x1, -24(x2)	# 2397
	lw		x4, -4(x2)	# 2398
	lw		x5, -16(x2)	# 2398
	sub		x4, x5, x4	# 2398
	lw		x27, 0(x2)	# 2398
	lw		x31, 0(x27)	# 2398
	jalr	x0, x31, 0	# 2398
init_dirvec_constants.2999:
	lw		x6, 12(x27)	# 2407
	lw		x7, 8(x27)	# 2407
	lw		x8, 4(x27)	# 2407
	ble		x7, x5, ble.13175	# 2407
	jalr	x0, x1, 0	# 2410
ble.13175:
	ori		x7, x0, 4	# 2408
	mul		x7, x5, x7	# 2408
	add		x7, x4, x7	# 2408
	lw		x7, 0(x7)	# 2408
	sw		x4, 0(x2)	# 2408
	sw		x27, -4(x2)	# 2408
	sw		x8, -8(x2)	# 2408
	sw		x5, -12(x2)	# 2408
	addi	x4, x7, 0
	addi	x27, x6, 0
	sw		x1, -16(x2)	# 2408
	addi	x2, x2, -20	# 2408
	lw		x31, 0(x27)	# 2408
	jalr	x1, x31, 0	# 2408
	addi	x2, x2, 20	# 2408
	lw		x1, -16(x2)	# 2408
	lw		x4, -8(x2)	# 2409
	lw		x5, -12(x2)	# 2409
	sub		x5, x5, x4	# 2409
	lw		x4, 0(x2)	# 2409
	lw		x27, -4(x2)	# 2409
	lw		x31, 0(x27)	# 2409
	jalr	x0, x31, 0	# 2409
init_vecset_constants.3002:
	lw		x5, 16(x27)	# 2414
	lw		x6, 12(x27)	# 2414
	lw		x7, 8(x27)	# 2414
	lw		x8, 4(x27)	# 2414
	ble		x7, x4, ble.13177	# 2414
	jalr	x0, x1, 0	# 2417
ble.13177:
	ori		x7, x0, 4	# 2415
	mul		x7, x4, x7	# 2415
	add		x6, x6, x7	# 2415
	lw		x6, 0(x6)	# 2415
	ori		x7, x0, 119	# 2415
	sw		x27, 0(x2)	# 2415
	sw		x8, -4(x2)	# 2415
	sw		x4, -8(x2)	# 2415
	addi	x4, x6, 0
	addi	x27, x5, 0
	addi	x5, x7, 0
	sw		x1, -12(x2)	# 2415
	addi	x2, x2, -16	# 2415
	lw		x31, 0(x27)	# 2415
	jalr	x1, x31, 0	# 2415
	addi	x2, x2, 16	# 2415
	lw		x1, -12(x2)	# 2415
	lw		x4, -4(x2)	# 2416
	lw		x5, -8(x2)	# 2416
	sub		x4, x5, x4	# 2416
	lw		x27, 0(x2)	# 2416
	lw		x31, 0(x27)	# 2416
	jalr	x0, x31, 0	# 2416
init_dirvecs.3004:
	lw		x4, 16(x27)	# 2421
	lw		x5, 12(x27)	# 2421
	lw		x6, 8(x27)	# 2421
	lw		x7, 4(x27)	# 2421
	ori		x8, x0, 4	# 2421
	sw		x8, 0(x2)	# 2421
	sw		x4, -4(x2)	# 2421
	sw		x7, -8(x2)	# 2421
	sw		x6, -12(x2)	# 2421
	addi	x4, x8, 0
	addi	x27, x5, 0
	sw		x1, -16(x2)	# 2421
	addi	x2, x2, -20	# 2421
	lw		x31, 0(x27)	# 2421
	jalr	x1, x31, 0	# 2421
	addi	x2, x2, 20	# 2421
	lw		x1, -16(x2)	# 2421
	ori		x4, x0, 9	# 2422
	lw		x5, -8(x2)	# 2422
	lw		x27, -12(x2)	# 2422
	addi	x6, x5, 0
	sw		x1, -16(x2)	# 2422
	addi	x2, x2, -20	# 2422
	lw		x31, 0(x27)	# 2422
	jalr	x1, x31, 0	# 2422
	addi	x2, x2, 20	# 2422
	lw		x1, -16(x2)	# 2422
	lw		x4, 0(x2)	# 2423
	lw		x27, -4(x2)	# 2423
	lw		x31, 0(x27)	# 2423
	jalr	x0, x31, 0	# 2423
add_reflection.3006:
	lw		x6, 16(x27)	# 2432
	lw		x7, 12(x27)	# 2432
	lw		x8, 8(x27)	# 2432
	lw		x27, 4(x27)	# 2432
	sw		x8, 0(x2)	# 2432
	sw		x4, -4(x2)	# 2432
	sw		x5, -8(x2)	# 2432
	fsw		f0, -16(x2)	# 2432
	sw		x7, -24(x2)	# 2432
	fsw		f3, -32(x2)	# 2432
	fsw		f2, -40(x2)	# 2432
	fsw		f1, -48(x2)	# 2432
	sw		x6, -56(x2)	# 2432
	sw		x1, -60(x2)	# 2432
	addi	x2, x2, -64	# 2432
	lw		x31, 0(x27)	# 2432
	jalr	x1, x31, 0	# 2432
	addi	x2, x2, 64	# 2432
	lw		x1, -60(x2)	# 2432
	sw		x4, -60(x2)	# 2433
	sw		x1, -64(x2)	# 2433
	addi	x2, x2, -68	# 2433
	jal		x1, d_vec.2651	# 2433
	addi	x2, x2, 68	# 2433
	lw		x1, -64(x2)	# 2433
	flw		f0, -48(x2)	# 2433
	flw		f1, -40(x2)	# 2433
	flw		f2, -32(x2)	# 2433
	lw		x27, -56(x2)	# 2433
	sw		x1, -64(x2)	# 2433
	addi	x2, x2, -68	# 2433
	lw		x31, 0(x27)	# 2433
	jalr	x1, x31, 0	# 2433
	addi	x2, x2, 68	# 2433
	lw		x1, -64(x2)	# 2433
	lw		x4, -60(x2)	# 2434
	lw		x27, -24(x2)	# 2434
	sw		x1, -64(x2)	# 2434
	addi	x2, x2, -68	# 2434
	lw		x31, 0(x27)	# 2434
	jalr	x1, x31, 0	# 2434
	addi	x2, x2, 68	# 2434
	lw		x1, -64(x2)	# 2434
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f0, -16(x2)	# 2436
	fsw		f0, 8(x4)	# 2436
	lw		x5, -60(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -8(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	ori		x5, x0, 4	# 2436
	lw		x6, -4(x2)	# 2436
	mul		x5, x6, x5	# 2436
	lw		x6, 0(x2)	# 2436
	add		x5, x6, x5	# 2436
	sw		x4, 0(x5)	# 2436
	jalr	x0, x1, 0	# 2436
setup_rect_reflection.3013:
	lw		x6, 32(x27)	# 2441
	lw		x7, 28(x27)	# 2441
	lw		x8, 24(x27)	# 2441
	lw		x9, 20(x27)	# 2441
	lw		x10, 16(x27)	# 2441
	lw		x11, 12(x27)	# 2441
	lw		x12, 8(x27)	# 2441
	lw		x13, 4(x27)	# 2441
	ori		x14, x0, 4	# 2441
	mul		x4, x4, x14	# 2441
	ori		x14, x0, 4	# 2442
	mul		x14, x12, x14	# 2442
	add		x14, x7, x14	# 2442
	lw		x14, 0(x14)	# 2442
	lui		x15, %hi(l.6125)	# 2443
	ori		x15, x0, %lo(l.6125)	# 2443
	flw		f0, 0(x15)	# 2443
	sw		x7, 0(x2)	# 2443
	sw		x11, -4(x2)	# 2443
	sw		x14, -8(x2)	# 2443
	sw		x9, -12(x2)	# 2443
	sw		x4, -16(x2)	# 2443
	sw		x10, -20(x2)	# 2443
	sw		x13, -24(x2)	# 2443
	sw		x8, -28(x2)	# 2443
	sw		x12, -32(x2)	# 2443
	fsw		f0, -40(x2)	# 2443
	addi	x4, x5, 0
	addi	x27, x6, 0
	sw		x1, -48(x2)	# 2443
	addi	x2, x2, -52	# 2443
	lw		x31, 0(x27)	# 2443
	jalr	x1, x31, 0	# 2443
	addi	x2, x2, 52	# 2443
	lw		x1, -48(x2)	# 2443
	flw		f1, -40(x2)	# 2443
	fsub	f0, f1, f0	# 2443
	ori		x4, x0, 4	# 2444
	lw		x5, -32(x2)	# 2444
	mul		x4, x5, x4	# 2444
	lw		x6, -28(x2)	# 2444
	add		x4, x6, x4	# 2444
	flw		f1, 0(x4)	# 2444
	fsw		f0, -48(x2)	# 2444
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -56(x2)	# 2444
	addi	x2, x2, -60	# 2444
	jal		x1, fneg.2476	# 2444
	addi	x2, x2, 60	# 2444
	lw		x1, -56(x2)	# 2444
	ori		x4, x0, 4	# 2445
	lw		x5, -24(x2)	# 2445
	mul		x4, x5, x4	# 2445
	lw		x6, -28(x2)	# 2445
	add		x4, x6, x4	# 2445
	flw		f1, 0(x4)	# 2445
	fsw		f0, -56(x2)	# 2445
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -64(x2)	# 2445
	addi	x2, x2, -68	# 2445
	jal		x1, fneg.2476	# 2445
	addi	x2, x2, 68	# 2445
	lw		x1, -64(x2)	# 2445
	ori		x4, x0, 4	# 2446
	lw		x5, -20(x2)	# 2446
	mul		x4, x5, x4	# 2446
	lw		x6, -28(x2)	# 2446
	add		x4, x6, x4	# 2446
	flw		f1, 0(x4)	# 2446
	fsw		f0, -64(x2)	# 2446
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -72(x2)	# 2446
	addi	x2, x2, -76	# 2446
	jal		x1, fneg.2476	# 2446
	addi	x2, x2, 76	# 2446
	lw		x1, -72(x2)	# 2446
	fsub	f3, f3, f3	# 2446
	fadd	f3, f3, f0	# 2446
	lw		x4, -24(x2)	# 2447
	lw		x5, -16(x2)	# 2447
	add		x6, x5, x4	# 2447
	ori		x7, x0, 4	# 2447
	lw		x8, -32(x2)	# 2447
	mul		x7, x8, x7	# 2447
	lw		x9, -28(x2)	# 2447
	add		x7, x9, x7	# 2447
	flw		f1, 0(x7)	# 2447
	flw		f0, -48(x2)	# 2447
	flw		f2, -64(x2)	# 2447
	lw		x7, -8(x2)	# 2447
	lw		x27, -12(x2)	# 2447
	fsw		f3, -72(x2)	# 2447
	addi	x5, x6, 0
	addi	x4, x7, 0
	sw		x1, -80(x2)	# 2447
	addi	x2, x2, -84	# 2447
	lw		x31, 0(x27)	# 2447
	jalr	x1, x31, 0	# 2447
	addi	x2, x2, 84	# 2447
	lw		x1, -80(x2)	# 2447
	lw		x4, -24(x2)	# 2448
	lw		x5, -8(x2)	# 2448
	add		x6, x5, x4	# 2448
	lw		x7, -20(x2)	# 2448
	lw		x8, -16(x2)	# 2448
	add		x9, x8, x7	# 2448
	ori		x10, x0, 4	# 2448
	mul		x4, x4, x10	# 2448
	lw		x10, -28(x2)	# 2448
	add		x4, x10, x4	# 2448
	flw		f2, 0(x4)	# 2448
	flw		f0, -48(x2)	# 2448
	flw		f1, -56(x2)	# 2448
	flw		f3, -72(x2)	# 2448
	lw		x27, -12(x2)	# 2448
	addi	x5, x9, 0
	addi	x4, x6, 0
	sw		x1, -80(x2)	# 2448
	addi	x2, x2, -84	# 2448
	lw		x31, 0(x27)	# 2448
	jalr	x1, x31, 0	# 2448
	addi	x2, x2, 84	# 2448
	lw		x1, -80(x2)	# 2448
	lw		x4, -20(x2)	# 2449
	lw		x5, -8(x2)	# 2449
	add		x6, x5, x4	# 2449
	lw		x7, -4(x2)	# 2449
	lw		x8, -16(x2)	# 2449
	add		x8, x8, x7	# 2449
	ori		x9, x0, 4	# 2449
	mul		x4, x4, x9	# 2449
	lw		x9, -28(x2)	# 2449
	add		x4, x9, x4	# 2449
	flw		f3, 0(x4)	# 2449
	flw		f0, -48(x2)	# 2449
	flw		f1, -56(x2)	# 2449
	flw		f2, -64(x2)	# 2449
	lw		x27, -12(x2)	# 2449
	addi	x5, x8, 0
	addi	x4, x6, 0
	sw		x1, -80(x2)	# 2449
	addi	x2, x2, -84	# 2449
	lw		x31, 0(x27)	# 2449
	jalr	x1, x31, 0	# 2449
	addi	x2, x2, 84	# 2449
	lw		x1, -80(x2)	# 2449
	lw		x4, -4(x2)	# 2450
	lw		x5, -8(x2)	# 2450
	add		x4, x5, x4	# 2450
	ori		x5, x0, 4	# 2450
	lw		x6, -32(x2)	# 2450
	mul		x5, x6, x5	# 2450
	lw		x6, 0(x2)	# 2450
	add		x5, x6, x5	# 2450
	sw		x4, 0(x5)	# 2450
	jalr	x0, x1, 0	# 2450
setup_surface_reflection.3016:
	lw		x6, 44(x27)	# 2455
	lw		x7, 40(x27)	# 2455
	lw		x8, 36(x27)	# 2455
	lw		x9, 32(x27)	# 2455
	lw		x10, 28(x27)	# 2455
	lw		x11, 24(x27)	# 2455
	lw		x12, 20(x27)	# 2455
	lw		x13, 16(x27)	# 2455
	lw		x14, 12(x27)	# 2455
	lw		x15, 8(x27)	# 2455
	lw		x16, 4(x27)	# 2455
	ori		x17, x0, 4	# 2455
	mul		x4, x4, x17	# 2455
	add		x4, x4, x16	# 2455
	ori		x17, x0, 4	# 2456
	mul		x17, x15, x17	# 2456
	add		x17, x11, x17	# 2456
	lw		x17, 0(x17)	# 2456
	lui		x18, %hi(l.6125)	# 2457
	ori		x18, x0, %lo(l.6125)	# 2457
	flw		f0, 0(x18)	# 2457
	sw		x11, 0(x2)	# 2457
	sw		x4, -4(x2)	# 2457
	sw		x17, -8(x2)	# 2457
	sw		x13, -12(x2)	# 2457
	sw		x14, -16(x2)	# 2457
	sw		x7, -20(x2)	# 2457
	sw		x16, -24(x2)	# 2457
	sw		x8, -28(x2)	# 2457
	sw		x15, -32(x2)	# 2457
	sw		x9, -36(x2)	# 2457
	sw		x12, -40(x2)	# 2457
	sw		x6, -44(x2)	# 2457
	sw		x5, -48(x2)	# 2457
	fsw		f0, -56(x2)	# 2457
	addi	x4, x5, 0
	addi	x27, x10, 0
	sw		x1, -64(x2)	# 2457
	addi	x2, x2, -68	# 2457
	lw		x31, 0(x27)	# 2457
	jalr	x1, x31, 0	# 2457
	addi	x2, x2, 68	# 2457
	lw		x1, -64(x2)	# 2457
	flw		f1, -56(x2)	# 2457
	fsub	f0, f1, f0	# 2457
	lw		x4, -48(x2)	# 2458
	fsw		f0, -64(x2)	# 2458
	sw		x1, -72(x2)	# 2458
	addi	x2, x2, -76	# 2458
	jal		x1, o_param_abc.2606	# 2458
	addi	x2, x2, 76	# 2458
	lw		x1, -72(x2)	# 2458
	addi	x5, x4, 0	# 2458
	lw		x4, -40(x2)	# 2458
	lw		x27, -44(x2)	# 2458
	sw		x1, -72(x2)	# 2458
	addi	x2, x2, -76	# 2458
	lw		x31, 0(x27)	# 2458
	jalr	x1, x31, 0	# 2458
	addi	x2, x2, 76	# 2458
	lw		x1, -72(x2)	# 2458
	lui		x4, %hi(l.6530)	# 2461
	ori		x4, x0, %lo(l.6530)	# 2461
	flw		f1, 0(x4)	# 2461
	lw		x4, -48(x2)	# 2461
	lw		x27, -36(x2)	# 2461
	fsw		f0, -72(x2)	# 2461
	fsw		f1, -80(x2)	# 2461
	sw		x1, -88(x2)	# 2461
	addi	x2, x2, -92	# 2461
	lw		x31, 0(x27)	# 2461
	jalr	x1, x31, 0	# 2461
	addi	x2, x2, 92	# 2461
	lw		x1, -88(x2)	# 2461
	flw		f1, -80(x2)	# 2461
	fmul	f0, f1, f0	# 2461
	flw		f2, -72(x2)	# 2461
	fmul	f0, f0, f2	# 2461
	ori		x4, x0, 4	# 2461
	lw		x5, -32(x2)	# 2461
	mul		x4, x5, x4	# 2461
	lw		x6, -40(x2)	# 2461
	add		x4, x6, x4	# 2461
	flw		f3, 0(x4)	# 2461
	fsub	f0, f0, f3	# 2461
	lw		x4, -48(x2)	# 2462
	lw		x27, -28(x2)	# 2462
	fsw		f0, -88(x2)	# 2462
	sw		x1, -96(x2)	# 2462
	addi	x2, x2, -100	# 2462
	lw		x31, 0(x27)	# 2462
	jalr	x1, x31, 0	# 2462
	addi	x2, x2, 100	# 2462
	lw		x1, -96(x2)	# 2462
	flw		f1, -80(x2)	# 2462
	fmul	f0, f1, f0	# 2462
	flw		f2, -72(x2)	# 2462
	fmul	f0, f0, f2	# 2462
	ori		x4, x0, 4	# 2462
	lw		x5, -24(x2)	# 2462
	mul		x4, x5, x4	# 2462
	lw		x6, -40(x2)	# 2462
	add		x4, x6, x4	# 2462
	flw		f3, 0(x4)	# 2462
	fsub	f0, f0, f3	# 2462
	lw		x4, -48(x2)	# 2463
	lw		x27, -20(x2)	# 2463
	fsw		f0, -96(x2)	# 2463
	sw		x1, -104(x2)	# 2463
	addi	x2, x2, -108	# 2463
	lw		x31, 0(x27)	# 2463
	jalr	x1, x31, 0	# 2463
	addi	x2, x2, 108	# 2463
	lw		x1, -104(x2)	# 2463
	flw		f1, -80(x2)	# 2463
	fmul	f0, f1, f0	# 2463
	flw		f1, -72(x2)	# 2463
	fmul	f0, f0, f1	# 2463
	ori		x4, x0, 4	# 2463
	lw		x5, -16(x2)	# 2463
	mul		x4, x5, x4	# 2463
	lw		x5, -40(x2)	# 2463
	add		x4, x5, x4	# 2463
	flw		f1, 0(x4)	# 2463
	fsub	f3, f0, f1	# 2463
	flw		f0, -64(x2)	# 2460
	flw		f1, -88(x2)	# 2460
	flw		f2, -96(x2)	# 2460
	lw		x4, -8(x2)	# 2460
	lw		x5, -4(x2)	# 2460
	lw		x27, -12(x2)	# 2460
	sw		x1, -104(x2)	# 2460
	addi	x2, x2, -108	# 2460
	lw		x31, 0(x27)	# 2460
	jalr	x1, x31, 0	# 2460
	addi	x2, x2, 108	# 2460
	lw		x1, -104(x2)	# 2460
	lw		x4, -24(x2)	# 2464
	lw		x5, -8(x2)	# 2464
	add		x4, x5, x4	# 2464
	ori		x5, x0, 4	# 2464
	lw		x6, -32(x2)	# 2464
	mul		x5, x6, x5	# 2464
	lw		x6, 0(x2)	# 2464
	add		x5, x6, x5	# 2464
	sw		x4, 0(x5)	# 2464
	jalr	x0, x1, 0	# 2464
setup_reflections.3019:
	lw		x5, 28(x27)	# 2470
	lw		x6, 24(x27)	# 2470
	lw		x7, 20(x27)	# 2470
	lw		x8, 16(x27)	# 2470
	lw		x9, 12(x27)	# 2470
	lw		x10, 8(x27)	# 2470
	lw		x11, 4(x27)	# 2470
	ble		x10, x4, ble.13186	# 2470
	jalr	x0, x1, 0	# 2483
ble.13186:
	ori		x12, x0, 4	# 2471
	mul		x12, x4, x12	# 2471
	add		x7, x7, x12	# 2471
	lw		x7, 0(x7)	# 2471
	sw		x5, 0(x2)	# 2472
	sw		x4, -4(x2)	# 2472
	sw		x6, -8(x2)	# 2472
	sw		x11, -12(x2)	# 2472
	sw		x10, -16(x2)	# 2472
	sw		x7, -20(x2)	# 2472
	sw		x8, -24(x2)	# 2472
	sw		x9, -28(x2)	# 2472
	addi	x4, x7, 0
	sw		x1, -32(x2)	# 2472
	addi	x2, x2, -36	# 2472
	jal		x1, o_reflectiontype.2594	# 2472
	addi	x2, x2, 36	# 2472
	lw		x1, -32(x2)	# 2472
	lw		x5, -28(x2)	# 2472
	beq		x4, x5, beq.13188	# 2472
	jalr	x0, x1, 0	# 2482
beq.13188:
	lw		x4, -20(x2)	# 2473
	lw		x27, -24(x2)	# 2473
	sw		x1, -32(x2)	# 2473
	addi	x2, x2, -36	# 2473
	lw		x31, 0(x27)	# 2473
	jalr	x1, x31, 0	# 2473
	addi	x2, x2, 36	# 2473
	lw		x1, -32(x2)	# 2473
	lui		x4, %hi(l.6125)	# 2473
	ori		x4, x0, %lo(l.6125)	# 2473
	flw		f1, 0(x4)	# 2473
	sw		x1, -32(x2)	# 2473
	addi	x2, x2, -36	# 2473
	jal		x1, fless.2480	# 2473
	addi	x2, x2, 36	# 2473
	lw		x1, -32(x2)	# 2473
	lw		x5, -16(x2)	# 2473
	beq		x4, x5, beq.13190	# 2473
	lw		x4, -20(x2)	# 2474
	sw		x1, -32(x2)	# 2474
	addi	x2, x2, -36	# 2474
	jal		x1, o_form.2592	# 2474
	addi	x2, x2, 36	# 2474
	lw		x1, -32(x2)	# 2474
	lw		x5, -12(x2)	# 2476
	beq		x4, x5, beq.13191	# 2476
	lw		x5, -28(x2)	# 2478
	beq		x4, x5, beq.13192	# 2478
	jalr	x0, x1, 0	# 2480
beq.13192:
	lw		x4, -4(x2)	# 2479
	lw		x5, -20(x2)	# 2479
	lw		x27, 0(x2)	# 2479
	lw		x31, 0(x27)	# 2479
	jalr	x0, x31, 0	# 2479
beq.13191:
	lw		x4, -4(x2)	# 2477
	lw		x5, -20(x2)	# 2477
	lw		x27, -8(x2)	# 2477
	lw		x31, 0(x27)	# 2477
	jalr	x0, x31, 0	# 2477
beq.13190:
	jalr	x0, x1, 0	# 2481
rt.3021:
	lw		x7, 72(x27)	# 2492
	lw		x8, 68(x27)	# 2492
	lw		x9, 64(x27)	# 2492
	lw		x10, 60(x27)	# 2492
	lw		x11, 56(x27)	# 2492
	lw		x12, 52(x27)	# 2492
	lw		x13, 48(x27)	# 2492
	lw		x14, 44(x27)	# 2492
	lw		x15, 40(x27)	# 2492
	lw		x16, 36(x27)	# 2492
	lw		x17, 32(x27)	# 2492
	lw		x18, 28(x27)	# 2492
	lw		x19, 24(x27)	# 2492
	lw		x20, 20(x27)	# 2492
	lw		x21, 16(x27)	# 2492
	lw		x22, 12(x27)	# 2492
	lw		x23, 8(x27)	# 2492
	lw		x24, 4(x27)	# 2492
	ori		x25, x0, 4	# 2492
	mul		x25, x23, x25	# 2492
	add		x25, x19, x25	# 2492
	sw		x4, 0(x25)	# 2492
	ori		x25, x0, 4	# 2493
	mul		x25, x24, x25	# 2493
	add		x19, x19, x25	# 2493
	sw		x5, 0(x19)	# 2493
	div		x19, x4, x22	# 2494
	ori		x25, x0, 4	# 2494
	mul		x25, x23, x25	# 2494
	add		x25, x20, x25	# 2494
	sw		x19, 0(x25)	# 2494
	div		x5, x5, x22	# 2495
	ori		x19, x0, 4	# 2495
	mul		x19, x24, x19	# 2495
	add		x19, x20, x19	# 2495
	sw		x5, 0(x19)	# 2495
	lui		x5, %hi(l.7885)	# 2496
	ori		x5, x0, %lo(l.7885)	# 2496
	flw		f0, 0(x5)	# 2496
	sw		x22, 0(x2)	# 2496
	sw		x12, -4(x2)	# 2496
	sw		x14, -8(x2)	# 2496
	sw		x9, -12(x2)	# 2496
	sw		x24, -16(x2)	# 2496
	sw		x15, -20(x2)	# 2496
	sw		x10, -24(x2)	# 2496
	sw		x17, -28(x2)	# 2496
	sw		x8, -32(x2)	# 2496
	sw		x16, -36(x2)	# 2496
	sw		x18, -40(x2)	# 2496
	sw		x6, -44(x2)	# 2496
	sw		x7, -48(x2)	# 2496
	sw		x13, -52(x2)	# 2496
	sw		x21, -56(x2)	# 2496
	sw		x11, -60(x2)	# 2496
	sw		x23, -64(x2)	# 2496
	fsw		f0, -72(x2)	# 2496
	sw		x1, -80(x2)	# 2496
	addi	x2, x2, -84	# 2496
	jal		x1, float_of_int.2489	# 2496
	addi	x2, x2, 84	# 2496
	lw		x1, -80(x2)	# 2496
	flw		f1, -72(x2)	# 2496
	fdiv	f0, f1, f0	# 2496
	ori		x4, x0, 4	# 2496
	lw		x5, -64(x2)	# 2496
	mul		x4, x5, x4	# 2496
	lw		x6, -60(x2)	# 2496
	add		x4, x6, x4	# 2496
	fsw		f0, 0(x4)	# 2496
	lw		x27, -56(x2)	# 2497
	sw		x1, -80(x2)	# 2497
	addi	x2, x2, -84	# 2497
	lw		x31, 0(x27)	# 2497
	jalr	x1, x31, 0	# 2497
	addi	x2, x2, 84	# 2497
	lw		x1, -80(x2)	# 2497
	lw		x27, -56(x2)	# 2498
	sw		x4, -80(x2)	# 2498
	sw		x1, -84(x2)	# 2498
	addi	x2, x2, -88	# 2498
	lw		x31, 0(x27)	# 2498
	jalr	x1, x31, 0	# 2498
	addi	x2, x2, 88	# 2498
	lw		x1, -84(x2)	# 2498
	lw		x27, -56(x2)	# 2499
	sw		x4, -84(x2)	# 2499
	sw		x1, -88(x2)	# 2499
	addi	x2, x2, -92	# 2499
	lw		x31, 0(x27)	# 2499
	jalr	x1, x31, 0	# 2499
	addi	x2, x2, 92	# 2499
	lw		x1, -88(x2)	# 2499
	lw		x27, -52(x2)	# 2500
	sw		x4, -88(x2)	# 2500
	sw		x1, -92(x2)	# 2500
	addi	x2, x2, -96	# 2500
	lw		x31, 0(x27)	# 2500
	jalr	x1, x31, 0	# 2500
	addi	x2, x2, 96	# 2500
	lw		x1, -92(x2)	# 2500
	lw		x4, -44(x2)	# 2501
	lw		x27, -48(x2)	# 2501
	sw		x1, -92(x2)	# 2501
	addi	x2, x2, -96	# 2501
	lw		x31, 0(x27)	# 2501
	jalr	x1, x31, 0	# 2501
	addi	x2, x2, 96	# 2501
	lw		x1, -92(x2)	# 2501
	lw		x27, -40(x2)	# 2502
	sw		x1, -92(x2)	# 2502
	addi	x2, x2, -96	# 2502
	lw		x31, 0(x27)	# 2502
	jalr	x1, x31, 0	# 2502
	addi	x2, x2, 96	# 2502
	lw		x1, -92(x2)	# 2502
	lw		x4, -36(x2)	# 2503
	sw		x1, -92(x2)	# 2503
	addi	x2, x2, -96	# 2503
	jal		x1, d_vec.2651	# 2503
	addi	x2, x2, 96	# 2503
	lw		x1, -92(x2)	# 2503
	lw		x5, -28(x2)	# 2503
	lw		x27, -32(x2)	# 2503
	sw		x1, -92(x2)	# 2503
	addi	x2, x2, -96	# 2503
	lw		x31, 0(x27)	# 2503
	jalr	x1, x31, 0	# 2503
	addi	x2, x2, 96	# 2503
	lw		x1, -92(x2)	# 2503
	lw		x4, -36(x2)	# 2504
	lw		x27, -24(x2)	# 2504
	sw		x1, -92(x2)	# 2504
	addi	x2, x2, -96	# 2504
	lw		x31, 0(x27)	# 2504
	jalr	x1, x31, 0	# 2504
	addi	x2, x2, 96	# 2504
	lw		x1, -92(x2)	# 2504
	ori		x4, x0, 4	# 2505
	lw		x5, -64(x2)	# 2505
	mul		x4, x5, x4	# 2505
	lw		x6, -20(x2)	# 2505
	add		x4, x6, x4	# 2505
	lw		x4, 0(x4)	# 2505
	lw		x6, -16(x2)	# 2505
	sub		x4, x4, x6	# 2505
	lw		x27, -12(x2)	# 2505
	sw		x1, -92(x2)	# 2505
	addi	x2, x2, -96	# 2505
	lw		x31, 0(x27)	# 2505
	jalr	x1, x31, 0	# 2505
	addi	x2, x2, 96	# 2505
	lw		x1, -92(x2)	# 2505
	lw		x4, -84(x2)	# 2506
	lw		x5, -64(x2)	# 2506
	lw		x27, -8(x2)	# 2506
	addi	x6, x5, 0
	sw		x1, -92(x2)	# 2506
	addi	x2, x2, -96	# 2506
	lw		x31, 0(x27)	# 2506
	jalr	x1, x31, 0	# 2506
	addi	x2, x2, 96	# 2506
	lw		x1, -92(x2)	# 2506
	lw		x4, -64(x2)	# 2507
	lw		x5, -80(x2)	# 2507
	lw		x6, -84(x2)	# 2507
	lw		x7, -88(x2)	# 2507
	lw		x8, 0(x2)	# 2507
	lw		x9, -44(x2)	# 2507
	lw		x27, -4(x2)	# 2507
	lw		x31, 0(x27)	# 2507
	jalr	x0, x31, 0	# 2507
min_caml_start:
	addi	x2, x2, -4
	addi	x30, x0, 0
	lui		x4, %hi(l.7893)	# 20
	ori		x4, x0, %lo(l.7893)	# 20
	flw		f0, 0(x4)	# 20
	lui		x4, %hi(l.7895)	# 21
	ori		x4, x0, %lo(l.7895)	# 21
	flw		f1, 0(x4)	# 21
	lui		x4, %hi(l.7897)	# 22
	ori		x4, x0, %lo(l.7897)	# 22
	flw		f2, 0(x4)	# 22
	lui		x4, %hi(l.7899)	# 23
	ori		x4, x0, %lo(l.7899)	# 23
	flw		f3, 0(x4)	# 23
	addi	x4, x3, 0	# 45
	addi	x3, x3, 20	# 45
	lui		x5, %hi(sin.2501)	# 45
	ori		x5, x0, %lo(sin.2501)	# 45
	sw		x5, 0(x4)	# 53
	fsw		f3, 16(x4)	# 53
	fsw		f2, 12(x4)	# 53
	fsw		f1, 8(x4)	# 53
	fsw		f0, 4(x4)	# 53
	addi	x5, x3, 0	# 53
	addi	x3, x3, 16	# 53
	lui		x6, %hi(cos.2503)	# 53
	ori		x6, x0, %lo(cos.2503)	# 53
	sw		x6, 0(x5)	# 58
	sw		x4, 12(x5)	# 58
	fsw		f3, 8(x5)	# 58
	fsw		f2, 4(x5)	# 58
	addi	x6, x3, 0	# 58
	addi	x3, x3, 12	# 58
	lui		x7, %hi(atan.2505)	# 58
	ori		x7, x0, %lo(atan.2505)	# 58
	sw		x7, 0(x6)	# 76
	fsw		f3, 8(x6)	# 76
	fsw		f2, 4(x6)	# 76
	ori		x7, x0, 1	# 76
	addi	x8, x0, 0	# 76
	sw		x6, 0(x2)	# 76
	sw		x5, -4(x2)	# 76
	sw		x4, -8(x2)	# 76
	sw		x7, -12(x2)	# 76
	sw		x8, -16(x2)	# 76
	addi	x5, x8, 0
	addi	x4, x7, 0
	sw		x1, -20(x2)	# 76
	addi	x2, x2, -24	# 76
	jal		x1, min_caml_create_array	# 76
	addi	x2, x2, 24	# 76
	lw		x1, -20(x2)	# 76
	lui		x5, %hi(l.6117)	# 81
	ori		x5, x0, %lo(l.6117)	# 81
	flw		f0, 0(x5)	# 81
	lw		x5, -16(x2)	# 81
	sw		x4, -20(x2)	# 81
	fsw		f0, -24(x2)	# 81
	addi	x4, x5, 0
	sw		x1, -32(x2)	# 81
	addi	x2, x2, -36	# 81
	jal		x1, min_caml_create_float_array	# 81
	addi	x2, x2, 36	# 81
	lw		x1, -32(x2)	# 81
	ori		x5, x0, 60	# 82
	addi	x6, x3, 0	# 82
	addi	x3, x3, 44	# 82
	sw		x4, 40(x6)	# 82
	sw		x4, 36(x6)	# 82
	sw		x4, 32(x6)	# 82
	sw		x4, 28(x6)	# 82
	lw		x7, -16(x2)	# 82
	sw		x7, 24(x6)	# 82
	sw		x4, 20(x6)	# 82
	sw		x4, 16(x6)	# 82
	sw		x7, 12(x6)	# 82
	sw		x7, 8(x6)	# 82
	sw		x7, 4(x6)	# 82
	sw		x7, 0(x6)	# 82
	addi	x4, x6, 0	# 82
	sw		x5, -32(x2)	# 82
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -36(x2)	# 82
	addi	x2, x2, -40	# 82
	jal		x1, min_caml_create_array	# 82
	addi	x2, x2, 40	# 82
	lw		x1, -36(x2)	# 82
	ori		x5, x0, 3	# 86
	flw		f0, -24(x2)	# 86
	sw		x4, -36(x2)	# 86
	sw		x5, -40(x2)	# 86
	addi	x4, x5, 0
	sw		x1, -44(x2)	# 86
	addi	x2, x2, -48	# 86
	jal		x1, min_caml_create_float_array	# 86
	addi	x2, x2, 48	# 86
	lw		x1, -44(x2)	# 86
	flw		f0, -24(x2)	# 89
	lw		x5, -40(x2)	# 89
	sw		x4, -44(x2)	# 89
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 89
	addi	x2, x2, -52	# 89
	jal		x1, min_caml_create_float_array	# 89
	addi	x2, x2, 52	# 89
	lw		x1, -48(x2)	# 89
	flw		f0, -24(x2)	# 92
	lw		x5, -40(x2)	# 92
	sw		x4, -48(x2)	# 92
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 92
	addi	x2, x2, -56	# 92
	jal		x1, min_caml_create_float_array	# 92
	addi	x2, x2, 56	# 92
	lw		x1, -52(x2)	# 92
	lui		x5, %hi(l.7914)	# 95
	ori		x5, x0, %lo(l.7914)	# 95
	flw		f0, 0(x5)	# 95
	lw		x5, -12(x2)	# 95
	fsw		f0, -56(x2)	# 95
	sw		x4, -64(x2)	# 95
	addi	x4, x5, 0
	sw		x1, -68(x2)	# 95
	addi	x2, x2, -72	# 95
	jal		x1, min_caml_create_float_array	# 95
	addi	x2, x2, 72	# 95
	lw		x1, -68(x2)	# 95
	ori		x5, x0, 50	# 98
	lui		x6, -1	# 98
	ori		x6, x0, -1	# 98
	lw		x7, -12(x2)	# 98
	sw		x6, -68(x2)	# 98
	sw		x4, -72(x2)	# 98
	sw		x5, -76(x2)	# 98
	addi	x5, x6, 0
	addi	x4, x7, 0
	sw		x1, -80(x2)	# 98
	addi	x2, x2, -84	# 98
	jal		x1, min_caml_create_array	# 98
	addi	x2, x2, 84	# 98
	lw		x1, -80(x2)	# 98
	addi	x5, x4, 0	# 98
	lw		x4, -76(x2)	# 98
	sw		x1, -80(x2)	# 98
	addi	x2, x2, -84	# 98
	jal		x1, min_caml_create_array	# 98
	addi	x2, x2, 84	# 98
	lw		x1, -80(x2)	# 98
	ori		x5, x0, 4	# 101
	lw		x6, -16(x2)	# 101
	mul		x5, x6, x5	# 101
	add		x5, x4, x5	# 101
	lw		x5, 0(x5)	# 101
	lw		x7, -12(x2)	# 101
	sw		x4, -80(x2)	# 101
	addi	x4, x7, 0
	sw		x1, -84(x2)	# 101
	addi	x2, x2, -88	# 101
	jal		x1, min_caml_create_array	# 101
	addi	x2, x2, 88	# 101
	lw		x1, -84(x2)	# 101
	addi	x5, x4, 0	# 101
	lw		x4, -12(x2)	# 101
	sw		x1, -84(x2)	# 101
	addi	x2, x2, -88	# 101
	jal		x1, min_caml_create_array	# 101
	addi	x2, x2, 88	# 101
	lw		x1, -84(x2)	# 101
	flw		f0, -24(x2)	# 106
	lw		x5, -12(x2)	# 106
	sw		x4, -84(x2)	# 106
	addi	x4, x5, 0
	sw		x1, -88(x2)	# 106
	addi	x2, x2, -92	# 106
	jal		x1, min_caml_create_float_array	# 106
	addi	x2, x2, 92	# 106
	lw		x1, -88(x2)	# 106
	lw		x5, -12(x2)	# 109
	lw		x6, -16(x2)	# 109
	sw		x4, -88(x2)	# 109
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -92(x2)	# 109
	addi	x2, x2, -96	# 109
	jal		x1, min_caml_create_array	# 109
	addi	x2, x2, 96	# 109
	lw		x1, -92(x2)	# 109
	lui		x5, %hi(l.7919)	# 112
	ori		x5, x0, %lo(l.7919)	# 112
	flw		f0, 0(x5)	# 112
	lw		x5, -12(x2)	# 112
	fsw		f0, -96(x2)	# 112
	sw		x4, -104(x2)	# 112
	addi	x4, x5, 0
	sw		x1, -108(x2)	# 112
	addi	x2, x2, -112	# 112
	jal		x1, min_caml_create_float_array	# 112
	addi	x2, x2, 112	# 112
	lw		x1, -108(x2)	# 112
	flw		f0, -24(x2)	# 115
	lw		x5, -40(x2)	# 115
	sw		x4, -108(x2)	# 115
	addi	x4, x5, 0
	sw		x1, -112(x2)	# 115
	addi	x2, x2, -116	# 115
	jal		x1, min_caml_create_float_array	# 115
	addi	x2, x2, 116	# 115
	lw		x1, -112(x2)	# 115
	lw		x5, -12(x2)	# 118
	lw		x6, -16(x2)	# 118
	sw		x4, -112(x2)	# 118
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -116(x2)	# 118
	addi	x2, x2, -120	# 118
	jal		x1, min_caml_create_array	# 118
	addi	x2, x2, 120	# 118
	lw		x1, -116(x2)	# 118
	flw		f0, -24(x2)	# 121
	lw		x5, -40(x2)	# 121
	sw		x4, -116(x2)	# 121
	addi	x4, x5, 0
	sw		x1, -120(x2)	# 121
	addi	x2, x2, -124	# 121
	jal		x1, min_caml_create_float_array	# 121
	addi	x2, x2, 124	# 121
	lw		x1, -120(x2)	# 121
	flw		f0, -24(x2)	# 124
	lw		x5, -40(x2)	# 124
	sw		x4, -120(x2)	# 124
	addi	x4, x5, 0
	sw		x1, -124(x2)	# 124
	addi	x2, x2, -128	# 124
	jal		x1, min_caml_create_float_array	# 124
	addi	x2, x2, 128	# 124
	lw		x1, -124(x2)	# 124
	flw		f0, -24(x2)	# 128
	lw		x5, -40(x2)	# 128
	sw		x4, -124(x2)	# 128
	addi	x4, x5, 0
	sw		x1, -128(x2)	# 128
	addi	x2, x2, -132	# 128
	jal		x1, min_caml_create_float_array	# 128
	addi	x2, x2, 132	# 128
	lw		x1, -128(x2)	# 128
	flw		f0, -24(x2)	# 131
	lw		x5, -40(x2)	# 131
	sw		x4, -128(x2)	# 131
	addi	x4, x5, 0
	sw		x1, -132(x2)	# 131
	addi	x2, x2, -136	# 131
	jal		x1, min_caml_create_float_array	# 131
	addi	x2, x2, 136	# 131
	lw		x1, -132(x2)	# 131
	ori		x5, x0, 2	# 135
	lw		x6, -16(x2)	# 135
	sw		x4, -132(x2)	# 135
	sw		x5, -136(x2)	# 135
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -140(x2)	# 135
	addi	x2, x2, -144	# 135
	jal		x1, min_caml_create_array	# 135
	addi	x2, x2, 144	# 135
	lw		x1, -140(x2)	# 135
	lw		x5, -136(x2)	# 138
	lw		x6, -16(x2)	# 138
	sw		x4, -140(x2)	# 138
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -144(x2)	# 138
	addi	x2, x2, -148	# 138
	jal		x1, min_caml_create_array	# 138
	addi	x2, x2, 148	# 138
	lw		x1, -144(x2)	# 138
	flw		f0, -24(x2)	# 141
	lw		x5, -12(x2)	# 141
	sw		x4, -144(x2)	# 141
	addi	x4, x5, 0
	sw		x1, -148(x2)	# 141
	addi	x2, x2, -152	# 141
	jal		x1, min_caml_create_float_array	# 141
	addi	x2, x2, 152	# 141
	lw		x1, -148(x2)	# 141
	flw		f0, -24(x2)	# 145
	lw		x5, -40(x2)	# 145
	sw		x4, -148(x2)	# 145
	addi	x4, x5, 0
	sw		x1, -152(x2)	# 145
	addi	x2, x2, -156	# 145
	jal		x1, min_caml_create_float_array	# 145
	addi	x2, x2, 156	# 145
	lw		x1, -152(x2)	# 145
	flw		f0, -24(x2)	# 148
	lw		x5, -40(x2)	# 148
	sw		x4, -152(x2)	# 148
	addi	x4, x5, 0
	sw		x1, -156(x2)	# 148
	addi	x2, x2, -160	# 148
	jal		x1, min_caml_create_float_array	# 148
	addi	x2, x2, 160	# 148
	lw		x1, -156(x2)	# 148
	flw		f0, -24(x2)	# 152
	lw		x5, -40(x2)	# 152
	sw		x4, -156(x2)	# 152
	addi	x4, x5, 0
	sw		x1, -160(x2)	# 152
	addi	x2, x2, -164	# 152
	jal		x1, min_caml_create_float_array	# 152
	addi	x2, x2, 164	# 152
	lw		x1, -160(x2)	# 152
	flw		f0, -24(x2)	# 154
	lw		x5, -40(x2)	# 154
	sw		x4, -160(x2)	# 154
	addi	x4, x5, 0
	sw		x1, -164(x2)	# 154
	addi	x2, x2, -168	# 154
	jal		x1, min_caml_create_float_array	# 154
	addi	x2, x2, 168	# 154
	lw		x1, -164(x2)	# 154
	flw		f0, -24(x2)	# 156
	lw		x5, -40(x2)	# 156
	sw		x4, -164(x2)	# 156
	addi	x4, x5, 0
	sw		x1, -168(x2)	# 156
	addi	x2, x2, -172	# 156
	jal		x1, min_caml_create_float_array	# 156
	addi	x2, x2, 172	# 156
	lw		x1, -168(x2)	# 156
	flw		f0, -24(x2)	# 160
	lw		x5, -40(x2)	# 160
	sw		x4, -168(x2)	# 160
	addi	x4, x5, 0
	sw		x1, -172(x2)	# 160
	addi	x2, x2, -176	# 160
	jal		x1, min_caml_create_float_array	# 160
	addi	x2, x2, 176	# 160
	lw		x1, -172(x2)	# 160
	flw		f0, -24(x2)	# 165
	lw		x5, -16(x2)	# 165
	sw		x4, -172(x2)	# 165
	addi	x4, x5, 0
	sw		x1, -176(x2)	# 165
	addi	x2, x2, -180	# 165
	jal		x1, min_caml_create_float_array	# 165
	addi	x2, x2, 180	# 165
	lw		x1, -176(x2)	# 165
	addi	x5, x4, 0	# 165
	lw		x4, -16(x2)	# 166
	sw		x5, -176(x2)	# 166
	sw		x1, -180(x2)	# 166
	addi	x2, x2, -184	# 166
	jal		x1, min_caml_create_array	# 166
	addi	x2, x2, 184	# 166
	lw		x1, -180(x2)	# 166
	addi	x5, x3, 0	# 167
	addi	x3, x3, 8	# 167
	sw		x4, 4(x5)	# 167
	lw		x4, -176(x2)	# 167
	sw		x4, 0(x5)	# 167
	lw		x4, -16(x2)	# 167
	sw		x1, -180(x2)	# 167
	addi	x2, x2, -184	# 167
	jal		x1, min_caml_create_array	# 167
	addi	x2, x2, 184	# 167
	lw		x1, -180(x2)	# 167
	addi	x5, x4, 0	# 167
	ori		x4, x0, 5	# 168
	sw		x4, -180(x2)	# 168
	sw		x1, -184(x2)	# 168
	addi	x2, x2, -188	# 168
	jal		x1, min_caml_create_array	# 168
	addi	x2, x2, 188	# 168
	lw		x1, -184(x2)	# 168
	flw		f0, -24(x2)	# 173
	lw		x5, -16(x2)	# 173
	sw		x4, -184(x2)	# 173
	addi	x4, x5, 0
	sw		x1, -188(x2)	# 173
	addi	x2, x2, -192	# 173
	jal		x1, min_caml_create_float_array	# 173
	addi	x2, x2, 192	# 173
	lw		x1, -188(x2)	# 173
	flw		f0, -24(x2)	# 174
	lw		x5, -40(x2)	# 174
	sw		x4, -188(x2)	# 174
	addi	x4, x5, 0
	sw		x1, -192(x2)	# 174
	addi	x2, x2, -196	# 174
	jal		x1, min_caml_create_float_array	# 174
	addi	x2, x2, 196	# 174
	lw		x1, -192(x2)	# 174
	lw		x5, -32(x2)	# 175
	lw		x6, -188(x2)	# 175
	sw		x4, -192(x2)	# 175
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -196(x2)	# 175
	addi	x2, x2, -200	# 175
	jal		x1, min_caml_create_array	# 175
	addi	x2, x2, 200	# 175
	lw		x1, -196(x2)	# 175
	addi	x5, x3, 0	# 176
	addi	x3, x3, 8	# 176
	sw		x4, 4(x5)	# 176
	lw		x4, -192(x2)	# 176
	sw		x4, 0(x5)	# 176
	addi	x4, x5, 0	# 176
	flw		f0, -24(x2)	# 181
	lw		x5, -16(x2)	# 181
	sw		x4, -196(x2)	# 181
	addi	x4, x5, 0
	sw		x1, -200(x2)	# 181
	addi	x2, x2, -204	# 181
	jal		x1, min_caml_create_float_array	# 181
	addi	x2, x2, 204	# 181
	lw		x1, -200(x2)	# 181
	addi	x5, x4, 0	# 181
	lw		x4, -16(x2)	# 182
	sw		x5, -200(x2)	# 182
	sw		x1, -204(x2)	# 182
	addi	x2, x2, -208	# 182
	jal		x1, min_caml_create_array	# 182
	addi	x2, x2, 208	# 182
	lw		x1, -204(x2)	# 182
	addi	x5, x3, 0	# 183
	addi	x3, x3, 8	# 183
	sw		x4, 4(x5)	# 183
	lw		x4, -200(x2)	# 183
	sw		x4, 0(x5)	# 183
	addi	x4, x5, 0	# 183
	ori		x5, x0, 180	# 184
	addi	x6, x3, 0	# 184
	addi	x3, x3, 12	# 184
	flw		f0, -24(x2)	# 184
	fsw		f0, 8(x6)	# 184
	sw		x4, 4(x6)	# 184
	lw		x4, -16(x2)	# 184
	sw		x4, 0(x6)	# 184
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -204(x2)	# 184
	addi	x2, x2, -208	# 184
	jal		x1, min_caml_create_array	# 184
	addi	x2, x2, 208	# 184
	lw		x1, -204(x2)	# 184
	lw		x5, -12(x2)	# 188
	lw		x6, -16(x2)	# 188
	sw		x4, -204(x2)	# 188
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -208(x2)	# 188
	addi	x2, x2, -212	# 188
	jal		x1, min_caml_create_array	# 188
	addi	x2, x2, 212	# 188
	lw		x1, -208(x2)	# 188
	addi	x5, x3, 0	# 204
	addi	x3, x3, 8	# 204
	lui		x6, %hi(xor.2541)	# 204
	ori		x6, x0, %lo(xor.2541)	# 204
	sw		x6, 0(x5)	# 211
	lw		x6, -16(x2)	# 211
	sw		x6, 4(x5)	# 211
	addi	x7, x3, 0	# 211
	addi	x3, x3, 12	# 211
	lui		x8, %hi(sgn.2544)	# 211
	ori		x8, x0, %lo(sgn.2544)	# 211
	sw		x8, 0(x7)	# 218
	sw		x6, 8(x7)	# 218
	flw		f0, -24(x2)	# 218
	fsw		f0, 4(x7)	# 218
	addi	x8, x3, 0	# 218
	addi	x3, x3, 8	# 218
	lui		x9, %hi(fneg_cond.2546)	# 218
	ori		x9, x0, %lo(fneg_cond.2546)	# 218
	sw		x9, 0(x8)	# 223
	sw		x6, 4(x8)	# 223
	addi	x9, x3, 0	# 223
	addi	x3, x3, 8	# 223
	lui		x10, %hi(add_mod5.2549)	# 223
	ori		x10, x0, %lo(add_mod5.2549)	# 223
	sw		x10, 0(x9)	# 239
	lw		x10, -180(x2)	# 239
	sw		x10, 4(x9)	# 239
	addi	x11, x3, 0	# 239
	addi	x3, x3, 16	# 239
	lui		x12, %hi(vecset.2552)	# 239
	ori		x12, x0, %lo(vecset.2552)	# 239
	sw		x12, 0(x11)	# 246
	lw		x12, -136(x2)	# 246
	sw		x12, 12(x11)	# 246
	sw		x6, 8(x11)	# 246
	lw		x13, -12(x2)	# 246
	sw		x13, 4(x11)	# 246
	addi	x14, x3, 0	# 246
	addi	x3, x3, 16	# 246
	lui		x15, %hi(vecfill.2557)	# 246
	ori		x15, x0, %lo(vecfill.2557)	# 246
	sw		x15, 0(x14)	# 253
	sw		x12, 12(x14)	# 253
	sw		x6, 8(x14)	# 253
	sw		x13, 4(x14)	# 253
	addi	x15, x3, 0	# 253
	addi	x3, x3, 12	# 253
	lui		x16, %hi(vecbzero.2560)	# 253
	ori		x16, x0, %lo(vecbzero.2560)	# 253
	sw		x16, 0(x15)	# 258
	sw		x14, 8(x15)	# 258
	fsw		f0, 4(x15)	# 258
	addi	x14, x3, 0	# 258
	addi	x3, x3, 16	# 258
	lui		x16, %hi(veccpy.2562)	# 258
	ori		x16, x0, %lo(veccpy.2562)	# 258
	sw		x16, 0(x14)	# 282
	sw		x12, 12(x14)	# 282
	sw		x6, 8(x14)	# 282
	sw		x13, 4(x14)	# 282
	addi	x16, x3, 0	# 282
	addi	x3, x3, 16	# 282
	lui		x17, %hi(vecunit_sgn.2565)	# 282
	ori		x17, x0, %lo(vecunit_sgn.2565)	# 282
	sw		x17, 0(x16)	# 291
	sw		x12, 12(x16)	# 291
	sw		x6, 8(x16)	# 291
	sw		x13, 4(x16)	# 291
	addi	x17, x3, 0	# 291
	addi	x3, x3, 16	# 291
	lui		x18, %hi(veciprod.2568)	# 291
	ori		x18, x0, %lo(veciprod.2568)	# 291
	sw		x18, 0(x17)	# 296
	sw		x12, 12(x17)	# 296
	sw		x6, 8(x17)	# 296
	sw		x13, 4(x17)	# 296
	addi	x18, x3, 0	# 296
	addi	x3, x3, 16	# 296
	lui		x19, %hi(veciprod2.2571)	# 296
	ori		x19, x0, %lo(veciprod2.2571)	# 296
	sw		x19, 0(x18)	# 301
	sw		x12, 12(x18)	# 301
	sw		x6, 8(x18)	# 301
	sw		x13, 4(x18)	# 301
	addi	x19, x3, 0	# 301
	addi	x3, x3, 16	# 301
	lui		x20, %hi(vecaccum.2576)	# 301
	ori		x20, x0, %lo(vecaccum.2576)	# 301
	sw		x20, 0(x19)	# 308
	sw		x12, 12(x19)	# 308
	sw		x6, 8(x19)	# 308
	sw		x13, 4(x19)	# 308
	addi	x20, x3, 0	# 308
	addi	x3, x3, 16	# 308
	lui		x21, %hi(vecadd.2580)	# 308
	ori		x21, x0, %lo(vecadd.2580)	# 308
	sw		x21, 0(x20)	# 324
	sw		x12, 12(x20)	# 324
	sw		x6, 8(x20)	# 324
	sw		x13, 4(x20)	# 324
	addi	x21, x3, 0	# 324
	addi	x3, x3, 16	# 324
	lui		x22, %hi(vecscale.2583)	# 324
	ori		x22, x0, %lo(vecscale.2583)	# 324
	sw		x22, 0(x21)	# 331
	sw		x12, 12(x21)	# 331
	sw		x6, 8(x21)	# 331
	sw		x13, 4(x21)	# 331
	addi	x22, x3, 0	# 331
	addi	x3, x3, 16	# 331
	lui		x23, %hi(vecaccumv.2586)	# 331
	ori		x23, x0, %lo(vecaccumv.2586)	# 331
	sw		x23, 0(x22)	# 390
	sw		x12, 12(x22)	# 390
	sw		x6, 8(x22)	# 390
	sw		x13, 4(x22)	# 390
	addi	x23, x3, 0	# 390
	addi	x3, x3, 8	# 390
	lui		x24, %hi(o_param_a.2600)	# 390
	ori		x24, x0, %lo(o_param_a.2600)	# 390
	sw		x24, 0(x23)	# 400
	sw		x6, 4(x23)	# 400
	addi	x24, x3, 0	# 400
	addi	x3, x3, 8	# 400
	lui		x25, %hi(o_param_b.2602)	# 400
	ori		x25, x0, %lo(o_param_b.2602)	# 400
	sw		x25, 0(x24)	# 410
	sw		x13, 4(x24)	# 410
	addi	x25, x3, 0	# 410
	addi	x3, x3, 8	# 410
	lui		x26, %hi(o_param_c.2604)	# 410
	ori		x26, x0, %lo(o_param_c.2604)	# 410
	sw		x26, 0(x25)	# 430
	sw		x12, 4(x25)	# 430
	addi	x26, x3, 0	# 430
	addi	x3, x3, 8	# 430
	lui		x27, %hi(o_param_x.2608)	# 430
	ori		x27, x0, %lo(o_param_x.2608)	# 430
	sw		x27, 0(x26)	# 440
	sw		x6, 4(x26)	# 440
	addi	x27, x3, 0	# 440
	addi	x3, x3, 8	# 440
	lui		x31, %hi(o_param_y.2610)	# 440
	ori		x31, x0, %lo(o_param_y.2610)	# 440
	sw		x31, 0(x27)	# 450
	sw		x13, 4(x27)	# 450
	addi	x31, x3, 0	# 450
	addi	x3, x3, 8	# 450
	sw		x9, -208(x2)	# 450
	lui		x9, %hi(o_param_z.2612)	# 450
	ori		x9, x0, %lo(o_param_z.2612)	# 450
	sw		x9, 0(x31)	# 460
	sw		x12, 4(x31)	# 460
	addi	x9, x3, 0	# 460
	addi	x3, x3, 8	# 460
	sw		x20, -212(x2)	# 460
	lui		x20, %hi(o_diffuse.2614)	# 460
	ori		x20, x0, %lo(o_diffuse.2614)	# 460
	sw		x20, 0(x9)	# 470
	sw		x6, 4(x9)	# 470
	addi	x20, x3, 0	# 470
	addi	x3, x3, 8	# 470
	sw		x22, -216(x2)	# 470
	lui		x22, %hi(o_hilight.2616)	# 470
	ori		x22, x0, %lo(o_hilight.2616)	# 470
	sw		x22, 0(x20)	# 480
	sw		x13, 4(x20)	# 480
	addi	x22, x3, 0	# 480
	addi	x3, x3, 8	# 480
	sw		x4, -220(x2)	# 480
	lui		x4, %hi(o_color_red.2618)	# 480
	ori		x4, x0, %lo(o_color_red.2618)	# 480
	sw		x4, 0(x22)	# 490
	sw		x6, 4(x22)	# 490
	addi	x4, x3, 0	# 490
	addi	x3, x3, 8	# 490
	sw		x9, -224(x2)	# 490
	lui		x9, %hi(o_color_green.2620)	# 490
	ori		x9, x0, %lo(o_color_green.2620)	# 490
	sw		x9, 0(x4)	# 500
	sw		x13, 4(x4)	# 500
	addi	x9, x3, 0	# 500
	addi	x3, x3, 8	# 500
	sw		x20, -228(x2)	# 500
	lui		x20, %hi(o_color_blue.2622)	# 500
	ori		x20, x0, %lo(o_color_blue.2622)	# 500
	sw		x20, 0(x9)	# 510
	sw		x12, 4(x9)	# 510
	addi	x20, x3, 0	# 510
	addi	x3, x3, 8	# 510
	sw		x21, -232(x2)	# 510
	lui		x21, %hi(o_param_r1.2624)	# 510
	ori		x21, x0, %lo(o_param_r1.2624)	# 510
	sw		x21, 0(x20)	# 520
	sw		x6, 4(x20)	# 520
	addi	x21, x3, 0	# 520
	addi	x3, x3, 8	# 520
	sw		x19, -236(x2)	# 520
	lui		x19, %hi(o_param_r2.2626)	# 520
	ori		x19, x0, %lo(o_param_r2.2626)	# 520
	sw		x19, 0(x21)	# 530
	sw		x13, 4(x21)	# 530
	addi	x19, x3, 0	# 530
	addi	x3, x3, 8	# 530
	sw		x9, -240(x2)	# 530
	lui		x9, %hi(o_param_r3.2628)	# 530
	ori		x9, x0, %lo(o_param_r3.2628)	# 530
	sw		x9, 0(x19)	# 613
	sw		x12, 4(x19)	# 613
	addi	x9, x3, 0	# 613
	addi	x3, x3, 8	# 613
	sw		x4, -244(x2)	# 613
	lui		x4, %hi(p_group_id.2644)	# 613
	ori		x4, x0, %lo(p_group_id.2644)	# 613
	sw		x4, 0(x9)	# 620
	sw		x6, 4(x9)	# 620
	addi	x4, x3, 0	# 620
	addi	x3, x3, 8	# 620
	sw		x9, -248(x2)	# 620
	lui		x9, %hi(p_set_group_id.2646)	# 620
	ori		x9, x0, %lo(p_set_group_id.2646)	# 620
	sw		x9, 0(x4)	# 681
	sw		x6, 4(x4)	# 681
	addi	x9, x3, 0	# 681
	addi	x3, x3, 48	# 681
	sw		x4, -252(x2)	# 681
	lui		x4, %hi(read_screen_settings.2663)	# 681
	ori		x4, x0, %lo(read_screen_settings.2663)	# 681
	sw		x4, 0(x9)	# 714
	lw		x4, -48(x2)	# 714
	sw		x4, 44(x9)	# 714
	lw		x4, -8(x2)	# 714
	sw		x4, 40(x9)	# 714
	sw		x22, -256(x2)	# 714
	lw		x22, -168(x2)	# 714
	sw		x22, 36(x9)	# 714
	lw		x22, -164(x2)	# 714
	sw		x22, 32(x9)	# 714
	lw		x22, -160(x2)	# 714
	sw		x22, 28(x9)	# 714
	lw		x22, -44(x2)	# 714
	sw		x22, 24(x9)	# 714
	lw		x22, -4(x2)	# 714
	sw		x22, 20(x9)	# 714
	sw		x12, 16(x9)	# 714
	sw		x6, 12(x9)	# 714
	sw		x13, 8(x9)	# 714
	fsw		f0, 4(x9)	# 714
	sw		x15, -260(x2)	# 714
	addi	x15, x3, 0	# 714
	addi	x3, x3, 32	# 714
	sw		x11, -264(x2)	# 714
	lui		x11, %hi(read_light.2665)	# 714
	ori		x11, x0, %lo(read_light.2665)	# 714
	sw		x11, 0(x15)	# 736
	sw		x4, 28(x15)	# 736
	lw		x11, -64(x2)	# 736
	sw		x11, 24(x15)	# 736
	sw		x22, 20(x15)	# 736
	lw		x11, -72(x2)	# 736
	sw		x11, 16(x15)	# 736
	sw		x12, 12(x15)	# 736
	sw		x6, 8(x15)	# 736
	sw		x13, 4(x15)	# 736
	addi	x11, x3, 0	# 736
	addi	x3, x3, 24	# 736
	sw		x14, -268(x2)	# 736
	lui		x14, %hi(rotate_quadratic_matrix.2667)	# 736
	ori		x14, x0, %lo(rotate_quadratic_matrix.2667)	# 736
	sw		x14, 0(x11)	# 777
	sw		x4, 20(x11)	# 777
	sw		x22, 16(x11)	# 777
	sw		x12, 12(x11)	# 777
	sw		x6, 8(x11)	# 777
	sw		x13, 4(x11)	# 777
	addi	x14, x3, 0	# 777
	addi	x3, x3, 44	# 777
	lui		x22, %hi(read_nth_object.2670)	# 777
	ori		x22, x0, %lo(read_nth_object.2670)	# 777
	sw		x22, 0(x14)	# 860
	sw		x16, 40(x14)	# 860
	sw		x7, 36(x14)	# 860
	sw		x11, 32(x14)	# 860
	lw		x11, -36(x2)	# 860
	sw		x11, 28(x14)	# 860
	sw		x12, 24(x14)	# 860
	lw		x22, -68(x2)	# 860
	sw		x22, 20(x14)	# 860
	lw		x4, -40(x2)	# 860
	sw		x4, 16(x14)	# 860
	sw		x6, 12(x14)	# 860
	sw		x13, 8(x14)	# 860
	fsw		f0, 4(x14)	# 860
	sw		x16, -272(x2)	# 860
	addi	x16, x3, 0	# 860
	addi	x3, x3, 24	# 860
	sw		x7, -276(x2)	# 860
	lui		x7, %hi(read_object.2672)	# 860
	ori		x7, x0, %lo(read_object.2672)	# 860
	sw		x7, 0(x16)	# 869
	sw		x14, 20(x16)	# 869
	lw		x7, -20(x2)	# 869
	sw		x7, 16(x16)	# 869
	lw		x14, -32(x2)	# 869
	sw		x14, 12(x16)	# 869
	sw		x6, 8(x16)	# 869
	sw		x13, 4(x16)	# 869
	addi	x14, x3, 0	# 869
	addi	x3, x3, 12	# 869
	lui		x7, %hi(read_all_object.2674)	# 869
	ori		x7, x0, %lo(read_all_object.2674)	# 869
	sw		x7, 0(x14)	# 876
	sw		x16, 8(x14)	# 876
	sw		x6, 4(x14)	# 876
	addi	x7, x3, 0	# 876
	addi	x3, x3, 12	# 876
	lui		x16, %hi(read_net_item.2676)	# 876
	ori		x16, x0, %lo(read_net_item.2676)	# 876
	sw		x16, 0(x7)	# 884
	sw		x22, 8(x7)	# 884
	sw		x13, 4(x7)	# 884
	addi	x16, x3, 0	# 884
	addi	x3, x3, 20	# 884
	lui		x10, %hi(read_or_network.2678)	# 884
	ori		x10, x0, %lo(read_or_network.2678)	# 884
	sw		x10, 0(x16)	# 893
	sw		x7, 16(x16)	# 893
	sw		x22, 12(x16)	# 893
	sw		x6, 8(x16)	# 893
	sw		x13, 4(x16)	# 893
	addi	x10, x3, 0	# 893
	addi	x3, x3, 24	# 893
	sw		x26, -280(x2)	# 893
	lui		x26, %hi(read_and_network.2680)	# 893
	ori		x26, x0, %lo(read_and_network.2680)	# 893
	sw		x26, 0(x10)	# 902
	sw		x7, 20(x10)	# 902
	lw		x7, -80(x2)	# 902
	sw		x7, 16(x10)	# 902
	sw		x22, 12(x10)	# 902
	sw		x6, 8(x10)	# 902
	sw		x13, 4(x10)	# 902
	addi	x26, x3, 0	# 902
	addi	x3, x3, 32	# 902
	lui		x7, %hi(read_parameter.2682)	# 902
	ori		x7, x0, %lo(read_parameter.2682)	# 902
	sw		x7, 0(x26)	# 927
	sw		x9, 28(x26)	# 927
	sw		x16, 24(x26)	# 927
	sw		x15, 20(x26)	# 927
	sw		x10, 16(x26)	# 927
	sw		x14, 12(x26)	# 927
	lw		x7, -84(x2)	# 927
	sw		x7, 8(x26)	# 927
	sw		x6, 4(x26)	# 927
	addi	x9, x3, 0	# 927
	addi	x3, x3, 20	# 927
	lui		x10, %hi(solver_rect_surface.2684)	# 927
	ori		x10, x0, %lo(solver_rect_surface.2684)	# 927
	sw		x10, 0(x9)	# 942
	sw		x5, 16(x9)	# 942
	lw		x10, -88(x2)	# 942
	sw		x10, 12(x9)	# 942
	sw		x8, 8(x9)	# 942
	sw		x6, 4(x9)	# 942
	addi	x14, x3, 0	# 942
	addi	x3, x3, 20	# 942
	lui		x15, %hi(solver_rect.2693)	# 942
	ori		x15, x0, %lo(solver_rect.2693)	# 942
	sw		x15, 0(x14)	# 951
	sw		x9, 16(x14)	# 951
	sw		x12, 12(x14)	# 951
	sw		x6, 8(x14)	# 951
	sw		x13, 4(x14)	# 951
	addi	x9, x3, 0	# 951
	addi	x3, x3, 20	# 951
	lui		x15, %hi(solver_surface.2699)	# 951
	ori		x15, x0, %lo(solver_surface.2699)	# 951
	sw		x15, 0(x9)	# 965
	sw		x18, 16(x9)	# 965
	sw		x17, 12(x9)	# 965
	sw		x10, 8(x9)	# 965
	sw		x6, 4(x9)	# 965
	addi	x15, x3, 0	# 965
	addi	x3, x3, 32	# 965
	lui		x16, %hi(quadratic.2705)	# 965
	ori		x16, x0, %lo(quadratic.2705)	# 965
	sw		x16, 0(x15)	# 980
	sw		x19, 28(x15)	# 980
	sw		x21, 24(x15)	# 980
	sw		x20, 20(x15)	# 980
	sw		x25, 16(x15)	# 980
	sw		x24, 12(x15)	# 980
	sw		x23, 8(x15)	# 980
	sw		x6, 4(x15)	# 980
	addi	x16, x3, 0	# 980
	addi	x3, x3, 32	# 980
	sw		x26, -284(x2)	# 980
	lui		x26, %hi(bilinear.2710)	# 980
	ori		x26, x0, %lo(bilinear.2710)	# 980
	sw		x26, 0(x16)	# 1002
	sw		x19, 28(x16)	# 1002
	sw		x21, 24(x16)	# 1002
	sw		x20, 20(x16)	# 1002
	sw		x25, 16(x16)	# 1002
	sw		x24, 12(x16)	# 1002
	sw		x23, 8(x16)	# 1002
	sw		x6, 4(x16)	# 1002
	addi	x26, x3, 0	# 1002
	addi	x3, x3, 32	# 1002
	sw		x17, -288(x2)	# 1002
	lui		x17, %hi(solver_second.2718)	# 1002
	ori		x17, x0, %lo(solver_second.2718)	# 1002
	sw		x17, 0(x26)	# 1031
	sw		x10, 28(x26)	# 1031
	sw		x15, 24(x26)	# 1031
	sw		x16, 20(x26)	# 1031
	sw		x12, 16(x26)	# 1031
	sw		x4, 12(x26)	# 1031
	sw		x6, 8(x26)	# 1031
	sw		x13, 4(x26)	# 1031
	addi	x16, x3, 0	# 1031
	addi	x3, x3, 44	# 1031
	lui		x17, %hi(solver.2724)	# 1031
	ori		x17, x0, %lo(solver.2724)	# 1031
	sw		x17, 0(x16)	# 1063
	sw		x9, 40(x16)	# 1063
	sw		x26, 36(x16)	# 1063
	sw		x14, 32(x16)	# 1063
	sw		x11, 28(x16)	# 1063
	sw		x31, 24(x16)	# 1063
	sw		x27, 20(x16)	# 1063
	lw		x9, -280(x2)	# 1063
	sw		x9, 16(x16)	# 1063
	sw		x12, 12(x16)	# 1063
	sw		x6, 8(x16)	# 1063
	sw		x13, 4(x16)	# 1063
	addi	x14, x3, 0	# 1063
	addi	x3, x3, 40	# 1063
	lui		x17, %hi(solver_rect_fast.2728)	# 1063
	ori		x17, x0, %lo(solver_rect_fast.2728)	# 1063
	sw		x17, 0(x14)	# 1096
	sw		x10, 36(x14)	# 1096
	sw		x25, 32(x14)	# 1096
	sw		x24, 28(x14)	# 1096
	sw		x23, 24(x14)	# 1096
	lw		x17, -180(x2)	# 1096
	sw		x17, 20(x14)	# 1096
	sw		x12, 16(x14)	# 1096
	sw		x4, 12(x14)	# 1096
	sw		x6, 8(x14)	# 1096
	sw		x13, 4(x14)	# 1096
	addi	x26, x3, 0	# 1096
	addi	x3, x3, 24	# 1096
	lui		x7, %hi(solver_surface_fast.2735)	# 1096
	ori		x7, x0, %lo(solver_surface_fast.2735)	# 1096
	sw		x7, 0(x26)	# 1105
	sw		x10, 20(x26)	# 1105
	sw		x12, 16(x26)	# 1105
	sw		x4, 12(x26)	# 1105
	sw		x6, 8(x26)	# 1105
	sw		x13, 4(x26)	# 1105
	addi	x7, x3, 0	# 1105
	addi	x3, x3, 28	# 1105
	sw		x16, -292(x2)	# 1105
	lui		x16, %hi(solver_second_fast.2741)	# 1105
	ori		x16, x0, %lo(solver_second_fast.2741)	# 1105
	sw		x16, 0(x7)	# 1125
	sw		x10, 24(x7)	# 1125
	sw		x15, 20(x7)	# 1125
	sw		x12, 16(x7)	# 1125
	sw		x4, 12(x7)	# 1125
	sw		x6, 8(x7)	# 1125
	sw		x13, 4(x7)	# 1125
	addi	x16, x3, 0	# 1125
	addi	x3, x3, 44	# 1125
	lui		x22, %hi(solver_fast.2747)	# 1125
	ori		x22, x0, %lo(solver_fast.2747)	# 1125
	sw		x22, 0(x16)	# 1145
	sw		x26, 40(x16)	# 1145
	sw		x7, 36(x16)	# 1145
	sw		x14, 32(x16)	# 1145
	sw		x11, 28(x16)	# 1145
	sw		x31, 24(x16)	# 1145
	sw		x27, 20(x16)	# 1145
	sw		x9, 16(x16)	# 1145
	sw		x12, 12(x16)	# 1145
	sw		x6, 8(x16)	# 1145
	sw		x13, 4(x16)	# 1145
	addi	x7, x3, 0	# 1145
	addi	x3, x3, 16	# 1145
	lui		x22, %hi(solver_surface_fast2.2751)	# 1145
	ori		x22, x0, %lo(solver_surface_fast2.2751)	# 1145
	sw		x22, 0(x7)	# 1153
	sw		x10, 12(x7)	# 1153
	sw		x4, 8(x7)	# 1153
	sw		x6, 4(x7)	# 1153
	addi	x22, x3, 0	# 1153
	addi	x3, x3, 24	# 1153
	lui		x26, %hi(solver_second_fast2.2758)	# 1153
	ori		x26, x0, %lo(solver_second_fast2.2758)	# 1153
	sw		x26, 0(x22)	# 1172
	sw		x10, 20(x22)	# 1172
	sw		x12, 16(x22)	# 1172
	sw		x4, 12(x22)	# 1172
	sw		x6, 8(x22)	# 1172
	sw		x13, 4(x22)	# 1172
	addi	x26, x3, 0	# 1172
	addi	x3, x3, 32	# 1172
	lui		x10, %hi(solver_fast2.2765)	# 1172
	ori		x10, x0, %lo(solver_fast2.2765)	# 1172
	sw		x10, 0(x26)	# 1194
	sw		x7, 28(x26)	# 1194
	sw		x22, 24(x26)	# 1194
	sw		x14, 20(x26)	# 1194
	sw		x11, 16(x26)	# 1194
	sw		x12, 12(x26)	# 1194
	sw		x6, 8(x26)	# 1194
	sw		x13, 4(x26)	# 1194
	addi	x7, x3, 0	# 1194
	addi	x3, x3, 40	# 1194
	lui		x10, %hi(setup_rect_table.2768)	# 1194
	ori		x10, x0, %lo(setup_rect_table.2768)	# 1194
	sw		x10, 0(x7)	# 1221
	sw		x5, 36(x7)	# 1221
	sw		x25, 32(x7)	# 1221
	sw		x24, 28(x7)	# 1221
	sw		x23, 24(x7)	# 1221
	sw		x8, 20(x7)	# 1221
	sw		x12, 16(x7)	# 1221
	sw		x6, 12(x7)	# 1221
	sw		x13, 8(x7)	# 1221
	fsw		f0, 4(x7)	# 1221
	addi	x8, x3, 0	# 1221
	addi	x3, x3, 32	# 1221
	lui		x10, %hi(setup_surface_table.2771)	# 1221
	ori		x10, x0, %lo(setup_surface_table.2771)	# 1221
	sw		x10, 0(x8)	# 1240
	sw		x25, 28(x8)	# 1240
	sw		x24, 24(x8)	# 1240
	sw		x23, 20(x8)	# 1240
	sw		x12, 16(x8)	# 1240
	sw		x6, 12(x8)	# 1240
	sw		x13, 8(x8)	# 1240
	fsw		f0, 4(x8)	# 1240
	addi	x10, x3, 0	# 1240
	addi	x3, x3, 52	# 1240
	lui		x14, %hi(setup_second_table.2774)	# 1240
	ori		x14, x0, %lo(setup_second_table.2774)	# 1240
	sw		x14, 0(x10)	# 1269
	sw		x15, 48(x10)	# 1269
	sw		x19, 44(x10)	# 1269
	sw		x21, 40(x10)	# 1269
	sw		x20, 36(x10)	# 1269
	sw		x25, 32(x10)	# 1269
	sw		x24, 28(x10)	# 1269
	sw		x23, 24(x10)	# 1269
	sw		x17, 20(x10)	# 1269
	sw		x12, 16(x10)	# 1269
	sw		x6, 12(x10)	# 1269
	sw		x13, 8(x10)	# 1269
	fsw		f0, 4(x10)	# 1269
	addi	x14, x3, 0	# 1269
	addi	x3, x3, 28	# 1269
	lui		x22, %hi(iter_setup_dirvec_constants.2777)	# 1269
	ori		x22, x0, %lo(iter_setup_dirvec_constants.2777)	# 1269
	sw		x22, 0(x14)	# 1286
	sw		x8, 24(x14)	# 1286
	sw		x10, 20(x14)	# 1286
	sw		x7, 16(x14)	# 1286
	sw		x11, 12(x14)	# 1286
	sw		x6, 8(x14)	# 1286
	sw		x13, 4(x14)	# 1286
	addi	x7, x3, 0	# 1286
	addi	x3, x3, 20	# 1286
	lui		x8, %hi(setup_dirvec_constants.2780)	# 1286
	ori		x8, x0, %lo(setup_dirvec_constants.2780)	# 1286
	sw		x8, 0(x7)	# 1294
	lw		x8, -20(x2)	# 1294
	sw		x8, 16(x7)	# 1294
	sw		x14, 12(x7)	# 1294
	sw		x6, 8(x7)	# 1294
	sw		x13, 4(x7)	# 1294
	addi	x10, x3, 0	# 1294
	addi	x3, x3, 40	# 1294
	lui		x14, %hi(setup_startp_constants.2782)	# 1294
	ori		x14, x0, %lo(setup_startp_constants.2782)	# 1294
	sw		x14, 0(x10)	# 1313
	sw		x18, 36(x10)	# 1313
	sw		x15, 32(x10)	# 1313
	sw		x11, 28(x10)	# 1313
	sw		x31, 24(x10)	# 1313
	sw		x27, 20(x10)	# 1313
	sw		x9, 16(x10)	# 1313
	sw		x12, 12(x10)	# 1313
	sw		x6, 8(x10)	# 1313
	sw		x13, 4(x10)	# 1313
	addi	x14, x3, 0	# 1313
	addi	x3, x3, 28	# 1313
	lui		x22, %hi(setup_startp.2785)	# 1313
	ori		x22, x0, %lo(setup_startp.2785)	# 1313
	sw		x22, 0(x14)	# 1325
	lw		x22, -268(x2)	# 1325
	sw		x22, 24(x14)	# 1325
	sw		x7, -296(x2)	# 1325
	lw		x7, -156(x2)	# 1325
	sw		x7, 20(x14)	# 1325
	sw		x10, 16(x14)	# 1325
	sw		x8, 12(x14)	# 1325
	sw		x6, 8(x14)	# 1325
	sw		x13, 4(x14)	# 1325
	addi	x10, x3, 0	# 1325
	addi	x3, x3, 20	# 1325
	lui		x8, %hi(is_rect_outside.2787)	# 1325
	ori		x8, x0, %lo(is_rect_outside.2787)	# 1325
	sw		x8, 0(x10)	# 1336
	sw		x25, 16(x10)	# 1336
	sw		x24, 12(x10)	# 1336
	sw		x23, 8(x10)	# 1336
	sw		x6, 4(x10)	# 1336
	addi	x8, x3, 0	# 1336
	addi	x3, x3, 16	# 1336
	lui		x17, %hi(is_plane_outside.2792)	# 1336
	ori		x17, x0, %lo(is_plane_outside.2792)	# 1336
	sw		x17, 0(x8)	# 1342
	sw		x5, 12(x8)	# 1342
	sw		x18, 8(x8)	# 1342
	sw		x6, 4(x8)	# 1342
	addi	x17, x3, 0	# 1342
	addi	x3, x3, 20	# 1342
	lui		x18, %hi(is_second_outside.2797)	# 1342
	ori		x18, x0, %lo(is_second_outside.2797)	# 1342
	sw		x18, 0(x17)	# 1349
	sw		x5, 16(x17)	# 1349
	sw		x15, 12(x17)	# 1349
	sw		x4, 8(x17)	# 1349
	sw		x6, 4(x17)	# 1349
	addi	x5, x3, 0	# 1349
	addi	x3, x3, 36	# 1349
	lui		x15, %hi(is_outside.2802)	# 1349
	ori		x15, x0, %lo(is_outside.2802)	# 1349
	sw		x15, 0(x5)	# 1363
	sw		x31, 32(x5)	# 1363
	sw		x27, 28(x5)	# 1363
	sw		x9, 24(x5)	# 1363
	sw		x17, 20(x5)	# 1363
	sw		x10, 16(x5)	# 1363
	sw		x8, 12(x5)	# 1363
	sw		x12, 8(x5)	# 1363
	sw		x13, 4(x5)	# 1363
	addi	x8, x3, 0	# 1363
	addi	x3, x3, 24	# 1363
	lui		x10, %hi(check_all_inside.2807)	# 1363
	ori		x10, x0, %lo(check_all_inside.2807)	# 1363
	sw		x10, 0(x8)	# 1383
	sw		x11, 20(x8)	# 1383
	sw		x5, 16(x8)	# 1383
	lw		x5, -68(x2)	# 1383
	sw		x5, 12(x8)	# 1383
	sw		x6, 8(x8)	# 1383
	sw		x13, 4(x8)	# 1383
	addi	x10, x3, 0	# 1383
	addi	x3, x3, 48	# 1383
	lui		x15, %hi(shadow_check_and_group.2813)	# 1383
	ori		x15, x0, %lo(shadow_check_and_group.2813)	# 1383
	sw		x15, 0(x10)	# 1413
	sw		x16, 44(x10)	# 1413
	lw		x15, -88(x2)	# 1413
	sw		x15, 40(x10)	# 1413
	sw		x11, 36(x10)	# 1413
	lw		x17, -196(x2)	# 1413
	sw		x17, 32(x10)	# 1413
	lw		x18, -64(x2)	# 1413
	sw		x18, 28(x10)	# 1413
	lw		x18, -112(x2)	# 1413
	sw		x18, 24(x10)	# 1413
	sw		x8, 20(x10)	# 1413
	sw		x12, 16(x10)	# 1413
	sw		x5, 12(x10)	# 1413
	sw		x6, 8(x10)	# 1413
	sw		x13, 4(x10)	# 1413
	sw		x14, -300(x2)	# 1413
	addi	x14, x3, 0	# 1413
	addi	x3, x3, 24	# 1413
	lui		x22, %hi(shadow_check_one_or_group.2816)	# 1413
	ori		x22, x0, %lo(shadow_check_one_or_group.2816)	# 1413
	sw		x22, 0(x14)	# 1428
	sw		x10, 20(x14)	# 1428
	lw		x10, -80(x2)	# 1428
	sw		x10, 16(x14)	# 1428
	sw		x5, 12(x14)	# 1428
	sw		x6, 8(x14)	# 1428
	sw		x13, 4(x14)	# 1428
	addi	x22, x3, 0	# 1428
	addi	x3, x3, 36	# 1428
	lui		x4, %hi(shadow_check_one_or_matrix.2819)	# 1428
	ori		x4, x0, %lo(shadow_check_one_or_matrix.2819)	# 1428
	sw		x4, 0(x22)	# 1464
	sw		x16, 32(x22)	# 1464
	sw		x15, 28(x22)	# 1464
	sw		x14, 24(x22)	# 1464
	sw		x17, 20(x22)	# 1464
	sw		x18, 16(x22)	# 1464
	sw		x5, 12(x22)	# 1464
	sw		x6, 8(x22)	# 1464
	sw		x13, 4(x22)	# 1464
	addi	x4, x3, 0	# 1464
	addi	x3, x3, 60	# 1464
	lui		x14, %hi(solve_each_element.2822)	# 1464
	ori		x14, x0, %lo(solve_each_element.2822)	# 1464
	sw		x14, 0(x4)	# 1505
	lw		x14, -264(x2)	# 1505
	sw		x14, 56(x4)	# 1505
	lw		x16, -108(x2)	# 1505
	sw		x16, 52(x4)	# 1505
	lw		x17, -152(x2)	# 1505
	sw		x17, 48(x4)	# 1505
	sw		x15, 44(x4)	# 1505
	sw		x22, -304(x2)	# 1505
	lw		x22, -292(x2)	# 1505
	sw		x22, 40(x4)	# 1505
	sw		x11, 36(x4)	# 1505
	sw		x20, -308(x2)	# 1505
	lw		x20, -104(x2)	# 1505
	sw		x20, 32(x4)	# 1505
	sw		x18, 28(x4)	# 1505
	sw		x21, -312(x2)	# 1505
	lw		x21, -116(x2)	# 1505
	sw		x21, 24(x4)	# 1505
	sw		x8, 20(x4)	# 1505
	sw		x5, 16(x4)	# 1505
	sw		x6, 12(x4)	# 1505
	sw		x13, 8(x4)	# 1505
	fsw		f0, 4(x4)	# 1505
	sw		x19, -316(x2)	# 1505
	addi	x19, x3, 0	# 1505
	addi	x3, x3, 24	# 1505
	lui		x9, %hi(solve_one_or_network.2826)	# 1505
	ori		x9, x0, %lo(solve_one_or_network.2826)	# 1505
	sw		x9, 0(x19)	# 1515
	sw		x4, 20(x19)	# 1515
	sw		x10, 16(x19)	# 1515
	sw		x5, 12(x19)	# 1515
	sw		x6, 8(x19)	# 1515
	sw		x13, 4(x19)	# 1515
	addi	x4, x3, 0	# 1515
	addi	x3, x3, 36	# 1515
	lui		x9, %hi(trace_or_matrix.2830)	# 1515
	ori		x9, x0, %lo(trace_or_matrix.2830)	# 1515
	sw		x9, 0(x4)	# 1542
	sw		x16, 32(x4)	# 1542
	sw		x17, 28(x4)	# 1542
	sw		x15, 24(x4)	# 1542
	sw		x22, 20(x4)	# 1542
	sw		x19, 16(x4)	# 1542
	sw		x5, 12(x4)	# 1542
	sw		x6, 8(x4)	# 1542
	sw		x13, 4(x4)	# 1542
	addi	x9, x3, 0	# 1542
	addi	x3, x3, 24	# 1542
	lui		x19, %hi(judge_intersection.2834)	# 1542
	ori		x19, x0, %lo(judge_intersection.2834)	# 1542
	sw		x19, 0(x9)	# 1557
	sw		x4, 20(x9)	# 1557
	sw		x16, 16(x9)	# 1557
	lw		x4, -84(x2)	# 1557
	sw		x4, 12(x9)	# 1557
	sw		x6, 8(x9)	# 1557
	flw		f1, -96(x2)	# 1557
	fsw		f1, 4(x9)	# 1557
	addi	x19, x3, 0	# 1557
	addi	x3, x3, 60	# 1557
	lui		x22, %hi(solve_each_element_fast.2836)	# 1557
	ori		x22, x0, %lo(solve_each_element_fast.2836)	# 1557
	sw		x22, 0(x19)	# 1598
	sw		x14, 56(x19)	# 1598
	sw		x16, 52(x19)	# 1598
	sw		x7, 48(x19)	# 1598
	sw		x26, 44(x19)	# 1598
	sw		x15, 40(x19)	# 1598
	sw		x11, 36(x19)	# 1598
	sw		x20, 32(x19)	# 1598
	sw		x18, 28(x19)	# 1598
	sw		x21, 24(x19)	# 1598
	sw		x8, 20(x19)	# 1598
	sw		x5, 16(x19)	# 1598
	sw		x6, 12(x19)	# 1598
	sw		x13, 8(x19)	# 1598
	fsw		f0, 4(x19)	# 1598
	addi	x7, x3, 0	# 1598
	addi	x3, x3, 24	# 1598
	lui		x8, %hi(solve_one_or_network_fast.2840)	# 1598
	ori		x8, x0, %lo(solve_one_or_network_fast.2840)	# 1598
	sw		x8, 0(x7)	# 1608
	sw		x19, 20(x7)	# 1608
	sw		x10, 16(x7)	# 1608
	sw		x5, 12(x7)	# 1608
	sw		x6, 8(x7)	# 1608
	sw		x13, 4(x7)	# 1608
	addi	x8, x3, 0	# 1608
	addi	x3, x3, 32	# 1608
	lui		x10, %hi(trace_or_matrix_fast.2844)	# 1608
	ori		x10, x0, %lo(trace_or_matrix_fast.2844)	# 1608
	sw		x10, 0(x8)	# 1632
	sw		x16, 28(x8)	# 1632
	sw		x26, 24(x8)	# 1632
	sw		x15, 20(x8)	# 1632
	sw		x7, 16(x8)	# 1632
	sw		x5, 12(x8)	# 1632
	sw		x6, 8(x8)	# 1632
	sw		x13, 4(x8)	# 1632
	addi	x7, x3, 0	# 1632
	addi	x3, x3, 24	# 1632
	lui		x10, %hi(judge_intersection_fast.2848)	# 1632
	ori		x10, x0, %lo(judge_intersection_fast.2848)	# 1632
	sw		x10, 0(x7)	# 1653
	sw		x8, 20(x7)	# 1653
	sw		x16, 16(x7)	# 1653
	sw		x4, 12(x7)	# 1653
	sw		x6, 8(x7)	# 1653
	fsw		f1, 4(x7)	# 1653
	addi	x8, x3, 0	# 1653
	addi	x3, x3, 28	# 1653
	lui		x10, %hi(get_nvector_rect.2850)	# 1653
	ori		x10, x0, %lo(get_nvector_rect.2850)	# 1653
	sw		x10, 0(x8)	# 1661
	lw		x10, -260(x2)	# 1661
	sw		x10, 24(x8)	# 1661
	lw		x15, -276(x2)	# 1661
	sw		x15, 20(x8)	# 1661
	lw		x15, -120(x2)	# 1661
	sw		x15, 16(x8)	# 1661
	sw		x20, 12(x8)	# 1661
	sw		x6, 8(x8)	# 1661
	sw		x13, 4(x8)	# 1661
	addi	x19, x3, 0	# 1661
	addi	x3, x3, 32	# 1661
	lui		x22, %hi(get_nvector_plane.2852)	# 1661
	ori		x22, x0, %lo(get_nvector_plane.2852)	# 1661
	sw		x22, 0(x19)	# 1669
	sw		x25, 28(x19)	# 1669
	sw		x24, 24(x19)	# 1669
	sw		x23, 20(x19)	# 1669
	sw		x15, 16(x19)	# 1669
	sw		x12, 12(x19)	# 1669
	sw		x6, 8(x19)	# 1669
	sw		x13, 4(x19)	# 1669
	addi	x22, x3, 0	# 1669
	addi	x3, x3, 64	# 1669
	lui		x26, %hi(get_nvector_second.2854)	# 1669
	ori		x26, x0, %lo(get_nvector_second.2854)	# 1669
	sw		x26, 0(x22)	# 1691
	lw		x26, -272(x2)	# 1691
	sw		x26, 60(x22)	# 1691
	sw		x31, 56(x22)	# 1691
	sw		x27, 52(x22)	# 1691
	lw		x14, -280(x2)	# 1691
	sw		x14, 48(x22)	# 1691
	lw		x26, -316(x2)	# 1691
	sw		x26, 44(x22)	# 1691
	lw		x26, -312(x2)	# 1691
	sw		x26, 40(x22)	# 1691
	lw		x26, -308(x2)	# 1691
	sw		x26, 36(x22)	# 1691
	sw		x25, 32(x22)	# 1691
	sw		x24, 28(x22)	# 1691
	sw		x23, 24(x22)	# 1691
	sw		x15, 20(x22)	# 1691
	sw		x18, 16(x22)	# 1691
	sw		x12, 12(x22)	# 1691
	sw		x6, 8(x22)	# 1691
	sw		x13, 4(x22)	# 1691
	addi	x26, x3, 0	# 1691
	addi	x3, x3, 24	# 1691
	lui		x10, %hi(get_nvector.2856)	# 1691
	ori		x10, x0, %lo(get_nvector.2856)	# 1691
	sw		x10, 0(x26)	# 1707
	sw		x22, 20(x26)	# 1707
	sw		x8, 16(x26)	# 1707
	sw		x19, 12(x26)	# 1707
	sw		x12, 8(x26)	# 1707
	sw		x13, 4(x26)	# 1707
	addi	x8, x3, 0	# 1707
	addi	x3, x3, 80	# 1707
	lui		x10, %hi(utexture.2859)	# 1707
	ori		x10, x0, %lo(utexture.2859)	# 1707
	sw		x10, 0(x8)	# 1785
	lw		x10, -124(x2)	# 1785
	sw		x10, 76(x8)	# 1785
	lw		x19, -8(x2)	# 1785
	sw		x19, 72(x8)	# 1785
	sw		x31, 68(x8)	# 1785
	sw		x27, 64(x8)	# 1785
	sw		x14, 60(x8)	# 1785
	sw		x25, 56(x8)	# 1785
	sw		x24, 52(x8)	# 1785
	sw		x23, 48(x8)	# 1785
	lw		x14, -256(x2)	# 1785
	sw		x14, 44(x8)	# 1785
	lw		x14, -244(x2)	# 1785
	sw		x14, 40(x8)	# 1785
	lw		x14, -240(x2)	# 1785
	sw		x14, 36(x8)	# 1785
	lw		x14, -4(x2)	# 1785
	sw		x14, 32(x8)	# 1785
	lw		x22, 0(x2)	# 1785
	sw		x22, 28(x8)	# 1785
	sw		x12, 24(x8)	# 1785
	lw		x27, -40(x2)	# 1785
	sw		x27, 20(x8)	# 1785
	sw		x6, 16(x8)	# 1785
	sw		x13, 12(x8)	# 1785
	flw		f1, -56(x2)	# 1785
	fsw		f1, 8(x8)	# 1785
	fsw		f0, 4(x8)	# 1785
	addi	x31, x3, 0	# 1785
	addi	x3, x3, 28	# 1785
	sw		x23, -320(x2)	# 1785
	lui		x23, %hi(add_light.2862)	# 1785
	ori		x23, x0, %lo(add_light.2862)	# 1785
	sw		x23, 0(x31)	# 1802
	lw		x23, -236(x2)	# 1802
	sw		x23, 24(x31)	# 1802
	sw		x10, 20(x31)	# 1802
	sw		x24, -324(x2)	# 1802
	lw		x24, -132(x2)	# 1802
	sw		x24, 16(x31)	# 1802
	sw		x12, 12(x31)	# 1802
	sw		x6, 8(x31)	# 1802
	sw		x13, 4(x31)	# 1802
	sw		x25, -328(x2)	# 1802
	addi	x25, x3, 0	# 1802
	addi	x3, x3, 48	# 1802
	lui		x22, %hi(trace_reflections.2866)	# 1802
	ori		x22, x0, %lo(trace_reflections.2866)	# 1802
	sw		x22, 0(x25)	# 1831
	lw		x22, -288(x2)	# 1831
	sw		x22, 44(x25)	# 1831
	lw		x14, -304(x2)	# 1831
	sw		x14, 40(x25)	# 1831
	lw		x19, -204(x2)	# 1831
	sw		x19, 36(x25)	# 1831
	sw		x4, 32(x25)	# 1831
	sw		x15, 28(x25)	# 1831
	sw		x7, 24(x25)	# 1831
	sw		x20, 20(x25)	# 1831
	sw		x21, 16(x25)	# 1831
	sw		x31, 12(x25)	# 1831
	sw		x6, 8(x25)	# 1831
	sw		x13, 4(x25)	# 1831
	addi	x19, x3, 0	# 1831
	addi	x3, x3, 124	# 1831
	lui		x27, %hi(trace_ray.2871)	# 1831
	ori		x27, x0, %lo(trace_ray.2871)	# 1831
	sw		x27, 0(x19)	# 1924
	lw		x27, -232(x2)	# 1924
	sw		x27, 120(x19)	# 1924
	sw		x22, 116(x19)	# 1924
	lw		x27, -268(x2)	# 1924
	sw		x27, 112(x19)	# 1924
	sw		x23, 108(x19)	# 1924
	sw		x8, 104(x19)	# 1924
	sw		x25, 100(x19)	# 1924
	sw		x16, 96(x19)	# 1924
	sw		x10, 92(x19)	# 1924
	sw		x17, 88(x19)	# 1924
	sw		x14, 84(x19)	# 1924
	lw		x16, -300(x2)	# 1924
	sw		x16, 80(x19)	# 1924
	sw		x24, 76(x19)	# 1924
	sw		x4, 72(x19)	# 1924
	sw		x11, 68(x19)	# 1924
	lw		x25, -228(x2)	# 1924
	sw		x25, 64(x19)	# 1924
	lw		x25, -224(x2)	# 1924
	sw		x25, 60(x19)	# 1924
	sw		x15, 56(x19)	# 1924
	lw		x17, -220(x2)	# 1924
	sw		x17, 52(x19)	# 1924
	lw		x17, -64(x2)	# 1924
	sw		x17, 48(x19)	# 1924
	sw		x9, 44(x19)	# 1924
	sw		x20, 40(x19)	# 1924
	sw		x18, 36(x19)	# 1924
	sw		x21, 32(x19)	# 1924
	sw		x26, 28(x19)	# 1924
	lw		x9, -72(x2)	# 1924
	sw		x9, 24(x19)	# 1924
	sw		x31, 20(x19)	# 1924
	sw		x12, 16(x19)	# 1924
	sw		x5, 12(x19)	# 1924
	sw		x6, 8(x19)	# 1924
	sw		x13, 4(x19)	# 1924
	addi	x5, x3, 0	# 1924
	addi	x3, x3, 72	# 1924
	lui		x9, %hi(trace_diffuse_ray.2877)	# 1924
	ori		x9, x0, %lo(trace_diffuse_ray.2877)	# 1924
	sw		x9, 0(x5)	# 1943
	sw		x22, 68(x5)	# 1943
	sw		x23, 64(x5)	# 1943
	sw		x8, 60(x5)	# 1943
	sw		x10, 56(x5)	# 1943
	sw		x14, 52(x5)	# 1943
	sw		x4, 48(x5)	# 1943
	sw		x11, 44(x5)	# 1943
	sw		x25, 40(x5)	# 1943
	sw		x15, 36(x5)	# 1943
	sw		x17, 32(x5)	# 1943
	sw		x7, 28(x5)	# 1943
	sw		x18, 24(x5)	# 1943
	sw		x21, 20(x5)	# 1943
	sw		x26, 16(x5)	# 1943
	lw		x4, -128(x2)	# 1943
	sw		x4, 12(x5)	# 1943
	sw		x6, 8(x5)	# 1943
	fsw		f0, 4(x5)	# 1943
	addi	x7, x3, 0	# 1943
	addi	x3, x3, 20	# 1943
	lui		x8, %hi(iter_trace_diffuse_rays.2880)	# 1943
	ori		x8, x0, %lo(iter_trace_diffuse_rays.2880)	# 1943
	sw		x8, 0(x7)	# 1959
	sw		x22, 16(x7)	# 1959
	sw		x5, 12(x7)	# 1959
	sw		x12, 8(x7)	# 1959
	sw		x6, 4(x7)	# 1959
	addi	x5, x3, 0	# 1959
	addi	x3, x3, 12	# 1959
	lui		x8, %hi(trace_diffuse_rays.2885)	# 1959
	ori		x8, x0, %lo(trace_diffuse_rays.2885)	# 1959
	sw		x8, 0(x5)	# 1969
	sw		x16, 8(x5)	# 1969
	sw		x7, 4(x5)	# 1969
	addi	x7, x3, 0	# 1969
	addi	x3, x3, 28	# 1969
	lui		x8, %hi(trace_diffuse_ray_80percent.2889)	# 1969
	ori		x8, x0, %lo(trace_diffuse_ray_80percent.2889)	# 1969
	sw		x8, 0(x7)	# 1995
	sw		x5, 24(x7)	# 1995
	lw		x8, -184(x2)	# 1995
	sw		x8, 20(x7)	# 1995
	sw		x12, 16(x7)	# 1995
	lw		x9, -40(x2)	# 1995
	sw		x9, 12(x7)	# 1995
	sw		x6, 8(x7)	# 1995
	sw		x13, 4(x7)	# 1995
	addi	x10, x3, 0	# 1995
	addi	x3, x3, 28	# 1995
	lui		x14, %hi(calc_diffuse_using_1point.2893)	# 1995
	ori		x14, x0, %lo(calc_diffuse_using_1point.2893)	# 1995
	sw		x14, 0(x10)	# 2014
	sw		x27, 24(x10)	# 2014
	lw		x14, -216(x2)	# 2014
	sw		x14, 20(x10)	# 2014
	sw		x7, 16(x10)	# 2014
	sw		x24, 12(x10)	# 2014
	lw		x7, -248(x2)	# 2014
	sw		x7, 8(x10)	# 2014
	sw		x4, 4(x10)	# 2014
	addi	x15, x3, 0	# 2014
	addi	x3, x3, 28	# 2014
	lui		x16, %hi(calc_diffuse_using_5points.2896)	# 2014
	ori		x16, x0, %lo(calc_diffuse_using_5points.2896)	# 2014
	sw		x16, 0(x15)	# 2034
	sw		x27, 24(x15)	# 2034
	lw		x16, -212(x2)	# 2034
	sw		x16, 20(x15)	# 2034
	sw		x14, 16(x15)	# 2034
	sw		x24, 12(x15)	# 2034
	sw		x4, 8(x15)	# 2034
	sw		x13, 4(x15)	# 2034
	addi	x14, x3, 0	# 2034
	addi	x3, x3, 16	# 2034
	lui		x16, %hi(do_without_neighbors.2902)	# 2034
	ori		x16, x0, %lo(do_without_neighbors.2902)	# 2034
	sw		x16, 0(x14)	# 2049
	sw		x10, 12(x14)	# 2049
	sw		x6, 8(x14)	# 2049
	sw		x13, 4(x14)	# 2049
	addi	x10, x3, 0	# 2049
	addi	x3, x3, 16	# 2049
	lui		x16, %hi(neighbors_exist.2905)	# 2049
	ori		x16, x0, %lo(neighbors_exist.2905)	# 2049
	sw		x16, 0(x10)	# 2068
	lw		x16, -140(x2)	# 2068
	sw		x16, 12(x10)	# 2068
	sw		x6, 8(x10)	# 2068
	sw		x13, 4(x10)	# 2068
	addi	x18, x3, 0	# 2068
	addi	x3, x3, 8	# 2068
	lui		x20, %hi(neighbors_are_available.2912)	# 2068
	ori		x20, x0, %lo(neighbors_are_available.2912)	# 2068
	sw		x20, 0(x18)	# 2086
	sw		x13, 4(x18)	# 2086
	addi	x20, x3, 0	# 2086
	addi	x3, x3, 24	# 2086
	lui		x21, %hi(try_exploit_neighbors.2918)	# 2086
	ori		x21, x0, %lo(try_exploit_neighbors.2918)	# 2086
	sw		x21, 0(x20)	# 2113
	sw		x18, 20(x20)	# 2113
	sw		x14, 16(x20)	# 2113
	sw		x15, 12(x20)	# 2113
	sw		x6, 8(x20)	# 2113
	sw		x13, 4(x20)	# 2113
	addi	x15, x3, 0	# 2113
	addi	x3, x3, 16	# 2113
	lui		x18, %hi(write_ppm_header.2925)	# 2113
	ori		x18, x0, %lo(write_ppm_header.2925)	# 2113
	sw		x18, 0(x15)	# 2127
	sw		x16, 12(x15)	# 2127
	sw		x6, 8(x15)	# 2127
	sw		x13, 4(x15)	# 2127
	addi	x18, x3, 0	# 2127
	addi	x3, x3, 8	# 2127
	lui		x21, %hi(write_rgb_element_int.2927)	# 2127
	ori		x21, x0, %lo(write_rgb_element_int.2927)	# 2127
	sw		x21, 0(x18)	# 2133
	sw		x6, 4(x18)	# 2133
	addi	x21, x3, 0	# 2133
	addi	x3, x3, 8	# 2133
	lui		x23, %hi(write_rgb_element_char.2929)	# 2133
	ori		x23, x0, %lo(write_rgb_element_char.2929)	# 2133
	sw		x23, 0(x21)	# 2139
	sw		x6, 4(x21)	# 2139
	addi	x23, x3, 0	# 2139
	addi	x3, x3, 32	# 2139
	lui		x26, %hi(write_rgb.2931)	# 2139
	ori		x26, x0, %lo(write_rgb.2931)	# 2139
	sw		x26, 0(x23)	# 2162
	sw		x18, 28(x23)	# 2162
	sw		x21, 24(x23)	# 2162
	sw		x24, 20(x23)	# 2162
	sw		x12, 16(x23)	# 2162
	sw		x9, 12(x23)	# 2162
	sw		x6, 8(x23)	# 2162
	sw		x13, 4(x23)	# 2162
	addi	x18, x3, 0	# 2162
	addi	x3, x3, 36	# 2162
	lui		x21, %hi(pretrace_diffuse_rays.2933)	# 2162
	ori		x21, x0, %lo(pretrace_diffuse_rays.2933)	# 2162
	sw		x21, 0(x18)	# 2192
	sw		x27, 32(x18)	# 2192
	lw		x21, -260(x2)	# 2192
	sw		x21, 28(x18)	# 2192
	sw		x5, 24(x18)	# 2192
	sw		x7, 20(x18)	# 2192
	sw		x8, 16(x18)	# 2192
	sw		x4, 12(x18)	# 2192
	sw		x6, 8(x18)	# 2192
	sw		x13, 4(x18)	# 2192
	addi	x4, x3, 0	# 2192
	addi	x3, x3, 76	# 2192
	lui		x5, %hi(pretrace_pixels.2936)	# 2192
	ori		x5, x0, %lo(pretrace_pixels.2936)	# 2192
	sw		x5, 0(x4)	# 2217
	lw		x5, -48(x2)	# 2217
	sw		x5, 72(x4)	# 2217
	lw		x5, -272(x2)	# 2217
	sw		x5, 68(x4)	# 2217
	sw		x27, 64(x4)	# 2217
	sw		x21, 60(x4)	# 2217
	sw		x19, 56(x4)	# 2217
	lw		x5, -152(x2)	# 2217
	sw		x5, 52(x4)	# 2217
	lw		x5, -160(x2)	# 2217
	sw		x5, 48(x4)	# 2217
	lw		x5, -148(x2)	# 2217
	sw		x5, 44(x4)	# 2217
	sw		x24, 40(x4)	# 2217
	lw		x7, -172(x2)	# 2217
	sw		x7, 36(x4)	# 2217
	sw		x18, 32(x4)	# 2217
	lw		x7, -252(x2)	# 2217
	sw		x7, 28(x4)	# 2217
	lw		x7, -144(x2)	# 2217
	sw		x7, 24(x4)	# 2217
	lw		x18, -208(x2)	# 2217
	sw		x18, 20(x4)	# 2217
	sw		x12, 16(x4)	# 2217
	sw		x6, 12(x4)	# 2217
	sw		x13, 8(x4)	# 2217
	fsw		f0, 4(x4)	# 2217
	addi	x19, x3, 0	# 2217
	addi	x3, x3, 40	# 2217
	lui		x21, %hi(pretrace_line.2943)	# 2217
	ori		x21, x0, %lo(pretrace_line.2943)	# 2217
	sw		x21, 0(x19)	# 2233
	lw		x21, -168(x2)	# 2233
	sw		x21, 36(x19)	# 2233
	lw		x21, -164(x2)	# 2233
	sw		x21, 32(x19)	# 2233
	sw		x5, 28(x19)	# 2233
	sw		x4, 24(x19)	# 2233
	sw		x16, 20(x19)	# 2233
	sw		x7, 16(x19)	# 2233
	sw		x12, 12(x19)	# 2233
	sw		x6, 8(x19)	# 2233
	sw		x13, 4(x19)	# 2233
	addi	x4, x3, 0	# 2233
	addi	x3, x3, 40	# 2233
	lui		x21, %hi(scan_pixel.2947)	# 2233
	ori		x21, x0, %lo(scan_pixel.2947)	# 2233
	sw		x21, 0(x4)	# 2253
	sw		x23, 36(x4)	# 2253
	sw		x27, 32(x4)	# 2253
	sw		x20, 28(x4)	# 2253
	sw		x24, 24(x4)	# 2253
	sw		x10, 20(x4)	# 2253
	sw		x16, 16(x4)	# 2253
	sw		x14, 12(x4)	# 2253
	sw		x6, 8(x4)	# 2253
	sw		x13, 4(x4)	# 2253
	addi	x10, x3, 0	# 2253
	addi	x3, x3, 32	# 2253
	lui		x14, %hi(scan_line.2954)	# 2253
	ori		x14, x0, %lo(scan_line.2954)	# 2253
	sw		x14, 0(x10)	# 2271
	sw		x4, 28(x10)	# 2271
	sw		x19, 24(x10)	# 2271
	sw		x16, 20(x10)	# 2271
	sw		x18, 16(x10)	# 2271
	sw		x12, 12(x10)	# 2271
	sw		x6, 8(x10)	# 2271
	sw		x13, 4(x10)	# 2271
	addi	x4, x3, 0	# 2271
	addi	x3, x3, 24	# 2271
	lui		x14, %hi(create_float5x3array.2961)	# 2271
	ori		x14, x0, %lo(create_float5x3array.2961)	# 2271
	sw		x14, 0(x4)	# 2283
	lw		x14, -180(x2)	# 2283
	sw		x14, 20(x4)	# 2283
	sw		x12, 16(x4)	# 2283
	sw		x9, 12(x4)	# 2283
	sw		x13, 8(x4)	# 2283
	fsw		f0, 4(x4)	# 2283
	addi	x20, x3, 0	# 2283
	addi	x3, x3, 28	# 2283
	lui		x21, %hi(create_pixel.2963)	# 2283
	ori		x21, x0, %lo(create_pixel.2963)	# 2283
	sw		x21, 0(x20)	# 2296
	sw		x4, 24(x20)	# 2296
	sw		x14, 20(x20)	# 2296
	sw		x9, 16(x20)	# 2296
	sw		x6, 12(x20)	# 2296
	sw		x13, 8(x20)	# 2296
	fsw		f0, 4(x20)	# 2296
	addi	x4, x3, 0	# 2296
	addi	x3, x3, 16	# 2296
	lui		x21, %hi(init_line_elements.2965)	# 2296
	ori		x21, x0, %lo(init_line_elements.2965)	# 2296
	sw		x21, 0(x4)	# 2305
	sw		x20, 12(x4)	# 2305
	sw		x6, 8(x4)	# 2305
	sw		x13, 4(x4)	# 2305
	addi	x21, x3, 0	# 2305
	addi	x3, x3, 24	# 2305
	lui		x23, %hi(create_pixelline.2968)	# 2305
	ori		x23, x0, %lo(create_pixelline.2968)	# 2305
	sw		x23, 0(x21)	# 2319
	sw		x4, 20(x21)	# 2319
	sw		x16, 16(x21)	# 2319
	sw		x20, 12(x21)	# 2319
	sw		x12, 8(x21)	# 2319
	sw		x6, 4(x21)	# 2319
	addi	x4, x3, 0	# 2319
	addi	x3, x3, 12	# 2319
	lui		x20, %hi(tan.2970)	# 2319
	ori		x20, x0, %lo(tan.2970)	# 2319
	sw		x20, 0(x4)	# 2324
	lw		x20, -8(x2)	# 2324
	sw		x20, 8(x4)	# 2324
	lw		x20, -4(x2)	# 2324
	sw		x20, 4(x4)	# 2324
	addi	x20, x3, 0	# 2324
	addi	x3, x3, 12	# 2324
	lui		x23, %hi(adjust_position.2972)	# 2324
	ori		x23, x0, %lo(adjust_position.2972)	# 2324
	sw		x23, 0(x20)	# 2333
	sw		x4, 8(x20)	# 2333
	lw		x4, 0(x2)	# 2333
	sw		x4, 4(x20)	# 2333
	addi	x4, x3, 0	# 2333
	addi	x3, x3, 24	# 2333
	lui		x23, %hi(calc_dirvec.2975)	# 2333
	ori		x23, x0, %lo(calc_dirvec.2975)	# 2333
	sw		x23, 0(x4)	# 2354
	lw		x23, -264(x2)	# 2354
	sw		x23, 20(x4)	# 2354
	sw		x8, 16(x4)	# 2354
	sw		x20, 12(x4)	# 2354
	sw		x14, 8(x4)	# 2354
	sw		x13, 4(x4)	# 2354
	addi	x14, x3, 0	# 2354
	addi	x3, x3, 28	# 2354
	lui		x20, %hi(calc_dirvecs.2983)	# 2354
	ori		x20, x0, %lo(calc_dirvecs.2983)	# 2354
	sw		x20, 0(x14)	# 2368
	sw		x4, 24(x14)	# 2368
	sw		x18, 20(x14)	# 2368
	sw		x12, 16(x14)	# 2368
	sw		x6, 12(x14)	# 2368
	sw		x13, 8(x14)	# 2368
	fsw		f0, 4(x14)	# 2368
	addi	x4, x3, 0	# 2368
	addi	x3, x3, 24	# 2368
	lui		x20, %hi(calc_dirvec_rows.2988)	# 2368
	ori		x20, x0, %lo(calc_dirvec_rows.2988)	# 2368
	sw		x20, 0(x4)	# 2381
	sw		x14, 20(x4)	# 2381
	sw		x18, 16(x4)	# 2381
	sw		x12, 12(x4)	# 2381
	sw		x6, 8(x4)	# 2381
	sw		x13, 4(x4)	# 2381
	addi	x14, x3, 0	# 2381
	addi	x3, x3, 20	# 2381
	lui		x18, %hi(create_dirvec.2992)	# 2381
	ori		x18, x0, %lo(create_dirvec.2992)	# 2381
	sw		x18, 0(x14)	# 2387
	lw		x18, -20(x2)	# 2387
	sw		x18, 16(x14)	# 2387
	sw		x9, 12(x14)	# 2387
	sw		x6, 8(x14)	# 2387
	fsw		f0, 4(x14)	# 2387
	addi	x20, x3, 0	# 2387
	addi	x3, x3, 16	# 2387
	lui		x24, %hi(create_dirvec_elements.2994)	# 2387
	ori		x24, x0, %lo(create_dirvec_elements.2994)	# 2387
	sw		x24, 0(x20)	# 2394
	sw		x14, 12(x20)	# 2394
	sw		x6, 8(x20)	# 2394
	sw		x13, 4(x20)	# 2394
	addi	x24, x3, 0	# 2394
	addi	x3, x3, 24	# 2394
	lui		x26, %hi(create_dirvecs.2997)	# 2394
	ori		x26, x0, %lo(create_dirvecs.2997)	# 2394
	sw		x26, 0(x24)	# 2406
	sw		x8, 20(x24)	# 2406
	sw		x20, 16(x24)	# 2406
	sw		x14, 12(x24)	# 2406
	sw		x6, 8(x24)	# 2406
	sw		x13, 4(x24)	# 2406
	addi	x20, x3, 0	# 2406
	addi	x3, x3, 16	# 2406
	lui		x26, %hi(init_dirvec_constants.2999)	# 2406
	ori		x26, x0, %lo(init_dirvec_constants.2999)	# 2406
	sw		x26, 0(x20)	# 2413
	lw		x26, -296(x2)	# 2413
	sw		x26, 12(x20)	# 2413
	sw		x6, 8(x20)	# 2413
	sw		x13, 4(x20)	# 2413
	addi	x31, x3, 0	# 2413
	addi	x3, x3, 20	# 2413
	sw		x21, -332(x2)	# 2413
	lui		x21, %hi(init_vecset_constants.3002)	# 2413
	ori		x21, x0, %lo(init_vecset_constants.3002)	# 2413
	sw		x21, 0(x31)	# 2420
	sw		x20, 16(x31)	# 2420
	sw		x8, 12(x31)	# 2420
	sw		x6, 8(x31)	# 2420
	sw		x13, 4(x31)	# 2420
	addi	x8, x3, 0	# 2420
	addi	x3, x3, 20	# 2420
	lui		x20, %hi(init_dirvecs.3004)	# 2420
	ori		x20, x0, %lo(init_dirvecs.3004)	# 2420
	sw		x20, 0(x8)	# 2431
	sw		x31, 16(x8)	# 2431
	sw		x24, 12(x8)	# 2431
	sw		x4, 8(x8)	# 2431
	sw		x6, 4(x8)	# 2431
	addi	x4, x3, 0	# 2431
	addi	x3, x3, 20	# 2431
	lui		x20, %hi(add_reflection.3006)	# 2431
	ori		x20, x0, %lo(add_reflection.3006)	# 2431
	sw		x20, 0(x4)	# 2440
	sw		x23, 16(x4)	# 2440
	sw		x26, 12(x4)	# 2440
	lw		x20, -204(x2)	# 2440
	sw		x20, 8(x4)	# 2440
	sw		x14, 4(x4)	# 2440
	addi	x14, x3, 0	# 2440
	addi	x3, x3, 36	# 2440
	lui		x20, %hi(setup_rect_reflection.3013)	# 2440
	ori		x20, x0, %lo(setup_rect_reflection.3013)	# 2440
	sw		x20, 0(x14)	# 2454
	sw		x25, 32(x14)	# 2454
	lw		x20, -220(x2)	# 2454
	sw		x20, 28(x14)	# 2454
	sw		x17, 24(x14)	# 2454
	sw		x4, 20(x14)	# 2454
	sw		x12, 16(x14)	# 2454
	sw		x9, 12(x14)	# 2454
	sw		x6, 8(x14)	# 2454
	sw		x13, 4(x14)	# 2454
	addi	x21, x3, 0	# 2454
	addi	x3, x3, 48	# 2454
	lui		x23, %hi(setup_surface_reflection.3016)	# 2454
	ori		x23, x0, %lo(setup_surface_reflection.3016)	# 2454
	sw		x23, 0(x21)	# 2469
	sw		x22, 44(x21)	# 2469
	lw		x22, -328(x2)	# 2469
	sw		x22, 40(x21)	# 2469
	lw		x22, -324(x2)	# 2469
	sw		x22, 36(x21)	# 2469
	lw		x22, -320(x2)	# 2469
	sw		x22, 32(x21)	# 2469
	sw		x25, 28(x21)	# 2469
	sw		x20, 24(x21)	# 2469
	sw		x17, 20(x21)	# 2469
	sw		x4, 16(x21)	# 2469
	sw		x12, 12(x21)	# 2469
	sw		x6, 8(x21)	# 2469
	sw		x13, 4(x21)	# 2469
	addi	x4, x3, 0	# 2469
	addi	x3, x3, 32	# 2469
	lui		x20, %hi(setup_reflections.3019)	# 2469
	ori		x20, x0, %lo(setup_reflections.3019)	# 2469
	sw		x20, 0(x4)	# 2491
	sw		x21, 28(x4)	# 2491
	sw		x14, 24(x4)	# 2491
	sw		x11, 20(x4)	# 2491
	sw		x25, 16(x4)	# 2491
	sw		x12, 12(x4)	# 2491
	sw		x6, 8(x4)	# 2491
	sw		x13, 4(x4)	# 2491
	addi	x11, x3, 0	# 2491
	addi	x3, x3, 76	# 2491
	lui		x14, %hi(rt.3021)	# 2491
	ori		x14, x0, %lo(rt.3021)	# 2491
	sw		x14, 0(x11)	# 2512
	sw		x15, 72(x11)	# 2512
	sw		x27, 68(x11)	# 2512
	sw		x4, 64(x11)	# 2512
	sw		x26, 60(x11)	# 2512
	sw		x5, 56(x11)	# 2512
	sw		x10, 52(x11)	# 2512
	lw		x4, -284(x2)	# 2512
	sw		x4, 48(x11)	# 2512
	sw		x19, 44(x11)	# 2512
	sw		x18, 40(x11)	# 2512
	lw		x4, -196(x2)	# 2512
	sw		x4, 36(x11)	# 2512
	sw		x17, 32(x11)	# 2512
	sw		x8, 28(x11)	# 2512
	sw		x16, 24(x11)	# 2512
	sw		x7, 20(x11)	# 2512
	lw		x4, -332(x2)	# 2512
	sw		x4, 16(x11)	# 2512
	sw		x12, 12(x11)	# 2512
	sw		x6, 8(x11)	# 2512
	sw		x13, 4(x11)	# 2512
	ori		x4, x0, 512	# 2512
	addi	x6, x9, 0
	addi	x5, x4, 0
	addi	x27, x11, 0
	sw		x1, -336(x2)	# 2512
	addi	x2, x2, -340	# 2512
	lw		x31, 0(x27)	# 2512
	jalr	x1, x31, 0	# 2512
	addi	x2, x2, 340	# 2512
	lw		x1, -336(x2)	# 2512
	EXIT	
