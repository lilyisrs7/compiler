l.0:	# 8388608.000000
	.word	8388608.000000
l.1:	# 0.000000
	.word	0.000000
l.2:	# 1.000000
	.word	1.000000
l.12391:	# 1000000000.000000
	.word	1000000000.000000
l.12386:	# 255.000000
	.word	255.000000
l.12371:	# 0.785398
	.word	0.785398
l.12369:	# 1.570796
	.word	1.570796
l.12367:	# 6.283185
	.word	6.283185
l.12365:	# 3.141593
	.word	3.141593
l.12214:	# 128.000000
	.word	128.000000
l.11969:	# 0.900000
	.word	0.900000
l.11301:	# 150.000000
	.word	150.000000
l.11296:	# -150.000000
	.word	-150.000000
l.11224:	# 0.100000
	.word	0.100000
l.11192:	# -2.000000
	.word	-2.000000
l.11151:	# 0.003906
	.word	0.003906
l.10995:	# 20.000000
	.word	20.000000
l.10985:	# 0.050000
	.word	0.050000
l.10970:	# 0.250000
	.word	0.250000
l.10948:	# 10.000000
	.word	10.000000
l.10931:	# 0.300000
	.word	0.300000
l.10928:	# 0.150000
	.word	0.150000
l.10897:	# 3.141593
	.word	3.141593
l.10895:	# 30.000000
	.word	30.000000
l.10892:	# 15.000000
	.word	15.000000
l.10890:	# 0.000100
	.word	0.000100
l.10664:	# 100000000.000000
	.word	100000000.000000
l.10549:	# -0.100000
	.word	-0.100000
l.10499:	# 0.010000
	.word	0.010000
l.10497:	# -0.200000
	.word	-0.200000
l.9725:	# 2.000000
	.word	2.000000
l.9618:	# -200.000000
	.word	-200.000000
l.9613:	# 200.000000
	.word	200.000000
l.9609:	# 0.017453
	.word	0.017453
l.9471:	# -1.000000
	.word	-1.000000
l.9458:	# 0.089764
	.word	0.089764
l.9456:	# 0.111111
	.word	0.111111
l.9454:	# 0.142857
	.word	0.142857
l.9452:	# 0.200000
	.word	0.200000
l.9450:	# 0.333333
	.word	0.333333
l.9448:	# 0.437500
	.word	0.437500
l.9445:	# 2.437500
	.word	2.437500
l.9440:	# 0.001370
	.word	0.001370
l.9438:	# 0.041664
	.word	0.041664
l.9436:	# 0.500000
	.word	0.500000
l.9433:	# 0.000196
	.word	0.000196
l.9431:	# 0.008333
	.word	0.008333
l.9429:	# 0.166667
	.word	0.166667
l.9419:	# 1.000000
	.word	1.000000
l.9417:	# 0.000000
	.word	0.000000
int_of_float.2487:
	lui		x4, %hi(l.9417)	# 10
	ori		x4, x0, %lo(l.9417)	# 10
	flw		f1, 0(x4)	# 10
	fle		x31, f1, f0	# 10
	beq		x31, x0, fle_else.17811	# 10
	lui		x4, %hi(l.9419)	# 11
	ori		x4, x0, %lo(l.9419)	# 11
	flw		f2, 0(x4)	# 11
	fle		x31, f2, f0	# 11
	beq		x31, x0, fle_else.17812	# 11
	fsub	f0, f0, f2	# 11
	fle		x31, f1, f0	# 10
	beq		x31, x0, fle_else.17814	# 10
	lui		x4, %hi(l.9419)	# 11
	ori		x4, x0, %lo(l.9419)	# 11
	flw		f1, 0(x4)	# 11
	fle		x31, f1, f0	# 11
	beq		x31, x0, fle_else.17816	# 11
	fsub	f0, f0, f1	# 11
	sw		x1, 0(x2)	# 11
	addi	x2, x2, -4	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 4	# 11
	lw		x1, 0(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.17815	# 11
fle_else.17816:
	addi	x4, x0, 0	# 11
fle_cont.17815:
	jal		x0, fle_cont.17813	# 10
fle_else.17814:
	fsub	x31, x31, x31	# 12
	fsub	f0, x31, f0	# 12
	sw		x1, 0(x2)	# 12
	addi	x2, x2, -4	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 4	# 12
	lw		x1, 0(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.17813:
	addi	x4, x4, 1	# 11
	jalr	x0, x1, 0	# 11
fle_else.17812:
	addi	x4, x0, 0	# 11
	jalr	x0, x1, 0	# 11
fle_else.17811:
	fsub	x31, x31, x31	# 12
	fsub	f0, x31, f0	# 12
	fle		x31, f1, f0	# 10
	beq		x31, x0, fle_else.17818	# 10
	lui		x4, %hi(l.9419)	# 11
	ori		x4, x0, %lo(l.9419)	# 11
	flw		f1, 0(x4)	# 11
	fle		x31, f1, f0	# 11
	beq		x31, x0, fle_else.17820	# 11
	fsub	f0, f0, f1	# 11
	sw		x1, 0(x2)	# 11
	addi	x2, x2, -4	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 4	# 11
	lw		x1, 0(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.17819	# 11
fle_else.17820:
	addi	x4, x0, 0	# 11
fle_cont.17819:
	jal		x0, fle_cont.17817	# 10
fle_else.17818:
	fsub	x31, x31, x31	# 12
	fsub	f0, x31, f0	# 12
	sw		x1, 0(x2)	# 12
	addi	x2, x2, -4	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 4	# 12
	lw		x1, 0(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.17817:
	sub		x4, x0, x4	# 12
	jalr	x0, x1, 0	# 12
float_of_int.2489:
	addi	x5, x0, 0	# 14
	ble		x5, x4, ble.17821	# 14
	sub		x4, x0, x4	# 16
	ble		x5, x4, ble.17823	# 14
	sub		x4, x0, x4	# 16
	sw		x1, 0(x2)	# 16
	addi	x2, x2, -4	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 4	# 16
	lw		x1, 0(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.17822	# 14
ble.17823:
	ori		x5, x0, 1	# 15
	ble		x5, x4, ble.17825	# 15
	lui		x4, %hi(l.9417)	# 15
	ori		x4, x0, %lo(l.9417)	# 15
	flw		f0, 0(x4)	# 15
	jal		x0, ble_cont.17824	# 15
ble.17825:
	sub		x4, x4, x5	# 15
	sw		x1, 0(x2)	# 15
	addi	x2, x2, -4	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 4	# 15
	lw		x1, 0(x2)	# 15
	lui		x4, %hi(l.9419)	# 15
	ori		x4, x0, %lo(l.9419)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.17824:
ble_cont.17822:
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jalr	x0, x1, 0	# 16
ble.17821:
	ori		x6, x0, 1	# 15
	ble		x6, x4, ble.17826	# 15
	lui		x4, %hi(l.9417)	# 15
	ori		x4, x0, %lo(l.9417)	# 15
	flw		f0, 0(x4)	# 15
	jalr	x0, x1, 0	# 15
ble.17826:
	sub		x4, x4, x6	# 15
	ble		x5, x4, ble.17828	# 14
	sub		x4, x0, x4	# 16
	sw		x1, 0(x2)	# 16
	addi	x2, x2, -4	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 4	# 16
	lw		x1, 0(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.17827	# 14
ble.17828:
	ori		x5, x0, 1	# 15
	ble		x5, x4, ble.17830	# 15
	lui		x4, %hi(l.9417)	# 15
	ori		x4, x0, %lo(l.9417)	# 15
	flw		f0, 0(x4)	# 15
	jal		x0, ble_cont.17829	# 15
ble.17830:
	sub		x4, x4, x5	# 15
	sw		x1, 0(x2)	# 15
	addi	x2, x2, -4	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 4	# 15
	lw		x1, 0(x2)	# 15
	lui		x4, %hi(l.9419)	# 15
	ori		x4, x0, %lo(l.9419)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.17829:
ble_cont.17827:
	lui		x4, %hi(l.9419)	# 15
	ori		x4, x0, %lo(l.9419)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
	jalr	x0, x1, 0	# 15
sin_main.2497:
	fmul	f1, f0, f0	# 36
	fmul	f2, f0, f1	# 37
	lui		x4, %hi(l.9429)	# 38
	ori		x4, x0, %lo(l.9429)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f2	# 38
	fsub	f0, f0, f3	# 38
	lui		x4, %hi(l.9431)	# 38
	ori		x4, x0, %lo(l.9431)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f3, f3, f2	# 38
	fadd	f0, f0, f3	# 38
	lui		x4, %hi(l.9433)	# 38
	ori		x4, x0, %lo(l.9433)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f1, f3, f1	# 38
	fmul	f1, f1, f2	# 38
	fsub	f0, f0, f1	# 38
	jalr	x0, x1, 0	# 38
cos_main.2499:
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.9419)	# 43
	ori		x4, x0, %lo(l.9419)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.9436)	# 43
	ori		x4, x0, %lo(l.9436)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.9438)	# 43
	ori		x4, x0, %lo(l.9438)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.9440)	# 43
	ori		x4, x0, %lo(l.9440)	# 43
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
	lui		x4, %hi(l.9417)	# 46
	ori		x4, x0, %lo(l.9417)	# 46
	flw		f5, 0(x4)	# 46
	fle		x31, f5, f0	# 46
	beq		x31, x0, fle_else.17831	# 46
	fle		x31, f3, f0	# 47
	beq		x31, x0, fle_else.17832	# 47
	fsub	f0, f0, f3	# 47
	lw		x31, 0(x27)	# 47
	jalr	x0, x31, 0	# 47
fle_else.17832:
	fle		x31, f4, f0	# 48
	beq		x31, x0, fle_else.17833	# 48
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
fle_else.17833:
	fle		x31, f0, f2	# 49
	beq		x31, x0, fle_else.17834	# 49
	fle		x31, f1, f0	# 50
	beq		x31, x0, fle_else.17835	# 50
	fsub	f0, f2, f0	# 50
	jal		x0, cos_main.2499	# 50
fle_else.17835:
	jal		x0, sin_main.2497	# 51
fle_else.17834:
	fsub	f0, f4, f0	# 49
	lw		x31, 0(x27)	# 49
	jalr	x0, x31, 0	# 49
fle_else.17831:
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
	lui		x5, %hi(l.9417)	# 54
	ori		x5, x0, %lo(l.9417)	# 54
	flw		f3, 0(x5)	# 54
	fle		x31, f3, f0	# 54
	beq		x31, x0, fle_else.17836	# 54
	fle		x31, f0, f1	# 55
	beq		x31, x0, fle_else.17837	# 55
	jal		x0, cos_main.2499	# 56
fle_else.17837:
	fsub	f0, f2, f0	# 55
	addi	x27, x4, 0
	lw		x31, 0(x27)	# 55
	jalr	x0, x31, 0	# 55
fle_else.17836:
	fsub	x31, x31, x31	# 54
	fsub	f0, x31, f0	# 54
	fle		x31, f3, f0	# 54
	beq		x31, x0, fle_else.17838	# 54
	fle		x31, f0, f1	# 55
	beq		x31, x0, fle_else.17839	# 55
	jal		x0, cos_main.2499	# 56
fle_else.17839:
	fsub	f0, f2, f0	# 55
	addi	x27, x4, 0
	lw		x31, 0(x27)	# 55
	jalr	x0, x31, 0	# 55
fle_else.17838:
	fsub	x31, x31, x31	# 54
	fsub	f0, x31, f0	# 54
	fle		x31, f3, f0	# 54
	beq		x31, x0, fle_else.17840	# 54
	fle		x31, f0, f1	# 55
	beq		x31, x0, fle_else.17841	# 55
	jal		x0, cos_main.2499	# 56
fle_else.17841:
	fsub	f0, f2, f0	# 55
	addi	x27, x4, 0
	lw		x31, 0(x27)	# 55
	jalr	x0, x31, 0	# 55
fle_else.17840:
	fsub	x31, x31, x31	# 54
	fsub	f0, x31, f0	# 54
	fle		x31, f3, f0	# 54
	beq		x31, x0, fle_else.17842	# 54
	fle		x31, f0, f1	# 55
	beq		x31, x0, fle_else.17843	# 55
	jal		x0, cos_main.2499	# 56
fle_else.17843:
	fsub	f0, f2, f0	# 55
	addi	x27, x4, 0
	lw		x31, 0(x27)	# 55
	jalr	x0, x31, 0	# 55
fle_else.17842:
	fsub	x31, x31, x31	# 54
	fsub	f0, x31, f0	# 54
	lw		x31, 0(x27)	# 54
	jalr	x0, x31, 0	# 54
atan.2505:
	flw		f1, 8(x27)	# 59
	flw		f2, 4(x27)	# 59
	lui		x4, %hi(l.9417)	# 59
	ori		x4, x0, %lo(l.9417)	# 59
	flw		f3, 0(x4)	# 59
	fle		x31, f3, f0	# 59
	beq		x31, x0, fle_else.17844	# 59
	lui		x4, %hi(l.9445)	# 60
	ori		x4, x0, %lo(l.9445)	# 60
	flw		f3, 0(x4)	# 60
	fle		x31, f0, f3	# 60
	beq		x31, x0, fle_else.17845	# 60
	lui		x4, %hi(l.9448)	# 61
	ori		x4, x0, %lo(l.9448)	# 61
	flw		f2, 0(x4)	# 61
	fle		x31, f2, f0	# 61
	beq		x31, x0, fle_else.17846	# 61
	lui		x4, %hi(l.9419)	# 61
	ori		x4, x0, %lo(l.9419)	# 61
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
fle_else.17846:
	fmul	f1, f0, f0	# 63
	fmul	f2, f0, f1	# 64
	fmul	f3, f1, f1	# 65
	lui		x4, %hi(l.9450)	# 66
	ori		x4, x0, %lo(l.9450)	# 66
	flw		f4, 0(x4)	# 66
	fmul	f4, f4, f2	# 66
	fsub	f0, f0, f4	# 66
	lui		x4, %hi(l.9452)	# 66
	ori		x4, x0, %lo(l.9452)	# 66
	flw		f4, 0(x4)	# 66
	fmul	f4, f4, f1	# 66
	fmul	f4, f4, f2	# 66
	fadd	f0, f0, f4	# 66
	lui		x4, %hi(l.9454)	# 66
	ori		x4, x0, %lo(l.9454)	# 66
	flw		f4, 0(x4)	# 66
	fmul	f4, f4, f3	# 66
	fmul	f4, f4, f2	# 66
	fsub	f0, f0, f4	# 66
	lui		x4, %hi(l.9456)	# 67
	ori		x4, x0, %lo(l.9456)	# 67
	flw		f4, 0(x4)	# 67
	fmul	f1, f4, f1	# 67
	fmul	f1, f1, f3	# 67
	fmul	f1, f1, f2	# 67
	fadd	f0, f0, f1	# 66
	lui		x4, %hi(l.9458)	# 67
	ori		x4, x0, %lo(l.9458)	# 67
	flw		f1, 0(x4)	# 67
	fmul	f1, f1, f3	# 67
	fmul	f1, f1, f3	# 67
	fmul	f1, f1, f2	# 67
	fsub	f0, f0, f1	# 66
	jalr	x0, x1, 0	# 66
fle_else.17845:
	lui		x4, %hi(l.9419)	# 60
	ori		x4, x0, %lo(l.9419)	# 60
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
fle_else.17844:
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
vecunit_sgn.2565:
	lw		x6, 16(x27)	# 283
	lw		x7, 12(x27)	# 283
	lw		x8, 8(x27)	# 283
	flw		f0, 4(x27)	# 283
	ori		x9, x0, 4	# 283
	mul		x9, x7, x9	# 283
	add		x9, x4, x9	# 283
	flw		f1, 0(x9)	# 283
	fmul	f1, f1, f1	# 8
	ori		x9, x0, 4	# 283
	mul		x9, x8, x9	# 283
	add		x9, x4, x9	# 283
	flw		f2, 0(x9)	# 283
	fmul	f2, f2, f2	# 8
	fadd	f1, f1, f2	# 283
	ori		x9, x0, 4	# 283
	mul		x9, x6, x9	# 283
	add		x9, x4, x9	# 283
	flw		f2, 0(x9)	# 283
	fmul	f2, f2, f2	# 8
	fadd	f1, f1, f2	# 283
	sw		x6, 0(x2)	# 283
	sw		x8, -4(x2)	# 283
	sw		x4, -8(x2)	# 283
	sw		x5, -12(x2)	# 283
	sw		x7, -16(x2)	# 283
	fsw		f0, -24(x2)	# 283
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -32(x2)	# 283
	addi	x2, x2, -36	# 283
	jal		x1, min_caml_sqrt	# 283
	addi	x2, x2, 36	# 283
	lw		x1, -32(x2)	# 283
	flw		f1, -24(x2)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.17849	# 1
	ori		x4, x0, 1	# 1
	jal		x0, feq_cont.17848	# 1
feq_else.17849:
	addi	x4, x0, 0	# 1
feq_cont.17848:
	lw		x5, -16(x2)	# 284
	beq		x4, x5, beq.17851	# 284
	lui		x4, %hi(l.9419)	# 284
	ori		x4, x0, %lo(l.9419)	# 284
	flw		f0, 0(x4)	# 284
	jal		x0, beq_cont.17850	# 284
beq.17851:
	lw		x4, -12(x2)	# 284
	beq		x4, x5, beq.17853	# 284
	lui		x4, %hi(l.9471)	# 284
	ori		x4, x0, %lo(l.9471)	# 284
	flw		f1, 0(x4)	# 284
	fdiv	f0, f1, f0	# 284
	jal		x0, beq_cont.17852	# 284
beq.17853:
	lui		x4, %hi(l.9419)	# 284
	ori		x4, x0, %lo(l.9419)	# 284
	flw		f1, 0(x4)	# 284
	fdiv	f0, f1, f0	# 284
beq_cont.17852:
beq_cont.17850:
	ori		x4, x0, 4	# 285
	mul		x4, x5, x4	# 285
	lw		x6, -8(x2)	# 285
	add		x4, x6, x4	# 285
	flw		f1, 0(x4)	# 285
	fmul	f1, f1, f0	# 285
	ori		x4, x0, 4	# 285
	mul		x4, x5, x4	# 285
	add		x4, x6, x4	# 285
	fsw		f1, 0(x4)	# 285
	ori		x4, x0, 4	# 286
	lw		x5, -4(x2)	# 286
	mul		x4, x5, x4	# 286
	add		x4, x6, x4	# 286
	flw		f1, 0(x4)	# 286
	fmul	f1, f1, f0	# 286
	ori		x4, x0, 4	# 286
	mul		x4, x5, x4	# 286
	add		x4, x6, x4	# 286
	fsw		f1, 0(x4)	# 286
	ori		x4, x0, 4	# 287
	lw		x5, 0(x2)	# 287
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
read_screen_settings.2663:
	lw		x4, 52(x27)	# 684
	lw		x5, 48(x27)	# 684
	lw		x6, 44(x27)	# 684
	lw		x7, 40(x27)	# 684
	lw		x8, 36(x27)	# 684
	lw		x9, 32(x27)	# 684
	flw		f0, 28(x27)	# 684
	flw		f1, 24(x27)	# 684
	lw		x10, 20(x27)	# 684
	lw		x11, 16(x27)	# 684
	lw		x12, 12(x27)	# 684
	lw		x13, 8(x27)	# 684
	flw		f2, 4(x27)	# 684
	sw		x4, 0(x2)	# 684
	sw		x7, -4(x2)	# 684
	sw		x8, -8(x2)	# 684
	sw		x6, -12(x2)	# 684
	sw		x10, -16(x2)	# 684
	sw		x5, -20(x2)	# 684
	fsw		f1, -24(x2)	# 684
	fsw		f0, -32(x2)	# 684
	fsw		f2, -40(x2)	# 684
	sw		x11, -48(x2)	# 684
	sw		x13, -52(x2)	# 684
	sw		x9, -56(x2)	# 684
	sw		x12, -60(x2)	# 684
	sw		x1, -64(x2)	# 684
	addi	x2, x2, -68	# 684
	jal		x1, min_caml_read_float	# 684
	addi	x2, x2, 68	# 684
	lw		x1, -64(x2)	# 684
	ori		x4, x0, 4	# 684
	lw		x5, -60(x2)	# 684
	mul		x4, x5, x4	# 684
	lw		x6, -56(x2)	# 684
	add		x4, x6, x4	# 684
	fsw		f0, 0(x4)	# 684
	sw		x1, -64(x2)	# 685
	addi	x2, x2, -68	# 685
	jal		x1, min_caml_read_float	# 685
	addi	x2, x2, 68	# 685
	lw		x1, -64(x2)	# 685
	ori		x4, x0, 4	# 685
	lw		x5, -52(x2)	# 685
	mul		x4, x5, x4	# 685
	lw		x6, -56(x2)	# 685
	add		x4, x6, x4	# 685
	fsw		f0, 0(x4)	# 685
	sw		x1, -64(x2)	# 686
	addi	x2, x2, -68	# 686
	jal		x1, min_caml_read_float	# 686
	addi	x2, x2, 68	# 686
	lw		x1, -64(x2)	# 686
	ori		x4, x0, 4	# 686
	lw		x5, -48(x2)	# 686
	mul		x4, x5, x4	# 686
	lw		x6, -56(x2)	# 686
	add		x4, x6, x4	# 686
	fsw		f0, 0(x4)	# 686
	sw		x1, -64(x2)	# 688
	addi	x2, x2, -68	# 688
	jal		x1, min_caml_read_float	# 688
	addi	x2, x2, 68	# 688
	lw		x1, -64(x2)	# 688
	lui		x4, %hi(l.9609)	# 677
	ori		x4, x0, %lo(l.9609)	# 677
	flw		f1, 0(x4)	# 677
	fmul	f0, f0, f1	# 677
	flw		f2, -40(x2)	# 54
	fsw		f1, -64(x2)	# 54
	fsw		f0, -72(x2)	# 54
	fle		x31, f2, f0	# 54
	beq		x31, x0, fle_else.17859	# 54
	flw		f3, -32(x2)	# 55
	fle		x31, f0, f3	# 55
	beq		x31, x0, fle_else.17861	# 55
	sw		x1, -80(x2)	# 56
	addi	x2, x2, -84	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 84	# 56
	lw		x1, -80(x2)	# 56
	jal		x0, fle_cont.17860	# 55
fle_else.17861:
	flw		f4, -24(x2)	# 55
	fsub	f5, f4, f0	# 55
	lw		x27, -20(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f5
	sw		x1, -80(x2)	# 55
	addi	x2, x2, -84	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 84	# 55
	lw		x1, -80(x2)	# 55
fle_cont.17860:
	jal		x0, fle_cont.17858	# 54
fle_else.17859:
	fsub	f3, f3, f3	# 54
	fsub	f3, f3, f0	# 54
	lui		x4, %hi(l.9417)	# 54
	ori		x4, x0, %lo(l.9417)	# 54
	flw		f4, 0(x4)	# 54
	fle		x31, f4, f3	# 54
	beq		x31, x0, fle_else.17863	# 54
	flw		f4, -32(x2)	# 55
	fle		x31, f3, f4	# 55
	beq		x31, x0, fle_else.17865	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -80(x2)	# 56
	addi	x2, x2, -84	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 84	# 56
	lw		x1, -80(x2)	# 56
	jal		x0, fle_cont.17864	# 55
fle_else.17865:
	flw		f5, -24(x2)	# 55
	fsub	f3, f5, f3	# 55
	lw		x27, -20(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -80(x2)	# 55
	addi	x2, x2, -84	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 84	# 55
	lw		x1, -80(x2)	# 55
fle_cont.17864:
	jal		x0, fle_cont.17862	# 54
fle_else.17863:
	fsub	x31, x31, x31	# 54
	fsub	f3, x31, f3	# 54
	fle		x31, f4, f3	# 54
	beq		x31, x0, fle_else.17867	# 54
	flw		f4, -32(x2)	# 55
	fle		x31, f3, f4	# 55
	beq		x31, x0, fle_else.17869	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -80(x2)	# 56
	addi	x2, x2, -84	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 84	# 56
	lw		x1, -80(x2)	# 56
	jal		x0, fle_cont.17868	# 55
fle_else.17869:
	flw		f5, -24(x2)	# 55
	fsub	f3, f5, f3	# 55
	lw		x27, -20(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -80(x2)	# 55
	addi	x2, x2, -84	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 84	# 55
	lw		x1, -80(x2)	# 55
fle_cont.17868:
	jal		x0, fle_cont.17866	# 54
fle_else.17867:
	fsub	x31, x31, x31	# 54
	fsub	f3, x31, f3	# 54
	lw		x27, -16(x2)	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -80(x2)	# 54
	addi	x2, x2, -84	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 84	# 54
	lw		x1, -80(x2)	# 54
fle_cont.17866:
fle_cont.17862:
fle_cont.17858:
	flw		f1, -72(x2)	# 690
	lw		x27, -20(x2)	# 690
	fsw		f0, -80(x2)	# 690
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -88(x2)	# 690
	addi	x2, x2, -92	# 690
	lw		x31, 0(x27)	# 690
	jalr	x1, x31, 0	# 690
	addi	x2, x2, 92	# 690
	lw		x1, -88(x2)	# 690
	fsw		f0, -88(x2)	# 691
	sw		x1, -96(x2)	# 691
	addi	x2, x2, -100	# 691
	jal		x1, min_caml_read_float	# 691
	addi	x2, x2, 100	# 691
	lw		x1, -96(x2)	# 691
	flw		f1, -64(x2)	# 677
	fmul	f0, f0, f1	# 677
	flw		f1, -40(x2)	# 54
	fsw		f0, -96(x2)	# 54
	fle		x31, f1, f0	# 54
	beq		x31, x0, fle_else.17871	# 54
	flw		f2, -32(x2)	# 55
	fle		x31, f0, f2	# 55
	beq		x31, x0, fle_else.17873	# 55
	sw		x1, -104(x2)	# 56
	addi	x2, x2, -108	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 108	# 56
	lw		x1, -104(x2)	# 56
	jal		x0, fle_cont.17872	# 55
fle_else.17873:
	flw		f2, -24(x2)	# 55
	fsub	f2, f2, f0	# 55
	lw		x27, -20(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -104(x2)	# 55
	addi	x2, x2, -108	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 108	# 55
	lw		x1, -104(x2)	# 55
fle_cont.17872:
	jal		x0, fle_cont.17870	# 54
fle_else.17871:
	fsub	f2, f2, f2	# 54
	fsub	f2, f2, f0	# 54
	lui		x4, %hi(l.9417)	# 54
	ori		x4, x0, %lo(l.9417)	# 54
	flw		f3, 0(x4)	# 54
	fle		x31, f3, f2	# 54
	beq		x31, x0, fle_else.17875	# 54
	flw		f3, -32(x2)	# 55
	fle		x31, f2, f3	# 55
	beq		x31, x0, fle_else.17877	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -104(x2)	# 56
	addi	x2, x2, -108	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 108	# 56
	lw		x1, -104(x2)	# 56
	jal		x0, fle_cont.17876	# 55
fle_else.17877:
	flw		f3, -24(x2)	# 55
	fsub	f2, f3, f2	# 55
	lw		x27, -20(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -104(x2)	# 55
	addi	x2, x2, -108	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 108	# 55
	lw		x1, -104(x2)	# 55
fle_cont.17876:
	jal		x0, fle_cont.17874	# 54
fle_else.17875:
	fsub	x31, x31, x31	# 54
	fsub	f2, x31, f2	# 54
	fle		x31, f3, f2	# 54
	beq		x31, x0, fle_else.17879	# 54
	flw		f3, -32(x2)	# 55
	fle		x31, f2, f3	# 55
	beq		x31, x0, fle_else.17881	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -104(x2)	# 56
	addi	x2, x2, -108	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 108	# 56
	lw		x1, -104(x2)	# 56
	jal		x0, fle_cont.17880	# 55
fle_else.17881:
	flw		f3, -24(x2)	# 55
	fsub	f2, f3, f2	# 55
	lw		x27, -20(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -104(x2)	# 55
	addi	x2, x2, -108	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 108	# 55
	lw		x1, -104(x2)	# 55
fle_cont.17880:
	jal		x0, fle_cont.17878	# 54
fle_else.17879:
	fsub	x31, x31, x31	# 54
	fsub	f2, x31, f2	# 54
	lw		x27, -16(x2)	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -104(x2)	# 54
	addi	x2, x2, -108	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 108	# 54
	lw		x1, -104(x2)	# 54
fle_cont.17878:
fle_cont.17874:
fle_cont.17870:
	flw		f1, -96(x2)	# 693
	lw		x27, -20(x2)	# 693
	fsw		f0, -104(x2)	# 693
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -112(x2)	# 693
	addi	x2, x2, -116	# 693
	lw		x31, 0(x27)	# 693
	jalr	x1, x31, 0	# 693
	addi	x2, x2, 116	# 693
	lw		x1, -112(x2)	# 693
	flw		f1, -80(x2)	# 695
	fmul	f2, f1, f0	# 695
	lui		x4, %hi(l.9613)	# 695
	ori		x4, x0, %lo(l.9613)	# 695
	flw		f3, 0(x4)	# 695
	fmul	f2, f2, f3	# 695
	ori		x4, x0, 4	# 695
	lw		x5, -60(x2)	# 695
	mul		x4, x5, x4	# 695
	lw		x6, -12(x2)	# 695
	add		x4, x6, x4	# 695
	fsw		f2, 0(x4)	# 695
	lui		x4, %hi(l.9618)	# 696
	ori		x4, x0, %lo(l.9618)	# 696
	flw		f2, 0(x4)	# 696
	flw		f4, -88(x2)	# 696
	fmul	f2, f4, f2	# 696
	ori		x4, x0, 4	# 696
	lw		x7, -52(x2)	# 696
	mul		x4, x7, x4	# 696
	add		x4, x6, x4	# 696
	fsw		f2, 0(x4)	# 696
	flw		f2, -104(x2)	# 697
	fmul	f5, f1, f2	# 697
	fmul	f3, f5, f3	# 697
	ori		x4, x0, 4	# 697
	lw		x8, -48(x2)	# 697
	mul		x4, x8, x4	# 697
	add		x4, x6, x4	# 697
	fsw		f3, 0(x4)	# 697
	ori		x4, x0, 4	# 699
	mul		x4, x5, x4	# 699
	lw		x9, -8(x2)	# 699
	add		x4, x9, x4	# 699
	fsw		f2, 0(x4)	# 699
	ori		x4, x0, 4	# 700
	mul		x4, x7, x4	# 700
	add		x4, x9, x4	# 700
	flw		f3, -40(x2)	# 700
	fsw		f3, 0(x4)	# 700
	fsub	f3, f3, f3	# 4
	fsub	f3, f3, f0	# 4
	ori		x4, x0, 4	# 701
	mul		x4, x8, x4	# 701
	add		x4, x9, x4	# 701
	fsw		f3, 0(x4)	# 701
	fsub	f3, f3, f3	# 4
	fsub	f3, f3, f4	# 4
	fmul	f0, f3, f0	# 703
	ori		x4, x0, 4	# 703
	mul		x4, x5, x4	# 703
	lw		x9, -4(x2)	# 703
	add		x4, x9, x4	# 703
	fsw		f0, 0(x4)	# 703
	fsub	f0, f0, f0	# 4
	fsub	f0, f0, f1	# 4
	ori		x4, x0, 4	# 704
	mul		x4, x7, x4	# 704
	add		x4, x9, x4	# 704
	fsw		f0, 0(x4)	# 704
	fmul	f0, f3, f2	# 705
	ori		x4, x0, 4	# 705
	mul		x4, x8, x4	# 705
	add		x4, x9, x4	# 705
	fsw		f0, 0(x4)	# 705
	ori		x4, x0, 4	# 707
	mul		x4, x5, x4	# 707
	lw		x9, -56(x2)	# 707
	add		x4, x9, x4	# 707
	flw		f0, 0(x4)	# 707
	ori		x4, x0, 4	# 707
	mul		x4, x5, x4	# 707
	add		x4, x6, x4	# 707
	flw		f1, 0(x4)	# 707
	fsub	f0, f0, f1	# 707
	ori		x4, x0, 4	# 707
	mul		x4, x5, x4	# 707
	lw		x5, 0(x2)	# 707
	add		x4, x5, x4	# 707
	fsw		f0, 0(x4)	# 707
	ori		x4, x0, 4	# 708
	mul		x4, x7, x4	# 708
	add		x4, x9, x4	# 708
	flw		f0, 0(x4)	# 708
	ori		x4, x0, 4	# 708
	mul		x4, x7, x4	# 708
	add		x4, x6, x4	# 708
	flw		f1, 0(x4)	# 708
	fsub	f0, f0, f1	# 708
	ori		x4, x0, 4	# 708
	mul		x4, x7, x4	# 708
	add		x4, x5, x4	# 708
	fsw		f0, 0(x4)	# 708
	ori		x4, x0, 4	# 709
	mul		x4, x8, x4	# 709
	add		x4, x9, x4	# 709
	flw		f0, 0(x4)	# 709
	ori		x4, x0, 4	# 709
	mul		x4, x8, x4	# 709
	add		x4, x6, x4	# 709
	flw		f1, 0(x4)	# 709
	fsub	f0, f0, f1	# 709
	ori		x4, x0, 4	# 709
	mul		x4, x8, x4	# 709
	add		x4, x5, x4	# 709
	fsw		f0, 0(x4)	# 709
	jalr	x0, x1, 0	# 709
read_light.2665:
	lw		x4, 40(x27)	# 716
	flw		f0, 36(x27)	# 716
	flw		f1, 32(x27)	# 716
	lw		x5, 28(x27)	# 716
	lw		x6, 24(x27)	# 716
	lw		x7, 20(x27)	# 716
	lw		x8, 16(x27)	# 716
	lw		x9, 12(x27)	# 716
	lw		x10, 8(x27)	# 716
	flw		f2, 4(x27)	# 716
	sw		x7, 0(x2)	# 716
	sw		x8, -4(x2)	# 716
	sw		x9, -8(x2)	# 716
	sw		x6, -12(x2)	# 716
	fsw		f1, -16(x2)	# 716
	fsw		f0, -24(x2)	# 716
	fsw		f2, -32(x2)	# 716
	sw		x5, -40(x2)	# 716
	sw		x10, -44(x2)	# 716
	sw		x4, -48(x2)	# 716
	sw		x1, -52(x2)	# 716
	addi	x2, x2, -56	# 716
	jal		x1, min_caml_read_int	# 716
	addi	x2, x2, 56	# 716
	lw		x1, -52(x2)	# 716
	sw		x1, -52(x2)	# 719
	addi	x2, x2, -56	# 719
	jal		x1, min_caml_read_float	# 719
	addi	x2, x2, 56	# 719
	lw		x1, -52(x2)	# 719
	lui		x4, %hi(l.9609)	# 677
	ori		x4, x0, %lo(l.9609)	# 677
	flw		f1, 0(x4)	# 677
	fmul	f0, f0, f1	# 677
	lw		x27, -48(x2)	# 720
	fsw		f0, -56(x2)	# 720
	fsw		f1, -64(x2)	# 720
	sw		x1, -72(x2)	# 720
	addi	x2, x2, -76	# 720
	lw		x31, 0(x27)	# 720
	jalr	x1, x31, 0	# 720
	addi	x2, x2, 76	# 720
	lw		x1, -72(x2)	# 720
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x4, x0, 4	# 721
	lw		x5, -44(x2)	# 721
	mul		x4, x5, x4	# 721
	lw		x5, -40(x2)	# 721
	add		x4, x5, x4	# 721
	fsw		f0, 0(x4)	# 721
	sw		x1, -72(x2)	# 722
	addi	x2, x2, -76	# 722
	jal		x1, min_caml_read_float	# 722
	addi	x2, x2, 76	# 722
	lw		x1, -72(x2)	# 722
	flw		f1, -64(x2)	# 677
	fmul	f0, f0, f1	# 677
	flw		f1, -56(x2)	# 54
	flw		f2, -32(x2)	# 54
	fsw		f0, -72(x2)	# 54
	fle		x31, f2, f1	# 54
	beq		x31, x0, fle_else.17885	# 54
	flw		f3, -24(x2)	# 55
	fle		x31, f1, f3	# 55
	beq		x31, x0, fle_else.17887	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 56
	addi	x2, x2, -84	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 84	# 56
	lw		x1, -80(x2)	# 56
	jal		x0, fle_cont.17886	# 55
fle_else.17887:
	flw		f4, -16(x2)	# 55
	fsub	f1, f4, f1	# 55
	lw		x27, -48(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 55
	addi	x2, x2, -84	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 84	# 55
	lw		x1, -80(x2)	# 55
fle_cont.17886:
	jal		x0, fle_cont.17884	# 54
fle_else.17885:
	fsub	x31, x31, x31	# 54
	fsub	f1, x31, f1	# 54
	lui		x4, %hi(l.9417)	# 54
	ori		x4, x0, %lo(l.9417)	# 54
	flw		f3, 0(x4)	# 54
	fle		x31, f3, f1	# 54
	beq		x31, x0, fle_else.17889	# 54
	flw		f3, -24(x2)	# 55
	fle		x31, f1, f3	# 55
	beq		x31, x0, fle_else.17891	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 56
	addi	x2, x2, -84	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 84	# 56
	lw		x1, -80(x2)	# 56
	jal		x0, fle_cont.17890	# 55
fle_else.17891:
	flw		f4, -16(x2)	# 55
	fsub	f1, f4, f1	# 55
	lw		x27, -48(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 55
	addi	x2, x2, -84	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 84	# 55
	lw		x1, -80(x2)	# 55
fle_cont.17890:
	jal		x0, fle_cont.17888	# 54
fle_else.17889:
	fsub	x31, x31, x31	# 54
	fsub	f1, x31, f1	# 54
	fle		x31, f3, f1	# 54
	beq		x31, x0, fle_else.17893	# 54
	flw		f3, -24(x2)	# 55
	fle		x31, f1, f3	# 55
	beq		x31, x0, fle_else.17895	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 56
	addi	x2, x2, -84	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 84	# 56
	lw		x1, -80(x2)	# 56
	jal		x0, fle_cont.17894	# 55
fle_else.17895:
	flw		f4, -16(x2)	# 55
	fsub	f1, f4, f1	# 55
	lw		x27, -48(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 55
	addi	x2, x2, -84	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 84	# 55
	lw		x1, -80(x2)	# 55
fle_cont.17894:
	jal		x0, fle_cont.17892	# 54
fle_else.17893:
	fsub	x31, x31, x31	# 54
	fsub	f1, x31, f1	# 54
	lw		x27, -12(x2)	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 54
	addi	x2, x2, -84	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 84	# 54
	lw		x1, -80(x2)	# 54
fle_cont.17892:
fle_cont.17888:
fle_cont.17884:
	flw		f1, -72(x2)	# 724
	lw		x27, -48(x2)	# 724
	fsw		f0, -80(x2)	# 724
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -88(x2)	# 724
	addi	x2, x2, -92	# 724
	lw		x31, 0(x27)	# 724
	jalr	x1, x31, 0	# 724
	addi	x2, x2, 92	# 724
	lw		x1, -88(x2)	# 724
	flw		f1, -80(x2)	# 725
	fmul	f0, f1, f0	# 725
	ori		x4, x0, 4	# 725
	lw		x5, -8(x2)	# 725
	mul		x4, x5, x4	# 725
	lw		x6, -40(x2)	# 725
	add		x4, x6, x4	# 725
	fsw		f0, 0(x4)	# 725
	flw		f0, -72(x2)	# 54
	flw		f2, -32(x2)	# 54
	fle		x31, f2, f0	# 54
	beq		x31, x0, fle_else.17897	# 54
	flw		f2, -24(x2)	# 55
	fle		x31, f0, f2	# 55
	beq		x31, x0, fle_else.17899	# 55
	sw		x1, -88(x2)	# 56
	addi	x2, x2, -92	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 92	# 56
	lw		x1, -88(x2)	# 56
	jal		x0, fle_cont.17898	# 55
fle_else.17899:
	flw		f2, -16(x2)	# 55
	fsub	f0, f2, f0	# 55
	lw		x27, -48(x2)	# 55
	sw		x1, -88(x2)	# 55
	addi	x2, x2, -92	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 92	# 55
	lw		x1, -88(x2)	# 55
fle_cont.17898:
	jal		x0, fle_cont.17896	# 54
fle_else.17897:
	fsub	x31, x31, x31	# 54
	fsub	f0, x31, f0	# 54
	lui		x4, %hi(l.9417)	# 54
	ori		x4, x0, %lo(l.9417)	# 54
	flw		f2, 0(x4)	# 54
	fle		x31, f2, f0	# 54
	beq		x31, x0, fle_else.17901	# 54
	flw		f2, -24(x2)	# 55
	fle		x31, f0, f2	# 55
	beq		x31, x0, fle_else.17903	# 55
	sw		x1, -88(x2)	# 56
	addi	x2, x2, -92	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 92	# 56
	lw		x1, -88(x2)	# 56
	jal		x0, fle_cont.17902	# 55
fle_else.17903:
	flw		f2, -16(x2)	# 55
	fsub	f0, f2, f0	# 55
	lw		x27, -48(x2)	# 55
	sw		x1, -88(x2)	# 55
	addi	x2, x2, -92	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 92	# 55
	lw		x1, -88(x2)	# 55
fle_cont.17902:
	jal		x0, fle_cont.17900	# 54
fle_else.17901:
	fsub	x31, x31, x31	# 54
	fsub	f0, x31, f0	# 54
	fle		x31, f2, f0	# 54
	beq		x31, x0, fle_else.17905	# 54
	flw		f2, -24(x2)	# 55
	fle		x31, f0, f2	# 55
	beq		x31, x0, fle_else.17907	# 55
	sw		x1, -88(x2)	# 56
	addi	x2, x2, -92	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 92	# 56
	lw		x1, -88(x2)	# 56
	jal		x0, fle_cont.17906	# 55
fle_else.17907:
	flw		f2, -16(x2)	# 55
	fsub	f0, f2, f0	# 55
	lw		x27, -48(x2)	# 55
	sw		x1, -88(x2)	# 55
	addi	x2, x2, -92	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 92	# 55
	lw		x1, -88(x2)	# 55
fle_cont.17906:
	jal		x0, fle_cont.17904	# 54
fle_else.17905:
	fsub	x31, x31, x31	# 54
	fsub	f0, x31, f0	# 54
	lw		x27, -12(x2)	# 54
	sw		x1, -88(x2)	# 54
	addi	x2, x2, -92	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 92	# 54
	lw		x1, -88(x2)	# 54
fle_cont.17904:
fle_cont.17900:
fle_cont.17896:
	flw		f1, -80(x2)	# 727
	fmul	f0, f1, f0	# 727
	ori		x4, x0, 4	# 727
	lw		x5, -4(x2)	# 727
	mul		x4, x5, x4	# 727
	lw		x5, -40(x2)	# 727
	add		x4, x5, x4	# 727
	fsw		f0, 0(x4)	# 727
	sw		x1, -88(x2)	# 728
	addi	x2, x2, -92	# 728
	jal		x1, min_caml_read_float	# 728
	addi	x2, x2, 92	# 728
	lw		x1, -88(x2)	# 728
	ori		x4, x0, 4	# 728
	lw		x5, -8(x2)	# 728
	mul		x4, x5, x4	# 728
	lw		x5, 0(x2)	# 728
	add		x4, x5, x4	# 728
	fsw		f0, 0(x4)	# 728
	jalr	x0, x1, 0	# 728
rotate_quadratic_matrix.2667:
	lw		x6, 32(x27)	# 738
	flw		f0, 28(x27)	# 738
	flw		f1, 24(x27)	# 738
	lw		x7, 20(x27)	# 738
	lw		x8, 16(x27)	# 738
	lw		x9, 12(x27)	# 738
	lw		x10, 8(x27)	# 738
	flw		f2, 4(x27)	# 738
	ori		x11, x0, 4	# 738
	mul		x11, x9, x11	# 738
	add		x11, x5, x11	# 738
	flw		f3, 0(x11)	# 738
	sw		x4, 0(x2)	# 54
	sw		x8, -4(x2)	# 54
	sw		x7, -8(x2)	# 54
	fsw		f1, -16(x2)	# 54
	fsw		f0, -24(x2)	# 54
	fsw		f2, -32(x2)	# 54
	sw		x10, -40(x2)	# 54
	sw		x6, -44(x2)	# 54
	sw		x5, -48(x2)	# 54
	sw		x9, -52(x2)	# 54
	fle		x31, f2, f3	# 54
	beq		x31, x0, fle_else.17911	# 54
	fle		x31, f3, f0	# 55
	beq		x31, x0, fle_else.17913	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -56(x2)	# 56
	addi	x2, x2, -60	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 60	# 56
	lw		x1, -56(x2)	# 56
	jal		x0, fle_cont.17912	# 55
fle_else.17913:
	fsub	f3, f1, f3	# 55
	addi	x27, x6, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -56(x2)	# 55
	addi	x2, x2, -60	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 60	# 55
	lw		x1, -56(x2)	# 55
fle_cont.17912:
	jal		x0, fle_cont.17910	# 54
fle_else.17911:
	fsub	x31, x31, x31	# 54
	fsub	f3, x31, f3	# 54
	lui		x11, %hi(l.9417)	# 54
	ori		x11, x0, %lo(l.9417)	# 54
	flw		f4, 0(x11)	# 54
	fle		x31, f4, f3	# 54
	beq		x31, x0, fle_else.17915	# 54
	fle		x31, f3, f0	# 55
	beq		x31, x0, fle_else.17917	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -56(x2)	# 56
	addi	x2, x2, -60	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 60	# 56
	lw		x1, -56(x2)	# 56
	jal		x0, fle_cont.17916	# 55
fle_else.17917:
	fsub	f3, f1, f3	# 55
	addi	x27, x6, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -56(x2)	# 55
	addi	x2, x2, -60	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 60	# 55
	lw		x1, -56(x2)	# 55
fle_cont.17916:
	jal		x0, fle_cont.17914	# 54
fle_else.17915:
	fsub	x31, x31, x31	# 54
	fsub	f3, x31, f3	# 54
	fle		x31, f4, f3	# 54
	beq		x31, x0, fle_else.17919	# 54
	fle		x31, f3, f0	# 55
	beq		x31, x0, fle_else.17921	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -56(x2)	# 56
	addi	x2, x2, -60	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 60	# 56
	lw		x1, -56(x2)	# 56
	jal		x0, fle_cont.17920	# 55
fle_else.17921:
	fsub	f3, f1, f3	# 55
	addi	x27, x6, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -56(x2)	# 55
	addi	x2, x2, -60	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 60	# 55
	lw		x1, -56(x2)	# 55
fle_cont.17920:
	jal		x0, fle_cont.17918	# 54
fle_else.17919:
	fsub	x31, x31, x31	# 54
	fsub	f3, x31, f3	# 54
	addi	x27, x7, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -56(x2)	# 54
	addi	x2, x2, -60	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 60	# 54
	lw		x1, -56(x2)	# 54
fle_cont.17918:
fle_cont.17914:
fle_cont.17910:
	ori		x4, x0, 4	# 739
	lw		x5, -52(x2)	# 739
	mul		x4, x5, x4	# 739
	lw		x6, -48(x2)	# 739
	add		x4, x6, x4	# 739
	flw		f1, 0(x4)	# 739
	lw		x27, -44(x2)	# 739
	fsw		f0, -56(x2)	# 739
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -64(x2)	# 739
	addi	x2, x2, -68	# 739
	lw		x31, 0(x27)	# 739
	jalr	x1, x31, 0	# 739
	addi	x2, x2, 68	# 739
	lw		x1, -64(x2)	# 739
	ori		x4, x0, 4	# 740
	lw		x5, -40(x2)	# 740
	mul		x4, x5, x4	# 740
	lw		x6, -48(x2)	# 740
	add		x4, x6, x4	# 740
	flw		f1, 0(x4)	# 740
	flw		f2, -32(x2)	# 54
	fsw		f0, -64(x2)	# 54
	fle		x31, f2, f1	# 54
	beq		x31, x0, fle_else.17923	# 54
	flw		f3, -24(x2)	# 55
	fle		x31, f1, f3	# 55
	beq		x31, x0, fle_else.17925	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -72(x2)	# 56
	addi	x2, x2, -76	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 76	# 56
	lw		x1, -72(x2)	# 56
	jal		x0, fle_cont.17924	# 55
fle_else.17925:
	flw		f4, -16(x2)	# 55
	fsub	f1, f4, f1	# 55
	lw		x27, -44(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -72(x2)	# 55
	addi	x2, x2, -76	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 76	# 55
	lw		x1, -72(x2)	# 55
fle_cont.17924:
	jal		x0, fle_cont.17922	# 54
fle_else.17923:
	fsub	x31, x31, x31	# 54
	fsub	f1, x31, f1	# 54
	lui		x4, %hi(l.9417)	# 54
	ori		x4, x0, %lo(l.9417)	# 54
	flw		f3, 0(x4)	# 54
	fle		x31, f3, f1	# 54
	beq		x31, x0, fle_else.17927	# 54
	flw		f3, -24(x2)	# 55
	fle		x31, f1, f3	# 55
	beq		x31, x0, fle_else.17929	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -72(x2)	# 56
	addi	x2, x2, -76	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 76	# 56
	lw		x1, -72(x2)	# 56
	jal		x0, fle_cont.17928	# 55
fle_else.17929:
	flw		f4, -16(x2)	# 55
	fsub	f1, f4, f1	# 55
	lw		x27, -44(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -72(x2)	# 55
	addi	x2, x2, -76	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 76	# 55
	lw		x1, -72(x2)	# 55
fle_cont.17928:
	jal		x0, fle_cont.17926	# 54
fle_else.17927:
	fsub	x31, x31, x31	# 54
	fsub	f1, x31, f1	# 54
	fle		x31, f3, f1	# 54
	beq		x31, x0, fle_else.17931	# 54
	flw		f3, -24(x2)	# 55
	fle		x31, f1, f3	# 55
	beq		x31, x0, fle_else.17933	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -72(x2)	# 56
	addi	x2, x2, -76	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 76	# 56
	lw		x1, -72(x2)	# 56
	jal		x0, fle_cont.17932	# 55
fle_else.17933:
	flw		f4, -16(x2)	# 55
	fsub	f1, f4, f1	# 55
	lw		x27, -44(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -72(x2)	# 55
	addi	x2, x2, -76	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 76	# 55
	lw		x1, -72(x2)	# 55
fle_cont.17932:
	jal		x0, fle_cont.17930	# 54
fle_else.17931:
	fsub	x31, x31, x31	# 54
	fsub	f1, x31, f1	# 54
	lw		x27, -8(x2)	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -72(x2)	# 54
	addi	x2, x2, -76	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 76	# 54
	lw		x1, -72(x2)	# 54
fle_cont.17930:
fle_cont.17926:
fle_cont.17922:
	ori		x4, x0, 4	# 741
	lw		x5, -40(x2)	# 741
	mul		x4, x5, x4	# 741
	lw		x6, -48(x2)	# 741
	add		x4, x6, x4	# 741
	flw		f1, 0(x4)	# 741
	lw		x27, -44(x2)	# 741
	fsw		f0, -72(x2)	# 741
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 741
	addi	x2, x2, -84	# 741
	lw		x31, 0(x27)	# 741
	jalr	x1, x31, 0	# 741
	addi	x2, x2, 84	# 741
	lw		x1, -80(x2)	# 741
	ori		x4, x0, 4	# 742
	lw		x5, -4(x2)	# 742
	mul		x4, x5, x4	# 742
	lw		x6, -48(x2)	# 742
	add		x4, x6, x4	# 742
	flw		f1, 0(x4)	# 742
	flw		f2, -32(x2)	# 54
	fsw		f0, -80(x2)	# 54
	fle		x31, f2, f1	# 54
	beq		x31, x0, fle_else.17935	# 54
	flw		f2, -24(x2)	# 55
	fle		x31, f1, f2	# 55
	beq		x31, x0, fle_else.17937	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -88(x2)	# 56
	addi	x2, x2, -92	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 92	# 56
	lw		x1, -88(x2)	# 56
	jal		x0, fle_cont.17936	# 55
fle_else.17937:
	flw		f2, -16(x2)	# 55
	fsub	f1, f2, f1	# 55
	lw		x27, -44(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -88(x2)	# 55
	addi	x2, x2, -92	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 92	# 55
	lw		x1, -88(x2)	# 55
fle_cont.17936:
	jal		x0, fle_cont.17934	# 54
fle_else.17935:
	fsub	x31, x31, x31	# 54
	fsub	f1, x31, f1	# 54
	lui		x4, %hi(l.9417)	# 54
	ori		x4, x0, %lo(l.9417)	# 54
	flw		f2, 0(x4)	# 54
	fle		x31, f2, f1	# 54
	beq		x31, x0, fle_else.17939	# 54
	flw		f2, -24(x2)	# 55
	fle		x31, f1, f2	# 55
	beq		x31, x0, fle_else.17941	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -88(x2)	# 56
	addi	x2, x2, -92	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 92	# 56
	lw		x1, -88(x2)	# 56
	jal		x0, fle_cont.17940	# 55
fle_else.17941:
	flw		f2, -16(x2)	# 55
	fsub	f1, f2, f1	# 55
	lw		x27, -44(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -88(x2)	# 55
	addi	x2, x2, -92	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 92	# 55
	lw		x1, -88(x2)	# 55
fle_cont.17940:
	jal		x0, fle_cont.17938	# 54
fle_else.17939:
	fsub	x31, x31, x31	# 54
	fsub	f1, x31, f1	# 54
	fle		x31, f2, f1	# 54
	beq		x31, x0, fle_else.17943	# 54
	flw		f2, -24(x2)	# 55
	fle		x31, f1, f2	# 55
	beq		x31, x0, fle_else.17945	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -88(x2)	# 56
	addi	x2, x2, -92	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 92	# 56
	lw		x1, -88(x2)	# 56
	jal		x0, fle_cont.17944	# 55
fle_else.17945:
	flw		f2, -16(x2)	# 55
	fsub	f1, f2, f1	# 55
	lw		x27, -44(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -88(x2)	# 55
	addi	x2, x2, -92	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 92	# 55
	lw		x1, -88(x2)	# 55
fle_cont.17944:
	jal		x0, fle_cont.17942	# 54
fle_else.17943:
	fsub	x31, x31, x31	# 54
	fsub	f1, x31, f1	# 54
	lw		x27, -8(x2)	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -88(x2)	# 54
	addi	x2, x2, -92	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 92	# 54
	lw		x1, -88(x2)	# 54
fle_cont.17942:
fle_cont.17938:
fle_cont.17934:
	ori		x4, x0, 4	# 743
	lw		x5, -4(x2)	# 743
	mul		x4, x5, x4	# 743
	lw		x6, -48(x2)	# 743
	add		x4, x6, x4	# 743
	flw		f1, 0(x4)	# 743
	lw		x27, -44(x2)	# 743
	fsw		f0, -88(x2)	# 743
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -96(x2)	# 743
	addi	x2, x2, -100	# 743
	lw		x31, 0(x27)	# 743
	jalr	x1, x31, 0	# 743
	addi	x2, x2, 100	# 743
	lw		x1, -96(x2)	# 743
	flw		f1, -88(x2)	# 745
	flw		f2, -72(x2)	# 745
	fmul	f3, f2, f1	# 745
	flw		f4, -80(x2)	# 746
	flw		f5, -64(x2)	# 746
	fmul	f6, f5, f4	# 746
	fmul	f7, f6, f1	# 746
	flw		f8, -56(x2)	# 746
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
	fsub	f1, f1, f1	# 4
	fsub	f1, f1, f4	# 4
	fmul	f4, f5, f2	# 754
	fmul	f2, f8, f2	# 755
	ori		x4, x0, 4	# 758
	lw		x5, -52(x2)	# 758
	mul		x4, x5, x4	# 758
	lw		x6, 0(x2)	# 758
	add		x4, x6, x4	# 758
	flw		f5, 0(x4)	# 758
	ori		x4, x0, 4	# 759
	lw		x7, -40(x2)	# 759
	mul		x4, x7, x4	# 759
	add		x4, x6, x4	# 759
	flw		f8, 0(x4)	# 759
	ori		x4, x0, 4	# 760
	lw		x8, -4(x2)	# 760
	mul		x4, x8, x4	# 760
	add		x4, x6, x4	# 760
	flw		f9, 0(x4)	# 760
	fmul	f12, f3, f3	# 8
	fmul	f12, f5, f12	# 765
	fmul	f13, f11, f11	# 8
	fmul	f13, f8, f13	# 765
	fadd	f12, f12, f13	# 765
	fmul	f13, f1, f1	# 8
	fmul	f13, f9, f13	# 765
	fadd	f12, f12, f13	# 765
	ori		x4, x0, 4	# 765
	mul		x4, x5, x4	# 765
	add		x4, x6, x4	# 765
	fsw		f12, 0(x4)	# 765
	fmul	f12, f7, f7	# 8
	fmul	f12, f5, f12	# 766
	fmul	f13, f6, f6	# 8
	fmul	f13, f8, f13	# 766
	fadd	f12, f12, f13	# 766
	fmul	f13, f4, f4	# 8
	fmul	f13, f9, f13	# 766
	fadd	f12, f12, f13	# 766
	ori		x4, x0, 4	# 766
	mul		x4, x7, x4	# 766
	add		x4, x6, x4	# 766
	fsw		f12, 0(x4)	# 766
	fmul	f12, f10, f10	# 8
	fmul	f12, f5, f12	# 767
	fmul	f13, f0, f0	# 8
	fmul	f13, f8, f13	# 767
	fadd	f12, f12, f13	# 767
	fmul	f13, f2, f2	# 8
	fmul	f13, f9, f13	# 767
	fadd	f12, f12, f13	# 767
	ori		x4, x0, 4	# 767
	mul		x4, x8, x4	# 767
	add		x4, x6, x4	# 767
	fsw		f12, 0(x4)	# 767
	lui		x4, %hi(l.9725)	# 770
	ori		x4, x0, %lo(l.9725)	# 770
	flw		f12, 0(x4)	# 770
	fmul	f13, f5, f7	# 770
	fmul	f13, f13, f10	# 770
	fmul	f14, f8, f6	# 770
	fmul	f14, f14, f0	# 770
	fadd	f13, f13, f14	# 770
	fmul	f14, f9, f4	# 770
	fmul	f14, f14, f2	# 770
	fadd	f13, f13, f14	# 770
	fmul	f13, f12, f13	# 770
	ori		x4, x0, 4	# 770
	mul		x4, x5, x4	# 770
	lw		x5, -48(x2)	# 770
	add		x4, x5, x4	# 770
	fsw		f13, 0(x4)	# 770
	fmul	f3, f5, f3	# 771
	fmul	f5, f3, f10	# 771
	fmul	f8, f8, f11	# 771
	fmul	f0, f8, f0	# 771
	fadd	f0, f5, f0	# 771
	fmul	f1, f9, f1	# 771
	fmul	f2, f1, f2	# 771
	fadd	f0, f0, f2	# 771
	fmul	f0, f12, f0	# 771
	ori		x4, x0, 4	# 771
	mul		x4, x7, x4	# 771
	add		x4, x5, x4	# 771
	fsw		f0, 0(x4)	# 771
	fmul	f0, f3, f7	# 772
	fmul	f2, f8, f6	# 772
	fadd	f0, f0, f2	# 772
	fmul	f1, f1, f4	# 772
	fadd	f0, f0, f1	# 772
	fmul	f0, f12, f0	# 772
	ori		x4, x0, 4	# 772
	mul		x4, x8, x4	# 772
	add		x4, x5, x4	# 772
	fsw		f0, 0(x4)	# 772
	jalr	x0, x1, 0	# 772
read_nth_object.2670:
	lw		x5, 36(x27)	# 779
	lw		x6, 32(x27)	# 779
	lw		x7, 28(x27)	# 779
	lw		x8, 24(x27)	# 779
	lw		x9, 20(x27)	# 779
	lw		x10, 16(x27)	# 779
	lw		x11, 12(x27)	# 779
	lw		x12, 8(x27)	# 779
	flw		f0, 4(x27)	# 779
	sw		x6, 0(x2)	# 779
	sw		x5, -4(x2)	# 779
	sw		x7, -8(x2)	# 779
	sw		x4, -12(x2)	# 779
	sw		x8, -16(x2)	# 779
	sw		x12, -20(x2)	# 779
	sw		x11, -24(x2)	# 779
	fsw		f0, -32(x2)	# 779
	sw		x10, -40(x2)	# 779
	sw		x9, -44(x2)	# 779
	sw		x1, -48(x2)	# 779
	addi	x2, x2, -52	# 779
	jal		x1, min_caml_read_int	# 779
	addi	x2, x2, 52	# 779
	lw		x1, -48(x2)	# 779
	lw		x5, -44(x2)	# 780
	beq		x4, x5, beq.17948	# 780
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
	lw		x5, -24(x2)	# 787
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
	lw		x5, -20(x2)	# 788
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
	lw		x5, -16(x2)	# 789
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
	lw		x5, -24(x2)	# 792
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
	lw		x5, -20(x2)	# 793
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
	lw		x5, -16(x2)	# 794
	mul		x4, x5, x4	# 794
	lw		x6, -68(x2)	# 794
	add		x4, x6, x4	# 794
	fsw		f0, 0(x4)	# 794
	sw		x1, -72(x2)	# 796
	addi	x2, x2, -76	# 796
	jal		x1, min_caml_read_float	# 796
	addi	x2, x2, 76	# 796
	lw		x1, -72(x2)	# 796
	flw		f1, -32(x2)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.17950	# 3
	addi	x4, x0, 0	# 3
	jal		x0, fle_cont.17949	# 3
fle_else.17950:
	ori		x4, x0, 1	# 3
fle_cont.17949:
	lw		x5, -16(x2)	# 798
	sw		x4, -72(x2)	# 798
	addi	x4, x5, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
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
	lw		x5, -24(x2)	# 799
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
	lw		x5, -20(x2)	# 800
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
	lw		x5, -24(x2)	# 803
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
	lw		x5, -20(x2)	# 804
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
	lw		x5, -16(x2)	# 805
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
	lw		x5, -24(x2)	# 808
	lw		x6, -60(x2)	# 808
	sw		x4, -84(x2)	# 808
	beq		x6, x5, beq.17952	# 808
	addi	x7, x0, 0	# 810
	sw		x7, -88(x2)	# 810
	sw		x1, -92(x2)	# 810
	addi	x2, x2, -96	# 810
	jal		x1, min_caml_read_float	# 810
	addi	x2, x2, 96	# 810
	lw		x1, -92(x2)	# 810
	lui		x4, %hi(l.9609)	# 677
	ori		x4, x0, %lo(l.9609)	# 677
	flw		f1, 0(x4)	# 677
	fmul	f0, f0, f1	# 677
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
	lui		x4, %hi(l.9609)	# 677
	ori		x4, x0, %lo(l.9609)	# 677
	flw		f1, 0(x4)	# 677
	fmul	f0, f0, f1	# 677
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
	lui		x4, %hi(l.9609)	# 677
	ori		x4, x0, %lo(l.9609)	# 677
	flw		f1, 0(x4)	# 677
	fmul	f0, f0, f1	# 677
	ori		x4, x0, 4	# 812
	lw		x5, -96(x2)	# 812
	mul		x4, x5, x4	# 812
	lw		x5, -84(x2)	# 812
	add		x4, x5, x4	# 812
	fsw		f0, 0(x4)	# 812
	jal		x0, beq_cont.17951	# 808
beq.17952:
beq_cont.17951:
	lw		x4, -16(x2)	# 819
	lw		x5, -52(x2)	# 819
	beq		x5, x4, beq.17954	# 819
	lw		x4, -72(x2)	# 819
	jal		x0, beq_cont.17953	# 819
beq.17954:
	ori		x4, x0, 1	# 819
beq_cont.17953:
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
	lw		x10, -12(x2)	# 831
	mul		x9, x10, x9	# 831
	lw		x10, -8(x2)	# 831
	add		x9, x10, x9	# 831
	sw		x5, 0(x9)	# 831
	lw		x5, -40(x2)	# 833
	beq		x8, x5, beq.17956	# 833
	ori		x5, x0, 2	# 843
	beq		x8, x5, beq.17958	# 843
	jal		x0, beq_cont.17957	# 843
beq.17958:
	addi	x5, x0, 0	# 845
	lw		x8, -72(x2)	# 845
	beq		x8, x5, beq.17960	# 845
	addi	x5, x0, 0	# 845
	jal		x0, beq_cont.17959	# 845
beq.17960:
	ori		x5, x0, 1	# 845
beq_cont.17959:
	lw		x27, -4(x2)	# 845
	addi	x4, x6, 0
	sw		x1, -104(x2)	# 845
	addi	x2, x2, -108	# 845
	lw		x31, 0(x27)	# 845
	jalr	x1, x31, 0	# 845
	addi	x2, x2, 108	# 845
	lw		x1, -104(x2)	# 845
beq_cont.17957:
	jal		x0, beq_cont.17955	# 833
beq.17956:
	addi	x5, x0, 0	# 836
	ori		x8, x0, 4	# 836
	mul		x5, x5, x8	# 836
	add		x5, x6, x5	# 836
	flw		f0, 0(x5)	# 836
	addi	x5, x0, 0	# 837
	lui		x8, %hi(l.9417)	# 1
	ori		x8, x0, %lo(l.9417)	# 1
	flw		f1, 0(x8)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.17962	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.17961	# 1
feq_else.17962:
	addi	x8, x0, 0	# 1
feq_cont.17961:
	addi	x9, x0, 0	# 837
	beq		x8, x9, beq.17964	# 837
	lui		x8, %hi(l.9417)	# 837
	ori		x8, x0, %lo(l.9417)	# 837
	flw		f0, 0(x8)	# 837
	jal		x0, beq_cont.17963	# 837
beq.17964:
	lui		x8, %hi(l.9417)	# 1
	ori		x8, x0, %lo(l.9417)	# 1
	flw		f1, 0(x8)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.17966	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.17965	# 1
feq_else.17966:
	addi	x8, x0, 0	# 1
feq_cont.17965:
	addi	x9, x0, 0	# 212
	beq		x8, x9, beq.17968	# 212
	lui		x8, %hi(l.9417)	# 212
	ori		x8, x0, %lo(l.9417)	# 212
	flw		f1, 0(x8)	# 212
	jal		x0, beq_cont.17967	# 212
beq.17968:
	lui		x8, %hi(l.9417)	# 2
	ori		x8, x0, %lo(l.9417)	# 2
	flw		f1, 0(x8)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.17970	# 2
	addi	x8, x0, 0	# 2
	jal		x0, fle_cont.17969	# 2
fle_else.17970:
	ori		x8, x0, 1	# 2
fle_cont.17969:
	beq		x8, x9, beq.17972	# 213
	lui		x8, %hi(l.9419)	# 213
	ori		x8, x0, %lo(l.9419)	# 213
	flw		f1, 0(x8)	# 213
	jal		x0, beq_cont.17971	# 213
beq.17972:
	lui		x8, %hi(l.9471)	# 214
	ori		x8, x0, %lo(l.9471)	# 214
	flw		f1, 0(x8)	# 214
beq_cont.17971:
beq_cont.17967:
	fmul	f0, f0, f0	# 8
	fdiv	f0, f1, f0	# 837
beq_cont.17963:
	ori		x8, x0, 4	# 837
	mul		x5, x5, x8	# 837
	add		x5, x6, x5	# 837
	fsw		f0, 0(x5)	# 837
	ori		x5, x0, 1	# 838
	ori		x8, x0, 4	# 838
	mul		x5, x5, x8	# 838
	add		x5, x6, x5	# 838
	flw		f0, 0(x5)	# 838
	ori		x5, x0, 1	# 839
	lui		x8, %hi(l.9417)	# 1
	ori		x8, x0, %lo(l.9417)	# 1
	flw		f1, 0(x8)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.17974	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.17973	# 1
feq_else.17974:
	addi	x8, x0, 0	# 1
feq_cont.17973:
	addi	x9, x0, 0	# 839
	beq		x8, x9, beq.17976	# 839
	lui		x8, %hi(l.9417)	# 839
	ori		x8, x0, %lo(l.9417)	# 839
	flw		f0, 0(x8)	# 839
	jal		x0, beq_cont.17975	# 839
beq.17976:
	lui		x8, %hi(l.9417)	# 1
	ori		x8, x0, %lo(l.9417)	# 1
	flw		f1, 0(x8)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.17978	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.17977	# 1
feq_else.17978:
	addi	x8, x0, 0	# 1
feq_cont.17977:
	addi	x9, x0, 0	# 212
	beq		x8, x9, beq.17980	# 212
	lui		x8, %hi(l.9417)	# 212
	ori		x8, x0, %lo(l.9417)	# 212
	flw		f1, 0(x8)	# 212
	jal		x0, beq_cont.17979	# 212
beq.17980:
	lui		x8, %hi(l.9417)	# 2
	ori		x8, x0, %lo(l.9417)	# 2
	flw		f1, 0(x8)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.17982	# 2
	addi	x8, x0, 0	# 2
	jal		x0, fle_cont.17981	# 2
fle_else.17982:
	ori		x8, x0, 1	# 2
fle_cont.17981:
	beq		x8, x9, beq.17984	# 213
	lui		x8, %hi(l.9419)	# 213
	ori		x8, x0, %lo(l.9419)	# 213
	flw		f1, 0(x8)	# 213
	jal		x0, beq_cont.17983	# 213
beq.17984:
	lui		x8, %hi(l.9471)	# 214
	ori		x8, x0, %lo(l.9471)	# 214
	flw		f1, 0(x8)	# 214
beq_cont.17983:
beq_cont.17979:
	fmul	f0, f0, f0	# 8
	fdiv	f0, f1, f0	# 839
beq_cont.17975:
	ori		x8, x0, 4	# 839
	mul		x5, x5, x8	# 839
	add		x5, x6, x5	# 839
	fsw		f0, 0(x5)	# 839
	ori		x5, x0, 2	# 840
	ori		x8, x0, 4	# 840
	mul		x5, x5, x8	# 840
	add		x5, x6, x5	# 840
	flw		f0, 0(x5)	# 840
	ori		x5, x0, 2	# 841
	lui		x8, %hi(l.9417)	# 1
	ori		x8, x0, %lo(l.9417)	# 1
	flw		f1, 0(x8)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.17986	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.17985	# 1
feq_else.17986:
	addi	x8, x0, 0	# 1
feq_cont.17985:
	addi	x9, x0, 0	# 841
	beq		x8, x9, beq.17988	# 841
	lui		x8, %hi(l.9417)	# 841
	ori		x8, x0, %lo(l.9417)	# 841
	flw		f0, 0(x8)	# 841
	jal		x0, beq_cont.17987	# 841
beq.17988:
	lui		x8, %hi(l.9417)	# 1
	ori		x8, x0, %lo(l.9417)	# 1
	flw		f1, 0(x8)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.17990	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.17989	# 1
feq_else.17990:
	addi	x8, x0, 0	# 1
feq_cont.17989:
	addi	x9, x0, 0	# 212
	beq		x8, x9, beq.17992	# 212
	lui		x8, %hi(l.9417)	# 212
	ori		x8, x0, %lo(l.9417)	# 212
	flw		f1, 0(x8)	# 212
	jal		x0, beq_cont.17991	# 212
beq.17992:
	lui		x8, %hi(l.9417)	# 2
	ori		x8, x0, %lo(l.9417)	# 2
	flw		f1, 0(x8)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.17994	# 2
	addi	x8, x0, 0	# 2
	jal		x0, fle_cont.17993	# 2
fle_else.17994:
	ori		x8, x0, 1	# 2
fle_cont.17993:
	beq		x8, x9, beq.17996	# 213
	lui		x8, %hi(l.9419)	# 213
	ori		x8, x0, %lo(l.9419)	# 213
	flw		f1, 0(x8)	# 213
	jal		x0, beq_cont.17995	# 213
beq.17996:
	lui		x8, %hi(l.9471)	# 214
	ori		x8, x0, %lo(l.9471)	# 214
	flw		f1, 0(x8)	# 214
beq_cont.17995:
beq_cont.17991:
	fmul	f0, f0, f0	# 8
	fdiv	f0, f1, f0	# 841
beq_cont.17987:
	ori		x8, x0, 4	# 841
	mul		x5, x5, x8	# 841
	add		x5, x6, x5	# 841
	fsw		f0, 0(x5)	# 841
beq_cont.17955:
	lw		x4, -24(x2)	# 849
	lw		x5, -60(x2)	# 849
	beq		x5, x4, beq.17998	# 849
	lw		x4, -64(x2)	# 850
	lw		x5, -84(x2)	# 850
	lw		x27, 0(x2)	# 850
	sw		x1, -104(x2)	# 850
	addi	x2, x2, -108	# 850
	lw		x31, 0(x27)	# 850
	jalr	x1, x31, 0	# 850
	addi	x2, x2, 108	# 850
	lw		x1, -104(x2)	# 850
	jal		x0, beq_cont.17997	# 849
beq.17998:
beq_cont.17997:
	ori		x4, x0, 1	# 853
	jalr	x0, x1, 0	# 853
beq.17948:
	addi	x4, x0, 0	# 856
	jalr	x0, x1, 0	# 856
read_object.2672:
	lw		x5, 20(x27)	# 861
	lw		x6, 16(x27)	# 861
	lw		x7, 12(x27)	# 861
	lw		x8, 8(x27)	# 861
	lw		x9, 4(x27)	# 861
	ble		x7, x4, ble.17999	# 861
	sw		x27, 0(x2)	# 862
	sw		x5, -4(x2)	# 862
	sw		x7, -8(x2)	# 862
	sw		x9, -12(x2)	# 862
	sw		x4, -16(x2)	# 862
	sw		x6, -20(x2)	# 862
	sw		x8, -24(x2)	# 862
	addi	x27, x5, 0
	sw		x1, -28(x2)	# 862
	addi	x2, x2, -32	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 32	# 862
	lw		x1, -28(x2)	# 862
	lw		x5, -24(x2)	# 862
	beq		x4, x5, beq.18000	# 862
	lw		x4, -12(x2)	# 863
	lw		x6, -16(x2)	# 863
	add		x6, x6, x4	# 863
	lw		x7, -8(x2)	# 861
	ble		x7, x6, ble.18001	# 861
	lw		x27, -4(x2)	# 862
	sw		x6, -28(x2)	# 862
	addi	x4, x6, 0
	sw		x1, -32(x2)	# 862
	addi	x2, x2, -36	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 36	# 862
	lw		x1, -32(x2)	# 862
	lw		x5, -24(x2)	# 862
	beq		x4, x5, beq.18002	# 862
	lw		x4, -12(x2)	# 863
	lw		x6, -28(x2)	# 863
	add		x6, x6, x4	# 863
	lw		x7, -8(x2)	# 861
	ble		x7, x6, ble.18003	# 861
	lw		x27, -4(x2)	# 862
	sw		x6, -32(x2)	# 862
	addi	x4, x6, 0
	sw		x1, -36(x2)	# 862
	addi	x2, x2, -40	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 40	# 862
	lw		x1, -36(x2)	# 862
	lw		x5, -24(x2)	# 862
	beq		x4, x5, beq.18004	# 862
	lw		x4, -12(x2)	# 863
	lw		x6, -32(x2)	# 863
	add		x6, x6, x4	# 863
	lw		x7, -8(x2)	# 861
	ble		x7, x6, ble.18005	# 861
	lw		x27, -4(x2)	# 862
	sw		x6, -36(x2)	# 862
	addi	x4, x6, 0
	sw		x1, -40(x2)	# 862
	addi	x2, x2, -44	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 44	# 862
	lw		x1, -40(x2)	# 862
	lw		x5, -24(x2)	# 862
	beq		x4, x5, beq.18006	# 862
	lw		x4, -12(x2)	# 863
	lw		x5, -36(x2)	# 863
	add		x4, x5, x4	# 863
	lw		x27, 0(x2)	# 863
	lw		x31, 0(x27)	# 863
	jalr	x0, x31, 0	# 863
beq.18006:
	ori		x4, x0, 4	# 865
	mul		x4, x5, x4	# 865
	lw		x5, -20(x2)	# 865
	add		x4, x5, x4	# 865
	lw		x5, -36(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.18005:
	jalr	x0, x1, 0	# 866
beq.18004:
	ori		x4, x0, 4	# 865
	mul		x4, x5, x4	# 865
	lw		x5, -20(x2)	# 865
	add		x4, x5, x4	# 865
	lw		x5, -32(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.18003:
	jalr	x0, x1, 0	# 866
beq.18002:
	ori		x4, x0, 4	# 865
	mul		x4, x5, x4	# 865
	lw		x5, -20(x2)	# 865
	add		x4, x5, x4	# 865
	lw		x5, -28(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.18001:
	jalr	x0, x1, 0	# 866
beq.18000:
	ori		x4, x0, 4	# 865
	mul		x4, x5, x4	# 865
	lw		x5, -20(x2)	# 865
	add		x4, x5, x4	# 865
	lw		x5, -16(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.17999:
	jalr	x0, x1, 0	# 866
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
	beq		x4, x5, beq.18015	# 878
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
	beq		x4, x5, beq.18017	# 878
	lw		x5, -4(x2)	# 880
	lw		x6, -20(x2)	# 880
	add		x5, x6, x5	# 880
	lw		x27, 0(x2)	# 880
	sw		x4, -24(x2)	# 880
	addi	x4, x5, 0
	sw		x1, -28(x2)	# 880
	addi	x2, x2, -32	# 880
	lw		x31, 0(x27)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 32	# 880
	lw		x1, -28(x2)	# 880
	ori		x5, x0, 4	# 881
	lw		x6, -20(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -24(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.18016	# 878
beq.18017:
	lw		x4, -4(x2)	# 878
	lw		x6, -20(x2)	# 878
	add		x4, x6, x4	# 878
	sw		x1, -28(x2)	# 878
	addi	x2, x2, -32	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 32	# 878
	lw		x1, -28(x2)	# 878
beq_cont.18016:
	ori		x5, x0, 4	# 881
	lw		x6, -8(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -16(x2)	# 881
	sw		x6, 0(x5)	# 881
	jalr	x0, x1, 0	# 881
beq.18015:
	lw		x4, -4(x2)	# 878
	lw		x6, -8(x2)	# 878
	add		x4, x6, x4	# 878
	jal		x0, min_caml_create_array	# 878
read_or_network.2678:
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
	beq		x4, x5, beq.18019	# 878
	ori		x6, x0, 1	# 880
	lw		x27, -16(x2)	# 880
	sw		x4, -24(x2)	# 880
	addi	x4, x6, 0
	sw		x1, -28(x2)	# 880
	addi	x2, x2, -32	# 880
	lw		x31, 0(x27)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 32	# 880
	lw		x1, -28(x2)	# 880
	ori		x5, x0, 4	# 881
	lw		x6, -12(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x7, -24(x2)	# 881
	sw		x7, 0(x5)	# 881
	addi	x5, x4, 0	# 881
	jal		x0, beq_cont.18018	# 878
beq.18019:
	ori		x4, x0, 1	# 878
	sw		x1, -28(x2)	# 878
	addi	x2, x2, -32	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 32	# 878
	lw		x1, -28(x2)	# 878
	addi	x5, x4, 0	# 878
beq_cont.18018:
	ori		x4, x0, 4	# 886
	lw		x6, -12(x2)	# 886
	mul		x4, x6, x4	# 886
	add		x4, x5, x4	# 886
	lw		x4, 0(x4)	# 886
	lw		x7, -20(x2)	# 886
	beq		x4, x7, beq.18020	# 886
	lw		x4, -4(x2)	# 889
	lw		x8, -8(x2)	# 889
	add		x9, x8, x4	# 889
	lw		x27, -16(x2)	# 885
	sw		x5, -28(x2)	# 885
	sw		x9, -32(x2)	# 885
	addi	x4, x6, 0
	sw		x1, -36(x2)	# 885
	addi	x2, x2, -40	# 885
	lw		x31, 0(x27)	# 885
	jalr	x1, x31, 0	# 885
	addi	x2, x2, 40	# 885
	lw		x1, -36(x2)	# 885
	addi	x5, x4, 0	# 885
	ori		x4, x0, 4	# 886
	lw		x6, -12(x2)	# 886
	mul		x4, x6, x4	# 886
	add		x4, x5, x4	# 886
	lw		x4, 0(x4)	# 886
	lw		x6, -20(x2)	# 886
	beq		x4, x6, beq.18022	# 886
	lw		x4, -4(x2)	# 889
	lw		x6, -32(x2)	# 889
	add		x4, x6, x4	# 889
	lw		x27, 0(x2)	# 889
	sw		x5, -36(x2)	# 889
	sw		x1, -40(x2)	# 889
	addi	x2, x2, -44	# 889
	lw		x31, 0(x27)	# 889
	jalr	x1, x31, 0	# 889
	addi	x2, x2, 44	# 889
	lw		x1, -40(x2)	# 889
	ori		x5, x0, 4	# 890
	lw		x6, -32(x2)	# 890
	mul		x5, x6, x5	# 890
	add		x5, x4, x5	# 890
	lw		x6, -36(x2)	# 890
	sw		x6, 0(x5)	# 890
	jal		x0, beq_cont.18021	# 886
beq.18022:
	lw		x4, -4(x2)	# 887
	lw		x6, -32(x2)	# 887
	add		x4, x6, x4	# 887
	sw		x1, -40(x2)	# 887
	addi	x2, x2, -44	# 887
	jal		x1, min_caml_create_array	# 887
	addi	x2, x2, 44	# 887
	lw		x1, -40(x2)	# 887
beq_cont.18021:
	ori		x5, x0, 4	# 890
	lw		x6, -8(x2)	# 890
	mul		x5, x6, x5	# 890
	add		x5, x4, x5	# 890
	lw		x6, -28(x2)	# 890
	sw		x6, 0(x5)	# 890
	jalr	x0, x1, 0	# 890
beq.18020:
	lw		x4, -4(x2)	# 887
	lw		x6, -8(x2)	# 887
	add		x4, x6, x4	# 887
	jal		x0, min_caml_create_array	# 887
read_and_network.2680:
	lw		x5, 20(x27)	# 877
	lw		x6, 16(x27)	# 877
	lw		x7, 12(x27)	# 877
	lw		x8, 8(x27)	# 877
	lw		x9, 4(x27)	# 877
	sw		x27, 0(x2)	# 877
	sw		x9, -4(x2)	# 877
	sw		x6, -8(x2)	# 877
	sw		x4, -12(x2)	# 877
	sw		x8, -16(x2)	# 877
	sw		x5, -20(x2)	# 877
	sw		x7, -24(x2)	# 877
	sw		x1, -28(x2)	# 877
	addi	x2, x2, -32	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 32	# 877
	lw		x1, -28(x2)	# 877
	lw		x5, -24(x2)	# 878
	beq		x4, x5, beq.18024	# 878
	ori		x6, x0, 1	# 880
	lw		x27, -20(x2)	# 880
	sw		x4, -28(x2)	# 880
	addi	x4, x6, 0
	sw		x1, -32(x2)	# 880
	addi	x2, x2, -36	# 880
	lw		x31, 0(x27)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 36	# 880
	lw		x1, -32(x2)	# 880
	ori		x5, x0, 4	# 881
	lw		x6, -16(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x7, -28(x2)	# 881
	sw		x7, 0(x5)	# 881
	jal		x0, beq_cont.18023	# 878
beq.18024:
	ori		x4, x0, 1	# 878
	sw		x1, -32(x2)	# 878
	addi	x2, x2, -36	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 36	# 878
	lw		x1, -32(x2)	# 878
beq_cont.18023:
	ori		x5, x0, 4	# 895
	lw		x6, -16(x2)	# 895
	mul		x5, x6, x5	# 895
	add		x5, x4, x5	# 895
	lw		x5, 0(x5)	# 895
	lw		x7, -24(x2)	# 895
	beq		x5, x7, beq.18025	# 895
	ori		x5, x0, 4	# 897
	lw		x8, -12(x2)	# 897
	mul		x5, x8, x5	# 897
	lw		x9, -8(x2)	# 897
	add		x5, x9, x5	# 897
	sw		x4, 0(x5)	# 897
	lw		x4, -4(x2)	# 898
	add		x5, x8, x4	# 898
	lw		x27, -20(x2)	# 894
	sw		x5, -32(x2)	# 894
	addi	x4, x6, 0
	sw		x1, -36(x2)	# 894
	addi	x2, x2, -40	# 894
	lw		x31, 0(x27)	# 894
	jalr	x1, x31, 0	# 894
	addi	x2, x2, 40	# 894
	lw		x1, -36(x2)	# 894
	ori		x5, x0, 4	# 895
	lw		x6, -16(x2)	# 895
	mul		x5, x6, x5	# 895
	add		x5, x4, x5	# 895
	lw		x5, 0(x5)	# 895
	lw		x6, -24(x2)	# 895
	beq		x5, x6, beq.18026	# 895
	ori		x5, x0, 4	# 897
	lw		x6, -32(x2)	# 897
	mul		x5, x6, x5	# 897
	lw		x7, -8(x2)	# 897
	add		x5, x7, x5	# 897
	sw		x4, 0(x5)	# 897
	lw		x4, -4(x2)	# 898
	add		x4, x6, x4	# 898
	lw		x27, 0(x2)	# 898
	lw		x31, 0(x27)	# 898
	jalr	x0, x31, 0	# 898
beq.18026:
	jalr	x0, x1, 0	# 895
beq.18025:
	jalr	x0, x1, 0	# 895
solver_rect_surface.2684:
	lw		x9, 12(x27)	# 928
	lw		x10, 8(x27)	# 928
	flw		f3, 4(x27)	# 928
	ori		x11, x0, 4	# 928
	mul		x11, x6, x11	# 928
	add		x11, x5, x11	# 928
	flw		f4, 0(x11)	# 928
	feq		x31, f4, f3	# 1
	beq		x31, x0, feq_else.18030	# 1
	ori		x11, x0, 1	# 1
	jal		x0, feq_cont.18029	# 1
feq_else.18030:
	addi	x11, x0, 0	# 1
feq_cont.18029:
	beq		x11, x10, beq.18031	# 928
	addi	x4, x0, 0	# 928
	jalr	x0, x1, 0	# 928
beq.18031:
	lw		x11, 16(x4)	# 421
	lw		x4, 24(x4)	# 373
	fle		x31, f3, f4	# 3
	beq		x31, x0, fle_else.18033	# 3
	addi	x12, x0, 0	# 3
	jal		x0, fle_cont.18032	# 3
fle_else.18033:
	ori		x12, x0, 1	# 3
fle_cont.18032:
	beq		x4, x10, beq.18035	# 204
	beq		x12, x10, beq.18037	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.18036	# 204
beq.18037:
	ori		x4, x0, 1	# 204
beq_cont.18036:
	jal		x0, beq_cont.18034	# 204
beq.18035:
	addi	x4, x12, 0	# 204
beq_cont.18034:
	ori		x12, x0, 4	# 930
	mul		x6, x6, x12	# 930
	add		x6, x11, x6	# 930
	flw		f5, 0(x6)	# 930
	beq		x4, x10, beq.18039	# 219
	jal		x0, beq_cont.18038	# 219
beq.18039:
	fsub	x31, x31, x31	# 4
	fsub	f5, x31, f5	# 4
beq_cont.18038:
	fsub	f0, f5, f0	# 932
	fdiv	f0, f0, f4	# 932
	ori		x4, x0, 4	# 933
	mul		x4, x7, x4	# 933
	add		x4, x5, x4	# 933
	flw		f4, 0(x4)	# 933
	fmul	f4, f0, f4	# 933
	fadd	f1, f4, f1	# 933
	fle		x31, f1, f3	# 5
	beq		x31, x0, fle_else.18041	# 5
	fsub	x31, x31, x31	# 5
	fsub	f1, x31, f1	# 5
	jal		x0, fle_cont.18040	# 5
fle_else.18041:
fle_cont.18040:
	ori		x4, x0, 4	# 933
	mul		x4, x7, x4	# 933
	add		x4, x11, x4	# 933
	flw		f4, 0(x4)	# 933
	fle		x31, f4, f1	# 6
	beq		x31, x0, fle_else.18043	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18042	# 6
fle_else.18043:
	ori		x4, x0, 1	# 6
fle_cont.18042:
	beq		x4, x10, beq.18044	# 933
	ori		x4, x0, 4	# 934
	mul		x4, x8, x4	# 934
	add		x4, x5, x4	# 934
	flw		f1, 0(x4)	# 934
	fmul	f1, f0, f1	# 934
	fadd	f1, f1, f2	# 934
	fle		x31, f1, f3	# 5
	beq		x31, x0, fle_else.18046	# 5
	fsub	x31, x31, x31	# 5
	fsub	f1, x31, f1	# 5
	jal		x0, fle_cont.18045	# 5
fle_else.18046:
fle_cont.18045:
	ori		x4, x0, 4	# 934
	mul		x4, x8, x4	# 934
	add		x4, x11, x4	# 934
	flw		f2, 0(x4)	# 934
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.18048	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18047	# 6
fle_else.18048:
	ori		x4, x0, 1	# 6
fle_cont.18047:
	beq		x4, x10, beq.18049	# 934
	ori		x4, x0, 4	# 935
	mul		x4, x10, x4	# 935
	add		x4, x9, x4	# 935
	fsw		f0, 0(x4)	# 935
	ori		x4, x0, 1	# 935
	jalr	x0, x1, 0	# 935
beq.18049:
	addi	x4, x0, 0	# 936
	jalr	x0, x1, 0	# 936
beq.18044:
	addi	x4, x0, 0	# 937
	jalr	x0, x1, 0	# 937
quadratic.2705:
	lw		x5, 12(x27)	# 967
	lw		x6, 8(x27)	# 967
	lw		x7, 4(x27)	# 967
	fmul	f3, f0, f0	# 8
	lw		x8, 16(x4)	# 391
	ori		x9, x0, 4	# 396
	mul		x9, x6, x9	# 396
	add		x8, x8, x9	# 396
	flw		f4, 0(x8)	# 396
	fmul	f3, f3, f4	# 967
	fmul	f4, f1, f1	# 8
	lw		x8, 16(x4)	# 401
	ori		x9, x0, 4	# 406
	mul		x9, x7, x9	# 406
	add		x8, x8, x9	# 406
	flw		f5, 0(x8)	# 406
	fmul	f4, f4, f5	# 967
	fadd	f3, f3, f4	# 967
	fmul	f4, f2, f2	# 8
	lw		x8, 16(x4)	# 411
	ori		x9, x0, 4	# 416
	mul		x9, x5, x9	# 416
	add		x8, x8, x9	# 416
	flw		f5, 0(x8)	# 416
	fmul	f4, f4, f5	# 967
	fadd	f3, f3, f4	# 967
	lw		x8, 12(x4)	# 382
	beq		x8, x6, beq.18050	# 969
	fmul	f4, f1, f2	# 973
	lw		x8, 36(x4)	# 511
	ori		x9, x0, 4	# 516
	mul		x6, x6, x9	# 516
	add		x6, x8, x6	# 516
	flw		f5, 0(x6)	# 516
	fmul	f4, f4, f5	# 973
	fadd	f3, f3, f4	# 972
	fmul	f2, f2, f0	# 974
	lw		x6, 36(x4)	# 521
	ori		x8, x0, 4	# 526
	mul		x7, x7, x8	# 526
	add		x6, x6, x7	# 526
	flw		f4, 0(x6)	# 526
	fmul	f2, f2, f4	# 974
	fadd	f2, f3, f2	# 972
	fmul	f0, f0, f1	# 975
	lw		x4, 36(x4)	# 531
	ori		x6, x0, 4	# 536
	mul		x5, x5, x6	# 536
	add		x4, x4, x5	# 536
	flw		f1, 0(x4)	# 536
	fmul	f0, f0, f1	# 975
	fadd	f0, f2, f0	# 972
	jalr	x0, x1, 0	# 972
beq.18050:
	fsub	f0, f0, f0	# 970
	fadd	f0, f0, f3	# 970
	jalr	x0, x1, 0	# 970
bilinear.2710:
	lw		x5, 12(x27)	# 981
	lw		x6, 8(x27)	# 981
	lw		x7, 4(x27)	# 981
	fmul	f6, f0, f3	# 981
	lw		x8, 16(x4)	# 391
	ori		x9, x0, 4	# 396
	mul		x9, x6, x9	# 396
	add		x8, x8, x9	# 396
	flw		f7, 0(x8)	# 396
	fmul	f6, f6, f7	# 981
	fmul	f7, f1, f4	# 982
	lw		x8, 16(x4)	# 401
	ori		x9, x0, 4	# 406
	mul		x9, x7, x9	# 406
	add		x8, x8, x9	# 406
	flw		f8, 0(x8)	# 406
	fmul	f7, f7, f8	# 982
	fadd	f6, f6, f7	# 981
	fmul	f7, f2, f5	# 983
	lw		x8, 16(x4)	# 411
	ori		x9, x0, 4	# 416
	mul		x9, x5, x9	# 416
	add		x8, x8, x9	# 416
	flw		f8, 0(x8)	# 416
	fmul	f7, f7, f8	# 983
	fadd	f6, f6, f7	# 981
	lw		x8, 12(x4)	# 382
	beq		x8, x6, beq.18051	# 985
	fmul	f7, f2, f4	# 989
	fmul	f8, f1, f5	# 989
	fadd	f7, f7, f8	# 989
	lw		x8, 36(x4)	# 511
	ori		x9, x0, 4	# 516
	mul		x6, x6, x9	# 516
	add		x6, x8, x6	# 516
	flw		f8, 0(x6)	# 516
	fmul	f7, f7, f8	# 989
	fmul	f5, f0, f5	# 990
	fmul	f2, f2, f3	# 990
	fadd	f2, f5, f2	# 990
	lw		x6, 36(x4)	# 521
	ori		x8, x0, 4	# 526
	mul		x7, x7, x8	# 526
	add		x6, x6, x7	# 526
	flw		f5, 0(x6)	# 526
	fmul	f2, f2, f5	# 990
	fadd	f2, f7, f2	# 989
	fmul	f0, f0, f4	# 991
	fmul	f1, f1, f3	# 991
	fadd	f0, f0, f1	# 991
	lw		x4, 36(x4)	# 531
	ori		x6, x0, 4	# 536
	mul		x5, x5, x6	# 536
	add		x4, x4, x5	# 536
	flw		f1, 0(x4)	# 536
	fmul	f0, f0, f1	# 991
	fadd	f0, f2, f0	# 989
	lui		x4, %hi(l.9436)	# 7
	ori		x4, x0, %lo(l.9436)	# 7
	flw		f1, 0(x4)	# 7
	fmul	f0, f0, f1	# 7
	fadd	f0, f6, f0	# 988
	jalr	x0, x1, 0	# 988
beq.18051:
	fsub	f0, f0, f0	# 986
	fadd	f0, f0, f6	# 986
	jalr	x0, x1, 0	# 986
solver_second.2718:
	lw		x6, 32(x27)	# 1006
	lw		x7, 28(x27)	# 1006
	lw		x8, 24(x27)	# 1006
	lw		x9, 20(x27)	# 1006
	lw		x10, 16(x27)	# 1006
	lw		x11, 12(x27)	# 1006
	lw		x12, 8(x27)	# 1006
	flw		f3, 4(x27)	# 1006
	ori		x13, x0, 4	# 1006
	mul		x13, x11, x13	# 1006
	add		x13, x5, x13	# 1006
	flw		f4, 0(x13)	# 1006
	ori		x13, x0, 4	# 1006
	mul		x13, x12, x13	# 1006
	add		x13, x5, x13	# 1006
	flw		f5, 0(x13)	# 1006
	ori		x13, x0, 4	# 1006
	mul		x13, x9, x13	# 1006
	add		x13, x5, x13	# 1006
	flw		f6, 0(x13)	# 1006
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
	fsw		f3, -64(x2)	# 1006
	addi	x27, x7, 0
	fsub	f2, f2, f2
	fadd	f2, f2, f6
	fsub	f1, f1, f1
	fadd	f1, f1, f5
	fsub	f0, f0, f0
	fadd	f0, f0, f4
	sw		x1, -72(x2)	# 1006
	addi	x2, x2, -76	# 1006
	lw		x31, 0(x27)	# 1006
	jalr	x1, x31, 0	# 1006
	addi	x2, x2, 76	# 1006
	lw		x1, -72(x2)	# 1006
	flw		f1, -64(x2)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.18054	# 1
	ori		x4, x0, 1	# 1
	jal		x0, feq_cont.18053	# 1
feq_else.18054:
	addi	x4, x0, 0	# 1
feq_cont.18053:
	lw		x5, -60(x2)	# 1008
	beq		x4, x5, beq.18055	# 1008
	addi	x4, x0, 0	# 1009
	jalr	x0, x1, 0	# 1009
beq.18055:
	ori		x4, x0, 4	# 1013
	mul		x4, x5, x4	# 1013
	lw		x6, -56(x2)	# 1013
	add		x4, x6, x4	# 1013
	flw		f2, 0(x4)	# 1013
	ori		x4, x0, 4	# 1013
	lw		x7, -52(x2)	# 1013
	mul		x4, x7, x4	# 1013
	add		x4, x6, x4	# 1013
	flw		f3, 0(x4)	# 1013
	ori		x4, x0, 4	# 1013
	lw		x7, -48(x2)	# 1013
	mul		x4, x7, x4	# 1013
	add		x4, x6, x4	# 1013
	flw		f4, 0(x4)	# 1013
	flw		f5, -32(x2)	# 1013
	flw		f6, -24(x2)	# 1013
	flw		f7, -16(x2)	# 1013
	lw		x4, -40(x2)	# 1013
	lw		x27, -44(x2)	# 1013
	fsw		f0, -72(x2)	# 1013
	fsub	f1, f1, f1
	fadd	f1, f1, f3
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	fsub	f3, f3, f3
	fadd	f3, f3, f5
	fsub	f2, f2, f2
	fadd	f2, f2, f4
	fsub	f5, f5, f5
	fadd	f5, f5, f7
	fsub	f4, f4, f4
	fadd	f4, f4, f6
	sw		x1, -80(x2)	# 1013
	addi	x2, x2, -84	# 1013
	lw		x31, 0(x27)	# 1013
	jalr	x1, x31, 0	# 1013
	addi	x2, x2, 84	# 1013
	lw		x1, -80(x2)	# 1013
	flw		f1, -32(x2)	# 1015
	flw		f2, -24(x2)	# 1015
	flw		f3, -16(x2)	# 1015
	lw		x4, -40(x2)	# 1015
	lw		x27, -8(x2)	# 1015
	fsw		f0, -80(x2)	# 1015
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -88(x2)	# 1015
	addi	x2, x2, -92	# 1015
	lw		x31, 0(x27)	# 1015
	jalr	x1, x31, 0	# 1015
	addi	x2, x2, 92	# 1015
	lw		x1, -88(x2)	# 1015
	lw		x4, -40(x2)	# 353
	lw		x5, 4(x4)	# 353
	lw		x6, -4(x2)	# 1016
	beq		x5, x6, beq.18057	# 1016
	jal		x0, beq_cont.18056	# 1016
beq.18057:
	lui		x5, %hi(l.9419)	# 1016
	ori		x5, x0, %lo(l.9419)	# 1016
	flw		f1, 0(x5)	# 1016
	fsub	f0, f0, f1	# 1016
beq_cont.18056:
	flw		f1, -80(x2)	# 8
	fmul	f2, f1, f1	# 8
	flw		f3, -72(x2)	# 1018
	fmul	f0, f3, f0	# 1018
	fsub	f0, f2, f0	# 1018
	flw		f2, -64(x2)	# 2
	fle		x31, f0, f2	# 2
	beq		x31, x0, fle_else.18059	# 2
	addi	x5, x0, 0	# 2
	jal		x0, fle_cont.18058	# 2
fle_else.18059:
	ori		x5, x0, 1	# 2
fle_cont.18058:
	lw		x6, -60(x2)	# 1020
	beq		x5, x6, beq.18060	# 1020
	sw		x1, -88(x2)	# 1021
	addi	x2, x2, -92	# 1021
	jal		x1, min_caml_sqrt	# 1021
	addi	x2, x2, 92	# 1021
	lw		x1, -88(x2)	# 1021
	lw		x4, -40(x2)	# 373
	lw		x4, 24(x4)	# 373
	lw		x5, -60(x2)	# 1022
	beq		x4, x5, beq.18062	# 1022
	jal		x0, beq_cont.18061	# 1022
beq.18062:
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
beq_cont.18061:
	flw		f1, -80(x2)	# 1023
	fsub	f0, f0, f1	# 1023
	flw		f1, -72(x2)	# 1023
	fdiv	f0, f0, f1	# 1023
	ori		x4, x0, 4	# 1023
	mul		x4, x5, x4	# 1023
	lw		x5, 0(x2)	# 1023
	add		x4, x5, x4	# 1023
	fsw		f0, 0(x4)	# 1023
	ori		x4, x0, 1	# 1023
	jalr	x0, x1, 0	# 1023
beq.18060:
	addi	x4, x0, 0	# 1026
	jalr	x0, x1, 0	# 1026
solver.2724:
	lw		x7, 36(x27)	# 1032
	lw		x8, 32(x27)	# 1032
	lw		x9, 28(x27)	# 1032
	lw		x10, 24(x27)	# 1032
	lw		x11, 20(x27)	# 1032
	lw		x12, 16(x27)	# 1032
	lw		x13, 12(x27)	# 1032
	lw		x14, 8(x27)	# 1032
	flw		f0, 4(x27)	# 1032
	ori		x15, x0, 4	# 1032
	mul		x4, x4, x15	# 1032
	add		x4, x11, x4	# 1032
	lw		x4, 0(x4)	# 1032
	ori		x11, x0, 4	# 1034
	mul		x11, x13, x11	# 1034
	add		x11, x6, x11	# 1034
	flw		f1, 0(x11)	# 1034
	lw		x11, 20(x4)	# 431
	ori		x15, x0, 4	# 436
	mul		x15, x13, x15	# 436
	add		x11, x11, x15	# 436
	flw		f2, 0(x11)	# 436
	fsub	f1, f1, f2	# 1034
	ori		x11, x0, 4	# 1035
	mul		x11, x14, x11	# 1035
	add		x11, x6, x11	# 1035
	flw		f2, 0(x11)	# 1035
	lw		x11, 20(x4)	# 441
	ori		x15, x0, 4	# 446
	mul		x15, x14, x15	# 446
	add		x11, x11, x15	# 446
	flw		f3, 0(x11)	# 446
	fsub	f2, f2, f3	# 1035
	ori		x11, x0, 4	# 1036
	mul		x11, x12, x11	# 1036
	add		x6, x6, x11	# 1036
	flw		f3, 0(x6)	# 1036
	lw		x6, 20(x4)	# 451
	ori		x11, x0, 4	# 456
	mul		x11, x12, x11	# 456
	add		x6, x6, x11	# 456
	flw		f4, 0(x6)	# 456
	fsub	f3, f3, f4	# 1036
	lw		x6, 4(x4)	# 353
	beq		x6, x14, beq.18063	# 1039
	beq		x6, x12, beq.18064	# 1040
	addi	x27, x8, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	lw		x31, 0(x27)	# 1041
	jalr	x0, x31, 0	# 1041
beq.18064:
	lw		x4, 16(x4)	# 421
	sw		x10, 0(x2)	# 955
	fsw		f3, -8(x2)	# 955
	sw		x12, -16(x2)	# 955
	fsw		f2, -24(x2)	# 955
	sw		x14, -32(x2)	# 955
	fsw		f1, -40(x2)	# 955
	sw		x4, -48(x2)	# 955
	sw		x13, -52(x2)	# 955
	fsw		f0, -56(x2)	# 955
	addi	x27, x7, 0
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -64(x2)	# 955
	addi	x2, x2, -68	# 955
	lw		x31, 0(x27)	# 955
	jalr	x1, x31, 0	# 955
	addi	x2, x2, 68	# 955
	lw		x1, -64(x2)	# 955
	flw		f1, -56(x2)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.18069	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.18068	# 2
fle_else.18069:
	ori		x4, x0, 1	# 2
fle_cont.18068:
	lw		x5, -52(x2)	# 956
	beq		x4, x5, beq.18070	# 956
	ori		x4, x0, 4	# 297
	mul		x4, x5, x4	# 297
	lw		x6, -48(x2)	# 297
	add		x4, x6, x4	# 297
	flw		f1, 0(x4)	# 297
	flw		f2, -40(x2)	# 297
	fmul	f1, f1, f2	# 297
	ori		x4, x0, 4	# 297
	lw		x7, -32(x2)	# 297
	mul		x4, x7, x4	# 297
	add		x4, x6, x4	# 297
	flw		f2, 0(x4)	# 297
	flw		f3, -24(x2)	# 297
	fmul	f2, f2, f3	# 297
	fadd	f1, f1, f2	# 297
	ori		x4, x0, 4	# 297
	lw		x7, -16(x2)	# 297
	mul		x4, x7, x4	# 297
	add		x4, x6, x4	# 297
	flw		f2, 0(x4)	# 297
	flw		f3, -8(x2)	# 297
	fmul	f2, f2, f3	# 297
	fadd	f1, f1, f2	# 297
	fsub	x31, x31, x31	# 4
	fsub	f1, x31, f1	# 4
	fdiv	f0, f1, f0	# 957
	ori		x4, x0, 4	# 957
	mul		x4, x5, x4	# 957
	lw		x5, 0(x2)	# 957
	add		x4, x5, x4	# 957
	fsw		f0, 0(x4)	# 957
	ori		x4, x0, 1	# 958
	jalr	x0, x1, 0	# 958
beq.18070:
	addi	x4, x0, 0	# 959
	jalr	x0, x1, 0	# 959
beq.18063:
	fsw		f1, -40(x2)	# 943
	fsw		f3, -8(x2)	# 943
	fsw		f2, -24(x2)	# 943
	sw		x12, -16(x2)	# 943
	sw		x14, -32(x2)	# 943
	sw		x5, -64(x2)	# 943
	sw		x4, -68(x2)	# 943
	sw		x9, -72(x2)	# 943
	sw		x13, -52(x2)	# 943
	addi	x8, x12, 0
	addi	x7, x14, 0
	addi	x6, x13, 0
	addi	x27, x9, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -76(x2)	# 943
	addi	x2, x2, -80	# 943
	lw		x31, 0(x27)	# 943
	jalr	x1, x31, 0	# 943
	addi	x2, x2, 80	# 943
	lw		x1, -76(x2)	# 943
	lw		x8, -52(x2)	# 943
	beq		x4, x8, beq.18071	# 943
	ori		x4, x0, 1	# 943
	jalr	x0, x1, 0	# 943
beq.18071:
	flw		f0, -24(x2)	# 944
	flw		f1, -8(x2)	# 944
	flw		f2, -40(x2)	# 944
	lw		x4, -68(x2)	# 944
	lw		x5, -64(x2)	# 944
	lw		x6, -32(x2)	# 944
	lw		x7, -16(x2)	# 944
	lw		x27, -72(x2)	# 944
	sw		x1, -76(x2)	# 944
	addi	x2, x2, -80	# 944
	lw		x31, 0(x27)	# 944
	jalr	x1, x31, 0	# 944
	addi	x2, x2, 80	# 944
	lw		x1, -76(x2)	# 944
	lw		x7, -52(x2)	# 944
	beq		x4, x7, beq.18072	# 944
	ori		x4, x0, 2	# 944
	jalr	x0, x1, 0	# 944
beq.18072:
	flw		f0, -8(x2)	# 945
	flw		f1, -40(x2)	# 945
	flw		f2, -24(x2)	# 945
	lw		x4, -68(x2)	# 945
	lw		x5, -64(x2)	# 945
	lw		x6, -16(x2)	# 945
	lw		x8, -32(x2)	# 945
	lw		x27, -72(x2)	# 945
	sw		x1, -76(x2)	# 945
	addi	x2, x2, -80	# 945
	lw		x31, 0(x27)	# 945
	jalr	x1, x31, 0	# 945
	addi	x2, x2, 80	# 945
	lw		x1, -76(x2)	# 945
	lw		x5, -52(x2)	# 945
	beq		x4, x5, beq.18073	# 945
	ori		x4, x0, 3	# 945
	jalr	x0, x1, 0	# 945
beq.18073:
	addi	x4, x0, 0	# 946
	jalr	x0, x1, 0	# 946
solver_rect_fast.2728:
	lw		x7, 28(x27)	# 1064
	lw		x8, 24(x27)	# 1064
	lw		x9, 20(x27)	# 1064
	lw		x10, 16(x27)	# 1064
	lw		x11, 12(x27)	# 1064
	lw		x12, 8(x27)	# 1064
	flw		f3, 4(x27)	# 1064
	ori		x13, x0, 4	# 1064
	mul		x13, x11, x13	# 1064
	add		x13, x6, x13	# 1064
	flw		f4, 0(x13)	# 1064
	fsub	f4, f4, f0	# 1064
	ori		x13, x0, 4	# 1064
	mul		x13, x12, x13	# 1064
	add		x13, x6, x13	# 1064
	flw		f5, 0(x13)	# 1064
	fmul	f4, f4, f5	# 1064
	ori		x13, x0, 4	# 1066
	mul		x13, x12, x13	# 1066
	add		x13, x5, x13	# 1066
	flw		f6, 0(x13)	# 1066
	fmul	f7, f4, f6	# 1066
	fadd	f7, f7, f1	# 1066
	fle		x31, f7, f3	# 5
	beq		x31, x0, fle_else.18075	# 5
	fsub	x31, x31, x31	# 5
	fsub	f7, x31, f7	# 5
	jal		x0, fle_cont.18074	# 5
fle_else.18075:
fle_cont.18074:
	lw		x13, 16(x4)	# 401
	ori		x14, x0, 4	# 406
	mul		x14, x12, x14	# 406
	add		x13, x13, x14	# 406
	flw		f8, 0(x13)	# 406
	fle		x31, f8, f7	# 6
	beq		x31, x0, fle_else.18077	# 6
	addi	x13, x0, 0	# 6
	jal		x0, fle_cont.18076	# 6
fle_else.18077:
	ori		x13, x0, 1	# 6
fle_cont.18076:
	beq		x13, x11, beq.18079	# 1066
	ori		x13, x0, 4	# 1067
	mul		x13, x9, x13	# 1067
	add		x13, x5, x13	# 1067
	flw		f7, 0(x13)	# 1067
	fmul	f7, f4, f7	# 1067
	fadd	f7, f7, f2	# 1067
	fle		x31, f7, f3	# 5
	beq		x31, x0, fle_else.18081	# 5
	fsub	x31, x31, x31	# 5
	fsub	f7, x31, f7	# 5
	jal		x0, fle_cont.18080	# 5
fle_else.18081:
fle_cont.18080:
	lw		x13, 16(x4)	# 411
	ori		x14, x0, 4	# 416
	mul		x14, x9, x14	# 416
	add		x13, x13, x14	# 416
	flw		f8, 0(x13)	# 416
	fle		x31, f8, f7	# 6
	beq		x31, x0, fle_else.18083	# 6
	addi	x13, x0, 0	# 6
	jal		x0, fle_cont.18082	# 6
fle_else.18083:
	ori		x13, x0, 1	# 6
fle_cont.18082:
	beq		x13, x11, beq.18085	# 1067
	feq		x31, f5, f3	# 1
	beq		x31, x0, feq_else.18087	# 1
	ori		x13, x0, 1	# 1
	jal		x0, feq_cont.18086	# 1
feq_else.18087:
	addi	x13, x0, 0	# 1
feq_cont.18086:
	beq		x13, x11, beq.18089	# 1068
	addi	x13, x0, 0	# 1068
	jal		x0, beq_cont.18088	# 1068
beq.18089:
	ori		x13, x0, 1	# 1068
beq_cont.18088:
	jal		x0, beq_cont.18084	# 1067
beq.18085:
	addi	x13, x0, 0	# 1069
beq_cont.18084:
	jal		x0, beq_cont.18078	# 1066
beq.18079:
	addi	x13, x0, 0	# 1070
beq_cont.18078:
	beq		x13, x11, beq.18090	# 1065
	ori		x4, x0, 4	# 1072
	mul		x4, x11, x4	# 1072
	add		x4, x7, x4	# 1072
	fsw		f4, 0(x4)	# 1072
	ori		x4, x0, 1	# 1072
	jalr	x0, x1, 0	# 1072
beq.18090:
	ori		x13, x0, 4	# 1073
	mul		x13, x9, x13	# 1073
	add		x13, x6, x13	# 1073
	flw		f4, 0(x13)	# 1073
	fsub	f4, f4, f1	# 1073
	ori		x13, x0, 4	# 1073
	mul		x10, x10, x13	# 1073
	add		x10, x6, x10	# 1073
	flw		f5, 0(x10)	# 1073
	fmul	f4, f4, f5	# 1073
	ori		x10, x0, 4	# 1075
	mul		x10, x11, x10	# 1075
	add		x10, x5, x10	# 1075
	flw		f7, 0(x10)	# 1075
	fmul	f8, f4, f7	# 1075
	fadd	f8, f8, f0	# 1075
	fle		x31, f8, f3	# 5
	beq		x31, x0, fle_else.18092	# 5
	fsub	x31, x31, x31	# 5
	fsub	f8, x31, f8	# 5
	jal		x0, fle_cont.18091	# 5
fle_else.18092:
fle_cont.18091:
	lw		x10, 16(x4)	# 391
	ori		x13, x0, 4	# 396
	mul		x13, x11, x13	# 396
	add		x10, x10, x13	# 396
	flw		f9, 0(x10)	# 396
	fle		x31, f9, f8	# 6
	beq		x31, x0, fle_else.18094	# 6
	addi	x10, x0, 0	# 6
	jal		x0, fle_cont.18093	# 6
fle_else.18094:
	ori		x10, x0, 1	# 6
fle_cont.18093:
	beq		x10, x11, beq.18096	# 1075
	ori		x10, x0, 4	# 1076
	mul		x10, x9, x10	# 1076
	add		x5, x5, x10	# 1076
	flw		f8, 0(x5)	# 1076
	fmul	f8, f4, f8	# 1076
	fadd	f8, f8, f2	# 1076
	fle		x31, f8, f3	# 5
	beq		x31, x0, fle_else.18098	# 5
	fsub	x31, x31, x31	# 5
	fsub	f8, x31, f8	# 5
	jal		x0, fle_cont.18097	# 5
fle_else.18098:
fle_cont.18097:
	lw		x5, 16(x4)	# 411
	ori		x10, x0, 4	# 416
	mul		x9, x9, x10	# 416
	add		x5, x5, x9	# 416
	flw		f9, 0(x5)	# 416
	fle		x31, f9, f8	# 6
	beq		x31, x0, fle_else.18100	# 6
	addi	x5, x0, 0	# 6
	jal		x0, fle_cont.18099	# 6
fle_else.18100:
	ori		x5, x0, 1	# 6
fle_cont.18099:
	beq		x5, x11, beq.18102	# 1076
	feq		x31, f5, f3	# 1
	beq		x31, x0, feq_else.18104	# 1
	ori		x5, x0, 1	# 1
	jal		x0, feq_cont.18103	# 1
feq_else.18104:
	addi	x5, x0, 0	# 1
feq_cont.18103:
	beq		x5, x11, beq.18106	# 1077
	addi	x5, x0, 0	# 1077
	jal		x0, beq_cont.18105	# 1077
beq.18106:
	ori		x5, x0, 1	# 1077
beq_cont.18105:
	jal		x0, beq_cont.18101	# 1076
beq.18102:
	addi	x5, x0, 0	# 1078
beq_cont.18101:
	jal		x0, beq_cont.18095	# 1075
beq.18096:
	addi	x5, x0, 0	# 1079
beq_cont.18095:
	beq		x5, x11, beq.18107	# 1074
	ori		x4, x0, 4	# 1081
	mul		x4, x11, x4	# 1081
	add		x4, x7, x4	# 1081
	fsw		f4, 0(x4)	# 1081
	ori		x4, x0, 2	# 1081
	jalr	x0, x1, 0	# 1081
beq.18107:
	ori		x5, x0, 4	# 1082
	ori		x9, x0, 4	# 1082
	mul		x5, x5, x9	# 1082
	add		x5, x6, x5	# 1082
	flw		f4, 0(x5)	# 1082
	fsub	f2, f4, f2	# 1082
	ori		x5, x0, 4	# 1082
	mul		x5, x8, x5	# 1082
	add		x5, x6, x5	# 1082
	flw		f4, 0(x5)	# 1082
	fmul	f2, f2, f4	# 1082
	fmul	f5, f2, f7	# 1084
	fadd	f0, f5, f0	# 1084
	fle		x31, f0, f3	# 5
	beq		x31, x0, fle_else.18109	# 5
	fsub	x31, x31, x31	# 5
	fsub	f0, x31, f0	# 5
	jal		x0, fle_cont.18108	# 5
fle_else.18109:
fle_cont.18108:
	lw		x5, 16(x4)	# 391
	ori		x6, x0, 4	# 396
	mul		x6, x11, x6	# 396
	add		x5, x5, x6	# 396
	flw		f5, 0(x5)	# 396
	fle		x31, f5, f0	# 6
	beq		x31, x0, fle_else.18111	# 6
	addi	x5, x0, 0	# 6
	jal		x0, fle_cont.18110	# 6
fle_else.18111:
	ori		x5, x0, 1	# 6
fle_cont.18110:
	beq		x5, x11, beq.18113	# 1084
	fmul	f0, f2, f6	# 1085
	fadd	f0, f0, f1	# 1085
	fle		x31, f0, f3	# 5
	beq		x31, x0, fle_else.18115	# 5
	fsub	x31, x31, x31	# 5
	fsub	f0, x31, f0	# 5
	jal		x0, fle_cont.18114	# 5
fle_else.18115:
fle_cont.18114:
	lw		x4, 16(x4)	# 401
	ori		x5, x0, 4	# 406
	mul		x5, x12, x5	# 406
	add		x4, x4, x5	# 406
	flw		f1, 0(x4)	# 406
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.18117	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18116	# 6
fle_else.18117:
	ori		x4, x0, 1	# 6
fle_cont.18116:
	beq		x4, x11, beq.18119	# 1085
	feq		x31, f4, f3	# 1
	beq		x31, x0, feq_else.18121	# 1
	ori		x4, x0, 1	# 1
	jal		x0, feq_cont.18120	# 1
feq_else.18121:
	addi	x4, x0, 0	# 1
feq_cont.18120:
	beq		x4, x11, beq.18123	# 1086
	addi	x4, x0, 0	# 1086
	jal		x0, beq_cont.18122	# 1086
beq.18123:
	ori		x4, x0, 1	# 1086
beq_cont.18122:
	jal		x0, beq_cont.18118	# 1085
beq.18119:
	addi	x4, x0, 0	# 1087
beq_cont.18118:
	jal		x0, beq_cont.18112	# 1084
beq.18113:
	addi	x4, x0, 0	# 1088
beq_cont.18112:
	beq		x4, x11, beq.18124	# 1083
	ori		x4, x0, 4	# 1090
	mul		x4, x11, x4	# 1090
	add		x4, x7, x4	# 1090
	fsw		f2, 0(x4)	# 1090
	ori		x4, x0, 3	# 1090
	jalr	x0, x1, 0	# 1090
beq.18124:
	addi	x4, x0, 0	# 1092
	jalr	x0, x1, 0	# 1092
solver_surface_fast.2735:
	lw		x4, 24(x27)	# 1097
	lw		x6, 20(x27)	# 1097
	lw		x7, 16(x27)	# 1097
	lw		x8, 12(x27)	# 1097
	lw		x9, 8(x27)	# 1097
	flw		f3, 4(x27)	# 1097
	ori		x10, x0, 4	# 1097
	mul		x10, x8, x10	# 1097
	add		x10, x5, x10	# 1097
	flw		f4, 0(x10)	# 1097
	fle		x31, f3, f4	# 3
	beq		x31, x0, fle_else.18126	# 3
	addi	x10, x0, 0	# 3
	jal		x0, fle_cont.18125	# 3
fle_else.18126:
	ori		x10, x0, 1	# 3
fle_cont.18125:
	beq		x10, x8, beq.18127	# 1097
	ori		x10, x0, 4	# 1099
	mul		x9, x9, x10	# 1099
	add		x9, x5, x9	# 1099
	flw		f3, 0(x9)	# 1099
	fmul	f0, f3, f0	# 1099
	ori		x9, x0, 4	# 1099
	mul		x6, x6, x9	# 1099
	add		x6, x5, x6	# 1099
	flw		f3, 0(x6)	# 1099
	fmul	f1, f3, f1	# 1099
	fadd	f0, f0, f1	# 1099
	ori		x6, x0, 4	# 1099
	mul		x6, x7, x6	# 1099
	add		x5, x5, x6	# 1099
	flw		f1, 0(x5)	# 1099
	fmul	f1, f1, f2	# 1099
	fadd	f0, f0, f1	# 1099
	ori		x5, x0, 4	# 1098
	mul		x5, x8, x5	# 1098
	add		x4, x4, x5	# 1098
	fsw		f0, 0(x4)	# 1098
	ori		x4, x0, 1	# 1100
	jalr	x0, x1, 0	# 1100
beq.18127:
	addi	x4, x0, 0	# 1101
	jalr	x0, x1, 0	# 1101
solver_second_fast.2741:
	lw		x6, 28(x27)	# 1107
	lw		x7, 24(x27)	# 1107
	lw		x8, 20(x27)	# 1107
	lw		x9, 16(x27)	# 1107
	lw		x10, 12(x27)	# 1107
	lw		x11, 8(x27)	# 1107
	flw		f3, 4(x27)	# 1107
	ori		x12, x0, 4	# 1107
	mul		x12, x10, x12	# 1107
	add		x12, x5, x12	# 1107
	flw		f4, 0(x12)	# 1107
	feq		x31, f4, f3	# 1
	beq		x31, x0, feq_else.18129	# 1
	ori		x12, x0, 1	# 1
	jal		x0, feq_cont.18128	# 1
feq_else.18129:
	addi	x12, x0, 0	# 1
feq_cont.18128:
	beq		x12, x10, beq.18130	# 1108
	addi	x4, x0, 0	# 1109
	jalr	x0, x1, 0	# 1109
beq.18130:
	ori		x12, x0, 4	# 1111
	mul		x11, x11, x12	# 1111
	add		x11, x5, x11	# 1111
	flw		f5, 0(x11)	# 1111
	fmul	f5, f5, f0	# 1111
	ori		x11, x0, 4	# 1111
	mul		x8, x8, x11	# 1111
	add		x8, x5, x8	# 1111
	flw		f6, 0(x8)	# 1111
	fmul	f6, f6, f1	# 1111
	fadd	f5, f5, f6	# 1111
	ori		x8, x0, 4	# 1111
	mul		x8, x9, x8	# 1111
	add		x8, x5, x8	# 1111
	flw		f6, 0(x8)	# 1111
	fmul	f6, f6, f2	# 1111
	fadd	f5, f5, f6	# 1111
	sw		x6, 0(x2)	# 1112
	sw		x5, -4(x2)	# 1112
	sw		x10, -8(x2)	# 1112
	fsw		f3, -16(x2)	# 1112
	fsw		f4, -24(x2)	# 1112
	fsw		f5, -32(x2)	# 1112
	sw		x9, -40(x2)	# 1112
	sw		x4, -44(x2)	# 1112
	addi	x27, x7, 0
	sw		x1, -48(x2)	# 1112
	addi	x2, x2, -52	# 1112
	lw		x31, 0(x27)	# 1112
	jalr	x1, x31, 0	# 1112
	addi	x2, x2, 52	# 1112
	lw		x1, -48(x2)	# 1112
	lw		x4, -44(x2)	# 353
	lw		x5, 4(x4)	# 353
	lw		x6, -40(x2)	# 1113
	beq		x5, x6, beq.18133	# 1113
	jal		x0, beq_cont.18132	# 1113
beq.18133:
	lui		x5, %hi(l.9419)	# 1113
	ori		x5, x0, %lo(l.9419)	# 1113
	flw		f1, 0(x5)	# 1113
	fsub	f0, f0, f1	# 1113
beq_cont.18132:
	flw		f1, -32(x2)	# 8
	fmul	f2, f1, f1	# 8
	flw		f3, -24(x2)	# 1114
	fmul	f0, f3, f0	# 1114
	fsub	f0, f2, f0	# 1114
	flw		f2, -16(x2)	# 2
	fle		x31, f0, f2	# 2
	beq		x31, x0, fle_else.18135	# 2
	addi	x5, x0, 0	# 2
	jal		x0, fle_cont.18134	# 2
fle_else.18135:
	ori		x5, x0, 1	# 2
fle_cont.18134:
	lw		x6, -8(x2)	# 1115
	beq		x5, x6, beq.18136	# 1115
	lw		x4, 24(x4)	# 373
	beq		x4, x6, beq.18138	# 1116
	addi	x4, x0, 0	# 1117
	sw		x4, -48(x2)	# 1117
	sw		x1, -52(x2)	# 1117
	addi	x2, x2, -56	# 1117
	jal		x1, min_caml_sqrt	# 1117
	addi	x2, x2, 56	# 1117
	lw		x1, -52(x2)	# 1117
	flw		f1, -32(x2)	# 1117
	fadd	f0, f1, f0	# 1117
	ori		x4, x0, 4	# 1117
	ori		x5, x0, 4	# 1117
	mul		x4, x4, x5	# 1117
	lw		x5, -4(x2)	# 1117
	add		x4, x5, x4	# 1117
	flw		f1, 0(x4)	# 1117
	fmul	f0, f0, f1	# 1117
	ori		x4, x0, 4	# 1117
	lw		x5, -48(x2)	# 1117
	mul		x4, x5, x4	# 1117
	lw		x5, 0(x2)	# 1117
	add		x4, x5, x4	# 1117
	fsw		f0, 0(x4)	# 1117
	jal		x0, beq_cont.18137	# 1116
beq.18138:
	addi	x4, x0, 0	# 1119
	sw		x4, -52(x2)	# 1119
	sw		x1, -56(x2)	# 1119
	addi	x2, x2, -60	# 1119
	jal		x1, min_caml_sqrt	# 1119
	addi	x2, x2, 60	# 1119
	lw		x1, -56(x2)	# 1119
	flw		f1, -32(x2)	# 1119
	fsub	f0, f1, f0	# 1119
	ori		x4, x0, 4	# 1119
	ori		x5, x0, 4	# 1119
	mul		x4, x4, x5	# 1119
	lw		x5, -4(x2)	# 1119
	add		x4, x5, x4	# 1119
	flw		f1, 0(x4)	# 1119
	fmul	f0, f0, f1	# 1119
	ori		x4, x0, 4	# 1119
	lw		x5, -52(x2)	# 1119
	mul		x4, x5, x4	# 1119
	lw		x5, 0(x2)	# 1119
	add		x4, x5, x4	# 1119
	fsw		f0, 0(x4)	# 1119
beq_cont.18137:
	ori		x4, x0, 1	# 1120
	jalr	x0, x1, 0	# 1120
beq.18136:
	addi	x4, x0, 0	# 1121
	jalr	x0, x1, 0	# 1121
solver_fast.2747:
	lw		x7, 28(x27)	# 1126
	lw		x8, 24(x27)	# 1126
	lw		x9, 20(x27)	# 1126
	lw		x10, 16(x27)	# 1126
	lw		x11, 12(x27)	# 1126
	lw		x12, 8(x27)	# 1126
	lw		x13, 4(x27)	# 1126
	ori		x14, x0, 4	# 1126
	mul		x14, x4, x14	# 1126
	add		x10, x10, x14	# 1126
	lw		x10, 0(x10)	# 1126
	ori		x14, x0, 4	# 1127
	mul		x14, x12, x14	# 1127
	add		x14, x6, x14	# 1127
	flw		f0, 0(x14)	# 1127
	lw		x14, 20(x10)	# 431
	ori		x15, x0, 4	# 436
	mul		x12, x12, x15	# 436
	add		x12, x14, x12	# 436
	flw		f1, 0(x12)	# 436
	fsub	f0, f0, f1	# 1127
	ori		x12, x0, 4	# 1128
	mul		x12, x13, x12	# 1128
	add		x12, x6, x12	# 1128
	flw		f1, 0(x12)	# 1128
	lw		x12, 20(x10)	# 441
	ori		x14, x0, 4	# 446
	mul		x14, x13, x14	# 446
	add		x12, x12, x14	# 446
	flw		f2, 0(x12)	# 446
	fsub	f1, f1, f2	# 1128
	ori		x12, x0, 4	# 1129
	mul		x12, x11, x12	# 1129
	add		x6, x6, x12	# 1129
	flw		f2, 0(x6)	# 1129
	lw		x6, 20(x10)	# 451
	ori		x12, x0, 4	# 456
	mul		x12, x11, x12	# 456
	add		x6, x6, x12	# 456
	flw		f3, 0(x6)	# 456
	fsub	f2, f2, f3	# 1129
	lw		x6, 4(x5)	# 645
	ori		x12, x0, 4	# 1131
	mul		x4, x4, x12	# 1131
	add		x4, x6, x4	# 1131
	lw		x6, 0(x4)	# 1131
	lw		x4, 4(x10)	# 353
	beq		x4, x13, beq.18139	# 1133
	beq		x4, x11, beq.18140	# 1135
	addi	x5, x6, 0
	addi	x4, x10, 0
	addi	x27, x8, 0
	lw		x31, 0(x27)	# 1138
	jalr	x0, x31, 0	# 1138
beq.18140:
	addi	x5, x6, 0
	addi	x4, x10, 0
	addi	x27, x7, 0
	lw		x31, 0(x27)	# 1136
	jalr	x0, x31, 0	# 1136
beq.18139:
	lw		x5, 0(x5)	# 639
	addi	x4, x10, 0
	addi	x27, x9, 0
	lw		x31, 0(x27)	# 1134
	jalr	x0, x31, 0	# 1134
solver_second_fast2.2758:
	lw		x7, 24(x27)	# 1155
	lw		x8, 20(x27)	# 1155
	lw		x9, 16(x27)	# 1155
	lw		x10, 12(x27)	# 1155
	lw		x11, 8(x27)	# 1155
	flw		f3, 4(x27)	# 1155
	ori		x12, x0, 4	# 1155
	mul		x12, x10, x12	# 1155
	add		x12, x5, x12	# 1155
	flw		f4, 0(x12)	# 1155
	feq		x31, f4, f3	# 1
	beq		x31, x0, feq_else.18142	# 1
	ori		x12, x0, 1	# 1
	jal		x0, feq_cont.18141	# 1
feq_else.18142:
	addi	x12, x0, 0	# 1
feq_cont.18141:
	beq		x12, x10, beq.18143	# 1156
	addi	x4, x0, 0	# 1157
	jalr	x0, x1, 0	# 1157
beq.18143:
	ori		x12, x0, 4	# 1159
	mul		x11, x11, x12	# 1159
	add		x11, x5, x11	# 1159
	flw		f5, 0(x11)	# 1159
	fmul	f0, f5, f0	# 1159
	ori		x11, x0, 4	# 1159
	mul		x8, x8, x11	# 1159
	add		x8, x5, x8	# 1159
	flw		f5, 0(x8)	# 1159
	fmul	f1, f5, f1	# 1159
	fadd	f0, f0, f1	# 1159
	ori		x8, x0, 4	# 1159
	mul		x8, x9, x8	# 1159
	add		x8, x5, x8	# 1159
	flw		f1, 0(x8)	# 1159
	fmul	f1, f1, f2	# 1159
	fadd	f0, f0, f1	# 1159
	ori		x8, x0, 4	# 1160
	mul		x8, x9, x8	# 1160
	add		x6, x6, x8	# 1160
	flw		f1, 0(x6)	# 1160
	fmul	f2, f0, f0	# 8
	fmul	f1, f4, f1	# 1161
	fsub	f1, f2, f1	# 1161
	fle		x31, f1, f3	# 2
	beq		x31, x0, fle_else.18145	# 2
	addi	x6, x0, 0	# 2
	jal		x0, fle_cont.18144	# 2
fle_else.18145:
	ori		x6, x0, 1	# 2
fle_cont.18144:
	beq		x6, x10, beq.18146	# 1162
	lw		x4, 24(x4)	# 373
	beq		x4, x10, beq.18148	# 1163
	addi	x4, x0, 0	# 1164
	sw		x7, 0(x2)	# 1164
	sw		x4, -4(x2)	# 1164
	sw		x5, -8(x2)	# 1164
	fsw		f0, -16(x2)	# 1164
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -24(x2)	# 1164
	addi	x2, x2, -28	# 1164
	jal		x1, min_caml_sqrt	# 1164
	addi	x2, x2, 28	# 1164
	lw		x1, -24(x2)	# 1164
	flw		f1, -16(x2)	# 1164
	fadd	f0, f1, f0	# 1164
	ori		x4, x0, 4	# 1164
	ori		x5, x0, 4	# 1164
	mul		x4, x4, x5	# 1164
	lw		x5, -8(x2)	# 1164
	add		x4, x5, x4	# 1164
	flw		f1, 0(x4)	# 1164
	fmul	f0, f0, f1	# 1164
	ori		x4, x0, 4	# 1164
	lw		x5, -4(x2)	# 1164
	mul		x4, x5, x4	# 1164
	lw		x5, 0(x2)	# 1164
	add		x4, x5, x4	# 1164
	fsw		f0, 0(x4)	# 1164
	jal		x0, beq_cont.18147	# 1163
beq.18148:
	addi	x4, x0, 0	# 1166
	sw		x7, 0(x2)	# 1166
	sw		x4, -24(x2)	# 1166
	sw		x5, -8(x2)	# 1166
	fsw		f0, -16(x2)	# 1166
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -28(x2)	# 1166
	addi	x2, x2, -32	# 1166
	jal		x1, min_caml_sqrt	# 1166
	addi	x2, x2, 32	# 1166
	lw		x1, -28(x2)	# 1166
	flw		f1, -16(x2)	# 1166
	fsub	f0, f1, f0	# 1166
	ori		x4, x0, 4	# 1166
	ori		x5, x0, 4	# 1166
	mul		x4, x4, x5	# 1166
	lw		x5, -8(x2)	# 1166
	add		x4, x5, x4	# 1166
	flw		f1, 0(x4)	# 1166
	fmul	f0, f0, f1	# 1166
	ori		x4, x0, 4	# 1166
	lw		x5, -24(x2)	# 1166
	mul		x4, x5, x4	# 1166
	lw		x5, 0(x2)	# 1166
	add		x4, x5, x4	# 1166
	fsw		f0, 0(x4)	# 1166
beq_cont.18147:
	ori		x4, x0, 1	# 1167
	jalr	x0, x1, 0	# 1167
beq.18146:
	addi	x4, x0, 0	# 1168
	jalr	x0, x1, 0	# 1168
solver_fast2.2765:
	lw		x6, 36(x27)	# 1173
	lw		x7, 32(x27)	# 1173
	lw		x8, 28(x27)	# 1173
	lw		x9, 24(x27)	# 1173
	lw		x10, 20(x27)	# 1173
	lw		x11, 16(x27)	# 1173
	lw		x12, 12(x27)	# 1173
	lw		x13, 8(x27)	# 1173
	flw		f0, 4(x27)	# 1173
	ori		x14, x0, 4	# 1173
	mul		x14, x4, x14	# 1173
	add		x9, x9, x14	# 1173
	lw		x9, 0(x9)	# 1173
	lw		x14, 40(x9)	# 548
	ori		x15, x0, 4	# 1175
	mul		x15, x12, x15	# 1175
	add		x15, x14, x15	# 1175
	flw		f1, 0(x15)	# 1175
	ori		x15, x0, 4	# 1176
	mul		x15, x13, x15	# 1176
	add		x15, x14, x15	# 1176
	flw		f2, 0(x15)	# 1176
	ori		x15, x0, 4	# 1177
	mul		x15, x10, x15	# 1177
	add		x15, x14, x15	# 1177
	flw		f3, 0(x15)	# 1177
	lw		x15, 4(x5)	# 645
	ori		x16, x0, 4	# 1179
	mul		x4, x4, x16	# 1179
	add		x4, x15, x4	# 1179
	lw		x4, 0(x4)	# 1179
	lw		x15, 4(x9)	# 353
	beq		x15, x13, beq.18150	# 1181
	beq		x15, x10, beq.18151	# 1183
	addi	x5, x4, 0
	addi	x27, x6, 0
	addi	x6, x14, 0
	addi	x4, x9, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	lw		x31, 0(x27)	# 1186
	jalr	x0, x31, 0	# 1186
beq.18151:
	ori		x5, x0, 4	# 1146
	mul		x5, x12, x5	# 1146
	add		x4, x4, x5	# 1146
	flw		f1, 0(x4)	# 1146
	fle		x31, f0, f1	# 3
	beq		x31, x0, fle_else.18153	# 3
	addi	x4, x0, 0	# 3
	jal		x0, fle_cont.18152	# 3
fle_else.18153:
	ori		x4, x0, 1	# 3
fle_cont.18152:
	beq		x4, x12, beq.18154	# 1146
	ori		x4, x0, 4	# 1147
	mul		x4, x11, x4	# 1147
	add		x4, x14, x4	# 1147
	flw		f0, 0(x4)	# 1147
	fmul	f0, f1, f0	# 1147
	ori		x4, x0, 4	# 1147
	mul		x4, x12, x4	# 1147
	add		x4, x8, x4	# 1147
	fsw		f0, 0(x4)	# 1147
	ori		x4, x0, 1	# 1148
	jalr	x0, x1, 0	# 1148
beq.18154:
	addi	x4, x0, 0	# 1149
	jalr	x0, x1, 0	# 1149
beq.18150:
	lw		x5, 0(x5)	# 639
	addi	x6, x4, 0
	addi	x27, x7, 0
	addi	x4, x9, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	lw		x31, 0(x27)	# 1182
	jalr	x0, x31, 0	# 1182
setup_rect_table.2768:
	lw		x6, 16(x27)	# 1195
	lw		x7, 12(x27)	# 1195
	lw		x8, 8(x27)	# 1195
	flw		f0, 4(x27)	# 1195
	ori		x9, x0, 6	# 1195
	sw		x6, 0(x2)	# 1195
	sw		x8, -4(x2)	# 1195
	sw		x5, -8(x2)	# 1195
	fsw		f0, -16(x2)	# 1195
	sw		x4, -24(x2)	# 1195
	sw		x7, -28(x2)	# 1195
	addi	x4, x9, 0
	sw		x1, -32(x2)	# 1195
	addi	x2, x2, -36	# 1195
	jal		x1, min_caml_create_float_array	# 1195
	addi	x2, x2, 36	# 1195
	lw		x1, -32(x2)	# 1195
	ori		x5, x0, 4	# 1197
	lw		x6, -28(x2)	# 1197
	mul		x5, x6, x5	# 1197
	lw		x7, -24(x2)	# 1197
	add		x5, x7, x5	# 1197
	flw		f0, 0(x5)	# 1197
	flw		f1, -16(x2)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.18157	# 1
	ori		x5, x0, 1	# 1
	jal		x0, feq_cont.18156	# 1
feq_else.18157:
	addi	x5, x0, 0	# 1
feq_cont.18156:
	beq		x5, x6, beq.18159	# 1197
	ori		x5, x0, 1	# 1198
	lui		x8, %hi(l.9417)	# 1198
	ori		x8, x0, %lo(l.9417)	# 1198
	flw		f0, 0(x8)	# 1198
	ori		x8, x0, 4	# 1198
	mul		x5, x5, x8	# 1198
	add		x5, x4, x5	# 1198
	fsw		f0, 0(x5)	# 1198
	jal		x0, beq_cont.18158	# 1197
beq.18159:
	addi	x5, x0, 0	# 1201
	lw		x8, -8(x2)	# 373
	lw		x9, 24(x8)	# 373
	addi	x10, x0, 0	# 1201
	ori		x11, x0, 4	# 1201
	mul		x10, x10, x11	# 1201
	add		x10, x7, x10	# 1201
	flw		f0, 0(x10)	# 1201
	lui		x10, %hi(l.9417)	# 3
	ori		x10, x0, %lo(l.9417)	# 3
	flw		f2, 0(x10)	# 3
	fle		x31, f2, f0	# 3
	beq		x31, x0, fle_else.18161	# 3
	addi	x10, x0, 0	# 3
	jal		x0, fle_cont.18160	# 3
fle_else.18161:
	ori		x10, x0, 1	# 3
fle_cont.18160:
	addi	x11, x0, 0	# 204
	beq		x9, x11, beq.18163	# 204
	beq		x10, x11, beq.18165	# 204
	addi	x9, x0, 0	# 204
	jal		x0, beq_cont.18164	# 204
beq.18165:
	ori		x9, x0, 1	# 204
beq_cont.18164:
	jal		x0, beq_cont.18162	# 204
beq.18163:
	addi	x9, x10, 0	# 204
beq_cont.18162:
	lw		x10, 16(x8)	# 391
	addi	x11, x0, 0	# 396
	ori		x12, x0, 4	# 396
	mul		x11, x11, x12	# 396
	add		x10, x10, x11	# 396
	flw		f0, 0(x10)	# 396
	addi	x10, x0, 0	# 219
	beq		x9, x10, beq.18167	# 219
	jal		x0, beq_cont.18166	# 219
beq.18167:
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
beq_cont.18166:
	ori		x9, x0, 4	# 1201
	mul		x5, x5, x9	# 1201
	add		x5, x4, x5	# 1201
	fsw		f0, 0(x5)	# 1201
	ori		x5, x0, 1	# 1203
	lui		x9, %hi(l.9419)	# 1203
	ori		x9, x0, %lo(l.9419)	# 1203
	flw		f0, 0(x9)	# 1203
	addi	x9, x0, 0	# 1203
	ori		x10, x0, 4	# 1203
	mul		x9, x9, x10	# 1203
	add		x9, x7, x9	# 1203
	flw		f2, 0(x9)	# 1203
	fdiv	f0, f0, f2	# 1203
	ori		x9, x0, 4	# 1203
	mul		x5, x5, x9	# 1203
	add		x5, x4, x5	# 1203
	fsw		f0, 0(x5)	# 1203
beq_cont.18158:
	ori		x5, x0, 4	# 1205
	lw		x8, -4(x2)	# 1205
	mul		x5, x8, x5	# 1205
	add		x5, x7, x5	# 1205
	flw		f0, 0(x5)	# 1205
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.18169	# 1
	ori		x5, x0, 1	# 1
	jal		x0, feq_cont.18168	# 1
feq_else.18169:
	addi	x5, x0, 0	# 1
feq_cont.18168:
	beq		x5, x6, beq.18171	# 1205
	ori		x5, x0, 3	# 1206
	lui		x8, %hi(l.9417)	# 1206
	ori		x8, x0, %lo(l.9417)	# 1206
	flw		f0, 0(x8)	# 1206
	ori		x8, x0, 4	# 1206
	mul		x5, x5, x8	# 1206
	add		x5, x4, x5	# 1206
	fsw		f0, 0(x5)	# 1206
	jal		x0, beq_cont.18170	# 1205
beq.18171:
	ori		x5, x0, 2	# 1208
	lw		x8, -8(x2)	# 373
	lw		x9, 24(x8)	# 373
	ori		x10, x0, 1	# 1208
	ori		x11, x0, 4	# 1208
	mul		x10, x10, x11	# 1208
	add		x10, x7, x10	# 1208
	flw		f0, 0(x10)	# 1208
	lui		x10, %hi(l.9417)	# 3
	ori		x10, x0, %lo(l.9417)	# 3
	flw		f2, 0(x10)	# 3
	fle		x31, f2, f0	# 3
	beq		x31, x0, fle_else.18173	# 3
	addi	x10, x0, 0	# 3
	jal		x0, fle_cont.18172	# 3
fle_else.18173:
	ori		x10, x0, 1	# 3
fle_cont.18172:
	addi	x11, x0, 0	# 204
	beq		x9, x11, beq.18175	# 204
	beq		x10, x11, beq.18177	# 204
	addi	x9, x0, 0	# 204
	jal		x0, beq_cont.18176	# 204
beq.18177:
	ori		x9, x0, 1	# 204
beq_cont.18176:
	jal		x0, beq_cont.18174	# 204
beq.18175:
	addi	x9, x10, 0	# 204
beq_cont.18174:
	lw		x10, 16(x8)	# 401
	ori		x11, x0, 1	# 406
	ori		x12, x0, 4	# 406
	mul		x11, x11, x12	# 406
	add		x10, x10, x11	# 406
	flw		f0, 0(x10)	# 406
	addi	x10, x0, 0	# 219
	beq		x9, x10, beq.18179	# 219
	jal		x0, beq_cont.18178	# 219
beq.18179:
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
beq_cont.18178:
	ori		x9, x0, 4	# 1208
	mul		x5, x5, x9	# 1208
	add		x5, x4, x5	# 1208
	fsw		f0, 0(x5)	# 1208
	ori		x5, x0, 3	# 1209
	lui		x9, %hi(l.9419)	# 1209
	ori		x9, x0, %lo(l.9419)	# 1209
	flw		f0, 0(x9)	# 1209
	ori		x9, x0, 1	# 1209
	ori		x10, x0, 4	# 1209
	mul		x9, x9, x10	# 1209
	add		x9, x7, x9	# 1209
	flw		f2, 0(x9)	# 1209
	fdiv	f0, f0, f2	# 1209
	ori		x9, x0, 4	# 1209
	mul		x5, x5, x9	# 1209
	add		x5, x4, x5	# 1209
	fsw		f0, 0(x5)	# 1209
beq_cont.18170:
	ori		x5, x0, 4	# 1211
	lw		x8, 0(x2)	# 1211
	mul		x5, x8, x5	# 1211
	add		x5, x7, x5	# 1211
	flw		f0, 0(x5)	# 1211
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.18181	# 1
	ori		x5, x0, 1	# 1
	jal		x0, feq_cont.18180	# 1
feq_else.18181:
	addi	x5, x0, 0	# 1
feq_cont.18180:
	beq		x5, x6, beq.18183	# 1211
	ori		x5, x0, 5	# 1212
	lui		x6, %hi(l.9417)	# 1212
	ori		x6, x0, %lo(l.9417)	# 1212
	flw		f0, 0(x6)	# 1212
	ori		x6, x0, 4	# 1212
	mul		x5, x5, x6	# 1212
	add		x5, x4, x5	# 1212
	fsw		f0, 0(x5)	# 1212
	jal		x0, beq_cont.18182	# 1211
beq.18183:
	ori		x5, x0, 4	# 1214
	lw		x6, -8(x2)	# 373
	lw		x8, 24(x6)	# 373
	ori		x9, x0, 2	# 1214
	ori		x10, x0, 4	# 1214
	mul		x9, x9, x10	# 1214
	add		x9, x7, x9	# 1214
	flw		f0, 0(x9)	# 1214
	lui		x9, %hi(l.9417)	# 3
	ori		x9, x0, %lo(l.9417)	# 3
	flw		f1, 0(x9)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.18185	# 3
	addi	x9, x0, 0	# 3
	jal		x0, fle_cont.18184	# 3
fle_else.18185:
	ori		x9, x0, 1	# 3
fle_cont.18184:
	addi	x10, x0, 0	# 204
	beq		x8, x10, beq.18187	# 204
	beq		x9, x10, beq.18189	# 204
	addi	x8, x0, 0	# 204
	jal		x0, beq_cont.18188	# 204
beq.18189:
	ori		x8, x0, 1	# 204
beq_cont.18188:
	jal		x0, beq_cont.18186	# 204
beq.18187:
	addi	x8, x9, 0	# 204
beq_cont.18186:
	lw		x6, 16(x6)	# 411
	ori		x9, x0, 2	# 416
	ori		x10, x0, 4	# 416
	mul		x9, x9, x10	# 416
	add		x6, x6, x9	# 416
	flw		f0, 0(x6)	# 416
	addi	x6, x0, 0	# 219
	beq		x8, x6, beq.18191	# 219
	jal		x0, beq_cont.18190	# 219
beq.18191:
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
beq_cont.18190:
	ori		x6, x0, 4	# 1214
	mul		x5, x5, x6	# 1214
	add		x5, x4, x5	# 1214
	fsw		f0, 0(x5)	# 1214
	ori		x5, x0, 5	# 1215
	lui		x6, %hi(l.9419)	# 1215
	ori		x6, x0, %lo(l.9419)	# 1215
	flw		f0, 0(x6)	# 1215
	ori		x6, x0, 2	# 1215
	ori		x8, x0, 4	# 1215
	mul		x6, x6, x8	# 1215
	add		x6, x7, x6	# 1215
	flw		f1, 0(x6)	# 1215
	fdiv	f0, f0, f1	# 1215
	ori		x6, x0, 4	# 1215
	mul		x5, x5, x6	# 1215
	add		x5, x4, x5	# 1215
	fsw		f0, 0(x5)	# 1215
beq_cont.18182:
	jalr	x0, x1, 0	# 1217
setup_surface_table.2771:
	lw		x6, 16(x27)	# 1222
	lw		x7, 12(x27)	# 1222
	lw		x8, 8(x27)	# 1222
	flw		f0, 4(x27)	# 1222
	ori		x9, x0, 4	# 1222
	fsw		f0, 0(x2)	# 1222
	sw		x6, -8(x2)	# 1222
	sw		x8, -12(x2)	# 1222
	sw		x5, -16(x2)	# 1222
	sw		x4, -20(x2)	# 1222
	sw		x7, -24(x2)	# 1222
	addi	x4, x9, 0
	sw		x1, -28(x2)	# 1222
	addi	x2, x2, -32	# 1222
	jal		x1, min_caml_create_float_array	# 1222
	addi	x2, x2, 32	# 1222
	lw		x1, -28(x2)	# 1222
	ori		x5, x0, 4	# 1224
	lw		x6, -24(x2)	# 1224
	mul		x5, x6, x5	# 1224
	lw		x7, -20(x2)	# 1224
	add		x5, x7, x5	# 1224
	flw		f0, 0(x5)	# 1224
	lw		x5, -16(x2)	# 391
	lw		x8, 16(x5)	# 391
	ori		x9, x0, 4	# 396
	mul		x9, x6, x9	# 396
	add		x8, x8, x9	# 396
	flw		f1, 0(x8)	# 396
	fmul	f0, f0, f1	# 1224
	ori		x8, x0, 4	# 1224
	lw		x9, -12(x2)	# 1224
	mul		x8, x9, x8	# 1224
	add		x8, x7, x8	# 1224
	flw		f1, 0(x8)	# 1224
	lw		x8, 16(x5)	# 401
	ori		x10, x0, 4	# 406
	mul		x9, x9, x10	# 406
	add		x8, x8, x9	# 406
	flw		f2, 0(x8)	# 406
	fmul	f1, f1, f2	# 1224
	fadd	f0, f0, f1	# 1224
	ori		x8, x0, 4	# 1224
	lw		x9, -8(x2)	# 1224
	mul		x8, x9, x8	# 1224
	add		x7, x7, x8	# 1224
	flw		f1, 0(x7)	# 1224
	lw		x7, 16(x5)	# 411
	ori		x8, x0, 4	# 416
	mul		x8, x9, x8	# 416
	add		x7, x7, x8	# 416
	flw		f2, 0(x7)	# 416
	fmul	f1, f1, f2	# 1224
	fadd	f0, f0, f1	# 1224
	flw		f1, 0(x2)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.18193	# 2
	addi	x7, x0, 0	# 2
	jal		x0, fle_cont.18192	# 2
fle_else.18193:
	ori		x7, x0, 1	# 2
fle_cont.18192:
	beq		x7, x6, beq.18195	# 1226
	addi	x6, x0, 0	# 1228
	lui		x7, %hi(l.9471)	# 1228
	ori		x7, x0, %lo(l.9471)	# 1228
	flw		f1, 0(x7)	# 1228
	fdiv	f1, f1, f0	# 1228
	ori		x7, x0, 4	# 1228
	mul		x6, x6, x7	# 1228
	add		x6, x4, x6	# 1228
	fsw		f1, 0(x6)	# 1228
	ori		x6, x0, 1	# 1230
	lw		x7, 16(x5)	# 391
	addi	x8, x0, 0	# 396
	ori		x9, x0, 4	# 396
	mul		x8, x8, x9	# 396
	add		x7, x7, x8	# 396
	flw		f1, 0(x7)	# 396
	fdiv	f1, f1, f0	# 1230
	fsub	x31, x31, x31	# 4
	fsub	f1, x31, f1	# 4
	ori		x7, x0, 4	# 1230
	mul		x6, x6, x7	# 1230
	add		x6, x4, x6	# 1230
	fsw		f1, 0(x6)	# 1230
	ori		x6, x0, 2	# 1231
	lw		x7, 16(x5)	# 401
	ori		x8, x0, 1	# 406
	ori		x9, x0, 4	# 406
	mul		x8, x8, x9	# 406
	add		x7, x7, x8	# 406
	flw		f1, 0(x7)	# 406
	fdiv	f1, f1, f0	# 1231
	fsub	x31, x31, x31	# 4
	fsub	f1, x31, f1	# 4
	ori		x7, x0, 4	# 1231
	mul		x6, x6, x7	# 1231
	add		x6, x4, x6	# 1231
	fsw		f1, 0(x6)	# 1231
	ori		x6, x0, 3	# 1232
	lw		x5, 16(x5)	# 411
	ori		x7, x0, 2	# 416
	ori		x8, x0, 4	# 416
	mul		x7, x7, x8	# 416
	add		x5, x5, x7	# 416
	flw		f1, 0(x5)	# 416
	fdiv	f0, f1, f0	# 1232
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x5, x0, 4	# 1232
	mul		x5, x6, x5	# 1232
	add		x5, x4, x5	# 1232
	fsw		f0, 0(x5)	# 1232
	jal		x0, beq_cont.18194	# 1226
beq.18195:
	addi	x5, x0, 0	# 1234
	lui		x6, %hi(l.9417)	# 1234
	ori		x6, x0, %lo(l.9417)	# 1234
	flw		f0, 0(x6)	# 1234
	ori		x6, x0, 4	# 1234
	mul		x5, x5, x6	# 1234
	add		x5, x4, x5	# 1234
	fsw		f0, 0(x5)	# 1234
beq_cont.18194:
	jalr	x0, x1, 0	# 1235
setup_second_table.2774:
	lw		x6, 24(x27)	# 1241
	lw		x7, 20(x27)	# 1241
	lw		x8, 16(x27)	# 1241
	lw		x9, 12(x27)	# 1241
	lw		x10, 8(x27)	# 1241
	flw		f0, 4(x27)	# 1241
	fsw		f0, 0(x2)	# 1241
	sw		x5, -8(x2)	# 1241
	sw		x6, -12(x2)	# 1241
	sw		x8, -16(x2)	# 1241
	sw		x10, -20(x2)	# 1241
	sw		x4, -24(x2)	# 1241
	sw		x9, -28(x2)	# 1241
	addi	x4, x7, 0
	sw		x1, -32(x2)	# 1241
	addi	x2, x2, -36	# 1241
	jal		x1, min_caml_create_float_array	# 1241
	addi	x2, x2, 36	# 1241
	lw		x1, -32(x2)	# 1241
	ori		x5, x0, 4	# 1243
	lw		x6, -28(x2)	# 1243
	mul		x5, x6, x5	# 1243
	lw		x7, -24(x2)	# 1243
	add		x5, x7, x5	# 1243
	flw		f0, 0(x5)	# 1243
	ori		x5, x0, 4	# 1243
	lw		x8, -20(x2)	# 1243
	mul		x5, x8, x5	# 1243
	add		x5, x7, x5	# 1243
	flw		f1, 0(x5)	# 1243
	ori		x5, x0, 4	# 1243
	lw		x9, -16(x2)	# 1243
	mul		x5, x9, x5	# 1243
	add		x5, x7, x5	# 1243
	flw		f2, 0(x5)	# 1243
	lw		x5, -8(x2)	# 1243
	lw		x27, -12(x2)	# 1243
	sw		x4, -32(x2)	# 1243
	addi	x4, x5, 0
	sw		x1, -36(x2)	# 1243
	addi	x2, x2, -40	# 1243
	lw		x31, 0(x27)	# 1243
	jalr	x1, x31, 0	# 1243
	addi	x2, x2, 40	# 1243
	lw		x1, -36(x2)	# 1243
	ori		x4, x0, 4	# 1244
	lw		x5, -28(x2)	# 1244
	mul		x4, x5, x4	# 1244
	lw		x6, -24(x2)	# 1244
	add		x4, x6, x4	# 1244
	flw		f1, 0(x4)	# 1244
	lw		x4, -8(x2)	# 391
	lw		x7, 16(x4)	# 391
	ori		x8, x0, 4	# 396
	mul		x8, x5, x8	# 396
	add		x7, x7, x8	# 396
	flw		f2, 0(x7)	# 396
	fmul	f1, f1, f2	# 1244
	fsub	x31, x31, x31	# 4
	fsub	f1, x31, f1	# 4
	ori		x7, x0, 4	# 1245
	lw		x8, -20(x2)	# 1245
	mul		x7, x8, x7	# 1245
	add		x7, x6, x7	# 1245
	flw		f2, 0(x7)	# 1245
	lw		x7, 16(x4)	# 401
	ori		x9, x0, 4	# 406
	mul		x8, x8, x9	# 406
	add		x7, x7, x8	# 406
	flw		f3, 0(x7)	# 406
	fmul	f2, f2, f3	# 1245
	fsub	x31, x31, x31	# 4
	fsub	f2, x31, f2	# 4
	ori		x7, x0, 4	# 1246
	lw		x8, -16(x2)	# 1246
	mul		x7, x8, x7	# 1246
	add		x7, x6, x7	# 1246
	flw		f3, 0(x7)	# 1246
	lw		x7, 16(x4)	# 411
	ori		x9, x0, 4	# 416
	mul		x8, x8, x9	# 416
	add		x7, x7, x8	# 416
	flw		f4, 0(x7)	# 416
	fmul	f3, f3, f4	# 1246
	fsub	x31, x31, x31	# 4
	fsub	f3, x31, f3	# 4
	ori		x7, x0, 4	# 1248
	mul		x7, x5, x7	# 1248
	lw		x8, -32(x2)	# 1248
	add		x7, x8, x7	# 1248
	fsw		f0, 0(x7)	# 1248
	lw		x7, 12(x4)	# 382
	beq		x7, x5, beq.18197	# 1252
	ori		x7, x0, 1	# 1253
	ori		x9, x0, 2	# 1253
	ori		x10, x0, 4	# 1253
	mul		x9, x9, x10	# 1253
	add		x9, x6, x9	# 1253
	flw		f4, 0(x9)	# 1253
	lw		x9, 36(x4)	# 521
	ori		x10, x0, 1	# 526
	ori		x11, x0, 4	# 526
	mul		x10, x10, x11	# 526
	add		x9, x9, x10	# 526
	flw		f5, 0(x9)	# 526
	fmul	f4, f4, f5	# 1253
	ori		x9, x0, 1	# 1253
	ori		x10, x0, 4	# 1253
	mul		x9, x9, x10	# 1253
	add		x9, x6, x9	# 1253
	flw		f5, 0(x9)	# 1253
	lw		x9, 36(x4)	# 531
	ori		x10, x0, 2	# 536
	ori		x11, x0, 4	# 536
	mul		x10, x10, x11	# 536
	add		x9, x9, x10	# 536
	flw		f6, 0(x9)	# 536
	fmul	f5, f5, f6	# 1253
	fadd	f4, f4, f5	# 1253
	lui		x9, %hi(l.9436)	# 7
	ori		x9, x0, %lo(l.9436)	# 7
	flw		f5, 0(x9)	# 7
	fmul	f4, f4, f5	# 7
	fsub	f1, f1, f4	# 1253
	ori		x9, x0, 4	# 1253
	mul		x7, x7, x9	# 1253
	add		x7, x8, x7	# 1253
	fsw		f1, 0(x7)	# 1253
	ori		x7, x0, 2	# 1254
	ori		x9, x0, 2	# 1254
	ori		x10, x0, 4	# 1254
	mul		x9, x9, x10	# 1254
	add		x9, x6, x9	# 1254
	flw		f1, 0(x9)	# 1254
	lw		x9, 36(x4)	# 511
	addi	x10, x0, 0	# 516
	ori		x11, x0, 4	# 516
	mul		x10, x10, x11	# 516
	add		x9, x9, x10	# 516
	flw		f4, 0(x9)	# 516
	fmul	f1, f1, f4	# 1254
	addi	x9, x0, 0	# 1254
	ori		x10, x0, 4	# 1254
	mul		x9, x9, x10	# 1254
	add		x9, x6, x9	# 1254
	flw		f4, 0(x9)	# 1254
	lw		x9, 36(x4)	# 531
	ori		x10, x0, 2	# 536
	ori		x11, x0, 4	# 536
	mul		x10, x10, x11	# 536
	add		x9, x9, x10	# 536
	flw		f5, 0(x9)	# 536
	fmul	f4, f4, f5	# 1254
	fadd	f1, f1, f4	# 1254
	lui		x9, %hi(l.9436)	# 7
	ori		x9, x0, %lo(l.9436)	# 7
	flw		f4, 0(x9)	# 7
	fmul	f1, f1, f4	# 7
	fsub	f1, f2, f1	# 1254
	ori		x9, x0, 4	# 1254
	mul		x7, x7, x9	# 1254
	add		x7, x8, x7	# 1254
	fsw		f1, 0(x7)	# 1254
	ori		x7, x0, 3	# 1255
	ori		x9, x0, 1	# 1255
	ori		x10, x0, 4	# 1255
	mul		x9, x9, x10	# 1255
	add		x9, x6, x9	# 1255
	flw		f1, 0(x9)	# 1255
	lw		x9, 36(x4)	# 511
	addi	x10, x0, 0	# 516
	ori		x11, x0, 4	# 516
	mul		x10, x10, x11	# 516
	add		x9, x9, x10	# 516
	flw		f2, 0(x9)	# 516
	fmul	f1, f1, f2	# 1255
	addi	x9, x0, 0	# 1255
	ori		x10, x0, 4	# 1255
	mul		x9, x9, x10	# 1255
	add		x6, x6, x9	# 1255
	flw		f2, 0(x6)	# 1255
	lw		x4, 36(x4)	# 521
	ori		x6, x0, 1	# 526
	ori		x9, x0, 4	# 526
	mul		x6, x6, x9	# 526
	add		x4, x4, x6	# 526
	flw		f4, 0(x4)	# 526
	fmul	f2, f2, f4	# 1255
	fadd	f1, f1, f2	# 1255
	lui		x4, %hi(l.9436)	# 7
	ori		x4, x0, %lo(l.9436)	# 7
	flw		f2, 0(x4)	# 7
	fmul	f1, f1, f2	# 7
	fsub	f1, f3, f1	# 1255
	ori		x4, x0, 4	# 1255
	mul		x4, x7, x4	# 1255
	add		x4, x8, x4	# 1255
	fsw		f1, 0(x4)	# 1255
	jal		x0, beq_cont.18196	# 1252
beq.18197:
	ori		x4, x0, 1	# 1257
	ori		x6, x0, 4	# 1257
	mul		x4, x4, x6	# 1257
	add		x4, x8, x4	# 1257
	fsw		f1, 0(x4)	# 1257
	ori		x4, x0, 2	# 1258
	ori		x6, x0, 4	# 1258
	mul		x4, x4, x6	# 1258
	add		x4, x8, x4	# 1258
	fsw		f2, 0(x4)	# 1258
	ori		x4, x0, 3	# 1259
	ori		x6, x0, 4	# 1259
	mul		x4, x4, x6	# 1259
	add		x4, x8, x4	# 1259
	fsw		f3, 0(x4)	# 1259
beq_cont.18196:
	flw		f1, 0(x2)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.18199	# 1
	ori		x4, x0, 1	# 1
	jal		x0, feq_cont.18198	# 1
feq_else.18199:
	addi	x4, x0, 0	# 1
feq_cont.18198:
	beq		x4, x5, beq.18201	# 1261
	jal		x0, beq_cont.18200	# 1261
beq.18201:
	ori		x4, x0, 4	# 1262
	lui		x5, %hi(l.9419)	# 1262
	ori		x5, x0, %lo(l.9419)	# 1262
	flw		f1, 0(x5)	# 1262
	fdiv	f0, f1, f0	# 1262
	ori		x5, x0, 4	# 1262
	mul		x4, x4, x5	# 1262
	add		x4, x8, x4	# 1262
	fsw		f0, 0(x4)	# 1262
beq_cont.18200:
	addi	x4, x8, 0	# 1264
	jalr	x0, x1, 0	# 1264
iter_setup_dirvec_constants.2777:
	lw		x6, 24(x27)	# 1270
	lw		x7, 20(x27)	# 1270
	lw		x8, 16(x27)	# 1270
	lw		x9, 12(x27)	# 1270
	lw		x10, 8(x27)	# 1270
	lw		x11, 4(x27)	# 1270
	ble		x10, x5, ble.18202	# 1270
	jalr	x0, x1, 0	# 1283
ble.18202:
	ori		x10, x0, 4	# 1271
	mul		x10, x5, x10	# 1271
	add		x9, x9, x10	# 1271
	lw		x9, 0(x9)	# 1271
	lw		x10, 4(x4)	# 645
	lw		x12, 0(x4)	# 639
	lw		x13, 4(x9)	# 353
	sw		x4, 0(x2)	# 1275
	sw		x27, -4(x2)	# 1275
	sw		x11, -8(x2)	# 1275
	beq		x13, x11, beq.18205	# 1275
	ori		x8, x0, 2	# 1277
	beq		x13, x8, beq.18207	# 1277
	sw		x10, -12(x2)	# 1280
	sw		x5, -16(x2)	# 1280
	addi	x5, x9, 0
	addi	x4, x12, 0
	addi	x27, x7, 0
	sw		x1, -20(x2)	# 1280
	addi	x2, x2, -24	# 1280
	lw		x31, 0(x27)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 24	# 1280
	lw		x1, -20(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -16(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -12(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.18206	# 1277
beq.18207:
	sw		x10, -12(x2)	# 1278
	sw		x5, -16(x2)	# 1278
	addi	x5, x9, 0
	addi	x4, x12, 0
	addi	x27, x6, 0
	sw		x1, -20(x2)	# 1278
	addi	x2, x2, -24	# 1278
	lw		x31, 0(x27)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 24	# 1278
	lw		x1, -20(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -16(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -12(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.18206:
	jal		x0, beq_cont.18204	# 1275
beq.18205:
	sw		x10, -12(x2)	# 1276
	sw		x5, -16(x2)	# 1276
	addi	x5, x9, 0
	addi	x4, x12, 0
	addi	x27, x8, 0
	sw		x1, -20(x2)	# 1276
	addi	x2, x2, -24	# 1276
	lw		x31, 0(x27)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 24	# 1276
	lw		x1, -20(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -16(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -12(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.18204:
	lw		x4, -8(x2)	# 1282
	sub		x5, x6, x4	# 1282
	lw		x4, 0(x2)	# 1282
	lw		x27, -4(x2)	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x0, x31, 0	# 1282
setup_startp_constants.2782:
	lw		x6, 20(x27)	# 1295
	lw		x7, 16(x27)	# 1295
	lw		x8, 12(x27)	# 1295
	lw		x9, 8(x27)	# 1295
	lw		x10, 4(x27)	# 1295
	ble		x9, x5, ble.18208	# 1295
	jalr	x0, x1, 0	# 1310
ble.18208:
	ori		x11, x0, 4	# 1296
	mul		x11, x5, x11	# 1296
	add		x7, x7, x11	# 1296
	lw		x7, 0(x7)	# 1296
	lw		x11, 40(x7)	# 548
	lw		x12, 4(x7)	# 353
	ori		x13, x0, 4	# 1299
	mul		x13, x9, x13	# 1299
	add		x13, x4, x13	# 1299
	flw		f0, 0(x13)	# 1299
	lw		x13, 20(x7)	# 431
	ori		x14, x0, 4	# 436
	mul		x14, x9, x14	# 436
	add		x13, x13, x14	# 436
	flw		f1, 0(x13)	# 436
	fsub	f0, f0, f1	# 1299
	ori		x13, x0, 4	# 1299
	mul		x13, x9, x13	# 1299
	add		x13, x11, x13	# 1299
	fsw		f0, 0(x13)	# 1299
	ori		x13, x0, 4	# 1300
	mul		x13, x10, x13	# 1300
	add		x13, x4, x13	# 1300
	flw		f0, 0(x13)	# 1300
	lw		x13, 20(x7)	# 441
	ori		x14, x0, 4	# 446
	mul		x14, x10, x14	# 446
	add		x13, x13, x14	# 446
	flw		f1, 0(x13)	# 446
	fsub	f0, f0, f1	# 1300
	ori		x13, x0, 4	# 1300
	mul		x13, x10, x13	# 1300
	add		x13, x11, x13	# 1300
	fsw		f0, 0(x13)	# 1300
	ori		x13, x0, 4	# 1301
	mul		x13, x8, x13	# 1301
	add		x13, x4, x13	# 1301
	flw		f0, 0(x13)	# 1301
	lw		x13, 20(x7)	# 451
	ori		x14, x0, 4	# 456
	mul		x14, x8, x14	# 456
	add		x13, x13, x14	# 456
	flw		f1, 0(x13)	# 456
	fsub	f0, f0, f1	# 1301
	ori		x13, x0, 4	# 1301
	mul		x13, x8, x13	# 1301
	add		x13, x11, x13	# 1301
	fsw		f0, 0(x13)	# 1301
	sw		x4, 0(x2)	# 1302
	sw		x27, -4(x2)	# 1302
	sw		x10, -8(x2)	# 1302
	sw		x5, -12(x2)	# 1302
	beq		x12, x8, beq.18211	# 1302
	ori		x8, x0, 2	# 1305
	ble		x12, x8, ble.18213	# 1305
	addi	x8, x0, 0	# 1306
	ori		x9, x0, 4	# 1306
	mul		x8, x8, x9	# 1306
	add		x8, x11, x8	# 1306
	flw		f0, 0(x8)	# 1306
	ori		x8, x0, 1	# 1306
	ori		x9, x0, 4	# 1306
	mul		x8, x8, x9	# 1306
	add		x8, x11, x8	# 1306
	flw		f1, 0(x8)	# 1306
	ori		x8, x0, 2	# 1306
	ori		x9, x0, 4	# 1306
	mul		x8, x8, x9	# 1306
	add		x8, x11, x8	# 1306
	flw		f2, 0(x8)	# 1306
	sw		x11, -16(x2)	# 1306
	sw		x12, -20(x2)	# 1306
	addi	x4, x7, 0
	addi	x27, x6, 0
	sw		x1, -24(x2)	# 1306
	addi	x2, x2, -28	# 1306
	lw		x31, 0(x27)	# 1306
	jalr	x1, x31, 0	# 1306
	addi	x2, x2, 28	# 1306
	lw		x1, -24(x2)	# 1306
	ori		x4, x0, 3	# 1307
	ori		x5, x0, 3	# 1307
	lw		x6, -20(x2)	# 1307
	beq		x6, x5, beq.18215	# 1307
	jal		x0, beq_cont.18214	# 1307
beq.18215:
	lui		x5, %hi(l.9419)	# 1307
	ori		x5, x0, %lo(l.9419)	# 1307
	flw		f1, 0(x5)	# 1307
	fsub	f0, f0, f1	# 1307
beq_cont.18214:
	ori		x5, x0, 4	# 1307
	mul		x4, x4, x5	# 1307
	lw		x5, -16(x2)	# 1307
	add		x4, x5, x4	# 1307
	fsw		f0, 0(x4)	# 1307
	jal		x0, ble_cont.18212	# 1305
ble.18213:
ble_cont.18212:
	jal		x0, beq_cont.18210	# 1302
beq.18211:
	ori		x6, x0, 3	# 1303
	lw		x7, 16(x7)	# 421
	addi	x12, x0, 0	# 1304
	ori		x13, x0, 4	# 1304
	mul		x12, x12, x13	# 1304
	add		x12, x11, x12	# 1304
	flw		f0, 0(x12)	# 1304
	ori		x12, x0, 1	# 1304
	ori		x13, x0, 4	# 1304
	mul		x12, x12, x13	# 1304
	add		x12, x11, x12	# 1304
	flw		f1, 0(x12)	# 1304
	ori		x12, x0, 2	# 1304
	ori		x13, x0, 4	# 1304
	mul		x12, x12, x13	# 1304
	add		x12, x11, x12	# 1304
	flw		f2, 0(x12)	# 1304
	ori		x12, x0, 4	# 297
	mul		x9, x9, x12	# 297
	add		x9, x7, x9	# 297
	flw		f3, 0(x9)	# 297
	fmul	f0, f3, f0	# 297
	ori		x9, x0, 4	# 297
	mul		x9, x10, x9	# 297
	add		x9, x7, x9	# 297
	flw		f3, 0(x9)	# 297
	fmul	f1, f3, f1	# 297
	fadd	f0, f0, f1	# 297
	ori		x9, x0, 4	# 297
	mul		x8, x8, x9	# 297
	add		x7, x7, x8	# 297
	flw		f1, 0(x7)	# 297
	fmul	f1, f1, f2	# 297
	fadd	f0, f0, f1	# 297
	ori		x7, x0, 4	# 1303
	mul		x6, x6, x7	# 1303
	add		x6, x11, x6	# 1303
	fsw		f0, 0(x6)	# 1303
beq_cont.18210:
	lw		x4, -8(x2)	# 1309
	lw		x5, -12(x2)	# 1309
	sub		x5, x5, x4	# 1309
	lw		x4, 0(x2)	# 1309
	lw		x27, -4(x2)	# 1309
	lw		x31, 0(x27)	# 1309
	jalr	x0, x31, 0	# 1309
is_rect_outside.2787:
	lw		x5, 16(x27)	# 1327
	lw		x6, 12(x27)	# 1327
	lw		x7, 8(x27)	# 1327
	flw		f3, 4(x27)	# 5
	fle		x31, f0, f3	# 5
	beq		x31, x0, fle_else.18217	# 5
	fsub	x31, x31, x31	# 5
	fsub	f0, x31, f0	# 5
	jal		x0, fle_cont.18216	# 5
fle_else.18217:
fle_cont.18216:
	lw		x8, 16(x4)	# 391
	ori		x9, x0, 4	# 396
	mul		x9, x6, x9	# 396
	add		x8, x8, x9	# 396
	flw		f4, 0(x8)	# 396
	fle		x31, f4, f0	# 6
	beq		x31, x0, fle_else.18219	# 6
	addi	x8, x0, 0	# 6
	jal		x0, fle_cont.18218	# 6
fle_else.18219:
	ori		x8, x0, 1	# 6
fle_cont.18218:
	beq		x8, x6, beq.18221	# 1327
	fle		x31, f1, f3	# 5
	beq		x31, x0, fle_else.18223	# 5
	fsub	f0, f0, f0	# 5
	fsub	f0, f0, f1	# 5
	jal		x0, fle_cont.18222	# 5
fle_else.18223:
	fsub	f0, f0, f0	# 5
	fadd	f0, f0, f1	# 5
fle_cont.18222:
	lw		x8, 16(x4)	# 401
	ori		x9, x0, 4	# 406
	mul		x7, x7, x9	# 406
	add		x7, x8, x7	# 406
	flw		f1, 0(x7)	# 406
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.18225	# 6
	addi	x7, x0, 0	# 6
	jal		x0, fle_cont.18224	# 6
fle_else.18225:
	ori		x7, x0, 1	# 6
fle_cont.18224:
	beq		x7, x6, beq.18227	# 1328
	fle		x31, f2, f3	# 5
	beq		x31, x0, fle_else.18229	# 5
	fsub	f0, f0, f0	# 5
	fsub	f0, f0, f2	# 5
	jal		x0, fle_cont.18228	# 5
fle_else.18229:
	fsub	f0, f0, f0	# 5
	fadd	f0, f0, f2	# 5
fle_cont.18228:
	lw		x7, 16(x4)	# 411
	ori		x8, x0, 4	# 416
	mul		x5, x5, x8	# 416
	add		x5, x7, x5	# 416
	flw		f1, 0(x5)	# 416
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.18231	# 6
	addi	x5, x0, 0	# 6
	jal		x0, fle_cont.18230	# 6
fle_else.18231:
	ori		x5, x0, 1	# 6
fle_cont.18230:
	jal		x0, beq_cont.18226	# 1328
beq.18227:
	addi	x5, x0, 0	# 1330
beq_cont.18226:
	jal		x0, beq_cont.18220	# 1327
beq.18221:
	addi	x5, x0, 0	# 1331
beq_cont.18220:
	beq		x5, x6, beq.18232	# 1326
	lw		x4, 24(x4)	# 373
	jalr	x0, x1, 0	# 377
beq.18232:
	lw		x4, 24(x4)	# 373
	beq		x4, x6, beq.18233	# 1332
	addi	x4, x0, 0	# 1332
	jalr	x0, x1, 0	# 1332
beq.18233:
	ori		x4, x0, 1	# 1332
	jalr	x0, x1, 0	# 1332
is_second_outside.2797:
	lw		x5, 16(x27)	# 1343
	lw		x6, 12(x27)	# 1343
	lw		x7, 8(x27)	# 1343
	flw		f3, 4(x27)	# 1343
	sw		x7, 0(x2)	# 1343
	fsw		f3, -8(x2)	# 1343
	sw		x6, -16(x2)	# 1343
	sw		x4, -20(x2)	# 1343
	addi	x27, x5, 0
	sw		x1, -24(x2)	# 1343
	addi	x2, x2, -28	# 1343
	lw		x31, 0(x27)	# 1343
	jalr	x1, x31, 0	# 1343
	addi	x2, x2, 28	# 1343
	lw		x1, -24(x2)	# 1343
	lw		x4, -20(x2)	# 353
	lw		x5, 4(x4)	# 353
	lw		x6, -16(x2)	# 1344
	beq		x5, x6, beq.18236	# 1344
	jal		x0, beq_cont.18235	# 1344
beq.18236:
	lui		x5, %hi(l.9419)	# 1344
	ori		x5, x0, %lo(l.9419)	# 1344
	flw		f1, 0(x5)	# 1344
	fsub	f0, f0, f1	# 1344
beq_cont.18235:
	lw		x4, 24(x4)	# 373
	flw		f1, -8(x2)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.18238	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.18237	# 3
fle_else.18238:
	ori		x5, x0, 1	# 3
fle_cont.18237:
	lw		x6, 0(x2)	# 204
	beq		x4, x6, beq.18240	# 204
	beq		x5, x6, beq.18242	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.18241	# 204
beq.18242:
	ori		x4, x0, 1	# 204
beq_cont.18241:
	jal		x0, beq_cont.18239	# 204
beq.18240:
	addi	x4, x5, 0	# 204
beq_cont.18239:
	beq		x4, x6, beq.18243	# 1345
	addi	x4, x0, 0	# 1345
	jalr	x0, x1, 0	# 1345
beq.18243:
	ori		x4, x0, 1	# 1345
	jalr	x0, x1, 0	# 1345
is_outside.2802:
	lw		x5, 24(x27)	# 431
	lw		x6, 20(x27)	# 431
	lw		x7, 16(x27)	# 431
	lw		x8, 12(x27)	# 431
	lw		x9, 8(x27)	# 431
	flw		f3, 4(x27)	# 431
	lw		x10, 20(x4)	# 431
	ori		x11, x0, 4	# 436
	mul		x11, x8, x11	# 436
	add		x10, x10, x11	# 436
	flw		f4, 0(x10)	# 436
	fsub	f0, f0, f4	# 1350
	lw		x10, 20(x4)	# 441
	ori		x11, x0, 4	# 446
	mul		x11, x9, x11	# 446
	add		x10, x10, x11	# 446
	flw		f4, 0(x10)	# 446
	fsub	f1, f1, f4	# 1351
	lw		x10, 20(x4)	# 451
	ori		x11, x0, 4	# 456
	mul		x11, x7, x11	# 456
	add		x10, x10, x11	# 456
	flw		f4, 0(x10)	# 456
	fsub	f2, f2, f4	# 1352
	lw		x10, 4(x4)	# 353
	beq		x10, x9, beq.18244	# 1354
	beq		x10, x7, beq.18245	# 1356
	addi	x27, x5, 0
	lw		x31, 0(x27)	# 1359
	jalr	x0, x31, 0	# 1359
beq.18245:
	lw		x5, 16(x4)	# 421
	ori		x6, x0, 4	# 297
	mul		x6, x8, x6	# 297
	add		x6, x5, x6	# 297
	flw		f4, 0(x6)	# 297
	fmul	f0, f4, f0	# 297
	ori		x6, x0, 4	# 297
	mul		x6, x9, x6	# 297
	add		x6, x5, x6	# 297
	flw		f4, 0(x6)	# 297
	fmul	f1, f4, f1	# 297
	fadd	f0, f0, f1	# 297
	ori		x6, x0, 4	# 297
	mul		x6, x7, x6	# 297
	add		x5, x5, x6	# 297
	flw		f1, 0(x5)	# 297
	fmul	f1, f1, f2	# 297
	fadd	f0, f0, f1	# 297
	lw		x4, 24(x4)	# 373
	fle		x31, f3, f0	# 3
	beq		x31, x0, fle_else.18247	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.18246	# 3
fle_else.18247:
	ori		x5, x0, 1	# 3
fle_cont.18246:
	beq		x4, x8, beq.18249	# 204
	beq		x5, x8, beq.18251	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.18250	# 204
beq.18251:
	ori		x4, x0, 1	# 204
beq_cont.18250:
	jal		x0, beq_cont.18248	# 204
beq.18249:
	addi	x4, x5, 0	# 204
beq_cont.18248:
	beq		x4, x8, beq.18252	# 1338
	addi	x4, x0, 0	# 1338
	jalr	x0, x1, 0	# 1338
beq.18252:
	ori		x4, x0, 1	# 1338
	jalr	x0, x1, 0	# 1338
beq.18244:
	addi	x27, x6, 0
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
	beq		x11, x8, beq.18253	# 1365
	ori		x12, x0, 4	# 1368
	mul		x11, x11, x12	# 1368
	add		x11, x6, x11	# 1368
	lw		x11, 0(x11)	# 1368
	sw		x27, 0(x2)	# 1368
	fsw		f2, -8(x2)	# 1368
	fsw		f1, -16(x2)	# 1368
	fsw		f0, -24(x2)	# 1368
	sw		x7, -32(x2)	# 1368
	sw		x6, -36(x2)	# 1368
	sw		x8, -40(x2)	# 1368
	sw		x5, -44(x2)	# 1368
	sw		x10, -48(x2)	# 1368
	sw		x4, -52(x2)	# 1368
	sw		x9, -56(x2)	# 1368
	addi	x4, x11, 0
	addi	x27, x7, 0
	sw		x1, -60(x2)	# 1368
	addi	x2, x2, -64	# 1368
	lw		x31, 0(x27)	# 1368
	jalr	x1, x31, 0	# 1368
	addi	x2, x2, 64	# 1368
	lw		x1, -60(x2)	# 1368
	lw		x5, -56(x2)	# 1368
	beq		x4, x5, beq.18255	# 1368
	addi	x4, x0, 0	# 1369
	jalr	x0, x1, 0	# 1369
beq.18255:
	lw		x4, -48(x2)	# 1371
	lw		x6, -52(x2)	# 1371
	add		x6, x6, x4	# 1371
	ori		x7, x0, 4	# 1364
	mul		x7, x6, x7	# 1364
	lw		x8, -44(x2)	# 1364
	add		x7, x8, x7	# 1364
	lw		x7, 0(x7)	# 1364
	lw		x9, -40(x2)	# 1365
	beq		x7, x9, beq.18256	# 1365
	ori		x9, x0, 4	# 1368
	mul		x7, x7, x9	# 1368
	lw		x9, -36(x2)	# 1368
	add		x7, x9, x7	# 1368
	lw		x7, 0(x7)	# 1368
	flw		f0, -24(x2)	# 1368
	flw		f1, -16(x2)	# 1368
	flw		f2, -8(x2)	# 1368
	lw		x27, -32(x2)	# 1368
	sw		x6, -60(x2)	# 1368
	addi	x4, x7, 0
	sw		x1, -64(x2)	# 1368
	addi	x2, x2, -68	# 1368
	lw		x31, 0(x27)	# 1368
	jalr	x1, x31, 0	# 1368
	addi	x2, x2, 68	# 1368
	lw		x1, -64(x2)	# 1368
	lw		x5, -56(x2)	# 1368
	beq		x4, x5, beq.18257	# 1368
	addi	x4, x0, 0	# 1369
	jalr	x0, x1, 0	# 1369
beq.18257:
	lw		x4, -48(x2)	# 1371
	lw		x5, -60(x2)	# 1371
	add		x4, x5, x4	# 1371
	flw		f0, -24(x2)	# 1371
	flw		f1, -16(x2)	# 1371
	flw		f2, -8(x2)	# 1371
	lw		x5, -44(x2)	# 1371
	lw		x27, 0(x2)	# 1371
	lw		x31, 0(x27)	# 1371
	jalr	x0, x31, 0	# 1371
beq.18256:
	ori		x4, x0, 1	# 1366
	jalr	x0, x1, 0	# 1366
beq.18253:
	ori		x4, x0, 1	# 1366
	jalr	x0, x1, 0	# 1366
shadow_check_and_group.2813:
	lw		x6, 48(x27)	# 1384
	lw		x7, 44(x27)	# 1384
	lw		x8, 40(x27)	# 1384
	lw		x9, 36(x27)	# 1384
	lw		x10, 32(x27)	# 1384
	lw		x11, 28(x27)	# 1384
	lw		x12, 24(x27)	# 1384
	lw		x13, 20(x27)	# 1384
	lw		x14, 16(x27)	# 1384
	lw		x15, 12(x27)	# 1384
	lw		x16, 8(x27)	# 1384
	lw		x17, 4(x27)	# 1384
	ori		x18, x0, 4	# 1384
	mul		x18, x4, x18	# 1384
	add		x18, x5, x18	# 1384
	lw		x18, 0(x18)	# 1384
	beq		x18, x15, beq.18258	# 1384
	sw		x13, 0(x2)	# 1388
	sw		x11, -4(x2)	# 1388
	sw		x15, -8(x2)	# 1388
	sw		x14, -12(x2)	# 1388
	sw		x12, -16(x2)	# 1388
	sw		x10, -20(x2)	# 1388
	sw		x5, -24(x2)	# 1388
	sw		x27, -28(x2)	# 1388
	sw		x17, -32(x2)	# 1388
	sw		x4, -36(x2)	# 1388
	sw		x8, -40(x2)	# 1388
	sw		x18, -44(x2)	# 1388
	sw		x7, -48(x2)	# 1388
	sw		x16, -52(x2)	# 1388
	addi	x5, x9, 0
	addi	x4, x18, 0
	addi	x27, x6, 0
	addi	x6, x12, 0
	sw		x1, -56(x2)	# 1388
	addi	x2, x2, -60	# 1388
	lw		x31, 0(x27)	# 1388
	jalr	x1, x31, 0	# 1388
	addi	x2, x2, 60	# 1388
	lw		x1, -56(x2)	# 1388
	ori		x5, x0, 4	# 1389
	lw		x6, -52(x2)	# 1389
	mul		x5, x6, x5	# 1389
	lw		x7, -48(x2)	# 1389
	add		x5, x7, x5	# 1389
	flw		f0, 0(x5)	# 1389
	beq		x4, x6, beq.18260	# 1390
	lui		x4, %hi(l.10497)	# 1390
	ori		x4, x0, %lo(l.10497)	# 1390
	flw		f1, 0(x4)	# 1390
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.18262	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18261	# 6
fle_else.18262:
	ori		x4, x0, 1	# 6
fle_cont.18261:
	jal		x0, beq_cont.18259	# 1390
beq.18260:
	addi	x4, x0, 0	# 1390
beq_cont.18259:
	beq		x4, x6, beq.18263	# 1390
	lui		x4, %hi(l.10499)	# 1393
	ori		x4, x0, %lo(l.10499)	# 1393
	flw		f1, 0(x4)	# 1393
	fadd	f0, f0, f1	# 1393
	ori		x4, x0, 4	# 1394
	mul		x4, x6, x4	# 1394
	lw		x5, -20(x2)	# 1394
	add		x4, x5, x4	# 1394
	flw		f1, 0(x4)	# 1394
	fmul	f1, f1, f0	# 1394
	ori		x4, x0, 4	# 1394
	mul		x4, x6, x4	# 1394
	lw		x7, -16(x2)	# 1394
	add		x4, x7, x4	# 1394
	flw		f2, 0(x4)	# 1394
	fadd	f1, f1, f2	# 1394
	ori		x4, x0, 4	# 1395
	lw		x8, -32(x2)	# 1395
	mul		x4, x8, x4	# 1395
	add		x4, x5, x4	# 1395
	flw		f2, 0(x4)	# 1395
	fmul	f2, f2, f0	# 1395
	ori		x4, x0, 4	# 1395
	mul		x4, x8, x4	# 1395
	add		x4, x7, x4	# 1395
	flw		f3, 0(x4)	# 1395
	fadd	f2, f2, f3	# 1395
	ori		x4, x0, 4	# 1396
	lw		x9, -12(x2)	# 1396
	mul		x4, x9, x4	# 1396
	add		x4, x5, x4	# 1396
	flw		f3, 0(x4)	# 1396
	fmul	f0, f3, f0	# 1396
	ori		x4, x0, 4	# 1396
	mul		x4, x9, x4	# 1396
	add		x4, x7, x4	# 1396
	flw		f3, 0(x4)	# 1396
	fadd	f0, f0, f3	# 1396
	ori		x4, x0, 4	# 1364
	mul		x4, x6, x4	# 1364
	lw		x5, -24(x2)	# 1364
	add		x4, x5, x4	# 1364
	lw		x4, 0(x4)	# 1364
	lw		x7, -8(x2)	# 1365
	beq		x4, x7, beq.18265	# 1365
	ori		x7, x0, 4	# 1368
	mul		x4, x4, x7	# 1368
	lw		x7, -40(x2)	# 1368
	add		x4, x7, x4	# 1368
	lw		x4, 0(x4)	# 1368
	lw		x27, -4(x2)	# 1368
	fsw		f0, -56(x2)	# 1368
	fsw		f2, -64(x2)	# 1368
	fsw		f1, -72(x2)	# 1368
	fsub	f31, f31, f31
	fadd	f31, f31, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f31
	sw		x1, -80(x2)	# 1368
	addi	x2, x2, -84	# 1368
	lw		x31, 0(x27)	# 1368
	jalr	x1, x31, 0	# 1368
	addi	x2, x2, 84	# 1368
	lw		x1, -80(x2)	# 1368
	lw		x5, -52(x2)	# 1368
	beq		x4, x5, beq.18267	# 1368
	addi	x4, x0, 0	# 1369
	jal		x0, beq_cont.18266	# 1368
beq.18267:
	ori		x4, x0, 1	# 1371
	flw		f0, -72(x2)	# 1371
	flw		f1, -64(x2)	# 1371
	flw		f2, -56(x2)	# 1371
	lw		x6, -24(x2)	# 1371
	lw		x27, 0(x2)	# 1371
	addi	x5, x6, 0
	sw		x1, -80(x2)	# 1371
	addi	x2, x2, -84	# 1371
	lw		x31, 0(x27)	# 1371
	jalr	x1, x31, 0	# 1371
	addi	x2, x2, 84	# 1371
	lw		x1, -80(x2)	# 1371
beq_cont.18266:
	jal		x0, beq_cont.18264	# 1365
beq.18265:
	ori		x4, x0, 1	# 1366
beq_cont.18264:
	lw		x5, -52(x2)	# 1397
	beq		x4, x5, beq.18268	# 1397
	ori		x4, x0, 1	# 1398
	jalr	x0, x1, 0	# 1398
beq.18268:
	lw		x4, -32(x2)	# 1400
	lw		x5, -36(x2)	# 1400
	add		x4, x5, x4	# 1400
	lw		x5, -24(x2)	# 1400
	lw		x27, -28(x2)	# 1400
	lw		x31, 0(x27)	# 1400
	jalr	x0, x31, 0	# 1400
beq.18263:
	ori		x4, x0, 4	# 1406
	lw		x5, -44(x2)	# 1406
	mul		x4, x5, x4	# 1406
	lw		x5, -40(x2)	# 1406
	add		x4, x5, x4	# 1406
	lw		x4, 0(x4)	# 1406
	lw		x4, 24(x4)	# 373
	beq		x4, x6, beq.18269	# 1406
	lw		x4, -32(x2)	# 1407
	lw		x5, -36(x2)	# 1407
	add		x4, x5, x4	# 1407
	lw		x5, -24(x2)	# 1407
	lw		x27, -28(x2)	# 1407
	lw		x31, 0(x27)	# 1407
	jalr	x0, x31, 0	# 1407
beq.18269:
	addi	x4, x0, 0	# 1409
	jalr	x0, x1, 0	# 1409
beq.18258:
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
	beq		x11, x8, beq.18270	# 1415
	ori		x12, x0, 4	# 1418
	mul		x11, x11, x12	# 1418
	add		x11, x7, x11	# 1418
	lw		x11, 0(x11)	# 1418
	sw		x27, 0(x2)	# 1419
	sw		x6, -4(x2)	# 1419
	sw		x7, -8(x2)	# 1419
	sw		x8, -12(x2)	# 1419
	sw		x5, -16(x2)	# 1419
	sw		x10, -20(x2)	# 1419
	sw		x4, -24(x2)	# 1419
	sw		x9, -28(x2)	# 1419
	addi	x5, x11, 0
	addi	x4, x9, 0
	addi	x27, x6, 0
	sw		x1, -32(x2)	# 1419
	addi	x2, x2, -36	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 36	# 1419
	lw		x1, -32(x2)	# 1419
	lw		x5, -28(x2)	# 1420
	beq		x4, x5, beq.18271	# 1420
	ori		x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.18271:
	lw		x4, -20(x2)	# 1423
	lw		x6, -24(x2)	# 1423
	add		x6, x6, x4	# 1423
	ori		x7, x0, 4	# 1414
	mul		x7, x6, x7	# 1414
	lw		x8, -16(x2)	# 1414
	add		x7, x8, x7	# 1414
	lw		x7, 0(x7)	# 1414
	lw		x9, -12(x2)	# 1415
	beq		x7, x9, beq.18272	# 1415
	ori		x9, x0, 4	# 1418
	mul		x7, x7, x9	# 1418
	lw		x9, -8(x2)	# 1418
	add		x7, x9, x7	# 1418
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
	lw		x5, -28(x2)	# 1420
	beq		x4, x5, beq.18273	# 1420
	ori		x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.18273:
	lw		x4, -20(x2)	# 1423
	lw		x5, -32(x2)	# 1423
	add		x4, x5, x4	# 1423
	lw		x5, -16(x2)	# 1423
	lw		x27, 0(x2)	# 1423
	lw		x31, 0(x27)	# 1423
	jalr	x0, x31, 0	# 1423
beq.18272:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
beq.18270:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
shadow_check_one_or_matrix.2819:
	lw		x6, 40(x27)	# 1429
	lw		x7, 36(x27)	# 1429
	lw		x8, 32(x27)	# 1429
	lw		x9, 28(x27)	# 1429
	lw		x10, 24(x27)	# 1429
	lw		x11, 20(x27)	# 1429
	lw		x12, 16(x27)	# 1429
	lw		x13, 12(x27)	# 1429
	lw		x14, 8(x27)	# 1429
	lw		x15, 4(x27)	# 1429
	ori		x16, x0, 4	# 1429
	mul		x16, x4, x16	# 1429
	add		x16, x5, x16	# 1429
	lw		x16, 0(x16)	# 1429
	ori		x17, x0, 4	# 1430
	mul		x17, x14, x17	# 1430
	add		x17, x16, x17	# 1430
	lw		x17, 0(x17)	# 1430
	beq		x17, x13, beq.18274	# 1431
	ori		x18, x0, 99	# 1435
	sw		x8, 0(x2)	# 1435
	sw		x9, -4(x2)	# 1435
	sw		x12, -8(x2)	# 1435
	sw		x13, -12(x2)	# 1435
	sw		x16, -16(x2)	# 1435
	sw		x5, -20(x2)	# 1435
	sw		x27, -24(x2)	# 1435
	sw		x15, -28(x2)	# 1435
	sw		x4, -32(x2)	# 1435
	sw		x14, -36(x2)	# 1435
	beq		x17, x18, beq.18276	# 1435
	sw		x7, -40(x2)	# 1438
	addi	x5, x10, 0
	addi	x4, x17, 0
	addi	x27, x6, 0
	addi	x6, x11, 0
	sw		x1, -44(x2)	# 1438
	addi	x2, x2, -48	# 1438
	lw		x31, 0(x27)	# 1438
	jalr	x1, x31, 0	# 1438
	addi	x2, x2, 48	# 1438
	lw		x1, -44(x2)	# 1438
	addi	x5, x0, 0	# 1441
	beq		x4, x5, beq.18278	# 1441
	addi	x4, x0, 0	# 1442
	ori		x5, x0, 4	# 1442
	mul		x4, x4, x5	# 1442
	lw		x5, -40(x2)	# 1442
	add		x4, x5, x4	# 1442
	flw		f0, 0(x4)	# 1442
	lui		x4, %hi(l.10549)	# 1442
	ori		x4, x0, %lo(l.10549)	# 1442
	flw		f1, 0(x4)	# 1442
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.18280	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18279	# 6
fle_else.18280:
	ori		x4, x0, 1	# 6
fle_cont.18279:
	addi	x5, x0, 0	# 1442
	beq		x4, x5, beq.18282	# 1442
	ori		x4, x0, 1	# 1443
	ori		x5, x0, 4	# 1414
	mul		x4, x4, x5	# 1414
	lw		x5, -16(x2)	# 1414
	add		x4, x5, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lw		x6, -12(x2)	# 1415
	beq		x4, x6, beq.18284	# 1415
	ori		x7, x0, 4	# 1418
	mul		x4, x4, x7	# 1418
	lw		x7, -8(x2)	# 1418
	add		x4, x7, x4	# 1418
	lw		x4, 0(x4)	# 1418
	lw		x8, -36(x2)	# 1419
	lw		x27, -4(x2)	# 1419
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -44(x2)	# 1419
	addi	x2, x2, -48	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 48	# 1419
	lw		x1, -44(x2)	# 1419
	lw		x5, -36(x2)	# 1420
	beq		x4, x5, beq.18286	# 1420
	ori		x4, x0, 1	# 1421
	jal		x0, beq_cont.18285	# 1420
beq.18286:
	ori		x4, x0, 2	# 1423
	lw		x6, -16(x2)	# 1423
	lw		x27, 0(x2)	# 1423
	addi	x5, x6, 0
	sw		x1, -44(x2)	# 1423
	addi	x2, x2, -48	# 1423
	lw		x31, 0(x27)	# 1423
	jalr	x1, x31, 0	# 1423
	addi	x2, x2, 48	# 1423
	lw		x1, -44(x2)	# 1423
beq_cont.18285:
	jal		x0, beq_cont.18283	# 1415
beq.18284:
	addi	x4, x0, 0	# 1416
beq_cont.18283:
	addi	x5, x0, 0	# 1443
	beq		x4, x5, beq.18288	# 1443
	ori		x4, x0, 1	# 1444
	jal		x0, beq_cont.18287	# 1443
beq.18288:
	addi	x4, x0, 0	# 1445
beq_cont.18287:
	jal		x0, beq_cont.18281	# 1442
beq.18282:
	addi	x4, x0, 0	# 1446
beq_cont.18281:
	jal		x0, beq_cont.18277	# 1441
beq.18278:
	addi	x4, x0, 0	# 1447
beq_cont.18277:
	jal		x0, beq_cont.18275	# 1435
beq.18276:
	ori		x4, x0, 1	# 1436
beq_cont.18275:
	lw		x5, -36(x2)	# 1434
	beq		x4, x5, beq.18289	# 1434
	ori		x4, x0, 4	# 1414
	lw		x6, -28(x2)	# 1414
	mul		x4, x6, x4	# 1414
	lw		x7, -16(x2)	# 1414
	add		x4, x7, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lw		x8, -12(x2)	# 1415
	beq		x4, x8, beq.18291	# 1415
	ori		x8, x0, 4	# 1418
	mul		x4, x4, x8	# 1418
	lw		x8, -8(x2)	# 1418
	add		x4, x8, x4	# 1418
	lw		x4, 0(x4)	# 1418
	lw		x27, -4(x2)	# 1419
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -44(x2)	# 1419
	addi	x2, x2, -48	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 48	# 1419
	lw		x1, -44(x2)	# 1419
	lw		x5, -36(x2)	# 1420
	beq		x4, x5, beq.18293	# 1420
	ori		x4, x0, 1	# 1421
	jal		x0, beq_cont.18292	# 1420
beq.18293:
	ori		x4, x0, 2	# 1423
	lw		x6, -16(x2)	# 1423
	lw		x27, 0(x2)	# 1423
	addi	x5, x6, 0
	sw		x1, -44(x2)	# 1423
	addi	x2, x2, -48	# 1423
	lw		x31, 0(x27)	# 1423
	jalr	x1, x31, 0	# 1423
	addi	x2, x2, 48	# 1423
	lw		x1, -44(x2)	# 1423
beq_cont.18292:
	jal		x0, beq_cont.18290	# 1415
beq.18291:
	addi	x4, x0, 0	# 1416
beq_cont.18290:
	lw		x5, -36(x2)	# 1449
	beq		x4, x5, beq.18294	# 1449
	ori		x4, x0, 1	# 1450
	jalr	x0, x1, 0	# 1450
beq.18294:
	lw		x4, -28(x2)	# 1452
	lw		x5, -32(x2)	# 1452
	add		x4, x5, x4	# 1452
	lw		x5, -20(x2)	# 1452
	lw		x27, -24(x2)	# 1452
	lw		x31, 0(x27)	# 1452
	jalr	x0, x31, 0	# 1452
beq.18289:
	lw		x4, -28(x2)	# 1454
	lw		x5, -32(x2)	# 1454
	add		x4, x5, x4	# 1454
	lw		x5, -20(x2)	# 1454
	lw		x27, -24(x2)	# 1454
	lw		x31, 0(x27)	# 1454
	jalr	x0, x31, 0	# 1454
beq.18274:
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
	beq		x20, x17, beq.18295	# 1466
	sw		x13, 0(x2)	# 1468
	sw		x15, -4(x2)	# 1468
	sw		x14, -8(x2)	# 1468
	sw		x16, -12(x2)	# 1468
	sw		x12, -16(x2)	# 1468
	sw		x17, -20(x2)	# 1468
	sw		x8, -24(x2)	# 1468
	sw		x7, -28(x2)	# 1468
	fsw		f0, -32(x2)	# 1468
	sw		x9, -40(x2)	# 1468
	sw		x6, -44(x2)	# 1468
	sw		x5, -48(x2)	# 1468
	sw		x27, -52(x2)	# 1468
	sw		x19, -56(x2)	# 1468
	sw		x4, -60(x2)	# 1468
	sw		x11, -64(x2)	# 1468
	sw		x20, -68(x2)	# 1468
	sw		x18, -72(x2)	# 1468
	addi	x5, x6, 0
	addi	x4, x20, 0
	addi	x27, x10, 0
	addi	x6, x8, 0
	sw		x1, -76(x2)	# 1468
	addi	x2, x2, -80	# 1468
	lw		x31, 0(x27)	# 1468
	jalr	x1, x31, 0	# 1468
	addi	x2, x2, 80	# 1468
	lw		x1, -76(x2)	# 1468
	lw		x5, -72(x2)	# 1469
	beq		x4, x5, beq.18296	# 1469
	ori		x6, x0, 4	# 1473
	mul		x6, x5, x6	# 1473
	lw		x7, -40(x2)	# 1473
	add		x6, x7, x6	# 1473
	flw		f0, 0(x6)	# 1473
	flw		f1, -32(x2)	# 6
	fle		x31, f0, f1	# 6
	beq		x31, x0, fle_else.18298	# 6
	addi	x6, x0, 0	# 6
	jal		x0, fle_cont.18297	# 6
fle_else.18298:
	ori		x6, x0, 1	# 6
fle_cont.18297:
	beq		x6, x5, beq.18300	# 1475
	addi	x6, x0, 0	# 1476
	ori		x7, x0, 4	# 1476
	mul		x6, x6, x7	# 1476
	lw		x7, -28(x2)	# 1476
	add		x6, x7, x6	# 1476
	flw		f1, 0(x6)	# 1476
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.18302	# 6
	addi	x6, x0, 0	# 6
	jal		x0, fle_cont.18301	# 6
fle_else.18302:
	ori		x6, x0, 1	# 6
fle_cont.18301:
	addi	x8, x0, 0	# 1476
	beq		x6, x8, beq.18304	# 1476
	lui		x6, %hi(l.10499)	# 1478
	ori		x6, x0, %lo(l.10499)	# 1478
	flw		f1, 0(x6)	# 1478
	fadd	f0, f0, f1	# 1478
	addi	x6, x0, 0	# 1479
	ori		x8, x0, 4	# 1479
	mul		x6, x6, x8	# 1479
	lw		x8, -44(x2)	# 1479
	add		x6, x8, x6	# 1479
	flw		f1, 0(x6)	# 1479
	fmul	f1, f1, f0	# 1479
	addi	x6, x0, 0	# 1479
	ori		x9, x0, 4	# 1479
	mul		x6, x6, x9	# 1479
	lw		x9, -24(x2)	# 1479
	add		x6, x9, x6	# 1479
	flw		f2, 0(x6)	# 1479
	fadd	f1, f1, f2	# 1479
	ori		x6, x0, 1	# 1480
	ori		x10, x0, 4	# 1480
	mul		x6, x6, x10	# 1480
	add		x6, x8, x6	# 1480
	flw		f2, 0(x6)	# 1480
	fmul	f2, f2, f0	# 1480
	ori		x6, x0, 1	# 1480
	ori		x10, x0, 4	# 1480
	mul		x6, x6, x10	# 1480
	add		x6, x9, x6	# 1480
	flw		f3, 0(x6)	# 1480
	fadd	f2, f2, f3	# 1480
	ori		x6, x0, 2	# 1481
	ori		x10, x0, 4	# 1481
	mul		x6, x6, x10	# 1481
	add		x6, x8, x6	# 1481
	flw		f3, 0(x6)	# 1481
	fmul	f3, f3, f0	# 1481
	ori		x6, x0, 2	# 1481
	ori		x10, x0, 4	# 1481
	mul		x6, x6, x10	# 1481
	add		x6, x9, x6	# 1481
	flw		f4, 0(x6)	# 1481
	fadd	f3, f3, f4	# 1481
	addi	x6, x0, 0	# 1482
	ori		x9, x0, 4	# 1364
	mul		x6, x6, x9	# 1364
	lw		x9, -48(x2)	# 1364
	add		x6, x9, x6	# 1364
	lw		x6, 0(x6)	# 1364
	lw		x10, -20(x2)	# 1365
	sw		x4, -76(x2)	# 1365
	fsw		f3, -80(x2)	# 1365
	fsw		f2, -88(x2)	# 1365
	fsw		f1, -96(x2)	# 1365
	fsw		f0, -104(x2)	# 1365
	beq		x6, x10, beq.18306	# 1365
	ori		x10, x0, 4	# 1368
	mul		x6, x6, x10	# 1368
	lw		x10, -64(x2)	# 1368
	add		x6, x10, x6	# 1368
	lw		x6, 0(x6)	# 1368
	lw		x27, -16(x2)	# 1368
	addi	x4, x6, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -112(x2)	# 1368
	addi	x2, x2, -116	# 1368
	lw		x31, 0(x27)	# 1368
	jalr	x1, x31, 0	# 1368
	addi	x2, x2, 116	# 1368
	lw		x1, -112(x2)	# 1368
	lw		x5, -72(x2)	# 1368
	beq		x4, x5, beq.18308	# 1368
	addi	x4, x0, 0	# 1369
	jal		x0, beq_cont.18307	# 1368
beq.18308:
	ori		x4, x0, 1	# 1371
	flw		f0, -96(x2)	# 1371
	flw		f1, -88(x2)	# 1371
	flw		f2, -80(x2)	# 1371
	lw		x5, -48(x2)	# 1371
	lw		x27, -12(x2)	# 1371
	sw		x1, -112(x2)	# 1371
	addi	x2, x2, -116	# 1371
	lw		x31, 0(x27)	# 1371
	jalr	x1, x31, 0	# 1371
	addi	x2, x2, 116	# 1371
	lw		x1, -112(x2)	# 1371
beq_cont.18307:
	jal		x0, beq_cont.18305	# 1365
beq.18306:
	ori		x4, x0, 1	# 1366
beq_cont.18305:
	addi	x5, x0, 0	# 1482
	beq		x4, x5, beq.18310	# 1482
	addi	x4, x0, 0	# 1484
	ori		x5, x0, 4	# 1484
	mul		x4, x4, x5	# 1484
	lw		x5, -28(x2)	# 1484
	add		x4, x5, x4	# 1484
	flw		f0, -104(x2)	# 1484
	fsw		f0, 0(x4)	# 1484
	addi	x4, x0, 0	# 240
	ori		x5, x0, 4	# 240
	mul		x4, x4, x5	# 240
	lw		x5, -8(x2)	# 240
	add		x4, x5, x4	# 240
	flw		f0, -96(x2)	# 240
	fsw		f0, 0(x4)	# 240
	ori		x4, x0, 1	# 241
	ori		x6, x0, 4	# 241
	mul		x4, x4, x6	# 241
	add		x4, x5, x4	# 241
	flw		f0, -88(x2)	# 241
	fsw		f0, 0(x4)	# 241
	ori		x4, x0, 2	# 242
	ori		x6, x0, 4	# 242
	mul		x4, x4, x6	# 242
	add		x4, x5, x4	# 242
	flw		f0, -80(x2)	# 242
	fsw		f0, 0(x4)	# 242
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
	jal		x0, beq_cont.18309	# 1482
beq.18310:
beq_cont.18309:
	jal		x0, beq_cont.18303	# 1476
beq.18304:
beq_cont.18303:
	jal		x0, beq_cont.18299	# 1475
beq.18300:
beq_cont.18299:
	lw		x4, -56(x2)	# 1493
	lw		x5, -60(x2)	# 1493
	add		x4, x5, x4	# 1493
	lw		x5, -48(x2)	# 1493
	lw		x6, -44(x2)	# 1493
	lw		x27, -52(x2)	# 1493
	lw		x31, 0(x27)	# 1493
	jalr	x0, x31, 0	# 1493
beq.18296:
	ori		x4, x0, 4	# 1497
	lw		x6, -68(x2)	# 1497
	mul		x4, x6, x4	# 1497
	lw		x6, -64(x2)	# 1497
	add		x4, x6, x4	# 1497
	lw		x4, 0(x4)	# 1497
	lw		x4, 24(x4)	# 373
	beq		x4, x5, beq.18311	# 1497
	lw		x4, -56(x2)	# 1498
	lw		x5, -60(x2)	# 1498
	add		x4, x5, x4	# 1498
	lw		x5, -48(x2)	# 1498
	lw		x6, -44(x2)	# 1498
	lw		x27, -52(x2)	# 1498
	lw		x31, 0(x27)	# 1498
	jalr	x0, x31, 0	# 1498
beq.18311:
	jalr	x0, x1, 0	# 1499
beq.18295:
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
	beq		x12, x9, beq.18314	# 1507
	ori		x13, x0, 4	# 1508
	mul		x12, x12, x13	# 1508
	add		x12, x8, x12	# 1508
	lw		x12, 0(x12)	# 1508
	sw		x27, 0(x2)	# 1509
	sw		x6, -4(x2)	# 1509
	sw		x10, -8(x2)	# 1509
	sw		x7, -12(x2)	# 1509
	sw		x8, -16(x2)	# 1509
	sw		x9, -20(x2)	# 1509
	sw		x5, -24(x2)	# 1509
	sw		x11, -28(x2)	# 1509
	sw		x4, -32(x2)	# 1509
	addi	x5, x12, 0
	addi	x4, x10, 0
	addi	x27, x7, 0
	sw		x1, -36(x2)	# 1509
	addi	x2, x2, -40	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 40	# 1509
	lw		x1, -36(x2)	# 1509
	lw		x4, -28(x2)	# 1510
	lw		x5, -32(x2)	# 1510
	add		x5, x5, x4	# 1510
	ori		x6, x0, 4	# 1506
	mul		x6, x5, x6	# 1506
	lw		x7, -24(x2)	# 1506
	add		x6, x7, x6	# 1506
	lw		x6, 0(x6)	# 1506
	lw		x8, -20(x2)	# 1507
	beq		x6, x8, beq.18315	# 1507
	ori		x8, x0, 4	# 1508
	mul		x6, x6, x8	# 1508
	lw		x8, -16(x2)	# 1508
	add		x6, x8, x6	# 1508
	lw		x6, 0(x6)	# 1508
	lw		x8, -8(x2)	# 1509
	lw		x9, -4(x2)	# 1509
	lw		x27, -12(x2)	# 1509
	sw		x5, -36(x2)	# 1509
	addi	x5, x6, 0
	addi	x4, x8, 0
	addi	x6, x9, 0
	sw		x1, -40(x2)	# 1509
	addi	x2, x2, -44	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 44	# 1509
	lw		x1, -40(x2)	# 1509
	lw		x4, -28(x2)	# 1510
	lw		x5, -36(x2)	# 1510
	add		x4, x5, x4	# 1510
	lw		x5, -24(x2)	# 1510
	lw		x6, -4(x2)	# 1510
	lw		x27, 0(x2)	# 1510
	lw		x31, 0(x27)	# 1510
	jalr	x0, x31, 0	# 1510
beq.18315:
	jalr	x0, x1, 0	# 1511
beq.18314:
	jalr	x0, x1, 0	# 1511
trace_or_matrix.2830:
	lw		x7, 40(x27)	# 1516
	lw		x8, 36(x27)	# 1516
	lw		x9, 32(x27)	# 1516
	lw		x10, 28(x27)	# 1516
	lw		x11, 24(x27)	# 1516
	lw		x12, 20(x27)	# 1516
	lw		x13, 16(x27)	# 1516
	lw		x14, 12(x27)	# 1516
	lw		x15, 8(x27)	# 1516
	lw		x16, 4(x27)	# 1516
	ori		x17, x0, 4	# 1516
	mul		x17, x4, x17	# 1516
	add		x17, x5, x17	# 1516
	lw		x17, 0(x17)	# 1516
	ori		x18, x0, 4	# 1517
	mul		x15, x15, x18	# 1517
	add		x15, x17, x15	# 1517
	lw		x15, 0(x15)	# 1517
	beq		x15, x14, beq.18318	# 1518
	ori		x14, x0, 99	# 1521
	sw		x6, 0(x2)	# 1521
	sw		x5, -4(x2)	# 1521
	sw		x27, -8(x2)	# 1521
	sw		x16, -12(x2)	# 1521
	sw		x4, -16(x2)	# 1521
	beq		x15, x14, beq.18320	# 1521
	sw		x11, -20(x2)	# 1526
	sw		x12, -24(x2)	# 1526
	sw		x13, -28(x2)	# 1526
	sw		x17, -32(x2)	# 1526
	sw		x7, -36(x2)	# 1526
	sw		x9, -40(x2)	# 1526
	addi	x5, x6, 0
	addi	x4, x15, 0
	addi	x27, x10, 0
	addi	x6, x8, 0
	sw		x1, -44(x2)	# 1526
	addi	x2, x2, -48	# 1526
	lw		x31, 0(x27)	# 1526
	jalr	x1, x31, 0	# 1526
	addi	x2, x2, 48	# 1526
	lw		x1, -44(x2)	# 1526
	addi	x5, x0, 0	# 1527
	beq		x4, x5, beq.18322	# 1527
	addi	x4, x0, 0	# 1528
	ori		x5, x0, 4	# 1528
	mul		x4, x4, x5	# 1528
	lw		x5, -40(x2)	# 1528
	add		x4, x5, x4	# 1528
	flw		f0, 0(x4)	# 1528
	addi	x4, x0, 0	# 1529
	ori		x5, x0, 4	# 1529
	mul		x4, x4, x5	# 1529
	lw		x5, -36(x2)	# 1529
	add		x4, x5, x4	# 1529
	flw		f1, 0(x4)	# 1529
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.18324	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18323	# 6
fle_else.18324:
	ori		x4, x0, 1	# 6
fle_cont.18323:
	addi	x5, x0, 0	# 1529
	beq		x4, x5, beq.18326	# 1529
	ori		x4, x0, 1	# 1530
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -32(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lui		x6, -1	# 1507
	ori		x6, x0, -1	# 1507
	beq		x4, x6, beq.18328	# 1507
	ori		x6, x0, 4	# 1508
	mul		x4, x4, x6	# 1508
	lw		x6, -28(x2)	# 1508
	add		x4, x6, x4	# 1508
	lw		x4, 0(x4)	# 1508
	addi	x6, x0, 0	# 1509
	lw		x7, 0(x2)	# 1509
	lw		x27, -24(x2)	# 1509
	addi	x5, x4, 0
	addi	x4, x6, 0
	addi	x6, x7, 0
	sw		x1, -44(x2)	# 1509
	addi	x2, x2, -48	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 48	# 1509
	lw		x1, -44(x2)	# 1509
	ori		x4, x0, 2	# 1510
	lw		x5, -32(x2)	# 1510
	lw		x6, 0(x2)	# 1510
	lw		x27, -20(x2)	# 1510
	sw		x1, -44(x2)	# 1510
	addi	x2, x2, -48	# 1510
	lw		x31, 0(x27)	# 1510
	jalr	x1, x31, 0	# 1510
	addi	x2, x2, 48	# 1510
	lw		x1, -44(x2)	# 1510
	jal		x0, beq_cont.18327	# 1507
beq.18328:
beq_cont.18327:
	jal		x0, beq_cont.18325	# 1529
beq.18326:
beq_cont.18325:
	jal		x0, beq_cont.18321	# 1527
beq.18322:
beq_cont.18321:
	jal		x0, beq_cont.18319	# 1521
beq.18320:
	ori		x7, x0, 1	# 1522
	ori		x8, x0, 4	# 1506
	mul		x7, x7, x8	# 1506
	add		x7, x17, x7	# 1506
	lw		x7, 0(x7)	# 1506
	lui		x8, -1	# 1507
	ori		x8, x0, -1	# 1507
	beq		x7, x8, beq.18330	# 1507
	ori		x8, x0, 4	# 1508
	mul		x7, x7, x8	# 1508
	add		x7, x13, x7	# 1508
	lw		x7, 0(x7)	# 1508
	addi	x8, x0, 0	# 1509
	sw		x17, -32(x2)	# 1509
	sw		x11, -20(x2)	# 1509
	addi	x5, x7, 0
	addi	x4, x8, 0
	addi	x27, x12, 0
	sw		x1, -44(x2)	# 1509
	addi	x2, x2, -48	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 48	# 1509
	lw		x1, -44(x2)	# 1509
	ori		x4, x0, 2	# 1510
	lw		x5, -32(x2)	# 1510
	lw		x6, 0(x2)	# 1510
	lw		x27, -20(x2)	# 1510
	sw		x1, -44(x2)	# 1510
	addi	x2, x2, -48	# 1510
	lw		x31, 0(x27)	# 1510
	jalr	x1, x31, 0	# 1510
	addi	x2, x2, 48	# 1510
	lw		x1, -44(x2)	# 1510
	jal		x0, beq_cont.18329	# 1507
beq.18330:
beq_cont.18329:
beq_cont.18319:
	lw		x4, -12(x2)	# 1534
	lw		x5, -16(x2)	# 1534
	add		x4, x5, x4	# 1534
	lw		x5, -4(x2)	# 1534
	lw		x6, 0(x2)	# 1534
	lw		x27, -8(x2)	# 1534
	lw		x31, 0(x27)	# 1534
	jalr	x0, x31, 0	# 1534
beq.18318:
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
	flw		f0, 0(x4)	# 1545
	lui		x4, %hi(l.10549)	# 1547
	ori		x4, x0, %lo(l.10549)	# 1547
	flw		f1, 0(x4)	# 1547
	fle		x31, f0, f1	# 6
	beq		x31, x0, fle_else.18333	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18332	# 6
fle_else.18333:
	ori		x4, x0, 1	# 6
fle_cont.18332:
	beq		x4, x5, beq.18334	# 1547
	lui		x4, %hi(l.10664)	# 1548
	ori		x4, x0, %lo(l.10664)	# 1548
	flw		f1, 0(x4)	# 1548
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.18335	# 6
	addi	x4, x0, 0	# 6
	jalr	x0, x1, 0	# 6
fle_else.18335:
	ori		x4, x0, 1	# 6
	jalr	x0, x1, 0	# 6
beq.18334:
	addi	x4, x0, 0	# 1549
	jalr	x0, x1, 0	# 1549
solve_each_element_fast.2836:
	lw		x7, 56(x27)	# 639
	lw		x8, 52(x27)	# 639
	lw		x9, 48(x27)	# 639
	lw		x10, 44(x27)	# 639
	lw		x11, 40(x27)	# 639
	lw		x12, 36(x27)	# 639
	lw		x13, 32(x27)	# 639
	lw		x14, 28(x27)	# 639
	lw		x15, 24(x27)	# 639
	lw		x16, 20(x27)	# 639
	lw		x17, 16(x27)	# 639
	lw		x18, 12(x27)	# 639
	lw		x19, 8(x27)	# 639
	flw		f0, 4(x27)	# 639
	lw		x20, 0(x6)	# 639
	ori		x21, x0, 4	# 1559
	mul		x21, x4, x21	# 1559
	add		x21, x5, x21	# 1559
	lw		x21, 0(x21)	# 1559
	beq		x21, x17, beq.18336	# 1560
	sw		x13, 0(x2)	# 1562
	sw		x15, -4(x2)	# 1562
	sw		x14, -8(x2)	# 1562
	sw		x16, -12(x2)	# 1562
	sw		x12, -16(x2)	# 1562
	sw		x17, -20(x2)	# 1562
	sw		x8, -24(x2)	# 1562
	sw		x20, -28(x2)	# 1562
	sw		x7, -32(x2)	# 1562
	fsw		f0, -40(x2)	# 1562
	sw		x10, -48(x2)	# 1562
	sw		x6, -52(x2)	# 1562
	sw		x5, -56(x2)	# 1562
	sw		x27, -60(x2)	# 1562
	sw		x19, -64(x2)	# 1562
	sw		x4, -68(x2)	# 1562
	sw		x11, -72(x2)	# 1562
	sw		x21, -76(x2)	# 1562
	sw		x18, -80(x2)	# 1562
	addi	x5, x6, 0
	addi	x4, x21, 0
	addi	x27, x9, 0
	sw		x1, -84(x2)	# 1562
	addi	x2, x2, -88	# 1562
	lw		x31, 0(x27)	# 1562
	jalr	x1, x31, 0	# 1562
	addi	x2, x2, 88	# 1562
	lw		x1, -84(x2)	# 1562
	lw		x5, -80(x2)	# 1563
	beq		x4, x5, beq.18338	# 1563
	ori		x6, x0, 4	# 1567
	mul		x6, x5, x6	# 1567
	lw		x7, -48(x2)	# 1567
	add		x6, x7, x6	# 1567
	flw		f0, 0(x6)	# 1567
	flw		f1, -40(x2)	# 6
	fle		x31, f0, f1	# 6
	beq		x31, x0, fle_else.18340	# 6
	addi	x6, x0, 0	# 6
	jal		x0, fle_cont.18339	# 6
fle_else.18340:
	ori		x6, x0, 1	# 6
fle_cont.18339:
	beq		x6, x5, beq.18342	# 1569
	addi	x6, x0, 0	# 1570
	ori		x7, x0, 4	# 1570
	mul		x6, x6, x7	# 1570
	lw		x7, -32(x2)	# 1570
	add		x6, x7, x6	# 1570
	flw		f1, 0(x6)	# 1570
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.18344	# 6
	addi	x6, x0, 0	# 6
	jal		x0, fle_cont.18343	# 6
fle_else.18344:
	ori		x6, x0, 1	# 6
fle_cont.18343:
	addi	x8, x0, 0	# 1570
	beq		x6, x8, beq.18346	# 1570
	lui		x6, %hi(l.10499)	# 1572
	ori		x6, x0, %lo(l.10499)	# 1572
	flw		f1, 0(x6)	# 1572
	fadd	f0, f0, f1	# 1572
	addi	x6, x0, 0	# 1573
	ori		x8, x0, 4	# 1573
	mul		x6, x6, x8	# 1573
	lw		x8, -28(x2)	# 1573
	add		x6, x8, x6	# 1573
	flw		f1, 0(x6)	# 1573
	fmul	f1, f1, f0	# 1573
	addi	x6, x0, 0	# 1573
	ori		x9, x0, 4	# 1573
	mul		x6, x6, x9	# 1573
	lw		x9, -24(x2)	# 1573
	add		x6, x9, x6	# 1573
	flw		f2, 0(x6)	# 1573
	fadd	f1, f1, f2	# 1573
	ori		x6, x0, 1	# 1574
	ori		x10, x0, 4	# 1574
	mul		x6, x6, x10	# 1574
	add		x6, x8, x6	# 1574
	flw		f2, 0(x6)	# 1574
	fmul	f2, f2, f0	# 1574
	ori		x6, x0, 1	# 1574
	ori		x10, x0, 4	# 1574
	mul		x6, x6, x10	# 1574
	add		x6, x9, x6	# 1574
	flw		f3, 0(x6)	# 1574
	fadd	f2, f2, f3	# 1574
	ori		x6, x0, 2	# 1575
	ori		x10, x0, 4	# 1575
	mul		x6, x6, x10	# 1575
	add		x6, x8, x6	# 1575
	flw		f3, 0(x6)	# 1575
	fmul	f3, f3, f0	# 1575
	ori		x6, x0, 2	# 1575
	ori		x8, x0, 4	# 1575
	mul		x6, x6, x8	# 1575
	add		x6, x9, x6	# 1575
	flw		f4, 0(x6)	# 1575
	fadd	f3, f3, f4	# 1575
	addi	x6, x0, 0	# 1576
	ori		x8, x0, 4	# 1364
	mul		x6, x6, x8	# 1364
	lw		x8, -56(x2)	# 1364
	add		x6, x8, x6	# 1364
	lw		x6, 0(x6)	# 1364
	lw		x9, -20(x2)	# 1365
	sw		x4, -84(x2)	# 1365
	fsw		f3, -88(x2)	# 1365
	fsw		f2, -96(x2)	# 1365
	fsw		f1, -104(x2)	# 1365
	fsw		f0, -112(x2)	# 1365
	beq		x6, x9, beq.18348	# 1365
	ori		x9, x0, 4	# 1368
	mul		x6, x6, x9	# 1368
	lw		x9, -72(x2)	# 1368
	add		x6, x9, x6	# 1368
	lw		x6, 0(x6)	# 1368
	lw		x27, -16(x2)	# 1368
	addi	x4, x6, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -120(x2)	# 1368
	addi	x2, x2, -124	# 1368
	lw		x31, 0(x27)	# 1368
	jalr	x1, x31, 0	# 1368
	addi	x2, x2, 124	# 1368
	lw		x1, -120(x2)	# 1368
	lw		x5, -80(x2)	# 1368
	beq		x4, x5, beq.18350	# 1368
	addi	x4, x0, 0	# 1369
	jal		x0, beq_cont.18349	# 1368
beq.18350:
	ori		x4, x0, 1	# 1371
	flw		f0, -104(x2)	# 1371
	flw		f1, -96(x2)	# 1371
	flw		f2, -88(x2)	# 1371
	lw		x5, -56(x2)	# 1371
	lw		x27, -12(x2)	# 1371
	sw		x1, -120(x2)	# 1371
	addi	x2, x2, -124	# 1371
	lw		x31, 0(x27)	# 1371
	jalr	x1, x31, 0	# 1371
	addi	x2, x2, 124	# 1371
	lw		x1, -120(x2)	# 1371
beq_cont.18349:
	jal		x0, beq_cont.18347	# 1365
beq.18348:
	ori		x4, x0, 1	# 1366
beq_cont.18347:
	addi	x5, x0, 0	# 1576
	beq		x4, x5, beq.18352	# 1576
	addi	x4, x0, 0	# 1578
	ori		x5, x0, 4	# 1578
	mul		x4, x4, x5	# 1578
	lw		x5, -32(x2)	# 1578
	add		x4, x5, x4	# 1578
	flw		f0, -112(x2)	# 1578
	fsw		f0, 0(x4)	# 1578
	addi	x4, x0, 0	# 240
	ori		x5, x0, 4	# 240
	mul		x4, x4, x5	# 240
	lw		x5, -8(x2)	# 240
	add		x4, x5, x4	# 240
	flw		f0, -104(x2)	# 240
	fsw		f0, 0(x4)	# 240
	ori		x4, x0, 1	# 241
	ori		x6, x0, 4	# 241
	mul		x4, x4, x6	# 241
	add		x4, x5, x4	# 241
	flw		f0, -96(x2)	# 241
	fsw		f0, 0(x4)	# 241
	ori		x4, x0, 2	# 242
	ori		x6, x0, 4	# 242
	mul		x4, x4, x6	# 242
	add		x4, x5, x4	# 242
	flw		f0, -88(x2)	# 242
	fsw		f0, 0(x4)	# 242
	addi	x4, x0, 0	# 1580
	ori		x5, x0, 4	# 1580
	mul		x4, x4, x5	# 1580
	lw		x5, -4(x2)	# 1580
	add		x4, x5, x4	# 1580
	lw		x5, -76(x2)	# 1580
	sw		x5, 0(x4)	# 1580
	addi	x4, x0, 0	# 1581
	ori		x5, x0, 4	# 1581
	mul		x4, x4, x5	# 1581
	lw		x5, 0(x2)	# 1581
	add		x4, x5, x4	# 1581
	lw		x5, -84(x2)	# 1581
	sw		x5, 0(x4)	# 1581
	jal		x0, beq_cont.18351	# 1576
beq.18352:
beq_cont.18351:
	jal		x0, beq_cont.18345	# 1570
beq.18346:
beq_cont.18345:
	jal		x0, beq_cont.18341	# 1569
beq.18342:
beq_cont.18341:
	lw		x4, -64(x2)	# 1587
	lw		x5, -68(x2)	# 1587
	add		x4, x5, x4	# 1587
	lw		x5, -56(x2)	# 1587
	lw		x6, -52(x2)	# 1587
	lw		x27, -60(x2)	# 1587
	lw		x31, 0(x27)	# 1587
	jalr	x0, x31, 0	# 1587
beq.18338:
	ori		x4, x0, 4	# 1591
	lw		x6, -76(x2)	# 1591
	mul		x4, x6, x4	# 1591
	lw		x6, -72(x2)	# 1591
	add		x4, x6, x4	# 1591
	lw		x4, 0(x4)	# 1591
	lw		x4, 24(x4)	# 373
	beq		x4, x5, beq.18353	# 1591
	lw		x4, -64(x2)	# 1592
	lw		x5, -68(x2)	# 1592
	add		x4, x5, x4	# 1592
	lw		x5, -56(x2)	# 1592
	lw		x6, -52(x2)	# 1592
	lw		x27, -60(x2)	# 1592
	lw		x31, 0(x27)	# 1592
	jalr	x0, x31, 0	# 1592
beq.18353:
	jalr	x0, x1, 0	# 1593
beq.18336:
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
	beq		x12, x9, beq.18356	# 1600
	ori		x13, x0, 4	# 1601
	mul		x12, x12, x13	# 1601
	add		x12, x8, x12	# 1601
	lw		x12, 0(x12)	# 1601
	sw		x27, 0(x2)	# 1602
	sw		x6, -4(x2)	# 1602
	sw		x10, -8(x2)	# 1602
	sw		x7, -12(x2)	# 1602
	sw		x8, -16(x2)	# 1602
	sw		x9, -20(x2)	# 1602
	sw		x5, -24(x2)	# 1602
	sw		x11, -28(x2)	# 1602
	sw		x4, -32(x2)	# 1602
	addi	x5, x12, 0
	addi	x4, x10, 0
	addi	x27, x7, 0
	sw		x1, -36(x2)	# 1602
	addi	x2, x2, -40	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 40	# 1602
	lw		x1, -36(x2)	# 1602
	lw		x4, -28(x2)	# 1603
	lw		x5, -32(x2)	# 1603
	add		x5, x5, x4	# 1603
	ori		x6, x0, 4	# 1599
	mul		x6, x5, x6	# 1599
	lw		x7, -24(x2)	# 1599
	add		x6, x7, x6	# 1599
	lw		x6, 0(x6)	# 1599
	lw		x8, -20(x2)	# 1600
	beq		x6, x8, beq.18357	# 1600
	ori		x8, x0, 4	# 1601
	mul		x6, x6, x8	# 1601
	lw		x8, -16(x2)	# 1601
	add		x6, x8, x6	# 1601
	lw		x6, 0(x6)	# 1601
	lw		x8, -8(x2)	# 1602
	lw		x9, -4(x2)	# 1602
	lw		x27, -12(x2)	# 1602
	sw		x5, -36(x2)	# 1602
	addi	x5, x6, 0
	addi	x4, x8, 0
	addi	x6, x9, 0
	sw		x1, -40(x2)	# 1602
	addi	x2, x2, -44	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 44	# 1602
	lw		x1, -40(x2)	# 1602
	lw		x4, -28(x2)	# 1603
	lw		x5, -36(x2)	# 1603
	add		x4, x5, x4	# 1603
	lw		x5, -24(x2)	# 1603
	lw		x6, -4(x2)	# 1603
	lw		x27, 0(x2)	# 1603
	lw		x31, 0(x27)	# 1603
	jalr	x0, x31, 0	# 1603
beq.18357:
	jalr	x0, x1, 0	# 1604
beq.18356:
	jalr	x0, x1, 0	# 1604
trace_or_matrix_fast.2844:
	lw		x7, 36(x27)	# 1609
	lw		x8, 32(x27)	# 1609
	lw		x9, 28(x27)	# 1609
	lw		x10, 24(x27)	# 1609
	lw		x11, 20(x27)	# 1609
	lw		x12, 16(x27)	# 1609
	lw		x13, 12(x27)	# 1609
	lw		x14, 8(x27)	# 1609
	lw		x15, 4(x27)	# 1609
	ori		x16, x0, 4	# 1609
	mul		x16, x4, x16	# 1609
	add		x16, x5, x16	# 1609
	lw		x16, 0(x16)	# 1609
	ori		x17, x0, 4	# 1610
	mul		x14, x14, x17	# 1610
	add		x14, x16, x14	# 1610
	lw		x14, 0(x14)	# 1610
	beq		x14, x13, beq.18360	# 1611
	ori		x13, x0, 99	# 1614
	sw		x6, 0(x2)	# 1614
	sw		x5, -4(x2)	# 1614
	sw		x27, -8(x2)	# 1614
	sw		x15, -12(x2)	# 1614
	sw		x4, -16(x2)	# 1614
	beq		x14, x13, beq.18362	# 1614
	sw		x10, -20(x2)	# 1619
	sw		x11, -24(x2)	# 1619
	sw		x12, -28(x2)	# 1619
	sw		x16, -32(x2)	# 1619
	sw		x7, -36(x2)	# 1619
	sw		x9, -40(x2)	# 1619
	addi	x5, x6, 0
	addi	x4, x14, 0
	addi	x27, x8, 0
	sw		x1, -44(x2)	# 1619
	addi	x2, x2, -48	# 1619
	lw		x31, 0(x27)	# 1619
	jalr	x1, x31, 0	# 1619
	addi	x2, x2, 48	# 1619
	lw		x1, -44(x2)	# 1619
	addi	x5, x0, 0	# 1620
	beq		x4, x5, beq.18364	# 1620
	addi	x4, x0, 0	# 1621
	ori		x5, x0, 4	# 1621
	mul		x4, x4, x5	# 1621
	lw		x5, -40(x2)	# 1621
	add		x4, x5, x4	# 1621
	flw		f0, 0(x4)	# 1621
	addi	x4, x0, 0	# 1622
	ori		x5, x0, 4	# 1622
	mul		x4, x4, x5	# 1622
	lw		x5, -36(x2)	# 1622
	add		x4, x5, x4	# 1622
	flw		f1, 0(x4)	# 1622
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.18366	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18365	# 6
fle_else.18366:
	ori		x4, x0, 1	# 6
fle_cont.18365:
	addi	x5, x0, 0	# 1622
	beq		x4, x5, beq.18368	# 1622
	ori		x4, x0, 1	# 1623
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -32(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lui		x6, -1	# 1600
	ori		x6, x0, -1	# 1600
	beq		x4, x6, beq.18370	# 1600
	ori		x6, x0, 4	# 1601
	mul		x4, x4, x6	# 1601
	lw		x6, -28(x2)	# 1601
	add		x4, x6, x4	# 1601
	lw		x4, 0(x4)	# 1601
	addi	x6, x0, 0	# 1602
	lw		x7, 0(x2)	# 1602
	lw		x27, -24(x2)	# 1602
	addi	x5, x4, 0
	addi	x4, x6, 0
	addi	x6, x7, 0
	sw		x1, -44(x2)	# 1602
	addi	x2, x2, -48	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 48	# 1602
	lw		x1, -44(x2)	# 1602
	ori		x4, x0, 2	# 1603
	lw		x5, -32(x2)	# 1603
	lw		x6, 0(x2)	# 1603
	lw		x27, -20(x2)	# 1603
	sw		x1, -44(x2)	# 1603
	addi	x2, x2, -48	# 1603
	lw		x31, 0(x27)	# 1603
	jalr	x1, x31, 0	# 1603
	addi	x2, x2, 48	# 1603
	lw		x1, -44(x2)	# 1603
	jal		x0, beq_cont.18369	# 1600
beq.18370:
beq_cont.18369:
	jal		x0, beq_cont.18367	# 1622
beq.18368:
beq_cont.18367:
	jal		x0, beq_cont.18363	# 1620
beq.18364:
beq_cont.18363:
	jal		x0, beq_cont.18361	# 1614
beq.18362:
	ori		x7, x0, 1	# 1615
	ori		x8, x0, 4	# 1599
	mul		x7, x7, x8	# 1599
	add		x7, x16, x7	# 1599
	lw		x7, 0(x7)	# 1599
	lui		x8, -1	# 1600
	ori		x8, x0, -1	# 1600
	beq		x7, x8, beq.18372	# 1600
	ori		x8, x0, 4	# 1601
	mul		x7, x7, x8	# 1601
	add		x7, x12, x7	# 1601
	lw		x7, 0(x7)	# 1601
	addi	x8, x0, 0	# 1602
	sw		x16, -32(x2)	# 1602
	sw		x10, -20(x2)	# 1602
	addi	x5, x7, 0
	addi	x4, x8, 0
	addi	x27, x11, 0
	sw		x1, -44(x2)	# 1602
	addi	x2, x2, -48	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 48	# 1602
	lw		x1, -44(x2)	# 1602
	ori		x4, x0, 2	# 1603
	lw		x5, -32(x2)	# 1603
	lw		x6, 0(x2)	# 1603
	lw		x27, -20(x2)	# 1603
	sw		x1, -44(x2)	# 1603
	addi	x2, x2, -48	# 1603
	lw		x31, 0(x27)	# 1603
	jalr	x1, x31, 0	# 1603
	addi	x2, x2, 48	# 1603
	lw		x1, -44(x2)	# 1603
	jal		x0, beq_cont.18371	# 1600
beq.18372:
beq_cont.18371:
beq_cont.18361:
	lw		x4, -12(x2)	# 1627
	lw		x5, -16(x2)	# 1627
	add		x4, x5, x4	# 1627
	lw		x5, -4(x2)	# 1627
	lw		x6, 0(x2)	# 1627
	lw		x27, -8(x2)	# 1627
	lw		x31, 0(x27)	# 1627
	jalr	x0, x31, 0	# 1627
beq.18360:
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
	flw		f0, 0(x4)	# 1636
	lui		x4, %hi(l.10549)	# 1638
	ori		x4, x0, %lo(l.10549)	# 1638
	flw		f1, 0(x4)	# 1638
	fle		x31, f0, f1	# 6
	beq		x31, x0, fle_else.18375	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18374	# 6
fle_else.18375:
	ori		x4, x0, 1	# 6
fle_cont.18374:
	beq		x4, x5, beq.18376	# 1638
	lui		x4, %hi(l.10664)	# 1639
	ori		x4, x0, %lo(l.10664)	# 1639
	flw		f1, 0(x4)	# 1639
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.18377	# 6
	addi	x4, x0, 0	# 6
	jalr	x0, x1, 0	# 6
fle_else.18377:
	ori		x4, x0, 1	# 6
	jalr	x0, x1, 0	# 6
beq.18376:
	addi	x4, x0, 0	# 1640
	jalr	x0, x1, 0	# 1640
get_nvector_rect.2850:
	lw		x5, 24(x27)	# 1654
	lw		x6, 20(x27)	# 1654
	lw		x7, 16(x27)	# 1654
	lw		x8, 12(x27)	# 1654
	lw		x9, 8(x27)	# 1654
	flw		f0, 4(x27)	# 1654
	ori		x10, x0, 4	# 1654
	mul		x10, x8, x10	# 1654
	add		x6, x6, x10	# 1654
	lw		x6, 0(x6)	# 1654
	ori		x10, x0, 4	# 247
	mul		x10, x8, x10	# 247
	add		x10, x5, x10	# 247
	fsw		f0, 0(x10)	# 247
	ori		x10, x0, 4	# 248
	mul		x10, x9, x10	# 248
	add		x10, x5, x10	# 248
	fsw		f0, 0(x10)	# 248
	ori		x10, x0, 4	# 249
	mul		x7, x7, x10	# 249
	add		x7, x5, x7	# 249
	fsw		f0, 0(x7)	# 249
	sub		x6, x6, x9	# 1657
	ori		x7, x0, 4	# 1657
	mul		x7, x6, x7	# 1657
	add		x4, x4, x7	# 1657
	flw		f1, 0(x4)	# 1657
	feq		x31, f1, f0	# 1
	beq		x31, x0, feq_else.18379	# 1
	ori		x4, x0, 1	# 1
	jal		x0, feq_cont.18378	# 1
feq_else.18379:
	addi	x4, x0, 0	# 1
feq_cont.18378:
	beq		x4, x8, beq.18381	# 212
	jal		x0, beq_cont.18380	# 212
beq.18381:
	fle		x31, f1, f0	# 2
	beq		x31, x0, fle_else.18383	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.18382	# 2
fle_else.18383:
	ori		x4, x0, 1	# 2
fle_cont.18382:
	beq		x4, x8, beq.18385	# 213
	lui		x4, %hi(l.9419)	# 213
	ori		x4, x0, %lo(l.9419)	# 213
	flw		f0, 0(x4)	# 213
	jal		x0, beq_cont.18384	# 213
beq.18385:
	lui		x4, %hi(l.9471)	# 214
	ori		x4, x0, %lo(l.9471)	# 214
	flw		f0, 0(x4)	# 214
beq_cont.18384:
beq_cont.18380:
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x4, x0, 4	# 1657
	mul		x4, x6, x4	# 1657
	add		x4, x5, x4	# 1657
	fsw		f0, 0(x4)	# 1657
	jalr	x0, x1, 0	# 1657
get_nvector_second.2854:
	lw		x5, 24(x27)	# 1670
	lw		x6, 20(x27)	# 1670
	lw		x7, 16(x27)	# 1670
	lw		x8, 12(x27)	# 1670
	lw		x9, 8(x27)	# 1670
	lw		x10, 4(x27)	# 1670
	ori		x11, x0, 4	# 1670
	mul		x11, x9, x11	# 1670
	add		x11, x7, x11	# 1670
	flw		f0, 0(x11)	# 1670
	lw		x11, 20(x4)	# 431
	ori		x12, x0, 4	# 436
	mul		x12, x9, x12	# 436
	add		x11, x11, x12	# 436
	flw		f1, 0(x11)	# 436
	fsub	f0, f0, f1	# 1670
	ori		x11, x0, 4	# 1671
	mul		x11, x10, x11	# 1671
	add		x11, x7, x11	# 1671
	flw		f1, 0(x11)	# 1671
	lw		x11, 20(x4)	# 441
	ori		x12, x0, 4	# 446
	mul		x12, x10, x12	# 446
	add		x11, x11, x12	# 446
	flw		f2, 0(x11)	# 446
	fsub	f1, f1, f2	# 1671
	ori		x11, x0, 4	# 1672
	mul		x11, x8, x11	# 1672
	add		x7, x7, x11	# 1672
	flw		f2, 0(x7)	# 1672
	lw		x7, 20(x4)	# 451
	ori		x11, x0, 4	# 456
	mul		x11, x8, x11	# 456
	add		x7, x7, x11	# 456
	flw		f3, 0(x7)	# 456
	fsub	f2, f2, f3	# 1672
	lw		x7, 16(x4)	# 391
	ori		x11, x0, 4	# 396
	mul		x11, x9, x11	# 396
	add		x7, x7, x11	# 396
	flw		f3, 0(x7)	# 396
	fmul	f3, f0, f3	# 1674
	lw		x7, 16(x4)	# 401
	ori		x11, x0, 4	# 406
	mul		x10, x10, x11	# 406
	add		x7, x7, x10	# 406
	flw		f4, 0(x7)	# 406
	fmul	f4, f1, f4	# 1675
	lw		x7, 16(x4)	# 411
	ori		x10, x0, 4	# 416
	mul		x8, x8, x10	# 416
	add		x7, x7, x8	# 416
	flw		f5, 0(x7)	# 416
	fmul	f5, f2, f5	# 1676
	lw		x7, 12(x4)	# 382
	beq		x7, x9, beq.18388	# 1678
	addi	x7, x0, 0	# 1683
	lw		x8, 36(x4)	# 531
	ori		x9, x0, 2	# 536
	ori		x10, x0, 4	# 536
	mul		x9, x9, x10	# 536
	add		x8, x8, x9	# 536
	flw		f6, 0(x8)	# 536
	fmul	f6, f1, f6	# 1683
	lw		x8, 36(x4)	# 521
	ori		x9, x0, 1	# 526
	ori		x10, x0, 4	# 526
	mul		x9, x9, x10	# 526
	add		x8, x8, x9	# 526
	flw		f7, 0(x8)	# 526
	fmul	f7, f2, f7	# 1683
	fadd	f6, f6, f7	# 1683
	lui		x8, %hi(l.9436)	# 7
	ori		x8, x0, %lo(l.9436)	# 7
	flw		f7, 0(x8)	# 7
	fmul	f6, f6, f7	# 7
	fadd	f3, f3, f6	# 1683
	ori		x8, x0, 4	# 1683
	mul		x7, x7, x8	# 1683
	add		x7, x6, x7	# 1683
	fsw		f3, 0(x7)	# 1683
	ori		x7, x0, 1	# 1684
	lw		x8, 36(x4)	# 531
	ori		x9, x0, 2	# 536
	ori		x10, x0, 4	# 536
	mul		x9, x9, x10	# 536
	add		x8, x8, x9	# 536
	flw		f3, 0(x8)	# 536
	fmul	f3, f0, f3	# 1684
	lw		x8, 36(x4)	# 511
	addi	x9, x0, 0	# 516
	ori		x10, x0, 4	# 516
	mul		x9, x9, x10	# 516
	add		x8, x8, x9	# 516
	flw		f6, 0(x8)	# 516
	fmul	f2, f2, f6	# 1684
	fadd	f2, f3, f2	# 1684
	lui		x8, %hi(l.9436)	# 7
	ori		x8, x0, %lo(l.9436)	# 7
	flw		f3, 0(x8)	# 7
	fmul	f2, f2, f3	# 7
	fadd	f2, f4, f2	# 1684
	ori		x8, x0, 4	# 1684
	mul		x7, x7, x8	# 1684
	add		x7, x6, x7	# 1684
	fsw		f2, 0(x7)	# 1684
	ori		x7, x0, 2	# 1685
	lw		x8, 36(x4)	# 521
	ori		x9, x0, 1	# 526
	ori		x10, x0, 4	# 526
	mul		x9, x9, x10	# 526
	add		x8, x8, x9	# 526
	flw		f2, 0(x8)	# 526
	fmul	f0, f0, f2	# 1685
	lw		x8, 36(x4)	# 511
	addi	x9, x0, 0	# 516
	ori		x10, x0, 4	# 516
	mul		x9, x9, x10	# 516
	add		x8, x8, x9	# 516
	flw		f2, 0(x8)	# 516
	fmul	f1, f1, f2	# 1685
	fadd	f0, f0, f1	# 1685
	lui		x8, %hi(l.9436)	# 7
	ori		x8, x0, %lo(l.9436)	# 7
	flw		f1, 0(x8)	# 7
	fmul	f0, f0, f1	# 7
	fadd	f0, f5, f0	# 1685
	ori		x8, x0, 4	# 1685
	mul		x7, x7, x8	# 1685
	add		x7, x6, x7	# 1685
	fsw		f0, 0(x7)	# 1685
	jal		x0, beq_cont.18387	# 1678
beq.18388:
	addi	x7, x0, 0	# 1679
	ori		x8, x0, 4	# 1679
	mul		x7, x7, x8	# 1679
	add		x7, x6, x7	# 1679
	fsw		f3, 0(x7)	# 1679
	ori		x7, x0, 1	# 1680
	ori		x8, x0, 4	# 1680
	mul		x7, x7, x8	# 1680
	add		x7, x6, x7	# 1680
	fsw		f4, 0(x7)	# 1680
	ori		x7, x0, 2	# 1681
	ori		x8, x0, 4	# 1681
	mul		x7, x7, x8	# 1681
	add		x7, x6, x7	# 1681
	fsw		f5, 0(x7)	# 1681
beq_cont.18387:
	lw		x4, 24(x4)	# 373
	addi	x27, x5, 0
	addi	x5, x4, 0
	addi	x4, x6, 0
	lw		x31, 0(x27)	# 1687
	jalr	x0, x31, 0	# 1687
utexture.2859:
	lw		x6, 48(x27)	# 343
	lw		x7, 44(x27)	# 343
	flw		f0, 40(x27)	# 343
	flw		f1, 36(x27)	# 343
	lw		x8, 32(x27)	# 343
	lw		x9, 28(x27)	# 343
	lw		x10, 24(x27)	# 343
	lw		x11, 20(x27)	# 343
	lw		x12, 16(x27)	# 343
	lw		x13, 12(x27)	# 343
	flw		f2, 8(x27)	# 343
	flw		f3, 4(x27)	# 343
	lw		x14, 0(x4)	# 343
	lw		x15, 32(x4)	# 481
	ori		x16, x0, 4	# 486
	mul		x16, x12, x16	# 486
	add		x15, x15, x16	# 486
	flw		f4, 0(x15)	# 486
	ori		x15, x0, 4	# 1710
	mul		x15, x12, x15	# 1710
	add		x15, x6, x15	# 1710
	fsw		f4, 0(x15)	# 1710
	lw		x15, 32(x4)	# 491
	ori		x16, x0, 4	# 496
	mul		x16, x13, x16	# 496
	add		x15, x15, x16	# 496
	flw		f4, 0(x15)	# 496
	ori		x15, x0, 4	# 1711
	mul		x15, x13, x15	# 1711
	add		x15, x6, x15	# 1711
	fsw		f4, 0(x15)	# 1711
	lw		x15, 32(x4)	# 501
	ori		x16, x0, 4	# 506
	mul		x16, x10, x16	# 506
	add		x15, x15, x16	# 506
	flw		f4, 0(x15)	# 506
	ori		x15, x0, 4	# 1712
	mul		x15, x10, x15	# 1712
	add		x15, x6, x15	# 1712
	fsw		f4, 0(x15)	# 1712
	beq		x14, x13, beq.18389	# 1713
	beq		x14, x10, beq.18390	# 1731
	beq		x14, x11, beq.18391	# 1738
	ori		x7, x0, 4	# 1749
	beq		x14, x7, beq.18392	# 1749
	jalr	x0, x1, 0	# 1777
beq.18392:
	ori		x7, x0, 4	# 1751
	mul		x7, x12, x7	# 1751
	add		x7, x5, x7	# 1751
	flw		f0, 0(x7)	# 1751
	lw		x7, 20(x4)	# 431
	ori		x8, x0, 4	# 436
	mul		x8, x12, x8	# 436
	add		x7, x7, x8	# 436
	flw		f1, 0(x7)	# 436
	fsub	f0, f0, f1	# 1751
	lw		x7, 16(x4)	# 391
	ori		x8, x0, 4	# 396
	mul		x8, x12, x8	# 396
	add		x7, x7, x8	# 396
	flw		f1, 0(x7)	# 396
	sw		x6, 0(x2)	# 1751
	fsw		f2, -8(x2)	# 1751
	sw		x13, -16(x2)	# 1751
	sw		x9, -20(x2)	# 1751
	sw		x12, -24(x2)	# 1751
	fsw		f3, -32(x2)	# 1751
	sw		x4, -40(x2)	# 1751
	sw		x5, -44(x2)	# 1751
	sw		x10, -48(x2)	# 1751
	fsw		f0, -56(x2)	# 1751
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -64(x2)	# 1751
	addi	x2, x2, -68	# 1751
	jal		x1, min_caml_sqrt	# 1751
	addi	x2, x2, 68	# 1751
	lw		x1, -64(x2)	# 1751
	flw		f1, -56(x2)	# 1751
	fmul	f0, f1, f0	# 1751
	ori		x4, x0, 4	# 1752
	lw		x5, -48(x2)	# 1752
	mul		x4, x5, x4	# 1752
	lw		x6, -44(x2)	# 1752
	add		x4, x6, x4	# 1752
	flw		f1, 0(x4)	# 1752
	lw		x4, -40(x2)	# 451
	lw		x7, 20(x4)	# 451
	ori		x8, x0, 4	# 456
	mul		x8, x5, x8	# 456
	add		x7, x7, x8	# 456
	flw		f2, 0(x7)	# 456
	fsub	f1, f1, f2	# 1752
	lw		x7, 16(x4)	# 411
	ori		x8, x0, 4	# 416
	mul		x8, x5, x8	# 416
	add		x7, x7, x8	# 416
	flw		f2, 0(x7)	# 416
	fsw		f0, -64(x2)	# 1752
	fsw		f1, -72(x2)	# 1752
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -80(x2)	# 1752
	addi	x2, x2, -84	# 1752
	jal		x1, min_caml_sqrt	# 1752
	addi	x2, x2, 84	# 1752
	lw		x1, -80(x2)	# 1752
	flw		f1, -72(x2)	# 1752
	fmul	f0, f1, f0	# 1752
	flw		f1, -64(x2)	# 8
	fmul	f2, f1, f1	# 8
	fmul	f3, f0, f0	# 8
	fadd	f2, f2, f3	# 1753
	flw		f3, -32(x2)	# 5
	fle		x31, f1, f3	# 5
	beq		x31, x0, fle_else.18398	# 5
	fsub	f4, f4, f4	# 5
	fsub	f4, f4, f1	# 5
	jal		x0, fle_cont.18397	# 5
fle_else.18398:
	fsub	f4, f4, f4	# 5
	fadd	f4, f4, f1	# 5
fle_cont.18397:
	lui		x4, %hi(l.10890)	# 1755
	ori		x4, x0, %lo(l.10890)	# 1755
	flw		f5, 0(x4)	# 1755
	fle		x31, f5, f4	# 6
	beq		x31, x0, fle_else.18400	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18399	# 6
fle_else.18400:
	ori		x4, x0, 1	# 6
fle_cont.18399:
	lw		x5, -24(x2)	# 1755
	fsw		f5, -80(x2)	# 1755
	fsw		f2, -88(x2)	# 1755
	beq		x4, x5, beq.18402	# 1755
	lui		x4, %hi(l.10892)	# 1756
	ori		x4, x0, %lo(l.10892)	# 1756
	flw		f0, 0(x4)	# 1756
	jal		x0, beq_cont.18401	# 1755
beq.18402:
	fdiv	f0, f0, f1	# 1758
	lui		x4, %hi(l.9417)	# 5
	ori		x4, x0, %lo(l.9417)	# 5
	flw		f1, 0(x4)	# 5
	fle		x31, f0, f1	# 5
	beq		x31, x0, fle_else.18404	# 5
	fsub	x31, x31, x31	# 5
	fsub	f0, x31, f0	# 5
	jal		x0, fle_cont.18403	# 5
fle_else.18404:
fle_cont.18403:
	lw		x27, -20(x2)	# 1760
	sw		x1, -96(x2)	# 1760
	addi	x2, x2, -100	# 1760
	lw		x31, 0(x27)	# 1760
	jalr	x1, x31, 0	# 1760
	addi	x2, x2, 100	# 1760
	lw		x1, -96(x2)	# 1760
	lui		x4, %hi(l.10895)	# 1760
	ori		x4, x0, %lo(l.10895)	# 1760
	flw		f1, 0(x4)	# 1760
	fmul	f0, f0, f1	# 1760
	lui		x4, %hi(l.10897)	# 1760
	ori		x4, x0, %lo(l.10897)	# 1760
	flw		f1, 0(x4)	# 1760
	fdiv	f0, f0, f1	# 1760
beq_cont.18401:
	flw		f1, -32(x2)	# 18
	fsw		f0, -96(x2)	# 18
	fle		x31, f1, f0	# 18
	beq		x31, x0, fle_else.18406	# 18
	lui		x4, %hi(l.9417)	# 10
	ori		x4, x0, %lo(l.9417)	# 10
	flw		f2, 0(x4)	# 10
	fle		x31, f2, f0	# 10
	beq		x31, x0, fle_else.18408	# 10
	lui		x4, %hi(l.9419)	# 11
	ori		x4, x0, %lo(l.9419)	# 11
	flw		f2, 0(x4)	# 11
	fle		x31, f2, f0	# 11
	beq		x31, x0, fle_else.18410	# 11
	fsub	f2, f0, f2	# 11
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -104(x2)	# 11
	addi	x2, x2, -108	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 108	# 11
	lw		x1, -104(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.18409	# 11
fle_else.18410:
	addi	x4, x0, 0	# 11
fle_cont.18409:
	jal		x0, fle_cont.18407	# 10
fle_else.18408:
	fsub	f2, f2, f2	# 12
	fsub	f2, f2, f0	# 12
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -104(x2)	# 12
	addi	x2, x2, -108	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 108	# 12
	lw		x1, -104(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.18407:
	addi	x5, x0, 0	# 14
	ble		x5, x4, ble.18412	# 14
	sub		x4, x0, x4	# 16
	sw		x1, -104(x2)	# 16
	addi	x2, x2, -108	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 108	# 16
	lw		x1, -104(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.18411	# 14
ble.18412:
	ori		x5, x0, 1	# 15
	ble		x5, x4, ble.18414	# 15
	lui		x4, %hi(l.9417)	# 15
	ori		x4, x0, %lo(l.9417)	# 15
	flw		f0, 0(x4)	# 15
	jal		x0, ble_cont.18413	# 15
ble.18414:
	sub		x4, x4, x5	# 15
	sw		x1, -104(x2)	# 15
	addi	x2, x2, -108	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 108	# 15
	lw		x1, -104(x2)	# 15
	lui		x4, %hi(l.9419)	# 15
	ori		x4, x0, %lo(l.9419)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.18413:
ble_cont.18411:
	jal		x0, fle_cont.18405	# 18
fle_else.18406:
	lui		x4, %hi(l.9417)	# 10
	ori		x4, x0, %lo(l.9417)	# 10
	flw		f2, 0(x4)	# 10
	fle		x31, f2, f0	# 10
	beq		x31, x0, fle_else.18416	# 10
	lui		x4, %hi(l.9419)	# 11
	ori		x4, x0, %lo(l.9419)	# 11
	flw		f2, 0(x4)	# 11
	fle		x31, f2, f0	# 11
	beq		x31, x0, fle_else.18418	# 11
	fsub	f2, f0, f2	# 11
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -104(x2)	# 11
	addi	x2, x2, -108	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 108	# 11
	lw		x1, -104(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.18417	# 11
fle_else.18418:
	addi	x4, x0, 0	# 11
fle_cont.18417:
	jal		x0, fle_cont.18415	# 10
fle_else.18416:
	fsub	f2, f2, f2	# 12
	fsub	f2, f2, f0	# 12
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -104(x2)	# 12
	addi	x2, x2, -108	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 108	# 12
	lw		x1, -104(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.18415:
	ori		x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	addi	x5, x0, 0	# 14
	ble		x5, x4, ble.18420	# 14
	sub		x4, x0, x4	# 16
	sw		x1, -104(x2)	# 16
	addi	x2, x2, -108	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 108	# 16
	lw		x1, -104(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.18419	# 14
ble.18420:
	ori		x5, x0, 1	# 15
	ble		x5, x4, ble.18422	# 15
	lui		x4, %hi(l.9417)	# 15
	ori		x4, x0, %lo(l.9417)	# 15
	flw		f0, 0(x4)	# 15
	jal		x0, ble_cont.18421	# 15
ble.18422:
	sub		x4, x4, x5	# 15
	sw		x1, -104(x2)	# 15
	addi	x2, x2, -108	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 108	# 15
	lw		x1, -104(x2)	# 15
	lui		x4, %hi(l.9419)	# 15
	ori		x4, x0, %lo(l.9419)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.18421:
ble_cont.18419:
fle_cont.18405:
	flw		f1, -96(x2)	# 1762
	fsub	f0, f1, f0	# 1762
	ori		x4, x0, 4	# 1764
	lw		x5, -16(x2)	# 1764
	mul		x4, x5, x4	# 1764
	lw		x6, -44(x2)	# 1764
	add		x4, x6, x4	# 1764
	flw		f1, 0(x4)	# 1764
	lw		x4, -40(x2)	# 441
	lw		x6, 20(x4)	# 441
	ori		x7, x0, 4	# 446
	mul		x7, x5, x7	# 446
	add		x6, x6, x7	# 446
	flw		f2, 0(x6)	# 446
	fsub	f1, f1, f2	# 1764
	lw		x4, 16(x4)	# 401
	ori		x6, x0, 4	# 406
	mul		x5, x5, x6	# 406
	add		x4, x4, x5	# 406
	flw		f2, 0(x4)	# 406
	fsw		f0, -104(x2)	# 1764
	fsw		f1, -112(x2)	# 1764
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -120(x2)	# 1764
	addi	x2, x2, -124	# 1764
	jal		x1, min_caml_sqrt	# 1764
	addi	x2, x2, 124	# 1764
	lw		x1, -120(x2)	# 1764
	flw		f1, -112(x2)	# 1764
	fmul	f0, f1, f0	# 1764
	flw		f1, -32(x2)	# 5
	flw		f2, -88(x2)	# 5
	fle		x31, f2, f1	# 5
	beq		x31, x0, fle_else.18424	# 5
	fsub	f3, f3, f3	# 5
	fsub	f3, f3, f2	# 5
	jal		x0, fle_cont.18423	# 5
fle_else.18424:
	fsub	f3, f3, f3	# 5
	fadd	f3, f3, f2	# 5
fle_cont.18423:
	flw		f4, -80(x2)	# 6
	fle		x31, f4, f3	# 6
	beq		x31, x0, fle_else.18426	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18425	# 6
fle_else.18426:
	ori		x4, x0, 1	# 6
fle_cont.18425:
	lw		x5, -24(x2)	# 1766
	beq		x4, x5, beq.18428	# 1766
	lui		x4, %hi(l.10892)	# 1767
	ori		x4, x0, %lo(l.10892)	# 1767
	flw		f0, 0(x4)	# 1767
	jal		x0, beq_cont.18427	# 1766
beq.18428:
	fdiv	f0, f0, f2	# 1769
	lui		x4, %hi(l.9417)	# 5
	ori		x4, x0, %lo(l.9417)	# 5
	flw		f2, 0(x4)	# 5
	fle		x31, f0, f2	# 5
	beq		x31, x0, fle_else.18430	# 5
	fsub	x31, x31, x31	# 5
	fsub	f0, x31, f0	# 5
	jal		x0, fle_cont.18429	# 5
fle_else.18430:
fle_cont.18429:
	lw		x27, -20(x2)	# 1770
	sw		x1, -120(x2)	# 1770
	addi	x2, x2, -124	# 1770
	lw		x31, 0(x27)	# 1770
	jalr	x1, x31, 0	# 1770
	addi	x2, x2, 124	# 1770
	lw		x1, -120(x2)	# 1770
	lui		x4, %hi(l.10895)	# 1770
	ori		x4, x0, %lo(l.10895)	# 1770
	flw		f1, 0(x4)	# 1770
	fmul	f0, f0, f1	# 1770
	lui		x4, %hi(l.10897)	# 1770
	ori		x4, x0, %lo(l.10897)	# 1770
	flw		f1, 0(x4)	# 1770
	fdiv	f0, f0, f1	# 1770
beq_cont.18427:
	flw		f1, -32(x2)	# 18
	fsw		f0, -120(x2)	# 18
	fle		x31, f1, f0	# 18
	beq		x31, x0, fle_else.18432	# 18
	lui		x4, %hi(l.9417)	# 10
	ori		x4, x0, %lo(l.9417)	# 10
	flw		f2, 0(x4)	# 10
	fle		x31, f2, f0	# 10
	beq		x31, x0, fle_else.18434	# 10
	lui		x4, %hi(l.9419)	# 11
	ori		x4, x0, %lo(l.9419)	# 11
	flw		f2, 0(x4)	# 11
	fle		x31, f2, f0	# 11
	beq		x31, x0, fle_else.18436	# 11
	fsub	f2, f0, f2	# 11
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -128(x2)	# 11
	addi	x2, x2, -132	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 132	# 11
	lw		x1, -128(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.18435	# 11
fle_else.18436:
	addi	x4, x0, 0	# 11
fle_cont.18435:
	jal		x0, fle_cont.18433	# 10
fle_else.18434:
	fsub	f2, f2, f2	# 12
	fsub	f2, f2, f0	# 12
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -128(x2)	# 12
	addi	x2, x2, -132	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 132	# 12
	lw		x1, -128(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.18433:
	addi	x5, x0, 0	# 14
	ble		x5, x4, ble.18438	# 14
	sub		x4, x0, x4	# 16
	sw		x1, -128(x2)	# 16
	addi	x2, x2, -132	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 132	# 16
	lw		x1, -128(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.18437	# 14
ble.18438:
	ori		x5, x0, 1	# 15
	ble		x5, x4, ble.18440	# 15
	lui		x4, %hi(l.9417)	# 15
	ori		x4, x0, %lo(l.9417)	# 15
	flw		f0, 0(x4)	# 15
	jal		x0, ble_cont.18439	# 15
ble.18440:
	sub		x4, x4, x5	# 15
	sw		x1, -128(x2)	# 15
	addi	x2, x2, -132	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 132	# 15
	lw		x1, -128(x2)	# 15
	lui		x4, %hi(l.9419)	# 15
	ori		x4, x0, %lo(l.9419)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.18439:
ble_cont.18437:
	jal		x0, fle_cont.18431	# 18
fle_else.18432:
	lui		x4, %hi(l.9417)	# 10
	ori		x4, x0, %lo(l.9417)	# 10
	flw		f2, 0(x4)	# 10
	fle		x31, f2, f0	# 10
	beq		x31, x0, fle_else.18442	# 10
	lui		x4, %hi(l.9419)	# 11
	ori		x4, x0, %lo(l.9419)	# 11
	flw		f2, 0(x4)	# 11
	fle		x31, f2, f0	# 11
	beq		x31, x0, fle_else.18444	# 11
	fsub	f2, f0, f2	# 11
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -128(x2)	# 11
	addi	x2, x2, -132	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 132	# 11
	lw		x1, -128(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.18443	# 11
fle_else.18444:
	addi	x4, x0, 0	# 11
fle_cont.18443:
	jal		x0, fle_cont.18441	# 10
fle_else.18442:
	fsub	f2, f2, f2	# 12
	fsub	f2, f2, f0	# 12
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -128(x2)	# 12
	addi	x2, x2, -132	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 132	# 12
	lw		x1, -128(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.18441:
	ori		x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	addi	x5, x0, 0	# 14
	ble		x5, x4, ble.18446	# 14
	sub		x4, x0, x4	# 16
	sw		x1, -128(x2)	# 16
	addi	x2, x2, -132	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 132	# 16
	lw		x1, -128(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.18445	# 14
ble.18446:
	ori		x5, x0, 1	# 15
	ble		x5, x4, ble.18448	# 15
	lui		x4, %hi(l.9417)	# 15
	ori		x4, x0, %lo(l.9417)	# 15
	flw		f0, 0(x4)	# 15
	jal		x0, ble_cont.18447	# 15
ble.18448:
	sub		x4, x4, x5	# 15
	sw		x1, -128(x2)	# 15
	addi	x2, x2, -132	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 132	# 15
	lw		x1, -128(x2)	# 15
	lui		x4, %hi(l.9419)	# 15
	ori		x4, x0, %lo(l.9419)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.18447:
ble_cont.18445:
fle_cont.18431:
	flw		f1, -120(x2)	# 1772
	fsub	f0, f1, f0	# 1772
	lui		x4, %hi(l.10928)	# 1773
	ori		x4, x0, %lo(l.10928)	# 1773
	flw		f1, 0(x4)	# 1773
	lui		x4, %hi(l.9436)	# 1773
	ori		x4, x0, %lo(l.9436)	# 1773
	flw		f2, 0(x4)	# 1773
	flw		f3, -104(x2)	# 1773
	fsub	f3, f2, f3	# 1773
	fmul	f3, f3, f3	# 8
	fsub	f1, f1, f3	# 1773
	fsub	f0, f2, f0	# 1773
	fmul	f0, f0, f0	# 8
	fsub	f0, f1, f0	# 1773
	flw		f1, -32(x2)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.18450	# 3
	addi	x4, x0, 0	# 3
	jal		x0, fle_cont.18449	# 3
fle_else.18450:
	ori		x4, x0, 1	# 3
fle_cont.18449:
	lw		x5, -24(x2)	# 1774
	beq		x4, x5, beq.18452	# 1774
	fsub	f0, f0, f0	# 1774
	fadd	f0, f0, f1	# 1774
	jal		x0, beq_cont.18451	# 1774
beq.18452:
beq_cont.18451:
	flw		f1, -8(x2)	# 1775
	fmul	f0, f1, f0	# 1775
	lui		x4, %hi(l.10931)	# 1775
	ori		x4, x0, %lo(l.10931)	# 1775
	flw		f1, 0(x4)	# 1775
	fdiv	f0, f0, f1	# 1775
	ori		x4, x0, 4	# 1775
	lw		x5, -48(x2)	# 1775
	mul		x4, x5, x4	# 1775
	lw		x5, 0(x2)	# 1775
	add		x4, x5, x4	# 1775
	fsw		f0, 0(x4)	# 1775
	jalr	x0, x1, 0	# 1775
beq.18391:
	ori		x9, x0, 4	# 1741
	mul		x9, x12, x9	# 1741
	add		x9, x5, x9	# 1741
	flw		f4, 0(x9)	# 1741
	lw		x9, 20(x4)	# 431
	ori		x11, x0, 4	# 436
	mul		x11, x12, x11	# 436
	add		x9, x9, x11	# 436
	flw		f5, 0(x9)	# 436
	fsub	f4, f4, f5	# 1741
	ori		x9, x0, 4	# 1742
	mul		x9, x10, x9	# 1742
	add		x5, x5, x9	# 1742
	flw		f5, 0(x5)	# 1742
	lw		x4, 20(x4)	# 451
	ori		x5, x0, 4	# 456
	mul		x5, x10, x5	# 456
	add		x4, x4, x5	# 456
	flw		f6, 0(x4)	# 456
	fsub	f5, f5, f6	# 1742
	fmul	f4, f4, f4	# 8
	fmul	f5, f5, f5	# 8
	fadd	f4, f4, f5	# 1743
	sw		x10, -48(x2)	# 1743
	sw		x6, 0(x2)	# 1743
	sw		x13, -16(x2)	# 1743
	fsw		f2, -8(x2)	# 1743
	sw		x8, -128(x2)	# 1743
	sw		x7, -132(x2)	# 1743
	fsw		f1, -136(x2)	# 1743
	fsw		f0, -144(x2)	# 1743
	fsw		f3, -32(x2)	# 1743
	fsub	f0, f0, f0
	fadd	f0, f0, f4
	sw		x1, -152(x2)	# 1743
	addi	x2, x2, -156	# 1743
	jal		x1, min_caml_sqrt	# 1743
	addi	x2, x2, 156	# 1743
	lw		x1, -152(x2)	# 1743
	lui		x4, %hi(l.10948)	# 1743
	ori		x4, x0, %lo(l.10948)	# 1743
	flw		f1, 0(x4)	# 1743
	fdiv	f0, f0, f1	# 1743
	flw		f1, -32(x2)	# 18
	fsw		f0, -152(x2)	# 18
	fle		x31, f1, f0	# 18
	beq		x31, x0, fle_else.18455	# 18
	lui		x4, %hi(l.9417)	# 10
	ori		x4, x0, %lo(l.9417)	# 10
	flw		f2, 0(x4)	# 10
	fle		x31, f2, f0	# 10
	beq		x31, x0, fle_else.18457	# 10
	lui		x4, %hi(l.9419)	# 11
	ori		x4, x0, %lo(l.9419)	# 11
	flw		f2, 0(x4)	# 11
	fle		x31, f2, f0	# 11
	beq		x31, x0, fle_else.18459	# 11
	fsub	f2, f0, f2	# 11
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -160(x2)	# 11
	addi	x2, x2, -164	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 164	# 11
	lw		x1, -160(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.18458	# 11
fle_else.18459:
	addi	x4, x0, 0	# 11
fle_cont.18458:
	jal		x0, fle_cont.18456	# 10
fle_else.18457:
	fsub	f2, f2, f2	# 12
	fsub	f2, f2, f0	# 12
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -160(x2)	# 12
	addi	x2, x2, -164	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 164	# 12
	lw		x1, -160(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.18456:
	addi	x5, x0, 0	# 14
	ble		x5, x4, ble.18461	# 14
	sub		x4, x0, x4	# 16
	sw		x1, -160(x2)	# 16
	addi	x2, x2, -164	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 164	# 16
	lw		x1, -160(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.18460	# 14
ble.18461:
	ori		x5, x0, 1	# 15
	ble		x5, x4, ble.18463	# 15
	lui		x4, %hi(l.9417)	# 15
	ori		x4, x0, %lo(l.9417)	# 15
	flw		f0, 0(x4)	# 15
	jal		x0, ble_cont.18462	# 15
ble.18463:
	sub		x4, x4, x5	# 15
	sw		x1, -160(x2)	# 15
	addi	x2, x2, -164	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 164	# 15
	lw		x1, -160(x2)	# 15
	lui		x4, %hi(l.9419)	# 15
	ori		x4, x0, %lo(l.9419)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.18462:
ble_cont.18460:
	jal		x0, fle_cont.18454	# 18
fle_else.18455:
	lui		x4, %hi(l.9417)	# 10
	ori		x4, x0, %lo(l.9417)	# 10
	flw		f2, 0(x4)	# 10
	fle		x31, f2, f0	# 10
	beq		x31, x0, fle_else.18465	# 10
	lui		x4, %hi(l.9419)	# 11
	ori		x4, x0, %lo(l.9419)	# 11
	flw		f2, 0(x4)	# 11
	fle		x31, f2, f0	# 11
	beq		x31, x0, fle_else.18467	# 11
	fsub	f2, f0, f2	# 11
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -160(x2)	# 11
	addi	x2, x2, -164	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 164	# 11
	lw		x1, -160(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.18466	# 11
fle_else.18467:
	addi	x4, x0, 0	# 11
fle_cont.18466:
	jal		x0, fle_cont.18464	# 10
fle_else.18465:
	fsub	f2, f2, f2	# 12
	fsub	f2, f2, f0	# 12
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -160(x2)	# 12
	addi	x2, x2, -164	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 164	# 12
	lw		x1, -160(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.18464:
	ori		x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	addi	x5, x0, 0	# 14
	ble		x5, x4, ble.18469	# 14
	sub		x4, x0, x4	# 16
	sw		x1, -160(x2)	# 16
	addi	x2, x2, -164	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 164	# 16
	lw		x1, -160(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.18468	# 14
ble.18469:
	ori		x5, x0, 1	# 15
	ble		x5, x4, ble.18471	# 15
	lui		x4, %hi(l.9417)	# 15
	ori		x4, x0, %lo(l.9417)	# 15
	flw		f0, 0(x4)	# 15
	jal		x0, ble_cont.18470	# 15
ble.18471:
	sub		x4, x4, x5	# 15
	sw		x1, -160(x2)	# 15
	addi	x2, x2, -164	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 164	# 15
	lw		x1, -160(x2)	# 15
	lui		x4, %hi(l.9419)	# 15
	ori		x4, x0, %lo(l.9419)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.18470:
ble_cont.18468:
fle_cont.18454:
	flw		f1, -152(x2)	# 1744
	fsub	f0, f1, f0	# 1744
	lui		x4, %hi(l.10897)	# 1744
	ori		x4, x0, %lo(l.10897)	# 1744
	flw		f1, 0(x4)	# 1744
	fmul	f0, f0, f1	# 1744
	flw		f1, -32(x2)	# 54
	fle		x31, f1, f0	# 54
	beq		x31, x0, fle_else.18473	# 54
	flw		f1, -144(x2)	# 55
	fle		x31, f0, f1	# 55
	beq		x31, x0, fle_else.18475	# 55
	sw		x1, -160(x2)	# 56
	addi	x2, x2, -164	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 164	# 56
	lw		x1, -160(x2)	# 56
	jal		x0, fle_cont.18474	# 55
fle_else.18475:
	flw		f1, -136(x2)	# 55
	fsub	f0, f1, f0	# 55
	lw		x27, -132(x2)	# 55
	sw		x1, -160(x2)	# 55
	addi	x2, x2, -164	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 164	# 55
	lw		x1, -160(x2)	# 55
fle_cont.18474:
	jal		x0, fle_cont.18472	# 54
fle_else.18473:
	fsub	x31, x31, x31	# 54
	fsub	f0, x31, f0	# 54
	lui		x4, %hi(l.9417)	# 54
	ori		x4, x0, %lo(l.9417)	# 54
	flw		f1, 0(x4)	# 54
	fle		x31, f1, f0	# 54
	beq		x31, x0, fle_else.18477	# 54
	flw		f1, -144(x2)	# 55
	fle		x31, f0, f1	# 55
	beq		x31, x0, fle_else.18479	# 55
	sw		x1, -160(x2)	# 56
	addi	x2, x2, -164	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 164	# 56
	lw		x1, -160(x2)	# 56
	jal		x0, fle_cont.18478	# 55
fle_else.18479:
	flw		f1, -136(x2)	# 55
	fsub	f0, f1, f0	# 55
	lw		x27, -132(x2)	# 55
	sw		x1, -160(x2)	# 55
	addi	x2, x2, -164	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 164	# 55
	lw		x1, -160(x2)	# 55
fle_cont.18478:
	jal		x0, fle_cont.18476	# 54
fle_else.18477:
	fsub	x31, x31, x31	# 54
	fsub	f0, x31, f0	# 54
	fle		x31, f1, f0	# 54
	beq		x31, x0, fle_else.18481	# 54
	flw		f1, -144(x2)	# 55
	fle		x31, f0, f1	# 55
	beq		x31, x0, fle_else.18483	# 55
	sw		x1, -160(x2)	# 56
	addi	x2, x2, -164	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 164	# 56
	lw		x1, -160(x2)	# 56
	jal		x0, fle_cont.18482	# 55
fle_else.18483:
	flw		f1, -136(x2)	# 55
	fsub	f0, f1, f0	# 55
	lw		x27, -132(x2)	# 55
	sw		x1, -160(x2)	# 55
	addi	x2, x2, -164	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 164	# 55
	lw		x1, -160(x2)	# 55
fle_cont.18482:
	jal		x0, fle_cont.18480	# 54
fle_else.18481:
	fsub	x31, x31, x31	# 54
	fsub	f0, x31, f0	# 54
	lw		x27, -128(x2)	# 54
	sw		x1, -160(x2)	# 54
	addi	x2, x2, -164	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 164	# 54
	lw		x1, -160(x2)	# 54
fle_cont.18480:
fle_cont.18476:
fle_cont.18472:
	fmul	f0, f0, f0	# 8
	flw		f1, -8(x2)	# 1746
	fmul	f2, f0, f1	# 1746
	ori		x4, x0, 4	# 1746
	lw		x5, -16(x2)	# 1746
	mul		x4, x5, x4	# 1746
	lw		x5, 0(x2)	# 1746
	add		x4, x5, x4	# 1746
	fsw		f2, 0(x4)	# 1746
	lui		x4, %hi(l.9419)	# 1747
	ori		x4, x0, %lo(l.9419)	# 1747
	flw		f2, 0(x4)	# 1747
	fsub	f0, f2, f0	# 1747
	fmul	f0, f0, f1	# 1747
	ori		x4, x0, 4	# 1747
	lw		x6, -48(x2)	# 1747
	mul		x4, x6, x4	# 1747
	add		x4, x5, x4	# 1747
	fsw		f0, 0(x4)	# 1747
	jalr	x0, x1, 0	# 1747
beq.18390:
	ori		x4, x0, 4	# 1734
	mul		x4, x13, x4	# 1734
	add		x4, x5, x4	# 1734
	flw		f0, 0(x4)	# 1734
	lui		x4, %hi(l.10970)	# 1734
	ori		x4, x0, %lo(l.10970)	# 1734
	flw		f1, 0(x4)	# 1734
	fmul	f0, f0, f1	# 1734
	sw		x13, -16(x2)	# 1734
	sw		x6, 0(x2)	# 1734
	sw		x12, -24(x2)	# 1734
	fsw		f2, -8(x2)	# 1734
	addi	x27, x7, 0
	sw		x1, -160(x2)	# 1734
	addi	x2, x2, -164	# 1734
	lw		x31, 0(x27)	# 1734
	jalr	x1, x31, 0	# 1734
	addi	x2, x2, 164	# 1734
	lw		x1, -160(x2)	# 1734
	fmul	f0, f0, f0	# 8
	flw		f1, -8(x2)	# 1735
	fmul	f2, f1, f0	# 1735
	ori		x4, x0, 4	# 1735
	lw		x5, -24(x2)	# 1735
	mul		x4, x5, x4	# 1735
	lw		x5, 0(x2)	# 1735
	add		x4, x5, x4	# 1735
	fsw		f2, 0(x4)	# 1735
	lui		x4, %hi(l.9419)	# 1736
	ori		x4, x0, %lo(l.9419)	# 1736
	flw		f2, 0(x4)	# 1736
	fsub	f0, f2, f0	# 1736
	fmul	f0, f1, f0	# 1736
	ori		x4, x0, 4	# 1736
	lw		x6, -16(x2)	# 1736
	mul		x4, x6, x4	# 1736
	add		x4, x5, x4	# 1736
	fsw		f0, 0(x4)	# 1736
	jalr	x0, x1, 0	# 1736
beq.18389:
	ori		x7, x0, 4	# 1716
	mul		x7, x12, x7	# 1716
	add		x7, x5, x7	# 1716
	flw		f0, 0(x7)	# 1716
	lw		x7, 20(x4)	# 431
	ori		x8, x0, 4	# 436
	mul		x8, x12, x8	# 436
	add		x7, x7, x8	# 436
	flw		f1, 0(x7)	# 436
	fsub	f0, f0, f1	# 1716
	lui		x7, %hi(l.10985)	# 1718
	ori		x7, x0, %lo(l.10985)	# 1718
	flw		f1, 0(x7)	# 1718
	fmul	f4, f0, f1	# 1718
	sw		x6, 0(x2)	# 18
	sw		x13, -16(x2)	# 18
	fsw		f2, -8(x2)	# 18
	sw		x12, -24(x2)	# 18
	fsw		f3, -32(x2)	# 18
	fsw		f1, -160(x2)	# 18
	sw		x4, -40(x2)	# 18
	sw		x5, -44(x2)	# 18
	sw		x10, -48(x2)	# 18
	fsw		f0, -168(x2)	# 18
	fle		x31, f3, f4	# 18
	beq		x31, x0, fle_else.18487	# 18
	lui		x7, %hi(l.9417)	# 10
	ori		x7, x0, %lo(l.9417)	# 10
	flw		f5, 0(x7)	# 10
	fle		x31, f5, f4	# 10
	beq		x31, x0, fle_else.18489	# 10
	lui		x7, %hi(l.9419)	# 11
	ori		x7, x0, %lo(l.9419)	# 11
	flw		f5, 0(x7)	# 11
	fle		x31, f5, f4	# 11
	beq		x31, x0, fle_else.18491	# 11
	fsub	f4, f4, f5	# 11
	fsub	f0, f0, f0
	fadd	f0, f0, f4
	sw		x1, -176(x2)	# 11
	addi	x2, x2, -180	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 180	# 11
	lw		x1, -176(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.18490	# 11
fle_else.18491:
	addi	x4, x0, 0	# 11
fle_cont.18490:
	jal		x0, fle_cont.18488	# 10
fle_else.18489:
	fsub	x31, x31, x31	# 12
	fsub	f4, x31, f4	# 12
	fsub	f0, f0, f0
	fadd	f0, f0, f4
	sw		x1, -176(x2)	# 12
	addi	x2, x2, -180	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 180	# 12
	lw		x1, -176(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.18488:
	addi	x5, x0, 0	# 14
	ble		x5, x4, ble.18493	# 14
	sub		x4, x0, x4	# 16
	sw		x1, -176(x2)	# 16
	addi	x2, x2, -180	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 180	# 16
	lw		x1, -176(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.18492	# 14
ble.18493:
	ori		x5, x0, 1	# 15
	ble		x5, x4, ble.18495	# 15
	lui		x4, %hi(l.9417)	# 15
	ori		x4, x0, %lo(l.9417)	# 15
	flw		f0, 0(x4)	# 15
	jal		x0, ble_cont.18494	# 15
ble.18495:
	sub		x4, x4, x5	# 15
	sw		x1, -176(x2)	# 15
	addi	x2, x2, -180	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 180	# 15
	lw		x1, -176(x2)	# 15
	lui		x4, %hi(l.9419)	# 15
	ori		x4, x0, %lo(l.9419)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.18494:
ble_cont.18492:
	jal		x0, fle_cont.18486	# 18
fle_else.18487:
	lui		x7, %hi(l.9417)	# 10
	ori		x7, x0, %lo(l.9417)	# 10
	flw		f5, 0(x7)	# 10
	fle		x31, f5, f4	# 10
	beq		x31, x0, fle_else.18497	# 10
	lui		x7, %hi(l.9419)	# 11
	ori		x7, x0, %lo(l.9419)	# 11
	flw		f5, 0(x7)	# 11
	fle		x31, f5, f4	# 11
	beq		x31, x0, fle_else.18499	# 11
	fsub	f4, f4, f5	# 11
	fsub	f0, f0, f0
	fadd	f0, f0, f4
	sw		x1, -176(x2)	# 11
	addi	x2, x2, -180	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 180	# 11
	lw		x1, -176(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.18498	# 11
fle_else.18499:
	addi	x4, x0, 0	# 11
fle_cont.18498:
	jal		x0, fle_cont.18496	# 10
fle_else.18497:
	fsub	x31, x31, x31	# 12
	fsub	f4, x31, f4	# 12
	fsub	f0, f0, f0
	fadd	f0, f0, f4
	sw		x1, -176(x2)	# 12
	addi	x2, x2, -180	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 180	# 12
	lw		x1, -176(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.18496:
	ori		x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	addi	x5, x0, 0	# 14
	ble		x5, x4, ble.18501	# 14
	sub		x4, x0, x4	# 16
	sw		x1, -176(x2)	# 16
	addi	x2, x2, -180	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 180	# 16
	lw		x1, -176(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.18500	# 14
ble.18501:
	ori		x5, x0, 1	# 15
	ble		x5, x4, ble.18503	# 15
	lui		x4, %hi(l.9417)	# 15
	ori		x4, x0, %lo(l.9417)	# 15
	flw		f0, 0(x4)	# 15
	jal		x0, ble_cont.18502	# 15
ble.18503:
	sub		x4, x4, x5	# 15
	sw		x1, -176(x2)	# 15
	addi	x2, x2, -180	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 180	# 15
	lw		x1, -176(x2)	# 15
	lui		x4, %hi(l.9419)	# 15
	ori		x4, x0, %lo(l.9419)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.18502:
ble_cont.18500:
fle_cont.18486:
	lui		x4, %hi(l.10995)	# 1718
	ori		x4, x0, %lo(l.10995)	# 1718
	flw		f1, 0(x4)	# 1718
	fmul	f0, f0, f1	# 1718
	flw		f2, -168(x2)	# 1719
	fsub	f0, f2, f0	# 1719
	lui		x4, %hi(l.10948)	# 1719
	ori		x4, x0, %lo(l.10948)	# 1719
	flw		f2, 0(x4)	# 1719
	fle		x31, f2, f0	# 6
	beq		x31, x0, fle_else.18505	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18504	# 6
fle_else.18505:
	ori		x4, x0, 1	# 6
fle_cont.18504:
	ori		x5, x0, 4	# 1721
	lw		x6, -48(x2)	# 1721
	mul		x5, x6, x5	# 1721
	lw		x7, -44(x2)	# 1721
	add		x5, x7, x5	# 1721
	flw		f0, 0(x5)	# 1721
	lw		x5, -40(x2)	# 451
	lw		x5, 20(x5)	# 451
	ori		x7, x0, 4	# 456
	mul		x6, x6, x7	# 456
	add		x5, x5, x6	# 456
	flw		f3, 0(x5)	# 456
	fsub	f0, f0, f3	# 1721
	flw		f3, -160(x2)	# 1723
	fmul	f3, f0, f3	# 1723
	flw		f4, -32(x2)	# 18
	sw		x4, -176(x2)	# 18
	fsw		f2, -184(x2)	# 18
	fsw		f0, -192(x2)	# 18
	fsw		f1, -200(x2)	# 18
	fle		x31, f4, f3	# 18
	beq		x31, x0, fle_else.18508	# 18
	lui		x5, %hi(l.9417)	# 10
	ori		x5, x0, %lo(l.9417)	# 10
	flw		f5, 0(x5)	# 10
	fle		x31, f5, f3	# 10
	beq		x31, x0, fle_else.18510	# 10
	lui		x5, %hi(l.9419)	# 11
	ori		x5, x0, %lo(l.9419)	# 11
	flw		f5, 0(x5)	# 11
	fle		x31, f5, f3	# 11
	beq		x31, x0, fle_else.18512	# 11
	fsub	f3, f3, f5	# 11
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -208(x2)	# 11
	addi	x2, x2, -212	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 212	# 11
	lw		x1, -208(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.18511	# 11
fle_else.18512:
	addi	x4, x0, 0	# 11
fle_cont.18511:
	jal		x0, fle_cont.18509	# 10
fle_else.18510:
	fsub	x31, x31, x31	# 12
	fsub	f3, x31, f3	# 12
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -208(x2)	# 12
	addi	x2, x2, -212	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 212	# 12
	lw		x1, -208(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.18509:
	addi	x5, x0, 0	# 14
	ble		x5, x4, ble.18514	# 14
	sub		x4, x0, x4	# 16
	sw		x1, -208(x2)	# 16
	addi	x2, x2, -212	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 212	# 16
	lw		x1, -208(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.18513	# 14
ble.18514:
	ori		x5, x0, 1	# 15
	ble		x5, x4, ble.18516	# 15
	lui		x4, %hi(l.9417)	# 15
	ori		x4, x0, %lo(l.9417)	# 15
	flw		f0, 0(x4)	# 15
	jal		x0, ble_cont.18515	# 15
ble.18516:
	sub		x4, x4, x5	# 15
	sw		x1, -208(x2)	# 15
	addi	x2, x2, -212	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 212	# 15
	lw		x1, -208(x2)	# 15
	lui		x4, %hi(l.9419)	# 15
	ori		x4, x0, %lo(l.9419)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.18515:
ble_cont.18513:
	jal		x0, fle_cont.18507	# 18
fle_else.18508:
	lui		x5, %hi(l.9417)	# 10
	ori		x5, x0, %lo(l.9417)	# 10
	flw		f5, 0(x5)	# 10
	fle		x31, f5, f3	# 10
	beq		x31, x0, fle_else.18518	# 10
	lui		x5, %hi(l.9419)	# 11
	ori		x5, x0, %lo(l.9419)	# 11
	flw		f5, 0(x5)	# 11
	fle		x31, f5, f3	# 11
	beq		x31, x0, fle_else.18520	# 11
	fsub	f3, f3, f5	# 11
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -208(x2)	# 11
	addi	x2, x2, -212	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 212	# 11
	lw		x1, -208(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.18519	# 11
fle_else.18520:
	addi	x4, x0, 0	# 11
fle_cont.18519:
	jal		x0, fle_cont.18517	# 10
fle_else.18518:
	fsub	x31, x31, x31	# 12
	fsub	f3, x31, f3	# 12
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -208(x2)	# 12
	addi	x2, x2, -212	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 212	# 12
	lw		x1, -208(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.18517:
	ori		x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	addi	x5, x0, 0	# 14
	ble		x5, x4, ble.18522	# 14
	sub		x4, x0, x4	# 16
	sw		x1, -208(x2)	# 16
	addi	x2, x2, -212	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 212	# 16
	lw		x1, -208(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.18521	# 14
ble.18522:
	ori		x5, x0, 1	# 15
	ble		x5, x4, ble.18524	# 15
	lui		x4, %hi(l.9417)	# 15
	ori		x4, x0, %lo(l.9417)	# 15
	flw		f0, 0(x4)	# 15
	jal		x0, ble_cont.18523	# 15
ble.18524:
	sub		x4, x4, x5	# 15
	sw		x1, -208(x2)	# 15
	addi	x2, x2, -212	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 212	# 15
	lw		x1, -208(x2)	# 15
	lui		x4, %hi(l.9419)	# 15
	ori		x4, x0, %lo(l.9419)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.18523:
ble_cont.18521:
fle_cont.18507:
	flw		f1, -200(x2)	# 1723
	fmul	f0, f0, f1	# 1723
	flw		f1, -192(x2)	# 1724
	fsub	f0, f1, f0	# 1724
	flw		f1, -184(x2)	# 6
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.18526	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18525	# 6
fle_else.18526:
	ori		x4, x0, 1	# 6
fle_cont.18525:
	lw		x5, -24(x2)	# 1727
	lw		x6, -176(x2)	# 1727
	beq		x6, x5, beq.18528	# 1727
	beq		x4, x5, beq.18530	# 1728
	flw		f0, -8(x2)	# 1728
	jal		x0, beq_cont.18529	# 1728
beq.18530:
	flw		f0, -32(x2)	# 1728
beq_cont.18529:
	jal		x0, beq_cont.18527	# 1727
beq.18528:
	beq		x4, x5, beq.18532	# 1729
	flw		f0, -32(x2)	# 1729
	jal		x0, beq_cont.18531	# 1729
beq.18532:
	flw		f0, -8(x2)	# 1729
beq_cont.18531:
beq_cont.18527:
	ori		x4, x0, 4	# 1726
	lw		x5, -16(x2)	# 1726
	mul		x4, x5, x4	# 1726
	lw		x5, 0(x2)	# 1726
	add		x4, x5, x4	# 1726
	fsw		f0, 0(x4)	# 1726
	jalr	x0, x1, 0	# 1726
add_light.2862:
	lw		x4, 28(x27)	# 1788
	lw		x5, 24(x27)	# 1788
	lw		x6, 20(x27)	# 1788
	lw		x7, 16(x27)	# 1788
	lw		x8, 12(x27)	# 1788
	lw		x9, 8(x27)	# 1788
	flw		f3, 4(x27)	# 2
	fle		x31, f0, f3	# 2
	beq		x31, x0, fle_else.18535	# 2
	addi	x10, x0, 0	# 2
	jal		x0, fle_cont.18534	# 2
fle_else.18535:
	ori		x10, x0, 1	# 2
fle_cont.18534:
	sw		x7, 0(x2)	# 1788
	sw		x9, -4(x2)	# 1788
	sw		x6, -8(x2)	# 1788
	fsw		f2, -16(x2)	# 1788
	sw		x8, -24(x2)	# 1788
	fsw		f3, -32(x2)	# 1788
	fsw		f1, -40(x2)	# 1788
	beq		x10, x8, beq.18539	# 1788
	addi	x27, x4, 0
	addi	x4, x6, 0
	sw		x1, -48(x2)	# 1789
	addi	x2, x2, -52	# 1789
	lw		x31, 0(x27)	# 1789
	jalr	x1, x31, 0	# 1789
	addi	x2, x2, 52	# 1789
	lw		x1, -48(x2)	# 1789
	jal		x0, beq_cont.18538	# 1788
beq.18539:
beq_cont.18538:
	flw		f0, -32(x2)	# 2
	flw		f1, -40(x2)	# 2
	fle		x31, f1, f0	# 2
	beq		x31, x0, fle_else.18541	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.18540	# 2
fle_else.18541:
	ori		x4, x0, 1	# 2
fle_cont.18540:
	lw		x5, -24(x2)	# 1793
	beq		x4, x5, beq.18542	# 1793
	fmul	f0, f1, f1	# 8
	fmul	f0, f0, f0	# 8
	flw		f1, -16(x2)	# 1794
	fmul	f0, f0, f1	# 1794
	ori		x4, x0, 4	# 1795
	mul		x4, x5, x4	# 1795
	lw		x6, -8(x2)	# 1795
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
beq.18542:
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
	ble		x15, x4, ble.18545	# 1804
	jalr	x0, x1, 0	# 1824
ble.18545:
	ori		x17, x0, 4	# 1805
	mul		x17, x4, x17	# 1805
	add		x8, x8, x17	# 1805
	lw		x8, 0(x8)	# 1805
	lw		x17, 4(x8)	# 661
	sw		x27, 0(x2)	# 1809
	sw		x16, -4(x2)	# 1809
	sw		x4, -8(x2)	# 1809
	fsw		f1, -16(x2)	# 1809
	sw		x14, -24(x2)	# 1809
	sw		x5, -28(x2)	# 1809
	fsw		f0, -32(x2)	# 1809
	sw		x10, -40(x2)	# 1809
	sw		x6, -44(x2)	# 1809
	sw		x17, -48(x2)	# 1809
	sw		x7, -52(x2)	# 1809
	sw		x9, -56(x2)	# 1809
	sw		x8, -60(x2)	# 1809
	sw		x12, -64(x2)	# 1809
	sw		x13, -68(x2)	# 1809
	sw		x15, -72(x2)	# 1809
	addi	x4, x17, 0
	addi	x27, x11, 0
	sw		x1, -76(x2)	# 1809
	addi	x2, x2, -80	# 1809
	lw		x31, 0(x27)	# 1809
	jalr	x1, x31, 0	# 1809
	addi	x2, x2, 80	# 1809
	lw		x1, -76(x2)	# 1809
	lw		x5, -72(x2)	# 1809
	beq		x4, x5, beq.18549	# 1809
	addi	x4, x0, 0	# 1810
	ori		x5, x0, 4	# 1810
	mul		x4, x4, x5	# 1810
	lw		x5, -68(x2)	# 1810
	add		x4, x5, x4	# 1810
	lw		x4, 0(x4)	# 1810
	ori		x5, x0, 4	# 1810
	mul		x4, x4, x5	# 1810
	addi	x5, x0, 0	# 1810
	ori		x6, x0, 4	# 1810
	mul		x5, x5, x6	# 1810
	lw		x6, -64(x2)	# 1810
	add		x5, x6, x5	# 1810
	lw		x5, 0(x5)	# 1810
	add		x4, x4, x5	# 1810
	lw		x5, -60(x2)	# 655
	lw		x6, 0(x5)	# 655
	beq		x4, x6, beq.18551	# 1811
	jal		x0, beq_cont.18550	# 1811
beq.18551:
	addi	x4, x0, 0	# 1813
	addi	x6, x0, 0	# 1813
	ori		x7, x0, 4	# 1813
	mul		x6, x6, x7	# 1813
	lw		x7, -56(x2)	# 1813
	add		x6, x7, x6	# 1813
	lw		x6, 0(x6)	# 1813
	lw		x27, -52(x2)	# 1813
	addi	x5, x6, 0
	sw		x1, -76(x2)	# 1813
	addi	x2, x2, -80	# 1813
	lw		x31, 0(x27)	# 1813
	jalr	x1, x31, 0	# 1813
	addi	x2, x2, 80	# 1813
	lw		x1, -76(x2)	# 1813
	addi	x5, x0, 0	# 1813
	beq		x4, x5, beq.18553	# 1813
	jal		x0, beq_cont.18552	# 1813
beq.18553:
	lw		x4, -48(x2)	# 639
	lw		x5, 0(x4)	# 639
	lw		x6, -40(x2)	# 1815
	lw		x27, -44(x2)	# 1815
	addi	x4, x6, 0
	sw		x1, -76(x2)	# 1815
	addi	x2, x2, -80	# 1815
	lw		x31, 0(x27)	# 1815
	jalr	x1, x31, 0	# 1815
	addi	x2, x2, 80	# 1815
	lw		x1, -76(x2)	# 1815
	lw		x4, -60(x2)	# 1817
	flw		f1, 8(x4)	# 1817
	flw		f2, -32(x2)	# 1817
	fmul	f3, f1, f2	# 1817
	fmul	f0, f3, f0	# 1817
	lw		x4, -48(x2)	# 639
	lw		x5, 0(x4)	# 639
	lw		x4, -28(x2)	# 1818
	lw		x27, -44(x2)	# 1818
	fsw		f0, -80(x2)	# 1818
	fsw		f1, -88(x2)	# 1818
	sw		x1, -96(x2)	# 1818
	addi	x2, x2, -100	# 1818
	lw		x31, 0(x27)	# 1818
	jalr	x1, x31, 0	# 1818
	addi	x2, x2, 100	# 1818
	lw		x1, -96(x2)	# 1818
	flw		f1, -88(x2)	# 1818
	fmul	f1, f1, f0	# 1818
	flw		f0, -80(x2)	# 1819
	flw		f2, -16(x2)	# 1819
	lw		x27, -24(x2)	# 1819
	sw		x1, -96(x2)	# 1819
	addi	x2, x2, -100	# 1819
	lw		x31, 0(x27)	# 1819
	jalr	x1, x31, 0	# 1819
	addi	x2, x2, 100	# 1819
	lw		x1, -96(x2)	# 1819
beq_cont.18552:
beq_cont.18550:
	jal		x0, beq_cont.18548	# 1809
beq.18549:
beq_cont.18548:
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
	sw		x11, 0(x2)	# 1832
	lw		x11, 36(x27)	# 1832
	sw		x10, -4(x2)	# 1832
	lw		x10, 32(x27)	# 1832
	sw		x21, -8(x2)	# 1832
	lw		x21, 28(x27)	# 1832
	sw		x16, -12(x2)	# 1832
	lw		x16, 24(x27)	# 1832
	sw		x22, -16(x2)	# 1832
	lw		x22, 20(x27)	# 1832
	sw		x13, -20(x2)	# 1832
	lw		x13, 16(x27)	# 1832
	sw		x16, -24(x2)	# 1832
	lw		x16, 12(x27)	# 1832
	sw		x15, -28(x2)	# 1832
	lw		x15, 8(x27)	# 1832
	flw		f2, 4(x27)	# 1832
	sw		x27, -32(x2)	# 1832
	ori		x27, x0, 4	# 1832
	ble		x4, x27, ble.18555	# 1832
	jalr	x0, x1, 0	# 1913
ble.18555:
	sw		x18, -36(x2)	# 577
	lw		x18, 8(x6)	# 577
	fsw		f1, -40(x2)	# 1834
	sw		x8, -48(x2)	# 1834
	sw		x12, -52(x2)	# 1834
	sw		x6, -56(x2)	# 1834
	sw		x25, -60(x2)	# 1834
	sw		x27, -64(x2)	# 1834
	sw		x9, -68(x2)	# 1834
	sw		x14, -72(x2)	# 1834
	sw		x26, -76(x2)	# 1834
	sw		x11, -80(x2)	# 1834
	sw		x20, -84(x2)	# 1834
	sw		x10, -88(x2)	# 1834
	sw		x19, -92(x2)	# 1834
	sw		x31, -96(x2)	# 1834
	sw		x22, -100(x2)	# 1834
	sw		x15, -104(x2)	# 1834
	sw		x17, -108(x2)	# 1834
	sw		x21, -112(x2)	# 1834
	fsw		f0, -120(x2)	# 1834
	fsw		f2, -128(x2)	# 1834
	sw		x23, -136(x2)	# 1834
	sw		x5, -140(x2)	# 1834
	sw		x7, -144(x2)	# 1834
	sw		x13, -148(x2)	# 1834
	sw		x18, -152(x2)	# 1834
	sw		x4, -156(x2)	# 1834
	sw		x16, -160(x2)	# 1834
	addi	x4, x5, 0
	addi	x27, x24, 0
	sw		x1, -164(x2)	# 1834
	addi	x2, x2, -168	# 1834
	lw		x31, 0(x27)	# 1834
	jalr	x1, x31, 0	# 1834
	addi	x2, x2, 168	# 1834
	lw		x1, -164(x2)	# 1834
	lw		x5, -160(x2)	# 1834
	beq		x4, x5, beq.18558	# 1834
	ori		x4, x0, 4	# 1836
	mul		x4, x5, x4	# 1836
	lw		x6, -96(x2)	# 1836
	add		x4, x6, x4	# 1836
	lw		x4, 0(x4)	# 1836
	ori		x6, x0, 4	# 1837
	mul		x6, x4, x6	# 1837
	lw		x7, -92(x2)	# 1837
	add		x6, x7, x6	# 1837
	lw		x6, 0(x6)	# 1837
	lw		x7, 8(x6)	# 363
	lw		x8, 28(x6)	# 461
	ori		x9, x0, 4	# 466
	mul		x9, x5, x9	# 466
	add		x8, x8, x9	# 466
	flw		f0, 0(x8)	# 466
	flw		f1, -120(x2)	# 1839
	fmul	f0, f0, f1	# 1839
	lw		x8, 4(x6)	# 353
	lw		x9, -104(x2)	# 1693
	sw		x7, -164(x2)	# 1693
	fsw		f0, -168(x2)	# 1693
	sw		x4, -176(x2)	# 1693
	sw		x6, -180(x2)	# 1693
	beq		x8, x9, beq.18560	# 1693
	ori		x10, x0, 2	# 1695
	beq		x8, x10, beq.18562	# 1695
	lw		x27, -80(x2)	# 1698
	addi	x4, x6, 0
	sw		x1, -184(x2)	# 1698
	addi	x2, x2, -188	# 1698
	lw		x31, 0(x27)	# 1698
	jalr	x1, x31, 0	# 1698
	addi	x2, x2, 188	# 1698
	lw		x1, -184(x2)	# 1698
	jal		x0, beq_cont.18561	# 1695
beq.18562:
	lw		x8, 16(x6)	# 391
	ori		x10, x0, 4	# 396
	mul		x10, x5, x10	# 396
	add		x8, x8, x10	# 396
	flw		f2, 0(x8)	# 396
	fsub	x31, x31, x31	# 4
	fsub	f2, x31, f2	# 4
	ori		x8, x0, 4	# 1663
	mul		x8, x5, x8	# 1663
	lw		x10, -84(x2)	# 1663
	add		x8, x10, x8	# 1663
	fsw		f2, 0(x8)	# 1663
	lw		x8, 16(x6)	# 401
	ori		x11, x0, 4	# 406
	mul		x11, x9, x11	# 406
	add		x8, x8, x11	# 406
	flw		f2, 0(x8)	# 406
	fsub	x31, x31, x31	# 4
	fsub	f2, x31, f2	# 4
	ori		x8, x0, 4	# 1664
	mul		x8, x9, x8	# 1664
	add		x8, x10, x8	# 1664
	fsw		f2, 0(x8)	# 1664
	lw		x8, 16(x6)	# 411
	ori		x11, x0, 4	# 416
	lw		x12, -100(x2)	# 416
	mul		x11, x12, x11	# 416
	add		x8, x8, x11	# 416
	flw		f2, 0(x8)	# 416
	fsub	x31, x31, x31	# 4
	fsub	f2, x31, f2	# 4
	ori		x8, x0, 4	# 1665
	mul		x8, x12, x8	# 1665
	add		x8, x10, x8	# 1665
	fsw		f2, 0(x8)	# 1665
beq_cont.18561:
	jal		x0, beq_cont.18559	# 1693
beq.18560:
	lw		x8, -140(x2)	# 1694
	lw		x27, -88(x2)	# 1694
	addi	x4, x8, 0
	sw		x1, -184(x2)	# 1694
	addi	x2, x2, -188	# 1694
	lw		x31, 0(x27)	# 1694
	jalr	x1, x31, 0	# 1694
	addi	x2, x2, 188	# 1694
	lw		x1, -184(x2)	# 1694
beq_cont.18559:
	ori		x4, x0, 4	# 259
	lw		x5, -160(x2)	# 259
	mul		x4, x5, x4	# 259
	lw		x6, -76(x2)	# 259
	add		x4, x6, x4	# 259
	flw		f0, 0(x4)	# 259
	ori		x4, x0, 4	# 259
	mul		x4, x5, x4	# 259
	lw		x7, -72(x2)	# 259
	add		x4, x7, x4	# 259
	fsw		f0, 0(x4)	# 259
	ori		x4, x0, 4	# 260
	lw		x8, -104(x2)	# 260
	mul		x4, x8, x4	# 260
	add		x4, x6, x4	# 260
	flw		f0, 0(x4)	# 260
	ori		x4, x0, 4	# 260
	mul		x4, x8, x4	# 260
	add		x4, x7, x4	# 260
	fsw		f0, 0(x4)	# 260
	ori		x4, x0, 4	# 261
	lw		x9, -100(x2)	# 261
	mul		x4, x9, x4	# 261
	add		x4, x6, x4	# 261
	flw		f0, 0(x4)	# 261
	ori		x4, x0, 4	# 261
	mul		x4, x9, x4	# 261
	add		x4, x7, x4	# 261
	fsw		f0, 0(x4)	# 261
	lw		x4, -180(x2)	# 1843
	lw		x27, -68(x2)	# 1843
	addi	x5, x6, 0
	sw		x1, -184(x2)	# 1843
	addi	x2, x2, -188	# 1843
	lw		x31, 0(x27)	# 1843
	jalr	x1, x31, 0	# 1843
	addi	x2, x2, 188	# 1843
	lw		x1, -184(x2)	# 1843
	lw		x4, -64(x2)	# 1846
	lw		x5, -176(x2)	# 1846
	mul		x5, x5, x4	# 1846
	ori		x6, x0, 4	# 1846
	lw		x7, -160(x2)	# 1846
	mul		x6, x7, x6	# 1846
	lw		x8, -60(x2)	# 1846
	add		x6, x8, x6	# 1846
	lw		x6, 0(x6)	# 1846
	add		x5, x5, x6	# 1846
	ori		x6, x0, 4	# 1846
	lw		x8, -156(x2)	# 1846
	mul		x6, x8, x6	# 1846
	lw		x9, -152(x2)	# 1846
	add		x6, x9, x6	# 1846
	sw		x5, 0(x6)	# 1846
	lw		x5, -56(x2)	# 569
	lw		x6, 4(x5)	# 569
	ori		x10, x0, 4	# 1848
	mul		x10, x8, x10	# 1848
	add		x6, x6, x10	# 1848
	lw		x6, 0(x6)	# 1848
	ori		x10, x0, 4	# 259
	mul		x10, x7, x10	# 259
	lw		x11, -76(x2)	# 259
	add		x10, x11, x10	# 259
	flw		f0, 0(x10)	# 259
	ori		x10, x0, 4	# 259
	mul		x10, x7, x10	# 259
	add		x10, x6, x10	# 259
	fsw		f0, 0(x10)	# 259
	ori		x10, x0, 4	# 260
	lw		x12, -104(x2)	# 260
	mul		x10, x12, x10	# 260
	add		x10, x11, x10	# 260
	flw		f0, 0(x10)	# 260
	ori		x10, x0, 4	# 260
	mul		x10, x12, x10	# 260
	add		x10, x6, x10	# 260
	fsw		f0, 0(x10)	# 260
	ori		x10, x0, 4	# 261
	lw		x13, -100(x2)	# 261
	mul		x10, x13, x10	# 261
	add		x10, x11, x10	# 261
	flw		f0, 0(x10)	# 261
	ori		x10, x0, 4	# 261
	mul		x10, x13, x10	# 261
	add		x6, x6, x10	# 261
	fsw		f0, 0(x6)	# 261
	lw		x6, 12(x5)	# 584
	lw		x10, -180(x2)	# 461
	lw		x14, 28(x10)	# 461
	ori		x15, x0, 4	# 466
	mul		x15, x7, x15	# 466
	add		x14, x14, x15	# 466
	flw		f0, 0(x14)	# 466
	lui		x14, %hi(l.9436)	# 1852
	ori		x14, x0, %lo(l.9436)	# 1852
	flw		f1, 0(x14)	# 1852
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.18564	# 6
	addi	x14, x0, 0	# 6
	jal		x0, fle_cont.18563	# 6
fle_else.18564:
	ori		x14, x0, 1	# 6
fle_cont.18563:
	beq		x14, x7, beq.18566	# 1852
	addi	x14, x0, 0	# 1853
	ori		x15, x0, 4	# 1853
	mul		x15, x8, x15	# 1853
	add		x6, x6, x15	# 1853
	sw		x14, 0(x6)	# 1853
	jal		x0, beq_cont.18565	# 1852
beq.18566:
	ori		x14, x0, 1	# 1855
	ori		x15, x0, 4	# 1855
	mul		x15, x8, x15	# 1855
	add		x6, x6, x15	# 1855
	sw		x14, 0(x6)	# 1855
	lw		x6, 16(x5)	# 591
	ori		x14, x0, 4	# 1857
	mul		x14, x8, x14	# 1857
	add		x14, x6, x14	# 1857
	lw		x14, 0(x14)	# 1857
	ori		x15, x0, 4	# 259
	mul		x15, x7, x15	# 259
	lw		x16, -52(x2)	# 259
	add		x15, x16, x15	# 259
	flw		f0, 0(x15)	# 259
	ori		x15, x0, 4	# 259
	mul		x15, x7, x15	# 259
	add		x15, x14, x15	# 259
	fsw		f0, 0(x15)	# 259
	ori		x15, x0, 4	# 260
	mul		x15, x12, x15	# 260
	add		x15, x16, x15	# 260
	flw		f0, 0(x15)	# 260
	ori		x15, x0, 4	# 260
	mul		x15, x12, x15	# 260
	add		x15, x14, x15	# 260
	fsw		f0, 0(x15)	# 260
	ori		x15, x0, 4	# 261
	mul		x15, x13, x15	# 261
	add		x15, x16, x15	# 261
	flw		f0, 0(x15)	# 261
	ori		x15, x0, 4	# 261
	mul		x15, x13, x15	# 261
	add		x14, x14, x15	# 261
	fsw		f0, 0(x14)	# 261
	ori		x14, x0, 4	# 1858
	mul		x14, x8, x14	# 1858
	add		x6, x6, x14	# 1858
	lw		x6, 0(x6)	# 1858
	lui		x14, %hi(l.11151)	# 1858
	ori		x14, x0, %lo(l.11151)	# 1858
	flw		f0, 0(x14)	# 1858
	flw		f1, -168(x2)	# 1858
	fmul	f0, f0, f1	# 1858
	ori		x14, x0, 4	# 325
	mul		x14, x7, x14	# 325
	add		x14, x6, x14	# 325
	flw		f2, 0(x14)	# 325
	fmul	f2, f2, f0	# 325
	ori		x14, x0, 4	# 325
	mul		x14, x7, x14	# 325
	add		x14, x6, x14	# 325
	fsw		f2, 0(x14)	# 325
	ori		x14, x0, 4	# 326
	mul		x14, x12, x14	# 326
	add		x14, x6, x14	# 326
	flw		f2, 0(x14)	# 326
	fmul	f2, f2, f0	# 326
	ori		x14, x0, 4	# 326
	mul		x14, x12, x14	# 326
	add		x14, x6, x14	# 326
	fsw		f2, 0(x14)	# 326
	ori		x14, x0, 4	# 327
	mul		x14, x13, x14	# 327
	add		x14, x6, x14	# 327
	flw		f2, 0(x14)	# 327
	fmul	f0, f2, f0	# 327
	ori		x14, x0, 4	# 327
	mul		x14, x13, x14	# 327
	add		x6, x6, x14	# 327
	fsw		f0, 0(x6)	# 327
	lw		x6, 28(x5)	# 628
	ori		x14, x0, 4	# 1860
	mul		x14, x8, x14	# 1860
	add		x6, x6, x14	# 1860
	lw		x6, 0(x6)	# 1860
	ori		x14, x0, 4	# 259
	mul		x14, x7, x14	# 259
	lw		x15, -84(x2)	# 259
	add		x14, x15, x14	# 259
	flw		f0, 0(x14)	# 259
	ori		x14, x0, 4	# 259
	mul		x14, x7, x14	# 259
	add		x14, x6, x14	# 259
	fsw		f0, 0(x14)	# 259
	ori		x14, x0, 4	# 260
	mul		x14, x12, x14	# 260
	add		x14, x15, x14	# 260
	flw		f0, 0(x14)	# 260
	ori		x14, x0, 4	# 260
	mul		x14, x12, x14	# 260
	add		x14, x6, x14	# 260
	fsw		f0, 0(x14)	# 260
	ori		x14, x0, 4	# 261
	mul		x14, x13, x14	# 261
	add		x14, x15, x14	# 261
	flw		f0, 0(x14)	# 261
	ori		x14, x0, 4	# 261
	mul		x14, x13, x14	# 261
	add		x6, x6, x14	# 261
	fsw		f0, 0(x6)	# 261
beq_cont.18565:
	lui		x6, %hi(l.11192)	# 1863
	ori		x6, x0, %lo(l.11192)	# 1863
	flw		f0, 0(x6)	# 1863
	lw		x6, -140(x2)	# 1863
	lw		x14, -84(x2)	# 1863
	lw		x27, -144(x2)	# 1863
	fsw		f0, -184(x2)	# 1863
	addi	x5, x14, 0
	addi	x4, x6, 0
	sw		x1, -192(x2)	# 1863
	addi	x2, x2, -196	# 1863
	lw		x31, 0(x27)	# 1863
	jalr	x1, x31, 0	# 1863
	addi	x2, x2, 196	# 1863
	lw		x1, -192(x2)	# 1863
	flw		f1, -184(x2)	# 1863
	fmul	f0, f1, f0	# 1863
	lw		x4, -140(x2)	# 1865
	lw		x5, -84(x2)	# 1865
	lw		x27, -48(x2)	# 1865
	sw		x1, -192(x2)	# 1865
	addi	x2, x2, -196	# 1865
	lw		x31, 0(x27)	# 1865
	jalr	x1, x31, 0	# 1865
	addi	x2, x2, 196	# 1865
	lw		x1, -192(x2)	# 1865
	lw		x4, -180(x2)	# 471
	lw		x5, 28(x4)	# 471
	ori		x6, x0, 4	# 476
	lw		x7, -104(x2)	# 476
	mul		x6, x7, x6	# 476
	add		x5, x5, x6	# 476
	flw		f0, 0(x5)	# 476
	flw		f1, -120(x2)	# 1867
	fmul	f0, f1, f0	# 1867
	ori		x5, x0, 4	# 1870
	lw		x6, -160(x2)	# 1870
	mul		x5, x6, x5	# 1870
	lw		x8, -36(x2)	# 1870
	add		x5, x8, x5	# 1870
	lw		x5, 0(x5)	# 1870
	lw		x27, -28(x2)	# 1870
	fsw		f0, -192(x2)	# 1870
	addi	x4, x6, 0
	sw		x1, -200(x2)	# 1870
	addi	x2, x2, -204	# 1870
	lw		x31, 0(x27)	# 1870
	jalr	x1, x31, 0	# 1870
	addi	x2, x2, 204	# 1870
	lw		x1, -200(x2)	# 1870
	lw		x5, -160(x2)	# 1870
	beq		x4, x5, beq.18568	# 1870
	jal		x0, beq_cont.18567	# 1870
beq.18568:
	lw		x4, -84(x2)	# 1871
	lw		x6, -136(x2)	# 1871
	lw		x27, -144(x2)	# 1871
	addi	x5, x6, 0
	sw		x1, -200(x2)	# 1871
	addi	x2, x2, -204	# 1871
	lw		x31, 0(x27)	# 1871
	jalr	x1, x31, 0	# 1871
	addi	x2, x2, 204	# 1871
	lw		x1, -200(x2)	# 1871
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	flw		f1, -168(x2)	# 1871
	fmul	f0, f0, f1	# 1871
	lw		x4, -140(x2)	# 1872
	lw		x5, -136(x2)	# 1872
	lw		x27, -144(x2)	# 1872
	fsw		f0, -200(x2)	# 1872
	sw		x1, -208(x2)	# 1872
	addi	x2, x2, -212	# 1872
	lw		x31, 0(x27)	# 1872
	jalr	x1, x31, 0	# 1872
	addi	x2, x2, 212	# 1872
	lw		x1, -208(x2)	# 1872
	fsub	f1, f1, f1	# 4
	fsub	f1, f1, f0	# 4
	flw		f0, -200(x2)	# 1873
	flw		f2, -192(x2)	# 1873
	lw		x27, -24(x2)	# 1873
	sw		x1, -208(x2)	# 1873
	addi	x2, x2, -212	# 1873
	lw		x31, 0(x27)	# 1873
	jalr	x1, x31, 0	# 1873
	addi	x2, x2, 212	# 1873
	lw		x1, -208(x2)	# 1873
beq_cont.18567:
	ori		x4, x0, 4	# 259
	lw		x5, -160(x2)	# 259
	mul		x4, x5, x4	# 259
	lw		x6, -76(x2)	# 259
	add		x4, x6, x4	# 259
	flw		f0, 0(x4)	# 259
	ori		x4, x0, 4	# 259
	mul		x4, x5, x4	# 259
	lw		x7, -20(x2)	# 259
	add		x4, x7, x4	# 259
	fsw		f0, 0(x4)	# 259
	ori		x4, x0, 4	# 260
	lw		x8, -104(x2)	# 260
	mul		x4, x8, x4	# 260
	add		x4, x6, x4	# 260
	flw		f0, 0(x4)	# 260
	ori		x4, x0, 4	# 260
	mul		x4, x8, x4	# 260
	add		x4, x7, x4	# 260
	fsw		f0, 0(x4)	# 260
	ori		x4, x0, 4	# 261
	lw		x9, -100(x2)	# 261
	mul		x4, x9, x4	# 261
	add		x4, x6, x4	# 261
	flw		f0, 0(x4)	# 261
	ori		x4, x0, 4	# 261
	mul		x4, x9, x4	# 261
	add		x4, x7, x4	# 261
	fsw		f0, 0(x4)	# 261
	ori		x4, x0, 4	# 1315
	mul		x4, x5, x4	# 1315
	lw		x7, -16(x2)	# 1315
	add		x4, x7, x4	# 1315
	lw		x4, 0(x4)	# 1315
	sub		x4, x4, x8	# 1315
	lw		x27, -12(x2)	# 1315
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -208(x2)	# 1315
	addi	x2, x2, -212	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 212	# 1315
	lw		x1, -208(x2)	# 1315
	ori		x4, x0, 4	# 1878
	lw		x5, -160(x2)	# 1878
	mul		x4, x5, x4	# 1878
	lw		x6, -8(x2)	# 1878
	add		x4, x6, x4	# 1878
	lw		x4, 0(x4)	# 1878
	lw		x6, -104(x2)	# 1878
	sub		x4, x4, x6	# 1878
	flw		f0, -168(x2)	# 1878
	flw		f1, -192(x2)	# 1878
	lw		x7, -140(x2)	# 1878
	lw		x27, -4(x2)	# 1878
	addi	x5, x7, 0
	sw		x1, -208(x2)	# 1878
	addi	x2, x2, -212	# 1878
	lw		x31, 0(x27)	# 1878
	jalr	x1, x31, 0	# 1878
	addi	x2, x2, 212	# 1878
	lw		x1, -208(x2)	# 1878
	lui		x4, %hi(l.11224)	# 1881
	ori		x4, x0, %lo(l.11224)	# 1881
	flw		f0, 0(x4)	# 1881
	flw		f1, -120(x2)	# 6
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.18570	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.18569	# 6
fle_else.18570:
	ori		x4, x0, 1	# 6
fle_cont.18569:
	lw		x5, -160(x2)	# 1881
	beq		x4, x5, beq.18571	# 1881
	lw		x4, -156(x2)	# 1883
	lw		x6, -64(x2)	# 1883
	ble		x6, x4, ble.18573	# 1883
	addi	x6, x4, 1	# 1884
	lui		x7, -1	# 1884
	ori		x7, x0, -1	# 1884
	ori		x8, x0, 4	# 1884
	mul		x6, x6, x8	# 1884
	lw		x8, -152(x2)	# 1884
	add		x6, x8, x6	# 1884
	sw		x7, 0(x6)	# 1884
	jal		x0, ble_cont.18572	# 1883
ble.18573:
ble_cont.18572:
	lw		x6, -100(x2)	# 1887
	lw		x7, -164(x2)	# 1887
	beq		x7, x6, beq.18574	# 1887
	jalr	x0, x1, 0	# 1890
beq.18574:
	lui		x6, %hi(l.9419)	# 1888
	ori		x6, x0, %lo(l.9419)	# 1888
	flw		f0, 0(x6)	# 1888
	lw		x6, -180(x2)	# 461
	lw		x6, 28(x6)	# 461
	ori		x7, x0, 4	# 466
	mul		x7, x5, x7	# 466
	add		x6, x6, x7	# 466
	flw		f2, 0(x6)	# 466
	fsub	f0, f0, f2	# 1888
	fmul	f0, f1, f0	# 1888
	lw		x6, -104(x2)	# 1889
	add		x4, x4, x6	# 1889
	ori		x6, x0, 4	# 1889
	mul		x5, x5, x6	# 1889
	lw		x6, 0(x2)	# 1889
	add		x5, x6, x5	# 1889
	flw		f1, 0(x5)	# 1889
	flw		f2, -40(x2)	# 1889
	fadd	f1, f2, f1	# 1889
	lw		x5, -140(x2)	# 1889
	lw		x6, -56(x2)	# 1889
	lw		x27, -32(x2)	# 1889
	lw		x31, 0(x27)	# 1889
	jalr	x0, x31, 0	# 1889
beq.18571:
	jalr	x0, x1, 0	# 1892
beq.18558:
	ori		x4, x0, 4	# 1897
	lw		x6, -156(x2)	# 1897
	mul		x4, x6, x4	# 1897
	lw		x7, -152(x2)	# 1897
	add		x4, x7, x4	# 1897
	lw		x7, -148(x2)	# 1897
	sw		x7, 0(x4)	# 1897
	beq		x6, x5, beq.18577	# 1899
	lw		x4, -140(x2)	# 1900
	lw		x6, -136(x2)	# 1900
	lw		x27, -144(x2)	# 1900
	addi	x5, x6, 0
	sw		x1, -208(x2)	# 1900
	addi	x2, x2, -212	# 1900
	lw		x31, 0(x27)	# 1900
	jalr	x1, x31, 0	# 1900
	addi	x2, x2, 212	# 1900
	lw		x1, -208(x2)	# 1900
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	flw		f1, -128(x2)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.18579	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.18578	# 2
fle_else.18579:
	ori		x4, x0, 1	# 2
fle_cont.18578:
	lw		x5, -160(x2)	# 1902
	beq		x4, x5, beq.18580	# 1902
	fmul	f1, f0, f0	# 8
	fmul	f0, f1, f0	# 1905
	flw		f1, -120(x2)	# 1905
	fmul	f0, f0, f1	# 1905
	ori		x4, x0, 4	# 1905
	mul		x4, x5, x4	# 1905
	lw		x6, -112(x2)	# 1905
	add		x4, x6, x4	# 1905
	flw		f1, 0(x4)	# 1905
	fmul	f0, f0, f1	# 1905
	ori		x4, x0, 4	# 1906
	mul		x4, x5, x4	# 1906
	lw		x6, -108(x2)	# 1906
	add		x4, x6, x4	# 1906
	flw		f1, 0(x4)	# 1906
	fadd	f1, f1, f0	# 1906
	ori		x4, x0, 4	# 1906
	mul		x4, x5, x4	# 1906
	add		x4, x6, x4	# 1906
	fsw		f1, 0(x4)	# 1906
	ori		x4, x0, 4	# 1907
	lw		x5, -104(x2)	# 1907
	mul		x4, x5, x4	# 1907
	add		x4, x6, x4	# 1907
	flw		f1, 0(x4)	# 1907
	fadd	f1, f1, f0	# 1907
	ori		x4, x0, 4	# 1907
	mul		x4, x5, x4	# 1907
	add		x4, x6, x4	# 1907
	fsw		f1, 0(x4)	# 1907
	ori		x4, x0, 4	# 1908
	lw		x5, -100(x2)	# 1908
	mul		x4, x5, x4	# 1908
	add		x4, x6, x4	# 1908
	flw		f1, 0(x4)	# 1908
	fadd	f0, f1, f0	# 1908
	ori		x4, x0, 4	# 1908
	mul		x4, x5, x4	# 1908
	add		x4, x6, x4	# 1908
	fsw		f0, 0(x4)	# 1908
	jalr	x0, x1, 0	# 1908
beq.18580:
	jalr	x0, x1, 0	# 1910
beq.18577:
	jalr	x0, x1, 0	# 1911
trace_diffuse_ray.2877:
	lw		x5, 76(x27)	# 1927
	lw		x6, 72(x27)	# 1927
	lw		x7, 68(x27)	# 1927
	lw		x8, 64(x27)	# 1927
	lw		x9, 60(x27)	# 1927
	lw		x10, 56(x27)	# 1927
	lw		x11, 52(x27)	# 1927
	lw		x12, 48(x27)	# 1927
	lw		x13, 44(x27)	# 1927
	lw		x14, 40(x27)	# 1927
	lw		x15, 36(x27)	# 1927
	lw		x16, 32(x27)	# 1927
	lw		x17, 28(x27)	# 1927
	lw		x18, 24(x27)	# 1927
	lw		x19, 20(x27)	# 1927
	lw		x20, 16(x27)	# 1927
	lw		x21, 12(x27)	# 1927
	lw		x22, 8(x27)	# 1927
	flw		f1, 4(x27)	# 1927
	sw		x8, 0(x2)	# 1927
	sw		x19, -4(x2)	# 1927
	sw		x6, -8(x2)	# 1927
	fsw		f0, -16(x2)	# 1927
	fsw		f1, -24(x2)	# 1927
	sw		x13, -32(x2)	# 1927
	sw		x5, -36(x2)	# 1927
	sw		x9, -40(x2)	# 1927
	sw		x10, -44(x2)	# 1927
	sw		x15, -48(x2)	# 1927
	sw		x7, -52(x2)	# 1927
	sw		x17, -56(x2)	# 1927
	sw		x20, -60(x2)	# 1927
	sw		x12, -64(x2)	# 1927
	sw		x18, -68(x2)	# 1927
	sw		x22, -72(x2)	# 1927
	sw		x4, -76(x2)	# 1927
	sw		x11, -80(x2)	# 1927
	sw		x16, -84(x2)	# 1927
	sw		x21, -88(x2)	# 1927
	addi	x27, x14, 0
	sw		x1, -92(x2)	# 1927
	addi	x2, x2, -96	# 1927
	lw		x31, 0(x27)	# 1927
	jalr	x1, x31, 0	# 1927
	addi	x2, x2, 96	# 1927
	lw		x1, -92(x2)	# 1927
	lw		x5, -88(x2)	# 1927
	beq		x4, x5, beq.18585	# 1927
	ori		x4, x0, 4	# 1928
	mul		x4, x5, x4	# 1928
	lw		x6, -84(x2)	# 1928
	add		x4, x6, x4	# 1928
	lw		x4, 0(x4)	# 1928
	ori		x6, x0, 4	# 1928
	mul		x4, x4, x6	# 1928
	lw		x6, -80(x2)	# 1928
	add		x4, x6, x4	# 1928
	lw		x4, 0(x4)	# 1928
	lw		x6, -76(x2)	# 639
	lw		x6, 0(x6)	# 639
	lw		x7, 4(x4)	# 353
	lw		x8, -72(x2)	# 1693
	sw		x4, -92(x2)	# 1693
	beq		x7, x8, beq.18587	# 1693
	ori		x6, x0, 2	# 1695
	beq		x7, x6, beq.18589	# 1695
	lw		x27, -56(x2)	# 1698
	sw		x1, -96(x2)	# 1698
	addi	x2, x2, -100	# 1698
	lw		x31, 0(x27)	# 1698
	jalr	x1, x31, 0	# 1698
	addi	x2, x2, 100	# 1698
	lw		x1, -96(x2)	# 1698
	jal		x0, beq_cont.18588	# 1695
beq.18589:
	lw		x6, 16(x4)	# 391
	ori		x7, x0, 4	# 396
	mul		x7, x5, x7	# 396
	add		x6, x6, x7	# 396
	flw		f0, 0(x6)	# 396
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x6, x0, 4	# 1663
	mul		x6, x5, x6	# 1663
	lw		x7, -64(x2)	# 1663
	add		x6, x7, x6	# 1663
	fsw		f0, 0(x6)	# 1663
	lw		x6, 16(x4)	# 401
	ori		x9, x0, 4	# 406
	mul		x9, x8, x9	# 406
	add		x6, x6, x9	# 406
	flw		f0, 0(x6)	# 406
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x6, x0, 4	# 1664
	mul		x6, x8, x6	# 1664
	add		x6, x7, x6	# 1664
	fsw		f0, 0(x6)	# 1664
	lw		x6, 16(x4)	# 411
	ori		x8, x0, 4	# 416
	lw		x9, -60(x2)	# 416
	mul		x8, x9, x8	# 416
	add		x6, x6, x8	# 416
	flw		f0, 0(x6)	# 416
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x6, x0, 4	# 1665
	mul		x6, x9, x6	# 1665
	add		x6, x7, x6	# 1665
	fsw		f0, 0(x6)	# 1665
beq_cont.18588:
	jal		x0, beq_cont.18586	# 1693
beq.18587:
	lw		x27, -68(x2)	# 1694
	addi	x4, x6, 0
	sw		x1, -96(x2)	# 1694
	addi	x2, x2, -100	# 1694
	lw		x31, 0(x27)	# 1694
	jalr	x1, x31, 0	# 1694
	addi	x2, x2, 100	# 1694
	lw		x1, -96(x2)	# 1694
beq_cont.18586:
	lw		x4, -92(x2)	# 1930
	lw		x5, -48(x2)	# 1930
	lw		x27, -52(x2)	# 1930
	sw		x1, -96(x2)	# 1930
	addi	x2, x2, -100	# 1930
	lw		x31, 0(x27)	# 1930
	jalr	x1, x31, 0	# 1930
	addi	x2, x2, 100	# 1930
	lw		x1, -96(x2)	# 1930
	ori		x4, x0, 4	# 1933
	lw		x5, -88(x2)	# 1933
	mul		x4, x5, x4	# 1933
	lw		x6, -44(x2)	# 1933
	add		x4, x6, x4	# 1933
	lw		x4, 0(x4)	# 1933
	lw		x27, -40(x2)	# 1933
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -96(x2)	# 1933
	addi	x2, x2, -100	# 1933
	lw		x31, 0(x27)	# 1933
	jalr	x1, x31, 0	# 1933
	addi	x2, x2, 100	# 1933
	lw		x1, -96(x2)	# 1933
	lw		x5, -88(x2)	# 1933
	beq		x4, x5, beq.18590	# 1933
	jalr	x0, x1, 0	# 1937
beq.18590:
	lw		x4, -64(x2)	# 1934
	lw		x6, -32(x2)	# 1934
	lw		x27, -36(x2)	# 1934
	addi	x5, x6, 0
	sw		x1, -96(x2)	# 1934
	addi	x2, x2, -100	# 1934
	lw		x31, 0(x27)	# 1934
	jalr	x1, x31, 0	# 1934
	addi	x2, x2, 100	# 1934
	lw		x1, -96(x2)	# 1934
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	flw		f1, -24(x2)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.18593	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.18592	# 2
fle_else.18593:
	ori		x4, x0, 1	# 2
fle_cont.18592:
	lw		x5, -88(x2)	# 1935
	beq		x4, x5, beq.18595	# 1935
	jal		x0, beq_cont.18594	# 1935
beq.18595:
	fsub	f0, f0, f0	# 1935
	fadd	f0, f0, f1	# 1935
beq_cont.18594:
	flw		f1, -16(x2)	# 1936
	fmul	f0, f1, f0	# 1936
	lw		x4, -92(x2)	# 461
	lw		x4, 28(x4)	# 461
	ori		x6, x0, 4	# 466
	mul		x5, x5, x6	# 466
	add		x4, x4, x5	# 466
	flw		f1, 0(x4)	# 466
	fmul	f0, f0, f1	# 1936
	lw		x4, -4(x2)	# 1936
	lw		x5, 0(x2)	# 1936
	lw		x27, -8(x2)	# 1936
	lw		x31, 0(x27)	# 1936
	jalr	x0, x31, 0	# 1936
beq.18585:
	jalr	x0, x1, 0	# 1938
iter_trace_diffuse_rays.2880:
	lw		x8, 20(x27)	# 1944
	lw		x9, 16(x27)	# 1944
	lw		x10, 12(x27)	# 1944
	lw		x11, 8(x27)	# 1944
	flw		f0, 4(x27)	# 1944
	ble		x11, x7, ble.18597	# 1944
	jalr	x0, x1, 0	# 1955
ble.18597:
	ori		x12, x0, 4	# 1945
	mul		x12, x7, x12	# 1945
	add		x12, x4, x12	# 1945
	lw		x12, 0(x12)	# 1945
	lw		x12, 0(x12)	# 639
	sw		x6, 0(x2)	# 1945
	sw		x5, -4(x2)	# 1945
	sw		x27, -8(x2)	# 1945
	sw		x10, -12(x2)	# 1945
	sw		x9, -16(x2)	# 1945
	sw		x4, -20(x2)	# 1945
	sw		x7, -24(x2)	# 1945
	sw		x11, -28(x2)	# 1945
	fsw		f0, -32(x2)	# 1945
	addi	x4, x12, 0
	addi	x27, x8, 0
	sw		x1, -40(x2)	# 1945
	addi	x2, x2, -44	# 1945
	lw		x31, 0(x27)	# 1945
	jalr	x1, x31, 0	# 1945
	addi	x2, x2, 44	# 1945
	lw		x1, -40(x2)	# 1945
	flw		f1, -32(x2)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.18600	# 3
	addi	x4, x0, 0	# 3
	jal		x0, fle_cont.18599	# 3
fle_else.18600:
	ori		x4, x0, 1	# 3
fle_cont.18599:
	lw		x5, -28(x2)	# 1949
	beq		x4, x5, beq.18602	# 1949
	lw		x4, -24(x2)	# 1950
	addi	x5, x4, 1	# 1950
	ori		x6, x0, 4	# 1950
	mul		x5, x5, x6	# 1950
	lw		x6, -20(x2)	# 1950
	add		x5, x6, x5	# 1950
	lw		x5, 0(x5)	# 1950
	lui		x7, %hi(l.11296)	# 1950
	ori		x7, x0, %lo(l.11296)	# 1950
	flw		f1, 0(x7)	# 1950
	fdiv	f0, f0, f1	# 1950
	lw		x27, -16(x2)	# 1950
	addi	x4, x5, 0
	sw		x1, -40(x2)	# 1950
	addi	x2, x2, -44	# 1950
	lw		x31, 0(x27)	# 1950
	jalr	x1, x31, 0	# 1950
	addi	x2, x2, 44	# 1950
	lw		x1, -40(x2)	# 1950
	jal		x0, beq_cont.18601	# 1949
beq.18602:
	ori		x4, x0, 4	# 1952
	lw		x5, -24(x2)	# 1952
	mul		x4, x5, x4	# 1952
	lw		x6, -20(x2)	# 1952
	add		x4, x6, x4	# 1952
	lw		x4, 0(x4)	# 1952
	lui		x7, %hi(l.11301)	# 1952
	ori		x7, x0, %lo(l.11301)	# 1952
	flw		f1, 0(x7)	# 1952
	fdiv	f0, f0, f1	# 1952
	lw		x27, -16(x2)	# 1952
	sw		x1, -40(x2)	# 1952
	addi	x2, x2, -44	# 1952
	lw		x31, 0(x27)	# 1952
	jalr	x1, x31, 0	# 1952
	addi	x2, x2, 44	# 1952
	lw		x1, -40(x2)	# 1952
beq_cont.18601:
	lw		x4, -12(x2)	# 1954
	lw		x5, -24(x2)	# 1954
	sub		x7, x5, x4	# 1954
	lw		x4, -20(x2)	# 1954
	lw		x5, -4(x2)	# 1954
	lw		x6, 0(x2)	# 1954
	lw		x27, -8(x2)	# 1954
	lw		x31, 0(x27)	# 1954
	jalr	x0, x31, 0	# 1954
trace_diffuse_ray_80percent.2889:
	lw		x7, 36(x27)	# 1971
	lw		x8, 32(x27)	# 1971
	lw		x9, 28(x27)	# 1971
	lw		x10, 24(x27)	# 1971
	lw		x11, 20(x27)	# 1971
	lw		x12, 16(x27)	# 1971
	lw		x13, 12(x27)	# 1971
	lw		x14, 8(x27)	# 1971
	lw		x15, 4(x27)	# 1971
	sw		x13, 0(x2)	# 1971
	sw		x5, -4(x2)	# 1971
	sw		x10, -8(x2)	# 1971
	sw		x8, -12(x2)	# 1971
	sw		x9, -16(x2)	# 1971
	sw		x12, -20(x2)	# 1971
	sw		x7, -24(x2)	# 1971
	sw		x6, -28(x2)	# 1971
	sw		x14, -32(x2)	# 1971
	sw		x11, -36(x2)	# 1971
	sw		x15, -40(x2)	# 1971
	sw		x4, -44(x2)	# 1971
	beq		x4, x14, beq.18604	# 1971
	addi	x16, x0, 0	# 1972
	ori		x17, x0, 4	# 1972
	mul		x16, x16, x17	# 1972
	add		x16, x11, x16	# 1972
	lw		x16, 0(x16)	# 1972
	ori		x17, x0, 4	# 259
	mul		x17, x14, x17	# 259
	add		x17, x6, x17	# 259
	flw		f0, 0(x17)	# 259
	ori		x17, x0, 4	# 259
	mul		x17, x14, x17	# 259
	add		x17, x7, x17	# 259
	fsw		f0, 0(x17)	# 259
	ori		x17, x0, 4	# 260
	mul		x17, x15, x17	# 260
	add		x17, x6, x17	# 260
	flw		f0, 0(x17)	# 260
	ori		x17, x0, 4	# 260
	mul		x17, x15, x17	# 260
	add		x17, x7, x17	# 260
	fsw		f0, 0(x17)	# 260
	ori		x17, x0, 4	# 261
	mul		x17, x12, x17	# 261
	add		x17, x6, x17	# 261
	flw		f0, 0(x17)	# 261
	ori		x17, x0, 4	# 261
	mul		x17, x12, x17	# 261
	add		x17, x7, x17	# 261
	fsw		f0, 0(x17)	# 261
	ori		x17, x0, 4	# 1315
	mul		x17, x14, x17	# 1315
	add		x17, x9, x17	# 1315
	lw		x17, 0(x17)	# 1315
	sub		x17, x17, x15	# 1315
	sw		x16, -48(x2)	# 1315
	addi	x5, x17, 0
	addi	x4, x6, 0
	addi	x27, x8, 0
	sw		x1, -52(x2)	# 1315
	addi	x2, x2, -56	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 56	# 1315
	lw		x1, -52(x2)	# 1315
	ori		x7, x0, 118	# 1964
	lw		x4, -48(x2)	# 1964
	lw		x5, -4(x2)	# 1964
	lw		x6, -28(x2)	# 1964
	lw		x27, -8(x2)	# 1964
	sw		x1, -52(x2)	# 1964
	addi	x2, x2, -56	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 56	# 1964
	lw		x1, -52(x2)	# 1964
	jal		x0, beq_cont.18603	# 1971
beq.18604:
beq_cont.18603:
	lw		x4, -40(x2)	# 1975
	lw		x5, -44(x2)	# 1975
	beq		x5, x4, beq.18606	# 1975
	ori		x6, x0, 1	# 1976
	ori		x7, x0, 4	# 1976
	mul		x6, x6, x7	# 1976
	lw		x7, -36(x2)	# 1976
	add		x6, x7, x6	# 1976
	lw		x6, 0(x6)	# 1976
	ori		x8, x0, 4	# 259
	lw		x9, -32(x2)	# 259
	mul		x8, x9, x8	# 259
	lw		x10, -28(x2)	# 259
	add		x8, x10, x8	# 259
	flw		f0, 0(x8)	# 259
	ori		x8, x0, 4	# 259
	mul		x8, x9, x8	# 259
	lw		x11, -24(x2)	# 259
	add		x8, x11, x8	# 259
	fsw		f0, 0(x8)	# 259
	ori		x8, x0, 4	# 260
	mul		x8, x4, x8	# 260
	add		x8, x10, x8	# 260
	flw		f0, 0(x8)	# 260
	ori		x8, x0, 4	# 260
	mul		x8, x4, x8	# 260
	add		x8, x11, x8	# 260
	fsw		f0, 0(x8)	# 260
	ori		x8, x0, 4	# 261
	lw		x12, -20(x2)	# 261
	mul		x8, x12, x8	# 261
	add		x8, x10, x8	# 261
	flw		f0, 0(x8)	# 261
	ori		x8, x0, 4	# 261
	mul		x8, x12, x8	# 261
	add		x8, x11, x8	# 261
	fsw		f0, 0(x8)	# 261
	ori		x8, x0, 4	# 1315
	mul		x8, x9, x8	# 1315
	lw		x13, -16(x2)	# 1315
	add		x8, x13, x8	# 1315
	lw		x8, 0(x8)	# 1315
	sub		x8, x8, x4	# 1315
	lw		x27, -12(x2)	# 1315
	sw		x6, -52(x2)	# 1315
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -56(x2)	# 1315
	addi	x2, x2, -60	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 60	# 1315
	lw		x1, -56(x2)	# 1315
	ori		x7, x0, 118	# 1964
	lw		x4, -52(x2)	# 1964
	lw		x5, -4(x2)	# 1964
	lw		x6, -28(x2)	# 1964
	lw		x27, -8(x2)	# 1964
	sw		x1, -56(x2)	# 1964
	addi	x2, x2, -60	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 60	# 1964
	lw		x1, -56(x2)	# 1964
	jal		x0, beq_cont.18605	# 1975
beq.18606:
beq_cont.18605:
	lw		x4, -20(x2)	# 1979
	lw		x5, -44(x2)	# 1979
	beq		x5, x4, beq.18608	# 1979
	ori		x6, x0, 2	# 1980
	ori		x7, x0, 4	# 1980
	mul		x6, x6, x7	# 1980
	lw		x7, -36(x2)	# 1980
	add		x6, x7, x6	# 1980
	lw		x6, 0(x6)	# 1980
	ori		x8, x0, 4	# 259
	lw		x9, -32(x2)	# 259
	mul		x8, x9, x8	# 259
	lw		x10, -28(x2)	# 259
	add		x8, x10, x8	# 259
	flw		f0, 0(x8)	# 259
	ori		x8, x0, 4	# 259
	mul		x8, x9, x8	# 259
	lw		x11, -24(x2)	# 259
	add		x8, x11, x8	# 259
	fsw		f0, 0(x8)	# 259
	ori		x8, x0, 4	# 260
	lw		x12, -40(x2)	# 260
	mul		x8, x12, x8	# 260
	add		x8, x10, x8	# 260
	flw		f0, 0(x8)	# 260
	ori		x8, x0, 4	# 260
	mul		x8, x12, x8	# 260
	add		x8, x11, x8	# 260
	fsw		f0, 0(x8)	# 260
	ori		x8, x0, 4	# 261
	mul		x8, x4, x8	# 261
	add		x8, x10, x8	# 261
	flw		f0, 0(x8)	# 261
	ori		x8, x0, 4	# 261
	mul		x8, x4, x8	# 261
	add		x8, x11, x8	# 261
	fsw		f0, 0(x8)	# 261
	ori		x8, x0, 4	# 1315
	mul		x8, x9, x8	# 1315
	lw		x13, -16(x2)	# 1315
	add		x8, x13, x8	# 1315
	lw		x8, 0(x8)	# 1315
	sub		x8, x8, x12	# 1315
	lw		x27, -12(x2)	# 1315
	sw		x6, -56(x2)	# 1315
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -60(x2)	# 1315
	addi	x2, x2, -64	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 64	# 1315
	lw		x1, -60(x2)	# 1315
	ori		x7, x0, 118	# 1964
	lw		x4, -56(x2)	# 1964
	lw		x5, -4(x2)	# 1964
	lw		x6, -28(x2)	# 1964
	lw		x27, -8(x2)	# 1964
	sw		x1, -60(x2)	# 1964
	addi	x2, x2, -64	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 64	# 1964
	lw		x1, -60(x2)	# 1964
	jal		x0, beq_cont.18607	# 1979
beq.18608:
beq_cont.18607:
	lw		x4, 0(x2)	# 1983
	lw		x5, -44(x2)	# 1983
	beq		x5, x4, beq.18610	# 1983
	ori		x4, x0, 3	# 1984
	ori		x6, x0, 4	# 1984
	mul		x4, x4, x6	# 1984
	lw		x6, -36(x2)	# 1984
	add		x4, x6, x4	# 1984
	lw		x4, 0(x4)	# 1984
	ori		x7, x0, 4	# 259
	lw		x8, -32(x2)	# 259
	mul		x7, x8, x7	# 259
	lw		x9, -28(x2)	# 259
	add		x7, x9, x7	# 259
	flw		f0, 0(x7)	# 259
	ori		x7, x0, 4	# 259
	mul		x7, x8, x7	# 259
	lw		x10, -24(x2)	# 259
	add		x7, x10, x7	# 259
	fsw		f0, 0(x7)	# 259
	ori		x7, x0, 4	# 260
	lw		x11, -40(x2)	# 260
	mul		x7, x11, x7	# 260
	add		x7, x9, x7	# 260
	flw		f0, 0(x7)	# 260
	ori		x7, x0, 4	# 260
	mul		x7, x11, x7	# 260
	add		x7, x10, x7	# 260
	fsw		f0, 0(x7)	# 260
	ori		x7, x0, 4	# 261
	lw		x12, -20(x2)	# 261
	mul		x7, x12, x7	# 261
	add		x7, x9, x7	# 261
	flw		f0, 0(x7)	# 261
	ori		x7, x0, 4	# 261
	mul		x7, x12, x7	# 261
	add		x7, x10, x7	# 261
	fsw		f0, 0(x7)	# 261
	ori		x7, x0, 4	# 1315
	mul		x7, x8, x7	# 1315
	lw		x13, -16(x2)	# 1315
	add		x7, x13, x7	# 1315
	lw		x7, 0(x7)	# 1315
	sub		x7, x7, x11	# 1315
	lw		x27, -12(x2)	# 1315
	sw		x4, -60(x2)	# 1315
	addi	x5, x7, 0
	addi	x4, x9, 0
	sw		x1, -64(x2)	# 1315
	addi	x2, x2, -68	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 68	# 1315
	lw		x1, -64(x2)	# 1315
	ori		x7, x0, 118	# 1964
	lw		x4, -60(x2)	# 1964
	lw		x5, -4(x2)	# 1964
	lw		x6, -28(x2)	# 1964
	lw		x27, -8(x2)	# 1964
	sw		x1, -64(x2)	# 1964
	addi	x2, x2, -68	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 68	# 1964
	lw		x1, -64(x2)	# 1964
	jal		x0, beq_cont.18609	# 1983
beq.18610:
beq_cont.18609:
	ori		x4, x0, 4	# 1987
	lw		x5, -44(x2)	# 1987
	beq		x5, x4, beq.18611	# 1987
	ori		x5, x0, 4	# 1988
	mul		x4, x4, x5	# 1988
	lw		x5, -36(x2)	# 1988
	add		x4, x5, x4	# 1988
	lw		x4, 0(x4)	# 1988
	ori		x5, x0, 4	# 259
	lw		x6, -32(x2)	# 259
	mul		x5, x6, x5	# 259
	lw		x7, -28(x2)	# 259
	add		x5, x7, x5	# 259
	flw		f0, 0(x5)	# 259
	ori		x5, x0, 4	# 259
	mul		x5, x6, x5	# 259
	lw		x8, -24(x2)	# 259
	add		x5, x8, x5	# 259
	fsw		f0, 0(x5)	# 259
	ori		x5, x0, 4	# 260
	lw		x9, -40(x2)	# 260
	mul		x5, x9, x5	# 260
	add		x5, x7, x5	# 260
	flw		f0, 0(x5)	# 260
	ori		x5, x0, 4	# 260
	mul		x5, x9, x5	# 260
	add		x5, x8, x5	# 260
	fsw		f0, 0(x5)	# 260
	ori		x5, x0, 4	# 261
	lw		x10, -20(x2)	# 261
	mul		x5, x10, x5	# 261
	add		x5, x7, x5	# 261
	flw		f0, 0(x5)	# 261
	ori		x5, x0, 4	# 261
	mul		x5, x10, x5	# 261
	add		x5, x8, x5	# 261
	fsw		f0, 0(x5)	# 261
	ori		x5, x0, 4	# 1315
	mul		x5, x6, x5	# 1315
	lw		x6, -16(x2)	# 1315
	add		x5, x6, x5	# 1315
	lw		x5, 0(x5)	# 1315
	sub		x5, x5, x9	# 1315
	lw		x27, -12(x2)	# 1315
	sw		x4, -64(x2)	# 1315
	addi	x4, x7, 0
	sw		x1, -68(x2)	# 1315
	addi	x2, x2, -72	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 72	# 1315
	lw		x1, -68(x2)	# 1315
	ori		x7, x0, 118	# 1964
	lw		x4, -64(x2)	# 1964
	lw		x5, -4(x2)	# 1964
	lw		x6, -28(x2)	# 1964
	lw		x27, -8(x2)	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x0, x31, 0	# 1964
beq.18611:
	jalr	x0, x1, 0	# 1989
calc_diffuse_using_1point.2893:
	lw		x6, 28(x27)	# 598
	lw		x7, 24(x27)	# 598
	lw		x8, 20(x27)	# 598
	lw		x9, 16(x27)	# 598
	lw		x10, 12(x27)	# 598
	lw		x11, 8(x27)	# 598
	lw		x12, 4(x27)	# 598
	lw		x13, 20(x4)	# 598
	lw		x14, 28(x4)	# 628
	lw		x15, 4(x4)	# 569
	lw		x16, 16(x4)	# 591
	ori		x17, x0, 4	# 2002
	mul		x17, x5, x17	# 2002
	add		x13, x13, x17	# 2002
	lw		x13, 0(x13)	# 2002
	ori		x17, x0, 4	# 259
	mul		x17, x11, x17	# 259
	add		x17, x13, x17	# 259
	flw		f0, 0(x17)	# 259
	ori		x17, x0, 4	# 259
	mul		x17, x11, x17	# 259
	add		x17, x9, x17	# 259
	fsw		f0, 0(x17)	# 259
	ori		x17, x0, 4	# 260
	mul		x17, x12, x17	# 260
	add		x17, x13, x17	# 260
	flw		f0, 0(x17)	# 260
	ori		x17, x0, 4	# 260
	mul		x12, x12, x17	# 260
	add		x12, x9, x12	# 260
	fsw		f0, 0(x12)	# 260
	ori		x12, x0, 4	# 261
	mul		x12, x10, x12	# 261
	add		x12, x13, x12	# 261
	flw		f0, 0(x12)	# 261
	ori		x12, x0, 4	# 261
	mul		x10, x10, x12	# 261
	add		x10, x9, x10	# 261
	fsw		f0, 0(x10)	# 261
	lw		x4, 24(x4)	# 614
	ori		x10, x0, 4	# 616
	mul		x10, x11, x10	# 616
	add		x4, x4, x10	# 616
	lw		x4, 0(x4)	# 616
	ori		x10, x0, 4	# 2005
	mul		x10, x5, x10	# 2005
	add		x10, x14, x10	# 2005
	lw		x10, 0(x10)	# 2005
	ori		x11, x0, 4	# 2006
	mul		x11, x5, x11	# 2006
	add		x11, x15, x11	# 2006
	lw		x11, 0(x11)	# 2006
	sw		x9, 0(x2)	# 2003
	sw		x8, -4(x2)	# 2003
	sw		x6, -8(x2)	# 2003
	sw		x16, -12(x2)	# 2003
	sw		x5, -16(x2)	# 2003
	addi	x6, x11, 0
	addi	x5, x10, 0
	addi	x27, x7, 0
	sw		x1, -20(x2)	# 2003
	addi	x2, x2, -24	# 2003
	lw		x31, 0(x27)	# 2003
	jalr	x1, x31, 0	# 2003
	addi	x2, x2, 24	# 2003
	lw		x1, -20(x2)	# 2003
	ori		x4, x0, 4	# 2007
	lw		x5, -16(x2)	# 2007
	mul		x4, x5, x4	# 2007
	lw		x5, -12(x2)	# 2007
	add		x4, x5, x4	# 2007
	lw		x5, 0(x4)	# 2007
	lw		x4, -4(x2)	# 2007
	lw		x6, 0(x2)	# 2007
	lw		x27, -8(x2)	# 2007
	lw		x31, 0(x27)	# 2007
	jalr	x0, x31, 0	# 2007
calc_diffuse_using_5points.2896:
	lw		x9, 28(x27)	# 2016
	lw		x10, 24(x27)	# 2016
	lw		x11, 20(x27)	# 2016
	lw		x12, 16(x27)	# 2016
	lw		x13, 12(x27)	# 2016
	lw		x14, 8(x27)	# 2016
	lw		x15, 4(x27)	# 2016
	ori		x16, x0, 4	# 2016
	mul		x16, x4, x16	# 2016
	add		x5, x5, x16	# 2016
	lw		x5, 0(x5)	# 2016
	lw		x5, 20(x5)	# 598
	sub		x16, x4, x15	# 2017
	ori		x17, x0, 4	# 2017
	mul		x16, x16, x17	# 2017
	add		x16, x6, x16	# 2017
	lw		x16, 0(x16)	# 2017
	lw		x16, 20(x16)	# 598
	ori		x17, x0, 4	# 2018
	mul		x17, x4, x17	# 2018
	add		x17, x6, x17	# 2018
	lw		x17, 0(x17)	# 2018
	lw		x17, 20(x17)	# 598
	add		x18, x4, x15	# 2019
	ori		x19, x0, 4	# 2019
	mul		x18, x18, x19	# 2019
	add		x18, x6, x18	# 2019
	lw		x18, 0(x18)	# 2019
	lw		x18, 20(x18)	# 598
	ori		x19, x0, 4	# 2020
	mul		x19, x4, x19	# 2020
	add		x7, x7, x19	# 2020
	lw		x7, 0(x7)	# 2020
	lw		x7, 20(x7)	# 598
	ori		x19, x0, 4	# 2022
	mul		x19, x8, x19	# 2022
	add		x5, x5, x19	# 2022
	lw		x5, 0(x5)	# 2022
	ori		x19, x0, 4	# 259
	mul		x19, x14, x19	# 259
	add		x19, x5, x19	# 259
	flw		f0, 0(x19)	# 259
	ori		x19, x0, 4	# 259
	mul		x14, x14, x19	# 259
	add		x14, x12, x14	# 259
	fsw		f0, 0(x14)	# 259
	ori		x14, x0, 4	# 260
	mul		x14, x15, x14	# 260
	add		x14, x5, x14	# 260
	flw		f0, 0(x14)	# 260
	ori		x14, x0, 4	# 260
	mul		x14, x15, x14	# 260
	add		x14, x12, x14	# 260
	fsw		f0, 0(x14)	# 260
	ori		x14, x0, 4	# 261
	mul		x14, x13, x14	# 261
	add		x5, x5, x14	# 261
	flw		f0, 0(x5)	# 261
	ori		x5, x0, 4	# 261
	mul		x5, x13, x5	# 261
	add		x5, x12, x5	# 261
	fsw		f0, 0(x5)	# 261
	ori		x5, x0, 4	# 2023
	mul		x5, x8, x5	# 2023
	add		x5, x16, x5	# 2023
	lw		x5, 0(x5)	# 2023
	sw		x11, 0(x2)	# 2023
	sw		x10, -4(x2)	# 2023
	sw		x6, -8(x2)	# 2023
	sw		x4, -12(x2)	# 2023
	sw		x7, -16(x2)	# 2023
	sw		x18, -20(x2)	# 2023
	sw		x12, -24(x2)	# 2023
	sw		x9, -28(x2)	# 2023
	sw		x17, -32(x2)	# 2023
	sw		x8, -36(x2)	# 2023
	addi	x4, x12, 0
	addi	x27, x9, 0
	sw		x1, -40(x2)	# 2023
	addi	x2, x2, -44	# 2023
	lw		x31, 0(x27)	# 2023
	jalr	x1, x31, 0	# 2023
	addi	x2, x2, 44	# 2023
	lw		x1, -40(x2)	# 2023
	ori		x4, x0, 4	# 2024
	lw		x5, -36(x2)	# 2024
	mul		x4, x5, x4	# 2024
	lw		x6, -32(x2)	# 2024
	add		x4, x6, x4	# 2024
	lw		x4, 0(x4)	# 2024
	lw		x6, -24(x2)	# 2024
	lw		x27, -28(x2)	# 2024
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -40(x2)	# 2024
	addi	x2, x2, -44	# 2024
	lw		x31, 0(x27)	# 2024
	jalr	x1, x31, 0	# 2024
	addi	x2, x2, 44	# 2024
	lw		x1, -40(x2)	# 2024
	ori		x4, x0, 4	# 2025
	lw		x5, -36(x2)	# 2025
	mul		x4, x5, x4	# 2025
	lw		x6, -20(x2)	# 2025
	add		x4, x6, x4	# 2025
	lw		x4, 0(x4)	# 2025
	lw		x6, -24(x2)	# 2025
	lw		x27, -28(x2)	# 2025
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -40(x2)	# 2025
	addi	x2, x2, -44	# 2025
	lw		x31, 0(x27)	# 2025
	jalr	x1, x31, 0	# 2025
	addi	x2, x2, 44	# 2025
	lw		x1, -40(x2)	# 2025
	ori		x4, x0, 4	# 2026
	lw		x5, -36(x2)	# 2026
	mul		x4, x5, x4	# 2026
	lw		x6, -16(x2)	# 2026
	add		x4, x6, x4	# 2026
	lw		x4, 0(x4)	# 2026
	lw		x6, -24(x2)	# 2026
	lw		x27, -28(x2)	# 2026
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -40(x2)	# 2026
	addi	x2, x2, -44	# 2026
	lw		x31, 0(x27)	# 2026
	jalr	x1, x31, 0	# 2026
	addi	x2, x2, 44	# 2026
	lw		x1, -40(x2)	# 2026
	ori		x4, x0, 4	# 2028
	lw		x5, -12(x2)	# 2028
	mul		x4, x5, x4	# 2028
	lw		x5, -8(x2)	# 2028
	add		x4, x5, x4	# 2028
	lw		x4, 0(x4)	# 2028
	lw		x4, 16(x4)	# 591
	ori		x5, x0, 4	# 2029
	lw		x6, -36(x2)	# 2029
	mul		x5, x6, x5	# 2029
	add		x4, x4, x5	# 2029
	lw		x5, 0(x4)	# 2029
	lw		x4, 0(x2)	# 2029
	lw		x6, -24(x2)	# 2029
	lw		x27, -4(x2)	# 2029
	lw		x31, 0(x27)	# 2029
	jalr	x0, x31, 0	# 2029
do_without_neighbors.2902:
	lw		x6, 12(x27)	# 2035
	lw		x7, 8(x27)	# 2035
	lw		x8, 4(x27)	# 2035
	ori		x9, x0, 4	# 2035
	ble		x5, x9, ble.18613	# 2035
	jalr	x0, x1, 0	# 2045
ble.18613:
	lw		x10, 8(x4)	# 577
	ori		x11, x0, 4	# 2038
	mul		x11, x5, x11	# 2038
	add		x10, x10, x11	# 2038
	lw		x10, 0(x10)	# 2038
	ble		x7, x10, ble.18615	# 2038
	jalr	x0, x1, 0	# 2044
ble.18615:
	lw		x10, 12(x4)	# 584
	ori		x11, x0, 4	# 2040
	mul		x11, x5, x11	# 2040
	add		x10, x10, x11	# 2040
	lw		x10, 0(x10)	# 2040
	sw		x27, 0(x2)	# 2040
	sw		x6, -4(x2)	# 2040
	sw		x7, -8(x2)	# 2040
	sw		x4, -12(x2)	# 2040
	sw		x9, -16(x2)	# 2040
	sw		x8, -20(x2)	# 2040
	sw		x5, -24(x2)	# 2040
	beq		x10, x7, beq.18618	# 2040
	addi	x27, x6, 0
	sw		x1, -28(x2)	# 2041
	addi	x2, x2, -32	# 2041
	lw		x31, 0(x27)	# 2041
	jalr	x1, x31, 0	# 2041
	addi	x2, x2, 32	# 2041
	lw		x1, -28(x2)	# 2041
	jal		x0, beq_cont.18617	# 2040
beq.18618:
beq_cont.18617:
	lw		x4, -20(x2)	# 2043
	lw		x5, -24(x2)	# 2043
	add		x5, x5, x4	# 2043
	lw		x6, -16(x2)	# 2035
	ble		x5, x6, ble.18619	# 2035
	jalr	x0, x1, 0	# 2045
ble.18619:
	lw		x6, -12(x2)	# 577
	lw		x7, 8(x6)	# 577
	ori		x8, x0, 4	# 2038
	mul		x8, x5, x8	# 2038
	add		x7, x7, x8	# 2038
	lw		x7, 0(x7)	# 2038
	lw		x8, -8(x2)	# 2038
	ble		x8, x7, ble.18621	# 2038
	jalr	x0, x1, 0	# 2044
ble.18621:
	lw		x7, 12(x6)	# 584
	ori		x9, x0, 4	# 2040
	mul		x9, x5, x9	# 2040
	add		x7, x7, x9	# 2040
	lw		x7, 0(x7)	# 2040
	sw		x5, -28(x2)	# 2040
	beq		x7, x8, beq.18624	# 2040
	lw		x27, -4(x2)	# 2041
	addi	x4, x6, 0
	sw		x1, -32(x2)	# 2041
	addi	x2, x2, -36	# 2041
	lw		x31, 0(x27)	# 2041
	jalr	x1, x31, 0	# 2041
	addi	x2, x2, 36	# 2041
	lw		x1, -32(x2)	# 2041
	jal		x0, beq_cont.18623	# 2040
beq.18624:
beq_cont.18623:
	lw		x4, -20(x2)	# 2043
	lw		x5, -28(x2)	# 2043
	add		x5, x5, x4	# 2043
	lw		x4, -12(x2)	# 2043
	lw		x27, 0(x2)	# 2043
	lw		x31, 0(x27)	# 2043
	jalr	x0, x31, 0	# 2043
neighbors_are_available.2912:
	lw		x9, 4(x27)	# 2069
	ori		x10, x0, 4	# 2069
	mul		x10, x4, x10	# 2069
	add		x10, x6, x10	# 2069
	lw		x10, 0(x10)	# 2069
	lw		x10, 8(x10)	# 577
	ori		x11, x0, 4	# 2063
	mul		x11, x8, x11	# 2063
	add		x10, x10, x11	# 2063
	lw		x10, 0(x10)	# 2063
	ori		x11, x0, 4	# 2071
	mul		x11, x4, x11	# 2071
	add		x5, x5, x11	# 2071
	lw		x5, 0(x5)	# 2071
	lw		x5, 8(x5)	# 577
	ori		x11, x0, 4	# 2063
	mul		x11, x8, x11	# 2063
	add		x5, x5, x11	# 2063
	lw		x5, 0(x5)	# 2063
	beq		x5, x10, beq.18625	# 2071
	addi	x4, x0, 0	# 2079
	jalr	x0, x1, 0	# 2079
beq.18625:
	ori		x5, x0, 4	# 2072
	mul		x5, x4, x5	# 2072
	add		x5, x7, x5	# 2072
	lw		x5, 0(x5)	# 2072
	lw		x5, 8(x5)	# 577
	ori		x7, x0, 4	# 2063
	mul		x7, x8, x7	# 2063
	add		x5, x5, x7	# 2063
	lw		x5, 0(x5)	# 2063
	beq		x5, x10, beq.18626	# 2072
	addi	x4, x0, 0	# 2078
	jalr	x0, x1, 0	# 2078
beq.18626:
	sub		x5, x4, x9	# 2073
	ori		x7, x0, 4	# 2073
	mul		x5, x5, x7	# 2073
	add		x5, x6, x5	# 2073
	lw		x5, 0(x5)	# 2073
	lw		x5, 8(x5)	# 577
	ori		x7, x0, 4	# 2063
	mul		x7, x8, x7	# 2063
	add		x5, x5, x7	# 2063
	lw		x5, 0(x5)	# 2063
	beq		x5, x10, beq.18627	# 2073
	addi	x4, x0, 0	# 2077
	jalr	x0, x1, 0	# 2077
beq.18627:
	add		x4, x4, x9	# 2074
	ori		x5, x0, 4	# 2074
	mul		x4, x4, x5	# 2074
	add		x4, x6, x4	# 2074
	lw		x4, 0(x4)	# 2074
	lw		x4, 8(x4)	# 577
	ori		x5, x0, 4	# 2063
	mul		x5, x8, x5	# 2063
	add		x4, x4, x5	# 2063
	lw		x4, 0(x4)	# 2063
	beq		x4, x10, beq.18628	# 2074
	addi	x4, x0, 0	# 2076
	jalr	x0, x1, 0	# 2076
beq.18628:
	ori		x4, x0, 1	# 2075
	jalr	x0, x1, 0	# 2075
try_exploit_neighbors.2918:
	lw		x10, 24(x27)	# 2087
	lw		x11, 20(x27)	# 2087
	lw		x12, 16(x27)	# 2087
	lw		x13, 12(x27)	# 2087
	lw		x14, 8(x27)	# 2087
	lw		x15, 4(x27)	# 2087
	ori		x16, x0, 4	# 2087
	mul		x16, x4, x16	# 2087
	add		x16, x7, x16	# 2087
	lw		x16, 0(x16)	# 2087
	ori		x17, x0, 4	# 2088
	ble		x9, x17, ble.18629	# 2088
	jalr	x0, x1, 0	# 2107
ble.18629:
	lw		x18, 8(x16)	# 577
	ori		x19, x0, 4	# 2063
	mul		x19, x9, x19	# 2063
	add		x18, x18, x19	# 2063
	lw		x18, 0(x18)	# 2063
	ble		x14, x18, ble.18631	# 2091
	jalr	x0, x1, 0	# 2106
ble.18631:
	sw		x5, 0(x2)	# 2093
	sw		x27, -4(x2)	# 2093
	sw		x8, -8(x2)	# 2093
	sw		x6, -12(x2)	# 2093
	sw		x12, -16(x2)	# 2093
	sw		x16, -20(x2)	# 2093
	sw		x11, -24(x2)	# 2093
	sw		x15, -28(x2)	# 2093
	sw		x13, -32(x2)	# 2093
	sw		x17, -36(x2)	# 2093
	sw		x9, -40(x2)	# 2093
	sw		x7, -44(x2)	# 2093
	sw		x4, -48(x2)	# 2093
	sw		x14, -52(x2)	# 2093
	addi	x5, x6, 0
	addi	x27, x10, 0
	addi	x6, x7, 0
	addi	x7, x8, 0
	addi	x8, x9, 0
	sw		x1, -56(x2)	# 2093
	addi	x2, x2, -60	# 2093
	lw		x31, 0(x27)	# 2093
	jalr	x1, x31, 0	# 2093
	addi	x2, x2, 60	# 2093
	lw		x1, -56(x2)	# 2093
	lw		x5, -52(x2)	# 2093
	beq		x4, x5, beq.18633	# 2093
	lw		x4, -20(x2)	# 584
	lw		x4, 12(x4)	# 584
	ori		x6, x0, 4	# 2097
	lw		x8, -40(x2)	# 2097
	mul		x6, x8, x6	# 2097
	add		x4, x4, x6	# 2097
	lw		x4, 0(x4)	# 2097
	beq		x4, x5, beq.18635	# 2097
	lw		x4, -48(x2)	# 2098
	lw		x5, -12(x2)	# 2098
	lw		x6, -44(x2)	# 2098
	lw		x7, -8(x2)	# 2098
	lw		x27, -16(x2)	# 2098
	sw		x1, -56(x2)	# 2098
	addi	x2, x2, -60	# 2098
	lw		x31, 0(x27)	# 2098
	jalr	x1, x31, 0	# 2098
	addi	x2, x2, 60	# 2098
	lw		x1, -56(x2)	# 2098
	jal		x0, beq_cont.18634	# 2097
beq.18635:
beq_cont.18634:
	lw		x4, -28(x2)	# 2102
	lw		x5, -40(x2)	# 2102
	add		x9, x5, x4	# 2102
	lw		x4, -48(x2)	# 2102
	lw		x5, 0(x2)	# 2102
	lw		x6, -12(x2)	# 2102
	lw		x7, -44(x2)	# 2102
	lw		x8, -8(x2)	# 2102
	lw		x27, -4(x2)	# 2102
	lw		x31, 0(x27)	# 2102
	jalr	x0, x31, 0	# 2102
beq.18633:
	ori		x4, x0, 4	# 2105
	lw		x6, -48(x2)	# 2105
	mul		x4, x6, x4	# 2105
	lw		x6, -44(x2)	# 2105
	add		x4, x6, x4	# 2105
	lw		x4, 0(x4)	# 2105
	lw		x6, -36(x2)	# 2035
	lw		x7, -40(x2)	# 2035
	ble		x7, x6, ble.18636	# 2035
	jalr	x0, x1, 0	# 2045
ble.18636:
	lw		x6, 8(x4)	# 577
	ori		x8, x0, 4	# 2038
	mul		x8, x7, x8	# 2038
	add		x6, x6, x8	# 2038
	lw		x6, 0(x6)	# 2038
	ble		x5, x6, ble.18638	# 2038
	jalr	x0, x1, 0	# 2044
ble.18638:
	lw		x6, 12(x4)	# 584
	ori		x8, x0, 4	# 2040
	mul		x8, x7, x8	# 2040
	add		x6, x6, x8	# 2040
	lw		x6, 0(x6)	# 2040
	sw		x4, -56(x2)	# 2040
	beq		x6, x5, beq.18641	# 2040
	lw		x27, -32(x2)	# 2041
	addi	x5, x7, 0
	sw		x1, -60(x2)	# 2041
	addi	x2, x2, -64	# 2041
	lw		x31, 0(x27)	# 2041
	jalr	x1, x31, 0	# 2041
	addi	x2, x2, 64	# 2041
	lw		x1, -60(x2)	# 2041
	jal		x0, beq_cont.18640	# 2040
beq.18641:
beq_cont.18640:
	lw		x4, -28(x2)	# 2043
	lw		x5, -40(x2)	# 2043
	add		x5, x5, x4	# 2043
	lw		x4, -56(x2)	# 2043
	lw		x27, -24(x2)	# 2043
	lw		x31, 0(x27)	# 2043
	jalr	x0, x31, 0	# 2043
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
write_rgb.2931:
	lw		x5, 24(x27)	# 2140
	lw		x6, 20(x27)	# 2140
	lw		x7, 16(x27)	# 2140
	lw		x8, 12(x27)	# 2140
	lw		x9, 8(x27)	# 2140
	flw		f0, 4(x27)	# 2140
	beq		x4, x7, beq.18642	# 2140
	ori		x4, x0, 4	# 2148
	mul		x4, x8, x4	# 2148
	add		x4, x5, x4	# 2148
	flw		f1, 0(x4)	# 2148
	sw		x6, 0(x2)	# 10
	fsw		f0, -8(x2)	# 10
	sw		x5, -16(x2)	# 10
	sw		x9, -20(x2)	# 10
	sw		x8, -24(x2)	# 10
	fle		x31, f0, f1	# 10
	beq		x31, x0, fle_else.18645	# 10
	lui		x4, %hi(l.9419)	# 11
	ori		x4, x0, %lo(l.9419)	# 11
	flw		f2, 0(x4)	# 11
	fle		x31, f2, f1	# 11
	beq		x31, x0, fle_else.18647	# 11
	fsub	f1, f1, f2	# 11
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -28(x2)	# 11
	addi	x2, x2, -32	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 32	# 11
	lw		x1, -28(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.18646	# 11
fle_else.18647:
	addi	x4, x0, 0	# 11
fle_cont.18646:
	jal		x0, fle_cont.18644	# 10
fle_else.18645:
	fsub	x31, x31, x31	# 12
	fsub	f1, x31, f1	# 12
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -28(x2)	# 12
	addi	x2, x2, -32	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 32	# 12
	lw		x1, -28(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.18644:
	ori		x5, x0, 255	# 2135
	ble		x4, x5, ble.18649	# 2135
	ori		x4, x0, 255	# 2135
	jal		x0, ble_cont.18648	# 2135
ble.18649:
	lw		x6, -24(x2)	# 2135
	ble		x6, x4, ble.18651	# 2135
	addi	x4, x0, 0	# 2135
	jal		x0, ble_cont.18650	# 2135
ble.18651:
ble_cont.18650:
ble_cont.18648:
	sw		x5, -28(x2)	# 2136
	sw		x1, -32(x2)	# 2136
	addi	x2, x2, -36	# 2136
	jal		x1, min_caml_print_char	# 2136
	addi	x2, x2, 36	# 2136
	lw		x1, -32(x2)	# 2136
	ori		x4, x0, 4	# 2149
	lw		x5, -20(x2)	# 2149
	mul		x4, x5, x4	# 2149
	lw		x5, -16(x2)	# 2149
	add		x4, x5, x4	# 2149
	flw		f0, 0(x4)	# 2149
	flw		f1, -8(x2)	# 10
	fle		x31, f1, f0	# 10
	beq		x31, x0, fle_else.18653	# 10
	lui		x4, %hi(l.9419)	# 11
	ori		x4, x0, %lo(l.9419)	# 11
	flw		f2, 0(x4)	# 11
	fle		x31, f2, f0	# 11
	beq		x31, x0, fle_else.18655	# 11
	fsub	f0, f0, f2	# 11
	sw		x1, -32(x2)	# 11
	addi	x2, x2, -36	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 36	# 11
	lw		x1, -32(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.18654	# 11
fle_else.18655:
	addi	x4, x0, 0	# 11
fle_cont.18654:
	jal		x0, fle_cont.18652	# 10
fle_else.18653:
	fsub	x31, x31, x31	# 12
	fsub	f0, x31, f0	# 12
	sw		x1, -32(x2)	# 12
	addi	x2, x2, -36	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 36	# 12
	lw		x1, -32(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.18652:
	lw		x5, -28(x2)	# 2135
	ble		x4, x5, ble.18657	# 2135
	ori		x4, x0, 255	# 2135
	jal		x0, ble_cont.18656	# 2135
ble.18657:
	lw		x6, -24(x2)	# 2135
	ble		x6, x4, ble.18659	# 2135
	addi	x4, x0, 0	# 2135
	jal		x0, ble_cont.18658	# 2135
ble.18659:
ble_cont.18658:
ble_cont.18656:
	sw		x1, -32(x2)	# 2136
	addi	x2, x2, -36	# 2136
	jal		x1, min_caml_print_char	# 2136
	addi	x2, x2, 36	# 2136
	lw		x1, -32(x2)	# 2136
	ori		x4, x0, 4	# 2150
	lw		x5, 0(x2)	# 2150
	mul		x4, x5, x4	# 2150
	lw		x5, -16(x2)	# 2150
	add		x4, x5, x4	# 2150
	flw		f0, 0(x4)	# 2150
	flw		f1, -8(x2)	# 10
	fle		x31, f1, f0	# 10
	beq		x31, x0, fle_else.18661	# 10
	lui		x4, %hi(l.9419)	# 11
	ori		x4, x0, %lo(l.9419)	# 11
	flw		f1, 0(x4)	# 11
	fle		x31, f1, f0	# 11
	beq		x31, x0, fle_else.18663	# 11
	fsub	f0, f0, f1	# 11
	sw		x1, -32(x2)	# 11
	addi	x2, x2, -36	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 36	# 11
	lw		x1, -32(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.18662	# 11
fle_else.18663:
	addi	x4, x0, 0	# 11
fle_cont.18662:
	jal		x0, fle_cont.18660	# 10
fle_else.18661:
	fsub	x31, x31, x31	# 12
	fsub	f0, x31, f0	# 12
	sw		x1, -32(x2)	# 12
	addi	x2, x2, -36	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 36	# 12
	lw		x1, -32(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.18660:
	lw		x5, -28(x2)	# 2135
	ble		x4, x5, ble.18665	# 2135
	ori		x4, x0, 255	# 2135
	jal		x0, ble_cont.18664	# 2135
ble.18665:
	lw		x5, -24(x2)	# 2135
	ble		x5, x4, ble.18667	# 2135
	addi	x4, x0, 0	# 2135
	jal		x0, ble_cont.18666	# 2135
ble.18667:
ble_cont.18666:
ble_cont.18664:
	jal		x0, min_caml_print_char	# 2136
beq.18642:
	ori		x4, x0, 4	# 2141
	mul		x4, x8, x4	# 2141
	add		x4, x5, x4	# 2141
	flw		f1, 0(x4)	# 2141
	sw		x6, 0(x2)	# 10
	fsw		f0, -8(x2)	# 10
	sw		x5, -16(x2)	# 10
	sw		x9, -20(x2)	# 10
	sw		x8, -24(x2)	# 10
	fle		x31, f0, f1	# 10
	beq		x31, x0, fle_else.18669	# 10
	lui		x4, %hi(l.9419)	# 11
	ori		x4, x0, %lo(l.9419)	# 11
	flw		f2, 0(x4)	# 11
	fle		x31, f2, f1	# 11
	beq		x31, x0, fle_else.18671	# 11
	fsub	f1, f1, f2	# 11
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -32(x2)	# 11
	addi	x2, x2, -36	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 36	# 11
	lw		x1, -32(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.18670	# 11
fle_else.18671:
	addi	x4, x0, 0	# 11
fle_cont.18670:
	jal		x0, fle_cont.18668	# 10
fle_else.18669:
	fsub	x31, x31, x31	# 12
	fsub	f1, x31, f1	# 12
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -32(x2)	# 12
	addi	x2, x2, -36	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 36	# 12
	lw		x1, -32(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.18668:
	ori		x5, x0, 255	# 2129
	ble		x4, x5, ble.18673	# 2129
	ori		x4, x0, 255	# 2129
	jal		x0, ble_cont.18672	# 2129
ble.18673:
	lw		x6, -24(x2)	# 2129
	ble		x6, x4, ble.18675	# 2129
	addi	x4, x0, 0	# 2129
	jal		x0, ble_cont.18674	# 2129
ble.18675:
ble_cont.18674:
ble_cont.18672:
	sw		x5, -32(x2)	# 2130
	sw		x1, -36(x2)	# 2130
	addi	x2, x2, -40	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 40	# 2130
	lw		x1, -36(x2)	# 2130
	ori		x4, x0, 32	# 2142
	sw		x4, -36(x2)	# 2142
	sw		x1, -40(x2)	# 2142
	addi	x2, x2, -44	# 2142
	jal		x1, min_caml_print_char	# 2142
	addi	x2, x2, 44	# 2142
	lw		x1, -40(x2)	# 2142
	ori		x4, x0, 4	# 2143
	lw		x5, -20(x2)	# 2143
	mul		x4, x5, x4	# 2143
	lw		x5, -16(x2)	# 2143
	add		x4, x5, x4	# 2143
	flw		f0, 0(x4)	# 2143
	flw		f1, -8(x2)	# 10
	fle		x31, f1, f0	# 10
	beq		x31, x0, fle_else.18677	# 10
	lui		x4, %hi(l.9419)	# 11
	ori		x4, x0, %lo(l.9419)	# 11
	flw		f2, 0(x4)	# 11
	fle		x31, f2, f0	# 11
	beq		x31, x0, fle_else.18679	# 11
	fsub	f0, f0, f2	# 11
	sw		x1, -40(x2)	# 11
	addi	x2, x2, -44	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 44	# 11
	lw		x1, -40(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.18678	# 11
fle_else.18679:
	addi	x4, x0, 0	# 11
fle_cont.18678:
	jal		x0, fle_cont.18676	# 10
fle_else.18677:
	fsub	x31, x31, x31	# 12
	fsub	f0, x31, f0	# 12
	sw		x1, -40(x2)	# 12
	addi	x2, x2, -44	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 44	# 12
	lw		x1, -40(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.18676:
	lw		x5, -32(x2)	# 2129
	ble		x4, x5, ble.18681	# 2129
	ori		x4, x0, 255	# 2129
	jal		x0, ble_cont.18680	# 2129
ble.18681:
	lw		x6, -24(x2)	# 2129
	ble		x6, x4, ble.18683	# 2129
	addi	x4, x0, 0	# 2129
	jal		x0, ble_cont.18682	# 2129
ble.18683:
ble_cont.18682:
ble_cont.18680:
	sw		x1, -40(x2)	# 2130
	addi	x2, x2, -44	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 44	# 2130
	lw		x1, -40(x2)	# 2130
	lw		x4, -36(x2)	# 2144
	sw		x1, -40(x2)	# 2144
	addi	x2, x2, -44	# 2144
	jal		x1, min_caml_print_char	# 2144
	addi	x2, x2, 44	# 2144
	lw		x1, -40(x2)	# 2144
	ori		x4, x0, 4	# 2145
	lw		x5, 0(x2)	# 2145
	mul		x4, x5, x4	# 2145
	lw		x5, -16(x2)	# 2145
	add		x4, x5, x4	# 2145
	flw		f0, 0(x4)	# 2145
	flw		f1, -8(x2)	# 10
	fle		x31, f1, f0	# 10
	beq		x31, x0, fle_else.18685	# 10
	lui		x4, %hi(l.9419)	# 11
	ori		x4, x0, %lo(l.9419)	# 11
	flw		f1, 0(x4)	# 11
	fle		x31, f1, f0	# 11
	beq		x31, x0, fle_else.18687	# 11
	fsub	f0, f0, f1	# 11
	sw		x1, -40(x2)	# 11
	addi	x2, x2, -44	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 44	# 11
	lw		x1, -40(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.18686	# 11
fle_else.18687:
	addi	x4, x0, 0	# 11
fle_cont.18686:
	jal		x0, fle_cont.18684	# 10
fle_else.18685:
	fsub	x31, x31, x31	# 12
	fsub	f0, x31, f0	# 12
	sw		x1, -40(x2)	# 12
	addi	x2, x2, -44	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 44	# 12
	lw		x1, -40(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.18684:
	lw		x5, -32(x2)	# 2129
	ble		x4, x5, ble.18689	# 2129
	ori		x4, x0, 255	# 2129
	jal		x0, ble_cont.18688	# 2129
ble.18689:
	lw		x5, -24(x2)	# 2129
	ble		x5, x4, ble.18691	# 2129
	addi	x4, x0, 0	# 2129
	jal		x0, ble_cont.18690	# 2129
ble.18691:
ble_cont.18690:
ble_cont.18688:
	sw		x1, -40(x2)	# 2130
	addi	x2, x2, -44	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 44	# 2130
	lw		x1, -40(x2)	# 2130
	ori		x4, x0, 10	# 2146
	jal		x0, min_caml_print_char	# 2146
pretrace_diffuse_rays.2933:
	lw		x6, 36(x27)	# 2163
	lw		x7, 32(x27)	# 2163
	lw		x8, 28(x27)	# 2163
	lw		x9, 24(x27)	# 2163
	lw		x10, 20(x27)	# 2163
	lw		x11, 16(x27)	# 2163
	lw		x12, 12(x27)	# 2163
	lw		x13, 8(x27)	# 2163
	lw		x14, 4(x27)	# 2163
	ori		x15, x0, 4	# 2163
	ble		x5, x15, ble.18692	# 2163
	jalr	x0, x1, 0	# 2187
ble.18692:
	lw		x15, 8(x4)	# 577
	ori		x16, x0, 4	# 2063
	mul		x16, x5, x16	# 2063
	add		x15, x15, x16	# 2063
	lw		x15, 0(x15)	# 2063
	ble		x13, x15, ble.18694	# 2167
	jalr	x0, x1, 0	# 2186
ble.18694:
	lw		x15, 12(x4)	# 584
	ori		x16, x0, 4	# 2170
	mul		x16, x5, x16	# 2170
	add		x15, x15, x16	# 2170
	lw		x15, 0(x15)	# 2170
	sw		x27, 0(x2)	# 2170
	sw		x14, -4(x2)	# 2170
	sw		x5, -8(x2)	# 2170
	beq		x15, x13, beq.18697	# 2170
	lw		x15, 24(x4)	# 614
	addi	x16, x0, 0	# 616
	ori		x17, x0, 4	# 616
	mul		x16, x16, x17	# 616
	add		x15, x15, x16	# 616
	lw		x15, 0(x15)	# 616
	lui		x16, %hi(l.9417)	# 254
	ori		x16, x0, %lo(l.9417)	# 254
	flw		f0, 0(x16)	# 254
	ori		x16, x0, 4	# 247
	mul		x16, x13, x16	# 247
	add		x16, x11, x16	# 247
	fsw		f0, 0(x16)	# 247
	ori		x16, x0, 4	# 248
	mul		x16, x14, x16	# 248
	add		x16, x11, x16	# 248
	fsw		f0, 0(x16)	# 248
	ori		x16, x0, 4	# 249
	mul		x16, x12, x16	# 249
	add		x16, x11, x16	# 249
	fsw		f0, 0(x16)	# 249
	lw		x16, 28(x4)	# 628
	lw		x17, 4(x4)	# 569
	ori		x18, x0, 4	# 2179
	mul		x15, x15, x18	# 2179
	add		x10, x10, x15	# 2179
	lw		x10, 0(x10)	# 2179
	ori		x15, x0, 4	# 2180
	mul		x15, x5, x15	# 2180
	add		x15, x16, x15	# 2180
	lw		x15, 0(x15)	# 2180
	ori		x16, x0, 4	# 2181
	mul		x16, x5, x16	# 2181
	add		x16, x17, x16	# 2181
	lw		x16, 0(x16)	# 2181
	ori		x17, x0, 4	# 259
	mul		x17, x13, x17	# 259
	add		x17, x16, x17	# 259
	flw		f0, 0(x17)	# 259
	ori		x17, x0, 4	# 259
	mul		x17, x13, x17	# 259
	add		x17, x6, x17	# 259
	fsw		f0, 0(x17)	# 259
	ori		x17, x0, 4	# 260
	mul		x17, x14, x17	# 260
	add		x17, x16, x17	# 260
	flw		f0, 0(x17)	# 260
	ori		x17, x0, 4	# 260
	mul		x17, x14, x17	# 260
	add		x17, x6, x17	# 260
	fsw		f0, 0(x17)	# 260
	ori		x17, x0, 4	# 261
	mul		x17, x12, x17	# 261
	add		x17, x16, x17	# 261
	flw		f0, 0(x17)	# 261
	ori		x17, x0, 4	# 261
	mul		x17, x12, x17	# 261
	add		x6, x6, x17	# 261
	fsw		f0, 0(x6)	# 261
	ori		x6, x0, 4	# 1315
	mul		x6, x13, x6	# 1315
	add		x6, x8, x6	# 1315
	lw		x6, 0(x6)	# 1315
	sub		x6, x6, x14	# 1315
	sw		x12, -12(x2)	# 1315
	sw		x11, -16(x2)	# 1315
	sw		x13, -20(x2)	# 1315
	sw		x4, -24(x2)	# 1315
	sw		x16, -28(x2)	# 1315
	sw		x15, -32(x2)	# 1315
	sw		x10, -36(x2)	# 1315
	sw		x9, -40(x2)	# 1315
	addi	x5, x6, 0
	addi	x4, x16, 0
	addi	x27, x7, 0
	sw		x1, -44(x2)	# 1315
	addi	x2, x2, -48	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 48	# 1315
	lw		x1, -44(x2)	# 1315
	ori		x7, x0, 118	# 1964
	lw		x4, -36(x2)	# 1964
	lw		x5, -32(x2)	# 1964
	lw		x6, -28(x2)	# 1964
	lw		x27, -40(x2)	# 1964
	sw		x1, -44(x2)	# 1964
	addi	x2, x2, -48	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 48	# 1964
	lw		x1, -44(x2)	# 1964
	lw		x4, -24(x2)	# 598
	lw		x5, 20(x4)	# 598
	ori		x6, x0, 4	# 2183
	lw		x7, -8(x2)	# 2183
	mul		x6, x7, x6	# 2183
	add		x5, x5, x6	# 2183
	lw		x5, 0(x5)	# 2183
	ori		x6, x0, 4	# 259
	lw		x8, -20(x2)	# 259
	mul		x6, x8, x6	# 259
	lw		x9, -16(x2)	# 259
	add		x6, x9, x6	# 259
	flw		f0, 0(x6)	# 259
	ori		x6, x0, 4	# 259
	mul		x6, x8, x6	# 259
	add		x6, x5, x6	# 259
	fsw		f0, 0(x6)	# 259
	ori		x6, x0, 4	# 260
	lw		x8, -4(x2)	# 260
	mul		x6, x8, x6	# 260
	add		x6, x9, x6	# 260
	flw		f0, 0(x6)	# 260
	ori		x6, x0, 4	# 260
	mul		x6, x8, x6	# 260
	add		x6, x5, x6	# 260
	fsw		f0, 0(x6)	# 260
	ori		x6, x0, 4	# 261
	lw		x10, -12(x2)	# 261
	mul		x6, x10, x6	# 261
	add		x6, x9, x6	# 261
	flw		f0, 0(x6)	# 261
	ori		x6, x0, 4	# 261
	mul		x6, x10, x6	# 261
	add		x5, x5, x6	# 261
	fsw		f0, 0(x5)	# 261
	jal		x0, beq_cont.18696	# 2170
beq.18697:
beq_cont.18696:
	lw		x5, -4(x2)	# 2185
	lw		x6, -8(x2)	# 2185
	add		x5, x6, x5	# 2185
	lw		x27, 0(x2)	# 2185
	lw		x31, 0(x27)	# 2185
	jalr	x0, x31, 0	# 2185
pretrace_pixels.2936:
	lw		x7, 60(x27)	# 2193
	lw		x8, 56(x27)	# 2193
	lw		x9, 52(x27)	# 2193
	lw		x10, 48(x27)	# 2193
	lw		x11, 44(x27)	# 2193
	lw		x12, 40(x27)	# 2193
	lw		x13, 36(x27)	# 2193
	lw		x14, 32(x27)	# 2193
	lw		x15, 28(x27)	# 2193
	lw		x16, 24(x27)	# 2193
	lw		x17, 20(x27)	# 2193
	lw		x18, 16(x27)	# 2193
	lw		x19, 12(x27)	# 2193
	lw		x20, 8(x27)	# 2193
	flw		f3, 4(x27)	# 2193
	ble		x19, x5, ble.18698	# 2193
	jalr	x0, x1, 0	# 2213
ble.18698:
	ori		x21, x0, 4	# 2195
	mul		x21, x19, x21	# 2195
	add		x12, x12, x21	# 2195
	flw		f4, 0(x12)	# 2195
	ori		x12, x0, 4	# 2195
	mul		x12, x19, x12	# 2195
	add		x12, x16, x12	# 2195
	lw		x12, 0(x12)	# 2195
	sub		x12, x5, x12	# 2195
	sw		x27, 0(x2)	# 14
	sw		x17, -4(x2)	# 14
	sw		x15, -8(x2)	# 14
	sw		x6, -12(x2)	# 14
	sw		x9, -16(x2)	# 14
	sw		x4, -20(x2)	# 14
	sw		x5, -24(x2)	# 14
	sw		x10, -28(x2)	# 14
	sw		x7, -32(x2)	# 14
	fsw		f3, -40(x2)	# 14
	sw		x13, -48(x2)	# 14
	sw		x8, -52(x2)	# 14
	fsw		f2, -56(x2)	# 14
	sw		x18, -64(x2)	# 14
	fsw		f1, -72(x2)	# 14
	sw		x20, -80(x2)	# 14
	sw		x14, -84(x2)	# 14
	fsw		f0, -88(x2)	# 14
	sw		x11, -96(x2)	# 14
	sw		x19, -100(x2)	# 14
	fsw		f4, -104(x2)	# 14
	ble		x19, x12, ble.18703	# 14
	sub		x12, x0, x12	# 16
	addi	x4, x12, 0
	sw		x1, -112(x2)	# 16
	addi	x2, x2, -116	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 116	# 16
	lw		x1, -112(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.18702	# 14
ble.18703:
	ori		x16, x0, 1	# 15
	ble		x16, x12, ble.18705	# 15
	lui		x12, %hi(l.9417)	# 15
	ori		x12, x0, %lo(l.9417)	# 15
	flw		f0, 0(x12)	# 15
	jal		x0, ble_cont.18704	# 15
ble.18705:
	sub		x12, x12, x16	# 15
	addi	x4, x12, 0
	sw		x1, -112(x2)	# 15
	addi	x2, x2, -116	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 116	# 15
	lw		x1, -112(x2)	# 15
	lui		x4, %hi(l.9419)	# 15
	ori		x4, x0, %lo(l.9419)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.18704:
ble_cont.18702:
	flw		f1, -104(x2)	# 2195
	fmul	f0, f1, f0	# 2195
	ori		x4, x0, 4	# 2196
	lw		x5, -100(x2)	# 2196
	mul		x4, x5, x4	# 2196
	lw		x6, -96(x2)	# 2196
	add		x4, x6, x4	# 2196
	flw		f1, 0(x4)	# 2196
	fmul	f1, f0, f1	# 2196
	flw		f2, -88(x2)	# 2196
	fadd	f1, f1, f2	# 2196
	ori		x4, x0, 4	# 2196
	mul		x4, x5, x4	# 2196
	lw		x7, -84(x2)	# 2196
	add		x4, x7, x4	# 2196
	fsw		f1, 0(x4)	# 2196
	ori		x4, x0, 4	# 2197
	lw		x8, -80(x2)	# 2197
	mul		x4, x8, x4	# 2197
	add		x4, x6, x4	# 2197
	flw		f1, 0(x4)	# 2197
	fmul	f1, f0, f1	# 2197
	flw		f3, -72(x2)	# 2197
	fadd	f1, f1, f3	# 2197
	ori		x4, x0, 4	# 2197
	mul		x4, x8, x4	# 2197
	add		x4, x7, x4	# 2197
	fsw		f1, 0(x4)	# 2197
	ori		x4, x0, 4	# 2198
	lw		x9, -64(x2)	# 2198
	mul		x4, x9, x4	# 2198
	add		x4, x6, x4	# 2198
	flw		f1, 0(x4)	# 2198
	fmul	f0, f0, f1	# 2198
	flw		f1, -56(x2)	# 2198
	fadd	f0, f0, f1	# 2198
	ori		x4, x0, 4	# 2198
	mul		x4, x9, x4	# 2198
	add		x4, x7, x4	# 2198
	fsw		f0, 0(x4)	# 2198
	lw		x27, -52(x2)	# 2199
	addi	x4, x7, 0
	sw		x1, -112(x2)	# 2199
	addi	x2, x2, -116	# 2199
	lw		x31, 0(x27)	# 2199
	jalr	x1, x31, 0	# 2199
	addi	x2, x2, 116	# 2199
	lw		x1, -112(x2)	# 2199
	ori		x4, x0, 4	# 247
	lw		x5, -100(x2)	# 247
	mul		x4, x5, x4	# 247
	lw		x6, -48(x2)	# 247
	add		x4, x6, x4	# 247
	flw		f1, -40(x2)	# 247
	fsw		f1, 0(x4)	# 247
	ori		x4, x0, 4	# 248
	lw		x7, -80(x2)	# 248
	mul		x4, x7, x4	# 248
	add		x4, x6, x4	# 248
	fsw		f1, 0(x4)	# 248
	ori		x4, x0, 4	# 249
	lw		x8, -64(x2)	# 249
	mul		x4, x8, x4	# 249
	add		x4, x6, x4	# 249
	fsw		f1, 0(x4)	# 249
	ori		x4, x0, 4	# 259
	mul		x4, x5, x4	# 259
	lw		x9, -32(x2)	# 259
	add		x4, x9, x4	# 259
	flw		f0, 0(x4)	# 259
	ori		x4, x0, 4	# 259
	mul		x4, x5, x4	# 259
	lw		x10, -28(x2)	# 259
	add		x4, x10, x4	# 259
	fsw		f0, 0(x4)	# 259
	ori		x4, x0, 4	# 260
	mul		x4, x7, x4	# 260
	add		x4, x9, x4	# 260
	flw		f0, 0(x4)	# 260
	ori		x4, x0, 4	# 260
	mul		x4, x7, x4	# 260
	add		x4, x10, x4	# 260
	fsw		f0, 0(x4)	# 260
	ori		x4, x0, 4	# 261
	mul		x4, x8, x4	# 261
	add		x4, x9, x4	# 261
	flw		f0, 0(x4)	# 261
	ori		x4, x0, 4	# 261
	mul		x4, x8, x4	# 261
	add		x4, x10, x4	# 261
	fsw		f0, 0(x4)	# 261
	lui		x4, %hi(l.9419)	# 2204
	ori		x4, x0, %lo(l.9419)	# 2204
	flw		f0, 0(x4)	# 2204
	ori		x4, x0, 4	# 2204
	lw		x9, -24(x2)	# 2204
	mul		x4, x9, x4	# 2204
	lw		x10, -20(x2)	# 2204
	add		x4, x10, x4	# 2204
	lw		x4, 0(x4)	# 2204
	lw		x11, -84(x2)	# 2204
	lw		x27, -16(x2)	# 2204
	addi	x6, x4, 0
	addi	x4, x5, 0
	addi	x5, x11, 0
	sw		x1, -112(x2)	# 2204
	addi	x2, x2, -116	# 2204
	lw		x31, 0(x27)	# 2204
	jalr	x1, x31, 0	# 2204
	addi	x2, x2, 116	# 2204
	lw		x1, -112(x2)	# 2204
	ori		x4, x0, 4	# 2205
	lw		x5, -24(x2)	# 2205
	mul		x4, x5, x4	# 2205
	lw		x6, -20(x2)	# 2205
	add		x4, x6, x4	# 2205
	lw		x4, 0(x4)	# 2205
	lw		x4, 0(x4)	# 562
	ori		x7, x0, 4	# 259
	lw		x8, -100(x2)	# 259
	mul		x7, x8, x7	# 259
	lw		x9, -48(x2)	# 259
	add		x7, x9, x7	# 259
	flw		f0, 0(x7)	# 259
	ori		x7, x0, 4	# 259
	mul		x7, x8, x7	# 259
	add		x7, x4, x7	# 259
	fsw		f0, 0(x7)	# 259
	ori		x7, x0, 4	# 260
	lw		x10, -80(x2)	# 260
	mul		x7, x10, x7	# 260
	add		x7, x9, x7	# 260
	flw		f0, 0(x7)	# 260
	ori		x7, x0, 4	# 260
	mul		x7, x10, x7	# 260
	add		x7, x4, x7	# 260
	fsw		f0, 0(x7)	# 260
	ori		x7, x0, 4	# 261
	lw		x11, -64(x2)	# 261
	mul		x7, x11, x7	# 261
	add		x7, x9, x7	# 261
	flw		f0, 0(x7)	# 261
	ori		x7, x0, 4	# 261
	mul		x7, x11, x7	# 261
	add		x4, x4, x7	# 261
	fsw		f0, 0(x4)	# 261
	ori		x4, x0, 4	# 2206
	mul		x4, x5, x4	# 2206
	add		x4, x6, x4	# 2206
	lw		x4, 0(x4)	# 2206
	lw		x4, 24(x4)	# 621
	ori		x7, x0, 4	# 623
	mul		x7, x8, x7	# 623
	add		x4, x4, x7	# 623
	lw		x7, -12(x2)	# 623
	sw		x7, 0(x4)	# 623
	ori		x4, x0, 4	# 2209
	mul		x4, x5, x4	# 2209
	add		x4, x6, x4	# 2209
	lw		x4, 0(x4)	# 2209
	lw		x27, -8(x2)	# 2209
	addi	x5, x8, 0
	sw		x1, -112(x2)	# 2209
	addi	x2, x2, -116	# 2209
	lw		x31, 0(x27)	# 2209
	jalr	x1, x31, 0	# 2209
	addi	x2, x2, 116	# 2209
	lw		x1, -112(x2)	# 2209
	lw		x4, -80(x2)	# 2211
	lw		x5, -24(x2)	# 2211
	sub		x5, x5, x4	# 2211
	lw		x6, -12(x2)	# 224
	add		x4, x6, x4	# 224
	lw		x6, -4(x2)	# 225
	ble		x6, x4, ble.18707	# 225
	addi	x6, x4, 0	# 225
	jal		x0, ble_cont.18706	# 225
ble.18707:
	sub		x6, x4, x6	# 225
ble_cont.18706:
	flw		f0, -88(x2)	# 2211
	flw		f1, -72(x2)	# 2211
	flw		f2, -56(x2)	# 2211
	lw		x4, -20(x2)	# 2211
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
	sw		x6, 0(x2)	# 14
	sw		x4, -4(x2)	# 14
	sw		x10, -8(x2)	# 14
	sw		x11, -12(x2)	# 14
	sw		x13, -16(x2)	# 14
	sw		x15, -20(x2)	# 14
	sw		x7, -24(x2)	# 14
	sw		x8, -28(x2)	# 14
	sw		x14, -32(x2)	# 14
	fsw		f0, -40(x2)	# 14
	ble		x14, x5, ble.18710	# 14
	sub		x5, x0, x5	# 16
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 16
	addi	x2, x2, -52	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 52	# 16
	lw		x1, -48(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.18709	# 14
ble.18710:
	ori		x9, x0, 1	# 15
	ble		x9, x5, ble.18712	# 15
	lui		x5, %hi(l.9417)	# 15
	ori		x5, x0, %lo(l.9417)	# 15
	flw		f0, 0(x5)	# 15
	jal		x0, ble_cont.18711	# 15
ble.18712:
	sub		x5, x5, x9	# 15
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 15
	addi	x2, x2, -52	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 52	# 15
	lw		x1, -48(x2)	# 15
	lui		x4, %hi(l.9419)	# 15
	ori		x4, x0, %lo(l.9419)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.18711:
ble_cont.18709:
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
	add		x19, x13, x19	# 2234
	lw		x19, 0(x19)	# 2234
	ble		x19, x4, ble.18713	# 2234
	ori		x19, x0, 4	# 2237
	mul		x19, x4, x19	# 2237
	add		x19, x7, x19	# 2237
	lw		x19, 0(x19)	# 2237
	lw		x19, 0(x19)	# 562
	ori		x20, x0, 4	# 259
	mul		x20, x17, x20	# 259
	add		x20, x19, x20	# 259
	flw		f0, 0(x20)	# 259
	ori		x20, x0, 4	# 259
	mul		x20, x17, x20	# 259
	add		x20, x12, x20	# 259
	fsw		f0, 0(x20)	# 259
	ori		x20, x0, 4	# 260
	mul		x20, x18, x20	# 260
	add		x20, x19, x20	# 260
	flw		f0, 0(x20)	# 260
	ori		x20, x0, 4	# 260
	mul		x20, x18, x20	# 260
	add		x20, x12, x20	# 260
	fsw		f0, 0(x20)	# 260
	ori		x20, x0, 4	# 261
	mul		x20, x16, x20	# 261
	add		x19, x19, x20	# 261
	flw		f0, 0(x19)	# 261
	ori		x19, x0, 4	# 261
	mul		x16, x16, x19	# 261
	add		x12, x12, x16	# 261
	fsw		f0, 0(x12)	# 261
	ori		x12, x0, 4	# 2050
	mul		x12, x18, x12	# 2050
	add		x12, x13, x12	# 2050
	lw		x12, 0(x12)	# 2050
	add		x16, x5, x18	# 2050
	ble		x12, x16, ble.18715	# 2050
	ble		x5, x17, ble.18717	# 2051
	ori		x12, x0, 4	# 2052
	mul		x12, x17, x12	# 2052
	add		x12, x13, x12	# 2052
	lw		x12, 0(x12)	# 2052
	add		x13, x4, x18	# 2052
	ble		x12, x13, ble.18719	# 2052
	ble		x4, x17, ble.18721	# 2053
	ori		x12, x0, 1	# 2054
	jal		x0, ble_cont.18720	# 2053
ble.18721:
	addi	x12, x0, 0	# 2055
ble_cont.18720:
	jal		x0, ble_cont.18718	# 2052
ble.18719:
	addi	x12, x0, 0	# 2056
ble_cont.18718:
	jal		x0, ble_cont.18716	# 2051
ble.18717:
	addi	x12, x0, 0	# 2057
ble_cont.18716:
	jal		x0, ble_cont.18714	# 2050
ble.18715:
	addi	x12, x0, 0	# 2058
ble_cont.18714:
	sw		x8, 0(x2)	# 2240
	sw		x7, -4(x2)	# 2240
	sw		x6, -8(x2)	# 2240
	sw		x5, -12(x2)	# 2240
	sw		x27, -16(x2)	# 2240
	sw		x18, -20(x2)	# 2240
	sw		x4, -24(x2)	# 2240
	sw		x9, -28(x2)	# 2240
	sw		x10, -32(x2)	# 2240
	beq		x12, x17, beq.18723	# 2240
	addi	x12, x0, 0	# 2241
	addi	x9, x12, 0
	addi	x27, x11, 0
	sw		x1, -36(x2)	# 2241
	addi	x2, x2, -40	# 2241
	lw		x31, 0(x27)	# 2241
	jalr	x1, x31, 0	# 2241
	addi	x2, x2, 40	# 2241
	lw		x1, -36(x2)	# 2241
	jal		x0, beq_cont.18722	# 2240
beq.18723:
	ori		x11, x0, 4	# 2243
	mul		x11, x4, x11	# 2243
	add		x11, x7, x11	# 2243
	lw		x11, 0(x11)	# 2243
	addi	x12, x0, 0	# 2243
	lw		x13, 8(x11)	# 577
	ori		x16, x0, 4	# 2038
	mul		x16, x12, x16	# 2038
	add		x13, x13, x16	# 2038
	lw		x13, 0(x13)	# 2038
	ble		x17, x13, ble.18725	# 2038
	jal		x0, ble_cont.18724	# 2038
ble.18725:
	lw		x13, 12(x11)	# 584
	ori		x16, x0, 4	# 2040
	mul		x16, x12, x16	# 2040
	add		x13, x13, x16	# 2040
	lw		x13, 0(x13)	# 2040
	sw		x11, -36(x2)	# 2040
	sw		x14, -40(x2)	# 2040
	beq		x13, x17, beq.18727	# 2040
	addi	x5, x12, 0
	addi	x4, x11, 0
	addi	x27, x15, 0
	sw		x1, -44(x2)	# 2041
	addi	x2, x2, -48	# 2041
	lw		x31, 0(x27)	# 2041
	jalr	x1, x31, 0	# 2041
	addi	x2, x2, 48	# 2041
	lw		x1, -44(x2)	# 2041
	jal		x0, beq_cont.18726	# 2040
beq.18727:
beq_cont.18726:
	ori		x5, x0, 1	# 2043
	lw		x4, -36(x2)	# 2043
	lw		x27, -40(x2)	# 2043
	sw		x1, -44(x2)	# 2043
	addi	x2, x2, -48	# 2043
	lw		x31, 0(x27)	# 2043
	jalr	x1, x31, 0	# 2043
	addi	x2, x2, 48	# 2043
	lw		x1, -44(x2)	# 2043
ble_cont.18724:
beq_cont.18722:
	lw		x4, -28(x2)	# 2246
	lw		x27, -32(x2)	# 2246
	sw		x1, -44(x2)	# 2246
	addi	x2, x2, -48	# 2246
	lw		x31, 0(x27)	# 2246
	jalr	x1, x31, 0	# 2246
	addi	x2, x2, 48	# 2246
	lw		x1, -44(x2)	# 2246
	lw		x4, -20(x2)	# 2248
	lw		x5, -24(x2)	# 2248
	add		x4, x5, x4	# 2248
	lw		x5, -12(x2)	# 2248
	lw		x6, -8(x2)	# 2248
	lw		x7, -4(x2)	# 2248
	lw		x8, 0(x2)	# 2248
	lw		x9, -28(x2)	# 2248
	lw		x27, -16(x2)	# 2248
	lw		x31, 0(x27)	# 2248
	jalr	x0, x31, 0	# 2248
ble.18713:
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
	ble		x12, x4, ble.18729	# 2255
	sub		x12, x12, x16	# 2257
	sw		x27, 0(x2)	# 2257
	sw		x13, -4(x2)	# 2257
	sw		x14, -8(x2)	# 2257
	sw		x8, -12(x2)	# 2257
	sw		x16, -16(x2)	# 2257
	sw		x9, -20(x2)	# 2257
	sw		x7, -24(x2)	# 2257
	sw		x6, -28(x2)	# 2257
	sw		x5, -32(x2)	# 2257
	sw		x4, -36(x2)	# 2257
	sw		x15, -40(x2)	# 2257
	sw		x10, -44(x2)	# 2257
	ble		x12, x4, ble.18731	# 2257
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
	jal		x0, ble_cont.18730	# 2257
ble.18731:
ble_cont.18730:
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
	lw		x5, -8(x2)	# 224
	lw		x6, -12(x2)	# 224
	add		x5, x6, x5	# 224
	lw		x6, -4(x2)	# 225
	ble		x6, x5, ble.18733	# 225
	addi	x8, x5, 0	# 225
	jal		x0, ble_cont.18732	# 225
ble.18733:
	sub		x8, x5, x6	# 225
ble_cont.18732:
	lw		x5, -28(x2)	# 2261
	lw		x6, -24(x2)	# 2261
	lw		x7, -32(x2)	# 2261
	lw		x9, -20(x2)	# 2261
	lw		x27, 0(x2)	# 2261
	lw		x31, 0(x27)	# 2261
	jalr	x0, x31, 0	# 2261
ble.18729:
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
init_line_elements.2965:
	lw		x6, 24(x27)	# 2297
	lw		x7, 20(x27)	# 2297
	lw		x8, 16(x27)	# 2297
	lw		x9, 12(x27)	# 2297
	lw		x10, 8(x27)	# 2297
	flw		f0, 4(x27)	# 2297
	ble		x9, x5, ble.18735	# 2297
	jalr	x0, x1, 0	# 2301
ble.18735:
	sw		x27, 0(x2)	# 2284
	fsw		f0, -8(x2)	# 2284
	sw		x8, -16(x2)	# 2284
	sw		x4, -20(x2)	# 2284
	sw		x5, -24(x2)	# 2284
	sw		x10, -28(x2)	# 2284
	sw		x9, -32(x2)	# 2284
	sw		x7, -36(x2)	# 2284
	sw		x6, -40(x2)	# 2284
	addi	x4, x8, 0
	sw		x1, -44(x2)	# 2284
	addi	x2, x2, -48	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 48	# 2284
	lw		x1, -44(x2)	# 2284
	lw		x27, -40(x2)	# 2285
	sw		x4, -44(x2)	# 2285
	sw		x1, -48(x2)	# 2285
	addi	x2, x2, -52	# 2285
	lw		x31, 0(x27)	# 2285
	jalr	x1, x31, 0	# 2285
	addi	x2, x2, 52	# 2285
	lw		x1, -48(x2)	# 2285
	lw		x5, -36(x2)	# 2286
	lw		x6, -32(x2)	# 2286
	sw		x4, -48(x2)	# 2286
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -52(x2)	# 2286
	addi	x2, x2, -56	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 56	# 2286
	lw		x1, -52(x2)	# 2286
	lw		x5, -36(x2)	# 2287
	lw		x6, -32(x2)	# 2287
	sw		x4, -52(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -56(x2)	# 2287
	addi	x2, x2, -60	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 60	# 2287
	lw		x1, -56(x2)	# 2287
	lw		x27, -40(x2)	# 2288
	sw		x4, -56(x2)	# 2288
	sw		x1, -60(x2)	# 2288
	addi	x2, x2, -64	# 2288
	lw		x31, 0(x27)	# 2288
	jalr	x1, x31, 0	# 2288
	addi	x2, x2, 64	# 2288
	lw		x1, -60(x2)	# 2288
	lw		x27, -40(x2)	# 2289
	sw		x4, -60(x2)	# 2289
	sw		x1, -64(x2)	# 2289
	addi	x2, x2, -68	# 2289
	lw		x31, 0(x27)	# 2289
	jalr	x1, x31, 0	# 2289
	addi	x2, x2, 68	# 2289
	lw		x1, -64(x2)	# 2289
	lw		x5, -28(x2)	# 2290
	lw		x6, -32(x2)	# 2290
	sw		x4, -64(x2)	# 2290
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -68(x2)	# 2290
	addi	x2, x2, -72	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 72	# 2290
	lw		x1, -68(x2)	# 2290
	lw		x27, -40(x2)	# 2291
	sw		x4, -68(x2)	# 2291
	sw		x1, -72(x2)	# 2291
	addi	x2, x2, -76	# 2291
	lw		x31, 0(x27)	# 2291
	jalr	x1, x31, 0	# 2291
	addi	x2, x2, 76	# 2291
	lw		x1, -72(x2)	# 2291
	addi	x5, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x4, 28(x5)	# 2292
	lw		x4, -68(x2)	# 2292
	sw		x4, 24(x5)	# 2292
	lw		x4, -64(x2)	# 2292
	sw		x4, 20(x5)	# 2292
	lw		x4, -60(x2)	# 2292
	sw		x4, 16(x5)	# 2292
	lw		x4, -56(x2)	# 2292
	sw		x4, 12(x5)	# 2292
	lw		x4, -52(x2)	# 2292
	sw		x4, 8(x5)	# 2292
	lw		x4, -48(x2)	# 2292
	sw		x4, 4(x5)	# 2292
	lw		x4, -44(x2)	# 2292
	sw		x4, 0(x5)	# 2292
	addi	x4, x5, 0	# 2292
	ori		x5, x0, 4	# 2298
	lw		x6, -24(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -20(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -28(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x6, -32(x2)	# 2297
	ble		x6, x5, ble.18737	# 2297
	addi	x4, x7, 0	# 2301
	jalr	x0, x1, 0	# 2301
ble.18737:
	flw		f0, -8(x2)	# 2284
	lw		x8, -16(x2)	# 2284
	sw		x5, -72(x2)	# 2284
	addi	x4, x8, 0
	sw		x1, -76(x2)	# 2284
	addi	x2, x2, -80	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 80	# 2284
	lw		x1, -76(x2)	# 2284
	lw		x27, -40(x2)	# 2285
	sw		x4, -76(x2)	# 2285
	sw		x1, -80(x2)	# 2285
	addi	x2, x2, -84	# 2285
	lw		x31, 0(x27)	# 2285
	jalr	x1, x31, 0	# 2285
	addi	x2, x2, 84	# 2285
	lw		x1, -80(x2)	# 2285
	lw		x5, -36(x2)	# 2286
	lw		x6, -32(x2)	# 2286
	sw		x4, -80(x2)	# 2286
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -84(x2)	# 2286
	addi	x2, x2, -88	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 88	# 2286
	lw		x1, -84(x2)	# 2286
	lw		x5, -36(x2)	# 2287
	lw		x6, -32(x2)	# 2287
	sw		x4, -84(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -88(x2)	# 2287
	addi	x2, x2, -92	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 92	# 2287
	lw		x1, -88(x2)	# 2287
	lw		x27, -40(x2)	# 2288
	sw		x4, -88(x2)	# 2288
	sw		x1, -92(x2)	# 2288
	addi	x2, x2, -96	# 2288
	lw		x31, 0(x27)	# 2288
	jalr	x1, x31, 0	# 2288
	addi	x2, x2, 96	# 2288
	lw		x1, -92(x2)	# 2288
	lw		x27, -40(x2)	# 2289
	sw		x4, -92(x2)	# 2289
	sw		x1, -96(x2)	# 2289
	addi	x2, x2, -100	# 2289
	lw		x31, 0(x27)	# 2289
	jalr	x1, x31, 0	# 2289
	addi	x2, x2, 100	# 2289
	lw		x1, -96(x2)	# 2289
	lw		x5, -28(x2)	# 2290
	lw		x6, -32(x2)	# 2290
	sw		x4, -96(x2)	# 2290
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -100(x2)	# 2290
	addi	x2, x2, -104	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 104	# 2290
	lw		x1, -100(x2)	# 2290
	lw		x27, -40(x2)	# 2291
	sw		x4, -100(x2)	# 2291
	sw		x1, -104(x2)	# 2291
	addi	x2, x2, -108	# 2291
	lw		x31, 0(x27)	# 2291
	jalr	x1, x31, 0	# 2291
	addi	x2, x2, 108	# 2291
	lw		x1, -104(x2)	# 2291
	addi	x5, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x4, 28(x5)	# 2292
	lw		x4, -100(x2)	# 2292
	sw		x4, 24(x5)	# 2292
	lw		x4, -96(x2)	# 2292
	sw		x4, 20(x5)	# 2292
	lw		x4, -92(x2)	# 2292
	sw		x4, 16(x5)	# 2292
	lw		x4, -88(x2)	# 2292
	sw		x4, 12(x5)	# 2292
	lw		x4, -84(x2)	# 2292
	sw		x4, 8(x5)	# 2292
	lw		x4, -80(x2)	# 2292
	sw		x4, 4(x5)	# 2292
	lw		x4, -76(x2)	# 2292
	sw		x4, 0(x5)	# 2292
	addi	x4, x5, 0	# 2292
	ori		x5, x0, 4	# 2298
	lw		x6, -72(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -20(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -28(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x6, -32(x2)	# 2297
	ble		x6, x5, ble.18738	# 2297
	addi	x4, x7, 0	# 2301
	jalr	x0, x1, 0	# 2301
ble.18738:
	flw		f0, -8(x2)	# 2284
	lw		x8, -16(x2)	# 2284
	sw		x5, -104(x2)	# 2284
	addi	x4, x8, 0
	sw		x1, -108(x2)	# 2284
	addi	x2, x2, -112	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 112	# 2284
	lw		x1, -108(x2)	# 2284
	lw		x27, -40(x2)	# 2285
	sw		x4, -108(x2)	# 2285
	sw		x1, -112(x2)	# 2285
	addi	x2, x2, -116	# 2285
	lw		x31, 0(x27)	# 2285
	jalr	x1, x31, 0	# 2285
	addi	x2, x2, 116	# 2285
	lw		x1, -112(x2)	# 2285
	lw		x5, -36(x2)	# 2286
	lw		x6, -32(x2)	# 2286
	sw		x4, -112(x2)	# 2286
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -116(x2)	# 2286
	addi	x2, x2, -120	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 120	# 2286
	lw		x1, -116(x2)	# 2286
	lw		x5, -36(x2)	# 2287
	lw		x6, -32(x2)	# 2287
	sw		x4, -116(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -120(x2)	# 2287
	addi	x2, x2, -124	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 124	# 2287
	lw		x1, -120(x2)	# 2287
	lw		x27, -40(x2)	# 2288
	sw		x4, -120(x2)	# 2288
	sw		x1, -124(x2)	# 2288
	addi	x2, x2, -128	# 2288
	lw		x31, 0(x27)	# 2288
	jalr	x1, x31, 0	# 2288
	addi	x2, x2, 128	# 2288
	lw		x1, -124(x2)	# 2288
	lw		x27, -40(x2)	# 2289
	sw		x4, -124(x2)	# 2289
	sw		x1, -128(x2)	# 2289
	addi	x2, x2, -132	# 2289
	lw		x31, 0(x27)	# 2289
	jalr	x1, x31, 0	# 2289
	addi	x2, x2, 132	# 2289
	lw		x1, -128(x2)	# 2289
	lw		x5, -28(x2)	# 2290
	lw		x6, -32(x2)	# 2290
	sw		x4, -128(x2)	# 2290
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -132(x2)	# 2290
	addi	x2, x2, -136	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 136	# 2290
	lw		x1, -132(x2)	# 2290
	lw		x27, -40(x2)	# 2291
	sw		x4, -132(x2)	# 2291
	sw		x1, -136(x2)	# 2291
	addi	x2, x2, -140	# 2291
	lw		x31, 0(x27)	# 2291
	jalr	x1, x31, 0	# 2291
	addi	x2, x2, 140	# 2291
	lw		x1, -136(x2)	# 2291
	addi	x5, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x4, 28(x5)	# 2292
	lw		x4, -132(x2)	# 2292
	sw		x4, 24(x5)	# 2292
	lw		x4, -128(x2)	# 2292
	sw		x4, 20(x5)	# 2292
	lw		x4, -124(x2)	# 2292
	sw		x4, 16(x5)	# 2292
	lw		x4, -120(x2)	# 2292
	sw		x4, 12(x5)	# 2292
	lw		x4, -116(x2)	# 2292
	sw		x4, 8(x5)	# 2292
	lw		x4, -112(x2)	# 2292
	sw		x4, 4(x5)	# 2292
	lw		x4, -108(x2)	# 2292
	sw		x4, 0(x5)	# 2292
	addi	x4, x5, 0	# 2292
	ori		x5, x0, 4	# 2298
	lw		x6, -104(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -20(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -28(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x6, -32(x2)	# 2297
	ble		x6, x5, ble.18739	# 2297
	addi	x4, x7, 0	# 2301
	jalr	x0, x1, 0	# 2301
ble.18739:
	flw		f0, -8(x2)	# 2284
	lw		x8, -16(x2)	# 2284
	sw		x5, -136(x2)	# 2284
	addi	x4, x8, 0
	sw		x1, -140(x2)	# 2284
	addi	x2, x2, -144	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 144	# 2284
	lw		x1, -140(x2)	# 2284
	lw		x27, -40(x2)	# 2285
	sw		x4, -140(x2)	# 2285
	sw		x1, -144(x2)	# 2285
	addi	x2, x2, -148	# 2285
	lw		x31, 0(x27)	# 2285
	jalr	x1, x31, 0	# 2285
	addi	x2, x2, 148	# 2285
	lw		x1, -144(x2)	# 2285
	lw		x5, -36(x2)	# 2286
	lw		x6, -32(x2)	# 2286
	sw		x4, -144(x2)	# 2286
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -148(x2)	# 2286
	addi	x2, x2, -152	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 152	# 2286
	lw		x1, -148(x2)	# 2286
	lw		x5, -36(x2)	# 2287
	lw		x6, -32(x2)	# 2287
	sw		x4, -148(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -152(x2)	# 2287
	addi	x2, x2, -156	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 156	# 2287
	lw		x1, -152(x2)	# 2287
	lw		x27, -40(x2)	# 2288
	sw		x4, -152(x2)	# 2288
	sw		x1, -156(x2)	# 2288
	addi	x2, x2, -160	# 2288
	lw		x31, 0(x27)	# 2288
	jalr	x1, x31, 0	# 2288
	addi	x2, x2, 160	# 2288
	lw		x1, -156(x2)	# 2288
	lw		x27, -40(x2)	# 2289
	sw		x4, -156(x2)	# 2289
	sw		x1, -160(x2)	# 2289
	addi	x2, x2, -164	# 2289
	lw		x31, 0(x27)	# 2289
	jalr	x1, x31, 0	# 2289
	addi	x2, x2, 164	# 2289
	lw		x1, -160(x2)	# 2289
	lw		x5, -28(x2)	# 2290
	lw		x6, -32(x2)	# 2290
	sw		x4, -160(x2)	# 2290
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -164(x2)	# 2290
	addi	x2, x2, -168	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 168	# 2290
	lw		x1, -164(x2)	# 2290
	lw		x27, -40(x2)	# 2291
	sw		x4, -164(x2)	# 2291
	sw		x1, -168(x2)	# 2291
	addi	x2, x2, -172	# 2291
	lw		x31, 0(x27)	# 2291
	jalr	x1, x31, 0	# 2291
	addi	x2, x2, 172	# 2291
	lw		x1, -168(x2)	# 2291
	addi	x5, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x4, 28(x5)	# 2292
	lw		x4, -164(x2)	# 2292
	sw		x4, 24(x5)	# 2292
	lw		x4, -160(x2)	# 2292
	sw		x4, 20(x5)	# 2292
	lw		x4, -156(x2)	# 2292
	sw		x4, 16(x5)	# 2292
	lw		x4, -152(x2)	# 2292
	sw		x4, 12(x5)	# 2292
	lw		x4, -148(x2)	# 2292
	sw		x4, 8(x5)	# 2292
	lw		x4, -144(x2)	# 2292
	sw		x4, 4(x5)	# 2292
	lw		x4, -140(x2)	# 2292
	sw		x4, 0(x5)	# 2292
	addi	x4, x5, 0	# 2292
	ori		x5, x0, 4	# 2298
	lw		x6, -136(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -20(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -28(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x27, 0(x2)	# 2299
	addi	x4, x7, 0
	lw		x31, 0(x27)	# 2299
	jalr	x0, x31, 0	# 2299
calc_dirvec.2975:
	lw		x7, 44(x27)	# 2334
	flw		f4, 40(x27)	# 2334
	flw		f5, 36(x27)	# 2334
	lw		x8, 32(x27)	# 2334
	lw		x9, 28(x27)	# 2334
	lw		x10, 24(x27)	# 2334
	lw		x11, 20(x27)	# 2334
	lw		x12, 16(x27)	# 2334
	lw		x13, 12(x27)	# 2334
	lw		x14, 8(x27)	# 2334
	flw		f6, 4(x27)	# 2334
	ble		x11, x4, ble.18740	# 2334
	fmul	f0, f1, f1	# 2325
	lui		x8, %hi(l.11224)	# 2325
	ori		x8, x0, %lo(l.11224)	# 2325
	flw		f1, 0(x8)	# 2325
	fadd	f0, f0, f1	# 2325
	sw		x6, 0(x2)	# 2325
	sw		x5, -4(x2)	# 2325
	sw		x27, -8(x2)	# 2325
	fsw		f3, -16(x2)	# 2325
	fsw		f1, -24(x2)	# 2325
	sw		x14, -32(x2)	# 2325
	sw		x4, -36(x2)	# 2325
	sw		x9, -40(x2)	# 2325
	fsw		f5, -48(x2)	# 2325
	fsw		f4, -56(x2)	# 2325
	fsw		f6, -64(x2)	# 2325
	sw		x7, -72(x2)	# 2325
	fsw		f2, -80(x2)	# 2325
	sw		x10, -88(x2)	# 2325
	sw		x1, -92(x2)	# 2325
	addi	x2, x2, -96	# 2325
	jal		x1, min_caml_sqrt	# 2325
	addi	x2, x2, 96	# 2325
	lw		x1, -92(x2)	# 2325
	lui		x4, %hi(l.9419)	# 2326
	ori		x4, x0, %lo(l.9419)	# 2326
	flw		f1, 0(x4)	# 2326
	fdiv	f2, f1, f0	# 2326
	lw		x27, -88(x2)	# 2327
	fsw		f1, -96(x2)	# 2327
	fsw		f0, -104(x2)	# 2327
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -112(x2)	# 2327
	addi	x2, x2, -116	# 2327
	lw		x31, 0(x27)	# 2327
	jalr	x1, x31, 0	# 2327
	addi	x2, x2, 116	# 2327
	lw		x1, -112(x2)	# 2327
	flw		f1, -80(x2)	# 2328
	fmul	f0, f0, f1	# 2328
	lw		x27, -72(x2)	# 2320
	fsw		f0, -112(x2)	# 2320
	sw		x1, -120(x2)	# 2320
	addi	x2, x2, -124	# 2320
	lw		x31, 0(x27)	# 2320
	jalr	x1, x31, 0	# 2320
	addi	x2, x2, 124	# 2320
	lw		x1, -120(x2)	# 2320
	flw		f1, -112(x2)	# 54
	flw		f2, -64(x2)	# 54
	fsw		f0, -120(x2)	# 54
	fle		x31, f2, f1	# 54
	beq		x31, x0, fle_else.18746	# 54
	flw		f3, -56(x2)	# 55
	fle		x31, f1, f3	# 55
	beq		x31, x0, fle_else.18748	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -128(x2)	# 56
	addi	x2, x2, -132	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 132	# 56
	lw		x1, -128(x2)	# 56
	jal		x0, fle_cont.18747	# 55
fle_else.18748:
	flw		f4, -48(x2)	# 55
	fsub	f1, f4, f1	# 55
	lw		x27, -72(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -128(x2)	# 55
	addi	x2, x2, -132	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 132	# 55
	lw		x1, -128(x2)	# 55
fle_cont.18747:
	jal		x0, fle_cont.18745	# 54
fle_else.18746:
	fsub	x31, x31, x31	# 54
	fsub	f1, x31, f1	# 54
	lw		x27, -40(x2)	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -128(x2)	# 54
	addi	x2, x2, -132	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 132	# 54
	lw		x1, -128(x2)	# 54
fle_cont.18745:
	flw		f1, -120(x2)	# 2320
	fdiv	f0, f1, f0	# 2320
	flw		f1, -104(x2)	# 2329
	fmul	f0, f0, f1	# 2329
	lw		x4, -32(x2)	# 2350
	lw		x5, -36(x2)	# 2350
	add		x4, x5, x4	# 2350
	fmul	f1, f0, f0	# 2325
	flw		f2, -24(x2)	# 2325
	fadd	f1, f1, f2	# 2325
	fsw		f0, -128(x2)	# 2325
	sw		x4, -136(x2)	# 2325
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -140(x2)	# 2325
	addi	x2, x2, -144	# 2325
	jal		x1, min_caml_sqrt	# 2325
	addi	x2, x2, 144	# 2325
	lw		x1, -140(x2)	# 2325
	flw		f1, -96(x2)	# 2326
	fdiv	f1, f1, f0	# 2326
	lw		x27, -88(x2)	# 2327
	fsw		f0, -144(x2)	# 2327
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -152(x2)	# 2327
	addi	x2, x2, -156	# 2327
	lw		x31, 0(x27)	# 2327
	jalr	x1, x31, 0	# 2327
	addi	x2, x2, 156	# 2327
	lw		x1, -152(x2)	# 2327
	flw		f1, -16(x2)	# 2328
	fmul	f0, f0, f1	# 2328
	lw		x27, -72(x2)	# 2320
	fsw		f0, -152(x2)	# 2320
	sw		x1, -160(x2)	# 2320
	addi	x2, x2, -164	# 2320
	lw		x31, 0(x27)	# 2320
	jalr	x1, x31, 0	# 2320
	addi	x2, x2, 164	# 2320
	lw		x1, -160(x2)	# 2320
	flw		f1, -152(x2)	# 54
	flw		f2, -64(x2)	# 54
	fsw		f0, -160(x2)	# 54
	fle		x31, f2, f1	# 54
	beq		x31, x0, fle_else.18751	# 54
	flw		f2, -56(x2)	# 55
	fle		x31, f1, f2	# 55
	beq		x31, x0, fle_else.18753	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -168(x2)	# 56
	addi	x2, x2, -172	# 56
	jal		x1, cos_main.2499	# 56
	addi	x2, x2, 172	# 56
	lw		x1, -168(x2)	# 56
	jal		x0, fle_cont.18752	# 55
fle_else.18753:
	flw		f2, -48(x2)	# 55
	fsub	f1, f2, f1	# 55
	lw		x27, -72(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -168(x2)	# 55
	addi	x2, x2, -172	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 172	# 55
	lw		x1, -168(x2)	# 55
fle_cont.18752:
	jal		x0, fle_cont.18750	# 54
fle_else.18751:
	fsub	x31, x31, x31	# 54
	fsub	f1, x31, f1	# 54
	lw		x27, -40(x2)	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -168(x2)	# 54
	addi	x2, x2, -172	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 172	# 54
	lw		x1, -168(x2)	# 54
fle_cont.18750:
	flw		f1, -160(x2)	# 2320
	fdiv	f0, f1, f0	# 2320
	flw		f1, -144(x2)	# 2329
	fmul	f1, f0, f1	# 2329
	flw		f0, -128(x2)	# 2350
	flw		f2, -80(x2)	# 2350
	flw		f3, -16(x2)	# 2350
	lw		x4, -136(x2)	# 2350
	lw		x5, -4(x2)	# 2350
	lw		x6, 0(x2)	# 2350
	lw		x27, -8(x2)	# 2350
	lw		x31, 0(x27)	# 2350
	jalr	x0, x31, 0	# 2350
ble.18740:
	fmul	f2, f0, f0	# 8
	fmul	f3, f1, f1	# 8
	fadd	f2, f2, f3	# 2335
	lui		x4, %hi(l.9419)	# 2335
	ori		x4, x0, %lo(l.9419)	# 2335
	flw		f3, 0(x4)	# 2335
	fadd	f2, f2, f3	# 2335
	sw		x12, -168(x2)	# 2335
	sw		x14, -32(x2)	# 2335
	sw		x13, -172(x2)	# 2335
	sw		x6, 0(x2)	# 2335
	sw		x8, -176(x2)	# 2335
	sw		x5, -4(x2)	# 2335
	fsw		f3, -184(x2)	# 2335
	fsw		f1, -192(x2)	# 2335
	fsw		f0, -200(x2)	# 2335
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -208(x2)	# 2335
	addi	x2, x2, -212	# 2335
	jal		x1, min_caml_sqrt	# 2335
	addi	x2, x2, 212	# 2335
	lw		x1, -208(x2)	# 2335
	flw		f1, -200(x2)	# 2336
	fdiv	f1, f1, f0	# 2336
	flw		f2, -192(x2)	# 2337
	fdiv	f2, f2, f0	# 2337
	flw		f3, -184(x2)	# 2338
	fdiv	f0, f3, f0	# 2338
	ori		x4, x0, 4	# 2341
	lw		x5, -4(x2)	# 2341
	mul		x4, x5, x4	# 2341
	lw		x5, -176(x2)	# 2341
	add		x4, x5, x4	# 2341
	lw		x4, 0(x4)	# 2341
	ori		x5, x0, 4	# 2342
	lw		x6, 0(x2)	# 2342
	mul		x5, x6, x5	# 2342
	add		x5, x4, x5	# 2342
	lw		x5, 0(x5)	# 2342
	lw		x5, 0(x5)	# 639
	ori		x7, x0, 4	# 240
	lw		x8, -172(x2)	# 240
	mul		x7, x8, x7	# 240
	add		x7, x5, x7	# 240
	fsw		f1, 0(x7)	# 240
	ori		x7, x0, 4	# 241
	lw		x9, -32(x2)	# 241
	mul		x7, x9, x7	# 241
	add		x7, x5, x7	# 241
	fsw		f2, 0(x7)	# 241
	ori		x7, x0, 4	# 242
	lw		x10, -168(x2)	# 242
	mul		x7, x10, x7	# 242
	add		x5, x5, x7	# 242
	fsw		f0, 0(x5)	# 242
	addi	x5, x6, 40	# 2343
	ori		x7, x0, 4	# 2343
	mul		x5, x5, x7	# 2343
	add		x5, x4, x5	# 2343
	lw		x5, 0(x5)	# 2343
	lw		x5, 0(x5)	# 639
	fsub	f3, f3, f3	# 4
	fsub	f3, f3, f2	# 4
	ori		x7, x0, 4	# 240
	mul		x7, x8, x7	# 240
	add		x7, x5, x7	# 240
	fsw		f1, 0(x7)	# 240
	ori		x7, x0, 4	# 241
	mul		x7, x9, x7	# 241
	add		x7, x5, x7	# 241
	fsw		f0, 0(x7)	# 241
	ori		x7, x0, 4	# 242
	mul		x7, x10, x7	# 242
	add		x5, x5, x7	# 242
	fsw		f3, 0(x5)	# 242
	addi	x5, x6, 80	# 2344
	ori		x7, x0, 4	# 2344
	mul		x5, x5, x7	# 2344
	add		x5, x4, x5	# 2344
	lw		x5, 0(x5)	# 2344
	lw		x5, 0(x5)	# 639
	fsub	f4, f4, f4	# 4
	fsub	f4, f4, f1	# 4
	ori		x7, x0, 4	# 240
	mul		x7, x8, x7	# 240
	add		x7, x5, x7	# 240
	fsw		f0, 0(x7)	# 240
	ori		x7, x0, 4	# 241
	mul		x7, x9, x7	# 241
	add		x7, x5, x7	# 241
	fsw		f4, 0(x7)	# 241
	ori		x7, x0, 4	# 242
	mul		x7, x10, x7	# 242
	add		x5, x5, x7	# 242
	fsw		f3, 0(x5)	# 242
	add		x5, x6, x9	# 2345
	ori		x7, x0, 4	# 2345
	mul		x5, x5, x7	# 2345
	add		x5, x4, x5	# 2345
	lw		x5, 0(x5)	# 2345
	lw		x5, 0(x5)	# 639
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x7, x0, 4	# 240
	mul		x7, x8, x7	# 240
	add		x7, x5, x7	# 240
	fsw		f4, 0(x7)	# 240
	ori		x7, x0, 4	# 241
	mul		x7, x9, x7	# 241
	add		x7, x5, x7	# 241
	fsw		f3, 0(x7)	# 241
	ori		x7, x0, 4	# 242
	mul		x7, x10, x7	# 242
	add		x5, x5, x7	# 242
	fsw		f0, 0(x5)	# 242
	addi	x5, x6, 41	# 2346
	ori		x7, x0, 4	# 2346
	mul		x5, x5, x7	# 2346
	add		x5, x4, x5	# 2346
	lw		x5, 0(x5)	# 2346
	lw		x5, 0(x5)	# 639
	ori		x7, x0, 4	# 240
	mul		x7, x8, x7	# 240
	add		x7, x5, x7	# 240
	fsw		f4, 0(x7)	# 240
	ori		x7, x0, 4	# 241
	mul		x7, x9, x7	# 241
	add		x7, x5, x7	# 241
	fsw		f0, 0(x7)	# 241
	ori		x7, x0, 4	# 242
	mul		x7, x10, x7	# 242
	add		x5, x5, x7	# 242
	fsw		f2, 0(x5)	# 242
	addi	x5, x6, 81	# 2347
	ori		x6, x0, 4	# 2347
	mul		x5, x5, x6	# 2347
	add		x4, x4, x5	# 2347
	lw		x4, 0(x4)	# 2347
	lw		x4, 0(x4)	# 639
	ori		x5, x0, 4	# 240
	mul		x5, x8, x5	# 240
	add		x5, x4, x5	# 240
	fsw		f0, 0(x5)	# 240
	ori		x5, x0, 4	# 241
	mul		x5, x9, x5	# 241
	add		x5, x4, x5	# 241
	fsw		f1, 0(x5)	# 241
	ori		x5, x0, 4	# 242
	mul		x5, x10, x5	# 242
	add		x4, x4, x5	# 242
	fsw		f2, 0(x4)	# 242
	jalr	x0, x1, 0	# 242
calc_dirvecs.2983:
	lw		x7, 24(x27)	# 2355
	lw		x8, 20(x27)	# 2355
	lw		x9, 16(x27)	# 2355
	lw		x10, 12(x27)	# 2355
	lw		x11, 8(x27)	# 2355
	flw		f1, 4(x27)	# 2355
	ble		x10, x4, ble.18756	# 2355
	jalr	x0, x1, 0	# 2364
ble.18756:
	sw		x27, 0(x2)	# 14
	sw		x8, -4(x2)	# 14
	sw		x11, -8(x2)	# 14
	sw		x9, -12(x2)	# 14
	sw		x4, -16(x2)	# 14
	fsw		f0, -24(x2)	# 14
	fsw		f1, -32(x2)	# 14
	sw		x6, -40(x2)	# 14
	sw		x5, -44(x2)	# 14
	sw		x10, -48(x2)	# 14
	sw		x7, -52(x2)	# 14
	ble		x10, x4, ble.18760	# 14
	sub		x12, x0, x4	# 16
	addi	x4, x12, 0
	sw		x1, -56(x2)	# 16
	addi	x2, x2, -60	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 60	# 16
	lw		x1, -56(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.18759	# 14
ble.18760:
	ori		x12, x0, 1	# 15
	ble		x12, x4, ble.18762	# 15
	lui		x12, %hi(l.9417)	# 15
	ori		x12, x0, %lo(l.9417)	# 15
	flw		f0, 0(x12)	# 15
	jal		x0, ble_cont.18761	# 15
ble.18762:
	sub		x12, x4, x12	# 15
	addi	x4, x12, 0
	sw		x1, -56(x2)	# 15
	addi	x2, x2, -60	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 60	# 15
	lw		x1, -56(x2)	# 15
	lui		x4, %hi(l.9419)	# 15
	ori		x4, x0, %lo(l.9419)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.18761:
ble_cont.18759:
	lui		x4, %hi(l.9452)	# 2357
	ori		x4, x0, %lo(l.9452)	# 2357
	flw		f1, 0(x4)	# 2357
	fmul	f0, f0, f1	# 2357
	lui		x4, %hi(l.11969)	# 2357
	ori		x4, x0, %lo(l.11969)	# 2357
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
	lw		x4, -16(x2)	# 14
	lw		x5, -48(x2)	# 14
	ble		x5, x4, ble.18764	# 14
	sub		x6, x0, x4	# 16
	addi	x4, x6, 0
	sw		x1, -64(x2)	# 16
	addi	x2, x2, -68	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 68	# 16
	lw		x1, -64(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.18763	# 14
ble.18764:
	ori		x6, x0, 1	# 15
	ble		x6, x4, ble.18766	# 15
	lui		x6, %hi(l.9417)	# 15
	ori		x6, x0, %lo(l.9417)	# 15
	flw		f0, 0(x6)	# 15
	jal		x0, ble_cont.18765	# 15
ble.18766:
	sub		x6, x4, x6	# 15
	addi	x4, x6, 0
	sw		x1, -64(x2)	# 15
	addi	x2, x2, -68	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 68	# 15
	lw		x1, -64(x2)	# 15
	lui		x4, %hi(l.9419)	# 15
	ori		x4, x0, %lo(l.9419)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.18765:
ble_cont.18763:
	flw		f1, -56(x2)	# 2360
	fmul	f0, f0, f1	# 2360
	lui		x4, %hi(l.11224)	# 2360
	ori		x4, x0, %lo(l.11224)	# 2360
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
	lw		x4, -8(x2)	# 2363
	lw		x5, -16(x2)	# 2363
	sub		x5, x5, x4	# 2363
	lw		x6, -44(x2)	# 224
	add		x4, x6, x4	# 224
	lw		x6, -4(x2)	# 225
	ble		x6, x4, ble.18768	# 225
	jal		x0, ble_cont.18767	# 225
ble.18768:
	sub		x4, x4, x6	# 225
ble_cont.18767:
	flw		f0, -24(x2)	# 2363
	lw		x6, -40(x2)	# 2363
	lw		x27, 0(x2)	# 2363
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	lw		x31, 0(x27)	# 2363
	jalr	x0, x31, 0	# 2363
calc_dirvec_rows.2988:
	lw		x7, 20(x27)	# 2369
	lw		x8, 16(x27)	# 2369
	lw		x9, 12(x27)	# 2369
	lw		x10, 8(x27)	# 2369
	lw		x11, 4(x27)	# 2369
	ble		x10, x4, ble.18769	# 2369
	jalr	x0, x1, 0	# 2373
ble.18769:
	sw		x27, 0(x2)	# 14
	sw		x8, -4(x2)	# 14
	sw		x9, -8(x2)	# 14
	sw		x11, -12(x2)	# 14
	sw		x4, -16(x2)	# 14
	sw		x6, -20(x2)	# 14
	sw		x5, -24(x2)	# 14
	sw		x7, -28(x2)	# 14
	ble		x10, x4, ble.18772	# 14
	sub		x10, x0, x4	# 16
	addi	x4, x10, 0
	sw		x1, -32(x2)	# 16
	addi	x2, x2, -36	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 36	# 16
	lw		x1, -32(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.18771	# 14
ble.18772:
	ori		x10, x0, 1	# 15
	ble		x10, x4, ble.18774	# 15
	lui		x10, %hi(l.9417)	# 15
	ori		x10, x0, %lo(l.9417)	# 15
	flw		f0, 0(x10)	# 15
	jal		x0, ble_cont.18773	# 15
ble.18774:
	sub		x10, x4, x10	# 15
	addi	x4, x10, 0
	sw		x1, -32(x2)	# 15
	addi	x2, x2, -36	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 36	# 15
	lw		x1, -32(x2)	# 15
	lui		x4, %hi(l.9419)	# 15
	ori		x4, x0, %lo(l.9419)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.18773:
ble_cont.18771:
	lui		x4, %hi(l.9452)	# 2370
	ori		x4, x0, %lo(l.9452)	# 2370
	flw		f1, 0(x4)	# 2370
	fmul	f0, f0, f1	# 2370
	lui		x4, %hi(l.11969)	# 2370
	ori		x4, x0, %lo(l.11969)	# 2370
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
	lw		x5, -8(x2)	# 224
	lw		x6, -24(x2)	# 224
	add		x5, x6, x5	# 224
	lw		x6, -4(x2)	# 225
	ble		x6, x5, ble.18776	# 225
	jal		x0, ble_cont.18775	# 225
ble.18776:
	sub		x5, x5, x6	# 225
ble_cont.18775:
	lw		x6, -20(x2)	# 2372
	addi	x6, x6, 4	# 2372
	lw		x27, 0(x2)	# 2372
	lw		x31, 0(x27)	# 2372
	jalr	x0, x31, 0	# 2372
create_dirvec_elements.2994:
	lw		x6, 20(x27)	# 2388
	lw		x7, 16(x27)	# 2388
	lw		x8, 12(x27)	# 2388
	lw		x9, 8(x27)	# 2388
	flw		f0, 4(x27)	# 2388
	ble		x8, x5, ble.18777	# 2388
	jalr	x0, x1, 0	# 2391
ble.18777:
	sw		x27, 0(x2)	# 2382
	fsw		f0, -8(x2)	# 2382
	sw		x7, -16(x2)	# 2382
	sw		x9, -20(x2)	# 2382
	sw		x4, -24(x2)	# 2382
	sw		x5, -28(x2)	# 2382
	sw		x6, -32(x2)	# 2382
	sw		x8, -36(x2)	# 2382
	addi	x4, x7, 0
	sw		x1, -40(x2)	# 2382
	addi	x2, x2, -44	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 44	# 2382
	lw		x1, -40(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -36(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x7, -32(x2)	# 2383
	add		x4, x7, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -40(x2)	# 2383
	sw		x1, -44(x2)	# 2383
	addi	x2, x2, -48	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 48	# 2383
	lw		x1, -44(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -40(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	ori		x5, x0, 4	# 2389
	lw		x6, -28(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x7, -24(x2)	# 2389
	add		x5, x7, x5	# 2389
	sw		x4, 0(x5)	# 2389
	lw		x4, -20(x2)	# 2390
	sub		x5, x6, x4	# 2390
	lw		x6, -36(x2)	# 2388
	ble		x6, x5, ble.18780	# 2388
	jalr	x0, x1, 0	# 2391
ble.18780:
	flw		f0, -8(x2)	# 2382
	lw		x8, -16(x2)	# 2382
	sw		x5, -44(x2)	# 2382
	addi	x4, x8, 0
	sw		x1, -48(x2)	# 2382
	addi	x2, x2, -52	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 52	# 2382
	lw		x1, -48(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -36(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x6, -32(x2)	# 2383
	add		x4, x6, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -48(x2)	# 2383
	sw		x1, -52(x2)	# 2383
	addi	x2, x2, -56	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 56	# 2383
	lw		x1, -52(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -48(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	ori		x5, x0, 4	# 2389
	lw		x6, -44(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x7, -24(x2)	# 2389
	add		x5, x7, x5	# 2389
	sw		x4, 0(x5)	# 2389
	lw		x4, -20(x2)	# 2390
	sub		x5, x6, x4	# 2390
	lw		x27, 0(x2)	# 2390
	addi	x4, x7, 0
	lw		x31, 0(x27)	# 2390
	jalr	x0, x31, 0	# 2390
create_dirvecs.2997:
	lw		x5, 28(x27)	# 2395
	lw		x6, 24(x27)	# 2395
	lw		x7, 20(x27)	# 2395
	lw		x8, 16(x27)	# 2395
	lw		x9, 12(x27)	# 2395
	lw		x10, 8(x27)	# 2395
	flw		f0, 4(x27)	# 2395
	ble		x9, x4, ble.18782	# 2395
	jalr	x0, x1, 0	# 2399
ble.18782:
	ori		x11, x0, 120	# 2396
	sw		x27, 0(x2)	# 2382
	sw		x10, -4(x2)	# 2382
	sw		x7, -8(x2)	# 2382
	fsw		f0, -16(x2)	# 2382
	sw		x8, -24(x2)	# 2382
	sw		x6, -28(x2)	# 2382
	sw		x4, -32(x2)	# 2382
	sw		x11, -36(x2)	# 2382
	sw		x5, -40(x2)	# 2382
	sw		x9, -44(x2)	# 2382
	addi	x4, x8, 0
	sw		x1, -48(x2)	# 2382
	addi	x2, x2, -52	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 52	# 2382
	lw		x1, -48(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -44(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x7, -40(x2)	# 2383
	add		x4, x7, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -48(x2)	# 2383
	sw		x1, -52(x2)	# 2383
	addi	x2, x2, -56	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 56	# 2383
	lw		x1, -52(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -48(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	lw		x4, -36(x2)	# 2396
	sw		x1, -52(x2)	# 2396
	addi	x2, x2, -56	# 2396
	jal		x1, min_caml_create_array	# 2396
	addi	x2, x2, 56	# 2396
	lw		x1, -52(x2)	# 2396
	ori		x5, x0, 4	# 2396
	lw		x6, -32(x2)	# 2396
	mul		x5, x6, x5	# 2396
	lw		x7, -28(x2)	# 2396
	add		x5, x7, x5	# 2396
	sw		x4, 0(x5)	# 2396
	ori		x4, x0, 4	# 2397
	mul		x4, x6, x4	# 2397
	add		x4, x7, x4	# 2397
	lw		x4, 0(x4)	# 2397
	ori		x5, x0, 118	# 2397
	flw		f0, -16(x2)	# 2382
	lw		x7, -24(x2)	# 2382
	sw		x4, -52(x2)	# 2382
	sw		x5, -56(x2)	# 2382
	addi	x4, x7, 0
	sw		x1, -60(x2)	# 2382
	addi	x2, x2, -64	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 64	# 2382
	lw		x1, -60(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -44(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x6, -40(x2)	# 2383
	add		x4, x6, x4	# 2383
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
	ori		x5, x0, 4	# 2389
	lw		x6, -56(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x6, -52(x2)	# 2389
	add		x5, x6, x5	# 2389
	sw		x4, 0(x5)	# 2389
	ori		x5, x0, 117	# 2390
	lw		x27, -8(x2)	# 2390
	addi	x4, x6, 0
	sw		x1, -64(x2)	# 2390
	addi	x2, x2, -68	# 2390
	lw		x31, 0(x27)	# 2390
	jalr	x1, x31, 0	# 2390
	addi	x2, x2, 68	# 2390
	lw		x1, -64(x2)	# 2390
	lw		x4, -4(x2)	# 2398
	lw		x5, -32(x2)	# 2398
	sub		x4, x5, x4	# 2398
	lw		x27, 0(x2)	# 2398
	lw		x31, 0(x27)	# 2398
	jalr	x0, x31, 0	# 2398
init_dirvec_constants.2999:
	lw		x6, 16(x27)	# 2407
	lw		x7, 12(x27)	# 2407
	lw		x8, 8(x27)	# 2407
	lw		x9, 4(x27)	# 2407
	ble		x8, x5, ble.18785	# 2407
	jalr	x0, x1, 0	# 2410
ble.18785:
	ori		x10, x0, 4	# 2408
	mul		x10, x5, x10	# 2408
	add		x10, x4, x10	# 2408
	lw		x10, 0(x10)	# 2408
	ori		x11, x0, 4	# 1287
	mul		x11, x8, x11	# 1287
	add		x11, x6, x11	# 1287
	lw		x11, 0(x11)	# 1287
	sub		x11, x11, x9	# 1287
	sw		x27, 0(x2)	# 1287
	sw		x7, -4(x2)	# 1287
	sw		x6, -8(x2)	# 1287
	sw		x4, -12(x2)	# 1287
	sw		x8, -16(x2)	# 1287
	sw		x9, -20(x2)	# 1287
	sw		x5, -24(x2)	# 1287
	addi	x5, x11, 0
	addi	x4, x10, 0
	addi	x27, x7, 0
	sw		x1, -28(x2)	# 1287
	addi	x2, x2, -32	# 1287
	lw		x31, 0(x27)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 32	# 1287
	lw		x1, -28(x2)	# 1287
	lw		x4, -20(x2)	# 2409
	lw		x5, -24(x2)	# 2409
	sub		x5, x5, x4	# 2409
	lw		x6, -16(x2)	# 2407
	ble		x6, x5, ble.18787	# 2407
	jalr	x0, x1, 0	# 2410
ble.18787:
	ori		x7, x0, 4	# 2408
	mul		x7, x5, x7	# 2408
	lw		x8, -12(x2)	# 2408
	add		x7, x8, x7	# 2408
	lw		x7, 0(x7)	# 2408
	ori		x9, x0, 4	# 1287
	mul		x6, x6, x9	# 1287
	lw		x9, -8(x2)	# 1287
	add		x6, x9, x6	# 1287
	lw		x6, 0(x6)	# 1287
	sub		x6, x6, x4	# 1287
	lw		x27, -4(x2)	# 1287
	sw		x5, -28(x2)	# 1287
	addi	x5, x6, 0
	addi	x4, x7, 0
	sw		x1, -32(x2)	# 1287
	addi	x2, x2, -36	# 1287
	lw		x31, 0(x27)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 36	# 1287
	lw		x1, -32(x2)	# 1287
	lw		x4, -20(x2)	# 2409
	lw		x5, -28(x2)	# 2409
	sub		x5, x5, x4	# 2409
	lw		x4, -12(x2)	# 2409
	lw		x27, 0(x2)	# 2409
	lw		x31, 0(x27)	# 2409
	jalr	x0, x31, 0	# 2409
init_vecset_constants.3002:
	lw		x5, 24(x27)	# 2414
	lw		x6, 20(x27)	# 2414
	lw		x7, 16(x27)	# 2414
	lw		x8, 12(x27)	# 2414
	lw		x9, 8(x27)	# 2414
	lw		x10, 4(x27)	# 2414
	ble		x9, x4, ble.18789	# 2414
	jalr	x0, x1, 0	# 2417
ble.18789:
	ori		x11, x0, 4	# 2415
	mul		x11, x4, x11	# 2415
	add		x11, x8, x11	# 2415
	lw		x11, 0(x11)	# 2415
	ori		x12, x0, 119	# 2415
	ori		x13, x0, 4	# 2408
	mul		x13, x12, x13	# 2408
	add		x13, x11, x13	# 2408
	lw		x13, 0(x13)	# 2408
	ori		x14, x0, 4	# 1287
	mul		x14, x9, x14	# 1287
	add		x5, x5, x14	# 1287
	lw		x5, 0(x5)	# 1287
	sub		x5, x5, x10	# 1287
	sw		x27, 0(x2)	# 1287
	sw		x12, -4(x2)	# 1287
	sw		x8, -8(x2)	# 1287
	sw		x9, -12(x2)	# 1287
	sw		x10, -16(x2)	# 1287
	sw		x4, -20(x2)	# 1287
	sw		x11, -24(x2)	# 1287
	sw		x7, -28(x2)	# 1287
	addi	x4, x13, 0
	addi	x27, x6, 0
	sw		x1, -32(x2)	# 1287
	addi	x2, x2, -36	# 1287
	lw		x31, 0(x27)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 36	# 1287
	lw		x1, -32(x2)	# 1287
	ori		x5, x0, 118	# 2409
	lw		x4, -24(x2)	# 2409
	lw		x27, -28(x2)	# 2409
	sw		x1, -32(x2)	# 2409
	addi	x2, x2, -36	# 2409
	lw		x31, 0(x27)	# 2409
	jalr	x1, x31, 0	# 2409
	addi	x2, x2, 36	# 2409
	lw		x1, -32(x2)	# 2409
	lw		x4, -16(x2)	# 2416
	lw		x5, -20(x2)	# 2416
	sub		x5, x5, x4	# 2416
	lw		x6, -12(x2)	# 2414
	ble		x6, x5, ble.18791	# 2414
	jalr	x0, x1, 0	# 2417
ble.18791:
	ori		x6, x0, 4	# 2415
	mul		x6, x5, x6	# 2415
	lw		x7, -8(x2)	# 2415
	add		x6, x7, x6	# 2415
	lw		x6, 0(x6)	# 2415
	lw		x7, -4(x2)	# 2415
	lw		x27, -28(x2)	# 2415
	sw		x5, -32(x2)	# 2415
	addi	x5, x7, 0
	addi	x4, x6, 0
	sw		x1, -36(x2)	# 2415
	addi	x2, x2, -40	# 2415
	lw		x31, 0(x27)	# 2415
	jalr	x1, x31, 0	# 2415
	addi	x2, x2, 40	# 2415
	lw		x1, -36(x2)	# 2415
	lw		x4, -16(x2)	# 2416
	lw		x5, -32(x2)	# 2416
	sub		x4, x5, x4	# 2416
	lw		x27, 0(x2)	# 2416
	lw		x31, 0(x27)	# 2416
	jalr	x0, x31, 0	# 2416
setup_rect_reflection.3013:
	lw		x6, 40(x27)	# 2441
	lw		x7, 36(x27)	# 2441
	lw		x8, 32(x27)	# 2441
	lw		x9, 28(x27)	# 2441
	lw		x10, 24(x27)	# 2441
	lw		x11, 20(x27)	# 2441
	lw		x12, 16(x27)	# 2441
	lw		x13, 12(x27)	# 2441
	lw		x14, 8(x27)	# 2441
	flw		f0, 4(x27)	# 2441
	ori		x15, x0, 4	# 2441
	mul		x4, x4, x15	# 2441
	ori		x15, x0, 4	# 2442
	mul		x15, x13, x15	# 2442
	add		x15, x7, x15	# 2442
	lw		x15, 0(x15)	# 2442
	lui		x16, %hi(l.9419)	# 2443
	ori		x16, x0, %lo(l.9419)	# 2443
	flw		f1, 0(x16)	# 2443
	lw		x5, 28(x5)	# 461
	ori		x16, x0, 4	# 466
	mul		x16, x13, x16	# 466
	add		x5, x5, x16	# 466
	flw		f2, 0(x5)	# 466
	fsub	f1, f1, f2	# 2443
	ori		x5, x0, 4	# 2444
	mul		x5, x13, x5	# 2444
	add		x5, x9, x5	# 2444
	flw		f2, 0(x5)	# 2444
	fsub	f3, f3, f3	# 4
	fsub	f3, f3, f2	# 4
	ori		x5, x0, 4	# 2445
	mul		x5, x14, x5	# 2445
	add		x5, x9, x5	# 2445
	flw		f4, 0(x5)	# 2445
	fsub	x31, x31, x31	# 4
	fsub	f4, x31, f4	# 4
	ori		x5, x0, 4	# 2446
	mul		x5, x11, x5	# 2446
	add		x5, x9, x5	# 2446
	flw		f5, 0(x5)	# 2446
	fsub	x31, x31, x31	# 4
	fsub	f5, x31, f5	# 4
	add		x5, x4, x14	# 2447
	sw		x7, 0(x2)	# 2382
	fsw		f3, -8(x2)	# 2382
	fsw		f0, -16(x2)	# 2382
	sw		x12, -24(x2)	# 2382
	sw		x9, -28(x2)	# 2382
	sw		x4, -32(x2)	# 2382
	sw		x6, -36(x2)	# 2382
	sw		x15, -40(x2)	# 2382
	sw		x5, -44(x2)	# 2382
	fsw		f1, -48(x2)	# 2382
	sw		x10, -56(x2)	# 2382
	fsw		f5, -64(x2)	# 2382
	sw		x11, -72(x2)	# 2382
	fsw		f4, -80(x2)	# 2382
	sw		x14, -88(x2)	# 2382
	fsw		f2, -96(x2)	# 2382
	sw		x8, -104(x2)	# 2382
	sw		x13, -108(x2)	# 2382
	addi	x4, x12, 0
	sw		x1, -112(x2)	# 2382
	addi	x2, x2, -116	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 116	# 2382
	lw		x1, -112(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -108(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x7, -104(x2)	# 2383
	add		x4, x7, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -112(x2)	# 2383
	sw		x1, -116(x2)	# 2383
	addi	x2, x2, -120	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 120	# 2383
	lw		x1, -116(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -112(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	ori		x6, x0, 4	# 240
	lw		x7, -108(x2)	# 240
	mul		x6, x7, x6	# 240
	add		x6, x4, x6	# 240
	flw		f0, -96(x2)	# 240
	fsw		f0, 0(x6)	# 240
	ori		x6, x0, 4	# 241
	lw		x8, -88(x2)	# 241
	mul		x6, x8, x6	# 241
	add		x6, x4, x6	# 241
	flw		f0, -80(x2)	# 241
	fsw		f0, 0(x6)	# 241
	ori		x6, x0, 4	# 242
	lw		x9, -72(x2)	# 242
	mul		x6, x9, x6	# 242
	add		x4, x4, x6	# 242
	flw		f1, -64(x2)	# 242
	fsw		f1, 0(x4)	# 242
	ori		x4, x0, 4	# 1287
	mul		x4, x7, x4	# 1287
	lw		x6, -104(x2)	# 1287
	add		x4, x6, x4	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x4, x4, x8	# 1287
	lw		x27, -56(x2)	# 1287
	sw		x5, -116(x2)	# 1287
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -120(x2)	# 1287
	addi	x2, x2, -124	# 1287
	lw		x31, 0(x27)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 124	# 1287
	lw		x1, -120(x2)	# 1287
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f0, -48(x2)	# 2436
	fsw		f0, 8(x4)	# 2436
	lw		x5, -116(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -44(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	ori		x5, x0, 4	# 2436
	lw		x6, -40(x2)	# 2436
	mul		x5, x6, x5	# 2436
	lw		x7, -36(x2)	# 2436
	add		x5, x7, x5	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -88(x2)	# 2448
	add		x5, x6, x4	# 2448
	lw		x8, -72(x2)	# 2448
	lw		x9, -32(x2)	# 2448
	add		x10, x9, x8	# 2448
	ori		x11, x0, 4	# 2448
	mul		x11, x4, x11	# 2448
	lw		x12, -28(x2)	# 2448
	add		x11, x12, x11	# 2448
	flw		f1, 0(x11)	# 2448
	flw		f2, -16(x2)	# 2382
	lw		x11, -24(x2)	# 2382
	sw		x5, -120(x2)	# 2382
	sw		x10, -124(x2)	# 2382
	fsw		f1, -128(x2)	# 2382
	addi	x4, x11, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -136(x2)	# 2382
	addi	x2, x2, -140	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 140	# 2382
	lw		x1, -136(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -108(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x7, -104(x2)	# 2383
	add		x4, x7, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -136(x2)	# 2383
	sw		x1, -140(x2)	# 2383
	addi	x2, x2, -144	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 144	# 2383
	lw		x1, -140(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -136(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	ori		x6, x0, 4	# 240
	lw		x7, -108(x2)	# 240
	mul		x6, x7, x6	# 240
	add		x6, x4, x6	# 240
	flw		f0, -8(x2)	# 240
	fsw		f0, 0(x6)	# 240
	ori		x6, x0, 4	# 241
	lw		x8, -88(x2)	# 241
	mul		x6, x8, x6	# 241
	add		x6, x4, x6	# 241
	flw		f1, -128(x2)	# 241
	fsw		f1, 0(x6)	# 241
	ori		x6, x0, 4	# 242
	lw		x9, -72(x2)	# 242
	mul		x6, x9, x6	# 242
	add		x4, x4, x6	# 242
	flw		f1, -64(x2)	# 242
	fsw		f1, 0(x4)	# 242
	ori		x4, x0, 4	# 1287
	mul		x4, x7, x4	# 1287
	lw		x6, -104(x2)	# 1287
	add		x4, x6, x4	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x4, x4, x8	# 1287
	lw		x27, -56(x2)	# 1287
	sw		x5, -140(x2)	# 1287
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -144(x2)	# 1287
	addi	x2, x2, -148	# 1287
	lw		x31, 0(x27)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 148	# 1287
	lw		x1, -144(x2)	# 1287
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f0, -48(x2)	# 2436
	fsw		f0, 8(x4)	# 2436
	lw		x5, -140(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -124(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	ori		x5, x0, 4	# 2436
	lw		x6, -120(x2)	# 2436
	mul		x5, x6, x5	# 2436
	lw		x6, -36(x2)	# 2436
	add		x5, x6, x5	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -72(x2)	# 2449
	lw		x5, -40(x2)	# 2449
	add		x7, x5, x4	# 2449
	lw		x8, -24(x2)	# 2449
	lw		x9, -32(x2)	# 2449
	add		x9, x9, x8	# 2449
	ori		x10, x0, 4	# 2449
	mul		x10, x4, x10	# 2449
	lw		x11, -28(x2)	# 2449
	add		x10, x11, x10	# 2449
	flw		f1, 0(x10)	# 2449
	flw		f2, -16(x2)	# 2382
	sw		x7, -144(x2)	# 2382
	sw		x9, -148(x2)	# 2382
	fsw		f1, -152(x2)	# 2382
	addi	x4, x8, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -160(x2)	# 2382
	addi	x2, x2, -164	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 164	# 2382
	lw		x1, -160(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -108(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x7, -104(x2)	# 2383
	add		x4, x7, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -160(x2)	# 2383
	sw		x1, -164(x2)	# 2383
	addi	x2, x2, -168	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 168	# 2383
	lw		x1, -164(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -160(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	ori		x6, x0, 4	# 240
	lw		x7, -108(x2)	# 240
	mul		x6, x7, x6	# 240
	add		x6, x4, x6	# 240
	flw		f0, -8(x2)	# 240
	fsw		f0, 0(x6)	# 240
	ori		x6, x0, 4	# 241
	lw		x8, -88(x2)	# 241
	mul		x6, x8, x6	# 241
	add		x6, x4, x6	# 241
	flw		f0, -80(x2)	# 241
	fsw		f0, 0(x6)	# 241
	ori		x6, x0, 4	# 242
	lw		x9, -72(x2)	# 242
	mul		x6, x9, x6	# 242
	add		x4, x4, x6	# 242
	flw		f0, -152(x2)	# 242
	fsw		f0, 0(x4)	# 242
	ori		x4, x0, 4	# 1287
	mul		x4, x7, x4	# 1287
	lw		x6, -104(x2)	# 1287
	add		x4, x6, x4	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x4, x4, x8	# 1287
	lw		x27, -56(x2)	# 1287
	sw		x5, -164(x2)	# 1287
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -168(x2)	# 1287
	addi	x2, x2, -172	# 1287
	lw		x31, 0(x27)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 172	# 1287
	lw		x1, -168(x2)	# 1287
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f0, -48(x2)	# 2436
	fsw		f0, 8(x4)	# 2436
	lw		x5, -164(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -148(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	ori		x5, x0, 4	# 2436
	lw		x6, -144(x2)	# 2436
	mul		x5, x6, x5	# 2436
	lw		x6, -36(x2)	# 2436
	add		x5, x6, x5	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -24(x2)	# 2450
	lw		x5, -40(x2)	# 2450
	add		x4, x5, x4	# 2450
	ori		x5, x0, 4	# 2450
	lw		x6, -108(x2)	# 2450
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
	flw		f0, 4(x27)	# 2455
	ori		x16, x0, 4	# 2455
	mul		x4, x4, x16	# 2455
	add		x4, x4, x15	# 2455
	ori		x16, x0, 4	# 2456
	mul		x16, x14, x16	# 2456
	add		x16, x8, x16	# 2456
	lw		x16, 0(x16)	# 2456
	lui		x17, %hi(l.9419)	# 2457
	ori		x17, x0, %lo(l.9419)	# 2457
	flw		f1, 0(x17)	# 2457
	lw		x17, 28(x5)	# 461
	ori		x18, x0, 4	# 466
	mul		x18, x14, x18	# 466
	add		x17, x17, x18	# 466
	flw		f2, 0(x17)	# 466
	fsub	f1, f1, f2	# 2457
	lw		x17, 16(x5)	# 421
	sw		x8, 0(x2)	# 2458
	sw		x7, -4(x2)	# 2458
	sw		x16, -8(x2)	# 2458
	sw		x4, -12(x2)	# 2458
	fsw		f1, -16(x2)	# 2458
	sw		x11, -24(x2)	# 2458
	sw		x9, -28(x2)	# 2458
	fsw		f0, -32(x2)	# 2458
	sw		x13, -40(x2)	# 2458
	sw		x12, -44(x2)	# 2458
	sw		x15, -48(x2)	# 2458
	sw		x10, -52(x2)	# 2458
	sw		x14, -56(x2)	# 2458
	sw		x5, -60(x2)	# 2458
	addi	x5, x17, 0
	addi	x4, x10, 0
	addi	x27, x6, 0
	sw		x1, -64(x2)	# 2458
	addi	x2, x2, -68	# 2458
	lw		x31, 0(x27)	# 2458
	jalr	x1, x31, 0	# 2458
	addi	x2, x2, 68	# 2458
	lw		x1, -64(x2)	# 2458
	lui		x4, %hi(l.9725)	# 2461
	ori		x4, x0, %lo(l.9725)	# 2461
	flw		f1, 0(x4)	# 2461
	lw		x4, -60(x2)	# 391
	lw		x5, 16(x4)	# 391
	ori		x6, x0, 4	# 396
	lw		x7, -56(x2)	# 396
	mul		x6, x7, x6	# 396
	add		x5, x5, x6	# 396
	flw		f2, 0(x5)	# 396
	fmul	f2, f1, f2	# 2461
	fmul	f2, f2, f0	# 2461
	ori		x5, x0, 4	# 2461
	mul		x5, x7, x5	# 2461
	lw		x6, -52(x2)	# 2461
	add		x5, x6, x5	# 2461
	flw		f3, 0(x5)	# 2461
	fsub	f2, f2, f3	# 2461
	lw		x5, 16(x4)	# 401
	ori		x8, x0, 4	# 406
	lw		x9, -48(x2)	# 406
	mul		x8, x9, x8	# 406
	add		x5, x5, x8	# 406
	flw		f3, 0(x5)	# 406
	fmul	f3, f1, f3	# 2462
	fmul	f3, f3, f0	# 2462
	ori		x5, x0, 4	# 2462
	mul		x5, x9, x5	# 2462
	add		x5, x6, x5	# 2462
	flw		f4, 0(x5)	# 2462
	fsub	f3, f3, f4	# 2462
	lw		x4, 16(x4)	# 411
	ori		x5, x0, 4	# 416
	lw		x8, -44(x2)	# 416
	mul		x5, x8, x5	# 416
	add		x4, x4, x5	# 416
	flw		f4, 0(x4)	# 416
	fmul	f1, f1, f4	# 2463
	fmul	f0, f1, f0	# 2463
	ori		x4, x0, 4	# 2463
	mul		x4, x8, x4	# 2463
	add		x4, x6, x4	# 2463
	flw		f1, 0(x4)	# 2463
	fsub	f0, f0, f1	# 2463
	flw		f1, -32(x2)	# 2382
	lw		x4, -40(x2)	# 2382
	fsw		f0, -64(x2)	# 2382
	fsw		f3, -72(x2)	# 2382
	fsw		f2, -80(x2)	# 2382
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -88(x2)	# 2382
	addi	x2, x2, -92	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 92	# 2382
	lw		x1, -88(x2)	# 2382
	addi	x5, x4, 0	# 2382
	ori		x4, x0, 4	# 2383
	lw		x6, -56(x2)	# 2383
	mul		x4, x6, x4	# 2383
	lw		x7, -28(x2)	# 2383
	add		x4, x7, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -88(x2)	# 2383
	sw		x1, -92(x2)	# 2383
	addi	x2, x2, -96	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 96	# 2383
	lw		x1, -92(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -88(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	ori		x6, x0, 4	# 240
	lw		x7, -56(x2)	# 240
	mul		x6, x7, x6	# 240
	add		x6, x4, x6	# 240
	flw		f0, -80(x2)	# 240
	fsw		f0, 0(x6)	# 240
	ori		x6, x0, 4	# 241
	lw		x8, -48(x2)	# 241
	mul		x6, x8, x6	# 241
	add		x6, x4, x6	# 241
	flw		f0, -72(x2)	# 241
	fsw		f0, 0(x6)	# 241
	ori		x6, x0, 4	# 242
	lw		x9, -44(x2)	# 242
	mul		x6, x9, x6	# 242
	add		x4, x4, x6	# 242
	flw		f0, -64(x2)	# 242
	fsw		f0, 0(x4)	# 242
	ori		x4, x0, 4	# 1287
	mul		x4, x7, x4	# 1287
	lw		x6, -28(x2)	# 1287
	add		x4, x6, x4	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x4, x4, x8	# 1287
	lw		x27, -24(x2)	# 1287
	sw		x5, -92(x2)	# 1287
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -96(x2)	# 1287
	addi	x2, x2, -100	# 1287
	lw		x31, 0(x27)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 100	# 1287
	lw		x1, -96(x2)	# 1287
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f0, -16(x2)	# 2436
	fsw		f0, 8(x4)	# 2436
	lw		x5, -92(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -12(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	ori		x5, x0, 4	# 2436
	lw		x6, -8(x2)	# 2436
	mul		x5, x6, x5	# 2436
	lw		x7, -4(x2)	# 2436
	add		x5, x7, x5	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -48(x2)	# 2464
	add		x4, x6, x4	# 2464
	ori		x5, x0, 4	# 2464
	lw		x6, -56(x2)	# 2464
	mul		x5, x6, x5	# 2464
	lw		x6, 0(x2)	# 2464
	add		x5, x6, x5	# 2464
	sw		x4, 0(x5)	# 2464
	jalr	x0, x1, 0	# 2464
setup_reflections.3019:
	lw		x5, 24(x27)	# 2470
	lw		x6, 20(x27)	# 2470
	lw		x7, 16(x27)	# 2470
	lw		x8, 12(x27)	# 2470
	lw		x9, 8(x27)	# 2470
	lw		x10, 4(x27)	# 2470
	ble		x9, x4, ble.18799	# 2470
	jalr	x0, x1, 0	# 2483
ble.18799:
	ori		x11, x0, 4	# 2471
	mul		x11, x4, x11	# 2471
	add		x7, x7, x11	# 2471
	lw		x7, 0(x7)	# 2471
	lw		x11, 8(x7)	# 363
	beq		x11, x8, beq.18801	# 2472
	jalr	x0, x1, 0	# 2482
beq.18801:
	lw		x11, 28(x7)	# 461
	ori		x12, x0, 4	# 466
	mul		x12, x9, x12	# 466
	add		x11, x11, x12	# 466
	flw		f0, 0(x11)	# 466
	lui		x11, %hi(l.9419)	# 2473
	ori		x11, x0, %lo(l.9419)	# 2473
	flw		f1, 0(x11)	# 2473
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.18804	# 6
	addi	x11, x0, 0	# 6
	jal		x0, fle_cont.18803	# 6
fle_else.18804:
	ori		x11, x0, 1	# 6
fle_cont.18803:
	beq		x11, x9, beq.18805	# 2473
	lw		x9, 4(x7)	# 353
	beq		x9, x10, beq.18806	# 2476
	beq		x9, x8, beq.18807	# 2478
	jalr	x0, x1, 0	# 2480
beq.18807:
	addi	x27, x5, 0
	addi	x5, x7, 0
	lw		x31, 0(x27)	# 2479
	jalr	x0, x31, 0	# 2479
beq.18806:
	addi	x5, x7, 0
	addi	x27, x6, 0
	lw		x31, 0(x27)	# 2477
	jalr	x0, x31, 0	# 2477
beq.18805:
	jalr	x0, x1, 0	# 2481
rt.3021:
	lw		x7, 116(x27)	# 2492
	lw		x8, 112(x27)	# 2492
	lw		x9, 108(x27)	# 2492
	lw		x10, 104(x27)	# 2492
	lw		x11, 100(x27)	# 2492
	lw		x12, 96(x27)	# 2492
	lw		x13, 92(x27)	# 2492
	lw		x14, 88(x27)	# 2492
	lw		x15, 84(x27)	# 2492
	lw		x16, 80(x27)	# 2492
	lw		x17, 76(x27)	# 2492
	lw		x18, 72(x27)	# 2492
	lw		x19, 68(x27)	# 2492
	lw		x20, 64(x27)	# 2492
	lw		x21, 60(x27)	# 2492
	lw		x22, 56(x27)	# 2492
	lw		x23, 52(x27)	# 2492
	lw		x24, 48(x27)	# 2492
	lw		x25, 44(x27)	# 2492
	lw		x26, 40(x27)	# 2492
	lw		x31, 36(x27)	# 2492
	sw		x11, 0(x2)	# 2492
	lw		x11, 32(x27)	# 2492
	sw		x17, -4(x2)	# 2492
	lw		x17, 28(x27)	# 2492
	sw		x9, -8(x2)	# 2492
	lw		x9, 24(x27)	# 2492
	sw		x20, -12(x2)	# 2492
	lw		x20, 20(x27)	# 2492
	sw		x22, -16(x2)	# 2492
	lw		x22, 16(x27)	# 2492
	sw		x19, -20(x2)	# 2492
	lw		x19, 12(x27)	# 2492
	sw		x8, -24(x2)	# 2492
	lw		x8, 8(x27)	# 2492
	flw		f0, 4(x27)	# 2492
	ori		x27, x0, 4	# 2492
	mul		x27, x19, x27	# 2492
	add		x27, x25, x27	# 2492
	sw		x4, 0(x27)	# 2492
	ori		x27, x0, 4	# 2493
	mul		x27, x8, x27	# 2493
	add		x27, x25, x27	# 2493
	sw		x5, 0(x27)	# 2493
	div		x27, x4, x20	# 2494
	sw		x21, -28(x2)	# 2494
	ori		x21, x0, 4	# 2494
	mul		x21, x19, x21	# 2494
	add		x21, x26, x21	# 2494
	sw		x27, 0(x21)	# 2494
	div		x5, x5, x20	# 2495
	ori		x21, x0, 4	# 2495
	mul		x21, x8, x21	# 2495
	add		x21, x26, x21	# 2495
	sw		x5, 0(x21)	# 2495
	lui		x5, %hi(l.12214)	# 2496
	ori		x5, x0, %lo(l.12214)	# 2496
	flw		f1, 0(x5)	# 2496
	sw		x23, -32(x2)	# 14
	sw		x17, -36(x2)	# 14
	sw		x11, -40(x2)	# 14
	sw		x6, -44(x2)	# 14
	sw		x7, -48(x2)	# 14
	sw		x18, -52(x2)	# 14
	sw		x13, -56(x2)	# 14
	sw		x16, -60(x2)	# 14
	sw		x14, -64(x2)	# 14
	sw		x15, -68(x2)	# 14
	sw		x12, -72(x2)	# 14
	sw		x24, -76(x2)	# 14
	sw		x20, -80(x2)	# 14
	sw		x8, -84(x2)	# 14
	sw		x9, -88(x2)	# 14
	sw		x31, -92(x2)	# 14
	fsw		f0, -96(x2)	# 14
	sw		x22, -104(x2)	# 14
	sw		x25, -108(x2)	# 14
	sw		x10, -112(x2)	# 14
	sw		x19, -116(x2)	# 14
	fsw		f1, -120(x2)	# 14
	ble		x19, x4, ble.18811	# 14
	sub		x4, x0, x4	# 16
	sw		x1, -128(x2)	# 16
	addi	x2, x2, -132	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 132	# 16
	lw		x1, -128(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.18810	# 14
ble.18811:
	ori		x5, x0, 1	# 15
	ble		x5, x4, ble.18813	# 15
	lui		x4, %hi(l.9417)	# 15
	ori		x4, x0, %lo(l.9417)	# 15
	flw		f0, 0(x4)	# 15
	jal		x0, ble_cont.18812	# 15
ble.18813:
	sub		x4, x4, x5	# 15
	sw		x1, -128(x2)	# 15
	addi	x2, x2, -132	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 132	# 15
	lw		x1, -128(x2)	# 15
	lui		x4, %hi(l.9419)	# 15
	ori		x4, x0, %lo(l.9419)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.18812:
ble_cont.18810:
	flw		f1, -120(x2)	# 2496
	fdiv	f0, f1, f0	# 2496
	ori		x4, x0, 4	# 2496
	lw		x5, -116(x2)	# 2496
	mul		x4, x5, x4	# 2496
	lw		x6, -112(x2)	# 2496
	add		x4, x6, x4	# 2496
	fsw		f0, 0(x4)	# 2496
	ori		x4, x0, 4	# 2306
	mul		x4, x5, x4	# 2306
	lw		x6, -108(x2)	# 2306
	add		x4, x6, x4	# 2306
	lw		x4, 0(x4)	# 2306
	flw		f0, -96(x2)	# 2284
	lw		x7, -104(x2)	# 2284
	sw		x4, -128(x2)	# 2284
	addi	x4, x7, 0
	sw		x1, -132(x2)	# 2284
	addi	x2, x2, -136	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 136	# 2284
	lw		x1, -132(x2)	# 2284
	lw		x27, -92(x2)	# 2285
	sw		x4, -132(x2)	# 2285
	sw		x1, -136(x2)	# 2285
	addi	x2, x2, -140	# 2285
	lw		x31, 0(x27)	# 2285
	jalr	x1, x31, 0	# 2285
	addi	x2, x2, 140	# 2285
	lw		x1, -136(x2)	# 2285
	lw		x5, -88(x2)	# 2286
	lw		x6, -116(x2)	# 2286
	sw		x4, -136(x2)	# 2286
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -140(x2)	# 2286
	addi	x2, x2, -144	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 144	# 2286
	lw		x1, -140(x2)	# 2286
	lw		x5, -88(x2)	# 2287
	lw		x6, -116(x2)	# 2287
	sw		x4, -140(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -144(x2)	# 2287
	addi	x2, x2, -148	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 148	# 2287
	lw		x1, -144(x2)	# 2287
	lw		x27, -92(x2)	# 2288
	sw		x4, -144(x2)	# 2288
	sw		x1, -148(x2)	# 2288
	addi	x2, x2, -152	# 2288
	lw		x31, 0(x27)	# 2288
	jalr	x1, x31, 0	# 2288
	addi	x2, x2, 152	# 2288
	lw		x1, -148(x2)	# 2288
	lw		x27, -92(x2)	# 2289
	sw		x4, -148(x2)	# 2289
	sw		x1, -152(x2)	# 2289
	addi	x2, x2, -156	# 2289
	lw		x31, 0(x27)	# 2289
	jalr	x1, x31, 0	# 2289
	addi	x2, x2, 156	# 2289
	lw		x1, -152(x2)	# 2289
	lw		x5, -84(x2)	# 2290
	lw		x6, -116(x2)	# 2290
	sw		x4, -152(x2)	# 2290
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -156(x2)	# 2290
	addi	x2, x2, -160	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 160	# 2290
	lw		x1, -156(x2)	# 2290
	lw		x27, -92(x2)	# 2291
	sw		x4, -156(x2)	# 2291
	sw		x1, -160(x2)	# 2291
	addi	x2, x2, -164	# 2291
	lw		x31, 0(x27)	# 2291
	jalr	x1, x31, 0	# 2291
	addi	x2, x2, 164	# 2291
	lw		x1, -160(x2)	# 2291
	addi	x5, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x4, 28(x5)	# 2292
	lw		x4, -156(x2)	# 2292
	sw		x4, 24(x5)	# 2292
	lw		x4, -152(x2)	# 2292
	sw		x4, 20(x5)	# 2292
	lw		x4, -148(x2)	# 2292
	sw		x4, 16(x5)	# 2292
	lw		x4, -144(x2)	# 2292
	sw		x4, 12(x5)	# 2292
	lw		x4, -140(x2)	# 2292
	sw		x4, 8(x5)	# 2292
	lw		x4, -136(x2)	# 2292
	sw		x4, 4(x5)	# 2292
	lw		x4, -132(x2)	# 2292
	sw		x4, 0(x5)	# 2292
	lw		x4, -128(x2)	# 2306
	sw		x1, -160(x2)	# 2306
	addi	x2, x2, -164	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 164	# 2306
	lw		x1, -160(x2)	# 2306
	ori		x5, x0, 4	# 2307
	lw		x6, -116(x2)	# 2307
	mul		x5, x6, x5	# 2307
	lw		x7, -108(x2)	# 2307
	add		x5, x7, x5	# 2307
	lw		x5, 0(x5)	# 2307
	lw		x8, -80(x2)	# 2307
	sub		x5, x5, x8	# 2307
	ble		x6, x5, ble.18815	# 2297
	jal		x0, ble_cont.18814	# 2297
ble.18815:
	flw		f0, -96(x2)	# 2284
	lw		x9, -104(x2)	# 2284
	sw		x4, -160(x2)	# 2284
	sw		x5, -164(x2)	# 2284
	addi	x4, x9, 0
	sw		x1, -168(x2)	# 2284
	addi	x2, x2, -172	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 172	# 2284
	lw		x1, -168(x2)	# 2284
	lw		x27, -92(x2)	# 2285
	sw		x4, -168(x2)	# 2285
	sw		x1, -172(x2)	# 2285
	addi	x2, x2, -176	# 2285
	lw		x31, 0(x27)	# 2285
	jalr	x1, x31, 0	# 2285
	addi	x2, x2, 176	# 2285
	lw		x1, -172(x2)	# 2285
	lw		x5, -88(x2)	# 2286
	lw		x6, -116(x2)	# 2286
	sw		x4, -172(x2)	# 2286
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -176(x2)	# 2286
	addi	x2, x2, -180	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 180	# 2286
	lw		x1, -176(x2)	# 2286
	lw		x5, -88(x2)	# 2287
	lw		x6, -116(x2)	# 2287
	sw		x4, -176(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -180(x2)	# 2287
	addi	x2, x2, -184	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 184	# 2287
	lw		x1, -180(x2)	# 2287
	lw		x27, -92(x2)	# 2288
	sw		x4, -180(x2)	# 2288
	sw		x1, -184(x2)	# 2288
	addi	x2, x2, -188	# 2288
	lw		x31, 0(x27)	# 2288
	jalr	x1, x31, 0	# 2288
	addi	x2, x2, 188	# 2288
	lw		x1, -184(x2)	# 2288
	lw		x27, -92(x2)	# 2289
	sw		x4, -184(x2)	# 2289
	sw		x1, -188(x2)	# 2289
	addi	x2, x2, -192	# 2289
	lw		x31, 0(x27)	# 2289
	jalr	x1, x31, 0	# 2289
	addi	x2, x2, 192	# 2289
	lw		x1, -188(x2)	# 2289
	lw		x5, -84(x2)	# 2290
	lw		x6, -116(x2)	# 2290
	sw		x4, -188(x2)	# 2290
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -192(x2)	# 2290
	addi	x2, x2, -196	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 196	# 2290
	lw		x1, -192(x2)	# 2290
	lw		x27, -92(x2)	# 2291
	sw		x4, -192(x2)	# 2291
	sw		x1, -196(x2)	# 2291
	addi	x2, x2, -200	# 2291
	lw		x31, 0(x27)	# 2291
	jalr	x1, x31, 0	# 2291
	addi	x2, x2, 200	# 2291
	lw		x1, -196(x2)	# 2291
	addi	x5, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x4, 28(x5)	# 2292
	lw		x4, -192(x2)	# 2292
	sw		x4, 24(x5)	# 2292
	lw		x4, -188(x2)	# 2292
	sw		x4, 20(x5)	# 2292
	lw		x4, -184(x2)	# 2292
	sw		x4, 16(x5)	# 2292
	lw		x4, -180(x2)	# 2292
	sw		x4, 12(x5)	# 2292
	lw		x4, -176(x2)	# 2292
	sw		x4, 8(x5)	# 2292
	lw		x4, -172(x2)	# 2292
	sw		x4, 4(x5)	# 2292
	lw		x4, -168(x2)	# 2292
	sw		x4, 0(x5)	# 2292
	addi	x4, x5, 0	# 2292
	ori		x5, x0, 4	# 2298
	lw		x6, -164(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -160(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -84(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x6, -116(x2)	# 2297
	ble		x6, x5, ble.18817	# 2297
	addi	x4, x7, 0	# 2301
	jal		x0, ble_cont.18816	# 2297
ble.18817:
	flw		f0, -96(x2)	# 2284
	lw		x8, -104(x2)	# 2284
	sw		x5, -196(x2)	# 2284
	addi	x4, x8, 0
	sw		x1, -200(x2)	# 2284
	addi	x2, x2, -204	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 204	# 2284
	lw		x1, -200(x2)	# 2284
	lw		x27, -92(x2)	# 2285
	sw		x4, -200(x2)	# 2285
	sw		x1, -204(x2)	# 2285
	addi	x2, x2, -208	# 2285
	lw		x31, 0(x27)	# 2285
	jalr	x1, x31, 0	# 2285
	addi	x2, x2, 208	# 2285
	lw		x1, -204(x2)	# 2285
	lw		x5, -88(x2)	# 2286
	lw		x6, -116(x2)	# 2286
	sw		x4, -204(x2)	# 2286
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -208(x2)	# 2286
	addi	x2, x2, -212	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 212	# 2286
	lw		x1, -208(x2)	# 2286
	lw		x5, -88(x2)	# 2287
	lw		x6, -116(x2)	# 2287
	sw		x4, -208(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -212(x2)	# 2287
	addi	x2, x2, -216	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 216	# 2287
	lw		x1, -212(x2)	# 2287
	lw		x27, -92(x2)	# 2288
	sw		x4, -212(x2)	# 2288
	sw		x1, -216(x2)	# 2288
	addi	x2, x2, -220	# 2288
	lw		x31, 0(x27)	# 2288
	jalr	x1, x31, 0	# 2288
	addi	x2, x2, 220	# 2288
	lw		x1, -216(x2)	# 2288
	lw		x27, -92(x2)	# 2289
	sw		x4, -216(x2)	# 2289
	sw		x1, -220(x2)	# 2289
	addi	x2, x2, -224	# 2289
	lw		x31, 0(x27)	# 2289
	jalr	x1, x31, 0	# 2289
	addi	x2, x2, 224	# 2289
	lw		x1, -220(x2)	# 2289
	lw		x5, -84(x2)	# 2290
	lw		x6, -116(x2)	# 2290
	sw		x4, -220(x2)	# 2290
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -224(x2)	# 2290
	addi	x2, x2, -228	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 228	# 2290
	lw		x1, -224(x2)	# 2290
	lw		x27, -92(x2)	# 2291
	sw		x4, -224(x2)	# 2291
	sw		x1, -228(x2)	# 2291
	addi	x2, x2, -232	# 2291
	lw		x31, 0(x27)	# 2291
	jalr	x1, x31, 0	# 2291
	addi	x2, x2, 232	# 2291
	lw		x1, -228(x2)	# 2291
	addi	x5, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x4, 28(x5)	# 2292
	lw		x4, -224(x2)	# 2292
	sw		x4, 24(x5)	# 2292
	lw		x4, -220(x2)	# 2292
	sw		x4, 20(x5)	# 2292
	lw		x4, -216(x2)	# 2292
	sw		x4, 16(x5)	# 2292
	lw		x4, -212(x2)	# 2292
	sw		x4, 12(x5)	# 2292
	lw		x4, -208(x2)	# 2292
	sw		x4, 8(x5)	# 2292
	lw		x4, -204(x2)	# 2292
	sw		x4, 4(x5)	# 2292
	lw		x4, -200(x2)	# 2292
	sw		x4, 0(x5)	# 2292
	addi	x4, x5, 0	# 2292
	ori		x5, x0, 4	# 2298
	lw		x6, -196(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -160(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -84(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x27, -76(x2)	# 2299
	addi	x4, x7, 0
	sw		x1, -228(x2)	# 2299
	addi	x2, x2, -232	# 2299
	lw		x31, 0(x27)	# 2299
	jalr	x1, x31, 0	# 2299
	addi	x2, x2, 232	# 2299
	lw		x1, -228(x2)	# 2299
ble_cont.18816:
ble_cont.18814:
	ori		x5, x0, 4	# 2306
	lw		x6, -116(x2)	# 2306
	mul		x5, x6, x5	# 2306
	lw		x7, -108(x2)	# 2306
	add		x5, x7, x5	# 2306
	lw		x5, 0(x5)	# 2306
	flw		f0, -96(x2)	# 2284
	lw		x8, -104(x2)	# 2284
	sw		x4, -228(x2)	# 2284
	sw		x5, -232(x2)	# 2284
	addi	x4, x8, 0
	sw		x1, -236(x2)	# 2284
	addi	x2, x2, -240	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 240	# 2284
	lw		x1, -236(x2)	# 2284
	lw		x27, -92(x2)	# 2285
	sw		x4, -236(x2)	# 2285
	sw		x1, -240(x2)	# 2285
	addi	x2, x2, -244	# 2285
	lw		x31, 0(x27)	# 2285
	jalr	x1, x31, 0	# 2285
	addi	x2, x2, 244	# 2285
	lw		x1, -240(x2)	# 2285
	lw		x5, -88(x2)	# 2286
	lw		x6, -116(x2)	# 2286
	sw		x4, -240(x2)	# 2286
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -244(x2)	# 2286
	addi	x2, x2, -248	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 248	# 2286
	lw		x1, -244(x2)	# 2286
	lw		x5, -88(x2)	# 2287
	lw		x6, -116(x2)	# 2287
	sw		x4, -244(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -248(x2)	# 2287
	addi	x2, x2, -252	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 252	# 2287
	lw		x1, -248(x2)	# 2287
	lw		x27, -92(x2)	# 2288
	sw		x4, -248(x2)	# 2288
	sw		x1, -252(x2)	# 2288
	addi	x2, x2, -256	# 2288
	lw		x31, 0(x27)	# 2288
	jalr	x1, x31, 0	# 2288
	addi	x2, x2, 256	# 2288
	lw		x1, -252(x2)	# 2288
	lw		x27, -92(x2)	# 2289
	sw		x4, -252(x2)	# 2289
	sw		x1, -256(x2)	# 2289
	addi	x2, x2, -260	# 2289
	lw		x31, 0(x27)	# 2289
	jalr	x1, x31, 0	# 2289
	addi	x2, x2, 260	# 2289
	lw		x1, -256(x2)	# 2289
	lw		x5, -84(x2)	# 2290
	lw		x6, -116(x2)	# 2290
	sw		x4, -256(x2)	# 2290
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -260(x2)	# 2290
	addi	x2, x2, -264	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 264	# 2290
	lw		x1, -260(x2)	# 2290
	lw		x27, -92(x2)	# 2291
	sw		x4, -260(x2)	# 2291
	sw		x1, -264(x2)	# 2291
	addi	x2, x2, -268	# 2291
	lw		x31, 0(x27)	# 2291
	jalr	x1, x31, 0	# 2291
	addi	x2, x2, 268	# 2291
	lw		x1, -264(x2)	# 2291
	addi	x5, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x4, 28(x5)	# 2292
	lw		x4, -260(x2)	# 2292
	sw		x4, 24(x5)	# 2292
	lw		x4, -256(x2)	# 2292
	sw		x4, 20(x5)	# 2292
	lw		x4, -252(x2)	# 2292
	sw		x4, 16(x5)	# 2292
	lw		x4, -248(x2)	# 2292
	sw		x4, 12(x5)	# 2292
	lw		x4, -244(x2)	# 2292
	sw		x4, 8(x5)	# 2292
	lw		x4, -240(x2)	# 2292
	sw		x4, 4(x5)	# 2292
	lw		x4, -236(x2)	# 2292
	sw		x4, 0(x5)	# 2292
	lw		x4, -232(x2)	# 2306
	sw		x1, -264(x2)	# 2306
	addi	x2, x2, -268	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 268	# 2306
	lw		x1, -264(x2)	# 2306
	ori		x5, x0, 4	# 2307
	lw		x6, -116(x2)	# 2307
	mul		x5, x6, x5	# 2307
	lw		x7, -108(x2)	# 2307
	add		x5, x7, x5	# 2307
	lw		x5, 0(x5)	# 2307
	lw		x8, -80(x2)	# 2307
	sub		x5, x5, x8	# 2307
	ble		x6, x5, ble.18819	# 2297
	jal		x0, ble_cont.18818	# 2297
ble.18819:
	flw		f0, -96(x2)	# 2284
	lw		x9, -104(x2)	# 2284
	sw		x4, -264(x2)	# 2284
	sw		x5, -268(x2)	# 2284
	addi	x4, x9, 0
	sw		x1, -272(x2)	# 2284
	addi	x2, x2, -276	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 276	# 2284
	lw		x1, -272(x2)	# 2284
	lw		x27, -92(x2)	# 2285
	sw		x4, -272(x2)	# 2285
	sw		x1, -276(x2)	# 2285
	addi	x2, x2, -280	# 2285
	lw		x31, 0(x27)	# 2285
	jalr	x1, x31, 0	# 2285
	addi	x2, x2, 280	# 2285
	lw		x1, -276(x2)	# 2285
	lw		x5, -88(x2)	# 2286
	lw		x6, -116(x2)	# 2286
	sw		x4, -276(x2)	# 2286
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -280(x2)	# 2286
	addi	x2, x2, -284	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 284	# 2286
	lw		x1, -280(x2)	# 2286
	lw		x5, -88(x2)	# 2287
	lw		x6, -116(x2)	# 2287
	sw		x4, -280(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -284(x2)	# 2287
	addi	x2, x2, -288	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 288	# 2287
	lw		x1, -284(x2)	# 2287
	lw		x27, -92(x2)	# 2288
	sw		x4, -284(x2)	# 2288
	sw		x1, -288(x2)	# 2288
	addi	x2, x2, -292	# 2288
	lw		x31, 0(x27)	# 2288
	jalr	x1, x31, 0	# 2288
	addi	x2, x2, 292	# 2288
	lw		x1, -288(x2)	# 2288
	lw		x27, -92(x2)	# 2289
	sw		x4, -288(x2)	# 2289
	sw		x1, -292(x2)	# 2289
	addi	x2, x2, -296	# 2289
	lw		x31, 0(x27)	# 2289
	jalr	x1, x31, 0	# 2289
	addi	x2, x2, 296	# 2289
	lw		x1, -292(x2)	# 2289
	lw		x5, -84(x2)	# 2290
	lw		x6, -116(x2)	# 2290
	sw		x4, -292(x2)	# 2290
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -296(x2)	# 2290
	addi	x2, x2, -300	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 300	# 2290
	lw		x1, -296(x2)	# 2290
	lw		x27, -92(x2)	# 2291
	sw		x4, -296(x2)	# 2291
	sw		x1, -300(x2)	# 2291
	addi	x2, x2, -304	# 2291
	lw		x31, 0(x27)	# 2291
	jalr	x1, x31, 0	# 2291
	addi	x2, x2, 304	# 2291
	lw		x1, -300(x2)	# 2291
	addi	x5, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x4, 28(x5)	# 2292
	lw		x4, -296(x2)	# 2292
	sw		x4, 24(x5)	# 2292
	lw		x4, -292(x2)	# 2292
	sw		x4, 20(x5)	# 2292
	lw		x4, -288(x2)	# 2292
	sw		x4, 16(x5)	# 2292
	lw		x4, -284(x2)	# 2292
	sw		x4, 12(x5)	# 2292
	lw		x4, -280(x2)	# 2292
	sw		x4, 8(x5)	# 2292
	lw		x4, -276(x2)	# 2292
	sw		x4, 4(x5)	# 2292
	lw		x4, -272(x2)	# 2292
	sw		x4, 0(x5)	# 2292
	addi	x4, x5, 0	# 2292
	ori		x5, x0, 4	# 2298
	lw		x6, -268(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -264(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -84(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x6, -116(x2)	# 2297
	ble		x6, x5, ble.18821	# 2297
	addi	x4, x7, 0	# 2301
	jal		x0, ble_cont.18820	# 2297
ble.18821:
	flw		f0, -96(x2)	# 2284
	lw		x8, -104(x2)	# 2284
	sw		x5, -300(x2)	# 2284
	addi	x4, x8, 0
	sw		x1, -304(x2)	# 2284
	addi	x2, x2, -308	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 308	# 2284
	lw		x1, -304(x2)	# 2284
	lw		x27, -92(x2)	# 2285
	sw		x4, -304(x2)	# 2285
	sw		x1, -308(x2)	# 2285
	addi	x2, x2, -312	# 2285
	lw		x31, 0(x27)	# 2285
	jalr	x1, x31, 0	# 2285
	addi	x2, x2, 312	# 2285
	lw		x1, -308(x2)	# 2285
	lw		x5, -88(x2)	# 2286
	lw		x6, -116(x2)	# 2286
	sw		x4, -308(x2)	# 2286
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -312(x2)	# 2286
	addi	x2, x2, -316	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 316	# 2286
	lw		x1, -312(x2)	# 2286
	lw		x5, -88(x2)	# 2287
	lw		x6, -116(x2)	# 2287
	sw		x4, -312(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -316(x2)	# 2287
	addi	x2, x2, -320	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 320	# 2287
	lw		x1, -316(x2)	# 2287
	lw		x27, -92(x2)	# 2288
	sw		x4, -316(x2)	# 2288
	sw		x1, -320(x2)	# 2288
	addi	x2, x2, -324	# 2288
	lw		x31, 0(x27)	# 2288
	jalr	x1, x31, 0	# 2288
	addi	x2, x2, 324	# 2288
	lw		x1, -320(x2)	# 2288
	lw		x27, -92(x2)	# 2289
	sw		x4, -320(x2)	# 2289
	sw		x1, -324(x2)	# 2289
	addi	x2, x2, -328	# 2289
	lw		x31, 0(x27)	# 2289
	jalr	x1, x31, 0	# 2289
	addi	x2, x2, 328	# 2289
	lw		x1, -324(x2)	# 2289
	lw		x5, -84(x2)	# 2290
	lw		x6, -116(x2)	# 2290
	sw		x4, -324(x2)	# 2290
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -328(x2)	# 2290
	addi	x2, x2, -332	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 332	# 2290
	lw		x1, -328(x2)	# 2290
	lw		x27, -92(x2)	# 2291
	sw		x4, -328(x2)	# 2291
	sw		x1, -332(x2)	# 2291
	addi	x2, x2, -336	# 2291
	lw		x31, 0(x27)	# 2291
	jalr	x1, x31, 0	# 2291
	addi	x2, x2, 336	# 2291
	lw		x1, -332(x2)	# 2291
	addi	x5, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x4, 28(x5)	# 2292
	lw		x4, -328(x2)	# 2292
	sw		x4, 24(x5)	# 2292
	lw		x4, -324(x2)	# 2292
	sw		x4, 20(x5)	# 2292
	lw		x4, -320(x2)	# 2292
	sw		x4, 16(x5)	# 2292
	lw		x4, -316(x2)	# 2292
	sw		x4, 12(x5)	# 2292
	lw		x4, -312(x2)	# 2292
	sw		x4, 8(x5)	# 2292
	lw		x4, -308(x2)	# 2292
	sw		x4, 4(x5)	# 2292
	lw		x4, -304(x2)	# 2292
	sw		x4, 0(x5)	# 2292
	addi	x4, x5, 0	# 2292
	ori		x5, x0, 4	# 2298
	lw		x6, -300(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -264(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -84(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x27, -76(x2)	# 2299
	addi	x4, x7, 0
	sw		x1, -332(x2)	# 2299
	addi	x2, x2, -336	# 2299
	lw		x31, 0(x27)	# 2299
	jalr	x1, x31, 0	# 2299
	addi	x2, x2, 336	# 2299
	lw		x1, -332(x2)	# 2299
ble_cont.18820:
ble_cont.18818:
	ori		x5, x0, 4	# 2306
	lw		x6, -116(x2)	# 2306
	mul		x5, x6, x5	# 2306
	lw		x7, -108(x2)	# 2306
	add		x5, x7, x5	# 2306
	lw		x5, 0(x5)	# 2306
	flw		f0, -96(x2)	# 2284
	lw		x8, -104(x2)	# 2284
	sw		x4, -332(x2)	# 2284
	sw		x5, -336(x2)	# 2284
	addi	x4, x8, 0
	sw		x1, -340(x2)	# 2284
	addi	x2, x2, -344	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 344	# 2284
	lw		x1, -340(x2)	# 2284
	lw		x27, -92(x2)	# 2285
	sw		x4, -340(x2)	# 2285
	sw		x1, -344(x2)	# 2285
	addi	x2, x2, -348	# 2285
	lw		x31, 0(x27)	# 2285
	jalr	x1, x31, 0	# 2285
	addi	x2, x2, 348	# 2285
	lw		x1, -344(x2)	# 2285
	lw		x5, -88(x2)	# 2286
	lw		x6, -116(x2)	# 2286
	sw		x4, -344(x2)	# 2286
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -348(x2)	# 2286
	addi	x2, x2, -352	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 352	# 2286
	lw		x1, -348(x2)	# 2286
	lw		x5, -88(x2)	# 2287
	lw		x6, -116(x2)	# 2287
	sw		x4, -348(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -352(x2)	# 2287
	addi	x2, x2, -356	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 356	# 2287
	lw		x1, -352(x2)	# 2287
	lw		x27, -92(x2)	# 2288
	sw		x4, -352(x2)	# 2288
	sw		x1, -356(x2)	# 2288
	addi	x2, x2, -360	# 2288
	lw		x31, 0(x27)	# 2288
	jalr	x1, x31, 0	# 2288
	addi	x2, x2, 360	# 2288
	lw		x1, -356(x2)	# 2288
	lw		x27, -92(x2)	# 2289
	sw		x4, -356(x2)	# 2289
	sw		x1, -360(x2)	# 2289
	addi	x2, x2, -364	# 2289
	lw		x31, 0(x27)	# 2289
	jalr	x1, x31, 0	# 2289
	addi	x2, x2, 364	# 2289
	lw		x1, -360(x2)	# 2289
	lw		x5, -84(x2)	# 2290
	lw		x6, -116(x2)	# 2290
	sw		x4, -360(x2)	# 2290
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -364(x2)	# 2290
	addi	x2, x2, -368	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 368	# 2290
	lw		x1, -364(x2)	# 2290
	lw		x27, -92(x2)	# 2291
	sw		x4, -364(x2)	# 2291
	sw		x1, -368(x2)	# 2291
	addi	x2, x2, -372	# 2291
	lw		x31, 0(x27)	# 2291
	jalr	x1, x31, 0	# 2291
	addi	x2, x2, 372	# 2291
	lw		x1, -368(x2)	# 2291
	addi	x5, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x4, 28(x5)	# 2292
	lw		x4, -364(x2)	# 2292
	sw		x4, 24(x5)	# 2292
	lw		x4, -360(x2)	# 2292
	sw		x4, 20(x5)	# 2292
	lw		x4, -356(x2)	# 2292
	sw		x4, 16(x5)	# 2292
	lw		x4, -352(x2)	# 2292
	sw		x4, 12(x5)	# 2292
	lw		x4, -348(x2)	# 2292
	sw		x4, 8(x5)	# 2292
	lw		x4, -344(x2)	# 2292
	sw		x4, 4(x5)	# 2292
	lw		x4, -340(x2)	# 2292
	sw		x4, 0(x5)	# 2292
	lw		x4, -336(x2)	# 2306
	sw		x1, -368(x2)	# 2306
	addi	x2, x2, -372	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 372	# 2306
	lw		x1, -368(x2)	# 2306
	ori		x5, x0, 4	# 2307
	lw		x6, -116(x2)	# 2307
	mul		x5, x6, x5	# 2307
	lw		x7, -108(x2)	# 2307
	add		x5, x7, x5	# 2307
	lw		x5, 0(x5)	# 2307
	lw		x7, -80(x2)	# 2307
	sub		x5, x5, x7	# 2307
	ble		x6, x5, ble.18823	# 2297
	jal		x0, ble_cont.18822	# 2297
ble.18823:
	flw		f0, -96(x2)	# 2284
	lw		x8, -104(x2)	# 2284
	sw		x4, -368(x2)	# 2284
	sw		x5, -372(x2)	# 2284
	addi	x4, x8, 0
	sw		x1, -376(x2)	# 2284
	addi	x2, x2, -380	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 380	# 2284
	lw		x1, -376(x2)	# 2284
	lw		x27, -92(x2)	# 2285
	sw		x4, -376(x2)	# 2285
	sw		x1, -380(x2)	# 2285
	addi	x2, x2, -384	# 2285
	lw		x31, 0(x27)	# 2285
	jalr	x1, x31, 0	# 2285
	addi	x2, x2, 384	# 2285
	lw		x1, -380(x2)	# 2285
	lw		x5, -88(x2)	# 2286
	lw		x6, -116(x2)	# 2286
	sw		x4, -380(x2)	# 2286
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -384(x2)	# 2286
	addi	x2, x2, -388	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 388	# 2286
	lw		x1, -384(x2)	# 2286
	lw		x5, -88(x2)	# 2287
	lw		x6, -116(x2)	# 2287
	sw		x4, -384(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -388(x2)	# 2287
	addi	x2, x2, -392	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 392	# 2287
	lw		x1, -388(x2)	# 2287
	lw		x27, -92(x2)	# 2288
	sw		x4, -388(x2)	# 2288
	sw		x1, -392(x2)	# 2288
	addi	x2, x2, -396	# 2288
	lw		x31, 0(x27)	# 2288
	jalr	x1, x31, 0	# 2288
	addi	x2, x2, 396	# 2288
	lw		x1, -392(x2)	# 2288
	lw		x27, -92(x2)	# 2289
	sw		x4, -392(x2)	# 2289
	sw		x1, -396(x2)	# 2289
	addi	x2, x2, -400	# 2289
	lw		x31, 0(x27)	# 2289
	jalr	x1, x31, 0	# 2289
	addi	x2, x2, 400	# 2289
	lw		x1, -396(x2)	# 2289
	lw		x5, -84(x2)	# 2290
	lw		x6, -116(x2)	# 2290
	sw		x4, -396(x2)	# 2290
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -400(x2)	# 2290
	addi	x2, x2, -404	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 404	# 2290
	lw		x1, -400(x2)	# 2290
	lw		x27, -92(x2)	# 2291
	sw		x4, -400(x2)	# 2291
	sw		x1, -404(x2)	# 2291
	addi	x2, x2, -408	# 2291
	lw		x31, 0(x27)	# 2291
	jalr	x1, x31, 0	# 2291
	addi	x2, x2, 408	# 2291
	lw		x1, -404(x2)	# 2291
	addi	x5, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x4, 28(x5)	# 2292
	lw		x4, -400(x2)	# 2292
	sw		x4, 24(x5)	# 2292
	lw		x4, -396(x2)	# 2292
	sw		x4, 20(x5)	# 2292
	lw		x4, -392(x2)	# 2292
	sw		x4, 16(x5)	# 2292
	lw		x4, -388(x2)	# 2292
	sw		x4, 12(x5)	# 2292
	lw		x4, -384(x2)	# 2292
	sw		x4, 8(x5)	# 2292
	lw		x4, -380(x2)	# 2292
	sw		x4, 4(x5)	# 2292
	lw		x4, -376(x2)	# 2292
	sw		x4, 0(x5)	# 2292
	addi	x4, x5, 0	# 2292
	ori		x5, x0, 4	# 2298
	lw		x6, -372(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -368(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -84(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x6, -116(x2)	# 2297
	ble		x6, x5, ble.18825	# 2297
	addi	x4, x7, 0	# 2301
	jal		x0, ble_cont.18824	# 2297
ble.18825:
	flw		f0, -96(x2)	# 2284
	lw		x8, -104(x2)	# 2284
	sw		x5, -404(x2)	# 2284
	addi	x4, x8, 0
	sw		x1, -408(x2)	# 2284
	addi	x2, x2, -412	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 412	# 2284
	lw		x1, -408(x2)	# 2284
	lw		x27, -92(x2)	# 2285
	sw		x4, -408(x2)	# 2285
	sw		x1, -412(x2)	# 2285
	addi	x2, x2, -416	# 2285
	lw		x31, 0(x27)	# 2285
	jalr	x1, x31, 0	# 2285
	addi	x2, x2, 416	# 2285
	lw		x1, -412(x2)	# 2285
	lw		x5, -88(x2)	# 2286
	lw		x6, -116(x2)	# 2286
	sw		x4, -412(x2)	# 2286
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -416(x2)	# 2286
	addi	x2, x2, -420	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 420	# 2286
	lw		x1, -416(x2)	# 2286
	lw		x5, -88(x2)	# 2287
	lw		x6, -116(x2)	# 2287
	sw		x4, -416(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -420(x2)	# 2287
	addi	x2, x2, -424	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 424	# 2287
	lw		x1, -420(x2)	# 2287
	lw		x27, -92(x2)	# 2288
	sw		x4, -420(x2)	# 2288
	sw		x1, -424(x2)	# 2288
	addi	x2, x2, -428	# 2288
	lw		x31, 0(x27)	# 2288
	jalr	x1, x31, 0	# 2288
	addi	x2, x2, 428	# 2288
	lw		x1, -424(x2)	# 2288
	lw		x27, -92(x2)	# 2289
	sw		x4, -424(x2)	# 2289
	sw		x1, -428(x2)	# 2289
	addi	x2, x2, -432	# 2289
	lw		x31, 0(x27)	# 2289
	jalr	x1, x31, 0	# 2289
	addi	x2, x2, 432	# 2289
	lw		x1, -428(x2)	# 2289
	lw		x5, -84(x2)	# 2290
	lw		x6, -116(x2)	# 2290
	sw		x4, -428(x2)	# 2290
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -432(x2)	# 2290
	addi	x2, x2, -436	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 436	# 2290
	lw		x1, -432(x2)	# 2290
	lw		x27, -92(x2)	# 2291
	sw		x4, -432(x2)	# 2291
	sw		x1, -436(x2)	# 2291
	addi	x2, x2, -440	# 2291
	lw		x31, 0(x27)	# 2291
	jalr	x1, x31, 0	# 2291
	addi	x2, x2, 440	# 2291
	lw		x1, -436(x2)	# 2291
	addi	x5, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x4, 28(x5)	# 2292
	lw		x4, -432(x2)	# 2292
	sw		x4, 24(x5)	# 2292
	lw		x4, -428(x2)	# 2292
	sw		x4, 20(x5)	# 2292
	lw		x4, -424(x2)	# 2292
	sw		x4, 16(x5)	# 2292
	lw		x4, -420(x2)	# 2292
	sw		x4, 12(x5)	# 2292
	lw		x4, -416(x2)	# 2292
	sw		x4, 8(x5)	# 2292
	lw		x4, -412(x2)	# 2292
	sw		x4, 4(x5)	# 2292
	lw		x4, -408(x2)	# 2292
	sw		x4, 0(x5)	# 2292
	addi	x4, x5, 0	# 2292
	ori		x5, x0, 4	# 2298
	lw		x6, -404(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -368(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	lw		x4, -84(x2)	# 2299
	sub		x5, x6, x4	# 2299
	lw		x27, -76(x2)	# 2299
	addi	x4, x7, 0
	sw		x1, -436(x2)	# 2299
	addi	x2, x2, -440	# 2299
	lw		x31, 0(x27)	# 2299
	jalr	x1, x31, 0	# 2299
	addi	x2, x2, 440	# 2299
	lw		x1, -436(x2)	# 2299
ble_cont.18824:
ble_cont.18822:
	lw		x27, -72(x2)	# 904
	sw		x4, -436(x2)	# 904
	sw		x1, -440(x2)	# 904
	addi	x2, x2, -444	# 904
	lw		x31, 0(x27)	# 904
	jalr	x1, x31, 0	# 904
	addi	x2, x2, 444	# 904
	lw		x1, -440(x2)	# 904
	lw		x27, -68(x2)	# 905
	sw		x1, -440(x2)	# 905
	addi	x2, x2, -444	# 905
	lw		x31, 0(x27)	# 905
	jalr	x1, x31, 0	# 905
	addi	x2, x2, 444	# 905
	lw		x1, -440(x2)	# 905
	lw		x4, -116(x2)	# 870
	lw		x27, -64(x2)	# 870
	sw		x1, -440(x2)	# 870
	addi	x2, x2, -444	# 870
	lw		x31, 0(x27)	# 870
	jalr	x1, x31, 0	# 870
	addi	x2, x2, 444	# 870
	lw		x1, -440(x2)	# 870
	lw		x4, -116(x2)	# 907
	lw		x27, -60(x2)	# 907
	sw		x1, -440(x2)	# 907
	addi	x2, x2, -444	# 907
	lw		x31, 0(x27)	# 907
	jalr	x1, x31, 0	# 907
	addi	x2, x2, 444	# 907
	lw		x1, -440(x2)	# 907
	lw		x4, -116(x2)	# 908
	lw		x27, -56(x2)	# 908
	sw		x1, -440(x2)	# 908
	addi	x2, x2, -444	# 908
	lw		x31, 0(x27)	# 908
	jalr	x1, x31, 0	# 908
	addi	x2, x2, 444	# 908
	lw		x1, -440(x2)	# 908
	ori		x5, x0, 4	# 908
	lw		x6, -116(x2)	# 908
	mul		x5, x6, x5	# 908
	lw		x7, -52(x2)	# 908
	add		x5, x7, x5	# 908
	sw		x4, 0(x5)	# 908
	lw		x4, -44(x2)	# 2501
	lw		x27, -48(x2)	# 2501
	sw		x1, -440(x2)	# 2501
	addi	x2, x2, -444	# 2501
	lw		x31, 0(x27)	# 2501
	jalr	x1, x31, 0	# 2501
	addi	x2, x2, 444	# 2501
	lw		x1, -440(x2)	# 2501
	ori		x4, x0, 4	# 2421
	lw		x27, -40(x2)	# 2421
	sw		x4, -440(x2)	# 2421
	sw		x1, -444(x2)	# 2421
	addi	x2, x2, -448	# 2421
	lw		x31, 0(x27)	# 2421
	jalr	x1, x31, 0	# 2421
	addi	x2, x2, 448	# 2421
	lw		x1, -444(x2)	# 2421
	ori		x4, x0, 9	# 2422
	lw		x5, -116(x2)	# 2422
	lw		x27, -36(x2)	# 2422
	addi	x6, x5, 0
	sw		x1, -444(x2)	# 2422
	addi	x2, x2, -448	# 2422
	lw		x31, 0(x27)	# 2422
	jalr	x1, x31, 0	# 2422
	addi	x2, x2, 448	# 2422
	lw		x1, -444(x2)	# 2422
	lw		x4, -440(x2)	# 2423
	lw		x27, -32(x2)	# 2423
	sw		x1, -444(x2)	# 2423
	addi	x2, x2, -448	# 2423
	lw		x31, 0(x27)	# 2423
	jalr	x1, x31, 0	# 2423
	addi	x2, x2, 448	# 2423
	lw		x1, -444(x2)	# 2423
	ori		x4, x0, 4	# 259
	lw		x5, -116(x2)	# 259
	mul		x4, x5, x4	# 259
	lw		x6, -28(x2)	# 259
	add		x4, x6, x4	# 259
	flw		f0, 0(x4)	# 259
	ori		x4, x0, 4	# 259
	mul		x4, x5, x4	# 259
	lw		x7, -24(x2)	# 259
	add		x4, x7, x4	# 259
	fsw		f0, 0(x4)	# 259
	ori		x4, x0, 4	# 260
	lw		x8, -84(x2)	# 260
	mul		x4, x8, x4	# 260
	add		x4, x6, x4	# 260
	flw		f0, 0(x4)	# 260
	ori		x4, x0, 4	# 260
	mul		x4, x8, x4	# 260
	add		x4, x7, x4	# 260
	fsw		f0, 0(x4)	# 260
	ori		x4, x0, 4	# 261
	lw		x9, -80(x2)	# 261
	mul		x4, x9, x4	# 261
	add		x4, x6, x4	# 261
	flw		f0, 0(x4)	# 261
	ori		x4, x0, 4	# 261
	mul		x4, x9, x4	# 261
	add		x4, x7, x4	# 261
	fsw		f0, 0(x4)	# 261
	ori		x4, x0, 4	# 1287
	mul		x4, x5, x4	# 1287
	lw		x6, -20(x2)	# 1287
	add		x4, x6, x4	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x4, x4, x8	# 1287
	lw		x7, -12(x2)	# 1287
	lw		x27, -16(x2)	# 1287
	addi	x5, x4, 0
	addi	x4, x7, 0
	sw		x1, -444(x2)	# 1287
	addi	x2, x2, -448	# 1287
	lw		x31, 0(x27)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 448	# 1287
	lw		x1, -444(x2)	# 1287
	ori		x4, x0, 4	# 2505
	lw		x5, -116(x2)	# 2505
	mul		x4, x5, x4	# 2505
	lw		x6, -20(x2)	# 2505
	add		x4, x6, x4	# 2505
	lw		x4, 0(x4)	# 2505
	lw		x6, -84(x2)	# 2505
	sub		x4, x4, x6	# 2505
	lw		x27, -8(x2)	# 2505
	sw		x1, -444(x2)	# 2505
	addi	x2, x2, -448	# 2505
	lw		x31, 0(x27)	# 2505
	jalr	x1, x31, 0	# 2505
	addi	x2, x2, 448	# 2505
	lw		x1, -444(x2)	# 2505
	lw		x4, -332(x2)	# 2506
	lw		x5, -116(x2)	# 2506
	lw		x27, -4(x2)	# 2506
	addi	x6, x5, 0
	sw		x1, -444(x2)	# 2506
	addi	x2, x2, -448	# 2506
	lw		x31, 0(x27)	# 2506
	jalr	x1, x31, 0	# 2506
	addi	x2, x2, 448	# 2506
	lw		x1, -444(x2)	# 2506
	lw		x4, -116(x2)	# 2507
	lw		x5, -228(x2)	# 2507
	lw		x6, -332(x2)	# 2507
	lw		x7, -436(x2)	# 2507
	lw		x8, -80(x2)	# 2507
	lw		x9, -44(x2)	# 2507
	lw		x27, 0(x2)	# 2507
	lw		x31, 0(x27)	# 2507
	jalr	x0, x31, 0	# 2507
min_caml_start:
	addi	x2, x2, -4
	addi	x30, x0, 0
	lui		x4, %hi(l.12365)	# 20
	ori		x4, x0, %lo(l.12365)	# 20
	flw		f0, 0(x4)	# 20
	lui		x4, %hi(l.12367)	# 21
	ori		x4, x0, %lo(l.12367)	# 21
	flw		f1, 0(x4)	# 21
	lui		x4, %hi(l.12369)	# 22
	ori		x4, x0, %lo(l.12369)	# 22
	flw		f2, 0(x4)	# 22
	lui		x4, %hi(l.12371)	# 23
	ori		x4, x0, %lo(l.12371)	# 23
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
	fsw		f2, -8(x2)	# 76
	fsw		f3, -16(x2)	# 76
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
	lui		x5, %hi(l.9417)	# 81
	ori		x5, x0, %lo(l.9417)	# 81
	flw		f0, 0(x5)	# 81
	lw		x5, -32(x2)	# 81
	sw		x4, -36(x2)	# 81
	fsw		f0, -40(x2)	# 81
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 81
	addi	x2, x2, -52	# 81
	jal		x1, min_caml_create_float_array	# 81
	addi	x2, x2, 52	# 81
	lw		x1, -48(x2)	# 81
	ori		x5, x0, 60	# 82
	addi	x6, x3, 0	# 82
	addi	x3, x3, 44	# 82
	sw		x4, 40(x6)	# 82
	sw		x4, 36(x6)	# 82
	sw		x4, 32(x6)	# 82
	sw		x4, 28(x6)	# 82
	lw		x7, -32(x2)	# 82
	sw		x7, 24(x6)	# 82
	sw		x4, 20(x6)	# 82
	sw		x4, 16(x6)	# 82
	sw		x7, 12(x6)	# 82
	sw		x7, 8(x6)	# 82
	sw		x7, 4(x6)	# 82
	sw		x7, 0(x6)	# 82
	addi	x4, x6, 0	# 82
	sw		x5, -48(x2)	# 82
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -52(x2)	# 82
	addi	x2, x2, -56	# 82
	jal		x1, min_caml_create_array	# 82
	addi	x2, x2, 56	# 82
	lw		x1, -52(x2)	# 82
	ori		x5, x0, 3	# 86
	flw		f0, -40(x2)	# 86
	sw		x4, -52(x2)	# 86
	sw		x5, -56(x2)	# 86
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 86
	addi	x2, x2, -64	# 86
	jal		x1, min_caml_create_float_array	# 86
	addi	x2, x2, 64	# 86
	lw		x1, -60(x2)	# 86
	flw		f0, -40(x2)	# 89
	lw		x5, -56(x2)	# 89
	sw		x4, -60(x2)	# 89
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 89
	addi	x2, x2, -68	# 89
	jal		x1, min_caml_create_float_array	# 89
	addi	x2, x2, 68	# 89
	lw		x1, -64(x2)	# 89
	flw		f0, -40(x2)	# 92
	lw		x5, -56(x2)	# 92
	sw		x4, -64(x2)	# 92
	addi	x4, x5, 0
	sw		x1, -68(x2)	# 92
	addi	x2, x2, -72	# 92
	jal		x1, min_caml_create_float_array	# 92
	addi	x2, x2, 72	# 92
	lw		x1, -68(x2)	# 92
	lui		x5, %hi(l.12386)	# 95
	ori		x5, x0, %lo(l.12386)	# 95
	flw		f0, 0(x5)	# 95
	lw		x5, -28(x2)	# 95
	fsw		f0, -72(x2)	# 95
	sw		x4, -80(x2)	# 95
	addi	x4, x5, 0
	sw		x1, -84(x2)	# 95
	addi	x2, x2, -88	# 95
	jal		x1, min_caml_create_float_array	# 95
	addi	x2, x2, 88	# 95
	lw		x1, -84(x2)	# 95
	ori		x5, x0, 50	# 98
	lui		x6, -1	# 98
	ori		x6, x0, -1	# 98
	lw		x7, -28(x2)	# 98
	sw		x6, -84(x2)	# 98
	sw		x4, -88(x2)	# 98
	sw		x5, -92(x2)	# 98
	addi	x5, x6, 0
	addi	x4, x7, 0
	sw		x1, -96(x2)	# 98
	addi	x2, x2, -100	# 98
	jal		x1, min_caml_create_array	# 98
	addi	x2, x2, 100	# 98
	lw		x1, -96(x2)	# 98
	addi	x5, x4, 0	# 98
	lw		x4, -92(x2)	# 98
	sw		x1, -96(x2)	# 98
	addi	x2, x2, -100	# 98
	jal		x1, min_caml_create_array	# 98
	addi	x2, x2, 100	# 98
	lw		x1, -96(x2)	# 98
	ori		x5, x0, 4	# 101
	lw		x6, -32(x2)	# 101
	mul		x5, x6, x5	# 101
	add		x5, x4, x5	# 101
	lw		x5, 0(x5)	# 101
	lw		x7, -28(x2)	# 101
	sw		x4, -96(x2)	# 101
	addi	x4, x7, 0
	sw		x1, -100(x2)	# 101
	addi	x2, x2, -104	# 101
	jal		x1, min_caml_create_array	# 101
	addi	x2, x2, 104	# 101
	lw		x1, -100(x2)	# 101
	addi	x5, x4, 0	# 101
	lw		x4, -28(x2)	# 101
	sw		x1, -100(x2)	# 101
	addi	x2, x2, -104	# 101
	jal		x1, min_caml_create_array	# 101
	addi	x2, x2, 104	# 101
	lw		x1, -100(x2)	# 101
	flw		f0, -40(x2)	# 106
	lw		x5, -28(x2)	# 106
	sw		x4, -100(x2)	# 106
	addi	x4, x5, 0
	sw		x1, -104(x2)	# 106
	addi	x2, x2, -108	# 106
	jal		x1, min_caml_create_float_array	# 106
	addi	x2, x2, 108	# 106
	lw		x1, -104(x2)	# 106
	lw		x5, -28(x2)	# 109
	lw		x6, -32(x2)	# 109
	sw		x4, -104(x2)	# 109
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -108(x2)	# 109
	addi	x2, x2, -112	# 109
	jal		x1, min_caml_create_array	# 109
	addi	x2, x2, 112	# 109
	lw		x1, -108(x2)	# 109
	lui		x5, %hi(l.12391)	# 112
	ori		x5, x0, %lo(l.12391)	# 112
	flw		f0, 0(x5)	# 112
	lw		x5, -28(x2)	# 112
	fsw		f0, -112(x2)	# 112
	sw		x4, -120(x2)	# 112
	addi	x4, x5, 0
	sw		x1, -124(x2)	# 112
	addi	x2, x2, -128	# 112
	jal		x1, min_caml_create_float_array	# 112
	addi	x2, x2, 128	# 112
	lw		x1, -124(x2)	# 112
	flw		f0, -40(x2)	# 115
	lw		x5, -56(x2)	# 115
	sw		x4, -124(x2)	# 115
	addi	x4, x5, 0
	sw		x1, -128(x2)	# 115
	addi	x2, x2, -132	# 115
	jal		x1, min_caml_create_float_array	# 115
	addi	x2, x2, 132	# 115
	lw		x1, -128(x2)	# 115
	lw		x5, -28(x2)	# 118
	lw		x6, -32(x2)	# 118
	sw		x4, -128(x2)	# 118
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -132(x2)	# 118
	addi	x2, x2, -136	# 118
	jal		x1, min_caml_create_array	# 118
	addi	x2, x2, 136	# 118
	lw		x1, -132(x2)	# 118
	flw		f0, -40(x2)	# 121
	lw		x5, -56(x2)	# 121
	sw		x4, -132(x2)	# 121
	addi	x4, x5, 0
	sw		x1, -136(x2)	# 121
	addi	x2, x2, -140	# 121
	jal		x1, min_caml_create_float_array	# 121
	addi	x2, x2, 140	# 121
	lw		x1, -136(x2)	# 121
	flw		f0, -40(x2)	# 124
	lw		x5, -56(x2)	# 124
	sw		x4, -136(x2)	# 124
	addi	x4, x5, 0
	sw		x1, -140(x2)	# 124
	addi	x2, x2, -144	# 124
	jal		x1, min_caml_create_float_array	# 124
	addi	x2, x2, 144	# 124
	lw		x1, -140(x2)	# 124
	flw		f0, -40(x2)	# 128
	lw		x5, -56(x2)	# 128
	sw		x4, -140(x2)	# 128
	addi	x4, x5, 0
	sw		x1, -144(x2)	# 128
	addi	x2, x2, -148	# 128
	jal		x1, min_caml_create_float_array	# 128
	addi	x2, x2, 148	# 128
	lw		x1, -144(x2)	# 128
	flw		f0, -40(x2)	# 131
	lw		x5, -56(x2)	# 131
	sw		x4, -144(x2)	# 131
	addi	x4, x5, 0
	sw		x1, -148(x2)	# 131
	addi	x2, x2, -152	# 131
	jal		x1, min_caml_create_float_array	# 131
	addi	x2, x2, 152	# 131
	lw		x1, -148(x2)	# 131
	ori		x5, x0, 2	# 135
	lw		x6, -32(x2)	# 135
	sw		x4, -148(x2)	# 135
	sw		x5, -152(x2)	# 135
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -156(x2)	# 135
	addi	x2, x2, -160	# 135
	jal		x1, min_caml_create_array	# 135
	addi	x2, x2, 160	# 135
	lw		x1, -156(x2)	# 135
	lw		x5, -152(x2)	# 138
	lw		x6, -32(x2)	# 138
	sw		x4, -156(x2)	# 138
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -160(x2)	# 138
	addi	x2, x2, -164	# 138
	jal		x1, min_caml_create_array	# 138
	addi	x2, x2, 164	# 138
	lw		x1, -160(x2)	# 138
	flw		f0, -40(x2)	# 141
	lw		x5, -28(x2)	# 141
	sw		x4, -160(x2)	# 141
	addi	x4, x5, 0
	sw		x1, -164(x2)	# 141
	addi	x2, x2, -168	# 141
	jal		x1, min_caml_create_float_array	# 141
	addi	x2, x2, 168	# 141
	lw		x1, -164(x2)	# 141
	flw		f0, -40(x2)	# 145
	lw		x5, -56(x2)	# 145
	sw		x4, -164(x2)	# 145
	addi	x4, x5, 0
	sw		x1, -168(x2)	# 145
	addi	x2, x2, -172	# 145
	jal		x1, min_caml_create_float_array	# 145
	addi	x2, x2, 172	# 145
	lw		x1, -168(x2)	# 145
	flw		f0, -40(x2)	# 148
	lw		x5, -56(x2)	# 148
	sw		x4, -168(x2)	# 148
	addi	x4, x5, 0
	sw		x1, -172(x2)	# 148
	addi	x2, x2, -176	# 148
	jal		x1, min_caml_create_float_array	# 148
	addi	x2, x2, 176	# 148
	lw		x1, -172(x2)	# 148
	flw		f0, -40(x2)	# 152
	lw		x5, -56(x2)	# 152
	sw		x4, -172(x2)	# 152
	addi	x4, x5, 0
	sw		x1, -176(x2)	# 152
	addi	x2, x2, -180	# 152
	jal		x1, min_caml_create_float_array	# 152
	addi	x2, x2, 180	# 152
	lw		x1, -176(x2)	# 152
	flw		f0, -40(x2)	# 154
	lw		x5, -56(x2)	# 154
	sw		x4, -176(x2)	# 154
	addi	x4, x5, 0
	sw		x1, -180(x2)	# 154
	addi	x2, x2, -184	# 154
	jal		x1, min_caml_create_float_array	# 154
	addi	x2, x2, 184	# 154
	lw		x1, -180(x2)	# 154
	flw		f0, -40(x2)	# 156
	lw		x5, -56(x2)	# 156
	sw		x4, -180(x2)	# 156
	addi	x4, x5, 0
	sw		x1, -184(x2)	# 156
	addi	x2, x2, -188	# 156
	jal		x1, min_caml_create_float_array	# 156
	addi	x2, x2, 188	# 156
	lw		x1, -184(x2)	# 156
	flw		f0, -40(x2)	# 160
	lw		x5, -56(x2)	# 160
	sw		x4, -184(x2)	# 160
	addi	x4, x5, 0
	sw		x1, -188(x2)	# 160
	addi	x2, x2, -192	# 160
	jal		x1, min_caml_create_float_array	# 160
	addi	x2, x2, 192	# 160
	lw		x1, -188(x2)	# 160
	flw		f0, -40(x2)	# 165
	lw		x5, -32(x2)	# 165
	sw		x4, -188(x2)	# 165
	addi	x4, x5, 0
	sw		x1, -192(x2)	# 165
	addi	x2, x2, -196	# 165
	jal		x1, min_caml_create_float_array	# 165
	addi	x2, x2, 196	# 165
	lw		x1, -192(x2)	# 165
	addi	x5, x4, 0	# 165
	lw		x4, -32(x2)	# 166
	sw		x5, -192(x2)	# 166
	sw		x1, -196(x2)	# 166
	addi	x2, x2, -200	# 166
	jal		x1, min_caml_create_array	# 166
	addi	x2, x2, 200	# 166
	lw		x1, -196(x2)	# 166
	addi	x5, x3, 0	# 167
	addi	x3, x3, 8	# 167
	sw		x4, 4(x5)	# 167
	lw		x4, -192(x2)	# 167
	sw		x4, 0(x5)	# 167
	lw		x4, -32(x2)	# 167
	sw		x1, -196(x2)	# 167
	addi	x2, x2, -200	# 167
	jal		x1, min_caml_create_array	# 167
	addi	x2, x2, 200	# 167
	lw		x1, -196(x2)	# 167
	addi	x5, x4, 0	# 167
	ori		x4, x0, 5	# 168
	sw		x4, -196(x2)	# 168
	sw		x1, -200(x2)	# 168
	addi	x2, x2, -204	# 168
	jal		x1, min_caml_create_array	# 168
	addi	x2, x2, 204	# 168
	lw		x1, -200(x2)	# 168
	flw		f0, -40(x2)	# 173
	lw		x5, -32(x2)	# 173
	sw		x4, -200(x2)	# 173
	addi	x4, x5, 0
	sw		x1, -204(x2)	# 173
	addi	x2, x2, -208	# 173
	jal		x1, min_caml_create_float_array	# 173
	addi	x2, x2, 208	# 173
	lw		x1, -204(x2)	# 173
	flw		f0, -40(x2)	# 174
	lw		x5, -56(x2)	# 174
	sw		x4, -204(x2)	# 174
	addi	x4, x5, 0
	sw		x1, -208(x2)	# 174
	addi	x2, x2, -212	# 174
	jal		x1, min_caml_create_float_array	# 174
	addi	x2, x2, 212	# 174
	lw		x1, -208(x2)	# 174
	lw		x5, -48(x2)	# 175
	lw		x6, -204(x2)	# 175
	sw		x4, -208(x2)	# 175
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -212(x2)	# 175
	addi	x2, x2, -216	# 175
	jal		x1, min_caml_create_array	# 175
	addi	x2, x2, 216	# 175
	lw		x1, -212(x2)	# 175
	addi	x5, x3, 0	# 176
	addi	x3, x3, 8	# 176
	sw		x4, 4(x5)	# 176
	lw		x4, -208(x2)	# 176
	sw		x4, 0(x5)	# 176
	flw		f0, -40(x2)	# 181
	lw		x6, -32(x2)	# 181
	sw		x5, -212(x2)	# 181
	addi	x4, x6, 0
	sw		x1, -216(x2)	# 181
	addi	x2, x2, -220	# 181
	jal		x1, min_caml_create_float_array	# 181
	addi	x2, x2, 220	# 181
	lw		x1, -216(x2)	# 181
	addi	x5, x4, 0	# 181
	lw		x4, -32(x2)	# 182
	sw		x5, -216(x2)	# 182
	sw		x1, -220(x2)	# 182
	addi	x2, x2, -224	# 182
	jal		x1, min_caml_create_array	# 182
	addi	x2, x2, 224	# 182
	lw		x1, -220(x2)	# 182
	addi	x5, x3, 0	# 183
	addi	x3, x3, 8	# 183
	sw		x4, 4(x5)	# 183
	lw		x4, -216(x2)	# 183
	sw		x4, 0(x5)	# 183
	addi	x4, x5, 0	# 183
	ori		x5, x0, 180	# 184
	addi	x6, x3, 0	# 184
	addi	x3, x3, 12	# 184
	flw		f0, -40(x2)	# 184
	fsw		f0, 8(x6)	# 184
	sw		x4, 4(x6)	# 184
	lw		x4, -32(x2)	# 184
	sw		x4, 0(x6)	# 184
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -220(x2)	# 184
	addi	x2, x2, -224	# 184
	jal		x1, min_caml_create_array	# 184
	addi	x2, x2, 224	# 184
	lw		x1, -220(x2)	# 184
	lw		x5, -28(x2)	# 188
	lw		x6, -32(x2)	# 188
	sw		x4, -220(x2)	# 188
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -224(x2)	# 188
	addi	x2, x2, -228	# 188
	jal		x1, min_caml_create_array	# 188
	addi	x2, x2, 228	# 188
	lw		x1, -224(x2)	# 188
	addi	x5, x3, 0	# 282
	addi	x3, x3, 20	# 282
	lui		x6, %hi(vecunit_sgn.2565)	# 282
	ori		x6, x0, %lo(vecunit_sgn.2565)	# 282
	sw		x6, 0(x5)	# 291
	lw		x6, -152(x2)	# 291
	sw		x6, 16(x5)	# 291
	lw		x7, -32(x2)	# 291
	sw		x7, 12(x5)	# 291
	lw		x8, -28(x2)	# 291
	sw		x8, 8(x5)	# 291
	flw		f0, -40(x2)	# 291
	fsw		f0, 4(x5)	# 291
	addi	x9, x3, 0	# 291
	addi	x3, x3, 16	# 291
	lui		x10, %hi(veciprod.2568)	# 291
	ori		x10, x0, %lo(veciprod.2568)	# 291
	sw		x10, 0(x9)	# 301
	sw		x6, 12(x9)	# 301
	sw		x7, 8(x9)	# 301
	sw		x8, 4(x9)	# 301
	addi	x10, x3, 0	# 301
	addi	x3, x3, 16	# 301
	lui		x11, %hi(vecaccum.2576)	# 301
	ori		x11, x0, %lo(vecaccum.2576)	# 301
	sw		x11, 0(x10)	# 308
	sw		x6, 12(x10)	# 308
	sw		x7, 8(x10)	# 308
	sw		x8, 4(x10)	# 308
	addi	x11, x3, 0	# 308
	addi	x3, x3, 16	# 308
	lui		x12, %hi(vecadd.2580)	# 308
	ori		x12, x0, %lo(vecadd.2580)	# 308
	sw		x12, 0(x11)	# 331
	sw		x6, 12(x11)	# 331
	sw		x7, 8(x11)	# 331
	sw		x8, 4(x11)	# 331
	addi	x12, x3, 0	# 331
	addi	x3, x3, 16	# 331
	lui		x13, %hi(vecaccumv.2586)	# 331
	ori		x13, x0, %lo(vecaccumv.2586)	# 331
	sw		x13, 0(x12)	# 681
	sw		x6, 12(x12)	# 681
	sw		x7, 8(x12)	# 681
	sw		x8, 4(x12)	# 681
	addi	x13, x3, 0	# 681
	addi	x3, x3, 56	# 681
	lui		x14, %hi(read_screen_settings.2663)	# 681
	ori		x14, x0, %lo(read_screen_settings.2663)	# 681
	sw		x14, 0(x13)	# 714
	lw		x14, -64(x2)	# 714
	sw		x14, 52(x13)	# 714
	lw		x15, -24(x2)	# 714
	sw		x15, 48(x13)	# 714
	lw		x16, -184(x2)	# 714
	sw		x16, 44(x13)	# 714
	lw		x17, -180(x2)	# 714
	sw		x17, 40(x13)	# 714
	lw		x18, -176(x2)	# 714
	sw		x18, 36(x13)	# 714
	lw		x19, -60(x2)	# 714
	sw		x19, 32(x13)	# 714
	flw		f1, -16(x2)	# 714
	fsw		f1, 28(x13)	# 714
	flw		f2, -8(x2)	# 714
	fsw		f2, 24(x13)	# 714
	lw		x19, -4(x2)	# 714
	sw		x19, 20(x13)	# 714
	sw		x6, 16(x13)	# 714
	sw		x7, 12(x13)	# 714
	sw		x8, 8(x13)	# 714
	fsw		f0, 4(x13)	# 714
	addi	x20, x3, 0	# 714
	addi	x3, x3, 44	# 714
	lui		x21, %hi(read_light.2665)	# 714
	ori		x21, x0, %lo(read_light.2665)	# 714
	sw		x21, 0(x20)	# 736
	sw		x15, 40(x20)	# 736
	fsw		f1, 36(x20)	# 736
	fsw		f2, 32(x20)	# 736
	lw		x21, -80(x2)	# 736
	sw		x21, 28(x20)	# 736
	sw		x19, 24(x20)	# 736
	lw		x22, -88(x2)	# 736
	sw		x22, 20(x20)	# 736
	sw		x6, 16(x20)	# 736
	sw		x7, 12(x20)	# 736
	sw		x8, 8(x20)	# 736
	fsw		f0, 4(x20)	# 736
	addi	x23, x3, 0	# 736
	addi	x3, x3, 36	# 736
	lui		x24, %hi(rotate_quadratic_matrix.2667)	# 736
	ori		x24, x0, %lo(rotate_quadratic_matrix.2667)	# 736
	sw		x24, 0(x23)	# 777
	sw		x15, 32(x23)	# 777
	fsw		f1, 28(x23)	# 777
	fsw		f2, 24(x23)	# 777
	sw		x19, 20(x23)	# 777
	sw		x6, 16(x23)	# 777
	sw		x7, 12(x23)	# 777
	sw		x8, 8(x23)	# 777
	fsw		f0, 4(x23)	# 777
	addi	x24, x3, 0	# 777
	addi	x3, x3, 40	# 777
	lui		x25, %hi(read_nth_object.2670)	# 777
	ori		x25, x0, %lo(read_nth_object.2670)	# 777
	sw		x25, 0(x24)	# 860
	sw		x5, 36(x24)	# 860
	sw		x23, 32(x24)	# 860
	lw		x23, -52(x2)	# 860
	sw		x23, 28(x24)	# 860
	sw		x6, 24(x24)	# 860
	lw		x25, -84(x2)	# 860
	sw		x25, 20(x24)	# 860
	lw		x26, -56(x2)	# 860
	sw		x26, 16(x24)	# 860
	sw		x7, 12(x24)	# 860
	sw		x8, 8(x24)	# 860
	fsw		f0, 4(x24)	# 860
	addi	x27, x3, 0	# 860
	addi	x3, x3, 24	# 860
	lui		x31, %hi(read_object.2672)	# 860
	ori		x31, x0, %lo(read_object.2672)	# 860
	sw		x31, 0(x27)	# 876
	sw		x24, 20(x27)	# 876
	lw		x24, -36(x2)	# 876
	sw		x24, 16(x27)	# 876
	lw		x31, -48(x2)	# 876
	sw		x31, 12(x27)	# 876
	sw		x7, 8(x27)	# 876
	sw		x8, 4(x27)	# 876
	addi	x31, x3, 0	# 876
	addi	x3, x3, 12	# 876
	sw		x20, -224(x2)	# 876
	lui		x20, %hi(read_net_item.2676)	# 876
	ori		x20, x0, %lo(read_net_item.2676)	# 876
	sw		x20, 0(x31)	# 884
	sw		x25, 8(x31)	# 884
	sw		x8, 4(x31)	# 884
	addi	x20, x3, 0	# 884
	addi	x3, x3, 20	# 884
	sw		x27, -228(x2)	# 884
	lui		x27, %hi(read_or_network.2678)	# 884
	ori		x27, x0, %lo(read_or_network.2678)	# 884
	sw		x27, 0(x20)	# 893
	sw		x31, 16(x20)	# 893
	sw		x25, 12(x20)	# 893
	sw		x7, 8(x20)	# 893
	sw		x8, 4(x20)	# 893
	addi	x27, x3, 0	# 893
	addi	x3, x3, 24	# 893
	sw		x20, -232(x2)	# 893
	lui		x20, %hi(read_and_network.2680)	# 893
	ori		x20, x0, %lo(read_and_network.2680)	# 893
	sw		x20, 0(x27)	# 927
	sw		x31, 20(x27)	# 927
	lw		x20, -96(x2)	# 927
	sw		x20, 16(x27)	# 927
	sw		x25, 12(x27)	# 927
	sw		x7, 8(x27)	# 927
	sw		x8, 4(x27)	# 927
	addi	x31, x3, 0	# 927
	addi	x3, x3, 16	# 927
	sw		x27, -236(x2)	# 927
	lui		x27, %hi(solver_rect_surface.2684)	# 927
	ori		x27, x0, %lo(solver_rect_surface.2684)	# 927
	sw		x27, 0(x31)	# 965
	lw		x27, -104(x2)	# 965
	sw		x27, 12(x31)	# 965
	sw		x7, 8(x31)	# 965
	fsw		f0, 4(x31)	# 965
	sw		x13, -240(x2)	# 965
	addi	x13, x3, 0	# 965
	addi	x3, x3, 16	# 965
	lui		x17, %hi(quadratic.2705)	# 965
	ori		x17, x0, %lo(quadratic.2705)	# 965
	sw		x17, 0(x13)	# 980
	sw		x6, 12(x13)	# 980
	sw		x7, 8(x13)	# 980
	sw		x8, 4(x13)	# 980
	addi	x17, x3, 0	# 980
	addi	x3, x3, 16	# 980
	lui		x16, %hi(bilinear.2710)	# 980
	ori		x16, x0, %lo(bilinear.2710)	# 980
	sw		x16, 0(x17)	# 1002
	sw		x6, 12(x17)	# 1002
	sw		x7, 8(x17)	# 1002
	sw		x8, 4(x17)	# 1002
	addi	x16, x3, 0	# 1002
	addi	x3, x3, 36	# 1002
	lui		x18, %hi(solver_second.2718)	# 1002
	ori		x18, x0, %lo(solver_second.2718)	# 1002
	sw		x18, 0(x16)	# 1031
	sw		x27, 32(x16)	# 1031
	sw		x13, 28(x16)	# 1031
	sw		x17, 24(x16)	# 1031
	sw		x6, 20(x16)	# 1031
	sw		x26, 16(x16)	# 1031
	sw		x7, 12(x16)	# 1031
	sw		x8, 8(x16)	# 1031
	fsw		f0, 4(x16)	# 1031
	addi	x17, x3, 0	# 1031
	addi	x3, x3, 40	# 1031
	lui		x18, %hi(solver.2724)	# 1031
	ori		x18, x0, %lo(solver.2724)	# 1031
	sw		x18, 0(x17)	# 1063
	sw		x9, 36(x17)	# 1063
	sw		x16, 32(x17)	# 1063
	sw		x31, 28(x17)	# 1063
	sw		x27, 24(x17)	# 1063
	sw		x23, 20(x17)	# 1063
	sw		x6, 16(x17)	# 1063
	sw		x7, 12(x17)	# 1063
	sw		x8, 8(x17)	# 1063
	fsw		f0, 4(x17)	# 1063
	addi	x16, x3, 0	# 1063
	addi	x3, x3, 32	# 1063
	lui		x18, %hi(solver_rect_fast.2728)	# 1063
	ori		x18, x0, %lo(solver_rect_fast.2728)	# 1063
	sw		x18, 0(x16)	# 1096
	sw		x27, 28(x16)	# 1096
	lw		x18, -196(x2)	# 1096
	sw		x18, 24(x16)	# 1096
	sw		x6, 20(x16)	# 1096
	sw		x26, 16(x16)	# 1096
	sw		x7, 12(x16)	# 1096
	sw		x8, 8(x16)	# 1096
	fsw		f0, 4(x16)	# 1096
	addi	x31, x3, 0	# 1096
	addi	x3, x3, 28	# 1096
	lui		x14, %hi(solver_surface_fast.2735)	# 1096
	ori		x14, x0, %lo(solver_surface_fast.2735)	# 1096
	sw		x14, 0(x31)	# 1105
	sw		x27, 24(x31)	# 1105
	sw		x6, 20(x31)	# 1105
	sw		x26, 16(x31)	# 1105
	sw		x7, 12(x31)	# 1105
	sw		x8, 8(x31)	# 1105
	fsw		f0, 4(x31)	# 1105
	addi	x14, x3, 0	# 1105
	addi	x3, x3, 32	# 1105
	sw		x11, -244(x2)	# 1105
	lui		x11, %hi(solver_second_fast.2741)	# 1105
	ori		x11, x0, %lo(solver_second_fast.2741)	# 1105
	sw		x11, 0(x14)	# 1125
	sw		x27, 28(x14)	# 1125
	sw		x13, 24(x14)	# 1125
	sw		x6, 20(x14)	# 1125
	sw		x26, 16(x14)	# 1125
	sw		x7, 12(x14)	# 1125
	sw		x8, 8(x14)	# 1125
	fsw		f0, 4(x14)	# 1125
	addi	x11, x3, 0	# 1125
	addi	x3, x3, 32	# 1125
	sw		x12, -248(x2)	# 1125
	lui		x12, %hi(solver_fast.2747)	# 1125
	ori		x12, x0, %lo(solver_fast.2747)	# 1125
	sw		x12, 0(x11)	# 1153
	sw		x31, 28(x11)	# 1153
	sw		x14, 24(x11)	# 1153
	sw		x16, 20(x11)	# 1153
	sw		x23, 16(x11)	# 1153
	sw		x6, 12(x11)	# 1153
	sw		x7, 8(x11)	# 1153
	sw		x8, 4(x11)	# 1153
	addi	x12, x3, 0	# 1153
	addi	x3, x3, 28	# 1153
	lui		x14, %hi(solver_second_fast2.2758)	# 1153
	ori		x14, x0, %lo(solver_second_fast2.2758)	# 1153
	sw		x14, 0(x12)	# 1172
	sw		x27, 24(x12)	# 1172
	sw		x6, 20(x12)	# 1172
	sw		x26, 16(x12)	# 1172
	sw		x7, 12(x12)	# 1172
	sw		x8, 8(x12)	# 1172
	fsw		f0, 4(x12)	# 1172
	addi	x14, x3, 0	# 1172
	addi	x3, x3, 40	# 1172
	lui		x31, %hi(solver_fast2.2765)	# 1172
	ori		x31, x0, %lo(solver_fast2.2765)	# 1172
	sw		x31, 0(x14)	# 1194
	sw		x12, 36(x14)	# 1194
	sw		x16, 32(x14)	# 1194
	sw		x27, 28(x14)	# 1194
	sw		x23, 24(x14)	# 1194
	sw		x6, 20(x14)	# 1194
	sw		x26, 16(x14)	# 1194
	sw		x7, 12(x14)	# 1194
	sw		x8, 8(x14)	# 1194
	fsw		f0, 4(x14)	# 1194
	addi	x12, x3, 0	# 1194
	addi	x3, x3, 20	# 1194
	lui		x16, %hi(setup_rect_table.2768)	# 1194
	ori		x16, x0, %lo(setup_rect_table.2768)	# 1194
	sw		x16, 0(x12)	# 1221
	sw		x6, 16(x12)	# 1221
	sw		x7, 12(x12)	# 1221
	sw		x8, 8(x12)	# 1221
	fsw		f0, 4(x12)	# 1221
	addi	x16, x3, 0	# 1221
	addi	x3, x3, 20	# 1221
	lui		x31, %hi(setup_surface_table.2771)	# 1221
	ori		x31, x0, %lo(setup_surface_table.2771)	# 1221
	sw		x31, 0(x16)	# 1240
	sw		x6, 16(x16)	# 1240
	sw		x7, 12(x16)	# 1240
	sw		x8, 8(x16)	# 1240
	fsw		f0, 4(x16)	# 1240
	addi	x31, x3, 0	# 1240
	addi	x3, x3, 28	# 1240
	lui		x22, %hi(setup_second_table.2774)	# 1240
	ori		x22, x0, %lo(setup_second_table.2774)	# 1240
	sw		x22, 0(x31)	# 1269
	sw		x13, 24(x31)	# 1269
	sw		x18, 20(x31)	# 1269
	sw		x6, 16(x31)	# 1269
	sw		x7, 12(x31)	# 1269
	sw		x8, 8(x31)	# 1269
	fsw		f0, 4(x31)	# 1269
	addi	x22, x3, 0	# 1269
	addi	x3, x3, 28	# 1269
	lui		x18, %hi(iter_setup_dirvec_constants.2777)	# 1269
	ori		x18, x0, %lo(iter_setup_dirvec_constants.2777)	# 1269
	sw		x18, 0(x22)	# 1294
	sw		x16, 24(x22)	# 1294
	sw		x31, 20(x22)	# 1294
	sw		x12, 16(x22)	# 1294
	sw		x23, 12(x22)	# 1294
	sw		x7, 8(x22)	# 1294
	sw		x8, 4(x22)	# 1294
	addi	x12, x3, 0	# 1294
	addi	x3, x3, 24	# 1294
	lui		x16, %hi(setup_startp_constants.2782)	# 1294
	ori		x16, x0, %lo(setup_startp_constants.2782)	# 1294
	sw		x16, 0(x12)	# 1325
	sw		x13, 20(x12)	# 1325
	sw		x23, 16(x12)	# 1325
	sw		x6, 12(x12)	# 1325
	sw		x7, 8(x12)	# 1325
	sw		x8, 4(x12)	# 1325
	addi	x16, x3, 0	# 1325
	addi	x3, x3, 20	# 1325
	lui		x18, %hi(is_rect_outside.2787)	# 1325
	ori		x18, x0, %lo(is_rect_outside.2787)	# 1325
	sw		x18, 0(x16)	# 1342
	sw		x6, 16(x16)	# 1342
	sw		x7, 12(x16)	# 1342
	sw		x8, 8(x16)	# 1342
	fsw		f0, 4(x16)	# 1342
	addi	x18, x3, 0	# 1342
	addi	x3, x3, 20	# 1342
	lui		x31, %hi(is_second_outside.2797)	# 1342
	ori		x31, x0, %lo(is_second_outside.2797)	# 1342
	sw		x31, 0(x18)	# 1349
	sw		x13, 16(x18)	# 1349
	sw		x26, 12(x18)	# 1349
	sw		x7, 8(x18)	# 1349
	fsw		f0, 4(x18)	# 1349
	addi	x13, x3, 0	# 1349
	addi	x3, x3, 28	# 1349
	lui		x31, %hi(is_outside.2802)	# 1349
	ori		x31, x0, %lo(is_outside.2802)	# 1349
	sw		x31, 0(x13)	# 1363
	sw		x18, 24(x13)	# 1363
	sw		x16, 20(x13)	# 1363
	sw		x6, 16(x13)	# 1363
	sw		x7, 12(x13)	# 1363
	sw		x8, 8(x13)	# 1363
	fsw		f0, 4(x13)	# 1363
	addi	x16, x3, 0	# 1363
	addi	x3, x3, 24	# 1363
	lui		x18, %hi(check_all_inside.2807)	# 1363
	ori		x18, x0, %lo(check_all_inside.2807)	# 1363
	sw		x18, 0(x16)	# 1383
	sw		x23, 20(x16)	# 1383
	sw		x13, 16(x16)	# 1383
	sw		x25, 12(x16)	# 1383
	sw		x7, 8(x16)	# 1383
	sw		x8, 4(x16)	# 1383
	addi	x18, x3, 0	# 1383
	addi	x3, x3, 52	# 1383
	lui		x31, %hi(shadow_check_and_group.2813)	# 1383
	ori		x31, x0, %lo(shadow_check_and_group.2813)	# 1383
	sw		x31, 0(x18)	# 1413
	sw		x11, 48(x18)	# 1413
	sw		x27, 44(x18)	# 1413
	sw		x23, 40(x18)	# 1413
	lw		x31, -212(x2)	# 1413
	sw		x31, 36(x18)	# 1413
	sw		x21, 32(x18)	# 1413
	sw		x13, 28(x18)	# 1413
	sw		x22, -252(x2)	# 1413
	lw		x22, -128(x2)	# 1413
	sw		x22, 24(x18)	# 1413
	sw		x16, 20(x18)	# 1413
	sw		x6, 16(x18)	# 1413
	sw		x25, 12(x18)	# 1413
	sw		x7, 8(x18)	# 1413
	sw		x8, 4(x18)	# 1413
	addi	x21, x3, 0	# 1413
	addi	x3, x3, 24	# 1413
	lui		x24, %hi(shadow_check_one_or_group.2816)	# 1413
	ori		x24, x0, %lo(shadow_check_one_or_group.2816)	# 1413
	sw		x24, 0(x21)	# 1428
	sw		x18, 20(x21)	# 1428
	sw		x20, 16(x21)	# 1428
	sw		x25, 12(x21)	# 1428
	sw		x7, 8(x21)	# 1428
	sw		x8, 4(x21)	# 1428
	addi	x24, x3, 0	# 1428
	addi	x3, x3, 44	# 1428
	sw		x4, -256(x2)	# 1428
	lui		x4, %hi(shadow_check_one_or_matrix.2819)	# 1428
	ori		x4, x0, %lo(shadow_check_one_or_matrix.2819)	# 1428
	sw		x4, 0(x24)	# 1464
	sw		x11, 40(x24)	# 1464
	sw		x27, 36(x24)	# 1464
	sw		x21, 32(x24)	# 1464
	sw		x18, 28(x24)	# 1464
	sw		x31, 24(x24)	# 1464
	sw		x22, 20(x24)	# 1464
	sw		x20, 16(x24)	# 1464
	sw		x25, 12(x24)	# 1464
	sw		x7, 8(x24)	# 1464
	sw		x8, 4(x24)	# 1464
	addi	x4, x3, 0	# 1464
	addi	x3, x3, 60	# 1464
	lui		x11, %hi(solve_each_element.2822)	# 1464
	ori		x11, x0, %lo(solve_each_element.2822)	# 1464
	sw		x11, 0(x4)	# 1505
	lw		x11, -124(x2)	# 1505
	sw		x11, 56(x4)	# 1505
	lw		x18, -168(x2)	# 1505
	sw		x18, 52(x4)	# 1505
	sw		x27, 48(x4)	# 1505
	sw		x17, 44(x4)	# 1505
	sw		x23, 40(x4)	# 1505
	sw		x13, 36(x4)	# 1505
	lw		x21, -120(x2)	# 1505
	sw		x21, 32(x4)	# 1505
	sw		x22, 28(x4)	# 1505
	lw		x31, -132(x2)	# 1505
	sw		x31, 24(x4)	# 1505
	sw		x16, 20(x4)	# 1505
	sw		x25, 16(x4)	# 1505
	sw		x7, 12(x4)	# 1505
	sw		x8, 8(x4)	# 1505
	fsw		f0, 4(x4)	# 1505
	sw		x12, -260(x2)	# 1505
	addi	x12, x3, 0	# 1505
	addi	x3, x3, 24	# 1505
	sw		x24, -264(x2)	# 1505
	lui		x24, %hi(solve_one_or_network.2826)	# 1505
	ori		x24, x0, %lo(solve_one_or_network.2826)	# 1505
	sw		x24, 0(x12)	# 1515
	sw		x4, 20(x12)	# 1515
	sw		x20, 16(x12)	# 1515
	sw		x25, 12(x12)	# 1515
	sw		x7, 8(x12)	# 1515
	sw		x8, 4(x12)	# 1515
	addi	x24, x3, 0	# 1515
	addi	x3, x3, 44	# 1515
	sw		x9, -268(x2)	# 1515
	lui		x9, %hi(trace_or_matrix.2830)	# 1515
	ori		x9, x0, %lo(trace_or_matrix.2830)	# 1515
	sw		x9, 0(x24)	# 1542
	sw		x11, 40(x24)	# 1542
	sw		x18, 36(x24)	# 1542
	sw		x27, 32(x24)	# 1542
	sw		x17, 28(x24)	# 1542
	sw		x12, 24(x24)	# 1542
	sw		x4, 20(x24)	# 1542
	sw		x20, 16(x24)	# 1542
	sw		x25, 12(x24)	# 1542
	sw		x7, 8(x24)	# 1542
	sw		x8, 4(x24)	# 1542
	addi	x4, x3, 0	# 1542
	addi	x3, x3, 24	# 1542
	lui		x9, %hi(judge_intersection.2834)	# 1542
	ori		x9, x0, %lo(judge_intersection.2834)	# 1542
	sw		x9, 0(x4)	# 1557
	sw		x24, 20(x4)	# 1557
	sw		x11, 16(x4)	# 1557
	lw		x9, -100(x2)	# 1557
	sw		x9, 12(x4)	# 1557
	sw		x7, 8(x4)	# 1557
	flw		f3, -112(x2)	# 1557
	fsw		f3, 4(x4)	# 1557
	addi	x12, x3, 0	# 1557
	addi	x3, x3, 60	# 1557
	lui		x17, %hi(solve_each_element_fast.2836)	# 1557
	ori		x17, x0, %lo(solve_each_element_fast.2836)	# 1557
	sw		x17, 0(x12)	# 1598
	sw		x11, 56(x12)	# 1598
	lw		x17, -172(x2)	# 1598
	sw		x17, 52(x12)	# 1598
	sw		x14, 48(x12)	# 1598
	sw		x27, 44(x12)	# 1598
	sw		x23, 40(x12)	# 1598
	sw		x13, 36(x12)	# 1598
	sw		x21, 32(x12)	# 1598
	sw		x22, 28(x12)	# 1598
	sw		x31, 24(x12)	# 1598
	sw		x16, 20(x12)	# 1598
	sw		x25, 16(x12)	# 1598
	sw		x7, 12(x12)	# 1598
	sw		x8, 8(x12)	# 1598
	fsw		f0, 4(x12)	# 1598
	addi	x13, x3, 0	# 1598
	addi	x3, x3, 24	# 1598
	lui		x16, %hi(solve_one_or_network_fast.2840)	# 1598
	ori		x16, x0, %lo(solve_one_or_network_fast.2840)	# 1598
	sw		x16, 0(x13)	# 1608
	sw		x12, 20(x13)	# 1608
	sw		x20, 16(x13)	# 1608
	sw		x25, 12(x13)	# 1608
	sw		x7, 8(x13)	# 1608
	sw		x8, 4(x13)	# 1608
	addi	x16, x3, 0	# 1608
	addi	x3, x3, 40	# 1608
	lui		x24, %hi(trace_or_matrix_fast.2844)	# 1608
	ori		x24, x0, %lo(trace_or_matrix_fast.2844)	# 1608
	sw		x24, 0(x16)	# 1632
	sw		x11, 36(x16)	# 1632
	sw		x14, 32(x16)	# 1632
	sw		x27, 28(x16)	# 1632
	sw		x13, 24(x16)	# 1632
	sw		x12, 20(x16)	# 1632
	sw		x20, 16(x16)	# 1632
	sw		x25, 12(x16)	# 1632
	sw		x7, 8(x16)	# 1632
	sw		x8, 4(x16)	# 1632
	addi	x12, x3, 0	# 1632
	addi	x3, x3, 24	# 1632
	lui		x13, %hi(judge_intersection_fast.2848)	# 1632
	ori		x13, x0, %lo(judge_intersection_fast.2848)	# 1632
	sw		x13, 0(x12)	# 1653
	sw		x16, 20(x12)	# 1653
	sw		x11, 16(x12)	# 1653
	sw		x9, 12(x12)	# 1653
	sw		x7, 8(x12)	# 1653
	fsw		f3, 4(x12)	# 1653
	addi	x13, x3, 0	# 1653
	addi	x3, x3, 28	# 1653
	lui		x14, %hi(get_nvector_rect.2850)	# 1653
	ori		x14, x0, %lo(get_nvector_rect.2850)	# 1653
	sw		x14, 0(x13)	# 1669
	lw		x14, -136(x2)	# 1669
	sw		x14, 24(x13)	# 1669
	sw		x21, 20(x13)	# 1669
	sw		x6, 16(x13)	# 1669
	sw		x7, 12(x13)	# 1669
	sw		x8, 8(x13)	# 1669
	fsw		f0, 4(x13)	# 1669
	addi	x16, x3, 0	# 1669
	addi	x3, x3, 28	# 1669
	lui		x20, %hi(get_nvector_second.2854)	# 1669
	ori		x20, x0, %lo(get_nvector_second.2854)	# 1669
	sw		x20, 0(x16)	# 1707
	sw		x5, 24(x16)	# 1707
	sw		x14, 20(x16)	# 1707
	sw		x22, 16(x16)	# 1707
	sw		x6, 12(x16)	# 1707
	sw		x7, 8(x16)	# 1707
	sw		x8, 4(x16)	# 1707
	addi	x20, x3, 0	# 1707
	addi	x3, x3, 52	# 1707
	lui		x24, %hi(utexture.2859)	# 1707
	ori		x24, x0, %lo(utexture.2859)	# 1707
	sw		x24, 0(x20)	# 1785
	lw		x24, -140(x2)	# 1785
	sw		x24, 48(x20)	# 1785
	sw		x15, 44(x20)	# 1785
	fsw		f1, 40(x20)	# 1785
	fsw		f2, 36(x20)	# 1785
	sw		x19, 32(x20)	# 1785
	lw		x27, 0(x2)	# 1785
	sw		x27, 28(x20)	# 1785
	sw		x6, 24(x20)	# 1785
	sw		x26, 20(x20)	# 1785
	sw		x7, 16(x20)	# 1785
	sw		x8, 12(x20)	# 1785
	flw		f3, -72(x2)	# 1785
	fsw		f3, 8(x20)	# 1785
	fsw		f0, 4(x20)	# 1785
	addi	x27, x3, 0	# 1785
	addi	x3, x3, 32	# 1785
	lui		x19, %hi(add_light.2862)	# 1785
	ori		x19, x0, %lo(add_light.2862)	# 1785
	sw		x19, 0(x27)	# 1802
	sw		x10, 28(x27)	# 1802
	sw		x24, 24(x27)	# 1802
	lw		x19, -148(x2)	# 1802
	sw		x19, 20(x27)	# 1802
	sw		x6, 16(x27)	# 1802
	sw		x7, 12(x27)	# 1802
	sw		x8, 8(x27)	# 1802
	fsw		f0, 4(x27)	# 1802
	addi	x15, x3, 0	# 1802
	addi	x3, x3, 48	# 1802
	sw		x5, -272(x2)	# 1802
	lui		x5, %hi(trace_reflections.2866)	# 1802
	ori		x5, x0, %lo(trace_reflections.2866)	# 1802
	sw		x5, 0(x15)	# 1831
	lw		x5, -268(x2)	# 1831
	sw		x5, 44(x15)	# 1831
	lw		x26, -264(x2)	# 1831
	sw		x26, 40(x15)	# 1831
	lw		x25, -220(x2)	# 1831
	sw		x25, 36(x15)	# 1831
	sw		x9, 32(x15)	# 1831
	sw		x14, 28(x15)	# 1831
	sw		x12, 24(x15)	# 1831
	sw		x21, 20(x15)	# 1831
	sw		x31, 16(x15)	# 1831
	sw		x27, 12(x15)	# 1831
	sw		x7, 8(x15)	# 1831
	sw		x8, 4(x15)	# 1831
	addi	x25, x3, 0	# 1831
	addi	x3, x3, 124	# 1831
	sw		x12, -276(x2)	# 1831
	lui		x12, %hi(trace_ray.2871)	# 1831
	ori		x12, x0, %lo(trace_ray.2871)	# 1831
	sw		x12, 0(x25)	# 1924
	sw		x5, 120(x25)	# 1924
	sw		x10, 116(x25)	# 1924
	sw		x20, 112(x25)	# 1924
	sw		x15, 108(x25)	# 1924
	sw		x11, 104(x25)	# 1924
	sw		x24, 100(x25)	# 1924
	sw		x17, 96(x25)	# 1924
	sw		x18, 92(x25)	# 1924
	sw		x26, 88(x25)	# 1924
	lw		x11, -260(x2)	# 1924
	sw		x11, 84(x25)	# 1924
	sw		x19, 80(x25)	# 1924
	sw		x9, 76(x25)	# 1924
	sw		x23, 72(x25)	# 1924
	sw		x14, 68(x25)	# 1924
	lw		x12, -256(x2)	# 1924
	sw		x12, 64(x25)	# 1924
	lw		x15, -36(x2)	# 1924
	sw		x15, 60(x25)	# 1924
	lw		x12, -80(x2)	# 1924
	sw		x12, 56(x25)	# 1924
	sw		x4, 52(x25)	# 1924
	sw		x21, 48(x25)	# 1924
	sw		x22, 44(x25)	# 1924
	sw		x31, 40(x25)	# 1924
	sw		x16, 36(x25)	# 1924
	sw		x13, 32(x25)	# 1924
	lw		x4, -88(x2)	# 1924
	sw		x4, 28(x25)	# 1924
	sw		x27, 24(x25)	# 1924
	sw		x6, 20(x25)	# 1924
	lw		x4, -84(x2)	# 1924
	sw		x4, 16(x25)	# 1924
	sw		x7, 12(x25)	# 1924
	sw		x8, 8(x25)	# 1924
	fsw		f0, 4(x25)	# 1924
	addi	x4, x3, 0	# 1924
	addi	x3, x3, 80	# 1924
	lui		x21, %hi(trace_diffuse_ray.2877)	# 1924
	ori		x21, x0, %lo(trace_diffuse_ray.2877)	# 1924
	sw		x21, 0(x4)	# 1943
	sw		x5, 76(x4)	# 1943
	sw		x10, 72(x4)	# 1943
	sw		x20, 68(x4)	# 1943
	sw		x24, 64(x4)	# 1943
	sw		x26, 60(x4)	# 1943
	sw		x9, 56(x4)	# 1943
	sw		x23, 52(x4)	# 1943
	sw		x14, 48(x4)	# 1943
	sw		x12, 44(x4)	# 1943
	lw		x10, -276(x2)	# 1943
	sw		x10, 40(x4)	# 1943
	sw		x22, 36(x4)	# 1943
	sw		x31, 32(x4)	# 1943
	sw		x16, 28(x4)	# 1943
	sw		x13, 24(x4)	# 1943
	lw		x10, -144(x2)	# 1943
	sw		x10, 20(x4)	# 1943
	sw		x6, 16(x4)	# 1943
	sw		x7, 12(x4)	# 1943
	sw		x8, 8(x4)	# 1943
	fsw		f0, 4(x4)	# 1943
	addi	x13, x3, 0	# 1943
	addi	x3, x3, 24	# 1943
	lui		x14, %hi(iter_trace_diffuse_rays.2880)	# 1943
	ori		x14, x0, %lo(iter_trace_diffuse_rays.2880)	# 1943
	sw		x14, 0(x13)	# 1969
	sw		x5, 20(x13)	# 1969
	sw		x4, 16(x13)	# 1969
	sw		x6, 12(x13)	# 1969
	sw		x7, 8(x13)	# 1969
	fsw		f0, 4(x13)	# 1969
	addi	x4, x3, 0	# 1969
	addi	x3, x3, 40	# 1969
	lui		x14, %hi(trace_diffuse_ray_80percent.2889)	# 1969
	ori		x14, x0, %lo(trace_diffuse_ray_80percent.2889)	# 1969
	sw		x14, 0(x4)	# 1995
	sw		x17, 36(x4)	# 1995
	sw		x11, 32(x4)	# 1995
	sw		x15, 28(x4)	# 1995
	sw		x13, 24(x4)	# 1995
	lw		x14, -200(x2)	# 1995
	sw		x14, 20(x4)	# 1995
	sw		x6, 16(x4)	# 1995
	lw		x16, -56(x2)	# 1995
	sw		x16, 12(x4)	# 1995
	sw		x7, 8(x4)	# 1995
	sw		x8, 4(x4)	# 1995
	addi	x20, x3, 0	# 1995
	addi	x3, x3, 32	# 1995
	lui		x21, %hi(calc_diffuse_using_1point.2893)	# 1995
	ori		x21, x0, %lo(calc_diffuse_using_1point.2893)	# 1995
	sw		x21, 0(x20)	# 2014
	lw		x21, -248(x2)	# 2014
	sw		x21, 28(x20)	# 2014
	sw		x4, 24(x20)	# 2014
	sw		x19, 20(x20)	# 2014
	sw		x10, 16(x20)	# 2014
	sw		x6, 12(x20)	# 2014
	sw		x7, 8(x20)	# 2014
	sw		x8, 4(x20)	# 2014
	addi	x4, x3, 0	# 2014
	addi	x3, x3, 32	# 2014
	lui		x22, %hi(calc_diffuse_using_5points.2896)	# 2014
	ori		x22, x0, %lo(calc_diffuse_using_5points.2896)	# 2014
	sw		x22, 0(x4)	# 2034
	lw		x22, -244(x2)	# 2034
	sw		x22, 28(x4)	# 2034
	sw		x21, 24(x4)	# 2034
	sw		x19, 20(x4)	# 2034
	sw		x10, 16(x4)	# 2034
	sw		x6, 12(x4)	# 2034
	sw		x7, 8(x4)	# 2034
	sw		x8, 4(x4)	# 2034
	addi	x21, x3, 0	# 2034
	addi	x3, x3, 16	# 2034
	lui		x22, %hi(do_without_neighbors.2902)	# 2034
	ori		x22, x0, %lo(do_without_neighbors.2902)	# 2034
	sw		x22, 0(x21)	# 2068
	sw		x20, 12(x21)	# 2068
	sw		x7, 8(x21)	# 2068
	sw		x8, 4(x21)	# 2068
	addi	x22, x3, 0	# 2068
	addi	x3, x3, 8	# 2068
	lui		x24, %hi(neighbors_are_available.2912)	# 2068
	ori		x24, x0, %lo(neighbors_are_available.2912)	# 2068
	sw		x24, 0(x22)	# 2086
	sw		x8, 4(x22)	# 2086
	addi	x24, x3, 0	# 2086
	addi	x3, x3, 28	# 2086
	lui		x26, %hi(try_exploit_neighbors.2918)	# 2086
	ori		x26, x0, %lo(try_exploit_neighbors.2918)	# 2086
	sw		x26, 0(x24)	# 2113
	sw		x22, 24(x24)	# 2113
	sw		x21, 20(x24)	# 2113
	sw		x4, 16(x24)	# 2113
	sw		x20, 12(x24)	# 2113
	sw		x7, 8(x24)	# 2113
	sw		x8, 4(x24)	# 2113
	addi	x4, x3, 0	# 2113
	addi	x3, x3, 16	# 2113
	lui		x22, %hi(write_ppm_header.2925)	# 2113
	ori		x22, x0, %lo(write_ppm_header.2925)	# 2113
	sw		x22, 0(x4)	# 2139
	lw		x22, -156(x2)	# 2139
	sw		x22, 12(x4)	# 2139
	sw		x7, 8(x4)	# 2139
	sw		x8, 4(x4)	# 2139
	addi	x26, x3, 0	# 2139
	addi	x3, x3, 28	# 2139
	lui		x27, %hi(write_rgb.2931)	# 2139
	ori		x27, x0, %lo(write_rgb.2931)	# 2139
	sw		x27, 0(x26)	# 2162
	sw		x19, 24(x26)	# 2162
	sw		x6, 20(x26)	# 2162
	sw		x16, 16(x26)	# 2162
	sw		x7, 12(x26)	# 2162
	sw		x8, 8(x26)	# 2162
	fsw		f0, 4(x26)	# 2162
	addi	x27, x3, 0	# 2162
	addi	x3, x3, 40	# 2162
	lui		x31, %hi(pretrace_diffuse_rays.2933)	# 2162
	ori		x31, x0, %lo(pretrace_diffuse_rays.2933)	# 2162
	sw		x31, 0(x27)	# 2192
	sw		x17, 36(x27)	# 2192
	sw		x11, 32(x27)	# 2192
	sw		x15, 28(x27)	# 2192
	sw		x13, 24(x27)	# 2192
	sw		x14, 20(x27)	# 2192
	sw		x10, 16(x27)	# 2192
	sw		x6, 12(x27)	# 2192
	sw		x7, 8(x27)	# 2192
	sw		x8, 4(x27)	# 2192
	addi	x10, x3, 0	# 2192
	addi	x3, x3, 64	# 2192
	lui		x11, %hi(pretrace_pixels.2936)	# 2192
	ori		x11, x0, %lo(pretrace_pixels.2936)	# 2192
	sw		x11, 0(x10)	# 2217
	lw		x11, -64(x2)	# 2217
	sw		x11, 60(x10)	# 2217
	lw		x11, -272(x2)	# 2217
	sw		x11, 56(x10)	# 2217
	sw		x25, 52(x10)	# 2217
	sw		x18, 48(x10)	# 2217
	lw		x11, -176(x2)	# 2217
	sw		x11, 44(x10)	# 2217
	lw		x11, -164(x2)	# 2217
	sw		x11, 40(x10)	# 2217
	sw		x19, 36(x10)	# 2217
	lw		x13, -188(x2)	# 2217
	sw		x13, 32(x10)	# 2217
	sw		x27, 28(x10)	# 2217
	lw		x13, -160(x2)	# 2217
	sw		x13, 24(x10)	# 2217
	lw		x17, -196(x2)	# 2217
	sw		x17, 20(x10)	# 2217
	sw		x6, 16(x10)	# 2217
	sw		x7, 12(x10)	# 2217
	sw		x8, 8(x10)	# 2217
	fsw		f0, 4(x10)	# 2217
	addi	x18, x3, 0	# 2217
	addi	x3, x3, 40	# 2217
	lui		x25, %hi(pretrace_line.2943)	# 2217
	ori		x25, x0, %lo(pretrace_line.2943)	# 2217
	sw		x25, 0(x18)	# 2233
	lw		x25, -184(x2)	# 2233
	sw		x25, 36(x18)	# 2233
	lw		x25, -180(x2)	# 2233
	sw		x25, 32(x18)	# 2233
	sw		x11, 28(x18)	# 2233
	sw		x10, 24(x18)	# 2233
	sw		x22, 20(x18)	# 2233
	sw		x13, 16(x18)	# 2233
	sw		x6, 12(x18)	# 2233
	sw		x7, 8(x18)	# 2233
	sw		x8, 4(x18)	# 2233
	addi	x10, x3, 0	# 2233
	addi	x3, x3, 40	# 2233
	lui		x25, %hi(scan_pixel.2947)	# 2233
	ori		x25, x0, %lo(scan_pixel.2947)	# 2233
	sw		x25, 0(x10)	# 2253
	sw		x26, 36(x10)	# 2253
	sw		x24, 32(x10)	# 2253
	sw		x19, 28(x10)	# 2253
	sw		x22, 24(x10)	# 2253
	sw		x21, 20(x10)	# 2253
	sw		x20, 16(x10)	# 2253
	sw		x6, 12(x10)	# 2253
	sw		x7, 8(x10)	# 2253
	sw		x8, 4(x10)	# 2253
	addi	x19, x3, 0	# 2253
	addi	x3, x3, 32	# 2253
	lui		x20, %hi(scan_line.2954)	# 2253
	ori		x20, x0, %lo(scan_line.2954)	# 2253
	sw		x20, 0(x19)	# 2271
	sw		x10, 28(x19)	# 2271
	sw		x18, 24(x19)	# 2271
	sw		x22, 20(x19)	# 2271
	sw		x17, 16(x19)	# 2271
	sw		x6, 12(x19)	# 2271
	sw		x7, 8(x19)	# 2271
	sw		x8, 4(x19)	# 2271
	addi	x10, x3, 0	# 2271
	addi	x3, x3, 24	# 2271
	lui		x20, %hi(create_float5x3array.2961)	# 2271
	ori		x20, x0, %lo(create_float5x3array.2961)	# 2271
	sw		x20, 0(x10)	# 2296
	sw		x17, 20(x10)	# 2296
	sw		x6, 16(x10)	# 2296
	sw		x16, 12(x10)	# 2296
	sw		x8, 8(x10)	# 2296
	fsw		f0, 4(x10)	# 2296
	addi	x20, x3, 0	# 2296
	addi	x3, x3, 28	# 2296
	lui		x21, %hi(init_line_elements.2965)	# 2296
	ori		x21, x0, %lo(init_line_elements.2965)	# 2296
	sw		x21, 0(x20)	# 2333
	sw		x10, 24(x20)	# 2333
	sw		x17, 20(x20)	# 2333
	sw		x16, 16(x20)	# 2333
	sw		x7, 12(x20)	# 2333
	sw		x8, 8(x20)	# 2333
	fsw		f0, 4(x20)	# 2333
	addi	x21, x3, 0	# 2333
	addi	x3, x3, 48	# 2333
	lui		x24, %hi(calc_dirvec.2975)	# 2333
	ori		x24, x0, %lo(calc_dirvec.2975)	# 2333
	sw		x24, 0(x21)	# 2354
	lw		x24, -24(x2)	# 2354
	sw		x24, 44(x21)	# 2354
	fsw		f1, 40(x21)	# 2354
	fsw		f2, 36(x21)	# 2354
	sw		x14, 32(x21)	# 2354
	lw		x24, -4(x2)	# 2354
	sw		x24, 28(x21)	# 2354
	lw		x24, 0(x2)	# 2354
	sw		x24, 24(x21)	# 2354
	sw		x17, 20(x21)	# 2354
	sw		x6, 16(x21)	# 2354
	sw		x7, 12(x21)	# 2354
	sw		x8, 8(x21)	# 2354
	fsw		f0, 4(x21)	# 2354
	addi	x24, x3, 0	# 2354
	addi	x3, x3, 28	# 2354
	lui		x25, %hi(calc_dirvecs.2983)	# 2354
	ori		x25, x0, %lo(calc_dirvecs.2983)	# 2354
	sw		x25, 0(x24)	# 2368
	sw		x21, 24(x24)	# 2368
	sw		x17, 20(x24)	# 2368
	sw		x6, 16(x24)	# 2368
	sw		x7, 12(x24)	# 2368
	sw		x8, 8(x24)	# 2368
	fsw		f0, 4(x24)	# 2368
	addi	x21, x3, 0	# 2368
	addi	x3, x3, 24	# 2368
	lui		x25, %hi(calc_dirvec_rows.2988)	# 2368
	ori		x25, x0, %lo(calc_dirvec_rows.2988)	# 2368
	sw		x25, 0(x21)	# 2387
	sw		x24, 20(x21)	# 2387
	sw		x17, 16(x21)	# 2387
	sw		x6, 12(x21)	# 2387
	sw		x7, 8(x21)	# 2387
	sw		x8, 4(x21)	# 2387
	addi	x24, x3, 0	# 2387
	addi	x3, x3, 24	# 2387
	lui		x25, %hi(create_dirvec_elements.2994)	# 2387
	ori		x25, x0, %lo(create_dirvec_elements.2994)	# 2387
	sw		x25, 0(x24)	# 2394
	sw		x15, 20(x24)	# 2394
	sw		x16, 16(x24)	# 2394
	sw		x7, 12(x24)	# 2394
	sw		x8, 8(x24)	# 2394
	fsw		f0, 4(x24)	# 2394
	addi	x25, x3, 0	# 2394
	addi	x3, x3, 32	# 2394
	lui		x26, %hi(create_dirvecs.2997)	# 2394
	ori		x26, x0, %lo(create_dirvecs.2997)	# 2394
	sw		x26, 0(x25)	# 2406
	sw		x15, 28(x25)	# 2406
	sw		x14, 24(x25)	# 2406
	sw		x24, 20(x25)	# 2406
	sw		x16, 16(x25)	# 2406
	sw		x7, 12(x25)	# 2406
	sw		x8, 8(x25)	# 2406
	fsw		f0, 4(x25)	# 2406
	addi	x24, x3, 0	# 2406
	addi	x3, x3, 20	# 2406
	lui		x26, %hi(init_dirvec_constants.2999)	# 2406
	ori		x26, x0, %lo(init_dirvec_constants.2999)	# 2406
	sw		x26, 0(x24)	# 2413
	sw		x15, 16(x24)	# 2413
	lw		x26, -252(x2)	# 2413
	sw		x26, 12(x24)	# 2413
	sw		x7, 8(x24)	# 2413
	sw		x8, 4(x24)	# 2413
	addi	x27, x3, 0	# 2413
	addi	x3, x3, 28	# 2413
	lui		x31, %hi(init_vecset_constants.3002)	# 2413
	ori		x31, x0, %lo(init_vecset_constants.3002)	# 2413
	sw		x31, 0(x27)	# 2440
	sw		x15, 24(x27)	# 2440
	sw		x26, 20(x27)	# 2440
	sw		x24, 16(x27)	# 2440
	sw		x14, 12(x27)	# 2440
	sw		x7, 8(x27)	# 2440
	sw		x8, 4(x27)	# 2440
	addi	x14, x3, 0	# 2440
	addi	x3, x3, 44	# 2440
	lui		x24, %hi(setup_rect_reflection.3013)	# 2440
	ori		x24, x0, %lo(setup_rect_reflection.3013)	# 2440
	sw		x24, 0(x14)	# 2454
	lw		x24, -220(x2)	# 2454
	sw		x24, 40(x14)	# 2454
	lw		x31, -256(x2)	# 2454
	sw		x31, 36(x14)	# 2454
	sw		x15, 32(x14)	# 2454
	sw		x12, 28(x14)	# 2454
	sw		x26, 24(x14)	# 2454
	sw		x6, 20(x14)	# 2454
	sw		x16, 16(x14)	# 2454
	sw		x7, 12(x14)	# 2454
	sw		x8, 8(x14)	# 2454
	fsw		f0, 4(x14)	# 2454
	addi	x17, x3, 0	# 2454
	addi	x3, x3, 48	# 2454
	sw		x21, -280(x2)	# 2454
	lui		x21, %hi(setup_surface_reflection.3016)	# 2454
	ori		x21, x0, %lo(setup_surface_reflection.3016)	# 2454
	sw		x21, 0(x17)	# 2469
	sw		x5, 44(x17)	# 2469
	sw		x24, 40(x17)	# 2469
	sw		x31, 36(x17)	# 2469
	sw		x15, 32(x17)	# 2469
	sw		x12, 28(x17)	# 2469
	sw		x26, 24(x17)	# 2469
	sw		x6, 20(x17)	# 2469
	sw		x16, 16(x17)	# 2469
	sw		x7, 12(x17)	# 2469
	sw		x8, 8(x17)	# 2469
	fsw		f0, 4(x17)	# 2469
	addi	x5, x3, 0	# 2469
	addi	x3, x3, 28	# 2469
	lui		x21, %hi(setup_reflections.3019)	# 2469
	ori		x21, x0, %lo(setup_reflections.3019)	# 2469
	sw		x21, 0(x5)	# 2491
	sw		x17, 24(x5)	# 2491
	sw		x14, 20(x5)	# 2491
	sw		x23, 16(x5)	# 2491
	sw		x6, 12(x5)	# 2491
	sw		x7, 8(x5)	# 2491
	sw		x8, 4(x5)	# 2491
	addi	x14, x3, 0	# 2491
	addi	x3, x3, 120	# 2491
	lui		x17, %hi(rt.3021)	# 2491
	ori		x17, x0, %lo(rt.3021)	# 2491
	sw		x17, 0(x14)	# 2512
	sw		x4, 116(x14)	# 2512
	lw		x4, -208(x2)	# 2512
	sw		x4, 112(x14)	# 2512
	sw		x5, 108(x14)	# 2512
	sw		x11, 104(x14)	# 2512
	sw		x19, 100(x14)	# 2512
	lw		x4, -240(x2)	# 2512
	sw		x4, 96(x14)	# 2512
	lw		x4, -232(x2)	# 2512
	sw		x4, 92(x14)	# 2512
	lw		x4, -228(x2)	# 2512
	sw		x4, 88(x14)	# 2512
	lw		x4, -224(x2)	# 2512
	sw		x4, 84(x14)	# 2512
	lw		x4, -236(x2)	# 2512
	sw		x4, 80(x14)	# 2512
	sw		x18, 76(x14)	# 2512
	sw		x9, 72(x14)	# 2512
	sw		x15, 68(x14)	# 2512
	lw		x4, -212(x2)	# 2512
	sw		x4, 64(x14)	# 2512
	sw		x12, 60(x14)	# 2512
	sw		x26, 56(x14)	# 2512
	sw		x27, 52(x14)	# 2512
	sw		x20, 48(x14)	# 2512
	sw		x22, 44(x14)	# 2512
	sw		x13, 40(x14)	# 2512
	sw		x10, 36(x14)	# 2512
	sw		x25, 32(x14)	# 2512
	lw		x4, -280(x2)	# 2512
	sw		x4, 28(x14)	# 2512
	lw		x4, -196(x2)	# 2512
	sw		x4, 24(x14)	# 2512
	sw		x6, 20(x14)	# 2512
	sw		x16, 16(x14)	# 2512
	sw		x7, 12(x14)	# 2512
	sw		x8, 8(x14)	# 2512
	fsw		f0, 4(x14)	# 2512
	ori		x4, x0, 128	# 2512
	addi	x6, x16, 0
	addi	x5, x4, 0
	addi	x27, x14, 0
	sw		x1, -284(x2)	# 2512
	addi	x2, x2, -288	# 2512
	lw		x31, 0(x27)	# 2512
	jalr	x1, x31, 0	# 2512
	addi	x2, x2, 288	# 2512
	lw		x1, -284(x2)	# 2512
	EXIT	
