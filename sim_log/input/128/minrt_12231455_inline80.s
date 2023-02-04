l.19385:	# 0.000000
	.word	0.000000
l.19387:	# 1.000000
	.word	1.000000
l.19399:	# 0.500000
	.word	0.500000
l.19578:	# -1.000000
	.word	-1.000000
l.20349:	# -0.100000
	.word	-0.100000
l.19433:	# 0.017453
	.word	0.017453
l.20885:	# 100000000.000000
	.word	100000000.000000
l.20273:	# 0.010000
	.word	0.010000
l.20802:	# 3.141593
	.word	3.141593
l.21271:	# 0.100000
	.word	0.100000
l.19418:	# 0.200000
	.word	0.200000
l.19401:	# 0.041664
	.word	0.041664
l.19403:	# 0.001370
	.word	0.001370
l.22317:	# 0.900000
	.word	0.900000
l.20797:	# 15.000000
	.word	15.000000
l.20836:	# 10.000000
	.word	10.000000
l.20800:	# 30.000000
	.word	30.000000
l.19514:	# 2.000000
	.word	2.000000
l.22623:	# 1000000000.000000
	.word	1000000000.000000
l.22618:	# 255.000000
	.word	255.000000
l.21446:	# 150.000000
	.word	150.000000
l.21094:	# 0.003906
	.word	0.003906
l.21129:	# -2.000000
	.word	-2.000000
l.20271:	# -0.200000
	.word	-0.200000
l.19392:	# 0.166667
	.word	0.166667
l.19394:	# 0.008333
	.word	0.008333
l.19396:	# 0.000196
	.word	0.000196
l.19416:	# 0.333333
	.word	0.333333
l.19414:	# 0.437500
	.word	0.437500
l.19411:	# 2.437500
	.word	2.437500
l.20795:	# 0.000100
	.word	0.000100
l.20862:	# 20.000000
	.word	20.000000
l.20860:	# 0.050000
	.word	0.050000
l.21344:	# -150.000000
	.word	-150.000000
l.20820:	# 0.300000
	.word	0.300000
l.20847:	# 0.250000
	.word	0.250000
l.20817:	# 0.150000
	.word	0.150000
l.22503:	# 128.000000
	.word	128.000000
l.19439:	# -200.000000
	.word	-200.000000
l.19435:	# 200.000000
	.word	200.000000
l.19424:	# 0.089764
	.word	0.089764
l.19422:	# 0.111111
	.word	0.111111
l.19420:	# 0.142857
	.word	0.142857
l.22597:	# 3.141593
	.word	3.141593
l.22599:	# 6.283185
	.word	6.283185
l.22601:	# 1.570796
	.word	1.570796
l.22603:	# 0.785398
	.word	0.785398
int_of_float.2487.12783:
	fadd	f2, f0, f0	# 10
	fle		x31, f2, f1	# 10
	beq		x31, x0, fle_else.24608	# 10
	fadd	f2, f0, f16	# 11
	fle		x31, f2, f1	# 11
	beq		x31, x0, fle_else.24609	# 11
	fsub	f1, f1, f2	# 11
	sw		x1, 0(x2)	# 11
	addi	x2, x2, -4	# 11
	jal		x1, int_of_float.2487.12783	# 11
	addi	x2, x2, 4	# 11
	lw		x1, 0(x2)	# 11
	addi	x4, x4, 1	# 11
	jalr	x0, x1, 0	# 11
fle_else.24609:
	addi	x4, x0, 0	# 11
	jalr	x0, x1, 0	# 11
fle_else.24608:
	fsub	f1, f0, f1	# 12
	sw		x1, 0(x2)	# 12
	addi	x2, x2, -4	# 12
	jal		x1, int_of_float.2487.12783	# 12
	addi	x2, x2, 4	# 12
	lw		x1, 0(x2)	# 12
	sub		x4, x0, x4	# 12
	jalr	x0, x1, 0	# 12
float_of_int.2489.12785:
	addi	x5, x0, 0	# 14
	ble		x5, x4, ble.24610	# 14
	sub		x4, x0, x4	# 16
	sw		x1, 0(x2)	# 16
	addi	x2, x2, -4	# 16
	jal		x1, float_of_int.2489.12785	# 16
	addi	x2, x2, 4	# 16
	lw		x1, 0(x2)	# 16
	fsub	f1, f0, f1	# 16
	jalr	x0, x1, 0	# 16
ble.24610:
	addi	x5, x0, 1	# 15
	ble		x5, x4, ble.24611	# 15
	fadd	f1, f0, f0	# 15
	jalr	x0, x1, 0	# 15
ble.24611:
	sub		x4, x4, x5	# 15
	sw		x1, 0(x2)	# 15
	addi	x2, x2, -4	# 15
	jal		x1, float_of_int.2489.12785	# 15
	addi	x2, x2, 4	# 15
	lw		x1, 0(x2)	# 15
	fadd	f2, f0, f16	# 15
	fadd	f1, f1, f2	# 15
	jalr	x0, x1, 0	# 15
sin.2501.12791:
	flw		f2, 16(x29)	# 46
	flw		f3, 12(x29)	# 46
	flw		f4, 8(x29)	# 46
	flw		f5, 4(x29)	# 46
	fadd	f6, f0, f0	# 46
	fle		x31, f6, f1	# 46
	beq		x31, x0, fle_else.24612	# 46
	fle		x31, f4, f1	# 47
	beq		x31, x0, fle_else.24613	# 47
	fsub	f1, f1, f4	# 47
	lw		x31, 0(x29)	# 47
	jalr	x0, x31, 0	# 47
fle_else.24613:
	fle		x31, f5, f1	# 48
	beq		x31, x0, fle_else.24614	# 48
	fsub	f1, f1, f5	# 48
	sw		x1, 0(x2)	# 48
	addi	x2, x2, -4	# 48
	lw		x31, 0(x29)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 4	# 48
	lw		x1, 0(x2)	# 48
	fsub	f1, f0, f1	# 48
	jalr	x0, x1, 0	# 48
fle_else.24614:
	fle		x31, f1, f3	# 49
	beq		x31, x0, fle_else.24615	# 49
	fle		x31, f2, f1	# 50
	beq		x31, x0, fle_else.24616	# 50
	fsub	f1, f3, f1	# 50
	fmul	f1, f1, f1	# 41
	fmul	f2, f1, f1	# 42
	fadd	f3, f0, f16	# 43
	fadd	f4, f0, f17	# 43
	fmul	f4, f4, f1	# 43
	fsub	f3, f3, f4	# 43
	fadd	f4, f0, f26	# 43
	fmul	f4, f4, f2	# 43
	fadd	f3, f3, f4	# 43
	fadd	f4, f0, f27	# 43
	fmul	f1, f4, f1	# 43
	fmul	f1, f1, f2	# 43
	fsub	f1, f3, f1	# 43
	jalr	x0, x1, 0	# 43
fle_else.24616:
	fmul	f2, f1, f1	# 36
	fmul	f3, f1, f2	# 37
	lui		x4, %hi(l.19392)	# 38
	ori		x4, x0, %lo(l.19392)	# 38
	flw		f4, 0(x4)	# 38
	fmul	f4, f4, f3	# 38
	fsub	f1, f1, f4	# 38
	lui		x4, %hi(l.19394)	# 38
	ori		x4, x0, %lo(l.19394)	# 38
	flw		f4, 0(x4)	# 38
	fmul	f4, f4, f2	# 38
	fmul	f4, f4, f3	# 38
	fadd	f1, f1, f4	# 38
	lui		x4, %hi(l.19396)	# 38
	ori		x4, x0, %lo(l.19396)	# 38
	flw		f4, 0(x4)	# 38
	fmul	f4, f4, f2	# 38
	fmul	f2, f4, f2	# 38
	fmul	f2, f2, f3	# 38
	fsub	f1, f1, f2	# 38
	jalr	x0, x1, 0	# 38
fle_else.24615:
	fsub	f1, f5, f1	# 49
	lw		x31, 0(x29)	# 49
	jalr	x0, x31, 0	# 49
fle_else.24612:
	fsub	f1, f0, f1	# 46
	sw		x1, 0(x2)	# 46
	addi	x2, x2, -4	# 46
	lw		x31, 0(x29)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 4	# 46
	lw		x1, 0(x2)	# 46
	fsub	f1, f0, f1	# 46
	jalr	x0, x1, 0	# 46
cos.2503.12793:
	lw		x4, 12(x29)	# 54
	flw		f2, 8(x29)	# 54
	flw		f3, 4(x29)	# 54
	fadd	f4, f0, f0	# 54
	fle		x31, f4, f1	# 54
	beq		x31, x0, fle_else.24617	# 54
	fle		x31, f1, f2	# 55
	beq		x31, x0, fle_else.24618	# 55
	fmul	f1, f1, f1	# 41
	fmul	f2, f1, f1	# 42
	fadd	f3, f0, f16	# 43
	fadd	f4, f0, f17	# 43
	fmul	f4, f4, f1	# 43
	fsub	f3, f3, f4	# 43
	fadd	f4, f0, f26	# 43
	fmul	f4, f4, f2	# 43
	fadd	f3, f3, f4	# 43
	fadd	f4, f0, f27	# 43
	fmul	f1, f4, f1	# 43
	fmul	f1, f1, f2	# 43
	fsub	f1, f3, f1	# 43
	jalr	x0, x1, 0	# 43
fle_else.24618:
	fsub	f1, f3, f1	# 55
	addi	x29, x4, 0
	lw		x31, 0(x29)	# 55
	jalr	x0, x31, 0	# 55
fle_else.24617:
	fsub	f1, f0, f1	# 54
	lw		x31, 0(x29)	# 54
	jalr	x0, x31, 0	# 54
atan.2505.12795:
	flw		f2, 8(x29)	# 59
	flw		f3, 4(x29)	# 59
	fadd	f4, f0, f0	# 59
	fle		x31, f4, f1	# 59
	beq		x31, x0, fle_else.24619	# 59
	lui		x4, %hi(l.19411)	# 60
	ori		x4, x0, %lo(l.19411)	# 60
	flw		f4, 0(x4)	# 60
	fle		x31, f1, f4	# 60
	beq		x31, x0, fle_else.24620	# 60
	lui		x4, %hi(l.19414)	# 61
	ori		x4, x0, %lo(l.19414)	# 61
	flw		f3, 0(x4)	# 61
	fle		x31, f3, f1	# 61
	beq		x31, x0, fle_else.24621	# 61
	fadd	f3, f0, f16	# 61
	fsub	f4, f1, f3	# 61
	fadd	f1, f1, f3	# 61
	fdiv	f1, f4, f1	# 61
	fsw		f2, 0(x2)	# 61
	sw		x1, -4(x2)	# 61
	addi	x2, x2, -8	# 61
	lw		x31, 0(x29)	# 61
	jalr	x1, x31, 0	# 61
	addi	x2, x2, 8	# 61
	lw		x1, -4(x2)	# 61
	flw		f2, 0(x2)	# 61
	fadd	f1, f2, f1	# 61
	jalr	x0, x1, 0	# 61
fle_else.24621:
	fmul	f2, f1, f1	# 63
	fmul	f3, f1, f2	# 64
	fmul	f4, f2, f2	# 65
	lui		x4, %hi(l.19416)	# 66
	ori		x4, x0, %lo(l.19416)	# 66
	flw		f5, 0(x4)	# 66
	fmul	f5, f5, f3	# 66
	fsub	f1, f1, f5	# 66
	fadd	f5, f0, f25	# 66
	fmul	f5, f5, f2	# 66
	fmul	f5, f5, f3	# 66
	fadd	f1, f1, f5	# 66
	lui		x4, %hi(l.19420)	# 66
	ori		x4, x0, %lo(l.19420)	# 66
	flw		f5, 0(x4)	# 66
	fmul	f5, f5, f4	# 66
	fmul	f5, f5, f3	# 66
	fsub	f1, f1, f5	# 66
	lui		x4, %hi(l.19422)	# 67
	ori		x4, x0, %lo(l.19422)	# 67
	flw		f5, 0(x4)	# 67
	fmul	f2, f5, f2	# 67
	fmul	f2, f2, f4	# 67
	fmul	f2, f2, f3	# 67
	fadd	f1, f1, f2	# 66
	lui		x4, %hi(l.19424)	# 67
	ori		x4, x0, %lo(l.19424)	# 67
	flw		f2, 0(x4)	# 67
	fmul	f2, f2, f4	# 67
	fmul	f2, f2, f4	# 67
	fmul	f2, f2, f3	# 67
	fsub	f1, f1, f2	# 66
	jalr	x0, x1, 0	# 66
fle_else.24620:
	fadd	f2, f0, f16	# 60
	fdiv	f1, f2, f1	# 60
	fsw		f3, -4(x2)	# 60
	sw		x1, -8(x2)	# 60
	addi	x2, x2, -12	# 60
	lw		x31, 0(x29)	# 60
	jalr	x1, x31, 0	# 60
	addi	x2, x2, 12	# 60
	lw		x1, -8(x2)	# 60
	flw		f2, -4(x2)	# 60
	fsub	f1, f2, f1	# 60
	jalr	x0, x1, 0	# 60
fle_else.24619:
	fsub	f1, f0, f1	# 59
	sw		x1, -8(x2)	# 59
	addi	x2, x2, -12	# 59
	lw		x31, 0(x29)	# 59
	jalr	x1, x31, 0	# 59
	addi	x2, x2, 12	# 59
	lw		x1, -8(x2)	# 59
	fsub	f1, f0, f1	# 59
	jalr	x0, x1, 0	# 59
read_screen_settings.2663.12935:
	lw		x4, 24(x29)	# 684
	lw		x5, 20(x29)	# 684
	lw		x6, 16(x29)	# 684
	lw		x7, 12(x29)	# 684
	lw		x8, 8(x29)	# 684
	flw		f1, 4(x29)	# 684
	fsw		f1, 0(x2)	# 684
	sw		x4, -4(x2)	# 684
	sw		x5, -8(x2)	# 684
	sw		x6, -12(x2)	# 684
	sw		x8, -16(x2)	# 684
	sw		x7, -20(x2)	# 684
	sw		x1, -24(x2)	# 684
	addi	x2, x2, -28	# 684
	jal		x1, min_caml_read_float	# 684
	addi	x2, x2, 28	# 684
	lw		x1, -24(x2)	# 684
	addi	x4, x26, 288	# 684
	lw		x5, -20(x2)	# 684
	mul		x6, x30, x5	# 684
	add		x4, x4, x6	# 684
	fsw		f1, 0(x4)	# 684
	sw		x1, -24(x2)	# 685
	addi	x2, x2, -28	# 685
	jal		x1, min_caml_read_float	# 685
	addi	x2, x2, 28	# 685
	lw		x1, -24(x2)	# 685
	addi	x4, x26, 288	# 685
	lw		x5, -16(x2)	# 685
	mul		x6, x30, x5	# 685
	add		x4, x4, x6	# 685
	fsw		f1, 0(x4)	# 685
	sw		x1, -24(x2)	# 686
	addi	x2, x2, -28	# 686
	jal		x1, min_caml_read_float	# 686
	addi	x2, x2, 28	# 686
	lw		x1, -24(x2)	# 686
	addi	x4, x26, 288	# 686
	lw		x5, -12(x2)	# 686
	mul		x6, x30, x5	# 686
	add		x4, x4, x6	# 686
	fsw		f1, 0(x4)	# 686
	sw		x1, -24(x2)	# 688
	addi	x2, x2, -28	# 688
	jal		x1, min_caml_read_float	# 688
	addi	x2, x2, 28	# 688
	lw		x1, -24(x2)	# 688
	fadd	f2, f0, f20	# 677
	fmul	f1, f1, f2	# 677
	lw		x29, -8(x2)	# 689
	fsw		f2, -24(x2)	# 689
	fsw		f1, -28(x2)	# 689
	sw		x1, -32(x2)	# 689
	addi	x2, x2, -36	# 689
	lw		x31, 0(x29)	# 689
	jalr	x1, x31, 0	# 689
	addi	x2, x2, 36	# 689
	lw		x1, -32(x2)	# 689
	flw		f2, -28(x2)	# 690
	lw		x29, -4(x2)	# 690
	fsw		f1, -32(x2)	# 690
	fadd	f1, f0, f2
	sw		x1, -36(x2)	# 690
	addi	x2, x2, -40	# 690
	lw		x31, 0(x29)	# 690
	jalr	x1, x31, 0	# 690
	addi	x2, x2, 40	# 690
	lw		x1, -36(x2)	# 690
	fsw		f1, -36(x2)	# 691
	sw		x1, -40(x2)	# 691
	addi	x2, x2, -44	# 691
	jal		x1, min_caml_read_float	# 691
	addi	x2, x2, 44	# 691
	lw		x1, -40(x2)	# 691
	flw		f2, -24(x2)	# 677
	fmul	f1, f1, f2	# 677
	lw		x29, -8(x2)	# 692
	fsw		f1, -40(x2)	# 692
	sw		x1, -44(x2)	# 692
	addi	x2, x2, -48	# 692
	lw		x31, 0(x29)	# 692
	jalr	x1, x31, 0	# 692
	addi	x2, x2, 48	# 692
	lw		x1, -44(x2)	# 692
	flw		f2, -40(x2)	# 693
	lw		x29, -4(x2)	# 693
	fsw		f1, -44(x2)	# 693
	fadd	f1, f0, f2
	sw		x1, -48(x2)	# 693
	addi	x2, x2, -52	# 693
	lw		x31, 0(x29)	# 693
	jalr	x1, x31, 0	# 693
	addi	x2, x2, 52	# 693
	lw		x1, -48(x2)	# 693
	flw		f2, -32(x2)	# 695
	fmul	f3, f2, f1	# 695
	lui		x4, %hi(l.19435)	# 695
	ori		x4, x0, %lo(l.19435)	# 695
	flw		f4, 0(x4)	# 695
	fmul	f3, f3, f4	# 695
	addi	x4, x26, 684	# 695
	lw		x5, -20(x2)	# 695
	mul		x6, x30, x5	# 695
	add		x4, x4, x6	# 695
	fsw		f3, 0(x4)	# 695
	lui		x4, %hi(l.19439)	# 696
	ori		x4, x0, %lo(l.19439)	# 696
	flw		f3, 0(x4)	# 696
	flw		f5, -36(x2)	# 696
	fmul	f3, f5, f3	# 696
	addi	x4, x26, 684	# 696
	lw		x6, -16(x2)	# 696
	mul		x7, x30, x6	# 696
	add		x4, x4, x7	# 696
	fsw		f3, 0(x4)	# 696
	flw		f3, -44(x2)	# 697
	fmul	f6, f2, f3	# 697
	fmul	f4, f6, f4	# 697
	addi	x4, x26, 684	# 697
	lw		x7, -12(x2)	# 697
	mul		x8, x30, x7	# 697
	add		x4, x4, x8	# 697
	fsw		f4, 0(x4)	# 697
	addi	x4, x26, 660	# 699
	mul		x8, x30, x5	# 699
	add		x4, x4, x8	# 699
	fsw		f3, 0(x4)	# 699
	addi	x4, x26, 660	# 700
	mul		x8, x30, x6	# 700
	add		x4, x4, x8	# 700
	flw		f4, 0(x2)	# 700
	fsw		f4, 0(x4)	# 700
	fsub	f4, f0, f1	# 4
	addi	x4, x26, 660	# 701
	mul		x8, x30, x7	# 701
	add		x4, x4, x8	# 701
	fsw		f4, 0(x4)	# 701
	fsub	f4, f0, f5	# 4
	fmul	f1, f4, f1	# 703
	addi	x4, x26, 672	# 703
	mul		x8, x30, x5	# 703
	add		x4, x4, x8	# 703
	fsw		f1, 0(x4)	# 703
	fsub	f1, f0, f2	# 4
	addi	x4, x26, 672	# 704
	mul		x8, x30, x6	# 704
	add		x4, x4, x8	# 704
	fsw		f1, 0(x4)	# 704
	fmul	f1, f4, f3	# 705
	addi	x4, x26, 672	# 705
	mul		x8, x30, x7	# 705
	add		x4, x4, x8	# 705
	fsw		f1, 0(x4)	# 705
	addi	x4, x26, 288	# 707
	mul		x8, x30, x5	# 707
	add		x4, x4, x8	# 707
	flw		f1, 0(x4)	# 707
	addi	x4, x26, 684	# 707
	mul		x8, x30, x5	# 707
	add		x4, x4, x8	# 707
	flw		f2, 0(x4)	# 707
	fsub	f1, f1, f2	# 707
	addi	x4, x26, 300	# 707
	mul		x5, x30, x5	# 707
	add		x4, x4, x5	# 707
	fsw		f1, 0(x4)	# 707
	addi	x4, x26, 288	# 708
	mul		x5, x30, x6	# 708
	add		x4, x4, x5	# 708
	flw		f1, 0(x4)	# 708
	addi	x4, x26, 684	# 708
	mul		x5, x30, x6	# 708
	add		x4, x4, x5	# 708
	flw		f2, 0(x4)	# 708
	fsub	f1, f1, f2	# 708
	addi	x4, x26, 300	# 708
	mul		x5, x30, x6	# 708
	add		x4, x4, x5	# 708
	fsw		f1, 0(x4)	# 708
	addi	x4, x26, 288	# 709
	mul		x5, x30, x7	# 709
	add		x4, x4, x5	# 709
	flw		f1, 0(x4)	# 709
	addi	x4, x26, 684	# 709
	mul		x5, x30, x7	# 709
	add		x4, x4, x5	# 709
	flw		f2, 0(x4)	# 709
	fsub	f1, f1, f2	# 709
	addi	x4, x26, 300	# 709
	mul		x5, x30, x7	# 709
	add		x4, x4, x5	# 709
	fsw		f1, 0(x4)	# 709
	jalr	x0, x1, 0	# 709
rotate_quadratic_matrix.2667.12937:
	lw		x6, 20(x29)	# 738
	lw		x7, 16(x29)	# 738
	lw		x8, 12(x29)	# 738
	lw		x9, 8(x29)	# 738
	lw		x10, 4(x29)	# 738
	mul		x11, x30, x9	# 738
	add		x11, x5, x11	# 738
	flw		f1, 0(x11)	# 738
	sw		x4, 0(x2)	# 738
	sw		x8, -4(x2)	# 738
	sw		x7, -8(x2)	# 738
	sw		x10, -12(x2)	# 738
	sw		x6, -16(x2)	# 738
	sw		x5, -20(x2)	# 738
	sw		x9, -24(x2)	# 738
	addi	x29, x7, 0
	sw		x1, -28(x2)	# 738
	addi	x2, x2, -32	# 738
	lw		x31, 0(x29)	# 738
	jalr	x1, x31, 0	# 738
	addi	x2, x2, 32	# 738
	lw		x1, -28(x2)	# 738
	lw		x4, -24(x2)	# 739
	mul		x5, x30, x4	# 739
	lw		x6, -20(x2)	# 739
	add		x5, x6, x5	# 739
	flw		f2, 0(x5)	# 739
	lw		x29, -16(x2)	# 739
	fsw		f1, -28(x2)	# 739
	fadd	f1, f0, f2
	sw		x1, -32(x2)	# 739
	addi	x2, x2, -36	# 739
	lw		x31, 0(x29)	# 739
	jalr	x1, x31, 0	# 739
	addi	x2, x2, 36	# 739
	lw		x1, -32(x2)	# 739
	lw		x4, -12(x2)	# 740
	mul		x5, x30, x4	# 740
	lw		x6, -20(x2)	# 740
	add		x5, x6, x5	# 740
	flw		f2, 0(x5)	# 740
	lw		x29, -8(x2)	# 740
	fsw		f1, -32(x2)	# 740
	fadd	f1, f0, f2
	sw		x1, -36(x2)	# 740
	addi	x2, x2, -40	# 740
	lw		x31, 0(x29)	# 740
	jalr	x1, x31, 0	# 740
	addi	x2, x2, 40	# 740
	lw		x1, -36(x2)	# 740
	lw		x4, -12(x2)	# 741
	mul		x5, x30, x4	# 741
	lw		x6, -20(x2)	# 741
	add		x5, x6, x5	# 741
	flw		f2, 0(x5)	# 741
	lw		x29, -16(x2)	# 741
	fsw		f1, -36(x2)	# 741
	fadd	f1, f0, f2
	sw		x1, -40(x2)	# 741
	addi	x2, x2, -44	# 741
	lw		x31, 0(x29)	# 741
	jalr	x1, x31, 0	# 741
	addi	x2, x2, 44	# 741
	lw		x1, -40(x2)	# 741
	lw		x4, -4(x2)	# 742
	mul		x5, x30, x4	# 742
	lw		x6, -20(x2)	# 742
	add		x5, x6, x5	# 742
	flw		f2, 0(x5)	# 742
	lw		x29, -8(x2)	# 742
	fsw		f1, -40(x2)	# 742
	fadd	f1, f0, f2
	sw		x1, -44(x2)	# 742
	addi	x2, x2, -48	# 742
	lw		x31, 0(x29)	# 742
	jalr	x1, x31, 0	# 742
	addi	x2, x2, 48	# 742
	lw		x1, -44(x2)	# 742
	lw		x4, -4(x2)	# 743
	mul		x5, x30, x4	# 743
	lw		x6, -20(x2)	# 743
	add		x5, x6, x5	# 743
	flw		f2, 0(x5)	# 743
	lw		x29, -16(x2)	# 743
	fsw		f1, -44(x2)	# 743
	fadd	f1, f0, f2
	sw		x1, -48(x2)	# 743
	addi	x2, x2, -52	# 743
	lw		x31, 0(x29)	# 743
	jalr	x1, x31, 0	# 743
	addi	x2, x2, 52	# 743
	lw		x1, -48(x2)	# 743
	flw		f2, -44(x2)	# 745
	flw		f3, -36(x2)	# 745
	fmul	f4, f3, f2	# 745
	flw		f5, -40(x2)	# 746
	flw		f6, -32(x2)	# 746
	fmul	f7, f6, f5	# 746
	fmul	f8, f7, f2	# 746
	flw		f9, -28(x2)	# 746
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
	lw		x4, -24(x2)	# 758
	mul		x5, x30, x4	# 758
	lw		x6, 0(x2)	# 758
	add		x5, x6, x5	# 758
	flw		f6, 0(x5)	# 758
	lw		x5, -12(x2)	# 759
	mul		x7, x30, x5	# 759
	add		x7, x6, x7	# 759
	flw		f9, 0(x7)	# 759
	lw		x7, -4(x2)	# 760
	mul		x8, x30, x7	# 760
	add		x8, x6, x8	# 760
	flw		f10, 0(x8)	# 760
	fmul	f13, f4, f4	# 8
	fmul	f13, f6, f13	# 765
	fmul	f14, f12, f12	# 8
	fmul	f14, f9, f14	# 765
	fadd	f13, f13, f14	# 765
	fmul	f14, f2, f2	# 8
	fmul	f14, f10, f14	# 765
	fadd	f13, f13, f14	# 765
	mul		x8, x30, x4	# 765
	add		x8, x6, x8	# 765
	fsw		f13, 0(x8)	# 765
	fmul	f13, f8, f8	# 8
	fmul	f13, f6, f13	# 766
	fmul	f14, f7, f7	# 8
	fmul	f14, f9, f14	# 766
	fadd	f13, f13, f14	# 766
	fmul	f14, f5, f5	# 8
	fmul	f14, f10, f14	# 766
	fadd	f13, f13, f14	# 766
	mul		x8, x30, x5	# 766
	add		x8, x6, x8	# 766
	fsw		f13, 0(x8)	# 766
	fmul	f13, f11, f11	# 8
	fmul	f13, f6, f13	# 767
	fmul	f14, f1, f1	# 8
	fmul	f14, f9, f14	# 767
	fadd	f13, f13, f14	# 767
	fmul	f14, f3, f3	# 8
	fmul	f14, f10, f14	# 767
	fadd	f13, f13, f14	# 767
	mul		x8, x30, x7	# 767
	add		x6, x6, x8	# 767
	fsw		f13, 0(x6)	# 767
	lui		x6, %hi(l.19514)	# 770
	ori		x6, x0, %lo(l.19514)	# 770
	flw		f13, 0(x6)	# 770
	fmul	f14, f6, f8	# 770
	fmul	f14, f14, f11	# 770
	fmul	f15, f9, f7	# 770
	fmul	f15, f15, f1	# 770
	fadd	f14, f14, f15	# 770
	fmul	f15, f10, f5	# 770
	fmul	f15, f15, f3	# 770
	fadd	f14, f14, f15	# 770
	fmul	f14, f13, f14	# 770
	mul		x4, x30, x4	# 770
	lw		x6, -20(x2)	# 770
	add		x4, x6, x4	# 770
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
	mul		x4, x30, x5	# 771
	add		x4, x6, x4	# 771
	fsw		f1, 0(x4)	# 771
	fmul	f1, f4, f8	# 772
	fmul	f3, f9, f7	# 772
	fadd	f1, f1, f3	# 772
	fmul	f2, f2, f5	# 772
	fadd	f1, f1, f2	# 772
	fmul	f1, f13, f1	# 772
	mul		x4, x30, x7	# 772
	add		x4, x6, x4	# 772
	fsw		f1, 0(x4)	# 772
	jalr	x0, x1, 0	# 772
read_nth_object.2670.12940:
	lw		x5, 28(x29)	# 779
	lw		x6, 24(x29)	# 779
	lw		x7, 20(x29)	# 779
	lw		x8, 16(x29)	# 779
	lw		x9, 12(x29)	# 779
	lw		x10, 8(x29)	# 779
	flw		f1, 4(x29)	# 779
	sw		x5, 0(x2)	# 779
	sw		x4, -4(x2)	# 779
	sw		x6, -8(x2)	# 779
	sw		x10, -12(x2)	# 779
	sw		x9, -16(x2)	# 779
	fsw		f1, -20(x2)	# 779
	sw		x8, -24(x2)	# 779
	sw		x7, -28(x2)	# 779
	sw		x1, -32(x2)	# 779
	addi	x2, x2, -36	# 779
	jal		x1, min_caml_read_int	# 779
	addi	x2, x2, 36	# 779
	lw		x1, -32(x2)	# 779
	lw		x5, -28(x2)	# 780
	beq		x4, x5, beq.24624	# 780
	sw		x4, -32(x2)	# 782
	sw		x1, -36(x2)	# 782
	addi	x2, x2, -40	# 782
	jal		x1, min_caml_read_int	# 782
	addi	x2, x2, 40	# 782
	lw		x1, -36(x2)	# 782
	sw		x4, -36(x2)	# 783
	sw		x1, -40(x2)	# 783
	addi	x2, x2, -44	# 783
	jal		x1, min_caml_read_int	# 783
	addi	x2, x2, 44	# 783
	lw		x1, -40(x2)	# 783
	sw		x4, -40(x2)	# 784
	sw		x1, -44(x2)	# 784
	addi	x2, x2, -48	# 784
	jal		x1, min_caml_read_int	# 784
	addi	x2, x2, 48	# 784
	lw		x1, -44(x2)	# 784
	flw		f1, -20(x2)	# 786
	lw		x5, -24(x2)	# 786
	sw		x4, -44(x2)	# 786
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 786
	addi	x2, x2, -52	# 786
	jal		x1, min_caml_create_float_array	# 786
	addi	x2, x2, 52	# 786
	lw		x1, -48(x2)	# 786
	sw		x4, -48(x2)	# 787
	sw		x1, -52(x2)	# 787
	addi	x2, x2, -56	# 787
	jal		x1, min_caml_read_float	# 787
	addi	x2, x2, 56	# 787
	lw		x1, -52(x2)	# 787
	lw		x4, -16(x2)	# 787
	mul		x5, x30, x4	# 787
	lw		x6, -48(x2)	# 787
	add		x5, x6, x5	# 787
	fsw		f1, 0(x5)	# 787
	sw		x1, -52(x2)	# 788
	addi	x2, x2, -56	# 788
	jal		x1, min_caml_read_float	# 788
	addi	x2, x2, 56	# 788
	lw		x1, -52(x2)	# 788
	lw		x4, -12(x2)	# 788
	mul		x5, x30, x4	# 788
	lw		x6, -48(x2)	# 788
	add		x5, x6, x5	# 788
	fsw		f1, 0(x5)	# 788
	sw		x1, -52(x2)	# 789
	addi	x2, x2, -56	# 789
	jal		x1, min_caml_read_float	# 789
	addi	x2, x2, 56	# 789
	lw		x1, -52(x2)	# 789
	lw		x4, -8(x2)	# 789
	mul		x5, x30, x4	# 789
	lw		x6, -48(x2)	# 789
	add		x5, x6, x5	# 789
	fsw		f1, 0(x5)	# 789
	flw		f1, -20(x2)	# 791
	lw		x5, -24(x2)	# 791
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 791
	addi	x2, x2, -56	# 791
	jal		x1, min_caml_create_float_array	# 791
	addi	x2, x2, 56	# 791
	lw		x1, -52(x2)	# 791
	sw		x4, -52(x2)	# 792
	sw		x1, -56(x2)	# 792
	addi	x2, x2, -60	# 792
	jal		x1, min_caml_read_float	# 792
	addi	x2, x2, 60	# 792
	lw		x1, -56(x2)	# 792
	lw		x4, -16(x2)	# 792
	mul		x5, x30, x4	# 792
	lw		x6, -52(x2)	# 792
	add		x5, x6, x5	# 792
	fsw		f1, 0(x5)	# 792
	sw		x1, -56(x2)	# 793
	addi	x2, x2, -60	# 793
	jal		x1, min_caml_read_float	# 793
	addi	x2, x2, 60	# 793
	lw		x1, -56(x2)	# 793
	lw		x4, -12(x2)	# 793
	mul		x5, x30, x4	# 793
	lw		x6, -52(x2)	# 793
	add		x5, x6, x5	# 793
	fsw		f1, 0(x5)	# 793
	sw		x1, -56(x2)	# 794
	addi	x2, x2, -60	# 794
	jal		x1, min_caml_read_float	# 794
	addi	x2, x2, 60	# 794
	lw		x1, -56(x2)	# 794
	lw		x4, -8(x2)	# 794
	mul		x5, x30, x4	# 794
	lw		x6, -52(x2)	# 794
	add		x5, x6, x5	# 794
	fsw		f1, 0(x5)	# 794
	sw		x1, -56(x2)	# 796
	addi	x2, x2, -60	# 796
	jal		x1, min_caml_read_float	# 796
	addi	x2, x2, 60	# 796
	lw		x1, -56(x2)	# 796
	flw		f2, -20(x2)	# 3
	fle		x31, f2, f1	# 3
	beq		x31, x0, fle_else.24626	# 3
	addi	x4, x0, 0	# 3
	jal		x0, fle_cont.24625	# 3
fle_else.24626:
	addi	x4, x0, 1	# 3
fle_cont.24625:
	lw		x5, -8(x2)	# 798
	fsw		f1, -56(x2)	# 798
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
	lw		x4, -16(x2)	# 799
	mul		x5, x30, x4	# 799
	lw		x6, -64(x2)	# 799
	add		x5, x6, x5	# 799
	fsw		f1, 0(x5)	# 799
	sw		x1, -68(x2)	# 800
	addi	x2, x2, -72	# 800
	jal		x1, min_caml_read_float	# 800
	addi	x2, x2, 72	# 800
	lw		x1, -68(x2)	# 800
	lw		x4, -12(x2)	# 800
	mul		x5, x30, x4	# 800
	lw		x6, -64(x2)	# 800
	add		x5, x6, x5	# 800
	fsw		f1, 0(x5)	# 800
	flw		f1, -20(x2)	# 802
	lw		x5, -24(x2)	# 802
	addi	x4, x5, 0
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
	lw		x4, -16(x2)	# 803
	mul		x5, x30, x4	# 803
	lw		x6, -68(x2)	# 803
	add		x5, x6, x5	# 803
	fsw		f1, 0(x5)	# 803
	sw		x1, -72(x2)	# 804
	addi	x2, x2, -76	# 804
	jal		x1, min_caml_read_float	# 804
	addi	x2, x2, 76	# 804
	lw		x1, -72(x2)	# 804
	lw		x4, -12(x2)	# 804
	mul		x4, x30, x4	# 804
	lw		x5, -68(x2)	# 804
	add		x4, x5, x4	# 804
	fsw		f1, 0(x4)	# 804
	sw		x1, -72(x2)	# 805
	addi	x2, x2, -76	# 805
	jal		x1, min_caml_read_float	# 805
	addi	x2, x2, 76	# 805
	lw		x1, -72(x2)	# 805
	lw		x4, -8(x2)	# 805
	mul		x5, x30, x4	# 805
	lw		x6, -68(x2)	# 805
	add		x5, x6, x5	# 805
	fsw		f1, 0(x5)	# 805
	flw		f1, -20(x2)	# 807
	lw		x5, -24(x2)	# 807
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 807
	addi	x2, x2, -76	# 807
	jal		x1, min_caml_create_float_array	# 807
	addi	x2, x2, 76	# 807
	lw		x1, -72(x2)	# 807
	lw		x5, -16(x2)	# 808
	lw		x6, -44(x2)	# 808
	sw		x4, -72(x2)	# 808
	beq		x6, x5, beq_cont.24627	# 808
	addi	x7, x0, 0	# 810
	sw		x7, -76(x2)	# 810
	sw		x1, -80(x2)	# 810
	addi	x2, x2, -84	# 810
	jal		x1, min_caml_read_float	# 810
	addi	x2, x2, 84	# 810
	lw		x1, -80(x2)	# 810
	fadd	f2, f0, f20	# 677
	fmul	f1, f1, f2	# 677
	lw		x4, -76(x2)	# 810
	mul		x4, x30, x4	# 810
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
	fadd	f2, f0, f20	# 677
	fmul	f1, f1, f2	# 677
	lw		x4, -80(x2)	# 811
	mul		x4, x30, x4	# 811
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
	fadd	f2, f0, f20	# 677
	fmul	f1, f1, f2	# 677
	lw		x4, -84(x2)	# 812
	mul		x4, x30, x4	# 812
	lw		x5, -72(x2)	# 812
	add		x4, x5, x4	# 812
	fsw		f1, 0(x4)	# 812
beq_cont.24627:
	lw		x4, -8(x2)	# 819
	lw		x5, -36(x2)	# 819
	beq		x5, x4, beq.24629	# 819
	lw		x4, -60(x2)	# 819
	jal		x0, beq_cont.24628	# 819
beq.24629:
	addi	x4, x0, 1	# 819
beq_cont.24628:
	addi	x6, x0, 4	# 820
	flw		f1, -20(x2)	# 820
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
	lw		x6, -52(x2)	# 823
	sw		x6, 20(x5)	# 823
	lw		x6, -48(x2)	# 823
	sw		x6, 16(x5)	# 823
	lw		x7, -44(x2)	# 823
	sw		x7, 12(x5)	# 823
	lw		x8, -40(x2)	# 823
	sw		x8, 8(x5)	# 823
	lw		x8, -36(x2)	# 823
	sw		x8, 4(x5)	# 823
	lw		x9, -32(x2)	# 823
	sw		x9, 0(x5)	# 823
	addi	x9, x26, 48	# 831
	lw		x10, -4(x2)	# 831
	mul		x10, x30, x10	# 831
	add		x9, x9, x10	# 831
	sw		x5, 0(x9)	# 831
	lw		x5, -24(x2)	# 833
	beq		x8, x5, beq.24631	# 833
	addi	x5, x0, 2	# 843
	beq		x8, x5, beq.24633	# 843
	jal		x0, beq_cont.24632	# 843
beq.24633:
	addi	x5, x0, 0	# 283
	mul		x5, x30, x5	# 283
	add		x5, x6, x5	# 283
	flw		f1, 0(x5)	# 283
	fmul	f1, f1, f1	# 8
	addi	x5, x0, 1	# 283
	mul		x5, x30, x5	# 283
	add		x5, x6, x5	# 283
	flw		f2, 0(x5)	# 283
	fmul	f2, f2, f2	# 8
	fadd	f1, f1, f2	# 283
	addi	x5, x0, 2	# 283
	mul		x5, x30, x5	# 283
	add		x5, x6, x5	# 283
	flw		f2, 0(x5)	# 283
	fmul	f2, f2, f2	# 8
	fadd	f1, f1, f2	# 283
	fsqrt	f1, f1	# 283
	fadd	f2, f0, f0	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.24635	# 1
	fadd	f1, f0, f16	# 284
	jal		x0, feq_cont.24634	# 1
feq_else.24635:
	flw		f2, -56(x2)	# 3
	flw		f3, -20(x2)	# 3
	fle		x31, f3, f2	# 3
	beq		x31, x0, fle_else.24637	# 3
	fadd	f2, f0, f18	# 284
	fdiv	f1, f2, f1	# 284
	jal		x0, fle_cont.24636	# 3
fle_else.24637:
	fadd	f2, f0, f16	# 284
	fdiv	f1, f2, f1	# 284
fle_cont.24636:
feq_cont.24634:
	addi	x5, x0, 0	# 285
	addi	x8, x0, 0	# 285
	mul		x8, x30, x8	# 285
	add		x8, x6, x8	# 285
	flw		f2, 0(x8)	# 285
	fmul	f2, f2, f1	# 285
	mul		x5, x30, x5	# 285
	add		x5, x6, x5	# 285
	fsw		f2, 0(x5)	# 285
	addi	x5, x0, 1	# 286
	addi	x8, x0, 1	# 286
	mul		x8, x30, x8	# 286
	add		x8, x6, x8	# 286
	flw		f2, 0(x8)	# 286
	fmul	f2, f2, f1	# 286
	mul		x5, x30, x5	# 286
	add		x5, x6, x5	# 286
	fsw		f2, 0(x5)	# 286
	addi	x5, x0, 2	# 287
	mul		x8, x30, x5	# 287
	add		x8, x6, x8	# 287
	flw		f2, 0(x8)	# 287
	fmul	f1, f2, f1	# 287
	mul		x5, x30, x5	# 287
	add		x5, x6, x5	# 287
	fsw		f1, 0(x5)	# 287
beq_cont.24632:
	jal		x0, beq_cont.24630	# 833
beq.24631:
	addi	x5, x0, 0	# 836
	mul		x5, x30, x5	# 836
	add		x5, x6, x5	# 836
	flw		f1, 0(x5)	# 836
	addi	x5, x0, 0	# 837
	fadd	f2, f0, f0	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.24639	# 1
	fadd	f1, f0, f0	# 837
	jal		x0, feq_cont.24638	# 1
feq_else.24639:
	fadd	f2, f0, f0	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.24641	# 1
	fadd	f2, f0, f0	# 212
	jal		x0, feq_cont.24640	# 1
feq_else.24641:
	fadd	f2, f0, f0	# 2
	fle		x31, f1, f2	# 2
	beq		x31, x0, fle_else.24643	# 2
	fadd	f2, f0, f18	# 214
	jal		x0, fle_cont.24642	# 2
fle_else.24643:
	fadd	f2, f0, f16	# 213
fle_cont.24642:
feq_cont.24640:
	fmul	f1, f1, f1	# 8
	fdiv	f1, f2, f1	# 837
feq_cont.24638:
	mul		x5, x30, x5	# 837
	add		x5, x6, x5	# 837
	fsw		f1, 0(x5)	# 837
	addi	x5, x0, 1	# 838
	mul		x5, x30, x5	# 838
	add		x5, x6, x5	# 838
	flw		f1, 0(x5)	# 838
	addi	x5, x0, 1	# 839
	fadd	f2, f0, f0	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.24645	# 1
	fadd	f1, f0, f0	# 839
	jal		x0, feq_cont.24644	# 1
feq_else.24645:
	fadd	f2, f0, f0	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.24647	# 1
	fadd	f2, f0, f0	# 212
	jal		x0, feq_cont.24646	# 1
feq_else.24647:
	fadd	f2, f0, f0	# 2
	fle		x31, f1, f2	# 2
	beq		x31, x0, fle_else.24649	# 2
	fadd	f2, f0, f18	# 214
	jal		x0, fle_cont.24648	# 2
fle_else.24649:
	fadd	f2, f0, f16	# 213
fle_cont.24648:
feq_cont.24646:
	fmul	f1, f1, f1	# 8
	fdiv	f1, f2, f1	# 839
feq_cont.24644:
	mul		x5, x30, x5	# 839
	add		x5, x6, x5	# 839
	fsw		f1, 0(x5)	# 839
	addi	x5, x0, 2	# 840
	mul		x5, x30, x5	# 840
	add		x5, x6, x5	# 840
	flw		f1, 0(x5)	# 840
	addi	x5, x0, 2	# 841
	fadd	f2, f0, f0	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.24651	# 1
	fadd	f1, f0, f0	# 841
	jal		x0, feq_cont.24650	# 1
feq_else.24651:
	fadd	f2, f0, f0	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.24653	# 1
	fadd	f2, f0, f0	# 212
	jal		x0, feq_cont.24652	# 1
feq_else.24653:
	fadd	f2, f0, f0	# 2
	fle		x31, f1, f2	# 2
	beq		x31, x0, fle_else.24655	# 2
	fadd	f2, f0, f18	# 214
	jal		x0, fle_cont.24654	# 2
fle_else.24655:
	fadd	f2, f0, f16	# 213
fle_cont.24654:
feq_cont.24652:
	fmul	f1, f1, f1	# 8
	fdiv	f1, f2, f1	# 841
feq_cont.24650:
	mul		x5, x30, x5	# 841
	add		x5, x6, x5	# 841
	fsw		f1, 0(x5)	# 841
beq_cont.24630:
	lw		x5, -16(x2)	# 849
	beq		x7, x5, beq_cont.24656	# 849
	lw		x29, 0(x2)	# 850
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -92(x2)	# 850
	addi	x2, x2, -96	# 850
	lw		x31, 0(x29)	# 850
	jalr	x1, x31, 0	# 850
	addi	x2, x2, 96	# 850
	lw		x1, -92(x2)	# 850
beq_cont.24656:
	addi	x4, x0, 1	# 853
	jalr	x0, x1, 0	# 853
beq.24624:
	addi	x4, x0, 0	# 856
	jalr	x0, x1, 0	# 856
read_object.2672.12942:
	lw		x5, 16(x29)	# 861
	lw		x6, 12(x29)	# 861
	lw		x7, 8(x29)	# 861
	lw		x8, 4(x29)	# 861
	ble		x6, x4, ble.24657	# 861
	sw		x29, 0(x2)	# 862
	sw		x8, -4(x2)	# 862
	sw		x4, -8(x2)	# 862
	sw		x7, -12(x2)	# 862
	addi	x29, x5, 0
	sw		x1, -16(x2)	# 862
	addi	x2, x2, -20	# 862
	lw		x31, 0(x29)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 20	# 862
	lw		x1, -16(x2)	# 862
	lw		x5, -12(x2)	# 862
	beq		x4, x5, beq.24658	# 862
	lw		x4, -4(x2)	# 863
	lw		x5, -8(x2)	# 863
	add		x4, x5, x4	# 863
	lw		x29, 0(x2)	# 863
	lw		x31, 0(x29)	# 863
	jalr	x0, x31, 0	# 863
beq.24658:
	addi	x4, x26, 0	# 865
	mul		x5, x30, x5	# 865
	add		x4, x4, x5	# 865
	lw		x5, -8(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.24657:
	jalr	x0, x1, 0	# 866
read_net_item.2676.12944:
	lw		x5, 8(x29)	# 877
	lw		x6, 4(x29)	# 877
	sw		x29, 0(x2)	# 877
	sw		x6, -4(x2)	# 877
	sw		x4, -8(x2)	# 877
	sw		x5, -12(x2)	# 877
	sw		x1, -16(x2)	# 877
	addi	x2, x2, -20	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 20	# 877
	lw		x1, -16(x2)	# 877
	lw		x5, -12(x2)	# 878
	beq		x4, x5, beq.24661	# 878
	lw		x5, -4(x2)	# 880
	lw		x6, -8(x2)	# 880
	add		x5, x6, x5	# 880
	lw		x29, 0(x2)	# 880
	sw		x4, -16(x2)	# 880
	addi	x4, x5, 0
	sw		x1, -20(x2)	# 880
	addi	x2, x2, -24	# 880
	lw		x31, 0(x29)	# 880
	jalr	x1, x31, 0	# 880
	addi	x2, x2, 24	# 880
	lw		x1, -20(x2)	# 880
	lw		x5, -8(x2)	# 881
	mul		x5, x30, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -16(x2)	# 881
	sw		x6, 0(x5)	# 881
	jalr	x0, x1, 0	# 881
beq.24661:
	lw		x4, -4(x2)	# 878
	lw		x6, -8(x2)	# 878
	add		x4, x6, x4	# 878
	jal		x0, min_caml_create_array	# 878
read_or_network.2678.12946:
	lw		x5, 16(x29)	# 885
	lw		x6, 12(x29)	# 885
	lw		x7, 8(x29)	# 885
	lw		x8, 4(x29)	# 885
	sw		x29, 0(x2)	# 885
	sw		x8, -4(x2)	# 885
	sw		x4, -8(x2)	# 885
	sw		x6, -12(x2)	# 885
	sw		x7, -16(x2)	# 885
	addi	x4, x7, 0
	addi	x29, x5, 0
	sw		x1, -20(x2)	# 885
	addi	x2, x2, -24	# 885
	lw		x31, 0(x29)	# 885
	jalr	x1, x31, 0	# 885
	addi	x2, x2, 24	# 885
	lw		x1, -20(x2)	# 885
	addi	x5, x4, 0	# 885
	lw		x4, -16(x2)	# 886
	mul		x4, x30, x4	# 886
	add		x4, x5, x4	# 886
	lw		x4, 0(x4)	# 886
	lw		x6, -12(x2)	# 886
	beq		x4, x6, beq.24662	# 886
	lw		x4, -4(x2)	# 889
	lw		x6, -8(x2)	# 889
	add		x4, x6, x4	# 889
	lw		x29, 0(x2)	# 889
	sw		x5, -20(x2)	# 889
	sw		x1, -24(x2)	# 889
	addi	x2, x2, -28	# 889
	lw		x31, 0(x29)	# 889
	jalr	x1, x31, 0	# 889
	addi	x2, x2, 28	# 889
	lw		x1, -24(x2)	# 889
	lw		x5, -8(x2)	# 890
	mul		x5, x30, x5	# 890
	add		x5, x4, x5	# 890
	lw		x6, -20(x2)	# 890
	sw		x6, 0(x5)	# 890
	jalr	x0, x1, 0	# 890
beq.24662:
	lw		x4, -4(x2)	# 887
	lw		x6, -8(x2)	# 887
	add		x4, x6, x4	# 887
	jal		x0, min_caml_create_array	# 887
read_and_network.2680.12948:
	lw		x5, 16(x29)	# 894
	lw		x6, 12(x29)	# 894
	lw		x7, 8(x29)	# 894
	lw		x8, 4(x29)	# 894
	sw		x29, 0(x2)	# 894
	sw		x8, -4(x2)	# 894
	sw		x4, -8(x2)	# 894
	sw		x6, -12(x2)	# 894
	sw		x7, -16(x2)	# 894
	addi	x4, x7, 0
	addi	x29, x5, 0
	sw		x1, -20(x2)	# 894
	addi	x2, x2, -24	# 894
	lw		x31, 0(x29)	# 894
	jalr	x1, x31, 0	# 894
	addi	x2, x2, 24	# 894
	lw		x1, -20(x2)	# 894
	lw		x5, -16(x2)	# 895
	mul		x5, x30, x5	# 895
	add		x5, x4, x5	# 895
	lw		x5, 0(x5)	# 895
	lw		x6, -12(x2)	# 895
	beq		x5, x6, beq.24663	# 895
	addi	x5, x26, 332	# 897
	lw		x6, -8(x2)	# 897
	mul		x7, x30, x6	# 897
	add		x5, x5, x7	# 897
	sw		x4, 0(x5)	# 897
	lw		x4, -4(x2)	# 898
	add		x4, x6, x4	# 898
	lw		x29, 0(x2)	# 898
	lw		x31, 0(x29)	# 898
	jalr	x0, x31, 0	# 898
beq.24663:
	jalr	x0, x1, 0	# 895
solver_rect.2693.12950:
	lw		x6, 16(x29)	# 928
	lw		x7, 12(x29)	# 928
	lw		x8, 8(x29)	# 928
	flw		f4, 4(x29)	# 928
	mul		x9, x30, x7	# 928
	add		x9, x5, x9	# 928
	flw		f5, 0(x9)	# 928
	feq		x31, f5, f4	# 1
	beq		x31, x0, feq_else.24666	# 1
	addi	x9, x0, 0	# 928
	jal		x0, feq_cont.24665	# 1
feq_else.24666:
	lw		x9, 16(x4)	# 421
	lw		x10, 24(x4)	# 373
	mul		x11, x30, x7	# 930
	add		x11, x5, x11	# 930
	flw		f5, 0(x11)	# 930
	fadd	f6, f0, f0	# 3
	fle		x31, f6, f5	# 3
	beq		x31, x0, fle_else.24668	# 3
	addi	x11, x0, 0	# 3
	jal		x0, fle_cont.24667	# 3
fle_else.24668:
	addi	x11, x0, 1	# 3
fle_cont.24667:
	beq		x10, x7, beq.24670	# 204
	fle		x31, f6, f5	# 3
	beq		x31, x0, fle_else.24672	# 3
	addi	x10, x0, 1	# 204
	jal		x0, fle_cont.24671	# 3
fle_else.24672:
	addi	x10, x0, 0	# 204
fle_cont.24671:
	jal		x0, beq_cont.24669	# 204
beq.24670:
	addi	x10, x11, 0	# 204
beq_cont.24669:
	mul		x11, x30, x7	# 930
	add		x11, x9, x11	# 930
	flw		f5, 0(x11)	# 930
	beq		x10, x7, beq.24674	# 219
	jal		x0, beq_cont.24673	# 219
beq.24674:
	fsub	f5, f0, f5	# 4
beq_cont.24673:
	fsub	f5, f5, f1	# 932
	mul		x10, x30, x7	# 932
	add		x10, x5, x10	# 932
	flw		f6, 0(x10)	# 932
	fdiv	f5, f5, f6	# 932
	mul		x10, x30, x8	# 933
	add		x10, x5, x10	# 933
	flw		f6, 0(x10)	# 933
	fmul	f6, f5, f6	# 933
	fadd	f6, f6, f2	# 933
	fadd	f7, f0, f0	# 5
	fle		x31, f6, f7	# 5
	beq		x31, x0, fle_cont.24675	# 5
	fsub	f6, f0, f6	# 5
fle_cont.24675:
	mul		x10, x30, x8	# 933
	add		x10, x9, x10	# 933
	flw		f7, 0(x10)	# 933
	fle		x31, f7, f6	# 6
	beq		x31, x0, fle_else.24677	# 6
	addi	x9, x0, 0	# 937
	jal		x0, fle_cont.24676	# 6
fle_else.24677:
	mul		x10, x30, x6	# 934
	add		x10, x5, x10	# 934
	flw		f6, 0(x10)	# 934
	fmul	f6, f5, f6	# 934
	fadd	f6, f6, f3	# 934
	fadd	f7, f0, f0	# 5
	fle		x31, f6, f7	# 5
	beq		x31, x0, fle_cont.24678	# 5
	fsub	f6, f0, f6	# 5
fle_cont.24678:
	mul		x10, x30, x6	# 934
	add		x9, x9, x10	# 934
	flw		f7, 0(x9)	# 934
	fle		x31, f7, f6	# 6
	beq		x31, x0, fle_else.24680	# 6
	addi	x9, x0, 0	# 936
	jal		x0, fle_cont.24679	# 6
fle_else.24680:
	addi	x9, x0, 0	# 935
	addi	x10, x26, 540	# 935
	mul		x9, x30, x9	# 935
	add		x9, x10, x9	# 935
	fsw		f5, 0(x9)	# 935
	addi	x9, x0, 1	# 935
fle_cont.24679:
fle_cont.24676:
feq_cont.24665:
	beq		x9, x7, beq.24681	# 943
	addi	x4, x0, 1	# 943
	jalr	x0, x1, 0	# 943
beq.24681:
	mul		x9, x30, x8	# 928
	add		x9, x5, x9	# 928
	flw		f5, 0(x9)	# 928
	feq		x31, f5, f4	# 1
	beq		x31, x0, feq_else.24683	# 1
	addi	x9, x0, 0	# 928
	jal		x0, feq_cont.24682	# 1
feq_else.24683:
	lw		x9, 16(x4)	# 421
	lw		x10, 24(x4)	# 373
	mul		x11, x30, x8	# 930
	add		x11, x5, x11	# 930
	flw		f5, 0(x11)	# 930
	fadd	f6, f0, f0	# 3
	fle		x31, f6, f5	# 3
	beq		x31, x0, fle_else.24685	# 3
	addi	x11, x0, 0	# 3
	jal		x0, fle_cont.24684	# 3
fle_else.24685:
	addi	x11, x0, 1	# 3
fle_cont.24684:
	beq		x10, x7, beq.24687	# 204
	fle		x31, f6, f5	# 3
	beq		x31, x0, fle_else.24689	# 3
	addi	x10, x0, 1	# 204
	jal		x0, fle_cont.24688	# 3
fle_else.24689:
	addi	x10, x0, 0	# 204
fle_cont.24688:
	jal		x0, beq_cont.24686	# 204
beq.24687:
	addi	x10, x11, 0	# 204
beq_cont.24686:
	mul		x11, x30, x8	# 930
	add		x11, x9, x11	# 930
	flw		f5, 0(x11)	# 930
	beq		x10, x7, beq.24691	# 219
	jal		x0, beq_cont.24690	# 219
beq.24691:
	fsub	f5, f0, f5	# 4
beq_cont.24690:
	fsub	f5, f5, f2	# 932
	mul		x10, x30, x8	# 932
	add		x10, x5, x10	# 932
	flw		f6, 0(x10)	# 932
	fdiv	f5, f5, f6	# 932
	mul		x10, x30, x6	# 933
	add		x10, x5, x10	# 933
	flw		f6, 0(x10)	# 933
	fmul	f6, f5, f6	# 933
	fadd	f6, f6, f3	# 933
	fadd	f7, f0, f0	# 5
	fle		x31, f6, f7	# 5
	beq		x31, x0, fle_cont.24692	# 5
	fsub	f6, f0, f6	# 5
fle_cont.24692:
	mul		x10, x30, x6	# 933
	add		x10, x9, x10	# 933
	flw		f7, 0(x10)	# 933
	fle		x31, f7, f6	# 6
	beq		x31, x0, fle_else.24694	# 6
	addi	x9, x0, 0	# 937
	jal		x0, fle_cont.24693	# 6
fle_else.24694:
	mul		x10, x30, x7	# 934
	add		x10, x5, x10	# 934
	flw		f6, 0(x10)	# 934
	fmul	f6, f5, f6	# 934
	fadd	f6, f6, f1	# 934
	fadd	f7, f0, f0	# 5
	fle		x31, f6, f7	# 5
	beq		x31, x0, fle_cont.24695	# 5
	fsub	f6, f0, f6	# 5
fle_cont.24695:
	mul		x10, x30, x7	# 934
	add		x9, x9, x10	# 934
	flw		f7, 0(x9)	# 934
	fle		x31, f7, f6	# 6
	beq		x31, x0, fle_else.24697	# 6
	addi	x9, x0, 0	# 936
	jal		x0, fle_cont.24696	# 6
fle_else.24697:
	addi	x9, x0, 0	# 935
	addi	x10, x26, 540	# 935
	mul		x9, x30, x9	# 935
	add		x9, x10, x9	# 935
	fsw		f5, 0(x9)	# 935
	addi	x9, x0, 1	# 935
fle_cont.24696:
fle_cont.24693:
feq_cont.24682:
	beq		x9, x7, beq.24698	# 944
	addi	x4, x0, 2	# 944
	jalr	x0, x1, 0	# 944
beq.24698:
	mul		x9, x30, x6	# 928
	add		x9, x5, x9	# 928
	flw		f5, 0(x9)	# 928
	feq		x31, f5, f4	# 1
	beq		x31, x0, feq_else.24700	# 1
	addi	x4, x0, 0	# 928
	jal		x0, feq_cont.24699	# 1
feq_else.24700:
	lw		x9, 16(x4)	# 421
	lw		x4, 24(x4)	# 373
	mul		x10, x30, x6	# 930
	add		x10, x5, x10	# 930
	flw		f4, 0(x10)	# 930
	fadd	f5, f0, f0	# 3
	fle		x31, f5, f4	# 3
	beq		x31, x0, fle_else.24702	# 3
	addi	x10, x0, 0	# 3
	jal		x0, fle_cont.24701	# 3
fle_else.24702:
	addi	x10, x0, 1	# 3
fle_cont.24701:
	beq		x4, x7, beq.24704	# 204
	fle		x31, f5, f4	# 3
	beq		x31, x0, fle_else.24706	# 3
	addi	x4, x0, 1	# 204
	jal		x0, fle_cont.24705	# 3
fle_else.24706:
	addi	x4, x0, 0	# 204
fle_cont.24705:
	jal		x0, beq_cont.24703	# 204
beq.24704:
	addi	x4, x10, 0	# 204
beq_cont.24703:
	mul		x10, x30, x6	# 930
	add		x10, x9, x10	# 930
	flw		f4, 0(x10)	# 930
	beq		x4, x7, beq.24708	# 219
	jal		x0, beq_cont.24707	# 219
beq.24708:
	fsub	f4, f0, f4	# 4
beq_cont.24707:
	fsub	f3, f4, f3	# 932
	mul		x4, x30, x6	# 932
	add		x4, x5, x4	# 932
	flw		f4, 0(x4)	# 932
	fdiv	f3, f3, f4	# 932
	mul		x4, x30, x7	# 933
	add		x4, x5, x4	# 933
	flw		f4, 0(x4)	# 933
	fmul	f4, f3, f4	# 933
	fadd	f1, f4, f1	# 933
	fadd	f4, f0, f0	# 5
	fle		x31, f1, f4	# 5
	beq		x31, x0, fle_cont.24709	# 5
	fsub	f1, f0, f1	# 5
fle_cont.24709:
	mul		x4, x30, x7	# 933
	add		x4, x9, x4	# 933
	flw		f4, 0(x4)	# 933
	fle		x31, f4, f1	# 6
	beq		x31, x0, fle_else.24711	# 6
	addi	x4, x0, 0	# 937
	jal		x0, fle_cont.24710	# 6
fle_else.24711:
	mul		x4, x30, x8	# 934
	add		x4, x5, x4	# 934
	flw		f1, 0(x4)	# 934
	fmul	f1, f3, f1	# 934
	fadd	f1, f1, f2	# 934
	fadd	f2, f0, f0	# 5
	fle		x31, f1, f2	# 5
	beq		x31, x0, fle_cont.24712	# 5
	fsub	f1, f0, f1	# 5
fle_cont.24712:
	mul		x4, x30, x8	# 934
	add		x4, x9, x4	# 934
	flw		f2, 0(x4)	# 934
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.24714	# 6
	addi	x4, x0, 0	# 936
	jal		x0, fle_cont.24713	# 6
fle_else.24714:
	addi	x4, x0, 0	# 935
	addi	x5, x26, 540	# 935
	mul		x4, x30, x4	# 935
	add		x4, x5, x4	# 935
	fsw		f3, 0(x4)	# 935
	addi	x4, x0, 1	# 935
fle_cont.24713:
fle_cont.24710:
feq_cont.24699:
	beq		x4, x7, beq.24715	# 945
	addi	x4, x0, 3	# 945
	jalr	x0, x1, 0	# 945
beq.24715:
	addi	x4, x0, 0	# 946
	jalr	x0, x1, 0	# 946
solver_second.2718.12956:
	lw		x6, 20(x29)	# 1006
	lw		x7, 16(x29)	# 1006
	lw		x8, 12(x29)	# 1006
	lw		x9, 8(x29)	# 1006
	flw		f4, 4(x29)	# 1006
	mul		x10, x30, x8	# 1006
	add		x10, x5, x10	# 1006
	flw		f5, 0(x10)	# 1006
	mul		x10, x30, x9	# 1006
	add		x10, x5, x10	# 1006
	flw		f6, 0(x10)	# 1006
	mul		x10, x30, x6	# 1006
	add		x5, x5, x10	# 1006
	flw		f7, 0(x5)	# 1006
	fmul	f8, f5, f5	# 8
	lw		x5, 16(x4)	# 391
	mul		x10, x30, x8	# 396
	add		x5, x5, x10	# 396
	flw		f9, 0(x5)	# 396
	fmul	f8, f8, f9	# 967
	fmul	f9, f6, f6	# 8
	lw		x5, 16(x4)	# 401
	mul		x10, x30, x9	# 406
	add		x5, x5, x10	# 406
	flw		f10, 0(x5)	# 406
	fmul	f9, f9, f10	# 967
	fadd	f8, f8, f9	# 967
	fmul	f9, f7, f7	# 8
	lw		x5, 16(x4)	# 411
	mul		x10, x30, x6	# 416
	add		x5, x5, x10	# 416
	flw		f10, 0(x5)	# 416
	fmul	f9, f9, f10	# 967
	fadd	f8, f8, f9	# 967
	lw		x5, 12(x4)	# 382
	beq		x5, x8, beq_cont.24716	# 969
	fmul	f9, f6, f7	# 973
	lw		x5, 36(x4)	# 511
	mul		x10, x30, x8	# 516
	add		x5, x5, x10	# 516
	flw		f10, 0(x5)	# 516
	fmul	f9, f9, f10	# 973
	fadd	f8, f8, f9	# 972
	fmul	f9, f7, f5	# 974
	lw		x5, 36(x4)	# 521
	mul		x10, x30, x9	# 526
	add		x5, x5, x10	# 526
	flw		f10, 0(x5)	# 526
	fmul	f9, f9, f10	# 974
	fadd	f8, f8, f9	# 972
	fmul	f9, f5, f6	# 975
	lw		x5, 36(x4)	# 531
	mul		x10, x30, x6	# 536
	add		x5, x5, x10	# 536
	flw		f10, 0(x5)	# 536
	fmul	f9, f9, f10	# 975
	fadd	f8, f8, f9	# 972
beq_cont.24716:
	feq		x31, f8, f4	# 1
	beq		x31, x0, feq_else.24717	# 1
	addi	x4, x0, 0	# 1009
	jalr	x0, x1, 0	# 1009
feq_else.24717:
	fmul	f9, f5, f1	# 981
	lw		x5, 16(x4)	# 391
	mul		x10, x30, x8	# 396
	add		x5, x5, x10	# 396
	flw		f10, 0(x5)	# 396
	fmul	f9, f9, f10	# 981
	fmul	f10, f6, f2	# 982
	lw		x5, 16(x4)	# 401
	mul		x10, x30, x9	# 406
	add		x5, x5, x10	# 406
	flw		f11, 0(x5)	# 406
	fmul	f10, f10, f11	# 982
	fadd	f9, f9, f10	# 981
	fmul	f10, f7, f3	# 983
	lw		x5, 16(x4)	# 411
	mul		x10, x30, x6	# 416
	add		x5, x5, x10	# 416
	flw		f11, 0(x5)	# 416
	fmul	f10, f10, f11	# 983
	fadd	f9, f9, f10	# 981
	lw		x5, 12(x4)	# 382
	beq		x5, x8, beq.24719	# 985
	fmul	f10, f7, f2	# 989
	fmul	f11, f6, f3	# 989
	fadd	f10, f10, f11	# 989
	lw		x5, 36(x4)	# 511
	mul		x10, x30, x8	# 516
	add		x5, x5, x10	# 516
	flw		f11, 0(x5)	# 516
	fmul	f10, f10, f11	# 989
	fmul	f11, f5, f3	# 990
	fmul	f7, f7, f1	# 990
	fadd	f7, f11, f7	# 990
	lw		x5, 36(x4)	# 521
	mul		x10, x30, x9	# 526
	add		x5, x5, x10	# 526
	flw		f11, 0(x5)	# 526
	fmul	f7, f7, f11	# 990
	fadd	f7, f10, f7	# 989
	fmul	f5, f5, f2	# 991
	fmul	f6, f6, f1	# 991
	fadd	f5, f5, f6	# 991
	lw		x5, 36(x4)	# 531
	mul		x10, x30, x6	# 536
	add		x5, x5, x10	# 536
	flw		f6, 0(x5)	# 536
	fmul	f5, f5, f6	# 991
	fadd	f5, f7, f5	# 989
	fadd	f6, f0, f17	# 7
	fmul	f5, f5, f6	# 7
	fadd	f5, f9, f5	# 988
	jal		x0, beq_cont.24718	# 985
beq.24719:
	fadd	f5, f0, f9	# 986
beq_cont.24718:
	fmul	f6, f1, f1	# 8
	lw		x5, 16(x4)	# 391
	mul		x10, x30, x8	# 396
	add		x5, x5, x10	# 396
	flw		f7, 0(x5)	# 396
	fmul	f6, f6, f7	# 967
	fmul	f7, f2, f2	# 8
	lw		x5, 16(x4)	# 401
	mul		x10, x30, x9	# 406
	add		x5, x5, x10	# 406
	flw		f9, 0(x5)	# 406
	fmul	f7, f7, f9	# 967
	fadd	f6, f6, f7	# 967
	fmul	f7, f3, f3	# 8
	lw		x5, 16(x4)	# 411
	mul		x10, x30, x6	# 416
	add		x5, x5, x10	# 416
	flw		f9, 0(x5)	# 416
	fmul	f7, f7, f9	# 967
	fadd	f6, f6, f7	# 967
	lw		x5, 12(x4)	# 382
	beq		x5, x8, beq.24721	# 969
	fmul	f7, f2, f3	# 973
	lw		x5, 36(x4)	# 511
	mul		x10, x30, x8	# 516
	add		x5, x5, x10	# 516
	flw		f9, 0(x5)	# 516
	fmul	f7, f7, f9	# 973
	fadd	f6, f6, f7	# 972
	fmul	f3, f3, f1	# 974
	lw		x5, 36(x4)	# 521
	mul		x9, x30, x9	# 526
	add		x5, x5, x9	# 526
	flw		f7, 0(x5)	# 526
	fmul	f3, f3, f7	# 974
	fadd	f3, f6, f3	# 972
	fmul	f1, f1, f2	# 975
	lw		x5, 36(x4)	# 531
	mul		x6, x30, x6	# 536
	add		x5, x5, x6	# 536
	flw		f2, 0(x5)	# 536
	fmul	f1, f1, f2	# 975
	fadd	f1, f3, f1	# 972
	jal		x0, beq_cont.24720	# 969
beq.24721:
	fadd	f1, f0, f6	# 970
beq_cont.24720:
	lw		x5, 4(x4)	# 353
	beq		x5, x7, beq.24723	# 1016
	jal		x0, beq_cont.24722	# 1016
beq.24723:
	fadd	f2, f0, f16	# 1016
	fsub	f1, f1, f2	# 1016
beq_cont.24722:
	fmul	f2, f5, f5	# 8
	fmul	f1, f8, f1	# 1018
	fsub	f1, f2, f1	# 1018
	fle		x31, f1, f4	# 2
	beq		x31, x0, fle_else.24724	# 2
	addi	x4, x0, 0	# 1026
	jalr	x0, x1, 0	# 1026
fle_else.24724:
	fsqrt	f1, f1	# 1021
	lw		x4, 24(x4)	# 373
	beq		x4, x8, beq.24726	# 1022
	jal		x0, beq_cont.24725	# 1022
beq.24726:
	fsub	f1, f0, f1	# 4
beq_cont.24725:
	fsub	f1, f1, f5	# 1023
	fdiv	f1, f1, f8	# 1023
	addi	x4, x26, 540	# 1023
	mul		x5, x30, x8	# 1023
	add		x4, x4, x5	# 1023
	fsw		f1, 0(x4)	# 1023
	addi	x4, x0, 1	# 1023
	jalr	x0, x1, 0	# 1023
solver_rect_fast.2728.12962:
	lw		x7, 24(x29)	# 1064
	lw		x8, 20(x29)	# 1064
	lw		x9, 16(x29)	# 1064
	lw		x10, 12(x29)	# 1064
	lw		x11, 8(x29)	# 1064
	flw		f4, 4(x29)	# 1064
	mul		x12, x30, x10	# 1064
	add		x12, x6, x12	# 1064
	flw		f5, 0(x12)	# 1064
	fsub	f5, f5, f1	# 1064
	mul		x12, x30, x11	# 1064
	add		x12, x6, x12	# 1064
	flw		f6, 0(x12)	# 1064
	fmul	f5, f5, f6	# 1064
	mul		x12, x30, x11	# 1066
	add		x12, x5, x12	# 1066
	flw		f7, 0(x12)	# 1066
	fmul	f8, f5, f7	# 1066
	fadd	f8, f8, f2	# 1066
	fle		x31, f8, f4	# 5
	beq		x31, x0, fle_cont.24727	# 5
	fsub	f8, f0, f8	# 5
fle_cont.24727:
	lw		x12, 16(x4)	# 401
	mul		x13, x30, x11	# 406
	add		x12, x12, x13	# 406
	flw		f9, 0(x12)	# 406
	fle		x31, f9, f8	# 6
	beq		x31, x0, fle_else.24729	# 6
	addi	x12, x0, 0	# 1070
	jal		x0, fle_cont.24728	# 6
fle_else.24729:
	mul		x12, x30, x8	# 1067
	add		x12, x5, x12	# 1067
	flw		f8, 0(x12)	# 1067
	fmul	f8, f5, f8	# 1067
	fadd	f8, f8, f3	# 1067
	fle		x31, f8, f4	# 5
	beq		x31, x0, fle_cont.24730	# 5
	fsub	f8, f0, f8	# 5
fle_cont.24730:
	lw		x12, 16(x4)	# 411
	mul		x13, x30, x8	# 416
	add		x12, x12, x13	# 416
	flw		f9, 0(x12)	# 416
	fle		x31, f9, f8	# 6
	beq		x31, x0, fle_else.24732	# 6
	addi	x12, x0, 0	# 1069
	jal		x0, fle_cont.24731	# 6
fle_else.24732:
	feq		x31, f6, f4	# 1
	beq		x31, x0, feq_else.24734	# 1
	addi	x12, x0, 0	# 1068
	jal		x0, feq_cont.24733	# 1
feq_else.24734:
	addi	x12, x0, 1	# 1068
feq_cont.24733:
fle_cont.24731:
fle_cont.24728:
	beq		x12, x10, beq.24735	# 1065
	addi	x4, x26, 540	# 1072
	mul		x5, x30, x10	# 1072
	add		x4, x4, x5	# 1072
	fsw		f5, 0(x4)	# 1072
	addi	x4, x0, 1	# 1072
	jalr	x0, x1, 0	# 1072
beq.24735:
	mul		x12, x30, x8	# 1073
	add		x12, x6, x12	# 1073
	flw		f5, 0(x12)	# 1073
	fsub	f5, f5, f2	# 1073
	mul		x9, x30, x9	# 1073
	add		x9, x6, x9	# 1073
	flw		f6, 0(x9)	# 1073
	fmul	f5, f5, f6	# 1073
	mul		x9, x30, x10	# 1075
	add		x9, x5, x9	# 1075
	flw		f8, 0(x9)	# 1075
	fmul	f9, f5, f8	# 1075
	fadd	f9, f9, f1	# 1075
	fle		x31, f9, f4	# 5
	beq		x31, x0, fle_cont.24736	# 5
	fsub	f9, f0, f9	# 5
fle_cont.24736:
	lw		x9, 16(x4)	# 391
	mul		x12, x30, x10	# 396
	add		x9, x9, x12	# 396
	flw		f10, 0(x9)	# 396
	fle		x31, f10, f9	# 6
	beq		x31, x0, fle_else.24738	# 6
	addi	x5, x0, 0	# 1079
	jal		x0, fle_cont.24737	# 6
fle_else.24738:
	mul		x9, x30, x8	# 1076
	add		x5, x5, x9	# 1076
	flw		f9, 0(x5)	# 1076
	fmul	f9, f5, f9	# 1076
	fadd	f9, f9, f3	# 1076
	fle		x31, f9, f4	# 5
	beq		x31, x0, fle_cont.24739	# 5
	fsub	f9, f0, f9	# 5
fle_cont.24739:
	lw		x5, 16(x4)	# 411
	mul		x8, x30, x8	# 416
	add		x5, x5, x8	# 416
	flw		f10, 0(x5)	# 416
	fle		x31, f10, f9	# 6
	beq		x31, x0, fle_else.24741	# 6
	addi	x5, x0, 0	# 1078
	jal		x0, fle_cont.24740	# 6
fle_else.24741:
	feq		x31, f6, f4	# 1
	beq		x31, x0, feq_else.24743	# 1
	addi	x5, x0, 0	# 1077
	jal		x0, feq_cont.24742	# 1
feq_else.24743:
	addi	x5, x0, 1	# 1077
feq_cont.24742:
fle_cont.24740:
fle_cont.24737:
	beq		x5, x10, beq.24744	# 1074
	addi	x4, x26, 540	# 1081
	mul		x5, x30, x10	# 1081
	add		x4, x4, x5	# 1081
	fsw		f5, 0(x4)	# 1081
	addi	x4, x0, 2	# 1081
	jalr	x0, x1, 0	# 1081
beq.24744:
	addi	x5, x0, 4	# 1082
	mul		x5, x30, x5	# 1082
	add		x5, x6, x5	# 1082
	flw		f5, 0(x5)	# 1082
	fsub	f3, f5, f3	# 1082
	mul		x5, x30, x7	# 1082
	add		x5, x6, x5	# 1082
	flw		f5, 0(x5)	# 1082
	fmul	f3, f3, f5	# 1082
	fmul	f6, f3, f8	# 1084
	fadd	f1, f6, f1	# 1084
	fle		x31, f1, f4	# 5
	beq		x31, x0, fle_cont.24745	# 5
	fsub	f1, f0, f1	# 5
fle_cont.24745:
	lw		x5, 16(x4)	# 391
	mul		x6, x30, x10	# 396
	add		x5, x5, x6	# 396
	flw		f6, 0(x5)	# 396
	fle		x31, f6, f1	# 6
	beq		x31, x0, fle_else.24747	# 6
	addi	x4, x0, 0	# 1088
	jal		x0, fle_cont.24746	# 6
fle_else.24747:
	fmul	f1, f3, f7	# 1085
	fadd	f1, f1, f2	# 1085
	fle		x31, f1, f4	# 5
	beq		x31, x0, fle_cont.24748	# 5
	fsub	f1, f0, f1	# 5
fle_cont.24748:
	lw		x4, 16(x4)	# 401
	mul		x5, x30, x11	# 406
	add		x4, x4, x5	# 406
	flw		f2, 0(x4)	# 406
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.24750	# 6
	addi	x4, x0, 0	# 1087
	jal		x0, fle_cont.24749	# 6
fle_else.24750:
	feq		x31, f5, f4	# 1
	beq		x31, x0, feq_else.24752	# 1
	addi	x4, x0, 0	# 1086
	jal		x0, feq_cont.24751	# 1
feq_else.24752:
	addi	x4, x0, 1	# 1086
feq_cont.24751:
fle_cont.24749:
fle_cont.24746:
	beq		x4, x10, beq.24753	# 1083
	addi	x4, x26, 540	# 1090
	mul		x5, x30, x10	# 1090
	add		x4, x4, x5	# 1090
	fsw		f3, 0(x4)	# 1090
	addi	x4, x0, 3	# 1090
	jalr	x0, x1, 0	# 1090
beq.24753:
	addi	x4, x0, 0	# 1092
	jalr	x0, x1, 0	# 1092
solver_second_fast.2741.12969:
	lw		x6, 20(x29)	# 1107
	lw		x7, 16(x29)	# 1107
	lw		x8, 12(x29)	# 1107
	lw		x9, 8(x29)	# 1107
	flw		f4, 4(x29)	# 1107
	mul		x10, x30, x8	# 1107
	add		x10, x5, x10	# 1107
	flw		f5, 0(x10)	# 1107
	feq		x31, f5, f4	# 1
	beq		x31, x0, feq_else.24754	# 1
	addi	x4, x0, 0	# 1109
	jalr	x0, x1, 0	# 1109
feq_else.24754:
	mul		x10, x30, x9	# 1111
	add		x10, x5, x10	# 1111
	flw		f6, 0(x10)	# 1111
	fmul	f6, f6, f1	# 1111
	mul		x10, x30, x6	# 1111
	add		x10, x5, x10	# 1111
	flw		f7, 0(x10)	# 1111
	fmul	f7, f7, f2	# 1111
	fadd	f6, f6, f7	# 1111
	mul		x10, x30, x7	# 1111
	add		x10, x5, x10	# 1111
	flw		f7, 0(x10)	# 1111
	fmul	f7, f7, f3	# 1111
	fadd	f6, f6, f7	# 1111
	fmul	f7, f1, f1	# 8
	lw		x10, 16(x4)	# 391
	mul		x11, x30, x8	# 396
	add		x10, x10, x11	# 396
	flw		f8, 0(x10)	# 396
	fmul	f7, f7, f8	# 967
	fmul	f8, f2, f2	# 8
	lw		x10, 16(x4)	# 401
	mul		x11, x30, x9	# 406
	add		x10, x10, x11	# 406
	flw		f9, 0(x10)	# 406
	fmul	f8, f8, f9	# 967
	fadd	f7, f7, f8	# 967
	fmul	f8, f3, f3	# 8
	lw		x10, 16(x4)	# 411
	mul		x11, x30, x6	# 416
	add		x10, x10, x11	# 416
	flw		f9, 0(x10)	# 416
	fmul	f8, f8, f9	# 967
	fadd	f7, f7, f8	# 967
	lw		x10, 12(x4)	# 382
	beq		x10, x8, beq.24756	# 969
	fmul	f8, f2, f3	# 973
	lw		x10, 36(x4)	# 511
	mul		x11, x30, x8	# 516
	add		x10, x10, x11	# 516
	flw		f9, 0(x10)	# 516
	fmul	f8, f8, f9	# 973
	fadd	f7, f7, f8	# 972
	fmul	f3, f3, f1	# 974
	lw		x10, 36(x4)	# 521
	mul		x9, x30, x9	# 526
	add		x9, x10, x9	# 526
	flw		f8, 0(x9)	# 526
	fmul	f3, f3, f8	# 974
	fadd	f3, f7, f3	# 972
	fmul	f1, f1, f2	# 975
	lw		x9, 36(x4)	# 531
	mul		x6, x30, x6	# 536
	add		x6, x9, x6	# 536
	flw		f2, 0(x6)	# 536
	fmul	f1, f1, f2	# 975
	fadd	f1, f3, f1	# 972
	jal		x0, beq_cont.24755	# 969
beq.24756:
	fadd	f1, f0, f7	# 970
beq_cont.24755:
	lw		x6, 4(x4)	# 353
	beq		x6, x7, beq.24758	# 1113
	jal		x0, beq_cont.24757	# 1113
beq.24758:
	fadd	f2, f0, f16	# 1113
	fsub	f1, f1, f2	# 1113
beq_cont.24757:
	fmul	f2, f6, f6	# 8
	fmul	f1, f5, f1	# 1114
	fsub	f1, f2, f1	# 1114
	fle		x31, f1, f4	# 2
	beq		x31, x0, fle_else.24759	# 2
	addi	x4, x0, 0	# 1121
	jalr	x0, x1, 0	# 1121
fle_else.24759:
	lw		x4, 24(x4)	# 373
	beq		x4, x8, beq.24761	# 1116
	addi	x4, x0, 0	# 1117
	fsqrt	f1, f1	# 1117
	fadd	f1, f6, f1	# 1117
	addi	x6, x0, 4	# 1117
	mul		x6, x30, x6	# 1117
	add		x5, x5, x6	# 1117
	flw		f2, 0(x5)	# 1117
	fmul	f1, f1, f2	# 1117
	addi	x5, x26, 540	# 1117
	mul		x4, x30, x4	# 1117
	add		x4, x5, x4	# 1117
	fsw		f1, 0(x4)	# 1117
	jal		x0, beq_cont.24760	# 1116
beq.24761:
	addi	x4, x0, 0	# 1119
	fsqrt	f1, f1	# 1119
	fsub	f1, f6, f1	# 1119
	addi	x6, x0, 4	# 1119
	mul		x6, x30, x6	# 1119
	add		x5, x5, x6	# 1119
	flw		f2, 0(x5)	# 1119
	fmul	f1, f1, f2	# 1119
	addi	x5, x26, 540	# 1119
	mul		x4, x30, x4	# 1119
	add		x4, x5, x4	# 1119
	fsw		f1, 0(x4)	# 1119
beq_cont.24760:
	addi	x4, x0, 1	# 1120
	jalr	x0, x1, 0	# 1120
setup_rect_table.2768.12975:
	lw		x6, 16(x29)	# 1195
	lw		x7, 12(x29)	# 1195
	lw		x8, 8(x29)	# 1195
	flw		f1, 4(x29)	# 1195
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
	lw		x5, -20(x2)	# 1197
	mul		x5, x30, x5	# 1197
	lw		x6, -16(x2)	# 1197
	add		x5, x6, x5	# 1197
	flw		f1, 0(x5)	# 1197
	flw		f2, -12(x2)	# 1
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.24763	# 1
	addi	x5, x0, 1	# 1198
	fadd	f1, f0, f0	# 1198
	mul		x5, x30, x5	# 1198
	add		x5, x4, x5	# 1198
	fsw		f1, 0(x5)	# 1198
	jal		x0, feq_cont.24762	# 1
feq_else.24763:
	addi	x5, x0, 0	# 1201
	lw		x7, -8(x2)	# 373
	lw		x8, 24(x7)	# 373
	addi	x9, x0, 0	# 1201
	mul		x9, x30, x9	# 1201
	add		x9, x6, x9	# 1201
	flw		f1, 0(x9)	# 1201
	fadd	f3, f0, f0	# 3
	fle		x31, f3, f1	# 3
	beq		x31, x0, fle_else.24765	# 3
	addi	x9, x0, 0	# 3
	jal		x0, fle_cont.24764	# 3
fle_else.24765:
	addi	x9, x0, 1	# 3
fle_cont.24764:
	addi	x10, x0, 0	# 204
	beq		x8, x10, beq.24767	# 204
	fle		x31, f3, f1	# 3
	beq		x31, x0, fle_else.24769	# 3
	addi	x8, x0, 1	# 204
	jal		x0, fle_cont.24768	# 3
fle_else.24769:
	addi	x8, x0, 0	# 204
fle_cont.24768:
	jal		x0, beq_cont.24766	# 204
beq.24767:
	addi	x8, x9, 0	# 204
beq_cont.24766:
	lw		x9, 16(x7)	# 391
	addi	x10, x0, 0	# 396
	mul		x10, x30, x10	# 396
	add		x9, x9, x10	# 396
	flw		f1, 0(x9)	# 396
	addi	x9, x0, 0	# 219
	beq		x8, x9, beq.24771	# 219
	jal		x0, beq_cont.24770	# 219
beq.24771:
	fsub	f1, f0, f1	# 4
beq_cont.24770:
	mul		x5, x30, x5	# 1201
	add		x5, x4, x5	# 1201
	fsw		f1, 0(x5)	# 1201
	addi	x5, x0, 1	# 1203
	fadd	f1, f0, f16	# 1203
	addi	x8, x0, 0	# 1203
	mul		x8, x30, x8	# 1203
	add		x8, x6, x8	# 1203
	flw		f3, 0(x8)	# 1203
	fdiv	f1, f1, f3	# 1203
	mul		x5, x30, x5	# 1203
	add		x5, x4, x5	# 1203
	fsw		f1, 0(x5)	# 1203
feq_cont.24762:
	lw		x5, -4(x2)	# 1205
	mul		x5, x30, x5	# 1205
	add		x5, x6, x5	# 1205
	flw		f1, 0(x5)	# 1205
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.24773	# 1
	addi	x5, x0, 3	# 1206
	fadd	f1, f0, f0	# 1206
	mul		x5, x30, x5	# 1206
	add		x5, x4, x5	# 1206
	fsw		f1, 0(x5)	# 1206
	jal		x0, feq_cont.24772	# 1
feq_else.24773:
	addi	x5, x0, 2	# 1208
	lw		x7, -8(x2)	# 373
	lw		x8, 24(x7)	# 373
	addi	x9, x0, 1	# 1208
	mul		x9, x30, x9	# 1208
	add		x9, x6, x9	# 1208
	flw		f1, 0(x9)	# 1208
	fadd	f3, f0, f0	# 3
	fle		x31, f3, f1	# 3
	beq		x31, x0, fle_else.24775	# 3
	addi	x9, x0, 0	# 3
	jal		x0, fle_cont.24774	# 3
fle_else.24775:
	addi	x9, x0, 1	# 3
fle_cont.24774:
	addi	x10, x0, 0	# 204
	beq		x8, x10, beq.24777	# 204
	fle		x31, f3, f1	# 3
	beq		x31, x0, fle_else.24779	# 3
	addi	x8, x0, 1	# 204
	jal		x0, fle_cont.24778	# 3
fle_else.24779:
	addi	x8, x0, 0	# 204
fle_cont.24778:
	jal		x0, beq_cont.24776	# 204
beq.24777:
	addi	x8, x9, 0	# 204
beq_cont.24776:
	lw		x9, 16(x7)	# 401
	addi	x10, x0, 1	# 406
	mul		x10, x30, x10	# 406
	add		x9, x9, x10	# 406
	flw		f1, 0(x9)	# 406
	addi	x9, x0, 0	# 219
	beq		x8, x9, beq.24781	# 219
	jal		x0, beq_cont.24780	# 219
beq.24781:
	fsub	f1, f0, f1	# 4
beq_cont.24780:
	mul		x5, x30, x5	# 1208
	add		x5, x4, x5	# 1208
	fsw		f1, 0(x5)	# 1208
	addi	x5, x0, 3	# 1209
	fadd	f1, f0, f16	# 1209
	addi	x8, x0, 1	# 1209
	mul		x8, x30, x8	# 1209
	add		x8, x6, x8	# 1209
	flw		f3, 0(x8)	# 1209
	fdiv	f1, f1, f3	# 1209
	mul		x5, x30, x5	# 1209
	add		x5, x4, x5	# 1209
	fsw		f1, 0(x5)	# 1209
feq_cont.24772:
	lw		x5, 0(x2)	# 1211
	mul		x5, x30, x5	# 1211
	add		x5, x6, x5	# 1211
	flw		f1, 0(x5)	# 1211
	feq		x31, f1, f2	# 1
	beq		x31, x0, feq_else.24783	# 1
	addi	x5, x0, 5	# 1212
	fadd	f1, f0, f0	# 1212
	mul		x5, x30, x5	# 1212
	add		x5, x4, x5	# 1212
	fsw		f1, 0(x5)	# 1212
	jal		x0, feq_cont.24782	# 1
feq_else.24783:
	addi	x5, x0, 4	# 1214
	lw		x7, -8(x2)	# 373
	lw		x8, 24(x7)	# 373
	addi	x9, x0, 2	# 1214
	mul		x9, x30, x9	# 1214
	add		x9, x6, x9	# 1214
	flw		f1, 0(x9)	# 1214
	fadd	f2, f0, f0	# 3
	fle		x31, f2, f1	# 3
	beq		x31, x0, fle_else.24785	# 3
	addi	x9, x0, 0	# 3
	jal		x0, fle_cont.24784	# 3
fle_else.24785:
	addi	x9, x0, 1	# 3
fle_cont.24784:
	addi	x10, x0, 0	# 204
	beq		x8, x10, beq.24787	# 204
	fle		x31, f2, f1	# 3
	beq		x31, x0, fle_else.24789	# 3
	addi	x8, x0, 1	# 204
	jal		x0, fle_cont.24788	# 3
fle_else.24789:
	addi	x8, x0, 0	# 204
fle_cont.24788:
	jal		x0, beq_cont.24786	# 204
beq.24787:
	addi	x8, x9, 0	# 204
beq_cont.24786:
	lw		x7, 16(x7)	# 411
	addi	x9, x0, 2	# 416
	mul		x9, x30, x9	# 416
	add		x7, x7, x9	# 416
	flw		f1, 0(x7)	# 416
	addi	x7, x0, 0	# 219
	beq		x8, x7, beq.24791	# 219
	jal		x0, beq_cont.24790	# 219
beq.24791:
	fsub	f1, f0, f1	# 4
beq_cont.24790:
	mul		x5, x30, x5	# 1214
	add		x5, x4, x5	# 1214
	fsw		f1, 0(x5)	# 1214
	addi	x5, x0, 5	# 1215
	fadd	f1, f0, f16	# 1215
	addi	x7, x0, 2	# 1215
	mul		x7, x30, x7	# 1215
	add		x6, x6, x7	# 1215
	flw		f2, 0(x6)	# 1215
	fdiv	f1, f1, f2	# 1215
	mul		x5, x30, x5	# 1215
	add		x5, x4, x5	# 1215
	fsw		f1, 0(x5)	# 1215
feq_cont.24782:
	jalr	x0, x1, 0	# 1217
setup_surface_table.2771.12978:
	lw		x6, 16(x29)	# 1222
	lw		x7, 12(x29)	# 1222
	lw		x8, 8(x29)	# 1222
	flw		f1, 4(x29)	# 1222
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
	lw		x5, -20(x2)	# 1224
	mul		x6, x30, x5	# 1224
	lw		x7, -16(x2)	# 1224
	add		x6, x7, x6	# 1224
	flw		f1, 0(x6)	# 1224
	lw		x6, -12(x2)	# 391
	lw		x8, 16(x6)	# 391
	mul		x5, x30, x5	# 396
	add		x5, x8, x5	# 396
	flw		f2, 0(x5)	# 396
	fmul	f1, f1, f2	# 1224
	lw		x5, -8(x2)	# 1224
	mul		x8, x30, x5	# 1224
	add		x8, x7, x8	# 1224
	flw		f2, 0(x8)	# 1224
	lw		x8, 16(x6)	# 401
	mul		x5, x30, x5	# 406
	add		x5, x8, x5	# 406
	flw		f3, 0(x5)	# 406
	fmul	f2, f2, f3	# 1224
	fadd	f1, f1, f2	# 1224
	lw		x5, -4(x2)	# 1224
	mul		x8, x30, x5	# 1224
	add		x7, x7, x8	# 1224
	flw		f2, 0(x7)	# 1224
	lw		x7, 16(x6)	# 411
	mul		x5, x30, x5	# 416
	add		x5, x7, x5	# 416
	flw		f3, 0(x5)	# 416
	fmul	f2, f2, f3	# 1224
	fadd	f1, f1, f2	# 1224
	flw		f2, 0(x2)	# 2
	fle		x31, f1, f2	# 2
	beq		x31, x0, fle_else.24793	# 2
	addi	x5, x0, 0	# 1234
	fadd	f1, f0, f0	# 1234
	mul		x5, x30, x5	# 1234
	add		x5, x4, x5	# 1234
	fsw		f1, 0(x5)	# 1234
	jal		x0, fle_cont.24792	# 2
fle_else.24793:
	addi	x5, x0, 0	# 1228
	fadd	f2, f0, f18	# 1228
	fdiv	f2, f2, f1	# 1228
	mul		x5, x30, x5	# 1228
	add		x5, x4, x5	# 1228
	fsw		f2, 0(x5)	# 1228
	addi	x5, x0, 1	# 1230
	lw		x7, 16(x6)	# 391
	addi	x8, x0, 0	# 396
	mul		x8, x30, x8	# 396
	add		x7, x7, x8	# 396
	flw		f2, 0(x7)	# 396
	fdiv	f2, f2, f1	# 1230
	fsub	f2, f0, f2	# 4
	mul		x5, x30, x5	# 1230
	add		x5, x4, x5	# 1230
	fsw		f2, 0(x5)	# 1230
	addi	x5, x0, 2	# 1231
	lw		x7, 16(x6)	# 401
	addi	x8, x0, 1	# 406
	mul		x8, x30, x8	# 406
	add		x7, x7, x8	# 406
	flw		f2, 0(x7)	# 406
	fdiv	f2, f2, f1	# 1231
	fsub	f2, f0, f2	# 4
	mul		x5, x30, x5	# 1231
	add		x5, x4, x5	# 1231
	fsw		f2, 0(x5)	# 1231
	addi	x5, x0, 3	# 1232
	lw		x6, 16(x6)	# 411
	addi	x7, x0, 2	# 416
	mul		x7, x30, x7	# 416
	add		x6, x6, x7	# 416
	flw		f2, 0(x6)	# 416
	fdiv	f1, f2, f1	# 1232
	fsub	f1, f0, f1	# 4
	mul		x5, x30, x5	# 1232
	add		x5, x4, x5	# 1232
	fsw		f1, 0(x5)	# 1232
fle_cont.24792:
	jalr	x0, x1, 0	# 1235
setup_second_table.2774.12981:
	lw		x6, 20(x29)	# 1241
	lw		x7, 16(x29)	# 1241
	lw		x8, 12(x29)	# 1241
	lw		x9, 8(x29)	# 1241
	flw		f1, 4(x29)	# 1241
	fsw		f1, 0(x2)	# 1241
	sw		x5, -4(x2)	# 1241
	sw		x7, -8(x2)	# 1241
	sw		x9, -12(x2)	# 1241
	sw		x4, -16(x2)	# 1241
	sw		x8, -20(x2)	# 1241
	addi	x4, x6, 0
	sw		x1, -24(x2)	# 1241
	addi	x2, x2, -28	# 1241
	jal		x1, min_caml_create_float_array	# 1241
	addi	x2, x2, 28	# 1241
	lw		x1, -24(x2)	# 1241
	lw		x5, -20(x2)	# 1243
	mul		x6, x30, x5	# 1243
	lw		x7, -16(x2)	# 1243
	add		x6, x7, x6	# 1243
	flw		f1, 0(x6)	# 1243
	lw		x6, -12(x2)	# 1243
	mul		x8, x30, x6	# 1243
	add		x8, x7, x8	# 1243
	flw		f2, 0(x8)	# 1243
	lw		x8, -8(x2)	# 1243
	mul		x9, x30, x8	# 1243
	add		x9, x7, x9	# 1243
	flw		f3, 0(x9)	# 1243
	fmul	f4, f1, f1	# 8
	lw		x9, -4(x2)	# 391
	lw		x10, 16(x9)	# 391
	mul		x11, x30, x5	# 396
	add		x10, x10, x11	# 396
	flw		f5, 0(x10)	# 396
	fmul	f4, f4, f5	# 967
	fmul	f5, f2, f2	# 8
	lw		x10, 16(x9)	# 401
	mul		x11, x30, x6	# 406
	add		x10, x10, x11	# 406
	flw		f6, 0(x10)	# 406
	fmul	f5, f5, f6	# 967
	fadd	f4, f4, f5	# 967
	fmul	f5, f3, f3	# 8
	lw		x10, 16(x9)	# 411
	mul		x11, x30, x8	# 416
	add		x10, x10, x11	# 416
	flw		f6, 0(x10)	# 416
	fmul	f5, f5, f6	# 967
	fadd	f4, f4, f5	# 967
	lw		x10, 12(x9)	# 382
	beq		x10, x5, beq_cont.24794	# 969
	fmul	f5, f2, f3	# 973
	lw		x10, 36(x9)	# 511
	mul		x11, x30, x5	# 516
	add		x10, x10, x11	# 516
	flw		f6, 0(x10)	# 516
	fmul	f5, f5, f6	# 973
	fadd	f4, f4, f5	# 972
	fmul	f5, f3, f1	# 974
	lw		x10, 36(x9)	# 521
	mul		x11, x30, x6	# 526
	add		x10, x10, x11	# 526
	flw		f6, 0(x10)	# 526
	fmul	f5, f5, f6	# 974
	fadd	f4, f4, f5	# 972
	fmul	f5, f1, f2	# 975
	lw		x10, 36(x9)	# 531
	mul		x11, x30, x8	# 536
	add		x10, x10, x11	# 536
	flw		f6, 0(x10)	# 536
	fmul	f5, f5, f6	# 975
	fadd	f4, f4, f5	# 972
beq_cont.24794:
	lw		x10, 16(x9)	# 391
	mul		x11, x30, x5	# 396
	add		x10, x10, x11	# 396
	flw		f5, 0(x10)	# 396
	fmul	f1, f1, f5	# 1244
	fsub	f1, f0, f1	# 4
	lw		x10, 16(x9)	# 401
	mul		x6, x30, x6	# 406
	add		x6, x10, x6	# 406
	flw		f5, 0(x6)	# 406
	fmul	f2, f2, f5	# 1245
	fsub	f2, f0, f2	# 4
	lw		x6, 16(x9)	# 411
	mul		x8, x30, x8	# 416
	add		x6, x6, x8	# 416
	flw		f5, 0(x6)	# 416
	fmul	f3, f3, f5	# 1246
	fsub	f3, f0, f3	# 4
	mul		x6, x30, x5	# 1248
	add		x6, x4, x6	# 1248
	fsw		f4, 0(x6)	# 1248
	lw		x6, 12(x9)	# 382
	beq		x6, x5, beq.24796	# 1252
	addi	x5, x0, 1	# 1253
	addi	x6, x0, 2	# 1253
	mul		x6, x30, x6	# 1253
	add		x6, x7, x6	# 1253
	flw		f5, 0(x6)	# 1253
	lw		x6, 36(x9)	# 521
	addi	x8, x0, 1	# 526
	mul		x8, x30, x8	# 526
	add		x6, x6, x8	# 526
	flw		f6, 0(x6)	# 526
	fmul	f5, f5, f6	# 1253
	addi	x6, x0, 1	# 1253
	mul		x6, x30, x6	# 1253
	add		x6, x7, x6	# 1253
	flw		f6, 0(x6)	# 1253
	lw		x6, 36(x9)	# 531
	addi	x8, x0, 2	# 536
	mul		x8, x30, x8	# 536
	add		x6, x6, x8	# 536
	flw		f7, 0(x6)	# 536
	fmul	f6, f6, f7	# 1253
	fadd	f5, f5, f6	# 1253
	fadd	f6, f0, f17	# 7
	fmul	f5, f5, f6	# 7
	fsub	f1, f1, f5	# 1253
	mul		x5, x30, x5	# 1253
	add		x5, x4, x5	# 1253
	fsw		f1, 0(x5)	# 1253
	addi	x5, x0, 2	# 1254
	addi	x6, x0, 2	# 1254
	mul		x6, x30, x6	# 1254
	add		x6, x7, x6	# 1254
	flw		f1, 0(x6)	# 1254
	lw		x6, 36(x9)	# 511
	addi	x8, x0, 0	# 516
	mul		x8, x30, x8	# 516
	add		x6, x6, x8	# 516
	flw		f5, 0(x6)	# 516
	fmul	f1, f1, f5	# 1254
	addi	x6, x0, 0	# 1254
	mul		x6, x30, x6	# 1254
	add		x6, x7, x6	# 1254
	flw		f5, 0(x6)	# 1254
	lw		x6, 36(x9)	# 531
	addi	x8, x0, 2	# 536
	mul		x8, x30, x8	# 536
	add		x6, x6, x8	# 536
	flw		f6, 0(x6)	# 536
	fmul	f5, f5, f6	# 1254
	fadd	f1, f1, f5	# 1254
	fadd	f5, f0, f17	# 7
	fmul	f1, f1, f5	# 7
	fsub	f1, f2, f1	# 1254
	mul		x5, x30, x5	# 1254
	add		x5, x4, x5	# 1254
	fsw		f1, 0(x5)	# 1254
	addi	x5, x0, 3	# 1255
	addi	x6, x0, 1	# 1255
	mul		x6, x30, x6	# 1255
	add		x6, x7, x6	# 1255
	flw		f1, 0(x6)	# 1255
	lw		x6, 36(x9)	# 511
	addi	x8, x0, 0	# 516
	mul		x8, x30, x8	# 516
	add		x6, x6, x8	# 516
	flw		f2, 0(x6)	# 516
	fmul	f1, f1, f2	# 1255
	addi	x6, x0, 0	# 1255
	mul		x6, x30, x6	# 1255
	add		x6, x7, x6	# 1255
	flw		f2, 0(x6)	# 1255
	lw		x6, 36(x9)	# 521
	addi	x7, x0, 1	# 526
	mul		x7, x30, x7	# 526
	add		x6, x6, x7	# 526
	flw		f5, 0(x6)	# 526
	fmul	f2, f2, f5	# 1255
	fadd	f1, f1, f2	# 1255
	fadd	f2, f0, f17	# 7
	fmul	f1, f1, f2	# 7
	fsub	f1, f3, f1	# 1255
	mul		x5, x30, x5	# 1255
	add		x5, x4, x5	# 1255
	fsw		f1, 0(x5)	# 1255
	jal		x0, beq_cont.24795	# 1252
beq.24796:
	addi	x5, x0, 1	# 1257
	mul		x5, x30, x5	# 1257
	add		x5, x4, x5	# 1257
	fsw		f1, 0(x5)	# 1257
	addi	x5, x0, 2	# 1258
	mul		x5, x30, x5	# 1258
	add		x5, x4, x5	# 1258
	fsw		f2, 0(x5)	# 1258
	addi	x5, x0, 3	# 1259
	mul		x5, x30, x5	# 1259
	add		x5, x4, x5	# 1259
	fsw		f3, 0(x5)	# 1259
beq_cont.24795:
	flw		f1, 0(x2)	# 1
	feq		x31, f4, f1	# 1
	beq		x31, x0, feq_else.24798	# 1
	jal		x0, feq_cont.24797	# 1
feq_else.24798:
	addi	x5, x0, 4	# 1262
	fadd	f1, f0, f16	# 1262
	fdiv	f1, f1, f4	# 1262
	mul		x5, x30, x5	# 1262
	add		x5, x4, x5	# 1262
	fsw		f1, 0(x5)	# 1262
feq_cont.24797:
	jalr	x0, x1, 0	# 1264
iter_setup_dirvec_constants.2777.12984:
	lw		x6, 20(x29)	# 1270
	lw		x7, 16(x29)	# 1270
	lw		x8, 12(x29)	# 1270
	lw		x9, 8(x29)	# 1270
	lw		x10, 4(x29)	# 1270
	ble		x9, x5, ble.24799	# 1270
	jalr	x0, x1, 0	# 1283
ble.24799:
	addi	x9, x26, 48	# 1271
	mul		x11, x30, x5	# 1271
	add		x9, x9, x11	# 1271
	lw		x9, 0(x9)	# 1271
	lw		x11, 4(x4)	# 645
	lw		x12, 0(x4)	# 639
	lw		x13, 4(x9)	# 353
	sw		x4, 0(x2)	# 1275
	sw		x29, -4(x2)	# 1275
	sw		x10, -8(x2)	# 1275
	beq		x13, x10, beq.24802	# 1275
	addi	x8, x0, 2	# 1277
	beq		x13, x8, beq.24804	# 1277
	sw		x11, -12(x2)	# 1280
	sw		x5, -16(x2)	# 1280
	addi	x5, x9, 0
	addi	x4, x12, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1280
	addi	x2, x2, -24	# 1280
	lw		x31, 0(x29)	# 1280
	jalr	x1, x31, 0	# 1280
	addi	x2, x2, 24	# 1280
	lw		x1, -20(x2)	# 1280
	lw		x5, -16(x2)	# 1280
	mul		x6, x30, x5	# 1280
	lw		x7, -12(x2)	# 1280
	add		x6, x7, x6	# 1280
	sw		x4, 0(x6)	# 1280
	jal		x0, beq_cont.24803	# 1277
beq.24804:
	sw		x11, -12(x2)	# 1278
	sw		x5, -16(x2)	# 1278
	addi	x5, x9, 0
	addi	x4, x12, 0
	addi	x29, x6, 0
	sw		x1, -20(x2)	# 1278
	addi	x2, x2, -24	# 1278
	lw		x31, 0(x29)	# 1278
	jalr	x1, x31, 0	# 1278
	addi	x2, x2, 24	# 1278
	lw		x1, -20(x2)	# 1278
	lw		x5, -16(x2)	# 1278
	mul		x6, x30, x5	# 1278
	lw		x7, -12(x2)	# 1278
	add		x6, x7, x6	# 1278
	sw		x4, 0(x6)	# 1278
beq_cont.24803:
	jal		x0, beq_cont.24801	# 1275
beq.24802:
	sw		x11, -12(x2)	# 1276
	sw		x5, -16(x2)	# 1276
	addi	x5, x9, 0
	addi	x4, x12, 0
	addi	x29, x8, 0
	sw		x1, -20(x2)	# 1276
	addi	x2, x2, -24	# 1276
	lw		x31, 0(x29)	# 1276
	jalr	x1, x31, 0	# 1276
	addi	x2, x2, 24	# 1276
	lw		x1, -20(x2)	# 1276
	lw		x5, -16(x2)	# 1276
	mul		x6, x30, x5	# 1276
	lw		x7, -12(x2)	# 1276
	add		x6, x7, x6	# 1276
	sw		x4, 0(x6)	# 1276
beq_cont.24801:
	lw		x4, -8(x2)	# 1282
	sub		x5, x5, x4	# 1282
	lw		x4, 0(x2)	# 1282
	lw		x29, -4(x2)	# 1282
	lw		x31, 0(x29)	# 1282
	jalr	x0, x31, 0	# 1282
setup_startp_constants.2782.12987:
	lw		x6, 12(x29)	# 1295
	lw		x7, 8(x29)	# 1295
	lw		x8, 4(x29)	# 1295
	ble		x7, x5, ble.24805	# 1295
	jalr	x0, x1, 0	# 1310
ble.24805:
	addi	x9, x26, 48	# 1296
	mul		x10, x30, x5	# 1296
	add		x9, x9, x10	# 1296
	lw		x9, 0(x9)	# 1296
	lw		x10, 40(x9)	# 548
	lw		x11, 4(x9)	# 353
	mul		x12, x30, x7	# 1299
	add		x12, x4, x12	# 1299
	flw		f1, 0(x12)	# 1299
	lw		x12, 20(x9)	# 431
	mul		x13, x30, x7	# 436
	add		x12, x12, x13	# 436
	flw		f2, 0(x12)	# 436
	fsub	f1, f1, f2	# 1299
	mul		x12, x30, x7	# 1299
	add		x12, x10, x12	# 1299
	fsw		f1, 0(x12)	# 1299
	mul		x12, x30, x8	# 1300
	add		x12, x4, x12	# 1300
	flw		f1, 0(x12)	# 1300
	lw		x12, 20(x9)	# 441
	mul		x13, x30, x8	# 446
	add		x12, x12, x13	# 446
	flw		f2, 0(x12)	# 446
	fsub	f1, f1, f2	# 1300
	mul		x12, x30, x8	# 1300
	add		x12, x10, x12	# 1300
	fsw		f1, 0(x12)	# 1300
	mul		x12, x30, x6	# 1301
	add		x12, x4, x12	# 1301
	flw		f1, 0(x12)	# 1301
	lw		x12, 20(x9)	# 451
	mul		x13, x30, x6	# 456
	add		x12, x12, x13	# 456
	flw		f2, 0(x12)	# 456
	fsub	f1, f1, f2	# 1301
	mul		x12, x30, x6	# 1301
	add		x12, x10, x12	# 1301
	fsw		f1, 0(x12)	# 1301
	beq		x11, x6, beq.24808	# 1302
	addi	x12, x0, 2	# 1305
	ble		x11, x12, ble_cont.24809	# 1305
	addi	x12, x0, 0	# 1306
	mul		x12, x30, x12	# 1306
	add		x12, x10, x12	# 1306
	flw		f1, 0(x12)	# 1306
	addi	x12, x0, 1	# 1306
	mul		x12, x30, x12	# 1306
	add		x12, x10, x12	# 1306
	flw		f2, 0(x12)	# 1306
	addi	x12, x0, 2	# 1306
	mul		x12, x30, x12	# 1306
	add		x12, x10, x12	# 1306
	flw		f3, 0(x12)	# 1306
	fmul	f4, f1, f1	# 8
	lw		x12, 16(x9)	# 391
	mul		x13, x30, x7	# 396
	add		x12, x12, x13	# 396
	flw		f5, 0(x12)	# 396
	fmul	f4, f4, f5	# 967
	fmul	f5, f2, f2	# 8
	lw		x12, 16(x9)	# 401
	mul		x13, x30, x8	# 406
	add		x12, x12, x13	# 406
	flw		f6, 0(x12)	# 406
	fmul	f5, f5, f6	# 967
	fadd	f4, f4, f5	# 967
	fmul	f5, f3, f3	# 8
	lw		x12, 16(x9)	# 411
	mul		x13, x30, x6	# 416
	add		x12, x12, x13	# 416
	flw		f6, 0(x12)	# 416
	fmul	f5, f5, f6	# 967
	fadd	f4, f4, f5	# 967
	lw		x12, 12(x9)	# 382
	addi	x13, x0, 0	# 969
	beq		x12, x13, beq.24811	# 969
	fmul	f5, f2, f3	# 973
	lw		x12, 36(x9)	# 511
	mul		x7, x30, x7	# 516
	add		x7, x12, x7	# 516
	flw		f6, 0(x7)	# 516
	fmul	f5, f5, f6	# 973
	fadd	f4, f4, f5	# 972
	fmul	f3, f3, f1	# 974
	lw		x7, 36(x9)	# 521
	mul		x12, x30, x8	# 526
	add		x7, x7, x12	# 526
	flw		f5, 0(x7)	# 526
	fmul	f3, f3, f5	# 974
	fadd	f3, f4, f3	# 972
	fmul	f1, f1, f2	# 975
	lw		x7, 36(x9)	# 531
	mul		x6, x30, x6	# 536
	add		x6, x7, x6	# 536
	flw		f2, 0(x6)	# 536
	fmul	f1, f1, f2	# 975
	fadd	f1, f3, f1	# 972
	jal		x0, beq_cont.24810	# 969
beq.24811:
	fadd	f1, f0, f4	# 970
beq_cont.24810:
	addi	x6, x0, 3	# 1307
	addi	x7, x0, 3	# 1307
	beq		x11, x7, beq.24813	# 1307
	jal		x0, beq_cont.24812	# 1307
beq.24813:
	fadd	f2, f0, f16	# 1307
	fsub	f1, f1, f2	# 1307
beq_cont.24812:
	mul		x6, x30, x6	# 1307
	add		x6, x10, x6	# 1307
	fsw		f1, 0(x6)	# 1307
ble_cont.24809:
	jal		x0, beq_cont.24807	# 1302
beq.24808:
	addi	x6, x0, 3	# 1303
	lw		x7, 16(x9)	# 421
	addi	x9, x0, 0	# 1304
	mul		x9, x30, x9	# 1304
	add		x9, x10, x9	# 1304
	flw		f1, 0(x9)	# 1304
	addi	x9, x0, 1	# 1304
	mul		x9, x30, x9	# 1304
	add		x9, x10, x9	# 1304
	flw		f2, 0(x9)	# 1304
	addi	x9, x0, 2	# 1304
	mul		x9, x30, x9	# 1304
	add		x9, x10, x9	# 1304
	flw		f3, 0(x9)	# 1304
	addi	x9, x0, 0	# 297
	mul		x9, x30, x9	# 297
	add		x9, x7, x9	# 297
	flw		f4, 0(x9)	# 297
	fmul	f1, f4, f1	# 297
	addi	x9, x0, 1	# 297
	mul		x9, x30, x9	# 297
	add		x9, x7, x9	# 297
	flw		f4, 0(x9)	# 297
	fmul	f2, f4, f2	# 297
	fadd	f1, f1, f2	# 297
	addi	x9, x0, 2	# 297
	mul		x9, x30, x9	# 297
	add		x7, x7, x9	# 297
	flw		f2, 0(x7)	# 297
	fmul	f2, f2, f3	# 297
	fadd	f1, f1, f2	# 297
	mul		x6, x30, x6	# 1303
	add		x6, x10, x6	# 1303
	fsw		f1, 0(x6)	# 1303
beq_cont.24807:
	sub		x5, x5, x8	# 1309
	lw		x31, 0(x29)	# 1309
	jalr	x0, x31, 0	# 1309
check_all_inside.2807.12990:
	lw		x6, 24(x29)	# 1364
	lw		x7, 20(x29)	# 1364
	lw		x8, 16(x29)	# 1364
	lw		x9, 12(x29)	# 1364
	lw		x10, 8(x29)	# 1364
	flw		f4, 4(x29)	# 1364
	mul		x11, x30, x4	# 1364
	add		x11, x5, x11	# 1364
	lw		x11, 0(x11)	# 1364
	beq		x11, x7, beq.24814	# 1365
	addi	x7, x26, 48	# 1368
	mul		x11, x30, x11	# 1368
	add		x7, x7, x11	# 1368
	lw		x7, 0(x7)	# 1368
	lw		x11, 20(x7)	# 431
	mul		x12, x30, x9	# 436
	add		x11, x11, x12	# 436
	flw		f5, 0(x11)	# 436
	fsub	f5, f1, f5	# 1350
	lw		x11, 20(x7)	# 441
	mul		x12, x30, x10	# 446
	add		x11, x11, x12	# 446
	flw		f6, 0(x11)	# 446
	fsub	f6, f2, f6	# 1351
	lw		x11, 20(x7)	# 451
	mul		x12, x30, x6	# 456
	add		x11, x11, x12	# 456
	flw		f7, 0(x11)	# 456
	fsub	f7, f3, f7	# 1352
	lw		x11, 4(x7)	# 353
	beq		x11, x10, beq.24816	# 1354
	beq		x11, x6, beq.24818	# 1356
	fmul	f8, f5, f5	# 8
	lw		x11, 16(x7)	# 391
	mul		x12, x30, x9	# 396
	add		x11, x11, x12	# 396
	flw		f9, 0(x11)	# 396
	fmul	f8, f8, f9	# 967
	fmul	f9, f6, f6	# 8
	lw		x11, 16(x7)	# 401
	mul		x12, x30, x10	# 406
	add		x11, x11, x12	# 406
	flw		f10, 0(x11)	# 406
	fmul	f9, f9, f10	# 967
	fadd	f8, f8, f9	# 967
	fmul	f9, f7, f7	# 8
	lw		x11, 16(x7)	# 411
	mul		x12, x30, x6	# 416
	add		x11, x11, x12	# 416
	flw		f10, 0(x11)	# 416
	fmul	f9, f9, f10	# 967
	fadd	f8, f8, f9	# 967
	lw		x11, 12(x7)	# 382
	beq		x11, x9, beq.24820	# 969
	fmul	f9, f6, f7	# 973
	lw		x11, 36(x7)	# 511
	mul		x12, x30, x9	# 516
	add		x11, x11, x12	# 516
	flw		f10, 0(x11)	# 516
	fmul	f9, f9, f10	# 973
	fadd	f8, f8, f9	# 972
	fmul	f7, f7, f5	# 974
	lw		x11, 36(x7)	# 521
	mul		x12, x30, x10	# 526
	add		x11, x11, x12	# 526
	flw		f9, 0(x11)	# 526
	fmul	f7, f7, f9	# 974
	fadd	f7, f8, f7	# 972
	fmul	f5, f5, f6	# 975
	lw		x11, 36(x7)	# 531
	mul		x6, x30, x6	# 536
	add		x6, x11, x6	# 536
	flw		f6, 0(x6)	# 536
	fmul	f5, f5, f6	# 975
	fadd	f5, f7, f5	# 972
	jal		x0, beq_cont.24819	# 969
beq.24820:
	fadd	f5, f0, f8	# 970
beq_cont.24819:
	lw		x6, 4(x7)	# 353
	beq		x6, x8, beq.24822	# 1344
	jal		x0, beq_cont.24821	# 1344
beq.24822:
	fadd	f6, f0, f16	# 1344
	fsub	f5, f5, f6	# 1344
beq_cont.24821:
	lw		x6, 24(x7)	# 373
	fle		x31, f4, f5	# 3
	beq		x31, x0, fle_else.24824	# 3
	addi	x7, x0, 0	# 3
	jal		x0, fle_cont.24823	# 3
fle_else.24824:
	addi	x7, x0, 1	# 3
fle_cont.24823:
	beq		x6, x9, beq.24826	# 204
	fle		x31, f4, f5	# 3
	beq		x31, x0, fle_else.24828	# 3
	addi	x6, x0, 1	# 204
	jal		x0, fle_cont.24827	# 3
fle_else.24828:
	addi	x6, x0, 0	# 204
fle_cont.24827:
	jal		x0, beq_cont.24825	# 204
beq.24826:
	addi	x6, x7, 0	# 204
beq_cont.24825:
	beq		x6, x9, beq.24830	# 1345
	addi	x6, x0, 0	# 1345
	jal		x0, beq_cont.24829	# 1345
beq.24830:
	addi	x6, x0, 1	# 1345
beq_cont.24829:
	jal		x0, beq_cont.24817	# 1356
beq.24818:
	lw		x8, 16(x7)	# 421
	mul		x11, x30, x9	# 297
	add		x11, x8, x11	# 297
	flw		f8, 0(x11)	# 297
	fmul	f5, f8, f5	# 297
	mul		x11, x30, x10	# 297
	add		x11, x8, x11	# 297
	flw		f8, 0(x11)	# 297
	fmul	f6, f8, f6	# 297
	fadd	f5, f5, f6	# 297
	mul		x6, x30, x6	# 297
	add		x6, x8, x6	# 297
	flw		f6, 0(x6)	# 297
	fmul	f6, f6, f7	# 297
	fadd	f5, f5, f6	# 297
	lw		x6, 24(x7)	# 373
	fle		x31, f4, f5	# 3
	beq		x31, x0, fle_else.24832	# 3
	addi	x7, x0, 0	# 3
	jal		x0, fle_cont.24831	# 3
fle_else.24832:
	addi	x7, x0, 1	# 3
fle_cont.24831:
	beq		x6, x9, beq.24834	# 204
	fle		x31, f4, f5	# 3
	beq		x31, x0, fle_else.24836	# 3
	addi	x6, x0, 1	# 204
	jal		x0, fle_cont.24835	# 3
fle_else.24836:
	addi	x6, x0, 0	# 204
fle_cont.24835:
	jal		x0, beq_cont.24833	# 204
beq.24834:
	addi	x6, x7, 0	# 204
beq_cont.24833:
	beq		x6, x9, beq.24838	# 1338
	addi	x6, x0, 0	# 1338
	jal		x0, beq_cont.24837	# 1338
beq.24838:
	addi	x6, x0, 1	# 1338
beq_cont.24837:
beq_cont.24817:
	jal		x0, beq_cont.24815	# 1354
beq.24816:
	fle		x31, f5, f4	# 5
	beq		x31, x0, fle_cont.24839	# 5
	fsub	f5, f0, f5	# 5
fle_cont.24839:
	lw		x8, 16(x7)	# 391
	mul		x11, x30, x9	# 396
	add		x8, x8, x11	# 396
	flw		f8, 0(x8)	# 396
	fle		x31, f8, f5	# 6
	beq		x31, x0, fle_else.24841	# 6
	addi	x6, x0, 0	# 1331
	jal		x0, fle_cont.24840	# 6
fle_else.24841:
	fle		x31, f6, f4	# 5
	beq		x31, x0, fle_else.24843	# 5
	fsub	f5, f0, f6	# 5
	jal		x0, fle_cont.24842	# 5
fle_else.24843:
	fadd	f5, f0, f6	# 5
fle_cont.24842:
	lw		x8, 16(x7)	# 401
	mul		x11, x30, x10	# 406
	add		x8, x8, x11	# 406
	flw		f6, 0(x8)	# 406
	fle		x31, f6, f5	# 6
	beq		x31, x0, fle_else.24845	# 6
	addi	x6, x0, 0	# 1330
	jal		x0, fle_cont.24844	# 6
fle_else.24845:
	fle		x31, f7, f4	# 5
	beq		x31, x0, fle_else.24847	# 5
	fsub	f4, f0, f7	# 5
	jal		x0, fle_cont.24846	# 5
fle_else.24847:
	fadd	f4, f0, f7	# 5
fle_cont.24846:
	lw		x8, 16(x7)	# 411
	mul		x6, x30, x6	# 416
	add		x6, x8, x6	# 416
	flw		f5, 0(x6)	# 416
	fle		x31, f5, f4	# 6
	beq		x31, x0, fle_else.24849	# 6
	addi	x6, x0, 0	# 6
	jal		x0, fle_cont.24848	# 6
fle_else.24849:
	addi	x6, x0, 1	# 6
fle_cont.24848:
fle_cont.24844:
fle_cont.24840:
	beq		x6, x9, beq.24851	# 1326
	lw		x6, 24(x7)	# 373
	jal		x0, beq_cont.24850	# 1326
beq.24851:
	lw		x6, 24(x7)	# 373
	beq		x6, x9, beq.24853	# 1332
	addi	x6, x0, 0	# 1332
	jal		x0, beq_cont.24852	# 1332
beq.24853:
	addi	x6, x0, 1	# 1332
beq_cont.24852:
beq_cont.24850:
beq_cont.24815:
	beq		x6, x9, beq.24854	# 1368
	addi	x4, x0, 0	# 1369
	jalr	x0, x1, 0	# 1369
beq.24854:
	add		x4, x4, x10	# 1371
	lw		x31, 0(x29)	# 1371
	jalr	x0, x31, 0	# 1371
beq.24814:
	addi	x4, x0, 1	# 1366
	jalr	x0, x1, 0	# 1366
shadow_check_and_group.2813.12996:
	lw		x6, 36(x29)	# 1384
	lw		x7, 32(x29)	# 1384
	lw		x8, 28(x29)	# 1384
	lw		x9, 24(x29)	# 1384
	lw		x10, 20(x29)	# 1384
	lw		x11, 16(x29)	# 1384
	lw		x12, 12(x29)	# 1384
	lw		x13, 8(x29)	# 1384
	flw		f1, 4(x29)	# 1384
	mul		x14, x30, x4	# 1384
	add		x14, x5, x14	# 1384
	lw		x14, 0(x14)	# 1384
	beq		x14, x10, beq.24855	# 1384
	addi	x10, x26, 48	# 1126
	mul		x15, x30, x14	# 1126
	add		x10, x10, x15	# 1126
	lw		x10, 0(x10)	# 1126
	addi	x15, x26, 552	# 1127
	mul		x16, x30, x12	# 1127
	add		x15, x15, x16	# 1127
	flw		f2, 0(x15)	# 1127
	lw		x15, 20(x10)	# 431
	mul		x16, x30, x12	# 436
	add		x15, x15, x16	# 436
	flw		f3, 0(x15)	# 436
	fsub	f2, f2, f3	# 1127
	addi	x15, x26, 552	# 1128
	mul		x16, x30, x13	# 1128
	add		x15, x15, x16	# 1128
	flw		f3, 0(x15)	# 1128
	lw		x15, 20(x10)	# 441
	mul		x16, x30, x13	# 446
	add		x15, x15, x16	# 446
	flw		f4, 0(x15)	# 446
	fsub	f3, f3, f4	# 1128
	addi	x15, x26, 552	# 1129
	mul		x16, x30, x9	# 1129
	add		x15, x15, x16	# 1129
	flw		f4, 0(x15)	# 1129
	lw		x15, 20(x10)	# 451
	mul		x16, x30, x9	# 456
	add		x15, x15, x16	# 456
	flw		f5, 0(x15)	# 456
	fsub	f4, f4, f5	# 1129
	addi	x15, x26, 748	# 1131
	mul		x16, x30, x14	# 1131
	add		x15, x15, x16	# 1131
	lw		x15, 0(x15)	# 1131
	lw		x16, 4(x10)	# 353
	sw		x8, 0(x2)	# 1133
	sw		x9, -4(x2)	# 1133
	sw		x5, -8(x2)	# 1133
	sw		x29, -12(x2)	# 1133
	sw		x13, -16(x2)	# 1133
	sw		x4, -20(x2)	# 1133
	sw		x14, -24(x2)	# 1133
	sw		x12, -28(x2)	# 1133
	beq		x16, x13, beq.24857	# 1133
	addi	x7, x0, 2	# 1135
	beq		x16, x7, beq.24859	# 1135
	addi	x5, x15, 0
	addi	x4, x10, 0
	addi	x29, x6, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -32(x2)	# 1138
	addi	x2, x2, -36	# 1138
	lw		x31, 0(x29)	# 1138
	jalr	x1, x31, 0	# 1138
	addi	x2, x2, 36	# 1138
	lw		x1, -32(x2)	# 1138
	jal		x0, beq_cont.24858	# 1135
beq.24859:
	mul		x6, x30, x12	# 1097
	add		x6, x15, x6	# 1097
	flw		f5, 0(x6)	# 1097
	fle		x31, f1, f5	# 3
	beq		x31, x0, fle_else.24861	# 3
	addi	x4, x0, 0	# 1101
	jal		x0, fle_cont.24860	# 3
fle_else.24861:
	mul		x6, x30, x13	# 1099
	add		x6, x15, x6	# 1099
	flw		f1, 0(x6)	# 1099
	fmul	f1, f1, f2	# 1099
	mul		x6, x30, x9	# 1099
	add		x6, x15, x6	# 1099
	flw		f2, 0(x6)	# 1099
	fmul	f2, f2, f3	# 1099
	fadd	f1, f1, f2	# 1099
	mul		x6, x30, x11	# 1099
	add		x6, x15, x6	# 1099
	flw		f2, 0(x6)	# 1099
	fmul	f2, f2, f4	# 1099
	fadd	f1, f1, f2	# 1099
	addi	x6, x26, 540	# 1098
	mul		x7, x30, x12	# 1098
	add		x6, x6, x7	# 1098
	fsw		f1, 0(x6)	# 1098
	addi	x4, x0, 1	# 1100
fle_cont.24860:
beq_cont.24858:
	jal		x0, beq_cont.24856	# 1133
beq.24857:
	addi	x6, x26, 736	# 1134
	addi	x5, x6, 0
	addi	x4, x10, 0
	addi	x29, x7, 0
	addi	x6, x15, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -32(x2)	# 1134
	addi	x2, x2, -36	# 1134
	lw		x31, 0(x29)	# 1134
	jalr	x1, x31, 0	# 1134
	addi	x2, x2, 36	# 1134
	lw		x1, -32(x2)	# 1134
beq_cont.24856:
	addi	x5, x26, 540	# 1389
	lw		x6, -28(x2)	# 1389
	mul		x7, x30, x6	# 1389
	add		x5, x5, x7	# 1389
	flw		f1, 0(x5)	# 1389
	beq		x4, x6, beq.24863	# 1390
	lui		x4, %hi(l.20271)	# 1390
	ori		x4, x0, %lo(l.20271)	# 1390
	flw		f2, 0(x4)	# 1390
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.24865	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.24864	# 6
fle_else.24865:
	addi	x4, x0, 1	# 6
fle_cont.24864:
	jal		x0, beq_cont.24862	# 1390
beq.24863:
	addi	x4, x0, 0	# 1390
beq_cont.24862:
	beq		x4, x6, beq.24866	# 1390
	fadd	f2, f0, f22	# 1393
	fadd	f1, f1, f2	# 1393
	addi	x4, x26, 312	# 1394
	mul		x5, x30, x6	# 1394
	add		x4, x4, x5	# 1394
	flw		f2, 0(x4)	# 1394
	fmul	f2, f2, f1	# 1394
	addi	x4, x26, 552	# 1394
	mul		x5, x30, x6	# 1394
	add		x4, x4, x5	# 1394
	flw		f3, 0(x4)	# 1394
	fadd	f2, f2, f3	# 1394
	addi	x4, x26, 312	# 1395
	lw		x5, -16(x2)	# 1395
	mul		x7, x30, x5	# 1395
	add		x4, x4, x7	# 1395
	flw		f3, 0(x4)	# 1395
	fmul	f3, f3, f1	# 1395
	addi	x4, x26, 552	# 1395
	mul		x7, x30, x5	# 1395
	add		x4, x4, x7	# 1395
	flw		f4, 0(x4)	# 1395
	fadd	f3, f3, f4	# 1395
	addi	x4, x26, 312	# 1396
	lw		x7, -4(x2)	# 1396
	mul		x8, x30, x7	# 1396
	add		x4, x4, x8	# 1396
	flw		f4, 0(x4)	# 1396
	fmul	f1, f4, f1	# 1396
	addi	x4, x26, 552	# 1396
	mul		x7, x30, x7	# 1396
	add		x4, x4, x7	# 1396
	flw		f4, 0(x4)	# 1396
	fadd	f1, f1, f4	# 1396
	lw		x4, -8(x2)	# 1397
	lw		x29, 0(x2)	# 1397
	addi	x5, x4, 0
	addi	x4, x6, 0
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -32(x2)	# 1397
	addi	x2, x2, -36	# 1397
	lw		x31, 0(x29)	# 1397
	jalr	x1, x31, 0	# 1397
	addi	x2, x2, 36	# 1397
	lw		x1, -32(x2)	# 1397
	lw		x5, -28(x2)	# 1397
	beq		x4, x5, beq.24867	# 1397
	addi	x4, x0, 1	# 1398
	jalr	x0, x1, 0	# 1398
beq.24867:
	lw		x4, -16(x2)	# 1400
	lw		x5, -20(x2)	# 1400
	add		x4, x5, x4	# 1400
	lw		x5, -8(x2)	# 1400
	lw		x29, -12(x2)	# 1400
	lw		x31, 0(x29)	# 1400
	jalr	x0, x31, 0	# 1400
beq.24866:
	addi	x4, x26, 48	# 1406
	lw		x5, -24(x2)	# 1406
	mul		x5, x30, x5	# 1406
	add		x4, x4, x5	# 1406
	lw		x4, 0(x4)	# 1406
	lw		x4, 24(x4)	# 373
	beq		x4, x6, beq.24868	# 1406
	lw		x4, -16(x2)	# 1407
	lw		x5, -20(x2)	# 1407
	add		x4, x5, x4	# 1407
	lw		x5, -8(x2)	# 1407
	lw		x29, -12(x2)	# 1407
	lw		x31, 0(x29)	# 1407
	jalr	x0, x31, 0	# 1407
beq.24868:
	addi	x4, x0, 0	# 1409
	jalr	x0, x1, 0	# 1409
beq.24855:
	addi	x4, x0, 0	# 1385
	jalr	x0, x1, 0	# 1385
shadow_check_one_or_group.2816.12999:
	lw		x6, 16(x29)	# 1414
	lw		x7, 12(x29)	# 1414
	lw		x8, 8(x29)	# 1414
	lw		x9, 4(x29)	# 1414
	mul		x10, x30, x4	# 1414
	add		x10, x5, x10	# 1414
	lw		x10, 0(x10)	# 1414
	beq		x10, x7, beq.24869	# 1415
	addi	x7, x26, 332	# 1418
	mul		x10, x30, x10	# 1418
	add		x7, x7, x10	# 1418
	lw		x7, 0(x7)	# 1418
	sw		x5, 0(x2)	# 1419
	sw		x29, -4(x2)	# 1419
	sw		x9, -8(x2)	# 1419
	sw		x4, -12(x2)	# 1419
	sw		x8, -16(x2)	# 1419
	addi	x5, x7, 0
	addi	x4, x8, 0
	addi	x29, x6, 0
	sw		x1, -20(x2)	# 1419
	addi	x2, x2, -24	# 1419
	lw		x31, 0(x29)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 24	# 1419
	lw		x1, -20(x2)	# 1419
	lw		x5, -16(x2)	# 1420
	beq		x4, x5, beq.24870	# 1420
	addi	x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.24870:
	lw		x4, -8(x2)	# 1423
	lw		x5, -12(x2)	# 1423
	add		x4, x5, x4	# 1423
	lw		x5, 0(x2)	# 1423
	lw		x29, -4(x2)	# 1423
	lw		x31, 0(x29)	# 1423
	jalr	x0, x31, 0	# 1423
beq.24869:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
shadow_check_one_or_matrix.2819.13002:
	lw		x6, 36(x29)	# 1429
	lw		x7, 32(x29)	# 1429
	lw		x8, 28(x29)	# 1429
	lw		x9, 24(x29)	# 1429
	lw		x10, 20(x29)	# 1429
	lw		x11, 16(x29)	# 1429
	lw		x12, 12(x29)	# 1429
	lw		x13, 8(x29)	# 1429
	flw		f1, 4(x29)	# 1429
	mul		x14, x30, x4	# 1429
	add		x14, x5, x14	# 1429
	lw		x14, 0(x14)	# 1429
	mul		x15, x30, x12	# 1430
	add		x15, x14, x15	# 1430
	lw		x15, 0(x15)	# 1430
	beq		x15, x10, beq.24871	# 1431
	addi	x10, x0, 99	# 1435
	sw		x14, 0(x2)	# 1435
	sw		x8, -4(x2)	# 1435
	sw		x5, -8(x2)	# 1435
	sw		x29, -12(x2)	# 1435
	sw		x13, -16(x2)	# 1435
	sw		x4, -20(x2)	# 1435
	sw		x12, -24(x2)	# 1435
	beq		x15, x10, beq.24873	# 1435
	addi	x10, x26, 48	# 1126
	mul		x16, x30, x15	# 1126
	add		x10, x10, x16	# 1126
	lw		x10, 0(x10)	# 1126
	addi	x16, x0, 0	# 1127
	addi	x17, x26, 552	# 1127
	mul		x16, x30, x16	# 1127
	add		x16, x17, x16	# 1127
	flw		f2, 0(x16)	# 1127
	lw		x16, 20(x10)	# 431
	mul		x17, x30, x12	# 436
	add		x16, x16, x17	# 436
	flw		f3, 0(x16)	# 436
	fsub	f2, f2, f3	# 1127
	addi	x16, x0, 1	# 1128
	addi	x17, x26, 552	# 1128
	mul		x16, x30, x16	# 1128
	add		x16, x17, x16	# 1128
	flw		f3, 0(x16)	# 1128
	lw		x16, 20(x10)	# 441
	mul		x17, x30, x13	# 446
	add		x16, x16, x17	# 446
	flw		f4, 0(x16)	# 446
	fsub	f3, f3, f4	# 1128
	addi	x16, x0, 2	# 1129
	addi	x17, x26, 552	# 1129
	mul		x16, x30, x16	# 1129
	add		x16, x17, x16	# 1129
	flw		f4, 0(x16)	# 1129
	lw		x16, 20(x10)	# 451
	mul		x17, x30, x9	# 456
	add		x16, x16, x17	# 456
	flw		f5, 0(x16)	# 456
	fsub	f4, f4, f5	# 1129
	addi	x16, x26, 748	# 1131
	mul		x15, x30, x15	# 1131
	add		x15, x16, x15	# 1131
	lw		x15, 0(x15)	# 1131
	lw		x16, 4(x10)	# 353
	addi	x17, x0, 1	# 1133
	beq		x16, x17, beq.24875	# 1133
	addi	x7, x0, 2	# 1135
	beq		x16, x7, beq.24877	# 1135
	addi	x5, x15, 0
	addi	x4, x10, 0
	addi	x29, x6, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -28(x2)	# 1138
	addi	x2, x2, -32	# 1138
	lw		x31, 0(x29)	# 1138
	jalr	x1, x31, 0	# 1138
	addi	x2, x2, 32	# 1138
	lw		x1, -28(x2)	# 1138
	jal		x0, beq_cont.24876	# 1135
beq.24877:
	mul		x6, x30, x12	# 1097
	add		x6, x15, x6	# 1097
	flw		f5, 0(x6)	# 1097
	fle		x31, f1, f5	# 3
	beq		x31, x0, fle_else.24879	# 3
	addi	x4, x0, 0	# 1101
	jal		x0, fle_cont.24878	# 3
fle_else.24879:
	mul		x6, x30, x13	# 1099
	add		x6, x15, x6	# 1099
	flw		f1, 0(x6)	# 1099
	fmul	f1, f1, f2	# 1099
	mul		x6, x30, x9	# 1099
	add		x6, x15, x6	# 1099
	flw		f2, 0(x6)	# 1099
	fmul	f2, f2, f3	# 1099
	fadd	f1, f1, f2	# 1099
	mul		x6, x30, x11	# 1099
	add		x6, x15, x6	# 1099
	flw		f2, 0(x6)	# 1099
	fmul	f2, f2, f4	# 1099
	fadd	f1, f1, f2	# 1099
	addi	x6, x26, 540	# 1098
	mul		x7, x30, x12	# 1098
	add		x6, x6, x7	# 1098
	fsw		f1, 0(x6)	# 1098
	addi	x4, x0, 1	# 1100
fle_cont.24878:
beq_cont.24876:
	jal		x0, beq_cont.24874	# 1133
beq.24875:
	addi	x6, x26, 736	# 1134
	addi	x5, x6, 0
	addi	x4, x10, 0
	addi	x29, x7, 0
	addi	x6, x15, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -28(x2)	# 1134
	addi	x2, x2, -32	# 1134
	lw		x31, 0(x29)	# 1134
	jalr	x1, x31, 0	# 1134
	addi	x2, x2, 32	# 1134
	lw		x1, -28(x2)	# 1134
beq_cont.24874:
	addi	x5, x0, 0	# 1441
	beq		x4, x5, beq.24881	# 1441
	addi	x4, x0, 0	# 1442
	addi	x5, x26, 540	# 1442
	mul		x4, x30, x4	# 1442
	add		x4, x5, x4	# 1442
	flw		f1, 0(x4)	# 1442
	fadd	f2, f0, f19	# 1442
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.24883	# 6
	addi	x4, x0, 0	# 1446
	jal		x0, fle_cont.24882	# 6
fle_else.24883:
	addi	x4, x0, 1	# 1443
	lw		x5, 0(x2)	# 1443
	lw		x29, -4(x2)	# 1443
	sw		x1, -28(x2)	# 1443
	addi	x2, x2, -32	# 1443
	lw		x31, 0(x29)	# 1443
	jalr	x1, x31, 0	# 1443
	addi	x2, x2, 32	# 1443
	lw		x1, -28(x2)	# 1443
	addi	x5, x0, 0	# 1443
	beq		x4, x5, beq.24885	# 1443
	addi	x4, x0, 1	# 1444
	jal		x0, beq_cont.24884	# 1443
beq.24885:
	addi	x4, x0, 0	# 1445
beq_cont.24884:
fle_cont.24882:
	jal		x0, beq_cont.24880	# 1441
beq.24881:
	addi	x4, x0, 0	# 1447
beq_cont.24880:
	jal		x0, beq_cont.24872	# 1435
beq.24873:
	addi	x4, x0, 1	# 1436
beq_cont.24872:
	lw		x5, -24(x2)	# 1434
	beq		x4, x5, beq.24886	# 1434
	lw		x4, -16(x2)	# 1449
	lw		x6, 0(x2)	# 1449
	lw		x29, -4(x2)	# 1449
	addi	x5, x6, 0
	sw		x1, -28(x2)	# 1449
	addi	x2, x2, -32	# 1449
	lw		x31, 0(x29)	# 1449
	jalr	x1, x31, 0	# 1449
	addi	x2, x2, 32	# 1449
	lw		x1, -28(x2)	# 1449
	lw		x5, -24(x2)	# 1449
	beq		x4, x5, beq.24887	# 1449
	addi	x4, x0, 1	# 1450
	jalr	x0, x1, 0	# 1450
beq.24887:
	lw		x4, -16(x2)	# 1452
	lw		x5, -20(x2)	# 1452
	add		x4, x5, x4	# 1452
	lw		x5, -8(x2)	# 1452
	lw		x29, -12(x2)	# 1452
	lw		x31, 0(x29)	# 1452
	jalr	x0, x31, 0	# 1452
beq.24886:
	lw		x4, -16(x2)	# 1454
	lw		x5, -20(x2)	# 1454
	add		x4, x5, x4	# 1454
	lw		x5, -8(x2)	# 1454
	lw		x29, -12(x2)	# 1454
	lw		x31, 0(x29)	# 1454
	jalr	x0, x31, 0	# 1454
beq.24871:
	addi	x4, x0, 0	# 1432
	jalr	x0, x1, 0	# 1432
solve_each_element.2822.13005:
	lw		x7, 32(x29)	# 1465
	lw		x8, 28(x29)	# 1465
	lw		x9, 24(x29)	# 1465
	lw		x10, 20(x29)	# 1465
	lw		x11, 16(x29)	# 1465
	lw		x12, 12(x29)	# 1465
	lw		x13, 8(x29)	# 1465
	flw		f1, 4(x29)	# 1465
	mul		x14, x30, x4	# 1465
	add		x14, x5, x14	# 1465
	lw		x14, 0(x14)	# 1465
	beq		x14, x11, beq.24888	# 1466
	addi	x11, x26, 48	# 1032
	mul		x15, x30, x14	# 1032
	add		x11, x11, x15	# 1032
	lw		x11, 0(x11)	# 1032
	addi	x15, x26, 636	# 1034
	mul		x16, x30, x12	# 1034
	add		x15, x15, x16	# 1034
	flw		f2, 0(x15)	# 1034
	lw		x15, 20(x11)	# 431
	mul		x16, x30, x12	# 436
	add		x15, x15, x16	# 436
	flw		f3, 0(x15)	# 436
	fsub	f2, f2, f3	# 1034
	addi	x15, x26, 636	# 1035
	mul		x16, x30, x13	# 1035
	add		x15, x15, x16	# 1035
	flw		f3, 0(x15)	# 1035
	lw		x15, 20(x11)	# 441
	mul		x16, x30, x13	# 446
	add		x15, x15, x16	# 446
	flw		f4, 0(x15)	# 446
	fsub	f3, f3, f4	# 1035
	addi	x15, x26, 636	# 1036
	mul		x16, x30, x10	# 1036
	add		x15, x15, x16	# 1036
	flw		f4, 0(x15)	# 1036
	lw		x15, 20(x11)	# 451
	mul		x16, x30, x10	# 456
	add		x15, x15, x16	# 456
	flw		f5, 0(x15)	# 456
	fsub	f4, f4, f5	# 1036
	lw		x15, 4(x11)	# 353
	sw		x9, 0(x2)	# 1039
	fsw		f1, -4(x2)	# 1039
	sw		x6, -8(x2)	# 1039
	sw		x5, -12(x2)	# 1039
	sw		x29, -16(x2)	# 1039
	sw		x13, -20(x2)	# 1039
	sw		x4, -24(x2)	# 1039
	sw		x14, -28(x2)	# 1039
	sw		x12, -32(x2)	# 1039
	beq		x15, x13, beq.24890	# 1039
	addi	x8, x0, 2	# 1040
	beq		x15, x8, beq.24892	# 1040
	addi	x5, x6, 0
	addi	x4, x11, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -36(x2)	# 1041
	addi	x2, x2, -40	# 1041
	lw		x31, 0(x29)	# 1041
	jalr	x1, x31, 0	# 1041
	addi	x2, x2, 40	# 1041
	lw		x1, -36(x2)	# 1041
	jal		x0, beq_cont.24891	# 1040
beq.24892:
	lw		x7, 16(x11)	# 421
	mul		x8, x30, x12	# 292
	add		x8, x6, x8	# 292
	flw		f5, 0(x8)	# 292
	mul		x8, x30, x12	# 292
	add		x8, x7, x8	# 292
	flw		f6, 0(x8)	# 292
	fmul	f5, f5, f6	# 292
	mul		x8, x30, x13	# 292
	add		x8, x6, x8	# 292
	flw		f6, 0(x8)	# 292
	mul		x8, x30, x13	# 292
	add		x8, x7, x8	# 292
	flw		f7, 0(x8)	# 292
	fmul	f6, f6, f7	# 292
	fadd	f5, f5, f6	# 292
	mul		x8, x30, x10	# 292
	add		x8, x6, x8	# 292
	flw		f6, 0(x8)	# 292
	mul		x8, x30, x10	# 292
	add		x8, x7, x8	# 292
	flw		f7, 0(x8)	# 292
	fmul	f6, f6, f7	# 292
	fadd	f5, f5, f6	# 292
	fle		x31, f5, f1	# 2
	beq		x31, x0, fle_else.24894	# 2
	addi	x4, x0, 0	# 959
	jal		x0, fle_cont.24893	# 2
fle_else.24894:
	mul		x8, x30, x12	# 297
	add		x8, x7, x8	# 297
	flw		f6, 0(x8)	# 297
	fmul	f2, f6, f2	# 297
	mul		x8, x30, x13	# 297
	add		x8, x7, x8	# 297
	flw		f6, 0(x8)	# 297
	fmul	f3, f6, f3	# 297
	fadd	f2, f2, f3	# 297
	mul		x8, x30, x10	# 297
	add		x7, x7, x8	# 297
	flw		f3, 0(x7)	# 297
	fmul	f3, f3, f4	# 297
	fadd	f2, f2, f3	# 297
	fsub	f2, f0, f2	# 4
	fdiv	f2, f2, f5	# 957
	addi	x7, x26, 540	# 957
	mul		x8, x30, x12	# 957
	add		x7, x7, x8	# 957
	fsw		f2, 0(x7)	# 957
	addi	x4, x0, 1	# 958
fle_cont.24893:
beq_cont.24891:
	jal		x0, beq_cont.24889	# 1039
beq.24890:
	addi	x5, x6, 0
	addi	x4, x11, 0
	addi	x29, x8, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -36(x2)	# 1039
	addi	x2, x2, -40	# 1039
	lw		x31, 0(x29)	# 1039
	jalr	x1, x31, 0	# 1039
	addi	x2, x2, 40	# 1039
	lw		x1, -36(x2)	# 1039
beq_cont.24889:
	lw		x5, -32(x2)	# 1469
	beq		x4, x5, beq.24895	# 1469
	addi	x6, x26, 540	# 1473
	mul		x5, x30, x5	# 1473
	add		x5, x6, x5	# 1473
	flw		f1, 0(x5)	# 1473
	flw		f2, -4(x2)	# 6
	fle		x31, f1, f2	# 6
	beq		x31, x0, fle_else.24897	# 6
	jal		x0, fle_cont.24896	# 6
fle_else.24897:
	addi	x5, x0, 0	# 1476
	addi	x6, x26, 548	# 1476
	mul		x5, x30, x5	# 1476
	add		x5, x6, x5	# 1476
	flw		f2, 0(x5)	# 1476
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.24899	# 6
	jal		x0, fle_cont.24898	# 6
fle_else.24899:
	fadd	f2, f0, f22	# 1478
	fadd	f1, f1, f2	# 1478
	addi	x5, x0, 0	# 1479
	mul		x5, x30, x5	# 1479
	lw		x6, -8(x2)	# 1479
	add		x5, x6, x5	# 1479
	flw		f2, 0(x5)	# 1479
	fmul	f2, f2, f1	# 1479
	addi	x5, x0, 0	# 1479
	addi	x7, x26, 636	# 1479
	mul		x5, x30, x5	# 1479
	add		x5, x7, x5	# 1479
	flw		f3, 0(x5)	# 1479
	fadd	f2, f2, f3	# 1479
	addi	x5, x0, 1	# 1480
	mul		x5, x30, x5	# 1480
	add		x5, x6, x5	# 1480
	flw		f3, 0(x5)	# 1480
	fmul	f3, f3, f1	# 1480
	addi	x5, x0, 1	# 1480
	addi	x7, x26, 636	# 1480
	mul		x5, x30, x5	# 1480
	add		x5, x7, x5	# 1480
	flw		f4, 0(x5)	# 1480
	fadd	f3, f3, f4	# 1480
	addi	x5, x0, 2	# 1481
	mul		x5, x30, x5	# 1481
	add		x5, x6, x5	# 1481
	flw		f4, 0(x5)	# 1481
	fmul	f4, f4, f1	# 1481
	addi	x5, x0, 2	# 1481
	addi	x7, x26, 636	# 1481
	mul		x5, x30, x5	# 1481
	add		x5, x7, x5	# 1481
	flw		f5, 0(x5)	# 1481
	fadd	f4, f4, f5	# 1481
	addi	x5, x0, 0	# 1482
	lw		x7, -12(x2)	# 1482
	lw		x29, 0(x2)	# 1482
	sw		x4, -36(x2)	# 1482
	fsw		f4, -40(x2)	# 1482
	fsw		f3, -44(x2)	# 1482
	fsw		f2, -48(x2)	# 1482
	fsw		f1, -52(x2)	# 1482
	addi	x4, x5, 0
	addi	x5, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -56(x2)	# 1482
	addi	x2, x2, -60	# 1482
	lw		x31, 0(x29)	# 1482
	jalr	x1, x31, 0	# 1482
	addi	x2, x2, 60	# 1482
	lw		x1, -56(x2)	# 1482
	addi	x5, x0, 0	# 1482
	beq		x4, x5, beq_cont.24900	# 1482
	addi	x4, x0, 0	# 1484
	addi	x5, x26, 548	# 1484
	mul		x4, x30, x4	# 1484
	add		x4, x5, x4	# 1484
	flw		f1, -52(x2)	# 1484
	fsw		f1, 0(x4)	# 1484
	addi	x4, x0, 0	# 240
	addi	x5, x26, 552	# 240
	mul		x4, x30, x4	# 240
	add		x4, x5, x4	# 240
	flw		f1, -48(x2)	# 240
	fsw		f1, 0(x4)	# 240
	addi	x4, x0, 1	# 241
	addi	x5, x26, 552	# 241
	mul		x4, x30, x4	# 241
	add		x4, x5, x4	# 241
	flw		f1, -44(x2)	# 241
	fsw		f1, 0(x4)	# 241
	addi	x4, x0, 2	# 242
	addi	x5, x26, 552	# 242
	mul		x4, x30, x4	# 242
	add		x4, x5, x4	# 242
	flw		f1, -40(x2)	# 242
	fsw		f1, 0(x4)	# 242
	addi	x4, x0, 0	# 1486
	addi	x5, x26, 564	# 1486
	mul		x4, x30, x4	# 1486
	add		x4, x5, x4	# 1486
	lw		x5, -28(x2)	# 1486
	sw		x5, 0(x4)	# 1486
	addi	x4, x0, 0	# 1487
	addi	x5, x26, 544	# 1487
	mul		x4, x30, x4	# 1487
	add		x4, x5, x4	# 1487
	lw		x5, -36(x2)	# 1487
	sw		x5, 0(x4)	# 1487
beq_cont.24900:
fle_cont.24898:
fle_cont.24896:
	lw		x4, -20(x2)	# 1493
	lw		x5, -24(x2)	# 1493
	add		x4, x5, x4	# 1493
	lw		x5, -12(x2)	# 1493
	lw		x6, -8(x2)	# 1493
	lw		x29, -16(x2)	# 1493
	lw		x31, 0(x29)	# 1493
	jalr	x0, x31, 0	# 1493
beq.24895:
	addi	x4, x26, 48	# 1497
	lw		x6, -28(x2)	# 1497
	mul		x6, x30, x6	# 1497
	add		x4, x4, x6	# 1497
	lw		x4, 0(x4)	# 1497
	lw		x4, 24(x4)	# 373
	beq		x4, x5, beq.24901	# 1497
	lw		x4, -20(x2)	# 1498
	lw		x5, -24(x2)	# 1498
	add		x4, x5, x4	# 1498
	lw		x5, -12(x2)	# 1498
	lw		x6, -8(x2)	# 1498
	lw		x29, -16(x2)	# 1498
	lw		x31, 0(x29)	# 1498
	jalr	x0, x31, 0	# 1498
beq.24901:
	jalr	x0, x1, 0	# 1499
beq.24888:
	jalr	x0, x1, 0	# 1466
solve_one_or_network.2826.13009:
	lw		x7, 16(x29)	# 1506
	lw		x8, 12(x29)	# 1506
	lw		x9, 8(x29)	# 1506
	lw		x10, 4(x29)	# 1506
	mul		x11, x30, x4	# 1506
	add		x11, x5, x11	# 1506
	lw		x11, 0(x11)	# 1506
	beq		x11, x8, beq.24904	# 1507
	addi	x8, x26, 332	# 1508
	mul		x11, x30, x11	# 1508
	add		x8, x8, x11	# 1508
	lw		x8, 0(x8)	# 1508
	sw		x6, 0(x2)	# 1509
	sw		x5, -4(x2)	# 1509
	sw		x29, -8(x2)	# 1509
	sw		x10, -12(x2)	# 1509
	sw		x4, -16(x2)	# 1509
	addi	x5, x8, 0
	addi	x4, x9, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1509
	addi	x2, x2, -24	# 1509
	lw		x31, 0(x29)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 24	# 1509
	lw		x1, -20(x2)	# 1509
	lw		x4, -12(x2)	# 1510
	lw		x5, -16(x2)	# 1510
	add		x4, x5, x4	# 1510
	lw		x5, -4(x2)	# 1510
	lw		x6, 0(x2)	# 1510
	lw		x29, -8(x2)	# 1510
	lw		x31, 0(x29)	# 1510
	jalr	x0, x31, 0	# 1510
beq.24904:
	jalr	x0, x1, 0	# 1511
trace_or_matrix.2830.13013:
	lw		x7, 32(x29)	# 1516
	lw		x8, 28(x29)	# 1516
	lw		x9, 24(x29)	# 1516
	lw		x10, 20(x29)	# 1516
	lw		x11, 16(x29)	# 1516
	lw		x12, 12(x29)	# 1516
	lw		x13, 8(x29)	# 1516
	flw		f1, 4(x29)	# 1516
	mul		x14, x30, x4	# 1516
	add		x14, x5, x14	# 1516
	lw		x14, 0(x14)	# 1516
	mul		x15, x30, x12	# 1517
	add		x15, x14, x15	# 1517
	lw		x15, 0(x15)	# 1517
	beq		x15, x11, beq.24906	# 1518
	addi	x11, x0, 99	# 1521
	sw		x6, 0(x2)	# 1521
	sw		x5, -4(x2)	# 1521
	sw		x29, -8(x2)	# 1521
	sw		x13, -12(x2)	# 1521
	sw		x4, -16(x2)	# 1521
	beq		x15, x11, beq.24908	# 1521
	addi	x11, x26, 48	# 1032
	mul		x15, x30, x15	# 1032
	add		x11, x11, x15	# 1032
	lw		x11, 0(x11)	# 1032
	addi	x15, x0, 0	# 1034
	addi	x16, x26, 636	# 1034
	mul		x15, x30, x15	# 1034
	add		x15, x16, x15	# 1034
	flw		f2, 0(x15)	# 1034
	lw		x15, 20(x11)	# 431
	mul		x16, x30, x12	# 436
	add		x15, x15, x16	# 436
	flw		f3, 0(x15)	# 436
	fsub	f2, f2, f3	# 1034
	addi	x15, x0, 1	# 1035
	addi	x16, x26, 636	# 1035
	mul		x15, x30, x15	# 1035
	add		x15, x16, x15	# 1035
	flw		f3, 0(x15)	# 1035
	lw		x15, 20(x11)	# 441
	mul		x16, x30, x13	# 446
	add		x15, x15, x16	# 446
	flw		f4, 0(x15)	# 446
	fsub	f3, f3, f4	# 1035
	addi	x15, x0, 2	# 1036
	addi	x16, x26, 636	# 1036
	mul		x15, x30, x15	# 1036
	add		x15, x16, x15	# 1036
	flw		f4, 0(x15)	# 1036
	lw		x15, 20(x11)	# 451
	mul		x16, x30, x10	# 456
	add		x15, x15, x16	# 456
	flw		f5, 0(x15)	# 456
	fsub	f4, f4, f5	# 1036
	lw		x15, 4(x11)	# 353
	addi	x16, x0, 1	# 1039
	sw		x14, -20(x2)	# 1039
	sw		x9, -24(x2)	# 1039
	beq		x15, x16, beq.24910	# 1039
	addi	x8, x0, 2	# 1040
	beq		x15, x8, beq.24912	# 1040
	addi	x5, x6, 0
	addi	x4, x11, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -28(x2)	# 1041
	addi	x2, x2, -32	# 1041
	lw		x31, 0(x29)	# 1041
	jalr	x1, x31, 0	# 1041
	addi	x2, x2, 32	# 1041
	lw		x1, -28(x2)	# 1041
	jal		x0, beq_cont.24911	# 1040
beq.24912:
	lw		x7, 16(x11)	# 421
	mul		x8, x30, x12	# 292
	add		x8, x6, x8	# 292
	flw		f5, 0(x8)	# 292
	mul		x8, x30, x12	# 292
	add		x8, x7, x8	# 292
	flw		f6, 0(x8)	# 292
	fmul	f5, f5, f6	# 292
	mul		x8, x30, x13	# 292
	add		x8, x6, x8	# 292
	flw		f6, 0(x8)	# 292
	mul		x8, x30, x13	# 292
	add		x8, x7, x8	# 292
	flw		f7, 0(x8)	# 292
	fmul	f6, f6, f7	# 292
	fadd	f5, f5, f6	# 292
	mul		x8, x30, x10	# 292
	add		x8, x6, x8	# 292
	flw		f6, 0(x8)	# 292
	mul		x8, x30, x10	# 292
	add		x8, x7, x8	# 292
	flw		f7, 0(x8)	# 292
	fmul	f6, f6, f7	# 292
	fadd	f5, f5, f6	# 292
	fle		x31, f5, f1	# 2
	beq		x31, x0, fle_else.24914	# 2
	addi	x4, x0, 0	# 959
	jal		x0, fle_cont.24913	# 2
fle_else.24914:
	mul		x8, x30, x12	# 297
	add		x8, x7, x8	# 297
	flw		f1, 0(x8)	# 297
	fmul	f1, f1, f2	# 297
	mul		x8, x30, x13	# 297
	add		x8, x7, x8	# 297
	flw		f2, 0(x8)	# 297
	fmul	f2, f2, f3	# 297
	fadd	f1, f1, f2	# 297
	mul		x8, x30, x10	# 297
	add		x7, x7, x8	# 297
	flw		f2, 0(x7)	# 297
	fmul	f2, f2, f4	# 297
	fadd	f1, f1, f2	# 297
	fsub	f1, f0, f1	# 4
	fdiv	f1, f1, f5	# 957
	addi	x7, x26, 540	# 957
	mul		x8, x30, x12	# 957
	add		x7, x7, x8	# 957
	fsw		f1, 0(x7)	# 957
	addi	x4, x0, 1	# 958
fle_cont.24913:
beq_cont.24911:
	jal		x0, beq_cont.24909	# 1039
beq.24910:
	addi	x5, x6, 0
	addi	x4, x11, 0
	addi	x29, x8, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -28(x2)	# 1039
	addi	x2, x2, -32	# 1039
	lw		x31, 0(x29)	# 1039
	jalr	x1, x31, 0	# 1039
	addi	x2, x2, 32	# 1039
	lw		x1, -28(x2)	# 1039
beq_cont.24909:
	addi	x5, x0, 0	# 1527
	beq		x4, x5, beq_cont.24915	# 1527
	addi	x4, x0, 0	# 1528
	addi	x5, x26, 540	# 1528
	mul		x4, x30, x4	# 1528
	add		x4, x5, x4	# 1528
	flw		f1, 0(x4)	# 1528
	addi	x4, x0, 0	# 1529
	addi	x5, x26, 548	# 1529
	mul		x4, x30, x4	# 1529
	add		x4, x5, x4	# 1529
	flw		f2, 0(x4)	# 1529
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.24917	# 6
	jal		x0, fle_cont.24916	# 6
fle_else.24917:
	addi	x4, x0, 1	# 1530
	lw		x5, -20(x2)	# 1530
	lw		x6, 0(x2)	# 1530
	lw		x29, -24(x2)	# 1530
	sw		x1, -28(x2)	# 1530
	addi	x2, x2, -32	# 1530
	lw		x31, 0(x29)	# 1530
	jalr	x1, x31, 0	# 1530
	addi	x2, x2, 32	# 1530
	lw		x1, -28(x2)	# 1530
fle_cont.24916:
beq_cont.24915:
	jal		x0, beq_cont.24907	# 1521
beq.24908:
	addi	x7, x0, 1	# 1522
	addi	x5, x14, 0
	addi	x4, x7, 0
	addi	x29, x9, 0
	sw		x1, -28(x2)	# 1522
	addi	x2, x2, -32	# 1522
	lw		x31, 0(x29)	# 1522
	jalr	x1, x31, 0	# 1522
	addi	x2, x2, 32	# 1522
	lw		x1, -28(x2)	# 1522
beq_cont.24907:
	lw		x4, -12(x2)	# 1534
	lw		x5, -16(x2)	# 1534
	add		x4, x5, x4	# 1534
	lw		x5, -4(x2)	# 1534
	lw		x6, 0(x2)	# 1534
	lw		x29, -8(x2)	# 1534
	lw		x31, 0(x29)	# 1534
	jalr	x0, x31, 0	# 1534
beq.24906:
	jalr	x0, x1, 0	# 1519
solve_each_element_fast.2836.13017:
	lw		x7, 32(x29)	# 639
	lw		x8, 28(x29)	# 639
	lw		x9, 24(x29)	# 639
	lw		x10, 20(x29)	# 639
	lw		x11, 16(x29)	# 639
	lw		x12, 12(x29)	# 639
	lw		x13, 8(x29)	# 639
	flw		f1, 4(x29)	# 639
	lw		x14, 0(x6)	# 639
	mul		x15, x30, x4	# 1559
	add		x15, x5, x15	# 1559
	lw		x15, 0(x15)	# 1559
	beq		x15, x10, beq.24919	# 1560
	addi	x10, x26, 48	# 1173
	mul		x16, x30, x15	# 1173
	add		x10, x10, x16	# 1173
	lw		x10, 0(x10)	# 1173
	lw		x16, 40(x10)	# 548
	mul		x17, x30, x12	# 1175
	add		x17, x16, x17	# 1175
	flw		f2, 0(x17)	# 1175
	mul		x17, x30, x13	# 1176
	add		x17, x16, x17	# 1176
	flw		f3, 0(x17)	# 1176
	mul		x17, x30, x9	# 1177
	add		x17, x16, x17	# 1177
	flw		f4, 0(x17)	# 1177
	lw		x17, 4(x6)	# 645
	mul		x18, x30, x15	# 1179
	add		x17, x17, x18	# 1179
	lw		x17, 0(x17)	# 1179
	lw		x18, 4(x10)	# 353
	sw		x8, 0(x2)	# 1181
	sw		x14, -4(x2)	# 1181
	fsw		f1, -8(x2)	# 1181
	sw		x6, -12(x2)	# 1181
	sw		x5, -16(x2)	# 1181
	sw		x29, -20(x2)	# 1181
	sw		x13, -24(x2)	# 1181
	sw		x4, -28(x2)	# 1181
	sw		x15, -32(x2)	# 1181
	sw		x12, -36(x2)	# 1181
	beq		x18, x13, beq.24921	# 1181
	addi	x7, x0, 2	# 1183
	beq		x18, x7, beq.24923	# 1183
	mul		x7, x30, x12	# 1155
	add		x7, x17, x7	# 1155
	flw		f5, 0(x7)	# 1155
	feq		x31, f5, f1	# 1
	beq		x31, x0, feq_else.24925	# 1
	addi	x4, x0, 0	# 1157
	jal		x0, feq_cont.24924	# 1
feq_else.24925:
	mul		x7, x30, x13	# 1159
	add		x7, x17, x7	# 1159
	flw		f6, 0(x7)	# 1159
	fmul	f2, f6, f2	# 1159
	mul		x7, x30, x9	# 1159
	add		x7, x17, x7	# 1159
	flw		f6, 0(x7)	# 1159
	fmul	f3, f6, f3	# 1159
	fadd	f2, f2, f3	# 1159
	mul		x7, x30, x11	# 1159
	add		x7, x17, x7	# 1159
	flw		f3, 0(x7)	# 1159
	fmul	f3, f3, f4	# 1159
	fadd	f2, f2, f3	# 1159
	mul		x7, x30, x11	# 1160
	add		x7, x16, x7	# 1160
	flw		f3, 0(x7)	# 1160
	fmul	f4, f2, f2	# 8
	fmul	f3, f5, f3	# 1161
	fsub	f3, f4, f3	# 1161
	fle		x31, f3, f1	# 2
	beq		x31, x0, fle_else.24927	# 2
	addi	x4, x0, 0	# 1168
	jal		x0, fle_cont.24926	# 2
fle_else.24927:
	lw		x7, 24(x10)	# 373
	beq		x7, x12, beq.24929	# 1163
	addi	x7, x0, 0	# 1164
	fsqrt	f3, f3	# 1164
	fadd	f2, f2, f3	# 1164
	addi	x9, x0, 4	# 1164
	mul		x9, x30, x9	# 1164
	add		x9, x17, x9	# 1164
	flw		f3, 0(x9)	# 1164
	fmul	f2, f2, f3	# 1164
	addi	x9, x26, 540	# 1164
	mul		x7, x30, x7	# 1164
	add		x7, x9, x7	# 1164
	fsw		f2, 0(x7)	# 1164
	jal		x0, beq_cont.24928	# 1163
beq.24929:
	addi	x7, x0, 0	# 1166
	fsqrt	f3, f3	# 1166
	fsub	f2, f2, f3	# 1166
	addi	x9, x0, 4	# 1166
	mul		x9, x30, x9	# 1166
	add		x9, x17, x9	# 1166
	flw		f3, 0(x9)	# 1166
	fmul	f2, f2, f3	# 1166
	addi	x9, x26, 540	# 1166
	mul		x7, x30, x7	# 1166
	add		x7, x9, x7	# 1166
	fsw		f2, 0(x7)	# 1166
beq_cont.24928:
	addi	x4, x0, 1	# 1167
fle_cont.24926:
feq_cont.24924:
	jal		x0, beq_cont.24922	# 1183
beq.24923:
	mul		x7, x30, x12	# 1146
	add		x7, x17, x7	# 1146
	flw		f2, 0(x7)	# 1146
	fle		x31, f1, f2	# 3
	beq		x31, x0, fle_else.24931	# 3
	addi	x4, x0, 0	# 1149
	jal		x0, fle_cont.24930	# 3
fle_else.24931:
	mul		x7, x30, x12	# 1147
	add		x7, x17, x7	# 1147
	flw		f2, 0(x7)	# 1147
	mul		x7, x30, x11	# 1147
	add		x7, x16, x7	# 1147
	flw		f3, 0(x7)	# 1147
	fmul	f2, f2, f3	# 1147
	addi	x7, x26, 540	# 1147
	mul		x9, x30, x12	# 1147
	add		x7, x7, x9	# 1147
	fsw		f2, 0(x7)	# 1147
	addi	x4, x0, 1	# 1148
fle_cont.24930:
beq_cont.24922:
	jal		x0, beq_cont.24920	# 1181
beq.24921:
	lw		x9, 0(x6)	# 639
	addi	x6, x17, 0
	addi	x5, x9, 0
	addi	x4, x10, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -40(x2)	# 1182
	addi	x2, x2, -44	# 1182
	lw		x31, 0(x29)	# 1182
	jalr	x1, x31, 0	# 1182
	addi	x2, x2, 44	# 1182
	lw		x1, -40(x2)	# 1182
beq_cont.24920:
	lw		x5, -36(x2)	# 1563
	beq		x4, x5, beq.24932	# 1563
	addi	x6, x26, 540	# 1567
	mul		x5, x30, x5	# 1567
	add		x5, x6, x5	# 1567
	flw		f1, 0(x5)	# 1567
	flw		f2, -8(x2)	# 6
	fle		x31, f1, f2	# 6
	beq		x31, x0, fle_else.24934	# 6
	jal		x0, fle_cont.24933	# 6
fle_else.24934:
	addi	x5, x0, 0	# 1570
	addi	x6, x26, 548	# 1570
	mul		x5, x30, x5	# 1570
	add		x5, x6, x5	# 1570
	flw		f2, 0(x5)	# 1570
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.24936	# 6
	jal		x0, fle_cont.24935	# 6
fle_else.24936:
	fadd	f2, f0, f22	# 1572
	fadd	f1, f1, f2	# 1572
	addi	x5, x0, 0	# 1573
	mul		x5, x30, x5	# 1573
	lw		x6, -4(x2)	# 1573
	add		x5, x6, x5	# 1573
	flw		f2, 0(x5)	# 1573
	fmul	f2, f2, f1	# 1573
	addi	x5, x0, 0	# 1573
	addi	x7, x26, 648	# 1573
	mul		x5, x30, x5	# 1573
	add		x5, x7, x5	# 1573
	flw		f3, 0(x5)	# 1573
	fadd	f2, f2, f3	# 1573
	addi	x5, x0, 1	# 1574
	mul		x5, x30, x5	# 1574
	add		x5, x6, x5	# 1574
	flw		f3, 0(x5)	# 1574
	fmul	f3, f3, f1	# 1574
	addi	x5, x0, 1	# 1574
	addi	x7, x26, 648	# 1574
	mul		x5, x30, x5	# 1574
	add		x5, x7, x5	# 1574
	flw		f4, 0(x5)	# 1574
	fadd	f3, f3, f4	# 1574
	addi	x5, x0, 2	# 1575
	mul		x5, x30, x5	# 1575
	add		x5, x6, x5	# 1575
	flw		f4, 0(x5)	# 1575
	fmul	f4, f4, f1	# 1575
	addi	x5, x0, 2	# 1575
	addi	x6, x26, 648	# 1575
	mul		x5, x30, x5	# 1575
	add		x5, x6, x5	# 1575
	flw		f5, 0(x5)	# 1575
	fadd	f4, f4, f5	# 1575
	addi	x5, x0, 0	# 1576
	lw		x6, -16(x2)	# 1576
	lw		x29, 0(x2)	# 1576
	sw		x4, -40(x2)	# 1576
	fsw		f4, -44(x2)	# 1576
	fsw		f3, -48(x2)	# 1576
	fsw		f2, -52(x2)	# 1576
	fsw		f1, -56(x2)	# 1576
	addi	x4, x5, 0
	addi	x5, x6, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -60(x2)	# 1576
	addi	x2, x2, -64	# 1576
	lw		x31, 0(x29)	# 1576
	jalr	x1, x31, 0	# 1576
	addi	x2, x2, 64	# 1576
	lw		x1, -60(x2)	# 1576
	addi	x5, x0, 0	# 1576
	beq		x4, x5, beq_cont.24937	# 1576
	addi	x4, x0, 0	# 1578
	addi	x5, x26, 548	# 1578
	mul		x4, x30, x4	# 1578
	add		x4, x5, x4	# 1578
	flw		f1, -56(x2)	# 1578
	fsw		f1, 0(x4)	# 1578
	addi	x4, x0, 0	# 240
	addi	x5, x26, 552	# 240
	mul		x4, x30, x4	# 240
	add		x4, x5, x4	# 240
	flw		f1, -52(x2)	# 240
	fsw		f1, 0(x4)	# 240
	addi	x4, x0, 1	# 241
	addi	x5, x26, 552	# 241
	mul		x4, x30, x4	# 241
	add		x4, x5, x4	# 241
	flw		f1, -48(x2)	# 241
	fsw		f1, 0(x4)	# 241
	addi	x4, x0, 2	# 242
	addi	x5, x26, 552	# 242
	mul		x4, x30, x4	# 242
	add		x4, x5, x4	# 242
	flw		f1, -44(x2)	# 242
	fsw		f1, 0(x4)	# 242
	addi	x4, x0, 0	# 1580
	addi	x5, x26, 564	# 1580
	mul		x4, x30, x4	# 1580
	add		x4, x5, x4	# 1580
	lw		x5, -32(x2)	# 1580
	sw		x5, 0(x4)	# 1580
	addi	x4, x0, 0	# 1581
	addi	x5, x26, 544	# 1581
	mul		x4, x30, x4	# 1581
	add		x4, x5, x4	# 1581
	lw		x5, -40(x2)	# 1581
	sw		x5, 0(x4)	# 1581
beq_cont.24937:
fle_cont.24935:
fle_cont.24933:
	lw		x4, -24(x2)	# 1587
	lw		x5, -28(x2)	# 1587
	add		x4, x5, x4	# 1587
	lw		x5, -16(x2)	# 1587
	lw		x6, -12(x2)	# 1587
	lw		x29, -20(x2)	# 1587
	lw		x31, 0(x29)	# 1587
	jalr	x0, x31, 0	# 1587
beq.24932:
	addi	x4, x26, 48	# 1591
	lw		x6, -32(x2)	# 1591
	mul		x6, x30, x6	# 1591
	add		x4, x4, x6	# 1591
	lw		x4, 0(x4)	# 1591
	lw		x4, 24(x4)	# 373
	beq		x4, x5, beq.24938	# 1591
	lw		x4, -24(x2)	# 1592
	lw		x5, -28(x2)	# 1592
	add		x4, x5, x4	# 1592
	lw		x5, -16(x2)	# 1592
	lw		x6, -12(x2)	# 1592
	lw		x29, -20(x2)	# 1592
	lw		x31, 0(x29)	# 1592
	jalr	x0, x31, 0	# 1592
beq.24938:
	jalr	x0, x1, 0	# 1593
beq.24919:
	jalr	x0, x1, 0	# 1560
solve_one_or_network_fast.2840.13021:
	lw		x7, 16(x29)	# 1599
	lw		x8, 12(x29)	# 1599
	lw		x9, 8(x29)	# 1599
	lw		x10, 4(x29)	# 1599
	mul		x11, x30, x4	# 1599
	add		x11, x5, x11	# 1599
	lw		x11, 0(x11)	# 1599
	beq		x11, x8, beq.24941	# 1600
	addi	x8, x26, 332	# 1601
	mul		x11, x30, x11	# 1601
	add		x8, x8, x11	# 1601
	lw		x8, 0(x8)	# 1601
	sw		x6, 0(x2)	# 1602
	sw		x5, -4(x2)	# 1602
	sw		x29, -8(x2)	# 1602
	sw		x10, -12(x2)	# 1602
	sw		x4, -16(x2)	# 1602
	addi	x5, x8, 0
	addi	x4, x9, 0
	addi	x29, x7, 0
	sw		x1, -20(x2)	# 1602
	addi	x2, x2, -24	# 1602
	lw		x31, 0(x29)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 24	# 1602
	lw		x1, -20(x2)	# 1602
	lw		x4, -12(x2)	# 1603
	lw		x5, -16(x2)	# 1603
	add		x4, x5, x4	# 1603
	lw		x5, -4(x2)	# 1603
	lw		x6, 0(x2)	# 1603
	lw		x29, -8(x2)	# 1603
	lw		x31, 0(x29)	# 1603
	jalr	x0, x31, 0	# 1603
beq.24941:
	jalr	x0, x1, 0	# 1604
trace_or_matrix_fast.2844.13025:
	lw		x7, 32(x29)	# 1609
	lw		x8, 28(x29)	# 1609
	lw		x9, 24(x29)	# 1609
	lw		x10, 20(x29)	# 1609
	lw		x11, 16(x29)	# 1609
	lw		x12, 12(x29)	# 1609
	lw		x13, 8(x29)	# 1609
	flw		f1, 4(x29)	# 1609
	mul		x14, x30, x4	# 1609
	add		x14, x5, x14	# 1609
	lw		x14, 0(x14)	# 1609
	mul		x15, x30, x12	# 1610
	add		x15, x14, x15	# 1610
	lw		x15, 0(x15)	# 1610
	beq		x15, x10, beq.24943	# 1611
	addi	x10, x0, 99	# 1614
	sw		x6, 0(x2)	# 1614
	sw		x5, -4(x2)	# 1614
	sw		x29, -8(x2)	# 1614
	sw		x13, -12(x2)	# 1614
	sw		x4, -16(x2)	# 1614
	beq		x15, x10, beq.24945	# 1614
	addi	x10, x26, 48	# 1173
	mul		x16, x30, x15	# 1173
	add		x10, x10, x16	# 1173
	lw		x10, 0(x10)	# 1173
	lw		x16, 40(x10)	# 548
	addi	x17, x0, 0	# 1175
	mul		x17, x30, x17	# 1175
	add		x17, x16, x17	# 1175
	flw		f2, 0(x17)	# 1175
	addi	x17, x0, 1	# 1176
	mul		x17, x30, x17	# 1176
	add		x17, x16, x17	# 1176
	flw		f3, 0(x17)	# 1176
	addi	x17, x0, 2	# 1177
	mul		x17, x30, x17	# 1177
	add		x17, x16, x17	# 1177
	flw		f4, 0(x17)	# 1177
	lw		x17, 4(x6)	# 645
	mul		x15, x30, x15	# 1179
	add		x15, x17, x15	# 1179
	lw		x15, 0(x15)	# 1179
	lw		x17, 4(x10)	# 353
	addi	x18, x0, 1	# 1181
	sw		x14, -20(x2)	# 1181
	sw		x8, -24(x2)	# 1181
	beq		x17, x18, beq.24947	# 1181
	addi	x7, x0, 2	# 1183
	beq		x17, x7, beq.24949	# 1183
	mul		x7, x30, x12	# 1155
	add		x7, x15, x7	# 1155
	flw		f5, 0(x7)	# 1155
	feq		x31, f5, f1	# 1
	beq		x31, x0, feq_else.24951	# 1
	addi	x4, x0, 0	# 1157
	jal		x0, feq_cont.24950	# 1
feq_else.24951:
	mul		x7, x30, x13	# 1159
	add		x7, x15, x7	# 1159
	flw		f6, 0(x7)	# 1159
	fmul	f2, f6, f2	# 1159
	mul		x7, x30, x9	# 1159
	add		x7, x15, x7	# 1159
	flw		f6, 0(x7)	# 1159
	fmul	f3, f6, f3	# 1159
	fadd	f2, f2, f3	# 1159
	mul		x7, x30, x11	# 1159
	add		x7, x15, x7	# 1159
	flw		f3, 0(x7)	# 1159
	fmul	f3, f3, f4	# 1159
	fadd	f2, f2, f3	# 1159
	mul		x7, x30, x11	# 1160
	add		x7, x16, x7	# 1160
	flw		f3, 0(x7)	# 1160
	fmul	f4, f2, f2	# 8
	fmul	f3, f5, f3	# 1161
	fsub	f3, f4, f3	# 1161
	fle		x31, f3, f1	# 2
	beq		x31, x0, fle_else.24953	# 2
	addi	x4, x0, 0	# 1168
	jal		x0, fle_cont.24952	# 2
fle_else.24953:
	lw		x7, 24(x10)	# 373
	beq		x7, x12, beq.24955	# 1163
	addi	x7, x0, 0	# 1164
	fsqrt	f1, f3	# 1164
	fadd	f1, f2, f1	# 1164
	addi	x9, x0, 4	# 1164
	mul		x9, x30, x9	# 1164
	add		x9, x15, x9	# 1164
	flw		f2, 0(x9)	# 1164
	fmul	f1, f1, f2	# 1164
	addi	x9, x26, 540	# 1164
	mul		x7, x30, x7	# 1164
	add		x7, x9, x7	# 1164
	fsw		f1, 0(x7)	# 1164
	jal		x0, beq_cont.24954	# 1163
beq.24955:
	addi	x7, x0, 0	# 1166
	fsqrt	f1, f3	# 1166
	fsub	f1, f2, f1	# 1166
	addi	x9, x0, 4	# 1166
	mul		x9, x30, x9	# 1166
	add		x9, x15, x9	# 1166
	flw		f2, 0(x9)	# 1166
	fmul	f1, f1, f2	# 1166
	addi	x9, x26, 540	# 1166
	mul		x7, x30, x7	# 1166
	add		x7, x9, x7	# 1166
	fsw		f1, 0(x7)	# 1166
beq_cont.24954:
	addi	x4, x0, 1	# 1167
fle_cont.24952:
feq_cont.24950:
	jal		x0, beq_cont.24948	# 1183
beq.24949:
	mul		x7, x30, x12	# 1146
	add		x7, x15, x7	# 1146
	flw		f2, 0(x7)	# 1146
	fle		x31, f1, f2	# 3
	beq		x31, x0, fle_else.24957	# 3
	addi	x4, x0, 0	# 1149
	jal		x0, fle_cont.24956	# 3
fle_else.24957:
	mul		x7, x30, x12	# 1147
	add		x7, x15, x7	# 1147
	flw		f1, 0(x7)	# 1147
	mul		x7, x30, x11	# 1147
	add		x7, x16, x7	# 1147
	flw		f2, 0(x7)	# 1147
	fmul	f1, f1, f2	# 1147
	addi	x7, x26, 540	# 1147
	mul		x9, x30, x12	# 1147
	add		x7, x7, x9	# 1147
	fsw		f1, 0(x7)	# 1147
	addi	x4, x0, 1	# 1148
fle_cont.24956:
beq_cont.24948:
	jal		x0, beq_cont.24946	# 1181
beq.24947:
	lw		x9, 0(x6)	# 639
	addi	x6, x15, 0
	addi	x5, x9, 0
	addi	x4, x10, 0
	addi	x29, x7, 0
	fadd	f1, f0, f2
	fadd	f2, f0, f3
	fadd	f3, f0, f4
	sw		x1, -28(x2)	# 1182
	addi	x2, x2, -32	# 1182
	lw		x31, 0(x29)	# 1182
	jalr	x1, x31, 0	# 1182
	addi	x2, x2, 32	# 1182
	lw		x1, -28(x2)	# 1182
beq_cont.24946:
	addi	x5, x0, 0	# 1620
	beq		x4, x5, beq_cont.24958	# 1620
	addi	x4, x0, 0	# 1621
	addi	x5, x26, 540	# 1621
	mul		x4, x30, x4	# 1621
	add		x4, x5, x4	# 1621
	flw		f1, 0(x4)	# 1621
	addi	x4, x0, 0	# 1622
	addi	x5, x26, 548	# 1622
	mul		x4, x30, x4	# 1622
	add		x4, x5, x4	# 1622
	flw		f2, 0(x4)	# 1622
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.24960	# 6
	jal		x0, fle_cont.24959	# 6
fle_else.24960:
	addi	x4, x0, 1	# 1623
	lw		x5, -20(x2)	# 1623
	lw		x6, 0(x2)	# 1623
	lw		x29, -24(x2)	# 1623
	sw		x1, -28(x2)	# 1623
	addi	x2, x2, -32	# 1623
	lw		x31, 0(x29)	# 1623
	jalr	x1, x31, 0	# 1623
	addi	x2, x2, 32	# 1623
	lw		x1, -28(x2)	# 1623
fle_cont.24959:
beq_cont.24958:
	jal		x0, beq_cont.24944	# 1614
beq.24945:
	addi	x7, x0, 1	# 1615
	addi	x5, x14, 0
	addi	x4, x7, 0
	addi	x29, x8, 0
	sw		x1, -28(x2)	# 1615
	addi	x2, x2, -32	# 1615
	lw		x31, 0(x29)	# 1615
	jalr	x1, x31, 0	# 1615
	addi	x2, x2, 32	# 1615
	lw		x1, -28(x2)	# 1615
beq_cont.24944:
	lw		x4, -12(x2)	# 1627
	lw		x5, -16(x2)	# 1627
	add		x4, x5, x4	# 1627
	lw		x5, -4(x2)	# 1627
	lw		x6, 0(x2)	# 1627
	lw		x29, -8(x2)	# 1627
	lw		x31, 0(x29)	# 1627
	jalr	x0, x31, 0	# 1627
beq.24943:
	jalr	x0, x1, 0	# 1612
get_nvector_second.2854.13029:
	lw		x5, 16(x29)	# 1670
	lw		x6, 12(x29)	# 1670
	lw		x7, 8(x29)	# 1670
	flw		f1, 4(x29)	# 1670
	addi	x8, x26, 552	# 1670
	mul		x9, x30, x6	# 1670
	add		x8, x8, x9	# 1670
	flw		f2, 0(x8)	# 1670
	lw		x8, 20(x4)	# 431
	mul		x9, x30, x6	# 436
	add		x8, x8, x9	# 436
	flw		f3, 0(x8)	# 436
	fsub	f2, f2, f3	# 1670
	addi	x8, x26, 552	# 1671
	mul		x9, x30, x7	# 1671
	add		x8, x8, x9	# 1671
	flw		f3, 0(x8)	# 1671
	lw		x8, 20(x4)	# 441
	mul		x9, x30, x7	# 446
	add		x8, x8, x9	# 446
	flw		f4, 0(x8)	# 446
	fsub	f3, f3, f4	# 1671
	addi	x8, x26, 552	# 1672
	mul		x9, x30, x5	# 1672
	add		x8, x8, x9	# 1672
	flw		f4, 0(x8)	# 1672
	lw		x8, 20(x4)	# 451
	mul		x9, x30, x5	# 456
	add		x8, x8, x9	# 456
	flw		f5, 0(x8)	# 456
	fsub	f4, f4, f5	# 1672
	lw		x8, 16(x4)	# 391
	mul		x9, x30, x6	# 396
	add		x8, x8, x9	# 396
	flw		f5, 0(x8)	# 396
	fmul	f5, f2, f5	# 1674
	lw		x8, 16(x4)	# 401
	mul		x9, x30, x7	# 406
	add		x8, x8, x9	# 406
	flw		f6, 0(x8)	# 406
	fmul	f6, f3, f6	# 1675
	lw		x8, 16(x4)	# 411
	mul		x9, x30, x5	# 416
	add		x8, x8, x9	# 416
	flw		f7, 0(x8)	# 416
	fmul	f7, f4, f7	# 1676
	lw		x8, 12(x4)	# 382
	beq		x8, x6, beq.24963	# 1678
	addi	x8, x0, 0	# 1683
	lw		x9, 36(x4)	# 531
	addi	x10, x0, 2	# 536
	mul		x10, x30, x10	# 536
	add		x9, x9, x10	# 536
	flw		f8, 0(x9)	# 536
	fmul	f8, f3, f8	# 1683
	lw		x9, 36(x4)	# 521
	addi	x10, x0, 1	# 526
	mul		x10, x30, x10	# 526
	add		x9, x9, x10	# 526
	flw		f9, 0(x9)	# 526
	fmul	f9, f4, f9	# 1683
	fadd	f8, f8, f9	# 1683
	fadd	f9, f0, f17	# 7
	fmul	f8, f8, f9	# 7
	fadd	f5, f5, f8	# 1683
	addi	x9, x26, 568	# 1683
	mul		x8, x30, x8	# 1683
	add		x8, x9, x8	# 1683
	fsw		f5, 0(x8)	# 1683
	addi	x8, x0, 1	# 1684
	lw		x9, 36(x4)	# 531
	addi	x10, x0, 2	# 536
	mul		x10, x30, x10	# 536
	add		x9, x9, x10	# 536
	flw		f5, 0(x9)	# 536
	fmul	f5, f2, f5	# 1684
	lw		x9, 36(x4)	# 511
	addi	x10, x0, 0	# 516
	mul		x10, x30, x10	# 516
	add		x9, x9, x10	# 516
	flw		f8, 0(x9)	# 516
	fmul	f4, f4, f8	# 1684
	fadd	f4, f5, f4	# 1684
	fadd	f5, f0, f17	# 7
	fmul	f4, f4, f5	# 7
	fadd	f4, f6, f4	# 1684
	addi	x9, x26, 568	# 1684
	mul		x8, x30, x8	# 1684
	add		x8, x9, x8	# 1684
	fsw		f4, 0(x8)	# 1684
	addi	x8, x0, 2	# 1685
	lw		x9, 36(x4)	# 521
	addi	x10, x0, 1	# 526
	mul		x10, x30, x10	# 526
	add		x9, x9, x10	# 526
	flw		f4, 0(x9)	# 526
	fmul	f2, f2, f4	# 1685
	lw		x9, 36(x4)	# 511
	addi	x10, x0, 0	# 516
	mul		x10, x30, x10	# 516
	add		x9, x9, x10	# 516
	flw		f4, 0(x9)	# 516
	fmul	f3, f3, f4	# 1685
	fadd	f2, f2, f3	# 1685
	fadd	f3, f0, f17	# 7
	fmul	f2, f2, f3	# 7
	fadd	f2, f7, f2	# 1685
	addi	x9, x26, 568	# 1685
	mul		x8, x30, x8	# 1685
	add		x8, x9, x8	# 1685
	fsw		f2, 0(x8)	# 1685
	jal		x0, beq_cont.24962	# 1678
beq.24963:
	addi	x8, x0, 0	# 1679
	addi	x9, x26, 568	# 1679
	mul		x8, x30, x8	# 1679
	add		x8, x9, x8	# 1679
	fsw		f5, 0(x8)	# 1679
	addi	x8, x0, 1	# 1680
	addi	x9, x26, 568	# 1680
	mul		x8, x30, x8	# 1680
	add		x8, x9, x8	# 1680
	fsw		f6, 0(x8)	# 1680
	addi	x8, x0, 2	# 1681
	addi	x9, x26, 568	# 1681
	mul		x8, x30, x8	# 1681
	add		x8, x9, x8	# 1681
	fsw		f7, 0(x8)	# 1681
beq_cont.24962:
	lw		x4, 24(x4)	# 373
	addi	x8, x26, 568	# 283
	mul		x9, x30, x6	# 283
	add		x8, x8, x9	# 283
	flw		f2, 0(x8)	# 283
	fmul	f2, f2, f2	# 8
	addi	x8, x26, 568	# 283
	mul		x9, x30, x7	# 283
	add		x8, x8, x9	# 283
	flw		f3, 0(x8)	# 283
	fmul	f3, f3, f3	# 8
	fadd	f2, f2, f3	# 283
	addi	x8, x26, 568	# 283
	mul		x9, x30, x5	# 283
	add		x8, x8, x9	# 283
	flw		f3, 0(x8)	# 283
	fmul	f3, f3, f3	# 8
	fadd	f2, f2, f3	# 283
	fsqrt	f2, f2	# 283
	feq		x31, f2, f1	# 1
	beq		x31, x0, feq_else.24965	# 1
	fadd	f1, f0, f16	# 284
	jal		x0, feq_cont.24964	# 1
feq_else.24965:
	beq		x4, x6, beq.24967	# 284
	fadd	f1, f0, f18	# 284
	fdiv	f1, f1, f2	# 284
	jal		x0, beq_cont.24966	# 284
beq.24967:
	fadd	f1, f0, f16	# 284
	fdiv	f1, f1, f2	# 284
beq_cont.24966:
feq_cont.24964:
	addi	x4, x26, 568	# 285
	mul		x8, x30, x6	# 285
	add		x4, x4, x8	# 285
	flw		f2, 0(x4)	# 285
	fmul	f2, f2, f1	# 285
	addi	x4, x26, 568	# 285
	mul		x6, x30, x6	# 285
	add		x4, x4, x6	# 285
	fsw		f2, 0(x4)	# 285
	addi	x4, x26, 568	# 286
	mul		x6, x30, x7	# 286
	add		x4, x4, x6	# 286
	flw		f2, 0(x4)	# 286
	fmul	f2, f2, f1	# 286
	addi	x4, x26, 568	# 286
	mul		x6, x30, x7	# 286
	add		x4, x4, x6	# 286
	fsw		f2, 0(x4)	# 286
	addi	x4, x26, 568	# 287
	mul		x6, x30, x5	# 287
	add		x4, x4, x6	# 287
	flw		f2, 0(x4)	# 287
	fmul	f1, f2, f1	# 287
	addi	x4, x26, 568	# 287
	mul		x5, x30, x5	# 287
	add		x4, x4, x5	# 287
	fsw		f1, 0(x4)	# 287
	jalr	x0, x1, 0	# 287
utexture.2859.13031:
	lw		x6, 36(x29)	# 343
	lw		x7, 32(x29)	# 343
	lw		x8, 28(x29)	# 343
	lw		x9, 24(x29)	# 343
	lw		x10, 20(x29)	# 343
	lw		x11, 16(x29)	# 343
	lw		x12, 12(x29)	# 343
	flw		f1, 8(x29)	# 343
	flw		f2, 4(x29)	# 343
	lw		x13, 0(x4)	# 343
	lw		x14, 32(x4)	# 481
	mul		x15, x30, x11	# 486
	add		x14, x14, x15	# 486
	flw		f3, 0(x14)	# 486
	addi	x14, x26, 580	# 1710
	mul		x15, x30, x11	# 1710
	add		x14, x14, x15	# 1710
	fsw		f3, 0(x14)	# 1710
	lw		x14, 32(x4)	# 491
	mul		x15, x30, x12	# 496
	add		x14, x14, x15	# 496
	flw		f3, 0(x14)	# 496
	addi	x14, x26, 580	# 1711
	mul		x15, x30, x12	# 1711
	add		x14, x14, x15	# 1711
	fsw		f3, 0(x14)	# 1711
	lw		x14, 32(x4)	# 501
	mul		x15, x30, x9	# 506
	add		x14, x14, x15	# 506
	flw		f3, 0(x14)	# 506
	addi	x14, x26, 580	# 1712
	mul		x15, x30, x9	# 1712
	add		x14, x14, x15	# 1712
	fsw		f3, 0(x14)	# 1712
	beq		x13, x12, beq.24969	# 1713
	beq		x13, x9, beq.24970	# 1731
	beq		x13, x10, beq.24971	# 1738
	addi	x6, x0, 4	# 1749
	beq		x13, x6, beq.24972	# 1749
	jalr	x0, x1, 0	# 1777
beq.24972:
	mul		x6, x30, x11	# 1751
	add		x6, x5, x6	# 1751
	flw		f3, 0(x6)	# 1751
	lw		x6, 20(x4)	# 431
	mul		x7, x30, x11	# 436
	add		x6, x6, x7	# 436
	flw		f4, 0(x6)	# 436
	fsub	f3, f3, f4	# 1751
	lw		x6, 16(x4)	# 391
	mul		x7, x30, x11	# 396
	add		x6, x6, x7	# 396
	flw		f4, 0(x6)	# 396
	fsqrt	f4, f4	# 1751
	fmul	f3, f3, f4	# 1751
	mul		x6, x30, x9	# 1752
	add		x6, x5, x6	# 1752
	flw		f4, 0(x6)	# 1752
	lw		x6, 20(x4)	# 451
	mul		x7, x30, x9	# 456
	add		x6, x6, x7	# 456
	flw		f5, 0(x6)	# 456
	fsub	f4, f4, f5	# 1752
	lw		x6, 16(x4)	# 411
	mul		x7, x30, x9	# 416
	add		x6, x6, x7	# 416
	flw		f5, 0(x6)	# 416
	fsqrt	f5, f5	# 1752
	fmul	f4, f4, f5	# 1752
	fmul	f5, f3, f3	# 8
	fmul	f6, f4, f4	# 8
	fadd	f5, f5, f6	# 1753
	fle		x31, f3, f2	# 5
	beq		x31, x0, fle_else.24975	# 5
	fsub	f6, f0, f3	# 5
	jal		x0, fle_cont.24974	# 5
fle_else.24975:
	fadd	f6, f0, f3	# 5
fle_cont.24974:
	lui		x6, %hi(l.20795)	# 1755
	ori		x6, x0, %lo(l.20795)	# 1755
	flw		f7, 0(x6)	# 1755
	sw		x9, 0(x2)	# 6
	fsw		f1, -4(x2)	# 6
	sw		x8, -8(x2)	# 6
	fsw		f7, -12(x2)	# 6
	fsw		f5, -16(x2)	# 6
	sw		x4, -20(x2)	# 6
	sw		x5, -24(x2)	# 6
	sw		x12, -28(x2)	# 6
	fsw		f2, -32(x2)	# 6
	fle		x31, f7, f6	# 6
	beq		x31, x0, fle_else.24977	# 6
	fdiv	f3, f4, f3	# 1758
	fadd	f4, f0, f0	# 5
	fle		x31, f3, f4	# 5
	beq		x31, x0, fle_cont.24978	# 5
	fsub	f3, f0, f3	# 5
fle_cont.24978:
	addi	x29, x8, 0
	fadd	f1, f0, f3
	sw		x1, -36(x2)	# 1760
	addi	x2, x2, -40	# 1760
	lw		x31, 0(x29)	# 1760
	jalr	x1, x31, 0	# 1760
	addi	x2, x2, 40	# 1760
	lw		x1, -36(x2)	# 1760
	lui		x4, %hi(l.20800)	# 1760
	ori		x4, x0, %lo(l.20800)	# 1760
	flw		f2, 0(x4)	# 1760
	fmul	f1, f1, f2	# 1760
	fadd	f2, f0, f23	# 1760
	fdiv	f1, f1, f2	# 1760
	jal		x0, fle_cont.24976	# 6
fle_else.24977:
	fadd	f1, f0, f29	# 1756
fle_cont.24976:
	flw		f2, -32(x2)	# 18
	fsw		f1, -36(x2)	# 18
	fle		x31, f2, f1	# 18
	beq		x31, x0, fle_else.24980	# 18
	sw		x1, -40(x2)	# 18
	addi	x2, x2, -44	# 18
	jal		x1, int_of_float.2487.12783	# 18
	addi	x2, x2, 44	# 18
	lw		x1, -40(x2)	# 18
	sw		x1, -40(x2)	# 18
	addi	x2, x2, -44	# 18
	jal		x1, float_of_int.2489.12785	# 18
	addi	x2, x2, 44	# 18
	lw		x1, -40(x2)	# 18
	jal		x0, fle_cont.24979	# 18
fle_else.24980:
	sw		x1, -40(x2)	# 19
	addi	x2, x2, -44	# 19
	jal		x1, int_of_float.2487.12783	# 19
	addi	x2, x2, 44	# 19
	lw		x1, -40(x2)	# 19
	addi	x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	sw		x1, -40(x2)	# 19
	addi	x2, x2, -44	# 19
	jal		x1, float_of_int.2489.12785	# 19
	addi	x2, x2, 44	# 19
	lw		x1, -40(x2)	# 19
fle_cont.24979:
	flw		f2, -36(x2)	# 1762
	fsub	f1, f2, f1	# 1762
	lw		x4, -28(x2)	# 1764
	mul		x5, x30, x4	# 1764
	lw		x6, -24(x2)	# 1764
	add		x5, x6, x5	# 1764
	flw		f2, 0(x5)	# 1764
	lw		x5, -20(x2)	# 441
	lw		x6, 20(x5)	# 441
	mul		x7, x30, x4	# 446
	add		x6, x6, x7	# 446
	flw		f3, 0(x6)	# 446
	fsub	f2, f2, f3	# 1764
	lw		x5, 16(x5)	# 401
	mul		x4, x30, x4	# 406
	add		x4, x5, x4	# 406
	flw		f3, 0(x4)	# 406
	fsqrt	f3, f3	# 1764
	fmul	f2, f2, f3	# 1764
	flw		f3, -32(x2)	# 5
	flw		f4, -16(x2)	# 5
	fle		x31, f4, f3	# 5
	beq		x31, x0, fle_else.24982	# 5
	fsub	f5, f0, f4	# 5
	jal		x0, fle_cont.24981	# 5
fle_else.24982:
	fadd	f5, f0, f4	# 5
fle_cont.24981:
	flw		f6, -12(x2)	# 6
	fsw		f1, -40(x2)	# 6
	fle		x31, f6, f5	# 6
	beq		x31, x0, fle_else.24984	# 6
	fdiv	f2, f2, f4	# 1769
	fadd	f4, f0, f0	# 5
	fle		x31, f2, f4	# 5
	beq		x31, x0, fle_cont.24985	# 5
	fsub	f2, f0, f2	# 5
fle_cont.24985:
	lw		x29, -8(x2)	# 1770
	fadd	f1, f0, f2
	sw		x1, -44(x2)	# 1770
	addi	x2, x2, -48	# 1770
	lw		x31, 0(x29)	# 1770
	jalr	x1, x31, 0	# 1770
	addi	x2, x2, 48	# 1770
	lw		x1, -44(x2)	# 1770
	lui		x4, %hi(l.20800)	# 1770
	ori		x4, x0, %lo(l.20800)	# 1770
	flw		f2, 0(x4)	# 1770
	fmul	f1, f1, f2	# 1770
	fadd	f2, f0, f23	# 1770
	fdiv	f1, f1, f2	# 1770
	jal		x0, fle_cont.24983	# 6
fle_else.24984:
	fadd	f1, f0, f29	# 1767
fle_cont.24983:
	flw		f2, -32(x2)	# 18
	fsw		f1, -44(x2)	# 18
	fle		x31, f2, f1	# 18
	beq		x31, x0, fle_else.24987	# 18
	sw		x1, -48(x2)	# 18
	addi	x2, x2, -52	# 18
	jal		x1, int_of_float.2487.12783	# 18
	addi	x2, x2, 52	# 18
	lw		x1, -48(x2)	# 18
	sw		x1, -48(x2)	# 18
	addi	x2, x2, -52	# 18
	jal		x1, float_of_int.2489.12785	# 18
	addi	x2, x2, 52	# 18
	lw		x1, -48(x2)	# 18
	jal		x0, fle_cont.24986	# 18
fle_else.24987:
	sw		x1, -48(x2)	# 19
	addi	x2, x2, -52	# 19
	jal		x1, int_of_float.2487.12783	# 19
	addi	x2, x2, 52	# 19
	lw		x1, -48(x2)	# 19
	addi	x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	sw		x1, -48(x2)	# 19
	addi	x2, x2, -52	# 19
	jal		x1, float_of_int.2489.12785	# 19
	addi	x2, x2, 52	# 19
	lw		x1, -48(x2)	# 19
fle_cont.24986:
	flw		f2, -44(x2)	# 1772
	fsub	f1, f2, f1	# 1772
	lui		x4, %hi(l.20817)	# 1773
	ori		x4, x0, %lo(l.20817)	# 1773
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
	beq		x31, x0, fle_else.24989	# 3
	jal		x0, fle_cont.24988	# 3
fle_else.24989:
	fadd	f1, f0, f2	# 1774
fle_cont.24988:
	flw		f2, -4(x2)	# 1775
	fmul	f1, f2, f1	# 1775
	lui		x4, %hi(l.20820)	# 1775
	ori		x4, x0, %lo(l.20820)	# 1775
	flw		f2, 0(x4)	# 1775
	fdiv	f1, f1, f2	# 1775
	addi	x4, x26, 580	# 1775
	lw		x5, 0(x2)	# 1775
	mul		x5, x30, x5	# 1775
	add		x4, x4, x5	# 1775
	fsw		f1, 0(x4)	# 1775
	jalr	x0, x1, 0	# 1775
beq.24971:
	mul		x6, x30, x11	# 1741
	add		x6, x5, x6	# 1741
	flw		f3, 0(x6)	# 1741
	lw		x6, 20(x4)	# 431
	mul		x8, x30, x11	# 436
	add		x6, x6, x8	# 436
	flw		f4, 0(x6)	# 436
	fsub	f3, f3, f4	# 1741
	mul		x6, x30, x9	# 1742
	add		x5, x5, x6	# 1742
	flw		f4, 0(x5)	# 1742
	lw		x4, 20(x4)	# 451
	mul		x5, x30, x9	# 456
	add		x4, x4, x5	# 456
	flw		f5, 0(x4)	# 456
	fsub	f4, f4, f5	# 1742
	fmul	f3, f3, f3	# 8
	fmul	f4, f4, f4	# 8
	fadd	f3, f3, f4	# 1743
	fsqrt	f3, f3	# 1743
	fadd	f4, f0, f30	# 1743
	fdiv	f3, f3, f4	# 1743
	sw		x9, 0(x2)	# 18
	sw		x12, -28(x2)	# 18
	fsw		f1, -4(x2)	# 18
	sw		x7, -48(x2)	# 18
	fsw		f3, -52(x2)	# 18
	fle		x31, f2, f3	# 18
	beq		x31, x0, fle_else.24992	# 18
	fadd	f1, f0, f3
	sw		x1, -56(x2)	# 18
	addi	x2, x2, -60	# 18
	jal		x1, int_of_float.2487.12783	# 18
	addi	x2, x2, 60	# 18
	lw		x1, -56(x2)	# 18
	sw		x1, -56(x2)	# 18
	addi	x2, x2, -60	# 18
	jal		x1, float_of_int.2489.12785	# 18
	addi	x2, x2, 60	# 18
	lw		x1, -56(x2)	# 18
	jal		x0, fle_cont.24991	# 18
fle_else.24992:
	fadd	f1, f0, f3
	sw		x1, -56(x2)	# 19
	addi	x2, x2, -60	# 19
	jal		x1, int_of_float.2487.12783	# 19
	addi	x2, x2, 60	# 19
	lw		x1, -56(x2)	# 19
	addi	x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	sw		x1, -56(x2)	# 19
	addi	x2, x2, -60	# 19
	jal		x1, float_of_int.2489.12785	# 19
	addi	x2, x2, 60	# 19
	lw		x1, -56(x2)	# 19
fle_cont.24991:
	flw		f2, -52(x2)	# 1744
	fsub	f1, f2, f1	# 1744
	fadd	f2, f0, f23	# 1744
	fmul	f1, f1, f2	# 1744
	lw		x29, -48(x2)	# 1745
	sw		x1, -56(x2)	# 1745
	addi	x2, x2, -60	# 1745
	lw		x31, 0(x29)	# 1745
	jalr	x1, x31, 0	# 1745
	addi	x2, x2, 60	# 1745
	lw		x1, -56(x2)	# 1745
	fmul	f1, f1, f1	# 8
	flw		f2, -4(x2)	# 1746
	fmul	f3, f1, f2	# 1746
	addi	x4, x26, 580	# 1746
	lw		x5, -28(x2)	# 1746
	mul		x5, x30, x5	# 1746
	add		x4, x4, x5	# 1746
	fsw		f3, 0(x4)	# 1746
	fadd	f3, f0, f16	# 1747
	fsub	f1, f3, f1	# 1747
	fmul	f1, f1, f2	# 1747
	addi	x4, x26, 580	# 1747
	lw		x5, 0(x2)	# 1747
	mul		x5, x30, x5	# 1747
	add		x4, x4, x5	# 1747
	fsw		f1, 0(x4)	# 1747
	jalr	x0, x1, 0	# 1747
beq.24970:
	mul		x4, x30, x12	# 1734
	add		x4, x5, x4	# 1734
	flw		f2, 0(x4)	# 1734
	lui		x4, %hi(l.20847)	# 1734
	ori		x4, x0, %lo(l.20847)	# 1734
	flw		f3, 0(x4)	# 1734
	fmul	f2, f2, f3	# 1734
	sw		x12, -28(x2)	# 1734
	sw		x11, -56(x2)	# 1734
	fsw		f1, -4(x2)	# 1734
	addi	x29, x6, 0
	fadd	f1, f0, f2
	sw		x1, -60(x2)	# 1734
	addi	x2, x2, -64	# 1734
	lw		x31, 0(x29)	# 1734
	jalr	x1, x31, 0	# 1734
	addi	x2, x2, 64	# 1734
	lw		x1, -60(x2)	# 1734
	fmul	f1, f1, f1	# 8
	flw		f2, -4(x2)	# 1735
	fmul	f3, f2, f1	# 1735
	addi	x4, x26, 580	# 1735
	lw		x5, -56(x2)	# 1735
	mul		x5, x30, x5	# 1735
	add		x4, x4, x5	# 1735
	fsw		f3, 0(x4)	# 1735
	fadd	f3, f0, f16	# 1736
	fsub	f1, f3, f1	# 1736
	fmul	f1, f2, f1	# 1736
	addi	x4, x26, 580	# 1736
	lw		x5, -28(x2)	# 1736
	mul		x5, x30, x5	# 1736
	add		x4, x4, x5	# 1736
	fsw		f1, 0(x4)	# 1736
	jalr	x0, x1, 0	# 1736
beq.24969:
	mul		x6, x30, x11	# 1716
	add		x6, x5, x6	# 1716
	flw		f3, 0(x6)	# 1716
	lw		x6, 20(x4)	# 431
	mul		x7, x30, x11	# 436
	add		x6, x6, x7	# 436
	flw		f4, 0(x6)	# 436
	fsub	f3, f3, f4	# 1716
	lui		x6, %hi(l.20860)	# 1718
	ori		x6, x0, %lo(l.20860)	# 1718
	flw		f4, 0(x6)	# 1718
	fmul	f5, f3, f4	# 1718
	sw		x12, -28(x2)	# 18
	fsw		f1, -4(x2)	# 18
	fsw		f2, -32(x2)	# 18
	fsw		f4, -60(x2)	# 18
	sw		x4, -20(x2)	# 18
	sw		x5, -24(x2)	# 18
	sw		x9, 0(x2)	# 18
	fsw		f3, -64(x2)	# 18
	fle		x31, f2, f5	# 18
	beq		x31, x0, fle_else.24996	# 18
	fadd	f1, f0, f5
	sw		x1, -68(x2)	# 18
	addi	x2, x2, -72	# 18
	jal		x1, int_of_float.2487.12783	# 18
	addi	x2, x2, 72	# 18
	lw		x1, -68(x2)	# 18
	sw		x1, -68(x2)	# 18
	addi	x2, x2, -72	# 18
	jal		x1, float_of_int.2489.12785	# 18
	addi	x2, x2, 72	# 18
	lw		x1, -68(x2)	# 18
	jal		x0, fle_cont.24995	# 18
fle_else.24996:
	fadd	f1, f0, f5
	sw		x1, -68(x2)	# 19
	addi	x2, x2, -72	# 19
	jal		x1, int_of_float.2487.12783	# 19
	addi	x2, x2, 72	# 19
	lw		x1, -68(x2)	# 19
	addi	x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	sw		x1, -68(x2)	# 19
	addi	x2, x2, -72	# 19
	jal		x1, float_of_int.2489.12785	# 19
	addi	x2, x2, 72	# 19
	lw		x1, -68(x2)	# 19
fle_cont.24995:
	lui		x4, %hi(l.20862)	# 1718
	ori		x4, x0, %lo(l.20862)	# 1718
	flw		f2, 0(x4)	# 1718
	fmul	f1, f1, f2	# 1718
	flw		f3, -64(x2)	# 1719
	fsub	f1, f3, f1	# 1719
	fadd	f3, f0, f30	# 1719
	lw		x4, 0(x2)	# 1721
	mul		x5, x30, x4	# 1721
	lw		x6, -24(x2)	# 1721
	add		x5, x6, x5	# 1721
	flw		f4, 0(x5)	# 1721
	lw		x5, -20(x2)	# 451
	lw		x5, 20(x5)	# 451
	mul		x4, x30, x4	# 456
	add		x4, x5, x4	# 456
	flw		f5, 0(x4)	# 456
	fsub	f4, f4, f5	# 1721
	flw		f5, -60(x2)	# 1723
	fmul	f5, f4, f5	# 1723
	flw		f6, -32(x2)	# 18
	fsw		f1, -68(x2)	# 18
	fsw		f3, -72(x2)	# 18
	fsw		f4, -76(x2)	# 18
	fsw		f2, -80(x2)	# 18
	fle		x31, f6, f5	# 18
	beq		x31, x0, fle_else.24998	# 18
	fadd	f1, f0, f5
	sw		x1, -84(x2)	# 18
	addi	x2, x2, -88	# 18
	jal		x1, int_of_float.2487.12783	# 18
	addi	x2, x2, 88	# 18
	lw		x1, -84(x2)	# 18
	sw		x1, -84(x2)	# 18
	addi	x2, x2, -88	# 18
	jal		x1, float_of_int.2489.12785	# 18
	addi	x2, x2, 88	# 18
	lw		x1, -84(x2)	# 18
	jal		x0, fle_cont.24997	# 18
fle_else.24998:
	fadd	f1, f0, f5
	sw		x1, -84(x2)	# 19
	addi	x2, x2, -88	# 19
	jal		x1, int_of_float.2487.12783	# 19
	addi	x2, x2, 88	# 19
	lw		x1, -84(x2)	# 19
	addi	x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	sw		x1, -84(x2)	# 19
	addi	x2, x2, -88	# 19
	jal		x1, float_of_int.2489.12785	# 19
	addi	x2, x2, 88	# 19
	lw		x1, -84(x2)	# 19
fle_cont.24997:
	flw		f2, -80(x2)	# 1723
	fmul	f1, f1, f2	# 1723
	flw		f2, -76(x2)	# 1724
	fsub	f1, f2, f1	# 1724
	flw		f2, -68(x2)	# 6
	flw		f3, -72(x2)	# 6
	fle		x31, f3, f2	# 6
	beq		x31, x0, fle_else.25000	# 6
	fle		x31, f3, f1	# 6
	beq		x31, x0, fle_else.25002	# 6
	flw		f1, -4(x2)	# 1729
	jal		x0, fle_cont.25001	# 6
fle_else.25002:
	flw		f1, -32(x2)	# 1729
fle_cont.25001:
	jal		x0, fle_cont.24999	# 6
fle_else.25000:
	fle		x31, f3, f1	# 6
	beq		x31, x0, fle_else.25004	# 6
	flw		f1, -32(x2)	# 1728
	jal		x0, fle_cont.25003	# 6
fle_else.25004:
	flw		f1, -4(x2)	# 1728
fle_cont.25003:
fle_cont.24999:
	addi	x4, x26, 580	# 1726
	lw		x5, -28(x2)	# 1726
	mul		x5, x30, x5	# 1726
	add		x4, x4, x5	# 1726
	fsw		f1, 0(x4)	# 1726
	jalr	x0, x1, 0	# 1726
trace_reflections.2866.13034:
	lw		x6, 24(x29)	# 1804
	lw		x7, 20(x29)	# 1804
	lw		x8, 16(x29)	# 1804
	lw		x9, 12(x29)	# 1804
	lw		x10, 8(x29)	# 1804
	flw		f3, 4(x29)	# 1804
	ble		x9, x4, ble.25006	# 1804
	jalr	x0, x1, 0	# 1824
ble.25006:
	addi	x11, x26, 1016	# 1805
	mul		x12, x30, x4	# 1805
	add		x11, x11, x12	# 1805
	lw		x11, 0(x11)	# 1805
	lw		x12, 4(x11)	# 661
	addi	x13, x26, 548	# 1634
	mul		x14, x30, x9	# 1634
	add		x13, x13, x14	# 1634
	fsw		f3, 0(x13)	# 1634
	addi	x13, x26, 536	# 1635
	mul		x14, x30, x9	# 1635
	add		x13, x13, x14	# 1635
	lw		x13, 0(x13)	# 1635
	sw		x29, 0(x2)	# 1635
	sw		x4, -4(x2)	# 1635
	fsw		f2, -8(x2)	# 1635
	sw		x8, -12(x2)	# 1635
	sw		x10, -16(x2)	# 1635
	sw		x5, -20(x2)	# 1635
	fsw		f1, -24(x2)	# 1635
	sw		x12, -28(x2)	# 1635
	sw		x7, -32(x2)	# 1635
	sw		x11, -36(x2)	# 1635
	sw		x9, -40(x2)	# 1635
	addi	x5, x13, 0
	addi	x4, x9, 0
	addi	x29, x6, 0
	addi	x6, x12, 0
	sw		x1, -44(x2)	# 1635
	addi	x2, x2, -48	# 1635
	lw		x31, 0(x29)	# 1635
	jalr	x1, x31, 0	# 1635
	addi	x2, x2, 48	# 1635
	lw		x1, -44(x2)	# 1635
	addi	x4, x26, 548	# 1636
	lw		x5, -40(x2)	# 1636
	mul		x6, x30, x5	# 1636
	add		x4, x4, x6	# 1636
	flw		f1, 0(x4)	# 1636
	fadd	f2, f0, f19	# 1638
	fle		x31, f1, f2	# 6
	beq		x31, x0, fle_else.25009	# 6
	addi	x4, x0, 0	# 1640
	jal		x0, fle_cont.25008	# 6
fle_else.25009:
	fadd	f2, f0, f21	# 1639
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.25011	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.25010	# 6
fle_else.25011:
	addi	x4, x0, 1	# 6
fle_cont.25010:
fle_cont.25008:
	beq		x4, x5, beq_cont.25012	# 1809
	addi	x4, x0, 0	# 1810
	addi	x6, x26, 564	# 1810
	mul		x4, x30, x4	# 1810
	add		x4, x6, x4	# 1810
	lw		x4, 0(x4)	# 1810
	addi	x6, x0, 4	# 1810
	mul		x4, x4, x6	# 1810
	addi	x6, x0, 0	# 1810
	addi	x7, x26, 544	# 1810
	mul		x6, x30, x6	# 1810
	add		x6, x7, x6	# 1810
	lw		x6, 0(x6)	# 1810
	add		x4, x4, x6	# 1810
	lw		x6, -36(x2)	# 655
	lw		x7, 0(x6)	# 655
	beq		x4, x7, beq.25014	# 1811
	jal		x0, beq_cont.25013	# 1811
beq.25014:
	addi	x4, x0, 0	# 1813
	addi	x7, x0, 0	# 1813
	addi	x8, x26, 536	# 1813
	mul		x7, x30, x7	# 1813
	add		x7, x8, x7	# 1813
	lw		x7, 0(x7)	# 1813
	lw		x29, -32(x2)	# 1813
	addi	x5, x7, 0
	sw		x1, -44(x2)	# 1813
	addi	x2, x2, -48	# 1813
	lw		x31, 0(x29)	# 1813
	jalr	x1, x31, 0	# 1813
	addi	x2, x2, 48	# 1813
	lw		x1, -44(x2)	# 1813
	addi	x5, x0, 0	# 1813
	beq		x4, x5, beq.25016	# 1813
	jal		x0, beq_cont.25015	# 1813
beq.25016:
	lw		x4, -28(x2)	# 639
	lw		x5, 0(x4)	# 639
	addi	x6, x0, 0	# 292
	addi	x7, x26, 568	# 292
	mul		x6, x30, x6	# 292
	add		x6, x7, x6	# 292
	flw		f1, 0(x6)	# 292
	addi	x6, x0, 0	# 292
	mul		x6, x30, x6	# 292
	add		x6, x5, x6	# 292
	flw		f2, 0(x6)	# 292
	fmul	f1, f1, f2	# 292
	addi	x6, x0, 1	# 292
	addi	x7, x26, 568	# 292
	mul		x6, x30, x6	# 292
	add		x6, x7, x6	# 292
	flw		f2, 0(x6)	# 292
	addi	x6, x0, 1	# 292
	mul		x6, x30, x6	# 292
	add		x6, x5, x6	# 292
	flw		f3, 0(x6)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	addi	x6, x0, 2	# 292
	addi	x7, x26, 568	# 292
	mul		x6, x30, x6	# 292
	add		x6, x7, x6	# 292
	flw		f2, 0(x6)	# 292
	addi	x6, x0, 2	# 292
	mul		x6, x30, x6	# 292
	add		x5, x5, x6	# 292
	flw		f3, 0(x5)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	lw		x5, -36(x2)	# 1817
	flw		f2, 8(x5)	# 1817
	flw		f3, -24(x2)	# 1817
	fmul	f4, f2, f3	# 1817
	fmul	f1, f4, f1	# 1817
	lw		x4, 0(x4)	# 639
	addi	x5, x0, 0	# 292
	mul		x5, x30, x5	# 292
	lw		x6, -20(x2)	# 292
	add		x5, x6, x5	# 292
	flw		f4, 0(x5)	# 292
	addi	x5, x0, 0	# 292
	mul		x5, x30, x5	# 292
	add		x5, x4, x5	# 292
	flw		f5, 0(x5)	# 292
	fmul	f4, f4, f5	# 292
	addi	x5, x0, 1	# 292
	mul		x5, x30, x5	# 292
	add		x5, x6, x5	# 292
	flw		f5, 0(x5)	# 292
	addi	x5, x0, 1	# 292
	mul		x5, x30, x5	# 292
	add		x5, x4, x5	# 292
	flw		f6, 0(x5)	# 292
	fmul	f5, f5, f6	# 292
	fadd	f4, f4, f5	# 292
	addi	x5, x0, 2	# 292
	mul		x5, x30, x5	# 292
	add		x5, x6, x5	# 292
	flw		f5, 0(x5)	# 292
	addi	x5, x0, 2	# 292
	mul		x5, x30, x5	# 292
	add		x4, x4, x5	# 292
	flw		f6, 0(x4)	# 292
	fmul	f5, f5, f6	# 292
	fadd	f4, f4, f5	# 292
	fmul	f2, f2, f4	# 1818
	fadd	f4, f0, f0	# 2
	fle		x31, f1, f4	# 2
	beq		x31, x0, fle_else.25018	# 2
	jal		x0, fle_cont.25017	# 2
fle_else.25018:
	addi	x4, x26, 604	# 302
	lw		x5, -40(x2)	# 302
	mul		x7, x30, x5	# 302
	add		x4, x4, x7	# 302
	flw		f4, 0(x4)	# 302
	addi	x4, x26, 580	# 302
	mul		x7, x30, x5	# 302
	add		x4, x4, x7	# 302
	flw		f5, 0(x4)	# 302
	fmul	f5, f1, f5	# 302
	fadd	f4, f4, f5	# 302
	addi	x4, x26, 604	# 302
	mul		x5, x30, x5	# 302
	add		x4, x4, x5	# 302
	fsw		f4, 0(x4)	# 302
	addi	x4, x26, 604	# 303
	lw		x5, -16(x2)	# 303
	mul		x7, x30, x5	# 303
	add		x4, x4, x7	# 303
	flw		f4, 0(x4)	# 303
	addi	x4, x26, 580	# 303
	mul		x7, x30, x5	# 303
	add		x4, x4, x7	# 303
	flw		f5, 0(x4)	# 303
	fmul	f5, f1, f5	# 303
	fadd	f4, f4, f5	# 303
	addi	x4, x26, 604	# 303
	mul		x7, x30, x5	# 303
	add		x4, x4, x7	# 303
	fsw		f4, 0(x4)	# 303
	addi	x4, x26, 604	# 304
	lw		x7, -12(x2)	# 304
	mul		x8, x30, x7	# 304
	add		x4, x4, x8	# 304
	flw		f4, 0(x4)	# 304
	addi	x4, x26, 580	# 304
	mul		x8, x30, x7	# 304
	add		x4, x4, x8	# 304
	flw		f5, 0(x4)	# 304
	fmul	f1, f1, f5	# 304
	fadd	f1, f4, f1	# 304
	addi	x4, x26, 604	# 304
	mul		x7, x30, x7	# 304
	add		x4, x4, x7	# 304
	fsw		f1, 0(x4)	# 304
fle_cont.25017:
	fadd	f1, f0, f0	# 2
	fle		x31, f2, f1	# 2
	beq		x31, x0, fle_else.25020	# 2
	jal		x0, fle_cont.25019	# 2
fle_else.25020:
	fmul	f1, f2, f2	# 8
	fmul	f1, f1, f1	# 8
	flw		f2, -8(x2)	# 1794
	fmul	f1, f1, f2	# 1794
	addi	x4, x0, 0	# 1795
	addi	x5, x0, 0	# 1795
	addi	x7, x26, 604	# 1795
	mul		x5, x30, x5	# 1795
	add		x5, x7, x5	# 1795
	flw		f4, 0(x5)	# 1795
	fadd	f4, f4, f1	# 1795
	addi	x5, x26, 604	# 1795
	mul		x4, x30, x4	# 1795
	add		x4, x5, x4	# 1795
	fsw		f4, 0(x4)	# 1795
	addi	x4, x0, 1	# 1796
	addi	x5, x0, 1	# 1796
	addi	x7, x26, 604	# 1796
	mul		x5, x30, x5	# 1796
	add		x5, x7, x5	# 1796
	flw		f4, 0(x5)	# 1796
	fadd	f4, f4, f1	# 1796
	addi	x5, x26, 604	# 1796
	mul		x4, x30, x4	# 1796
	add		x4, x5, x4	# 1796
	fsw		f4, 0(x4)	# 1796
	addi	x4, x0, 2	# 1797
	addi	x5, x26, 604	# 1797
	mul		x7, x30, x4	# 1797
	add		x5, x5, x7	# 1797
	flw		f4, 0(x5)	# 1797
	fadd	f1, f4, f1	# 1797
	addi	x5, x26, 604	# 1797
	mul		x4, x30, x4	# 1797
	add		x4, x5, x4	# 1797
	fsw		f1, 0(x4)	# 1797
fle_cont.25019:
beq_cont.25015:
beq_cont.25013:
beq_cont.25012:
	lw		x4, -16(x2)	# 1823
	lw		x5, -4(x2)	# 1823
	sub		x4, x5, x4	# 1823
	flw		f1, -24(x2)	# 1823
	flw		f2, -8(x2)	# 1823
	lw		x5, -20(x2)	# 1823
	lw		x29, 0(x2)	# 1823
	lw		x31, 0(x29)	# 1823
	jalr	x0, x31, 0	# 1823
trace_ray.2871.13039:
	lw		x7, 48(x29)	# 1832
	lw		x8, 44(x29)	# 1832
	lw		x9, 40(x29)	# 1832
	lw		x10, 36(x29)	# 1832
	lw		x11, 32(x29)	# 1832
	lw		x12, 28(x29)	# 1832
	lw		x13, 24(x29)	# 1832
	lw		x14, 20(x29)	# 1832
	lw		x15, 16(x29)	# 1832
	lw		x16, 12(x29)	# 1832
	flw		f3, 8(x29)	# 1832
	flw		f4, 4(x29)	# 1832
	addi	x17, x0, 4	# 1832
	ble		x4, x17, ble.25021	# 1832
	jalr	x0, x1, 0	# 1913
ble.25021:
	lw		x18, 8(x6)	# 577
	addi	x19, x26, 548	# 1543
	mul		x20, x30, x15	# 1543
	add		x19, x19, x20	# 1543
	fsw		f3, 0(x19)	# 1543
	addi	x19, x26, 536	# 1544
	mul		x20, x30, x15	# 1544
	add		x19, x19, x20	# 1544
	lw		x19, 0(x19)	# 1544
	sw		x29, 0(x2)	# 1544
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
	addi	x29, x9, 0
	addi	x5, x19, 0
	sw		x1, -72(x2)	# 1544
	addi	x2, x2, -76	# 1544
	lw		x31, 0(x29)	# 1544
	jalr	x1, x31, 0	# 1544
	addi	x2, x2, 76	# 1544
	lw		x1, -72(x2)	# 1544
	addi	x4, x26, 548	# 1545
	lw		x5, -68(x2)	# 1545
	mul		x6, x30, x5	# 1545
	add		x4, x4, x6	# 1545
	flw		f1, 0(x4)	# 1545
	fadd	f2, f0, f19	# 1547
	fle		x31, f1, f2	# 6
	beq		x31, x0, fle_else.25024	# 6
	addi	x4, x0, 0	# 1549
	jal		x0, fle_cont.25023	# 6
fle_else.25024:
	fadd	f2, f0, f21	# 1548
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.25026	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.25025	# 6
fle_else.25026:
	addi	x4, x0, 1	# 6
fle_cont.25025:
fle_cont.25023:
	beq		x4, x5, beq.25027	# 1834
	addi	x4, x26, 564	# 1836
	mul		x6, x30, x5	# 1836
	add		x4, x4, x6	# 1836
	lw		x4, 0(x4)	# 1836
	addi	x6, x26, 48	# 1837
	mul		x7, x30, x4	# 1837
	add		x6, x6, x7	# 1837
	lw		x6, 0(x6)	# 1837
	lw		x7, 8(x6)	# 363
	lw		x8, 28(x6)	# 461
	mul		x9, x30, x5	# 466
	add		x8, x8, x9	# 466
	flw		f1, 0(x8)	# 466
	flw		f2, -36(x2)	# 1839
	fmul	f1, f1, f2	# 1839
	lw		x8, 4(x6)	# 353
	lw		x9, -48(x2)	# 1693
	sw		x7, -72(x2)	# 1693
	fsw		f1, -76(x2)	# 1693
	sw		x4, -80(x2)	# 1693
	sw		x6, -84(x2)	# 1693
	beq		x8, x9, beq.25029	# 1693
	addi	x10, x0, 2	# 1695
	beq		x8, x10, beq.25031	# 1695
	lw		x29, -32(x2)	# 1698
	addi	x4, x6, 0
	sw		x1, -88(x2)	# 1698
	addi	x2, x2, -92	# 1698
	lw		x31, 0(x29)	# 1698
	jalr	x1, x31, 0	# 1698
	addi	x2, x2, 92	# 1698
	lw		x1, -88(x2)	# 1698
	jal		x0, beq_cont.25030	# 1695
beq.25031:
	lw		x8, 16(x6)	# 391
	mul		x10, x30, x5	# 396
	add		x8, x8, x10	# 396
	flw		f3, 0(x8)	# 396
	fsub	f3, f0, f3	# 4
	addi	x8, x26, 568	# 1663
	mul		x10, x30, x5	# 1663
	add		x8, x8, x10	# 1663
	fsw		f3, 0(x8)	# 1663
	lw		x8, 16(x6)	# 401
	mul		x10, x30, x9	# 406
	add		x8, x8, x10	# 406
	flw		f3, 0(x8)	# 406
	fsub	f3, f0, f3	# 4
	addi	x8, x26, 568	# 1664
	mul		x10, x30, x9	# 1664
	add		x8, x8, x10	# 1664
	fsw		f3, 0(x8)	# 1664
	lw		x8, 16(x6)	# 411
	lw		x10, -44(x2)	# 416
	mul		x11, x30, x10	# 416
	add		x8, x8, x11	# 416
	flw		f3, 0(x8)	# 416
	fsub	f3, f0, f3	# 4
	addi	x8, x26, 568	# 1665
	mul		x11, x30, x10	# 1665
	add		x8, x8, x11	# 1665
	fsw		f3, 0(x8)	# 1665
beq_cont.25030:
	jal		x0, beq_cont.25028	# 1693
beq.25029:
	addi	x8, x26, 544	# 1654
	mul		x10, x30, x5	# 1654
	add		x8, x8, x10	# 1654
	lw		x8, 0(x8)	# 1654
	fadd	f3, f0, f0	# 254
	addi	x10, x26, 568	# 247
	mul		x11, x30, x5	# 247
	add		x10, x10, x11	# 247
	fsw		f3, 0(x10)	# 247
	addi	x10, x26, 568	# 248
	mul		x11, x30, x9	# 248
	add		x10, x10, x11	# 248
	fsw		f3, 0(x10)	# 248
	addi	x10, x26, 568	# 249
	lw		x11, -44(x2)	# 249
	mul		x12, x30, x11	# 249
	add		x10, x10, x12	# 249
	fsw		f3, 0(x10)	# 249
	sub		x10, x8, x9	# 1657
	sub		x8, x8, x9	# 1657
	mul		x8, x30, x8	# 1657
	lw		x12, -52(x2)	# 1657
	add		x8, x12, x8	# 1657
	flw		f3, 0(x8)	# 1657
	fadd	f4, f0, f0	# 1
	feq		x31, f3, f4	# 1
	beq		x31, x0, feq_else.25033	# 1
	fadd	f3, f0, f0	# 212
	jal		x0, feq_cont.25032	# 1
feq_else.25033:
	fadd	f4, f0, f0	# 2
	fle		x31, f3, f4	# 2
	beq		x31, x0, fle_else.25035	# 2
	fadd	f3, f0, f18	# 214
	jal		x0, fle_cont.25034	# 2
fle_else.25035:
	fadd	f3, f0, f16	# 213
fle_cont.25034:
feq_cont.25032:
	fsub	f3, f0, f3	# 4
	addi	x8, x26, 568	# 1657
	mul		x10, x30, x10	# 1657
	add		x8, x8, x10	# 1657
	fsw		f3, 0(x8)	# 1657
beq_cont.25028:
	addi	x4, x26, 552	# 259
	lw		x5, -68(x2)	# 259
	mul		x6, x30, x5	# 259
	add		x4, x4, x6	# 259
	flw		f1, 0(x4)	# 259
	addi	x4, x26, 636	# 259
	mul		x6, x30, x5	# 259
	add		x4, x4, x6	# 259
	fsw		f1, 0(x4)	# 259
	addi	x4, x26, 552	# 260
	lw		x6, -48(x2)	# 260
	mul		x7, x30, x6	# 260
	add		x4, x4, x7	# 260
	flw		f1, 0(x4)	# 260
	addi	x4, x26, 636	# 260
	mul		x7, x30, x6	# 260
	add		x4, x4, x7	# 260
	fsw		f1, 0(x4)	# 260
	addi	x4, x26, 552	# 261
	lw		x7, -44(x2)	# 261
	mul		x8, x30, x7	# 261
	add		x4, x4, x8	# 261
	flw		f1, 0(x4)	# 261
	addi	x4, x26, 636	# 261
	mul		x8, x30, x7	# 261
	add		x4, x4, x8	# 261
	fsw		f1, 0(x4)	# 261
	addi	x4, x26, 552	# 1843
	lw		x8, -84(x2)	# 1843
	lw		x29, -28(x2)	# 1843
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -88(x2)	# 1843
	addi	x2, x2, -92	# 1843
	lw		x31, 0(x29)	# 1843
	jalr	x1, x31, 0	# 1843
	addi	x2, x2, 92	# 1843
	lw		x1, -88(x2)	# 1843
	lw		x4, -24(x2)	# 1846
	lw		x5, -80(x2)	# 1846
	mul		x5, x5, x4	# 1846
	addi	x6, x26, 544	# 1846
	lw		x7, -68(x2)	# 1846
	mul		x8, x30, x7	# 1846
	add		x6, x6, x8	# 1846
	lw		x6, 0(x6)	# 1846
	add		x5, x5, x6	# 1846
	lw		x6, -64(x2)	# 1846
	mul		x8, x30, x6	# 1846
	lw		x9, -60(x2)	# 1846
	add		x8, x9, x8	# 1846
	sw		x5, 0(x8)	# 1846
	lw		x5, -20(x2)	# 569
	lw		x8, 4(x5)	# 569
	mul		x10, x30, x6	# 1848
	add		x8, x8, x10	# 1848
	lw		x8, 0(x8)	# 1848
	addi	x10, x26, 552	# 259
	mul		x11, x30, x7	# 259
	add		x10, x10, x11	# 259
	flw		f1, 0(x10)	# 259
	mul		x10, x30, x7	# 259
	add		x10, x8, x10	# 259
	fsw		f1, 0(x10)	# 259
	addi	x10, x26, 552	# 260
	lw		x11, -48(x2)	# 260
	mul		x12, x30, x11	# 260
	add		x10, x10, x12	# 260
	flw		f1, 0(x10)	# 260
	mul		x10, x30, x11	# 260
	add		x10, x8, x10	# 260
	fsw		f1, 0(x10)	# 260
	addi	x10, x26, 552	# 261
	lw		x12, -44(x2)	# 261
	mul		x13, x30, x12	# 261
	add		x10, x10, x13	# 261
	flw		f1, 0(x10)	# 261
	mul		x10, x30, x12	# 261
	add		x8, x8, x10	# 261
	fsw		f1, 0(x8)	# 261
	lw		x8, 12(x5)	# 584
	lw		x10, -84(x2)	# 461
	lw		x13, 28(x10)	# 461
	mul		x14, x30, x7	# 466
	add		x13, x13, x14	# 466
	flw		f1, 0(x13)	# 466
	fadd	f2, f0, f17	# 1852
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.25037	# 6
	addi	x13, x0, 1	# 1855
	mul		x14, x30, x6	# 1855
	add		x8, x8, x14	# 1855
	sw		x13, 0(x8)	# 1855
	lw		x8, 16(x5)	# 591
	mul		x13, x30, x6	# 1857
	add		x13, x8, x13	# 1857
	lw		x13, 0(x13)	# 1857
	addi	x14, x0, 0	# 259
	addi	x15, x0, 0	# 259
	addi	x16, x26, 580	# 259
	mul		x15, x30, x15	# 259
	add		x15, x16, x15	# 259
	flw		f1, 0(x15)	# 259
	mul		x14, x30, x14	# 259
	add		x14, x13, x14	# 259
	fsw		f1, 0(x14)	# 259
	addi	x14, x0, 1	# 260
	addi	x15, x0, 1	# 260
	addi	x16, x26, 580	# 260
	mul		x15, x30, x15	# 260
	add		x15, x16, x15	# 260
	flw		f1, 0(x15)	# 260
	mul		x14, x30, x14	# 260
	add		x14, x13, x14	# 260
	fsw		f1, 0(x14)	# 260
	addi	x14, x0, 2	# 261
	addi	x15, x26, 580	# 261
	mul		x16, x30, x14	# 261
	add		x15, x15, x16	# 261
	flw		f1, 0(x15)	# 261
	mul		x14, x30, x14	# 261
	add		x13, x13, x14	# 261
	fsw		f1, 0(x13)	# 261
	mul		x13, x30, x6	# 1858
	add		x8, x8, x13	# 1858
	lw		x8, 0(x8)	# 1858
	lui		x13, %hi(l.21094)	# 1858
	ori		x13, x0, %lo(l.21094)	# 1858
	flw		f1, 0(x13)	# 1858
	flw		f2, -76(x2)	# 1858
	fmul	f1, f1, f2	# 1858
	addi	x13, x0, 0	# 325
	addi	x14, x0, 0	# 325
	mul		x14, x30, x14	# 325
	add		x14, x8, x14	# 325
	flw		f3, 0(x14)	# 325
	fmul	f3, f3, f1	# 325
	mul		x13, x30, x13	# 325
	add		x13, x8, x13	# 325
	fsw		f3, 0(x13)	# 325
	addi	x13, x0, 1	# 326
	addi	x14, x0, 1	# 326
	mul		x14, x30, x14	# 326
	add		x14, x8, x14	# 326
	flw		f3, 0(x14)	# 326
	fmul	f3, f3, f1	# 326
	mul		x13, x30, x13	# 326
	add		x13, x8, x13	# 326
	fsw		f3, 0(x13)	# 326
	addi	x13, x0, 2	# 327
	mul		x14, x30, x13	# 327
	add		x14, x8, x14	# 327
	flw		f3, 0(x14)	# 327
	fmul	f1, f3, f1	# 327
	mul		x13, x30, x13	# 327
	add		x8, x8, x13	# 327
	fsw		f1, 0(x8)	# 327
	lw		x8, 28(x5)	# 628
	mul		x13, x30, x6	# 1860
	add		x8, x8, x13	# 1860
	lw		x8, 0(x8)	# 1860
	addi	x13, x0, 0	# 259
	addi	x14, x0, 0	# 259
	addi	x15, x26, 568	# 259
	mul		x14, x30, x14	# 259
	add		x14, x15, x14	# 259
	flw		f1, 0(x14)	# 259
	mul		x13, x30, x13	# 259
	add		x13, x8, x13	# 259
	fsw		f1, 0(x13)	# 259
	addi	x13, x0, 1	# 260
	addi	x14, x0, 1	# 260
	addi	x15, x26, 568	# 260
	mul		x14, x30, x14	# 260
	add		x14, x15, x14	# 260
	flw		f1, 0(x14)	# 260
	mul		x13, x30, x13	# 260
	add		x13, x8, x13	# 260
	fsw		f1, 0(x13)	# 260
	addi	x13, x0, 2	# 261
	addi	x14, x26, 568	# 261
	mul		x15, x30, x13	# 261
	add		x14, x14, x15	# 261
	flw		f1, 0(x14)	# 261
	mul		x13, x30, x13	# 261
	add		x8, x8, x13	# 261
	fsw		f1, 0(x8)	# 261
	jal		x0, fle_cont.25036	# 6
fle_else.25037:
	addi	x13, x0, 0	# 1853
	mul		x14, x30, x6	# 1853
	add		x8, x8, x14	# 1853
	sw		x13, 0(x8)	# 1853
fle_cont.25036:
	lui		x8, %hi(l.21129)	# 1863
	ori		x8, x0, %lo(l.21129)	# 1863
	flw		f1, 0(x8)	# 1863
	mul		x8, x30, x7	# 292
	lw		x13, -52(x2)	# 292
	add		x8, x13, x8	# 292
	flw		f2, 0(x8)	# 292
	addi	x8, x26, 568	# 292
	mul		x14, x30, x7	# 292
	add		x8, x8, x14	# 292
	flw		f3, 0(x8)	# 292
	fmul	f4, f2, f3	# 292
	mul		x8, x30, x11	# 292
	add		x8, x13, x8	# 292
	flw		f5, 0(x8)	# 292
	addi	x8, x26, 568	# 292
	mul		x14, x30, x11	# 292
	add		x8, x8, x14	# 292
	flw		f6, 0(x8)	# 292
	fmul	f5, f5, f6	# 292
	fadd	f4, f4, f5	# 292
	mul		x8, x30, x12	# 292
	add		x8, x13, x8	# 292
	flw		f5, 0(x8)	# 292
	addi	x8, x26, 568	# 292
	mul		x14, x30, x12	# 292
	add		x8, x8, x14	# 292
	flw		f6, 0(x8)	# 292
	fmul	f5, f5, f6	# 292
	fadd	f4, f4, f5	# 292
	fmul	f1, f1, f4	# 1863
	fmul	f3, f1, f3	# 302
	fadd	f2, f2, f3	# 302
	mul		x8, x30, x7	# 302
	add		x8, x13, x8	# 302
	fsw		f2, 0(x8)	# 302
	mul		x8, x30, x11	# 303
	add		x8, x13, x8	# 303
	flw		f2, 0(x8)	# 303
	addi	x8, x26, 568	# 303
	mul		x14, x30, x11	# 303
	add		x8, x8, x14	# 303
	flw		f3, 0(x8)	# 303
	fmul	f3, f1, f3	# 303
	fadd	f2, f2, f3	# 303
	mul		x8, x30, x11	# 303
	add		x8, x13, x8	# 303
	fsw		f2, 0(x8)	# 303
	mul		x8, x30, x12	# 304
	add		x8, x13, x8	# 304
	flw		f2, 0(x8)	# 304
	addi	x8, x26, 568	# 304
	mul		x14, x30, x12	# 304
	add		x8, x8, x14	# 304
	flw		f3, 0(x8)	# 304
	fmul	f1, f1, f3	# 304
	fadd	f1, f2, f1	# 304
	mul		x8, x30, x12	# 304
	add		x8, x13, x8	# 304
	fsw		f1, 0(x8)	# 304
	lw		x8, 28(x10)	# 471
	mul		x14, x30, x11	# 476
	add		x8, x8, x14	# 476
	flw		f1, 0(x8)	# 476
	flw		f2, -36(x2)	# 1867
	fmul	f1, f2, f1	# 1867
	addi	x8, x26, 536	# 1870
	mul		x14, x30, x7	# 1870
	add		x8, x8, x14	# 1870
	lw		x8, 0(x8)	# 1870
	lw		x29, -16(x2)	# 1870
	fsw		f1, -88(x2)	# 1870
	addi	x5, x8, 0
	addi	x4, x7, 0
	sw		x1, -92(x2)	# 1870
	addi	x2, x2, -96	# 1870
	lw		x31, 0(x29)	# 1870
	jalr	x1, x31, 0	# 1870
	addi	x2, x2, 96	# 1870
	lw		x1, -92(x2)	# 1870
	lw		x5, -68(x2)	# 1870
	beq		x4, x5, beq.25039	# 1870
	jal		x0, beq_cont.25038	# 1870
beq.25039:
	addi	x4, x0, 0	# 292
	addi	x6, x26, 568	# 292
	mul		x4, x30, x4	# 292
	add		x4, x6, x4	# 292
	flw		f1, 0(x4)	# 292
	addi	x4, x0, 0	# 292
	addi	x6, x26, 312	# 292
	mul		x4, x30, x4	# 292
	add		x4, x6, x4	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	addi	x4, x0, 1	# 292
	addi	x6, x26, 568	# 292
	mul		x4, x30, x4	# 292
	add		x4, x6, x4	# 292
	flw		f2, 0(x4)	# 292
	addi	x4, x0, 1	# 292
	addi	x6, x26, 312	# 292
	mul		x4, x30, x4	# 292
	add		x4, x6, x4	# 292
	flw		f3, 0(x4)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	addi	x4, x0, 2	# 292
	addi	x6, x26, 568	# 292
	mul		x4, x30, x4	# 292
	add		x4, x6, x4	# 292
	flw		f2, 0(x4)	# 292
	addi	x4, x0, 2	# 292
	addi	x6, x26, 312	# 292
	mul		x4, x30, x4	# 292
	add		x4, x6, x4	# 292
	flw		f3, 0(x4)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	fsub	f1, f0, f1	# 4
	flw		f2, -76(x2)	# 1871
	fmul	f1, f1, f2	# 1871
	addi	x4, x0, 0	# 292
	mul		x4, x30, x4	# 292
	lw		x6, -52(x2)	# 292
	add		x4, x6, x4	# 292
	flw		f3, 0(x4)	# 292
	addi	x4, x0, 0	# 292
	addi	x7, x26, 312	# 292
	mul		x4, x30, x4	# 292
	add		x4, x7, x4	# 292
	flw		f4, 0(x4)	# 292
	fmul	f3, f3, f4	# 292
	addi	x4, x0, 1	# 292
	mul		x4, x30, x4	# 292
	add		x4, x6, x4	# 292
	flw		f4, 0(x4)	# 292
	addi	x4, x0, 1	# 292
	addi	x7, x26, 312	# 292
	mul		x4, x30, x4	# 292
	add		x4, x7, x4	# 292
	flw		f5, 0(x4)	# 292
	fmul	f4, f4, f5	# 292
	fadd	f3, f3, f4	# 292
	addi	x4, x0, 2	# 292
	mul		x4, x30, x4	# 292
	add		x4, x6, x4	# 292
	flw		f4, 0(x4)	# 292
	addi	x4, x0, 2	# 292
	addi	x7, x26, 312	# 292
	mul		x4, x30, x4	# 292
	add		x4, x7, x4	# 292
	flw		f5, 0(x4)	# 292
	fmul	f4, f4, f5	# 292
	fadd	f3, f3, f4	# 292
	fsub	f3, f0, f3	# 4
	fadd	f4, f0, f0	# 2
	fle		x31, f1, f4	# 2
	beq		x31, x0, fle_else.25041	# 2
	jal		x0, fle_cont.25040	# 2
fle_else.25041:
	addi	x4, x26, 604	# 302
	mul		x7, x30, x5	# 302
	add		x4, x4, x7	# 302
	flw		f4, 0(x4)	# 302
	addi	x4, x26, 580	# 302
	mul		x7, x30, x5	# 302
	add		x4, x4, x7	# 302
	flw		f5, 0(x4)	# 302
	fmul	f5, f1, f5	# 302
	fadd	f4, f4, f5	# 302
	addi	x4, x26, 604	# 302
	mul		x7, x30, x5	# 302
	add		x4, x4, x7	# 302
	fsw		f4, 0(x4)	# 302
	addi	x4, x26, 604	# 303
	lw		x7, -48(x2)	# 303
	mul		x8, x30, x7	# 303
	add		x4, x4, x8	# 303
	flw		f4, 0(x4)	# 303
	addi	x4, x26, 580	# 303
	mul		x8, x30, x7	# 303
	add		x4, x4, x8	# 303
	flw		f5, 0(x4)	# 303
	fmul	f5, f1, f5	# 303
	fadd	f4, f4, f5	# 303
	addi	x4, x26, 604	# 303
	mul		x8, x30, x7	# 303
	add		x4, x4, x8	# 303
	fsw		f4, 0(x4)	# 303
	addi	x4, x26, 604	# 304
	lw		x8, -44(x2)	# 304
	mul		x9, x30, x8	# 304
	add		x4, x4, x9	# 304
	flw		f4, 0(x4)	# 304
	addi	x4, x26, 580	# 304
	mul		x9, x30, x8	# 304
	add		x4, x4, x9	# 304
	flw		f5, 0(x4)	# 304
	fmul	f1, f1, f5	# 304
	fadd	f1, f4, f1	# 304
	addi	x4, x26, 604	# 304
	mul		x9, x30, x8	# 304
	add		x4, x4, x9	# 304
	fsw		f1, 0(x4)	# 304
fle_cont.25040:
	fadd	f1, f0, f0	# 2
	fle		x31, f3, f1	# 2
	beq		x31, x0, fle_else.25043	# 2
	jal		x0, fle_cont.25042	# 2
fle_else.25043:
	fmul	f1, f3, f3	# 8
	fmul	f1, f1, f1	# 8
	flw		f3, -88(x2)	# 1794
	fmul	f1, f1, f3	# 1794
	addi	x4, x0, 0	# 1795
	addi	x7, x0, 0	# 1795
	addi	x8, x26, 604	# 1795
	mul		x7, x30, x7	# 1795
	add		x7, x8, x7	# 1795
	flw		f4, 0(x7)	# 1795
	fadd	f4, f4, f1	# 1795
	addi	x7, x26, 604	# 1795
	mul		x4, x30, x4	# 1795
	add		x4, x7, x4	# 1795
	fsw		f4, 0(x4)	# 1795
	addi	x4, x0, 1	# 1796
	addi	x7, x0, 1	# 1796
	addi	x8, x26, 604	# 1796
	mul		x7, x30, x7	# 1796
	add		x7, x8, x7	# 1796
	flw		f4, 0(x7)	# 1796
	fadd	f4, f4, f1	# 1796
	addi	x7, x26, 604	# 1796
	mul		x4, x30, x4	# 1796
	add		x4, x7, x4	# 1796
	fsw		f4, 0(x4)	# 1796
	addi	x4, x0, 2	# 1797
	addi	x7, x26, 604	# 1797
	mul		x8, x30, x4	# 1797
	add		x7, x7, x8	# 1797
	flw		f4, 0(x7)	# 1797
	fadd	f1, f4, f1	# 1797
	addi	x7, x26, 604	# 1797
	mul		x4, x30, x4	# 1797
	add		x4, x7, x4	# 1797
	fsw		f1, 0(x4)	# 1797
fle_cont.25042:
beq_cont.25038:
	addi	x4, x26, 552	# 259
	mul		x6, x30, x5	# 259
	add		x4, x4, x6	# 259
	flw		f1, 0(x4)	# 259
	addi	x4, x26, 648	# 259
	mul		x6, x30, x5	# 259
	add		x4, x4, x6	# 259
	fsw		f1, 0(x4)	# 259
	addi	x4, x26, 552	# 260
	lw		x6, -48(x2)	# 260
	mul		x7, x30, x6	# 260
	add		x4, x4, x7	# 260
	flw		f1, 0(x4)	# 260
	addi	x4, x26, 648	# 260
	mul		x7, x30, x6	# 260
	add		x4, x4, x7	# 260
	fsw		f1, 0(x4)	# 260
	addi	x4, x26, 552	# 261
	lw		x7, -44(x2)	# 261
	mul		x8, x30, x7	# 261
	add		x4, x4, x8	# 261
	flw		f1, 0(x4)	# 261
	addi	x4, x26, 648	# 261
	mul		x8, x30, x7	# 261
	add		x4, x4, x8	# 261
	fsw		f1, 0(x4)	# 261
	addi	x4, x26, 0	# 1315
	mul		x8, x30, x5	# 1315
	add		x4, x4, x8	# 1315
	lw		x4, 0(x4)	# 1315
	sub		x4, x4, x6	# 1315
	addi	x8, x26, 552	# 1315
	lw		x29, -12(x2)	# 1315
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -92(x2)	# 1315
	addi	x2, x2, -96	# 1315
	lw		x31, 0(x29)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 96	# 1315
	lw		x1, -92(x2)	# 1315
	addi	x4, x26, 1736	# 1878
	lw		x5, -68(x2)	# 1878
	mul		x6, x30, x5	# 1878
	add		x4, x4, x6	# 1878
	lw		x4, 0(x4)	# 1878
	lw		x6, -48(x2)	# 1878
	sub		x4, x4, x6	# 1878
	flw		f1, -76(x2)	# 1878
	flw		f2, -88(x2)	# 1878
	lw		x7, -52(x2)	# 1878
	lw		x29, -8(x2)	# 1878
	addi	x5, x7, 0
	sw		x1, -92(x2)	# 1878
	addi	x2, x2, -96	# 1878
	lw		x31, 0(x29)	# 1878
	jalr	x1, x31, 0	# 1878
	addi	x2, x2, 96	# 1878
	lw		x1, -92(x2)	# 1878
	fadd	f1, f0, f24	# 1881
	flw		f2, -36(x2)	# 6
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.25044	# 6
	jalr	x0, x1, 0	# 1892
fle_else.25044:
	lw		x4, -64(x2)	# 1883
	lw		x5, -24(x2)	# 1883
	ble		x5, x4, ble_cont.25046	# 1883
	addi	x5, x4, 1	# 1884
	addi	x6, x0, -1	# 1884
	mul		x5, x30, x5	# 1884
	lw		x7, -60(x2)	# 1884
	add		x5, x7, x5	# 1884
	sw		x6, 0(x5)	# 1884
ble_cont.25046:
	lw		x5, -44(x2)	# 1887
	lw		x6, -72(x2)	# 1887
	beq		x6, x5, beq.25047	# 1887
	jalr	x0, x1, 0	# 1890
beq.25047:
	fadd	f1, f0, f16	# 1888
	lw		x5, -84(x2)	# 461
	lw		x5, 28(x5)	# 461
	lw		x6, -68(x2)	# 466
	mul		x7, x30, x6	# 466
	add		x5, x5, x7	# 466
	flw		f3, 0(x5)	# 466
	fsub	f1, f1, f3	# 1888
	fmul	f1, f2, f1	# 1888
	lw		x5, -48(x2)	# 1889
	add		x4, x4, x5	# 1889
	addi	x5, x26, 548	# 1889
	mul		x6, x30, x6	# 1889
	add		x5, x5, x6	# 1889
	flw		f2, 0(x5)	# 1889
	flw		f3, -4(x2)	# 1889
	fadd	f2, f3, f2	# 1889
	lw		x5, -52(x2)	# 1889
	lw		x6, -20(x2)	# 1889
	lw		x29, 0(x2)	# 1889
	lw		x31, 0(x29)	# 1889
	jalr	x0, x31, 0	# 1889
beq.25027:
	lw		x4, -64(x2)	# 1897
	mul		x6, x30, x4	# 1897
	lw		x7, -60(x2)	# 1897
	add		x6, x7, x6	# 1897
	lw		x7, -56(x2)	# 1897
	sw		x7, 0(x6)	# 1897
	beq		x4, x5, beq.25049	# 1899
	mul		x4, x30, x5	# 292
	lw		x6, -52(x2)	# 292
	add		x4, x6, x4	# 292
	flw		f1, 0(x4)	# 292
	addi	x4, x26, 312	# 292
	mul		x7, x30, x5	# 292
	add		x4, x4, x7	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	lw		x4, -48(x2)	# 292
	mul		x7, x30, x4	# 292
	add		x7, x6, x7	# 292
	flw		f2, 0(x7)	# 292
	addi	x7, x26, 312	# 292
	mul		x8, x30, x4	# 292
	add		x7, x7, x8	# 292
	flw		f3, 0(x7)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	lw		x7, -44(x2)	# 292
	mul		x8, x30, x7	# 292
	add		x6, x6, x8	# 292
	flw		f2, 0(x6)	# 292
	addi	x6, x26, 312	# 292
	mul		x8, x30, x7	# 292
	add		x6, x6, x8	# 292
	flw		f3, 0(x6)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	fsub	f1, f0, f1	# 4
	flw		f2, -40(x2)	# 2
	fle		x31, f1, f2	# 2
	beq		x31, x0, fle_else.25050	# 2
	jalr	x0, x1, 0	# 1910
fle_else.25050:
	fmul	f2, f1, f1	# 8
	fmul	f1, f2, f1	# 1905
	flw		f2, -36(x2)	# 1905
	fmul	f1, f1, f2	# 1905
	addi	x6, x26, 324	# 1905
	mul		x8, x30, x5	# 1905
	add		x6, x6, x8	# 1905
	flw		f2, 0(x6)	# 1905
	fmul	f1, f1, f2	# 1905
	addi	x6, x26, 604	# 1906
	mul		x8, x30, x5	# 1906
	add		x6, x6, x8	# 1906
	flw		f2, 0(x6)	# 1906
	fadd	f2, f2, f1	# 1906
	addi	x6, x26, 604	# 1906
	mul		x5, x30, x5	# 1906
	add		x5, x6, x5	# 1906
	fsw		f2, 0(x5)	# 1906
	addi	x5, x26, 604	# 1907
	mul		x6, x30, x4	# 1907
	add		x5, x5, x6	# 1907
	flw		f2, 0(x5)	# 1907
	fadd	f2, f2, f1	# 1907
	addi	x5, x26, 604	# 1907
	mul		x4, x30, x4	# 1907
	add		x4, x5, x4	# 1907
	fsw		f2, 0(x4)	# 1907
	addi	x4, x26, 604	# 1908
	mul		x5, x30, x7	# 1908
	add		x4, x4, x5	# 1908
	flw		f2, 0(x4)	# 1908
	fadd	f1, f2, f1	# 1908
	addi	x4, x26, 604	# 1908
	mul		x5, x30, x7	# 1908
	add		x4, x4, x5	# 1908
	fsw		f1, 0(x4)	# 1908
	jalr	x0, x1, 0	# 1908
beq.25049:
	jalr	x0, x1, 0	# 1911
iter_trace_diffuse_rays.2880.13045:
	lw		x8, 36(x29)	# 1944
	lw		x9, 32(x29)	# 1944
	lw		x10, 28(x29)	# 1944
	lw		x11, 24(x29)	# 1944
	lw		x12, 20(x29)	# 1944
	lw		x13, 16(x29)	# 1944
	lw		x14, 12(x29)	# 1944
	flw		f1, 8(x29)	# 1944
	flw		f2, 4(x29)	# 1944
	ble		x13, x7, ble.25054	# 1944
	jalr	x0, x1, 0	# 1955
ble.25054:
	mul		x15, x30, x7	# 1945
	add		x15, x4, x15	# 1945
	lw		x15, 0(x15)	# 1945
	lw		x15, 0(x15)	# 639
	mul		x16, x30, x13	# 292
	add		x16, x15, x16	# 292
	flw		f3, 0(x16)	# 292
	mul		x16, x30, x13	# 292
	add		x16, x5, x16	# 292
	flw		f4, 0(x16)	# 292
	fmul	f3, f3, f4	# 292
	mul		x16, x30, x14	# 292
	add		x16, x15, x16	# 292
	flw		f4, 0(x16)	# 292
	mul		x16, x30, x14	# 292
	add		x16, x5, x16	# 292
	flw		f5, 0(x16)	# 292
	fmul	f4, f4, f5	# 292
	fadd	f3, f3, f4	# 292
	mul		x16, x30, x12	# 292
	add		x15, x15, x16	# 292
	flw		f4, 0(x15)	# 292
	mul		x15, x30, x12	# 292
	add		x15, x5, x15	# 292
	flw		f5, 0(x15)	# 292
	fmul	f4, f4, f5	# 292
	fadd	f3, f3, f4	# 292
	sw		x6, 0(x2)	# 3
	sw		x5, -4(x2)	# 3
	sw		x4, -8(x2)	# 3
	sw		x29, -12(x2)	# 3
	sw		x12, -16(x2)	# 3
	sw		x7, -20(x2)	# 3
	fle		x31, f2, f3	# 3
	beq		x31, x0, fle_else.25057	# 3
	mul		x15, x30, x7	# 1952
	add		x15, x4, x15	# 1952
	lw		x15, 0(x15)	# 1952
	lui		x16, %hi(l.21446)	# 1952
	ori		x16, x0, %lo(l.21446)	# 1952
	flw		f4, 0(x16)	# 1952
	fdiv	f3, f3, f4	# 1952
	addi	x16, x26, 548	# 1634
	mul		x17, x30, x13	# 1634
	add		x16, x16, x17	# 1634
	fsw		f1, 0(x16)	# 1634
	addi	x16, x26, 536	# 1635
	mul		x17, x30, x13	# 1635
	add		x16, x16, x17	# 1635
	lw		x16, 0(x16)	# 1635
	fsw		f3, -24(x2)	# 1635
	sw		x10, -28(x2)	# 1635
	sw		x8, -32(x2)	# 1635
	sw		x11, -36(x2)	# 1635
	fsw		f2, -40(x2)	# 1635
	sw		x14, -44(x2)	# 1635
	sw		x15, -48(x2)	# 1635
	sw		x13, -52(x2)	# 1635
	addi	x6, x15, 0
	addi	x5, x16, 0
	addi	x4, x13, 0
	addi	x29, x9, 0
	sw		x1, -56(x2)	# 1635
	addi	x2, x2, -60	# 1635
	lw		x31, 0(x29)	# 1635
	jalr	x1, x31, 0	# 1635
	addi	x2, x2, 60	# 1635
	lw		x1, -56(x2)	# 1635
	addi	x4, x26, 548	# 1636
	lw		x5, -52(x2)	# 1636
	mul		x6, x30, x5	# 1636
	add		x4, x4, x6	# 1636
	flw		f1, 0(x4)	# 1636
	fadd	f2, f0, f19	# 1638
	fle		x31, f1, f2	# 6
	beq		x31, x0, fle_else.25059	# 6
	addi	x4, x0, 0	# 1640
	jal		x0, fle_cont.25058	# 6
fle_else.25059:
	fadd	f2, f0, f21	# 1639
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.25061	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.25060	# 6
fle_else.25061:
	addi	x4, x0, 1	# 6
fle_cont.25060:
fle_cont.25058:
	addi	x6, x0, 0	# 1927
	beq		x4, x6, beq_cont.25062	# 1927
	addi	x4, x26, 564	# 1928
	mul		x7, x30, x6	# 1928
	add		x4, x4, x7	# 1928
	lw		x4, 0(x4)	# 1928
	addi	x7, x26, 48	# 1928
	mul		x4, x30, x4	# 1928
	add		x4, x7, x4	# 1928
	lw		x4, 0(x4)	# 1928
	lw		x7, -48(x2)	# 639
	lw		x7, 0(x7)	# 639
	lw		x8, 4(x4)	# 353
	lw		x9, -44(x2)	# 1693
	sw		x6, -56(x2)	# 1693
	sw		x4, -60(x2)	# 1693
	beq		x8, x9, beq.25064	# 1693
	lw		x7, -16(x2)	# 1695
	beq		x8, x7, beq.25066	# 1695
	lw		x29, -36(x2)	# 1698
	sw		x1, -64(x2)	# 1698
	addi	x2, x2, -68	# 1698
	lw		x31, 0(x29)	# 1698
	jalr	x1, x31, 0	# 1698
	addi	x2, x2, 68	# 1698
	lw		x1, -64(x2)	# 1698
	jal		x0, beq_cont.25065	# 1695
beq.25066:
	lw		x8, 16(x4)	# 391
	mul		x10, x30, x5	# 396
	add		x8, x8, x10	# 396
	flw		f1, 0(x8)	# 396
	fsub	f1, f0, f1	# 4
	addi	x8, x26, 568	# 1663
	mul		x10, x30, x5	# 1663
	add		x8, x8, x10	# 1663
	fsw		f1, 0(x8)	# 1663
	lw		x8, 16(x4)	# 401
	mul		x10, x30, x9	# 406
	add		x8, x8, x10	# 406
	flw		f1, 0(x8)	# 406
	fsub	f1, f0, f1	# 4
	addi	x8, x26, 568	# 1664
	mul		x10, x30, x9	# 1664
	add		x8, x8, x10	# 1664
	fsw		f1, 0(x8)	# 1664
	lw		x8, 16(x4)	# 411
	mul		x10, x30, x7	# 416
	add		x8, x8, x10	# 416
	flw		f1, 0(x8)	# 416
	fsub	f1, f0, f1	# 4
	addi	x8, x26, 568	# 1665
	mul		x10, x30, x7	# 1665
	add		x8, x8, x10	# 1665
	fsw		f1, 0(x8)	# 1665
beq_cont.25065:
	jal		x0, beq_cont.25063	# 1693
beq.25064:
	addi	x8, x26, 544	# 1654
	mul		x10, x30, x5	# 1654
	add		x8, x8, x10	# 1654
	lw		x8, 0(x8)	# 1654
	addi	x10, x26, 568	# 247
	mul		x11, x30, x5	# 247
	add		x10, x10, x11	# 247
	flw		f1, -40(x2)	# 247
	fsw		f1, 0(x10)	# 247
	addi	x10, x26, 568	# 248
	mul		x11, x30, x9	# 248
	add		x10, x10, x11	# 248
	fsw		f1, 0(x10)	# 248
	addi	x10, x26, 568	# 249
	lw		x11, -16(x2)	# 249
	mul		x12, x30, x11	# 249
	add		x10, x10, x12	# 249
	fsw		f1, 0(x10)	# 249
	sub		x10, x8, x9	# 1657
	sub		x8, x8, x9	# 1657
	mul		x8, x30, x8	# 1657
	add		x7, x7, x8	# 1657
	flw		f2, 0(x7)	# 1657
	feq		x31, f2, f1	# 1
	beq		x31, x0, feq_else.25068	# 1
	jal		x0, feq_cont.25067	# 1
feq_else.25068:
	fle		x31, f2, f1	# 2
	beq		x31, x0, fle_else.25070	# 2
	fadd	f1, f0, f18	# 214
	jal		x0, fle_cont.25069	# 2
fle_else.25070:
	fadd	f1, f0, f16	# 213
fle_cont.25069:
feq_cont.25067:
	fsub	f1, f0, f1	# 4
	addi	x7, x26, 568	# 1657
	mul		x8, x30, x10	# 1657
	add		x7, x7, x8	# 1657
	fsw		f1, 0(x7)	# 1657
beq_cont.25063:
	addi	x5, x26, 552	# 1930
	lw		x4, -60(x2)	# 1930
	lw		x29, -32(x2)	# 1930
	sw		x1, -64(x2)	# 1930
	addi	x2, x2, -68	# 1930
	lw		x31, 0(x29)	# 1930
	jalr	x1, x31, 0	# 1930
	addi	x2, x2, 68	# 1930
	lw		x1, -64(x2)	# 1930
	addi	x4, x0, 0	# 1933
	addi	x5, x0, 0	# 1933
	addi	x6, x26, 536	# 1933
	mul		x5, x30, x5	# 1933
	add		x5, x6, x5	# 1933
	lw		x5, 0(x5)	# 1933
	lw		x29, -28(x2)	# 1933
	sw		x1, -64(x2)	# 1933
	addi	x2, x2, -68	# 1933
	lw		x31, 0(x29)	# 1933
	jalr	x1, x31, 0	# 1933
	addi	x2, x2, 68	# 1933
	lw		x1, -64(x2)	# 1933
	lw		x5, -56(x2)	# 1933
	beq		x4, x5, beq.25072	# 1933
	jal		x0, beq_cont.25071	# 1933
beq.25072:
	addi	x4, x26, 568	# 292
	lw		x5, -52(x2)	# 292
	mul		x6, x30, x5	# 292
	add		x4, x4, x6	# 292
	flw		f1, 0(x4)	# 292
	addi	x4, x26, 312	# 292
	mul		x6, x30, x5	# 292
	add		x4, x4, x6	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	addi	x4, x26, 568	# 292
	lw		x6, -44(x2)	# 292
	mul		x7, x30, x6	# 292
	add		x4, x4, x7	# 292
	flw		f2, 0(x4)	# 292
	addi	x4, x26, 312	# 292
	mul		x7, x30, x6	# 292
	add		x4, x4, x7	# 292
	flw		f3, 0(x4)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	addi	x4, x26, 568	# 292
	lw		x7, -16(x2)	# 292
	mul		x8, x30, x7	# 292
	add		x4, x4, x8	# 292
	flw		f2, 0(x4)	# 292
	addi	x4, x26, 312	# 292
	mul		x8, x30, x7	# 292
	add		x4, x4, x8	# 292
	flw		f3, 0(x4)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	fsub	f1, f0, f1	# 4
	fadd	f2, f0, f0	# 2
	fle		x31, f1, f2	# 2
	beq		x31, x0, fle_cont.25073	# 2
	fadd	f1, f0, f0	# 1935
fle_cont.25073:
	flw		f2, -24(x2)	# 1936
	fmul	f1, f2, f1	# 1936
	lw		x4, -60(x2)	# 461
	lw		x4, 28(x4)	# 461
	mul		x8, x30, x5	# 466
	add		x4, x4, x8	# 466
	flw		f2, 0(x4)	# 466
	fmul	f1, f1, f2	# 1936
	addi	x4, x26, 592	# 302
	mul		x8, x30, x5	# 302
	add		x4, x4, x8	# 302
	flw		f2, 0(x4)	# 302
	addi	x4, x26, 580	# 302
	mul		x8, x30, x5	# 302
	add		x4, x4, x8	# 302
	flw		f3, 0(x4)	# 302
	fmul	f3, f1, f3	# 302
	fadd	f2, f2, f3	# 302
	addi	x4, x26, 592	# 302
	mul		x5, x30, x5	# 302
	add		x4, x4, x5	# 302
	fsw		f2, 0(x4)	# 302
	addi	x4, x26, 592	# 303
	mul		x5, x30, x6	# 303
	add		x4, x4, x5	# 303
	flw		f2, 0(x4)	# 303
	addi	x4, x26, 580	# 303
	mul		x5, x30, x6	# 303
	add		x4, x4, x5	# 303
	flw		f3, 0(x4)	# 303
	fmul	f3, f1, f3	# 303
	fadd	f2, f2, f3	# 303
	addi	x4, x26, 592	# 303
	mul		x5, x30, x6	# 303
	add		x4, x4, x5	# 303
	fsw		f2, 0(x4)	# 303
	addi	x4, x26, 592	# 304
	mul		x5, x30, x7	# 304
	add		x4, x4, x5	# 304
	flw		f2, 0(x4)	# 304
	addi	x4, x26, 580	# 304
	mul		x5, x30, x7	# 304
	add		x4, x4, x5	# 304
	flw		f3, 0(x4)	# 304
	fmul	f1, f1, f3	# 304
	fadd	f1, f2, f1	# 304
	addi	x4, x26, 592	# 304
	mul		x5, x30, x7	# 304
	add		x4, x4, x5	# 304
	fsw		f1, 0(x4)	# 304
beq_cont.25071:
beq_cont.25062:
	jal		x0, fle_cont.25056	# 3
fle_else.25057:
	addi	x15, x7, 1	# 1950
	mul		x15, x30, x15	# 1950
	add		x15, x4, x15	# 1950
	lw		x15, 0(x15)	# 1950
	lui		x16, %hi(l.21344)	# 1950
	ori		x16, x0, %lo(l.21344)	# 1950
	flw		f4, 0(x16)	# 1950
	fdiv	f3, f3, f4	# 1950
	addi	x16, x26, 548	# 1634
	mul		x17, x30, x13	# 1634
	add		x16, x16, x17	# 1634
	fsw		f1, 0(x16)	# 1634
	addi	x16, x26, 536	# 1635
	mul		x17, x30, x13	# 1635
	add		x16, x16, x17	# 1635
	lw		x16, 0(x16)	# 1635
	fsw		f3, -64(x2)	# 1635
	sw		x10, -28(x2)	# 1635
	sw		x8, -32(x2)	# 1635
	sw		x11, -36(x2)	# 1635
	fsw		f2, -40(x2)	# 1635
	sw		x14, -44(x2)	# 1635
	sw		x15, -68(x2)	# 1635
	sw		x13, -52(x2)	# 1635
	addi	x6, x15, 0
	addi	x5, x16, 0
	addi	x4, x13, 0
	addi	x29, x9, 0
	sw		x1, -72(x2)	# 1635
	addi	x2, x2, -76	# 1635
	lw		x31, 0(x29)	# 1635
	jalr	x1, x31, 0	# 1635
	addi	x2, x2, 76	# 1635
	lw		x1, -72(x2)	# 1635
	addi	x4, x26, 548	# 1636
	lw		x5, -52(x2)	# 1636
	mul		x6, x30, x5	# 1636
	add		x4, x4, x6	# 1636
	flw		f1, 0(x4)	# 1636
	fadd	f2, f0, f19	# 1638
	fle		x31, f1, f2	# 6
	beq		x31, x0, fle_else.25075	# 6
	addi	x4, x0, 0	# 1640
	jal		x0, fle_cont.25074	# 6
fle_else.25075:
	fadd	f2, f0, f21	# 1639
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.25077	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.25076	# 6
fle_else.25077:
	addi	x4, x0, 1	# 6
fle_cont.25076:
fle_cont.25074:
	addi	x6, x0, 0	# 1927
	beq		x4, x6, beq_cont.25078	# 1927
	addi	x4, x26, 564	# 1928
	mul		x7, x30, x6	# 1928
	add		x4, x4, x7	# 1928
	lw		x4, 0(x4)	# 1928
	addi	x7, x26, 48	# 1928
	mul		x4, x30, x4	# 1928
	add		x4, x7, x4	# 1928
	lw		x4, 0(x4)	# 1928
	lw		x7, -68(x2)	# 639
	lw		x7, 0(x7)	# 639
	lw		x8, 4(x4)	# 353
	lw		x9, -44(x2)	# 1693
	sw		x6, -72(x2)	# 1693
	sw		x4, -76(x2)	# 1693
	beq		x8, x9, beq.25080	# 1693
	lw		x7, -16(x2)	# 1695
	beq		x8, x7, beq.25082	# 1695
	lw		x29, -36(x2)	# 1698
	sw		x1, -80(x2)	# 1698
	addi	x2, x2, -84	# 1698
	lw		x31, 0(x29)	# 1698
	jalr	x1, x31, 0	# 1698
	addi	x2, x2, 84	# 1698
	lw		x1, -80(x2)	# 1698
	jal		x0, beq_cont.25081	# 1695
beq.25082:
	lw		x8, 16(x4)	# 391
	mul		x10, x30, x5	# 396
	add		x8, x8, x10	# 396
	flw		f1, 0(x8)	# 396
	fsub	f1, f0, f1	# 4
	addi	x8, x26, 568	# 1663
	mul		x10, x30, x5	# 1663
	add		x8, x8, x10	# 1663
	fsw		f1, 0(x8)	# 1663
	lw		x8, 16(x4)	# 401
	mul		x10, x30, x9	# 406
	add		x8, x8, x10	# 406
	flw		f1, 0(x8)	# 406
	fsub	f1, f0, f1	# 4
	addi	x8, x26, 568	# 1664
	mul		x10, x30, x9	# 1664
	add		x8, x8, x10	# 1664
	fsw		f1, 0(x8)	# 1664
	lw		x8, 16(x4)	# 411
	mul		x10, x30, x7	# 416
	add		x8, x8, x10	# 416
	flw		f1, 0(x8)	# 416
	fsub	f1, f0, f1	# 4
	addi	x8, x26, 568	# 1665
	mul		x10, x30, x7	# 1665
	add		x8, x8, x10	# 1665
	fsw		f1, 0(x8)	# 1665
beq_cont.25081:
	jal		x0, beq_cont.25079	# 1693
beq.25080:
	addi	x8, x26, 544	# 1654
	mul		x10, x30, x5	# 1654
	add		x8, x8, x10	# 1654
	lw		x8, 0(x8)	# 1654
	addi	x10, x26, 568	# 247
	mul		x11, x30, x5	# 247
	add		x10, x10, x11	# 247
	flw		f1, -40(x2)	# 247
	fsw		f1, 0(x10)	# 247
	addi	x10, x26, 568	# 248
	mul		x11, x30, x9	# 248
	add		x10, x10, x11	# 248
	fsw		f1, 0(x10)	# 248
	addi	x10, x26, 568	# 249
	lw		x11, -16(x2)	# 249
	mul		x12, x30, x11	# 249
	add		x10, x10, x12	# 249
	fsw		f1, 0(x10)	# 249
	sub		x10, x8, x9	# 1657
	sub		x8, x8, x9	# 1657
	mul		x8, x30, x8	# 1657
	add		x7, x7, x8	# 1657
	flw		f2, 0(x7)	# 1657
	feq		x31, f2, f1	# 1
	beq		x31, x0, feq_else.25084	# 1
	jal		x0, feq_cont.25083	# 1
feq_else.25084:
	fle		x31, f2, f1	# 2
	beq		x31, x0, fle_else.25086	# 2
	fadd	f1, f0, f18	# 214
	jal		x0, fle_cont.25085	# 2
fle_else.25086:
	fadd	f1, f0, f16	# 213
fle_cont.25085:
feq_cont.25083:
	fsub	f1, f0, f1	# 4
	addi	x7, x26, 568	# 1657
	mul		x8, x30, x10	# 1657
	add		x7, x7, x8	# 1657
	fsw		f1, 0(x7)	# 1657
beq_cont.25079:
	addi	x5, x26, 552	# 1930
	lw		x4, -76(x2)	# 1930
	lw		x29, -32(x2)	# 1930
	sw		x1, -80(x2)	# 1930
	addi	x2, x2, -84	# 1930
	lw		x31, 0(x29)	# 1930
	jalr	x1, x31, 0	# 1930
	addi	x2, x2, 84	# 1930
	lw		x1, -80(x2)	# 1930
	addi	x4, x0, 0	# 1933
	addi	x5, x0, 0	# 1933
	addi	x6, x26, 536	# 1933
	mul		x5, x30, x5	# 1933
	add		x5, x6, x5	# 1933
	lw		x5, 0(x5)	# 1933
	lw		x29, -28(x2)	# 1933
	sw		x1, -80(x2)	# 1933
	addi	x2, x2, -84	# 1933
	lw		x31, 0(x29)	# 1933
	jalr	x1, x31, 0	# 1933
	addi	x2, x2, 84	# 1933
	lw		x1, -80(x2)	# 1933
	lw		x5, -72(x2)	# 1933
	beq		x4, x5, beq.25088	# 1933
	jal		x0, beq_cont.25087	# 1933
beq.25088:
	addi	x4, x26, 568	# 292
	lw		x5, -52(x2)	# 292
	mul		x6, x30, x5	# 292
	add		x4, x4, x6	# 292
	flw		f1, 0(x4)	# 292
	addi	x4, x26, 312	# 292
	mul		x6, x30, x5	# 292
	add		x4, x4, x6	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	addi	x4, x26, 568	# 292
	lw		x6, -44(x2)	# 292
	mul		x7, x30, x6	# 292
	add		x4, x4, x7	# 292
	flw		f2, 0(x4)	# 292
	addi	x4, x26, 312	# 292
	mul		x7, x30, x6	# 292
	add		x4, x4, x7	# 292
	flw		f3, 0(x4)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	addi	x4, x26, 568	# 292
	lw		x7, -16(x2)	# 292
	mul		x8, x30, x7	# 292
	add		x4, x4, x8	# 292
	flw		f2, 0(x4)	# 292
	addi	x4, x26, 312	# 292
	mul		x8, x30, x7	# 292
	add		x4, x4, x8	# 292
	flw		f3, 0(x4)	# 292
	fmul	f2, f2, f3	# 292
	fadd	f1, f1, f2	# 292
	fsub	f1, f0, f1	# 4
	fadd	f2, f0, f0	# 2
	fle		x31, f1, f2	# 2
	beq		x31, x0, fle_cont.25089	# 2
	fadd	f1, f0, f0	# 1935
fle_cont.25089:
	flw		f2, -64(x2)	# 1936
	fmul	f1, f2, f1	# 1936
	lw		x4, -76(x2)	# 461
	lw		x4, 28(x4)	# 461
	mul		x8, x30, x5	# 466
	add		x4, x4, x8	# 466
	flw		f2, 0(x4)	# 466
	fmul	f1, f1, f2	# 1936
	addi	x4, x26, 592	# 302
	mul		x8, x30, x5	# 302
	add		x4, x4, x8	# 302
	flw		f2, 0(x4)	# 302
	addi	x4, x26, 580	# 302
	mul		x8, x30, x5	# 302
	add		x4, x4, x8	# 302
	flw		f3, 0(x4)	# 302
	fmul	f3, f1, f3	# 302
	fadd	f2, f2, f3	# 302
	addi	x4, x26, 592	# 302
	mul		x5, x30, x5	# 302
	add		x4, x4, x5	# 302
	fsw		f2, 0(x4)	# 302
	addi	x4, x26, 592	# 303
	mul		x5, x30, x6	# 303
	add		x4, x4, x5	# 303
	flw		f2, 0(x4)	# 303
	addi	x4, x26, 580	# 303
	mul		x5, x30, x6	# 303
	add		x4, x4, x5	# 303
	flw		f3, 0(x4)	# 303
	fmul	f3, f1, f3	# 303
	fadd	f2, f2, f3	# 303
	addi	x4, x26, 592	# 303
	mul		x5, x30, x6	# 303
	add		x4, x4, x5	# 303
	fsw		f2, 0(x4)	# 303
	addi	x4, x26, 592	# 304
	mul		x5, x30, x7	# 304
	add		x4, x4, x5	# 304
	flw		f2, 0(x4)	# 304
	addi	x4, x26, 580	# 304
	mul		x5, x30, x7	# 304
	add		x4, x4, x5	# 304
	flw		f3, 0(x4)	# 304
	fmul	f1, f1, f3	# 304
	fadd	f1, f2, f1	# 304
	addi	x4, x26, 592	# 304
	mul		x5, x30, x7	# 304
	add		x4, x4, x5	# 304
	fsw		f1, 0(x4)	# 304
beq_cont.25087:
beq_cont.25078:
fle_cont.25056:
	lw		x4, -16(x2)	# 1954
	lw		x5, -20(x2)	# 1954
	sub		x7, x5, x4	# 1954
	lw		x4, -8(x2)	# 1954
	lw		x5, -4(x2)	# 1954
	lw		x6, 0(x2)	# 1954
	lw		x29, -12(x2)	# 1954
	lw		x31, 0(x29)	# 1954
	jalr	x0, x31, 0	# 1954
do_without_neighbors.2902.13050:
	lw		x6, 24(x29)	# 2035
	lw		x7, 20(x29)	# 2035
	lw		x8, 16(x29)	# 2035
	lw		x9, 12(x29)	# 2035
	lw		x10, 8(x29)	# 2035
	lw		x11, 4(x29)	# 2035
	addi	x12, x0, 4	# 2035
	ble		x5, x12, ble.25090	# 2035
	jalr	x0, x1, 0	# 2045
ble.25090:
	lw		x12, 8(x4)	# 577
	mul		x13, x30, x5	# 2038
	add		x12, x12, x13	# 2038
	lw		x12, 0(x12)	# 2038
	ble		x10, x12, ble.25092	# 2038
	jalr	x0, x1, 0	# 2044
ble.25092:
	lw		x12, 12(x4)	# 584
	mul		x13, x30, x5	# 2040
	add		x12, x12, x13	# 2040
	lw		x12, 0(x12)	# 2040
	sw		x4, 0(x2)	# 2040
	sw		x29, -4(x2)	# 2040
	sw		x11, -8(x2)	# 2040
	sw		x5, -12(x2)	# 2040
	beq		x12, x10, beq_cont.25094	# 2040
	lw		x12, 20(x4)	# 598
	lw		x13, 28(x4)	# 628
	lw		x14, 4(x4)	# 569
	lw		x15, 16(x4)	# 591
	mul		x16, x30, x5	# 2002
	add		x12, x12, x16	# 2002
	lw		x12, 0(x12)	# 2002
	mul		x16, x30, x10	# 259
	add		x16, x12, x16	# 259
	flw		f1, 0(x16)	# 259
	addi	x16, x26, 592	# 259
	mul		x17, x30, x10	# 259
	add		x16, x16, x17	# 259
	fsw		f1, 0(x16)	# 259
	mul		x16, x30, x11	# 260
	add		x16, x12, x16	# 260
	flw		f1, 0(x16)	# 260
	addi	x16, x26, 592	# 260
	mul		x17, x30, x11	# 260
	add		x16, x16, x17	# 260
	fsw		f1, 0(x16)	# 260
	mul		x16, x30, x8	# 261
	add		x12, x12, x16	# 261
	flw		f1, 0(x12)	# 261
	addi	x12, x26, 592	# 261
	mul		x16, x30, x8	# 261
	add		x12, x12, x16	# 261
	fsw		f1, 0(x12)	# 261
	lw		x12, 24(x4)	# 614
	mul		x16, x30, x10	# 616
	add		x12, x12, x16	# 616
	lw		x12, 0(x12)	# 616
	mul		x16, x30, x5	# 2005
	add		x13, x13, x16	# 2005
	lw		x13, 0(x13)	# 2005
	mul		x16, x30, x5	# 2006
	add		x14, x14, x16	# 2006
	lw		x14, 0(x14)	# 2006
	sw		x15, -16(x2)	# 1971
	sw		x9, -20(x2)	# 1971
	sw		x13, -24(x2)	# 1971
	sw		x7, -28(x2)	# 1971
	sw		x6, -32(x2)	# 1971
	sw		x8, -36(x2)	# 1971
	sw		x14, -40(x2)	# 1971
	sw		x10, -44(x2)	# 1971
	sw		x12, -48(x2)	# 1971
	beq		x12, x10, beq_cont.25095	# 1971
	addi	x16, x0, 0	# 1972
	addi	x17, x26, 716	# 1972
	mul		x16, x30, x16	# 1972
	add		x16, x17, x16	# 1972
	lw		x16, 0(x16)	# 1972
	mul		x17, x30, x10	# 259
	add		x17, x14, x17	# 259
	flw		f1, 0(x17)	# 259
	addi	x17, x26, 648	# 259
	mul		x18, x30, x10	# 259
	add		x17, x17, x18	# 259
	fsw		f1, 0(x17)	# 259
	mul		x17, x30, x11	# 260
	add		x17, x14, x17	# 260
	flw		f1, 0(x17)	# 260
	addi	x17, x26, 648	# 260
	mul		x18, x30, x11	# 260
	add		x17, x17, x18	# 260
	fsw		f1, 0(x17)	# 260
	mul		x17, x30, x8	# 261
	add		x17, x14, x17	# 261
	flw		f1, 0(x17)	# 261
	addi	x17, x26, 648	# 261
	mul		x18, x30, x8	# 261
	add		x17, x17, x18	# 261
	fsw		f1, 0(x17)	# 261
	addi	x17, x26, 0	# 1315
	mul		x18, x30, x10	# 1315
	add		x17, x17, x18	# 1315
	lw		x17, 0(x17)	# 1315
	sub		x17, x17, x11	# 1315
	sw		x16, -52(x2)	# 1315
	addi	x5, x17, 0
	addi	x4, x14, 0
	addi	x29, x6, 0
	sw		x1, -56(x2)	# 1315
	addi	x2, x2, -60	# 1315
	lw		x31, 0(x29)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 60	# 1315
	lw		x1, -56(x2)	# 1315
	addi	x7, x0, 118	# 1964
	lw		x4, -52(x2)	# 1964
	lw		x5, -24(x2)	# 1964
	lw		x6, -40(x2)	# 1964
	lw		x29, -28(x2)	# 1964
	sw		x1, -56(x2)	# 1964
	addi	x2, x2, -60	# 1964
	lw		x31, 0(x29)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 60	# 1964
	lw		x1, -56(x2)	# 1964
beq_cont.25095:
	lw		x4, -8(x2)	# 1975
	lw		x5, -48(x2)	# 1975
	beq		x5, x4, beq_cont.25096	# 1975
	addi	x6, x0, 1	# 1976
	addi	x7, x26, 716	# 1976
	mul		x6, x30, x6	# 1976
	add		x6, x7, x6	# 1976
	lw		x6, 0(x6)	# 1976
	lw		x7, -44(x2)	# 259
	mul		x8, x30, x7	# 259
	lw		x9, -40(x2)	# 259
	add		x8, x9, x8	# 259
	flw		f1, 0(x8)	# 259
	addi	x8, x26, 648	# 259
	mul		x10, x30, x7	# 259
	add		x8, x8, x10	# 259
	fsw		f1, 0(x8)	# 259
	mul		x8, x30, x4	# 260
	add		x8, x9, x8	# 260
	flw		f1, 0(x8)	# 260
	addi	x8, x26, 648	# 260
	mul		x10, x30, x4	# 260
	add		x8, x8, x10	# 260
	fsw		f1, 0(x8)	# 260
	lw		x8, -36(x2)	# 261
	mul		x10, x30, x8	# 261
	add		x10, x9, x10	# 261
	flw		f1, 0(x10)	# 261
	addi	x10, x26, 648	# 261
	mul		x11, x30, x8	# 261
	add		x10, x10, x11	# 261
	fsw		f1, 0(x10)	# 261
	addi	x10, x26, 0	# 1315
	mul		x11, x30, x7	# 1315
	add		x10, x10, x11	# 1315
	lw		x10, 0(x10)	# 1315
	sub		x10, x10, x4	# 1315
	lw		x29, -32(x2)	# 1315
	sw		x6, -56(x2)	# 1315
	addi	x5, x10, 0
	addi	x4, x9, 0
	sw		x1, -60(x2)	# 1315
	addi	x2, x2, -64	# 1315
	lw		x31, 0(x29)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 64	# 1315
	lw		x1, -60(x2)	# 1315
	addi	x7, x0, 118	# 1964
	lw		x4, -56(x2)	# 1964
	lw		x5, -24(x2)	# 1964
	lw		x6, -40(x2)	# 1964
	lw		x29, -28(x2)	# 1964
	sw		x1, -60(x2)	# 1964
	addi	x2, x2, -64	# 1964
	lw		x31, 0(x29)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 64	# 1964
	lw		x1, -60(x2)	# 1964
beq_cont.25096:
	lw		x4, -36(x2)	# 1979
	lw		x5, -48(x2)	# 1979
	beq		x5, x4, beq_cont.25097	# 1979
	addi	x6, x0, 2	# 1980
	addi	x7, x26, 716	# 1980
	mul		x6, x30, x6	# 1980
	add		x6, x7, x6	# 1980
	lw		x6, 0(x6)	# 1980
	lw		x7, -44(x2)	# 259
	mul		x8, x30, x7	# 259
	lw		x9, -40(x2)	# 259
	add		x8, x9, x8	# 259
	flw		f1, 0(x8)	# 259
	addi	x8, x26, 648	# 259
	mul		x10, x30, x7	# 259
	add		x8, x8, x10	# 259
	fsw		f1, 0(x8)	# 259
	lw		x8, -8(x2)	# 260
	mul		x10, x30, x8	# 260
	add		x10, x9, x10	# 260
	flw		f1, 0(x10)	# 260
	addi	x10, x26, 648	# 260
	mul		x11, x30, x8	# 260
	add		x10, x10, x11	# 260
	fsw		f1, 0(x10)	# 260
	mul		x10, x30, x4	# 261
	add		x10, x9, x10	# 261
	flw		f1, 0(x10)	# 261
	addi	x10, x26, 648	# 261
	mul		x11, x30, x4	# 261
	add		x10, x10, x11	# 261
	fsw		f1, 0(x10)	# 261
	addi	x10, x26, 0	# 1315
	mul		x11, x30, x7	# 1315
	add		x10, x10, x11	# 1315
	lw		x10, 0(x10)	# 1315
	sub		x10, x10, x8	# 1315
	lw		x29, -32(x2)	# 1315
	sw		x6, -60(x2)	# 1315
	addi	x5, x10, 0
	addi	x4, x9, 0
	sw		x1, -64(x2)	# 1315
	addi	x2, x2, -68	# 1315
	lw		x31, 0(x29)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 68	# 1315
	lw		x1, -64(x2)	# 1315
	addi	x7, x0, 118	# 1964
	lw		x4, -60(x2)	# 1964
	lw		x5, -24(x2)	# 1964
	lw		x6, -40(x2)	# 1964
	lw		x29, -28(x2)	# 1964
	sw		x1, -64(x2)	# 1964
	addi	x2, x2, -68	# 1964
	lw		x31, 0(x29)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 68	# 1964
	lw		x1, -64(x2)	# 1964
beq_cont.25097:
	lw		x4, -20(x2)	# 1983
	lw		x5, -48(x2)	# 1983
	beq		x5, x4, beq_cont.25098	# 1983
	addi	x4, x0, 3	# 1984
	addi	x6, x26, 716	# 1984
	mul		x4, x30, x4	# 1984
	add		x4, x6, x4	# 1984
	lw		x4, 0(x4)	# 1984
	lw		x6, -44(x2)	# 259
	mul		x7, x30, x6	# 259
	lw		x8, -40(x2)	# 259
	add		x7, x8, x7	# 259
	flw		f1, 0(x7)	# 259
	addi	x7, x26, 648	# 259
	mul		x9, x30, x6	# 259
	add		x7, x7, x9	# 259
	fsw		f1, 0(x7)	# 259
	lw		x7, -8(x2)	# 260
	mul		x9, x30, x7	# 260
	add		x9, x8, x9	# 260
	flw		f1, 0(x9)	# 260
	addi	x9, x26, 648	# 260
	mul		x10, x30, x7	# 260
	add		x9, x9, x10	# 260
	fsw		f1, 0(x9)	# 260
	lw		x9, -36(x2)	# 261
	mul		x10, x30, x9	# 261
	add		x10, x8, x10	# 261
	flw		f1, 0(x10)	# 261
	addi	x10, x26, 648	# 261
	mul		x11, x30, x9	# 261
	add		x10, x10, x11	# 261
	fsw		f1, 0(x10)	# 261
	addi	x10, x26, 0	# 1315
	mul		x11, x30, x6	# 1315
	add		x10, x10, x11	# 1315
	lw		x10, 0(x10)	# 1315
	sub		x10, x10, x7	# 1315
	lw		x29, -32(x2)	# 1315
	sw		x4, -64(x2)	# 1315
	addi	x5, x10, 0
	addi	x4, x8, 0
	sw		x1, -68(x2)	# 1315
	addi	x2, x2, -72	# 1315
	lw		x31, 0(x29)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 72	# 1315
	lw		x1, -68(x2)	# 1315
	addi	x7, x0, 118	# 1964
	lw		x4, -64(x2)	# 1964
	lw		x5, -24(x2)	# 1964
	lw		x6, -40(x2)	# 1964
	lw		x29, -28(x2)	# 1964
	sw		x1, -68(x2)	# 1964
	addi	x2, x2, -72	# 1964
	lw		x31, 0(x29)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 72	# 1964
	lw		x1, -68(x2)	# 1964
beq_cont.25098:
	addi	x4, x0, 4	# 1987
	lw		x5, -48(x2)	# 1987
	beq		x5, x4, beq_cont.25099	# 1987
	addi	x5, x26, 716	# 1988
	mul		x4, x30, x4	# 1988
	add		x4, x5, x4	# 1988
	lw		x4, 0(x4)	# 1988
	lw		x5, -44(x2)	# 259
	mul		x6, x30, x5	# 259
	lw		x7, -40(x2)	# 259
	add		x6, x7, x6	# 259
	flw		f1, 0(x6)	# 259
	addi	x6, x26, 648	# 259
	mul		x8, x30, x5	# 259
	add		x6, x6, x8	# 259
	fsw		f1, 0(x6)	# 259
	lw		x6, -8(x2)	# 260
	mul		x8, x30, x6	# 260
	add		x8, x7, x8	# 260
	flw		f1, 0(x8)	# 260
	addi	x8, x26, 648	# 260
	mul		x9, x30, x6	# 260
	add		x8, x8, x9	# 260
	fsw		f1, 0(x8)	# 260
	lw		x8, -36(x2)	# 261
	mul		x9, x30, x8	# 261
	add		x9, x7, x9	# 261
	flw		f1, 0(x9)	# 261
	addi	x9, x26, 648	# 261
	mul		x10, x30, x8	# 261
	add		x9, x9, x10	# 261
	fsw		f1, 0(x9)	# 261
	addi	x9, x26, 0	# 1315
	mul		x10, x30, x5	# 1315
	add		x9, x9, x10	# 1315
	lw		x9, 0(x9)	# 1315
	sub		x9, x9, x6	# 1315
	lw		x29, -32(x2)	# 1315
	sw		x4, -68(x2)	# 1315
	addi	x5, x9, 0
	addi	x4, x7, 0
	sw		x1, -72(x2)	# 1315
	addi	x2, x2, -76	# 1315
	lw		x31, 0(x29)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 76	# 1315
	lw		x1, -72(x2)	# 1315
	addi	x7, x0, 118	# 1964
	lw		x4, -68(x2)	# 1964
	lw		x5, -24(x2)	# 1964
	lw		x6, -40(x2)	# 1964
	lw		x29, -28(x2)	# 1964
	sw		x1, -72(x2)	# 1964
	addi	x2, x2, -76	# 1964
	lw		x31, 0(x29)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 76	# 1964
	lw		x1, -72(x2)	# 1964
beq_cont.25099:
	lw		x4, -12(x2)	# 2007
	mul		x5, x30, x4	# 2007
	lw		x6, -16(x2)	# 2007
	add		x5, x6, x5	# 2007
	lw		x5, 0(x5)	# 2007
	addi	x6, x26, 604	# 332
	lw		x7, -44(x2)	# 332
	mul		x8, x30, x7	# 332
	add		x6, x6, x8	# 332
	flw		f1, 0(x6)	# 332
	mul		x6, x30, x7	# 332
	add		x6, x5, x6	# 332
	flw		f2, 0(x6)	# 332
	addi	x6, x26, 592	# 332
	mul		x8, x30, x7	# 332
	add		x6, x6, x8	# 332
	flw		f3, 0(x6)	# 332
	fmul	f2, f2, f3	# 332
	fadd	f1, f1, f2	# 332
	addi	x6, x26, 604	# 332
	mul		x7, x30, x7	# 332
	add		x6, x6, x7	# 332
	fsw		f1, 0(x6)	# 332
	addi	x6, x26, 604	# 333
	lw		x7, -8(x2)	# 333
	mul		x8, x30, x7	# 333
	add		x6, x6, x8	# 333
	flw		f1, 0(x6)	# 333
	mul		x6, x30, x7	# 333
	add		x6, x5, x6	# 333
	flw		f2, 0(x6)	# 333
	addi	x6, x26, 592	# 333
	mul		x8, x30, x7	# 333
	add		x6, x6, x8	# 333
	flw		f3, 0(x6)	# 333
	fmul	f2, f2, f3	# 333
	fadd	f1, f1, f2	# 333
	addi	x6, x26, 604	# 333
	mul		x8, x30, x7	# 333
	add		x6, x6, x8	# 333
	fsw		f1, 0(x6)	# 333
	addi	x6, x26, 604	# 334
	lw		x8, -36(x2)	# 334
	mul		x9, x30, x8	# 334
	add		x6, x6, x9	# 334
	flw		f1, 0(x6)	# 334
	mul		x6, x30, x8	# 334
	add		x5, x5, x6	# 334
	flw		f2, 0(x5)	# 334
	addi	x5, x26, 592	# 334
	mul		x6, x30, x8	# 334
	add		x5, x5, x6	# 334
	flw		f3, 0(x5)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	addi	x5, x26, 604	# 334
	mul		x6, x30, x8	# 334
	add		x5, x5, x6	# 334
	fsw		f1, 0(x5)	# 334
beq_cont.25094:
	lw		x4, -8(x2)	# 2043
	lw		x5, -12(x2)	# 2043
	add		x5, x5, x4	# 2043
	lw		x4, 0(x2)	# 2043
	lw		x29, -4(x2)	# 2043
	lw		x31, 0(x29)	# 2043
	jalr	x0, x31, 0	# 2043
try_exploit_neighbors.2918.13053:
	lw		x10, 16(x29)	# 2087
	lw		x11, 12(x29)	# 2087
	lw		x12, 8(x29)	# 2087
	lw		x13, 4(x29)	# 2087
	mul		x14, x30, x4	# 2087
	add		x14, x7, x14	# 2087
	lw		x14, 0(x14)	# 2087
	addi	x15, x0, 4	# 2088
	ble		x9, x15, ble.25100	# 2088
	jalr	x0, x1, 0	# 2107
ble.25100:
	lw		x15, 8(x14)	# 577
	mul		x16, x30, x9	# 2063
	add		x15, x15, x16	# 2063
	lw		x15, 0(x15)	# 2063
	ble		x12, x15, ble.25102	# 2091
	jalr	x0, x1, 0	# 2106
ble.25102:
	lw		x15, 8(x14)	# 577
	mul		x16, x30, x9	# 2063
	add		x15, x15, x16	# 2063
	lw		x15, 0(x15)	# 2063
	mul		x16, x30, x4	# 2071
	add		x16, x6, x16	# 2071
	lw		x16, 0(x16)	# 2071
	lw		x16, 8(x16)	# 577
	mul		x17, x30, x9	# 2063
	add		x16, x16, x17	# 2063
	lw		x16, 0(x16)	# 2063
	beq		x16, x15, beq.25105	# 2071
	addi	x15, x0, 0	# 2079
	jal		x0, beq_cont.25104	# 2071
beq.25105:
	mul		x16, x30, x4	# 2072
	add		x16, x8, x16	# 2072
	lw		x16, 0(x16)	# 2072
	lw		x16, 8(x16)	# 577
	mul		x17, x30, x9	# 2063
	add		x16, x16, x17	# 2063
	lw		x16, 0(x16)	# 2063
	beq		x16, x15, beq.25107	# 2072
	addi	x15, x0, 0	# 2078
	jal		x0, beq_cont.25106	# 2072
beq.25107:
	sub		x16, x4, x13	# 2073
	mul		x16, x30, x16	# 2073
	add		x16, x7, x16	# 2073
	lw		x16, 0(x16)	# 2073
	lw		x16, 8(x16)	# 577
	mul		x17, x30, x9	# 2063
	add		x16, x16, x17	# 2063
	lw		x16, 0(x16)	# 2063
	beq		x16, x15, beq.25109	# 2073
	addi	x15, x0, 0	# 2077
	jal		x0, beq_cont.25108	# 2073
beq.25109:
	add		x16, x4, x13	# 2074
	mul		x16, x30, x16	# 2074
	add		x16, x7, x16	# 2074
	lw		x16, 0(x16)	# 2074
	lw		x16, 8(x16)	# 577
	mul		x17, x30, x9	# 2063
	add		x16, x16, x17	# 2063
	lw		x16, 0(x16)	# 2063
	beq		x16, x15, beq.25111	# 2074
	addi	x15, x0, 0	# 2076
	jal		x0, beq_cont.25110	# 2074
beq.25111:
	addi	x15, x0, 1	# 2075
beq_cont.25110:
beq_cont.25108:
beq_cont.25106:
beq_cont.25104:
	beq		x15, x12, beq.25112	# 2093
	lw		x10, 12(x14)	# 584
	mul		x14, x30, x9	# 2097
	add		x10, x10, x14	# 2097
	lw		x10, 0(x10)	# 2097
	beq		x10, x12, beq_cont.25113	# 2097
	mul		x10, x30, x4	# 2016
	add		x10, x6, x10	# 2016
	lw		x10, 0(x10)	# 2016
	lw		x10, 20(x10)	# 598
	addi	x14, x0, 1	# 2017
	sub		x14, x4, x14	# 2017
	mul		x14, x30, x14	# 2017
	add		x14, x7, x14	# 2017
	lw		x14, 0(x14)	# 2017
	lw		x14, 20(x14)	# 598
	mul		x15, x30, x4	# 2018
	add		x15, x7, x15	# 2018
	lw		x15, 0(x15)	# 2018
	lw		x15, 20(x15)	# 598
	addi	x16, x4, 1	# 2019
	mul		x16, x30, x16	# 2019
	add		x16, x7, x16	# 2019
	lw		x16, 0(x16)	# 2019
	lw		x16, 20(x16)	# 598
	mul		x17, x30, x4	# 2020
	add		x17, x8, x17	# 2020
	lw		x17, 0(x17)	# 2020
	lw		x17, 20(x17)	# 598
	mul		x18, x30, x9	# 2022
	add		x10, x10, x18	# 2022
	lw		x10, 0(x10)	# 2022
	mul		x18, x30, x12	# 259
	add		x18, x10, x18	# 259
	flw		f1, 0(x18)	# 259
	addi	x18, x26, 592	# 259
	mul		x19, x30, x12	# 259
	add		x18, x18, x19	# 259
	fsw		f1, 0(x18)	# 259
	mul		x18, x30, x13	# 260
	add		x18, x10, x18	# 260
	flw		f1, 0(x18)	# 260
	addi	x18, x26, 592	# 260
	mul		x19, x30, x13	# 260
	add		x18, x18, x19	# 260
	fsw		f1, 0(x18)	# 260
	mul		x18, x30, x11	# 261
	add		x10, x10, x18	# 261
	flw		f1, 0(x10)	# 261
	addi	x10, x26, 592	# 261
	mul		x18, x30, x11	# 261
	add		x10, x10, x18	# 261
	fsw		f1, 0(x10)	# 261
	mul		x10, x30, x9	# 2023
	add		x10, x14, x10	# 2023
	lw		x10, 0(x10)	# 2023
	addi	x14, x26, 592	# 309
	mul		x18, x30, x12	# 309
	add		x14, x14, x18	# 309
	flw		f1, 0(x14)	# 309
	mul		x14, x30, x12	# 309
	add		x14, x10, x14	# 309
	flw		f2, 0(x14)	# 309
	fadd	f1, f1, f2	# 309
	addi	x14, x26, 592	# 309
	mul		x18, x30, x12	# 309
	add		x14, x14, x18	# 309
	fsw		f1, 0(x14)	# 309
	addi	x14, x26, 592	# 310
	mul		x18, x30, x13	# 310
	add		x14, x14, x18	# 310
	flw		f1, 0(x14)	# 310
	mul		x14, x30, x13	# 310
	add		x14, x10, x14	# 310
	flw		f2, 0(x14)	# 310
	fadd	f1, f1, f2	# 310
	addi	x14, x26, 592	# 310
	mul		x18, x30, x13	# 310
	add		x14, x14, x18	# 310
	fsw		f1, 0(x14)	# 310
	addi	x14, x26, 592	# 311
	mul		x18, x30, x11	# 311
	add		x14, x14, x18	# 311
	flw		f1, 0(x14)	# 311
	mul		x14, x30, x11	# 311
	add		x10, x10, x14	# 311
	flw		f2, 0(x10)	# 311
	fadd	f1, f1, f2	# 311
	addi	x10, x26, 592	# 311
	mul		x14, x30, x11	# 311
	add		x10, x10, x14	# 311
	fsw		f1, 0(x10)	# 311
	mul		x10, x30, x9	# 2024
	add		x10, x15, x10	# 2024
	lw		x10, 0(x10)	# 2024
	addi	x14, x26, 592	# 309
	mul		x15, x30, x12	# 309
	add		x14, x14, x15	# 309
	flw		f1, 0(x14)	# 309
	mul		x14, x30, x12	# 309
	add		x14, x10, x14	# 309
	flw		f2, 0(x14)	# 309
	fadd	f1, f1, f2	# 309
	addi	x14, x26, 592	# 309
	mul		x15, x30, x12	# 309
	add		x14, x14, x15	# 309
	fsw		f1, 0(x14)	# 309
	addi	x14, x26, 592	# 310
	mul		x15, x30, x13	# 310
	add		x14, x14, x15	# 310
	flw		f1, 0(x14)	# 310
	mul		x14, x30, x13	# 310
	add		x14, x10, x14	# 310
	flw		f2, 0(x14)	# 310
	fadd	f1, f1, f2	# 310
	addi	x14, x26, 592	# 310
	mul		x15, x30, x13	# 310
	add		x14, x14, x15	# 310
	fsw		f1, 0(x14)	# 310
	addi	x14, x26, 592	# 311
	mul		x15, x30, x11	# 311
	add		x14, x14, x15	# 311
	flw		f1, 0(x14)	# 311
	mul		x14, x30, x11	# 311
	add		x10, x10, x14	# 311
	flw		f2, 0(x10)	# 311
	fadd	f1, f1, f2	# 311
	addi	x10, x26, 592	# 311
	mul		x14, x30, x11	# 311
	add		x10, x10, x14	# 311
	fsw		f1, 0(x10)	# 311
	mul		x10, x30, x9	# 2025
	add		x10, x16, x10	# 2025
	lw		x10, 0(x10)	# 2025
	addi	x14, x26, 592	# 309
	mul		x15, x30, x12	# 309
	add		x14, x14, x15	# 309
	flw		f1, 0(x14)	# 309
	mul		x14, x30, x12	# 309
	add		x14, x10, x14	# 309
	flw		f2, 0(x14)	# 309
	fadd	f1, f1, f2	# 309
	addi	x14, x26, 592	# 309
	mul		x15, x30, x12	# 309
	add		x14, x14, x15	# 309
	fsw		f1, 0(x14)	# 309
	addi	x14, x26, 592	# 310
	mul		x15, x30, x13	# 310
	add		x14, x14, x15	# 310
	flw		f1, 0(x14)	# 310
	mul		x14, x30, x13	# 310
	add		x14, x10, x14	# 310
	flw		f2, 0(x14)	# 310
	fadd	f1, f1, f2	# 310
	addi	x14, x26, 592	# 310
	mul		x15, x30, x13	# 310
	add		x14, x14, x15	# 310
	fsw		f1, 0(x14)	# 310
	addi	x14, x26, 592	# 311
	mul		x15, x30, x11	# 311
	add		x14, x14, x15	# 311
	flw		f1, 0(x14)	# 311
	mul		x14, x30, x11	# 311
	add		x10, x10, x14	# 311
	flw		f2, 0(x10)	# 311
	fadd	f1, f1, f2	# 311
	addi	x10, x26, 592	# 311
	mul		x14, x30, x11	# 311
	add		x10, x10, x14	# 311
	fsw		f1, 0(x10)	# 311
	mul		x10, x30, x9	# 2026
	add		x10, x17, x10	# 2026
	lw		x10, 0(x10)	# 2026
	addi	x14, x26, 592	# 309
	mul		x15, x30, x12	# 309
	add		x14, x14, x15	# 309
	flw		f1, 0(x14)	# 309
	mul		x14, x30, x12	# 309
	add		x14, x10, x14	# 309
	flw		f2, 0(x14)	# 309
	fadd	f1, f1, f2	# 309
	addi	x14, x26, 592	# 309
	mul		x15, x30, x12	# 309
	add		x14, x14, x15	# 309
	fsw		f1, 0(x14)	# 309
	addi	x14, x26, 592	# 310
	mul		x15, x30, x13	# 310
	add		x14, x14, x15	# 310
	flw		f1, 0(x14)	# 310
	mul		x14, x30, x13	# 310
	add		x14, x10, x14	# 310
	flw		f2, 0(x14)	# 310
	fadd	f1, f1, f2	# 310
	addi	x14, x26, 592	# 310
	mul		x15, x30, x13	# 310
	add		x14, x14, x15	# 310
	fsw		f1, 0(x14)	# 310
	addi	x14, x26, 592	# 311
	mul		x15, x30, x11	# 311
	add		x14, x14, x15	# 311
	flw		f1, 0(x14)	# 311
	mul		x14, x30, x11	# 311
	add		x10, x10, x14	# 311
	flw		f2, 0(x10)	# 311
	fadd	f1, f1, f2	# 311
	addi	x10, x26, 592	# 311
	mul		x14, x30, x11	# 311
	add		x10, x10, x14	# 311
	fsw		f1, 0(x10)	# 311
	mul		x10, x30, x4	# 2028
	add		x10, x7, x10	# 2028
	lw		x10, 0(x10)	# 2028
	lw		x10, 16(x10)	# 591
	mul		x14, x30, x9	# 2029
	add		x10, x10, x14	# 2029
	lw		x10, 0(x10)	# 2029
	addi	x14, x26, 604	# 332
	mul		x15, x30, x12	# 332
	add		x14, x14, x15	# 332
	flw		f1, 0(x14)	# 332
	mul		x14, x30, x12	# 332
	add		x14, x10, x14	# 332
	flw		f2, 0(x14)	# 332
	addi	x14, x26, 592	# 332
	mul		x15, x30, x12	# 332
	add		x14, x14, x15	# 332
	flw		f3, 0(x14)	# 332
	fmul	f2, f2, f3	# 332
	fadd	f1, f1, f2	# 332
	addi	x14, x26, 604	# 332
	mul		x12, x30, x12	# 332
	add		x12, x14, x12	# 332
	fsw		f1, 0(x12)	# 332
	addi	x12, x26, 604	# 333
	mul		x14, x30, x13	# 333
	add		x12, x12, x14	# 333
	flw		f1, 0(x12)	# 333
	mul		x12, x30, x13	# 333
	add		x12, x10, x12	# 333
	flw		f2, 0(x12)	# 333
	addi	x12, x26, 592	# 333
	mul		x14, x30, x13	# 333
	add		x12, x12, x14	# 333
	flw		f3, 0(x12)	# 333
	fmul	f2, f2, f3	# 333
	fadd	f1, f1, f2	# 333
	addi	x12, x26, 604	# 333
	mul		x14, x30, x13	# 333
	add		x12, x12, x14	# 333
	fsw		f1, 0(x12)	# 333
	addi	x12, x26, 604	# 334
	mul		x14, x30, x11	# 334
	add		x12, x12, x14	# 334
	flw		f1, 0(x12)	# 334
	mul		x12, x30, x11	# 334
	add		x10, x10, x12	# 334
	flw		f2, 0(x10)	# 334
	addi	x10, x26, 592	# 334
	mul		x12, x30, x11	# 334
	add		x10, x10, x12	# 334
	flw		f3, 0(x10)	# 334
	fmul	f2, f2, f3	# 334
	fadd	f1, f1, f2	# 334
	addi	x10, x26, 604	# 334
	mul		x11, x30, x11	# 334
	add		x10, x10, x11	# 334
	fsw		f1, 0(x10)	# 334
beq_cont.25113:
	add		x9, x9, x13	# 2102
	lw		x31, 0(x29)	# 2102
	jalr	x0, x31, 0	# 2102
beq.25112:
	addi	x5, x9, 0
	addi	x4, x14, 0
	addi	x29, x10, 0
	lw		x31, 0(x29)	# 2105
	jalr	x0, x31, 0	# 2105
pretrace_diffuse_rays.2933.13060:
	lw		x6, 20(x29)	# 2163
	lw		x7, 16(x29)	# 2163
	lw		x8, 12(x29)	# 2163
	lw		x9, 8(x29)	# 2163
	lw		x10, 4(x29)	# 2163
	addi	x11, x0, 4	# 2163
	ble		x5, x11, ble.25114	# 2163
	jalr	x0, x1, 0	# 2187
ble.25114:
	lw		x11, 8(x4)	# 577
	mul		x12, x30, x5	# 2063
	add		x11, x11, x12	# 2063
	lw		x11, 0(x11)	# 2063
	ble		x9, x11, ble.25116	# 2167
	jalr	x0, x1, 0	# 2186
ble.25116:
	lw		x11, 12(x4)	# 584
	mul		x12, x30, x5	# 2170
	add		x11, x11, x12	# 2170
	lw		x11, 0(x11)	# 2170
	sw		x29, 0(x2)	# 2170
	sw		x10, -4(x2)	# 2170
	sw		x5, -8(x2)	# 2170
	beq		x11, x9, beq_cont.25118	# 2170
	lw		x11, 24(x4)	# 614
	addi	x12, x0, 0	# 616
	mul		x12, x30, x12	# 616
	add		x11, x11, x12	# 616
	lw		x11, 0(x11)	# 616
	fadd	f1, f0, f0	# 254
	addi	x12, x26, 592	# 247
	mul		x13, x30, x9	# 247
	add		x12, x12, x13	# 247
	fsw		f1, 0(x12)	# 247
	addi	x12, x26, 592	# 248
	mul		x13, x30, x10	# 248
	add		x12, x12, x13	# 248
	fsw		f1, 0(x12)	# 248
	addi	x12, x26, 592	# 249
	mul		x8, x30, x8	# 249
	add		x8, x12, x8	# 249
	fsw		f1, 0(x8)	# 249
	lw		x8, 28(x4)	# 628
	lw		x12, 4(x4)	# 569
	addi	x13, x26, 716	# 2179
	mul		x11, x30, x11	# 2179
	add		x11, x13, x11	# 2179
	lw		x11, 0(x11)	# 2179
	mul		x13, x30, x5	# 2180
	add		x8, x8, x13	# 2180
	lw		x8, 0(x8)	# 2180
	mul		x13, x30, x5	# 2181
	add		x12, x12, x13	# 2181
	lw		x12, 0(x12)	# 2181
	addi	x13, x0, 0	# 259
	addi	x14, x0, 0	# 259
	mul		x14, x30, x14	# 259
	add		x14, x12, x14	# 259
	flw		f1, 0(x14)	# 259
	addi	x14, x26, 648	# 259
	mul		x13, x30, x13	# 259
	add		x13, x14, x13	# 259
	fsw		f1, 0(x13)	# 259
	addi	x13, x0, 1	# 260
	addi	x14, x0, 1	# 260
	mul		x14, x30, x14	# 260
	add		x14, x12, x14	# 260
	flw		f1, 0(x14)	# 260
	addi	x14, x26, 648	# 260
	mul		x13, x30, x13	# 260
	add		x13, x14, x13	# 260
	fsw		f1, 0(x13)	# 260
	addi	x13, x0, 2	# 261
	mul		x14, x30, x13	# 261
	add		x14, x12, x14	# 261
	flw		f1, 0(x14)	# 261
	addi	x14, x26, 648	# 261
	mul		x13, x30, x13	# 261
	add		x13, x14, x13	# 261
	fsw		f1, 0(x13)	# 261
	addi	x13, x26, 0	# 1315
	mul		x9, x30, x9	# 1315
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
	addi	x29, x6, 0
	sw		x1, -32(x2)	# 1315
	addi	x2, x2, -36	# 1315
	lw		x31, 0(x29)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 36	# 1315
	lw		x1, -32(x2)	# 1315
	addi	x7, x0, 118	# 1964
	lw		x4, -24(x2)	# 1964
	lw		x5, -20(x2)	# 1964
	lw		x6, -16(x2)	# 1964
	lw		x29, -28(x2)	# 1964
	sw		x1, -32(x2)	# 1964
	addi	x2, x2, -36	# 1964
	lw		x31, 0(x29)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 36	# 1964
	lw		x1, -32(x2)	# 1964
	lw		x4, -12(x2)	# 598
	lw		x5, 20(x4)	# 598
	lw		x6, -8(x2)	# 2183
	mul		x7, x30, x6	# 2183
	add		x5, x5, x7	# 2183
	lw		x5, 0(x5)	# 2183
	addi	x7, x0, 0	# 259
	addi	x8, x0, 0	# 259
	addi	x9, x26, 592	# 259
	mul		x8, x30, x8	# 259
	add		x8, x9, x8	# 259
	flw		f1, 0(x8)	# 259
	mul		x7, x30, x7	# 259
	add		x7, x5, x7	# 259
	fsw		f1, 0(x7)	# 259
	addi	x7, x0, 1	# 260
	addi	x8, x0, 1	# 260
	addi	x9, x26, 592	# 260
	mul		x8, x30, x8	# 260
	add		x8, x9, x8	# 260
	flw		f1, 0(x8)	# 260
	mul		x7, x30, x7	# 260
	add		x7, x5, x7	# 260
	fsw		f1, 0(x7)	# 260
	addi	x7, x0, 2	# 261
	addi	x8, x26, 592	# 261
	mul		x9, x30, x7	# 261
	add		x8, x8, x9	# 261
	flw		f1, 0(x8)	# 261
	mul		x7, x30, x7	# 261
	add		x5, x5, x7	# 261
	fsw		f1, 0(x5)	# 261
beq_cont.25118:
	lw		x5, -4(x2)	# 2185
	lw		x6, -8(x2)	# 2185
	add		x5, x6, x5	# 2185
	lw		x29, 0(x2)	# 2185
	lw		x31, 0(x29)	# 2185
	jalr	x0, x31, 0	# 2185
pretrace_pixels.2936.13063:
	lw		x7, 28(x29)	# 2193
	lw		x8, 24(x29)	# 2193
	lw		x9, 20(x29)	# 2193
	lw		x10, 16(x29)	# 2193
	lw		x11, 12(x29)	# 2193
	lw		x12, 8(x29)	# 2193
	flw		f4, 4(x29)	# 2193
	ble		x11, x5, ble.25119	# 2193
	jalr	x0, x1, 0	# 2213
ble.25119:
	addi	x13, x26, 632	# 2195
	mul		x14, x30, x11	# 2195
	add		x13, x13, x14	# 2195
	flw		f5, 0(x13)	# 2195
	addi	x13, x26, 624	# 2195
	mul		x14, x30, x11	# 2195
	add		x13, x13, x14	# 2195
	lw		x13, 0(x13)	# 2195
	sub		x13, x5, x13	# 2195
	sw		x29, 0(x2)	# 2195
	sw		x9, -4(x2)	# 2195
	sw		x8, -8(x2)	# 2195
	sw		x6, -12(x2)	# 2195
	sw		x7, -16(x2)	# 2195
	sw		x4, -20(x2)	# 2195
	sw		x5, -24(x2)	# 2195
	fsw		f4, -28(x2)	# 2195
	fsw		f3, -32(x2)	# 2195
	sw		x10, -36(x2)	# 2195
	fsw		f2, -40(x2)	# 2195
	sw		x12, -44(x2)	# 2195
	fsw		f1, -48(x2)	# 2195
	sw		x11, -52(x2)	# 2195
	fsw		f5, -56(x2)	# 2195
	addi	x4, x13, 0
	sw		x1, -60(x2)	# 2195
	addi	x2, x2, -64	# 2195
	jal		x1, float_of_int.2489.12785	# 2195
	addi	x2, x2, 64	# 2195
	lw		x1, -60(x2)	# 2195
	flw		f2, -56(x2)	# 2195
	fmul	f1, f2, f1	# 2195
	addi	x4, x26, 660	# 2196
	lw		x5, -52(x2)	# 2196
	mul		x6, x30, x5	# 2196
	add		x4, x4, x6	# 2196
	flw		f2, 0(x4)	# 2196
	fmul	f2, f1, f2	# 2196
	flw		f3, -48(x2)	# 2196
	fadd	f2, f2, f3	# 2196
	addi	x4, x26, 696	# 2196
	mul		x6, x30, x5	# 2196
	add		x4, x4, x6	# 2196
	fsw		f2, 0(x4)	# 2196
	addi	x4, x26, 660	# 2197
	lw		x6, -44(x2)	# 2197
	mul		x7, x30, x6	# 2197
	add		x4, x4, x7	# 2197
	flw		f2, 0(x4)	# 2197
	fmul	f2, f1, f2	# 2197
	flw		f4, -40(x2)	# 2197
	fadd	f2, f2, f4	# 2197
	addi	x4, x26, 696	# 2197
	mul		x7, x30, x6	# 2197
	add		x4, x4, x7	# 2197
	fsw		f2, 0(x4)	# 2197
	addi	x4, x26, 660	# 2198
	lw		x7, -36(x2)	# 2198
	mul		x8, x30, x7	# 2198
	add		x4, x4, x8	# 2198
	flw		f2, 0(x4)	# 2198
	fmul	f1, f1, f2	# 2198
	flw		f2, -32(x2)	# 2198
	fadd	f1, f1, f2	# 2198
	addi	x4, x26, 696	# 2198
	mul		x8, x30, x7	# 2198
	add		x4, x4, x8	# 2198
	fsw		f1, 0(x4)	# 2198
	addi	x4, x26, 696	# 283
	mul		x8, x30, x5	# 283
	add		x4, x4, x8	# 283
	flw		f1, 0(x4)	# 283
	fmul	f1, f1, f1	# 8
	addi	x4, x26, 696	# 283
	mul		x8, x30, x6	# 283
	add		x4, x4, x8	# 283
	flw		f5, 0(x4)	# 283
	fmul	f5, f5, f5	# 8
	fadd	f1, f1, f5	# 283
	addi	x4, x26, 696	# 283
	mul		x8, x30, x7	# 283
	add		x4, x4, x8	# 283
	flw		f5, 0(x4)	# 283
	fmul	f5, f5, f5	# 8
	fadd	f1, f1, f5	# 283
	fsqrt	f1, f1	# 283
	flw		f5, -28(x2)	# 1
	feq		x31, f1, f5	# 1
	beq		x31, x0, feq_else.25122	# 1
	fadd	f1, f0, f16	# 284
	jal		x0, feq_cont.25121	# 1
feq_else.25122:
	fadd	f6, f0, f16	# 284
	fdiv	f1, f6, f1	# 284
feq_cont.25121:
	addi	x4, x26, 696	# 285
	mul		x8, x30, x5	# 285
	add		x4, x4, x8	# 285
	flw		f6, 0(x4)	# 285
	fmul	f6, f6, f1	# 285
	addi	x4, x26, 696	# 285
	mul		x8, x30, x5	# 285
	add		x4, x4, x8	# 285
	fsw		f6, 0(x4)	# 285
	addi	x4, x26, 696	# 286
	mul		x8, x30, x6	# 286
	add		x4, x4, x8	# 286
	flw		f6, 0(x4)	# 286
	fmul	f6, f6, f1	# 286
	addi	x4, x26, 696	# 286
	mul		x8, x30, x6	# 286
	add		x4, x4, x8	# 286
	fsw		f6, 0(x4)	# 286
	addi	x4, x26, 696	# 287
	mul		x8, x30, x7	# 287
	add		x4, x4, x8	# 287
	flw		f6, 0(x4)	# 287
	fmul	f1, f6, f1	# 287
	addi	x4, x26, 696	# 287
	mul		x8, x30, x7	# 287
	add		x4, x4, x8	# 287
	fsw		f1, 0(x4)	# 287
	addi	x4, x26, 604	# 247
	mul		x8, x30, x5	# 247
	add		x4, x4, x8	# 247
	fsw		f5, 0(x4)	# 247
	addi	x4, x26, 604	# 248
	mul		x8, x30, x6	# 248
	add		x4, x4, x8	# 248
	fsw		f5, 0(x4)	# 248
	addi	x4, x26, 604	# 249
	mul		x8, x30, x7	# 249
	add		x4, x4, x8	# 249
	fsw		f5, 0(x4)	# 249
	addi	x4, x26, 300	# 259
	mul		x8, x30, x5	# 259
	add		x4, x4, x8	# 259
	flw		f1, 0(x4)	# 259
	addi	x4, x26, 636	# 259
	mul		x8, x30, x5	# 259
	add		x4, x4, x8	# 259
	fsw		f1, 0(x4)	# 259
	addi	x4, x26, 300	# 260
	mul		x8, x30, x6	# 260
	add		x4, x4, x8	# 260
	flw		f1, 0(x4)	# 260
	addi	x4, x26, 636	# 260
	mul		x8, x30, x6	# 260
	add		x4, x4, x8	# 260
	fsw		f1, 0(x4)	# 260
	addi	x4, x26, 300	# 261
	mul		x8, x30, x7	# 261
	add		x4, x4, x8	# 261
	flw		f1, 0(x4)	# 261
	addi	x4, x26, 636	# 261
	mul		x8, x30, x7	# 261
	add		x4, x4, x8	# 261
	fsw		f1, 0(x4)	# 261
	fadd	f1, f0, f16	# 2204
	lw		x4, -24(x2)	# 2204
	mul		x8, x30, x4	# 2204
	lw		x9, -20(x2)	# 2204
	add		x8, x9, x8	# 2204
	lw		x8, 0(x8)	# 2204
	addi	x10, x26, 696	# 2204
	lw		x29, -16(x2)	# 2204
	addi	x6, x8, 0
	addi	x4, x5, 0
	addi	x5, x10, 0
	fadd	f2, f0, f5
	sw		x1, -60(x2)	# 2204
	addi	x2, x2, -64	# 2204
	lw		x31, 0(x29)	# 2204
	jalr	x1, x31, 0	# 2204
	addi	x2, x2, 64	# 2204
	lw		x1, -60(x2)	# 2204
	lw		x4, -24(x2)	# 2205
	mul		x5, x30, x4	# 2205
	lw		x6, -20(x2)	# 2205
	add		x5, x6, x5	# 2205
	lw		x5, 0(x5)	# 2205
	lw		x5, 0(x5)	# 562
	addi	x7, x26, 604	# 259
	lw		x8, -52(x2)	# 259
	mul		x9, x30, x8	# 259
	add		x7, x7, x9	# 259
	flw		f1, 0(x7)	# 259
	mul		x7, x30, x8	# 259
	add		x7, x5, x7	# 259
	fsw		f1, 0(x7)	# 259
	addi	x7, x26, 604	# 260
	lw		x9, -44(x2)	# 260
	mul		x10, x30, x9	# 260
	add		x7, x7, x10	# 260
	flw		f1, 0(x7)	# 260
	mul		x7, x30, x9	# 260
	add		x7, x5, x7	# 260
	fsw		f1, 0(x7)	# 260
	addi	x7, x26, 604	# 261
	lw		x10, -36(x2)	# 261
	mul		x11, x30, x10	# 261
	add		x7, x7, x11	# 261
	flw		f1, 0(x7)	# 261
	mul		x7, x30, x10	# 261
	add		x5, x5, x7	# 261
	fsw		f1, 0(x5)	# 261
	mul		x5, x30, x4	# 2206
	add		x5, x6, x5	# 2206
	lw		x5, 0(x5)	# 2206
	lw		x5, 24(x5)	# 621
	mul		x7, x30, x8	# 623
	add		x5, x5, x7	# 623
	lw		x7, -12(x2)	# 623
	sw		x7, 0(x5)	# 623
	mul		x5, x30, x4	# 2209
	add		x5, x6, x5	# 2209
	lw		x5, 0(x5)	# 2209
	lw		x29, -8(x2)	# 2209
	addi	x4, x5, 0
	addi	x5, x8, 0
	sw		x1, -60(x2)	# 2209
	addi	x2, x2, -64	# 2209
	lw		x31, 0(x29)	# 2209
	jalr	x1, x31, 0	# 2209
	addi	x2, x2, 64	# 2209
	lw		x1, -60(x2)	# 2209
	lw		x4, -44(x2)	# 2211
	lw		x5, -24(x2)	# 2211
	sub		x5, x5, x4	# 2211
	lw		x6, -12(x2)	# 224
	add		x4, x6, x4	# 224
	lw		x6, -4(x2)	# 225
	ble		x6, x4, ble.25124	# 225
	addi	x6, x4, 0	# 225
	jal		x0, ble_cont.25123	# 225
ble.25124:
	sub		x6, x4, x6	# 225
ble_cont.25123:
	flw		f1, -48(x2)	# 2211
	flw		f2, -40(x2)	# 2211
	flw		f3, -32(x2)	# 2211
	lw		x4, -20(x2)	# 2211
	lw		x29, 0(x2)	# 2211
	lw		x31, 0(x29)	# 2211
	jalr	x0, x31, 0	# 2211
scan_pixel.2947.13070:
	lw		x10, 24(x29)	# 2234
	lw		x11, 20(x29)	# 2234
	lw		x12, 16(x29)	# 2234
	lw		x13, 12(x29)	# 2234
	lw		x14, 8(x29)	# 2234
	lw		x15, 4(x29)	# 2234
	addi	x16, x26, 616	# 2234
	mul		x17, x30, x14	# 2234
	add		x16, x16, x17	# 2234
	lw		x16, 0(x16)	# 2234
	ble		x16, x4, ble.25125	# 2234
	mul		x16, x30, x4	# 2237
	add		x16, x7, x16	# 2237
	lw		x16, 0(x16)	# 2237
	lw		x16, 0(x16)	# 562
	mul		x17, x30, x14	# 259
	add		x17, x16, x17	# 259
	flw		f1, 0(x17)	# 259
	addi	x17, x26, 604	# 259
	mul		x18, x30, x14	# 259
	add		x17, x17, x18	# 259
	fsw		f1, 0(x17)	# 259
	mul		x17, x30, x15	# 260
	add		x17, x16, x17	# 260
	flw		f1, 0(x17)	# 260
	addi	x17, x26, 604	# 260
	mul		x18, x30, x15	# 260
	add		x17, x17, x18	# 260
	fsw		f1, 0(x17)	# 260
	mul		x17, x30, x12	# 261
	add		x16, x16, x17	# 261
	flw		f1, 0(x16)	# 261
	addi	x16, x26, 604	# 261
	mul		x12, x30, x12	# 261
	add		x12, x16, x12	# 261
	fsw		f1, 0(x12)	# 261
	addi	x12, x26, 616	# 2050
	mul		x16, x30, x15	# 2050
	add		x12, x12, x16	# 2050
	lw		x12, 0(x12)	# 2050
	add		x16, x5, x15	# 2050
	ble		x12, x16, ble.25127	# 2050
	ble		x5, x14, ble.25129	# 2051
	addi	x12, x26, 616	# 2052
	mul		x16, x30, x14	# 2052
	add		x12, x12, x16	# 2052
	lw		x12, 0(x12)	# 2052
	add		x16, x4, x15	# 2052
	ble		x12, x16, ble.25131	# 2052
	ble		x4, x14, ble.25133	# 2053
	addi	x12, x0, 1	# 2054
	jal		x0, ble_cont.25132	# 2053
ble.25133:
	addi	x12, x0, 0	# 2055
ble_cont.25132:
	jal		x0, ble_cont.25130	# 2052
ble.25131:
	addi	x12, x0, 0	# 2056
ble_cont.25130:
	jal		x0, ble_cont.25128	# 2051
ble.25129:
	addi	x12, x0, 0	# 2057
ble_cont.25128:
	jal		x0, ble_cont.25126	# 2050
ble.25127:
	addi	x12, x0, 0	# 2058
ble_cont.25126:
	sw		x8, 0(x2)	# 2240
	sw		x7, -4(x2)	# 2240
	sw		x6, -8(x2)	# 2240
	sw		x5, -12(x2)	# 2240
	sw		x29, -16(x2)	# 2240
	sw		x15, -20(x2)	# 2240
	sw		x4, -24(x2)	# 2240
	sw		x14, -28(x2)	# 2240
	sw		x13, -32(x2)	# 2240
	sw		x9, -36(x2)	# 2240
	beq		x12, x14, beq.25135	# 2240
	addi	x11, x0, 0	# 2241
	addi	x9, x11, 0
	addi	x29, x10, 0
	sw		x1, -40(x2)	# 2241
	addi	x2, x2, -44	# 2241
	lw		x31, 0(x29)	# 2241
	jalr	x1, x31, 0	# 2241
	addi	x2, x2, 44	# 2241
	lw		x1, -40(x2)	# 2241
	jal		x0, beq_cont.25134	# 2240
beq.25135:
	mul		x10, x30, x4	# 2243
	add		x10, x7, x10	# 2243
	lw		x10, 0(x10)	# 2243
	addi	x12, x0, 0	# 2243
	addi	x5, x12, 0
	addi	x4, x10, 0
	addi	x29, x11, 0
	sw		x1, -40(x2)	# 2243
	addi	x2, x2, -44	# 2243
	lw		x31, 0(x29)	# 2243
	jalr	x1, x31, 0	# 2243
	addi	x2, x2, 44	# 2243
	lw		x1, -40(x2)	# 2243
beq_cont.25134:
	lw		x4, -32(x2)	# 2140
	lw		x5, -36(x2)	# 2140
	beq		x5, x4, beq.25137	# 2140
	addi	x4, x0, 0	# 2148
	addi	x6, x26, 604	# 2148
	mul		x4, x30, x4	# 2148
	add		x4, x6, x4	# 2148
	flw		f1, 0(x4)	# 2148
	sw		x1, -40(x2)	# 2134
	addi	x2, x2, -44	# 2134
	jal		x1, int_of_float.2487.12783	# 2134
	addi	x2, x2, 44	# 2134
	lw		x1, -40(x2)	# 2134
	addi	x5, x0, 255	# 2135
	ble		x4, x5, ble.25139	# 2135
	addi	x4, x0, 255	# 2135
	jal		x0, ble_cont.25138	# 2135
ble.25139:
	lw		x5, -28(x2)	# 2135
	ble		x5, x4, ble_cont.25140	# 2135
	addi	x4, x0, 0	# 2135
ble_cont.25140:
ble_cont.25138:
	sw		x1, -40(x2)	# 2136
	addi	x2, x2, -44	# 2136
	jal		x1, min_caml_print_char	# 2136
	addi	x2, x2, 44	# 2136
	lw		x1, -40(x2)	# 2136
	addi	x4, x0, 1	# 2149
	addi	x5, x26, 604	# 2149
	mul		x4, x30, x4	# 2149
	add		x4, x5, x4	# 2149
	flw		f1, 0(x4)	# 2149
	sw		x1, -40(x2)	# 2134
	addi	x2, x2, -44	# 2134
	jal		x1, int_of_float.2487.12783	# 2134
	addi	x2, x2, 44	# 2134
	lw		x1, -40(x2)	# 2134
	addi	x5, x0, 255	# 2135
	ble		x4, x5, ble.25142	# 2135
	addi	x4, x0, 255	# 2135
	jal		x0, ble_cont.25141	# 2135
ble.25142:
	lw		x5, -28(x2)	# 2135
	ble		x5, x4, ble_cont.25143	# 2135
	addi	x4, x0, 0	# 2135
ble_cont.25143:
ble_cont.25141:
	sw		x1, -40(x2)	# 2136
	addi	x2, x2, -44	# 2136
	jal		x1, min_caml_print_char	# 2136
	addi	x2, x2, 44	# 2136
	lw		x1, -40(x2)	# 2136
	addi	x4, x0, 2	# 2150
	addi	x5, x26, 604	# 2150
	mul		x4, x30, x4	# 2150
	add		x4, x5, x4	# 2150
	flw		f1, 0(x4)	# 2150
	sw		x1, -40(x2)	# 2134
	addi	x2, x2, -44	# 2134
	jal		x1, int_of_float.2487.12783	# 2134
	addi	x2, x2, 44	# 2134
	lw		x1, -40(x2)	# 2134
	addi	x5, x0, 255	# 2135
	ble		x4, x5, ble.25145	# 2135
	addi	x4, x0, 255	# 2135
	jal		x0, ble_cont.25144	# 2135
ble.25145:
	lw		x5, -28(x2)	# 2135
	ble		x5, x4, ble_cont.25146	# 2135
	addi	x4, x0, 0	# 2135
ble_cont.25146:
ble_cont.25144:
	sw		x1, -40(x2)	# 2136
	addi	x2, x2, -44	# 2136
	jal		x1, min_caml_print_char	# 2136
	addi	x2, x2, 44	# 2136
	lw		x1, -40(x2)	# 2136
	jal		x0, beq_cont.25136	# 2140
beq.25137:
	addi	x4, x0, 0	# 2141
	addi	x6, x26, 604	# 2141
	mul		x4, x30, x4	# 2141
	add		x4, x6, x4	# 2141
	flw		f1, 0(x4)	# 2141
	sw		x1, -40(x2)	# 2128
	addi	x2, x2, -44	# 2128
	jal		x1, int_of_float.2487.12783	# 2128
	addi	x2, x2, 44	# 2128
	lw		x1, -40(x2)	# 2128
	addi	x5, x0, 255	# 2129
	ble		x4, x5, ble.25148	# 2129
	addi	x4, x0, 255	# 2129
	jal		x0, ble_cont.25147	# 2129
ble.25148:
	lw		x5, -28(x2)	# 2129
	ble		x5, x4, ble_cont.25149	# 2129
	addi	x4, x0, 0	# 2129
ble_cont.25149:
ble_cont.25147:
	sw		x1, -40(x2)	# 2130
	addi	x2, x2, -44	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 44	# 2130
	lw		x1, -40(x2)	# 2130
	addi	x4, x0, 32	# 2142
	sw		x1, -40(x2)	# 2142
	addi	x2, x2, -44	# 2142
	jal		x1, min_caml_print_char	# 2142
	addi	x2, x2, 44	# 2142
	lw		x1, -40(x2)	# 2142
	addi	x4, x0, 1	# 2143
	addi	x5, x26, 604	# 2143
	mul		x4, x30, x4	# 2143
	add		x4, x5, x4	# 2143
	flw		f1, 0(x4)	# 2143
	sw		x1, -40(x2)	# 2128
	addi	x2, x2, -44	# 2128
	jal		x1, int_of_float.2487.12783	# 2128
	addi	x2, x2, 44	# 2128
	lw		x1, -40(x2)	# 2128
	addi	x5, x0, 255	# 2129
	ble		x4, x5, ble.25151	# 2129
	addi	x4, x0, 255	# 2129
	jal		x0, ble_cont.25150	# 2129
ble.25151:
	lw		x5, -28(x2)	# 2129
	ble		x5, x4, ble_cont.25152	# 2129
	addi	x4, x0, 0	# 2129
ble_cont.25152:
ble_cont.25150:
	sw		x1, -40(x2)	# 2130
	addi	x2, x2, -44	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 44	# 2130
	lw		x1, -40(x2)	# 2130
	addi	x4, x0, 32	# 2144
	sw		x1, -40(x2)	# 2144
	addi	x2, x2, -44	# 2144
	jal		x1, min_caml_print_char	# 2144
	addi	x2, x2, 44	# 2144
	lw		x1, -40(x2)	# 2144
	addi	x4, x0, 2	# 2145
	addi	x5, x26, 604	# 2145
	mul		x4, x30, x4	# 2145
	add		x4, x5, x4	# 2145
	flw		f1, 0(x4)	# 2145
	sw		x1, -40(x2)	# 2128
	addi	x2, x2, -44	# 2128
	jal		x1, int_of_float.2487.12783	# 2128
	addi	x2, x2, 44	# 2128
	lw		x1, -40(x2)	# 2128
	addi	x5, x0, 255	# 2129
	ble		x4, x5, ble.25154	# 2129
	addi	x4, x0, 255	# 2129
	jal		x0, ble_cont.25153	# 2129
ble.25154:
	lw		x5, -28(x2)	# 2129
	ble		x5, x4, ble_cont.25155	# 2129
	addi	x4, x0, 0	# 2129
ble_cont.25155:
ble_cont.25153:
	sw		x1, -40(x2)	# 2130
	addi	x2, x2, -44	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 44	# 2130
	lw		x1, -40(x2)	# 2130
	addi	x4, x0, 10	# 2146
	sw		x1, -40(x2)	# 2146
	addi	x2, x2, -44	# 2146
	jal		x1, min_caml_print_char	# 2146
	addi	x2, x2, 44	# 2146
	lw		x1, -40(x2)	# 2146
beq_cont.25136:
	lw		x4, -20(x2)	# 2248
	lw		x5, -24(x2)	# 2248
	add		x4, x5, x4	# 2248
	lw		x5, -12(x2)	# 2248
	lw		x6, -8(x2)	# 2248
	lw		x7, -4(x2)	# 2248
	lw		x8, 0(x2)	# 2248
	lw		x9, -36(x2)	# 2248
	lw		x29, -16(x2)	# 2248
	lw		x31, 0(x29)	# 2248
	jalr	x0, x31, 0	# 2248
ble.25125:
	jalr	x0, x1, 0	# 2249
scan_line.2954.13077:
	lw		x10, 24(x29)	# 2255
	lw		x11, 20(x29)	# 2255
	lw		x12, 16(x29)	# 2255
	lw		x13, 12(x29)	# 2255
	lw		x14, 8(x29)	# 2255
	lw		x15, 4(x29)	# 2255
	addi	x16, x26, 616	# 2255
	mul		x17, x30, x15	# 2255
	add		x16, x16, x17	# 2255
	lw		x16, 0(x16)	# 2255
	ble		x16, x4, ble.25157	# 2255
	sub		x16, x16, x15	# 2257
	sw		x29, 0(x2)	# 2257
	sw		x12, -4(x2)	# 2257
	sw		x13, -8(x2)	# 2257
	sw		x8, -12(x2)	# 2257
	sw		x15, -16(x2)	# 2257
	sw		x9, -20(x2)	# 2257
	sw		x7, -24(x2)	# 2257
	sw		x6, -28(x2)	# 2257
	sw		x5, -32(x2)	# 2257
	sw		x4, -36(x2)	# 2257
	sw		x14, -40(x2)	# 2257
	sw		x10, -44(x2)	# 2257
	ble		x16, x4, ble_cont.25158	# 2257
	addi	x16, x4, 1	# 2258
	addi	x17, x0, 0	# 2218
	addi	x18, x26, 632	# 2218
	mul		x17, x30, x17	# 2218
	add		x17, x18, x17	# 2218
	flw		f1, 0(x17)	# 2218
	addi	x17, x0, 1	# 2218
	addi	x18, x26, 624	# 2218
	mul		x17, x30, x17	# 2218
	add		x17, x18, x17	# 2218
	lw		x17, 0(x17)	# 2218
	sub		x16, x16, x17	# 2218
	sw		x11, -48(x2)	# 2218
	fsw		f1, -52(x2)	# 2218
	addi	x4, x16, 0
	sw		x1, -56(x2)	# 2218
	addi	x2, x2, -60	# 2218
	jal		x1, float_of_int.2489.12785	# 2218
	addi	x2, x2, 60	# 2218
	lw		x1, -56(x2)	# 2218
	flw		f2, -52(x2)	# 2218
	fmul	f1, f2, f1	# 2218
	addi	x4, x0, 0	# 2221
	addi	x5, x26, 672	# 2221
	mul		x4, x30, x4	# 2221
	add		x4, x5, x4	# 2221
	flw		f2, 0(x4)	# 2221
	fmul	f2, f1, f2	# 2221
	addi	x4, x0, 0	# 2221
	addi	x5, x26, 684	# 2221
	mul		x4, x30, x4	# 2221
	add		x4, x5, x4	# 2221
	flw		f3, 0(x4)	# 2221
	fadd	f2, f2, f3	# 2221
	addi	x4, x0, 1	# 2222
	addi	x5, x26, 672	# 2222
	mul		x4, x30, x4	# 2222
	add		x4, x5, x4	# 2222
	flw		f3, 0(x4)	# 2222
	fmul	f3, f1, f3	# 2222
	addi	x4, x0, 1	# 2222
	addi	x5, x26, 684	# 2222
	mul		x4, x30, x4	# 2222
	add		x4, x5, x4	# 2222
	flw		f4, 0(x4)	# 2222
	fadd	f3, f3, f4	# 2222
	addi	x4, x0, 2	# 2223
	addi	x5, x26, 672	# 2223
	mul		x4, x30, x4	# 2223
	add		x4, x5, x4	# 2223
	flw		f4, 0(x4)	# 2223
	fmul	f1, f1, f4	# 2223
	addi	x4, x0, 2	# 2223
	addi	x5, x26, 684	# 2223
	mul		x4, x30, x4	# 2223
	add		x4, x5, x4	# 2223
	flw		f4, 0(x4)	# 2223
	fadd	f1, f1, f4	# 2223
	addi	x4, x0, 0	# 2224
	addi	x5, x26, 616	# 2224
	mul		x4, x30, x4	# 2224
	add		x4, x5, x4	# 2224
	lw		x4, 0(x4)	# 2224
	addi	x5, x0, 1	# 2224
	sub		x5, x4, x5	# 2224
	lw		x4, -24(x2)	# 2224
	lw		x6, -12(x2)	# 2224
	lw		x29, -48(x2)	# 2224
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -56(x2)	# 2224
	addi	x2, x2, -60	# 2224
	lw		x31, 0(x29)	# 2224
	jalr	x1, x31, 0	# 2224
	addi	x2, x2, 60	# 2224
	lw		x1, -56(x2)	# 2224
ble_cont.25158:
	lw		x4, -40(x2)	# 2260
	lw		x5, -36(x2)	# 2260
	lw		x6, -32(x2)	# 2260
	lw		x7, -28(x2)	# 2260
	lw		x8, -24(x2)	# 2260
	lw		x9, -20(x2)	# 2260
	lw		x29, -44(x2)	# 2260
	sw		x1, -56(x2)	# 2260
	addi	x2, x2, -60	# 2260
	lw		x31, 0(x29)	# 2260
	jalr	x1, x31, 0	# 2260
	addi	x2, x2, 60	# 2260
	lw		x1, -56(x2)	# 2260
	lw		x4, -16(x2)	# 2261
	lw		x5, -36(x2)	# 2261
	add		x4, x5, x4	# 2261
	lw		x5, -8(x2)	# 224
	lw		x6, -12(x2)	# 224
	add		x5, x6, x5	# 224
	lw		x6, -4(x2)	# 225
	ble		x6, x5, ble.25160	# 225
	addi	x8, x5, 0	# 225
	jal		x0, ble_cont.25159	# 225
ble.25160:
	sub		x8, x5, x6	# 225
ble_cont.25159:
	lw		x5, -28(x2)	# 2261
	lw		x6, -24(x2)	# 2261
	lw		x7, -32(x2)	# 2261
	lw		x9, -20(x2)	# 2261
	lw		x29, 0(x2)	# 2261
	lw		x31, 0(x29)	# 2261
	jalr	x0, x31, 0	# 2261
ble.25157:
	jalr	x0, x1, 0	# 2262
create_pixel.2963.13084:
	lw		x4, 24(x29)	# 2284
	lw		x5, 20(x29)	# 2284
	lw		x6, 16(x29)	# 2284
	lw		x7, 12(x29)	# 2284
	lw		x8, 8(x29)	# 2284
	flw		f1, 4(x29)	# 2284
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
	lw		x5, -8(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -28(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -16(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -32(x2)	# 2275
	addi	x2, x2, -36	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 36	# 2275
	lw		x1, -32(x2)	# 2275
	lw		x5, -4(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -28(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -16(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -32(x2)	# 2276
	addi	x2, x2, -36	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 36	# 2276
	lw		x1, -32(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -28(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	addi	x4, x0, 4	# 2277
	flw		f1, -16(x2)	# 2277
	sw		x4, -32(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -36(x2)	# 2277
	addi	x2, x2, -40	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 40	# 2277
	lw		x1, -36(x2)	# 2277
	lw		x5, -32(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -28(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	lw		x4, -12(x2)	# 2286
	lw		x6, 0(x2)	# 2286
	addi	x5, x6, 0
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
	lw		x5, -8(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -44(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -16(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -48(x2)	# 2275
	addi	x2, x2, -52	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 52	# 2275
	lw		x1, -48(x2)	# 2275
	lw		x5, -4(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -44(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -16(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -48(x2)	# 2276
	addi	x2, x2, -52	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 52	# 2276
	lw		x1, -48(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -44(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -16(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 2277
	addi	x2, x2, -52	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 52	# 2277
	lw		x1, -48(x2)	# 2277
	lw		x5, -32(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -44(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
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
	lw		x5, -8(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -48(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -16(x2)	# 2275
	lw		x4, -20(x2)	# 2275
	sw		x1, -52(x2)	# 2275
	addi	x2, x2, -56	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 56	# 2275
	lw		x1, -52(x2)	# 2275
	lw		x5, -4(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -48(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -16(x2)	# 2276
	lw		x4, -20(x2)	# 2276
	sw		x1, -52(x2)	# 2276
	addi	x2, x2, -56	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 56	# 2276
	lw		x1, -52(x2)	# 2276
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -48(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -16(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 2277
	addi	x2, x2, -56	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 56	# 2277
	lw		x1, -52(x2)	# 2277
	lw		x5, -32(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -48(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	lw		x4, -8(x2)	# 2290
	lw		x6, 0(x2)	# 2290
	addi	x5, x6, 0
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
	lw		x5, -8(x2)	# 2274
	mul		x5, x30, x5	# 2274
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
	lw		x5, -4(x2)	# 2275
	mul		x5, x30, x5	# 2275
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
	lw		x5, -20(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -56(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -16(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 2277
	addi	x2, x2, -64	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 64	# 2277
	lw		x1, -60(x2)	# 2277
	lw		x5, -32(x2)	# 2277
	mul		x5, x30, x5	# 2277
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
init_line_elements.2965.13086:
	lw		x6, 24(x29)	# 2297
	lw		x7, 20(x29)	# 2297
	lw		x8, 16(x29)	# 2297
	lw		x9, 12(x29)	# 2297
	lw		x10, 8(x29)	# 2297
	flw		f1, 4(x29)	# 2297
	ble		x9, x5, ble.25162	# 2297
	jalr	x0, x1, 0	# 2301
ble.25162:
	sw		x29, 0(x2)	# 2284
	sw		x4, -4(x2)	# 2284
	sw		x5, -8(x2)	# 2284
	sw		x9, -12(x2)	# 2284
	sw		x7, -16(x2)	# 2284
	sw		x10, -20(x2)	# 2284
	sw		x6, -24(x2)	# 2284
	fsw		f1, -28(x2)	# 2284
	sw		x8, -32(x2)	# 2284
	addi	x4, x8, 0
	sw		x1, -36(x2)	# 2284
	addi	x2, x2, -40	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 40	# 2284
	lw		x1, -36(x2)	# 2284
	flw		f1, -28(x2)	# 2272
	lw		x5, -32(x2)	# 2272
	sw		x4, -36(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -40(x2)	# 2272
	addi	x2, x2, -44	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 44	# 2272
	lw		x1, -40(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -24(x2)	# 2273
	sw		x1, -40(x2)	# 2273
	addi	x2, x2, -44	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 44	# 2273
	lw		x1, -40(x2)	# 2273
	flw		f1, -28(x2)	# 2274
	lw		x5, -32(x2)	# 2274
	sw		x4, -40(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -44(x2)	# 2274
	addi	x2, x2, -48	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 48	# 2274
	lw		x1, -44(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -40(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -28(x2)	# 2275
	lw		x4, -32(x2)	# 2275
	sw		x1, -44(x2)	# 2275
	addi	x2, x2, -48	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 48	# 2275
	lw		x1, -44(x2)	# 2275
	lw		x5, -16(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -40(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -28(x2)	# 2276
	lw		x4, -32(x2)	# 2276
	sw		x1, -44(x2)	# 2276
	addi	x2, x2, -48	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 48	# 2276
	lw		x1, -44(x2)	# 2276
	lw		x5, -32(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -40(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	addi	x4, x0, 4	# 2277
	flw		f1, -28(x2)	# 2277
	sw		x4, -44(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 2277
	addi	x2, x2, -52	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 52	# 2277
	lw		x1, -48(x2)	# 2277
	lw		x5, -44(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -40(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	lw		x4, -24(x2)	# 2286
	lw		x6, -12(x2)	# 2286
	addi	x5, x6, 0
	sw		x1, -48(x2)	# 2286
	addi	x2, x2, -52	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 52	# 2286
	lw		x1, -48(x2)	# 2286
	lw		x5, -24(x2)	# 2287
	lw		x6, -12(x2)	# 2287
	sw		x4, -48(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -52(x2)	# 2287
	addi	x2, x2, -56	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 56	# 2287
	lw		x1, -52(x2)	# 2287
	flw		f1, -28(x2)	# 2272
	lw		x5, -32(x2)	# 2272
	sw		x4, -52(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -56(x2)	# 2272
	addi	x2, x2, -60	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 60	# 2272
	lw		x1, -56(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -24(x2)	# 2273
	sw		x1, -56(x2)	# 2273
	addi	x2, x2, -60	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 60	# 2273
	lw		x1, -56(x2)	# 2273
	flw		f1, -28(x2)	# 2274
	lw		x5, -32(x2)	# 2274
	sw		x4, -56(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 2274
	addi	x2, x2, -64	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 64	# 2274
	lw		x1, -60(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -56(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -28(x2)	# 2275
	lw		x4, -32(x2)	# 2275
	sw		x1, -60(x2)	# 2275
	addi	x2, x2, -64	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 64	# 2275
	lw		x1, -60(x2)	# 2275
	lw		x5, -16(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -56(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -28(x2)	# 2276
	lw		x4, -32(x2)	# 2276
	sw		x1, -60(x2)	# 2276
	addi	x2, x2, -64	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 64	# 2276
	lw		x1, -60(x2)	# 2276
	lw		x5, -32(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -56(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -28(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 2277
	addi	x2, x2, -64	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 64	# 2277
	lw		x1, -60(x2)	# 2277
	lw		x5, -44(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -56(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	flw		f1, -28(x2)	# 2272
	lw		x4, -32(x2)	# 2272
	sw		x1, -60(x2)	# 2272
	addi	x2, x2, -64	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 64	# 2272
	lw		x1, -60(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -24(x2)	# 2273
	sw		x1, -60(x2)	# 2273
	addi	x2, x2, -64	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 64	# 2273
	lw		x1, -60(x2)	# 2273
	flw		f1, -28(x2)	# 2274
	lw		x5, -32(x2)	# 2274
	sw		x4, -60(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 2274
	addi	x2, x2, -68	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 68	# 2274
	lw		x1, -64(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -60(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -28(x2)	# 2275
	lw		x4, -32(x2)	# 2275
	sw		x1, -64(x2)	# 2275
	addi	x2, x2, -68	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 68	# 2275
	lw		x1, -64(x2)	# 2275
	lw		x5, -16(x2)	# 2275
	mul		x6, x30, x5	# 2275
	lw		x7, -60(x2)	# 2275
	add		x6, x7, x6	# 2275
	sw		x4, 0(x6)	# 2275
	flw		f1, -28(x2)	# 2276
	lw		x4, -32(x2)	# 2276
	sw		x1, -64(x2)	# 2276
	addi	x2, x2, -68	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 68	# 2276
	lw		x1, -64(x2)	# 2276
	lw		x5, -32(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -60(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -28(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 2277
	addi	x2, x2, -68	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 68	# 2277
	lw		x1, -64(x2)	# 2277
	lw		x5, -44(x2)	# 2277
	mul		x6, x30, x5	# 2277
	lw		x7, -60(x2)	# 2277
	add		x6, x7, x6	# 2277
	sw		x4, 0(x6)	# 2277
	lw		x4, -20(x2)	# 2290
	lw		x6, -12(x2)	# 2290
	addi	x5, x6, 0
	sw		x1, -64(x2)	# 2290
	addi	x2, x2, -68	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 68	# 2290
	lw		x1, -64(x2)	# 2290
	flw		f1, -28(x2)	# 2272
	lw		x5, -32(x2)	# 2272
	sw		x4, -64(x2)	# 2272
	addi	x4, x5, 0
	sw		x1, -68(x2)	# 2272
	addi	x2, x2, -72	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 72	# 2272
	lw		x1, -68(x2)	# 2272
	addi	x5, x4, 0	# 2272
	lw		x4, -24(x2)	# 2273
	sw		x1, -68(x2)	# 2273
	addi	x2, x2, -72	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 72	# 2273
	lw		x1, -68(x2)	# 2273
	flw		f1, -28(x2)	# 2274
	lw		x5, -32(x2)	# 2274
	sw		x4, -68(x2)	# 2274
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 2274
	addi	x2, x2, -76	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 76	# 2274
	lw		x1, -72(x2)	# 2274
	lw		x5, -20(x2)	# 2274
	mul		x6, x30, x5	# 2274
	lw		x7, -68(x2)	# 2274
	add		x6, x7, x6	# 2274
	sw		x4, 0(x6)	# 2274
	flw		f1, -28(x2)	# 2275
	lw		x4, -32(x2)	# 2275
	sw		x1, -72(x2)	# 2275
	addi	x2, x2, -76	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 76	# 2275
	lw		x1, -72(x2)	# 2275
	lw		x5, -16(x2)	# 2275
	mul		x5, x30, x5	# 2275
	lw		x6, -68(x2)	# 2275
	add		x5, x6, x5	# 2275
	sw		x4, 0(x5)	# 2275
	flw		f1, -28(x2)	# 2276
	lw		x4, -32(x2)	# 2276
	sw		x1, -72(x2)	# 2276
	addi	x2, x2, -76	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 76	# 2276
	lw		x1, -72(x2)	# 2276
	lw		x5, -32(x2)	# 2276
	mul		x6, x30, x5	# 2276
	lw		x7, -68(x2)	# 2276
	add		x6, x7, x6	# 2276
	sw		x4, 0(x6)	# 2276
	flw		f1, -28(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 2277
	addi	x2, x2, -76	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 76	# 2277
	lw		x1, -72(x2)	# 2277
	lw		x5, -44(x2)	# 2277
	mul		x5, x30, x5	# 2277
	lw		x6, -68(x2)	# 2277
	add		x5, x6, x5	# 2277
	sw		x4, 0(x5)	# 2277
	addi	x4, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x6, 28(x4)	# 2292
	lw		x5, -64(x2)	# 2292
	sw		x5, 24(x4)	# 2292
	lw		x5, -60(x2)	# 2292
	sw		x5, 20(x4)	# 2292
	lw		x5, -56(x2)	# 2292
	sw		x5, 16(x4)	# 2292
	lw		x5, -52(x2)	# 2292
	sw		x5, 12(x4)	# 2292
	lw		x5, -48(x2)	# 2292
	sw		x5, 8(x4)	# 2292
	lw		x5, -40(x2)	# 2292
	sw		x5, 4(x4)	# 2292
	lw		x5, -36(x2)	# 2292
	sw		x5, 0(x4)	# 2292
	lw		x5, -8(x2)	# 2298
	mul		x6, x30, x5	# 2298
	lw		x7, -4(x2)	# 2298
	add		x6, x7, x6	# 2298
	sw		x4, 0(x6)	# 2298
	lw		x4, -20(x2)	# 2299
	sub		x5, x5, x4	# 2299
	lw		x29, 0(x2)	# 2299
	addi	x4, x7, 0
	lw		x31, 0(x29)	# 2299
	jalr	x0, x31, 0	# 2299
calc_dirvec.2975.13089:
	lw		x7, 28(x29)	# 2334
	lw		x8, 24(x29)	# 2334
	lw		x9, 20(x29)	# 2334
	lw		x10, 16(x29)	# 2334
	lw		x11, 12(x29)	# 2334
	lw		x12, 8(x29)	# 2334
	lw		x13, 4(x29)	# 2334
	ble		x10, x4, ble.25163	# 2334
	fmul	f1, f2, f2	# 2325
	fadd	f2, f0, f24	# 2325
	fadd	f1, f1, f2	# 2325
	fsqrt	f1, f1	# 2325
	fadd	f5, f0, f16	# 2326
	fdiv	f6, f5, f1	# 2326
	sw		x6, 0(x2)	# 2327
	sw		x5, -4(x2)	# 2327
	sw		x29, -8(x2)	# 2327
	fsw		f4, -12(x2)	# 2327
	sw		x9, -16(x2)	# 2327
	fsw		f5, -20(x2)	# 2327
	fsw		f2, -24(x2)	# 2327
	sw		x13, -28(x2)	# 2327
	sw		x4, -32(x2)	# 2327
	fsw		f1, -36(x2)	# 2327
	sw		x8, -40(x2)	# 2327
	sw		x7, -44(x2)	# 2327
	fsw		f3, -48(x2)	# 2327
	addi	x29, x9, 0
	fadd	f1, f0, f6
	sw		x1, -52(x2)	# 2327
	addi	x2, x2, -56	# 2327
	lw		x31, 0(x29)	# 2327
	jalr	x1, x31, 0	# 2327
	addi	x2, x2, 56	# 2327
	lw		x1, -52(x2)	# 2327
	flw		f2, -48(x2)	# 2328
	fmul	f1, f1, f2	# 2328
	lw		x29, -44(x2)	# 2320
	fsw		f1, -52(x2)	# 2320
	sw		x1, -56(x2)	# 2320
	addi	x2, x2, -60	# 2320
	lw		x31, 0(x29)	# 2320
	jalr	x1, x31, 0	# 2320
	addi	x2, x2, 60	# 2320
	lw		x1, -56(x2)	# 2320
	flw		f2, -52(x2)	# 2320
	lw		x29, -40(x2)	# 2320
	fsw		f1, -56(x2)	# 2320
	fadd	f1, f0, f2
	sw		x1, -60(x2)	# 2320
	addi	x2, x2, -64	# 2320
	lw		x31, 0(x29)	# 2320
	jalr	x1, x31, 0	# 2320
	addi	x2, x2, 64	# 2320
	lw		x1, -60(x2)	# 2320
	flw		f2, -56(x2)	# 2320
	fdiv	f1, f2, f1	# 2320
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
	lw		x29, -16(x2)	# 2327
	fsw		f1, -60(x2)	# 2327
	sw		x4, -64(x2)	# 2327
	fsw		f2, -68(x2)	# 2327
	fadd	f1, f0, f3
	sw		x1, -72(x2)	# 2327
	addi	x2, x2, -76	# 2327
	lw		x31, 0(x29)	# 2327
	jalr	x1, x31, 0	# 2327
	addi	x2, x2, 76	# 2327
	lw		x1, -72(x2)	# 2327
	flw		f2, -12(x2)	# 2328
	fmul	f1, f1, f2	# 2328
	lw		x29, -44(x2)	# 2320
	fsw		f1, -72(x2)	# 2320
	sw		x1, -76(x2)	# 2320
	addi	x2, x2, -80	# 2320
	lw		x31, 0(x29)	# 2320
	jalr	x1, x31, 0	# 2320
	addi	x2, x2, 80	# 2320
	lw		x1, -76(x2)	# 2320
	flw		f2, -72(x2)	# 2320
	lw		x29, -40(x2)	# 2320
	fsw		f1, -76(x2)	# 2320
	fadd	f1, f0, f2
	sw		x1, -80(x2)	# 2320
	addi	x2, x2, -84	# 2320
	lw		x31, 0(x29)	# 2320
	jalr	x1, x31, 0	# 2320
	addi	x2, x2, 84	# 2320
	lw		x1, -80(x2)	# 2320
	flw		f2, -76(x2)	# 2320
	fdiv	f1, f2, f1	# 2320
	flw		f2, -68(x2)	# 2329
	fmul	f2, f1, f2	# 2329
	flw		f1, -60(x2)	# 2350
	flw		f3, -48(x2)	# 2350
	flw		f4, -12(x2)	# 2350
	lw		x4, -64(x2)	# 2350
	lw		x5, -4(x2)	# 2350
	lw		x6, 0(x2)	# 2350
	lw		x29, -8(x2)	# 2350
	lw		x31, 0(x29)	# 2350
	jalr	x0, x31, 0	# 2350
ble.25163:
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
	mul		x5, x30, x5	# 2341
	add		x4, x4, x5	# 2341
	lw		x4, 0(x4)	# 2341
	mul		x5, x30, x6	# 2342
	add		x5, x4, x5	# 2342
	lw		x5, 0(x5)	# 2342
	lw		x5, 0(x5)	# 639
	mul		x7, x30, x12	# 240
	add		x7, x5, x7	# 240
	fsw		f1, 0(x7)	# 240
	mul		x7, x30, x13	# 241
	add		x7, x5, x7	# 241
	fsw		f2, 0(x7)	# 241
	mul		x7, x30, x11	# 242
	add		x5, x5, x7	# 242
	fsw		f3, 0(x5)	# 242
	addi	x5, x6, 40	# 2343
	mul		x5, x30, x5	# 2343
	add		x5, x4, x5	# 2343
	lw		x5, 0(x5)	# 2343
	lw		x5, 0(x5)	# 639
	fsub	f4, f0, f2	# 4
	mul		x7, x30, x12	# 240
	add		x7, x5, x7	# 240
	fsw		f1, 0(x7)	# 240
	mul		x7, x30, x13	# 241
	add		x7, x5, x7	# 241
	fsw		f3, 0(x7)	# 241
	mul		x7, x30, x11	# 242
	add		x5, x5, x7	# 242
	fsw		f4, 0(x5)	# 242
	addi	x5, x6, 80	# 2344
	mul		x5, x30, x5	# 2344
	add		x5, x4, x5	# 2344
	lw		x5, 0(x5)	# 2344
	lw		x5, 0(x5)	# 639
	fsub	f5, f0, f1	# 4
	mul		x7, x30, x12	# 240
	add		x7, x5, x7	# 240
	fsw		f3, 0(x7)	# 240
	mul		x7, x30, x13	# 241
	add		x7, x5, x7	# 241
	fsw		f5, 0(x7)	# 241
	mul		x7, x30, x11	# 242
	add		x5, x5, x7	# 242
	fsw		f4, 0(x5)	# 242
	add		x5, x6, x13	# 2345
	mul		x5, x30, x5	# 2345
	add		x5, x4, x5	# 2345
	lw		x5, 0(x5)	# 2345
	lw		x5, 0(x5)	# 639
	fsub	f3, f0, f3	# 4
	mul		x7, x30, x12	# 240
	add		x7, x5, x7	# 240
	fsw		f5, 0(x7)	# 240
	mul		x7, x30, x13	# 241
	add		x7, x5, x7	# 241
	fsw		f4, 0(x7)	# 241
	mul		x7, x30, x11	# 242
	add		x5, x5, x7	# 242
	fsw		f3, 0(x5)	# 242
	addi	x5, x6, 41	# 2346
	mul		x5, x30, x5	# 2346
	add		x5, x4, x5	# 2346
	lw		x5, 0(x5)	# 2346
	lw		x5, 0(x5)	# 639
	mul		x7, x30, x12	# 240
	add		x7, x5, x7	# 240
	fsw		f5, 0(x7)	# 240
	mul		x7, x30, x13	# 241
	add		x7, x5, x7	# 241
	fsw		f3, 0(x7)	# 241
	mul		x7, x30, x11	# 242
	add		x5, x5, x7	# 242
	fsw		f2, 0(x5)	# 242
	addi	x5, x6, 81	# 2347
	mul		x5, x30, x5	# 2347
	add		x4, x4, x5	# 2347
	lw		x4, 0(x4)	# 2347
	lw		x4, 0(x4)	# 639
	mul		x5, x30, x12	# 240
	add		x5, x4, x5	# 240
	fsw		f3, 0(x5)	# 240
	mul		x5, x30, x13	# 241
	add		x5, x4, x5	# 241
	fsw		f1, 0(x5)	# 241
	mul		x5, x30, x11	# 242
	add		x4, x4, x5	# 242
	fsw		f2, 0(x4)	# 242
	jalr	x0, x1, 0	# 242
calc_dirvecs.2983.13097:
	lw		x7, 24(x29)	# 2355
	lw		x8, 20(x29)	# 2355
	lw		x9, 16(x29)	# 2355
	lw		x10, 12(x29)	# 2355
	lw		x11, 8(x29)	# 2355
	flw		f2, 4(x29)	# 2355
	ble		x10, x4, ble.25165	# 2355
	jalr	x0, x1, 0	# 2364
ble.25165:
	sw		x29, 0(x2)	# 2357
	sw		x8, -4(x2)	# 2357
	sw		x11, -8(x2)	# 2357
	sw		x9, -12(x2)	# 2357
	sw		x4, -16(x2)	# 2357
	fsw		f1, -20(x2)	# 2357
	fsw		f2, -24(x2)	# 2357
	sw		x6, -28(x2)	# 2357
	sw		x5, -32(x2)	# 2357
	sw		x10, -36(x2)	# 2357
	sw		x7, -40(x2)	# 2357
	sw		x1, -44(x2)	# 2357
	addi	x2, x2, -48	# 2357
	jal		x1, float_of_int.2489.12785	# 2357
	addi	x2, x2, 48	# 2357
	lw		x1, -44(x2)	# 2357
	fadd	f2, f0, f25	# 2357
	fmul	f1, f1, f2	# 2357
	fadd	f3, f0, f28	# 2357
	fsub	f3, f1, f3	# 2357
	flw		f1, -24(x2)	# 2358
	flw		f4, -20(x2)	# 2358
	lw		x4, -36(x2)	# 2358
	lw		x5, -32(x2)	# 2358
	lw		x6, -28(x2)	# 2358
	lw		x29, -40(x2)	# 2358
	fsw		f2, -44(x2)	# 2358
	fadd	f2, f0, f1
	sw		x1, -48(x2)	# 2358
	addi	x2, x2, -52	# 2358
	lw		x31, 0(x29)	# 2358
	jalr	x1, x31, 0	# 2358
	addi	x2, x2, 52	# 2358
	lw		x1, -48(x2)	# 2358
	lw		x4, -16(x2)	# 2360
	sw		x1, -48(x2)	# 2360
	addi	x2, x2, -52	# 2360
	jal		x1, float_of_int.2489.12785	# 2360
	addi	x2, x2, 52	# 2360
	lw		x1, -48(x2)	# 2360
	flw		f2, -44(x2)	# 2360
	fmul	f1, f1, f2	# 2360
	fadd	f2, f0, f24	# 2360
	fadd	f3, f1, f2	# 2360
	lw		x4, -12(x2)	# 2361
	lw		x5, -28(x2)	# 2361
	add		x6, x5, x4	# 2361
	flw		f1, -24(x2)	# 2361
	flw		f4, -20(x2)	# 2361
	lw		x4, -36(x2)	# 2361
	lw		x7, -32(x2)	# 2361
	lw		x29, -40(x2)	# 2361
	addi	x5, x7, 0
	fadd	f2, f0, f1
	sw		x1, -48(x2)	# 2361
	addi	x2, x2, -52	# 2361
	lw		x31, 0(x29)	# 2361
	jalr	x1, x31, 0	# 2361
	addi	x2, x2, 52	# 2361
	lw		x1, -48(x2)	# 2361
	lw		x4, -8(x2)	# 2363
	lw		x5, -16(x2)	# 2363
	sub		x5, x5, x4	# 2363
	lw		x6, -32(x2)	# 224
	add		x4, x6, x4	# 224
	lw		x6, -4(x2)	# 225
	ble		x6, x4, ble.25168	# 225
	jal		x0, ble_cont.25167	# 225
ble.25168:
	sub		x4, x4, x6	# 225
ble_cont.25167:
	flw		f1, -20(x2)	# 2363
	lw		x6, -28(x2)	# 2363
	lw		x29, 0(x2)	# 2363
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	lw		x31, 0(x29)	# 2363
	jalr	x0, x31, 0	# 2363
calc_dirvec_rows.2988.13102:
	lw		x7, 20(x29)	# 2369
	lw		x8, 16(x29)	# 2369
	lw		x9, 12(x29)	# 2369
	lw		x10, 8(x29)	# 2369
	lw		x11, 4(x29)	# 2369
	ble		x10, x4, ble.25169	# 2369
	jalr	x0, x1, 0	# 2373
ble.25169:
	sw		x29, 0(x2)	# 2370
	sw		x8, -4(x2)	# 2370
	sw		x9, -8(x2)	# 2370
	sw		x11, -12(x2)	# 2370
	sw		x4, -16(x2)	# 2370
	sw		x6, -20(x2)	# 2370
	sw		x5, -24(x2)	# 2370
	sw		x7, -28(x2)	# 2370
	sw		x1, -32(x2)	# 2370
	addi	x2, x2, -36	# 2370
	jal		x1, float_of_int.2489.12785	# 2370
	addi	x2, x2, 36	# 2370
	lw		x1, -32(x2)	# 2370
	fadd	f2, f0, f25	# 2370
	fmul	f1, f1, f2	# 2370
	fadd	f2, f0, f28	# 2370
	fsub	f1, f1, f2	# 2370
	addi	x4, x0, 4	# 2371
	lw		x5, -24(x2)	# 2371
	lw		x6, -20(x2)	# 2371
	lw		x29, -28(x2)	# 2371
	sw		x1, -32(x2)	# 2371
	addi	x2, x2, -36	# 2371
	lw		x31, 0(x29)	# 2371
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
	ble		x6, x5, ble.25172	# 225
	jal		x0, ble_cont.25171	# 225
ble.25172:
	sub		x5, x5, x6	# 225
ble_cont.25171:
	lw		x6, -20(x2)	# 2372
	addi	x6, x6, 4	# 2372
	lw		x29, 0(x2)	# 2372
	lw		x31, 0(x29)	# 2372
	jalr	x0, x31, 0	# 2372
create_dirvec_elements.2994.13106:
	lw		x6, 16(x29)	# 2388
	lw		x7, 12(x29)	# 2388
	lw		x8, 8(x29)	# 2388
	flw		f1, 4(x29)	# 2388
	ble		x7, x5, ble.25173	# 2388
	jalr	x0, x1, 0	# 2391
ble.25173:
	sw		x29, 0(x2)	# 2382
	sw		x8, -4(x2)	# 2382
	sw		x4, -8(x2)	# 2382
	sw		x5, -12(x2)	# 2382
	sw		x7, -16(x2)	# 2382
	addi	x4, x6, 0
	sw		x1, -20(x2)	# 2382
	addi	x2, x2, -24	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 24	# 2382
	lw		x1, -20(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	lw		x6, -16(x2)	# 2383
	mul		x6, x30, x6	# 2383
	add		x4, x4, x6	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -20(x2)	# 2383
	sw		x1, -24(x2)	# 2383
	addi	x2, x2, -28	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 28	# 2383
	lw		x1, -24(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -20(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	lw		x5, -12(x2)	# 2389
	mul		x6, x30, x5	# 2389
	lw		x7, -8(x2)	# 2389
	add		x6, x7, x6	# 2389
	sw		x4, 0(x6)	# 2389
	lw		x4, -4(x2)	# 2390
	sub		x5, x5, x4	# 2390
	lw		x29, 0(x2)	# 2390
	addi	x4, x7, 0
	lw		x31, 0(x29)	# 2390
	jalr	x0, x31, 0	# 2390
create_dirvecs.2997.13109:
	lw		x5, 20(x29)	# 2395
	lw		x6, 16(x29)	# 2395
	lw		x7, 12(x29)	# 2395
	lw		x8, 8(x29)	# 2395
	flw		f1, 4(x29)	# 2395
	ble		x7, x4, ble.25175	# 2395
	jalr	x0, x1, 0	# 2399
ble.25175:
	addi	x9, x0, 120	# 2396
	sw		x29, 0(x2)	# 2382
	sw		x8, -4(x2)	# 2382
	sw		x5, -8(x2)	# 2382
	sw		x4, -12(x2)	# 2382
	sw		x9, -16(x2)	# 2382
	sw		x7, -20(x2)	# 2382
	addi	x4, x6, 0
	sw		x1, -24(x2)	# 2382
	addi	x2, x2, -28	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 28	# 2382
	lw		x1, -24(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	lw		x6, -20(x2)	# 2383
	mul		x6, x30, x6	# 2383
	add		x4, x4, x6	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -24(x2)	# 2383
	sw		x1, -28(x2)	# 2383
	addi	x2, x2, -32	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 32	# 2383
	lw		x1, -28(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -24(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	lw		x4, -16(x2)	# 2396
	sw		x1, -28(x2)	# 2396
	addi	x2, x2, -32	# 2396
	jal		x1, min_caml_create_array	# 2396
	addi	x2, x2, 32	# 2396
	lw		x1, -28(x2)	# 2396
	addi	x5, x26, 716	# 2396
	lw		x6, -12(x2)	# 2396
	mul		x7, x30, x6	# 2396
	add		x5, x5, x7	# 2396
	sw		x4, 0(x5)	# 2396
	addi	x4, x26, 716	# 2397
	mul		x5, x30, x6	# 2397
	add		x4, x4, x5	# 2397
	lw		x4, 0(x4)	# 2397
	addi	x5, x0, 118	# 2397
	lw		x29, -8(x2)	# 2397
	sw		x1, -28(x2)	# 2397
	addi	x2, x2, -32	# 2397
	lw		x31, 0(x29)	# 2397
	jalr	x1, x31, 0	# 2397
	addi	x2, x2, 32	# 2397
	lw		x1, -28(x2)	# 2397
	lw		x4, -4(x2)	# 2398
	lw		x5, -12(x2)	# 2398
	sub		x4, x5, x4	# 2398
	lw		x29, 0(x2)	# 2398
	lw		x31, 0(x29)	# 2398
	jalr	x0, x31, 0	# 2398
init_dirvec_constants.2999.13111:
	lw		x6, 12(x29)	# 2407
	lw		x7, 8(x29)	# 2407
	lw		x8, 4(x29)	# 2407
	ble		x7, x5, ble.25177	# 2407
	jalr	x0, x1, 0	# 2410
ble.25177:
	mul		x9, x30, x5	# 2408
	add		x9, x4, x9	# 2408
	lw		x9, 0(x9)	# 2408
	addi	x10, x26, 0	# 1287
	mul		x7, x30, x7	# 1287
	add		x7, x10, x7	# 1287
	lw		x7, 0(x7)	# 1287
	sub		x7, x7, x8	# 1287
	sw		x4, 0(x2)	# 1287
	sw		x29, -4(x2)	# 1287
	sw		x8, -8(x2)	# 1287
	sw		x5, -12(x2)	# 1287
	addi	x5, x7, 0
	addi	x4, x9, 0
	addi	x29, x6, 0
	sw		x1, -16(x2)	# 1287
	addi	x2, x2, -20	# 1287
	lw		x31, 0(x29)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 20	# 1287
	lw		x1, -16(x2)	# 1287
	lw		x4, -8(x2)	# 2409
	lw		x5, -12(x2)	# 2409
	sub		x5, x5, x4	# 2409
	lw		x4, 0(x2)	# 2409
	lw		x29, -4(x2)	# 2409
	lw		x31, 0(x29)	# 2409
	jalr	x0, x31, 0	# 2409
init_vecset_constants.3002.13114:
	lw		x5, 12(x29)	# 2414
	lw		x6, 8(x29)	# 2414
	lw		x7, 4(x29)	# 2414
	ble		x6, x4, ble.25179	# 2414
	jalr	x0, x1, 0	# 2417
ble.25179:
	addi	x6, x26, 716	# 2415
	mul		x8, x30, x4	# 2415
	add		x6, x6, x8	# 2415
	lw		x6, 0(x6)	# 2415
	addi	x8, x0, 119	# 2415
	sw		x29, 0(x2)	# 2415
	sw		x7, -4(x2)	# 2415
	sw		x4, -8(x2)	# 2415
	addi	x4, x6, 0
	addi	x29, x5, 0
	addi	x5, x8, 0
	sw		x1, -12(x2)	# 2415
	addi	x2, x2, -16	# 2415
	lw		x31, 0(x29)	# 2415
	jalr	x1, x31, 0	# 2415
	addi	x2, x2, 16	# 2415
	lw		x1, -12(x2)	# 2415
	lw		x4, -4(x2)	# 2416
	lw		x5, -8(x2)	# 2416
	sub		x4, x5, x4	# 2416
	lw		x29, 0(x2)	# 2416
	lw		x31, 0(x29)	# 2416
	jalr	x0, x31, 0	# 2416
setup_rect_reflection.3013.13116:
	lw		x6, 24(x29)	# 2441
	lw		x7, 20(x29)	# 2441
	lw		x8, 16(x29)	# 2441
	lw		x9, 12(x29)	# 2441
	lw		x10, 8(x29)	# 2441
	flw		f1, 4(x29)	# 2441
	addi	x11, x0, 4	# 2441
	mul		x4, x4, x11	# 2441
	addi	x11, x26, 1736	# 2442
	mul		x12, x30, x9	# 2442
	add		x11, x11, x12	# 2442
	lw		x11, 0(x11)	# 2442
	fadd	f2, f0, f16	# 2443
	lw		x5, 28(x5)	# 461
	mul		x12, x30, x9	# 466
	add		x5, x5, x12	# 466
	flw		f3, 0(x5)	# 466
	fsub	f2, f2, f3	# 2443
	addi	x5, x26, 312	# 2444
	mul		x12, x30, x9	# 2444
	add		x5, x5, x12	# 2444
	flw		f3, 0(x5)	# 2444
	fsub	f4, f0, f3	# 4
	addi	x5, x26, 312	# 2445
	mul		x12, x30, x10	# 2445
	add		x5, x5, x12	# 2445
	flw		f5, 0(x5)	# 2445
	fsub	f5, f0, f5	# 4
	addi	x5, x26, 312	# 2446
	mul		x12, x30, x7	# 2446
	add		x5, x5, x12	# 2446
	flw		f6, 0(x5)	# 2446
	fsub	f6, f0, f6	# 4
	add		x5, x4, x10	# 2447
	fsw		f4, 0(x2)	# 2382
	fsw		f1, -4(x2)	# 2382
	sw		x8, -8(x2)	# 2382
	sw		x4, -12(x2)	# 2382
	sw		x11, -16(x2)	# 2382
	sw		x5, -20(x2)	# 2382
	fsw		f2, -24(x2)	# 2382
	sw		x6, -28(x2)	# 2382
	fsw		f6, -32(x2)	# 2382
	sw		x7, -36(x2)	# 2382
	fsw		f5, -40(x2)	# 2382
	sw		x10, -44(x2)	# 2382
	fsw		f3, -48(x2)	# 2382
	sw		x9, -52(x2)	# 2382
	addi	x4, x8, 0
	sw		x1, -56(x2)	# 2382
	addi	x2, x2, -60	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 60	# 2382
	lw		x1, -56(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	lw		x6, -52(x2)	# 2383
	mul		x7, x30, x6	# 2383
	add		x4, x4, x7	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -56(x2)	# 2383
	sw		x1, -60(x2)	# 2383
	addi	x2, x2, -64	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 64	# 2383
	lw		x1, -60(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -56(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	lw		x6, -52(x2)	# 240
	mul		x7, x30, x6	# 240
	add		x7, x4, x7	# 240
	flw		f1, -48(x2)	# 240
	fsw		f1, 0(x7)	# 240
	lw		x7, -44(x2)	# 241
	mul		x8, x30, x7	# 241
	add		x8, x4, x8	# 241
	flw		f1, -40(x2)	# 241
	fsw		f1, 0(x8)	# 241
	lw		x8, -36(x2)	# 242
	mul		x9, x30, x8	# 242
	add		x4, x4, x9	# 242
	flw		f2, -32(x2)	# 242
	fsw		f2, 0(x4)	# 242
	addi	x4, x26, 0	# 1287
	mul		x9, x30, x6	# 1287
	add		x4, x4, x9	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x4, x4, x7	# 1287
	lw		x29, -28(x2)	# 1287
	sw		x5, -60(x2)	# 1287
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -64(x2)	# 1287
	addi	x2, x2, -68	# 1287
	lw		x31, 0(x29)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 68	# 1287
	lw		x1, -64(x2)	# 1287
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f1, -24(x2)	# 2436
	fsw		f1, 8(x4)	# 2436
	lw		x5, -60(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -20(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	addi	x5, x26, 1016	# 2436
	lw		x6, -16(x2)	# 2436
	mul		x7, x30, x6	# 2436
	add		x5, x5, x7	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -44(x2)	# 2448
	add		x5, x6, x4	# 2448
	lw		x7, -36(x2)	# 2448
	lw		x8, -12(x2)	# 2448
	add		x9, x8, x7	# 2448
	addi	x10, x26, 312	# 2448
	mul		x11, x30, x4	# 2448
	add		x10, x10, x11	# 2448
	flw		f2, 0(x10)	# 2448
	flw		f3, -4(x2)	# 2382
	lw		x10, -8(x2)	# 2382
	sw		x5, -64(x2)	# 2382
	sw		x9, -68(x2)	# 2382
	fsw		f2, -72(x2)	# 2382
	addi	x4, x10, 0
	fadd	f1, f0, f3
	sw		x1, -76(x2)	# 2382
	addi	x2, x2, -80	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 80	# 2382
	lw		x1, -76(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	lw		x6, -52(x2)	# 2383
	mul		x7, x30, x6	# 2383
	add		x4, x4, x7	# 2383
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
	lw		x6, -52(x2)	# 240
	mul		x7, x30, x6	# 240
	add		x7, x4, x7	# 240
	flw		f1, 0(x2)	# 240
	fsw		f1, 0(x7)	# 240
	lw		x7, -44(x2)	# 241
	mul		x8, x30, x7	# 241
	add		x8, x4, x8	# 241
	flw		f2, -72(x2)	# 241
	fsw		f2, 0(x8)	# 241
	lw		x8, -36(x2)	# 242
	mul		x9, x30, x8	# 242
	add		x4, x4, x9	# 242
	flw		f2, -32(x2)	# 242
	fsw		f2, 0(x4)	# 242
	addi	x4, x26, 0	# 1287
	mul		x9, x30, x6	# 1287
	add		x4, x4, x9	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x4, x4, x7	# 1287
	lw		x29, -28(x2)	# 1287
	sw		x5, -80(x2)	# 1287
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -84(x2)	# 1287
	addi	x2, x2, -88	# 1287
	lw		x31, 0(x29)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 88	# 1287
	lw		x1, -84(x2)	# 1287
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f1, -24(x2)	# 2436
	fsw		f1, 8(x4)	# 2436
	lw		x5, -80(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -68(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	addi	x5, x26, 1016	# 2436
	lw		x6, -64(x2)	# 2436
	mul		x6, x30, x6	# 2436
	add		x5, x5, x6	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -36(x2)	# 2449
	lw		x5, -16(x2)	# 2449
	add		x6, x5, x4	# 2449
	lw		x7, -8(x2)	# 2449
	lw		x8, -12(x2)	# 2449
	add		x8, x8, x7	# 2449
	addi	x9, x26, 312	# 2449
	mul		x10, x30, x4	# 2449
	add		x9, x9, x10	# 2449
	flw		f2, 0(x9)	# 2449
	flw		f3, -4(x2)	# 2382
	sw		x6, -84(x2)	# 2382
	sw		x8, -88(x2)	# 2382
	fsw		f2, -92(x2)	# 2382
	addi	x4, x7, 0
	fadd	f1, f0, f3
	sw		x1, -96(x2)	# 2382
	addi	x2, x2, -100	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 100	# 2382
	lw		x1, -96(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	lw		x6, -52(x2)	# 2383
	mul		x7, x30, x6	# 2383
	add		x4, x4, x7	# 2383
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
	lw		x4, -96(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	lw		x6, -52(x2)	# 240
	mul		x7, x30, x6	# 240
	add		x7, x4, x7	# 240
	flw		f1, 0(x2)	# 240
	fsw		f1, 0(x7)	# 240
	lw		x7, -44(x2)	# 241
	mul		x8, x30, x7	# 241
	add		x8, x4, x8	# 241
	flw		f1, -40(x2)	# 241
	fsw		f1, 0(x8)	# 241
	lw		x8, -36(x2)	# 242
	mul		x8, x30, x8	# 242
	add		x4, x4, x8	# 242
	flw		f1, -92(x2)	# 242
	fsw		f1, 0(x4)	# 242
	addi	x4, x26, 0	# 1287
	mul		x8, x30, x6	# 1287
	add		x4, x4, x8	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x4, x4, x7	# 1287
	lw		x29, -28(x2)	# 1287
	sw		x5, -100(x2)	# 1287
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -104(x2)	# 1287
	addi	x2, x2, -108	# 1287
	lw		x31, 0(x29)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 108	# 1287
	lw		x1, -104(x2)	# 1287
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f1, -24(x2)	# 2436
	fsw		f1, 8(x4)	# 2436
	lw		x5, -100(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -88(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	addi	x5, x26, 1016	# 2436
	lw		x6, -84(x2)	# 2436
	mul		x6, x30, x6	# 2436
	add		x5, x5, x6	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -8(x2)	# 2450
	lw		x5, -16(x2)	# 2450
	add		x4, x5, x4	# 2450
	addi	x5, x26, 1736	# 2450
	lw		x6, -52(x2)	# 2450
	mul		x6, x30, x6	# 2450
	add		x5, x5, x6	# 2450
	sw		x4, 0(x5)	# 2450
	jalr	x0, x1, 0	# 2450
setup_surface_reflection.3016.13119:
	lw		x6, 24(x29)	# 2455
	lw		x7, 20(x29)	# 2455
	lw		x8, 16(x29)	# 2455
	lw		x9, 12(x29)	# 2455
	lw		x10, 8(x29)	# 2455
	flw		f1, 4(x29)	# 2455
	addi	x11, x0, 4	# 2455
	mul		x4, x4, x11	# 2455
	add		x4, x4, x10	# 2455
	addi	x11, x26, 1736	# 2456
	mul		x12, x30, x9	# 2456
	add		x11, x11, x12	# 2456
	lw		x11, 0(x11)	# 2456
	fadd	f2, f0, f16	# 2457
	lw		x12, 28(x5)	# 461
	mul		x13, x30, x9	# 466
	add		x12, x12, x13	# 466
	flw		f3, 0(x12)	# 466
	fsub	f2, f2, f3	# 2457
	lw		x12, 16(x5)	# 421
	addi	x13, x26, 312	# 292
	mul		x14, x30, x9	# 292
	add		x13, x13, x14	# 292
	flw		f3, 0(x13)	# 292
	mul		x13, x30, x9	# 292
	add		x13, x12, x13	# 292
	flw		f4, 0(x13)	# 292
	fmul	f4, f3, f4	# 292
	addi	x13, x26, 312	# 292
	mul		x14, x30, x10	# 292
	add		x13, x13, x14	# 292
	flw		f5, 0(x13)	# 292
	mul		x13, x30, x10	# 292
	add		x13, x12, x13	# 292
	flw		f6, 0(x13)	# 292
	fmul	f6, f5, f6	# 292
	fadd	f4, f4, f6	# 292
	addi	x13, x26, 312	# 292
	mul		x14, x30, x7	# 292
	add		x13, x13, x14	# 292
	flw		f6, 0(x13)	# 292
	mul		x13, x30, x7	# 292
	add		x12, x12, x13	# 292
	flw		f7, 0(x12)	# 292
	fmul	f7, f6, f7	# 292
	fadd	f4, f4, f7	# 292
	lui		x12, %hi(l.19514)	# 2461
	ori		x12, x0, %lo(l.19514)	# 2461
	flw		f7, 0(x12)	# 2461
	lw		x12, 16(x5)	# 391
	mul		x13, x30, x9	# 396
	add		x12, x12, x13	# 396
	flw		f8, 0(x12)	# 396
	fmul	f8, f7, f8	# 2461
	fmul	f8, f8, f4	# 2461
	fsub	f3, f8, f3	# 2461
	lw		x12, 16(x5)	# 401
	mul		x13, x30, x10	# 406
	add		x12, x12, x13	# 406
	flw		f8, 0(x12)	# 406
	fmul	f8, f7, f8	# 2462
	fmul	f8, f8, f4	# 2462
	fsub	f5, f8, f5	# 2462
	lw		x5, 16(x5)	# 411
	mul		x12, x30, x7	# 416
	add		x5, x5, x12	# 416
	flw		f8, 0(x5)	# 416
	fmul	f7, f7, f8	# 2463
	fmul	f4, f7, f4	# 2463
	fsub	f4, f4, f6	# 2463
	sw		x11, 0(x2)	# 2382
	sw		x4, -4(x2)	# 2382
	fsw		f2, -8(x2)	# 2382
	sw		x6, -12(x2)	# 2382
	fsw		f4, -16(x2)	# 2382
	sw		x7, -20(x2)	# 2382
	fsw		f5, -24(x2)	# 2382
	sw		x10, -28(x2)	# 2382
	fsw		f3, -32(x2)	# 2382
	sw		x9, -36(x2)	# 2382
	addi	x4, x8, 0
	sw		x1, -40(x2)	# 2382
	addi	x2, x2, -44	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 44	# 2382
	lw		x1, -40(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x26, 0	# 2383
	lw		x6, -36(x2)	# 2383
	mul		x7, x30, x6	# 2383
	add		x4, x4, x7	# 2383
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
	lw		x6, -36(x2)	# 240
	mul		x7, x30, x6	# 240
	add		x7, x4, x7	# 240
	flw		f1, -32(x2)	# 240
	fsw		f1, 0(x7)	# 240
	lw		x7, -28(x2)	# 241
	mul		x8, x30, x7	# 241
	add		x8, x4, x8	# 241
	flw		f1, -24(x2)	# 241
	fsw		f1, 0(x8)	# 241
	lw		x8, -20(x2)	# 242
	mul		x8, x30, x8	# 242
	add		x4, x4, x8	# 242
	flw		f1, -16(x2)	# 242
	fsw		f1, 0(x4)	# 242
	addi	x4, x26, 0	# 1287
	mul		x8, x30, x6	# 1287
	add		x4, x4, x8	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x4, x4, x7	# 1287
	lw		x29, -12(x2)	# 1287
	sw		x5, -44(x2)	# 1287
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -48(x2)	# 1287
	addi	x2, x2, -52	# 1287
	lw		x31, 0(x29)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 52	# 1287
	lw		x1, -48(x2)	# 1287
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f1, -8(x2)	# 2436
	fsw		f1, 8(x4)	# 2436
	lw		x5, -44(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -4(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	addi	x5, x26, 1016	# 2436
	lw		x6, 0(x2)	# 2436
	mul		x7, x30, x6	# 2436
	add		x5, x5, x7	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -28(x2)	# 2464
	add		x4, x6, x4	# 2464
	addi	x5, x26, 1736	# 2464
	lw		x6, -36(x2)	# 2464
	mul		x6, x30, x6	# 2464
	add		x5, x5, x6	# 2464
	sw		x4, 0(x5)	# 2464
	jalr	x0, x1, 0	# 2464
rt.3021.13122:
	lw		x7, 80(x29)	# 2492
	lw		x8, 76(x29)	# 2492
	lw		x9, 72(x29)	# 2492
	lw		x10, 68(x29)	# 2492
	lw		x11, 64(x29)	# 2492
	lw		x12, 60(x29)	# 2492
	lw		x13, 56(x29)	# 2492
	lw		x14, 52(x29)	# 2492
	lw		x15, 48(x29)	# 2492
	lw		x16, 44(x29)	# 2492
	lw		x17, 40(x29)	# 2492
	lw		x18, 36(x29)	# 2492
	lw		x19, 32(x29)	# 2492
	lw		x20, 28(x29)	# 2492
	lw		x21, 24(x29)	# 2492
	lw		x22, 20(x29)	# 2492
	lw		x23, 16(x29)	# 2492
	lw		x24, 12(x29)	# 2492
	lw		x25, 8(x29)	# 2492
	lw		x27, 4(x29)	# 2492
	addi	x29, x26, 616	# 2492
	mul		x31, x30, x25	# 2492
	add		x29, x29, x31	# 2492
	sw		x4, 0(x29)	# 2492
	addi	x29, x26, 616	# 2493
	mul		x31, x30, x27	# 2493
	add		x29, x29, x31	# 2493
	sw		x5, 0(x29)	# 2493
	div		x29, x4, x24	# 2494
	addi	x31, x26, 624	# 2494
	sw		x10, 0(x2)	# 2494
	mul		x10, x30, x25	# 2494
	add		x10, x31, x10	# 2494
	sw		x29, 0(x10)	# 2494
	div		x5, x5, x24	# 2495
	addi	x10, x26, 624	# 2495
	mul		x29, x30, x27	# 2495
	add		x10, x10, x29	# 2495
	sw		x5, 0(x10)	# 2495
	lui		x5, %hi(l.22503)	# 2496
	ori		x5, x0, %lo(l.22503)	# 2496
	flw		f1, 0(x5)	# 2496
	sw		x15, -4(x2)	# 2496
	sw		x8, -8(x2)	# 2496
	sw		x9, -12(x2)	# 2496
	sw		x16, -16(x2)	# 2496
	sw		x17, -20(x2)	# 2496
	sw		x18, -24(x2)	# 2496
	sw		x23, -28(x2)	# 2496
	sw		x21, -32(x2)	# 2496
	sw		x6, -36(x2)	# 2496
	sw		x12, -40(x2)	# 2496
	sw		x14, -44(x2)	# 2496
	sw		x13, -48(x2)	# 2496
	sw		x22, -52(x2)	# 2496
	sw		x27, -56(x2)	# 2496
	sw		x7, -60(x2)	# 2496
	sw		x11, -64(x2)	# 2496
	sw		x19, -68(x2)	# 2496
	sw		x24, -72(x2)	# 2496
	sw		x20, -76(x2)	# 2496
	sw		x25, -80(x2)	# 2496
	fsw		f1, -84(x2)	# 2496
	sw		x1, -88(x2)	# 2496
	addi	x2, x2, -92	# 2496
	jal		x1, float_of_int.2489.12785	# 2496
	addi	x2, x2, 92	# 2496
	lw		x1, -88(x2)	# 2496
	flw		f2, -84(x2)	# 2496
	fdiv	f1, f2, f1	# 2496
	addi	x4, x26, 632	# 2496
	lw		x5, -80(x2)	# 2496
	mul		x6, x30, x5	# 2496
	add		x4, x4, x6	# 2496
	fsw		f1, 0(x4)	# 2496
	addi	x4, x26, 616	# 2306
	mul		x6, x30, x5	# 2306
	add		x4, x4, x6	# 2306
	lw		x4, 0(x4)	# 2306
	lw		x29, -76(x2)	# 2306
	sw		x4, -88(x2)	# 2306
	sw		x1, -92(x2)	# 2306
	addi	x2, x2, -96	# 2306
	lw		x31, 0(x29)	# 2306
	jalr	x1, x31, 0	# 2306
	addi	x2, x2, 96	# 2306
	lw		x1, -92(x2)	# 2306
	addi	x5, x4, 0	# 2306
	lw		x4, -88(x2)	# 2306
	sw		x1, -92(x2)	# 2306
	addi	x2, x2, -96	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 96	# 2306
	lw		x1, -92(x2)	# 2306
	addi	x5, x26, 616	# 2307
	lw		x6, -80(x2)	# 2307
	mul		x7, x30, x6	# 2307
	add		x5, x5, x7	# 2307
	lw		x5, 0(x5)	# 2307
	lw		x7, -72(x2)	# 2307
	sub		x5, x5, x7	# 2307
	lw		x29, -68(x2)	# 2307
	sw		x1, -92(x2)	# 2307
	addi	x2, x2, -96	# 2307
	lw		x31, 0(x29)	# 2307
	jalr	x1, x31, 0	# 2307
	addi	x2, x2, 96	# 2307
	lw		x1, -92(x2)	# 2307
	addi	x5, x26, 616	# 2306
	lw		x6, -80(x2)	# 2306
	mul		x7, x30, x6	# 2306
	add		x5, x5, x7	# 2306
	lw		x5, 0(x5)	# 2306
	lw		x29, -76(x2)	# 2306
	sw		x4, -92(x2)	# 2306
	sw		x5, -96(x2)	# 2306
	sw		x1, -100(x2)	# 2306
	addi	x2, x2, -104	# 2306
	lw		x31, 0(x29)	# 2306
	jalr	x1, x31, 0	# 2306
	addi	x2, x2, 104	# 2306
	lw		x1, -100(x2)	# 2306
	addi	x5, x4, 0	# 2306
	lw		x4, -96(x2)	# 2306
	sw		x1, -100(x2)	# 2306
	addi	x2, x2, -104	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 104	# 2306
	lw		x1, -100(x2)	# 2306
	addi	x5, x26, 616	# 2307
	lw		x6, -80(x2)	# 2307
	mul		x7, x30, x6	# 2307
	add		x5, x5, x7	# 2307
	lw		x5, 0(x5)	# 2307
	lw		x7, -72(x2)	# 2307
	sub		x5, x5, x7	# 2307
	lw		x29, -68(x2)	# 2307
	sw		x1, -100(x2)	# 2307
	addi	x2, x2, -104	# 2307
	lw		x31, 0(x29)	# 2307
	jalr	x1, x31, 0	# 2307
	addi	x2, x2, 104	# 2307
	lw		x1, -100(x2)	# 2307
	addi	x5, x26, 616	# 2306
	lw		x6, -80(x2)	# 2306
	mul		x7, x30, x6	# 2306
	add		x5, x5, x7	# 2306
	lw		x5, 0(x5)	# 2306
	lw		x29, -76(x2)	# 2306
	sw		x4, -100(x2)	# 2306
	sw		x5, -104(x2)	# 2306
	sw		x1, -108(x2)	# 2306
	addi	x2, x2, -112	# 2306
	lw		x31, 0(x29)	# 2306
	jalr	x1, x31, 0	# 2306
	addi	x2, x2, 112	# 2306
	lw		x1, -108(x2)	# 2306
	addi	x5, x4, 0	# 2306
	lw		x4, -104(x2)	# 2306
	sw		x1, -108(x2)	# 2306
	addi	x2, x2, -112	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 112	# 2306
	lw		x1, -108(x2)	# 2306
	addi	x5, x26, 616	# 2307
	lw		x6, -80(x2)	# 2307
	mul		x7, x30, x6	# 2307
	add		x5, x5, x7	# 2307
	lw		x5, 0(x5)	# 2307
	lw		x7, -72(x2)	# 2307
	sub		x5, x5, x7	# 2307
	lw		x29, -68(x2)	# 2307
	sw		x1, -108(x2)	# 2307
	addi	x2, x2, -112	# 2307
	lw		x31, 0(x29)	# 2307
	jalr	x1, x31, 0	# 2307
	addi	x2, x2, 112	# 2307
	lw		x1, -108(x2)	# 2307
	lw		x29, -64(x2)	# 904
	sw		x4, -108(x2)	# 904
	sw		x1, -112(x2)	# 904
	addi	x2, x2, -116	# 904
	lw		x31, 0(x29)	# 904
	jalr	x1, x31, 0	# 904
	addi	x2, x2, 116	# 904
	lw		x1, -112(x2)	# 904
	sw		x1, -112(x2)	# 716
	addi	x2, x2, -116	# 716
	jal		x1, min_caml_read_int	# 716
	addi	x2, x2, 116	# 716
	lw		x1, -112(x2)	# 716
	sw		x1, -112(x2)	# 719
	addi	x2, x2, -116	# 719
	jal		x1, min_caml_read_float	# 719
	addi	x2, x2, 116	# 719
	lw		x1, -112(x2)	# 719
	fadd	f2, f0, f20	# 677
	fmul	f1, f1, f2	# 677
	lw		x29, -60(x2)	# 720
	fsw		f1, -112(x2)	# 720
	fsw		f2, -116(x2)	# 720
	sw		x1, -120(x2)	# 720
	addi	x2, x2, -124	# 720
	lw		x31, 0(x29)	# 720
	jalr	x1, x31, 0	# 720
	addi	x2, x2, 124	# 720
	lw		x1, -120(x2)	# 720
	fsub	f1, f0, f1	# 4
	addi	x4, x26, 312	# 721
	lw		x5, -56(x2)	# 721
	mul		x6, x30, x5	# 721
	add		x4, x4, x6	# 721
	fsw		f1, 0(x4)	# 721
	sw		x1, -120(x2)	# 722
	addi	x2, x2, -124	# 722
	jal		x1, min_caml_read_float	# 722
	addi	x2, x2, 124	# 722
	lw		x1, -120(x2)	# 722
	flw		f2, -116(x2)	# 677
	fmul	f1, f1, f2	# 677
	flw		f2, -112(x2)	# 723
	lw		x29, -52(x2)	# 723
	fsw		f1, -120(x2)	# 723
	fadd	f1, f0, f2
	sw		x1, -124(x2)	# 723
	addi	x2, x2, -128	# 723
	lw		x31, 0(x29)	# 723
	jalr	x1, x31, 0	# 723
	addi	x2, x2, 128	# 723
	lw		x1, -124(x2)	# 723
	flw		f2, -120(x2)	# 724
	lw		x29, -60(x2)	# 724
	fsw		f1, -124(x2)	# 724
	fadd	f1, f0, f2
	sw		x1, -128(x2)	# 724
	addi	x2, x2, -132	# 724
	lw		x31, 0(x29)	# 724
	jalr	x1, x31, 0	# 724
	addi	x2, x2, 132	# 724
	lw		x1, -128(x2)	# 724
	flw		f2, -124(x2)	# 725
	fmul	f1, f2, f1	# 725
	addi	x4, x26, 312	# 725
	lw		x5, -80(x2)	# 725
	mul		x6, x30, x5	# 725
	add		x4, x4, x6	# 725
	fsw		f1, 0(x4)	# 725
	flw		f1, -120(x2)	# 726
	lw		x29, -52(x2)	# 726
	sw		x1, -128(x2)	# 726
	addi	x2, x2, -132	# 726
	lw		x31, 0(x29)	# 726
	jalr	x1, x31, 0	# 726
	addi	x2, x2, 132	# 726
	lw		x1, -128(x2)	# 726
	flw		f2, -124(x2)	# 727
	fmul	f1, f2, f1	# 727
	addi	x4, x26, 312	# 727
	lw		x5, -72(x2)	# 727
	mul		x6, x30, x5	# 727
	add		x4, x4, x6	# 727
	fsw		f1, 0(x4)	# 727
	sw		x1, -128(x2)	# 728
	addi	x2, x2, -132	# 728
	jal		x1, min_caml_read_float	# 728
	addi	x2, x2, 132	# 728
	lw		x1, -128(x2)	# 728
	addi	x4, x26, 324	# 728
	lw		x5, -80(x2)	# 728
	mul		x6, x30, x5	# 728
	add		x4, x4, x6	# 728
	fsw		f1, 0(x4)	# 728
	lw		x29, -48(x2)	# 870
	addi	x4, x5, 0
	sw		x1, -128(x2)	# 870
	addi	x2, x2, -132	# 870
	lw		x31, 0(x29)	# 870
	jalr	x1, x31, 0	# 870
	addi	x2, x2, 132	# 870
	lw		x1, -128(x2)	# 870
	lw		x4, -80(x2)	# 907
	lw		x29, -44(x2)	# 907
	sw		x1, -128(x2)	# 907
	addi	x2, x2, -132	# 907
	lw		x31, 0(x29)	# 907
	jalr	x1, x31, 0	# 907
	addi	x2, x2, 132	# 907
	lw		x1, -128(x2)	# 907
	lw		x4, -80(x2)	# 908
	lw		x29, -40(x2)	# 908
	sw		x1, -128(x2)	# 908
	addi	x2, x2, -132	# 908
	lw		x31, 0(x29)	# 908
	jalr	x1, x31, 0	# 908
	addi	x2, x2, 132	# 908
	lw		x1, -128(x2)	# 908
	addi	x5, x26, 536	# 908
	lw		x6, -80(x2)	# 908
	mul		x7, x30, x6	# 908
	add		x5, x5, x7	# 908
	sw		x4, 0(x5)	# 908
	addi	x4, x0, 80	# 2115
	sw		x1, -128(x2)	# 2115
	addi	x2, x2, -132	# 2115
	jal		x1, min_caml_print_char	# 2115
	addi	x2, x2, 132	# 2115
	lw		x1, -128(x2)	# 2115
	lw		x4, -36(x2)	# 2116
	addi	x5, x4, 48	# 2116
	addi	x4, x5, 0
	sw		x1, -128(x2)	# 2116
	addi	x2, x2, -132	# 2116
	jal		x1, min_caml_print_char	# 2116
	addi	x2, x2, 132	# 2116
	lw		x1, -128(x2)	# 2116
	addi	x4, x0, 10	# 2117
	sw		x4, -128(x2)	# 2117
	sw		x1, -132(x2)	# 2117
	addi	x2, x2, -136	# 2117
	jal		x1, min_caml_print_char	# 2117
	addi	x2, x2, 136	# 2117
	lw		x1, -132(x2)	# 2117
	addi	x4, x26, 616	# 2118
	lw		x5, -80(x2)	# 2118
	mul		x6, x30, x5	# 2118
	add		x4, x4, x6	# 2118
	lw		x4, 0(x4)	# 2118
	sw		x1, -132(x2)	# 2118
	addi	x2, x2, -136	# 2118
	jal		x1, min_caml_print_int	# 2118
	addi	x2, x2, 136	# 2118
	lw		x1, -132(x2)	# 2118
	addi	x4, x0, 32	# 2119
	sw		x4, -132(x2)	# 2119
	sw		x1, -136(x2)	# 2119
	addi	x2, x2, -140	# 2119
	jal		x1, min_caml_print_char	# 2119
	addi	x2, x2, 140	# 2119
	lw		x1, -136(x2)	# 2119
	addi	x4, x26, 616	# 2120
	lw		x5, -56(x2)	# 2120
	mul		x6, x30, x5	# 2120
	add		x4, x4, x6	# 2120
	lw		x4, 0(x4)	# 2120
	sw		x1, -136(x2)	# 2120
	addi	x2, x2, -140	# 2120
	jal		x1, min_caml_print_int	# 2120
	addi	x2, x2, 140	# 2120
	lw		x1, -136(x2)	# 2120
	lw		x4, -132(x2)	# 2121
	sw		x1, -136(x2)	# 2121
	addi	x2, x2, -140	# 2121
	jal		x1, min_caml_print_char	# 2121
	addi	x2, x2, 140	# 2121
	lw		x1, -136(x2)	# 2121
	addi	x4, x0, 255	# 2122
	sw		x1, -136(x2)	# 2122
	addi	x2, x2, -140	# 2122
	jal		x1, min_caml_print_int	# 2122
	addi	x2, x2, 140	# 2122
	lw		x1, -136(x2)	# 2122
	lw		x4, -128(x2)	# 2123
	sw		x1, -136(x2)	# 2123
	addi	x2, x2, -140	# 2123
	jal		x1, min_caml_print_char	# 2123
	addi	x2, x2, 140	# 2123
	lw		x1, -136(x2)	# 2123
	addi	x4, x0, 4	# 2421
	lw		x29, -32(x2)	# 2421
	sw		x4, -136(x2)	# 2421
	sw		x1, -140(x2)	# 2421
	addi	x2, x2, -144	# 2421
	lw		x31, 0(x29)	# 2421
	jalr	x1, x31, 0	# 2421
	addi	x2, x2, 144	# 2421
	lw		x1, -140(x2)	# 2421
	addi	x4, x0, 9	# 2422
	lw		x5, -80(x2)	# 2422
	lw		x29, -28(x2)	# 2422
	addi	x6, x5, 0
	sw		x1, -140(x2)	# 2422
	addi	x2, x2, -144	# 2422
	lw		x31, 0(x29)	# 2422
	jalr	x1, x31, 0	# 2422
	addi	x2, x2, 144	# 2422
	lw		x1, -140(x2)	# 2422
	lw		x4, -136(x2)	# 2423
	lw		x29, -24(x2)	# 2423
	sw		x1, -140(x2)	# 2423
	addi	x2, x2, -144	# 2423
	lw		x31, 0(x29)	# 2423
	jalr	x1, x31, 0	# 2423
	addi	x2, x2, 144	# 2423
	lw		x1, -140(x2)	# 2423
	addi	x4, x26, 312	# 259
	lw		x5, -80(x2)	# 259
	mul		x6, x30, x5	# 259
	add		x4, x4, x6	# 259
	flw		f1, 0(x4)	# 259
	addi	x4, x26, 736	# 259
	mul		x6, x30, x5	# 259
	add		x4, x4, x6	# 259
	fsw		f1, 0(x4)	# 259
	addi	x4, x26, 312	# 260
	lw		x6, -56(x2)	# 260
	mul		x7, x30, x6	# 260
	add		x4, x4, x7	# 260
	flw		f1, 0(x4)	# 260
	addi	x4, x26, 736	# 260
	mul		x7, x30, x6	# 260
	add		x4, x4, x7	# 260
	fsw		f1, 0(x4)	# 260
	addi	x4, x26, 312	# 261
	lw		x7, -72(x2)	# 261
	mul		x8, x30, x7	# 261
	add		x4, x4, x8	# 261
	flw		f1, 0(x4)	# 261
	addi	x4, x26, 736	# 261
	mul		x8, x30, x7	# 261
	add		x4, x4, x8	# 261
	fsw		f1, 0(x4)	# 261
	addi	x4, x26, 0	# 1287
	mul		x8, x30, x5	# 1287
	add		x4, x4, x8	# 1287
	lw		x4, 0(x4)	# 1287
	sub		x4, x4, x6	# 1287
	lw		x8, -16(x2)	# 1287
	lw		x29, -20(x2)	# 1287
	addi	x5, x4, 0
	addi	x4, x8, 0
	sw		x1, -140(x2)	# 1287
	addi	x2, x2, -144	# 1287
	lw		x31, 0(x29)	# 1287
	jalr	x1, x31, 0	# 1287
	addi	x2, x2, 144	# 1287
	lw		x1, -140(x2)	# 1287
	addi	x4, x26, 0	# 2505
	lw		x5, -80(x2)	# 2505
	mul		x6, x30, x5	# 2505
	add		x4, x4, x6	# 2505
	lw		x4, 0(x4)	# 2505
	lw		x6, -56(x2)	# 2505
	sub		x4, x4, x6	# 2505
	ble		x5, x4, ble.25184	# 2470
	jal		x0, ble_cont.25183	# 2470
ble.25184:
	addi	x7, x26, 48	# 2471
	mul		x8, x30, x4	# 2471
	add		x7, x7, x8	# 2471
	lw		x7, 0(x7)	# 2471
	lw		x8, 8(x7)	# 363
	addi	x9, x0, 2	# 2472
	beq		x8, x9, beq.25186	# 2472
	jal		x0, beq_cont.25185	# 2472
beq.25186:
	lw		x8, 28(x7)	# 461
	mul		x10, x30, x5	# 466
	add		x8, x8, x10	# 466
	flw		f1, 0(x8)	# 466
	fadd	f2, f0, f16	# 2473
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.25188	# 6
	jal		x0, fle_cont.25187	# 6
fle_else.25188:
	lw		x8, 4(x7)	# 353
	addi	x10, x0, 1	# 2476
	beq		x8, x10, beq.25190	# 2476
	beq		x8, x9, beq.25192	# 2478
	jal		x0, beq_cont.25191	# 2478
beq.25192:
	lw		x29, -8(x2)	# 2479
	addi	x5, x7, 0
	sw		x1, -140(x2)	# 2479
	addi	x2, x2, -144	# 2479
	lw		x31, 0(x29)	# 2479
	jalr	x1, x31, 0	# 2479
	addi	x2, x2, 144	# 2479
	lw		x1, -140(x2)	# 2479
beq_cont.25191:
	jal		x0, beq_cont.25189	# 2476
beq.25190:
	lw		x29, -12(x2)	# 2477
	addi	x5, x7, 0
	sw		x1, -140(x2)	# 2477
	addi	x2, x2, -144	# 2477
	lw		x31, 0(x29)	# 2477
	jalr	x1, x31, 0	# 2477
	addi	x2, x2, 144	# 2477
	lw		x1, -140(x2)	# 2477
beq_cont.25189:
fle_cont.25187:
beq_cont.25185:
ble_cont.25183:
	addi	x4, x26, 632	# 2218
	lw		x5, -80(x2)	# 2218
	mul		x6, x30, x5	# 2218
	add		x4, x4, x6	# 2218
	flw		f1, 0(x4)	# 2218
	addi	x4, x26, 624	# 2218
	lw		x6, -56(x2)	# 2218
	mul		x7, x30, x6	# 2218
	add		x4, x4, x7	# 2218
	lw		x4, 0(x4)	# 2218
	sub		x4, x5, x4	# 2218
	fsw		f1, -140(x2)	# 2218
	sw		x1, -144(x2)	# 2218
	addi	x2, x2, -148	# 2218
	jal		x1, float_of_int.2489.12785	# 2218
	addi	x2, x2, 148	# 2218
	lw		x1, -144(x2)	# 2218
	flw		f2, -140(x2)	# 2218
	fmul	f1, f2, f1	# 2218
	addi	x4, x26, 672	# 2221
	lw		x6, -80(x2)	# 2221
	mul		x5, x30, x6	# 2221
	add		x4, x4, x5	# 2221
	flw		f2, 0(x4)	# 2221
	fmul	f2, f1, f2	# 2221
	addi	x4, x26, 684	# 2221
	mul		x5, x30, x6	# 2221
	add		x4, x4, x5	# 2221
	flw		f3, 0(x4)	# 2221
	fadd	f2, f2, f3	# 2221
	addi	x4, x26, 672	# 2222
	lw		x5, -56(x2)	# 2222
	mul		x7, x30, x5	# 2222
	add		x4, x4, x7	# 2222
	flw		f3, 0(x4)	# 2222
	fmul	f3, f1, f3	# 2222
	addi	x4, x26, 684	# 2222
	mul		x7, x30, x5	# 2222
	add		x4, x4, x7	# 2222
	flw		f4, 0(x4)	# 2222
	fadd	f3, f3, f4	# 2222
	addi	x4, x26, 672	# 2223
	lw		x7, -72(x2)	# 2223
	mul		x8, x30, x7	# 2223
	add		x4, x4, x8	# 2223
	flw		f4, 0(x4)	# 2223
	fmul	f1, f1, f4	# 2223
	addi	x4, x26, 684	# 2223
	mul		x8, x30, x7	# 2223
	add		x4, x4, x8	# 2223
	flw		f4, 0(x4)	# 2223
	fadd	f1, f1, f4	# 2223
	addi	x4, x26, 616	# 2224
	mul		x8, x30, x6	# 2224
	add		x4, x4, x8	# 2224
	lw		x4, 0(x4)	# 2224
	sub		x5, x4, x5	# 2224
	lw		x4, -100(x2)	# 2224
	lw		x29, -4(x2)	# 2224
	fadd	f31, f0, f3
	fadd	f3, f0, f1
	fadd	f1, f0, f2
	fadd	f2, f0, f31
	sw		x1, -144(x2)	# 2224
	addi	x2, x2, -148	# 2224
	lw		x31, 0(x29)	# 2224
	jalr	x1, x31, 0	# 2224
	addi	x2, x2, 148	# 2224
	lw		x1, -144(x2)	# 2224
	lw		x4, -80(x2)	# 2507
	lw		x5, -92(x2)	# 2507
	lw		x6, -100(x2)	# 2507
	lw		x7, -108(x2)	# 2507
	lw		x8, -72(x2)	# 2507
	lw		x9, -36(x2)	# 2507
	lw		x29, 0(x2)	# 2507
	lw		x31, 0(x29)	# 2507
	jalr	x0, x31, 0	# 2507
min_caml_start:
	addi	x2, x2, -4
	addi	x30, x0, 4
	lui		x4, %hi(l.19385)
	ori		x4, x0, %lo(l.19385)
	flw		f0, 0(x4)
	lui		x4, %hi(l.19387)
	ori		x4, x0, %lo(l.19387)
	flw		f16, 0(x4)
	lui		x4, %hi(l.19399)
	ori		x4, x0, %lo(l.19399)
	flw		f17, 0(x4)
	lui		x4, %hi(l.19578)
	ori		x4, x0, %lo(l.19578)
	flw		f18, 0(x4)
	lui		x4, %hi(l.20349)
	ori		x4, x0, %lo(l.20349)
	flw		f19, 0(x4)
	lui		x4, %hi(l.19433)
	ori		x4, x0, %lo(l.19433)
	flw		f20, 0(x4)
	lui		x4, %hi(l.20885)
	ori		x4, x0, %lo(l.20885)
	flw		f21, 0(x4)
	lui		x4, %hi(l.20273)
	ori		x4, x0, %lo(l.20273)
	flw		f22, 0(x4)
	lui		x4, %hi(l.20802)
	ori		x4, x0, %lo(l.20802)
	flw		f23, 0(x4)
	lui		x4, %hi(l.21271)
	ori		x4, x0, %lo(l.21271)
	flw		f24, 0(x4)
	lui		x4, %hi(l.19418)
	ori		x4, x0, %lo(l.19418)
	flw		f25, 0(x4)
	lui		x4, %hi(l.19401)
	ori		x4, x0, %lo(l.19401)
	flw		f26, 0(x4)
	lui		x4, %hi(l.19403)
	ori		x4, x0, %lo(l.19403)
	flw		f27, 0(x4)
	lui		x4, %hi(l.22317)
	ori		x4, x0, %lo(l.22317)
	flw		f28, 0(x4)
	lui		x4, %hi(l.20797)
	ori		x4, x0, %lo(l.20797)
	flw		f29, 0(x4)
	lui		x4, %hi(l.20836)
	ori		x4, x0, %lo(l.20836)
	flw		f30, 0(x4)
	lui		x4, %hi(l.22597)	# 20
	ori		x4, x0, %lo(l.22597)	# 20
	flw		f1, 0(x4)	# 20
	lui		x4, %hi(l.22599)	# 21
	ori		x4, x0, %lo(l.22599)	# 21
	flw		f2, 0(x4)	# 21
	lui		x4, %hi(l.22601)	# 22
	ori		x4, x0, %lo(l.22601)	# 22
	flw		f3, 0(x4)	# 22
	lui		x4, %hi(l.22603)	# 23
	ori		x4, x0, %lo(l.22603)	# 23
	flw		f4, 0(x4)	# 23
	addi	x4, x3, 0	# 45
	addi	x3, x3, 20	# 45
	lui		x5, %hi(sin.2501.12791)	# 45
	ori		x5, x0, %lo(sin.2501.12791)	# 45
	sw		x5, 0(x4)	# 53
	fsw		f4, 16(x4)	# 53
	fsw		f3, 12(x4)	# 53
	fsw		f2, 8(x4)	# 53
	fsw		f1, 4(x4)	# 53
	addi	x5, x3, 0	# 53
	addi	x3, x3, 16	# 53
	lui		x6, %hi(cos.2503.12793)	# 53
	ori		x6, x0, %lo(cos.2503.12793)	# 53
	sw		x6, 0(x5)	# 58
	sw		x4, 12(x5)	# 58
	fsw		f4, 8(x5)	# 58
	fsw		f3, 4(x5)	# 58
	addi	x6, x3, 0	# 58
	addi	x3, x3, 12	# 58
	lui		x7, %hi(atan.2505.12795)	# 58
	ori		x7, x0, %lo(atan.2505.12795)	# 58
	sw		x7, 0(x6)	# 76
	fsw		f4, 8(x6)	# 76
	fsw		f3, 4(x6)	# 76
	addi	x7, x0, 1	# 76
	addi	x8, x0, 0	# 76
	addi	x26, x3, 0	# 76
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
	fadd	f1, f0, f0	# 81
	addi	x4, x26, 4	# 81
	lw		x5, -16(x2)	# 81
	fsw		f1, -20(x2)	# 81
	sw		x4, -24(x2)	# 81
	addi	x4, x5, 0
	sw		x1, -28(x2)	# 81
	addi	x2, x2, -32	# 81
	jal		x1, min_caml_create_float_array	# 81
	addi	x2, x2, 32	# 81
	lw		x1, -28(x2)	# 81
	addi	x4, x0, 60	# 82
	addi	x5, x3, 0	# 82
	addi	x3, x3, 44	# 82
	lw		x6, -24(x2)	# 82
	sw		x6, 40(x5)	# 82
	sw		x6, 36(x5)	# 82
	sw		x6, 32(x5)	# 82
	sw		x6, 28(x5)	# 82
	lw		x7, -16(x2)	# 82
	sw		x7, 24(x5)	# 82
	sw		x6, 20(x5)	# 82
	sw		x6, 16(x5)	# 82
	sw		x7, 12(x5)	# 82
	sw		x7, 8(x5)	# 82
	sw		x7, 4(x5)	# 82
	sw		x7, 0(x5)	# 82
	sw		x4, -28(x2)	# 82
	sw		x1, -32(x2)	# 82
	addi	x2, x2, -36	# 82
	jal		x1, min_caml_create_array	# 82
	addi	x2, x2, 36	# 82
	lw		x1, -32(x2)	# 82
	addi	x4, x0, 3	# 86
	flw		f1, -20(x2)	# 86
	sw		x4, -32(x2)	# 86
	sw		x1, -36(x2)	# 86
	addi	x2, x2, -40	# 86
	jal		x1, min_caml_create_float_array	# 86
	addi	x2, x2, 40	# 86
	lw		x1, -36(x2)	# 86
	flw		f1, -20(x2)	# 89
	lw		x4, -32(x2)	# 89
	sw		x1, -36(x2)	# 89
	addi	x2, x2, -40	# 89
	jal		x1, min_caml_create_float_array	# 89
	addi	x2, x2, 40	# 89
	lw		x1, -36(x2)	# 89
	flw		f1, -20(x2)	# 92
	lw		x4, -32(x2)	# 92
	sw		x1, -36(x2)	# 92
	addi	x2, x2, -40	# 92
	jal		x1, min_caml_create_float_array	# 92
	addi	x2, x2, 40	# 92
	lw		x1, -36(x2)	# 92
	lui		x4, %hi(l.22618)	# 95
	ori		x4, x0, %lo(l.22618)	# 95
	flw		f1, 0(x4)	# 95
	lw		x4, -12(x2)	# 95
	fsw		f1, -36(x2)	# 95
	sw		x1, -40(x2)	# 95
	addi	x2, x2, -44	# 95
	jal		x1, min_caml_create_float_array	# 95
	addi	x2, x2, 44	# 95
	lw		x1, -40(x2)	# 95
	addi	x4, x0, 50	# 98
	addi	x5, x0, -1	# 98
	addi	x6, x26, 328	# 98
	lw		x7, -12(x2)	# 98
	sw		x5, -40(x2)	# 98
	sw		x6, -44(x2)	# 98
	sw		x4, -48(x2)	# 98
	addi	x4, x7, 0
	sw		x1, -52(x2)	# 98
	addi	x2, x2, -56	# 98
	jal		x1, min_caml_create_array	# 98
	addi	x2, x2, 56	# 98
	lw		x1, -52(x2)	# 98
	addi	x4, x26, 332	# 98
	lw		x5, -48(x2)	# 98
	lw		x6, -44(x2)	# 98
	sw		x4, -52(x2)	# 98
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -56(x2)	# 98
	addi	x2, x2, -60	# 98
	jal		x1, min_caml_create_array	# 98
	addi	x2, x2, 60	# 98
	lw		x1, -56(x2)	# 98
	lw		x4, -16(x2)	# 101
	mul		x5, x30, x4	# 101
	lw		x6, -52(x2)	# 101
	add		x5, x6, x5	# 101
	lw		x5, 0(x5)	# 101
	addi	x6, x26, 532	# 101
	lw		x7, -12(x2)	# 101
	sw		x6, -56(x2)	# 101
	addi	x4, x7, 0
	sw		x1, -60(x2)	# 101
	addi	x2, x2, -64	# 101
	jal		x1, min_caml_create_array	# 101
	addi	x2, x2, 64	# 101
	lw		x1, -60(x2)	# 101
	lw		x4, -12(x2)	# 101
	lw		x5, -56(x2)	# 101
	sw		x1, -60(x2)	# 101
	addi	x2, x2, -64	# 101
	jal		x1, min_caml_create_array	# 101
	addi	x2, x2, 64	# 101
	lw		x1, -60(x2)	# 101
	flw		f1, -20(x2)	# 106
	lw		x4, -12(x2)	# 106
	sw		x1, -60(x2)	# 106
	addi	x2, x2, -64	# 106
	jal		x1, min_caml_create_float_array	# 106
	addi	x2, x2, 64	# 106
	lw		x1, -60(x2)	# 106
	lw		x4, -12(x2)	# 109
	lw		x5, -16(x2)	# 109
	sw		x1, -60(x2)	# 109
	addi	x2, x2, -64	# 109
	jal		x1, min_caml_create_array	# 109
	addi	x2, x2, 64	# 109
	lw		x1, -60(x2)	# 109
	lui		x4, %hi(l.22623)	# 112
	ori		x4, x0, %lo(l.22623)	# 112
	flw		f1, 0(x4)	# 112
	lw		x4, -12(x2)	# 112
	fsw		f1, -60(x2)	# 112
	sw		x1, -64(x2)	# 112
	addi	x2, x2, -68	# 112
	jal		x1, min_caml_create_float_array	# 112
	addi	x2, x2, 68	# 112
	lw		x1, -64(x2)	# 112
	flw		f1, -20(x2)	# 115
	lw		x4, -32(x2)	# 115
	sw		x1, -64(x2)	# 115
	addi	x2, x2, -68	# 115
	jal		x1, min_caml_create_float_array	# 115
	addi	x2, x2, 68	# 115
	lw		x1, -64(x2)	# 115
	lw		x4, -12(x2)	# 118
	lw		x5, -16(x2)	# 118
	sw		x1, -64(x2)	# 118
	addi	x2, x2, -68	# 118
	jal		x1, min_caml_create_array	# 118
	addi	x2, x2, 68	# 118
	lw		x1, -64(x2)	# 118
	flw		f1, -20(x2)	# 121
	lw		x4, -32(x2)	# 121
	sw		x1, -64(x2)	# 121
	addi	x2, x2, -68	# 121
	jal		x1, min_caml_create_float_array	# 121
	addi	x2, x2, 68	# 121
	lw		x1, -64(x2)	# 121
	flw		f1, -20(x2)	# 124
	lw		x4, -32(x2)	# 124
	sw		x1, -64(x2)	# 124
	addi	x2, x2, -68	# 124
	jal		x1, min_caml_create_float_array	# 124
	addi	x2, x2, 68	# 124
	lw		x1, -64(x2)	# 124
	flw		f1, -20(x2)	# 128
	lw		x4, -32(x2)	# 128
	sw		x1, -64(x2)	# 128
	addi	x2, x2, -68	# 128
	jal		x1, min_caml_create_float_array	# 128
	addi	x2, x2, 68	# 128
	lw		x1, -64(x2)	# 128
	flw		f1, -20(x2)	# 131
	lw		x4, -32(x2)	# 131
	sw		x1, -64(x2)	# 131
	addi	x2, x2, -68	# 131
	jal		x1, min_caml_create_float_array	# 131
	addi	x2, x2, 68	# 131
	lw		x1, -64(x2)	# 131
	addi	x4, x0, 2	# 135
	lw		x5, -16(x2)	# 135
	sw		x4, -64(x2)	# 135
	sw		x1, -68(x2)	# 135
	addi	x2, x2, -72	# 135
	jal		x1, min_caml_create_array	# 135
	addi	x2, x2, 72	# 135
	lw		x1, -68(x2)	# 135
	lw		x4, -64(x2)	# 138
	lw		x5, -16(x2)	# 138
	sw		x1, -68(x2)	# 138
	addi	x2, x2, -72	# 138
	jal		x1, min_caml_create_array	# 138
	addi	x2, x2, 72	# 138
	lw		x1, -68(x2)	# 138
	flw		f1, -20(x2)	# 141
	lw		x4, -12(x2)	# 141
	sw		x1, -68(x2)	# 141
	addi	x2, x2, -72	# 141
	jal		x1, min_caml_create_float_array	# 141
	addi	x2, x2, 72	# 141
	lw		x1, -68(x2)	# 141
	flw		f1, -20(x2)	# 145
	lw		x4, -32(x2)	# 145
	sw		x1, -68(x2)	# 145
	addi	x2, x2, -72	# 145
	jal		x1, min_caml_create_float_array	# 145
	addi	x2, x2, 72	# 145
	lw		x1, -68(x2)	# 145
	flw		f1, -20(x2)	# 148
	lw		x4, -32(x2)	# 148
	sw		x1, -68(x2)	# 148
	addi	x2, x2, -72	# 148
	jal		x1, min_caml_create_float_array	# 148
	addi	x2, x2, 72	# 148
	lw		x1, -68(x2)	# 148
	flw		f1, -20(x2)	# 152
	lw		x4, -32(x2)	# 152
	sw		x1, -68(x2)	# 152
	addi	x2, x2, -72	# 152
	jal		x1, min_caml_create_float_array	# 152
	addi	x2, x2, 72	# 152
	lw		x1, -68(x2)	# 152
	flw		f1, -20(x2)	# 154
	lw		x4, -32(x2)	# 154
	sw		x1, -68(x2)	# 154
	addi	x2, x2, -72	# 154
	jal		x1, min_caml_create_float_array	# 154
	addi	x2, x2, 72	# 154
	lw		x1, -68(x2)	# 154
	flw		f1, -20(x2)	# 156
	lw		x4, -32(x2)	# 156
	sw		x1, -68(x2)	# 156
	addi	x2, x2, -72	# 156
	jal		x1, min_caml_create_float_array	# 156
	addi	x2, x2, 72	# 156
	lw		x1, -68(x2)	# 156
	flw		f1, -20(x2)	# 160
	lw		x4, -32(x2)	# 160
	sw		x1, -68(x2)	# 160
	addi	x2, x2, -72	# 160
	jal		x1, min_caml_create_float_array	# 160
	addi	x2, x2, 72	# 160
	lw		x1, -68(x2)	# 160
	addi	x4, x26, 708	# 165
	flw		f1, -20(x2)	# 165
	lw		x5, -16(x2)	# 165
	sw		x4, -68(x2)	# 165
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 165
	addi	x2, x2, -76	# 165
	jal		x1, min_caml_create_float_array	# 165
	addi	x2, x2, 76	# 165
	lw		x1, -72(x2)	# 165
	addi	x4, x26, 708	# 166
	lw		x5, -16(x2)	# 166
	lw		x6, -68(x2)	# 166
	sw		x4, -72(x2)	# 166
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -76(x2)	# 166
	addi	x2, x2, -80	# 166
	jal		x1, min_caml_create_array	# 166
	addi	x2, x2, 80	# 166
	lw		x1, -76(x2)	# 166
	addi	x4, x3, 0	# 167
	addi	x3, x3, 8	# 167
	lw		x5, -72(x2)	# 167
	sw		x5, 4(x4)	# 167
	lw		x5, -68(x2)	# 167
	sw		x5, 0(x4)	# 167
	addi	x5, x4, 0	# 167
	addi	x4, x26, 716	# 167
	lw		x6, -16(x2)	# 167
	sw		x4, -76(x2)	# 167
	addi	x4, x6, 0
	sw		x1, -80(x2)	# 167
	addi	x2, x2, -84	# 167
	jal		x1, min_caml_create_array	# 167
	addi	x2, x2, 84	# 167
	lw		x1, -80(x2)	# 167
	addi	x4, x0, 5	# 168
	lw		x5, -76(x2)	# 168
	sw		x4, -80(x2)	# 168
	sw		x1, -84(x2)	# 168
	addi	x2, x2, -88	# 168
	jal		x1, min_caml_create_array	# 168
	addi	x2, x2, 88	# 168
	lw		x1, -84(x2)	# 168
	addi	x4, x26, 736	# 173
	flw		f1, -20(x2)	# 173
	lw		x5, -16(x2)	# 173
	sw		x4, -84(x2)	# 173
	addi	x4, x5, 0
	sw		x1, -88(x2)	# 173
	addi	x2, x2, -92	# 173
	jal		x1, min_caml_create_float_array	# 173
	addi	x2, x2, 92	# 173
	lw		x1, -88(x2)	# 173
	addi	x4, x26, 736	# 174
	flw		f1, -20(x2)	# 174
	lw		x5, -32(x2)	# 174
	sw		x4, -88(x2)	# 174
	addi	x4, x5, 0
	sw		x1, -92(x2)	# 174
	addi	x2, x2, -96	# 174
	jal		x1, min_caml_create_float_array	# 174
	addi	x2, x2, 96	# 174
	lw		x1, -92(x2)	# 174
	addi	x4, x26, 748	# 175
	lw		x5, -28(x2)	# 175
	lw		x6, -84(x2)	# 175
	sw		x4, -92(x2)	# 175
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -96(x2)	# 175
	addi	x2, x2, -100	# 175
	jal		x1, min_caml_create_array	# 175
	addi	x2, x2, 100	# 175
	lw		x1, -96(x2)	# 175
	addi	x4, x3, 0	# 176
	addi	x3, x3, 8	# 176
	lw		x5, -92(x2)	# 176
	sw		x5, 4(x4)	# 176
	lw		x5, -88(x2)	# 176
	sw		x5, 0(x4)	# 176
	addi	x5, x26, 996	# 181
	flw		f1, -20(x2)	# 181
	lw		x6, -16(x2)	# 181
	sw		x4, -96(x2)	# 181
	sw		x5, -100(x2)	# 181
	addi	x4, x6, 0
	sw		x1, -104(x2)	# 181
	addi	x2, x2, -108	# 181
	jal		x1, min_caml_create_float_array	# 181
	addi	x2, x2, 108	# 181
	lw		x1, -104(x2)	# 181
	addi	x4, x26, 996	# 182
	lw		x5, -16(x2)	# 182
	lw		x6, -100(x2)	# 182
	sw		x4, -104(x2)	# 182
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -108(x2)	# 182
	addi	x2, x2, -112	# 182
	jal		x1, min_caml_create_array	# 182
	addi	x2, x2, 112	# 182
	lw		x1, -108(x2)	# 182
	addi	x4, x3, 0	# 183
	addi	x3, x3, 8	# 183
	lw		x5, -104(x2)	# 183
	sw		x5, 4(x4)	# 183
	lw		x5, -100(x2)	# 183
	sw		x5, 0(x4)	# 183
	addi	x5, x0, 180	# 184
	addi	x6, x3, 0	# 184
	addi	x3, x3, 12	# 184
	flw		f1, -20(x2)	# 184
	fsw		f1, 8(x6)	# 184
	sw		x4, 4(x6)	# 184
	lw		x4, -16(x2)	# 184
	sw		x4, 0(x6)	# 184
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -108(x2)	# 184
	addi	x2, x2, -112	# 184
	jal		x1, min_caml_create_array	# 184
	addi	x2, x2, 112	# 184
	lw		x1, -108(x2)	# 184
	lw		x4, -12(x2)	# 188
	lw		x5, -16(x2)	# 188
	sw		x1, -108(x2)	# 188
	addi	x2, x2, -112	# 188
	jal		x1, min_caml_create_array	# 188
	addi	x2, x2, 112	# 188
	lw		x1, -108(x2)	# 188
	addi	x4, x3, 0	# 681
	addi	x3, x3, 28	# 681
	lui		x5, %hi(read_screen_settings.2663.12935)	# 681
	ori		x5, x0, %lo(read_screen_settings.2663.12935)	# 681
	sw		x5, 0(x4)	# 736
	lw		x5, -8(x2)	# 736
	sw		x5, 24(x4)	# 736
	lw		x6, -4(x2)	# 736
	sw		x6, 20(x4)	# 736
	lw		x7, -64(x2)	# 736
	sw		x7, 16(x4)	# 736
	lw		x8, -16(x2)	# 736
	sw		x8, 12(x4)	# 736
	lw		x9, -12(x2)	# 736
	sw		x9, 8(x4)	# 736
	flw		f1, -20(x2)	# 736
	fsw		f1, 4(x4)	# 736
	addi	x10, x3, 0	# 736
	addi	x3, x3, 24	# 736
	lui		x11, %hi(rotate_quadratic_matrix.2667.12937)	# 736
	ori		x11, x0, %lo(rotate_quadratic_matrix.2667.12937)	# 736
	sw		x11, 0(x10)	# 777
	sw		x5, 20(x10)	# 777
	sw		x6, 16(x10)	# 777
	sw		x7, 12(x10)	# 777
	sw		x8, 8(x10)	# 777
	sw		x9, 4(x10)	# 777
	addi	x11, x3, 0	# 777
	addi	x3, x3, 32	# 777
	lui		x12, %hi(read_nth_object.2670.12940)	# 777
	ori		x12, x0, %lo(read_nth_object.2670.12940)	# 777
	sw		x12, 0(x11)	# 860
	sw		x10, 28(x11)	# 860
	sw		x7, 24(x11)	# 860
	lw		x10, -40(x2)	# 860
	sw		x10, 20(x11)	# 860
	lw		x12, -32(x2)	# 860
	sw		x12, 16(x11)	# 860
	sw		x8, 12(x11)	# 860
	sw		x9, 8(x11)	# 860
	fsw		f1, 4(x11)	# 860
	addi	x13, x3, 0	# 860
	addi	x3, x3, 20	# 860
	lui		x14, %hi(read_object.2672.12942)	# 860
	ori		x14, x0, %lo(read_object.2672.12942)	# 860
	sw		x14, 0(x13)	# 876
	sw		x11, 16(x13)	# 876
	lw		x11, -28(x2)	# 876
	sw		x11, 12(x13)	# 876
	sw		x8, 8(x13)	# 876
	sw		x9, 4(x13)	# 876
	addi	x11, x3, 0	# 876
	addi	x3, x3, 12	# 876
	lui		x14, %hi(read_net_item.2676.12944)	# 876
	ori		x14, x0, %lo(read_net_item.2676.12944)	# 876
	sw		x14, 0(x11)	# 884
	sw		x10, 8(x11)	# 884
	sw		x9, 4(x11)	# 884
	addi	x14, x3, 0	# 884
	addi	x3, x3, 20	# 884
	lui		x15, %hi(read_or_network.2678.12946)	# 884
	ori		x15, x0, %lo(read_or_network.2678.12946)	# 884
	sw		x15, 0(x14)	# 893
	sw		x11, 16(x14)	# 893
	sw		x10, 12(x14)	# 893
	sw		x8, 8(x14)	# 893
	sw		x9, 4(x14)	# 893
	addi	x15, x3, 0	# 893
	addi	x3, x3, 20	# 893
	lui		x16, %hi(read_and_network.2680.12948)	# 893
	ori		x16, x0, %lo(read_and_network.2680.12948)	# 893
	sw		x16, 0(x15)	# 942
	sw		x11, 16(x15)	# 942
	sw		x10, 12(x15)	# 942
	sw		x8, 8(x15)	# 942
	sw		x9, 4(x15)	# 942
	addi	x11, x3, 0	# 942
	addi	x3, x3, 20	# 942
	lui		x16, %hi(solver_rect.2693.12950)	# 942
	ori		x16, x0, %lo(solver_rect.2693.12950)	# 942
	sw		x16, 0(x11)	# 1002
	sw		x7, 16(x11)	# 1002
	sw		x8, 12(x11)	# 1002
	sw		x9, 8(x11)	# 1002
	fsw		f1, 4(x11)	# 1002
	addi	x16, x3, 0	# 1002
	addi	x3, x3, 24	# 1002
	lui		x17, %hi(solver_second.2718.12956)	# 1002
	ori		x17, x0, %lo(solver_second.2718.12956)	# 1002
	sw		x17, 0(x16)	# 1063
	sw		x7, 20(x16)	# 1063
	sw		x12, 16(x16)	# 1063
	sw		x8, 12(x16)	# 1063
	sw		x9, 8(x16)	# 1063
	fsw		f1, 4(x16)	# 1063
	addi	x17, x3, 0	# 1063
	addi	x3, x3, 28	# 1063
	lui		x18, %hi(solver_rect_fast.2728.12962)	# 1063
	ori		x18, x0, %lo(solver_rect_fast.2728.12962)	# 1063
	sw		x18, 0(x17)	# 1105
	lw		x18, -80(x2)	# 1105
	sw		x18, 24(x17)	# 1105
	sw		x7, 20(x17)	# 1105
	sw		x12, 16(x17)	# 1105
	sw		x8, 12(x17)	# 1105
	sw		x9, 8(x17)	# 1105
	fsw		f1, 4(x17)	# 1105
	addi	x19, x3, 0	# 1105
	addi	x3, x3, 24	# 1105
	lui		x20, %hi(solver_second_fast.2741.12969)	# 1105
	ori		x20, x0, %lo(solver_second_fast.2741.12969)	# 1105
	sw		x20, 0(x19)	# 1194
	sw		x7, 20(x19)	# 1194
	sw		x12, 16(x19)	# 1194
	sw		x8, 12(x19)	# 1194
	sw		x9, 8(x19)	# 1194
	fsw		f1, 4(x19)	# 1194
	addi	x20, x3, 0	# 1194
	addi	x3, x3, 20	# 1194
	lui		x21, %hi(setup_rect_table.2768.12975)	# 1194
	ori		x21, x0, %lo(setup_rect_table.2768.12975)	# 1194
	sw		x21, 0(x20)	# 1221
	sw		x7, 16(x20)	# 1221
	sw		x8, 12(x20)	# 1221
	sw		x9, 8(x20)	# 1221
	fsw		f1, 4(x20)	# 1221
	addi	x21, x3, 0	# 1221
	addi	x3, x3, 20	# 1221
	lui		x22, %hi(setup_surface_table.2771.12978)	# 1221
	ori		x22, x0, %lo(setup_surface_table.2771.12978)	# 1221
	sw		x22, 0(x21)	# 1240
	sw		x7, 16(x21)	# 1240
	sw		x8, 12(x21)	# 1240
	sw		x9, 8(x21)	# 1240
	fsw		f1, 4(x21)	# 1240
	addi	x22, x3, 0	# 1240
	addi	x3, x3, 24	# 1240
	lui		x23, %hi(setup_second_table.2774.12981)	# 1240
	ori		x23, x0, %lo(setup_second_table.2774.12981)	# 1240
	sw		x23, 0(x22)	# 1269
	sw		x18, 20(x22)	# 1269
	sw		x7, 16(x22)	# 1269
	sw		x8, 12(x22)	# 1269
	sw		x9, 8(x22)	# 1269
	fsw		f1, 4(x22)	# 1269
	addi	x23, x3, 0	# 1269
	addi	x3, x3, 24	# 1269
	lui		x24, %hi(iter_setup_dirvec_constants.2777.12984)	# 1269
	ori		x24, x0, %lo(iter_setup_dirvec_constants.2777.12984)	# 1269
	sw		x24, 0(x23)	# 1294
	sw		x21, 20(x23)	# 1294
	sw		x22, 16(x23)	# 1294
	sw		x20, 12(x23)	# 1294
	sw		x8, 8(x23)	# 1294
	sw		x9, 4(x23)	# 1294
	addi	x20, x3, 0	# 1294
	addi	x3, x3, 16	# 1294
	lui		x21, %hi(setup_startp_constants.2782.12987)	# 1294
	ori		x21, x0, %lo(setup_startp_constants.2782.12987)	# 1294
	sw		x21, 0(x20)	# 1363
	sw		x7, 12(x20)	# 1363
	sw		x8, 8(x20)	# 1363
	sw		x9, 4(x20)	# 1363
	addi	x21, x3, 0	# 1363
	addi	x3, x3, 28	# 1363
	lui		x22, %hi(check_all_inside.2807.12990)	# 1363
	ori		x22, x0, %lo(check_all_inside.2807.12990)	# 1363
	sw		x22, 0(x21)	# 1383
	sw		x7, 24(x21)	# 1383
	sw		x10, 20(x21)	# 1383
	sw		x12, 16(x21)	# 1383
	sw		x8, 12(x21)	# 1383
	sw		x9, 8(x21)	# 1383
	fsw		f1, 4(x21)	# 1383
	addi	x22, x3, 0	# 1383
	addi	x3, x3, 40	# 1383
	lui		x24, %hi(shadow_check_and_group.2813.12996)	# 1383
	ori		x24, x0, %lo(shadow_check_and_group.2813.12996)	# 1383
	sw		x24, 0(x22)	# 1413
	sw		x19, 36(x22)	# 1413
	sw		x17, 32(x22)	# 1413
	sw		x21, 28(x22)	# 1413
	sw		x7, 24(x22)	# 1413
	sw		x10, 20(x22)	# 1413
	sw		x12, 16(x22)	# 1413
	sw		x8, 12(x22)	# 1413
	sw		x9, 8(x22)	# 1413
	fsw		f1, 4(x22)	# 1413
	addi	x24, x3, 0	# 1413
	addi	x3, x3, 20	# 1413
	lui		x25, %hi(shadow_check_one_or_group.2816.12999)	# 1413
	ori		x25, x0, %lo(shadow_check_one_or_group.2816.12999)	# 1413
	sw		x25, 0(x24)	# 1428
	sw		x22, 16(x24)	# 1428
	sw		x10, 12(x24)	# 1428
	sw		x8, 8(x24)	# 1428
	sw		x9, 4(x24)	# 1428
	addi	x22, x3, 0	# 1428
	addi	x3, x3, 40	# 1428
	lui		x25, %hi(shadow_check_one_or_matrix.2819.13002)	# 1428
	ori		x25, x0, %lo(shadow_check_one_or_matrix.2819.13002)	# 1428
	sw		x25, 0(x22)	# 1464
	sw		x19, 36(x22)	# 1464
	sw		x17, 32(x22)	# 1464
	sw		x24, 28(x22)	# 1464
	sw		x7, 24(x22)	# 1464
	sw		x10, 20(x22)	# 1464
	sw		x12, 16(x22)	# 1464
	sw		x8, 12(x22)	# 1464
	sw		x9, 8(x22)	# 1464
	fsw		f1, 4(x22)	# 1464
	addi	x19, x3, 0	# 1464
	addi	x3, x3, 36	# 1464
	lui		x24, %hi(solve_each_element.2822.13005)	# 1464
	ori		x24, x0, %lo(solve_each_element.2822.13005)	# 1464
	sw		x24, 0(x19)	# 1505
	sw		x16, 32(x19)	# 1505
	sw		x11, 28(x19)	# 1505
	sw		x21, 24(x19)	# 1505
	sw		x7, 20(x19)	# 1505
	sw		x10, 16(x19)	# 1505
	sw		x8, 12(x19)	# 1505
	sw		x9, 8(x19)	# 1505
	fsw		f1, 4(x19)	# 1505
	addi	x24, x3, 0	# 1505
	addi	x3, x3, 20	# 1505
	lui		x25, %hi(solve_one_or_network.2826.13009)	# 1505
	ori		x25, x0, %lo(solve_one_or_network.2826.13009)	# 1505
	sw		x25, 0(x24)	# 1515
	sw		x19, 16(x24)	# 1515
	sw		x10, 12(x24)	# 1515
	sw		x8, 8(x24)	# 1515
	sw		x9, 4(x24)	# 1515
	addi	x19, x3, 0	# 1515
	addi	x3, x3, 36	# 1515
	lui		x25, %hi(trace_or_matrix.2830.13013)	# 1515
	ori		x25, x0, %lo(trace_or_matrix.2830.13013)	# 1515
	sw		x25, 0(x19)	# 1557
	sw		x16, 32(x19)	# 1557
	sw		x11, 28(x19)	# 1557
	sw		x24, 24(x19)	# 1557
	sw		x7, 20(x19)	# 1557
	sw		x10, 16(x19)	# 1557
	sw		x8, 12(x19)	# 1557
	sw		x9, 8(x19)	# 1557
	fsw		f1, 4(x19)	# 1557
	addi	x11, x3, 0	# 1557
	addi	x3, x3, 36	# 1557
	lui		x16, %hi(solve_each_element_fast.2836.13017)	# 1557
	ori		x16, x0, %lo(solve_each_element_fast.2836.13017)	# 1557
	sw		x16, 0(x11)	# 1598
	sw		x17, 32(x11)	# 1598
	sw		x21, 28(x11)	# 1598
	sw		x7, 24(x11)	# 1598
	sw		x10, 20(x11)	# 1598
	sw		x12, 16(x11)	# 1598
	sw		x8, 12(x11)	# 1598
	sw		x9, 8(x11)	# 1598
	fsw		f1, 4(x11)	# 1598
	addi	x16, x3, 0	# 1598
	addi	x3, x3, 20	# 1598
	lui		x21, %hi(solve_one_or_network_fast.2840.13021)	# 1598
	ori		x21, x0, %lo(solve_one_or_network_fast.2840.13021)	# 1598
	sw		x21, 0(x16)	# 1608
	sw		x11, 16(x16)	# 1608
	sw		x10, 12(x16)	# 1608
	sw		x8, 8(x16)	# 1608
	sw		x9, 4(x16)	# 1608
	addi	x11, x3, 0	# 1608
	addi	x3, x3, 36	# 1608
	lui		x21, %hi(trace_or_matrix_fast.2844.13025)	# 1608
	ori		x21, x0, %lo(trace_or_matrix_fast.2844.13025)	# 1608
	sw		x21, 0(x11)	# 1669
	sw		x17, 32(x11)	# 1669
	sw		x16, 28(x11)	# 1669
	sw		x7, 24(x11)	# 1669
	sw		x10, 20(x11)	# 1669
	sw		x12, 16(x11)	# 1669
	sw		x8, 12(x11)	# 1669
	sw		x9, 8(x11)	# 1669
	fsw		f1, 4(x11)	# 1669
	addi	x16, x3, 0	# 1669
	addi	x3, x3, 20	# 1669
	lui		x17, %hi(get_nvector_second.2854.13029)	# 1669
	ori		x17, x0, %lo(get_nvector_second.2854.13029)	# 1669
	sw		x17, 0(x16)	# 1707
	sw		x7, 16(x16)	# 1707
	sw		x8, 12(x16)	# 1707
	sw		x9, 8(x16)	# 1707
	fsw		f1, 4(x16)	# 1707
	addi	x17, x3, 0	# 1707
	addi	x3, x3, 40	# 1707
	lui		x21, %hi(utexture.2859.13031)	# 1707
	ori		x21, x0, %lo(utexture.2859.13031)	# 1707
	sw		x21, 0(x17)	# 1802
	sw		x5, 36(x17)	# 1802
	sw		x6, 32(x17)	# 1802
	lw		x21, 0(x2)	# 1802
	sw		x21, 28(x17)	# 1802
	sw		x7, 24(x17)	# 1802
	sw		x12, 20(x17)	# 1802
	sw		x8, 16(x17)	# 1802
	sw		x9, 12(x17)	# 1802
	flw		f2, -36(x2)	# 1802
	fsw		f2, 8(x17)	# 1802
	fsw		f1, 4(x17)	# 1802
	addi	x24, x3, 0	# 1802
	addi	x3, x3, 28	# 1802
	lui		x25, %hi(trace_reflections.2866.13034)	# 1802
	ori		x25, x0, %lo(trace_reflections.2866.13034)	# 1802
	sw		x25, 0(x24)	# 1831
	sw		x11, 24(x24)	# 1831
	sw		x22, 20(x24)	# 1831
	sw		x7, 16(x24)	# 1831
	sw		x8, 12(x24)	# 1831
	sw		x9, 8(x24)	# 1831
	flw		f2, -60(x2)	# 1831
	fsw		f2, 4(x24)	# 1831
	addi	x25, x3, 0	# 1831
	addi	x3, x3, 52	# 1831
	lui		x27, %hi(trace_ray.2871.13039)	# 1831
	ori		x27, x0, %lo(trace_ray.2871.13039)	# 1831
	sw		x27, 0(x25)	# 1943
	sw		x17, 48(x25)	# 1943
	sw		x24, 44(x25)	# 1943
	sw		x19, 40(x25)	# 1943
	sw		x22, 36(x25)	# 1943
	sw		x20, 32(x25)	# 1943
	sw		x16, 28(x25)	# 1943
	sw		x7, 24(x25)	# 1943
	sw		x10, 20(x25)	# 1943
	sw		x8, 16(x25)	# 1943
	sw		x9, 12(x25)	# 1943
	fsw		f2, 8(x25)	# 1943
	fsw		f1, 4(x25)	# 1943
	addi	x10, x3, 0	# 1943
	addi	x3, x3, 40	# 1943
	lui		x19, %hi(iter_trace_diffuse_rays.2880.13045)	# 1943
	ori		x19, x0, %lo(iter_trace_diffuse_rays.2880.13045)	# 1943
	sw		x19, 0(x10)	# 2034
	sw		x17, 36(x10)	# 2034
	sw		x11, 32(x10)	# 2034
	sw		x22, 28(x10)	# 2034
	sw		x16, 24(x10)	# 2034
	sw		x7, 20(x10)	# 2034
	sw		x8, 16(x10)	# 2034
	sw		x9, 12(x10)	# 2034
	fsw		f2, 8(x10)	# 2034
	fsw		f1, 4(x10)	# 2034
	addi	x11, x3, 0	# 2034
	addi	x3, x3, 28	# 2034
	lui		x16, %hi(do_without_neighbors.2902.13050)	# 2034
	ori		x16, x0, %lo(do_without_neighbors.2902.13050)	# 2034
	sw		x16, 0(x11)	# 2086
	sw		x20, 24(x11)	# 2086
	sw		x10, 20(x11)	# 2086
	sw		x7, 16(x11)	# 2086
	sw		x12, 12(x11)	# 2086
	sw		x8, 8(x11)	# 2086
	sw		x9, 4(x11)	# 2086
	addi	x16, x3, 0	# 2086
	addi	x3, x3, 20	# 2086
	lui		x17, %hi(try_exploit_neighbors.2918.13053)	# 2086
	ori		x17, x0, %lo(try_exploit_neighbors.2918.13053)	# 2086
	sw		x17, 0(x16)	# 2162
	sw		x11, 16(x16)	# 2162
	sw		x7, 12(x16)	# 2162
	sw		x8, 8(x16)	# 2162
	sw		x9, 4(x16)	# 2162
	addi	x17, x3, 0	# 2162
	addi	x3, x3, 24	# 2162
	lui		x19, %hi(pretrace_diffuse_rays.2933.13060)	# 2162
	ori		x19, x0, %lo(pretrace_diffuse_rays.2933.13060)	# 2162
	sw		x19, 0(x17)	# 2192
	sw		x20, 20(x17)	# 2192
	sw		x10, 16(x17)	# 2192
	sw		x7, 12(x17)	# 2192
	sw		x8, 8(x17)	# 2192
	sw		x9, 4(x17)	# 2192
	addi	x10, x3, 0	# 2192
	addi	x3, x3, 32	# 2192
	lui		x19, %hi(pretrace_pixels.2936.13063)	# 2192
	ori		x19, x0, %lo(pretrace_pixels.2936.13063)	# 2192
	sw		x19, 0(x10)	# 2233
	sw		x25, 28(x10)	# 2233
	sw		x17, 24(x10)	# 2233
	sw		x18, 20(x10)	# 2233
	sw		x7, 16(x10)	# 2233
	sw		x8, 12(x10)	# 2233
	sw		x9, 8(x10)	# 2233
	fsw		f1, 4(x10)	# 2233
	addi	x17, x3, 0	# 2233
	addi	x3, x3, 28	# 2233
	lui		x19, %hi(scan_pixel.2947.13070)	# 2233
	ori		x19, x0, %lo(scan_pixel.2947.13070)	# 2233
	sw		x19, 0(x17)	# 2253
	sw		x16, 24(x17)	# 2253
	sw		x11, 20(x17)	# 2253
	sw		x7, 16(x17)	# 2253
	sw		x12, 12(x17)	# 2253
	sw		x8, 8(x17)	# 2253
	sw		x9, 4(x17)	# 2253
	addi	x11, x3, 0	# 2253
	addi	x3, x3, 28	# 2253
	lui		x16, %hi(scan_line.2954.13077)	# 2253
	ori		x16, x0, %lo(scan_line.2954.13077)	# 2253
	sw		x16, 0(x11)	# 2283
	sw		x17, 24(x11)	# 2283
	sw		x10, 20(x11)	# 2283
	sw		x18, 16(x11)	# 2283
	sw		x7, 12(x11)	# 2283
	sw		x8, 8(x11)	# 2283
	sw		x9, 4(x11)	# 2283
	addi	x16, x3, 0	# 2283
	addi	x3, x3, 28	# 2283
	lui		x17, %hi(create_pixel.2963.13084)	# 2283
	ori		x17, x0, %lo(create_pixel.2963.13084)	# 2283
	sw		x17, 0(x16)	# 2296
	sw		x18, 24(x16)	# 2296
	sw		x7, 20(x16)	# 2296
	sw		x12, 16(x16)	# 2296
	sw		x8, 12(x16)	# 2296
	sw		x9, 8(x16)	# 2296
	fsw		f1, 4(x16)	# 2296
	addi	x17, x3, 0	# 2296
	addi	x3, x3, 28	# 2296
	lui		x19, %hi(init_line_elements.2965.13086)	# 2296
	ori		x19, x0, %lo(init_line_elements.2965.13086)	# 2296
	sw		x19, 0(x17)	# 2333
	sw		x18, 24(x17)	# 2333
	sw		x7, 20(x17)	# 2333
	sw		x12, 16(x17)	# 2333
	sw		x8, 12(x17)	# 2333
	sw		x9, 8(x17)	# 2333
	fsw		f1, 4(x17)	# 2333
	addi	x19, x3, 0	# 2333
	addi	x3, x3, 32	# 2333
	lui		x20, %hi(calc_dirvec.2975.13089)	# 2333
	ori		x20, x0, %lo(calc_dirvec.2975.13089)	# 2333
	sw		x20, 0(x19)	# 2354
	sw		x5, 28(x19)	# 2354
	sw		x6, 24(x19)	# 2354
	sw		x21, 20(x19)	# 2354
	sw		x18, 16(x19)	# 2354
	sw		x7, 12(x19)	# 2354
	sw		x8, 8(x19)	# 2354
	sw		x9, 4(x19)	# 2354
	addi	x20, x3, 0	# 2354
	addi	x3, x3, 28	# 2354
	lui		x21, %hi(calc_dirvecs.2983.13097)	# 2354
	ori		x21, x0, %lo(calc_dirvecs.2983.13097)	# 2354
	sw		x21, 0(x20)	# 2368
	sw		x19, 24(x20)	# 2368
	sw		x18, 20(x20)	# 2368
	sw		x7, 16(x20)	# 2368
	sw		x8, 12(x20)	# 2368
	sw		x9, 8(x20)	# 2368
	fsw		f1, 4(x20)	# 2368
	addi	x19, x3, 0	# 2368
	addi	x3, x3, 24	# 2368
	lui		x21, %hi(calc_dirvec_rows.2988.13102)	# 2368
	ori		x21, x0, %lo(calc_dirvec_rows.2988.13102)	# 2368
	sw		x21, 0(x19)	# 2387
	sw		x20, 20(x19)	# 2387
	sw		x18, 16(x19)	# 2387
	sw		x7, 12(x19)	# 2387
	sw		x8, 8(x19)	# 2387
	sw		x9, 4(x19)	# 2387
	addi	x18, x3, 0	# 2387
	addi	x3, x3, 20	# 2387
	lui		x20, %hi(create_dirvec_elements.2994.13106)	# 2387
	ori		x20, x0, %lo(create_dirvec_elements.2994.13106)	# 2387
	sw		x20, 0(x18)	# 2394
	sw		x12, 16(x18)	# 2394
	sw		x8, 12(x18)	# 2394
	sw		x9, 8(x18)	# 2394
	fsw		f1, 4(x18)	# 2394
	addi	x20, x3, 0	# 2394
	addi	x3, x3, 24	# 2394
	lui		x21, %hi(create_dirvecs.2997.13109)	# 2394
	ori		x21, x0, %lo(create_dirvecs.2997.13109)	# 2394
	sw		x21, 0(x20)	# 2406
	sw		x18, 20(x20)	# 2406
	sw		x12, 16(x20)	# 2406
	sw		x8, 12(x20)	# 2406
	sw		x9, 8(x20)	# 2406
	fsw		f1, 4(x20)	# 2406
	addi	x18, x3, 0	# 2406
	addi	x3, x3, 16	# 2406
	lui		x21, %hi(init_dirvec_constants.2999.13111)	# 2406
	ori		x21, x0, %lo(init_dirvec_constants.2999.13111)	# 2406
	sw		x21, 0(x18)	# 2413
	sw		x23, 12(x18)	# 2413
	sw		x8, 8(x18)	# 2413
	sw		x9, 4(x18)	# 2413
	addi	x21, x3, 0	# 2413
	addi	x3, x3, 16	# 2413
	lui		x22, %hi(init_vecset_constants.3002.13114)	# 2413
	ori		x22, x0, %lo(init_vecset_constants.3002.13114)	# 2413
	sw		x22, 0(x21)	# 2440
	sw		x18, 12(x21)	# 2440
	sw		x8, 8(x21)	# 2440
	sw		x9, 4(x21)	# 2440
	addi	x18, x3, 0	# 2440
	addi	x3, x3, 28	# 2440
	lui		x22, %hi(setup_rect_reflection.3013.13116)	# 2440
	ori		x22, x0, %lo(setup_rect_reflection.3013.13116)	# 2440
	sw		x22, 0(x18)	# 2454
	sw		x23, 24(x18)	# 2454
	sw		x7, 20(x18)	# 2454
	sw		x12, 16(x18)	# 2454
	sw		x8, 12(x18)	# 2454
	sw		x9, 8(x18)	# 2454
	fsw		f1, 4(x18)	# 2454
	addi	x22, x3, 0	# 2454
	addi	x3, x3, 28	# 2454
	lui		x24, %hi(setup_surface_reflection.3016.13119)	# 2454
	ori		x24, x0, %lo(setup_surface_reflection.3016.13119)	# 2454
	sw		x24, 0(x22)	# 2491
	sw		x23, 24(x22)	# 2491
	sw		x7, 20(x22)	# 2491
	sw		x12, 16(x22)	# 2491
	sw		x8, 12(x22)	# 2491
	sw		x9, 8(x22)	# 2491
	fsw		f1, 4(x22)	# 2491
	addi	x29, x3, 0	# 2491
	addi	x3, x3, 84	# 2491
	lui		x24, %hi(rt.3021.13122)	# 2491
	ori		x24, x0, %lo(rt.3021.13122)	# 2491
	sw		x24, 0(x29)	# 2512
	sw		x5, 80(x29)	# 2512
	sw		x22, 76(x29)	# 2512
	sw		x18, 72(x29)	# 2512
	sw		x11, 68(x29)	# 2512
	sw		x4, 64(x29)	# 2512
	sw		x14, 60(x29)	# 2512
	sw		x13, 56(x29)	# 2512
	sw		x15, 52(x29)	# 2512
	sw		x10, 48(x29)	# 2512
	lw		x4, -96(x2)	# 2512
	sw		x4, 44(x29)	# 2512
	sw		x23, 40(x29)	# 2512
	sw		x21, 36(x29)	# 2512
	sw		x17, 32(x29)	# 2512
	sw		x16, 28(x29)	# 2512
	sw		x20, 24(x29)	# 2512
	sw		x6, 20(x29)	# 2512
	sw		x19, 16(x29)	# 2512
	sw		x7, 12(x29)	# 2512
	sw		x8, 8(x29)	# 2512
	sw		x9, 4(x29)	# 2512
	addi	x4, x0, 128	# 2512
	addi	x6, x12, 0
	addi	x5, x4, 0
	sw		x1, -108(x2)	# 2512
	addi	x2, x2, -112	# 2512
	lw		x31, 0(x29)	# 2512
	jalr	x1, x31, 0	# 2512
	addi	x2, x2, 112	# 2512
	lw		x1, -108(x2)	# 2512
	EXIT	
